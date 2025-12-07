uint64_t sub_1AFB66FF4(uint64_t a1, char a2, float32x4_t a3)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 16);
  v8 = ecs_stack_allocator_allocate(v7[4], 8 * (v6 - v5), 8);
  v9 = *(a1 + 8);
  v10 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, *(a1 + 88), *(a1 + 96), *(a1 + 104), v7);
  v11 = 0;
  v12 = v6 - v5;
  if (v6 != v5)
  {
    v13 = vmulq_f32(a3, a3);
    do
    {
      v14 = vsubq_f32(a3, *&v10[16 * v5]);
      v15 = vmulq_f32(v14, v14);
      if ((v15.f32[2] + vaddv_f32(*v15.f32)) <= v13.f32[3] != (a2 & 1))
      {
        v8[v11++] = v5;
      }

      ++v5;
    }

    while (v6 != v5);
  }

  v31 = 0;
  memset(v30, 0, sizeof(v30));
  v32 = 5;
  if (v11 >= 1)
  {
    if (v11 == *(v9 + 240) - *(v9 + 232))
    {
      sub_1AF63515C(v30, v27);
      v29 = 0;
      v28 = 0uLL;
    }

    else
    {
      sub_1AF63515C(v30, v27);
      *&v28 = v8;
      *(&v28 + 1) = v12;
      v29 = v11;
    }

    v16 = v7[13];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7[13] = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = sub_1AF420EA0(0, v16[2] + 1, 1, v16);
      v7[13] = v16;
    }

    v19 = v16[2];
    v18 = v16[3];
    if (v19 >= v18 >> 1)
    {
      v7[13] = sub_1AF420EA0(v18 > 1, v19 + 1, 1, v16);
    }

    v20 = v7[13];
    *(v20 + 16) = v19 + 1;
    v21 = v20 + 72 * v19;
    *(v21 + 32) = v27[0];
    v22 = v27[1];
    v23 = v27[2];
    v24 = v28;
    *(v21 + 96) = v29;
    *(v21 + 64) = v23;
    *(v21 + 80) = v24;
    *(v21 + 48) = v22;
    v7[13] = v20;
  }

  return sub_1AF635250(v30);
}

void sub_1AFB671E8(char a1, uint64_t a2, uint64_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, double a8, double a9, __n128 a10)
{
  v11 = vmulq_f32(a4, a4);
  v12 = vmulq_f32(a5, a5);
  a10.n128_u64[0] = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v11, v11, 8uLL), *&vextq_s8(v12, v12, 8uLL)), vadd_f32(vzip1_s32(*v11.i8, *v12.i8), vzip2_s32(*v11.i8, *v12.i8))));
  v13 = vmulq_f32(a6, a6);
  v14 = sqrtf(v13.f32[2] + vaddv_f32(*v13.f32));
  if (vabds_f32(fmaxf(fmaxf(a10.n128_f32[0], v14), a10.n128_f32[1]), fminf(fminf(a10.n128_f32[0], v14), a10.n128_f32[1])) <= 0.00001)
  {
    v80 = a4;
    v76 = v14;
    v78 = a10;
    *v18.i64 = sub_1AF6DE29C();
    v72 = v18;
    v19 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(a6, a6), a6, 0xCuLL), vnegq_f32(a5)), a6, vextq_s8(vuzp1q_s32(a5, a5), a5, 0xCuLL));
    v20 = vmulq_f32(vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL), v80);
    v21 = (v20.f32[2] + vaddv_f32(*v20.f32)) < 0.0;
    v22 = 1.0;
    if (v21)
    {
      v22 = -1.0;
    }

    v67 = v22;
    v23 = *(a3 + 32);
    v102[0] = *(a3 + 16);
    v102[1] = v23;
    v103 = *(a3 + 48);
    sub_1AF6B06C0(a2, v102, 0x200000000, &v86);
    v24 = v78;
    if (v86)
    {
      v71 = v93;
      if (v93 >= 1)
      {
        v70 = v90;
        if (v90)
        {
          v25 = 0;
          v24.f32[2] = v76;
          v26 = vmulq_n_f32(v24, v67);
          v27 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(a7, a6, v72, 2), a5, *v72.f32, 1), v80, v72.f32[0]);
          v27.i32[3] = vmuls_lane_f32(fmaxf(fmaxf(v26.f32[0], v26.f32[2]), v26.f32[1]), v72, 3);
          v75 = v27;
          v68 = v89;
          v28 = v92;
          v66 = v91;
          v29 = *(v91 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
          v85 = *(v92 + 32);
          v94 = v86;
          v95 = v87;
          v96 = v88;
          v65 = v29;
          v69 = a1;
          do
          {
            v30 = (v68 + 48 * v25);
            v31 = *v30;
            v32 = v30[1];
            v33 = v30[2];
            v34 = *(v30 + 2);
            v35 = *(v30 + 3);
            v36 = *(v30 + 4);
            v37 = *(v30 + 5);
            if (v29)
            {
              v38 = *(v37 + 376);

              os_unfair_lock_lock(v38);
              os_unfair_lock_lock(*(v37 + 344));
            }

            else
            {
            }

            ecs_stack_allocator_push_snapshot(v85);
            v79 = *(v28 + 64);
            v81 = *(v28 + 48);
            v77 = *(v28 + 80);
            v39 = *(*(*(*(v37 + 40) + 16) + 32) + 16) + 1;
            *(v28 + 48) = ecs_stack_allocator_allocate(*(v28 + 32), 48 * v39, 8);
            *(v28 + 56) = v39;
            *(v28 + 72) = 0;
            *(v28 + 80) = 0;
            *(v28 + 64) = 0;
            v97[0] = v66;
            v97[1] = v37;
            v83 = v37;
            v97[2] = v28;
            v97[3] = v33;
            v97[4] = (v32 - v31 + v33);
            v97[5] = v71;
            v97[6] = v31;
            v97[7] = v32;
            v97[8] = 0;
            v97[9] = 0;
            v98 = 1;
            v99 = v34;
            v100 = v35;
            v101 = v36;
            sub_1AFB66FF4(v97, v69 & 1, v75);
            v40 = *(v28 + 48);
            v41 = *(v28 + 64);
            if (!v41)
            {
              v63 = *(v28 + 56);
              v64 = *(v28 + 32);
              goto LABEL_42;
            }

            v73 = v25;
            for (i = 0; i != v41; ++i)
            {
              v44 = (v40 + 48 * i);
              v45 = *v44;
              v46 = v44[4];
              v47 = *(v28 + 72);
              if (v47)
              {
                v48 = v45 == v47;
              }

              else
              {
                v48 = 0;
              }

              if (v48)
              {
                goto LABEL_14;
              }

              v49 = v94;
              if (!v94[11])
              {
                goto LABEL_14;
              }

              v50 = v44[2];
              v51 = v94 + 41;
              v52 = v94[9];
              if (v52 >= 0x10)
              {
                v53 = &v51[v94[8]];
                v54 = v52 >> 4;
                v55 = v94 + 41;
                while (*v53 != v45)
                {
                  ++v55;
                  v53 += 16;
                  if (!--v54)
                  {
                    goto LABEL_30;
                  }
                }

                v56 = v55[v94[10]];
                v57 = v56 > 5;
                v58 = (1 << v56) & 0x23;
                if (v57 || v58 == 0)
                {
LABEL_14:

                  v46(v43);

                  continue;
                }
              }

LABEL_30:
              if (swift_conformsToProtocol2() && v50)
              {
                if (sub_1AF5FC8D8(v50))
                {
                  goto LABEL_14;
                }

                v60 = v49[9];
                if (v60 < 0x10)
                {
                  goto LABEL_14;
                }

                v61 = &v51[v49[8]];
                v62 = 16 * (v60 >> 4);
                while (*v61 != v50)
                {
                  v61 += 16;
                  v62 -= 16;
                  if (!v62)
                  {
                    goto LABEL_14;
                  }
                }
              }
            }

            v63 = *(v28 + 56);
            v40 = *(v28 + 48);
            v64 = *(v28 + 32);
            if (*(v28 + 64) >= 1)
            {
              swift_arrayDestroy();
            }

            v25 = v73;
LABEL_42:
            ecs_stack_allocator_deallocate(v64, v40, 48 * v63);
            *(v28 + 48) = v81;
            *(v28 + 64) = v79;
            *(v28 + 80) = v77;
            sub_1AF62D29C(v83);
            ecs_stack_allocator_pop_snapshot(v85);
            v29 = v65;
            if (v65)
            {
              os_unfair_lock_unlock(*(v83 + 344));
              os_unfair_lock_unlock(*(v83 + 376));
            }

            ++v25;
          }

          while (v25 != v70);
        }
      }

      sub_1AF5D1564(&v86);
    }
  }
}

