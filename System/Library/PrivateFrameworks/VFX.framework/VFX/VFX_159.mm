void sub_1AFD26420(uint64_t a1, char **a2, uint64_t a3)
{
  v4 = *(a1 + 88);
  v5 = *(a1 + 104);
  v6 = sub_1AF64B110(&type metadata for TextureGPURuntime, &off_1F2544388, v4, *(a1 + 96), v5, *(a1 + 16));
  v7 = v6;
  if (v4)
  {
    if (v5)
    {
      v8 = &selRef_shadingModel;
      v9 = &selRef_defaultTexture3D;
      do
      {
        v11 = *v4++;
        v10 = v11;
        v12 = *v7;
        if (*v7)
        {
          if ([swift_unknownObjectRetain() textureType] == 5 || (v13 = objc_msgSend(v12, v8[454]), v13 != (2 * objc_msgSend(v12, v9[396]))))
          {
            swift_unknownObjectRelease();
          }

          else
          {

            v14 = sub_1AF6496EC(v10);

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
            *&v15[8 * v18 + 32] = v14;
            v19 = sub_1AF8E8B04(v12, a3);
            swift_unknownObjectRelease_n();
            *v7 = v19;
            v8 = &selRef_shadingModel;
            v9 = &selRef_defaultTexture3D;
          }
        }

        v7 += 2;
        --v5;
      }

      while (v5);
    }
  }

  else
  {
    v20 = *(a1 + 48);
    v21 = *(a1 + 56);
    if (v20 != v21)
    {
      v22 = &selRef_shadingModel;
      v23 = &selRef_defaultTexture3D;
      v24 = &v6[16 * v20];
      do
      {
        v25 = *v24;
        if (*v24)
        {
          if ([swift_unknownObjectRetain() v22[210]] == 5 || (v26 = objc_msgSend(v25, sel_width), v26 != (2 * objc_msgSend(v25, v23[396]))))
          {
            swift_unknownObjectRelease();
          }

          else
          {

            v27 = sub_1AF6496EC(v20);

            v28 = *a2;
            v29 = swift_isUniquelyReferenced_nonNull_native();
            *a2 = v28;
            if ((v29 & 1) == 0)
            {
              v28 = sub_1AF4217DC(0, *(v28 + 2) + 1, 1, v28);
              *a2 = v28;
            }

            v31 = *(v28 + 2);
            v30 = *(v28 + 3);
            if (v31 >= v30 >> 1)
            {
              v28 = sub_1AF4217DC(v30 > 1, v31 + 1, 1, v28);
              *a2 = v28;
            }

            *(v28 + 2) = v31 + 1;
            *&v28[8 * v31 + 32] = v27;
            v32 = sub_1AF8E8B04(v25, a3);
            swift_unknownObjectRelease_n();
            *v24 = v32;
            v22 = &selRef_shadingModel;
            v23 = &selRef_defaultTexture3D;
          }
        }

        ++v20;
        v24 += 2;
      }

      while (v21 != v20);
    }
  }
}

char *sub_1AFD2674C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v144 = a2;
  v6 = a1[11];
  v7 = a1[12];
  v8 = a1[13];
  v9 = a1[2];
  v10 = sub_1AF64B110(&type metadata for SkinnedMeshBinding, &off_1F2543758, v6, v7, v8, v9);
  v130 = sub_1AF64B110(&type metadata for MeshModel, &off_1F2562500, v6, v7, v8, v9);
  v128 = v9;
  result = sub_1AF64B110(&type metadata for WorldTransform, &off_1F2529FC0, v6, v7, v8, v9);
  if (v6)
  {
    if (v8)
    {
      v12 = 0;
      v13 = (v144 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
      v126 = result;
      v101 = v10;
      v102 = (v144 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
      do
      {
        v17 = &v10[80 * v12];
        v18 = v17->i32[1];
        v19 = v17->i32[0];
        v20 = v19 == -1 && v18 == 0;
        if (!v20 && (v19 & 0x80000000) == 0 && v13[1] > v19)
        {
          v21 = (*v13 + 12 * v19);
          if (v18 == -1 || v21[2] == v18)
          {
            v23 = &result[64 * v12];
            v24 = *(v21 + 2);
            v25 = *(*(v144 + 144) + 8 * *v21 + 32);
            v26 = *(v25 + 48);
            v27 = (v26 + 32);
            v28 = *(v26 + 16) + 1;
            while (--v28)
            {
              v29 = v27 + 5;
              v30 = *v27;
              v27 += 5;
              if (v30 == &type metadata for Skeleton)
              {
                v120 = &v130[16 * v12];
                v31 = *(v29 - 2) + 40 * v24 + *(v25 + 128);
                v32 = *(v31 + 24);
                v33 = *(*(v31 + 16) + 16);
                v34 = v128[4];

                ecs_stack_allocator_push_snapshot(v34);
                v124 = v34;
                v35 = v34;
                v36 = v33;
                v37 = ecs_stack_allocator_allocate(v35, v33 << 6, 16);
                v105 = v17[1];
                v108 = v17[2];
                v112 = v17[3];
                v116 = v17[4];
                v145 = __invert_f4(*v23);
                if (v33)
                {
                  v38 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v105, v145.columns[0].f32[0]), v108, *v145.columns[0].f32, 1), v112, v145.columns[0], 2), v116, v145.columns[0], 3);
                  v39 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v105, v145.columns[1].f32[0]), v108, *v145.columns[1].f32, 1), v112, v145.columns[1], 2), v116, v145.columns[1], 3);
                  v40 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v105, v145.columns[2].f32[0]), v108, *v145.columns[2].f32, 1), v112, v145.columns[2], 2), v116, v145.columns[2], 3);
                  v41 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v105, v145.columns[3].f32[0]), v108, *v145.columns[3].f32, 1), v112, v145.columns[3], 2), v116, v145.columns[3], 3);
                  v42 = v32 + 10;
                  v43 = &v37[2];
                  v44 = v33;
                  do
                  {
                    v45 = *v42->f32;
                    v46 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v38, COERCE_FLOAT(*v42[-4].f32)), v39, v42[-4], 1), v40, *v42[-4].f32, 2), v41, *v42[-4].f32, 3);
                    v47 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v38, COERCE_FLOAT(*v42[-2].f32)), v39, v42[-2], 1), v40, *v42[-2].f32, 2), v41, *v42[-2].f32, 3);
                    v48 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v38, COERCE_FLOAT(*v42->f32)), v39, *v42, 1), v40, *v42->f32, 2);
                    v43[-2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v38, COERCE_FLOAT(*v42[-6].f32)), v39, v42[-6], 1), v40, *v42[-6].f32, 2), v41, *v42[-6].f32, 3);
                    v43[-1] = v46;
                    *v43 = v47;
                    v43[1] = vmlaq_laneq_f32(v48, v41, v45, 3);
                    v43 += 4;
                    v42 += 8;
                    --v44;
                  }

                  while (v44);
                }

                CFXBufferAllocatorPerFrameAllocateWithLength(*(a3 + 232), 48 * v33);
                v50 = v49;
                v52 = v51;
                v53 = [swift_unknownObjectRetain() storageMode];
                swift_unknownObjectRelease();
                if (v53 == 2)
                {
                  v54 = 0;
                }

                else
                {
                  v55 = [swift_unknownObjectRetain() contents];
                  v56 = v50;
                  v54 = v55 + v52;
                }

                v10 = v101;
                matrix_transpose_batch(v54, v37, v36);
                v57 = *v120;
                if (*v120)
                {
                  sub_1AF8C4ED0(0, &v131);
                  if (v131)
                  {
                    v142 = v131;
                    *v143 = v132[0];
                    *&v143[9] = *(v132 + 9);
                    sub_1AF8C4ED0(9, &v133);
                    v58 = v133;
                    if (v133)
                    {
                      v121 = v134;
                      v117 = v135;
                      sub_1AF8C4ED0(8, &v136);
                      if (v136)
                      {
                        v113 = v138;
                        v106 = v137;
                        v109 = v136;

                        sub_1AF70B434(&v142, &v139);
                        swift_getObjectType();
                        sub_1AF6F458C(v142, *v143 | (*&v143[8] << 32), 0, 0);
                        sub_1AF6F458C(v139, v140 | (v141 << 32), 0, 1);
                        sub_1AF6F458C(v58, v121 | (v117 << 32), 0, 6);
                        sub_1AF6F458C(v50, v52, 0, 7);
                        sub_1AF6F458C(v109, v106 | (v113 << 32), 0, 8);
                        sub_1AF6F4798(a5, *(v57 + 48));
                        sub_1AF718F80(&v139);
                        sub_1AFD53260(&v136, &qword_1EB63FFA8, &type metadata for MeshBuffer);
                      }

                      else
                      {
                      }

                      sub_1AFD53260(&v133, &qword_1EB63FFA8, &type metadata for MeshBuffer);
                      sub_1AFD53260(&v131, &qword_1EB63FFA8, &type metadata for MeshBuffer);
                    }

                    else
                    {
                      sub_1AFD53260(&v131, &qword_1EB63FFA8, &type metadata for MeshBuffer);
                    }
                  }
                }

                ecs_stack_allocator_pop_snapshot(v124);

                result = v126;
                v13 = v102;
                break;
              }
            }
          }
        }

        ++v12;
      }

      while (v12 != v8);
    }
  }

  else
  {
    v15 = a1[6];
    v14 = a1[7];
    if (v15 != v14)
    {
      v16 = (v144 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
      v127 = result;
      v103 = (v144 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
      v100 = a1[7];
      do
      {
        v59 = &v10[80 * v15];
        v60 = v59->i32[1];
        v61 = v59->i32[0];
        v62 = v61 == -1 && v60 == 0;
        if (!v62 && (v61 & 0x80000000) == 0 && v16[1] > v61)
        {
          v63 = (*v16 + 12 * v61);
          if (v60 == -1 || v63[2] == v60)
          {
            v65 = &result[64 * v15];
            v66 = *(v63 + 2);
            v67 = *(*(v144 + 144) + 8 * *v63 + 32);
            v68 = *(v67 + 48);
            v69 = (v68 + 32);
            v70 = *(v68 + 16) + 1;
            while (--v70)
            {
              v71 = v69 + 5;
              v72 = *v69;
              v69 += 5;
              if (v72 == &type metadata for Skeleton)
              {
                v122 = &v130[16 * v15];
                v73 = *(v71 - 2) + 40 * v66 + *(v67 + 128);
                v74 = *(v73 + 24);
                v75 = *(*(v73 + 16) + 16);
                v76 = v128[4];

                ecs_stack_allocator_push_snapshot(v76);
                v125 = v76;
                v77 = ecs_stack_allocator_allocate(v76, v75 << 6, 16);
                v107 = v59[1];
                v110 = v59[2];
                v114 = v59[3];
                v118 = v59[4];
                v146 = __invert_f4(*v65);
                if (v75)
                {
                  v78 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v107, v146.columns[0].f32[0]), v110, *v146.columns[0].f32, 1), v114, v146.columns[0], 2), v118, v146.columns[0], 3);
                  v79 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v107, v146.columns[1].f32[0]), v110, *v146.columns[1].f32, 1), v114, v146.columns[1], 2), v118, v146.columns[1], 3);
                  v80 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v107, v146.columns[2].f32[0]), v110, *v146.columns[2].f32, 1), v114, v146.columns[2], 2), v118, v146.columns[2], 3);
                  v81 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v107, v146.columns[3].f32[0]), v110, *v146.columns[3].f32, 1), v114, v146.columns[3], 2), v118, v146.columns[3], 3);
                  v82 = v74 + 10;
                  v83 = &v77[2];
                  v84 = v75;
                  do
                  {
                    v85 = *v82->f32;
                    v86 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v78, COERCE_FLOAT(*v82[-4].f32)), v79, v82[-4], 1), v80, *v82[-4].f32, 2), v81, *v82[-4].f32, 3);
                    v87 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v78, COERCE_FLOAT(*v82[-2].f32)), v79, v82[-2], 1), v80, *v82[-2].f32, 2), v81, *v82[-2].f32, 3);
                    v88 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v78, COERCE_FLOAT(*v82->f32)), v79, *v82, 1), v80, *v82->f32, 2);
                    v83[-2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v78, COERCE_FLOAT(*v82[-6].f32)), v79, v82[-6], 1), v80, *v82[-6].f32, 2), v81, *v82[-6].f32, 3);
                    v83[-1] = v86;
                    *v83 = v87;
                    v83[1] = vmlaq_laneq_f32(v88, v81, v85, 3);
                    v83 += 4;
                    v82 += 8;
                    --v84;
                  }

                  while (v84);
                }

                CFXBufferAllocatorPerFrameAllocateWithLength(*(a3 + 232), 48 * v75);
                v90 = v89;
                v92 = v91;
                v93 = [swift_unknownObjectRetain() storageMode];
                swift_unknownObjectRelease();
                if (v93 == 2)
                {
                  v94 = 0;
                }

                else
                {
                  v95 = [swift_unknownObjectRetain() contents];
                  v96 = v90;
                  v94 = v95 + v92;
                }

                matrix_transpose_batch(v94, v77, v75);
                v97 = *v122;
                if (*v122)
                {
                  sub_1AF8C4ED0(0, &v131);
                  if (v131)
                  {
                    v142 = v131;
                    *v143 = v132[0];
                    *&v143[9] = *(v132 + 9);
                    sub_1AF8C4ED0(9, &v133);
                    v98 = v133;
                    if (v133)
                    {
                      v123 = v134;
                      v119 = v135;
                      sub_1AF8C4ED0(8, &v136);
                      v99 = v136;
                      if (v136)
                      {
                        v115 = v138;
                        v111 = v137;

                        sub_1AF70B434(&v142, &v139);
                        swift_getObjectType();
                        sub_1AF6F458C(v142, *v143 | (*&v143[8] << 32), 0, 0);
                        sub_1AF6F458C(v139, v140 | (v141 << 32), 0, 1);
                        sub_1AF6F458C(v98, v123 | (v119 << 32), 0, 6);
                        sub_1AF6F458C(v90, v92, 0, 7);
                        sub_1AF6F458C(v99, v111 | (v115 << 32), 0, 8);
                        sub_1AF6F4798(a5, *(v97 + 48));
                        sub_1AF718F80(&v139);
                        sub_1AFD53260(&v136, &qword_1EB63FFA8, &type metadata for MeshBuffer);
                      }

                      else
                      {
                      }

                      sub_1AFD53260(&v133, &qword_1EB63FFA8, &type metadata for MeshBuffer);
                      sub_1AFD53260(&v131, &qword_1EB63FFA8, &type metadata for MeshBuffer);
                    }

                    else
                    {
                      sub_1AFD53260(&v131, &qword_1EB63FFA8, &type metadata for MeshBuffer);
                    }
                  }
                }

                ecs_stack_allocator_pop_snapshot(v125);

                result = v127;
                v16 = v103;
                v14 = v100;
                break;
              }
            }
          }
        }

        ++v15;
      }

      while (v15 != v14);
    }
  }

  return result;
}

uint64_t sub_1AFD27208(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v10 = a1[11];
  v9 = a1[12];
  v11 = a1[13];
  v12 = a1[2];
  sub_1AF64B110(&type metadata for ParticleSphereCollider, &off_1F2553488, v10, v9, v11, v12);
  v77 = sub_1AF64B110(&type metadata for WorldTransform, &off_1F2529FC0, v10, v9, v11, v12);
  result = sub_1AF64B110(&type metadata for LastFrameWorldTransform, &off_1F2529EB0, v10, v9, v11, v12);
  if (!v10)
  {
    v45 = a1[6];
    v46 = a1[7];
    if (v45 == v46)
    {
      return result;
    }

    v47 = a3 + 32;
    while (1)
    {
      v48 = &v77[64 * v45];
      v49 = *v48;
      v50 = v48[1];
      v51 = v48[2];
      v52 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v51, v51), v51, 0xCuLL), vnegq_f32(v50)), v51, vextq_s8(vuzp1q_s32(v50, v50), v50, 0xCuLL));
      v53 = vmulq_f32(*v48, vextq_s8(vuzp1q_s32(v52, v52), v52, 0xCuLL));
      if ((v53.f32[2] + vaddv_f32(*v53.f32)) >= 0.0)
      {
        v54 = 1.0;
      }

      else
      {
        v54 = -1.0;
      }

      v55 = vmulq_f32(v49, v49);
      v56 = vmulq_f32(v50, v50);
      v57 = vadd_f32(vzip1_s32(*v55.i8, *v56.i8), vzip2_s32(*v55.i8, *v56.i8));
      v58 = vextq_s8(v55, v55, 8uLL);
      *v58.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v58.f32, *&vextq_s8(v56, v56, 8uLL)), v57));
      v59 = vmulq_f32(v51, v51);
      v58.i32[2] = sqrtf(v59.f32[2] + vaddv_f32(*v59.f32));
      v60 = vmulq_n_f32(v58, v54);
      v61 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v48[3], 0, v51), 0, v50), 0, v49);
      v61.f32[3] = fmaxf(fmaxf(v60.f32[0], v60.f32[2]), v60.f32[1]) * 0.5;
      v79[0] = v61;
      v80 = 3;
      ecs_stack_allocator_push_snapshot(*(a2 + 32));
      v62 = *(a3 + 16);
      v63 = 2 * v62;
      v64 = ecs_stack_allocator_allocate(*(a2 + 32), 16 * v62 + 32, 8);
      *v64 = &type metadata for DebugInfoWireframePrimitive;
      v64[1] = &off_1F25604A8;
      v64[2] = &type metadata for DebugInfoColor;
      v64[3] = &off_1F2560488;
      if (!v62)
      {
        v66 = 2;
        goto LABEL_38;
      }

      if (v62 <= 3 || (v64 + 4) < v47 + v63 * 8 && v47 < &v64[v63 + 4])
      {
        break;
      }

      v65 = v62 & 0x7FFFFFFFFFFFFFFCLL;
      v66 = v62 & 0x7FFFFFFFFFFFFFFCLL | 2;
      v70 = v64 + 8;
      v71 = v62 & 0x7FFFFFFFFFFFFFFCLL;
      v72 = (a3 + 64);
      do
      {
        v74 = *(v72 - 2);
        v73 = *(v72 - 1);
        v76 = *v72;
        v75 = v72[1];
        v72 += 4;
        *(v70 - 2) = v74;
        *(v70 - 1) = v73;
        *v70 = v76;
        v70[1] = v75;
        v70 += 4;
        v71 -= 4;
      }

      while (v71);
      if (v62 != v65)
      {
        goto LABEL_34;
      }

LABEL_38:
      sub_1AF63C898(v64, v66, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a2, v79, a4);
      if (v5)
      {
LABEL_45:
        result = ecs_stack_allocator_pop_snapshot(*(a2 + 32));
        __break(1u);
        return result;
      }

      v5 = 0;
      ++v45;
      result = ecs_stack_allocator_pop_snapshot(*(a2 + 32));
      if (v45 == v46)
      {
        return result;
      }
    }

    v65 = 0;
    v66 = 2;
LABEL_34:
    v67 = v62 - v65;
    v68 = (v47 + 16 * v65);
    do
    {
      v69 = *v68++;
      *&v64[2 * v66++] = v69;
      --v67;
    }

    while (v67);
    goto LABEL_38;
  }

  if (v11)
  {
    v14 = 0;
    v15 = a3 + 32;
    do
    {
      v16 = &v77[64 * v14];
      v17 = *v16;
      v18 = v16[1];
      v19 = v16[2];
      v20 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL), vnegq_f32(v18)), v19, vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL));
      v21 = vmulq_f32(*v16, vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL));
      if ((v21.f32[2] + vaddv_f32(*v21.f32)) >= 0.0)
      {
        v22 = 1.0;
      }

      else
      {
        v22 = -1.0;
      }

      v23 = vmulq_f32(v17, v17);
      v24 = vmulq_f32(v18, v18);
      v25 = vadd_f32(vzip1_s32(*v23.i8, *v24.i8), vzip2_s32(*v23.i8, *v24.i8));
      v26 = vextq_s8(v23, v23, 8uLL);
      *v26.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v26.f32, *&vextq_s8(v24, v24, 8uLL)), v25));
      v27 = vmulq_f32(v19, v19);
      v26.i32[2] = sqrtf(v27.f32[2] + vaddv_f32(*v27.f32));
      v28 = vmulq_n_f32(v26, v22);
      v29 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v16[3], 0, v19), 0, v18), 0, v17);
      v29.f32[3] = fmaxf(fmaxf(v28.f32[0], v28.f32[2]), v28.f32[1]) * 0.5;
      v79[0] = v29;
      v80 = 3;
      ecs_stack_allocator_push_snapshot(*(a2 + 32));
      v30 = *(a3 + 16);
      v31 = 2 * v30;
      v32 = ecs_stack_allocator_allocate(*(a2 + 32), 16 * v30 + 32, 8);
      *v32 = &type metadata for DebugInfoWireframePrimitive;
      v32[1] = &off_1F25604A8;
      v32[2] = &type metadata for DebugInfoColor;
      v32[3] = &off_1F2560488;
      if (v30)
      {
        if (v30 > 3 && ((v32 + 4) >= v15 + v31 * 8 || v15 >= &v32[v31 + 4]))
        {
          v33 = v30 & 0x7FFFFFFFFFFFFFFCLL;
          v34 = v30 & 0x7FFFFFFFFFFFFFFCLL | 2;
          v38 = v32 + 8;
          v39 = v30 & 0x7FFFFFFFFFFFFFFCLL;
          v40 = (a3 + 64);
          do
          {
            v42 = *(v40 - 2);
            v41 = *(v40 - 1);
            v44 = *v40;
            v43 = v40[1];
            v40 += 4;
            *(v38 - 2) = v42;
            *(v38 - 1) = v41;
            *v38 = v44;
            v38[1] = v43;
            v38 += 4;
            v39 -= 4;
          }

          while (v39);
          if (v30 == v33)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v33 = 0;
          v34 = 2;
        }

        v35 = v30 - v33;
        v36 = (v15 + 16 * v33);
        do
        {
          v37 = *v36++;
          *&v32[2 * v34++] = v37;
          --v35;
        }

        while (v35);
      }

      else
      {
        v34 = 2;
      }

LABEL_16:
      sub_1AF63C898(v32, v34, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a2, v79, a4);
      if (v5)
      {
        goto LABEL_45;
      }

      v5 = 0;
      result = ecs_stack_allocator_pop_snapshot(*(a2 + 32));
      ++v14;
    }

    while (v14 != v11);
  }

  return result;
}

