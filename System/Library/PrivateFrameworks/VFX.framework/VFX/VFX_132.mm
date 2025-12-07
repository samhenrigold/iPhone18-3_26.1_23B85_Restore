void sub_1AFB35250(unsigned __int8 a1, uint64_t a2, uint64_t a3, void *a4, float32x4_t a5, float32x4_t a6)
{
  v9 = a6;
  v11 = a4[8];
  v12 = a4[11];
  v13 = a4[14];
  v15 = a4[4];
  v14 = a4[5];
  if ((*(a3 + 64) & 1) == 0)
  {
    sub_1AF6DE920();
    a5 = v16;
    v9 = a6;
  }

  v62 = v9;
  v63 = a5;
  v17 = vmulq_f32(v9, v9);
  a6.i64[0] = 0;
  v18.i64[0] = 0;
  v18.i32[3] = 0;
  *&v18.i32[2] = sqrtf(v17.f32[2] + vaddv_f32(*v17.f32)) * 0.2;
  v19 = vbslq_s8(vdupq_lane_s32(*&vceqq_f32(vdupq_laneq_s32(v9, 2), a6), 0), v18, v18.u32[2]);
  v20 = (v11 + 16 * v15);
  v61 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL), vnegq_f32(v9)), v19, vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL));
  *&v21 = sub_1AF6DD708(0.1, a5, v9);
  v60 = v21;
  *v22.i64 = sub_1AF6DD708(0.9, v63, v62);
  if (a1 <= 1u)
  {
    if (!a1)
    {
      v25 = 0;
      v35 = v63;
      v36 = vaddq_f32(v63, v62);
      v35.i32[3] = 1.0;
      *v20 = v35;
      v36.i32[3] = 1.0;
      v24 = 1;
      v37 = 2;
      v38 = 2;
      v20[1] = v36;
      if ((a2 & 0x100000000) != 0)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    v24 = 0;
    v50 = v63;
    v22 = vaddq_f32(v63, v62);
    v22.i32[3] = 1.0;
    v50.i32[3] = 1.0;
    *v20 = v22;
    v20[1] = v50;
    __asm { FMOV            V1.4S, #1.0 }

    v51.i32[3] = _Q1.i32[3];
    v51.f32[0] = *&v60 + v61.f32[2];
    v51.f32[1] = *(&v60 + 1) + v61.f32[0];
    v51.f32[2] = *(&v60 + 2) + v61.f32[1];
    v20[2] = v51;
    v22.f32[0] = *&v60 - v61.f32[2];
    v43 = *(&v60 + 1) - v61.f32[0];
    v44 = *(&v60 + 2) - v61.f32[1];
    goto LABEL_15;
  }

  if (a1 == 2)
  {
    v24 = 0;
    v39 = v63;
    v40 = vaddq_f32(v63, v62);
    v39.i32[3] = 1.0;
    v40.i32[3] = 1.0;
    *v20 = v39;
    v20[1] = v40;
    __asm { FMOV            V1.4S, #1.0 }

    v42.i32[3] = _Q1.i32[3];
    v42.f32[0] = v22.f32[0] + v61.f32[2];
    v42.f32[1] = v22.f32[1] + v61.f32[0];
    v42.f32[2] = v22.f32[2] + v61.f32[1];
    v20[2] = v42;
    v22.f32[0] = v22.f32[0] - v61.f32[2];
    v43 = v22.f32[1] - v61.f32[0];
    v44 = v22.f32[2] - v61.f32[1];
LABEL_15:
    _Q1.i64[0] = __PAIR64__(LODWORD(v43), v22.u32[0]);
    _Q1.f32[2] = v44;
    v25 = 1;
    v38 = 6;
    v37 = 4;
    v20[3] = _Q1;
    if ((a2 & 0x100000000) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

  v23 = v63;
  if (a1 == 3)
  {
    v24 = 0;
    v25 = 0;
    v26 = vaddq_f32(v63, v62);
    v23.i32[3] = 1.0;
    v26.i32[3] = 1.0;
    *v20 = v23;
    v20[1] = v26;
    __asm { FMOV            V1.4S, #1.0 }

    v31.i32[3] = _Q1.i32[3];
    v31.f32[0] = v22.f32[0] + v61.f32[2];
    v31.f32[1] = v22.f32[1] + v61.f32[0];
    v31.f32[2] = v22.f32[2] + v61.f32[1];
    v32.i32[3] = _Q1.i32[3];
    v32.f32[0] = v22.f32[0] - v61.f32[2];
    v32.f32[1] = v22.f32[1] - v61.f32[0];
    v32.f32[2] = v22.f32[2] - v61.f32[1];
    v20[2] = v31;
    v20[3] = v32;
    v33.i32[3] = _Q1.i32[3];
    v33.f32[0] = *&v60 + v61.f32[2];
    v33.f32[1] = *(&v60 + 1) + v61.f32[0];
    v33.f32[2] = *(&v60 + 2) + v61.f32[1];
    v20[4] = v33;
    _Q1.f32[0] = *&v60 - v61.f32[2];
    _Q1.f32[1] = *(&v60 + 1) - v61.f32[0];
    _Q1.f32[2] = *(&v60 + 2) - v61.f32[1];
  }

  else
  {
    v45 = sub_1AF6DD708(0.5, v63, v62);
    v24 = 0;
    v25 = 0;
    v46 = v63;
    v47 = vaddq_f32(v63, v62);
    v46.i32[3] = 1.0;
    v47.i32[3] = 1.0;
    *v20 = v46;
    v20[1] = v47;
    __asm { FMOV            V1.4S, #1.0 }

    v48.i32[3] = _Q1.i32[3];
    v48.f32[0] = v61.f32[2] + *&v45;
    v48.f32[1] = v61.f32[0] + *(&v45 + 1);
    v48.f32[2] = v61.f32[1] + v49;
    _Q1.f32[0] = *&v45 - v61.f32[2];
    _Q1.f32[1] = *(&v45 + 1) - v61.f32[0];
    _Q1.f32[2] = v49 - v61.f32[1];
    v20[2] = v48;
    v20[3] = _Q1;
    v20[4] = v48;
  }

  v38 = 10;
  v37 = 6;
  v20[5] = _Q1;
  if ((a2 & 0x100000000) != 0)
  {
    goto LABEL_27;
  }

LABEL_16:
  v52 = (v12 + 4 * v15);
  *v52 = a2;
  v52[1] = a2;
  if (v24)
  {
    goto LABEL_27;
  }

  v53 = vdupq_n_s64(v37 - 1);
  v54 = vmovn_s64(vcgtq_u64(v53, xmmword_1AFE431C0));
  if ((v54.i8[0] & 1) == 0)
  {
    if ((v54.i8[4] & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_22:
    v52[3] = a2;
    if (v25)
    {
      goto LABEL_27;
    }

    goto LABEL_23;
  }

  v52[2] = a2;
  if (v54.i8[4])
  {
    goto LABEL_22;
  }

LABEL_19:
  if (v25)
  {
    goto LABEL_27;
  }

LABEL_23:
  v55 = vmovn_s64(vcgtq_u64(v53, xmmword_1AFE431E0));
  if (v55.i8[0])
  {
    v52[4] = a2;
  }

  if (v55.i8[4])
  {
    v52[5] = a2;
  }

LABEL_27:
  v56 = (v13 + 2 * v14);
  v57 = v38;
  v58 = &word_1F2500BA0;
  do
  {
    v59 = *v58++;
    *v56++ = v59 + v15;
    --v57;
  }

  while (v57);
  a4[4] = v37 + v15;
  a4[5] = v38 + v14;
}

void sub_1AFB356C8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (v2[2].i64[0] >= 1)
    {
      v4 = v2[3].i64[0];
      if (v4)
      {
        v5 = v2[3].i64[1];
        swift_getObjectType();
        swift_unknownObjectRetain();
        v6 = v4;
        v7 = v2;
        sub_1AF6F5B9C(v6, v5, 0, 4);
        sub_1AF6F5B9C(v7[9], v7[10], 0, 5);
        sub_1AF6F5C4C(1, v7[5], 0, v7[12], v7[13], 1, 0, 0);
        swift_unknownObjectRelease();
      }
    }
  }

  v8 = vsubq_s64(*v2, v2[2]);
  *v2 = v8;
  v2[2].i64[0] = 0;
  v2[2].i64[1] = 0;
  if (v8.i64[0] >= 1)
  {
    if (v8.i64[0] >= 0xFFFFuLL)
    {
      v9 = 0xFFFFLL;
    }

    else
    {
      v9 = v8.i64[0];
    }

    if (v8.i64[1] >= 0xFFFF)
    {
      v10 = 0xFFFFLL;
    }

    else
    {
      v10 = v8.i64[1];
    }

    v2[1].i64[0] = v9;
    v2[1].i64[1] = v10;
    CFXBufferAllocatorPerFrameAllocateWithLength(*(a1 + 232), 16 * v9);
    v12 = v11;
    v14 = v13;
    v2[3].i64[0] = v11;
    v2[3].i64[1] = v13;
    v15 = [swift_unknownObjectRetain() storageMode];
    swift_unknownObjectRelease();
    if (v15 == 2)
    {
      v16 = 0;
    }

    else
    {
      v17 = [swift_unknownObjectRetain() contents];
      v18 = v12;
      v16 = &v17[v14];
    }

    v2[4].i64[0] = v16;
    CFXBufferAllocatorPerFrameAllocateWithLength(*(a1 + 232), 4 * v9);
    v20 = v19;
    v22 = v21;
    v2[4].i64[1] = v19;
    v2[5].i64[0] = v21;
    v23 = [swift_unknownObjectRetain() storageMode];
    swift_unknownObjectRelease();
    if (v23 == 2)
    {
      v24 = 0;
    }

    else
    {
      v25 = [swift_unknownObjectRetain() contents];
      v26 = v20;
      v24 = &v25[v22];
    }

    v2[5].i64[1] = v24;
    CFXBufferAllocatorPerFrameAllocateWithLength(*(a1 + 232), 2 * v10);
    v28 = v27;
    v30 = v29;
    v2[6].i64[0] = v27;
    v2[6].i64[1] = v29;
    v31 = [swift_unknownObjectRetain() storageMode];
    swift_unknownObjectRelease();
    if (v31 == 2)
    {
      v32 = 0;
    }

    else
    {
      v33 = [swift_unknownObjectRetain() contents];
      v34 = v28;
      v32 = &v33[v30];
    }

    v2[7].i64[0] = v32;
  }
}

uint64_t sub_1AFB35950()
{
  result = swift_allocObject();
  *(result + 16) = 1;
  return result;
}

void sub_1AFB35990(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, __int128 *a5)
{
  if (!a2)
  {
    return;
  }

  v7 = a2;

  sub_1AF5FCA80();
  v10 = v9;

  if (v10 != 2)
  {
    *(v7 + 240) = 1;
    v153 = a4;
    v154 = v7;
    v143 = a1;
    v151 = a5;
    if ((v10 & 0x100) != 0)
    {
      v156 = v10;

      sub_1AF8989FC(0xD000000000000023, 0x80000001AFF37870, 0xD000000000000014, 0x80000001AFF488C0, MEMORY[0x1E69E7CC0], v193);
      *&__src[128] = v193[8];
      *&__src[144] = v193[9];
      *&__src[64] = v193[4];
      *&__src[80] = v193[5];
      *&__src[96] = v193[6];
      *&__src[112] = v193[7];
      *__src = v193[0];
      *&__src[16] = v193[1];
      *&__src[32] = v193[2];
      *&__src[48] = v193[3];
      v49 = a5[2];
      v50 = a5[4];
      *&__src[224] = a5[3];
      *&__src[240] = v50;
      v51 = *a5;
      v52 = a5[1];
      *&__src[160] = v193[10];
      *&__src[176] = v51;
      *&__src[256] = *(a5 + 10);
      *&__src[192] = v52;
      *&__src[208] = v49;
      sub_1AF5FF2F0(&v211);
      v213 = xmmword_1AFE68E40;
      v214 = xmmword_1AFE68E40;
      v211 = xmmword_1AFE9AB00;
      v212 = xmmword_1AFE68E40;
      *&__src[264] = xmmword_1AFE9AB00;
      *&__src[280] = xmmword_1AFE68E40;
      *&__src[296] = xmmword_1AFE68E40;
      *&__src[312] = xmmword_1AFE68E40;
      sub_1AFDFF308();
      sub_1AF6021F8(v193, __dst);
      sub_1AF89747C(v177);
      sub_1AF602254(v193);
      v53 = *a5;
      v54 = *(a5 + 1);
      v55 = *(a5 + 2);
      v56 = *(a5 + 3);
      v57 = *(a5 + 4);
      v58 = *(a5 + 5);
      v59 = *(a5 + 6);
      v60 = *(v151 + 7);
      MEMORY[0x1B271ACB0](v53);
      MEMORY[0x1B271ACB0](v54);
      MEMORY[0x1B271ACB0](v55);
      MEMORY[0x1B271ACB0](v56);
      MEMORY[0x1B271ACB0](v57);
      MEMORY[0x1B271ACB0](v58);
      MEMORY[0x1B271ACB0](v59);
      MEMORY[0x1B271ACB0](v60);
      MEMORY[0x1B271ACB0](*(v151 + 8));
      MEMORY[0x1B271ACB0](*(v151 + 9));
      sub_1AFDFF2A8();
      v318 = v211;
      v319 = v212;
      v320 = v213;
      v321 = v214;
      sub_1AF5FF304();
      sub_1AFDFF2A8();
      sub_1AFDFF2A8();
      MEMORY[0x1B271ACB0](3);
      sub_1AFDFF2A8();
      sub_1AFDFF2A8();
      v314 = *&v177[16];
      v315 = *&v177[32];
      v316 = *&v177[48];
      v317 = *&v177[64];
      v313 = *v177;
      v61 = sub_1AFDFF2E8();
      memcpy(__dst, __src, sizeof(__dst));
      v301 = 0;
      v300 = 0;
      v302 = 3;
      v303 = 0;
      v304 = 0;
      v305 = 2;
      v308 = 0;
      v306 = 0;
      v307 = 0;
      v309 = 257;
      v310 = v178;
      v311 = WORD2(v178);
      v312 = v61;
      v62 = sub_1AF730058(__dst);
      v64 = v63;
      v66 = v65;
      v67 = v65;

      sub_1AF602304(__dst);
      if (v67)
      {
        sub_1AF6022A8(v62, v64, v66);
        goto LABEL_100;
      }

      v68 = swift_unknownObjectRetain();
      sub_1AF6022A8(v68, v64, 0);
      if (qword_1ED72D720 != -1)
      {
        swift_once();
      }

      v293 = qword_1ED73B840;
      v294 = 0;
      v295 = 2;
      v296 = 0;
      v297 = 2;
      v298 = 0;
      sub_1AFCC39D0(1, 2, v194);
      v242[0] = v194[0];
      v242[1] = v194[1];
      v243 = v195;
      a1 = v143;
      sub_1AF6B06C0(v143, v242, 0x200000000, &v196);
      v7 = v154;
      LOBYTE(v10) = v156;
      v150 = v196;
      if (v196)
      {
        v69 = v199;
        v70 = v200;
        v71 = v201;
        v72 = v202;
        v229 = v197;
        v230 = v198;
        v148 = v203;
        if (v203 <= 0)
        {
        }

        else
        {
          v142 = *(v202 + 32);
          v170 = *(v201 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);

          if (v70)
          {
            v144 = v71;
            v166 = v70;
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            sub_1AF5D15C0(&v196, v177);
            v73 = (v69 + 24);
            v146 = v62;
            v74 = v142;
            do
            {
              v76 = *(v73 - 6);
              v75 = *(v73 - 5);
              v77 = *(v73 - 4);
              v161 = *v73;
              v163 = *(v73 - 1);
              v78 = v73[2];
              v159 = v73[1];
              if (v170)
              {
                v79 = *(v78 + 376);

                v74 = v142;
                os_unfair_lock_lock(v79);
                os_unfair_lock_lock(*(v78 + 344));
              }

              else
              {
              }

              ecs_stack_allocator_push_snapshot(v74);
              v80 = *(v72 + 64);
              v286[0] = *(v72 + 48);
              v286[1] = v80;
              v287 = *(v72 + 80);
              v81 = *(v72 + 32);
              v82 = *(*(*(*(v78 + 40) + 16) + 32) + 16) + 1;

              *(v72 + 48) = ecs_stack_allocator_allocate(v81, 48 * v82, 8);
              *(v72 + 56) = v82;
              *(v72 + 72) = 0;
              *(v72 + 80) = 0;
              *(v72 + 64) = 0;

              v177[0] = 1;
              v288[0] = v144;
              v288[1] = v78;
              v288[2] = v72;
              v288[3] = v77;
              v288[4] = (v75 - v76 + v77);
              v288[5] = v148;
              v288[6] = v76;
              v288[7] = v75;
              v288[8] = 0;
              v288[9] = 0;
              v289 = 1;
              v290 = v163;
              v291 = v161;
              v292 = v159;
              v7 = v154;

              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              sub_1AFD29AD8(v288, v153, v146, v154);
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();

              v231 = v150;
              v232 = v229;
              v233 = v230;
              sub_1AF630994(v72, &v231, v286);
              sub_1AF62D29C(v78);
              ecs_stack_allocator_pop_snapshot(v74);
              LOBYTE(v10) = v156;
              if (v170)
              {
                os_unfair_lock_unlock(*(v78 + 344));
                os_unfair_lock_unlock(*(v78 + 376));
              }

              v73 += 6;
              --v166;
            }

            while (v166);
            swift_unknownObjectRelease();
            sub_1AFB3CAC4(v194, sub_1AF7004C4);

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            sub_1AF0D9DB0(&v196, &qword_1ED725EA0, &type metadata for QueryResult);
            sub_1AF0D9DB0(&v196, &qword_1ED725EA0, &type metadata for QueryResult);
            a1 = v143;
            goto LABEL_7;
          }
        }

        sub_1AF5D15C0(&v196, v177);
        sub_1AFB3CAC4(v194, sub_1AF7004C4);

        swift_unknownObjectRelease();
        sub_1AF0D9DB0(&v196, &qword_1ED725EA0, &type metadata for QueryResult);
        sub_1AF0D9DB0(&v196, &qword_1ED725EA0, &type metadata for QueryResult);
      }

      else
      {
        swift_unknownObjectRelease();
        sub_1AFB3CAC4(v194, sub_1AF7004C4);
      }
    }

LABEL_7:
    if (qword_1ED72D720 != -1)
    {
      swift_once();
    }

    v280 = qword_1ED73B840;
    v281 = 0;
    v282 = 2;
    v283 = 0;
    v284 = 2;
    v285 = 0;
    sub_1AF829118(v204);
    sub_1AFA1CFD4(0, &qword_1ED7269A0, &qword_1ED7270C0, &qword_1ED7270D0, &protocol descriptor for Component);
    v11 = swift_allocObject();
    v12 = &type metadata for DebugInfoB;
    *(v11 + 16) = xmmword_1AFE431C0;
    if (v10)
    {
      v12 = &type metadata for DebugInfoA;
    }

    v13 = &off_1F2560048;
    if ((v10 & 1) == 0)
    {
      v13 = &off_1F255FFB8;
    }

    *(v11 + 32) = v12;
    *(v11 + 40) = v13;
    sub_1AF5F9038();
    sub_1AFB3F8A4(v204, &unk_1EB642A48, &type metadata for DebugInfoWireframePrimitive, &off_1F25604A8);
    swift_setDeallocating();
    swift_deallocClassInstance();
    v240[0] = v205[0];
    v240[1] = v205[1];
    v241 = v206;
    sub_1AF6B06C0(a1, v240, 0x200000000, v207);
    if (!*v207)
    {
      sub_1AFB3F8A4(v205, &unk_1EB642A48, &type metadata for DebugInfoWireframePrimitive, &off_1F25604A8);
      *(v7 + 240) = 0;
      goto LABEL_161;
    }

    v158 = *&v207[40];
    v169 = *(&v209 + 1);
    v227 = *&v207[8];
    v228 = *&v207[24];
    v160 = *(&v208 + 1);
    v145 = v209;
    v147 = *v207;
    v149 = v210;
    if (v210 < 1 || !*(&v208 + 1))
    {
      v16 = 0;
      v17 = 0;
      goto LABEL_96;
    }

    v14 = *(v209 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v168 = *(*(&v209 + 1) + 32);
    v237 = *v207;
    v238 = *&v207[8];
    v239 = *&v207[24];
    *&__src[32] = *&v207[32];
    *&__src[48] = v208;
    *&__src[64] = v209;
    *&__src[80] = v210;
    *__src = *v207;
    *&__src[16] = *&v207[16];
    sub_1AF5DD298(__src, v177);
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v155 = v14;
    while (1)
    {
      v18 = (v158 + 48 * v15);
      v19 = *v18;
      v162 = v18[1];
      v165 = v15;
      v21 = *(v18 + 2);
      v20 = *(v18 + 3);
      v22 = *(v18 + 4);
      v23 = *(v18 + 5);
      if (v14)
      {
        v24 = *(v23 + 376);

        os_unfair_lock_lock(v24);
        os_unfair_lock_lock(*(v23 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v168);
      v25 = *(v169 + 64);
      v278[0] = *(v169 + 48);
      v278[1] = v25;
      v279 = *(v169 + 80);
      v26 = *(*(*(*(v23 + 40) + 16) + 32) + 16) + 1;
      *(v169 + 48) = ecs_stack_allocator_allocate(*(v169 + 32), 48 * v26, 8);
      *(v169 + 56) = v26;
      *(v169 + 72) = 0;
      *(v169 + 80) = 0;
      *(v169 + 64) = 0;
      v27 = sub_1AF64B110(&type metadata for DebugInfoWireframePrimitive, &off_1F25604A8, v21, v20, v22, v169);
      if (v21)
      {
        v28 = v160;
        v14 = v155;
        if (v22)
        {
          v29 = v27 + 48;
          v30 = v165;
          do
          {
            v33 = v29;
            v34 = *(v29 - 2);
            v35 = v29[48];
            v29 += 112;
            v31 = 72;
            switch(v35)
            {
              case 1:
                v17 += 3;
                v32 = 6;
                break;
              case 2:
                v17 += 6;
                v32 = 6;
                break;
              case 3:
                goto LABEL_25;
              case 4:
                v31 = 24;
                goto LABEL_25;
              case 5:
                v31 = (*(v33 - 7) * 24.0);
LABEL_25:
                v17 += v31;
                v32 = 2 * v31;
                break;
              case 6:
              case 8:
                v17 += 8;
                v32 = 24;
                break;
              case 7:
                v17 += 48;
                v32 = 2 * v34 + 96;
                break;
              case 9:
                v36 = *(v33 - 1) + *v33;
                v17 += 24 * v36;
                v32 = 48 * v36;
                break;
              case 10:
                v17 += 4;
                v32 = 4;
                break;
              case 11:
                v17 += 2;
                v32 = 2;
                break;
              case 12:
                v17 += 12;
                v32 = 18;
                break;
              default:
                v37 = v17 + 6;
                v38 = 10;
                if (!v34)
                {
                  v38 = 2;
                  v37 = v17 + 2;
                }

                if (v34 == 1)
                {
                  v39 = 6;
                }

                else
                {
                  v39 = v38;
                }

                if (v34 == 1)
                {
                  v37 = v17 + 4;
                }

                v40 = v34 == 2;
                if (v34 == 2)
                {
                  v32 = 6;
                }

                else
                {
                  v32 = v39;
                }

                if (v40)
                {
                  v17 += 4;
                }

                else
                {
                  v17 = v37;
                }

                break;
            }

            v16 += v32;
            --v22;
          }

          while (v22);
          goto LABEL_53;
        }
      }

      else
      {
        v14 = v155;
        if (v19 != v162)
        {
          v41 = ~v19 + v162;
          v42 = &v27[112 * v19 + 48];
          v28 = v160;
          v30 = v165;
          while (1)
          {
            v45 = v42;
            v46 = *(v42 - 16);
            v47 = *(v42 + 48);
            v42 += 112;
            v43 = 72;
            switch(v47)
            {
              case 1:
                v17 += 3;
                goto LABEL_72;
              case 2:
                v17 += 6;
LABEL_72:
                v16 += 6;
                if (!v41)
                {
                  goto LABEL_53;
                }

                goto LABEL_58;
              case 3:
                goto LABEL_65;
              case 4:
                v43 = 24;
LABEL_65:
                v44 = 2 * v43;
                goto LABEL_57;
              case 5:
                v43 = (*(v45 - 7) * 24.0);
                v44 = 2 * v43;
                goto LABEL_57;
              case 6:
              case 8:
                v17 += 8;
                v16 += 24;
                if (!v41)
                {
                  goto LABEL_53;
                }

                goto LABEL_58;
              case 7:
                v44 = 2 * v46 + 96;
                v43 = 48;
                goto LABEL_57;
              case 9:
                v43 = 24 * (*(v45 - 1) + *v45);
                v44 = 48 * (*(v45 - 1) + *v45);
                goto LABEL_57;
              case 10:
                v17 += 4;
                v16 += 4;
                if (!v41)
                {
                  goto LABEL_53;
                }

                goto LABEL_58;
              case 11:
                v17 += 2;
                v16 += 2;
                if (!v41)
                {
                  goto LABEL_53;
                }

                goto LABEL_58;
              case 12:
                v17 += 12;
                v16 += 18;
                if (!v41)
                {
                  goto LABEL_53;
                }

                goto LABEL_58;
              default:
                if (v46 >= 3u)
                {
                  v44 = 10;
                  v43 = 6;
                }

                else
                {
                  v48 = v46 & 3;
                  v44 = qword_1AFE9B290[v48];
                  v43 = qword_1AFE9B2A8[v48];
                }

LABEL_57:
                v17 += v43;
                v16 += v44;
                if (!v41)
                {
                  goto LABEL_53;
                }

LABEL_58:
                --v41;
                break;
            }
          }
        }

        v28 = v160;
      }

      v30 = v165;
LABEL_53:
      sub_1AF630994(v169, &v237, v278);
      sub_1AF62D29C(v23);
      ecs_stack_allocator_pop_snapshot(v168);
      if (v14)
      {
        os_unfair_lock_unlock(*(v23 + 344));
        os_unfair_lock_unlock(*(v23 + 376));
      }

      v15 = v30 + 1;
      if (v15 == v28)
      {
        sub_1AF0D9DB0(v207, &qword_1ED725EA0, &type metadata for QueryResult);
        a1 = v143;
LABEL_96:
        sub_1AFB3CC14(v17, v16, a1, &v211);
        v190 = v223;
        v191 = v224;
        v192 = v225;
        v186 = v219;
        v187 = v220;
        v188 = v221;
        v189 = v222;
        v182 = v215;
        v183 = v216;
        v184 = v217;
        v185 = v218;
        v178 = v211;
        v179 = v212;
        v180 = v213;
        v181 = v214;
        if (v211)
        {
          v83 = v154;

          sub_1AF8989FC(0xD000000000000015, 0x80000001AFF488A0, 0x72665F6775626564, 0xEA00000000006761, MEMORY[0x1E69E7CC0], v226);
          *&v177[112] = v226[7];
          *&v177[128] = v226[8];
          *&v177[144] = v226[9];
          *&v177[160] = v226[10];
          *&v177[48] = v226[3];
          *&v177[64] = v226[4];
          *&v177[80] = v226[5];
          *&v177[96] = v226[6];
          *v177 = v226[0];
          *&v177[16] = v226[1];
          *&v177[32] = v226[2];
          v84 = v151[3];
          *&v177[208] = v151[2];
          *&v177[224] = v84;
          *&v177[240] = v151[4];
          *&v177[256] = *(v151 + 10);
          v85 = v151[1];
          *&v177[176] = *v151;
          *&v177[192] = v85;
          sub_1AF5FF2F0(&v171);
          v173 = xmmword_1AFE68E40;
          v174 = xmmword_1AFE68E40;
          v171 = xmmword_1AFE68E40;
          v172 = xmmword_1AFE68E40;
          *&v177[264] = xmmword_1AFE68E40;
          *&v177[280] = xmmword_1AFE68E40;
          *&v177[296] = xmmword_1AFE68E40;
          *&v177[312] = xmmword_1AFE68E40;
          sub_1AFDFF308();
          sub_1AF6021F8(v226, __src);
          sub_1AF89747C(&v248);
          sub_1AF602254(v226);
          v86 = *(v151 + 1);
          v87 = *(v151 + 2);
          v88 = *(v151 + 3);
          v89 = *(v151 + 4);
          v90 = *(v151 + 5);
          v92 = *(v151 + 6);
          v91 = *(v151 + 7);
          MEMORY[0x1B271ACB0](*v151);
          MEMORY[0x1B271ACB0](v86);
          MEMORY[0x1B271ACB0](v87);
          MEMORY[0x1B271ACB0](v88);
          MEMORY[0x1B271ACB0](v89);
          MEMORY[0x1B271ACB0](v90);
          MEMORY[0x1B271ACB0](v92);
          MEMORY[0x1B271ACB0](v91);
          MEMORY[0x1B271ACB0](*(v151 + 8));
          MEMORY[0x1B271ACB0](*(v151 + 9));
          sub_1AFDFF2A8();
          v274 = v171;
          v275 = v172;
          v276 = v173;
          v277 = v174;
          sub_1AF5FF304();
          sub_1AFDFF2A8();
          sub_1AFDFF2A8();
          MEMORY[0x1B271ACB0](2);
          sub_1AFDFF2A8();
          sub_1AFDFF2A8();
          v271 = v250;
          v272 = v251;
          v273 = v252;
          v269 = v248;
          v270 = v249;
          v93 = sub_1AFDFF2E8();
          memcpy(__src, v177, sizeof(__src));
          v257 = 0;
          v256 = 0;
          v258 = 2;
          v259 = 0;
          v260 = 0;
          v261 = 2;
          v264 = 0;
          v262 = 0;
          v263 = 0;
          v265 = 257;
          v266 = v175;
          v267 = v176;
          v268 = v93;
          v94 = sub_1AF730058(__src);
          v96 = v95;
          v98 = v97;
          v99 = v97;

          sub_1AF602304(__src);
          if (v99)
          {
            sub_1AF6022A8(v94, v96, v98);
            sub_1AFB3F8A4(v205, &unk_1EB642A48, &type metadata for DebugInfoWireframePrimitive, &off_1F25604A8);
            sub_1AF0D9DB0(v207, &qword_1ED725EA0, &type metadata for QueryResult);
            goto LABEL_160;
          }

          v100 = swift_unknownObjectRetain();
          sub_1AF6022A8(v100, v96, 0);
          v101 = v153;
          swift_getObjectType();
          [v153 setRenderPipelineState_];
          [v153 setDepthStencilState_];
          sub_1AFB19490(v143, v154);
          sub_1AF6F5CFC(2.0);
          if (v149 >= 1 && v160)
          {
            v102 = *(v145 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
            v103 = *(v169 + 32);
            v234 = v147;
            v235 = v227;
            v236 = v228;
            sub_1AF5D15C0(v207, &v248);
            v104 = 0;
            v157 = v102;
            v152 = v103;
            while (1)
            {
              v105 = (v158 + 48 * v104);
              v107 = *v105;
              v106 = v105[1];
              v108 = *(v105 + 2);
              v109 = *(v105 + 3);
              v111 = *(v105 + 4);
              v110 = *(v105 + 5);
              v167 = v104;
              if (v102)
              {
                v112 = *(v110 + 376);

                os_unfair_lock_lock(v112);
                os_unfair_lock_lock(*(v110 + 344));
              }

              else
              {
              }

              ecs_stack_allocator_push_snapshot(v103);
              v113 = *(v169 + 64);
              v244[0] = *(v169 + 48);
              v244[1] = v113;
              v245 = *(v169 + 80);
              v114 = *(*(*(*(v110 + 40) + 16) + 32) + 16) + 1;
              *(v169 + 48) = ecs_stack_allocator_allocate(*(v169 + 32), 48 * v114, 8);
              *(v169 + 56) = v114;
              *(v169 + 72) = 0;
              *(v169 + 80) = 0;
              *(v169 + 64) = 0;
              v115 = v110;
              v116 = sub_1AF64B110(&type metadata for DebugInfoWireframePrimitive, &off_1F25604A8, v108, v109, v111, v169);
              v117 = sub_1AF64B110(&type metadata for WorldTransform, &off_1F2529FC0, v108, v109, v111, v169);
              v119 = v118;
              v164 = v115;
              v120 = sub_1AF64B110(&type metadata for DebugInfoColor, &off_1F2560488, v108, v109, v111, v169);
              if (v107 != v106)
              {
                break;
              }

              v83 = v154;
LABEL_110:
              sub_1AF630994(v169, &v234, v244);
              sub_1AF62D29C(v115);
              v103 = v152;
              ecs_stack_allocator_pop_snapshot(v152);
              v102 = v157;
              if (v157)
              {
                os_unfair_lock_unlock(*(v164 + 43));
                os_unfair_lock_unlock(*(v164 + 47));
              }

              v104 = v167 + 1;
              if (v167 + 1 == v160)
              {
                sub_1AF0D9DB0(v207, &qword_1ED725EA0, &type metadata for QueryResult);
                v101 = v153;
                goto LABEL_159;
              }
            }

            v125 = v121;
            v126 = v106 - v107;
            v127 = &v120[4 * v107];
            v128 = &v116[112 * v107 + 32];
            v129 = &v117[64 * v107 + 32];
            v83 = v154;
            while (2)
            {
              v135 = v128;
              v254 = *(v128 + 64);
              v251 = *(v128 + 16);
              v252 = *(v128 + 32);
              v253 = *(v128 + 48);
              v248 = *(v128 - 32);
              v249 = *(v128 - 16);
              v250 = *v128;
              v137 = *v128;
              v128 += 112;
              v136 = v137;
              v138 = 72;
              v139 = 144;
              switch(v254)
              {
                case 1:
                  if (v179 >= v180 + 3)
                  {
                    goto LABEL_130;
                  }

                  goto LABEL_147;
                case 2:
                  if (v179 < v180 + 6)
                  {
                    goto LABEL_147;
                  }

LABEL_130:
                  if (*(&v179 + 1) < *(&v180 + 1) + 6)
                  {
                    goto LABEL_147;
                  }

                  goto LABEL_140;
                case 3:
                  goto LABEL_138;
                case 4:
                  v139 = 48;
                  v138 = 24;
                  goto LABEL_138;
                case 5:
                  v138 = (*(&v249 + 1) * 24.0);
                  v139 = 2 * (*(v135 - 12) * 24.0);
                  goto LABEL_138;
                case 6:
                case 8:
                  if (v179 < v180 + 8 || *(&v179 + 1) < *(&v180 + 1) + 24)
                  {
                    goto LABEL_147;
                  }

                  goto LABEL_140;
                case 7:
                  if (v179 < v180 + 48)
                  {
                    goto LABEL_147;
                  }

                  v139 = 2 * v136 + 96;
                  goto LABEL_139;
                case 9:
                  v138 = 24 * (*(&v250 + 1) + v251);
                  v139 = 48 * (*(v135 + 8) + *(v135 + 16));
                  goto LABEL_138;
                case 10:
                  if (v179 < v180 + 4 || *(&v179 + 1) < *(&v180 + 1) + 4)
                  {
                    goto LABEL_147;
                  }

                  goto LABEL_140;
                case 11:
                  if (v179 < v180 + 2 || *(&v179 + 1) < *(&v180 + 1) + 2)
                  {
                    goto LABEL_147;
                  }

                  goto LABEL_140;
                case 12:
                  if (v179 < v180 + 12 || *(&v179 + 1) < *(&v180 + 1) + 18)
                  {
                    goto LABEL_147;
                  }

                  goto LABEL_140;
                default:
                  if (v250 > 2uLL)
                  {
                    v138 = 6;
                    v140 = v136;
                    if (!v136)
                    {
LABEL_151:
                      v139 = 2;
                      goto LABEL_138;
                    }
                  }

                  else
                  {
                    v138 = qword_1AFE9B2A8[v250];
                    v140 = v136;
                    if (!v136)
                    {
                      goto LABEL_151;
                    }
                  }

                  if (v140 == 2 || v140 == 1)
                  {
                    v139 = 6;
                  }

                  else
                  {
                    v139 = 10;
                  }

LABEL_138:
                  if (v179 < v138 + v180)
                  {
                    goto LABEL_147;
                  }

LABEL_139:
                  if (*(&v179 + 1) < v139 + *(&v180 + 1))
                  {
LABEL_147:
                    sub_1AFB356C8(v154, v153);
                    if (v125)
                    {
LABEL_141:
                      v141 = 0;
                      if ((v119 & 1) == 0)
                      {
                        goto LABEL_149;
                      }

                      goto LABEL_113;
                    }
                  }

                  else
                  {
LABEL_140:
                    if (v125)
                    {
                      goto LABEL_141;
                    }
                  }

                  v141 = *v127;
                  if ((v119 & 1) == 0)
                  {
LABEL_149:
                    v130 = 0;
                    v131 = v129[-2];
                    v132 = v129[-1];
                    v133 = *v129;
                    v134 = v129[1];
LABEL_114:
                    v246[0] = v131;
                    v246[1] = v132;
                    v246[2] = v133;
                    v246[3] = v134;
                    v247 = v130;
                    sub_1AFB32C68(v141 | ((v125 & 1) << 32), v246, &v178, *v131.i64, *v132.i64, v133, *v134.i64, v122, v123, v124);
                    v127 += 4;
                    v129 += 4;
                    if (!--v126)
                    {
                      goto LABEL_110;
                    }

                    continue;
                  }

LABEL_113:
                  v130 = 1;
                  v131 = 0uLL;
                  v132 = 0uLL;
                  v133 = 0uLL;
                  v134 = 0uLL;
                  goto LABEL_114;
              }
            }
          }

LABEL_159:
          sub_1AFB356C8(v83, v101);
          sub_1AFB3F8A4(v205, &unk_1EB642A48, &type metadata for DebugInfoWireframePrimitive, &off_1F25604A8);
          sub_1AF0D9DB0(v207, &qword_1ED725EA0, &type metadata for QueryResult);
          swift_unknownObjectRelease();
LABEL_160:
          *(v83 + 240) = 0;
LABEL_161:

          return;
        }

        sub_1AFB3F8A4(v205, &unk_1EB642A48, &type metadata for DebugInfoWireframePrimitive, &off_1F25604A8);
        sub_1AF0D9DB0(v207, &qword_1ED725EA0, &type metadata for QueryResult);
LABEL_100:
        *(v154 + 240) = 0;
        goto LABEL_161;
      }
    }
  }
}

uint64_t sub_1AFB371F8(uint64_t a1)
{

  sub_1AF5FCA80();
  v3 = v2;

  if (v3 == 2)
  {
    return 0;
  }

  v5 = *(*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 8 * *thread_worker_index(v4) + 8);
  sub_1AFA1CFD4(0, &qword_1ED72F7D0, &qword_1ED72FFE0, &qword_1ED72FFF0, &protocol descriptor for EntityComponent);
  v6 = swift_allocObject();
  v7 = &type metadata for DebugInfoB;
  *(v6 + 16) = xmmword_1AFE431C0;
  if (v3)
  {
    v7 = &type metadata for DebugInfoA;
  }

  v8 = &off_1F2560428;
  if ((v3 & 1) == 0)
  {
    v8 = &off_1F2560448;
  }

  *(v6 + 32) = v7;
  *(v6 + 40) = v8;
  return v5;
}

uint64_t sub_1AFB372F8(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4, int a5)
{
  v28 = a2[1];
  v29 = *a2;
  v26 = a2[3];
  v27 = a2[2];
  v30[0] = xmmword_1AFE201A0;
  v30[1] = xmmword_1AFE9AB10;
  v31 = 6;
  ecs_stack_allocator_push_snapshot(*(a3 + 32));
  v9 = *(a4 + 16);
  v10 = 2 * v9;
  v11 = ecs_stack_allocator_allocate(*(a3 + 32), 16 * v9 + 64, 8);
  *v11 = &type metadata for DebugInfoWireframePrimitive;
  v11[1] = &off_1F25604A8;
  v11[2] = &type metadata for DebugInfoColor;
  v11[3] = &off_1F2560488;
  v11[4] = &type metadata for WorldTransform;
  v11[5] = &off_1F2529FC0;
  v11[6] = &type metadata for Beamed;
  v11[7] = &off_1F2529FA0;
  if (v9)
  {
    if (v9 > 0x13)
    {
      v12 = 0;
      v18 = 2 * (v9 - 1);
      v13 = 4;
      if (&v11[v18 + 8] < v11 + 8 || &v11[v18 + 9] < v11 + 9 || (v9 - 1) >> 60)
      {
        goto LABEL_4;
      }

      if ((v11 + 8) >= a4 + v10 * 8 + 32 || a4 + 32 >= &v11[v10 + 8])
      {
        v12 = v9 & 0x1FFFFFFFFFFFFFFCLL;
        v13 = (v9 & 0x1FFFFFFFFFFFFFFCLL) + 4;
        v19 = v11 + 12;
        v20 = (a4 + 64);
        v21 = v9 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          v23 = *(v20 - 2);
          v22 = *(v20 - 1);
          v25 = *v20;
          v24 = v20[1];
          v20 += 4;
          *(v19 - 2) = v23;
          *(v19 - 1) = v22;
          *v19 = v25;
          v19[1] = v24;
          v19 += 4;
          v21 -= 4;
        }

        while (v21);
        if (v9 == v12)
        {
          goto LABEL_8;
        }

        goto LABEL_4;
      }
    }

    v12 = 0;
    v13 = 4;
LABEL_4:
    v14 = v9 - v12;
    v15 = (a4 + 16 * v12 + 32);
    do
    {
      v16 = *v15++;
      *&v11[2 * v13++] = v16;
      --v14;
    }

    while (v14);
    goto LABEL_8;
  }

  v13 = 4;
LABEL_8:
  sub_1AF63D8A8(v11, v13, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a3, v30, a5, v29, v28, v27, v26);
  result = ecs_stack_allocator_pop_snapshot(*(a3 + 32));
  if (v5)
  {
    __break(1u);
  }

  return result;
}

void sub_1AFB37500(uint64_t a1)
{

  sub_1AF5FCA80();
  v3 = v2;

  if (v3 != 2)
  {
    v121 = *(*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 8 * *thread_worker_index(v4) + 8);
    sub_1AFA1CFD4(0, &qword_1ED72F7D0, &qword_1ED72FFE0, &qword_1ED72FFF0, &protocol descriptor for EntityComponent);
    v5 = swift_allocObject();
    v6 = v5;
    v7 = &type metadata for DebugInfoB;
    *(v5 + 16) = xmmword_1AFE431C0;
    if (v3)
    {
      v7 = &type metadata for DebugInfoA;
    }

    v8 = &off_1F2560428;
    if ((v3 & 1) == 0)
    {
      v8 = &off_1F2560448;
    }

    *(v5 + 32) = v7;
    *(v5 + 40) = v8;
    v120 = sub_1AFB3CAA4(0, 255, 0);
    if (qword_1EB637250 != -1)
    {
      swift_once();
    }

    v230[0] = xmmword_1EB6C3578;
    v230[1] = unk_1EB6C3588;
    v231 = qword_1EB6C3598;
    sub_1AF6B06C0(a1, v230, 0x200000000, &v122);
    v119 = v6;
    v93 = a1;
    v94 = v122;
    if (v122)
    {
      v9 = v125;
      v10 = v126;
      v11 = v128;
      v171 = v123;
      v172 = v124;
      v83 = v129;
      v88 = v127;
      if (v129 > 0 && v126)
      {
        v12 = *(v128 + 32);
        v13 = *(v127 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);

        sub_1AF5D15C0(&v122, v225);
        v14 = (v9 + 24);
        v79 = v13;
        do
        {
          v114 = v10;
          v15 = *(v14 - 6);
          v16 = *(v14 - 5);
          v17 = *(v14 - 4);
          v104 = *v14;
          v109 = *(v14 - 1);
          v18 = v14[2];
          v99 = v14[1];
          if (v13)
          {
            v19 = *(v18 + 376);

            os_unfair_lock_lock(v19);
            os_unfair_lock_lock(*(v18 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v12);
          v20 = *(v11 + 64);
          v223[0] = *(v11 + 48);
          v223[1] = v20;
          v224 = *(v11 + 80);
          v21 = *(v11 + 32);
          v22 = *(*(*(*(v18 + 40) + 16) + 32) + 16) + 1;

          *(v11 + 48) = ecs_stack_allocator_allocate(v21, 48 * v22, 8);
          *(v11 + 56) = v22;
          *(v11 + 72) = 0;
          *(v11 + 80) = 0;
          *(v11 + 64) = 0;

          LOBYTE(v216[0]) = 1;
          v225[0] = v88;
          v225[1] = v18;
          v225[2] = v11;
          v225[3] = v17;
          v225[4] = (v16 - v15 + v17);
          v225[5] = v83;
          v225[6] = v15;
          v225[7] = v16;
          v225[8] = 0;
          v225[9] = 0;
          v226 = 1;
          v227 = v109;
          v228 = v104;
          v229 = v99;

          sub_1AFD27208(v225, v121, v119, v120);

          v173 = v94;
          v174 = v171;
          v175 = v172;
          sub_1AF630994(v11, &v173, v223);
          sub_1AF62D29C(v18);
          ecs_stack_allocator_pop_snapshot(v12);
          v13 = v79;
          if (v79)
          {
            os_unfair_lock_unlock(*(v18 + 344));
            os_unfair_lock_unlock(*(v18 + 376));
          }

          v14 += 6;
          v10 = v114 - 1;
        }

        while (v114 != 1);
        sub_1AF0D9DB0(&v122, &qword_1ED725EA0, &type metadata for QueryResult);
        v6 = v119;
        sub_1AF0D9DB0(&v122, &qword_1ED725EA0, &type metadata for QueryResult);

        a1 = v93;
      }

      else
      {
        sub_1AF0D9DB0(&v122, &qword_1ED725EA0, &type metadata for QueryResult);
      }
    }

    if (qword_1EB637228 != -1)
    {
      swift_once();
    }

    v221[0] = xmmword_1EB6C34B0;
    v221[1] = unk_1EB6C34C0;
    v222 = qword_1EB6C34D0;
    sub_1AF6B06C0(a1, v221, 0x200000000, &v130);
    v95 = v130;
    if (v130)
    {
      v23 = v133;
      v24 = v134;
      v25 = v136;
      v169 = v131;
      v170 = v132;
      v84 = v137;
      v89 = v135;
      if (v137 > 0 && v134)
      {
        v26 = *(v136 + 32);
        v27 = *(v135 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);

        sub_1AF5D15C0(&v130, v216);
        v28 = (v23 + 24);
        v80 = v27;
        do
        {
          v115 = v24;
          v29 = *(v28 - 6);
          v30 = *(v28 - 5);
          v31 = *(v28 - 4);
          v105 = *v28;
          v110 = *(v28 - 1);
          v32 = v28[2];
          v100 = v28[1];
          if (v27)
          {
            v33 = *(v32 + 376);

            os_unfair_lock_lock(v33);
            os_unfair_lock_lock(*(v32 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v26);
          v34 = *(v25 + 64);
          v214[0] = *(v25 + 48);
          v214[1] = v34;
          v215 = *(v25 + 80);
          v35 = *(v25 + 32);
          v36 = *(*(*(*(v32 + 40) + 16) + 32) + 16) + 1;

          *(v25 + 48) = ecs_stack_allocator_allocate(v35, 48 * v36, 8);
          *(v25 + 56) = v36;
          *(v25 + 72) = 0;
          *(v25 + 80) = 0;
          *(v25 + 64) = 0;

          LOBYTE(v207[0]) = 1;
          v216[0] = v89;
          v216[1] = v32;
          v216[2] = v25;
          v216[3] = v31;
          v216[4] = (v30 - v29 + v31);
          v216[5] = v84;
          v216[6] = v29;
          v216[7] = v30;
          v216[8] = 0;
          v216[9] = 0;
          v217 = 1;
          v218 = v110;
          v219 = v105;
          v220 = v100;

          sub_1AFD27734(v216, v121, v119, v120);

          v176 = v95;
          v177 = v169;
          v178 = v170;
          sub_1AF630994(v25, &v176, v214);
          sub_1AF62D29C(v32);
          ecs_stack_allocator_pop_snapshot(v26);
          v27 = v80;
          if (v80)
          {
            os_unfair_lock_unlock(*(v32 + 344));
            os_unfair_lock_unlock(*(v32 + 376));
          }

          v28 += 6;
          v24 = v115 - 1;
        }

        while (v115 != 1);
        sub_1AF0D9DB0(&v130, &qword_1ED725EA0, &type metadata for QueryResult);
        v6 = v119;
        sub_1AF0D9DB0(&v130, &qword_1ED725EA0, &type metadata for QueryResult);

        a1 = v93;
      }

      else
      {
        sub_1AF0D9DB0(&v130, &qword_1ED725EA0, &type metadata for QueryResult);
      }
    }

    if (qword_1EB637240 != -1)
    {
      swift_once();
    }

    v212[0] = xmmword_1EB6C3528;
    v212[1] = unk_1EB6C3538;
    v213 = qword_1EB6C3548;
    sub_1AF6B06C0(a1, v212, 0x200000000, &v138);
    v96 = v138;
    if (v138)
    {
      v37 = v141;
      v38 = v142;
      v39 = v144;
      v167 = v139;
      v168 = v140;
      v85 = v145;
      v90 = v143;
      if (v145 > 0 && v142)
      {
        v40 = v144[4];
        v116 = *(v143 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v41 = v6;

        sub_1AF5D15C0(&v138, v207);
        v42 = (v37 + 24);
        do
        {
          v43 = v39;
          v45 = *(v42 - 6);
          v44 = *(v42 - 5);
          v46 = *(v42 - 4);
          v106 = *v42;
          v111 = *(v42 - 1);
          v47 = v42[2];
          v101 = v42[1];
          if (v116)
          {
            v48 = *(v47 + 376);

            v49 = v48;
            v50 = v119;
            os_unfair_lock_lock(v49);
            os_unfair_lock_lock(*(v47 + 344));
          }

          else
          {

            v50 = v41;
          }

          ecs_stack_allocator_push_snapshot(v40);

          sub_1AF630914(v51, v43, v146);

          LOBYTE(v200[0]) = 1;
          v207[0] = v90;
          v207[1] = v47;
          v207[2] = v43;
          v207[3] = v46;
          v207[4] = (v44 - v45 + v46);
          v207[5] = v85;
          v207[6] = v45;
          v207[7] = v44;
          v207[8] = 0;
          v207[9] = 0;
          v208 = 1;
          v209 = v111;
          v210 = v106;
          v211 = v101;

          v41 = v50;
          sub_1AFD10858(v207, v121, v50, v120);
          v179 = v96;
          v180 = v167;
          v181 = v168;
          sub_1AF630994(v43, &v179, v146);
          sub_1AF62D29C(v47);
          ecs_stack_allocator_pop_snapshot(v40);
          v39 = v43;
          if (v116)
          {
            os_unfair_lock_unlock(*(v47 + 344));
            os_unfair_lock_unlock(*(v47 + 376));
          }

          v42 += 6;
          --v38;
        }

        while (v38);
        sub_1AF0D9DB0(&v138, &qword_1ED725EA0, &type metadata for QueryResult);
        sub_1AF0D9DB0(&v138, &qword_1ED725EA0, &type metadata for QueryResult);

        a1 = v93;
      }

      else
      {
        sub_1AF0D9DB0(&v138, &qword_1ED725EA0, &type metadata for QueryResult);
      }
    }

    if (qword_1EB637230 != -1)
    {
      swift_once();
    }

    v205[0] = xmmword_1EB6C34D8;
    v205[1] = unk_1EB6C34E8;
    v206 = qword_1EB6C34F8;
    sub_1AF6B06C0(a1, v205, 0x200000000, &v147);
    v97 = v147;
    if (v147)
    {
      v52 = v150;
      v53 = v151;
      v54 = v153;
      v165 = v148;
      v166 = v149;
      v86 = v154;
      v91 = v152;
      if (v154 > 0 && v151)
      {
        v55 = *(v153 + 32);
        v56 = *(v152 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);

        sub_1AF5D15C0(&v147, v200);
        v57 = (v52 + 24);
        v81 = v56;
        do
        {
          v117 = v53;
          v58 = *(v57 - 6);
          v59 = *(v57 - 5);
          v60 = *(v57 - 4);
          v107 = *v57;
          v112 = *(v57 - 1);
          v61 = v57[2];
          v102 = v57[1];
          if (v56)
          {
            v62 = *(v61 + 376);

            os_unfair_lock_lock(v62);
            os_unfair_lock_lock(*(v61 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v55);
          v63 = *(v54 + 64);
          v198[0] = *(v54 + 48);
          v198[1] = v63;
          v199 = *(v54 + 80);
          v64 = *(v54 + 32);
          v65 = *(*(*(*(v61 + 40) + 16) + 32) + 16) + 1;

          *(v54 + 48) = ecs_stack_allocator_allocate(v64, 48 * v65, 8);
          *(v54 + 56) = v65;
          *(v54 + 72) = 0;
          *(v54 + 80) = 0;
          *(v54 + 64) = 0;

          LOBYTE(v191[0]) = 1;
          v200[0] = v91;
          v200[1] = v61;
          v200[2] = v54;
          v200[3] = v60;
          v200[4] = (v59 - v58 + v60);
          v200[5] = v86;
          v200[6] = v58;
          v200[7] = v59;
          v200[8] = 0;
          v200[9] = 0;
          v201 = 1;
          v202 = v112;
          v203 = v107;
          v204 = v102;

          sub_1AFD27C10(v200, v121, v119, v120);

          v182 = v97;
          v183 = v165;
          v184 = v166;
          sub_1AF630994(v54, &v182, v198);
          sub_1AF62D29C(v61);
          ecs_stack_allocator_pop_snapshot(v55);
          v56 = v81;
          if (v81)
          {
            os_unfair_lock_unlock(*(v61 + 344));
            os_unfair_lock_unlock(*(v61 + 376));
          }

          v57 += 6;
          v53 = v117 - 1;
        }

        while (v117 != 1);
        sub_1AF0D9DB0(&v147, &qword_1ED725EA0, &type metadata for QueryResult);
        sub_1AF0D9DB0(&v147, &qword_1ED725EA0, &type metadata for QueryResult);

        a1 = v93;
      }

      else
      {
        sub_1AF0D9DB0(&v147, &qword_1ED725EA0, &type metadata for QueryResult);
      }
    }

    if (qword_1EB637238 != -1)
    {
      swift_once();
    }

    v196[0] = xmmword_1EB6C3500;
    v196[1] = *algn_1EB6C3510;
    v197 = qword_1EB6C3520;
    sub_1AF6B06C0(a1, v196, 0x200000000, &v155);
    v92 = v155;
    if (v155)
    {
      v66 = v158;
      v67 = v159;
      v68 = v161;
      v163 = v156;
      v164 = v157;
      v82 = v162;
      v87 = v160;
      if (v162 > 0 && v159)
      {
        v69 = *(v161 + 32);
        v118 = *(v160 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);

        sub_1AF5D15C0(&v155, v191);
        v70 = (v66 + 24);
        do
        {
          v113 = v67;
          v72 = *(v70 - 6);
          v71 = *(v70 - 5);
          v73 = *(v70 - 4);
          v74 = v70[2];
          v103 = *v70;
          v108 = *(v70 - 1);
          v98 = v70[1];
          if (v118)
          {
            v75 = *(v74 + 376);

            os_unfair_lock_lock(v75);
            os_unfair_lock_lock(*(v74 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v69);
          v76 = *(v68 + 64);
          v189[0] = *(v68 + 48);
          v189[1] = v76;
          v190 = *(v68 + 80);
          v77 = *(v68 + 32);
          v78 = *(*(*(*(v74 + 40) + 16) + 32) + 16) + 1;

          *(v68 + 48) = ecs_stack_allocator_allocate(v77, 48 * v78, 8);
          *(v68 + 56) = v78;
          *(v68 + 72) = 0;
          *(v68 + 80) = 0;
          *(v68 + 64) = 0;

          LOBYTE(v185) = 1;
          v191[0] = v87;
          v191[1] = v74;
          v191[2] = v68;
          v191[3] = v73;
          v191[4] = (v71 - v72 + v73);
          v191[5] = v82;
          v191[6] = v72;
          v191[7] = v71;
          v191[8] = 0;
          v191[9] = 0;
          v192 = 1;
          v193 = v108;
          v194 = v103;
          v195 = v98;

          sub_1AFD280CC(v191, v93, v121, v119, v120);

          v186 = v92;
          v187 = v163;
          v188 = v164;
          sub_1AF630994(v68, &v186, v189);
          sub_1AF62D29C(v74);
          ecs_stack_allocator_pop_snapshot(v69);
          if (v118)
          {
            os_unfair_lock_unlock(*(v74 + 344));
            os_unfair_lock_unlock(*(v74 + 376));
          }

          v70 += 6;
          v67 = v113 - 1;
        }

        while (v113 != 1);

        sub_1AF0D9DB0(&v155, &qword_1ED725EA0, &type metadata for QueryResult);
      }

      swift_setDeallocating();
      swift_deallocClassInstance();
      sub_1AF0D9DB0(&v155, &qword_1ED725EA0, &type metadata for QueryResult);
    }

    else
    {
      swift_setDeallocating();
      swift_deallocClassInstance();
    }
  }
}

uint64_t sub_1AFB38684(_BYTE *a1, __n128 *a2, uint64_t a3, uint64_t a4, int a5)
{
  v61 = a2[2];
  v62 = a2[3];
  v59 = *a2;
  v60 = a2[1];
  if (!*a1)
  {
    v63 = xmmword_1AFE201A0;
    v64 = xmmword_1AFE9AB10;
    v65 = 6;
    v9 = (a3 + 32);
    ecs_stack_allocator_push_snapshot(*(a3 + 32));
    v22 = *(a4 + 16);
    v23 = 2 * v22;
    v12 = ecs_stack_allocator_allocate(*v9, 16 * v22 + 64, 8);
    *v12 = &type metadata for DebugInfoWireframePrimitive;
    v12[1] = &off_1F25604A8;
    v12[2] = &type metadata for DebugInfoColor;
    v12[3] = &off_1F2560488;
    v12[4] = &type metadata for WorldTransform;
    v12[5] = &off_1F2529FC0;
    v12[6] = &type metadata for Beamed;
    v12[7] = &off_1F2529FA0;
    if (!v22)
    {
      goto LABEL_21;
    }

    v13 = v61;
    v14 = v62;
    v15 = v59;
    v16 = v60;
    if (v22 > 0x13)
    {
      v24 = 0;
      v43 = 2 * (v22 - 1);
      v18 = 4;
      if (&v12[v43 + 8] < v12 + 8 || &v12[v43 + 9] < v12 + 9 || (v22 - 1) >> 60)
      {
        goto LABEL_12;
      }

      if ((v12 + 8) >= a4 + v23 * 8 + 32 || a4 + 32 >= &v12[v23 + 8])
      {
        v24 = v22 & 0x1FFFFFFFFFFFFFFCLL;
        v18 = (v22 & 0x1FFFFFFFFFFFFFFCLL) + 4;
        v44 = v12 + 12;
        v45 = (a4 + 64);
        v46 = v22 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          v47 = *(v45 - 2);
          v48 = *(v45 - 1);
          v49 = *v45;
          v50 = v45[1];
          v45 += 4;
          *(v44 - 2) = v47;
          *(v44 - 1) = v48;
          *v44 = v49;
          v44[1] = v50;
          v44 += 4;
          v46 -= 4;
        }

        while (v46);
        if (v22 == v24)
        {
          goto LABEL_22;
        }

        goto LABEL_12;
      }
    }

    v24 = 0;
    v18 = 4;
LABEL_12:
    v25 = v22 - v24;
    v26 = (a4 + 16 * v24 + 32);
    do
    {
      v27 = *v26++;
      *&v12[2 * v18++] = v27;
      --v25;
    }

    while (v25);
    goto LABEL_22;
  }

  if (*a1 != 1)
  {
    v63 = xmmword_1AFE718B0;
    v65 = 3;
    v9 = (a3 + 32);
    ecs_stack_allocator_push_snapshot(*(a3 + 32));
    v28 = *(a4 + 16);
    v29 = 2 * v28;
    v12 = ecs_stack_allocator_allocate(*v9, 16 * v28 + 64, 8);
    *v12 = &type metadata for DebugInfoWireframePrimitive;
    v12[1] = &off_1F25604A8;
    v12[2] = &type metadata for DebugInfoColor;
    v12[3] = &off_1F2560488;
    v12[4] = &type metadata for WorldTransform;
    v12[5] = &off_1F2529FC0;
    v12[6] = &type metadata for Beamed;
    v12[7] = &off_1F2529FA0;
    if (!v28)
    {
      goto LABEL_21;
    }

    v13 = v61;
    v14 = v62;
    v15 = v59;
    v16 = v60;
    if (v28 > 0x13)
    {
      v30 = 0;
      v51 = 2 * (v28 - 1);
      v18 = 4;
      if (&v12[v51 + 8] < v12 + 8 || &v12[v51 + 9] < v12 + 9 || (v28 - 1) >> 60)
      {
        goto LABEL_18;
      }

      if ((v12 + 8) >= a4 + v29 * 8 + 32 || a4 + 32 >= &v12[v29 + 8])
      {
        v30 = v28 & 0x1FFFFFFFFFFFFFFCLL;
        v18 = (v28 & 0x1FFFFFFFFFFFFFFCLL) + 4;
        v52 = v12 + 12;
        v53 = (a4 + 64);
        v54 = v28 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          v55 = *(v53 - 2);
          v56 = *(v53 - 1);
          v57 = *v53;
          v58 = v53[1];
          v53 += 4;
          *(v52 - 2) = v55;
          *(v52 - 1) = v56;
          *v52 = v57;
          v52[1] = v58;
          v52 += 4;
          v54 -= 4;
        }

        while (v54);
        if (v28 == v30)
        {
          goto LABEL_22;
        }

        goto LABEL_18;
      }
    }

    v30 = 0;
    v18 = 4;
LABEL_18:
    v31 = v28 - v30;
    v32 = (a4 + 16 * v30 + 32);
    do
    {
      v33 = *v32++;
      *&v12[2 * v18++] = v33;
      --v31;
    }

    while (v31);
    goto LABEL_22;
  }

  v63 = xmmword_1AFE201A0;
  v64 = xmmword_1AFE52680;
  v65 = 6;
  v9 = (a3 + 32);
  ecs_stack_allocator_push_snapshot(*(a3 + 32));
  v10 = *(a4 + 16);
  v11 = 2 * v10;
  v12 = ecs_stack_allocator_allocate(*v9, 16 * v10 + 64, 8);
  *v12 = &type metadata for DebugInfoWireframePrimitive;
  v12[1] = &off_1F25604A8;
  v12[2] = &type metadata for DebugInfoColor;
  v12[3] = &off_1F2560488;
  v12[4] = &type metadata for WorldTransform;
  v12[5] = &off_1F2529FC0;
  v12[6] = &type metadata for Beamed;
  v12[7] = &off_1F2529FA0;
  if (v10)
  {
    v13 = v61;
    v14 = v62;
    v15 = v59;
    v16 = v60;
    if (v10 > 0x13)
    {
      v17 = 0;
      v35 = 2 * (v10 - 1);
      v18 = 4;
      if (&v12[v35 + 8] < v12 + 8 || &v12[v35 + 9] < v12 + 9 || (v10 - 1) >> 60)
      {
        goto LABEL_6;
      }

      if ((v12 + 8) >= a4 + v11 * 8 + 32 || a4 + 32 >= &v12[v11 + 8])
      {
        v17 = v10 & 0x1FFFFFFFFFFFFFFCLL;
        v18 = (v10 & 0x1FFFFFFFFFFFFFFCLL) + 4;
        v36 = v12 + 12;
        v37 = (a4 + 64);
        v38 = v10 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          v39 = *(v37 - 2);
          v40 = *(v37 - 1);
          v41 = *v37;
          v42 = v37[1];
          v37 += 4;
          *(v36 - 2) = v39;
          *(v36 - 1) = v40;
          *v36 = v41;
          v36[1] = v42;
          v36 += 4;
          v38 -= 4;
        }

        while (v38);
        if (v10 == v17)
        {
          goto LABEL_22;
        }

        goto LABEL_6;
      }
    }

    v17 = 0;
    v18 = 4;
LABEL_6:
    v19 = v10 - v17;
    v20 = (a4 + 16 * v17 + 32);
    do
    {
      v21 = *v20++;
      *&v12[2 * v18++] = v21;
      --v19;
    }

    while (v19);
    goto LABEL_22;
  }

LABEL_21:
  v18 = 4;
  v13 = v61;
  v14 = v62;
  v15 = v59;
  v16 = v60;
LABEL_22:
  v66 = 1;
  sub_1AF63D8A8(v12, v18, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a3, &v63, a5, v15, v16, v13, v14);
  result = ecs_stack_allocator_pop_snapshot(*v9);
  if (v5)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFB38B80(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  if (*(a1 + 4) != 1)
  {
    v124 = a2[1];
    v126 = *a2;
    v120 = a2[3];
    v122 = a2[2];
    v127 = 0uLL;
    v128 = xmmword_1AFE20180;
    *&v129[0] = v7 | 0x3F00000000000000;
    *(v129 + 8) = xmmword_1AFE9AB20;
    v130 = 9;
    v11 = (a3 + 32);
    ecs_stack_allocator_push_snapshot(*(a3 + 32));
    v20 = *(a4 + 16);
    v21 = 2 * v20;
    v22 = ecs_stack_allocator_allocate(*v11, 16 * v20 + 48, 8);
    *v22 = &type metadata for DebugInfoWireframePrimitive;
    v22[1] = &off_1F25604A8;
    v22[2] = &type metadata for WorldTransform;
    v22[3] = &off_1F2529FC0;
    v22[4] = &type metadata for Beamed;
    v22[5] = &off_1F2529FA0;
    if (!v20)
    {
      goto LABEL_61;
    }

    if (v20 <= 0x13)
    {
      goto LABEL_13;
    }

    v23 = 0;
    v34 = 2 * (v20 - 1);
    v24 = 3;
    if (&v22[v34 + 6] < v22 + 6 || &v22[v34 + 7] < v22 + 7 || (v20 - 1) >> 60)
    {
      goto LABEL_14;
    }

    if ((v22 + 6) < a4 + v21 * 8 + 32 && a4 + 32 < &v22[v21 + 6])
    {
LABEL_13:
      v23 = 0;
      v24 = 3;
    }

    else
    {
      v23 = v20 & 0x1FFFFFFFFFFFFFFCLL;
      v24 = v20 | 3;
      v35 = v22 + 10;
      v36 = (a4 + 64);
      v37 = v20 & 0x1FFFFFFFFFFFFFFCLL;
      do
      {
        v39 = *(v36 - 2);
        v38 = *(v36 - 1);
        v41 = *v36;
        v40 = v36[1];
        v36 += 4;
        *(v35 - 2) = v39;
        *(v35 - 1) = v38;
        *v35 = v41;
        v35[1] = v40;
        v35 += 4;
        v37 -= 4;
      }

      while (v37);
      if (v20 == v23)
      {
        goto LABEL_62;
      }
    }

LABEL_14:
    v25 = v20 - v23;
    v26 = (a4 + 16 * v23 + 32);
    do
    {
      v27 = *v26++;
      *&v22[2 * v24++] = v27;
      --v25;
    }

    while (v25);
    goto LABEL_62;
  }

  if (v7 <= 2)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        *&v9 = sub_1AF6DE29C();
        v118 = v9;
        v123 = a2[1];
        v125 = *a2;
        v119 = a2[3];
        v121 = a2[2];
        v10 = sub_1AFB3CAA4(255, 255, 255);
        v127 = v118;
        v130 = 3;
        v11 = (a3 + 32);
        ecs_stack_allocator_push_snapshot(*(a3 + 32));
        v12 = *(a4 + 16);
        v13 = 2 * v12;
        v14 = ecs_stack_allocator_allocate(*(a3 + 32), 16 * v12 + 64, 8);
        *v14 = &type metadata for DebugInfoWireframePrimitive;
        v14[1] = &off_1F25604A8;
        v14[2] = &type metadata for DebugInfoColor;
        v14[3] = &off_1F2560488;
        v14[4] = &type metadata for WorldTransform;
        v14[5] = &off_1F2529FC0;
        v14[6] = &type metadata for Beamed;
        v14[7] = &off_1F2529FA0;
        if (v12)
        {
          if (v12 <= 0x13)
          {
            goto LABEL_7;
          }

          v15 = 0;
          v86 = 2 * (v12 - 1);
          v16 = 4;
          if (&v14[v86 + 8] < v14 + 8 || &v14[v86 + 9] < v14 + 9 || (v12 - 1) >> 60)
          {
            goto LABEL_8;
          }

          if ((v14 + 8) < a4 + v13 * 8 + 32 && a4 + 32 < &v14[v13 + 8])
          {
LABEL_7:
            v15 = 0;
            v16 = 4;
          }

          else
          {
            v15 = v12 & 0x1FFFFFFFFFFFFFFCLL;
            v16 = (v12 & 0x1FFFFFFFFFFFFFFCLL) + 4;
            v87 = v14 + 12;
            v88 = (a4 + 64);
            v89 = v12 & 0x1FFFFFFFFFFFFFFCLL;
            do
            {
              v91 = *(v88 - 2);
              v90 = *(v88 - 1);
              v93 = *v88;
              v92 = v88[1];
              v88 += 4;
              *(v87 - 2) = v91;
              *(v87 - 1) = v90;
              *v87 = v93;
              v87[1] = v92;
              v87 += 4;
              v89 -= 4;
            }

            while (v89);
            if (v12 == v15)
            {
              goto LABEL_53;
            }
          }

LABEL_8:
          v17 = v12 - v15;
          v18 = (a4 + 16 * v15 + 32);
          do
          {
            v19 = *v18++;
            *&v14[2 * v16++] = v19;
            --v17;
          }

          while (v17);
          goto LABEL_53;
        }

LABEL_52:
        v16 = 4;
        goto LABEL_53;
      }

      v123 = a2[1];
      v125 = *a2;
      v119 = a2[3];
      v121 = a2[2];
      v10 = sub_1AFB3CAA4(255, 255, 255);
      v127 = xmmword_1AFE201A0;
      v128 = xmmword_1AFE52680;
      v130 = 6;
      v11 = (a3 + 32);
      ecs_stack_allocator_push_snapshot(*(a3 + 32));
      v57 = *(a4 + 16);
      v58 = 2 * v57;
      v14 = ecs_stack_allocator_allocate(*(a3 + 32), 16 * v57 + 64, 8);
      *v14 = &type metadata for DebugInfoWireframePrimitive;
      v14[1] = &off_1F25604A8;
      v14[2] = &type metadata for DebugInfoColor;
      v14[3] = &off_1F2560488;
      v14[4] = &type metadata for WorldTransform;
      v14[5] = &off_1F2529FC0;
      v14[6] = &type metadata for Beamed;
      v14[7] = &off_1F2529FA0;
      if (!v57)
      {
        goto LABEL_52;
      }

      if (v57 <= 0x13)
      {
        goto LABEL_48;
      }

      v59 = 0;
      v102 = 2 * (v57 - 1);
      v16 = 4;
      if (&v14[v102 + 8] < v14 + 8 || &v14[v102 + 9] < v14 + 9 || (v57 - 1) >> 60)
      {
        goto LABEL_49;
      }

      if ((v14 + 8) < a4 + v58 * 8 + 32 && a4 + 32 < &v14[v58 + 8])
      {
LABEL_48:
        v59 = 0;
        v16 = 4;
      }

      else
      {
        v59 = v57 & 0x1FFFFFFFFFFFFFFCLL;
        v16 = (v57 & 0x1FFFFFFFFFFFFFFCLL) + 4;
        v103 = v14 + 12;
        v104 = (a4 + 64);
        v105 = v57 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          v107 = *(v104 - 2);
          v106 = *(v104 - 1);
          v109 = *v104;
          v108 = v104[1];
          v104 += 4;
          *(v103 - 2) = v107;
          *(v103 - 1) = v106;
          *v103 = v109;
          v103[1] = v108;
          v103 += 4;
          v105 -= 4;
        }

        while (v105);
        if (v57 == v59)
        {
          goto LABEL_53;
        }
      }

LABEL_49:
      v60 = v57 - v59;
      v61 = (a4 + 16 * v59 + 32);
      do
      {
        v62 = *v61++;
        *&v14[2 * v16++] = v62;
        --v60;
      }

      while (v60);
      goto LABEL_53;
    }

    v124 = a2[1];
    v126 = *a2;
    v120 = a2[3];
    v122 = a2[2];
    v127 = 0u;
    v128 = 0u;
    memset(v129, 0, sizeof(v129));
    v130 = 12;
    v11 = (a3 + 32);
    ecs_stack_allocator_push_snapshot(*(a3 + 32));
    v42 = *(a4 + 16);
    v43 = 2 * v42;
    v22 = ecs_stack_allocator_allocate(*v11, 16 * v42 + 48, 8);
    *v22 = &type metadata for DebugInfoWireframePrimitive;
    v22[1] = &off_1F25604A8;
    v22[2] = &type metadata for WorldTransform;
    v22[3] = &off_1F2529FC0;
    v22[4] = &type metadata for Beamed;
    v22[5] = &off_1F2529FA0;
    if (!v42)
    {
      goto LABEL_61;
    }

    if (v42 <= 0x13)
    {
      goto LABEL_36;
    }

    v44 = 0;
    v70 = 2 * (v42 - 1);
    v24 = 3;
    if (&v22[v70 + 6] < v22 + 6 || &v22[v70 + 7] < v22 + 7 || (v42 - 1) >> 60)
    {
      goto LABEL_37;
    }

    if ((v22 + 6) < a4 + v43 * 8 + 32 && a4 + 32 < &v22[v43 + 6])
    {
LABEL_36:
      v44 = 0;
      v24 = 3;
    }

    else
    {
      v44 = v42 & 0x1FFFFFFFFFFFFFFCLL;
      v24 = v42 | 3;
      v71 = v22 + 10;
      v72 = (a4 + 64);
      v73 = v42 & 0x1FFFFFFFFFFFFFFCLL;
      do
      {
        v75 = *(v72 - 2);
        v74 = *(v72 - 1);
        v77 = *v72;
        v76 = v72[1];
        v72 += 4;
        *(v71 - 2) = v75;
        *(v71 - 1) = v74;
        *v71 = v77;
        v71[1] = v76;
        v71 += 4;
        v73 -= 4;
      }

      while (v73);
      if (v42 == v44)
      {
        goto LABEL_62;
      }
    }

LABEL_37:
    v45 = v42 - v44;
    v46 = (a4 + 16 * v44 + 32);
    do
    {
      v47 = *v46++;
      *&v22[2 * v24++] = v47;
      --v45;
    }

    while (v45);
    goto LABEL_62;
  }

  if (v7 == 3)
  {
    *&v49 = sub_1AF6DE900();
    v124 = a2[1];
    v126 = *a2;
    v120 = a2[3];
    v122 = a2[2];
    v127 = v49;
    v128 = v50;
    *&v129[0] = 4;
    v130 = 7;
    v11 = (a3 + 32);
    ecs_stack_allocator_push_snapshot(*(a3 + 32));
    v51 = *(a4 + 16);
    v52 = 2 * v51;
    v22 = ecs_stack_allocator_allocate(*(a3 + 32), 16 * v51 + 48, 8);
    *v22 = &type metadata for DebugInfoWireframePrimitive;
    v22[1] = &off_1F25604A8;
    v22[2] = &type metadata for WorldTransform;
    v22[3] = &off_1F2529FC0;
    v22[4] = &type metadata for Beamed;
    v22[5] = &off_1F2529FA0;
    if (!v51)
    {
      goto LABEL_61;
    }

    if (v51 <= 0x13)
    {
      goto LABEL_42;
    }

    v53 = 0;
    v78 = 2 * (v51 - 1);
    v24 = 3;
    if (&v22[v78 + 6] < v22 + 6 || &v22[v78 + 7] < v22 + 7 || (v51 - 1) >> 60)
    {
      goto LABEL_43;
    }

    if ((v22 + 6) < a4 + v52 * 8 + 32 && a4 + 32 < &v22[v52 + 6])
    {
LABEL_42:
      v53 = 0;
      v24 = 3;
    }

    else
    {
      v53 = v51 & 0x1FFFFFFFFFFFFFFCLL;
      v24 = v51 | 3;
      v79 = v22 + 10;
      v80 = (a4 + 64);
      v81 = v51 & 0x1FFFFFFFFFFFFFFCLL;
      do
      {
        v83 = *(v80 - 2);
        v82 = *(v80 - 1);
        v85 = *v80;
        v84 = v80[1];
        v80 += 4;
        *(v79 - 2) = v83;
        *(v79 - 1) = v82;
        *v79 = v85;
        v79[1] = v84;
        v79 += 4;
        v81 -= 4;
      }

      while (v81);
      if (v51 == v53)
      {
        goto LABEL_62;
      }
    }

LABEL_43:
    v54 = v51 - v53;
    v55 = (a4 + 16 * v53 + 32);
    do
    {
      v56 = *v55++;
      *&v22[2 * v24++] = v56;
      --v54;
    }

    while (v54);
    goto LABEL_62;
  }

  if (v7 != 4)
  {
    goto LABEL_55;
  }

  v123 = a2[1];
  v125 = *a2;
  v119 = a2[3];
  v121 = a2[2];
  v10 = sub_1AFB3CAA4(255, 255, 255);
  v127 = xmmword_1AFE201A0;
  v128 = xmmword_1AFE9AB10;
  v130 = 6;
  v11 = (a3 + 32);
  ecs_stack_allocator_push_snapshot(*(a3 + 32));
  v28 = *(a4 + 16);
  v29 = 2 * v28;
  v14 = ecs_stack_allocator_allocate(*(a3 + 32), 16 * v28 + 64, 8);
  *v14 = &type metadata for DebugInfoWireframePrimitive;
  v14[1] = &off_1F25604A8;
  v14[2] = &type metadata for DebugInfoColor;
  v14[3] = &off_1F2560488;
  v14[4] = &type metadata for WorldTransform;
  v14[5] = &off_1F2529FC0;
  v14[6] = &type metadata for Beamed;
  v14[7] = &off_1F2529FA0;
  if (!v28)
  {
    goto LABEL_52;
  }

  if (v28 <= 0x13)
  {
    goto LABEL_21;
  }

  v30 = 0;
  v94 = 2 * (v28 - 1);
  v16 = 4;
  if (&v14[v94 + 8] < v14 + 8 || &v14[v94 + 9] < v14 + 9 || (v28 - 1) >> 60)
  {
    goto LABEL_22;
  }

  if ((v14 + 8) < a4 + v29 * 8 + 32 && a4 + 32 < &v14[v29 + 8])
  {
LABEL_21:
    v30 = 0;
    v16 = 4;
LABEL_22:
    v31 = v28 - v30;
    v32 = (a4 + 16 * v30 + 32);
    do
    {
      v33 = *v32++;
      *&v14[2 * v16++] = v33;
      --v31;
    }

    while (v31);
    goto LABEL_53;
  }

  v30 = v28 & 0x1FFFFFFFFFFFFFFCLL;
  v16 = (v28 & 0x1FFFFFFFFFFFFFFCLL) + 4;
  v95 = v14 + 12;
  v96 = (a4 + 64);
  v97 = v28 & 0x1FFFFFFFFFFFFFFCLL;
  do
  {
    v99 = *(v96 - 2);
    v98 = *(v96 - 1);
    v101 = *v96;
    v100 = v96[1];
    v96 += 4;
    *(v95 - 2) = v99;
    *(v95 - 1) = v98;
    *v95 = v101;
    v95[1] = v100;
    v95 += 4;
    v97 -= 4;
  }

  while (v97);
  if (v28 != v30)
  {
    goto LABEL_22;
  }

LABEL_53:
  v131 = 1;
  sub_1AF63D8A8(v14, v16, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a3, &v127, v10, v125, v123, v121, v119);
  if (v4)
  {
    while (1)
    {
      ecs_stack_allocator_pop_snapshot(*v11);
      __break(1u);
LABEL_55:
      v124 = a2[1];
      v126 = *a2;
      v120 = a2[3];
      v122 = a2[2];
      v127 = xmmword_1AFE9AB30;
      v128 = xmmword_1AFE9AB40;
      *&v129[0] = 4;
      v130 = 7;
      v11 = (a3 + 32);
      ecs_stack_allocator_push_snapshot(*(a3 + 32));
      v63 = *(a4 + 16);
      v64 = 2 * v63;
      v22 = ecs_stack_allocator_allocate(*(a3 + 32), 16 * v63 + 48, 8);
      *v22 = &type metadata for DebugInfoWireframePrimitive;
      v22[1] = &off_1F25604A8;
      v22[2] = &type metadata for WorldTransform;
      v22[3] = &off_1F2529FC0;
      v22[4] = &type metadata for Beamed;
      v22[5] = &off_1F2529FA0;
      if (v63)
      {
        break;
      }

LABEL_61:
      v24 = 3;
LABEL_62:
      v131 = 1;
      sub_1AF63D0A0(v22, v24, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a3, &v127, v126, v124, v122, v120);
      if (!v4)
      {
        return ecs_stack_allocator_pop_snapshot(*v11);
      }
    }

    if (v63 > 0x13)
    {
      v65 = 0;
      v110 = 2 * (v63 - 1);
      v24 = 3;
      if (&v22[v110 + 6] < v22 + 6 || &v22[v110 + 7] < v22 + 7 || (v63 - 1) >> 60)
      {
        goto LABEL_58;
      }

      if ((v22 + 6) >= a4 + v64 * 8 + 32 || a4 + 32 >= &v22[v64 + 6])
      {
        v65 = v63 & 0x1FFFFFFFFFFFFFFCLL;
        v24 = v63 | 3;
        v111 = v22 + 10;
        v112 = (a4 + 64);
        v113 = v63 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          v115 = *(v112 - 2);
          v114 = *(v112 - 1);
          v117 = *v112;
          v116 = v112[1];
          v112 += 4;
          *(v111 - 2) = v115;
          *(v111 - 1) = v114;
          *v111 = v117;
          v111[1] = v116;
          v111 += 4;
          v113 -= 4;
        }

        while (v113);
        if (v63 == v65)
        {
          goto LABEL_62;
        }

        goto LABEL_58;
      }
    }

    v65 = 0;
    v24 = 3;
LABEL_58:
    v66 = v63 - v65;
    v67 = (a4 + 16 * v65 + 32);
    do
    {
      v68 = *v67++;
      *&v22[2 * v24++] = v68;
      --v66;
    }

    while (v66);
    goto LABEL_62;
  }

  return ecs_stack_allocator_pop_snapshot(*v11);
}

uint64_t *sub_1AFB396B0(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *result;
  if (!*result)
  {
    return result;
  }

  v123 = *(*(v4 + 16) + 16);
  if (!v123)
  {
    return result;
  }

  v127 = result[2] + 32;
  v6 = *(a4 + 16);
  v124 = 2 * v6;
  v125 = a4 + 32;

  v8 = 0;
  v119 = a4 + 16 * v6 + 32;
  v120 = 16 * v6 + 32;
  v118 = 2 * (v6 - 1);
  v112 = v6 | 3;
  v116 = v6 & 0x7FFFFFFFFFFFFFFCLL;
  v113 = v6 & 0x7FFFFFFFFFFFFFFCLL | 2;
  v114 = v6 & 0x1FFFFFFFFFFFFFFCLL;
  v115 = (a4 + 64);
  v117 = (v6 - 1) >> 60;
  v121 = v6;
  v122 = v4;
  while (1)
  {
    v9 = (v127 + (v8 << 6));
    v130 = v9[1];
    v131 = *v9;
    v129 = v9[2];
    v134 = v9[3];
    ecs_stack_allocator_push_snapshot(*(a3 + 32));
    v10 = ecs_stack_allocator_allocate(*(a3 + 32), v124 * 8 + 48, 8);
    v11 = v10;
    *v10 = &type metadata for DebugInfoWireframePrimitive;
    v10[1] = &off_1F25604A8;
    v10[2] = &type metadata for WorldTransform;
    v10[3] = &off_1F2529FC0;
    v10[4] = &type metadata for Beamed;
    v10[5] = &off_1F2529FA0;
    v133 = v8;
    if (v6)
    {
      if (v6 > 0xD && ((v12 = v10 + 6, &v10[v118 + 6] >= v10 + 6) ? (v13 = &v10[v118 + 7] >= v10 + 7) : (v13 = 0), v13 ? (v14 = v117 == 0) : (v14 = 0), v14 && (v12 >= v119 || v125 >= &v12[v124])))
      {
        v52 = v10 + 10;
        v53 = v114;
        v54 = v115;
        do
        {
          v56 = *(v54 - 2);
          v55 = *(v54 - 1);
          v58 = *v54;
          v57 = v54[1];
          v54 += 4;
          *(v52 - 2) = v56;
          *(v52 - 1) = v55;
          *v52 = v58;
          v52[1] = v57;
          v52 += 4;
          v53 -= 4;
        }

        while (v53);
        v15 = v114;
        v16 = v112;
        if (v6 == v114)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v15 = 0;
        v16 = 3;
      }

      v17 = v6 - v15;
      v18 = (v125 + 16 * v15);
      do
      {
        v19 = *v18++;
        *&v10[2 * v16++] = v19;
        --v17;
      }

      while (v17);
    }

    else
    {
      v16 = 3;
    }

LABEL_23:
    v20 = *(a3 + 16);
    v21 = v20 + OBJC_IVAR____TtC3VFX13EntityManager_lock;
    v22 = *(v20 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24);

    os_unfair_lock_lock(v22);
    v23 = sub_1AF66F020(v11, v16, MEMORY[0x1E69E7CC0]);
    v24 = v23;
    v26 = v25;
    v27 = *(v20 + 80);
    v28 = *(v27 + 16);
    if (!v28)
    {
      goto LABEL_29;
    }

    v29 = 0;
    v30 = v27 + 32;
    while (*(*(v30 + 8 * v29) + 144) != v23)
    {
      if (v28 == ++v29)
      {
        goto LABEL_29;
      }
    }

    v31 = sub_1AF65D418(v26, v29);
    v32 = v31;
    if ((v31 & 0x100000000) != 0)
    {
LABEL_29:
      sub_1AFC0EF2C(v11, v16);
      v32 = sub_1AF65D480(v24, v26, v33, MEMORY[0x1E69E7CC0]);
    }

    v34 = *(*(v20 + 88) + 8 * v32 + 32);
    v35 = *(v21 + 24);

    os_unfair_lock_unlock(v35);

    v36 = *(a3 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
    v37 = *v36;

    if (v37)
    {
      vfx_counters.add(_:_:)(*(v36 + 40), 1);
    }

    v38 = *(a3 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_counters;
    v39 = *v38;

    if (v39)
    {
      vfx_counters.add(_:_:)(*(v38 + 48), 1);
    }

    v40 = *(v34 + 204);
    if (*(v34 + 208))
    {
      v41 = -1;
    }

    else
    {

      v41 = sub_1AF65B2E4();
    }

    v42 = *(a3 + 16);
    v43 = *(*(*(v42 + 88) + 8 * v40 + 32) + 200);

    if (v43 == 1)
    {
      *(v42 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
    }

    v44 = *(v42 + 136);
    swift_retain_n();
    os_unfair_lock_lock(v44);
    if (!sub_1AF62173C(v40))
    {
      sub_1AF6AFD3C(v40);
    }

    v45 = *(*(v42 + 104) + 40 * v40 + 64);
    if (v45 != -1)
    {
      v46 = *(*(v42 + 144) + 8 * v45 + 32);
      if ((*(v46 + 32) & 1) != 0 && os_unfair_lock_trylock(*(v46 + 376)))
      {
        os_unfair_lock_lock(*(v46 + 344));
        os_unfair_lock_unlock(*(v46 + 376));
        if ((*(v46 + 121) & 1) != 0 || *(v46 + 240) < *(v46 + 88))
        {
          v47 = sub_1AF622B60(v41);
          v48 = v47;
          if ((*(v34 + 208) & 1) == 0)
          {
            v49 = *(*(a3 + 16) + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v41;
            *v49 = *(v46 + 188);
            *(v49 + 4) = v47;
            *(v49 + 6) = v40;
          }

          if (*(v34 + 212) == 1)
          {
            v50 = *(v46 + 192);
            if (v50)
            {
              v51 = *(v46 + 208);
              *(v50 + 8 * (v47 >> 6)) |= 1 << v47;
              *(v51 + 8 * (v47 >> 6)) &= ~(1 << v47);
            }

            sub_1AF705804(v47);
          }

          os_unfair_lock_unlock(*(v46 + 344));
          os_unfair_lock_unlock(*(v42 + 136));
          goto LABEL_83;
        }

        os_unfair_lock_unlock(*(v46 + 344));
      }
    }

    v128 = v41;
    os_unfair_lock_unlock(*(v42 + 136));
    v59 = sub_1AF624654();
    if ((v59 & 0x100000000) != 0)
    {
      v60 = *(*(v42 + 144) + 16);
      type metadata accessor for ComponentsDataChunk();
      swift_allocObject();

      v139 = 1;
      v62 = sub_1AF64BF6C(v66, 0x100000000, v40, 1, v60);

      _swift_stdlib_immortalize();

      v63 = *(v42 + 144);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v42 + 144) = v63;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1AFC05EFC(0, *(v63 + 2) + 1, 1);
        v63 = *(v42 + 144);
      }

      v69 = *(v63 + 2);
      v68 = *(v63 + 3);
      if (v69 >= v68 >> 1)
      {
        sub_1AFC05EFC(v68 > 1, v69 + 1, 1);
        v63 = *(v42 + 144);
      }

      *(v63 + 2) = v69 + 1;
      v65 = &v63[8 * v69];
    }

    else
    {
      v60 = v59;
      type metadata accessor for ComponentsDataChunk();
      swift_allocObject();

      v139 = 1;
      v62 = sub_1AF64BF6C(v61, 0x100000000, v40, 1, v60);

      _swift_stdlib_immortalize();

      v63 = *(v42 + 144);
      v64 = swift_isUniquelyReferenced_nonNull_native();
      *(v42 + 144) = v63;
      if ((v64 & 1) == 0)
      {
        v63 = sub_1AF6247B0(v63);
      }

      v65 = &v63[8 * v60];
    }

    *(v65 + 4) = v62;
    *(v42 + 144) = v63;
    v70 = *(v42 + 104);
    v71 = swift_isUniquelyReferenced_nonNull_native();
    *(v42 + 104) = v70;
    if ((v71 & 1) == 0)
    {
      v70 = sub_1AFC0D9B8(v70);
      *(v42 + 104) = v70;
    }

    v72 = &v70[40 * v40];
    v75 = *(v72 + 4);
    v74 = v72 + 32;
    v73 = v75;
    v76 = swift_isUniquelyReferenced_nonNull_native();
    *v74 = v75;
    if ((v76 & 1) == 0)
    {
      v73 = sub_1AF420E8C(0, *(v73 + 2) + 1, 1, v73);
      *v74 = v73;
    }

    v78 = *(v73 + 2);
    v77 = *(v73 + 3);
    if (v78 >= v77 >> 1)
    {
      v73 = sub_1AF420E8C(v77 > 1, v78 + 1, 1, v73);
      *v74 = v73;
    }

    *(v73 + 2) = v78 + 1;
    *&v73[4 * v78 + 32] = v60;
    *(v74 + 8) = v60;
    v74[24] = 1;
    v79 = *(*(v42 + 144) + 8 * v60 + 32);
    v80 = *(v79 + 376);

    if (!os_unfair_lock_trylock(v80))
    {
      goto LABEL_109;
    }

    os_unfair_lock_lock(*(v79 + 344));
    os_unfair_lock_unlock(*(v79 + 376));
    if ((*(v79 + 121) & 1) == 0 && *(v79 + 240) >= *(v79 + 88))
    {
      goto LABEL_108;
    }

    v81 = sub_1AF622B60(v128);
    v48 = v81;
    if ((*(v34 + 208) & 1) == 0)
    {
      v82 = *(*(a3 + 16) + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v128;
      *v82 = *(v79 + 188);
      *(v82 + 4) = v81;
      *(v82 + 6) = v40;
    }

    if (*(v34 + 212) == 1)
    {
      v83 = *(v79 + 192);
      if (v83)
      {
        v84 = *(v79 + 208);
        *(v83 + 8 * (v81 >> 6)) |= 1 << v81;
        *(v84 + 8 * (v81 >> 6)) &= ~(1 << v81);
      }

      sub_1AF705804(v81);
    }

    os_unfair_lock_unlock(*(v79 + 344));

LABEL_83:

    swift_retain_n();
    v85 = sub_1AF64B03C(&type metadata for DebugInfoWireframePrimitive, &off_1F2560328);
    v87 = v86;

    v88 = (v87 & 1) != 0 ? 0 : v85 + 112 * v48;
    v89 = off_1F2529FC8;

    v90 = sub_1AF64B03C(&type metadata for WorldTransform, v89);
    v92 = v91;

    v93 = (v92 & 1) != 0 ? 0 : (v90 + (v48 << 6));
    v94 = off_1F2529FA8;

    sub_1AF64B03C(&type metadata for Beamed, v94);

    *(v88 + 64) = 0u;
    *(v88 + 80) = 0u;
    *(v88 + 32) = 0u;
    *(v88 + 48) = 0u;
    *v88 = 0u;
    *(v88 + 16) = 0u;
    *(v88 + 96) = 12;
    *v93 = v131;
    v93[1] = v130;
    v93[2] = v129;
    v93[3] = v134;

    ecs_stack_allocator_pop_snapshot(*(a3 + 32));
    v95 = *(*(v122 + 40) + 8 * v133 + 32);
    if (v95 != -1)
    {
      break;
    }

    v6 = v121;
LABEL_5:
    v8 = v133 + 1;
    if (v133 + 1 == v123)
    {
    }
  }

  v96 = *(v127 + (v95 << 6) + 48);
  v97 = vsubq_f32(v134, v96);
  v96.i32[3] = 1.0;
  v135 = v96;
  v97.i32[3] = 0;
  v132 = v97;
  v79 = sub_1AFB3CAA4(0, 255, 0);
  v136[0] = v135;
  v136[1] = v132;
  v137 = 4;
  v138 = 0;
  ecs_stack_allocator_push_snapshot(*(a3 + 32));
  v98 = ecs_stack_allocator_allocate(*(a3 + 32), v120, 8);
  *v98 = &type metadata for DebugInfoWireframePrimitive;
  v98[1] = &off_1F25604A8;
  v98[2] = &type metadata for DebugInfoColor;
  v98[3] = &off_1F2560488;
  v6 = v121;
  if (v121)
  {
    v99 = v126;
    if (v121 <= 3 || (v98 + 4) < v119 && v125 < v98 + v120)
    {
      v100 = 0;
      v101 = 2;
      goto LABEL_95;
    }

    v105 = v98 + 8;
    v107 = v115;
    v106 = v116;
    do
    {
      v109 = *(v107 - 2);
      v108 = *(v107 - 1);
      v111 = *v107;
      v110 = v107[1];
      v107 += 4;
      *(v105 - 2) = v109;
      *(v105 - 1) = v108;
      *v105 = v111;
      v105[1] = v110;
      v105 += 4;
      v106 -= 4;
    }

    while (v106);
    v100 = v116;
    v101 = v113;
    if (v121 != v116)
    {
LABEL_95:
      v102 = v121 - v100;
      v103 = (v125 + 16 * v100);
      do
      {
        v104 = *v103++;
        *&v98[2 * v101++] = v104;
        --v102;
      }

      while (v102);
    }
  }

  else
  {
    v101 = 2;
    v99 = v126;
  }

  v139 = 1;
  sub_1AF63C898(v98, v101, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a3, v136, v79);
  v126 = v99;
  if (!v99)
  {
    ecs_stack_allocator_pop_snapshot(*(a3 + 32));
    goto LABEL_5;
  }

  ecs_stack_allocator_pop_snapshot(*(a3 + 32));
  __break(1u);
LABEL_108:
  os_unfair_lock_unlock(*(v79 + 344));
LABEL_109:

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

void sub_1AFB3A210(uint64_t a1)
{

  sub_1AF5FCA80();
  v3 = v2;

  if (v3 == 2)
  {
    return;
  }

  v104 = *(*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 8 * *thread_worker_index(v4) + 8);
  sub_1AFA1CFD4(0, &qword_1ED72F7D0, &qword_1ED72FFE0, &qword_1ED72FFF0, &protocol descriptor for EntityComponent);
  v5 = swift_allocObject();
  v6 = v5;
  *(v5 + 16) = xmmword_1AFE431C0;
  v7 = &type metadata for DebugInfoB;
  if (v3)
  {
    v7 = &type metadata for DebugInfoA;
  }

  v8 = &off_1F2560448;
  if (v3)
  {
    v8 = &off_1F2560428;
  }

  *(v5 + 32) = v7;
  *(v5 + 40) = v8;
  v9 = *(a1 + 184);

  sub_1AF6D452C(&type metadata for DebugDrawingState, &off_1F25603A8, v9, v221);

  v10 = LOBYTE(v221[0]);
  v11 = BYTE1(v221[0]);
  v12 = BYTE5(v221[0]);
  v13 = BYTE6(v221[0]);
  if (BYTE2(v221[0]) == 1)
  {
    sub_1AFB37500(a1);
  }

  v103 = v6;
  if (!v10)
  {
LABEL_24:
    if (!v11)
    {
      goto LABEL_42;
    }

    goto LABEL_25;
  }

  v91 = sub_1AFB3CAA4(255, 0, 0);
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v226 = qword_1ED73B840;
  v227 = 0;
  v228 = 2;
  v229 = 0;
  v230 = 2;
  v231 = 0;
  sub_1AFCC58BC(1, 1, v106);
  v178[0] = v106[0];
  v178[1] = v106[1];
  v179 = v107;
  sub_1AF6B06C0(a1, v178, 0x200000000, &v108);
  v95 = v108;
  if (!v108)
  {
    sub_1AFB3CAC4(v106, sub_1AFB3FAF0);
    goto LABEL_24;
  }

  v14 = v111;
  v15 = v112;
  v159 = v109;
  v160 = v110;
  v83 = v115;
  v87 = v113;
  if (v115 > 0 && v112)
  {
    v65 = v11;
    v66 = v12;
    v68 = v13;
    v71 = a1;
    v79 = v114;
    v16 = v114[4];
    v17 = *(v113 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);

    sub_1AF5D15C0(&v108, v221);
    v18 = (v14 + 24);
    v75 = v17;
    do
    {
      v20 = *(v18 - 6);
      v19 = *(v18 - 5);
      v21 = *(v18 - 4);
      v22 = *(v18 - 1);
      v105 = *v18;
      v23 = v18[2];
      v99 = v18[1];
      if (v17)
      {
        v24 = *(v23 + 376);

        os_unfair_lock_lock(v24);
        os_unfair_lock_lock(*(v23 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v16);

      sub_1AF630914(v25, v79, v116);

      LOBYTE(v210[0]) = 1;
      v221[0] = v87;
      v221[1] = v23;
      v221[2] = v79;
      v221[3] = v21;
      v221[4] = (v19 - v20 + v21);
      v221[5] = v83;
      v221[6] = v20;
      v221[7] = v19;
      v221[8] = 0;
      v221[9] = 0;
      v222 = 1;
      v223 = v22;
      v224 = v105;
      v225 = v99;

      sub_1AFD109B4(v221, v104, v103, v91);
      v161 = v95;
      v162 = v159;
      v163 = v160;
      sub_1AF630994(v79, &v161, v116);
      sub_1AF62D29C(v23);
      ecs_stack_allocator_pop_snapshot(v16);
      v17 = v75;
      if (v75)
      {
        os_unfair_lock_unlock(*(v23 + 344));
        os_unfair_lock_unlock(*(v23 + 376));
      }

      v18 += 6;
      --v15;
    }

    while (v15);
    sub_1AFB3CAC4(v106, sub_1AFB3FAF0);
    sub_1AF0D9DB0(&v108, &qword_1ED725EA0, &type metadata for QueryResult);
    v6 = v103;

    sub_1AF0D9DB0(&v108, &qword_1ED725EA0, &type metadata for QueryResult);
    a1 = v71;
    v12 = v66;
    v13 = v68;
    if (!v65)
    {
LABEL_42:
      if (v12)
      {
        goto LABEL_43;
      }

      goto LABEL_60;
    }
  }

  else
  {
    sub_1AFB3CAC4(v106, sub_1AFB3FAF0);
    sub_1AF0D9DB0(&v108, &qword_1ED725EA0, &type metadata for QueryResult);
    if (!v11)
    {
      goto LABEL_42;
    }
  }

LABEL_25:
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v215 = qword_1ED73B840;
  v216 = 0;
  v217 = 2;
  v218 = 0;
  v219 = 2;
  v220 = 0;
  sub_1AFCC58E0(1, 1, v117);
  v176[0] = v117[0];
  v176[1] = v117[1];
  v177 = v118;
  sub_1AF6B06C0(a1, v176, 0x200000000, &v119);
  v88 = v119;
  if (v119)
  {
    v26 = v122;
    v27 = v123;
    v157 = v120;
    v158 = v121;
    v80 = v126;
    v84 = v124;
    if (v126 > 0 && v123)
    {
      v67 = v12;
      v69 = v13;
      v72 = a1;
      v76 = v125;
      v28 = v125[4];
      v100 = *(v124 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);

      sub_1AF5D15C0(&v119, v210);
      v29 = (v26 + 24);
      do
      {
        v31 = *(v29 - 6);
        v30 = *(v29 - 5);
        v32 = *(v29 - 4);
        v92 = *v29;
        v96 = *(v29 - 1);
        v34 = v29[1];
        v33 = v29[2];
        if (v100)
        {
          v35 = *(v33 + 376);

          v36 = v103;
          os_unfair_lock_lock(v35);
          os_unfair_lock_lock(*(v33 + 344));
        }

        else
        {

          v36 = v6;
        }

        ecs_stack_allocator_push_snapshot(v28);

        sub_1AF630914(v37, v76, v127);

        LOBYTE(v199[0]) = 1;
        v210[0] = v84;
        v210[1] = v33;
        v210[2] = v76;
        v210[3] = v32;
        v210[4] = (v30 - v31 + v32);
        v210[5] = v80;
        v210[6] = v31;
        v210[7] = v30;
        v210[8] = 0;
        v210[9] = 0;
        v211 = 1;
        v212 = v96;
        v213 = v92;
        v214 = v34;

        sub_1AFD10B0C(v210, v104, v36);
        v164 = v88;
        v165 = v157;
        v166 = v158;
        sub_1AF630994(v76, &v164, v127);
        sub_1AF62D29C(v33);
        ecs_stack_allocator_pop_snapshot(v28);
        if (v100)
        {
          os_unfair_lock_unlock(*(v33 + 344));
          os_unfair_lock_unlock(*(v33 + 376));
        }

        v29 += 6;
        --v27;
        v6 = v36;
      }

      while (v27);
      sub_1AFB3CAC4(v117, sub_1AFB3FA74);
      sub_1AF0D9DB0(&v119, &qword_1ED725EA0, &type metadata for QueryResult);

      sub_1AF0D9DB0(&v119, &qword_1ED725EA0, &type metadata for QueryResult);
      a1 = v72;
      v13 = v69;
      if (v67)
      {
LABEL_43:
        if (qword_1ED72D720 != -1)
        {
          swift_once();
        }

        v204 = qword_1ED73B840;
        v205 = 0;
        v206 = 2;
        v207 = 0;
        v208 = 2;
        v209 = 0;
        sub_1AFCC5904(1, 1, v128);
        v174[0] = v128[0];
        v174[1] = v128[1];
        v175 = v129;
        sub_1AF6B06C0(a1, v174, 0x200000000, &v130);
        v89 = v130;
        if (v130)
        {
          v38 = v133;
          v39 = v134;
          v155 = v131;
          v156 = v132;
          v81 = v137;
          v85 = v135;
          if (v137 > 0 && v134)
          {
            v70 = v13;
            v73 = a1;
            v77 = v136;
            v40 = v136[4];
            v101 = *(v135 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);

            sub_1AF5D15C0(&v130, v199);
            v41 = (v38 + 24);
            do
            {
              v43 = *(v41 - 6);
              v42 = *(v41 - 5);
              v44 = *(v41 - 4);
              v93 = *v41;
              v97 = *(v41 - 1);
              v46 = v41[1];
              v45 = v41[2];
              if (v101)
              {
                v47 = *(v45 + 376);

                v48 = v103;
                os_unfair_lock_lock(v47);
                os_unfair_lock_lock(*(v45 + 344));
              }

              else
              {

                v48 = v6;
              }

              ecs_stack_allocator_push_snapshot(v40);

              sub_1AF630914(v49, v77, v138);

              LOBYTE(v182[0]) = 1;
              v199[0] = v85;
              v199[1] = v45;
              v199[2] = v77;
              v199[3] = v44;
              v199[4] = (v42 - v43 + v44);
              v199[5] = v81;
              v199[6] = v43;
              v199[7] = v42;
              v199[8] = 0;
              v199[9] = 0;
              v200 = 1;
              v201 = v97;
              v202 = v93;
              v203 = v46;

              sub_1AFD10C58(v199, v104, v48);
              v167 = v89;
              v168 = v155;
              v169 = v156;
              sub_1AF630994(v77, &v167, v138);
              sub_1AF62D29C(v45);
              ecs_stack_allocator_pop_snapshot(v40);
              if (v101)
              {
                os_unfair_lock_unlock(*(v45 + 344));
                os_unfair_lock_unlock(*(v45 + 376));
              }

              v41 += 6;
              --v39;
              v6 = v48;
            }

            while (v39);
            sub_1AFB3CAC4(v128, sub_1AFB3F9F8);
            sub_1AF0D9DB0(&v130, &qword_1ED725EA0, &type metadata for QueryResult);

            sub_1AF0D9DB0(&v130, &qword_1ED725EA0, &type metadata for QueryResult);
            a1 = v73;
            if (!v70)
            {
              goto LABEL_79;
            }
          }

          else
          {
            sub_1AFB3CAC4(v128, sub_1AFB3F9F8);
            sub_1AF0D9DB0(&v130, &qword_1ED725EA0, &type metadata for QueryResult);
            if (!v13)
            {
              goto LABEL_79;
            }
          }
        }

        else
        {
          sub_1AFB3CAC4(v128, sub_1AFB3F9F8);
          if (!v13)
          {
            goto LABEL_79;
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      sub_1AFB3CAC4(v117, sub_1AFB3FA74);
      sub_1AF0D9DB0(&v119, &qword_1ED725EA0, &type metadata for QueryResult);
      if (v12)
      {
        goto LABEL_43;
      }
    }
  }

  else
  {
    sub_1AFB3CAC4(v117, sub_1AFB3FA74);
    if (v12)
    {
      goto LABEL_43;
    }
  }

LABEL_60:
  if (!v13)
  {
LABEL_79:
    swift_setDeallocating();
    swift_deallocClassInstance();
    return;
  }

LABEL_61:
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v193 = qword_1ED73B840;
  v194 = 0;
  v195 = 2;
  v196 = 0;
  v197 = 2;
  v198 = 0;
  sub_1AFCC5928(1, 1, &v139);
  v187 = v139;
  v188 = v140;
  v189 = v141;
  v190 = v142 | 1;
  v191 = v143;
  v192 = v144;
  sub_1AF6B06C0(a1, &v187, 0x200000000, &v145);
  v86 = v145;
  if (!v145)
  {
    sub_1AFB3CAC4(&v139, sub_1AFB3F97C);
    goto LABEL_79;
  }

  v50 = v148;
  v51 = v149;
  v52 = v151;
  v153 = v146;
  v154 = v147;
  v78 = v152;
  v82 = v150;
  if (v152 <= 0)
  {

    sub_1AFB3CAC4(&v139, sub_1AFB3F97C);
    sub_1AF0D9DB0(&v145, &qword_1ED725EA0, &type metadata for QueryResult);

    goto LABEL_79;
  }

  if (v149)
  {
    v53 = *(v151 + 32);
    v54 = *(v150 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);

    v55 = (v50 + 24);
    v74 = v54;
    do
    {
      v102 = v51;
      v56 = *(v55 - 6);
      v57 = *(v55 - 5);
      v58 = *(v55 - 4);
      v94 = *v55;
      v98 = *(v55 - 1);
      v59 = v55[2];
      v90 = v55[1];
      if (v54)
      {
        v60 = *(v59 + 376);

        os_unfair_lock_lock(v60);
        os_unfair_lock_lock(*(v59 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v53);
      v61 = *(v52 + 64);
      v180[0] = *(v52 + 48);
      v180[1] = v61;
      v181 = *(v52 + 80);
      v62 = *(v52 + 32);
      v63 = v53;
      v64 = *(*(*(*(v59 + 40) + 16) + 32) + 16) + 1;

      *(v52 + 48) = ecs_stack_allocator_allocate(v62, 48 * v64, 8);
      *(v52 + 56) = v64;
      *(v52 + 72) = 0;
      *(v52 + 80) = 0;
      *(v52 + 64) = 0;

      LOBYTE(v170) = 1;
      v182[0] = v82;
      v182[1] = v59;
      v182[2] = v52;
      v182[3] = v58;
      v182[4] = (v57 - v56 + v58);
      v182[5] = v78;
      v182[6] = v56;
      v182[7] = v57;
      v182[8] = 0;
      v182[9] = 0;
      v183 = 1;
      v184 = v98;
      v185 = v94;
      v186 = v90;
      sub_1AFD28DA8(v182, v104, v103);
      v171 = v86;
      v172 = v153;
      v173 = v154;
      sub_1AF630994(v52, &v171, v180);
      sub_1AF62D29C(v59);
      ecs_stack_allocator_pop_snapshot(v63);
      v53 = v63;
      v54 = v74;
      if (v74)
      {
        os_unfair_lock_unlock(*(v59 + 344));
        os_unfair_lock_unlock(*(v59 + 376));
      }

      v55 += 6;
      v51 = v102 - 1;
    }

    while (v102 != 1);
  }

  sub_1AFB3CAC4(&v139, sub_1AFB3F97C);
  swift_setDeallocating();
  swift_deallocClassInstance();
  sub_1AF0D9DB0(&v145, &qword_1ED725EA0, &type metadata for QueryResult);
}

uint64_t sub_1AFB3B238(uint64_t a1)
{

  sub_1AF5FCA80();
  v3 = v2;

  if (v3 == 2)
  {
    return 0;
  }

  v5 = *(*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 8 * *thread_worker_index(v4) + 8);
  sub_1AFA1CFD4(0, &qword_1ED72F7D0, &qword_1ED72FFE0, &qword_1ED72FFF0, &protocol descriptor for EntityComponent);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE4C620;
  *(v6 + 32) = &type metadata for DebugInfoViewDependant;
  *(v6 + 40) = &off_1F2560468;
  v7 = &type metadata for DebugInfoA;
  v8 = &off_1F2560448;
  if (v3)
  {
    v8 = &off_1F2560428;
  }

  else
  {
    v7 = &type metadata for DebugInfoB;
  }

  *(v6 + 48) = v7;
  *(v6 + 56) = v8;
  return v5;
}

void sub_1AFB3B34C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return;
  }

  v206 = sub_1AFBE45A8(a1);

  if (v206)
  {

    v4 = sub_1AF5FCC3C();

    v181 = v4;
    if (v4 == 2)
    {

      return;
    }

    v5 = *(a1 + 184);

    os_unfair_recursive_lock_lock_with_options();
    v6 = sub_1AF6D2A6C(&type metadata for MainCullGroup);
    if (v7 == 2 || (v7 & 1) == 0)
    {
      os_unfair_recursive_lock_unlock();
      v179 = 0;
    }

    else
    {
      v9 = *(v5 + 16);
      v10 = 32 * v8;
      v11 = v6;
      os_unfair_lock_lock(*(*(v5 + 32) + 32 * v8 + 24));
      os_unfair_recursive_lock_unlock();
      v179 = *(v9 + v11);
      os_unfair_lock_unlock(*(*(v5 + 32) + v10 + 24));
    }

    v161 = a1;
    v12 = sub_1AFDFE238();
    v14 = v13;

    sub_1AF7180FC();

    v15 = sub_1AF6F3D60(v206, v12, v14);
    swift_bridgeObjectRelease_n();
    sub_1AF709E8C(v15);
    swift_unknownObjectRelease();

    v16 = *(a2 + 280);
    v17 = *(v16 + 80);
    v205 = a2;
    if (v17)
    {
      v18 = v17;
      sub_1AF474680(v242);
      v198 = v242[0];
      v194 = v242[1];
      v19 = v242[2];
      v20 = v242[3];
      v190 = v242[4];
      v183 = v242[5];
      v168 = v242[6];
      v165 = v242[7];
      v163 = v242[8];
      v162 = v242[9];
      v21 = v242[10];

      v22 = 0;
    }

    else
    {
      v21 = 0;
      v198 = 0;
      v194 = 0;
      v19 = 0;
      v20 = 0;
      v190 = 0;
      v183 = 0;
      v168 = 0;
      v165 = 0;
      v163 = 0;
      v162 = 0;
      v22 = 1;
    }

    *v241 = v21;
    v241[8] = v22;
    v159 = *&v241[1];
    if (qword_1ED72D720 != -1)
    {
      swift_once();
    }

    v288 = qword_1ED73B840;
    v289 = 0;
    v290 = 2;
    v291 = 0;
    v292 = 2;
    v293 = 0;
    sub_1AF702F28(1, v243);
    sub_1AFA1CFD4(0, &qword_1ED7269A0, &qword_1ED7270C0, &qword_1ED7270D0, &protocol descriptor for Component);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1AFE431C0;
    *(v23 + 32) = &type metadata for DrawCallComponent;
    *(v23 + 40) = &off_1F25607D0;
    sub_1AF5D1EBC(v23);
    sub_1AFB3F8A4(v243, &qword_1ED723BE0, &type metadata for WorldAABB, &off_1F2510410);
    swift_setDeallocating();
    swift_deallocClassInstance();
    v272[0] = v244[0];
    v272[1] = v244[1];
    v273 = v245;
    sub_1AF6B06C0(v161, v272, 0x200000000, &v246);
    sub_1AFB3F8A4(v244, &qword_1ED723BE0, &type metadata for WorldAABB, &off_1F2510410);
    if (!v246)
    {
LABEL_22:

      return;
    }

    v156 = v246;
    v157 = v16;
    v175 = v251;
    v177 = v250;
    v24 = v252;
    v171 = v249;
    v173 = v253;
    v262 = v247;
    v263 = v248;

    sub_1AF8989FC(0xD00000000000001ALL, 0x80000001AFF487E0, 0x72665F6775626564, 0xEA00000000006761, MEMORY[0x1E69E7CC0], v254);
    v238 = v254[8];
    v239 = v254[9];
    v240 = v254[10];
    v234 = v254[4];
    v235 = v254[5];
    v236 = v254[6];
    v237 = v254[7];
    v230 = v254[0];
    v231 = v254[1];
    v232 = v254[2];
    v233 = v254[3];
    sub_1AF5FF2F0(&v220);
    v222 = xmmword_1AFE68E40;
    v223 = xmmword_1AFE68E40;
    v220 = xmmword_1AFE68E40;
    v221 = xmmword_1AFE68E40;
    v226 = xmmword_1AFE68E40;
    v227 = xmmword_1AFE68E40;
    v228 = xmmword_1AFE68E40;
    v229 = xmmword_1AFE68E40;
    sub_1AFDFF308();
    sub_1AF6021F8(v254, v299);
    sub_1AF89747C(&v211);
    sub_1AF602254(v254);
    MEMORY[0x1B271ACB0](v198);
    MEMORY[0x1B271ACB0](v194);
    MEMORY[0x1B271ACB0](v19);
    MEMORY[0x1B271ACB0](v20);
    MEMORY[0x1B271ACB0](v190);
    MEMORY[0x1B271ACB0](v183);
    MEMORY[0x1B271ACB0](v168);
    MEMORY[0x1B271ACB0](v165);
    MEMORY[0x1B271ACB0](v163);
    MEMORY[0x1B271ACB0](v162);
    sub_1AFDFF2A8();
    v336 = v220;
    v337 = v221;
    v338 = v222;
    v339 = v223;
    sub_1AF5FF304();
    sub_1AFDFF2A8();
    sub_1AFDFF2A8();
    MEMORY[0x1B271ACB0](2);
    sub_1AFDFF2A8();
    sub_1AFDFF2A8();
    v332 = v212;
    v333 = v213;
    v334 = v214;
    v335 = v215;
    v331 = v211;
    v25 = sub_1AFDFF2E8();
    v299[8] = v238;
    v299[9] = v239;
    v299[10] = v240;
    v299[4] = v234;
    v299[5] = v235;
    v299[6] = v236;
    v299[7] = v237;
    v299[0] = v230;
    v299[1] = v231;
    v299[2] = v232;
    v299[3] = v233;
    v300 = v198;
    v301 = v194;
    v302 = v19;
    v303 = v20;
    v304 = v190;
    v305 = v183;
    v306 = v168;
    v307 = v165;
    v308 = v163;
    v309 = v162;
    v310 = v21;
    v312 = WORD2(v159);
    v311 = v159;
    v313 = BYTE6(v159);
    v314 = v226;
    v315 = v227;
    v316 = v228;
    v317 = v229;
    v319 = 0;
    v318 = 0;
    v320 = 2;
    v321 = 0;
    v322 = 0;
    v323 = 2;
    v326 = 0;
    v324 = 0;
    v325 = 0;
    v327 = 257;
    v328 = v224;
    v329 = v225;
    v330 = v25;
    v26 = sub_1AF730058(v299);
    v28 = v27;
    v30 = v29;
    v31 = v29;

    sub_1AF602304(v299);
    if (v31)
    {
      sub_1AF6022A8(v26, v28, v30);
      sub_1AF0D9DB0(&v246, &qword_1ED725EA0, &type metadata for QueryResult);
      goto LABEL_22;
    }

    v32 = v181;
    v33 = swift_unknownObjectRetain();
    v160 = v26;
    sub_1AF6022A8(v33, v28, 0);
    if (*(v157 + 64))
    {
      v34 = **(v157 + 96);
      v35 = a2;
      v37 = v175;
      v36 = v177;
      if (v34)
      {
        swift_unknownObjectRetain();
        goto LABEL_30;
      }

      v38 = [swift_unknownObjectRetain() renderCommandEncoder];
      *&v211 = 0x646F636E45627573;
      *(&v211 + 1) = 0xEB000000005B7265;
      v294[0] = 0;
      v39 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v39);

      MEMORY[0x1B2718AE0](93, 0xE100000000000000);
      v40 = sub_1AFDFCEC8();

      [v38 setLabel_];

      v41 = *(v157 + 96);
      *v41 = [objc_allocWithZone(type metadata accessor for RenderCommandEncoder()) initWithEncoder_];
      v32 = v181;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v34 = **(v157 + 96);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
    }

    else
    {
      v34 = *(v157 + 56);
      swift_unknownObjectRetain();
      v35 = a2;
      v37 = v175;
      v36 = v177;
    }

    if (!v34)
    {
LABEL_31:
      if (v173 > 0 && v36)
      {
        v158 = v32;
        v42 = *(v37 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v202 = *(v24 + 32);
        v264 = v156;
        v265 = v262;
        v266 = v263;
        sub_1AF5D15C0(&v246, &v211);
        v43 = 0;
        v166 = vdupq_n_s64(0x3F80000000000000uLL);
        v44 = v171;
        v169 = v42;
        while (1)
        {
          v199 = v43;
          v45 = (v44 + 48 * v43);
          v46 = *v45;
          v47 = v45[1];
          v48 = v45[2];
          v49 = *(v45 + 2);
          v50 = *(v45 + 3);
          v51 = *(v45 + 4);
          v52 = *(v45 + 5);
          if (v42)
          {
            v53 = *(v52 + 376);

            os_unfair_lock_lock(v53);
            os_unfair_lock_lock(*(v52 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v202);
          v187 = *(v24 + 64);
          v191 = *(v24 + 48);
          v184 = *(v24 + 80);
          v54 = *(*(*(*(v52 + 40) + 16) + 32) + 16) + 1;
          *(v24 + 48) = ecs_stack_allocator_allocate(*(v24 + 32), 48 * v54, 8);
          *(v24 + 56) = v54;
          *(v24 + 72) = 0;
          *(v24 + 80) = 0;
          *(v24 + 64) = 0;
          LOBYTE(v211) = 1;
          v294[0] = v37;
          v195 = v52;
          v294[1] = v52;
          v294[2] = v24;
          v294[3] = v48;
          v294[4] = (v47 - v46 + v48);
          v294[5] = v173;
          v294[6] = v46;
          v294[7] = v47;
          v294[8] = 0;
          v294[9] = 0;
          v295 = 1;
          v296 = v49;
          v297 = v50;
          v298 = v51;
          v35 = v205;
          sub_1AFB30290(v294, v205, v181 & 0x10101, v179, 5, 4, xmmword_1AFE9AB50, v166, xmmword_1AFE9AB60);
          v55 = *(v24 + 48);
          v56 = *(v24 + 64);
          if (!v56)
          {
            v78 = *(v24 + 56);
            v79 = *(v24 + 32);
            v44 = v171;
            goto LABEL_68;
          }

          for (i = 0; i != v56; ++i)
          {
            v59 = (v55 + 48 * i);
            v60 = *v59;
            v61 = v59[4];
            v62 = *(v24 + 72);
            if (v62)
            {
              v63 = v60 == v62;
            }

            else
            {
              v63 = 0;
            }

            if (v63)
            {
              goto LABEL_40;
            }

            v64 = v264;
            if (!v264[11])
            {
              goto LABEL_40;
            }

            v65 = v59[2];
            v66 = v264 + 41;
            v67 = v264[9];
            if (v67 >= 0x10)
            {
              v68 = &v66[v264[8]];
              v69 = v67 >> 4;
              v70 = v264 + 41;
              while (*v68 != v60)
              {
                ++v70;
                v68 += 16;
                if (!--v69)
                {
                  goto LABEL_56;
                }
              }

              v71 = v70[v264[10]];
              v72 = v71 > 5;
              v73 = (1 << v71) & 0x23;
              if (v72 || v73 == 0)
              {
LABEL_40:

                v61(v58);

                continue;
              }
            }

LABEL_56:
            if (swift_conformsToProtocol2() && v65)
            {
              if (sub_1AF5FC8D8(v65))
              {
                goto LABEL_40;
              }

              v75 = v64[9];
              if (v75 < 0x10)
              {
                goto LABEL_40;
              }

              v76 = &v66[v64[8]];
              v77 = 16 * (v75 >> 4);
              while (*v76 != v65)
              {
                v76 += 16;
                v77 -= 16;
                if (!v77)
                {
                  goto LABEL_40;
                }
              }
            }
          }

          v78 = *(v24 + 56);
          v55 = *(v24 + 48);
          v79 = *(v24 + 32);
          v44 = v171;
          if (*(v24 + 64) >= 1)
          {
            swift_arrayDestroy();
          }

          v35 = v205;
LABEL_68:
          ecs_stack_allocator_deallocate(v79, v55, 48 * v78);
          *(v24 + 48) = v191;
          *(v24 + 64) = v187;
          *(v24 + 80) = v184;
          sub_1AF62D29C(v195);
          ecs_stack_allocator_pop_snapshot(v202);
          v42 = v169;
          if (v169)
          {
            os_unfair_lock_unlock(*(v195 + 344));
            os_unfair_lock_unlock(*(v195 + 376));
          }

          v43 = v199 + 1;
          v37 = v175;
          if (v199 + 1 == v177)
          {
            sub_1AF0D9DB0(&v246, &qword_1ED725EA0, &type metadata for QueryResult);
            v32 = v158;
            break;
          }
        }
      }

      if ((v32 & 0x100) == 0)
      {
        goto LABEL_131;
      }

      v80 = sub_1AFB3B238(v161);
      if (!v80)
      {
        swift_unknownObjectRelease();
        sub_1AF0D9DB0(&v246, &qword_1ED725EA0, &type metadata for QueryResult);
        goto LABEL_22;
      }

      v82 = v80;
      v83 = v81;
      sub_1AF5C9150(v255);
      sub_1AFA1CFD4(0, &qword_1ED7269F0, &qword_1ED72C1B0, &qword_1ED72C1D0, &protocol descriptor for ClassComponent);
      v84 = swift_allocObject();
      *(v84 + 16) = xmmword_1AFE431C0;
      *(v84 + 32) = &type metadata for EmitterReference;
      *(v84 + 40) = &off_1F2563D20;
      sub_1AFB2FCE0(v84, v256);
      sub_1AFB3CAC4(v255, sub_1AFB3CB24);
      swift_setDeallocating();
      swift_deallocClassInstance();
      v270[0] = v256[0];
      v270[1] = v256[1];
      v271 = v257;
      sub_1AF6B06C0(v161, v270, 0x200000000, v258);
      if (*v258)
      {
        if (v261 > 0)
        {
          v180 = *(&v259 + 1);
          if (*(&v259 + 1))
          {
            v178 = *&v258[40];
            v85 = *(&v260 + 1);
            v86 = *(v260 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
            v87 = *(*(&v260 + 1) + 32);
            v267 = *v258;
            v268 = *&v258[8];
            v269 = *&v258[24];
            v213 = *&v258[32];
            v214 = v259;
            v215 = v260;
            v216 = v261;
            v211 = *v258;
            v212 = *&v258[16];
            sub_1AF5DD298(&v211, v281);
            v88 = 0;
            v174 = v83;
            v176 = v83 + 32;
            v164 = (v83 + 64);
            v172 = v82;
            v170 = v86;
            v167 = v87;
            while (1)
            {
              v203 = v88;
              v89 = *(v178 + 48 * v88 + 40);
              if (v86)
              {
                v90 = *(v89 + 376);

                os_unfair_lock_lock(v90);
                os_unfair_lock_lock(*(v89 + 344));
              }

              else
              {
              }

              ecs_stack_allocator_push_snapshot(v87);
              v192 = *(v85 + 64);
              v196 = *(v85 + 48);
              v188 = *(v85 + 80);
              v91 = *(*(*(*(v89 + 40) + 16) + 32) + 16) + 1;
              *(v85 + 48) = ecs_stack_allocator_allocate(*(v85 + 32), 48 * v91, 8);
              *(v85 + 56) = v91;
              *(v85 + 72) = 0;
              *(v85 + 80) = 0;
              *(v85 + 64) = 0;
              v182 = *(v89 + 288);
              v185 = *(v89 + 272);
              v200 = v89;
              LODWORD(v274) = *(v89 + 24);
              sub_1AFDFEA08();
              sub_1AFDFF308();
              sub_1AFDFD038();

              v285 = v276;
              v286 = v277;
              v287 = v278;
              v283 = v274;
              v284 = v275;
              v92 = sub_1AFDFF2E8();
              v281[0] = v185;
              v281[1] = v182;
              v281[2] = v207;
              v281[3] = v208;
              v281[4] = v209;
              v281[5] = v210;
              v282 = 6;
              ecs_stack_allocator_push_snapshot(*(v82 + 32));
              v93 = *(v83 + 16);
              v94 = 2 * v93;
              v95 = ecs_stack_allocator_allocate(*(v82 + 32), 16 * v93 + 32, 8);
              *v95 = &type metadata for DebugInfoWireframePrimitive;
              v95[1] = &off_1F25604A8;
              v95[2] = &type metadata for DebugInfoColor;
              v95[3] = &off_1F2560488;
              if (v93)
              {
                if (v93 > 3 && ((v95 + 4) >= v176 + v94 * 8 || v176 >= &v95[v94 + 4]))
                {
                  v96 = v93 & 0x7FFFFFFFFFFFFFFCLL;
                  v97 = v93 & 0x7FFFFFFFFFFFFFFCLL | 2;
                  v125 = v95 + 8;
                  v126 = v93 & 0x7FFFFFFFFFFFFFFCLL;
                  v127 = v164;
                  do
                  {
                    v129 = *(v127 - 2);
                    v128 = *(v127 - 1);
                    v131 = *v127;
                    v130 = v127[1];
                    v127 += 4;
                    *(v125 - 2) = v129;
                    *(v125 - 1) = v128;
                    *v125 = v131;
                    v125[1] = v130;
                    v125 += 4;
                    v126 -= 4;
                  }

                  while (v126);
                  if (v93 == v96)
                  {
                    goto LABEL_90;
                  }
                }

                else
                {
                  v96 = 0;
                  v97 = 2;
                }

                v98 = v93 - v96;
                v99 = (v176 + 16 * v96);
                do
                {
                  v100 = *v99++;
                  *&v95[2 * v97++] = v100;
                  --v98;
                }

                while (v98);
              }

              else
              {
                v97 = 2;
              }

LABEL_90:
              LOBYTE(v274) = 1;
              sub_1AF63C898(v95, v97, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, v82, v281, v92 | 0xFF000000);
              ecs_stack_allocator_pop_snapshot(*(v82 + 32));
              v101 = *(v85 + 48);
              v102 = *(v85 + 64);
              if (!v102)
              {
                v123 = *(v85 + 56);
                v124 = *(v85 + 32);
                goto LABEL_120;
              }

              for (j = 0; j != v102; ++j)
              {
                v105 = (v101 + 48 * j);
                v106 = *v105;
                v107 = v105[4];
                v108 = *(v85 + 72);
                if (v108)
                {
                  v109 = v106 == v108;
                }

                else
                {
                  v109 = 0;
                }

                if (v109)
                {
                  goto LABEL_92;
                }

                v110 = v267;
                if (!v267[11])
                {
                  goto LABEL_92;
                }

                v111 = v105[2];
                v112 = v267 + 41;
                v113 = v267[9];
                if (v113 >= 0x10)
                {
                  v114 = &v112[v267[8]];
                  v115 = v113 >> 4;
                  v116 = v267 + 41;
                  while (*v114 != v106)
                  {
                    ++v116;
                    v114 += 16;
                    if (!--v115)
                    {
                      goto LABEL_108;
                    }
                  }

                  v117 = v116[v267[10]];
                  v72 = v117 > 5;
                  v118 = (1 << v117) & 0x23;
                  if (v72 || v118 == 0)
                  {
LABEL_92:

                    v107(v104);

                    continue;
                  }
                }

LABEL_108:
                if (swift_conformsToProtocol2() && v111)
                {
                  if (sub_1AF5FC8D8(v111))
                  {
                    goto LABEL_92;
                  }

                  v120 = v110[9];
                  if (v120 < 0x10)
                  {
                    goto LABEL_92;
                  }

                  v121 = &v112[v110[8]];
                  v122 = 16 * (v120 >> 4);
                  while (*v121 != v111)
                  {
                    v121 += 16;
                    v122 -= 16;
                    if (!v122)
                    {
                      goto LABEL_92;
                    }
                  }
                }
              }

              v123 = *(v85 + 56);
              v101 = *(v85 + 48);
              v124 = *(v85 + 32);
              if (*(v85 + 64) >= 1)
              {
                swift_arrayDestroy();
              }

              v82 = v172;
              v83 = v174;
              v86 = v170;
              v87 = v167;
LABEL_120:
              ecs_stack_allocator_deallocate(v124, v101, 48 * v123);
              *(v85 + 48) = v196;
              *(v85 + 64) = v192;
              *(v85 + 80) = v188;
              sub_1AF62D29C(v200);
              ecs_stack_allocator_pop_snapshot(v87);
              if (v86)
              {
                os_unfair_lock_unlock(*(v200 + 344));
                os_unfair_lock_unlock(*(v200 + 376));
              }

              v88 = v203 + 1;
              if (v203 + 1 == v180)
              {
                sub_1AFB3CAB4(v82, v83);
                sub_1AF0D9DB0(v258, &qword_1ED725EA0, &type metadata for QueryResult);
                sub_1AFB3CAC4(v256, sub_1AFB3CB24);
                sub_1AF0D9DB0(v258, &qword_1ED725EA0, &type metadata for QueryResult);
                v35 = v205;
                goto LABEL_131;
              }
            }
          }

          sub_1AFB3CAB4(v82, v83);
          sub_1AFB3CAC4(v256, sub_1AFB3CB24);
          sub_1AF0D9DB0(v258, &qword_1ED725EA0, &type metadata for QueryResult);
LABEL_131:
          v132 = sub_1AFB3B238(v161);
          if (!v132)
          {

            swift_unknownObjectRelease();
            sub_1AF0D9DB0(&v246, &qword_1ED725EA0, &type metadata for QueryResult);

            return;
          }

          v134 = v132;
          v135 = v133;
          v136 = *(v35 + 656);
          v217 = *(v35 + 640);
          v218 = v136;
          v219[0] = *(v35 + 672);
          v137 = *(v35 + 592);
          v213 = *(v35 + 576);
          v214 = v137;
          v138 = *(v35 + 624);
          v215 = *(v35 + 608);
          v216 = v138;
          v139 = *(v35 + 560);
          v211 = *(v35 + 544);
          v212 = v139;
          *(v219 + 9) = *(v35 + 681);
          if (sub_1AF448314(&v211) == 1)
          {
            sub_1AFDFE518();
            __break(1u);
            return;
          }

          v201 = v215;
          v204 = v214;
          v193 = v217;
          v197 = v216;
          v186 = v219[0];
          v189 = v218;
          v140 = sub_1AFB3CAA4(255, 255, 255);
          v274 = v204;
          v275 = v201;
          v276 = v197;
          v277 = v193;
          v278 = v189;
          v279 = v186;
          v280 = 8;
          ecs_stack_allocator_push_snapshot(*(v134 + 32));
          v141 = *(v135 + 16);
          v142 = 2 * v141;
          v143 = ecs_stack_allocator_allocate(*(v134 + 32), 16 * v141 + 32, 8);
          *v143 = &type metadata for DebugInfoWireframePrimitive;
          v143[1] = &off_1F25604A8;
          v143[2] = &type metadata for DebugInfoColor;
          v143[3] = &off_1F2560488;
          if (v141)
          {
            if (v141 > 5 && ((v143 + 4) >= v135 + v142 * 8 + 32 || v135 + 32 >= &v143[v142 + 4]))
            {
              v144 = v141 & 0x7FFFFFFFFFFFFFFCLL;
              v145 = v141 & 0x7FFFFFFFFFFFFFFCLL | 2;
              v149 = v143 + 8;
              v150 = (v135 + 64);
              v151 = v141 & 0x7FFFFFFFFFFFFFFCLL;
              do
              {
                v153 = *(v150 - 2);
                v152 = *(v150 - 1);
                v155 = *v150;
                v154 = v150[1];
                v150 += 4;
                *(v149 - 2) = v153;
                *(v149 - 1) = v152;
                *v149 = v155;
                v149[1] = v154;
                v149 += 4;
                v151 -= 4;
              }

              while (v151);
              if (v141 == v144)
              {
                goto LABEL_143;
              }
            }

            else
            {
              v144 = 0;
              v145 = 2;
            }

            v146 = v141 - v144;
            v147 = (v135 + 16 * v144 + 32);
            do
            {
              v148 = *v147++;
              *&v143[2 * v145++] = v148;
              --v146;
            }

            while (v146);
          }

          else
          {
            v145 = 2;
          }

LABEL_143:
          sub_1AF63C898(v143, v145, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, v134, &v274, v140);
          ecs_stack_allocator_pop_snapshot(*(v134 + 32));

          swift_unknownObjectRelease();
          sub_1AF0D9DB0(&v246, &qword_1ED725EA0, &type metadata for QueryResult);

          sub_1AFB3CAB4(v134, v135);
          return;
        }

        sub_1AFB3CAC4(v256, sub_1AFB3CB24);
        sub_1AF0D9DB0(v258, &qword_1ED725EA0, &type metadata for QueryResult);
      }

      else
      {
        sub_1AFB3CAC4(v256, sub_1AFB3CB24);
      }

      sub_1AFB3CAB4(v82, v83);
      goto LABEL_131;
    }

LABEL_30:
    swift_getObjectType();
    [v34 setRenderPipelineState_];
    [v34 setDepthStencilState_];
    sub_1AFB19490(v161, v35);
    swift_unknownObjectRelease();
    goto LABEL_31;
  }
}

uint64_t sub_1AFB3CAB4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1AFB3CAC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AFB3CB24()
{
  if (!qword_1EB642A08)
  {
    v4[4] = v0;
    v4[5] = v1;
    v4[0] = &type metadata for Position;
    v4[1] = &type metadata for Particle;
    v4[2] = &off_1F252EE70;
    v4[3] = &off_1F252D788;
    v2 = type metadata accessor for Query2(0, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EB642A08);
    }
  }
}

uint64_t sub_1AFB3CBB4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

float32x4_t sub_1AFB3CC14@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 + 184);

  sub_1AF6D4A34(&type metadata for FrameConstantsStorage, &off_1F255F3C8, v8);
  v19 = v10;
  v20 = v9;
  v18 = v11;

  sub_1AFB21428(a3, &v21);
  v12 = v24;
  v13 = v28;
  v14 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v25, v21.f32[0]), v26, *v21.f32, 1), v27, v21, 2), v28, v21, 3);
  result = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v25, v22.f32[0]), v26, *v22.f32, 1), v27, v22, 2), v28, v22, 3);
  v16 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v25, v23.f32[0]), v26, *v23.f32, 1), v27, v23, 2), v28, v23, 3);
  v17 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v25, v24.f32[0]), v26, *v24.f32, 1), v27, v24, 2);
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0;
  *(a4 + 128) = v20;
  *(a4 + 144) = v19;
  *(a4 + 160) = v18;
  *(a4 + 176) = v14;
  *(a4 + 192) = result;
  *(a4 + 208) = v16;
  *(a4 + 224) = vmlaq_laneq_f32(v17, v13, v12, 3);
  return result;
}

double sub_1AFB3CD24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = *(*(a2 + 280) + 80);
    if (v4)
    {

      v7 = v4;
      sub_1AF474680(v22);

      v21 = sub_1AFBE45A8(a1);

      if (v21)
      {
        v9 = sub_1AF6F3FF4(0, v8);
        if (v9)
        {
          v10 = v9;
          v11 = sub_1AFDFE238();
          v13 = v12;

          sub_1AF7180FC();

          v14 = sub_1AF6F3D60(v21, v11, v13);

          sub_1AF709E8C(v14);
          swift_unknownObjectRelease();

          sub_1AFB35990(a1, a2, a3, v10, v22);
          v15 = sub_1AFB3B238(a1);
          if (v15)
          {
            v17 = v15;
            v18 = v16;
            v19 = sub_1AF3C3FEC(v16);
            sub_1AFB3CAB4(v17, v18);
            sub_1AF6B85A0(v19, MEMORY[0x1E69E7CC0], v23);

            sub_1AF6B06C0(a1, v23, 0x200000000, &v24);
            if (v24)
            {
              v34 = v27;
              v35 = v28;
              v36 = v29;
              v31 = v24;
              v37 = v30;
              v32 = v25;
              v33 = v26;
              sub_1AF6B8EAC(0);
              sub_1AF692DB0(v23);

              swift_unknownObjectRelease();
              sub_1AF0D9DB0(&v24, &qword_1ED725EA0, &type metadata for QueryResult);
            }

            else
            {
              sub_1AF692DB0(v23);

              swift_unknownObjectRelease();
            }
          }

          else
          {

            swift_unknownObjectRelease();
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_1AFB3D078(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = *a2;
  HIDWORD(v7) = 1.0;
  HIDWORD(v8) = 0;
  v27 = v8;
  v28 = v7;
  v9 = sub_1AFB3CAA4(255, 0, 255);
  v29[0] = v28;
  v29[1] = v27;
  v10 = 2;
  v30 = 2;
  v31 = 0;
  ecs_stack_allocator_push_snapshot(*(a3 + 32));
  v11 = *(a4 + 16);
  v12 = 2 * v11;
  v13 = ecs_stack_allocator_allocate(*(a3 + 32), 16 * v11 + 32, 8);
  *v13 = &type metadata for DebugInfoWireframePrimitive;
  v13[1] = &off_1F25604A8;
  v13[2] = &type metadata for DebugInfoColor;
  v13[3] = &off_1F2560488;
  if (!v11)
  {
    goto LABEL_15;
  }

  if (v11 > 5 && ((v13 + 4) < a4 + v12 * 8 + 32 ? (v14 = a4 + 32 >= &v13[v12 + 4]) : (v14 = 1), v14))
  {
    v15 = v11 & 0x7FFFFFFFFFFFFFFCLL;
    v10 = v11 & 0x7FFFFFFFFFFFFFFCLL | 2;
    v16 = v13 + 8;
    v17 = (a4 + 64);
    v18 = v11 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v20 = *(v17 - 2);
      v19 = *(v17 - 1);
      v22 = *v17;
      v21 = v17[1];
      v17 += 4;
      *(v16 - 2) = v20;
      *(v16 - 1) = v19;
      *v16 = v22;
      v16[1] = v21;
      v16 += 4;
      v18 -= 4;
    }

    while (v18);
    if (v11 == v15)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v15 = 0;
    v10 = 2;
  }

  v23 = v11 - v15;
  v24 = (a4 + 16 * v15 + 32);
  do
  {
    v25 = *v24++;
    *&v13[2 * v10++] = v25;
    --v23;
  }

  while (v23);
LABEL_15:
  v32 = 1;
  sub_1AF63C898(v13, v10, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a3, v29, v9);
  result = ecs_stack_allocator_pop_snapshot(*(a3 + 32));
  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFB3D228(__n128 *a1, float32x4_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = *a2;
  v7.n128_u32[3] = 1.0;
  v35 = v7;
  v9 = vmulq_f32(v8, v8);
  v10 = vmulq_laneq_f32(v8, v8, 3);
  v11 = vmuls_lane_f32(v8.f32[0], *v8.f32, 1);
  v12 = vmuls_lane_f32(v8.f32[0], v8, 2);
  v13.i32[3] = 0;
  v13.f32[0] = (0.5 - v9.f32[1]) - v9.f32[2];
  v13.f32[1] = v11 + v10.f32[2];
  v13.f32[2] = v12 - v10.f32[1];
  v8.f32[0] = vmuls_lane_f32(v8.f32[1], v8, 2);
  v9.f32[0] = 0.5 - v9.f32[0];
  v14.i32[3] = 0;
  v14.f32[0] = v11 - v10.f32[2];
  v14.f32[1] = v9.f32[0] - v9.f32[2];
  v14.f32[2] = v8.f32[0] + v10.f32[0];
  v8.f32[0] = v8.f32[0] - v10.f32[0];
  v10.i32[3] = 0;
  v10.f32[0] = v12 + v10.f32[1];
  v10.i32[1] = v8.i32[0];
  v10.f32[2] = v9.f32[0] - v9.f32[1];
  v33 = vaddq_f32(v14, v14);
  v34 = vaddq_f32(v13, v13);
  v32 = vaddq_f32(v10, v10);
  memset(v36, 0, sizeof(v36));
  v37 = 12;
  ecs_stack_allocator_push_snapshot(*(a3 + 32));
  v15 = *(a4 + 16);
  v16 = 2 * v15;
  v17 = ecs_stack_allocator_allocate(*(a3 + 32), 16 * v15 + 48, 8);
  *v17 = &type metadata for DebugInfoWireframePrimitive;
  v17[1] = &off_1F25604A8;
  v17[2] = &type metadata for WorldTransform;
  v17[3] = &off_1F2529FC0;
  v17[4] = &type metadata for Beamed;
  v17[5] = &off_1F2529FA0;
  if (v15)
  {
    if (v15 > 0x13)
    {
      v18 = 0;
      v24 = 2 * (v15 - 1);
      v19 = 3;
      if (&v17[v24 + 6] < v17 + 6 || &v17[v24 + 7] < v17 + 7 || (v15 - 1) >> 60)
      {
        goto LABEL_4;
      }

      if ((v17 + 6) >= a4 + v16 * 8 + 32 || a4 + 32 >= &v17[v16 + 6])
      {
        v18 = v15 & 0x1FFFFFFFFFFFFFFCLL;
        v19 = v15 | 3;
        v25 = v17 + 10;
        v26 = (a4 + 64);
        v27 = v15 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          v29 = *(v26 - 2);
          v28 = *(v26 - 1);
          v31 = *v26;
          v30 = v26[1];
          v26 += 4;
          *(v25 - 2) = v29;
          *(v25 - 1) = v28;
          *v25 = v31;
          v25[1] = v30;
          v25 += 4;
          v27 -= 4;
        }

        while (v27);
        if (v15 == v18)
        {
          goto LABEL_8;
        }

        goto LABEL_4;
      }
    }

    v18 = 0;
    v19 = 3;
LABEL_4:
    v20 = v15 - v18;
    v21 = (a4 + 16 * v18 + 32);
    do
    {
      v22 = *v21++;
      *&v17[2 * v19++] = v22;
      --v20;
    }

    while (v20);
    goto LABEL_8;
  }

  v19 = 3;
LABEL_8:
  v38 = 1;
  sub_1AF63D0A0(v17, v19, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a3, v36, v34, v33, v32, v35);
  result = ecs_stack_allocator_pop_snapshot(*(a3 + 32));
  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFB3D4B4(__int128 *a1, float32x4_t *a2, uint64_t a3, uint64_t a4)
{
  v28 = *a1;
  sub_1AF5C5D6C(*a2);
  v7 = v28;
  HIDWORD(v7) = 1.0;
  HIDWORD(v8) = 0;
  v27 = v8;
  v29 = v7;
  v9 = sub_1AFB3CAA4(0, 0, 255);
  v30[0] = v29;
  v30[1] = v27;
  v31 = 0;
  v32 = 0;
  ecs_stack_allocator_push_snapshot(*(a3 + 32));
  v10 = *(a4 + 16);
  v11 = 2 * v10;
  v12 = ecs_stack_allocator_allocate(*(a3 + 32), 16 * v10 + 32, 8);
  *v12 = &type metadata for DebugInfoWireframePrimitive;
  v12[1] = &off_1F25604A8;
  v12[2] = &type metadata for DebugInfoColor;
  v12[3] = &off_1F2560488;
  if (v10)
  {
    if (v10 > 5 && ((v12 + 4) < a4 + v11 * 8 + 32 ? (v13 = a4 + 32 >= &v12[v11 + 4]) : (v13 = 1), v13))
    {
      v14 = v10 & 0x7FFFFFFFFFFFFFFCLL;
      v15 = v10 & 0x7FFFFFFFFFFFFFFCLL | 2;
      v16 = v12 + 8;
      v17 = (a4 + 64);
      v18 = v10 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v20 = *(v17 - 2);
        v19 = *(v17 - 1);
        v22 = *v17;
        v21 = v17[1];
        v17 += 4;
        *(v16 - 2) = v20;
        *(v16 - 1) = v19;
        *v16 = v22;
        v16[1] = v21;
        v16 += 4;
        v18 -= 4;
      }

      while (v18);
      if (v10 == v14)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v14 = 0;
      v15 = 2;
    }

    v23 = v10 - v14;
    v24 = (a4 + 16 * v14 + 32);
    do
    {
      v25 = *v24++;
      *&v12[2 * v15++] = v25;
      --v23;
    }

    while (v23);
  }

  else
  {
    v15 = 2;
  }

LABEL_17:
  sub_1AF63C898(v12, v15, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a3, v30, v9);
  result = ecs_stack_allocator_pop_snapshot(*(a3 + 32));
  if (v4)
  {
    __break(1u);
  }

  return result;
}

void sub_1AFB3D668(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v423 = *MEMORY[0x1E69E9840];

  sub_1AF5FCA80();
  v8 = v7;

  if (v8 == 2)
  {
    return;
  }

  v10 = HIDWORD(v2);
  v249 = *(*(v6 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 8 * *thread_worker_index(v9) + 8);
  sub_1AFA1CFD4(0, &qword_1ED72F7D0, &qword_1ED72FFE0, &qword_1ED72FFF0, &protocol descriptor for EntityComponent);
  v11 = swift_allocObject();
  v12 = v11;
  v13 = &type metadata for DebugInfoB;
  if (v8)
  {
    v13 = &type metadata for DebugInfoA;
  }

  *(v11 + 32) = v13;
  v201 = v11 + 32;
  v202 = HIDWORD(v2);
  v14 = &off_1F2560448;
  *(v11 + 16) = xmmword_1AFE431C0;
  if (v8)
  {
    v14 = &off_1F2560428;
  }

  *(v11 + 40) = v14;
  v15 = *(v4 + 90);
  v214 = v2;
  if (v15 & 1) == 0 || (sub_1AF3CCD70(v2, v342), (v343))
  {

    v16 = 0;
    goto LABEL_26;
  }

  v250 = v342[1];
  v245 = v342[0];
  v17 = sub_1AFB3CAA4(255, 255, 255);
  v421[0] = v245;
  v421[1] = v250;
  v422 = 6;

  ecs_stack_allocator_push_snapshot(*(v249 + 32));
  v18 = *(v12 + 16);
  v19 = 2 * v18;
  v20 = ecs_stack_allocator_allocate(*(v249 + 32), 16 * v18 + 32, 8);
  *v20 = &type metadata for DebugInfoWireframePrimitive;
  v20[1] = &off_1F25604A8;
  v20[2] = &type metadata for DebugInfoColor;
  v20[3] = &off_1F2560488;
  if (v18)
  {
    if (v18 > 5 && ((v20 + 4) < v12 + v19 * 8 + 32 ? (v21 = v201 >= &v20[v19 + 4]) : (v21 = 1), v21))
    {
      v22 = v18 & 0x7FFFFFFFFFFFFFFCLL;
      v23 = v18 & 0x7FFFFFFFFFFFFFFCLL | 2;
      v24 = v20 + 8;
      v25 = (v12 + 64);
      v26 = v18 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v28 = *(v25 - 2);
        v27 = *(v25 - 1);
        v30 = *v25;
        v29 = v25[1];
        v25 += 4;
        *(v24 - 2) = v28;
        *(v24 - 1) = v27;
        *v24 = v30;
        v24[1] = v29;
        v24 += 4;
        v26 -= 4;
      }

      while (v26);
      if (v18 == v22)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v22 = 0;
      v23 = 2;
    }

    v31 = v18 - v22;
    v32 = (v12 + 16 * v22 + 32);
    do
    {
      v33 = *v32++;
      *&v20[2 * v23++] = v33;
      --v31;
    }

    while (v31);
  }

  else
  {
    v23 = 2;
  }

LABEL_25:
  LOBYTE(v335[0]) = 1;
  v16 = 0;
  sub_1AF63C898(v20, v23, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, v249, v421, v17);
  ecs_stack_allocator_pop_snapshot(*(v249 + 32));
  v2 = v214;
  LODWORD(v10) = v202;
LABEL_26:
  v246 = v12;
  v204 = v15;
  if ((v15 & 4) != 0)
  {
    if (qword_1ED72D720 != -1)
    {
      swift_once();
    }

    v323 = qword_1ED73B840;
    v324 = 0;
    v325 = 2;
    v326 = 0;
    v327 = 2;
    v328 = 0;
    sub_1AF5C9204(v259);
    sub_1AF5DD4A4(0, &qword_1ED726A10, &qword_1ED72C1D0, &protocol descriptor for ClassComponent, MEMORY[0x1E69E6F90]);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1AFE431C0;
    *(v34 + 56) = &type metadata for EmitterReference;
    *(v34 + 64) = &off_1F2563D20;
    *(v34 + 32) = v2;
    v35 = (v34 + 32);
    *(v34 + 36) = v10;
    sub_1AF5FDBF0();
    sub_1AFB3CAC4(v259, sub_1AF9FA148);
    swift_setDeallocating();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v35);
    swift_deallocClassInstance();
    v297[0] = v260[0];
    v297[1] = v260[1];
    v298 = v261;
    sub_1AF6B06C0(v6, v297, 0x200000000, &v344);
    v220 = v344;
    if (!v344)
    {
      sub_1AFB3CAC4(v260, sub_1AF9FA148);
      goto LABEL_44;
    }

    v36 = v347;
    v37 = v348;
    v215 = v349;
    v38 = v350;
    v395 = v345;
    v396 = v346;
    v209 = v351;
    if (v351 > 0 && v348)
    {
      v196 = v6;
      v39 = *(v350 + 32);
      v40 = *(v349 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);

      sub_1AF5D15C0(&v344, v335);
      v41 = (v36 + 24);
      v207 = v40;
      do
      {
        v240 = v37;
        v43 = *(v41 - 6);
        v42 = *(v41 - 5);
        v44 = *(v41 - 4);
        v235 = *(v41 - 1);
        v230 = *v41;
        v45 = v41[2];
        v225 = v41[1];
        if (v40)
        {
          v46 = *(v45 + 376);

          os_unfair_lock_lock(v46);
          os_unfair_lock_lock(*(v45 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v39);
        v47 = *(v38 + 64);
        v414[0] = *(v38 + 48);
        v414[1] = v47;
        v415 = *(v38 + 80);
        v48 = *(v38 + 32);
        v49 = *(*(*(*(v45 + 40) + 16) + 32) + 16) + 1;

        *(v38 + 48) = ecs_stack_allocator_allocate(v48, 48 * v49, 8);
        *(v38 + 56) = v49;
        *(v38 + 72) = 0;
        *(v38 + 80) = 0;
        *(v38 + 64) = 0;

        LOBYTE(v335[0]) = 1;
        v416[0] = v215;
        v416[1] = v45;
        v416[2] = v38;
        v416[3] = v44;
        v416[4] = (v42 - v43 + v44);
        v416[5] = v209;
        v416[6] = v43;
        v416[7] = v42;
        v416[8] = 0;
        v416[9] = 0;
        v417 = 1;
        v418 = v235;
        v419 = v230;
        v420 = v225;
        v12 = v246;

        v16 = 0;
        sub_1AFD53548(v416, v249, v246);

        v274 = v220;
        v275 = v395;
        v276 = v396;
        sub_1AF630994(v38, &v274, v414);
        sub_1AF62D29C(v45);
        ecs_stack_allocator_pop_snapshot(v39);
        v40 = v207;
        if (v207)
        {
          os_unfair_lock_unlock(*(v45 + 344));
          os_unfair_lock_unlock(*(v45 + 376));
        }

        v41 += 6;
        v37 = v240 - 1;
      }

      while (v240 != 1);
      sub_1AFB3CAC4(v260, sub_1AF9FA148);
      sub_1AF0D9DB0(&v344, &qword_1ED725EA0, &type metadata for QueryResult);

      sub_1AF0D9DB0(&v344, &qword_1ED725EA0, &type metadata for QueryResult);
      v6 = v196;
      v2 = v214;
      LODWORD(v10) = v202;
LABEL_44:
      LOBYTE(v15) = v204;
      if ((v204 & 8) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_45;
    }

    sub_1AFB3CAC4(v260, sub_1AF9FA148);
    sub_1AF0D9DB0(&v344, &qword_1ED725EA0, &type metadata for QueryResult);
    v2 = v214;
    LODWORD(v10) = v202;
  }

  if ((v15 & 8) == 0)
  {
LABEL_60:
    if ((v15 & 0x10) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_61;
  }

LABEL_45:
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v317 = qword_1ED73B840;
  v318 = 0;
  v319 = 2;
  v320 = 0;
  v321 = 2;
  v322 = 0;
  sub_1AF5C9174(v262);
  sub_1AF5DD4A4(0, &qword_1ED726A10, &qword_1ED72C1D0, &protocol descriptor for ClassComponent, MEMORY[0x1E69E6F90]);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1AFE431C0;
  *(v50 + 56) = &type metadata for EmitterReference;
  *(v50 + 64) = &off_1F2563D20;
  *(v50 + 32) = v2;
  v51 = (v50 + 32);
  *(v50 + 36) = v10;
  sub_1AF5FDBF0();
  sub_1AFB3CAC4(v262, sub_1AFA0D2A0);
  swift_setDeallocating();
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v51);
  swift_deallocClassInstance();
  v295[0] = v263[0];
  v295[1] = v263[1];
  v296 = v264;
  sub_1AF6B06C0(v6, v295, 0x200000000, &v352);
  v226 = v352;
  if (!v352)
  {
    sub_1AFB3CAC4(v263, sub_1AFA0D2A0);
    LOBYTE(v15) = v204;
    goto LABEL_60;
  }

  v52 = v355;
  v53 = v356;
  v221 = v357;
  v210 = v358;
  v393 = v353;
  v394 = v354;
  v216 = v359;
  LOBYTE(v15) = v204;
  if (v359 > 0 && v356)
  {
    v197 = v6;
    v54 = v358;
    v55 = v358[4];
    v241 = *(v357 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);

    sub_1AF5D15C0(&v352, v335);
    v56 = (v52 + 24);
    do
    {
      v57 = v55;
      v58 = *(v56 - 6);
      v59 = *(v56 - 5);
      v60 = *(v56 - 4);
      v61 = *(v56 - 1);
      v236 = *v56;
      v62 = v56[2];
      v231 = v56[1];
      if (v241)
      {
        v63 = *(v62 + 376);

        v54 = v210;
        os_unfair_lock_lock(v63);
        os_unfair_lock_lock(*(v62 + 344));
      }

      else
      {
      }

      v55 = v57;
      ecs_stack_allocator_push_snapshot(v57);

      sub_1AF630914(v64, v54, v360);

      LOBYTE(v335[0]) = 1;
      v409[0] = v221;
      v409[1] = v62;
      v409[2] = v54;
      v409[3] = v60;
      v409[4] = (v59 - v58 + v60);
      v409[5] = v216;
      v409[6] = v58;
      v409[7] = v59;
      v409[8] = 0;
      v409[9] = 0;
      v410 = 1;
      v411 = v61;
      v412 = v236;
      v413 = v231;

      sub_1AFD11F0C(v409, v249, v246);
      v277 = v226;
      v278 = v393;
      v279 = v394;
      sub_1AF630994(v54, &v277, v360);
      sub_1AF62D29C(v62);
      ecs_stack_allocator_pop_snapshot(v57);
      if (v241)
      {
        os_unfair_lock_unlock(*(v62 + 344));
        os_unfair_lock_unlock(*(v62 + 376));
      }

      v56 += 6;
      --v53;
    }

    while (v53);
    sub_1AFB3CAC4(v263, sub_1AFA0D2A0);
    sub_1AF0D9DB0(&v352, &qword_1ED725EA0, &type metadata for QueryResult);
    v12 = v246;

    sub_1AF0D9DB0(&v352, &qword_1ED725EA0, &type metadata for QueryResult);
    v6 = v197;
    v2 = v214;
    v16 = 0;
    LODWORD(v10) = v202;
    LOBYTE(v15) = v204;
    if ((v204 & 0x10) == 0)
    {
LABEL_77:
      if ((v15 & 0x20) == 0)
      {
        goto LABEL_97;
      }

      goto LABEL_81;
    }
  }

  else
  {
    sub_1AFB3CAC4(v263, sub_1AFA0D2A0);
    sub_1AF0D9DB0(&v352, &qword_1ED725EA0, &type metadata for QueryResult);
    v2 = v214;
    LODWORD(v10) = v202;
    if ((v204 & 0x10) == 0)
    {
      goto LABEL_77;
    }
  }

LABEL_61:
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v311 = qword_1ED73B840;
  v312 = 0;
  v313 = 2;
  v314 = 0;
  v315 = 2;
  v316 = 0;
  sub_1AF5C948C(v265);
  sub_1AF5DD4A4(0, &qword_1ED726A10, &qword_1ED72C1D0, &protocol descriptor for ClassComponent, MEMORY[0x1E69E6F90]);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_1AFE431C0;
  *(v65 + 56) = &type metadata for EmitterReference;
  *(v65 + 64) = &off_1F2563D20;
  *(v65 + 32) = v2;
  v66 = (v65 + 32);
  *(v65 + 36) = v10;
  sub_1AF5FDBF0();
  sub_1AFB3CAC4(v265, sub_1AFB3F900);
  swift_setDeallocating();
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v66);
  swift_deallocClassInstance();
  v293[0] = v266[0];
  v293[1] = v266[1];
  v294 = v267;
  sub_1AF6B06C0(v6, v293, 0x200000000, &v361);
  v227 = v361;
  if (v361)
  {
    v67 = v364;
    v68 = v365;
    v222 = v366;
    v211 = v367;
    v391 = v362;
    v392 = v363;
    v217 = v368;
    LOBYTE(v15) = v204;
    if (v368 <= 0 || !v365)
    {
      sub_1AFB3CAC4(v266, sub_1AFB3F900);
      sub_1AF0D9DB0(&v361, &qword_1ED725EA0, &type metadata for QueryResult);
      v2 = v214;
      LODWORD(v10) = v202;
      if ((v204 & 0x20) == 0)
      {
        goto LABEL_97;
      }

      goto LABEL_81;
    }

    v198 = v6;
    v69 = v367;
    v70 = v367[4];
    v242 = *(v366 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);

    sub_1AF5D15C0(&v361, v335);
    v71 = (v67 + 24);
    do
    {
      v72 = v70;
      v73 = *(v71 - 6);
      v74 = *(v71 - 5);
      v75 = *(v71 - 4);
      v76 = *(v71 - 1);
      v237 = *v71;
      v77 = v71[2];
      v232 = v71[1];
      if (v242)
      {
        v78 = *(v77 + 376);

        v69 = v211;
        os_unfair_lock_lock(v78);
        os_unfair_lock_lock(*(v77 + 344));
      }

      else
      {
      }

      v70 = v72;
      ecs_stack_allocator_push_snapshot(v72);

      sub_1AF630914(v79, v69, v369);

      LOBYTE(v335[0]) = 1;
      v404[0] = v222;
      v404[1] = v77;
      v404[2] = v69;
      v404[3] = v75;
      v404[4] = (v74 - v73 + v75);
      v404[5] = v217;
      v404[6] = v73;
      v404[7] = v74;
      v404[8] = 0;
      v404[9] = 0;
      v405 = 1;
      v406 = v76;
      v407 = v237;
      v408 = v232;

      sub_1AFD12058(v404, v249, v246);
      v280 = v227;
      v281 = v391;
      v282 = v392;
      sub_1AF630994(v69, &v280, v369);
      sub_1AF62D29C(v77);
      ecs_stack_allocator_pop_snapshot(v72);
      if (v242)
      {
        os_unfair_lock_unlock(*(v77 + 344));
        os_unfair_lock_unlock(*(v77 + 376));
      }

      v71 += 6;
      --v68;
    }

    while (v68);
    sub_1AFB3CAC4(v266, sub_1AFB3F900);
    sub_1AF0D9DB0(&v361, &qword_1ED725EA0, &type metadata for QueryResult);
    v12 = v246;

    sub_1AF0D9DB0(&v361, &qword_1ED725EA0, &type metadata for QueryResult);
    v6 = v198;
    v2 = v214;
    v16 = 0;
    LODWORD(v10) = v202;
  }

  else
  {
    sub_1AFB3CAC4(v266, sub_1AFB3F900);
  }

  LOBYTE(v15) = v204;
  if ((v204 & 0x20) == 0)
  {
    goto LABEL_97;
  }

LABEL_81:
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v305 = qword_1ED73B840;
  v306 = 0;
  v307 = 2;
  v308 = 0;
  v309 = 2;
  v310 = 0;
  sub_1AF5C948C(v268);
  sub_1AF5DD4A4(0, &qword_1ED726A10, &qword_1ED72C1D0, &protocol descriptor for ClassComponent, MEMORY[0x1E69E6F90]);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_1AFE431C0;
  *(v80 + 56) = &type metadata for EmitterReference;
  *(v80 + 64) = &off_1F2563D20;
  *(v80 + 32) = v2;
  v81 = (v80 + 32);
  *(v80 + 36) = v10;
  sub_1AF5FDBF0();
  sub_1AFB3CAC4(v268, sub_1AFB3F900);
  swift_setDeallocating();
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v81);
  swift_deallocClassInstance();
  v291[0] = v269[0];
  v291[1] = v269[1];
  v292 = v270;
  sub_1AF6B06C0(v6, v291, 0x200000000, &v370);
  v228 = v370;
  if (v370)
  {
    v82 = v373;
    v83 = v374;
    v223 = v375;
    v212 = v376;
    v389 = v371;
    v390 = v372;
    v218 = v377;
    LOBYTE(v15) = v204;
    if (v377 <= 0 || !v374)
    {
      sub_1AFB3CAC4(v269, sub_1AFB3F900);
      sub_1AF0D9DB0(&v370, &qword_1ED725EA0, &type metadata for QueryResult);
      v2 = v214;
      LODWORD(v10) = v202;
      goto LABEL_97;
    }

    v199 = v6;
    v84 = v376;
    v85 = v376[4];
    v243 = *(v375 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);

    sub_1AF5D15C0(&v370, v335);
    v86 = (v82 + 24);
    do
    {
      v87 = v85;
      v88 = *(v86 - 6);
      v89 = *(v86 - 5);
      v90 = *(v86 - 4);
      v91 = *(v86 - 1);
      v238 = *v86;
      v92 = v86[2];
      v233 = v86[1];
      if (v243)
      {
        v93 = *(v92 + 376);

        v84 = v212;
        os_unfair_lock_lock(v93);
        os_unfair_lock_lock(*(v92 + 344));
      }

      else
      {
      }

      v85 = v87;
      ecs_stack_allocator_push_snapshot(v87);

      sub_1AF630914(v94, v84, v378);

      LOBYTE(v335[0]) = 1;
      v399[0] = v223;
      v399[1] = v92;
      v399[2] = v84;
      v399[3] = v90;
      v399[4] = (v89 - v88 + v90);
      v399[5] = v218;
      v399[6] = v88;
      v399[7] = v89;
      v399[8] = 0;
      v399[9] = 0;
      v400 = 1;
      v401 = v91;
      v402 = v238;
      v403 = v233;

      sub_1AFD12084(v399, v249, v246);
      v283 = v228;
      v284 = v389;
      v285 = v390;
      sub_1AF630994(v84, &v283, v378);
      sub_1AF62D29C(v92);
      ecs_stack_allocator_pop_snapshot(v87);
      if (v243)
      {
        os_unfair_lock_unlock(*(v92 + 344));
        os_unfair_lock_unlock(*(v92 + 376));
      }

      v86 += 6;
      --v83;
    }

    while (v83);
    sub_1AFB3CAC4(v269, sub_1AFB3F900);
    sub_1AF0D9DB0(&v370, &qword_1ED725EA0, &type metadata for QueryResult);
    v12 = v246;

    sub_1AF0D9DB0(&v370, &qword_1ED725EA0, &type metadata for QueryResult);
    v6 = v199;
    v2 = v214;
    v16 = 0;
    LODWORD(v10) = v202;
  }

  else
  {
    sub_1AFB3CAC4(v269, sub_1AFB3F900);
  }

  LOBYTE(v15) = v204;
LABEL_97:
  if ((v15 & 2) == 0)
  {
    goto LABEL_156;
  }

  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v299 = qword_1ED73B840;
  v300 = 0;
  v301 = 2;
  v302 = 0;
  v303 = 2;
  v304 = 0;
  sub_1AF705094(1, v271);
  sub_1AF5DD4A4(0, &qword_1ED726A10, &qword_1ED72C1D0, &protocol descriptor for ClassComponent, MEMORY[0x1E69E6F90]);
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_1AFE431C0;
  *(v95 + 56) = &type metadata for EmitterReference;
  *(v95 + 64) = &off_1F2563D20;
  *(v95 + 32) = v2;
  v96 = (v95 + 32);
  *(v95 + 36) = v10;
  sub_1AF5FDBF0();
  sub_1AFB3F8A4(v271, &qword_1EB641FE8, &type metadata for Position, &off_1F252EE70);
  swift_setDeallocating();
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v96);
  swift_deallocClassInstance();
  v289[0] = v272[0];
  v289[1] = v272[1];
  v290 = v273;
  sub_1AF6B06C0(v6, v289, 0x200000000, v379);
  if (!*v379)
  {
    sub_1AFB3F8A4(v272, &qword_1EB641FE8, &type metadata for Position, &off_1F252EE70);
    goto LABEL_156;
  }

  if (v382 <= 0 || (v213 = *(&v380 + 1)) == 0)
  {
    sub_1AFB3F8A4(v272, &qword_1EB641FE8, &type metadata for Position, &off_1F252EE70);
    sub_1AF0D9DB0(v379, &qword_1ED725EA0, &type metadata for QueryResult);
    goto LABEL_156;
  }

  v200 = v6;
  v208 = *&v379[40];
  v97 = *(&v381 + 1);
  v98 = *(v381 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v99 = *(*(&v381 + 1) + 32);
  v286 = *v379;
  v287 = *&v379[8];
  v288 = *&v379[24];
  v335[2] = *&v379[32];
  v336 = v380;
  v337 = v381;
  v338 = v382;
  v335[0] = *v379;
  v335[1] = *&v379[16];
  sub_1AF5DD298(v335, &v329);
  v100 = 0;
  v205 = v12 + 32;
  v206 = v99;
  v195 = (v12 + 64);
  v203 = v98;
  while (2)
  {
    v101 = *(v208 + 48 * v100 + 40);
    if (v98)
    {
      v102 = *(v101 + 376);

      os_unfair_lock_lock(v102);
      os_unfair_lock_lock(*(v101 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v99);
    v229 = *(v97 + 64);
    v234 = *(v97 + 48);
    v224 = *(v97 + 80);
    v103 = v101;
    v104 = *(*(*(*(v101 + 40) + 16) + 32) + 16) + 1;
    *(v97 + 48) = ecs_stack_allocator_allocate(*(v97 + 32), 48 * v104, 8);
    *(v97 + 56) = v104;
    *(v97 + 72) = 0;
    *(v97 + 80) = 0;
    *(v97 + 64) = 0;
    v251 = *(v103 + 272);
    v219 = *(v103 + 288);
    sub_1AFDFF288();
    v239 = v103;
    MEMORY[0x1B271ACB0](v103);
    v329.i64[0] = sub_1AFDFF2F8();
    sub_1AFDFEA08();
    sub_1AFDFF308();
    sub_1AFDFD038();

    v257[4] = v331;
    v257[5] = v332;
    v258 = v333;
    v257[2] = v329;
    v257[3] = v330;
    v105 = sub_1AFDFF2E8();
    v397[0] = v251;
    v397[1] = v219;
    v397[2] = aBlock;
    v397[3] = v386;
    v397[4] = v387;
    v397[5] = v388;
    v398 = 6;
    ecs_stack_allocator_push_snapshot(*(v249 + 32));
    v106 = *(v12 + 16);
    v107 = 2 * v106;
    v108 = ecs_stack_allocator_allocate(*(v249 + 32), 16 * v106 + 32, 8);
    *v108 = &type metadata for DebugInfoWireframePrimitive;
    v108[1] = &off_1F25604A8;
    v108[2] = &type metadata for DebugInfoColor;
    v108[3] = &off_1F2560488;
    v244 = v100;
    if (v106)
    {
      if (v106 > 3 && ((v108 + 4) >= v205 + v107 * 8 || v201 >= &v108[v107 + 4]))
      {
        v109 = v106 & 0x7FFFFFFFFFFFFFFCLL;
        v110 = v106 & 0x7FFFFFFFFFFFFFFCLL | 2;
        v139 = v108 + 8;
        v140 = v106 & 0x7FFFFFFFFFFFFFFCLL;
        v141 = v195;
        do
        {
          v143 = *(v141 - 2);
          v142 = *(v141 - 1);
          v145 = *v141;
          v144 = v141[1];
          v141 += 4;
          *(v139 - 2) = v143;
          *(v139 - 1) = v142;
          *v139 = v145;
          v139[1] = v144;
          v139 += 4;
          v140 -= 4;
        }

        while (v140);
        if (v106 == v109)
        {
          goto LABEL_117;
        }
      }

      else
      {
        v109 = 0;
        v110 = 2;
      }

      v111 = v106 - v109;
      v112 = (v205 + 16 * v109);
      do
      {
        v113 = *v112++;
        *&v108[2 * v110++] = v113;
        --v111;
      }

      while (v111);
    }

    else
    {
      v110 = 2;
    }

LABEL_117:
    v329.i8[0] = 1;
    sub_1AF63C898(v108, v110, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, v249, v397, v105 | 0xFF000000);
    ecs_stack_allocator_pop_snapshot(*(v249 + 32));
    v114 = *(v97 + 48);
    v115 = *(v97 + 64);
    if (!v115)
    {
      v137 = *(v97 + 56);
      v138 = *(v97 + 32);
      goto LABEL_147;
    }

    v252 = v16;
    for (i = 0; i != v115; ++i)
    {
      v118 = (v114 + 48 * i);
      v119 = *v118;
      v120 = v118[4];
      v121 = *(v97 + 72);
      if (v121)
      {
        v122 = v119 == v121;
      }

      else
      {
        v122 = 0;
      }

      if (v122)
      {
        goto LABEL_119;
      }

      v123 = v286;
      if (!v286[11])
      {
        goto LABEL_119;
      }

      v124 = v118[2];
      v125 = v286 + 41;
      v126 = v286[9];
      if (v126 >= 0x10)
      {
        v127 = &v125[v286[8]];
        v128 = v126 >> 4;
        v129 = v286 + 41;
        while (*v127 != v119)
        {
          ++v129;
          v127 += 16;
          if (!--v128)
          {
            goto LABEL_135;
          }
        }

        v130 = v129[v286[10]];
        v131 = v130 > 5;
        v132 = (1 << v130) & 0x23;
        if (v131 || v132 == 0)
        {
LABEL_119:

          v120(v117);

          continue;
        }
      }

LABEL_135:
      if (swift_conformsToProtocol2() && v124)
      {
        if (sub_1AF5FC8D8(v124))
        {
          goto LABEL_119;
        }

        v134 = v123[9];
        if (v134 < 0x10)
        {
          goto LABEL_119;
        }

        v135 = &v125[v123[8]];
        v136 = 16 * (v134 >> 4);
        while (*v135 != v124)
        {
          v135 += 16;
          v136 -= 16;
          if (!v136)
          {
            goto LABEL_119;
          }
        }
      }
    }

    v137 = *(v97 + 56);
    v114 = *(v97 + 48);
    v138 = *(v97 + 32);
    v2 = v214;
    if (*(v97 + 64) >= 1)
    {
      swift_arrayDestroy();
    }

    v12 = v246;
    v16 = v252;
    v98 = v203;
LABEL_147:
    ecs_stack_allocator_deallocate(v138, v114, 48 * v137);
    *(v97 + 48) = v234;
    *(v97 + 64) = v229;
    *(v97 + 80) = v224;
    sub_1AF62D29C(v239);
    v99 = v206;
    ecs_stack_allocator_pop_snapshot(v206);
    if (v98)
    {
      os_unfair_lock_unlock(*(v239 + 344));
      os_unfair_lock_unlock(*(v239 + 376));
    }

    v100 = v244 + 1;
    if (v244 + 1 != v213)
    {
      continue;
    }

    break;
  }

  sub_1AF0D9DB0(v379, &qword_1ED725EA0, &type metadata for QueryResult);
  sub_1AFB3F8A4(v272, &qword_1EB641FE8, &type metadata for Position, &off_1F252EE70);
  sub_1AF0D9DB0(v379, &qword_1ED725EA0, &type metadata for QueryResult);
  v6 = v200;
LABEL_156:
  sub_1AF3CF3A4(v2, v383);
  v146 = v384;
  if (v384 == 2)
  {
    goto LABEL_172;
  }

  sub_1AF3CB0C0(v2, &v329);
  if (!*(&v332 + 1))
  {
    swift_bridgeObjectRelease_n();
    sub_1AF0D9DB0(&v329, &qword_1ED722AC0, &type metadata for EmitterRuntime);
    return;
  }

  sub_1AF9FA090(&v329, v335);
  if ((v146 & 1) == 0)
  {
    sub_1AF58D38C(v335);
LABEL_172:
    swift_bridgeObjectRelease_n();
    return;
  }

  if (v339 != 1)
  {
    v162 = sub_1AF67DEF4(v2, v6);
    v256 = 0u;
    v257[0] = 0u;
    vfx_uniform_grid_get_aabb(*(v162 + 16), v257, &v256);
    v164 = v256;
    v163 = v257[0];
    v163.i32[3] = 1.0;
    v164.i32[3] = 1.0;
    v165.i64[0] = 0x3F0000003F000000;
    v165.i64[1] = 0x3F0000003F000000;
    v255 = vmulq_f32(vaddq_f32(v163, v164), v165);
    v248 = vmulq_f32(vsubq_f32(v164, v163), v165);
    v166 = sub_1AFB3CAA4(255, 128, 0);
    v329 = v255;
    v330 = v248;
    v334 = 6;
    ecs_stack_allocator_push_snapshot(*(v249 + 32));
    v167 = *(v12 + 16);
    v168 = 2 * v167;
    v169 = ecs_stack_allocator_allocate(*(v249 + 32), 16 * v167 + 32, 8);
    *v169 = &type metadata for DebugInfoWireframePrimitive;
    v169[1] = &off_1F25604A8;
    v169[2] = &type metadata for DebugInfoColor;
    v169[3] = &off_1F2560488;
    if (v167)
    {
      if (v167 > 5 && ((v169 + 4) >= v12 + v168 * 8 + 32 || v201 >= &v169[v168 + 4]))
      {
        v170 = v167 & 0x7FFFFFFFFFFFFFFCLL;
        v171 = v167 & 0x7FFFFFFFFFFFFFFCLL | 2;
        v188 = v169 + 8;
        v189 = (v12 + 64);
        v190 = v167 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v192 = *(v189 - 2);
          v191 = *(v189 - 1);
          v194 = *v189;
          v193 = v189[1];
          v189 += 4;
          *(v188 - 2) = v192;
          *(v188 - 1) = v191;
          *v188 = v194;
          v188[1] = v193;
          v188 += 4;
          v190 -= 4;
        }

        while (v190);
        if (v167 == v170)
        {
          goto LABEL_185;
        }
      }

      else
      {
        v170 = 0;
        v171 = 2;
      }

      v172 = v167 - v170;
      v173 = (v12 + 16 * v170 + 32);
      do
      {
        v174 = *v173++;
        *&v169[2 * v171++] = v174;
        --v172;
      }

      while (v172);
    }

    else
    {
      v171 = 2;
    }

LABEL_185:
    LOBYTE(aBlock) = 1;
    sub_1AF63C898(v169, v171, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, v249, &v329, v166);
    ecs_stack_allocator_pop_snapshot(*(v249 + 32));

    v175 = *(v162 + 16);
    v176 = swift_allocObject();
    *(v176 + 16) = v249;
    *(v176 + 24) = v12;
    v177 = swift_allocObject();
    *(v177 + 16) = sub_1AFB3F85C;
    *(v177 + 24) = v176;
    *&v387 = sub_1AFB3F864;
    *(&v387 + 1) = v177;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v386 = sub_1AFB322C0;
    *(&v386 + 1) = &unk_1F24E6208;
    v178 = _Block_copy(&aBlock);

    vfx_uniform_grid_for_each_cell(v175, v178, v179, v180);
    _Block_release(v178);

    sub_1AF58D38C(v335);
    swift_isEscapingClosureAtFileLocation();

    return;
  }

  v148 = v341;
  v149.i64[0] = 0;
  v149.i32[2] = 0;
  if ((BYTE1(v336) & 1) == 0)
  {
    v253 = v341;
    sub_1AF3C9244(v2, &aBlock);
    v148 = v253;
    v149 = v388;
  }

  *v147.i8 = vshr_n_u32(*v148.i8, 1uLL);
  v150 = vcvt_f32_u32(*v147.i8);
  v147.i32[2] = v148.i32[2] >> 1;
  v151 = vsubq_s32(v148, v147);
  *v151.f32 = vsub_f32(*v149.f32, vmul_n_f32(vcvt_f32_u32(*v151.f32), v340));
  *v149.f32 = vadd_f32(*v149.f32, vmul_n_f32(v150, v340));
  v151.f32[2] = v149.f32[2] - (v340 * v151.u32[2]);
  v151.i32[3] = 1.0;
  v149.f32[2] = v149.f32[2] + (v340 * (v148.i32[2] >> 1));
  v149.i32[3] = 1.0;
  v152.i64[0] = 0x3F0000003F000000;
  v152.i64[1] = 0x3F0000003F000000;
  v254 = vmulq_f32(vaddq_f32(v149, v151), v152);
  v247 = vmulq_f32(vsubq_f32(v149, v151), v152);
  v153 = sub_1AFB3CAA4(255, 255, 255);
  v329 = v254;
  v330 = v247;
  v334 = 6;
  ecs_stack_allocator_push_snapshot(*(v249 + 32));
  v154 = *(v12 + 16);
  v155 = 2 * v154;
  v156 = ecs_stack_allocator_allocate(*(v249 + 32), 16 * v154 + 32, 8);
  *v156 = &type metadata for DebugInfoWireframePrimitive;
  v156[1] = &off_1F25604A8;
  v156[2] = &type metadata for DebugInfoColor;
  v156[3] = &off_1F2560488;
  if (v154)
  {
    if (v154 <= 5 || (v156 + 4) < v12 + v155 * 8 + 32 && v201 < &v156[v155 + 4])
    {
      v157 = 0;
      v158 = 2;
      goto LABEL_167;
    }

    v157 = v154 & 0x7FFFFFFFFFFFFFFCLL;
    v158 = v154 & 0x7FFFFFFFFFFFFFFCLL | 2;
    v181 = v156 + 8;
    v182 = (v12 + 64);
    v183 = v154 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v185 = *(v182 - 2);
      v184 = *(v182 - 1);
      v187 = *v182;
      v186 = v182[1];
      v182 += 4;
      *(v181 - 2) = v185;
      *(v181 - 1) = v184;
      *v181 = v187;
      v181[1] = v186;
      v181 += 4;
      v183 -= 4;
    }

    while (v183);
    if (v154 != v157)
    {
LABEL_167:
      v159 = v154 - v157;
      v160 = (v12 + 16 * v157 + 32);
      do
      {
        v161 = *v160++;
        *&v156[2 * v158++] = v161;
        --v159;
      }

      while (v159);
    }
  }

  else
  {
    v158 = 2;
  }

  LOBYTE(v257[0]) = 1;
  sub_1AF63C898(v156, v158, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, v249, &v329, v153);
  ecs_stack_allocator_pop_snapshot(*(v249 + 32));

  sub_1AF58D38C(v335);
}

double sub_1AFB3F88C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1AFB3F8A4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_1AF5DD590(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1AFB3F900()
{
  if (!qword_1EB642A10)
  {
    v4[4] = v0;
    v4[5] = v1;
    v4[0] = &type metadata for Position;
    v4[1] = &type metadata for Orientation;
    v4[2] = &off_1F252EE70;
    v4[3] = &off_1F252C8A8;
    v2 = type metadata accessor for Query2(0, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EB642A10);
    }
  }
}

void sub_1AFB3F97C()
{
  if (!qword_1EB642A28)
  {
    v4[4] = v0;
    v4[5] = v1;
    v4[0] = &type metadata for ForceField;
    v4[1] = &type metadata for WorldTransform;
    v4[2] = &off_1F2560F10;
    v4[3] = &off_1F2529FC0;
    v2 = type metadata accessor for Query2(0, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EB642A28);
    }
  }
}

void sub_1AFB3F9F8()
{
  if (!qword_1EB642A30)
  {
    v4[4] = v0;
    v4[5] = v1;
    v4[0] = &type metadata for Skeleton;
    v4[1] = &type metadata for WorldTransform;
    v4[2] = &off_1F25436A8;
    v4[3] = &off_1F2529FC0;
    v2 = type metadata accessor for Query2(0, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EB642A30);
    }
  }
}

void sub_1AFB3FA74()
{
  if (!qword_1EB642A38)
  {
    v4[4] = v0;
    v4[5] = v1;
    v4[0] = &type metadata for EmitterShape;
    v4[1] = &type metadata for WorldTransform;
    v4[2] = &off_1F254C2E8;
    v4[3] = &off_1F2529FC0;
    v2 = type metadata accessor for Query2(0, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EB642A38);
    }
  }
}

void sub_1AFB3FAF0()
{
  if (!qword_1EB642A40)
  {
    v4[4] = v0;
    v4[5] = v1;
    v4[0] = &type metadata for KillShape;
    v4[1] = &type metadata for WorldTransform;
    v4[2] = &off_1F2561EB0;
    v4[3] = &off_1F2529FC0;
    v2 = type metadata accessor for Query2(0, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EB642A40);
    }
  }
}

_DWORD *initializeBufferWithCopyOfBuffer for DebugDrawingState(_DWORD *result, int *a2)
{
  v2 = *a2;
  *(result + 3) = *(a2 + 3);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DebugDrawingState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[7])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for DebugDrawingState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 6) = 0;
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 7) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 7) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t *assignWithCopy for DebugDrawSystemState(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 5) = *(a2 + 5);
  return a1;
}

