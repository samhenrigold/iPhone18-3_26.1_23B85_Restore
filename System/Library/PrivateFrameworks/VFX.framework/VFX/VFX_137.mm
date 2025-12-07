uint64_t sub_1AFB89A04()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v9 = qword_1ED73B840;
  v10 = 0;
  v11 = 2;
  v12 = 0;
  v13 = 2;
  v14 = 0;
  sub_1AFCC39D0(1, 2, v5);
  v1 = v5[1];
  *(v0 + 16) = v5[0];
  *(v0 + 32) = v1;
  *(v0 + 48) = v6;
  sub_1AFB91B24(0, &qword_1ED7269A0, sub_1AF5C5300, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = &type metadata for OldEvent;
  *(inited + 40) = &off_1F25344E8;
  sub_1AF5F58E4(inited, 1, v7);
  swift_setDeallocating();
  v3 = v7[1];
  *(v0 + 56) = v7[0];
  *(v0 + 72) = v3;
  *(v0 + 88) = v8;
  return v0;
}

uint64_t sub_1AFB89B40(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = v3;
  v5 = 0;
  v6 = *(v3 + 16);
  v7 = *(v3 + 32);
  v8 = MEMORY[0x1E69E7CC0];
  v137 = MEMORY[0x1E69E7CC0];
  v172[0] = v6;
  v172[1] = v7;
  v173 = *(v3 + 48);
  sub_1AF6B06C0(a1, v172, 0x200000000, v138);
  v101 = *v138;
  if (!*v138)
  {
LABEL_12:
    v23 = *(v8 + 16);
    if (!v23)
    {
    }

    goto LABEL_13;
  }

  v9 = *&v138[40];
  v10 = *(&v139 + 1);
  v11 = *(&v140 + 1);
  v146 = *&v138[8];
  v147 = *&v138[24];
  v97 = v141;
  v99 = v140;
  if (v141 <= 0 || !*(&v139 + 1))
  {
    sub_1AFB91B88(v138, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB936C8);
    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_12;
  }

  v94 = v4;
  v12 = *(*(&v140 + 1) + 32);
  v13 = *(v140 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v133 = *&v138[32];
  v134 = v139;
  v135 = v140;
  v136 = v141;
  v131 = *v138;
  v132 = *&v138[16];
  sub_1AF5DD298(&v131, v167);
  v14 = (v9 + 24);
  v96 = v13;
  do
  {
    v15 = *(v14 - 5);
    v16 = *(v14 - 4);
    v111 = *(v14 - 1);
    v107 = *v14;
    v17 = v14[2];
    v103 = *(v14 - 6);
    v105 = v14[1];
    v116 = v10;
    if (v13)
    {
      v18 = *(v17 + 376);

      os_unfair_lock_lock(v18);
      os_unfair_lock_lock(*(v17 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v12);
    v19 = *(v11 + 64);
    v165[0] = *(v11 + 48);
    v165[1] = v19;
    v166 = *(v11 + 80);
    v20 = *(v11 + 32);
    v21 = v12;
    v22 = *(*(*(*(v17 + 40) + 16) + 32) + 16) + 1;

    *(v11 + 48) = ecs_stack_allocator_allocate(v20, 48 * v22, 8);
    *(v11 + 56) = v22;
    *(v11 + 72) = 0;
    *(v11 + 80) = 0;
    *(v11 + 64) = 0;

    LOBYTE(v125) = 1;
    v167[0] = v99;
    v167[1] = v17;
    v167[2] = v11;
    v167[3] = v16;
    v167[4] = (v15 - v103 + v16);
    v167[5] = v97;
    v167[6] = v103;
    v167[7] = v15;
    v167[8] = 0;
    v167[9] = 0;
    v168 = 1;
    v169 = v111;
    v170 = v107;
    v171 = v105;
    sub_1AFD10528(v167, &v137);
    v148 = v101;
    v149 = v146;
    v150 = v147;
    sub_1AF630994(v11, &v148, v165);
    sub_1AF62D29C(v17);
    ecs_stack_allocator_pop_snapshot(v21);
    v12 = v21;
    v13 = v96;
    if (v96)
    {
      os_unfair_lock_unlock(*(v17 + 344));
      os_unfair_lock_unlock(*(v17 + 376));
    }

    v14 += 6;
    v10 = v116 - 1;
  }

  while (v116 != 1);
  v90 = MEMORY[0x1E69E6720];
  sub_1AFB91B88(v138, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB936C8);
  sub_1AFB91B88(v138, &qword_1ED725EA0, &type metadata for QueryResult, v90, sub_1AFB936C8);
  v8 = v137;
  v4 = v94;
  v23 = *(v137 + 16);
  if (v23)
  {
LABEL_13:
    v24 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 48);
    v133 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 32);
    v134 = v24;
    v25 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 80);
    v135 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 64);
    v136 = v25;
    v27 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 16);
    v131 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_clock);
    v26 = *&v131;
    v132 = v27;
    v95 = a1 + OBJC_IVAR____TtC3VFX13EntityManager_clock;
    *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 64) = 1040187392;
    v93 = thread_worker_index;
    v28 = thread_worker_index(v26);
    if (*v28 == -1)
    {
      v30 = *(v29 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
    }

    else
    {
      v30 = *(v29 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 8 * *v28 + 8;
    }

    v31 = *(*v30 + 40);
    v104 = OBJC_IVAR____TtC3VFX13EntityManager_scheduler;
    v32 = *(v4 + 56);
    v33 = *(v4 + 72);
    v152 = *(v4 + 88);
    v151[0] = v32;
    v151[1] = v33;
    v34 = v8;
    v35 = *(v31 + 16);

    v37 = -v23;
    v106 = v23;
    v108 = (v34 + 40);
    v38 = 0.0;
    v92 = v36;
    while (1)
    {
      v98 = *(v36 + 32);
      v100 = v35;
      v39 = *(a1 + v104);
      v40 = *(v39 + 24);

      if (v40)
      {
        v41 = *(v39 + 56);

        os_unfair_lock_lock(v41);
        v42 = *(v39 + 96);
        v43 = *(v42 + 16);
        if (v43)
        {
          v44 = (v42 + 32);
          v45 = type metadata accessor for EventDisposeSystem();
          while (*v44 != v45)
          {
            v44 += 6;
            if (!--v43)
            {
              goto LABEL_24;
            }
          }

          v46 = v44[1];
          v118[0] = *v44;
          v118[1] = v46;
          v47 = v44[2];
          v48 = v44[3];
          v49 = v44[5];
          v118[4] = v44[4];
          v118[5] = v49;
          v118[2] = v47;
          v118[3] = v48;
          v119 = *v44;
          v120 = v44[1];
          v50 = v44[2];
          v51 = v44[3];
          v52 = v44[5];
          v123 = v44[4];
          v124 = v52;
          v121 = v50;
          v122 = v51;
          sub_1AF6D8FC4(v118, v117);
          v127 = v121;
          v128 = v122;
          v129 = v123;
          v130 = v124;
          v125 = v119;
          v126 = v120;
        }

        else
        {
LABEL_24:
          v129 = 0u;
          v130 = 0u;
          v127 = 0u;
          v128 = 0u;
          v125 = 0u;
          v126 = 0u;
        }

        os_unfair_lock_unlock(v41);
        v53 = v130;
        if (v130)
        {
          v54 = v127;
          v112 = *(v39 + 64);
          v55 = *(v39 + 80);
          v56 = *(v39 + 88);
          v57 = *(v39 + 89);
          *(v39 + 64) = v125;
          *(v39 + 72) = v126;
          *(v39 + 88) = v54;
          *(v39 + 89) = 0;
          v58 = (v93)(&thread_worker_index);
          if (*v58 == -1)
          {
            v59 = *(v40 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
          }

          else
          {
            v59 = *(v40 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 8 * *v58 + 8;
          }

          v60 = *(*v59 + 32);
          ecs_stack_allocator_push_snapshot(v60);
          v53(a1, a2, a3);
          ecs_stack_allocator_pop_snapshot(v60);

          sub_1AFB91B88(&v125, &unk_1ED7220A0, &type metadata for Scheduler.Job, MEMORY[0x1E69E6720], sub_1AFB936C8);
          *(v39 + 64) = v112;
          *(v39 + 80) = v55;
          *(v39 + 88) = v56;
          *(v39 + 89) = v57;
        }

        else
        {
        }
      }

      v61 = 0;
      v62 = 0;
      do
      {
        v63 = &v108[3 * v62++];
        while (v38 >= *v63)
        {
          ++v62;
          v63 += 3;
          if (v37 + v62 == 1)
          {
            goto LABEL_54;
          }
        }

        v102 = v5;
        v64 = *(v63 - 2);
        v113 = *(v63 - 1);
        v65 = *(a1 + v104);
        v66 = v65[3];

        if (v66)
        {
          v67 = *(*(*(v66 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 8 * *(v93)(&thread_worker_index) + 8) + 32);
          v69 = v65[14];
          v68 = v65[15];

          if (v68 >= 1)
          {
            v70 = v68 + 1;
            v71 = 96 * v68 - 64;
            do
            {
              v73 = *(v69 + v71 + 64);
              v74 = *(v69 + v71 + 80);
              v75 = *(v69 + v71 + 32);
              v128 = *(v69 + v71 + 48);
              v76 = *(v69 + v71 + 16);
              v125 = *(v69 + v71);
              v126 = v76;
              v129 = v73;
              v130 = v74;
              v127 = v75;
              if (*(&v128 + 1) >= 600)
              {
                break;
              }

              if (*(&v125 + 1) != __PAIR64__(v113, v64))
              {
                if (!*(&v127 + 1))
                {
                  continue;
                }

                ObjCClassFromObject = swift_getObjCClassFromObject();
                if (ObjCClassFromObject != type metadata accessor for ParticleSubSpawnAddStateSystem() && ObjCClassFromObject != type metadata accessor for ParticleSubSpawnSystem() && ObjCClassFromObject != type metadata accessor for EventDisposeSystem() && ObjCClassFromObject != type metadata accessor for TransientPushSystem() && ObjCClassFromObject != type metadata accessor for RendererPostUpdateSystem())
                {
                  continue;
                }
              }

              v72 = v130;
              sub_1AF6D8FC4(&v125, &v119);
              ecs_stack_allocator_push_snapshot(v67);
              v72(a1, a2, a3);
              ecs_stack_allocator_pop_snapshot(v67);
              sub_1AF6D8FFC(&v125);
              --v70;
              v71 -= 96;
            }

            while (v70 > 1);
          }
        }

        v61 = 1;
        v5 = v102;
      }

      while (v106 != v62);
LABEL_54:
      v114 = v61;
      v79 = v106;
      v78 = v108;
      do
      {
        if (v38 < *v78)
        {
          v84 = *(v78 - 2);
          v83 = *(v78 - 1);
          if (qword_1ED72D720 != -1)
          {
            swift_once();
          }

          v159 = qword_1ED73B840;
          v160 = 0;
          v161 = 2;
          v162 = 0;
          v163 = 2;
          v164 = 0;
          sub_1AFB91B24(0, &qword_1ED7269A0, sub_1AF5C5300, MEMORY[0x1E69E6F90]);
          v80 = swift_allocObject();
          *(v80 + 16) = xmmword_1AFE431C0;
          *(v80 + 32) = &type metadata for Particle;
          *(v80 + 40) = &off_1F252D7A8;
          sub_1AF5F58E4(v80, 1, v142);
          swift_setDeallocating();
          swift_deallocClassInstance();
          sub_1AFB9246C(0, &qword_1ED726A10, &qword_1ED72C1D0, &protocol descriptor for ClassComponent, MEMORY[0x1E69E6F90]);
          v81 = swift_allocObject();
          *(v81 + 16) = xmmword_1AFE431C0;
          *(v81 + 56) = &type metadata for EmitterReference;
          *(v81 + 64) = &off_1F2563D20;
          *(v81 + 32) = v84;
          v82 = (v81 + 32);
          *(v81 + 36) = v83;
          sub_1AF5FC13C(v81, v143, xmmword_1AFE431C0);
          sub_1AF692DB0(v142);
          swift_setDeallocating();
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v82);
          swift_deallocClassInstance();
          v153 = v143[0];
          v154 = 0;
          v155 = 2;
          v156 = v143[2];
          v157 = v144;
          v158 = v145;
          sub_1AF6234A4(&v153);
          sub_1AF692DB0(v143);
          sub_1AF680CE8(v84 | (v83 << 32), a1);
        }

        v78 += 3;
        --v79;
      }

      while (v79);
      sub_1AF6234A4(v151);
      ++*(v95 + 8);
      v85 = *(v95 + 64);
      v36 = v92;
      v35 = *(v92 + 16);
      if (v100)
      {
        v86 = v114;
        if (!v35 || v100 != v35)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v86 = v114;
        if (v35)
        {
          goto LABEL_18;
        }
      }

      *(v92 + 32) = v98;
LABEL_18:
      v38 = v38 + v85;
      if ((v86 & 1) == 0)
      {

        v87 = v134;
        *(v95 + 32) = v133;
        *(v95 + 48) = v87;
        v88 = v136;
        *(v95 + 64) = v135;
        *(v95 + 80) = v88;
        v89 = v132;
        *v95 = v131;
        *(v95 + 16) = v89;
      }
    }
  }
}

void sub_1AFB8A650(uint64_t a1)
{
  *(a1 + 112) = 0;
  if (*(a1 + 120) == 1)
  {
    v1 = *(a1 + 136);
    v2 = *(v1 + 2);
    if (v2)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = sub_1AFC0DB84(v1);
      }

      bzero(v1 + 32, 4 * v2);
      *(a1 + 136) = v1;
    }
  }
}

uint64_t sub_1AFB8A724(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, void (*a5)(void))
{
  a3(a1, a2);
  v6 = swift_allocObject();
  a5();
  return v6;
}

uint64_t sub_1AFB8A780(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  swift_getObjectType();
  v5 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v3);

  sub_1AF6B1B20(a1, v5, v3);
  os_unfair_lock_unlock(*(v4 + 40));
  swift_getObjectType();
  return sub_1AF6D6B58();
}

void sub_1AFB8A854(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  swift_getObjectType();
  v5 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v3);

  sub_1AF6B1B20(a1, v5, v3);
  os_unfair_lock_unlock(*(v4 + 40));
  v6 = *(v1 + 56);
  swift_getObjectType();
  v7 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v6);

  sub_1AF6B1B20(a1, v7, v6);
  v8 = *(v4 + 40);

  os_unfair_lock_unlock(v8);
}

double destroy for EmitterRuntime(void *a1)
{
  swift_weakDestroy();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return result;
}

uint64_t initializeWithCopy for EmitterRuntime(uint64_t a1, uint64_t a2)
{
  v4 = swift_weakCopyInit();
  *(v4 + 8) = *(a2 + 8);
  *(v4 + 24) = *(a2 + 24);
  *(v4 + 40) = *(a2 + 40);
  *(v4 + 48) = *(a2 + 48);
  *(v4 + 49) = *(a2 + 49);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  v19 = *(a2 + 136);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = v19;
  v5 = *(a2 + 152);
  v18 = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 144) = v18;
  *(a1 + 152) = v5;
  *(a1 + 161) = *(a2 + 161);
  *(a1 + 162) = *(a2 + 162);
  v6 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v6;
  *(a1 + 217) = *(a2 + 217);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 292) = *(a2 + 292);
  *(a1 + 296) = *(a2 + 296);
  v7 = *(a2 + 304);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 304) = v7;
  v17 = *(a2 + 328);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 328) = v17;
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 352) = *(a2 + 352);
  v8 = *(a2 + 376);
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 376) = v8;
  *(a1 + 384) = *(a2 + 384);
  v9 = *(a2 + 408);
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 408) = v9;
  v10 = *(a2 + 424);
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 424) = v10;
  v11 = *(a2 + 448);
  *(a1 + 432) = *(a2 + 432);
  *(a1 + 448) = v11;
  v12 = *(a2 + 472);
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 472) = v12;
  v13 = *(a2 + 488);
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 488) = v13;
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 512) = *(a2 + 512);
  *(a1 + 520) = *(a2 + 520);
  v14 = *(a2 + 544);
  *(a1 + 528) = *(a2 + 528);
  *(a1 + 544) = v14;
  *(a1 + 560) = *(a2 + 560);
  *(a1 + 568) = *(a2 + 568);
  *(a1 + 576) = *(a2 + 576);
  *(a1 + 580) = *(a2 + 580);
  v15 = *(a2 + 608);
  *(a1 + 592) = *(a2 + 592);
  *(a1 + 608) = v15;
  *(a1 + 624) = *(a2 + 624);
  *(a1 + 632) = *(a2 + 632);
  *(a1 + 640) = *(a2 + 640);
  *(a1 + 648) = *(a2 + 648);
  *(a1 + 656) = *(a2 + 656);
  *(a1 + 664) = *(a2 + 664);
  *(a1 + 672) = *(a2 + 672);
  *(a1 + 680) = *(a2 + 680);
  *(a1 + 688) = *(a2 + 688);
  *(a1 + 696) = *(a2 + 696);
  *(a1 + 704) = *(a2 + 704);
  *(a1 + 712) = *(a2 + 712);
  *(a1 + 720) = *(a2 + 720);
  *(a1 + 728) = *(a2 + 728);
  *(a1 + 736) = *(a2 + 736);
  *(a1 + 744) = *(a2 + 744);
  *(a1 + 752) = *(a2 + 752);
  *(a1 + 760) = *(a2 + 760);
  *(a1 + 768) = *(a2 + 768);
  *(a1 + 776) = *(a2 + 776);
  *(a1 + 784) = *(a2 + 784);
  *(a1 + 792) = *(a2 + 792);
  *(a1 + 800) = *(a2 + 800);
  *(a1 + 808) = *(a2 + 808);
  *(a1 + 816) = *(a2 + 816);
  *(a1 + 824) = *(a2 + 824);
  *(a1 + 832) = *(a2 + 832);

  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return a1;
}

uint64_t assignWithCopy for EmitterRuntime(uint64_t a1, uint64_t a2)
{
  v4 = swift_weakCopyAssign();
  *(v4 + 8) = *(a2 + 8);
  *(v4 + 16) = *(a2 + 16);
  *(v4 + 24) = *(a2 + 24);
  *(v4 + 32) = *(a2 + 32);
  v5 = *(a2 + 40);
  *(v4 + 48) = *(a2 + 48);
  *(v4 + 40) = v5;
  *(v4 + 49) = *(a2 + 49);
  *(v4 + 50) = *(a2 + 50);
  *(a1 + 56) = *(a2 + 56);

  v6 = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 64) = v6;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);

  *(a1 + 136) = *(a2 + 136);

  *(a1 + 144) = *(a2 + 144);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v7 = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 152) = v7;
  *(a1 + 161) = *(a2 + 161);
  *(a1 + 162) = *(a2 + 162);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  v8 = *(a2 + 208);
  *(a1 + 217) = *(a2 + 217);
  *(a1 + 208) = v8;
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 256) = *(a2 + 256);

  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 292) = *(a2 + 292);
  *(a1 + 296) = *(a2 + 296);
  v9 = *(a2 + 304);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 304) = v9;
  *(a1 + 320) = *(a2 + 320);

  *(a1 + 328) = *(a2 + 328);

  *(a1 + 336) = *(a2 + 336);
  *(a1 + 344) = *(a2 + 344);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 376) = *(a2 + 376);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 392) = *(a2 + 392);
  *(a1 + 400) = *(a2 + 400);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 408) = *(a2 + 408);
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 424) = *(a2 + 424);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 432) = *(a2 + 432);
  *(a1 + 440) = *(a2 + 440);
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 456) = *(a2 + 456);
  *(a1 + 464) = *(a2 + 464);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 472) = *(a2 + 472);
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 488) = *(a2 + 488);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 504) = *(a2 + 504);
  *(a1 + 512) = *(a2 + 512);
  *(a1 + 520) = *(a2 + 520);
  *(a1 + 528) = *(a2 + 528);
  *(a1 + 536) = *(a2 + 536);
  *(a1 + 544) = *(a2 + 544);
  *(a1 + 552) = *(a2 + 552);
  *(a1 + 560) = *(a2 + 560);

  *(a1 + 568) = *(a2 + 568);

  *(a1 + 576) = *(a2 + 576);
  *(a1 + 580) = *(a2 + 580);
  *(a1 + 592) = *(a2 + 592);
  *(a1 + 608) = *(a2 + 608);
  *(a1 + 624) = *(a2 + 624);

  *(a1 + 632) = *(a2 + 632);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 640) = *(a2 + 640);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 648) = *(a2 + 648);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 656) = *(a2 + 656);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 664) = *(a2 + 664);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 672) = *(a2 + 672);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 680) = *(a2 + 680);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 688) = *(a2 + 688);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 696) = *(a2 + 696);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 704) = *(a2 + 704);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 712) = *(a2 + 712);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 720) = *(a2 + 720);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 728) = *(a2 + 728);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 736) = *(a2 + 736);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 744) = *(a2 + 744);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 752) = *(a2 + 752);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 760) = *(a2 + 760);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 768) = *(a2 + 768);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 776) = *(a2 + 776);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 784) = *(a2 + 784);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 792) = *(a2 + 792);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 800) = *(a2 + 800);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 808) = *(a2 + 808);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 816) = *(a2 + 816);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 824) = *(a2 + 824);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 832) = *(a2 + 832);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return a1;
}

__n128 initializeWithTake for EmitterRuntime(uint64_t a1, uint64_t a2)
{
  v3 = swift_weakTakeInit();
  *(v3 + 8) = *(a2 + 8);
  *(v3 + 24) = *(a2 + 24);
  *(v3 + 40) = *(a2 + 40);
  *(v3 + 48) = *(a2 + 48);
  *(v3 + 49) = *(a2 + 49);
  *(v3 + 56) = *(a2 + 56);
  *(v3 + 72) = *(a2 + 72);
  *(v3 + 88) = *(a2 + 88);
  *(v3 + 96) = *(a2 + 96);
  *(v3 + 104) = *(a2 + 104);
  *(v3 + 120) = *(a2 + 120);
  *(v3 + 128) = *(a2 + 128);
  *(v3 + 136) = *(a2 + 136);
  *(v3 + 152) = *(a2 + 152);
  *(v3 + 160) = *(a2 + 160);
  *(v3 + 161) = *(a2 + 161);
  v4 = *(a2 + 192);
  *(v3 + 176) = *(a2 + 176);
  *(v3 + 192) = v4;
  *(v3 + 217) = *(a2 + 217);
  *(v3 + 208) = *(a2 + 208);
  *(v3 + 240) = *(a2 + 240);
  *(v3 + 256) = *(a2 + 256);
  *(v3 + 264) = *(a2 + 264);
  *(v3 + 272) = *(a2 + 272);
  *(v3 + 288) = *(a2 + 288);
  *(v3 + 292) = *(a2 + 292);
  *(v3 + 296) = *(a2 + 296);
  v5 = *(a2 + 304);
  *(v3 + 312) = *(a2 + 312);
  *(v3 + 304) = v5;
  *(v3 + 320) = *(a2 + 320);
  *(v3 + 336) = *(a2 + 336);
  *(v3 + 344) = *(a2 + 344);
  v6 = *(a2 + 368);
  *(v3 + 360) = *(a2 + 360);
  *(v3 + 368) = v6;
  v7 = *(a2 + 376);
  *(v3 + 392) = *(a2 + 392);
  *(v3 + 376) = v7;
  v8 = *(a2 + 400);
  *(v3 + 416) = *(a2 + 416);
  *(v3 + 400) = v8;
  v9 = *(a2 + 424);
  *(v3 + 440) = *(a2 + 440);
  *(v3 + 424) = v9;
  v10 = *(a2 + 448);
  v11 = *(a2 + 464);
  *(v3 + 480) = *(a2 + 480);
  *(v3 + 448) = v10;
  *(v3 + 464) = v11;
  *(v3 + 488) = *(a2 + 488);
  v12 = *(a2 + 512);
  *(v3 + 504) = *(a2 + 504);
  *(v3 + 512) = v12;
  *(v3 + 520) = *(a2 + 520);
  v13 = *(a2 + 544);
  *(v3 + 528) = *(a2 + 528);
  *(v3 + 544) = v13;
  *(v3 + 560) = *(a2 + 560);
  *(v3 + 568) = *(a2 + 568);
  *(v3 + 576) = *(a2 + 576);
  *(v3 + 580) = *(a2 + 580);
  v14 = *(a2 + 608);
  *(v3 + 592) = *(a2 + 592);
  *(v3 + 608) = v14;
  v15 = *(a2 + 640);
  *(v3 + 624) = *(a2 + 624);
  *(v3 + 640) = v15;
  v16 = *(a2 + 672);
  *(v3 + 656) = *(a2 + 656);
  *(v3 + 672) = v16;
  v17 = *(a2 + 704);
  *(v3 + 688) = *(a2 + 688);
  *(v3 + 704) = v17;
  v18 = *(a2 + 736);
  *(v3 + 720) = *(a2 + 720);
  *(v3 + 736) = v18;
  v19 = *(a2 + 768);
  *(v3 + 752) = *(a2 + 752);
  *(v3 + 768) = v19;
  v20 = *(a2 + 800);
  *(v3 + 784) = *(a2 + 784);
  *(v3 + 800) = v20;
  result = *(a2 + 816);
  *(v3 + 816) = result;
  *(v3 + 832) = *(a2 + 832);
  return result;
}