uint64_t sub_1AFD27734(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v69 = a4;
  v10 = a1[11];
  v9 = a1[12];
  v11 = a1[13];
  v12 = a1[2];
  sub_1AF64B110(&type metadata for ParticleBoxCollider, &off_1F2552898, v10, v9, v11, v12);
  v57 = sub_1AF64B110(&type metadata for WorldTransform, &off_1F2529FC0, v10, v9, v11, v12);
  result = sub_1AF64B110(&type metadata for LastFrameWorldTransform, &off_1F2529EB0, v10, v9, v11, v12);
  if (!v10)
  {
    v33 = a1[6];
    v34 = a1[7];
    if (v33 == v34)
    {
      return result;
    }

    v35 = a3 + 32;
    while (1)
    {
      v36 = &v57[64 * v33];
      v63 = v36[1];
      v65 = *v36;
      v59 = v36[3];
      v61 = v36[2];
      v66 = xmmword_1AFE201A0;
      v67 = xmmword_1AFE52680;
      v68 = 6;
      ecs_stack_allocator_push_snapshot(*(a2 + 32));
      v37 = *(a3 + 16);
      v38 = 2 * v37;
      v39 = ecs_stack_allocator_allocate(*(a2 + 32), 16 * v37 + 64, 8);
      *v39 = &type metadata for DebugInfoWireframePrimitive;
      v39[1] = &off_1F25604A8;
      v39[2] = &type metadata for DebugInfoColor;
      v39[3] = &off_1F2560488;
      v39[4] = &type metadata for WorldTransform;
      v39[5] = &off_1F2529FC0;
      v39[6] = &type metadata for Beamed;
      v39[7] = &off_1F2529FA0;
      if (!v37)
      {
        v45 = 4;
        v41 = v63;
        v40 = v65;
        v43 = v59;
        v42 = v61;
        goto LABEL_35;
      }

      v41 = v63;
      v40 = v65;
      v43 = v59;
      v42 = v61;
      if (v37 <= 0xF)
      {
        break;
      }

      v44 = 0;
      v49 = 2 * (v37 - 1);
      if (&v39[v49 + 8] < v39 + 8 || &v39[v49 + 9] < v39 + 9 || (v37 - 1) >> 60)
      {
        goto LABEL_30;
      }

      if ((v39 + 8) < v35 + v38 * 8 && v35 < &v39[v38 + 8])
      {
        break;
      }

      v44 = v37 & 0x1FFFFFFFFFFFFFFCLL;
      v45 = (v37 & 0x1FFFFFFFFFFFFFFCLL) + 4;
      v50 = v39 + 12;
      v51 = v37 & 0x1FFFFFFFFFFFFFFCLL;
      v52 = (a3 + 64);
      do
      {
        v54 = *(v52 - 2);
        v53 = *(v52 - 1);
        v56 = *v52;
        v55 = v52[1];
        v52 += 4;
        *(v50 - 2) = v54;
        *(v50 - 1) = v53;
        *v50 = v56;
        v50[1] = v55;
        v50 += 4;
        v51 -= 4;
      }

      while (v51);
      if (v37 != v44)
      {
        goto LABEL_31;
      }

LABEL_35:
      v70 = 1;
      sub_1AF63D8A8(v39, v45, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a2, &v66, v69, v40, v41, v42, v43);
      if (v5)
      {
LABEL_47:
        result = ecs_stack_allocator_pop_snapshot(*(a2 + 32));
        __break(1u);
        return result;
      }

      v5 = 0;
      ++v33;
      result = ecs_stack_allocator_pop_snapshot(*(a2 + 32));
      if (v33 == v34)
      {
        return result;
      }
    }

    v44 = 0;
LABEL_30:
    v45 = 4;
LABEL_31:
    v46 = v37 - v44;
    v47 = (v35 + 16 * v44);
    do
    {
      v48 = *v47++;
      *&v39[2 * v45++] = v48;
      --v46;
    }

    while (v46);
    goto LABEL_35;
  }

  if (v11)
  {
    v14 = 0;
    v15 = a3 + 32;
    while (1)
    {
      v16 = &v57[64 * v14];
      v62 = v16[1];
      v64 = *v16;
      v58 = v16[3];
      v60 = v16[2];
      v66 = xmmword_1AFE201A0;
      v67 = xmmword_1AFE52680;
      v68 = 6;
      ecs_stack_allocator_push_snapshot(*(a2 + 32));
      v17 = *(a3 + 16);
      v18 = 2 * v17;
      v19 = ecs_stack_allocator_allocate(*(a2 + 32), 16 * v17 + 64, 8);
      *v19 = &type metadata for DebugInfoWireframePrimitive;
      v19[1] = &off_1F25604A8;
      v19[2] = &type metadata for DebugInfoColor;
      v19[3] = &off_1F2560488;
      v19[4] = &type metadata for WorldTransform;
      v19[5] = &off_1F2529FC0;
      v19[6] = &type metadata for Beamed;
      v19[7] = &off_1F2529FA0;
      if (v17)
      {
        break;
      }

      v21 = 4;
LABEL_12:
      v70 = 1;
      sub_1AF63D8A8(v19, v21, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a2, &v66, v69, v64, v62, v60, v58);
      if (v5)
      {
        goto LABEL_47;
      }

      v5 = 0;
      result = ecs_stack_allocator_pop_snapshot(*(a2 + 32));
      if (++v14 == v11)
      {
        return result;
      }
    }

    if (v17 > 0xF)
    {
      v20 = 0;
      v25 = 2 * (v17 - 1);
      if (&v19[v25 + 8] < v19 + 8 || &v19[v25 + 9] < v19 + 9 || (v17 - 1) >> 60)
      {
        goto LABEL_7;
      }

      if ((v19 + 8) >= v15 + v18 * 8 || v15 >= &v19[v18 + 8])
      {
        v20 = v17 & 0x1FFFFFFFFFFFFFFCLL;
        v21 = (v17 & 0x1FFFFFFFFFFFFFFCLL) + 4;
        v26 = v19 + 12;
        v27 = v17 & 0x1FFFFFFFFFFFFFFCLL;
        v28 = (a3 + 64);
        do
        {
          v30 = *(v28 - 2);
          v29 = *(v28 - 1);
          v32 = *v28;
          v31 = v28[1];
          v28 += 4;
          *(v26 - 2) = v30;
          *(v26 - 1) = v29;
          *v26 = v32;
          v26[1] = v31;
          v26 += 4;
          v27 -= 4;
        }

        while (v27);
        if (v17 == v20)
        {
          goto LABEL_12;
        }

        goto LABEL_8;
      }
    }

    v20 = 0;
LABEL_7:
    v21 = 4;
LABEL_8:
    v22 = v17 - v20;
    v23 = (v15 + 16 * v20);
    do
    {
      v24 = *v23++;
      *&v19[2 * v21++] = v24;
      --v22;
    }

    while (v22);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1AFD27C10(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v74 = a4;
  v10 = a1[11];
  v9 = a1[12];
  v11 = a1[13];
  v12 = a1[2];
  sub_1AF64B110(&type metadata for ParticleCylinderCollider, &off_1F2552A70, v10, v9, v11, v12);
  v61 = sub_1AF64B110(&type metadata for WorldTransform, &off_1F2529FC0, v10, v9, v11, v12);
  result = sub_1AF64B110(&type metadata for LastFrameWorldTransform, &off_1F2529EB0, v10, v9, v11, v12);
  if (!v10)
  {
    v35 = a1[6];
    v36 = a1[7];
    if (v35 == v36)
    {
      return result;
    }

    v37 = a3 + 32;
    while (1)
    {
      v38 = &v61[64 * v35];
      *&v39 = sub_1AF6DE900();
      v67 = v38[1];
      v69 = *v38;
      v63 = v38[3];
      v65 = v38[2];
      v70 = v39;
      v71 = v40;
      v72 = 4;
      v73 = 7;
      ecs_stack_allocator_push_snapshot(*(a2 + 32));
      v41 = *(a3 + 16);
      v42 = 2 * v41;
      v43 = ecs_stack_allocator_allocate(*(a2 + 32), 16 * v41 + 64, 8);
      *v43 = &type metadata for DebugInfoWireframePrimitive;
      v43[1] = &off_1F25604A8;
      v43[2] = &type metadata for DebugInfoColor;
      v43[3] = &off_1F2560488;
      v43[4] = &type metadata for WorldTransform;
      v43[5] = &off_1F2529FC0;
      v43[6] = &type metadata for Beamed;
      v43[7] = &off_1F2529FA0;
      if (!v41)
      {
        v49 = 4;
        v45 = v67;
        v44 = v69;
        v47 = v63;
        v46 = v65;
        goto LABEL_35;
      }

      v45 = v67;
      v44 = v69;
      v47 = v63;
      v46 = v65;
      if (v41 <= 0xF)
      {
        break;
      }

      v48 = 0;
      v53 = 2 * (v41 - 1);
      if (&v43[v53 + 8] < v43 + 8 || &v43[v53 + 9] < v43 + 9 || (v41 - 1) >> 60)
      {
        goto LABEL_30;
      }

      if ((v43 + 8) < v37 + v42 * 8 && v37 < &v43[v42 + 8])
      {
        break;
      }

      v48 = v41 & 0x1FFFFFFFFFFFFFFCLL;
      v49 = (v41 & 0x1FFFFFFFFFFFFFFCLL) + 4;
      v54 = v43 + 12;
      v55 = v41 & 0x1FFFFFFFFFFFFFFCLL;
      v56 = (a3 + 64);
      do
      {
        v58 = *(v56 - 2);
        v57 = *(v56 - 1);
        v60 = *v56;
        v59 = v56[1];
        v56 += 4;
        *(v54 - 2) = v58;
        *(v54 - 1) = v57;
        *v54 = v60;
        v54[1] = v59;
        v54 += 4;
        v55 -= 4;
      }

      while (v55);
      if (v41 != v48)
      {
        goto LABEL_31;
      }

LABEL_35:
      v75 = 1;
      sub_1AF63D8A8(v43, v49, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a2, &v70, v74, v44, v45, v46, v47);
      if (v5)
      {
LABEL_47:
        result = ecs_stack_allocator_pop_snapshot(*(a2 + 32));
        __break(1u);
        return result;
      }

      v5 = 0;
      ++v35;
      result = ecs_stack_allocator_pop_snapshot(*(a2 + 32));
      if (v35 == v36)
      {
        return result;
      }
    }

    v48 = 0;
LABEL_30:
    v49 = 4;
LABEL_31:
    v50 = v41 - v48;
    v51 = (v37 + 16 * v48);
    do
    {
      v52 = *v51++;
      *&v43[2 * v49++] = v52;
      --v50;
    }

    while (v50);
    goto LABEL_35;
  }

  if (v11)
  {
    v14 = 0;
    v15 = a3 + 32;
    while (1)
    {
      v16 = &v61[64 * v14];
      *&v17 = sub_1AF6DE900();
      v66 = v16[1];
      v68 = *v16;
      v62 = v16[3];
      v64 = v16[2];
      v70 = v17;
      v71 = v18;
      v72 = 4;
      v73 = 7;
      ecs_stack_allocator_push_snapshot(*(a2 + 32));
      v19 = *(a3 + 16);
      v20 = 2 * v19;
      v21 = ecs_stack_allocator_allocate(*(a2 + 32), 16 * v19 + 64, 8);
      *v21 = &type metadata for DebugInfoWireframePrimitive;
      v21[1] = &off_1F25604A8;
      v21[2] = &type metadata for DebugInfoColor;
      v21[3] = &off_1F2560488;
      v21[4] = &type metadata for WorldTransform;
      v21[5] = &off_1F2529FC0;
      v21[6] = &type metadata for Beamed;
      v21[7] = &off_1F2529FA0;
      if (v19)
      {
        break;
      }

      v23 = 4;
LABEL_12:
      v75 = 1;
      sub_1AF63D8A8(v21, v23, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a2, &v70, v74, v68, v66, v64, v62);
      if (v5)
      {
        goto LABEL_47;
      }

      v5 = 0;
      result = ecs_stack_allocator_pop_snapshot(*(a2 + 32));
      if (++v14 == v11)
      {
        return result;
      }
    }

    if (v19 > 0xF)
    {
      v22 = 0;
      v27 = 2 * (v19 - 1);
      if (&v21[v27 + 8] < v21 + 8 || &v21[v27 + 9] < v21 + 9 || (v19 - 1) >> 60)
      {
        goto LABEL_7;
      }

      if ((v21 + 8) >= v15 + v20 * 8 || v15 >= &v21[v20 + 8])
      {
        v22 = v19 & 0x1FFFFFFFFFFFFFFCLL;
        v23 = (v19 & 0x1FFFFFFFFFFFFFFCLL) + 4;
        v28 = v21 + 12;
        v29 = v19 & 0x1FFFFFFFFFFFFFFCLL;
        v30 = (a3 + 64);
        do
        {
          v32 = *(v30 - 2);
          v31 = *(v30 - 1);
          v34 = *v30;
          v33 = v30[1];
          v30 += 4;
          *(v28 - 2) = v32;
          *(v28 - 1) = v31;
          *v28 = v34;
          v28[1] = v33;
          v28 += 4;
          v29 -= 4;
        }

        while (v29);
        if (v19 == v22)
        {
          goto LABEL_12;
        }

        goto LABEL_8;
      }
    }

    v22 = 0;
LABEL_7:
    v23 = 4;
LABEL_8:
    v24 = v19 - v22;
    v25 = (v15 + 16 * v22);
    do
    {
      v26 = *v25++;
      *&v21[2 * v23++] = v26;
      --v24;
    }

    while (v24);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1AFD280CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v7 = a1[11];
  v8 = a1[12];
  v9 = a1[13];
  v10 = a1[2];
  v11 = sub_1AF64B110(&type metadata for ParticleMeshCollider, &off_1F2552EB8, v7, v8, v9, v10);
  result = sub_1AF64B110(&type metadata for WorldTransform, &off_1F2529FC0, v7, v8, v9, v10);
  if (v7)
  {
    v13 = a2;
    if (v9)
    {
      v14 = 0;
      v15 = (a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
      __asm { FMOV            V0.4S, #-1.0 }

      v125 = _Q0;
      v127 = vdupq_n_s32(0x3C010204u);
      v20 = vdup_n_s32(0x37800080u);
      v141 = vdupq_n_s32(0x37800080u);
      v21 = vdup_n_s32(0x4B400000u);
      v22 = vdup_n_s32(0xCB400000);
      __asm { FMOV            V0.4S, #1.0 }

      v124 = _Q0;
      v139 = vdupq_n_s32(0x4B400000u);
      v24 = vdup_n_s32(0x38000100u);
      v135 = vdupq_n_s32(0x38000100u);
      v137 = vdupq_n_s32(0xCB400000);
      v131 = vdupq_n_s32(0xF800000u);
      v133 = vdupq_n_s32(0x7FE000u);
      v149 = result;
      v130 = (a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
      while (1)
      {
        v28 = &v11[32 * v14];
        v30 = *(v28 + 6);
        v29 = *(v28 + 7);
        _ZF = v30 == -1 && v29 == 0;
        if (!_ZF && (v30 & 0x80000000) == 0 && v15[1] > v30)
        {
          v32 = (*v15 + 12 * v30);
          if (v29 == -1 || v32[2] == v29)
          {
            v34 = *(v32 + 2);
            v35 = *(*(v13 + 144) + 8 * *v32 + 32);
            v36 = *(v35 + 48);
            v37 = (v36 + 32);
            v38 = *(v36 + 16) + 1;
            do
            {
              if (!--v38)
              {
                goto LABEL_8;
              }

              v39 = v37 + 5;
              v40 = *v37;
              v37 += 5;
            }

            while (v40 != &type metadata for MeshModel);
            v41 = *(&(*(v39 - 2))[v34].Kind + *(v35 + 128));
            if (v41)
            {
              break;
            }
          }
        }

LABEL_8:
        if (++v14 == v9)
        {
          return result;
        }
      }

      v145 = (result + (v14 << 6));
      swift_bridgeObjectRetain_n();

      v147 = v41;
      v42 = sub_1AF8C4D20(0);
      if (v42)
      {
        v45 = v42;
        v46 = v43;
        v47 = v44;
        if (v43 == 30)
        {

          sub_1AF8C5010(v45, v47, v147, a3, a4, v145, a5);
LABEL_7:

          swift_bridgeObjectRelease_n();
          v13 = a2;
          result = v149;
          v15 = v130;
          goto LABEL_8;
        }

        v143 = a4;
        v121 = swift_slowAlloc();
        v51 = *(v147 + 48);
        if (!v51)
        {
LABEL_54:
          a4 = v143;

          sub_1AF8C5010(v121, 12, v147, a3, v143, v145, a5);
          MEMORY[0x1B271DEA0](v121, -1, -1);
          goto LABEL_7;
        }

        v52 = v46 - 9;
        if (v46 - 9) < 0x2D && ((0x1C01805FFC09uLL >> v52))
        {
          v53 = (v121 + 8);
          do
          {
            switch(v52)
            {
              case 0:
                *v48.i64 = sub_1AF57F008(v45->i32[0]);
                break;
              case 3:
                *v57.i8 = vshl_u32(vdup_n_s32(v45->i32[0]), 0x1000000018);
                v57.i32[2] = v45->i32[0] << 8;
                v57.i32[3] = v45->i32[0];
                v50.i16[1] = v127.i16[1];
                v49.i16[1] = v124.i16[1];
                v48 = vminnmq_f32(vmaxnmq_f32(vmulq_f32(vcvtq_f32_s32(vshrq_n_s32(v57, 0x18uLL)), v127), v125), v124);
                break;
              case 10:
                v48.i16[0] = v45->i16[0];
                v61.f32[0] = v48.u32[0];
                v49.i16[0] = v45->i16[1];
                *v49.i32 = v49.u32[0];
                v61.i32[1] = v49.i32[0];
                *v48.f32 = vmul_f32(v61, v20);
                break;
              case 11:
                v48.i16[0] = v45->i16[0];
                v49.i16[0] = v45->i16[1];
                *v49.i32 = v49.u32[0];
                v50.i16[0] = v45->i16[2];
                v59.i32[3] = 0;
                v59.f32[0] = v48.u32[0];
                v59.i32[1] = v49.i32[0];
                v59.f32[2] = v50.u32[0];
                v48 = vmulq_f32(v59, v141);
                break;
              case 12:
                v49.i16[1] = v141.i16[1];
                v48 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v45)), v141);
                break;
              case 13:
                v58.i32[0] = v45->i16[0];
                v58.i32[1] = v45->i16[1];
                *v48.f32 = vmul_f32(vadd_f32(vadd_s32(v58, v21), v22), v24);
                break;
              case 14:
                v62.i32[0] = v45->i32[0];
                v62.i32[1] = v45->u16[2];
                v63 = vaddw_s16(v139, v62);
                goto LABEL_45;
              case 15:
                v63 = vaddw_s16(v139, *v45);
LABEL_45:
                v49.i16[1] = v135.i16[1];
                v50.i16[1] = v137.i16[1];
                v48 = vmulq_f32(vaddq_f32(v63, v137), v135);
                break;
              case 16:
                v119 = sub_1AF1F2AC4(v45->u16[0]);
                v49.i32[0] = sub_1AF1F2AC4(v45->u16[1]);
                v48.i32[2] = 0;
                v50.i16[1] = HIWORD(v119);
                v48.i64[0] = __PAIR64__(v49.u32[0], LODWORD(v119));
                break;
              case 17:
                v66.i32[0] = v45->u16[0];
                v66.i32[1] = v45->u16[1];
                v66.i64[1] = v45->u16[2];
                v67.i64[0] = 0x8000000080000000;
                v67.i64[1] = 0x8000000080000000;
                v68 = vandq_s8(vshlq_n_s32(v66, 0x10uLL), v67);
                v69 = vshlq_n_s32(v66, 0xDuLL);
                v49 = vorrq_s8(v68, vandq_s8(v69, v133));
                v50.i64[0] = 0x3800000038000000;
                v50.i64[1] = 0x3800000038000000;
                v48 = vaddq_s32(vaddq_s32(vandq_s8(v69, v131), v50), v49);
                break;
              case 18:
                v50.i64[0] = 0x8000000080000000;
                v50.i64[1] = 0x8000000080000000;
                v54 = vshll_n_u16(*v45, 0xDuLL);
                v55 = vorrq_s8(vandq_s8(vmovl_s16(*v45), v50), vandq_s8(v54, v133));
                v50.i16[1] = v131.i16[1];
                v56 = vorrq_s8(vandq_s8(v54, v131), v55);
                v49.i64[0] = 0x3800000038000000;
                v49.i64[1] = 0x3800000038000000;
                v48 = vaddq_s32(v56, v49);
                break;
              case 19:
                v48.i32[0] = v45->i32[0];
                break;
              case 20:
                *v48.f32 = *v45;
                break;
              case 22:
                v48 = *v45->i8;
                break;
              case 32:
                v64 = vld1q_dup_f32(v45);
                v50.i16[1] = 0;
                v49.i16[1] = 14976;
                v48 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v64, xmmword_1AFE473A0), xmmword_1AFE47360)), xmmword_1AFE473B0);
                break;
              case 42:
                v48.i16[0] = v45->i16[0];
                v48.f32[0] = v48.u32[0];
                v65 = 0.000015259;
                goto LABEL_52;
              case 43:
                v48.i16[0] = v45->i16[0];
                v48.f32[0] = vmovl_s16(*v48.f32).i32[0];
                v65 = 0.000030519;
LABEL_52:
                *v49.i32 = v48.f32[0] * v65;
                goto LABEL_53;
              case 44:
                v49.i32[0] = sub_1AF1F2AC4(v45->u16[0]);
LABEL_53:
                v48.i32[2] = 0;
                v48.i64[0] = v49.u32[0];
                break;
              default:
                v60 = vld1q_dup_f32(v45);
                v50.i16[1] = 0;
                v49.i16[1] = 15104;
                v48 = vmulq_f32(vcvtq_f32_s32(vshlq_s32(vshlq_u32(v60, xmmword_1AFE47380), xmmword_1AFE47390)), xmmword_1AFE473C0);
                break;
            }

            *(v53 - 1) = v48.i64[0];
            *v53 = v48.i32[2];
            v45 = (v45 + v47);
            v53 += 3;
            --v51;
          }

          while (v51);
          goto LABEL_54;
        }

LABEL_109:
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0xD000000000000013, 0x80000001AFF395D0);
        type metadata accessor for MTLVertexFormat(0);
        sub_1AFDFE458();
      }

      else
      {
LABEL_108:
        swift_bridgeObjectRelease_n();
      }

      result = sub_1AFDFE518();
      __break(1u);
    }
  }

  else
  {
    v26 = a1[6];
    v25 = a1[7];
    v27 = a2;
    if (v26 != v25)
    {
      v70 = (a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
      __asm { FMOV            V0.4S, #-1.0 }

      v128 = _Q0;
      v129 = vdupq_n_s32(0x3C010204u);
      v72 = vdup_n_s32(0x37800080u);
      v146 = vdupq_n_s32(0x37800080u);
      v73 = vdup_n_s32(0x4B400000u);
      v74 = vdup_n_s32(0xCB400000);
      __asm { FMOV            V0.4S, #1.0 }

      v126 = _Q0;
      v76 = vdup_n_s32(0x38000100u);
      v140 = vdupq_n_s32(0xCB400000);
      v142 = vdupq_n_s32(0x4B400000u);
      v136 = vdupq_n_s32(0x7FE000u);
      v138 = vdupq_n_s32(0x38000100u);
      v134 = vdupq_n_s32(0xF800000u);
      v144 = a4;
      v150 = result;
      v132 = (a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
      do
      {
LABEL_57:
        v77 = v26++;
        v78 = &v11[32 * v77];
        v80 = *(v78 + 6);
        v79 = *(v78 + 7);
        v81 = v80 == -1 && v79 == 0;
        if (!v81 && (v80 & 0x80000000) == 0 && v70[1] > v80)
        {
          v82 = (*v70 + 12 * v80);
          if (v79 == -1 || v82[2] == v79)
          {
            v84 = *(v82 + 2);
            v85 = *(*(v27 + 144) + 8 * *v82 + 32);
            v86 = *(v85 + 48);
            v87 = (v86 + 32);
            v88 = *(v86 + 16) + 1;
            while (--v88)
            {
              v89 = v87 + 5;
              v90 = *v87;
              v87 += 5;
              if (v90 == &type metadata for MeshModel)
              {
                v148 = *(&(*(v89 - 2))[v84].Kind + *(v85 + 128));
                if (!v148)
                {
                  break;
                }

                swift_bridgeObjectRetain_n();

                v91 = sub_1AF8C4D20(0);
                if (!v91)
                {
                  goto LABEL_108;
                }

                v94 = v91;
                v95 = v92;
                v96 = v93;
                if (v92 == 30)
                {

                  sub_1AF8C5010(v94, v96, v148, a3, v144, (v150 + (v77 << 6)), a5);
                }

                else
                {
                  v120 = (v150 + (v77 << 6));
                  v123 = swift_slowAlloc();
                  v100 = *(v148 + 48);
                  if (v100)
                  {
                    v101 = v95 - 9;
                    if ((v95 - 9) >= 0x2D || ((0x1C01805FFC09uLL >> v101) & 1) == 0)
                    {
                      goto LABEL_109;
                    }

                    v102 = (v123 + 8);
                    do
                    {
                      switch(v101)
                      {
                        case 0:
                          *v97.i64 = sub_1AF57F008(v94->i32[0]);
                          break;
                        case 3:
                          *v106.i8 = vshl_u32(vdup_n_s32(v94->i32[0]), 0x1000000018);
                          v106.i32[2] = v94->i32[0] << 8;
                          v106.i32[3] = v94->i32[0];
                          v99.i16[1] = v129.i16[1];
                          v98.i16[1] = v126.i16[1];
                          v97 = vminnmq_f32(vmaxnmq_f32(vmulq_f32(vcvtq_f32_s32(vshrq_n_s32(v106, 0x18uLL)), v129), v128), v126);
                          break;
                        case 10:
                          v97.i16[0] = v94->i16[0];
                          v110.f32[0] = v97.u32[0];
                          v98.i16[0] = v94->i16[1];
                          *v98.i32 = v98.u32[0];
                          v110.i32[1] = v98.i32[0];
                          *v97.f32 = vmul_f32(v110, v72);
                          break;
                        case 11:
                          v97.i16[0] = v94->i16[0];
                          v98.i16[0] = v94->i16[1];
                          *v98.i32 = v98.u32[0];
                          v99.i16[0] = v94->i16[2];
                          v108.i32[3] = 0;
                          v108.f32[0] = v97.u32[0];
                          v108.i32[1] = v98.i32[0];
                          v108.f32[2] = v99.u32[0];
                          v97 = vmulq_f32(v108, v146);
                          break;
                        case 12:
                          v98.i16[1] = v146.i16[1];
                          v97 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v94)), v146);
                          break;
                        case 13:
                          v107.i32[0] = v94->i16[0];
                          v107.i32[1] = v94->i16[1];
                          *v97.f32 = vmul_f32(vadd_f32(vadd_s32(v107, v73), v74), v76);
                          break;
                        case 14:
                          v111.i32[0] = v94->i32[0];
                          v111.i32[1] = v94->u16[2];
                          v112 = vaddw_s16(v142, v111);
                          goto LABEL_94;
                        case 15:
                          v112 = vaddw_s16(v142, *v94);
LABEL_94:
                          v98.i16[1] = v138.i16[1];
                          v97 = vmulq_f32(vaddq_f32(v112, v140), v138);
                          break;
                        case 16:
                          v122 = sub_1AF1F2AC4(v94->u16[0]);
                          v98.i32[0] = sub_1AF1F2AC4(v94->u16[1]);
                          v97.i32[2] = 0;
                          v99.i16[1] = HIWORD(v122);
                          v97.i64[0] = __PAIR64__(v98.u32[0], LODWORD(v122));
                          break;
                        case 17:
                          v115.i32[0] = v94->u16[0];
                          v115.i32[1] = v94->u16[1];
                          v115.i64[1] = v94->u16[2];
                          v116.i64[0] = 0x8000000080000000;
                          v116.i64[1] = 0x8000000080000000;
                          v117 = vandq_s8(vshlq_n_s32(v115, 0x10uLL), v116);
                          v118 = vshlq_n_s32(v115, 0xDuLL);
                          v98 = vorrq_s8(v117, vandq_s8(v118, v136));
                          v99.i64[0] = 0x3800000038000000;
                          v99.i64[1] = 0x3800000038000000;
                          v97 = vaddq_s32(vaddq_s32(vandq_s8(v118, v134), v99), v98);
                          break;
                        case 18:
                          v99.i64[0] = 0x8000000080000000;
                          v99.i64[1] = 0x8000000080000000;
                          v103 = vshll_n_u16(*v94, 0xDuLL);
                          v104 = vorrq_s8(vandq_s8(vmovl_s16(*v94), v99), vandq_s8(v103, v136));
                          v99.i16[1] = v134.i16[1];
                          v105 = vorrq_s8(vandq_s8(v103, v134), v104);
                          v98.i64[0] = 0x3800000038000000;
                          v98.i64[1] = 0x3800000038000000;
                          v97 = vaddq_s32(v105, v98);
                          break;
                        case 19:
                          v97.i32[0] = v94->i32[0];
                          break;
                        case 20:
                          *v97.f32 = *v94;
                          break;
                        case 22:
                          v97 = *v94->i8;
                          break;
                        case 32:
                          v113 = vld1q_dup_f32(v94);
                          v99.i16[1] = 0;
                          v98.i16[1] = 14976;
                          v97 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v113, xmmword_1AFE473A0), xmmword_1AFE47360)), xmmword_1AFE473B0);
                          break;
                        case 42:
                          v97.i16[0] = v94->i16[0];
                          v97.f32[0] = v97.u32[0];
                          v114 = 0.000015259;
                          goto LABEL_101;
                        case 43:
                          v97.i16[0] = v94->i16[0];
                          v97.f32[0] = vmovl_s16(*v97.f32).i32[0];
                          v114 = 0.000030519;
LABEL_101:
                          *v98.i32 = v97.f32[0] * v114;
                          goto LABEL_102;
                        case 44:
                          v98.i32[0] = sub_1AF1F2AC4(v94->u16[0]);
LABEL_102:
                          v97.i32[2] = 0;
                          v97.i64[0] = v98.u32[0];
                          break;
                        default:
                          v109 = vld1q_dup_f32(v94);
                          v99.i16[1] = 0;
                          v98.i16[1] = 15104;
                          v97 = vmulq_f32(vcvtq_f32_s32(vshlq_s32(vshlq_u32(v109, xmmword_1AFE47380), xmmword_1AFE47390)), xmmword_1AFE473C0);
                          break;
                      }

                      *(v102 - 1) = v97.i64[0];
                      *v102 = v97.i32[2];
                      v94 = (v94 + v96);
                      v102 += 3;
                      --v100;
                    }

                    while (v100);
                  }

                  sub_1AF8C5010(v123, 12, v148, a3, v144, v120, a5);
                  MEMORY[0x1B271DEA0](v123, -1, -1);
                }

                result = swift_bridgeObjectRelease_n();
                v27 = a2;
                v70 = v132;
                if (v26 != v25)
                {
                  goto LABEL_57;
                }

                return result;
              }
            }
          }
        }
      }

      while (v26 != v25);
    }
  }

  return result;
}

__n128 *sub_1AFD28DA8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[11];
  v50 = a1[12];
  v7 = a1[13];
  v9 = a1[1];
  v8 = a1[2];
  v10 = sub_1AF64B110(&type metadata for ForceField, &off_1F2560F10, v6, v50, v7, v8);
  result = sub_1AF64B110(&type metadata for WorldTransform, &off_1F2529FC0, v6, v50, v7, v8);
  if (v6)
  {
    if (v7)
    {
      v12 = result + 2;
      do
      {
        v14 = *(v10 + 7);
        v59 = *(v10 + 6);
        v60[0] = v14;
        *(v60 + 12) = *(v10 + 124);
        v15 = *(v10 + 3);
        v55 = *(v10 + 2);
        v56 = v15;
        v16 = *(v10 + 5);
        v57 = *(v10 + 4);
        v58 = v16;
        v17 = *(v10 + 1);
        v53 = *v10;
        v54 = v17;
        v18 = v12[-2];
        v19 = v12[-1];
        v20 = *v12;
        v21 = v12[1];
        v22 = *(*(v9 + 40) + 16);
        v23 = *(v22 + 128);
        if (*(v23 + 16))
        {
          v44 = v12[1];
          v46 = *v12;
          v48 = v12[-1];
          v51 = v12[-2];
          v24 = sub_1AF449CB8(&type metadata for Selected);
          v13 = (v25 & 1) != 0 && *(*(v22 + 24) + 16 * *(*(v23 + 56) + 8 * v24) + 32) == &type metadata for Selected;
          v19 = v48;
          v18 = v51;
          v21 = v44;
          v20 = v46;
        }

        else
        {
          v13 = 0;
        }

        v61 = v18;
        v62 = v19;
        v63 = v20;
        v64 = v21;
        v65 = 0;
        result = sub_1AFB4A474(&v53, &v61, v13, a2, a3);
        v12 += 4;
        v10 += 144;
        --v7;
      }

      while (v7);
    }
  }

  else
  {
    v26 = a1[6];
    v27 = a1[7];
    v28 = v27 - v26;
    if (v27 != v26)
    {
      v29 = &result[4 * v26 + 2];
      v30 = &v10[144 * v26];
      do
      {
        v32 = *(v30 + 7);
        v59 = *(v30 + 6);
        v60[0] = v32;
        *(v60 + 12) = *(v30 + 124);
        v33 = *(v30 + 3);
        v55 = *(v30 + 2);
        v56 = v33;
        v34 = *(v30 + 5);
        v57 = *(v30 + 4);
        v58 = v34;
        v35 = *(v30 + 1);
        v53 = *v30;
        v54 = v35;
        v36 = v29[-2];
        v37 = v29[-1];
        v38 = *v29;
        v39 = v29[1];
        v40 = *(*(v9 + 40) + 16);
        v41 = *(v40 + 128);
        if (*(v41 + 16))
        {
          v45 = v29[1];
          v47 = *v29;
          v49 = v29[-1];
          v52 = v29[-2];
          v42 = sub_1AF449CB8(&type metadata for Selected);
          v31 = (v43 & 1) != 0 && *(*(v40 + 24) + 16 * *(*(v41 + 56) + 8 * v42) + 32) == &type metadata for Selected;
          v37 = v49;
          v36 = v52;
          v39 = v45;
          v38 = v47;
        }

        else
        {
          v31 = 0;
        }

        v61 = v36;
        v62 = v37;
        v63 = v38;
        v64 = v39;
        v65 = 0;
        result = sub_1AFB4A474(&v53, &v61, v31, a2, a3);
        v29 += 4;
        v30 += 144;
        --v28;
      }

      while (v28);
    }
  }

  return result;
}