uint64_t *assignWithTake for DebugDrawSystemState(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  swift_unknownObjectRelease();
  *(a1 + 1) = *(a2 + 1);
  return a1;
}

uint64_t initializeBufferWithCopyOfBuffer for DebugCullingSystemState(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DebugCullingSystemState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for DebugCullingSystemState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DebugInfoState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_1AFB3FEC8()
{
  result = qword_1EB642A60;
  if (!qword_1EB642A60)
  {
    result = swift_getWitnessTable(byte_1AFE9B1C4, &type metadata for DebugInfoA.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642A60);
  }

  return result;
}

void sub_1AFB3FF1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_1AFDFE9A8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1AFB3FF7C()
{
  result = qword_1EB642A70;
  if (!qword_1EB642A70)
  {
    result = swift_getWitnessTable(aE_4, &type metadata for DebugInfoB.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642A70);
  }

  return result;
}

uint64_t sub_1AFB3FFF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF4 && *(a1 + 97))
  {
    return (*a1 + 244);
  }

  v3 = *(a1 + 96);
  if (v3 <= 0xC)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1AFB40038(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF3)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 244;
    if (a3 >= 0xF4)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF4)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 96) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AFB40098(uint64_t a1)
{
  if (*(a1 + 96) <= 0xBu)
  {
    return *(a1 + 96);
  }

  else
  {
    return (*a1 + 12);
  }
}