uint64_t assignWithTake for EmitterRuntime(uint64_t a1, uint64_t a2)
{
  v4 = swift_weakTakeAssign();
  *(v4 + 8) = *(a2 + 8);
  *(v4 + 24) = *(a2 + 24);
  *(v4 + 40) = *(a2 + 40);
  *(v4 + 48) = *(a2 + 48);
  *(v4 + 49) = *(a2 + 49);
  *(v4 + 50) = *(a2 + 50);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);

  *(a1 + 136) = *(a2 + 136);

  *(a1 + 144) = *(a2 + 144);
  swift_unknownObjectRelease();
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 161) = *(a2 + 161);
  *(a1 + 162) = *(a2 + 162);
  v5 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v5;
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 217) = *(a2 + 217);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 256) = *(a2 + 256);

  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 292) = *(a2 + 292);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 320) = *(a2 + 320);

  *(a1 + 328) = *(a2 + 328);

  *(a1 + 336) = *(a2 + 336);
  *(a1 + 344) = *(a2 + 344);
  swift_unknownObjectRelease();
  *(a1 + 352) = *(a2 + 352);
  v6 = *(a2 + 376);
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 376) = v6;
  swift_unknownObjectRelease();
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 400) = *(a2 + 400);
  swift_unknownObjectRelease();
  *(a1 + 408) = *(a2 + 408);
  *(a1 + 424) = *(a2 + 424);
  swift_unknownObjectRelease();
  v7 = *(a2 + 448);
  *(a1 + 432) = *(a2 + 432);
  *(a1 + 448) = v7;
  *(a1 + 464) = *(a2 + 464);
  swift_unknownObjectRelease();
  *(a1 + 472) = *(a2 + 472);
  *(a1 + 488) = *(a2 + 488);
  swift_unknownObjectRelease();
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 512) = *(a2 + 512);
  *(a1 + 520) = *(a2 + 520);
  v8 = *(a2 + 544);
  *(a1 + 528) = *(a2 + 528);
  *(a1 + 544) = v8;
  *(a1 + 560) = *(a2 + 560);

  *(a1 + 568) = *(a2 + 568);

  *(a1 + 576) = *(a2 + 576);
  *(a1 + 580) = *(a2 + 580);
  v9 = *(a2 + 608);
  *(a1 + 592) = *(a2 + 592);
  *(a1 + 608) = v9;
  *(a1 + 624) = *(a2 + 624);

  *(a1 + 632) = *(a2 + 632);
  swift_unknownObjectRelease();
  *(a1 + 640) = *(a2 + 640);
  swift_unknownObjectRelease();
  *(a1 + 648) = *(a2 + 648);
  swift_unknownObjectRelease();
  *(a1 + 656) = *(a2 + 656);
  swift_unknownObjectRelease();
  *(a1 + 664) = *(a2 + 664);
  swift_unknownObjectRelease();
  *(a1 + 672) = *(a2 + 672);
  swift_unknownObjectRelease();
  *(a1 + 680) = *(a2 + 680);
  swift_unknownObjectRelease();
  *(a1 + 688) = *(a2 + 688);
  swift_unknownObjectRelease();
  *(a1 + 696) = *(a2 + 696);
  swift_unknownObjectRelease();
  *(a1 + 704) = *(a2 + 704);
  swift_unknownObjectRelease();
  *(a1 + 712) = *(a2 + 712);
  swift_unknownObjectRelease();
  *(a1 + 720) = *(a2 + 720);
  swift_unknownObjectRelease();
  *(a1 + 728) = *(a2 + 728);
  swift_unknownObjectRelease();
  *(a1 + 736) = *(a2 + 736);
  swift_unknownObjectRelease();
  *(a1 + 744) = *(a2 + 744);
  swift_unknownObjectRelease();
  *(a1 + 752) = *(a2 + 752);
  swift_unknownObjectRelease();
  *(a1 + 760) = *(a2 + 760);
  swift_unknownObjectRelease();
  *(a1 + 768) = *(a2 + 768);
  swift_unknownObjectRelease();
  *(a1 + 776) = *(a2 + 776);
  swift_unknownObjectRelease();
  *(a1 + 784) = *(a2 + 784);
  swift_unknownObjectRelease();
  *(a1 + 792) = *(a2 + 792);
  swift_unknownObjectRelease();
  *(a1 + 800) = *(a2 + 800);
  swift_unknownObjectRelease();
  *(a1 + 808) = *(a2 + 808);
  swift_unknownObjectRelease();
  *(a1 + 816) = *(a2 + 816);
  swift_unknownObjectRelease();
  *(a1 + 824) = *(a2 + 824);
  swift_unknownObjectRelease();
  *(a1 + 832) = *(a2 + 832);
  swift_unknownObjectRelease();
  return a1;
}

uint64_t getEnumTagSinglePayload for EmitterRuntime(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 840))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for EmitterRuntime(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 824) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 840) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 840) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void destroy for EmitterDescription(void *a1)
{

  v2 = a1[6];
}

uint64_t initializeWithCopy for EmitterDescription(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = a2[3];
  *(a1 + 16) = a2[2];
  *(a1 + 24) = v4;
  *(a1 + 32) = a2[4];
  *(a1 + 40) = *(a2 + 40);
  v5 = a2[6];
  *(a1 + 48) = v5;
  *(a1 + 56) = *(a2 + 14);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 61) = *(a2 + 61);
  *(a1 + 64) = a2[8];
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 80) = a2[10];
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 90) = *(a2 + 45);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 93) = *(a2 + 93);
  *(a1 + 96) = *(a2 + 24);

  v6 = v5;
  return a1;
}

uint64_t *assignWithCopy for EmitterDescription(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  a1[3] = a2[3];

  v4 = a2[4];
  *(a1 + 40) = *(a2 + 40);
  a1[4] = v4;
  v5 = a1[6];
  v6 = a2[6];
  a1[6] = v6;
  v7 = v6;

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 59) = *(a2 + 59);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 61) = *(a2 + 61);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 74) = *(a2 + 74);
  a1[10] = a2[10];
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 93) = *(a2 + 93);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

__n128 initializeWithTake for EmitterDescription(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 24);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t assignWithTake for EmitterDescription(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v4 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 59) = *(a2 + 59);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 61) = *(a2 + 61);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 74) = *(a2 + 74);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 90) = *(a2 + 90);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 93) = *(a2 + 93);
  *(a1 + 96) = *(a2 + 96);
  return a1;
}

uint64_t getEnumTagSinglePayload for EmitterDescription(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 100))
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

uint64_t storeEnumTagSinglePayload for EmitterDescription(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 100) = 1;
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

    *(result + 100) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AFB8C1B4()
{
  type metadata accessor for ParticleEmitterTransport();
  v0 = swift_allocObject();
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v8 = qword_1ED73B840;
  v9 = 0;
  v10 = 2;
  v11 = 0;
  v12 = 2;
  v13 = 0;
  sub_1AFCC39D0(1, 2, v4);
  v1 = v4[1];
  *(v0 + 16) = v4[0];
  *(v0 + 32) = v1;
  *(v0 + 48) = v5;
  sub_1AF8D472C(1, 1, 2, v6);
  v2 = v6[1];
  *(v0 + 56) = v6[0];
  *(v0 + 72) = v2;
  *(v0 + 88) = v7;
  return v0;
}

uint64_t sub_1AFB8C2F4(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!result || a1 > *(v4 + 24) >> 1)
  {

    return a2();
  }

  return result;
}

uint64_t sub_1AFB8C384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, unint64_t a7, uint64_t a8)
{
  v13 = *(a8 + 24);

  if (!HIDWORD(a7) && a7 == -1)
  {

    goto LABEL_7;
  }

  v14 = sub_1AF3C9078(a7);
  v16 = v15;

  if (!v16)
  {
LABEL_7:
    v16 = *(v13 + OBJC_IVAR____TtC3VFX13EntityManager_counters);
    if (v16)
    {
      v19 = sub_1AFDFE238();
      LODWORD(v16) = vfx_counters.addCounter(name:scope:kind:)(v19, v20, 0, 0, v16);
    }

    else
    {
    }

    goto LABEL_12;
  }

  v22 = a5;
  v17 = *(v13 + OBJC_IVAR____TtC3VFX13EntityManager_counters);
  if (v17)
  {
    *&v34[0] = v14;
    *(&v34[0] + 1) = v16;
    MEMORY[0x1B2718AE0](47, 0xE100000000000000);
    v18 = sub_1AFDFE238();
    MEMORY[0x1B2718AE0](v18);

    LODWORD(v16) = vfx_counters.addCounter(name:scope:kind:)(v14, v16, 0, 0, v17);
  }

  else
  {

    LODWORD(v16) = 0;
  }

  a5 = v22;
LABEL_12:
  *&v27 = a1;
  *(&v27 + 1) = a7;
  *&v28 = "ParticleLifeAndDeath";
  *(&v28 + 1) = 20;
  LOBYTE(v29) = 2;
  *(&v29 + 1) = *v33;
  DWORD1(v29) = *&v33[3];
  *(&v29 + 1) = a1;
  *&v30 = &off_1F25564B8;
  *(&v30 + 1) = a4;
  *&v31 = a5;
  WORD4(v31) = 257;
  BYTE10(v31) = a6 & 1;
  HIDWORD(v31) = v16;
  *&v32 = a2;
  *(&v32 + 1) = a3;
  os_unfair_lock_lock(*(a8 + 56));
  v34[2] = v29;
  v34[3] = v30;
  v34[4] = v31;
  v34[5] = v32;
  v34[0] = v27;
  v34[1] = v28;
  sub_1AF6D8FC4(&v27, v26);
  sub_1AF64D800(0, 0, v34);
  sub_1AF64D800(0, 0, v34);
  sub_1AF6D8FFC(&v27);
  *(a8 + 160) = 257;
  os_unfair_lock_unlock(*(a8 + 56));
  return sub_1AF6D8FFC(&v27);
}