uint64_t sub_1AFD29024(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = a1[1];
  v5 = sub_1AF706180(v4, a1);
  result = sub_1AF7060C4(v4, a1);
  v67 = a1;
  v64 = a1[11];
  if (!v64)
  {
    v35 = a1[6];
    v36 = a1[7];
    if (v35 == v36)
    {
      return result;
    }

    v65 = (a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    v37 = type metadata accessor for GraphScript(0);
    v38 = *(v37 - 8);
    result = v37 - 8;
    v39 = *(v38 + 72);
    v69 = v5 + 41;
    while (1)
    {
      if (v69[v39 * v35] == 1)
      {
        v41 = *v67;
        v42 = *(v4 + 16);

        if (*(v4 + 184))
        {
          goto LABEL_67;
        }

        v43 = *(*(v4 + 168) + 4 * v35);
        v44 = *(*(v42 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v43 + 8);

        v45 = *(v41 + 216);
        if (*(v45 + 16) && (v46 = sub_1AF449CB8(&type metadata for IsSubEntityOf), (v47 & 1) != 0))
        {
          v48 = *(*(v45 + 56) + 24 * v46);
          v49 = *(v48 + 16);

          if (v49)
          {
            v50 = (v48 + 44);
            while (*(v50 - 3) != v43 || *(v50 - 2) != v44)
            {
              v50 += 4;
              if (!--v49)
              {
                goto LABEL_50;
              }
            }

            v58 = *(v50 - 1);
            v59 = *v50;

            if ((v58 != -1 || v59 != 0) && (v58 & 0x80000000) == 0 && v65[1] > v58)
            {
              v61 = (*v65 + 12 * v58);
              if ((v59 == -1 || v61[2] == v59) && *(*(*(a2 + 144) + 8 * *v61 + 32) + 120) != 1)
              {
                goto LABEL_38;
              }
            }
          }

          else
          {
LABEL_50:
          }
        }

        else
        {
        }

        if (*(v4 + 184))
        {
LABEL_67:
          result = sub_1AFDFE518();
          __break(1u);
          return result;
        }

        v53 = *(*(v4 + 168) + 4 * v35);
        v54 = *(*(v52 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v53 + 8);

        v55 = *a3;
        result = swift_isUniquelyReferenced_nonNull_native();
        *a3 = v55;
        if ((result & 1) == 0)
        {
          result = sub_1AF4217DC(0, *(v55 + 16) + 1, 1, v55);
          v55 = result;
          *a3 = result;
        }

        v57 = *(v55 + 16);
        v56 = *(v55 + 24);
        if (v57 >= v56 >> 1)
        {
          result = sub_1AF4217DC(v56 > 1, v57 + 1, 1, v55);
          v55 = result;
          *a3 = result;
        }

        *(v55 + 16) = v57 + 1;
        v40 = v55 + 8 * v57;
        *(v40 + 32) = v53;
        *(v40 + 36) = v54;
      }

LABEL_38:
      if (++v35 == v36)
      {
        return result;
      }
    }
  }

  v68 = a1[13];
  if (v68)
  {
    v62 = (a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    v7 = type metadata accessor for GraphScript(0);
    v8 = 0;
    v9 = *(v7 - 8);
    result = v7 - 8;
    v10 = *(v9 + 72);
    v11 = v5 + 41;
    do
    {
      if (v11[v10 * v8] == 1)
      {
        v13 = *(v64 + 8 * v8);
        v14 = *v67;
        v15 = *(v4 + 16);

        if (*(v4 + 184))
        {
          goto LABEL_67;
        }

        v16 = *(*(v4 + 168) + 4 * v13);
        v17 = *(*(v15 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v16 + 8);

        v18 = *(v14 + 216);
        if (*(v18 + 16) && (v19 = sub_1AF449CB8(&type metadata for IsSubEntityOf), (v20 & 1) != 0))
        {
          v21 = *(*(v18 + 56) + 24 * v19);
          v22 = *(v21 + 16);

          if (v22)
          {
            v23 = (v21 + 44);
            while (*(v23 - 3) != v16 || *(v23 - 2) != v17)
            {
              v23 += 4;
              if (!--v22)
              {
                goto LABEL_17;
              }
            }

            v31 = *(v23 - 1);
            v32 = *v23;

            if ((v31 != -1 || v32 != 0) && (v31 & 0x80000000) == 0 && v62[1] > v31)
            {
              v34 = (*v62 + 12 * v31);
              if ((v32 == -1 || v34[2] == v32) && *(*(*(a2 + 144) + 8 * *v34 + 32) + 120) != 1)
              {
                goto LABEL_5;
              }
            }
          }

          else
          {
LABEL_17:
          }
        }

        else
        {
        }

        if (*(v4 + 184))
        {
          goto LABEL_67;
        }

        v26 = *(*(v4 + 168) + 4 * v13);
        v27 = *(*(v25 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v26 + 8);

        v28 = *a3;
        result = swift_isUniquelyReferenced_nonNull_native();
        *a3 = v28;
        if ((result & 1) == 0)
        {
          result = sub_1AF4217DC(0, *(v28 + 16) + 1, 1, v28);
          v28 = result;
          *a3 = result;
        }

        v30 = *(v28 + 16);
        v29 = *(v28 + 24);
        if (v30 >= v29 >> 1)
        {
          result = sub_1AF4217DC(v29 > 1, v30 + 1, 1, v28);
          v28 = result;
          *a3 = result;
        }

        *(v28 + 16) = v30 + 1;
        v12 = v28 + 8 * v30;
        *(v12 + 32) = v26;
        *(v12 + 36) = v27;
      }

LABEL_5:
      ++v8;
    }

    while (v8 != v68);
  }

  return result;
}

uint64_t sub_1AFD295C0(void *a1, uint64_t a2, uint64_t *a3)
{
  v4 = a1;
  v5 = a1[1];
  sub_1AF706090(v5, a1);
  result = sub_1AF705FD4(v5, v4);
  v7 = v4[11];
  v60 = v4;
  if (!v7)
  {
    v32 = v4[6];
    v33 = v4[7];
    if (v32 == v33)
    {
      return result;
    }

    v59 = (a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    while (1)
    {
      v34 = *v4;
      v35 = *(v5 + 16);

      if (*(v5 + 184))
      {
LABEL_67:
        result = sub_1AFDFE518();
        __break(1u);
        return result;
      }

      v36 = *(*(v5 + 168) + 4 * v32);
      v37 = *(*(v35 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v36 + 8);

      v38 = *(v34 + 216);
      if (*(v38 + 16) && (v39 = sub_1AF449CB8(&type metadata for IsSubEntityOf), (v40 & 1) != 0))
      {
        v41 = *(*(v38 + 56) + 24 * v39);
        v42 = *(v41 + 16);

        if (v42)
        {
          v43 = (v41 + 44);
          while (*(v43 - 3) != v36 || *(v43 - 2) != v37)
          {
            v43 += 4;
            if (!--v42)
            {
              goto LABEL_47;
            }
          }

          v52 = *(v43 - 1);
          v53 = *v43;

          if ((v52 != -1 || v53 != 0) && (v52 & 0x80000000) == 0 && v59[1] > v52)
          {
            v55 = (*v59 + 12 * v52);
            if ((v53 == -1 || v55[2] == v53) && *(*(*(a2 + 144) + 8 * *v55 + 32) + 120) != 1)
            {
              goto LABEL_55;
            }
          }
        }

        else
        {
LABEL_47:
        }
      }

      else
      {
      }

      if (*(v5 + 184))
      {
        goto LABEL_67;
      }

      v46 = *(*(v5 + 168) + 4 * v32);
      v47 = *(*(v45 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v46 + 8);

      v48 = *a3;
      result = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v48;
      if ((result & 1) == 0)
      {
        result = sub_1AF4217DC(0, *(v48 + 16) + 1, 1, v48);
        v48 = result;
        *a3 = result;
      }

      v50 = *(v48 + 16);
      v49 = *(v48 + 24);
      if (v50 >= v49 >> 1)
      {
        result = sub_1AF4217DC(v49 > 1, v50 + 1, 1, v48);
        v48 = result;
        *a3 = result;
      }

      *(v48 + 16) = v50 + 1;
      v51 = v48 + 8 * v50;
      *(v51 + 32) = v46;
      *(v51 + 36) = v47;
      v4 = v60;
LABEL_55:
      if (++v32 == v33)
      {
        return result;
      }
    }
  }

  v58 = v4[13];
  if (v58)
  {
    v8 = 0;
    v56 = (a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    while (1)
    {
      v9 = *(v7 + 8 * v8);
      v10 = *v4;
      v11 = *(v5 + 16);

      if (*(v5 + 184))
      {
        goto LABEL_67;
      }

      v12 = *(*(v5 + 168) + 4 * v9);
      v13 = *(*(v11 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v12 + 8);

      v14 = *(v10 + 216);
      if (!*(v14 + 16))
      {
        break;
      }

      v15 = sub_1AF449CB8(&type metadata for IsSubEntityOf);
      if ((v16 & 1) == 0)
      {
        break;
      }

      v17 = *(*(v14 + 56) + 24 * v15);
      v18 = *(v17 + 16);

      if (!v18)
      {
LABEL_14:

LABEL_16:

        if (*(v5 + 184))
        {
          goto LABEL_67;
        }

        v22 = *(*(v5 + 168) + 4 * v9);
        v23 = *(*(v21 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v22 + 8);

        v24 = *a3;
        result = swift_isUniquelyReferenced_nonNull_native();
        *a3 = v24;
        if ((result & 1) == 0)
        {
          result = sub_1AF4217DC(0, *(v24 + 16) + 1, 1, v24);
          v24 = result;
          *a3 = result;
        }

        v26 = *(v24 + 16);
        v25 = *(v24 + 24);
        if (v26 >= v25 >> 1)
        {
          result = sub_1AF4217DC(v25 > 1, v26 + 1, 1, v24);
          v24 = result;
          *a3 = result;
        }

        *(v24 + 16) = v26 + 1;
        v27 = v24 + 8 * v26;
        *(v27 + 32) = v22;
        *(v27 + 36) = v23;
        goto LABEL_22;
      }

      v19 = (v17 + 44);
      while (*(v19 - 3) != v12 || *(v19 - 2) != v13)
      {
        v19 += 4;
        if (!--v18)
        {
          goto LABEL_14;
        }
      }

      v28 = *(v19 - 1);
      v29 = *v19;

      if (v28 == -1 && v29 == 0)
      {
        goto LABEL_16;
      }

      if ((v28 & 0x80000000) != 0)
      {
        goto LABEL_16;
      }

      if (v56[1] <= v28)
      {
        goto LABEL_16;
      }

      v31 = (*v56 + 12 * v28);
      if (v29 != -1 && v31[2] != v29)
      {
        goto LABEL_16;
      }

      if (*(*(*(a2 + 144) + 8 * *v31 + 32) + 120) == 1)
      {
        goto LABEL_16;
      }

LABEL_22:
      ++v8;
      v4 = v60;
      if (v8 == v58)
      {
        return result;
      }
    }

    goto LABEL_16;
  }

  return result;
}

void sub_1AFD29AD8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[11];
  v7 = a1[12];
  v8 = a1[13];
  v9 = a1[2];
  sub_1AF64B110(&type metadata for EmitterDescription, &off_1F2563648, v6, v7, v8, v9);
  v10 = sub_1AF64B110(&type metadata for EmitterRuntime, &off_1F2563418, v6, v7, v8, v9);
  if (v6)
  {
    v37 = a1;
    if (v8)
    {
      v11 = 0;
      v12 = v10 + 336;
      do
      {
        v14 = *(v12 + 11);
        if (v14)
        {
          v15 = *(v12 + 24);
          v16 = *(v12 + 13);
          v17 = *(v37 + 6);
          ObjectType = swift_getObjectType();
          swift_unknownObjectRetain();
          [a2 setRenderPipelineState_];
          [a2 setDepthStencilState_];
          v40 = v11 + v17;
          sub_1AF6F33C0(&v40, 8, ObjectType, MEMORY[0x1E69E72F0], v19, v20, v21, v22);
          if (*v12 == 1)
          {
            v13 = *(v12 + 22);
          }

          else
          {
            LODWORD(v13) = 0;
          }

          sub_1AF6F3458(*(v12 + 1), (*(v12 + 4) + *(v12 + 4) * v13) | (*(v12 + 4) << 32), 0, 4, 3);
          sub_1AF6F3458(v14, v15 | (v16 << 32), 0, 5, 3);
          sub_1AF6F5B7C(1);
          swift_unknownObjectRelease();
        }

        ++v11;
        v12 += 848;
      }

      while (v8 != v11);
    }
  }

  else
  {
    v23 = a1[6];
    v24 = a1[7];
    v25 = v24 - v23;
    if (v24 != v23)
    {
      v26 = a1[3];
      v27 = &v10[848 * v23 + 336];
      do
      {
        v29 = *(v27 + 88);
        if (v29)
        {
          v30 = *(v27 + 96);
          v31 = *(v27 + 104);
          v32 = swift_getObjectType();
          swift_unknownObjectRetain();
          [a2 setRenderPipelineState_];
          [a2 setDepthStencilState_];
          v41 = v26;
          sub_1AF6F33C0(&v41, 8, v32, MEMORY[0x1E69E72F0], v33, v34, v35, v36);
          if (*v27 == 1)
          {
            v28 = *(v27 + 176);
          }

          else
          {
            LODWORD(v28) = 0;
          }

          sub_1AF6F3458(*(v27 + 8), (*(v27 + 16) + *(v27 + 32) * v28) | (*(v27 + 32) << 32), 0, 4, 3);
          sub_1AF6F3458(v29, v30 | (v31 << 32), 0, 5, 3);
          sub_1AF6F5B7C(1);
          swift_unknownObjectRelease();
        }

        LODWORD(v26) = v26 + 1;
        v27 += 848;
        --v25;
      }

      while (v25);
    }
  }
}

uint64_t sub_1AFD29DB0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[11];
  v7 = a1[12];
  v8 = a1[13];
  v9 = a1[1];
  v10 = a1[2];
  v11 = sub_1AF64B110(&type metadata for ParticleSubSpawn, &off_1F2566840, v6, v7, v8, v10);
  v12 = sub_1AF64B110(&type metadata for ParticleSubSpawn.State, &off_1F25668F8, v6, v7, v8, v10);
  v13 = v12;
  if (v6)
  {
    if (v8)
    {
      v14 = *a1;
      do
      {
        v15 = *v6++;
        sub_1AFBC7E40(v14, v9, v15, v11, v13, a2, a3);
        if (v22)
        {
          break;
        }

        v13 += 8;
        v11 += 6;
        --v8;
      }

      while (v8);
    }
  }

  else
  {
    v16 = a1[6];
    v17 = a1[7];
    v18 = &v11[6 * v16];
    v19 = &v12[64 * v16];
    do
    {
      if (v17 == v16)
      {
        break;
      }

      v20 = v16 + 1;
      sub_1AFBC7E40(*a1, v9, v16, v18, v19, a2, a3);
      v18 += 6;
      v19 += 8;
      v16 = v20;
    }

    while (!v22);
  }
}

uint64_t sub_1AFD29F14(void *a1, uint64_t a2, uint64_t *a3)
{
  v74 = a2;
  sub_1AF442910(0);
  v81 = *(v6 - 8);
  v82 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v73 - v10;
  v12 = a1[1];
  v80 = sub_1AF70632C(v12, a1);
  result = sub_1AF706360(v12, a1);
  v75 = v3;
  v76 = a3;
  v14 = a1[11];
  v83 = a1;
  v79 = v14;
  if (!v14)
  {
    v44 = a1[6];
    v45 = a1[7];
    if (v44 == v45)
    {
      return result;
    }

    v78 = (v74 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    v79 = *(*(type metadata accessor for TriggerScript(0) - 8) + 72);
    while (1)
    {
      v46 = *a1;
      v47 = *(v12 + 16);

      if (*(v12 + 184))
      {
LABEL_70:
        result = sub_1AFDFE518();
        __break(1u);
        return result;
      }

      v48 = *(*(v12 + 168) + 4 * v44);
      v49 = *(*(v47 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v48 + 8);

      v50 = *(v46 + 216);
      if (!*(v50 + 16))
      {
        break;
      }

      v51 = sub_1AF449CB8(&type metadata for IsSubEntityOf);
      if ((v52 & 1) == 0)
      {
        break;
      }

      v53 = *(*(v50 + 56) + 24 * v51);
      v54 = *(v53 + 16);

      if (!v54)
      {
LABEL_49:

LABEL_51:
        v57 = 0;
        v58 = 1;
        goto LABEL_52;
      }

      v55 = (v53 + 44);
      while (*(v55 - 3) != v48 || *(v55 - 2) != v49)
      {
        v55 += 4;
        if (!--v54)
        {
          goto LABEL_49;
        }
      }

      v70 = *(v55 - 1);
      v69 = *v55;

      v57 = v70 | (v69 << 32);
      if (v70 != -1 || v69 != 0)
      {
        v58 = 0;
        if ((v70 & 0x80000000) != 0 || v78[1] <= v70)
        {
          goto LABEL_52;
        }

        v72 = (*v78 + 12 * v70);
        if ((v69 == -1 || v72[2] == v69) && *(*(*(v74 + 144) + 8 * *v72 + 32) + 120) != 1)
        {
          goto LABEL_58;
        }
      }

      v58 = 0;
LABEL_52:

      if (*(v12 + 184))
      {
        goto LABEL_70;
      }

      v60 = *(*(v12 + 168) + 4 * v44);
      v61 = &v80[v79 * v44];
      v62 = *(*(v59 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v60 + 8);

      v63 = *(v82 + 64);
      *v8 = v60;
      *(v8 + 1) = v62;
      *(v8 + 1) = v57;
      v8[16] = v58;
      sub_1AFD531F8(v61, &v8[v63], type metadata accessor for TriggerScript);
      v64 = v76;
      v65 = *v76;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v64 = v65;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v65 = sub_1AF4276AC(0, v65[2] + 1, 1, v65);
        *v64 = v65;
      }

      v68 = v65[2];
      v67 = v65[3];
      if (v68 >= v67 >> 1)
      {
        v65 = sub_1AF4276AC(v67 > 1, v68 + 1, 1, v65);
        *v64 = v65;
      }

      v65[2] = v68 + 1;
      result = sub_1AFD53D8C(v8, v65 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v68, sub_1AF442910);
LABEL_58:
      ++v44;
      a1 = v83;
      if (v44 == v45)
      {
        return result;
      }
    }

    goto LABEL_51;
  }

  v78 = a1[13];
  if (v78)
  {
    v73 = (v74 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    v15 = 0;
    v77 = *(*(type metadata accessor for TriggerScript(0) - 8) + 72);
    while (1)
    {
      v16 = *(v79 + 8 * v15);
      v17 = *a1;
      v18 = *(v12 + 16);

      if (*(v12 + 184))
      {
        goto LABEL_70;
      }

      v19 = *(*(v12 + 168) + 4 * v16);
      v20 = *(*(v18 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v19 + 8);

      v21 = *(v17 + 216);
      if (!*(v21 + 16))
      {
        break;
      }

      v22 = sub_1AF449CB8(&type metadata for IsSubEntityOf);
      if ((v23 & 1) == 0)
      {
        break;
      }

      v24 = *(*(v21 + 56) + 24 * v22);
      v25 = *(v24 + 16);

      if (!v25)
      {
LABEL_14:

LABEL_16:
        v28 = 0;
        v29 = 1;
LABEL_17:

        if (*(v12 + 184))
        {
          goto LABEL_70;
        }

        v31 = *(*(v12 + 168) + 4 * v16);
        v32 = &v80[v77 * v15];
        v33 = *(*(v30 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v31 + 8);

        v34 = *(v82 + 64);
        *v11 = v31;
        *(v11 + 1) = v33;
        *(v11 + 1) = v28;
        v11[16] = v29;
        sub_1AFD531F8(v32, &v11[v34], type metadata accessor for TriggerScript);
        v35 = *a3;
        v36 = swift_isUniquelyReferenced_nonNull_native();
        *a3 = v35;
        if ((v36 & 1) == 0)
        {
          v35 = sub_1AF4276AC(0, v35[2] + 1, 1, v35);
          *a3 = v35;
        }

        v38 = v35[2];
        v37 = v35[3];
        if (v38 >= v37 >> 1)
        {
          v35 = sub_1AF4276AC(v37 > 1, v38 + 1, 1, v35);
          *a3 = v35;
        }

        v35[2] = v38 + 1;
        result = sub_1AFD53D8C(v11, v35 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v38, sub_1AF442910);
        goto LABEL_23;
      }

      v26 = (v24 + 44);
      while (*(v26 - 3) != v19 || *(v26 - 2) != v20)
      {
        v26 += 4;
        if (!--v25)
        {
          goto LABEL_14;
        }
      }

      v40 = *(v26 - 1);
      v39 = *v26;

      v28 = v40 | (v39 << 32);
      v29 = 0;
      v41 = v40 == -1 && v39 == 0;
      if (v41 || (v42 = v40, (v40 & 0x80000000) != 0))
      {
        a3 = v76;
        goto LABEL_17;
      }

      a3 = v76;
      if (v73[1] <= v42)
      {
        goto LABEL_17;
      }

      v43 = (*v73 + 12 * v42);
      if (v39 != -1 && v43[2] != v39 || *(*(*(v74 + 144) + 8 * *v43 + 32) + 120) == 1)
      {
        v29 = 0;
        goto LABEL_17;
      }

LABEL_23:
      v15 = (v15 + 1);
      a1 = v83;
      if (v15 == v78)
      {
        return result;
      }
    }

    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1AFD2A628(void *a1, uint64_t a2)
{
  v5 = a1[11];
  v4 = a1[12];
  v6 = a1[13];
  v7 = a1[1];
  v8 = a1[2];
  v9 = sub_1AF64B110(&type metadata for Parent, &off_1F2529C98, v5, v4, v6, v8);
  v39 = v8;
  result = sub_1AF64B110(&type metadata for WorldTransform, &off_1F2529FC0, v5, v4, v6, v8);
  if (v5)
  {
    if (v6)
    {
      v11 = (a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
      v12 = (v9 + 4);
      do
      {
        v18 = *v5++;
        v17 = v18;
        v19 = *(v12 - 1);
        v20 = *v12;
        if ((v19 != -1 || v20 != 0) && (v19 & 0x80000000) == 0 && v11[1] > v19)
        {
          v22 = *v11 + 12 * v19;
          if (v20 == -1 || *(v22 + 8) == v20)
          {
            v23 = *(*(*(a2 + 88) + 8 * *(v22 + 6) + 32) + 16);
            v24 = *(v23 + 128);
            if (*(v24 + 16))
            {
              result = sub_1AF449CB8(&type metadata for LastFrameWorldTransform);
              if ((v25 & 1) != 0 && *(*(v23 + 24) + 16 * *(*(v24 + 56) + 8 * result) + 32) == &type metadata for LastFrameWorldTransform)
              {
                v26 = *(*(v7 + 40) + 16);
                v27 = *(v26 + 128);
                if (!*(v27 + 16) || (result = sub_1AF449CB8(&type metadata for LastFrameWorldTransform), (v28 & 1) == 0) || *(*(v26 + 24) + 16 * *(*(v27 + 56) + 8 * result) + 32) != &type metadata for LastFrameWorldTransform)
                {
                  v40 = &type metadata for LastFrameWorldTransform;
                  v41 = &off_1F2529EB0;
                  v42 = 0;

                  sub_1AF6304E8(v39 + 104, &v40, v17, 0, v7, v39);

                  result = sub_1AF635250(&v40);
                }
              }
            }
          }
        }

        v12 += 2;
        --v6;
      }

      while (v6);
    }
  }

  else
  {
    v14 = a1[6];
    v13 = a1[7];
    if (v14 != v13)
    {
      v15 = (a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
      v16 = &v9[8 * v14 + 4];
      do
      {
        v29 = *(v16 - 1);
        v30 = *v16;
        if ((v29 != -1 || v30 != 0) && (v29 & 0x80000000) == 0 && v15[1] > v29)
        {
          v32 = *v15 + 12 * v29;
          if (v30 == -1 || *(v32 + 8) == v30)
          {
            v33 = *(*(*(a2 + 88) + 8 * *(v32 + 6) + 32) + 16);
            v34 = *(v33 + 128);
            if (*(v34 + 16))
            {
              result = sub_1AF449CB8(&type metadata for LastFrameWorldTransform);
              if ((v35 & 1) != 0 && *(*(v33 + 24) + 16 * *(*(v34 + 56) + 8 * result) + 32) == &type metadata for LastFrameWorldTransform)
              {
                v36 = *(*(v7 + 40) + 16);
                v37 = *(v36 + 128);
                if (!*(v37 + 16) || (result = sub_1AF449CB8(&type metadata for LastFrameWorldTransform), (v38 & 1) == 0) || *(*(v36 + 24) + 16 * *(*(v37 + 56) + 8 * result) + 32) != &type metadata for LastFrameWorldTransform)
                {
                  v40 = &type metadata for LastFrameWorldTransform;
                  v41 = &off_1F2529EB0;
                  v42 = 0;

                  sub_1AF6304E8(v39 + 104, &v40, v14, 0, v7, v39);

                  result = sub_1AF635250(&v40);
                }
              }
            }
          }
        }

        ++v14;
        v16 += 8;
      }

      while (v13 != v14);
    }
  }

  return result;
}

uint64_t sub_1AFD2A9A8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[11];
  v7 = a1[12];
  v8 = a1[13];
  v9 = a1[2];
  v10 = sub_1AF64B110(&type metadata for ParticleFluidSolver2DSolver, &off_1F2565C50, v6, v7, v8, v9);
  result = sub_1AF64B110(&type metadata for WorldTransform, &off_1F2529FC0, v6, v7, v8, v9);
  if (v6)
  {
    for (; v8; --v8)
    {
      v12 = *(a2 + 112);
      v24 = *(a2 + 96);
      v25 = v12;
      v26 = *(a2 + 128);
      v13 = *(v10 + 3);
      v29 = *(v10 + 2);
      v30 = v13;
      v31 = *(v10 + 4);
      v32 = v10[80];
      v14 = *v10;
      v15 = *(v10 + 1);
      v10 += 96;
      v27 = v14;
      v28 = v15;
      result = sub_1AFBB4A98(&v24, a3, &v27);
    }
  }

  else
  {
    v16 = a1[6];
    v17 = a1[7];
    v18 = v17 - v16;
    if (v17 != v16)
    {
      v19 = &v10[96 * v16];
      do
      {
        v20 = *(a2 + 112);
        v24 = *(a2 + 96);
        v25 = v20;
        v26 = *(a2 + 128);
        v21 = *(v19 + 3);
        v29 = *(v19 + 2);
        v30 = v21;
        v31 = *(v19 + 4);
        v32 = v19[80];
        v22 = *v19;
        v23 = *(v19 + 1);
        v19 += 96;
        v27 = v22;
        v28 = v23;
        result = sub_1AFBB4A98(&v24, a3, &v27);
        --v18;
      }

      while (v18);
    }
  }

  return result;
}

void sub_1AFD2AB08(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v139 = a4;
  v131 = a3;
  sub_1AFD54744(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v137 = &v113 - v10;
  sub_1AFD53F14(0, &unk_1ED728DD0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptCompileAttempt);
  v132 = v11;
  v115 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v113 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v128 = (&v113 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v136 = &v113 - v20;
  sub_1AFD547D4(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v127 = &v113 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v129 = &v113 - v24;
  sub_1AFD53F14(0, &unk_1ED72C4C0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptRuntime);
  v162 = v25;
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v113 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v138 = &v113 - v30;
  v31 = a1[1];
  v123 = v31;
  v32 = v141;
  v119 = sub_1AF706CCC(v31, a1);
  v118 = sub_1AF70687C(v31, a1);
  v133 = v32;
  v33 = a1[11];
  v120 = a2;
  v114 = v33;
  if (!v33)
  {
    v136 = v16;
    v137 = v28;
    v130 = v13;
    v140 = a2 + 32;
    v73 = a1[6];
    v116 = a1[7];
    v134 = (v115 + 56);
    v135 = (v26 + 56);
    v74 = v132;
    v75 = v162;
    v138 = v8;
    v76 = v127;
    do
    {
LABEL_36:
      if (v73 == v116)
      {
        return;
      }

      v77 = v73++;
      v124 = type metadata accessor for EmitterScript(0);
      v78 = *(v124 - 8);
      v141 = *(a2 + 16);
    }

    while (!v141);
    v117 = v73;
    v79 = 0;
    v80 = &v119[*(v78 + 72) * v77];
    v121 = &v118[*(v115 + 72) * v77];
    v122 = v77;
    while (1)
    {
      sub_1AF85ABE8(v140 + 48 * v79, v150);
      if (v151)
      {
        break;
      }

      sub_1AF616568(v150, v149);
      sub_1AF441194(v149, &v142);
      sub_1AF5C5358(0, &qword_1ED72FFF0, &protocol descriptor for EntityComponent);
      if ((swift_dynamicCast() & 1) == 0)
      {
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v149);
        (*v135)(v76, 1, 1, v75);
        v81 = sub_1AFD547D4;
        v82 = v76;
LABEL_40:
        sub_1AFD53198(v82, v81);
        goto LABEL_41;
      }

      (*v135)(v76, 0, 1, v75);
      sub_1AFD53F80(v76, v137, &unk_1ED72C4C0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptRuntime);
      sub_1AFDFF308();
      sub_1AFDFD038();
      v93 = *(v80 + 24);
      MEMORY[0x1B271ACB0](*(v93 + 16));
      v94 = *(v93 + 16);
      if (v94)
      {
        v95 = v93 + 40;
        do
        {

          sub_1AFDFD038();

          v95 += 16;
          --v94;
        }

        while (v94);
      }

      sub_1AFDFD038();

      v154 = v144;
      v155 = v145;
      v156 = v146;
      v152 = v142;
      v153 = v143;
      v96 = sub_1AFDFF2E8();
      v97 = v137;
      v8 = v138;
      v98 = &v137[*(v74 + 36)];
      if ((v98[8] & 1) != 0 || v96 != *v98)
      {
        v75 = v162;
      }

      else
      {
        v99 = v137;
        os_unfair_lock_lock(*(v131 + 72));
        v100 = v130;
        sub_1AFD53D18(v99, v130, &unk_1ED728DD0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptCompileAttempt);
        sub_1AFD54864(v80, v100, type metadata accessor for EmitterScript);
        v101 = v133;
        sub_1AFAA7344(0, 1, &v142);
        if (v101)
        {

          v128 = 0;
          v129 = 0;
          v133 = 0;
        }

        else
        {
          v133 = 0;
          v128 = v145;
          v129 = *(&v144 + 1);

          v100 = v130;
        }

        v102 = v123;

        v104 = v162;
        if (*(v102 + 184))
        {
LABEL_67:
          sub_1AFDFE518();
          __break(1u);
          return;
        }

        v105 = *(*(v102 + 168) + 4 * v122);
        v125 = *(*(v103 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v105 + 8);

        *(&v143 + 1) = v74;
        v106 = sub_1AF585714(&v142);
        v126 = type metadata accessor for EmitterScript;
        sub_1AFD53D18(v100, v106, &unk_1ED728DD0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptCompileAttempt);
        v107 = v137;
        v108 = *&v137[*(v104 + 40)];
        *&v144 = *&v137[*(v104 + 36)];
        *(&v144 + 1) = v108;
        *&v145 = *&v137[*(v162 + 44)];
        sub_1AFD55360(0, &qword_1EB644420, &type metadata for BasicScriptRuntime, MEMORY[0x1E69E6720]);
        v147 = v109;
        *(&v145 + 1) = v129;
        v146 = v128;
        v148 = 1;
        v110 = v105 | (v125 << 32);

        v111 = v131;
        sub_1AF825824(&v142, v124, v110);
        v75 = v162;
        v112 = v132;
        sub_1AFD53C4C(v130, &unk_1ED728DD0, v126, &off_1ED72CA10, type metadata accessor for ScriptCompileAttempt);
        os_unfair_lock_unlock(*(v111 + 72));
        v97 = v107;
        v74 = v112;
        v8 = v138;
        v76 = v127;
      }

      sub_1AFD53C4C(v97, &unk_1ED72C4C0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptRuntime);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v149);
      *v139 = 1;
LABEL_41:
      if (++v79 == v141)
      {
        a2 = v120;
        v73 = v117;
        goto LABEL_36;
      }
    }

    sub_1AF616568(v150, v149);
    sub_1AF441194(v149, &v142);
    sub_1AF5C5358(0, &qword_1ED72FFF0, &protocol descriptor for EntityComponent);
    if (swift_dynamicCast())
    {
      (*v134)(v8, 0, 1, v74);
      sub_1AFD53F80(v8, v136, &unk_1ED728DD0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptCompileAttempt);
      sub_1AFDFF308();
      sub_1AFDFD038();
      v83 = *(v80 + 24);
      MEMORY[0x1B271ACB0](*(v83 + 16));
      v84 = *(v83 + 16);
      if (v84)
      {
        v85 = v83 + 40;
        do
        {

          sub_1AFDFD038();

          v85 += 16;
          --v84;
        }

        while (v84);
      }

      sub_1AFDFD038();

      v159 = v144;
      v160 = v145;
      v161 = v146;
      v157 = v142;
      v158 = v143;
      v86 = sub_1AFDFF2E8();
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v149);
      v87 = &v136[*(v74 + 36)];
      v8 = v138;
      if ((v87[8] & 1) != 0 || v86 != *v87)
      {
        sub_1AFD53C4C(v136, &unk_1ED728DD0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptCompileAttempt);
      }

      else
      {
        v88 = v136;
        v89 = v80;
        v90 = v121;
        sub_1AFD53C4C(v121, &unk_1ED728DD0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptCompileAttempt);
        v91 = v88;
        v76 = v127;
        v92 = v90;
        v80 = v89;
        v74 = v132;
        sub_1AFD53F80(v91, v92, &unk_1ED728DD0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptCompileAttempt);
      }

      *v139 = 1;
      v75 = v162;
      goto LABEL_41;
    }

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v149);
    (*v134)(v8, 1, 1, v74);
    v81 = sub_1AFD54744;
    v82 = v8;
    goto LABEL_40;
  }

  v34 = v115;
  v116 = a1[13];
  if (v116)
  {
    v35 = type metadata accessor for EmitterScript(0);
    v130 = 0;
    v117 = v35;
    v36 = *(v35 - 8);
    v140 = a2 + 32;
    v113 = *(v36 + 72);
    v134 = (v34 + 56);
    v135 = (v26 + 56);
    v115 = *(v34 + 72);
    v37 = v132;
    v38 = v162;
    v39 = v137;
    v40 = v129;
    while (1)
    {
      v141 = *(a2 + 16);
      if (v141)
      {
        break;
      }

LABEL_4:
      ++v130;
      a2 = v120;
      if (v130 == v116)
      {
        return;
      }
    }

    v41 = 0;
    v42 = *(v114 + 8 * v130);
    v43 = &v119[v113 * v130];
    v121 = &v118[v115 * v130];
    v122 = v42;
    while (1)
    {
      sub_1AF85ABE8(v140 + 48 * v41, v150);
      if (v151)
      {
        break;
      }

      sub_1AF616568(v150, v149);
      sub_1AF441194(v149, &v142);
      sub_1AF5C5358(0, &qword_1ED72FFF0, &protocol descriptor for EntityComponent);
      if ((swift_dynamicCast() & 1) == 0)
      {
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v149);
        (*v135)(v40, 1, 1, v38);
        v44 = sub_1AFD547D4;
        v45 = v40;
LABEL_8:
        sub_1AFD53198(v45, v44);
        goto LABEL_9;
      }

      (*v135)(v40, 0, 1, v38);
      sub_1AFD53F80(v40, v138, &unk_1ED72C4C0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptRuntime);
      sub_1AFDFF308();
      sub_1AFDFD038();
      v56 = *(v43 + 24);
      MEMORY[0x1B271ACB0](*(v56 + 16));
      v57 = *(v56 + 16);
      if (v57)
      {
        v58 = v56 + 40;
        do
        {

          sub_1AFDFD038();

          v58 += 16;
          --v57;
        }

        while (v57);
      }

      sub_1AFDFD038();

      v154 = v144;
      v155 = v145;
      v156 = v146;
      v152 = v142;
      v153 = v143;
      v59 = sub_1AFDFF2E8();
      v39 = v137;
      v60 = &v138[*(v37 + 36)];
      if ((v60[8] & 1) != 0 || v59 != *v60)
      {
        v38 = v162;
      }

      else
      {
        os_unfair_lock_lock(*(v131 + 72));
        v61 = v128;
        sub_1AFD53D18(v138, v128, &unk_1ED728DD0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptCompileAttempt);
        sub_1AFD54864(v43, v61, type metadata accessor for EmitterScript);
        v62 = v133;
        sub_1AFAA7344(0, 1, &v142);
        if (v62)
        {

          v126 = 0;
          v127 = 0;
          v133 = 0;
        }

        else
        {
          v133 = 0;
          v126 = v145;
          v127 = *(&v144 + 1);
        }

        v63 = v123;

        v65 = v162;
        if (*(v63 + 184))
        {
          goto LABEL_67;
        }

        v66 = *(*(v63 + 168) + 4 * v122);
        v124 = *(*(v64 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v66 + 8);

        *(&v143 + 1) = v37;
        v67 = sub_1AF585714(&v142);
        v125 = type metadata accessor for EmitterScript;
        v68 = v128;
        sub_1AFD53D18(v128, v67, &unk_1ED728DD0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptCompileAttempt);
        v69 = *&v138[*(v65 + 40)];
        *&v144 = *&v138[*(v65 + 36)];
        *(&v144 + 1) = v69;
        *&v145 = *&v138[*(v162 + 44)];
        sub_1AFD55360(0, &qword_1EB644420, &type metadata for BasicScriptRuntime, MEMORY[0x1E69E6720]);
        v147 = v70;
        *(&v145 + 1) = v127;
        v146 = v126;
        v148 = 1;
        v71 = v66 | (v124 << 32);

        v72 = v131;
        sub_1AF825824(&v142, v117, v71);
        v38 = v162;
        v37 = v132;
        sub_1AFD53C4C(v68, &unk_1ED728DD0, v125, &off_1ED72CA10, type metadata accessor for ScriptCompileAttempt);
        os_unfair_lock_unlock(*(v72 + 72));
        v39 = v137;
        v40 = v129;
      }

      sub_1AFD53C4C(v138, &unk_1ED72C4C0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptRuntime);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v149);
      *v139 = 1;
LABEL_9:
      if (++v41 == v141)
      {
        goto LABEL_4;
      }
    }

    sub_1AF616568(v150, v149);
    sub_1AF441194(v149, &v142);
    sub_1AF5C5358(0, &qword_1ED72FFF0, &protocol descriptor for EntityComponent);
    if (swift_dynamicCast())
    {
      (*v134)(v39, 0, 1, v37);
      sub_1AFD53F80(v39, v136, &unk_1ED728DD0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptCompileAttempt);
      sub_1AFDFF308();
      sub_1AFDFD038();
      v46 = *(v43 + 24);
      MEMORY[0x1B271ACB0](*(v46 + 16));
      v47 = *(v46 + 16);
      if (v47)
      {
        v48 = v46 + 40;
        do
        {

          sub_1AFDFD038();

          v48 += 16;
          --v47;
        }

        while (v47);
      }

      sub_1AFDFD038();

      v159 = v144;
      v160 = v145;
      v161 = v146;
      v157 = v142;
      v158 = v143;
      v49 = sub_1AFDFF2E8();
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v149);
      v39 = v137;
      v50 = &v136[*(v37 + 36)];
      if ((v50[8] & 1) != 0 || v49 != *v50)
      {
        sub_1AFD53C4C(v136, &unk_1ED728DD0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptCompileAttempt);
      }

      else
      {
        v51 = v136;
        v52 = v43;
        v53 = v121;
        sub_1AFD53C4C(v121, &unk_1ED728DD0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptCompileAttempt);
        v54 = v51;
        v40 = v129;
        v55 = v53;
        v43 = v52;
        v37 = v132;
        sub_1AFD53F80(v54, v55, &unk_1ED728DD0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptCompileAttempt);
      }

      *v139 = 1;
      v38 = v162;
      goto LABEL_9;
    }

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v149);
    (*v134)(v39, 1, 1, v37);
    v44 = sub_1AFD54744;
    v45 = v39;
    goto LABEL_8;
  }
}

void sub_1AFD2C06C(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v158 = a4;
  v150 = a3;
  sub_1AFD54624(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v152 = &v134 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v155 = (&v134 - v9);
  sub_1AFD53F14(0, &unk_1ED728E00, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptCompileAttempt);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v149 = &v134 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v153 = (&v134 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v151 = &v134 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v154 = &v134 - v19;
  sub_1AFD546B4(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v134 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v156 = &v134 - v24;
  sub_1AFD53F14(0, &unk_1ED72C4F0, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptRuntime);
  v161 = v25;
  v26 = *(v25 - 1);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v134 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v157 = &v134 - v30;
  v31 = a1[1];
  v32 = v160;
  v141 = sub_1AF706180(v31, a1);
  v145 = v31;
  v140 = sub_1AF706B6C(v31, a1);
  v134 = v32;
  v33 = a1[11];
  v142 = a2;
  v197 = v11;
  v137 = v33;
  if (!v33)
  {
    v156 = v22;
    v157 = v28;
    v159 = a2 + 32;
    v85 = a1[6];
    v138 = a1[7];
    v154 = (v12 + 56);
    v155 = (v26 + 56);
    v86 = v161;
    v87 = v152;
    v135 = v12;
    do
    {
LABEL_40:
      if (v85 == v138)
      {
        return;
      }

      v88 = v85++;
      v146 = type metadata accessor for GraphScript(0);
      v89 = *(v146 - 1);
      v160 = *(a2 + 16);
    }

    while (!v160);
    v139 = v85;
    v90 = v88;
    v91 = 0;
    v92 = &v141[*(v89 + 72) * v90];
    v143 = &v140[*(v12 + 72) * v90];
    v144 = v90;
    v93 = v153;
    v94 = v156;
    while (1)
    {
      sub_1AF85ABE8(v159 + 48 * v91, v175);
      if (v176)
      {
        break;
      }

      sub_1AF616568(v175, v174);
      sub_1AF441194(v174, &v162);
      sub_1AF5C5358(0, &qword_1ED72FFF0, &protocol descriptor for EntityComponent);
      if ((swift_dynamicCast() & 1) == 0)
      {
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v174);
        (*v155)(v94, 1, 1, v86);
        v95 = sub_1AFD546B4;
        v96 = v94;
LABEL_44:
        sub_1AFD53198(v96, v95);
        goto LABEL_45;
      }

      (*v155)(v94, 0, 1, v86);
      sub_1AFD53F80(v94, v157, &unk_1ED72C4F0, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptRuntime);
      sub_1AFDFF308();
      sub_1AFDFD038();
      sub_1AFDFD038();

      v110 = *(v92 + 32);
      MEMORY[0x1B271ACB0](*(v110 + 16));
      v111 = *(v110 + 16);
      if (v111)
      {
        v112 = v110 + 40;
        do
        {

          sub_1AFDFD038();

          v112 += 16;
          --v111;
        }

        while (v111);
      }

      MEMORY[0x1B271ACB0](qword_1AFEAB0B8[*(v92 + 40)]);
      v113 = *v92;
      MEMORY[0x1B271ACB0](*(*v92 + 16));
      v114 = *(v113 + 16);
      if (v114)
      {
        v115 = (v113 + 48);
        do
        {
          v116 = *(v115 - 2);
          v117 = *v115;
          v115 += 5;
          sub_1AFDFF308();
          sub_1AF443EE0(v116);
          sub_1AF444224(v117);
          v119 = sub_1AFAA02E0(v116, v118);
          MEMORY[0x1B271ACB0](v119);
          v184 = v171;
          v185 = v172;
          v186 = v173;
          v182 = v169;
          v183 = v170;
          v120 = sub_1AFDFF2E8();
          MEMORY[0x1B271ACB0](v120);
          sub_1AF443F24(v116);
          sub_1AF444AF4(v117);
          --v114;
        }

        while (v114);
      }

      v179 = v164;
      v180 = v165;
      v181 = v166;
      v177 = v162;
      v178 = v163;
      v121 = sub_1AFDFF2E8();
      v122 = v157;
      v123 = &v157[*(v197 + 36)];
      v124 = v150;
      if ((v123[8] & 1) == 0 && v121 == *v123)
      {
        os_unfair_lock_lock(*(v150 + 72));
        v125 = v149;
        sub_1AFD53D18(v122, v149, &unk_1ED728E00, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptCompileAttempt);
        sub_1AFD54864(v92, v125, type metadata accessor for GraphScript);
        v126 = *v92;
        v127 = v145;
        v128 = *(v145 + 16);

        if (*(v127 + 184))
        {
LABEL_74:
          sub_1AFDFE518();
          __break(1u);
          return;
        }

        v151 = *(*(v127 + 168) + 4 * v144);
        v148 = *(*(v128 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v151 + 8);

        *(&v163 + 1) = v197;
        v129 = sub_1AF585714(&v162);
        v147 = type metadata accessor for GraphScript;
        sub_1AFD53D18(v125, v129, &unk_1ED728E00, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptCompileAttempt);
        v130 = *&v157[v161[10]];
        *&v164 = *&v157[v161[9]];
        *(&v164 + 1) = v130;
        *&v165 = *&v157[v161[11]];
        sub_1AFD55360(0, &qword_1EB644420, &type metadata for BasicScriptRuntime, MEMORY[0x1E69E6720]);
        v167 = v131;
        *(&v165 + 1) = v126;
        v166 = 0;
        v168 = 1;
        v132 = v151 | (v148 << 32);
        v122 = v157;

        sub_1AF825824(&v162, v146, v132);
        sub_1AFD53C4C(v149, &unk_1ED728E00, v147, &off_1ED72D7D8, type metadata accessor for ScriptCompileAttempt);
        os_unfair_lock_unlock(*(v124 + 72));
      }

      sub_1AFD53C4C(v122, &unk_1ED72C4F0, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptRuntime);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v174);
      *v158 = 1;
      v86 = v161;
      v87 = v152;
      v93 = v153;
      v94 = v156;
LABEL_45:
      if (++v91 == v160)
      {
        a2 = v142;
        v12 = v135;
        v85 = v139;
        goto LABEL_40;
      }
    }

    sub_1AF616568(v175, v174);
    sub_1AF441194(v174, &v162);
    sub_1AF5C5358(0, &qword_1ED72FFF0, &protocol descriptor for EntityComponent);
    if (swift_dynamicCast())
    {
      (*v154)(v87, 0, 1, v197);
      sub_1AFD53F80(v87, v93, &unk_1ED728E00, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptCompileAttempt);
      sub_1AFDFF308();
      sub_1AFDFD038();
      sub_1AFDFD038();

      v97 = *(v92 + 32);
      MEMORY[0x1B271ACB0](*(v97 + 16));
      v98 = *(v97 + 16);
      if (v98)
      {
        v99 = v97 + 40;
        do
        {

          sub_1AFDFD038();

          v99 += 16;
          --v98;
        }

        while (v98);
      }

      MEMORY[0x1B271ACB0](qword_1AFEAB0B8[*(v92 + 40)]);
      v100 = *v92;
      MEMORY[0x1B271ACB0](*(*v92 + 16));
      v101 = *(v100 + 16);
      if (v101)
      {
        v102 = (v100 + 48);
        do
        {
          v103 = *(v102 - 2);
          v104 = *v102;
          v102 += 5;
          sub_1AFDFF308();
          sub_1AF443EE0(v103);
          sub_1AF444224(v104);
          v106 = sub_1AFAA02E0(v103, v105);
          MEMORY[0x1B271ACB0](v106);
          v194 = v171;
          v195 = v172;
          v196 = v173;
          v192 = v169;
          v193 = v170;
          v107 = sub_1AFDFF2E8();
          MEMORY[0x1B271ACB0](v107);
          sub_1AF443F24(v103);
          sub_1AF444AF4(v104);
          --v101;
        }

        while (v101);
      }

      v189 = v164;
      v190 = v165;
      v191 = v166;
      v187 = v162;
      v188 = v163;
      v108 = sub_1AFDFF2E8();
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v174);
      v93 = v153;
      v109 = v153 + *(v197 + 36);
      if (v109[8])
      {
        sub_1AFD53C4C(v153, &unk_1ED728E00, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptCompileAttempt);
        v87 = v152;
      }

      else
      {
        v87 = v152;
        if (v108 == *v109)
        {
          v133 = v143;
          sub_1AFD53C4C(v143, &unk_1ED728E00, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptCompileAttempt);
          sub_1AFD53F80(v93, v133, &unk_1ED728E00, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptCompileAttempt);
        }

        else
        {
          sub_1AFD53C4C(v153, &unk_1ED728E00, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptCompileAttempt);
        }
      }

      v94 = v156;
      *v158 = 1;
      v86 = v161;
      goto LABEL_45;
    }

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v174);
    (*v154)(v87, 1, 1, v197);
    v95 = sub_1AFD54624;
    v96 = v87;
    goto LABEL_44;
  }

  v34 = a1[13];
  v35 = v161;
  v37 = v154;
  v36 = v155;
  v138 = v34;
  if (v34)
  {
    v38 = type metadata accessor for GraphScript(0);
    v149 = 0;
    v139 = v38;
    v39 = *(v38 - 8);
    v159 = a2 + 32;
    v136 = *(v39 + 72);
    v40 = (v26 + 56);
    v152 = (v12 + 56);
    v135 = *(v12 + 72);
    v153 = (v26 + 56);
    while (1)
    {
      v41 = v156;
      v160 = *(a2 + 16);
      if (v160)
      {
        break;
      }

LABEL_4:
      ++v149;
      a2 = v142;
      if (v149 == v138)
      {
        return;
      }
    }

    v42 = 0;
    v43 = *(v137 + 8 * v149);
    v44 = &v141[v136 * v149];
    v143 = &v140[v135 * v149];
    v144 = v43;
    while (1)
    {
      sub_1AF85ABE8(v159 + 48 * v42, v175);
      if (v176)
      {
        break;
      }

      sub_1AF616568(v175, v174);
      sub_1AF441194(v174, &v162);
      sub_1AF5C5358(0, &qword_1ED72FFF0, &protocol descriptor for EntityComponent);
      if ((swift_dynamicCast() & 1) == 0)
      {
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v174);
        (*v40)(v41, 1, 1, v35);
        v45 = sub_1AFD546B4;
        v46 = v41;
LABEL_8:
        sub_1AFD53198(v46, v45);
        goto LABEL_9;
      }

      (*v40)(v41, 0, 1, v35);
      sub_1AFD53F80(v41, v157, &unk_1ED72C4F0, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptRuntime);
      sub_1AFDFF308();
      sub_1AFDFD038();
      sub_1AFDFD038();

      v60 = *(v44 + 32);
      MEMORY[0x1B271ACB0](*(v60 + 16));
      v61 = *(v60 + 16);
      if (v61)
      {
        v62 = v60 + 40;
        do
        {

          sub_1AFDFD038();

          v62 += 16;
          --v61;
        }

        while (v61);
      }

      MEMORY[0x1B271ACB0](qword_1AFEAB0B8[*(v44 + 40)]);
      v63 = *v44;
      MEMORY[0x1B271ACB0](*(*v44 + 16));
      v64 = *(v63 + 16);
      if (v64)
      {
        v65 = (v63 + 48);
        do
        {
          v66 = *(v65 - 2);
          v67 = *v65;
          v65 += 5;
          sub_1AFDFF308();
          sub_1AF443EE0(v66);
          sub_1AF444224(v67);
          v69 = sub_1AFAA02E0(v66, v68);
          MEMORY[0x1B271ACB0](v69);
          v184 = v171;
          v185 = v172;
          v186 = v173;
          v182 = v169;
          v183 = v170;
          v70 = sub_1AFDFF2E8();
          MEMORY[0x1B271ACB0](v70);
          sub_1AF443F24(v66);
          sub_1AF444AF4(v67);
          --v64;
        }

        while (v64);
      }

      v179 = v164;
      v180 = v165;
      v181 = v166;
      v177 = v162;
      v178 = v163;
      v71 = sub_1AFDFF2E8();
      v72 = v157;
      v73 = &v157[*(v197 + 36)];
      v74 = v151;
      if ((v73[8] & 1) == 0 && v71 == *v73)
      {
        v75 = v150;
        os_unfair_lock_lock(*(v150 + 72));
        sub_1AFD53D18(v72, v74, &unk_1ED728E00, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptCompileAttempt);
        sub_1AFD54864(v44, v74, type metadata accessor for GraphScript);
        v76 = *v44;
        v77 = v145;
        v78 = *(v145 + 16);

        if (*(v77 + 184))
        {
          goto LABEL_74;
        }

        v79 = *(*(v77 + 168) + 4 * v144);
        v147 = *(*(v78 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v79 + 8);
        v148 = v79;

        *(&v163 + 1) = v197;
        v80 = sub_1AF585714(&v162);
        v146 = type metadata accessor for GraphScript;
        sub_1AFD53D18(v74, v80, &unk_1ED728E00, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptCompileAttempt);
        v81 = *&v157[v161[10]];
        *&v164 = *&v157[v161[9]];
        *(&v164 + 1) = v81;
        *&v165 = *&v157[v161[11]];
        sub_1AFD55360(0, &qword_1EB644420, &type metadata for BasicScriptRuntime, MEMORY[0x1E69E6720]);
        v167 = v82;
        *(&v165 + 1) = v76;
        v166 = 0;
        v168 = 1;
        v83 = v148 | (v147 << 32);
        v72 = v157;

        sub_1AF825824(&v162, v139, v83);
        sub_1AFD53C4C(v151, &unk_1ED728E00, v146, &off_1ED72D7D8, type metadata accessor for ScriptCompileAttempt);
        os_unfair_lock_unlock(*(v75 + 72));
      }

      sub_1AFD53C4C(v72, &unk_1ED72C4F0, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptRuntime);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v174);
      *v158 = 1;
      v35 = v161;
      v37 = v154;
      v36 = v155;
      v41 = v156;
      v40 = v153;
LABEL_9:
      if (++v42 == v160)
      {
        goto LABEL_4;
      }
    }

    sub_1AF616568(v175, v174);
    sub_1AF441194(v174, &v162);
    sub_1AF5C5358(0, &qword_1ED72FFF0, &protocol descriptor for EntityComponent);
    if (swift_dynamicCast())
    {
      (*v152)(v36, 0, 1, v197);
      sub_1AFD53F80(v36, v37, &unk_1ED728E00, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptCompileAttempt);
      sub_1AFDFF308();
      sub_1AFDFD038();
      sub_1AFDFD038();

      v47 = *(v44 + 32);
      MEMORY[0x1B271ACB0](*(v47 + 16));
      v48 = *(v47 + 16);
      if (v48)
      {
        v49 = v47 + 40;
        do
        {

          sub_1AFDFD038();

          v49 += 16;
          --v48;
        }

        while (v48);
      }

      MEMORY[0x1B271ACB0](qword_1AFEAB0B8[*(v44 + 40)]);
      v50 = *v44;
      MEMORY[0x1B271ACB0](*(*v44 + 16));
      v51 = *(v50 + 16);
      if (v51)
      {
        v52 = (v50 + 48);
        do
        {
          v53 = *(v52 - 2);
          v54 = *v52;
          v52 += 5;
          sub_1AFDFF308();
          sub_1AF443EE0(v53);
          sub_1AF444224(v54);
          v56 = sub_1AFAA02E0(v53, v55);
          MEMORY[0x1B271ACB0](v56);
          v194 = v171;
          v195 = v172;
          v196 = v173;
          v192 = v169;
          v193 = v170;
          v57 = sub_1AFDFF2E8();
          MEMORY[0x1B271ACB0](v57);
          sub_1AF443F24(v53);
          sub_1AF444AF4(v54);
          --v51;
        }

        while (v51);
      }

      v189 = v164;
      v190 = v165;
      v191 = v166;
      v187 = v162;
      v188 = v163;
      v58 = sub_1AFDFF2E8();
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v174);
      v37 = v154;
      v59 = &v154[*(v197 + 36)];
      if (v59[8])
      {
        sub_1AFD53C4C(v154, &unk_1ED728E00, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptCompileAttempt);
        v36 = v155;
        v41 = v156;
      }

      else
      {
        v41 = v156;
        if (v58 == *v59)
        {
          v84 = v143;
          sub_1AFD53C4C(v143, &unk_1ED728E00, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptCompileAttempt);
          sub_1AFD53F80(v37, v84, &unk_1ED728E00, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptCompileAttempt);
        }

        else
        {
          sub_1AFD53C4C(v154, &unk_1ED728E00, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptCompileAttempt);
        }

        v36 = v155;
      }

      v40 = v153;
      *v158 = 1;
      v35 = v161;
      goto LABEL_9;
    }

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v174);
    (*v152)(v36, 1, 1, v197);
    v45 = sub_1AFD54624;
    v46 = v36;
    goto LABEL_8;
  }
}

void sub_1AFD2D80C(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v158 = a4;
  v150 = a3;
  sub_1AFD54504(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v152 = &v134 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v155 = (&v134 - v9);
  sub_1AFD53F14(0, &unk_1ED728DE0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptCompileAttempt);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v149 = &v134 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v153 = (&v134 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v151 = &v134 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v154 = &v134 - v19;
  sub_1AFD54594(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v134 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v156 = &v134 - v24;
  sub_1AFD53F14(0, &unk_1ED72C4D0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptRuntime);
  v161 = v25;
  v26 = *(v25 - 1);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v134 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v157 = &v134 - v30;
  v31 = a1[1];
  v32 = v160;
  v141 = sub_1AF706090(v31, a1);
  v145 = v31;
  v140 = sub_1AF706AB0(v31, a1);
  v134 = v32;
  v33 = a1[11];
  v142 = a2;
  v197 = v11;
  v137 = v33;
  if (!v33)
  {
    v156 = v22;
    v157 = v28;
    v159 = a2 + 32;
    v85 = a1[6];
    v138 = a1[7];
    v154 = (v12 + 56);
    v155 = (v26 + 56);
    v86 = v161;
    v87 = v152;
    v135 = v12;
    do
    {
LABEL_40:
      if (v85 == v138)
      {
        return;
      }

      v88 = v85++;
      v146 = type metadata accessor for SimpleScript(0);
      v89 = *(v146 - 1);
      v160 = *(a2 + 16);
    }

    while (!v160);
    v139 = v85;
    v90 = v88;
    v91 = 0;
    v92 = &v141[*(v89 + 72) * v90];
    v143 = &v140[*(v12 + 72) * v90];
    v144 = v90;
    v93 = v153;
    v94 = v156;
    while (1)
    {
      sub_1AF85ABE8(v159 + 48 * v91, v175);
      if (v176)
      {
        break;
      }

      sub_1AF616568(v175, v174);
      sub_1AF441194(v174, &v162);
      sub_1AF5C5358(0, &qword_1ED72FFF0, &protocol descriptor for EntityComponent);
      if ((swift_dynamicCast() & 1) == 0)
      {
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v174);
        (*v155)(v94, 1, 1, v86);
        v95 = sub_1AFD54594;
        v96 = v94;
LABEL_44:
        sub_1AFD53198(v96, v95);
        goto LABEL_45;
      }

      (*v155)(v94, 0, 1, v86);
      sub_1AFD53F80(v94, v157, &unk_1ED72C4D0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptRuntime);
      sub_1AFDFF308();
      sub_1AFDFD038();
      sub_1AFDFD038();

      v110 = *(v92 + 24);
      MEMORY[0x1B271ACB0](*(v110 + 16));
      v111 = *(v110 + 16);
      if (v111)
      {
        v112 = v110 + 40;
        do
        {

          sub_1AFDFD038();

          v112 += 16;
          --v111;
        }

        while (v111);
      }

      MEMORY[0x1B271ACB0](qword_1AFEAB0B8[*(v92 + 56)]);
      v113 = *v92;
      MEMORY[0x1B271ACB0](*(*v92 + 16));
      v114 = *(v113 + 16);
      if (v114)
      {
        v115 = (v113 + 48);
        do
        {
          v116 = *(v115 - 2);
          v117 = *v115;
          v115 += 5;
          sub_1AFDFF308();
          sub_1AF443EE0(v116);
          sub_1AF444224(v117);
          v119 = sub_1AFAA02E0(v116, v118);
          MEMORY[0x1B271ACB0](v119);
          v184 = v171;
          v185 = v172;
          v186 = v173;
          v182 = v169;
          v183 = v170;
          v120 = sub_1AFDFF2E8();
          MEMORY[0x1B271ACB0](v120);
          sub_1AF443F24(v116);
          sub_1AF444AF4(v117);
          --v114;
        }

        while (v114);
      }

      v179 = v164;
      v180 = v165;
      v181 = v166;
      v177 = v162;
      v178 = v163;
      v121 = sub_1AFDFF2E8();
      v122 = v157;
      v123 = &v157[*(v197 + 36)];
      v124 = v150;
      if ((v123[8] & 1) == 0 && v121 == *v123)
      {
        os_unfair_lock_lock(*(v150 + 72));
        v125 = v149;
        sub_1AFD53D18(v122, v149, &unk_1ED728DE0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptCompileAttempt);
        sub_1AFD54864(v92, v125, type metadata accessor for SimpleScript);
        v126 = *v92;
        v127 = v145;
        v128 = *(v145 + 16);

        if (*(v127 + 184))
        {
LABEL_74:
          sub_1AFDFE518();
          __break(1u);
          return;
        }

        v151 = *(*(v127 + 168) + 4 * v144);
        v148 = *(*(v128 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v151 + 8);

        *(&v163 + 1) = v197;
        v129 = sub_1AF585714(&v162);
        v147 = type metadata accessor for SimpleScript;
        sub_1AFD53D18(v125, v129, &unk_1ED728DE0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptCompileAttempt);
        v130 = *&v157[v161[10]];
        *&v164 = *&v157[v161[9]];
        *(&v164 + 1) = v130;
        *&v165 = *&v157[v161[11]];
        sub_1AFD55360(0, &qword_1EB644420, &type metadata for BasicScriptRuntime, MEMORY[0x1E69E6720]);
        v167 = v131;
        *(&v165 + 1) = v126;
        v166 = 0;
        v168 = 1;
        v132 = v151 | (v148 << 32);
        v122 = v157;

        sub_1AF825824(&v162, v146, v132);
        sub_1AFD53C4C(v149, &unk_1ED728DE0, v147, &off_1ED72CD00, type metadata accessor for ScriptCompileAttempt);
        os_unfair_lock_unlock(*(v124 + 72));
      }

      sub_1AFD53C4C(v122, &unk_1ED72C4D0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptRuntime);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v174);
      *v158 = 1;
      v86 = v161;
      v87 = v152;
      v93 = v153;
      v94 = v156;
LABEL_45:
      if (++v91 == v160)
      {
        a2 = v142;
        v12 = v135;
        v85 = v139;
        goto LABEL_40;
      }
    }

    sub_1AF616568(v175, v174);
    sub_1AF441194(v174, &v162);
    sub_1AF5C5358(0, &qword_1ED72FFF0, &protocol descriptor for EntityComponent);
    if (swift_dynamicCast())
    {
      (*v154)(v87, 0, 1, v197);
      sub_1AFD53F80(v87, v93, &unk_1ED728DE0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptCompileAttempt);
      sub_1AFDFF308();
      sub_1AFDFD038();
      sub_1AFDFD038();

      v97 = *(v92 + 24);
      MEMORY[0x1B271ACB0](*(v97 + 16));
      v98 = *(v97 + 16);
      if (v98)
      {
        v99 = v97 + 40;
        do
        {

          sub_1AFDFD038();

          v99 += 16;
          --v98;
        }

        while (v98);
      }

      MEMORY[0x1B271ACB0](qword_1AFEAB0B8[*(v92 + 56)]);
      v100 = *v92;
      MEMORY[0x1B271ACB0](*(*v92 + 16));
      v101 = *(v100 + 16);
      if (v101)
      {
        v102 = (v100 + 48);
        do
        {
          v103 = *(v102 - 2);
          v104 = *v102;
          v102 += 5;
          sub_1AFDFF308();
          sub_1AF443EE0(v103);
          sub_1AF444224(v104);
          v106 = sub_1AFAA02E0(v103, v105);
          MEMORY[0x1B271ACB0](v106);
          v194 = v171;
          v195 = v172;
          v196 = v173;
          v192 = v169;
          v193 = v170;
          v107 = sub_1AFDFF2E8();
          MEMORY[0x1B271ACB0](v107);
          sub_1AF443F24(v103);
          sub_1AF444AF4(v104);
          --v101;
        }

        while (v101);
      }

      v189 = v164;
      v190 = v165;
      v191 = v166;
      v187 = v162;
      v188 = v163;
      v108 = sub_1AFDFF2E8();
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v174);
      v93 = v153;
      v109 = v153 + *(v197 + 36);
      if (v109[8])
      {
        sub_1AFD53C4C(v153, &unk_1ED728DE0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptCompileAttempt);
        v87 = v152;
      }

      else
      {
        v87 = v152;
        if (v108 == *v109)
        {
          v133 = v143;
          sub_1AFD53C4C(v143, &unk_1ED728DE0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptCompileAttempt);
          sub_1AFD53F80(v93, v133, &unk_1ED728DE0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptCompileAttempt);
        }

        else
        {
          sub_1AFD53C4C(v153, &unk_1ED728DE0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptCompileAttempt);
        }
      }

      v94 = v156;
      *v158 = 1;
      v86 = v161;
      goto LABEL_45;
    }

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v174);
    (*v154)(v87, 1, 1, v197);
    v95 = sub_1AFD54504;
    v96 = v87;
    goto LABEL_44;
  }

  v34 = a1[13];
  v35 = v161;
  v37 = v154;
  v36 = v155;
  v138 = v34;
  if (v34)
  {
    v38 = type metadata accessor for SimpleScript(0);
    v149 = 0;
    v139 = v38;
    v39 = *(v38 - 8);
    v159 = a2 + 32;
    v136 = *(v39 + 72);
    v40 = (v26 + 56);
    v152 = (v12 + 56);
    v135 = *(v12 + 72);
    v153 = (v26 + 56);
    while (1)
    {
      v41 = v156;
      v160 = *(a2 + 16);
      if (v160)
      {
        break;
      }

LABEL_4:
      ++v149;
      a2 = v142;
      if (v149 == v138)
      {
        return;
      }
    }

    v42 = 0;
    v43 = *(v137 + 8 * v149);
    v44 = &v141[v136 * v149];
    v143 = &v140[v135 * v149];
    v144 = v43;
    while (1)
    {
      sub_1AF85ABE8(v159 + 48 * v42, v175);
      if (v176)
      {
        break;
      }

      sub_1AF616568(v175, v174);
      sub_1AF441194(v174, &v162);
      sub_1AF5C5358(0, &qword_1ED72FFF0, &protocol descriptor for EntityComponent);
      if ((swift_dynamicCast() & 1) == 0)
      {
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v174);
        (*v40)(v41, 1, 1, v35);
        v45 = sub_1AFD54594;
        v46 = v41;
LABEL_8:
        sub_1AFD53198(v46, v45);
        goto LABEL_9;
      }

      (*v40)(v41, 0, 1, v35);
      sub_1AFD53F80(v41, v157, &unk_1ED72C4D0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptRuntime);
      sub_1AFDFF308();
      sub_1AFDFD038();
      sub_1AFDFD038();

      v60 = *(v44 + 24);
      MEMORY[0x1B271ACB0](*(v60 + 16));
      v61 = *(v60 + 16);
      if (v61)
      {
        v62 = v60 + 40;
        do
        {

          sub_1AFDFD038();

          v62 += 16;
          --v61;
        }

        while (v61);
      }

      MEMORY[0x1B271ACB0](qword_1AFEAB0B8[*(v44 + 56)]);
      v63 = *v44;
      MEMORY[0x1B271ACB0](*(*v44 + 16));
      v64 = *(v63 + 16);
      if (v64)
      {
        v65 = (v63 + 48);
        do
        {
          v66 = *(v65 - 2);
          v67 = *v65;
          v65 += 5;
          sub_1AFDFF308();
          sub_1AF443EE0(v66);
          sub_1AF444224(v67);
          v69 = sub_1AFAA02E0(v66, v68);
          MEMORY[0x1B271ACB0](v69);
          v184 = v171;
          v185 = v172;
          v186 = v173;
          v182 = v169;
          v183 = v170;
          v70 = sub_1AFDFF2E8();
          MEMORY[0x1B271ACB0](v70);
          sub_1AF443F24(v66);
          sub_1AF444AF4(v67);
          --v64;
        }

        while (v64);
      }

      v179 = v164;
      v180 = v165;
      v181 = v166;
      v177 = v162;
      v178 = v163;
      v71 = sub_1AFDFF2E8();
      v72 = v157;
      v73 = &v157[*(v197 + 36)];
      v74 = v151;
      if ((v73[8] & 1) == 0 && v71 == *v73)
      {
        v75 = v150;
        os_unfair_lock_lock(*(v150 + 72));
        sub_1AFD53D18(v72, v74, &unk_1ED728DE0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptCompileAttempt);
        sub_1AFD54864(v44, v74, type metadata accessor for SimpleScript);
        v76 = *v44;
        v77 = v145;
        v78 = *(v145 + 16);

        if (*(v77 + 184))
        {
          goto LABEL_74;
        }

        v79 = *(*(v77 + 168) + 4 * v144);
        v147 = *(*(v78 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v79 + 8);
        v148 = v79;

        *(&v163 + 1) = v197;
        v80 = sub_1AF585714(&v162);
        v146 = type metadata accessor for SimpleScript;
        sub_1AFD53D18(v74, v80, &unk_1ED728DE0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptCompileAttempt);
        v81 = *&v157[v161[10]];
        *&v164 = *&v157[v161[9]];
        *(&v164 + 1) = v81;
        *&v165 = *&v157[v161[11]];
        sub_1AFD55360(0, &qword_1EB644420, &type metadata for BasicScriptRuntime, MEMORY[0x1E69E6720]);
        v167 = v82;
        *(&v165 + 1) = v76;
        v166 = 0;
        v168 = 1;
        v83 = v148 | (v147 << 32);
        v72 = v157;

        sub_1AF825824(&v162, v139, v83);
        sub_1AFD53C4C(v151, &unk_1ED728DE0, v146, &off_1ED72CD00, type metadata accessor for ScriptCompileAttempt);
        os_unfair_lock_unlock(*(v75 + 72));
      }

      sub_1AFD53C4C(v72, &unk_1ED72C4D0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptRuntime);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v174);
      *v158 = 1;
      v35 = v161;
      v37 = v154;
      v36 = v155;
      v41 = v156;
      v40 = v153;
LABEL_9:
      if (++v42 == v160)
      {
        goto LABEL_4;
      }
    }

    sub_1AF616568(v175, v174);
    sub_1AF441194(v174, &v162);
    sub_1AF5C5358(0, &qword_1ED72FFF0, &protocol descriptor for EntityComponent);
    if (swift_dynamicCast())
    {
      (*v152)(v36, 0, 1, v197);
      sub_1AFD53F80(v36, v37, &unk_1ED728DE0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptCompileAttempt);
      sub_1AFDFF308();
      sub_1AFDFD038();
      sub_1AFDFD038();

      v47 = *(v44 + 24);
      MEMORY[0x1B271ACB0](*(v47 + 16));
      v48 = *(v47 + 16);
      if (v48)
      {
        v49 = v47 + 40;
        do
        {

          sub_1AFDFD038();

          v49 += 16;
          --v48;
        }

        while (v48);
      }

      MEMORY[0x1B271ACB0](qword_1AFEAB0B8[*(v44 + 56)]);
      v50 = *v44;
      MEMORY[0x1B271ACB0](*(*v44 + 16));
      v51 = *(v50 + 16);
      if (v51)
      {
        v52 = (v50 + 48);
        do
        {
          v53 = *(v52 - 2);
          v54 = *v52;
          v52 += 5;
          sub_1AFDFF308();
          sub_1AF443EE0(v53);
          sub_1AF444224(v54);
          v56 = sub_1AFAA02E0(v53, v55);
          MEMORY[0x1B271ACB0](v56);
          v194 = v171;
          v195 = v172;
          v196 = v173;
          v192 = v169;
          v193 = v170;
          v57 = sub_1AFDFF2E8();
          MEMORY[0x1B271ACB0](v57);
          sub_1AF443F24(v53);
          sub_1AF444AF4(v54);
          --v51;
        }

        while (v51);
      }

      v189 = v164;
      v190 = v165;
      v191 = v166;
      v187 = v162;
      v188 = v163;
      v58 = sub_1AFDFF2E8();
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v174);
      v37 = v154;
      v59 = &v154[*(v197 + 36)];
      if (v59[8])
      {
        sub_1AFD53C4C(v154, &unk_1ED728DE0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptCompileAttempt);
        v36 = v155;
        v41 = v156;
      }

      else
      {
        v41 = v156;
        if (v58 == *v59)
        {
          v84 = v143;
          sub_1AFD53C4C(v143, &unk_1ED728DE0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptCompileAttempt);
          sub_1AFD53F80(v37, v84, &unk_1ED728DE0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptCompileAttempt);
        }

        else
        {
          sub_1AFD53C4C(v154, &unk_1ED728DE0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptCompileAttempt);
        }

        v36 = v155;
      }

      v40 = v153;
      *v158 = 1;
      v35 = v161;
      goto LABEL_9;
    }

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v174);
    (*v152)(v36, 1, 1, v197);
    v45 = sub_1AFD54504;
    v46 = v36;
    goto LABEL_8;
  }
}

void sub_1AFD2EFAC(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v131 = a4;
  v123 = a3;
  sub_1AFD54474(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v113 = &v106 - v10;
  sub_1AFD53F14(0, &unk_1ED728E20, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptCompileAttempt);
  v155 = v11;
  v109 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v106 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v122 = (&v106 - v18);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v128 = &v106 - v21;
  sub_1AF87549C(0, v20);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v121 = (&v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24);
  v130 = &v106 - v25;
  sub_1AFD53F14(0, &unk_1ED72C510, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptRuntime);
  v134 = v26;
  v27 = *(v26 - 1);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v106 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v127 = &v106 - v31;
  v32 = a1[1];
  v33 = v133;
  v112 = sub_1AF706D00(v32, a1);
  v118 = v32;
  v111 = sub_1AF7069F4(v32, a1);
  v106 = v33;
  v34 = a1[11];
  v114 = a2;
  v108 = v34;
  if (!v34)
  {
    v127 = v29;
    v128 = v16;
    v120 = v13;
    v130 = (a2 + 32);
    v73 = a1[6];
    v110 = a1[7];
    v125 = (v109 + 56);
    v126 = (v27 + 56);
    v74 = v155;
    v75 = v134;
    v129 = v8;
    v76 = v121;
    do
    {
LABEL_31:
      if (v73 == v110)
      {
        return;
      }

      v77 = v73++;
      v124 = type metadata accessor for MetalFunctionScript(0);
      v78 = *(v124 - 8);
      v132 = *(a2 + 16);
    }

    while (!v132);
    v113 = v73;
    v79 = 0;
    v133 = &v112[*(v78 + 72) * v77];
    v115 = &v111[*(v109 + 72) * v77];
    v116 = v77;
    v80 = v124;
    while (1)
    {
      sub_1AF85ABE8(&v130[48 * v79], v143);
      if (v144)
      {
        sub_1AF616568(v143, v142);
        sub_1AF441194(v142, &v135);
        sub_1AF5C5358(0, &qword_1ED72FFF0, &protocol descriptor for EntityComponent);
        if ((swift_dynamicCast() & 1) == 0)
        {
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v142);
          (*v125)(v8, 1, 1, v74);
          sub_1AFD53198(v8, sub_1AFD54474);
          goto LABEL_36;
        }

        (*v125)(v8, 0, 1, v74);
        sub_1AFD53F80(v8, v128, &unk_1ED728E20, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptCompileAttempt);
        sub_1AFDFF308();
        v81 = v133;
        sub_1AFDFD038();
        v82 = *(v81 + *(v80 + 32));
        MEMORY[0x1B271ACB0](*(v82 + 16));
        v83 = *(v82 + 16);
        if (v83)
        {
          v84 = v82 + 40;
          do
          {

            sub_1AFDFD038();

            v84 += 16;
            --v83;
          }

          while (v83);
        }

        sub_1AFDFD038();

        v152 = v137;
        v153 = v138;
        v154 = v139;
        v150 = v135;
        v151 = v136;
        v85 = sub_1AFDFF2E8();
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v142);
        v74 = v155;
        v8 = v129;
        v86 = &v128[*(v155 + 36)];
        if ((v86[8] & 1) != 0 || v85 != *v86)
        {
          sub_1AFD53C4C(v128, &unk_1ED728E20, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptCompileAttempt);
        }

        else
        {
          v87 = v128;
          v88 = v115;
          sub_1AFD53C4C(v115, &unk_1ED728E20, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptCompileAttempt);
          v89 = v87;
          v80 = v124;
          v76 = v121;
          v74 = v155;
          sub_1AFD53F80(v89, v88, &unk_1ED728E20, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptCompileAttempt);
        }
      }

      else
      {
        sub_1AF616568(v143, v142);
        sub_1AF441194(v142, &v135);
        sub_1AF5C5358(0, &qword_1ED72FFF0, &protocol descriptor for EntityComponent);
        if ((swift_dynamicCast() & 1) == 0)
        {
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v142);
          (*v126)(v76, 1, 1, v75);
          sub_1AFD53198(v76, sub_1AF87549C);
          goto LABEL_36;
        }

        (*v126)(v76, 0, 1, v75);
        sub_1AFD53F80(v76, v127, &unk_1ED72C510, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptRuntime);
        sub_1AFDFF308();
        v90 = v133;
        sub_1AFDFD038();
        v91 = *(v90 + *(v80 + 32));
        MEMORY[0x1B271ACB0](*(v91 + 16));
        v92 = *(v91 + 16);
        if (v92)
        {
          v93 = v91 + 40;
          do
          {

            sub_1AFDFD038();

            v93 += 16;
            --v92;
          }

          while (v92);
        }

        sub_1AFDFD038();

        v147 = v137;
        v148 = v138;
        v149 = v139;
        v145 = v135;
        v146 = v136;
        v94 = sub_1AFDFF2E8();
        v74 = v155;
        v95 = v127;
        v96 = &v127[*(v155 + 36)];
        v8 = v129;
        if ((v96[8] & 1) == 0 && v94 == *v96)
        {
          v97 = v123;
          os_unfair_lock_lock(*(v123 + 72));
          v98 = v120;
          sub_1AFD53D18(v95, v120, &unk_1ED728E20, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptCompileAttempt);
          sub_1AFD54864(v133, v98, type metadata accessor for MetalFunctionScript);
          v99 = v118;

          v101 = v134;
          if (*(v99 + 184))
          {
LABEL_57:
            sub_1AFDFE518();
            __break(1u);
            return;
          }

          v119 = *(*(v99 + 168) + 4 * v116);
          v117 = *(*(v100 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v119 + 8);

          *(&v136 + 1) = v74;
          v102 = sub_1AF585714(&v135);
          v122 = type metadata accessor for MetalFunctionScript;
          sub_1AFD53D18(v98, v102, &unk_1ED728E20, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptCompileAttempt);
          v103 = *(v95 + v101[10]);
          *&v137 = *(v95 + v101[9]);
          *(&v137 + 1) = v103;
          *&v138 = *(v95 + v101[11]);
          sub_1AFD55360(0, &qword_1EB644410, &type metadata for CodableVoid, MEMORY[0x1E69E6720]);
          v140 = v104;
          BYTE8(v138) = 0;
          v141 = 1;
          v105 = v119 | (v117 << 32);

          v80 = v124;
          sub_1AF825824(&v135, v124, v105);
          v74 = v155;
          sub_1AFD53C4C(v120, &unk_1ED728E20, v122, &off_1ED729C40, type metadata accessor for ScriptCompileAttempt);
          os_unfair_lock_unlock(*(v97 + 72));
          v8 = v129;
          v76 = v121;
        }

        sub_1AFD53C4C(v95, &unk_1ED72C510, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptRuntime);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v142);
      }

      *v131 = 1;
      v75 = v134;
LABEL_36:
      if (++v79 == v132)
      {
        v73 = v113;
        a2 = v114;
        goto LABEL_31;
      }
    }
  }

  v35 = a1[13];
  v36 = v155;
  v37 = v134;
  v38 = v113;
  v110 = v35;
  if (v35)
  {
    v39 = type metadata accessor for MetalFunctionScript(0);
    v124 = 0;
    v129 = v39;
    v40 = *(v39 - 8);
    v132 = a2 + 32;
    v107 = *(v40 + 72);
    v125 = (v109 + 56);
    v126 = (v27 + 56);
    v109 = *(v109 + 72);
    while (1)
    {
      v41 = *(a2 + 16);
      v42 = v130;
      v133 = v41;
      if (v41)
      {
        break;
      }

LABEL_4:
      ++v124;
      a2 = v114;
      if (v124 == v110)
      {
        return;
      }
    }

    v43 = 0;
    v44 = *(v108 + 8 * v124);
    v45 = &v112[v107 * v124];
    v116 = &v111[v109 * v124];
    v117 = v44;
    v115 = v45;
    while (1)
    {
      sub_1AF85ABE8(v132 + 48 * v43, v143);
      if (v144)
      {
        sub_1AF616568(v143, v142);
        sub_1AF441194(v142, &v135);
        sub_1AF5C5358(0, &qword_1ED72FFF0, &protocol descriptor for EntityComponent);
        if ((swift_dynamicCast() & 1) == 0)
        {
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v142);
          (*v125)(v38, 1, 1, v36);
          sub_1AFD53198(v38, sub_1AFD54474);
          goto LABEL_9;
        }

        (*v125)(v38, 0, 1, v36);
        sub_1AFD53F80(v38, v128, &unk_1ED728E20, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptCompileAttempt);
        sub_1AFDFF308();
        sub_1AFDFD038();
        v46 = *(v45 + *(v129 + 8));
        MEMORY[0x1B271ACB0](*(v46 + 16));
        v47 = *(v46 + 16);
        if (v47)
        {
          v48 = v46 + 40;
          do
          {

            sub_1AFDFD038();

            v48 += 16;
            --v47;
          }

          while (v47);
        }

        sub_1AFDFD038();

        v152 = v137;
        v153 = v138;
        v154 = v139;
        v150 = v135;
        v151 = v136;
        v49 = sub_1AFDFF2E8();
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v142);
        v36 = v155;
        v50 = &v128[*(v155 + 36)];
        v42 = v130;
        if ((v50[8] & 1) != 0 || v49 != *v50)
        {
          sub_1AFD53C4C(v128, &unk_1ED728E20, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptCompileAttempt);
        }

        else
        {
          v51 = v128;
          v52 = v38;
          v53 = v116;
          sub_1AFD53C4C(v116, &unk_1ED728E20, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptCompileAttempt);
          v54 = v51;
          v42 = v130;
          v55 = v53;
          v38 = v52;
          v45 = v115;
          v36 = v155;
          sub_1AFD53F80(v54, v55, &unk_1ED728E20, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptCompileAttempt);
        }
      }

      else
      {
        sub_1AF616568(v143, v142);
        sub_1AF441194(v142, &v135);
        sub_1AF5C5358(0, &qword_1ED72FFF0, &protocol descriptor for EntityComponent);
        if ((swift_dynamicCast() & 1) == 0)
        {
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v142);
          (*v126)(v42, 1, 1, v37);
          sub_1AFD53198(v42, sub_1AF87549C);
          goto LABEL_9;
        }

        (*v126)(v42, 0, 1, v37);
        sub_1AFD53F80(v42, v127, &unk_1ED72C510, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptRuntime);
        sub_1AFDFF308();
        sub_1AFDFD038();
        v56 = *(v45 + *(v129 + 8));
        MEMORY[0x1B271ACB0](*(v56 + 16));
        v57 = *(v56 + 16);
        if (v57)
        {
          v58 = v56 + 40;
          do
          {

            sub_1AFDFD038();

            v58 += 16;
            --v57;
          }

          while (v57);
        }

        sub_1AFDFD038();

        v147 = v137;
        v148 = v138;
        v149 = v139;
        v145 = v135;
        v146 = v136;
        v59 = sub_1AFDFF2E8();
        v36 = v155;
        v60 = v127;
        v61 = &v127[*(v155 + 36)];
        v42 = v130;
        if ((v61[8] & 1) == 0 && v59 == *v61)
        {
          os_unfair_lock_lock(*(v123 + 72));
          v62 = v122;
          sub_1AFD53D18(v60, v122, &unk_1ED728E20, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptCompileAttempt);
          sub_1AFD54864(v45, v62, type metadata accessor for MetalFunctionScript);
          v63 = v118;

          v65 = v60;
          v66 = v134;
          if (*(v63 + 184))
          {
            goto LABEL_57;
          }

          v67 = *(*(v63 + 168) + 4 * v117);
          v119 = *(*(v64 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v67 + 8);
          v120 = v67;

          *(&v136 + 1) = v36;
          v68 = sub_1AF585714(&v135);
          v121 = type metadata accessor for MetalFunctionScript;
          sub_1AFD53D18(v62, v68, &unk_1ED728E20, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptCompileAttempt);
          v69 = *(v65 + v66[10]);
          *&v137 = *(v65 + v66[9]);
          *(&v137 + 1) = v69;
          *&v138 = *(v65 + v66[11]);
          sub_1AFD55360(0, &qword_1EB644410, &type metadata for CodableVoid, MEMORY[0x1E69E6720]);
          v140 = v70;
          BYTE8(v138) = 0;
          v141 = 1;
          v71 = v120 | (v119 << 32);

          v72 = v123;
          sub_1AF825824(&v135, v129, v71);
          v36 = v155;
          sub_1AFD53C4C(v122, &unk_1ED728E20, v121, &off_1ED729C40, type metadata accessor for ScriptCompileAttempt);
          os_unfair_lock_unlock(*(v72 + 72));
          v38 = v113;
          v42 = v130;
          v60 = v65;
        }

        sub_1AFD53C4C(v60, &unk_1ED72C510, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptRuntime);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v142);
      }

      *v131 = 1;
      v37 = v134;
LABEL_9:
      if (++v43 == v133)
      {
        goto LABEL_4;
      }
    }
  }
}

void sub_1AFD3044C(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v130 = a4;
  v122 = a3;
  sub_1AFD54354(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v127 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v128 = &v103 - v9;
  sub_1AFD53F14(0, &unk_1ED728DF0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptCompileAttempt);
  v11 = v10;
  v107 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v103 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v119 = &v103 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v126 = &v103 - v20;
  sub_1AFD543E4(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v121 = &v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v120 = &v103 - v24;
  sub_1AFD53F14(0, &unk_1ED72C4E0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptRuntime);
  v131 = v25;
  v26 = *(v25 - 1);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v103 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v129 = &v103 - v30;
  v31 = a1[1];
  v32 = v133;
  v110 = sub_1AF705FA0(v31, a1);
  v114 = v31;
  v109 = sub_1AF706938(v31, a1);
  v33 = a1[11];
  v111 = a2;
  v154 = v11;
  v106 = v33;
  v123 = v32;
  if (!v33)
  {
    v128 = v28;
    v118 = v13;
    v132 = a2 + 32;
    v68 = a1[6];
    v108 = a1[7];
    v125 = (v26 + 56);
    v126 = v16;
    v124 = (v107 + 56);
    v69 = v131;
    v70 = v127;
    v71 = v121;
    while (1)
    {
      do
      {
        if (v68 == v108)
        {
          return;
        }

        v72 = v68++;
        v129 = type metadata accessor for ShaderScript(0);
        v73 = *(v129 - 8);
        v133 = *(a2 + 16);
      }

      while (!v133);
      v74 = 0;
      v75 = v72;
      v76 = &v110[*(v73 + 72) * v72];
      v77 = *(v107 + 72);
      v115 = v75;
      v112 = v68;
      v113 = &v109[v77 * v75];
      do
      {
        sub_1AF85ABE8(v132 + 48 * v74, v142);
        if (v143)
        {
          sub_1AF616568(v142, v141);
          sub_1AF441194(v141, &v134);
          sub_1AF5C5358(0, &qword_1ED72FFF0, &protocol descriptor for EntityComponent);
          if ((swift_dynamicCast() & 1) == 0)
          {
            _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v141);
            (*v124)(v70, 1, 1, v154);
            v78 = sub_1AFD54354;
            v79 = v70;
            goto LABEL_39;
          }

          (*v124)(v70, 0, 1, v154);
          sub_1AFD53F80(v70, v126, &unk_1ED728DF0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptCompileAttempt);
          sub_1AFDFF308();
          sub_1AFDFD038();
          v80 = *(v76 + *(v129 + 32));
          MEMORY[0x1B271ACB0](*(v80 + 16));
          v81 = *(v80 + 16);
          if (v81)
          {
            v82 = v80 + 40;
            do
            {

              sub_1AFDFD038();

              v82 += 16;
              --v81;
            }

            while (v81);
          }

          sub_1AFDFD038();

          v151 = v136;
          v152 = v137;
          v153 = v138;
          v149 = v134;
          v150 = v135;
          v83 = sub_1AFDFF2E8();
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v141);
          v70 = v127;
          v84 = &v126[*(v154 + 36)];
          if ((v84[8] & 1) != 0 || v83 != *v84)
          {
            sub_1AFD53C4C(v126, &unk_1ED728DF0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptCompileAttempt);
          }

          else
          {
            v85 = v126;
            v86 = v76;
            v87 = v113;
            sub_1AFD53C4C(v113, &unk_1ED728DF0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptCompileAttempt);
            v88 = v85;
            v71 = v121;
            v89 = v87;
            v76 = v86;
            sub_1AFD53F80(v88, v89, &unk_1ED728DF0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptCompileAttempt);
          }

          v69 = v131;
          *v130 = 1;
        }

        else
        {
          sub_1AF616568(v142, v141);
          sub_1AF441194(v141, &v134);
          sub_1AF5C5358(0, &qword_1ED72FFF0, &protocol descriptor for EntityComponent);
          if ((swift_dynamicCast() & 1) == 0)
          {
            _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v141);
            (*v125)(v71, 1, 1, v69);
            v78 = sub_1AFD543E4;
            v79 = v71;
LABEL_39:
            sub_1AFD53198(v79, v78);
            goto LABEL_40;
          }

          (*v125)(v71, 0, 1, v69);
          sub_1AFD53F80(v71, v128, &unk_1ED72C4E0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptRuntime);
          sub_1AFDFF308();
          sub_1AFDFD038();
          v90 = *(v76 + *(v129 + 32));
          MEMORY[0x1B271ACB0](*(v90 + 16));
          v91 = *(v90 + 16);
          if (v91)
          {
            v92 = v90 + 40;
            do
            {

              sub_1AFDFD038();

              v92 += 16;
              --v91;
            }

            while (v91);
          }

          sub_1AFDFD038();

          v146 = v136;
          v147 = v137;
          v148 = v138;
          v144 = v134;
          v145 = v135;
          v93 = sub_1AFDFF2E8();
          v70 = v127;
          v94 = v128;
          v95 = &v128[*(v154 + 36)];
          if ((v95[8] & 1) != 0 || v93 != *v95)
          {
            v69 = v131;
          }

          else
          {
            os_unfair_lock_lock(*(v122 + 72));
            v96 = v118;
            sub_1AFD53D18(v94, v118, &unk_1ED728DF0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptCompileAttempt);
            sub_1AFD54864(v76, v96, type metadata accessor for ShaderScript);
            v97 = v123;
            sub_1AFAAADB4(0, 1uLL, &v134);
            if (v97)
            {

              v119 = 0;
              v120 = 0;
              v123 = 0;
            }

            else
            {
              v123 = 0;
              v119 = v137;
              v120 = *(&v136 + 1);
            }

            v117 = sub_1AF6496EC(v115);

            *(&v135 + 1) = v154;
            v98 = sub_1AF585714(&v134);
            v116 = type metadata accessor for ShaderScript;
            sub_1AFD53D18(v96, v98, &unk_1ED728DF0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptCompileAttempt);
            v99 = v131;
            v94 = v128;
            v100 = *&v128[v131[10]];
            *&v136 = *&v128[v131[9]];
            *(&v136 + 1) = v100;
            *&v137 = *&v128[v131[11]];
            sub_1AFD55360(0, &qword_1EB644440, &type metadata for ShaderScriptRuntime, MEMORY[0x1E69E6720]);
            v139 = v101;
            *(&v137 + 1) = v120;
            v138 = v119;
            v140 = 1;

            v102 = v122;
            sub_1AF825824(&v134, v129, v117);
            v69 = v99;
            sub_1AFD53C4C(v118, &unk_1ED728DF0, v116, &off_1ED72CE68, type metadata accessor for ScriptCompileAttempt);
            os_unfair_lock_unlock(*(v102 + 72));
            v70 = v127;
            v71 = v121;
          }

          sub_1AFD53C4C(v94, &unk_1ED72C4E0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptRuntime);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v141);
          *v130 = 1;
        }

LABEL_40:
        v74 = v74 + 1;
      }

      while (v74 != v133);
      a2 = v111;
      v68 = v112;
    }
  }

  v34 = v107;
  v108 = a1[13];
  if (v108)
  {
    v35 = type metadata accessor for ShaderScript(0);
    v121 = 0;
    v127 = v35;
    v36 = *(v35 - 8);
    v132 = a2 + 32;
    v105 = *(v36 + 72);
    v104 = *(v34 + 72);
    v124 = (v34 + 56);
    v125 = (v26 + 56);
    v37 = v131;
    v38 = v128;
    v39 = v120;
    while (1)
    {
      v133 = *(a2 + 16);
      if (v133)
      {
        break;
      }

LABEL_4:
      ++v121;
      a2 = v111;
      if (v121 == v108)
      {
        return;
      }
    }

    v40 = 0;
    v41 = *(v106 + 8 * v121);
    v42 = &v110[v105 * v121];
    v112 = &v109[v104 * v121];
    v113 = v41;
    while (1)
    {
      sub_1AF85ABE8(v132 + 48 * v40, v142);
      if (v143)
      {
        sub_1AF616568(v142, v141);
        sub_1AF441194(v141, &v134);
        sub_1AF5C5358(0, &qword_1ED72FFF0, &protocol descriptor for EntityComponent);
        if (swift_dynamicCast())
        {
          (*v124)(v38, 0, 1, v154);
          sub_1AFD53F80(v38, v126, &unk_1ED728DF0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptCompileAttempt);
          sub_1AFDFF308();
          sub_1AFDFD038();
          v45 = *(v42 + *(v127 + 32));
          MEMORY[0x1B271ACB0](*(v45 + 16));
          v46 = *(v45 + 16);
          if (v46)
          {
            v47 = v45 + 40;
            do
            {

              sub_1AFDFD038();

              v47 += 16;
              --v46;
            }

            while (v46);
          }

          sub_1AFDFD038();

          v151 = v136;
          v152 = v137;
          v153 = v138;
          v149 = v134;
          v150 = v135;
          v48 = sub_1AFDFF2E8();
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v141);
          v49 = &v126[*(v154 + 36)];
          v38 = v128;
          if ((v49[8] & 1) != 0 || v48 != *v49)
          {
            sub_1AFD53C4C(v126, &unk_1ED728DF0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptCompileAttempt);
          }

          else
          {
            v50 = v126;
            v51 = v42;
            v52 = v112;
            sub_1AFD53C4C(v112, &unk_1ED728DF0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptCompileAttempt);
            v53 = v50;
            v39 = v120;
            v54 = v52;
            v42 = v51;
            sub_1AFD53F80(v53, v54, &unk_1ED728DF0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptCompileAttempt);
          }

          v37 = v131;
          *v130 = 1;
          goto LABEL_9;
        }

        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v141);
        (*v124)(v38, 1, 1, v154);
        v43 = sub_1AFD54354;
        v44 = v38;
      }

      else
      {
        sub_1AF616568(v142, v141);
        sub_1AF441194(v141, &v134);
        sub_1AF5C5358(0, &qword_1ED72FFF0, &protocol descriptor for EntityComponent);
        if (swift_dynamicCast())
        {
          (*v125)(v39, 0, 1, v37);
          sub_1AFD53F80(v39, v129, &unk_1ED72C4E0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptRuntime);
          sub_1AFDFF308();
          sub_1AFDFD038();
          v55 = *(v42 + *(v127 + 32));
          MEMORY[0x1B271ACB0](*(v55 + 16));
          v56 = *(v55 + 16);
          if (v56)
          {
            v57 = v55 + 40;
            do
            {

              sub_1AFDFD038();

              v57 += 16;
              --v56;
            }

            while (v56);
          }

          sub_1AFDFD038();

          v146 = v136;
          v147 = v137;
          v148 = v138;
          v144 = v134;
          v145 = v135;
          v58 = sub_1AFDFF2E8();
          v38 = v128;
          v59 = v129 + *(v154 + 36);
          if ((*(v59 + 8) & 1) != 0 || v58 != *v59)
          {
            v37 = v131;
          }

          else
          {
            os_unfair_lock_lock(*(v122 + 72));
            v60 = v119;
            sub_1AFD53D18(v129, v119, &unk_1ED728DF0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptCompileAttempt);
            sub_1AFD54864(v42, v60, type metadata accessor for ShaderScript);
            v61 = v123;
            sub_1AFAAADB4(0, 1uLL, &v134);
            if (v61)
            {

              v117 = 0;
              v118 = 0;
              v123 = 0;
            }

            else
            {
              v123 = 0;
              v117 = v137;
              v118 = *(&v136 + 1);
            }

            v116 = sub_1AF6496EC(v113);

            *(&v135 + 1) = v154;
            v62 = sub_1AF585714(&v134);
            v115 = type metadata accessor for ShaderScript;
            v63 = v119;
            sub_1AFD53D18(v119, v62, &unk_1ED728DF0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptCompileAttempt);
            v64 = v131;
            v65 = *(v129 + v131[10]);
            *&v136 = *(v129 + v131[9]);
            *(&v136 + 1) = v65;
            *&v137 = *(v129 + v131[11]);
            sub_1AFD55360(0, &qword_1EB644440, &type metadata for ShaderScriptRuntime, MEMORY[0x1E69E6720]);
            v139 = v66;
            *(&v137 + 1) = v118;
            v138 = v117;
            v140 = 1;

            v67 = v122;
            sub_1AF825824(&v134, v127, v116);
            v37 = v64;
            sub_1AFD53C4C(v63, &unk_1ED728DF0, v115, &off_1ED72CE68, type metadata accessor for ScriptCompileAttempt);
            os_unfair_lock_unlock(*(v67 + 72));
            v38 = v128;
            v39 = v120;
          }

          sub_1AFD53C4C(v129, &unk_1ED72C4E0, type metadata accessor for ShaderScript, &off_1ED72CE68, type metadata accessor for ScriptRuntime);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v141);
          *v130 = 1;
          goto LABEL_9;
        }

        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v141);
        (*v125)(v39, 1, 1, v37);
        v43 = sub_1AFD543E4;
        v44 = v39;
      }

      sub_1AFD53198(v44, v43);
LABEL_9:
      if (++v40 == v133)
      {
        goto LABEL_4;
      }
    }
  }
}