uint64_t sub_1AFB400B0(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xC)
  {
    *result = a2 - 12;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    LOBYTE(a2) = 12;
    *(result + 88) = 0;
  }

  *(result + 96) = a2;
  return result;
}

unint64_t sub_1AFB400F8()
{
  result = qword_1EB642A78;
  if (!qword_1EB642A78)
  {
    result = swift_getWitnessTable(byte_1AFE9B124, &type metadata for DebugInfoB.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642A78);
  }

  return result;
}

unint64_t sub_1AFB40150()
{
  result = qword_1EB642A80;
  if (!qword_1EB642A80)
  {
    result = swift_getWitnessTable(byte_1AFE9B14C, &type metadata for DebugInfoB.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642A80);
  }

  return result;
}

unint64_t sub_1AFB401A8()
{
  result = qword_1EB642A88;
  if (!qword_1EB642A88)
  {
    result = swift_getWitnessTable(byte_1AFE9B0D4, &type metadata for DebugInfoA.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642A88);
  }

  return result;
}

unint64_t sub_1AFB40200()
{
  result = qword_1EB642A90;
  if (!qword_1EB642A90)
  {
    result = swift_getWitnessTable(a5_0, &type metadata for DebugInfoA.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642A90);
  }

  return result;
}

unint64_t sub_1AFB40268()
{
  result = qword_1EB642A98;
  if (!qword_1EB642A98)
  {
    result = swift_getWitnessTable(byte_1AFE9B260, &type metadata for ArrowHead, v0, v1);
    atomic_store(result, &qword_1EB642A98);
  }

  return result;
}