uint64_t sub_1AFB8C63C(uint64_t a1, char a2, uint64_t a3, char a4, float a5, __n128 a6, float a7, __n128 a8)
{
  if (a5 == a7 && a1 == a3)
  {
    v10 = 0;
    while (1)
    {
      v15 = a6;
      v12 = *(&v15 & 0xFFFFFFFFFFFFFFF3 | (4 * (v10 & 3)));
      v16 = a8;
      v13 = *(&v16 & 0xFFFFFFFFFFFFFFF3 | (4 * (v10 & 3)));
      v11 = v12 == v13;
      if (v10 == 2)
      {
        break;
      }

      while (1)
      {
        ++v10;
        if (v11)
        {
          break;
        }

        v11 = 0;
        v9 = 0;
        if (v10 == 2)
        {
          return v9 & 1;
        }
      }
    }

    if (v12 == v13)
    {
      v9 = a2 ^ a4 ^ 1;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

BOOL sub_1AFB8C6CC(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v7 = v2 == v3;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = v2 + 4;
    v9 = v3 + 4;
    do
    {
      v10 = vceq_s32(*v8, *v9);
      if ((v10.i32[0] & v10.i32[1] & 1) == 0)
      {
        return 0;
      }

      ++v9;
      ++v8;
    }

    while (--v4);
  }

  if ((sub_1AFB7BCF0(*(a1 + 8), *(a2 + 8)) & 1) == 0 || (sub_1AFB7BCF0(*(a1 + 16), *(a2 + 16)) & 1) == 0 || (sub_1AFB7BCF0(*(a1 + 24), *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  v11 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v11 = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  v12 = *(a1 + 48);
  v13 = *(a2 + 48);
  if (v12)
  {
    if (v12 == v13)
    {
      goto LABEL_22;
    }

    return 0;
  }

  if (v13)
  {
    return 0;
  }

LABEL_22:
  if ((*(a1 + 56) ^ *(a2 + 56)) & 1) != 0 || ((*(a1 + 57) ^ *(a2 + 57)) & 1) != 0 || ((*(a1 + 58) ^ *(a2 + 58)) & 1) != 0 || ((*(a1 + 59) ^ *(a2 + 59)) & 1) != 0 || ((*(a1 + 60) ^ *(a2 + 60)) & 1) != 0 || ((*(a1 + 61) ^ *(a2 + 61)) & 1) != 0 || *(a1 + 64) != *(a2 + 64) || *(a1 + 68) != *(a2 + 68) || ((*(a1 + 72) ^ *(a2 + 72)) & 1) != 0 || ((*(a1 + 73) ^ *(a2 + 73)) & 1) != 0 || ((*(a1 + 74) ^ *(a2 + 74)) & 1) != 0 || *(a1 + 80) != *(a2 + 80) || ((*(a1 + 88) ^ *(a2 + 88)) & 1) != 0 || *(a1 + 90) != *(a2 + 90) || *(a1 + 92) != *(a2 + 92) || ((*(a1 + 93) ^ *(a2 + 93)))
  {
    return 0;
  }

  return *(a1 + 96) == *(a2 + 96);
}

void sub_1AFB8C8D4(_OWORD *a1)
{
  *&v3 = sub_1AF5AF890(*(v1 + 24));
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
}

uint64_t sub_1AFB8C918(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    do
    {
      v5 = (a1 + 32 + 8 * v3);
      v7 = *v5;
      v6 = v5[1];
      v8 = v7 == -1 && v6 == 0;
      if (!v8 && (v7 & 0x80000000) == 0 && v4[1] > v7)
      {
        v9 = (*v4 + 12 * v7);
        if (v6 == -1 || v9[2] == v6)
        {
          v11 = *(*(*(a2 + 144) + 8 * *v9 + 32) + 48);
          v12 = (v11 + 32);
          v13 = *(v11 + 16) + 1;
          while (--v13)
          {
            v14 = *v12;
            v12 += 5;
            if (v14 == &type metadata for ParticleSetID)
            {
              return 1;
            }
          }
        }
      }

      ++v3;
    }

    while (v3 != v2);
  }

  return 0;
}

unint64_t sub_1AFB8C9D4(uint64_t a1, uint64_t a2)
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

unint64_t sub_1AFB8CA20(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFF118();

  if (v2 >= 0x18)
  {
    return 24;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1AFB8CA74(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t *a4, double a5)
{
  v9 = MEMORY[0x1E69E6720];
  sub_1AFB91B24(0, qword_1ED725258, type metadata accessor for ParticleInitScript, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v88 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v87 = &v84 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v86 = &v84 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v85 = &v84 - v17;
  sub_1AFB91B24(0, &unk_1ED724F80, type metadata accessor for ParticleUpdateScript, v9);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v92 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v91 = &v84 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v90 = (&v84 - v23);
  MEMORY[0x1EEE9AC00](v24);
  v89 = &v84 - v26;
  v27 = a2 - a1;
  v28 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v28 = a2 - a1;
  }

  v29 = v28 >> 3;
  v30 = a3 - a2;
  v31 = v30 / 8;
  if (v28 >> 3 < v30 / 8)
  {
    if (a4 != a1 || &a1[v29] <= a4)
    {
      v32 = v25;
      memmove(a4, a1, 8 * v29);
      v25 = v32;
    }

    v98 = &a4[v29];
    v33 = a4;
    if (v27 < 8)
    {
LABEL_8:
      v25 = a1;
      goto LABEL_67;
    }

    while (1)
    {
      if (v25 >= a3)
      {
        goto LABEL_8;
      }

      v36 = *v33;
      v37 = *(v33 + 1);
      v94 = v25;
      v38 = *v25;
      sub_1AF3CB570(*v25, &v95);
      if (v96)
      {
        v39 = v33;
        v40 = v95;
        v41 = v95;
        sub_1AF487074(v95, v96, v97);
        if (v41 > 6)
        {
          v42 = 1;
        }

        else
        {
          v42 = qword_1AFE9F580[v40 & 7];
        }

        v33 = v39;
      }

      else
      {
        v43 = v89;
        sub_1AF3CFB68(v38, v89);
        updated = type metadata accessor for ParticleUpdateScript(0);
        v45 = (*(*(updated - 8) + 48))(v43, 1, updated);
        sub_1AFB92FD0(v43, &unk_1ED724F80, type metadata accessor for ParticleUpdateScript);
        if (v45 == 1)
        {
          v46 = v86;
          sub_1AF3CFD30(v38, v86);
          inited = type metadata accessor for ParticleInitScript(0);
          v42 = (*(*(inited - 8) + 48))(v46, 1, inited) != 1;
          sub_1AFB92FD0(v46, qword_1ED725258, type metadata accessor for ParticleInitScript);
        }

        else
        {
          v42 = 1;
        }
      }

      v48 = v36 | (v37 << 32);
      sub_1AF3CB570(v48, &v95);
      if (v96)
      {
        v49 = v95;
        v50 = v95;
        sub_1AF487074(v95, v96, v97);
        if (v50 > 6)
        {
          v51 = 1;
        }

        else
        {
          v51 = qword_1AFE9F580[v49 & 7];
        }

        v25 = v94;
        if (v42 < v51)
        {
LABEL_31:
          v34 = v25;
          v35 = a1 == v25++;
          if (v35)
          {
            goto LABEL_12;
          }

LABEL_11:
          *a1 = *v34;
          goto LABEL_12;
        }
      }

      else
      {
        v52 = v90;
        sub_1AF3CFB68(v48, v90);
        v53 = type metadata accessor for ParticleUpdateScript(0);
        v54 = (*(*(v53 - 8) + 48))(v52, 1, v53);
        sub_1AFB92FD0(v52, &unk_1ED724F80, type metadata accessor for ParticleUpdateScript);
        if (v54 == 1 && (v55 = v85, sub_1AF3CFD30(v48, v85), v56 = type metadata accessor for ParticleInitScript(0), v57 = (*(*(v56 - 8) + 48))(v55, 1, v56), sub_1AFB92FD0(v55, qword_1ED725258, type metadata accessor for ParticleInitScript), v57 == 1))
        {
          v25 = v94;
          if (v42 < 0)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v25 = v94;
          if (v42 < 1)
          {
            goto LABEL_31;
          }
        }
      }

      v34 = v33;
      v35 = a1 == v33++;
      if (!v35)
      {
        goto LABEL_11;
      }

LABEL_12:
      ++a1;
      if (v33 >= v98)
      {
        goto LABEL_8;
      }
    }
  }

  v33 = a4;
  if (a4 != v25 || &v25[v31] <= a4)
  {
    v58 = v25;
    memmove(a4, v25, 8 * v31);
    v25 = v58;
  }

  v98 = &a4[v31];
  if (v30 >= 8 && v25 > a1)
  {
    v93 = a4;
LABEL_40:
    v90 = v25 - 1;
    --a3;
    v59 = v98;
    v94 = v25;
    while (1)
    {
      v61 = *--v59;
      v60 = v61;
      v62 = *(v25 - 2);
      v63 = *(v25 - 1);
      sub_1AF3CB570(v61, &v95);
      if (v96)
      {
        v64 = v95;
        v65 = v95;
        sub_1AF487074(v95, v96, v97);
        if (v65 > 6)
        {
          goto LABEL_47;
        }

        v66 = qword_1AFE9F580[v64 & 7];
      }

      else
      {
        v67 = v91;
        sub_1AF3CFB68(v60, v91);
        v68 = type metadata accessor for ParticleUpdateScript(0);
        v69 = (*(*(v68 - 8) + 48))(v67, 1, v68);
        sub_1AFB92FD0(v67, &unk_1ED724F80, type metadata accessor for ParticleUpdateScript);
        if (v69 != 1)
        {
LABEL_47:
          v66 = 1;
          goto LABEL_48;
        }

        v70 = v88;
        sub_1AF3CFD30(v60, v88);
        v71 = type metadata accessor for ParticleInitScript(0);
        v66 = (*(*(v71 - 8) + 48))(v70, 1, v71) != 1;
        sub_1AFB92FD0(v70, qword_1ED725258, type metadata accessor for ParticleInitScript);
      }

LABEL_48:
      v72 = v62 | (v63 << 32);
      sub_1AF3CB570(v72, &v95);
      if (v96)
      {
        v73 = v95;
        v74 = v95;
        sub_1AF487074(v95, v96, v97);
        v33 = v93;
        if (v74 > 6)
        {
          v75 = 1;
        }

        else
        {
          v75 = qword_1AFE9F580[v73 & 7];
        }

        v25 = v94;
        if (v66 < v75)
        {
LABEL_61:
          v82 = v90;
          if (a3 + 1 != v25)
          {
            *a3 = *v90;
          }

          if (v98 <= v33 || (v25 = v82, v82 <= a1))
          {
            v25 = v82;
            break;
          }

          goto LABEL_40;
        }
      }

      else
      {
        v76 = v92;
        sub_1AF3CFB68(v72, v92);
        v77 = type metadata accessor for ParticleUpdateScript(0);
        v78 = (*(*(v77 - 8) + 48))(v76, 1, v77);
        sub_1AFB92FD0(v76, &unk_1ED724F80, type metadata accessor for ParticleUpdateScript);
        v33 = v93;
        if (v78 == 1 && (v79 = v87, sub_1AF3CFD30(v72, v87), v80 = type metadata accessor for ParticleInitScript(0), v81 = (*(*(v80 - 8) + 48))(v79, 1, v80), sub_1AFB92FD0(v79, qword_1ED725258, type metadata accessor for ParticleInitScript), v81 == 1))
        {
          v25 = v94;
          if (v66 < 0)
          {
            goto LABEL_61;
          }
        }

        else
        {
          v25 = v94;
          if (v66 < 1)
          {
            goto LABEL_61;
          }
        }
      }

      if (a3 + 1 != v98)
      {
        *a3 = *v59;
      }

      --a3;
      v98 = v59;
      if (v59 <= v33)
      {
        v98 = v59;
        break;
      }
    }
  }

LABEL_67:
  if (v25 != v33 || v25 >= (v33 + ((v98 - v33 + (v98 - v33 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v25, v33, 8 * (v98 - v33));
  }

  return 1;
}

uint64_t sub_1AFB8D41C(unint64_t **a1, double a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v259 = a5;
  v258 = a1;
  v8 = MEMORY[0x1E69E6720];
  sub_1AFB91B24(0, qword_1ED725258, type metadata accessor for ParticleInitScript, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v270 = &v257 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v269 = &v257 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v262 = &v257 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v261 = &v257 - v16;
  sub_1AFB91B24(0, &unk_1ED724F80, type metadata accessor for ParticleUpdateScript, v8);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v272 = &v257 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v271 = &v257 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v264 = &v257 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v263 = &v257 - v24;
  v266 = a4;
  v25 = a4[1];
  v275 = a6;
  if (v25 >= 1)
  {
    v26 = (a6 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    swift_retain_n();
    v27 = 0;
    v28 = MEMORY[0x1E69E7CC0];
    v276 = v26;
    while (1)
    {
      v43 = v27 + 1;
      if (v27 + 1 >= v25)
      {
        v46 = v27 + 1;
        goto LABEL_120;
      }

      v44 = *v266;
      v280 = *(*v266 + 8 * v43);
      v273 = v44;
      v279[0] = *(v44 + 8 * v27);
      v45 = v268;
      LODWORD(v277) = sub_1AFB86390(&v280, v279, v279[0]);
      v268 = v45;
      if (v45)
      {
        goto LABEL_10;
      }

      v260 = v28;
      v46 = v27 + 2;
      v274 = v27;
      if (v27 + 2 >= v25)
      {
        goto LABEL_113;
      }

      while (1)
      {
        v47 = (v273 + 8 * v43);
        v278 = v46;
        v48 = (v273 + 8 * v46);
        v49 = v48[1];
        v50 = *v48;
        v51 = v47[1];
        v52 = *v47;
        v53 = v50 == -1 && v49 == 0;
        v54 = v53;
        if (!v53 && (v50 & 0x80000000) == 0 && v26[1] > v50)
        {
          v59 = (*v26 + 12 * v50);
          if (v49 == -1 || v59[2] == v49)
          {
            v61 = *(v59 + 2);
            v62 = *(*(v275 + 144) + 8 * *v59 + 32);
            v63 = *(v62 + 48);
            v64 = (v63 + 32);
            v65 = *(v63 + 16) + 1;
            while (--v65)
            {
              v66 = v64 + 5;
              v67 = *v64;
              v64 += 5;
              if (v67 == &type metadata for GraphScriptingConfig)
              {
                v68 = *(&(*(v66 - 2))[2 * v61].Kind + *(v62 + 128));
                if (v68 > 6)
                {
                  v69 = 1;
                  if (v52 != -1)
                  {
                    goto LABEL_67;
                  }
                }

                else
                {
                  v69 = qword_1AFE9F580[v68];
                  if (v52 != -1)
                  {
                    goto LABEL_67;
                  }
                }

                if (!v51)
                {
                  goto LABEL_71;
                }

                goto LABEL_67;
              }
            }
          }
        }

        updated = type metadata accessor for ParticleUpdateScript(0);
        v56 = updated;
        v57 = *(updated - 8);
        if (*(v57 + 64))
        {
          if (v54)
          {
            goto LABEL_45;
          }

          v58 = *(v57 + 72);
          if ((v50 & 0x80000000) != 0)
          {
            goto LABEL_45;
          }
        }

        else
        {
          if (v54)
          {
            goto LABEL_45;
          }

          v58 = 0;
          if ((v50 & 0x80000000) != 0)
          {
            goto LABEL_45;
          }
        }

        if (v276[1] > v50)
        {
          v70 = (*v276 + 12 * v50);
          v71 = *(v70 + 2);
          if (v49 == -1 || v70[2] == v49)
          {
            v84 = *(*(v275 + 144) + 8 * *v70 + 32);
            v85 = *(v84 + 48);
            v86 = (v85 + 32);
            v87 = *(v85 + 16) + 1;
            while (--v87)
            {
              v88 = v86 + 5;
              v89 = *v86;
              v86 += 5;
              if (v89 == updated)
              {
                v90 = v263;
                sub_1AFB93040(*(v84 + 128) + *(v88 - 2) + v58 * v71, v263, type metadata accessor for ParticleUpdateScript);
                (*(v57 + 56))(v90, 0, 1, v56);
                v91 = type metadata accessor for ParticleUpdateScript;
                v92 = v90;
                v93 = &unk_1ED724F80;
LABEL_65:
                sub_1AFB92FD0(v92, v93, v91);
                v69 = 1;
                if (v52 == -1)
                {
                  goto LABEL_55;
                }

                goto LABEL_66;
              }
            }
          }
        }

LABEL_45:
        v72 = v49;
        v73 = v52;
        v74 = v51;
        v75 = v25;
        v76 = v263;
        (*(v57 + 56))(v263, 1, 1, updated);
        sub_1AFB92FD0(v76, &unk_1ED724F80, type metadata accessor for ParticleUpdateScript);
        inited = type metadata accessor for ParticleInitScript(0);
        v78 = inited;
        v79 = *(inited - 8);
        if (*(v79 + 64))
        {
          v25 = v75;
          v51 = v74;
          v52 = v73;
          if (v54)
          {
            goto LABEL_54;
          }

          v80 = *(v79 + 72);
          if ((v50 & 0x80000000) != 0)
          {
            goto LABEL_54;
          }
        }

        else
        {
          v25 = v75;
          v51 = v74;
          v52 = v73;
          if (v54)
          {
            goto LABEL_54;
          }

          v80 = 0;
          if ((v50 & 0x80000000) != 0)
          {
            goto LABEL_54;
          }
        }

        if (v276[1] > v50)
        {
          v81 = (*v276 + 12 * v50);
          v82 = *(v81 + 2);
          if (v72 == -1 || v81[2] == v72)
          {
            v94 = *(*(v275 + 144) + 8 * *v81 + 32);
            v95 = *(v94 + 48);
            v96 = (v95 + 32);
            v97 = *(v95 + 16) + 1;
            while (--v97)
            {
              v98 = v96 + 5;
              v99 = *v96;
              v96 += 5;
              if (v99 == inited)
              {
                v100 = v262;
                sub_1AFB93040(*(v94 + 128) + *(v98 - 2) + v80 * v82, v262, type metadata accessor for ParticleInitScript);
                (*(v79 + 56))(v100, 0, 1, v78);
                v91 = type metadata accessor for ParticleInitScript;
                v92 = v100;
                v93 = qword_1ED725258;
                goto LABEL_65;
              }
            }
          }
        }

LABEL_54:
        v83 = v262;
        (*(v79 + 56))(v262, 1, 1, inited);
        sub_1AFB92FD0(v83, qword_1ED725258, type metadata accessor for ParticleInitScript);
        v69 = 0;
        if (v52 == -1)
        {
LABEL_55:
          v26 = v276;
          if (!v51)
          {
            goto LABEL_71;
          }
        }

        else
        {
LABEL_66:
          v26 = v276;
        }

LABEL_67:
        if ((v52 & 0x80000000) == 0 && v26[1] > v52)
        {
          v101 = (*v26 + 12 * v52);
          v102 = *(v101 + 2);
          if (v51 == -1 || v101[2] == v51)
          {
            v128 = *(*(v275 + 144) + 8 * *v101 + 32);
            v129 = *(v128 + 48);
            v130 = (v129 + 32);
            v131 = *(v129 + 16) + 1;
            while (--v131)
            {
              v132 = v130 + 5;
              v133 = *v130;
              v130 += 5;
              if (v133 == &type metadata for GraphScriptingConfig)
              {
                v134 = *(&(*(v132 - 2))[2 * v102].Kind + *(v128 + 128));
                if (v134 > 6)
                {
                  v135 = 1;
                }

                else
                {
                  v135 = qword_1AFE9F580[v134];
                }

                v27 = v274;
                v43 = v278;
                if ((v277 ^ (v69 >= v135)))
                {
                  goto LABEL_85;
                }

                goto LABEL_112;
              }
            }
          }
        }

LABEL_71:
        v103 = type metadata accessor for ParticleUpdateScript(0);
        v104 = v103;
        v105 = *(v103 - 8);
        v106 = *(v105 + 64);
        if (v106)
        {
          v106 = *(v105 + 72);
        }

        if ((v52 != -1 || v51) && (v52 & 0x80000000) == 0 && v26[1] > v52)
        {
          v107 = (*v26 + 12 * v52);
          v108 = *(v107 + 2);
          if (v51 == -1 || v107[2] == v51)
          {
            v136 = *(*(v275 + 144) + 8 * *v107 + 32);
            v137 = *(v136 + 48);
            v138 = (v137 + 32);
            v139 = *(v137 + 16) + 1;
            while (--v139)
            {
              v140 = v138 + 5;
              v141 = *v138;
              v138 += 5;
              if (v141 == v103)
              {
                v142 = v264;
                sub_1AFB93040(*(v136 + 128) + *(v140 - 2) + v106 * v108, v264, type metadata accessor for ParticleUpdateScript);
                (*(v105 + 56))(v142, 0, 1, v104);
                v125 = type metadata accessor for ParticleUpdateScript;
                v126 = v142;
                v127 = &unk_1ED724F80;
LABEL_104:
                sub_1AFB92FD0(v126, v127, v125);
                v115 = v69 > 0;
                goto LABEL_84;
              }
            }
          }
        }

        v109 = v264;
        (*(v105 + 56))(v264, 1, 1, v103);
        sub_1AFB92FD0(v109, &unk_1ED724F80, type metadata accessor for ParticleUpdateScript);
        v110 = type metadata accessor for ParticleInitScript(0);
        v111 = v110;
        v112 = *(v110 - 8);
        v113 = *(v112 + 64);
        if (v113)
        {
          v113 = *(v112 + 72);
        }

        if ((v52 != -1 || v51) && (v52 & 0x80000000) == 0 && v26[1] > v52)
        {
          v116 = (*v26 + 12 * v52);
          v117 = *(v116 + 2);
          if (v51 == -1 || v116[2] == v51)
          {
            v118 = *(*(v275 + 144) + 8 * *v116 + 32);
            v119 = *(v118 + 48);
            v120 = (v119 + 32);
            v121 = *(v119 + 16) + 1;
            while (--v121)
            {
              v122 = v120 + 5;
              v123 = *v120;
              v120 += 5;
              if (v123 == v110)
              {
                v124 = v261;
                sub_1AFB93040(*(v118 + 128) + *(v122 - 2) + v113 * v117, v261, type metadata accessor for ParticleInitScript);
                (*(v112 + 56))(v124, 0, 1, v111);
                v125 = type metadata accessor for ParticleInitScript;
                v126 = v124;
                v127 = qword_1ED725258;
                goto LABEL_104;
              }
            }
          }
        }

        v114 = v261;
        (*(v112 + 56))(v261, 1, 1, v110);
        sub_1AFB92FD0(v114, qword_1ED725258, type metadata accessor for ParticleInitScript);
        v115 = v69 >= 0;
LABEL_84:
        v27 = v274;
        v43 = v278;
        if (((v277 ^ v115) & 1) == 0)
        {
          break;
        }

LABEL_85:
        v46 = v43 + 1;
        if (v43 + 1 == v25)
        {
          v46 = v25;
          goto LABEL_113;
        }
      }

LABEL_112:
      v46 = v43;
LABEL_113:
      if (v27 >= v46 || (v277 & 1) == 0)
      {
        a6 = v275;
      }

      else
      {
        v143 = 8 * v46 - 8;
        v144 = 8 * v27;
        v145 = v46;
        v146 = v27;
        a6 = v275;
        do
        {
          if (v146 != --v145)
          {
            v147 = *v266;
            v148 = *(*v266 + v144);
            *(v147 + v144) = *(*v266 + v143);
            *(v147 + v143) = v148;
          }

          ++v146;
          v143 -= 8;
          v144 += 8;
        }

        while (v146 < v145);
      }

      v28 = v260;
LABEL_120:
      v149 = v266[1];
      if (v46 >= v149 || v46 - v27 >= v259)
      {
        goto LABEL_224;
      }

      if (v27 + v259 >= v149)
      {
        v151 = v266[1];
      }

      else
      {
        v151 = (v27 + v259);
      }

      if (v27 + v259 == v46)
      {
        v46 = v151;
        goto LABEL_224;
      }

      v260 = v28;
      v152 = *v266;
      v273 = *v266;
      v274 = v27;
      v265 = v151;
      while (2)
      {
        v153 = *(v152 + 8 * v46);
        v267 = v46;
        while (2)
        {
          v155 = v46 - 1;
          v156 = (v152 + 8 * (v46 - 1));
          v157 = v156[1];
          v158 = *v156;
          v277 = v158;
          v278 = v157;
          v159 = v153;
          v160 = HIDWORD(v153);
          v161 = v153 == -1 && HIDWORD(v153) == 0;
          v162 = v161;
          if (!v161 && (v153 & 0x80000000) == 0 && v276[1] > v153)
          {
            v167 = (*v276 + 12 * v153);
            if (HIDWORD(v153) == -1 || v167[2] == HIDWORD(v153))
            {
              v169 = *(v167 + 2);
              v170 = *(*(a6 + 144) + 8 * *v167 + 32);
              v171 = *(v170 + 48);
              v172 = (v171 + 32);
              v173 = *(v171 + 16) + 1;
              while (--v173)
              {
                v174 = v172 + 5;
                v175 = *v172;
                v172 += 5;
                if (v175 == &type metadata for GraphScriptingConfig)
                {
                  v176 = *(&(*(v174 - 2))[2 * v169].Kind + *(v170 + 128));
                  v177 = v278;
                  if (v176 > 6)
                  {
                    v178 = 1;
                  }

                  else
                  {
                    v178 = qword_1AFE9F580[v176];
                  }

                  v26 = v276;
                  if (v277 == -1 && !v278)
                  {
                    goto LABEL_187;
                  }

                  goto LABEL_183;
                }
              }
            }
          }

          v163 = type metadata accessor for ParticleUpdateScript(0);
          v164 = v163;
          v165 = *(v163 - 8);
          if (*(v165 + 64))
          {
            if (v162)
            {
              goto LABEL_164;
            }

            v166 = *(v165 + 72);
            if (v159 < 0)
            {
              goto LABEL_164;
            }

LABEL_161:
            if (v276[1] > v159)
            {
              v179 = (*v276 + 12 * v159);
              v180 = *(v179 + 2);
              if (v160 == -1 || v179[2] == v160)
              {
                v222 = *(*(v275 + 144) + 8 * *v179 + 32);
                v223 = *(v222 + 48);
                v224 = (v223 + 32);
                v225 = *(v223 + 16) + 1;
                while (--v225)
                {
                  v226 = v224 + 5;
                  v227 = *v224;
                  v224 += 5;
                  if (v227 == v163)
                  {
                    v228 = v271;
                    sub_1AFB93040(*(v222 + 128) + *(v226 - 2) + v166 * v180, v271, type metadata accessor for ParticleUpdateScript);
                    (*(v165 + 56))(v228, 0, 1, v164);
                    sub_1AFB92FD0(v228, &unk_1ED724F80, type metadata accessor for ParticleUpdateScript);
                    v178 = 1;
                    if (v277 != -1)
                    {
                      a6 = v275;
                      v26 = v276;
                      goto LABEL_182;
                    }

                    a6 = v275;
                    v26 = v276;
                    v177 = v278;
                    if (!v278)
                    {
                      goto LABEL_187;
                    }

                    goto LABEL_183;
                  }
                }
              }
            }
          }

          else if ((v162 & 1) == 0)
          {
            v166 = 0;
            if ((v159 & 0x80000000) == 0)
            {
              goto LABEL_161;
            }
          }

LABEL_164:
          v181 = v271;
          (*(v165 + 56))(v271, 1, 1, v163);
          sub_1AFB92FD0(v181, &unk_1ED724F80, type metadata accessor for ParticleUpdateScript);
          v182 = type metadata accessor for ParticleInitScript(0);
          v183 = v182;
          v184 = *(v182 - 8);
          if (*(v184 + 64))
          {
            if (v162)
            {
              goto LABEL_169;
            }

            v185 = *(v184 + 72);
            if (v159 < 0)
            {
              goto LABEL_169;
            }

LABEL_174:
            if (v276[1] <= v159)
            {
              v26 = v276;
            }

            else
            {
              v187 = (*v276 + 12 * v159);
              v188 = *(v187 + 2);
              v26 = v276;
              if (v160 == -1 || v187[2] == v160)
              {
                v189 = *(*(v275 + 144) + 8 * *v187 + 32);
                v190 = *(v189 + 48);
                v191 = (v190 + 32);
                v192 = *(v190 + 16) + 1;
                while (--v192)
                {
                  v193 = v191 + 5;
                  v194 = *v191;
                  v191 += 5;
                  if (v194 == v182)
                  {
                    v195 = v270;
                    sub_1AFB93040(*(v189 + 128) + *(v193 - 2) + v185 * v188, v270, type metadata accessor for ParticleInitScript);
                    (*(v184 + 56))(v195, 0, 1, v183);
                    sub_1AFB92FD0(v195, qword_1ED725258, type metadata accessor for ParticleInitScript);
                    v178 = 1;
                    if (v158 == -1)
                    {
                      goto LABEL_171;
                    }

                    goto LABEL_181;
                  }
                }
              }
            }
          }

          else
          {
            if ((v162 & 1) == 0)
            {
              v185 = 0;
              if ((v159 & 0x80000000) == 0)
              {
                goto LABEL_174;
              }
            }

LABEL_169:
            v26 = v276;
          }

          v186 = v270;
          (*(v184 + 56))(v270, 1, 1, v182);
          sub_1AFB92FD0(v186, qword_1ED725258, type metadata accessor for ParticleInitScript);
          v178 = 0;
          if (v158 == -1)
          {
LABEL_171:
            a6 = v275;
            v177 = v278;
            if (v278)
            {
              goto LABEL_183;
            }
          }

          else
          {
LABEL_181:
            a6 = v275;
LABEL_182:
            v177 = v278;
LABEL_183:
            if ((v158 & 0x80000000) == 0 && v26[1] > v158)
            {
              v196 = (*v26 + 12 * v158);
              v197 = *(v196 + 2);
              if (v177 == -1 || v196[2] == v177)
              {
                v214 = *(*(a6 + 144) + 8 * *v196 + 32);
                v215 = *(v214 + 48);
                v216 = (v215 + 32);
                v217 = *(v215 + 16) + 1;
                while (--v217)
                {
                  v218 = v216 + 5;
                  v219 = *v216;
                  v216 += 5;
                  if (v219 == &type metadata for GraphScriptingConfig)
                  {
                    v220 = *(&(*(v218 - 2))[2 * v197].Kind + *(v214 + 128));
                    if (v220 > 6)
                    {
                      v221 = 1;
                    }

                    else
                    {
                      v221 = qword_1AFE9F580[v220];
                    }

                    v152 = v273;
                    if (v178 < v221)
                    {
                      goto LABEL_134;
                    }

                    goto LABEL_131;
                  }
                }
              }
            }
          }

LABEL_187:
          v198 = type metadata accessor for ParticleUpdateScript(0);
          v199 = v198;
          v200 = *(v198 - 8);
          v201 = *(v200 + 64);
          if (v201)
          {
            v201 = *(v200 + 72);
            if (v277 != -1)
            {
LABEL_195:
              if ((v158 & 0x80000000) == 0 && v26[1] > v158)
              {
                v206 = (*v26 + 12 * v158);
                v207 = *(v206 + 2);
                if (v177 == -1 || v206[2] == v177)
                {
                  v208 = *(*(a6 + 144) + 8 * *v206 + 32);
                  v209 = *(v208 + 48);
                  v210 = (v209 + 32);
                  v211 = *(v209 + 16) + 1;
                  while (--v211)
                  {
                    v212 = v210 + 5;
                    v213 = *v210;
                    v210 += 5;
                    if (v213 == v198)
                    {
                      v154 = v272;
                      sub_1AFB93040(*(v208 + 128) + *(v212 - 2) + v201 * v207, v272, type metadata accessor for ParticleUpdateScript);
                      (*(v200 + 56))(v154, 0, 1, v199);
                      sub_1AFB92FD0(v154, &unk_1ED724F80, type metadata accessor for ParticleUpdateScript);
                      goto LABEL_133;
                    }
                  }
                }
              }

              goto LABEL_192;
            }
          }

          else if (v158 != -1)
          {
            goto LABEL_195;
          }

          if (v177)
          {
            goto LABEL_195;
          }

LABEL_192:
          v202 = v272;
          (*(v200 + 56))(v272, 1, 1, v198);
          sub_1AFB92FD0(v202, &unk_1ED724F80, type metadata accessor for ParticleUpdateScript);
          v203 = v269;
          sub_1AF3CFD30(v277 | (v278 << 32), v269);
          v204 = type metadata accessor for ParticleInitScript(0);
          v205 = (*(*(v204 - 8) + 48))(v203, 1, v204);
          sub_1AFB92FD0(v203, qword_1ED725258, type metadata accessor for ParticleInitScript);
          if (v205 != 1)
          {
LABEL_133:
            v152 = v273;
            if (v178 >= 1)
            {
              goto LABEL_131;
            }

LABEL_134:
            v153 = *(v152 + 8 * v46);
            *(v152 + 8 * v46) = *(v152 + 8 * v155);
            *(v152 + 8 * v155) = v153;
            --v46;
            if (v155 == v274)
            {
              goto LABEL_131;
            }

            continue;
          }

          break;
        }

        v152 = v273;
        if (v178 < 0)
        {
          goto LABEL_134;
        }

LABEL_131:
        v46 = v267 + 1;
        if ((v267 + 1) != v265)
        {
          continue;
        }

        break;
      }

      v46 = v265;
      v28 = v260;
      v27 = v274;
LABEL_224:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v267 = v46;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v28 = sub_1AF4209A4(0, *(v28 + 2) + 1, 1, v28);
      }

      v231 = *(v28 + 2);
      v230 = *(v28 + 3);
      v232 = v231 + 1;
      if (v231 >= v230 >> 1)
      {
        v28 = sub_1AF4209A4(v230 > 1, v231 + 1, 1, v28);
      }

      *(v28 + 2) = v232;
      v233 = v28 + 32;
      v234 = &v28[16 * v231 + 32];
      v235 = v267;
      *v234 = v27;
      *(v234 + 1) = v235;
      if (v231)
      {
        v278 = *v258;
        v236 = v28;
        do
        {
          v237 = v232 - 1;
          if (v232 >= 4)
          {
            v241 = &v233[16 * v232];
            v242 = *(v241 - 7) - *(v241 - 8);
            v240 = *(v241 - 5) - *(v241 - 6);
            v243 = &v28[16 * v232];
            v238 = *v243;
            v239 = *(v243 + 1);
            if (v240 - v238 + v239 >= v242)
            {
              v246 = v232 - 2;
              v245 = *&v233[16 * v237 + 8] - *&v233[16 * v237];
LABEL_240:
              if (v240 < v245)
              {
                v237 = v246;
              }

              goto LABEL_242;
            }
          }

          else
          {
            if (v232 != 3)
            {
              v244 = *&v28[16 * v232 + 8] - *&v28[16 * v232];
              v245 = *&v233[16 * v237 + 8] - *&v233[16 * v237];
              goto LABEL_237;
            }

            v238 = *(v28 + 6);
            v239 = *(v28 + 7);
            v240 = *(v28 + 5) - *(v28 + 4);
          }

          v244 = v239 - v238;
          v245 = *&v233[16 * v237 + 8] - *&v233[16 * v237];
          if (v244 + v245 >= v240)
          {
            v246 = v232 - 2;
            goto LABEL_240;
          }

LABEL_237:
          if (v245 < v244)
          {
            v28 = v236;
            v26 = v276;
            break;
          }

LABEL_242:
          v247 = &v233[16 * v237];
          v248 = *(v247 - 2);
          v249 = *(v247 + 1);
          v250 = *v266 + 8 * v248;
          v251 = *v266 + 8 * *v247;
          v252 = (*v266 + 8 * v249);

          v253 = v250;
          v254 = v268;
          sub_1AFB8CA74(v253, v251, v252, v278, v255);
          if (v254)
          {
            goto LABEL_245;
          }

          v268 = 0;

          *(v247 - 2) = v248;
          *(v247 - 1) = v249;
          v28 = v236;
          v256 = *(v236 + 2);
          v232 = v256 - 1;
          memmove(&v233[16 * v237], v247 + 16, 16 * (v256 - 1 - v237));
          *(v236 + 2) = v256 - 1;
          v26 = v276;
        }

        while (v256 > 2);
      }

      v27 = v267;
      v25 = v266[1];
      a6 = v275;
      if (v267 >= v25)
      {
        goto LABEL_4;
      }
    }
  }

  swift_retain_n();
  v28 = MEMORY[0x1E69E7CC0];
LABEL_4:
  v278 = *v258;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v28 = sub_1AF650C88(v28);
  }

  v29 = v28 + 16;
  v30 = *(v28 + 2);
  if (v30 < 2)
  {
LABEL_10:
  }

  else
  {
    v260 = v28;
    while (1)
    {
      v31 = &v28[16 * v30];
      v32 = *v31;
      v33 = &v29[2 * v30];
      v34 = *v266 + 8 * *v31;
      v35 = v33[1];
      v36 = *v266 + 8 * *v33;
      v37 = (*v266 + 8 * v35);

      v38 = v34;
      v39 = v268;
      sub_1AFB8CA74(v38, v36, v37, v278, v40);
      v268 = v39;
      if (v39)
      {
        break;
      }

      *v31 = v32;
      *(v31 + 1) = v35;
      v41 = *v29 - 1;
      memmove(&v29[2 * v30], v33 + 2, 16 * (*v29 - v30));
      *v29 = v41;
      v30 = v41;
      v28 = v260;
      if (v41 <= 1)
      {
        goto LABEL_10;
      }
    }

LABEL_245:
  }
}

void sub_1AFB8EB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, double a6)
{
  v118 = a1;
  v10 = MEMORY[0x1E69E6720];
  sub_1AFB91B24(0, qword_1ED725258, type metadata accessor for ParticleInitScript, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v114 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v113 = &v109 - v14;
  sub_1AFB91B24(0, &unk_1ED724F80, type metadata accessor for ParticleUpdateScript, v10);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v117 = &v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v116 = &v109 - v18;
  v110 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v112 = a5;
    v20 = (a5 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    v115 = v19;
    do
    {
      v21 = *(v19 + 8 * a3);
      v111 = a3;
      do
      {
        v24 = v20;
        v120 = a3;
        v25 = a3 - 1;
        v26 = (v19 + 8 * (a3 - 1));
        v27 = *v26;
        v119 = v26[1];
        v28 = v21;
        v29 = HIDWORD(v21);
        v30 = v21 == -1 && HIDWORD(v21) == 0;
        v31 = v30;
        if (!v30 && (v21 & 0x80000000) == 0 && v24[1] > v21)
        {
          v36 = (*v24 + 12 * v21);
          if (HIDWORD(v21) == -1 || v36[2] == HIDWORD(v21))
          {
            v38 = *(v36 + 2);
            v39 = *(*(v112 + 144) + 8 * *v36 + 32);
            v40 = *(v39 + 48);
            v41 = (v40 + 32);
            v42 = *(v40 + 16) + 1;
            while (--v42)
            {
              v43 = v41 + 5;
              v44 = *v41;
              v41 += 5;
              if (v44 == &type metadata for GraphScriptingConfig)
              {
                v45 = *(&(*(v43 - 2))[2 * v38].Kind + *(v39 + 128));
                if (v45 > 6)
                {
                  v46 = 1;
                }

                else
                {
                  v46 = qword_1AFE9F580[v45];
                }

                v20 = v24;
                v54 = v119;
                if (v27 == -1 && !v119)
                {
                  goto LABEL_61;
                }

                goto LABEL_57;
              }
            }
          }
        }

        updated = type metadata accessor for ParticleUpdateScript(0);
        v33 = updated;
        v34 = *(updated - 8);
        if (*(v34 + 64))
        {
          if (v31)
          {
            goto LABEL_38;
          }

          v35 = *(v34 + 72);
          if (v28 < 0)
          {
            goto LABEL_38;
          }
        }

        else
        {
          if (v31)
          {
            goto LABEL_38;
          }

          v35 = 0;
          if (v28 < 0)
          {
            goto LABEL_38;
          }
        }

        if (v24[1] > v28)
        {
          v47 = (*v24 + 12 * v28);
          v48 = *(v47 + 2);
          if (v29 == -1 || v47[2] == v29)
          {
            v102 = *(*(v112 + 144) + 8 * *v47 + 32);
            v103 = *(v102 + 48);
            v104 = (v103 + 32);
            v105 = *(v103 + 16) + 1;
            while (--v105)
            {
              v106 = v104 + 5;
              v107 = *v104;
              v104 += 5;
              if (v107 == updated)
              {
                v108 = v116;
                sub_1AFB93040(*(v102 + 128) + *(v106 - 2) + v35 * v48, v116, type metadata accessor for ParticleUpdateScript);
                (*(v34 + 56))(v108, 0, 1, v33);
                sub_1AFB92FD0(v108, &unk_1ED724F80, type metadata accessor for ParticleUpdateScript);
                v46 = 1;
                if (v27 == -1)
                {
                  v19 = v115;
                  v20 = v24;
                  v54 = v119;
                  if (!v119)
                  {
                    goto LABEL_61;
                  }
                }

                else
                {
                  v19 = v115;
                  v20 = v24;
                  v54 = v119;
                }

                goto LABEL_57;
              }
            }
          }
        }

LABEL_38:
        v49 = v116;
        (*(v34 + 56))(v116, 1, 1, updated);
        sub_1AFB92FD0(v49, &unk_1ED724F80, type metadata accessor for ParticleUpdateScript);
        inited = type metadata accessor for ParticleInitScript(0);
        v51 = inited;
        v52 = *(inited - 8);
        if (*(v52 + 64))
        {
          if (v31)
          {
            goto LABEL_43;
          }

          v53 = *(v52 + 72);
          v19 = v115;
          if (v28 < 0)
          {
            goto LABEL_44;
          }
        }

        else
        {
          if (v31)
          {
LABEL_43:
            v19 = v115;
LABEL_44:
            v20 = v24;
LABEL_45:
            v54 = v119;
            goto LABEL_46;
          }

          v53 = 0;
          v19 = v115;
          if (v28 < 0)
          {
            goto LABEL_44;
          }
        }

        if (v24[1] <= v28)
        {
          goto LABEL_44;
        }

        v56 = (*v24 + 12 * v28);
        v57 = *(v56 + 2);
        v20 = v24;
        if (v29 != -1 && v56[2] != v29)
        {
          goto LABEL_45;
        }

        v58 = *(*(v112 + 144) + 8 * *v56 + 32);
        v59 = *(v58 + 48);
        v60 = (v59 + 32);
        v61 = *(v59 + 16) + 1;
        v54 = v119;
        while (--v61)
        {
          v62 = v60 + 5;
          v63 = *v60;
          v60 += 5;
          if (v63 == inited)
          {
            v64 = v114;
            sub_1AFB93040(*(v58 + 128) + *(v62 - 2) + v53 * v57, v114, type metadata accessor for ParticleInitScript);
            (*(v52 + 56))(v64, 0, 1, v51);
            sub_1AFB92FD0(v64, qword_1ED725258, type metadata accessor for ParticleInitScript);
            v46 = 1;
            if (v27 == -1)
            {
              goto LABEL_47;
            }

            goto LABEL_57;
          }
        }

LABEL_46:
        v55 = v114;
        (*(v52 + 56))(v114, 1, 1, inited);
        sub_1AFB92FD0(v55, qword_1ED725258, type metadata accessor for ParticleInitScript);
        v46 = 0;
        if (v27 == -1)
        {
LABEL_47:
          if (!v54)
          {
            goto LABEL_61;
          }
        }

LABEL_57:
        if ((v27 & 0x80000000) == 0 && v20[1] > v27)
        {
          v65 = (*v20 + 12 * v27);
          v66 = *(v65 + 2);
          if (v54 == -1 || v65[2] == v54)
          {
            v95 = *(*(v112 + 144) + 8 * *v65 + 32);
            v96 = *(v95 + 48);
            v97 = (v96 + 32);
            v98 = *(v96 + 16) + 1;
            while (--v98)
            {
              v99 = v97 + 5;
              v100 = *v97;
              v97 += 5;
              if (v100 == &type metadata for GraphScriptingConfig)
              {
                v101 = *(&(*(v99 - 2))[2 * v66].Kind + *(v95 + 128));
                if (v101 <= 6)
                {
                  v22 = qword_1AFE9F580[v101];
                }

                else
                {
                  v22 = 1;
                }

                v23 = v120;
                if (v46 >= v22)
                {
                  goto LABEL_4;
                }

                goto LABEL_8;
              }
            }
          }
        }

LABEL_61:
        v67 = type metadata accessor for ParticleUpdateScript(0);
        v68 = v67;
        v69 = *(v67 - 8);
        v70 = *(v69 + 64);
        if (v70)
        {
          v70 = *(v69 + 72);
        }

        if ((v27 != -1 || v54) && (v27 & 0x80000000) == 0 && v20[1] > v27)
        {
          v77 = (*v20 + 12 * v27);
          v78 = *(v77 + 2);
          if (v54 == -1 || v77[2] == v54)
          {
            v79 = *(*(v112 + 144) + 8 * *v77 + 32);
            v80 = *(v79 + 48);
            v81 = (v80 + 32);
            v82 = *(v80 + 16) + 1;
            while (--v82)
            {
              v83 = v81 + 5;
              v84 = *v81;
              v81 += 5;
              if (v84 == v67)
              {
                v85 = v117;
                sub_1AFB93040(*(v79 + 128) + *(v83 - 2) + v70 * v78, v117, type metadata accessor for ParticleUpdateScript);
                (*(v69 + 56))(v85, 0, 1, v68);
                sub_1AFB92FD0(v85, &unk_1ED724F80, type metadata accessor for ParticleUpdateScript);
                v23 = v120;
                if (v46 < 1)
                {
                  goto LABEL_8;
                }

                goto LABEL_4;
              }
            }
          }
        }

        v71 = v117;
        (*(v69 + 56))(v117, 1, 1, v67);
        sub_1AFB92FD0(v71, &unk_1ED724F80, type metadata accessor for ParticleUpdateScript);
        v72 = type metadata accessor for ParticleInitScript(0);
        v73 = v72;
        v74 = *(v72 - 8);
        v75 = *(v74 + 64);
        if (v75)
        {
          v75 = *(v74 + 72);
        }

        if ((v27 != -1 || v54) && (v27 & 0x80000000) == 0 && v20[1] > v27 && ((v86 = (*v20 + 12 * v27), v87 = *(v86 + 2), v54 == -1) || v86[2] == v54))
        {
          v88 = *(*(v112 + 144) + 8 * *v86 + 32);
          v89 = *(v88 + 48);
          v90 = (v89 + 32);
          v91 = *(v89 + 16) + 1;
          v23 = v120;
          while (--v91)
          {
            v92 = v90 + 5;
            v93 = *v90;
            v90 += 5;
            if (v93 == v72)
            {
              v94 = v113;
              sub_1AFB93040(*(v88 + 128) + *(v92 - 2) + v75 * v87, v113, type metadata accessor for ParticleInitScript);
              (*(v74 + 56))(v94, 0, 1, v73);
              sub_1AFB92FD0(v94, qword_1ED725258, type metadata accessor for ParticleInitScript);
              if (v46 < 1)
              {
                goto LABEL_8;
              }

              goto LABEL_4;
            }
          }
        }

        else
        {
          v23 = v120;
        }

        v76 = v113;
        (*(v74 + 56))(v113, 1, 1, v72);
        sub_1AFB92FD0(v76, qword_1ED725258, type metadata accessor for ParticleInitScript);
        if ((v46 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_8:
        v21 = *(v19 + 8 * v23);
        *(v19 + 8 * v23) = *(v19 + 8 * v25);
        *(v19 + 8 * v25) = v21;
        a3 = v25;
      }

      while (v25 != v118);
LABEL_4:
      a3 = v111 + 1;
    }

    while (v111 + 1 != v110);
  }
}

uint64_t sub_1AFB8F658(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_retain_n();
  v5 = sub_1AFDFE9D8();
  if (v5 >= v4)
  {
    if (v4)
    {

      sub_1AFB8EB8C(0, v4, 1, a1, a2, v9);
    }
  }

  else
  {
    v6 = v5;
    v7 = v4 / 2;
    if (v4 <= 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v8 = sub_1AFDFD488();
      *(v8 + 16) = v7;
    }

    v12[0] = (v8 + 32);
    v12[1] = v7;

    sub_1AFB8D41C(v12, v10, v13, a1, v6, a2);

    *(v8 + 16) = 0;
  }
}

uint64_t sub_1AFB8F78C(char **a1, uint64_t a2)
{
  v4 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1AF62483C(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;

  sub_1AFB8F658(v7, a2);

  *a1 = v4;
}

uint64_t sub_1AFB8F830(void *a1)
{
  sub_1AFB925A0(0, &qword_1EB642E28, sub_1AFB916C0, &type metadata for NeighborGrid.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12.i8[-v6];
  v8 = a1[3];
  sub_1AF441150(a1, v8);
  sub_1AFB916C0();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v14.i8[0] = 0;
    sub_1AFDFE738();
    v14.i8[0] = 1;
    v8 = sub_1AFDFE758();
    sub_1AFB925A0(0, &qword_1ED72F730, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7450]);
    v13 = 2;
    sub_1AFB91714(&qword_1EB63EF98, MEMORY[0x1E69E7468]);
    sub_1AFDFE768();
    v10 = v14;
    v10.i32[3] = 0;
    v11 = vmaxq_u32(v10, xmmword_1AFE552D0);
    v11.i32[3] = 0;
    v12 = vminq_u32(v11, xmmword_1AFE552E0);
    (*(v5 + 8))(v7, v4);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v8;
}

uint64_t sub_1AFB8FAE0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a2;
  sub_1AFB925A0(0, &qword_1ED722FC0, sub_1AFB91790, &type metadata for EmitterDescription.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v112 - v7;
  v169 = 1;
  sub_1AF441150(a1, a1[3]);
  sub_1AFB91790();
  sub_1AFDFF3B8();
  v131 = a1;
  if (v2)
  {
    v132 = v2;
    v126 = 0;
    LODWORD(v127) = 0;
    v124 = 0;
    v125 = 0;
    LODWORD(v130) = 0;
    v17 = 0;
    LODWORD(v129) = 0;
    LODWORD(v128) = 0;
    v18 = 0;
    v123 = 0;
    v19 = MEMORY[0x1E69E7CC0];
    v20 = 1;
    v21 = 0;
    v22 = 1036831949;
    v23 = 1;
    v24 = MEMORY[0x1E69E7CC0];
    v25 = MEMORY[0x1E69E7CC0];
    v26 = MEMORY[0x1E69E7CC0];
LABEL_6:
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v131);
    v140 = v26;
    v141 = v25;
    v142 = v24;
    v143 = v19;
    v144 = v18;
    v145 = v169;
    *v146 = *v168;
    *&v146[3] = *&v168[3];
    v147 = 0;
    v148 = v128;
    v149 = v129;
    v150 = v20;
    v151 = v17;
    v152 = v130;
    v153 = v125;
    v154 = v21;
    v155 = 1065353216;
    v156 = v124;
    v157 = 0;
    v158 = v166;
    v159 = v167;
    v160 = v126;
    v161 = v127;
    v162 = 0;
    v163 = v23;
    v164 = v123;
    v165 = v22;
    return sub_1AF57A684(&v140);
  }

  v130 = v6;
  v120 = v8;
  v121 = v5;
  v9 = v122;
  v10 = 0;
  v11 = a1[3];
  v12 = a1[4];
  sub_1AF441150(a1, v11);
  if (sub_1AF69504C(1036, v11, v12))
  {
    sub_1AFB936C8(0, &qword_1EB642E60, &type metadata for EntityComponentReference, MEMORY[0x1E69E62F8]);
    LOBYTE(v133) = 15;
    sub_1AFB918CC();
    v13 = v120;
    sub_1AFDFE768();
    v14 = v140;
    LOBYTE(v133) = 16;
    sub_1AFDFE768();
    v15 = v140;
    LOBYTE(v133) = 17;
    sub_1AFDFE768();
    v129 = v15;
    v16 = v140;
    LOBYTE(v133) = 18;
    sub_1AFDFE768();
    v132 = 0;
    v127 = v16;
    v128 = v140;
    v28 = *(v14 + 16);
    if (v28)
    {
      v34 = v130;
      v140 = MEMORY[0x1E69E7CC0];
      sub_1AFC07194(0, v28, 0);
      v29 = v140;
      v30 = *(v140 + 16);
      v31 = 32;
      do
      {
        v32 = *(v14 + v31);
        v140 = v29;
        v33 = *(v29 + 24);
        if (v30 >= v33 >> 1)
        {
          sub_1AFC07194(v33 > 1, v30 + 1, 1);
          v29 = v140;
        }

        *(v29 + 16) = v30 + 1;
        *(v29 + 8 * v30 + 32) = v32;
        v31 += 16;
        ++v30;
        --v28;
      }

      while (v28);
      v119 = v29;

      v10 = v132;
    }

    else
    {
      v10 = 0;

      v119 = MEMORY[0x1E69E7CC0];
      v34 = v130;
    }

    v35 = *(v129 + 16);
    if (v35)
    {
      v36 = v10;
      v140 = MEMORY[0x1E69E7CC0];
      sub_1AFC07194(0, v35, 0);
      v37 = v129;
      v38 = v140;
      v39 = *(v140 + 16);
      v40 = 32;
      do
      {
        v41 = *(v37 + v40);
        v140 = v38;
        v42 = *(v38 + 24);
        if (v39 >= v42 >> 1)
        {
          sub_1AFC07194(v42 > 1, v39 + 1, 1);
          v37 = v129;
          v38 = v140;
        }

        *(v38 + 16) = v39 + 1;
        *(v38 + 8 * v39 + 32) = v41;
        v40 += 16;
        ++v39;
        --v35;
      }

      while (v35);
      v118 = v38;

      v10 = v36;
    }

    else
    {

      v118 = MEMORY[0x1E69E7CC0];
    }

    v43 = *(v127 + 16);
    if (v43)
    {
      v44 = v10;
      v140 = MEMORY[0x1E69E7CC0];
      sub_1AFC07194(0, v43, 0);
      v45 = v127;
      v46 = v140;
      v47 = *(v140 + 16);
      v48 = 32;
      do
      {
        v49 = *(v45 + v48);
        v140 = v46;
        v50 = *(v46 + 24);
        if (v47 >= v50 >> 1)
        {
          sub_1AFC07194(v50 > 1, v47 + 1, 1);
          v45 = v127;
          v46 = v140;
        }

        *(v46 + 16) = v47 + 1;
        *(v46 + 8 * v47 + 32) = v49;
        v48 += 16;
        ++v47;
        --v43;
      }

      while (v43);
      v117 = v46;

      v10 = v44;
    }

    else
    {

      v117 = MEMORY[0x1E69E7CC0];
    }

    v51 = *(v128 + 16);
    if (v51)
    {
      v52 = v34;
      v140 = MEMORY[0x1E69E7CC0];
      sub_1AFC07194(0, v51, 0);
      v53 = v128;
      v54 = v140;
      v55 = *(v140 + 16);
      v56 = 32;
      do
      {
        v57 = *(v53 + v56);
        v140 = v54;
        v58 = *(v54 + 24);
        if (v55 >= v58 >> 1)
        {
          sub_1AFC07194(v58 > 1, v55 + 1, 1);
          v53 = v128;
          v54 = v140;
        }

        *(v54 + 16) = v55 + 1;
        *(v54 + 8 * v55 + 32) = v57;
        v56 += 16;
        ++v55;
        --v51;
      }

      while (v51);
      v116 = v54;

      v10 = v132;
      v34 = v52;
    }

    else
    {

      v116 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    sub_1AFB936C8(0, &unk_1ED723230, &type metadata for Entity, MEMORY[0x1E69E62F8]);
    LOBYTE(v133) = 0;
    sub_1AFB919BC(&qword_1ED723220, sub_1AF47FEB4, MEMORY[0x1E69E6330]);
    v13 = v120;
    sub_1AFDFE768();
    v119 = v140;
    LOBYTE(v133) = 1;
    sub_1AFDFE768();
    v118 = v140;
    LOBYTE(v133) = 2;
    sub_1AFDFE768();
    v117 = v140;
    LOBYTE(v133) = 3;
    sub_1AFDFE768();
    v116 = v140;
    v34 = v130;
  }

  sub_1AFB936C8(0, &unk_1ED72F970, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
  LOBYTE(v133) = 4;
  sub_1AFB91A4C(&qword_1ED7231B0, MEMORY[0x1E69E6560], MEMORY[0x1E69E7C88]);
  v59 = v121;
  sub_1AFDFE6E8();
  if (v10)
  {
    v132 = v10;
    (*(v34 + 8))(v13, v59);
    v126 = 0;
    LODWORD(v127) = 0;
    v124 = 0;
    v125 = 0;
    LODWORD(v130) = 0;
    v17 = 0;
    LODWORD(v129) = 0;
    LODWORD(v128) = 0;
    v18 = 0;
    v123 = 0;
    v20 = 1;
    v21 = 0;
    v22 = 1036831949;
    v23 = 1;
    v26 = v119;
    v25 = v118;
    v24 = v117;
    v19 = v116;
    goto LABEL_6;
  }

  v60 = v34;
  if (BYTE1(v141))
  {
    v61 = 0;
  }

  else
  {
    v61 = v140;
  }

  v169 = (BYTE1(v141) | v141) & 1;
  v62 = v131;
  v63 = v131[3];
  v64 = v131[4];
  sub_1AF441150(v131, v63);
  if (sub_1AF69504C(1087, v63, v64))
  {
    v65 = v62[3];
    v66 = v62[4];
    sub_1AF441150(v62, v65);
    if (sub_1AF69504C(1071, v65, v66))
    {
      v67 = 0;
    }

    else
    {
      LOBYTE(v140) = 21;
      v67 = sub_1AFDFE718() & 1;
    }

    v71 = v131[3];
    v72 = v131[4];
    sub_1AF441150(v131, v71);
    if (sub_1AF69504C(1051, v71, v72))
    {
      sub_1AFB936C8(0, &qword_1EB642E50, MEMORY[0x1E69E76D8], MEMORY[0x1E69E6720]);
      LOBYTE(v133) = 20;
      sub_1AFB91838();
      sub_1AFDFE6E8();
      if ((v141 & 0x100) != 0)
      {
        v126 = 0;
        v67 = 1;
      }

      else
      {
        v76 = v140;
        if (v141)
        {
          v76 = 0;
        }

        v126 = v76;
        if (v141)
        {
          v67 = 1;
        }
      }
    }

    else
    {
      LOBYTE(v140) = 20;
      v126 = sub_1AFDFE7E8();
    }
  }

  else
  {
    v126 = 0;
    v67 = 0;
  }

  LOBYTE(v140) = 5;
  v68 = sub_1AFDFE718();
  LODWORD(v127) = v67;
  v69 = v68 & 1;
  LOBYTE(v140) = 6;
  v70 = sub_1AFDFE718();
  v114 = v69;
  v115 = v61;
  v113 = v70 & 1;
  LOBYTE(v140) = 7;
  LOBYTE(v130) = sub_1AFDFE718() & 1;
  LODWORD(v130) = v130;
  v74 = v131[3];
  v73 = v131[4];
  sub_1AF441150(v131, v74);
  if (sub_1AF69504C(1002, v74, v73))
  {
    v132 = 0;
    v75 = 1;
  }

  else
  {
    LOBYTE(v133) = 8;
    sub_1AFB917E4();
    sub_1AFDFE768();
    v132 = 0;
    v75 = v140;
  }

  HIDWORD(v112) = v75;
  v78 = v131[3];
  v77 = v131[4];
  sub_1AF441150(v131, v78);
  if (sub_1AF69504C(1032, v78, v77))
  {
    v125 = 0;
  }

  else
  {
    LOBYTE(v140) = 9;
    v79 = v132;
    v80 = sub_1AFDFE718();
    v132 = v79;
    if (v79)
    {
      (*(v60 + 8))(v120, v121);
      v124 = 0;
      v125 = 0;
      LODWORD(v129) = 0;
      LODWORD(v128) = 0;
      v123 = 0;
      v21 = 0;
LABEL_70:
      v22 = 1036831949;
LABEL_80:
      v26 = v119;
      v25 = v118;
      v24 = v117;
      v18 = v115;
      v17 = v113;
      v19 = v116;
      v20 = v114;
      v23 = BYTE4(v112);
      goto LABEL_6;
    }

    v125 = v80 & 1;
  }

  v82 = v131[3];
  v81 = v131[4];
  sub_1AF441150(v131, v82);
  v21 = 0;
  if (!sub_1AF69504C(1064, v82, v81))
  {
    LOBYTE(v140) = 10;
    v83 = v132;
    sub_1AFDFE738();
    v132 = v83;
    if (v83)
    {
      goto LABEL_68;
    }

    v21 = v84;
  }

  v86 = v131[3];
  v85 = v131[4];
  sub_1AF441150(v131, v86);
  if (!sub_1AF69504C(1069, v86, v85))
  {
    LOBYTE(v140) = 11;
    v87 = v132;
    v88 = sub_1AFDFE718();
    v132 = v87;
    if (!v87)
    {
      v124 = v88 & 1;
      goto LABEL_72;
    }

LABEL_68:
    (*(v60 + 8))(v120, v121);
    v124 = 0;
LABEL_69:
    LODWORD(v129) = 0;
    LODWORD(v128) = 0;
    v123 = 0;
    goto LABEL_70;
  }

  v124 = 0;
LABEL_72:
  v90 = v131[3];
  v89 = v131[4];
  sub_1AF441150(v131, v90);
  if (sub_1AF694FF8(2016, v90, v89) && (v92 = v131[3], v91 = v131[4], sub_1AF441150(v131, v92), sub_1AF69504C(3013, v92, v91)))
  {
    LOBYTE(v140) = 22;
    v93 = v132;
    v94 = sub_1AFDFE718();
    v132 = v93;
    if (v93)
    {
      (*(v60 + 8))(v120, v121);
      goto LABEL_69;
    }

    v123 = v94 & 1;
    LOBYTE(v140) = 23;
    sub_1AFDFE738();
    v132 = 0;
    v22 = v111;
  }

  else
  {
    v123 = 0;
    v22 = 1036831949;
  }

  LOBYTE(v140) = 12;
  v95 = v132;
  v96 = sub_1AFDFE6A8();
  v132 = v95;
  if (v95)
  {
    (*(v60 + 8))(v120, v121);
    LODWORD(v129) = 0;
    LODWORD(v128) = 0;
    goto LABEL_80;
  }

  LODWORD(v129) = v96 & 1;
  LOBYTE(v140) = 14;
  v97 = sub_1AFDFE6A8();
  v132 = 0;
  LODWORD(v128) = v97 & 1;
  LOBYTE(v140) = 13;
  v98 = sub_1AFDFE6C8();
  v132 = 0;
  v99 = v98;
  (*(v60 + 8))(v120, v121);
  *&v133 = v119;
  *(&v133 + 1) = v118;
  if ((v99 & 0x100000000) != 0)
  {
    v100 = 1.0;
  }

  else
  {
    v100 = *&v99;
  }

  *&v134 = v117;
  *(&v134 + 1) = v116;
  *&v135 = v115;
  LODWORD(v121) = v169;
  BYTE8(v135) = v169;
  *(&v135 + 9) = *v168;
  HIDWORD(v135) = *&v168[3];
  *&v136 = 0;
  BYTE8(v136) = v128;
  BYTE9(v136) = v129;
  BYTE10(v136) = v114;
  v101 = v113;
  BYTE11(v136) = v113;
  BYTE12(v136) = v130;
  v102 = v125;
  BYTE13(v136) = v125;
  *&v137 = __PAIR64__(LODWORD(v100), v21);
  v103 = v124;
  BYTE8(v137) = v124;
  *(&v137 + 9) = 0;
  *(&v137 + 11) = v166;
  HIBYTE(v137) = v167;
  v104 = v126;
  *&v138 = v126;
  v105 = v127;
  BYTE8(v138) = v127;
  WORD5(v138) = 0;
  v106 = BYTE4(v112);
  BYTE12(v138) = BYTE4(v112);
  v107 = v123;
  BYTE13(v138) = v123;
  v139 = v22;
  sub_1AF445DA0(&v133, &v140);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v131);
  v140 = v119;
  v141 = v118;
  v142 = v117;
  v143 = v116;
  v144 = v115;
  v145 = v121;
  *v146 = *v168;
  *&v146[3] = *&v168[3];
  v147 = 0;
  v148 = v128;
  v149 = v129;
  v150 = v114;
  v151 = v101;
  v152 = v130;
  v153 = v102;
  v154 = v21;
  v155 = LODWORD(v100);
  v156 = v103;
  v157 = 0;
  v158 = v166;
  v159 = v167;
  v160 = v104;
  v161 = v105;
  v162 = 0;
  v163 = v106;
  v164 = v107;
  v165 = v22;
  result = sub_1AF57A684(&v140);
  v108 = v138;
  *(v9 + 64) = v137;
  *(v9 + 80) = v108;
  *(v9 + 96) = v139;
  v109 = v134;
  *v9 = v133;
  *(v9 + 16) = v109;
  v110 = v136;
  *(v9 + 32) = v135;
  *(v9 + 48) = v110;
  return result;
}

uint64_t sub_1AFB91480(void *a1)
{
  sub_1AFB925A0(0, &qword_1ED722F90, sub_1AFB9166C, &type metadata for Seed.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  sub_1AF441150(a1, a1[3]);
  sub_1AFB9166C();
  sub_1AFDFF3B8();
  if (v1)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v14 = 0;
  v8 = sub_1AFDFE7D8();
  v13 = 1;
  v9 = sub_1AFDFE718();
  if (v9)
  {
    v11 = 0x100000000;
    v8 = arc4random();
  }

  else
  {
    v11 = 0;
  }

  (*(v5 + 8))(v7, v4);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v11 | v8;
}

unint64_t sub_1AFB9166C()
{
  result = qword_1ED7240B8;
  if (!qword_1ED7240B8)
  {
    result = swift_getWitnessTable(byte_1AFE9F4D8, &type metadata for Seed.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED7240B8);
  }

  return result;
}

unint64_t sub_1AFB916C0()
{
  result = qword_1EB642E30;
  if (!qword_1EB642E30)
  {
    result = swift_getWitnessTable(a1_9, &type metadata for NeighborGrid.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642E30);
  }

  return result;
}

uint64_t sub_1AFB91714(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1AFB925A0(255, &qword_1ED72F730, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7450]);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AFB91790()
{
  result = qword_1ED725348;
  if (!qword_1ED725348)
  {
    result = swift_getWitnessTable(byte_1AFE9F438, &type metadata for EmitterDescription.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED725348);
  }

  return result;
}

unint64_t sub_1AFB917E4()
{
  result = qword_1ED725318;
  if (!qword_1ED725318)
  {
    result = swift_getWitnessTable(aY_20, &type metadata for EmitterDescription.PhysicsSimulation, v0, v1);
    atomic_store(result, &qword_1ED725318);
  }

  return result;
}

unint64_t sub_1AFB91838()
{
  result = qword_1EB642E58;
  if (!qword_1EB642E58)
  {
    v4[1] = v0;
    v4[2] = v1;
    sub_1AFB936C8(255, &qword_1EB642E50, MEMORY[0x1E69E76D8], MEMORY[0x1E69E6720]);
    v4[0] = MEMORY[0x1E69E7708];
    result = swift_getWitnessTable(MEMORY[0x1E69E7C88], v3, v4);
    atomic_store(result, &qword_1EB642E58);
  }

  return result;
}

unint64_t sub_1AFB918CC()
{
  result = qword_1EB642E68;
  if (!qword_1EB642E68)
  {
    v5[3] = v0;
    v5[4] = v1;
    sub_1AFB936C8(255, &qword_1EB642E60, &type metadata for EntityComponentReference, MEMORY[0x1E69E62F8]);
    v4 = v3;
    v5[0] = sub_1AFB91968();
    result = swift_getWitnessTable(MEMORY[0x1E69E6330], v4, v5);
    atomic_store(result, &qword_1EB642E68);
  }

  return result;
}

unint64_t sub_1AFB91968()
{
  result = qword_1EB642E70;
  if (!qword_1EB642E70)
  {
    result = swift_getWitnessTable(byte_1AFE6E074, &type metadata for EntityComponentReference, v0, v1);
    atomic_store(result, &qword_1EB642E70);
  }

  return result;
}

uint64_t sub_1AFB919BC(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1AFB936C8(255, &unk_1ED723230, &type metadata for Entity, MEMORY[0x1E69E62F8]);
    v8 = v7;
    v9 = a2();
    result = swift_getWitnessTable(a3, v8, &v9);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AFB91A4C(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1AFB936C8(255, &unk_1ED72F970, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AFB91AD0()
{
  result = qword_1EB642E88;
  if (!qword_1EB642E88)
  {
    result = swift_getWitnessTable(aQ_16, &type metadata for EmitterDescription.PhysicsSimulation, v0, v1);
    atomic_store(result, &qword_1EB642E88);
  }

  return result;
}

void sub_1AFB91B24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1AFB91B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1AFB91BE8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  sub_1AF441194(a1, v10);
  sub_1AF5C5358(0, &qword_1ED72FFF0, &protocol descriptor for EntityComponent);
  sub_1AF5C5358(0, qword_1ED724348, &protocol descriptor for ParticleRendererWithSystem);
  if (swift_dynamicCast())
  {
    sub_1AF0FBA54(v13, v15);
    v6 = v16;
    v7 = v17;
    sub_1AF441150(v15, v16);
    LOBYTE(v6) = (*(v7 + 64))(v6, v7);
    sub_1AF67CACC(&type metadata for ParticleSpawnID, &off_1F254ED98, a3);
    sub_1AFB73D64(v6);
    sub_1AF441194(v15, v13);
    if ((swift_dynamicCast() & 1) != 0 && v12 <= 1 && !v11)
    {
      v8 = v10[20];
      sub_1AFB73D64(5u);
      *(a4 + 264) = 1;
      *(a4 + 288) = v8;
    }

    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v15);
  }

  else
  {
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    return sub_1AFB93108(v13, &qword_1ED724340, qword_1ED724348, &protocol descriptor for ParticleRendererWithSystem);
  }
}

void sub_1AFB91D98(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = 0;
  v5 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 64);
  v6 = *(v1 + 32);
  v90[0] = *(v1 + 16);
  v90[1] = v6;
  v91 = *(v1 + 48);
  sub_1AF6B06C0(a1, v90, 0x200000000, v72);
  if (*v72)
  {
    if (v75 <= 0 || (v64 = *(&v73 + 1)) == 0)
    {
      sub_1AFB91B88(v72, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB936C8);
      goto LABEL_22;
    }

    v56 = v1;
    v57 = v3;
    v62 = *&v72[40];
    v7 = *(&v74 + 1);
    v8 = *(v74 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v9 = *(*(&v74 + 1) + 32);
    v80 = *v72;
    v81 = *&v72[8];
    v82 = *&v72[24];
    *&v76[32] = *&v72[32];
    v77 = v73;
    v78 = v74;
    v79 = v75;
    *v76 = *v72;
    *&v76[16] = *&v72[16];
    sub_1AF5DD298(v76, v70);
    v10 = 0;
    v60 = v8;
    v58 = v9;
    while (1)
    {
      v68 = v4;
      v11 = (v62 + 48 * v10);
      v12 = *v11;
      v66 = v11[1];
      v13 = *(v11 + 2);
      v14 = *(v11 + 3);
      v16 = *(v11 + 4);
      v15 = *(v11 + 5);
      if (v8)
      {
        v17 = *(v15 + 376);

        os_unfair_lock_lock(v17);
        os_unfair_lock_lock(*(v15 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v9);
      v18 = *(v7 + 64);
      v70[0] = *(v7 + 48);
      v70[1] = v18;
      v71 = *(v7 + 80);
      v19 = *(v7 + 32);
      v20 = *(*(*(*(v15 + 40) + 16) + 32) + 16) + 1;

      *(v7 + 48) = ecs_stack_allocator_allocate(v19, 48 * v20, 8);
      *(v7 + 56) = v20;
      *(v7 + 72) = 0;
      *(v7 + 80) = 0;
      *(v7 + 64) = 0;

      v21 = sub_1AF64B110(&type metadata for EmitterDescription, &off_1F2563648, v13, v14, v16, v7);
      v22 = sub_1AF64B110(&type metadata for EmitterRuntime, &off_1F2563418, v13, v14, v16, v7);
      if (v13)
      {
        if (v16)
        {
          v23 = (v21 + 68);
          v24 = (v22 + 96);
          v4 = v68;
          do
          {
            v25 = *v23;
            v23 += 26;
            *v24 = *v24 + (v5 * v25);
            v24 += 212;
            --v16;
          }

          while (v16);
          goto LABEL_18;
        }
      }

      else if (v12 != v66)
      {
        v26 = &v22[848 * v12 + 96];
        v27 = &v21[104 * v12 + 68];
        v28 = v66 - v12;
        v4 = v68;
        do
        {
          v29 = *v27;
          v27 += 26;
          *v26 = *v26 + (v5 * v29);
          v26 += 212;
          --v28;
        }

        while (v28);
        goto LABEL_18;
      }

      v4 = v68;
LABEL_18:
      sub_1AF630994(v7, &v80, v70);
      sub_1AF62D29C(v15);
      v9 = v58;
      ecs_stack_allocator_pop_snapshot(v58);
      v8 = v60;
      if (v60)
      {
        os_unfair_lock_unlock(*(v15 + 344));
        os_unfair_lock_unlock(*(v15 + 376));
      }

      if (++v10 == v64)
      {
        v30 = MEMORY[0x1E69E6720];
        sub_1AFB91B88(v72, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB936C8);
        sub_1AFB91B88(v72, &qword_1ED725EA0, &type metadata for QueryResult, v30, sub_1AFB936C8);
        v2 = v56;
        v3 = v57;
        break;
      }
    }
  }

LABEL_22:
  v31 = *(v2 + 72);
  v88[0] = *(v2 + 56);
  v88[1] = v31;
  v89 = *(v2 + 88);
  sub_1AF6B06C0(v3, v88, 0x200000000, v76);
  if (*v76)
  {
    if (v79 >= 1)
    {
      v65 = *(&v77 + 1);
      if (*(&v77 + 1))
      {
        v32 = 0;
        v63 = *&v76[40];
        v33 = *(&v78 + 1);
        v34 = *(*(&v78 + 1) + 32);
        v35 = *(v78 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v83 = *v76;
        v84 = *&v76[8];
        v85 = *&v76[24];
        v59 = v35;
        v61 = v34;
        do
        {
          v36 = (v63 + 48 * v32);
          v69 = *v36;
          v67 = v36[1];
          v37 = *(v36 + 2);
          v38 = *(v36 + 3);
          v40 = *(v36 + 4);
          v39 = *(v36 + 5);
          if (v35)
          {
            v41 = *(v39 + 376);

            os_unfair_lock_lock(v41);
            os_unfair_lock_lock(*(v39 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v34);
          v42 = *(v33 + 64);
          v86[0] = *(v33 + 48);
          v86[1] = v42;
          v87 = *(v33 + 80);
          v43 = *(*(*(*(v39 + 40) + 16) + 32) + 16) + 1;
          *(v33 + 48) = ecs_stack_allocator_allocate(*(v33 + 32), 48 * v43, 8);
          *(v33 + 56) = v43;
          *(v33 + 72) = 0;
          *(v33 + 80) = 0;
          *(v33 + 64) = 0;
          v44 = sub_1AF64B110(&type metadata for EmitterDescription, &off_1F2563648, v37, v38, v40, v33);
          v45 = sub_1AF64B110(&type metadata for EmitterRuntime, &off_1F2563418, v37, v38, v40, v33);
          v46 = sub_1AF64B110(&type metadata for LocalAABB, &off_1F25104C0, v37, v38, v40, v33);
          if (v37)
          {
            if (v40)
            {
              v47 = v46 + 16;
              v48 = (v45 + 192);
              v49 = v44 + 61;
              v34 = v61;
              v35 = v59;
              do
              {
                if (*(v49 - 3) == 1 && (*v49 & 1) == 0)
                {
                  v50 = *v48;
                  *(v47 - 1) = *(v48 - 1);
                  *v47 = v50;
                }

                v47 += 2;
                v48 += 53;
                v49 += 104;
                --v40;
              }

              while (v40);
              goto LABEL_39;
            }
          }

          else if (v69 != v67)
          {
            v51 = v67 - v69;
            v52 = &v44[104 * v69 + 61];
            v53 = &v46[32 * v69 + 16];
            v54 = &v45[848 * v69 + 192];
            v34 = v61;
            v35 = v59;
            do
            {
              if (*(v52 - 3) == 1 && (*v52 & 1) == 0)
              {
                v55 = *v54;
                *(v53 - 1) = *(v54 - 1);
                *v53 = v55;
              }

              v52 += 104;
              v53 += 32;
              v54 += 848;
              --v51;
            }

            while (v51);
            goto LABEL_39;
          }

          v34 = v61;
          v35 = v59;
LABEL_39:
          sub_1AF630994(v33, &v83, v86);
          sub_1AF62D29C(v39);
          ecs_stack_allocator_pop_snapshot(v34);
          if (v35)
          {
            os_unfair_lock_unlock(*(v39 + 344));
            os_unfair_lock_unlock(*(v39 + 376));
          }

          ++v32;
        }

        while (v32 != v65);
      }
    }

    sub_1AFB91B88(v76, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB936C8);
  }
}

void sub_1AFB9246C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

unint64_t sub_1AFB924D4()
{
  result = qword_1EB6327A0;
  if (!qword_1EB6327A0)
  {
    v3 = sub_1AFDFC128();
    result = swift_getWitnessTable(MEMORY[0x1E6968FC8], v3, v0, v1);
    atomic_store(result, &qword_1EB6327A0);
  }

  return result;
}

void sub_1AFB9252C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1AFB925A0(255, a3, sub_1AF43A0C8, MEMORY[0x1E69E6448], a4);
    v5 = sub_1AFDFEA18();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1AFB925A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1AFB92608(uint64_t a1)
{
  if (!qword_1EB633200)
  {
    type metadata accessor for BufferSlice(255);
    sub_1AF85A6D8();
    v1 = sub_1AFDFE4C8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB633200);
    }
  }
}

uint64_t sub_1AFB92698(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = qword_1ED725EC0;

    if (v12 != -1)
    {
      swift_once();
    }

    v13 = qword_1ED73B5C0;

    if (v11 == v13)
    {
LABEL_25:
      v14 = 2;
      goto LABEL_26;
    }

    if (v11 != a5)
    {
LABEL_6:
      v14 = 1;
LABEL_26:

      return v14;
    }

    if (*(a3 + 61) == 1)
    {
      if ((*(a4 + 336) & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else if (*(a4 + 336))
    {
      goto LABEL_6;
    }

    if (*(a3 + 72) == 1)
    {
      if ((*(a4 + 49) & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else if ((a3[6] == 0) == *(a4 + 49))
    {
      goto LABEL_6;
    }

    v15 = sub_1AF3C9600(a2);
    if ((*(a4 + 48) & 1) == 0)
    {
      v16 = (v15 & 0xFF00000000) == 0x200000000 ? 0 : v15;
      if (v16 == *(a4 + 40))
      {
        sub_1AF3CF3A4(a2, v56);
        if (v58 == 2)
        {
          if ((*(a4 + 576) & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        else if (*(a4 + 576) && v56[0] == *(a4 + 580))
        {
          v47 = 0;
          v48 = *(a4 + 592);
          while (1)
          {
            v54 = v57;
            v50 = *(&v54 & 0xFFFFFFFFFFFFFFF3 | (4 * (v47 & 3)));
            v55 = v48;
            v51 = *(&v55 & 0xFFFFFFFFFFFFFFF3 | (4 * (v47 & 3)));
            v49 = v50 == v51;
            if (v47 == 2)
            {
              break;
            }

            while (1)
            {
              ++v47;
              if (v49)
              {
                break;
              }

              v49 = 0;
              if (v47 == 2)
              {
                goto LABEL_66;
              }
            }
          }

          if (v50 == v51)
          {
LABEL_23:
            v17 = *a3;
            v18 = *(*a3 + 16);
            if (v18)
            {
              v19 = 0;
              v52 = (a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
              v53 = v17 + 32;
              do
              {
                v21 = (v53 + 8 * v19);
                v22 = v21[1];
                v23 = *v21;
                v24 = v23 == -1 && v22 == 0;
                if (!v24 && (v23 & 0x80000000) == 0 && v52[1] > v23)
                {
                  v25 = (*v52 + 12 * v23);
                  v26 = v22 == -1 || v25[2] == v22;
                  if (v26 && (*(*(*(a1 + 144) + 8 * *v25 + 32) + 120) & 1) != 0)
                  {
                    v27 = *(*(*(*(a1 + 88) + 8 * *(v25 + 3) + 32) + 16) + 32);
                    v28 = *(v27 + 16);
                    v29 = (v27 + 32);
                    v30 = v28 + 1;
                    while (--v30)
                    {
                      v31 = v29 + 2;
                      v32 = *v29;
                      if (swift_conformsToProtocol2())
                      {
                        v33 = v32 == 0;
                      }

                      else
                      {
                        v33 = 1;
                      }

                      v29 = v31;
                      if (!v33)
                      {
                        v34 = *(v25 + 2);
                        v35 = *(*(a1 + 144) + 8 * *v25 + 32);
                        v36 = *(v35[2] + OBJC_IVAR____TtC3VFX13EntityManager_currentState);

                        if (v36 == 4)
                        {
                          v38 = *(v37 + 233);
                          v39 = *(v37 + 224);

                          v40 = v39 > 1;
                          if ((v38 & 1) == 0)
                          {
                            v40 = v39 > 0;
                          }
                        }

                        else
                        {

                          v40 = 1;
                        }

                        v41 = v35[24];
                        if (!v41 || (*(v41 + 8 * (v34 >> 6)) & (1 << v34)) == 0)
                        {
                          break;
                        }

                        if (v40)
                        {
                          *(v35[26] + 8 * (v34 >> 6)) |= 1 << v34;
                        }

                        v42 = v23 | (v22 << 32);

                        v43 = sub_1AF67CACC(&type metadata for ParticleSpawnState, &off_1F2567280, v42);

                        if (v43)
                        {

                          v44 = sub_1AF67CACC(&type metadata for ParticleBurstSpawn, &off_1F2567500, v42);

                          if (!v44)
                          {

                            v45 = sub_1AF67CACC(&type metadata for ParticlePeriodicBurstSpawn, &off_1F2567460, v42);

                            if (!v45)
                            {

                              v46 = sub_1AF67CACC(&type metadata for ParticleSpawnDuration, &off_1F2567780, v42);

                              if (!v46)
                              {
                                break;
                              }
                            }
                          }
                        }

                        goto LABEL_66;
                      }
                    }
                  }
                }

                ++v19;
                v14 = 2;
              }

              while (v19 != v18);
              goto LABEL_26;
            }

            goto LABEL_25;
          }
        }
      }
    }

LABEL_66:
    v14 = 0;
    goto LABEL_26;
  }

  return 2;
}

void sub_1AFB92AF4(uint64_t a1)
{
  if (!qword_1EB642E98)
  {
    sub_1AFB92B5C();
    v1 = sub_1AFDFE4C8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB642E98);
    }
  }
}

unint64_t sub_1AFB92B5C()
{
  result = qword_1EB630CB0;
  if (!qword_1EB630CB0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB630CB0);
  }

  return result;
}

uint64_t sub_1AFB92BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, unint64_t a6, uint64_t a7)
{
  v12 = *(a7 + 24);

  if (!HIDWORD(a6) && a6 == -1)
  {

    goto LABEL_7;
  }

  v13 = sub_1AF3C9078(a6);
  v15 = v14;

  if (!v15)
  {
LABEL_7:
    v15 = *(v12 + OBJC_IVAR____TtC3VFX13EntityManager_counters);
    if (v15)
    {
      v18 = sub_1AFDFE238();
      LODWORD(v15) = vfx_counters.addCounter(name:scope:kind:)(v18, v19, 0, 0, v15);
    }

    else
    {
    }

    goto LABEL_12;
  }

  v21 = a2;
  v16 = *(v12 + OBJC_IVAR____TtC3VFX13EntityManager_counters);
  if (v16)
  {
    *&v32[0] = v13;
    *(&v32[0] + 1) = v15;
    MEMORY[0x1B2718AE0](47, 0xE100000000000000);
    v17 = sub_1AFDFE238();
    MEMORY[0x1B2718AE0](v17);

    LODWORD(v15) = vfx_counters.addCounter(name:scope:kind:)(v13, v15, 0, 0, v16);
  }

  else
  {

    LODWORD(v15) = 0;
  }

  a2 = v21;
LABEL_12:
  *&v25 = a1;
  *(&v25 + 1) = a6;
  *&v26 = "ParticleRibbonSystem";
  *(&v26 + 1) = 20;
  LOBYTE(v27) = 2;
  *(&v27 + 1) = *v31;
  DWORD1(v27) = *&v31[3];
  *(&v27 + 1) = a1;
  *&v28 = &off_1F2551E38;
  *(&v28 + 1) = 700;
  *&v29 = a4;
  WORD4(v29) = 257;
  BYTE10(v29) = a5 & 1;
  HIDWORD(v29) = v15;
  *&v30 = a2;
  *(&v30 + 1) = a3;
  os_unfair_lock_lock(*(a7 + 56));
  v32[2] = v27;
  v32[3] = v28;
  v32[4] = v29;
  v32[5] = v30;
  v32[0] = v25;
  v32[1] = v26;
  sub_1AF6D8FC4(&v25, v24);
  sub_1AF64D800(0, 0, v32);
  sub_1AF64D800(0, 0, v32);
  sub_1AF6D8FFC(&v25);
  *(a7 + 160) = 257;
  os_unfair_lock_unlock(*(a7 + 56));
  return sub_1AF6D8FFC(&v25);
}

uint64_t sub_1AFB92E7C()
{

  return MEMORY[0x1EEE6BDD0](v0, 144, 7);
}

uint64_t sub_1AFB92EC8(uint64_t a1, uint64_t a2, char a3)
{
  if (((1 << a3) & 0x3A) != 0)
  {
    return sub_1AFA02874(v3 + 24);
  }

  return result;
}

uint64_t sub_1AFB92EEC()
{

  return MEMORY[0x1EEE6BDD0](v0, 152, 7);
}

uint64_t sub_1AFB92F34(uint64_t a1, uint64_t a2, char a3)
{
  if (((1 << a3) & 0x3A) != 0)
  {
    return sub_1AFA324E0((v3 + 24));
  }

  return result;
}

uint64_t sub_1AFB92FD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1AFB91B24(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1AFB93040(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AFB930A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AFB93108(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1AFB9246C(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1AFB93178()
{

  return MEMORY[0x1EEE6BDD0](v0, 168, 7);
}

uint64_t sub_1AFB931F8()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t getEnumTagSinglePayload for EmitterDescription.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE9)
  {
    goto LABEL_17;
  }

  if (a2 + 23 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 23) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 23;
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

      return (*a1 | (v4 << 8)) - 23;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 23;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v8 = v6 - 24;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EmitterDescription.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE9)
  {
    v4 = 0;
  }

  if (a2 > 0xE8)
  {
    v5 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
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

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 23;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 initializeWithCopy for NeighborGrid(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for NeighborGrid(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for NeighborGrid(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1AFB934BC()
{
  result = qword_1EB642EA0;
  if (!qword_1EB642EA0)
  {
    result = swift_getWitnessTable(aM_6, &type metadata for EmitterDescription.DebuggingOptions, v0, v1);
    atomic_store(result, &qword_1EB642EA0);
  }

  return result;
}

unint64_t sub_1AFB93514()
{
  result = qword_1EB642EA8;
  if (!qword_1EB642EA8)
  {
    result = swift_getWitnessTable(asc_1AFE9EDAC, &type metadata for EmitterDescription.DebuggingOptions, v0, v1);
    atomic_store(result, &qword_1EB642EA8);
  }

  return result;
}

unint64_t sub_1AFB9356C()
{
  result = qword_1EB642EB0;
  if (!qword_1EB642EB0)
  {
    result = swift_getWitnessTable(asc_1AFE9EE04, &type metadata for EmitterDescription.DebuggingOptions, v0, v1);
    atomic_store(result, &qword_1EB642EB0);
  }

  return result;
}

unint64_t sub_1AFB935C4()
{
  result = qword_1EB642EB8;
  if (!qword_1EB642EB8)
  {
    result = swift_getWitnessTable(aU_4, &type metadata for EmitterDescription.DebuggingOptions, v0, v1);
    atomic_store(result, &qword_1EB642EB8);
  }

  return result;
}

unint64_t sub_1AFB93618(uint64_t a1)
{
  *(a1 + 8) = sub_1AFB917E4();
  result = sub_1AFB91AD0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1AFB9364C()
{
  result = qword_1EB642EC0;
  if (!qword_1EB642EC0)
  {
    sub_1AFB936C8(255, &qword_1EB642EC8, &type metadata for EmitterDescription.PhysicsSimulation, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EB642EC0);
  }

  return result;
}

void sub_1AFB936C8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1AFB9371C()
{
  result = qword_1EB642ED0;
  if (!qword_1EB642ED0)
  {
    result = swift_getWitnessTable(a1_10, &type metadata for EmitterDescription.PhysicsSimulation, v0, v1);
    atomic_store(result, &qword_1EB642ED0);
  }

  return result;
}

unint64_t sub_1AFB93774()
{
  result = qword_1EB642ED8;
  if (!qword_1EB642ED8)
  {
    result = swift_getWitnessTable(byte_1AFE9F1A0, &type metadata for Seed.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642ED8);
  }

  return result;
}

unint64_t sub_1AFB937CC()
{
  result = qword_1EB642EE0;
  if (!qword_1EB642EE0)
  {
    result = swift_getWitnessTable(byte_1AFE9F290, &type metadata for NeighborGrid.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642EE0);
  }

  return result;
}

unint64_t sub_1AFB93824()
{
  result = qword_1EB642EE8;
  if (!qword_1EB642EE8)
  {
    result = swift_getWitnessTable(asc_1AFE9F380, &type metadata for EmitterDescription.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642EE8);
  }

  return result;
}

unint64_t sub_1AFB9387C()
{
  result = qword_1EB631E20;
  if (!qword_1EB631E20)
  {
    result = swift_getWitnessTable(byte_1AFE9F0A0, &type metadata for EmitterReference, v0, v1);
    atomic_store(result, &qword_1EB631E20);
  }

  return result;
}

unint64_t sub_1AFB938D4()
{
  result = qword_1ED725338;
  if (!qword_1ED725338)
  {
    result = swift_getWitnessTable(a9_6, &type metadata for EmitterDescription.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED725338);
  }

  return result;
}

unint64_t sub_1AFB9392C()
{
  result = qword_1ED725340;
  if (!qword_1ED725340)
  {
    result = swift_getWitnessTable(aQ_17, &type metadata for EmitterDescription.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED725340);
  }

  return result;
}

unint64_t sub_1AFB93984()
{
  result = qword_1EB642EF8;
  if (!qword_1EB642EF8)
  {
    result = swift_getWitnessTable(asc_1AFE9F1C8, &type metadata for NeighborGrid.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642EF8);
  }

  return result;
}

unint64_t sub_1AFB939DC()
{
  result = qword_1EB642F00;
  if (!qword_1EB642F00)
  {
    result = swift_getWitnessTable(aA_16, &type metadata for NeighborGrid.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642F00);
  }

  return result;
}

unint64_t sub_1AFB93A34()
{
  result = qword_1ED7240A8;
  if (!qword_1ED7240A8)
  {
    result = swift_getWitnessTable(byte_1AFE9F0D8, &type metadata for Seed.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED7240A8);
  }

  return result;
}

unint64_t sub_1AFB93A8C()
{
  result = qword_1ED7240B0;
  if (!qword_1ED7240B0)
  {
    result = swift_getWitnessTable(a1_11, &type metadata for Seed.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED7240B0);
  }

  return result;
}

unint64_t sub_1AFB93AE0()
{
  result = qword_1ED725328;
  if (!qword_1ED725328)
  {
    result = swift_getWitnessTable(byte_1AFE9EFA0, &type metadata for EmitterDescription.PhysicsSimulation, v0, v1);
    atomic_store(result, &qword_1ED725328);
  }

  return result;
}

uint64_t sub_1AFB93B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23.n128_f64[0] = MEMORY[0x1EEE9AC00](v16);
  v24 = v28 - v22;
  if (!v17)
  {
    result = (v21)(0, 0, v28 - v22, v23.n128_f64[0]);
    v15 = v24;
    if (!v11)
    {
      return result;
    }

    return (*(v13 + 32))(a11, v15, a8);
  }

  v25 = *(*(v20 - 8) + 72);
  v26 = *(*(v19 - 8) + 72);
  if (v25 != v26)
  {
    v18 = v26 * v18 / v25;
  }

  result = v21(v17, v18, v15, v23);
  if (v11)
  {
    return (*(v13 + 32))(a11, v15, a8);
  }

  return result;
}

uint64_t sub_1AFB93CB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v18 = qword_1ED73B840;
  v19 = 0;
  v20 = 2;
  v21 = 0;
  v22 = 2;
  v23 = 0;
  sub_1AF5FD7D8(0, &qword_1ED7269A0, sub_1AF5C5300);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = &type metadata for Particle;
  *(inited + 40) = &off_1F252D7A8;
  sub_1AF5F58E4(inited, 1, v14);
  swift_setDeallocating();
  sub_1AFA1CF6C(0);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_1AFE431C0;
  *(v7 + 56) = &type metadata for EmitterReference;
  *(v7 + 64) = &off_1F2563D20;
  *(v7 + 32) = a1;
  v8 = (v7 + 32);
  sub_1AF5FC13C(v7, v15, xmmword_1AFE431C0);
  sub_1AF692DB0(v14);
  swift_setDeallocating();
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v8);
  if ((a2 & 0x100000000) != 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = a2;
  }

  v11 = v15[2];
  v12 = v16;
  v13 = v17;
  *a3 = v15[0];
  *(a3 + 8) = v10;
  *(a3 + 12) = (a2 & 0x100000000uLL) >> 31;
  *(a3 + 16) = v11;
  *(a3 + 24) = v12;
  *(a3 + 32) = v13;
  return result;
}

uint64_t sub_1AFB93E58()
{
  v1 = *v0;
  v2 = *(v0 + 9);
  v3 = *(v0 + 8);

  v4 = v3 == -1 && v2 == 0;
  if (!v4 && (v3 & 0x80000000) == 0 && *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) > v3)
  {
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v3);
    v6 = v2 == -1 || v5[2] == v2;
    if (v6 && (sub_1AF685724(*(*(v1 + 144) + 8 * *v5 + 32), *(v5 + 2), 104) & 0x100000000) == 0)
    {
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v8 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v8);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF2EA30);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFB9402C()
{
  v1 = *v0;
  v2 = *(v0 + 9);
  v3 = *(v0 + 8);

  v4 = v3 == -1 && v2 == 0;
  if (v4 || (v3 & 0x80000000) != 0 || *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) <= v3 || ((v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v3), v2 != -1) ? (v6 = v5[2] == v2) : (v6 = 1), !v6 || (v7 = sub_1AF6856B0(*(*(v1 + 144) + 8 * *v5 + 32), *(v5 + 2), 104), v7 == 3)))
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v10 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v10);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF2EA30);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    result = sub_1AFDFE518();
    __break(1u);
  }

  else
  {
    v8 = v7;

    return v8;
  }

  return result;
}

uint64_t sub_1AFB941E8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = sub_1AFDFDD58();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - v9;
  v11 = *(v3 + 8);

  sub_1AF67CB9C(v11, a1, v10);

  v12 = *(a1 - 8);
  v13 = *(v12 + 48);
  if (v13(v10, 1, a1) != 1)
  {
    return (*(v12 + 32))(a3, v10, a1);
  }

  (*(*(*(a2 + 8) + 8) + 8))(a1);
  result = (v13)(v10, 1, a1);
  if (result != 1)
  {
    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_1AFB943A8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 44);
  v3 = *(v0 + 40);

  v4 = v3 == -1 && v2 == 0;
  if (!v4 && (v3 & 0x80000000) == 0 && *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) > v3)
  {
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v3);
    v6 = v2 == -1 || v5[2] == v2;
    if (v6 && (sub_1AF685724(*(*(v1 + 144) + 8 * *v5 + 32), *(v5 + 2), 104) & 0x100000000) == 0)
    {
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v8 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v8);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF2EA30);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFB9457C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 40);
  v5 = *(*(a4 + 8) + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);

  v6 = v5;

  sub_1AFCBF008(v4, sub_1AFB97B0C);
}

uint64_t sub_1AFB94680()
{
  v1 = *(v0 + 32);

  sub_1AFCBF008(v1, sub_1AFB97B54);
}

uint64_t sub_1AFB946F8()
{
  v1 = *v0;
  v2 = *(v0 + 9);
  v3 = *(v0 + 8);

  v4 = v3 == -1 && v2 == 0;
  if (v4 || (v3 & 0x80000000) != 0 || *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) <= v3 || ((v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v3), v2 != -1) ? (v6 = v5[2] == v2) : (v6 = 1), !v6 || (v7 = sub_1AF685798(*(*(v1 + 144) + 8 * *v5 + 32), *(v5 + 2), 848), (v8 & 0x100) != 0)))
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v11 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v11);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0x5272657474696D45, 0xEE00656D69746E75);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    result = sub_1AFDFE518();
    __break(1u);
  }

  else
  {
    v9 = v7;

    return v9;
  }

  return result;
}

uint64_t sub_1AFB948D8()
{
  v1 = *v0;
  v2 = v0[4];

  v3 = sub_1AF67E868(v2, v1);
  if (v3 > 1)
  {
    if (v3 == 2)
    {
    }

    else
    {
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
      v5 = sub_1AF656F38();
      MEMORY[0x1B2718AE0](v5);

      MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
      MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF2EA30);
      MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
      result = sub_1AFDFE518();
      __break(1u);
    }
  }

  else
  {
    if (v3)
    {
      sub_1AF68B2C0(v2, v1, &v6);
    }

    else
    {
      sub_1AF3C9244(v2, &v6);
    }
  }

  return result;
}

uint64_t sub_1AFB94ABC()
{
  v1 = *v0;
  v2 = *(v0 + 9);
  v3 = *(v0 + 8);

  v4 = v3 == -1 && v2 == 0;
  if (v4 || (v3 & 0x80000000) != 0 || *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) <= v3 || ((v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v3), v2 != -1) ? (v6 = v5[2] == v2) : (v6 = 1), !v6 || (v7 = sub_1AF685A48(*(*(v1 + 144) + 8 * *v5 + 32), *(v5 + 2), 104), v7 == 2)))
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v10 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v10);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF2EA30);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    result = sub_1AFDFE518();
    __break(1u);
  }

  else
  {
    v8 = v7;

    return v8 & 1;
  }

  return result;
}

double sub_1AFB94C78()
{
  if (sub_1AFB9402C() > 1u)
  {
    v7 = *(v0 + 8);

    sub_1AF3C9244(v7, &v21);

    if (v22)
    {

      v18 = sub_1AF5B0544(v7);

      return v18;
    }

    else
    {
      return *v21.i64;
    }
  }

  else
  {
    v1 = *(v0 + 32);

    sub_1AFB95040(v1, &v19);
    v14 = v19.columns[1];
    v16 = v19.columns[0];
    v10 = v19.columns[3];
    v12 = v19.columns[2];

    if (v20)
    {
      v2 = -1;
    }

    else
    {
      v2 = 0;
    }

    v3 = vdupq_n_s32(v2);
    v17 = vbslq_s8(v3, xmmword_1AFE20150, v16);
    v15 = vbslq_s8(v3, xmmword_1AFE20160, v14);
    v13 = vbslq_s8(v3, xmmword_1AFE20180, v12);
    v11 = vbslq_s8(v3, xmmword_1AFE201A0, v10);
    v4 = *(v0 + 8);

    sub_1AF3C9244(v4, &v21);

    if (v22)
    {

      *v5.i64 = sub_1AF5B0544(v4);
      v9 = v5;

      v6 = v9;
    }

    else
    {
      v6 = v21;
    }

    *&result = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v17, v6.f32[0]), v15, *v6.f32, 1), v13, v6, 2), v11, v6, 3).u64[0];
  }

  return result;
}

uint64_t sub_1AFB94E78(uint64_t (*a1)(void, void, uint64_t, __n128))
{
  v3 = *v1;
  v4 = *(v1 + 9);
  v5 = *(v1 + 8);

  v6 = v5 == -1 && v4 == 0;
  if (v6 || (v5 & 0x80000000) != 0 || *(v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) <= v5 || ((v7 = (*(v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v5), v4 != -1) ? (v8 = v7[2] == v4) : (v8 = 1), !v8 || (v9 = (a1)(*(*(v3 + 144) + 8 * *v7 + 32), *(v7 + 2), 848)) == 0))
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v12 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v12);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0x5272657474696D45, 0xEE00656D69746E75);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    result = sub_1AFDFE518();
    __break(1u);
  }

  else
  {
    v10 = v9;

    return v10;
  }

  return result;
}