void sub_1AFD31938(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v132 = a4;
  v125 = a3;
  sub_1AFD54234(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v128 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v124 = &v105 - v9;
  sub_1AFD53F14(0, qword_1ED728E30, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptCompileAttempt);
  v147 = v10;
  v110 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v122 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v105 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v123 = &v105 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v127 = &v105 - v18;
  sub_1AFD542C4(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v105 - v23;
  sub_1AFD53F14(0, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptRuntime);
  v26 = v25;
  v27 = *(v25 - 1);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v105 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v134 = &v105 - v31;
  v32 = a1[1];
  v33 = v131;
  v114 = sub_1AF706C98(v32, a1);
  v113 = sub_1AF7067C0(v32, a1);
  v126 = v33;
  v34 = a1[11];
  v117 = a2;
  v133 = v26;
  v118 = v32;
  v109 = v34;
  if (!v34)
  {
    v124 = v14;
    v69 = a1[6];
    v111 = a1[7];
    v109 = a2 + 32;
    v131 = (v27 + 56);
    v130 = (v110 + 56);
    v70 = v132;
    v71 = v128;
    v129 = v29;
    v72 = v21;
    v127 = v21;
    do
    {
LABEL_31:
      if (v69 == v111)
      {
        return;
      }

      v73 = v69++;
      inited = type metadata accessor for ParticleInitScript(0);
      v74 = *(inited - 8);
      v75 = *(v117 + 16);
    }

    while (!v75);
    v112 = v69;
    v134 = &v114[*(v74 + 72) * v73];
    v76 = *(v110 + 72);
    v116 = v73;
    v115 = &v113[v76 * v73];
    v77 = v109;
    while (1)
    {
      sub_1AF85ABE8(v77, &v145);
      if (v146)
      {
        break;
      }

      sub_1AF616568(&v145, &v144);
      sub_1AF441194(&v144, &v135);
      sub_1AF5C5358(0, &qword_1ED72FFF0, &protocol descriptor for EntityComponent);
      if ((swift_dynamicCast() & 1) == 0)
      {
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v144);
        (*v131)(v72, 1, 1, v26);
        v78 = sub_1AFD542C4;
        v79 = v72;
LABEL_35:
        sub_1AFD53198(v79, v78);
        goto LABEL_36;
      }

      (*v131)(v72, 0, 1, v26);
      sub_1AFD53F80(v72, v29, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptRuntime);
      v87 = sub_1AFAA2868(v86);
      v88 = &v29[*(v147 + 36)];
      if ((v88[8] & 1) == 0 && v87 == *v88)
      {
        os_unfair_lock_lock(*(v125 + 72));
        v89 = v122;
        sub_1AFD53D18(v29, v122, qword_1ED728E30, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptCompileAttempt);
        sub_1AFD54864(v134, v89, type metadata accessor for ParticleInitScript);
        v90 = v126;
        sub_1AFAA2CD8(0, 1uLL, &v135, v91);
        if (v90)
        {

          v123 = 0;
          v121 = 0;
          v126 = 0;
        }

        else
        {
          v126 = 0;
          v123 = v138;
          v121 = v139;
        }

        v95 = v118;

        if (*(v95 + 184))
        {
LABEL_57:
          sub_1AFDFE518();
          __break(1u);
          return;
        }

        v97 = *(*(v95 + 168) + 4 * v116);
        v120 = *(*(v96 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v97 + 8);

        v136 = v147;
        v98 = sub_1AF585714(&v135);
        v99 = v122;
        sub_1AFD53D18(v122, v98, qword_1ED728E30, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptCompileAttempt);
        v100 = *&v29[v26[9]];
        v101 = *&v129[v26[10]];
        v137 = v100;
        v138 = v101;
        v139 = *&v129[v26[11]];
        sub_1AFD55360(0, &qword_1EB644420, &type metadata for BasicScriptRuntime, MEMORY[0x1E69E6720]);
        v142 = v102;
        v140 = v123;
        v141 = v121;
        v143 = 1;
        v103 = v97 | (v120 << 32);

        v29 = v129;

        v26 = v133;

        v104 = v125;
        sub_1AF825824(&v135, inited, v103);
        sub_1AFD53C4C(v99, qword_1ED728E30, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptCompileAttempt);
        os_unfair_lock_unlock(*(v104 + 72));
        v70 = v132;
        v71 = v128;
        v72 = v127;
      }

      sub_1AFD53C4C(v29, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptRuntime);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v144);
      *v70 = 1;
LABEL_36:
      v77 += 48;
      if (!--v75)
      {
        v69 = v112;
        goto LABEL_31;
      }
    }

    sub_1AF616568(&v145, &v135);
    sub_1AF441194(&v135, &v144);
    sub_1AF5C5358(0, &qword_1ED72FFF0, &protocol descriptor for EntityComponent);
    if (swift_dynamicCast())
    {
      v80 = v147;
      (*v130)(v71, 0, 1, v147);
      v81 = v124;
      sub_1AFD53F80(v71, v124, qword_1ED728E30, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptCompileAttempt);
      v83 = sub_1AFAA2868(v82);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v135);
      v84 = v81 + *(v80 + 36);
      if (*(v84 + 8))
      {
        v85 = v81;
        goto LABEL_50;
      }

      if (v83 == *v84)
      {
        v92 = v26;
        v93 = v115;
        sub_1AFD53C4C(v115, qword_1ED728E30, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptCompileAttempt);
        v94 = v93;
        v26 = v92;
        sub_1AFD53F80(v81, v94, qword_1ED728E30, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptCompileAttempt);
      }

      else
      {
        v85 = v81;
LABEL_50:
        sub_1AFD53C4C(v85, qword_1ED728E30, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptCompileAttempt);
      }

      v71 = v128;
      v72 = v127;
      v70 = v132;
      *v132 = 1;
      v29 = v129;
      goto LABEL_36;
    }

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v135);
    (*v130)(v71, 1, 1, v147);
    v78 = sub_1AFD54234;
    v79 = v71;
    goto LABEL_35;
  }

  v35 = v110;
  v111 = a1[13];
  if (v111)
  {
    v36 = type metadata accessor for ParticleInitScript(0);
    v128 = 0;
    v112 = v36;
    v108 = *(*(v36 - 8) + 72);
    v107 = *(v35 + 72);
    v106 = a2 + 32;
    v130 = (v27 + 56);
    v129 = (v35 + 56);
    v37 = v132;
    v38 = v124;
    while (1)
    {
      v39 = *(a2 + 16);
      if (v39)
      {
        break;
      }

LABEL_4:
      ++v128;
      a2 = v117;
      if (v128 == v111)
      {
        return;
      }
    }

    v116 = *(v109 + 8 * v128);
    v131 = &v114[v108 * v128];
    v40 = v106;
    v115 = &v113[v107 * v128];
    while (1)
    {
      sub_1AF85ABE8(v40, &v145);
      if (v146)
      {
        break;
      }

      sub_1AF616568(&v145, &v144);
      sub_1AF441194(&v144, &v135);
      sub_1AF5C5358(0, &qword_1ED72FFF0, &protocol descriptor for EntityComponent);
      v49 = v133;
      if ((swift_dynamicCast() & 1) == 0)
      {
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v144);
        (*v130)(v24, 1, 1, v49);
        v41 = sub_1AFD542C4;
        v42 = v24;
LABEL_8:
        sub_1AFD53198(v42, v41);
        goto LABEL_9;
      }

      (*v130)(v24, 0, 1, v49);
      v50 = v134;
      sub_1AFD53F80(v24, v134, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptRuntime);
      v52 = sub_1AFAA2868(v51);
      v53 = v50 + *(v147 + 36);
      if ((*(v53 + 8) & 1) == 0 && v52 == *v53)
      {
        os_unfair_lock_lock(*(v125 + 72));
        v54 = v123;
        sub_1AFD53D18(v134, v123, qword_1ED728E30, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptCompileAttempt);
        sub_1AFD54864(v131, v54, type metadata accessor for ParticleInitScript);
        v55 = v126;
        sub_1AFAA2CD8(0, 1uLL, &v135, v56);
        if (v55)
        {

          v122 = 0;
          v121 = 0;
        }

        else
        {
          v122 = v138;
          v121 = v139;
        }

        v60 = v118;
        v126 = 0;

        if (*(v60 + 184))
        {
          goto LABEL_57;
        }

        v62 = *(*(v60 + 168) + 4 * v116);
        inited = *(*(v61 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v62 + 8);

        v136 = v147;
        v63 = sub_1AF585714(&v135);
        v120 = type metadata accessor for ParticleInitScript;
        v64 = v123;
        sub_1AFD53D18(v123, v63, qword_1ED728E30, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptCompileAttempt);
        v65 = *&v134[v133[10]];
        v137 = *&v134[v133[9]];
        v138 = v65;
        v139 = *&v134[v133[11]];
        sub_1AFD55360(0, &qword_1EB644420, &type metadata for BasicScriptRuntime, MEMORY[0x1E69E6720]);
        v142 = v66;
        v140 = v122;
        v141 = v121;
        v143 = 1;
        v67 = v62 | (inited << 32);

        v68 = v125;
        sub_1AF825824(&v135, v112, v67);
        sub_1AFD53C4C(v64, qword_1ED728E30, v120, &off_1ED72A368, type metadata accessor for ScriptCompileAttempt);
        os_unfair_lock_unlock(*(v68 + 72));
        v37 = v132;
        v38 = v124;
      }

      sub_1AFD53C4C(v134, qword_1ED72C520, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptRuntime);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v144);
      *v37 = 1;
LABEL_9:
      v40 += 48;
      if (!--v39)
      {
        goto LABEL_4;
      }
    }

    sub_1AF616568(&v145, &v135);
    sub_1AF441194(&v135, &v144);
    sub_1AF5C5358(0, &qword_1ED72FFF0, &protocol descriptor for EntityComponent);
    if (swift_dynamicCast())
    {
      v43 = v147;
      (*v129)(v38, 0, 1, v147);
      v44 = v127;
      sub_1AFD53F80(v38, v127, qword_1ED728E30, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptCompileAttempt);
      v46 = sub_1AFAA2868(v45);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v135);
      v47 = v44 + *(v43 + 36);
      if (*(v47 + 8))
      {
        v48 = v44;
        goto LABEL_23;
      }

      if (v46 == *v47)
      {
        v57 = v24;
        v58 = v115;
        sub_1AFD53C4C(v115, qword_1ED728E30, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptCompileAttempt);
        v59 = v58;
        v24 = v57;
        v38 = v124;
        sub_1AFD53F80(v44, v59, qword_1ED728E30, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptCompileAttempt);
      }

      else
      {
        v48 = v44;
LABEL_23:
        sub_1AFD53C4C(v48, qword_1ED728E30, type metadata accessor for ParticleInitScript, &off_1ED72A368, type metadata accessor for ScriptCompileAttempt);
      }

      v37 = v132;
      *v132 = 1;
      goto LABEL_9;
    }

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v135);
    (*v129)(v38, 1, 1, v147);
    v41 = sub_1AFD54234;
    v42 = v38;
    goto LABEL_8;
  }
}

