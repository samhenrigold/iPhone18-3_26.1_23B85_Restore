void sub_1AFC979C4(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a1[1];
  v6 = *a1;
  if (v6 == -1 && v5 == 0)
  {
    goto LABEL_19;
  }

  v8 = 0;
  v9 = 1;
  if ((v6 & 0x80000000) != 0 || *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) <= v6)
  {
LABEL_13:
    v13 = *(a1 + 1);
    if ((a3 & 0x100000000) != 0)
    {
      goto LABEL_20;
    }

LABEL_14:
    if (v8 == a3)
    {
      v14 = v9;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      return;
    }

    goto LABEL_21;
  }

  v10 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v6);
  if (v5 == -1 || v10[2] == v5)
  {
    v12 = *(*(a2 + 144) + 8 * *v10 + 32);
    v8 = *(v12 + 28);
    v9 = *(v12 + 32);
    goto LABEL_13;
  }

LABEL_19:
  v8 = 0;
  v9 = 1;
  v13 = *(a1 + 1);
  if ((a3 & 0x100000000) == 0)
  {
    goto LABEL_14;
  }

LABEL_20:
  if ((v9 & 1) == 0)
  {
    return;
  }

LABEL_21:
  v15 = 0;
  v84 = v6 | (v5 << 32);
  v16 = MEMORY[0x1E69E7CC0];
  v81 = v13;
  do
  {
    v88 = v16;
    v79 = v15;
    v80 = v4;
    v78 = *(&unk_1F2507FB0 + v15 + 32);
    v17 = sub_1AF80E468(v78, v84, v13);
    v18 = *(v17 + 16);
    v82 = v17;
    if (v18)
    {
      v19 = (v17 + 40);
      v20 = *(v17 + 16);
      v21 = MEMORY[0x1E69E7CC0];
      do
      {
        v22 = *(v19 - 2);
        v23 = *(v19 - 1);
        v24 = *v19;

        v25 = v22 == -1 && v23 == 0;
        if (!v25 && (v22 & 0x80000000) == 0 && *(v24 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) > v22 && ((v26 = *(v24 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v22, v23 == -1) || *(v26 + 8) == v23) && (v27 = *(*(*(v24 + 88) + 8 * *(v26 + 6) + 32) + 16), v28 = *(v27 + 128), *(v28 + 16)) && (v29 = sub_1AF449CB8(&type metadata for GraphScriptingConfig), (v30 & 1) != 0))
        {
          v31 = *(*(v27 + 24) + 16 * *(*(v28 + 56) + 8 * v29) + 32);

          if (v31 == &type metadata for GraphScriptingConfig)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v85[0] = v21;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1AFC072B4(0, v21[2] + 1, 1);
              v21 = v85[0];
            }

            v34 = v21[2];
            v33 = v21[3];
            v35 = v34 + 1;
            if (v34 >= v33 >> 1)
            {
              sub_1AFC072B4(v33 > 1, v34 + 1, 1);
              v35 = v34 + 1;
              v21 = v85[0];
            }

            v21[2] = v35;
            v36 = &v21[2 * v34];
            *(v36 + 8) = v22;
            *(v36 + 9) = v23;
            v36[5] = v24;
          }
        }

        else
        {
        }

        v19 += 2;
        --v20;
      }

      while (v20);
    }

    else
    {
      v21 = MEMORY[0x1E69E7CC0];
    }

    v37 = v21[2];
    v38 = v88;
    v39 = *(v88 + 2);
    v40 = v39 + v37;
    v41 = swift_isUniquelyReferenced_nonNull_native();
    if (v41 && v40 <= *(v38 + 3) >> 1)
    {
      if (!v21[2])
      {
        goto LABEL_78;
      }
    }

    else
    {
      if (v39 <= v40)
      {
        v58 = v39 + v37;
      }

      else
      {
        v58 = v39;
      }

      v38 = sub_1AF4238E8(v41, v58, 1, v38);
      if (!v21[2])
      {
LABEL_78:

        v88 = v38;
        if (v18)
        {
          goto LABEL_53;
        }

        goto LABEL_79;
      }
    }

    memcpy(&v38[16 * *(v38 + 2) + 32], v21 + 4, 16 * v37);

    if (v37)
    {
      *(v38 + 2) += v37;
    }

    v88 = v38;
    if (v18)
    {
LABEL_53:
      v42 = (v82 + 40);
      v43 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v45 = *(v42 - 2);
        v44 = *(v42 - 1);
        v46 = *v42;

        if (v45 == -1 && v44 == 0)
        {
          break;
        }

        if (v45 < 0)
        {
          break;
        }

        if (*(v46 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) <= v45)
        {
          break;
        }

        v48 = *(v46 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v45;
        if (v44 != -1 && *(v48 + 8) != v44)
        {
          break;
        }

        v49 = *(*(*(v46 + 88) + 8 * *(v48 + 6) + 32) + 16);
        v50 = *(v49 + 128);
        if (!*(v50 + 16))
        {
          break;
        }

        v51 = sub_1AF449CB8(&type metadata for GraphScriptingConfig);
        if ((v52 & 1) == 0)
        {
          break;
        }

        v53 = *(*(v49 + 24) + 16 * *(*(v50 + 56) + 8 * v51) + 32);

        if (v53 != &type metadata for GraphScriptingConfig)
        {
          goto LABEL_67;
        }

LABEL_72:
        v42 += 2;
        if (!--v18)
        {
          goto LABEL_80;
        }
      }

LABEL_67:
      v54 = swift_isUniquelyReferenced_nonNull_native();
      v85[0] = v43;
      if ((v54 & 1) == 0)
      {
        sub_1AFC072B4(0, *(v43 + 16) + 1, 1);
        v43 = v85[0];
      }

      v56 = *(v43 + 16);
      v55 = *(v43 + 24);
      if (v56 >= v55 >> 1)
      {
        sub_1AFC072B4(v55 > 1, v56 + 1, 1);
        v43 = v85[0];
      }

      *(v43 + 16) = v56 + 1;
      v57 = v43 + 16 * v56;
      *(v57 + 32) = v45;
      *(v57 + 36) = v44;
      *(v57 + 40) = v46;
      goto LABEL_72;
    }

LABEL_79:
    v43 = MEMORY[0x1E69E7CC0];
LABEL_80:

    v13 = v81;
    v59 = *(v81 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

    if (v59)
    {
      v60 = *(v59 + 80);
      swift_unknownObjectWeakLoadStrong();
      v59 = *(v59 + 56);
    }

    else
    {
      v60 = 0;
    }

    v4 = v80;
    v16 = v88;
    v86 = 0;
    swift_unknownObjectUnownedInit();
    v85[0] = v81;
    v86 = v59;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    LOBYTE(v87) = v60;
    sub_1AF80E7C4(v85, v78, v43, v84);
    if (v80)
    {

      sub_1AF579490(v85);
      v76 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v76 ^ 1);
      __break(1u);

      sub_1AF579490(v85);
      v77 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v77 ^ 1);
      __break(1u);
      return;
    }

    v15 = v79 + 1;
    sub_1AF579490(v85);

    if (v60)
    {
      v61 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v61 ^ 1);
    }
  }

  while (v79 != 3);
  v62 = *(v16 + 2);
  if (v62)
  {
    v83 = v62 - 1;
    for (i = (v16 + 40); ; i += 2)
    {
      v64 = *(i - 2);
      v65 = *(i - 1);
      v66 = *i;
      sub_1AF3CB570(v64 | (v65 << 32), v85);
      v67 = v85[0];
      sub_1AF487074(v85[0], v85[1], v86);
      v68 = 0x4030302020101uLL >> (8 * v67);
      v69 = sub_1AF80E468(v68, v84, v81);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v69 = sub_1AF4238E8(0, *(v69 + 16) + 1, 1, v69);
      }

      v71 = *(v69 + 16);
      v70 = *(v69 + 24);
      if (v71 >= v70 >> 1)
      {
        v69 = sub_1AF4238E8(v70 > 1, v71 + 1, 1, v69);
      }

      *(v69 + 16) = v71 + 1;
      v72 = v69 + 16 * v71;
      *(v72 + 32) = v64;
      *(v72 + 36) = v65;
      *(v72 + 40) = v66;
      v73 = *(v81 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

      if (v73)
      {
        v74 = *(v73 + 80);
        swift_unknownObjectWeakLoadStrong();
        v73 = *(v73 + 56);
      }

      else
      {
        v74 = 0;
      }

      v86 = 0;
      swift_unknownObjectUnownedInit();
      v85[0] = v81;
      v86 = v73;
      swift_unknownObjectUnownedAssign();
      swift_unownedRetain();
      swift_unknownObjectRelease();
      LOBYTE(v87) = v74;
      sub_1AF80E7C4(v85, v68, v69, v84);
      sub_1AF579490(v85);

      if (v74)
      {
        v75 = [objc_opt_self() immediateMode];
        sub_1AF6C5E30(v75 ^ 1);
      }

      if (!v83)
      {
        break;
      }

      --v83;
    }
  }
}