void sub_1AFB676E8(uint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  v5 = qword_1EB6372F8;

  if (v5 != -1)
  {
    swift_once();
  }

  v52[0] = xmmword_1EB6C35E0;
  v52[1] = *algn_1EB6C35F0;
  v53 = qword_1EB6C3600;
  sub_1AF6B06C0(v4, v52, 0x200000000, &v32);
  v26 = v32;
  if (v32)
  {
    v6 = v35;
    v7 = v36;
    v8 = v38;
    v40 = v33;
    v41 = v34;
    v24 = v39;
    v25 = v37;
    if (v39 > 0)
    {
      if (v36)
      {
        v9 = *(v38 + 32);
        v10 = *(v37 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        sub_1AF68A8E0(a1, &v31);

        sub_1AF5D15C0(&v32, &v31);
        v11 = (v6 + 24);
        v22 = v4;
        v23 = v2;
        v20 = v10;
        v21 = a1;
        do
        {
          v12 = *(v11 - 6);
          v13 = *(v11 - 5);
          v14 = *(v11 - 4);
          v29 = *(v11 - 1);
          v30 = v7;
          v15 = v11[2];
          v27 = v11[1];
          v28 = *v11;
          if (v10)
          {
            v16 = *(v15 + 376);

            os_unfair_lock_lock(v16);
            os_unfair_lock_lock(*(v15 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v9);
          v17 = *(v8 + 64);
          v45[0] = *(v8 + 48);
          v45[1] = v17;
          v46 = *(v8 + 80);
          v18 = *(v8 + 32);
          v19 = *(*(*(*(v15 + 40) + 16) + 32) + 16) + 1;

          *(v8 + 48) = ecs_stack_allocator_allocate(v18, 48 * v19, 8);
          *(v8 + 56) = v19;
          *(v8 + 72) = 0;
          *(v8 + 80) = 0;
          *(v8 + 64) = 0;

          LOBYTE(v31) = 1;
          v47[0] = v25;
          v47[1] = v15;
          v47[2] = v8;
          v47[3] = v14;
          v47[4] = (v13 - v12 + v14);
          v47[5] = v24;
          v47[6] = v12;
          v47[7] = v13;
          v47[8] = 0;
          v47[9] = 0;
          v48 = 1;
          v49 = v29;
          v50 = v28;
          v51 = v27;
          sub_1AF68A8E0(v21, &v31);

          sub_1AFD53904(v47, v21, v22, v23);

          sub_1AF688940(v21);
          v42 = v26;
          v43 = v40;
          v44 = v41;
          sub_1AF630994(v8, &v42, v45);
          sub_1AF62D29C(v15);
          ecs_stack_allocator_pop_snapshot(v9);
          v10 = v20;
          if (v20)
          {
            os_unfair_lock_unlock(*(v15 + 344));
            os_unfair_lock_unlock(*(v15 + 376));
          }

          v11 += 6;
          v7 = v30 - 1;
        }

        while (v30 != 1);

        sub_1AF5D1564(&v32);
        sub_1AF688940(v21);
      }

      else
      {
      }
    }

    sub_1AF5D1564(&v32);
  }

  else
  {
  }
}

unint64_t sub_1AFB67B50()
{
  result = qword_1EB642C60;
  if (!qword_1EB642C60)
  {
    sub_1AF82352C(255, &qword_1EB642C68, &type metadata for KillShape.Shape, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EB642C60);
  }

  return result;
}

unint64_t sub_1AFB67BD0()
{
  result = qword_1EB642C70;
  if (!qword_1EB642C70)
  {
    result = swift_getWitnessTable(asc_1AFE9CF7C, &type metadata for KillShape.Shape, v0, v1);
    atomic_store(result, &qword_1EB642C70);
  }

  return result;
}

unint64_t sub_1AFB67C24()
{
  result = qword_1EB642C80;
  if (!qword_1EB642C80)
  {
    result = swift_getWitnessTable(asc_1AFE9D1B0, &type metadata for KillShape.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642C80);
  }

  return result;
}

void sub_1AFB67C78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1AFB67CE0()
{
  result = qword_1EB642C98;
  if (!qword_1EB642C98)
  {
    result = swift_getWitnessTable(aY_18, &type metadata for ParticleKillable.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642C98);
  }

  return result;
}

unint64_t sub_1AFB67D58()
{
  result = qword_1EB642CA0;
  if (!qword_1EB642CA0)
  {
    result = swift_getWitnessTable(aA_14, &type metadata for KillShape.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642CA0);
  }

  return result;
}

unint64_t sub_1AFB67DB0()
{
  result = qword_1EB642CA8;
  if (!qword_1EB642CA8)
  {
    result = swift_getWitnessTable(byte_1AFE9D110, &type metadata for ParticleKillable.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642CA8);
  }

  return result;
}

unint64_t sub_1AFB67E08()
{
  result = qword_1EB642CB0;
  if (!qword_1EB642CB0)
  {
    result = swift_getWitnessTable(byte_1AFE9D138, &type metadata for ParticleKillable.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642CB0);
  }

  return result;
}

unint64_t sub_1AFB67E60()
{
  result = qword_1EB642CB8;
  if (!qword_1EB642CB8)
  {
    result = swift_getWitnessTable(byte_1AFE9D058, &type metadata for KillShape.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642CB8);
  }

  return result;
}

unint64_t sub_1AFB67EB8()
{
  result = qword_1EB642CC0;
  if (!qword_1EB642CC0)
  {
    result = swift_getWitnessTable(byte_1AFE9D080, &type metadata for KillShape.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642CC0);
  }

  return result;
}

uint64_t sub_1AFB67F0C(uint64_t a1, char a2)
{
  result = sub_1AF649C6C(*(a1 + 40), &type metadata for LODCulled, v5);
  if ((v5[0] & 1) == 0)
  {
    v5[0] = &type metadata for LODCulled;
    v5[1] = &off_1F252B720;
    v6 = 0;
    MEMORY[0x1EEE9AC00](result);
    sub_1AF63023C(a2 & 1, a1, sub_1AFB6A994);
    return sub_1AF635250(v5);
  }

  return result;
}

uint64_t sub_1AFB67FF4@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v11 = *v5;
  v12 = *v5 + 41;
  v13 = (*v5)[8];
  v14 = v11[9];
  sub_1AF5C52A8(0);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C6B0;
  inited[4] = &type metadata for Position;
  inited[5] = &off_1F252EDF0;
  inited[6] = &type metadata for LODRenderer;
  inited[7] = &off_1F252B368;
  inited[8] = &type metadata for LODState;
  inited[9] = &off_1F252B420;
  inited[10] = &type metadata for ModelRenderer;
  inited[11] = &off_1F25623D0;
  if (v14 > 0xF)
  {
    v33 = sub_1AFC0592C((v12 + v13), v14 >> 4);
    sub_1AF48FC80(inited);
    inited = v33;
  }

  v16 = v11[10];
  v17 = v11[11];
  sub_1AF8ADD38(0, &unk_1ED726A28, &type metadata for AccessControl, MEMORY[0x1E69E6F90]);
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_1AFE4C6B0;
  *(v18 + 32) = a1;
  *(v18 + 33) = a2;
  *(v18 + 34) = a3;
  *(v18 + 35) = a4;
  if (v17)
  {
    v33 = sub_1AFC0587C((v12 + v16), v17);
    sub_1AF48FBC0(v18);
    v18 = v33;
    v19 = v33[2];
  }

  else
  {
    v19 = 4;
  }

  v20 = *v6 + 41;
  v21 = (*v6)[12];
  v22 = (*v6)[13] >> 4;
  v23 = (*v6)[14];
  v24 = (*v6)[15] / 0x18u;
  v25 = *(v6 + 2);
  v26 = *(v6 + 12);
  v27 = v6[4];
  v28 = v6[2];
  v29 = *(v6 + 24);
  v30 = sub_1AF6B7F4C(inited + 4, inited[2], (v18 + 32), v19, (v20 + v21), v22, (v20 + v23), v24);

  *a5 = v30;
  *(a5 + 8) = v25;
  *(a5 + 12) = v26;
  *(a5 + 13) = v34;
  *(a5 + 15) = v35;
  *(a5 + 16) = v28;
  *(a5 + 24) = v29;
  *(a5 + 25) = v33;
  *(a5 + 28) = *(&v33 + 3);
  *(a5 + 32) = v27;
  return result;
}

void sub_1AFB68228(uint64_t a1, float32x4_t a2)
{
  v3 = *(v2 + 112);
  v70[0] = *(v2 + 96);
  v70[1] = v3;
  v71 = *(v2 + 128);
  sub_1AF6B06C0(a1, v70, 0x200000000, &v54);
  if (v54)
  {
    v46 = v61;
    if (v61 >= 1)
    {
      v45 = v58;
      if (v58)
      {
        v4 = 0;
        v44 = v57;
        v5 = v60;
        v43 = v59;
        v6 = *(v59 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v53 = *(v60 + 32);
        v62 = v54;
        v63 = v55;
        v64 = v56;
        v42 = v6;
        do
        {
          v7 = (v44 + 48 * v4);
          v8 = *v7;
          v9 = v7[1];
          v10 = v7[2];
          v11 = *(v7 + 2);
          v12 = *(v7 + 3);
          v13 = *(v7 + 4);
          v14 = *(v7 + 5);
          if (v6)
          {
            v15 = *(v14 + 376);

            os_unfair_lock_lock(v15);
            os_unfair_lock_lock(*(v14 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v53);
          v50 = *(v5 + 64);
          v51 = *(v5 + 48);
          v49 = *(v5 + 80);
          v16 = *(*(*(*(v14 + 40) + 16) + 32) + 16) + 1;
          *(v5 + 48) = ecs_stack_allocator_allocate(*(v5 + 32), 48 * v16, 8);
          *(v5 + 56) = v16;
          *(v5 + 72) = 0;
          *(v5 + 80) = 0;
          *(v5 + 64) = 0;
          v65[0] = v43;
          v65[1] = v14;
          v52 = v14;
          v65[2] = v5;
          v65[3] = v10;
          v65[4] = (v9 - v8 + v10);
          v65[5] = v46;
          v65[6] = v8;
          v65[7] = v9;
          v65[8] = 0;
          v65[9] = 0;
          v66 = 1;
          v67 = v11;
          v68 = v12;
          v69 = v13;
          sub_1AFB685E8(v65, a2);
          v17 = *(v5 + 48);
          v18 = *(v5 + 64);
          if (!v18)
          {
            v40 = *(v5 + 56);
            v41 = *(v5 + 32);
            goto LABEL_39;
          }

          v48 = v4;
          for (i = 0; i != v18; ++i)
          {
            v21 = (v17 + 48 * i);
            v22 = *v21;
            v23 = v21[4];
            v24 = *(v5 + 72);
            if (v24)
            {
              v25 = v22 == v24;
            }

            else
            {
              v25 = 0;
            }

            if (v25)
            {
              goto LABEL_11;
            }

            v26 = v62;
            if (!v62[11])
            {
              goto LABEL_11;
            }

            v27 = v21[2];
            v28 = v62 + 41;
            v29 = v62[9];
            if (v29 >= 0x10)
            {
              v30 = &v28[v62[8]];
              v31 = v29 >> 4;
              v32 = v62 + 41;
              while (*v30 != v22)
              {
                ++v32;
                v30 += 16;
                if (!--v31)
                {
                  goto LABEL_27;
                }
              }

              v33 = v32[v62[10]];
              v34 = v33 > 5;
              v35 = (1 << v33) & 0x23;
              if (v34 || v35 == 0)
              {
LABEL_11:

                v23(v20);

                continue;
              }
            }

LABEL_27:
            if (swift_conformsToProtocol2() && v27)
            {
              if (sub_1AF5FC8D8(v27))
              {
                goto LABEL_11;
              }

              v37 = v26[9];
              if (v37 < 0x10)
              {
                goto LABEL_11;
              }

              v38 = &v28[v26[8]];
              v39 = 16 * (v37 >> 4);
              while (*v38 != v27)
              {
                v38 += 16;
                v39 -= 16;
                if (!v39)
                {
                  goto LABEL_11;
                }
              }
            }
          }

          v40 = *(v5 + 56);
          v17 = *(v5 + 48);
          v41 = *(v5 + 32);
          if (*(v5 + 64) >= 1)
          {
            swift_arrayDestroy();
          }

          v4 = v48;
LABEL_39:
          ecs_stack_allocator_deallocate(v41, v17, 48 * v40);
          *(v5 + 48) = v51;
          *(v5 + 64) = v50;
          *(v5 + 80) = v49;
          sub_1AF62D29C(v52);
          ecs_stack_allocator_pop_snapshot(v53);
          v6 = v42;
          if (v42)
          {
            os_unfair_lock_unlock(*(v52 + 344));
            os_unfair_lock_unlock(*(v52 + 376));
          }

          ++v4;
        }

        while (v4 != v45);
      }
    }

    sub_1AF5D1564(&v54);
  }
}

uint64_t sub_1AFB685E8(void *a1, float32x4_t a2)
{
  v3 = a1[11];
  v4 = a1[12];
  v5 = a1[13];
  v7 = a1[1];
  v6 = a1[2];

  v78 = sub_1AF64B110(&type metadata for LODRenderer, &off_1F252B3F0, v3, v4, v5, v6);
  v8 = sub_1AF64B110(&type metadata for LODState, &off_1F252B4A0, v3, v4, v5, v6);
  v79 = v6;
  v9 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v3, v4, v5, v6);
  v10 = v7[7].i32[1];
  if (v7[19].i32[2] != v10)
  {
    v11 = a1[6];
    v12 = 0.0;
    v13 = a1[7] - v11;
    if (v13)
    {
      v27 = &v78[8 * v11];
      do
      {
        v30 = *v27;
        v27 += 8;
        v29 = v30;
        if (v30)
        {
          v31 = *(v29 + 40);
          v28 = v31 ? *(*(v29 + 32) + 4 * v31 - 4) : 0.0;
          if (v12 <= v28)
          {
            v12 = v28;
          }
        }

        --v13;
      }

      while (v13);
    }

    v7[19].f32[1] = v12;
    v7[19].i32[2] = v10;
  }

  sub_1AF649C6C(v7[2].i64[1], &type metadata for LODCulled, &v81);
  if (v7[19].i32[0] == v7[7].i32[1])
  {
    v14 = vsubq_f32(vabdq_f32(a2, v7[17]), v7[18]);
    v14.i32[3] = 0;
    v15 = vmaxnmq_f32(v14, 0);
    v16 = vmulq_f32(v15, v15);
    if (v7[19].f32[1] < (v16.f32[2] + vaddv_f32(*v16.f32)))
    {
      if ((v81 & 1) == 0)
      {
        sub_1AFB67F0C(v7, 0);
      }

      goto LABEL_9;
    }
  }

  v18 = a1[6];
  v17 = a1[7];
  if (v17 == v18)
  {
LABEL_9:
  }

  v20 = ~v18 + v17;
  v21 = &v8[12 * v18 + 4];
  v22 = &v9[16 * v18];
  v23 = 1;
  while (1)
  {
    if (v23)
    {
      v24 = vsubq_f32(a2, *v22);
      v25 = vmulq_f32(v24, v24);
      v26 = v25.f32[2] + vaddv_f32(*v25.f32);
      if (*(v21 - 1) <= v26)
      {
        break;
      }
    }

    if (!v20)
    {
      goto LABEL_28;
    }

    v23 = 0;
LABEL_14:
    --v20;
    v21 += 3;
    ++v22;
  }

  v23 = v26 < *v21;
  if (v20)
  {
    goto LABEL_14;
  }

  if (v26 < *v21)
  {
    goto LABEL_9;
  }

LABEL_28:
  v32 = v4;
  v33 = v17 - v18;
  v34 = v81;
  v77 = sub_1AF64B110(&type metadata for ModelRenderer, &off_1F2562450, v3, v32, v5, v79);
  v76 = 8 * (v17 - v18);
  v35 = ecs_stack_allocator_allocate(v79[4], v76, 8);
  v36 = v35;
  v37 = 0;
  v89 = v35;
  v90 = v17 - v18;
  while (2)
  {
    v38 = vsubq_f32(a2, *&v9[16 * v18]);
    v39 = vmulq_f32(v38, v38);
    v40 = v39.f32[2] + vaddv_f32(*v39.f32);
    v41 = &v8[12 * v18];
    if (*v41 > v40 || v40 >= *(v41 + 1))
    {
      v43 = *&v78[8 * v18];
      if (v43)
      {
        v44 = v43[5];
        if (v44)
        {
          v45 = v43[4];
          v46 = v45[v44 - 1];
          if (v40 < v46 && v45 != 0)
          {
            v48 = *v45;
            if (v40 < *v45)
            {
              v49 = 0;
              v50 = 0.0;
LABEL_49:
              *(v41 + 2) = v49;
              *v41 = v50;
              *(v41 + 1) = v48;
              *&v77[16 * v18] = *(v43[2] + 16 * v49);
              goto LABEL_30;
            }

            v51 = 0;
            v52 = v45 + 1;
            v53 = 4 * v44 - 4;
            v54 = v48;
            while (v53)
            {
              v48 = v52[v51];
              v49 = v51 + 1;
              v53 -= 4;
              v50 = v54;
              v54 = v48;
              ++v51;
              if (v40 < v48)
              {
                goto LABEL_49;
              }
            }
          }
        }

        else
        {
          v46 = INFINITY;
        }

        if ((v34 & 1) == 0)
        {
          v35[v37++] = v18;
        }

        *v41 = v46;
        *(v41 + 4) = -2155872256;
      }
    }

LABEL_30:
    if (++v18 != v17)
    {
      continue;
    }

    break;
  }

  v91 = v37;
  sub_1AF649C6C(v7[2].i64[1], &type metadata for LODCulled, &v81);
  if ((v81 & 1) == 0)
  {
    v86 = &type metadata for LODCulled;
    v87 = &off_1F252B720;
    v88 = 0;
    if (v37 < 1)
    {
    }

    else
    {
      if (v37 == v7[15].i64[0] - v7[14].i64[1])
      {
        sub_1AF63515C(&v86, &v81);
        v85 = 0;
        v84 = 0uLL;
      }

      else
      {
        sub_1AF63515C(&v86, &v81);
        *&v84 = v36;
        *(&v84 + 1) = v33;
        v85 = v37;
      }

      v56 = v79;
      v57 = v79[13];

LABEL_71:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v56[13] = v57;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v57 = sub_1AF420EA0(0, v57[2] + 1, 1, v57);
        v79[13] = v57;
      }

      v70 = v57[2];
      v69 = v57[3];
      if (v70 >= v69 >> 1)
      {
        v79[13] = sub_1AF420EA0(v69 > 1, v70 + 1, 1, v57);
      }

      v71 = v79[13];
      *(v71 + 16) = v70 + 1;
      v72 = v71 + 72 * v70;
      *(v72 + 32) = v81;
      v73 = v82;
      v74 = v83;
      v75 = v84;
      *(v72 + 96) = v85;
      *(v72 + 64) = v74;
      *(v72 + 80) = v75;
      *(v72 + 48) = v73;
      v79[13] = v71;
    }

    return sub_1AF635250(&v86);
  }

  if (v37 >= v33)
  {
    ecs_stack_allocator_deallocate(v79[4], v36, v76);
    goto LABEL_9;
  }

  if (v37)
  {

    sub_1AF6490A8();
    v86 = &type metadata for LODCulled;
    v87 = &off_1F252B720;
    v88 = 1;
    v55 = v91;
    if (v91 >= 1)
    {
      if (v91 == v7[15].i64[0] - v7[14].i64[1])
      {
        sub_1AF63515C(&v86, &v81);
        v85 = 0;
        v84 = 0uLL;
      }

      else
      {
        v66 = v89;
        v67 = v90;
        sub_1AF63515C(&v86, &v81);
        *&v84 = v66;
        *(&v84 + 1) = v67;
        v85 = v55;
      }

      v56 = v79;
      v57 = v79[13];
      goto LABEL_71;
    }

    return sub_1AF635250(&v86);
  }

  else
  {
    v86 = &type metadata for LODCulled;
    v87 = &off_1F252B720;
    v88 = 1;
    sub_1AF63515C(&v86, &v81);
    v85 = 0;
    v84 = 0uLL;
    v58 = v79[13];

    v59 = swift_isUniquelyReferenced_nonNull_native();
    v79[13] = v58;
    if ((v59 & 1) == 0)
    {
      v58 = sub_1AF420EA0(0, v58[2] + 1, 1, v58);
      v79[13] = v58;
    }

    v61 = v58[2];
    v60 = v58[3];
    if (v61 >= v60 >> 1)
    {
      v58 = sub_1AF420EA0(v60 > 1, v61 + 1, 1, v58);
    }

    v58[2] = v61 + 1;
    v62 = &v58[9 * v61];
    *(v62 + 2) = v81;
    v63 = v82;
    v64 = v83;
    v65 = v84;
    v62[12] = v85;
    *(v62 + 4) = v64;
    *(v62 + 5) = v65;
    *(v62 + 3) = v63;
    v79[13] = v58;
    sub_1AF635250(&v86);
    ecs_stack_allocator_deallocate(v79[4], v36, v76);
  }
}

void sub_1AFB68CB8(uint64_t a1, float32x4_t a2)
{
  v3 = *(v2 + 152);
  v70[0] = *(v2 + 136);
  v70[1] = v3;
  v71 = *(v2 + 168);
  sub_1AF6B06C0(a1, v70, 0x200000000, &v54);
  if (v54)
  {
    v46 = v61;
    if (v61 >= 1)
    {
      v45 = v58;
      if (v58)
      {
        v4 = 0;
        v44 = v57;
        v5 = v60;
        v43 = v59;
        v6 = *(v59 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v53 = *(v60 + 32);
        v62 = v54;
        v63 = v55;
        v64 = v56;
        v42 = v6;
        do
        {
          v7 = (v44 + 48 * v4);
          v8 = *v7;
          v9 = v7[1];
          v10 = v7[2];
          v11 = *(v7 + 2);
          v12 = *(v7 + 3);
          v13 = *(v7 + 4);
          v14 = *(v7 + 5);
          if (v6)
          {
            v15 = *(v14 + 376);

            os_unfair_lock_lock(v15);
            os_unfair_lock_lock(*(v14 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v53);
          v50 = *(v5 + 64);
          v51 = *(v5 + 48);
          v49 = *(v5 + 80);
          v16 = *(*(*(*(v14 + 40) + 16) + 32) + 16) + 1;
          *(v5 + 48) = ecs_stack_allocator_allocate(*(v5 + 32), 48 * v16, 8);
          *(v5 + 56) = v16;
          *(v5 + 72) = 0;
          *(v5 + 80) = 0;
          *(v5 + 64) = 0;
          v65[0] = v43;
          v65[1] = v14;
          v52 = v14;
          v65[2] = v5;
          v65[3] = v10;
          v65[4] = (v9 - v8 + v10);
          v65[5] = v46;
          v65[6] = v8;
          v65[7] = v9;
          v65[8] = 0;
          v65[9] = 0;
          v66 = 1;
          v67 = v11;
          v68 = v12;
          v69 = v13;
          sub_1AFB6907C(v65, a2);
          v17 = *(v5 + 48);
          v18 = *(v5 + 64);
          if (!v18)
          {
            v40 = *(v5 + 56);
            v41 = *(v5 + 32);
            goto LABEL_39;
          }

          v48 = v4;
          for (i = 0; i != v18; ++i)
          {
            v21 = (v17 + 48 * i);
            v22 = *v21;
            v23 = v21[4];
            v24 = *(v5 + 72);
            if (v24)
            {
              v25 = v22 == v24;
            }

            else
            {
              v25 = 0;
            }

            if (v25)
            {
              goto LABEL_11;
            }

            v26 = v62;
            if (!v62[11])
            {
              goto LABEL_11;
            }

            v27 = v21[2];
            v28 = v62 + 41;
            v29 = v62[9];
            if (v29 >= 0x10)
            {
              v30 = &v28[v62[8]];
              v31 = v29 >> 4;
              v32 = v62 + 41;
              while (*v30 != v22)
              {
                ++v32;
                v30 += 16;
                if (!--v31)
                {
                  goto LABEL_27;
                }
              }

              v33 = v32[v62[10]];
              v34 = v33 > 5;
              v35 = (1 << v33) & 0x23;
              if (v34 || v35 == 0)
              {
LABEL_11:

                v23(v20);

                continue;
              }
            }

LABEL_27:
            if (swift_conformsToProtocol2() && v27)
            {
              if (sub_1AF5FC8D8(v27))
              {
                goto LABEL_11;
              }

              v37 = v26[9];
              if (v37 < 0x10)
              {
                goto LABEL_11;
              }

              v38 = &v28[v26[8]];
              v39 = 16 * (v37 >> 4);
              while (*v38 != v27)
              {
                v38 += 16;
                v39 -= 16;
                if (!v39)
                {
                  goto LABEL_11;
                }
              }
            }
          }

          v40 = *(v5 + 56);
          v17 = *(v5 + 48);
          v41 = *(v5 + 32);
          if (*(v5 + 64) >= 1)
          {
            swift_arrayDestroy();
          }

          v4 = v48;
LABEL_39:
          ecs_stack_allocator_deallocate(v41, v17, 48 * v40);
          *(v5 + 48) = v51;
          *(v5 + 64) = v50;
          *(v5 + 80) = v49;
          sub_1AF62D29C(v52);
          ecs_stack_allocator_pop_snapshot(v53);
          v6 = v42;
          if (v42)
          {
            os_unfair_lock_unlock(*(v52 + 344));
            os_unfair_lock_unlock(*(v52 + 376));
          }

          ++v4;
        }

        while (v4 != v45);
      }
    }

    sub_1AF5D1564(&v54);
  }
}

void *sub_1AFB6907C(void *a1, float32x4_t a2)
{
  v3 = a1[11];
  v4 = a1[12];
  v5 = a1[13];
  v6 = a1[1];
  v7 = a1[2];
  v8 = sub_1AF64B110(&type metadata for WorldTransform, &off_1F2529FC0, v3, v4, v5, v7);
  v9 = sub_1AF64B110(&type metadata for LODRenderer, &off_1F252B3F0, v3, v4, v5, v7);
  v10 = sub_1AF64B110(&type metadata for LODState, &off_1F252B4A0, v3, v4, v5, v7);
  v55 = v6;
  v11 = sub_1AF64B110(&type metadata for ModelRenderer, &off_1F2562450, v3, v4, v5, v7);
  v12 = a1[6];
  v13 = a1[7];
  v54 = v7;
  v14 = v7[4];
  v15 = 8 * (v13 - v12);
  v16 = ecs_stack_allocator_allocate(v14, v15, 8);
  v17 = v16;
  v18 = 0;
  v19 = v13 - v12;
  v64 = v16;
  v65 = v13 - v12;
  v66 = 0;
  if (v13 != v12)
  {
    v18 = 0;
    do
    {
      v20 = *&v9[8 * v12];
      if (v20)
      {
        v21 = 0;
        v22 = vsubq_f32(a2, *&v8[64 * v12 + 48]);
        v23 = vmulq_f32(v22, v22);
        v24 = v23.f32[2] + vaddv_f32(*v23.f32);
        v25 = -1;
        do
        {
          if (v25 - v20[5] == -1)
          {
            v16[v18++] = v12;
            goto LABEL_4;
          }

          v26 = *(v20[4] + v21);
          ++v25;
          v21 += 4;
        }

        while (v24 >= v26);
        v27 = &v10[12 * v12];
        v29 = *(v27 + 2);
        v28 = v27 + 8;
        if (v29 != v25)
        {
          *v28 = v25;
          *&v11[16 * v12] = *(v20[2] + 16 * v25);
        }
      }

LABEL_4:
      ++v12;
    }

    while (v12 != v13);
    v66 = v18;
  }

  sub_1AF649C6C(v55[5], &type metadata for LODCulled, &v56);
  if (v56 != 1)
  {
    v61 = &type metadata for LODCulled;
    v62 = &off_1F252B720;
    v63 = 0;
    if (v18 >= 1)
    {
      if (v18 == v55[30] - v55[29])
      {
        sub_1AF63515C(&v61, &v56);
        v60 = 0;
        v59 = 0uLL;
      }

      else
      {
        sub_1AF63515C(&v61, &v56);
        *&v59 = v17;
        *(&v59 + 1) = v19;
        v60 = v18;
      }

      v33 = v54;
      v34 = v54[13];

      goto LABEL_34;
    }

    return sub_1AF635250(&v61);
  }

  if (v18 >= v19)
  {
    v31 = v54[4];

    return ecs_stack_allocator_deallocate(v31, v17, v15);
  }

  else
  {
    if (v18)
    {

      sub_1AF6490A8();
      v61 = &type metadata for LODCulled;
      v62 = &off_1F252B720;
      v63 = 1;
      v30 = v66;
      if (v66 >= 1)
      {
        if (v66 == v55[30] - v55[29])
        {
          sub_1AF63515C(&v61, &v56);
          v60 = 0;
          v59 = 0uLL;
        }

        else
        {
          v43 = v64;
          v44 = v65;
          sub_1AF63515C(&v61, &v56);
          *&v59 = v43;
          *(&v59 + 1) = v44;
          v60 = v30;
        }

        v33 = v54;
        v34 = v54[13];
LABEL_34:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v33[13] = v34;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v34 = sub_1AF420EA0(0, v34[2] + 1, 1, v34);
          v33[13] = v34;
        }

        v47 = v34[2];
        v46 = v34[3];
        if (v47 >= v46 >> 1)
        {
          v33[13] = sub_1AF420EA0(v46 > 1, v47 + 1, 1, v34);
        }

        v48 = v33[13];
        *(v48 + 16) = v47 + 1;
        v49 = v48 + 72 * v47;
        *(v49 + 32) = v56;
        v50 = v57;
        v51 = v58;
        v52 = v59;
        *(v49 + 96) = v60;
        *(v49 + 64) = v51;
        *(v49 + 80) = v52;
        *(v49 + 48) = v50;
        v33[13] = v48;
        return sub_1AF635250(&v61);
      }

      return sub_1AF635250(&v61);
    }

    v61 = &type metadata for LODCulled;
    v62 = &off_1F252B720;
    v63 = 1;
    sub_1AF63515C(&v61, &v56);
    v60 = 0;
    v59 = 0uLL;
    v35 = v54[13];

    v36 = swift_isUniquelyReferenced_nonNull_native();
    v54[13] = v35;
    if ((v36 & 1) == 0)
    {
      v35 = sub_1AF420EA0(0, v35[2] + 1, 1, v35);
      v54[13] = v35;
    }

    v38 = v35[2];
    v37 = v35[3];
    if (v38 >= v37 >> 1)
    {
      v35 = sub_1AF420EA0(v37 > 1, v38 + 1, 1, v35);
    }

    v35[2] = v38 + 1;
    v39 = &v35[9 * v38];
    *(v39 + 2) = v56;
    v40 = v57;
    v41 = v58;
    v42 = v59;
    v39[12] = v60;
    *(v39 + 4) = v41;
    *(v39 + 5) = v42;
    *(v39 + 3) = v40;
    v54[13] = v35;
    sub_1AF635250(&v61);
    ecs_stack_allocator_deallocate(v54[4], v17, v15);
  }
}

uint64_t sub_1AFB69564()
{
  v1 = v0;
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED73B840;
  v33 = qword_1ED73B840;
  v34 = 0;
  v35 = 2;
  v36 = 0;
  v37 = 2;
  v38 = 0;
  sub_1AF5C9108(v21);
  v3 = v21[1];
  *(v0 + 16) = v21[0];
  *(v0 + 32) = v3;
  *(v0 + 48) = v22;
  sub_1AF8290F0(v23);
  sub_1AF5C52A8(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = &type metadata for LODState;
  *(inited + 40) = &off_1F252B420;
  sub_1AF5D1EC0(inited);
  sub_1AFB6A934(v23, sub_1AFB6A9AC);
  swift_setDeallocating();
  v5 = v25;
  *(v0 + 56) = v24;
  *(v0 + 72) = v5;
  *(v0 + 88) = v26;
  sub_1AFB67FF4(1, 1, 2, 2, v27);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1AFE431C0;
  *(v6 + 32) = &type metadata for Parent;
  *(v6 + 40) = &off_1F2529C18;
  sub_1AF5D1EC0(v6);
  sub_1AFB6A934(v27, sub_1AFB6AA04);
  swift_setDeallocating();
  v7 = v29;
  *(v0 + 96) = v28;
  *(v0 + 112) = v7;
  *(v0 + 128) = v30;
  v8 = v2 + 41;
  v9 = v2[8];
  v10 = v2[9];
  v11 = swift_initStackObject();
  *(v11 + 1) = xmmword_1AFE4C6A0;
  v11[4] = &type metadata for WorldTransform;
  v11[5] = &off_1F2529AF8;
  v11[6] = &type metadata for LODRenderer;
  v11[7] = &off_1F252B368;
  v11[8] = &type metadata for LODState;
  v11[9] = &off_1F252B420;
  v11[10] = &type metadata for ModelRenderer;
  v11[11] = &off_1F25623D0;
  v11[12] = &type metadata for Parent;
  v11[13] = &off_1F2529C18;
  if (v10 > 0xF)
  {
    v20 = sub_1AFC0592C(&v8[v9], v10 >> 4);
    sub_1AF48FC80(v11);
    v11 = v20;
  }

  if (v2[11])
  {
    v20 = sub_1AFC0587C(&v8[v2[10]], v2[11]);
    sub_1AF48FBC0(&unk_1F2500970);
    v12 = v20;
  }

  else
  {
    v12 = &unk_1F2500970;
  }

  v13 = v34;
  v14 = v35;
  v15 = v38;
  v16 = v36;
  v17 = v37;
  v18 = sub_1AF6B7F4C(v11 + 4, v11[2], v12 + 32, v12[2], (v33 + v33[12] + 41), v33[13] >> 4, v33 + v33[14] + 41, v33[15] / 0x18u);

  *(v1 + 136) = v18;
  *(v1 + 144) = v13;
  *(v1 + 148) = v14;
  *(v1 + 149) = v31;
  *(v1 + 151) = v32;
  *(v1 + 152) = v16;
  *(v1 + 160) = v17;
  *(v1 + 161) = v20;
  *(v1 + 164) = *(&v20 + 3);
  *(v1 + 168) = v15;
  return v1;
}

uint64_t sub_1AFB698B0()
{
  v0 = swift_allocObject();
  sub_1AFB69564();
  return v0;
}

void *sub_1AFB698FC(void *a1, float32x4_t a2)
{
  v3 = a1[11];
  v4 = a1[12];
  v5 = a1[13];
  v7 = a1[1];
  v6 = a1[2];
  v8 = sub_1AF64B110(&type metadata for GenericLOD, &off_1F252B700, v3, v4, v5, v6);
  v9 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v3, v4, v5, v6);
  v10 = a1[6];
  v11 = a1[7];
  v12 = 8 * (v11 - v10);
  v13 = ecs_stack_allocator_allocate(v6[4], v12, 8);
  v14 = v13;
  v15 = 0;
  v16 = v11 - v10;
  v53 = v13;
  v54 = v11 - v10;
  v55 = 0;
  if (v11 != v10)
  {
    v15 = 0;
    v17 = &v8[8 * v10 + 4];
    do
    {
      v18 = vsubq_f32(a2, *&v9[16 * v10]);
      v19 = vmulq_f32(v18, v18);
      v20 = v19.f32[2] + vaddv_f32(*v19.f32);
      if (*(v17 - 1) > v20 || v20 >= *v17)
      {
        v13[v15++] = v10;
      }

      ++v10;
      v17 += 2;
    }

    while (v11 != v10);
    v55 = v15;
  }

  sub_1AF649C6C(v7[5], &type metadata for LODCulled, &v45);
  if (v45 != 1)
  {
    v50 = &type metadata for LODCulled;
    v51 = &off_1F252B720;
    v52 = 0;
    if (v15 >= 1)
    {
      if (v15 == v7[30] - v7[29])
      {
        sub_1AF63515C(&v50, &v45);
        v49 = 0;
        v48 = 0uLL;
      }

      else
      {
        sub_1AF63515C(&v50, &v45);
        *&v48 = v14;
        *(&v48 + 1) = v16;
        v49 = v15;
      }

      v23 = v6[13];

      goto LABEL_25;
    }

    return sub_1AF635250(&v50);
  }

  if (v15 >= v16)
  {
    v24 = v6[4];

    return ecs_stack_allocator_deallocate(v24, v14, v12);
  }

  else
  {
    if (v15)
    {

      sub_1AF6490A8();
      v50 = &type metadata for LODCulled;
      v51 = &off_1F252B720;
      v52 = 1;
      v22 = v55;
      if (v55 >= 1)
      {
        if (v55 == v7[30] - v7[29])
        {
          sub_1AF63515C(&v50, &v45);
          v49 = 0;
          v48 = 0uLL;
        }

        else
        {
          v42 = v53;
          v43 = v54;
          sub_1AF63515C(&v50, &v45);
          *&v48 = v42;
          *(&v48 + 1) = v43;
          v49 = v22;
        }

        v23 = v6[13];
LABEL_25:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v6[13] = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v23 = sub_1AF420EA0(0, v23[2] + 1, 1, v23);
          v6[13] = v23;
        }

        v28 = v23[2];
        v27 = v23[3];
        if (v28 >= v27 >> 1)
        {
          v6[13] = sub_1AF420EA0(v27 > 1, v28 + 1, 1, v23);
        }

        v29 = v6[13];
        *(v29 + 16) = v28 + 1;
        v30 = v29 + 72 * v28;
        *(v30 + 32) = v45;
        v31 = v46;
        v32 = v47;
        v33 = v48;
        *(v30 + 96) = v49;
        *(v30 + 64) = v32;
        *(v30 + 80) = v33;
        *(v30 + 48) = v31;
        v6[13] = v29;
        return sub_1AF635250(&v50);
      }

      return sub_1AF635250(&v50);
    }

    v50 = &type metadata for LODCulled;
    v51 = &off_1F252B720;
    v52 = 1;
    sub_1AF63515C(&v50, &v45);
    v49 = 0;
    v48 = 0uLL;
    v34 = v6[13];

    v35 = swift_isUniquelyReferenced_nonNull_native();
    v6[13] = v34;
    if ((v35 & 1) == 0)
    {
      v34 = sub_1AF420EA0(0, v34[2] + 1, 1, v34);
      v6[13] = v34;
    }

    v37 = v34[2];
    v36 = v34[3];
    if (v37 >= v36 >> 1)
    {
      v34 = sub_1AF420EA0(v36 > 1, v37 + 1, 1, v34);
    }

    v34[2] = v37 + 1;
    v38 = &v34[9 * v37];
    *(v38 + 2) = v45;
    v39 = v46;
    v40 = v47;
    v41 = v48;
    v38[12] = v49;
    *(v38 + 4) = v40;
    *(v38 + 5) = v41;
    *(v38 + 3) = v39;
    v6[13] = v34;
    sub_1AF635250(&v50);
    ecs_stack_allocator_deallocate(v6[4], v14, v12);
  }
}

uint64_t sub_1AFB69D34()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v10 = qword_1ED73B840;
  v11 = 0;
  v12 = 2;
  v13 = 0;
  v14 = 2;
  v15 = 0;
  sub_1AF5C52A8(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE4C620;
  *(inited + 32) = &type metadata for PointOfCulling;
  *(inited + 40) = &off_1F252B2B8;
  *(inited + 48) = &type metadata for Position;
  *(inited + 56) = &off_1F252EDF0;
  sub_1AF5B4630(inited, v6);
  swift_setDeallocating();
  v2 = v6[1];
  *(v0 + 16) = v6[0];
  *(v0 + 32) = v2;
  *(v0 + 48) = v7;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_1AFE4C620;
  *(v3 + 32) = &type metadata for GenericLOD;
  *(v3 + 40) = &off_1F252B680;
  *(v3 + 48) = &type metadata for Position;
  *(v3 + 56) = &off_1F252EDF0;
  sub_1AF5B4630(v3, v8);
  swift_setDeallocating();
  v4 = v8[1];
  *(v0 + 56) = v8[0];
  *(v0 + 72) = v4;
  *(v0 + 88) = v9;
  return v0;
}

uint64_t sub_1AFB69EA0()
{
  v0 = swift_allocObject();
  sub_1AFB69D34();
  return v0;
}

uint64_t sub_1AFB69ED8(uint64_t a1)
{
  v3 = *(v1 + 32);
  v90[0] = *(v1 + 16);
  v90[1] = v3;
  v91 = *(v1 + 48);
  v4 = v61;
  sub_1AF6B06C0(a1, v90, 0x200000000, v61);
  v83 = v61[0];
  v84 = v61[1];
  v85 = v61[2];
  v86 = v61[3];
  v88 = v63;
  v89 = v64;
  v87 = v62;
  sub_1AF6BA358(0);
  v6 = v5;
  v7 = off_1F252EE78;

  v8 = sub_1AF64B03C(&type metadata for Position, v7);

  v54 = *(v8 + 16 * v6);
  v9 = *(v1 + 72);
  v81[0] = *(v1 + 56);
  v81[1] = v9;
  v82 = *(v1 + 88);
  sub_1AF6B06C0(a1, v81, 0x200000000, &v65);
  if (v65)
  {
    v53 = v72;
    if (v72 >= 1)
    {
      v52 = v69;
      if (v69)
      {
        v10 = 0;
        v51 = v68;
        v11 = v71;
        v50 = v70;
        v12 = *(v70 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v60 = *(v71 + 32);
        v73 = v65;
        v74 = v66;
        v75 = v67;
        v49 = v12;
        do
        {
          v13 = (v51 + 48 * v10);
          v14 = *v13;
          v15 = v13[1];
          v16 = v13[2];
          v17 = *(v13 + 2);
          v18 = *(v13 + 3);
          v19 = *(v13 + 4);
          v20 = *(v13 + 5);
          if (v12)
          {
            v21 = *(v20 + 376);

            os_unfair_lock_lock(v21);
            os_unfair_lock_lock(*(v20 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v60);
          v57 = *(v11 + 64);
          v58 = *(v11 + 48);
          v56 = *(v11 + 80);
          v22 = *(*(*(*(v20 + 40) + 16) + 32) + 16) + 1;
          *(v11 + 48) = ecs_stack_allocator_allocate(*(v11 + 32), 48 * v22, 8);
          *(v11 + 56) = v22;
          *(v11 + 72) = 0;
          *(v11 + 80) = 0;
          *(v11 + 64) = 0;
          v76[0] = v50;
          v76[1] = v20;
          v59 = v20;
          v76[2] = v11;
          v76[3] = v16;
          v76[4] = (v15 - v14 + v16);
          v76[5] = v53;
          v76[6] = v14;
          v76[7] = v15;
          v76[8] = 0;
          v76[9] = 0;
          v77 = 1;
          v78 = v17;
          v79 = v18;
          v80 = v19;
          sub_1AFB698FC(v76, v54);
          v23 = *(v11 + 48);
          v24 = *(v11 + 64);
          if (!v24)
          {
            v46 = *(v11 + 56);
            v47 = *(v11 + 32);
            goto LABEL_39;
          }

          v55 = v10;
          for (i = 0; i != v24; ++i)
          {
            v27 = (v23 + 48 * i);
            v28 = *v27;
            v29 = v27[4];
            v30 = *(v11 + 72);
            if (v30)
            {
              v31 = v28 == v30;
            }

            else
            {
              v31 = 0;
            }

            if (v31)
            {
              goto LABEL_11;
            }

            v32 = v73;
            if (!v73[11])
            {
              goto LABEL_11;
            }

            v33 = v27[2];
            v34 = v73 + 41;
            v35 = v73[9];
            if (v35 >= 0x10)
            {
              v36 = &v34[v73[8]];
              v37 = v35 >> 4;
              v38 = v73 + 41;
              while (*v36 != v28)
              {
                ++v38;
                v36 += 16;
                if (!--v37)
                {
                  goto LABEL_27;
                }
              }

              v39 = v38[v73[10]];
              v40 = v39 > 5;
              v41 = (1 << v39) & 0x23;
              if (v40 || v41 == 0)
              {
LABEL_11:

                v29(v26);

                continue;
              }
            }

LABEL_27:
            if (swift_conformsToProtocol2() && v33)
            {
              if (sub_1AF5FC8D8(v33))
              {
                goto LABEL_11;
              }

              v43 = v32[9];
              if (v43 < 0x10)
              {
                goto LABEL_11;
              }

              v44 = &v34[v32[8]];
              v45 = 16 * (v43 >> 4);
              while (*v44 != v33)
              {
                v44 += 16;
                v45 -= 16;
                if (!v45)
                {
                  goto LABEL_11;
                }
              }
            }
          }

          v46 = *(v11 + 56);
          v23 = *(v11 + 48);
          v47 = *(v11 + 32);
          if (*(v11 + 64) >= 1)
          {
            swift_arrayDestroy();
          }

          v10 = v55;
LABEL_39:
          ecs_stack_allocator_deallocate(v47, v23, 48 * v46);
          *(v11 + 48) = v58;
          *(v11 + 64) = v57;
          *(v11 + 80) = v56;
          sub_1AF62D29C(v59);
          ecs_stack_allocator_pop_snapshot(v60);
          v12 = v49;
          if (v49)
          {
            os_unfair_lock_unlock(*(v59 + 344));
            os_unfair_lock_unlock(*(v59 + 376));
          }

          ++v10;
        }

        while (v10 != v52);
      }
    }

    sub_1AF5D1564(v61);
    v4 = &v65;
  }

  return sub_1AF5D1564(v4);
}

void sub_1AFB6A360(uint64_t a1)
{
  v2 = a1;
  v3 = *(v1 + 32);
  v82[0] = *(v1 + 16);
  v82[1] = v3;
  v83 = *(v1 + 48);
  sub_1AF6B06C0(a1, v82, 0x200000000, &v61);
  if (v61)
  {
    v73 = v61;
    v76 = v64;
    v77 = v65;
    v78 = v66;
    v79 = v67;
    v74 = v62;
    v75 = v63;
    sub_1AF6BA358(0);
    v5 = v4;
    v6 = off_1F252EE78;

    v7 = sub_1AF64B03C(&type metadata for Position, v6);

    v43 = *(v7 + 16 * v5);
    v8 = *(v1 + 72);
    v80[0] = *(v1 + 56);
    v80[1] = v8;
    v81 = *(v1 + 88);
    sub_1AF6B06C0(v2, v80, 0x200000000, v68);
    if (*&v68[0])
    {
      v42 = v2;
      if (v72 >= 1 && v70)
      {
        v46 = v71;
        v9 = v69;
        v10 = v69 + 48 * v70;
        v44 = v10;
        do
        {
          v11 = *(v9 + 40);
          v12 = *(v11 + 376);
          swift_retain_n();
          os_unfair_lock_lock(v12);
          os_unfair_lock_lock(*(v11 + 344));
          v13 = *(v11 + 24);

          v55 = 0;
          v53 = 0u;
          v54 = 0u;
          memset(v60, 0, 40);
          v14 = sub_1AF65A4B4(v13, &type metadata for LODState, &off_1F252B4A0, 0, 0, &v53, v60);

          sub_1AFB6A934(v60, sub_1AF5C4448);
          sub_1AFB6A934(&v53, sub_1AF5C4448);
          if (sub_1AF649CEC(v14))
          {
            sub_1AF649D40(v14, v46);
          }

          else
          {
            v16 = *(v11 + 232);
            v15 = *(v11 + 240);
            v48 = *(v11 + 120);
            v52 = *(v11 + 28);
            v51 = *(v11 + 32);
            v17 = *(v11 + 16);
            v18 = *(v11 + 40);
            v19 = *(v18 + 200);
            v50 = *(*(v17 + 88) + 8 * v14 + 32);

            if ((v19 & 1) != 0 || *(v50 + 200) == 1)
            {
              *(v17 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
              v18 = *(v11 + 40);
            }

            v20 = v48;
            v49 = *(v11 + 128);
            v21 = *(v11 + 256);
            sub_1AF5B4FCC(v18, v16, v15, 0, v11);
            v47 = *(v11 + 256);
            v22 = v47 - v21;
            if (v47 == v21)
            {
              v23 = 0;
            }

            else
            {
              v23 = v21;
            }

            v60[0] = v23;
            v24 = *(*(v11 + 40) + 24);
            v25 = *(v24 + 16);
            if (v25)
            {
              v45 = v9;
              v26 = v24 + 32;

              v27 = 0;
              v28 = v47 - v21;
              do
              {
                v29 = (v26 + 40 * v27);
                if ((v29[4] & 1) == 0)
                {
                  v30 = *v29;
                  v32 = v29[2];
                  v31 = v29[3];
                  v33 = *(v50 + 24);
                  v34 = *(v33 + 16);
                  if (v34)
                  {
                    v35 = (v33 + 32);
                    while (*v35 != v30)
                    {
                      v35 += 5;
                      if (!--v34)
                      {
                        goto LABEL_17;
                      }
                    }
                  }

                  else
                  {
LABEL_17:
                    sub_1AF640BC8(v49 + v32 * v23 + v31, v28);
                    v28 = v47 - v21;
                  }
                }

                ++v27;
              }

              while (v27 != v25);
              v22 = v28;

              v9 = v45;
              v20 = v48;
            }

            if (*(v17 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
            {
              vfx_counters.add(_:_:)(*(v17 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v11 + 72) * v22);
            }

            if (*(v11 + 184))
            {
              v36 = 0;
            }

            else
            {
              v36 = *(v11 + 168);
            }

            v59 = 0;

            MEMORY[0x1EEE9AC00](v37);
            v38 = v52;
            v39 = v51;
            DWORD2(v54) = -1;
            v55 = v21;
            v56 = v47;
            v57 = v21;
            v58 = v47;
            *&v53 = v21;
            *(&v53 + 1) = v47;
            *&v54 = v36;
            if (v22 < 1)
            {

              v10 = v44;
            }

            else
            {
              v10 = v44;
              do
              {
                sub_1AF6248A8(v14, v38 | (v39 << 32), v20, v17, &v53, sub_1AF5C5ACC);
                v39 = v51;
                v38 = v52;
              }

              while ((*(&v53 + 1) - v53) > 0);
            }

            v40 = *(v11 + 192);
            if (v40)
            {
              v41 = *(v11 + 208);
              sub_1AF75D364(v21, v47, v40);
              sub_1AF75D364(v21, v47, v41);
            }
          }

          v9 += 48;
          os_unfair_lock_unlock(*(v11 + 344));
          os_unfair_lock_unlock(*(v11 + 376));
        }

        while (v9 != v10);
      }

      sub_1AF5D1564(v68);
      v2 = v42;
    }

    sub_1AFB68228(v2, v43);
    sub_1AFB68CB8(v2, v43);
    sub_1AF5D1564(&v61);
  }
}

uint64_t sub_1AFB6A934(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AFB6A9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_1ED723E78)
  {
    v4 = type metadata accessor for Query1(0, &type metadata for LODRenderer, &off_1F252B3F0, a4);
    if (!v5)
    {
      atomic_store(v4, &qword_1ED723E78);
    }
  }
}

void sub_1AFB6AA04(uint64_t a1)
{
  if (!qword_1ED7238D8[0])
  {
    v5[8] = v1;
    v5[9] = v2;
    v5[0] = &type metadata for Position;
    v5[1] = &type metadata for LODRenderer;
    v5[2] = &type metadata for LODState;
    v5[3] = &type metadata for ModelRenderer;
    v5[4] = &off_1F252EE70;
    v5[5] = &off_1F252B3F0;
    v5[6] = &off_1F252B4A0;
    v5[7] = &off_1F2562450;
    v3 = type metadata accessor for Query4(a1, v5);
    if (!v4)
    {
      atomic_store(v3, qword_1ED7238D8);
    }
  }
}

uint64_t sub_1AFB6AAAC(void *a1, uint64_t a2)
{
  sub_1AFB6B5C0(0, &qword_1EB642CD8, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v10 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AFB6B56C();
  sub_1AFDFF3F8();
  v10[1] = a2;
  sub_1AF480018();
  sub_1AFDFE918();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1AFB6AC18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746567726174 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1AFDFEE28();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1AFB6AC9C(uint64_t a1)
{
  v2 = sub_1AFB6B56C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFB6ACD8(uint64_t a1)
{
  v2 = sub_1AFB6B56C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1AFB6AD14@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1AFB6AF10(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1AFB6AD94()
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
  sub_1AF5C7CD0(v3);
  v1 = v3[1];
  *(v0 + 16) = v3[0];
  *(v0 + 32) = v1;
  *(v0 + 48) = v4;
  return v0;
}

void sub_1AFB6AE54(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  swift_getObjectType();
  v5 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v3);

  sub_1AF6B1B20(a1, v5, v3);
  v6 = *(v4 + 40);

  os_unfair_lock_unlock(v6);
}

void *sub_1AFB6AF10(void *a1)
{
  sub_1AFB6B5C0(0, &qword_1EB642CC8, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v10 - v6;
  v8 = sub_1AF441150(a1, a1[3]);
  sub_1AFB6B56C();
  sub_1AFDFF3B8();
  if (!v1)
  {
    sub_1AF47FEB4();
    sub_1AFDFE768();
    (*(v5 + 8))(v7, v4);
    v8 = v10[1];
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v8;
}

void sub_1AFB6B0A8(uint64_t a1)
{
  v2 = *(v1 + 32);
  v80[0] = *(v1 + 16);
  v80[1] = v2;
  v81 = *(v1 + 48);
  sub_1AF6B06C0(a1, v80, 0x200000000, &v67);
  if (v67)
  {
    if (v74 >= 1)
    {
      v60 = v71;
      if (v71)
      {
        v3 = 0;
        v4 = 0;
        v59 = v70;
        v5 = v73;
        v64 = *(v73 + 32);
        v6 = *(v72 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v75 = v67;
        v76 = v68;
        v77 = v69;
        v7 = (v72 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
        v58 = v6;
        v56 = v72;
        do
        {
          v62 = v4;
          v8 = (v59 + 48 * v3);
          v9 = *v8;
          v10 = v8[1];
          v12 = *(v8 + 2);
          v11 = *(v8 + 3);
          v14 = *(v8 + 4);
          v13 = *(v8 + 5);
          v63 = v3;
          if (v6)
          {
            v15 = *(v13 + 376);

            os_unfair_lock_lock(v15);
            os_unfair_lock_lock(*(v13 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v64);
          v16 = *(v5 + 64);
          v78[0] = *(v5 + 48);
          v78[1] = v16;
          v79 = *(v5 + 80);
          v17 = *(*(*(*(v13 + 40) + 16) + 32) + 16) + 1;
          *(v5 + 48) = ecs_stack_allocator_allocate(*(v5 + 32), 48 * v17, 8);
          *(v5 + 56) = v17;
          *(v5 + 72) = 0;
          *(v5 + 80) = 0;
          *(v5 + 64) = 0;
          v66 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v12, v11, v14, v5);
          v65 = sub_1AF64B110(&type metadata for Orientation, &off_1F252C8A8, v12, v11, v14, v5);
          v18 = sub_1AF64B110(&type metadata for LookAt, &off_1F2562130, v12, v11, v14, v5);
          if (v12)
          {
            v4 = v62;
            if (v14)
            {
              for (i = 0; i != v14; ++i)
              {
                v25 = &v18[8 * i];
                v27 = *v25;
                v26 = *(v25 + 1);
                v28 = v27 == -1 && v26 == 0;
                if (!v28 && (v27 & 0x80000000) == 0 && v7[1] > v27)
                {
                  v29 = (*v7 + 12 * v27);
                  if (v26 == -1 || v29[2] == v26)
                  {
                    v31 = *(v29 + 2);
                    v32 = *(*(v56 + 144) + 8 * *v29 + 32);
                    v33 = *(v32 + 48);
                    v34 = (v33 + 32);
                    v35 = *(v33 + 16) + 1;
                    while (--v35)
                    {
                      v36 = v34 + 5;
                      v37 = *v34;
                      v34 += 5;
                      if (v37 == &type metadata for Position)
                      {
                        v20 = vsubq_f32(*(&(*(v36 - 2))[v31] + *(v32 + 128)), *&v66[16 * i]);
                        v21 = vmulq_f32(v20, v20);
                        v20.i32[3] = 0;
                        *&v22 = v21.f32[2] + vaddv_f32(*v21.f32);
                        *v21.f32 = vrsqrte_f32(v22);
                        *v21.f32 = vmul_f32(*v21.f32, vrsqrts_f32(v22, vmul_f32(*v21.f32, *v21.f32)));
                        v23 = vmulq_n_f32(v20, vmul_f32(*v21.f32, vrsqrts_f32(v22, vmul_f32(*v21.f32, *v21.f32))).f32[0]);
                        v23.i32[3] = v61;
                        *&v24 = sub_1AF1555CC(xmmword_1AFE206C0, v23);
                        *&v65[16 * i] = v24;
                        break;
                      }
                    }
                  }
                }
              }
            }
          }

          else
          {
            if (v9 != v10)
            {
              do
              {
                v43 = &v18[8 * v9];
                v45 = *v43;
                v44 = *(v43 + 1);
                v46 = v45 == -1 && v44 == 0;
                if (!v46 && (v45 & 0x80000000) == 0 && v7[1] > v45)
                {
                  v47 = (*v7 + 12 * v45);
                  if (v44 == -1 || v47[2] == v44)
                  {
                    v49 = *(v47 + 2);
                    v50 = *(*(v56 + 144) + 8 * *v47 + 32);
                    v51 = *(v50 + 48);
                    v52 = (v51 + 32);
                    v53 = *(v51 + 16) + 1;
                    while (--v53)
                    {
                      v54 = v52 + 5;
                      v55 = *v52;
                      v52 += 5;
                      if (v55 == &type metadata for Position)
                      {
                        v38 = vsubq_f32(*(&(*(v54 - 2))[v49] + *(v50 + 128)), *&v66[16 * v9]);
                        v39 = vmulq_f32(v38, v38);
                        v38.i32[3] = 0;
                        *&v40 = v39.f32[2] + vaddv_f32(*v39.f32);
                        *v39.f32 = vrsqrte_f32(v40);
                        *v39.f32 = vmul_f32(*v39.f32, vrsqrts_f32(v40, vmul_f32(*v39.f32, *v39.f32)));
                        v41 = vmulq_n_f32(v38, vmul_f32(*v39.f32, vrsqrts_f32(v40, vmul_f32(*v39.f32, *v39.f32))).f32[0]);
                        v41.i32[3] = v57;
                        *&v42 = sub_1AF1555CC(xmmword_1AFE206C0, v41);
                        *&v65[16 * v9] = v42;
                        break;
                      }
                    }
                  }
                }

                ++v9;
              }

              while (v9 != v10);
            }

            v4 = v62;
          }

          sub_1AF630994(v5, &v75, v78);
          sub_1AF62D29C(v13);
          ecs_stack_allocator_pop_snapshot(v64);
          v6 = v58;
          if (v58)
          {
            os_unfair_lock_unlock(*(v13 + 344));
            os_unfair_lock_unlock(*(v13 + 376));
          }

          v3 = v63 + 1;
        }

        while (v63 + 1 != v60);
      }
    }

    sub_1AF5D1564(&v67);
  }
}

unint64_t sub_1AFB6B56C()
{
  result = qword_1EB642CD0;
  if (!qword_1EB642CD0)
  {
    result = swift_getWitnessTable(byte_1AFE9D41C, &type metadata for LookAt.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642CD0);
  }

  return result;
}

void sub_1AFB6B5C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AFB6B56C();
    v7 = a3(a1, &type metadata for LookAt.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1AFB6B638()
{
  result = qword_1EB642CE0;
  if (!qword_1EB642CE0)
  {
    result = swift_getWitnessTable(aU_3, &type metadata for LookAt.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642CE0);
  }

  return result;
}

unint64_t sub_1AFB6B690()
{
  result = qword_1EB642CE8;
  if (!qword_1EB642CE8)
  {
    result = swift_getWitnessTable(byte_1AFE9D364, &type metadata for LookAt.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642CE8);
  }

  return result;
}

unint64_t sub_1AFB6B6E8()
{
  result = qword_1EB642CF0;
  if (!qword_1EB642CF0)
  {
    result = swift_getWitnessTable(byte_1AFE9D38C, &type metadata for LookAt.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642CF0);
  }

  return result;
}

uint64_t sub_1AFB6B73C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AFC0DCB0(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = v2 + 32;
  v5[1] = v3;
  result = sub_1AFB6F9F8(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1AFB6B7AC(uint64_t a1)
{
  while (1)
  {
    v2 = *(v1 + 8);
    v3 = *(v1 + 40);
    v4 = v2 - 1;
    if (v2 >= 1)
    {
      break;
    }

LABEL_7:
    v8 = -__clz(v2);
    if (v2 == -1)
    {
      v9 = 1;
    }

    else
    {
      v9 = 1 << v8;
    }

    *(v1 + 8) = v9;
    v11 = *(v1 + 24);
    v10 = *(v1 + 32);
    *(v1 + 24) = aligned_alloc(8uLL, 80 << v8);
    *(v1 + 32) = aligned_alloc(8uLL, 8 * v9);
    v12 = aligned_alloc(8uLL, 2 * v9);
    bzero(v12, 2 * v9);
    *(v1 + 40) = v12;
    *(v1 + 16) = 0;
    v13 = v3;
    v14 = v10;
    for (i = v11; v2; --v2)
    {
      v16 = *v13++;
      if (v16)
      {
        v17 = (*(v1 + 24) + 80 * sub_1AFB6B7AC(*v14));
        if (i != v17)
        {
          memmove(v17, i, 0x50uLL);
        }
      }

      i += 80;
      ++v14;
    }

    free(v11);
    free(v10);
    free(v3);
  }

  v5 = 0;
  v6 = v4 & a1;
  while (1)
  {
    result = (v6 + v5) & v4;
    if ((v3[result] & 1) == 0)
    {
      break;
    }

    if (v2 == ++v5)
    {
      goto LABEL_7;
    }
  }

  if (v5 >= 0xF)
  {
    v18 = v6 - 14;
    while (1)
    {
      v19 = v18 + v5;
      v20 = v3[(v18 + v5) & v4];
      v21 = v20 >> 1;
      v22 = __clz(__rbit32((v20 >> 1) | 0x10000));
      v23 = v20 >= 2 ? v22 : 15;
      if (v23 >= 0xE)
      {
        break;
      }

      v24 = v19 + v23;
      v25 = 14;
LABEL_33:
      v31 = (v5 + v6) & v4;
      v3[v19 & v4] = (2 * (((1 << v25) | v21) ^ (1 << (v23 & 0xF)))) | 1;
      v32 = v24 & v4;
      v3[v32] = v3[v24 & v4] ^ 1;
      v3[v31] |= 1u;
      v33 = *(v1 + 32);
      *(v33 + 8 * v31) = *(v33 + 8 * v32);
      *(v33 + 8 * v32) = 0;
      v34 = *(v1 + 24);
      v35 = (v34 + 80 * v31);
      v36 = (v34 + 80 * v32);
      if (v31 != v32 || v35 >= v36 + 80)
      {
        memmove(v35, v36, 0x50uLL);
      }

      v5 = v19 - v6 + v23;
      if (v5 < 15)
      {
        result = (v19 + v23) & v4;
        goto LABEL_17;
      }
    }

    v26 = 15;
    while (v26)
    {
      v27 = v3[++v19 & v4];
      v21 = v27 >> 1;
      v28 = __clz(__rbit32((v27 >> 1) | 0x10000));
      if (v27 >= 2)
      {
        v23 = v28;
      }

      else
      {
        v23 = 15;
      }

      v29 = v26 - 1;
      v30 = v26 - 2;
      --v26;
      if (v30 > v23)
      {
        if (v29)
        {
          v24 = v23 + v19;
          v25 = v29 - 1;
          goto LABEL_33;
        }

        break;
      }
    }

    v38 = __clz(v2);
    v39 = -v38;
    *(v1 + 8) = 1 << -v38;
    v41 = *(v1 + 24);
    v40 = *(v1 + 32);
    *(v1 + 24) = aligned_alloc(8uLL, 80 << -v38);
    *(v1 + 32) = aligned_alloc(8uLL, 8 << v39);
    v42 = 2 << v39;
    v43 = aligned_alloc(8uLL, v42);
    bzero(v43, v42);
    v44 = 0;
    *(v1 + 40) = v43;
    *(v1 + 16) = 0;
    v45 = v41;
    do
    {
      if (v3[v44])
      {
        v46 = (*(v1 + 24) + 80 * sub_1AFB6B7AC(v40[v44]));
        if (v45 != v46)
        {
          memmove(v46, v45, 0x50uLL);
        }
      }

      ++v44;
      v45 += 80;
    }

    while (v2 != v44);
    free(v41);
    free(v40);
    free(v3);
    if (*v1 == 1)
    {
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD000000000000065, 0x80000001AFF49870);
      v47 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v47);

      MEMORY[0x1B2718AE0](0x73696C6C6F632029, 0xEC000000736E6F69);
      result = sub_1AFDFE518();
      __break(1u);
    }

    else
    {
      *v1 = 1;
      result = sub_1AFB6B7AC(a1);
      *v1 = 0;
    }
  }

  else
  {
LABEL_17:
    v3[v6] |= 1 << ((v5 + 1) & 0xF);
    v3[result] |= 1u;
    *(*(v1 + 32) + 8 * result) = a1;
    ++*(v1 + 16);
  }

  return result;
}

void *sub_1AFB6BC3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1)
  {
    v9 = a2 - a1;
  }

  else
  {
    v9 = 0;
  }

  ecs_stack_allocator_deallocate(a5, a1, v9);
  result = ecs_stack_allocator_allocate(a5, a3, a4);
  if (result != a1)
  {
    v11 = result;
    memcpy(result, a1, v9);
    return v11;
  }

  return result;
}

uint64_t sub_1AFB6BCC4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 8);
  v4 = *(v3 + 16);
  if (v4)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1AFC07194(0, v4, 0);
    v6 = v15;
    ObjectType = swift_getObjectType();
    v8 = 32;
    do
    {
      sub_1AF62BFF0(*(v3 + v8), 0, ObjectType, a2);
      v16 = v6;
      v11 = *(v6 + 16);
      v10 = *(v6 + 24);
      if (v11 >= v10 >> 1)
      {
        v12 = v9;
        sub_1AFC07194(v10 > 1, v11 + 1, 1);
        v9 = v12;
        v6 = v16;
      }

      *(v6 + 16) = v11 + 1;
      *(v6 + 8 * v11 + 32) = v9;
      v8 += 8;
      --v4;
    }

    while (v4);

    v2 = v14;
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
  }

  *(v2 + 8) = v6;
  return result;
}

void sub_1AFB6BDF4(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = 0;
  a1[1] = v1;
}

uint64_t sub_1AFB6BE04(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C6169726574616DLL;
  }

  else
  {
    v3 = 1752393069;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE900000000000073;
  }

  if (*a2)
  {
    v5 = 0x6C6169726574616DLL;
  }

  else
  {
    v5 = 1752393069;
  }

  if (*a2)
  {
    v6 = 0xE900000000000073;
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

uint64_t sub_1AFB6BEA8()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFB6BF28(uint64_t a1)
{
  sub_1AFDFD038();
}

uint64_t sub_1AFB6BF94(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

void sub_1AFB6C01C(uint64_t *a1@<X8>)
{
  v2 = 1752393069;
  if (*v1)
  {
    v2 = 0x6C6169726574616DLL;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000073;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1AFB6C058()
{
  if (*v0)
  {
    return 0x6C6169726574616DLL;
  }

  else
  {
    return 1752393069;
  }
}

uint64_t sub_1AFB6C09C(uint64_t a1)
{
  v2 = sub_1AFB70810();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFB6C0D8(uint64_t a1)
{
  v2 = sub_1AFB70810();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFB6C114@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1AFB70590(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_1AFB6C15C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0x6C65646F6DLL;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0x80000001AFF22E00;
  }

  if (*a2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0x6C65646F6DLL;
  }

  if (*a2)
  {
    v6 = 0x80000001AFF22E00;
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

uint64_t sub_1AFB6C204()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFB6C288(uint64_t a1)
{
  sub_1AFDFD038();
}

uint64_t sub_1AFB6C2F8(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

void sub_1AFB6C384(unint64_t *a1@<X8>)
{
  v2 = 0x80000001AFF22E00;
  v3 = 0x6C65646F6DLL;
  if (*v1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_1AFB6C3C4()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6C65646F6DLL;
  }
}

uint64_t sub_1AFB6C40C(uint64_t a1)
{
  v2 = sub_1AFB708F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFB6C448(uint64_t a1)
{
  v2 = sub_1AFB708F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFB6C484(void *a1, uint64_t a2, uint64_t a3)
{
  v12 = a3;
  sub_1AFB70948(0, &qword_1EB642D00, sub_1AFB708F4, &type metadata for ModelRenderer.CodingKeys, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AFB708F4();
  sub_1AFDFF3F8();
  v14 = a2;
  v13 = 0;
  sub_1AF480018();
  sub_1AFDFE918();
  if (!v3)
  {
    v14 = v12;
    v13 = 1;
    sub_1AFDFE918();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1AFB6C644@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1AFB70330(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

__n128 sub_1AFB6C6BC(__n128 a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v6 = *(v5 + 56);
  v7 = *(v5 + 32);
  if (v6 != v7)
  {
    v8 = 2 * v6;
    __asm { FMOV            V0.4S, #1.0 }

    v29 = _Q0;
    do
    {
      v14 = *(v5 + 40);
      if (v6 == *(v5 + 48))
      {
        if (v8 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = v8;
        }

        *(v5 + 48) = v15;
        v14 = reallocf(v14, 16 * v15);
        _Q0 = v29;
        *(v5 + 40) = v14;
      }

      *(v14 + v6++) = _Q0;
      v8 += 2;
    }

    while (v7 != v6);
    *(v5 + 56) = v7;
    v6 = v7;
  }

  v16 = *(v5 + 16);
  if (v7 == *(v5 + 24))
  {
    v17 = 2 * v7;
    if (2 * v7 <= 1)
    {
      v17 = 1;
    }

    *(v5 + 24) = v17;
    v16 = reallocf(v16, v17 << 6);
    *(v5 + 16) = v16;
  }

  v18 = *(v5 + 32);
  v19 = &v16[64 * v18];
  *v19 = a1;
  v19[1] = a2;
  v19[2] = a3;
  v19[3] = a4;
  *(v5 + 32) = v18 + 1;
  v20 = *(v5 + 40);
  if (v6 == *(v5 + 48))
  {
    v21 = 2 * v6;
    if (2 * v6 <= 1)
    {
      v21 = 1;
    }

    *(v5 + 48) = v21;
    v20 = reallocf(v20, 16 * v21);
    *(v5 + 40) = v20;
  }

  v22 = *(v5 + 56);
  result = a5;
  v20[v22] = a5;
  *(v5 + 56) = v22 + 1;
  *(v5 + 64) = 1;
  return result;
}

void *sub_1AFB6C7E8()
{
  v1 = v0[3];
  v2 = v0[5];
  v3 = v0[7];
  if (v1)
  {
    v4 = v2 + 5;
    do
    {
      v5 = *v3++;
      if (v5)
      {
        v6 = *v4;
        free(*(v4 - 3));
        free(v6);
      }

      v4 += 10;
      --v1;
    }

    while (v1);
    v2 = v0[5];
    v3 = v0[7];
  }

  v7 = v0[6];
  free(v2);
  free(v7);
  free(v3);
  return v0;
}

double sub_1AFB6C87C()
{
  sub_1AFB6C7E8();

  swift_deallocClassInstance();
  return result;
}

void sub_1AFB6C8D4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4[3];
  if (v5)
  {
    v6 = 0;
    v46 = 0;
    v7 = v4[7];
    v8 = &unk_1ED72C000;
    v9 = 12;
    v10 = &type metadata for MeshModel;
    do
    {
      v11 = *v7++;
      if (v11)
      {
        v12 = (v4[5] + v6);
        v13 = *(v12 + 4);
        if (v13 >= 1)
        {
          if (a3)
          {
            v15 = *v12;
            v14 = v12[1];
            if ((*v12 != -1 || v14 != 0) && (v15 & 0x80000000) == 0)
            {
              v17 = (a2 + v8[284]);
              if (v17[1] > v15)
              {
                v18 = *v17 + v15 * v9;
                if (v14 == -1 || *(v18 + 8) == v14)
                {
                  v20 = *(*(*(*(a2 + 88) + 8 * *(v18 + 6) + 32) + 16) + 128);
                  if (*(v20 + 16))
                  {
                    v40 = *(*(*(a2 + 88) + 8 * *(v18 + 6) + 32) + 16);
                    v41 = v4;
                    v42 = a2;
                    v43 = a1;
                    v45 = a3;
                    v44 = a4;
                    v21 = *(v12 + 1);
                    v22 = *(v12 + 2);
                    v38 = *(v12 + 5);
                    v23 = *(v12 + 7);
                    v36 = v22;
                    v37 = v23;
                    v39 = *(*(a2 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 8 * v4[8] + 8);
                    v24 = sub_1AF449CB8(v10);
                    if (v25)
                    {
                      v26 = *(*(v40 + 24) + 16 * *(*(v20 + 56) + 8 * v24) + 32);
                      v10 = &type metadata for MeshModel;
                      a4 = v44;
                      a3 = v45;
                      a1 = v43;
                      v8 = &unk_1ED72C000;
                      v9 = 12;
                      if (v26 == &type metadata for MeshModel)
                      {
                        MEMORY[0x1EEE9AC00](v43);
                        a2 = v42;
                        *(&v36 - 16) = v42;
                        *(&v36 - 15) = v21;
                        v27 = v36;
                        *(&v36 - 14) = a3;
                        *(&v36 - 13) = v27;
                        v28 = v37;
                        v29 = v38;
                        *(&v36 - 12) = v13;
                        *(&v36 - 11) = v29;
                        *(&v36 - 10) = v28;
                        *(&v36 - 72) = 0;
                        *(&v36 - 8) = a2;
                        *(&v36 - 7) = a3;
                        *(&v36 - 48) = a4;
                        *(&v36 - 11) = v15;
                        *(&v36 - 10) = v14;
                        v30 = v39;
                        *(&v36 - 4) = v13;
                        *(&v36 - 3) = v30;
                        *(&v36 - 4) = a1;
                        *(&v36 - 12) = BYTE4(a1) & 1;
                        v4 = v41;
                        if (v17[1] > v15)
                        {
                          v31 = (*v17 + v15 * v9);
                          if (v14 == -1 || v31[2] == v14)
                          {
                            v32 = *(*(a2 + 144) + 8 * *v31 + 32);
                            v33 = *(v31 + 2);
                            v34 = v10;

                            v35 = v46;
                            sub_1AFA022C8(v32, v33, 16, sub_1AFB714B0);
                            v46 = v35;

                            v10 = v34;
                            v9 = 12;
                            v8 = &unk_1ED72C000;
                            a2 = v42;
                            a1 = v43;
                            a3 = v45;
                            a4 = v44;
                          }
                        }
                      }

                      else
                      {
                        v4 = v41;
                        a2 = v42;
                      }
                    }

                    else
                    {
                      v4 = v41;
                      a2 = v42;
                      a4 = v44;
                      a3 = v45;
                      a1 = v43;
                      v8 = &unk_1ED72C000;
                      v9 = 12;
                      v10 = &type metadata for MeshModel;
                    }
                  }
                }
              }
            }
          }
        }
      }

      v6 += 80;
      --v5;
    }

    while (v5);
  }
}

void *sub_1AFB6CBC8(void *a1)
{
  v2 = v1[4];
  v3 = ecs_stack_allocator_allocate(a1, 8 * v2, 8);
  v4 = v1[3];
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = v1[7];
    v8 = 72;
    do
    {
      if (*(v7 + 2 * v6))
      {
        v10 = v1[5];
        v11 = *(v1[6] + 8 * v6);
        v12 = *(v10 + v8);
        if ((*(v10 + v8 - 8) & 1) == 0)
        {
          *(v10 + v8) = ++v12;
        }

        if (v12 < 61)
        {
          *(v10 + v8 - 8) = 0;
          v9 = v10 + v8;
          *(v9 - 40) = 0;
          *(v9 - 16) = 0;
        }

        else
        {
          v13 = v10 + v8;
          v14 = *(v13 - 32);
          free(*(v13 - 56));
          free(v14);
          if (v5 == v2)
          {
            if (2 * v2 <= 1)
            {
              v15 = 1;
            }

            else
            {
              v15 = 2 * v2;
            }

            v3 = sub_1AFB6BC3C(v3, &v3[v2], 8 * v15, 8, a1);
            v2 = v15;
          }

          v3[v5++] = v11;
        }
      }

      ++v6;
      v8 += 80;
    }

    while (v4 != v6);
    if (v5)
    {
      v16 = 0;
      v17 = v1[3] - 1;
      do
      {
        v18 = v3[v16];
        v19 = v18 & v17;
        v20 = v1[7];
        v21 = *(v20 + 2 * (v18 & v17));
        if (v21 >= 2)
        {
          v22 = 0;
          v23 = *(v20 + 2 * (v18 & v17));
          while (1)
          {
            if ((v23 & 2) != 0)
            {
              v25 = (v19 + v22) & v17;
              if (*(v1[6] + 8 * v25) == v18)
              {
                break;
              }
            }

            v24 = v23;
            v23 >>= 1;
            ++v22;
            if (v24 <= 3)
            {
              goto LABEL_17;
            }
          }

          *(v20 + 2 * v19) = (1 << ((v22 + 1) & 0xF)) ^ v21;
          *(v20 + 2 * v25) ^= 1u;
          --v1[4];
        }

LABEL_17:
        ++v16;
      }

      while (v16 != v5);
    }
  }

  return ecs_stack_allocator_deallocate(a1, v3, 8 * v2);
}

void sub_1AFB6CDAC()
{
  v1 = *v0;
  type metadata accessor for RenderBuckets();
  swift_arrayDestroy();

  free(v1);
}

double sub_1AFB6CDF8@<D0>(uint64_t a1@<X8>)
{
  *a1 = aligned_alloc(8uLL, 8uLL);
  *&result = 1;
  *(a1 + 8) = xmmword_1AFE22A20;
  return result;
}

double sub_1AFB6CE34()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v6 = qword_1ED73B840;
  v7 = 0;
  v8 = 2;
  v9 = 0;
  v10 = 2;
  v11 = 0;

  sub_1AFCC53FC(1, 1, v2);

  sub_1AF5C52A8(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE4C620;
  *(inited + 32) = &type metadata for FrustumCulled;
  *(inited + 40) = &off_1F252B7C0;
  *(inited + 48) = &type metadata for LODCulled;
  *(inited + 56) = &off_1F252B740;
  sub_1AF5D1EC0(inited);
  sub_1AFB712F4(v2, sub_1AFB71354);
  swift_setDeallocating();
  result = *&v3;
  xmmword_1ED73B6D0 = v3;
  *&qword_1ED73B6E0 = v4;
  qword_1ED73B6F0 = v5;
  return result;
}

double sub_1AFB6CF60()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v6 = qword_1ED73B840;
  v7 = 0;
  v8 = 2;
  v9 = 0;
  v10 = 2;
  v11 = 0;

  sub_1AFCC53FC(1, 1, v2);

  sub_1AF5C52A8(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE4C620;
  *(inited + 32) = &type metadata for LODCulled;
  *(inited + 40) = &off_1F252B740;
  *(inited + 48) = &type metadata for WorldAABB;
  *(inited + 56) = &off_1F2510390;
  sub_1AF5D1EC0(inited);
  sub_1AFB712F4(v2, sub_1AFB71354);
  swift_setDeallocating();
  result = *&v3;
  xmmword_1ED73B6A8 = v3;
  unk_1ED73B6B8 = v4;
  qword_1ED73B6C8 = v5;
  return result;
}

uint64_t sub_1AFB6D08C(uint64_t a1)
{
  v2 = *(a1 + 184);

  sub_1AF6D2D90(&type metadata for MeshRenderSystemState, &off_1F2562848, v2);

  if (qword_1ED72B140 != -1)
  {
    swift_once();
  }

  v3 = xmmword_1ED73B6D0;
  v4 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  swift_getObjectType();
  v5 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v3);

  sub_1AF6B1B20(a1, v5, v3);
  os_unfair_lock_unlock(*(v4 + 40));
  if (qword_1ED72B138 != -1)
  {
    swift_once();
  }

  v6 = xmmword_1ED73B6A8;
  swift_getObjectType();
  v7 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v6);

  sub_1AF6B1B20(a1, v7, v6);
  os_unfair_lock_unlock(*(v4 + 40));
  swift_getObjectType();
  return sub_1AF6D6B58();
}

uint64_t sub_1AFB6D270(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 184);

  os_unfair_recursive_lock_lock_with_options();
  v3 = sub_1AF6D2A6C(&type metadata for MainCullGroup);
  if (v4 == 2 || (v4 & 1) == 0)
  {
    os_unfair_recursive_lock_unlock();
  }

  else
  {
    v6 = *(v2 + 16);
    v7 = 32 * v5;
    v8 = v3;
    os_unfair_lock_lock(*(*(v2 + 32) + 32 * v5 + 24));
    os_unfair_recursive_lock_unlock();
    v9 = *(v6 + v8);
    os_unfair_lock_unlock(*(*(v2 + 32) + v7 + 24));

    if (qword_1ED72B138 != -1)
    {
      swift_once();
    }

    v73[0] = xmmword_1ED73B6A8;
    v73[1] = unk_1ED73B6B8;
    v74 = qword_1ED73B6C8;
    sub_1AF6B06C0(v1, v73, 0x200000000, v66);
    if (*&v66[0])
    {
      if (v69 > 0)
      {
        v57 = *(&v67 + 1);
        if (*(&v67 + 1))
        {
          v56 = *(&v66[2] + 1);
          v11 = *(&v68 + 1);
          v12 = *(v68 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
          v13 = *(*(&v68 + 1) + 32);
          v70 = *&v66[0];
          v71 = *(v66 + 8);
          v72 = *(&v66[1] + 8);
          v65[2] = v66[2];
          v65[3] = v67;
          v65[4] = v68;
          v65[5] = v69;
          v65[0] = v66[0];
          v65[1] = v66[1];
          sub_1AF5DD298(v65, &v64);
          v14 = 0;
          v54 = v9;
          v55 = v1;
          v53 = v12;
          v52 = v13;
          while (1)
          {
            v15 = *(v56 + 48 * v14 + 40);
            if (v12)
            {
              v16 = *(v15 + 376);

              os_unfair_lock_lock(v16);
              os_unfair_lock_lock(*(v15 + 344));
            }

            else
            {
            }

            ecs_stack_allocator_push_snapshot(v13);
            v60 = *(v11 + 4);
            v61 = *(v11 + 3);
            v59 = v11[10];
            v17 = *(*(*(*(v15 + 40) + 16) + 32) + 16) + 1;
            v11[6] = ecs_stack_allocator_allocate(v11[4], 48 * v17, 8);
            v11[7] = v17;
            v11[9] = 0;
            v11[10] = 0;
            v11[8] = 0;
            v18 = *(v1 + 136);

            os_unfair_lock_lock(v18);
            v62 = v15;
            v19 = *(v15 + 188);
            v20 = *(v1 + 104);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v1 + 104) = v20;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              *(v1 + 104) = sub_1AFC0D9B8(v20);
            }

            sub_1AF6211D0(v19, 0, 0, v9);
            os_unfair_lock_unlock(*(v1 + 136));
            v22 = v62;

            v23 = v11[6];
            v63 = v11[8];
            if (!v63)
            {
              v47 = v11[7];
              v48 = v11[4];
              goto LABEL_45;
            }

            v58 = v14;
            for (i = 0; i != v63; ++i)
            {
              v26 = v23;
              v27 = (v23 + 48 * i);
              v28 = *v27;
              v29 = v27[4];
              v30 = v11;
              v31 = v11[9];
              if (v31)
              {
                v32 = v28 == v31;
              }

              else
              {
                v32 = 0;
              }

              if (v32)
              {
                goto LABEL_17;
              }

              v33 = v70;
              if (!v70[11])
              {
                goto LABEL_17;
              }

              v34 = v27[2];
              v35 = v70 + 41;
              v36 = v70[9];
              if (v36 >= 0x10)
              {
                v37 = &v35[v70[8]];
                v38 = v36 >> 4;
                v39 = v70 + 41;
                while (*v37 != v28)
                {
                  ++v39;
                  v37 += 16;
                  if (!--v38)
                  {
                    goto LABEL_33;
                  }
                }

                v40 = v39[v70[10]];
                v41 = v40 > 5;
                v42 = (1 << v40) & 0x23;
                if (v41 || v42 == 0)
                {
LABEL_17:

                  v29(v25);

                  goto LABEL_18;
                }
              }

LABEL_33:
              if (swift_conformsToProtocol2() && v34)
              {
                if (sub_1AF5FC8D8(v34))
                {
                  goto LABEL_17;
                }

                v44 = v33[9];
                if (v44 < 0x10)
                {
                  goto LABEL_17;
                }

                v45 = &v35[v33[8]];
                v46 = 16 * (v44 >> 4);
                while (*v45 != v34)
                {
                  v45 += 16;
                  v46 -= 16;
                  if (!v46)
                  {
                    goto LABEL_17;
                  }
                }
              }

LABEL_18:
              v11 = v30;
              v23 = v26;
            }

            v47 = v30[7];
            v23 = v30[6];
            v48 = v30[4];
            if (v30[8] >= 1)
            {
              v49 = v30[6];
              swift_arrayDestroy();
              v23 = v49;
            }

            v9 = v54;
            v1 = v55;
            v12 = v53;
            v13 = v52;
            v14 = v58;
            v22 = v62;
LABEL_45:
            ecs_stack_allocator_deallocate(v48, v23, 48 * v47);
            *(v11 + 3) = v61;
            *(v11 + 4) = v60;
            v11[10] = v59;
            sub_1AF62D29C(v22);
            ecs_stack_allocator_pop_snapshot(v13);
            if (v12)
            {
              os_unfair_lock_unlock(*(v22 + 344));
              os_unfair_lock_unlock(*(v22 + 376));
            }

            if (++v14 == v57)
            {
              sub_1AF5D1564(v66);
              break;
            }
          }
        }
      }

      v10 = sub_1AF5D1564(v66);
    }

    MEMORY[0x1EEE9AC00](v10);
    v51 = *(v1 + 184);

    sub_1AF6D655C(&type metadata for MeshRenderSystemState, &off_1F2562848, v51, sub_1AFB709B0);
  }
}

uint64_t sub_1AFB6D864(void **a1, uint64_t a2, unint64_t a3, uint64_t a4, _OWORD *a5, int a6)
{
  if (qword_1ED72B140 != -1)
  {
    v68 = a3;
    swift_once();
    a3 = v68;
  }

  v8 = 1 << a3;
  if (a3 >= 0x40)
  {
    v8 = 0;
  }

  if (a3 > 0x40)
  {
    v8 = 0;
  }

  v112 = xmmword_1ED73B6D0;
  v113 = DWORD2(xmmword_1ED73B6D0);
  v114 = BYTE12(xmmword_1ED73B6D0);
  v115 = qword_1ED73B6E0;
  v116 = byte_1ED73B6E8;
  v117 = v8;

  sub_1AF6B06C0(a2, &v112, 0x200000000, v100);
  v96 = *&v100[32];
  v97 = v101;
  v98 = v102;
  v99 = v103;
  v94 = *v100;
  v95 = *&v100[16];

  v71 = a2;
  if (a1[2])
  {
    v9 = *a1;
    v10 = *(*(*(a2 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 8) + 32);

    sub_1AFB6CBC8(v10);
  }

  else
  {
    type metadata accessor for RenderBuckets();
    v11 = swift_allocObject();
    v12 = aligned_alloc(8uLL, 0xA00uLL);
    v13 = aligned_alloc(8uLL, 0x100uLL);
    v14 = aligned_alloc(8uLL, 0x40uLL);
    *v14 = 0u;
    v14[1] = 0u;
    v14[2] = 0u;
    v14[3] = 0u;
    *(v11 + 16) = 0;
    *(v11 + 24) = xmmword_1AFE9D470;
    *(v11 + 40) = v12;
    *(v11 + 48) = v13;
    *(v11 + 56) = v14;
    *(v11 + 64) = 0;
    if (!a1[1])
    {
      a1[1] = 1;
      v15 = *a1;
      *a1 = aligned_alloc(8uLL, 8uLL);
      free(v15);
    }

    v16 = *a1;
    *v16 = v11;
    v9 = v16;
    a1[2] = 1;
  }

  *(*v9 + 64) = 0;
  if (*v100)
  {
    v78 = v103;
    if (v103 >= 1)
    {
      v77 = *(&v101 + 1);
      if (*(&v101 + 1))
      {
        v75 = *&v100[40];
        v17 = *(&v102 + 1);
        v74 = v102;
        v18 = *(v102 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v84 = *(*(&v102 + 1) + 32);
        v104 = *v100;
        v105 = *&v100[8];
        v106 = *&v100[24];
        v87 = v96;
        v88 = v97;
        v89 = v98;
        v90 = v99;
        v85 = v94;
        v86 = v95;
        sub_1AF5DD298(&v85, v107);
        v19 = 0;
        v73 = v18;
        v76 = a1;
        v118 = v17;
        while (1)
        {
          v83 = v19;
          v20 = (v75 + 48 * v19);
          v21 = *v20;
          v22 = v20[1];
          v23 = v20[2];
          v24 = *(v20 + 2);
          v25 = *(v20 + 3);
          v26 = *(v20 + 4);
          v27 = *(v20 + 5);
          if (v18)
          {
            v28 = *(v27 + 376);

            os_unfair_lock_lock(v28);
            os_unfair_lock_lock(*(v27 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v84);
          v80 = *(v17 + 4);
          v81 = *(v17 + 3);
          v79 = v17[10];
          v29 = *(*(*(*(v27 + 40) + 16) + 32) + 16) + 1;
          v17[6] = ecs_stack_allocator_allocate(v17[4], 48 * v29, 8);
          v17[7] = v29;
          v17[9] = 0;
          v17[10] = 0;
          v17[8] = 0;
          v107[0] = v74;
          v107[1] = v27;
          v82 = v27;
          v107[2] = v17;
          v107[3] = v23;
          v107[4] = (v22 - v21 + v23);
          v107[5] = v78;
          v107[6] = v21;
          v107[7] = v22;
          v107[8] = 0;
          v107[9] = 0;
          v108 = 1;
          v109 = v24;
          v110 = v25;
          v111 = v26;
          sub_1AFB70E50(v107, v76);
          v30 = v17[6];
          v31 = v17[8];
          if (!v31)
          {
            v54 = v17[7];
            v55 = v17[4];
            goto LABEL_49;
          }

          for (i = 0; i != v31; ++i)
          {
            v34 = v30;
            v35 = (v30 + 48 * i);
            v36 = *v35;
            v37 = v35[4];
            v38 = v118[9];
            if (v38)
            {
              v39 = v36 == v38;
            }

            else
            {
              v39 = 0;
            }

            if (v39)
            {
              goto LABEL_22;
            }

            v40 = v104;
            if (!v104[11])
            {
              goto LABEL_22;
            }

            v41 = v35[2];
            v42 = v104 + 41;
            v43 = v104[9];
            if (v43 >= 0x10)
            {
              v44 = &v42[v104[8]];
              v45 = v43 >> 4;
              v46 = v104 + 41;
              while (*v44 != v36)
              {
                ++v46;
                v44 += 16;
                if (!--v45)
                {
                  goto LABEL_38;
                }
              }

              v47 = v46[v104[10]];
              v48 = v47 > 5;
              v49 = (1 << v47) & 0x23;
              if (v48 || v49 == 0)
              {
LABEL_22:

                v37(v33);

                goto LABEL_23;
              }
            }

LABEL_38:
            if (swift_conformsToProtocol2() && v41)
            {
              if (sub_1AF5FC8D8(v41))
              {
                goto LABEL_22;
              }

              v51 = v40[9];
              if (v51 < 0x10)
              {
                goto LABEL_22;
              }

              v52 = &v42[v40[8]];
              v53 = 16 * (v51 >> 4);
              while (*v52 != v41)
              {
                v52 += 16;
                v53 -= 16;
                if (!v53)
                {
                  goto LABEL_22;
                }
              }
            }

LABEL_23:
            v30 = v34;
          }

          v17 = v118;
          v54 = v118[7];
          v30 = v118[6];
          v55 = v118[4];
          if (v118[8] >= 1)
          {
            v56 = v118[6];
            swift_arrayDestroy();
            v30 = v56;
          }

LABEL_49:
          v18 = v73;
          ecs_stack_allocator_deallocate(v55, v30, 48 * v54);
          *(v17 + 3) = v81;
          *(v17 + 4) = v80;
          v17[10] = v79;
          sub_1AF62D29C(v82);
          ecs_stack_allocator_pop_snapshot(v84);
          if (v73)
          {
            os_unfair_lock_unlock(*(v82 + 344));
            os_unfair_lock_unlock(*(v82 + 376));
          }

          v19 = v83 + 1;
          if (v83 + 1 == v77)
          {
            sub_1AF5D1564(v100);
            break;
          }
        }
      }
    }
  }

  v57 = a5[41];
  v91 = a5[40];
  v92 = v57;
  v93[0] = a5[42];
  v58 = a5[37];
  v87 = a5[36];
  v88 = v58;
  v59 = a5[39];
  v89 = a5[38];
  v90 = v59;
  v60 = a5[35];
  v85 = a5[34];
  v86 = v60;
  *(v93 + 9) = *(a5 + 681);
  if (sub_1AF448314(&v85) == 1)
  {
    goto LABEL_60;
  }

  v61 = *(&v85 + 1);
  ObjectType = swift_getObjectType();
  v63 = *(v61 + 152);
  swift_unknownObjectRetain();
  v64 = v63(ObjectType, v61);
  swift_unknownObjectRelease();
  if (BYTE4(v64))
  {
    if (BYTE4(v64) == 2)
    {
      v65 = 0;
      v66 = 1;
      goto LABEL_57;
    }

LABEL_60:
    result = sub_1AFDFE518();
    __break(1u);
    return result;
  }

  v65 = v64;
  v66 = v64 == 0;
LABEL_57:
  if ((*(v71 + OBJC_IVAR____TtC3VFX13EntityManager_isInPrepare) & 1) == 0)
  {

    sub_1AFB6C8D4(v65 | (v66 << 32), a4, a5, a6);
  }

  return sub_1AF5D1564(v100);
}

uint64_t sub_1AFB6E000(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (!a2)
  {
    return result;
  }

  v4 = *(*(a2 + 200) + 24);
  if (v4 == 2)
  {
    goto LABEL_105;
  }

  if ((v4 & 1) == 0)
  {
    return result;
  }

  v5 = result;
  v6 = *(result + OBJC_IVAR____TtC3VFX13EntityManager_clock + 8);
  v7 = *(a2 + 392) ? 0 : 0x4000;

  sub_1AF0D8CC8(&v181);

  *&v187[4] = v181;
  *&v187[20] = v182;
  *&v187[36] = v183;
  *&v187[52] = v184;
  *&v187[68] = v185;
  *&v187[84] = v186;
  v158 = v7;
  v199 = v7;
  v200 = *v187;
  v201 = *&v187[16];
  *&v204[12] = *&v187[76];
  *v204 = *&v187[64];
  v203 = *&v187[48];
  v202 = *&v187[32];
  v9 = *(a2 + 560);
  v188[0] = *(a2 + 544);
  v188[1] = v9;
  v10 = *(a2 + 576);
  v11 = *(a2 + 592);
  v12 = *(a2 + 608);
  v188[5] = *(a2 + 624);
  v188[4] = v12;
  v188[3] = v11;
  v188[2] = v10;
  v13 = *(a2 + 640);
  v14 = *(a2 + 656);
  v139 = a2;
  v15 = *(a2 + 672);
  *(v189 + 9) = *(a2 + 681);
  v189[0] = v15;
  v188[7] = v14;
  v188[6] = v13;
  if (sub_1AF448314(v188) == 1)
  {
LABEL_105:
    sub_1AFDFE518();
    __break(1u);

    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v16 = *(&v188[0] + 1);
  ObjectType = swift_getObjectType();
  v18 = *(v16 + 152);
  swift_unknownObjectRetain();
  v19 = v18(ObjectType, v16);
  swift_unknownObjectRelease();
  v20 = *(v3 + 32);
  v220[0] = *(v3 + 16);
  v220[1] = v20;
  v221 = *(v3 + 48);
  v144 = v5;
  sub_1AF6B06C0(v5, v220, v19 & 0xFFFFFFFFFFLL, v190);
  v177 = *&v190[32];
  v178 = v191;
  v179 = v192;
  v180 = v193;
  v175 = *v190;
  v176 = *&v190[16];
  v21 = *v190;
  if (!*v190)
  {
  }

  v146 = *&v190[40];
  v147 = *(&v191 + 1);
  v22 = *(&v192 + 1);
  v140 = v192;
  v142 = v193;
  v194 = *&v190[8];
  v195 = *&v190[24];

  v23 = sub_1AFBE502C(v6);

  v24 = sub_1AFDFE238();
  v26 = v25;

  v27 = v139;
  sub_1AF7180FC();

  v28 = 0;
  v29 = sub_1AF6F3D60(v23, v24, v26);
  swift_bridgeObjectRelease_n();
  sub_1AF709E8C(v29);
  swift_unknownObjectRelease();

  sub_1AFBE5ADC(v5, v139);
  if (!*(*(v139 + 280) + 64))
  {
    v69 = sub_1AF6F3FF4(0, v30);
    if (v69)
    {
      v71 = v69;
      v72 = thread_worker_index(v70);
      if (*v72 == -1)
      {
        v74 = *(v5 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
      }

      else
      {
        v74 = (*(v5 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 8 * *v72 + 8);
      }

      v75 = *v74;
      *&v209 = 0;
      v208 = 0u;
      v207 = 0u;
      *(v73 + 228) = 0u;
      *(v73 + 244) = 0u;
      *&v172[8] = 0u;
      *&v172[24] = xmmword_1AFE22A20;
      v173 = xmmword_1AFE22A20;
      v174 = xmmword_1AFE22A20;
      LOBYTE(v170) = 0;
      *&v168 = v5;
      *(&v168 + 1) = v139;
      *(&v169 + 1) = 1;
      *&v169 = v75;

      sub_1AF5FD5D8(&v207, &v170 + 8);
      if (v142 <= 0)
      {

        sub_1AF5D1564(v190);

        swift_unknownObjectRelease();
      }

      else
      {
        if (v147)
        {
          v130 = v23;
          v151 = *(v22 + 32);
          v149 = *(v140 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
          v196 = v21;
          v197 = v194;
          v198 = v195;
          v167[2] = v177;
          v167[3] = v178;
          v167[4] = v179;
          v167[5] = v180;
          v167[0] = v175;
          v167[1] = v176;
          sub_1AF5DD298(v167, &v207);
          v76 = 0;
          do
          {
            v143 = v76;
            v145 = v28;
            v77 = (v146 + 48 * v76);
            v78 = *v77;
            v79 = v77[1];
            v80 = *(v77 + 3);
            v157 = *(v77 + 2);
            v82 = *(v77 + 4);
            v81 = *(v77 + 5);
            if (v149)
            {
              v83 = *(v81 + 376);

              os_unfair_lock_lock(v83);
              os_unfair_lock_lock(*(v81 + 344));
            }

            else
            {
            }

            ecs_stack_allocator_push_snapshot(v151);
            v84 = *(v22 + 64);
            v205[0] = *(v22 + 48);
            v205[1] = v84;
            v206 = *(v22 + 80);
            v85 = *(*(*(*(v81 + 40) + 16) + 32) + 16) + 1;
            *(v22 + 48) = ecs_stack_allocator_allocate(*(v22 + 32), 48 * v85, 8);
            *(v22 + 56) = v85;
            *(v22 + 72) = 0;
            *(v22 + 80) = 0;
            *(v22 + 64) = 0;
            v141 = v81;
            v86 = sub_1AF64B110(&type metadata for DrawCallComponent, &off_1F2560850, v157, v80, v82, v22);
            if (v78 != v79)
            {
              v87 = v79 - v78;
              v88 = &v86[8 * v78];
              do
              {
                v90 = *v88;
                v91 = *(*v88 + 232);
                if (*(v91 + 16))
                {
                  *&v166[36] = v183;
                  *&v166[52] = v184;
                  *&v166[68] = v185;
                  *&v166[84] = v186;
                  *&v166[4] = v181;
                  *&v166[20] = v182;
                  v214 = v158;
                  v215 = *v166;
                  v216 = *&v166[16];
                  *&v219[12] = *&v166[76];
                  v218 = *&v166[48];
                  *v219 = *&v166[64];
                  v217 = *&v166[32];
                  v92 = sub_1AF419A14(&v214);
                  if (v93)
                  {
                    v94 = (*(v91 + 56) + 24 * v92);
                    v95 = *v94;
                    v96 = v94[1];
                    v97 = swift_getObjectType();

                    swift_unknownObjectRetain();
                    swift_unknownObjectRetain();
                    [v71 setRenderPipelineState_];
                    [v71 setDepthStencilState_];
                    if (*(v90 + 152))
                    {
                      v98 = *(v90 + 120) == 0;
                    }

                    else
                    {
                      v98 = *(v90 + 120);
                    }

                    [v71 setFrontFacingWinding_];
                    [v71 setCullMode_];
                    [v71 setTriangleFillMode_];
                    if ((*(*(&v168 + 1) + 24) & 8) != 0)
                    {
                      [v71 setDepthClipMode_];
                    }

                    [v71 setStencilFrontReferenceValue:*(v90 + 112) backReferenceValue:*(v90 + 116)];
                    v99 = *(v90 + 320);
                    v211 = *(v90 + 304);
                    v212 = v99;
                    v213 = *(v90 + 336);
                    v100 = *(v90 + 256);
                    v207 = *(v90 + 240);
                    v208 = v100;
                    v101 = *(v90 + 272);
                    if (*(v90 + 208) <= 0)
                    {
                      v102 = 3;
                    }

                    else
                    {
                      v102 = 26;
                    }

                    v210 = *(v90 + 288);
                    v209 = v101;
                    sub_1AF5FD904(&v207, v164);
                    sub_1AFB488A0(&v207, v71, &v168, v102);
                    sub_1AF5FD960(&v207);
                    v103 = *(v90 + 160);
                    if (v103)
                    {
                      v104 = *(v90 + 168);
                      swift_unknownObjectRetain();
                      [v71 setTessellationFactorBuffer:v103 offset:v104 instanceStride:0];
                      swift_unknownObjectRelease();
                      v105 = *(v90 + 80);
                      v106 = *(v90 + 88);
                      v107 = *(v90 + 32);
                      if (v107)
                      {
                        v89 = *(v90 + 40);
                        swift_unknownObjectRetain();
                      }

                      else
                      {
                        v89 = 0;
                      }

                      [v71 drawPatches:0 patchStart:v106 patchCount:v105 patchIndexBuffer:v107 patchIndexBufferOffset:v89 instanceCount:*(v90 + 96) baseInstance:*(v90 + 104)];
                      swift_unknownObjectRelease();

                      swift_unknownObjectRelease();
                      swift_unknownObjectRelease();
                    }

                    else
                    {
                      v108 = *(v90 + 352);
                      if (v108)
                      {
                        v109 = *(v90 + 208);
                        v110 = v109;
                        v153 = *(v90 + 360);
                        if (v109 <= 0)
                        {
                          v124 = *(v90 + 32);
                          if (v124)
                          {
                            v138 = *(v90 + 40);
                            v134 = *(v90 + 16);
                            v125 = *(v90 + 48);
                            swift_unknownObjectRetain();
                            swift_unknownObjectRetain();
                            [v71 drawIndexedPrimitives:v134 indexType:v125 indexBuffer:v124 indexBufferOffset:v138 indirectBuffer:v108 indirectBufferOffset:v153];
                            swift_unknownObjectRelease();
                          }

                          else
                          {
                            v127 = *(v90 + 16);
                            swift_unknownObjectRetain();
                            [v71 drawPrimitives:v127 indirectBuffer:v108 indirectBufferOffset:v153];
                          }
                        }

                        else
                        {
                          v136 = *(v90 + 208);
                          v111 = *(v90 + 192);
                          v112 = v111;
                          v113 = SDWORD1(v111);
                          v131 = SDWORD2(v111);
                          swift_unknownObjectRetain();
                          sub_1AF4674F0(v112, v113, v131, v164);
                          v132 = *v164;
                          v114 = *&v164[16];
                          sub_1AF4674F0(v110, SDWORD1(v136), SDWORD2(v136), v164);
                          v115 = *&v164[16];
                          v116 = *v164;
                          *v164 = v132;
                          *&v164[16] = v114;
                          v162 = v116;
                          v163 = v115;
                          [v71 drawMeshThreadgroupsWithIndirectBuffer:v108 indirectBufferOffset:v153 threadsPerObjectThreadgroup:v164 threadsPerMeshThreadgroup:&v162];
                        }

                        swift_unknownObjectRelease();
                      }

                      else
                      {
                        v117 = *(v90 + 208);
                        v118 = v117.u32[0];
                        if (v117.i32[0] <= 0)
                        {
                          v126 = *(v90 + 32);
                          if (v126)
                          {
                            v128 = v97;
                            sub_1AF6F5C4C(*(v90 + 16), *(v90 + 56), *(v90 + 48), v126, *(v90 + 40), *(v90 + 96), *(v90 + 88), *(v90 + 104));
                          }

                          else
                          {
                            [v71 drawPrimitives:*(v90 + 16) vertexStart:*(v90 + 88) vertexCount:*(v90 + 80) instanceCount:*(v90 + 96) baseInstance:*(v90 + 104)];
                          }
                        }

                        else
                        {
                          v119 = vaddq_s32(*(v90 + 176), v117);
                          v137 = *(v90 + 208);
                          sub_1AF4674F0((v119.i32[0] - 1) / v117.i32[0], (v119.i32[1] - 1) / v117.i32[1], (v119.i32[2] - 1) / v117.i32[2], v164);
                          v154 = *v164;
                          v120 = *&v164[16];
                          sub_1AF4674F0(*(v90 + 192), HIDWORD(*(v90 + 192)), *(v90 + 200), v164);
                          v133 = *v164;
                          v121 = *&v164[16];
                          sub_1AF4674F0(v118, SDWORD1(v137), SDWORD2(v137), v164);
                          v122 = *&v164[16];
                          v123 = *v164;
                          *v164 = v154;
                          *&v164[16] = v120;
                          v162 = v133;
                          v163 = v121;
                          v160 = v123;
                          v161 = v122;
                          [v71 drawMeshThreadgroups:v164 threadsPerObjectThreadgroup:&v162 threadsPerMeshThreadgroup:&v160];
                        }
                      }

                      swift_unknownObjectRelease();
                      swift_unknownObjectRelease();
                    }
                  }
                }

                v88 += 8;
                --v87;
              }

              while (v87);
            }

            v28 = v145;
            sub_1AF630994(v22, &v196, v205);
            sub_1AF62D29C(v141);
            ecs_stack_allocator_pop_snapshot(v151);
            if (v149)
            {
              os_unfair_lock_unlock(*(v141 + 344));
              os_unfair_lock_unlock(*(v141 + 376));
            }

            v76 = v143 + 1;
          }

          while (v143 + 1 != v147);
          swift_unknownObjectRelease();

          sub_1AF5D1564(v190);
          sub_1AF5D1564(v190);
        }

        else
        {
          v209 = v177;
          v210 = v178;
          v211 = v179;
          v212 = v180;
          v207 = v175;
          v208 = v176;
          sub_1AF5DD298(&v207, v164);
          swift_unknownObjectRelease();

          sub_1AF5D1564(v190);
          sub_1AF5D1564(v190);
        }
      }

      return sub_1AF5FD668(&v168);
    }

    goto LABEL_94;
  }

  if (v142 <= 0)
  {
LABEL_94:

    sub_1AF5D1564(v190);
  }

  if (v147)
  {
    v129 = v23;
    v31 = *(v140 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v159 = *(v22 + 32);
    *v164 = v21;
    *&v164[8] = v194;
    v165 = v195;
    v209 = v177;
    v210 = v178;
    v211 = v179;
    v212 = v180;
    v207 = v175;
    v208 = v176;
    sub_1AF5DD298(&v207, &v168);
    v32 = 0;
    v135 = v31;
    while (1)
    {
      v33 = v27;
      v156 = v32;
      v34 = (v146 + 48 * v32);
      v35 = *v34;
      v36 = v34[1];
      v37 = v34[2];
      v38 = *(v34 + 2);
      v39 = *(v34 + 3);
      v40 = *(v34 + 4);
      v41 = *(v34 + 5);
      if (v31)
      {
        v42 = *(v41 + 376);

        os_unfair_lock_lock(v42);
        os_unfair_lock_lock(*(v41 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v159);
      v150 = *(v22 + 64);
      v152 = *(v22 + 48);
      v148 = *(v22 + 80);
      v43 = *(*(*(*(v41 + 40) + 16) + 32) + 16) + 1;
      *(v22 + 48) = ecs_stack_allocator_allocate(*(v22 + 32), 48 * v43, 8);
      *(v22 + 56) = v43;
      *(v22 + 72) = 0;
      *(v22 + 80) = 0;
      *(v22 + 64) = 0;
      LOBYTE(v214) = 1;
      *&v168 = v140;
      v155 = v41;
      *(&v168 + 1) = v41;
      *&v169 = v22;
      *(&v169 + 1) = v37;
      *&v170 = (v36 - v35 + v37);
      *(&v170 + 1) = v142;
      *&v171 = v35;
      *(&v171 + 1) = v36;
      *v172 = 0uLL;
      v172[16] = 1;
      *&v172[24] = v38;
      *&v172[32] = v39;
      *&v173 = v40;
      v27 = v33;
      sub_1AFB6F038(&v168, v33, v144, &v199);
      v44 = *(v22 + 48);
      v45 = *(v22 + 64);
      if (!v45)
      {
        v66 = *(v22 + 56);
        v67 = *(v22 + 32);
        v68 = v156;
        goto LABEL_47;
      }

      for (i = 0; i != v45; ++i)
      {
        v48 = (v44 + 48 * i);
        v49 = *v48;
        v50 = v48[4];
        v51 = *(v22 + 72);
        if (v51)
        {
          v52 = v49 == v51;
        }

        else
        {
          v52 = 0;
        }

        if (v52 || !*(*v164 + 22))
        {
          goto LABEL_19;
        }

        v53 = v48[2];
        v54 = *v164 + 41;
        v55 = *(*v164 + 18);
        if (v55 >= 0x10)
        {
          v56 = (v54 + *(*v164 + 16));
          v57 = v55 >> 4;
          v58 = *v164 + 41;
          while (*v56 != v49)
          {
            ++v58;
            v56 += 2;
            if (!--v57)
            {
              goto LABEL_35;
            }
          }

          v59 = *(v58 + *(*v164 + 20));
          v60 = v59 > 5;
          v61 = (1 << v59) & 0x23;
          if (v60 || v61 == 0)
          {
LABEL_19:

            v50(v47);

            continue;
          }
        }

LABEL_35:
        if (swift_conformsToProtocol2() && v53)
        {
          if (sub_1AF5FC8D8(v53))
          {
            goto LABEL_19;
          }

          v63 = *(*v164 + 18);
          if (v63 < 0x10)
          {
            goto LABEL_19;
          }

          v64 = (v54 + *(*v164 + 16));
          v65 = 16 * (v63 >> 4);
          while (*v64 != v53)
          {
            v64 += 2;
            v65 -= 16;
            if (!v65)
            {
              goto LABEL_19;
            }
          }
        }
      }

      v66 = *(v22 + 56);
      v44 = *(v22 + 48);
      v67 = *(v22 + 32);
      v68 = v156;
      if (*(v22 + 64) >= 1)
      {
        swift_arrayDestroy();
      }

      v27 = v139;
LABEL_47:
      ecs_stack_allocator_deallocate(v67, v44, 48 * v66);
      *(v22 + 48) = v152;
      *(v22 + 64) = v150;
      *(v22 + 80) = v148;
      sub_1AF62D29C(v155);
      ecs_stack_allocator_pop_snapshot(v159);
      v31 = v135;
      if (v135)
      {
        os_unfair_lock_unlock(*(v155 + 344));
        os_unfair_lock_unlock(*(v155 + 376));
      }

      v32 = v68 + 1;
      if (v32 == v147)
      {

        goto LABEL_98;
      }
    }
  }

  v170 = v177;
  v171 = v178;
  *v172 = v179;
  *&v172[16] = v180;
  v168 = v175;
  v169 = v176;
  sub_1AF5DD298(&v168, &v207);

LABEL_98:
  sub_1AF5D1564(v190);

  return sub_1AF5D1564(v190);
}

void *sub_1AFB6F038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 16);
  result = sub_1AF6F3FF4(v8[3], a2);
  if (result)
  {
    v10 = result;
    v19 = 0;
    v20[0] = a3;
    memset(v18, 0, sizeof(v18));
    memset(v22, 0, 48);
    v22[3] = xmmword_1AFE22A20;
    v22[4] = xmmword_1AFE22A20;
    v22[5] = xmmword_1AFE22A20;
    v21 = 0;
    v20[1] = a2;
    v20[2] = v8;
    v20[3] = 1;

    sub_1AF5FD5D8(v18, v22);
    v11 = sub_1AF64B110(&type metadata for DrawCallComponent, &off_1F2560850, *(a1 + 88), *(a1 + 96), *(a1 + 104), v8);
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    v14 = v13 - v12;
    if (v13 != v12)
    {
      v15 = &v11[8 * v12];
      do
      {
        v15 += 8;

        sub_1AFB416F0(v16, a4, 0, 0, v17, 0, v10, v20, 0);

        --v14;
      }

      while (v14);
    }

    swift_unknownObjectRelease();
    return sub_1AF5FD668(v20);
  }

  return result;
}

double sub_1AFB6F1C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 >= 2u && a2 != 0)
  {
    v6 = *(*(a2 + 200) + 24);
    if (v6 == 2)
    {
      goto LABEL_32;
    }

    if ((v6 & 0x100) == 0)
    {
      return result;
    }

    v8 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 8);

    v9 = sub_1AFBE5C9C(v8);

    sub_1AFDFE238();

    sub_1AF7180FC();

    v10 = sub_1AF6F3D60(v9, 0, 0);
    v44 = v9;
    sub_1AF709E8C(v10);

    sub_1AF0D879C(&v53, 4);
    sub_1AF0D879C(&v56, 5);
    v11 = v55;
    v12 = v54;
    sub_1AF0D879C(&v58, 19);
    sub_1AF0D8F38(&v53);
    sub_1AF0D8F38(&v58);
    sub_1AF0D8F38(&v56);
    v13 = v57 == 260 ? 260 : 0;
    v14 = v11 <= 1 ? 1 : v11;
    v74 = 0;
    v75 = v12;
    v76 = 0;
    v77 = 0;
    v78 = 0;
    v79 = v59;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v83 = v57;
    v84 = v13;
    v85 = v14;
    sub_1AFBE5ADC(a1, a2);
    v15 = *(a2 + 656);
    v51[6] = *(a2 + 640);
    v51[7] = v15;
    v52[0] = *(a2 + 672);
    *(v52 + 9) = *(a2 + 681);
    v16 = *(a2 + 592);
    v51[2] = *(a2 + 576);
    v51[3] = v16;
    v17 = *(a2 + 624);
    v51[4] = *(a2 + 608);
    v51[5] = v17;
    v18 = *(a2 + 560);
    v51[0] = *(a2 + 544);
    v51[1] = v18;
    if (sub_1AF448314(v51) == 1)
    {
LABEL_32:
      while (1)
      {
        sub_1AFDFE518();
        __break(1u);
      }
    }

    v19 = *(&v51[0] + 1);
    ObjectType = swift_getObjectType();
    v21 = *(v19 + 152);
    swift_unknownObjectRetain();
    v22 = v21(ObjectType, v19);
    swift_unknownObjectRelease();
    v23 = *(v3 + 32);
    v86[0] = *(v3 + 16);
    v86[1] = v23;
    v87 = *(v3 + 48);
    sub_1AF6B06C0(a1, v86, v22 & 0xFFFFFFFFFFLL, &v60);
    if (v60)
    {
      v72 = v65;
      v70 = v63;
      v71 = v64;
      v67 = v60;
      v73 = v66;
      v68 = v61;
      v69 = v62;
      v24 = *(&v65 + 1);
      sub_1AFB21428(a1, &v47);
      v50 = MEMORY[0x1E69E7CC0];
      sub_1AF6B9E2C(&v67, v24, &v50, v47, v48, *v49, *&v49[2]);
      v25 = v50;
      v26 = *(v50 + 2);
      v28 = thread_worker_index(v27);
      v29 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
      if (*v28 != -1)
      {
        v29 += *v28 + 1;
      }

      v30 = *v29;
      v46 = 0;
      memset(v45, 0, sizeof(v45));
      memset(&v49[1], 0, 48);
      *&v49[7] = xmmword_1AFE22A20;
      *&v49[9] = xmmword_1AFE22A20;
      *&v49[11] = xmmword_1AFE22A20;
      LOBYTE(v49[0]) = 1;
      v47.i64[0] = a1;
      v47.i64[1] = a2;
      v48.i64[0] = v30;
      v48.i64[1] = 1;

      sub_1AF5FD5D8(v45, &v49[1]);
      if (v26)
      {
        v31 = 0;
        v32 = v70;
        v33 = v71;
        do
        {
          if (v33)
          {
            v34 = *&v25[16 * v31 + 32];
            v35 = v32;
            v36 = v33;
            while (1)
            {
              v37 = *(v35 + 8);
              if (v34 >= v37 && v34 < (v37 - *v35 + *(v35 + 4)))
              {
                break;
              }

              v35 += 48;
              if (!--v36)
              {
                goto LABEL_26;
              }
            }

            v38 = *(*(v35 + 40) + 188);
          }

          else
          {
LABEL_26:
            v38 = -1;
          }

          ++v31;
          v39 = (*(*(*(*(&v33 + 1) + 144) + 8 * v38 + 32) + 48) + 32);
          do
          {
            v40 = *v39;
            v39 += 5;
          }

          while (v40 != &type metadata for DrawCallComponent);

          sub_1AFB416F0(v41, &v74, 0, 0, v42, 0, v10, &v47, 0);
        }

        while (v31 != v26);
      }

      swift_unknownObjectRelease();

      sub_1AF5D1564(&v60);

      sub_1AF5FD668(&v47);
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t destroy for MeshModel(uint64_t a1)
{
}

void *sub_1AFB6F800(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

void *assignWithCopy for MeshModel(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  return a1;
}

_OWORD *assignWithTake for MeshModel(_OWORD *a1, _OWORD *a2)
{

  *a1 = *a2;

  return a1;
}

uint64_t sub_1AFB6F928(uint64_t a1)
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

uint64_t sub_1AFB6F9F8(void *a1)
{
  v2 = a1[1];
  result = sub_1AFDFE9D8();
  if (result >= v2)
  {
    if (v2 >= 2)
    {
      v7 = *a1 + 16;
      v8 = -1;
      for (i = 1; i != v2; ++i)
      {
        v10 = v8;
        v11 = v7;
        do
        {
          v12 = *(v11 + 8);
          if (*(v11 - 8) >= v12)
          {
            break;
          }

          v13 = *v11;
          *v11 = *(v11 - 16);
          *(v11 - 8) = v12;
          *(v11 - 16) = v13;
          v11 -= 16;
        }

        while (!__CFADD__(v10++, 1));
        v7 += 16;
        --v8;
      }
    }
  }

  else
  {
    v4 = result;
    v5 = v2 / 2;
    if (v2 <= 1)
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      sub_1AFB713D0();
      v6 = sub_1AFDFD488();
      *(v6 + 16) = v5;
    }

    v15[0] = (v6 + 32);
    v15[1] = v5;
    sub_1AFB6FB24(v15, v16, a1, v4);
    *(v6 + 16) = 0;
  }

  return result;
}

uint64_t sub_1AFB6FB24(float **a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v61 = *a1;
    v8 = MEMORY[0x1E69E7CC0];
    v60 = a4;
    while (1)
    {
      v9 = v7++;
      if (v7 < v6)
      {
        v10 = *(*a3 + 16 * v7 + 8);
        v11 = 16 * v9;
        v12 = *a3 + 16 * v9;
        v13 = *(v12 + 8);
        v14 = v9 + 2;
        v15 = (v12 + 40);
        while (v6 != v14)
        {
          v16 = *(v15 - 4) >= *v15;
          ++v14;
          v15 += 4;
          if ((((v13 < v10) ^ v16) & 1) == 0)
          {
            v7 = v14 - 1;
            goto LABEL_10;
          }
        }

        v7 = v6;
LABEL_10:
        if (v13 < v10 && v9 < v7)
        {
          v18 = 0;
          v19 = 16 * v7;
          v20 = v9;
          do
          {
            if (v20 != v7 + v18 - 1)
            {
              v21 = *a3 + v11;
              v22 = *a3 + v19;
              v23 = *v21;
              v24 = *(v21 + 8);
              *v21 = *(v22 - 16);
              *(v22 - 16) = v23;
              *(v22 - 8) = v24;
            }

            ++v20;
            v19 -= 16;
            --v18;
            v11 += 16;
          }

          while (v20 < v7 + v18);
          v6 = a3[1];
        }
      }

      if (v7 < v6 && v7 - v9 < a4)
      {
        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v9 + a4 != v7)
        {
          v44 = *a3 + 16 * v7;
          v45 = v9 - v7;
          do
          {
            v46 = v45;
            v47 = v44;
            do
            {
              v48 = *(v47 + 8);
              if (*(v47 - 8) >= v48)
              {
                break;
              }

              v49 = *v47;
              *v47 = *(v47 - 16);
              *(v47 - 8) = v48;
              *(v47 - 16) = v49;
              v47 -= 16;
            }

            while (!__CFADD__(v46++, 1));
            ++v7;
            v44 += 16;
            --v45;
          }

          while (v7 != v6);
        }

        v7 = v6;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1AF4209A4(0, *(v8 + 2) + 1, 1, v8);
      }

      v26 = *(v8 + 2);
      v25 = *(v8 + 3);
      v27 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        v8 = sub_1AF4209A4(v25 > 1, v26 + 1, 1, v8);
      }

      *(v8 + 2) = v27;
      v28 = v8 + 32;
      v29 = &v8[16 * v26 + 32];
      *v29 = v9;
      *(v29 + 1) = v7;
      if (v26)
      {
        break;
      }

LABEL_3:
      v6 = a3[1];
      a4 = v60;
      if (v7 >= v6)
      {
        goto LABEL_54;
      }
    }

    while (1)
    {
      v30 = v27 - 1;
      if (v27 >= 4)
      {
        v34 = &v28[16 * v27];
        v35 = *(v34 - 7) - *(v34 - 8);
        v33 = *(v34 - 5) - *(v34 - 6);
        v36 = &v8[16 * v27];
        v31 = *v36;
        v32 = *(v36 + 1);
        if (v33 - v31 + v32 >= v35)
        {
          v39 = v27 - 2;
          v38 = *&v28[16 * v30 + 8] - *&v28[16 * v30];
          goto LABEL_41;
        }
      }

      else
      {
        if (v27 != 3)
        {
          v37 = *&v8[16 * v27 + 8] - *&v8[16 * v27];
          v38 = *&v28[16 * v30 + 8] - *&v28[16 * v30];
LABEL_38:
          if (v38 < v37)
          {
            goto LABEL_3;
          }

          goto LABEL_43;
        }

        v31 = *(v8 + 6);
        v32 = *(v8 + 7);
        v33 = *(v8 + 5) - *(v8 + 4);
      }

      v37 = v32 - v31;
      v38 = *&v28[16 * v30 + 8] - *&v28[16 * v30];
      if (v37 + v38 < v33)
      {
        goto LABEL_38;
      }

      v39 = v27 - 2;
LABEL_41:
      if (v33 < v38)
      {
        v30 = v39;
      }

LABEL_43:
      v40 = &v28[16 * v30];
      v41 = *(v40 - 2);
      v42 = *(v40 + 1);
      sub_1AFB6FF50((*a3 + 16 * v41), (*a3 + 16 * *v40), (*a3 + 16 * v42), v61);
      if (v4)
      {
      }

      *(v40 - 2) = v41;
      *(v40 - 1) = v42;
      v43 = *(v8 + 2);
      v27 = v43 - 1;
      memmove(&v28[16 * v30], v40 + 16, 16 * (v43 - 1 - v30));
      *(v8 + 2) = v43 - 1;
      if (v43 <= 2)
      {
        goto LABEL_3;
      }
    }
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_54:
  v62 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1AF650C88(v8);
  }

  v51 = v8 + 16;
  v52 = *(v8 + 2);
  if (v52 >= 2)
  {
    do
    {
      v53 = &v8[16 * v52];
      v54 = *v53;
      v55 = &v51[2 * v52];
      v56 = v55[1];
      sub_1AFB6FF50((*a3 + 16 * *v53), (*a3 + 16 * *v55), (*a3 + 16 * v56), v62);
      if (v4)
      {
        break;
      }

      *v53 = v54;
      *(v53 + 1) = v56;
      v57 = *v51 - 1;
      memmove(&v51[2 * v52], v55 + 2, 16 * (*v51 - v52));
      *v51 = v57;
      v52 = v57;
    }

    while (v57 > 1);
  }
}

uint64_t sub_1AFB6FF50(float *__dst, float *__src, float *a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v13)
  {
    v14 = 4 * v10;
    if (a4 != __dst || &__dst[v14] <= a4)
    {
      memmove(a4, __dst, v14 * 4);
    }

    v15 = &v4[v14];
    if (v8 < 16)
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

      if (v4[2] < v6[2])
      {
        break;
      }

      v16 = v4;
      v17 = v7 == v4;
      v4 += 4;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v15)
      {
        goto LABEL_10;
      }
    }

    v16 = v6;
    v17 = v7 == v6;
    v6 += 4;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v16;
    goto LABEL_13;
  }

  v18 = 4 * v13;
  if (a4 != __src || &__src[v18] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v15 = &v4[v18];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 4;
    do
    {
      v19 = v5 + 4;
      if (*(v6 - 2) < *(v15 - 2))
      {
        v21 = v6 - 4;
        if (v19 != v6)
        {
          *v5 = *v21;
        }

        if (v15 <= v4 || (v6 -= 4, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v20 = v15 - 4;
      if (v19 != v15)
      {
        *v5 = *v20;
      }

      v5 -= 4;
      v15 -= 4;
    }

    while (v20 > v4);
    v15 = v20;
  }

LABEL_35:
  v22 = (v15 - v4 + (v15 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0;
  if (v6 != v4 || v6 >= (v4 + v22))
  {
    memmove(v6, v4, v22);
  }

  return 1;
}

uint64_t sub_1AFB7014C(void *a1, uint64_t a2)
{
  sub_1AFB70948(0, &qword_1EB642CF8, sub_1AFB70810, &type metadata for MeshModel.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10[-v7];
  sub_1AF441150(a1, a1[3]);
  sub_1AFB70810();
  sub_1AFDFF3F8();
  v11 = a2;
  v10[15] = 1;
  sub_1AF7021F8(0, &unk_1ED723230, &type metadata for Entity, MEMORY[0x1E69E62F8]);
  sub_1AFB70864(&qword_1EB642E80, sub_1AF480018, MEMORY[0x1E69E6300]);
  sub_1AFDFE918();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1AFB70330(void *a1)
{
  sub_1AFB70948(0, &qword_1EB633148, sub_1AFB708F4, &type metadata for ModelRenderer.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = a1[3];
  sub_1AF441150(a1, v8);
  sub_1AFB708F4();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v13 = 0;
    sub_1AF47FEB4();
    sub_1AFDFE768();
    v8 = v14;
    v10 = a1[3];
    v11 = a1[4];
    sub_1AF441150(a1, v10);
    if (sub_1AF694FF8(1099, v10, v11))
    {
      v13 = 1;
      sub_1AFDFE768();
    }

    (*(v5 + 8))(v7, v4);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v8;
}

uint64_t sub_1AFB70590(void *a1)
{
  sub_1AFB70948(0, &qword_1EB630A40, sub_1AFB70810, &type metadata for MeshModel.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11[-v6];
  sub_1AF441150(a1, a1[3]);
  sub_1AFB70810();
  sub_1AFDFF3B8();
  if (v1)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v9 = a1[3];
  v10 = a1[4];
  sub_1AF441150(a1, v9);
  if (sub_1AF694FF8(1099, v9, v10))
  {
    sub_1AF7021F8(0, &unk_1ED723230, &type metadata for Entity, MEMORY[0x1E69E62F8]);
    v11[15] = 1;
    sub_1AFB70864(&qword_1ED723220, sub_1AF47FEB4, MEMORY[0x1E69E6330]);
    sub_1AFDFE768();
  }

  (*(v5 + 8))(v7, v4);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return 0;
}

unint64_t sub_1AFB70810()
{
  result = qword_1EB630E80;
  if (!qword_1EB630E80)
  {
    result = swift_getWitnessTable(aE_5, &type metadata for MeshModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB630E80);
  }

  return result;
}

uint64_t sub_1AFB70864(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1AF7021F8(255, &unk_1ED723230, &type metadata for Entity, MEMORY[0x1E69E62F8]);
    v8 = v7;
    v9 = a2();
    result = swift_getWitnessTable(a3, v8, &v9);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AFB708F4()
{
  result = qword_1EB633820;
  if (!qword_1EB633820)
  {
    result = swift_getWitnessTable(byte_1AFE9D904, &type metadata for ModelRenderer.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB633820);
  }

  return result;
}

void sub_1AFB70948(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1AFB709D8(float32x4_t *a1, uint64_t a2, char **a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7)
{
  if (a2)
  {
    v10 = *a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_1AF427A00(0, *(v10 + 2) + 1, 1, v10);
    }

    v12 = 0;
    *a3 = v10;
    v21 = vabsq_f32(a5);
    v22 = vabsq_f32(a4);
    v20 = vabsq_f32(a6);
    v13 = a1 + 1;
    do
    {
      v27 = v13[-1];
      v28 = *v13;
      v14 = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v10;
      if ((v14 & 1) == 0)
      {
        v10 = sub_1AF427A00(0, *(v10 + 2) + 1, 1, v10);
        *a3 = v10;
      }

      v16 = *(v10 + 2);
      v15 = *(v10 + 3);
      if (v16 >= v15 >> 1)
      {
        v10 = sub_1AF427A00(v15 > 1, v16 + 1, 1, v10);
        *a3 = v10;
      }

      v17 = &v10[16 * v16];
      *(v17 + 4) = v12;
      v18 = v28;
      v18.i32[1] = v28.i32[0];
      v18.i32[2] = v28.i32[0];
      *(v10 + 2) = v16 + 1;
      *(v17 + 10) = -COERCE_FLOAT(vaddq_f32(vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(a7, a6, v27, 2), a5, *&v27, 1), a4, *&v27), vmlaq_f32(vmlaq_f32(vmulq_f32(v21, vuzp2q_s32(vdupq_lane_s32(*&v28, 1), v28)), v18, v22), vzip2q_s32(vtrn1q_s32(v28, v28), v28), v20)).i32[2]);
      v10 = *a3;
      v13 += 2;
      ++v12;
    }

    while (a2 != v12);
  }

  return sub_1AFB6B73C(a3);
}

uint64_t sub_1AFB70B90()
{
  type metadata accessor for OpaqueRenderPass();
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
  sub_1AF702F3C(1, v5);
  sub_1AF5DD4A4(0, &qword_1ED726A10, &qword_1ED72C1D0, &protocol descriptor for ClassComponent, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 56) = &type metadata for DrawCallLayer;
  *(inited + 64) = &off_1F2560C28;
  *(inited + 32) = 0;
  v2 = (inited + 32);
  sub_1AF5FC330(inited, v6, xmmword_1AFE431C0);
  sub_1AFB712F4(v5, sub_1AF5FD780);
  swift_setDeallocating();
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v2);
  v3 = v6[1];
  *(v0 + 16) = v6[0];
  *(v0 + 32) = v3;
  *(v0 + 48) = v7;
  return v0;
}

uint64_t sub_1AFB70CE8()
{
  type metadata accessor for TransparentRenderPass();
  v0 = swift_allocObject();
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
  sub_1AFCC5180(1, 1, v5);
  sub_1AF5DD4A4(0, &qword_1ED726A10, &qword_1ED72C1D0, &protocol descriptor for ClassComponent, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 56) = &type metadata for DrawCallLayer;
  *(inited + 64) = &off_1F2560C28;
  *(inited + 32) = 1;
  v2 = (inited + 32);
  sub_1AF5FDBF0();
  sub_1AFB712F4(v5, sub_1AFB71434);
  swift_setDeallocating();
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v2);
  v3 = v7;
  *(v0 + 16) = v6;
  *(v0 + 32) = v3;
  *(v0 + 48) = v8;
  return v0;
}

uint64_t sub_1AFB70E50(void *a1, void *a2)
{
  v4 = a1[11];
  v5 = a1[12];
  v6 = a1[13];
  v7 = a1[1];
  v8 = a1[2];
  v86 = sub_1AF64B110(&type metadata for WorldTransform, &off_1F2529FC0, v4, v5, v6, v8);
  v9 = sub_1AF64B110(&type metadata for ModelRenderer, &off_1F2562450, v4, v5, v6, v8);
  v10 = *(*a2 + 8 * v8[3]);
  result = sub_1AF649C6C(*(v7 + 40), &type metadata for Color, &v87);
  if (v87 == 1)
  {

    v12 = sub_1AF64B110(&type metadata for Color, &off_1F252CA88, v4, v5, v6, v8);
    v13 = a1[6];
    v14 = a1[7];
    if (v13 != v14)
    {
      v17 = v12;
      do
      {
        v28 = &v9[16 * v13];
        v30 = *v28;
        v29 = *(v28 + 1);
        if (*v28 != -1 || v29 != 0)
        {
          v32 = *(v28 + 1);
          v33 = &v86[64 * v13];
          v23 = *v33;
          v24 = v33[1];
          v25 = v33[2];
          v26 = v33[3];
          v27 = *&v17[16 * v13];
          v34 = v30 | (v32 << 32);
          v35 = v10[3] - 1;
          v36 = v35 & v34;
          v37 = *(v10[7] + 2 * (v35 & v34));
          if (v37 < 2)
          {
            goto LABEL_9;
          }

          while ((v37 & 2) == 0 || *(v10[6] + 8 * (v36 & v35)) != v34)
          {
            ++v36;
            _CF = v37 >= 4;
            v37 >>= 1;
            if (!_CF)
            {
              goto LABEL_9;
            }
          }

          if ((v36 & v35) == 0xFFFFFFFFFFFFFFFFLL)
          {
LABEL_9:
            v82 = v26;
            v84 = *&v17[16 * v13];
            v78 = v24;
            v80 = v25;
            v75 = v32;
            v76 = v23;
            v18 = sub_1AFB6B7AC(v34);
            v19 = v10[5];
            v20 = aligned_alloc(0x10uLL, 0x1000uLL);
            v21 = aligned_alloc(0x10uLL, 0x400uLL);
            v22 = v19 + 80 * v18;
            *v22 = v30;
            *(v22 + 4) = v29;
            *(v22 + 8) = v75;
            *(v22 + 16) = v20;
            *(v22 + 24) = xmmword_1AFE9D480;
            *(v22 + 40) = v21;
            *(v22 + 48) = xmmword_1AFE9D480;
            *(v22 + 64) = 0;
            *(v22 + 72) = 0;
            v23 = v76;
            v24 = v78;
            v25 = v80;
            v26 = v82;
            v27 = v84;
          }

          sub_1AFB6C6BC(v23, v24, v25, v26, v27);
        }

        ++v13;
      }

      while (v13 != v14);
    }
  }

  else
  {
    v16 = a1[6];
    v15 = a1[7];
    if (v16 == v15)
    {
      return result;
    }

    __asm { FMOV            V0.4S, #1.0 }

    v74 = _Q0;
    do
    {
      v42 = &v9[16 * v16];
      v44 = *v42;
      v43 = *(v42 + 1);
      if (*v42 != -1 || v43 != 0)
      {
        v46 = *(v42 + 1);
        v47 = &v86[64 * v16];
        v49 = *v47;
        v48 = *(v47 + 1);
        v51 = *(v47 + 2);
        v50 = *(v47 + 3);
        v52 = v44 | (v46 << 32);
        v53 = v10[3] - 1;
        v54 = v53 & v52;
        v55 = *(v10[7] + 2 * (v53 & v52));
        v83 = v51;
        v85 = v50;
        v79 = v49;
        v81 = v48;
        if (v55 < 2)
        {
          goto LABEL_33;
        }

        while (1)
        {
          if ((v55 & 2) != 0)
          {
            v65 = v54 & v53;
            if (*(v10[6] + 8 * (v54 & v53)) == v52)
            {
              break;
            }
          }

          ++v54;
          _CF = v55 >= 4;
          v55 >>= 1;
          if (!_CF)
          {
            goto LABEL_33;
          }
        }

        if (v65 == -1)
        {
LABEL_33:
          v77 = v46;
          v56 = sub_1AFB6B7AC(v52);
          v57 = v10[5];
          v58 = aligned_alloc(0x10uLL, 0x1000uLL);
          v59 = aligned_alloc(0x10uLL, 0x400uLL);
          v60 = v57 + 80 * v56;
          *v60 = v44;
          *(v60 + 4) = v43;
          *(v60 + 8) = v77;
          *(v60 + 16) = v58;
          *(v60 + 24) = 64;
          *(v60 + 40) = v59;
          *(v60 + 48) = xmmword_1AFE9D480;
          *(v60 + 64) = 0;
          v61 = (v60 + 64);
          *(v60 + 72) = 0;
          *v58 = v79;
          v58[1] = v81;
          v58[2] = v83;
          v58[3] = v85;
          *(v60 + 32) = 1;
          v62 = *(v60 + 56);
          if (v62)
          {
            v63 = *(v60 + 40);
            if (v62 == *(v60 + 48))
            {
              v64 = 2 * v62;
              if (v64 <= 1)
              {
                v64 = 1;
              }

              *(v60 + 48) = v64;
              v63 = reallocf(v63, 16 * v64);
              *(v60 + 40) = v63;
              v62 = *(v60 + 56);
            }

            *(v63 + v62) = v74;
            *(v60 + 56) = v62 + 1;
          }
        }

        else
        {
          v66 = (v10[5] + 80 * v65);
          v67 = v66[4];
          v68 = v66[2];
          if (v67 == v66[3])
          {
            v69 = 2 * v67;
            if (v69 <= 1)
            {
              v69 = 1;
            }

            v66[3] = v69;
            v68 = reallocf(v68, v69 << 6);
            v49 = v79;
            v48 = v81;
            v51 = v83;
            v50 = v85;
            v66[2] = v68;
            v67 = v66[4];
          }

          v70 = &v68[64 * v67];
          *v70 = v49;
          *(v70 + 1) = v48;
          *(v70 + 2) = v51;
          *(v70 + 3) = v50;
          v66[4] = v67 + 1;
          v71 = v66[7];
          if (v71)
          {
            v72 = v66[5];
            if (v71 == v66[6])
            {
              v73 = 2 * v71;
              if (v73 <= 1)
              {
                v73 = 1;
              }

              v66[6] = v73;
              v72 = reallocf(v72, 16 * v73);
              v66[5] = v72;
              v71 = v66[7];
            }

            *(v72 + v71) = v74;
            v66[7] = v71 + 1;
          }

          v61 = v66 + 8;
        }

        *v61 = 1;
      }

      ++v16;
    }

    while (v16 != v15);
  }
}

uint64_t sub_1AFB712F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AFB71354()
{
  if (!qword_1ED723AD8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v4[0] = &type metadata for WorldTransform;
    v4[1] = &type metadata for ModelRenderer;
    v4[2] = &off_1F2529FC0;
    v4[3] = &off_1F2562450;
    v2 = type metadata accessor for Query2(0, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1ED723AD8);
    }
  }
}

void sub_1AFB713D0()
{
  if (!qword_1EB632A80)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB632A80);
    }
  }
}

void sub_1AFB71434()
{
  if (!qword_1ED723AD0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v4[0] = &type metadata for DrawCallComponent;
    v4[1] = &type metadata for WorldAABB;
    v4[2] = &off_1F2560850;
    v4[3] = &off_1F2510410;
    v2 = type metadata accessor for Query2(0, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1ED723AD0);
    }
  }
}

unint64_t sub_1AFB71550()
{
  result = qword_1EB642D08;
  if (!qword_1EB642D08)
  {
    result = swift_getWitnessTable(byte_1AFE9D7AC, &type metadata for MeshModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642D08);
  }

  return result;
}

unint64_t sub_1AFB715A8()
{
  result = qword_1EB642D10;
  if (!qword_1EB642D10)
  {
    result = swift_getWitnessTable(byte_1AFE9D89C, &type metadata for ModelRenderer.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642D10);
  }

  return result;
}

unint64_t sub_1AFB71600()
{
  result = qword_1EB633810;
  if (!qword_1EB633810)
  {
    result = swift_getWitnessTable(byte_1AFE9D7D4, &type metadata for ModelRenderer.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB633810);
  }

  return result;
}

unint64_t sub_1AFB71658()
{
  result = qword_1EB633818;
  if (!qword_1EB633818)
  {
    result = swift_getWitnessTable(a5_2, &type metadata for ModelRenderer.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB633818);
  }

  return result;
}

unint64_t sub_1AFB716B0()
{
  result = qword_1EB630E70;
  if (!qword_1EB630E70)
  {
    result = swift_getWitnessTable(asc_1AFE9D6E4, &type metadata for MeshModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB630E70);
  }

  return result;
}

unint64_t sub_1AFB71708()
{
  result = qword_1EB630E78;
  if (!qword_1EB630E78)
  {
    result = swift_getWitnessTable(asc_1AFE9D70C, &type metadata for MeshModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB630E78);
  }

  return result;
}

uint64_t sub_1AFB71760(uint64_t a1)
{
  v2 = sub_1AFB73670();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFB7179C(uint64_t a1)
{
  v2 = sub_1AFB73670();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AFB71828@<D0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1AFE20670;
  *&result = 0xFFFFFFFFLL;
  *(a1 + 16) = 0xFFFFFFFFLL;
  return result;
}

uint64_t sub_1AFB71840(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a2)
  {
    v4 = v3;
    v6 = result;
    v7 = *(v3 + 64);
    v106[0] = *(v3 + 48);
    v106[1] = v7;
    v107 = *(v3 + 80);

    sub_1AF6B06C0(v6, v106, 0x200000000, &v77);
    v8 = v77;
    if (v77)
    {
      v75 = DWORD2(v77);
      v73 = BYTE12(v77);
      v71 = v78;
      v69 = v79;
      v67 = v80;
      v58 = v81;
      v59 = v6;
      v60 = v83;
      v61 = v82;
      v9 = v84;
      v62 = v85;
      v10 = *(v3 + 32);

      v11 = sub_1AFBE5C9C(v10);

      v12 = sub_1AFDFE238();
      v14 = v13;
      v56 = v4;

      sub_1AF7180FC();

      v15 = sub_1AF6F3D60(v11, v12, v14);

      v55 = v11;
      sub_1AF709E8C(v15);
      swift_unknownObjectRelease();

      sub_1AF0D879C(&v86, 4);
      sub_1AF0D879C(&v89, 5);
      v16 = v87;
      v17 = v88;
      sub_1AF0D879C(&v91, 19);
      sub_1AF0D8F38(&v86);
      sub_1AF0D8F38(&v91);
      sub_1AF0D8F38(&v89);
      if (v62 > 0)
      {
        v18 = v17;
        if ((v17 & 0xFE) == 0)
        {
          v18 = 1;
        }

        v19 = v90 == 260 ? 260 : 0;
        v104[0] = v16;
        memset(&v104[1], 0, 24);
        v104[4] = v92;
        memset(&v104[5], 0, 24);
        v104[8] = v90;
        v104[9] = v19;
        v105 = v18;
        v93 = v8;
        v94 = v75;
        v95 = v73;
        v96 = v71;
        v97 = v69;
        v98 = v67;
        if (v61)
        {
          v20 = 0;
          v74 = *(v9 + 32);
          v21 = *(v60 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
          v76 = v8 + 41;
          v57 = v21;
          do
          {
            v72 = v20;
            v22 = (v58 + 48 * v20);
            v23 = *v22;
            v24 = v22[1];
            v25 = v22[2];
            v26 = *(v22 + 3);
            v64 = *(v22 + 2);
            v28 = *(v22 + 4);
            v27 = *(v22 + 5);
            if (v21)
            {
              v29 = *(v27 + 376);

              os_unfair_lock_lock(v29);
              os_unfair_lock_lock(*(v27 + 344));
            }

            else
            {
            }

            ecs_stack_allocator_push_snapshot(v74);
            v66 = *(v9 + 64);
            v68 = *(v9 + 48);
            v65 = *(v9 + 80);
            v30 = *(*(*(*(v27 + 40) + 16) + 32) + 16) + 1;
            *(v9 + 48) = ecs_stack_allocator_allocate(*(v9 + 32), 48 * v30, 8);
            *(v9 + 56) = v30;
            *(v9 + 72) = 0;
            *(v9 + 80) = 0;
            *(v9 + 64) = 0;
            v99[0] = v60;
            v70 = v27;
            v99[1] = v27;
            v99[2] = v9;
            v99[3] = v25;
            v99[4] = (v24 - v23 + v25);
            v99[5] = v62;
            v99[6] = v23;
            v99[7] = v24;
            v99[8] = 0;
            v99[9] = 0;
            v100 = 1;
            v101 = v64;
            v102 = v26;
            v103 = v28;
            sub_1AFB72AAC(v99, a2, v59, a2, a3, v59, v104);
            v31 = *(v9 + 48);
            v32 = *(v9 + 64);
            if (!v32)
            {
              v52 = *(v9 + 56);
              v53 = *(v9 + 32);
              v54 = v72;
              goto LABEL_44;
            }

            for (i = 0; i != v32; ++i)
            {
              v35 = (v31 + 48 * i);
              v36 = *v35;
              v37 = v35[4];
              v38 = *(v9 + 72);
              if (v38)
              {
                v39 = v36 == v38;
              }

              else
              {
                v39 = 0;
              }

              if (v39 || !v8[11])
              {
                goto LABEL_17;
              }

              v40 = v35[2];
              v41 = v8[9];
              if (v41 >= 0x10)
              {
                v42 = v8 + 41;
                v43 = &v76[v8[8]];
                v44 = v41 >> 4;
                while (*v43 != v36)
                {
                  ++v42;
                  v43 += 16;
                  if (!--v44)
                  {
                    goto LABEL_33;
                  }
                }

                v45 = v42[v8[10]];
                v46 = v45 > 5;
                v47 = (1 << v45) & 0x23;
                if (v46 || v47 == 0)
                {
LABEL_17:

                  v37(v34);

                  continue;
                }
              }

LABEL_33:
              if (swift_conformsToProtocol2() && v40)
              {
                if (sub_1AF5FC8D8(v40))
                {
                  goto LABEL_17;
                }

                v49 = v8[9];
                if (v49 < 0x10)
                {
                  goto LABEL_17;
                }

                v50 = &v76[v8[8]];
                v51 = 16 * (v49 >> 4);
                while (*v50 != v40)
                {
                  v50 += 16;
                  v51 -= 16;
                  if (!v51)
                  {
                    goto LABEL_17;
                  }
                }
              }
            }

            v52 = *(v9 + 56);
            v31 = *(v9 + 48);
            v53 = *(v9 + 32);
            v54 = v72;
            if (*(v9 + 64) >= 1)
            {
              swift_arrayDestroy();
            }

LABEL_44:
            ecs_stack_allocator_deallocate(v53, v31, 48 * v52);
            *(v9 + 48) = v68;
            *(v9 + 64) = v66;
            *(v9 + 80) = v65;
            sub_1AF62D29C(v70);
            ecs_stack_allocator_pop_snapshot(v74);
            v21 = v57;
            if (v57)
            {
              os_unfair_lock_unlock(*(v70 + 344));
              os_unfair_lock_unlock(*(v70 + 376));
            }

            v20 = v54 + 1;
          }

          while (v20 != v61);
        }
      }

      result = sub_1AF0D9DB0(&v77, &qword_1ED725EA0, &type metadata for QueryResult);
      ++*(v56 + 32);
    }

    else
    {
    }
  }

  return result;
}

double sub_1AFB71E3C()
{

  swift_deallocClassInstance();
  return result;
}

uint64_t sub_1AFB71E98()
{
  *(v0 + 16) = xmmword_1AFE9D9B0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v6 = qword_1ED73B840;
  v7 = 0;
  v8 = 2;
  v9 = 0;
  v10 = 2;
  v11 = 0;
  sub_1AFA1CFD4(0, &qword_1ED7269A0, &qword_1ED7270C0, &qword_1ED7270D0, &protocol descriptor for Component);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE4C6A0;
  *(inited + 32) = &type metadata for Position;
  *(inited + 40) = &off_1F252EDF0;
  *(inited + 48) = &type metadata for ParticleLegacyRenderer;
  *(inited + 56) = &off_1F2562D70;
  *(inited + 64) = &type metadata for ParticleAngle;
  *(inited + 72) = &off_1F252E068;
  *(inited + 80) = &type metadata for Color;
  *(inited + 88) = &off_1F252CA08;
  *(inited + 96) = &type metadata for Scale;
  *(inited + 104) = &off_1F252F868;
  sub_1AF5B4630(inited, v4);
  swift_setDeallocating();
  v2 = v4[1];
  *(v0 + 48) = v4[0];
  *(v0 + 64) = v2;
  *(v0 + 80) = v5;
  return v0;
}

uint64_t sub_1AFB71FFC()
{
  v0 = swift_allocObject();
  sub_1AFB71E98();
  return v0;
}

uint64_t sub_1AFB72084(uint64_t a1)
{
  v2 = sub_1AFB73718();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFB720C0(uint64_t a1)
{
  v2 = sub_1AFB73718();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFB7214C(void *a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(void))
{
  sub_1AFB7376C(0, a4, a5, a6, MEMORY[0x1E69E6F58]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v15 - v12;
  sub_1AF441150(a1, a1[3]);
  a7();
  sub_1AFDFF3F8();
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1AFB72288(uint64_t a1)
{
  v2 = sub_1AFB737D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFB722C4(uint64_t a1)
{
  v2 = sub_1AFB737D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AFB72350()
{
  sub_1AFA1CFD4(0, &qword_1ED72F7D0, &qword_1ED72FFE0, &qword_1ED72FFF0, &protocol descriptor for EntityComponent);
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_1AFE431C0;
  *(v0 + 32) = &type metadata for ParticleAffectedByGlobalForce;
  *(v0 + 40) = &off_1F2562B50;
  return result;
}

unint64_t sub_1AFB723B8@<X0>(unint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1AFB727E8(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1AFB723E4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x4572657474696D65;
  }

  else
  {
    v3 = 0x746E65726170;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xED0000797469746ELL;
  }

  if (*a2)
  {
    v5 = 0x4572657474696D65;
  }

  else
  {
    v5 = 0x746E65726170;
  }

  if (*a2)
  {
    v6 = 0xED0000797469746ELL;
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

uint64_t sub_1AFB72494()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFB72520(uint64_t a1)
{
  sub_1AFDFD038();
}

uint64_t sub_1AFB72598(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFB72620@<X0>(char *a2@<X8>)
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

void sub_1AFB72680(uint64_t *a1@<X8>)
{
  v2 = 0x746E65726170;
  if (*v1)
  {
    v2 = 0x4572657474696D65;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xED0000797469746ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1AFB726C8()
{
  if (*v0)
  {
    return 0x4572657474696D65;
  }

  else
  {
    return 0x746E65726170;
  }
}

uint64_t sub_1AFB7270C@<X0>(char *a3@<X8>)
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

uint64_t sub_1AFB72770(uint64_t a1)
{
  v2 = sub_1AFB736C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFB727AC(uint64_t a1)
{
  v2 = sub_1AFB736C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1AFB727E8(void *a1)
{
  sub_1AFB7376C(0, &qword_1EB642D30, sub_1AFB736C4, &type metadata for SubEntity.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - v6;
  v8 = a1[3];
  v9 = a1[4];
  sub_1AF441150(a1, v8);
  if (!sub_1AF694FF8(2000, v8, v9))
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AFB736C4();
    sub_1AFDFF3B8();
    if (!v1)
    {
      v10 = a1[3];
      v11 = a1[4];
      sub_1AF441150(a1, v10);
      LOBYTE(v16) = sub_1AF69504C(1036, v10, v11);
      sub_1AF47FEB4();
      sub_1AFDFE768();
      v14 = (*(v5 + 8))(v7, v4);
      v14.n128_u64[0] = v17[0];
      v15 = v14;
      goto LABEL_7;
    }

    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF398();
  if (v1)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  sub_1AF441150(v17, v17[3]);
  sub_1AF47FEB4();
  sub_1AFDFEE88();
  v13.n128_u64[0] = v16;
  v15 = v13;
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v17);
LABEL_7:
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v15.n128_u64[0];
}

void sub_1AFB72AAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = a1[2];
  v12 = sub_1AF6F3FF4(v11[3], a2);
  if (v12)
  {
    v13 = v12;
    v79 = a4;
    v14 = a1[7] - a1[6];
    CFXBufferAllocatorPerFrameAllocateWithLength(*(a2 + 232), 48 * v14);
    v16 = v15;
    v18 = v17;
    v19 = [swift_unknownObjectRetain() storageMode];
    swift_unknownObjectRelease();
    v84 = v18;
    if (v19 == 2)
    {
      v83 = 0;
    }

    else
    {
      v20 = [swift_unknownObjectRetain() contents];
      v21 = v16;
      v83 = &v20[v18];
    }

    v77 = a2;
    CFXBufferAllocatorPerFrameAllocateWithLength(*(a2 + 232), 16 * v14);
    v23 = v22;
    v25 = v24;
    v26 = [swift_unknownObjectRetain() storageMode];
    swift_unknownObjectRelease();
    if (v26 == 2)
    {
      v82 = 0;
      v70 = v25;
    }

    else
    {
      v27 = [swift_unknownObjectRetain() contents];
      v28 = v23;
      v70 = v25;
      v82 = &v27[v25];
    }

    ObjectType = swift_getObjectType();
    sub_1AFB19490(a3, v79);
    sub_1AF6F33A8(v16, v84, 0, 4, ObjectType);
    sub_1AF6F33A8(v23, v25, 0, 5, ObjectType);
    v31 = a1[11];
    v30 = a1[12];
    v32 = a1[13];
    v33 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v31, v30, v32, v11);
    v35 = v33;
    if (v33)
    {
      v36 = (v34 - v33) / 16;
    }

    else
    {
      v36 = 0;
    }

    v74 = sub_1AF64B110(&type metadata for ParticleLegacyRenderer, &off_1F2562DF0, v31, v30, v32, v11);
    v73 = sub_1AF64B110(&type metadata for ParticleAngle, &off_1F252E0E8, v31, v30, v32, v11);
    v81 = sub_1AF64B110(&type metadata for Color, &off_1F252CA88, v31, v30, v32, v11);
    v80 = sub_1AF64B110(&type metadata for Scale, &off_1F252F8E8, v31, v30, v32, v11);
    v37 = *(*(a6 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 8 * v11[3] + 8);
    *&v125 = 0;
    v123 = 0u;
    v124 = 0u;
    memset(v119, 0, sizeof(v119));
    v120 = xmmword_1AFE22A20;
    v121 = xmmword_1AFE22A20;
    v122 = xmmword_1AFE22A20;
    v118 = 3;
    v117[0] = a6;
    v117[1] = v77;
    v117[3] = 1;
    v117[2] = v37;

    sub_1AF5FD5D8(&v123, v119);
    if (v36)
    {
      v38 = 0;
      v39 = 0;
      v69 = v84;
      v78 = v36 - 1;
      v40 = 0x1FB97D000uLL;
      v42 = v73;
      v41 = v74;
      v71 = v35;
      v72 = v36;
      while (1)
      {
        while (1)
        {
          v43 = v39 + 1;
          v44 = *&v35[16 * v39];
          v45 = &v41[32 * v39];
          v46 = *v45;
          v47 = *&v80[16 * v39];
          LODWORD(v48) = HIDWORD(*&v80[16 * v39]);
          if ((LODWORD(v48) & 0x7FFFFF) != 0)
          {
            LODWORD(v49) = *&v80[16 * v39];
          }

          else
          {
            LODWORD(v49) = HIDWORD(*&v80[16 * v39]);
          }

          if ((~LODWORD(v48) & 0x7F800000) != 0)
          {
            LODWORD(v49) = HIDWORD(*&v80[16 * v39]);
          }

          if (v48 >= *&v47)
          {
            v50 = v49;
          }

          else
          {
            LODWORD(v50) = *&v80[16 * v39];
          }

          if ((DWORD2(v47) & 0x7FFFFF) != 0)
          {
            v51 = v50;
          }

          else
          {
            LODWORD(v51) = *&v80[16 * v39 + 8];
          }

          if ((~DWORD2(v47) & 0x7F800000) != 0)
          {
            LODWORD(v51) = *&v80[16 * v39 + 8];
          }

          v52 = *(&v47 + 2) >= v50 ? v51 : v50;
          HIDWORD(v44) = *&v42[4 * v39];
          v53 = &v83[48 * v39];
          *v53 = v44;
          *(v53 + 1) = v46;
          *(v53 + 8) = v52;
          *&v42[4 * v39] = *&v42[4 * v39] + 0.01;
          *&v82[16 * v39] = *&v81[16 * v39];
          v54 = v38 + 1;
          v56 = *(v45 + 4);
          v55 = *(v45 + 5);
          if (v39 == v78)
          {
            break;
          }

          v57 = &v41[32 * v43];
          v59 = *(v57 + 4);
          v58 = *(v57 + 5);
          if (v56 != v59 || v55 != v58)
          {
            break;
          }

          ++v38;
          v39 = v43;
          if (v43 == v36)
          {
            goto LABEL_44;
          }
        }

        sub_1AF3CA6C0(v56 | (v55 << 32), &v86);
        v101[12] = v98;
        v101[13] = v99;
        v101[14] = v100;
        v101[8] = v94;
        v101[9] = v95;
        v101[10] = v96;
        v101[11] = v97;
        v101[4] = v90;
        v101[5] = v91;
        v101[6] = v92;
        v101[7] = v93;
        v101[0] = v86;
        v101[1] = v87;
        v101[2] = v88;
        v101[3] = v89;
        v114 = v98;
        v115 = v99;
        v116 = v100;
        v110 = v94;
        v111 = v95;
        v112 = v96;
        v113 = v97;
        v106 = v90;
        v107 = v91;
        v108 = v92;
        v109 = v93;
        v102 = v86;
        v103 = v87;
        v104 = v88;
        v105 = v89;
        if (sub_1AF448314(&v102) == 1)
        {
          break;
        }

        v85 = v43;
        v135 = v114;
        v136 = v115;
        v137 = v116;
        v131 = v110;
        v132 = v111;
        v134 = v113;
        v133 = v112;
        v127 = v106;
        v128 = v107;
        v130 = v109;
        v129 = v108;
        v123 = v102;
        v124 = v103;
        v125 = v104;
        v126 = v105;
        v61 = sub_1AF88E748(&v123, a7, 0, 0, v117, ObjectType);
        v62 = v40;
        if (v38 <= 0xFFFFFFFFFFFF15A0)
        {
          v63 = 0;
          v64 = (v38 + 30000) / 30000;
          v65 = v69;
          v66 = v70;
          v67 = 30000;
          do
          {
            if (v67 >= v54)
            {
              v68 = v54;
            }

            else
            {
              v68 = v67;
            }

            [v13 (v62 + 2140)];
            [v13 (v62 + 2140)];
            sub_1AF6F5C0C(v68 + v63);
            v67 += 30000;
            v63 -= 30000;
            v66 += 480000;
            v65 += 1440000;
            --v64;
          }

          while (v64);
        }

        sub_1AF0D9DB0(v101, &qword_1ED7255C8, &type metadata for MaterialRuntime);
        v36 = v72;
        v39 = v85;
        if (v85 == v72)
        {
          goto LABEL_44;
        }

        v38 = 0;
        v35 = v71;
        v42 = v73;
        v41 = v74;
        v40 = v62;
      }

      sub_1AF5FD668(v117);
      swift_unknownObjectRelease();
    }

    else
    {
LABEL_44:
      swift_unknownObjectRelease();
      sub_1AF5FD668(v117);
    }
  }
}

uint64_t sub_1AFB73130(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 64);
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v56 = qword_1ED73B840;
  v57 = 0;
  v58 = 2;
  v59 = 0;
  v60 = 2;
  v61 = 0;
  sub_1AF5C91BC(v39);
  v52[0] = v39[0];
  v52[1] = v39[1];
  v53 = v40;
  sub_1AF6B06C0(a1, v52, 0x200000000, &v41);
  if (!v41)
  {
    return sub_1AFB73534(v39);
  }

  if (v48 > 0)
  {
    v34 = v45;
    if (v45)
    {
      v3 = 0;
      v4 = 0;
      v33 = v44;
      v5 = v47;
      v36 = *(v47 + 32);
      v6 = *(v46 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v49 = v41;
      v50 = v42;
      v51 = v43;
      v32 = v6;
      do
      {
        v35 = v4;
        v7 = (v33 + 48 * v3);
        v9 = *v7;
        v8 = v7[1];
        v10 = *(v7 + 2);
        v11 = *(v7 + 3);
        v13 = *(v7 + 4);
        v12 = *(v7 + 5);
        if (v6)
        {
          v14 = *(v12 + 376);

          os_unfair_lock_lock(v14);
          os_unfair_lock_lock(*(v12 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v36);
        v15 = *(v5 + 64);
        v54[0] = *(v5 + 48);
        v54[1] = v15;
        v55 = *(v5 + 80);
        v16 = *(*(*(*(v12 + 40) + 16) + 32) + 16) + 1;
        *(v5 + 48) = ecs_stack_allocator_allocate(*(v5 + 32), 48 * v16, 8);
        *(v5 + 56) = v16;
        *(v5 + 72) = 0;
        *(v5 + 80) = 0;
        *(v5 + 64) = 0;
        v17 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v10, v11, v13, v5);
        v18 = sub_1AF64B110(&type metadata for ParticleCustomEmitter, &off_1F252D768, v10, v11, v13, v5);
        if (v10)
        {
          v4 = v35;
          v19 = v31;
          if (v13)
          {
            v20 = (v18 + 16);
            do
            {
              v21 = *(v20 - 2) + (*(v20 - 3) + (v2 * *(v20 - 4)));
              *(v20 - 2) = v21;
              v22 = v21;
              if (v21 >= 1)
              {
                v23 = *v17;
                HIDWORD(v23) = HIDWORD(v19);
                v38 = v23;
                (*v20)(v5, v22);
                *(v20 - 2) = *(v20 - 2) - v22;
                v19 = v38;
              }

              v20 += 8;
              v17 += 16;
              --v13;
            }

            while (v13);
            v31 = v19;
          }
        }

        else
        {
          if (v9 != v8)
          {
            v24 = v8 - v9;
            v25 = &v17[16 * v9];
            v26 = &v18[32 * v9 + 16];
            do
            {
              v27 = *(v26 - 2) + (*(v26 - 3) + (v2 * *(v26 - 4)));
              *(v26 - 2) = v27;
              v28 = v27;
              if (v27 >= 1)
              {
                v29 = *v25;
                v29.n128_u32[3] = v37;
                (*v26)(v5, v27, v29);
                *(v26 - 2) = *(v26 - 2) - v28;
              }

              ++v25;
              v26 += 8;
              --v24;
            }

            while (v24);
          }

          v4 = v35;
        }

        sub_1AF630994(v5, &v49, v54);
        sub_1AF62D29C(v12);
        ecs_stack_allocator_pop_snapshot(v36);
        v6 = v32;
        if (v32)
        {
          os_unfair_lock_unlock(*(v12 + 344));
          os_unfair_lock_unlock(*(v12 + 376));
        }

        ++v3;
      }

      while (v3 != v34);
    }
  }

  sub_1AFB73534(v39);
  return sub_1AF0D9DB0(&v41, &qword_1ED725EA0, &type metadata for QueryResult);
}

uint64_t sub_1AFB73534(uint64_t a1)
{
  sub_1AFB73590();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AFB73590()
{
  if (!qword_1EB642D18)
  {
    v4[4] = v0;
    v4[5] = v1;
    v4[0] = &type metadata for Position;
    v4[1] = &type metadata for ParticleCustomEmitter;
    v4[2] = &off_1F252EE70;
    v4[3] = &off_1F252D768;
    v2 = type metadata accessor for Query2(0, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EB642D18);
    }
  }
}

__n128 initializeWithCopy for ParticleLegacyRenderer(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

unint64_t sub_1AFB73670()
{
  result = qword_1EB642D28;
  if (!qword_1EB642D28)
  {
    result = swift_getWitnessTable(byte_1AFE9E010, &type metadata for Authoring.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642D28);
  }

  return result;
}

unint64_t sub_1AFB736C4()
{
  result = qword_1EB642D38;
  if (!qword_1EB642D38)
  {
    result = swift_getWitnessTable(byte_1AFE9DFC0, &type metadata for SubEntity.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642D38);
  }

  return result;
}

unint64_t sub_1AFB73718()
{
  result = qword_1EB642D48;
  if (!qword_1EB642D48)
  {
    result = swift_getWitnessTable(aI_6, &type metadata for ParticleAffectedByGlobalForce.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642D48);
  }

  return result;
}

void sub_1AFB7376C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1AFB737D4()
{
  result = qword_1EB642D58;
  if (!qword_1EB642D58)
  {
    result = swift_getWitnessTable(byte_1AFE9DF20, &type metadata for ParticleGlobalForce.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642D58);
  }

  return result;
}

unint64_t sub_1AFB7386C()
{
  result = qword_1EB642D60;
  if (!qword_1EB642D60)
  {
    result = swift_getWitnessTable(byte_1AFE9DE58, &type metadata for SubEntity.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642D60);
  }

  return result;
}

unint64_t sub_1AFB738C4()
{
  result = qword_1EB642D68;
  if (!qword_1EB642D68)
  {
    result = swift_getWitnessTable(asc_1AFE9DED0, &type metadata for ParticleGlobalForce.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642D68);
  }

  return result;
}

unint64_t sub_1AFB7391C()
{
  result = qword_1EB642D70;
  if (!qword_1EB642D70)
  {
    result = swift_getWitnessTable(a9_5, &type metadata for ParticleGlobalForce.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642D70);
  }

  return result;
}

unint64_t sub_1AFB73974()
{
  result = qword_1EB642D78;
  if (!qword_1EB642D78)
  {
    result = swift_getWitnessTable(aQ_15, &type metadata for ParticleAffectedByGlobalForce.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642D78);
  }

  return result;
}

unint64_t sub_1AFB739CC()
{
  result = qword_1EB642D80;
  if (!qword_1EB642D80)
  {
    result = swift_getWitnessTable(byte_1AFE9DEA8, &type metadata for ParticleAffectedByGlobalForce.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642D80);
  }

  return result;
}

unint64_t sub_1AFB73A24()
{
  result = qword_1EB642D88;
  if (!qword_1EB642D88)
  {
    result = swift_getWitnessTable(aA_15, &type metadata for SubEntity.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642D88);
  }

  return result;
}

unint64_t sub_1AFB73A7C()
{
  result = qword_1EB642D90;
  if (!qword_1EB642D90)
  {
    result = swift_getWitnessTable(aY_19, &type metadata for SubEntity.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642D90);
  }

  return result;
}

unint64_t sub_1AFB73AD4()
{
  result = qword_1EB642D98;
  if (!qword_1EB642D98)
  {
    result = swift_getWitnessTable(byte_1AFE9DD40, &type metadata for Authoring.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642D98);
  }

  return result;
}

unint64_t sub_1AFB73B2C()
{
  result = qword_1EB642DA0;
  if (!qword_1EB642DA0)
  {
    result = swift_getWitnessTable(aR_8, &type metadata for Authoring.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642DA0);
  }

  return result;
}

uint64_t sub_1AFB73B80()
{
  sub_1AFDFF288();
  sub_1AFDFF2A8();
  sub_1AFDFF2A8();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AFB73C20(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFF2A8();
  sub_1AFDFF2A8();
  return sub_1AFDFF2F8();
}

BOOL sub_1AFB73D64(unsigned __int8 a1)
{
  v2 = 1 << a1;
  if ((a1 & 0xC0) != 0)
  {
    v2 = 0;
  }

  v3 = 1uLL >> -a1;
  if (a1 <= 0xC0u)
  {
    v3 = 0;
  }

  if ((a1 & 0x80) == 0)
  {
    v3 = v2;
  }

  if ((a1 - 65) <= 0x7Eu)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  v5 = *v1 & v4;
  if (v5 != v4)
  {
    *v1 |= v4;
  }

  return v5 != v4;
}

uint64_t sub_1AFB73DCC(uint64_t a1)
{
  if (*(v1 + 80) < 1)
  {
    return 0;
  }

  v25 = *(v1 + 56);
  if (!v25)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = *(v1 + 72);
  v29 = *(v6 + 32);
  v7 = *(*(v1 + 64) + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v8 = *(v1 + 16);
  v30[0] = *v1;
  v30[1] = v8;
  v23 = *(v1 + 40);
  v31 = *(v1 + 32);
  v24 = v7;
  do
  {
    v28 = v5;
    v9 = (v23 + 48 * v4);
    v10 = *v9;
    v11 = v9[2];
    v12 = *(v9 + 2);
    v13 = *(v9 + 3);
    v14 = *(v9 + 5);
    v26 = v9[1];
    v27 = *(v9 + 4);
    if (v7)
    {
      v15 = *(v14 + 376);

      os_unfair_lock_lock(v15);
      os_unfair_lock_lock(*(v14 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v29);
    v16 = *(v6 + 64);
    v32[0] = *(v6 + 48);
    v32[1] = v16;
    v33 = *(v6 + 80);
    v17 = *(*(*(*(v14 + 40) + 16) + 32) + 16) + 1;
    *(v6 + 48) = ecs_stack_allocator_allocate(*(v6 + 32), 48 * v17, 8);
    *(v6 + 56) = v17;
    *(v6 + 72) = 0;
    *(v6 + 80) = 0;
    *(v6 + 64) = 0;
    v18 = sub_1AF64B110(&type metadata for Color, &off_1F252CA88, v12, v13, v27, v6);
    if (v19)
    {
      v5 = v28;
      v7 = v24;
    }

    else
    {
      v7 = v24;
      if (v10 == v26)
      {
        v5 = v28;
      }

      else
      {
        v20 = &v18[16 * v10 + 12];
        v21 = v26 - v10;
        v5 = v28;
        do
        {
          if (*v20 > 0.00000011921)
          {
            *(a1 + 4 * v3++) = v11;
          }

          v20 += 4;
          ++v11;
          --v21;
        }

        while (v21);
      }
    }

    sub_1AF630994(v6, v30, v32);
    sub_1AF62D29C(v14);
    ecs_stack_allocator_pop_snapshot(v29);
    if (v7)
    {
      os_unfair_lock_unlock(*(v14 + 344));
      os_unfair_lock_unlock(*(v14 + 376));
    }

    ++v4;
  }

  while (v4 != v25);
  return v3;
}

void sub_1AFB73FFC(uint64_t a1, float a2, uint64_t a3, float32x4_t *a4, unsigned int *a5, uint64_t a6, char a7)
{
  v8 = v7;
  v38 = 0;
  if (a7)
  {
    v35 = v7[10];
    if (v35 >= 1)
    {
      v12 = v7[7];
      if (v12)
      {
        v13 = v7[8];
        v14 = v7[9];
        v15 = *(v14 + 32);
        v31 = v13;
        v16 = *(v13 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v17 = (*(v8 + 40) + 24);
        v34 = v8;
        v30 = v16;
        do
        {
          v18 = *(v17 - 6);
          v19 = *(v17 - 5);
          v20 = *(v17 - 4);
          v21 = *v17;
          v22 = v17[2];
          v36 = v17[1];
          v37 = *(v17 - 1);
          if (v16)
          {
            v23 = *(v22 + 376);

            os_unfair_lock_lock(v23);
            os_unfair_lock_lock(*(v22 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v15);
          v24 = *(v14 + 64);
          v42[0] = *(v14 + 48);
          v42[1] = v24;
          v43 = *(v14 + 80);
          v25 = *(*(*(*(v22 + 40) + 16) + 32) + 16) + 1;
          *(v14 + 48) = ecs_stack_allocator_allocate(*(v14 + 32), 48 * v25, 8);
          *(v14 + 56) = v25;
          *(v14 + 72) = 0;
          *(v14 + 80) = 0;
          *(v14 + 64) = 0;
          LOBYTE(v41) = 1;
          v44[0] = v31;
          v44[1] = v22;
          v44[2] = v14;
          v44[3] = v20;
          v44[4] = (v19 - v18 + v20);
          v44[5] = v35;
          v44[6] = v18;
          v44[7] = v19;
          v44[8] = 0;
          v44[9] = 0;
          v45 = 1;
          v46 = v37;
          v47 = v21;
          v48 = v36;
          v26.n128_f32[0] = a2;
          sub_1AFB78760(v44, a4, a1, &v38, v26);
          v27 = *(v34 + 16);
          v39[0] = *v34;
          v39[1] = v27;
          v40 = *(v34 + 32);
          sub_1AF630994(v14, v39, v42);
          sub_1AF62D29C(v22);
          ecs_stack_allocator_pop_snapshot(v15);
          v16 = v30;
          if (v30)
          {
            os_unfair_lock_unlock(*(v22 + 344));
            os_unfair_lock_unlock(*(v22 + 376));
          }

          v17 += 6;
          --v12;
        }

        while (v12);
      }
    }
  }

  else
  {
    sub_1AF5DD298(v8, v44);
    sub_1AF6BD1F0(v8, v8, a5, a6, a4, a1, &v38, a2);
    sub_1AF63B864(v8);
  }
}

uint64_t sub_1AFB74298(uint64_t result, float *a2, float32x4_t a3, uint64_t a4, unsigned int *a5, uint64_t a6, char a7)
{
  v120 = result;
  v9 = 1.0;
  if ((result - 2) <= 4u)
  {
    v9 = flt_1AFE9E438[(result - 2)];
  }

  a3.i32[3] = 0;
  if (a7)
  {
    v111 = a3;
    v112 = v9;
    v119 = *(v121 + 80);
    if (v119 >= 1)
    {
      v118 = *(v121 + 56);
      if (v118)
      {
        v10 = 0;
        v11 = 0;
        v12 = *(v121 + 72);
        v117 = *(v121 + 64);
        v13 = *(v117 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v124 = *(v12 + 32);
        v115 = *(v121 + 40);
        v110 = a2 + 4;
        __asm { FMOV            V0.4S, #1.0 }

        v109 = _Q0;
        v116 = v13;
        do
        {
          v122 = v10;
          v123 = v11;
          v19 = (v115 + 48 * v10);
          v21 = *v19;
          v20 = v19[1];
          v22 = v19[2];
          v24 = *(v19 + 2);
          v23 = *(v19 + 3);
          v26 = *(v19 + 4);
          v25 = *(v19 + 5);
          if (v13)
          {
            v27 = *(v25 + 376);

            os_unfair_lock_lock(v27);
            os_unfair_lock_lock(*(v25 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v124);
          v28 = *(v12 + 64);
          v127[0] = *(v12 + 48);
          v127[1] = v28;
          v128 = *(v12 + 80);
          v29 = *(*(*(*(v25 + 40) + 16) + 32) + 16) + 1;
          *(v12 + 48) = ecs_stack_allocator_allocate(*(v12 + 32), 48 * v29, 8);
          *(v12 + 56) = v29;
          *(v12 + 72) = 0;
          *(v12 + 80) = 0;
          *(v12 + 64) = 0;
          v129[0] = v117;
          v129[1] = v25;
          v129[2] = v12;
          v129[3] = v22;
          v129[4] = (v20 - v21 + v22);
          v129[5] = v119;
          v129[6] = v21;
          v129[7] = v20;
          v129[8] = 0;
          v129[9] = 0;
          v130 = 1;
          v131 = v24;
          v132 = v23;
          v133 = v26;
          if (v120 > 6u)
          {
            goto LABEL_79;
          }

          v30 = v20;
          v31 = 1 << v120;
          if (((1 << v120) & 6) != 0)
          {
            v38 = sub_1AF64B110(&type metadata for ParticleAge, &off_1F252CBE8, v24, v23, v26, v12);
            if (v41 & 1) != 0 || (v42 = v38, v43 = sub_1AF64B110(&type metadata for ParticleLifetime, &off_1F252CB38, v24, v23, v26, v12), (v44))
            {
              if (v21 == v30)
              {
                goto LABEL_31;
              }

              v45 = v30 - v21;
              v46 = a2;
              v47 = v22 - v21;
              if ((v30 - v21) >= 8)
              {
                v48 = (v45 & 0xFFFFFFFFFFFFFFF8) + v21;
                v63 = &v110[v22];
                v64 = v21;
                v65 = v45 & 0xFFFFFFFFFFFFFFF8;
                v66 = v22;
                do
                {
                  v40.i64[0] = v64;
                  v39.i64[0] = v22 - v21;
                  v67 = vdupq_lane_s64(vaddq_s64(v39, v40).i64[0], 0);
                  v68 = vaddq_s64(v67, xmmword_1AFE21100);
                  v69.i64[0] = v66;
                  v69.i64[1] = v66 + 1;
                  v40 = vmulq_n_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_s64(vaddq_s64(v67, xmmword_1AFE22910))), vcvtq_f64_s64(vaddq_s64(v67, xmmword_1AFE22900))), v112);
                  v63[-1] = vmulq_n_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_s64(v69)), vcvtq_f64_s64(v68)), v112);
                  *v63 = v40;
                  v63 += 2;
                  v66 += 8;
                  v64 += 8;
                  v65 -= 8;
                }

                while (v65);
                if (v45 == (v45 & 0xFFFFFFFFFFFFFFF8))
                {
                  goto LABEL_54;
                }
              }

              else
              {
                v48 = v21;
              }

              v70 = v48 + v22 - v21;
              v71 = v30 - v48;
              do
              {
                a2[v70] = v112 * v70;
                ++v70;
                --v71;
              }

              while (v71);
            }

            else
            {
              if (v21 == v30)
              {
LABEL_31:
                v46 = a2;
                v47 = v22 - v21;
                goto LABEL_54;
              }

              v72 = v30 - v21;
              v46 = a2;
              v47 = v22 - v21;
              if ((v30 - v21) <= 7 || (v92 = &a2[v22], v93 = 4 * v21, (v92 - &v42[4 * v21]) < 0x20) || (v92 - &v43[v93]) < 0x20)
              {
                v73 = v21;
              }

              else
              {
                v73 = (v72 & 0xFFFFFFFFFFFFFFF8) + v21;
                v94 = &v110[v22];
                v95 = &v42[v93 + 16];
                v96 = &v43[v93 + 16];
                v97 = v72 & 0xFFFFFFFFFFFFFFF8;
                do
                {
                  v98 = vmulq_f32(vmulq_n_f32(*v95, v112), vdivq_f32(v109, *v96));
                  v94[-1] = vmulq_f32(vmulq_n_f32(v95[-1], v112), vdivq_f32(v109, v96[-1]));
                  *v94 = v98;
                  v94 += 2;
                  v95 += 2;
                  v96 += 2;
                  v97 -= 8;
                }

                while (v97);
                if (v72 == (v72 & 0xFFFFFFFFFFFFFFF8))
                {
                  goto LABEL_54;
                }
              }

              v74 = 4 * v73;
              v75 = (a2 + 4 * v73 + 4 * v22 - 4 * v21);
              v76 = v30 - v73;
              v77 = &v43[v74];
              v78 = &v42[v74];
              do
              {
                v79 = *v78++;
                v80 = v79;
                v81 = *v77++;
                *v75++ = (v112 * v80) * (1.0 / v81);
                --v76;
              }

              while (v76);
            }
          }

          else
          {
            if ((v31 & 0x18) != 0)
            {
              v32 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v24, v23, v26, v12);
              if (v21 != v20)
              {
                v33 = &a2[v22];
                v34 = v20 - v21;
                v35 = &v32[16 * v21];
                do
                {
                  v36 = *v35++;
                  v37 = vmulq_f32(v111, v36);
                  *v33++ = v112 * vaddv_f32(vadd_f32(*v37.i8, *&vextq_s8(v37, v37, 8uLL)));
                  --v34;
                }

                while (v34);
              }

              goto LABEL_55;
            }

            if ((v31 & 0x60) == 0)
            {
              goto LABEL_79;
            }

            v49 = sub_1AF64B110(&type metadata for ParticleID, &off_1F252DFA8, v24, v23, v26, v12);
            if (v52)
            {
              v46 = a2;
              if (v21 == v20)
              {
                goto LABEL_29;
              }

              v53 = v20 - v21;
              v47 = v22 - v21;
              if ((v20 - v21) > 7)
              {
                v54 = (v53 & 0xFFFFFFFFFFFFFFF8) + v21;
                v82 = &v110[v22];
                v83 = v21;
                v84 = v53 & 0xFFFFFFFFFFFFFFF8;
                v85 = v22;
                do
                {
                  v51.i64[0] = v83;
                  v50.i64[0] = v22 - v21;
                  v86 = vdupq_lane_s64(vaddq_s64(v50, v51).i64[0], 0);
                  v87 = vaddq_s64(v86, xmmword_1AFE21100);
                  v88.i64[0] = v85;
                  v88.i64[1] = v85 + 1;
                  v51 = vmulq_n_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_s64(vaddq_s64(v86, xmmword_1AFE22910))), vcvtq_f64_s64(vaddq_s64(v86, xmmword_1AFE22900))), v112);
                  v82[-1] = vmulq_n_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_s64(v88)), vcvtq_f64_s64(v87)), v112);
                  *v82 = v51;
                  v82 += 2;
                  v85 += 8;
                  v83 += 8;
                  v84 -= 8;
                }

                while (v84);
                if (v53 == (v53 & 0xFFFFFFFFFFFFFFF8))
                {
                  goto LABEL_54;
                }
              }

              else
              {
                v54 = v21;
              }

              v89 = v54 + v22 - v21;
              v90 = v20 - v54;
              do
              {
                a2[v89] = v112 * v89;
                ++v89;
                --v90;
              }

              while (v90);
            }

            else
            {
              v46 = a2;
              if (v21 == v20)
              {
LABEL_29:
                v47 = v22 - v21;
                goto LABEL_54;
              }

              v55 = v20 - v21;
              v47 = v22 - v21;
              if ((v20 - v21) >= 8 && (v56 = &v49[4 * v21], (&a2[v22] - v56) >= 0x20))
              {
                v57 = (v55 & 0xFFFFFFFFFFFFFFF8) + v21;
                v99 = v56 + 1;
                v100 = &v110[v22];
                v101 = v55 & 0xFFFFFFFFFFFFFFF8;
                do
                {
                  v102 = vmulq_n_f32(vcvtq_f32_u32(*v99), v112);
                  v100[-1] = vmulq_n_f32(vcvtq_f32_u32(v99[-1]), v112);
                  *v100 = v102;
                  v99 += 2;
                  v100 += 2;
                  v101 -= 8;
                }

                while (v101);
                if (v55 == (v55 & 0xFFFFFFFFFFFFFFF8))
                {
                  goto LABEL_54;
                }
              }

              else
              {
                v57 = v21;
              }

              v58 = 4 * v57;
              v59 = (a2 + 4 * v57 + 4 * v22 - 4 * v21);
              v60 = v20 - v57;
              v61 = &v49[v58];
              do
              {
                v62 = *v61++;
                *v59++ = v112 * v62;
                --v60;
              }

              while (v60);
            }
          }

LABEL_54:
          sub_1AFB78D38(v129, v46, v47);
LABEL_55:
          v91 = *(v121 + 16);
          v125[0] = *v121;
          v125[1] = v91;
          v126 = *(v121 + 32);
          v11 = v123;
          sub_1AF630994(v12, v125, v127);
          sub_1AF62D29C(v25);
          ecs_stack_allocator_pop_snapshot(v124);
          v13 = v116;
          if (v116)
          {
            os_unfair_lock_unlock(*(v25 + 344));
            os_unfair_lock_unlock(*(v25 + 376));
          }

          v10 = v122 + 1;
        }

        while (v122 + 1 != v118);
      }
    }
  }

  else
  {
    if (result > 6u)
    {
      goto LABEL_83;
    }

    if (((1 << result) & 6) != 0)
    {
      v103 = v121;
      v113 = v9;
      sub_1AF5DD298(v121, v129);
      sub_1AF6BFAE0(v103, v103, a5, a6, a2, v113);
      sub_1AF63B864(v121);
      return sub_1AF6C0508(v103, a5, a6, a2, *(v103 + 80));
    }

    if (((1 << result) & 0x18) != 0)
    {

      return sub_1AF6BD724(v121, a5, a6, a2, v9, a3);
    }

    if (((1 << result) & 0x60) == 0)
    {
LABEL_83:
      while (1)
      {
LABEL_79:
        sub_1AFDFE518();
        __break(1u);
      }
    }

    sub_1AF6BFFEC(v121, a5, a6, a2, v9);
    v108 = *(v121 + 80);

    return sub_1AF6C0508(v121, a5, a6, a2, v108);
  }

  return result;
}

void *sub_1AFB74B88(void *a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v4 + 80);
  v63 = 8 * v8;
  CFXBufferAllocatorPerFrameAllocateWithLength(*(a3 + 232), 8 * v8);
  v10 = v9;
  v12 = v11;
  v13 = [swift_unknownObjectRetain() storageMode];
  swift_unknownObjectRelease();
  v14 = 0;
  if (v13 != 2)
  {
    v15 = [swift_unknownObjectRetain() contents];
    v16 = v10;
    v14 = &v15[v12];
  }

  ecs_stack_allocator_push_snapshot(a4);
  v68 = ecs_stack_allocator_allocate(a4, 4 * v8, 8);
  v17 = [swift_unknownObjectRetain() storageMode];
  swift_unknownObjectRelease();
  v67 = a4;
  v65 = v10;
  v64 = v14;
  if (v17 == 2)
  {
    v18 = 0;
  }

  else
  {
    v19 = [swift_unknownObjectRetain() contents];
    v20 = a1;
    v18 = &v19[a2];
  }

  v66 = v8;
  v62 = v8 - 1;
  if (v8 >= 1)
  {
    v71 = *(v4 + 56);
    if (v71)
    {
      v21 = 0;
      v22 = *(v4 + 72);
      v74 = *(v22 + 32);
      v23 = *(*(v4 + 64) + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v24 = *(v4 + 16);
      v75[0] = *v4;
      v75[1] = v24;
      v69 = *(v4 + 40);
      v76 = *(v4 + 32);
      v70 = v23;
      while (1)
      {
        v25 = (v69 + 48 * v21);
        v26 = v25[1];
        v72 = v25[2];
        v73 = *v25;
        v27 = *(v25 + 2);
        v28 = *(v25 + 3);
        v30 = *(v25 + 4);
        v29 = *(v25 + 5);
        if (v23)
        {
          v31 = *(v29 + 376);

          os_unfair_lock_lock(v31);
          os_unfair_lock_lock(*(v29 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v74);
        v32 = *(v22 + 64);
        v77[0] = *(v22 + 48);
        v77[1] = v32;
        v78 = *(v22 + 80);
        v33 = *(*(*(*(v29 + 40) + 16) + 32) + 16) + 1;
        *(v22 + 48) = ecs_stack_allocator_allocate(*(v22 + 32), 48 * v33, 8);
        *(v22 + 56) = v33;
        *(v22 + 72) = 0;
        *(v22 + 80) = 0;
        *(v22 + 64) = 0;
        v34 = sub_1AF64B110(&type metadata for ParticleParentID, &off_1F252D8C8, v27, v28, v30, v22);
        if (v35)
        {
          v23 = v70;
          if (v73 != v26)
          {
            bzero(v68 + 4 * v72, 4 * (v26 - v73));
          }

          goto LABEL_26;
        }

        v23 = v70;
        if (v73 != v26)
        {
          v36 = v26 - v73;
          if ((v26 - v73) > 7)
          {
            v38 = v72;
            v39 = &v34[4 * v73];
            if ((v68 + 4 * v72 - v39) >= 0x20)
            {
              v37 = (v36 & 0xFFFFFFFFFFFFFFF8) + v73;
              v40 = (v39 + 16);
              v41 = (v68 + 4 * v72 + 16);
              v42 = v36 & 0xFFFFFFFFFFFFFFF8;
              do
              {
                v43 = *v40;
                *(v41 - 1) = *(v40 - 1);
                *v41 = v43;
                v40 += 2;
                v41 += 2;
                v42 -= 8;
              }

              while (v42);
              if (v36 == (v36 & 0xFFFFFFFFFFFFFFF8))
              {
                goto LABEL_26;
              }
            }

            else
            {
              v37 = v73;
            }
          }

          else
          {
            v37 = v73;
            v38 = v72;
          }

          v44 = 4 * v37;
          v45 = (v68 + 4 * v37 + 4 * v38 - 4 * v73);
          v46 = v26 - v37;
          v47 = &v34[v44];
          do
          {
            v48 = *v47;
            v47 += 4;
            *v45++ = v48;
            --v46;
          }

          while (v46);
        }

LABEL_26:
        sub_1AF630994(v22, v75, v77);
        sub_1AF62D29C(v29);
        ecs_stack_allocator_pop_snapshot(v74);
        if (v23)
        {
          os_unfair_lock_unlock(*(v29 + 344));
          os_unfair_lock_unlock(*(v29 + 376));
        }

        if (++v21 == v71)
        {
          goto LABEL_28;
        }
      }
    }

    v49 = v14;
    bzero(v14, v63);
    v51 = v8;
    v50 = v67;
    v52 = v10;
    v53 = v68;
    v54 = v8 - 1;
    goto LABEL_31;
  }

LABEL_28:
  v49 = v64;
  bzero(v64, v63);
  v51 = v66;
  v50 = v67;
  v52 = v65;
  v53 = v68;
  v54 = v62;
  if (v66)
  {
LABEL_31:
    v56 = 0;
    do
    {
      v59 = *v18;
      v60 = *(v53 + v59);
      if (v56 < 1)
      {
        LODWORD(v61) = -1;
        if (v56 < v54)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v61 = *(v18 - 1);
        if (*(v53 + v61) != v60)
        {
          LODWORD(v61) = -1;
        }

        if (v56 < v54)
        {
LABEL_32:
          if (*(v53 + *(v18 + 1)) == v60)
          {
            v57 = *(v18 + 1);
          }

          else
          {
            v57 = -1;
          }

          goto LABEL_35;
        }
      }

      v57 = -1;
LABEL_35:
      ++v56;
      v58 = &v49[8 * v59];
      *v58 = v61;
      *(v58 + 1) = v57;
      v18 += 4;
    }

    while (v51 != v56);
  }

  ecs_stack_allocator_pop_snapshot(v50);
  return v52;
}

uint64_t sub_1AFB74FD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 728);
  v6 = ceilf(log2f(a3)) + -9.0;
  if (v6 + 1 > 1)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = 1;
  }

  v8 = *(a1 + 232);
  swift_unknownObjectRetain();
  CFXBufferAllocatorPerFrameAllocateWithLength(v8, 12 * v7);
  v10 = v9;
  v12 = v11;
  v20 = v7;
  v21 = 512;
  sub_1AF7180FC();

  v13 = sub_1AF6F4158();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1AFDFCEC8();
  [v13 pushDebugGroup_];

  sub_1AF6F3BD8(v15, v16);
  swift_unknownObjectRelease();
  sub_1AF6F458C(v10, v12, 0, 1);
  [v13 setBytes:&v21 length:4 atIndex:2];
  [v13 setBytes:&v20 length:4 atIndex:3];
  sub_1AF442324(a2, v22);
  v17 = v23;
  v18 = v24;
  sub_1AF58D38C(v22);
  sub_1AF6F458C(v17, v18 | 0x400000000, 0, 4);
  sub_1AF6F466C(v5);
  [v13 popDebugGroup];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v10;
}

uint64_t sub_1AFB7520C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v52 = *MEMORY[0x1E69E9840];
  if (!a7)
  {
    goto LABEL_12;
  }

  v11 = sub_1AFB2EB3C(a6, a7);
  if (v12)
  {
    goto LABEL_12;
  }

  v13 = v11;
  sub_1AFB7CC3C(a6);
  v15 = v14;
  CFXBufferAllocatorPerFrameAllocateWithLength(*(a7 + 232), 4 * *(a2 + 528));
  v17 = v16;
  v45 = v18;
  sub_1AFB2F7B0(v13, v47);
  v19 = *(a1 + 56);
  v20 = *(a1 + 57);
  v48[0] = v47[0];
  v48[1] = v47[1];
  v48[2] = v47[2];
  v48[3] = v47[3];
  v48[4] = v47[4];
  v48[5] = v47[5];
  v49 = v15;
  v50 = v19;
  v51 = v20;
  CFXBufferAllocatorPerFrameAllocateWithLength(*(a7 + 232), 4);
  v22 = v21;
  v24 = v23;
  [swift_unknownObjectRetain() storageMode];
  swift_unknownObjectRelease();
  v25 = [swift_unknownObjectRetain() contents];
  v26 = v22;
  *&v25[v24] = 0;
  sub_1AF7180FC();

  v27 = sub_1AF6F4158();
  v41 = v24;
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  v29 = sub_1AFDFCEC8();
  [v27 pushDebugGroup_];

  sub_1AF6F3BD8(v30, v31);
  v32 = *(a2 + 784);
  if (!v32)
  {
    goto LABEL_12;
  }

  v33 = *(a2 + 424);
  v44 = *(a2 + 432);
  if (v33)
  {
    v40 = v17;
    v34 = *(a2 + 440);
    if (*(a2 + 336))
    {
      v35 = *(a2 + 512);
    }

    else
    {
      LODWORD(v35) = 0;
    }

    v36 = *(a2 + 344);
    v37 = (*(a2 + 352) + *(a2 + 368) * v35) | (*(a2 + 368) << 32);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    sub_1AF6F34C4(v36, v37, 0, 4, ObjectType);
    sub_1AF6F353C(v33, v44, v34, 0);
    swift_unknownObjectRelease();
    v17 = v40;
  }

  else
  {
    swift_unknownObjectRetain();
  }

  [v27 setBytes:v48 length:112 atIndex:1];
  sub_1AF6F458C(v17, v45, 0, 2);
  sub_1AF6F458C(v22, v41, 0, 3);
  [v27 setComputePipelineState_];
  sub_1AFB78748(v46);
  sub_1AF6F4960(a3, a4, 0, v46[0], v46[1], v46[2]);
  v38 = *(a2 + 792);
  if (v38)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    sub_1AF6F458C(v33, (v44 + 28) | 0x400000000, 0, 0);
    sub_1AF6F458C(v22, v41, 0, 1);
    sub_1AF6F466C(v38);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    [v27 popDebugGroup];

    swift_unknownObjectRelease();
    return v17;
  }

  else
  {
LABEL_12:
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFB756C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10)
{
  v63 = *MEMORY[0x1E69E9840];
  v13 = *(a3 + 528);
  CFXBufferAllocatorPerFrameAllocateWithLength(*(a1 + 232), 4 * v13);
  v41 = v15;
  v42 = v14;
  CFXBufferAllocatorPerFrameAllocateWithLength(*(a1 + 232), 4 * v13);
  v47 = v17;
  v48 = v16;
  CFXBufferAllocatorPerFrameAllocateWithLength(*(a1 + 232), 4 * v13);
  v53 = v19;
  v54 = v18;
  v43 = a8;
  if (a8)
  {
    v20 = 8 * v13;
  }

  else
  {
    v20 = 4 * v13;
  }

  CFXBufferAllocatorPerFrameAllocateWithLength(*(a1 + 232), v20);
  v49 = v22;
  v50 = v21;
  LODWORD(v23) = *(a3 + 432);
  if (a9)
  {
    v23 = (v23 + 28);
  }

  else
  {
    v23 = v23;
  }

  v55 = v23;
  v56 = *(a3 + 424);
  v62 = 0;
  sub_1AF7180FC();

  v24 = sub_1AF6F4158();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v25 = sub_1AFDFCEC8();
  [v24 pushDebugGroup_];

  sub_1AF6F3BD8(v26, v27);
  swift_unknownObjectRelease();
  v28 = 736;
  if (a8)
  {
    v28 = 744;
  }

  v29 = *(a3 + v28);
  if (v29)
  {
    swift_unknownObjectRetain();
    sub_1AF6F458C(a4, a5, 0, 1);
    sub_1AF6F458C(v54, v53, 0, 2);
    sub_1AF6F458C(v50, v49, 0, 3);
    sub_1AF6F458C(v56, v55 | 0x400000000, 0, 4);
    if (v43)
    {
      v30 = 4096;
    }

    else
    {
      v30 = 2048;
    }

    [v24 setThreadgroupMemoryLength:2048 atIndex:0];
    [v24 setThreadgroupMemoryLength:v30 atIndex:1];
    [v24 setComputePipelineState_];
    sub_1AFB78748(&v59);
    sub_1AF6F4960(a6, a7, 0, v59, v60, v61);
    swift_unknownObjectRelease();
  }

  [v24 popDebugGroup];

  swift_unknownObjectRelease();
  sub_1AFB78748(&v59);
  v45 = v60;
  v46 = v59;
  v44 = v61;
  sub_1AF7180FC();

  v31 = sub_1AF6F4158();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v32 = sub_1AFDFCEC8();
  [v31 pushDebugGroup_];

  sub_1AF6F3BD8(v33, v34);
  swift_unknownObjectRelease();
  v35 = 752;
  if (v43)
  {
    v35 = 760;
  }

  v36 = *(a3 + v35);
  v37 = v42;
  if (v36)
  {
    swift_unknownObjectRetain();
    v38 = 776;
    if (!a9)
    {
      v38 = 768;
    }

    v37 = v42;
    v39 = *(a3 + v38);
    if (v39)
    {
      swift_unknownObjectRetain();
      sub_1AF6F458C(v48, v47, 0, 1);
      sub_1AF6F458C(v54, v53, 0, 2);
      sub_1AF6F458C(v42, v41, 0, 3);
      sub_1AF6F458C(v56, v55 | 0x400000000, 0, 4);
      sub_1AF6F458C(a9, a10, 0, 5);
      [v31 setComputePipelineState_];
      sub_1AF6F4960(a6, a7, 0, v46, v45, v44);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  [v31 popDebugGroup];

  swift_unknownObjectRelease();
  return v37;
}

uint64_t sub_1AFB75C78(uint64_t result, uint64_t a2, char a3)
{
  if (a2)
  {
    v4 = v3;
    v7 = result;
    v8 = *(result + OBJC_IVAR____TtC3VFX13EntityManager_clock + 8);
    v9 = *(result + 184);

    os_unfair_recursive_lock_lock_with_options();
    v10 = sub_1AF6D2A6C(&type metadata for FrameConstantsStorage);
    if (v11 == 2 || (v11 & 1) == 0)
    {
      os_unfair_recursive_lock_unlock();
      v50 = xmmword_1AFE20180;
    }

    else
    {
      v13 = (*(v9 + 16) + v10);
      v14 = 32 * v12;
      os_unfair_lock_lock(*(*(v9 + 32) + 32 * v12 + 24));
      os_unfair_recursive_lock_unlock();
      v15 = vzip2q_s32(v13[3], v13[4]);
      v15.i32[2] = v13[5].i32[2];
      v50 = v15;
      os_unfair_lock_unlock(*(*(v9 + 32) + v14 + 24));
    }

    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    v17 = *(v4 + 32);
    v70[0] = *(v4 + 16);
    v70[1] = v17;
    v71 = *(v4 + 48);
    sub_1AF6B06C0(v7, v70, 0x200000000, v52);
    v45 = *&v52[0];
    if (*&v52[0])
    {
      v19 = *(&v52[2] + 1);
      v20 = *(&v53 + 1);
      v41 = *(&v54 + 1);
      v44 = v54;
      v57 = *(v52 + 8);
      v58 = *(&v52[1] + 8);
      MEMORY[0x1EEE9AC00](v18);
      v42 = v33;
      v43 = v21;
      v33[2] = v7;
      v33[3] = v16;
      v34 = v50;
      v35 = a2;
      v36 = v8;
      v37 = v7;
      v38 = a2;
      v39 = a3;
      if (v21 > 0 && v20)
      {
        v40[0] = v40;
        v40[1] = v16;
        v40[2] = a2;
        v22 = v41;
        v23 = v41[4];
        LODWORD(v50) = *(v44 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v51[2] = v52[2];
        v51[3] = v53;
        v51[4] = v54;
        v51[5] = v55;
        v51[0] = v52[0];
        v51[1] = v52[1];
        sub_1AF5DD298(v51, v65);
        for (i = (v19 + 24); ; i += 6)
        {
          v49 = 0;
          v26 = *(i - 6);
          v25 = *(i - 5);
          v27 = *(i - 4);
          v28 = *(i - 1);
          v47 = *i;
          v48 = v28;
          v29 = i[2];
          v46 = i[1];
          if (v50)
          {
            v30 = *(v29 + 376);

            v22 = v41;
            os_unfair_lock_lock(v30);
            os_unfair_lock_lock(*(v29 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v23);

          sub_1AF630914(v31, v22, v56);

          LOBYTE(v59) = 1;
          v65[0] = v44;
          v65[1] = v29;
          v65[2] = v22;
          v65[3] = v27;
          v65[4] = (v25 - v26 + v27);
          v65[5] = v43;
          v65[6] = v26;
          v65[7] = v25;
          v65[8] = 0;
          v65[9] = 0;
          v66 = 1;
          v67 = v48;
          v68 = v47;
          v69 = v46;
          v32 = v49;
          sub_1AF889684(v65, sub_1AFB7870C, v42);
          if (v32)
          {
            break;
          }

          v62 = v45;
          v63 = v57;
          v64 = v58;
          sub_1AF630994(v22, &v62, v56);
          sub_1AF62D29C(v29);
          ecs_stack_allocator_pop_snapshot(v23);
          if (v50)
          {
            os_unfair_lock_unlock(*(v29 + 344));
            os_unfair_lock_unlock(*(v29 + 376));
          }

          if (!--v20)
          {

            sub_1AF5D1564(v52);
            sub_1AF5D1564(v52);
          }
        }

        v59 = v45;
        v60 = v57;
        v61 = v58;
        sub_1AF630994(v22, &v59, v56);
        sub_1AF62D29C(v29);
        ecs_stack_allocator_pop_snapshot(v23);
        if (v50)
        {
          os_unfair_lock_unlock(*(v29 + 344));
          os_unfair_lock_unlock(*(v29 + 376));
        }

        __break(1u);
      }

      else
      {

        sub_1AF5D1564(v52);
      }
    }

    else
    {
    }
  }

  return result;
}

void sub_1AFB7611C(uint64_t a1, float32x4_t *a2, uint64_t a3, uint64_t a4, float32x4_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, float32x4_t a9, uint64_t a10)
{
  v12 = a3;
  v475 = *MEMORY[0x1E69E9840];
  *(a3 + 304) = 0;
  *(a3 + 312) = 1;
  v389 = a2[3].u8[9];
  v385 = a2[3].u8[8];
  v13 = *(a3 + 240);
  if (v13 == 1)
  {
    if (((v389 | v385) & 1) == 0)
    {
      return;
    }

LABEL_8:
    if ((*(a3 + 248) & 0x18) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (!v13)
  {
    if (!*(a3 + 248))
    {
      return;
    }

    goto LABEL_8;
  }

  if ((v13 & 0x18) == 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  v14 = *(a1 + 32);
  v396 = a9;

  v15 = sub_1AF6496EC(v14);

  sub_1AFB95040(v15, v430);
  v16 = v396;
  if ((v431 & 1) == 0)
  {
    a9 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(v430[2], v396, 2), v430[1], *v396.f32, 1), v430[0], v396.f32[0]);
    v16 = a9;
  }

  a5[1] = v16;
LABEL_12:
  v17 = a10;
  v355 = v12;
  v352 = a8;
  if (a2[3].i8[13] != 1)
  {
    v91 = *(*(*(a4 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 8 * *thread_worker_index(*a9.i64) + 8) + 32);
    v92 = *(v12 + 72);
    v410[0] = *(v12 + 56);
    v410[1] = v92;
    v411 = *(v12 + 88);
    sub_1AF6B06C0(a4, v410, 0x200000000, &v432);
    if (!v432)
    {
      return;
    }

    v399 = v432;
    v402 = v435;
    v403 = v436;
    v404 = v437;
    v405 = v438;
    v400 = v433;
    v401 = v434;
    v398 = v91;
    if (v13)
    {
      while (1)
      {
        v95 = __clz(__rbit64(v13));
        if (v95 > 6)
        {
          goto LABEL_116;
        }

        v394 = v95;
        v96 = 1 << v95;
        v97 = (v96 & v13) != 0 ? ~v96 : -1;
        ecs_stack_allocator_push_snapshot(v91);
        v98 = *(&v404 + 1);
        if (v389)
        {
          v99 = (4 * *(&v404 + 1)) >> 2;
          __srca = ecs_stack_allocator_allocate(v91, 4 * *(&v404 + 1), 4);
          v98 = sub_1AFB73DCC(__srca);
        }

        else
        {
          __srca = 0;
          v99 = 0;
        }

        v354 = v13;
        if (!v385)
        {
          break;
        }

        if (qword_1ED7256E8 != -1)
        {
          swift_once();
        }

        v408[0] = xmmword_1ED73B540;
        v408[1] = *algn_1ED73B550;
        v409 = qword_1ED73B560;
        sub_1AF6B06C0(a8, v408, 0x200000000, v439);
        if (*&v439[0])
        {
          v100 = v441;
          v376 = v99;
          if (v441)
          {
            v101 = v440;
            while (1)
            {
              if (!v101[2])
              {
                v102 = *v101;
                if (v101[1] != v102)
                {
                  break;
                }
              }

              v101 += 12;
              if (!--v100)
              {
                goto LABEL_86;
              }
            }

            v103 = *(v101 + 2);
            if (v103)
            {
              v102 = *v103;
            }

            v104 = *(*(v101 + 5) + 188);
          }

          else
          {
LABEL_86:
            v104 = -1;
            v102 = -1;
          }

          v105 = *(*(v442 + 144) + 8 * v104 + 32);
          v106 = *(v105 + 184);

          if (v106)
          {
            goto LABEL_234;
          }

          v108 = *(*(v105 + 168) + 4 * v102);
          v109 = *(*(v107 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v108 + 8);

          sub_1AF5D1564(v439);
        }

        else
        {
          v110 = sub_1AFB195A8(a8, a10);
          if (v111)
          {
            break;
          }

          v376 = v99;
          v109 = HIDWORD(v110);
          v108 = v110;
        }

        v113 = v108 | (v109 << 32);
        sub_1AF3C9244(v113, v443);
        if (v444)
        {
          v114 = -1;
        }

        else
        {
          v114 = 0;
        }

        v115 = vdupq_n_s32(v114);
        v476.columns[0] = vbslq_s8(v115, xmmword_1AFE20150, v443[0]);
        v476.columns[1] = vbslq_s8(v115, xmmword_1AFE20160, v443[1]);
        v476.columns[2] = vbslq_s8(v115, xmmword_1AFE20180, v443[2]);
        v476.columns[3] = vbslq_s8(v115, xmmword_1AFE201A0, v443[3]);
        v477 = __invert_f4(v476);
        v362 = v477.columns[0];
        v364 = v477.columns[1];
        v367 = v477.columns[2];
        v372 = v477.columns[3];
        sub_1AF3C9AB8(v113, v445);
        if (v446)
        {
          v119 = xmmword_1AFE20160;
          v118 = xmmword_1AFE20150;
          v121 = xmmword_1AFE201A0;
          v120 = xmmword_1AFE20180;
        }

        else
        {
          v118 = v445[0];
          v119 = v445[1];
          v120 = v445[2];
          v121 = v445[3];
        }

        v122 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v118, v362.f32[0]), v119, *v362.f32, 1), v120, v362, 2), v121, v362, 3);
        v123 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v118, v364.f32[0]), v119, *v364.f32, 1), v120, v364, 2), v121, v364, 3);
        v124 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v118, v367.f32[0]), v119, *v367.f32, 1), v120, v367, 2), v121, v367, 3);
        v125.i32[3] = v372.i32[3];
        v126 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v118, v372.f32[0]), v119, *v372.f32, 1), v120, v372, 2), v121, v372, 3);
        v125.f32[0] = *&v122.i32[3] - *v122.i32;
        v125.f32[1] = *&v123.i32[3] - *v123.i32;
        v125.f32[2] = v124.f32[3] - v124.f32[0];
        v127 = vmulq_f32(v125, v125);
        v125.f32[3] = v126.f32[3] - v126.f32[0];
        v116.f32[0] = *&v122.i32[3] + *v122.i32;
        v116.f32[1] = *&v123.i32[3] + *v123.i32;
        v116.f32[2] = v124.f32[3] + v124.f32[0];
        v128 = vmulq_f32(v116, v116);
        v116.f32[3] = v126.f32[3] + v126.f32[0];
        v117.f32[0] = *&v122.i32[3] + *&v122.i32[1];
        v117.f32[1] = *&v123.i32[3] + *&v123.i32[1];
        v117.f32[2] = v124.f32[3] + v124.f32[1];
        v129 = vmulq_f32(v117, v117);
        v117.f32[3] = v126.f32[3] + v126.f32[1];
        v121.f32[0] = *&v122.i32[3] - *&v122.i32[1];
        v121.f32[1] = *&v123.i32[3] - *&v123.i32[1];
        v121.f32[2] = v124.f32[3] - v124.f32[1];
        v130 = vmulq_f32(v121, v121);
        v121.f32[3] = v126.f32[3] - v126.f32[1];
        v131 = vextq_s8(v123, v123, 8uLL);
        v132 = vextq_s8(v122, v122, 8uLL).u64[0];
        *v131.f32 = vsub_f32(vzip2_s32(v132, *v131.f32), vzip1_s32(v132, *v131.f32));
        v131.f32[2] = v124.f32[3] - v124.f32[2];
        v133 = vmulq_f32(v131, v131);
        v134 = v131;
        v134.f32[3] = v126.f32[3] - v126.f32[2];
        v135 = vzip2q_s32(v122, v123);
        v135.i32[2] = v124.i32[2];
        v136 = vmulq_f32(v135, v135);
        v135.i32[3] = v126.i32[2];
        v126.f32[0] = v127.f32[2] + vaddv_f32(*v127.f32);
        *v122.i8 = vrsqrte_f32(v126.u32[0]);
        *v122.i8 = vmul_f32(*v122.i8, vrsqrts_f32(v126.u32[0], vmul_f32(*v122.i8, *v122.i8)));
        v137 = vmulq_n_f32(v125, vmul_f32(*v122.i8, vrsqrts_f32(v126.u32[0], vmul_f32(*v122.i8, *v122.i8))).f32[0]);
        v125.f32[0] = v128.f32[2] + vaddv_f32(*v128.f32);
        *v126.f32 = vrsqrte_f32(v125.u32[0]);
        *v126.f32 = vmul_f32(*v126.f32, vrsqrts_f32(v125.u32[0], vmul_f32(*v126.f32, *v126.f32)));
        v138 = vmulq_n_f32(v116, vmul_f32(*v126.f32, vrsqrts_f32(v125.u32[0], vmul_f32(*v126.f32, *v126.f32))).f32[0]);
        v127.f32[0] = v129.f32[2] + vaddv_f32(*v129.f32);
        *v125.f32 = vrsqrte_f32(v127.u32[0]);
        *v125.f32 = vmul_f32(*v125.f32, vrsqrts_f32(v127.u32[0], vmul_f32(*v125.f32, *v125.f32)));
        v139 = vmulq_n_f32(v117, vmul_f32(*v125.f32, vrsqrts_f32(v127.u32[0], vmul_f32(*v125.f32, *v125.f32))).f32[0]);
        v127.f32[0] = v130.f32[2] + vaddv_f32(*v130.f32);
        *v130.f32 = vrsqrte_f32(v127.u32[0]);
        *v130.f32 = vmul_f32(*v130.f32, vrsqrts_f32(v127.u32[0], vmul_f32(*v130.f32, *v130.f32)));
        v140 = vmulq_n_f32(v121, vmul_f32(*v130.f32, vrsqrts_f32(v127.u32[0], vmul_f32(*v130.f32, *v130.f32))).f32[0]);
        v130.f32[0] = v136.f32[2] + vaddv_f32(*v136.f32);
        *v136.f32 = vrsqrte_f32(v130.u32[0]);
        *v136.f32 = vmul_f32(*v136.f32, vrsqrts_f32(v130.u32[0], vmul_f32(*v136.f32, *v136.f32)));
        v141 = vmulq_n_f32(v135, vmul_f32(*v136.f32, vrsqrts_f32(v130.u32[0], vmul_f32(*v136.f32, *v136.f32))).f32[0]);
        v133.f32[0] = v133.f32[2] + vaddv_f32(*v133.f32);
        *v136.f32 = vrsqrte_f32(v133.u32[0]);
        *v136.f32 = vmul_f32(*v136.f32, vrsqrts_f32(v133.u32[0], vmul_f32(*v136.f32, *v136.f32)));
        v455 = v137;
        v456 = v138;
        v457 = v139;
        v458 = v140;
        v459 = v141;
        v460 = vmulq_n_f32(v134, vmul_f32(*v136.f32, vrsqrts_f32(v133.u32[0], vmul_f32(*v136.f32, *v136.f32))).f32[0]);
        v142 = a2[5];
        v416 = a2[4];
        v417 = v142;
        v418 = a2[6].i32[0];
        v143 = a2[1];
        v412 = *a2;
        v413 = v143;
        v144 = a2[3];
        v414 = a2[2];
        v415 = v144;
        sub_1AFB7CC3C(a8);
        v146 = v145;
        v147 = ecs_stack_allocator_allocate(v91, 4 * v98, 4);
        v148 = (4 * v98) >> 2;
        sub_1AFB73FFC(v147, v146, v148, &v455, __srca, v376, v389 ^ 1);
        v98 = v149;
        v112 = 0;
        __srca = v147;
        v99 = v148;
LABEL_99:
        v150 = 4 * v98;
        CFXBufferAllocatorPerFrameAllocateWithLength(*(a6 + 232), 4 * v98);
        v152 = v151;
        v154 = v153;
        v155 = [swift_unknownObjectRetain() storageMode];
        swift_unknownObjectRelease();
        v368 = v154;
        if (v155 == 2)
        {
          v156 = 0;
        }

        else
        {
          v157 = [swift_unknownObjectRetain() contents];
          v158 = v152;
          v156 = &v157[v154];
        }

        v377 = v97;
        if (v394)
        {
          v159 = ecs_stack_allocator_allocate(v398, v150, 4);
          sub_1AFB74298(v394, v159, a5[1], v150 >> 2, __srca, v99, v112);
          ecs_stack_allocator_push_snapshot(v398);
          ecs_stack_allocator_allocate(v398, v150, 8);
          if (v112)
          {
            radix_sort_float(v159);
          }

          else
          {
            radix_sort_float_with_input_indices(v159);
          }

          ecs_stack_allocator_pop_snapshot(v398);
          v12 = v355;
          goto LABEL_109;
        }

        v12 = v355;
        if ((v112 & 1) == 0)
        {
          memcpy(v156, __srca, v150);
LABEL_109:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v468.i64[0] = *(v12 + 256);
          v161 = v468.i64[0];
          v162 = sub_1AF41B2A8(v394);
          v164 = v163;
          v165 = *(v161 + 16) + ((v163 & 1) == 0);
          if (*(v161 + 24) >= v165)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v169 = v162;
              sub_1AF84FC9C();
              v162 = v169;
            }
          }

          else
          {
            sub_1AF8416F0(v165, isUniquelyReferenced_nonNull_native);
            v162 = sub_1AF41B2A8(v394);
            if ((v164 & 1) != (v166 & 1))
            {
              goto LABEL_232;
            }
          }

          v167 = v468.i64[0];
          if (v164)
          {
            v168 = (*(v468.i64[0] + 56) + 16 * v162);
            *v168 = v152;
            v168[1] = v368;
          }

          else
          {
            *(v468.i64[0] + 8 * (v162 >> 6) + 64) |= 1 << v162;
            v93 = (v167[6] + 2 * v162);
            *v93 = v394;
            v93[1] = 0;
            v94 = (v167[7] + 16 * v162);
            *v94 = v152;
            v94[1] = v368;
            ++v167[2];
          }

          *(v12 + 256) = v167;
          *(v12 + 304) = v98;
          *(v12 + 312) = 0;
        }

        v13 = v377 & v354;
        v91 = v398;
        ecs_stack_allocator_pop_snapshot(v398);
        a8 = v352;
        if ((v377 & v354) == 0)
        {
          goto LABEL_116;
        }
      }

      v112 = v389 ^ 1;
      goto LABEL_99;
    }

LABEL_116:
    v170 = *(v12 + 248);
    if (v170)
    {
      while (1)
      {
        v173 = __clz(__rbit64(v170));
        if (v173 > 6)
        {
          goto LABEL_170;
        }

        v395 = v173;
        v174 = 1 << v173;
        v175 = (v174 & v170) != 0 ? ~v174 : -1;
        ecs_stack_allocator_push_snapshot(v91);
        v176 = *(&v404 + 1);
        if (v389)
        {
          v177 = (4 * *(&v404 + 1)) >> 2;
          __srcb = ecs_stack_allocator_allocate(v91, 4 * *(&v404 + 1), 4);
          v176 = sub_1AFB73DCC(__srcb);
        }

        else
        {
          __srcb = 0;
          v177 = 0;
        }

        v373 = v175;
        v369 = v170;
        if (!v385)
        {
          break;
        }

        if (qword_1ED7256E8 != -1)
        {
          swift_once();
        }

        v406[0] = xmmword_1ED73B540;
        v406[1] = *algn_1ED73B550;
        v407 = qword_1ED73B560;
        sub_1AF6B06C0(a8, v406, 0x200000000, v447);
        if (*&v447[0])
        {
          v178 = v449;
          if (v449)
          {
            v179 = v448;
            while (1)
            {
              if (!v179[2])
              {
                v180 = *v179;
                if (v179[1] != v180)
                {
                  break;
                }
              }

              v179 += 12;
              if (!--v178)
              {
                goto LABEL_140;
              }
            }

            v181 = *(v179 + 2);
            if (v181)
            {
              v180 = *v181;
            }

            v182 = *(*(v179 + 5) + 188);
          }

          else
          {
LABEL_140:
            v182 = -1;
            v180 = -1;
          }

          v183 = *(*(v450 + 144) + 8 * v182 + 32);
          v184 = *(v183 + 184);

          if (v184)
          {
            goto LABEL_234;
          }

          v186 = *(*(v183 + 168) + 4 * v180);
          v187 = *(*(v185 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v186 + 8);

          sub_1AF5D1564(v447);
        }

        else
        {
          v188 = sub_1AFB195A8(a8, a10);
          if (v189)
          {
            break;
          }

          v187 = HIDWORD(v188);
          v186 = v188;
        }

        v191 = v186 | (v187 << 32);
        sub_1AF3C9244(v191, v451);
        if (v452)
        {
          v192 = -1;
        }

        else
        {
          v192 = 0;
        }

        v193 = vdupq_n_s32(v192);
        v478.columns[0] = vbslq_s8(v193, xmmword_1AFE20150, v451[0]);
        v478.columns[1] = vbslq_s8(v193, xmmword_1AFE20160, v451[1]);
        v478.columns[2] = vbslq_s8(v193, xmmword_1AFE20180, v451[2]);
        v478.columns[3] = vbslq_s8(v193, xmmword_1AFE201A0, v451[3]);
        v479 = __invert_f4(v478);
        v360 = v479.columns[0];
        v363 = v479.columns[1];
        v365 = v479.columns[2];
        v378 = v479.columns[3];
        sub_1AF3C9AB8(v191, v453);
        if (v454)
        {
          v197 = xmmword_1AFE20160;
          v196 = xmmword_1AFE20150;
          v198 = xmmword_1AFE20180;
          v199 = xmmword_1AFE201A0;
        }

        else
        {
          v196 = v453[0];
          v197 = v453[1];
          v198 = v453[2];
          v199 = v453[3];
        }

        v200 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v196, v360.f32[0]), v197, *v360.f32, 1), v198, v360, 2), v199, v360, 3);
        v201 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v196, v363.f32[0]), v197, *v363.f32, 1), v198, v363, 2), v199, v363, 3);
        v202 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v196, v365.f32[0]), v197, *v365.f32, 1), v198, v365, 2), v199, v365, 3);
        v203.i32[3] = v378.i32[3];
        v204 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v196, v378.f32[0]), v197, *v378.f32, 1), v198, v378, 2), v199, v378, 3);
        v203.f32[0] = *&v200.i32[3] - *v200.i32;
        v203.f32[1] = *&v201.i32[3] - *v201.i32;
        v203.f32[2] = v202.f32[3] - v202.f32[0];
        v205 = vmulq_f32(v203, v203);
        v203.f32[3] = v204.f32[3] - v204.f32[0];
        v194.f32[0] = *&v200.i32[3] + *v200.i32;
        v194.f32[1] = *&v201.i32[3] + *v201.i32;
        v194.f32[2] = v202.f32[3] + v202.f32[0];
        v206 = vmulq_f32(v194, v194);
        v194.f32[3] = v204.f32[3] + v204.f32[0];
        v195.f32[0] = *&v200.i32[3] + *&v200.i32[1];
        v195.f32[1] = *&v201.i32[3] + *&v201.i32[1];
        v195.f32[2] = v202.f32[3] + v202.f32[1];
        v207 = vmulq_f32(v195, v195);
        v195.f32[3] = v204.f32[3] + v204.f32[1];
        v199.f32[0] = *&v200.i32[3] - *&v200.i32[1];
        v199.f32[1] = *&v201.i32[3] - *&v201.i32[1];
        v199.f32[2] = v202.f32[3] - v202.f32[1];
        v208 = vmulq_f32(v199, v199);
        v199.f32[3] = v204.f32[3] - v204.f32[1];
        v209 = vextq_s8(v201, v201, 8uLL);
        v210 = vextq_s8(v200, v200, 8uLL).u64[0];
        *v209.f32 = vsub_f32(vzip2_s32(v210, *v209.f32), vzip1_s32(v210, *v209.f32));
        v209.f32[2] = v202.f32[3] - v202.f32[2];
        v211 = vmulq_f32(v209, v209);
        v212 = v209;
        v212.f32[3] = v204.f32[3] - v204.f32[2];
        v213 = vzip2q_s32(v200, v201);
        v213.i32[2] = v202.i32[2];
        v214 = vmulq_f32(v213, v213);
        v213.i32[3] = v204.i32[2];
        v204.f32[0] = v205.f32[2] + vaddv_f32(*v205.f32);
        *v200.i8 = vrsqrte_f32(v204.u32[0]);
        *v200.i8 = vmul_f32(*v200.i8, vrsqrts_f32(v204.u32[0], vmul_f32(*v200.i8, *v200.i8)));
        v215 = vmulq_n_f32(v203, vmul_f32(*v200.i8, vrsqrts_f32(v204.u32[0], vmul_f32(*v200.i8, *v200.i8))).f32[0]);
        v203.f32[0] = v206.f32[2] + vaddv_f32(*v206.f32);
        *v204.f32 = vrsqrte_f32(v203.u32[0]);
        *v204.f32 = vmul_f32(*v204.f32, vrsqrts_f32(v203.u32[0], vmul_f32(*v204.f32, *v204.f32)));
        v216 = vmulq_n_f32(v194, vmul_f32(*v204.f32, vrsqrts_f32(v203.u32[0], vmul_f32(*v204.f32, *v204.f32))).f32[0]);
        v205.f32[0] = v207.f32[2] + vaddv_f32(*v207.f32);
        *v203.f32 = vrsqrte_f32(v205.u32[0]);
        *v203.f32 = vmul_f32(*v203.f32, vrsqrts_f32(v205.u32[0], vmul_f32(*v203.f32, *v203.f32)));
        v217 = vmulq_n_f32(v195, vmul_f32(*v203.f32, vrsqrts_f32(v205.u32[0], vmul_f32(*v203.f32, *v203.f32))).f32[0]);
        v205.f32[0] = v208.f32[2] + vaddv_f32(*v208.f32);
        *v208.f32 = vrsqrte_f32(v205.u32[0]);
        *v208.f32 = vmul_f32(*v208.f32, vrsqrts_f32(v205.u32[0], vmul_f32(*v208.f32, *v208.f32)));
        v218 = vmulq_n_f32(v199, vmul_f32(*v208.f32, vrsqrts_f32(v205.u32[0], vmul_f32(*v208.f32, *v208.f32))).f32[0]);
        v208.f32[0] = v214.f32[2] + vaddv_f32(*v214.f32);
        *v214.f32 = vrsqrte_f32(v208.u32[0]);
        *v214.f32 = vmul_f32(*v214.f32, vrsqrts_f32(v208.u32[0], vmul_f32(*v214.f32, *v214.f32)));
        v219 = vmulq_n_f32(v213, vmul_f32(*v214.f32, vrsqrts_f32(v208.u32[0], vmul_f32(*v214.f32, *v214.f32))).f32[0]);
        v211.f32[0] = v211.f32[2] + vaddv_f32(*v211.f32);
        *v214.f32 = vrsqrte_f32(v211.u32[0]);
        *v214.f32 = vmul_f32(*v214.f32, vrsqrts_f32(v211.u32[0], vmul_f32(*v214.f32, *v214.f32)));
        v462 = v215;
        v463 = v216;
        v464 = v217;
        v465 = v218;
        v466 = v219;
        v467 = vmulq_n_f32(v212, vmul_f32(*v214.f32, vrsqrts_f32(v211.u32[0], vmul_f32(*v214.f32, *v214.f32))).f32[0]);
        v220 = a2[5];
        v472 = a2[4];
        v473 = v220;
        v474 = a2[6].i32[0];
        v221 = a2[1];
        v468 = *a2;
        v469 = v221;
        v222 = a2[3];
        v470 = a2[2];
        v471 = v222;
        sub_1AFB7CC3C(a8);
        v224 = v223;
        v225 = ecs_stack_allocator_allocate(v91, 4 * v176, 4);
        v226 = (4 * v176) >> 2;
        sub_1AFB73FFC(v225, v224, v226, &v462, __srcb, v177, v389 ^ 1);
        v176 = v227;
        v190 = 0;
        __srcb = v225;
        v177 = v226;
LABEL_153:
        v379 = v176;
        v228 = 4 * v176;
        CFXBufferAllocatorPerFrameAllocateWithLength(*(a6 + 232), 4 * v176);
        v230 = v229;
        v232 = v231;
        v233 = [swift_unknownObjectRetain() storageMode];
        swift_unknownObjectRelease();
        if (v233 == 2)
        {
          v234 = 0;
          v235 = v395;
          if (v395)
          {
            goto LABEL_155;
          }
        }

        else
        {
          v239 = [swift_unknownObjectRetain() contents];
          v240 = v230;
          v234 = &v239[v232];
          v235 = v395;
          if (v395)
          {
LABEL_155:
            v236 = ecs_stack_allocator_allocate(v398, v228, 4);
            v237 = v177;
            v238 = v236;
            sub_1AFB74298(v235, v236, a5[1], v228 >> 2, __srcb, v237, v190);
            ecs_stack_allocator_push_snapshot(v398);
            ecs_stack_allocator_allocate(v398, v228, 8);
            if (v190)
            {
              radix_sort_float(v238);
            }

            else
            {
              radix_sort_float_with_input_indices(v238);
            }

            ecs_stack_allocator_pop_snapshot(v398);
            v12 = v355;
            goto LABEL_162;
          }
        }

        v12 = v355;
        if ((v190 & 1) == 0)
        {
          memcpy(v234, __srcb, v228);
LABEL_162:
          v241 = swift_isUniquelyReferenced_nonNull_native();
          v242 = *(v12 + 256);
          v243 = v395;
          v244 = sub_1AF41B2A8(v395 | 0x100);
          v246 = v245;
          v247 = v242[2] + ((v245 & 1) == 0);
          if (v242[3] >= v247)
          {
            if ((v241 & 1) == 0)
            {
              v250 = v244;
              sub_1AF84FC9C();
              v244 = v250;
            }

            v243 = v395;
          }

          else
          {
            sub_1AF8416F0(v247, v241);
            v244 = sub_1AF41B2A8(v395 | 0x100);
            if ((v246 & 1) != (v248 & 1))
            {
              goto LABEL_232;
            }
          }

          if (v246)
          {
            v249 = (v242[7] + 16 * v244);
            *v249 = v230;
            v249[1] = v232;
          }

          else
          {
            v242[(v244 >> 6) + 8] |= 1 << v244;
            v171 = (v242[6] + 2 * v244);
            *v171 = v243;
            v171[1] = 1;
            v172 = (v242[7] + 16 * v244);
            *v172 = v230;
            v172[1] = v232;
            ++v242[2];
          }

          *(v12 + 256) = v242;
          *(v12 + 304) = v379;
          *(v12 + 312) = 0;
        }

        v170 = v373 & v369;
        v91 = v398;
        ecs_stack_allocator_pop_snapshot(v398);
        a8 = v352;
        if ((v373 & v369) == 0)
        {
          goto LABEL_170;
        }
      }

      v190 = v389 ^ 1;
      goto LABEL_153;
    }

LABEL_170:
    if ((*(v12 + 264) & 1) == 0)
    {
      goto LABEL_228;
    }

    v251 = *(v12 + 256);
    if (!*(v251 + 16))
    {
      goto LABEL_218;
    }

    v252 = sub_1AF41B2A8(5);
    if (v253)
    {
      *(v12 + 272) = sub_1AFB74B88(*(*(v251 + 56) + 16 * v252), *(*(v251 + 56) + 16 * v252 + 8), a6, v91);
      *(v12 + 280) = v254;
    }

    if (!*(v251 + 16) || (v255 = sub_1AF41B2A8(*(v12 + 288)), (v256 & 1) == 0))
    {
LABEL_218:
      sub_1AF5D1564(&v432);
      *(v12 + 292) = (DWORD2(v404) - 1);
      return;
    }

    v257 = *(v251 + 56) + 16 * v255;
    v258 = *v257;
    v259 = *(v257 + 8);
    v260 = *(&v404 + 1);
    v261 = [swift_unknownObjectRetain() storageMode];
    swift_unknownObjectRelease();
    if (v261 == 2)
    {
      v262 = 0;
    }

    else
    {
      v328 = [swift_unknownObjectRetain() contents];
      v329 = v258;
      v262 = &v328[v259];
    }

    if (!*(&v404 + 1))
    {
LABEL_228:
      sub_1AF5D1564(&v432);
      return;
    }

    v330 = 0;
    v331 = *(&v404 + 1) - 1;
    while (1)
    {
      v332 = *&v262[4 * v330];
      if (v332)
      {
        if (v331 == v332)
        {
          goto LABEL_227;
        }
      }

      else
      {
        *(v12 + 296) = v330;
        if (v331 == v332)
        {
LABEL_227:
          *(v12 + 292) = v330;
        }
      }

      if (v260 == ++v330)
      {
        goto LABEL_228;
      }
    }
  }

  if (!*(v12 + 424))
  {
    return;
  }

  v18 = *(v12 + 528);
  if (v18 < 1)
  {
    return;
  }

  v358 = *(v12 + 424);
  v19 = *(v12 + 432);
  v336 = *(v12 + 440);
  v393 = sub_1AFB74FD4(a6, v12, v18);
  v21 = v20;
  v346 = v385 | v389;
  v335 = v18;
  v338 = 4 * v18;
  v339 = v19;
  v337 = v19 + 28;
  v357 = 1 << -__clz(v18 - 1);
  v397 = v20;
  while (v13)
  {
    v23 = __clz(__rbit64(v13));
    if (v23 > 6)
    {
      break;
    }

    if (((1 << v23) & v13) != 0)
    {
      v24 = ~(1 << v23);
    }

    else
    {
      v24 = -1;
    }

    if (v346)
    {
      v25 = a2[5];
      v472 = a2[4];
      v473 = v25;
      v474 = a2[6].i32[0];
      v26 = a2[1];
      v468 = *a2;
      v469 = v26;
      v27 = a2[3];
      v470 = a2[2];
      v471 = v27;
      v28 = sub_1AFB7520C(&v468, v12, v393, v21, 0, a8, v17);
      v13 &= v24;
      if (!v23)
      {
        goto LABEL_34;
      }

LABEL_24:
      v342 = v29;
      v353 = v13;
      v30 = v28;
      sub_1AF442324(v12, &v412);
      v390 = a5[1];
      v31 = *(v17 + 232);
      v32 = 4 * v427;

      CFXBufferAllocatorPerFrameAllocateWithLength(v31, v32);
      v34 = v33;
      v36 = v35;
      v347 = v23;
      v455.i32[0] = v23;
      v456 = v390;
      v457.i8[0] = 0;
      v343 = v30;
      v457.i8[1] = v30 != 0;
      sub_1AF7180FC();

      v37 = sub_1AF6F4158();
      if (v351)
      {
        goto LABEL_233;
      }

      v38 = v37;
      v386 = v36;
      v391 = v34;
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      v40 = sub_1AFDFCEC8();
      [v38 pushDebugGroup_];

      sub_1AF6F3BD8(v41, v42);
      v43 = v428;
      if (!v428)
      {
        goto LABEL_234;
      }

      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v44 = v423;
      if (v423)
      {
        v45 = v425;
        v46 = v420;
        v47 = v424;
        if (v419)
        {
          v48 = v426;
        }

        else
        {
          v48 = 0;
        }

        v49 = (v421 + v422 * v48) | (v422 << 32);
        swift_unknownObjectRetain();
        sub_1AF6F34C4(v46, v49, 0, 4, ObjectType);
        v50 = v45;
        v12 = v355;
        sub_1AF6F353C(v44, v47, v50, 0);
        swift_unknownObjectRelease();
      }

      sub_1AF6F458C(v391, v386, 0, 1);
      [v38 setBytes:&v455 length:48 atIndex:2];
      if (v457.u8[1] == 1)
      {
        v51 = v343;
        sub_1AF6F458C(v343, v342, 0, 3);
      }

      else
      {
        sub_1AF6F458C(*(a10 + 208), *(a10 + 216) | (*(a10 + 224) << 32), 0, 3);
        v51 = v343;
      }

      [v38 setComputePipelineState_];
      sub_1AFB78748(&v462);
      sub_1AF6F4960(v393, v397, 0, v462.i64[0], v462.i64[1], v463.i64[0]);
      swift_unknownObjectRelease();
      [v38 popDebugGroup];

      swift_unknownObjectRelease();
      sub_1AF58D38C(&v412);
      CFXBufferAllocatorPerFrameAllocateWithLength(*(a6 + 232), v338);
      v344 = v54;
      v345 = v53;
      CFXBufferAllocatorPerFrameAllocateWithLength(*(a6 + 232), v338);
      v340 = v56;
      v341 = v55;
      CFXBufferAllocatorPerFrameAllocateWithLength(*(a6 + 232), v338);
      __src = v57;
      v375 = v58;
      CFXBufferAllocatorPerFrameAllocateWithLength(*(a6 + 232), v338);
      v371 = v59;
      v366 = v60;
      if (v51)
      {
        v61 = v337;
      }

      else
      {
        v61 = v339;
      }

      v455.i32[0] = 0;
      sub_1AF7180FC();

      v62 = sub_1AF6F4158();
      swift_getObjectType();
      swift_unknownObjectRetain();
      v63 = sub_1AFDFCEC8();
      [v62 pushDebugGroup_];

      sub_1AF6F3BD8(v64, v65);
      swift_unknownObjectRelease();
      v66 = *(v12 + 736);
      if (v66)
      {
        swift_unknownObjectRetain();
        sub_1AF6F458C(v391, v386, 0, 1);
        sub_1AF6F458C(__src, v375, 0, 2);
        sub_1AF6F458C(v371, v366, 0, 3);
        sub_1AF6F458C(v358, v61 | 0x400000000, 0, 4);
        [v62 setThreadgroupMemoryLength:2048 atIndex:0];
        [v62 setThreadgroupMemoryLength:2048 atIndex:1];
        [v62 setComputePipelineState_];
        sub_1AFB78748(&v412);
        sub_1AF6F4960(v393, v397, 0, v412.i64[0], v412.i64[1], v413.i64[0]);
        swift_unknownObjectRelease();
      }

      [v62 popDebugGroup];

      swift_unknownObjectRelease();
      sub_1AFB78748(&v412);
      v67 = v412;
      v361 = v413.i64[0];
      sub_1AF7180FC();

      v351 = 0;
      v68 = sub_1AF6F4158();
      swift_getObjectType();
      swift_unknownObjectRetain();
      v69 = sub_1AFDFCEC8();
      [v68 pushDebugGroup_];

      sub_1AF6F3BD8(v70, v71);
      swift_unknownObjectRelease();
      v17 = a10;
      v21 = v397;
      if (*(v12 + 752))
      {
        v359 = *(v12 + 752);
        swift_unknownObjectRetain();
        if (v357 >= 1024)
        {
          v72 = 12;
          v73 = 2;
          v74 = 1;
          v75 = 1024;
          do
          {
            v76 = v73;
            v455.i32[0] = v75;
            sub_1AF6F458C(v341, v340, 0, v73);
            sub_1AF6F458C(v391, v386, 0, v76 + 5);
            sub_1AF6F458C(__src, v375, 0, v74);
            sub_1AF6F458C(v371, v366, 0, v74 + 5);
            sub_1AF6F458C(v358, v61 | 0x400000000, 0, 4);
            [v68 setBytes:&v455 length:4 atIndex:8];
            [v68 setComputePipelineState_];
            sub_1AF6F4960(v393, v397, v72, v67.i64[0], v67.i64[1], v361);
            v75 *= 2;
            v72 += 12;
            v73 = v74;
            v74 = v76;
          }

          while (v357 >= v75);
        }

        v77 = 768;
        if (v343)
        {
          v77 = 776;
        }

        v12 = v355;
        v78 = *(v355 + v77);
        v21 = v397;
        if (v78)
        {
          swift_unknownObjectRetain();
          sub_1AF6F458C(v341, v340, 0, 1);
          sub_1AF6F458C(__src, v375, 0, 2);
          sub_1AF6F458C(v345, v344, 0, 3);
          sub_1AF6F458C(v358, v61 | 0x400000000, 0, 4);
          sub_1AF6F458C(v343, v342, 0, 5);
          [v68 0x1FB662C25];
          sub_1AF6F4960(v393, v397, 0, v67.i64[0], v67.i64[1], v361);
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
        v17 = a10;
      }

      [v68 popDebugGroup];

      swift_unknownObjectRelease();
      v52 = v347;
      a8 = v352;
LABEL_52:
      v79 = swift_isUniquelyReferenced_nonNull_native();
      v412.i64[0] = *(v12 + 256);
      v80 = v412.i64[0];
      v81 = sub_1AF41B2A8(v52);
      v83 = v82;
      v84 = *(v80 + 16) + ((v82 & 1) == 0);
      if (*(v80 + 24) >= v84)
      {
        v86 = v347;
        if ((v79 & 1) == 0)
        {
          v90 = v81;
          sub_1AF84FC9C();
          v81 = v90;
          v86 = v347;
        }

        v13 = v353;
      }

      else
      {
        sub_1AF8416F0(v84, v79);
        v81 = sub_1AF41B2A8(v52);
        if ((v83 & 1) != (v85 & 1))
        {
          goto LABEL_232;
        }

        v13 = v353;
        v86 = v347;
      }

      v87 = v412.i64[0];
      if (v83)
      {
        v22 = (*(v412.i64[0] + 56) + 16 * v81);
        *v22 = v345;
        v22[1] = v344;
      }

      else
      {
        *(v412.i64[0] + 8 * (v81 >> 6) + 64) |= 1 << v81;
        v88 = (v87[6] + 2 * v81);
        *v88 = v86;
        v88[1] = 0;
        v89 = (v87[7] + 16 * v81);
        *v89 = v345;
        v89[1] = v344;
        ++v87[2];
      }

      *(v12 + 256) = v87;
    }

    else
    {
      v28 = 0;
      v29 = 0;
      v13 &= v24;
      if (v23)
      {
        goto LABEL_24;
      }

LABEL_34:
      if (v28)
      {
        LOBYTE(v347) = v23;
        v353 = v13;
        v52 = 0;
        v344 = v29;
        v345 = v28;
        goto LABEL_52;
      }
    }
  }

  v263 = *(v12 + 248);
LABEL_180:
  v265 = &selRef_setAnimationTimingFunction_;
  while (v263)
  {
    v266 = __clz(__rbit64(v263));
    if (v266 > 6)
    {
      break;
    }

    if (((1 << v266) & v263) != 0)
    {
      v267 = ~(1 << v266);
    }

    else
    {
      v267 = -1;
    }

    if (v346)
    {
      v268 = a2[5];
      v459 = a2[4];
      v460 = v268;
      v461 = a2[6].i32[0];
      v269 = a2[1];
      v455 = *a2;
      v456 = v269;
      v270 = a2[3];
      v457 = a2[2];
      v458 = v270;
      v271 = v266;
      v272 = sub_1AFB7520C(&v455, v12, v393, v397, 1, a8, v17);
      v266 = v271;
      v274 = v272;
      v263 &= v267;
      if (v266)
      {
        goto LABEL_192;
      }
    }

    else
    {
      v274 = 0;
      v273 = 0;
      v263 &= v267;
      if (v266)
      {
LABEL_192:
        v370 = v273;
        v380 = v263;
        v277 = v266;
        sub_1AF442324(v12, &v412);
        v374 = a5[1];
        v278 = *(v17 + 232);
        v279 = 8 * v427;

        CFXBufferAllocatorPerFrameAllocateWithLength(v278, v279);
        __srcc = v281;
        v387 = v280;
        v392 = v277;
        v462.i32[0] = v277;
        v463 = v374;
        v464.i8[0] = 0;
        v464.i8[1] = v274 != 0;
        sub_1AF7180FC();

        v282 = sub_1AF6F4158();
        if (v351)
        {
          goto LABEL_233;
        }

        v283 = v282;
        v284 = swift_getObjectType();
        swift_unknownObjectRetain();
        v285 = sub_1AFDFCEC8();
        [v283 pushDebugGroup_];

        sub_1AF6F3BD8(v286, v287);
        v288 = v429;
        if (!v429)
        {
          goto LABEL_234;
        }

        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        v289 = v423;
        if (v423)
        {
          v290 = v425;
          v291 = v420;
          v292 = v424;
          if (v419)
          {
            v293 = v426;
          }

          else
          {
            v293 = 0;
          }

          v294 = (v421 + v422 * v293) | (v422 << 32);
          swift_unknownObjectRetain();
          sub_1AF6F34C4(v291, v294, 0, 4, v284);
          v295 = v292;
          v265 = &selRef_setAnimationTimingFunction_;
          v296 = v290;
          v17 = a10;
          sub_1AF6F353C(v289, v295, v296, 0);
          swift_unknownObjectRelease();
        }

        sub_1AF6F458C(v387, __srcc, 0, 1);
        [v283 v265[91]];
        if (v464.u8[1] == 1)
        {
          v297 = v274;
          v298 = v370;
          sub_1AF6F458C(v274, v370, 0, 3);
        }

        else
        {
          sub_1AF6F458C(*(v17 + 208), *(v17 + 216) | (*(v17 + 224) << 32), 0, 3);
          v297 = v274;
          v298 = v370;
        }

        [v283 setComputePipelineState_];
        sub_1AFB78748(&v399);
        sub_1AF6F4960(v393, v397, 0, v399, v400, *(&v400 + 1));
        swift_unknownObjectRelease();
        [v283 popDebugGroup];

        swift_unknownObjectRelease();
        sub_1AF58D38C(&v412);
        v12 = v355;
        v274 = sub_1AFB756C4(a6, a7, v355, v387, __srcc, v393, v397, 1, v297, v298);
        v275 = v299;
        v276 = v392 | 0x100u;
        a8 = v352;
LABEL_203:
        v300 = swift_isUniquelyReferenced_nonNull_native();
        v412.i64[0] = *(v12 + 256);
        v301 = v412.i64[0];
        v302 = sub_1AF41B2A8(v276);
        v304 = v303;
        v305 = *(v301 + 16) + ((v303 & 1) == 0);
        if (*(v301 + 24) < v305)
        {
          sub_1AF8416F0(v305, v300);
          v302 = sub_1AF41B2A8(v276);
          if ((v304 & 1) == (v306 & 1))
          {
            v17 = a10;
            goto LABEL_208;
          }

LABEL_232:
          sub_1AFDFF1A8();
          __break(1u);
LABEL_233:
          swift_unexpectedError();
          __break(1u);
          goto LABEL_234;
        }

        v17 = a10;
        if ((v300 & 1) == 0)
        {
          v310 = v302;
          sub_1AF84FC9C();
          v302 = v310;
        }

LABEL_208:
        v263 = v380;
        v307 = v412.i64[0];
        if (v304)
        {
          v264 = (*(v412.i64[0] + 56) + 16 * v302);
          *v264 = v274;
          v264[1] = v275;
        }

        else
        {
          *(v412.i64[0] + 8 * (v302 >> 6) + 64) |= 1 << v302;
          v308 = (v307[6] + 2 * v302);
          *v308 = v392;
          v308[1] = 1;
          v309 = (v307[7] + 16 * v302);
          *v309 = v274;
          v309[1] = v275;
          ++v307[2];
        }

        *(v12 + 256) = v307;
        goto LABEL_180;
      }
    }

    if (v274)
    {
      v275 = v273;
      LOBYTE(v392) = v266;
      v380 = v263;
      v276 = 256;
      goto LABEL_203;
    }
  }

  if (*(v12 + 264))
  {
    v311 = *(v12 + 256);
    if (*(v311 + 16))
    {
      v312 = sub_1AF41B2A8(5);
      if (v313)
      {
        v314 = (*(v311 + 56) + 16 * v312);
        v315 = *v314;
        v388 = v314[1];
        CFXBufferAllocatorPerFrameAllocateWithLength(*(a6 + 232), 8 * v335);
        v317 = v316;
        v319 = v318;
        sub_1AF7180FC();

        v320 = sub_1AF6F4158();
        if (v351)
        {
          goto LABEL_233;
        }

        v321 = v320;
        v322 = swift_getObjectType();
        swift_unknownObjectRetain();
        v323 = sub_1AFDFCEC8();
        [v321 pushDebugGroup_];

        sub_1AF6F3BD8(v324, v325);
        v326 = *(v355 + 816);
        if (!v326)
        {
          while (1)
          {
LABEL_234:
            sub_1AFDFE518();
            __break(1u);
          }
        }

        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        if (*(v355 + 336))
        {
          v327 = *(v355 + 512);
        }

        else
        {
          LODWORD(v327) = 0;
        }

        v333 = *(v355 + 344);
        v334 = (*(v355 + 352) + *(v355 + 368) * v327) | (*(v355 + 368) << 32);
        swift_unknownObjectRetain();
        sub_1AF6F34C4(v333, v334, 0, 4, v322);
        sub_1AF6F353C(v358, v339, v336, 0);
        swift_unknownObjectRelease();
        sub_1AF6F458C(v315, v388, 0, 0);
        sub_1AF6F458C(v317, v319, 0, 1);
        [v321 setComputePipelineState_];
        sub_1AFB78748(&v412);
        sub_1AF6F4960(v393, v397, 0, v412.i64[0], v412.i64[1], v413.i64[0]);
        swift_unknownObjectRelease();
        [v321 popDebugGroup];

        swift_unknownObjectRelease();
        *(v355 + 272) = v317;
        *(v355 + 280) = v319;
      }
    }
  }
}