void sub_1AFB95040(unint64_t a1@<X0>, simd_float4x4 *a2@<X8>)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    if (HIDWORD(a1) == 0xFFFFFFFF || v5[2] == HIDWORD(a1))
    {
      v6 = sub_1AF6856B0(*(*(v2 + 144) + 8 * *v5 + 32), *(v5 + 2), 104);
      if (v6 <= 1)
      {
        if (v6)
        {
          sub_1AF67D000(a1, v2, &v11);
          v13 = v11;
          v7 = v12;
          goto LABEL_15;
        }

        sub_1AF3C9330(a1, &v9);
        if ((v10 & 1) == 0)
        {
          v7 = 0;
          v13 = v9;
          goto LABEL_15;
        }

        sub_1AF3C9244(a1, &v11);
        if ((v12 & 1) == 0)
        {
          v13 = __invert_f4(v11);
          v7 = 0;
LABEL_15:
          *a2 = v13;
          a2[1].columns[0].i8[0] = v7;
          return;
        }

LABEL_12:
        v7 = 1;
        v13.columns[0] = 0uLL;
        v13.columns[1] = 0uLL;
        v13.columns[2] = 0uLL;
        v13.columns[3] = 0uLL;
        goto LABEL_15;
      }

      if (v6 == 2)
      {
        goto LABEL_12;
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v8 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v8);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF2EA30);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  sub_1AFDFE518();
  __break(1u);
}