void sub_1AFB40308(uint64_t a1, uint64_t a2)
{
  if (!a2 || (*(a2 + 392) & 1) != 0)
  {
    return;
  }

  v3 = *(a2 + 200);
  if (*(v3 + 24) == 2)
  {
    goto LABEL_31;
  }

  v4 = *(v3 + 32);
  sub_1AFB4168C(0, &unk_1EB6327C8, sub_1AFB415F4, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  sub_1AF0D879C(v123, 17);
  v6 = v123[0];

  v7 = sub_1AF750DEC(v6, *(&v6 + 1), 0, 0, 0, 1, 1);
  sub_1AF0D8F38(v123);

  v85 = v7;
  v5[4] = v7;
  v5[5] = 0;
  sub_1AF0D879C(v124, 14);
  v8 = v124[0];

  v9 = sub_1AF750DEC(v8, *(&v8 + 1), 0, 0, 0, 1, 1);
  sub_1AF0D8F38(v124);

  v84 = v9;
  v5[6] = v9;
  v5[7] = 3;
  sub_1AF0D879C(v125, 15);
  v10 = v125[0];

  v11 = sub_1AF750DEC(v10, *(&v10 + 1), 0, 0, 0, 1, 1);
  sub_1AF0D8F38(v125);

  v82 = v11;
  v5[8] = v11;
  v5[9] = 1;
  sub_1AF0D879C(v126, 16);
  v12 = v126[0];

  v13 = sub_1AF750DEC(v12, *(&v12 + 1), 0, 0, 0, 1, 1);
  sub_1AF0D8F38(v126);

  v5[10] = v13;
  v5[11] = 2;
  if (!v5[4] || !v5[6] || !v5[8] || !v13)
  {
    goto LABEL_19;
  }

  v80 = v4;
  sub_1AF0D879C(&v127, 0);
  v14 = v127;

  v15 = sub_1AF750DEC(v14, *(&v14 + 1), 0, 0, 0, 1, 1);

  v81 = v13;
  if (v15)
  {
    sub_1AF0D8F38(&v127);
    goto LABEL_16;
  }

  v16 = v132;
  v17 = 32;
  if (!v132)
  {
    v17 = 1;
  }

  if (v133)
  {
    v16 = v17;
  }

  v185 = v130;
  v186 = v131;
  v187 = v130;
  v188 = v131;
  v189 = v128;
  v190 = v16;
  v191 = v129;
  v192 = 0u;
  v193 = 0u;
  v18 = *(v3 + 16);
  v19 = v18[38];
  *&__dst[80] = v18[39];
  *&__dst[64] = v19;
  v20 = v18[36];
  *&__dst[48] = v18[37];
  *&__dst[32] = v20;
  v21 = v18[41];
  *&__dst[128] = v18[42];
  v22 = v18[40];
  *&__dst[112] = v21;
  *&__dst[96] = v22;
  v23 = v18[35];
  *__dst = v18[34];
  *&__dst[16] = v23;
  *&__dst[137] = *(v18 + 681);

  if (sub_1AF448314(__dst) == 1)
  {
LABEL_31:
    while (1)
    {
      sub_1AFDFE518();
      __break(1u);
    }
  }

  v24 = *&__dst[8];
  ObjectType = swift_getObjectType();
  v26 = *(v24 + 80);
  swift_unknownObjectRetain();
  v27 = v26(ObjectType, v24);
  v29 = v28;

  swift_unknownObjectRelease();
  v30 = sub_1AFBE973C(0, 2, v27, v29);
  v32 = v31;
  v34 = v33;

  v15 = sub_1AF750DEC(v14, *(&v14 + 1), v30, v32, v34, 0, 1);
  sub_1AF0D8F38(&v127);

  if (!v15)
  {
LABEL_19:

    swift_setDeallocating();
    sub_1AFB415F4(0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    return;
  }

LABEL_16:
  sub_1AF0D879C(v134, 1);
  v35 = v134[0];

  v36 = sub_1AF750DEC(v35, *(&v35 + 1), 0, 0, 0, 1, 1);
  sub_1AF0D8F38(v134);

  if (!v36)
  {
    swift_unknownObjectRelease();
    goto LABEL_19;
  }

  v37 = objc_allocWithZone(MEMORY[0x1E6974128]);
  swift_unknownObjectRetain();
  v38 = [v37 init];
  v39 = [v38 colorAttachments];
  v40 = [v39 objectAtIndexedSubscript_];

  [v40 setTexture_];
  [v40 setLoadAction_];
  [v40 setStoreAction_];
  [v40 setClearColor_];
  [v40 setLevel_];
  swift_unknownObjectRelease();

  v41 = [v38 depthAttachment];
  swift_unknownObjectRetain();
  [v41 setTexture_];
  [v41 setLoadAction_];
  [v41 setStoreAction_];
  [v41 setClearDepth_];
  [v41 setLevel_];

  sub_1AF474EC4();
  sub_1AFDFE238();

  sub_1AF7180FC();

  v42 = sub_1AF6F3D60(v38, 0, 0);
  sub_1AF709E8C(v42);

  swift_getObjectType();
  [v42 setFragmentTexture:v85 atIndex:0];
  [v42 &selRef:v84 setFogDensityExponent:3 + 1];
  [v42 &selRef:v82 setFogDensityExponent:1 + 1];
  swift_setDeallocating();
  sub_1AFB415F4(0);
  swift_unknownObjectRetain();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  [v42 setFragmentTexture:v81 atIndex:2];
  swift_unknownObjectRelease();
  sub_1AF6F3428(v36, 9);
  swift_unknownObjectRelease();
  sub_1AFB19490(a1, a2);

  sub_1AF5FCB40(v121);

  if (v121[0] == 1)
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  else
  {
    v43 = v38;
    v44 = v122;
    sub_1AF88DCAC();
    v45 = swift_allocObject();
    v108 = 0;
    *(v45 + 16) = xmmword_1AFE4C6A0;
    *(v45 + 32) = xmmword_1AFE9B2C0;
    *(v45 + 48) = 0;
    v79 = v44 & 1;
    *(v45 + 64) = v44 & 1;
    *(v45 + 128) = 13;
    v113 = 0;
    *(v45 + 144) = xmmword_1AFE9B2D0;
    *(v45 + 160) = 0;
    *(v45 + 176) = 0;
    *(v45 + 240) = 13;
    v46 = *(a2 + 456);
    v114 = 0;
    *(v45 + 256) = xmmword_1AFE9B2E0;
    *(v45 + 272) = 0;
    *(v45 + 288) = v46;
    *(v45 + 352) = 13;
    v115 = 0;
    *(v45 + 368) = xmmword_1AFE9B2F0;
    *(v45 + 384) = 0;
    *(v45 + 400) = (v80 & 0x10000) == 0;
    *(v45 + 464) = 13;
    v120 = 0;
    *(v45 + 480) = xmmword_1AFE9B300;
    *(v45 + 496) = 0;
    *(v45 + 512) = 0;
    *(v45 + 576) = 14;
    sub_1AF8989FC(0xD00000000000001BLL, 0x80000001AFF48940, 0xD000000000000017, 0x80000001AFF48960, v45, v135);

    v78 = OBJC_IVAR____TtC3VFX13EntityManager_isInPrepare;
    v83 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
    sub_1AF6021F8(v135, __dst);
    v86 = v43;
    sub_1AF474680(&v136);
    *&__src[64] = v135[8];
    *&__src[72] = v135[9];
    *&__src[32] = v135[4];
    *&__src[40] = v135[5];
    *&__src[48] = v135[6];
    *&__src[56] = v135[7];
    *__src = v135[0];
    *&__src[8] = v135[1];
    *&__src[16] = v135[2];
    *&__src[24] = v135[3];
    *&__src[112] = v139;
    *&__src[120] = v140;
    *&__src[128] = v141;
    *&__src[80] = v135[10];
    *&__src[88] = v136;
    *&__src[96] = v137;
    *&__src[104] = v138;
    sub_1AF5FF2F0(&v99);
    v101 = xmmword_1AFE68E40;
    v102 = xmmword_1AFE68E40;
    v99 = xmmword_1AFE68E40;
    v100 = xmmword_1AFE68E40;
    *&__src[132] = xmmword_1AFE68E40;
    *&__src[140] = xmmword_1AFE68E40;
    *&__src[148] = xmmword_1AFE68E40;
    *&__src[156] = xmmword_1AFE68E40;
    sub_1AFDFF308();
    sub_1AF6021F8(v135, __dst);
    sub_1AF89747C(v98);
    sub_1AF602254(v135);
    v47 = *(&v136 + 1);
    v48 = v137;
    v49 = v138;
    v50 = v139;
    MEMORY[0x1B271ACB0](v136);
    MEMORY[0x1B271ACB0](v47);
    MEMORY[0x1B271ACB0](v48);
    MEMORY[0x1B271ACB0](*(&v48 + 1));
    MEMORY[0x1B271ACB0](v49);
    MEMORY[0x1B271ACB0](*(&v49 + 1));
    MEMORY[0x1B271ACB0](v50);
    MEMORY[0x1B271ACB0](*(&v50 + 1));
    MEMORY[0x1B271ACB0](v140);
    MEMORY[0x1B271ACB0](*(&v140 + 1));
    sub_1AFDFF2A8();
    v181 = v99;
    v182 = v100;
    v183 = v101;
    v184 = v102;
    sub_1AF5FF304();
    sub_1AFDFF2A8();
    sub_1AFDFF2A8();
    MEMORY[0x1B271ACB0](3);
    sub_1AFDFF2A8();
    sub_1AFDFF2A8();
    v51 = sub_1AFDFF2E8();
    memcpy(__dst, __src, sizeof(__dst));
    v169 = 0;
    v168 = 0;
    v170 = 3;
    v171 = 0;
    v172 = 0;
    v173 = 2;
    v176 = 0;
    v174 = 0;
    v175 = 0;
    v177 = 257;
    v178 = v103;
    v179 = v104;
    v180 = v51;

    v52 = sub_1AF730058(__dst);
    v54 = v53;
    v56 = v55;
    v57 = v55;

    if (v57)
    {
      sub_1AF6022A8(v52, v54, v56);
      sub_1AF602304(__dst);

      sub_1AF602254(v135);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }

    else
    {
      v58 = swift_unknownObjectRetain();
      sub_1AF6022A8(v58, v54, 0);
      if (*(a1 + v78) == 1)
      {
        v59 = swift_allocObject();
        *(v59 + 16) = xmmword_1AFE4C6A0;
        *(v59 + 32) = xmmword_1AFE9B2C0;
        *(v59 + 48) = v108;
        *(v59 + 49) = *v107;
        *(v59 + 56) = *&v107[7];
        *(v59 + 64) = v79;
        v60 = *&__src[177];
        *(v59 + 65) = *&__src[169];
        *(v59 + 81) = v60;
        *(v59 + 97) = *v106;
        *(v59 + 112) = *&v106[15];
        *(v59 + 128) = 13;
        *(v59 + 144) = xmmword_1AFE9B2D0;
        *(v59 + 160) = v113;
        *(v59 + 161) = *v112;
        *(v59 + 168) = *&v112[7];
        *(v59 + 176) = 0;
        v61 = v110;
        *(v59 + 177) = v109;
        *(v59 + 193) = v61;
        *(v59 + 209) = *v111;
        *(v59 + 224) = *&v111[15];
        *(v59 + 240) = 13;
        v62 = *(a2 + 456);
        v96 = 0;
        *(v59 + 256) = xmmword_1AFE9B2E0;
        *(v59 + 272) = 0;
        *(v59 + 288) = v62;
        *(v59 + 352) = 13;
        v97 = 0;
        *(v59 + 368) = xmmword_1AFE9B2F0;
        *(v59 + 384) = 0;
        *(v59 + 400) = BYTE2(v80) & 1;
        *(v59 + 464) = 13;
        *(v59 + 480) = xmmword_1AFE9B300;
        *(v59 + 496) = 0;
        *(v59 + 504) = *&v119[7];
        *(v59 + 497) = *v119;
        *(v59 + 512) = 0;
        v63 = v116;
        v64 = v117;
        v65 = *v118;
        *(v59 + 560) = *&v118[12];
        *(v59 + 532) = v64;
        *(v59 + 548) = v65;
        *(v59 + 516) = v63;
        *(v59 + 576) = 14;
        sub_1AF8989FC(0xD00000000000001BLL, 0x80000001AFF48940, 0xD000000000000017, 0x80000001AFF48960, v59, v142);

        sub_1AF6021F8(v142, v149);
        sub_1AF474680(&v143);
        v95[7] = v142[7];
        v95[8] = v142[8];
        v95[9] = v142[9];
        v95[10] = v142[10];
        v95[3] = v142[3];
        v95[4] = v142[4];
        v95[5] = v142[5];
        v95[6] = v142[6];
        v95[0] = v142[0];
        v95[1] = v142[1];
        v95[2] = v142[2];
        v95[13] = v145;
        v95[14] = v146;
        v95[15] = v147;
        v95[11] = v143;
        *&v95[16] = v148;
        v95[12] = v144;
        sub_1AF5FF2F0(&v89);
        v91 = xmmword_1AFE68E40;
        v92 = xmmword_1AFE68E40;
        v89 = xmmword_1AFE68E40;
        v90 = xmmword_1AFE68E40;
        *(&v95[16] + 8) = xmmword_1AFE68E40;
        *(&v95[17] + 8) = xmmword_1AFE68E40;
        *(&v95[18] + 8) = xmmword_1AFE68E40;
        *(&v95[19] + 8) = xmmword_1AFE68E40;
        sub_1AFDFF308();
        sub_1AF6021F8(v142, v149);
        sub_1AF89747C(v88);
        sub_1AF602254(v142);
        v66 = *(&v143 + 1);
        v67 = v144;
        v68 = v145;
        v69 = v146;
        MEMORY[0x1B271ACB0](v143);
        MEMORY[0x1B271ACB0](v66);
        MEMORY[0x1B271ACB0](v67);
        MEMORY[0x1B271ACB0](*(&v67 + 1));
        MEMORY[0x1B271ACB0](v68);
        MEMORY[0x1B271ACB0](*(&v68 + 1));
        MEMORY[0x1B271ACB0](v69);
        MEMORY[0x1B271ACB0](*(&v69 + 1));
        MEMORY[0x1B271ACB0](v147);
        MEMORY[0x1B271ACB0](*(&v147 + 1));
        sub_1AFDFF2A8();
        v163 = v89;
        v164 = v90;
        v165 = v91;
        v166 = v92;
        sub_1AF5FF304();
        sub_1AFDFF2A8();
        sub_1AFDFF2A8();
        MEMORY[0x1B271ACB0](3);
        sub_1AFDFF2A8();
        sub_1AFDFF2A8();
        v70 = sub_1AFDFF2E8();
        memcpy(v149, v95, sizeof(v149));
        v151 = 0;
        v150 = 0;
        v152 = 3;
        v153 = 0;
        v154 = 0;
        v155 = 2;
        v158 = 0;
        v156 = 0;
        v157 = 0;
        v159 = 257;
        v160 = v93;
        v161 = v94;
        v162 = v70;

        v71 = sub_1AF730058(v149);
        v73 = v72;
        v75 = v74;
        v76 = v74;
        sub_1AF602304(v149);
        sub_1AF602304(__dst);

        swift_unknownObjectRelease();

        swift_unknownObjectRelease();

        sub_1AF602254(v142);
        sub_1AF602254(v135);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v76)
        {
          v77 = v75;
        }

        else
        {
          v77 = 0;
        }

        sub_1AF6022A8(v71, v73, v77);
      }

      else
      {
        [v42 setDepthStencilState_];
        [v42 setRenderPipelineState_];
        sub_1AF6F5B7C(1);
        swift_unknownObjectRelease();
        sub_1AF602304(__dst);

        sub_1AF602254(v135);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_1AFB415F4(uint64_t a1)
{
  if (!qword_1EB632A60)
  {
    sub_1AFB4168C(255, &qword_1EB632A70, sub_1AF6B7338, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB632A60);
    }
  }
}

void sub_1AFB4168C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

double sub_1AFB416F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double result, uint64_t a6, void *a7, uint64_t *a8, void *a9)
{
  if (a3)
  {
    v15 = a3;
    v16 = a4;
  }

  else
  {
    v30 = *(a1 + 232);
    if (!*(v30 + 16))
    {
      return result;
    }

    v31 = *a2 & 0xE7FF5C45;
    *&v83[4] = *(a2 + 8);
    *&v83[20] = *(a2 + 24);
    *&v83[84] = *(a2 + 88);
    *&v83[68] = *(a2 + 72);
    *&v83[52] = *(a2 + 56);
    *&v83[36] = *(a2 + 40);
    v85 = v31;
    v87 = *&v83[16];
    v86 = *v83;
    *&v90[12] = *&v83[76];
    *v90 = *&v83[64];
    v89 = *&v83[48];
    v88 = *&v83[32];
    v32 = sub_1AF419A14(&v85);
    if ((v33 & 1) == 0)
    {
      return result;
    }

    v34 = (*(v30 + 56) + 24 * v32);
    v15 = *v34;
    v16 = v34[1];
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
  }

  ObjectType = swift_getObjectType();
  [a7 setRenderPipelineState_];
  [a7 setDepthStencilState_];
  if (*(a1 + 152))
  {
    v18 = *(a1 + 120) == 0;
  }

  else
  {
    v18 = *(a1 + 120);
  }

  [a7 setFrontFacingWinding_];
  [a7 setCullMode_];
  [a7 setTriangleFillMode_];
  if ((*(a8[1] + 24) & 8) != 0)
  {
    [a7 setDepthClipMode_];
  }

  [a7 setStencilFrontReferenceValue:*(a1 + 112) backReferenceValue:*(a1 + 116)];
  v19 = *(a1 + 320);
  *&v83[64] = *(a1 + 304);
  *&v83[80] = v19;
  v84 = *(a1 + 336);
  v20 = *(a1 + 256);
  *v83 = *(a1 + 240);
  *&v83[16] = v20;
  v21 = *(a1 + 288);
  if (*(a1 + 208) <= 0)
  {
    v22 = 3;
  }

  else
  {
    v22 = 26;
  }

  *&v83[32] = *(a1 + 272);
  *&v83[48] = v21;
  sub_1AF5FD904(v83, &v81);
  sub_1AFB488A0(v83, a7, a8, v22);
  sub_1AF5FD960(v83);
  v23 = *(a1 + 160);
  v24 = &qword_1EB63E000;
  if (v23)
  {
    v25 = *(a1 + 168);
    swift_unknownObjectRetain();
    [a7 setTessellationFactorBuffer:v23 offset:v25 instanceStride:0];
    swift_unknownObjectRelease();
    v27 = *(a1 + 80);
    v26 = *(a1 + 88);
    v28 = *(a1 + 32);
    if (v28)
    {
      v29 = *(a1 + 40);
      swift_unknownObjectRetain();
    }

    else
    {
      v29 = 0;
    }

    [a7 drawPatches:0 patchStart:v26 patchCount:v27 patchIndexBuffer:v28 patchIndexBufferOffset:v29 instanceCount:*(a1 + 96) baseInstance:*(a1 + 104)];
    goto LABEL_41;
  }

  v35 = *(a1 + 352);
  if (v35)
  {
    v36 = *(a1 + 360);
    v37 = *(a1 + 208);
    v38 = v37;
    if (v37 < 1)
    {
      v56 = *(a1 + 32);
      if (v56)
      {
        v57 = *(a1 + 40);
        v58 = *(a1 + 16);
        v59 = *(a1 + 48);
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v60 = v58;
        v24 = &qword_1EB63E000;
        [a7 drawIndexedPrimitives:v60 indexType:v59 indexBuffer:v56 indexBufferOffset:v57 indirectBuffer:v35 indirectBufferOffset:v36];
        swift_unknownObjectRelease();
      }

      else
      {
        v69 = *(a1 + 16);
        swift_unknownObjectRetain();
        [a7 drawPrimitives:v69 indirectBuffer:v35 indirectBufferOffset:v36];
      }
    }

    else
    {
      v74 = *(a1 + 208);
      v39 = *(a1 + 192);
      v40 = v39;
      v41 = SDWORD1(v39);
      v42 = SDWORD2(v39);
      swift_unknownObjectRetain();
      v43 = v42;
      v24 = &qword_1EB63E000;
      sub_1AF4674F0(v40, v41, v43, &v81);
      v73 = v81;
      v44 = v82;
      sub_1AF4674F0(v38, SDWORD1(v74), SDWORD2(v74), &v81);
      v45 = v82;
      v46 = v81;
      v81 = v73;
      v82 = v44;
      v79 = v46;
      v80 = v45;
      [a7 drawMeshThreadgroupsWithIndirectBuffer:v35 indirectBufferOffset:v36 threadsPerObjectThreadgroup:&v81 threadsPerMeshThreadgroup:&v79];
    }

LABEL_41:
    swift_unknownObjectRelease();
    goto LABEL_42;
  }

  v47 = *(a1 + 208);
  if (v47.i32[0] < 1)
  {
    if ((*(a2 + 1) & 0x20) != 0)
    {
      v61 = *(a1 + 64);
      if (v61)
      {
        v62 = *(a1 + 72);
        v63 = *(a1 + 48);
        v64 = 1;
        if (v63)
        {
          v64 = 2;
        }

        v65 = HIDWORD(v62) >> v64;
LABEL_33:
        sub_1AF6F5C4C(*(a1 + 16), v65, v63, v61, v62, *(a1 + 96), *(a1 + 88), *(a1 + 104));
        v66 = qword_1EB63E310;
        if (qword_1EB63E310 < 0x2540BE40ALL || !a9)
        {
          goto LABEL_43;
        }

        swift_getObjectType();
        v67 = *(a1 + 96) * *(a1 + 56);
        swift_unknownObjectRetain();
        [a9 setStatsVertexCount_];
        v68 = *(a1 + 16);
        if (v68 <= 1)
        {
          if (!v68)
          {
            goto LABEL_61;
          }

          if (v68 == 1)
          {
            v65 /= 2;
            goto LABEL_61;
          }
        }

        else
        {
          switch(v68)
          {
            case 2:
              --v65;
              goto LABEL_61;
            case 3:
              v65 /= 3;
              goto LABEL_61;
            case 4:
              v65 -= 2;
LABEL_61:
              [a9 setStatsPrimitiveCount_];
              swift_unknownObjectRelease();
              goto LABEL_42;
          }
        }

        v65 = 0;
        goto LABEL_61;
      }
    }

    v61 = *(a1 + 32);
    if (v61)
    {
      v63 = *(a1 + 48);
      v65 = *(a1 + 56);
      v62 = *(a1 + 40);
      goto LABEL_33;
    }

    [a7 drawPrimitives:*(a1 + 16) vertexStart:*(a1 + 88) vertexCount:*(a1 + 80) instanceCount:*(a1 + 96) baseInstance:*(a1 + 104)];
    v66 = qword_1EB63E310;
    if (qword_1EB63E310 < 0x2540BE40ALL || !a9)
    {
      goto LABEL_43;
    }

    swift_getObjectType();
    v70 = *(a1 + 96) * *(a1 + 80);
    swift_unknownObjectRetain();
    [a9 setStatsVertexCount_];
    v71 = *(a1 + 16);
    v72 = *(a1 + 80);
    if (v71 <= 1)
    {
      if (!v71)
      {
        goto LABEL_68;
      }

      if (v71 == 1)
      {
        v72 /= 2;
        goto LABEL_68;
      }
    }

    else
    {
      switch(v71)
      {
        case 2:
          --v72;
          goto LABEL_68;
        case 3:
          v72 /= 3;
          goto LABEL_68;
        case 4:
          v72 -= 2;
LABEL_68:
          [a9 setStatsPrimitiveCount_];
          swift_unknownObjectRelease();
          goto LABEL_42;
      }
    }

    v72 = 0;
    goto LABEL_68;
  }

  v48 = sub_1AF4770E0(*(a1 + 176), v47);
  v50 = v49;
  v52 = v51;
  sub_1AF4674F0(*(a1 + 192), HIDWORD(*(a1 + 192)), *(a1 + 200), &v81);
  v75 = v81;
  v53 = v82;
  sub_1AF4674F0(*(a1 + 208), HIDWORD(*(a1 + 208)), *(a1 + 216), &v81);
  v54 = v82;
  v55 = v81;
  *&v81 = v48;
  *(&v81 + 1) = v50;
  v82 = v52;
  v79 = v75;
  v80 = v53;
  v77 = v55;
  v78 = v54;
  [a7 drawMeshThreadgroups:&v81 threadsPerObjectThreadgroup:&v79 threadsPerMeshThreadgroup:&v77];
LABEL_42:
  v66 = v24[98];
LABEL_43:
  if (v66 >= 0x2540BE40ALL)
  {
    if (a9)
    {
      [a9 setStatsDrawcallCount_];
      swift_unknownObjectRelease();
    }
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return result;
}

void *sub_1AFB41EE8(uint64_t a1, __n128 a2)
{
  CFXBufferAllocatorPerFrameAllocateWithLength(v2, 16 * a1);
  v4 = v3;
  v6 = sub_1AF6F2CC8(v3, v5);
  if ((v8 & 1) == 0 && v6 && (v7 - v6 + 15) >= 0x1F)
  {
    v9 = (v7 - v6) / 16;
    do
    {
      *v6++ = a2;
      --v9;
    }

    while (v9);
  }

  return v4;
}

double sub_1AFB41F64(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1 >> 62)
  {
    v7 = sub_1AFDFE108();
    v11 = sub_1AFDFE108();

    if (v11)
    {
      v12 = sub_1AFB48690(a1);

      v8 = (v12 + 4);
    }

    else
    {
      v8 = -8;
    }
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  }

  [v4 useResources:v8 count:v7 usage:a2 stages:a3];

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_1AFB4204C(uint64_t a1)
{
  if (qword_1ED725EC0 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v5 = qword_1ED73B5C0;
  MEMORY[0x1EEE9AC00](a1);
  v2 = *(v1 + 184);

  sub_1AF6D655C(&_s21DrawCallEntityClassesVN, &off_1F2560C08, v2, sub_1AFB49D64);

  return v5;
}

unint64_t sub_1AFB42154(unint64_t result, char a2, char a3, char a4, void *a5, uint64_t a6, _BYTE *a7)
{
  v45 = result;
  if (a7)
  {
    v40 = a7[393];
    if ((v40 & 1) != 0 || (a7[395] & 1) != 0 || a7[396] == 1)
    {
      v11 = a5[11];
      v10 = a5[12];
      v12 = a5[13];
      v13 = a5[2];

      v14 = sub_1AF64B110(&type metadata for VFXDrawCallHandler, &off_1F253A170, v11, v10, v12, v13);
      v15 = sub_1AF64B110(&type metadata for DrawCallComponent, &off_1F2560850, v11, v10, v12, v13);
      if (a7[396])
      {
        v16 = 1065353216;
      }

      else
      {
        v16 = 0;
      }

      v41 = v16;
      v42 = a7[396] ^ 1;
      if ((v42 & 1) == 0 && (a2 & 1) == 0)
      {
        v17 = sub_1AF3C9C7C(v45);
        if ((v17 & 0x100000000) != 0)
        {
          v18 = 1065353216;
        }

        else
        {
          v18 = v17;
        }

        v41 = v18;
        v42 = 0;
      }

      v19 = a5[6];
      v20 = a5[7];
      v21 = v20 - v19;
      if (v20 == v19)
      {
      }

      else
      {
        v22 = HIDWORD(v45);
        if (a2)
        {
          v23 = -1;
        }

        else
        {
          v23 = v45;
        }

        if (a2)
        {
          LODWORD(v22) = 0;
        }

        v38 = v22;
        v39 = v23;
        v24 = &v15[8 * v19];
        v25 = &v14[56 * v19 + 24];
        do
        {
          v36 = *v24;
          v37 = *(*v24 + 338);
          *(v25 + 8) = a3 == 1;
          if (a4)
          {
            v26 = 0x6874706544584656;
            v27 = 0xED00006574697257;
          }

          else
          {
            v26 = *&aOpaque_7[8 * a3];
            v27 = qword_1AFE9BB70[a3];
          }

          *(v25 - 24) = v26;
          *(v25 - 16) = v27;

          *(v25 + 13) = (v37 & 4) != 0;
          *(v25 + 14) = *(v36 + 225);
          *(v25 + 16) = v39;
          *(v25 + 20) = v38;
          v28 = swift_allocObject();
          swift_weakInit();
          v29 = swift_allocObject();
          swift_weakInit();
          v30 = swift_allocObject();
          *(v30 + 16) = v28;
          *(v30 + 24) = v29;
          *(v30 + 32) = v41;
          *(v30 + 36) = v42;
          *(v30 + 37) = a3;
          *(v30 + 38) = v40;
          *(v30 + 40) = v36;
          v31 = *(v25 - 8);
          v32 = *v25;
          *(v25 - 8) = sub_1AFB49AF0;
          *v25 = v30;

          v33 = sub_1AF0FB8EC(v31, v32);
          MEMORY[0x1EEE9AC00](v33);
          v34 = *(a6 + 184);
          MEMORY[0x1EEE9AC00](v35);

          sub_1AF6D2ADC(&type metadata for DrawCallPool, &off_1F25608D0, v34, sub_1AFB49B48);

          v24 += 8;
          v25 += 56;
          --v21;
        }

        while (v21);
      }
    }
  }

  return result;
}

uint64_t sub_1AFB42518(uint64_t a1, uint64_t a2)
{
  swift_getTupleTypeMetadata2();

  return sub_1AFDFD4C8();
}

void sub_1AFB4256C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - v13;
  v16 = *(a1 + *(v15 + 48));
  v22 = *a2;
  v17 = *(v6 - 8);
  (*(v17 + 32))(&v21 - v13, a1, v6, v12);
  *&v14[*(TupleTypeMetadata2 + 48)] = v16;
  (*(v8 + 16))(v10, v14, TupleTypeMetadata2);
  v18 = *&v10[*(TupleTypeMetadata2 + 48)];
  sub_1AFDFD538();
  sub_1AFDFD468();
  v19 = *v3;
  sub_1AFB49794(TupleTypeMetadata2);
  (*(v8 + 8))(v14, TupleTypeMetadata2);
  v20 = v19 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v22;
  (*(v17 + 40))(v20, v10, v6);
  *(v20 + *(TupleTypeMetadata2 + 48)) = v18;
  nullsub_106();
}

void (*sub_1AFB42774(uint64_t *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  swift_getTupleTypeMetadata2();
  sub_1AFDFD538();
  *(v5 + 32) = sub_1AFDFD588();
  return sub_1AF0D9C58;
}

uint64_t sub_1AFB42830(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  sub_1AFD60D3C(a1, &v5, a3, a4);
}

void (*sub_1AFB42870(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = sub_1AFD556C8(v8, a2, a3, a4);
  return sub_1AF62A6F0;
}

uint64_t sub_1AFB42980(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable(byte_1AFE9B760);

  return sub_1AFDFD808();
}

uint64_t sub_1AFB42A08@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AFB42518(*v2, *(a1 + 16));
  *a2 = result;
  return result;
}

uint64_t (*sub_1AFB42A3C(uint64_t *a1, void *a2, uint64_t a3))()
{
  v4 = *(a3 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a1 = TupleTypeMetadata2;
  v6 = *(TupleTypeMetadata2 - 8);
  a1[1] = v6;
  v7 = *(v6 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
    a1[2] = v8;
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
    a1[2] = v8;
    v9 = malloc(v7);
  }

  v10 = v9;
  a1[3] = v9;
  sub_1AFDFD598();
  v11 = *(v10 + *(TupleTypeMetadata2 + 48));
  (*(*(v4 - 8) + 32))(v8, v10, v4);
  *(v8 + *(TupleTypeMetadata2 + 48)) = v11;
  return sub_1AFB42BA8;
}

void sub_1AFB42BA8(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  (*(a1[1] + 8))(v2, *a1);
  free(v1);

  free(v2);
}

uint64_t sub_1AFB42BFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  WitnessTable = swift_getWitnessTable(byte_1AFE9B6F0);

  return sub_1AFD55A94(a1, a2, WitnessTable, a3);
}

uint64_t sub_1AFB42C64(uint64_t a1)
{
  swift_getWitnessTable(byte_1AFE9B760, a1);

  return sub_1AFDFD828();
}

uint64_t sub_1AFB42CD4(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable(byte_1AFE9B760);

  return sub_1AFDFD7F8();
}

uint64_t sub_1AFB42D5C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void))
{
  v8 = *a1;
  WitnessTable = swift_getWitnessTable(byte_1AFE9B760, a2, a3);
  return a4(&v8, a2, WitnessTable, MEMORY[0x1E69E6570]);
}

uint64_t sub_1AFB42DD4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(byte_1AFE9B8E0, a1);

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1AFB42E28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(byte_1AFE9B8E0, a1);
  v4 = sub_1AFD60D38(v1, a1, WitnessTable);

  return v4;
}

uint64_t sub_1AFB42E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10[2] = a2;
  v4 = type metadata accessor for IndexedArray(0, a2, a3, a4);
  WitnessTable = swift_getWitnessTable(byte_1AFE9B8E0, v4);
  v6 = MEMORY[0x1E69E6158];
  v11 = sub_1AF628B24(sub_1AFB49DEC, v10, v4, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v7);
  sub_1AFB49E28(0, &qword_1ED726C70, v6, MEMORY[0x1E69E62F8]);
  sub_1AF488088();
  v8 = sub_1AFDFCD98();

  return v8;
}

uint64_t sub_1AFB42F90@<X0>(void *a3@<X8>)
{
  MEMORY[0x1B2718AE0](91, 0xE100000000000000);
  swift_getTupleTypeMetadata2();
  v4 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v4);

  MEMORY[0x1B2718AE0](540876893, 0xE400000000000000);
  result = sub_1AFDFEDD8();
  *a3 = 0;
  a3[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_1AFB43084(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AFDFF348();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFB49D88(0, &qword_1EB63D800, MEMORY[0x1E69E75C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v15 - v9;
  v15[1] = a1;
  v15[0] = MEMORY[0x1E69E7CC0];
  v11 = sub_1AFDFF328();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  type metadata accessor for IndexedArray(0, a2, v12, v13);
  sub_1AFB49D88(0, &qword_1EB63D808, sub_1AF6F3144, MEMORY[0x1E69E62F8]);
  sub_1AF6F3204();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E75D8], v4);

  return sub_1AFDFF368();
}

uint64_t sub_1AFB432C0(uint64_t a1)
{
  v2 = sub_1AFB4A210();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFB432FC(uint64_t a1)
{
  v2 = sub_1AFB4A210();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFB43338@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  sub_1AFB4A264(0, &qword_1EB642AE8, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AFB4A210();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v10 = sub_1AFDFE798();
  (*(v7 + 8))(v9, v6);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *a2 = v10;
  return result;
}

uint64_t sub_1AFB434C0(void *a1)
{
  sub_1AFB4A264(0, &qword_1EB642AF8, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  sub_1AF441150(a1, a1[3]);
  sub_1AFB4A210();
  sub_1AFDFF3F8();
  sub_1AFDFE948();
  return (*(v4 + 8))(v6, v3);
}

double sub_1AFB43608@<D0>(void *a1@<X8>)
{
  if (qword_1ED723778 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1ED73B3A0;

  return result;
}

uint64_t sub_1AFB43678(uint64_t a1)
{
  v2 = *(v1 + 232);
  if (!*(v2 + 16))
  {
    return 0;
  }

  *&v7[4] = *(a1 + 8);
  *&v7[20] = *(a1 + 24);
  *&v7[84] = *(a1 + 88);
  *&v7[68] = *(a1 + 72);
  *&v7[52] = *(a1 + 56);
  *&v7[36] = *(a1 + 40);
  v8 = *a1 & 0xE7FF5C45;
  v10 = *&v7[16];
  v9 = *v7;
  *&v13[12] = *&v7[76];
  *v13 = *&v7[64];
  v12 = *&v7[48];
  v11 = *&v7[32];
  v3 = sub_1AF419A14(&v8);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(v2 + 56) + 24 * v3);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return v5;
}

uint64_t sub_1AFB43774()
{
  type metadata accessor for DrawCall();
  v0 = swift_allocObject();
  result = sub_1AFB43A28();
  qword_1ED73B3A0 = v0;
  return result;
}

__n128 sub_1AFB437B0(uint64_t a1)
{
  *(v1 + 16) = *(a1 + 16);
  *(v1 + 24) = *(a1 + 24);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = *(a1 + 48);
  *(v1 + 56) = *(a1 + 56);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = *(a1 + 80);
  *(v1 + 88) = *(a1 + 88);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 104) = *(a1 + 104);
  *(v1 + 112) = *(a1 + 112);
  *(v1 + 116) = *(a1 + 116);
  *(v1 + 120) = *(a1 + 120);
  *(v1 + 128) = *(a1 + 128);
  *(v1 + 136) = *(a1 + 136);
  *(v1 + 144) = *(a1 + 144);
  *(v1 + 152) = *(a1 + 152);
  *(v1 + 160) = *(a1 + 160);
  *(v1 + 176) = *(a1 + 176);
  *(v1 + 192) = *(a1 + 192);
  *(v1 + 208) = *(a1 + 208);
  *(v1 + 224) = *(a1 + 224);
  *(v1 + 232) = *(a1 + 232);

  v3 = *(a1 + 320);
  v13[4] = *(a1 + 304);
  v13[5] = v3;
  v13[6] = *(a1 + 336);
  v4 = *(a1 + 256);
  v13[0] = *(a1 + 240);
  v13[1] = v4;
  v5 = *(a1 + 288);
  v13[2] = *(a1 + 272);
  v13[3] = v5;
  v6 = *(v1 + 256);
  v14[0] = *(v1 + 240);
  v14[1] = v6;
  v7 = *(v1 + 272);
  v8 = *(v1 + 288);
  v9 = *(v1 + 336);
  v14[5] = *(v1 + 320);
  v14[6] = v9;
  v10 = *(v1 + 304);
  v14[3] = v8;
  v14[4] = v10;
  v14[2] = v7;
  memmove((v1 + 240), (a1 + 240), 0x70uLL);
  sub_1AF5FD904(v13, &v12);
  sub_1AF5FD960(v14);
  result = *(a1 + 352);
  *(v1 + 352) = result;
  return result;
}

double sub_1AFB43914()
{

  swift_deallocClassInstance();
  return result;
}

uint64_t sub_1AFB43A28()
{
  *(v0 + 16) = 3;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 1;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 232) = sub_1AF42C624(MEMORY[0x1E69E7CC0]);
  *(v0 + 240) = v1;
  *(v0 + 248) = v1;
  *(v0 + 256) = v1;
  *(v0 + 264) = v1;
  *(v0 + 272) = v1;
  *(v0 + 280) = v1;
  *(v0 + 288) = v1;
  *(v0 + 296) = v1;
  *(v0 + 304) = v1;
  *(v0 + 312) = v1;
  *(v0 + 320) = v1;
  *(v0 + 328) = v1;
  *(v0 + 336) = 0;
  *(v0 + 352) = 0;
  *(v0 + 360) = 0;
  *(v0 + 344) = v1;
  *(v0 + 368) = 0xFFFFFFFFLL;
  return v0;
}

id sub_1AFB43AC4(uint64_t a1)
{
  result = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  if (*(v1 + 32) >> 6 > 2u)
  {
    v6 = *v1;
    sub_1AFB4967C(a1 + 40, &v14);
    if (v15)
    {
      sub_1AF0FBA54(&v14, v16);
      if (v5)
      {
        v7 = sub_1AF441150(v16, v16[3]);
        v8 = sub_1AF755FD0(v6, v4, v5, *v7);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v16);
        return v8;
      }

      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v16);
    }

    else
    {
      sub_1AFB4970C(&v14);
    }

    if (v6 > 4u)
    {
      if (v6 == 6 && v5)
      {
        if (v9 = 0x736E6F4373736170, v4 == 0x736E6F4373736170) && v5 == 0xED000073746E6174 || (v9 = sub_1AFDFEE28(), (v9))
        {
          MEMORY[0x1EEE9AC00](v9);
          v11 = *(v10 + 184);

          sub_1AF6D3DD4(&type metadata for FrameConstantsStorage, &off_1F255F3C8, v11, sub_1AFB497DC);
          v13 = v12;

          return v13;
        }
      }
    }

    else if (v6 == 3 && v5)
    {
      if (v4 == 0x6E6F43746867696CLL && v5 == 0xEE0073746E617473 || (sub_1AFDFEE28() & 1) != 0)
      {
        return sub_1AF8956B8();
      }

      if (v4 == 0x74736E6F436C6269 && v5 == 0xEC00000073746E61 || (sub_1AFDFEE28() & 1) != 0)
      {
        return sub_1AF8957F8();
      }
    }

    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

void *sub_1AFB43E18(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v5 = a2;
  if (a5 > 1u)
  {
    if (a5 != 2)
    {
      sub_1AF0D879C(&v31, a2);
      v14 = *(&v31 + 1);
      v13 = v31;

      v5 = sub_1AF750DEC(v13, v14, 0, 0, 0, 1, 1);
      sub_1AF0D8F38(&v31);

      return v5;
    }

    if (HIDWORD(a2) || a2 != -1)
    {
      v6 = *a1;
      v7 = a1[1];

      v8 = sub_1AF8D93C8(v5, &v31, v6, v7);
      if (v8)
      {
        v9 = v8;

        return v9;
      }

      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      *&v31 = 0;
      *(&v31 + 1) = 0xE000000000000000;
      sub_1AFDFE218();

      *&v31 = 0xD000000000000010;
      *(&v31 + 1) = 0x80000001AFF48BD0;
      v18 = sub_1AF3C9078(v5);
      if (v19)
      {
        v20 = v19;
      }

      else
      {
        v24 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v24);

        MEMORY[0x1B2718AE0](93, 0xE100000000000000);
        v18 = 0x5B64656D616E6E55;
        v20 = 0xE800000000000000;
      }

      MEMORY[0x1B2718AE0](v18, v20);

      v25 = v31;
      v26 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v28 = v26;
        swift_once();
        v26 = v28;
      }

      *&v31 = 0;
      sub_1AF0D4F18(v26, &v31, v25, *(&v25 + 1));
    }

    return 0;
  }

  if (!a5)
  {
    swift_unknownObjectRetain();
    return v5;
  }

  sub_1AFB4967C((a1 + 5), &v29);
  if (v30)
  {
    sub_1AF0FBA54(&v29, &v31);
    if (a4)
    {
      v12 = sub_1AF441150(&v31, v32);
      v5 = sub_1AF755E78(v5, a3, a4, *v12);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v31);
      return v5;
    }

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v31);
  }

  else
  {
    sub_1AFB4970C(&v29);
  }

  if (v5 > 2u)
  {
    if (v5 == 4)
    {
      return sub_1AF7181D8();
    }
  }

  else if (v5 == 2 && a4)
  {
    if (a3 == 0x65636E6169646172 && a4 == 0xE800000000000000 || (sub_1AFDFEE28() & 1) != 0)
    {
      v15 = sub_1AF8955C0();
      if (v15)
      {
        v17 = v15;
        v5 = v16;
        swift_unknownObjectRetain();
        sub_1AFB4979C(v17, v5);
        return v5;
      }

      return 0;
    }

    if (a3 == 0x6E61696461727269 && a4 == 0xEA00000000006563 || (sub_1AFDFEE28() & 1) != 0)
    {
      v5 = sub_1AF8955C0();
      if (v5)
      {
        v22 = v21;
        v23 = swift_unknownObjectRetain();
        sub_1AFB4979C(v23, v22);
      }

      return v5;
    }
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

void sub_1AFB442D0(unsigned __int8 *a1, char a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 80);
  if (v6 && a1[32] >= 0xC0u)
  {
    v7 = *(a1 + 1);
    v8 = *(a1 + 2);
    v9 = *a1;
    if (v9 > 4)
    {
      if (*a1 <= 6u && v9 == 6 && v8 && (v7 == 0x736E6F4373736170 && v8 == 0xED000073746E6174 || (sub_1AFDFEE28() & 1) != 0))
      {
        v10 = a3;
        v11 = v6;
        v12 = a2;
        v13 = 6;
        goto LABEL_25;
      }
    }

    else if (*a1 > 2u && v9 == 3 && v8)
    {
      if (v7 == 0x6E6F43746867696CLL && v8 == 0xEE0073746E617473 || (sub_1AFDFEE28() & 1) != 0)
      {
        v10 = a3;
        v11 = v6;
        v12 = a2;
        v13 = 4;
LABEL_25:

        sub_1AF22DB5C(v11, v12, v10, v13);
        return;
      }

      if (v7 == 0x74736E6F436C6269 && v8 == 0xEC00000073746E61 || (sub_1AFDFEE28() & 1) != 0)
      {
        v10 = a3;
        v11 = v6;
        v12 = a2;
        v13 = 5;
        goto LABEL_25;
      }
    }

    sub_1AFDFE518();
    __break(1u);
    return;
  }

  if (sub_1AFB43AC4(a4))
  {
    v15 = v14;
    v16 = swift_unknownObjectRetain();
    sub_1AF476BF4(v16, v15, a3, a2);

    swift_unknownObjectRelease();
  }

  else
  {

    sub_1AF476BF4(0, 0, a3, a2);
  }
}