void sub_1AFD32D1C(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v132 = a4;
  v125 = a3;
  sub_1AFD54114(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v128 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v124 = &v105 - v9;
  sub_1AFD53F14(0, &unk_1ED728E10, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptCompileAttempt);
  v147 = v10;
  v110 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v122 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v105 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v123 = &v105 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v127 = &v105 - v18;
  sub_1AFD541A4(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v105 - v23;
  sub_1AFD53F14(0, &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptRuntime);
  v26 = v25;
  v27 = *(v25 - 1);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v105 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v134 = &v105 - v31;
  v32 = a1[1];
  v33 = v131;
  v114 = sub_1AF706C64(v32, a1);
  v113 = sub_1AF706704(v32, a1);
  v126 = v33;
  v34 = a1[11];
  v117 = a2;
  v133 = v26;
  v118 = v32;
  v109 = v34;
  if (!v34)
  {
    v124 = v14;
    v69 = a1[6];
    v111 = a1[7];
    v109 = a2 + 32;
    v131 = (v27 + 56);
    v130 = (v110 + 56);
    v70 = v132;
    v71 = v128;
    v129 = v29;
    v72 = v21;
    v127 = v21;
    do
    {
LABEL_31:
      if (v69 == v111)
      {
        return;
      }

      v73 = v69++;
      updated = type metadata accessor for ParticleUpdateScript(0);
      v74 = *(updated - 8);
      v75 = *(v117 + 16);
    }

    while (!v75);
    v112 = v69;
    v134 = &v114[*(v74 + 72) * v73];
    v76 = *(v110 + 72);
    v116 = v73;
    v115 = &v113[v76 * v73];
    v77 = v109;
    while (1)
    {
      sub_1AF85ABE8(v77, &v145);
      if (v146)
      {
        break;
      }

      sub_1AF616568(&v145, &v144);
      sub_1AF441194(&v144, &v135);
      sub_1AF5C5358(0, &qword_1ED72FFF0, &protocol descriptor for EntityComponent);
      if ((swift_dynamicCast() & 1) == 0)
      {
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v144);
        (*v131)(v72, 1, 1, v26);
        v78 = sub_1AFD541A4;
        v79 = v72;
LABEL_35:
        sub_1AFD53198(v79, v78);
        goto LABEL_36;
      }

      (*v131)(v72, 0, 1, v26);
      sub_1AFD53F80(v72, v29, &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptRuntime);
      v87 = sub_1AFAA3818(v86);
      v88 = &v29[*(v147 + 36)];
      if ((v88[8] & 1) == 0 && v87 == *v88)
      {
        os_unfair_lock_lock(*(v125 + 72));
        v89 = v122;
        sub_1AFD53D18(v29, v122, &unk_1ED728E10, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptCompileAttempt);
        sub_1AFD54864(v134, v89, type metadata accessor for ParticleUpdateScript);
        v90 = v126;
        sub_1AFAA3C54(0, 1uLL, &v135, v91);
        if (v90)
        {

          v123 = 0;
          v121 = 0;
          v126 = 0;
        }

        else
        {
          v126 = 0;
          v123 = v138;
          v121 = v139;
        }

        v95 = v118;

        if (*(v95 + 184))
        {
LABEL_57:
          sub_1AFDFE518();
          __break(1u);
          return;
        }

        v97 = *(*(v95 + 168) + 4 * v116);
        v120 = *(*(v96 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v97 + 8);

        v136 = v147;
        v98 = sub_1AF585714(&v135);
        v99 = v122;
        sub_1AFD53D18(v122, v98, &unk_1ED728E10, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptCompileAttempt);
        v100 = *&v29[v26[9]];
        v101 = *&v129[v26[10]];
        v137 = v100;
        v138 = v101;
        v139 = *&v129[v26[11]];
        sub_1AFD55360(0, &qword_1EB644420, &type metadata for BasicScriptRuntime, MEMORY[0x1E69E6720]);
        v142 = v102;
        v140 = v123;
        v141 = v121;
        v143 = 1;
        v103 = v97 | (v120 << 32);

        v29 = v129;

        v26 = v133;

        v104 = v125;
        sub_1AF825824(&v135, updated, v103);
        sub_1AFD53C4C(v99, &unk_1ED728E10, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptCompileAttempt);
        os_unfair_lock_unlock(*(v104 + 72));
        v70 = v132;
        v71 = v128;
        v72 = v127;
      }

      sub_1AFD53C4C(v29, &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptRuntime);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v144);
      *v70 = 1;
LABEL_36:
      v77 += 48;
      if (!--v75)
      {
        v69 = v112;
        goto LABEL_31;
      }
    }

    sub_1AF616568(&v145, &v135);
    sub_1AF441194(&v135, &v144);
    sub_1AF5C5358(0, &qword_1ED72FFF0, &protocol descriptor for EntityComponent);
    if (swift_dynamicCast())
    {
      v80 = v147;
      (*v130)(v71, 0, 1, v147);
      v81 = v124;
      sub_1AFD53F80(v71, v124, &unk_1ED728E10, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptCompileAttempt);
      v83 = sub_1AFAA3818(v82);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v135);
      v84 = v81 + *(v80 + 36);
      if (*(v84 + 8))
      {
        v85 = v81;
        goto LABEL_50;
      }

      if (v83 == *v84)
      {
        v92 = v26;
        v93 = v115;
        sub_1AFD53C4C(v115, &unk_1ED728E10, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptCompileAttempt);
        v94 = v93;
        v26 = v92;
        sub_1AFD53F80(v81, v94, &unk_1ED728E10, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptCompileAttempt);
      }

      else
      {
        v85 = v81;
LABEL_50:
        sub_1AFD53C4C(v85, &unk_1ED728E10, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptCompileAttempt);
      }

      v71 = v128;
      v72 = v127;
      v70 = v132;
      *v132 = 1;
      v29 = v129;
      goto LABEL_36;
    }

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v135);
    (*v130)(v71, 1, 1, v147);
    v78 = sub_1AFD54114;
    v79 = v71;
    goto LABEL_35;
  }

  v35 = v110;
  v111 = a1[13];
  if (v111)
  {
    v36 = type metadata accessor for ParticleUpdateScript(0);
    v128 = 0;
    v112 = v36;
    v108 = *(*(v36 - 8) + 72);
    v107 = *(v35 + 72);
    v106 = a2 + 32;
    v130 = (v27 + 56);
    v129 = (v35 + 56);
    v37 = v132;
    v38 = v124;
    while (1)
    {
      v39 = *(a2 + 16);
      if (v39)
      {
        break;
      }

LABEL_4:
      ++v128;
      a2 = v117;
      if (v128 == v111)
      {
        return;
      }
    }

    v116 = *(v109 + 8 * v128);
    v131 = &v114[v108 * v128];
    v40 = v106;
    v115 = &v113[v107 * v128];
    while (1)
    {
      sub_1AF85ABE8(v40, &v145);
      if (v146)
      {
        break;
      }

      sub_1AF616568(&v145, &v144);
      sub_1AF441194(&v144, &v135);
      sub_1AF5C5358(0, &qword_1ED72FFF0, &protocol descriptor for EntityComponent);
      v49 = v133;
      if ((swift_dynamicCast() & 1) == 0)
      {
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v144);
        (*v130)(v24, 1, 1, v49);
        v41 = sub_1AFD541A4;
        v42 = v24;
LABEL_8:
        sub_1AFD53198(v42, v41);
        goto LABEL_9;
      }

      (*v130)(v24, 0, 1, v49);
      v50 = v134;
      sub_1AFD53F80(v24, v134, &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptRuntime);
      v52 = sub_1AFAA3818(v51);
      v53 = v50 + *(v147 + 36);
      if ((*(v53 + 8) & 1) == 0 && v52 == *v53)
      {
        os_unfair_lock_lock(*(v125 + 72));
        v54 = v123;
        sub_1AFD53D18(v134, v123, &unk_1ED728E10, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptCompileAttempt);
        sub_1AFD54864(v131, v54, type metadata accessor for ParticleUpdateScript);
        v55 = v126;
        sub_1AFAA3C54(0, 1uLL, &v135, v56);
        if (v55)
        {

          v122 = 0;
          v121 = 0;
        }

        else
        {
          v122 = v138;
          v121 = v139;
        }

        v60 = v118;
        v126 = 0;

        if (*(v60 + 184))
        {
          goto LABEL_57;
        }

        v62 = *(*(v60 + 168) + 4 * v116);
        updated = *(*(v61 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v62 + 8);

        v136 = v147;
        v63 = sub_1AF585714(&v135);
        v120 = type metadata accessor for ParticleUpdateScript;
        v64 = v123;
        sub_1AFD53D18(v123, v63, &unk_1ED728E10, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptCompileAttempt);
        v65 = *&v134[v133[10]];
        v137 = *&v134[v133[9]];
        v138 = v65;
        v139 = *&v134[v133[11]];
        sub_1AFD55360(0, &qword_1EB644420, &type metadata for BasicScriptRuntime, MEMORY[0x1E69E6720]);
        v142 = v66;
        v140 = v122;
        v141 = v121;
        v143 = 1;
        v67 = v62 | (updated << 32);

        v68 = v125;
        sub_1AF825824(&v135, v112, v67);
        sub_1AFD53C4C(v64, &unk_1ED728E10, v120, &off_1ED728EB8, type metadata accessor for ScriptCompileAttempt);
        os_unfair_lock_unlock(*(v68 + 72));
        v37 = v132;
        v38 = v124;
      }

      sub_1AFD53C4C(v134, &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptRuntime);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v144);
      *v37 = 1;
LABEL_9:
      v40 += 48;
      if (!--v39)
      {
        goto LABEL_4;
      }
    }

    sub_1AF616568(&v145, &v135);
    sub_1AF441194(&v135, &v144);
    sub_1AF5C5358(0, &qword_1ED72FFF0, &protocol descriptor for EntityComponent);
    if (swift_dynamicCast())
    {
      v43 = v147;
      (*v129)(v38, 0, 1, v147);
      v44 = v127;
      sub_1AFD53F80(v38, v127, &unk_1ED728E10, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptCompileAttempt);
      v46 = sub_1AFAA3818(v45);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v135);
      v47 = v44 + *(v43 + 36);
      if (*(v47 + 8))
      {
        v48 = v44;
        goto LABEL_23;
      }

      if (v46 == *v47)
      {
        v57 = v24;
        v58 = v115;
        sub_1AFD53C4C(v115, &unk_1ED728E10, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptCompileAttempt);
        v59 = v58;
        v24 = v57;
        v38 = v124;
        sub_1AFD53F80(v44, v59, &unk_1ED728E10, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptCompileAttempt);
      }

      else
      {
        v48 = v44;
LABEL_23:
        sub_1AFD53C4C(v48, &unk_1ED728E10, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptCompileAttempt);
      }

      v37 = v132;
      *v132 = 1;
      goto LABEL_9;
    }

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v135);
    (*v129)(v38, 1, 1, v147);
    v41 = sub_1AFD54114;
    v42 = v38;
    goto LABEL_8;
  }
}