uint64_t (*sub_1AFB95274(_OWORD *a1, uint64_t a2, uint64_t a3))(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  v7 = swift_allocObject();
  v8 = a1[5];
  *(v7 + 104) = a1[4];
  *(v7 + 120) = v8;
  v9 = a1[7];
  *(v7 + 136) = a1[6];
  *(v7 + 152) = v9;
  v10 = a1[1];
  *(v7 + 40) = *a1;
  *(v7 + 56) = v10;
  v11 = a1[3];
  *(v7 + 72) = a1[2];
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *(v7 + 32) = v3;
  *(v7 + 88) = v11;
  swift_unknownObjectRetain();
  sub_1AF68A8E0(a1, &v13);
  return sub_1AFB97BD8;
}

void sub_1AFB95330(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a5 <= 2u)
  {
    if (!a5)
    {
      ObjectType = swift_getObjectType();
      v13 = swift_conformsToProtocol2();
      if (v13)
      {
        (*(v13 + 24))(a6, a3, a4, 0, ObjectType, v13);
        return;
      }

      goto LABEL_10;
    }

    if (a5 != 1)
    {
      return;
    }
  }

  v10 = swift_getObjectType();
  v11 = swift_conformsToProtocol2();
  if (!v11)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  (*(v11 + 32))(a6, a3, a4, a5, v10, v11);
}