void sub_1AFB445B8(unint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, char a5, uint64_t a6, uint64_t *a7)
{
  v12 = a7[10];
  if (v12)
  {
    v13 = a4 == 1;
  }

  else
  {
    v13 = 0;
  }

  if (!v13)
  {
    v14 = sub_1AFB43E18(a7, a1, a2, a3, a4);
    if (v14)
    {
      sub_1AF476CE0(v14, a6, a5);

      swift_unknownObjectRelease();
    }

    else
    {

      sub_1AF476CE0(0, a6, a5);
    }

    return;
  }

  if (a1 > 2u)
  {
    if (a1 == 4)
    {
      v17 = a6;
      v18 = a5;
      v19 = 2;
      goto LABEL_21;
    }

LABEL_28:
    sub_1AFDFE518();
    __break(1u);
    return;
  }

  if (a1 != 2 || !a3)
  {
    goto LABEL_28;
  }

  if (a2 != 0x65636E6169646172 || a3 != 0xE800000000000000)
  {
    v15 = a7[10];
    v16 = sub_1AFDFEE28();
    v12 = v15;
    if ((v16 & 1) == 0)
    {
      if (a2 == 0x6E61696461727269 && a3 == 0xEA00000000006563 || (v20 = sub_1AFDFEE28(), v12 = v15, (v20 & 1) != 0))
      {
        v17 = a6;
        v18 = a5;
        v19 = 3;
        goto LABEL_21;
      }

      goto LABEL_28;
    }
  }

  v17 = a6;
  v18 = a5;
  v19 = 4;
LABEL_21:

  sub_1AF22DA94(v12, v18, v17, v19);
}