void sub_1AFD34100(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v158 = a4;
  v150 = a3;
  sub_1AFD53FF4(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v152 = &v134 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v155 = (&v134 - v9);
  sub_1AFD53F14(0, &unk_1ED728DC0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptCompileAttempt);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v149 = &v134 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v153 = (&v134 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v151 = &v134 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v154 = &v134 - v19;
  sub_1AFD54084(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v134 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v156 = &v134 - v24;
  sub_1AFD53F14(0, &unk_1ED72C4B0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptRuntime);
  v161 = v25;
  v26 = *(v25 - 1);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v134 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v157 = &v134 - v30;
  v31 = a1[1];
  v32 = v160;
  v141 = sub_1AF70632C(v31, a1);
  v145 = v31;
  v140 = sub_1AF706648(v31, a1);
  v134 = v32;
  v33 = a1[11];
  v142 = a2;
  v197 = v11;
  v137 = v33;
  if (!v33)
  {
    v156 = v22;
    v157 = v28;
    v159 = a2 + 32;
    v85 = a1[6];
    v138 = a1[7];
    v154 = (v12 + 56);
    v155 = (v26 + 56);
    v86 = v161;
    v87 = v152;
    v135 = v12;
    do
    {
LABEL_40:
      if (v85 == v138)
      {
        return;
      }

      v88 = v85++;
      v146 = type metadata accessor for TriggerScript(0);
      v89 = *(v146 - 1);
      v160 = *(a2 + 16);
    }

    while (!v160);
    v139 = v85;
    v90 = v88;
    v91 = 0;
    v92 = &v141[*(v89 + 72) * v90];
    v143 = &v140[*(v12 + 72) * v90];
    v144 = v90;
    v93 = v153;
    v94 = v156;
    while (1)
    {
      sub_1AF85ABE8(v159 + 48 * v91, v175);
      if (v176)
      {
        break;
      }

      sub_1AF616568(v175, v174);
      sub_1AF441194(v174, &v162);
      sub_1AF5C5358(0, &qword_1ED72FFF0, &protocol descriptor for EntityComponent);
      if ((swift_dynamicCast() & 1) == 0)
      {
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v174);
        (*v155)(v94, 1, 1, v86);
        v95 = sub_1AFD54084;
        v96 = v94;
LABEL_44:
        sub_1AFD53198(v96, v95);
        goto LABEL_45;
      }

      (*v155)(v94, 0, 1, v86);
      sub_1AFD53F80(v94, v157, &unk_1ED72C4B0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptRuntime);
      sub_1AFDFF308();
      sub_1AFDFD038();
      sub_1AFDFD038();

      v110 = *(v92 + 32);
      MEMORY[0x1B271ACB0](*(v110 + 16));
      v111 = *(v110 + 16);
      if (v111)
      {
        v112 = v110 + 40;
        do
        {

          sub_1AFDFD038();

          v112 += 16;
          --v111;
        }

        while (v111);
      }

      MEMORY[0x1B271ACB0](qword_1AFEAB0B8[*(v92 + 40)]);
      v113 = *v92;
      MEMORY[0x1B271ACB0](*(*v92 + 16));
      v114 = *(v113 + 16);
      if (v114)
      {
        v115 = (v113 + 48);
        do
        {
          v116 = *(v115 - 2);
          v117 = *v115;
          v115 += 5;
          sub_1AFDFF308();
          sub_1AF443EE0(v116);
          sub_1AF444224(v117);
          v119 = sub_1AFAA02E0(v116, v118);
          MEMORY[0x1B271ACB0](v119);
          v184 = v171;
          v185 = v172;
          v186 = v173;
          v182 = v169;
          v183 = v170;
          v120 = sub_1AFDFF2E8();
          MEMORY[0x1B271ACB0](v120);
          sub_1AF443F24(v116);
          sub_1AF444AF4(v117);
          --v114;
        }

        while (v114);
      }

      v179 = v164;
      v180 = v165;
      v181 = v166;
      v177 = v162;
      v178 = v163;
      v121 = sub_1AFDFF2E8();
      v122 = v157;
      v123 = &v157[*(v197 + 36)];
      v124 = v150;
      if ((v123[8] & 1) == 0 && v121 == *v123)
      {
        os_unfair_lock_lock(*(v150 + 72));
        v125 = v149;
        sub_1AFD53D18(v122, v149, &unk_1ED728DC0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptCompileAttempt);
        sub_1AFD54864(v92, v125, type metadata accessor for TriggerScript);
        v126 = *v92;
        v127 = v145;
        v128 = *(v145 + 16);

        if (*(v127 + 184))
        {
LABEL_74:
          sub_1AFDFE518();
          __break(1u);
          return;
        }

        v151 = *(*(v127 + 168) + 4 * v144);
        v148 = *(*(v128 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v151 + 8);

        *(&v163 + 1) = v197;
        v129 = sub_1AF585714(&v162);
        v147 = type metadata accessor for TriggerScript;
        sub_1AFD53D18(v125, v129, &unk_1ED728DC0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptCompileAttempt);
        v130 = *&v157[v161[10]];
        *&v164 = *&v157[v161[9]];
        *(&v164 + 1) = v130;
        *&v165 = *&v157[v161[11]];
        sub_1AFD55360(0, &qword_1EB644420, &type metadata for BasicScriptRuntime, MEMORY[0x1E69E6720]);
        v167 = v131;
        *(&v165 + 1) = v126;
        v166 = 0;
        v168 = 1;
        v132 = v151 | (v148 << 32);
        v122 = v157;

        sub_1AF825824(&v162, v146, v132);
        sub_1AFD53C4C(v149, &unk_1ED728DC0, v147, &off_1ED72C298, type metadata accessor for ScriptCompileAttempt);
        os_unfair_lock_unlock(*(v124 + 72));
      }

      sub_1AFD53C4C(v122, &unk_1ED72C4B0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptRuntime);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v174);
      *v158 = 1;
      v86 = v161;
      v87 = v152;
      v93 = v153;
      v94 = v156;
LABEL_45:
      if (++v91 == v160)
      {
        a2 = v142;
        v12 = v135;
        v85 = v139;
        goto LABEL_40;
      }
    }

    sub_1AF616568(v175, v174);
    sub_1AF441194(v174, &v162);
    sub_1AF5C5358(0, &qword_1ED72FFF0, &protocol descriptor for EntityComponent);
    if (swift_dynamicCast())
    {
      (*v154)(v87, 0, 1, v197);
      sub_1AFD53F80(v87, v93, &unk_1ED728DC0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptCompileAttempt);
      sub_1AFDFF308();
      sub_1AFDFD038();
      sub_1AFDFD038();

      v97 = *(v92 + 32);
      MEMORY[0x1B271ACB0](*(v97 + 16));
      v98 = *(v97 + 16);
      if (v98)
      {
        v99 = v97 + 40;
        do
        {

          sub_1AFDFD038();

          v99 += 16;
          --v98;
        }

        while (v98);
      }

      MEMORY[0x1B271ACB0](qword_1AFEAB0B8[*(v92 + 40)]);
      v100 = *v92;
      MEMORY[0x1B271ACB0](*(*v92 + 16));
      v101 = *(v100 + 16);
      if (v101)
      {
        v102 = (v100 + 48);
        do
        {
          v103 = *(v102 - 2);
          v104 = *v102;
          v102 += 5;
          sub_1AFDFF308();
          sub_1AF443EE0(v103);
          sub_1AF444224(v104);
          v106 = sub_1AFAA02E0(v103, v105);
          MEMORY[0x1B271ACB0](v106);
          v194 = v171;
          v195 = v172;
          v196 = v173;
          v192 = v169;
          v193 = v170;
          v107 = sub_1AFDFF2E8();
          MEMORY[0x1B271ACB0](v107);
          sub_1AF443F24(v103);
          sub_1AF444AF4(v104);
          --v101;
        }

        while (v101);
      }

      v189 = v164;
      v190 = v165;
      v191 = v166;
      v187 = v162;
      v188 = v163;
      v108 = sub_1AFDFF2E8();
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v174);
      v93 = v153;
      v109 = v153 + *(v197 + 36);
      if (v109[8])
      {
        sub_1AFD53C4C(v153, &unk_1ED728DC0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptCompileAttempt);
        v87 = v152;
      }

      else
      {
        v87 = v152;
        if (v108 == *v109)
        {
          v133 = v143;
          sub_1AFD53C4C(v143, &unk_1ED728DC0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptCompileAttempt);
          sub_1AFD53F80(v93, v133, &unk_1ED728DC0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptCompileAttempt);
        }

        else
        {
          sub_1AFD53C4C(v153, &unk_1ED728DC0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptCompileAttempt);
        }
      }

      v94 = v156;
      *v158 = 1;
      v86 = v161;
      goto LABEL_45;
    }

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v174);
    (*v154)(v87, 1, 1, v197);
    v95 = sub_1AFD53FF4;
    v96 = v87;
    goto LABEL_44;
  }

  v34 = a1[13];
  v35 = v161;
  v37 = v154;
  v36 = v155;
  v138 = v34;
  if (v34)
  {
    v38 = type metadata accessor for TriggerScript(0);
    v149 = 0;
    v139 = v38;
    v39 = *(v38 - 8);
    v159 = a2 + 32;
    v136 = *(v39 + 72);
    v40 = (v26 + 56);
    v152 = (v12 + 56);
    v135 = *(v12 + 72);
    v153 = (v26 + 56);
    while (1)
    {
      v41 = v156;
      v160 = *(a2 + 16);
      if (v160)
      {
        break;
      }

LABEL_4:
      ++v149;
      a2 = v142;
      if (v149 == v138)
      {
        return;
      }
    }

    v42 = 0;
    v43 = *(v137 + 8 * v149);
    v44 = &v141[v136 * v149];
    v143 = &v140[v135 * v149];
    v144 = v43;
    while (1)
    {
      sub_1AF85ABE8(v159 + 48 * v42, v175);
      if (v176)
      {
        break;
      }

      sub_1AF616568(v175, v174);
      sub_1AF441194(v174, &v162);
      sub_1AF5C5358(0, &qword_1ED72FFF0, &protocol descriptor for EntityComponent);
      if ((swift_dynamicCast() & 1) == 0)
      {
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v174);
        (*v40)(v41, 1, 1, v35);
        v45 = sub_1AFD54084;
        v46 = v41;
LABEL_8:
        sub_1AFD53198(v46, v45);
        goto LABEL_9;
      }

      (*v40)(v41, 0, 1, v35);
      sub_1AFD53F80(v41, v157, &unk_1ED72C4B0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptRuntime);
      sub_1AFDFF308();
      sub_1AFDFD038();
      sub_1AFDFD038();

      v60 = *(v44 + 32);
      MEMORY[0x1B271ACB0](*(v60 + 16));
      v61 = *(v60 + 16);
      if (v61)
      {
        v62 = v60 + 40;
        do
        {

          sub_1AFDFD038();

          v62 += 16;
          --v61;
        }

        while (v61);
      }

      MEMORY[0x1B271ACB0](qword_1AFEAB0B8[*(v44 + 40)]);
      v63 = *v44;
      MEMORY[0x1B271ACB0](*(*v44 + 16));
      v64 = *(v63 + 16);
      if (v64)
      {
        v65 = (v63 + 48);
        do
        {
          v66 = *(v65 - 2);
          v67 = *v65;
          v65 += 5;
          sub_1AFDFF308();
          sub_1AF443EE0(v66);
          sub_1AF444224(v67);
          v69 = sub_1AFAA02E0(v66, v68);
          MEMORY[0x1B271ACB0](v69);
          v184 = v171;
          v185 = v172;
          v186 = v173;
          v182 = v169;
          v183 = v170;
          v70 = sub_1AFDFF2E8();
          MEMORY[0x1B271ACB0](v70);
          sub_1AF443F24(v66);
          sub_1AF444AF4(v67);
          --v64;
        }

        while (v64);
      }

      v179 = v164;
      v180 = v165;
      v181 = v166;
      v177 = v162;
      v178 = v163;
      v71 = sub_1AFDFF2E8();
      v72 = v157;
      v73 = &v157[*(v197 + 36)];
      v74 = v151;
      if ((v73[8] & 1) == 0 && v71 == *v73)
      {
        v75 = v150;
        os_unfair_lock_lock(*(v150 + 72));
        sub_1AFD53D18(v72, v74, &unk_1ED728DC0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptCompileAttempt);
        sub_1AFD54864(v44, v74, type metadata accessor for TriggerScript);
        v76 = *v44;
        v77 = v145;
        v78 = *(v145 + 16);

        if (*(v77 + 184))
        {
          goto LABEL_74;
        }

        v79 = *(*(v77 + 168) + 4 * v144);
        v147 = *(*(v78 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v79 + 8);
        v148 = v79;

        *(&v163 + 1) = v197;
        v80 = sub_1AF585714(&v162);
        v146 = type metadata accessor for TriggerScript;
        sub_1AFD53D18(v74, v80, &unk_1ED728DC0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptCompileAttempt);
        v81 = *&v157[v161[10]];
        *&v164 = *&v157[v161[9]];
        *(&v164 + 1) = v81;
        *&v165 = *&v157[v161[11]];
        sub_1AFD55360(0, &qword_1EB644420, &type metadata for BasicScriptRuntime, MEMORY[0x1E69E6720]);
        v167 = v82;
        *(&v165 + 1) = v76;
        v166 = 0;
        v168 = 1;
        v83 = v148 | (v147 << 32);
        v72 = v157;

        sub_1AF825824(&v162, v139, v83);
        sub_1AFD53C4C(v151, &unk_1ED728DC0, v146, &off_1ED72C298, type metadata accessor for ScriptCompileAttempt);
        os_unfair_lock_unlock(*(v75 + 72));
      }

      sub_1AFD53C4C(v72, &unk_1ED72C4B0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptRuntime);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v174);
      *v158 = 1;
      v35 = v161;
      v37 = v154;
      v36 = v155;
      v41 = v156;
      v40 = v153;
LABEL_9:
      if (++v42 == v160)
      {
        goto LABEL_4;
      }
    }

    sub_1AF616568(v175, v174);
    sub_1AF441194(v174, &v162);
    sub_1AF5C5358(0, &qword_1ED72FFF0, &protocol descriptor for EntityComponent);
    if (swift_dynamicCast())
    {
      (*v152)(v36, 0, 1, v197);
      sub_1AFD53F80(v36, v37, &unk_1ED728DC0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptCompileAttempt);
      sub_1AFDFF308();
      sub_1AFDFD038();
      sub_1AFDFD038();

      v47 = *(v44 + 32);
      MEMORY[0x1B271ACB0](*(v47 + 16));
      v48 = *(v47 + 16);
      if (v48)
      {
        v49 = v47 + 40;
        do
        {

          sub_1AFDFD038();

          v49 += 16;
          --v48;
        }

        while (v48);
      }

      MEMORY[0x1B271ACB0](qword_1AFEAB0B8[*(v44 + 40)]);
      v50 = *v44;
      MEMORY[0x1B271ACB0](*(*v44 + 16));
      v51 = *(v50 + 16);
      if (v51)
      {
        v52 = (v50 + 48);
        do
        {
          v53 = *(v52 - 2);
          v54 = *v52;
          v52 += 5;
          sub_1AFDFF308();
          sub_1AF443EE0(v53);
          sub_1AF444224(v54);
          v56 = sub_1AFAA02E0(v53, v55);
          MEMORY[0x1B271ACB0](v56);
          v194 = v171;
          v195 = v172;
          v196 = v173;
          v192 = v169;
          v193 = v170;
          v57 = sub_1AFDFF2E8();
          MEMORY[0x1B271ACB0](v57);
          sub_1AF443F24(v53);
          sub_1AF444AF4(v54);
          --v51;
        }

        while (v51);
      }

      v189 = v164;
      v190 = v165;
      v191 = v166;
      v187 = v162;
      v188 = v163;
      v58 = sub_1AFDFF2E8();
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v174);
      v37 = v154;
      v59 = &v154[*(v197 + 36)];
      if (v59[8])
      {
        sub_1AFD53C4C(v154, &unk_1ED728DC0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptCompileAttempt);
        v36 = v155;
        v41 = v156;
      }

      else
      {
        v41 = v156;
        if (v58 == *v59)
        {
          v84 = v143;
          sub_1AFD53C4C(v143, &unk_1ED728DC0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptCompileAttempt);
          sub_1AFD53F80(v37, v84, &unk_1ED728DC0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptCompileAttempt);
        }

        else
        {
          sub_1AFD53C4C(v154, &unk_1ED728DC0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptCompileAttempt);
        }

        v36 = v155;
      }

      v40 = v153;
      *v158 = 1;
      v35 = v161;
      goto LABEL_9;
    }

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v174);
    (*v152)(v36, 1, 1, v197);
    v45 = sub_1AFD53FF4;
    v46 = v36;
    goto LABEL_8;
  }
}

void sub_1AFD358A0(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v124 = a4;
  v111 = a3;
  sub_1AFD53DF4(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v107 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v121 = &v98 - v9;
  sub_1AFD53F14(0, &unk_1ED724F70, type metadata accessor for HeaderScript, &off_1ED725B90, type metadata accessor for ScriptCompileAttempt);
  v147 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v115 = (&v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v98 - v14);
  MEMORY[0x1EEE9AC00](v16);
  v116 = &v98 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v120 = (&v98 - v19);
  sub_1AFD53E84(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v125 = &v98 - v24;
  sub_1AFD53F14(0, &unk_1ED725708, type metadata accessor for HeaderScript, &off_1ED725B90, type metadata accessor for ScriptRuntime);
  v126 = v25;
  v26 = *(v25 - 1);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v98 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v118 = (&v98 - v30);
  v31 = a1[1];
  v32 = v123;
  v106 = sub_1AF705F6C(v31, a1);
  v110 = v31;
  v33 = v31;
  v34 = a2;
  v105 = sub_1AF70658C(v33, a1);
  v98 = v32;
  v35 = a1[11];
  v109 = a2;
  v102 = v35;
  if (!v35)
  {
    v119 = v15;
    v66 = a1[6];
    v103 = a1[7];
    v101 = v34 + 32;
    v67 = (v26 + 56);
    v68 = v11;
    v122 = (v11 + 56);
    v123 = v67;
    v69 = &off_1ED725B90;
    v70 = v126;
    v71 = v107;
    v102 = v68;
    v121 = v22;
    v117 = v28;
    do
    {
LABEL_28:
      v72 = v109;
      if (v66 == v103)
      {
        return;
      }

      v73 = v66++;
      v113 = type metadata accessor for HeaderScript(0);
      v74 = *(v113 - 8);
      v75 = *(v72 + 16);
    }

    while (!v75);
    v104 = v66;
    v125 = &v106[*(v74 + 72) * v73];
    v76 = v101;
    v77 = *(v102 + 72);
    v112 = v73;
    v108 = &v105[v77 * v73];
    while (1)
    {
      sub_1AF85ABE8(v76, v135);
      if (v136)
      {
        break;
      }

      sub_1AF616568(v135, v134);
      sub_1AF441194(v134, &v127);
      sub_1AF5C5358(0, &qword_1ED72FFF0, &protocol descriptor for EntityComponent);
      if ((swift_dynamicCast() & 1) == 0)
      {
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v134);
        (*v123)(v22, 1, 1, v70);
        v78 = sub_1AFD53E84;
        v79 = v22;
LABEL_32:
        sub_1AFD53198(v79, v78);
        goto LABEL_33;
      }

      (*v123)(v22, 0, 1, v70);
      sub_1AFD53F80(v22, v28, &unk_1ED725708, type metadata accessor for HeaderScript, v69, type metadata accessor for ScriptRuntime);
      sub_1AFDFF308();
      sub_1AFDFD038();
      v139 = v129;
      v140 = v130;
      v141 = v131;
      v137 = v127;
      v138 = v128;
      v85 = sub_1AFDFF2E8();
      v86 = &v28[*(v147 + 36)];
      if ((v86[8] & 1) == 0 && v85 == *v86)
      {
        v87 = v111;
        os_unfair_lock_lock(*(v111 + 72));
        v88 = v115;
        v89 = v69;
        sub_1AFD53D18(v28, v115, &unk_1ED724F70, type metadata accessor for HeaderScript, v69, type metadata accessor for ScriptCompileAttempt);
        sub_1AFD54864(v125, v88, type metadata accessor for HeaderScript);
        v90 = v110;

        if (*(v90 + 184))
        {
LABEL_51:
          sub_1AFDFE518();
          __break(1u);
          return;
        }

        v116 = *(*(v90 + 168) + 4 * v112);
        v114 = *(*(v91 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v116 + 8);

        *(&v128 + 1) = v147;
        v92 = sub_1AF585714(&v127);
        v120 = type metadata accessor for HeaderScript;
        v118 = type metadata accessor for ScriptCompileAttempt;
        sub_1AFD53D18(v88, v92, &unk_1ED724F70, type metadata accessor for HeaderScript, v69, type metadata accessor for ScriptCompileAttempt);
        v93 = *&v28[v126[10]];
        *&v129 = *&v28[v126[9]];
        *(&v129 + 1) = v93;
        *&v130 = *&v28[v126[11]];
        sub_1AFD55360(0, &qword_1EB644410, &type metadata for CodableVoid, MEMORY[0x1E69E6720]);
        v132 = v94;
        BYTE8(v130) = 0;
        v133 = 1;
        v95 = v116 | (v114 << 32);

        sub_1AF825824(&v127, v113, v95);
        sub_1AFD53C4C(v115, &unk_1ED724F70, v120, v89, v118);
        os_unfair_lock_unlock(*(v87 + 72));
        v71 = v107;
        v22 = v121;
        v69 = v89;
      }

      sub_1AFD53C4C(v28, &unk_1ED725708, type metadata accessor for HeaderScript, v69, type metadata accessor for ScriptRuntime);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v134);
      *v124 = 1;
      v70 = v126;
LABEL_33:
      v76 += 48;
      if (!--v75)
      {
        v66 = v104;
        goto LABEL_28;
      }
    }

    sub_1AF616568(v135, v134);
    sub_1AF441194(v134, &v127);
    sub_1AF5C5358(0, &qword_1ED72FFF0, &protocol descriptor for EntityComponent);
    v80 = v147;
    if (swift_dynamicCast())
    {
      (*v122)(v71, 0, 1, v80);
      v81 = v119;
      v82 = v69;
      sub_1AFD53F80(v71, v119, &unk_1ED724F70, type metadata accessor for HeaderScript, v69, type metadata accessor for ScriptCompileAttempt);
      sub_1AFDFF308();
      sub_1AFDFD038();
      v144 = v129;
      v145 = v130;
      v146 = v131;
      v142 = v127;
      v143 = v128;
      v83 = sub_1AFDFF2E8();
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v134);
      v84 = v81 + *(v80 + 36);
      if (*(v84 + 8))
      {
        sub_1AFD53C4C(v81, &unk_1ED724F70, type metadata accessor for HeaderScript, v69, type metadata accessor for ScriptCompileAttempt);
        v70 = v126;
        v28 = v117;
      }

      else
      {
        if (v83 == *v84)
        {
          v96 = v108;
          sub_1AFD53C4C(v108, &unk_1ED724F70, type metadata accessor for HeaderScript, v82, type metadata accessor for ScriptCompileAttempt);
          v97 = v96;
          v69 = v82;
          sub_1AFD53F80(v119, v97, &unk_1ED724F70, type metadata accessor for HeaderScript, v82, type metadata accessor for ScriptCompileAttempt);
        }

        else
        {
          sub_1AFD53C4C(v81, &unk_1ED724F70, type metadata accessor for HeaderScript, v69, type metadata accessor for ScriptCompileAttempt);
        }

        v70 = v126;
        v28 = v117;
      }

      *v124 = 1;
      v22 = v121;
      goto LABEL_33;
    }

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v134);
    (*v122)(v71, 1, 1, v80);
    v78 = sub_1AFD53DF4;
    v79 = v71;
    goto LABEL_32;
  }

  v36 = a1[13];
  v37 = v126;
  v103 = v36;
  if (v36)
  {
    v38 = type metadata accessor for HeaderScript(0);
    v117 = 0;
    v104 = v38;
    v101 = *(*(v38 - 8) + 72);
    v39 = *(v11 + 72);
    v99 = a2 + 32;
    v100 = v39;
    v40 = (v26 + 56);
    v122 = (v11 + 56);
    v119 = (v26 + 56);
    while (1)
    {
      v41 = *(v34 + 16);
      v42 = v121;
      v43 = v147;
      if (v41)
      {
        break;
      }

LABEL_4:
      ++v117;
      v34 = v109;
      if (v117 == v103)
      {
        return;
      }
    }

    v44 = *(v102 + 8 * v117);
    v123 = &v106[v101 * v117];
    v45 = v99;
    v107 = &v105[v100 * v117];
    v108 = v44;
    while (1)
    {
      sub_1AF85ABE8(v45, v135);
      if (v136)
      {
        break;
      }

      sub_1AF616568(v135, v134);
      sub_1AF441194(v134, &v127);
      sub_1AF5C5358(0, &qword_1ED72FFF0, &protocol descriptor for EntityComponent);
      if ((swift_dynamicCast() & 1) == 0)
      {
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v134);
        v46 = v125;
        (*v40)(v125, 1, 1, v37);
        sub_1AFD53198(v46, sub_1AFD53E84);
LABEL_8:
        v43 = v147;
        goto LABEL_9;
      }

      v51 = v125;
      (*v40)(v125, 0, 1, v37);
      v52 = v118;
      sub_1AFD53F80(v51, v118, &unk_1ED725708, type metadata accessor for HeaderScript, &off_1ED725B90, type metadata accessor for ScriptRuntime);
      sub_1AFDFF308();
      sub_1AFDFD038();
      v139 = v129;
      v140 = v130;
      v141 = v131;
      v137 = v127;
      v138 = v128;
      v53 = sub_1AFDFF2E8();
      v43 = v147;
      v54 = v52 + *(v147 + 36);
      if ((v54[8] & 1) == 0 && v53 == *v54)
      {
        v55 = v111;
        os_unfair_lock_lock(*(v111 + 72));
        v56 = v52;
        v57 = v116;
        sub_1AFD53D18(v52, v116, &unk_1ED724F70, type metadata accessor for HeaderScript, &off_1ED725B90, type metadata accessor for ScriptCompileAttempt);
        sub_1AFD54864(v123, v57, type metadata accessor for HeaderScript);
        v58 = v110;

        if (*(v58 + 184))
        {
          goto LABEL_51;
        }

        v60 = *(*(v58 + 168) + 4 * v108);
        v112 = *(*(v59 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v60 + 8);
        v113 = v60;

        *(&v128 + 1) = v147;
        v61 = sub_1AF585714(&v127);
        v115 = type metadata accessor for HeaderScript;
        v114 = type metadata accessor for ScriptCompileAttempt;
        sub_1AFD53D18(v57, v61, &unk_1ED724F70, type metadata accessor for HeaderScript, &off_1ED725B90, type metadata accessor for ScriptCompileAttempt);
        v62 = *(v52 + v126[10]);
        *&v129 = *(v56 + v126[9]);
        *(&v129 + 1) = v62;
        *&v130 = *(v56 + v126[11]);
        sub_1AFD55360(0, &qword_1EB644410, &type metadata for CodableVoid, MEMORY[0x1E69E6720]);
        v132 = v63;
        BYTE8(v130) = 0;
        v133 = 1;
        v64 = v113 | (v112 << 32);

        sub_1AF825824(&v127, v104, v64);
        sub_1AFD53C4C(v116, &unk_1ED724F70, v115, &off_1ED725B90, v114);
        os_unfair_lock_unlock(*(v55 + 72));
        v42 = v121;
        v52 = v56;
        v43 = v147;
      }

      sub_1AFD53C4C(v52, &unk_1ED725708, type metadata accessor for HeaderScript, &off_1ED725B90, type metadata accessor for ScriptRuntime);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v134);
      *v124 = 1;
      v37 = v126;
      v40 = v119;
LABEL_9:
      v45 += 48;
      if (!--v41)
      {
        goto LABEL_4;
      }
    }

    sub_1AF616568(v135, v134);
    sub_1AF441194(v134, &v127);
    sub_1AF5C5358(0, &qword_1ED72FFF0, &protocol descriptor for EntityComponent);
    if ((swift_dynamicCast() & 1) == 0)
    {
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v134);
      (*v122)(v42, 1, 1, v43);
      sub_1AFD53198(v42, sub_1AFD53DF4);
      goto LABEL_9;
    }

    (*v122)(v42, 0, 1, v43);
    v47 = v42;
    v48 = v120;
    sub_1AFD53F80(v47, v120, &unk_1ED724F70, type metadata accessor for HeaderScript, &off_1ED725B90, type metadata accessor for ScriptCompileAttempt);
    sub_1AFDFF308();
    sub_1AFDFD038();
    v144 = v129;
    v145 = v130;
    v146 = v131;
    v142 = v127;
    v143 = v128;
    v49 = sub_1AFDFF2E8();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v134);
    v50 = v48 + *(v43 + 36);
    if (v50[8])
    {
      sub_1AFD53C4C(v48, &unk_1ED724F70, type metadata accessor for HeaderScript, &off_1ED725B90, type metadata accessor for ScriptCompileAttempt);
      v37 = v126;
    }

    else
    {
      if (v49 == *v50)
      {
        v65 = v107;
        sub_1AFD53C4C(v107, &unk_1ED724F70, type metadata accessor for HeaderScript, &off_1ED725B90, type metadata accessor for ScriptCompileAttempt);
        sub_1AFD53F80(v120, v65, &unk_1ED724F70, type metadata accessor for HeaderScript, &off_1ED725B90, type metadata accessor for ScriptCompileAttempt);
      }

      else
      {
        sub_1AFD53C4C(v48, &unk_1ED724F70, type metadata accessor for HeaderScript, &off_1ED725B90, type metadata accessor for ScriptCompileAttempt);
      }

      v37 = v126;
    }

    v42 = v121;
    *v124 = 1;
    goto LABEL_8;
  }
}