uint64_t sub_1AFC981C8(uint64_t a1, uint64_t a2)
{
  v147 = *MEMORY[0x1E69E9840];
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

  v120 = qword_1ED73B840;
  v121 = v4;
  v122 = v3 >> 31;
  v123 = 1;
  v124 = 2;
  v125 = 0;

  sub_1AF7032F8(1, v113);

  v118[0] = v113[0];
  v118[1] = v113[1];
  v119 = v114;
  sub_1AF6B06C0(a1, v118, 0x200000000, v139);
  v99 = *v139;
  if (*v139)
  {
    v97 = *&v139[40];
    v5 = *(&v140 + 1);
    v6 = *(&v141 + 1);
    v143 = *&v139[8];
    v144 = *&v139[24];
    if (v142 > 0 && *(&v140 + 1))
    {
      v91 = a1;
      v105 = *(*(&v141 + 1) + 32);
      v102 = *(v141 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v130 = *&v139[32];
      *v131 = v140;
      *&v131[16] = v141;
      *&v131[32] = v142;
      v128 = *v139;
      v129 = *&v139[16];
      sub_1AF5DD298(&v128, v126);
      v7 = 0;
      v8 = 0;
      v9 = MEMORY[0x1E69E7CC0];
      v93 = v5;
      while (1)
      {
        v106 = v8;
        v100 = v7;
        v10 = (v97 + 48 * v7);
        v12 = *v10;
        v11 = v10[1];
        v14 = *(v10 + 2);
        v13 = *(v10 + 3);
        v15 = *(v10 + 4);
        v16 = *(v10 + 5);
        if (v102)
        {
          v17 = *(v16 + 376);

          os_unfair_lock_lock(v17);
          os_unfair_lock_lock(*(v16 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v105);
        v18 = *(v6 + 64);
        v145[0] = *(v6 + 48);
        v145[1] = v18;
        v146 = *(v6 + 80);
        v19 = *(*(*(*(v16 + 40) + 16) + 32) + 16) + 1;
        *(v6 + 48) = ecs_stack_allocator_allocate(*(v6 + 32), 48 * v19, 8);
        *(v6 + 56) = v19;
        *(v6 + 72) = 0;
        *(v6 + 80) = 0;
        *(v6 + 64) = 0;
        v20 = sub_1AF64B110(&type metadata for Parent, &off_1F2529C98, v14, v13, v15, v6);
        if (v14)
        {
          if (v15)
          {
            do
            {
              v22 = *v14++;
              v21 = v22;

              if (*(v16 + 184))
              {
                goto LABEL_120;
              }

              v24 = *(*(v16 + 168) + 4 * v21);
              v25 = *(*(v23 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v24 + 8);

              v107 = *v20;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v9 = sub_1AF428540(0, *(v9 + 2) + 1, 1, v9);
              }

              v27 = *(v9 + 2);
              v26 = *(v9 + 3);
              if (v27 >= v26 >> 1)
              {
                v9 = sub_1AF428540(v26 > 1, v27 + 1, 1, v9);
              }

              *(v9 + 2) = v27 + 1;
              *&v28 = __PAIR64__(v25, v24);
              *(&v28 + 1) = v107;
              *&v9[16 * v27 + 32] = v28;
              v20 += 8;
            }

            while (--v15);
          }
        }

        else if (v12 != v11)
        {
          while (1)
          {

            if (*(v16 + 184))
            {
              break;
            }

            v30 = *(*(v16 + 168) + 4 * v12);
            v31 = *(*(v29 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v30 + 8);

            v108 = *&v20[8 * v12];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v9 = sub_1AF428540(0, *(v9 + 2) + 1, 1, v9);
            }

            v33 = *(v9 + 2);
            v32 = *(v9 + 3);
            if (v33 >= v32 >> 1)
            {
              v9 = sub_1AF428540(v32 > 1, v33 + 1, 1, v9);
            }

            ++v12;
            *(v9 + 2) = v33 + 1;
            *&v34 = __PAIR64__(v31, v30);
            *(&v34 + 1) = v108;
            *&v9[16 * v33 + 32] = v34;
            if (v11 == v12)
            {
              goto LABEL_24;
            }
          }

LABEL_120:
          result = sub_1AFDFE518();
          __break(1u);
          return result;
        }

LABEL_24:
        v115 = v99;
        v116 = v143;
        v117 = v144;
        v8 = v106;
        sub_1AF630994(v6, &v115, v145);
        sub_1AF62D29C(v16);
        ecs_stack_allocator_pop_snapshot(v105);
        if (v102)
        {
          os_unfair_lock_unlock(*(v16 + 344));
          os_unfair_lock_unlock(*(v16 + 376));
        }

        v7 = v100 + 1;
        if (v100 + 1 == v93)
        {
          v36 = MEMORY[0x1E69E6720];
          sub_1AFCB9F58(v139, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
          sub_1AFCB9F58(v139, &qword_1ED725EA0, &type metadata for QueryResult, v36, sub_1AFCBA88C);
          a1 = v91;
          v35 = *(v9 + 2);
          if (!v35)
          {
            goto LABEL_119;
          }

          goto LABEL_37;
        }
      }
    }

    sub_1AFCB9F58(v139, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
  }

  v9 = MEMORY[0x1E69E7CC0];
  v35 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v35)
  {
    goto LABEL_119;
  }

LABEL_37:
  v109 = v35;
  v37 = 0;
  v38 = v9 + 32;
  while (2)
  {
    v39 = &v38[16 * v37];
    v40 = *v39;
    v41 = *(v39 + 1);
    v42 = *(v39 + 1);
    if (v40 == -1 && v41 == 0)
    {
      goto LABEL_40;
    }

    v44 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

    if (v44)
    {
      v45 = *(v44 + 80);
      swift_unknownObjectWeakLoadStrong();
      v44 = *(v44 + 56);
    }

    else
    {
      v45 = 0;
    }

    v111 = 0;
    swift_unknownObjectUnownedInit();
    v110[0] = a1;
    v111 = v44;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v112 = v45;
    if (v40 == -1)
    {
      if (v41)
      {
        swift_unownedRetainStrong();

        swift_unownedRetainStrong();
        goto LABEL_63;
      }

      sub_1AF579490(v110);
      if (v45)
      {
        v38 = v9 + 32;
        v35 = v109;
        goto LABEL_82;
      }

      goto LABEL_39;
    }

    swift_unownedRetainStrong();

    swift_unownedRetainStrong();
    if ((v40 & 0x80000000) != 0)
    {
      goto LABEL_63;
    }

    if (*(a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) <= v40)
    {
      goto LABEL_63;
    }

    v46 = (*(a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v40);
    if (v41 != -1 && v46[2] != v41)
    {
      goto LABEL_63;
    }

    v47 = *(v46 + 2);
    v48 = *(*(a1 + 144) + 8 * *v46 + 32);
    if (*(v48 + 232) > v47 || *(v48 + 240) <= v47)
    {
      goto LABEL_63;
    }

    v98 = *(v46 + 2);
    v49 = **(a1 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
    v50 = *(v48 + 344);

    os_unfair_lock_lock(v50);
    v103 = v49;
    ecs_stack_allocator_push_snapshot(*(v49 + 32));
    v51 = *(*(v48 + 40) + 16);
    v52 = *(v51 + 128);
    if (!*(v52 + 16) || (v53 = sub_1AF449CB8(&type metadata for Parent), (v54 & 1) == 0) || *(*(v51 + 24) + 16 * *(*(v52 + 56) + 8 * v53) + 32) != &type metadata for Parent)
    {

      goto LABEL_59;
    }

    v92 = a1;
    v137[0] = &type metadata for Parent;
    v137[1] = &off_1F2529C98;
    v138 = 1;
    v66 = *(v103 + 104);
    v90 = (v103 + 104);
    v101 = *(v66 + 16);
    if (!v101)
    {

LABEL_113:
      v77 = *(v48 + 240) - *(v48 + 232);
      v78 = ecs_stack_allocator_allocate(*(v103 + 32), 8 * v77, 8);
      *v78 = v98;
      sub_1AF63515C(v137, &v128);
      *v131 = v78;
      *&v131[8] = v77;
      *&v131[16] = 1;
      v79 = *(v103 + 104);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v103 + 104) = v79;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v79 = sub_1AF420EA0(0, v79[2] + 1, 1, v79);
        *v90 = v79;
      }

      v82 = v79[2];
      v81 = v79[3];
      if (v82 >= v81 >> 1)
      {
        *v90 = sub_1AF420EA0(v81 > 1, v82 + 1, 1, v79);
      }

      sub_1AF635250(v137);
      v83 = *v90;
      *(v83 + 16) = v82 + 1;
      v84 = v83 + 72 * v82;
      *(v84 + 32) = v128;
      v86 = v130;
      v85 = *v131;
      v87 = v129;
      *(v84 + 96) = *&v131[16];
      *(v84 + 64) = v86;
      *(v84 + 80) = v85;
      *(v84 + 48) = v87;
      *v90 = v83;
      goto LABEL_118;
    }

    v67 = v66 + 32;

    v68 = 0;
    while (1)
    {
      sub_1AF6350F8(v67, v126);
      sub_1AF63515C(v126, &v128);
      sub_1AF63515C(v137, v131);
      if (BYTE8(v130) <= 2u)
      {
        if (!BYTE8(v130))
        {
          sub_1AFCB9FB8(v126, sub_1AF43A540);
          sub_1AF63515C(&v128, v136);
          if (v131[40])
          {
            goto LABEL_86;
          }

          goto LABEL_99;
        }

        if (BYTE8(v130) == 1)
        {
          sub_1AFCB9FB8(v126, sub_1AF43A540);
          sub_1AF63515C(&v128, v136);
          if (v131[40] != 1)
          {
            goto LABEL_86;
          }

LABEL_99:
          v95 = *&v136[0];
          v70 = *v131;
          sub_1AF635250(&v128);
          if (v95 == v70)
          {
            goto LABEL_109;
          }

          goto LABEL_87;
        }

        sub_1AF63515C(&v128, v136);
        if (v131[40] != 2)
        {
LABEL_85:
          sub_1AFCB9FB8(v126, sub_1AF43A540);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v136);
LABEL_86:
          sub_1AFCB9F58(&v128, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
          goto LABEL_87;
        }

        goto LABEL_104;
      }

      if (BYTE8(v130) == 3)
      {
        sub_1AF63515C(&v128, v136);
        if (v131[40] != 3)
        {
          goto LABEL_85;
        }

LABEL_104:
        sub_1AF616568(v136, v133);
        sub_1AF616568(v131, v132);
        v71 = v134;
        v96 = v135;
        sub_1AF441150(v133, v134);
        LOBYTE(v71) = sub_1AF640C98(v132, v71, v96);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v132);
        sub_1AFCB9FB8(v126, sub_1AF43A540);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v133);
        sub_1AF635250(&v128);
        if (v71)
        {
          goto LABEL_109;
        }

        goto LABEL_87;
      }

      if (BYTE8(v130) != 4)
      {
        break;
      }

      sub_1AFCB9FB8(v126, sub_1AF43A540);
      sub_1AF63515C(&v128, v136);
      if (v131[40] != 4)
      {
        goto LABEL_86;
      }

      v94 = LOBYTE(v136[0]);
      v69 = v131[0];
      sub_1AF635250(&v128);
      if (v94 == v69)
      {
        goto LABEL_109;
      }

LABEL_87:
      ++v68;
      v67 += 72;
      if (v101 == v68)
      {
        goto LABEL_113;
      }
    }

    sub_1AFCB9FB8(v126, sub_1AF43A540);
    if (v131[40] != 5)
    {
      goto LABEL_86;
    }

    v72 = vorrq_s8(*&v131[8], *&v131[24]);
    if (*&vorr_s8(*v72.i8, *&vextq_s8(v72, v72, 8uLL)) | *v131)
    {
      goto LABEL_86;
    }

    sub_1AF635250(&v128);
LABEL_109:
    v74 = sub_1AFBFCA08(&v128);
    v75 = *(v73 + 48);
    if (v75)
    {
      v76 = *(v73 + 64);
      *(v75 + 8 * v76) = v98;
      *(v73 + 64) = v76 + 1;
    }

    (v74)(&v128, 0);
    sub_1AF635250(v137);
LABEL_118:
    a1 = v92;
LABEL_59:
    sub_1AF62D29C(v48);

    ecs_stack_allocator_pop_snapshot(*(v103 + 32));
    os_unfair_lock_unlock(*(v48 + 344));

LABEL_63:

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    if (!v45)
    {
      sub_1AF579490(v110);
LABEL_39:

      v38 = v9 + 32;
      v35 = v109;
      goto LABEL_40;
    }

    swift_unownedRetainStrong();
    *&v128 = __PAIR64__(v41, v40);
    *(&v128 + 1) = a1;
    *&v129 = &type metadata for Parent;
    *(&v129 + 1) = &off_1F2529C98;
    v131[8] = 13;
    v55 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
    if (!v55)
    {
      goto LABEL_79;
    }

    v35 = v109;
    if ((*(v55 + 81) & 1) == 0)
    {

      sub_1AF57955C(&v128);
      goto LABEL_81;
    }

    if (!*(v55 + 24) || !swift_weakLoadStrong())
    {
LABEL_79:

      sub_1AF57955C(&v128);
      goto LABEL_80;
    }

    swift_unknownObjectRetain();

    sub_1AF6CAF24(&v128, v126);
    v56 = *(v55 + 16);
    v57 = swift_isUniquelyReferenced_nonNull_native();
    *(v55 + 16) = v56;
    if ((v57 & 1) == 0)
    {
      v56 = sub_1AF4221C8(0, *(v56 + 2) + 1, 1, v56);
      *(v55 + 16) = v56;
    }

    v59 = *(v56 + 2);
    v58 = *(v56 + 3);
    v104 = v59 + 1;
    if (v59 >= v58 >> 1)
    {
      *(v55 + 16) = sub_1AF4221C8(v58 > 1, v104, 1, v56);
    }

    swift_unknownObjectRelease();
    sub_1AF57955C(&v128);
    v60 = *(v55 + 16);
    *(v60 + 16) = v104;
    v61 = (v60 + (v59 << 6));
    v62 = v126[0];
    v63 = v126[1];
    v64 = v127[0];
    *(v61 + 73) = *(v127 + 9);
    v61[3] = v63;
    v61[4] = v64;
    v61[2] = v62;
    *(v55 + 16) = v60;

LABEL_80:
    v35 = v109;
LABEL_81:
    sub_1AF579490(v110);
    v38 = v9 + 32;
LABEL_82:
    v65 = [objc_opt_self() immediateMode];
    sub_1AF6C5E30(v65 ^ 1);

LABEL_40:
    ++v37;
    sub_1AF5ABF9C(v42, a1, v40 | (v41 << 32), a1);
    if (v37 != v35)
    {
      continue;
    }

    break;
  }

LABEL_119:
  sub_1AFCBA0DC(v113, &qword_1EB643C78, &type metadata for Parent, &off_1F2529C98);
}

uint64_t sub_1AFC99074(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0x100000000;
  if (qword_1ED72D720 != -1)
  {
    v283 = a2;
    swift_once();
    LODWORD(a2) = v283;
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

  v425 = qword_1ED73B840;
  LODWORD(v292) = v5;
  v426 = v5;
  v291 = v3 >> 31;
  v427 = v3 >> 31;
  v428 = 1;
  v429 = 2;
  v430 = 0;

  sub_1AF70321C(1, v314);
  v293 = v4;

  sub_1AFA1CFD4(0, &qword_1ED7269A0, &qword_1ED7270C0, &qword_1ED7270D0, &protocol descriptor for Component);
  v290 = v6;
  v7 = swift_allocObject();
  v288 = xmmword_1AFE431C0;
  *(v7 + 16) = xmmword_1AFE431C0;
  *(v7 + 32) = &type metadata for VFXAssetTag;
  *(v7 + 40) = &off_1F253D5D8;
  sub_1AF5D1EC0(v7);
  sub_1AFCBA0DC(v314, &qword_1ED723D88, &type metadata for TextureFileAsset, &off_1F2544090);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v387[0] = v315[0];
  v387[1] = v315[1];
  v388 = v316;
  v289 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  sub_1AF6B06C0(a1, v387, 0x200000000, v317);
  v285 = a1;
  if (*&v317[0])
  {
    if (v321 >= 1 && v319)
    {
      v302 = 0;
      v8 = v318;
      v9 = v320;
      v10 = v318 + 48 * v319;
      v286 = v320;
      v284 = v10;
      do
      {
        v11 = *(v8 + 40);
        v12 = *(v11 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v12);
        os_unfair_lock_lock(*(v11 + 344));
        v13 = *(v11 + 24);

        v369 = 0;
        v367 = 0u;
        v368 = 0u;
        v359 = 0;
        v357 = 0u;
        v358 = 0u;
        v14 = sub_1AF65A4B4(v13, &type metadata for VFXAssetTag, &off_1F253D498, 0, 0, &v367, &v357);

        sub_1AFCB9FB8(&v357, sub_1AF5C4448);
        sub_1AFCB9FB8(&v367, sub_1AF5C4448);
        if (sub_1AF649CEC(v14))
        {
          sub_1AF649D40(v14, v9);
        }

        else
        {
          v297 = v8;
          v16 = *(v11 + 232);
          v15 = *(v11 + 240);
          v295 = *(v11 + 120);
          v304 = *(v11 + 28);
          v303 = *(v11 + 32);
          v17 = *(v11 + 16);
          v18 = *(v11 + 40);
          v19 = v18[200];
          v301 = *(*(v17 + 88) + 8 * v14 + 32);

          if ((v19 & 1) != 0 || *(v301 + 200) == 1)
          {
            *(v17 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v18 = *(v11 + 40);
          }

          v20 = v302;
          if (v18[212])
          {
            v21 = 0;
          }

          else
          {
            v21 = *(v301 + 212);
          }

          v22 = v15;
          LODWORD(v296) = v18[208];
          v300 = *(v11 + 128);
          v23 = *(v11 + 256);
          sub_1AF5B4FCC(v18, v16, v22, 0, v11);
          v24 = v20;
          v298 = *(v11 + 256);
          v299 = v23;
          v25 = v298 - v23;
          if (v298 == v23)
          {
            v26 = 0;
          }

          else
          {
            v26 = v23;
          }

          *&v357 = v26;
          v27 = *(*(v11 + 40) + 24);
          v28 = *(v27 + 16);
          v302 = v24;
          if (v28)
          {
            v29 = v27 + 32;
            v287 = v27;

            v30 = 0;
            v294 = v21;
            do
            {
              v31 = (v29 + 40 * v30);
              if ((v31[4] & 1) == 0)
              {
                v32 = *v31;
                v34 = v31[2];
                v33 = v31[3];
                v35 = *(v301 + 24);
                v36 = *(v35 + 16);
                if (v36)
                {
                  v37 = (v35 + 32);
                  while (*v37 != v32)
                  {
                    v37 += 5;
                    if (!--v36)
                    {
                      goto LABEL_24;
                    }
                  }
                }

                else
                {
LABEL_24:
                  sub_1AF640BC8(v300 + v34 * v26 + v33, v25);
                }
              }

              ++v30;
            }

            while (v30 != v28);

            v38 = v294;
          }

          else
          {
            v38 = v21;
          }

          v9 = v286;
          if (*(v17 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v17 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v11 + 72) * v25);
          }

          if (*(v11 + 184))
          {
            v39 = 0;
          }

          else
          {
            v39 = *(v11 + 168);
          }

          *&v349[0] = 0;

          MEMORY[0x1EEE9AC00](&v284);
          v40 = v304;
          *(&v284 - 28) = v304;
          v41 = v303;
          *(&v284 - 108) = v303;
          v42 = v301;
          *(&v284 - 13) = v11;
          *(&v284 - 12) = v42;
          *(&v284 - 11) = 0u;
          *(&v284 - 9) = 0u;
          *(&v284 - 7) = &v357;
          *(&v284 - 6) = v300;
          *(&v284 - 5) = v349;
          *(&v284 - 32) = v296;
          *(&v284 - 7) = v14;
          *(&v284 - 24) = v38;
          *(&v284 - 2) = v9;
          *&v368 = v39;
          DWORD2(v368) = -1;
          v369 = v299;
          v370 = v298;
          v371 = v299;
          v372 = v298;
          *&v367 = v299;
          *(&v367 + 1) = v298;
          if (v25 >= 1)
          {
            v43 = v295;
            do
            {
              LOBYTE(v341[0]) = v41;
              sub_1AF6248A8(v14, v40 | (v41 << 32), v43, v17, &v367, sub_1AF5C5E08);
              v41 = v303;
              v40 = v304;
            }

            while ((*(&v367 + 1) - v367) > 0);
          }

          v44 = *(v11 + 192);
          v8 = v297;
          v10 = v284;
          if (v44)
          {
            v45 = *(v11 + 208);
            v304 = *(v11 + 216);
            v47 = v298;
            v46 = v299;
            sub_1AF75D364(v299, v298, v44);
            sub_1AF75D364(v46, v47, v45);
          }
        }

        v8 += 48;
        os_unfair_lock_unlock(*(v11 + 344));
        os_unfair_lock_unlock(*(v11 + 376));
      }

      while (v8 != v10);
    }

    else
    {
      v302 = 0;
    }

    sub_1AFCB9F58(v317, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
    a1 = v285;
  }

  else
  {
    v302 = 0;
  }

  v419 = v293;
  v420 = v292;
  v421 = v291;
  v422 = 1;
  v423 = 2;
  v424 = 0;

  sub_1AF702E88(1, v322);

  v48 = swift_allocObject();
  *(v48 + 16) = v288;
  *(v48 + 32) = &type metadata for VFXAssetTag;
  *(v48 + 40) = &off_1F253D5D8;
  sub_1AF5D1EC0(v48);
  sub_1AFCBA0DC(v322, &qword_1EB643CC0, &type metadata for SceneFileAsset, &off_1F252BBF8);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v385[0] = v323[0];
  v385[1] = v323[1];
  v386 = v324;
  sub_1AF6B06C0(a1, v385, 0x200000000, v325);
  if (*&v325[0])
  {
    if (v329 >= 1 && v327)
    {
      v49 = v326;
      v297 = v328;
      v50 = v326 + 48 * v327;
      v284 = v50;
      do
      {
        v51 = *(v49 + 40);
        v52 = *(v51 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v52);
        os_unfair_lock_lock(*(v51 + 344));
        v53 = *(v51 + 24);

        v369 = 0;
        v367 = 0u;
        v368 = 0u;
        v359 = 0;
        v357 = 0u;
        v358 = 0u;
        v54 = sub_1AF65A4B4(v53, &type metadata for VFXAssetTag, &off_1F253D498, 0, 0, &v367, &v357);

        sub_1AFCB9FB8(&v357, sub_1AF5C4448);
        sub_1AFCB9FB8(&v367, sub_1AF5C4448);
        if (sub_1AF649CEC(v54))
        {
          sub_1AF649D40(v54, v297);
        }

        else
        {
          v296 = v49;
          v55 = *(v51 + 232);
          v56 = *(v51 + 240);
          LODWORD(v287) = *(v51 + 120);
          v304 = *(v51 + 28);
          v303 = *(v51 + 32);
          v57 = *(v51 + 16);
          v58 = *(v51 + 40);
          v59 = v58[200];
          v301 = *(*(v57 + 88) + 8 * v54 + 32);

          if ((v59 & 1) != 0 || *(v301 + 200) == 1)
          {
            *(v57 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v58 = *(v51 + 40);
          }

          v60 = v302;
          if (v58[212])
          {
            v295 = 0;
          }

          else
          {
            v295 = *(v301 + 212);
          }

          v294 = v58[208];
          v300 = *(v51 + 128);
          v61 = *(v51 + 256);
          sub_1AF5B4FCC(v58, v55, v56, 0, v51);
          v298 = *(v51 + 256);
          v299 = v61;
          v62 = v298 - v61;
          if (v298 == v61)
          {
            v63 = 0;
          }

          else
          {
            v63 = v61;
          }

          *&v357 = v63;
          v64 = *(*(v51 + 40) + 24);
          v65 = *(v64 + 16);
          v302 = v60;
          if (v65)
          {
            v66 = v64 + 32;
            v286 = v64;

            v67 = 0;
            v68 = v62;
            do
            {
              v69 = (v66 + 40 * v67);
              if ((v69[4] & 1) == 0)
              {
                v70 = *v69;
                v72 = v69[2];
                v71 = v69[3];
                v73 = *(v301 + 24);
                v74 = *(v73 + 16);
                if (v74)
                {
                  v75 = (v73 + 32);
                  while (*v75 != v70)
                  {
                    v75 += 5;
                    if (!--v74)
                    {
                      goto LABEL_66;
                    }
                  }
                }

                else
                {
LABEL_66:
                  sub_1AF640BC8(v300 + v72 * v63 + v71, v62);
                }
              }

              ++v67;
            }

            while (v67 != v65);
          }

          else
          {
            v68 = v298 - v61;
          }

          if (*(v57 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v57 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v51 + 72) * v68);
          }

          v76 = v68;
          if (*(v51 + 184))
          {
            v77 = 0;
          }

          else
          {
            v77 = *(v51 + 168);
          }

          *&v349[0] = 0;

          MEMORY[0x1EEE9AC00](v78);
          v79 = v304;
          *(&v284 - 28) = v304;
          v80 = v303;
          *(&v284 - 108) = v303;
          v81 = v301;
          *(&v284 - 13) = v51;
          *(&v284 - 12) = v81;
          *(&v284 - 11) = 0u;
          *(&v284 - 9) = 0u;
          *(&v284 - 7) = &v357;
          *(&v284 - 6) = v300;
          *(&v284 - 5) = v349;
          *(&v284 - 32) = v294;
          *(&v284 - 7) = v54;
          *(&v284 - 24) = v295;
          *(&v284 - 2) = v297;
          DWORD2(v368) = -1;
          v369 = v299;
          v370 = v298;
          v371 = v299;
          v372 = v298;
          *&v367 = v299;
          *(&v367 + 1) = v298;
          *&v368 = v77;
          if (v76 >= 1)
          {
            v82 = v287;
            do
            {
              LOBYTE(v341[0]) = v80;
              sub_1AF6248A8(v54, v79 | (v80 << 32), v82, v57, &v367, sub_1AF5C5E08);
              v80 = v303;
              v79 = v304;
            }

            while ((*(&v367 + 1) - v367) > 0);
          }

          v83 = *(v51 + 192);
          v49 = v296;
          if (v83)
          {
            v84 = *(v51 + 208);
            v86 = v298;
            v85 = v299;
            sub_1AF75D364(v299, v298, v83);
            sub_1AF75D364(v85, v86, v84);
          }

          v50 = v284;
        }

        v49 += 48;
        os_unfair_lock_unlock(*(v51 + 344));
        os_unfair_lock_unlock(*(v51 + 376));
      }

      while (v49 != v50);
    }

    sub_1AFCB9F58(v325, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
    a1 = v285;
  }

  v413 = v293;
  v414 = v292;
  v415 = v291;
  v416 = 1;
  v417 = 2;
  v418 = 0;

  sub_1AF702E9C(1, v330);

  v87 = swift_allocObject();
  *(v87 + 16) = v288;
  *(v87 + 32) = &type metadata for VFXAssetTag;
  *(v87 + 40) = &off_1F253D5D8;
  sub_1AF5D1EC0(v87);
  sub_1AFCBA0DC(v330, &qword_1EB643CC8, &type metadata for MeshFileAsset, &off_1F252BCD0);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v383[0] = v331[0];
  v383[1] = v331[1];
  v384 = v332;
  sub_1AF6B06C0(a1, v383, 0x200000000, v333);
  if (*&v333[0])
  {
    if (v337 >= 1 && v335)
    {
      v88 = v334;
      v297 = v336;
      v89 = v334 + 48 * v335;
      v284 = v89;
      do
      {
        v90 = *(v88 + 40);
        v91 = *(v90 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v91);
        os_unfair_lock_lock(*(v90 + 344));
        v92 = *(v90 + 24);

        v369 = 0;
        v367 = 0u;
        v368 = 0u;
        v359 = 0;
        v357 = 0u;
        v358 = 0u;
        v93 = sub_1AF65A4B4(v92, &type metadata for VFXAssetTag, &off_1F253D498, 0, 0, &v367, &v357);

        sub_1AFCB9FB8(&v357, sub_1AF5C4448);
        sub_1AFCB9FB8(&v367, sub_1AF5C4448);
        if (sub_1AF649CEC(v93))
        {
          sub_1AF649D40(v93, v297);
        }

        else
        {
          v296 = v88;
          v94 = *(v90 + 232);
          v95 = *(v90 + 240);
          LODWORD(v287) = *(v90 + 120);
          v304 = *(v90 + 28);
          v303 = *(v90 + 32);
          v96 = *(v90 + 16);
          v97 = *(v90 + 40);
          v98 = v97[200];
          v301 = *(*(v96 + 88) + 8 * v93 + 32);

          if ((v98 & 1) != 0 || *(v301 + 200) == 1)
          {
            *(v96 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v97 = *(v90 + 40);
          }

          v99 = v302;
          if (v97[212])
          {
            v295 = 0;
          }

          else
          {
            v295 = *(v301 + 212);
          }

          v294 = v97[208];
          v300 = *(v90 + 128);
          v100 = *(v90 + 256);
          sub_1AF5B4FCC(v97, v94, v95, 0, v90);
          v298 = *(v90 + 256);
          v299 = v100;
          v101 = v298 - v100;
          if (v298 == v100)
          {
            v102 = 0;
          }

          else
          {
            v102 = v100;
          }

          *&v357 = v102;
          v103 = *(*(v90 + 40) + 24);
          v104 = *(v103 + 16);
          v302 = v99;
          if (v104)
          {
            v105 = v103 + 32;
            v286 = v103;

            v106 = 0;
            v107 = v101;
            do
            {
              v108 = (v105 + 40 * v106);
              if ((v108[4] & 1) == 0)
              {
                v109 = *v108;
                v111 = v108[2];
                v110 = v108[3];
                v112 = *(v301 + 24);
                v113 = *(v112 + 16);
                if (v113)
                {
                  v114 = (v112 + 32);
                  while (*v114 != v109)
                  {
                    v114 += 5;
                    if (!--v113)
                    {
                      goto LABEL_106;
                    }
                  }
                }

                else
                {
LABEL_106:
                  sub_1AF640BC8(v300 + v111 * v102 + v110, v101);
                }
              }

              ++v106;
            }

            while (v106 != v104);
          }

          else
          {
            v107 = v298 - v100;
          }

          if (*(v96 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v96 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v90 + 72) * v107);
          }

          v115 = v107;
          if (*(v90 + 184))
          {
            v116 = 0;
          }

          else
          {
            v116 = *(v90 + 168);
          }

          *&v349[0] = 0;

          MEMORY[0x1EEE9AC00](v117);
          v118 = v304;
          *(&v284 - 28) = v304;
          v119 = v303;
          *(&v284 - 108) = v303;
          v120 = v301;
          *(&v284 - 13) = v90;
          *(&v284 - 12) = v120;
          *(&v284 - 11) = 0u;
          *(&v284 - 9) = 0u;
          *(&v284 - 7) = &v357;
          *(&v284 - 6) = v300;
          *(&v284 - 5) = v349;
          *(&v284 - 32) = v294;
          *(&v284 - 7) = v93;
          *(&v284 - 24) = v295;
          *(&v284 - 2) = v297;
          DWORD2(v368) = -1;
          v369 = v299;
          v370 = v298;
          v371 = v299;
          v372 = v298;
          *&v367 = v299;
          *(&v367 + 1) = v298;
          *&v368 = v116;
          if (v115 >= 1)
          {
            v121 = v287;
            do
            {
              LOBYTE(v341[0]) = v119;
              sub_1AF6248A8(v93, v118 | (v119 << 32), v121, v96, &v367, sub_1AF5C5E08);
              v119 = v303;
              v118 = v304;
            }

            while ((*(&v367 + 1) - v367) > 0);
          }

          v122 = *(v90 + 192);
          v88 = v296;
          if (v122)
          {
            v123 = *(v90 + 208);
            v125 = v298;
            v124 = v299;
            sub_1AF75D364(v299, v298, v122);
            sub_1AF75D364(v124, v125, v123);
          }

          v89 = v284;
        }

        v88 += 48;
        os_unfair_lock_unlock(*(v90 + 344));
        os_unfair_lock_unlock(*(v90 + 376));
      }

      while (v88 != v89);
    }

    sub_1AFCB9F58(v333, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
    a1 = v285;
  }

  v407 = v293;
  v408 = v292;
  v409 = v291;
  v410 = 1;
  v411 = 2;
  v412 = 0;

  sub_1AF7033E0(1, v338);

  v126 = swift_allocObject();
  *(v126 + 16) = v288;
  *(v126 + 32) = &type metadata for VFXAssetTag;
  *(v126 + 40) = &off_1F253D5D8;
  sub_1AF5D1EC0(v126);
  sub_1AFCBA0DC(v338, &qword_1EB643CA0, &type metadata for PointCacheGenerator, &off_1F2567FB0);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v381[0] = v339[0];
  v381[1] = v339[1];
  v382 = v340;
  sub_1AF6B06C0(a1, v381, 0x200000000, v341);
  if (*&v341[0])
  {
    if (v345 >= 1 && v343)
    {
      v127 = v342;
      v297 = v344;
      v128 = v342 + 48 * v343;
      v284 = v128;
      do
      {
        v129 = *(v127 + 40);
        v130 = *(v129 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v130);
        os_unfair_lock_lock(*(v129 + 344));
        v131 = *(v129 + 24);

        v369 = 0;
        v367 = 0u;
        v368 = 0u;
        v359 = 0;
        v357 = 0u;
        v358 = 0u;
        v132 = sub_1AF65A4B4(v131, &type metadata for VFXAssetTag, &off_1F253D498, 0, 0, &v367, &v357);

        sub_1AFCB9FB8(&v357, sub_1AF5C4448);
        sub_1AFCB9FB8(&v367, sub_1AF5C4448);
        if (sub_1AF649CEC(v132))
        {
          sub_1AF649D40(v132, v297);
        }

        else
        {
          v296 = v127;
          v133 = *(v129 + 232);
          v134 = *(v129 + 240);
          LODWORD(v287) = *(v129 + 120);
          v304 = *(v129 + 28);
          v303 = *(v129 + 32);
          v135 = *(v129 + 16);
          v136 = *(v129 + 40);
          v137 = v136[200];
          v301 = *(*(v135 + 88) + 8 * v132 + 32);

          if ((v137 & 1) != 0 || *(v301 + 200) == 1)
          {
            *(v135 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v136 = *(v129 + 40);
          }

          v138 = v302;
          if (v136[212])
          {
            v295 = 0;
          }

          else
          {
            v295 = *(v301 + 212);
          }

          v294 = v136[208];
          v300 = *(v129 + 128);
          v139 = *(v129 + 256);
          sub_1AF5B4FCC(v136, v133, v134, 0, v129);
          v298 = *(v129 + 256);
          v299 = v139;
          v140 = v298 - v139;
          if (v298 == v139)
          {
            v141 = 0;
          }

          else
          {
            v141 = v139;
          }

          *&v357 = v141;
          v142 = *(*(v129 + 40) + 24);
          v143 = *(v142 + 16);
          v302 = v138;
          if (v143)
          {
            v144 = v142 + 32;
            v286 = v142;

            v145 = 0;
            v146 = v140;
            do
            {
              v147 = (v144 + 40 * v145);
              if ((v147[4] & 1) == 0)
              {
                v148 = *v147;
                v150 = v147[2];
                v149 = v147[3];
                v151 = *(v301 + 24);
                v152 = *(v151 + 16);
                if (v152)
                {
                  v153 = (v151 + 32);
                  while (*v153 != v148)
                  {
                    v153 += 5;
                    if (!--v152)
                    {
                      goto LABEL_146;
                    }
                  }
                }

                else
                {
LABEL_146:
                  sub_1AF640BC8(v300 + v150 * v141 + v149, v140);
                }
              }

              ++v145;
            }

            while (v145 != v143);
          }

          else
          {
            v146 = v298 - v139;
          }

          if (*(v135 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v135 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v129 + 72) * v146);
          }

          v154 = v146;
          if (*(v129 + 184))
          {
            v155 = 0;
          }

          else
          {
            v155 = *(v129 + 168);
          }

          *&v349[0] = 0;

          MEMORY[0x1EEE9AC00](v156);
          v157 = v304;
          *(&v284 - 28) = v304;
          v158 = v303;
          *(&v284 - 108) = v303;
          v159 = v301;
          *(&v284 - 13) = v129;
          *(&v284 - 12) = v159;
          *(&v284 - 11) = 0u;
          *(&v284 - 9) = 0u;
          *(&v284 - 7) = &v357;
          *(&v284 - 6) = v300;
          *(&v284 - 5) = v349;
          *(&v284 - 32) = v294;
          *(&v284 - 7) = v132;
          *(&v284 - 24) = v295;
          *(&v284 - 2) = v297;
          DWORD2(v368) = -1;
          v369 = v299;
          v370 = v298;
          v371 = v299;
          v372 = v298;
          *&v367 = v299;
          *(&v367 + 1) = v298;
          *&v368 = v155;
          if (v154 >= 1)
          {
            v160 = v287;
            do
            {
              LOBYTE(v306) = v158;
              sub_1AF6248A8(v132, v157 | (v158 << 32), v160, v135, &v367, sub_1AF5C5E08);
              v158 = v303;
              v157 = v304;
            }

            while ((*(&v367 + 1) - v367) > 0);
          }

          v161 = *(v129 + 192);
          v127 = v296;
          if (v161)
          {
            v162 = *(v129 + 208);
            v164 = v298;
            v163 = v299;
            sub_1AF75D364(v299, v298, v161);
            sub_1AF75D364(v163, v164, v162);
          }

          v128 = v284;
        }

        v127 += 48;
        os_unfair_lock_unlock(*(v129 + 344));
        os_unfair_lock_unlock(*(v129 + 376));
      }

      while (v127 != v128);
    }

    sub_1AFCB9F58(v341, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
    a1 = v285;
  }

  v401 = v293;
  v402 = v292;
  v403 = v291;
  v404 = 1;
  v405 = 2;
  v406 = 0;

  sub_1AF704C90(1, v346);

  v165 = swift_allocObject();
  *(v165 + 16) = v288;
  *(v165 + 32) = &type metadata for VFXAssetTag;
  *(v165 + 40) = &off_1F253D5D8;
  sub_1AF5D1EC0(v165);
  sub_1AFCBA0DC(v346, &qword_1EB643CD0, &type metadata for PointCacheFileAsset, &off_1F2568060);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v379[0] = v347[0];
  v379[1] = v347[1];
  v380 = v348;
  sub_1AF6B06C0(a1, v379, 0x200000000, v349);
  if (*&v349[0])
  {
    if (v353 >= 1 && v351)
    {
      v166 = v350;
      v297 = v352;
      v167 = v350 + 48 * v351;
      v284 = v167;
      do
      {
        v168 = *(v166 + 40);
        v169 = *(v168 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v169);
        os_unfair_lock_lock(*(v168 + 344));
        v170 = *(v168 + 24);

        v369 = 0;
        v367 = 0u;
        v368 = 0u;
        v359 = 0;
        v357 = 0u;
        v358 = 0u;
        v171 = sub_1AF65A4B4(v170, &type metadata for VFXAssetTag, &off_1F253D498, 0, 0, &v367, &v357);

        sub_1AFCB9FB8(&v357, sub_1AF5C4448);
        sub_1AFCB9FB8(&v367, sub_1AF5C4448);
        if (sub_1AF649CEC(v171))
        {
          sub_1AF649D40(v171, v297);
        }

        else
        {
          v296 = v166;
          v172 = *(v168 + 232);
          v173 = *(v168 + 240);
          LODWORD(v287) = *(v168 + 120);
          v304 = *(v168 + 28);
          v303 = *(v168 + 32);
          v174 = *(v168 + 16);
          v175 = *(v168 + 40);
          v176 = v175[200];
          v301 = *(*(v174 + 88) + 8 * v171 + 32);

          if ((v176 & 1) != 0 || *(v301 + 200) == 1)
          {
            *(v174 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v175 = *(v168 + 40);
          }

          v177 = v302;
          if (v175[212])
          {
            v295 = 0;
          }

          else
          {
            v295 = *(v301 + 212);
          }

          v294 = v175[208];
          v300 = *(v168 + 128);
          v178 = *(v168 + 256);
          sub_1AF5B4FCC(v175, v172, v173, 0, v168);
          v298 = *(v168 + 256);
          v299 = v178;
          v179 = v298 - v178;
          if (v298 == v178)
          {
            v180 = 0;
          }

          else
          {
            v180 = v178;
          }

          *&v357 = v180;
          v181 = *(*(v168 + 40) + 24);
          v182 = *(v181 + 16);
          v302 = v177;
          if (v182)
          {
            v183 = v181 + 32;
            v286 = v181;

            v184 = 0;
            v185 = v179;
            do
            {
              v186 = (v183 + 40 * v184);
              if ((v186[4] & 1) == 0)
              {
                v187 = *v186;
                v189 = v186[2];
                v188 = v186[3];
                v190 = *(v301 + 24);
                v191 = *(v190 + 16);
                if (v191)
                {
                  v192 = (v190 + 32);
                  while (*v192 != v187)
                  {
                    v192 += 5;
                    if (!--v191)
                    {
                      goto LABEL_186;
                    }
                  }
                }

                else
                {
LABEL_186:
                  sub_1AF640BC8(v300 + v189 * v180 + v188, v179);
                }
              }

              ++v184;
            }

            while (v184 != v182);
          }

          else
          {
            v185 = v298 - v178;
          }

          if (*(v174 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v174 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v168 + 72) * v185);
          }

          v193 = v185;
          if (*(v168 + 184))
          {
            v194 = 0;
          }

          else
          {
            v194 = *(v168 + 168);
          }

          *&v306 = 0;

          MEMORY[0x1EEE9AC00](v195);
          v196 = v304;
          *(&v284 - 28) = v304;
          v197 = v303;
          *(&v284 - 108) = v303;
          v198 = v301;
          *(&v284 - 13) = v168;
          *(&v284 - 12) = v198;
          *(&v284 - 11) = 0u;
          *(&v284 - 9) = 0u;
          *(&v284 - 7) = &v357;
          *(&v284 - 6) = v300;
          *(&v284 - 5) = &v306;
          *(&v284 - 32) = v294;
          *(&v284 - 7) = v171;
          *(&v284 - 24) = v295;
          *(&v284 - 2) = v297;
          DWORD2(v368) = -1;
          v369 = v299;
          v370 = v298;
          v371 = v299;
          v372 = v298;
          *&v367 = v299;
          *(&v367 + 1) = v298;
          *&v368 = v194;
          if (v193 >= 1)
          {
            v199 = v287;
            do
            {
              LOBYTE(v395) = v197;
              sub_1AF6248A8(v171, v196 | (v197 << 32), v199, v174, &v367, sub_1AF5C5E08);
              v197 = v303;
              v196 = v304;
            }

            while ((*(&v367 + 1) - v367) > 0);
          }

          v200 = *(v168 + 192);
          v166 = v296;
          if (v200)
          {
            v201 = *(v168 + 208);
            v203 = v298;
            v202 = v299;
            sub_1AF75D364(v299, v298, v200);
            sub_1AF75D364(v202, v203, v201);
          }

          v167 = v284;
        }

        v166 += 48;
        os_unfair_lock_unlock(*(v168 + 344));
        os_unfair_lock_unlock(*(v168 + 376));
      }

      while (v166 != v167);
    }

    sub_1AFCB9F58(v349, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
    a1 = v285;
  }

  v395 = v293;
  v396 = v292;
  v397 = v291;
  v398 = 1;
  v399 = 2;
  v400 = 0;

  sub_1AF703280(1, v354);

  v204 = swift_allocObject();
  *(v204 + 16) = v288;
  *(v204 + 32) = &type metadata for VFXAssetTag;
  *(v204 + 40) = &off_1F253D5D8;
  sub_1AF5D1EC0(v204);
  sub_1AFCBA0DC(v354, &qword_1ED723D18, &type metadata for TextureShaderAsset, &off_1F2543F30);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v377[0] = v355[0];
  v377[1] = v355[1];
  v378 = v356;
  sub_1AF6B06C0(a1, v377, 0x200000000, &v357);
  if (v357)
  {
    if (v363 >= 1 && v361)
    {
      v205 = v360;
      v297 = v362;
      v206 = v360 + 48 * v361;
      v284 = v206;
      do
      {
        v207 = *(v205 + 40);
        v208 = *(v207 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v208);
        os_unfair_lock_lock(*(v207 + 344));
        v209 = *(v207 + 24);

        v369 = 0;
        v367 = 0u;
        v368 = 0u;
        v308 = 0;
        v306 = 0u;
        v307 = 0u;
        v210 = sub_1AF65A4B4(v209, &type metadata for VFXAssetTag, &off_1F253D498, 0, 0, &v367, &v306);

        sub_1AFCB9FB8(&v306, sub_1AF5C4448);
        sub_1AFCB9FB8(&v367, sub_1AF5C4448);
        if (sub_1AF649CEC(v210))
        {
          sub_1AF649D40(v210, v297);
        }

        else
        {
          v296 = v205;
          v211 = *(v207 + 232);
          v212 = *(v207 + 240);
          LODWORD(v287) = *(v207 + 120);
          v304 = *(v207 + 28);
          v303 = *(v207 + 32);
          v213 = *(v207 + 16);
          v214 = *(v207 + 40);
          v215 = v214[200];
          v301 = *(*(v213 + 88) + 8 * v210 + 32);

          if ((v215 & 1) != 0 || *(v301 + 200) == 1)
          {
            *(v213 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v214 = *(v207 + 40);
          }

          v216 = v302;
          if (v214[212])
          {
            v295 = 0;
          }

          else
          {
            v295 = *(v301 + 212);
          }

          v294 = v214[208];
          v300 = *(v207 + 128);
          v217 = *(v207 + 256);
          sub_1AF5B4FCC(v214, v211, v212, 0, v207);
          v298 = *(v207 + 256);
          v299 = v217;
          v218 = v298 - v217;
          if (v298 == v217)
          {
            v219 = 0;
          }

          else
          {
            v219 = v217;
          }

          *&v306 = v219;
          v220 = *(*(v207 + 40) + 24);
          v221 = *(v220 + 16);
          v302 = v216;
          if (v221)
          {
            v222 = v220 + 32;
            v286 = v220;

            v223 = 0;
            v224 = v218;
            do
            {
              v225 = (v222 + 40 * v223);
              if ((v225[4] & 1) == 0)
              {
                v226 = *v225;
                v228 = v225[2];
                v227 = v225[3];
                v229 = *(v301 + 24);
                v230 = *(v229 + 16);
                if (v230)
                {
                  v231 = (v229 + 32);
                  while (*v231 != v226)
                  {
                    v231 += 5;
                    if (!--v230)
                    {
                      goto LABEL_226;
                    }
                  }
                }

                else
                {
LABEL_226:
                  sub_1AF640BC8(v300 + v228 * v219 + v227, v218);
                }
              }

              ++v223;
            }

            while (v223 != v221);
          }

          else
          {
            v224 = v298 - v217;
          }

          if (*(v213 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v213 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v207 + 72) * v224);
          }

          v232 = v224;
          if (*(v207 + 184))
          {
            v233 = 0;
          }

          else
          {
            v233 = *(v207 + 168);
          }

          v389 = 0;

          MEMORY[0x1EEE9AC00](v234);
          v235 = v304;
          *(&v284 - 28) = v304;
          v236 = v303;
          *(&v284 - 108) = v303;
          v237 = v301;
          *(&v284 - 13) = v207;
          *(&v284 - 12) = v237;
          *(&v284 - 11) = 0u;
          *(&v284 - 9) = 0u;
          *(&v284 - 7) = &v306;
          *(&v284 - 6) = v300;
          *(&v284 - 5) = &v389;
          *(&v284 - 32) = v294;
          *(&v284 - 7) = v210;
          *(&v284 - 24) = v295;
          *(&v284 - 2) = v297;
          DWORD2(v368) = -1;
          v369 = v299;
          v370 = v298;
          v371 = v299;
          v372 = v298;
          *&v367 = v299;
          *(&v367 + 1) = v298;
          *&v368 = v233;
          if (v232 >= 1)
          {
            v238 = v287;
            do
            {
              LOBYTE(v375[0]) = v236;
              sub_1AF6248A8(v210, v235 | (v236 << 32), v238, v213, &v367, sub_1AF5C5E08);
              v236 = v303;
              v235 = v304;
            }

            while ((*(&v367 + 1) - v367) > 0);
          }

          v239 = *(v207 + 192);
          v205 = v296;
          if (v239)
          {
            v240 = *(v207 + 208);
            v242 = v298;
            v241 = v299;
            sub_1AF75D364(v299, v298, v239);
            sub_1AF75D364(v241, v242, v240);
          }

          v206 = v284;
        }

        v205 += 48;
        os_unfair_lock_unlock(*(v207 + 344));
        os_unfair_lock_unlock(*(v207 + 376));
      }

      while (v205 != v206);
    }

    sub_1AFCB9F58(&v357, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
    a1 = v285;
  }

  v389 = v293;
  v390 = v292;
  v391 = v291;
  v392 = 1;
  v393 = 2;
  v394 = 0;

  sub_1AF704D1C(1, v364);

  v243 = swift_allocObject();
  *(v243 + 16) = v288;
  *(v243 + 32) = &type metadata for VFXAssetTag;
  *(v243 + 40) = &off_1F253D5D8;
  sub_1AF5D1EC0(v243);
  sub_1AFCBA0DC(v364, &qword_1EB6400E0, &type metadata for ShaderFileAsset, &off_1F25432B8);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v375[0] = v365[0];
  v375[1] = v365[1];
  v376 = v366;
  sub_1AF6B06C0(a1, v375, 0x200000000, &v367);
  if (v367)
  {
    if (v374 >= 1 && v372)
    {
      v244 = v370;
      v245 = v373;
      v246 = v370 + 48 * v372;
      v291 = v246;
      v292 = v373;
      do
      {
        v247 = *(v244 + 40);
        v248 = *(v247 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v248);
        os_unfair_lock_lock(*(v247 + 344));
        v249 = *(v247 + 24);

        v308 = 0;
        v306 = 0u;
        v307 = 0u;
        memset(v313, 0, 40);
        v250 = sub_1AF65A4B4(v249, &type metadata for VFXAssetTag, &off_1F253D498, 0, 0, &v306, v313);

        sub_1AFCB9FB8(v313, sub_1AF5C4448);
        sub_1AFCB9FB8(&v306, sub_1AF5C4448);
        if (sub_1AF649CEC(v250))
        {
          sub_1AF649D40(v250, v245);
        }

        else
        {
          v297 = v244;
          v251 = v302;
          v252 = *(v247 + 232);
          v253 = *(v247 + 240);
          v294 = *(v247 + 120);
          v304 = *(v247 + 28);
          v303 = *(v247 + 32);
          v254 = *(v247 + 16);
          v255 = *(v247 + 40);
          v256 = v255[200];
          v301 = *(*(v254 + 88) + 8 * v250 + 32);

          if ((v256 & 1) != 0 || *(v301 + 200) == 1)
          {
            *(v254 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v255 = *(v247 + 40);
          }

          if (v255[212])
          {
            LODWORD(v296) = 0;
          }

          else
          {
            LODWORD(v296) = *(v301 + 212);
          }

          v295 = v255[208];
          v300 = *(v247 + 128);
          v257 = *(v247 + 256);
          sub_1AF5B4FCC(v255, v252, v253, 0, v247);
          v302 = v251;
          v298 = *(v247 + 256);
          v299 = v257;
          v258 = v298 - v257;
          if (v298 == v257)
          {
            v259 = 0;
          }

          else
          {
            v259 = v257;
          }

          v313[0] = v259;
          v260 = *(v247 + 40);
          v261 = *(v260 + 24);
          v262 = *(v261 + 16);
          if (v262)
          {
            v263 = v261 + 32;
            v293 = *(v260 + 24);

            for (i = 0; i != v262; ++i)
            {
              v265 = (v263 + 40 * i);
              if ((v265[4] & 1) == 0)
              {
                v266 = *v265;
                v268 = v265[2];
                v267 = v265[3];
                v269 = *(v301 + 24);
                v270 = *(v269 + 16);
                if (v270)
                {
                  v271 = (v269 + 32);
                  while (*v271 != v266)
                  {
                    v271 += 5;
                    if (!--v270)
                    {
                      goto LABEL_266;
                    }
                  }
                }

                else
                {
LABEL_266:
                  sub_1AF640BC8(v300 + v268 * v259 + v267, v258);
                }
              }
            }
          }

          v244 = v297;
          v245 = v292;
          if (*(v254 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v254 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v247 + 72) * v258);
          }

          if (*(v247 + 184))
          {
            v272 = 0;
          }

          else
          {
            v272 = *(v247 + 168);
          }

          v312 = 0;

          MEMORY[0x1EEE9AC00](v273);
          v274 = v304;
          *(&v284 - 28) = v304;
          v275 = v303;
          *(&v284 - 108) = v303;
          v276 = v301;
          *(&v284 - 13) = v247;
          *(&v284 - 12) = v276;
          *(&v284 - 11) = 0u;
          *(&v284 - 9) = 0u;
          *(&v284 - 7) = v313;
          *(&v284 - 6) = v300;
          *(&v284 - 5) = &v312;
          *(&v284 - 32) = v295;
          *(&v284 - 7) = v250;
          *(&v284 - 24) = v296;
          *(&v284 - 2) = v245;
          DWORD2(v307) = -1;
          v308 = v299;
          v309 = v298;
          v310 = v299;
          v311 = v298;
          *&v306 = v299;
          *(&v306 + 1) = v298;
          *&v307 = v272;
          if (v258 >= 1)
          {
            v277 = v294;
            do
            {
              v305 = v275;
              sub_1AF6248A8(v250, v274 | (v275 << 32), v277, v254, &v306, sub_1AF5C5E08);
              v275 = v303;
              v274 = v304;
            }

            while ((*(&v306 + 1) - v306) > 0);
          }

          v278 = *(v247 + 192);
          if (v278)
          {
            v279 = *(v247 + 208);
            v281 = v298;
            v280 = v299;
            sub_1AF75D364(v299, v298, v278);
            sub_1AF75D364(v280, v281, v279);
          }

          v246 = v291;
        }

        v244 += 48;
        os_unfair_lock_unlock(*(v247 + 344));
        os_unfair_lock_unlock(*(v247 + 376));
      }

      while (v244 != v246);
    }

    sub_1AFCB9F58(&v367, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
  }

  sub_1AFCBA0DC(v365, &qword_1EB6400E0, &type metadata for ShaderFileAsset, &off_1F25432B8);
  sub_1AFCBA0DC(v355, &qword_1ED723D18, &type metadata for TextureShaderAsset, &off_1F2543F30);
  sub_1AFCBA0DC(v347, &qword_1EB643CD0, &type metadata for PointCacheFileAsset, &off_1F2568060);
  sub_1AFCBA0DC(v339, &qword_1EB643CA0, &type metadata for PointCacheGenerator, &off_1F2567FB0);
  sub_1AFCBA0DC(v331, &qword_1EB643CC8, &type metadata for MeshFileAsset, &off_1F252BCD0);
  sub_1AFCBA0DC(v323, &qword_1EB643CC0, &type metadata for SceneFileAsset, &off_1F252BBF8);
  return sub_1AFCBA0DC(v315, &qword_1ED723D88, &type metadata for TextureFileAsset, &off_1F2544090);
}

void sub_1AFC9B87C(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0x100000000;
  if (qword_1ED72D720 != -1)
  {
    v87 = a2;
    swift_once();
    LODWORD(a2) = v87;
  }

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  v129 = qword_1ED73B840;
  v130 = v4;
  v131 = v3 >> 31;
  v132 = 1;
  v133 = 2;
  v134 = 0;

  sub_1AF70510C(0, v114);

  v125[0] = v114[0];
  v125[1] = v114[1];
  v126 = v115;
  sub_1AF6B06C0(a1, v125, 0x200000000, v116);
  v91 = *v116;
  if (!*v116)
  {
LABEL_37:
    v8 = MEMORY[0x1E69E7CC0];
    v34 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v34)
    {
LABEL_40:
      v36 = v8 + 32;
      do
      {
        v37 = *v36;
        v38 = HIDWORD(*v36);
        if (v37 == -1 && v38 == 0)
        {
          goto LABEL_107;
        }

        v97 = *v36;
        v40 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

        if (v40)
        {
          v41 = *(v40 + 80);
          swift_unknownObjectWeakLoadStrong();
          v40 = *(v40 + 56);
        }

        else
        {
          v41 = 0;
        }

        v112 = 0;
        swift_unknownObjectUnownedInit();
        v111[0] = a1;
        v112 = v40;
        swift_unknownObjectUnownedAssign();
        swift_unownedRetain();
        swift_unknownObjectRelease();
        v113 = v41;
        swift_unownedRetainStrong();

        if (swift_unknownObjectUnownedLoadStrong())
        {
          swift_unknownObjectRelease();
        }

        swift_unownedRetainStrong();
        v42 = v37;
        if ((v37 & 0x80000000) == 0)
        {
          v43 = (a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
          if (*(a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) > v37)
          {
            v44 = (*v43 + 12 * v37);
            if (v38 == -1 || v44[2] == v38)
            {
              v45 = *(*(*(a1 + 144) + 8 * *v44 + 32) + 344);
              v99 = *(*(a1 + 144) + 8 * *v44 + 32);

              os_unfair_lock_lock(v45);
              if (v43[1] > v37)
              {
                v46 = *v43 + 12 * v37;
                if (v38 == -1 || *(v46 + 8) == v38)
                {
                  v93 = *(v46 + 4);

                  sub_1AF62FD38(1, v93, 0);

                  sub_1AF678B44(v37 | (v38 << 32), v47);
                }
              }

              os_unfair_lock_unlock(*(v99 + 344));
            }
          }
        }

        if (swift_unknownObjectUnownedLoadStrong())
        {
          swift_unknownObjectRelease();
        }

        if (v41)
        {
          swift_unownedRetainStrong();
          *&v105 = v97;
          *(&v105 + 1) = a1;
          LOBYTE(v106) = 1;
          BYTE8(v108) = 7;
          v48 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
          if (v48 && (*(v48 + 81) & 1) != 0 && *(v48 + 24) && swift_weakLoadStrong())
          {

            swift_unknownObjectRetain();

            sub_1AF6CAF24(&v105, &v102);
            v49 = *(v48 + 16);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v48 + 16) = v49;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v49 = sub_1AF4221C8(0, *(v49 + 2) + 1, 1, v49);
              *(v48 + 16) = v49;
            }

            v52 = *(v49 + 2);
            v51 = *(v49 + 3);
            v100 = v52 + 1;
            v94 = v52;
            if (v52 >= v51 >> 1)
            {
              *(v48 + 16) = sub_1AF4221C8(v51 > 1, v100, 1, v49);
            }

            swift_unknownObjectRelease();
            sub_1AF57955C(&v105);
            v53 = *(v48 + 16);
            *(v53 + 16) = v100;
            v54 = (v53 + (v94 << 6));
            v55 = v102;
            v56 = v103;
            v57 = v104[0];
            *(v54 + 73) = *(v104 + 9);
            v54[3] = v56;
            v54[4] = v57;
            v54[2] = v55;
            *(v48 + 16) = v53;
          }

          else
          {

            sub_1AF57955C(&v105);
          }

          sub_1AF579490(v111);
          v58 = [objc_opt_self() immediateMode];
          sub_1AF6C5E30(v58 ^ 1);
        }

        else
        {
          sub_1AF579490(v111);
        }

        v59 = OBJC_IVAR____TtC3VFX13EntityManager__entries;

        if (v37 & 0x80000000) == 0 && *(a1 + v59 + 8) > v37 && ((v60 = *(a1 + v59) + 12 * v37, v38 == -1) || *(v60 + 8) == v38) && (v61 = *(*(*(a1 + 88) + 8 * *(v60 + 6) + 32) + 16), v62 = *(v61 + 128), *(v62 + 16)) && (v63 = sub_1AF449CB8(&type metadata for Hidden), (v64))
        {
          v65 = *(*(v61 + 24) + 16 * *(*(v62 + 56) + 8 * v63) + 32);

          if (v65 == &type metadata for Hidden)
          {
            goto LABEL_108;
          }
        }

        else
        {
        }

        v101 = v36;
        v66 = v34;
        v67 = v37;
        v68 = v38;
        v69 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

        v70 = v42;
        if (v69)
        {
          v71 = *(v69 + 80);
          swift_unknownObjectWeakLoadStrong();
          v69 = *(v69 + 56);
        }

        else
        {
          v71 = 0;
        }

        *&v103 = 0;
        swift_unknownObjectUnownedInit();
        *&v102 = a1;
        *&v103 = v69;
        swift_unknownObjectUnownedAssign();
        swift_unownedRetain();
        swift_unknownObjectRelease();
        BYTE8(v103) = v71;
        v72 = v71;
        if (v67 == -1)
        {
          v38 = v68;
          v34 = v66;
          if (!v68)
          {
            sub_1AF579490(&v102);
            v36 = v101;
            if ((v72 & 1) == 0)
            {

              v37 = v67;
              goto LABEL_107;
            }

            v37 = v67;
            goto LABEL_104;
          }

          swift_unownedRetainStrong();
        }

        else
        {
          swift_unownedRetainStrong();
          v34 = v66;
          if ((v67 & 0x80000000) == 0)
          {
            v95 = v72;
            v73 = v70;
            v74 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) <= v70;
            v38 = v68;
            if (!v74 && ((v75 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v73, v68 == -1) || *(v75 + 8) == v68))
            {
              v82 = *(*(*(a1 + 88) + 8 * *(v75 + 6) + 32) + 16);
              v83 = *(v82 + 128);
              v37 = v67;
              if (*(v83 + 16) && (v84 = sub_1AF449CB8(&type metadata for Hidden), (v85 & 1) != 0))
              {
                v86 = *(*(v82 + 24) + 16 * *(*(v83 + 56) + 8 * v84) + 32);

                v76 = v86 != &type metadata for Hidden;
              }

              else
              {

                v76 = 1;
              }
            }

            else
            {

              v76 = 1;
              v37 = v67;
            }

            v36 = v101;
            swift_unownedRetainStrong();
            if (*(a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) > v73)
            {
              v77 = (*(a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v73);
              if (v38 == -1 || v77[2] == v38)
              {
                v78 = *(*(a1 + 144) + 8 * *v77 + 32);
                v79 = *(v77 + 2);
                os_unfair_lock_lock(*(v78 + 344));
                sub_1AFC0F59C(v78, v79, a1);
                os_unfair_lock_unlock(*(v78 + 344));
              }
            }

            v72 = v95;
            goto LABEL_100;
          }
        }

        swift_unownedRetainStrong();
        v76 = 1;
        v38 = v68;
        v37 = v67;
        v36 = v101;
LABEL_100:

        swift_unownedRetainStrong();

        if (swift_unknownObjectUnownedLoadStrong())
        {
          swift_unknownObjectRelease();
        }

        if (!v72)
        {
          sub_1AF579490(&v102);
          goto LABEL_106;
        }

        swift_unownedRetainStrong();
        *&v105 = v97;
        *(&v105 + 1) = a1;
        sub_1AFCBAA8C(0, &qword_1EB643B78, &type metadata for Hidden, &off_1F25296D8, type metadata accessor for ComponentWriter);
        *(&v107 + 1) = v80;
        *&v108 = &off_1F2536170;
        LOBYTE(v106) = v76;
        BYTE8(v108) = 12;
        sub_1AF6C67D0(&v105);

        sub_1AF57955C(&v105);
        sub_1AF579490(&v102);
LABEL_104:
        v81 = [objc_opt_self() immediateMode];
        sub_1AF6C5E30(v81 ^ 1);
LABEL_106:

LABEL_107:
        sub_1AF5AAC40(v37 | (v38 << 32), a1);
LABEL_108:
        ++v36;
        --v34;
      }

      while (v34);
    }

LABEL_117:
    sub_1AFCB9F58(v114, &unk_1EB643C80, type metadata accessor for VFXObjectTag, &off_1F253D658, sub_1AFCBA680);

    return;
  }

  v90 = *&v116[40];
  v5 = *(&v117 + 1);
  v6 = *(&v118 + 1);
  v120 = *&v116[8];
  v121 = *&v116[24];
  if (v119 <= 0 || !*(&v117 + 1))
  {
    sub_1AFCB9F58(v116, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
    goto LABEL_37;
  }

  v98 = *(*(&v118 + 1) + 32);
  v96 = *(v118 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v88 = type metadata accessor for VFXObjectTag(0);
  v107 = *&v116[32];
  v108 = v117;
  v109 = v118;
  v110 = v119;
  v105 = *v116;
  v106 = *&v116[16];
  sub_1AF5DD298(&v105, &v102);
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v89 = v5;
  while (1)
  {
    v92 = v7;
    v9 = (v90 + 48 * v7);
    v10 = *v9;
    v11 = v9[1];
    v13 = *(v9 + 2);
    v12 = *(v9 + 3);
    v14 = *(v9 + 4);
    v15 = *(v9 + 5);
    if (v96)
    {
      v16 = *(v15 + 376);

      os_unfair_lock_lock(v16);
      os_unfair_lock_lock(*(v15 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v98);
    v17 = *(v6 + 64);
    v127[0] = *(v6 + 48);
    v127[1] = v17;
    v128 = *(v6 + 80);
    v18 = *(*(*(*(v15 + 40) + 16) + 32) + 16) + 1;
    *(v6 + 48) = ecs_stack_allocator_allocate(*(v6 + 32), 48 * v18, 8);
    *(v6 + 56) = v18;
    *(v6 + 72) = 0;
    *(v6 + 80) = 0;
    *(v6 + 64) = 0;
    v19 = v12;
    v20 = v15;
    sub_1AF64B110(v88, &off_1F253D658, v13, v19, v14, v6);
    if (v13)
    {
      if (v14)
      {
        while (1)
        {
          v22 = *v13++;
          v20 = v22;
          if ((*(v15 + 120) & 1) == 0)
          {

            if (*(v15 + 184))
            {
              goto LABEL_118;
            }

            v24 = *(*(v15 + 168) + 4 * v20);
            v25 = *(*(v23 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v24 + 8);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v8 = sub_1AF4217DC(0, *(v8 + 2) + 1, 1, v8);
            }

            v27 = *(v8 + 2);
            v26 = *(v8 + 3);
            if (v27 >= v26 >> 1)
            {
              v8 = sub_1AF4217DC(v26 > 1, v27 + 1, 1, v8);
            }

            *(v8 + 2) = v27 + 1;
            v21 = &v8[8 * v27];
            *(v21 + 8) = v24;
            *(v21 + 9) = v25;
          }

          if (!--v14)
          {
            goto LABEL_26;
          }
        }
      }

      goto LABEL_26;
    }

    if (v10 != v11)
    {
      break;
    }

LABEL_26:
    v122 = v91;
    v123 = v120;
    v124 = v121;
    sub_1AF630994(v6, &v122, v127);
    sub_1AF62D29C(v15);
    ecs_stack_allocator_pop_snapshot(v98);
    if (v96)
    {
      os_unfair_lock_unlock(*(v15 + 344));
      os_unfair_lock_unlock(*(v15 + 376));
    }

    v7 = v92 + 1;
    if (v92 + 1 == v89)
    {
      v35 = MEMORY[0x1E69E6720];
      sub_1AFCB9F58(v116, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
      sub_1AFCB9F58(v116, &qword_1ED725EA0, &type metadata for QueryResult, v35, sub_1AFCBA88C);
      v34 = *(v8 + 2);
      if (v34)
      {
        goto LABEL_40;
      }

      goto LABEL_117;
    }
  }

  while (1)
  {
    if (*(v15 + 120))
    {
      goto LABEL_29;
    }

    if (*(v15 + 184))
    {
      break;
    }

    v30 = *(*(v15 + 168) + 4 * v10);
    v31 = *(*(v29 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v30 + 8);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1AF4217DC(0, *(v8 + 2) + 1, 1, v8);
    }

    v33 = *(v8 + 2);
    v32 = *(v8 + 3);
    v20 = v33 + 1;
    if (v33 >= v32 >> 1)
    {
      v8 = sub_1AF4217DC(v32 > 1, v33 + 1, 1, v8);
    }

    *(v8 + 2) = v20;
    v28 = &v8[8 * v33];
    *(v28 + 8) = v30;
    *(v28 + 9) = v31;
LABEL_29:
    if (v11 == ++v10)
    {
      goto LABEL_26;
    }
  }

LABEL_118:
  sub_1AFDFE518();
  __break(1u);

  os_unfair_lock_unlock(*(v20 + 344));
  __break(1u);
}

uint64_t sub_1AFC9C5E4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!*(*(a3 + 264) + 16))
  {
    return result;
  }

  v4 = result;

  sub_1AF419914(v4, a2);
  if (v5)
  {

    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      if (*Strong == _TtCO3VFX21GraphV1CodeGeneration11CodeSnippet)
      {
        v8 = *(Strong + 136);
        v9 = *(v8 + 336) == 0x726F6C6F43 && *(v8 + 344) == 0xE500000000000000;
        if (v9 || (sub_1AFDFEE28() & 1) != 0)
        {
          v27 = MEMORY[0x1E69E6158];
          *&v26 = 0;
          *(&v26 + 1) = 0xE000000000000000;

          sub_1AF7FDDF0(1701667182, 0xE400000000000000, &v26, v25);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v26);
          sub_1AF449D40(v25, &v26);
          swift_dynamicCast();
          if (v23 == 0x657461756C617645 && v24 == 0xE800000000000000)
          {
          }

          else
          {
            v10 = sub_1AFDFEE28();

            if ((v10 & 1) == 0)
            {
            }
          }

          v11 = v7[6];
          v12 = v7[11];

          v13 = sub_1AF770BA0(v11, v12);
          v15 = v14;

          if (v13 == 0xD00000000000001BLL && 0x80000001AFF4C930 == v15)
          {
          }

          else
          {
            v17 = sub_1AFDFEE28();

            if ((v17 & 1) == 0)
            {
              goto LABEL_35;
            }
          }

          v18 = sub_1AF7F48D4(0x726F6C6F43, 0xE500000000000000, 0x657461756C617645, 0xE800000000000000, 0xD000000000000022, 0x80000001AFF4C950);

          if (v18)
          {
            v19 = sub_1AF78633C(v7, v18, 0);

            v20 = v7[2];
            if (v20)
            {
              v21 = v19[2];

              if (!v21)
              {
                v19[2] = sub_1AF432414(MEMORY[0x1E69E7CC0]);
              }

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *&v26 = v19[2];
              v19[2] = 0x8000000000000000;
              sub_1AF7A6008(v20, sub_1AF7A2CE4, 0, isUniquelyReferenced_nonNull_native, &v26);

              v19[2] = v26;
            }
          }

LABEL_35:
        }
      }
    }
  }

  else
  {
  }
}

uint64_t sub_1AFC9CA44(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!*(*(a3 + 264) + 16))
  {
    return result;
  }

  v4 = result;

  sub_1AF419914(v4, a2);
  if (v5)
  {

    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      if (*Strong == _TtCO3VFX21GraphV1CodeGeneration11CodeSnippet)
      {
        v8 = *(Strong + 136);
        v9 = *(v8 + 336) == 1752457549 && *(v8 + 344) == 0xE400000000000000;
        if (v9 || (sub_1AFDFEE28() & 1) != 0)
        {
          v27 = MEMORY[0x1E69E6158];
          *&v26 = 0;
          *(&v26 + 1) = 0xE000000000000000;

          sub_1AF7FDDF0(1701667182, 0xE400000000000000, &v26, v25);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v26);
          sub_1AF449D40(v25, &v26);
          swift_dynamicCast();
          if (v23 == 0x657461756C617645 && v24 == 0xE800000000000000)
          {
          }

          else
          {
            v10 = sub_1AFDFEE28();

            if ((v10 & 1) == 0)
            {
            }
          }

          v11 = v7[6];
          v12 = v7[11];

          v13 = sub_1AF770BA0(v11, v12);
          v15 = v14;

          if (v13 == 0xD000000000000017 && 0x80000001AFF4C980 == v15)
          {
          }

          else
          {
            v17 = sub_1AFDFEE28();

            if ((v17 & 1) == 0)
            {
              goto LABEL_35;
            }
          }

          v18 = sub_1AF7F48D4(1752457549, 0xE400000000000000, 0x657461756C617645, 0xE800000000000000, 0xD00000000000001DLL, 0x80000001AFF4C9A0);

          if (v18)
          {
            v19 = sub_1AF78633C(v7, v18, 0);

            v20 = v7[2];
            if (v20)
            {
              v21 = v19[2];

              if (!v21)
              {
                v19[2] = sub_1AF432414(MEMORY[0x1E69E7CC0]);
              }

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *&v26 = v19[2];
              v19[2] = 0x8000000000000000;
              sub_1AF7A6008(v20, sub_1AF7A2CE4, 0, isUniquelyReferenced_nonNull_native, &v26);

              v19[2] = v26;
            }
          }

LABEL_35:
        }
      }
    }
  }

  else
  {
  }
}

void sub_1AFC9CEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1AFDFDFD8();
  if (!swift_conformsToProtocol2())
  {
    __break(1u);
    goto LABEL_65;
  }

  if (v6 != &type metadata for ColorRampComponent)
  {
    v7 = sub_1AFDFDFD8();
    if (swift_conformsToProtocol2())
    {
      if (v7 != &type metadata for CurveComponent)
      {
        return;
      }

      goto LABEL_5;
    }

LABEL_65:
    __break(1u);
    return;
  }

LABEL_5:
  v84 = a4;
  v8 = *(a4 + 168);
  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 64);
  v12 = (v9 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v13 = 0;
  v85 = v12;
  v86 = a1;
  while (1)
  {
    do
    {
LABEL_8:
      if (!v11)
      {
        while (1)
        {
          v14 = v13 + 1;
          if (v13 + 1 >= v12)
          {
            break;
          }

          v11 = *(v8 + 8 * v13++ + 72);
          if (v11)
          {
            v13 = v14;
            goto LABEL_12;
          }
        }

        return;
      }

LABEL_12:
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v16 = v15 | (v13 << 6);
      v17 = *(*(*(v8 + 56) + 8 * v16) + 80);
      v18 = *(v17 + 16);
    }

    while (!v18);
    v95 = *(*(v8 + 56) + 8 * v16);
    v21 = *(v17 + 40);
    v19 = (v17 + 40);
    v20 = v21;
    v22 = *(v19 - 1);
    v23 = v18;
    v24 = v19;
    while (1)
    {
      v25 = *(v24 - 1) == v22 && *v24 == v20;
      if (v25 || (sub_1AFDFEE28() & 1) != 0)
      {
        break;
      }

      v24 += 2;
      if (!--v23)
      {
        goto LABEL_8;
      }
    }

    v26 = 0;
    while (1)
    {
      v27 = *(v19 - 1) == v22 && *v19 == v20;
      if (v27 || (sub_1AFDFEE28() & 1) != 0)
      {
        break;
      }

      ++v26;
      v19 += 2;
      if (v18 == v26)
      {
        v26 = 0;
        break;
      }
    }

    v28 = (*(v95 + 88) + 40 * v26);
    v29 = v28[4];
    v30 = v28[5];
    v31 = v28[6];
    v32 = v28[7];
    v90 = v29;
    v87 = v28[8];

    sub_1AF687F90(v29, v30, v31, v32, v87);
    v33 = sub_1AF7AF740(v22, v20);
    v35 = v34;
    swift_weakInit();
    swift_weakAssign();

    swift_weakDestroy();

    sub_1AF687FE4(v90, v30, v31, v32, v87);
    if (v33 == v86 && v35 == a2)
    {
      break;
    }

    v36 = sub_1AFDFEE28();

    if (v36)
    {

      goto LABEL_37;
    }

    v12 = v85;
  }

LABEL_37:

  v37 = *(v95 + 80);
  if (!v37[2] || (v38 = v37[4], v39 = v37[5], , v40 = sub_1AF7AF5BC(v38, v39), , !v40))
  {

    return;
  }

  v42 = v40[7];
  v41 = v40[8];
  v44 = v40[9];
  v43 = v40[10];
  v45 = v40[11];
  if (v41 == 28)
  {
    v89 = v40[7];
    v91 = v40[9];
    v93 = v40[10];
    v94 = v40[11];
    v66 = v40[3];
    v67 = v40[4];
    v98 = xmmword_1AFE79130;
    v100 = 0;
    v101 = 0;
    v99 = 0;

    sub_1AF7AF3E4(v66, v67, &v98);
    v68 = sub_1AF7AF5BC(v66, v67);

    v69 = v68[5];
    v70 = v68[6];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v97 = *(v84 + 264);
    *(v84 + 264) = 0x8000000000000000;
    sub_1AF854E5C(v68, v69, v70, isUniquelyReferenced_nonNull_native);

    *(v84 + 264) = v97;

    v73 = sub_1AF7AA030(v72, v84, v95);

    v74 = 1 << *(v73 + 32);
    v75 = -1;
    if (v74 < 64)
    {
      v75 = ~(-1 << v74);
    }

    v76 = v75 & *(v73 + 64);
    v77 = (v74 + 63) >> 6;

    v78 = 0;
    while (v76)
    {
      v79 = v78;
LABEL_59:
      v80 = __clz(__rbit64(v76));
      v76 &= v76 - 1;
      v81 = (*(v73 + 48) + 16 * (v80 | (v79 << 6)));
      v82 = *v81;
      v83 = v81[1];

      sub_1AFC9C5E4(v82, v83, v84);
    }

    while (1)
    {
      v79 = v78 + 1;
      if (v78 + 1 >= v77)
      {
        break;
      }

      v76 = *(v73 + 8 * v78++ + 72);
      if (v76)
      {
        v78 = v79;
        goto LABEL_59;
      }
    }

    v64 = v89;
    v65 = 28;
    goto LABEL_62;
  }

  if (v41 == 37)
  {
    v88 = v40[7];
    v91 = v40[9];
    v93 = v40[10];
    v94 = v40[11];
    v46 = v40[3];
    v47 = v40[4];
    v98 = xmmword_1AFE791A0;
    v100 = 0;
    v101 = 0;
    v99 = 0;

    sub_1AF7AF3E4(v46, v47, &v98);
    v48 = sub_1AF7AF5BC(v46, v47);

    v49 = v48[5];
    v50 = v48[6];

    v51 = swift_isUniquelyReferenced_nonNull_native();
    v96 = *(v84 + 264);
    *(v84 + 264) = 0x8000000000000000;
    sub_1AF854E5C(v48, v49, v50, v51);

    *(v84 + 264) = v96;

    v53 = sub_1AF7AA030(v52, v84, v95);

    v54 = 1 << *(v53 + 32);
    v55 = -1;
    if (v54 < 64)
    {
      v55 = ~(-1 << v54);
    }

    v56 = v55 & *(v53 + 64);
    v57 = (v54 + 63) >> 6;

    v58 = 0;
    while (v56)
    {
      v59 = v58;
LABEL_48:
      v60 = __clz(__rbit64(v56));
      v56 &= v56 - 1;
      v61 = (*(v53 + 48) + 16 * (v60 | (v59 << 6)));
      v62 = *v61;
      v63 = v61[1];

      sub_1AFC9CA44(v62, v63, v84);
    }

    while (1)
    {
      v59 = v58 + 1;
      if (v58 + 1 >= v57)
      {
        break;
      }

      v56 = *(v53 + 8 * v58++ + 72);
      if (v56)
      {
        v58 = v59;
        goto LABEL_48;
      }
    }

    v64 = v88;
    v65 = 37;
LABEL_62:
    sub_1AF687FE4(v64, v65, v91, v93, v94);

    return;
  }

  sub_1AF687F90(v40[7], v40[8], v40[9], v40[10], v40[11]);

  sub_1AF687FE4(v42, v41, v44, v43, v45);
}

uint64_t sub_1AFC9D684(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0x100000000;
  if (qword_1ED72D720 != -1)
  {
    v51 = a2;
    swift_once();
    LODWORD(a2) = v51;
  }

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  v77 = qword_1ED73B840;
  v78 = v4;
  v79 = v3 >> 31;
  v80 = 1;
  v81 = 2;
  v82 = 0;

  sub_1AF8D6CE4(1, 1, 3, v66);

  v75[0] = v66[0];
  v75[1] = v66[1];
  v76 = v67;
  sub_1AF6B06C0(a1, v75, 0x200000000, v68);
  if (!*v68)
  {
    return sub_1AFCB9FB8(v66, sub_1AFCBA978);
  }

  if (v71 > 0 && (v54 = *(&v69 + 1)) != 0)
  {
    v53 = *&v68[40];
    v5 = *(v70 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v58 = *(*(&v70 + 1) + 32);
    v59 = *(&v70 + 1);
    v72 = *v68;
    v73 = *&v68[8];
    v74 = *&v68[24];
    v65[2] = *&v68[32];
    v65[3] = v69;
    v65[4] = v70;
    v65[5] = v71;
    v65[0] = *v68;
    v65[1] = *&v68[16];
    sub_1AF5DD298(v65, v63);
    v6 = 0;
    v7 = 0;
    v52 = v5;
    do
    {
      v56 = v7;
      v57 = v6;
      v8 = (v53 + 48 * v6);
      v10 = *v8;
      v9 = v8[1];
      v11 = *(v8 + 2);
      v12 = *(v8 + 3);
      v14 = *(v8 + 4);
      v13 = *(v8 + 5);
      if (v5)
      {
        v15 = *(v13 + 376);

        os_unfair_lock_lock(v15);
        os_unfair_lock_lock(*(v13 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v58);
      v16 = *(v59 + 64);
      v63[0] = *(v59 + 48);
      v63[1] = v16;
      v64 = *(v59 + 80);
      v17 = *(*(*(*(v13 + 40) + 16) + 32) + 16) + 1;
      *(v59 + 48) = ecs_stack_allocator_allocate(*(v59 + 32), 48 * v17, 8);
      *(v59 + 56) = v17;
      *(v59 + 72) = 0;
      *(v59 + 80) = 0;
      *(v59 + 64) = 0;
      sub_1AF64B110(&type metadata for CodeGenerationInitialized, &off_1F253BF30, v11, v12, v14, v59);
      v18 = sub_1AF64B110(&type metadata for GraphEntityComponentPropertyReferences, &off_1F253B5B8, v11, v12, v14, v59);
      v55 = v13;
      v62 = sub_1AF64B110(&type metadata for CodeGenerationComponent, &off_1F253BF50, v11, v12, v14, v59);
      if (v11)
      {
        if (v14)
        {
          v19 = 0;
          v60 = v18 + 8;
          do
          {
            v20 = *&v62[8 * v19];
            if (v20)
            {
              v21 = *&v60[64 * v19];
              v22 = 1 << *(v21 + 32);
              if (v22 < 64)
              {
                v23 = ~(-1 << v22);
              }

              else
              {
                v23 = -1;
              }

              v24 = v23 & *(v21 + 64);
              v25 = (v22 + 63) >> 6;
              swift_bridgeObjectRetain_n();

              v26 = 0;
              while (v24)
              {
                v27 = v26;
LABEL_28:
                v28 = __clz(__rbit64(v24));
                v24 &= v24 - 1;
                v29 = (v27 << 10) | (16 * v28);
                v30 = (*(v21 + 48) + v29);
                v31 = *v30;
                v32 = v30[1];
                v33 = *(*(v21 + 56) + v29 + 8);

                sub_1AFC9CEA8(v31, v32, v33, v20);
              }

              while (1)
              {
                v27 = v26 + 1;
                if (v26 + 1 >= v25)
                {
                  break;
                }

                v24 = *(v21 + 8 * v26++ + 72);
                if (v24)
                {
                  v26 = v27;
                  goto LABEL_28;
                }
              }
            }

            ++v19;
          }

          while (v19 != v14);
        }
      }

      else if (v10 != v9)
      {
        v61 = v18 + 8;
        do
        {
          v34 = *&v62[8 * v10];
          if (v34)
          {
            v35 = *&v61[64 * v10];
            v36 = 1 << *(v35 + 32);
            if (v36 < 64)
            {
              v37 = ~(-1 << v36);
            }

            else
            {
              v37 = -1;
            }

            v38 = v37 & *(v35 + 64);
            v39 = (v36 + 63) >> 6;
            swift_bridgeObjectRetain_n();

            v40 = 0;
            while (v38)
            {
              v41 = v40;
LABEL_45:
              v42 = __clz(__rbit64(v38));
              v38 &= v38 - 1;
              v43 = (v41 << 10) | (16 * v42);
              v44 = (*(v35 + 48) + v43);
              v45 = *v44;
              v46 = v44[1];
              v47 = *(*(v35 + 56) + v43 + 8);

              sub_1AFC9CEA8(v45, v46, v47, v34);
            }

            while (1)
            {
              v41 = v40 + 1;
              if (v40 + 1 >= v39)
              {
                break;
              }

              v38 = *(v35 + 8 * v40++ + 72);
              if (v38)
              {
                v40 = v41;
                goto LABEL_45;
              }
            }
          }

          ++v10;
        }

        while (v10 != v9);
      }

      v7 = v56;
      sub_1AF630994(v59, &v72, v63);
      sub_1AF62D29C(v55);
      ecs_stack_allocator_pop_snapshot(v58);
      v5 = v52;
      if (v52)
      {
        os_unfair_lock_unlock(*(v55 + 344));
        os_unfair_lock_unlock(*(v55 + 376));
      }

      v6 = v57 + 1;
    }

    while (v57 + 1 != v54);
    v50 = MEMORY[0x1E69E6720];
    sub_1AFCB9F58(v68, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
    sub_1AFCB9FB8(v66, sub_1AFCBA978);
    v48 = v50;
  }

  else
  {
    sub_1AFCB9FB8(v66, sub_1AFCBA978);
    v48 = MEMORY[0x1E69E6720];
  }

  return sub_1AFCB9F58(v68, &qword_1ED725EA0, &type metadata for QueryResult, v48, sub_1AFCBA88C);
}

void sub_1AFC9DD20(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0x100000000;
  if (qword_1ED72D720 != -1)
  {
    v235 = a2;
    swift_once();
    LODWORD(a2) = v235;
  }

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  v298 = qword_1ED73B840;
  v299 = v4;
  v300 = v3 >> 31;
  v301 = 1;
  v302 = 2;
  v303 = 0;

  sub_1AF702F8C(3, v283);

  v294[0] = v283[0];
  v294[1] = v283[1];
  v295 = v284;
  v275 = a1;
  sub_1AF6B06C0(a1, v294, 0x200000000, v285);
  v239 = *&v285[0];
  if (!*&v285[0])
  {
    sub_1AFCBA0DC(v283, &qword_1ED723D38, &type metadata for EmitterDescription, &off_1F2563648);
    return;
  }

  v238 = *(&v285[2] + 1);
  v5 = *(&v286 + 1);
  v243 = *(&v287 + 1);
  v289 = *(v285 + 8);
  v290 = *(&v285[1] + 8);
  if (v288 > 0 && *(&v286 + 1))
  {
    v6 = *(*(&v287 + 1) + 32);
    v242 = *(v287 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v282[3] = v286;
    v282[4] = v287;
    v282[5] = v288;
    v282[0] = v285[0];
    v274 = (a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    v249 = OBJC_IVAR____TtC3VFX13EntityManager_commandQueues;
    v282[1] = v285[1];
    v282[2] = v285[2];
    sub_1AF5DD298(v282, &v278);
    v7 = 0;
    v8 = 0;
    v236 = v6;
    v237 = v5;
    while (1)
    {
      v241 = v7;
      v9 = (v238 + 48 * v7);
      v10 = *v9;
      v244 = v9[1];
      v12 = *(v9 + 2);
      v11 = *(v9 + 3);
      v14 = *(v9 + 4);
      v13 = *(v9 + 5);
      if (v242)
      {
        v15 = *(v13 + 376);

        os_unfair_lock_lock(v15);
        os_unfair_lock_lock(*(v13 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v6);
      v16 = *(v243 + 64);
      v296[0] = *(v243 + 48);
      v296[1] = v16;
      v297 = *(v243 + 80);
      v17 = *(*(*(*(v13 + 40) + 16) + 32) + 16) + 1;
      *(v243 + 48) = ecs_stack_allocator_allocate(*(v243 + 32), 48 * v17, 8);
      *(v243 + 56) = v17;
      *(v243 + 72) = 0;
      *(v243 + 80) = 0;
      *(v243 + 64) = 0;
      v240 = v13;
      v246 = sub_1AF64B110(&type metadata for EmitterDescription, &off_1F2563648, v12, v11, v14, v243);
      if (v12)
      {
        if (v14)
        {
          v18 = 0;
          v245 = v14;
          while (1)
          {
            v247 = v18;
            v250 = &v246[104 * v18];
            v264 = *(*v250 + 16);
            if (v264)
            {
              v262 = *v250 + 32;

              v21 = 0;
              v22 = MEMORY[0x1E69E7CC0];
              while (1)
              {
                *&v20 = *(v262 + 8 * v21);
                v23 = DWORD1(v20);
                v266 = v20;
                v24 = v20;
                v25 = v20;
                sub_1AF3CB570(v20, &v278);
                if (!v279)
                {
                  break;
                }

                v26 = v279[2];
                sub_1AF487074(v278, v279, v280);
                v27 = v274;
                if (v26)
                {
                  goto LABEL_42;
                }

                v28 = v24 == -1 && v23 == 0;
                if (!v28 && (v24 & 0x80000000) == 0 && v274[1] > v24)
                {
                  v29 = (*v274 + 12 * v24);
                  if (v23 == -1 || v29[2] == v23)
                  {
                    v31 = *(v29 + 2);
                    v32 = *(*(v275 + 144) + 8 * *v29 + 32);
                    if (*(v32 + 232) <= v31 && *(v32 + 240) > v31)
                    {
                      v55 = **(v275 + v249);
                      v56 = *(v32 + 344);

                      os_unfair_lock_lock(v56);
                      ecs_stack_allocator_push_snapshot(*(v55 + 32));

                      sub_1AF65CFA0(v55, v32, v31);

                      ecs_stack_allocator_pop_snapshot(*(v55 + 32));
                      os_unfair_lock_unlock(*(v32 + 344));
                    }
                  }
                }

LABEL_21:
                if (++v21 == v264)
                {

                  v19 = v250;
                  goto LABEL_84;
                }
              }

              v27 = v274;
LABEL_42:
              v276 = 0;
              if (v24 == -1 && v23 == 0)
              {
                v35 = v275;
LABEL_73:
                sub_1AF65CD48(v25, v35, &type metadata for PropagateDirtiness, &off_1F2532300, 0);
LABEL_74:
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v277 = v22;
                v52 = v8;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_1AFC07194(0, *(v22 + 16) + 1, 1);
                  v22 = v277;
                }

                v54 = *(v22 + 16);
                v53 = *(v22 + 24);
                if (v54 >= v53 >> 1)
                {
                  sub_1AFC07194(v53 > 1, v54 + 1, 1);
                  v22 = v277;
                }

                *(v22 + 16) = v54 + 1;
                *(&v20 + 1) = v266.n128_u64[1];
                *(v22 + 8 * v54 + 32) = v266.n128_u64[0];
                v8 = v52;
                goto LABEL_21;
              }

              v35 = v275;
              if ((v24 & 0x80000000) == 0 && v27[1] > v24)
              {
                v36 = *v27 + 12 * v24;
                if (v23 == -1 || *(v36 + 8) == v23)
                {
                  v252 = v8;
                  v38 = *(*(*(*(v275 + 88) + 8 * *(v36 + 6) + 32) + 16) + 32);
                  v39 = *(v38 + 16);
                  if (!v39)
                  {
                    v35 = v275;
                    v8 = v252;
                    if (v24 < 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_58;
                  }

                  v40 = (v38 + 40);
                  do
                  {
                    sub_1AFC953DC(*(v40 - 1), *v40, &v276, &v276 + 1);
                    v40 += 2;
                    --v39;
                  }

                  while (v39);

                  v27 = v274;
                  v35 = v275;
                  v8 = v252;
                  if ((v276 & 0x100) != 0)
                  {
                    goto LABEL_70;
                  }
                }
              }

              if (v24 < 0)
              {
                goto LABEL_70;
              }

LABEL_58:
              if (v27[1] > v24)
              {
                v41 = (*v27 + 12 * v24);
                if (v23 == -1 || v41[2] == v23)
                {
                  v42 = *(v41 + 2);
                  v43 = *(*(v35 + 144) + 8 * *v41 + 32);
                  if (*(v43 + 232) <= v42 && *(v43 + 240) > v42)
                  {
                    v253 = v8;
                    v45 = **(v35 + v249);
                    v46 = *(v43 + 344);

                    os_unfair_lock_lock(v46);
                    ecs_stack_allocator_push_snapshot(*(v45 + 32));
                    v47 = *(*(v43 + 40) + 16);
                    v48 = *(v47 + 128);
                    if (*(v48 + 16) && (v49 = sub_1AF449CB8(&type metadata for Parent), (v50 & 1) != 0) && *(*(v47 + 24) + 16 * *(*(v48 + 56) + 8 * v49) + 32) == &type metadata for Parent)
                    {
                      v278 = &type metadata for Parent;
                      v279 = &off_1F2529C98;
                      v281 = 1;
                      MEMORY[0x1EEE9AC00](v49);

                      sub_1AF63023C(0, v43, sub_1AFA9EC24);
                      sub_1AF635250(&v278);
                    }

                    else
                    {
                    }

                    sub_1AF62D29C(v43);

                    ecs_stack_allocator_pop_snapshot(*(v45 + 32));
                    os_unfair_lock_unlock(*(v43 + 344));

                    v35 = v275;
                    v8 = v253;
                  }
                }
              }

LABEL_70:
              if (v276)
              {
                goto LABEL_74;
              }

              goto LABEL_73;
            }

            v22 = MEMORY[0x1E69E7CC0];
            v19 = &v246[104 * v18];
LABEL_84:

            *v19 = v22;
            v57 = *(v19 + 1);
            v58 = *(v57 + 16);
            if (v58)
            {
              v59 = v57 + 32;

              v61 = 0;
              v62 = MEMORY[0x1E69E7CC0];
              while (1)
              {
                *&v60 = *(v59 + 8 * v61);
                v63 = DWORD1(v60);
                v267 = v60;
                v64 = v60;
                v65 = v60;
                sub_1AF3CB570(v60, &v278);
                if (!v279)
                {
                  break;
                }

                v66 = v279[2];
                sub_1AF487074(v278, v279, v280);
                v67 = v274;
                if (v66)
                {
                  goto LABEL_107;
                }

                v68 = v64 == -1 && v63 == 0;
                if (!v68 && (v64 & 0x80000000) == 0 && v274[1] > v64)
                {
                  v69 = (*v274 + 12 * v64);
                  if (v63 == -1 || v69[2] == v63)
                  {
                    v71 = *(v69 + 2);
                    v72 = *(*(v275 + 144) + 8 * *v69 + 32);
                    if (*(v72 + 232) <= v71 && *(v72 + 240) > v71)
                    {
                      v85 = **(v275 + v249);
                      v86 = *(v72 + 344);

                      os_unfair_lock_lock(v86);
                      ecs_stack_allocator_push_snapshot(*(v85 + 32));

                      sub_1AF65CFA0(v85, v72, v71);

                      ecs_stack_allocator_pop_snapshot(*(v85 + 32));
                      os_unfair_lock_unlock(*(v72 + 344));
                    }
                  }
                }

LABEL_86:
                if (++v61 == v58)
                {

                  v19 = v250;
                  goto LABEL_134;
                }
              }

              v67 = v274;
LABEL_107:
              LOBYTE(v278) = 0;
              HIBYTE(v276) = 0;
              if (v64 != -1 || v63 != 0)
              {
                v75 = v275;
                if (v64 < 0 || v67[1] <= v64)
                {
                  goto LABEL_130;
                }

                v76 = *v67 + 12 * v64;
                if (v63 != -1 && *(v76 + 8) != v63)
                {
                  goto LABEL_130;
                }

                v78 = *(*(*(*(v275 + 88) + 8 * *(v76 + 6) + 32) + 16) + 32);
                v79 = *(v78 + 16);
                if (v79)
                {
                  v254 = v8;

                  v80 = (v78 + 40);
                  do
                  {
                    sub_1AFC953DC(*(v80 - 1), *v80, &v276 + 1, &v278);
                    v80 += 2;
                    --v79;
                  }

                  while (v79);

                  v75 = v275;
                  v8 = v254;
                  if (v278)
                  {
                    if ((v276 & 0x100) != 0)
                    {
LABEL_124:
                      v81 = swift_isUniquelyReferenced_nonNull_native();
                      v277 = v62;
                      v82 = v8;
                      if ((v81 & 1) == 0)
                      {
                        sub_1AFC07194(0, *(v62 + 16) + 1, 1);
                        v62 = v277;
                      }

                      v84 = *(v62 + 16);
                      v83 = *(v62 + 24);
                      if (v84 >= v83 >> 1)
                      {
                        sub_1AFC07194(v83 > 1, v84 + 1, 1);
                        v62 = v277;
                      }

                      *(v62 + 16) = v84 + 1;
                      *(&v60 + 1) = v267.n128_u64[1];
                      *(v62 + 8 * v84 + 32) = v267.n128_u64[0];
                      v8 = v82;
                      goto LABEL_86;
                    }

LABEL_123:
                    sub_1AF65CD48(v65, v75, &type metadata for PropagateDirtiness, &off_1F2532300, 0);
                    goto LABEL_124;
                  }

LABEL_130:
                  sub_1AF65CD48(v65, v75, &type metadata for Parent, &off_1F2529C98, 0);
                  if ((v276 & 0x100) != 0)
                  {
                    goto LABEL_124;
                  }

                  goto LABEL_123;
                }
              }

              v75 = v275;
              goto LABEL_130;
            }

            v62 = MEMORY[0x1E69E7CC0];
LABEL_134:

            *(v19 + 1) = v62;
            v87 = *(v19 + 2);
            v88 = *(v87 + 16);
            if (v88)
            {
              v89 = v87 + 32;

              v91 = 0;
              v92 = MEMORY[0x1E69E7CC0];
              while (1)
              {
                *&v90 = *(v89 + 8 * v91);
                v93 = DWORD1(v90);
                v268 = v90;
                v94 = v90;
                v95 = v90;
                sub_1AF3CB570(v90, &v278);
                if (!v279)
                {
                  break;
                }

                v96 = v279[2];
                sub_1AF487074(v278, v279, v280);
                if (v96)
                {
                  break;
                }

                sub_1AF65CE88(v95, v275);
LABEL_137:
                if (++v91 == v88)
                {

                  v19 = v250;
                  goto LABEL_167;
                }
              }

              LOBYTE(v278) = 0;
              HIBYTE(v276) = 0;
              if (v94 != -1 || v93 != 0)
              {
                v98 = v275;
                if (v94 < 0 || v274[1] <= v94)
                {
                  goto LABEL_163;
                }

                v99 = *v274 + 12 * v94;
                if (v93 != -1 && *(v99 + 8) != v93)
                {
                  goto LABEL_163;
                }

                v101 = *(*(*(*(v275 + 88) + 8 * *(v99 + 6) + 32) + 16) + 32);
                v102 = *(v101 + 16);
                if (v102)
                {
                  v255 = v8;

                  v103 = (v101 + 40);
                  do
                  {
                    sub_1AFC953DC(*(v103 - 1), *v103, &v276 + 1, &v278);
                    v103 += 2;
                    --v102;
                  }

                  while (v102);

                  v98 = v275;
                  v8 = v255;
                  if (v278)
                  {
                    if ((v276 & 0x100) != 0)
                    {
LABEL_157:
                      v104 = swift_isUniquelyReferenced_nonNull_native();
                      v277 = v92;
                      v105 = v8;
                      if ((v104 & 1) == 0)
                      {
                        sub_1AFC07194(0, *(v92 + 16) + 1, 1);
                        v92 = v277;
                      }

                      v107 = *(v92 + 16);
                      v106 = *(v92 + 24);
                      if (v107 >= v106 >> 1)
                      {
                        sub_1AFC07194(v106 > 1, v107 + 1, 1);
                        v92 = v277;
                      }

                      *(v92 + 16) = v107 + 1;
                      *(&v90 + 1) = v268.n128_u64[1];
                      *(v92 + 8 * v107 + 32) = v268.n128_u64[0];
                      v8 = v105;
                      goto LABEL_137;
                    }

LABEL_156:
                    sub_1AF65CD48(v95, v98, &type metadata for PropagateDirtiness, &off_1F2532300, 0);
                    goto LABEL_157;
                  }

LABEL_163:
                  sub_1AF65CD48(v95, v98, &type metadata for Parent, &off_1F2529C98, 0);
                  if ((v276 & 0x100) != 0)
                  {
                    goto LABEL_157;
                  }

                  goto LABEL_156;
                }
              }

              v98 = v275;
              goto LABEL_163;
            }

            v92 = MEMORY[0x1E69E7CC0];
LABEL_167:

            *(v19 + 2) = v92;
            v108 = *(v19 + 3);
            v109 = *(v108 + 16);
            if (v109)
            {
              break;
            }

            v113 = MEMORY[0x1E69E7CC0];
LABEL_18:

            *(v19 + 3) = v113;
            v18 = v247 + 1;
            if (v247 + 1 == v245)
            {
              goto LABEL_200;
            }
          }

          v110 = v108 + 32;

          v112 = 0;
          v113 = MEMORY[0x1E69E7CC0];
          while (1)
          {
            *&v111 = *(v110 + 8 * v112);
            v114 = DWORD1(v111);
            v269 = v111;
            v115 = v111;
            v116 = v111;
            sub_1AF3CB570(v111, &v278);
            if (!v279)
            {
              break;
            }

            v117 = v279[2];
            sub_1AF487074(v278, v279, v280);
            if (v117)
            {
              break;
            }

            sub_1AF65CE88(v116, v275);
LABEL_170:
            if (++v112 == v109)
            {

              v19 = v250;
              goto LABEL_18;
            }
          }

          LOBYTE(v278) = 0;
          HIBYTE(v276) = 0;
          if (v115 != -1 || v114 != 0)
          {
            v119 = v275;
            if (v115 < 0 || v274[1] <= v115)
            {
              goto LABEL_196;
            }

            v120 = *v274 + 12 * v115;
            if (v114 != -1 && *(v120 + 8) != v114)
            {
              goto LABEL_196;
            }

            v122 = *(*(*(*(v275 + 88) + 8 * *(v120 + 6) + 32) + 16) + 32);
            v123 = *(v122 + 16);
            if (v123)
            {
              v256 = v8;

              v124 = (v122 + 40);
              do
              {
                sub_1AFC953DC(*(v124 - 1), *v124, &v276 + 1, &v278);
                v124 += 2;
                --v123;
              }

              while (v123);

              v119 = v275;
              v8 = v256;
              if (v278)
              {
                if ((v276 & 0x100) != 0)
                {
LABEL_190:
                  v125 = swift_isUniquelyReferenced_nonNull_native();
                  v277 = v113;
                  v126 = v8;
                  if ((v125 & 1) == 0)
                  {
                    sub_1AFC07194(0, *(v113 + 16) + 1, 1);
                    v113 = v277;
                  }

                  v128 = *(v113 + 16);
                  v127 = *(v113 + 24);
                  if (v128 >= v127 >> 1)
                  {
                    sub_1AFC07194(v127 > 1, v128 + 1, 1);
                    v113 = v277;
                  }

                  *(v113 + 16) = v128 + 1;
                  *(&v111 + 1) = v269.n128_u64[1];
                  *(v113 + 8 * v128 + 32) = v269.n128_u64[0];
                  v8 = v126;
                  goto LABEL_170;
                }

LABEL_189:
                sub_1AF65CD48(v116, v119, &type metadata for PropagateDirtiness, &off_1F2532300, 0);
                goto LABEL_190;
              }

LABEL_196:
              sub_1AF65CD48(v116, v119, &type metadata for Parent, &off_1F2529C98, 0);
              if ((v276 & 0x100) != 0)
              {
                goto LABEL_190;
              }

              goto LABEL_189;
            }
          }

          v119 = v275;
          goto LABEL_196;
        }

        goto LABEL_200;
      }

      if (v10 != v244)
      {
        break;
      }

LABEL_200:
      v291 = v239;
      v292 = v289;
      v293 = v290;
      sub_1AF630994(v243, &v291, v296);
      sub_1AF62D29C(v240);
      v6 = v236;
      ecs_stack_allocator_pop_snapshot(v236);
      if (v242)
      {
        os_unfair_lock_unlock(*(v240 + 344));
        os_unfair_lock_unlock(*(v240 + 376));
      }

      v7 = v241 + 1;
      if (v241 + 1 == v237)
      {
        sub_1AFCBA0DC(v283, &qword_1ED723D38, &type metadata for EmitterDescription, &off_1F2563648);
        v234 = MEMORY[0x1E69E6720];
        sub_1AFCB9F58(v285, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
        v233 = v234;
        goto LABEL_370;
      }
    }

    while (1)
    {
      v248 = v10;
      v130 = &v246[104 * v10];
      v251 = v130;
      v265 = *(*v130 + 16);
      if (v265)
      {
        v263 = *v130 + 32;

        v132 = 0;
        v133 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          *&v131 = *(v263 + 8 * v132);
          v134 = DWORD1(v131);
          v270 = v131;
          v135 = v131;
          v136 = v131;
          sub_1AF3CB570(v131, &v278);
          if (!v279)
          {
            break;
          }

          v137 = v279[2];
          sub_1AF487074(v278, v279, v280);
          v138 = v274;
          if (v137)
          {
            goto LABEL_227;
          }

          v139 = v135 == -1 && v134 == 0;
          if (!v139 && (v135 & 0x80000000) == 0 && v274[1] > v135)
          {
            v140 = (*v274 + 12 * v135);
            if (v134 == -1 || v140[2] == v134)
            {
              v142 = *(v140 + 2);
              v143 = *(*(v275 + 144) + 8 * *v140 + 32);
              if (*(v143 + 232) <= v142 && *(v143 + 240) > v142)
              {
                v166 = **(v275 + v249);
                v167 = *(v143 + 344);

                os_unfair_lock_lock(v167);
                ecs_stack_allocator_push_snapshot(*(v166 + 32));

                sub_1AF65CFA0(v166, v143, v142);

                ecs_stack_allocator_pop_snapshot(*(v166 + 32));
                os_unfair_lock_unlock(*(v143 + 344));
              }
            }
          }

LABEL_206:
          if (++v132 == v265)
          {

            v130 = v251;
            goto LABEL_269;
          }
        }

        v138 = v274;
LABEL_227:
        v276 = 0;
        if (v135 == -1 && v134 == 0)
        {
          v146 = v275;
LABEL_258:
          sub_1AF65CD48(v136, v146, &type metadata for PropagateDirtiness, &off_1F2532300, 0);
LABEL_259:
          v162 = swift_isUniquelyReferenced_nonNull_native();
          v277 = v133;
          v163 = v8;
          if ((v162 & 1) == 0)
          {
            sub_1AFC07194(0, *(v133 + 16) + 1, 1);
            v133 = v277;
          }

          v165 = *(v133 + 16);
          v164 = *(v133 + 24);
          if (v165 >= v164 >> 1)
          {
            sub_1AFC07194(v164 > 1, v165 + 1, 1);
            v133 = v277;
          }

          *(v133 + 16) = v165 + 1;
          *(&v131 + 1) = v270.n128_u64[1];
          *(v133 + 8 * v165 + 32) = v270.n128_u64[0];
          v8 = v163;
          goto LABEL_206;
        }

        v146 = v275;
        if ((v135 & 0x80000000) == 0 && v138[1] > v135)
        {
          v147 = *v138 + 12 * v135;
          if (v134 == -1 || *(v147 + 8) == v134)
          {
            v149 = *(*(*(*(v275 + 88) + 8 * *(v147 + 6) + 32) + 16) + 32);
            v150 = *(v149 + 16);
            if (!v150)
            {
              v146 = v275;
              if (v135 < 0)
              {
                goto LABEL_255;
              }

              goto LABEL_243;
            }

            v257 = v8;

            v151 = (v149 + 40);
            do
            {
              sub_1AFC953DC(*(v151 - 1), *v151, &v276, &v276 + 1);
              v151 += 2;
              --v150;
            }

            while (v150);

            v138 = v274;
            v146 = v275;
            v8 = v257;
            if ((v276 & 0x100) != 0)
            {
              goto LABEL_255;
            }
          }
        }

        if (v135 < 0)
        {
          goto LABEL_255;
        }

LABEL_243:
        if (v138[1] > v135)
        {
          v152 = (*v138 + 12 * v135);
          if (v134 == -1 || v152[2] == v134)
          {
            v153 = *(v152 + 2);
            v154 = *(*(v146 + 144) + 8 * *v152 + 32);
            if (*(v154 + 232) <= v153 && *(v154 + 240) > v153)
            {
              v258 = v8;
              v156 = **(v146 + v249);
              v157 = *(v154 + 344);

              os_unfair_lock_lock(v157);
              ecs_stack_allocator_push_snapshot(*(v156 + 32));
              v158 = *(*(v154 + 40) + 16);
              v159 = *(v158 + 128);
              if (*(v159 + 16) && (v160 = sub_1AF449CB8(&type metadata for Parent), (v161 & 1) != 0) && *(*(v158 + 24) + 16 * *(*(v159 + 56) + 8 * v160) + 32) == &type metadata for Parent)
              {
                v278 = &type metadata for Parent;
                v279 = &off_1F2529C98;
                v281 = 1;
                MEMORY[0x1EEE9AC00](v160);

                sub_1AF63023C(0, v154, sub_1AF6AFAF8);
                sub_1AF635250(&v278);
              }

              else
              {
              }

              sub_1AF62D29C(v154);

              ecs_stack_allocator_pop_snapshot(*(v156 + 32));
              os_unfair_lock_unlock(*(v154 + 344));

              v146 = v275;
              v8 = v258;
            }
          }
        }

LABEL_255:
        if (v276)
        {
          goto LABEL_259;
        }

        goto LABEL_258;
      }

      v133 = MEMORY[0x1E69E7CC0];
LABEL_269:

      *v130 = v133;
      v168 = *(v130 + 1);
      v169 = *(v168 + 16);
      if (v169)
      {
        v170 = v168 + 32;

        v172 = 0;
        v173 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          *&v171 = *(v170 + 8 * v172);
          v174 = DWORD1(v171);
          v271 = v171;
          v175 = v171;
          v176 = v171;
          sub_1AF3CB570(v171, &v278);
          if (!v279)
          {
            break;
          }

          v177 = v279[2];
          sub_1AF487074(v278, v279, v280);
          if (v177)
          {
            break;
          }

          sub_1AF65CE88(v176, v275);
LABEL_272:
          if (++v172 == v169)
          {

            v189 = v251;
            goto LABEL_302;
          }
        }

        LOBYTE(v278) = 0;
        HIBYTE(v276) = 0;
        if (v175 != -1 || v174 != 0)
        {
          v179 = v275;
          if (v175 < 0 || v274[1] <= v175)
          {
            goto LABEL_298;
          }

          v180 = *v274 + 12 * v175;
          if (v174 != -1 && *(v180 + 8) != v174)
          {
            goto LABEL_298;
          }

          v182 = *(*(*(*(v275 + 88) + 8 * *(v180 + 6) + 32) + 16) + 32);
          v183 = *(v182 + 16);
          if (v183)
          {
            v259 = v8;

            v184 = (v182 + 40);
            do
            {
              sub_1AFC953DC(*(v184 - 1), *v184, &v276 + 1, &v278);
              v184 += 2;
              --v183;
            }

            while (v183);

            v179 = v275;
            v8 = v259;
            if (v278)
            {
              if ((v276 & 0x100) != 0)
              {
LABEL_292:
                v185 = swift_isUniquelyReferenced_nonNull_native();
                v277 = v173;
                v186 = v8;
                if ((v185 & 1) == 0)
                {
                  sub_1AFC07194(0, *(v173 + 16) + 1, 1);
                  v173 = v277;
                }

                v188 = *(v173 + 16);
                v187 = *(v173 + 24);
                if (v188 >= v187 >> 1)
                {
                  sub_1AFC07194(v187 > 1, v188 + 1, 1);
                  v173 = v277;
                }

                *(v173 + 16) = v188 + 1;
                *(&v171 + 1) = v271.n128_u64[1];
                *(v173 + 8 * v188 + 32) = v271.n128_u64[0];
                v8 = v186;
                goto LABEL_272;
              }

LABEL_291:
              sub_1AF65CD48(v176, v179, &type metadata for PropagateDirtiness, &off_1F2532300, 0);
              goto LABEL_292;
            }

LABEL_298:
            sub_1AF65CD48(v176, v179, &type metadata for Parent, &off_1F2529C98, 0);
            if ((v276 & 0x100) != 0)
            {
              goto LABEL_292;
            }

            goto LABEL_291;
          }
        }

        v179 = v275;
        goto LABEL_298;
      }

      v173 = MEMORY[0x1E69E7CC0];
      v189 = v251;
LABEL_302:

      *(v189 + 1) = v173;
      v190 = *(v189 + 2);
      v191 = *(v190 + 16);
      if (v191)
      {
        v192 = v190 + 32;

        v194 = 0;
        v195 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          *&v193 = *(v192 + 8 * v194);
          v196 = DWORD1(v193);
          v272 = v193;
          v197 = v193;
          v198 = v193;
          sub_1AF3CB570(v193, &v278);
          if (!v279)
          {
            break;
          }

          v199 = v279[2];
          sub_1AF487074(v278, v279, v280);
          if (v199)
          {
            break;
          }

          sub_1AF65CE88(v198, v275);
LABEL_305:
          if (++v194 == v191)
          {

            v211 = v251;
            goto LABEL_335;
          }
        }

        LOBYTE(v278) = 0;
        HIBYTE(v276) = 0;
        if (v197 != -1 || v196 != 0)
        {
          v201 = v275;
          if (v197 < 0 || v274[1] <= v197)
          {
            goto LABEL_331;
          }

          v202 = *v274 + 12 * v197;
          if (v196 != -1 && *(v202 + 8) != v196)
          {
            goto LABEL_331;
          }

          v204 = *(*(*(*(v275 + 88) + 8 * *(v202 + 6) + 32) + 16) + 32);
          v205 = *(v204 + 16);
          if (v205)
          {
            v260 = v8;

            v206 = (v204 + 40);
            do
            {
              sub_1AFC953DC(*(v206 - 1), *v206, &v276 + 1, &v278);
              v206 += 2;
              --v205;
            }

            while (v205);

            v201 = v275;
            v8 = v260;
            if (v278)
            {
              if ((v276 & 0x100) != 0)
              {
LABEL_325:
                v207 = swift_isUniquelyReferenced_nonNull_native();
                v277 = v195;
                v208 = v8;
                if ((v207 & 1) == 0)
                {
                  sub_1AFC07194(0, *(v195 + 16) + 1, 1);
                  v195 = v277;
                }

                v210 = *(v195 + 16);
                v209 = *(v195 + 24);
                if (v210 >= v209 >> 1)
                {
                  sub_1AFC07194(v209 > 1, v210 + 1, 1);
                  v195 = v277;
                }

                *(v195 + 16) = v210 + 1;
                *(&v193 + 1) = v272.n128_u64[1];
                *(v195 + 8 * v210 + 32) = v272.n128_u64[0];
                v8 = v208;
                goto LABEL_305;
              }

LABEL_324:
              sub_1AF65CD48(v198, v201, &type metadata for PropagateDirtiness, &off_1F2532300, 0);
              goto LABEL_325;
            }

LABEL_331:
            sub_1AF65CD48(v198, v201, &type metadata for Parent, &off_1F2529C98, 0);
            if ((v276 & 0x100) != 0)
            {
              goto LABEL_325;
            }

            goto LABEL_324;
          }
        }

        v201 = v275;
        goto LABEL_331;
      }

      v195 = MEMORY[0x1E69E7CC0];
      v211 = v251;
LABEL_335:

      *(v211 + 2) = v195;
      v212 = *(v211 + 3);
      v213 = *(v212 + 16);
      if (v213)
      {
        break;
      }

      v217 = MEMORY[0x1E69E7CC0];
      v129 = v251;
LABEL_203:
      v10 = v248 + 1;

      *(v129 + 3) = v217;
      if (v248 + 1 == v244)
      {
        goto LABEL_200;
      }
    }

    v214 = v212 + 32;

    v216 = 0;
    v217 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      *&v215 = *(v214 + 8 * v216);
      v218 = DWORD1(v215);
      v273 = v215;
      v219 = v215;
      v220 = v215;
      sub_1AF3CB570(v215, &v278);
      if (!v279)
      {
        break;
      }

      v221 = v279[2];
      sub_1AF487074(v278, v279, v280);
      if (v221)
      {
        break;
      }

      sub_1AF65CE88(v220, v275);
LABEL_338:
      if (++v216 == v213)
      {

        v129 = v251;
        goto LABEL_203;
      }
    }

    LOBYTE(v278) = 0;
    HIBYTE(v276) = 0;
    if (v219 != -1 || v218 != 0)
    {
      v223 = v275;
      if (v219 < 0 || v274[1] <= v219)
      {
        goto LABEL_364;
      }

      v224 = *v274 + 12 * v219;
      if (v218 != -1 && *(v224 + 8) != v218)
      {
        goto LABEL_364;
      }

      v226 = *(*(*(*(v275 + 88) + 8 * *(v224 + 6) + 32) + 16) + 32);
      v227 = *(v226 + 16);
      if (v227)
      {
        v261 = v8;

        v228 = (v226 + 40);
        do
        {
          sub_1AFC953DC(*(v228 - 1), *v228, &v276 + 1, &v278);
          v228 += 2;
          --v227;
        }

        while (v227);

        v223 = v275;
        v8 = v261;
        if (v278)
        {
          if ((v276 & 0x100) != 0)
          {
LABEL_358:
            v229 = swift_isUniquelyReferenced_nonNull_native();
            v277 = v217;
            v230 = v8;
            if ((v229 & 1) == 0)
            {
              sub_1AFC07194(0, *(v217 + 16) + 1, 1);
              v217 = v277;
            }

            v232 = *(v217 + 16);
            v231 = *(v217 + 24);
            if (v232 >= v231 >> 1)
            {
              sub_1AFC07194(v231 > 1, v232 + 1, 1);
              v217 = v277;
            }

            *(v217 + 16) = v232 + 1;
            *(&v215 + 1) = v273.n128_u64[1];
            *(v217 + 8 * v232 + 32) = v273.n128_u64[0];
            v8 = v230;
            goto LABEL_338;
          }

LABEL_357:
          sub_1AF65CD48(v220, v223, &type metadata for PropagateDirtiness, &off_1F2532300, 0);
          goto LABEL_358;
        }

LABEL_364:
        sub_1AF65CD48(v220, v223, &type metadata for Parent, &off_1F2529C98, 0);
        if ((v276 & 0x100) != 0)
        {
          goto LABEL_358;
        }

        goto LABEL_357;
      }
    }

    v223 = v275;
    goto LABEL_364;
  }

  sub_1AFCBA0DC(v283, &qword_1ED723D38, &type metadata for EmitterDescription, &off_1F2563648);
  v233 = MEMORY[0x1E69E6720];
LABEL_370:
  sub_1AFCB9F58(v285, &qword_1ED725EA0, &type metadata for QueryResult, v233, sub_1AFCBA88C);
}

void sub_1AFC9F9AC(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_1AFC954A0(7368532, 0xE300000000000000, a1, xmmword_1AFE20160, xmmword_1AFEA9750);
    sub_1AFC954A0(0x6D6F74746F42, 0xE600000000000000, a1, xmmword_1AFE20B60, xmmword_1AFEA9760);
    sub_1AFC954A0(1952867660, 0xE400000000000000, a1, xmmword_1AFE20650, xmmword_1AFEA9770);
    sub_1AFC954A0(0x7468676952, 0xE500000000000000, a1, xmmword_1AFE20150, xmmword_1AFEA9780);
    sub_1AFC954A0(0x746E6F7246, 0xE500000000000000, a1, xmmword_1AFE20180, 0);

    sub_1AFC954A0(1801675074, 0xE400000000000000, a1, xmmword_1AFE206C0, xmmword_1AFEA9790);
  }
}

uint64_t sub_1AFC9FAC0(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0x100000000;
  if (qword_1ED72D720 != -1)
  {
    v97 = a2;
    swift_once();
    LODWORD(a2) = v97;
  }

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  v133 = qword_1ED73B840;
  v134 = v4;
  v135 = v3 >> 31;
  v136 = 1;
  v137 = 2;
  v138 = 0;

  sub_1AF702F78(3, v122);

  v131[0] = v122[0];
  v131[1] = v122[1];
  v132 = v123;
  sub_1AF6B06C0(a1, v131, 0x200000000, v124);
  if (!*v124)
  {
    return sub_1AFCBA0DC(v122, &qword_1EB63D270, &type metadata for GraphEntityComponentPropertyReferences, &off_1F253B5B8);
  }

  if (v127 <= 0 || (v102 = *(&v125 + 1)) == 0)
  {
    sub_1AFCBA0DC(v122, &qword_1EB63D270, &type metadata for GraphEntityComponentPropertyReferences, &off_1F253B5B8);
    v94 = MEMORY[0x1E69E6720];
    return sub_1AFCB9F58(v124, &qword_1ED725EA0, &type metadata for QueryResult, v94, sub_1AFCBA88C);
  }

  v101 = *&v124[40];
  v5 = *(&v126 + 1);
  v6 = *(v126 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v7 = *(*(&v126 + 1) + 32);
  v128 = *v124;
  v129 = *&v124[8];
  v130 = *&v124[24];
  v121[2] = *&v124[32];
  v121[3] = v125;
  v121[4] = v126;
  v121[5] = v127;
  v121[0] = *v124;
  v121[1] = *&v124[16];
  sub_1AF5DD298(v121, v119);
  v8 = 0;
  v9 = 0;
  v100 = v5;
  v98 = v7;
  v99 = v6;
  while (2)
  {
    v10 = (v101 + 48 * v8);
    v11 = *v10;
    v13 = *(v10 + 2);
    v12 = *(v10 + 3);
    v14 = *(v10 + 5);
    v106 = v10[1];
    v107 = *(v10 + 4);
    v104 = v9;
    if (v6)
    {
      v15 = *(v14 + 376);

      os_unfair_lock_lock(v15);
      os_unfair_lock_lock(*(v14 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v7);
    v16 = *(v5 + 4);
    v119[0] = *(v5 + 3);
    v119[1] = v16;
    v120 = v5[10];
    v17 = *(*(*(*(v14 + 40) + 16) + 32) + 16) + 1;
    v5[6] = ecs_stack_allocator_allocate(v5[4], 48 * v17, 8);
    v5[7] = v17;
    v5[9] = 0;
    v5[10] = 0;
    v5[8] = 0;
    v18 = v107;
    v110 = sub_1AF64B110(&type metadata for GraphEntityComponentPropertyReferences, &off_1F253B5B8, v13, v12, v107, v5);
    v105 = v8;
    v103 = v14;
    if (!v13)
    {
      v57 = MEMORY[0x1E69E7CC0];
      if (v11 == v106)
      {
        goto LABEL_48;
      }

LABEL_52:
      v58 = &v110[64 * v11];
      if (*(v58 + 5))
      {
        *(v58 + 5) = v57;
      }

      *(v58 + 6) = v57;

      v59 = *(v58 + 5);
      if (!v59)
      {
        goto LABEL_51;
      }

      v109 = v11;
      v60 = *(v59 + 16);
      v61 = *(v58 + 5);

      if (!v60)
      {
        goto LABEL_50;
      }

      v62 = 0;
      v63 = v61 + 32;
      v112 = v61 + 32;
      v114 = v60;
LABEL_60:
      v65 = *(v58 + 1);
      if (!*(v65 + 16))
      {
        goto LABEL_59;
      }

      v66 = (v63 + 24 * v62);
      v67 = v66[1];
      v68 = v66[2];
      v69 = *v66;

      v70 = sub_1AF419914(v69, v67);
      if ((v71 & 1) == 0)
      {
        goto LABEL_58;
      }

      v72 = (*(v65 + 56) + 16 * v70);
      v73 = *v72;
      v74 = *(v68 + 16);
      v116 = v72[1];

      if (!v74)
      {
        v118 = v57;
        goto LABEL_76;
      }

      v75 = 0;
      v76 = v68 + 40;
      v77 = -v74;
      v118 = v57;
LABEL_64:
      v78 = (v76 + 16 * v75++);
      while (1)
      {
        v79 = *v58;
        if (*(*v58 + 16))
        {
          v81 = *(v78 - 1);
          v80 = *v78;

          v82 = sub_1AF419914(v81, v80);
          if (v83)
          {
            v84 = (*(v79 + 56) + 16 * v82);
            v85 = *v84;
            v86 = v84[1];

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v118 = sub_1AF425958(0, *(v118 + 2) + 1, 1, v118);
            }

            v88 = *(v118 + 2);
            v87 = *(v118 + 3);
            if (v88 >= v87 >> 1)
            {
              v118 = sub_1AF425958(v87 > 1, v88 + 1, 1, v118);
            }

            *(v118 + 2) = v88 + 1;
            v89 = &v118[16 * v88];
            *(v89 + 4) = v85;
            *(v89 + 5) = v86;
            v76 = v68 + 40;
            if (!(v77 + v75))
            {
LABEL_76:
              v90 = *(v58 + 6);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(v58 + 6) = v90;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v90 = sub_1AF423470(0, *(v90 + 2) + 1, 1, v90);
                *(v58 + 6) = v90;
              }

              v63 = v112;
              v60 = v114;
              v93 = *(v90 + 2);
              v92 = *(v90 + 3);
              if (v93 >= v92 >> 1)
              {
                v90 = sub_1AF423470(v92 > 1, v93 + 1, 1, v90);
                *(v58 + 6) = v90;
              }

              v57 = MEMORY[0x1E69E7CC0];
              *(v90 + 2) = v93 + 1;
              v64 = &v90[24 * v93];
              *(v64 + 4) = v73;
              *(v64 + 5) = v116;
              *(v64 + 6) = v118;
LABEL_58:

LABEL_59:
              if (++v62 != v60)
              {
                goto LABEL_60;
              }

LABEL_50:

              v11 = v109;
LABEL_51:
              ++v11;
              v58[56] = 1;
              if (v11 == v106)
              {
                goto LABEL_48;
              }

              goto LABEL_52;
            }

            goto LABEL_64;
          }
        }

        v78 += 2;
        ++v75;
        if (v77 + v75 == 1)
        {
          goto LABEL_76;
        }
      }
    }

    v19 = MEMORY[0x1E69E7CC0];
    if (!v107)
    {
      goto LABEL_48;
    }

    v20 = 0;
    while (2)
    {
      v21 = &v110[64 * v20];
      if (*(v21 + 5))
      {
        *(v21 + 5) = v19;
      }

      *(v21 + 6) = v19;

      v22 = *(v21 + 5);
      if (!v22)
      {
        goto LABEL_18;
      }

      v108 = v20;
      v23 = *(v22 + 16);
      v24 = *(v21 + 5);

      if (!v23)
      {
        goto LABEL_17;
      }

      v25 = 0;
      v26 = v24 + 32;
      v111 = v24 + 32;
      v113 = v23;
      while (2)
      {
        v28 = *(v21 + 1);
        if (!*(v28 + 16))
        {
          goto LABEL_26;
        }

        v29 = (v26 + 24 * v25);
        v30 = v29[1];
        v31 = v29[2];
        v32 = *v29;

        v33 = sub_1AF419914(v32, v30);
        if ((v34 & 1) == 0)
        {
          goto LABEL_25;
        }

        v35 = (*(v28 + 56) + 16 * v33);
        v36 = *v35;
        v37 = *(v31 + 16);
        v115 = v35[1];

        if (!v37)
        {
          v117 = v19;
          goto LABEL_43;
        }

        v38 = 0;
        v39 = v31 + 40;
        v40 = -v37;
        v117 = v19;
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

LABEL_32:
            v41 += 2;
            ++v38;
            if (v40 + v38 == 1)
            {
              goto LABEL_43;
            }
          }

          v44 = *(v41 - 1);
          v43 = *v41;

          v45 = sub_1AF419914(v44, v43);
          if ((v46 & 1) == 0)
          {

            goto LABEL_32;
          }

          v47 = (*(v42 + 56) + 16 * v45);
          v48 = *v47;
          v49 = v47[1];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v117 = sub_1AF425958(0, *(v117 + 2) + 1, 1, v117);
          }

          v51 = *(v117 + 2);
          v50 = *(v117 + 3);
          if (v51 >= v50 >> 1)
          {
            v117 = sub_1AF425958(v50 > 1, v51 + 1, 1, v117);
          }

          *(v117 + 2) = v51 + 1;
          v52 = &v117[16 * v51];
          *(v52 + 4) = v48;
          *(v52 + 5) = v49;
          v39 = v31 + 40;
        }

        while (v40 + v38);
LABEL_43:
        v53 = *(v21 + 6);
        v54 = swift_isUniquelyReferenced_nonNull_native();
        *(v21 + 6) = v53;
        if ((v54 & 1) == 0)
        {
          v53 = sub_1AF423470(0, *(v53 + 2) + 1, 1, v53);
          *(v21 + 6) = v53;
        }

        v26 = v111;
        v23 = v113;
        v56 = *(v53 + 2);
        v55 = *(v53 + 3);
        if (v56 >= v55 >> 1)
        {
          v53 = sub_1AF423470(v55 > 1, v56 + 1, 1, v53);
          *(v21 + 6) = v53;
        }

        v19 = MEMORY[0x1E69E7CC0];
        *(v53 + 2) = v56 + 1;
        v27 = &v53[24 * v56];
        *(v27 + 4) = v36;
        *(v27 + 5) = v115;
        *(v27 + 6) = v117;
LABEL_25:

LABEL_26:
        if (++v25 != v23)
        {
          continue;
        }

        break;
      }

LABEL_17:

      v18 = v107;
      v20 = v108;
LABEL_18:
      v21[56] = 1;
      if (++v20 != v18)
      {
        continue;
      }

      break;
    }

LABEL_48:
    v5 = v100;
    v9 = v104;
    sub_1AF630994(v100, &v128, v119);
    sub_1AF62D29C(v103);
    v7 = v98;
    ecs_stack_allocator_pop_snapshot(v98);
    v6 = v99;
    if (v99)
    {
      os_unfair_lock_unlock(*(v103 + 344));
      os_unfair_lock_unlock(*(v103 + 376));
    }

    v8 = v105 + 1;
    if (v105 + 1 != v102)
    {
      continue;
    }

    break;
  }

  sub_1AFCBA0DC(v122, &qword_1EB63D270, &type metadata for GraphEntityComponentPropertyReferences, &off_1F253B5B8);
  v96 = MEMORY[0x1E69E6720];
  sub_1AFCB9F58(v124, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
  v94 = v96;
  return sub_1AFCB9F58(v124, &qword_1ED725EA0, &type metadata for QueryResult, v94, sub_1AFCBA88C);
}

uint64_t sub_1AFCA0434(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0x100000000;
  if (qword_1ED72D720 != -1)
  {
    v184 = a2;
    swift_once();
    LODWORD(a2) = v184;
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

  v331 = qword_1ED73B840;
  v190 = v5;
  v332 = v5;
  v189 = v3 >> 31;
  v333 = v3 >> 31;
  v334 = 1;
  v335 = 2;
  v336 = 0;

  sub_1AF7032E4(1, v252);
  v191 = v4;

  sub_1AFA1CFD4(0, &qword_1ED7269A0, &qword_1ED7270C0, &qword_1ED7270D0, &protocol descriptor for Component);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE431C0;
  *(v6 + 32) = &type metadata for VFXAssetTag;
  *(v6 + 40) = &off_1F253D5D8;
  sub_1AF5D1EC0(v6);
  sub_1AFCBA0DC(v252, &qword_1ED723D40, &type metadata for ColorRampComponent, &off_1F2541AA8);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v305[0] = v253[0];
  v305[1] = v253[1];
  v306 = v254;
  sub_1AF6B06C0(a1, v305, 0x200000000, v255);
  sub_1AFCBA0DC(v253, &qword_1ED723D40, &type metadata for ColorRampComponent, &off_1F2541AA8);
  v193 = a1;
  if (*&v255[0])
  {
    if (v259 >= 1 && v257)
    {
      v7 = 0;
      v8 = v256;
      v204 = v258;
      v9 = v256 + 48 * v257;
      v185 = v9;
      do
      {
        v10 = *(v8 + 40);
        v11 = *(v10 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v11);
        os_unfair_lock_lock(*(v10 + 344));
        v12 = *(v10 + 24);

        v291 = 0;
        v289 = 0u;
        v290 = 0u;
        v281 = 0;
        v279 = 0u;
        v280 = 0u;
        v13 = sub_1AF65A4B4(v12, &type metadata for VFXAssetTag, &off_1F253D498, 0, 0, &v289, &v279);

        sub_1AFCB9FB8(&v279, sub_1AF5C4448);
        sub_1AFCB9FB8(&v289, sub_1AF5C4448);
        if (sub_1AF649CEC(v13))
        {
          sub_1AF649D40(v13, v204);
        }

        else
        {
          v200 = v8;
          v14 = *(v10 + 232);
          v15 = *(v10 + 240);
          v195 = *(v10 + 120);
          v239 = *(v10 + 28);
          v234 = *(v10 + 32);
          v16 = *(v10 + 16);
          v17 = *(v10 + 40);
          v18 = *(v17 + 200);
          v229 = *(*(v16 + 88) + 8 * v13 + 32);

          if ((v18 & 1) != 0 || *(v229 + 200) == 1)
          {
            *(v16 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v17 = *(v10 + 40);
          }

          v19 = v7;
          v224 = *(v10 + 128);
          v20 = *(v10 + 256);
          sub_1AF5B4FCC(v17, v14, v15, 0, v10);
          v209 = *(v10 + 256);
          v214 = v20;
          v21 = v209 - v20;
          if (v209 == v20)
          {
            v22 = 0;
          }

          else
          {
            v22 = v20;
          }

          *&v279 = v22;
          v23 = *(*(v10 + 40) + 24);
          v24 = *(v23 + 16);
          if (v24)
          {
            v219 = v19;
            v25 = v23 + 32;

            v26 = 0;
            v27 = v21;
            do
            {
              v28 = (v25 + 40 * v26);
              if ((v28[4] & 1) == 0)
              {
                v29 = *v28;
                v31 = v28[2];
                v30 = v28[3];
                v32 = *(v229 + 24);
                v33 = *(v32 + 16);
                if (v33)
                {
                  v34 = (v32 + 32);
                  while (*v34 != v29)
                  {
                    v34 += 5;
                    if (!--v33)
                    {
                      goto LABEL_21;
                    }
                  }
                }

                else
                {
LABEL_21:
                  sub_1AF640BC8(v224 + v31 * v22 + v30, v21);
                }
              }

              ++v26;
            }

            while (v26 != v24);

            v35 = v219;
          }

          else
          {
            v35 = v19;
            v27 = v209 - v20;
          }

          if (*(v16 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v16 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v10 + 72) * v27);
          }

          if (*(v10 + 184))
          {
            v36 = 0;
          }

          else
          {
            v36 = *(v10 + 168);
          }

          *&v271[0] = 0;

          MEMORY[0x1EEE9AC00](v37);
          v38 = v239;
          v39 = v234;
          DWORD2(v290) = -1;
          v291 = v214;
          v292 = v209;
          v293 = v214;
          v294 = v209;
          *&v289 = v214;
          *(&v289 + 1) = v209;
          *&v290 = v36;
          if (v40 >= 1)
          {
            do
            {
              LOBYTE(v263[0]) = v39;
              sub_1AF6248A8(v13, v38 | (v39 << 32), v195, v16, &v289, sub_1AF5C5E08);
              v39 = v234;
              v38 = v239;
            }

            while ((*(&v289 + 1) - v289) > 0);
          }

          v41 = v35;

          v42 = *(v10 + 192);
          v8 = v200;
          v9 = v185;
          if (v42)
          {
            v43 = *(v10 + 208);
            sub_1AF75D364(v214, v209, v42);
            sub_1AF75D364(v214, v209, v43);
          }

          v7 = v41;
        }

        v8 += 48;
        os_unfair_lock_unlock(*(v10 + 344));
        os_unfair_lock_unlock(*(v10 + 376));
      }

      while (v8 != v9);
    }

    else
    {
      v7 = 0;
    }

    sub_1AFCB9F58(v255, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
  }

  else
  {
    v7 = 0;
  }

  v325 = v191;
  v326 = v190;
  v327 = v189;
  v328 = 1;
  v329 = 2;
  v330 = 0;

  sub_1AF702FA0(1, v260);

  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1AFE431C0;
  *(v44 + 32) = &type metadata for VFXAssetTag;
  *(v44 + 40) = &off_1F253D5D8;
  sub_1AF5D1EC0(v44);
  sub_1AFCBA0DC(v260, &qword_1ED723DB8, &type metadata for CurveComponent, &off_1F2541E18);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v303[0] = v261[0];
  v303[1] = v261[1];
  v304 = v262;
  sub_1AF6B06C0(v193, v303, 0x200000000, v263);
  sub_1AFCBA0DC(v261, &qword_1ED723DB8, &type metadata for CurveComponent, &off_1F2541E18);
  if (*&v263[0])
  {
    if (v267 >= 1 && v265)
    {
      v45 = v264;
      v205 = v266;
      v46 = v264 + 48 * v265;
      v186 = v46;
      do
      {
        v47 = *(v45 + 40);
        v48 = *(v47 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v48);
        os_unfair_lock_lock(*(v47 + 344));
        v49 = *(v47 + 24);

        v291 = 0;
        v289 = 0u;
        v290 = 0u;
        v281 = 0;
        v279 = 0u;
        v280 = 0u;
        v50 = sub_1AF65A4B4(v49, &type metadata for VFXAssetTag, &off_1F253D498, 0, 0, &v289, &v279);

        sub_1AFCB9FB8(&v279, sub_1AF5C4448);
        sub_1AFCB9FB8(&v289, sub_1AF5C4448);
        if (sub_1AF649CEC(v50))
        {
          sub_1AF649D40(v50, v205);
        }

        else
        {
          v201 = v45;
          v51 = *(v47 + 232);
          v52 = *(v47 + 240);
          v196 = *(v47 + 120);
          v240 = *(v47 + 28);
          v235 = *(v47 + 32);
          v53 = *(v47 + 16);
          v54 = *(v47 + 40);
          v55 = *(v54 + 200);
          v230 = *(*(v53 + 88) + 8 * v50 + 32);

          if ((v55 & 1) != 0 || *(v230 + 200) == 1)
          {
            *(v53 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v54 = *(v47 + 40);
          }

          v56 = v7;
          v225 = *(v47 + 128);
          v57 = *(v47 + 256);
          sub_1AF5B4FCC(v54, v51, v52, 0, v47);
          v210 = *(v47 + 256);
          v215 = v57;
          v58 = v210 - v57;
          if (v210 == v57)
          {
            v59 = 0;
          }

          else
          {
            v59 = v57;
          }

          *&v279 = v59;
          v60 = *(*(v47 + 40) + 24);
          v61 = *(v60 + 16);
          if (v61)
          {
            v220 = v56;
            v62 = v60 + 32;

            v63 = 0;
            v64 = v58;
            do
            {
              v65 = (v62 + 40 * v63);
              if ((v65[4] & 1) == 0)
              {
                v66 = *v65;
                v68 = v65[2];
                v67 = v65[3];
                v69 = *(v230 + 24);
                v70 = *(v69 + 16);
                if (v70)
                {
                  v71 = (v69 + 32);
                  while (*v71 != v66)
                  {
                    v71 += 5;
                    if (!--v70)
                    {
                      goto LABEL_59;
                    }
                  }
                }

                else
                {
LABEL_59:
                  sub_1AF640BC8(v225 + v68 * v59 + v67, v58);
                }
              }

              ++v63;
            }

            while (v63 != v61);

            v7 = v220;
          }

          else
          {
            v7 = v56;
            v64 = v58;
          }

          if (*(v53 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v53 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v47 + 72) * v64);
          }

          v72 = v64;
          if (*(v47 + 184))
          {
            v73 = 0;
          }

          else
          {
            v73 = *(v47 + 168);
          }

          *&v271[0] = 0;

          MEMORY[0x1EEE9AC00](v74);
          v75 = v240;
          v76 = v235;
          DWORD2(v290) = -1;
          v291 = v215;
          v292 = v210;
          v293 = v215;
          v294 = v210;
          *&v289 = v215;
          *(&v289 + 1) = v210;
          *&v290 = v73;
          if (v72 >= 1)
          {
            do
            {
              LOBYTE(v244) = v76;
              sub_1AF6248A8(v50, v75 | (v76 << 32), v196, v53, &v289, sub_1AF5C5E08);
              v76 = v235;
              v75 = v240;
            }

            while ((*(&v289 + 1) - v289) > 0);
          }

          v77 = *(v47 + 192);
          v45 = v201;
          v46 = v186;
          if (v77)
          {
            v78 = *(v47 + 208);
            sub_1AF75D364(v215, v210, v77);
            sub_1AF75D364(v215, v210, v78);
          }
        }

        v45 += 48;
        os_unfair_lock_unlock(*(v47 + 344));
        os_unfair_lock_unlock(*(v47 + 376));
      }

      while (v45 != v46);
    }

    sub_1AFCB9F58(v263, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
  }

  v319 = v191;
  v320 = v190;
  v321 = v189;
  v322 = 1;
  v323 = 2;
  v324 = 0;

  sub_1AF703230(1, v268);

  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_1AFE431C0;
  *(v79 + 32) = &type metadata for VFXAssetTag;
  *(v79 + 40) = &off_1F253D5D8;
  sub_1AF5D1EC0(v79);
  sub_1AFCBA0DC(v268, &qword_1EB632C38, &type metadata for TextureArrayFileAsset, &off_1F2544168);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v301[0] = v269[0];
  v301[1] = v269[1];
  v302 = v270;
  sub_1AF6B06C0(v193, v301, 0x200000000, v271);
  sub_1AFCBA0DC(v269, &qword_1EB632C38, &type metadata for TextureArrayFileAsset, &off_1F2544168);
  if (*&v271[0])
  {
    if (v275 >= 1 && v273)
    {
      v80 = v272;
      v206 = v274;
      v81 = v272 + 48 * v273;
      v187 = v81;
      do
      {
        v82 = *(v80 + 40);
        v83 = *(v82 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v83);
        os_unfair_lock_lock(*(v82 + 344));
        v84 = *(v82 + 24);

        v291 = 0;
        v289 = 0u;
        v290 = 0u;
        v281 = 0;
        v279 = 0u;
        v280 = 0u;
        v85 = sub_1AF65A4B4(v84, &type metadata for VFXAssetTag, &off_1F253D498, 0, 0, &v289, &v279);

        sub_1AFCB9FB8(&v279, sub_1AF5C4448);
        sub_1AFCB9FB8(&v289, sub_1AF5C4448);
        if (sub_1AF649CEC(v85))
        {
          sub_1AF649D40(v85, v206);
        }

        else
        {
          v202 = v80;
          v86 = *(v82 + 232);
          v87 = *(v82 + 240);
          v197 = *(v82 + 120);
          v241 = *(v82 + 28);
          v236 = *(v82 + 32);
          v88 = *(v82 + 16);
          v89 = *(v82 + 40);
          v90 = *(v89 + 200);
          v231 = *(*(v88 + 88) + 8 * v85 + 32);

          if ((v90 & 1) != 0 || *(v231 + 200) == 1)
          {
            *(v88 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v89 = *(v82 + 40);
          }

          v91 = v7;
          v226 = *(v82 + 128);
          v92 = *(v82 + 256);
          sub_1AF5B4FCC(v89, v86, v87, 0, v82);
          v211 = *(v82 + 256);
          v216 = v92;
          v93 = v211 - v92;
          if (v211 == v92)
          {
            v94 = 0;
          }

          else
          {
            v94 = v92;
          }

          *&v279 = v94;
          v95 = *(*(v82 + 40) + 24);
          v96 = *(v95 + 16);
          if (v96)
          {
            v221 = v91;
            v97 = v95 + 32;

            v98 = 0;
            v99 = v93;
            do
            {
              v100 = (v97 + 40 * v98);
              if ((v100[4] & 1) == 0)
              {
                v101 = *v100;
                v103 = v100[2];
                v102 = v100[3];
                v104 = *(v231 + 24);
                v105 = *(v104 + 16);
                if (v105)
                {
                  v106 = (v104 + 32);
                  while (*v106 != v101)
                  {
                    v106 += 5;
                    if (!--v105)
                    {
                      goto LABEL_95;
                    }
                  }
                }

                else
                {
LABEL_95:
                  sub_1AF640BC8(v226 + v103 * v94 + v102, v93);
                }
              }

              ++v98;
            }

            while (v98 != v96);

            v7 = v221;
          }

          else
          {
            v7 = v91;
            v99 = v93;
          }

          if (*(v88 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v88 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v82 + 72) * v99);
          }

          v107 = v99;
          if (*(v82 + 184))
          {
            v108 = 0;
          }

          else
          {
            v108 = *(v82 + 168);
          }

          *&v244 = 0;

          MEMORY[0x1EEE9AC00](v109);
          v110 = v241;
          v111 = v236;
          DWORD2(v290) = -1;
          v291 = v216;
          v292 = v211;
          v293 = v216;
          v294 = v211;
          *&v289 = v216;
          *(&v289 + 1) = v211;
          *&v290 = v108;
          if (v107 >= 1)
          {
            do
            {
              LOBYTE(v313) = v111;
              sub_1AF6248A8(v85, v110 | (v111 << 32), v197, v88, &v289, sub_1AF5C5E08);
              v111 = v236;
              v110 = v241;
            }

            while ((*(&v289 + 1) - v289) > 0);
          }

          v112 = *(v82 + 192);
          v80 = v202;
          v81 = v187;
          if (v112)
          {
            v113 = *(v82 + 208);
            sub_1AF75D364(v216, v211, v112);
            sub_1AF75D364(v216, v211, v113);
          }
        }

        v80 += 48;
        os_unfair_lock_unlock(*(v82 + 344));
        os_unfair_lock_unlock(*(v82 + 376));
      }

      while (v80 != v81);
    }

    sub_1AFCB9F58(v271, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
  }

  v313 = v191;
  v314 = v190;
  v315 = v189;
  v316 = 1;
  v317 = 2;
  v318 = 0;

  sub_1AF7033E0(1, v276);

  v114 = swift_allocObject();
  *(v114 + 16) = xmmword_1AFE431C0;
  *(v114 + 32) = &type metadata for VFXAssetTag;
  *(v114 + 40) = &off_1F253D5D8;
  sub_1AF5D1EC0(v114);
  sub_1AFCBA0DC(v276, &qword_1EB643CA0, &type metadata for PointCacheGenerator, &off_1F2567FB0);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v299[0] = v277[0];
  v299[1] = v277[1];
  v300 = v278;
  sub_1AF6B06C0(v193, v299, 0x200000000, &v279);
  sub_1AFCBA0DC(v277, &qword_1EB643CA0, &type metadata for PointCacheGenerator, &off_1F2567FB0);
  if (v279)
  {
    if (v285 >= 1 && v283)
    {
      v115 = v282;
      v207 = v284;
      v116 = v282 + 48 * v283;
      v188 = v116;
      do
      {
        v117 = *(v115 + 40);
        v118 = *(v117 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v118);
        os_unfair_lock_lock(*(v117 + 344));
        v119 = *(v117 + 24);

        v291 = 0;
        v289 = 0u;
        v290 = 0u;
        v246 = 0;
        v244 = 0u;
        v245 = 0u;
        v120 = sub_1AF65A4B4(v119, &type metadata for VFXAssetTag, &off_1F253D498, 0, 0, &v289, &v244);

        sub_1AFCB9FB8(&v244, sub_1AF5C4448);
        sub_1AFCB9FB8(&v289, sub_1AF5C4448);
        if (sub_1AF649CEC(v120))
        {
          sub_1AF649D40(v120, v207);
        }

        else
        {
          v203 = v115;
          v121 = *(v117 + 232);
          v122 = *(v117 + 240);
          v198 = *(v117 + 120);
          v242 = *(v117 + 28);
          v237 = *(v117 + 32);
          v123 = *(v117 + 16);
          v124 = *(v117 + 40);
          v125 = *(v124 + 200);
          v232 = *(*(v123 + 88) + 8 * v120 + 32);

          if ((v125 & 1) != 0 || *(v232 + 200) == 1)
          {
            *(v123 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v124 = *(v117 + 40);
          }

          v126 = v7;
          v227 = *(v117 + 128);
          v127 = *(v117 + 256);
          sub_1AF5B4FCC(v124, v121, v122, 0, v117);
          v212 = *(v117 + 256);
          v217 = v127;
          v128 = v212 - v127;
          if (v212 == v127)
          {
            v129 = 0;
          }

          else
          {
            v129 = v127;
          }

          *&v244 = v129;
          v130 = *(*(v117 + 40) + 24);
          v131 = *(v130 + 16);
          if (v131)
          {
            v222 = v126;
            v132 = v130 + 32;

            v133 = 0;
            v134 = v128;
            do
            {
              v135 = (v132 + 40 * v133);
              if ((v135[4] & 1) == 0)
              {
                v136 = *v135;
                v138 = v135[2];
                v137 = v135[3];
                v139 = *(v232 + 24);
                v140 = *(v139 + 16);
                if (v140)
                {
                  v141 = (v139 + 32);
                  while (*v141 != v136)
                  {
                    v141 += 5;
                    if (!--v140)
                    {
                      goto LABEL_131;
                    }
                  }
                }

                else
                {
LABEL_131:
                  sub_1AF640BC8(v227 + v138 * v129 + v137, v128);
                }
              }

              ++v133;
            }

            while (v133 != v131);

            v7 = v222;
          }

          else
          {
            v7 = v126;
            v134 = v128;
          }

          if (*(v123 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v123 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v117 + 72) * v134);
          }

          v142 = v134;
          if (*(v117 + 184))
          {
            v143 = 0;
          }

          else
          {
            v143 = *(v117 + 168);
          }

          v307 = 0;

          MEMORY[0x1EEE9AC00](v144);
          v145 = v242;
          v146 = v237;
          DWORD2(v290) = -1;
          v291 = v217;
          v292 = v212;
          v293 = v217;
          v294 = v212;
          *&v289 = v217;
          *(&v289 + 1) = v212;
          *&v290 = v143;
          if (v142 >= 1)
          {
            do
            {
              LOBYTE(v297[0]) = v146;
              sub_1AF6248A8(v120, v145 | (v146 << 32), v198, v123, &v289, sub_1AF5C5E08);
              v146 = v237;
              v145 = v242;
            }

            while ((*(&v289 + 1) - v289) > 0);
          }

          v147 = *(v117 + 192);
          v115 = v203;
          v116 = v188;
          if (v147)
          {
            v148 = *(v117 + 208);
            sub_1AF75D364(v217, v212, v147);
            sub_1AF75D364(v217, v212, v148);
          }
        }

        v115 += 48;
        os_unfair_lock_unlock(*(v117 + 344));
        os_unfair_lock_unlock(*(v117 + 376));
      }

      while (v115 != v116);
    }

    sub_1AFCB9F58(&v279, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
  }

  v307 = v191;
  v308 = v190;
  v309 = v189;
  v310 = 1;
  v311 = 2;
  v312 = 0;

  sub_1AF70512C(1, v286);

  v149 = swift_allocObject();
  *(v149 + 16) = xmmword_1AFE431C0;
  *(v149 + 32) = &type metadata for VFXAssetTag;
  *(v149 + 40) = &off_1F253D5D8;
  sub_1AF5D1EC0(v149);
  sub_1AFCBA0DC(v286, &qword_1EB643CA8, &type metadata for TextureSource, &off_1F2545C18);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v297[0] = v287[0];
  v297[1] = v287[1];
  v298 = v288;
  sub_1AF6B06C0(v193, v297, 0x200000000, &v289);
  result = sub_1AFCBA0DC(v287, &qword_1EB643CA8, &type metadata for TextureSource, &off_1F2545C18);
  if (v289)
  {
    if (v296 >= 1 && v294)
    {
      v151 = v292;
      v152 = v295;
      v153 = v292 + 48 * v294;
      v192 = v153;
      v194 = v295;
      do
      {
        v154 = *(v151 + 40);
        v155 = *(v154 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v155);
        os_unfair_lock_lock(*(v154 + 344));
        v156 = *(v154 + 24);

        v246 = 0;
        v244 = 0u;
        v245 = 0u;
        memset(v251, 0, 40);
        v157 = sub_1AF65A4B4(v156, &type metadata for VFXAssetTag, &off_1F253D498, 0, 0, &v244, v251);

        sub_1AFCB9FB8(v251, sub_1AF5C4448);
        sub_1AFCB9FB8(&v244, sub_1AF5C4448);
        if (sub_1AF649CEC(v157))
        {
          sub_1AF649D40(v157, v152);
        }

        else
        {
          v208 = v151;
          v158 = v7;
          v159 = *(v154 + 232);
          v160 = *(v154 + 240);
          v199 = *(v154 + 120);
          v243 = *(v154 + 28);
          v238 = *(v154 + 32);
          v161 = *(v154 + 16);
          v162 = *(v154 + 40);
          v163 = *(v162 + 200);
          v233 = *(*(v161 + 88) + 8 * v157 + 32);

          if ((v163 & 1) != 0 || *(v233 + 200) == 1)
          {
            *(v161 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v162 = *(v154 + 40);
          }

          v228 = *(v154 + 128);
          v164 = *(v154 + 256);
          sub_1AF5B4FCC(v162, v159, v160, 0, v154);
          v218 = v164;
          v223 = v158;
          v213 = *(v154 + 256);
          v165 = v213 - v164;
          if (v213 == v164)
          {
            v166 = 0;
          }

          else
          {
            v166 = v164;
          }

          v251[0] = v166;
          v167 = *(*(v154 + 40) + 24);
          v168 = *(v167 + 16);
          if (v168)
          {
            v169 = v167 + 32;

            for (i = 0; i != v168; ++i)
            {
              v171 = (v169 + 40 * i);
              if ((v171[4] & 1) == 0)
              {
                v172 = *v171;
                v174 = v171[2];
                v173 = v171[3];
                v175 = *(v233 + 24);
                v176 = *(v175 + 16);
                if (v176)
                {
                  v177 = (v175 + 32);
                  while (*v177 != v172)
                  {
                    v177 += 5;
                    if (!--v176)
                    {
                      goto LABEL_167;
                    }
                  }
                }

                else
                {
LABEL_167:
                  sub_1AF640BC8(v228 + v174 * v166 + v173, v165);
                }
              }
            }
          }

          v153 = v192;
          v152 = v194;
          if (*(v161 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v161 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v154 + 72) * v165);
          }

          if (*(v154 + 184))
          {
            v178 = 0;
          }

          else
          {
            v178 = *(v154 + 168);
          }

          v250 = 0;

          MEMORY[0x1EEE9AC00](v179);
          v180 = v243;
          v181 = v238;
          DWORD2(v245) = -1;
          v246 = v218;
          v247 = v213;
          v248 = v218;
          v249 = v213;
          *&v244 = v218;
          *(&v244 + 1) = v213;
          *&v245 = v178;
          if (v165 >= 1)
          {
            do
            {
              sub_1AF6248A8(v157, v180 | (v181 << 32), v199, v161, &v244, sub_1AF5C5E08);
              v181 = v238;
              v180 = v243;
            }

            while ((*(&v244 + 1) - v244) > 0);
          }

          v182 = *(v154 + 192);
          v7 = v223;
          if (v182)
          {
            v183 = *(v154 + 208);
            sub_1AF75D364(v218, v213, v182);
            sub_1AF75D364(v218, v213, v183);
          }

          v151 = v208;
        }

        v151 += 48;
        os_unfair_lock_unlock(*(v154 + 344));
        os_unfair_lock_unlock(*(v154 + 376));
      }

      while (v151 != v153);
    }

    return sub_1AFCB9F58(&v289, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
  }

  return result;
}

void sub_1AFCA2108(uint64_t a1, uint64_t a2)
{
  v391 = *MEMORY[0x1E69E9840];
  v3 = a2 & 0x100000000;
  if (qword_1ED72D720 != -1)
  {
    v269 = a2;
    swift_once();
    LODWORD(a2) = v269;
  }

  v4 = qword_1ED73B840;
  v330 = qword_1ED73B840;
  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = a2;
  }

  v331 = v5;
  v6 = v3 >> 31;
  v332 = v3 >> 31;
  v333 = 1;
  v334 = 2;
  v335 = 0;

  sub_1AF705140(1, v309);

  v322[0] = v309[0];
  v322[1] = v309[1];
  v323 = v310;
  v290 = a1;
  sub_1AF6B06C0(a1, v322, 0x200000000, &v354);
  if (v354)
  {
    v274 = v4;
    v272 = v5;
    v271 = v3 >> 31;
    if (v361 < 1 || (v287 = v358) == 0)
    {
LABEL_174:
      sub_1AFCB9F58(&v354, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
      v139 = 0;
      v4 = v274;
      v5 = v272;
      LOBYTE(v6) = v271;
      goto LABEL_176;
    }

    v7 = 0;
    v285 = v357;
    v8 = v360;
    v9 = *(v360 + 32);
    v10 = *(v359 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v314 = v354;
    v315 = v355;
    v316 = v356;
    v282 = v9;
    v279 = v10;
    while (1)
    {
      v11 = (v285 + 48 * v7);
      v12 = *v11;
      v299 = v11[1];
      v13 = *(v11 + 3);
      v14 = *(v11 + 5);
      v292 = *(v11 + 2);
      v295 = *(v11 + 4);
      v288 = v7;
      if (v10)
      {
        v15 = *(v14 + 376);

        os_unfair_lock_lock(v15);
        os_unfair_lock_lock(*(v14 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v9);
      v16 = *(v8 + 64);
      v389[0] = *(v8 + 48);
      v389[1] = v16;
      v390 = *(v8 + 80);
      v17 = *(*(*(*(v14 + 40) + 16) + 32) + 16) + 1;
      *(v8 + 48) = ecs_stack_allocator_allocate(*(v8 + 32), 48 * v17, 8);
      *(v8 + 56) = v17;
      *(v8 + 72) = 0;
      *(v8 + 80) = 0;
      *(v8 + 64) = 0;
      sub_1AF64B110(&type metadata for ParticleGlobalForce, &off_1F2562C30, v292, v13, v295, v8);
      if (v292)
      {
        if (v295)
        {
          v18 = 0;
          while (1)
          {
            v300 = v292[v18];
            v19 = *(*(v14 + 40) + 16);
            v20 = *(v19 + 128);
            if (!*(v20 + 16))
            {
              goto LABEL_57;
            }

            v21 = sub_1AF449CB8(&type metadata for ParticleGlobalForce);
            if ((v22 & 1) == 0 || *(*(v19 + 24) + 16 * *(*(v20 + 56) + 8 * v21) + 32) != &type metadata for ParticleGlobalForce)
            {
              goto LABEL_57;
            }

            *v362 = &type metadata for ParticleGlobalForce;
            *&v362[8] = &off_1F2562C30;
            v362[40] = 1;
            v23 = *(v8 + 104);
            v24 = *(v23 + 16);
            if (!v24)
            {

LABEL_52:
              v38 = *(v14 + 240) - *(v14 + 232);
              v39 = ecs_stack_allocator_allocate(*(v8 + 32), 8 * v38, 8);
              *v39 = v300;
              sub_1AF63515C(v362, &v368);
              *v370 = v39;
              *&v370[8] = v38;
              *&v370[16] = 1;
              v40 = *(v8 + 104);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(v8 + 104) = v40;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v40 = sub_1AF420EA0(0, v40[2] + 1, 1, v40);
                *(v8 + 104) = v40;
              }

              v43 = v40[2];
              v42 = v40[3];
              if (v43 >= v42 >> 1)
              {
                *(v8 + 104) = sub_1AF420EA0(v42 > 1, v43 + 1, 1, v40);
              }

              sub_1AF635250(v362);
              v44 = *(v8 + 104);
              *(v44 + 16) = v43 + 1;
              v45 = v44 + 72 * v43;
              *(v45 + 32) = v368;
              v47 = *&v369[16];
              v46 = *v370;
              v48 = *v369;
              *(v45 + 96) = *&v370[16];
              *(v45 + 64) = v47;
              *(v45 + 80) = v46;
              *(v45 + 48) = v48;
              *(v8 + 104) = v44;
              goto LABEL_57;
            }

            v25 = v23 + 32;

            v26 = 0;
            while (1)
            {
              sub_1AF6350F8(v25, v380);
              sub_1AF63515C(v380, &v368);
              sub_1AF63515C(v362, v370);
              if (v369[24] <= 2u)
              {
                if (!v369[24])
                {
                  sub_1AFCB9FB8(v380, sub_1AF43A540);
                  sub_1AF63515C(&v368, &v341);
                  if (v370[40])
                  {
                    goto LABEL_25;
                  }

                  goto LABEL_38;
                }

                if (v369[24] == 1)
                {
                  sub_1AFCB9FB8(v380, sub_1AF43A540);
                  sub_1AF63515C(&v368, &v341);
                  if (v370[40] != 1)
                  {
                    goto LABEL_25;
                  }

LABEL_38:
                  v29 = v341;
                  v30 = *v370;
                  sub_1AF635250(&v368);
                  if (v29 == v30)
                  {
                    goto LABEL_48;
                  }

                  goto LABEL_26;
                }

                sub_1AF63515C(&v368, &v341);
                if (v370[40] != 2)
                {
LABEL_24:
                  sub_1AFCB9FB8(v380, sub_1AF43A540);
                  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v341);
LABEL_25:
                  sub_1AFCB9F58(&v368, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
                  goto LABEL_26;
                }

                goto LABEL_43;
              }

              if (v369[24] == 3)
              {
                sub_1AF63515C(&v368, &v341);
                if (v370[40] != 3)
                {
                  goto LABEL_24;
                }

LABEL_43:
                sub_1AF616568(&v341, v347);
                sub_1AF616568(v370, v350);
                v31 = v348;
                v32 = v349;
                sub_1AF441150(v347, v348);
                LOBYTE(v31) = sub_1AF640C98(v350, v31, v32);
                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v350);
                sub_1AFCB9FB8(v380, sub_1AF43A540);
                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v347);
                sub_1AF635250(&v368);
                if (v31)
                {
                  goto LABEL_48;
                }

                goto LABEL_26;
              }

              if (v369[24] != 4)
              {
                break;
              }

              sub_1AFCB9FB8(v380, sub_1AF43A540);
              sub_1AF63515C(&v368, &v341);
              if (v370[40] != 4)
              {
                goto LABEL_25;
              }

              v27 = v341;
              v28 = v370[0];
              sub_1AF635250(&v368);
              if (v27 == v28)
              {
                goto LABEL_48;
              }

LABEL_26:
              ++v26;
              v25 += 72;
              if (v24 == v26)
              {
                goto LABEL_52;
              }
            }

            sub_1AFCB9FB8(v380, sub_1AF43A540);
            if (v370[40] != 5)
            {
              goto LABEL_25;
            }

            v33 = vorrq_s8(*&v370[8], *&v370[24]);
            if (*&vorr_s8(*v33.i8, *&vextq_s8(v33, v33, 8uLL)) | *v370)
            {
              goto LABEL_25;
            }

            sub_1AF635250(&v368);
LABEL_48:
            v35 = sub_1AFBFCA08(&v368);
            v36 = *(v34 + 48);
            if (v36)
            {
              v37 = *(v34 + 64);
              *(v36 + 8 * v37) = v300;
              *(v34 + 64) = v37 + 1;
            }

            (v35)(&v368, 0);

            sub_1AF635250(v362);
LABEL_57:
            v49 = *(*(v14 + 40) + 16);
            v50 = *(v49 + 128);
            if (*(v50 + 16))
            {
              v51 = sub_1AF449CB8(&type metadata for ParticleForceField);
              if ((v52 & 1) != 0 && *(*(v49 + 24) + 16 * *(*(v50 + 56) + 8 * v51) + 32) == &type metadata for ParticleForceField)
              {
                goto LABEL_18;
              }
            }

            *v362 = &type metadata for ParticleForceField;
            *&v362[8] = &off_1F25613E0;
            v362[40] = 0;
            v53 = *(v8 + 104);
            v54 = *(v53 + 16);
            if (!v54)
            {

LABEL_89:
              v68 = *(v14 + 240) - *(v14 + 232);
              v69 = ecs_stack_allocator_allocate(*(v8 + 32), 8 * v68, 8);
              *v69 = v300;
              sub_1AF63515C(v362, &v368);
              *v370 = v69;
              *&v370[8] = v68;
              *&v370[16] = 1;
              v70 = *(v8 + 104);
              v71 = swift_isUniquelyReferenced_nonNull_native();
              *(v8 + 104) = v70;
              if ((v71 & 1) == 0)
              {
                v70 = sub_1AF420EA0(0, v70[2] + 1, 1, v70);
                *(v8 + 104) = v70;
              }

              v73 = v70[2];
              v72 = v70[3];
              if (v73 >= v72 >> 1)
              {
                *(v8 + 104) = sub_1AF420EA0(v72 > 1, v73 + 1, 1, v70);
              }

              sub_1AF635250(v362);
              v74 = *(v8 + 104);
              *(v74 + 16) = v73 + 1;
              v75 = v74 + 72 * v73;
              *(v75 + 32) = v368;
              v77 = *&v369[16];
              v76 = *v370;
              v78 = *v369;
              *(v75 + 96) = *&v370[16];
              *(v75 + 64) = v77;
              *(v75 + 80) = v76;
              *(v75 + 48) = v78;
              *(v8 + 104) = v74;
              goto LABEL_18;
            }

            v55 = v53 + 32;

            v56 = 0;
            while (2)
            {
              sub_1AF6350F8(v55, v380);
              sub_1AF63515C(v380, &v368);
              sub_1AF63515C(v362, v370);
              if (v369[24] <= 2u)
              {
                if (!v369[24])
                {
                  sub_1AFCB9FB8(v380, sub_1AF43A540);
                  sub_1AF63515C(&v368, &v341);
                  if (v370[40])
                  {
                    goto LABEL_63;
                  }

LABEL_76:
                  v59 = v341;
                  v60 = *v370;
                  sub_1AF635250(&v368);
                  if (v59 == v60)
                  {
                    goto LABEL_86;
                  }

                  goto LABEL_64;
                }

                if (v369[24] == 1)
                {
                  sub_1AFCB9FB8(v380, sub_1AF43A540);
                  sub_1AF63515C(&v368, &v341);
                  if (v370[40] == 1)
                  {
                    goto LABEL_76;
                  }

LABEL_63:
                  sub_1AFCB9F58(&v368, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
LABEL_64:
                  ++v56;
                  v55 += 72;
                  if (v54 == v56)
                  {
                    goto LABEL_89;
                  }

                  continue;
                }

                sub_1AF63515C(&v368, &v341);
                if (v370[40] == 2)
                {
LABEL_81:
                  sub_1AF616568(&v341, v347);
                  sub_1AF616568(v370, v350);
                  v61 = v348;
                  v62 = v349;
                  sub_1AF441150(v347, v348);
                  LOBYTE(v61) = sub_1AF640C98(v350, v61, v62);
                  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v350);
                  sub_1AFCB9FB8(v380, sub_1AF43A540);
                  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v347);
                  sub_1AF635250(&v368);
                  if (v61)
                  {
                    goto LABEL_86;
                  }

                  goto LABEL_64;
                }

LABEL_62:
                sub_1AFCB9FB8(v380, sub_1AF43A540);
                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v341);
                goto LABEL_63;
              }

              break;
            }

            if (v369[24] == 3)
            {
              sub_1AF63515C(&v368, &v341);
              if (v370[40] == 3)
              {
                goto LABEL_81;
              }

              goto LABEL_62;
            }

            if (v369[24] == 4)
            {
              sub_1AFCB9FB8(v380, sub_1AF43A540);
              sub_1AF63515C(&v368, &v341);
              if (v370[40] != 4)
              {
                goto LABEL_63;
              }

              v57 = v341;
              v58 = v370[0];
              sub_1AF635250(&v368);
              if (v57 == v58)
              {
                goto LABEL_86;
              }

              goto LABEL_64;
            }

            sub_1AFCB9FB8(v380, sub_1AF43A540);
            if (v370[40] != 5)
            {
              goto LABEL_63;
            }

            v63 = vorrq_s8(*&v370[8], *&v370[24]);
            if (*&vorr_s8(*v63.i8, *&vextq_s8(v63, v63, 8uLL)) | *v370)
            {
              goto LABEL_63;
            }

            sub_1AF635250(&v368);
LABEL_86:
            v65 = sub_1AFBFCA08(&v368);
            v66 = *(v64 + 48);
            if (v66)
            {
              v67 = *(v64 + 64);
              *(v66 + 8 * v67) = v300;
              *(v64 + 64) = v67 + 1;
            }

            (v65)(&v368, 0);

            sub_1AF635250(v362);
LABEL_18:
            if (++v18 == v295)
            {
              goto LABEL_95;
            }
          }
        }

        goto LABEL_95;
      }

      if (v12 != v299)
      {
        break;
      }

LABEL_95:
      sub_1AF630994(v8, &v314, v389);
      sub_1AF62D29C(v14);
      v9 = v282;
      ecs_stack_allocator_pop_snapshot(v282);
      v10 = v279;
      if (v279)
      {
        os_unfair_lock_unlock(*(v14 + 344));
        os_unfair_lock_unlock(*(v14 + 376));
      }

      v7 = v288 + 1;
      if (v288 + 1 == v287)
      {
        goto LABEL_174;
      }
    }

LABEL_99:
    v79 = *(*(v14 + 40) + 16);
    v80 = *(v79 + 128);
    if (!*(v80 + 16))
    {
      goto LABEL_137;
    }

    v81 = sub_1AF449CB8(&type metadata for ParticleGlobalForce);
    if ((v82 & 1) == 0 || *(*(v79 + 24) + 16 * *(*(v80 + 56) + 8 * v81) + 32) != &type metadata for ParticleGlobalForce)
    {
      goto LABEL_137;
    }

    *v362 = &type metadata for ParticleGlobalForce;
    *&v362[8] = &off_1F2562C30;
    v362[40] = 1;
    v83 = *(v8 + 104);
    v84 = *(v83 + 16);
    if (!v84)
    {

LABEL_132:
      v98 = *(v14 + 240) - *(v14 + 232);
      v99 = ecs_stack_allocator_allocate(*(v8 + 32), 8 * v98, 8);
      *v99 = v12;
      sub_1AF63515C(v362, &v368);
      *v370 = v99;
      *&v370[8] = v98;
      *&v370[16] = 1;
      v100 = *(v8 + 104);
      v101 = swift_isUniquelyReferenced_nonNull_native();
      *(v8 + 104) = v100;
      if ((v101 & 1) == 0)
      {
        v100 = sub_1AF420EA0(0, v100[2] + 1, 1, v100);
        *(v8 + 104) = v100;
      }

      v103 = v100[2];
      v102 = v100[3];
      if (v103 >= v102 >> 1)
      {
        *(v8 + 104) = sub_1AF420EA0(v102 > 1, v103 + 1, 1, v100);
      }

      sub_1AF635250(v362);
      v104 = *(v8 + 104);
      *(v104 + 16) = v103 + 1;
      v105 = v104 + 72 * v103;
      *(v105 + 32) = v368;
      v107 = *&v369[16];
      v106 = *v370;
      v108 = *v369;
      *(v105 + 96) = *&v370[16];
      *(v105 + 64) = v107;
      *(v105 + 80) = v106;
      *(v105 + 48) = v108;
      *(v8 + 104) = v104;
      goto LABEL_137;
    }

    v85 = v83 + 32;

    v86 = 0;
    while (1)
    {
      sub_1AF6350F8(v85, v380);
      sub_1AF63515C(v380, &v368);
      sub_1AF63515C(v362, v370);
      if (v369[24] <= 2u)
      {
        break;
      }

      if (v369[24] == 3)
      {
        sub_1AF63515C(&v368, &v341);
        if (v370[40] != 3)
        {
          goto LABEL_104;
        }

LABEL_123:
        sub_1AF616568(&v341, v347);
        sub_1AF616568(v370, v350);
        v91 = v348;
        v92 = v349;
        sub_1AF441150(v347, v348);
        LOBYTE(v91) = sub_1AF640C98(v350, v91, v92);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v350);
        sub_1AFCB9FB8(v380, sub_1AF43A540);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v347);
        sub_1AF635250(&v368);
        if (v91)
        {
          goto LABEL_128;
        }

        goto LABEL_106;
      }

      if (v369[24] != 4)
      {
        sub_1AFCB9FB8(v380, sub_1AF43A540);
        if (v370[40] == 5)
        {
          v93 = vorrq_s8(*&v370[8], *&v370[24]);
          if (!(*&vorr_s8(*v93.i8, *&vextq_s8(v93, v93, 8uLL)) | *v370))
          {
            sub_1AF635250(&v368);
LABEL_128:
            v95 = sub_1AFBFCA08(&v368);
            v96 = *(v94 + 48);
            if (v96)
            {
              v97 = *(v94 + 64);
              *(v96 + 8 * v97) = v12;
              *(v94 + 64) = v97 + 1;
            }

            (v95)(&v368, 0);

            sub_1AF635250(v362);
LABEL_137:
            v109 = *(*(v14 + 40) + 16);
            v110 = *(v109 + 128);
            if (*(v110 + 16))
            {
              v111 = sub_1AF449CB8(&type metadata for ParticleForceField);
              if ((v112 & 1) != 0 && *(*(v109 + 24) + 16 * *(*(v110 + 56) + 8 * v111) + 32) == &type metadata for ParticleForceField)
              {
                goto LABEL_98;
              }
            }

            *v362 = &type metadata for ParticleForceField;
            *&v362[8] = &off_1F25613E0;
            v362[40] = 0;
            v113 = *(v8 + 104);
            v114 = *(v113 + 16);
            if (!v114)
            {

LABEL_169:
              v128 = *(v14 + 240) - *(v14 + 232);
              v129 = ecs_stack_allocator_allocate(*(v8 + 32), 8 * v128, 8);
              *v129 = v12;
              sub_1AF63515C(v362, &v368);
              *v370 = v129;
              *&v370[8] = v128;
              *&v370[16] = 1;
              v130 = *(v8 + 104);
              v131 = swift_isUniquelyReferenced_nonNull_native();
              *(v8 + 104) = v130;
              if ((v131 & 1) == 0)
              {
                v130 = sub_1AF420EA0(0, v130[2] + 1, 1, v130);
                *(v8 + 104) = v130;
              }

              v133 = v130[2];
              v132 = v130[3];
              if (v133 >= v132 >> 1)
              {
                *(v8 + 104) = sub_1AF420EA0(v132 > 1, v133 + 1, 1, v130);
              }

              sub_1AF635250(v362);
              v134 = *(v8 + 104);
              *(v134 + 16) = v133 + 1;
              v135 = v134 + 72 * v133;
              *(v135 + 32) = v368;
              v137 = *&v369[16];
              v136 = *v370;
              v138 = *v369;
              *(v135 + 96) = *&v370[16];
              *(v135 + 64) = v137;
              *(v135 + 80) = v136;
              *(v135 + 48) = v138;
              *(v8 + 104) = v134;
              goto LABEL_98;
            }

            v115 = v113 + 32;

            v116 = 0;
            while (2)
            {
              sub_1AF6350F8(v115, v380);
              sub_1AF63515C(v380, &v368);
              sub_1AF63515C(v362, v370);
              if (v369[24] <= 2u)
              {
                if (!v369[24])
                {
                  sub_1AFCB9FB8(v380, sub_1AF43A540);
                  sub_1AF63515C(&v368, &v341);
                  if (v370[40])
                  {
                    goto LABEL_143;
                  }

LABEL_156:
                  v119 = v341;
                  v120 = *v370;
                  sub_1AF635250(&v368);
                  if (v119 == v120)
                  {
                    goto LABEL_166;
                  }

                  goto LABEL_144;
                }

                if (v369[24] == 1)
                {
                  sub_1AFCB9FB8(v380, sub_1AF43A540);
                  sub_1AF63515C(&v368, &v341);
                  if (v370[40] == 1)
                  {
                    goto LABEL_156;
                  }

LABEL_143:
                  sub_1AFCB9F58(&v368, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
LABEL_144:
                  ++v116;
                  v115 += 72;
                  if (v114 == v116)
                  {
                    goto LABEL_169;
                  }

                  continue;
                }

                sub_1AF63515C(&v368, &v341);
                if (v370[40] == 2)
                {
LABEL_161:
                  sub_1AF616568(&v341, v347);
                  sub_1AF616568(v370, v350);
                  v121 = v348;
                  v122 = v349;
                  sub_1AF441150(v347, v348);
                  LOBYTE(v121) = sub_1AF640C98(v350, v121, v122);
                  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v350);
                  sub_1AFCB9FB8(v380, sub_1AF43A540);
                  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v347);
                  sub_1AF635250(&v368);
                  if (v121)
                  {
                    goto LABEL_166;
                  }

                  goto LABEL_144;
                }

LABEL_142:
                sub_1AFCB9FB8(v380, sub_1AF43A540);
                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v341);
                goto LABEL_143;
              }

              break;
            }

            if (v369[24] == 3)
            {
              sub_1AF63515C(&v368, &v341);
              if (v370[40] == 3)
              {
                goto LABEL_161;
              }

              goto LABEL_142;
            }

            if (v369[24] == 4)
            {
              sub_1AFCB9FB8(v380, sub_1AF43A540);
              sub_1AF63515C(&v368, &v341);
              if (v370[40] != 4)
              {
                goto LABEL_143;
              }

              v117 = v341;
              v118 = v370[0];
              sub_1AF635250(&v368);
              if (v117 == v118)
              {
                goto LABEL_166;
              }

              goto LABEL_144;
            }

            sub_1AFCB9FB8(v380, sub_1AF43A540);
            if (v370[40] != 5)
            {
              goto LABEL_143;
            }

            v123 = vorrq_s8(*&v370[8], *&v370[24]);
            if (*&vorr_s8(*v123.i8, *&vextq_s8(v123, v123, 8uLL)) | *v370)
            {
              goto LABEL_143;
            }

            sub_1AF635250(&v368);
LABEL_166:
            v125 = sub_1AFBFCA08(&v368);
            v126 = *(v124 + 48);
            if (v126)
            {
              v127 = *(v124 + 64);
              *(v126 + 8 * v127) = v12;
              *(v124 + 64) = v127 + 1;
            }

            (v125)(&v368, 0);

            sub_1AF635250(v362);
LABEL_98:
            if (++v12 == v299)
            {
              goto LABEL_95;
            }

            goto LABEL_99;
          }
        }

        goto LABEL_105;
      }

      sub_1AFCB9FB8(v380, sub_1AF43A540);
      sub_1AF63515C(&v368, &v341);
      if (v370[40] != 4)
      {
        goto LABEL_105;
      }

      v87 = v341;
      v88 = v370[0];
      sub_1AF635250(&v368);
      if (v87 == v88)
      {
        goto LABEL_128;
      }

LABEL_106:
      ++v86;
      v85 += 72;
      if (v84 == v86)
      {
        goto LABEL_132;
      }
    }

    if (!v369[24])
    {
      sub_1AFCB9FB8(v380, sub_1AF43A540);
      sub_1AF63515C(&v368, &v341);
      if (v370[40])
      {
        goto LABEL_105;
      }

      goto LABEL_118;
    }

    if (v369[24] == 1)
    {
      sub_1AFCB9FB8(v380, sub_1AF43A540);
      sub_1AF63515C(&v368, &v341);
      if (v370[40] != 1)
      {
        goto LABEL_105;
      }

LABEL_118:
      v89 = v341;
      v90 = *v370;
      sub_1AF635250(&v368);
      if (v89 == v90)
      {
        goto LABEL_128;
      }

      goto LABEL_106;
    }

    sub_1AF63515C(&v368, &v341);
    if (v370[40] != 2)
    {
LABEL_104:
      sub_1AFCB9FB8(v380, sub_1AF43A540);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v341);
LABEL_105:
      sub_1AFCB9F58(&v368, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
      goto LABEL_106;
    }

    goto LABEL_123;
  }

  v139 = 0;
LABEL_176:
  v324 = v4;
  v325 = v5;
  v326 = v6;
  v327 = 1;
  v328 = 2;
  v329 = 0;

  sub_1AF705154(1, v311);

  sub_1AFA1CFD4(0, &qword_1ED7269A0, &qword_1ED7270C0, &qword_1ED7270D0, &protocol descriptor for Component);
  v140 = swift_allocObject();
  *(v140 + 16) = xmmword_1AFE431C0;
  *(v140 + 32) = &type metadata for SubEntity;
  *(v140 + 40) = &off_1F2562CF0;
  sub_1AF5D1EC0(v140);
  sub_1AFCBA0DC(v311, &qword_1EB643C90, &type metadata for ParticleForce, &off_1F2555DA0);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v320[0] = v312[0];
  v320[1] = v312[1];
  v321 = v313;
  v141 = v290;
  sub_1AF6B06C0(v290, v320, 0x200000000, v362);
  v289 = *v362;
  if (!*v362)
  {
LABEL_204:
    v149 = MEMORY[0x1E69E7CC0];
    goto LABEL_206;
  }

  v144 = *(&v363 + 1);
  v145 = v364;
  v366 = *&v362[8];
  v367 = *&v362[24];
  v283 = v365;
  v286 = *&v362[40];
  if (v365 <= 0 || !*(&v363 + 1))
  {
    sub_1AFCB9F58(v362, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
    goto LABEL_204;
  }

  v146 = *(*(&v364 + 1) + 32);
  v147 = *(v364 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  *&v369[16] = *&v362[32];
  *v370 = v363;
  *&v370[16] = v364;
  *&v370[32] = v365;
  v368 = *v362;
  *v369 = *&v362[16];
  sub_1AF5DD298(&v368, v380);
  v148 = 0;
  v149 = MEMORY[0x1E69E7CC0];
  v277 = v146;
  v280 = v144;
  v275 = v147;
  while (1)
  {
    v301 = v148;
    v150 = (v286 + 48 * v148);
    v151 = *v150;
    v152 = v150[1];
    v153 = v150[2];
    v293 = *(v150 + 3);
    v296 = *(v150 + 2);
    v154 = *(v150 + 5);
    v291 = *(v150 + 4);
    if (v147)
    {
      v155 = *(v154 + 376);

      os_unfair_lock_lock(v155);
      os_unfair_lock_lock(*(v154 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v146);
    v156 = *(*(&v145 + 1) + 64);
    v378[0] = *(*(&v145 + 1) + 48);
    v378[1] = v156;
    v379 = *(*(&v145 + 1) + 80);
    v157 = *(*(*(*(v154 + 40) + 16) + 32) + 16) + 1;
    *(*(&v145 + 1) + 48) = ecs_stack_allocator_allocate(*(*(&v145 + 1) + 32), 48 * v157, 8);
    *(*(&v145 + 1) + 56) = v157;
    *(*(&v145 + 1) + 72) = 0uLL;
    *(*(&v145 + 1) + 64) = 0;
    LOBYTE(v341) = 1;
    v380[0] = v145;
    v380[1] = v154;
    v380[2] = *(&v145 + 1);
    v380[3] = v153;
    v380[4] = (v152 - v151 + v153);
    v380[5] = v283;
    v381 = v151;
    v382 = v152;
    v383 = 0;
    v384 = 0;
    v385 = 1;
    v386 = v296;
    v387 = v293;
    v388 = v291;
    v158 = v139;
    sub_1AF707120(v154, v380);
    v159 = v386;
    if (!v386)
    {
      break;
    }

    v160 = v388;
    if (v388)
    {
      do
      {
        v162 = *v159++;
        v161 = v162;

        if (*(v154 + 184))
        {
          goto LABEL_330;
        }

        v164 = *(*(v154 + 168) + 4 * v161);
        v165 = *(*(v163 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v164 + 8);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v149 = sub_1AF4217DC(0, *(v149 + 2) + 1, 1, v149);
        }

        v167 = *(v149 + 2);
        v166 = *(v149 + 3);
        if (v167 >= v166 >> 1)
        {
          v149 = sub_1AF4217DC(v166 > 1, v167 + 1, 1, v149);
        }

        *(v149 + 2) = v167 + 1;
        v168 = &v149[8 * v167];
        *(v168 + 8) = v164;
        *(v168 + 9) = v165;
      }

      while (--v160);
    }

LABEL_194:
    v317 = v289;
    v318 = v366;
    v319 = v367;
    sub_1AF630994(*(&v145 + 1), &v317, v378);
    v139 = v158;
    sub_1AF62D29C(v154);
    v146 = v277;
    ecs_stack_allocator_pop_snapshot(v277);
    v147 = v275;
    if (v275)
    {
      os_unfair_lock_unlock(*(v154 + 344));
      os_unfair_lock_unlock(*(v154 + 376));
    }

    v148 = v301 + 1;
    if (v301 + 1 == v280)
    {
      v177 = MEMORY[0x1E69E6720];
      sub_1AFCB9F58(v362, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
      sub_1AFCB9F58(v362, &qword_1ED725EA0, &type metadata for QueryResult, v177, sub_1AFCBA88C);
      v141 = v290;
LABEL_206:
      v294 = *(v149 + 2);
      if (!v294)
      {
LABEL_329:
        sub_1AFCBA0DC(v312, &qword_1EB643C90, &type metadata for ParticleForce, &off_1F2555DA0);
        sub_1AFCBA0DC(v309, &qword_1EB643C98, &type metadata for ParticleGlobalForce, &off_1F2562C30);

        return;
      }

      v178 = 0;
      v308 = 0uLL;
      v352 = 0;
      v353 = 0;
      while (2)
      {
        v179 = *&v149[8 * v178 + 32];
        v180 = v179;
        v302 = v179;
        if (v179 == -1)
        {
          if (HIDWORD(v179))
          {

            goto LABEL_224;
          }

          v197 = 0uLL;
        }

        else
        {
          v181 = OBJC_IVAR____TtC3VFX13EntityManager__entries;

          if ((v180 & 0x80000000) == 0)
          {
            v183 = (v182 + v181);
            v184 = *(v182 + v181 + 8);
            v141 = v182;
            if (v184 <= v180 || ((v185 = (*v183 + 12 * v180), HIDWORD(v302) != -1) ? (v186 = v185[2] == HIDWORD(v302)) : (v186 = 1), !v186))
            {

              v197 = 0uLL;
              goto LABEL_230;
            }

            v187 = *(v185 + 2);
            v188 = *(*(v182 + 144) + 8 * *v185 + 32);
            v189 = *(v188 + 48);
            v190 = (v189 + 32);
            v191 = *(v189 + 16) + 1;
            while (--v191)
            {
              v192 = v190 + 5;
              v193 = *v190;
              v190 += 5;
              if (v193 == &type metadata for ParticleForce)
              {
                v194 = (&(*(v192 - 2))[2 * v187].Kind + *(v188 + 128));
                v196 = *v194;
                v195 = v194[1];

                goto LABEL_225;
              }
            }
          }

LABEL_224:

          v196 = 0;
          v195 = 0;
LABEL_225:
          v197.i64[0] = v196;
          v197.i64[1] = v195;
          if (v180 != -1)
          {
            v141 = v290;
            goto LABEL_230;
          }

          v141 = v290;
          if (HIDWORD(v302))
          {
LABEL_230:
            v297 = v197;
            v198 = *(v141 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

            if (v198)
            {
              v199 = *(v198 + 80);
              swift_unknownObjectWeakLoadStrong();
              v198 = *(v198 + 56);
            }

            else
            {
              v199 = 0;
            }

            v306 = 0;
            swift_unknownObjectUnownedInit();
            v305[0] = v290;
            v306 = v198;
            swift_unknownObjectUnownedAssign();
            swift_unownedRetain();
            swift_unknownObjectRelease();
            v307 = v199;
            if (v180 != -1)
            {
              swift_unownedRetainStrong();

              swift_unownedRetainStrong();
              v141 = v290;
              if ((v180 & 0x80000000) != 0)
              {
                goto LABEL_249;
              }

              if (*(v290 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) <= v180)
              {
                goto LABEL_249;
              }

              v200 = (*(v290 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v180);
              if (HIDWORD(v302) != -1 && v200[2] != HIDWORD(v302))
              {
                goto LABEL_249;
              }

              v201 = *(v200 + 2);
              v202 = *(*(v290 + 144) + 8 * *v200 + 32);
              if (*(v202 + 232) > v201 || *(v202 + 240) <= v201)
              {
                goto LABEL_249;
              }

              v284 = *(v200 + 2);
              v203 = **(v290 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
              v204 = *(v202 + 344);

              os_unfair_lock_lock(v204);
              ecs_stack_allocator_push_snapshot(*(v203 + 32));
              v205 = *(*(v202 + 40) + 16);
              v206 = *(v205 + 128);
              if (!*(v206 + 16) || (v207 = sub_1AF449CB8(&type metadata for ParticleForce), (v208 & 1) == 0) || *(*(v205 + 24) + 16 * *(*(v206 + 56) + 8 * v207) + 32) != &type metadata for ParticleForce)
              {

LABEL_244:
                v141 = v290;
                goto LABEL_245;
              }

              v350[0] = &type metadata for ParticleForce;
              v350[1] = &off_1F2555DA0;
              v351 = 1;
              v273 = v203;
              v243 = *(v203 + 104);
              v276 = (v203 + 104);
              v244 = *(v243 + 16);
              if (!v244)
              {

LABEL_324:
                v258 = *(v202 + 240) - *(v202 + 232);
                v203 = v273;
                v259 = ecs_stack_allocator_allocate(*(v273 + 32), 8 * v258, 8);
                *v259 = v284;
                sub_1AF63515C(v350, &v341);
                *v344 = v259;
                *&v344[8] = v258;
                *&v344[16] = 1;
                v260 = *(v273 + 104);
                v261 = swift_isUniquelyReferenced_nonNull_native();
                *(v273 + 104) = v260;
                if ((v261 & 1) == 0)
                {
                  v260 = sub_1AF420EA0(0, v260[2] + 1, 1, v260);
                  *v276 = v260;
                }

                v263 = v260[2];
                v262 = v260[3];
                if (v263 >= v262 >> 1)
                {
                  *v276 = sub_1AF420EA0(v262 > 1, v263 + 1, 1, v260);
                }

                sub_1AF635250(v350);
                v264 = *v276;
                *(v264 + 16) = v263 + 1;
                v265 = v264 + 72 * v263;
                *(v265 + 32) = v341;
                v266 = *v344;
                v267 = v343;
                v268 = v342;
                *(v265 + 96) = *&v344[16];
                *(v265 + 64) = v267;
                *(v265 + 80) = v266;
                *(v265 + 48) = v268;
                *v276 = v264;
                goto LABEL_244;
              }

              v245 = v243 + 32;

              v246 = 0;
              v281 = v244;
              while (2)
              {
                sub_1AF6350F8(v245, v347);
                sub_1AF63515C(v347, &v341);
                sub_1AF63515C(v350, v344);
                if (BYTE8(v343) > 2u)
                {
                  if (BYTE8(v343) != 3)
                  {
                    if (BYTE8(v343) != 4)
                    {
                      sub_1AFCB9FB8(v347, sub_1AF43A540);
                      if (v346 == 5)
                      {
                        v253 = vorrq_s8(*&v344[8], v345);
                        if (!(*&vorr_s8(*v253.i8, *&vextq_s8(v253, v253, 8uLL)) | *v344))
                        {
                          sub_1AF635250(&v341);
LABEL_320:
                          v255 = sub_1AFBFCA08(&v341);
                          v256 = *(v254 + 48);
                          if (v256)
                          {
                            v257 = *(v254 + 64);
                            *(v256 + 8 * v257) = v284;
                            *(v254 + 64) = v257 + 1;
                          }

                          (v255)(&v341, 0);
                          sub_1AF635250(v350);
                          v141 = v290;
                          v203 = v273;
LABEL_245:
                          sub_1AF62D29C(v202);

                          ecs_stack_allocator_pop_snapshot(*(v203 + 32));
                          os_unfair_lock_unlock(*(v202 + 344));

LABEL_249:

                          if (swift_unknownObjectUnownedLoadStrong())
                          {
                            swift_unknownObjectRelease();
                          }

                          if (v199)
                          {
                            swift_unownedRetainStrong();
                            *&v341 = v302;
                            *(&v341 + 1) = v141;
                            *&v342 = &type metadata for ParticleForce;
                            *(&v342 + 1) = &off_1F2555DA0;
                            v344[8] = 13;
                            sub_1AF6C67D0(&v341);

                            sub_1AF57955C(&v341);
                            sub_1AF579490(v305);
                            goto LABEL_253;
                          }

                          sub_1AF579490(v305);
                          goto LABEL_255;
                        }
                      }

                      goto LABEL_296;
                    }

                    sub_1AFCB9FB8(v347, sub_1AF43A540);
                    sub_1AF63515C(&v341, v340);
                    if (v346 != 4)
                    {
                      goto LABEL_296;
                    }

                    v247 = LOBYTE(v340[0]);
                    v248 = v344[0];
                    sub_1AF635250(&v341);
                    v249 = v247 == v248;
LABEL_309:
                    v244 = v281;
                    if (v249)
                    {
                      goto LABEL_320;
                    }

                    goto LABEL_297;
                  }

                  sub_1AF63515C(&v341, v340);
                  if (v346 == 3)
                  {
LABEL_315:
                    sub_1AF616568(v340, v337);
                    sub_1AF616568(v344, v336);
                    v252 = v338;
                    v278 = v339;
                    sub_1AF441150(v337, v338);
                    LOBYTE(v252) = sub_1AF640C98(v336, v252, v278);
                    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v336);
                    sub_1AFCB9FB8(v347, sub_1AF43A540);
                    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v337);
                    sub_1AF635250(&v341);
                    if (v252)
                    {
                      goto LABEL_320;
                    }

                    goto LABEL_297;
                  }
                }

                else
                {
                  if (!BYTE8(v343))
                  {
                    sub_1AFCB9FB8(v347, sub_1AF43A540);
                    sub_1AF63515C(&v341, v340);
                    if (!v346)
                    {
                      goto LABEL_308;
                    }

                    goto LABEL_296;
                  }

                  if (BYTE8(v343) == 1)
                  {
                    sub_1AFCB9FB8(v347, sub_1AF43A540);
                    sub_1AF63515C(&v341, v340);
                    if (v346 == 1)
                    {
LABEL_308:
                      v250 = *&v340[0];
                      v251 = *v344;
                      sub_1AF635250(&v341);
                      v249 = v250 == v251;
                      goto LABEL_309;
                    }

LABEL_296:
                    sub_1AFCB9F58(&v341, &qword_1ED7225C0, &type metadata for PrivateCommandQueue.Operation, &type metadata for PrivateCommandQueue.Operation, sub_1AF0D8108);
LABEL_297:
                    ++v246;
                    v245 += 72;
                    if (v244 == v246)
                    {
                      goto LABEL_324;
                    }

                    continue;
                  }

                  sub_1AF63515C(&v341, v340);
                  if (v346 == 2)
                  {
                    goto LABEL_315;
                  }
                }

                break;
              }

              sub_1AFCB9FB8(v347, sub_1AF43A540);
              _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v340);
              goto LABEL_296;
            }

            if (HIDWORD(v302))
            {
              v141 = v290;
              swift_unownedRetainStrong();

              swift_unownedRetainStrong();
              goto LABEL_249;
            }

            sub_1AF579490(v305);
            v141 = v290;
            if (v199)
            {
LABEL_253:
              v209 = [objc_opt_self() immediateMode];
              sub_1AF6C5E30(v209 ^ 1);
            }

LABEL_255:

            v197 = v297;
          }
        }

        *v370 = v308;
        *&v370[20] = v352;
        *&v370[28] = v353;
        v210 = vmulq_f32(v197, v197);
        *v142.i32 = v210.f32[2] + vaddv_f32(*v210.f32);
        *&v368 = 0;
        DWORD2(v368) = 257;
        HIDWORD(v368) = sqrtf(*v142.i32);
        *v369 = 1065353216;
        *&v369[8] = xmmword_1AFE9BBC0;
        *&v369[24] = 1;
        *&v370[32] = xmmword_1AFE208C0;
        v373 = 0;
        v371 = 0;
        v372 = 0;
        *&v370[16] = 1065353216;
        v374 = 1065353216;
        v375 = 0;
        v376 = 1;
        v377 = 0xFFFFFFFFLL;
        v211 = HIDWORD(v302);
        v212 = v180 == -1 && HIDWORD(v302) == 0;
        v213 = v212;
        if (!v212)
        {
          v298 = v197;
          v303 = v142;
          v214 = *(v141 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

          if (v214)
          {
            v215 = *(v214 + 80);
            swift_unknownObjectWeakLoadStrong();
            v214 = *(v214 + 56);
          }

          else
          {
            v215 = 0;
          }

          *&v342 = 0;
          swift_unknownObjectUnownedInit();
          v141 = v290;
          *&v341 = v290;
          *&v342 = v214;
          swift_unknownObjectUnownedAssign();
          swift_unownedRetain();
          swift_unknownObjectRelease();
          BYTE8(v342) = v215;
          sub_1AFC7722C(&v341, &v368, v180 | (v211 << 32));
          sub_1AF579490(&v341);
          if (v215)
          {
            v216 = [objc_opt_self() immediateMode];
            sub_1AF6C5E30(v216 ^ 1);
          }

          v197 = v298;
          v142 = v303;
        }

        v217 = vdupq_lane_s32(*v142.i8, 0);
        v217.i32[3] = 0;
        v218 = vrsqrteq_f32(v217);
        v219 = vmulq_f32(v218, vrsqrtsq_f32(v217, vmulq_f32(v218, v218)));
        v220 = vmulq_f32(v219, vrsqrtsq_f32(v217, vmulq_f32(v219, v219)));
        v221 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(*v142.i32 != 0.0)), 0x1FuLL));
        v221.i32[3] = 0;
        v222 = vbslq_s8(vcltzq_s32(v221), vmulq_f32(v197, v220), v197);
        v142.i32[0] = v222.i32[2];
        v143.i32[0] = 1.0;
        v221.i64[0] = 0x8000000080000000;
        v221.i64[1] = 0x8000000080000000;
        v221.i32[0] = vbslq_s8(v221, v143, v142).i32[0];
        v223 = v222.f32[1] / (fabsf(v222.f32[2]) + 1.0);
        v224 = vmuls_lane_f32(v223, *v222.f32, 1);
        v225 = -(v222.f32[0] * v223);
        v226 = v222.f32[2] + (*v221.i32 * v224);
        v227 = *v221.i32 * v225;
        v228 = 1.0 - v224;
        v229 = vmuls_lane_f32(-*v221.i32, *v222.f32, 1);
        v230 = v222.f32[2] + (v226 + v228);
        if (v230 <= 0.0)
        {
          if (v226 < v228 || v226 < v222.f32[2])
          {
            if (v228 <= v222.f32[2])
            {
              if (v213)
              {
                goto LABEL_209;
              }

              v239 = sqrtf(((v222.f32[2] + 1.0) - v226) - v228);
              v222.i32[0] = vsubq_f32(v222, v222).u32[0];
              v222.f32[1] = v222.f32[1] + v229;
              v222.f32[2] = v239 * v239;
              v222.f32[3] = v227 - v225;
              v233 = vmulq_n_f32(v222, 0.5 / v239);
            }

            else
            {
              if (v213)
              {
                goto LABEL_209;
              }

              v235 = sqrtf(((v228 + 1.0) - v226) - v222.f32[2]);
              v236.f32[0] = v225 + v227;
              v236.f32[1] = v235 * v235;
              *&v236.u32[2] = vrev64_s32(vadd_f32(*v222.f32, __PAIR64__(LODWORD(v229), v222.u32[0])));
              v233 = vmulq_n_f32(v236, 0.5 / v235);
            }
          }

          else
          {
            if (v213)
            {
              goto LABEL_209;
            }

            v237 = sqrtf(((v226 + 1.0) - v228) - v222.f32[2]);
            v238.f32[0] = v237 * v237;
            v238.f32[1] = v225 + v227;
            *&v238.u32[2] = vsub_f32(__PAIR64__(LODWORD(v229), v222.u32[0]), *v222.f32);
            v233 = vmulq_n_f32(v238, 0.5 / v237);
          }

LABEL_285:
          v304 = v233;
          v240 = *(v141 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

          if (v240)
          {
            v241 = *(v240 + 80);
            swift_unknownObjectWeakLoadStrong();
            v240 = *(v240 + 56);
          }

          else
          {
            v241 = 0;
          }

          *&v342 = 0;
          swift_unknownObjectUnownedInit();
          *&v341 = v290;
          *&v342 = v240;
          swift_unknownObjectUnownedAssign();
          swift_unownedRetain();
          v141 = v290;
          swift_unknownObjectRelease();
          BYTE8(v342) = v241;
          sub_1AFC76C74(&v341, v180 | (v211 << 32), v304);
          sub_1AF579490(&v341);
          if (v241)
          {
            v242 = [objc_opt_self() immediateMode];
            sub_1AF6C5E30(v242 ^ 1);
          }
        }

        else if ((v213 & 1) == 0)
        {
          v231 = sqrtf(v230 + 1.0);
          v232.f32[0] = v229 - v222.f32[1];
          v232.i32[1] = vaddq_f32(v222, v222).u32[0];
          v232.f32[2] = v227 - v225;
          v232.f32[3] = v231 * v231;
          v233 = vmulq_n_f32(v232, 0.5 / v231);
          goto LABEL_285;
        }

LABEL_209:
        if (++v178 == v294)
        {
          goto LABEL_329;
        }

        continue;
      }
    }
  }

  v169 = v381;
  v170 = v382;
  if (v381 == v382)
  {
    goto LABEL_194;
  }

  while (1)
  {

    if (*(v154 + 184))
    {
      break;
    }

    v172 = *(*(v154 + 168) + 4 * v169);
    v173 = *(*(v171 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v172 + 8);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v149 = sub_1AF4217DC(0, *(v149 + 2) + 1, 1, v149);
    }

    v175 = *(v149 + 2);
    v174 = *(v149 + 3);
    if (v175 >= v174 >> 1)
    {
      v149 = sub_1AF4217DC(v174 > 1, v175 + 1, 1, v149);
    }

    ++v169;
    *(v149 + 2) = v175 + 1;
    v176 = &v149[8 * v175];
    *(v176 + 8) = v172;
    *(v176 + 9) = v173;
    if (v170 == v169)
    {
      goto LABEL_194;
    }
  }

LABEL_330:
  sub_1AFDFE518();
  __break(1u);

  sub_1AF579490(&v341);
  v270 = [objc_opt_self() immediateMode];
  sub_1AF6C5E30(v270 ^ 1);
  __break(1u);
}

uint64_t sub_1AFCA492C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = 0;
  v6 = 0;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v12 = v11 | (v6 << 6);
    if (*(a4 + 16))
    {
LABEL_11:
      v16 = (*(a3 + 48) + 16 * v12);
      v17 = *v16;
      v18 = v16[1];

      sub_1AF419914(v17, v18);
      v20 = v19;

      if ((v20 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
LABEL_12:
      *(a1 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      ++v24;
    }
  }

  v13 = v6 << 6;
  while (1)
  {
    v14 = v6 + 1;
    if (v6 + 1 >= v10)
    {
      return sub_1AF8FB190(a1, a2, v24, a3);
    }

    v15 = *(a3 + 8 * v6 + 72);
    v13 += 64;
    ++v6;
    if (v15)
    {
      v9 = (v15 - 1) & v15;
      v12 = __clz(__rbit64(v15)) + v13;
      v6 = v14;
      if (!*(a4 + 16))
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }
}

uint64_t sub_1AFCA4AAC(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();

      v10 = sub_1AFC95A40(v12, v7, a1, a2);
      MEMORY[0x1B271DEA0](v12, -1, -1);
      swift_bridgeObjectRelease_n();
      return v10;
    }
  }

  MEMORY[0x1EEE9AC00](v9);
  bzero(v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_1AFCA492C((v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v10;
}

uint64_t sub_1AFCA4C6C(ProtocolDescriptor *a1, uint64_t a2, double a3)
{
  LODWORD(v3) = a2;
  v5 = &v381;
  v415 = *MEMORY[0x1E69E9840];
  v6 = a2 & 0x100000000;
  sub_1AFCBA7A8(0, &qword_1EB63D800, MEMORY[0x1E69E75C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v329 = &v325[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v333 = &v325[-v10];
  MEMORY[0x1EEE9AC00](v11);
  v331 = &v325[-v12];
  MEMORY[0x1EEE9AC00](v13);
  v337 = &v325[-v14];
  v335 = sub_1AFDFF358();
  v15 = *(v335 - 8);
  MEMORY[0x1EEE9AC00](v335);
  v332 = &v325[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v336 = &v325[-v18];
  if (qword_1ED72D720 != -1)
  {
LABEL_288:
    swift_once();
  }

  if (v6)
  {
    v19 = 0;
  }

  else
  {
    v19 = v3;
  }

  v375 = qword_1ED73B840;
  v376 = v19;
  v377 = v6 >> 31;
  v378 = 1;
  v379 = 2;
  v380 = 0;

  sub_1AF702F78(3, v368);

  v373[0] = v368[0];
  v373[1] = v368[1];
  v374 = v369;
  sub_1AF6B06C0(a1, v373, 0x200000000, &v395);
  v20 = v5[31];
  v5[24] = v5[30];
  v5[25] = v20;
  v21 = v5[33];
  v5[26] = v5[32];
  v5[27] = v21;
  v22 = v5[29];
  v5[22] = v5[28];
  v5[23] = v22;
  result = sub_1AFCBA0DC(v368, &qword_1EB63D270, &type metadata for GraphEntityComponentPropertyReferences, &off_1F253B5B8);
  v341 = v395;
  if (!v395)
  {
    return result;
  }

  v340 = v398;
  v24 = v399;
  v344 = v401;
  v411 = v396;
  v412 = v397;
  if (v402 <= 0 || !v399)
  {
    v323 = MEMORY[0x1E69E6720];
    return sub_1AFCB9F58(&v395, &qword_1ED725EA0, &type metadata for QueryResult, v323, sub_1AFCBA88C);
  }

  v343 = v344[4];
  v25 = *(v400 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v394[2] = v394[8];
  v394[3] = v394[9];
  v394[4] = v394[10];
  v394[5] = v394[11];
  v394[0] = v394[6];
  v394[1] = v394[7];
  sub_1AF5DD298(v394, &v390);
  v26 = 0;
  v367 = 0;
  v345 = 0x80000001AFF4C910;
  v330 = *MEMORY[0x1E69E75B8];
  v328 = *MEMORY[0x1E69E75B0];
  v334 = (v15 + 8);
  v326 = *MEMORY[0x1E69E75A8];
  v327 = xmmword_1AFE76100;
  v338 = v25;
  v339 = v24;
LABEL_10:
  v342 = v26;
  v27 = (v340 + 48 * v26);
  v28 = *v27;
  v354 = v27[1];
  v29 = *(v27 + 2);
  v30 = *(v27 + 3);
  v31 = *(v27 + 5);
  v350 = *(v27 + 4);
  v351 = v29;
  if (v25)
  {
    v32 = *(v31 + 376);

    os_unfair_lock_lock(v32);
    os_unfair_lock_lock(*(v31 + 344));
  }

  else
  {
  }

  ecs_stack_allocator_push_snapshot(v343);
  v33 = v344;
  v34 = *(v344 + 4);
  v413[0] = *(v344 + 3);
  v413[1] = v34;
  v414 = v344[10];
  v35 = *(*(*(*(v31 + 40) + 16) + 32) + 16) + 1;
  v33[6] = ecs_stack_allocator_allocate(v344[4], 48 * v35, 8);
  v33[7] = v35;
  v33[9] = 0;
  v33[10] = 0;
  v33[8] = 0;
  v37 = v350;
  v36 = v351;
  v349 = v31;
  v361 = sub_1AF64B110(&type metadata for GraphEntityComponentPropertyReferences, &off_1F253B5B8, v351, v30, v350, v33);
  if (v36)
  {
    if (!v37)
    {
      goto LABEL_148;
    }

    v38 = 0;
LABEL_19:
    v15 = *&v361[64 * v38 + 8];
    if (!*(v15 + 16))
    {
      goto LABEL_18;
    }

    v358 = &v361[64 * v38];
    v39 = v351[v38];
    v355 = v38;
    v356 = v39;
    LOBYTE(v39) = *(v15 + 32);
    v40 = v39 & 0x3F;
    v41 = ((1 << v39) + 63) >> 6;
    v42 = 8 * v41;

    if (v40 > 0xD)
    {

      if (!swift_stdlib_isStackAllocationSafe())
      {
        v167 = swift_slowAlloc();

        v179 = v367;
        v180 = sub_1AFC95AD4(v167, v41, v15, sub_1AFC952E0);
        v367 = v179;
        if (v179)
        {
          goto LABEL_290;
        }

        v62 = v180;

        MEMORY[0x1B271DEA0](v167, -1, -1);
        goto LABEL_54;
      }
    }

    v359 = v325;
    v360 = v41;
    MEMORY[0x1EEE9AC00](v43);
    v362 = &v325[-((v42 + 15) & 0x3FFFFFFFFFFFFFF0)];
    bzero(v362, v42);
    v363.n128_u64[0] = 0;
    v6 = 0;
    v44 = 1 << *(v15 + 32);
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    else
    {
      v45 = -1;
    }

    v46 = v45 & *(v15 + 64);
    v47 = (v44 + 63) >> 6;
    v364 = v47;
    while (v46)
    {
      v48 = __clz(__rbit64(v46));
      v46 &= v46 - 1;
      v49 = v48 | (v6 << 6);
LABEL_31:
      v53 = *(v15 + 56) + 16 * v49;
      if (*v53 == -1 && !*(v53 + 4))
      {
        v54 = *(v53 + 8);
        v55 = qword_1EB6340F8;
        v365 = *(*(v15 + 48) + 16 * v49 + 8);
        v366.n128_u64[0] = v46;

        if (v55 != -1)
        {
          swift_once();
        }

        v56 = qword_1EB6C2AD0;
        v57 = *(qword_1EB6C2AD0 + 16);

        if (v57)
        {
          v357 = v49;
          v5 = (v56 + 32);
          while (1)
          {
            v58 = *v5;
            LODWORD(v3) = **(*v5 + 32);

            v59 = sub_1AFDFDFD8();
            a1 = &protocol descriptor for Component;
            if (!swift_conformsToProtocol2())
            {
              break;
            }

            v3 = sub_1AFDFDFD8();
            if (!swift_conformsToProtocol2())
            {
              goto LABEL_285;
            }

            if (v59 == v3 && v58[5] == v54[5])
            {
              if (v58[2] == v54[2] && v58[3] == v54[3])
              {

                goto LABEL_52;
              }

              v61 = sub_1AFDFEE28();

              if (v61)
              {

LABEL_52:

                *(v362 + ((v357 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v357;
                ++v363.n128_u64[0];
                goto LABEL_50;
              }
            }

            else
            {
            }

            v5 = (v5 + 8);
            if (!--v57)
            {
              goto LABEL_49;
            }
          }

          __break(1u);
LABEL_285:
          __break(1u);
LABEL_286:
          __break(1u);
          goto LABEL_287;
        }

LABEL_49:

LABEL_50:
        v47 = v364;
        v46 = v366.n128_u64[0];
      }
    }

    v50 = v6 << 6;
    while (1)
    {
      v51 = v6 + 1;
      if ((v6 + 1) >= v47)
      {
        break;
      }

      v52 = *(v15 + 8 * v6 + 72);
      v50 += 64;
      ++v6;
      if (v52)
      {
        v46 = (v52 - 1) & v52;
        v49 = __clz(__rbit64(v52)) + v50;
        v6 = v51;
        goto LABEL_31;
      }
    }

    v62 = sub_1AF8FB190(v362, v360, v363.n128_i64[0], v15);
LABEL_54:

    if (!*(v62 + 16))
    {
      goto LABEL_16;
    }

    sub_1AF44377C();
    v63 = sub_1AFDFE598();
    v64 = v63;
    v65 = 0;
    v66 = 1 << *(v62 + 32);
    v67 = *(v62 + 64);
    if (v66 < 64)
    {
      v68 = ~(-1 << v66);
    }

    else
    {
      v68 = -1;
    }

    v69 = v68 & v67;
    v70 = (v66 + 63) >> 6;
    v71 = v63 + 64;
    if ((v68 & v67) != 0)
    {
      do
      {
        v72 = __clz(__rbit64(v69));
        v69 &= v69 - 1;
        v73 = v72 | (v65 << 6);
LABEL_64:
        v77 = (*(v62 + 48) + 16 * v73);
        v79 = *v77;
        v78 = v77[1];
        v80 = *(*(v62 + 56) + 16 * v73 + 8);
        *(v71 + ((v73 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v73;
        v81 = (v64[6] + 16 * v73);
        *v81 = v79;
        v81[1] = v78;
        *(v64[7] + 8 * v73) = v80;
        ++v64[2];
      }

      while (v69);
    }

    v74 = v65 << 6;
    while (1)
    {
      v75 = v65 + 1;
      if (v65 + 1 >= v70)
      {
        break;
      }

      v76 = *(v62 + 8 * v65 + 72);
      v74 += 64;
      ++v65;
      if (v76)
      {
        v69 = (v76 - 1) & v76;
        v73 = __clz(__rbit64(v76)) + v74;
        v65 = v75;
        goto LABEL_64;
      }
    }

    v82 = v358;
    *(v358 + 2) = v64;

    v84 = v367;
    v85 = sub_1AFCA4AAC(v83, v62);
    v367 = v84;

    *(v82 + 8) = v85;

    v86 = off_1F253BF58;

    v87 = sub_1AF64B03C(&type metadata for CodeGenerationComponent, v86);
    if (v88)
    {

LABEL_16:

      goto LABEL_17;
    }

    v89 = v87;

    v90 = *(v89 + 8 * v356);
    if (!v90)
    {
      goto LABEL_16;
    }

    v91 = 1 << *(v62 + 32);
    if (v91 < 64)
    {
      v92 = ~(-1 << v91);
    }

    else
    {
      v92 = -1;
    }

    v93 = v92 & *(v62 + 64);
    v94 = (v91 + 63) >> 6;

    v95 = 0;
    v346 = v94;
    v347 = v90;
    v348 = v62;
    if (!v93)
    {
      goto LABEL_75;
    }

    while (1)
    {
LABEL_78:
      v353 = v95;
      v354 = (v93 - 1) & v93;
      v97 = (v95 << 10) | (16 * __clz(__rbit64(v93)));
      v98 = *(v62 + 56);
      v99 = *(v62 + 48) + v97;
      v100 = *(v99 + 8);
      v362 = *v99;
      v101 = *(v98 + v97 + 8);
      v102 = *(v90 + 168);
      v103 = 1 << *(v102 + 32);
      if (v103 < 64)
      {
        v104 = ~(-1 << v103);
      }

      else
      {
        v104 = -1;
      }

      v105 = v104 & *(v102 + 64);
      v106 = (v103 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      v364 = v100;

      v352 = v101;

      v107 = 0;
      v363.n128_u64[0] = v106;
      while (1)
      {
        if (!v105)
        {
          while (1)
          {
            v108 = v107 + 1;
            if (v107 + 1 >= v106)
            {
              break;
            }

            v105 = *(v102 + 8 * v107++ + 72);
            if (v105)
            {
              v107 = v108;
              goto LABEL_88;
            }
          }

          v90 = v347;
          v62 = v348;
          v94 = v346;
          v95 = v353;
          v93 = v354;
          if (v354)
          {
            goto LABEL_78;
          }

          goto LABEL_75;
        }

LABEL_88:
        v109 = __clz(__rbit64(v105)) | (v107 << 6);
        v110 = *(*(v102 + 48) + 16 * v109 + 8);
        v111 = *(*(v102 + 56) + 8 * v109);
        v112 = *(v111 + 80);
        if (!v112[2])
        {

          goto LABEL_83;
        }

        v113 = v112[4];
        v114 = v112[5];

        v365 = v325;
        *&v390 = v113;
        *(&v390 + 1) = v114;
        MEMORY[0x1EEE9AC00](v115);
        *&v325[-16] = &v390;
        v366.n128_u64[0] = v110;

        v116 = v367;
        v117 = v111;
        v118 = sub_1AF7B9518(sub_1AF7714A4, &v325[-32], v112);
        v367 = v116;

        if ((v118 & 1) == 0)
        {

          v106 = v363.n128_u64[0];
          goto LABEL_83;
        }

        v119 = *(v117 + 80);
        v120 = *(v119 + 16);
        v121 = v117;
        v122 = 0;
        if (v120)
        {
          v123 = (v119 + 40);
          while (1)
          {
            v124 = *(v123 - 1) == v113 && *v123 == v114;
            if (v124 || (sub_1AFDFEE28() & 1) != 0)
            {
              break;
            }

            ++v122;
            v123 += 2;
            if (v120 == v122)
            {
              v122 = 0;
              break;
            }
          }
        }

        v125 = (*(v121 + 88) + 40 * v122);
        v127 = v125[4];
        v126 = v125[5];
        v128 = v125[7];
        v359 = v125[6];
        v360 = v126;
        v357 = v125[8];
        v358 = v128;
        sub_1AF687F90(v127, v126, v359, v128, v357);
        v356 = sub_1AF7AF740(v113, v114);
        v130 = v129;
        _s12ParameterOutCMa();
        v131 = swift_allocObject();
        swift_weakInit();
        v365 = v121;
        swift_weakAssign();
        v131[3] = v113;
        v131[4] = v114;
        v132 = v356;
        v131[5] = v356;
        v131[6] = v130;
        v134 = v359;
        v133 = v360;
        v131[7] = v127;
        v131[8] = v133;
        v135 = v357;
        v136 = v358;
        v131[9] = v134;
        v131[10] = v136;
        v131[11] = v135;
        *&v390 = v132;
        *(&v390 + 1) = v130;
        sub_1AF4486E4();

        v137 = sub_1AFDFDF28();

        if (*(v137 + 16) <= 1uLL)
        {
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v137 = sub_1AFC0DBAC(v137);
          }

          --*(v137 + 16);

          *&v390 = v137;
          sub_1AFCBA88C(0, &qword_1EB63EA80, MEMORY[0x1E69E67B0], MEMORY[0x1E69E62F8]);
          sub_1AF7F5FB0();
          sub_1AF6DC518();
          v138 = sub_1AFDFD298();
          v140 = v139;

          *&v390 = v138;
          *(&v390 + 1) = v140;
          v132 = sub_1AFDFD1E8();
          v130 = v141;
        }

        v106 = v363.n128_u64[0];
        if (v132 == v362 && v130 == v364)
        {

          goto LABEL_111;
        }

        v142 = sub_1AFDFEE28();

        if (v142)
        {
          break;
        }

LABEL_83:
        v105 &= v105 - 1;
      }

LABEL_111:

      v389 = MEMORY[0x1E69E6370];
      LOBYTE(v388[0]) = 1;
      v143 = v365;
      v144 = *(v365 + 2);

      v62 = v348;
      v94 = v346;
      v93 = v354;
      if (!v144)
      {
        *(v143 + 2) = sub_1AF432414(MEMORY[0x1E69E7CC0]);
      }

      sub_1AF0D5A54(v388, &v381);
      memset(v393 + 8, 0, 32);
      *&v390 = 0xD00000000000001CLL;
      *(&v390 + 1) = v345;
      sub_1AF0D5A54(&v381, v387);
      v145 = v336;
      sub_1AFDFF318();
      sub_1AF441150(&v381, v382.n128_i64[1]);
      DynamicType = swift_getDynamicType();
      v147 = v337;
      sub_1AFDFF338();
      v148 = sub_1AFDFF328();
      v149 = *(v148 - 8);
      if ((*(v149 + 48))(v147, 1, v148) == 1)
      {
LABEL_114:
        sub_1AF808478(DynamicType, v405);
        v366 = v405[1];
        v363 = v405[0];
        v150 = v406;
        (*v334)(v145, v335);
        goto LABEL_128;
      }

      v152 = v147;
      v153 = v331;
      sub_1AFCBA80C(v152, v331, &qword_1EB63D800, MEMORY[0x1E69E75C8]);
      v154 = (*(v149 + 88))(v153, v148);
      if (v154 == v330)
      {
        if (DynamicType == &type metadata for Entity)
        {
          v150 = 0;
          v366 = 0u;
          v363 = v327;
        }

        else
        {
          sub_1AF808478(DynamicType, v403);
          v366 = v403[1];
          v363 = v403[0];
          v150 = v404;
        }

        v147 = v337;
        v90 = v347;
        *&v151 = (*v334)(v336, v335);
      }

      else
      {
        v145 = v336;
        if (v154 == v328)
        {
          (*v334)(v336, v335);
          v150 = 0;
          v366 = 0u;
          v151 = v327;
        }

        else
        {
          if (v154 != v326)
          {
            (*(v149 + 8))(v331, v148);
            v147 = v337;
            goto LABEL_114;
          }

          (*v334)(v336, v335);
          sub_1AF441150(&v381, v382.n128_i64[1]);
          v155 = swift_getDynamicType();
          v156 = swift_conformsToProtocol2();
          v150 = 0;
          if (v155)
          {
            v157 = v156 == 0;
          }

          else
          {
            v157 = 1;
          }

          v158 = 41;
          if (v157)
          {
            v158 = 42;
          }

          *&v151 = 0;
          v366 = 0u;
          *(&v151 + 1) = v158;
        }

        v363 = v151;
        v147 = v337;
LABEL_128:
        v90 = v347;
      }

      sub_1AFCBA018(v147, &qword_1EB63D800, MEMORY[0x1E69E75C8], *&v151);
      v391 = v363;
      v392 = v366;
      *&v393[0] = v150;
      sub_1AFCB9F58(v393 + 8, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1AFCBA88C);
      sub_1AF449D40(&v381, (v393 + 8));
      v383 = v392;
      v384 = v393[0];
      v385 = v393[1];
      v386 = *&v393[2];
      v381 = v390;
      v382 = v391;
      v159 = v365;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v387[0] = *(v159 + 2);
      v161 = v387[0];
      *(v159 + 2) = 0x8000000000000000;
      v162 = v345;
      v163 = sub_1AF419914(0xD00000000000001CLL, v345);
      v165 = v164;
      v166 = *(v161 + 16) + ((v164 & 1) == 0);
      if (*(v161 + 24) >= v166)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v178 = v163;
          sub_1AF844804();
          v163 = v178;
        }
      }

      else
      {
        sub_1AF82C8F0(v166, isUniquelyReferenced_nonNull_native);
        v167 = v387[0];
        v163 = sub_1AF419914(0xD00000000000001CLL, v162);
        if ((v165 & 1) != (v168 & 1))
        {
          goto LABEL_289;
        }
      }

      v169 = v345;
      v170 = v365;
      v171 = v387[0];
      if (v165)
      {
        sub_1AF770FA0(&v381, *(v387[0] + 56) + 88 * v163);
      }

      else
      {
        *(v387[0] + 8 * (v163 >> 6) + 64) |= 1 << v163;
        v172 = (v171[6] + 16 * v163);
        *v172 = 0xD00000000000001CLL;
        v172[1] = v169;
        v173 = v171[7] + 88 * v163;
        v174 = v382;
        *v173 = v381;
        *(v173 + 16) = v174;
        v175 = v383;
        v176 = v384;
        v177 = v385;
        *(v173 + 80) = v386;
        *(v173 + 48) = v176;
        *(v173 + 64) = v177;
        *(v173 + 32) = v175;

        ++v171[2];
      }

      *(v170 + 2) = v171;

      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v388);
      v95 = v353;
      if (!v93)
      {
LABEL_75:
        while (2)
        {
          v96 = v95 + 1;
          if (v95 + 1 < v94)
          {
            v93 = *(v62 + 8 * v95++ + 72);
            if (!v93)
            {
              continue;
            }

            v95 = v96;
            goto LABEL_78;
          }

          break;
        }

LABEL_17:
        v37 = v350;
        v38 = v355;
LABEL_18:
        if (++v38 != v37)
        {
          goto LABEL_19;
        }

LABEL_148:
        v370 = v341;
        v371 = v411;
        v372 = v412;
        v181 = v367;
        sub_1AF630994(v344, &v370, v413);
        v367 = v181;
        v182 = v349;
        sub_1AF62D29C(v349);
        ecs_stack_allocator_pop_snapshot(v343);
        v25 = v338;
        if (v338)
        {
          os_unfair_lock_unlock(*(v182 + 43));
          os_unfair_lock_unlock(*(v182 + 47));
        }

        v26 = v342 + 1;
        if (v342 + 1 == v339)
        {
          v324 = MEMORY[0x1E69E6720];
          sub_1AFCB9F58(&v395, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
          v323 = v324;
          return sub_1AFCB9F58(&v395, &qword_1ED725EA0, &type metadata for QueryResult, v323, sub_1AFCBA88C);
        }

        goto LABEL_10;
      }
    }
  }

  if (v28 == v354)
  {
    goto LABEL_148;
  }

  while (1)
  {
    v15 = *&v361[64 * v28 + 8];
    if (!*(v15 + 16))
    {
      goto LABEL_152;
    }

    v357 = &v361[64 * v28];
    v362 = v28;
    v183 = *(v15 + 32);
    v184 = v183 & 0x3F;
    v185 = ((1 << v183) + 63) >> 6;
    v186 = 8 * v185;

    if (v184 > 0xD)
    {

      if (!swift_stdlib_isStackAllocationSafe())
      {
        v167 = swift_slowAlloc();

        v321 = v367;
        v322 = sub_1AFC95AD4(v167, v185, v15, sub_1AFC952E0);
        v367 = v321;
        if (v321)
        {
          goto LABEL_290;
        }

        v205 = v322;

        MEMORY[0x1B271DEA0](v167, -1, -1);
        goto LABEL_188;
      }
    }

    v358 = v325;
    v359 = v185;
    MEMORY[0x1EEE9AC00](v187);
    v360 = &v325[-((v186 + 15) & 0x3FFFFFFFFFFFFFF0)];
    bzero(v360, v186);
    v363.n128_u64[0] = 0;
    v6 = 0;
    v188 = 1 << *(v15 + 32);
    if (v188 < 64)
    {
      v189 = ~(-1 << v188);
    }

    else
    {
      v189 = -1;
    }

    v190 = v189 & *(v15 + 64);
    v191 = (v188 + 63) >> 6;
    v364 = v191;
LABEL_159:
    while (2)
    {
      if (v190)
      {
        v192 = __clz(__rbit64(v190));
        v190 &= v190 - 1;
        v193 = v192 | (v6 << 6);
LABEL_165:
        v197 = *(v15 + 56) + 16 * v193;
        if (*v197 != -1 || *(v197 + 4))
        {
          continue;
        }

        v198 = *(v197 + 8);
        v199 = qword_1EB6340F8;
        v365 = *(*(v15 + 48) + 16 * v193 + 8);
        v366.n128_u64[0] = v190;

        if (v199 != -1)
        {
          swift_once();
        }

        v200 = qword_1EB6C2AD0;
        v201 = *(qword_1EB6C2AD0 + 16);

        if (!v201)
        {
LABEL_183:

          goto LABEL_184;
        }

        v356 = v193;
        v5 = (v200 + 32);
        while (1)
        {
          v202 = *v5;
          LODWORD(v3) = **(*v5 + 32);

          a1 = sub_1AFDFDFD8();
          if (!swift_conformsToProtocol2())
          {
            goto LABEL_286;
          }

          v3 = sub_1AFDFDFD8();
          if (!swift_conformsToProtocol2())
          {
LABEL_287:
            __break(1u);
            goto LABEL_288;
          }

          if (a1 == v3 && v202[5] == v198[5])
          {
            if (v202[2] == v198[2] && v202[3] == v198[3])
            {

LABEL_186:

              *&v360[(v356 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v356;
              ++v363.n128_u64[0];
LABEL_184:
              v191 = v364;
              v190 = v366.n128_u64[0];
              goto LABEL_159;
            }

            v204 = sub_1AFDFEE28();

            if (v204)
            {

              goto LABEL_186;
            }
          }

          else
          {
          }

          v5 = (v5 + 8);
          if (!--v201)
          {
            goto LABEL_183;
          }
        }
      }

      break;
    }

    v194 = v6 << 6;
    while (1)
    {
      v195 = v6 + 1;
      if ((v6 + 1) >= v191)
      {
        break;
      }

      v196 = *(v15 + 8 * v6 + 72);
      v194 += 64;
      ++v6;
      if (v196)
      {
        v190 = (v196 - 1) & v196;
        v193 = __clz(__rbit64(v196)) + v194;
        v6 = v195;
        goto LABEL_165;
      }
    }

    v205 = sub_1AF8FB190(v360, v359, v363.n128_i64[0], v15);
LABEL_188:

    if (*(v205 + 16))
    {
      sub_1AF44377C();
      v206 = sub_1AFDFE598();
      v207 = v206;
      v208 = 0;
      v209 = 1 << *(v205 + 32);
      v210 = *(v205 + 64);
      if (v209 < 64)
      {
        v211 = ~(-1 << v209);
      }

      else
      {
        v211 = -1;
      }

      v212 = v211 & v210;
      v213 = (v209 + 63) >> 6;
      v214 = v206 + 64;
      if ((v211 & v210) != 0)
      {
        do
        {
          v215 = __clz(__rbit64(v212));
          v212 &= v212 - 1;
          v216 = v215 | (v208 << 6);
LABEL_198:
          v220 = (*(v205 + 48) + 16 * v216);
          v222 = *v220;
          v221 = v220[1];
          v223 = *(*(v205 + 56) + 16 * v216 + 8);
          *(v214 + ((v216 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v216;
          v224 = (v207[6] + 16 * v216);
          *v224 = v222;
          v224[1] = v221;
          *(v207[7] + 8 * v216) = v223;
          ++v207[2];
        }

        while (v212);
      }

      v217 = v208 << 6;
      while (1)
      {
        v218 = v208 + 1;
        if (v208 + 1 >= v213)
        {
          break;
        }

        v219 = *(v205 + 8 * v208 + 72);
        v217 += 64;
        ++v208;
        if (v219)
        {
          v212 = (v219 - 1) & v219;
          v216 = __clz(__rbit64(v219)) + v217;
          v208 = v218;
          goto LABEL_198;
        }
      }

      v225 = v357;
      *(v357 + 16) = v207;

      v227 = v367;
      v228 = sub_1AFCA4AAC(v226, v205);
      v367 = v227;

      *(v225 + 8) = v228;

      v229 = off_1F253BF58;

      v230 = sub_1AF64B03C(&type metadata for CodeGenerationComponent, v229);
      if (v231)
      {

        goto LABEL_150;
      }

      v232 = v230;

      v233 = *(v232 + 8 * v362);
      if (v233)
      {
        break;
      }
    }

LABEL_150:

LABEL_151:
    v28 = v362;
LABEL_152:
    if (++v28 == v354)
    {
      goto LABEL_148;
    }
  }

  v234 = 1 << *(v205 + 32);
  if (v234 < 64)
  {
    v235 = ~(-1 << v234);
  }

  else
  {
    v235 = -1;
  }

  v360 = (v235 & *(v205 + 64));
  v350 = (v234 + 63) >> 6;

  v236 = 0;
  v347 = v205;
  v348 = v233;
  while (1)
  {
    v237 = v360;
    if (v360)
    {
      goto LABEL_212;
    }

    do
    {
      v238 = (v236 + 1);
      if (v236 + 1 >= v350)
      {

        goto LABEL_151;
      }

      v237 = *(v205 + 8 * v236 + 72);
      v236 = (v236 + 1);
    }

    while (!v237);
    v236 = v238;
LABEL_212:
    v360 = ((v237 - 1) & v237);
    v351 = v236;
    v239 = (v236 << 10) | (16 * __clz(__rbit64(v237)));
    v240 = *(v205 + 56);
    v241 = (*(v205 + 48) + v239);
    v242 = v241[1];
    v353 = *v241;
    v243 = *(v240 + v239 + 8);
    v244 = *(v233 + 168);
    v245 = 1 << *(v244 + 32);
    if (v245 < 64)
    {
      v246 = ~(-1 << v245);
    }

    else
    {
      v246 = -1;
    }

    v247 = v246 & *(v244 + 64);
    v248 = (v245 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v364 = v242;

    v352 = v243;

    v249 = 0;
    v363.n128_u64[0] = v248;
LABEL_218:
    if (v247)
    {
      goto LABEL_222;
    }

LABEL_219:
    v250 = v249 + 1;
    if (v249 + 1 >= v248)
    {

      v205 = v347;
      v233 = v348;
      v236 = v351;
      continue;
    }

    v247 = *(v244 + 8 * v249++ + 72);
    if (!v247)
    {
      goto LABEL_219;
    }

    v249 = v250;
LABEL_222:
    v251 = __clz(__rbit64(v247)) | (v249 << 6);
    v252 = *(*(v244 + 48) + 16 * v251 + 8);
    v253 = *(*(v244 + 56) + 8 * v251);
    v254 = *(v253 + 80);
    if (!v254[2])
    {

      goto LABEL_217;
    }

    v255 = v254[4];
    v256 = v254[5];

    v365 = v325;
    *&v390 = v255;
    *(&v390 + 1) = v256;
    MEMORY[0x1EEE9AC00](v257);
    *&v325[-16] = &v390;
    v366.n128_u64[0] = v252;

    v258 = v367;
    v259 = v253;
    v260 = sub_1AF7B9518(sub_1AF771190, &v325[-32], v254);
    v367 = v258;

    if ((v260 & 1) == 0)
    {

      v248 = v363.n128_u64[0];
      goto LABEL_217;
    }

    v261 = *(v259 + 80);
    v262 = *(v261 + 16);
    v263 = v259;
    v264 = 0;
    if (v262)
    {
      v265 = (v261 + 40);
      while (1)
      {
        v266 = *(v265 - 1) == v255 && *v265 == v256;
        if (v266 || (sub_1AFDFEE28() & 1) != 0)
        {
          break;
        }

        ++v264;
        v265 += 2;
        if (v262 == v264)
        {
          v264 = 0;
          break;
        }
      }
    }

    v267 = (*(v263 + 88) + 40 * v264);
    v268 = v267[4];
    v358 = v267[5];
    v359 = v268;
    v269 = v267[6];
    v356 = v267[7];
    v357 = v269;
    v355 = v267[8];
    sub_1AF687F90(v268, v358, v269, v356, v355);
    v270 = sub_1AF7AF740(v255, v256);
    v272 = v271;
    _s12ParameterOutCMa();
    v273 = swift_allocObject();
    swift_weakInit();
    v365 = v263;
    swift_weakAssign();
    v273[3] = v255;
    v273[4] = v256;
    v273[5] = v270;
    v273[6] = v272;
    v274 = v358;
    v273[7] = v359;
    v273[8] = v274;
    v275 = v356;
    v273[9] = v357;
    v273[10] = v275;
    v273[11] = v355;
    v359 = v270;
    *&v390 = v270;
    *(&v390 + 1) = v272;
    sub_1AF4486E4();

    v276 = sub_1AFDFDF28();

    if (*(v276 + 16) <= 1uLL)
    {

      v284 = v353;
      v248 = v363.n128_u64[0];
      v283 = v359;
    }

    else
    {
      v277 = swift_isUniquelyReferenced_nonNull_native();
      v248 = v363.n128_u64[0];
      if ((v277 & 1) == 0)
      {
        v276 = sub_1AFC0DBAC(v276);
      }

      --*(v276 + 16);

      *&v390 = v276;
      sub_1AFCBA88C(0, &qword_1EB63EA80, MEMORY[0x1E69E67B0], MEMORY[0x1E69E62F8]);
      sub_1AF7F5FB0();
      sub_1AF6DC518();
      v278 = sub_1AFDFD298();
      v280 = v279;

      *&v390 = v278;
      *(&v390 + 1) = v280;
      v281 = sub_1AFDFD1E8();
      v272 = v282;

      v283 = v281;
      v284 = v353;
    }

    if (v283 == v284 && v272 == v364)
    {

      goto LABEL_245;
    }

    v285 = sub_1AFDFEE28();

    if ((v285 & 1) == 0)
    {
LABEL_217:
      v247 &= v247 - 1;

      goto LABEL_218;
    }

LABEL_245:

    v389 = MEMORY[0x1E69E6370];
    LOBYTE(v388[0]) = 1;
    v286 = v365;
    v287 = *(v365 + 2);

    v205 = v347;
    if (!v287)
    {
      *(v286 + 2) = sub_1AF432414(MEMORY[0x1E69E7CC0]);
    }

    sub_1AF0D5A54(v388, &v381);
    memset(v393 + 8, 0, 32);
    *&v390 = 0xD00000000000001CLL;
    *(&v390 + 1) = v345;
    sub_1AF0D5A54(&v381, v387);
    v288 = v332;
    sub_1AFDFF318();
    sub_1AF441150(&v381, v382.n128_i64[1]);
    v289 = swift_getDynamicType();
    v290 = v333;
    sub_1AFDFF338();
    v291 = sub_1AFDFF328();
    v292 = *(v291 - 8);
    if ((*(v292 + 48))(v290, 1, v291) == 1)
    {
LABEL_248:
      sub_1AF808478(v289, v409);
      v366 = v409[1];
      v363 = v409[0];
      v293 = v410;
      (*v334)(v288, v335);
      goto LABEL_262;
    }

    v295 = v290;
    v296 = v329;
    sub_1AFCBA80C(v295, v329, &qword_1EB63D800, MEMORY[0x1E69E75C8]);
    v297 = (*(v292 + 88))(v296, v291);
    if (v297 == v330)
    {
      if (v289 == &type metadata for Entity)
      {
        v293 = 0;
        v366 = 0u;
        v363 = v327;
      }

      else
      {
        sub_1AF808478(v289, v407);
        v366 = v407[1];
        v363 = v407[0];
        v293 = v408;
      }

      v290 = v333;
      v233 = v348;
      *&v294 = (*v334)(v332, v335);
    }

    else
    {
      v288 = v332;
      if (v297 == v328)
      {
        (*v334)(v332, v335);
        v293 = 0;
        v366 = 0u;
        v294 = v327;
      }

      else
      {
        if (v297 != v326)
        {
          (*(v292 + 8))(v329, v291);
          v290 = v333;
          goto LABEL_248;
        }

        (*v334)(v332, v335);
        sub_1AF441150(&v381, v382.n128_i64[1]);
        v298 = swift_getDynamicType();
        v299 = swift_conformsToProtocol2();
        v293 = 0;
        if (v298)
        {
          v300 = v299 == 0;
        }

        else
        {
          v300 = 1;
        }

        v301 = 41;
        if (v300)
        {
          v301 = 42;
        }

        *&v294 = 0;
        v366 = 0u;
        *(&v294 + 1) = v301;
      }

      v363 = v294;
      v290 = v333;
LABEL_262:
      v233 = v348;
    }

    sub_1AFCBA018(v290, &qword_1EB63D800, MEMORY[0x1E69E75C8], *&v294);
    v391 = v363;
    v392 = v366;
    *&v393[0] = v293;
    sub_1AFCB9F58(v393 + 8, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1AFCBA88C);
    sub_1AF449D40(&v381, (v393 + 8));
    v383 = v392;
    v384 = v393[0];
    v385 = v393[1];
    v386 = *&v393[2];
    v381 = v390;
    v382 = v391;
    v302 = v365;
    v303 = swift_isUniquelyReferenced_nonNull_native();
    v387[0] = *(v302 + 2);
    v304 = v387[0];
    *(v302 + 2) = 0x8000000000000000;
    v305 = v345;
    v306 = sub_1AF419914(0xD00000000000001CLL, v345);
    v308 = v307;
    v309 = *(v304 + 16) + ((v307 & 1) == 0);
    if (*(v304 + 24) < v309)
    {
      break;
    }

    if ((v303 & 1) == 0)
    {
      v320 = v306;
      sub_1AF844804();
      v306 = v320;
    }

LABEL_270:
    v311 = v345;
    v312 = v365;
    v313 = v387[0];
    if (v308)
    {
      sub_1AF770FA0(&v381, *(v387[0] + 56) + 88 * v306);
    }

    else
    {
      *(v387[0] + 8 * (v306 >> 6) + 64) |= 1 << v306;
      v314 = (v313[6] + 16 * v306);
      *v314 = 0xD00000000000001CLL;
      v314[1] = v311;
      v315 = v313[7] + 88 * v306;
      v316 = v382;
      *v315 = v381;
      *(v315 + 16) = v316;
      v317 = v383;
      v318 = v384;
      v319 = v385;
      *(v315 + 80) = v386;
      *(v315 + 48) = v318;
      *(v315 + 64) = v319;
      *(v315 + 32) = v317;

      ++v313[2];
    }

    *(v312 + 2) = v313;

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v388);
    v236 = v351;
  }

  sub_1AF82C8F0(v309, v303);
  v167 = v387[0];
  v306 = sub_1AF419914(0xD00000000000001CLL, v305);
  if ((v308 & 1) == (v310 & 1))
  {
    goto LABEL_270;
  }

LABEL_289:
  sub_1AFDFF1A8();
  __break(1u);
LABEL_290:

  result = MEMORY[0x1B271DEA0](v167, -1, -1);
  __break(1u);
  return result;
}