uint64_t sub_1AFB44848(char a1, char a2, double a3)
{
  v13 = *MEMORY[0x1E69E9840];
  sub_1AFB49D88(0, &qword_1ED72F7D0, sub_1AF47BC54, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE4C620;
  *(inited + 32) = &type metadata for DrawCallComponent;
  *(inited + 40) = &off_1F2560850;
  *(inited + 48) = &type metadata for WorldAABB;
  *(inited + 56) = &off_1F2510410;
  if (a2)
  {
    inited = sub_1AF422C28(1, 3, 1, inited);
    *(inited + 16) = 3;
    *(inited + 64) = &type metadata for VFXDrawCallHandler;
    *(inited + 72) = &off_1F253A170;
  }

  sub_1AF5FD6BC(0, &qword_1ED726A10, &qword_1ED72C1D0, &protocol descriptor for ClassComponent, MEMORY[0x1E69E6F90]);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1AFE431C0;
  *(v6 + 56) = &type metadata for AnonymousEntity;
  *(v6 + 64) = &off_1F2532728;
  v7 = sub_1AF420E70(1, 2, 1, v6);
  v11 = &type metadata for DrawCallLayer;
  v12 = &off_1F2560C28;
  LOBYTE(v10) = a1;
  v7[2] = 2;
  sub_1AF0FBA54(&v10, (v7 + 9));
  v8 = sub_1AF65AF08(inited, v7);

  return v8;
}

uint64_t sub_1AFB44A24(void *a1, uint64_t a2, uint64_t *a3, double a4, uint64_t a5, _BYTE *a6)
{
  v10 = *a1;
  if (*(*a1 + 16) && (v11 = sub_1AF41B320(a2), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
  }

  else
  {
    if ((a6[393] & 1) != 0 || a6[395] == 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = a6[396];
    }

    v13 = sub_1AFB44848(a2, v14, a4);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *a1;
    sub_1AF858DA8(v13, a2, isUniquelyReferenced_nonNull_native);
    *a1 = v17;
  }

  *a3 = v13;
}

uint64_t sub_1AFB44B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a2 + 240);
  v6 = *(a2 + 240);
  v7 = v6[2];
  v8 = *(*(a1 + 32) + 16) + v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v6;
  if (!isUniquelyReferenced_nonNull_native || v8 > v6[3] >> 1)
  {
    if (v7 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v7;
    }

    v6 = sub_1AF4249DC(isUniquelyReferenced_nonNull_native, v10, 0, v6);
  }

  *v5 = v6;
  v11 = *(*(a1 + 32) + 16);
  v31 = *(a1 + 32);

  if (v11)
  {
    v12 = (v31 + 32);
    v13 = 21;
    do
    {
      v16 = v12[1];
      v28 = *v12;
      v29 = v16;
      v30 = *(v12 + 32);
      v17 = *(a3 + 752);
      if (*(v17 + 16) && (v18 = sub_1AF41A8F8(&v28), (v19 & 1) != 0))
      {
        v20 = *(v17 + 56) + 40 * v18;
        v21 = *v20;
        v22 = *(v20 + 8) | (*(v20 + 16) << 32);
        v26[0] = v21;
        v26[1] = v22;
        v14 = v26;
        v15 = &v27;
      }

      else
      {
        v24[0] = v28;
        v24[1] = DWORD2(v28) | (v29 << 32);
        v14 = v24;
        v15 = &v25;
      }

      *v15 = 0;
      v15[1] = 0;
      *(v14 + 32) = 64;
      sub_1AF88BB90(v14, v13, 1);
      v12 = (v12 + 40);
      ++v13;
      --v11;
    }

    while (v11);
  }
}