uint64_t sub_1AFD36A60(void *a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5, unint64_t a6)
{
  v192 = a5;
  v193 = a6;
  LODWORD(v195) = a4;
  v199 = a3;
  v176 = a2;
  sub_1AF0D4E74(0);
  v191 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v190 = &v159 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = sub_1AFDFC298();
  v184 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v188 = &v159 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFD532D0(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v159 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v187 = &v159 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v159 - v17;
  v19 = type metadata accessor for ScriptIndex(0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v159 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v159 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v170 = (&v159 - v27);
  MEMORY[0x1EEE9AC00](v28);
  v186 = &v159 - v29;
  v30 = a1[1];
  v175 = sub_1AF706180(v30, a1);
  v174 = sub_1AF7060C4(v30, a1);
  result = sub_1AF706B6C(v30, a1);
  v160 = v6;
  v32 = a1[11];
  v171 = a1;
  v178 = v30;
  v169 = v32;
  if (v32)
  {
    v177 = v18;
    v168 = a1[13];
    if (v168)
    {
      v166 = type metadata accessor for GraphScript(0);
      v165 = *(*(v166 - 8) + 72);
      sub_1AFD53F14(0, &unk_1ED72C4F0, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptRuntime);
      v33 = 0;
      v173 = v34;
      v35 = *(v34 - 8);
      v172 = (v20 + 48);
      v164 = *(v35 + 72);
      v159 = 0x80000001AFF47E70;
      v182 = 0x80000001AFF4F1E0;
      v181 = (v20 + 56);
      v180 = (v184 + 32);
      v36 = &unk_1F2503F70;
      if (v199 < 1029)
      {
        v36 = &unk_1F2503F38;
      }

      v162 = v36;
      v161 = v195 | (v199 > 1032);
      v183 = xmmword_1AFE431C0;
      v194 = v19;
      while (1)
      {
        v37 = v169[v33];
        v167 = a1[2];

        if (*(v30 + 184))
        {
          break;
        }

        v39 = *(v30 + 168);
        v179 = v37;
        v40 = *(v39 + 4 * v37);
        v41 = *(*(v38 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v40 + 8);

        v42 = v176;
        if (*(v176 + 16) && (v43 = sub_1AF449D3C(v40 | (v41 << 32)), (v44 & 1) != 0))
        {
          v45 = (*(v42 + 56) + 8 * v43);
          v46 = *v45;
          v47 = v45[1];
          v48 = v170;
        }

        else
        {

          v48 = v170;
          if (*(v30 + 184))
          {
            break;
          }

          v46 = *(*(v30 + 168) + 4 * v179);
          v47 = *(*(v49 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v46 + 8);
        }

        v185 = v33;
        v50 = &v175[v165 * v33];
        v51 = v177;
        sub_1AFB12858(&v50[*(v166 + 44)], v177);
        v52 = *v172;
        if ((*v172)(v51, 1, v19) == 1)
        {
          v53 = v178;

          if (*(v53 + 184))
          {
            break;
          }

          v55 = *(*(v53 + 168) + 4 * v179);
          v56 = *(*(v54 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v55 + 8);

          v57 = v186;
          *v186 = v55;
          *(v57 + 4) = v56;
          v58 = v57;
          swift_storeEnumTagMultiPayload();
          v59 = v52(v177, 1, v19);
          a1 = v171;
          if (v59 != 1)
          {
            sub_1AFD53CA8(v177, qword_1ED730680, type metadata accessor for ScriptIndex);
          }
        }

        else
        {
          v60 = v51;
          v58 = v186;
          sub_1AFD53D8C(v60, v186, type metadata accessor for ScriptIndex);
        }

        sub_1AFD531F8(v58, v48, type metadata accessor for ScriptIndex);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1AFD53198(v48, type metadata accessor for ScriptIndex);
        }

        else
        {
          *&v61 = *v48;
          v62 = *(v42 + 16);
          v195 = v61;
          if (v62)
          {
            v63 = sub_1AF449D3C(v61);
            if (v65)
            {
              *&v64 = *(*(v42 + 56) + 8 * v63);
              v195 = v64;
            }
          }

          sub_1AFD53198(v58, type metadata accessor for ScriptIndex);
          *v58 = v195;
          swift_storeEnumTagMultiPayload();
        }

        v66 = &v174[v164 * v185];
        if (!*&v66[*(v173 + 40)] && !*&v66[*(v173 + 44)])
        {
          v67 = v162;
          if (v161)
          {
            v67 = &unk_1F2503FA8;
            if (v50[24] == 2)
            {
              sub_1AFD55360(0, &qword_1ED721EB8, &type metadata for ScriptFunction, MEMORY[0x1E69E6F90]);
              v67 = swift_allocObject();
              v67[1] = v183;
              v196 = 0xD000000000000017;
              v197 = v159;
              MEMORY[0x1B2718AE0](14906, 0xE200000000000000);
              MEMORY[0x1B2718AE0](0x706D6F635F786676, 0xEB00000000657475);
              v68 = v197;
              *(v67 + 4) = v196;
              *(v67 + 5) = v68;
              *(v67 + 48) = 0;
            }
          }

          v163 = v67;
          v69 = *(v67 + 2);
          if (v69)
          {
            v184 = v46 | (v47 << 32);
            v70 = v163 + 5;
            do
            {
              *&v195 = v69;
              v71 = *(v70 - 1);
              v72 = *v70;
              v199 = v70;
              v73 = v187;
              sub_1AFD531F8(v58, v187, type metadata accessor for ScriptIndex);
              (*v181)(v73, 0, 1, v19);

              v74 = sub_1AFAF8B58(v71, v72, v192, v193, v184, 0x6870617267uLL, 0xE500000000000000, v73);
              v76 = v75;

              sub_1AFD53CA8(v73, qword_1ED730680, type metadata accessor for ScriptIndex);
              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              v196 = 0;
              v197 = 0xE000000000000000;
              sub_1AFDFE218();

              v196 = 0xD000000000000022;
              v197 = v182;
              MEMORY[0x1B2718AE0](v74, v76);

              v78 = v196;
              v77 = v197;
              v79 = sub_1AFDFDA08();
              if (qword_1ED731058 != -1)
              {
                swift_once();
              }

              if (qword_1ED730E98 != -1)
              {
                swift_once();
              }

              v80 = qword_1ED73B890;
              sub_1AF5DD4A4(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
              v81 = swift_allocObject();
              *(v81 + 16) = v183;
              *(v81 + 56) = MEMORY[0x1E69E6158];
              *(v81 + 64) = sub_1AF0D544C();
              *(v81 + 32) = v78;
              *(v81 + 40) = v77;

              sub_1AFDFC4C8(v79, &dword_1AF0CE000, v80, "%{public}s", 10, 2, v81);

              v82 = v188;
              sub_1AFDFC288();
              v83 = v190;
              v84 = v191[12];
              v85 = v191[16];
              v86 = &v190[v191[20]];
              (*v180)(v190, v82, v189);
              *(v83 + v84) = v79;
              *(v83 + v85) = 0;
              *v86 = v78;
              *(v86 + 1) = v77;

              sub_1AFDFC608();

              sub_1AFD53198(v83, sub_1AF0D4E74);

              v70 = (v199 + 24);
              v19 = v194;
              v69 = v195 - 1;
              v58 = v186;
            }

            while (v195 != 1);
          }

          v87 = v178;
          v88 = *(*(v178 + 40) + 16);
          v89 = *(v88 + 128);
          a1 = v171;
          if (*(v89 + 16))
          {
            v90 = sub_1AF449CB8(v173);
            if ((v91 & 1) != 0 && *(*(v88 + 24) + 16 * *(*(v89 + 56) + 8 * v90) + 32) == v173)
            {
              v196 = v173;
              v197 = &off_1F2558F90;
              v198 = 1;

              sub_1AF6304E8(v167 + 104, &v196, v179, 0, v87, v167);

              sub_1AF635250(&v196);
            }
          }

          sub_1AFD53F14(0, &unk_1ED728E00, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptCompileAttempt);
          v93 = *(*(v87 + 40) + 16);
          v94 = *(v93 + 128);
          if (*(v94 + 16))
          {
            v95 = v92;
            v96 = sub_1AF449CB8(v92);
            if ((v97 & 1) != 0 && *(*(v93 + 24) + 16 * *(*(v94 + 56) + 8 * v96) + 32) == v95)
            {
              v196 = v95;
              v197 = &off_1F250F310;
              v198 = 1;
              v98 = v178;

              sub_1AF6304E8(v167 + 104, &v196, v179, 0, v98, v167);

              sub_1AF635250(&v196);
            }
          }
        }

        result = sub_1AFD53198(v58, type metadata accessor for ScriptIndex);
        v33 = (v185 + 1);
        v30 = v178;
        if ((v185 + 1) == v168)
        {
          return result;
        }
      }

LABEL_91:
      result = sub_1AFDFE518();
      __break(1u);
    }
  }

  else
  {
    v185 = v25;
    v179 = v13;
    v99 = a1[6];
    v172 = a1[7];
    if (v99 != v172)
    {
      v168 = type metadata accessor for GraphScript(0);
      v167 = *(*(v168 - 8) + 72);
      sub_1AFD53F14(0, &unk_1ED72C4F0, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptRuntime);
      v177 = v100;
      v101 = *(v100 - 8);
      v173 = v20 + 48;
      v166 = *(v101 + 72);
      v162 = 0x80000001AFF47E70;
      v182 = 0x80000001AFF4F1E0;
      v181 = (v20 + 56);
      v180 = (v184 + 32);
      v102 = &unk_1F2503F70;
      if (v199 < 1029)
      {
        v102 = &unk_1F2503F38;
      }

      v164 = v102;
      LODWORD(v163) = v195 | (v199 > 1032);
      v183 = xmmword_1AFE431C0;
      v169 = v22;
      v194 = v19;
      while (1)
      {
        v170 = a1[2];

        if (*(v30 + 184))
        {
          goto LABEL_91;
        }

        v104 = *(v30 + 168);
        v186 = v99;
        v105 = *(v104 + 4 * v99);
        v106 = *(*(v103 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v105 + 8);

        v107 = v176;
        if (*(v176 + 16) && (v108 = sub_1AF449D3C(v105 | (v106 << 32)), (v109 & 1) != 0))
        {
          v110 = (*(v107 + 56) + 8 * v108);
          v111 = *v110;
          v112 = v110[1];
          v114 = v185;
          v113 = v186;
        }

        else
        {

          if (*(v30 + 184))
          {
            goto LABEL_91;
          }

          v113 = v186;
          v111 = *(*(v30 + 168) + 4 * v186);
          v112 = *(*(v115 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v111 + 8);

          v114 = v185;
        }

        v116 = &v175[v167 * v113];
        v117 = v179;
        sub_1AFB12858(&v116[*(v168 + 44)], v179);
        v118 = *v173;
        if ((*v173)(v117, 1, v19) == 1)
        {

          if (*(v30 + 184))
          {
            goto LABEL_91;
          }

          v120 = *(*(v30 + 168) + 4 * v186);
          v121 = *(*(v119 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v120 + 8);

          *v114 = v120;
          v114[1] = v121;
          v30 = v178;
          swift_storeEnumTagMultiPayload();
          if (v118(v179, 1, v19) != 1)
          {
            sub_1AFD53CA8(v179, qword_1ED730680, type metadata accessor for ScriptIndex);
          }
        }

        else
        {
          sub_1AFD53D8C(v117, v114, type metadata accessor for ScriptIndex);
        }

        v122 = v169;
        sub_1AFD531F8(v114, v169, type metadata accessor for ScriptIndex);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1AFD53198(v122, type metadata accessor for ScriptIndex);
        }

        else
        {
          *&v123 = *v122;
          v124 = *(v107 + 16);
          v195 = v123;
          if (v124)
          {
            v125 = sub_1AF449D3C(v123);
            if (v127)
            {
              *&v126 = *(*(v107 + 56) + 8 * v125);
              v195 = v126;
            }
          }

          sub_1AFD53198(v114, type metadata accessor for ScriptIndex);
          *v114 = v195;
          swift_storeEnumTagMultiPayload();
        }

        v128 = &v174[v166 * v186];
        if (!*&v128[*(v177 + 10)] && !*&v128[*(v177 + 11)])
        {
          v129 = v164;
          if (v163)
          {
            v129 = &unk_1F2503FA8;
            if (v116[24] == 2)
            {
              sub_1AFD55360(0, &qword_1ED721EB8, &type metadata for ScriptFunction, MEMORY[0x1E69E6F90]);
              v129 = swift_allocObject();
              v129[1] = v183;
              v196 = 0xD000000000000017;
              v197 = v162;
              MEMORY[0x1B2718AE0](14906, 0xE200000000000000);
              MEMORY[0x1B2718AE0](0x706D6F635F786676, 0xEB00000000657475);
              v130 = v197;
              *(v129 + 4) = v196;
              *(v129 + 5) = v130;
              *(v129 + 48) = 0;
            }
          }

          v165 = v129;
          v131 = *(v129 + 2);
          if (v131)
          {
            v184 = v111 | (v112 << 32);
            v132 = v165 + 5;
            do
            {
              *&v195 = v131;
              v133 = *(v132 - 1);
              v134 = *v132;
              v199 = v132;
              v135 = v187;
              sub_1AFD531F8(v114, v187, type metadata accessor for ScriptIndex);
              (*v181)(v135, 0, 1, v194);

              v136 = sub_1AFAF8B58(v133, v134, v192, v193, v184, 0x6870617267uLL, 0xE500000000000000, v135);
              v138 = v137;

              sub_1AFD53CA8(v135, qword_1ED730680, type metadata accessor for ScriptIndex);
              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              v196 = 0;
              v197 = 0xE000000000000000;
              sub_1AFDFE218();

              v196 = 0xD000000000000022;
              v197 = v182;
              MEMORY[0x1B2718AE0](v136, v138);

              v140 = v196;
              v139 = v197;
              v141 = sub_1AFDFDA08();
              if (qword_1ED731058 != -1)
              {
                swift_once();
              }

              if (qword_1ED730E98 != -1)
              {
                swift_once();
              }

              v142 = qword_1ED73B890;
              sub_1AF5DD4A4(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
              v143 = swift_allocObject();
              *(v143 + 16) = v183;
              *(v143 + 56) = MEMORY[0x1E69E6158];
              *(v143 + 64) = sub_1AF0D544C();
              *(v143 + 32) = v140;
              *(v143 + 40) = v139;

              sub_1AFDFC4C8(v141, &dword_1AF0CE000, v142, "%{public}s", 10, 2, v143);

              v144 = v188;
              sub_1AFDFC288();
              v145 = v190;
              v146 = v191[12];
              v147 = v191[16];
              v148 = &v190[v191[20]];
              (*v180)(v190, v144, v189);
              *(v145 + v146) = v141;
              *(v145 + v147) = 0;
              *v148 = v140;
              *(v148 + 1) = v139;

              sub_1AFDFC608();

              sub_1AFD53198(v145, sub_1AF0D4E74);

              v132 = (v199 + 24);
              v131 = v195 - 1;
              v114 = v185;
            }

            while (v195 != 1);
          }

          v30 = v178;
          v149 = *(*(v178 + 40) + 16);
          v150 = *(v149 + 128);
          if (*(v150 + 16))
          {
            v151 = sub_1AF449CB8(v177);
            if ((v152 & 1) != 0 && *(*(v149 + 24) + 16 * *(*(v150 + 56) + 8 * v151) + 32) == v177)
            {
              v196 = v177;
              v197 = &off_1F2558F90;
              v198 = 1;

              sub_1AF6304E8((v170 + 13), &v196, v186, 0, v30, v170);

              sub_1AF635250(&v196);
            }
          }

          sub_1AFD53F14(0, &unk_1ED728E00, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptCompileAttempt);
          v154 = *(*(v30 + 40) + 16);
          v155 = *(v154 + 128);
          v19 = v194;
          if (*(v155 + 16))
          {
            v156 = v153;
            v157 = sub_1AF449CB8(v153);
            if ((v158 & 1) != 0 && *(*(v154 + 24) + 16 * *(*(v155 + 56) + 8 * v157) + 32) == v156)
            {
              v196 = v156;
              v197 = &off_1F250F310;
              v198 = 1;

              sub_1AF6304E8((v170 + 13), &v196, v186, 0, v30, v170);

              sub_1AF635250(&v196);
            }
          }
        }

        v99 = v186 + 1;
        result = sub_1AFD53198(v114, type metadata accessor for ScriptIndex);
        a1 = v171;
        if (v99 == v172)
        {
          return result;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AFD38328(void *a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5, unint64_t a6)
{
  v192 = a5;
  v193 = a6;
  LODWORD(v195) = a4;
  v199 = a3;
  v176 = a2;
  sub_1AF0D4E74(0);
  v191 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v190 = &v159 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = sub_1AFDFC298();
  v184 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v188 = &v159 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFD532D0(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v159 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v187 = &v159 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v159 - v17;
  v19 = type metadata accessor for ScriptIndex(0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v159 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v159 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v170 = (&v159 - v27);
  MEMORY[0x1EEE9AC00](v28);
  v186 = &v159 - v29;
  v30 = a1[1];
  v175 = sub_1AF706090(v30, a1);
  v174 = sub_1AF705FD4(v30, a1);
  result = sub_1AF706AB0(v30, a1);
  v160 = v6;
  v32 = a1[11];
  v171 = a1;
  v178 = v30;
  v169 = v32;
  if (v32)
  {
    v177 = v18;
    v168 = a1[13];
    if (v168)
    {
      v166 = type metadata accessor for SimpleScript(0);
      v165 = *(*(v166 - 8) + 72);
      sub_1AFD53F14(0, &unk_1ED72C4D0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptRuntime);
      v33 = 0;
      v173 = v34;
      v35 = *(v34 - 8);
      v172 = (v20 + 48);
      v164 = *(v35 + 72);
      v159 = 0x80000001AFF47E70;
      v182 = 0x80000001AFF4F1E0;
      v181 = (v20 + 56);
      v180 = (v184 + 32);
      v36 = &unk_1F2504018;
      if (v199 < 1029)
      {
        v36 = &unk_1F2503FE0;
      }

      v162 = v36;
      v161 = v195 | (v199 > 1032);
      v183 = xmmword_1AFE431C0;
      v194 = v19;
      while (1)
      {
        v37 = v169[v33];
        v167 = a1[2];

        if (*(v30 + 184))
        {
          break;
        }

        v39 = *(v30 + 168);
        v179 = v37;
        v40 = *(v39 + 4 * v37);
        v41 = *(*(v38 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v40 + 8);

        v42 = v176;
        if (*(v176 + 16) && (v43 = sub_1AF449D3C(v40 | (v41 << 32)), (v44 & 1) != 0))
        {
          v45 = (*(v42 + 56) + 8 * v43);
          v46 = *v45;
          v47 = v45[1];
          v48 = v170;
        }

        else
        {

          v48 = v170;
          if (*(v30 + 184))
          {
            break;
          }

          v46 = *(*(v30 + 168) + 4 * v179);
          v47 = *(*(v49 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v46 + 8);
        }

        v185 = v33;
        v50 = &v175[v165 * v33];
        v51 = v177;
        sub_1AFB12858(&v50[*(v166 + 40)], v177);
        v52 = *v172;
        if ((*v172)(v51, 1, v19) == 1)
        {
          v53 = v178;

          if (*(v53 + 184))
          {
            break;
          }

          v55 = *(*(v53 + 168) + 4 * v179);
          v56 = *(*(v54 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v55 + 8);

          v57 = v186;
          *v186 = v55;
          *(v57 + 4) = v56;
          v58 = v57;
          swift_storeEnumTagMultiPayload();
          v59 = v52(v177, 1, v19);
          a1 = v171;
          if (v59 != 1)
          {
            sub_1AFD53CA8(v177, qword_1ED730680, type metadata accessor for ScriptIndex);
          }
        }

        else
        {
          v60 = v51;
          v58 = v186;
          sub_1AFD53D8C(v60, v186, type metadata accessor for ScriptIndex);
        }

        sub_1AFD531F8(v58, v48, type metadata accessor for ScriptIndex);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1AFD53198(v48, type metadata accessor for ScriptIndex);
        }

        else
        {
          *&v61 = *v48;
          v62 = *(v42 + 16);
          v195 = v61;
          if (v62)
          {
            v63 = sub_1AF449D3C(v61);
            if (v65)
            {
              *&v64 = *(*(v42 + 56) + 8 * v63);
              v195 = v64;
            }
          }

          sub_1AFD53198(v58, type metadata accessor for ScriptIndex);
          *v58 = v195;
          swift_storeEnumTagMultiPayload();
        }

        v66 = &v174[v164 * v185];
        if (!*&v66[*(v173 + 40)] && !*&v66[*(v173 + 44)])
        {
          v67 = v162;
          if (v161)
          {
            v67 = &unk_1F2504050;
            if (v50[32] == 2)
            {
              sub_1AFD55360(0, &qword_1ED721EB8, &type metadata for ScriptFunction, MEMORY[0x1E69E6F90]);
              v67 = swift_allocObject();
              v67[1] = v183;
              v196 = 0xD000000000000017;
              v197 = v159;
              MEMORY[0x1B2718AE0](14906, 0xE200000000000000);
              MEMORY[0x1B2718AE0](0x706D6F635F786676, 0xEB00000000657475);
              v68 = v197;
              *(v67 + 4) = v196;
              *(v67 + 5) = v68;
              *(v67 + 48) = 0;
            }
          }

          v163 = v67;
          v69 = *(v67 + 2);
          if (v69)
          {
            v184 = v46 | (v47 << 32);
            v70 = v163 + 5;
            do
            {
              *&v195 = v69;
              v71 = *(v70 - 1);
              v72 = *v70;
              v199 = v70;
              v73 = v187;
              sub_1AFD531F8(v58, v187, type metadata accessor for ScriptIndex);
              (*v181)(v73, 0, 1, v19);

              v74 = sub_1AFAF8B58(v71, v72, v192, v193, v184, 0x656C706D6973uLL, 0xE600000000000000, v73);
              v76 = v75;

              sub_1AFD53CA8(v73, qword_1ED730680, type metadata accessor for ScriptIndex);
              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              v196 = 0;
              v197 = 0xE000000000000000;
              sub_1AFDFE218();

              v196 = 0xD000000000000022;
              v197 = v182;
              MEMORY[0x1B2718AE0](v74, v76);

              v78 = v196;
              v77 = v197;
              v79 = sub_1AFDFDA08();
              if (qword_1ED731058 != -1)
              {
                swift_once();
              }

              if (qword_1ED730E98 != -1)
              {
                swift_once();
              }

              v80 = qword_1ED73B890;
              sub_1AF5DD4A4(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
              v81 = swift_allocObject();
              *(v81 + 16) = v183;
              *(v81 + 56) = MEMORY[0x1E69E6158];
              *(v81 + 64) = sub_1AF0D544C();
              *(v81 + 32) = v78;
              *(v81 + 40) = v77;

              sub_1AFDFC4C8(v79, &dword_1AF0CE000, v80, "%{public}s", 10, 2, v81);

              v82 = v188;
              sub_1AFDFC288();
              v83 = v190;
              v84 = v191[12];
              v85 = v191[16];
              v86 = &v190[v191[20]];
              (*v180)(v190, v82, v189);
              *(v83 + v84) = v79;
              *(v83 + v85) = 0;
              *v86 = v78;
              *(v86 + 1) = v77;

              sub_1AFDFC608();

              sub_1AFD53198(v83, sub_1AF0D4E74);

              v70 = (v199 + 24);
              v19 = v194;
              v69 = v195 - 1;
              v58 = v186;
            }

            while (v195 != 1);
          }

          v87 = v178;
          v88 = *(*(v178 + 40) + 16);
          v89 = *(v88 + 128);
          a1 = v171;
          if (*(v89 + 16))
          {
            v90 = sub_1AF449CB8(v173);
            if ((v91 & 1) != 0 && *(*(v88 + 24) + 16 * *(*(v89 + 56) + 8 * v90) + 32) == v173)
            {
              v196 = v173;
              v197 = &off_1F2558F90;
              v198 = 1;

              sub_1AF6304E8(v167 + 104, &v196, v179, 0, v87, v167);

              sub_1AF635250(&v196);
            }
          }

          sub_1AFD53F14(0, &unk_1ED728DE0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptCompileAttempt);
          v93 = *(*(v87 + 40) + 16);
          v94 = *(v93 + 128);
          if (*(v94 + 16))
          {
            v95 = v92;
            v96 = sub_1AF449CB8(v92);
            if ((v97 & 1) != 0 && *(*(v93 + 24) + 16 * *(*(v94 + 56) + 8 * v96) + 32) == v95)
            {
              v196 = v95;
              v197 = &off_1F250F310;
              v198 = 1;
              v98 = v178;

              sub_1AF6304E8(v167 + 104, &v196, v179, 0, v98, v167);

              sub_1AF635250(&v196);
            }
          }
        }

        result = sub_1AFD53198(v58, type metadata accessor for ScriptIndex);
        v33 = (v185 + 1);
        v30 = v178;
        if ((v185 + 1) == v168)
        {
          return result;
        }
      }

LABEL_91:
      result = sub_1AFDFE518();
      __break(1u);
    }
  }

  else
  {
    v185 = v25;
    v179 = v13;
    v99 = a1[6];
    v172 = a1[7];
    if (v99 != v172)
    {
      v168 = type metadata accessor for SimpleScript(0);
      v167 = *(*(v168 - 8) + 72);
      sub_1AFD53F14(0, &unk_1ED72C4D0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptRuntime);
      v177 = v100;
      v101 = *(v100 - 8);
      v173 = v20 + 48;
      v166 = *(v101 + 72);
      v162 = 0x80000001AFF47E70;
      v182 = 0x80000001AFF4F1E0;
      v181 = (v20 + 56);
      v180 = (v184 + 32);
      v102 = &unk_1F2504018;
      if (v199 < 1029)
      {
        v102 = &unk_1F2503FE0;
      }

      v164 = v102;
      LODWORD(v163) = v195 | (v199 > 1032);
      v183 = xmmword_1AFE431C0;
      v169 = v22;
      v194 = v19;
      while (1)
      {
        v170 = a1[2];

        if (*(v30 + 184))
        {
          goto LABEL_91;
        }

        v104 = *(v30 + 168);
        v186 = v99;
        v105 = *(v104 + 4 * v99);
        v106 = *(*(v103 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v105 + 8);

        v107 = v176;
        if (*(v176 + 16) && (v108 = sub_1AF449D3C(v105 | (v106 << 32)), (v109 & 1) != 0))
        {
          v110 = (*(v107 + 56) + 8 * v108);
          v111 = *v110;
          v112 = v110[1];
          v114 = v185;
          v113 = v186;
        }

        else
        {

          if (*(v30 + 184))
          {
            goto LABEL_91;
          }

          v113 = v186;
          v111 = *(*(v30 + 168) + 4 * v186);
          v112 = *(*(v115 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v111 + 8);

          v114 = v185;
        }

        v116 = &v175[v167 * v113];
        v117 = v179;
        sub_1AFB12858(&v116[*(v168 + 40)], v179);
        v118 = *v173;
        if ((*v173)(v117, 1, v19) == 1)
        {

          if (*(v30 + 184))
          {
            goto LABEL_91;
          }

          v120 = *(*(v30 + 168) + 4 * v186);
          v121 = *(*(v119 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v120 + 8);

          *v114 = v120;
          v114[1] = v121;
          v30 = v178;
          swift_storeEnumTagMultiPayload();
          if (v118(v179, 1, v19) != 1)
          {
            sub_1AFD53CA8(v179, qword_1ED730680, type metadata accessor for ScriptIndex);
          }
        }

        else
        {
          sub_1AFD53D8C(v117, v114, type metadata accessor for ScriptIndex);
        }

        v122 = v169;
        sub_1AFD531F8(v114, v169, type metadata accessor for ScriptIndex);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1AFD53198(v122, type metadata accessor for ScriptIndex);
        }

        else
        {
          *&v123 = *v122;
          v124 = *(v107 + 16);
          v195 = v123;
          if (v124)
          {
            v125 = sub_1AF449D3C(v123);
            if (v127)
            {
              *&v126 = *(*(v107 + 56) + 8 * v125);
              v195 = v126;
            }
          }

          sub_1AFD53198(v114, type metadata accessor for ScriptIndex);
          *v114 = v195;
          swift_storeEnumTagMultiPayload();
        }

        v128 = &v174[v166 * v186];
        if (!*&v128[*(v177 + 10)] && !*&v128[*(v177 + 11)])
        {
          v129 = v164;
          if (v163)
          {
            v129 = &unk_1F2504050;
            if (v116[32] == 2)
            {
              sub_1AFD55360(0, &qword_1ED721EB8, &type metadata for ScriptFunction, MEMORY[0x1E69E6F90]);
              v129 = swift_allocObject();
              v129[1] = v183;
              v196 = 0xD000000000000017;
              v197 = v162;
              MEMORY[0x1B2718AE0](14906, 0xE200000000000000);
              MEMORY[0x1B2718AE0](0x706D6F635F786676, 0xEB00000000657475);
              v130 = v197;
              *(v129 + 4) = v196;
              *(v129 + 5) = v130;
              *(v129 + 48) = 0;
            }
          }

          v165 = v129;
          v131 = *(v129 + 2);
          if (v131)
          {
            v184 = v111 | (v112 << 32);
            v132 = v165 + 5;
            do
            {
              *&v195 = v131;
              v133 = *(v132 - 1);
              v134 = *v132;
              v199 = v132;
              v135 = v187;
              sub_1AFD531F8(v114, v187, type metadata accessor for ScriptIndex);
              (*v181)(v135, 0, 1, v194);

              v136 = sub_1AFAF8B58(v133, v134, v192, v193, v184, 0x656C706D6973uLL, 0xE600000000000000, v135);
              v138 = v137;

              sub_1AFD53CA8(v135, qword_1ED730680, type metadata accessor for ScriptIndex);
              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              v196 = 0;
              v197 = 0xE000000000000000;
              sub_1AFDFE218();

              v196 = 0xD000000000000022;
              v197 = v182;
              MEMORY[0x1B2718AE0](v136, v138);

              v140 = v196;
              v139 = v197;
              v141 = sub_1AFDFDA08();
              if (qword_1ED731058 != -1)
              {
                swift_once();
              }

              if (qword_1ED730E98 != -1)
              {
                swift_once();
              }

              v142 = qword_1ED73B890;
              sub_1AF5DD4A4(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
              v143 = swift_allocObject();
              *(v143 + 16) = v183;
              *(v143 + 56) = MEMORY[0x1E69E6158];
              *(v143 + 64) = sub_1AF0D544C();
              *(v143 + 32) = v140;
              *(v143 + 40) = v139;

              sub_1AFDFC4C8(v141, &dword_1AF0CE000, v142, "%{public}s", 10, 2, v143);

              v144 = v188;
              sub_1AFDFC288();
              v145 = v190;
              v146 = v191[12];
              v147 = v191[16];
              v148 = &v190[v191[20]];
              (*v180)(v190, v144, v189);
              *(v145 + v146) = v141;
              *(v145 + v147) = 0;
              *v148 = v140;
              *(v148 + 1) = v139;

              sub_1AFDFC608();

              sub_1AFD53198(v145, sub_1AF0D4E74);

              v132 = (v199 + 24);
              v131 = v195 - 1;
              v114 = v185;
            }

            while (v195 != 1);
          }

          v30 = v178;
          v149 = *(*(v178 + 40) + 16);
          v150 = *(v149 + 128);
          if (*(v150 + 16))
          {
            v151 = sub_1AF449CB8(v177);
            if ((v152 & 1) != 0 && *(*(v149 + 24) + 16 * *(*(v150 + 56) + 8 * v151) + 32) == v177)
            {
              v196 = v177;
              v197 = &off_1F2558F90;
              v198 = 1;

              sub_1AF6304E8((v170 + 13), &v196, v186, 0, v30, v170);

              sub_1AF635250(&v196);
            }
          }

          sub_1AFD53F14(0, &unk_1ED728DE0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptCompileAttempt);
          v154 = *(*(v30 + 40) + 16);
          v155 = *(v154 + 128);
          v19 = v194;
          if (*(v155 + 16))
          {
            v156 = v153;
            v157 = sub_1AF449CB8(v153);
            if ((v158 & 1) != 0 && *(*(v154 + 24) + 16 * *(*(v155 + 56) + 8 * v157) + 32) == v156)
            {
              v196 = v156;
              v197 = &off_1F250F310;
              v198 = 1;

              sub_1AF6304E8((v170 + 13), &v196, v186, 0, v30, v170);

              sub_1AF635250(&v196);
            }
          }
        }

        v99 = v186 + 1;
        result = sub_1AFD53198(v114, type metadata accessor for ScriptIndex);
        a1 = v171;
        if (v99 == v172)
        {
          return result;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AFD39AF0(void *a1, uint64_t a2, unint64_t a3, int a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v244 = a8;
  v263 = a7;
  v257 = a5;
  v258 = a6;
  v246 = a4;
  v245 = a3;
  v227 = a13;
  v226 = a12;
  v248 = a11;
  v241 = a10;
  sub_1AFD532D0(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v217 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v259 = (&v217 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v234 = &v217 - v22;
  v261 = type metadata accessor for ScriptIndex(0);
  v23 = *(v261 - 8);
  MEMORY[0x1EEE9AC00](v261);
  v25 = &v217 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = (&v217 - v27);
  MEMORY[0x1EEE9AC00](v29);
  v233 = &v217 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v251 = &v217 - v32;
  v33 = a1[1];
  v238 = sub_1AF706090(v33, a1);
  v225 = sub_1AF705FD4(v33, a1);
  v256 = v33;
  result = sub_1AF706AB0(v33, a1);
  v237 = result;
  v219 = v13;
  v35 = a1[11];
  v239 = a2;
  v232 = v35;
  if (!v35)
  {
    v252 = v28;
    v236 = v25;
    v127 = a1[6];
    v235 = a1[7];
    if (v127 == v235)
    {
      return result;
    }

    v128 = v18;
    v242 = type metadata accessor for SimpleScript(0);
    v233 = *(*(v242 - 8) + 72);
    sub_1AFD53F14(0, &unk_1ED72C4D0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptRuntime);
    v229 = v129;
    v228 = *(*(v129 - 1) + 72);
    sub_1AFD53F14(0, &unk_1ED728DE0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptCompileAttempt);
    v232 = v130;
    v231 = *(*(v130 - 1) + 72);
    v131 = (v23 + 48);
    v253 = (v23 + 56);
    v224 = "nction for script ";
    v223 = "tal library for script ";
    v221 = 0x80000001AFF4F110;
    v222 = 0x80000001AFF4F1B0;
    v234 = v18;
    v230 = (v23 + 48);
    while (1)
    {
      v142 = v237 + v231 * v127;
      sub_1AFD53C4C(v142, &unk_1ED728DE0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptCompileAttempt);

      v143 = sub_1AF6496EC(v127);

      if (*(a2 + 16) && (v144 = sub_1AF449D3C(v143), (v145 & 1) != 0))
      {
        v146 = (*(a2 + 56) + 8 * v144);
        v148 = *v146;
        v147 = v146[1];
      }

      else
      {

        v149 = sub_1AF6496EC(v127);

        v148 = v149;
        v147 = HIDWORD(v149);
      }

      v260 = v147;
      v150 = &v238[v233 * v127];
      sub_1AFB12858(v150 + *(v242 + 40), v128);
      v151 = *v131;
      v152 = (*v131)(v128, 1, v261);
      v247 = v142;
      if (v152 == 1)
      {

        v153 = sub_1AF6496EC(v127);

        v154 = v252;
        *v252 = v153;
        v155 = v261;
        swift_storeEnumTagMultiPayload();
        v156 = v151(v128, 1, v155);
        v142 = v247;
        if (v156 != 1)
        {
          sub_1AFD53CA8(v128, qword_1ED730680, type metadata accessor for ScriptIndex);
        }
      }

      else
      {
        v154 = v252;
        sub_1AFD53D8C(v128, v252, type metadata accessor for ScriptIndex);
      }

      v157 = v236;
      sub_1AFD531F8(v154, v236, type metadata accessor for ScriptIndex);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1AFD53198(v157, type metadata accessor for ScriptIndex);
      }

      else
      {
        *&v158 = *v157;
        v159 = *(a2 + 16);
        v262 = v158;
        if (v159)
        {
          v160 = sub_1AF449D3C(v158);
          v162 = v252;
          if (v163)
          {
            *&v161 = *(*(a2 + 56) + 8 * v160);
            v262 = v161;
          }
        }

        else
        {
          v162 = v252;
        }

        sub_1AFD53198(v162, type metadata accessor for ScriptIndex);
        *v162 = v262;
        swift_storeEnumTagMultiPayload();
      }

      sub_1AFD531F8(v150, v142, type metadata accessor for SimpleScript);
      v165 = sub_1AFAA8354(v164);
      v166 = v232;
      v167 = v142 + v232[9];
      *v167 = v165;
      *(v167 + 8) = 0;
      v168 = v166[10];
      v255 = 1;
      *(v142 + v168) = 1;
      *(v142 + v166[11]) = 0;
      v169 = v142 + v166[12];
      strcpy(v169, "<precompiled>");
      *(v169 + 14) = -4864;
      *(v142 + v166[13]) = MEMORY[0x1E69E7CC0];
      v170 = *v150;
      v269 = MEMORY[0x1E69E7CD0];
      v171 = *(v150 + 32);
      if (v171 < 4)
      {
        v255 = sub_1AFDFEE28();
      }

      v251 = v127;
      v243 = v170;

      v172 = sub_1AFD081BC(v245, v246 & 1);
      v173 = *(v172 + 2);
      if (v173)
      {
        break;
      }

      v132 = MEMORY[0x1E69E7CC0];
      v133 = MEMORY[0x1E69E7CC0];
LABEL_78:
      v134 = v251;
      v135 = &v225[v228 * v251];
      sub_1AFD53C4C(v135, &unk_1ED72C4D0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptRuntime);
      sub_1AFD53D18(v247, v135, &unk_1ED728DE0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptCompileAttempt);
      v136 = v229;
      v137 = (v135 + v229[15]);
      *v137 = v243;
      v137[1] = 0;
      *(v135 + v136[9]) = v173;
      *(v135 + v136[10]) = v133;
      *(v135 + v136[11]) = v132;
      v138 = v134;
      *(v135 + v136[12]) = 0;
      *(v135 + v136[13]) = 0;
      v139 = v135 + v136[14];
      *v139 = v245;
      *(v139 + 8) = v246 & 1;

      v140 = sub_1AF6496EC(v134);

      v266 = v136;
      v267 = &off_1F2558F90;
      v141 = sub_1AF585714(&v264);
      sub_1AFD53D18(v135, v141, &unk_1ED72C4D0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptRuntime);
      v268 = 0;
      sub_1AF8259D0(&v264, v242, v140);
      sub_1AF967B70(v269);
      result = sub_1AFD53198(v252, type metadata accessor for ScriptIndex);
      a2 = v239;
      v128 = v234;
LABEL_79:
      v127 = v138 + 1;
      v131 = v230;
      if (v127 == v235)
      {
        return result;
      }
    }

    *&v262 = 0;
    v240 = v172;
    v174 = (v172 + 48);
    v132 = MEMORY[0x1E69E7CC0];
    v250 = MEMORY[0x1E69E7CC0];
    v249 = v148 | (v260 << 32);
    v254 = v171;
    while (1)
    {
      v176 = *(v174 - 2);
      v177 = *(v174 - 1);
      LODWORD(v260) = *v174;
      if (v255)
      {
        swift_bridgeObjectRetain_n();

        v178 = v251;
        v179 = sub_1AF6496EC(v251);

        v180 = v178;
        v171 = v254;
        v181 = sub_1AF6496EC(v180);

        v182 = v259;
        *v259 = v181;
        v183 = v182;
        v184 = v261;
        swift_storeEnumTagMultiPayload();
        (*v253)(v183, 0, 1, v184);
      }

      else
      {
        v183 = v259;
        sub_1AFD531F8(v252, v259, type metadata accessor for ScriptIndex);
        (*v253)(v183, 0, 1, v261);
        swift_bridgeObjectRetain_n();
        v179 = v249;
      }

      v185 = sub_1AFAF8B58(v176, v177, v257, v258, v179, 0x656C706D6973uLL, 0xE600000000000000, v183);
      v187 = v186;

      sub_1AFD53CA8(v183, qword_1ED730680, type metadata accessor for ScriptIndex);

      sub_1AF0D2164(&v264, v185, v187);

      if (v171 >= 4)
      {
        break;
      }

      v188 = sub_1AFDFEE28();

      if (v188)
      {
        goto LABEL_108;
      }

      if (v171 == 2)
      {
        if (v248)
        {

          v195 = v132;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v195 = sub_1AF4246B0(0, *(v132 + 2) + 1, 1, v132);
          }

          v197 = *(v195 + 2);
          v196 = *(v195 + 3);
          v132 = v195;
          v198 = v248;
          if (v197 >= v196 >> 1)
          {
            v132 = sub_1AF4246B0(v196 > 1, v197 + 1, 1, v195);
          }

          *(v132 + 2) = v197 + 1;
          v199 = &v132[24 * v197];
          *(v199 + 4) = v185;
          *(v199 + 5) = v187;
          v199[48] = v260;
          *&v262 = v198;
        }

        else
        {

          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          v264 = 0;
          v265 = 0xE000000000000000;
          sub_1AFDFE218();
          MEMORY[0x1B2718AE0](0xD000000000000027, v224 | 0x8000000000000000);
          MEMORY[0x1B2718AE0](v185, v187);

          MEMORY[0x1B2718AE0](0xD000000000000031, v223 | 0x8000000000000000);
          v210 = v264;
          v209 = v265;
          v211 = sub_1AFDFDA08();
          if (qword_1ED731058 != -1)
          {
            v212 = v211;
            swift_once();
            v211 = v212;
          }

          v264 = 0;
          sub_1AF0D4F18(v211, &v264, v210, v209);
        }

        goto LABEL_101;
      }

      v200 = v244;
      if (!*(v244 + 16) || (v201 = sub_1AF419914(v185, v187), (v202 & 1) == 0))
      {

        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v264 = 0;
        v265 = 0xE000000000000000;
        sub_1AFDFE218();

        v264 = 0xD000000000000022;
        v265 = v221;
        MEMORY[0x1B2718AE0](v185, v187);

        v214 = v264;
        v213 = v265;
        v215 = sub_1AFDFDA08();
        a2 = v239;
        v128 = v234;
        v138 = v251;
        if (qword_1ED731058 == -1)
        {
          goto LABEL_138;
        }

LABEL_145:
        v216 = v215;
        swift_once();
        v215 = v216;
LABEL_138:
        v264 = 0;
        sub_1AF0D4F18(v215, &v264, v214, v213);

        result = sub_1AFD53198(v252, type metadata accessor for ScriptIndex);
        goto LABEL_79;
      }

      v203 = v201;

      v204 = *(*(v200 + 56) + 8 * v203);
      v205 = v250;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v205 = sub_1AF42469C(0, *(v205 + 2) + 1, 1, v205);
      }

      v207 = *(v205 + 2);
      v206 = *(v205 + 3);
      v250 = v205;
      if (v207 >= v206 >> 1)
      {
        v250 = sub_1AF42469C(v206 > 1, v207 + 1, 1, v250);
      }

      v208 = v250;
      *(v250 + 2) = v207 + 1;
      *&v208[8 * v207 + 32] = v204;
LABEL_100:

LABEL_101:
      v174 += 24;
      if (!--v173)
      {

        v173 = v262;
        v133 = v250;
        goto LABEL_78;
      }
    }

LABEL_108:
    if (!v263 || (v189 = *(v263 + 96), v190 = sub_1AFDFCEC8(), v191 = [v189 objectForKeyedSubscript_], v189, v190, !v191))
    {

LABEL_135:

      v128 = v234;
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v264 = 0;
      v265 = 0xE000000000000000;
      sub_1AFDFE218();

      v264 = 0xD000000000000025;
      v265 = v222;
      MEMORY[0x1B2718AE0](v185, v187);

      v214 = v264;
      v213 = v265;
      v215 = sub_1AFDFDA08();
      a2 = v239;
      v138 = v251;
      if (qword_1ED731058 != -1)
      {
        goto LABEL_145;
      }

      goto LABEL_138;
    }

    v192 = [v191 isUndefined];

    if (v192)
    {
      goto LABEL_135;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v132 = sub_1AF4246B0(0, *(v132 + 2) + 1, 1, v132);
    }

    v171 = v254;
    v194 = *(v132 + 2);
    v193 = *(v132 + 3);
    if (v194 >= v193 >> 1)
    {
      v132 = sub_1AF4246B0(v193 > 1, v194 + 1, 1, v132);
    }

    *(v132 + 2) = v194 + 1;
    v175 = &v132[24 * v194];
    *(v175 + 4) = v185;
    *(v175 + 5) = v187;
    v175[48] = v260;
    goto LABEL_100;
  }

  v36 = v234;
  v231 = a1[13];
  if (v231)
  {
    v240 = type metadata accessor for SimpleScript(0);
    v230 = *(*(v240 - 1) + 72);
    sub_1AFD53F14(0, &unk_1ED72C4D0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptRuntime);
    v224 = v37;
    v223 = *(*(v37 - 1) + 72);
    sub_1AFD53F14(0, &unk_1ED728DE0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptCompileAttempt);
    v38 = 0;
    v229 = v39;
    v228 = *(*(v39 - 1) + 72);
    v40 = (v23 + 48);
    v253 = (v23 + 56);
    v222 = "nction for script ";
    v221 = "tal library for script ";
    v218 = 0x80000001AFF4F110;
    v220 = 0x80000001AFF4F1B0;
    v236 = (v23 + 48);
    while (1)
    {
      v51 = *&v232[2 * v38];
      v247 = v237 + v228 * v38;
      sub_1AFD53C4C(v247, &unk_1ED728DE0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptCompileAttempt);

      v252 = v51;
      v52 = sub_1AF6496EC(v51);

      if (*(a2 + 16) && (v53 = sub_1AF449D3C(v52), (v54 & 1) != 0))
      {
        v55 = (*(a2 + 56) + 8 * v53);
        v56 = *v55;
        v57 = v55[1];
      }

      else
      {

        v58 = sub_1AF6496EC(v252);

        v56 = v58;
        v57 = HIDWORD(v58);
      }

      v243 = v38;
      v59 = &v238[v230 * v38];
      sub_1AFB12858(v59 + v240[10], v36);
      v60 = v36;
      v61 = *v40;
      if ((*v40)(v36, 1, v261) == 1)
      {

        v62 = sub_1AF6496EC(v252);

        v63 = v251;
        *v251 = v62;
        v64 = v261;
        swift_storeEnumTagMultiPayload();
        if (v61(v60, 1, v64) != 1)
        {
          sub_1AFD53CA8(v60, qword_1ED730680, type metadata accessor for ScriptIndex);
        }
      }

      else
      {
        v65 = v36;
        v63 = v251;
        sub_1AFD53D8C(v65, v251, type metadata accessor for ScriptIndex);
      }

      v66 = v63;
      v67 = v233;
      sub_1AFD531F8(v66, v233, type metadata accessor for ScriptIndex);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1AFD53198(v67, type metadata accessor for ScriptIndex);
      }

      else
      {
        *&v68 = *v67;
        v69 = *(a2 + 16);
        v262 = v68;
        if (v69)
        {
          v70 = sub_1AF449D3C(v68);
          v72 = v251;
          if (v73)
          {
            *&v71 = *(*(a2 + 56) + 8 * v70);
            v262 = v71;
          }
        }

        else
        {
          v72 = v251;
        }

        sub_1AFD53198(v72, type metadata accessor for ScriptIndex);
        *v72 = v262;
        swift_storeEnumTagMultiPayload();
      }

      v74 = v247;
      sub_1AFD531F8(v59, v247, type metadata accessor for SimpleScript);
      v76 = sub_1AFAA8354(v75);
      v77 = v229;
      v78 = v74 + v229[9];
      *v78 = v76;
      *(v78 + 8) = 0;
      v79 = v77[10];
      v255 = 1;
      *(v74 + v79) = 1;
      *(v74 + v77[11]) = 0;
      v80 = v74 + v77[12];
      strcpy(v80, "<precompiled>");
      *(v80 + 14) = -4864;
      *(v74 + v77[13]) = MEMORY[0x1E69E7CC0];
      v81 = *v59;
      v269 = MEMORY[0x1E69E7CD0];
      v82 = *(v59 + 32);
      if (v82 < 4)
      {
        v255 = sub_1AFDFEE28();
      }

      v242 = v81;

      v83 = sub_1AFD081BC(v245, v246 & 1);
      v84 = *(v83 + 2);
      if (v84)
      {
        break;
      }

      v41 = MEMORY[0x1E69E7CC0];
      v42 = MEMORY[0x1E69E7CC0];
LABEL_5:
      v43 = v243;
      v44 = &v225[v223 * v243];
      sub_1AFD53C4C(v44, &unk_1ED72C4D0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptRuntime);
      sub_1AFD53D18(v247, v44, &unk_1ED728DE0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptCompileAttempt);
      v45 = v224;
      v46 = (v44 + *(v224 + 15));
      *v46 = v242;
      v46[1] = 0;
      *(v44 + v45[9]) = v84;
      *(v44 + v45[10]) = v42;
      *(v44 + v45[11]) = v41;
      v47 = v43;
      *(v44 + v45[12]) = 0;
      *(v44 + v45[13]) = 0;
      v48 = v44 + v45[14];
      *v48 = v245;
      *(v48 + 8) = v246 & 1;

      v49 = sub_1AF6496EC(v252);

      v266 = v45;
      v267 = &off_1F2558F90;
      v50 = sub_1AF585714(&v264);
      sub_1AFD53D18(v44, v50, &unk_1ED72C4D0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptRuntime);
      v268 = 0;
      sub_1AF8259D0(&v264, v240, v49);
      sub_1AF967B70(v269);
      result = sub_1AFD53198(v251, type metadata accessor for ScriptIndex);
      a2 = v239;
      v36 = v234;
      v40 = v236;
LABEL_6:
      v38 = v47 + 1;
      if (v38 == v231)
      {
        return result;
      }
    }

    *&v262 = 0;
    v235 = v83;
    v85 = (v83 + 48);
    v41 = MEMORY[0x1E69E7CC0];
    v250 = MEMORY[0x1E69E7CC0];
    v249 = v56 | (v57 << 32);
    v254 = v82;
    while (1)
    {
      v87 = *(v85 - 2);
      v88 = *(v85 - 1);
      LODWORD(v260) = *v85;
      if (v255)
      {
        swift_bridgeObjectRetain_n();

        v89 = v252;
        v90 = sub_1AF6496EC(v252);

        v91 = v89;
        v82 = v254;
        v92 = sub_1AF6496EC(v91);

        v93 = v259;
        *v259 = v92;
        v94 = v93;
        v95 = v261;
        swift_storeEnumTagMultiPayload();
        (*v253)(v94, 0, 1, v95);
      }

      else
      {
        v94 = v259;
        sub_1AFD531F8(v251, v259, type metadata accessor for ScriptIndex);
        (*v253)(v94, 0, 1, v261);
        swift_bridgeObjectRetain_n();
        v90 = v249;
      }

      v96 = sub_1AFAF8B58(v87, v88, v257, v258, v90, 0x656C706D6973uLL, 0xE600000000000000, v94);
      v98 = v97;

      sub_1AFD53CA8(v94, qword_1ED730680, type metadata accessor for ScriptIndex);

      sub_1AF0D2164(&v264, v96, v98);

      if (v82 >= 4)
      {
        break;
      }

      v99 = sub_1AFDFEE28();

      if (v99)
      {
        goto LABEL_35;
      }

      if (v82 == 2)
      {
        if (v248)
        {

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v41 = sub_1AF4246B0(0, *(v41 + 2) + 1, 1, v41);
          }

          v107 = *(v41 + 2);
          v106 = *(v41 + 3);
          v108 = v248;
          if (v107 >= v106 >> 1)
          {
            v41 = sub_1AF4246B0(v106 > 1, v107 + 1, 1, v41);
          }

          *(v41 + 2) = v107 + 1;
          v109 = &v41[24 * v107];
          *(v109 + 4) = v96;
          *(v109 + 5) = v98;
          v109[48] = v260;
          *&v262 = v108;
        }

        else
        {

          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          v264 = 0;
          v265 = 0xE000000000000000;
          sub_1AFDFE218();
          MEMORY[0x1B2718AE0](0xD000000000000027, v222 | 0x8000000000000000);
          MEMORY[0x1B2718AE0](v96, v98);

          MEMORY[0x1B2718AE0](0xD000000000000031, v221 | 0x8000000000000000);
          v120 = v264;
          v119 = v265;
          v121 = sub_1AFDFDA08();
          if (qword_1ED731058 != -1)
          {
            v122 = v121;
            swift_once();
            v121 = v122;
          }

          v264 = 0;
          sub_1AF0D4F18(v121, &v264, v120, v119);
        }

        goto LABEL_28;
      }

      v110 = v244;
      if (!*(v244 + 16) || (v111 = sub_1AF419914(v96, v98), (v112 & 1) == 0))
      {

        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v264 = 0;
        v265 = 0xE000000000000000;
        sub_1AFDFE218();

        v264 = 0xD000000000000022;
        v265 = v218;
        MEMORY[0x1B2718AE0](v96, v98);

        v124 = v264;
        v123 = v265;
        v125 = sub_1AFDFDA08();
        a2 = v239;
        v36 = v234;
        v47 = v243;
        v40 = v236;
        if (qword_1ED731058 == -1)
        {
          goto LABEL_65;
        }

LABEL_72:
        v126 = v125;
        swift_once();
        v125 = v126;
LABEL_65:
        v264 = 0;
        sub_1AF0D4F18(v125, &v264, v124, v123);

        result = sub_1AFD53198(v251, type metadata accessor for ScriptIndex);
        goto LABEL_6;
      }

      v113 = v111;

      v114 = *(*(v110 + 56) + 8 * v113);
      v115 = v250;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v115 = sub_1AF42469C(0, *(v115 + 2) + 1, 1, v115);
      }

      v117 = *(v115 + 2);
      v116 = *(v115 + 3);
      v250 = v115;
      if (v117 >= v116 >> 1)
      {
        v250 = sub_1AF42469C(v116 > 1, v117 + 1, 1, v250);
      }

      v118 = v250;
      *(v250 + 2) = v117 + 1;
      *&v118[8 * v117 + 32] = v114;
LABEL_27:

LABEL_28:
      v85 += 24;
      if (!--v84)
      {

        v84 = v262;
        v42 = v250;
        goto LABEL_5;
      }
    }

LABEL_35:
    if (!v263 || (v100 = *(v263 + 96), v101 = sub_1AFDFCEC8(), v102 = [v100 objectForKeyedSubscript_], v100, v101, !v102))
    {

LABEL_62:

      v36 = v234;
      v40 = v236;
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v264 = 0;
      v265 = 0xE000000000000000;
      sub_1AFDFE218();

      v264 = 0xD000000000000025;
      v265 = v220;
      MEMORY[0x1B2718AE0](v96, v98);

      v124 = v264;
      v123 = v265;
      v125 = sub_1AFDFDA08();
      a2 = v239;
      v47 = v243;
      if (qword_1ED731058 != -1)
      {
        goto LABEL_72;
      }

      goto LABEL_65;
    }

    v103 = [v102 isUndefined];

    if (v103)
    {
      goto LABEL_62;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1AF4246B0(0, *(v41 + 2) + 1, 1, v41);
    }

    v82 = v254;
    v105 = *(v41 + 2);
    v104 = *(v41 + 3);
    if (v105 >= v104 >> 1)
    {
      v41 = sub_1AF4246B0(v104 > 1, v105 + 1, 1, v41);
    }

    *(v41 + 2) = v105 + 1;
    v86 = &v41[24 * v105];
    *(v86 + 4) = v96;
    *(v86 + 5) = v98;
    v86[48] = v260;
    goto LABEL_27;
  }

  return result;
}

uint64_t sub_1AFD3BDCC(void *a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5, unint64_t a6)
{
  v188 = a6;
  v187 = a5;
  LODWORD(v200) = a4;
  v199 = a3;
  sub_1AF0D4E74(0);
  v186 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v185 = &v175 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = sub_1AFDFC298();
  v195 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184);
  v183 = &v175 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFD532D0(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = (&v175 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v182 = &v175 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v181 = &v175 - v17;
  v18 = type metadata accessor for ScriptIndex(0);
  *&v190 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v175 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v175 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v196 = (&v175 - v25);
  MEMORY[0x1EEE9AC00](v26);
  v210 = (&v175 - v27);
  v28 = a1[1];
  v29 = sub_1AF706D00(v28, a1);
  v30 = sub_1AF7064D0(v28, a1);
  result = sub_1AF7069F4(v28, a1);
  v32 = a1[11];
  v191 = a2;
  v204 = v18;
  v192 = v28;
  if (!v32)
  {
    v210 = v23;
    v198 = v20;
    v206 = v13;
    v100 = a1[6];
    v196 = a1[7];
    if (v100 == v196)
    {
      return result;
    }

    v202 = type metadata accessor for MetalFunctionScript(0);
    v101 = *(*(v202 - 8) + 72);
    sub_1AFD53F14(0, &unk_1ED72C510, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptRuntime);
    v205 = v102;
    v103 = *(v102 - 8);
    v203 = v190 + 48;
    v104 = *(v103 + 72);
    LODWORD(v181) = v200 | (v199 > 3004);
    v180 = 0x80000001AFF4F1E0;
    v179 = (v190 + 56);
    v178 = (v195 + 32);
    v193 = v104;
    v105 = &v30[v100 * v104];
    v194 = v101;
    v106 = &v29[v100 * v101];
    v176 = "vfx_custom_shader_%SCRIPT_ID%";
    v177 = "%PROJECT%_%KIND%_%ORIG_ENTITY%";
    v190 = xmmword_1AFE431C0;
    v197 = a1;
    while (1)
    {
      v195 = a1[2];

      if (*(v28 + 184))
      {
        while (1)
        {
LABEL_98:
          sub_1AFDFE518();
          __break(1u);
        }
      }

      v108 = *(*(v28 + 168) + 4 * v100);
      v109 = *(*(v107 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v108 + 8);

      v110 = v206;
      if (*(a2 + 16) && (v111 = sub_1AF449D3C(v108 | (v109 << 32)), (v112 & 1) != 0))
      {
        v113 = (*(a2 + 56) + 8 * v111);
        v114 = *v113;
        v199 = v113[1];
      }

      else
      {

        if (*(v28 + 184))
        {
          goto LABEL_98;
        }

        v114 = *(*(v28 + 168) + 4 * v100);
        v199 = *(*(v115 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v114 + 8);
      }

      sub_1AFB12858(&v106[*(v202 + 24)], v110);
      v116 = *v203;
      v117 = (*v203)(v110, 1, v204);
      *&v200 = v114;
      if (v117 == 1)
      {
        v118 = v192;

        if (*(v118 + 184))
        {
          goto LABEL_98;
        }

        v120 = *(*(v118 + 168) + 4 * v100);
        v121 = *(*(v119 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v120 + 8);

        v122 = v210;
        *v210 = v120;
        v122[1] = v121;
        v123 = v204;
        swift_storeEnumTagMultiPayload();
        v124 = v206;
        if (v116(v206, 1, v123) != 1)
        {
          sub_1AFD53CA8(v124, qword_1ED730680, type metadata accessor for ScriptIndex);
        }
      }

      else
      {
        v122 = v210;
        sub_1AFD53D8C(v110, v210, type metadata accessor for ScriptIndex);
      }

      v125 = v122;
      v126 = v198;
      sub_1AFD531F8(v125, v198, type metadata accessor for ScriptIndex);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1AFD53198(v126, type metadata accessor for ScriptIndex);
      }

      else
      {
        *&v127 = *v126;
        v128 = *(a2 + 16);
        v201 = v127;
        if (v128)
        {
          v129 = sub_1AF449D3C(v127);
          v131 = v210;
          if (v132)
          {
            *&v130 = *(*(a2 + 56) + 8 * v129);
            v201 = v130;
          }
        }

        else
        {
          v131 = v210;
        }

        sub_1AFD53198(v131, type metadata accessor for ScriptIndex);
        *v131 = v201;
        swift_storeEnumTagMultiPayload();
      }

      if (!*&v105[*(v205 + 40)] && !*&v105[*(v205 + 44)])
      {
        break;
      }

LABEL_52:
      ++v100;
      result = sub_1AFD53198(v210, type metadata accessor for ScriptIndex);
      v105 += v193;
      v106 += v194;
      v28 = v192;
      if (v196 == v100)
      {
        return result;
      }
    }

    v133 = *&v106[*(v202 + 32)];
    if (v133[2])
    {
      v135 = v133[4];
      v134 = v133[5];
    }

    else
    {
      v135 = 0;
      v134 = 0;
    }

    v136 = sub_1AFB08DA4(v135, v134, 0, 0xE000000000000000, 1, 1);
    v138 = v137;

    if ((v181 & 1) == 0)
    {
      sub_1AFD55360(0, &qword_1ED721EB8, &type metadata for ScriptFunction, MEMORY[0x1E69E6F90]);
      v142 = swift_allocObject();
      *(v142 + 16) = v190;
      LOBYTE(v139) = v106[*(v202 + 36)];
      *(v142 + 32) = v136;
LABEL_84:
      *(v142 + 40) = v138;
      *(v142 + 48) = v139;
      v145 = v200 | (v199 << 32);
      *&v201 = v142;
      v146 = *(v142 + 32);
      v147 = v182;
      sub_1AFD531F8(v210, v182, type metadata accessor for ScriptIndex);
      (*v179)(v147, 0, 1, v204);

      v148 = sub_1AFAF8B58(v146, v138, v187, v188, v145, 0x6C656E72656BuLL, 0xE600000000000000, v147);
      v150 = v149;

      sub_1AFD53CA8(v147, qword_1ED730680, type metadata accessor for ScriptIndex);
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v207 = 0;
      v208 = 0xE000000000000000;
      sub_1AFDFE218();

      v207 = 0xD000000000000022;
      v208 = v180;
      MEMORY[0x1B2718AE0](v148, v150);

      v152 = v207;
      v151 = v208;
      v153 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        swift_once();
      }

      if (qword_1ED730E98 != -1)
      {
        swift_once();
      }

      v154 = qword_1ED73B890;
      sub_1AF5DD4A4(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v155 = swift_allocObject();
      *(v155 + 16) = v190;
      *(v155 + 56) = MEMORY[0x1E69E6158];
      *(v155 + 64) = sub_1AF0D544C();
      *(v155 + 32) = v152;
      *(v155 + 40) = v151;

      sub_1AFDFC4C8(v153, &dword_1AF0CE000, v154, "%{public}s", 10, 2, v155);

      v156 = v151;
      v157 = v183;
      sub_1AFDFC288();
      v158 = v186[12];
      v199 = v186[16];
      *&v200 = v158;
      v159 = v186[20];
      LOBYTE(v155) = v153;
      v160 = v185;
      v189 = v152;
      v161 = &v185[v159];
      (*v178)(v185, v157, v184);
      v162 = v199;
      *(v160 + v200) = v155;
      *(v160 + v162) = 0;
      *v161 = v189;
      *(v161 + 1) = v156;

      sub_1AFDFC608();

      sub_1AFD53198(v160, sub_1AF0D4E74);

      v163 = v192;
      v164 = *(*(v192 + 40) + 16);
      v165 = *(v164 + 128);
      if (*(v165 + 16))
      {
        v166 = sub_1AF449CB8(v205);
        if ((v167 & 1) != 0 && *(*(v164 + 24) + 16 * *(*(v165 + 56) + 8 * v166) + 32) == v205)
        {
          v207 = v205;
          v208 = &off_1F2558F90;
          v209 = 1;

          sub_1AF6304E8(v195 + 104, &v207, v100, 0, v163, v195);

          sub_1AF635250(&v207);
        }
      }

      sub_1AFD53F14(0, &unk_1ED728E20, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptCompileAttempt);
      v169 = *(*(v163 + 40) + 16);
      v170 = *(v169 + 128);
      a2 = v191;
      a1 = v197;
      if (*(v170 + 16))
      {
        v171 = v168;
        v172 = sub_1AF449CB8(v168);
        if ((v173 & 1) != 0 && *(*(v169 + 24) + 16 * *(*(v170 + 56) + 8 * v172) + 32) == v171)
        {
          v207 = v171;
          v208 = &off_1F250F310;
          v209 = 1;
          v174 = v192;

          sub_1AF6304E8(v195 + 104, &v207, v100, 0, v174, v195);

          sub_1AF635250(&v207);
        }
      }

      goto LABEL_52;
    }

    v139 = v106[*(v202 + 36)];
    if (v139 > 1)
    {
      if (v139 != 2)
      {
        goto LABEL_98;
      }
    }

    else if (!v106[*(v202 + 36)])
    {
      v140 = 0xD000000000000017;
      v141 = &v203;
LABEL_83:
      v143 = *(v141 - 32) | 0x8000000000000000;
      v207 = v140;
      v208 = v143;

      MEMORY[0x1B2718AE0](14906, 0xE200000000000000);
      MEMORY[0x1B2718AE0](v136, v138);
      swift_bridgeObjectRelease_n();
      v144 = v207;
      v138 = v208;
      sub_1AFD55360(0, &qword_1ED721EB8, &type metadata for ScriptFunction, MEMORY[0x1E69E6F90]);
      v142 = swift_allocObject();
      *(v142 + 16) = v190;
      *(v142 + 32) = v144;
      goto LABEL_84;
    }

    v140 = 0xD00000000000001DLL;
    v141 = &v205;
    goto LABEL_83;
  }

  v206 = v32;
  v33 = a1[13];
  v34 = v181;
  if (v33)
  {
    *&v201 = type metadata accessor for MetalFunctionScript(0);
    v194 = *(*(v201 - 8) + 72);
    sub_1AFD53F14(0, &unk_1ED72C510, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptRuntime);
    v203 = v35;
    v36 = *(v35 - 8);
    v202 = v190 + 48;
    v193 = *(v36 + 72);
    LODWORD(v180) = v200 | (v199 > 3004);
    v179 = 0x80000001AFF4F1E0;
    v178 = (v190 + 56);
    v177 = (v195 + 32);
    v175 = "vfx_custom_shader_%SCRIPT_ID%";
    v176 = "%PROJECT%_%KIND%_%ORIG_ENTITY%";
    v190 = xmmword_1AFE431C0;
    v197 = a1;
    while (1)
    {
      v37 = *v206;
      v205 = v33;
      ++v206;
      v195 = a1[2];

      if (*(v28 + 184))
      {
        goto LABEL_98;
      }

      v39 = *(*(v28 + 168) + 4 * v37);
      v40 = *(*(v38 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v39 + 8);

      if (*(a2 + 16) && (v41 = sub_1AF449D3C(v39 | (v40 << 32)), (v42 & 1) != 0))
      {
        v43 = (*(a2 + 56) + 8 * v41);
        v44 = *v43;
        v198 = v43[1];
        v199 = v44;
      }

      else
      {

        if (*(v28 + 184))
        {
          goto LABEL_98;
        }

        v46 = *(*(v28 + 168) + 4 * v37);
        v198 = *(*(v45 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v46 + 8);
        v199 = v46;
      }

      v47 = v210;
      sub_1AFB12858(&v29[*(v201 + 24)], v34);
      v48 = *v202;
      if ((*v202)(v34, 1, v18) == 1)
      {

        if (*(v28 + 184))
        {
          goto LABEL_98;
        }

        v50 = *(*(v28 + 168) + 4 * v37);
        v51 = *(*(v49 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v50 + 8);

        v52 = v210;
        *v210 = v50;
        v52[1] = v51;
        v47 = v52;
        swift_storeEnumTagMultiPayload();
        v53 = v48(v34, 1, v18);
        a2 = v191;
        if (v53 != 1)
        {
          sub_1AFD53CA8(v34, qword_1ED730680, type metadata accessor for ScriptIndex);
        }
      }

      else
      {
        sub_1AFD53D8C(v34, v47, type metadata accessor for ScriptIndex);
      }

      v54 = v196;
      sub_1AFD531F8(v47, v196, type metadata accessor for ScriptIndex);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1AFD53198(v54, type metadata accessor for ScriptIndex);
      }

      else
      {
        *&v55 = *v54;
        v56 = *(a2 + 16);
        v200 = v55;
        if (v56)
        {
          v57 = sub_1AF449D3C(v55);
          if (v59)
          {
            *&v58 = *(*(a2 + 56) + 8 * v57);
            v200 = v58;
          }
        }

        sub_1AFD53198(v47, type metadata accessor for ScriptIndex);
        *v47 = v200;
        swift_storeEnumTagMultiPayload();
      }

      if (!*&v30[*(v203 + 40)] && !*&v30[*(v203 + 44)])
      {
        break;
      }

LABEL_4:
      result = sub_1AFD53198(v210, type metadata accessor for ScriptIndex);
      v30 += v193;
      v29 += v194;
      v33 = v205 - 1;
      a1 = v197;
      if (v205 == 1)
      {
        return result;
      }
    }

    v60 = *&v29[*(v201 + 32)];
    if (v60[2])
    {
      v62 = v60[4];
      v61 = v60[5];
    }

    else
    {
      v62 = 0;
      v61 = 0;
    }

    v63 = sub_1AFB08DA4(v62, v61, 0, 0xE000000000000000, 1, 1);
    v65 = v64;

    if ((v180 & 1) == 0)
    {
      sub_1AFD55360(0, &qword_1ED721EB8, &type metadata for ScriptFunction, MEMORY[0x1E69E6F90]);
      v69 = swift_allocObject();
      *(v69 + 16) = v190;
      LOBYTE(v66) = v29[*(v201 + 36)];
      *(v69 + 32) = v63;
LABEL_35:
      *(v69 + 40) = v65;
      *(v69 + 48) = v66;
      v72 = v199 | (v198 << 32);
      *&v200 = v69;
      v73 = *(v69 + 32);
      v74 = v182;
      sub_1AFD531F8(v210, v182, type metadata accessor for ScriptIndex);
      (*v178)(v74, 0, 1, v18);

      v75 = sub_1AFAF8B58(v73, v65, v187, v188, v72, 0x6C656E72656BuLL, 0xE600000000000000, v74);
      v77 = v76;

      sub_1AFD53CA8(v74, qword_1ED730680, type metadata accessor for ScriptIndex);
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v207 = 0;
      v208 = 0xE000000000000000;
      sub_1AFDFE218();

      v207 = 0xD000000000000022;
      v208 = v179;
      MEMORY[0x1B2718AE0](v75, v77);

      v79 = v207;
      v78 = v208;
      v80 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        swift_once();
      }

      v199 = v29;
      v189 = v37;
      if (qword_1ED730E98 != -1)
      {
        swift_once();
      }

      v81 = qword_1ED73B890;
      sub_1AF5DD4A4(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v82 = swift_allocObject();
      *(v82 + 16) = v190;
      *(v82 + 56) = MEMORY[0x1E69E6158];
      *(v82 + 64) = sub_1AF0D544C();
      *(v82 + 32) = v79;
      *(v82 + 40) = v78;

      sub_1AFDFC4C8(v80, &dword_1AF0CE000, v81, "%{public}s", 10, 2, v82, v175, v176);

      v198 = v79;
      v83 = v183;
      sub_1AFDFC288();
      v84 = v186[12];
      v85 = v186[16];
      LOBYTE(v81) = v80;
      v86 = v185;
      v87 = v78;
      v88 = &v185[v186[20]];
      (*v177)(v185, v83, v184);
      *(v86 + v84) = v81;
      *(v86 + v85) = 0;
      *v88 = v198;
      *(v88 + 1) = v87;

      sub_1AFDFC608();

      sub_1AFD53198(v86, sub_1AF0D4E74);

      v28 = v192;
      v89 = *(*(v192 + 40) + 16);
      v90 = *(v89 + 128);
      v91 = v189;
      if (*(v90 + 16))
      {
        v92 = sub_1AF449CB8(v203);
        if ((v93 & 1) != 0 && *(*(v89 + 24) + 16 * *(*(v90 + 56) + 8 * v92) + 32) == v203)
        {
          v207 = v203;
          v208 = &off_1F2558F90;
          v209 = 1;

          sub_1AF6304E8(v195 + 104, &v207, v91, 0, v28, v195);

          sub_1AF635250(&v207);
        }
      }

      sub_1AFD53F14(0, &unk_1ED728E20, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptCompileAttempt);
      v95 = *(*(v28 + 40) + 16);
      v96 = *(v95 + 128);
      a2 = v191;
      v18 = v204;
      v34 = v181;
      v29 = v199;
      if (*(v96 + 16))
      {
        v97 = v94;
        v98 = sub_1AF449CB8(v94);
        if ((v99 & 1) != 0 && *(*(v95 + 24) + 16 * *(*(v96 + 56) + 8 * v98) + 32) == v97)
        {
          v207 = v97;
          v208 = &off_1F250F310;
          v209 = 1;

          sub_1AF6304E8(v195 + 104, &v207, v189, 0, v28, v195);

          sub_1AF635250(&v207);
        }
      }

      goto LABEL_4;
    }

    v66 = v29[*(v201 + 36)];
    if (v66 > 1)
    {
      if (v66 != 2)
      {
        goto LABEL_98;
      }
    }

    else if (!v29[*(v201 + 36)])
    {
      v67 = 0xD000000000000017;
      v68 = &v202;
LABEL_34:
      v70 = *(v68 - 32) | 0x8000000000000000;
      v207 = v67;
      v208 = v70;

      MEMORY[0x1B2718AE0](14906, 0xE200000000000000);
      MEMORY[0x1B2718AE0](v63, v65);
      swift_bridgeObjectRelease_n();
      v71 = v207;
      v65 = v208;
      sub_1AFD55360(0, &qword_1ED721EB8, &type metadata for ScriptFunction, MEMORY[0x1E69E6F90]);
      v69 = swift_allocObject();
      *(v69 + 16) = v190;
      *(v69 + 32) = v71;
      goto LABEL_35;
    }

    v67 = 0xD00000000000001DLL;
    v68 = &v203;
    goto LABEL_34;
  }

  return result;
}