void sub_1AFB95460(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, float32x4_t *a6, uint64_t a7, uint64_t a8, char a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v17 = a2;
  v18 = a1;
  if (*(a1 + 528) > 0 || !*a2)
  {
    v19 = (*(a13 + 24))();
    v65 = v18;
    v62 = a4;
    if (!v19)
    {
LABEL_17:
      v26 = *(v18 + 320);
      v77 = v26;
      v61 = v17;

      if (a6)
      {

        sub_1AF490060(a6);
        v26 = v77;
      }

      sub_1AFDFF308();
      swift_unknownObjectRetain();

      sub_1AF88352C(v71, v62, a5, a8, v26);
      v27 = sub_1AFDFF2E8();
      *&v72 = v62;
      *(&v72 + 1) = a5;
      v73 = 0;
      v74 = a8;
      v75 = v26;
      v76 = v27;
      v28 = sub_1AF73BD84(&v72, 0, a9 & 1, a10);
      v30 = v29;

      swift_unknownObjectRelease();

      if (!v28)
      {
        if (a9)
        {

          return;
        }

        sub_1AFDFE218();

        v66 = 0x20676E697373694DLL;
        v67 = 0xEF206C656E72656BLL;
        MEMORY[0x1B2718AE0](v62, a5);
        goto LABEL_66;
      }

      v31 = *(a13 + 32);
      v32 = swift_unknownObjectRetain();
      v64 = v28;
      v31(v32, a12, a13);
      v33 = *(a13 + 56);

      v33(v62, a5, a12, a13);
      if (a6)
      {
        v34 = a6;
      }

      else
      {
        v34 = MEMORY[0x1E69E7CC0];
      }

      (*(a13 + 80))(v34, a12, a13);
      v17 = v61;
LABEL_24:
      v35 = *v17;
      if (!*v17)
      {
        goto LABEL_30;
      }

      v36 = *(v65 + 424);
      v63 = *(v65 + 432);
      if (v36)
      {
        v37 = *(v65 + 440);
        if (*(v65 + 336))
        {
          v38 = *(v65 + 512);
        }

        else
        {
          LODWORD(v38) = 0;
        }

        ObjectType = swift_getObjectType();
        v40 = *(v65 + 344);
        v41 = (*(v65 + 352) + *(v65 + 368) * v38) | (*(v65 + 368) << 32);
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        sub_1AF6F34C4(v40, v41, 0, 4, ObjectType);
        sub_1AF6F353C(v36, v63, v37, 0);
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRetain();
      }

      v42 = v17[1];
      v43 = v17[2];
      v44 = v17[5];

      v45 = sub_1AF67ECF0(v44, v42);

      if (v45 == 2 || (, v46 = sub_1AF3CD0F8(v43), v48 = v47, , (v48 & 1) != 0))
      {
        v46 = 0;
        v49 = 1;
      }

      else
      {
        if ((v45 & 1) == 0)
        {
          v46 = 0;
        }

        v49 = v45 ^ 1;
      }

      v50 = *(a11 + 45);
      if (v50 == 3)
      {
        if (v49)
        {
          swift_getObjectType();
          [v35 setBuffer:*(v65 + 144) offset:60 atIndex:0];
          v51 = v63 + 96;
LABEL_61:
          sub_1AF6F46F4(v64, v36, v51);
          goto LABEL_62;
        }

        sub_1AF442324(v65, &v66);
        if (v46 == -1)
        {
          v57 = 15;
        }

        else
        {
          v57 = v46;
        }

        swift_getObjectType();
        [v35 setBuffer:v68 offset:4 * v57 atIndex:0];
        sub_1AF58D38C(&v66);
        sub_1AF442324(v65, &v66);
        v58 = v69;
        v59 = v70 + 12 * v46 + 508;
LABEL_59:
        sub_1AF58D38C(&v66);
        sub_1AF6F46F4(v64, v58, v59);
LABEL_62:
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return;
      }

      if (v50 == 2)
      {
        if ((v49 & 1) == 0)
        {
          sub_1AF442324(v65, &v66);
          if (v46 == -1)
          {
            v60 = 15;
          }

          else
          {
            v60 = v46;
          }

          swift_getObjectType();
          [v35 setBuffer:v68 offset:4 * v60 atIndex:0];
          sub_1AF58D38C(&v66);
          sub_1AF442324(v65, &v66);
          v58 = v69;
          v59 = v70 + 12 * v46 + 700;
          goto LABEL_59;
        }

        if (*(v65 + 120) != 1)
        {
          swift_getObjectType();
          [v35 setBuffer:*(v65 + 144) offset:60 atIndex:0];
          v51 = v63 + 108;
          goto LABEL_61;
        }

        v52 = 0;
        v53 = 0;
        v54 = *(v65 + 128);
        v55 = v63 + 700;
        v56 = v64;
        do
        {
          if (v53 >> 6) < *(v54 + 24) && ((*(*(v54 + 32) + 8 * (v53 >> 6)) >> v53))
          {
            swift_getObjectType();
            [v35 setBuffer:*(v65 + 144) offset:v52 atIndex:0];
            sub_1AF6F46F4(v56, v36, v55);
            v56 = v64;
          }

          ++v53;
          v52 += 4;
          v55 += 12;
        }

        while (v53 != 16);
        swift_unknownObjectRelease();
LABEL_30:
        swift_unknownObjectRelease();
        return;
      }

      v66 = 0;
      v67 = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD000000000000022, 0x80000001AFF42A20);
      LOBYTE(v77) = v50;
      sub_1AFDFE458();
LABEL_66:
      sub_1AFDFE518();
      __break(1u);
      return;
    }

    v64 = v19;
    if ((*(a13 + 48))(a12, a13) == a4 && v20 == a5)
    {
    }

    else
    {
      v22 = sub_1AFDFEE28();

      if ((v22 & 1) == 0)
      {
LABEL_16:
        swift_unknownObjectRelease();
        v18 = v65;
        goto LABEL_17;
      }
    }

    if (a6)
    {
      v23 = a6;
    }

    else
    {
      v23 = MEMORY[0x1E69E7CC0];
    }

    v24 = *(a13 + 72);

    v25 = v24(a12, a13);
    LOBYTE(v24) = sub_1AFB7B210(v23, v25);

    if (v24)
    {
      goto LABEL_24;
    }

    goto LABEL_16;
  }
}

void sub_1AFB95C50(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    if (HIDWORD(a1) == 0xFFFFFFFF || v5[2] == HIDWORD(a1))
    {
      v6 = sub_1AF6856B0(*(*(v2 + 144) + 8 * *v5 + 32), *(v5 + 2), 104);
      if (v6 <= 1)
      {
        if (v6)
        {
          sub_1AF68B2C0(a1, v2, &v13);
          v10 = v13;
          v11 = v14;
          v8 = v15;
          v9 = v16;
          v7 = v17;
          goto LABEL_13;
        }

        sub_1AF3C9244(a1, &v13);
        if ((v17 & 1) == 0)
        {
          v7 = 0;
          v8 = v15;
          v9 = v16;
          v10 = v13;
          v11 = v14;
LABEL_13:
          *a2 = v10;
          *(a2 + 16) = v11;
          *(a2 + 32) = v8;
          *(a2 + 48) = v9;
          *(a2 + 64) = v7;
          return;
        }

LABEL_11:
        v7 = 1;
        v10 = 0uLL;
        v11 = 0uLL;
        v8 = 0uLL;
        v9 = 0uLL;
        goto LABEL_13;
      }

      if (v6 == 2)
      {
        goto LABEL_11;
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v12 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v12);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF2EA30);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  sub_1AFDFE518();
  __break(1u);
}

uint64_t sub_1AFB95E64@<X0>(unint64_t a1@<X0>, float32x4_t *a2@<X8>)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    if (HIDWORD(a1) == 0xFFFFFFFF || v5[2] == HIDWORD(a1))
    {
      result = sub_1AF6856B0(*(*(v2 + 144) + 8 * *v5 + 32), *(v5 + 2), 104);
      if (result <= 1u)
      {
        if (result)
        {
          sub_1AF67DCBC(a1, v2);
          v17 = v7;
          v18 = v8;
          v19 = v9;
          v20 = v10;
          result = sub_1AF3C9244(a1, &v21);
          v11 = 0;
          if (v25)
          {
            v12 = v17;
            v13 = v18;
            v14 = v19;
            v15 = v20;
          }

          else
          {
            v12 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v17, v21.f32[0]), v18, *v21.f32, 1), v19, v21, 2), v20, v21, 3);
            v13 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v17, v22.f32[0]), v18, *v22.f32, 1), v19, v22, 2), v20, v22, 3);
            v14 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v17, v23.f32[0]), v18, *v23.f32, 1), v19, v23, 2), v20, v23, 3);
            v15 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v17, v24.f32[0]), v18, *v24.f32, 1), v19, v24, 2), v20, v24, 3);
          }

          goto LABEL_15;
        }

        goto LABEL_12;
      }

      if (result == 2)
      {
        result = sub_1AF3C9244(a1, &v21);
        if ((v25 & 1) == 0)
        {
          v11 = 0;
          v14 = v23;
          v15 = v24;
          v12 = v21;
          v13 = v22;
          goto LABEL_15;
        }

LABEL_12:
        v11 = 1;
        v12 = 0uLL;
        v13 = 0uLL;
        v14 = 0uLL;
        v15 = 0uLL;
LABEL_15:
        *a2 = v12;
        a2[1] = v13;
        a2[2] = v14;
        a2[3] = v15;
        a2[4].i8[0] = v11;
        return result;
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v16 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v16);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF2EA30);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

void sub_1AFB960DC(unint64_t a1@<X0>, float32x4_t *a2@<X8>)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    if (HIDWORD(a1) == 0xFFFFFFFF || v5[2] == HIDWORD(a1))
    {
      v6 = sub_1AF6856B0(*(*(v2 + 144) + 8 * *v5 + 32), *(v5 + 2), 104);
      if (v6 <= 1)
      {
        if (v6)
        {
          sub_1AF68B2C0(a1, v2, v18);
          v14 = v18[0];
          v15 = v18[1];
          v16 = v18[2];
          v17 = v18[3];
          v7 = v19;
          sub_1AF3C9330(a1, &v20);
          if (v21)
          {
            sub_1AF3C9244(a1, &v22);
            if (v23)
            {
              v10 = v16;
              v11 = v17;
              v8 = v14;
              v9 = v15;
              goto LABEL_21;
            }

            v12 = __invert_f4(v22);
          }

          else
          {
            v12 = v20;
          }

          v10 = v16;
          v11 = v17;
          v8 = v14;
          v9 = v15;
          if ((v7 & 1) == 0)
          {
            v7 = 0;
            v8 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12.columns[0], v14.f32[0]), v12.columns[1], *v14.f32, 1), v12.columns[2], v14, 2), v12.columns[3], v14, 3);
            v9 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12.columns[0], v15.f32[0]), v12.columns[1], *v15.f32, 1), v12.columns[2], v15, 2), v12.columns[3], v15, 3);
            v10 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12.columns[0], v16.f32[0]), v12.columns[1], *v16.f32, 1), v12.columns[2], v16, 2), v12.columns[3], v16, 3);
            v11 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12.columns[0], v17.f32[0]), v12.columns[1], *v17.f32, 1), v12.columns[2], v17, 2), v12.columns[3], v17, 3);
          }

          goto LABEL_21;
        }

        goto LABEL_8;
      }

      if (v6 == 2)
      {
        sub_1AF3C9330(a1, &v20);
        if ((v21 & 1) == 0)
        {
          v7 = 0;
          v10 = v20.columns[2];
          v11 = v20.columns[3];
          v8 = v20.columns[0];
          v9 = v20.columns[1];
          goto LABEL_21;
        }

        sub_1AF3C9244(a1, &v22);
        if ((v23 & 1) == 0)
        {
          v24 = __invert_f4(v22);
          v8 = v24.columns[0];
          v9 = v24.columns[1];
          v10 = v24.columns[2];
          v11 = v24.columns[3];
          v7 = 0;
          LOBYTE(v18[0]) = 0;
          goto LABEL_21;
        }

LABEL_8:
        v7 = 1;
        v8 = 0uLL;
        v9 = 0uLL;
        v10 = 0uLL;
        v11 = 0uLL;
LABEL_21:
        *a2 = v8;
        a2[1] = v9;
        a2[2] = v10;
        a2[3] = v11;
        a2[4].i8[0] = v7;
        return;
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v13 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v13);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF2EA30);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  sub_1AFDFE518();
  __break(1u);
}