uint64_t sub_1AFB44C8C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v45 = a3;
  v48 = result;
  if (*result)
  {
    v5 = *(*result + 40);
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = a2;
      v51 = (a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
      v44 = HIDWORD(a3);
      if (HIDWORD(a3))
      {
        v8 = 0;
      }

      else
      {
        v8 = a3 == -1;
      }

      v9 = v8;
      v49 = v9;
      v50 = a3;
      v46 = OBJC_IVAR____TtC3VFX13EntityManager_commandQueues;

      v10 = 32;
      v47 = v5;
      while (1)
      {
        v53 = v10;
        v11 = (v5 + v10);
        v12 = *v11;
        v13 = v11[2];
        v56 = v11[1];
        v57 = v13;
        v55 = v12;
        v14 = v11[3];
        v15 = v11[4];
        v16 = v11[6];
        v60 = v11[5];
        v61 = v16;
        v58 = v14;
        v59 = v15;
        v17 = v11[7];
        v18 = v11[8];
        v19 = v11[10];
        v64 = v11[9];
        v65 = v19;
        v62 = v17;
        v63 = v18;
        if ((v49 & 1) != 0 || (v45 & 0x8000000000000000) != 0 || v45 >= v51[1])
        {
          goto LABEL_13;
        }

        if (*(*v51 + 12 * v50 + 8) == v44)
        {
          v31 = sub_1AF6E52F0(&v55, v54);
          v21 = v45;
          v20 = v44;
          goto LABEL_27;
        }

        if (v44 != 0xFFFFFFFF)
        {
LABEL_13:
          v20 = 0;
          v21 = -1;
          if ((*(&v56 + 1) & 0x8000000000000000) == 0)
          {
            v22 = *(v48 + 8);
            if (*(&v56 + 1) < *(v22 + 16))
            {
              v23 = v22 + 8 * *(&v56 + 1);
              v21 = *(v23 + 32);
              v20 = *(v23 + 36);
            }
          }

          if (v21 == -1 && !v20 || v21 < 0 || v51[1] <= v21 || *(*v51 + 12 * v21 + 8) != v20 && v20 != -1)
          {
            v52 = v6;
            v24 = *(v7 + 184);
            sub_1AF6E52F0(&v55, v54);

            os_unfair_recursive_lock_lock_with_options();
            v25 = sub_1AF6D2A6C(&type metadata for DefaultMaterialInstance);
            if (v26 == 2 || (v26 & 1) == 0)
            {
              os_unfair_recursive_lock_unlock();

              v54[0] = 0xFFFFFFFFLL;
            }

            else
            {
              v28 = v7;
              v29 = (*(v24 + 16) + v25);
              v30 = 32 * v27;
              os_unfair_lock_lock(*(*(v24 + 32) + 32 * v27 + 24));
              os_unfair_recursive_lock_unlock();
              v21 = *v29;
              v20 = v29[1];
              os_unfair_lock_unlock(*(*(v24 + 32) + v30 + 24));

              v54[0] = __PAIR64__(v20, v21);
              v7 = v28;
              if (v21 != -1 || v20)
              {
LABEL_26:
                v6 = v52;
                goto LABEL_27;
              }
            }

            sub_1AF892268();
            v33 = v32;
            type metadata accessor for RenderPipelineFactory();
            swift_allocObject();
            v34 = sub_1AF89DCA8(140);
            *(v34 + 88) = sub_1AF891C5C;
            *(v34 + 96) = 0;

            v35 = *(v7 + v46);
            v36 = *v35;
            v37 = *(*v35 + 32);

            ecs_stack_allocator_push_snapshot(v37);
            v38 = ecs_stack_allocator_allocate(*(v36 + 32), 32, 8);
            *v38 = &type metadata for Material;
            v38[1] = &off_1F253F848;
            v38[2] = &type metadata for Name;
            v38[3] = &off_1F2535068;
            v39 = sub_1AF635354(v38, 2uLL, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, v36, 0, v34, -1.0, 0, 1, 0xD000000000000018, 0x80000001AFF38800);
            if (v4)
            {

              result = ecs_stack_allocator_pop_snapshot(*(v36 + 32));
              __break(1u);
              return result;
            }

            v40 = v39;

            ecs_stack_allocator_pop_snapshot(*(v36 + 32));

            sub_1AF6879B0(v40, v7, v33);

            v54[0] = v40;
            MEMORY[0x1EEE9AC00](v41);
            v42 = *(v7 + 184);

            sub_1AF6D655C(&type metadata for DefaultMaterialInstance, &off_1F253FC80, v42, sub_1AFB2E718);
            v4 = 0;

            v21 = v54[0];
            v20 = HIDWORD(v54[0]);
            v5 = v47;
            goto LABEL_26;
          }

          v31 = sub_1AF6E52F0(&v55, v54);
        }

        else
        {
          v31 = sub_1AF6E52F0(&v55, v54);
          v20 = -1;
          v21 = v45;
        }

LABEL_27:
        MEMORY[0x1EEE9AC00](v31);
        if ((v21 != -1 || v20) && (v21 & 0x80000000) == 0 && v51[1] > v21)
        {
          v43 = (*v51 + 12 * v21);
          if (v20 == -1 || v43[2] == v20)
          {
            sub_1AFA020FC(*(*(v7 + 144) + 8 * *v43 + 32), *(v43 + 2), 240, sub_1AFB49E78);
          }
        }

        sub_1AF6E534C(&v55);
        v10 = v53 + 176;
        if (!--v6)
        {
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AFB45314(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4, uint64_t a5, const void *a6, uint64_t a7, char a8, unint64_t a9, unint64_t a10, unsigned __int8 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, const void *a16, unint64_t a17)
{
  v116 = a6;
  v109 = a5;
  v120.n128_u64[0] = a9;
  if (qword_1ED725EC0 != -1)
  {
    swift_once();
  }

  v118 = a13;
  v115 = a12;
  v121.n128_u64[0] = a10;
  *&v123[0] = qword_1ED73B5C0;
  MEMORY[0x1EEE9AC00](qword_1ED73B5C0);
  v108 = v23;
  LOBYTE(v94) = v23;
  v95 = v123;
  v96 = v24;
  v97 = a3;
  v110 = v24;
  v25 = *(v24 + 184);
  v105 = v26;

  sub_1AF6D655C(&_s21DrawCallEntityClassesVN, &off_1F2560C08, v25, sub_1AFB4A418);

  v119 = *&v123[0];
  v27 = CFXBufferAllocatorPerFrameAllocateWithBytes(*(a3 + 232), a4, 0x40uLL);
  v113 = v28;
  v114 = v27;
  v29 = *(a3 + 232);
  v117 = a4;
  if ((a8 & 1) != 0 || a7 < 1)
  {
    v32 = v29;
    __asm { FMOV            V0.4S, #1.0 }

    v38 = sub_1AFB41EE8(v109, _Q0);
    v111 = v39;
    v112 = v38;
  }

  else
  {
    v30 = CFXBufferAllocatorPerFrameAllocateWithBytes(v29, v116, 0x10uLL);
    v111 = v31;
    v112 = v30;
  }

  v116 = a16;
  v40 = *(v120.n128_u64[0] + 184);

  v41 = sub_1AF6D5AC8(&type metadata for DrawCallPool, &off_1F25608D0, v40);

  v42 = v118;
  if (v121.n128_u64[0])
  {
    swift_retain_n();
    v43 = v115;
    sub_1AFB44B0C(v115, v41, v121.n128_i64[0]);
    v107 = v17;
  }

  else
  {
    v107 = v17;
    v43 = v115;
  }

  v106 = a11;
  sub_1AFB499A4(v118, v41, 0);
  v45 = *(v43 + 16);
  v44 = *(v43 + 24);

  sub_1AFB49A68(a1, v45, v44, v41);

  v101 = *(a1 + 200);
  v41[8].i64[0] = v101;
  v100 = *(a1 + 192);
  v41[7].i64[1] = v100;
  v99 = *(a1 + 208);
  v41[14].i8[0] = v99;
  v98 = *(a1 + 210);
  v41[14].i8[1] = v98;
  v46 = *(a1 + 112);
  v140[4] = *(a1 + 96);
  v140[5] = v46;
  v140[6] = *(a1 + 128);
  v47 = *(a1 + 48);
  v140[0] = *(a1 + 32);
  v140[1] = v47;
  v48 = *(a1 + 80);
  v140[2] = *(a1 + 64);
  v140[3] = v48;
  v49 = sub_1AF894900(v140);
  v50 = HIDWORD(a17) & 1;
  v103 = v50;
  v104 = a17;
  v102 = a15;
  if (v108)
  {
    v41[6].i64[0] = 1;
    MEMORY[0x1EEE9AC00](v49);
    v52 = v88;
    v88[2] = v117;
    v88[3] = v109;
    v88[4] = v42;
    v88[5] = v41;
    v89 = v114;
    v90 = v54;
    v91 = v53;
    *&v92 = 64;
    *(&v92 + 1) = v112;
    *&v93 = __PAIR64__(v55, v56);
    *(&v93 + 1) = 16;
    v94 = v110;
    v57 = v119;
    v95 = v120.n128_u64[0];
    v96 = v121.n128_u64[0];
    LOBYTE(v97) = v106;
    v58 = a17 | (v50 << 32);
    BYTE1(v97) = v59;
    v60 = sub_1AFB49EE0;
  }

  else
  {
    v41[6].i64[0] = a15;
    v138[0] = v114;
    v138[1] = v113;
    v138[2] = 0;
    v138[3] = 0;
    v139 = 64;
    sub_1AF88BB90(v138, 4, 0);
    v136[0] = v112;
    v136[1] = v111;
    v136[3] = 0;
    v136[2] = 0;
    v137 = 64;
    sub_1AF88BB90(v136, 5, 0);
    MEMORY[0x1EEE9AC00](v61);
    v52 = &v89;
    v92 = v63;
    v93 = v62;
    v57 = v119;
    v94 = v41;
    v95 = v120.n128_u64[0];
    v96 = v121.n128_u64[0];
    LOWORD(v97) = v106;
    v58 = a17 | (v50 << 32);
    v60 = sub_1AFB49F2C;
    v51 = 1;
  }

  sub_1AF63291C(0, v57, 1, v58, v51, v60, v52, v116);
  v64 = *(a3 + 656);
  v128 = *(a3 + 640);
  v129 = v64;
  v130[0] = *(a3 + 672);
  *(v130 + 9) = *(a3 + 681);
  v65 = *(a3 + 592);
  v124 = *(a3 + 576);
  v125 = v65;
  v66 = *(a3 + 624);
  v126 = *(a3 + 608);
  v127 = v66;
  v67 = *(a3 + 560);
  v123[0] = *(a3 + 544);
  v123[1] = v67;
  if (sub_1AF448314(v123) == 1)
  {
    LODWORD(v97) = 0;
    v96 = 1347;
    result = sub_1AFDFE518();
    __break(1u);
  }

  else
  {
    v68 = v118;
    if (v124)
    {
      v69 = *(v120.n128_u64[0] + 184);

      v70 = sub_1AF6D5AC8(&type metadata for DrawCallPool, &off_1F25608D0, v69);

      v71 = v115;
      if (v121.n128_u64[0])
      {
        sub_1AFB44B0C(v115, v70, v121.n128_i64[0]);
      }

      sub_1AFB499A4(v68, v70, 0);
      v73 = *(v71 + 16);
      v72 = *(v71 + 24);

      sub_1AFB49A68(a1, v73, v72, v70);

      v74 = v101;
      v70[7].i64[1] = v100;
      v70[8].i64[0] = v74;
      v75 = v98;
      v70[14].i8[0] = v99;
      v70[14].i8[1] = v75;
      v76 = *(a1 + 112);
      v135[4] = *(a1 + 96);
      v135[5] = v76;
      v135[6] = *(a1 + 128);
      v77 = *(a1 + 48);
      v135[0] = *(a1 + 32);
      v135[1] = v77;
      v78 = *(a1 + 80);
      v135[2] = *(a1 + 64);
      v135[3] = v78;
      sub_1AF894900(v135);
      v70[6].i64[0] = v102;
      v133[0] = v114;
      v133[1] = v113;
      v133[2] = 0;
      v133[3] = 0;
      v134 = 64;
      sub_1AF88BB90(v133, 4, 0);
      v131[0] = v112;
      v131[1] = v111;
      v131[2] = 0;
      v131[3] = 0;
      v132 = 64;
      sub_1AF88BB90(v131, 5, 0);
      v122 = v105;
      MEMORY[0x1EEE9AC00](v105);
      LOBYTE(v94) = 2;
      v95 = &v122;
      v96 = v110;
      v97 = a3;
      v79 = *(v110 + 184);

      sub_1AF6D655C(&_s21DrawCallEntityClassesVN, &off_1F2560C08, v79, sub_1AFB4A418);

      v80 = v122;
      v81 = *v117;
      v82 = v117[1];
      v83 = v117[2];
      v84 = *(v68 + 160);
      v85 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v117[3], v83, *(v68 + 144), 2), v82, *(v68 + 144), 1), *v117, COERCE_FLOAT(*(v68 + 144)));
      v85.i32[3] = HIDWORD(*(v68 + 144));
      v121 = v85;
      v86 = v84;
      v86.i32[1] = v84.i32[0];
      v86.i32[2] = v84.i32[0];
      v120 = vmlaq_f32(vmlaq_f32(vmulq_f32(vabsq_f32(v82), vuzp2q_s32(vdupq_lane_s32(*v84.i8, 1), v84)), v86, vabsq_f32(v81)), vzip2q_s32(vtrn1q_s32(v84, v84), v84), vabsq_f32(v83));

      sub_1AF63F65C(0, v80, 1, v104 | (v103 << 32), 1, v116, v70, v121, v120);
    }

    else
    {
    }
  }

  return result;
}

unint64_t sub_1AFB45B80(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4, __n128 a5, __n128 a6, uint64_t a7, char a8)
{
  v11 = a1[11];
  v12 = a1[12];
  v13 = a1[13];
  v14 = a1[2];
  v15 = sub_1AF64B110(&type metadata for DrawCallComponent, &off_1F2560850, v11, v12, v13, v14);
  v16 = sub_1AF64B110(&type metadata for WorldAABB, &off_1F2510410, v11, v12, v13, v14);
  v17 = a1[6];
  v18 = &v16[32 * v17];
  *v18 = a5;
  v18[1] = a6;
  *&v15[8 * v17] = a2;

  return sub_1AFB42154(0, 1, a8, 0, a1, a3, a4);
}

unint64_t sub_1AFB45C74(void *a1, uint64_t a2, uint64_t a3, int32x4_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, _BYTE *a14, char a15, char a16)
{
  v20 = a1[11];
  v21 = a1[12];
  v22 = a1[13];
  v23 = a1[2];
  v59 = sub_1AF64B110(&type metadata for DrawCallComponent, &off_1F2560850, v20, v21, v22, v23);
  v24 = sub_1AF64B110(&type metadata for WorldAABB, &off_1F2510410, v20, v21, v22, v23);
  v25 = a1[6];
  v26 = a1[7];
  v27 = v26 - v25;
  v48 = a1;
  if (v26 != v25)
  {
    v29 = a4[9];
    v28 = a4[10];
    v30 = v28;
    v30.i32[1] = v28.i32[0];
    v30.i32[2] = v28.i32[0];
    v55 = v30;
    v31 = a1[3];
    v53 = vzip2q_s32(vtrn1q_s32(v28, v28), v28);
    v54 = vuzp2q_s32(vdupq_lane_s32(*v28.i8, 1), v28);
    v51 = vdupq_lane_s32(*v29.i8, 1);
    v52 = vdupq_lane_s32(*v29.i8, 0);
    v50 = a5;
    v32 = &v24[32 * v25 + 16];
    v33 = &v59[8 * v25];
    v34 = (a2 + (v31 << 6) + 32);
    v35 = a7 - ((v31 * a8) << 32);
    v36 = a7 + v31 * a8;
    v56 = v29.i32[3];
    v49 = vdupq_laneq_s32(v29, 2);
    v37 = a10 - ((v31 * a11) << 32);
    v38 = a10 + v31 * a11;
    do
    {
      v60 = v33;
      v62 = v27;
      v39 = v34[-2];
      v40 = v34[-1];
      v41 = *v34;
      v42 = v34[1];
      v34 += 4;
      v43 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v42, v41, v49), v40, v51), v39, v52);
      v43.i32[3] = v56;
      v32[-1] = v43;
      *v32 = vmlaq_f32(vmlaq_f32(vmulq_f32(v54, vabsq_f32(v40)), v55, vabsq_f32(v39)), v53, vabsq_f32(v41));
      v65[0] = a6;
      v65[1] = v35 & 0xFFFFFFFF00000000 | v36;
      v65[2] = 0;
      v65[3] = 0;
      v66 = 64;
      sub_1AF88BB90(v65, 4, 0);
      v63[0] = a9;
      v63[1] = v37 & 0xFFFFFFFF00000000 | v38;
      v63[2] = 0;
      v63[3] = 0;
      v64 = 64;
      sub_1AF88BB90(v63, 5, 0);
      v44 = *(a12 + 184);

      v45 = v67;
      v46 = sub_1AF6D5AC8(&type metadata for DrawCallPool, &off_1F25608D0, v44);
      v67 = v45;

      sub_1AFB437B0(v50);
      *v60 = v46;
      v33 = (v60 + 1);

      v32 += 2;
      v35 -= a8 << 32;
      v36 += a8;
      v37 -= a11 << 32;
      v38 += a11;
      v27 = v62 - 1;
    }

    while (v62 != 1);
  }

  return sub_1AFB42154(0, 1, a16, 0, v48, a13, a14);
}