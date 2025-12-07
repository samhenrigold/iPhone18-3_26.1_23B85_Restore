uint64_t sub_1AFCA72D8(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0x100000000;
  if (qword_1ED72D720 != -1)
  {
    v34 = a2;
    swift_once();
    LODWORD(a2) = v34;
  }

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  v55 = qword_1ED73B840;
  v56 = v4;
  v57 = v3 >> 31;
  v58 = 1;
  v59 = 2;
  v60 = 0;

  sub_1AF7032E4(3, v44);

  v53[0] = v44[0];
  v53[1] = v44[1];
  v54 = v45;
  sub_1AF6B06C0(a1, v53, 0x200000000, v46);
  if (!*v46)
  {
    return sub_1AFCBA0DC(v44, &qword_1ED723D40, &type metadata for ColorRampComponent, &off_1F2541AA8);
  }

  if (v49 <= 0 || (v36 = *(&v47 + 1)) == 0)
  {
    sub_1AFCBA0DC(v44, &qword_1ED723D40, &type metadata for ColorRampComponent, &off_1F2541AA8);
    v31 = MEMORY[0x1E69E6720];
    return sub_1AFCB9F58(v46, &qword_1ED725EA0, &type metadata for QueryResult, v31, sub_1AFCBA88C);
  }

  v35 = *&v46[40];
  v5 = *(&v48 + 1);
  v39 = *(v48 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v38 = *(*(&v48 + 1) + 32);
  v50 = *v46;
  v51 = *&v46[8];
  v52 = *&v46[24];
  v43[2] = *&v46[32];
  v43[3] = v47;
  v43[4] = v48;
  v43[5] = v49;
  v43[0] = *v46;
  v43[1] = *&v46[16];
  sub_1AF5DD298(v43, v41);
  v6 = 0;
  v7 = 0;
  v8 = &qword_1ED726930;
  __asm { FMOV            V0.4S, #1.0 }

  v40 = _Q0;
  do
  {
    v37 = v7;
    v14 = v8;
    v15 = (v35 + 48 * v6);
    v17 = *v15;
    v16 = v15[1];
    v19 = *(v15 + 2);
    v18 = *(v15 + 3);
    v21 = *(v15 + 4);
    v20 = *(v15 + 5);
    if (v39)
    {
      v22 = *(v20 + 376);

      os_unfair_lock_lock(v22);
      os_unfair_lock_lock(*(v20 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v38);
    v23 = *(v5 + 64);
    v41[0] = *(v5 + 48);
    v41[1] = v23;
    v42 = *(v5 + 80);
    v24 = *(*(*(*(v20 + 40) + 16) + 32) + 16) + 1;
    *(v5 + 48) = ecs_stack_allocator_allocate(*(v5 + 32), 48 * v24, 8);
    *(v5 + 56) = v24;
    *(v5 + 72) = 0;
    *(v5 + 80) = 0;
    *(v5 + 64) = 0;
    v25 = sub_1AF64B110(&type metadata for ColorRampComponent, &off_1F2541AA8, v19, v18, v21, v5);
    if (v19)
    {
      if (!v21)
      {
        goto LABEL_21;
      }

      v26 = v25 + 8;
      v8 = v14;
      v7 = v37;
      do
      {
        if (!*(*v26 + 16))
        {
          sub_1AFCBA7A8(0, v8, sub_1AF6AF6D4, MEMORY[0x1E69E6F90]);
          v27 = swift_allocObject();
          v27[1] = xmmword_1AFE4C620;
          v27[2] = v40;
          v27[3] = xmmword_1AFE201A0;
          *(v26 - 1) = v27;
          *v26 = &unk_1F2507FD8;
          v26[8] = 1;
        }

        v26 += 24;
        --v21;
      }

      while (v21);
    }

    else
    {
      if (v17 == v16)
      {
LABEL_21:
        v8 = v14;
        v7 = v37;
        goto LABEL_22;
      }

      v28 = v16 - v17;
      v29 = &v25[24 * v17 + 8];
      v8 = v14;
      v7 = v37;
      do
      {
        if (!*(*v29 + 16))
        {
          sub_1AFCBA7A8(0, v8, sub_1AF6AF6D4, MEMORY[0x1E69E6F90]);
          v30 = swift_allocObject();
          v30[1] = xmmword_1AFE4C620;
          v30[2] = v40;
          v30[3] = xmmword_1AFE201A0;
          *(v29 - 1) = v30;
          *v29 = &unk_1F2508000;
          v29[8] = 1;
        }

        v29 += 24;
        --v28;
      }

      while (v28);
    }

LABEL_22:
    sub_1AF630994(v5, &v50, v41);
    sub_1AF62D29C(v20);
    ecs_stack_allocator_pop_snapshot(v38);
    if (v39)
    {
      os_unfair_lock_unlock(*(v20 + 344));
      os_unfair_lock_unlock(*(v20 + 376));
    }

    ++v6;
  }

  while (v6 != v36);
  sub_1AFCBA0DC(v44, &qword_1ED723D40, &type metadata for ColorRampComponent, &off_1F2541AA8);
  v33 = MEMORY[0x1E69E6720];
  sub_1AFCB9F58(v46, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
  v31 = v33;
  return sub_1AFCB9F58(v46, &qword_1ED725EA0, &type metadata for QueryResult, v31, sub_1AFCBA88C);
}

void sub_1AFCA785C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_OWORD *__return_ptr, uint64_t, uint64_t, __n128), uint64_t (*a5)(void), void (*a6)(void *, uint64_t, __n128))
{
  v10 = a2 & 0x100000000;
  if (qword_1ED72D720 != -1)
  {
    v28 = a2;
    swift_once();
    LODWORD(a2) = v28;
  }

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = a2;
  }

  v65 = qword_1ED73B840;
  v66 = v11;
  v67 = v10 >> 31;
  v68 = 1;
  v69 = 2;
  v70 = 0;

  (a4)(v40, 1, a3);

  v56[0] = v40[0];
  v56[1] = v40[1];
  v57 = v41;
  sub_1AF6B06C0(a1, v56, 0x200000000, &v42);
  v34 = v42;
  if (v42)
  {
    v12 = v45;
    v13 = v46;
    v14 = v48;
    v50 = v43;
    v51 = v44;
    v32 = v49;
    v33 = v47;
    if (v49 > 0 && v46)
    {
      v29 = a5;
      v15 = *(v48 + 32);
      v16 = *(v47 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);

      sub_1AFCBA238(&v42, v60, &qword_1ED725EA0, &type metadata for QueryResult);
      v17 = (v12 + 24);
      v30 = v16;
      v31 = a1;
      do
      {
        v39 = v13;
        v18 = *(v17 - 6);
        v19 = *(v17 - 5);
        v20 = *(v17 - 4);
        v37 = *v17;
        v38 = *(v17 - 1);
        v21 = v17[2];
        v36 = v17[1];
        if (v16)
        {
          v22 = *(v21 + 376);

          os_unfair_lock_lock(v22);
          os_unfair_lock_lock(*(v21 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v15);
        v23 = *(v14 + 64);
        v58[0] = *(v14 + 48);
        v58[1] = v23;
        v59 = *(v14 + 80);
        v24 = *(v14 + 32);
        v25 = *(*(*(*(v21 + 40) + 16) + 32) + 16) + 1;

        *(v14 + 48) = ecs_stack_allocator_allocate(v24, 48 * v25, 8);
        *(v14 + 56) = v25;
        *(v14 + 72) = 0;
        *(v14 + 80) = 0;
        *(v14 + 64) = 0;

        LOBYTE(v52) = 1;
        v60[0] = v33;
        v60[1] = v21;
        v60[2] = v14;
        v60[3] = v20;
        v60[4] = (v19 - v18 + v20);
        v60[5] = v32;
        v60[6] = v18;
        v60[7] = v19;
        v60[8] = 0;
        v60[9] = 0;
        v61 = 1;
        v62 = v38;
        v63 = v37;
        v64 = v36;

        (a6)(v60, v31);

        v53 = v34;
        v54 = v50;
        v55 = v51;
        sub_1AF630994(v14, &v53, v58);
        sub_1AF62D29C(v21);
        ecs_stack_allocator_pop_snapshot(v15);
        v16 = v30;
        if (v30)
        {
          os_unfair_lock_unlock(*(v21 + 344));
          os_unfair_lock_unlock(*(v21 + 376));
        }

        v17 += 6;
        v13 = v39 - 1;
      }

      while (v39 != 1);
      sub_1AFCB9FB8(v40, v29);
      v27 = MEMORY[0x1E69E6720];
      sub_1AFCB9F58(&v42, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);

      v26 = v27;
    }

    else
    {
      sub_1AFCB9FB8(v40, a5);
      v26 = MEMORY[0x1E69E6720];
    }

    sub_1AFCB9F58(&v42, &qword_1ED725EA0, &type metadata for QueryResult, v26, sub_1AFCBA88C);
  }

  else
  {
    sub_1AFCB9FB8(v40, a5);
  }
}

uint64_t sub_1AFCA7CDC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = a2 & 0x100000000;
  v83 = sub_1AFDFC318();
  v74 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v73 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v82 = &v61 - v7;
  v93 = MEMORY[0x1E69E7CD0];
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  if (v4)
  {
    v8 = 0;
  }

  else
  {
    v8 = v2;
  }

  v105 = qword_1ED73B840;
  v106 = v8;
  v107 = v4 >> 31;
  v108 = 1;
  v109 = 2;
  v110 = 0;

  sub_1AF70510C(3, v94);

  v103[0] = v94[0];
  v103[1] = v94[1];
  v104 = v95;
  sub_1AF6B06C0(a1, v103, 0x200000000, v96);
  v89 = v96[2];
  v90 = v97;
  v91 = v98;
  v92 = v99;
  v87 = v96[0];
  v88 = v96[1];
  sub_1AFCB9F58(v94, &unk_1EB643C80, type metadata accessor for VFXObjectTag, &off_1F253D658, sub_1AFCBA680);
  if (*&v96[0])
  {
    if (v99 > 0 && (v67 = *(&v97 + 1)) != 0)
    {
      v66 = *(&v96[2] + 1);
      v9 = *(&v98 + 1);
      v10 = *(v98 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v11 = *(*(&v98 + 1) + 32);
      v100 = *&v96[0];
      v101 = *(v96 + 8);
      v102 = *(&v96[1] + 8);
      v12 = type metadata accessor for VFXObjectTag(0);
      v86[2] = v89;
      v86[3] = v90;
      v86[4] = v91;
      v86[5] = v92;
      v86[0] = v87;
      v86[1] = v88;
      sub_1AF5DD298(v86, v84);
      v13 = 0;
      v14 = 0;
      v61 = v12 - 8;
      v62 = v12;
      v15 = v73;
      v80 = (v74 + 16);
      v81 = (v74 + 8);
      v70 = (v74 + 40);
      v65 = v9;
      v64 = v10;
      v63 = v11;
      do
      {
        v69 = v13;
        v16 = (v66 + 48 * v13);
        v72 = *v16;
        v78 = v16[1];
        v18 = *(v16 + 2);
        v17 = *(v16 + 3);
        v19 = *(v16 + 5);
        v76 = *(v16 + 4);
        v71 = v19;
        if (v10)
        {
          v20 = *(v71 + 47);

          v21 = v20;
          v19 = v71;
          os_unfair_lock_lock(v21);
          os_unfair_lock_lock(*(v19 + 43));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v11);
        v22 = *(v9 + 4);
        v84[0] = *(v9 + 3);
        v84[1] = v22;
        v85 = v9[10];
        v23 = *(*(*(*(v19 + 5) + 16) + 32) + 16) + 1;
        v9[6] = ecs_stack_allocator_allocate(v9[4], 48 * v23, 8);
        v9[7] = v23;
        v9[9] = 0;
        v9[10] = 0;
        v9[8] = 0;
        v24 = v76;
        v25 = sub_1AF64B110(v62, &off_1F253D658, v18, v17, v76, v9);
        v75 = v25;
        v68 = v14;
        if (v18)
        {
          v26 = v80;
          if (v24)
          {
            v27 = 0;
            v77 = *(*v61 + 72);
            do
            {
              v78 = v27;
              v28 = &v25[v77 * v27];
              v31 = v93;
              if (*(v93 + 16))
              {
                sub_1AFCBA6E4(&qword_1EB633A20, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
                v79 = v28;
                v32 = sub_1AFDFCCF8();
                v33 = -1 << *(v31 + 32);
                v34 = v32 & ~v33;
                v35 = *v26;
                if ((*(v31 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
                {
                  v36 = ~v33;
                  v37 = *(v74 + 72);
                  while (1)
                  {
                    v39 = v82;
                    v38 = v83;
                    v35(v82, *(v31 + 48) + v37 * v34, v83);
                    sub_1AFCBA6E4(&qword_1EB633A10, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
                    v40 = sub_1AFDFCE58();
                    (*v81)(v39, v38);
                    if (v40)
                    {
                      break;
                    }

                    v34 = (v34 + 1) & v36;
                    if (((*(v31 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
                    {
                      v15 = v73;
                      v26 = v80;
                      v25 = v75;
                      goto LABEL_17;
                    }
                  }

                  v41 = v82;
                  sub_1AFDFC308();
                  v28 = v79;
                  (*v70)(v79, v41, v83);
                  v15 = v73;
                  v26 = v80;
                  v25 = v75;
                  v24 = v76;
                }

                else
                {
LABEL_17:
                  v24 = v76;
                  v28 = v79;
                }
              }

              else
              {
                v35 = *v26;
              }

              v29 = v83;
              v35(v15, v28, v83);
              v30 = v82;
              sub_1AF70E7D8(v82, v15);
              (*v81)(v30, v29);
              v27 = v78 + 1;
            }

            while (v78 + 1 != v24);
          }
        }

        else
        {
          v42 = v72;
          v43 = v80;
          if (v72 != v78)
          {
            v77 = *(*v61 + 72);
            do
            {
              v48 = &v25[v77 * v42];
              v49 = v93;
              if (*(v93 + 16))
              {
                sub_1AFCBA6E4(&qword_1EB633A20, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
                v79 = v48;
                v50 = sub_1AFDFCCF8();
                v51 = -1 << *(v49 + 32);
                v52 = v50 & ~v51;
                v45 = *v43;
                if ((*(v49 + 56 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52))
                {
                  v72 = v42;
                  v53 = ~v51;
                  v54 = *(v74 + 72);
                  while (1)
                  {
                    v56 = v82;
                    v55 = v83;
                    v45(v82, *(v49 + 48) + v54 * v52, v83);
                    sub_1AFCBA6E4(&qword_1EB633A10, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
                    v57 = sub_1AFDFCE58();
                    (*v81)(v56, v55);
                    if (v57)
                    {
                      break;
                    }

                    v52 = (v52 + 1) & v53;
                    if (((*(v49 + 56 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) == 0)
                    {
                      v42 = v72;
                      v15 = v73;
                      v48 = v79;
                      v43 = v80;
                      v25 = v75;
                      goto LABEL_32;
                    }
                  }

                  v58 = v82;
                  sub_1AFDFC308();
                  v48 = v79;
                  (*v70)(v79, v58, v83);
                  v42 = v72;
                  v15 = v73;
                  v43 = v80;
                  v25 = v75;
                }

                else
                {
                  v25 = v75;
                  v48 = v79;
                }
              }

              else
              {
                v45 = *v43;
              }

LABEL_32:
              ++v42;
              v46 = v83;
              v45(v15, v48, v83);
              v47 = v82;
              sub_1AF70E7D8(v82, v15);
              (*v81)(v47, v46);
            }

            while (v42 != v78);
          }
        }

        v9 = v65;
        v14 = v68;
        sub_1AF630994(v65, &v100, v84);
        v44 = v71;
        sub_1AF62D29C(v71);
        v11 = v63;
        ecs_stack_allocator_pop_snapshot(v63);
        v10 = v64;
        if (v64)
        {
          os_unfair_lock_unlock(*(v44 + 43));
          os_unfair_lock_unlock(*(v44 + 47));
        }

        v13 = v69 + 1;
      }

      while (v69 + 1 != v67);
      v59 = MEMORY[0x1E69E6720];
      sub_1AFCB9F58(v96, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
      sub_1AFCB9F58(v96, &qword_1ED725EA0, &type metadata for QueryResult, v59, sub_1AFCBA88C);
    }

    else
    {
      sub_1AFCB9F58(v96, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
    }
  }
}

uint64_t sub_1AFCA8664(uint64_t a1, uint64_t a2)
{
  v256 = *MEMORY[0x1E69E9840];
  v3 = a2 & 0x100000000;
  if (qword_1ED72D720 != -1)
  {
    v162 = a2;
    swift_once();
    LODWORD(a2) = v162;
  }

  v4 = qword_1ED73B840;
  v204 = qword_1ED73B840;
  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = a2;
  }

  v6 = v3 >> 31;
  v205 = v5;
  v206 = v3 >> 31;
  v207 = 1;
  v208 = 2;
  v209 = 0;

  sub_1AF7032F8(3, v197);

  v202[0] = v197[0];
  v202[1] = v197[1];
  v203 = v198;
  sub_1AF6B06C0(a1, v202, 0x200000000, v224);
  v181 = *v224;
  if (!*v224)
  {
    goto LABEL_126;
  }

  v7 = *(&v225 + 1);
  v178 = *&v224[40];
  v8 = *(&v226 + 1);
  v180 = v226;
  v236 = *&v224[8];
  v237 = *&v224[24];
  v176 = v227;
  if (v227 <= 0 || !*(&v225 + 1))
  {
    sub_1AFCB9F58(v224, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
LABEL_126:
    v11 = 0;
    goto LABEL_128;
  }

  v163 = v5;
  v164 = v3 >> 31;
  v166 = v4;
  v187 = *(*(&v226 + 1) + 32);
  v9 = *(v226 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v168 = a1;
  v192 = (a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  *&v230[32] = *&v224[32];
  v231 = v225;
  v232 = v226;
  v233 = v227;
  *v230 = *v224;
  *&v230[16] = *&v224[16];
  sub_1AF5DD298(v230, v243);
  v10 = 0;
  v11 = 0;
  v170 = v9;
  v172 = v8;
  v174 = v7;
  do
  {
    v185 = v10;
    v12 = (v178 + 48 * v10);
    v13 = *v12;
    v14 = v12[1];
    v15 = v12[2];
    v16 = *(v12 + 2);
    v17 = *(v12 + 3);
    v18 = *(v12 + 4);
    v19 = *(v12 + 5);
    if (v9)
    {
      v20 = *(v19 + 376);

      os_unfair_lock_lock(v20);
      os_unfair_lock_lock(*(v19 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v187);
    v21 = *(v8 + 4);
    v241[0] = *(v8 + 3);
    v241[1] = v21;
    v242 = v8[10];
    v22 = *(*(*(*(v19 + 40) + 16) + 32) + 16) + 1;
    v8[6] = ecs_stack_allocator_allocate(v8[4], 48 * v22, 8);
    v8[7] = v22;
    v8[9] = 0;
    v8[10] = 0;
    v8[8] = 0;
    LOBYTE(v220) = 1;
    v243[0] = v180;
    v243[1] = v19;
    v244 = v8;
    v245 = v15;
    v246 = (v14 - v13 + v15);
    v247 = v176;
    v248 = v13;
    v249 = v14;
    v250 = 0;
    v251 = 0;
    v252 = 1;
    v253 = v16;
    v254 = v17;
    v255 = v18;
    v194 = sub_1AF705F1C(v19, v243);
    v23 = v253;
    v183 = v11;
    if (!v253)
    {
      v26 = v248;
      v27 = v249;
      if (v248 == v249)
      {
        goto LABEL_18;
      }

      v69 = v244;
LABEL_75:
      v70 = &v194[8 * v26];
      v71 = *v70;
      v72 = *(v70 + 1);

      if (*(v19 + 184))
      {
LABEL_205:
        sub_1AFDFE518();
        __break(1u);
      }

      v74 = *(*(v19 + 168) + 4 * v26);
      v75 = *(*(v73 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v74 + 8);

      if (v71 != v74 || v72 != v75)
      {
        v77 = *(v70 + 1);
        v78 = *v70;
        v79 = v78 == -1 && v77 == 0;
        if (!v79 && (v78 & 0x80000000) == 0 && v192[1] > v78 && (v77 == -1 || *(*v192 + 12 * v78 + 8) == v77))
        {
          goto LABEL_74;
        }
      }

      v80 = *(*(v19 + 40) + 16);
      v81 = *(v80 + 128);
      if (!*(v81 + 16))
      {
        goto LABEL_74;
      }

      v82 = sub_1AF449CB8(&type metadata for Parent);
      if ((v83 & 1) == 0 || *(*(v80 + 24) + 16 * *(*(v81 + 56) + 8 * v82) + 32) != &type metadata for Parent)
      {
        goto LABEL_74;
      }

      v212 = &type metadata for Parent;
      v213 = &off_1F2529C98;
      v217 = 1;
      v84 = v69[13];
      v85 = *(v84 + 16);
      if (!v85)
      {

LABEL_120:
        v99 = *(v19 + 240) - *(v19 + 232);
        v100 = ecs_stack_allocator_allocate(v69[4], 8 * v99, 8);
        *v100 = v26;
        sub_1AF63515C(&v212, &v220);
        *v223 = v100;
        *&v223[8] = v99;
        *&v223[16] = 1;
        v101 = v69[13];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v69[13] = v101;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v101 = sub_1AF420EA0(0, v101[2] + 1, 1, v101);
          v69[13] = v101;
        }

        v104 = v101[2];
        v103 = v101[3];
        if (v104 >= v103 >> 1)
        {
          v69[13] = sub_1AF420EA0(v103 > 1, v104 + 1, 1, v101);
        }

        sub_1AF635250(&v212);
        v105 = v69[13];
        *(v105 + 16) = v104 + 1;
        v106 = v105 + 72 * v104;
        *(v106 + 32) = v220;
        v108 = v222;
        v107 = *v223;
        v109 = v221;
        *(v106 + 96) = *&v223[16];
        *(v106 + 64) = v108;
        *(v106 + 80) = v107;
        *(v106 + 48) = v109;
        v69[13] = v105;
        goto LABEL_74;
      }

      v86 = v84 + 32;

      v87 = 0;
      while (1)
      {
        sub_1AF6350F8(v86, v218);
        sub_1AF63515C(v218, &v220);
        sub_1AF63515C(&v212, v223);
        if (BYTE8(v222) <= 2u)
        {
          break;
        }

        if (BYTE8(v222) == 3)
        {
          sub_1AF63515C(&v220, v210);
          if (v223[40] != 3)
          {
            goto LABEL_93;
          }

LABEL_112:
          sub_1AF616568(v210, &v238);
          sub_1AF616568(v223, v228);
          v93 = *(&v240 + 1);
          v92 = v240;
          sub_1AF441150(&v238, v240);
          LOBYTE(v92) = sub_1AF640C98(v228, v92, v93);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v228);
          sub_1AFCB9FB8(v218, sub_1AF43A540);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v238);
          sub_1AF635250(&v220);
          if (v92)
          {
            goto LABEL_117;
          }

          goto LABEL_95;
        }

        if (BYTE8(v222) != 4)
        {
          sub_1AFCB9FB8(v218, sub_1AF43A540);
          if (v223[40] == 5)
          {
            v94 = vorrq_s8(*&v223[8], *&v223[24]);
            if (!(*&vorr_s8(*v94.i8, *&vextq_s8(v94, v94, 8uLL)) | *v223))
            {
              sub_1AF635250(&v220);
LABEL_117:
              v96 = sub_1AFBFCA08(&v220);
              v97 = *(v95 + 48);
              if (v97)
              {
                v98 = *(v95 + 64);
                *(v97 + 8 * v98) = v26;
                *(v95 + 64) = v98 + 1;
              }

              (v96)(&v220, 0);

              sub_1AF635250(&v212);
LABEL_74:
              if (++v26 == v27)
              {
                goto LABEL_18;
              }

              goto LABEL_75;
            }
          }

          goto LABEL_94;
        }

        sub_1AFCB9FB8(v218, sub_1AF43A540);
        sub_1AF63515C(&v220, v210);
        if (v223[40] != 4)
        {
          goto LABEL_94;
        }

        v88 = LOBYTE(v210[0]);
        v89 = v223[0];
        sub_1AF635250(&v220);
        if (v88 == v89)
        {
          goto LABEL_117;
        }

LABEL_95:
        ++v87;
        v86 += 72;
        if (v85 == v87)
        {
          goto LABEL_120;
        }
      }

      if (!BYTE8(v222))
      {
        sub_1AFCB9FB8(v218, sub_1AF43A540);
        sub_1AF63515C(&v220, v210);
        if (v223[40])
        {
          goto LABEL_94;
        }

        goto LABEL_107;
      }

      if (BYTE8(v222) == 1)
      {
        sub_1AFCB9FB8(v218, sub_1AF43A540);
        sub_1AF63515C(&v220, v210);
        if (v223[40] != 1)
        {
          goto LABEL_94;
        }

LABEL_107:
        v90 = *&v210[0];
        v91 = *v223;
        sub_1AF635250(&v220);
        if (v90 == v91)
        {
          goto LABEL_117;
        }

        goto LABEL_95;
      }

      sub_1AF63515C(&v220, v210);
      if (v223[40] != 2)
      {
LABEL_93:
        sub_1AFCB9FB8(v218, sub_1AF43A540);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v210);
LABEL_94:
        sub_1AFCB9F58(&v220, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
        goto LABEL_95;
      }

      goto LABEL_112;
    }

    v24 = v255;
    if (v255)
    {
      v25 = 0;
      v189 = v244;
      do
      {
        v28 = *(v23 + 8 * v25);
        v29 = &v194[8 * v25];
        v30 = *v29;
        v31 = *(v29 + 1);

        if (*(v19 + 184))
        {
          goto LABEL_205;
        }

        v33 = *(*(v19 + 168) + 4 * v28);
        v34 = *(*(v32 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v33 + 8);

        v35 = v30 == v33 && v31 == v34;
        if (!v35)
        {
          v36 = *(v29 + 1);
          v37 = *v29;
          v38 = v37 == -1 && v36 == 0;
          if (!v38 && (v37 & 0x80000000) == 0 && v192[1] > v37 && (v36 == -1 || *(*v192 + 12 * v37 + 8) == v36))
          {
            goto LABEL_21;
          }
        }

        v39 = *(*(v19 + 40) + 16);
        v40 = *(v39 + 128);
        if (!*(v40 + 16))
        {
          goto LABEL_21;
        }

        v41 = sub_1AF449CB8(&type metadata for Parent);
        if ((v42 & 1) == 0 || *(*(v39 + 24) + 16 * *(*(v40 + 56) + 8 * v41) + 32) != &type metadata for Parent)
        {
          goto LABEL_21;
        }

        v212 = &type metadata for Parent;
        v213 = &off_1F2529C98;
        v217 = 1;
        v43 = v189[13];
        v44 = *(v43 + 16);
        if (!v44)
        {

LABEL_67:
          v58 = *(v19 + 240) - *(v19 + 232);
          v59 = ecs_stack_allocator_allocate(v189[4], 8 * v58, 8);
          *v59 = v28;
          sub_1AF63515C(&v212, &v220);
          *v223 = v59;
          *&v223[8] = v58;
          *&v223[16] = 1;
          v60 = v189[13];
          v61 = swift_isUniquelyReferenced_nonNull_native();
          v189[13] = v60;
          if ((v61 & 1) == 0)
          {
            v60 = sub_1AF420EA0(0, v60[2] + 1, 1, v60);
            v189[13] = v60;
          }

          v63 = v60[2];
          v62 = v60[3];
          if (v63 >= v62 >> 1)
          {
            v189[13] = sub_1AF420EA0(v62 > 1, v63 + 1, 1, v60);
          }

          sub_1AF635250(&v212);
          v64 = v189[13];
          *(v64 + 16) = v63 + 1;
          v65 = v64 + 72 * v63;
          *(v65 + 32) = v220;
          v67 = v222;
          v66 = *v223;
          v68 = v221;
          *(v65 + 96) = *&v223[16];
          *(v65 + 64) = v67;
          *(v65 + 80) = v66;
          *(v65 + 48) = v68;
          v189[13] = v64;
          goto LABEL_21;
        }

        v45 = v43 + 32;

        v46 = 0;
        while (1)
        {
          sub_1AF6350F8(v45, v218);
          sub_1AF63515C(v218, &v220);
          sub_1AF63515C(&v212, v223);
          if (BYTE8(v222) <= 2u)
          {
            if (!BYTE8(v222))
            {
              sub_1AFCB9FB8(v218, sub_1AF43A540);
              sub_1AF63515C(&v220, v210);
              if (v223[40])
              {
                goto LABEL_41;
              }

              goto LABEL_54;
            }

            if (BYTE8(v222) == 1)
            {
              sub_1AFCB9FB8(v218, sub_1AF43A540);
              sub_1AF63515C(&v220, v210);
              if (v223[40] != 1)
              {
                goto LABEL_41;
              }

LABEL_54:
              v49 = *&v210[0];
              v50 = *v223;
              sub_1AF635250(&v220);
              if (v49 == v50)
              {
                goto LABEL_64;
              }

              goto LABEL_42;
            }

            sub_1AF63515C(&v220, v210);
            if (v223[40] != 2)
            {
LABEL_40:
              sub_1AFCB9FB8(v218, sub_1AF43A540);
              _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v210);
LABEL_41:
              sub_1AFCB9F58(&v220, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
              goto LABEL_42;
            }

            goto LABEL_59;
          }

          if (BYTE8(v222) == 3)
          {
            sub_1AF63515C(&v220, v210);
            if (v223[40] != 3)
            {
              goto LABEL_40;
            }

LABEL_59:
            sub_1AF616568(v210, &v238);
            sub_1AF616568(v223, v228);
            v52 = *(&v240 + 1);
            v51 = v240;
            sub_1AF441150(&v238, v240);
            LOBYTE(v51) = sub_1AF640C98(v228, v51, v52);
            _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v228);
            sub_1AFCB9FB8(v218, sub_1AF43A540);
            _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v238);
            sub_1AF635250(&v220);
            if (v51)
            {
              goto LABEL_64;
            }

            goto LABEL_42;
          }

          if (BYTE8(v222) != 4)
          {
            break;
          }

          sub_1AFCB9FB8(v218, sub_1AF43A540);
          sub_1AF63515C(&v220, v210);
          if (v223[40] != 4)
          {
            goto LABEL_41;
          }

          v47 = LOBYTE(v210[0]);
          v48 = v223[0];
          sub_1AF635250(&v220);
          if (v47 == v48)
          {
            goto LABEL_64;
          }

LABEL_42:
          ++v46;
          v45 += 72;
          if (v44 == v46)
          {
            goto LABEL_67;
          }
        }

        sub_1AFCB9FB8(v218, sub_1AF43A540);
        if (v223[40] != 5)
        {
          goto LABEL_41;
        }

        v53 = vorrq_s8(*&v223[8], *&v223[24]);
        if (*&vorr_s8(*v53.i8, *&vextq_s8(v53, v53, 8uLL)) | *v223)
        {
          goto LABEL_41;
        }

        sub_1AF635250(&v220);
LABEL_64:
        v55 = sub_1AFBFCA08(&v220);
        v56 = *(v54 + 48);
        if (v56)
        {
          v57 = *(v54 + 64);
          *(v56 + 8 * v57) = v28;
          *(v54 + 64) = v57 + 1;
        }

        (v55)(&v220, 0);

        sub_1AF635250(&v212);
LABEL_21:
        ++v25;
      }

      while (v25 != v24);
    }

LABEL_18:
    v11 = v183;
    v199 = v181;
    v200 = v236;
    v201 = v237;
    v8 = v172;
    sub_1AF630994(v172, &v199, v241);
    sub_1AF62D29C(v19);
    ecs_stack_allocator_pop_snapshot(v187);
    v9 = v170;
    if (v170)
    {
      os_unfair_lock_unlock(*(v19 + 344));
      os_unfair_lock_unlock(*(v19 + 376));
    }

    v10 = v185 + 1;
  }

  while (v185 + 1 != v174);
  v110 = MEMORY[0x1E69E6720];
  sub_1AFCB9F58(v224, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
  sub_1AFCB9F58(v224, &qword_1ED725EA0, &type metadata for QueryResult, v110, sub_1AFCBA88C);
  v4 = v166;
  a1 = v168;
  LOBYTE(v6) = v164;
  v5 = v163;
LABEL_128:
  v212 = v4;
  LODWORD(v213) = v5;
  BYTE4(v213) = v6;
  v214 = 1;
  v215 = 2;
  v216 = 0;

  sub_1AF705168(3, v228);

  v210[0] = v228[0];
  v210[1] = v228[1];
  v211 = v229;
  sub_1AF6B06C0(a1, v210, 0x200000000, v230);
  v171 = *v230;
  if (*v230)
  {
    v169 = *&v230[40];
    v111 = *(&v231 + 1);
    v112 = *(&v232 + 1);
    v234 = *&v230[8];
    v235 = *&v230[24];
    if (v233 <= 0)
    {
      v222 = *&v230[32];
      *v223 = v231;
      *&v223[16] = v232;
      *&v223[32] = v233;
      v220 = *v230;
      v221 = *&v230[16];
      sub_1AF5DD298(&v220, v218);
      sub_1AFCBA0DC(v197, &qword_1EB643C78, &type metadata for Parent, &off_1F2529C98);
      v157 = &qword_1EB643C70;
      v158 = &type metadata for Children;
      v159 = &off_1F252A4A0;
      v160 = v228;
    }

    else
    {
      if (*(&v231 + 1))
      {
        v179 = *(*(&v232 + 1) + 32);
        v177 = *(v232 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v193 = (a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
        v222 = *&v230[32];
        *v223 = v231;
        *&v223[16] = v232;
        *&v223[32] = v233;
        v220 = *v230;
        v221 = *&v230[16];
        sub_1AF5DD298(&v220, v218);
        v113 = 0;
        v165 = v112;
        v167 = v111;
        do
        {
          v114 = (v169 + 48 * v113);
          v115 = *v114;
          v188 = v114[1];
          v116 = *(v114 + 3);
          v117 = *(v114 + 5);
          v182 = *(v114 + 4);
          v184 = *(v114 + 2);
          if (v177)
          {
            v118 = *(v117 + 376);

            os_unfair_lock_lock(v118);
            os_unfair_lock_lock(*(v117 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v179);
          v119 = *(v112 + 4);
          v218[0] = *(v112 + 3);
          v218[1] = v119;
          v219 = v112[10];
          v120 = *(*(*(*(v117 + 40) + 16) + 32) + 16) + 1;
          v112[6] = ecs_stack_allocator_allocate(v112[4], 48 * v120, 8);
          v112[7] = v120;
          v112[9] = 0;
          v112[10] = 0;
          v112[8] = 0;
          v121 = sub_1AF64B110(&type metadata for Children, &off_1F252A4A0, v184, v116, v182, v112);
          v186 = v121;
          v173 = v113;
          v175 = v11;
          if (v184)
          {
            if (v182)
            {
              v122 = v182;
              for (i = 0; i != v122; ++i)
              {
                v124 = v184[i];
                v125 = *(*&v121[8 * i] + 16);

                if (v125)
                {
                  v128 = 0;
                  v129 = v126 + 32;
                  v190 = MEMORY[0x1E69E7CC0];
                  do
                  {
                    v130 = v128;
                    while (1)
                    {
                      v127.n128_u64[0] = *(v129 + 8 * v130);
                      v195 = v127;

                      if (*(v117 + 184))
                      {
                        goto LABEL_205;
                      }

                      v132 = *(*(v117 + 168) + 4 * v124);
                      v133 = *(*(v131 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v132 + 8);

                      v127.n128_u64[1] = v195.n128_u64[1];
                      if (v195.n128_u32[0] != v132 || v195.n128_u32[1] != v133)
                      {
                        v135 = v195.n128_u32[0] == -1 && v195.n128_u32[1] == 0;
                        if (!v135 && (v195.n128_u32[0] & 0x80000000) == 0 && v193[1] > v195.n128_i32[0] && (v195.n128_u32[1] == -1 || *(*v193 + 12 * v195.n128_i32[0] + 8) == v195.n128_u32[1]))
                        {
                          break;
                        }
                      }

                      if (v125 == ++v130)
                      {
                        v122 = v182;
                        goto LABEL_140;
                      }
                    }

                    v137 = v190;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      sub_1AFC07194(0, *(v190 + 16) + 1, 1);
                      v137 = v190;
                    }

                    v139 = *(v137 + 16);
                    v138 = *(v137 + 24);
                    v140 = v139 + 1;
                    v127 = v195;
                    if (v139 >= v138 >> 1)
                    {
                      sub_1AFC07194(v138 > 1, v139 + 1, 1);
                      v140 = v139 + 1;
                      v127 = v195;
                      v137 = v190;
                    }

                    v128 = v130 + 1;
                    *(v137 + 16) = v140;
                    v190 = v137;
                    *(v137 + 8 * v139 + 32) = v127.n128_u64[0];
                    v35 = v125 - 1 == v130;
                    v122 = v182;
                  }

                  while (!v35);
                }

                else
                {
                  v190 = MEMORY[0x1E69E7CC0];
                }

LABEL_140:

                v121 = v186;
                *&v186[8 * i] = v190;
              }
            }
          }

          else if (v115 != v188)
          {
            do
            {
              v141 = *&v121[8 * v115];
              v142 = *(v141 + 16);

              if (v142)
              {
                v144 = 0;
                v191 = MEMORY[0x1E69E7CC0];
                do
                {
                  v145 = v144;
                  while (1)
                  {
                    v143.n128_u64[0] = *(v141 + 32 + 8 * v145);
                    v196 = v143;

                    if (*(v117 + 184))
                    {
                      goto LABEL_205;
                    }

                    v147 = *(*(v117 + 168) + 4 * v115);
                    v148 = *(*(v146 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v147 + 8);

                    v143.n128_u64[1] = v196.n128_u64[1];
                    if (v196.n128_u32[0] != v147 || v196.n128_u32[1] != v148)
                    {
                      v150 = v196.n128_u32[0] == -1 && v196.n128_u32[1] == 0;
                      if (!v150 && (v196.n128_u32[0] & 0x80000000) == 0 && v193[1] > v196.n128_i32[0] && (v196.n128_u32[1] == -1 || *(*v193 + 12 * v196.n128_i32[0] + 8) == v196.n128_u32[1]))
                      {
                        break;
                      }
                    }

                    if (v142 == ++v145)
                    {
                      goto LABEL_173;
                    }
                  }

                  v152 = v191;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_1AFC07194(0, *(v191 + 16) + 1, 1);
                    v152 = v191;
                  }

                  v154 = *(v152 + 16);
                  v153 = *(v152 + 24);
                  v155 = v154 + 1;
                  v143 = v196;
                  if (v154 >= v153 >> 1)
                  {
                    sub_1AFC07194(v153 > 1, v154 + 1, 1);
                    v155 = v154 + 1;
                    v143 = v196;
                    v152 = v191;
                  }

                  v144 = v145 + 1;
                  *(v152 + 16) = v155;
                  v191 = v152;
                  *(v152 + 8 * v154 + 32) = v143.n128_u64[0];
                }

                while (v142 - 1 != v145);
              }

              else
              {
                v191 = MEMORY[0x1E69E7CC0];
              }

LABEL_173:

              v121 = v186;
              *&v186[8 * v115] = v191;

              ++v115;
            }

            while (v115 != v188);
          }

          v238 = v171;
          v239 = v234;
          v240 = v235;
          v112 = v165;
          v11 = v175;
          sub_1AF630994(v165, &v238, v218);
          sub_1AF62D29C(v117);
          ecs_stack_allocator_pop_snapshot(v179);
          if (v177)
          {
            os_unfair_lock_unlock(*(v117 + 344));
            os_unfair_lock_unlock(*(v117 + 376));
          }

          v113 = v173 + 1;
        }

        while (v173 + 1 != v167);
      }

      else
      {
        v222 = *&v230[32];
        *v223 = v231;
        *&v223[16] = v232;
        *&v223[32] = v233;
        v220 = *v230;
        v221 = *&v230[16];
        sub_1AF5DD298(&v220, v218);
      }

      sub_1AFCBA0DC(v228, &qword_1EB643C70, &type metadata for Children, &off_1F252A4A0);
      v157 = &qword_1EB643C78;
      v158 = &type metadata for Parent;
      v159 = &off_1F2529C98;
      v160 = v197;
    }

    sub_1AFCBA0DC(v160, v157, v158, v159);
    v161 = MEMORY[0x1E69E6720];
    sub_1AFCB9F58(v230, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
    return sub_1AFCB9F58(v230, &qword_1ED725EA0, &type metadata for QueryResult, v161, sub_1AFCBA88C);
  }

  else
  {
    sub_1AFCBA0DC(v197, &qword_1EB643C78, &type metadata for Parent, &off_1F2529C98);
    return sub_1AFCBA0DC(v228, &qword_1EB643C70, &type metadata for Children, &off_1F252A4A0);
  }
}

uint64_t sub_1AFCA9C88(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0x100000000;
  if (qword_1ED72D720 != -1)
  {
    v7 = a2;
    swift_once();
    LODWORD(a2) = v7;
  }

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  v27 = qword_1ED73B840;
  v28 = v4;
  v29 = v3 >> 31;
  v30 = 1;
  v31 = 2;
  v32 = 0;

  sub_1AF702F8C(3, v8);

  sub_1AFA1CFD4(0, &qword_1ED7269A0, &qword_1ED7270C0, &qword_1ED7270D0, &protocol descriptor for Component);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = &type metadata for Seed;
  *(inited + 40) = &off_1F2563DE0;
  sub_1AF5D1EC0(inited);
  sub_1AFCBA0DC(v8, &qword_1ED723D38, &type metadata for EmitterDescription, &off_1F2563648);
  swift_setDeallocating();
  v18[0] = v9[0];
  v18[1] = v9[1];
  v19 = v10;
  sub_1AF6B06C0(a1, v18, 0x200000000, &v11);
  if (!v11)
  {
    return sub_1AFCBA0DC(v9, &qword_1ED723D38, &type metadata for EmitterDescription, &off_1F2563648);
  }

  v23 = v14;
  v24 = v15;
  v25 = v16;
  v21 = v12;
  v22 = v13;
  v26 = v17;
  v20 = v11;
  sub_1AFD0756C(&v20);
  sub_1AFCBA0DC(v9, &qword_1ED723D38, &type metadata for EmitterDescription, &off_1F2563648);
  return sub_1AFCB9F58(&v11, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
}

uint64_t sub_1AFCA9ED8(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0x100000000;
  if (qword_1ED72D720 != -1)
  {
    v40 = a2;
    swift_once();
    LODWORD(a2) = v40;
  }

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  v68 = qword_1ED73B840;
  v69 = v4;
  v70 = v3 >> 31;
  v71 = 1;
  v72 = 2;
  v73 = 0;

  sub_1AF703280(1, v58);

  sub_1AFA1CFD4(0, &qword_1ED7269A0, &qword_1ED7270C0, &qword_1ED7270D0, &protocol descriptor for Component);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = &type metadata for VFXAssetTag;
  *(inited + 40) = &off_1F253D5D8;
  sub_1AF5D1EC0(inited);
  sub_1AFCBA0DC(v58, &qword_1ED723D18, &type metadata for TextureShaderAsset, &off_1F2543F30);
  swift_setDeallocating();
  v66[0] = v59[0];
  v66[1] = v59[1];
  v67 = v60;
  sub_1AF6B06C0(a1, v66, 0x200000000, v61);
  result = sub_1AFCBA0DC(v59, &qword_1ED723D18, &type metadata for TextureShaderAsset, &off_1F2543F30);
  if (*&v61[0])
  {
    if (v65 >= 1 && v63)
    {
      v7 = v62;
      v43 = v64;
      v8 = v62 + 48 * v63;
      v41 = v8;
      do
      {
        v9 = *(v7 + 40);
        v10 = *(v9 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v10);
        os_unfair_lock_lock(*(v9 + 344));
        v11 = *(v9 + 24);

        v52 = 0;
        v50 = 0u;
        v51 = 0u;
        memset(v57, 0, 40);
        v12 = sub_1AF65A4B4(v11, &type metadata for VFXAssetTag, &off_1F253D498, 0, 0, &v50, v57);

        sub_1AFCB9FB8(v57, sub_1AF5C4448);
        sub_1AFCB9FB8(&v50, sub_1AF5C4448);
        if (sub_1AF649CEC(v12))
        {
          sub_1AF649D40(v12, v43);
        }

        else
        {
          v14 = *(v9 + 232);
          v13 = *(v9 + 240);
          v45 = *(v9 + 120);
          v49 = *(v9 + 28);
          v48 = *(v9 + 32);
          v15 = *(v9 + 16);
          v16 = *(v9 + 40);
          v17 = *(v16 + 200);
          v47 = *(*(v15 + 88) + 8 * v12 + 32);

          if ((v17 & 1) != 0 || *(v47 + 200) == 1)
          {
            *(v15 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v16 = *(v9 + 40);
          }

          v18 = v45;
          v46 = *(v9 + 128);
          v19 = *(v9 + 256);
          sub_1AF5B4FCC(v16, v14, v13, 0, v9);
          v44 = *(v9 + 256);
          v20 = v44 - v19;
          if (v44 == v19)
          {
            v21 = 0;
          }

          else
          {
            v21 = v19;
          }

          v57[0] = v21;
          v22 = *(*(v9 + 40) + 24);
          v23 = *(v22 + 16);
          if (v23)
          {
            v42 = v7;
            v24 = v22 + 32;

            v25 = 0;
            v26 = v44 - v19;
            do
            {
              v27 = (v24 + 40 * v25);
              if ((v27[4] & 1) == 0)
              {
                v28 = *v27;
                v30 = v27[2];
                v29 = v27[3];
                v31 = *(v47 + 24);
                v32 = *(v31 + 16);
                if (v32)
                {
                  v33 = (v31 + 32);
                  while (*v33 != v28)
                  {
                    v33 += 5;
                    if (!--v32)
                    {
                      goto LABEL_21;
                    }
                  }
                }

                else
                {
LABEL_21:
                  sub_1AF640BC8(v46 + v30 * v21 + v29, v26);
                  v26 = v44 - v19;
                }
              }

              ++v25;
            }

            while (v25 != v23);
            v20 = v26;

            v7 = v42;
            v18 = v45;
          }

          if (*(v15 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v15 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v9 + 72) * v20);
          }

          if (*(v9 + 184))
          {
            v34 = 0;
          }

          else
          {
            v34 = *(v9 + 168);
          }

          v56 = 0;

          MEMORY[0x1EEE9AC00](v35);
          v36 = v49;
          v37 = v48;
          DWORD2(v51) = -1;
          v52 = v19;
          v53 = v44;
          v54 = v19;
          v55 = v44;
          *&v50 = v19;
          *(&v50 + 1) = v44;
          *&v51 = v34;
          if (v20 < 1)
          {

            v8 = v41;
          }

          else
          {
            v8 = v41;
            do
            {
              sub_1AF6248A8(v12, v36 | (v37 << 32), v18, v15, &v50, sub_1AF5C5E08);
              v37 = v48;
              v36 = v49;
            }

            while ((*(&v50 + 1) - v50) > 0);
          }

          v38 = *(v9 + 192);
          if (v38)
          {
            v39 = *(v9 + 208);
            sub_1AF75D364(v19, v44, v38);
            sub_1AF75D364(v19, v44, v39);
          }
        }

        v7 += 48;
        os_unfair_lock_unlock(*(v9 + 344));
        os_unfair_lock_unlock(*(v9 + 376));
      }

      while (v7 != v8);
    }

    return sub_1AFCB9F58(v61, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
  }

  return result;
}

uint64_t sub_1AFCAA528(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = result;
    v4 = a2 & 0x100000000;
    if (qword_1ED72D720 != -1)
    {
      v25 = a2;
      swift_once();
      LODWORD(a2) = v25;
    }

    if (v4)
    {
      v5 = 0;
    }

    else
    {
      v5 = a2;
    }

    v44 = qword_1ED73B840;
    v45 = v5;
    v46 = v4 >> 31;
    v47 = 1;
    v48 = 2;
    v49 = 0;

    sub_1AF705008(3, v33);

    v42[0] = v33[0];
    v42[1] = v33[1];
    v43 = v34;
    sub_1AF6B06C0(v3, v42, 0x200000000, v35);
    if (*v35)
    {
      if (v38 > 0 && (v28 = *(&v36 + 1)) != 0)
      {
        v27 = *&v35[40];
        v6 = *(&v37 + 1);
        i = *(v37 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v29 = *(*(&v37 + 1) + 32);
        v39 = *v35;
        v40 = *&v35[8];
        v41 = *&v35[24];
        v32[2] = *&v35[32];
        v32[3] = v36;
        v32[4] = v37;
        v32[5] = v38;
        v32[0] = *v35;
        v32[1] = *&v35[16];
        sub_1AF5DD298(v32, v30);
        v8 = 0;
        v26 = i;
        do
        {
          v9 = (v27 + 48 * v8);
          v11 = *v9;
          v10 = v9[1];
          v13 = *(v9 + 2);
          v12 = *(v9 + 3);
          v15 = *(v9 + 4);
          v14 = *(v9 + 5);
          if (i)
          {
            v16 = *(v14 + 376);

            os_unfair_lock_lock(v16);
            os_unfair_lock_lock(*(v14 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v29);
          v17 = *(v6 + 64);
          v30[0] = *(v6 + 48);
          v30[1] = v17;
          v31 = *(v6 + 80);
          v18 = *(*(*(*(v14 + 40) + 16) + 32) + 16) + 1;
          *(v6 + 48) = ecs_stack_allocator_allocate(*(v6 + 32), 48 * v18, 8);
          *(v6 + 56) = v18;
          *(v6 + 72) = 0;
          *(v6 + 80) = 0;
          *(v6 + 64) = 0;
          v19 = sub_1AF64B110(&type metadata for GraphScriptingConfig, &off_1F253C070, v13, v12, v15, v6);
          v20 = v19;
          if (v13)
          {
            for (i = v26; v15; --v15)
            {
              sub_1AF7C478C();
              v20 += 32;
            }
          }

          else
          {
            i = v26;
            if (v11 != v10)
            {
              v21 = &v19[32 * v11];
              v22 = v10 - v11;
              do
              {
                sub_1AF7C478C();
                v21 += 32;
                --v22;
              }

              while (v22);
            }
          }

          sub_1AF630994(v6, &v39, v30);
          sub_1AF62D29C(v14);
          ecs_stack_allocator_pop_snapshot(v29);
          if (i)
          {
            os_unfair_lock_unlock(*(v14 + 344));
            os_unfair_lock_unlock(*(v14 + 376));
          }

          ++v8;
        }

        while (v8 != v28);
        sub_1AFCBA0DC(v33, &qword_1EB63D280, &type metadata for GraphScriptingConfig, &off_1F253C070);
        v24 = MEMORY[0x1E69E6720];
        sub_1AFCB9F58(v35, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
        v23 = v24;
      }

      else
      {
        sub_1AFCBA0DC(v33, &qword_1EB63D280, &type metadata for GraphScriptingConfig, &off_1F253C070);
        v23 = MEMORY[0x1E69E6720];
      }

      return sub_1AFCB9F58(v35, &qword_1ED725EA0, &type metadata for QueryResult, v23, sub_1AFCBA88C);
    }

    else
    {
      return sub_1AFCBA0DC(v33, &qword_1EB63D280, &type metadata for GraphScriptingConfig, &off_1F253C070);
    }
  }

  return result;
}

uint64_t sub_1AFCAA95C(uint64_t a1, uint64_t a2)
{
  v299 = *MEMORY[0x1E69E9840];
  v3 = a2 & 0x100000000;
  if (qword_1ED72D720 != -1)
  {
    v196 = a2;
    swift_once();
    LODWORD(a2) = v196;
  }

  v4 = qword_1ED73B840;
  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = a2;
  }

  v241 = qword_1ED73B840;
  v6 = v3 >> 31;
  v242 = v5;
  v243 = v6;
  v244 = 1;
  v245 = 2;
  v246 = 0;

  sub_1AF70517C(1, v229);

  v239[0] = v229[0];
  v239[1] = v229[1];
  v240 = v230;
  sub_1AF6B06C0(a1, v239, 0x200000000, v268);
  v264 = *&v268[32];
  v265 = v269;
  v266 = v270;
  v267 = v271;
  v262 = *v268;
  v263 = *&v268[16];
  result = sub_1AFCBA0DC(v229, &qword_1EB643C68, &type metadata for SubEntity, &off_1F2562C50);
  v206 = *v268;
  if (!*v268)
  {
    return result;
  }

  v8 = *(&v269 + 1);
  v205 = *&v268[40];
  v9 = v270;
  v274 = *&v268[8];
  v275 = *&v268[24];
  v204 = v271;
  if (v271 <= 0 || !*(&v269 + 1))
  {
    v158 = MEMORY[0x1E69E6720];
    v159 = v268;
    return sub_1AFCB9F58(v159, &qword_1ED725EA0, &type metadata for QueryResult, v158, sub_1AFCBA88C);
  }

  v197 = v6;
  v198 = v5;
  v199 = v4;
  v10 = *(*(&v270 + 1) + 32);
  v11 = *(v270 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v224 = (a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v261[2] = v264;
  v261[3] = v265;
  v261[4] = v266;
  v261[5] = v267;
  v261[0] = v262;
  v261[1] = v263;
  sub_1AF5DD298(v261, v286);
  v12 = 0;
  v214 = 0;
  v13 = 0;
  v201 = v11;
  v212 = a1;
  v202 = v10;
  v203 = v8;
  while (2)
  {
    v209 = v12;
    v14 = (v205 + 48 * v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = v14[2];
    v18 = *(v14 + 2);
    v19 = *(v14 + 3);
    v20 = *(v14 + 5);
    v225 = *(v14 + 4);
    if (v11)
    {
      v21 = *(v20 + 376);

      os_unfair_lock_lock(v21);
      os_unfair_lock_lock(*(v20 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v10);
    v22 = *(*(&v9 + 1) + 64);
    v284[0] = *(*(&v9 + 1) + 48);
    v284[1] = v22;
    v285 = *(*(&v9 + 1) + 80);
    v23 = *(*(*(*(v20 + 40) + 16) + 32) + 16) + 1;
    *(*(&v9 + 1) + 48) = ecs_stack_allocator_allocate(*(*(&v9 + 1) + 32), 48 * v23, 8);
    *(*(&v9 + 1) + 56) = v23;
    *(*(&v9 + 1) + 72) = 0uLL;
    *(*(&v9 + 1) + 64) = 0;
    v272[0] = 1;
    v286[0] = v9;
    v286[1] = v20;
    v287 = *(&v9 + 1);
    v288 = v17;
    v289 = (v16 - v15 + v17);
    v290 = v204;
    v291 = v15;
    v292 = v16;
    v293 = 0;
    v294 = 0;
    v295 = 1;
    v296 = v18;
    v297 = v19;
    v298 = v225;
    v226 = sub_1AF7071AC(v20, v286);
    v221 = v296;
    if (v296)
    {
      v24 = v212;
      v25 = &unk_1ED72C000;
      v218 = v298;
      if (!v298)
      {
        v92 = v212;
        goto LABEL_169;
      }

      v207 = v13;
      v26 = 0;
      v27 = v287;
LABEL_20:
      v28 = *(v221 + 8 * v26);

      if (*(v20 + 184))
      {
        goto LABEL_235;
      }

      v30 = *(*(v20 + 168) + 4 * v28);
      v31 = &v226[8 * v26];
      v32 = *(*(v29 + v25[284]) + 12 * v30 + 8);

      v33 = *(v31 + 1);
      v34 = *v31;
      if (__PAIR64__(v33, v34) != 0xFFFFFFFF && (v34 & 0x80000000) == 0 && v224[1] > v34)
      {
        v56 = (*v224 + 12 * v34);
        if (v33 == -1 || v56[2] == v33)
        {
          v57 = *(v56 + 2);
          v58 = *(*(v24 + 144) + 8 * *v56 + 32);
          v59 = *(v58 + 48);
          v60 = (v59 + 32);
          v61 = *(v59 + 16) + 1;
          while (--v61)
          {
            v62 = v60 + 5;
            v63 = *v60;
            v60 += 5;
            if (v63 == &type metadata for EmitterDescription)
            {
              v64 = (&(*(v62 - 2))->Kind + 104 * v57 + *(v58 + 128));
              v66 = *v64;
              v65 = v64[1];
              v68 = v64[2];
              v67 = v64[3];
              v69 = (v66 + 36);
              v70 = *(v66 + 16) + 1;
              while (--v70)
              {
                v71 = v69;
                v69 += 2;
                if (*(v71 - 1) == v30 && *v71 == v32)
                {
                  goto LABEL_19;
                }
              }

              v83 = (v65 + 36);
              v84 = *(v65 + 16) + 1;
              while (--v84)
              {
                v85 = v83;
                v83 += 2;
                if (*(v85 - 1) == v30 && *v85 == v32)
                {
                  goto LABEL_19;
                }
              }

              v86 = (v68 + 36);
              v87 = *(v68 + 16) + 1;
              while (--v87)
              {
                v88 = v86;
                v86 += 2;
                if (*(v88 - 1) == v30 && *v88 == v32)
                {
                  goto LABEL_19;
                }
              }

              v89 = (v67 + 36);
              v90 = *(v67 + 16) + 1;
              while (--v90)
              {
                v91 = v89;
                v89 += 2;
                if (*(v91 - 1) == v30 && *v91 == v32)
                {
                  goto LABEL_19;
                }
              }

              sub_1AF6AFAFC(0);
              goto LABEL_18;
            }
          }

          goto LABEL_19;
        }
      }

      v35 = *(v20 + 232);
      if (v28 >= *(v20 + 256) && v28 < v35)
      {
        goto LABEL_18;
      }

      *&v251 = 0;
      v249 = 0u;
      v250 = 0u;
      BYTE8(v251) = 5;
      v36 = *(v27 + 104);
      v37 = *(v36 + 16);
      if (!v37)
      {

LABEL_67:
        v72 = *(v20 + 240) - v35;
        v73 = ecs_stack_allocator_allocate(*(v27 + 32), 8 * v72, 8);
        *v73 = v28;
        sub_1AF63515C(&v249, v272);
        *v273 = v73;
        *&v273[8] = v72;
        *&v273[16] = 1;
        v74 = *(v27 + 104);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v27 + 104) = v74;
        v25 = &unk_1ED72C000;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v74 = sub_1AF420EA0(0, v74[2] + 1, 1, v74);
          *(v27 + 104) = v74;
        }

        v77 = v74[2];
        v76 = v74[3];
        if (v77 >= v76 >> 1)
        {
          *(v27 + 104) = sub_1AF420EA0(v76 > 1, v77 + 1, 1, v74);
        }

        sub_1AF635250(&v249);
        v78 = *(v27 + 104);
        *(v78 + 16) = v77 + 1;
        v79 = v78 + 72 * v77;
        *(v79 + 32) = *v272;
        v80 = *v273;
        v81 = *&v272[32];
        v82 = *&v272[16];
        *(v79 + 96) = *&v273[16];
        *(v79 + 64) = v81;
        *(v79 + 80) = v80;
        *(v79 + 48) = v82;
        *(v27 + 104) = v78;
        goto LABEL_18;
      }

      v38 = v36 + 32;

      v39 = 0;
      while (1)
      {
        sub_1AF6350F8(v38, &v255);
        sub_1AF63515C(&v255, v272);
        sub_1AF63515C(&v249, v273);
        if (v272[40] <= 2u)
        {
          break;
        }

        if (v272[40] == 3)
        {
          sub_1AF63515C(v272, v247);
          if (v273[40] != 3)
          {
            goto LABEL_26;
          }

          sub_1AF616568(v247, &v278);
          sub_1AF616568(v273, v276);
          v44 = v282;
          v45 = v283;
          sub_1AF441150(&v278, v282);
          v46 = v44;
          v47 = v45;
LABEL_46:
          v50 = sub_1AF640C98(v276, v46, v47);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v276);
          sub_1AFCB9FB8(&v255, sub_1AF43A540);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v278);
          sub_1AF635250(v272);
          if (v50)
          {
            goto LABEL_51;
          }

          goto LABEL_28;
        }

        if (v272[40] != 4)
        {
          sub_1AFCB9FB8(&v255, sub_1AF43A540);
          if (v273[40] == 5)
          {
            v51 = vorrq_s8(*&v273[8], *&v273[24]);
            if (!(*&vorr_s8(*v51.i8, *&vextq_s8(v51, v51, 8uLL)) | *v273))
            {
              sub_1AF635250(v272);
LABEL_51:
              v53 = sub_1AFBFCA08(v272);
              v54 = *(v52 + 48);
              if (v54)
              {
                v55 = *(v52 + 64);
                *(v54 + 8 * v55) = v28;
                *(v52 + 64) = v55 + 1;
              }

              (v53)(v272, 0);

              sub_1AF635250(&v249);
              v24 = v212;
              v25 = &unk_1ED72C000;
LABEL_18:
              v214 = 1;
LABEL_19:
              if (++v26 == v218)
              {
                v13 = v207;
                v92 = v24;
                goto LABEL_169;
              }

              goto LABEL_20;
            }
          }

          goto LABEL_27;
        }

        sub_1AFCB9FB8(&v255, sub_1AF43A540);
        sub_1AF63515C(v272, v247);
        if (v273[40] != 4)
        {
          goto LABEL_27;
        }

        v40 = LOBYTE(v247[0]);
        v41 = v273[0];
        sub_1AF635250(v272);
        if (v40 == v41)
        {
          goto LABEL_51;
        }

LABEL_28:
        ++v39;
        v38 += 72;
        if (v37 == v39)
        {
          v35 = *(v20 + 232);
          v24 = v212;
          goto LABEL_67;
        }
      }

      if (!v272[40])
      {
        sub_1AFCB9FB8(&v255, sub_1AF43A540);
        sub_1AF63515C(v272, v247);
        if (v273[40])
        {
          goto LABEL_27;
        }

        goto LABEL_40;
      }

      if (v272[40] == 1)
      {
        sub_1AFCB9FB8(&v255, sub_1AF43A540);
        sub_1AF63515C(v272, v247);
        if (v273[40] != 1)
        {
          goto LABEL_27;
        }

LABEL_40:
        v42 = *&v247[0];
        v43 = *v273;
        sub_1AF635250(v272);
        if (v42 == v43)
        {
          goto LABEL_51;
        }

        goto LABEL_28;
      }

      sub_1AF63515C(v272, v247);
      if (v273[40] != 2)
      {
LABEL_26:
        sub_1AFCB9FB8(&v255, sub_1AF43A540);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v247);
LABEL_27:
        sub_1AFCB9F58(v272, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
        goto LABEL_28;
      }

      sub_1AF616568(v247, &v278);
      sub_1AF616568(v273, v276);
      v48 = v282;
      v49 = v283;
      sub_1AF441150(&v278, v282);
      v46 = v48;
      v47 = v49;
      goto LABEL_46;
    }

    v208 = v13;
    v93 = v291;
    v94 = v292;
    v95 = v224;
    v92 = v212;
    v96 = v200;
    if (v291 == v292)
    {
      goto LABEL_168;
    }

    v219 = v286[0];
    v222 = v287;
    do
    {
      while (1)
      {
        v97 = v93;

        if (*(v20 + 184))
        {
LABEL_235:
          result = sub_1AFDFE518();
          __break(1u);
          return result;
        }

        ++v93;
        v99 = *(*(v20 + 168) + 4 * v97);
        v100 = &v226[8 * v97];
        v101 = *(*(v98 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v99 + 8);

        v102 = *(v100 + 1);
        v103 = *v100;
        v104 = v103 == -1 && v102 == 0;
        if (v104 || (v103 & 0x80000000) != 0 || v95[1] <= v103 || (v105 = (*v95 + 12 * v103), v102 != -1) && v105[2] != v102)
        {
          v127 = *(v20 + 232);
          if (v97 >= *(v20 + 256) && v97 < v127)
          {
            goto LABEL_163;
          }

          v128 = v92;
          *&v251 = 0;
          v249 = 0u;
          v250 = 0u;
          BYTE8(v251) = 5;
          v129 = *(v222 + 104);
          v130 = *(v129 + 16);
          if (!v130)
          {

            v92 = v128;
            goto LABEL_158;
          }

          v131 = v129 + 32;

          v132 = 0;
          while (1)
          {
            sub_1AF6350F8(v131, &v255);
            sub_1AF63515C(&v255, v272);
            sub_1AF63515C(&v249, v273);
            if (v272[40] <= 2u)
            {
              break;
            }

            if (v272[40] == 3)
            {
              sub_1AF63515C(v272, v247);
              if (v273[40] == 3)
              {
                goto LABEL_142;
              }

LABEL_123:
              sub_1AFCB9FB8(&v255, sub_1AF43A540);
              _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v247);
              goto LABEL_124;
            }

            if (v272[40] == 4)
            {
              sub_1AFCB9FB8(&v255, sub_1AF43A540);
              sub_1AF63515C(v272, v247);
              if (v273[40] == 4)
              {
                v133 = LOBYTE(v247[0]);
                v134 = v273[0];
                sub_1AF635250(v272);
                if (v133 == v134)
                {
                  goto LABEL_147;
                }

                goto LABEL_125;
              }
            }

            else
            {
              sub_1AFCB9FB8(&v255, sub_1AF43A540);
              if (v273[40] == 5)
              {
                v139 = vorrq_s8(*&v273[8], *&v273[24]);
                if (!(*&vorr_s8(*v139.i8, *&vextq_s8(v139, v139, 8uLL)) | *v273))
                {
                  sub_1AF635250(v272);
LABEL_147:
                  v141 = sub_1AFBFCA08(v272);
                  v142 = *(v140 + 48);
                  if (v142)
                  {
                    v143 = *(v140 + 64);
                    *(v142 + 8 * v143) = v97;
                    *(v140 + 64) = v143 + 1;
                  }

                  (v141)(v272, 0);

                  sub_1AF635250(&v249);
                  v95 = v224;
                  v92 = v212;
LABEL_163:
                  v96 = v219;
                  goto LABEL_164;
                }
              }
            }

LABEL_124:
            sub_1AFCB9F58(v272, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
LABEL_125:
            ++v132;
            v131 += 72;
            if (v130 == v132)
            {
              v127 = *(v20 + 232);
              v92 = v212;
LABEL_158:
              v147 = *(v20 + 240) - v127;
              v148 = ecs_stack_allocator_allocate(*(v222 + 32), 8 * v147, 8);
              *v148 = v97;
              sub_1AF63515C(&v249, v272);
              *v273 = v148;
              *&v273[8] = v147;
              *&v273[16] = 1;
              v149 = *(v222 + 104);
              v150 = swift_isUniquelyReferenced_nonNull_native();
              *(v222 + 104) = v149;
              v95 = v224;
              if ((v150 & 1) == 0)
              {
                v149 = sub_1AF420EA0(0, v149[2] + 1, 1, v149);
                *(v222 + 104) = v149;
              }

              v152 = v149[2];
              v151 = v149[3];
              if (v152 >= v151 >> 1)
              {
                *(v222 + 104) = sub_1AF420EA0(v151 > 1, v152 + 1, 1, v149);
              }

              sub_1AF635250(&v249);
              v153 = *(v222 + 104);
              *(v153 + 16) = v152 + 1;
              v154 = v153 + 72 * v152;
              *(v154 + 32) = *v272;
              v155 = *v273;
              v156 = *&v272[32];
              v157 = *&v272[16];
              *(v154 + 96) = *&v273[16];
              *(v154 + 64) = v156;
              *(v154 + 80) = v155;
              *(v154 + 48) = v157;
              *(v222 + 104) = v153;
              goto LABEL_163;
            }
          }

          if (!v272[40])
          {
            sub_1AFCB9FB8(&v255, sub_1AF43A540);
            sub_1AF63515C(v272, v247);
            if (!v273[40])
            {
LABEL_137:
              v135 = *&v247[0];
              v136 = *v273;
              sub_1AF635250(v272);
              if (v135 == v136)
              {
                goto LABEL_147;
              }

              goto LABEL_125;
            }

            goto LABEL_124;
          }

          if (v272[40] == 1)
          {
            sub_1AFCB9FB8(&v255, sub_1AF43A540);
            sub_1AF63515C(v272, v247);
            if (v273[40] == 1)
            {
              goto LABEL_137;
            }

            goto LABEL_124;
          }

          sub_1AF63515C(v272, v247);
          if (v273[40] == 2)
          {
LABEL_142:
            sub_1AF616568(v247, &v278);
            sub_1AF616568(v273, v276);
            v137 = v282;
            v138 = v283;
            sub_1AF441150(&v278, v282);
            LOBYTE(v137) = sub_1AF640C98(v276, v137, v138);
            _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v276);
            sub_1AFCB9FB8(&v255, sub_1AF43A540);
            _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v278);
            sub_1AF635250(v272);
            if (v137)
            {
              goto LABEL_147;
            }

            goto LABEL_125;
          }

          goto LABEL_123;
        }

        v106 = *(v105 + 2);
        v107 = *(*(v92 + 144) + 8 * *v105 + 32);
        v108 = *(v107 + 48);
        v109 = (v108 + 32);
        v110 = *(v108 + 16) + 1;
LABEL_102:
        if (--v110)
        {
          break;
        }

LABEL_91:
        if (v93 == v94)
        {
          v96 = v219;
          goto LABEL_168;
        }
      }

      v111 = v109 + 5;
      v112 = *v109;
      v109 += 5;
      if (v112 != &type metadata for EmitterDescription)
      {
        goto LABEL_102;
      }

      v113 = (&(*(v111 - 2))->Kind + 104 * v106 + *(v107 + 128));
      v115 = *v113;
      v114 = v113[1];
      v117 = v113[2];
      v116 = v113[3];
      v118 = (v115 + 36);
      v119 = *(v115 + 16) + 1;
      while (--v119)
      {
        v120 = v118;
        v118 += 2;
        if (*(v120 - 1) == v99 && *v120 == v101)
        {
          goto LABEL_91;
        }
      }

      v121 = (v114 + 36);
      v122 = *(v114 + 16) + 1;
      while (--v122)
      {
        v123 = v121;
        v121 += 2;
        if (*(v123 - 1) == v99 && *v123 == v101)
        {
          goto LABEL_91;
        }
      }

      v124 = (v117 + 36);
      v125 = *(v117 + 16) + 1;
      while (--v125)
      {
        v126 = v124;
        v124 += 2;
        if (*(v126 - 1) == v99 && *v126 == v101)
        {
          goto LABEL_91;
        }
      }

      v144 = (v116 + 36);
      v145 = *(v116 + 16) + 1;
      while (--v145)
      {
        v146 = v144;
        v144 += 2;
        if (*(v146 - 1) == v99 && *v146 == v101)
        {
          goto LABEL_91;
        }
      }

      sub_1AF6AFAFC(0);
      v96 = v219;
LABEL_164:
      v214 = 1;
    }

    while (v93 != v94);
LABEL_168:
    v200 = v96;
    v13 = v208;
LABEL_169:
    v233 = v206;
    v234 = v274;
    v235 = v275;
    sub_1AF630994(*(&v9 + 1), &v233, v284);
    sub_1AF62D29C(v20);
    v10 = v202;
    ecs_stack_allocator_pop_snapshot(v202);
    v11 = v201;
    if (v201)
    {
      os_unfair_lock_unlock(*(v20 + 344));
      os_unfair_lock_unlock(*(v20 + 376));
    }

    v12 = v209 + 1;
    if (v209 + 1 != v203)
    {
      continue;
    }

    break;
  }

  v160 = MEMORY[0x1E69E6720];
  sub_1AFCB9F58(v268, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
  result = sub_1AFCB9F58(v268, &qword_1ED725EA0, &type metadata for QueryResult, v160, sub_1AFCBA88C);
  if (v214)
  {
    v278 = v199;
    v279 = v198;
    v280 = v197;
    v281 = 1;
    LOBYTE(v282) = 2;
    v283 = 0;

    sub_1AF8291CC(v231);

    v276[0] = v231[0];
    v276[1] = v231[1];
    v277 = v232;
    sub_1AF6B06C0(v92, v276, 0x200000000, v272);
    v257 = *&v272[32];
    v258 = *v273;
    v259 = *&v273[16];
    v260 = *&v273[32];
    v255 = *v272;
    v256 = *&v272[16];
    result = sub_1AFCBA0DC(v231, &qword_1EB643C70, &type metadata for Children, &off_1F252A4A0);
    if (*v272)
    {
      if (*&v273[32] > 0 && (v213 = *&v273[8]) != 0)
      {
        v211 = *&v272[40];
        v161 = *&v273[24];
        v220 = *(*&v273[16] + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v217 = *(*&v273[24] + 32);
        v236 = *v272;
        v237 = *&v272[8];
        v238 = *&v272[24];
        v251 = v257;
        v252 = v258;
        v253 = v259;
        v254 = v260;
        v249 = v255;
        v250 = v256;
        sub_1AF5DD298(&v249, v247);
        v162 = 0;
        v163 = v224;
        v210 = v161;
        do
        {
          v223 = v13;
          v216 = v162;
          v164 = (v211 + 48 * v162);
          v165 = *v164;
          v166 = v164[1];
          v168 = *(v164 + 2);
          v167 = *(v164 + 3);
          v169 = *(v164 + 4);
          v170 = *(v164 + 5);
          if (v220)
          {
            v171 = *(v170 + 376);

            v172 = v171;
            v163 = v224;
            os_unfair_lock_lock(v172);
            os_unfair_lock_lock(*(v170 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v217);
          v173 = *(v161 + 4);
          v247[0] = *(v161 + 3);
          v247[1] = v173;
          v248 = v161[10];
          v174 = *(*(*(*(v170 + 40) + 16) + 32) + 16) + 1;
          v161[6] = ecs_stack_allocator_allocate(v161[4], 48 * v174, 8);
          v161[7] = v174;
          v161[9] = 0;
          v161[10] = 0;
          v161[8] = 0;
          v215 = v170;
          v175 = sub_1AF64B110(&type metadata for Children, &off_1F252A4A0, v168, v167, v169, v161);
          if (v168)
          {
            if (v169)
            {
              for (i = 0; i != v169; ++i)
              {
                v177 = *&v175[8 * i];
                v178 = *(v177 + 16);
                if (v178)
                {

                  v180 = 32;
                  v181 = MEMORY[0x1E69E7CC0];
                  do
                  {
                    *&v179 = *(v177 + v180);
                    v184 = v179 == -1 && DWORD1(v179) == 0;
                    if (!v184 && (v179 & 0x80000000) == 0 && v163[1] > v179 && (DWORD1(v179) == -1 || *(*v163 + 12 * v179 + 8) == DWORD1(v179)))
                    {
                      v227 = v179;
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        sub_1AFC07194(0, *(v181 + 16) + 1, 1);
                      }

                      v179 = v227;
                      v183 = *(v181 + 16);
                      v182 = *(v181 + 24);
                      if (v183 >= v182 >> 1)
                      {
                        sub_1AFC07194(v182 > 1, v183 + 1, 1);
                        v179 = v227;
                      }

                      *(v181 + 16) = v183 + 1;
                      *(v181 + 8 * v183 + 32) = v179;
                      v163 = v224;
                    }

                    v180 += 8;
                    --v178;
                  }

                  while (v178);
                }

                else
                {
                  v181 = MEMORY[0x1E69E7CC0];
                }

                *&v175[8 * i] = v181;
              }
            }
          }

          else if (v165 != v166)
          {
            do
            {
              v186 = *&v175[8 * v165];
              v187 = *(v186 + 16);
              if (v187)
              {

                v189 = 32;
                v190 = MEMORY[0x1E69E7CC0];
                do
                {
                  *&v188 = *(v186 + v189);
                  v193 = v188 == -1 && DWORD1(v188) == 0;
                  if (!v193 && (v188 & 0x80000000) == 0 && v163[1] > v188 && (DWORD1(v188) == -1 || *(*v163 + 12 * v188 + 8) == DWORD1(v188)))
                  {
                    v228 = v188;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      sub_1AFC07194(0, *(v190 + 16) + 1, 1);
                    }

                    v188 = v228;
                    v192 = *(v190 + 16);
                    v191 = *(v190 + 24);
                    if (v192 >= v191 >> 1)
                    {
                      sub_1AFC07194(v191 > 1, v192 + 1, 1);
                      v188 = v228;
                    }

                    *(v190 + 16) = v192 + 1;
                    *(v190 + 8 * v192 + 32) = v188;
                    v163 = v224;
                  }

                  v189 += 8;
                  --v187;
                }

                while (v187);
              }

              else
              {
                v190 = MEMORY[0x1E69E7CC0];
              }

              *&v175[8 * v165] = v190;

              ++v165;
            }

            while (v165 != v166);
          }

          v161 = v210;
          v13 = v223;
          sub_1AF630994(v210, &v236, v247);
          sub_1AF62D29C(v215);
          ecs_stack_allocator_pop_snapshot(v217);
          if (v220)
          {
            os_unfair_lock_unlock(*(v215 + 344));
            os_unfair_lock_unlock(*(v215 + 376));
          }

          v162 = v216 + 1;
        }

        while (v216 + 1 != v213);
        v195 = MEMORY[0x1E69E6720];
        sub_1AFCB9F58(v272, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
        v159 = v272;
        v158 = v195;
      }

      else
      {
        v158 = MEMORY[0x1E69E6720];
        v159 = v272;
      }

      return sub_1AFCB9F58(v159, &qword_1ED725EA0, &type metadata for QueryResult, v158, sub_1AFCBA88C);
    }
  }

  return result;
}

uint64_t sub_1AFCAC198(uint64_t a1, uint64_t a2)
{
  v186 = *MEMORY[0x1E69E9840];
  v3 = a2 & 0x100000000;
  if (qword_1ED72D720 != -1)
  {
    v133 = a2;
    swift_once();
    LODWORD(a2) = v133;
  }

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  v156 = qword_1ED73B840;
  v157 = v4;
  v158 = v3 >> 31;
  v159 = 1;
  v160 = 2;
  v161 = 0;

  sub_1AF8291E0(v149);

  v154[0] = v149[0];
  v154[1] = v149[1];
  v155 = v150;
  sub_1AF6B06C0(a1, v154, 0x200000000, v178);
  v138 = *v178;
  if (!*v178)
  {
    return sub_1AFCBA0DC(v149, &qword_1EB643C68, &type metadata for SubEntity, &off_1F2562C50);
  }

  v137 = *&v178[40];
  v5 = *(&v179 + 1);
  v141 = *(&v180 + 1);
  v6 = v180;
  v182 = *&v178[8];
  v183 = *&v178[24];
  if (v181 <= 0 || !*(&v179 + 1))
  {
    sub_1AFCBA0DC(v149, &qword_1EB643C68, &type metadata for SubEntity, &off_1F2562C50);
    v130 = MEMORY[0x1E69E6720];
    return sub_1AFCB9F58(v178, &qword_1ED725EA0, &type metadata for QueryResult, v130, sub_1AFCBA88C);
  }

  v7 = *(*(&v180 + 1) + 32);
  v8 = *(v180 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v177[2] = *&v178[32];
  v177[3] = v179;
  v177[4] = v180;
  v177[5] = v181;
  v177[0] = *v178;
  v177[1] = *&v178[16];
  sub_1AF5DD298(v177, &v171);
  v9 = 0;
  v10 = 0;
  v147 = v6;
  v135 = v7;
  v136 = v5;
  v134 = v8;
  while (1)
  {
    v139 = v10;
    v11 = (v137 + 48 * v9);
    v12 = *v11;
    v13 = *(v11 + 3);
    v144 = v11[1];
    v146 = *(v11 + 2);
    v14 = *(v11 + 5);
    v142 = *(v11 + 4);
    if (v8)
    {
      v15 = *(v14 + 376);

      os_unfair_lock_lock(v15);
      os_unfair_lock_lock(*(v14 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v7);
    v16 = *(v141 + 64);
    v184[0] = *(v141 + 48);
    v184[1] = v16;
    v185 = *(v141 + 80);
    v17 = *(*(*(*(v14 + 40) + 16) + 32) + 16) + 1;
    *(v141 + 48) = ecs_stack_allocator_allocate(*(v141 + 32), 48 * v17, 8);
    *(v141 + 56) = v17;
    *(v141 + 72) = 0;
    *(v141 + 80) = 0;
    *(v141 + 64) = 0;
    v148 = sub_1AF64B110(&type metadata for SubEntity, &off_1F2562C50, v146, v13, v142, v141);
    v143 = v14;
    v140 = v9;
    if (v146)
    {
      if (v142)
      {
        v18 = v142;
        v19 = 0;
        while (1)
        {
          v20 = v146[v19];
          v21 = *&v148[8 * v19];
          v22 = *(v14 + 16);

          if (*(v14 + 184))
          {
            goto LABEL_138;
          }

          v23 = *(*(v14 + 168) + 4 * v20);
          v24 = *(*(v22 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v23 + 8);

          if (v23 == -1 && v24 == 0)
          {
          }

          else
          {
            v145 = v20;
            v26 = swift_allocObject();
            *(v26 + 16) = &type metadata for IsSubEntityOf;
            *(v26 + 24) = &off_1F2564150;
            v27 = swift_allocObject();
            *(v27 + 16) = sub_1AFCBAB34;
            *(v27 + 24) = v26;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v171 = *(v6 + 216);
            v29 = v171;
            *(v6 + 216) = 0x8000000000000000;
            v30 = sub_1AF449CB8(&type metadata for IsSubEntityOf);
            v32 = v31;
            v33 = *(v29 + 16) + ((v31 & 1) == 0);
            if (*(v29 + 24) >= v33)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1AF848B00();
                v29 = v171;
              }
            }

            else
            {
              sub_1AF834194(v33, isUniquelyReferenced_nonNull_native);
              v29 = v171;
              v34 = sub_1AF449CB8(&type metadata for IsSubEntityOf);
              if ((v32 & 1) != (v35 & 1))
              {
                goto LABEL_139;
              }

              v30 = v34;
            }

            v14 = v143;
            *(v147 + 216) = v29;

            v36 = *(v147 + 216);
            if ((v32 & 1) == 0)
            {
              sub_1AF6338E8(*(v27 + 16), &v171);
              v37 = v172;
              v36[(v30 >> 6) + 8] |= 1 << v30;
              *(v36[6] + 8 * v30) = &type metadata for IsSubEntityOf;
              v38 = v36[7] + 24 * v30;
              *v38 = v171;
              *(v38 + 16) = v37;
              ++v36[2];
            }

            v39 = (v36[7] + 24 * v30);
            v40 = *v39;
            v41 = swift_isUniquelyReferenced_nonNull_native();
            *v39 = v40;
            if ((v41 & 1) == 0)
            {
              v40 = sub_1AF4230FC(0, *(v40 + 2) + 1, 1, v40);
              *v39 = v40;
            }

            v43 = *(v40 + 2);
            v42 = *(v40 + 3);
            if (v43 >= v42 >> 1)
            {
              v40 = sub_1AF4230FC(v42 > 1, v43 + 1, 1, v40);
              *v39 = v40;
            }

            *(v40 + 2) = v43 + 1;
            v44 = &v40[16 * v43];
            *(v44 + 8) = v23;
            *(v44 + 9) = v24;
            *(v44 + 5) = v21;
            v6 = v147;

            v18 = v142;
            v20 = v145;
          }

          v45 = *(*(v14 + 40) + 16);
          v46 = *(v45 + 128);
          if (!*(v46 + 16))
          {
            goto LABEL_17;
          }

          v47 = sub_1AF449CB8(&type metadata for SubEntity);
          if ((v48 & 1) == 0 || *(*(v45 + 24) + 16 * *(*(v46 + 56) + 8 * v47) + 32) != &type metadata for SubEntity)
          {
            goto LABEL_17;
          }

          v49 = v20;
          v168 = &type metadata for SubEntity;
          v169 = &off_1F2562C50;
          v170 = 1;
          v50 = *(v141 + 104);
          v51 = *(v50 + 16);
          if (!v51)
          {

LABEL_69:
            v65 = *(v14 + 240) - *(v14 + 232);
            v66 = ecs_stack_allocator_allocate(*(v141 + 32), 8 * v65, 8);
            *v66 = v49;
            sub_1AF63515C(&v168, &v171);
            *v174 = v66;
            *&v174[8] = v65;
            *&v174[16] = 1;
            v67 = *(v141 + 104);
            v68 = swift_isUniquelyReferenced_nonNull_native();
            *(v141 + 104) = v67;
            if ((v68 & 1) == 0)
            {
              v67 = sub_1AF420EA0(0, v67[2] + 1, 1, v67);
              *(v141 + 104) = v67;
            }

            v18 = v142;
            v70 = v67[2];
            v69 = v67[3];
            if (v70 >= v69 >> 1)
            {
              *(v141 + 104) = sub_1AF420EA0(v69 > 1, v70 + 1, 1, v67);
            }

            sub_1AF635250(&v168);
            v71 = *(v141 + 104);
            *(v71 + 16) = v70 + 1;
            v72 = v71 + 72 * v70;
            *(v72 + 32) = v171;
            v74 = v173;
            v73 = *v174;
            v75 = v172;
            *(v72 + 96) = *&v174[16];
            *(v72 + 64) = v74;
            *(v72 + 80) = v73;
            *(v72 + 48) = v75;
            *(v141 + 104) = v71;
            goto LABEL_17;
          }

          v52 = v50 + 32;

          v53 = 0;
          while (1)
          {
            sub_1AF6350F8(v52, v167);
            sub_1AF63515C(v167, &v171);
            sub_1AF63515C(&v168, v174);
            if (BYTE8(v173) <= 2u)
            {
              if (!BYTE8(v173))
              {
                sub_1AFCB9FB8(v167, sub_1AF43A540);
                sub_1AF63515C(&v171, v166);
                if (v176)
                {
                  goto LABEL_42;
                }

                goto LABEL_55;
              }

              if (BYTE8(v173) == 1)
              {
                sub_1AFCB9FB8(v167, sub_1AF43A540);
                sub_1AF63515C(&v171, v166);
                if (v176 != 1)
                {
                  goto LABEL_42;
                }

LABEL_55:
                v56 = *&v166[0];
                v57 = *v174;
                sub_1AF635250(&v171);
                if (v56 == v57)
                {
                  goto LABEL_65;
                }

                goto LABEL_43;
              }

              sub_1AF63515C(&v171, v166);
              if (v176 != 2)
              {
LABEL_41:
                sub_1AFCB9FB8(v167, sub_1AF43A540);
                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v166);
LABEL_42:
                sub_1AFCB9F58(&v171, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
                goto LABEL_43;
              }

              goto LABEL_60;
            }

            if (BYTE8(v173) == 3)
            {
              sub_1AF63515C(&v171, v166);
              if (v176 != 3)
              {
                goto LABEL_41;
              }

LABEL_60:
              sub_1AF616568(v166, v163);
              sub_1AF616568(v174, v162);
              v58 = v164;
              v59 = v165;
              sub_1AF441150(v163, v164);
              LOBYTE(v58) = sub_1AF640C98(v162, v58, v59);
              _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v162);
              sub_1AFCB9FB8(v167, sub_1AF43A540);
              _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v163);
              sub_1AF635250(&v171);
              if (v58)
              {
                goto LABEL_65;
              }

              goto LABEL_43;
            }

            if (BYTE8(v173) != 4)
            {
              break;
            }

            sub_1AFCB9FB8(v167, sub_1AF43A540);
            sub_1AF63515C(&v171, v166);
            if (v176 != 4)
            {
              goto LABEL_42;
            }

            v54 = LOBYTE(v166[0]);
            v55 = v174[0];
            sub_1AF635250(&v171);
            if (v54 == v55)
            {
              goto LABEL_65;
            }

LABEL_43:
            ++v53;
            v52 += 72;
            if (v51 == v53)
            {
              goto LABEL_69;
            }
          }

          sub_1AFCB9FB8(v167, sub_1AF43A540);
          if (v176 != 5)
          {
            goto LABEL_42;
          }

          v60 = vorrq_s8(*&v174[8], v175);
          if (*&vorr_s8(*v60.i8, *&vextq_s8(v60, v60, 8uLL)) | *v174)
          {
            goto LABEL_42;
          }

          sub_1AF635250(&v171);
LABEL_65:
          v62 = sub_1AFBFCA08(&v171);
          v63 = *(v61 + 48);
          if (v63)
          {
            v64 = *(v61 + 64);
            *(v63 + 8 * v64) = v49;
            *(v61 + 64) = v64 + 1;
          }

          (v62)(&v171, 0);

          sub_1AF635250(&v168);
          v18 = v142;
LABEL_17:
          if (++v19 == v18)
          {
            goto LABEL_75;
          }
        }
      }

      goto LABEL_75;
    }

    if (v12 != v144)
    {
      break;
    }

LABEL_75:
    v10 = v139;
    v151 = v138;
    v152 = v182;
    v153 = v183;
    sub_1AF630994(v141, &v151, v184);
    sub_1AF62D29C(v14);
    v7 = v135;
    ecs_stack_allocator_pop_snapshot(v135);
    v8 = v134;
    if (v134)
    {
      os_unfair_lock_unlock(*(v14 + 344));
      os_unfair_lock_unlock(*(v14 + 376));
    }

    v9 = v140 + 1;
    if (v140 + 1 == v136)
    {
      sub_1AFCBA0DC(v149, &qword_1EB643C68, &type metadata for SubEntity, &off_1F2562C50);
      v132 = MEMORY[0x1E69E6720];
      sub_1AFCB9F58(v178, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
      v130 = v132;
      return sub_1AFCB9F58(v178, &qword_1ED725EA0, &type metadata for QueryResult, v130, sub_1AFCBA88C);
    }
  }

LABEL_79:
  v76 = *&v148[8 * v12];
  v77 = *(v14 + 16);

  if ((*(v14 + 184) & 1) == 0)
  {
    v78 = *(*(v14 + 168) + 4 * v12);
    v79 = *(*(v77 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v78 + 8);

    if (v78 == -1 && v79 == 0)
    {
    }

    else
    {
      v81 = swift_allocObject();
      *(v81 + 16) = &type metadata for IsSubEntityOf;
      *(v81 + 24) = &off_1F2564150;
      v82 = swift_allocObject();
      *(v82 + 16) = sub_1AF63534C;
      *(v82 + 24) = v81;
      v83 = swift_isUniquelyReferenced_nonNull_native();
      *&v171 = *(v6 + 216);
      v84 = v171;
      *(v6 + 216) = 0x8000000000000000;
      v85 = sub_1AF449CB8(&type metadata for IsSubEntityOf);
      v87 = v86;
      v88 = *(v84 + 16) + ((v86 & 1) == 0);
      if (*(v84 + 24) >= v88)
      {
        if ((v83 & 1) == 0)
        {
          sub_1AF848B00();
          v84 = v171;
        }
      }

      else
      {
        sub_1AF834194(v88, v83);
        v84 = v171;
        v89 = sub_1AF449CB8(&type metadata for IsSubEntityOf);
        if ((v87 & 1) != (v90 & 1))
        {
          goto LABEL_139;
        }

        v85 = v89;
      }

      *(v147 + 216) = v84;

      v91 = *(v147 + 216);
      if ((v87 & 1) == 0)
      {
        sub_1AF6338E8(*(v82 + 16), &v171);
        v92 = v172;
        v91[(v85 >> 6) + 8] |= 1 << v85;
        *(v91[6] + 8 * v85) = &type metadata for IsSubEntityOf;
        v93 = v91[7] + 24 * v85;
        *v93 = v171;
        *(v93 + 16) = v92;
        ++v91[2];
      }

      v94 = (v91[7] + 24 * v85);
      v95 = *v94;
      v96 = swift_isUniquelyReferenced_nonNull_native();
      *v94 = v95;
      if ((v96 & 1) == 0)
      {
        v95 = sub_1AF4230FC(0, *(v95 + 2) + 1, 1, v95);
        *v94 = v95;
      }

      v98 = *(v95 + 2);
      v97 = *(v95 + 3);
      if (v98 >= v97 >> 1)
      {
        v95 = sub_1AF4230FC(v97 > 1, v98 + 1, 1, v95);
        *v94 = v95;
      }

      *(v95 + 2) = v98 + 1;
      v99 = &v95[16 * v98];
      *(v99 + 8) = v78;
      *(v99 + 9) = v79;
      *(v99 + 5) = v76;
      v6 = v147;

      v14 = v143;
    }

    v100 = *(*(v14 + 40) + 16);
    v101 = *(v100 + 128);
    if (!*(v101 + 16))
    {
      goto LABEL_78;
    }

    v102 = sub_1AF449CB8(&type metadata for SubEntity);
    if ((v103 & 1) == 0 || *(*(v100 + 24) + 16 * *(*(v101 + 56) + 8 * v102) + 32) != &type metadata for SubEntity)
    {
      goto LABEL_78;
    }

    v168 = &type metadata for SubEntity;
    v169 = &off_1F2562C50;
    v170 = 1;
    v104 = *(v141 + 104);
    v105 = *(v104 + 16);
    if (!v105)
    {

LABEL_129:
      v14 = v143;
      v119 = *(v143 + 240) - *(v143 + 232);
      v120 = ecs_stack_allocator_allocate(*(v141 + 32), 8 * v119, 8);
      *v120 = v12;
      sub_1AF63515C(&v168, &v171);
      *v174 = v120;
      *&v174[8] = v119;
      *&v174[16] = 1;
      v121 = *(v141 + 104);
      v122 = swift_isUniquelyReferenced_nonNull_native();
      *(v141 + 104) = v121;
      if ((v122 & 1) == 0)
      {
        v121 = sub_1AF420EA0(0, v121[2] + 1, 1, v121);
        *(v141 + 104) = v121;
      }

      v124 = v121[2];
      v123 = v121[3];
      if (v124 >= v123 >> 1)
      {
        *(v141 + 104) = sub_1AF420EA0(v123 > 1, v124 + 1, 1, v121);
      }

      sub_1AF635250(&v168);
      v125 = *(v141 + 104);
      *(v125 + 16) = v124 + 1;
      v126 = v125 + 72 * v124;
      *(v126 + 32) = v171;
      v128 = v173;
      v127 = *v174;
      v129 = v172;
      *(v126 + 96) = *&v174[16];
      *(v126 + 64) = v128;
      *(v126 + 80) = v127;
      *(v126 + 48) = v129;
      *(v141 + 104) = v125;
      goto LABEL_78;
    }

    v106 = v104 + 32;

    v107 = 0;
    while (1)
    {
      sub_1AF6350F8(v106, v167);
      sub_1AF63515C(v167, &v171);
      sub_1AF63515C(&v168, v174);
      if (BYTE8(v173) <= 2u)
      {
        break;
      }

      if (BYTE8(v173) == 3)
      {
        sub_1AF63515C(&v171, v166);
        if (v176 != 3)
        {
          goto LABEL_102;
        }

LABEL_121:
        sub_1AF616568(v166, v163);
        sub_1AF616568(v174, v162);
        v112 = v164;
        v113 = v165;
        sub_1AF441150(v163, v164);
        LOBYTE(v112) = sub_1AF640C98(v162, v112, v113);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v162);
        sub_1AFCB9FB8(v167, sub_1AF43A540);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v163);
        sub_1AF635250(&v171);
        if (v112)
        {
          goto LABEL_126;
        }

        goto LABEL_104;
      }

      if (BYTE8(v173) != 4)
      {
        sub_1AFCB9FB8(v167, sub_1AF43A540);
        if (v176 == 5)
        {
          v114 = vorrq_s8(*&v174[8], v175);
          if (!(*&vorr_s8(*v114.i8, *&vextq_s8(v114, v114, 8uLL)) | *v174))
          {
            sub_1AF635250(&v171);
LABEL_126:
            v116 = sub_1AFBFCA08(&v171);
            v117 = *(v115 + 48);
            if (v117)
            {
              v118 = *(v115 + 64);
              *(v117 + 8 * v118) = v12;
              *(v115 + 64) = v118 + 1;
            }

            (v116)(&v171, 0);
            v14 = v143;

            sub_1AF635250(&v168);
LABEL_78:
            if (++v12 == v144)
            {
              goto LABEL_75;
            }

            goto LABEL_79;
          }
        }

        goto LABEL_103;
      }

      sub_1AFCB9FB8(v167, sub_1AF43A540);
      sub_1AF63515C(&v171, v166);
      if (v176 != 4)
      {
        goto LABEL_103;
      }

      v108 = LOBYTE(v166[0]);
      v109 = v174[0];
      sub_1AF635250(&v171);
      if (v108 == v109)
      {
        goto LABEL_126;
      }

LABEL_104:
      ++v107;
      v106 += 72;
      if (v105 == v107)
      {
        goto LABEL_129;
      }
    }

    if (!BYTE8(v173))
    {
      sub_1AFCB9FB8(v167, sub_1AF43A540);
      sub_1AF63515C(&v171, v166);
      if (v176)
      {
        goto LABEL_103;
      }

      goto LABEL_116;
    }

    if (BYTE8(v173) == 1)
    {
      sub_1AFCB9FB8(v167, sub_1AF43A540);
      sub_1AF63515C(&v171, v166);
      if (v176 != 1)
      {
        goto LABEL_103;
      }

LABEL_116:
      v110 = *&v166[0];
      v111 = *v174;
      sub_1AF635250(&v171);
      if (v110 == v111)
      {
        goto LABEL_126;
      }

      goto LABEL_104;
    }

    sub_1AF63515C(&v171, v166);
    if (v176 != 2)
    {
LABEL_102:
      sub_1AFCB9FB8(v167, sub_1AF43A540);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v166);
LABEL_103:
      sub_1AFCB9F58(&v171, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
      goto LABEL_104;
    }

    goto LABEL_121;
  }

LABEL_138:
  sub_1AFDFE518();
  __break(1u);
LABEL_139:
  result = sub_1AFDFF1A8();
  __break(1u);
  return result;
}

uint64_t sub_1AFCAD4C4(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    return result;
  }

  v3 = result;
  v4 = a2 & 0x100000000;
  if (qword_1ED72D720 != -1)
  {
    v95 = a2;
    swift_once();
    LODWORD(a2) = v95;
  }

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = a2;
  }

  v131 = qword_1ED73B840;
  v132 = v5;
  v133 = v4 >> 31;
  v134 = 1;
  v135 = 2;
  v136 = 0;

  sub_1AF702F78(3, v120);

  v129[0] = v120[0];
  v129[1] = v120[1];
  v130 = v121;
  sub_1AF6B06C0(v3, v129, 0x200000000, v122);
  if (!*v122)
  {
    return sub_1AFCBA0DC(v120, &qword_1EB63D270, &type metadata for GraphEntityComponentPropertyReferences, &off_1F253B5B8);
  }

  if (v125 <= 0 || (v100 = *(&v123 + 1)) == 0)
  {
    sub_1AFCBA0DC(v120, &qword_1EB63D270, &type metadata for GraphEntityComponentPropertyReferences, &off_1F253B5B8);
    v93 = MEMORY[0x1E69E6720];
    return sub_1AFCB9F58(v122, &qword_1ED725EA0, &type metadata for QueryResult, v93, sub_1AFCBA88C);
  }

  v99 = *&v122[40];
  v6 = *(&v124 + 1);
  v7 = *(v124 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v8 = *(*(&v124 + 1) + 32);
  v126 = *v122;
  v127 = *&v122[8];
  v128 = *&v122[24];
  v119[2] = *&v122[32];
  v119[3] = v123;
  v119[4] = v124;
  v119[5] = v125;
  v119[0] = *v122;
  v119[1] = *&v122[16];
  sub_1AF5DD298(v119, v117);
  v9 = 0;
  v10 = 0;
  v98 = v6;
  v96 = v8;
  v97 = v7;
  while (2)
  {
    v11 = (v99 + 48 * v9);
    v12 = *v11;
    v14 = *(v11 + 2);
    v13 = *(v11 + 3);
    v15 = *(v11 + 5);
    v104 = v11[1];
    v105 = *(v11 + 4);
    v102 = v10;
    if (v7)
    {
      v16 = *(v15 + 376);

      os_unfair_lock_lock(v16);
      os_unfair_lock_lock(*(v15 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v8);
    v17 = *(v6 + 4);
    v117[0] = *(v6 + 3);
    v117[1] = v17;
    v118 = v6[10];
    v18 = *(*(*(*(v15 + 40) + 16) + 32) + 16) + 1;
    v6[6] = ecs_stack_allocator_allocate(v6[4], 48 * v18, 8);
    v6[7] = v18;
    v6[9] = 0;
    v6[10] = 0;
    v6[8] = 0;
    v19 = v105;
    v108 = sub_1AF64B110(&type metadata for GraphEntityComponentPropertyReferences, &off_1F253B5B8, v14, v13, v105, v6);
    v103 = v9;
    v101 = v15;
    if (!v14)
    {
      if (v12 == v104)
      {
        goto LABEL_47;
      }

LABEL_51:
      v57 = &v108[64 * v12];
      *(v57 + 6) = MEMORY[0x1E69E7CC0];

      v58 = *(v57 + 5);
      if (!v58)
      {
        goto LABEL_50;
      }

      v107 = v12;
      v59 = *(v58 + 16);
      v60 = *(v57 + 5);

      if (!v59)
      {
        goto LABEL_49;
      }

      v61 = 0;
      v62 = v60 + 32;
      v110 = v60 + 32;
      v112 = v59;
LABEL_57:
      v64 = *(v57 + 1);
      if (!*(v64 + 16))
      {
        goto LABEL_56;
      }

      v65 = (v62 + 24 * v61);
      v66 = v65[1];
      v67 = v65[2];
      v68 = *v65;

      v69 = sub_1AF419914(v68, v66);
      if ((v70 & 1) == 0)
      {
        goto LABEL_55;
      }

      v71 = (*(v64 + 56) + 16 * v69);
      v72 = *v71;
      v73 = *(v67 + 16);
      v114 = v71[1];

      if (!v73)
      {
        v116 = MEMORY[0x1E69E7CC0];
        goto LABEL_73;
      }

      v74 = 0;
      v75 = v67 + 40;
      v76 = -v73;
      v116 = MEMORY[0x1E69E7CC0];
LABEL_61:
      v77 = (v75 + 16 * v74++);
      while (1)
      {
        v78 = *v57;
        if (*(*v57 + 16))
        {
          v80 = *(v77 - 1);
          v79 = *v77;

          v81 = sub_1AF419914(v80, v79);
          if (v82)
          {
            v83 = (*(v78 + 56) + 16 * v81);
            v84 = *v83;
            v85 = v83[1];

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v116 = sub_1AF425958(0, *(v116 + 2) + 1, 1, v116);
            }

            v87 = *(v116 + 2);
            v86 = *(v116 + 3);
            if (v87 >= v86 >> 1)
            {
              v116 = sub_1AF425958(v86 > 1, v87 + 1, 1, v116);
            }

            *(v116 + 2) = v87 + 1;
            v88 = &v116[16 * v87];
            *(v88 + 4) = v84;
            *(v88 + 5) = v85;
            v75 = v67 + 40;
            if (!(v76 + v74))
            {
LABEL_73:
              v89 = *(v57 + 6);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(v57 + 6) = v89;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v89 = sub_1AF423470(0, *(v89 + 2) + 1, 1, v89);
                *(v57 + 6) = v89;
              }

              v62 = v110;
              v59 = v112;
              v92 = *(v89 + 2);
              v91 = *(v89 + 3);
              if (v92 >= v91 >> 1)
              {
                v89 = sub_1AF423470(v91 > 1, v92 + 1, 1, v89);
                *(v57 + 6) = v89;
              }

              *(v89 + 2) = v92 + 1;
              v63 = &v89[24 * v92];
              *(v63 + 4) = v72;
              *(v63 + 5) = v114;
              *(v63 + 6) = v116;
LABEL_55:

LABEL_56:
              if (++v61 != v59)
              {
                goto LABEL_57;
              }

LABEL_49:

              v12 = v107;
LABEL_50:
              ++v12;
              v57[56] = 1;
              if (v12 == v104)
              {
                goto LABEL_47;
              }

              goto LABEL_51;
            }

            goto LABEL_61;
          }
        }

        v77 += 2;
        ++v74;
        if (v76 + v74 == 1)
        {
          goto LABEL_73;
        }
      }
    }

    if (!v105)
    {
      goto LABEL_47;
    }

    v20 = 0;
    while (2)
    {
      v21 = &v108[64 * v20];
      *(v21 + 6) = MEMORY[0x1E69E7CC0];

      v22 = *(v21 + 5);
      if (!v22)
      {
        goto LABEL_19;
      }

      v106 = v20;
      v23 = *(v22 + 16);
      v24 = *(v21 + 5);

      if (!v23)
      {
        goto LABEL_18;
      }

      v25 = 0;
      v26 = v24 + 32;
      v109 = v24 + 32;
      v111 = v23;
      while (2)
      {
        v28 = *(v21 + 1);
        if (!*(v28 + 16))
        {
          goto LABEL_25;
        }

        v29 = (v26 + 24 * v25);
        v30 = v29[1];
        v31 = v29[2];
        v32 = *v29;

        v33 = sub_1AF419914(v32, v30);
        if ((v34 & 1) == 0)
        {
          goto LABEL_24;
        }

        v35 = (*(v28 + 56) + 16 * v33);
        v36 = *v35;
        v37 = *(v31 + 16);
        v113 = v35[1];

        if (!v37)
        {
          v115 = MEMORY[0x1E69E7CC0];
          goto LABEL_42;
        }

        v38 = 0;
        v39 = v31 + 40;
        v40 = -v37;
        v115 = MEMORY[0x1E69E7CC0];
        do
        {
          v41 = (v39 + 16 * v38++);
          while (1)
          {
            v42 = *v21;
            if (*(*v21 + 16))
            {
              break;
            }

LABEL_31:
            v41 += 2;
            ++v38;
            if (v40 + v38 == 1)
            {
              goto LABEL_42;
            }
          }

          v44 = *(v41 - 1);
          v43 = *v41;

          v45 = sub_1AF419914(v44, v43);
          if ((v46 & 1) == 0)
          {

            goto LABEL_31;
          }

          v47 = (*(v42 + 56) + 16 * v45);
          v48 = *v47;
          v49 = v47[1];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v115 = sub_1AF425958(0, *(v115 + 2) + 1, 1, v115);
          }

          v51 = *(v115 + 2);
          v50 = *(v115 + 3);
          if (v51 >= v50 >> 1)
          {
            v115 = sub_1AF425958(v50 > 1, v51 + 1, 1, v115);
          }

          *(v115 + 2) = v51 + 1;
          v52 = &v115[16 * v51];
          *(v52 + 4) = v48;
          *(v52 + 5) = v49;
          v39 = v31 + 40;
        }

        while (v40 + v38);
LABEL_42:
        v53 = *(v21 + 6);
        v54 = swift_isUniquelyReferenced_nonNull_native();
        *(v21 + 6) = v53;
        if ((v54 & 1) == 0)
        {
          v53 = sub_1AF423470(0, *(v53 + 2) + 1, 1, v53);
          *(v21 + 6) = v53;
        }

        v26 = v109;
        v23 = v111;
        v56 = *(v53 + 2);
        v55 = *(v53 + 3);
        if (v56 >= v55 >> 1)
        {
          v53 = sub_1AF423470(v55 > 1, v56 + 1, 1, v53);
          *(v21 + 6) = v53;
        }

        *(v53 + 2) = v56 + 1;
        v27 = &v53[24 * v56];
        *(v27 + 4) = v36;
        *(v27 + 5) = v113;
        *(v27 + 6) = v115;
LABEL_24:

LABEL_25:
        if (++v25 != v23)
        {
          continue;
        }

        break;
      }

LABEL_18:

      v19 = v105;
      v20 = v106;
LABEL_19:
      v21[56] = 1;
      if (++v20 != v19)
      {
        continue;
      }

      break;
    }

LABEL_47:
    v6 = v98;
    v10 = v102;
    sub_1AF630994(v98, &v126, v117);
    sub_1AF62D29C(v101);
    v8 = v96;
    ecs_stack_allocator_pop_snapshot(v96);
    v7 = v97;
    if (v97)
    {
      os_unfair_lock_unlock(*(v101 + 344));
      os_unfair_lock_unlock(*(v101 + 376));
    }

    v9 = v103 + 1;
    if (v103 + 1 != v100)
    {
      continue;
    }

    break;
  }

  v94 = MEMORY[0x1E69E6720];
  sub_1AFCB9F58(v122, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
  sub_1AFCBA0DC(v120, &qword_1EB63D270, &type metadata for GraphEntityComponentPropertyReferences, &off_1F253B5B8);
  v93 = v94;
  return sub_1AFCB9F58(v122, &qword_1ED725EA0, &type metadata for QueryResult, v93, sub_1AFCBA88C);
}

uint64_t sub_1AFCADE34(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0x100000000;
  if (qword_1ED72D720 != -1)
  {
    v38 = a2;
    swift_once();
    LODWORD(a2) = v38;
  }

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  v57 = qword_1ED73B840;
  v58 = v4;
  v59 = v3 >> 31;
  v60 = 1;
  v61 = 2;
  v62 = 0;

  sub_1AF705190(3, v46);

  v55[0] = v46[0];
  v55[1] = v46[1];
  v56 = v47;
  sub_1AF6B06C0(a1, v55, 0x200000000, v48);
  if (!*v48)
  {
    return sub_1AFCBA0DC(v46, &qword_1EB643C60, &type metadata for ParticleAngularVelocityInit, &off_1F254CBF0);
  }

  if (v51 > 0 && (v41 = *(&v49 + 1)) != 0)
  {
    v40 = *&v48[40];
    v5 = *(&v50 + 1);
    v6 = *(v50 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v42 = *(*(&v50 + 1) + 32);
    v52 = *v48;
    v53 = *&v48[8];
    v54 = *&v48[24];
    v45[2] = *&v48[32];
    v45[3] = v49;
    v45[4] = v50;
    v45[5] = v51;
    v45[0] = *v48;
    v45[1] = *&v48[16];
    sub_1AF5DD298(v45, v43);
    v7 = 0;
    v39 = v6;
    do
    {
      v8 = (v40 + 48 * v7);
      v10 = *v8;
      v9 = v8[1];
      v12 = *(v8 + 2);
      v11 = *(v8 + 3);
      v14 = *(v8 + 4);
      v13 = *(v8 + 5);
      if (v6)
      {
        v15 = *(v13 + 376);

        os_unfair_lock_lock(v15);
        os_unfair_lock_lock(*(v13 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v42);
      v16 = *(v5 + 64);
      v43[0] = *(v5 + 48);
      v43[1] = v16;
      v44 = *(v5 + 80);
      v17 = *(*(*(*(v13 + 40) + 16) + 32) + 16) + 1;
      *(v5 + 48) = ecs_stack_allocator_allocate(*(v5 + 32), 48 * v17, 8);
      *(v5 + 56) = v17;
      *(v5 + 72) = 0;
      *(v5 + 80) = 0;
      *(v5 + 64) = 0;
      v18 = sub_1AF64B110(&type metadata for ParticleAngularVelocityInit, &off_1F254CBF0, v12, v11, v14, v5);
      if (v12)
      {
        v6 = v39;
        if (v14)
        {
          v20 = v18 + 12;
          do
          {
            v21 = (v20 - 3);
            v22.i32[0] = *(v20 - 3);
            v19.i32[0] = *(v20 - 2);
            v22.i32[1] = *(v20 - 1);
            v19.i32[1] = *v20;
            v22.i64[1] = v20[1];
            v23 = vmaxnmq_f32(v22, xmmword_1AFEA97A0);
            v23.i32[3] = 0;
            v19.i32[2] = v20[2];
            v24 = vminnmq_f32(v23, xmmword_1AFEA97B0);
            v25 = vmaxnmq_f32(v19, xmmword_1AFEA97A0);
            v25.i32[3] = 0;
            v26 = vminnmq_f32(v25, xmmword_1AFEA97B0);
            vst2_f32(v21, v24);
            v19 = vextq_s8(v24, v24, 8uLL);
            *(v20 + 1) = vzip1_s32(*v19.f32, *&vextq_s8(v26, v26, 8uLL));
            v20 += 6;
            --v14;
          }

          while (v14);
        }
      }

      else
      {
        v6 = v39;
        if (v10 != v9)
        {
          v27 = v9 - v10;
          v28 = &v18[24 * v10 + 12];
          do
          {
            v29 = (v28 - 12);
            v30.i32[0] = *(v28 - 3);
            v19.i32[0] = *(v28 - 2);
            v30.i32[1] = *(v28 - 1);
            v19.i32[1] = *v28;
            v30.i64[1] = *(v28 + 1);
            v31 = vmaxnmq_f32(v30, xmmword_1AFEA97A0);
            v31.i32[3] = 0;
            v19.i32[2] = *(v28 + 2);
            v32 = vminnmq_f32(v31, xmmword_1AFEA97B0);
            v33 = vmaxnmq_f32(v19, xmmword_1AFEA97A0);
            v33.i32[3] = 0;
            v34 = vminnmq_f32(v33, xmmword_1AFEA97B0);
            vst2_f32(v29, v32);
            v19 = vextq_s8(v32, v32, 8uLL);
            *(v28 + 4) = vzip1_s32(*v19.f32, *&vextq_s8(v34, v34, 8uLL));
            v28 += 24;
            --v27;
          }

          while (v27);
        }
      }

      sub_1AF630994(v5, &v52, v43);
      sub_1AF62D29C(v13);
      ecs_stack_allocator_pop_snapshot(v42);
      if (v6)
      {
        os_unfair_lock_unlock(*(v13 + 344));
        os_unfair_lock_unlock(*(v13 + 376));
      }

      ++v7;
    }

    while (v7 != v41);
    sub_1AFCBA0DC(v46, &qword_1EB643C60, &type metadata for ParticleAngularVelocityInit, &off_1F254CBF0);
    v37 = MEMORY[0x1E69E6720];
    sub_1AFCB9F58(v48, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
    v35 = v37;
  }

  else
  {
    sub_1AFCBA0DC(v46, &qword_1EB643C60, &type metadata for ParticleAngularVelocityInit, &off_1F254CBF0);
    v35 = MEMORY[0x1E69E6720];
  }

  return sub_1AFCB9F58(v48, &qword_1ED725EA0, &type metadata for QueryResult, v35, sub_1AFCBA88C);
}

uint64_t sub_1AFCAE338(uint64_t a1, uint64_t a2)
{
  v176 = *MEMORY[0x1E69E9840];
  v3 = a2 & 0x100000000;
  if (qword_1ED72D720 != -1)
  {
    v127 = a2;
    swift_once();
    LODWORD(a2) = v127;
  }

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  v148 = qword_1ED73B840;
  v149 = v4;
  v150 = v3 >> 31;
  v151 = 1;
  v152 = 2;
  v153 = 0;

  sub_1AFCC7064(2, 1, v141);

  v146[0] = v141[0];
  v146[1] = v141[1];
  v147 = v142;
  sub_1AF6B06C0(a1, v146, 0x200000000, v170);
  if (!*v170)
  {
    return sub_1AFCB9FB8(v141, sub_1AFCBA604);
  }

  if (v173 > 0)
  {
    v131 = *(&v171 + 1);
    if (*(&v171 + 1))
    {
      v130 = *&v170[40];
      v5 = *(v172 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v134 = *(&v172 + 1);
      v6 = *(*(&v172 + 1) + 32);
      v143 = *v170;
      v144 = *&v170[8];
      v145 = *&v170[24];
      v169[2] = *&v170[32];
      v169[3] = v171;
      v169[4] = v172;
      v169[5] = v173;
      v169[0] = *v170;
      v169[1] = *&v170[16];
      sub_1AF5DD298(v169, &v163);
      v7 = 0;
      v8 = 0;
      v129 = v5;
      v128 = v6;
      while (1)
      {
        v132 = v8;
        v133 = v7;
        v9 = (v130 + 48 * v7);
        v10 = *v9;
        v11 = *(v9 + 3);
        v137 = v9[1];
        v139 = *(v9 + 2);
        v12 = *(v9 + 5);
        v135 = *(v9 + 4);
        if (v5)
        {
          v13 = *(v12 + 376);

          os_unfair_lock_lock(v13);
          os_unfair_lock_lock(*(v12 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v6);
        v14 = *(v134 + 64);
        v174[0] = *(v134 + 48);
        v174[1] = v14;
        v175 = *(v134 + 80);
        v15 = *(v134 + 32);
        v16 = *(*(*(*(v12 + 40) + 16) + 32) + 16) + 1;

        *(v134 + 48) = ecs_stack_allocator_allocate(v15, 48 * v16, 8);
        *(v134 + 56) = v16;
        *(v134 + 72) = 0;
        *(v134 + 80) = 0;
        *(v134 + 64) = 0;

        v140 = sub_1AF64B110(&type metadata for Material, &off_1F253F848, v139, v11, v135, v134);
        v136 = sub_1AF64B110(&type metadata for MaterialParameters, &off_1F253F550, v139, v11, v135, v134);
        if (v139)
        {
          if (v135)
          {
            v17 = v135;
            v18 = 0;
            while (1)
            {
              v138 = v139[v18];
              v20 = &v140[104 * v18];
              if (*v20 != 2)
              {
                goto LABEL_44;
              }

              v21 = &v136[32 * v18];
              type metadata accessor for CustomParameters();
              v22 = swift_allocObject();
              v23 = MEMORY[0x1E69E7CC0];
              v22[2] = MEMORY[0x1E69E7CC0];
              v22[3] = v23;
              v22[4] = v23;
              v24 = *(*v21 + 16);
              v25 = *(*(v21 + 1) + 16);
              v26 = *(v25 + 16);
              v27 = *(v24 + 2);
              v28 = v27 + v26;

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              if (!isUniquelyReferenced_nonNull_native || v28 > *(v24 + 3) >> 1)
              {
                if (v27 <= v28)
                {
                  v30 = v27 + v26;
                }

                else
                {
                  v30 = v27;
                }

                v24 = sub_1AF4265B0(isUniquelyReferenced_nonNull_native, v30, 1, v24);
              }

              if (*(v25 + 16))
              {
                swift_arrayInitWithCopy();

                if (v26)
                {
                  *(v24 + 2) += v26;
                }
              }

              else
              {
              }

              v22[2] = v24;

              v31 = *(*v21 + 24);
              v32 = *(*(v21 + 1) + 24);
              v33 = *(v32 + 16);
              v34 = *(v31 + 2);
              v35 = v34 + v33;

              v36 = swift_isUniquelyReferenced_nonNull_native();
              if ((v36 & 1) != 0 && v35 <= *(v31 + 3) >> 1)
              {
                if (*(v32 + 16))
                {
                  goto LABEL_36;
                }
              }

              else
              {
                if (v34 <= v35)
                {
                  v37 = v34 + v33;
                }

                else
                {
                  v37 = v34;
                }

                v31 = sub_1AF420C48(v36, v37, 1, v31);
                if (*(v32 + 16))
                {
LABEL_36:
                  memcpy(&v31[80 * *(v31 + 2) + 32], (v32 + 32), 80 * v33);

                  if (v33)
                  {
                    *(v31 + 2) += v33;
                  }

                  goto LABEL_43;
                }
              }

LABEL_43:
              v22[3] = v31;

              v38 = sub_1AFCBA6E4(&qword_1EB63FB68, type metadata accessor for CustomParameters, byte_1AFE7EA68);
              *(v20 + 3) = v22;
              *(v20 + 4) = v38;
              swift_retain_n();
              swift_unknownObjectRelease();
              v39 = sub_1AF8A0980();
              v41 = v40;

              *(v20 + 11) = v39;
              *(v20 + 12) = v41;

              v17 = v135;
LABEL_44:
              v42 = *(*(v12 + 40) + 16);
              v43 = *(v42 + 128);
              if (!*(v43 + 16))
              {
                goto LABEL_21;
              }

              v44 = sub_1AF449CB8(&type metadata for MaterialParameters);
              if ((v45 & 1) == 0 || *(*(v42 + 24) + 16 * *(*(v43 + 56) + 8 * v44) + 32) != &type metadata for MaterialParameters)
              {
                goto LABEL_21;
              }

              v160 = &type metadata for MaterialParameters;
              v161 = &off_1F253F550;
              v162 = 1;
              v46 = *(v134 + 104);
              v47 = *(v46 + 16);
              if (!v47)
              {

LABEL_76:
                v61 = *(v12 + 240) - *(v12 + 232);
                v62 = ecs_stack_allocator_allocate(*(v134 + 32), 8 * v61, 8);
                *v62 = v138;
                sub_1AF63515C(&v160, &v163);
                *v166 = v62;
                *&v166[8] = v61;
                *&v166[16] = 1;
                v63 = *(v134 + 104);
                v64 = swift_isUniquelyReferenced_nonNull_native();
                *(v134 + 104) = v63;
                if ((v64 & 1) == 0)
                {
                  v63 = sub_1AF420EA0(0, v63[2] + 1, 1, v63);
                  *(v134 + 104) = v63;
                }

                v17 = v135;
                v66 = v63[2];
                v65 = v63[3];
                if (v66 >= v65 >> 1)
                {
                  *(v134 + 104) = sub_1AF420EA0(v65 > 1, v66 + 1, 1, v63);
                }

                sub_1AF635250(&v160);
                v67 = *(v134 + 104);
                *(v67 + 16) = v66 + 1;
                v68 = v67 + 72 * v66;
                *(v68 + 32) = v163;
                v70 = v165;
                v69 = *v166;
                v71 = v164;
                *(v68 + 96) = *&v166[16];
                *(v68 + 64) = v70;
                *(v68 + 80) = v69;
                *(v68 + 48) = v71;
                *(v134 + 104) = v67;
                goto LABEL_21;
              }

              v48 = v46 + 32;

              v49 = 0;
              while (1)
              {
                sub_1AF6350F8(v48, v159);
                sub_1AF63515C(v159, &v163);
                sub_1AF63515C(&v160, v166);
                if (BYTE8(v165) <= 2u)
                {
                  if (!BYTE8(v165))
                  {
                    sub_1AFCB9FB8(v159, sub_1AF43A540);
                    sub_1AF63515C(&v163, v158);
                    if (v168)
                    {
                      goto LABEL_50;
                    }

                    goto LABEL_63;
                  }

                  if (BYTE8(v165) == 1)
                  {
                    sub_1AFCB9FB8(v159, sub_1AF43A540);
                    sub_1AF63515C(&v163, v158);
                    if (v168 != 1)
                    {
                      goto LABEL_50;
                    }

LABEL_63:
                    v52 = *&v158[0];
                    v53 = *v166;
                    sub_1AF635250(&v163);
                    if (v52 == v53)
                    {
                      goto LABEL_73;
                    }

                    goto LABEL_51;
                  }

                  sub_1AF63515C(&v163, v158);
                  if (v168 != 2)
                  {
LABEL_49:
                    sub_1AFCB9FB8(v159, sub_1AF43A540);
                    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v158);
LABEL_50:
                    sub_1AFCB9F58(&v163, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
                    goto LABEL_51;
                  }

                  goto LABEL_68;
                }

                if (BYTE8(v165) == 3)
                {
                  sub_1AF63515C(&v163, v158);
                  if (v168 != 3)
                  {
                    goto LABEL_49;
                  }

LABEL_68:
                  sub_1AF616568(v158, v155);
                  sub_1AF616568(v166, v154);
                  v54 = v156;
                  v55 = v157;
                  sub_1AF441150(v155, v156);
                  LOBYTE(v54) = sub_1AF640C98(v154, v54, v55);
                  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v154);
                  sub_1AFCB9FB8(v159, sub_1AF43A540);
                  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v155);
                  sub_1AF635250(&v163);
                  if (v54)
                  {
                    goto LABEL_73;
                  }

                  goto LABEL_51;
                }

                if (BYTE8(v165) != 4)
                {
                  break;
                }

                sub_1AFCB9FB8(v159, sub_1AF43A540);
                sub_1AF63515C(&v163, v158);
                if (v168 != 4)
                {
                  goto LABEL_50;
                }

                v50 = LOBYTE(v158[0]);
                v51 = v166[0];
                sub_1AF635250(&v163);
                if (v50 == v51)
                {
                  goto LABEL_73;
                }

LABEL_51:
                ++v49;
                v48 += 72;
                if (v47 == v49)
                {
                  goto LABEL_76;
                }
              }

              sub_1AFCB9FB8(v159, sub_1AF43A540);
              if (v168 != 5)
              {
                goto LABEL_50;
              }

              v56 = vorrq_s8(*&v166[8], v167);
              if (*&vorr_s8(*v56.i8, *&vextq_s8(v56, v56, 8uLL)) | *v166)
              {
                goto LABEL_50;
              }

              sub_1AF635250(&v163);
LABEL_73:
              v58 = sub_1AFBFCA08(&v163);
              v59 = *(v57 + 48);
              if (v59)
              {
                v60 = *(v57 + 64);
                *(v59 + 8 * v60) = v138;
                *(v57 + 64) = v60 + 1;
              }

              (v58)(&v163, 0);

              sub_1AF635250(&v160);
              v17 = v135;
LABEL_21:
              if (++v18 == v17)
              {
                goto LABEL_18;
              }
            }
          }

          goto LABEL_18;
        }

        v19 = v137;
        if (v10 != v137)
        {
          break;
        }

LABEL_18:
        v8 = v132;
        sub_1AF630994(v134, &v143, v174);
        sub_1AF62D29C(v12);
        v6 = v128;
        ecs_stack_allocator_pop_snapshot(v128);
        v5 = v129;
        if (v129)
        {
          os_unfair_lock_unlock(*(v12 + 344));
          os_unfair_lock_unlock(*(v12 + 376));
        }

        v7 = v133 + 1;
        if (v133 + 1 == v131)
        {
          sub_1AFCB9FB8(v141, sub_1AFCBA604);
          v126 = MEMORY[0x1E69E6720];
          sub_1AFCB9F58(v170, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
          v124 = v126;
          return sub_1AFCB9F58(v170, &qword_1ED725EA0, &type metadata for QueryResult, v124, sub_1AFCBA88C);
        }
      }

LABEL_83:
      v72 = &v140[104 * v10];
      if (*v72 == 2)
      {
        v73 = &v136[32 * v10];
        type metadata accessor for CustomParameters();
        v74 = swift_allocObject();
        v75 = MEMORY[0x1E69E7CC0];
        v74[2] = MEMORY[0x1E69E7CC0];
        v74[3] = v75;
        v74[4] = v75;
        v76 = *(*v73 + 16);
        v77 = *(*(v73 + 1) + 16);
        v78 = *(v77 + 16);
        v79 = *(v76 + 2);
        v80 = v79 + v78;

        v81 = swift_isUniquelyReferenced_nonNull_native();
        if (!v81 || v80 > *(v76 + 3) >> 1)
        {
          if (v79 <= v80)
          {
            v82 = v79 + v78;
          }

          else
          {
            v82 = v79;
          }

          v76 = sub_1AF4265B0(v81, v82, 1, v76);
        }

        if (*(v77 + 16))
        {
          swift_arrayInitWithCopy();

          if (v78)
          {
            *(v76 + 2) += v78;
          }
        }

        else
        {
        }

        v74[2] = v76;

        v83 = *(*v73 + 24);
        v84 = *(*(v73 + 1) + 24);
        v85 = *(v84 + 16);
        v86 = *(v83 + 2);
        v87 = v86 + v85;

        v88 = swift_isUniquelyReferenced_nonNull_native();
        if ((v88 & 1) == 0 || v87 > *(v83 + 3) >> 1)
        {
          if (v86 <= v87)
          {
            v89 = v86 + v85;
          }

          else
          {
            v89 = v86;
          }

          v83 = sub_1AF420C48(v88, v89, 1, v83);
        }

        v19 = v137;
        if (*(v84 + 16))
        {
          memcpy(&v83[80 * *(v83 + 2) + 32], (v84 + 32), 80 * v85);

          if (v85)
          {
            *(v83 + 2) += v85;
          }
        }

        else
        {
        }

        v74[3] = v83;

        v90 = sub_1AFCBA6E4(&qword_1EB63FB68, type metadata accessor for CustomParameters, byte_1AFE7EA68);
        *(v72 + 3) = v74;
        *(v72 + 4) = v90;
        swift_retain_n();
        swift_unknownObjectRelease();
        v91 = sub_1AF8A0980();
        v93 = v92;

        *(v72 + 11) = v91;
        *(v72 + 12) = v93;
      }

      v94 = *(*(v12 + 40) + 16);
      v95 = *(v94 + 128);
      if (!*(v95 + 16))
      {
        goto LABEL_82;
      }

      v96 = sub_1AF449CB8(&type metadata for MaterialParameters);
      if ((v97 & 1) == 0 || *(*(v94 + 24) + 16 * *(*(v95 + 56) + 8 * v96) + 32) != &type metadata for MaterialParameters)
      {
        goto LABEL_82;
      }

      v160 = &type metadata for MaterialParameters;
      v161 = &off_1F253F550;
      v162 = 1;
      v98 = *(v134 + 104);
      v99 = *(v98 + 16);
      if (!v99)
      {

LABEL_137:
        v113 = *(v12 + 240) - *(v12 + 232);
        v114 = ecs_stack_allocator_allocate(*(v134 + 32), 8 * v113, 8);
        *v114 = v10;
        sub_1AF63515C(&v160, &v163);
        *v166 = v114;
        *&v166[8] = v113;
        *&v166[16] = 1;
        v115 = *(v134 + 104);
        v116 = swift_isUniquelyReferenced_nonNull_native();
        *(v134 + 104) = v115;
        if ((v116 & 1) == 0)
        {
          v115 = sub_1AF420EA0(0, v115[2] + 1, 1, v115);
          *(v134 + 104) = v115;
        }

        v118 = v115[2];
        v117 = v115[3];
        if (v118 >= v117 >> 1)
        {
          *(v134 + 104) = sub_1AF420EA0(v117 > 1, v118 + 1, 1, v115);
        }

        sub_1AF635250(&v160);
        v119 = *(v134 + 104);
        *(v119 + 16) = v118 + 1;
        v120 = v119 + 72 * v118;
        *(v120 + 32) = v163;
        v122 = v165;
        v121 = *v166;
        v123 = v164;
        *(v120 + 96) = *&v166[16];
        *(v120 + 64) = v122;
        *(v120 + 80) = v121;
        *(v120 + 48) = v123;
        *(v134 + 104) = v119;
        goto LABEL_82;
      }

      v100 = v98 + 32;

      v101 = 0;
      while (1)
      {
        sub_1AF6350F8(v100, v159);
        sub_1AF63515C(v159, &v163);
        sub_1AF63515C(&v160, v166);
        if (BYTE8(v165) <= 2u)
        {
          break;
        }

        if (BYTE8(v165) == 3)
        {
          sub_1AF63515C(&v163, v158);
          if (v168 != 3)
          {
            goto LABEL_110;
          }

LABEL_129:
          sub_1AF616568(v158, v155);
          sub_1AF616568(v166, v154);
          v106 = v156;
          v107 = v157;
          sub_1AF441150(v155, v156);
          LOBYTE(v106) = sub_1AF640C98(v154, v106, v107);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v154);
          sub_1AFCB9FB8(v159, sub_1AF43A540);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v155);
          sub_1AF635250(&v163);
          if (v106)
          {
            goto LABEL_134;
          }

          goto LABEL_112;
        }

        if (BYTE8(v165) != 4)
        {
          sub_1AFCB9FB8(v159, sub_1AF43A540);
          if (v168 == 5)
          {
            v108 = vorrq_s8(*&v166[8], v167);
            if (!(*&vorr_s8(*v108.i8, *&vextq_s8(v108, v108, 8uLL)) | *v166))
            {
              sub_1AF635250(&v163);
LABEL_134:
              v110 = sub_1AFBFCA08(&v163);
              v111 = *(v109 + 48);
              if (v111)
              {
                v112 = *(v109 + 64);
                *(v111 + 8 * v112) = v10;
                *(v109 + 64) = v112 + 1;
              }

              (v110)(&v163, 0);

              sub_1AF635250(&v160);
LABEL_82:
              if (++v10 == v19)
              {
                goto LABEL_18;
              }

              goto LABEL_83;
            }
          }

          goto LABEL_111;
        }

        sub_1AFCB9FB8(v159, sub_1AF43A540);
        sub_1AF63515C(&v163, v158);
        if (v168 != 4)
        {
          goto LABEL_111;
        }

        v102 = LOBYTE(v158[0]);
        v103 = v166[0];
        sub_1AF635250(&v163);
        if (v102 == v103)
        {
          goto LABEL_134;
        }

LABEL_112:
        ++v101;
        v100 += 72;
        if (v99 == v101)
        {
          goto LABEL_137;
        }
      }

      if (!BYTE8(v165))
      {
        sub_1AFCB9FB8(v159, sub_1AF43A540);
        sub_1AF63515C(&v163, v158);
        if (v168)
        {
          goto LABEL_111;
        }

        goto LABEL_124;
      }

      if (BYTE8(v165) == 1)
      {
        sub_1AFCB9FB8(v159, sub_1AF43A540);
        sub_1AF63515C(&v163, v158);
        if (v168 != 1)
        {
          goto LABEL_111;
        }

LABEL_124:
        v104 = *&v158[0];
        v105 = *v166;
        sub_1AF635250(&v163);
        if (v104 == v105)
        {
          goto LABEL_134;
        }

        goto LABEL_112;
      }

      sub_1AF63515C(&v163, v158);
      if (v168 != 2)
      {
LABEL_110:
        sub_1AFCB9FB8(v159, sub_1AF43A540);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v158);
LABEL_111:
        sub_1AFCB9F58(&v163, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
        goto LABEL_112;
      }

      goto LABEL_129;
    }
  }

  sub_1AFCB9FB8(v141, sub_1AFCBA604);
  v124 = MEMORY[0x1E69E6720];
  return sub_1AFCB9F58(v170, &qword_1ED725EA0, &type metadata for QueryResult, v124, sub_1AFCBA88C);
}

uint64_t sub_1AFCAF54C(uint64_t a1, uint64_t a2)
{
  v133 = *MEMORY[0x1E69E9840];
  v3 = a2 & 0x100000000;
  if (qword_1ED72D720 != -1)
  {
    v89 = a2;
    swift_once();
    LODWORD(a2) = v89;
  }

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  v105 = qword_1ED73B840;
  v106 = v4;
  v107 = v3 >> 31;
  v108 = 1;
  v109 = 2;
  v110 = 0;

  sub_1AFCC7088(1, 3, v98);

  v103[0] = v98[0];
  v103[1] = v98[1];
  v104 = v99;
  sub_1AF6B06C0(a1, v103, 0x200000000, v127);
  if (!*v127)
  {
    return sub_1AFCB9FB8(v98, sub_1AFCBA588);
  }

  if (v130 > 0)
  {
    v92 = *(&v128 + 1);
    if (*(&v128 + 1))
    {
      v91 = *&v127[40];
      v5 = *(&v129 + 1);
      v95 = *(*(&v129 + 1) + 32);
      v6 = *(v129 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v100 = *v127;
      v101 = *&v127[8];
      v102 = *&v127[24];
      v126[2] = *&v127[32];
      v126[3] = v128;
      v126[4] = v129;
      v126[5] = v130;
      v126[0] = *v127;
      v126[1] = *&v127[16];
      sub_1AF5DD298(v126, &v120);
      v7 = 0;
      v8 = 0;
      v90 = v6;
      v96 = v5;
      while (1)
      {
        v93 = v8;
        v94 = v7;
        v9 = (v91 + 48 * v7);
        v11 = *v9;
        v10 = v9[1];
        v12 = *(v9 + 2);
        v13 = *(v9 + 3);
        v14 = *(v9 + 4);
        v15 = *(v9 + 5);
        if (v6)
        {
          v16 = *(v15 + 376);

          os_unfair_lock_lock(v16);
          os_unfair_lock_lock(*(v15 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v95);
        v17 = *(v5 + 4);
        v131[0] = *(v5 + 3);
        v131[1] = v17;
        v132 = v5[10];
        v18 = v5[4];
        v19 = *(*(*(*(v15 + 40) + 16) + 32) + 16) + 1;

        v5 = v96;
        v96[6] = ecs_stack_allocator_allocate(v18, 48 * v19, 8);
        v96[7] = v19;
        v96[9] = 0;
        v96[10] = 0;
        v96[8] = 0;

        sub_1AF64B110(&type metadata for VFXAssetTag, &off_1F253D498, v12, v13, v14, v96);
        v97 = sub_1AF64B110(&type metadata for Name, &off_1F2535068, v12, v13, v14, v96);
        if (v12)
        {
          if (v14)
          {
            v20 = 0;
            while (1)
            {
              v21 = v12[v20];
              v22 = &v97[16 * v20];
              v23 = *v22 == 0x7465737341 && *(v22 + 1) == 0xE500000000000000;
              if (!v23 && (sub_1AFDFEE28() & 1) == 0)
              {
                goto LABEL_21;
              }

              v24 = *(*(v15 + 40) + 16);
              v25 = *(v24 + 128);
              if (!*(v25 + 16))
              {
                goto LABEL_21;
              }

              v26 = sub_1AF449CB8(&type metadata for Name);
              if ((v27 & 1) == 0 || *(*(v24 + 24) + 16 * *(*(v25 + 56) + 8 * v26) + 32) != &type metadata for Name)
              {
                goto LABEL_21;
              }

              v117 = &type metadata for Name;
              v118 = &off_1F2535068;
              v119 = 1;
              v28 = v5[13];
              v29 = *(v28 + 16);
              if (!v29)
              {

LABEL_59:
                v43 = *(v15 + 240) - *(v15 + 232);
                v5 = v96;
                v44 = ecs_stack_allocator_allocate(v96[4], 8 * v43, 8);
                *v44 = v21;
                sub_1AF63515C(&v117, &v120);
                *v123 = v44;
                *&v123[8] = v43;
                *&v123[16] = 1;
                v45 = v96[13];
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v96[13] = v45;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v45 = sub_1AF420EA0(0, v45[2] + 1, 1, v45);
                  v96[13] = v45;
                }

                v48 = v45[2];
                v47 = v45[3];
                if (v48 >= v47 >> 1)
                {
                  v96[13] = sub_1AF420EA0(v47 > 1, v48 + 1, 1, v45);
                }

                sub_1AF635250(&v117);
                v49 = v96[13];
                *(v49 + 16) = v48 + 1;
                v50 = v49 + 72 * v48;
                *(v50 + 32) = v120;
                v52 = v122;
                v51 = *v123;
                v53 = v121;
                *(v50 + 96) = *&v123[16];
                *(v50 + 64) = v52;
                *(v50 + 80) = v51;
                *(v50 + 48) = v53;
                v96[13] = v49;
                goto LABEL_21;
              }

              v30 = v28 + 32;

              v31 = 0;
              while (1)
              {
                sub_1AF6350F8(v30, v116);
                sub_1AF63515C(v116, &v120);
                sub_1AF63515C(&v117, v123);
                if (BYTE8(v122) <= 2u)
                {
                  if (!BYTE8(v122))
                  {
                    sub_1AFCB9FB8(v116, sub_1AF43A540);
                    sub_1AF63515C(&v120, v115);
                    if (v125)
                    {
                      goto LABEL_33;
                    }

                    goto LABEL_46;
                  }

                  if (BYTE8(v122) == 1)
                  {
                    sub_1AFCB9FB8(v116, sub_1AF43A540);
                    sub_1AF63515C(&v120, v115);
                    if (v125 != 1)
                    {
                      goto LABEL_33;
                    }

LABEL_46:
                    v34 = *&v115[0];
                    v35 = *v123;
                    sub_1AF635250(&v120);
                    if (v34 == v35)
                    {
                      goto LABEL_56;
                    }

                    goto LABEL_34;
                  }

                  sub_1AF63515C(&v120, v115);
                  if (v125 != 2)
                  {
LABEL_32:
                    sub_1AFCB9FB8(v116, sub_1AF43A540);
                    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v115);
LABEL_33:
                    sub_1AFCB9F58(&v120, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
                    goto LABEL_34;
                  }

                  goto LABEL_51;
                }

                if (BYTE8(v122) == 3)
                {
                  sub_1AF63515C(&v120, v115);
                  if (v125 != 3)
                  {
                    goto LABEL_32;
                  }

LABEL_51:
                  sub_1AF616568(v115, v112);
                  sub_1AF616568(v123, v111);
                  v36 = v113;
                  v37 = v114;
                  sub_1AF441150(v112, v113);
                  LOBYTE(v36) = sub_1AF640C98(v111, v36, v37);
                  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v111);
                  sub_1AFCB9FB8(v116, sub_1AF43A540);
                  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v112);
                  sub_1AF635250(&v120);
                  if (v36)
                  {
                    goto LABEL_56;
                  }

                  goto LABEL_34;
                }

                if (BYTE8(v122) != 4)
                {
                  break;
                }

                sub_1AFCB9FB8(v116, sub_1AF43A540);
                sub_1AF63515C(&v120, v115);
                if (v125 != 4)
                {
                  goto LABEL_33;
                }

                v32 = LOBYTE(v115[0]);
                v33 = v123[0];
                sub_1AF635250(&v120);
                if (v32 == v33)
                {
                  goto LABEL_56;
                }

LABEL_34:
                ++v31;
                v30 += 72;
                if (v29 == v31)
                {
                  goto LABEL_59;
                }
              }

              sub_1AFCB9FB8(v116, sub_1AF43A540);
              if (v125 != 5)
              {
                goto LABEL_33;
              }

              v38 = vorrq_s8(*&v123[8], v124);
              if (*&vorr_s8(*v38.i8, *&vextq_s8(v38, v38, 8uLL)) | *v123)
              {
                goto LABEL_33;
              }

              sub_1AF635250(&v120);
LABEL_56:
              v5 = v96;
              v40 = sub_1AFBFCA08(&v120);
              v41 = *(v39 + 48);
              if (v41)
              {
                v42 = *(v39 + 64);
                *(v41 + 8 * v42) = v21;
                *(v39 + 64) = v42 + 1;
              }

              (v40)(&v120, 0);

              sub_1AF635250(&v117);
LABEL_21:
              if (++v20 == v14)
              {
                goto LABEL_18;
              }
            }
          }

          goto LABEL_18;
        }

        if (v11 != v10)
        {
          break;
        }

LABEL_18:
        v8 = v93;
        sub_1AF630994(v5, &v100, v131);
        sub_1AF62D29C(v15);
        ecs_stack_allocator_pop_snapshot(v95);
        v6 = v90;
        if (v90)
        {
          os_unfair_lock_unlock(*(v15 + 344));
          os_unfair_lock_unlock(*(v15 + 376));
        }

        v7 = v94 + 1;
        if (v94 + 1 == v92)
        {
          sub_1AFCB9FB8(v98, sub_1AFCBA588);
          v88 = MEMORY[0x1E69E6720];
          sub_1AFCB9F58(v127, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
          v86 = v88;
          return sub_1AFCB9F58(v127, &qword_1ED725EA0, &type metadata for QueryResult, v86, sub_1AFCBA88C);
        }
      }

LABEL_66:
      v54 = &v97[16 * v11];
      v55 = *v54 == 0x7465737341 && *(v54 + 1) == 0xE500000000000000;
      if (!v55 && (sub_1AFDFEE28() & 1) == 0)
      {
        goto LABEL_65;
      }

      v56 = *(*(v15 + 40) + 16);
      v57 = *(v56 + 128);
      if (!*(v57 + 16))
      {
        goto LABEL_65;
      }

      v58 = sub_1AF449CB8(&type metadata for Name);
      if ((v59 & 1) == 0 || *(*(v56 + 24) + 16 * *(*(v57 + 56) + 8 * v58) + 32) != &type metadata for Name)
      {
        goto LABEL_65;
      }

      v117 = &type metadata for Name;
      v118 = &off_1F2535068;
      v119 = 1;
      v60 = v96[13];
      v61 = *(v60 + 16);
      if (!v61)
      {

LABEL_103:
        v75 = *(v15 + 240) - *(v15 + 232);
        v76 = ecs_stack_allocator_allocate(v96[4], 8 * v75, 8);
        *v76 = v11;
        sub_1AF63515C(&v117, &v120);
        *v123 = v76;
        *&v123[8] = v75;
        *&v123[16] = 1;
        v77 = v96[13];
        v78 = swift_isUniquelyReferenced_nonNull_native();
        v96[13] = v77;
        if ((v78 & 1) == 0)
        {
          v77 = sub_1AF420EA0(0, v77[2] + 1, 1, v77);
          v96[13] = v77;
        }

        v80 = v77[2];
        v79 = v77[3];
        if (v80 >= v79 >> 1)
        {
          v96[13] = sub_1AF420EA0(v79 > 1, v80 + 1, 1, v77);
        }

        sub_1AF635250(&v117);
        v81 = v96[13];
        *(v81 + 16) = v80 + 1;
        v82 = v81 + 72 * v80;
        *(v82 + 32) = v120;
        v84 = v122;
        v83 = *v123;
        v85 = v121;
        *(v82 + 96) = *&v123[16];
        *(v82 + 64) = v84;
        *(v82 + 80) = v83;
        *(v82 + 48) = v85;
        v96[13] = v81;
        goto LABEL_65;
      }

      v62 = v60 + 32;

      v63 = 0;
      while (1)
      {
        sub_1AF6350F8(v62, v116);
        sub_1AF63515C(v116, &v120);
        sub_1AF63515C(&v117, v123);
        if (BYTE8(v122) <= 2u)
        {
          break;
        }

        if (BYTE8(v122) == 3)
        {
          sub_1AF63515C(&v120, v115);
          if (v125 != 3)
          {
            goto LABEL_76;
          }

LABEL_95:
          sub_1AF616568(v115, v112);
          sub_1AF616568(v123, v111);
          v68 = v113;
          v69 = v114;
          sub_1AF441150(v112, v113);
          LOBYTE(v68) = sub_1AF640C98(v111, v68, v69);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v111);
          sub_1AFCB9FB8(v116, sub_1AF43A540);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v112);
          sub_1AF635250(&v120);
          if (v68)
          {
            goto LABEL_100;
          }

          goto LABEL_78;
        }

        if (BYTE8(v122) != 4)
        {
          sub_1AFCB9FB8(v116, sub_1AF43A540);
          if (v125 == 5)
          {
            v70 = vorrq_s8(*&v123[8], v124);
            if (!(*&vorr_s8(*v70.i8, *&vextq_s8(v70, v70, 8uLL)) | *v123))
            {
              sub_1AF635250(&v120);
LABEL_100:
              v72 = sub_1AFBFCA08(&v120);
              v73 = *(v71 + 48);
              if (v73)
              {
                v74 = *(v71 + 64);
                *(v73 + 8 * v74) = v11;
                *(v71 + 64) = v74 + 1;
              }

              (v72)(&v120, 0);

              sub_1AF635250(&v117);
LABEL_65:
              if (++v11 == v10)
              {
                goto LABEL_18;
              }

              goto LABEL_66;
            }
          }

          goto LABEL_77;
        }

        sub_1AFCB9FB8(v116, sub_1AF43A540);
        sub_1AF63515C(&v120, v115);
        if (v125 != 4)
        {
          goto LABEL_77;
        }

        v64 = LOBYTE(v115[0]);
        v65 = v123[0];
        sub_1AF635250(&v120);
        if (v64 == v65)
        {
          goto LABEL_100;
        }

LABEL_78:
        ++v63;
        v62 += 72;
        if (v61 == v63)
        {
          goto LABEL_103;
        }
      }

      if (!BYTE8(v122))
      {
        sub_1AFCB9FB8(v116, sub_1AF43A540);
        sub_1AF63515C(&v120, v115);
        if (v125)
        {
          goto LABEL_77;
        }

        goto LABEL_90;
      }

      if (BYTE8(v122) == 1)
      {
        sub_1AFCB9FB8(v116, sub_1AF43A540);
        sub_1AF63515C(&v120, v115);
        if (v125 != 1)
        {
          goto LABEL_77;
        }

LABEL_90:
        v66 = *&v115[0];
        v67 = *v123;
        sub_1AF635250(&v120);
        if (v66 == v67)
        {
          goto LABEL_100;
        }

        goto LABEL_78;
      }

      sub_1AF63515C(&v120, v115);
      if (v125 != 2)
      {
LABEL_76:
        sub_1AFCB9FB8(v116, sub_1AF43A540);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v115);
LABEL_77:
        sub_1AFCB9F58(&v120, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
        goto LABEL_78;
      }

      goto LABEL_95;
    }
  }

  sub_1AFCB9FB8(v98, sub_1AFCBA588);
  v86 = MEMORY[0x1E69E6720];
  return sub_1AFCB9F58(v127, &qword_1ED725EA0, &type metadata for QueryResult, v86, sub_1AFCBA88C);
}

uint64_t sub_1AFCB0308(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0x100000000;
  if (qword_1ED72D720 != -1)
  {
    v30 = a2;
    swift_once();
    LODWORD(a2) = v30;
  }

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  v49 = qword_1ED73B840;
  v50 = v4;
  v51 = v3 >> 31;
  v52 = 1;
  v53 = 2;
  v54 = 0;

  sub_1AF7051A4(2, v38);

  v47[0] = v38[0];
  v47[1] = v38[1];
  v48 = v39;
  sub_1AF6B06C0(a1, v47, 0x200000000, v40);
  if (!*v40)
  {
    return sub_1AFCBA0DC(v38, &qword_1EB632C50, &type metadata for ParticlePivotInit, &off_1F254E6A0);
  }

  if (v43 > 0 && (v33 = *(&v41 + 1)) != 0)
  {
    v32 = *&v40[40];
    v5 = *(&v42 + 1);
    v6 = *(v42 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v34 = *(*(&v42 + 1) + 32);
    v44 = *v40;
    v45 = *&v40[8];
    v46 = *&v40[24];
    v37[2] = *&v40[32];
    v37[3] = v41;
    v37[4] = v42;
    v37[5] = v43;
    v37[0] = *v40;
    v37[1] = *&v40[16];
    sub_1AF5DD298(v37, v35);
    v7 = 0;
    __asm { FMOV            V8.2S, #1.0 }

    v31 = v6;
    do
    {
      v13 = (v32 + 48 * v7);
      v15 = *v13;
      v14 = v13[1];
      v17 = *(v13 + 2);
      v16 = *(v13 + 3);
      v19 = *(v13 + 4);
      v18 = *(v13 + 5);
      if (v6)
      {
        v20 = *(v18 + 376);

        os_unfair_lock_lock(v20);
        os_unfair_lock_lock(*(v18 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v34);
      v21 = *(v5 + 64);
      v35[0] = *(v5 + 48);
      v35[1] = v21;
      v36 = *(v5 + 80);
      v22 = *(*(*(*(v18 + 40) + 16) + 32) + 16) + 1;
      *(v5 + 48) = ecs_stack_allocator_allocate(*(v5 + 32), 48 * v22, 8);
      *(v5 + 56) = v22;
      *(v5 + 72) = 0;
      *(v5 + 80) = 0;
      *(v5 + 64) = 0;
      v23 = sub_1AF64B110(&type metadata for ParticlePivotInit, &off_1F254E6A0, v17, v16, v19, v5);
      if (v17)
      {
        v6 = v31;
        if (v19)
        {
          v24 = (v23 + 16);
          do
          {
            v24[-2] = vrev64_s32(vsub_f32(_D8, v24[-2]));
            *v24 = vrev64_s32(vsub_f32(_D8, *v24));
            v24 += 3;
            --v19;
          }

          while (v19);
        }
      }

      else
      {
        v6 = v31;
        if (v15 != v14)
        {
          v25 = v14 - v15;
          v26 = &v23[24 * v15 + 16];
          do
          {
            v26[-2] = vrev64_s32(vsub_f32(_D8, v26[-2]));
            *v26 = vrev64_s32(vsub_f32(_D8, *v26));
            v26 += 3;
            --v25;
          }

          while (v25);
        }
      }

      sub_1AF630994(v5, &v44, v35);
      sub_1AF62D29C(v18);
      ecs_stack_allocator_pop_snapshot(v34);
      if (v6)
      {
        os_unfair_lock_unlock(*(v18 + 344));
        os_unfair_lock_unlock(*(v18 + 376));
      }

      ++v7;
    }

    while (v7 != v33);
    sub_1AFCBA0DC(v38, &qword_1EB632C50, &type metadata for ParticlePivotInit, &off_1F254E6A0);
    v29 = MEMORY[0x1E69E6720];
    sub_1AFCB9F58(v40, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
    v27 = v29;
  }

  else
  {
    sub_1AFCBA0DC(v38, &qword_1EB632C50, &type metadata for ParticlePivotInit, &off_1F254E6A0);
    v27 = MEMORY[0x1E69E6720];
  }

  return sub_1AFCB9F58(v40, &qword_1ED725EA0, &type metadata for QueryResult, v27, sub_1AFCBA88C);
}

uint64_t sub_1AFCB0778(uint64_t a1, uint64_t a2, char a3)
{
  v426 = *MEMORY[0x1E69E9840];
  v5 = a2 & 0x100000000;
  if (qword_1ED72D720 != -1)
  {
    v226 = a2;
    swift_once();
    LODWORD(a2) = v226;
  }

  v6 = qword_1ED73B840;
  v347 = qword_1ED73B840;
  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v228 = v7;
  v348 = v7;
  v229 = v5 >> 31;
  v349 = v5 >> 31;
  v350 = 1;
  v351 = 2;
  v352 = 0;

  sub_1AF702F8C(2, v275);
  v230 = v6;

  v227 = a1;
  if ((a3 & 1) != 0 || (v315[0] = v275[0], v315[1] = v275[1], v316 = v276, sub_1AF6B06C0(a1, v315, 0x200000000, &v354), !v354))
  {
    v33 = 0;
  }

  else
  {
    if (v361 >= 1)
    {
      v262 = v358;
      if (v358)
      {
        v8 = 0;
        v256 = v357;
        v9 = v360;
        v269 = *(v360 + 32);
        v10 = *(v359 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v287 = v354;
        v288 = v355;
        v289 = v356;
        v250 = v10;
        do
        {
          v11 = (v256 + 48 * v8);
          v13 = *v11;
          v12 = v11[1];
          v15 = *(v11 + 2);
          v14 = *(v11 + 3);
          v16 = *(v11 + 4);
          v17 = *(v11 + 5);
          if (v10)
          {
            v18 = *(v17 + 376);

            os_unfair_lock_lock(v18);
            os_unfair_lock_lock(*(v17 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v269);
          v19 = *(v9 + 64);
          v424[0] = *(v9 + 48);
          v424[1] = v19;
          v425 = *(v9 + 80);
          v20 = *(*(*(*(v17 + 40) + 16) + 32) + 16) + 1;
          *(v9 + 48) = ecs_stack_allocator_allocate(*(v9 + 32), 48 * v20, 8);
          *(v9 + 56) = v20;
          *(v9 + 72) = 0;
          *(v9 + 80) = 0;
          *(v9 + 64) = 0;
          v21 = sub_1AF64B110(&type metadata for EmitterDescription, &off_1F2563648, v15, v14, v16, v9);
          if (v15)
          {
            v10 = v250;
            if (v16)
            {
              if (v16 == 1)
              {
                v22 = 0;
              }

              else
              {
                v22 = v16 & 0xFFFFFFFFFFFFFFFELL;
                v25 = v21 + 178;
                v26 = v16 & 0xFFFFFFFFFFFFFFFELL;
                do
                {
                  *(v25 - 104) = 1;
                  *v25 = 1;
                  v25 += 208;
                  v26 -= 2;
                }

                while (v26);
                if (v16 == v22)
                {
                  goto LABEL_33;
                }
              }

              v27 = v16 - v22;
              v28 = &v21[104 * v22 + 74];
              do
              {
                *v28 = 1;
                v28 += 104;
                --v27;
              }

              while (v27);
            }
          }

          else
          {
            v10 = v250;
            if (v13 != v12)
            {
              v23 = v12 - v13;
              if ((v12 - v13) > 1)
              {
                v24 = (v23 & 0xFFFFFFFFFFFFFFFELL) + v13;
                v29 = &v21[104 * v13 + 178];
                v30 = v23 & 0xFFFFFFFFFFFFFFFELL;
                do
                {
                  *(v29 - 104) = 1;
                  *v29 = 1;
                  v29 += 208;
                  v30 -= 2;
                }

                while (v30);
                if (v23 == (v23 & 0xFFFFFFFFFFFFFFFELL))
                {
                  goto LABEL_33;
                }
              }

              else
              {
                v24 = v13;
              }

              v31 = v12 - v24;
              v32 = &v21[104 * v24 + 74];
              do
              {
                *v32 = 1;
                v32 += 104;
                --v31;
              }

              while (v31);
            }
          }

LABEL_33:
          sub_1AF630994(v9, &v287, v424);
          sub_1AF62D29C(v17);
          ecs_stack_allocator_pop_snapshot(v269);
          if (v10)
          {
            os_unfair_lock_unlock(*(v17 + 344));
            os_unfair_lock_unlock(*(v17 + 376));
          }

          ++v8;
        }

        while (v8 != v262);
      }
    }

    sub_1AFCB9F58(&v354, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
    a1 = v227;
    v33 = 0;
  }

  v341 = v230;
  v342 = v228;
  v343 = v229;
  v344 = 1;
  v345 = 2;
  v346 = 0;

  sub_1AFCC70AC(1, 2, v277);

  v313[0] = v277[0];
  v313[1] = v277[1];
  v314 = v278;
  sub_1AF6B06C0(a1, v313, 0x200000000, &v362);
  if (v362)
  {
    if (v369 < 1 || (v234 = v366) == 0)
    {
LABEL_192:
      sub_1AFCB9F58(&v362, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
      a1 = v227;
      goto LABEL_193;
    }

    v34 = 0;
    v233 = v365;
    v35 = v368;
    v36 = *(v368 + 32);
    v37 = *(v367 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v290 = v362;
    v291 = v363;
    v292 = v364;
    v232 = v36;
    v231 = v37;
    while (1)
    {
      v38 = (v233 + 48 * v34);
      v39 = *v38;
      v263 = v38[1];
      v40 = *(v38 + 3);
      v41 = *(v38 + 5);
      v245 = *(v38 + 4);
      v251 = *(v38 + 2);
      v235 = v34;
      v240 = v33;
      if (v37)
      {
        v42 = *(v41 + 376);

        os_unfair_lock_lock(v42);
        os_unfair_lock_lock(*(v41 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v36);
      v43 = *(v35 + 64);
      v422[0] = *(v35 + 48);
      v422[1] = v43;
      v423 = *(v35 + 80);
      v44 = *(*(*(*(v41 + 40) + 16) + 32) + 16) + 1;
      *(v35 + 48) = ecs_stack_allocator_allocate(*(v35 + 32), 48 * v44, 8);
      *(v35 + 56) = v44;
      *(v35 + 72) = 0;
      *(v35 + 80) = 0;
      *(v35 + 64) = 0;
      v270 = sub_1AF64B110(&type metadata for EmitterShape, &off_1F254C2E8, v251, v40, v245, v35);
      v257 = sub_1AF64B110(&type metadata for Scale, &off_1F252F8E8, v251, v40, v245, v35);
      if (v251)
      {
        if (v245)
        {
          v45 = v245;
          v46 = 0;
          while (1)
          {
            v47 = &v270[224 * v46];
            v48 = *v47;
            if (v47[4] == 1)
            {
              if (v48 == 0.0)
              {
                goto LABEL_50;
              }

              v264 = v251[v46];
              *&v49 = vaddq_f32(*&v257[16 * v46], *&v257[16 * v46]).u64[0];
              v50 = COERCE_FLOAT(*&v257[16 * v46 + 8]);
              *(&v49 + 1) = COERCE_UNSIGNED_INT(v50 + v50);
              *&v257[16 * v46] = v49;
              v51 = *(*(v41 + 40) + 16);
              v52 = *(v51 + 128);
              if (*(v52 + 16))
              {
                v53 = sub_1AF449CB8(&type metadata for HalfSizeLegacyPatch);
                if ((v54 & 1) != 0 && *(*(v51 + 24) + 16 * *(*(v52 + 56) + 8 * v53) + 32) == &type metadata for HalfSizeLegacyPatch)
                {
                  goto LABEL_50;
                }
              }

              *&v398 = &type metadata for HalfSizeLegacyPatch;
              *(&v398 + 1) = &off_1F252F9F0;
              BYTE8(v400) = 0;
              v55 = *(v35 + 104);
              v56 = *(v55 + 16);
              if (!v56)
              {
LABEL_113:

LABEL_114:
                v87 = *(v41 + 240) - *(v41 + 232);
                v88 = ecs_stack_allocator_allocate(*(v35 + 32), 8 * v87, 8);
                *v88 = v264;
                sub_1AF63515C(&v398, &v414);
                *v417 = v88;
                *&v417[8] = v87;
                *&v417[16] = 1;
                v89 = *(v35 + 104);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *(v35 + 104) = v89;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v89 = sub_1AF420EA0(0, v89[2] + 1, 1, v89);
                  *(v35 + 104) = v89;
                }

                v92 = v89[2];
                v91 = v89[3];
                if (v92 >= v91 >> 1)
                {
                  *(v35 + 104) = sub_1AF420EA0(v91 > 1, v92 + 1, 1, v89);
                }

                sub_1AF635250(&v398);
                v93 = *(v35 + 104);
                *(v93 + 16) = v92 + 1;
                v94 = v93 + 72 * v92;
                *(v94 + 32) = v414;
                v95 = *v417;
                v96 = v416;
                v97 = v415;
                *(v94 + 96) = *&v417[16];
                *(v94 + 64) = v96;
                *(v94 + 80) = v95;
                *(v94 + 48) = v97;
                *(v35 + 104) = v93;
                goto LABEL_49;
              }

              v57 = v55 + 32;

              v58 = 0;
              while (2)
              {
                sub_1AF6350F8(v57, &v406);
                sub_1AF63515C(&v406, &v414);
                sub_1AF63515C(&v398, v417);
                if (BYTE8(v416) > 2u)
                {
                  if (BYTE8(v416) != 3)
                  {
                    if (BYTE8(v416) != 4)
                    {
                      sub_1AFCB9FB8(&v406, sub_1AF43A540);
                      if (v419 == 5)
                      {
                        v65 = vorrq_s8(*&v417[8], v418);
                        if (!(*&vorr_s8(*v65.i8, *&vextq_s8(v65, v65, 8uLL)) | *v417))
                        {
                          goto LABEL_110;
                        }
                      }

                      goto LABEL_59;
                    }

                    sub_1AFCB9FB8(&v406, sub_1AF43A540);
                    sub_1AF63515C(&v414, &v390);
                    if (v419 != 4)
                    {
                      goto LABEL_59;
                    }

                    v59 = v390;
                    v60 = v417[0];
                    sub_1AF635250(&v414);
                    if (v59 == v60)
                    {
                      goto LABEL_111;
                    }

LABEL_60:
                    ++v58;
                    v57 += 72;
                    if (v56 == v58)
                    {
                      goto LABEL_114;
                    }

                    continue;
                  }

                  sub_1AF63515C(&v414, &v390);
                  if (v419 == 3)
                  {
LABEL_77:
                    sub_1AF616568(&v390, v385);
                    sub_1AF616568(v417, v380);
                    v63 = *&v385[24];
                    v64 = *&v385[32];
                    sub_1AF441150(v385, *&v385[24]);
                    LOBYTE(v63) = sub_1AF640C98(v380, v63, v64);
                    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v380);
                    sub_1AFCB9FB8(&v406, sub_1AF43A540);
                    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v385);
                    sub_1AF635250(&v414);
                    if (v63)
                    {
                      goto LABEL_111;
                    }

                    goto LABEL_60;
                  }
                }

                else
                {
                  if (!BYTE8(v416))
                  {
                    sub_1AFCB9FB8(&v406, sub_1AF43A540);
                    sub_1AF63515C(&v414, &v390);
                    if (v419)
                    {
                      goto LABEL_59;
                    }

LABEL_72:
                    v61 = v390;
                    v62 = *v417;
                    sub_1AF635250(&v414);
                    if (v61 == v62)
                    {
                      goto LABEL_111;
                    }

                    goto LABEL_60;
                  }

                  if (BYTE8(v416) == 1)
                  {
                    sub_1AFCB9FB8(&v406, sub_1AF43A540);
                    sub_1AF63515C(&v414, &v390);
                    if (v419 == 1)
                    {
                      goto LABEL_72;
                    }

LABEL_59:
                    sub_1AFCB9F58(&v414, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
                    goto LABEL_60;
                  }

                  sub_1AF63515C(&v414, &v390);
                  if (v419 == 2)
                  {
                    goto LABEL_77;
                  }
                }

                break;
              }

              sub_1AFCB9FB8(&v406, sub_1AF43A540);
              _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v390);
              goto LABEL_59;
            }

            v264 = v251[v46];
            *&v66 = vaddq_f32(*&v257[16 * v46], *&v257[16 * v46]).u64[0];
            v67 = COERCE_FLOAT(*&v257[16 * v46 + 8]);
            *(&v66 + 2) = v67 + v67;
            HIDWORD(v66) = 0;
            *&v257[16 * v46] = v66;
            *v47 = v48 * 0.5;
            v47[4] = 0;
            v68 = *(*(v41 + 40) + 16);
            v69 = *(v68 + 128);
            if (*(v69 + 16))
            {
              v70 = sub_1AF449CB8(&type metadata for HalfSizeLegacyPatch);
              if ((v71 & 1) != 0 && *(*(v68 + 24) + 16 * *(*(v69 + 56) + 8 * v70) + 32) == &type metadata for HalfSizeLegacyPatch)
              {
                goto LABEL_50;
              }
            }

            *&v398 = &type metadata for HalfSizeLegacyPatch;
            *(&v398 + 1) = &off_1F252F9F0;
            BYTE8(v400) = 0;
            v72 = *(v35 + 104);
            v73 = *(v72 + 16);
            if (!v73)
            {
              goto LABEL_113;
            }

            v74 = v72 + 32;

            v75 = 0;
            while (1)
            {
              sub_1AF6350F8(v74, &v406);
              sub_1AF63515C(&v406, &v414);
              sub_1AF63515C(&v398, v417);
              if (BYTE8(v416) <= 2u)
              {
                if (!BYTE8(v416))
                {
                  sub_1AFCB9FB8(&v406, sub_1AF43A540);
                  sub_1AF63515C(&v414, &v390);
                  if (v419)
                  {
                    goto LABEL_88;
                  }

                  goto LABEL_101;
                }

                if (BYTE8(v416) == 1)
                {
                  sub_1AFCB9FB8(&v406, sub_1AF43A540);
                  sub_1AF63515C(&v414, &v390);
                  if (v419 != 1)
                  {
                    goto LABEL_88;
                  }

LABEL_101:
                  v78 = v390;
                  v79 = *v417;
                  sub_1AF635250(&v414);
                  if (v78 == v79)
                  {
                    goto LABEL_111;
                  }

                  goto LABEL_89;
                }

                sub_1AF63515C(&v414, &v390);
                if (v419 != 2)
                {
LABEL_87:
                  sub_1AFCB9FB8(&v406, sub_1AF43A540);
                  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v390);
LABEL_88:
                  sub_1AFCB9F58(&v414, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
                  goto LABEL_89;
                }

                goto LABEL_106;
              }

              if (BYTE8(v416) == 3)
              {
                sub_1AF63515C(&v414, &v390);
                if (v419 != 3)
                {
                  goto LABEL_87;
                }

LABEL_106:
                sub_1AF616568(&v390, v385);
                sub_1AF616568(v417, v380);
                v80 = *&v385[24];
                v81 = *&v385[32];
                sub_1AF441150(v385, *&v385[24]);
                LOBYTE(v80) = sub_1AF640C98(v380, v80, v81);
                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v380);
                sub_1AFCB9FB8(&v406, sub_1AF43A540);
                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v385);
                sub_1AF635250(&v414);
                if (v80)
                {
                  goto LABEL_111;
                }

                goto LABEL_89;
              }

              if (BYTE8(v416) != 4)
              {
                break;
              }

              sub_1AFCB9FB8(&v406, sub_1AF43A540);
              sub_1AF63515C(&v414, &v390);
              if (v419 != 4)
              {
                goto LABEL_88;
              }

              v76 = v390;
              v77 = v417[0];
              sub_1AF635250(&v414);
              if (v76 == v77)
              {
                goto LABEL_111;
              }

LABEL_89:
              ++v75;
              v74 += 72;
              if (v73 == v75)
              {
                goto LABEL_114;
              }
            }

            sub_1AFCB9FB8(&v406, sub_1AF43A540);
            if (v419 != 5)
            {
              goto LABEL_88;
            }

            v82 = vorrq_s8(*&v417[8], v418);
            if (*&vorr_s8(*v82.i8, *&vextq_s8(v82, v82, 8uLL)) | *v417)
            {
              goto LABEL_88;
            }

LABEL_110:
            sub_1AF635250(&v414);
LABEL_111:
            v84 = sub_1AFBFCA08(&v414);
            v85 = *(v83 + 48);
            if (v85)
            {
              v86 = *(v83 + 64);
              *(v85 + 8 * v86) = v264;
              *(v83 + 64) = v86 + 1;
            }

            (v84)(&v414, 0);

            sub_1AF635250(&v398);
LABEL_49:
            v45 = v245;
LABEL_50:
            if (++v46 == v45)
            {
              goto LABEL_120;
            }
          }
        }

        goto LABEL_120;
      }

      if (v39 != v263)
      {
        break;
      }

LABEL_120:
      v33 = v240;
      sub_1AF630994(v35, &v290, v422);
      sub_1AF62D29C(v41);
      v36 = v232;
      ecs_stack_allocator_pop_snapshot(v232);
      v37 = v231;
      if (v231)
      {
        os_unfair_lock_unlock(*(v41 + 344));
        os_unfair_lock_unlock(*(v41 + 376));
      }

      v34 = v235 + 1;
      if (v235 + 1 == v234)
      {
        goto LABEL_192;
      }
    }

LABEL_124:
    v98 = &v270[224 * v39];
    v99 = *v98;
    if (v98[4] == 1)
    {
      if (v99 == 0.0)
      {
        goto LABEL_123;
      }

      *&v100 = vaddq_f32(*&v257[16 * v39], *&v257[16 * v39]).u64[0];
      v101 = COERCE_FLOAT(*&v257[16 * v39 + 8]);
      *(&v100 + 1) = COERCE_UNSIGNED_INT(v101 + v101);
      *&v257[16 * v39] = v100;
      v102 = *(*(v41 + 40) + 16);
      v103 = *(v102 + 128);
      if (*(v103 + 16))
      {
        v104 = sub_1AF449CB8(&type metadata for HalfSizeLegacyPatch);
        if ((v105 & 1) != 0 && *(*(v102 + 24) + 16 * *(*(v103 + 56) + 8 * v104) + 32) == &type metadata for HalfSizeLegacyPatch)
        {
          goto LABEL_123;
        }
      }

      *&v398 = &type metadata for HalfSizeLegacyPatch;
      *(&v398 + 1) = &off_1F252F9F0;
      BYTE8(v400) = 0;
      v106 = *(v35 + 104);
      v107 = *(v106 + 16);
      if (!v107)
      {

LABEL_187:
        v138 = *(v41 + 240) - *(v41 + 232);
        v139 = ecs_stack_allocator_allocate(*(v35 + 32), 8 * v138, 8);
        *v139 = v39;
        sub_1AF63515C(&v398, &v414);
        *v417 = v139;
        *&v417[8] = v138;
        *&v417[16] = 1;
        v140 = *(v35 + 104);
        v141 = swift_isUniquelyReferenced_nonNull_native();
        *(v35 + 104) = v140;
        if ((v141 & 1) == 0)
        {
          v140 = sub_1AF420EA0(0, v140[2] + 1, 1, v140);
          *(v35 + 104) = v140;
        }

        v143 = v140[2];
        v142 = v140[3];
        if (v143 >= v142 >> 1)
        {
          *(v35 + 104) = sub_1AF420EA0(v142 > 1, v143 + 1, 1, v140);
        }

        sub_1AF635250(&v398);
        v144 = *(v35 + 104);
        *(v144 + 16) = v143 + 1;
        v145 = v144 + 72 * v143;
        *(v145 + 32) = v414;
        v146 = *v417;
        v147 = v416;
        v148 = v415;
        *(v145 + 96) = *&v417[16];
        *(v145 + 64) = v147;
        *(v145 + 80) = v146;
        *(v145 + 48) = v148;
        *(v35 + 104) = v144;
        goto LABEL_123;
      }

      v108 = v106 + 32;

      v109 = 0;
      while (2)
      {
        sub_1AF6350F8(v108, &v406);
        sub_1AF63515C(&v406, &v414);
        sub_1AF63515C(&v398, v417);
        if (BYTE8(v416) > 2u)
        {
          if (BYTE8(v416) != 3)
          {
            if (BYTE8(v416) != 4)
            {
              sub_1AFCB9FB8(&v406, sub_1AF43A540);
              if (v419 == 5)
              {
                v116 = vorrq_s8(*&v417[8], v418);
                if (!(*&vorr_s8(*v116.i8, *&vextq_s8(v116, v116, 8uLL)) | *v417))
                {
                  sub_1AF635250(&v414);
                  goto LABEL_184;
                }
              }

              goto LABEL_132;
            }

            sub_1AFCB9FB8(&v406, sub_1AF43A540);
            sub_1AF63515C(&v414, &v390);
            if (v419 != 4)
            {
              goto LABEL_132;
            }

            v110 = v390;
            v111 = v417[0];
            sub_1AF635250(&v414);
            if (v110 == v111)
            {
              goto LABEL_184;
            }

LABEL_133:
            ++v109;
            v108 += 72;
            if (v107 == v109)
            {
              goto LABEL_187;
            }

            continue;
          }

          sub_1AF63515C(&v414, &v390);
          if (v419 == 3)
          {
LABEL_150:
            sub_1AF616568(&v390, v385);
            sub_1AF616568(v417, v380);
            v114 = *&v385[24];
            v115 = *&v385[32];
            sub_1AF441150(v385, *&v385[24]);
            LOBYTE(v114) = sub_1AF640C98(v380, v114, v115);
            _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v380);
            sub_1AFCB9FB8(&v406, sub_1AF43A540);
            _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v385);
            sub_1AF635250(&v414);
            if (v114)
            {
              goto LABEL_184;
            }

            goto LABEL_133;
          }
        }

        else
        {
          if (!BYTE8(v416))
          {
            sub_1AFCB9FB8(&v406, sub_1AF43A540);
            sub_1AF63515C(&v414, &v390);
            if (v419)
            {
              goto LABEL_132;
            }

LABEL_145:
            v112 = v390;
            v113 = *v417;
            sub_1AF635250(&v414);
            if (v112 == v113)
            {
              goto LABEL_184;
            }

            goto LABEL_133;
          }

          if (BYTE8(v416) == 1)
          {
            sub_1AFCB9FB8(&v406, sub_1AF43A540);
            sub_1AF63515C(&v414, &v390);
            if (v419 == 1)
            {
              goto LABEL_145;
            }

LABEL_132:
            sub_1AFCB9F58(&v414, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
            goto LABEL_133;
          }

          sub_1AF63515C(&v414, &v390);
          if (v419 == 2)
          {
            goto LABEL_150;
          }
        }

        break;
      }

      sub_1AFCB9FB8(&v406, sub_1AF43A540);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v390);
      goto LABEL_132;
    }

    *&v117 = vaddq_f32(*&v257[16 * v39], *&v257[16 * v39]).u64[0];
    v118 = COERCE_FLOAT(*&v257[16 * v39 + 8]);
    *(&v117 + 2) = v118 + v118;
    HIDWORD(v117) = 0;
    *&v257[16 * v39] = v117;
    *v98 = v99 * 0.5;
    v98[4] = 0;
    v119 = *(*(v41 + 40) + 16);
    v120 = *(v119 + 128);
    if (*(v120 + 16))
    {
      v121 = sub_1AF449CB8(&type metadata for HalfSizeLegacyPatch);
      if ((v122 & 1) != 0 && *(*(v119 + 24) + 16 * *(*(v120 + 56) + 8 * v121) + 32) == &type metadata for HalfSizeLegacyPatch)
      {
        goto LABEL_123;
      }
    }

    *&v398 = &type metadata for HalfSizeLegacyPatch;
    *(&v398 + 1) = &off_1F252F9F0;
    BYTE8(v400) = 0;
    v123 = *(v35 + 104);
    v124 = *(v123 + 16);

    if (!v124)
    {
      goto LABEL_187;
    }

    v125 = 0;
    v126 = v123 + 32;
    while (1)
    {
      sub_1AF6350F8(v126, &v406);
      sub_1AF63515C(&v406, &v414);
      sub_1AF63515C(&v398, v417);
      if (BYTE8(v416) <= 2u)
      {
        break;
      }

      if (BYTE8(v416) == 3)
      {
        sub_1AF63515C(&v414, &v390);
        if (v419 != 3)
        {
          goto LABEL_160;
        }

LABEL_179:
        sub_1AF616568(&v390, v385);
        sub_1AF616568(v417, v380);
        v131 = *&v385[24];
        v132 = *&v385[32];
        sub_1AF441150(v385, *&v385[24]);
        LOBYTE(v131) = sub_1AF640C98(v380, v131, v132);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v380);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v385);
        sub_1AF635250(&v414);
        sub_1AFCB9FB8(&v406, sub_1AF43A540);
        if (v131)
        {
          goto LABEL_184;
        }

        goto LABEL_162;
      }

      if (BYTE8(v416) != 4)
      {
        if (v419 == 5)
        {
          v133 = vorrq_s8(*&v417[8], v418);
          if (!(*&vorr_s8(*v133.i8, *&vextq_s8(v133, v133, 8uLL)) | *v417))
          {
            sub_1AF635250(&v414);
            sub_1AFCB9FB8(&v406, sub_1AF43A540);
LABEL_184:
            v135 = sub_1AFBFCA08(&v414);
            v136 = *(v134 + 48);
            if (v136)
            {
              v137 = *(v134 + 64);
              *(v136 + 8 * v137) = v39;
              *(v134 + 64) = v137 + 1;
            }

            (v135)(&v414, 0);

            sub_1AF635250(&v398);
LABEL_123:
            if (++v39 == v263)
            {
              goto LABEL_120;
            }

            goto LABEL_124;
          }
        }

        goto LABEL_161;
      }

      sub_1AF63515C(&v414, &v390);
      if (v419 != 4)
      {
        goto LABEL_161;
      }

      v127 = v390;
      v128 = v417[0];
      sub_1AF635250(&v414);
      sub_1AFCB9FB8(&v406, sub_1AF43A540);
      if (v127 == v128)
      {
        goto LABEL_184;
      }

LABEL_162:
      ++v125;
      v126 += 72;
      if (v124 == v125)
      {
        goto LABEL_187;
      }
    }

    if (!BYTE8(v416))
    {
      sub_1AF63515C(&v414, &v390);
      if (v419)
      {
        goto LABEL_161;
      }

      goto LABEL_174;
    }

    if (BYTE8(v416) == 1)
    {
      sub_1AF63515C(&v414, &v390);
      if (v419 != 1)
      {
        goto LABEL_161;
      }

LABEL_174:
      v129 = v390;
      v130 = *v417;
      sub_1AF635250(&v414);
      sub_1AFCB9FB8(&v406, sub_1AF43A540);
      if (v129 == v130)
      {
        goto LABEL_184;
      }

      goto LABEL_162;
    }

    sub_1AF63515C(&v414, &v390);
    if (v419 != 2)
    {
LABEL_160:
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v390);
LABEL_161:
      sub_1AFCB9F58(&v414, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
      sub_1AFCB9FB8(&v406, sub_1AF43A540);
      goto LABEL_162;
    }

    goto LABEL_179;
  }

LABEL_193:
  v335 = v230;
  v336 = v228;
  v337 = v229;
  v338 = 1;
  v339 = 2;
  v340 = 0;

  sub_1AFCC70D0(1, 2, v279);

  v311[0] = v279[0];
  v311[1] = v279[1];
  v312 = v280;
  sub_1AF6B06C0(a1, v311, 0x200000000, v370);
  if (*v370)
  {
    v252 = v373;
    if (v373 > 0 && (v246 = *(&v371 + 1)) != 0)
    {
      v241 = *&v370[40];
      v236 = v372;
      v265 = *(v372 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v271 = *(&v372 + 1);
      v258 = *(*(&v372 + 1) + 32);
      v293 = *v370;
      v294 = *&v370[8];
      v295 = *&v370[24];
      v408 = *&v370[32];
      v409 = v371;
      v410 = v372;
      v411 = v373;
      v406 = *v370;
      v407 = *&v370[16];
      sub_1AF5DD298(&v406, &v414);
      v149 = 0;
      do
      {
        v150 = v33;
        v151 = (v241 + 48 * v149);
        v152 = *v151;
        v153 = v151[1];
        v154 = v151[2];
        v156 = *(v151 + 2);
        v155 = *(v151 + 3);
        v158 = *(v151 + 4);
        v157 = *(v151 + 5);
        if (v265)
        {
          v159 = *(v157 + 376);

          os_unfair_lock_lock(v159);
          os_unfair_lock_lock(*(v157 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v258);

        sub_1AF630914(v160, v271, v374);

        LOBYTE(v398) = 1;
        *&v414 = v236;
        *(&v414 + 1) = v157;
        *&v415 = v271;
        *(&v415 + 1) = v154;
        *&v416 = (v153 - v152 + v154);
        *(&v416 + 1) = v252;
        *v417 = v152;
        *&v417[8] = v153;
        *&v417[16] = 0;
        v418.i64[0] = 0;
        v418.i8[8] = 1;
        v419 = v156;
        v420 = v155;
        v421 = v158;
        v33 = v150;
        sub_1AF705DBC(v157, &v414);
        v161 = sub_1AF70641C(v157, &v414);
        if (v419)
        {
          for (i = v421; i; --i)
          {
            v163.i64[0] = vaddq_f32(*v161, *v161).u64[0];
            v163.f32[2] = COERCE_FLOAT(v161->i64[1]) + COERCE_FLOAT(v161->i64[1]);
            v163.i32[3] = 0;
            *v161++ = v163;
          }
        }

        else
        {
          v164 = *&v417[8] - *v417;
          if (*&v417[8] != *v417)
          {
            v165 = &v161[*v417];
            do
            {
              v166.i64[0] = vaddq_f32(*v165, *v165).u64[0];
              v166.f32[2] = COERCE_FLOAT(v165->i64[1]) + COERCE_FLOAT(v165->i64[1]);
              v166.i32[3] = 0;
              *v165++ = v166;
              --v164;
            }

            while (v164);
          }
        }

        sub_1AF630994(v271, &v293, v374);
        sub_1AF62D29C(v157);
        ecs_stack_allocator_pop_snapshot(v258);
        if (v265)
        {
          os_unfair_lock_unlock(*(v157 + 344));
          os_unfair_lock_unlock(*(v157 + 376));
        }

        ++v149;
      }

      while (v149 != v246);
      v167 = MEMORY[0x1E69E6720];
      sub_1AFCB9F58(v370, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
      sub_1AFCB9F58(v370, &qword_1ED725EA0, &type metadata for QueryResult, v167, sub_1AFCBA88C);
      a1 = v227;
    }

    else
    {
      sub_1AFCB9F58(v370, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
    }
  }

  v329 = v230;
  v330 = v228;
  v331 = v229;
  v332 = 1;
  v333 = 2;
  v334 = 0;

  sub_1AFCC70F4(1, 2, v281);

  v309[0] = v281[0];
  v309[1] = v281[1];
  v310 = v282;
  sub_1AF6B06C0(a1, v309, 0x200000000, v375);
  if (*v375)
  {
    v253 = v378;
    if (v378 > 0 && (v247 = *(&v376 + 1)) != 0)
    {
      v242 = *&v375[40];
      v237 = v377;
      v266 = *(v377 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v272 = *(&v377 + 1);
      v259 = *(*(&v377 + 1) + 32);
      v296 = *v375;
      v297 = *&v375[8];
      v298 = *&v375[24];
      v400 = *&v375[32];
      v401 = v376;
      v402 = v377;
      v403 = v378;
      v398 = *v375;
      v399 = *&v375[16];
      sub_1AF5DD298(&v398, &v406);
      v168 = 0;
      do
      {
        v169 = v33;
        v170 = (v242 + 48 * v168);
        v171 = *v170;
        v172 = v170[1];
        v173 = v170[2];
        v175 = *(v170 + 2);
        v174 = *(v170 + 3);
        v177 = *(v170 + 4);
        v176 = *(v170 + 5);
        if (v266)
        {
          v178 = *(v176 + 376);

          os_unfair_lock_lock(v178);
          os_unfair_lock_lock(*(v176 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v259);

        sub_1AF630914(v179, v272, v379);

        LOBYTE(v390) = 1;
        *&v406 = v237;
        *(&v406 + 1) = v176;
        *&v407 = v272;
        *(&v407 + 1) = v173;
        *&v408 = (v172 - v171 + v173);
        *(&v408 + 1) = v253;
        *&v409 = v171;
        *(&v409 + 1) = v172;
        v410 = 0uLL;
        LOBYTE(v411) = 1;
        *(&v411 + 1) = v175;
        v412 = v174;
        v413 = v177;
        v33 = v169;
        sub_1AF705E0C(v176, &v406);
        v180 = sub_1AF70641C(v176, &v406);
        if (*(&v411 + 1))
        {
          for (j = v413; j; --j)
          {
            v182.i64[0] = vaddq_f32(*v180, *v180).u64[0];
            v182.f32[2] = COERCE_FLOAT(v180->i64[1]) + COERCE_FLOAT(v180->i64[1]);
            v182.i32[3] = 0;
            *v180++ = v182;
          }
        }

        else
        {
          v183 = *(&v409 + 1) - v409;
          if (*(&v409 + 1) != v409)
          {
            v184 = &v180[v409];
            do
            {
              v185.i64[0] = vaddq_f32(*v184, *v184).u64[0];
              v185.f32[2] = COERCE_FLOAT(v184->i64[1]) + COERCE_FLOAT(v184->i64[1]);
              v185.i32[3] = 0;
              *v184++ = v185;
              --v183;
            }

            while (v183);
          }
        }

        sub_1AF630994(v272, &v296, v379);
        sub_1AF62D29C(v176);
        ecs_stack_allocator_pop_snapshot(v259);
        if (v266)
        {
          os_unfair_lock_unlock(*(v176 + 344));
          os_unfair_lock_unlock(*(v176 + 376));
        }

        ++v168;
      }

      while (v168 != v247);
      v186 = MEMORY[0x1E69E6720];
      sub_1AFCB9F58(v375, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
      sub_1AFCB9F58(v375, &qword_1ED725EA0, &type metadata for QueryResult, v186, sub_1AFCBA88C);
      a1 = v227;
    }

    else
    {
      sub_1AFCB9F58(v375, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
    }
  }

  v323 = v230;
  v324 = v228;
  v325 = v229;
  v326 = 1;
  v327 = 2;
  v328 = 0;

  sub_1AFCC7118(1, 2, v283);

  v307[0] = v283[0];
  v307[1] = v283[1];
  v308 = v284;
  sub_1AF6B06C0(a1, v307, 0x200000000, v380);
  if (*v380)
  {
    v254 = v383;
    if (v383 > 0 && (v248 = *(&v381 + 1)) != 0)
    {
      v243 = *&v380[40];
      v238 = v382;
      v267 = *(v382 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v273 = *(&v382 + 1);
      v260 = *(*(&v382 + 1) + 32);
      v299 = *v380;
      v300 = *&v380[8];
      v301 = *&v380[24];
      v392 = *&v380[32];
      v393 = v381;
      v394 = v382;
      v395 = v383;
      v390 = *v380;
      v391 = *&v380[16];
      sub_1AF5DD298(&v390, &v398);
      v187 = 0;
      do
      {
        v188 = v33;
        v189 = (v243 + 48 * v187);
        v191 = *v189;
        v190 = v189[1];
        v192 = v189[2];
        v194 = *(v189 + 2);
        v193 = *(v189 + 3);
        v196 = *(v189 + 4);
        v195 = *(v189 + 5);
        if (v267)
        {
          v197 = *(v195 + 376);

          os_unfair_lock_lock(v197);
          os_unfair_lock_lock(*(v195 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v260);

        sub_1AF630914(v198, v273, v384);

        v385[0] = 1;
        *&v398 = v238;
        *(&v398 + 1) = v195;
        *&v399 = v273;
        *(&v399 + 1) = v192;
        *&v400 = (v190 - v191 + v192);
        *(&v400 + 1) = v254;
        *&v401 = v191;
        *(&v401 + 1) = v190;
        v402 = 0uLL;
        LOBYTE(v403) = 1;
        *(&v403 + 1) = v194;
        v404 = v193;
        v405 = v196;
        v33 = v188;
        sub_1AF705DE4(v195, &v398);
        v199 = sub_1AF70641C(v195, &v398);
        if (*(&v403 + 1))
        {
          for (k = v405; k; --k)
          {
            v201.i64[0] = vaddq_f32(*v199, *v199).u64[0];
            v201.f32[2] = COERCE_FLOAT(v199->i64[1]) + COERCE_FLOAT(v199->i64[1]);
            v201.i32[3] = 0;
            *v199++ = v201;
          }
        }

        else
        {
          v202 = *(&v401 + 1) - v401;
          if (*(&v401 + 1) != v401)
          {
            v203 = &v199[v401];
            do
            {
              v204.i64[0] = vaddq_f32(*v203, *v203).u64[0];
              v204.f32[2] = COERCE_FLOAT(v203->i64[1]) + COERCE_FLOAT(v203->i64[1]);
              v204.i32[3] = 0;
              *v203++ = v204;
              --v202;
            }

            while (v202);
          }
        }

        sub_1AF630994(v273, &v299, v384);
        sub_1AF62D29C(v195);
        ecs_stack_allocator_pop_snapshot(v260);
        if (v267)
        {
          os_unfair_lock_unlock(*(v195 + 344));
          os_unfair_lock_unlock(*(v195 + 376));
        }

        ++v187;
      }

      while (v187 != v248);
      v205 = MEMORY[0x1E69E6720];
      sub_1AFCB9F58(v380, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
      sub_1AFCB9F58(v380, &qword_1ED725EA0, &type metadata for QueryResult, v205, sub_1AFCBA88C);
      a1 = v227;
    }

    else
    {
      sub_1AFCB9F58(v380, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
    }
  }

  v317 = v230;
  v318 = v228;
  v319 = v229;
  v320 = 1;
  v321 = 2;
  v322 = 0;

  sub_1AFCC713C(1, 2, v285);

  v305[0] = v285[0];
  v305[1] = v285[1];
  v306 = v286;
  sub_1AF6B06C0(a1, v305, 0x200000000, v385);
  if (*v385)
  {
    v255 = v388;
    if (v388 <= 0)
    {
      v392 = *&v385[32];
      v393 = v386;
      v394 = v387;
      v395 = v388;
      v390 = *v385;
      v391 = *&v385[16];
      sub_1AF5DD298(&v390, v353);
      sub_1AFCBA0DC(v275, &qword_1ED723D38, &type metadata for EmitterDescription, &off_1F2563648);
      sub_1AFCB9FB8(v277, sub_1AFCBA31C);
      sub_1AFCB9FB8(v279, sub_1AFCBA398);
      sub_1AFCB9FB8(v281, sub_1AFCBA414);
      sub_1AFCB9FB8(v283, sub_1AFCBA490);
      sub_1AFCB9FB8(v285, sub_1AFCBA50C);
    }

    else
    {
      v249 = *(&v386 + 1);
      if (*(&v386 + 1))
      {
        v244 = *&v385[40];
        v239 = v387;
        v268 = *(v387 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v274 = *(&v387 + 1);
        v261 = *(*(&v387 + 1) + 32);
        v302 = *v385;
        v303 = *&v385[8];
        v304 = *&v385[24];
        v353[2] = *&v385[32];
        v353[3] = v386;
        v353[4] = v387;
        v353[5] = v388;
        v353[0] = *v385;
        v353[1] = *&v385[16];
        sub_1AF5DD298(v353, &v390);
        v206 = 0;
        do
        {
          v207 = v33;
          v208 = (v244 + 48 * v206);
          v209 = *v208;
          v210 = v208[1];
          v211 = v208[2];
          v213 = *(v208 + 2);
          v212 = *(v208 + 3);
          v215 = *(v208 + 4);
          v214 = *(v208 + 5);
          if (v268)
          {
            v216 = *(v214 + 376);

            os_unfair_lock_lock(v216);
            os_unfair_lock_lock(*(v214 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v261);

          sub_1AF630914(v217, v274, v389);

          *&v390 = v239;
          *(&v390 + 1) = v214;
          *&v391 = v274;
          *(&v391 + 1) = v211;
          *&v392 = (v210 - v209 + v211);
          *(&v392 + 1) = v255;
          *&v393 = v209;
          *(&v393 + 1) = v210;
          v394 = 0uLL;
          LOBYTE(v395) = 1;
          *(&v395 + 1) = v213;
          v396 = v212;
          v397 = v215;
          v33 = v207;
          sub_1AF705D28(v214, &v390);
          v218 = sub_1AF70641C(v214, &v390);
          if (*(&v395 + 1))
          {
            for (m = v397; m; --m)
            {
              v220.i64[0] = vaddq_f32(*v218, *v218).u64[0];
              v220.f32[2] = COERCE_FLOAT(v218->i64[1]) + COERCE_FLOAT(v218->i64[1]);
              v220.i32[3] = 0;
              *v218++ = v220;
            }
          }

          else
          {
            v221 = *(&v393 + 1) - v393;
            if (*(&v393 + 1) != v393)
            {
              v222 = &v218[v393];
              do
              {
                v223.i64[0] = vaddq_f32(*v222, *v222).u64[0];
                v223.f32[2] = COERCE_FLOAT(v222->i64[1]) + COERCE_FLOAT(v222->i64[1]);
                v223.i32[3] = 0;
                *v222++ = v223;
                --v221;
              }

              while (v221);
            }
          }

          sub_1AF630994(v274, &v302, v389);
          sub_1AF62D29C(v214);
          ecs_stack_allocator_pop_snapshot(v261);
          if (v268)
          {
            os_unfair_lock_unlock(*(v214 + 344));
            os_unfair_lock_unlock(*(v214 + 376));
          }

          ++v206;
        }

        while (v206 != v249);
      }

      else
      {
        v392 = *&v385[32];
        v393 = v386;
        v394 = v387;
        v395 = v388;
        v390 = *v385;
        v391 = *&v385[16];
        sub_1AF5DD298(&v390, v353);
      }

      sub_1AFCB9FB8(v285, sub_1AFCBA50C);
      sub_1AFCB9FB8(v283, sub_1AFCBA490);
      sub_1AFCB9FB8(v281, sub_1AFCBA414);
      sub_1AFCB9FB8(v279, sub_1AFCBA398);
      sub_1AFCB9FB8(v277, sub_1AFCBA31C);
      sub_1AFCBA0DC(v275, &qword_1ED723D38, &type metadata for EmitterDescription, &off_1F2563648);
    }

    v225 = MEMORY[0x1E69E6720];
    sub_1AFCB9F58(v385, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
    return sub_1AFCB9F58(v385, &qword_1ED725EA0, &type metadata for QueryResult, v225, sub_1AFCBA88C);
  }

  else
  {
    sub_1AFCBA0DC(v275, &qword_1ED723D38, &type metadata for EmitterDescription, &off_1F2563648);
    sub_1AFCB9FB8(v277, sub_1AFCBA31C);
    sub_1AFCB9FB8(v279, sub_1AFCBA398);
    sub_1AFCB9FB8(v281, sub_1AFCBA414);
    sub_1AFCB9FB8(v283, sub_1AFCBA490);
    return sub_1AFCB9FB8(v285, sub_1AFCBA50C);
  }
}

uint64_t sub_1AFCB2E74(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0x100000000;
  if (qword_1ED72D720 != -1)
  {
    v34 = a2;
    swift_once();
    LODWORD(a2) = v34;
  }

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  v57 = qword_1ED73B840;
  v58 = v4;
  v59 = v3 >> 31;
  v60 = 1;
  v61 = 2;
  v62 = 0;

  sub_1AF7051B8(2, v40);

  v53[0] = v40[0];
  v53[1] = v40[1];
  v54 = v41;
  sub_1AF6B06C0(a1, v53, 0x200000000, &v42);
  if (!v42)
  {
    return sub_1AFCBA0DC(v40, &qword_1EB632C40, &type metadata for ParticleSpawnDuration, &off_1F2567440);
  }

  if (v49 > 0)
  {
    v37 = v46;
    if (v46)
    {
      v5 = 0;
      v36 = v45;
      v6 = v48;
      v7 = *(v47 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v39 = *(v48 + 32);
      v50 = v42;
      v51 = v43;
      v52 = v44;
      v35 = v7;
      while (1)
      {
        v8 = (v36 + 48 * v5);
        v9 = *v8;
        v38 = v8[1];
        v11 = *(v8 + 2);
        v10 = *(v8 + 3);
        v13 = *(v8 + 4);
        v12 = *(v8 + 5);
        if (v7)
        {
          v14 = *(v12 + 376);

          os_unfair_lock_lock(v14);
          os_unfair_lock_lock(*(v12 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v39);
        v15 = *(v6 + 64);
        v55[0] = *(v6 + 48);
        v55[1] = v15;
        v56 = *(v6 + 80);
        v16 = *(*(*(*(v12 + 40) + 16) + 32) + 16) + 1;
        *(v6 + 48) = ecs_stack_allocator_allocate(*(v6 + 32), 48 * v16, 8);
        *(v6 + 56) = v16;
        *(v6 + 72) = 0;
        *(v6 + 80) = 0;
        *(v6 + 64) = 0;
        v17 = sub_1AF64B110(&type metadata for ParticleSpawnDuration, &off_1F2567440, v11, v10, v13, v6);
        if (!v11)
        {
          break;
        }

        v7 = v35;
        if (!v13)
        {
          goto LABEL_67;
        }

        if (v13 > 7)
        {
          v18 = v13 & 0xFFFFFFFFFFFFFFF8;
          v21 = (v17 + 16);
          v22 = v13 & 0xFFFFFFFFFFFFFFF8;
          while (1)
          {
            v23 = vmovn_s32(vceqzq_f32(v21[-1]));
            if (v23.i8[0])
            {
              v21[-1].i32[0] = 2139095040;
              if ((v23.i8[2] & 1) == 0)
              {
LABEL_25:
                if ((v23.i8[4] & 1) == 0)
                {
                  goto LABEL_26;
                }

                goto LABEL_35;
              }
            }

            else if ((v23.i8[2] & 1) == 0)
            {
              goto LABEL_25;
            }

            v21[-1].i32[1] = 2139095040;
            if ((v23.i8[4] & 1) == 0)
            {
LABEL_26:
              if ((v23.i8[6] & 1) == 0)
              {
                goto LABEL_28;
              }

LABEL_27:
              v21[-1].i32[3] = 2139095040;
              goto LABEL_28;
            }

LABEL_35:
            v21[-1].i32[2] = 2139095040;
            if (v23.i8[6])
            {
              goto LABEL_27;
            }

LABEL_28:
            v24 = vmovn_s32(vceqzq_f32(*v21));
            if (v24.i8[0])
            {
              v21->i32[0] = 2139095040;
              if ((v24.i8[2] & 1) == 0)
              {
LABEL_30:
                if ((v24.i8[4] & 1) == 0)
                {
                  goto LABEL_31;
                }

                goto LABEL_39;
              }
            }

            else if ((v24.i8[2] & 1) == 0)
            {
              goto LABEL_30;
            }

            v21->i32[1] = 2139095040;
            if ((v24.i8[4] & 1) == 0)
            {
LABEL_31:
              if (v24.i8[6])
              {
                goto LABEL_40;
              }

              goto LABEL_22;
            }

LABEL_39:
            v21->i32[2] = 2139095040;
            if (v24.i8[6])
            {
LABEL_40:
              v21->i32[3] = 2139095040;
            }

LABEL_22:
            v21 += 2;
            v22 -= 8;
            if (!v22)
            {
              if (v13 != v18)
              {
                goto LABEL_42;
              }

              goto LABEL_67;
            }
          }
        }

        v18 = 0;
LABEL_42:
        v25 = v13 - v18;
        v26 = &v17[4 * v18];
        do
        {
          if (*v26 == 0.0)
          {
            *v26 = INFINITY;
          }

          ++v26;
          --v25;
        }

        while (v25);
LABEL_67:
        sub_1AF630994(v6, &v50, v55);
        sub_1AF62D29C(v12);
        ecs_stack_allocator_pop_snapshot(v39);
        if (v7)
        {
          os_unfair_lock_unlock(*(v12 + 344));
          os_unfair_lock_unlock(*(v12 + 376));
        }

        if (++v5 == v37)
        {
          goto LABEL_73;
        }
      }

      v7 = v35;
      if (v9 == v38)
      {
        goto LABEL_67;
      }

      v19 = v38 - v9;
      if ((v38 - v9) <= 7)
      {
        v20 = v9;
LABEL_69:
        v31 = v38 - v20;
        v32 = &v17[4 * v20];
        do
        {
          if (*v32 == 0.0)
          {
            *v32 = INFINITY;
          }

          ++v32;
          --v31;
        }

        while (v31);
        goto LABEL_67;
      }

      v20 = (v19 & 0xFFFFFFFFFFFFFFF8) + v9;
      v27 = &v17[4 * v9 + 16];
      v28 = v19 & 0xFFFFFFFFFFFFFFF8;
      while (1)
      {
        v29 = vmovn_s32(vceqzq_f32(v27[-1]));
        if (v29.i8[0])
        {
          v27[-1].i32[0] = 2139095040;
          if ((v29.i8[2] & 1) == 0)
          {
LABEL_50:
            if ((v29.i8[4] & 1) == 0)
            {
              goto LABEL_51;
            }

            goto LABEL_60;
          }
        }

        else if ((v29.i8[2] & 1) == 0)
        {
          goto LABEL_50;
        }

        v27[-1].i32[1] = 2139095040;
        if ((v29.i8[4] & 1) == 0)
        {
LABEL_51:
          if ((v29.i8[6] & 1) == 0)
          {
            goto LABEL_53;
          }

LABEL_52:
          v27[-1].i32[3] = 2139095040;
          goto LABEL_53;
        }

LABEL_60:
        v27[-1].i32[2] = 2139095040;
        if (v29.i8[6])
        {
          goto LABEL_52;
        }

LABEL_53:
        v30 = vmovn_s32(vceqzq_f32(*v27));
        if (v30.i8[0])
        {
          v27->i32[0] = 2139095040;
          if ((v30.i8[2] & 1) == 0)
          {
LABEL_55:
            if ((v30.i8[4] & 1) == 0)
            {
              goto LABEL_56;
            }

            goto LABEL_64;
          }
        }

        else if ((v30.i8[2] & 1) == 0)
        {
          goto LABEL_55;
        }

        v27->i32[1] = 2139095040;
        if ((v30.i8[4] & 1) == 0)
        {
LABEL_56:
          if (v30.i8[6])
          {
            goto LABEL_65;
          }

          goto LABEL_47;
        }

LABEL_64:
        v27->i32[2] = 2139095040;
        if (v30.i8[6])
        {
LABEL_65:
          v27->i32[3] = 2139095040;
        }

LABEL_47:
        v27 += 2;
        v28 -= 8;
        if (!v28)
        {
          if (v19 == (v19 & 0xFFFFFFFFFFFFFFF8))
          {
            goto LABEL_67;
          }

          goto LABEL_69;
        }
      }
    }
  }

LABEL_73:
  sub_1AFCBA0DC(v40, &qword_1EB632C40, &type metadata for ParticleSpawnDuration, &off_1F2567440);
  return sub_1AFCB9F58(&v42, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
}

uint64_t sub_1AFCB33E4(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0x100000000;
  if (qword_1ED72D720 != -1)
  {
    v31 = a2;
    swift_once();
    LODWORD(a2) = v31;
  }

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  v51 = qword_1ED73B840;
  v52 = v4;
  v53 = v3 >> 31;
  v54 = 1;
  v55 = 2;
  v56 = 0;

  sub_1AF7051CC(2, v40);

  v49[0] = v40[0];
  v49[1] = v40[1];
  v50 = v41;
  sub_1AF6B06C0(a1, v49, 0x200000000, v42);
  if (!*v42)
  {
    return sub_1AFCBA0DC(v40, &unk_1EB632C58, &type metadata for EmitterShape, &off_1F254C2E8);
  }

  if (v45 > 0 && (v33 = *(&v43 + 1)) != 0)
  {
    v32 = *&v42[40];
    v5 = *(&v44 + 1);
    v36 = *(v44 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v35 = *(*(&v44 + 1) + 32);
    v46 = *v42;
    v47 = *&v42[8];
    v48 = *&v42[24];
    v39[2] = *&v42[32];
    v39[3] = v43;
    v39[4] = v44;
    v39[5] = v45;
    v39[0] = *v42;
    v39[1] = *&v42[16];
    sub_1AF5DD298(v39, v37);
    v6 = 0;
    do
    {
      v7 = (v32 + 48 * v6);
      v8 = *v7;
      v34 = v7[1];
      v10 = *(v7 + 2);
      v9 = *(v7 + 3);
      v12 = *(v7 + 4);
      v11 = *(v7 + 5);
      if (v36)
      {
        v13 = *(v11 + 376);

        os_unfair_lock_lock(v13);
        os_unfair_lock_lock(*(v11 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v35);
      v14 = *(v5 + 64);
      v37[0] = *(v5 + 48);
      v37[1] = v14;
      v38 = *(v5 + 80);
      v15 = *(*(*(*(v11 + 40) + 16) + 32) + 16) + 1;
      *(v5 + 48) = ecs_stack_allocator_allocate(*(v5 + 32), 48 * v15, 8);
      *(v5 + 56) = v15;
      *(v5 + 72) = 0;
      *(v5 + 80) = 0;
      *(v5 + 64) = 0;
      v16 = sub_1AF64B110(&type metadata for EmitterShape, &off_1F254C2E8, v10, v9, v12, v5);
      if (v10)
      {
        if (v12)
        {
          v17 = v16 + 48;
          do
          {
            if (v17[16] >= 2u && !(*v17 ^ 1 | *(v17 + 1)))
            {
              *v17 = 0;
              *(v17 + 1) = 0;
              v17[16] = 2;
            }

            v18 = *(*(v11 + 40) + 16);
            v19 = *(v18 + 128);
            if (!*(v19 + 16) || (v20 = sub_1AF449CB8(&type metadata for LastFrameWorldTransform), (v21 & 1) == 0) || *(*(v18 + 24) + 16 * *(*(v19 + 56) + 8 * v20) + 32) != &type metadata for LastFrameWorldTransform)
            {
              v17[49] = 0;
            }

            v17 += 224;
            --v12;
          }

          while (v12);
        }
      }

      else if (v8 != v34)
      {
        v22 = v34 - v8;
        v23 = &v16[224 * v8 + 48];
        do
        {
          if (*(v23 + 16) >= 2u && !(*v23 ^ 1 | *(v23 + 8)))
          {
            *v23 = 0;
            *(v23 + 8) = 0;
            *(v23 + 16) = 2;
          }

          v24 = *(*(v11 + 40) + 16);
          v25 = *(v24 + 128);
          if (!*(v25 + 16) || (v26 = sub_1AF449CB8(&type metadata for LastFrameWorldTransform), (v27 & 1) == 0) || *(*(v24 + 24) + 16 * *(*(v25 + 56) + 8 * v26) + 32) != &type metadata for LastFrameWorldTransform)
          {
            *(v23 + 49) = 0;
          }

          v23 += 224;
          --v22;
        }

        while (v22);
      }

      sub_1AF630994(v5, &v46, v37);
      sub_1AF62D29C(v11);
      ecs_stack_allocator_pop_snapshot(v35);
      if (v36)
      {
        os_unfair_lock_unlock(*(v11 + 344));
        os_unfair_lock_unlock(*(v11 + 376));
      }

      ++v6;
    }

    while (v6 != v33);
    sub_1AFCBA0DC(v40, &unk_1EB632C58, &type metadata for EmitterShape, &off_1F254C2E8);
    v30 = MEMORY[0x1E69E6720];
    sub_1AFCB9F58(v42, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
    v28 = v30;
  }

  else
  {
    sub_1AFCBA0DC(v40, &unk_1EB632C58, &type metadata for EmitterShape, &off_1F254C2E8);
    v28 = MEMORY[0x1E69E6720];
  }

  return sub_1AFCB9F58(v42, &qword_1ED725EA0, &type metadata for QueryResult, v28, sub_1AFCBA88C);
}

uint64_t sub_1AFCB38FC(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1 & 0x100000000;
  if (qword_1ED72D720 != -1)
  {
    v12 = v1;
    swift_once();
    LODWORD(v1) = v12;
  }

  v5 = qword_1ED73B840;
  v323 = qword_1ED73B840;
  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = v1;
  }

  v324 = v6;
  v325 = v4 >> 31;
  v327 = 2;
  v326 = 1;
  v328 = 0;

  sub_1AF7051E0(1, v13);

  v158[0] = v13[0];
  v158[1] = v13[1];
  v159 = v14;
  sub_1AF6B06C0(v3, v158, 0x200000000, &v15);
  if (v15)
  {
    v319 = v18;
    v320 = v19;
    v321 = v20;
    v317 = v16;
    v318 = v17;
    v322 = v21;
    v316 = v15;
    sub_1AFD07598(&v316);
    sub_1AFCB9F58(&v15, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
  }

  v310 = v5;
  v311 = v6;
  v312 = v4 >> 31;
  v314 = 2;
  v313 = 1;
  v315 = 0;

  sub_1AF70321C(3, v22);

  sub_1AFA1CFD4(0, &qword_1ED7269A0, &qword_1ED7270C0, &qword_1ED7270D0, &protocol descriptor for Component);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AFE431C0;
  *(v7 + 32) = &type metadata for TextureRequireCPURepresentation;
  *(v7 + 40) = &off_1F25443B8;
  sub_1AF5D1EC0(v7);
  sub_1AFCBA0DC(v22, &qword_1ED723D88, &type metadata for TextureFileAsset, &off_1F2544090);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v156[0] = v23[0];
  v156[1] = v23[1];
  v157 = v24;
  sub_1AF6B06C0(v3, v156, 0x200000000, &v25);
  if (v25)
  {
    v306 = v28;
    v307 = v29;
    v308 = v30;
    v304 = v26;
    v305 = v27;
    v309 = v31;
    v303 = v25;
    sub_1AFD07808(&v303);
    sub_1AFCB9F58(&v25, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
  }

  v297 = v5;
  v298 = v6;
  v299 = v4 >> 31;
  v301 = 2;
  v300 = 1;
  v302 = 0;

  sub_1AF703230(3, v32);

  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE431C0;
  *(v8 + 32) = &type metadata for TextureRequireCPURepresentation;
  *(v8 + 40) = &off_1F25443B8;
  sub_1AF5D1EC0(v8);
  sub_1AFCBA0DC(v32, &qword_1EB632C38, &type metadata for TextureArrayFileAsset, &off_1F2544168);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v154[0] = v33[0];
  v154[1] = v33[1];
  v155 = v34;
  sub_1AF6B06C0(v3, v154, 0x200000000, &v35);
  if (v35)
  {
    v293 = v38;
    v294 = v39;
    v295 = v40;
    v291 = v36;
    v292 = v37;
    v296 = v41;
    v290 = v35;
    sub_1AFD07B1C(&v290);
    sub_1AFCB9F58(&v35, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
  }

  v284 = v5;
  v285 = v6;
  v286 = v4 >> 31;
  v287 = 1;
  v288 = 2;
  v289 = 0;

  sub_1AF70326C(1, v42);

  v152[0] = v42[0];
  v152[1] = v42[1];
  v153 = v43;
  sub_1AF6B06C0(v3, v152, 0x200000000, &v44);
  if (v44)
  {
    v280 = v47;
    v281 = v48;
    v282 = v49;
    v278 = v45;
    v279 = v46;
    v283 = v50;
    v277 = v44;
    sub_1AFD07B94(&v277);
    sub_1AFCB9F58(&v44, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
  }

  v271 = v5;
  v272 = v6;
  v273 = v4 >> 31;
  v274 = 1;
  v275 = 2;
  v276 = 0;

  sub_1AF70321C(3, v51);

  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AFE431C0;
  *(v9 + 32) = &type metadata for TextureRequireGPURepresentation;
  *(v9 + 40) = &off_1F2544248;
  sub_1AF5D1EC0(v9);
  sub_1AFCBA0DC(v51, &qword_1ED723D88, &type metadata for TextureFileAsset, &off_1F2544090);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v150[0] = v52[0];
  v150[1] = v52[1];
  v151 = v53;
  sub_1AF6B06C0(v3, v150, 0x200000000, &v54);
  if (v54)
  {
    v267 = v57;
    v268 = v58;
    v269 = v59;
    v265 = v55;
    v266 = v56;
    v270 = v60;
    v264 = v54;
    sub_1AFD07AE0(&v264);
    sub_1AFCB9F58(&v54, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
  }

  v258 = v5;
  v259 = v6;
  v260 = v4 >> 31;
  v261 = 1;
  v262 = 2;
  v263 = 0;

  sub_1AF703230(3, v61);

  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AFE431C0;
  *(v10 + 32) = &type metadata for TextureRequireGPURepresentation;
  *(v10 + 40) = &off_1F2544248;
  sub_1AF5D1EC0(v10);
  sub_1AFCBA0DC(v61, &qword_1EB632C38, &type metadata for TextureArrayFileAsset, &off_1F2544168);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v148[0] = v62[0];
  v148[1] = v62[1];
  v149 = v63;
  sub_1AF6B06C0(v3, v148, 0x200000000, &v64);
  if (v64)
  {
    v254 = v67;
    v255 = v68;
    v256 = v69;
    v252 = v65;
    v253 = v66;
    v257 = v70;
    v251 = v64;
    sub_1AFD07B58(&v251);
    sub_1AFCB9F58(&v64, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
  }

  v245 = v5;
  v246 = v6;
  v247 = v4 >> 31;
  v248 = 1;
  v249 = 2;
  v250 = 0;

  sub_1AF7051F4(1, v71);

  v146[0] = v71[0];
  v146[1] = v71[1];
  v147 = v72;
  sub_1AF6B06C0(v3, v146, 0x200000000, &v73);
  if (v73)
  {
    v241 = v76;
    v242 = v77;
    v243 = v78;
    v239 = v74;
    v240 = v75;
    v244 = v79;
    v238 = v73;
    sub_1AFD07BBC(&v238);
    sub_1AFCB9F58(&v73, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
  }

  v232 = v5;
  v233 = v6;
  v234 = v4 >> 31;
  v235 = 1;
  v236 = 2;
  v237 = 0;

  sub_1AF705208(1, v80);

  v144[0] = v80[0];
  v144[1] = v80[1];
  v145 = v81;
  sub_1AF6B06C0(v3, v144, 0x200000000, &v82);
  if (v82)
  {
    v228 = v85;
    v229 = v86;
    v230 = v87;
    v226 = v83;
    v227 = v84;
    v231 = v88;
    v225 = v82;
    sub_1AFD07BE4(&v225);
    sub_1AFCB9F58(&v82, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
  }

  v219 = v5;
  v220 = v6;
  v221 = v4 >> 31;
  v222 = 1;
  v223 = 2;
  v224 = 0;

  sub_1AF70521C(1, v89);

  v142[0] = v89[0];
  v142[1] = v89[1];
  v143 = v90;
  sub_1AF6B06C0(v3, v142, 0x200000000, &v91);
  if (v91)
  {
    v215 = v94;
    v216 = v95;
    v217 = v96;
    v213 = v92;
    v214 = v93;
    v218 = v97;
    v212 = v91;
    sub_1AFD07C0C(&v212);
    sub_1AFCB9F58(&v91, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
  }

  v206 = v5;
  v207 = v6;
  v208 = v4 >> 31;
  v209 = 1;
  v210 = 2;
  v211 = 0;

  sub_1AF705230(1, v98);

  v140[0] = v98[0];
  v140[1] = v98[1];
  v141 = v99;
  sub_1AF6B06C0(v3, v140, 0x200000000, &v100);
  if (v100)
  {
    v202 = v103;
    v203 = v104;
    v204 = v105;
    v200 = v101;
    v201 = v102;
    v205 = v106;
    v199 = v100;
    sub_1AFD07C34(&v199);
    sub_1AFCB9F58(&v100, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
  }

  v193 = v5;
  v194 = v6;
  v195 = v4 >> 31;
  v196 = 1;
  v197 = 2;
  v198 = 0;

  sub_1AF705244(1, v107);

  v138[0] = v107[0];
  v138[1] = v107[1];
  v139 = v108;
  sub_1AF6B06C0(v3, v138, 0x200000000, &v109);
  if (v109)
  {
    v189 = v112;
    v190 = v113;
    v191 = v114;
    v187 = v110;
    v188 = v111;
    v192 = v115;
    v186 = v109;
    sub_1AFD07C5C(&v186);
    sub_1AFCB9F58(&v109, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
  }

  v180 = v5;
  v181 = v6;
  v182 = v4 >> 31;
  v183 = 1;
  v184 = 2;
  v185 = 0;

  sub_1AF705258(1, v116);

  v136[0] = v116[0];
  v136[1] = v116[1];
  v137 = v117;
  sub_1AF6B06C0(v3, v136, 0x200000000, &v118);
  if (v118)
  {
    v176 = v121;
    v177 = v122;
    v178 = v123;
    v174 = v119;
    v175 = v120;
    v179 = v124;
    v173 = v118;
    sub_1AFD07C84(&v173);
    sub_1AFCB9F58(&v118, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
  }

  v167 = v5;
  v168 = v6;
  v169 = v4 >> 31;
  v170 = 1;
  v171 = 2;
  v172 = 0;

  sub_1AF70526C(1, v125);

  v134[0] = v125[0];
  v134[1] = v125[1];
  v135 = v126;
  sub_1AF6B06C0(v3, v134, 0x200000000, &v127);
  if (v127)
  {
    v163 = v130;
    v164 = v131;
    v165 = v132;
    v161 = v128;
    v162 = v129;
    v166 = v133;
    v160 = v127;
    sub_1AFD07CAC(&v160);
    sub_1AFCBA0DC(v125, &qword_1EB632C20, &type metadata for TextureRequireIOSurface, &off_1F2546278);
    sub_1AFCBA0DC(v116, &qword_1EB632BF8, &type metadata for TextureRequirePremultiplyWithLinearAlpha, &off_1F2546258);
    sub_1AFCBA0DC(v107, &qword_1EB632C10, &type metadata for TextureRequireMipmapGeneration, &off_1F2546238);
    sub_1AFCBA0DC(v98, &qword_1EB632C48, &type metadata for TextureRequireMipmap, &off_1F2546458);
    sub_1AFCBA0DC(v89, &qword_1EB632C30, &type metadata for TextureRequireCubemap, &off_1F2546218);
    sub_1AFCBA0DC(v80, &qword_1EB632C18, &type metadata for TextureRequireUnpremultiply, &off_1F25461F8);
    sub_1AFCBA0DC(v71, &qword_1EB632C28, &type metadata for TextureRequireNonSRGB, &off_1F25461D8);
    sub_1AFCBA0DC(v62, &qword_1EB632C38, &type metadata for TextureArrayFileAsset, &off_1F2544168);
    sub_1AFCBA0DC(v52, &qword_1ED723D88, &type metadata for TextureFileAsset, &off_1F2544090);
    sub_1AFCBA0DC(v42, &qword_1EB632C00, &type metadata for TextureRequireGPURepresentation, &off_1F25442D0);
    sub_1AFCBA0DC(v33, &qword_1EB632C38, &type metadata for TextureArrayFileAsset, &off_1F2544168);
    sub_1AFCBA0DC(v23, &qword_1ED723D88, &type metadata for TextureFileAsset, &off_1F2544090);
    sub_1AFCBA0DC(v13, &qword_1EB632C08, &type metadata for TextureRequireCPURepresentation, &off_1F2544440);
    return sub_1AFCB9F58(&v127, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
  }

  else
  {
    sub_1AFCBA0DC(v125, &qword_1EB632C20, &type metadata for TextureRequireIOSurface, &off_1F2546278);
    sub_1AFCBA0DC(v116, &qword_1EB632BF8, &type metadata for TextureRequirePremultiplyWithLinearAlpha, &off_1F2546258);
    sub_1AFCBA0DC(v107, &qword_1EB632C10, &type metadata for TextureRequireMipmapGeneration, &off_1F2546238);
    sub_1AFCBA0DC(v98, &qword_1EB632C48, &type metadata for TextureRequireMipmap, &off_1F2546458);
    sub_1AFCBA0DC(v89, &qword_1EB632C30, &type metadata for TextureRequireCubemap, &off_1F2546218);
    sub_1AFCBA0DC(v80, &qword_1EB632C18, &type metadata for TextureRequireUnpremultiply, &off_1F25461F8);
    sub_1AFCBA0DC(v71, &qword_1EB632C28, &type metadata for TextureRequireNonSRGB, &off_1F25461D8);
    sub_1AFCBA0DC(v62, &qword_1EB632C38, &type metadata for TextureArrayFileAsset, &off_1F2544168);
    sub_1AFCBA0DC(v52, &qword_1ED723D88, &type metadata for TextureFileAsset, &off_1F2544090);
    sub_1AFCBA0DC(v42, &qword_1EB632C00, &type metadata for TextureRequireGPURepresentation, &off_1F25442D0);
    sub_1AFCBA0DC(v33, &qword_1EB632C38, &type metadata for TextureArrayFileAsset, &off_1F2544168);
    sub_1AFCBA0DC(v23, &qword_1ED723D88, &type metadata for TextureFileAsset, &off_1F2544090);
    return sub_1AFCBA0DC(v13, &qword_1EB632C08, &type metadata for TextureRequireCPURepresentation, &off_1F2544440);
  }
}

double sub_1AFCB4B60(uint64_t a1, uint64_t a2, uint64_t a3, double result)
{
  if (*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_isVFX2) == 1 && a3 >= 2024)
  {
    v4 = a2;
    v5 = a2 & 0x100000000;
    sub_1AFA1CFD4(0, &qword_1ED72F7D0, &qword_1ED72FFE0, &qword_1ED72FFF0, &protocol descriptor for EntityComponent);
    v6 = swift_allocObject();
    v6[4] = &type metadata for ParticlePlaneCollider;
    v186 = v6 + 4;
    v6[5] = &off_1F25530C8;
    v6[6] = &type metadata for ParticleSphereCollider;
    v6[7] = &off_1F2553488;
    v6[8] = &type metadata for ParticleBoxCollider;
    v6[9] = &off_1F2552898;
    v6[10] = &type metadata for ParticleCylinderCollider;
    v6[11] = &off_1F2552A70;
    v6[12] = &type metadata for ParticleSDFCollider;
    v6[13] = &off_1F25532A8;
    v6[14] = &type metadata for ParticleMeshCollider;
    v6[15] = &off_1F2552EB8;
    v6[16] = &type metadata for EmitterDescription;
    v6[17] = &off_1F2563648;
    v6[18] = &type metadata for KillShape;
    v6[19] = &off_1F2561EB0;
    v6[20] = &type metadata for ForceField;
    v6[21] = &off_1F2560F10;
    if (qword_1ED72D720 != -1)
    {
      swift_once();
    }

    if (v5)
    {
      v7 = 0;
    }

    else
    {
      v7 = v4;
    }

    v198 = v7;
    sub_1AFA1CFD4(0, &qword_1ED7269A0, &qword_1ED7270C0, &qword_1ED7270D0, &protocol descriptor for Component);
    v8 = 0;
    v9 = 0;
    v197 = v5 >> 31;
    do
    {
      v187 = v8;
      v10 = &v186[2 * v8];
      v12 = *v10;
      v11 = v10[1];
      v13 = qword_1ED73B840;
      v313 = qword_1ED73B840;
      v314 = v198;
      v315 = v197;
      v316 = 1;
      v317 = 2;
      v318 = 0;
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1AFE4C620;
      v15 = *(v11 + 8);
      v194 = v12;
      *(v14 + 32) = v12;
      *(v14 + 40) = v15;
      v193 = v15;
      *(v14 + 48) = &type metadata for Position;
      *(v14 + 56) = &off_1F252EDF0;

      sub_1AFC8E240(v14, v259);
      v196 = v13;

      swift_setDeallocating();
      swift_deallocClassInstance();
      sub_1AF6B06C0(a1, v259, 0x200000000, v260);
      if (*&v260[0])
      {
        if (v264 >= 1 && v262)
        {
          v16 = v261;
          v17 = v263;
          v18 = v261 + 48 * v262;
          v188 = v18;
          v192 = v263;
          do
          {
            v19 = *(v16 + 40);
            v20 = *(v19 + 376);
            swift_retain_n();
            os_unfair_lock_lock(v20);
            os_unfair_lock_lock(*(v19 + 344));
            v21 = *(v19 + 24);

            v251 = 0;
            v249 = 0u;
            v250 = 0u;
            v258 = 0;
            v256 = 0u;
            v257 = 0u;
            v22 = sub_1AF65A4B4(v21, 0, 0, &type metadata for Position, &off_1F252EE70, &v249, &v256);

            sub_1AFCB9FB8(&v256, sub_1AF5C4448);
            sub_1AFCB9FB8(&v249, sub_1AF5C4448);
            if (sub_1AF649CEC(v22))
            {
              sub_1AF649D40(v22, v17);
            }

            else
            {
              v209 = v16;
              v23 = *(v19 + 232);
              v24 = *(v19 + 240);
              v204 = *(v19 + 120);
              v244 = *(v19 + 28);
              v239 = *(v19 + 32);
              v25 = *(v19 + 16);
              v26 = *(v19 + 40);
              v27 = *(v26 + 200);
              v234 = *(*(v25 + 88) + 8 * v22 + 32);

              if ((v27 & 1) != 0 || *(v234 + 200) == 1)
              {
                *(v25 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
                v26 = *(v19 + 40);
              }

              v224 = *(v19 + 128);
              v28 = *(v19 + 256);
              sub_1AF5B4FCC(v26, v23, v24, 0, v19);
              v214 = *(v19 + 256);
              v219 = v28;
              v29 = v214 - v28;
              if (v214 == v28)
              {
                v30 = 0;
              }

              else
              {
                v30 = v28;
              }

              *&v256 = v30;
              v31 = *(*(v19 + 40) + 24);
              v32 = *(v31 + 16);
              if (v32)
              {
                v229 = v9;
                v33 = v31 + 32;

                for (i = 0; i != v32; ++i)
                {
                  v35 = (v33 + 40 * i);
                  if ((v35[4] & 1) == 0)
                  {
                    v36 = *v35;
                    v38 = v35[2];
                    v37 = v35[3];
                    v39 = *(v234 + 24);
                    v40 = *(v39 + 16);
                    if (v40)
                    {
                      v41 = (v39 + 32);
                      while (*v41 != v36)
                      {
                        v41 += 5;
                        if (!--v40)
                        {
                          goto LABEL_26;
                        }
                      }
                    }

                    else
                    {
LABEL_26:
                      sub_1AF640BC8(v224 + v38 * v30 + v37, v29);
                    }
                  }
                }

                v9 = v229;
              }

              v17 = v192;
              if (*(v25 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
              {
                vfx_counters.add(_:_:)(*(v25 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v19 + 72) * v29);
              }

              if (*(v19 + 184))
              {
                v42 = 0;
              }

              else
              {
                v42 = *(v19 + 168);
              }

              v255 = 0;

              MEMORY[0x1EEE9AC00](v43);
              v44 = v244;
              v45 = v239;
              DWORD2(v250) = -1;
              v251 = v219;
              v252 = v214;
              v253 = v219;
              v254 = v214;
              *&v249 = v219;
              *(&v249 + 1) = v214;
              *&v250 = v42;
              if (v29 < 1)
              {

                v16 = v209;
              }

              else
              {
                v16 = v209;
                do
                {
                  sub_1AF6248A8(v22, v44 | (v45 << 32), v204, v25, &v249, sub_1AF5C5E08);
                  v45 = v239;
                  v44 = v244;
                }

                while ((*(&v249 + 1) - v249) > 0);

                v17 = v192;
              }

              v46 = *(v19 + 192);
              v18 = v188;
              if (v46)
              {
                v47 = *(v19 + 208);
                sub_1AF75D364(v219, v214, v46);
                sub_1AF75D364(v219, v214, v47);
              }
            }

            v16 += 48;
            os_unfair_lock_unlock(*(v19 + 344));
            os_unfair_lock_unlock(*(v19 + 376));
          }

          while (v16 != v18);
        }

        sub_1AFCB9F58(v260, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
      }

      v307 = v196;
      v308 = v198;
      v309 = v197;
      v310 = 1;
      v311 = 2;
      v312 = 0;
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_1AFE4C620;
      *(v48 + 32) = v194;
      *(v48 + 40) = v193;
      *(v48 + 48) = &type metadata for Orientation;
      *(v48 + 56) = &off_1F252C828;

      sub_1AFC8E240(v48, v265);

      swift_setDeallocating();
      swift_deallocClassInstance();
      sub_1AF6B06C0(a1, v265, 0x200000000, v266);
      if (*&v266[0])
      {
        if (v270 >= 1 && v268)
        {
          v49 = v267;
          v215 = v269;
          v50 = v267 + 48 * v268;
          v189 = v50;
          do
          {
            v51 = *(v49 + 40);
            v52 = *(v51 + 376);
            swift_retain_n();
            os_unfair_lock_lock(v52);
            os_unfair_lock_lock(*(v51 + 344));
            v53 = *(v51 + 24);

            v251 = 0;
            v249 = 0u;
            v250 = 0u;
            v258 = 0;
            v256 = 0u;
            v257 = 0u;
            v54 = sub_1AF65A4B4(v53, 0, 0, &type metadata for Orientation, &off_1F252C8A8, &v249, &v256);

            sub_1AFCB9FB8(&v256, sub_1AF5C4448);
            sub_1AFCB9FB8(&v249, sub_1AF5C4448);
            if (sub_1AF649CEC(v54))
            {
              sub_1AF649D40(v54, v215);
            }

            else
            {
              v210 = v49;
              v55 = *(v51 + 232);
              v56 = *(v51 + 240);
              v200 = *(v51 + 120);
              v235 = *(v51 + 28);
              v57 = *(v51 + 32);
              v58 = *(v51 + 16);
              v59 = *(v51 + 40);
              v60 = *(v59 + 200);
              v245 = *(*(v58 + 88) + 8 * v54 + 32);

              if ((v60 & 1) != 0 || *(v245 + 200) == 1)
              {
                *(v58 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
                v59 = *(v51 + 40);
              }

              v205 = v57;
              v61 = v9;
              v62 = v235;
              v240 = *(v51 + 128);
              v63 = *(v51 + 256);
              sub_1AF5B4FCC(v59, v55, v56, 0, v51);
              v220 = *(v51 + 256);
              v225 = v63;
              v64 = v220 - v63;
              if (v220 == v63)
              {
                v65 = 0;
              }

              else
              {
                v65 = v63;
              }

              *&v256 = v65;
              v66 = *(*(v51 + 40) + 24);
              v67 = *(v66 + 16);
              v230 = v61;
              if (v67)
              {
                v68 = v66 + 32;

                v69 = 0;
                v70 = v64;
                do
                {
                  v71 = (v68 + 40 * v69);
                  if ((v71[4] & 1) == 0)
                  {
                    v72 = *v71;
                    v74 = v71[2];
                    v73 = v71[3];
                    v75 = *(v245 + 24);
                    v76 = *(v75 + 16);
                    if (v76)
                    {
                      v77 = (v75 + 32);
                      while (*v77 != v72)
                      {
                        v77 += 5;
                        if (!--v76)
                        {
                          goto LABEL_64;
                        }
                      }
                    }

                    else
                    {
LABEL_64:
                      sub_1AF640BC8(v240 + v74 * v65 + v73, v64);
                    }
                  }

                  ++v69;
                }

                while (v69 != v67);

                v62 = v235;
              }

              else
              {
                v70 = v220 - v63;
              }

              if (*(v58 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
              {
                vfx_counters.add(_:_:)(*(v58 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v51 + 72) * v70);
              }

              v78 = v70;
              if (*(v51 + 184))
              {
                v79 = 0;
              }

              else
              {
                v79 = *(v51 + 168);
              }

              v255 = 0;

              MEMORY[0x1EEE9AC00](v80);
              *(&v249 + 1) = v220;
              *&v250 = v79;
              DWORD2(v250) = -1;
              v251 = v225;
              v252 = v220;
              v253 = v225;
              v254 = v220;
              *&v249 = v225;
              if (v78 >= 1)
              {
                do
                {
                  sub_1AF6248A8(v54, v62 | (v205 << 32), v200, v58, &v249, sub_1AF5C5E08);
                }

                while ((*(&v249 + 1) - v249) > 0);
              }

              v9 = v230;
              v81 = *(v51 + 192);
              v49 = v210;
              v50 = v189;
              if (v81)
              {
                v82 = *(v51 + 208);
                sub_1AF75D364(v225, v220, v81);
                sub_1AF75D364(v225, v220, v82);
              }
            }

            v49 += 48;
            os_unfair_lock_unlock(*(v51 + 344));
            os_unfair_lock_unlock(*(v51 + 376));
          }

          while (v49 != v50);
        }

        sub_1AFCB9F58(v266, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
      }

      v301 = v196;
      v302 = v198;
      v303 = v197;
      v304 = 1;
      v305 = 2;
      v306 = 0;
      v83 = swift_allocObject();
      *(v83 + 16) = xmmword_1AFE4C620;
      *(v83 + 32) = v194;
      *(v83 + 40) = v193;
      *(v83 + 48) = &type metadata for Scale3;
      *(v83 + 56) = &off_1F252F918;

      sub_1AFC8E240(v83, v271);

      swift_setDeallocating();
      swift_deallocClassInstance();
      sub_1AF6B06C0(a1, v271, 0x200000000, v272);
      if (*&v272[0])
      {
        if (v276 >= 1 && v274)
        {
          v84 = v273;
          v216 = v275;
          v85 = v273 + 48 * v274;
          v190 = v85;
          do
          {
            v86 = *(v84 + 40);
            v87 = *(v86 + 376);
            swift_retain_n();
            os_unfair_lock_lock(v87);
            os_unfair_lock_lock(*(v86 + 344));
            v88 = *(v86 + 24);

            v251 = 0;
            v249 = 0u;
            v250 = 0u;
            v258 = 0;
            v256 = 0u;
            v257 = 0u;
            v89 = sub_1AF65A4B4(v88, 0, 0, &type metadata for Scale3, &off_1F252F998, &v249, &v256);

            sub_1AFCB9FB8(&v256, sub_1AF5C4448);
            sub_1AFCB9FB8(&v249, sub_1AF5C4448);
            if (sub_1AF649CEC(v89))
            {
              sub_1AF649D40(v89, v216);
            }

            else
            {
              v211 = v84;
              v90 = *(v86 + 232);
              v91 = *(v86 + 240);
              v201 = *(v86 + 120);
              v236 = *(v86 + 28);
              v92 = *(v86 + 32);
              v93 = *(v86 + 16);
              v94 = *(v86 + 40);
              v95 = *(v94 + 200);
              v246 = *(*(v93 + 88) + 8 * v89 + 32);

              if ((v95 & 1) != 0 || *(v246 + 200) == 1)
              {
                *(v93 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
                v94 = *(v86 + 40);
              }

              v206 = v92;
              v96 = v9;
              v97 = v236;
              v241 = *(v86 + 128);
              v98 = *(v86 + 256);
              sub_1AF5B4FCC(v94, v90, v91, 0, v86);
              v221 = *(v86 + 256);
              v226 = v98;
              v99 = v221 - v98;
              if (v221 == v98)
              {
                v100 = 0;
              }

              else
              {
                v100 = v98;
              }

              *&v256 = v100;
              v101 = *(*(v86 + 40) + 24);
              v102 = *(v101 + 16);
              v231 = v96;
              if (v102)
              {
                v103 = v101 + 32;

                v104 = 0;
                v105 = v99;
                do
                {
                  v106 = (v103 + 40 * v104);
                  if ((v106[4] & 1) == 0)
                  {
                    v107 = *v106;
                    v109 = v106[2];
                    v108 = v106[3];
                    v110 = *(v246 + 24);
                    v111 = *(v110 + 16);
                    if (v111)
                    {
                      v112 = (v110 + 32);
                      while (*v112 != v107)
                      {
                        v112 += 5;
                        if (!--v111)
                        {
                          goto LABEL_100;
                        }
                      }
                    }

                    else
                    {
LABEL_100:
                      sub_1AF640BC8(v241 + v109 * v100 + v108, v99);
                    }
                  }

                  ++v104;
                }

                while (v104 != v102);

                v97 = v236;
              }

              else
              {
                v105 = v221 - v98;
              }

              if (*(v93 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
              {
                vfx_counters.add(_:_:)(*(v93 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v86 + 72) * v105);
              }

              v113 = v105;
              if (*(v86 + 184))
              {
                v114 = 0;
              }

              else
              {
                v114 = *(v86 + 168);
              }

              v255 = 0;

              MEMORY[0x1EEE9AC00](v115);
              *(&v249 + 1) = v221;
              *&v250 = v114;
              DWORD2(v250) = -1;
              v251 = v226;
              v252 = v221;
              v253 = v226;
              v254 = v221;
              *&v249 = v226;
              if (v113 >= 1)
              {
                do
                {
                  sub_1AF6248A8(v89, v97 | (v206 << 32), v201, v93, &v249, sub_1AF5C5E08);
                }

                while ((*(&v249 + 1) - v249) > 0);
              }

              v9 = v231;
              v116 = *(v86 + 192);
              v84 = v211;
              v85 = v190;
              if (v116)
              {
                v117 = *(v86 + 208);
                sub_1AF75D364(v226, v221, v116);
                sub_1AF75D364(v226, v221, v117);
              }
            }

            v84 += 48;
            os_unfair_lock_unlock(*(v86 + 344));
            os_unfair_lock_unlock(*(v86 + 376));
          }

          while (v84 != v85);
        }

        sub_1AFCB9F58(v272, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
      }

      v295 = v196;
      v296 = v198;
      v297 = v197;
      v298 = 1;
      v299 = 2;
      v300 = 0;
      v118 = swift_allocObject();
      *(v118 + 16) = xmmword_1AFE4C620;
      *(v118 + 32) = v194;
      *(v118 + 40) = v193;
      *(v118 + 48) = &type metadata for Scale2;
      *(v118 + 56) = &off_1F252F7B8;

      sub_1AFC8E240(v118, v277);

      swift_setDeallocating();
      swift_deallocClassInstance();
      sub_1AF6B06C0(a1, v277, 0x200000000, v278);
      if (*&v278[0])
      {
        if (v282 >= 1 && v280)
        {
          v119 = v279;
          v217 = v281;
          v120 = v279 + 48 * v280;
          v191 = v120;
          do
          {
            v121 = *(v119 + 40);
            v122 = *(v121 + 376);
            swift_retain_n();
            os_unfair_lock_lock(v122);
            os_unfair_lock_lock(*(v121 + 344));
            v123 = *(v121 + 24);

            v251 = 0;
            v249 = 0u;
            v250 = 0u;
            v258 = 0;
            v256 = 0u;
            v257 = 0u;
            v124 = sub_1AF65A4B4(v123, 0, 0, &type metadata for Scale2, &off_1F252F838, &v249, &v256);

            sub_1AFCB9FB8(&v256, sub_1AF5C4448);
            sub_1AFCB9FB8(&v249, sub_1AF5C4448);
            if (sub_1AF649CEC(v124))
            {
              sub_1AF649D40(v124, v217);
            }

            else
            {
              v212 = v119;
              v125 = *(v121 + 232);
              v126 = *(v121 + 240);
              v202 = *(v121 + 120);
              v237 = *(v121 + 28);
              v127 = *(v121 + 32);
              v128 = *(v121 + 16);
              v129 = *(v121 + 40);
              v130 = *(v129 + 200);
              v247 = *(*(v128 + 88) + 8 * v124 + 32);

              if ((v130 & 1) != 0 || *(v247 + 200) == 1)
              {
                *(v128 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
                v129 = *(v121 + 40);
              }

              v207 = v127;
              v131 = v9;
              v132 = v237;
              v242 = *(v121 + 128);
              v133 = *(v121 + 256);
              sub_1AF5B4FCC(v129, v125, v126, 0, v121);
              v222 = *(v121 + 256);
              v227 = v133;
              v134 = v222 - v133;
              if (v222 == v133)
              {
                v135 = 0;
              }

              else
              {
                v135 = v133;
              }

              *&v256 = v135;
              v136 = *(*(v121 + 40) + 24);
              v137 = *(v136 + 16);
              v232 = v131;
              if (v137)
              {
                v138 = v136 + 32;

                v139 = 0;
                v140 = v134;
                do
                {
                  v141 = (v138 + 40 * v139);
                  if ((v141[4] & 1) == 0)
                  {
                    v142 = *v141;
                    v144 = v141[2];
                    v143 = v141[3];
                    v145 = *(v247 + 24);
                    v146 = *(v145 + 16);
                    if (v146)
                    {
                      v147 = (v145 + 32);
                      while (*v147 != v142)
                      {
                        v147 += 5;
                        if (!--v146)
                        {
                          goto LABEL_136;
                        }
                      }
                    }

                    else
                    {
LABEL_136:
                      sub_1AF640BC8(v242 + v144 * v135 + v143, v134);
                    }
                  }

                  ++v139;
                }

                while (v139 != v137);

                v132 = v237;
              }

              else
              {
                v140 = v222 - v133;
              }

              if (*(v128 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
              {
                vfx_counters.add(_:_:)(*(v128 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v121 + 72) * v140);
              }

              v148 = v140;
              if (*(v121 + 184))
              {
                v149 = 0;
              }

              else
              {
                v149 = *(v121 + 168);
              }

              v255 = 0;

              MEMORY[0x1EEE9AC00](v150);
              *(&v249 + 1) = v222;
              *&v250 = v149;
              DWORD2(v250) = -1;
              v251 = v227;
              v252 = v222;
              v253 = v227;
              v254 = v222;
              *&v249 = v227;
              if (v148 >= 1)
              {
                do
                {
                  sub_1AF6248A8(v124, v132 | (v207 << 32), v202, v128, &v249, sub_1AF5C5E08);
                }

                while ((*(&v249 + 1) - v249) > 0);
              }

              v9 = v232;
              v151 = *(v121 + 192);
              v119 = v212;
              v120 = v191;
              if (v151)
              {
                v152 = *(v121 + 208);
                sub_1AF75D364(v227, v222, v151);
                sub_1AF75D364(v227, v222, v152);
              }
            }

            v119 += 48;
            os_unfair_lock_unlock(*(v121 + 344));
            os_unfair_lock_unlock(*(v121 + 376));
          }

          while (v119 != v120);
        }

        sub_1AFCB9F58(v278, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
      }

      v289 = v196;
      v290 = v198;
      v291 = v197;
      v292 = 1;
      v293 = 2;
      v294 = 0;
      v153 = swift_allocObject();
      *(v153 + 16) = xmmword_1AFE4C620;
      *(v153 + 32) = v194;
      *(v153 + 40) = v193;
      *(v153 + 48) = &type metadata for Scale1;
      *(v153 + 56) = &off_1F252F708;

      sub_1AFC8E240(v153, v283);

      swift_setDeallocating();
      swift_deallocClassInstance();
      sub_1AF6B06C0(a1, v283, 0x200000000, v284);
      if (*&v284[0])
      {
        if (v288 >= 1 && v286)
        {
          v233 = v9;
          v154 = v285;
          v218 = v287;
          v155 = v285 + 48 * v286;
          v195 = v155;
          do
          {
            v156 = *(v154 + 40);
            v157 = *(v156 + 376);
            swift_retain_n();
            os_unfair_lock_lock(v157);
            os_unfair_lock_lock(*(v156 + 344));
            v158 = *(v156 + 24);

            v251 = 0;
            v249 = 0u;
            v250 = 0u;
            v258 = 0;
            v256 = 0u;
            v257 = 0u;
            v159 = sub_1AF65A4B4(v158, 0, 0, &type metadata for Scale1, &off_1F252F788, &v249, &v256);

            sub_1AFCB9FB8(&v256, sub_1AF5C4448);
            sub_1AFCB9FB8(&v249, sub_1AF5C4448);
            if (sub_1AF649CEC(v159))
            {
              sub_1AF649D40(v159, v218);
            }

            else
            {
              v213 = v154;
              v160 = *(v156 + 232);
              v161 = *(v156 + 240);
              v203 = *(v156 + 120);
              v228 = *(v156 + 28);
              v162 = *(v156 + 32);
              v163 = *(v156 + 16);
              v164 = *(v156 + 40);
              v165 = *(v164 + 200);
              v248 = *(*(v163 + 88) + 8 * v159 + 32);

              if ((v165 & 1) != 0 || *(v248 + 200) == 1)
              {
                *(v163 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
                v164 = *(v156 + 40);
              }

              v243 = *(v156 + 128);
              v166 = *(v156 + 256);
              v167 = v228;
              sub_1AF5B4FCC(v164, v160, v161, 0, v156);
              v208 = *(v156 + 256);
              v168 = v208 - v166;
              v223 = v166;
              if (v208 == v166)
              {
                v169 = 0;
              }

              else
              {
                v169 = v166;
              }

              v238 = v169;
              *&v256 = v169;
              v170 = *(*(v156 + 40) + 24);
              v171 = *(v170 + 16);
              if (v171)
              {
                v172 = v170 + 32;

                for (j = 0; j != v171; ++j)
                {
                  v174 = (v172 + 40 * j);
                  if ((v174[4] & 1) == 0)
                  {
                    v175 = *v174;
                    v177 = v174[2];
                    v176 = v174[3];
                    v178 = *(v248 + 24);
                    v179 = *(v178 + 16);
                    if (v179)
                    {
                      v180 = (v178 + 32);
                      while (*v180 != v175)
                      {
                        v180 += 5;
                        if (!--v179)
                        {
                          goto LABEL_172;
                        }
                      }
                    }

                    else
                    {
LABEL_172:
                      sub_1AF640BC8(v243 + v177 * v238 + v176, v168);
                    }
                  }
                }

                v167 = v228;
              }

              if (*(v163 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
              {
                vfx_counters.add(_:_:)(*(v163 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v156 + 72) * v168);
              }

              if (*(v156 + 184))
              {
                v181 = 0;
              }

              else
              {
                v181 = *(v156 + 168);
              }

              v255 = 0;

              MEMORY[0x1EEE9AC00](v182);
              *(&v249 + 1) = v208;
              *&v250 = v181;
              DWORD2(v250) = -1;
              v251 = v223;
              v252 = v208;
              v253 = v223;
              v254 = v208;
              *&v249 = v223;
              if (v168 >= 1)
              {
                do
                {
                  sub_1AF6248A8(v159, v167 | (v162 << 32), v203, v163, &v249, sub_1AF5C5E08);
                }

                while ((*(&v249 + 1) - v249) > 0);
              }

              v183 = *(v156 + 192);
              v154 = v213;
              v155 = v195;
              if (v183)
              {
                v184 = *(v156 + 208);
                sub_1AF75D364(v223, v208, v183);
                sub_1AF75D364(v223, v208, v184);
              }
            }

            v154 += 48;
            os_unfair_lock_unlock(*(v156 + 344));
            os_unfair_lock_unlock(*(v156 + 376));
          }

          while (v154 != v155);
          sub_1AF692DB0(v283);
          sub_1AF692DB0(v277);
          sub_1AF692DB0(v271);
          sub_1AF692DB0(v265);
          sub_1AF692DB0(v259);
          sub_1AFCB9F58(v284, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
          v9 = v233;
        }

        else
        {
          sub_1AF692DB0(v283);
          sub_1AF692DB0(v277);
          sub_1AF692DB0(v271);
          sub_1AF692DB0(v265);
          sub_1AF692DB0(v259);
          sub_1AFCB9F58(v284, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
        }
      }

      else
      {
        sub_1AF692DB0(v283);
        sub_1AF692DB0(v277);
        sub_1AF692DB0(v271);
        sub_1AF692DB0(v265);
        sub_1AF692DB0(v259);
      }

      v8 = v187 + 1;
    }

    while (v187 != 8);
    swift_setDeallocating();
    swift_deallocClassInstance();
  }

  return v185;
}

uint64_t sub_1AFCB686C(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0x100000000;
  if (qword_1ED72D720 != -1)
  {
    v7 = a2;
    swift_once();
    LODWORD(a2) = v7;
  }

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  v23 = qword_1ED73B840;
  v24 = v4;
  v25 = v3 >> 31;
  v26 = 1;
  v27 = 2;
  v28 = 0;
  sub_1AFA1CFD4(0, &qword_1ED7269A0, &qword_1ED7270C0, &qword_1ED7270D0, &protocol descriptor for Component);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE4C620;
  *(inited + 32) = &type metadata for Authoring;
  *(inited + 40) = &off_1F2562C70;
  *(inited + 48) = &type metadata for OrthographicCamera;
  *(inited + 56) = &off_1F2511C70;

  sub_1AFC8E240(inited, v8);

  swift_setDeallocating();
  sub_1AF6B06C0(a1, v8, 0x200000000, &v9);
  if (!v9)
  {
    return sub_1AF692DB0(v8);
  }

  v19 = v12;
  v20 = v13;
  v21 = v14;
  v16 = v9;
  v22 = v15;
  v17 = v10;
  v18 = v11;
  sub_1AF6B8EAC(0);
  sub_1AF692DB0(v8);
  return sub_1AFCB9F58(&v9, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
}

void *sub_1AFCB6A68(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v122 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v10 = result;
    v11 = [result assetRegistry];
    v12 = [v11 rootNode];

    v13 = swift_allocObject();
    *(v13 + 16) = a3;
    *(v13 + 24) = 0;
    *&aBlock[32] = a4;
    *&aBlock[40] = v13;
    *aBlock = MEMORY[0x1E69E9820];
    *&aBlock[8] = 1107296256;
    *&aBlock[16] = sub_1AF92EF7C;
    *&aBlock[24] = a5;
    v14 = _Block_copy(aBlock);

    [v12 enumerateHierarchyUsingBlock_];

    _Block_release(v14);
    swift_isEscapingClosureAtFileLocation();

    if (qword_1ED72D720 != -1)
    {
      swift_once();
    }

    v101 = qword_1ED73B840;
    v102 = 0;
    v103 = 2;
    v104 = 0;
    v105 = 2;
    v106 = 0;
    sub_1AF705058(1, &v86);
    v95 = v86;
    v96 = v87;
    v97 = v88;
    v98 = v89 | 1;
    v99 = v90;
    v100 = v91;
    v15 = [v10 scene];
    v16 = *&v15[OBJC_IVAR____TtC3VFX8VFXScene_entityManager];

    sub_1AF6B06C0(v16, &v95, 0x200000000, aBlock);
    v112 = *&aBlock[32];
    v113 = v117;
    v114 = v118;
    v115 = v119;
    v110 = *aBlock;
    v111 = *&aBlock[16];

    v75 = *aBlock;
    if (!*aBlock)
    {
      return sub_1AFCBA0DC(&v86, &qword_1EB633D00, &type metadata for GraphComponent, &off_1F2547EF8);
    }

    v74 = *&aBlock[40];
    v17 = *(&v117 + 1);
    v18 = *(&v118 + 1);
    v120 = *&aBlock[8];
    v121 = *&aBlock[24];
    if (v119 <= 0 || !*(&v117 + 1))
    {
      sub_1AFCBA0DC(&v86, &qword_1EB633D00, &type metadata for GraphComponent, &off_1F2547EF8);
      v69 = MEMORY[0x1E69E6720];
      return sub_1AFCB9F58(aBlock, &qword_1ED725EA0, &type metadata for QueryResult, v69, sub_1AFCBA88C);
    }

    v78 = *(*(&v118 + 1) + 32);
    v19 = *(v118 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v109[2] = v112;
    v109[3] = v113;
    v109[4] = v114;
    v109[5] = v115;
    v109[0] = v110;
    v109[1] = v111;
    sub_1AF5DD298(v109, v107);
    v20 = 0;
    v72 = v18;
    v73 = v17;
    v71 = v19;
    while (1)
    {
      v77 = v20;
      v21 = (v74 + 48 * v20);
      v22 = *v21;
      v24 = *(v21 + 2);
      v23 = *(v21 + 3);
      v25 = *(v21 + 5);
      v79 = v21[1];
      v80 = *(v21 + 4);
      if (v19)
      {
        v26 = *(v25 + 376);

        os_unfair_lock_lock(v26);
        os_unfair_lock_lock(*(v25 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v78);
      v27 = *(v18 + 4);
      v107[0] = *(v18 + 3);
      v107[1] = v27;
      v108 = v18[10];
      v28 = *(*(*(*(v25 + 40) + 16) + 32) + 16) + 1;
      v18[6] = ecs_stack_allocator_allocate(v18[4], 48 * v28, 8);
      v18[7] = v28;
      v18[9] = 0;
      v18[10] = 0;
      v18[8] = 0;
      v76 = v25;
      v81 = sub_1AF64B110(&type metadata for GraphComponent, &off_1F2547EF8, v24, v23, v80, v18);
      if (v24)
      {
        if (v80)
        {
          v29 = 0;
          while (1)
          {
            v30 = *&v81[8 * v29];
            v31 = MEMORY[0x1E69E7CC0];
            v84 = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]);
            v85 = v32;
            v33 = (v30 + 24);
            v34 = *(v30 + 24);
            v35 = sub_1AF42B2DC(v31);
            v82 = v31;
            v83 = v35;
            if (v34 >> 62)
            {
              v36 = sub_1AFDFE108();
            }

            else
            {
              v36 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            swift_bridgeObjectRetain_n();

            if (v36)
            {
              for (i = 0; i != v36; ++i)
              {
                if ((v34 & 0xC000000000000001) != 0)
                {
                  v38 = MEMORY[0x1B2719C70](i, v34);
                }

                else
                {
                  v38 = *(v34 + 8 * i + 32);
                }

                sub_1AF418138(v38, v30, 1, 0x1000000000000000uLL, 0, MEMORY[0x1E69E7CC0], a6, 0, &v83, &v84, &v82);
              }
            }

            if (v82 >> 62)
            {
              if (sub_1AFDFE108())
              {
LABEL_28:
                v39 = v82;
                if (v82 >> 62)
                {
                  sub_1AFDFE108();
                }

                if (*v33 >> 62)
                {
                  sub_1AFDFE108();
                }

                sub_1AF5AA5A8();
                v40 = *v33;
                v41 = *v33 & 0xFFFFFFFFFFFFFF8;
                sub_1AF56DE9C(v41 + 8 * *(v41 + 0x10) + 32, (*(v41 + 0x18) >> 1) - *(v41 + 0x10), v39);
                v43 = v42;

                if (v43 >= 1)
                {
                  *(v41 + 16) += v43;
                }

                *v33 = v40;
              }
            }

            else if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_28;
            }

            if (++v29 == v80)
            {
              goto LABEL_38;
            }
          }
        }

        goto LABEL_38;
      }

      if (v22 != v79)
      {
        break;
      }

LABEL_38:
      v92 = v75;
      v93 = v120;
      v94 = v121;
      v18 = v72;
      sub_1AF630994(v72, &v92, v107);
      if (*(v72[13] + 16))
      {

        sub_1AF62F348(v44, v76);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v46 = v72[13];
        if (isUniquelyReferenced_nonNull_native)
        {
          v47 = v46[2];
          v48 = swift_isUniquelyReferenced_nonNull_native();
          v72[13] = v46;
          if ((v48 & 1) == 0)
          {
            v46 = sub_1AF420EA0(0, v47, 1, v46);
            v72[13] = v46;
          }

          sub_1AF43A540(0);
          swift_arrayDestroy();
          if (v47)
          {
            v49 = v46[2] - v47;
            memmove(v46 + 4, &v46[9 * v47 + 4], 72 * v49);
            v46[2] = v49;
          }

          v72[13] = v46;
        }

        else
        {
          v64 = MEMORY[0x1E69E7CC0];
          if (v46[3] >= 2uLL)
          {
            sub_1AFCBA7A8(0, &qword_1ED7269C0, sub_1AF43A540, MEMORY[0x1E69E6F90]);
            v64 = swift_allocObject();
            v65 = j__malloc_size_0(v64);
            v64[2] = 0;
            v64[3] = 2 * ((v65 - 32) / 72);
          }

          v72[13] = v64;
        }

        if (*(v72[2] + OBJC_IVAR____TtC3VFX13EntityManager_currentState) - 1 >= 2)
        {
          v66 = *(v76 + 232);
          v67 = *(v76 + 256);
          if (v66 == v67)
          {
            v68 = *(v76 + 240);
          }

          else
          {
            sub_1AF6497A0(v67, v66);
            v67 = *(v76 + 232);
            v68 = *(v76 + 240);
            if (v68 == v67)
            {
              v68 = 0;
              v67 = 0;
              *(v76 + 232) = 0;
              *(v76 + 240) = 0;
            }
          }

          *(v76 + 248) = v68;
          *(v76 + 256) = v67;
        }
      }

      ecs_stack_allocator_pop_snapshot(v78);
      v19 = v71;
      if (v71)
      {
        os_unfair_lock_unlock(*(v76 + 344));
        os_unfair_lock_unlock(*(v76 + 376));
      }

      v20 = v77 + 1;
      if (v77 + 1 == v73)
      {
        v70 = MEMORY[0x1E69E6720];
        sub_1AFCB9F58(aBlock, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
        sub_1AFCBA0DC(&v86, &qword_1EB633D00, &type metadata for GraphComponent, &off_1F2547EF8);
        v69 = v70;
        return sub_1AFCB9F58(aBlock, &qword_1ED725EA0, &type metadata for QueryResult, v69, sub_1AFCBA88C);
      }
    }

    while (1)
    {
      v50 = *&v81[8 * v22];
      v51 = MEMORY[0x1E69E7CC0];
      v84 = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]);
      v85 = v52;
      v53 = (v50 + 24);
      v54 = *(v50 + 24);
      v55 = sub_1AF42B2DC(v51);
      v82 = v51;
      v83 = v55;
      if (v54 >> 62)
      {
        v56 = sub_1AFDFE108();
      }

      else
      {
        v56 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      swift_bridgeObjectRetain_n();

      if (v56)
      {
        for (j = 0; j != v56; ++j)
        {
          if ((v54 & 0xC000000000000001) != 0)
          {
            v58 = MEMORY[0x1B2719C70](j, v54);
          }

          else
          {
            v58 = *(v54 + 8 * j + 32);
          }

          sub_1AF418138(v58, v50, 1, 0x1000000000000000uLL, 0, MEMORY[0x1E69E7CC0], a6, 0, &v83, &v84, &v82);
        }
      }

      if (v82 >> 62)
      {
        if (sub_1AFDFE108())
        {
LABEL_58:
          v59 = v82;
          if (v82 >> 62)
          {
            sub_1AFDFE108();
          }

          if (*v53 >> 62)
          {
            sub_1AFDFE108();
          }

          sub_1AF5AA5A8();
          v60 = *v53;
          v61 = *v53 & 0xFFFFFFFFFFFFFF8;
          sub_1AF56DE9C(v61 + 8 * *(v61 + 0x10) + 32, (*(v61 + 0x18) >> 1) - *(v61 + 0x10), v59);
          v63 = v62;

          if (v63 >= 1)
          {
            *(v61 + 16) += v63;
          }

          *v53 = v60;
        }
      }

      else if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_58;
      }

      ++v22;

      if (v22 == v79)
      {
        goto LABEL_38;
      }
    }
  }

  return result;
}