void sub_1AFB963D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float a6, float a7)
{
  v8 = v7;
  v11 = *(a2 + 104);
  v53[0] = *(a2 + 88);
  v53[1] = v11;
  v54 = *(a2 + 120);

  sub_1AF6B06C0(v12, v53, 0x200000000, &v37);

  v29 = v37;
  if (v37)
  {
    v13 = v41;
    v14 = v43;
    v45 = v38;
    v46 = v39;
    v27 = v44;
    v28 = v42;
    if (v44 >= 1 && v41)
    {
      v15 = *(v42 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v16 = *(v43 + 32);
      v17 = (v40 + 24);
      v26 = v15;
      while (1)
      {
        v62 = v8;
        v19 = *(v17 - 6);
        v18 = *(v17 - 5);
        v20 = *(v17 - 4);
        v35 = *v17;
        v36 = *(v17 - 1);
        v21 = v17[2];
        v34 = v17[1];
        if (v15)
        {
          v22 = *(v21 + 376);

          os_unfair_lock_lock(v22);
          os_unfair_lock_lock(*(v21 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v16);
        v23 = *(v14 + 64);
        v55[0] = *(v14 + 48);
        v55[1] = v23;
        v56 = *(v14 + 80);
        v24 = *(*(*(*(v21 + 40) + 16) + 32) + 16) + 1;
        *(v14 + 48) = ecs_stack_allocator_allocate(*(v14 + 32), 48 * v24, 8);
        *(v14 + 56) = v24;
        *(v14 + 72) = 0;
        *(v14 + 80) = 0;
        *(v14 + 64) = 0;
        LOBYTE(v50) = 1;
        v57[0] = v28;
        v57[1] = v21;
        v57[2] = v14;
        v57[3] = v20;
        v57[4] = (v18 - v19 + v20);
        v57[5] = v27;
        v57[6] = v19;
        v57[7] = v18;
        v57[8] = 0;
        v57[9] = 0;
        v58 = 1;
        v59 = v36;
        v60 = v35;
        v61 = v34;
        v25 = v62;
        sub_1AFB966A0(v57, a3, a1, a4, a5, a6, a7);
        if (v25)
        {
          break;
        }

        v47 = v29;
        v48 = v45;
        v49 = v46;
        sub_1AF630994(v14, &v47, v55);
        v8 = 0;
        sub_1AF62D29C(v21);
        ecs_stack_allocator_pop_snapshot(v16);
        v15 = v26;
        if (v26)
        {
          os_unfair_lock_unlock(*(v21 + 344));
          os_unfair_lock_unlock(*(v21 + 376));
        }

        v17 += 6;
        if (!--v13)
        {
          goto LABEL_12;
        }
      }

      v50 = v29;
      v51 = v45;
      v52 = v46;
      sub_1AF630994(v14, &v50, v55);
      sub_1AF62D29C(v21);
      ecs_stack_allocator_pop_snapshot(v16);
      os_unfair_lock_unlock(*(v21 + 344));
      os_unfair_lock_unlock(*(v21 + 376));
      __break(1u);
    }

    else
    {
LABEL_12:
      sub_1AF5D1564(&v37);
    }
  }
}

uint64_t sub_1AFB966A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float a6, float a7)
{
  v12 = sub_1AF6AF8AC(a2, a4, a5);
  v17 = a6;
  v18 = a7;
  v19 = a1;
  v20 = a3;
  return sub_1AFB93B58(MEMORY[0x1E69E6448], sub_1AFB97B78, v16, v12, v13, a4, MEMORY[0x1E69E6448], MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v15);
}

uint64_t sub_1AFB9675C(uint64_t result, double a2, float a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = *(a5 + 48);
  v6 = *(a5 + 56);
  if (*&a2 == a3)
  {
    v8 = v6 - v7;
    if (v6 != v7)
    {
      v9 = *(a5 + 48);
      if (v8 < 8)
      {
        goto LABEL_7;
      }

      v9 = v7 + (v8 & 0xFFFFFFFFFFFFFFF8);
      v10 = vdupq_lane_s32(*&a2, 0);
      v11 = (result + 4 * v7 + 16);
      v12 = v8 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v11[-1] = v10;
        *v11 = v10;
        v11 += 2;
        v12 -= 8;
      }

      while (v12);
      if (v8 != (v8 & 0xFFFFFFFFFFFFFFF8))
      {
LABEL_7:
        v13 = v6 - v9;
        v14 = (result + 4 * v9);
        do
        {
          *v14++ = LODWORD(a2);
          --v13;
        }

        while (v13);
      }
    }
  }

  else
  {
    v15 = v6 - v7;
    if (v15)
    {
      v16 = a3 - *&a2;
      v17 = (result + 4 * v7);
      do
      {
        v19 = a6[1];
        v18 = a6[2];
        v20 = a6[3] ^ v19;
        v21 = a6[4] ^ v18;
        a6[1] = v21 ^ v19;
        a6[2] = v20 ^ v18;
        a6[3] = v20 ^ (v18 << 17);
        a6[4] = __ROR8__(v21, 19);
        *v17++ = (v16 * vcvts_n_f32_u64((9 * ((((5 * v18) >> 32) >> 25) | (640 * v18))) & 0xFFFFFF, 0x18uLL)) + *&a2;
        --v15;
      }

      while (v15);
    }
  }

  return result;
}

uint64_t sub_1AFB96830(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((*(result + 336) & 1) == 0)
  {
    v12 = result;
    result = swift_weakLoadStrong();
    if (result)
    {
      if (!v12[43])
      {
        v102 = a6;
        v109 = v7;
        v15 = *(a3 + 16);
        MinConstantBufferAlignment = CFXGPUDeviceGetMinConstantBufferAlignment(v15, v13, v14);
        v17 = (MinConstantBufferAlignment + 279) & -MinConstantBufferAlignment;
        v117 = a3;
        CFXBufferAllocatorPerFrameAllocateWithLength(*(a3 + 232), v17);
        v19 = v18;
        v12[43] = v20;
        v12[44] = v18;
        v12[45] = HIDWORD(v18);
        v12[46] = v17;
        v21 = swift_unknownObjectRetain();
        v22 = sub_1AF6F2CC8(v21, v19);
        v25 = CFXGPUDeviceGetMinConstantBufferAlignment(v15, v23, v24);
        v26 = (v25 + 991) & -v25;
        v124 = v15;
        v29 = CFXGPUDeviceGetMinConstantBufferAlignment(v15, v27, v28);
        bzero(v22, (v29 + 279) & -v29);
        *v22 = 0;
        *(v22 + 2) = 0;
        v115 = v22;
        *(v22 + 3) = v26;
        sub_1AF776050(0x1Au, a2);
        for (i = a2; a2; v26 = (v26 + v39 * a4 + v42 - 1) & -v42)
        {
          v30 = __clz(__rbit64(a2));
          v31 = sub_1AFB79288(v30);
          if (v31 == 28)
          {
            break;
          }

          v32 = v31;
          v33 = ((1 << v30) & a2) != 0 ? ~(1 << v30) : -1;
          a2 &= v33;
          v34 = sub_1AFB79138(v31);
          v35 = sub_1AFB79124(v32);
          v36 = word_1AFE9F852[v32];
          v37 = sub_1AF64118C(v34);
          v38 = &v115[8 * v35];
          *v38 = v26;
          *(v38 + 2) = v36;
          *(v38 + 3) = v37;
          v39 = sub_1AF64118C(v34);
          v42 = CFXGPUDeviceGetMinConstantBufferAlignment(v124, v40, v41);
        }

        CFXBufferAllocatorPerFrameAllocateWithLength(*(v117 + 232), v26);
        v44 = v43;
        v46 = HIDWORD(v45);
        v47 = v45;
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        v12[53] = v44;
        v12[54] = v47;
        v12[55] = v46;
        v12[56] = a4;
        v12[57] = i;
        v48 = [swift_unknownObjectRetain() storageMode];
        swift_unknownObjectRelease();
        if (v48 == 2)
        {
          v49 = 0;
        }

        else
        {
          v50 = [swift_unknownObjectRetain() contents];
          v51 = v44;
          v49 = &v50[v47];
        }

        v52 = v109;
        *v49 = a4;
        *(v49 + 12) = 0;
        *(v49 + 4) = 0;
        v53 = sub_1AFB946F8();
        if (v54)
        {
          v55 = a4;
        }

        else
        {
          v55 = v53;
        }

        *(v49 + 7) = v55;
        v49[120] = sub_1AFBF1718(&type metadata for Color) != 0;
        if (sub_1AFBF1718(&type metadata for Scale1))
        {
          v56 = 1;
          v57 = i;
        }

        else
        {
          v57 = i;
          if (sub_1AFBF1718(&type metadata for Scale2))
          {
            v56 = 1;
          }

          else
          {
            v56 = sub_1AFBF1718(&type metadata for Scale3) != 0;
          }
        }

        v49[121] = v56;
        sub_1AFB948D8();
        *(v49 + 2) = v58;
        *(v49 + 3) = v59;
        *(v49 + 4) = v60;
        *(v49 + 5) = v61;
        if (*(v102 + 80) >= 1)
        {
          v104 = *(v102 + 56);
          if (v104)
          {
            v62 = 0;
            v63 = 0;
            v64 = *(v102 + 72);
            v108 = v64[4];
            v107 = *(*(v102 + 64) + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
            v65 = *(v102 + 16);
            v120[0] = *v102;
            v120[1] = v65;
            v103 = *(v102 + 40);
            v121 = *(v102 + 32);
            v113 = v49;
            v118 = v64;
            while (1)
            {
              v106 = v62;
              v66 = (v103 + 48 * v62);
              v67 = v66[1];
              v111 = *v66;
              v116 = v66[2];
              v68 = *(v66 + 5);
              if (v107)
              {
                v69 = *(v68 + 376);

                os_unfair_lock_lock(v69);
                os_unfair_lock_lock(*(v68 + 344));
              }

              else
              {
              }

              v110 = v52;
              ecs_stack_allocator_push_snapshot(v108);
              v70 = *(v64 + 4);
              v122[0] = *(v64 + 3);
              v122[1] = v70;
              v123 = v64[10];
              v71 = *(*(*(*(v68 + 40) + 16) + 32) + 16) + 1;
              v64[6] = ecs_stack_allocator_allocate(v64[4], 48 * v71, 8);
              v64[7] = v71;
              v64[9] = 0;
              v64[10] = 0;
              v64[8] = 0;
              if (v57)
              {
                break;
              }

LABEL_51:
              v64 = v118;
              sub_1AF630994(v118, v120, v122);
              v52 = v110;
              v57 = i;
              if (*(v118[13] + 16))
              {

                sub_1AF62F348(v90, v68);

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v92 = v118[13];
                if (isUniquelyReferenced_nonNull_native)
                {
                  v93 = v92[2];
                  v94 = swift_isUniquelyReferenced_nonNull_native();
                  v118[13] = v92;
                  if ((v94 & 1) == 0)
                  {
                    v92 = sub_1AF420EA0(0, v93, 1, v92);
                    v118[13] = v92;
                  }

                  sub_1AF43A540(0);
                  swift_arrayDestroy();
                  if (v93)
                  {
                    v95 = v92[2] - v93;
                    memmove(v92 + 4, &v92[9 * v93 + 4], 72 * v95);
                    v92[2] = v95;
                    v64 = v118;
                  }

                  v64[13] = v92;
                }

                else
                {
                  v96 = MEMORY[0x1E69E7CC0];
                  if (v92[3] >= 2uLL)
                  {
                    sub_1AF5FD7D8(0, &qword_1ED7269C0, sub_1AF43A540);
                    v96 = swift_allocObject();
                    v97 = j__malloc_size_0(v96);
                    v96[2] = 0;
                    v96[3] = 2 * ((v97 - 32) / 72);
                  }

                  v118[13] = v96;
                }

                if (*(v64[2] + OBJC_IVAR____TtC3VFX13EntityManager_currentState) - 1 >= 2)
                {
                  v98 = *(v68 + 232);
                  v99 = *(v68 + 256);
                  if (v98 == v99)
                  {
                    v100 = *(v68 + 240);
                  }

                  else
                  {
                    sub_1AF6497A0(v99, v98);
                    v99 = *(v68 + 232);
                    v100 = *(v68 + 240);
                    if (v100 == v99)
                    {
                      v100 = 0;
                      v99 = 0;
                      *(v68 + 232) = 0;
                      *(v68 + 240) = 0;
                    }
                  }

                  *(v68 + 248) = v100;
                  *(v68 + 256) = v99;
                }
              }

              ecs_stack_allocator_pop_snapshot(v108);
              if (v107)
              {
                os_unfair_lock_unlock(*(v68 + 344));
                os_unfair_lock_unlock(*(v68 + 376));
              }

              v62 = v106 + 1;
              if (v106 + 1 == v104)
              {
                goto LABEL_70;
              }
            }

            v114 = v67 - v111;
            while (1)
            {
              v72 = __clz(__rbit64(v57));
              if (((1 << v72) & v57) != 0)
              {
                v73 = ~(1 << v72);
              }

              else
              {
                v73 = -1;
              }

              v74 = sub_1AFB79288(v72);
              if (v74 == 28)
              {
                goto LABEL_51;
              }

              v75 = v74;
              if ((v74 - 65) <= 0x7Eu)
              {
                break;
              }

              if ((v74 & 0x80) != 0)
              {
                if (v74 <= 0xC0u)
                {
                  break;
                }

                v76 = 1uLL >> -v74;
              }

              else
              {
                if (v74 >= 0x40u)
                {
                  break;
                }

                v76 = 1 << v74;
              }

              if ((v76 & ~a7) == 0)
              {
                break;
              }

LABEL_32:
              v57 &= v73;
              if (!v57)
              {
                goto LABEL_51;
              }
            }

            v124 = v63;
            v77 = sub_1AFB79138(v74);
            v78 = v68;
            v80 = v79;
            v81 = &v115[8 * sub_1AFB79124(v75)];
            v82 = *(v81 + 3);
            __dst = &v49[*v81 + v82 * v116];
            v83 = *(v80 + 8);
            v84 = sub_1AF64118C(v77);

            v85 = v80;
            v68 = v78;
            v86 = sub_1AF64B110(v77, v85, 0, 0, 0, v118);
            if (v87)
            {
              v88 = v114;
              if (sub_1AF640E28(v77))
              {
                sub_1AF6413C0(__dst, 0, v114, v77, v83);
              }

              else
              {
                sub_1AF641654(__dst, 0, v114, v77);
              }
            }

            else
            {
              v89 = &v86[v84 * v111];
              if (sub_1AF640E28(v77))
              {
                memcpy(__dst, v89, v84 * v114);
              }

              else
              {
                sub_1AF641760(v89, __dst, v114, v77);
              }

              v68 = v78;
              v88 = v114;
            }

            v63 = v124 + v88 * v82;
            v49 = v113;
            goto LABEL_32;
          }
        }

        v63 = 0;
LABEL_70:
        v101 = *(v102 + 64) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
        if (*v101)
        {
          vfx_counters.add(_:_:)(*(v101 + 88), v63);
        }
      }
    }
  }

  return result;
}

void sub_1AFB970B8(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(v3 + 32);
  v57[0] = *(v3 + 16);
  v57[1] = v7;
  v58 = *(v3 + 48);
  sub_1AF6B06C0(a1, v57, 0x200000000, v39);
  if (*v39)
  {
    v31 = *v39;
    v9 = *&v39[40];
    v10 = *(&v40 + 1);
    v11 = *(&v41 + 1);
    v32 = v41;
    v44 = *&v39[8];
    v45 = *&v39[24];
    MEMORY[0x1EEE9AC00](v8);
    v29 = v25;
    v30 = v12;
    v25[2] = a1;
    v25[3] = a2;
    v26 = a3;
    v27 = a1;
    if (v12 > 0 && v10)
    {
      v28[1] = v28;
      v13 = v11[4];
      v37 = *(v32 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v38[2] = *&v39[32];
      v38[3] = v40;
      v38[4] = v41;
      v38[5] = v42;
      v38[0] = *v39;
      v38[1] = *&v39[16];
      sub_1AF5DD298(v38, v52);
      for (i = (v9 + 24); ; i += 6)
      {
        v36 = 0;
        v15 = *(i - 6);
        v16 = *(i - 5);
        v17 = *(i - 4);
        v18 = *(i - 1);
        v34 = *i;
        v35 = v18;
        v19 = i[2];
        v33 = i[1];
        if (v37)
        {
          v20 = v11;
          v21 = *(v19 + 376);

          v22 = v21;
          v11 = v20;
          os_unfair_lock_lock(v22);
          os_unfair_lock_lock(*(v19 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v13);

        sub_1AF630914(v23, v11, v43);

        LOBYTE(v46) = 1;
        v52[0] = v32;
        v52[1] = v19;
        v52[2] = v11;
        v52[3] = v17;
        v52[4] = (v16 - v15 + v17);
        v52[5] = v30;
        v52[6] = v15;
        v52[7] = v16;
        v52[8] = 0;
        v52[9] = 0;
        v53 = 1;
        v54 = v35;
        v55 = v34;
        v56 = v33;
        v24 = v36;
        sub_1AFA16D8C(v52, sub_1AFB97BB4, v29);
        if (v24)
        {
          break;
        }

        v49 = v31;
        v50 = v44;
        v51 = v45;
        sub_1AF630994(v11, &v49, v43);
        sub_1AF62D29C(v19);
        ecs_stack_allocator_pop_snapshot(v13);
        if (v37)
        {
          os_unfair_lock_unlock(*(v19 + 344));
          os_unfair_lock_unlock(*(v19 + 376));
        }

        if (!--v10)
        {
          sub_1AF5D1564(v39);
          sub_1AF5D1564(v39);
          return;
        }
      }

      v46 = v31;
      v47 = v44;
      v48 = v45;
      sub_1AF630994(v11, &v46, v43);
      sub_1AF62D29C(v19);
      ecs_stack_allocator_pop_snapshot(v13);
      os_unfair_lock_unlock(*(v19 + 344));
      os_unfair_lock_unlock(*(v19 + 376));
      __break(1u);
    }

    else
    {
      sub_1AF5D1564(v39);
    }
  }
}

float32_t sub_1AFB973EC(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4, uint64_t a5, uint64_t a6, float32x4_t a7, uint64_t a8, uint64_t a9)
{
  if (*(a2 + 59) == 1)
  {
    v13 = sub_1AFB2EB3C(a5, a6);
    if ((v14 & 1) == 0)
    {
      sub_1AFB2F7B0(v13, &v44);
      v15 = *a4;
      a7 = a4[1];
      v16 = vmulq_f32(*a4, v44);
      v17 = vmulq_f32(a7, vabsq_f32(v44));
      if (vaddv_f32(vadd_f32(*v16.i8, *&vextq_s8(v16, v16, 8uLL))) <= -vaddv_f32(vadd_f32(*v17.i8, *&vextq_s8(v17, v17, 8uLL))) || ((v18 = vmulq_f32(v15, v45), v19 = vmulq_f32(a7, vabsq_f32(v45)), v24 = vaddv_f32(vadd_f32(*v18.i8, *&vextq_s8(v18, v18, 8uLL))) <= -vaddv_f32(vadd_f32(*v19.i8, *&vextq_s8(v19, v19, 8uLL))), v20 = vmulq_f32(v15, v46), v21 = vaddv_f32(vadd_f32(*v20.i8, *&vextq_s8(v20, v20, 8uLL))), v22 = vmulq_f32(a7, vabsq_f32(v46)), v23 = -vaddv_f32(vadd_f32(*v22.i8, *&vextq_s8(v22, v22, 8uLL))), !v24) ? (v24 = v21 <= v23) : (v24 = 1), (v25 = vmulq_f32(v15, v47), v26 = vaddv_f32(vadd_f32(*v25.i8, *&vextq_s8(v25, v25, 8uLL))), v27 = vmulq_f32(a7, vabsq_f32(v47)), v28 = -vaddv_f32(vadd_f32(*v27.i8, *&vextq_s8(v27, v27, 8uLL))), !v24) ? (v29 = v26 <= v28) : (v29 = 1), (v30 = vmulq_f32(v15, v48), v31 = vaddv_f32(vadd_f32(*v30.i8, *&vextq_s8(v30, v30, 8uLL))), v32 = vmulq_f32(a7, vabsq_f32(v48)), v33 = -vaddv_f32(vadd_f32(*v32.i8, *&vextq_s8(v32, v32, 8uLL))), !v29) ? (v34 = v31 <= v33) : (v34 = 1), v34))
      {
        if ((*(a3 + 161) & 1) == 0)
        {
          return a7.f32[0];
        }

        v42 = 0;
      }

      else
      {
        v41 = vmulq_f32(v15, v49);
        a7 = vmulq_f32(a7, vabsq_f32(v49));
        a7.f32[0] = -vaddv_f32(vadd_f32(*a7.f32, *&vextq_s8(a7, a7, 8uLL)));
        v42 = vaddv_f32(vadd_f32(*v41.i8, *&vextq_s8(v41, v41, 8uLL))) > a7.f32[0];
        if (v42 == *(a3 + 161))
        {
          return a7.f32[0];
        }
      }

      v83 = (a3 + 161);
      if (qword_1ED72D720 != -1)
      {
        swift_once();
      }

      v77 = qword_1ED73B840;
      v78 = 0;
      v79 = 2;
      v80 = 0;
      v81 = 2;
      v82 = 0;
      sub_1AF5FD7D8(0, &qword_1ED7269A0, sub_1AF5C5300);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1AFE431C0;
      *(inited + 32) = &type metadata for Particle;
      *(inited + 40) = &off_1F252D7A8;
      sub_1AF5F58E4(inited, 1, v50);
      swift_setDeallocating();
      sub_1AFA1CF6C(0);
      v36 = swift_initStackObject();
      *(v36 + 16) = xmmword_1AFE431C0;
      v37 = *(a1 + 32);

      v38 = sub_1AF6496EC(v37);

      *(v36 + 56) = &type metadata for EmitterReference;
      *(v36 + 64) = &off_1F2563D20;
      *(v36 + 32) = v38;
      sub_1AF5FC13C(v36, &v51, v39);
      sub_1AF692DB0(v50);
      swift_setDeallocating();
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0((v36 + 32));
      v71 = v51;
      v72 = v52;
      v73 = v53;
      v74 = v54 | 1;
      v75 = v55;
      v76 = v56;
      sub_1AF6B06C0(a9, &v71, 0x200000000, &v57);
      if (v57)
      {
        v67 = v60;
        v68 = v61;
        v69 = v62;
        v64 = v57;
        v70 = v63;
        v65 = v58;
        v66 = v59;
        sub_1AF6B9CF0(v42);
        sub_1AF5D1564(&v57);
      }

      *v83 = v42;

      v40 = sub_1AF6496EC(v37);

      sub_1AF6D8010(v40, v42);
      sub_1AF692DB0(&v51);
    }
  }

  return a7.f32[0];
}

uint64_t sub_1AFB9784C()
{
  v0 = swift_allocObject();
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v5 = qword_1ED73B840;
  v6 = 0;
  v7 = 2;
  v8 = 0;
  v9 = 2;
  v10 = 0;
  sub_1AF8D4304(1, 2, 1, v3);
  v1 = v3[1];
  *(v0 + 16) = v3[0];
  *(v0 + 32) = v1;
  *(v0 + 48) = v4;
  return v0;
}

uint64_t sub_1AFB97920(uint64_t a1)
{
  v2 = swift_allocObject();
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v13 = qword_1ED73B840;
  v14 = 0;
  v15 = 2;
  v16 = 0;
  v17 = 2;
  v18 = 0;
  sub_1AF8290DC(v7);
  v3 = v7[1];
  *(v2 + 16) = v7[0];
  *(v2 + 32) = v3;
  *(v2 + 48) = v8;
  sub_1AF5C90C0(v9);
  v4 = v9[1];
  *(v2 + 56) = v9[0];
  *(v2 + 72) = v4;
  *(v2 + 88) = v10;
  sub_1AF5C90E4(v11);
  sub_1AF688940(a1);
  v5 = v11[1];
  *(v2 + 96) = v11[0];
  *(v2 + 112) = v5;
  *(v2 + 128) = v12;
  return v2;
}

uint64_t sub_1AFB97A18(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = swift_allocObject();
  sub_1AF5FD7D8(0, &qword_1ED7269A0, sub_1AF5C5300);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = &type metadata for ParticleRibbonRenderer;
  *(inited + 40) = &off_1F2551780;
  sub_1AF6B8120(inited, MEMORY[0x1E69E7CC0], v6, xmmword_1AFE431C0);
  swift_setDeallocating();
  sub_1AF688940(a1);
  v4 = v6[1];
  *(v2 + 16) = v6[0];
  *(v2 + 32) = v4;
  *(v2 + 48) = v7;
  return v2;
}

uint64_t sub_1AFB97BD8(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  v4 = *(v3 + 24);
  if (a3 > 2u)
  {
    return (*(v4 + 32))(v3 + 40, result, a2);
  }

  if (!a3)
  {
    return (*(v4 + 24))(v3 + 40, result, a2, 0, *(v3 + 16));
  }

  if (a3 == 1)
  {
    return (*(v4 + 32))(v3 + 40, result, a2);
  }

  return result;
}

double sub_1AFB97C5C@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unsigned __int8 a7@<W6>, uint64_t a8@<X8>)
{
  v8 = a6;
  v13 = a7;
  v31 = BYTE4(a6) & 1;
  LOBYTE(v35) = BYTE4(a6) & 1;
  sub_1AFB93CB8(a5, a6 | ((BYTE4(a6) & 1) << 32), &v32);
  *&v30[2] = v32;
  *&v30[18] = v33;
  *&v30[34] = v34;
  v27 = a1;
  v14 = sub_1AF3CD0F8(a2);
  if (v15)
  {
    v16 = v13;
    v17 = v33 & 0xFFFFFFFFFFFFFFF7 | (8 * ((v13 - 1) < 2));
    v18 = v34;
    v19 = BYTE8(v33);
    v20 = DWORD2(v32);
    v21 = BYTE12(v32);
  }

  else
  {
    v23 = v14;
    sub_1AFA1CF6C(0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AFE431C0;
    *(inited + 56) = &type metadata for ParticleClassSpawnID;
    *(inited + 64) = &off_1F254ECF8;
    *(inited + 32) = v23;
    v25 = (inited + 32);
    sub_1AF5FC13C(inited, &v35, xmmword_1AFE431C0);
    swift_setDeallocating();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v25);
    v16 = v13;
    v17 = v38 & 0xFFFFFFFFFFFFFFF7 | (8 * ((v13 - 1) < 2));
    v22 = v35;
    v20 = v36;
    v21 = v37;
    v19 = v39;
    v18 = v40;
  }

  *(a8 + 46) = *v30;
  *a8 = v27;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = v8;
  *(a8 + 44) = v31;
  *(a8 + 45) = v16;
  *(a8 + 62) = *&v30[16];
  result = *&v30[26];
  *(a8 + 72) = *&v30[26];
  *(a8 + 88) = v22;
  *(a8 + 96) = v20;
  *(a8 + 100) = v21;
  *(a8 + 104) = v17;
  *(a8 + 112) = v19;
  *(a8 + 120) = v18;
  return result;
}

uint64_t sub_1AFB97E24(void *a1)
{
  swift_unknownObjectRelease();
}

__n128 sub_1AFB97E78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 137) = *(a2 + 137);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1AFB97EAC(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRelease();
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  v4 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v4;

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);

  *(a1 + 136) = *(a2 + 136);

  *(a1 + 152) = *(a2 + 152);
  return a1;
}

uint64_t sub_1AFB97F94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 153))
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

uint64_t sub_1AFB97FDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 153) = 1;
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

    *(result + 153) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for ParticleComponentSystemParameter()
{
}

uint64_t initializeWithCopy for ParticleComponentSystemParameter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  v4 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v4;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);

  return a1;
}

uint64_t assignWithCopy for ParticleComponentSystemParameter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  v4 = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 40) = v4;
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 48) = *(a2 + 48);

  v5 = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 56) = v5;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);

  v6 = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 96) = v6;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  return a1;
}

uint64_t assignWithTake for ParticleComponentSystemParameter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  v4 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v4;

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  return a1;
}

uint64_t getEnumTagSinglePayload for ParticleComponentSystemParameter(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t storeEnumTagSinglePayload for ParticleComponentSystemParameter(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AFB98410()
{
  v24 = MEMORY[0x1E69E7CC0];
  sub_1AFC05CE4(0, 4, 0);
  v0 = v24;
  v2 = aClamptozero_0[0];
  v1 = aClamptozero_0[1];
  v4 = *(v24 + 16);
  v3 = *(v24 + 24);
  v5 = v4 + 1;

  if (v4 >= v3 >> 1)
  {
    sub_1AFC05CE4(v3 > 1, v4 + 1, 1);
    v0 = v24;
  }

  *(v0 + 16) = v5;
  v6 = v0 + 16 * v4;
  *(v6 + 32) = v2;
  *(v6 + 40) = v1;
  v8 = aClamptoedge_0[0];
  v7 = aClamptoedge_0[1];
  v9 = *(v0 + 24);
  v10 = v4 + 2;

  if (v5 >= v9 >> 1)
  {
    sub_1AFC05CE4(v9 > 1, v10, 1);
  }

  *(v0 + 16) = v10;
  v11 = v0 + 16 * v5;
  *(v11 + 32) = v8;
  *(v11 + 40) = v7;
  v13 = *aRepeat_1;
  v12 = unk_1F24F3FD8;
  v15 = *(v0 + 16);
  v14 = *(v0 + 24);
  v16 = v15 + 1;

  if (v15 >= v14 >> 1)
  {
    sub_1AFC05CE4(v14 > 1, v15 + 1, 1);
  }

  *(v0 + 16) = v16;
  v17 = v0 + 16 * v15;
  *(v17 + 32) = v13;
  *(v17 + 40) = v12;
  v19 = aRepeatmirror_0[0];
  v18 = aRepeatmirror_0[1];
  v20 = *(v0 + 24);
  v21 = v15 + 2;

  if (v16 >= v20 >> 1)
  {
    sub_1AFC05CE4(v20 > 1, v21, 1);
  }

  *(v0 + 16) = v21;
  v22 = v0 + 16 * v16;
  *(v22 + 32) = v19;
  *(v22 + 40) = v18;
  return v0;
}

uint64_t sub_1AFB985B8()
{
  v8 = MEMORY[0x1E69E7CC0];
  sub_1AFC05CE4(0, 2, 0);
  result = v8;
  v2 = *(v8 + 16);
  v1 = *(v8 + 24);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_1AFC05CE4(v1 > 1, v2 + 1, 1);
    result = v8;
    v1 = *(v8 + 24);
    v3 = v1 >> 1;
  }

  *(result + 16) = v4;
  v5 = result + 16 * v2;
  *(v5 + 32) = 0x7473657261656ELL;
  *(v5 + 40) = 0xE700000000000000;
  v6 = v2 + 2;
  if (v3 <= v4)
  {
    sub_1AFC05CE4(v1 > 1, v6, 1);
    result = v8;
  }

  *(result + 16) = v6;
  v7 = result + 16 * v4;
  *(v7 + 32) = 0x7261656E696CLL;
  *(v7 + 40) = 0xE600000000000000;
  return result;
}

uint64_t sub_1AFB9899C@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1AFB99418(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1AFB989C8(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  sub_1AF448018(v2, v2[3]);
  sub_1AFDFEC58();
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v2);
}

uint64_t sub_1AFB98A5C(uint64_t a1, float a2)
{
  sub_1AFDFF288();
  sub_1AFDFF2A8();
  sub_1AFDFF2C8();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AFB98B20(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFF2A8();
  sub_1AFDFF2C8();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AFB98BB4(void *a1, unsigned __int8 a2, float a3)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  sub_1AF448018(v5, v6);
  sub_1AFDFEC28();
  if (!v3)
  {
    sub_1AF448018(v5, v6);
    sub_1AFDFEC18();
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v5);
}

void sub_1AFB98CB4(uint64_t a1@<X8>, void *a2@<X0>)
{
  v5 = sub_1AFB994E8(a2);
  if (!v2)
  {
    *a1 = v4;
    *(a1 + 4) = v5;
  }
}

double sub_1AFB98F44(unsigned __int8 a1)
{
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      *&result = 3212836864;
    }

    else if (a1 == 4)
    {
      return -0.0078125;
    }

    else
    {
      return 0.0;
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      return 0.0078125;
    }

    else
    {
      return 0.0;
    }
  }

  else
  {
    *&result = 1065353216;
  }

  return result;
}

uint64_t sub_1AFB98FB4@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AFB99648(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AFB992E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AFB98410();
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = (v4 + 40);
    while (1)
    {
      v8 = *(v7 - 1) == a1 && *v7 == a2;
      if (v8 || (sub_1AFDFEE28() & 1) != 0)
      {
        break;
      }

      ++v6;
      v7 += 2;
      if (v5 == v6)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v6 = 0;
  }

  return byte_1F24FE850[v6 + 32];
}

uint64_t sub_1AFB9937C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AFB985B8();
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = (v4 + 40);
    while (1)
    {
      v8 = *(v7 - 1) == a1 && *v7 == a2;
      if (v8 || (sub_1AFDFEE28() & 1) != 0)
      {
        break;
      }

      ++v6;
      v7 += 2;
      if (v5 == v6)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v6 = 0;
  }

  return byte_1F24FE878[v6 + 32];
}

uint64_t sub_1AFB99418(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF388();
  if (v1)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    return 0;
  }

  else
  {
    sub_1AF448018(v6, v6[3]);
    v3 = sub_1AFDFEAB8();
    if ((v3 & 0xFC) != 0)
    {
      v5 = 0;
    }

    else
    {
      v5 = v3;
    }

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v6);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    return v5;
  }
}

float sub_1AFB994E8(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF388();
  if (!v1)
  {
    sub_1AF448018(v6, v7);
    if (sub_1AFDFEAB8() >= 4)
    {
      sub_1AFDFE2C8();
      swift_allocError();
      sub_1AFDFE288();
      swift_willThrow();
    }

    else
    {
      sub_1AF448018(v6, v7);
      sub_1AFDFEAA8();
      v2 = v4;
    }

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v6);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v2;
}

uint64_t sub_1AFB99648(uint64_t result)
{
  if (result >= 6u)
  {
    return 6;
  }

  else
  {
    return result;
  }
}

unint64_t sub_1AFB9965C()
{
  result = qword_1ED7232E0;
  if (!qword_1ED7232E0)
  {
    result = swift_getWitnessTable(byte_1AFEA0628, &type metadata for ScaleMode, v0, v1);
    atomic_store(result, &qword_1ED7232E0);
  }

  return result;
}

unint64_t sub_1AFB996B0()
{
  result = qword_1EB633380;
  if (!qword_1EB633380)
  {
    result = swift_getWitnessTable(aQ_18, &type metadata for NoiseKind, v0, v1);
    atomic_store(result, &qword_1EB633380);
  }

  return result;
}

unint64_t sub_1AFB99704()
{
  result = qword_1EB642F08;
  if (!qword_1EB642F08)
  {
    result = swift_getWitnessTable(byte_1AFEA05B8, &type metadata for FlockingLocalAxis, v0, v1);
    atomic_store(result, &qword_1EB642F08);
  }

  return result;
}

unint64_t sub_1AFB99758()
{
  result = qword_1EB642F10;
  if (!qword_1EB642F10)
  {
    result = swift_getWitnessTable(byte_1AFEA0580, &type metadata for FlockingSizeMode, v0, v1);
    atomic_store(result, &qword_1EB642F10);
  }

  return result;
}

unint64_t sub_1AFB997AC()
{
  result = qword_1EB642F18;
  if (!qword_1EB642F18)
  {
    result = swift_getWitnessTable(byte_1AFEA0548, &type metadata for FluidSolver2DSolverSetupType, v0, v1);
    atomic_store(result, &qword_1EB642F18);
  }

  return result;
}

unint64_t sub_1AFB99800()
{
  result = qword_1EB642F20;
  if (!qword_1EB642F20)
  {
    result = swift_getWitnessTable(a1_12, &type metadata for FluidSolver2DSolverBorderType, v0, v1);
    atomic_store(result, &qword_1EB642F20);
  }

  return result;
}

unint64_t sub_1AFB99854()
{
  result = qword_1ED725600;
  if (!qword_1ED725600)
  {
    result = swift_getWitnessTable(aI_7, &type metadata for TextureChannel, v0, v1);
    atomic_store(result, &qword_1ED725600);
  }

  return result;
}

unint64_t sub_1AFB998A8()
{
  result = qword_1ED722BB8;
  if (!qword_1ED722BB8)
  {
    result = swift_getWitnessTable(aAm, &type metadata for AddressMode, v0, v1);
    atomic_store(result, &qword_1ED722BB8);
  }

  return result;
}

unint64_t sub_1AFB998FC()
{
  result = qword_1EB6339F8;
  if (!qword_1EB6339F8)
  {
    result = swift_getWitnessTable(aYm, &type metadata for FilterMode, v0, v1);
    atomic_store(result, &qword_1EB6339F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Composition(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[8])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Composition(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_1AFB99AB8()
{
  result = qword_1EB642F38;
  if (!qword_1EB642F38)
  {
    result = swift_getWitnessTable(byte_1AFE9FD60, &type metadata for TextureChannel, v0, v1);
    atomic_store(result, &qword_1EB642F38);
  }

  return result;
}

unint64_t sub_1AFB99B40()
{
  result = qword_1EB642F50;
  if (!qword_1EB642F50)
  {
    result = swift_getWitnessTable(aI_8, &type metadata for NoiseKind, v0, v1);
    atomic_store(result, &qword_1EB642F50);
  }

  return result;
}

unint64_t sub_1AFB99BC8()
{
  result = qword_1EB642F68;
  if (!qword_1EB642F68)
  {
    result = swift_getWitnessTable(byte_1AFE9FEA0, &type metadata for FluidSolver2DSolverSetupType, v0, v1);
    atomic_store(result, &qword_1EB642F68);
  }

  return result;
}

unint64_t sub_1AFB99C50()
{
  result = qword_1EB642F80;
  if (!qword_1EB642F80)
  {
    result = swift_getWitnessTable(asc_1AFE9FF40, &type metadata for FluidSolver2DSolverBorderType, v0, v1);
    atomic_store(result, &qword_1EB642F80);
  }

  return result;
}

unint64_t sub_1AFB99CA8()
{
  result = qword_1EB642F88;
  if (!qword_1EB642F88)
  {
    result = swift_getWitnessTable(byte_1AFE9FF68, &type metadata for Composition, v0, v1);
    atomic_store(result, &qword_1EB642F88);
  }

  return result;
}

unint64_t sub_1AFB99D30()
{
  result = qword_1EB642FA0;
  if (!qword_1EB642FA0)
  {
    result = swift_getWitnessTable(byte_1AFEA0048, &type metadata for ScaleMode, v0, v1);
    atomic_store(result, &qword_1EB642FA0);
  }

  return result;
}

unint64_t sub_1AFB99DB8()
{
  result = qword_1EB642FB8;
  if (!qword_1EB642FB8)
  {
    result = swift_getWitnessTable(asc_1AFEA0120, &type metadata for Composition.Operation, v0, v1);
    atomic_store(result, &qword_1EB642FB8);
  }

  return result;
}

unint64_t sub_1AFB99E40()
{
  result = qword_1EB642FD0;
  if (!qword_1EB642FD0)
  {
    result = swift_getWitnessTable(byte_1AFEA01C0, &type metadata for FlockingSizeMode, v0, v1);
    atomic_store(result, &qword_1EB642FD0);
  }

  return result;
}

unint64_t sub_1AFB99EC8()
{
  result = qword_1EB642FE8;
  if (!qword_1EB642FE8)
  {
    result = swift_getWitnessTable(byte_1AFEA0260, &type metadata for FlockingLocalAxis, v0, v1);
    atomic_store(result, &qword_1EB642FE8);
  }

  return result;
}

unint64_t sub_1AFB99F50()
{
  result = qword_1EB643000;
  if (!qword_1EB643000)
  {
    result = swift_getWitnessTable(byte_1AFEA0388, &type metadata for SourceDataKind, v0, v1);
    atomic_store(result, &qword_1EB643000);
  }

  return result;
}

unint64_t sub_1AFB99FD8()
{
  result = qword_1EB643018;
  if (!qword_1EB643018)
  {
    result = swift_getWitnessTable(byte_1AFEA04B0, &type metadata for TargetDataKind, v0, v1);
    atomic_store(result, &qword_1EB643018);
  }

  return result;
}

unint64_t sub_1AFB9A02C()
{
  result = qword_1EB643020;
  if (!qword_1EB643020)
  {
    result = swift_getWitnessTable(asc_1AFEA0438, &type metadata for TargetDataKind, v0, v1);
    atomic_store(result, &qword_1EB643020);
  }

  return result;
}

unint64_t sub_1AFB9A080()
{
  result = qword_1EB643028;
  if (!qword_1EB643028)
  {
    result = swift_getWitnessTable(a1_13, &type metadata for SourceDataKind, v0, v1);
    atomic_store(result, &qword_1EB643028);
  }

  return result;
}

uint64_t sub_1AFB9A0E0(void *a1)
{
  v3 = v1;
  sub_1AFBAC650(0, &qword_1EB643050, sub_1AFBAC3A0, &type metadata for ParticleFlockingAlignOrientation.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AFBAC3A0();
  sub_1AFDFF3F8();
  LOBYTE(v12) = *v3;
  v13 = 0;
  sub_1AF51CFA8();
  sub_1AFDFE918();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_1AFDFE8E8();
    LOBYTE(v12) = *(v3 + 8);
    v13 = 2;
    sub_1AFDFE918();
    v12 = *(v3 + 16);
    v13 = 3;
    v11 = MEMORY[0x1E69E7450];
    sub_1AFBAC650(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    sub_1AFBAC3F4(&qword_1ED72F758, &qword_1ED72F740, v11, MEMORY[0x1E69E7458]);
    sub_1AFDFE918();
    LOBYTE(v12) = 4;
    sub_1AFDFE8C8();
    LOBYTE(v12) = 5;
    sub_1AFDFE8E8();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1AFB9A3C4(uint64_t a1)
{
  sub_1AFDFD038();
}

unint64_t sub_1AFB9A4E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AFBA2394(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1AFB9A510(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE90000000000006ELL;
  v4 = 0x6F69746365726964;
  v5 = 0xE700000000000000;
  v6 = 0x7441746E696F70;
  v7 = 0xEE00676E69707069;
  v8 = 0x6C46656375646572;
  if (v2 != 4)
  {
    v8 = 0x6556746F5278616DLL;
    v7 = 0xEE0063655670556CLL;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEC0000007269446CLL;
  v10 = 0x6556746F5278616DLL;
  if (v2 != 1)
  {
    v10 = 0x726F746365567075;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_1AFB9A5F4()
{
  v1 = *v0;
  v2 = 0x6F69746365726964;
  v3 = 0x7441746E696F70;
  v4 = 0x6C46656375646572;
  if (v1 != 4)
  {
    v4 = 0x6556746F5278616DLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6556746F5278616DLL;
  if (v1 != 1)
  {
    v5 = 0x726F746365567075;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1AFB9A6D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AFBA2394(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AFB9A6FC(uint64_t a1)
{
  v2 = sub_1AFBAC3A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFB9A738(uint64_t a1)
{
  v2 = sub_1AFBAC3A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AFB9A774@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1AFBA3A54(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

double sub_1AFB9A7F0@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 4) = 1124532224;
  *(a1 + 8) = 1;
  result = 0.0078125;
  *(a1 + 16) = xmmword_1AFE20160;
  *(a1 + 32) = 1;
  *(a1 + 36) = 1124532224;
  return result;
}

uint64_t sub_1AFB9A858(void *a1, float a2, __n128 a3)
{
  v12 = a3;
  sub_1AFBAC650(0, &qword_1EB643068, sub_1AFBAC458, &type metadata for ParticleFlockingAlignVelocityOnPlane.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AFBAC458();
  sub_1AFDFF3F8();
  v13.n128_u8[0] = 0;
  sub_1AFDFE8E8();
  if (!v3)
  {
    v13 = v12;
    v14 = 1;
    v10 = MEMORY[0x1E69E7450];
    sub_1AFBAC650(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    sub_1AFBAC3F4(&qword_1ED72F758, &qword_1ED72F740, v10, MEMORY[0x1E69E7458]);
    sub_1AFDFE918();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1AFB9AA78(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x726F4E656E616C70;
  }

  else
  {
    v3 = 0x636E65756C666E69;
  }

  if (v2)
  {
    v4 = 0xE900000000000065;
  }

  else
  {
    v4 = 0xEB000000006C616DLL;
  }

  if (*a2)
  {
    v5 = 0x726F4E656E616C70;
  }

  else
  {
    v5 = 0x636E65756C666E69;
  }

  if (*a2)
  {
    v6 = 0xEB000000006C616DLL;
  }

  else
  {
    v6 = 0xE900000000000065;
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

uint64_t sub_1AFB9AB2C()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFB9ABBC(uint64_t a1)
{
  sub_1AFDFD038();
}

uint64_t sub_1AFB9AC38(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFB9ACC4@<X0>(char *a2@<X8>)
{
  v3 = sub_1AFDFE638();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1AFB9AD24(uint64_t *a1@<X8>)
{
  v2 = 0x636E65756C666E69;
  if (*v1)
  {
    v2 = 0x726F4E656E616C70;
  }

  v3 = 0xE900000000000065;
  if (*v1)
  {
    v3 = 0xEB000000006C616DLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1AFB9AD70()
{
  if (*v0)
  {
    return 0x726F4E656E616C70;
  }

  else
  {
    return 0x636E65756C666E69;
  }
}

uint64_t sub_1AFB9ADB8@<X0>(char *a3@<X8>)
{
  v4 = sub_1AFDFE638();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1AFB9AE1C(uint64_t a1)
{
  v2 = sub_1AFBAC458();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFB9AE58(uint64_t a1)
{
  v2 = sub_1AFBAC458();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1AFB9AE94(uint64_t a1@<X8>, void *a2@<X0>)
{
  v4 = sub_1AFBA40B0(a2);
  if (!v2)
  {
    *a1 = v4;
    *(a1 + 16) = v5;
  }
}

double sub_1AFB9AF04@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1048576000;
  result = 0.0078125;
  *(a1 + 16) = xmmword_1AFE20160;
  return result;
}

void sub_1AFB9AF1C(uint64_t a1, float32x4_t a2, float a3, float a4)
{
  v7 = sub_1AF64B110(&type metadata for Velocity, &off_1F2530AF8, *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 16));
  v8 = a2;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = v10 - v9;
  if (v10 != v9)
  {
    v12 = vextq_s8(vuzp1q_s32(a2, a2), a2, 0xCuLL);
    v13 = vnegq_f32(a2);
    v14 = a3 * a4;
    v15 = &v7[16 * v9];
    v16 = xmmword_1AFE21390;
    v52 = v13;
    v53 = v12;
    do
    {
      v18 = *v15;
      v19 = vmulq_f32(v18, v18);
      v19.f32[0] = sqrtf(v19.f32[2] + vaddv_f32(*v19.f32));
      if (v19.f32[0] > 0.000001 && ((v20 = vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL), v21 = vmlaq_f32(vmulq_f32(v20, v13), v18, v12), v22 = vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL), v23 = vmlaq_f32(vmulq_f32(v12, vnegq_f32(v22)), v8, vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL)), v24 = vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL), v25 = vabsq_f32(v24), v25.f32[0] <= 0.00000011921) ? (v26 = v25.f32[1] > 0.00000011921) : (v26 = 1), !v26 ? (v27 = v25.f32[2] > 0.00000011921) : (v27 = 1), v27))
      {
        v28 = vmulq_f32(v23, v23);
        *&v29 = v28.f32[1] + (v28.f32[2] + v28.f32[0]);
        *v28.f32 = vrsqrte_f32(v29);
        *v28.f32 = vmul_f32(*v28.f32, vrsqrts_f32(v29, vmul_f32(*v28.f32, *v28.f32)));
        v17 = vmulq_n_f32(v24, vmul_f32(*v28.f32, vrsqrts_f32(v29, vmul_f32(*v28.f32, *v28.f32))).f32[0]);
        v30 = vdivq_f32(v18, vdupq_lane_s32(*v19.f32, 0));
        v30.f32[2] = v18.f32[2] / v19.f32[0];
        v31 = vmulq_f32(v30, v17);
        v17.i32[3] = HIDWORD(v16);
        v32 = v31.f32[2] + vaddv_f32(*v31.f32);
        if (v32 <= 1.0)
        {
          v56 = v17;
          v58 = *v15;
          if (v32 < -1.0)
          {
            v33 = 3.1416;
            goto LABEL_19;
          }

          v54 = v20;
          v51 = v24;
          v33 = acosf(v32);
          v24 = v51;
          v20 = v54;
          v18 = v58;
          if (v33 > 0.001)
          {
LABEL_19:
            if ((v14 * v33) < v33)
            {
              v33 = v14 * v33;
            }

            v34 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL), vnegq_f32(v18)), v24, v20);
            v35 = vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL);
            v36 = vmulq_f32(v34, v34);
            *&v37 = v36.f32[1] + (v36.f32[2] + v36.f32[0]);
            *v36.f32 = vrsqrte_f32(v37);
            *v36.f32 = vmul_f32(*v36.f32, vrsqrts_f32(v37, vmul_f32(*v36.f32, *v36.f32)));
            v55 = vmulq_n_f32(v35, vmul_f32(*v36.f32, vrsqrts_f32(v37, vmul_f32(*v36.f32, *v36.f32))).f32[0]);
            v38 = __sincosf_stret(v33 * 0.5);
            v39 = vmulq_n_f32(v55, v38.__sinval);
            v40 = v39;
            v40.i32[3] = LODWORD(v38.__cosval);
            v41 = vmulq_f32(v40, xmmword_1AFE21390);
            v42 = vnegq_f32(v41);
            v43 = vtrn2q_s32(v41, vtrn1q_s32(v41, v42));
            v44 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v41, v42, 8uLL), *v58.f32, 1), vextq_s8(v43, v43, 8uLL), v58.f32[0]);
            v45 = vrev64q_s32(v41);
            v45.i32[0] = v42.i32[1];
            v45.i32[3] = v42.i32[2];
            v46 = vmlaq_laneq_f32(v44, v45, v58, 2);
            v47 = vnegq_f32(v46);
            v48 = vtrn2q_s32(v46, vtrn1q_s32(v46, v47));
            v49 = vrev64q_s32(v46);
            v49.i32[0] = v47.i32[1];
            v49.i32[3] = v47.i32[2];
            v50 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v46, v40, 3), v49, v39, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v46, v47, 8uLL), *v39.f32, 1), vextq_s8(v48, v48, 8uLL), v39.f32[0]));
            v50.i32[3] = 0;
            *v15 = v50;
          }

          v17 = v56;
          v8 = a2;
          v13 = v52;
          v12 = v53;
        }
      }

      else
      {
        v17 = v16;
      }

      ++v15;
      v16 = v17;
      --v11;
    }

    while (v11);
  }
}

uint64_t sub_1AFB9B274()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFB9B344(uint64_t a1)
{
  sub_1AFDFD038();
}

uint64_t sub_1AFB9B400(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

unint64_t sub_1AFB9B4CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AFBA2348(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1AFB9B4FC(uint64_t *a1@<X8>)
{
  v2 = 0xEF7373656E6B6369;
  v3 = 0x6854726564726F62;
  v4 = 0xE700000000000000;
  v5 = 0x3272656E726F63;
  if (*v1 != 2)
  {
    v5 = 0x61657241776F6873;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x3172656E726F63;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1AFB9B588()
{
  v1 = 0x6854726564726F62;
  v2 = 0x3272656E726F63;
  if (*v0 != 2)
  {
    v2 = 0x61657241776F6873;
  }

  if (*v0)
  {
    v1 = 0x3172656E726F63;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1AFB9B610@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AFBA2348(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AFB9B638(uint64_t a1)
{
  v2 = sub_1AFBAC4AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFB9B674(uint64_t a1)
{
  v2 = sub_1AFBAC4AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AFB9B77C@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0x40000000;
  result = -524288.378;
  *(a1 + 16) = xmmword_1AFEA0660;
  *(a1 + 32) = xmmword_1AFEA0670;
  *(a1 + 48) = 0;
  return result;
}

uint64_t sub_1AFB9B7DC(void *a1, int a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(void), float a7, __n128 a8, __n128 a9)
{
  v20 = a2;
  v19 = a9;
  v21 = a8;
  sub_1AFBAC650(0, a3, a4, a5, MEMORY[0x1E69E6F58]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v19 - v15;
  sub_1AF441150(a1, a1[3]);
  a6();
  sub_1AFDFF3F8();
  v23.n128_u8[0] = 0;
  sub_1AFDFE8E8();
  if (!v9)
  {
    v23 = v21;
    v22 = 1;
    v17 = MEMORY[0x1E69E7450];
    sub_1AFBAC650(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    sub_1AFBAC3F4(&qword_1ED72F758, &qword_1ED72F740, v17, MEMORY[0x1E69E7458]);
    sub_1AFDFE918();
    v23 = v19;
    v22 = 2;
    sub_1AFDFE918();
    v23.n128_u8[0] = 3;
    sub_1AFDFE8C8();
  }

  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1AFB9BA74()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFB9BB48(uint64_t a1)
{
  sub_1AFDFD038();
}

uint64_t sub_1AFB9BC08(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

unint64_t sub_1AFB9BCD8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AFBA23E0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1AFB9BD08(uint64_t *a1@<X8>)
{
  v2 = 0x636E65756C666E69;
  v3 = 0xEB000000006C616DLL;
  v4 = 0x726F4E656E616C70;
  if (*v1 != 2)
  {
    v4 = 0x6E616C50776F6873;
    v3 = 0xE900000000000065;
  }

  v5 = 0xEB00000000726574;
  if (*v1)
  {
    v2 = 0x6E6543656E616C70;
  }

  else
  {
    v5 = 0xE900000000000065;
  }

  if (*v1 <= 1u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v3;
  }

  *a1 = v6;
  a1[1] = v7;
}

uint64_t sub_1AFB9BD98()
{
  v1 = 0x636E65756C666E69;
  v2 = 0x726F4E656E616C70;
  if (*v0 != 2)
  {
    v2 = 0x6E616C50776F6873;
  }

  if (*v0)
  {
    v1 = 0x6E6543656E616C70;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1AFB9BE24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AFBA23E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AFB9BE4C(uint64_t a1)
{
  v2 = sub_1AFBAC500();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFB9BE88(uint64_t a1)
{
  v2 = sub_1AFBAC500();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1AFB9BF14(void *a1@<X0>, unint64_t *a2@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X5>, uint64_t (*a5)(void)@<X6>, uint64_t a6@<X8>)
{
  v9 = sub_1AFBA3DEC(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a6 = v9;
    *(a6 + 16) = v10;
    *(a6 + 32) = v11;
    *(a6 + 48) = v8 & 1;
  }
}

double sub_1AFB9BFD8@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1088421888;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  result = 0.0078125;
  *(a1 + 32) = xmmword_1AFE20160;
  *(a1 + 48) = 1;
  return result;
}

char *sub_1AFB9BFFC(uint64_t a1, __n128 a2, float32x4_t a3, float32x4_t a4)
{
  result = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 16));
  v6.i64[1] = a2.n128_i64[1];
  if (a2.n128_f32[0] == 1.0)
  {
    v7 = *(a1 + 48);
    v8 = *(a1 + 56) - v7;
    if (v8)
    {
      v9 = &result[16 * v7];
      do
      {
        v10 = vmulq_f32(vsubq_f32(*v9, a4), a3);
        v11 = vaddv_f32(*v10.f32);
        v12.i64[0] = vsubq_f32(*v9, vmulq_n_f32(a3, v10.f32[2] + v11)).u64[0];
        v12.f32[2] = COERCE_FLOAT(v9->i64[1]) - (a3.f32[2] * (v10.f32[2] + v11));
        v12.i32[3] = 1.0;
        *v9++ = v12;
        --v8;
      }

      while (v8);
    }
  }

  else
  {
    v13 = *(a1 + 48);
    v14 = *(a1 + 56) - v13;
    if (v14)
    {
      v15 = vmuls_lane_f32(a2.n128_f32[0], a3, 2);
      *v6.f32 = vdup_lane_s32(a2.n128_u64[0], 0);
      v16 = vmulq_f32(v6, a3);
      v17 = &result[16 * v13];
      do
      {
        v18 = vmulq_f32(vsubq_f32(*v17, a4), a3);
        v19 = vaddv_f32(*v18.f32);
        v20.i64[0] = vsubq_f32(*v17, vmulq_n_f32(v16, v18.f32[2] + v19)).u64[0];
        v20.f32[2] = COERCE_FLOAT(v17->i64[1]) - (v15 * (v18.f32[2] + v19));
        v20.i32[3] = 1.0;
        *v17++ = v20;
        --v14;
      }

      while (v14);
    }
  }

  return result;
}

uint64_t sub_1AFB9C15C(void *a1)
{
  sub_1AFBAC650(0, &qword_1EB6430B0, sub_1AFBAC554, &type metadata for ParticleFlockingFlyTowardsArea.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  sub_1AF441150(a1, a1[3]);
  sub_1AFBAC554();
  sub_1AFDFF3F8();
  v16 = 0;
  sub_1AFDFE8E8();
  if (!v1)
  {
    v15 = 1;
    sub_1AFDFE8E8();
    v14 = 2;
    sub_1AFDFE8E8();
    v13 = 3;
    sub_1AFDFE8E8();
    v12 = 4;
    sub_1AFDFE8E8();
    v11 = 5;
    sub_1AFDFE8E8();
    v10 = 6;
    sub_1AFDFE8C8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1AFB9C3A0(uint64_t a1)
{
  sub_1AFDFD038();
}

unint64_t sub_1AFB9C4C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AFBA22FC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1AFB9C4F4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x636E65756C666E69;
  v4 = 0xE90000000000006CLL;
  v5 = 0x6556746F5278616DLL;
  if (v2 != 5)
  {
    v5 = 0x61657241776F6873;
    v4 = 0xE800000000000000;
  }

  v6 = 0x6C676E4177656976;
  v7 = 0x80000001AFF241B0;
  if (v2 == 3)
  {
    v7 = 0xE900000000000065;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (*v1 <= 4u)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0xE600000000000000;
  v9 = 0x737569646172;
  if (v2 != 1)
  {
    v9 = 0x65636E6174736964;
    v8 = 0xEF66666F6C6C6146;
  }

  if (*v1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0xE900000000000065;
  }

  if (*v1 <= 2u)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (*v1 <= 2u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v4;
  }

  *a1 = v10;
  a1[1] = v11;
}