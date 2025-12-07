void btSequentialImpulseConstraintSolver::convertContact(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 784);
  v7 = *(a2 + 792);
  inited = btSequentialImpulseConstraintSolver::getOrInitSolverBody(a1, v6);
  v140 = v7;
  v9 = btSequentialImpulseConstraintSolver::getOrInitSolverBody(a1, v7);
  v10 = *(a1 + 24);
  v136 = (v10 + 224 * v9);
  v137 = (v10 + 224 * inited);
  if (v137[8].f32[0] != 0.0 || v137[8].f32[1] != 0.0 || v137[8].f32[2] != 0.0 || v136[8].f32[0] != 0.0 || v136[8].f32[1] != 0.0 || v136[8].f32[2] != 0.0)
  {
    v11 = *(a2 + 800);
    if (v11 >= 1)
    {
      v12 = 0;
      v13 = a2 + 16;
      v139 = 1;
      v138 = v6;
      while (1)
      {
        v14 = v13 + 192 * v12;
        if (*(v14 + 80) <= *(a2 + 808))
        {
          break;
        }

LABEL_78:
        if (++v12 >= v11)
        {
          return;
        }
      }

      v144 = 0;
      v15 = *(a1 + 44);
      v16 = v15;
      if (v15 == *(a1 + 48))
      {
        v17 = v15 ? 2 * v15 : 1;
        v16 = *(a1 + 44);
        if (v15 < v17)
        {
          if (v17)
          {
            v18 = btAlignedAllocInternal(160 * v17, 16);
          }

          else
          {
            v18 = 0;
          }

          v19 = *(a1 + 44);
          if (v19 >= 1)
          {
            v20 = 0;
            v21 = 160 * v19;
            do
            {
              v22 = (v18 + v20);
              v23 = (*(a1 + 56) + v20);
              *v22 = *v23;
              v22[1] = v23[1];
              v22[2] = v23[2];
              v22[3] = v23[3];
              v22[4] = v23[4];
              v22[5] = v23[5];
              v24 = v23[6];
              v25 = v23[7];
              v26 = v23[9];
              v22[8] = v23[8];
              v22[9] = v26;
              v22[6] = v24;
              v22[7] = v25;
              v20 += 160;
            }

            while (v21 != v20);
          }

          v27 = *(a1 + 56);
          if (v27 && *(a1 + 64) == 1)
          {
            btAlignedFreeInternal(v27);
          }

          *(a1 + 64) = 1;
          *(a1 + 56) = v18;
          *(a1 + 48) = v17;
          v16 = *(a1 + 44);
        }
      }

      *(a1 + 44) = v16 + 1;
      v28 = *(a1 + 56) + 160 * v15;
      *(v28 + 152) = inited;
      *(v28 + 156) = v9;
      *(v28 + 136) = v14;
      btSequentialImpulseConstraintSolver::setupContactConstraint(a1, v28, inited, v9, v14, a3, &v143, &v144, &v144 + 1, &v146, &v145);
      *(v28 + 148) = *(a1 + 108);
      v31 = 0uLL;
      v32 = 0uLL;
      if (v137[13].i64[0])
      {
        v32 = vaddq_f32(v137[12], v137[5]);
      }

      v33 = v138;
      if (v136[13].i64[0])
      {
        v31 = vaddq_f32(v136[12], v136[5]);
      }

      if (*(v14 + 88) <= 0.0 || v139 < 1)
      {
LABEL_55:
        if (*(a3 + 64) & 0x20) != 0 && (*(v14 + 120))
        {
          v88 = *(&v144 + 1);
          btSequentialImpulseConstraintSolver::addFrictionConstraint(a1, (v14 + 160), inited, v9, v15, v14, &v146, &v145, *(&v144 + 1), *(v14 + 136), *(v14 + 144), v132, v134);
          if ((*(a3 + 64) & 0x10) != 0)
          {
            btSequentialImpulseConstraintSolver::addFrictionConstraint(a1, (v14 + 176), inited, v9, v15, v14, &v146, &v145, v88, *(v14 + 140), *(v14 + 148), v133, v135);
          }

          btSequentialImpulseConstraintSolver::setFrictionConstraintImpulse(a1, v28, inited, v9, v14, a3, v89);
        }

        else
        {
          v90 = *(v14 + 64);
          v91 = vsubq_f32(v143, vmulq_n_f32(v90, *&v144));
          v91.i32[3] = 0;
          *(v14 + 160) = v91;
          v92 = *(a3 + 64);
          if ((v92 & 0x40) != 0 || (v93 = vmulq_f32(v91, v91), v94 = vadd_f32(vpadd_f32(*v93.i8, *v93.i8), *&vextq_s8(v93, v93, 8uLL)).f32[0], v94 <= 0.00000011921))
          {
            v100 = v90.f32[1];
            v101 = fabsf(v90.f32[2]) <= 0.70711;
            v102 = (v100 * v100) + (v90.f32[0] * v90.f32[0]);
            v103 = 1.0 / sqrtf(v102);
            v104 = -(v90.f32[1] * v103);
            v105 = v90.f32[0] * v103;
            v106 = -(v90.f32[2] * (v90.f32[0] * v103));
            v107 = v90.f32[2] * v104;
            v108 = v102 * v103;
            v109 = (v90.f32[2] * v90.f32[2]) + (v100 * v100);
            v110 = 1.0 / sqrtf(v109);
            v111 = -(v90.f32[2] * v110);
            v112 = v90.f32[1] * v110;
            v113 = v109 * v110;
            v114 = -(v90.f32[0] * (v90.f32[1] * v110));
            v115 = v111 * v90.f32[0];
            if (v101)
            {
              v111 = v105;
              v112 = 0.0;
            }

            else
            {
              v104 = 0.0;
            }

            if (v101)
            {
              v113 = v106;
              v116 = v107;
            }

            else
            {
              v116 = v114;
            }

            if (v101)
            {
              v115 = v108;
            }

            *(v14 + 160) = v104;
            *(v14 + 164) = v111;
            *(v14 + 168) = v112;
            *(v14 + 176) = v113;
            *(v14 + 180) = v116;
            *(v14 + 184) = v115;
            v117 = *(&v144 + 1);
            if ((v92 & 0x10) != 0)
            {
              applyAnisotropicFriction(v138, (v14 + 176), 1);
              applyAnisotropicFriction(v140, (v14 + 176), 1);
              btSequentialImpulseConstraintSolver::addFrictionConstraint(a1, (v14 + 176), inited, v9, v15, v14, &v146, &v145, v117, 0.0, 0.0, v132, v134);
            }

            applyAnisotropicFriction(v138, (v14 + 160), 1);
            applyAnisotropicFriction(v140, (v14 + 160), 1);
            btSequentialImpulseConstraintSolver::addFrictionConstraint(a1, (v14 + 160), inited, v9, v15, v14, &v146, &v145, v117, 0.0, 0.0, v132, v134);
            if ((~*(a3 + 64) & 0x50) == 0)
            {
              *(v14 + 120) = 1;
            }
          }

          else
          {
            v95 = vmulq_n_f32(v91, 1.0 / sqrtf(v94));
            *(v14 + 160) = v95;
            v96 = *(&v144 + 1);
            if ((*(a3 + 64) & 0x10) != 0)
            {
              v97 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v90, v90, 0xCuLL), v90, 8uLL), v95), vmulq_f32(v90, vextq_s8(vextq_s8(v95, v95, 0xCuLL), v95, 8uLL)));
              v98 = vextq_s8(vextq_s8(v97, v97, 0xCuLL), v97, 8uLL);
              v98.i32[3] = 0;
              v99 = vmulq_f32(v98, v98);
              *(v14 + 176) = vmulq_n_f32(v98, 1.0 / sqrtf(vadd_f32(*&vextq_s8(v99, v99, 8uLL), vpadd_f32(*v99.i8, *v99.i8)).f32[0]));
              applyAnisotropicFriction(v138, (v14 + 176), 1);
              applyAnisotropicFriction(v140, (v14 + 176), 1);
              v33 = v138;
              btSequentialImpulseConstraintSolver::addFrictionConstraint(a1, (v14 + 176), inited, v9, v15, v14, &v146, &v145, v96, 0.0, 0.0, v132, v134);
            }

            applyAnisotropicFriction(v33, (v14 + 160), 1);
            applyAnisotropicFriction(v140, (v14 + 160), 1);
            btSequentialImpulseConstraintSolver::addFrictionConstraint(a1, (v14 + 160), inited, v9, v15, v14, &v146, &v145, v96, 0.0, 0.0, v132, v134);
          }
        }

        v11 = *(a2 + 800);
        v13 = a2 + 16;
        goto LABEL_78;
      }

      v35 = vsubq_f32(v31, v32);
      v35.n128_u32[3] = 0;
      v36 = vmulq_f32(v35, v35);
      v37 = sqrtf(vadd_f32(*&vextq_s8(v36, v36, 8uLL), vpadd_f32(*v36.i8, *v36.i8)).f32[0]);
      if (v37 > *(a3 + 80))
      {
        v38 = vmulq_n_f32(v35, 1.0 / v37);
        v142 = v38;
        if ((*(v138 + 192) & 2) != 0)
        {
          v39 = *(v138 + 1);
          v39.i32[3] = 0;
          v40 = *(v138 + 2);
          v40.i32[3] = 0;
          v41 = *(v138 + 3);
          v41.i32[3] = 0;
          v42 = vmulq_f32(*(v138 + 11), vaddq_f32(vaddq_f32(vmulq_n_f32(v39, v38.var0.var0[0]), vmulq_lane_f32(v40, *v38.var0.var0, 1)), vmulq_laneq_f32(v41, v38, 2)));
          v43 = vmulq_f32(v42, *(v138 + 1));
          v44 = vmulq_f32(v42, *(v138 + 2));
          v45 = vmulq_f32(v42, *(v138 + 3));
          v45.i32[3] = 0;
          *v38.var0.var0 = vadd_f32(vpadd_f32(*v43.i8, *v44.i8), vzip1_s32(*&vextq_s8(v43, v43, 8uLL), *&vextq_s8(v44, v44, 8uLL)));
          *&v38.var0.var0[2] = vpadd_f32(vpadd_f32(*v45.i8, *&vextq_s8(v45, v45, 8uLL)), 0);
          v142 = v38;
        }

        if ((*(v140 + 192) & 2) != 0)
        {
          v46 = *(v140 + 1);
          v46.i32[3] = 0;
          v47 = *(v140 + 2);
          v47.i32[3] = 0;
          v48 = *(v140 + 3);
          v48.i32[3] = 0;
          v49 = vmulq_f32(*(v140 + 11), vaddq_f32(vaddq_f32(vmulq_n_f32(v46, v38.var0.var0[0]), vmulq_lane_f32(v47, *v38.var0.var0, 1)), vmulq_laneq_f32(v48, v38, 2)));
          v50 = vmulq_f32(v49, *(v140 + 1));
          v51 = vmulq_f32(v49, *(v140 + 2));
          v52 = vmulq_f32(v49, *(v140 + 3));
          v52.i32[3] = 0;
          *v38.var0.var0 = vadd_f32(vpadd_f32(*v50.i8, *v51.i8), vzip1_s32(*&vextq_s8(v50, v50, 8uLL), *&vextq_s8(v51, v51, 8uLL)));
          *&v38.var0.var0[2] = vpadd_f32(vpadd_f32(*v52.i8, *&vextq_s8(v52, v52, 8uLL)), 0);
          v142 = v38;
        }

        v53 = vmulq_f32(v38, v38);
        v54 = vpadd_f32(*v53.i8, *v53.i8);
        v55 = vextq_s8(v53, v53, 8uLL);
        v55.n128_f64[0] = sqrtf(vadd_f32(v54, v55.n128_u64[0]).f32[0]);
        if (v55.n128_f64[0] <= 0.001)
        {
          goto LABEL_54;
        }

        v56 = &v142;
LABEL_53:
        btSequentialImpulseConstraintSolver::addRollingFrictionConstraint(a1, v56, inited, v9, v15, v14, v29, v30, v55, 0.0, 0.0, v132, v134);
LABEL_54:
        v139 = 0;
        goto LABEL_55;
      }

      btSequentialImpulseConstraintSolver::addRollingFrictionConstraint(a1, (v14 + 64), inited, v9, v15, v14, v29, v30, v35, 0.0, 0.0, v132, v134);
      v57 = *(v14 + 72);
      if (fabsf(v57) <= 0.70711)
      {
        v63 = *(v14 + 64);
        v64 = *(v14 + 68);
        v65 = (v64 * v64) + (v63 * v63);
        v66 = 1.0 / sqrtf(v65);
        v142.var0.var0[0] = -(v64 * v66);
        v142.var0.var0[1] = v63 * v66;
        v142.var0.var0[2] = 0.0;
        v141.var0.var0[0] = -(v57 * (v63 * v66));
        v141.var0.var0[1] = v57 * v142.var0.var0[0];
        v62 = v65 * v66;
      }

      else
      {
        v59 = *(v14 + 64);
        v58 = *(v14 + 68);
        v60 = (v57 * v57) + (v58 * v58);
        v61 = 1.0 / sqrtf(v60);
        v142.var0.var0[0] = 0.0;
        v142.var0.var0[1] = -(v57 * v61);
        v142.var0.var0[2] = v58 * v61;
        v141.var0.var0[0] = v60 * v61;
        v141.var0.var0[1] = -(v59 * (v58 * v61));
        v62 = v142.var0.var0[1] * v59;
      }

      v141.var0.var0[2] = v62;
      v67 = *(v138 + 48);
      if ((v67 & 2) != 0)
      {
        v68 = *(v138 + 1);
        v68.i32[3] = 0;
        v69 = *(v138 + 2);
        v69.i32[3] = 0;
        v70 = *(v138 + 3);
        v70.i32[3] = 0;
        v71 = vmulq_f32(*(v138 + 11), vaddq_f32(vaddq_f32(vmulq_n_f32(v68, v142.var0.var0[0]), vmulq_lane_f32(v69, *v142.var0.var0, 1)), vmulq_laneq_f32(v70, v142, 2)));
        v72 = vmulq_f32(v71, *(v138 + 1));
        v73 = vmulq_f32(v71, *(v138 + 2));
        v74 = vmulq_f32(v71, *(v138 + 3));
        v74.i32[3] = 0;
        *v72.var0.var0 = vadd_f32(vpadd_f32(*v72.var0.var0, *v73.i8), vzip1_s32(*&vextq_s8(v72, v72, 8uLL), *&vextq_s8(v73, v73, 8uLL)));
        *&v72.var0.var0[2] = vpadd_f32(vpadd_f32(*v74.i8, *&vextq_s8(v74, v74, 8uLL)), 0);
        v142 = v72;
      }

      v75 = *(v140 + 48);
      if ((v75 & 2) != 0)
      {
        v118 = *(v140 + 1);
        v118.i32[3] = 0;
        v119 = *(v140 + 2);
        v119.i32[3] = 0;
        v120 = *(v140 + 3);
        v120.i32[3] = 0;
        v121 = vmulq_f32(*(v140 + 11), vaddq_f32(vaddq_f32(vmulq_n_f32(v118, v142.var0.var0[0]), vmulq_lane_f32(v119, *v142.var0.var0, 1)), vmulq_laneq_f32(v120, v142, 2)));
        v122 = vmulq_f32(v121, *(v140 + 1));
        v123 = vmulq_f32(v121, *(v140 + 2));
        v124 = vmulq_f32(v121, *(v140 + 3));
        v124.i32[3] = 0;
        *v122.var0.var0 = vadd_f32(vpadd_f32(*v122.var0.var0, *v123.i8), vzip1_s32(*&vextq_s8(v122, v122, 8uLL), *&vextq_s8(v123, v123, 8uLL)));
        *&v122.var0.var0[2] = vpadd_f32(vpadd_f32(*v124.i8, *&vextq_s8(v124, v124, 8uLL)), 0);
        v142 = v122;
        if ((v67 & 2) == 0)
        {
LABEL_47:
          if ((v75 & 2) == 0)
          {
LABEL_49:
            v83 = vmulq_f32(v142, v142);
            v84 = vpadd_f32(*v83.i8, *v83.i8);
            v85 = vextq_s8(v83, v83, 8uLL);
            v85.n128_f64[0] = sqrtf(vadd_f32(v84, v85.n128_u64[0]).f32[0]);
            if (v85.n128_f64[0] > 0.001)
            {
              btSequentialImpulseConstraintSolver::addRollingFrictionConstraint(a1, &v142, inited, v9, v15, v14, v29, v30, v85, 0.0, 0.0, v132, v134);
            }

            v86 = vmulq_f32(v141, v141);
            v87 = vpadd_f32(*v86.i8, *v86.i8);
            v55 = vextq_s8(v86, v86, 8uLL);
            v55.n128_f64[0] = sqrtf(vadd_f32(v87, v55.n128_u64[0]).f32[0]);
            if (v55.n128_f64[0] <= 0.001)
            {
              goto LABEL_54;
            }

            v56 = &v141;
            goto LABEL_53;
          }

LABEL_48:
          v76 = *(v140 + 1);
          v76.i32[3] = 0;
          v77 = *(v140 + 2);
          v77.i32[3] = 0;
          v78 = *(v140 + 3);
          v78.i32[3] = 0;
          v79 = vmulq_f32(*(v140 + 11), vaddq_f32(vaddq_f32(vmulq_n_f32(v76, v141.var0.var0[0]), vmulq_lane_f32(v77, *v141.var0.var0, 1)), vmulq_laneq_f32(v78, v141, 2)));
          v80 = vmulq_f32(v79, *(v140 + 1));
          v81 = vmulq_f32(v79, *(v140 + 2));
          v82 = vmulq_f32(v79, *(v140 + 3));
          v82.i32[3] = 0;
          *v80.var0.var0 = vadd_f32(vpadd_f32(*v80.var0.var0, *v81.i8), vzip1_s32(*&vextq_s8(v80, v80, 8uLL), *&vextq_s8(v81, v81, 8uLL)));
          *&v80.var0.var0[2] = vpadd_f32(vpadd_f32(*v82.i8, *&vextq_s8(v82, v82, 8uLL)), 0);
          v141 = v80;
          goto LABEL_49;
        }
      }

      else if ((v67 & 2) == 0)
      {
        goto LABEL_47;
      }

      v125 = *(v138 + 1);
      v125.i32[3] = 0;
      v126 = *(v138 + 2);
      v126.i32[3] = 0;
      v127 = *(v138 + 3);
      v127.i32[3] = 0;
      v128 = vmulq_f32(*(v138 + 11), vaddq_f32(vaddq_f32(vmulq_n_f32(v125, v141.var0.var0[0]), vmulq_lane_f32(v126, *v141.var0.var0, 1)), vmulq_laneq_f32(v127, v141, 2)));
      v129 = vmulq_f32(v128, *(v138 + 1));
      v130 = vmulq_f32(v128, *(v138 + 2));
      v131 = vmulq_f32(v128, *(v138 + 3));
      v131.i32[3] = 0;
      *v129.var0.var0 = vadd_f32(vpadd_f32(*v129.var0.var0, *v130.i8), vzip1_s32(*&vextq_s8(v129, v129, 8uLL), *&vextq_s8(v130, v130, 8uLL)));
      *&v129.var0.var0[2] = vpadd_f32(vpadd_f32(*v131.i8, *&vextq_s8(v131, v131, 8uLL)), 0);
      v141 = v129;
      if ((v75 & 2) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }
  }
}

float32x2_t applyAnisotropicFriction(float32x4_t *a1, float32x4_t *a2, int a3)
{
  if (a1)
  {
    if ((a1[12].i32[0] & a3) != 0)
    {
      v3 = a1[1];
      v3.i32[3] = 0;
      v4 = a1[2];
      v4.i32[3] = 0;
      v5 = a1[3];
      v5.i32[3] = 0;
      v6 = vmulq_f32(a1[11], vaddq_f32(vaddq_f32(vmulq_n_f32(v3, COERCE_FLOAT(*a2)), vmulq_lane_f32(v4, *a2->f32, 1)), vmulq_laneq_f32(v5, *a2, 2)));
      v7 = vmulq_f32(v6, a1[1]);
      v8 = vmulq_f32(v6, a1[2]);
      v9 = vmulq_f32(v6, a1[3]);
      v9.i32[3] = 0;
      *v7.i8 = vadd_f32(vpadd_f32(*v7.i8, *v8.i8), vzip1_s32(*&vextq_s8(v7, v7, 8uLL), *&vextq_s8(v8, v8, 8uLL)));
      result = vpadd_f32(vpadd_f32(*v9.i8, *&vextq_s8(v9, v9, 8uLL)), 0);
      v7.u64[1] = result;
      *a2 = v7;
    }
  }

  return result;
}

double btSequentialImpulseConstraintSolver::solveGroupCacheFriendlySetup(btSequentialImpulseConstraintSolver *this, btCollisionObject **a2, int a3, uint64_t *a4, unsigned int a5, _DWORD **a6, int a7, uint64_t a8)
{
  v12 = a2;
  *(this + 74) = 0;
  v14 = a3;
  if (a3 >= 1)
  {
    v15 = a3;
    v16 = a2;
    do
    {
      v17 = *v16++;
      *(v17 + 240) = -1;
      --v15;
    }

    while (v15);
  }

  v18 = *(this + 4);
  if (v18 <= a3)
  {
    v18 = a3 + 1;
    if (a3 == -1)
    {
      v19 = 0;
    }

    else
    {
      v19 = btAlignedAllocInternal(224 * v18, 16);
    }

    v20 = *(this + 3);
    if (v20 >= 1)
    {
      v21 = 0;
      v22 = 224 * v20;
      do
      {
        v23 = *(this + 3) + v21;
        v24 = v19 + v21;
        *v24 = *v23;
        *(v24 + 16) = *(v23 + 16);
        *(v24 + 32) = *(v23 + 32);
        *(v24 + 48) = *(v23 + 48);
        *(v24 + 64) = *(v23 + 64);
        *(v24 + 80) = *(v23 + 80);
        *(v24 + 96) = *(v23 + 96);
        *(v24 + 112) = *(v23 + 112);
        *(v24 + 128) = *(v23 + 128);
        *(v24 + 144) = *(v23 + 144);
        *(v24 + 160) = *(v23 + 160);
        *(v24 + 176) = *(v23 + 176);
        *(v24 + 192) = *(v23 + 192);
        *(v24 + 208) = *(v23 + 208);
        v21 += 224;
      }

      while (v22 != v21);
    }

    v25 = *(this + 3);
    if (v25 && *(this + 32) == 1)
    {
      btAlignedFreeInternal(v25);
    }

    *(this + 32) = 1;
    *(this + 3) = v19;
    *(this + 4) = v18;
  }

  v26 = *(this + 3);
  if ((v26 & 0x80000000) != 0)
  {
    if (v18 < 0)
    {
      v27 = *(this + 3);
      if (v27 && *(this + 32) == 1)
      {
        btAlignedFreeInternal(v27);
      }

      *(this + 32) = 1;
      *(this + 3) = 0;
      *(this + 4) = 0;
    }

    v28 = 224 * v26;
    v29 = v26 + 1;
    do
    {
      v30 = *(this + 3) + v28;
      *(v30 + 208) = 0;
      *(v30 + 176) = 0uLL;
      *(v30 + 192) = 0uLL;
      *(v30 + 144) = 0uLL;
      *(v30 + 160) = 0uLL;
      *(v30 + 112) = 0uLL;
      *(v30 + 128) = 0uLL;
      *(v30 + 80) = 0uLL;
      *(v30 + 96) = 0uLL;
      *(v30 + 48) = 0uLL;
      *(v30 + 64) = 0uLL;
      *(v30 + 16) = 0uLL;
      *(v30 + 32) = 0uLL;
      v28 += 224;
      *v30 = 0uLL;
      LODWORD(v30) = v29++;
    }

    while (v30);
    v18 = *(this + 4);
  }

  *(this + 3) = 0;
  if (v18)
  {
    v31 = *(this + 3);
    v32 = 1;
  }

  else
  {
    v33 = btAlignedAllocInternal(224, 16);
    v31 = v33;
    v34 = *(this + 3);
    if (v34 >= 1)
    {
      v35 = 0;
      v36 = 224 * v34;
      do
      {
        v37 = *(this + 3) + v35;
        v38 = v33 + v35;
        *v38 = *v37;
        *(v38 + 16) = *(v37 + 16);
        *(v38 + 32) = *(v37 + 32);
        *(v38 + 48) = *(v37 + 48);
        *(v38 + 64) = *(v37 + 64);
        *(v38 + 80) = *(v37 + 80);
        *(v38 + 96) = *(v37 + 96);
        *(v38 + 112) = *(v37 + 112);
        *(v38 + 128) = *(v37 + 128);
        *(v38 + 144) = *(v37 + 144);
        *(v38 + 160) = *(v37 + 160);
        *(v38 + 176) = *(v37 + 176);
        *(v38 + 192) = *(v37 + 192);
        *(v38 + 208) = *(v37 + 208);
        v35 += 224;
      }

      while (v36 != v35);
    }

    v39 = *(this + 3);
    if (v39 && *(this + 32) == 1)
    {
      btAlignedFreeInternal(v39);
    }

    *(this + 32) = 1;
    *(this + 3) = v31;
    *(this + 4) = 1;
    v32 = *(this + 3) + 1;
  }

  *(this + 3) = v32;
  *(v31 + 208) = 0;
  *(v31 + 176) = 0u;
  *(v31 + 192) = 0u;
  *(v31 + 144) = 0u;
  *(v31 + 160) = 0u;
  *(v31 + 112) = 0u;
  *(v31 + 128) = 0u;
  *(v31 + 80) = 0u;
  *(v31 + 96) = 0u;
  *(v31 + 48) = 0u;
  *(v31 + 64) = 0u;
  *(v31 + 16) = 0u;
  *(v31 + 32) = 0u;
  *v31 = 0u;
  v40 = *(this + 3);
  *(v40 + 64) = 0u;
  *(v40 + 80) = 0u;
  *(v40 + 144) = 0u;
  *(v40 + 160) = 0u;
  *v40 = xmmword_21C27F910;
  *(v40 + 16) = xmmword_21C27F8C0;
  *(v40 + 32) = xmmword_21C27F600;
  *(v40 + 48) = 0;
  *(v40 + 56) = 0;
  *(v40 + 128) = 0;
  *(v40 + 136) = 0;
  *(v40 + 208) = 0;
  *(v40 + 96) = xmmword_21C280340;
  *(v40 + 112) = xmmword_21C280340;
  *(v40 + 176) = 0u;
  *(v40 + 192) = 0u;
  if (a3 >= 1)
  {
    do
    {
      inited = btSequentialImpulseConstraintSolver::getOrInitSolverBody(this, *v12);
      v43 = *v12;
      if (*v12)
      {
        v44 = (*(*v12 + 66) & 2) == 0;
      }

      else
      {
        v44 = 1;
      }

      if (!v44)
      {
        v45 = *(v43 + 96);
        if (v45 != 0.0)
        {
          v46 = inited;
          v47 = *(this + 3);
          v48 = 0uLL;
          if ((*(v43 + 576) & 2) != 0)
          {
            btRigidBody::computeGyroscopicForce(&v190, *v12, *(a8 + 76), v42);
            v48 = v190;
            v45 = *(v43 + 96);
          }

          v49 = (v47 + 224 * v46);
          v50 = vmulq_n_f32(vmulq_n_f32(*(v43 + 29), v45), COERCE_FLOAT(*(a8 + 12)));
          v50.i32[3] = 0;
          v51 = v49[12];
          v49[11] = vaddq_f32(v49[11], v50);
          v52 = vsubq_f32(*(v43 + 30), v48);
          v52.i32[3] = 0;
          v53 = *(v43 + 19);
          v54 = *(v43 + 20);
          v53.i32[3] = 0;
          v54.i32[3] = 0;
          v55 = *(v43 + 21);
          v55.i32[3] = 0;
          v56 = vmulq_n_f32(vaddq_f32(vmulq_laneq_f32(v55, v52, 2), vaddq_f32(vmulq_n_f32(v53, v52.f32[0]), vmulq_lane_f32(v54, *v52.f32, 1))), COERCE_FLOAT(*(a8 + 12)));
          v56.i32[3] = 0;
          v49[12] = vaddq_f32(v51, v56);
        }
      }

      ++v12;
      --v14;
    }

    while (v14);
  }

  v188 = a7;
  if (a7 >= 1)
  {
    v57 = a7;
    v58 = a6;
    do
    {
      v59 = *v58++;
      (*(*v59 + 16))(v59);
      v59[14] = 0;
      --v57;
    }

    while (v57);
  }

  v60 = *(this + 67);
  if (v60 < a7 && *(this + 68) < a7)
  {
    if (a7)
    {
      v61 = btAlignedAllocInternal(8 * a7, 16);
      v60 = *(this + 67);
    }

    else
    {
      v61 = 0;
    }

    if (v60 >= 1)
    {
      v62 = 0;
      v63 = 8 * v60;
      do
      {
        *(v61 + v62) = *(*(this + 35) + v62);
        v62 += 8;
      }

      while (v63 != v62);
    }

    v64 = *(this + 35);
    if (v64 && *(this + 288) == 1)
    {
      btAlignedFreeInternal(v64);
    }

    *(this + 288) = 1;
    *(this + 35) = v61;
    *(this + 68) = a7;
  }

  *(this + 67) = a7;
  if (a7 < 1)
  {
    v66 = 0;
  }

  else
  {
    v65 = 0;
    v66 = 0;
    do
    {
      v67 = *(this + 35);
      v68 = a6[v65];
      v69 = *(v68 + 8);
      if (v69)
      {
        v69[2] = 0u;
        v69[3] = 0u;
        *v69 = 0u;
        v69[1] = 0u;
        v68 = a6[v65];
      }

      v70 = (v67 + v65 * 8);
      if (*(v68 + 28) == 1)
      {
        (*(*v68 + 32))(v68, v70);
        v71 = *v70;
      }

      else
      {
        v71 = 0;
        *v70 = 0;
      }

      v66 += v71;
      ++v65;
    }

    while (a7 != v65);
  }

  v189 = a8;
  v72 = *(this + 19);
  if (v72 < v66 && *(this + 20) < v66)
  {
    if (v66)
    {
      v73 = btAlignedAllocInternal(160 * v66, 16);
      v72 = *(this + 19);
    }

    else
    {
      v73 = 0;
    }

    if (v72 >= 1)
    {
      v74 = 0;
      v75 = 160 * v72;
      do
      {
        v76 = (v73 + v74);
        v77 = (*(this + 11) + v74);
        *v76 = *v77;
        v76[1] = v77[1];
        v76[2] = v77[2];
        v76[3] = v77[3];
        v76[4] = v77[4];
        v76[5] = v77[5];
        v78 = v77[6];
        v79 = v77[7];
        v80 = v77[9];
        v76[8] = v77[8];
        v76[9] = v80;
        v76[6] = v78;
        v76[7] = v79;
        v74 += 160;
      }

      while (v75 != v74);
    }

    v81 = *(this + 11);
    if (v81 && *(this + 96) == 1)
    {
      btAlignedFreeInternal(v81);
    }

    *(this + 96) = 1;
    *(this + 11) = v73;
    *(this + 20) = v66;
  }

  *(this + 19) = v66;
  if (a7 >= 1)
  {
    v82 = 0;
    v83 = 0;
    v84 = *(this + 35);
    do
    {
      v85 = (v84 + 8 * v82);
      v86 = *v85;
      if (*v85)
      {
        v87 = *(this + 11);
        v88 = a6[v82];
        v89 = *(v88 + 5);
        v90 = *(v88 + 6);
        v91 = btSequentialImpulseConstraintSolver::getOrInitSolverBody(this, v89);
        v92 = btSequentialImpulseConstraintSolver::getOrInitSolverBody(this, v90);
        v93 = v88[8];
        if (v93 <= 0)
        {
          v93 = *(v189 + 20);
        }

        if (v93 > *(this + 74))
        {
          *(this + 74) = v93;
        }

        v94 = *(this + 3);
        if (*v85 >= 1)
        {
          v95 = 0;
          v96 = (v87 + 160 * v83 + 156);
          do
          {
            *(v96 - 11) = 0uLL;
            *(v96 - 15) = 0uLL;
            *(v96 - 3) = 0uLL;
            *(v96 - 7) = 0uLL;
            *(v96 - 19) = 0uLL;
            *(v96 - 23) = 0uLL;
            *(v96 - 27) = 0uLL;
            *(v96 - 31) = 0uLL;
            *(v96 - 35) = 0uLL;
            *(v96 - 39) = 0uLL;
            *(v96 - 9) = -2.84809454e-306;
            *(v96 - 15) = 0;
            *(v96 - 1) = v91;
            *v96 = v92;
            *(v96 - 3) = v93;
            ++v95;
            v96 += 40;
          }

          while (v95 < *v85);
        }

        v97 = (v87 + 160 * v83);
        v98 = (v94 + 224 * v91);
        v99 = (v94 + 224 * v92);
        v98[4] = 0uLL;
        v98[5] = 0uLL;
        v98[9] = 0uLL;
        v98[10] = 0uLL;
        v99[4] = 0uLL;
        v99[5] = 0uLL;
        v99[9] = 0uLL;
        v99[10] = 0uLL;
        v100 = *(v189 + 32);
        v190.f32[0] = 1.0 / *(v189 + 12);
        v190.i32[1] = v100;
        v190.i64[1] = &v97[1];
        v191 = v97;
        v192 = v97 + 3;
        v193 = v97 + 2;
        v194 = 40;
        v195 = v97 + 7;
        v97[7].i32[1] = *(v189 + 40);
        v200 = *(v189 + 4);
        v196 = &v97[7].i8[4];
        v197 = &v97[7].i8[8];
        v198 = &v97[7].i8[12];
        v199 = *(v189 + 20);
        (*(*a6[v82] + 40))(a6[v82], &v190);
        if (*v85 >= 1)
        {
          v101 = 0;
          do
          {
            v102 = *(a6[v82] + 6);
            if (v97[7].f32[3] >= v102)
            {
              v97[7].f32[3] = v102;
            }

            v103 = -v102;
            if (v97[7].f32[2] <= v103)
            {
              v97[7].f32[2] = v103;
            }

            v97[8].i64[1] = v88;
            v104 = *(v88 + 5);
            v105 = *v97;
            v106 = v97[1];
            v107 = vmulq_f32(v104[19], *v97);
            v108 = vmulq_f32(*v97, v104[20]);
            v109 = vmulq_f32(*v97, v104[21]);
            v109.i32[3] = 0;
            *v107.f32 = vadd_f32(vpadd_f32(*v107.f32, *v108.i8), vzip1_s32(*&vextq_s8(v107, v107, 8uLL), *&vextq_s8(v108, v108, 8uLL)));
            *&v107.u32[2] = vpadd_f32(vpadd_f32(*v109.i8, *&vextq_s8(v109, v109, 8uLL)), 0);
            v97[4] = vmulq_f32(v107, v104[39]);
            v110 = *(v88 + 6);
            v111 = v97[2];
            v112 = v97[3];
            v113 = vmulq_f32(v110[19], v111);
            v114 = vmulq_f32(v111, v110[20]);
            v115 = vmulq_f32(v111, v110[21]);
            v115.i32[3] = 0;
            *v113.f32 = vadd_f32(vpadd_f32(*v113.f32, *v114.i8), vzip1_s32(*&vextq_s8(v113, v113, 8uLL), *&vextq_s8(v114, v114, 8uLL)));
            *&v113.u32[2] = vpadd_f32(vpadd_f32(*v115.i8, *&vextq_s8(v115, v115, 8uLL)), 0);
            v97[5] = vmulq_f32(v113, v110[39]);
            v116 = vmulq_n_f32(v106, *(v89 + 384));
            v116.i32[3] = 0;
            v117 = vmulq_f32(v105, *(v89 + 304));
            v118 = vmulq_f32(v105, *(v89 + 320));
            v119 = vmulq_f32(v105, *(v89 + 336));
            v119.i32[3] = 0;
            *v117.f32 = vadd_f32(vpadd_f32(*v117.f32, *v118.i8), vzip1_s32(*&vextq_s8(v117, v117, 8uLL), *&vextq_s8(v118, v118, 8uLL)));
            *&v117.u32[2] = vpadd_f32(vpadd_f32(*v119.i8, *&vextq_s8(v119, v119, 8uLL)), 0);
            v120 = vmulq_n_f32(v112, *(v90 + 384));
            v120.i32[3] = 0;
            v121 = vmulq_f32(v111, *(v90 + 304));
            v122 = vmulq_f32(v111, *(v90 + 320));
            v123 = vmulq_f32(v111, *(v90 + 336));
            v123.i32[3] = 0;
            *v121.f32 = vadd_f32(vpadd_f32(*v121.f32, *v122.i8), vzip1_s32(*&vextq_s8(v121, v121, 8uLL), *&vextq_s8(v122, v122, 8uLL)));
            *&v121.u32[2] = vpadd_f32(vpadd_f32(*v123.i8, *&vextq_s8(v123, v123, 8uLL)), 0);
            v124 = vmulq_f32(v106, v116);
            v125 = vmulq_f32(v105, v117);
            *v124.i8 = vadd_f32(vadd_f32(*&vextq_s8(v124, v124, 8uLL), vpadd_f32(*v124.i8, *v124.i8)), vadd_f32(*&vextq_s8(v125, v125, 8uLL), vpadd_f32(*v125.i8, *v125.i8)));
            v126 = vmulq_f32(v112, v120);
            *v124.i8 = vadd_f32(*v124.i8, vadd_f32(*&vextq_s8(v126, v126, 8uLL), vpadd_f32(*v126.i8, *v126.i8)));
            v127 = vmulq_f32(v111, v121);
            *v124.i32 = vadd_f32(*v124.i8, vadd_f32(*&vextq_s8(v127, v127, 8uLL), vpadd_f32(*v127.i8, *v127.i8))).f32[0];
            *v127.i32 = fabsf(*v124.i32);
            v128 = 1.0 / *v124.i32;
            if (*v127.i32 <= 0.00000011921)
            {
              v128 = 0.0;
            }

            v97[6].f32[3] = v128;
            v129 = vmulq_f32(v106, *(v89 + 352));
            v130 = vmulq_f32(v105, *(v89 + 368));
            *v130.i8 = vadd_f32(vadd_f32(vpadd_f32(*v129.i8, *v129.i8), *&vextq_s8(v129, v129, 8uLL)), vadd_f32(vpadd_f32(*v130.i8, *v130.i8), *&vextq_s8(v130, v130, 8uLL)));
            v131 = vmulq_f32(v112, *(v90 + 352));
            v132 = vmulq_f32(v111, *(v90 + 368));
            v97[7].f32[0] = (v128 * v97[7].f32[0]) + (v128 * (0.0 - (v200 * vadd_f32(*v130.i8, vadd_f32(vadd_f32(vpadd_f32(*v131.i8, *v131.i8), *&vextq_s8(v131, v131, 8uLL)), vadd_f32(vpadd_f32(*v132.i8, *v132.i8), *&vextq_s8(v132, v132, 8uLL)))).f32[0])));
            v97[6].i32[1] = 0;
            ++v101;
            v97 += 10;
          }

          while (v101 < *v85);
        }

        v84 = *(this + 35);
        v86 = *(v84 + 8 * v82);
      }

      v83 += v86;
      ++v82;
    }

    while (v82 != v188);
  }

  v133 = a4;
  if (a5 >= 1)
  {
    v134 = a5;
    do
    {
      v135 = *v133++;
      btSequentialImpulseConstraintSolver::convertContact(this, v135, v189);
      --v134;
    }

    while (v134);
  }

  v136 = *(this + 19);
  v137 = *(this + 11);
  v138 = *(this + 27);
  LODWORD(v139) = *(this + 51);
  if (v139 < v136 && *(this + 52) < v136)
  {
    if (v136)
    {
      v140 = btAlignedAllocInternal(4 * v136, 16);
      LODWORD(v139) = *(this + 51);
    }

    else
    {
      v140 = 0;
    }

    v141 = *(this + 27);
    if (v139 < 1)
    {
      if (!v141)
      {
LABEL_117:
        *(this + 224) = 1;
        *(this + 27) = v140;
        *(this + 52) = v136;
        goto LABEL_118;
      }
    }

    else
    {
      v139 = v139;
      v142 = v140;
      v143 = *(this + 27);
      do
      {
        v144 = *v143++;
        *v142++ = v144;
        --v139;
      }

      while (v139);
    }

    if (*(this + 224) == 1)
    {
      btAlignedFreeInternal(v141);
    }

    *(this + 27) = 0;
    goto LABEL_117;
  }

LABEL_118:
  *(this + 51) = v136;
  if ((*(v189 + 64) & 0x10) != 0)
  {
    v147 = 2 * v137;
    LODWORD(v148) = *(this + 43);
    if (v148 >= 2 * v137 || *(this + 44) >= v147)
    {
      goto LABEL_148;
    }

    if (v137)
    {
      v149 = btAlignedAllocInternal(8 * v137, 16);
      LODWORD(v148) = *(this + 43);
    }

    else
    {
      v149 = 0;
    }

    v154 = *(this + 23);
    if (v148 < 1)
    {
      if (!v154)
      {
LABEL_147:
        *(this + 192) = 1;
        *(this + 23) = v149;
        *(this + 44) = v147;
LABEL_148:
        *(this + 43) = v147;
        goto LABEL_149;
      }
    }

    else
    {
      v148 = v148;
      v155 = v149;
      v156 = *(this + 23);
      do
      {
        v157 = *v156++;
        *v155++ = v157;
        --v148;
      }

      while (v148);
    }

    if (*(this + 192) == 1)
    {
      btAlignedFreeInternal(v154);
    }

    *(this + 23) = 0;
    goto LABEL_147;
  }

  LODWORD(v145) = *(this + 43);
  if (v145 >= v137 || *(this + 44) >= v137)
  {
    goto LABEL_142;
  }

  if (v137)
  {
    v146 = btAlignedAllocInternal(4 * v137, 16);
    LODWORD(v145) = *(this + 43);
  }

  else
  {
    v146 = 0;
  }

  v150 = *(this + 23);
  if (v145 >= 1)
  {
    v145 = v145;
    v151 = v146;
    v152 = *(this + 23);
    do
    {
      v153 = *v152++;
      *v151++ = v153;
      --v145;
    }

    while (v145);
    goto LABEL_138;
  }

  if (v150)
  {
LABEL_138:
    if (*(this + 192) == 1)
    {
      btAlignedFreeInternal(v150);
    }

    *(this + 23) = 0;
  }

  *(this + 192) = 1;
  *(this + 23) = v146;
  *(this + 44) = v137;
LABEL_142:
  *(this + 43) = v137;
LABEL_149:
  LODWORD(v158) = *(this + 59);
  if (v158 < v138 && *(this + 60) < v138)
  {
    if (v138)
    {
      v159 = btAlignedAllocInternal(4 * v138, 16);
      LODWORD(v158) = *(this + 59);
    }

    else
    {
      v159 = 0;
    }

    v160 = *(this + 31);
    if (v158 < 1)
    {
      if (!v160)
      {
LABEL_162:
        *(this + 256) = 1;
        *(this + 31) = v159;
        *(this + 60) = v138;
        goto LABEL_163;
      }
    }

    else
    {
      v158 = v158;
      v161 = v159;
      v162 = *(this + 31);
      do
      {
        v163 = *v162++;
        *v161++ = v163;
        --v158;
      }

      while (v158);
    }

    if (*(this + 256) == 1)
    {
      btAlignedFreeInternal(v160);
    }

    *(this + 31) = 0;
    goto LABEL_162;
  }

LABEL_163:
  *(this + 59) = v138;
  if (v136 >= 1)
  {
    v164 = 0;
    v165 = vdupq_n_s64(v136 - 1);
    v166 = xmmword_21C27F630;
    v167 = xmmword_21C27F640;
    v168 = (*(this + 27) + 8);
    v169 = vdupq_n_s64(4uLL);
    do
    {
      v170 = vmovn_s64(vcgeq_u64(v165, v167));
      if (vuzp1_s16(v170, *v165.i8).u8[0])
      {
        *(v168 - 2) = v164;
      }

      if (vuzp1_s16(v170, *&v165).i8[2])
      {
        *(v168 - 1) = v164 + 1;
      }

      if (vuzp1_s16(*&v165, vmovn_s64(vcgeq_u64(v165, *&v166))).i32[1])
      {
        *v168 = v164 + 2;
        v168[1] = v164 + 3;
      }

      v164 += 4;
      v166 = vaddq_s64(v166, v169);
      v167 = vaddq_s64(v167, v169);
      v168 += 4;
    }

    while (((v136 + 3) & 0xFFFFFFFC) != v164);
  }

  if (v137 >= 1)
  {
    v171 = 0;
    v172 = vdupq_n_s64(v137 - 1);
    v173 = xmmword_21C27F630;
    v174 = xmmword_21C27F640;
    v175 = (*(this + 23) + 8);
    v176 = vdupq_n_s64(4uLL);
    do
    {
      v177 = vmovn_s64(vcgeq_u64(v172, v174));
      if (vuzp1_s16(v177, *v172.i8).u8[0])
      {
        *(v175 - 2) = v171;
      }

      if (vuzp1_s16(v177, *&v172).i8[2])
      {
        *(v175 - 1) = v171 + 1;
      }

      if (vuzp1_s16(*&v172, vmovn_s64(vcgeq_u64(v172, *&v173))).i32[1])
      {
        *v175 = v171 + 2;
        v175[1] = v171 + 3;
      }

      v171 += 4;
      v173 = vaddq_s64(v173, v176);
      v174 = vaddq_s64(v174, v176);
      v175 += 4;
    }

    while (((v137 + 3) & 0xFFFFFFFC) != v171);
  }

  if (v138 >= 1)
  {
    v178 = 0;
    v179 = vdupq_n_s64(v138 - 1);
    v180 = xmmword_21C27F630;
    v181 = xmmword_21C27F640;
    v182 = (*(this + 31) + 8);
    v183 = vdupq_n_s64(4uLL);
    do
    {
      v184 = vmovn_s64(vcgeq_u64(v179, v181));
      if (vuzp1_s16(v184, *v179.i8).u8[0])
      {
        *(v182 - 2) = v178;
      }

      if (vuzp1_s16(v184, *&v179).i8[2])
      {
        *(v182 - 1) = v178 + 1;
      }

      if (vuzp1_s16(*&v179, vmovn_s64(vcgeq_u64(v179, *&v180))).i32[1])
      {
        *v182 = v178 + 2;
        v182[1] = v178 + 3;
      }

      v178 += 4;
      v180 = vaddq_s64(v180, v183);
      v181 = vaddq_s64(v181, v183);
      v182 += 4;
    }

    while (((v138 + 3) & 0xFFFFFFFC) != v178);
  }

  return 0.0;
}

double btSequentialImpulseConstraintSolver::solveSingleIteration(btSequentialImpulseConstraintSolver *this, __int32 a2, int a3, int a4, int a5, int a6, void *a7, int a8, uint64_t a9)
{
  v9 = a8;
  v12 = this;
  if (*(a9 + 64))
  {
    v13 = *(this + 19);
    v14 = *(this + 11);
    v15 = *(this + 27);
    if (v13 >= 1)
    {
      v16 = 0;
      v17 = *(this + 27);
      do
      {
        v18 = *(v17 + 4 * v16);
        this = btSequentialImpulseConstraintSolver::btRandInt2(v12, v16 + 1);
        v17 = *(v12 + 27);
        *(v17 + 4 * v16) = *(v17 + 4 * this);
        *(v17 + 4 * this) = v18;
        ++v16;
      }

      while (v13 != v16);
    }

    v9 = a8;
    if (*(a9 + 20) > a2)
    {
      if (v14 >= 1)
      {
        v19 = 0;
        v20 = *(v12 + 23);
        do
        {
          v21 = *(v20 + 4 * v19);
          this = btSequentialImpulseConstraintSolver::btRandInt2(v12, v19 + 1);
          v20 = *(v12 + 23);
          *(v20 + 4 * v19) = *(v20 + 4 * this);
          *(v20 + 4 * this) = v21;
          ++v19;
        }

        while (v14 != v19);
      }

      if (v15 >= 1)
      {
        v22 = 0;
        v23 = *(v12 + 31);
        do
        {
          v24 = *(v23 + 4 * v22);
          this = btSequentialImpulseConstraintSolver::btRandInt2(v12, v22 + 1);
          v23 = *(v12 + 31);
          *(v23 + 4 * v22) = *(v23 + 4 * this);
          *(v23 + 4 * this) = v24;
          ++v22;
        }

        while (v15 != v22);
      }
    }
  }

  v25 = *(v12 + 19);
  if (*(a9 + 65))
  {
    if (v25 >= 1)
    {
      for (i = 0; i < v25; ++i)
      {
        v49 = (*(v12 + 11) + 160 * *(*(v12 + 27) + 4 * i));
        if (v49[9].i32[0] > a2)
        {
          btSequentialImpulseConstraintSolver::resolveSingleConstraintRowGeneric(this, (*(v12 + 3) + 224 * v49[9].i32[2]), (*(v12 + 3) + 224 * v49[9].i32[3]), v49);
          v25 = *(v12 + 19);
        }
      }
    }

    if (*(a9 + 20) > a2)
    {
      if (v9 >= 1)
      {
        v50 = v9;
        do
        {
          if (*(*a7 + 28) == 1)
          {
            inited = btSequentialImpulseConstraintSolver::getOrInitSolverBody(v12, *(*a7 + 40));
            v52 = btSequentialImpulseConstraintSolver::getOrInitSolverBody(v12, *(*a7 + 48));
            this = (*(**a7 + 48))(*a7, *(v12 + 3) + 224 * inited, *(v12 + 3) + 224 * v52, *(a9 + 12));
          }

          ++a7;
          --v50;
        }

        while (v50);
      }

      v53 = *(a9 + 64);
      v54 = *(v12 + 11);
      if ((v53 & 0x200) != 0)
      {
        if (v54 >= 1)
        {
          v71 = 0;
          v72 = (v53 >> 4) & 1;
          do
          {
            v73 = (*(v12 + 7) + 160 * *(*(v12 + 23) + 4 * v71));
            btSequentialImpulseConstraintSolver::resolveSingleConstraintRowLowerLimit(this, (*(v12 + 3) + 224 * v73[9].i32[2]), (*(v12 + 3) + 224 * v73[9].i32[3]), v73);
            v74 = v73[6].f32[1];
            if (v74 > 0.0)
            {
              v75 = (*(v12 + 15) + 160 * *(*(v12 + 31) + 4 * (v71 << v72)));
              v76 = v75[6].f32[2];
              v75[7].f32[2] = -(v76 * v74);
              v75[7].f32[3] = v74 * v76;
              btSequentialImpulseConstraintSolver::resolveSingleConstraintRowGeneric(this, (*(v12 + 3) + 224 * v75[9].i32[2]), (*(v12 + 3) + 224 * v75[9].i32[3]), v75);
              if ((*(a9 + 64) & 0x10) != 0)
              {
                v77 = (*(v12 + 15) + 160 * *(*(v12 + 31) + 4 * (v71 << v72) + 4));
                v78 = v77[6].f32[2];
                v77[7].f32[2] = -(v78 * v74);
                v77[7].f32[3] = v74 * v78;
                btSequentialImpulseConstraintSolver::resolveSingleConstraintRowGeneric(this, (*(v12 + 3) + 224 * v77[9].i32[2]), (*(v12 + 3) + 224 * v77[9].i32[3]), v77);
              }
            }

            ++v71;
          }

          while (v54 != v71);
        }
      }

      else
      {
        if (v54 >= 1)
        {
          v55 = 0;
          v56 = 4 * v54;
          do
          {
            v57 = (*(v12 + 7) + 160 * *(*(v12 + 23) + v55));
            btSequentialImpulseConstraintSolver::resolveSingleConstraintRowLowerLimit(this, (*(v12 + 3) + 224 * v57[9].i32[2]), (*(v12 + 3) + 224 * v57[9].i32[3]), v57);
            v55 += 4;
          }

          while (v56 != v55);
        }

        v58 = *(v12 + 27);
        if (v58 >= 1)
        {
          v59 = 0;
          v60 = 4 * v58;
          do
          {
            v61 = (*(v12 + 15) + 160 * *(*(v12 + 31) + v59));
            v62 = *(*(v12 + 7) + 160 * v61[9].i32[1] + 100);
            if (v62 > 0.0)
            {
              v63 = v61[6].f32[2];
              v61[7].f32[2] = -(v63 * v62);
              v61[7].f32[3] = v62 * v63;
              btSequentialImpulseConstraintSolver::resolveSingleConstraintRowGeneric(this, (*(v12 + 3) + 224 * v61[9].i32[2]), (*(v12 + 3) + 224 * v61[9].i32[3]), v61);
            }

            v59 += 4;
          }

          while (v60 != v59);
        }

        v64 = *(v12 + 35);
        if (v64 >= 1)
        {
          v65 = 0;
          v66 = 160 * v64;
          do
          {
            v67 = (*(v12 + 19) + v65);
            v68 = *(*(v12 + 7) + 160 * v67[9].i32[1] + 100);
            if (v68 > 0.0)
            {
              v69 = v67[6].f32[2];
              v70 = v68 * v69;
              if (v70 > v69)
              {
                v70 = v67[6].f32[2];
              }

              v67[7].f32[2] = -v70;
              v67[7].f32[3] = v70;
              btSequentialImpulseConstraintSolver::resolveSingleConstraintRowGeneric(this, (*(v12 + 3) + 224 * v67[9].i32[2]), (*(v12 + 3) + 224 * v67[9].i32[3]), v67);
            }

            v65 += 160;
          }

          while (v66 != v65);
        }
      }
    }
  }

  else
  {
    if (v25 >= 1)
    {
      for (j = 0; j < v25; ++j)
      {
        v27 = (*(v12 + 11) + 160 * *(*(v12 + 27) + 4 * j));
        if (v27[9].i32[0] > a2)
        {
          btSequentialImpulseConstraintSolver::resolveSingleConstraintRowGeneric(this, (*(v12 + 3) + 224 * v27[9].i32[2]), (*(v12 + 3) + 224 * v27[9].i32[3]), v27);
          v25 = *(v12 + 19);
        }
      }
    }

    if (*(a9 + 20) > a2)
    {
      if (v9 >= 1)
      {
        v28 = v9;
        do
        {
          if (*(*a7 + 28) == 1)
          {
            v29 = btSequentialImpulseConstraintSolver::getOrInitSolverBody(v12, *(*a7 + 40));
            v30 = btSequentialImpulseConstraintSolver::getOrInitSolverBody(v12, *(*a7 + 48));
            this = (*(**a7 + 48))(*a7, *(v12 + 3) + 224 * v29, *(v12 + 3) + 224 * v30, *(a9 + 12));
          }

          ++a7;
          --v28;
        }

        while (v28);
      }

      v31 = *(v12 + 11);
      if (v31 >= 1)
      {
        v32 = 0;
        v33 = 4 * v31;
        do
        {
          v34 = (*(v12 + 7) + 160 * *(*(v12 + 23) + v32));
          btSequentialImpulseConstraintSolver::resolveSingleConstraintRowLowerLimit(this, (*(v12 + 3) + 224 * v34[9].i32[2]), (*(v12 + 3) + 224 * v34[9].i32[3]), v34);
          v32 += 4;
        }

        while (v33 != v32);
      }

      v35 = *(v12 + 27);
      if (v35 >= 1)
      {
        v36 = 0;
        v37 = 4 * v35;
        do
        {
          v38 = (*(v12 + 15) + 160 * *(*(v12 + 31) + v36));
          v39 = *(*(v12 + 7) + 160 * v38[9].i32[1] + 100);
          if (v39 > 0.0)
          {
            v40 = v38[6].f32[2];
            v38[7].f32[2] = -(v40 * v39);
            v38[7].f32[3] = v39 * v40;
            btSequentialImpulseConstraintSolver::resolveSingleConstraintRowGeneric(this, (*(v12 + 3) + 224 * v38[9].i32[2]), (*(v12 + 3) + 224 * v38[9].i32[3]), v38);
          }

          v36 += 4;
        }

        while (v37 != v36);
      }

      v41 = *(v12 + 35);
      if (v41 >= 1)
      {
        v42 = 0;
        v43 = 160 * v41;
        do
        {
          v44 = (*(v12 + 19) + v42);
          v45 = *(*(v12 + 7) + 160 * v44[9].i32[1] + 100);
          if (v45 > 0.0)
          {
            v46 = v44[6].f32[2];
            v47 = v45 * v46;
            if (v47 > v46)
            {
              v47 = v44[6].f32[2];
            }

            v44[7].f32[2] = -v47;
            v44[7].f32[3] = v47;
            btSequentialImpulseConstraintSolver::resolveSingleConstraintRowGeneric(this, (*(v12 + 3) + 224 * v44[9].i32[2]), (*(v12 + 3) + 224 * v44[9].i32[3]), v44);
          }

          v42 += 160;
        }

        while (v43 != v42);
      }
    }
  }

  return 0.0;
}

void btSequentialImpulseConstraintSolver::solveGroupCacheFriendlySplitImpulseIterations(uint64_t a1, float32x4_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(a9 + 44))
  {
    v11 = *(a9 + 20);
    if (*(a9 + 65))
    {
      if (v11 >= 1)
      {
        for (i = 0; i < v11; ++i)
        {
          v18 = *(a1 + 44);
          if (v18 >= 1)
          {
            v19 = 0;
            v20 = 4 * v18;
            do
            {
              v21 = (*(a1 + 56) + 160 * *(*(a1 + 184) + v19));
              a2 = btSequentialImpulseConstraintSolver::resolveSplitPenetrationImpulseCacheFriendly(a2, a1, (*(a1 + 24) + 224 * v21[9].i32[2]), (*(a1 + 24) + 224 * v21[9].i32[3]), v21);
              v19 += 4;
            }

            while (v20 != v19);
            v11 = *(a9 + 20);
          }
        }
      }
    }

    else if (v11 >= 1)
    {
      for (j = 0; j < v11; ++j)
      {
        v13 = *(a1 + 44);
        if (v13 >= 1)
        {
          v14 = 0;
          v15 = 4 * v13;
          do
          {
            v16 = (*(a1 + 56) + 160 * *(*(a1 + 184) + v14));
            a2 = btSequentialImpulseConstraintSolver::resolveSplitPenetrationImpulseCacheFriendly(a2, a1, (*(a1 + 24) + 224 * v16[9].i32[2]), (*(a1 + 24) + 224 * v16[9].i32[3]), v16);
            v14 += 4;
          }

          while (v15 != v14);
          v11 = *(a9 + 20);
        }
      }
    }
  }
}

double btSequentialImpulseConstraintSolver::solveGroupCacheFriendlyIterations(btSequentialImpulseConstraintSolver *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, int a7, uint64_t a8)
{
  (*(*a1 + 48))(a1, a2, a3, a4, a5);
  if (*(a1 + 74) <= *(a8 + 20))
  {
    v16 = *(a8 + 20);
  }

  else
  {
    v16 = *(a1 + 74);
  }

  if (v16 >= 1)
  {
    for (i = 0; i != v16; ++i)
    {
      btSequentialImpulseConstraintSolver::solveSingleIteration(a1, i, v12, v13, v14, v15, a6, a7, a8);
    }
  }

  return 0.0;
}

double btSequentialImpulseConstraintSolver::solveGroupCacheFriendlyFinish(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, btTransform *a5, __n128 a6)
{
  v8 = *(a4 + 64);
  if ((v8 & 4) != 0)
  {
    v9 = *(a1 + 44);
    if (v9 >= 1)
    {
      v10 = *(a1 + 120);
      v11 = (*(a1 + 56) + 148);
      do
      {
        v12 = *(v11 - 3);
        v13 = *v11;
        v14 = *(v10 + 160 * *v11 + 100);
        v12[31] = *(v11 - 12);
        v12[32] = v14;
        if ((v8 & 0x10) != 0)
        {
          v12[33] = *(v10 + 260 + 160 * v13);
        }

        v11 += 40;
        --v9;
      }

      while (v9);
    }
  }

  v15 = *(a1 + 76);
  if (v15 >= 1)
  {
    v16 = 0;
    v17 = 160 * v15;
    do
    {
      v18 = (*(a1 + 88) + v16);
      v19 = v18[8].i64[1];
      v20 = *(v19 + 64);
      if (v20)
      {
        v21 = vmulq_n_f32(vmulq_f32(*(*(v19 + 40) + 400), vmulq_n_f32(v18[1], v18[6].f32[1])), 1.0 / *(a4 + 12));
        v21.i32[3] = 0;
        v22 = v20[1];
        *v20 = vaddq_f32(*v20, v21);
        v23 = vmulq_n_f32(vmulq_f32(*(*(v19 + 48) + 400), vmulq_n_f32(v18[3], v18[6].f32[1])), 1.0 / *(a4 + 12));
        v23.i32[3] = 0;
        v24 = v20[3];
        v20[2] = vaddq_f32(v20[2], v23);
        v25 = vmulq_n_f32(vmulq_n_f32(vmulq_f32(*v18, *(*(v19 + 40) + 624)), v18[6].f32[1]), 1.0 / *(a4 + 12));
        v25.i32[3] = 0;
        v20[1] = vaddq_f32(v22, v25);
        v26 = vmulq_n_f32(vmulq_n_f32(vmulq_f32(v18[2], *(*(v19 + 48) + 624)), v18[6].f32[1]), 1.0 / *(a4 + 12));
        v26.i32[3] = 0;
        v20[3] = vaddq_f32(v24, v26);
      }

      v27 = v18[6].f32[1];
      *(v19 + 56) = v27;
      if (fabsf(v27) >= *(v19 + 24))
      {
        *(v19 + 28) = 0;
      }

      v16 += 160;
    }

    while (v17 != v16);
  }

  v28 = *(a1 + 12);
  if (v28 >= 1)
  {
    v29 = 0;
    v30 = 0;
    v31 = *(a1 + 24);
    do
    {
      if (*(v31 + v29 + 208))
      {
        if (*(a4 + 44))
        {
          a6.n128_u32[0] = *(a4 + 12);
          btSolverBody::writebackVelocityAndTransform((v31 + v29), a6.n128_f64[0], *(a4 + 52), a2, a3, a4, a5);
        }

        else
        {
          v32 = (v31 + v29);
          v33 = vaddq_f32(v32[12], v32[5]);
          v32[11] = vaddq_f32(v32[11], v32[4]);
          v32[12] = v33;
        }

        *(*(*(a1 + 24) + v29 + 208) + 352) = *(*(a1 + 24) + v29 + 176);
        v34 = (*(a1 + 24) + v29);
        a6 = v34[12];
        *(v34[13].n128_u64[0] + 368) = a6;
        if (*(a4 + 44))
        {
          v35 = *(a1 + 24) + v29;
          v36 = *(v35 + 208);
          *(v36 + 16) = *v35;
          *(v36 + 32) = *(v35 + 16);
          *(v36 + 48) = *(v35 + 32);
          a6 = *(v35 + 48);
          *(v36 + 64) = a6;
        }

        v31 = *(a1 + 24);
        *(*(v31 + v29 + 208) + 240) = -1;
        v28 = *(a1 + 12);
      }

      ++v30;
      v29 += 224;
    }

    while (v30 < v28);
  }

  if ((*(a1 + 44) & 0x80000000) != 0 && (*(a1 + 48) & 0x80000000) != 0)
  {
    v37 = *(a1 + 56);
    if (v37 && *(a1 + 64) == 1)
    {
      btAlignedFreeInternal(v37);
    }

    *(a1 + 64) = 1;
    *(a1 + 56) = 0;
    *(a1 + 48) = 0;
  }

  *(a1 + 44) = 0;
  if ((*(a1 + 76) & 0x80000000) != 0 && (*(a1 + 80) & 0x80000000) != 0)
  {
    v38 = *(a1 + 88);
    if (v38 && *(a1 + 96) == 1)
    {
      btAlignedFreeInternal(v38);
    }

    *(a1 + 96) = 1;
    *(a1 + 88) = 0;
    *(a1 + 80) = 0;
  }

  *(a1 + 76) = 0;
  if ((*(a1 + 108) & 0x80000000) != 0 && (*(a1 + 112) & 0x80000000) != 0)
  {
    v39 = *(a1 + 120);
    if (v39 && *(a1 + 128) == 1)
    {
      btAlignedFreeInternal(v39);
    }

    *(a1 + 128) = 1;
    *(a1 + 120) = 0;
    *(a1 + 112) = 0;
  }

  *(a1 + 108) = 0;
  if ((*(a1 + 140) & 0x80000000) != 0 && (*(a1 + 144) & 0x80000000) != 0)
  {
    v40 = *(a1 + 152);
    if (v40 && *(a1 + 160) == 1)
    {
      btAlignedFreeInternal(v40);
    }

    *(a1 + 160) = 1;
    *(a1 + 152) = 0;
    *(a1 + 144) = 0;
  }

  *(a1 + 140) = 0;
  if ((*(a1 + 12) & 0x80000000) != 0 && (*(a1 + 16) & 0x80000000) != 0)
  {
    v41 = *(a1 + 24);
    if (v41 && *(a1 + 32) == 1)
    {
      btAlignedFreeInternal(v41);
    }

    *(a1 + 32) = 1;
    *(a1 + 24) = 0;
    *(a1 + 16) = 0;
  }

  *(a1 + 12) = 0;
  return 0.0;
}

double btSolverBody::writebackVelocityAndTransform(btSolverBody *this, double result, float a3, uint64_t a4, uint64_t a5, uint64_t a6, btTransform *a7)
{
  if (*(this + 26))
  {
    v8 = vaddq_f32(*(this + 12), *(this + 5));
    *(this + 11) = vaddq_f32(*(this + 11), *(this + 4));
    *(this + 12) = v8;
    if (*(this + 36) != 0.0 || *(this + 37) != 0.0 || *(this + 38) != 0.0 || *(this + 40) != 0.0 || *(this + 41) != 0.0 || *(this + 42) != 0.0)
    {
      v9 = vmulq_n_f32(*(this + 10), a3);
      v9.i32[3] = 0;
      v12 = v9;
      btTransformUtil::integrateTransform(this, (this + 144), &v12, &v13, *&result, a7);
      v10 = v13.var0[1];
      *this = v13.var0[0];
      *(this + 1) = v10;
      result = *v13.var0[2].var0.var0;
      v11 = v14;
      *(this + 2) = v13.var0[2];
      *(this + 3) = v11;
    }
  }

  return result;
}

double btSequentialImpulseConstraintSolver::solveGroup(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(*a1 + 64))(a1);
  (*(*a1 + 72))(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  (*(*a1 + 56))(a1, a2, a3, a8);
  return 0.0;
}

double btSliderConstraint::initParams(btSliderConstraint *this)
{
  *&this->var19 = xmmword_21C2A4650;
  *&this->var23 = xmmword_21C2A4660;
  *&this->var27 = xmmword_21C2A4660;
  *&this->var39 = xmmword_21C2A4670;
  *&this->var43 = xmmword_21C2A4670;
  *&this->var31 = xmmword_21C2A4670;
  *&this->var35 = xmmword_21C2A4670;
  LOBYTE(this[1].var12) = 0;
  this[1].var15.var0.var0[0].var0.var0[2] = 0.0;
  *&this[1].var15.var0.var0[0].var0.var0[3] = 0;
  *(&this[1].var12 + 4) = 0;
  *&this[1].var14 = 0;
  this->var14 = 1;
  v1 = (this->var8 + 16);
  v2 = (this->var9 + 16);
  this->var49[0].var0.var0.var0[0] = 0.0;
  return btSliderConstraint::calculateTransforms(this, v1, v2);
}

double btSliderConstraint::calculateTransforms(btSliderConstraint *this, const btTransform *a2, const btTransform *a3)
{
  var18_low = LOBYTE(this->var18);
  if ((var18_low & 1) != 0 || !this->var13)
  {
    v34 = a2->var0.var0[1];
    v35 = *(this->var15.var0.var0 + 4);
    v36 = *(&this->var15.var0.var0[1] + 4);
    v35.i32[3] = 0;
    v36.i32[3] = 0;
    v38 = *(&this->var15.var0.var0[2] + 4);
    v37 = *(&this->var15.var1 + 4);
    v38.i32[3] = 0;
    v39 = a2->var0.var0[2];
    v40 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v35, v34.f32[0]), v36, *v34.f32, 1), v38, v34, 2);
    v41 = vmulq_f32(a2->var0.var0[0], v37);
    v42 = vmulq_f32(v34, v37);
    v43 = vmulq_f32(v39, v37);
    v44 = vextq_s8(v42, v42, 8uLL).u64[0];
    v43.i32[3] = 0;
    v45 = vpadd_f32(*v41.i8, *v42.i8);
    v33 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v35, COERCE_FLOAT(*a2->var0.var0)), v36, *a2->var0.var0[0].var0.var0, 1), v38, a2->var0.var0[0], 2);
    v46 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v35, v39.f32[0]), v36, *v39.f32, 1), v38, v39, 2);
    *v47.f32 = vadd_f32(v45, vzip1_s32(*&vextq_s8(v41, v41, 8uLL), v44));
    *&v47.u32[2] = vpadd_f32(vpadd_f32(*v43.i8, *&vextq_s8(v43, v43, 8uLL)), 0);
    v18 = vaddq_f32(a2->var1, v47);
    v19 = &this->var54.var0.var0[2];
    p_var1 = &this->var54.var1;
    this->var54.var0.var0[2] = v33;
    this->var54.var1 = v40;
    p_var55 = &this->var55;
    this->var55 = v46;
    this->var56 = v18;
    v48 = a3->var0.var0[1];
    v49 = *(this->var16.var0.var0 + 4);
    v50 = *(&this->var16.var0.var0[1] + 4);
    v49.i32[3] = 0;
    v50.i32[3] = 0;
    v51 = *(&this->var16.var0.var0[2] + 4);
    v52 = *(&this->var16.var1 + 4);
    v51.i32[3] = 0;
    v53 = a3->var0.var0[2];
    v54 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v49, v48.f32[0]), v50, *v48.f32, 1), v51, v48, 2);
    v55 = vmulq_f32(a3->var0.var0[0], v52);
    v56 = vmulq_f32(v48, v52);
    v57 = vmulq_f32(v53, v52);
    v57.i32[3] = 0;
    *v35.f32 = vadd_f32(vpadd_f32(*v55.i8, *v56.i8), vzip1_s32(*&vextq_s8(v55, v55, 8uLL), *&vextq_s8(v56, v56, 8uLL)));
    *&v35.u32[2] = vpadd_f32(vpadd_f32(*v57.i8, *&vextq_s8(v57, v57, 8uLL)), 0);
    v32 = vaddq_f32(a3->var1, v35);
    this->var57 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v49, COERCE_FLOAT(*a3->var0.var0)), v50, *a3->var0.var0[0].var0.var0, 1), v51, a3->var0.var0[0], 2);
    this->var58 = v54;
    this->var59 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v49, v53.f32[0]), v50, *v53.f32, 1), v51, v53, 2);
    this->var60 = v32;
    this->var62 = v18;
    v33.var0.var0[1] = v40.var0.var0[0];
    *&this->var63 = v32;
    *&v33.var0.var0[2] = LODWORD(v46.var0.var0[0]);
    this->var61 = v33;
    if (var18_low)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v4 = a3->var0.var0[1];
    v5 = *(this->var16.var0.var0 + 4);
    v6 = *(&this->var16.var0.var0[1] + 4);
    v5.i32[3] = 0;
    v6.i32[3] = 0;
    v8 = *(&this->var16.var0.var0[2] + 4);
    v7 = *(&this->var16.var1 + 4);
    v8.i32[3] = 0;
    v9 = a3->var0.var0[2];
    v10 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5, v4.f32[0]), v6, *v4.f32, 1), v8, v4, 2);
    v11 = vmulq_f32(a3->var0.var0[0], v7);
    v12 = vmulq_f32(v4, v7);
    v13 = vmulq_f32(v9, v7);
    v14 = vextq_s8(v12, v12, 8uLL).u64[0];
    v13.i32[3] = 0;
    v15 = vpadd_f32(*v11.i8, *v12.i8);
    v33 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5, COERCE_FLOAT(*a3->var0.var0)), v6, *a3->var0.var0[0].var0.var0, 1), v8, a3->var0.var0[0], 2);
    v16 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5, v9.f32[0]), v6, *v9.f32, 1), v8, v9, 2);
    *v17.f32 = vadd_f32(v15, vzip1_s32(*&vextq_s8(v11, v11, 8uLL), v14));
    *&v17.u32[2] = vpadd_f32(vpadd_f32(*v13.i8, *&vextq_s8(v13, v13, 8uLL)), 0);
    v18 = vaddq_f32(a3->var1, v17);
    v19 = &this->var54.var0.var0[2];
    p_var1 = &this->var54.var1;
    this->var54.var0.var0[2] = v33;
    this->var54.var1 = v10;
    p_var55 = &this->var55;
    this->var55 = v16;
    this->var56 = v18;
    v22 = a2->var0.var0[1];
    v23 = *(this->var15.var0.var0 + 4);
    v24 = *(&this->var15.var0.var0[1] + 4);
    v23.i32[3] = 0;
    v24.i32[3] = 0;
    v25 = *(&this->var15.var0.var0[2] + 4);
    v26 = *(&this->var15.var1 + 4);
    v25.i32[3] = 0;
    v27 = a2->var0.var0[2];
    v28 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v23, v22.f32[0]), v24, *v22.f32, 1), v25, v22, 2);
    v29 = vmulq_f32(a2->var0.var0[0], v26);
    v30 = vmulq_f32(v22, v26);
    v31 = vmulq_f32(v27, v26);
    v31.i32[3] = 0;
    *v5.f32 = vadd_f32(vpadd_f32(*v29.i8, *v30.i8), vzip1_s32(*&vextq_s8(v29, v29, 8uLL), *&vextq_s8(v30, v30, 8uLL)));
    *&v5.u32[2] = vpadd_f32(vpadd_f32(*v31.i8, *&vextq_s8(v31, v31, 8uLL)), 0);
    v32 = vaddq_f32(a2->var1, v5);
    this->var57 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v23, COERCE_FLOAT(*a2->var0.var0)), v24, *a2->var0.var0[0].var0.var0, 1), v25, a2->var0.var0[0], 2);
    this->var58 = v28;
    this->var59 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v23, v27.f32[0]), v24, *v27.f32, 1), v25, v27, 2);
    this->var60 = v32;
    this->var62 = v18;
    v33.var0.var0[1] = v10.var0.var0[0];
    *&this->var63 = v32;
    *&v33.var0.var0[2] = LODWORD(v16.var0.var0[0]);
    this->var61 = v33;
  }

  if (!this->var13)
  {
    v58 = vsubq_f32(v18, v32);
    goto LABEL_8;
  }

LABEL_6:
  v58 = vsubq_f32(v32, v18);
LABEL_8:
  v59 = 0;
  v58.i32[3] = 0;
  *&this->var71 = v58;
  v60 = vmulq_f32(v33, v58);
  v61 = vmulq_n_f32(v33, vadd_f32(vpadd_f32(*v60.i8, *v60.i8), *&vextq_s8(v60, v60, 8uLL)).f32[0]);
  v61.i32[3] = 0;
  v62 = vaddq_f32(v18, v61);
  *&this->var67 = v62;
  do
  {
    v62.i32[0] = LODWORD(v19->var0.var0[v59]);
    v62.i32[1] = LODWORD(p_var1->var0.var0[v59]);
    v62.i32[2] = LODWORD(p_var55->var0.var0[v59]);
    v63 = vmulq_f32(v62, v58);
    v64 = vpadd_f32(*v63.i8, *v63.i8);
    v62 = vextq_s8(v63, v63, 8uLL);
    *v62.f32 = vadd_f32(v64, *v62.f32);
    *(&this[1].var0 + v59 * 4) = v62.i32[0];
    ++v59;
  }

  while (v59 != 3);
  return *v62.i64;
}

void btSliderConstraint::btSliderConstraint(btSliderConstraint *this, btRigidBody *a2, btRigidBody *a3, const btTransform *a4, const btTransform *a5, char a6)
{
  btTypedConstraint::btTypedConstraint(this, 7, a2, a3);
  *v9 = &unk_282DCAED0;
  *(v9 + 72) = 0;
  *(v9 + 80) = *a4;
  *(v9 + 144) = *a5;
  *(v9 + 208) = a6;
  btSliderConstraint::initParams(v9);
}

void btSliderConstraint::btSliderConstraint(btSliderConstraint *this, float32x4_t *a2, const btTransform *a3, char a4)
{
  FixedBody = btTypedConstraint::getFixedBody(this);
  btTypedConstraint::btTypedConstraint(this, 7, FixedBody, a2);
  this->var0 = &unk_282DCAED0;
  this->var13 = 0;
  v9 = a3->var0.var0[0];
  *(this->var16.var0.var0 + 4) = a3->var0.var0[0];
  v10 = a3->var0.var0[1];
  *(&this->var16.var0.var0[1] + 4) = v10;
  v11 = a3->var0.var0[2];
  *(&this->var16.var0.var0[2] + 4) = v11;
  var1 = a3->var1;
  *(&this->var16.var1 + 4) = var1;
  LOBYTE(this->var18) = a4;
  v13 = a2[1];
  v14 = a2[2];
  v15 = a2[3];
  v16 = vmulq_f32(var1, v13);
  v17 = vmulq_f32(var1, v14);
  *v16.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v16, v16, 8uLL), *&vextq_s8(v17, v17, 8uLL)), vpadd_f32(*v16.f32, *v17.i8));
  v18 = vmulq_f32(var1, v15);
  v18.i32[3] = 0;
  *&v16.u32[2] = vpadd_f32(vpadd_f32(*v18.i8, *&vextq_s8(v18, v18, 8uLL)), 0);
  v11.i32[3] = 0;
  v19 = vaddq_f32(a2[4], v16);
  v10.i32[3] = 0;
  v9.i32[3] = 0;
  *(this->var15.var0.var0 + 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v9, v13.f32[0]), v10, *v13.f32, 1), v11, v13, 2);
  *(&this->var15.var0.var0[1] + 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v9, v14.f32[0]), v10, *v14.f32, 1), v11, v14, 2);
  *(&this->var15.var0.var0[2] + 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v9, v15.f32[0]), v10, *v15.f32, 1), v11, v15, 2);
  *(&this->var15.var1 + 4) = v19;
  btSliderConstraint::initParams(v20);
}

btSliderConstraint *btSliderConstraint::getInfo1(btSliderConstraint *result, int32x2_t *a2)
{
  if (result->var13)
  {
    v3 = 0;
    a2->i32[0] = 0;
LABEL_9:
    a2->i32[1] = v3;
    return result;
  }

  v4 = result;
  *a2 = 0x200000004;
  *v5.i64 = btSliderConstraint::calculateTransforms(result, (result->var8 + 16), (result->var9 + 16));
  btSliderConstraint::testAngLimits(v4, v5, v6, v7);
  result = btSliderConstraint::testLinLimits(v4);
  if ((v4->var48 & 1) != 0 || LOBYTE(v4[1].var12) == 1)
  {
    *a2 = vadd_s32(*a2, 0xFFFFFFFF00000001);
  }

  if ((v4->var48 & 0x100) != 0 || LOBYTE(v4[1].var15.var0.var0[0].var0.var0[1]) == 1)
  {
    v8 = a2->i32[1];
    ++a2->i32[0];
    v3 = v8 - 1;
    goto LABEL_9;
  }

  return result;
}

void btSliderConstraint::testAngLimits(btSliderConstraint *this, float32x4_t a2, float32x4_t a3, float32x4_t a4)
{
  this[1].var10 = 0.0;
  BYTE1(this->var48) = 0;
  var21 = this->var21;
  var22 = this->var22;
  if (var21 <= var22)
  {
    a3.i32[0] = LODWORD(this->var54.var0.var0[2].var0.var0[1]);
    a3.i32[1] = LODWORD(this->var54.var1.var0.var0[1]);
    a3.i32[2] = LODWORD(this->var55.var0.var0[1]);
    a2.i32[0] = LODWORD(this->var54.var0.var0[2].var0.var0[2]);
    a2.i32[1] = LODWORD(this->var54.var1.var0.var0[2]);
    a2.i32[2] = LODWORD(this->var55.var0.var0[2]);
    a4.i32[0] = LODWORD(this->var57.var0.var0[1]);
    a4.i32[1] = LODWORD(this->var58.var0.var0[1]);
    a4.i32[2] = LODWORD(this->var59.var0.var0[1]);
    v7 = vmulq_f32(a2, a4);
    v8 = vmulq_f32(a3, a4);
    v9 = atan2f(vadd_f32(vpadd_f32(*v7.i8, *v7.i8), *&vextq_s8(v7, v7, 8uLL)).f32[0], vadd_f32(vpadd_f32(*v8.i8, *v8.i8), *&vextq_s8(v8, v8, 8uLL)).f32[0]);
    v10 = v9;
    if (var21 < var22)
    {
      if (v9 >= var21)
      {
        if (v9 > var22)
        {
          v12 = fmodf(v9 - var22, 6.2832);
          if (v12 >= -3.1416)
          {
            if (v12 > 3.1416)
            {
              v12 = v12 + -6.2832;
            }
          }

          else
          {
            v12 = v12 + 6.2832;
          }

          v15 = fabsf(v12);
          v16 = fmodf(v10 - var21, 6.2832);
          if (v16 >= -3.1416)
          {
            if (v16 > 3.1416)
            {
              v16 = v16 + -6.2832;
            }
          }

          else
          {
            v16 = v16 + 6.2832;
          }

          if (fabsf(v16) < v15)
          {
            v10 = v10 + -6.2832;
          }
        }
      }

      else
      {
        v11 = fmodf(var21 - v9, 6.2832);
        if (v11 >= -3.1416)
        {
          if (v11 > 3.1416)
          {
            v11 = v11 + -6.2832;
          }
        }

        else
        {
          v11 = v11 + 6.2832;
        }

        v13 = fabsf(v11);
        v14 = fmodf(var22 - v10, 6.2832);
        if (v14 >= -3.1416)
        {
          if (v14 > 3.1416)
          {
            v14 = v14 + -6.2832;
          }
        }

        else
        {
          v14 = v14 + 6.2832;
        }

        if (v13 >= fabsf(v14))
        {
          v10 = v10 + 6.2832;
        }
      }
    }

    *(&this[1].var9 + 1) = v10;
    if (v10 < var21 || (var21 = var22, v10 > var22))
    {
      this[1].var10 = v10 - var21;
      BYTE1(this->var48) = 1;
    }
  }
}

btSliderConstraint *btSliderConstraint::testLinLimits(btSliderConstraint *this)
{
  LOBYTE(this->var48) = 0;
  v1 = *&this[1].var0;
  *&this[1].var9 = v1;
  var19 = this->var19;
  var20 = this->var20;
  if (var19 > var20)
  {
    goto LABEL_2;
  }

  if (v1 <= var20)
  {
    if (v1 >= var19)
    {
LABEL_2:
      LODWORD(this[1].var0) = 0;
      return this;
    }

    v4 = v1 - var19;
  }

  else
  {
    v4 = v1 - var20;
  }

  *&this[1].var0 = v4;
  LOBYTE(this->var48) = 1;
  return this;
}

void btSliderConstraint::getInfo2(float32x4_t *a1, uint64_t a2, int8x16_t a3, double a4, double a5, float32x4_t a6, float32x4_t a7)
{
  v7 = a1[2].i64[1];
  a3.i32[0] = v7[24].i32[0];
  btSliderConstraint::getInfo2NonVirtual(a1, a2, v7 + 1, (a1[3].i64[0] + 16), v7 + 22, (a1[3].i64[0] + 352), a3, *(a1[3].i64[0] + 384), a5, a6, a7);
}

void btSliderConstraint::getInfo2NonVirtual(float32x4_t *this, uint64_t a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, float32x4_t *a6, int8x16_t a7, float a8, double a9, float32x4_t a10, float32x4_t a11)
{
  v15 = *(a2 + 40);
  if (this[13].i8[0])
  {
    v16 = 1.0;
  }

  else
  {
    v16 = -1.0;
  }

  v17 = fminf(*a7.i32, a8) < 0.00000011921;
  v18 = *a7.i32 + a8;
  v19 = a8 / v18;
  if (v18 <= 0.0)
  {
    v19 = 0.5;
  }

  *a7.i32 = 1.0 - v19;
  a10.i32[0] = this[59].i32[0];
  a10.i32[1] = this[60].i32[0];
  v20 = a10;
  v20.i32[2] = this[61].i32[0];
  a11.i32[0] = this[63].i32[0];
  a11.i32[1] = this[64].i32[0];
  v21 = a11;
  v21.i32[2] = this[65].i32[0];
  v22 = this[4].u8[9];
  if (v22 == 1)
  {
    v23 = vmulq_n_f32(v20, v19);
    v23.i32[3] = 0;
    v24 = vmulq_n_f32(v21, *a7.i32);
    v24.i32[3] = 0;
    v25 = vaddq_f32(v23, v24);
    v26 = vmulq_f32(v25, v25);
    _Q22 = vmulq_n_f32(v25, 1.0 / sqrtf(vadd_f32(*&vextq_s8(v26, v26, 8uLL), vpadd_f32(*v26.i8, *v26.i8)).f32[0]));
    _S6 = _Q22.i32[1];
    if (fabsf(_Q22.f32[2]) <= 0.70711)
    {
      v42 = vmuls_lane_f32(_Q22.f32[1], *_Q22.f32, 1) + (_Q22.f32[0] * _Q22.f32[0]);
      v43 = 1.0 / sqrtf(v42);
      *&v39 = -(_Q22.f32[1] * v43);
      v34 = v43 * _Q22.f32[0];
      v199.i32[0] = v39;
      v199.f32[1] = v43 * _Q22.f32[0];
      v199.i32[2] = 0;
      v36 = -(_Q22.f32[2] * (v43 * _Q22.f32[0]));
      v37 = _Q22.f32[2] * *&v39;
      v198.f32[0] = v36;
      v198.f32[1] = _Q22.f32[2] * *&v39;
      v38 = v42 * v43;
      v198.f32[2] = v42 * v43;
      v35 = 0.0;
    }

    else
    {
      __asm { FMLA            S16, S6, V22.S[1] }

      v33 = 1.0 / sqrtf(_S16);
      v199.i32[0] = 0;
      v34 = -(_Q22.f32[2] * v33);
      v35 = vmuls_lane_f32(v33, *_Q22.f32, 1);
      *(v199.i64 + 4) = __PAIR64__(LODWORD(v35), LODWORD(v34));
      v36 = _S16 * v33;
      v37 = -(_Q22.f32[0] * v35);
      v198.f32[0] = _S16 * v33;
      v198.f32[1] = v37;
      v38 = v34 * _Q22.f32[0];
      v198.f32[2] = v34 * _Q22.f32[0];
      v39 = 0;
    }
  }

  else
  {
    v39 = this[59].i32[1];
    v34 = this[60].f32[1];
    v35 = this[61].f32[1];
    v40.i64[0] = __PAIR64__(LODWORD(v34), v39);
    v40.i64[1] = LODWORD(v35);
    v36 = this[59].f32[2];
    v37 = this[60].f32[2];
    v38 = this[61].f32[2];
    v41.i64[0] = __PAIR64__(LODWORD(v37), LODWORD(v36));
    v41.i64[1] = LODWORD(v38);
    v198 = v41;
    v199 = v40;
    _Q22 = v20;
  }

  v44 = this[66];
  v45 = this[62];
  v46 = *(a2 + 16);
  *v46 = v39;
  v46[1] = LODWORD(v34);
  v46[2] = LODWORD(v35);
  v47 = 4 * v15;
  v46[v15] = LODWORD(v36);
  v48 = 4 * v15 + 4;
  *(v46 + v48) = LODWORD(v37);
  v49 = 4 * v15 + 8;
  *(v46 + v49) = v38;
  v50 = *(a2 + 32);
  *v50 = -*&v39;
  v50[1] = -v34;
  v50[2] = -v35;
  v50[v15] = -v36;
  *(v50 + v48) = -v37;
  *(v50 + v49) = -v38;
  v51 = this[20].i32[2];
  v52 = this[19].f32[1];
  if ((v51 & 0x80) == 0)
  {
    v52 = v52 * *(a2 + 4);
  }

  *v53.f32 = vext_s8(*a10.f32, *&vextq_s8(v20, v20, 8uLL), 4uLL);
  v53.i64[1] = a10.i64[0];
  *v54.f32 = vext_s8(*a11.f32, *&vextq_s8(v21, v21, 8uLL), 4uLL);
  v54.i64[1] = a11.i64[0];
  v55 = v52 * *a2;
  v56 = vsubq_f32(vmulq_f32(v20, v54), vmulq_f32(v53, v21));
  v57 = vextq_s8(vextq_s8(v56, v56, 0xCuLL), v56, 8uLL);
  v57.i32[3] = 0;
  v58 = v199;
  v59 = vmulq_f32(v199, v57);
  v60 = *(a2 + 48);
  *v60 = v55 * vadd_f32(vpadd_f32(*v59.i8, *v59.i8), *&vextq_s8(v59, v59, 8uLL)).f32[0];
  v61 = v198;
  v62 = vmulq_f32(v198, v57);
  v60[v15] = v55 * vadd_f32(vpadd_f32(*v62.i8, *v62.i8), *&vextq_s8(v62, v62, 8uLL)).f32[0];
  if ((v51 & 0x40) != 0)
  {
    v63 = this[20].i32[0];
    v64 = *(a2 + 56);
    *v64 = v63;
    v64[v15] = v63;
  }

  v65 = vsubq_f32(v44, v45);
  v66 = a3[3];
  v67 = a4[3];
  v68 = 2 * v15;
  v69 = 3 * v15;
  v197 = 0uLL;
  v70 = &v46[2 * v15];
  v71 = &v46[3 * v15];
  if (v22)
  {
    v72 = vsubq_f32(this[66], v67);
    v72.i32[3] = 0;
    v73 = vmulq_f32(_Q22, v72);
    v74 = vmulq_n_f32(_Q22, vadd_f32(vpadd_f32(*v73.i8, *v73.i8), *&vextq_s8(v73, v73, 8uLL)).f32[0]);
    v74.i32[3] = 0;
    v75 = vsubq_f32(this[62], v66);
    v75.i32[3] = 0;
    v76 = vmulq_f32(_Q22, v75);
    v77 = vmulq_n_f32(_Q22, vadd_f32(vpadd_f32(*v76.i8, *v76.i8), *&vextq_s8(v76, v76, 8uLL)).f32[0]);
    v77.i32[3] = 0;
    v78 = vsubq_f32(v75, v77);
    v79 = v78;
    v79.i32[3] = 0;
    v80 = vmulq_n_f32(_Q22, this[75].f32[0] - this[72].f32[0]);
    v80.i32[3] = 0;
    v81 = vmulq_n_f32(v78, *a7.i32);
    v82 = vsubq_f32(vaddq_f32(v80, v77), v74);
    v83 = vmulq_n_f32(v82, v19);
    v83.i32[3] = 0;
    v84 = vsubq_f32(v72, v74);
    v85 = vaddq_f32(v79, v83);
    v86 = vsubq_f32(v84, vmulq_n_f32(v82, *a7.i32));
    v86.i32[3] = 0;
    v87 = vmulq_n_f32(v84, v19);
    v87.i32[3] = 0;
    v81.i32[3] = 0;
    v58 = vaddq_f32(v87, v81);
    v88 = vmulq_f32(v58, v58);
    v89 = vadd_f32(vpadd_f32(*v88.i8, *v88.i8), *&vextq_s8(v88, v88, 8uLL)).f32[0];
    if (v89 <= 0.00000011921)
    {
      v58.i32[0] = this[59].i32[1];
      v58.i32[1] = this[60].i32[1];
      v58.i32[2] = this[61].i32[1];
    }

    else
    {
      v58 = vmulq_n_f32(v58, 1.0 / sqrtf(v89));
    }

    v106 = 0;
    v107 = vextq_s8(vextq_s8(v58, v58, 0xCuLL), v58, 8uLL);
    v108 = vsubq_f32(vmulq_f32(_Q22, v107), vmulq_f32(vextq_s8(vextq_s8(_Q22, _Q22, 0xCuLL), _Q22, 8uLL), v58));
    v61 = vextq_s8(vextq_s8(v108, v108, 0xCuLL), v108, 8uLL);
    v61.i32[3] = 0;
    v198 = v61;
    v199 = v58;
    v109 = vextq_s8(vextq_s8(v85, v85, 0xCuLL), v85, 8uLL);
    v110 = vsubq_f32(vmulq_f32(v85, v107), vmulq_f32(v109, v58));
    v111 = vextq_s8(vextq_s8(v86, v86, 0xCuLL), v86, 8uLL);
    v112 = vsubq_f32(vmulq_f32(v107, v86), vmulq_f32(v111, v58));
    v113 = vextq_s8(vextq_s8(v112, v112, 0xCuLL), v112, 8uLL);
    v113.i32[3] = 0;
    v197 = v113;
    v70[2] = v110.i32[0];
    *v70 = vextq_s8(v110, a7, 4uLL).u64[0];
    do
    {
      v50[v68 + v106] = -v197.f32[v106];
      ++v106;
    }

    while (v106 != 3);
    v114 = vextq_s8(vextq_s8(v61, v61, 0xCuLL), v61, 8uLL);
    v115 = vsubq_f32(vmulq_f32(v85, v114), vmulq_f32(v109, v61));
    v116 = vextq_s8(vextq_s8(v115, v115, 0xCuLL), v115, 8uLL);
    v116.i32[3] = 0;
    v117 = vsubq_f32(vmulq_f32(v114, v86), vmulq_f32(v111, v61));
    v118 = vextq_s8(vextq_s8(v117, v117, 0xCuLL), v117, 8uLL);
    v118.i32[3] = 0;
    v197 = v118;
    if (v17 && this[20].i8[5] == 1)
    {
      v197 = vmulq_n_f32(v118, *a7.i32);
      v116 = vmulq_n_f32(v116, v19);
    }

    v119 = 0;
    *v71 = v116.i64[0];
    v71[2] = v116.i32[2];
    do
    {
      v50[v69 + v119] = -v197.f32[v119];
      ++v119;
    }

    while (v119 != 3);
    v120 = 0;
    v101 = *(a2 + 8);
    v121 = v101 + 4 * v68;
    *v121 = v199.i64[0];
    *(v121 + 8) = v199.i32[2];
    v122 = v101 + 4 * v69;
    *v122 = v198.i64[0];
    *(v122 + 8) = v198.i32[2];
    v104 = *(a2 + 24);
    do
    {
      *(v104 + 4 * v68 + v120 * 4) = -v199.f32[v120];
      ++v120;
    }

    while (v120 != 3);
    for (i = 0; i != 3; ++i)
    {
      *(v104 + 4 * v69 + i * 4) = -v198.f32[i];
    }

    v91 = 0uLL;
  }

  else
  {
    v90 = 0;
    v91 = vsubq_f32(v67, v66);
    v91.i32[3] = 0;
    v92 = vextq_s8(vextq_s8(v91, v91, 0xCuLL), v91, 8uLL);
    v93 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v58, v58, 0xCuLL), v58, 8uLL), v91), vmulq_f32(v58, v92));
    v94 = vextq_s8(vextq_s8(v93, v93, 0xCuLL), v93, 8uLL);
    v94.i32[3] = 0;
    v196 = v94;
    do
    {
      *&v70[v90] = v19 * *&v196.i32[v90];
      ++v90;
    }

    while (v90 != 3);
    for (j = 0; j != 3; ++j)
    {
      v50[v68 + j] = *a7.i32 * *&v196.i32[j];
    }

    v96 = 0;
    v97 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v61, v61, 0xCuLL), v61, 8uLL), v91), vmulq_f32(v61, v92));
    v98 = vextq_s8(vextq_s8(v97, v97, 0xCuLL), v97, 8uLL);
    v98.i32[3] = 0;
    v196 = v98;
    do
    {
      *&v71[v96] = v19 * *&v196.i32[v96];
      ++v96;
    }

    while (v96 != 3);
    for (k = 0; k != 3; ++k)
    {
      v50[v69 + k] = *a7.i32 * *&v196.i32[k];
    }

    v100 = 0;
    v101 = *(a2 + 8);
    v102 = v101 + 4 * v68;
    *v102 = v199.i64[0];
    *(v102 + 8) = v199.i32[2];
    v103 = v101 + 4 * v69;
    *v103 = v198.i64[0];
    *(v103 + 8) = v198.i32[2];
    v104 = *(a2 + 24);
    do
    {
      *(v104 + 4 * v68 + v100 * 4) = -v199.f32[v100];
      ++v100;
    }

    while (v100 != 3);
    for (m = 0; m != 3; ++m)
    {
      *(v104 + 4 * v69 + m * 4) = -v198.f32[m];
    }

    v86 = 0uLL;
    v85 = 0uLL;
  }

  v65.i32[3] = 0;
  v124 = this[18].f32[1];
  if ((v51 & 0x20) == 0)
  {
    v124 = v124 * *(a2 + 4);
  }

  v125 = v124 * *a2;
  v126 = vmulq_f32(v58, v65);
  v60[v68] = v125 * vadd_f32(vpadd_f32(*v126.i8, *v126.i8), *&vextq_s8(v126, v126, 8uLL)).f32[0];
  v127 = vmulq_f32(v61, v65);
  v60[v69] = v125 * vadd_f32(vpadd_f32(*v127.i8, *v127.i8), *&vextq_s8(v127, v127, 8uLL)).f32[0];
  if ((v51 & 0x10) != 0)
  {
    v128 = this[19].i32[0];
    v129 = *(a2 + 56);
    *(v129 + 4 * v68) = v128;
    *(v129 + 4 * v69) = v128;
  }

  v130 = this[20].u8[4];
  v131 = _Q22.f32[2];
  if (v130 == 1)
  {
    v132 = v16 * this[72].f32[0];
    v133 = v132 <= 0.0;
    v134 = this[76].u8[0];
  }

  else
  {
    v134 = this[76].u8[0];
    if (v134 != 1)
    {
      v154 = 4;
      goto LABEL_92;
    }

    v133 = 0;
    v132 = 0.0;
  }

  v135 = v47;
  v136 = v47;
  *(v101 + v136 * 4) = _Q22.i64[0];
  v137 = (4 * v15) | 2;
  *(v101 + 4 * v137) = _Q22.i32[2];
  *(v104 + v136 * 4) = vneg_f32(*_Q22.f32);
  *(v104 + 4 * v137) = -_Q22.f32[2];
  if (v22)
  {
    if (v17)
    {
      goto LABEL_57;
    }

    v138.i64[0] = vextq_s8(_Q22, _Q22, 4uLL).u64[0];
    v138.i64[1] = _Q22.i64[0];
    v139 = vmulq_f32(v138, v85);
    v140 = vsubq_f32(vmulq_f32(v138, v86), vmulq_f32(_Q22, vextq_s8(vextq_s8(v86, v86, 0xCuLL), v86, 8uLL)));
    v141 = vextq_s8(vextq_s8(v140, v140, 0xCuLL), v140, 8uLL);
    v141.i32[3] = 0;
    v142 = vsubq_f32(v139, vmulq_f32(_Q22, vextq_s8(vextq_s8(v85, v85, 0xCuLL), v85, 8uLL)));
    *&v46[v136] = vextq_s8(v142, v142, 4uLL).u64[0];
    v46[v137] = v142.i32[0];
    v197 = v141;
    *&v50[v136] = vneg_f32(*v141.i8);
    v143 = -*&v141.i32[2];
  }

  else
  {
    v144 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(_Q22, _Q22, 0xCuLL), _Q22, 8uLL), v91), vmulq_f32(_Q22, vextq_s8(vextq_s8(v91, v91, 0xCuLL), v91, 8uLL)));
    v145 = vextq_s8(v144, v144, 4uLL).u64[0];
    *&v46[v136] = vmul_n_f32(v145, v19);
    *&v46[v137] = v19 * *v144.i32;
    *&v50[v136] = vmul_n_f32(v145, *a7.i32);
    v143 = *a7.i32 * *v144.i32;
  }

  v50[v137] = v143;
LABEL_57:
  v146 = this[13].f32[1];
  v147 = this[13].f32[2];
  v60[v135] = 0.0;
  v148 = *(a2 + 64);
  v149 = *(a2 + 72);
  *(v148 + 4 * v135) = 0;
  *(v149 + 4 * v135) = 0;
  if (v146 == v147)
  {
    v150 = v130;
  }

  else
  {
    v150 = 0;
  }

  v151 = (a2 + 4);
  if ((v51 & 0x200) != 0)
  {
    v151 = &this[16].f32[1];
  }

  v152 = *v151;
  if (v134 && (v150 & 1) == 0)
  {
    v194 = _Q22;
    if (v51)
    {
      *(*(a2 + 56) + 4 * v135) = this[15].i32[0];
    }

    MotorFactor = btTypedConstraint::getMotorFactor(this, this[75].f32[0], this[13].f32[1], this[13].f32[2], this[76].f32[1], v152 * *a2);
    v60 = *(a2 + 48);
    v60[v135] = v60[v135] + (-(v16 * MotorFactor) * this[76].f32[1]);
    v148 = *(a2 + 64);
    v149 = *(a2 + 72);
    *(v148 + 4 * v135) = *(v148 + 4 * v135) - (this[76].f32[2] * *a2);
    *(v149 + 4 * v135) = *(v149 + 4 * v135) + (this[76].f32[2] * *a2);
    _Q22 = v194;
  }

  if (!v130)
  {
    goto LABEL_91;
  }

  v60[v135] = v60[v135] + ((v152 * *a2) * v132);
  if (this[20].i8[9])
  {
    *(*(a2 + 56) + 4 * v135) = this[17].i32[0];
  }

  if (v146 == v147)
  {
    *(v148 + 4 * v135) = -8388609;
LABEL_76:
    *(v149 + 4 * v135) = 2139095039;
    goto LABEL_77;
  }

  if (!v133)
  {
    *(v148 + 4 * v135) = 0;
    goto LABEL_76;
  }

  *(v148 + 4 * v135) = -8388609;
  *(v149 + 4 * v135) = 0;
LABEL_77:
  v155 = this[16].f32[3];
  if ((1.0 - v155) < 0.0 || (1.0 - v155) > 0.0)
  {
    v157 = vmulq_f32(_Q22, *a5);
    v158 = vmulq_f32(_Q22, *a6);
    v159 = v16 * vsub_f32(vadd_f32(vpadd_f32(*v157.i8, *v157.i8), *&vextq_s8(v157, v157, 8uLL)), vadd_f32(vpadd_f32(*v158.i8, *v158.i8), *&vextq_s8(v158, v158, 8uLL))).f32[0];
    v156 = v60[v135];
    v160 = -(vabds_f32(1.0, v155) * v159);
    if (v133)
    {
      if (v159 >= 0.0 || v160 <= v156)
      {
        goto LABEL_90;
      }
    }

    else if (v159 <= 0.0 || v160 >= v156)
    {
      goto LABEL_90;
    }

    v60[v135] = v160;
    v156 = v160;
  }

  else
  {
    v156 = v60[v135];
  }

LABEL_90:
  v60[v135] = this[16].f32[1] * v156;
LABEL_91:
  v154 = 5;
LABEL_92:
  v163 = this[20].u8[5];
  if (v163 == 1)
  {
    v164 = this[75].f32[2];
    v165 = v164 > 0.0;
    v166 = this[77].u8[0];
  }

  else
  {
    v166 = this[77].u8[0];
    if (v166 != 1)
    {
      return;
    }

    v165 = 0;
    v164 = 0.0;
  }

  v167 = *(a2 + 40) * v154;
  v168 = *(a2 + 16);
  v169 = 4 * v167;
  *(v168 + v169) = _Q22.i64[0];
  v170 = 4 * v167 + 8;
  *(v168 + v170) = _Q22.i32[2];
  v171 = *(a2 + 32);
  *(v171 + v169) = vneg_f32(*_Q22.f32);
  *(v171 + v170) = -v131;
  v172 = this[13].f32[3];
  v173 = this[14].f32[0];
  if (v172 == v173)
  {
    v174 = v163;
  }

  else
  {
    v174 = 0;
  }

  v175 = this[20].i32[2];
  v176 = (a2 + 4);
  if ((v175 & 0x800) != 0)
  {
    v176 = &this[17].f32[1];
  }

  v177 = *v176;
  if (v166 && (v174 & 1) == 0)
  {
    v195 = _Q22;
    if ((v175 & 4) != 0)
    {
      *(*(a2 + 56) + 4 * v167) = this[16].i32[0];
      v179 = this[13].f32[3];
      v178 = this[14].f32[0];
    }

    else
    {
      v178 = this[14].f32[0];
      v179 = this[13].f32[3];
    }

    v180 = btTypedConstraint::getMotorFactor(this, this[75].f32[1], v179, v178, this[77].f32[1], v177 * *a2);
    v60 = *(a2 + 48);
    v60[v167] = v180 * this[77].f32[1];
    v181 = *(a2 + 72);
    *(*(a2 + 64) + 4 * v167) = -(this[77].f32[2] * *a2);
    *(v181 + 4 * v167) = this[77].f32[2] * *a2;
    _Q22 = v195;
  }

  if (v163)
  {
    v60[v167] = v60[v167] + ((v177 * *a2) * v164);
    if ((this[20].i8[9] & 4) != 0)
    {
      *(*(a2 + 56) + 4 * v167) = this[18].i32[0];
    }

    v182 = -3.4028e38;
    v183 = 0.0;
    if (v165)
    {
      v184 = 0.0;
    }

    else
    {
      v184 = -3.4028e38;
    }

    if (v172 != v173)
    {
      v182 = v184;
    }

    if (v172 == v173 || v165)
    {
      v183 = 3.4028e38;
    }

    v185 = *(a2 + 72);
    *(*(a2 + 64) + 4 * v167) = v182;
    *(v185 + 4 * v167) = v183;
    v186 = this[17].f32[3];
    if ((1.0 - v186) < 0.0 || (1.0 - v186) > 0.0)
    {
      v188 = vmulq_f32(_Q22, *(this[2].i64[1] + 368));
      v189 = vmulq_f32(_Q22, *(this[3].i64[0] + 368));
      v190 = vsub_f32(vadd_f32(vpadd_f32(*v188.i8, *v188.i8), *&vextq_s8(v188, v188, 8uLL)), vadd_f32(vpadd_f32(*v189.i8, *v189.i8), *&vextq_s8(v189, v189, 8uLL))).f32[0];
      v187 = v60[v167];
      v191 = -(vabds_f32(1.0, v186) * v190);
      if (v165)
      {
        if (v190 >= 0.0 || v191 <= v187)
        {
          goto LABEL_130;
        }
      }

      else if (v190 <= 0.0 || v191 >= v187)
      {
        goto LABEL_130;
      }

      v60[v167] = v191;
      v187 = v191;
    }

    else
    {
      v187 = v60[v167];
    }

LABEL_130:
    v60[v167] = this[17].f32[1] * v187;
  }
}

btSliderConstraint *btSliderConstraint::setParam(btSliderConstraint *this, int a2, float a3, unsigned int a4)
{
  switch(a2)
  {
    case 4:
      if (a4 <= 0)
      {
        this->var34 = a3;
        v4 = 256;
      }

      else if (a4 > 2)
      {
        if (a4 == 3)
        {
          this->var38 = a3;
          v4 = 1024;
        }

        else
        {
          if (a4 > 5)
          {
            return this;
          }

          *&this->var46 = a3;
          v4 = 64;
        }
      }

      else
      {
        this->var42 = a3;
        v4 = 16;
      }

      break;
    case 3:
      if (a4 <= 0)
      {
        this->var26 = a3;
        v4 = 1;
      }

      else
      {
        if (a4 != 3)
        {
          return this;
        }

        this->var30 = a3;
        v4 = 4;
      }

      break;
    case 2:
      if (a4 <= 0)
      {
        this->var31 = a3;
        v4 = 512;
      }

      else if (a4 > 2)
      {
        if (a4 == 3)
        {
          this->var35 = a3;
          v4 = 2048;
        }

        else
        {
          if (a4 > 5)
          {
            return this;
          }

          this->var43 = a3;
          v4 = 128;
        }
      }

      else
      {
        this->var39 = a3;
        v4 = 32;
      }

      break;
    default:
      return this;
  }

  LODWORD(this->var49[0].var0.var0.var0[0]) |= v4;
  return this;
}

float btSliderConstraint::getParam(btSliderConstraint *this, int a2, unsigned int a3)
{
  switch(a2)
  {
    case 4:
      if (a3 <= 0)
      {
        return this->var34;
      }

      if (a3 <= 2)
      {
        return this->var42;
      }

      if (a3 == 3)
      {
        return this->var38;
      }

      if (a3 <= 5)
      {
        return *&this->var46;
      }

      break;
    case 3:
      if (a3 <= 0)
      {
        return this->var26;
      }

      if (a3 == 3)
      {
        return this->var30;
      }

      break;
    case 2:
      if (a3 <= 0)
      {
        return this->var31;
      }

      if (a3 <= 2)
      {
        return this->var39;
      }

      if (a3 == 3)
      {
        return this->var35;
      }

      if (a3 <= 5)
      {
        return this->var43;
      }

      break;
  }

  return 3.4028e38;
}

const char *btSliderConstraint::serialize(uint64_t a1, int32x4_t *a2, uint64_t a3)
{
  btTypedConstraint::serialize(a1, a2, a3);
  v5 = 0;
  v6 = a1 + 80;
  v7 = a2 + 4;
  do
  {
    for (i = 0; i != 4; ++i)
    {
      v7->i32[i] = *(v6 + i * 4);
    }

    ++v5;
    v6 += 16;
    ++v7;
  }

  while (v5 != 3);
  for (j = 0; j != 4; ++j)
  {
    a2[7].i32[j] = *(a1 + 128 + j * 4);
  }

  v10 = 0;
  v11 = a1 + 144;
  v12 = a2 + 8;
  do
  {
    for (k = 0; k != 4; ++k)
    {
      v12->i32[k] = *(v11 + k * 4);
    }

    ++v10;
    v11 += 16;
    ++v12;
  }

  while (v10 != 3);
  for (m = 0; m != 4; ++m)
  {
    a2[11].i32[m] = *(a1 + 192 + m * 4);
  }

  a2[12] = vrev64q_s32(*(a1 + 212));
  v15 = *(a1 + 73);
  a2[13].i32[0] = *(a1 + 208);
  a2[13].i32[1] = v15;
  return "btSliderConstraintData";
}

uint64_t btTypedConstraint::btTypedConstraint(uint64_t a1, int a2, uint64_t a3)
{
  *(a1 + 8) = a2;
  *a1 = &unk_282DCAF38;
  *(a1 + 12) = -1;
  *(a1 + 24) = 2139095039;
  *(a1 + 28) = 1;
  *(a1 + 32) = -1;
  *(a1 + 40) = a3;
  btTypedConstraint::getFixedBody(a1);
  *(a1 + 48) = &unk_27CDDB2D0;
  *(a1 + 56) = 0x3E99999A00000000;
  *(a1 + 64) = 0;
  return a1;
}

void *btTypedConstraint::getFixedBody(btTypedConstraint *this)
{
  if ((atomic_load_explicit(_MergedGlobals_5, memory_order_acquire) & 1) == 0)
  {
    btTypedConstraint::getFixedBody();
  }

  v2 = 0uLL;
  btRigidBody::setMassProps(&unk_27CDDB2D0, 0.0, &v2);
  return &unk_27CDDB2D0;
}

double btTypedConstraint::btTypedConstraint(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 8) = a2;
  *a1 = &unk_282DCAF38;
  *(a1 + 12) = -1;
  *(a1 + 24) = 2139095039;
  *(a1 + 28) = 1;
  *(a1 + 32) = -1;
  *(a1 + 40) = a3;
  *(a1 + 48) = a4;
  result = 0.000000381469818;
  *(a1 + 56) = 0x3E99999A00000000;
  *(a1 + 64) = 0;
  return result;
}

float btTypedConstraint::getMotorFactor(btTypedConstraint *this, float a2, float a3, float a4, float a5, float a6)
{
  v6 = 1.0;
  if (a3 <= a4)
  {
    v6 = 0.0;
    if (a3 != a4)
    {
      v8 = a5 / a6;
      if (v8 >= 0.0)
      {
        if (v8 <= 0.0)
        {
          return v6;
        }

        if (a2 > a4 || (a4 - v8) >= a2)
        {
          if (a2 <= a4)
          {
            return 1.0;
          }

          else
          {
            return 0.0;
          }
        }

        v9 = a4 - a2;
      }

      else
      {
        if (a2 < a3 || (a3 - v8) <= a2)
        {
          if (a2 >= a3)
          {
            return 1.0;
          }

          else
          {
            return 0.0;
          }
        }

        v9 = a3 - a2;
      }

      return v9 / v8;
    }
  }

  return v6;
}

const char *btTypedConstraint::serialize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = (*(*a3 + 56))(a3, *(a1 + 40));
  *(a2 + 8) = (*(*a3 + 56))(a3, *(a1 + 48));
  v6 = (*(*a3 + 80))(a3, a1);
  v7 = (*(*a3 + 56))(a3, v6);
  *(a2 + 16) = v7;
  if (v7)
  {
    (*(*a3 + 96))(a3, v6);
  }

  *(a2 + 24) = *(a1 + 8);
  *(a2 + 36) = *(a1 + 29);
  *(a2 + 52) = *(a1 + 32);
  *(a2 + 56) = *(a1 + 24);
  *(a2 + 60) = *(a1 + 28);
  *(a2 + 28) = *(a1 + 12);
  *(a2 + 40) = *(a1 + 56);
  *(a2 + 48) = 0;
  v8 = *(a1 + 40);
  v9 = *(v8 + 548);
  if (v9 >= 1)
  {
    v10 = *(v8 + 560);
    do
    {
      if (*v10 == a1)
      {
        *(a2 + 48) = 1;
      }

      ++v10;
      --v9;
    }

    while (v9);
  }

  v11 = *(a1 + 48);
  v12 = *(v11 + 548);
  if (v12 >= 1)
  {
    v13 = *(v11 + 560);
    do
    {
      if (*v13 == a1)
      {
        *(a2 + 48) = 1;
      }

      ++v13;
      --v12;
    }

    while (v12);
  }

  return "btTypedConstraintData";
}

void btAngularLimit::test(btAngularLimit *this, float a2)
{
  *&this->var5 = 0;
  p_var5 = &this->var5;
  this->var7 = 0;
  var1 = this->var1;
  if (var1 >= 0.0)
  {
    v5 = fmodf(a2 - this->var0, 6.2832);
    if (v5 >= -3.1416)
    {
      if (v5 > 3.1416)
      {
        v5 = v5 + -6.2832;
      }
    }

    else
    {
      v5 = v5 + 6.2832;
    }

    if (v5 >= -var1)
    {
      if (v5 <= var1)
      {
        return;
      }

      this->var7 = 1;
      v6 = var1 - v5;
      __asm { FMOV            V0.2S, #-1.0 }
    }

    else
    {
      this->var7 = 1;
      v6 = -(var1 + v5);
      __asm { FMOV            V0.2S, #1.0 }
    }

    *&_D0 = v6;
    *p_var5 = _D0;
  }
}

void btRigidBody::~btRigidBody(btRigidBody *this)
{
  *this = &unk_282DCB2A0;
  v2 = *(this + 70);
  if (v2 && *(this + 568) == 1)
  {
    btAlignedFreeInternal(v2);
  }

  *(this + 568) = 1;
  *(this + 70) = 0;
  *(this + 548) = 0;

  C3DSceneSourcePerformConsistencyCheck();
}

{
  btRigidBody::~btRigidBody(this);

  btAlignedFreeInternal(v1);
}

void btTypedConstraint::getFixedBody()
{
  if (__cxa_guard_acquire(_MergedGlobals_5))
  {
    v0 = 0uLL;
    btRigidBody::btRigidBody(&unk_27CDDB2D0, 0, 0, &v0, 0.0);
    __cxa_atexit(btRigidBody::~btRigidBody, &unk_27CDDB2D0, &dword_21BEF7000);
    __cxa_guard_release(_MergedGlobals_5);
  }
}

uint64_t btDiscreteDynamicsWorld::btDiscreteDynamicsWorld(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  btDynamicsWorld::btDynamicsWorld(a1, a2, a3);
  v8 = 0;
  *v9 = &unk_282DCAFA0;
  *(v9 + 292) = 0;
  *(v9 + 324) = 0;
  *(v9 + 380) = 0;
  *(v9 + 420) = 0;
  *(v9 + 256) = 1;
  *(v9 + 248) = 0;
  *(v9 + 236) = 0;
  *(v9 + 240) = 0;
  *(v9 + 264) = 0;
  *(v9 + 272) = a4;
  *(v9 + 312) = 1;
  *(v9 + 304) = 0;
  *(v9 + 344) = 1;
  *(v9 + 336) = 0;
  *(v9 + 352) = xmmword_21C2A4690;
  *(v9 + 368) = 0;
  *(v9 + 374) = 0;
  *(v9 + 400) = 1;
  *(v9 + 392) = 0;
  *(v9 + 408) = 0;
  *(v9 + 440) = 1;
  *(v9 + 432) = 0;
  if (!a4)
  {
    v10 = btAlignedAllocInternal(320, 16);
    btSequentialImpulseConstraintSolver::btSequentialImpulseConstraintSolver(v10);
    *(a1 + 272) = v11;
    v8 = 1;
  }

  *(a1 + 373) = v8;
  v12 = btAlignedAllocInternal(112, 16);
  btSimulationIslandManager::btSimulationIslandManager(v12);
  *(a1 + 280) = v13;
  *(a1 + 372) = 1;
  v14 = btAlignedAllocInternal(152, 16);
  v15 = *(a1 + 272);
  *v14 = &unk_282DCB248;
  *(v14 + 8) = 0;
  *(v14 + 16) = v15;
  *(v14 + 24) = 0;
  *(v14 + 32) = 0;
  *(v14 + 40) = 0;
  *(v14 + 48) = a2;
  *(v14 + 80) = 1;
  *(v14 + 72) = 0;
  *(v14 + 60) = 0;
  *(v14 + 112) = 1;
  *(v14 + 104) = 0;
  *(v14 + 92) = 0;
  *(v14 + 144) = 1;
  *(v14 + 136) = 0;
  *(v14 + 124) = 0;
  *(a1 + 264) = v14;
  return a1;
}

double btDynamicsWorld::btDynamicsWorld(uint64_t a1, uint64_t a2, uint64_t a3)
{
  btCollisionWorld::btCollisionWorld(a1, a2, a3);
  *v3 = &unk_282DCB120;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  *(v3 + 120) = 0;
  *(v3 + 144) = xmmword_21C2A46A0;
  *(v3 + 160) = 0xA00000000;
  *(v3 + 184) = 0x100000000;
  *(v3 + 168) = xmmword_21C2A46B0;
  *(v3 + 192) = xmmword_21C2A46C0;
  *(v3 + 208) = 0x200000104;
  *(v3 + 216) = 128;
  result = 5.28028251e237;
  *(v3 + 220) = 0x7149F2CA42C80000;
  *(v3 + 228) = 1065353216;
  return result;
}

void btDiscreteDynamicsWorld::~btDiscreteDynamicsWorld(btDiscreteDynamicsWorld *this)
{
  *this = &unk_282DCAFA0;
  if (*(this + 372) == 1)
  {
    (***(this + 35))(*(this + 35));
    btAlignedFreeInternal(*(this + 35));
  }

  v2 = *(this + 33);
  if (v2)
  {
    (**v2)(v2);
    btAlignedFreeInternal(*(this + 33));
  }

  if (*(this + 373) == 1)
  {
    (***(this + 34))(*(this + 34));
    btAlignedFreeInternal(*(this + 34));
  }

  v3 = *(this + 54);
  if (v3 && *(this + 440) == 1)
  {
    btAlignedFreeInternal(v3);
  }

  *(this + 440) = 1;
  *(this + 54) = 0;
  *(this + 420) = 0;
  v4 = *(this + 49);
  if (v4 && *(this + 400) == 1)
  {
    btAlignedFreeInternal(v4);
  }

  *(this + 400) = 1;
  *(this + 49) = 0;
  *(this + 380) = 0;
  v5 = *(this + 42);
  if (v5 && *(this + 344) == 1)
  {
    btAlignedFreeInternal(v5);
  }

  *(this + 344) = 1;
  *(this + 42) = 0;
  *(this + 324) = 0;
  v6 = *(this + 38);
  if (v6 && *(this + 312) == 1)
  {
    btAlignedFreeInternal(v6);
  }

  *(this + 312) = 1;
  *(this + 38) = 0;
  *(this + 292) = 0;
  v7 = *(this + 31);
  if (v7 && *(this + 256) == 1)
  {
    btAlignedFreeInternal(v7);
  }

  *(this + 256) = 1;
  *(this + 31) = 0;
  *(this + 59) = 0;
  *(this + 60) = 0;

  btCollisionWorld::~btCollisionWorld(this);
}

{
  btDiscreteDynamicsWorld::~btDiscreteDynamicsWorld(this);

  btAlignedFreeInternal(v1);
}

void btDiscreteDynamicsWorld::saveKinematicState(uint64_t this, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, float *a6)
{
  v6 = *(this + 12);
  if (v6 >= 1)
  {
    v7 = a2.n128_u32[0];
    for (i = 0; i < v6; ++i)
    {
      v10 = *(*(this + 24) + 8 * i);
      if (v10)
      {
        v11 = (*(v10 + 264) & 2) == 0;
      }

      else
      {
        v11 = 1;
      }

      if (!v11 && *(v10 + 244) != 2 && (*(v10 + 232) & 2) != 0)
      {
        a2.n128_u32[0] = v7;
        a2 = btRigidBody::saveKinematicState(v10, a2, a3, a4, a5, a6);
        v6 = *(this + 12);
      }
    }
  }
}

uint64_t btDiscreteDynamicsWorld::debugDrawWorld(btDiscreteDynamicsWorld *this)
{
  btCollisionWorld::debugDrawWorld(this);
  if ((*(*this + 40))(this))
  {
    v2 = (*(*this + 40))(this);
    if (((*(*v2 + 96))(v2) & 0x1800) != 0)
    {
      v3 = (*(*this + 208))(this);
      if (v3 >= 1)
      {
        v4 = v3 + 1;
        do
        {
          v5 = (*(*this + 216))(this, v4 - 2);
          btDiscreteDynamicsWorld::debugDrawConstraint(this, v5);
          --v4;
        }

        while (v4 > 1);
      }
    }
  }

  result = (*(*this + 40))(this);
  if (result)
  {
    v7 = (*(*this + 40))(this);
    result = (*(*v7 + 96))(v7);
    if ((result & 0x4003) != 0)
    {
      result = (*(*this + 40))(this);
      if (result)
      {
        v8 = (*(*this + 40))(this);
        result = (*(*v8 + 96))(v8);
        if (result)
        {
          if (*(this + 95) >= 1)
          {
            v9 = 0;
            do
            {
              v10 = *(*(this + 49) + 8 * v9);
              result = (*(*v10 + 24))(v10, *(this + 13));
              ++v9;
            }

            while (v9 < *(this + 95));
          }
        }
      }
    }
  }

  return result;
}

void btDiscreteDynamicsWorld::debugDrawConstraint(btDiscreteDynamicsWorld *this, btTypedConstraint *a2)
{
  v4 = (*(*this + 40))(this);
  v5 = (*(*v4 + 96))(v4);
  v6 = (*(*this + 40))(this);
  v7 = (*(*v6 + 96))(v6);
  v10 = *(a2 + 15);
  if (*&v10 <= 0.0)
  {
    return;
  }

  v11 = v7;
  v12 = *(a2 + 2);
  if (v12 <= 5)
  {
    switch(v12)
    {
      case 3:
        v230 = xmmword_21C27F910;
        v231 = xmmword_21C27F8C0;
        v232 = xmmword_21C27F600;
        v72 = *(a2 + 23);
        v73 = *(a2 + 5);
        v74 = vmulq_f32(v72, v73[1]);
        v75 = vmulq_f32(v72, v73[2]);
        v76 = vmulq_f32(v72, v73[3]);
        v76.i32[3] = 0;
        *v74.f32 = vadd_f32(vpadd_f32(*v74.f32, *v75.i8), vzip1_s32(*&vextq_s8(v74, v74, 8uLL), *&vextq_s8(v75, v75, 8uLL)));
        *&v74.u32[2] = vpadd_f32(vpadd_f32(*v76.i8, *&vextq_s8(v76, v76, 8uLL)), 0);
        v233 = vaddq_f32(v74, v73[4]);
        v77 = (*(*this + 40))(this);
        (*(*v77 + 112))(v77, &v230, *&v10);
        v78 = *(a2 + 24);
        v79 = *(a2 + 6);
        v80 = vmulq_f32(v78, v79[1]);
        v81 = vmulq_f32(v78, v79[2]);
        v82 = vmulq_f32(v78, v79[3]);
        v82.i32[3] = 0;
        *v80.f32 = vadd_f32(vpadd_f32(*v80.f32, *v81.i8), vzip1_s32(*&vextq_s8(v80, v80, 8uLL), *&vextq_s8(v81, v81, 8uLL)));
        *&v80.u32[2] = vpadd_f32(vpadd_f32(*v82.i8, *&vextq_s8(v82, v82, 8uLL)), 0);
        v233 = vaddq_f32(v80, v79[4]);
        if ((v5 & 0x800) != 0)
        {
          v83 = (*(*this + 40))(this);
          (*(*v83 + 112))(v83, &v230, *&v10);
        }

        break;
      case 4:
        v84 = *(a2 + 5);
        v85 = v84[1];
        v86 = v84[2];
        v87 = *(a2 + 41);
        v88 = *(a2 + 42);
        v87.i32[3] = 0;
        v88.i32[3] = 0;
        v89 = *(a2 + 43);
        v90 = *(a2 + 44);
        v89.i32[3] = 0;
        v91 = v84[3];
        v92 = v84[4];
        v93 = vmlaq_lane_f32(vmulq_n_f32(v87, v91.f32[0]), v88, *v91.f32, 1);
        v94 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v87, v86.f32[0]), v88, *v86.f32, 1), v89, v86, 2);
        v95 = vmulq_f32(v85, v90);
        v96 = vmulq_f32(v86, v90);
        v97 = vmulq_f32(v91, v90);
        v97.i32[3] = 0;
        v98 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v87, v85.f32[0]), v88, *v85.f32, 1), v89, v85, 2);
        *v85.f32 = vadd_f32(vpadd_f32(*v95.i8, *v96.i8), vzip1_s32(*&vextq_s8(v95, v95, 8uLL), *&vextq_s8(v96, v96, 8uLL)));
        *&v85.u32[2] = vpadd_f32(vpadd_f32(*v97.i8, *&vextq_s8(v97, v97, 8uLL)), 0);
        v230 = v98;
        v231 = v94;
        v232 = vmlaq_laneq_f32(v93, v89, v91, 2);
        v233 = vaddq_f32(v92, v85);
        if ((v5 & 0x800) != 0)
        {
          v186 = (*(*this + 40))(this);
          (*(*v186 + 112))(v186, &v230, *&v10);
          v187 = *(a2 + 45);
          v188 = *(a2 + 46);
          v187.i32[3] = 0;
          v188.i32[3] = 0;
          v189 = *(a2 + 6);
          v190 = *(a2 + 47);
          v191 = *(a2 + 48);
          v190.i32[3] = 0;
          v192 = v189[1];
          v193 = v189[2];
          v194 = v189[3];
          v195 = vmlaq_lane_f32(vmulq_n_f32(v187, v194.f32[0]), v188, *v194.f32, 1);
          v196 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v187, v193.f32[0]), v188, *v193.f32, 1), v190, v193, 2);
          v197 = vmulq_f32(v192, v191);
          v198 = vmulq_f32(v194, v191);
          v198.i32[3] = 0;
          v199 = vmulq_f32(v193, v191);
          v200 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v187, v192.f32[0]), v188, *v192.f32, 1), v190, v192, 2);
          *v188.f32 = vadd_f32(vpadd_f32(*v197.i8, *v199.i8), vzip1_s32(*&vextq_s8(v197, v197, 8uLL), *&vextq_s8(v199, v199, 8uLL)));
          *&v188.u32[2] = vpadd_f32(vpadd_f32(*v198.i8, *&vextq_s8(v198, v198, 8uLL)), 0);
          v201 = vaddq_f32(v189[4], v188);
          v230 = v200;
          v231 = v196;
          v232 = vmlaq_laneq_f32(v195, v190, v194, 2);
          v233 = v201;
          v202 = (*(*this + 40))(this);
          (*(*v202 + 112))(v202, &v230, *&v10);
        }

        else
        {
          v99 = *(a2 + 6);
          v100 = *(a2 + 45);
          v101 = *(a2 + 46);
          v100.i32[3] = 0;
          v101.i32[3] = 0;
          v102 = v99[1];
          v103 = v99[2];
          v104 = *(a2 + 47);
          v105 = *(a2 + 48);
          v104.i32[3] = 0;
          v106 = v99[3];
          v107 = v99[4];
          v108 = vmlaq_lane_f32(vmulq_n_f32(v100, v106.f32[0]), v101, *v106.f32, 1);
          v109 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v100, v103.f32[0]), v101, *v103.f32, 1), v104, v103, 2);
          v110 = vmulq_f32(v102, v105);
          v111 = vmulq_f32(v103, v105);
          v112 = vmulq_f32(v106, v105);
          v112.i32[3] = 0;
          v113 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v100, v102.f32[0]), v101, *v102.f32, 1), v104, v102, 2);
          *v101.f32 = vadd_f32(vpadd_f32(*v110.i8, *v111.i8), vzip1_s32(*&vextq_s8(v110, v110, 8uLL), *&vextq_s8(v111, v111, 8uLL)));
          *&v101.u32[2] = vpadd_f32(vpadd_f32(*v112.i8, *&vextq_s8(v112, v112, 8uLL)), 0);
          v230 = v113;
          v231 = v109;
          v232 = vmlaq_laneq_f32(v108, v104, v106, 2);
          v233 = vaddq_f32(v107, v101);
        }

        btAngularLimit::getLow((a2 + 792));
        v204 = v203;
        btAngularLimit::getHigh((a2 + 792));
        if (v204 != v205 && (v11 & 0x1000) != 0)
        {
          if (v204 <= v205)
          {
            v206 = v205;
          }

          else
          {
            v204 = 0.0;
            v206 = 6.2832;
          }

          v229.i64[0] = __PAIR64__(v231.u32[2], v230.u32[2]);
          v229.i64[1] = v232.u32[2];
          v228.i64[0] = __PAIR64__(v231.u32[0], v230.u32[0]);
          v228.i64[1] = v232.u32[0];
          v207 = (*(*this + 40))(this);
          v227 = 0uLL;
          v208.n128_u32[0] = 10.0;
          v209.n128_u32[0] = v10;
          v210.n128_u32[0] = v10;
          v211.n128_f32[0] = v204;
          v212.n128_f32[0] = v206;
          (*(*v207 + 120))(v209, v210, v211, v212, v208);
        }

        break;
      case 5:
        v13 = *(a2 + 5);
        v14 = v13[1];
        v15 = v13[2];
        v16 = *(a2 + 23);
        v17 = *(a2 + 24);
        v16.i32[3] = 0;
        v17.i32[3] = 0;
        v18 = *(a2 + 25);
        v19 = *(a2 + 26);
        v18.i32[3] = 0;
        v20 = v13[3];
        v21 = v13[4];
        v22 = vmlaq_lane_f32(vmulq_n_f32(v16, v20.f32[0]), v17, *v20.f32, 1);
        v23 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v16, v15.f32[0]), v17, *v15.f32, 1), v18, v15, 2);
        v24 = vmulq_f32(v14, v19);
        v25 = vmulq_f32(v15, v19);
        v26 = vmulq_f32(v20, v19);
        v26.i32[3] = 0;
        v27 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v16, v14.f32[0]), v17, *v14.f32, 1), v18, v14, 2);
        *v14.f32 = vadd_f32(vpadd_f32(*v24.i8, *v25.i8), vzip1_s32(*&vextq_s8(v24, v24, 8uLL), *&vextq_s8(v25, v25, 8uLL)));
        *&v14.u32[2] = vpadd_f32(vpadd_f32(*v26.i8, *&vextq_s8(v26, v26, 8uLL)), 0);
        v230 = v27;
        v231 = v23;
        v232 = vmlaq_laneq_f32(v22, v18, v20, 2);
        v233 = vaddq_f32(v21, v14);
        if ((v5 & 0x800) != 0)
        {
          v150 = (*(*this + 40))(this);
          (*(*v150 + 112))(v150, &v230, *&v10);
          v151 = *(a2 + 27);
          v152 = *(a2 + 28);
          v151.i32[3] = 0;
          v152.i32[3] = 0;
          v153 = *(a2 + 6);
          v154 = *(a2 + 29);
          v155 = *(a2 + 30);
          v154.i32[3] = 0;
          v156 = v153[1];
          v157 = v153[2];
          v158 = v153[3];
          v159 = vmlaq_lane_f32(vmulq_n_f32(v151, v158.f32[0]), v152, *v158.f32, 1);
          v160 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v151, v157.f32[0]), v152, *v157.f32, 1), v154, v157, 2);
          v161 = vmulq_f32(v156, v155);
          v162 = vmulq_f32(v158, v155);
          v162.i32[3] = 0;
          v163 = vmulq_f32(v157, v155);
          v164 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v151, v156.f32[0]), v152, *v156.f32, 1), v154, v156, 2);
          *v152.f32 = vadd_f32(vpadd_f32(*v161.i8, *v163.i8), vzip1_s32(*&vextq_s8(v161, v161, 8uLL), *&vextq_s8(v163, v163, 8uLL)));
          *&v152.u32[2] = vpadd_f32(vpadd_f32(*v162.i8, *&vextq_s8(v162, v162, 8uLL)), 0);
          v165 = vaddq_f32(v153[4], v152);
          v230 = v164;
          v231 = v160;
          v232 = vmlaq_laneq_f32(v159, v154, v158, 2);
          v233 = v165;
          v166 = (*(*this + 40))(this);
          (*(*v166 + 112))(v166, &v230, *&v10);
        }

        else
        {
          v28 = *(a2 + 6);
          v29 = *(a2 + 27);
          v30 = *(a2 + 28);
          v29.i32[3] = 0;
          v30.i32[3] = 0;
          v31 = v28[1];
          v32 = v28[2];
          v33 = *(a2 + 29);
          v34 = *(a2 + 30);
          v33.i32[3] = 0;
          v35 = v28[3];
          v36 = v28[4];
          v37 = vmlaq_lane_f32(vmulq_n_f32(v29, v35.f32[0]), v30, *v35.f32, 1);
          v38 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29, v32.f32[0]), v30, *v32.f32, 1), v33, v32, 2);
          v39 = vmulq_f32(v31, v34);
          v40 = vmulq_f32(v32, v34);
          v41 = vmulq_f32(v35, v34);
          v41.i32[3] = 0;
          v42 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29, v31.f32[0]), v30, *v31.f32, 1), v33, v31, 2);
          *v30.f32 = vadd_f32(vpadd_f32(*v39.i8, *v40.i8), vzip1_s32(*&vextq_s8(v39, v39, 8uLL), *&vextq_s8(v40, v40, 8uLL)));
          *&v30.u32[2] = vpadd_f32(vpadd_f32(*v41.i8, *&vextq_s8(v41, v41, 8uLL)), 0);
          v230 = v42;
          v231 = v38;
          v232 = vmlaq_laneq_f32(v37, v33, v35, 2);
          v233 = vaddq_f32(v36, v30);
        }

        if ((v11 & 0x1000) != 0)
        {
          v229 = xmmword_21C2A4050;
          btConeTwistConstraint::GetPointForAngle(a2, 6.0868, *&v10, &v228);
          v167 = 0;
          v168 = vmulq_f32(v230, v228);
          v169 = vmulq_f32(v228, v231);
          v170 = vmulq_f32(v228, v232);
          v170.i32[3] = 0;
          *v168.f32 = vadd_f32(vpadd_f32(*v168.f32, *v169.i8), vzip1_s32(*&vextq_s8(v168, v168, 8uLL), *&vextq_s8(v169, v169, 8uLL)));
          *&v168.u32[2] = vpadd_f32(vpadd_f32(*v170.i8, *&vextq_s8(v170, v170, 8uLL)), 0);
          v228 = vaddq_f32(v168, v233);
          do
          {
            btConeTwistConstraint::GetPointForAngle(a2, (v167 * 6.2832) * 0.03125, *&v10, &v227);
            v171 = vmulq_f32(v230, v227);
            v172 = vmulq_f32(v227, v231);
            v173 = vmulq_f32(v227, v232);
            v173.i32[3] = 0;
            *v171.f32 = vadd_f32(vpadd_f32(*v171.f32, *v172.i8), vzip1_s32(*&vextq_s8(v171, v171, 8uLL), *&vextq_s8(v172, v172, 8uLL)));
            *&v171.u32[2] = vpadd_f32(vpadd_f32(*v173.i8, *&vextq_s8(v173, v173, 8uLL)), 0);
            v227 = vaddq_f32(v171, v233);
            v174 = (*(*this + 40))(this);
            (*(*v174 + 16))(v174, &v228, &v227, &v229);
            if ((v167 & 3) == 0)
            {
              v175 = (*(*this + 40))(this);
              (*(*v175 + 16))(v175, &v233, &v227, &v229);
            }

            v228 = v227;
            ++v167;
          }

          while (v167 != 32);
          v176 = *(a2 + 130);
          v177 = *(a2 + 145);
          v178 = *(a2 + 6);
          if (v178[24].f32[0] <= 0.0)
          {
            v178 = *(a2 + 5);
            v180 = v178[1];
            v179 = v178[2];
            v181 = v178[3];
            v182 = *(a2 + 23);
            v183 = *(a2 + 24);
            v182.i32[3] = 0;
            v183.i32[3] = 0;
            v185 = *(a2 + 25);
            v184 = *(a2 + 26);
          }

          else
          {
            v180 = v178[1];
            v179 = v178[2];
            v181 = v178[3];
            v182 = *(a2 + 27);
            v183 = *(a2 + 28);
            v182.i32[3] = 0;
            v183.i32[3] = 0;
            v185 = *(a2 + 29);
            v184 = *(a2 + 30);
          }

          v185.i32[3] = 0;
          v213 = vmulq_f32(v180, v184);
          v214 = vmulq_f32(v179, v184);
          v215 = vmulq_f32(v181, v184);
          v215.i32[3] = 0;
          *v213.f32 = vadd_f32(vpadd_f32(*v213.f32, *v214.i8), vzip1_s32(*&vextq_s8(v213, v213, 8uLL), *&vextq_s8(v214, v214, 8uLL)));
          *&v213.u32[2] = vpadd_f32(vpadd_f32(*v215.i8, *&vextq_s8(v215, v215, 8uLL)), 0);
          v216 = vaddq_f32(v178[4], v213);
          v230 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v182, v180.f32[0]), v183, *v180.f32, 1), v185, v180, 2);
          v231 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v182, v179.f32[0]), v183, *v179.f32, 1), v185, v179, 2);
          v232 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v182, v181.f32[0]), v183, *v181.f32, 1), v185, v181, 2);
          v233 = v216;
          v227 = v216;
          *v226.i8 = vzip1_s32(*v230.f32, *v231.f32);
          v226.i64[1] = v232.u32[0];
          *(&v225 + 1) = v232.u32[1];
          *&v225 = vzip2_s32(*v230.f32, *v231.f32);
          v217 = (*(*this + 40))(this);
          v220.n128_u32[0] = 10.0;
          v221.n128_u32[0] = v10;
          v222.n128_u32[0] = v10;
          v218.n128_f32[0] = -v177 - v176;
          v219.n128_f32[0] = v176 - v177;
          (*(*v217 + 120))(v221, v222, v218, v219, v220);
        }

        break;
    }

    return;
  }

  if (v12 == 6)
  {
    goto LABEL_11;
  }

  if (v12 != 7)
  {
    if (v12 != 9)
    {
      return;
    }

LABEL_11:
    v43 = *(a2 + 76);
    v230 = *(a2 + 75);
    v231 = v43;
    v44 = *(a2 + 78);
    v232 = *(a2 + 77);
    v233 = v44;
    if ((v5 & 0x800) != 0)
    {
      v45 = (*(*this + 40))(this);
      (*(*v45 + 112))(v45, &v230, *&v10);
      v46 = *(a2 + 80);
      v230 = *(a2 + 79);
      v231 = v46;
      v47 = *(a2 + 82);
      v232 = *(a2 + 81);
      v233 = v47;
      v48 = (*(*this + 40))(this);
      (*(*v48 + 112))(v48, &v230, *&v10);
    }

    if ((v11 & 0x1000) != 0)
    {
      v49 = *(a2 + 76);
      v230 = *(a2 + 75);
      v231 = v49;
      v50 = *(a2 + 78);
      v232 = *(a2 + 77);
      v233 = v50;
      *v229.f32 = vzip1_s32(*&vextq_s8(v230, v230, 8uLL), *&vextq_s8(v49, v49, 8uLL));
      v229.i64[1] = v232.u32[2];
      *v228.f32 = vzip1_s32(*v230.f32, *v49.i8);
      v228.i64[1] = v232.u32[0];
      v51 = *(a2 + 264);
      v52 = *(a2 + 265);
      v53 = *(a2 + 280);
      v54 = *(a2 + 281);
      v55 = (*(*this + 40))(this);
      v227 = 0uLL;
      v56 = (*(*v55 + 128))(v55, a2 + 1312, &v229, &v228, &v227, *&v10 * 0.9, v51, v52, v53, v54, 10.0);
      v56.i64[0] = __PAIR64__(v231.u32[1], v230.u32[1]);
      v56.i32[2] = v232.i32[1];
      v228 = v56;
      Angle = btGeneric6DofConstraint::getAngle(a2, 1);
      v58 = btGeneric6DofConstraint::getAngle(a2, 2);
      v59 = __sincosf_stret(Angle);
      v60 = __sincosf_stret(v58);
      v227.f32[0] = (((v59.__cosval * v60.__sinval) * v228.f32[1]) + ((v59.__cosval * v60.__cosval) * v228.f32[0])) - (v59.__sinval * v228.f32[2]);
      v227.f32[1] = (v60.__cosval * v228.f32[1]) - (v60.__sinval * v228.f32[0]);
      v227.f32[2] = (((v59.__sinval * v60.__sinval) * v228.f32[1]) + ((v59.__sinval * v60.__cosval) * v228.f32[0])) + (v59.__cosval * v228.f32[2]);
      v62 = *(a2 + 80);
      v230 = *(a2 + 79);
      v61.i64[0] = __PAIR64__(v62.u32[0], v230.u32[0]);
      v231 = v62;
      v63 = *(a2 + 82);
      v232 = *(a2 + 81);
      v233 = v63;
      v61.i64[1] = v232.u32[0];
      v62.i64[0] = 0x8000000080000000;
      v62.i64[1] = 0x8000000080000000;
      v226 = veorq_s8(v61, v62);
      v64 = *(a2 + 248);
      v65 = *(a2 + 249);
      if (v64 <= v65)
      {
        if (v64 < v65)
        {
          v140 = (*(*this + 40))(this);
          v225 = 0uLL;
          v141.n128_u32[0] = 10.0;
          v142.n128_u32[0] = v10;
          v143.n128_u32[0] = v10;
          v144.n128_f32[0] = v64;
          v145.n128_f32[0] = v65;
          (*(*v140 + 120))(v142, v143, v144, v145, v141);
        }
      }

      else
      {
        v66 = (*(*this + 40))(this);
        v225 = 0uLL;
        v67.n128_u32[0] = -1068953637;
        v68.n128_u32[0] = 1078530011;
        v69.n128_u32[0] = 10.0;
        v70.n128_u32[0] = v10;
        v71.n128_u32[0] = v10;
        (*(*v66 + 120))(v70, v71, v67, v68, v69);
      }

      v146 = *(a2 + 76);
      v230 = *(a2 + 75);
      v231 = v146;
      v147 = *(a2 + 78);
      v232 = *(a2 + 77);
      v233 = v147;
      v148 = *(a2 + 49);
      v224 = *(a2 + 50);
      v225 = v148;
      v149 = (*(*this + 40))(this);
      v223[0] = 0;
      v223[1] = 0;
      (*(*v149 + 144))(v149, &v225, &v224, &v230, v223);
    }

    return;
  }

  v114 = *(a2 + 60);
  v230 = *(a2 + 59);
  v231 = v114;
  v115 = *(a2 + 62);
  v232 = *(a2 + 61);
  v233 = v115;
  if ((v5 & 0x800) != 0)
  {
    v116 = (*(*this + 40))(this);
    (*(*v116 + 112))(v116, &v230, *&v10);
    v117 = *(a2 + 64);
    v230 = *(a2 + 63);
    v231 = v117;
    v118 = *(a2 + 66);
    v232 = *(a2 + 65);
    v233 = v118;
    v119 = (*(*this + 40))(this);
    (*(*v119 + 112))(v119, &v230, *&v10);
  }

  if ((v11 & 0x1000) != 0)
  {
    v120 = (a2 + 944);
    v121 = 1008;
    if (*(a2 + 208))
    {
      v121 = 944;
    }

    else
    {
      v120 = (a2 + 1008);
    }

    v122 = v120[1];
    v123 = v120[2];
    v230 = *(a2 + v121);
    v231 = v122;
    v8.i32[0] = *(a2 + 53);
    v9.i32[0] = *(a2 + 54);
    v124 = vmulq_f32(v230, v8);
    v125 = vmulq_f32(v122, v8);
    v126 = v120[3];
    v127 = vmulq_f32(v123, v8);
    v127.i32[3] = 0;
    *v124.f32 = vadd_f32(vpadd_f32(*v124.f32, *v125.i8), vzip1_s32(*&vextq_s8(v124, v124, 8uLL), *&vextq_s8(v125, v125, 8uLL)));
    *&v124.u32[2] = vpadd_f32(vpadd_f32(*v127.i8, *&vextq_s8(v127, v127, 8uLL)), 0);
    v232 = v123;
    v233 = v126;
    v128 = vmulq_f32(v230, v9);
    v129 = vmulq_f32(v122, v9);
    v130 = vmulq_f32(v123, v9);
    v130.i32[3] = 0;
    *v128.f32 = vadd_f32(vpadd_f32(*v128.f32, *v129.i8), vzip1_s32(*&vextq_s8(v128, v128, 8uLL), *&vextq_s8(v129, v129, 8uLL)));
    *&v128.u32[2] = vpadd_f32(vpadd_f32(*v130.i8, *&vextq_s8(v130, v130, 8uLL)), 0);
    v228 = vaddq_f32(v126, v128);
    v229 = vaddq_f32(v126, v124);
    v131 = (*(*this + 40))(this);
    v227 = 0uLL;
    (*(*v131 + 16))(v131, &v229, &v228, &v227);
    v227.i64[0] = __PAIR64__(v231.u32[0], v230.u32[0]);
    v227.i64[1] = v232.u32[0];
    v226.i64[0] = __PAIR64__(v231.u32[1], v230.u32[1]);
    v226.i64[1] = v232.u32[1];
    v132 = *(a2 + 55);
    v133 = *(a2 + 56);
    v134 = (*(*this + 40))(this);
    v225 = 0uLL;
    v135.n128_u32[0] = 10.0;
    v136.n128_u32[0] = v10;
    v137.n128_u32[0] = v10;
    v138.n128_u32[0] = v132;
    v139.n128_u32[0] = v133;
    (*(*v134 + 120))(v136, v137, v138, v139, v135);
  }
}

uint64_t btDiscreteDynamicsWorld::clearForces(uint64_t this)
{
  if (*(this + 324) >= 1)
  {
    v1 = 0;
    do
    {
      v2 = *(*(this + 336) + 8 * v1);
      *(v2 + 464) = 0uLL;
      *(v2 + 480) = 0uLL;
      ++v1;
    }

    while (v1 < *(this + 324));
  }

  return this;
}

void btDiscreteDynamicsWorld::applyGravity(uint64_t this)
{
  v1 = *(this + 324);
  if (v1 >= 1)
  {
    for (i = 0; i < v1; ++i)
    {
      v4 = *(*(this + 336) + 8 * i);
      v5 = *(v4 + 244);
      if (v5 != 2 && v5 != 5)
      {
        btRigidBody::applyGravity(v4);
        v1 = *(this + 324);
      }
    }
  }
}

uint64_t btDiscreteDynamicsWorld::synchronizeSingleMotionState(uint64_t this, btRigidBody *a2, uint64_t a3, uint64_t a4, btTransform *a5)
{
  if (*(a2 + 67))
  {
    if ((*(a2 + 232) & 3) == 0)
    {
      btTransformUtil::integrateTransform((a2 + 80), (a2 + 144), a2 + 10, &v6, *(this + 368) * *(a2 + 70), a5);
      return (*(**(a2 + 67) + 24))(*(a2 + 67), &v6);
    }
  }

  return this;
}

uint64_t btDiscreteDynamicsWorld::synchronizeMotionStates(uint64_t this, uint64_t a2, uint64_t a3, uint64_t a4, btTransform *a5)
{
  v5 = this;
  if (*(this + 374))
  {
    v6 = *(this + 12);
    if (v6 >= 1)
    {
      for (i = 0; i < v6; ++i)
      {
        v8 = *(*(v5 + 24) + 8 * i);
        if (v8)
        {
          v9 = (*(v8 + 264) & 2) == 0;
        }

        else
        {
          v9 = 1;
        }

        if (!v9)
        {
          this = btDiscreteDynamicsWorld::synchronizeSingleMotionState(v5, v8, a3, a4, a5);
          v6 = *(v5 + 12);
        }
      }
    }
  }

  else
  {
    v10 = *(this + 324);
    if (v10 >= 1)
    {
      for (j = 0; j < v10; ++j)
      {
        v12 = *(*(v5 + 336) + 8 * j);
        v13 = *(v12 + 244);
        if (v13 != 2 && v13 != 5)
        {
          *(v5 + 448) = 1;
          this = btDiscreteDynamicsWorld::synchronizeSingleMotionState(v5, v12, a3, a4, a5);
          v10 = *(v5 + 324);
        }
      }
    }
  }

  return this;
}

uint64_t btDiscreteDynamicsWorld::stepSimulation(btDiscreteDynamicsWorld *this, float a2, int a3, float a4)
{
  *(this + 448) = 0;
  if (a3)
  {
    v5 = a4;
    v6 = a3;
    v7 = *(this + 92) + a2;
    *(this + 92) = v7;
    if (v7 >= a4)
    {
      v8 = (v7 / a4);
      *(this + 92) = v7 - ((v7 / a4) * a4);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    *(this + 92) = a2;
    v9 = fabsf(a2);
    v8 = v9 >= 0.00000011921;
    v5 = a2;
    v6 = v9 >= 0.00000011921;
  }

  if ((*(*this + 40))(this))
  {
    v10 = (*(*this + 40))(this);
    gDisableDeactivation = ((*(*v10 + 96))(v10) & 0x10) != 0;
  }

  if (v8)
  {
    if (v8 < v6)
    {
      v6 = v8;
    }

    (*(*this + 320))(this, v5 * v6);
    (*(*this + 344))(this);
    if (v6 >= 1)
    {
      do
      {
        (*(*this + 312))(this, v5);
        (*(*this + 160))(this);
        --v6;
      }

      while (v6);
    }
  }

  else
  {
    (*(*this + 160))(this);
  }

  (*(*this + 240))(this);
  return v8;
}

btCollisionObject *btDiscreteDynamicsWorld::internalSingleStepSimulation(btDiscreteDynamicsWorld *this, float a2)
{
  v4 = *(this + 16);
  if (v4)
  {
    v4(this, a2);
  }

  (*(*this + 280))(this, a2);
  *(this + 12) = a2;
  *(this + 13) = 0;
  *(this + 9) = (*(*this + 40))(this);
  btDiscreteDynamicsWorld::createPredictiveContacts(this, a2, v5, v6, v7, v8);
  (*(*this + 88))(this);
  (*(*this + 296))(this);
  *(this + 39) = a2;
  (*(*this + 304))(this, this + 144);
  (*(*this + 288))(this, a2);
  btDiscreteDynamicsWorld::updateActions(this, a2);
  result = btDiscreteDynamicsWorld::updateActivationState(this, a2);
  v11 = *(this + 15);
  if (v11)
  {
    v10.n128_f32[0] = a2;

    return v11(this, v10);
  }

  return result;
}

void btDiscreteDynamicsWorld::createPredictiveContacts(btDiscreteDynamicsWorld *this, float a2, uint64_t a3, uint64_t a4, uint64_t a5, btTransform *a6)
{
  v76 = *MEMORY[0x277D85DE8];
  if (*(this + 105) >= 1)
  {
    v8 = 0;
    do
    {
      (*(**(this + 5) + 32))(*(this + 5), *(*(this + 54) + 8 * v8++));
    }

    while (v8 < *(this + 105));
  }

  v9 = (this + 420);
  v10 = *(this + 54);
  if (v10 && *(this + 440) == 1)
  {
    btAlignedFreeInternal(v10);
  }

  *(this + 440) = 1;
  *(this + 54) = 0;
  *v9 = 0;
  if (*(this + 81) >= 1)
  {
    v11 = 0;
    do
    {
      v12 = *(*(this + 42) + 8 * v11);
      *(v12 + 280) = 1065353216;
      v13 = *(v12 + 244);
      if (v13 != 2 && v13 != 5 && (*(v12 + 232) & 3) == 0)
      {
        btRigidBody::predictIntegratedTransform(v12, a2, &v60, a4, a5, a6);
        if (*(this + 64) == 1)
        {
          v15 = *(v12 + 288) * *(v12 + 288);
          if (v15 != 0.0)
          {
            v16 = vsubq_f32(v60.var1, *(v12 + 64));
            v16.i32[3] = 0;
            v17 = vmulq_f32(v16, v16);
            if (v15 < vadd_f32(vpadd_f32(*v17.i8, *v17.i8), *&vextq_s8(v17, v17, 8uLL)).f32[0] && *(*(v12 + 208) + 8) <= 19)
            {
              ++gNumClampedCcdMotions;
              v18 = (*(**(this + 12) + 72))(*(this + 12));
              v19 = *(this + 5);
              v65 = 1.0;
              v66 = xmmword_21C281170;
              v67 = 0;
              v68 = *(v12 + 64);
              var1 = v60.var1;
              v71 = 0;
              v64 = &unk_282DCB270;
              v72 = v12;
              v73 = 0;
              v74 = v18;
              v75 = v19;
              v20 = *(v12 + 284);
              btConvexInternalShape::btConvexInternalShape(v61);
              v61[0].var0 = &unk_282DCA7E8;
              v61[0].var1 = 8;
              v62 = v20;
              v63 = v20;
              v73 = *(this + 21);
              v21 = *(v12 + 200);
              v66 = *(v21 + 8);
              v67 = *(v21 + 24);
              v57 = v60.var0.var0[1];
              v58 = v60.var0.var0[2];
              v59 = v60.var1;
              v22 = *(v12 + 32);
              v56 = *(v12 + 16);
              v57 = v22;
              v58 = *(v12 + 48);
              btCollisionWorld::convexSweepTest(this, v61, v12 + 16, &v56, &v64, 0.0);
              if (v65 < 1.0)
              {
                v53 = v65;
                v50 = *(v12 + 64);
                v51 = v60.var1;
                v52 = v70;
                v23 = (*(**(this + 5) + 24))(*(this + 5), v12, v71);
                v24 = *(this + 105);
                if (v24 == *(this + 106))
                {
                  v25 = v24 ? 2 * v24 : 1;
                  if (v24 < v25)
                  {
                    if (v25)
                    {
                      v26 = btAlignedAllocInternal(8 * v25, 16);
                      v24 = *v9;
                    }

                    else
                    {
                      v26 = 0;
                    }

                    if (v24 >= 1)
                    {
                      v27 = 0;
                      do
                      {
                        *(v26 + v27) = *(*(this + 54) + v27);
                        v27 += 8;
                      }

                      while (8 * v24 != v27);
                    }

                    v28 = *(this + 54);
                    if (v28)
                    {
                      if (*(this + 440) == 1)
                      {
                        btAlignedFreeInternal(v28);
                        v24 = *v9;
                      }
                    }

                    *(this + 440) = 1;
                    *(this + 54) = v26;
                    *(this + 106) = v25;
                  }
                }

                v29 = vmulq_n_f32(vsubq_f32(v51, v50), v53);
                v29.i32[3] = 0;
                v30.i64[0] = 0x8000000080000000;
                v30.i64[1] = 0x8000000080000000;
                v31 = vmulq_f32(veorq_s8(v52, v30), v29);
                *(*(this + 54) + 8 * v24) = v23;
                *(this + 105) = v24 + 1;
                v32 = vaddq_f32(*(v12 + 64), v29);
                v33 = *(v71 + 1);
                v34 = *(v71 + 2);
                v35 = *(v71 + 3);
                v36 = vtrn1q_s32(v33, v34);
                v37 = vzip2_s32(*v35.i8, 0);
                v38 = vextq_s8(v35, v35, 8uLL).u32[0];
                v39.i64[0] = vextq_s8(v36, v36, 8uLL).u64[0];
                v36.i64[1] = v35.u32[0];
                v40 = veorq_s8(*(v71 + 4), v30);
                v41 = vmulq_f32(v36, v40);
                *v33.f32 = vzip2_s32(*v33.f32, *v34.i8);
                *&v33.u32[2] = v37;
                v42 = vmulq_f32(v33, v40);
                v39.i64[1] = v38;
                *v42.f32 = vadd_f32(vpadd_f32(*v41.i8, *v42.f32), vzip1_s32(*&vextq_s8(v41, v41, 8uLL), *&vextq_s8(v42, v42, 8uLL)));
                v43 = vmulq_f32(v39, v40);
                v43.i32[3] = 0;
                v54 = v32;
                v44 = vmulq_f32(v32, v36);
                v45 = vmulq_f32(v32, v33);
                v46 = vmulq_f32(v32, v39);
                v46.i32[3] = 0;
                *v45.f32 = vadd_f32(vpadd_f32(*v44.i8, *v45.f32), vzip1_s32(*&vextq_s8(v44, v44, 8uLL), *&vextq_s8(v45, v45, 8uLL)));
                *&v42.u32[2] = vpadd_f32(vpadd_f32(*v46.i8, *&vextq_s8(v46, v46, 8uLL)), 0);
                *&v45.u32[2] = vpadd_f32(vpadd_f32(*v43.i8, *&vextq_s8(v43, v43, 8uLL)), 0);
                v55.var0 = 0uLL;
                v55.var1 = vaddq_f32(v45, v42);
                v55.var4 = v70;
                LODWORD(v55.var5) = vadd_f32(vpadd_f32(*v31.i8, *v31.i8), *&vextq_s8(v31, v31, 8uLL)).u32[0];
                *&v55.var6 = 0;
                v55.var8 = 0.0;
                v55.var13 = 0;
                v55.var14 = 0;
                memset(&v55.var15, 0, 32);
                v47 = (v23 + 192 * btPersistentManifold::addManifoldPoint(v23, &v55));
                v47[6].i32[3] = 0;
                v47[6].f32[1] = btManifoldResult::calculateCombinedFriction(v12, v71, v48);
                v49 = *(v12 + 64);
                v47[3] = v54;
                v47[4] = v49;
              }

              C3DSceneSourcePerformConsistencyCheck();
            }
          }
        }
      }

      ++v11;
    }

    while (v11 < *(this + 81));
  }
}

uint64_t btDiscreteDynamicsWorld::updateActions(uint64_t this, float a2)
{
  if (*(this + 380) >= 1)
  {
    v3 = this;
    v4 = 0;
    do
    {
      v5 = *(*(v3 + 392) + 8 * v4);
      this = (*(*v5 + 16))(v5, v3, a2);
      ++v4;
    }

    while (v4 < *(v3 + 380));
  }

  return this;
}

btCollisionObject *btDiscreteDynamicsWorld::updateActivationState(btCollisionObject *this, float a2)
{
  if (*(this + 81) >= 1)
  {
    v3 = this;
    for (i = 0; i < *(v3 + 81); ++i)
    {
      v5 = *(*(v3 + 42) + 8 * i);
      if (v5)
      {
        v6 = *(v5 + 244);
        if (v6 != 2)
        {
          if (v6 == 4)
          {
            continue;
          }

          v7 = vmulq_f32(*(v5 + 352), *(v5 + 352));
          if (vadd_f32(vpadd_f32(*v7.i8, *v7.i8), *&vextq_s8(v7, v7, 8uLL)).f32[0] >= (*(v5 + 524) * *(v5 + 524)) || (v8 = vmulq_f32(*(v5 + 368), *(v5 + 368)), vadd_f32(vpadd_f32(*v8.i8, *v8.i8), *&vextq_s8(v8, v8, 8uLL)).f32[0] >= (*(v5 + 528) * *(v5 + 528))))
          {
            *(v5 + 248) = 0;
            this = btCollisionObject::setActivationState(v5, 0);
            v6 = *(v5 + 244);
            if (v6 == 4)
            {
              continue;
            }
          }

          else
          {
            *(v5 + 248) = *(v5 + 248) + a2;
          }
        }

        if ((gDisableDeactivation & 1) != 0 || *&gDeactivationTime == 0.0 || (v6 & 0xFFFFFFFE) != 2 && *(v5 + 248) <= *&gDeactivationTime)
        {
          v9 = v5;
          v10 = 1;
        }

        else
        {
          if ((*(v5 + 232) & 3) == 0)
          {
            if (v6 == 1)
            {
              this = btCollisionObject::setActivationState(v5, 3);
              v6 = *(v5 + 244);
            }

            if (v6 == 2)
            {
              *(v5 + 352) = 0u;
              *(v5 + 368) = 0u;
            }

            continue;
          }

          v9 = v5;
          v10 = 2;
        }

        this = btCollisionObject::setActivationState(v9, v10);
      }
    }
  }

  return this;
}

void btDiscreteDynamicsWorld::setGravity(float32x4_t *this, float32x4_t *a2)
{
  this[22] = *a2;
  v2 = this[20].i32[1];
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v6 = *(this[21].i64[0] + 8 * i);
      v7 = *(v6 + 244);
      v8 = v7 == 2 || v7 == 5;
      if (!v8 && (*(v6 + 576) & 1) == 0)
      {
        btRigidBody::setGravity(v6, a2);
        v2 = this[20].i32[1];
      }
    }
  }
}

__n128 btDiscreteDynamicsWorld::getGravity@<Q0>(__n128 *this@<X0>, __n128 *a2@<X8>)
{
  result = this[22];
  *a2 = result;
  return result;
}

uint64_t btDiscreteDynamicsWorld::removeCollisionObject(btDiscreteDynamicsWorld *this, btCollisionObject *a2)
{
  if (a2 && (*(a2 + 66) & 2) != 0)
  {
    return (*(*this + 184))();
  }

  else
  {
    return btCollisionWorld::removeCollisionObject(this, a2);
  }
}

uint64_t btDiscreteDynamicsWorld::removeRigidBody(btDiscreteDynamicsWorld *this, btCollisionObject *a2)
{
  v4 = a2;
  btAlignedObjectArray<btCollisionObject *>::remove(this + 320, &v4);
  return btCollisionWorld::removeCollisionObject(this, v4);
}

void btDiscreteDynamicsWorld::addRigidBody(const btVector3 *this, btRigidBody *a2)
{
  if ((*(a2 + 232) & 3) == 0 && (*(a2 + 576) & 1) == 0)
  {
    btRigidBody::setGravity(a2, &this[22]);
  }

  if (*(a2 + 26))
  {
    if (*(a2 + 232))
    {
      btCollisionObject::setActivationState(a2, 2);
    }

    else
    {
      v4 = LODWORD(this[20].var0.var0[1]);
      if (v4 == LODWORD(this[20].var0.var0[2]))
      {
        v5 = v4 ? 2 * v4 : 1;
        if (v4 < v5)
        {
          if (v5)
          {
            v6 = btAlignedAllocInternal(8 * v5, 16);
            v4 = LODWORD(this[20].var0.var0[1]);
          }

          else
          {
            v6 = 0;
          }

          if (v4 >= 1)
          {
            v7 = 0;
            do
            {
              *(v6 + v7) = *(*this[21].var0.var0 + v7);
              v7 += 8;
            }

            while (8 * v4 != v7);
          }

          v8 = *this[21].var0.var0;
          if (v8 && LOBYTE(this[21].var0.var0[2]) == 1)
          {
            btAlignedFreeInternal(v8);
            v4 = LODWORD(this[20].var0.var0[1]);
          }

          LOBYTE(this[21].var0.var0[2]) = 1;
          *this[21].var0.var0 = v6;
          LODWORD(this[20].var0.var0[2]) = v5;
        }
      }

      *(*this[21].var0.var0 + 8 * v4) = a2;
      LODWORD(this[20].var0.var0[1]) = v4 + 1;
    }

    if ((*(a2 + 58) & 3) != 0)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }

    if ((*(a2 + 58) & 3) != 0)
    {
      v10 = -3;
    }

    else
    {
      v10 = -1;
    }

    v11 = *(*this->var0.var0 + 72);

    v11(this, a2, v9, v10, 0);
  }
}

void btDiscreteDynamicsWorld::addRigidBody(const btVector3 *this, btRigidBody *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((*(a2 + 232) & 3) == 0 && (*(a2 + 576) & 1) == 0)
  {
    btRigidBody::setGravity(a2, &this[22]);
  }

  if (*(a2 + 26))
  {
    if (*(a2 + 232))
    {
      btCollisionObject::setActivationState(a2, 2);
    }

    else
    {
      v10 = LODWORD(this[20].var0.var0[1]);
      if (v10 == LODWORD(this[20].var0.var0[2]))
      {
        v11 = v10 ? 2 * v10 : 1;
        if (v10 < v11)
        {
          if (v11)
          {
            v12 = btAlignedAllocInternal(8 * v11, 16);
            v10 = LODWORD(this[20].var0.var0[1]);
          }

          else
          {
            v12 = 0;
          }

          if (v10 >= 1)
          {
            v13 = 0;
            do
            {
              *(v12 + v13) = *(*this[21].var0.var0 + v13);
              v13 += 8;
            }

            while (8 * v10 != v13);
          }

          v14 = *this[21].var0.var0;
          if (v14 && LOBYTE(this[21].var0.var0[2]) == 1)
          {
            btAlignedFreeInternal(v14);
            v10 = LODWORD(this[20].var0.var0[1]);
          }

          LOBYTE(this[21].var0.var0[2]) = 1;
          *this[21].var0.var0 = v12;
          LODWORD(this[20].var0.var0[2]) = v11;
        }
      }

      *(*this[21].var0.var0 + 8 * v10) = a2;
      LODWORD(this[20].var0.var0[1]) = v10 + 1;
    }

    v15 = *(*this->var0.var0 + 72);

    v15(this, a2, a3, a4, a5);
  }
}

btCollisionObject *btDiscreteDynamicsWorld::activateAllBodies(btCollisionObject *this)
{
  v1 = *(this + 81);
  if (v1 >= 1)
  {
    v2 = this;
    for (i = 0; i < v1; ++i)
    {
      this = *(*(v2 + 42) + 8 * i);
      if (this)
      {
        this = btCollisionObject::activate(this, 0);
        v1 = *(v2 + 81);
      }
    }
  }

  return this;
}

void btDiscreteDynamicsWorld::addConstraint(_DWORD *this, btRigidBody **a2, int a3)
{
  v6 = this[73];
  if (v6 == this[74])
  {
    v7 = v6 ? 2 * v6 : 1;
    if (v6 < v7)
    {
      if (v7)
      {
        v8 = btAlignedAllocInternal(8 * v7, 16);
        v6 = this[73];
      }

      else
      {
        v8 = 0;
      }

      if (v6 >= 1)
      {
        v9 = 0;
        do
        {
          *(v8 + v9) = *(*(this + 38) + v9);
          v9 += 8;
        }

        while (8 * v6 != v9);
      }

      v10 = *(this + 38);
      if (v10 && *(this + 312) == 1)
      {
        btAlignedFreeInternal(v10);
        v6 = this[73];
      }

      *(this + 312) = 1;
      *(this + 38) = v8;
      this[74] = v7;
    }
  }

  *(*(this + 38) + 8 * v6) = a2;
  this[73] = v6 + 1;
  if (a3)
  {
    btRigidBody::addConstraintRef(a2[5], a2);
    v11 = a2[6];

    btRigidBody::addConstraintRef(v11, a2);
  }
}

uint64_t btDiscreteDynamicsWorld::removeConstraint(btDiscreteDynamicsWorld *this, btTypedConstraint *a2)
{
  v3 = a2;
  btAlignedObjectArray<btCollisionObject *>::remove(this + 288, &v3);
  btRigidBody::removeConstraintRef(*(v3 + 5), v3);
  return btRigidBody::removeConstraintRef(*(v3 + 6), v3);
}

void btDiscreteDynamicsWorld::addAction(_DWORD *result, uint64_t a2)
{
  v4 = result[95];
  if (v4 == result[96])
  {
    v5 = v4 ? 2 * v4 : 1;
    if (v4 < v5)
    {
      if (v5)
      {
        v6 = btAlignedAllocInternal(8 * v5, 16);
        v4 = result[95];
      }

      else
      {
        v6 = 0;
      }

      if (v4 >= 1)
      {
        v7 = 0;
        do
        {
          *(v6 + v7) = *(*(result + 49) + v7);
          v7 += 8;
        }

        while (8 * v4 != v7);
      }

      v8 = *(result + 49);
      if (v8 && *(result + 400) == 1)
      {
        btAlignedFreeInternal(v8);
        v4 = result[95];
      }

      *(result + 400) = 1;
      *(result + 49) = v6;
      result[96] = v5;
    }
  }

  *(*(result + 49) + 8 * v4) = a2;
  result[95] = v4 + 1;
}

uint64_t btDiscreteDynamicsWorld::solveConstraints(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 292);
  v5 = *(a1 + 236);
  if (v5 < v4)
  {
    v6 = v5;
    if (*(a1 + 240) < v4)
    {
      if (v4)
      {
        v7 = btAlignedAllocInternal(8 * v4, 16);
        v5 = *(a1 + 236);
      }

      else
      {
        v7 = 0;
      }

      if (v5 >= 1)
      {
        v8 = 0;
        v9 = 8 * v5;
        do
        {
          *(v7 + v8) = *(*(a1 + 248) + v8);
          v8 += 8;
        }

        while (v9 != v8);
      }

      v10 = *(a1 + 248);
      if (v10 && *(a1 + 256) == 1)
      {
        btAlignedFreeInternal(v10);
      }

      *(a1 + 256) = 1;
      *(a1 + 248) = v7;
      *(a1 + 240) = v4;
    }

    do
    {
      *(*(a1 + 248) + 8 * v6++) = 0;
    }

    while (v4 != v6);
  }

  *(a1 + 236) = v4;
  if ((*(*a1 + 208))(a1) >= 1)
  {
    v11 = 0;
    do
    {
      *(*(a1 + 248) + 8 * v11) = *(*(a1 + 304) + 8 * v11);
      ++v11;
    }

    while (v11 < (*(*a1 + 208))(a1));
  }

  v12 = *(a1 + 236);
  if (v12 > 1)
  {
    btAlignedObjectArray<btTypedConstraint *>::quickSortInternal<btSortConstraintOnIslandPredicate>(a1 + 232, &v27, 0, v12 - 1);
  }

  if ((*(*a1 + 208))(a1))
  {
    v13 = *(a1 + 248);
  }

  else
  {
    v13 = 0;
  }

  v14 = *(a1 + 264);
  v15 = *(a1 + 236);
  v16 = (*(*a1 + 40))(a1);
  *(v14 + 8) = a2;
  *(v14 + 24) = v13;
  *(v14 + 32) = v15;
  *(v14 + 40) = v16;
  v17 = *(v14 + 60);
  if ((v17 & 0x80000000) != 0)
  {
    if ((*(v14 + 64) & 0x80000000) != 0)
    {
      v18 = *(v14 + 72);
      if (v18 && *(v14 + 80) == 1)
      {
        btAlignedFreeInternal(v18);
      }

      *(v14 + 80) = 1;
      *(v14 + 72) = 0;
      *(v14 + 64) = 0;
    }

    do
    {
      *(*(v14 + 72) + 8 * v17++) = 0;
    }

    while (v17);
  }

  *(v14 + 60) = 0;
  v19 = *(v14 + 92);
  if ((v19 & 0x80000000) != 0)
  {
    if ((*(v14 + 96) & 0x80000000) != 0)
    {
      v20 = *(v14 + 104);
      if (v20 && *(v14 + 112) == 1)
      {
        btAlignedFreeInternal(v20);
      }

      *(v14 + 112) = 1;
      *(v14 + 104) = 0;
      *(v14 + 96) = 0;
    }

    do
    {
      *(*(v14 + 104) + 8 * v19++) = 0;
    }

    while (v19);
  }

  *(v14 + 92) = 0;
  v21 = *(v14 + 124);
  if ((v21 & 0x80000000) != 0)
  {
    if ((*(v14 + 128) & 0x80000000) != 0)
    {
      v22 = *(v14 + 136);
      if (v22 && *(v14 + 144) == 1)
      {
        btAlignedFreeInternal(v22);
      }

      *(v14 + 144) = 1;
      *(v14 + 136) = 0;
      *(v14 + 128) = 0;
    }

    do
    {
      *(*(v14 + 136) + 8 * v21++) = 0;
    }

    while (v21);
  }

  *(v14 + 124) = 0;
  v23 = *(a1 + 272);
  v24 = *(a1 + 12);
  v25 = (*(**(a1 + 40) + 72))(*(a1 + 40));
  (*(*v23 + 16))(v23, v24, v25);
  btSimulationIslandManager::buildAndProcessIslands(*(a1 + 280), *(a1 + 40), a1, *(a1 + 264));
  InplaceSolverIslandCallback::processConstraints(*(a1 + 264));
  return (*(**(a1 + 272) + 32))(*(a1 + 272), a2, *(a1 + 104));
}

void InplaceSolverIslandCallback::processConstraints(InplaceSolverIslandCallback *this)
{
  if (*(this + 15))
  {
    v2 = *(this + 9);
  }

  else
  {
    v2 = 0;
  }

  (*(**(this + 2) + 24))(*(this + 2), v2);
  v3 = *(this + 15);
  if ((v3 & 0x80000000) != 0)
  {
    if ((*(this + 16) & 0x80000000) != 0)
    {
      v4 = *(this + 9);
      if (v4 && *(this + 80) == 1)
      {
        btAlignedFreeInternal(v4);
      }

      *(this + 80) = 1;
      *(this + 9) = 0;
      *(this + 16) = 0;
    }

    do
    {
      *(*(this + 9) + 8 * v3++) = 0;
    }

    while (v3);
  }

  *(this + 15) = 0;
  v5 = *(this + 23);
  if ((v5 & 0x80000000) != 0)
  {
    if ((*(this + 24) & 0x80000000) != 0)
    {
      v6 = *(this + 13);
      if (v6 && *(this + 112) == 1)
      {
        btAlignedFreeInternal(v6);
      }

      *(this + 112) = 1;
      *(this + 13) = 0;
      *(this + 24) = 0;
    }

    do
    {
      *(*(this + 13) + 8 * v5++) = 0;
    }

    while (v5);
  }

  *(this + 23) = 0;
  v7 = *(this + 31);
  if ((v7 & 0x80000000) != 0)
  {
    if ((*(this + 32) & 0x80000000) != 0)
    {
      v8 = *(this + 17);
      if (v8 && *(this + 144) == 1)
      {
        btAlignedFreeInternal(v8);
      }

      *(this + 144) = 1;
      *(this + 17) = 0;
      *(this + 32) = 0;
    }

    do
    {
      *(*(this + 17) + 8 * v7++) = 0;
    }

    while (v7);
  }

  *(this + 31) = 0;
}

uint64_t btDiscreteDynamicsWorld::calculateSimulationIslands(btDiscreteDynamicsWorld *this)
{
  (*(**(this + 35) + 16))(*(this + 35), this, *(this + 5));
  v2 = *(this + 105);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(this + 54) + 8 * i);
      v5 = *(v4 + 784);
      if (v5)
      {
        v6 = *(v4 + 792);
        v7 = (*(v5 + 232) & 3) != 0 || v6 == 0;
        if (!v7 && (*(v6 + 232) & 3) == 0)
        {
          v8 = *(v5 + 244);
          v9 = v8 == 5 || v8 == 2;
          if (!v9 || ((v10 = *(v6 + 244), v10 != 2) ? (v11 = v10 == 5) : (v11 = 1), !v11))
          {
            btUnionFind::unite(*(this + 35) + 8, *(v5 + 236), *(v6 + 236));
            v2 = *(this + 105);
          }
        }
      }
    }
  }

  v12 = *(this + 73);
  if (v12 >= 1)
  {
    v13 = 0;
    v14 = 8 * v12;
    do
    {
      v15 = *(*(this + 38) + v13);
      if (*(v15 + 28) == 1)
      {
        v16 = *(v15 + 40);
        if ((*(v16 + 232) & 3) == 0)
        {
          v17 = *(v15 + 48);
          if ((*(v17 + 232) & 3) == 0)
          {
            v18 = *(v16 + 244);
            v19 = v18 == 5 || v18 == 2;
            if (!v19 || ((v20 = *(v17 + 244), v20 != 2) ? (v21 = v20 == 5) : (v21 = 1), !v21))
            {
              btUnionFind::unite(*(this + 35) + 8, *(v16 + 236), *(v17 + 236));
            }
          }
        }
      }

      v13 += 8;
    }

    while (v14 != v13);
  }

  v22 = *(**(this + 35) + 24);

  return v22();
}

void btDiscreteDynamicsWorld::integrateTransforms(btDiscreteDynamicsWorld *this, float a2, uint64_t a3, const btCollisionObject *a4, uint64_t a5, btTransform *a6)
{
  v57 = *MEMORY[0x277D85DE8];
  if (*(this + 81) >= 1)
  {
    v8 = 0;
    while (1)
    {
      v9 = *(*(this + 42) + 8 * v8);
      *(v9 + 280) = 1065353216;
      v10 = *(v9 + 244);
      v11 = v10 == 2 || v10 == 5;
      if (v11 || (*(v9 + 232) & 3) != 0)
      {
        goto LABEL_16;
      }

      btRigidBody::predictIntegratedTransform(v9, a2, &v43, a4, a5, a6);
      if (*(this + 64) != 1)
      {
        goto LABEL_15;
      }

      v12 = *(v9 + 288) * *(v9 + 288);
      if (v12 == 0.0)
      {
        goto LABEL_15;
      }

      v13 = vsubq_f32(v43.var1, *(v9 + 64));
      v13.i32[3] = 0;
      v14 = vmulq_f32(v13, v13);
      if (v12 >= vadd_f32(vpadd_f32(*v14.i8, *v14.i8), *&vextq_s8(v14, v14, 8uLL)).f32[0] || *(*(v9 + 208) + 8) > 19)
      {
        goto LABEL_15;
      }

      ++gNumClampedCcdMotions;
      v15 = (*(**(this + 12) + 72))(*(this + 12));
      v16 = *(this + 5);
      v47.var0.var0[2] = 1.0;
      v48 = xmmword_21C281170;
      v49 = 0;
      v50 = *(v9 + 64);
      var1 = v43.var1;
      v52 = 0;
      v53 = v9;
      *v47.var0.var0 = &unk_282DCB270;
      v54 = 0;
      v55 = v15;
      v56 = v16;
      v17 = *(v9 + 284);
      btConvexInternalShape::btConvexInternalShape(v44);
      v44[0].var0 = &unk_282DCA7E8;
      v44[0].var1 = 8;
      v45 = v17;
      v46 = v17;
      v54 = *(this + 21);
      v18 = *(v9 + 200);
      v48 = *(v18 + 8);
      v49 = *(v18 + 24);
      v40 = v43.var0.var0[1];
      v41 = v43.var0.var0[2];
      v42 = v43.var1;
      v19 = *(v9 + 32);
      v39 = *(v9 + 16);
      v40 = v19;
      v41 = *(v9 + 48);
      btCollisionWorld::convexSweepTest(this, v44, v9 + 16, &v39, v47.var0.var0, 0.0);
      v23 = v47.var0.var0[2];
      if (v47.var0.var0[2] >= 1.0)
      {
        break;
      }

      *(v9 + 280) = v47.var0.var0[2];
      btRigidBody::predictIntegratedTransform(v9, v23 * a2, &v43, v20, v21, v22);
      *(v9 + 280) = 0;
      btRigidBody::proceedToTransform(v9, &v43);
      C3DSceneSourcePerformConsistencyCheck();
LABEL_16:
      if (++v8 >= *(this + 81))
      {
        goto LABEL_17;
      }
    }

    C3DSceneSourcePerformConsistencyCheck();
LABEL_15:
    btRigidBody::proceedToTransform(v9, &v43);
    goto LABEL_16;
  }

LABEL_17:
  if (*(this + 375) == 1)
  {
    v24 = *(this + 105);
    if (v24 >= 1)
    {
      for (i = 0; i < v24; ++i)
      {
        v26 = *(*(this + 54) + 8 * i);
        if ((*(*(v26 + 784) + 264) & 2) != 0)
        {
          v27 = *(v26 + 784);
        }

        else
        {
          v27 = 0;
        }

        if ((*(*(v26 + 792) + 264) & 2) != 0)
        {
          v28 = *(v26 + 792);
        }

        else
        {
          v28 = 0;
        }

        if (*(v26 + 800) >= 1)
        {
          v29 = 0;
          v30 = v26 + 80;
          do
          {
            v31 = btManifoldResult::calculateCombinedRestitution(v27, v28, a4);
            if (v31 > 0.0)
            {
              v32 = *(v30 + 60);
              if (v32 != 0.0)
              {
                v33.i64[0] = 0x8000000080000000;
                v33.i64[1] = 0x8000000080000000;
                v34 = vmulq_n_f32(vmulq_n_f32(veorq_s8(*v30, v33), v32), v31);
                v34.var0.var0[3] = 0.0;
                v47 = v34;
                v35 = vsubq_f32(*(v30 - 16), v27[4]);
                v35.i32[3] = 0;
                *&v44[0].var0 = v35;
                v36 = vsubq_f32(*(v30 - 32), *(v28 + 64));
                v36.var0.var0[3] = 0.0;
                v39 = v36;
                btRigidBody::applyImpulse(v27, &v47, v44);
                v37.i64[0] = 0x8000000080000000;
                v37.i64[1] = 0x8000000080000000;
                v38 = veorq_s8(v47, v37);
                btRigidBody::applyImpulse(v28, &v38, &v39);
              }
            }

            ++v29;
            v30 += 192;
          }

          while (v29 < *(v26 + 800));
          v24 = *(this + 105);
        }
      }
    }
  }
}

void btDiscreteDynamicsWorld::predictUnconstraintMotion(uint64_t this, float a2)
{
  v2 = *(this + 324);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v6 = *(*(this + 336) + 8 * i);
      if ((*(v6 + 232) & 3) == 0)
      {
        btRigidBody::applyDamping(*(*(this + 336) + 8 * i), a2);
        btRigidBody::predictIntegratedTransform(v6, a2, (v6 + 80), v7, v8, v9);
        v2 = *(this + 324);
      }
    }
  }
}

void btDiscreteDynamicsWorld::setConstraintSolver(uint64_t this, btConstraintSolver *a2)
{
  if (*(this + 373) == 1)
  {
    btAlignedFreeInternal(*(this + 272));
  }

  *(this + 373) = 0;
  *(this + 272) = a2;
  *(*(this + 264) + 16) = a2;
}

uint64_t btDiscreteDynamicsWorld::getConstraint(btDiscreteDynamicsWorld *this, int a2)
{
  return *(*(this + 38) + 8 * a2);
}

{
  return *(*(this + 38) + 8 * a2);
}

uint64_t btDiscreteDynamicsWorld::serializeRigidBodies(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 12);
  if (v4 >= 1)
  {
    for (i = 0; i < v4; ++i)
    {
      v6 = *(*(v3 + 24) + 8 * i);
      if ((v6[264] & 2) != 0)
      {
        v7 = (*(*v6 + 32))(*(*(v3 + 24) + 8 * i));
        v8 = (*(*a2 + 32))(a2, v7, 1);
        v9 = (*(*v6 + 40))(v6, *(v8 + 8), a2);
        result = (*(*a2 + 40))(a2, v8, v9, 1497645650, v6);
        v4 = *(v3 + 12);
      }
    }
  }

  if (*(v3 + 292) >= 1)
  {
    v10 = 0;
    do
    {
      v11 = *(*(v3 + 304) + 8 * v10);
      v12 = (*(*v11 + 72))(v11);
      v13 = (*(*a2 + 32))(a2, v12, 1);
      v14 = (*(*v11 + 80))(v11, *(v13 + 8), a2);
      result = (*(*a2 + 40))(a2, v13, v14, 1397641027, v11);
      ++v10;
    }

    while (v10 < *(v3 + 292));
  }

  return result;
}

uint64_t btDiscreteDynamicsWorld::serializeDynamicsWorldInfo(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a2 + 32))(a2, 104, 1);
  v5 = 0;
  v6 = *(v4 + 8);
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 96) = 0;
  do
  {
    *(v6 + v5 + 88) = *(a1 + 352 + v5);
    v5 += 4;
  }

  while (v5 != 16);
  *v6 = *(a1 + 144);
  LODWORD(v7) = *(a1 + 160);
  DWORD1(v7) = *(a1 + 168);
  *(&v7 + 1) = *(a1 + 172);
  *(v6 + 16) = v7;
  *&v7 = *(a1 + 180);
  *(&v7 + 1) = *(a1 + 192);
  *(v6 + 32) = v7;
  *&v7 = *(a1 + 220);
  *(v6 + 64) = *(a1 + 164);
  *&v8 = *(a1 + 200);
  v9 = *(a1 + 208);
  *(&v8 + 1) = v7;
  *(v6 + 48) = v8;
  *(v6 + 68) = v9;
  v10 = *(a1 + 188);
  *(v6 + 76) = *(a1 + 216);
  *(v6 + 80) = v10;
  v11 = *(*a2 + 40);

  return v11(a2, v4, "btDynamicsWorldFloatData", 1145853764);
}

uint64_t btDiscreteDynamicsWorld::serialize(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 64))(a2);
  btDiscreteDynamicsWorld::serializeDynamicsWorldInfo(a1, a2);
  btDiscreteDynamicsWorld::serializeRigidBodies(a1, a2);
  btCollisionWorld::serializeCollisionObjects(a1, a2);
  v4 = *(*a2 + 72);

  return v4(a2);
}

uint64_t btDynamicsWorld::getConstraint(btDynamicsWorld *this)
{
  return 0;
}

{
  return 0;
}

void InplaceSolverIslandCallback::~InplaceSolverIslandCallback(InplaceSolverIslandCallback *this)
{
  *this = &unk_282DCB248;
  v2 = *(this + 17);
  if (v2 && *(this + 144) == 1)
  {
    btAlignedFreeInternal(v2);
  }

  *(this + 144) = 1;
  *(this + 17) = 0;
  *(this + 31) = 0;
  *(this + 32) = 0;
  v3 = *(this + 13);
  if (v3 && *(this + 112) == 1)
  {
    btAlignedFreeInternal(v3);
  }

  *(this + 112) = 1;
  *(this + 13) = 0;
  *(this + 23) = 0;
  *(this + 24) = 0;
  v4 = *(this + 9);
  if (v4 && *(this + 80) == 1)
  {
    btAlignedFreeInternal(v4);
  }

  *(this + 80) = 1;
  *(this + 9) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
}

{
  *this = &unk_282DCB248;
  v2 = *(this + 17);
  if (v2 && *(this + 144) == 1)
  {
    btAlignedFreeInternal(v2);
  }

  *(this + 144) = 1;
  *(this + 17) = 0;
  *(this + 31) = 0;
  *(this + 32) = 0;
  v3 = *(this + 13);
  if (v3 && *(this + 112) == 1)
  {
    btAlignedFreeInternal(v3);
  }

  *(this + 112) = 1;
  *(this + 13) = 0;
  *(this + 23) = 0;
  *(this + 24) = 0;
  v4 = *(this + 9);
  if (v4 && *(this + 80) == 1)
  {
    btAlignedFreeInternal(v4);
  }

  *(this + 80) = 1;
  *(this + 9) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;

  JUMPOUT(0x21CF07610);
}

void InplaceSolverIslandCallback::processIsland(unsigned int *this, btCollisionObject **a2, unsigned int a3, btPersistentManifold **a4, unsigned int a5, int a6)
{
  if (a6 < 0)
  {
    goto LABEL_21;
  }

  v10 = this[8];
  if (v10 < 1)
  {
    LODWORD(v11) = 0;
    v12 = 0;
  }

  else
  {
    v11 = 0;
    v12 = *(this + 3);
    while (1)
    {
      v13 = *(*(*v12 + 40) + 236);
      if (v13 < 0)
      {
        v13 = *(*(*v12 + 48) + 236);
      }

      if (v13 == a6)
      {
        break;
      }

      ++v11;
      v12 += 8;
      if (v10 == v11)
      {
        v12 = 0;
        goto LABEL_19;
      }
    }
  }

  if (v11 >= v10)
  {
LABEL_19:
    v14 = 0;
  }

  else
  {
    v14 = 0;
    v11 = v11;
    do
    {
      v15 = *(*(this + 3) + 8 * v11);
      v16 = *(*(v15 + 40) + 236);
      if (v16 < 0)
      {
        v16 = *(*(v15 + 48) + 236);
      }

      if (v16 == a6)
      {
        ++v14;
      }

      ++v11;
    }

    while (v10 > v11);
  }

  if (*(*(this + 1) + 72) < 2)
  {
LABEL_21:
    (*(**(this + 2) + 24))(*(this + 2), a2);
    return;
  }

  if (a3 >= 1)
  {
    v17 = 0;
    v18 = a3;
    v20 = this[15];
    v19 = this[16];
    do
    {
      if (v20 == v19)
      {
        if (v19)
        {
          v21 = (2 * v19);
        }

        else
        {
          v21 = 1;
        }

        if (v19 < v21)
        {
          if (v21)
          {
            v22 = btAlignedAllocInternal(8 * v21, 16);
            LODWORD(v19) = this[15];
          }

          else
          {
            v22 = 0;
          }

          if (v19 >= 1)
          {
            v23 = 0;
            do
            {
              *(v22 + v23) = *(*(this + 9) + v23);
              v23 += 8;
            }

            while (8 * v19 != v23);
          }

          v24 = *(this + 9);
          if (v24 && *(this + 80) == 1)
          {
            btAlignedFreeInternal(v24);
            LODWORD(v19) = this[15];
          }

          *(this + 80) = 1;
          *(this + 9) = v22;
          v20 = v19;
          this[16] = v21;
          goto LABEL_42;
        }

        v20 = v19;
      }

      v21 = v19;
LABEL_42:
      *(*(this + 9) + 8 * v20++) = a2[v17];
      this[15] = v20;
      ++v17;
      v19 = v21;
    }

    while (v17 != v18);
  }

  if (a5 >= 1)
  {
    v25 = 0;
    v26 = a5;
    v28 = this[23];
    v27 = this[24];
    do
    {
      if (v28 == v27)
      {
        if (v27)
        {
          v29 = (2 * v27);
        }

        else
        {
          v29 = 1;
        }

        if (v27 < v29)
        {
          if (v29)
          {
            v30 = btAlignedAllocInternal(8 * v29, 16);
            LODWORD(v27) = this[23];
          }

          else
          {
            v30 = 0;
          }

          if (v27 >= 1)
          {
            v31 = 0;
            do
            {
              *(v30 + v31) = *(*(this + 13) + v31);
              v31 += 8;
            }

            while (8 * v27 != v31);
          }

          v32 = *(this + 13);
          if (v32 && *(this + 112) == 1)
          {
            btAlignedFreeInternal(v32);
            LODWORD(v27) = this[23];
          }

          *(this + 112) = 1;
          *(this + 13) = v30;
          v28 = v27;
          this[24] = v29;
          goto LABEL_62;
        }

        v28 = v27;
      }

      v29 = v27;
LABEL_62:
      *(*(this + 13) + 8 * v28++) = a4[v25];
      this[23] = v28;
      ++v25;
      v27 = v29;
    }

    while (v25 != v26);
  }

  if (v14 > 0)
  {
    v33 = 0;
    v35 = this[31];
    v34 = this[32];
    while (1)
    {
      if (v35 == v34)
      {
        if (v34)
        {
          v36 = (2 * v34);
        }

        else
        {
          v36 = 1;
        }

        if (v34 < v36)
        {
          if (v36)
          {
            v37 = btAlignedAllocInternal(8 * v36, 16);
            LODWORD(v34) = this[31];
          }

          else
          {
            v37 = 0;
          }

          if (v34 >= 1)
          {
            v38 = 0;
            do
            {
              *(v37 + v38) = *(*(this + 17) + v38);
              v38 += 8;
            }

            while (8 * v34 != v38);
          }

          v39 = *(this + 17);
          if (v39 && *(this + 144) == 1)
          {
            btAlignedFreeInternal(v39);
            LODWORD(v34) = this[31];
          }

          *(this + 144) = 1;
          *(this + 17) = v37;
          v35 = v34;
          this[32] = v36;
          goto LABEL_82;
        }

        v35 = v34;
      }

      v36 = v34;
LABEL_82:
      *(*(this + 17) + 8 * v35++) = *(v12 + 8 * v33);
      this[31] = v35;
      ++v33;
      v34 = v36;
      if (v33 == v14)
      {
        goto LABEL_85;
      }
    }
  }

  v35 = this[31];
LABEL_85:
  if ((this[23] + v35) > *(*(this + 1) + 72))
  {

    InplaceSolverIslandCallback::processConstraints(this);
  }
}

uint64_t btClosestNotMeConvexResultCallback::needsCollision(uint64_t a1, void *a2)
{
  if (*a2 != *(a1 + 120) && ((v2 = a2[1], (*(a1 + 24) & v2) != 0) && (a2[2] & *(a1 + 16)) != 0 || (*(a1 + 32) & v2) != 0))
  {
    return (*(**(a1 + 144) + 56))();
  }

  else
  {
    return 0;
  }
}

float btClosestNotMeConvexResultCallback::addSingleResult(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *a2;
  result = 1.0;
  if (*a2 != *(a1 + 120) && (v3[14].i8[8] & 4) == 0)
  {
    v5 = vsubq_f32(*(a1 + 64), *(a1 + 48));
    v5.i32[3] = 0;
    v6 = vmulq_f32(*(a2 + 16), v5);
    if (vadd_f32(vpadd_f32(*v6.i8, *v6.i8), *&vextq_s8(v6, v6, 8uLL)).f32[0] < -*(a1 + 128))
    {
      *(a1 + 8) = *(a2 + 48);
      *(a1 + 112) = v3;
      v7 = *(a2 + 16);
      if (!a3)
      {
        v8 = vmulq_f32(v3[1], v7);
        v9 = vmulq_f32(v7, v3[2]);
        v10 = vmulq_f32(v7, v3[3]);
        v10.i32[3] = 0;
        *v7.f32 = vadd_f32(vpadd_f32(*v8.i8, *v9.i8), vzip1_s32(*&vextq_s8(v8, v8, 8uLL), *&vextq_s8(v9, v9, 8uLL)));
        *&v7.u32[2] = vpadd_f32(vpadd_f32(*v10.i8, *&vextq_s8(v10, v10, 8uLL)), 0);
      }

      *(a1 + 80) = v7;
      *(a1 + 96) = *(a2 + 32);
      return *(a2 + 48);
    }
  }

  return result;
}

uint64_t btAlignedObjectArray<btTypedConstraint *>::quickSortInternal<btSortConstraintOnIslandPredicate>(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  do
  {
    v8 = a3;
    v9 = *(*(a1 + 16) + 8 * ((a3 + a4) / 2));
    v10 = a4;
    do
    {
      v11 = *(a1 + 16);
      v12 = *(*(v9 + 40) + 236);
      v13 = a3;
      do
      {
        v14 = *(*(v9 + 40) + 236);
        if (v12 < 0)
        {
          v14 = *(*(v9 + 48) + 236);
        }

        v15 = *(v11 + 8 * v13);
        v16 = *(*(v15 + 40) + 236);
        if (v16 < 0)
        {
          v16 = *(*(v15 + 48) + 236);
        }

        ++v13;
      }

      while (v16 < v14);
      v17 = v11 + 8 * v13;
      a3 = (v13 - 1);
      v18 = v10 + 1;
      v19 = (v11 + 8 * v10);
      do
      {
        v20 = *v19;
        v21 = *(*(*v19 + 40) + 236);
        if (v21 < 0)
        {
          v21 = *(*(v20 + 48) + 236);
        }

        result = *(*(v9 + 40) + 236);
        if (v12 < 0)
        {
          result = *(*(v9 + 48) + 236);
        }

        --v18;
        --v10;
        --v19;
      }

      while (result < v21);
      if (v13 - 1 <= v18)
      {
        *(v17 - 8) = v20;
        *(*(a1 + 16) + 8 * v18) = v15;
        a3 = v13;
      }

      else
      {
        ++v10;
      }
    }

    while (a3 <= v10);
    if (v10 > v8)
    {
      result = btAlignedObjectArray<btTypedConstraint *>::quickSortInternal<btSortConstraintOnIslandPredicate>(a1, a2, v8, v10);
    }
  }

  while (a3 < a4);
  return result;
}

__n128 btRigidBody::setupRigidBody(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 508);
  *(a1 + 264) = 2;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 624) = xmmword_21C280340;
  __asm { FMOV            V1.2S, #1.0 }

  *(a1 + 400) = _D1;
  *(a1 + 408) = 1065353216;
  *(a1 + 444) = 0;
  *(a1 + 412) = 0u;
  *(a1 + 428) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = vbic_s8(vbsl_s8(vcgt_f32(*(a2 + 112), _D1), _D1, *(a2 + 112)), vcltz_f32(*(a2 + 112)));
  *(a1 + 524) = *(a2 + 132);
  v10 = *(a2 + 8);
  *(a1 + 536) = v10;
  *(a1 + 688) = 0;
  *(a1 + 504) = *(a2 + 140);
  *v4 = *(a2 + 144);
  if (v10)
  {
    (*(*v10 + 16))(v10, a1 + 16);
    v11 = *(a1 + 16);
    v12 = *(a1 + 32);
    v13 = *(a1 + 48);
    v14 = *(a1 + 64);
  }

  else
  {
    v11 = *(a2 + 16);
    *(a1 + 16) = v11;
    v12 = *(a2 + 32);
    *(a1 + 32) = v12;
    v13 = *(a2 + 48);
    *(a1 + 48) = v13;
    v14 = *(a2 + 64);
    *(a1 + 64) = v14;
  }

  *(a1 + 80) = v11;
  *(a1 + 96) = v12;
  *(a1 + 112) = v13;
  *(a1 + 128) = v14;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  v15 = *(a2 + 120);
  *(a1 + 260) = *(a2 + 124);
  v16 = *(a2 + 128);
  *(a1 + 252) = v15;
  *(a1 + 256) = v16;
  (*(*a1 + 24))(a1, *(a2 + 80));
  v17 = uniqueId++;
  *(a1 + 580) = v17;
  btRigidBody::setMassProps(a1, *a2, (a2 + 96));
  btRigidBody::updateInertiaTensor(a1);
  *(a1 + 576) = 0;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  result = vmulq_n_f32(*(a1 + 400), *(a1 + 384));
  result.n128_u32[3] = 0;
  *(a1 + 532) = 0;
  *(a1 + 640) = result;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  return result;
}

btCollisionObject *btRigidBody::btRigidBody(btCollisionObject *a1, uint64_t a2)
{
  btCollisionObject::btCollisionObject(a1);
  *v4 = &unk_282DCB2A0;
  *(v4 + 568) = 1;
  *(v4 + 560) = 0;
  *(v4 + 548) = 0;
  btRigidBody::setupRigidBody(v4, a2);
  return a1;
}

btCollisionObject *btRigidBody::btRigidBody(btCollisionObject *a1, uint64_t a2, uint64_t a3, __int128 *a4, float a5)
{
  btCollisionObject::btCollisionObject(a1);
  *v10 = &unk_282DCB2A0;
  *(v10 + 568) = 1;
  *(v10 + 560) = 0;
  *(v10 + 548) = 0;
  v12 = a5;
  v13 = a2;
  v19 = a3;
  v20 = *a4;
  v21 = xmmword_21C2A2370;
  v22 = 0x3F4CCCCD00000000;
  v23 = 1065353216;
  v24 = 0;
  v25 = xmmword_21C281160;
  v14 = xmmword_21C27F910;
  v15 = xmmword_21C27F8C0;
  v16 = xmmword_21C27F600;
  v17 = 0;
  v18 = 0;
  btRigidBody::setupRigidBody(v10, &v12);
  return a1;
}

int8x8_t btRigidBody::setDamping(btRigidBody *this, float32x2_t a2, float32_t a3)
{
  a2.f32[1] = a3;
  __asm { FMOV            V2.2S, #1.0 }

  result = vbic_s8(vbsl_s8(vcgt_f32(a2, _D2), _D2, a2), vcltz_f32(a2));
  *(this + 62) = result;
  return result;
}

__n128 btRigidBody::setMassProps(btRigidBody *this, float a2, const btVector3 *a3)
{
  v3 = *(this + 58);
  if (a2 == 0.0)
  {
    *(this + 58) = v3 | 1;
    v4 = 0.0;
  }

  else
  {
    *(this + 58) = v3 & 0xFFFFFFFE;
    v4 = 1.0 / a2;
  }

  *(this + 96) = v4;
  v5 = vmulq_n_f32(*(this + 27), a2);
  v5.i32[3] = 0;
  *(this + 26) = v5;
  v5.i32[0] = LODWORD(a3->var0.var0[2]);
  v6 = 1.0 / v5.f32[0];
  _ZF = v5.f32[0] == 0.0;
  v8 = 0.0;
  if (!_ZF)
  {
    v8 = v6;
  }

  __asm { FMOV            V4.2S, #1.0 }

  *(this + 56) = vbic_s8(vdiv_f32(_D4, *a3->var0.var0), vceqz_f32(*a3->var0.var0));
  *(this + 114) = v8;
  *(this + 115) = 0;
  result = vmulq_n_f32(*(this + 25), v4);
  result.n128_u32[3] = 0;
  *(this + 40) = result;
  return result;
}

float32x4_t btRigidBody::updateInertiaTensor(btRigidBody *this)
{
  v1 = *(this + 28);
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 3);
  v5 = vtrn1q_s32(v2, v3);
  v6 = vzip2q_s64(v5, v4);
  v6.i32[3] = 0;
  v7 = vmulq_f32(v1, v4);
  *v8.f32 = vzip2_s32(*v2.f32, *v3.f32);
  v8.i64[1] = vdup_lane_s32(*v4.i8, 1).u32[0];
  v5.i64[1] = v4.u32[0];
  v9 = vmulq_f32(v1, v3);
  result = vmulq_f32(v2, v1);
  *(this + 19) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5, result.f32[0]), v8, *result.f32, 1), v6, result, 2);
  *(this + 20) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5, v9.f32[0]), v8, *v9.f32, 1), v6, v9, 2);
  *(this + 21) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5, v7.f32[0]), v8, *v7.f32, 1), v6, v7, 2);
  return result;
}

__n128 btRigidBody::saveKinematicState(btRigidBody *this, __n128 result, uint64_t a3, uint64_t a4, uint64_t a5, float *a6)
{
  if (result.n128_f32[0] != 0.0)
  {
    *v18.var0.var0[1].var0.var0 = v9;
    *&v18.var0.var0[1].var0.var0[2] = v8;
    *v18.var1.var0.var0 = v6;
    *&v18.var1.var0.var0[2] = v7;
    v10 = result.n128_f32[0];
    v12 = *(this + 67);
    if (v12)
    {
      (*(*v12 + 16))(v12, this + 16, a4, a5, a6);
    }

    v13 = vmulq_n_f32(vsubq_f32(*(this + 4), *(this + 8)), 1.0 / v10);
    v13.i32[3] = 0;
    *(this + 22) = v13;
    v17 = 0.0;
    btTransformUtil::calculateDiffAxisAngle(this + 5, (this + 16), &v18, &v17, a6);
    v14 = vmulq_n_f32(vmulq_n_f32(v18.var0.var0[0], v17), 1.0 / v10);
    v14.i32[3] = 0;
    *(this + 23) = v14;
    *(this + 9) = *(this + 22);
    *(this + 10) = v14;
    v15 = *(this + 2);
    *(this + 5) = *(this + 1);
    *(this + 6) = v15;
    result = *(this + 3);
    v16 = *(this + 4);
    *(this + 7) = result;
    *(this + 8) = v16;
  }

  return result;
}

__n128 btRigidBody::setGravity(btRigidBody *this, float32x4_t *a2)
{
  v2 = *(this + 96);
  if (v2 != 0.0)
  {
    v3 = vmulq_n_f32(*a2, 1.0 / v2);
    v3.i32[3] = 0;
    *(this + 26) = v3;
  }

  result = *a2;
  *(this + 27) = *a2;
  return result;
}

void btRigidBody::applyDamping(btRigidBody *this, float a2)
{
  v4 = *(this + 124);
  v17 = vmulq_n_f32(*(this + 22), powf(1.0 - v4, a2));
  *(this + 22) = v17;
  v5 = *(this + 125);
  v6 = vmulq_n_f32(*(this + 23), powf(1.0 - v5, a2));
  *(this + 23) = v6;
  if (*(this + 504) == 1)
  {
    v7 = vmulq_f32(v6, v6);
    if (vadd_f32(*&vextq_s8(v7, v7, 8uLL), vpadd_f32(*v7.i8, *v7.i8)).f32[0] >= *(this + 129))
    {
      v8 = v17;
    }

    else
    {
      v8 = v17;
      v9 = vmulq_f32(v8, v8);
      if (vadd_f32(*&vextq_s8(v9, v9, 8uLL), vpadd_f32(*v9.i8, *v9.i8)).f32[0] < *(this + 128))
      {
        v10 = *(this + 127);
        v6 = vmulq_n_f32(v6, v10);
        v8 = vmulq_n_f32(v17, v10);
        *(this + 22) = v8;
        *(this + 23) = v6;
      }
    }

    v11 = vmulq_f32(v8, v8);
    v12 = sqrtf(vadd_f32(vpadd_f32(*v11.i8, *v11.i8), *&vextq_s8(v11, v11, 8uLL)).f32[0]);
    if (v12 < v4)
    {
      if (v12 <= 0.005)
      {
        *(this + 44) = 0;
        *(this + 45) = 0;
      }

      else
      {
        v13 = vmulq_f32(vmulq_n_f32(v8, 1.0 / v12), vdupq_n_s32(0x3BA3D70Au));
        v13.i32[3] = 0;
        *(this + 22) = vsubq_f32(v8, v13);
      }
    }

    v14 = vmulq_f32(v6, v6);
    v15 = sqrtf(vadd_f32(vpadd_f32(*v14.i8, *v14.i8), *&vextq_s8(v14, v14, 8uLL)).f32[0]);
    if (v15 < v5)
    {
      if (v15 <= 0.005)
      {
        *(this + 46) = 0;
        *(this + 47) = 0;
      }

      else
      {
        v16 = vmulq_f32(vmulq_n_f32(v6, 1.0 / v15), vdupq_n_s32(0x3BA3D70Au));
        v16.i32[3] = 0;
        *(this + 23) = vsubq_f32(v6, v16);
      }
    }
  }
}

float32x4_t btRigidBody::applyGravity(btRigidBody *this)
{
  if ((*(this + 232) & 3) == 0)
  {
    result = vaddq_f32(*(this + 29), vmulq_f32(*(this + 26), *(this + 25)));
    *(this + 29) = result;
  }

  return result;
}

double btRigidBody::setCenterOfMassTransform(btRigidBody *this, const btTransform *a2)
{
  if ((*(this + 232) & 2) != 0)
  {
    v3 = *(this + 2);
    *(this + 5) = *(this + 1);
    *(this + 6) = v3;
    *(this + 7) = *(this + 3);
    p_var1 = (this + 64);
  }

  else
  {
    *(this + 5) = a2->var0.var0[0];
    *(this + 6) = a2->var0.var0[1];
    *(this + 7) = a2->var0.var0[2];
    p_var1 = &a2->var1;
  }

  v4 = *(this + 22);
  v5 = *(this + 23);
  *(this + 8) = *p_var1;
  *(this + 9) = v4;
  *(this + 10) = v5;
  *(this + 1) = a2->var0.var0[0];
  *(this + 2) = a2->var0.var0[1];
  *(this + 3) = a2->var0.var0[2];
  *(this + 4) = a2->var1;
  *&result = btRigidBody::updateInertiaTensor(this).u64[0];
  return result;
}

float *btRigidBody::computeGyroscopicForce@<X0>(float32x4_t *__return_ptr a1@<X8>, float *this@<X0>, float a3@<S0>, float32x4_t _Q2@<Q2>)
{
  __asm { FMOV            V2.2S, #1.0 }

  *_Q2.f32 = vdiv_f32(*_Q2.f32, *(this + 112));
  _Q2.f32[2] = 1.0 / this[114];
  v8 = *(this + 4);
  v9 = *(this + 8);
  v10 = *(this + 12);
  v11 = vmulq_f32(_Q2, v9);
  v12 = vtrn1q_s32(v8, v9);
  *v9.f32 = vzip2_s32(*v8.f32, *v9.f32);
  v13 = vmulq_f32(_Q2, v10);
  v14 = vzip2q_s64(v12, v10);
  v9.i64[1] = vdup_lane_s32(*v10.i8, 1).u32[0];
  v14.i32[3] = 0;
  v12.i64[1] = v10.u32[0];
  v15 = vmulq_f32(v8, _Q2);
  v16 = vmulq_n_f32(v12, v11.f32[0]);
  v17 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12, v15.f32[0]), v9, *v15.f32, 1), v14, v15, 2);
  v18 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12, v13.f32[0]), v9, *v13.f32, 1), v14, v13, 2);
  v19 = *(this + 92);
  v20 = vmulq_f32(v17, v19);
  v21 = vmulq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(v16, v9, *v11.f32, 1), v14, v11, 2), v19);
  v22 = vmulq_f32(v18, v19);
  v22.i32[3] = 0;
  *v20.f32 = vadd_f32(vpadd_f32(*v20.f32, *v21.i8), vzip1_s32(*&vextq_s8(v20, v20, 8uLL), *&vextq_s8(v21, v21, 8uLL)));
  *v21.i8 = vpadd_f32(vpadd_f32(*v22.f32, *&vextq_s8(v22, v22, 8uLL)), 0);
  *v22.f32 = vext_s8(*v20.f32, *v21.i8, 4uLL);
  v22.i64[1] = v20.i64[0];
  v20.i64[1] = v21.i64[0];
  v23 = vsubq_f32(vmulq_f32(v19, v22), vmulq_f32(vextq_s8(vextq_s8(v19, v19, 0xCuLL), v19, 8uLL), v20));
  v24 = vextq_s8(vextq_s8(v23, v23, 0xCuLL), v23, 8uLL);
  v24.i32[3] = 0;
  v25 = vmulq_f32(v24, v24);
  v26 = vadd_f32(vpadd_f32(*v25.i8, *v25.i8), *&vextq_s8(v25, v25, 8uLL)).f32[0];
  if (v26 > (a3 * a3))
  {
    v24 = vmulq_n_f32(v24, (1.0 / sqrtf(v26)) * a3);
  }

  *a1 = v24;
  return this;
}

uint64_t btRigidBody::checkCollideWithOverride(btRigidBody *this, const btCollisionObject *a2)
{
  result = 1;
  if ((*(a2 + 264) & 2) != 0)
  {
    if (a2)
    {
      v4 = *(this + 137);
      if (v4 >= 1)
      {
        for (i = *(this + 70); ; ++i)
        {
          v6 = *i;
          if (*(*i + 28) == 1 && (*(v6 + 40) == a2 || *(v6 + 48) == a2))
          {
            break;
          }

          if (!--v4)
          {
            return 1;
          }
        }

        return 0;
      }
    }
  }

  return result;
}

void btRigidBody::addConstraintRef(btRigidBody *this, btTypedConstraint *a2)
{
  v4 = *(this + 137);
  if (v4 < 1)
  {
    goto LABEL_7;
  }

  v5 = *(this + 70);
  v6 = *(this + 137);
  while (*v5 != a2)
  {
    ++v5;
    if (!--v6)
    {
      goto LABEL_7;
    }
  }

  if (!v6)
  {
LABEL_7:
    if (v4 == *(this + 138))
    {
      v7 = v4 ? 2 * v4 : 1;
      if (v4 < v7)
      {
        if (v7)
        {
          v8 = btAlignedAllocInternal(8 * v7, 16);
          v4 = *(this + 137);
        }

        else
        {
          v8 = 0;
        }

        if (v4 >= 1)
        {
          v9 = 0;
          do
          {
            *(v8 + v9) = *(*(this + 70) + v9);
            v9 += 8;
          }

          while (8 * v4 != v9);
        }

        v10 = *(this + 70);
        if (v10 && *(this + 568) == 1)
        {
          btAlignedFreeInternal(v10);
          v4 = *(this + 137);
        }

        *(this + 568) = 1;
        *(this + 70) = v8;
        *(this + 138) = v7;
      }
    }

    *(*(this + 70) + 8 * v4) = a2;
    *(this + 137) = v4 + 1;
  }

  *(this + 73) = 1;
}

uint64_t btRigidBody::removeConstraintRef(btRigidBody *this, btTypedConstraint *a2)
{
  v4 = a2;
  result = btAlignedObjectArray<btCollisionObject *>::remove(this + 544, &v4);
  *(this + 73) = *(this + 137) > 0;
  return result;
}

const char *btRigidBody::serialize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a2 + 468);
  v6 = a1 + 508;
  btCollisionObject::serialize(a1, a2, a3);
  v7 = 0;
  v8 = a1 + 304;
  v9 = a2 + 272;
  do
  {
    for (i = 0; i != 16; i += 4)
    {
      *(v9 + i) = *(v8 + i);
    }

    ++v7;
    v8 += 16;
    v9 += 16;
  }

  while (v7 != 3);
  for (j = 0; j != 16; j += 4)
  {
    *(a2 + 320 + j) = *(a1 + 352 + j);
  }

  for (k = 0; k != 16; k += 4)
  {
    *(a2 + 336 + k) = *(a1 + 368 + k);
  }

  v13 = 0;
  *(a2 + 464) = *(a1 + 384);
  do
  {
    *(a2 + 352 + v13) = *(a1 + 624 + v13);
    v13 += 4;
  }

  while (v13 != 16);
  for (m = 0; m != 16; m += 4)
  {
    *(a2 + 368 + m) = *(a1 + 400 + m);
  }

  for (n = 0; n != 16; n += 4)
  {
    *(a2 + 384 + n) = *(a1 + 416 + n);
  }

  for (ii = 0; ii != 16; ii += 4)
  {
    *(a2 + 400 + ii) = *(a1 + 432 + ii);
  }

  for (jj = 0; jj != 16; jj += 4)
  {
    *(a2 + 416 + jj) = *(a1 + 448 + jj);
  }

  for (kk = 0; kk != 16; kk += 4)
  {
    *(a2 + 432 + kk) = *(a1 + 464 + kk);
  }

  for (mm = 0; mm != 16; mm += 4)
  {
    *(a2 + 448 + mm) = *(a1 + 480 + mm);
  }

  *&v20 = *(a1 + 496);
  *(a2 + 500) = *(a1 + 504);
  *(&v20 + 1) = *v6;
  *v5 = v20;
  v5[1] = *(v6 + 8);
  return "btRigidBodyFloatData";
}

uint64_t btRigidBody::serializeSingleObject(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 32))(a1);
  v5 = (*(*a2 + 32))(a2, v4, 1);
  v6 = (*(*a1 + 40))(a1, *(v5 + 8), a2);
  v7 = *(*a2 + 40);

  return v7(a2, v5, v6, 1497645650, a1);
}

void *btActionInterface::getFixedBody(btActionInterface *this)
{
  if ((atomic_load_explicit(_MergedGlobals_6, memory_order_acquire) & 1) == 0)
  {
    btActionInterface::getFixedBody();
  }

  v2 = 0uLL;
  btRigidBody::setMassProps(&unk_27CDDB5A0, 0.0, &v2);
  return &unk_27CDDB5A0;
}

double btRaycastVehicle::btRaycastVehicle(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_282DCB2E8;
  *(a1 + 32) = 1;
  *(a1 + 24) = 0;
  *(a1 + 12) = 0;
  *(a1 + 64) = 1;
  *(a1 + 56) = 0;
  *(a1 + 44) = 0;
  *(a1 + 96) = 1;
  *(a1 + 88) = 0;
  *(a1 + 76) = 0;
  *(a1 + 128) = 1;
  *(a1 + 120) = 0;
  *(a1 + 108) = 0;
  *(a1 + 152) = a4;
  *(a1 + 160) = 0;
  *(a1 + 224) = 1;
  *(a1 + 216) = 0;
  *(a1 + 204) = 0;
  *(a1 + 176) = a3;
  *&result = 0x200000000;
  *(a1 + 184) = 0x200000000;
  *(a1 + 192) = 1;
  *(a1 + 168) = 0;
  return result;
}

void btRaycastVehicle::~btRaycastVehicle(btRaycastVehicle *this)
{
  *this = &unk_282DCB2E8;
  v2 = *(this + 27);
  if (v2 && *(this + 224) == 1)
  {
    btAlignedFreeInternal(v2);
  }

  *(this + 224) = 1;
  *(this + 27) = 0;
  *(this + 51) = 0;
  *(this + 52) = 0;
  v3 = *(this + 15);
  if (v3 && *(this + 128) == 1)
  {
    btAlignedFreeInternal(v3);
  }

  *(this + 128) = 1;
  *(this + 15) = 0;
  *(this + 27) = 0;
  *(this + 28) = 0;
  v4 = *(this + 11);
  if (v4 && *(this + 96) == 1)
  {
    btAlignedFreeInternal(v4);
  }

  *(this + 96) = 1;
  *(this + 11) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  v5 = *(this + 7);
  if (v5 && *(this + 64) == 1)
  {
    btAlignedFreeInternal(v5);
  }

  *(this + 64) = 1;
  *(this + 7) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  v6 = *(this + 3);
  if (v6 && *(this + 32) == 1)
  {
    btAlignedFreeInternal(v6);
  }

  *(this + 32) = 1;
  *(this + 3) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
}

{
  btRaycastVehicle::~btRaycastVehicle(this);

  JUMPOUT(0x21CF07610);
}

btWheelInfo *btRaycastVehicle::addWheel(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5, char a6, float a7, float a8)
{
  v12 = *a2;
  v13 = *a3;
  v14 = *a4;
  v15 = *a5;
  v16 = *(a5 + 2);
  v17 = *(a5 + 3);
  v18 = *(a5 + 4);
  v19 = *(a5 + 5);
  v20 = *(a1 + 204);
  if (v20 == *(a1 + 208))
  {
    v21 = v20 ? 2 * v20 : 1;
    if (v20 < v21)
    {
      v40 = *(a5 + 2);
      v41 = *a5;
      v38 = *a2;
      v39 = *(a5 + 4);
      v36 = *a4;
      v37 = *a3;
      if (v21)
      {
        v22 = btAlignedAllocInternal(320 * v21, 16);
        v14 = v36;
        v13 = v37;
        v12 = v38;
        v18 = v39;
        v16 = v40;
        *&v15 = v41;
        v23 = v22;
        v20 = *(a1 + 204);
      }

      else
      {
        v23 = 0;
      }

      if (v20 >= 1)
      {
        v24 = 0;
        v25 = 320 * v20;
        do
        {
          v26 = *(a1 + 216) + v24;
          v27 = v23 + v24;
          *v27 = *v26;
          *(v27 + 16) = *(v26 + 16);
          *(v27 + 32) = *(v26 + 32);
          *(v27 + 48) = *(v26 + 48);
          *(v27 + 64) = *(v26 + 64);
          *(v27 + 80) = *(v26 + 80);
          *(v27 + 96) = *(v26 + 96);
          *(v27 + 112) = *(v26 + 112);
          *(v27 + 128) = *(v26 + 128);
          *(v27 + 144) = *(v26 + 144);
          *(v27 + 160) = *(v26 + 160);
          *(v27 + 176) = *(v26 + 176);
          *(v27 + 192) = *(v26 + 192);
          *(v27 + 208) = *(v26 + 208);
          v28 = *(v26 + 240);
          *(v27 + 224) = *(v26 + 224);
          *(v27 + 240) = v28;
          v29 = *(v26 + 256);
          v30 = *(v26 + 272);
          v31 = *(v26 + 288);
          *(v27 + 304) = *(v26 + 304);
          *(v27 + 272) = v30;
          *(v27 + 288) = v31;
          *(v27 + 256) = v29;
          v24 += 320;
        }

        while (v25 != v24);
      }

      v32 = *(a1 + 216);
      if (v32 && *(a1 + 224) == 1)
      {
        btAlignedFreeInternal(v32);
        v14 = v36;
        v13 = v37;
        v12 = v38;
        v18 = v39;
        v16 = v40;
        *&v15 = v41;
      }

      *(a1 + 224) = 1;
      *(a1 + 216) = v23;
      *(a1 + 208) = v21;
      v20 = *(a1 + 204);
    }
  }

  v33 = *(a1 + 216) + 320 * v20;
  *(v33 + 176) = v12;
  *(v33 + 192) = v13;
  *(v33 + 208) = v14;
  *(v33 + 224) = a7;
  *(v33 + 228) = v17;
  *(v33 + 232) = a8;
  *(&v15 + 1) = __PAIR64__(v18, v16);
  *(v33 + 236) = v15;
  *(v33 + 252) = xmmword_21C2A4700;
  *(v33 + 268) = v19;
  *(v33 + 272) = 0;
  *(v33 + 280) = a6;
  LODWORD(v33) = *(a1 + 204);
  *(a1 + 204) = v33 + 1;
  v34 = *(a1 + 216) + 320 * v33;
  btRaycastVehicle::updateWheelTransformsWS(a1, v34, 0);
  btRaycastVehicle::updateWheelTransform(a1, *(a1 + 204) - 1, 0);
  return v34;
}

__n128 btRaycastVehicle::updateWheelTransformsWS(uint64_t a1, uint64_t a2, int a3)
{
  *(a2 + 96) = 0;
  v4 = *(a1 + 176);
  v5 = v4[1];
  v6 = v4[2];
  v24 = v5;
  v25 = v6;
  v7 = v4[3];
  v8 = v4[4];
  v26 = v7;
  v27 = v8;
  if (a3)
  {
    v9 = v4[33].i64[1];
    if (v9)
    {
      (*(*v9 + 16))(v9, &v24);
      v5 = v24;
      v6 = v25;
      v7 = v26;
      v8 = v27;
    }
  }

  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  v12 = vmulq_f32(v5, v10);
  v13 = vmulq_f32(v10, v6);
  v14 = vmulq_f32(v10, v7);
  v14.i32[3] = 0;
  *v12.f32 = vadd_f32(vpadd_f32(*v12.f32, *v13.i8), vzip1_s32(*&vextq_s8(v12, v12, 8uLL), *&vextq_s8(v13, v13, 8uLL)));
  *&v12.u32[2] = vpadd_f32(vpadd_f32(*v14.i8, *&vextq_s8(v14, v14, 8uLL)), 0);
  v15 = vaddq_f32(v12, v8);
  v16 = vmulq_f32(v5, v11);
  v17 = vmulq_f32(v6, v11);
  v18 = vmulq_f32(v7, v11);
  v18.i32[3] = 0;
  *v16.i8 = vadd_f32(vpadd_f32(*v16.i8, *v17.i8), vzip1_s32(*&vextq_s8(v16, v16, 8uLL), *&vextq_s8(v17, v17, 8uLL)));
  v16.u64[1] = vpadd_f32(vpadd_f32(*v18.i8, *&vextq_s8(v18, v18, 8uLL)), 0);
  *(a2 + 48) = v15;
  *(a2 + 64) = v16;
  v19 = *(a2 + 208);
  v20 = vmulq_f32(v5, v19);
  v21 = vmulq_f32(v6, v19);
  v22 = vmulq_f32(v7, v19);
  v22.i32[3] = 0;
  result.n128_u64[0] = vadd_f32(vpadd_f32(*v20.i8, *v21.i8), vzip1_s32(*&vextq_s8(v20, v20, 8uLL), *&vextq_s8(v21, v21, 8uLL)));
  *&result.n128_i8[8] = vpadd_f32(vpadd_f32(*v22.i8, *&vextq_s8(v22, v22, 8uLL)), 0);
  *(a2 + 80) = result;
  return result;
}

float32x4_t btRaycastVehicle::updateWheelTransform(btRaycastVehicle *this, int a2, int a3)
{
  v3 = *(this + 27) + 320 * a2;
  btRaycastVehicle::updateWheelTransformsWS(this, v3, a3);
  v4.i64[0] = 0x8000000080000000;
  v4.i64[1] = 0x8000000080000000;
  v29 = *(v3 + 80);
  v30 = veorq_s8(*(v3 + 64), v4);
  v5 = vmulq_f32(v30, v30);
  v6 = sqrtf(vadd_f32(vpadd_f32(*v5.i8, *v5.i8), *&vextq_s8(v5, v5, 8uLL)).f32[0]);
  v7 = __sincosf_stret(*(v3 + 252) * 0.5);
  *v34.var0.var0 = vmul_n_f32(*v30.f32, v7.__sinval / v6);
  *&v34.var0.var0[2] = __PAIR64__(LODWORD(v7.__cosval), COERCE_UNSIGNED_INT(vmuls_lane_f32(v7.__sinval / v6, v30, 2)));
  btMatrix3x3::setRotation(&v33, &v34);
  v28 = *(v3 + 80);
  v8 = vmulq_f32(v28, v28);
  v9 = sqrtf(vadd_f32(vpadd_f32(*v8.i8, *v8.i8), *&vextq_s8(v8, v8, 8uLL)).f32[0]);
  v10 = __sincosf_stret(*(v3 + 256) * -0.5);
  *v32.var0.var0 = vmul_n_f32(*v28.f32, v10.__sinval / v9);
  *&v32.var0.var0[2] = __PAIR64__(LODWORD(v10.__cosval), COERCE_UNSIGNED_INT(vmuls_lane_f32(v10.__sinval / v9, v28, 2)));
  btMatrix3x3::setRotation(&v31, &v32);
  v12 = v31.var0[0];
  v11 = v31.var0[1];
  v13 = v31.var0[2];
  v14.i32[0] = *(v3 + 88);
  v15 = v30;
  *v16.f32 = vext_s8(*v30.f32, *&vextq_s8(v15, v15, 8uLL), 4uLL);
  v16.i64[1] = v30.i64[0];
  v17 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v29, v29, 0xCuLL), v29, 8uLL), v30), vmulq_f32(v29, v16));
  v18 = vextq_s8(vextq_s8(v17, v17, 0xCuLL), v17, 8uLL);
  v18.i32[3] = 0;
  v19 = vmulq_f32(v18, v18);
  *v15.i8 = vpadd_f32(*v19.i8, *v19.i8);
  v20 = vmulq_n_f32(v18, 1.0 / sqrtf(vadd_f32(*&vextq_s8(v19, v19, 8uLL), *v15.i8).f32[0]));
  v14.i32[1] = v20.i32[2];
  v14.i64[1] = v30.u32[2];
  v13.i32[3] = 0;
  v11.i32[3] = 0;
  v12.i32[3] = 0;
  v21 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12, v33.var0[2].var0.var0[0]), v11, *v33.var0[2].var0.var0, 1), v13, v33.var0[2], 2);
  v15.i32[0] = *(v3 + 80);
  v22.i32[0] = *(v3 + 84);
  v22.i32[1] = v20.i32[1];
  v22.i64[1] = v30.u32[1];
  v20.i64[0] = vzip1q_s32(v15, v20).u64[0];
  v20.i64[1] = v30.u32[0];
  v23 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v20, v21.f32[0]), v22, *v21.f32, 1), v14, v21, 2);
  v24 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12, v33.var0[1].var0.var0[0]), v11, *v33.var0[1].var0.var0, 1), v13, v33.var0[1], 2);
  v25 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12, v33.var0[0].var0.var0[0]), v11, *v33.var0[0].var0.var0, 1), v13, v33.var0[0], 2);
  *(v3 + 112) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v20, v25.f32[0]), v22, *v25.f32, 1), v14, v25, 2);
  *(v3 + 128) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v20, v24.f32[0]), v22, *v24.f32, 1), v14, v24, 2);
  v26 = vmulq_n_f32(*(v3 + 64), *(v3 + 32));
  v26.i32[3] = 0;
  result = vaddq_f32(*(v3 + 48), v26);
  *(v3 + 144) = v23;
  *(v3 + 160) = result;
  return result;
}

float btRaycastVehicle::rayCast(btRaycastVehicle *this, float32x4_t *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  btRaycastVehicle::updateWheelTransformsWS(this, a2, 0);
  v22 = btWheelInfo::getSuspensionRestLength(a2) + a2[14].f32[2];
  v4 = vmulq_n_f32(a2[4], v22);
  v4.i32[3] = 0;
  a2[1] = vaddq_f32(a2[3], v4);
  v24 = -1.0;
  v5 = (*(**(this + 19) + 16))(*(this + 19), a2 + 3, a2 + 1, v23);
  a2[6].i64[1] = 0;
  if (v5)
  {
    v6 = v22 * v24;
    *a2 = v23[1];
    a2[6].i8[0] = 1;
    btActionInterface::getFixedBody(v5);
    a2[6].i64[1] = &unk_27CDDB5A0;
    a2[2].f32[0] = v6 - a2[14].f32[2];
    v7 = btWheelInfo::getSuspensionRestLength(a2) - (a2[14].f32[1] * 0.01);
    v8 = btWheelInfo::getSuspensionRestLength(a2) + (a2[14].f32[1] * 0.01);
    v9 = a2[2].f32[0];
    if (v9 >= v7)
    {
      v10 = v9 <= v8;
    }

    else
    {
      v9 = v7;
      v10 = 0;
    }

    if (!v10)
    {
      if (v9 <= v8)
      {
        v8 = v9;
      }

      a2[2].f32[0] = v8;
    }

    v11 = v23[0];
    a2[1] = v23[0];
    v12 = vmulq_f32(*a2, a2[4]);
    v13 = vadd_f32(vpadd_f32(*v12.i8, *v12.i8), *&vextq_s8(v12, v12, 8uLL)).f32[0];
    if (v13 >= -0.1)
    {
      a2[18].i32[3] = 0;
      v19 = 10.0;
    }

    else
    {
      v14 = *(this + 22);
      v15 = vsubq_f32(v11, v14[4]);
      v15.i32[3] = 0;
      v16 = vsubq_f32(vmulq_f32(v14[23], vextq_s8(vextq_s8(v15, v15, 0xCuLL), v15, 8uLL)), vmulq_f32(vextq_s8(vextq_s8(v14[23], v14[23], 0xCuLL), v14[23], 8uLL), v15));
      v17 = vextq_s8(vextq_s8(v16, v16, 0xCuLL), v16, 8uLL);
      v17.i32[3] = 0;
      v18 = vmulq_f32(*a2, vaddq_f32(v14[22], v17));
      v19 = -1.0 / v13;
      a2[18].f32[3] = v19 * vadd_f32(vpadd_f32(*v18.i8, *v18.i8), *&vextq_s8(v18, v18, 8uLL)).f32[0];
    }
  }

  else
  {
    a2[2].f32[0] = btWheelInfo::getSuspensionRestLength(a2);
    a2[18].i32[3] = 0;
    v20.i64[0] = 0x8000000080000000;
    v20.i64[1] = 0x8000000080000000;
    *a2 = veorq_s8(a2[4], v20);
    v6 = -1.0;
    v19 = 1.0;
  }

  a2[18].f32[2] = v19;
  return v6;
}

uint64_t btRaycastVehicle::updateVehicle(float32x4_t **this, __n128 a2, float32x4_t a3)
{
  if (*(this + 51) < 1)
  {
    v6 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      btRaycastVehicle::updateWheelTransform(this, v4++, 0);
      v5 = *(this + 51);
    }

    while (v4 < v5);
    v6 = v5 > 0;
  }

  v7 = this[22];
  v8 = vmulq_f32(v7[22], v7[22]);
  v9 = sqrtf(vadd_f32(vpadd_f32(*v8.i8, *v8.i8), *&vextq_s8(v8, v8, 8uLL)).f32[0]) * 3.6;
  *(this + 42) = v9;
  v10 = &v7->i32[*(this + 48)];
  a3.i32[0] = v10[4];
  a3.i32[1] = v10[8];
  a3.i32[2] = v10[12];
  v11 = vmulq_f32(a3, v7[22]);
  if (vadd_f32(vpadd_f32(*v11.i8, *v11.i8), *&vextq_s8(v11, v11, 8uLL)).f32[0] < 0.0)
  {
    v9 = -v9;
    *(this + 42) = v9;
  }

  if (v6)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v9 = btRaycastVehicle::rayCast(this, &this[27][v12]);
      ++v13;
      v12 += 20;
    }

    while (v13 < *(this + 51));
  }

  btRaycastVehicle::updateSuspension(this, v9);
  v14 = a2;
  if (*(this + 51) >= 1)
  {
    v15 = 0;
    v16 = 0;
    do
    {
      v17 = &this[27][v15];
      v18 = v17[19].f32[0];
      if (v18 > v17[16].f32[3])
      {
        v18 = v17[16].f32[3];
      }

      v19 = vmulq_n_f32(vmulq_n_f32(*v17, v18), v14.n128_f32[0]);
      v19.var0.var0[3] = 0.0;
      v40 = v19;
      v20 = this[22];
      v21 = vsubq_f32(v17[1], v20[4]);
      v21.var0.var0[3] = 0.0;
      v39 = v21;
      btRigidBody::applyImpulse(v20, &v40, &v39);
      v14 = a2;
      ++v16;
      v15 += 20;
    }

    while (v16 < *(this + 51));
  }

  result = ((*this)[2].i64[1])(this, v14);
  v23 = *(this + 51);
  if (v23 >= 1)
  {
    v24 = &this[27][14].f32[2];
    do
    {
      if (*(v24 - 136) == 1)
      {
        v25 = this[22];
        v26 = v25[22];
        v27 = vsubq_f32(*(v24 - 46), v25[4]);
        v27.i32[3] = 0;
        v28 = vsubq_f32(vmulq_f32(v25[23], vextq_s8(vextq_s8(v27, v27, 0xCuLL), v27, 8uLL)), vmulq_f32(vextq_s8(vextq_s8(v25[23], v25[23], 0xCuLL), v25[23], 8uLL), v27));
        v29 = vextq_s8(v28, v28, 0xCuLL);
        v30 = vextq_s8(v29, v28, 8uLL);
        v31 = &v25->i32[*(this + 48)];
        v29.i32[0] = v31[4];
        v29.i32[1] = v31[8];
        v29.i32[2] = v31[12];
        v32 = *(v24 - 58);
        v33 = vmulq_f32(v29, v32);
        v30.i32[3] = 0;
        v34 = vmulq_n_f32(v32, vadd_f32(vpadd_f32(*v33.i8, *v33.i8), *&vextq_s8(v33, v33, 8uLL)).f32[0]);
        v34.i32[3] = 0;
        v35 = vmulq_f32(vsubq_f32(v29, v34), vaddq_f32(v26, v30));
        v36 = (a2.n128_f32[0] * vadd_f32(vpadd_f32(*v35.i8, *v35.i8), *&vextq_s8(v35, v35, 8uLL)).f32[0]) / *v24;
        v37 = v24[6] + v36;
      }

      else
      {
        v36 = v24[7];
        v37 = v36 + v24[6];
      }

      v24[6] = v37;
      v24[7] = v36 * 0.99;
      v24 += 80;
      --v23;
    }

    while (v23);
  }

  return result;
}

void btRaycastVehicle::updateSuspension(uint64_t this, float a2)
{
  v2 = *(this + 204);
  if (v2 >= 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 1.0 / *(*(this + 176) + 384);
    do
    {
      v7 = *(this + 216) + v4;
      v8 = 0.0;
      if (*(v7 + 96) == 1)
      {
        v9 = *(v7 + 236) * (btWheelInfo::getSuspensionRestLength((*(this + 216) + v4)) - *(v7 + 32));
        v10 = *(v7 + 300);
        if (v10 >= 0.0)
        {
          v11 = 244;
        }

        else
        {
          v11 = 240;
        }

        v8 = v6 * ((v9 * *(v7 + 296)) - (*(v7 + v11) * v10));
        if (v8 < 0.0)
        {
          v8 = 0.0;
        }

        v2 = *(this + 204);
      }

      *(v7 + 304) = v8;
      ++v5;
      v4 += 320;
    }

    while (v5 < v2);
  }
}

float calcRollingFriction(float32x4_t **a1)
{
  v1 = a1[1];
  v2 = *(a1 + 1);
  v3 = vsubq_f32(v2, (*a1)[4]);
  v3.i32[3] = 0;
  v4 = vsubq_f32(v2, v1[4]);
  v4.i32[3] = 0;
  v5 = vsubq_f32(vmulq_f32((*a1)[23], vextq_s8(vextq_s8(v3, v3, 0xCuLL), v3, 8uLL)), vmulq_f32(vextq_s8(vextq_s8((*a1)[23], (*a1)[23], 0xCuLL), (*a1)[23], 8uLL), v3));
  v6 = vsubq_f32(vmulq_f32(v1[23], vextq_s8(vextq_s8(v4, v4, 0xCuLL), v4, 8uLL)), vmulq_f32(vextq_s8(vextq_s8(v1[23], v1[23], 0xCuLL), v1[23], 8uLL), v4));
  v7 = vsubq_f32(vaddq_f32((*a1)[22], vextq_s8(vextq_s8(v5, v5, 0xCuLL), v5, 8uLL)), vaddq_f32(v1[22], vextq_s8(vextq_s8(v6, v6, 0xCuLL), v6, 8uLL)));
  v7.i32[3] = 0;
  v8 = vmulq_f32(*(a1 + 2), v7);
  v9 = *(a1 + 13);
  result = -(vadd_f32(vpadd_f32(*v8.i8, *v8.i8), *&vextq_s8(v8, v8, 8uLL)).f32[0] * *(a1 + 12));
  if (v9 < result)
  {
    result = *(a1 + 13);
  }

  v11 = -v9;
  if (result < v11)
  {
    return v11;
  }

  return result;
}

void btRaycastVehicle::updateFriction(btRaycastVehicle *this, float a2)
{
  v99 = *MEMORY[0x277D85DE8];
  v2 = *(this + 51);
  if (!v2)
  {
    return;
  }

  if (*(this + 3) < v2 && *(this + 4) < v2)
  {
    v5 = btAlignedAllocInternal(16 * v2, 16);
    v6 = v5;
    v7 = *(this + 3);
    if (v7 >= 1)
    {
      v8 = 0;
      v9 = 16 * v7;
      do
      {
        *(v5 + v8) = *(*(this + 3) + v8);
        v8 += 16;
      }

      while (v9 != v8);
    }

    v10 = *(this + 3);
    if (v10 && *(this + 32) == 1)
    {
      btAlignedFreeInternal(v10);
    }

    *(this + 32) = 1;
    *(this + 3) = v6;
    *(this + 4) = v2;
  }

  *(this + 3) = v2;
  if (*(this + 11) < v2 && *(this + 12) < v2)
  {
    v11 = btAlignedAllocInternal(16 * v2, 16);
    v12 = v11;
    v13 = *(this + 11);
    if (v13 >= 1)
    {
      v14 = 0;
      v15 = 16 * v13;
      do
      {
        *(v11 + v14) = *(*(this + 7) + v14);
        v14 += 16;
      }

      while (v15 != v14);
    }

    v16 = *(this + 7);
    if (v16 && *(this + 64) == 1)
    {
      btAlignedFreeInternal(v16);
    }

    *(this + 64) = 1;
    *(this + 7) = v12;
    *(this + 12) = v2;
  }

  *(this + 11) = v2;
  v17 = *(this + 19);
  if (v17 < v2)
  {
    if (*(this + 20) >= v2)
    {
LABEL_30:
      bzero((*(this + 11) + 4 * v17), 4 * (v2 + ~v17) + 4);
      goto LABEL_31;
    }

    v18 = btAlignedAllocInternal(4 * v2, 16);
    v19 = *(this + 19);
    v20 = *(this + 11);
    if (v19 < 1)
    {
      if (!v20)
      {
LABEL_29:
        *(this + 96) = 1;
        *(this + 11) = v18;
        *(this + 20) = v2;
        goto LABEL_30;
      }
    }

    else
    {
      v21 = v18;
      v22 = *(this + 11);
      do
      {
        v23 = *v22++;
        *v21++ = v23;
        --v19;
      }

      while (v19);
    }

    if (*(this + 96) == 1)
    {
      btAlignedFreeInternal(v20);
    }

    goto LABEL_29;
  }

LABEL_31:
  *(this + 19) = v2;
  v24 = *(this + 27);
  if (v24 >= v2)
  {
    goto LABEL_42;
  }

  if (*(this + 28) < v2)
  {
    v25 = btAlignedAllocInternal(4 * v2, 16);
    v26 = *(this + 27);
    v27 = *(this + 15);
    if (v26 < 1)
    {
      if (!v27)
      {
LABEL_40:
        *(this + 128) = 1;
        *(this + 15) = v25;
        *(this + 28) = v2;
        goto LABEL_41;
      }
    }

    else
    {
      v28 = v25;
      v29 = *(this + 15);
      do
      {
        v30 = *v29++;
        *v28++ = v30;
        --v26;
      }

      while (v26);
    }

    if (*(this + 128) == 1)
    {
      btAlignedFreeInternal(v27);
    }

    goto LABEL_40;
  }

LABEL_41:
  bzero((*(this + 15) + 4 * v24), 4 * (v2 + ~v24) + 4);
LABEL_42:
  *(this + 27) = v2;
  v31 = *(this + 51);
  if (v31 >= 1)
  {
    v32 = *(this + 15);
    v33 = *(this + 11);
    v34 = *(this + 51);
    do
    {
      *v32++ = 0;
      *v33++ = 0;
      --v34;
    }

    while (v34);
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    do
    {
      v39 = *(this + 27) + v35;
      v40 = *(v39 + 104);
      if (v40)
      {
        v96 = *(v39 + 112);
        v97 = *(v39 + 128);
        v98[0] = *(v39 + 144);
        HIDWORD(v41) = HIDWORD(v98[0]);
        v42 = *(this + 46);
        *&v41 = v96.var0.var0[v42];
        DWORD1(v41) = *(&v98[-1] + v42);
        DWORD2(v41) = *(v98 + v42);
        *(*(this + 7) + 16 * v38) = v41;
        v43 = *(this + 7);
        v44 = *(v43 + 16 * v38);
        v45 = vmulq_f32(v44, *v39);
        v46 = vmulq_n_f32(*v39, vadd_f32(vpadd_f32(*v45.i8, *v45.i8), *&vextq_s8(v45, v45, 8uLL)).f32[0]);
        v46.i32[3] = 0;
        *(v43 + 16 * v38) = vsubq_f32(v44, v46);
        v47 = *(this + 7);
        v48 = *(v47 + 16 * v38);
        v49 = vmulq_f32(v48, v48);
        v50 = vmulq_n_f32(v48, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v49.i8, *v49.i8), *&vextq_s8(v49, v49, 8uLL)).f32[0]));
        *(v47 + 16 * v38) = v50;
        *(*(this + 7) + 16 * v38) = v50;
        v51 = *(*(this + 7) + 16 * v38);
        v52 = vsubq_f32(vmulq_f32(*v39, vextq_s8(vextq_s8(v51, v51, 0xCuLL), v51, 8uLL)), vmulq_f32(v51, vextq_s8(vextq_s8(*v39, *v39, 0xCuLL), *v39, 8uLL)));
        v53 = vextq_s8(vextq_s8(v52, v52, 0xCuLL), v52, 8uLL);
        v53.i32[3] = 0;
        *(*(this + 3) + 16 * v38) = v53;
        v54 = *(this + 3);
        v55 = *(v54 + 16 * v38);
        v56 = vmulq_f32(v55, v55);
        *(v54 + 16 * v38) = vmulq_n_f32(v55, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v56.i8, *v56.i8), *&vextq_s8(v56, v56, 8uLL)).f32[0]));
        resolveSingleBilateral(*(this + 22), (v39 + 16), v40, (v39 + 16), 0.0, (*(this + 7) + v36), (*(this + 15) + v37), a2);
        *(*(this + 15) + 4 * v38) = *&sideFrictionStiffness2 * *(*(this + 15) + 4 * v38);
        v31 = *(this + 51);
      }

      ++v38;
      v37 += 4;
      v36 += 16;
      v35 += 320;
    }

    while (v38 < v31);
    if (v31 >= 1)
    {
      v57 = 0;
      v58 = 0;
      v59 = 0;
      v60 = *(this + 27);
      v61 = 248;
      v62 = v60;
      do
      {
        v63 = *(v62 + v61 - 144);
        if (v63)
        {
          v64 = *(v62 + v61 + 24);
          if (v64 == 0.0)
          {
            v67 = *(v62 + v61 + 28);
            if (v67 == 0.0)
            {
              v67 = 0.0;
            }

            btWheelContactPoint::btWheelContactPoint(&v96, *(this + 22), v63, (v62 + v61 - 232), (*(this + 3) + v57), v67);
            v65 = calcRollingFriction(&v96);
            v60 = *(this + 27);
            v66 = v60;
          }

          else
          {
            v65 = v64 * a2;
            v66 = v62;
          }

          v68 = *(this + 11);
          *(v68 + 4 * v58) = 0;
          *(v66 + v61 + 60) = 1065353216;
          v69 = (*(v62 + v61 + 56) * a2) * *(v62 + v61);
          *(v68 + 4 * v58) = v65;
          v70 = (*(*(this + 15) + 4 * v58) * *(*(this + 15) + 4 * v58)) + ((v65 * 0.5) * (v65 * 0.5));
          if (v70 > (v69 * v69))
          {
            *(v66 + v61 + 60) = (v69 / sqrtf(v70)) * *(v66 + v61 + 60);
            v59 = 1;
          }
        }

        else
        {
          *(*(this + 11) + 4 * v58) = 0;
          *(v60 + v61 + 60) = 1065353216;
          v66 = v60;
        }

        ++v58;
        v71 = *(this + 51);
        v57 += 16;
        v61 += 320;
        v62 = v66;
      }

      while (v58 < v71);
      if (v71 >= 1 && (v59 & 1) != 0)
      {
        v72 = 0;
        v73 = *(this + 15);
        v74 = 308;
        do
        {
          if (*(v73 + v72) != 0.0)
          {
            v75 = *(this + 27);
            v76 = *(v75 + v74);
            if (v76 < 1.0)
            {
              *(*(this + 11) + v72) = v76 * *(*(this + 11) + v72);
              *(v73 + v72) = *(v75 + v74) * *(v73 + v72);
            }
          }

          v72 += 4;
          v74 += 320;
        }

        while (4 * v71 != v72);
      }

      if (v71 >= 1)
      {
        v77 = 0;
        v78 = 264;
        do
        {
          v79 = *(this + 27);
          v80 = *(this + 22);
          v81 = vsubq_f32(*(v79 + v78 - 248), *(v80 + 64));
          v81.var0.var0[3] = 0.0;
          v96 = v81;
          v82 = *(*(this + 11) + 4 * v77);
          if (v82 != 0.0)
          {
            v83 = vmulq_n_f32(*(*(this + 3) + 16 * v77), v82);
            v83.var0.var0[3] = 0.0;
            v95 = v83;
            btRigidBody::applyImpulse(v80, &v95, &v96);
          }

          v84 = *(this + 15);
          if (*(v84 + 4 * v77) != 0.0)
          {
            v85 = *(*(this + 27) + v78 - 160);
            v86 = vsubq_f32(*(v79 + v78 - 248), *(v85 + 64));
            v86.var0.var0[3] = 0.0;
            v95 = v86;
            v87 = vmulq_n_f32(*(*(this + 7) + 16 * v77), *(v84 + 4 * v77));
            v87.var0.var0[3] = 0.0;
            v94 = v87;
            v88 = *(this + 22);
            v89 = (v88 + 4 * *(this + 47));
            v87.var0.var0[0] = v89[4];
            v87.var0.var0[1] = v89[8];
            v87.var0.var0[2] = v89[12];
            v90 = vmulq_f32(v87, v96);
            v91 = vmulq_n_f32(v87, (1.0 - *(v79 + v78)) * vadd_f32(vpadd_f32(*v90.i8, *v90.i8), *&vextq_s8(v90, v90, 8uLL)).f32[0]);
            v91.i32[3] = 0;
            v96 = vsubq_f32(v96, v91);
            btRigidBody::applyImpulse(v88, &v94, &v96);
            v92.i64[0] = 0x8000000080000000;
            v92.i64[1] = 0x8000000080000000;
            v93 = veorq_s8(v94, v92);
            btRigidBody::applyImpulse(v85, &v93, &v95);
          }

          ++v77;
          v78 += 320;
        }

        while (v77 < *(this + 51));
      }
    }
  }
}

uint64_t btRaycastVehicle::debugDraw(uint64_t this, btIDebugDraw *a2, double a3, float32x4_t a4)
{
  if (*(this + 204) >= 1)
  {
    v20 = v9;
    v21 = v8;
    v22 = v7;
    v23 = v6;
    v24 = v4;
    v25 = v5;
    v11 = this;
    v12 = 0;
    v13 = 0;
    do
    {
      v19 = xmmword_21C2A4050;
      v14 = (*(v11 + 216) + v12);
      if (v14[6].i8[0])
      {
        v15 = 0.0;
      }

      else
      {
        v15 = 1.0;
      }

      *&v19 = v15;
      *(&v19 + 4) = 0x3F80000000000000;
      HIDWORD(v19) = 0;
      v18 = v14[10];
      v16 = &v14->i32[*(v11 + 184)];
      a4.i32[0] = v16[28];
      a4.i32[1] = v16[32];
      a4.i32[2] = v16[36];
      v17 = vaddq_f32(v18, a4);
      (*(*a2 + 16))(a2, &v18, &v17, &v19);
      this = (*(*a2 + 16))(a2, &v18, *(v11 + 216) + v12 + 16, &v19);
      ++v13;
      v12 += 320;
    }

    while (v13 < *(v11 + 204));
  }

  return this;
}

_DWORD *btRaycastVehicle::setCoordinateSystem(_DWORD *this, int a2, int a3, int a4)
{
  this[46] = a2;
  this[47] = a3;
  this[48] = a4;
  return this;
}

void btWheelContactPoint::btWheelContactPoint(btWheelContactPoint *this, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, int8x16_t *a5, float a6)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 1) = *a4;
  *(this + 2) = *a5;
  *(this + 13) = a6;
  v6 = vsubq_f32(*a4, a2[4]);
  v6.i32[3] = 0;
  v7 = vextq_s8(vextq_s8(v6, v6, 0xCuLL), v6, 8uLL);
  v8 = vextq_s8(vextq_s8(*a5, *a5, 0xCuLL), *a5, 8uLL);
  v9 = vsubq_f32(vmulq_f32(v8, v6), vmulq_f32(*a5, v7));
  v10 = vextq_s8(vextq_s8(v9, v9, 0xCuLL), v9, 8uLL);
  v10.i32[3] = 0;
  v11 = a2[19];
  v12 = a2[20];
  v11.i32[3] = 0;
  v12.i32[3] = 0;
  v13 = a2[21];
  v13.i32[3] = 0;
  v14 = vaddq_f32(vmulq_laneq_f32(v13, v10, 2), vaddq_f32(vmulq_n_f32(v11, v10.f32[0]), vmulq_lane_f32(v12, *v10.f32, 1)));
  v15 = vsubq_f32(vmulq_f32(v7, v14), vmulq_f32(vextq_s8(vextq_s8(v14, v14, 0xCuLL), v14, 8uLL), v6));
  v16 = vextq_s8(vextq_s8(v15, v15, 0xCuLL), v15, 8uLL);
  v16.i32[3] = 0;
  v17 = vmulq_f32(*a5, v16);
  v18 = vsubq_f32(*a4, a3[4]);
  v18.i32[3] = 0;
  v19 = vextq_s8(vextq_s8(v18, v18, 0xCuLL), v18, 8uLL);
  v20 = vsubq_f32(vmulq_f32(v8, v18), vmulq_f32(*a5, v19));
  v21 = vextq_s8(vextq_s8(v20, v20, 0xCuLL), v20, 8uLL);
  v21.i32[3] = 0;
  v22 = a3[19];
  v23 = a3[20];
  v22.i32[3] = 0;
  v23.i32[3] = 0;
  v24 = a3[21];
  v24.i32[3] = 0;
  v25 = vaddq_f32(vmulq_laneq_f32(v24, v21, 2), vaddq_f32(vmulq_n_f32(v22, v21.f32[0]), vmulq_lane_f32(v23, *v21.f32, 1)));
  v26 = vsubq_f32(vmulq_f32(v19, v25), vmulq_f32(vextq_s8(vextq_s8(v25, v25, 0xCuLL), v25, 8uLL), v18));
  v27 = vextq_s8(vextq_s8(v26, v26, 0xCuLL), v26, 8uLL);
  v27.i32[3] = 0;
  v28 = vmulq_f32(*a5, v27);
  *(this + 12) = 1.0 / ((a2[24].f32[0] + vadd_f32(vpadd_f32(*v17.i8, *v17.i8), *&vextq_s8(v17, v17, 8uLL)).f32[0]) + (a3[24].f32[0] + vadd_f32(vpadd_f32(*v28.i8, *v28.i8), *&vextq_s8(v28, v28, 8uLL)).f32[0]));
}

float btCollisionWorld::ClosestRayResultCallback::addSingleResult(float32x4_t *a1, uint64_t a2, int a3)
{
  a1->i32[2] = *(a2 + 32);
  v3 = *a2;
  a1[1].i64[0] = *a2;
  v4 = *(a2 + 16);
  if (!a3)
  {
    v5 = vmulq_f32(v3[1], v4);
    v6 = vmulq_f32(v4, v3[2]);
    v7 = vmulq_f32(v4, v3[3]);
    v7.i32[3] = 0;
    *v4.f32 = vadd_f32(vpadd_f32(*v5.i8, *v6.i8), vzip1_s32(*&vextq_s8(v5, v5, 8uLL), *&vextq_s8(v6, v6, 8uLL)));
    *&v4.u32[2] = vpadd_f32(vpadd_f32(*v7.i8, *&vextq_s8(v7, v7, 8uLL)), 0);
  }

  a1[6] = v4;
  a1[7] = vaddq_f32(a1[4], vmulq_n_f32(vsubq_f32(a1[5], a1[4]), *(a2 + 32)));
  return *(a2 + 32);
}

void btActionInterface::getFixedBody()
{
  if (__cxa_guard_acquire(_MergedGlobals_6))
  {
    v0 = 0uLL;
    btRigidBody::btRigidBody(&unk_27CDDB5A0, 0, 0, &v0, 0.0);
    __cxa_atexit(btRigidBody::~btRigidBody, &unk_27CDDB5A0, &dword_21BEF7000);
    __cxa_guard_release(_MergedGlobals_6);
  }
}

uint64_t btAlignedAllocDefault(uint64_t a1, int a2)
{
  v3 = sAllocFunc(a1 + a2 - 1 + 8);
  v4 = 0;
  if (v3)
  {
    v4 = (v3 + a2 + 7) & -a2;
    *(v4 - 8) = v3;
  }

  return v4;
}

void btAlignedFreeDefault(void **a1)
{
  if (a1)
  {
    sFreeFunc(*(a1 - 1));
  }
}

void btAlignedFreeInternal(void **a1)
{
  if (a1)
  {
    sAlignedFreeFunc(a1);
  }
}

char *btHullTriangle::neib(btHullTriangle *this, int a2, int a3)
{
  v3 = 0;
  v4 = &btHullTriangle::neib(int,int)::er;
  while (1)
  {
    v5 = v3 + 1;
    v6 = v3 == 2 ? 0 : v3 + 1;
    v7 = *(this + v3);
    if (v7 == a2 && *(this + v6) == a3)
    {
      break;
    }

    if (v7 == a3 && *(this + v6) == a2)
    {
      break;
    }

    ++v3;
    if (v5 == 3)
    {
      return v4;
    }
  }

  v8 = v3 - 1;
  if (!v3)
  {
    v8 = 2;
  }

  return this + 4 * v8 + 12;
}

char *HullLibrary::b2bfix(HullLibrary *this, btHullTriangle *a2, btHullTriangle *a3)
{
  v5 = *(this + 2);
  v6 = -3;
  do
  {
    v7 = v6 + 4;
    v8 = v6 + 1;
    if (v6 == -1)
    {
      v7 = 0;
    }

    if (v6 == -3)
    {
      v9 = 2;
    }

    else
    {
      v9 = v6 + 2;
    }

    v10 = *(a2 + v7);
    v11 = *(a2 + v9);
    v12 = *btHullTriangle::neib(a3, v11, v10);
    v13 = btHullTriangle::neib(a2, v10, v11);
    *btHullTriangle::neib(*(v5 + 8 * *v13), v11, v10) = v12;
    v14 = *btHullTriangle::neib(a2, v10, v11);
    v15 = btHullTriangle::neib(a3, v11, v10);
    result = btHullTriangle::neib(*(v5 + 8 * *v15), v10, v11);
    *result = v14;
    v6 = v8;
  }

  while (v8);
  return result;
}

void HullLibrary::removeb2b(HullLibrary *this, btHullTriangle *a2, btHullTriangle *a3)
{
  HullLibrary::b2bfix(this, a2, a3);
  *(*(this + 2) + 8 * *(a2 + 6)) = 0;
  btAlignedFreeInternal(a2);
  *(*(this + 2) + 8 * *(a3 + 6)) = 0;

  btAlignedFreeInternal(a3);
}

uint64_t HullLibrary::allocateTriangle(HullLibrary *this, int a2, int a3, int a4)
{
  v8 = btAlignedAllocInternal(36, 16);
  *v8 = a2;
  *(v8 + 4) = a3;
  *(v8 + 8) = a4;
  *(v8 + 12) = -1;
  *(v8 + 28) = 0xFFFFFFFFLL;
  v9 = *(this + 1);
  v10 = *(this + 2);
  *(v8 + 20) = -1;
  *(v8 + 24) = v9;
  if (v9 == v10)
  {
    v11 = v9 ? 2 * v9 : 1;
    if (v9 < v11)
    {
      if (v11)
      {
        v12 = btAlignedAllocInternal(8 * v11, 16);
        v9 = *(this + 1);
      }

      else
      {
        v12 = 0;
      }

      if (v9 >= 1)
      {
        v13 = 0;
        do
        {
          *(v12 + v13) = *(*(this + 2) + v13);
          v13 += 8;
        }

        while (8 * v9 != v13);
      }

      v14 = *(this + 2);
      if (v14 && *(this + 24) == 1)
      {
        btAlignedFreeInternal(v14);
        v9 = *(this + 1);
      }

      *(this + 24) = 1;
      *(this + 2) = v12;
      *(this + 2) = v11;
    }
  }

  *(*(this + 2) + 8 * v9) = v8;
  *(this + 1) = v9 + 1;
  return v8;
}

void HullLibrary::extrude(HullLibrary *this, btHullTriangle *a2, int a3)
{
  v6 = *a2;
  v7 = *(a2 + 1);
  v8 = *(a2 + 2);
  v9 = *(this + 1);
  Triangle = HullLibrary::allocateTriangle(this, a3, v7, v8);
  v11 = v9 + 2;
  *(Triangle + 3) = *(a2 + 3);
  *(Triangle + 4) = v9 + 1;
  *(Triangle + 5) = v9 + 2;
  *btHullTriangle::neib(*(*(this + 2) + 8 * *(a2 + 3)), v7, v8) = v9;
  v12 = HullLibrary::allocateTriangle(this, a3, v8, v6);
  v12[3] = *(a2 + 4);
  v12[4] = v9 + 2;
  v22 = v12;
  v12[5] = v9;
  *btHullTriangle::neib(*(*(this + 2) + 8 * *(a2 + 4)), v8, v6) = v9 + 1;
  v13 = HullLibrary::allocateTriangle(this, a3, v6, v7);
  *(v13 + 3) = *(a2 + 5);
  *(v13 + 4) = v9;
  *(v13 + 5) = v9 + 1;
  v14 = *(this + 2);
  *btHullTriangle::neib(*(v14 + 8 * *(a2 + 5)), v6, v7) = v11;
  v15 = *(v14 + 8 * *(Triangle + 3));
  if (*v15 == a3 || *(v15 + 1) == a3 || *(v15 + 2) == a3)
  {
    HullLibrary::removeb2b(this, Triangle, v15);
    v14 = *(this + 2);
  }

  v18 = *(v14 + 8 * v22[3]);
  if (*v18 == a3 || *(v18 + 1) == a3 || *(v18 + 2) == a3)
  {
    HullLibrary::removeb2b(this, v22, v18);
    v14 = *(this + 2);
  }

  v21 = *(v14 + 8 * *(v13 + 3));
  if (*v21 == a3 || *(v21 + 1) == a3 || *(v21 + 2) == a3)
  {
    HullLibrary::removeb2b(this, v13, v21);
    v14 = *(this + 2);
  }

  *(v14 + 8 * *(a2 + 6)) = 0;

  btAlignedFreeInternal(a2);
}

uint64_t HullLibrary::extrudable(HullLibrary *this, float a2)
{
  v2 = *(this + 1);
  if (v2 < 1)
  {
    return 0;
  }

  result = 0;
  v5 = *(this + 2);
  do
  {
    v6 = *v5;
    if (!result || v6 && *(result + 32) < *(v6 + 32))
    {
      result = *v5;
    }

    ++v5;
    --v2;
  }

  while (v2);
  if (result && *(result + 32) <= a2)
  {
    return 0;
  }

  return result;
}

unint64_t HullLibrary::FindSimplex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v39 = *MEMORY[0x277D85DE8];
  v36 = xmmword_21C2A4720;
  v7 = maxdirsterid<btVector3>(a2, a3, &v36, a4);
  v8.i64[0] = 0x8000000080000000;
  v8.i64[1] = 0x8000000080000000;
  v35 = veorq_s8(v36, v8);
  v9 = maxdirsterid<btVector3>(a2, v5, &v35, a4);
  v10 = vsubq_f32(*(a2 + 16 * v7), *(a2 + 16 * v9));
  v10.i32[3] = 0;
  v36 = v10;
  if (v7 == v9 || (v11 = v9, v12 = vceqz_f32(*&vextq_s8(v10, v10, 4uLL)), (v12.i8[4] & 1) != 0) && (v12.i8[0] & 1) != 0 && v10.f32[0] == 0.0)
  {
    v13 = -1;
LABEL_6:
    v14 = 0xFFFFFFFFLL;
    return v13 | (v14 << 32);
  }

  v16 = vextq_s8(vextq_s8(v10, v10, 0xCuLL), v10, 8uLL);
  v17 = vmlaq_f32(vmulq_f32(v10, xmmword_21C2A4740), xmmword_21C2A4730, v16);
  v18 = vextq_s8(vextq_s8(v17, v17, 0xCuLL), v17, 8uLL);
  v18.i32[3] = 0;
  v19 = vmlaq_f32(vmulq_f32(v10, xmmword_21C2A4760), xmmword_21C2A4750, v16);
  v20 = vextq_s8(vextq_s8(v19, v19, 0xCuLL), v19, 8uLL);
  v20.i32[3] = 0;
  v21 = vmulq_f32(v18, v18);
  *v17.i8 = vpadd_f32(*v21.i8, *v21.i8);
  v22 = vextq_s8(v21, v21, 8uLL);
  *v22.f32 = vadd_f32(*v17.i8, *v22.f32);
  v22.f32[0] = sqrtf(v22.f32[0]);
  v23 = vmulq_f32(v20, v20);
  v24 = vpadd_f32(*v23.i8, *v23.i8);
  v25 = vextq_s8(v23, v23, 8uLL);
  *v25.f32 = vadd_f32(v24, *v25.f32);
  v25.f32[0] = sqrtf(v25.f32[0]);
  v37 = vmulq_n_f32(vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v22, v25), 0), v18, v20), 1.0 / fmaxf(v22.f32[0], v25.f32[0]));
  v38 = v20;
  v26 = maxdirsterid<btVector3>(a2, v5, &v37, a4);
  if (v26 == v7 || (v27 = v26, v26 == v11))
  {
    v28.i64[0] = 0x8000000080000000;
    v28.i64[1] = 0x8000000080000000;
    v35 = veorq_s8(v37, v28);
    v27 = maxdirsterid<btVector3>(a2, v5, &v35, a4);
  }

  v13 = -1;
  if (v27 == v7)
  {
    goto LABEL_6;
  }

  v14 = 0xFFFFFFFFLL;
  if (v27 == v11)
  {
    return v13 | (v14 << 32);
  }

  v29 = vsubq_f32(*(a2 + 16 * v27), *(a2 + 16 * v7));
  v29.i32[3] = 0;
  v30 = vmlaq_f32(vnegq_f32(vmulq_f32(vextq_s8(vextq_s8(v29, v29, 0xCuLL), v29, 8uLL), v36)), v29, vextq_s8(vextq_s8(v36, v36, 0xCuLL), v36, 8uLL));
  v31 = vextq_s8(vextq_s8(v30, v30, 0xCuLL), v30, 8uLL);
  v31.i32[3] = 0;
  v32 = vmulq_f32(v31, v31);
  v37 = v29;
  v38 = vmulq_n_f32(v31, 1.0 / sqrtf(vadd_f32(*&vextq_s8(v32, v32, 8uLL), vpadd_f32(*v32.i8, *v32.i8)).f32[0]));
  v33 = maxdirsterid<btVector3>(a2, v5, &v38, a4);
  if (v33 == v27 || v33 == v7 || v33 == v11)
  {
    v34.i64[0] = 0x8000000080000000;
    v34.i64[1] = 0x8000000080000000;
    v35 = veorq_s8(v38, v34);
    v33 = maxdirsterid<btVector3>(a2, v5, &v35, a4);
  }

  v13 = -1;
  if (v33 == v27 || v33 == v7)
  {
    goto LABEL_6;
  }

  v14 = 0xFFFFFFFFLL;
  if (v33 != v11)
  {
    v13 = v7;
    v14 = v11;
  }

  return v13 | (v14 << 32);
}

uint64_t maxdirsterid<btVector3>(uint64_t a1, int a2, float32x4_t *a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = xmmword_21C27F8C0;
  v9 = xmmword_21C2A3E50;
  v10 = a2;
  v11 = xmmword_21C2A3E40;
  v49 = vdupq_n_s32(0x3CCCCCCDu);
LABEL_2:
  if (a2 < 1)
  {
    v14 = -1;
  }

  else
  {
    v12 = 0;
    v13 = *a3;
    v14 = -1;
    do
    {
      if (*(v7 + 4 * v12))
      {
        if (v14 == -1 || (v15 = vmulq_f32(*(a1 + 16 * v12), v13), v16 = vmulq_f32(*(a1 + 16 * v14), v13), (vcgt_f32(vadd_f32(*&vextq_s8(v15, v15, 8uLL), vpadd_f32(*v15.i8, *v15.i8)), vadd_f32(*&vextq_s8(v16, v16, 8uLL), vpadd_f32(*v16.i8, *v16.i8))).u8[0] & 1) != 0))
        {
          v14 = v12;
        }
      }

      ++v12;
    }

    while (v10 != v12);
  }

  v17 = v14;
  if (*(v7 + 4 * v14) != 3)
  {
    v18 = vextq_s8(vextq_s8(*a3, *a3, 0xCuLL), *a3, 8uLL);
    v19 = vmlaq_f32(vmulq_f32(v18, v9), v8, *a3);
    v20 = vextq_s8(vextq_s8(v19, v19, 0xCuLL), v19, 8uLL);
    v20.i32[3] = 0;
    v21 = vnegq_f32(vmlaq_f32(vmulq_f32(v18, v8), v11, *a3));
    v22 = vextq_s8(vextq_s8(v21, v21, 0xCuLL), v21, 8uLL);
    v22.i32[3] = 0;
    v23 = vmulq_f32(v20, v20);
    v24 = vpadd_f32(*v23.i8, *v23.i8);
    v25 = vextq_s8(v23, v23, 8uLL);
    *v25.f32 = vadd_f32(*v25.f32, v24);
    v25.f32[0] = sqrtf(v25.f32[0]);
    v26 = vmulq_f32(v22, v22);
    v27 = vpadd_f32(*v26.i8, *v26.i8);
    v28 = vextq_s8(v26, v26, 8uLL);
    *v28.f32 = vadd_f32(*v28.f32, v27);
    v28.f32[0] = sqrtf(v28.f32[0]);
    v51 = vmulq_n_f32(vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v25, v28), 0), v20, v22), 1.0 / fmaxf(v25.f32[0], v28.f32[0]));
    v52 = *a3;
    v29 = vmlaq_f32(vnegq_f32(vmulq_f32(vextq_s8(vextq_s8(v51, v51, 0xCuLL), v51, 8uLL), *a3)), v18, v51);
    v30 = vextq_s8(vextq_s8(v29, v29, 0xCuLL), v29, 8uLL);
    v30.i32[3] = 0;
    v50 = v30;
    v31 = -1;
    v32 = 0.0;
    while (1)
    {
      v33 = v31;
      v34 = __sincosf_stret(v32 * 0.017453);
      if (a2 < 1)
      {
        v31 = -1;
      }

      else
      {
        v35 = 0;
        v36 = vmulq_f32(vmlaq_n_f32(vmulq_n_f32(v50, v34.__cosval), v51, v34.__sinval), v49);
        v36.i32[3] = 0;
        v37 = vaddq_f32(v52, v36);
        v31 = -1;
        do
        {
          if (*(v7 + 4 * v35))
          {
            if (v31 == -1 || (v38 = vmulq_f32(*(a1 + 16 * v35), v37), v39 = vmulq_f32(*(a1 + 16 * v31), v37), (vcgt_f32(vadd_f32(*&vextq_s8(v38, v38, 8uLL), vpadd_f32(*v38.i8, *v38.i8)), vadd_f32(*&vextq_s8(v39, v39, 8uLL), vpadd_f32(*v39.i8, *v39.i8))).u8[0] & 1) != 0))
            {
              v31 = v35;
            }
          }

          ++v35;
        }

        while (v10 != v35);
      }

      if (v33 == v17 && v31 == v17)
      {
        break;
      }

      if (v33 != -1 && v33 != v31)
      {
        for (i = v32 + -40.0; i <= v32; v33 = v45)
        {
          v41 = __sincosf_stret(i * 0.017453);
          if (a2 < 1)
          {
            if ((v33 & v17) == 0xFFFFFFFF)
            {
              goto LABEL_42;
            }

            v45 = -1;
          }

          else
          {
            v42 = 0;
            v43 = vmulq_f32(vmlaq_n_f32(vmulq_n_f32(v50, v41.__cosval), v51, v41.__sinval), v49);
            v43.i32[3] = 0;
            v44 = vaddq_f32(v52, v43);
            v45 = -1;
            do
            {
              if (*(v7 + 4 * v42))
              {
                if (v45 == -1 || (v46 = vmulq_f32(*(a1 + 16 * v42), v44), v47 = vmulq_f32(*(a1 + 16 * v45), v44), (vcgt_f32(vadd_f32(*&vextq_s8(v46, v46, 8uLL), vpadd_f32(*v46.i8, *v46.i8)), vadd_f32(*&vextq_s8(v47, v47, 8uLL), vpadd_f32(*v47.i8, *v47.i8))).u8[0] & 1) != 0))
                {
                  v45 = v42;
                }
              }

              ++v42;
            }

            while (v10 != v42);
            if (v33 == v17 && v45 == v17)
            {
              goto LABEL_42;
            }
          }

          i = i + 5.0;
        }
      }

      v32 = v32 + 45.0;
      if (v32 > 360.0)
      {
        *(v7 + 4 * v17) = 0;
        v9 = xmmword_21C2A3E50;
        v8 = xmmword_21C27F8C0;
        v11 = xmmword_21C2A3E40;
        goto LABEL_2;
      }
    }

LABEL_42:
    *(v7 + 4 * v17) = 3;
  }

  return v17;
}

uint64_t HullLibrary::calchullgen(HullLibrary *this, float32x4_t *a2, uint64_t a3, int a4)
{
  if (a3 < 4)
  {
    return 0;
  }

  v115 = a4 - 4;
  v122 = *a2;
  v8 = 4 * a3;
  v9 = a3;
  v10 = btAlignedAllocInternal(v8, 16);
  v128 = 0;
  v11 = btAlignedAllocInternal(v8, 16);
  v12 = v122;
  v13 = v11;
  v14 = 0;
  v131 = 1;
  v130 = v11;
  v129 = a3;
  v15 = v122;
  v117 = a3;
  v16 = a3;
  do
  {
    v17 = v128;
    if (v128 == v129)
    {
      v18 = v128 ? 2 * v128 : 1;
      if (v128 < v18)
      {
        v118 = v15;
        v123 = v12;
        if (v18)
        {
          v11 = btAlignedAllocInternal(4 * v18, 16);
          v19 = v11;
        }

        else
        {
          v19 = 0;
        }

        if (v128 < 1)
        {
          if (!v13)
          {
LABEL_18:
            v131 = 1;
            v130 = v19;
            v129 = v18;
            v13 = v19;
            LODWORD(v17) = v128;
            v15 = v118;
            v12 = v123;
            goto LABEL_19;
          }
        }

        else
        {
          v20 = v19;
          v21 = v13;
          do
          {
            v22 = *v21;
            v21 = (v21 + 4);
            *v20++ = v22;
            --v17;
          }

          while (v17);
        }

        btAlignedFreeInternal(v13);
        goto LABEL_18;
      }
    }

LABEL_19:
    *(v13 + v17) = 1;
    ++v128;
    if (v14 != v16 || (!v14 ? (v23 = 1) : (v23 = (2 * v14)), v16 >= v23))
    {
      v23 = v16;
      goto LABEL_34;
    }

    v119 = v15;
    v124 = v12;
    if (v23)
    {
      v11 = btAlignedAllocInternal(4 * v23, 16);
      v24 = v11;
      if (v14)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v24 = 0;
      if (v14)
      {
LABEL_26:
        for (i = 0; i != v14; ++i)
        {
          *(v24 + i) = *(v10 + i);
        }

        goto LABEL_32;
      }
    }

    if (!v10)
    {
      v23 = 1;
      goto LABEL_33;
    }

LABEL_32:
    btAlignedFreeInternal(v10);
LABEL_33:
    v10 = v24;
    v15 = v119;
    v12 = v124;
LABEL_34:
    *(v10 + v14) = 0;
    v26 = a2[v14];
    v12 = vminq_f32(v12, v26);
    v15 = vmaxq_f32(v15, v26);
    ++v14;
    v16 = v23;
  }

  while (v14 != v9);
  v120 = v15;
  v125 = v12;
  Simplex = HullLibrary::FindSimplex(v11, a2, v117, v127);
  v29 = Simplex;
  if (Simplex == -1)
  {
    v4 = 0;
    goto LABEL_89;
  }

  v30 = v28;
  v113 = a2[Simplex >> 32];
  v114 = a2[Simplex];
  v31 = HIDWORD(v28);
  v32 = v28 >> 32;
  v111 = a2[v28 >> 32];
  v112 = a2[v28];
  Triangle = HullLibrary::allocateTriangle(this, v28, SHIDWORD(v28), SHIDWORD(Simplex));
  *(Triangle + 12) = 0x300000002;
  *(Triangle + 20) = 1;
  v34 = HullLibrary::allocateTriangle(this, v31, v30, v29);
  *(v34 + 12) = 0x200000003;
  *(v34 + 20) = 0;
  v35 = HullLibrary::allocateTriangle(this, v29, SHIDWORD(v29), v31);
  *(v35 + 12) = 0x100000000;
  *(v35 + 20) = 3;
  v36 = HullLibrary::allocateTriangle(this, SHIDWORD(v29), v29, v30);
  *(v36 + 12) = 1;
  *(v36 + 20) = 2;
  *(v10 + v32) = 1;
  *(v10 + v30) = 1;
  *(v10 + (v29 >> 32)) = 1;
  *(v10 + v29) = 1;
  if (*(this + 1) >= 1)
  {
    v37 = 0;
    do
    {
      v38 = *(*(this + 2) + 8 * v37);
      v39 = a2[v38[1]];
      v40 = vsubq_f32(v39, a2[*v38]);
      v40.i32[3] = 0;
      v41 = vsubq_f32(a2[v38[2]], v39);
      v41.i32[3] = 0;
      v42 = vmlaq_f32(vnegq_f32(vmulq_f32(vextq_s8(vextq_s8(v40, v40, 0xCuLL), v40, 8uLL), v41)), v40, vextq_s8(vextq_s8(v41, v41, 0xCuLL), v41, 8uLL));
      v43 = vextq_s8(vextq_s8(v42, v42, 0xCuLL), v42, 8uLL);
      v43.i32[3] = 0;
      v44 = vmulq_f32(v43, v43);
      v45 = sqrtf(vadd_f32(*&vextq_s8(v44, v44, 8uLL), vpadd_f32(*v44.i8, *v44.i8)).f32[0]);
      v46 = xmmword_21C27F910;
      if (v45 != 0.0)
      {
        v46 = vmulq_n_f32(v43, 1.0 / v45);
        v46.i32[3] = 0;
      }

      v126 = v46;
      v47 = maxdirsterid<btVector3>(a2, v117, &v126, v127);
      v38[7] = v47;
      v48 = vsubq_f32(a2[v47], a2[*v38]);
      v48.i32[3] = 0;
      v49 = vmulq_f32(v126, v48);
      v38[8] = vadd_f32(*&vextq_s8(v49, v49, 8uLL), vpadd_f32(*v49.i8, *v49.i8)).u32[0];
      ++v37;
    }

    while (v37 < *(this + 1));
  }

  if (a4)
  {
    v50 = v115;
  }

  else
  {
    v50 = 999999996;
  }

  v4 = 1;
  if (v50 >= 1)
  {
    v51 = vsubq_f32(v120, v125);
    v51.i32[3] = 0;
    v52 = vmulq_f32(v51, v51);
    __asm { FMOV            V2.4S, #0.25 }

    *v52.i32 = sqrtf(vadd_f32(vpadd_f32(*v52.i8, *v52.i8), *&vextq_s8(v52, v52, 8uLL)).f32[0]);
    v57 = vmulq_f32(vaddq_f32(vaddq_f32(v113, v111), vaddq_f32(v114, v112)), _Q2);
    v58 = *v52.i32 * 0.001;
    v57.i32[3] = 0;
    v121 = v57;
    v59 = *v52.i32 * 0.00001;
    v60 = (*v52.i32 * 0.0001) * (*v52.i32 * 0.001);
    while (1)
    {
      v61 = HullLibrary::extrudable(this, v58);
      if (!v61)
      {
LABEL_87:
        v4 = 1;
        break;
      }

      v62 = *(v61 + 28);
      *(v10 + v62) = 1;
      v63 = *(this + 1);
      if (!v63)
      {
        goto LABEL_85;
      }

      v64 = v63 - 1;
      do
      {
        v65 = *(*(this + 2) + 8 * v64);
        if (v65)
        {
          v66 = a2[v65[1]];
          v67 = a2[*v65];
          v68 = vsubq_f32(v66, v67);
          v68.i32[3] = 0;
          v69 = vsubq_f32(a2[v65[2]], v66);
          v69.i32[3] = 0;
          v70 = vmlaq_f32(vnegq_f32(vmulq_f32(vextq_s8(vextq_s8(v68, v68, 0xCuLL), v68, 8uLL), v69)), v68, vextq_s8(vextq_s8(v69, v69, 0xCuLL), v69, 8uLL));
          v71 = vextq_s8(vextq_s8(v70, v70, 0xCuLL), v70, 8uLL);
          v71.i32[3] = 0;
          v72 = vmulq_f32(v71, v71);
          v73 = sqrtf(vadd_f32(*&vextq_s8(v72, v72, 8uLL), vpadd_f32(*v72.i8, *v72.i8)).f32[0]);
          v74 = xmmword_21C27F910;
          if (v73 != 0.0)
          {
            v74 = vmulq_n_f32(v71, 1.0 / v73);
            v74.i32[3] = 0;
          }

          v75 = vsubq_f32(a2[v62], v67);
          v75.i32[3] = 0;
          v76 = vmulq_f32(v74, v75);
          if (vadd_f32(*&vextq_s8(v76, v76, 8uLL), vpadd_f32(*v76.i8, *v76.i8)).f32[0] > v59)
          {
            HullLibrary::extrude(this, v65, v62);
          }
        }

        --v64;
      }

      while (v64 != -1);
      v77 = *(this + 1);
      if (!v77)
      {
        goto LABEL_85;
      }

      v78 = *(this + 1);
      do
      {
        while (1)
        {
          --v78;
          v79 = *(this + 2);
          v80 = *(v79 + 8 * v78);
          if (v80)
          {
            break;
          }

LABEL_72:
          if (!v78)
          {
            goto LABEL_75;
          }
        }

        v81 = v80[1];
        v82 = *v80;
        v83 = v80[2];
        _ZF = v82 == v62 || v81 == v62;
        if (!_ZF && v83 != v62)
        {
          break;
        }

        v86 = a2[v81];
        v87 = a2[v82];
        v88 = vsubq_f32(v86, v87);
        v88.i32[3] = 0;
        v89 = vsubq_f32(a2[v83], v86);
        v89.i32[3] = 0;
        v90 = vmlaq_f32(vnegq_f32(vmulq_f32(vextq_s8(vextq_s8(v88, v88, 0xCuLL), v88, 8uLL), v89)), v88, vextq_s8(vextq_s8(v89, v89, 0xCuLL), v89, 8uLL));
        v91 = vextq_s8(vextq_s8(v90, v90, 0xCuLL), v90, 8uLL);
        v91.i32[3] = 0;
        v92 = vmulq_f32(v91, v91);
        v93 = sqrtf(vadd_f32(*&vextq_s8(v92, v92, 8uLL), vpadd_f32(*v92.i8, *v92.i8)).f32[0]);
        v94 = xmmword_21C27F910;
        if (v93 != 0.0)
        {
          v94 = vmulq_n_f32(v91, 1.0 / v93);
          v94.i32[3] = 0;
        }

        v95 = vsubq_f32(v121, v87);
        v95.i32[3] = 0;
        v96 = vmulq_f32(v94, v95);
        if (vadd_f32(*&vextq_s8(v96, v96, 8uLL), vpadd_f32(*v96.i8, *v96.i8)).f32[0] <= v59 && v93 >= v60)
        {
          goto LABEL_72;
        }

        HullLibrary::extrude(this, *(v79 + 8 * v80[3]), v62);
        v77 = *(this + 1);
        v78 = v77;
      }

      while (v77);
LABEL_75:
      if (v77)
      {
        v97 = v77 - 1;
        do
        {
          v98 = *(*(this + 2) + 8 * v97);
          if (v98)
          {
            if ((v98[7] & 0x80000000) == 0)
            {
              break;
            }

            v99 = a2[v98[1]];
            v100 = vsubq_f32(v99, a2[*v98]);
            v100.i32[3] = 0;
            v101 = vsubq_f32(a2[v98[2]], v99);
            v101.i32[3] = 0;
            v102 = vmlaq_f32(vnegq_f32(vmulq_f32(vextq_s8(vextq_s8(v100, v100, 0xCuLL), v100, 8uLL), v101)), v100, vextq_s8(vextq_s8(v101, v101, 0xCuLL), v101, 8uLL));
            v103 = vextq_s8(vextq_s8(v102, v102, 0xCuLL), v102, 8uLL);
            v103.i32[3] = 0;
            v104 = vmulq_f32(v103, v103);
            v105 = sqrtf(vadd_f32(*&vextq_s8(v104, v104, 8uLL), vpadd_f32(*v104.i8, *v104.i8)).f32[0]);
            v106 = xmmword_21C27F910;
            if (v105 != 0.0)
            {
              v106 = vmulq_n_f32(v103, 1.0 / v105);
              v106.i32[3] = 0;
            }

            v126 = v106;
            v107 = maxdirsterid<btVector3>(a2, v117, &v126, v127);
            v98[7] = v107;
            if (*(v10 + v107))
            {
              v98[7] = -1;
            }

            else
            {
              v108 = vsubq_f32(a2[v107], a2[*v98]);
              v108.i32[3] = 0;
              v109 = vmulq_f32(v126, v108);
              v98[8] = vadd_f32(*&vextq_s8(v109, v109, 8uLL), vpadd_f32(*v109.i8, *v109.i8)).u32[0];
            }
          }

          --v97;
        }

        while (v97 != -1);
      }

LABEL_85:
      _VF = __OFSUB__(v50--, 1);
      if ((v50 < 0) ^ _VF | (v50 == 0))
      {
        goto LABEL_87;
      }
    }
  }

LABEL_89:
  if (v130 && v131 == 1)
  {
    btAlignedFreeInternal(v130);
  }

  if (v10)
  {
    btAlignedFreeInternal(v10);
  }

  return v4;
}

uint64_t HullLibrary::calchull(uint64_t a1, float32x4_t *a2, uint64_t a3, uint64_t a4, int *a5, int a6)
{
  result = HullLibrary::calchullgen(a1, a2, a3, a6);
  if (!result)
  {
    return result;
  }

  v39 = a5;
  v10 = *(a1 + 4);
  if (v10 < 1)
  {
    v14 = 0;
    v12 = 0;
    goto LABEL_26;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  do
  {
    if (!*(*(a1 + 16) + 8 * v11))
    {
      goto LABEL_23;
    }

    v15 = 0;
    v16 = v14;
    do
    {
      v17 = *(*(a1 + 16) + 8 * v11);
      if (v13 == v16)
      {
        v18 = v16 ? 2 * v16 : 1;
        if (v13 < v18)
        {
          if (v18)
          {
            v19 = btAlignedAllocInternal(4 * v18, 16);
          }

          else
          {
            v19 = 0;
          }

          if (v16 < 1)
          {
            if (!v12)
            {
LABEL_20:
              v13 = v18;
              v12 = v19;
              goto LABEL_21;
            }
          }

          else
          {
            v20 = v13;
            v21 = v19;
            v22 = v12;
            do
            {
              v23 = *v22;
              v22 = (v22 + 4);
              *v21++ = v23;
              --v20;
            }

            while (v20);
          }

          btAlignedFreeInternal(v12);
          goto LABEL_20;
        }
      }

LABEL_21:
      *(v12 + v16++) = *(v17 + 4 * v15++);
    }

    while (v15 != 3);
    v24 = *(a1 + 16);
    v25 = *(v24 + 8 * v11);
    *(v24 + 8 * *(v25 + 24)) = 0;
    btAlignedFreeInternal(v25);
    v10 = *(a1 + 4);
    v14 = v16;
LABEL_23:
    ++v11;
  }

  while (v11 < v10);
LABEL_26:
  *v39 = v14 / 3;
  v26 = *(a4 + 4);
  if (v26 < v14)
  {
    if (*(a4 + 8) < v14)
    {
      if (v14)
      {
        v27 = btAlignedAllocInternal(4 * v14, 16);
      }

      else
      {
        v27 = 0;
      }

      LODWORD(v28) = *(a4 + 4);
      v29 = *(a4 + 16);
      if (v28 >= 1)
      {
        v28 = v28;
        v30 = v27;
        v31 = *(a4 + 16);
        do
        {
          v32 = *v31++;
          *v30++ = v32;
          --v28;
        }

        while (v28);
        goto LABEL_36;
      }

      if (v29)
      {
LABEL_36:
        if (*(a4 + 24) == 1)
        {
          btAlignedFreeInternal(v29);
        }
      }

      *(a4 + 24) = 1;
      *(a4 + 16) = v27;
      *(a4 + 8) = v14;
    }

    bzero((*(a4 + 16) + 4 * v26), 4 * (v14 + ~v26) + 4);
  }

  *(a4 + 4) = v14;
  if (v14 >= 1)
  {
    v33 = *(a4 + 16);
    v34 = v14;
    v35 = v12;
    do
    {
      v36 = *v35;
      v35 = (v35 + 4);
      *v33++ = v36;
      --v34;
    }

    while (v34);
  }

  v37 = *(a1 + 4);
  if ((v37 & 0x80000000) != 0)
  {
    if ((*(a1 + 8) & 0x80000000) != 0)
    {
      v38 = *(a1 + 16);
      if (v38 && *(a1 + 24) == 1)
      {
        btAlignedFreeInternal(v38);
      }

      *(a1 + 24) = 1;
      *(a1 + 16) = 0;
      *(a1 + 8) = 0;
    }

    do
    {
      *(*(a1 + 16) + 8 * v37++) = 0;
    }

    while (v37);
  }

  *(a1 + 4) = 0;
  if (v12)
  {
    btAlignedFreeInternal(v12);
  }

  return 1;
}

BOOL HullLibrary::ComputeHull(uint64_t a1, uint64_t a2, float32x4_t *a3, uint64_t a4, int a5)
{
  v7 = a2;
  v11 = 0;
  v8 = HullLibrary::calchull(a1, a3, a2, a4 + 24, &v11, a5);
  if (v8)
  {
    v9 = v11;
    *(a4 + 8) = v11;
    *(a4 + 16) = a3;
    *a4 = v7;
    *(a4 + 4) = 3 * v9;
  }

  return v8 != 0;
}

uint64_t HullLibrary::CreateConvexHull(HullLibrary *a1, uint64_t a2, uint64_t a3)
{
  v62 = 1;
  __src = 0;
  HIDWORD(v6) = 0;
  v60 = 0;
  *v57 = 0;
  v58 = 0;
  v59 = 0;
  v7 = *(a2 + 4);
  if (v7 <= 8)
  {
    v8 = 8;
  }

  else
  {
    v8 = v7;
  }

  if ((v8 & 0x80000000) != 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = btAlignedAllocInternal(16 * v8, 16);
    v7 = *(a2 + 4);
  }

  v55 = 0;
  LODWORD(v6) = *(a2 + 20);
  if (!HullLibrary::CleanupVertices(a1, v7, *(a2 + 8), *(a2 + 16), &v55, v9, v6, &v56))
  {
    goto LABEL_14;
  }

  v10 = v55;
  if (v55)
  {
    v11 = 0;
    v12 = *v56.var0.var0;
    v13 = v56.var0.var0[2];
    do
    {
      v14 = &v9[v11];
      *v14 = vmul_f32(*v14, v12);
      v14[1].f32[0] = v14[1].f32[0] * v13;
      ++v11;
    }

    while (v10 != v11);
  }

  if (!HullLibrary::ComputeHull(a1, v10, v9, v57, *(a2 + 24)))
  {
LABEL_14:
    v17 = 1;
    if (!v9)
    {
      goto LABEL_16;
    }

LABEL_15:
    btAlignedFreeInternal(v9);
    goto LABEL_16;
  }

  v15 = v57[0];
  if (v57[0] < 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = btAlignedAllocInternal(16 * v57[0], 16);
  }

  HullLibrary::BringOutYourDead(a1, v59, v15, v16, &v55, __src, v57[1]);
  if ((*a2 & 1) == 0)
  {
    *a3 = 1;
    v19 = v55;
    *(a3 + 4) = v55;
    v20 = *(a3 + 12);
    if (v20 < v19 && *(a3 + 16) < v19)
    {
      if (v19)
      {
        v21 = btAlignedAllocInternal(16 * v19, 16);
        v20 = *(a3 + 12);
      }

      else
      {
        v21 = 0;
      }

      if (v20 >= 1)
      {
        v25 = 0;
        v26 = 16 * v20;
        do
        {
          *(v21 + v25) = *(*(a3 + 24) + v25);
          v25 += 16;
        }

        while (v26 != v25);
      }

      v27 = *(a3 + 24);
      if (v27 && *(a3 + 32) == 1)
      {
        btAlignedFreeInternal(v27);
      }

      *(a3 + 32) = 1;
      *(a3 + 24) = v21;
      *(a3 + 16) = v19;
    }

    *(a3 + 12) = v19;
    v28 = v58;
    v29 = v57[1] + v58;
    *(a3 + 40) = v58;
    *(a3 + 44) = v29;
    v30 = *(a3 + 52);
    if (v30 >= v29)
    {
      goto LABEL_69;
    }

    if (*(a3 + 56) >= v29)
    {
LABEL_68:
      bzero((*(a3 + 64) + 4 * v30), 4 * (v29 + ~v30) + 4);
LABEL_69:
      *(a3 + 52) = v29;
      memcpy(*(a3 + 24), v16, 16 * v19);
      v49 = __src;
      if (v28)
      {
        v50 = (*(a3 + 64) + 8);
        v51 = __src;
        do
        {
          *(v50 - 2) = 3;
          if ((*a2 & 2) != 0)
          {
            *(v50 - 1) = v51[2];
            *v50 = v51[1];
            v52 = v51;
          }

          else
          {
            *(v50 - 1) = *v51;
            *v50 = v51[1];
            v52 = v51 + 2;
          }

          v50[1] = *v52;
          v51 += 3;
          v50 += 4;
          --v28;
        }

        while (v28);
      }

      goto LABEL_86;
    }

    if (v29)
    {
      v31 = btAlignedAllocInternal(4 * v29, 16);
    }

    else
    {
      v31 = 0;
    }

    LODWORD(v32) = *(a3 + 52);
    v41 = *(a3 + 64);
    if (v32 < 1)
    {
      if (!v41)
      {
LABEL_67:
        *(a3 + 72) = 1;
        *(a3 + 64) = v31;
        *(a3 + 56) = v29;
        goto LABEL_68;
      }
    }

    else
    {
      v32 = v32;
      v42 = v31;
      v43 = *(a3 + 64);
      do
      {
        v44 = *v43++;
        *v42++ = v44;
        --v32;
      }

      while (v32);
    }

    if (*(a3 + 72) == 1)
    {
      btAlignedFreeInternal(v41);
    }

    goto LABEL_67;
  }

  *a3 = 0;
  v22 = v55;
  *(a3 + 4) = v55;
  v23 = *(a3 + 12);
  if (v23 < v22 && *(a3 + 16) < v22)
  {
    if (v22)
    {
      v24 = btAlignedAllocInternal(16 * v22, 16);
      v23 = *(a3 + 12);
    }

    else
    {
      v24 = 0;
    }

    if (v23 >= 1)
    {
      v33 = 0;
      v34 = 16 * v23;
      do
      {
        *(v24 + v33) = *(*(a3 + 24) + v33);
        v33 += 16;
      }

      while (v34 != v33);
    }

    v35 = *(a3 + 24);
    if (v35 && *(a3 + 32) == 1)
    {
      btAlignedFreeInternal(v35);
    }

    *(a3 + 32) = 1;
    *(a3 + 24) = v24;
    *(a3 + 16) = v22;
  }

  *(a3 + 12) = v22;
  v37 = v57[1];
  v36 = v58;
  *(a3 + 40) = v58;
  *(a3 + 44) = v37;
  v38 = *(a3 + 52);
  if (v38 < v37)
  {
    if (*(a3 + 56) >= v37)
    {
LABEL_80:
      bzero((*(a3 + 64) + 4 * v38), 4 * (v37 + ~v38) + 4);
      goto LABEL_81;
    }

    if (v37)
    {
      v39 = btAlignedAllocInternal(4 * v37, 16);
    }

    else
    {
      v39 = 0;
    }

    LODWORD(v40) = *(a3 + 52);
    v45 = *(a3 + 64);
    if (v40 < 1)
    {
      if (!v45)
      {
LABEL_79:
        *(a3 + 72) = 1;
        *(a3 + 64) = v39;
        *(a3 + 56) = v37;
        goto LABEL_80;
      }
    }

    else
    {
      v40 = v40;
      v46 = v39;
      v47 = *(a3 + 64);
      do
      {
        v48 = *v47++;
        *v46++ = v48;
        --v40;
      }

      while (v40);
    }

    if (*(a3 + 72) == 1)
    {
      btAlignedFreeInternal(v45);
    }

    goto LABEL_79;
  }

LABEL_81:
  *(a3 + 52) = v37;
  memcpy(*(a3 + 24), v16, 16 * v22);
  if ((*a2 & 2) != 0)
  {
    v49 = __src;
    if (v36)
    {
      v53 = *(a3 + 64);
      v54 = __src + 8;
      do
      {
        *v53 = *v54;
        v53[1] = *(v54 - 1);
        v53[2] = *(v54 - 2);
        v53 += 3;
        v54 += 3;
        --v36;
      }

      while (v36);
    }
  }

  else
  {
    v49 = __src;
    memcpy(*(a3 + 64), __src, 4 * v37);
  }

LABEL_86:
  if (v60)
  {
    if (v49 && v62 == 1)
    {
      btAlignedFreeInternal(v49);
    }

    v62 = 1;
    __src = 0;
  }

  if (v16)
  {
    btAlignedFreeInternal(v16);
  }

  v17 = 0;
  if (v9)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (__src && v62 == 1)
  {
    btAlignedFreeInternal(__src);
  }

  return v17;
}

BOOL HullLibrary::CleanupVertices(HullLibrary *this, unsigned int a2, const btVector3 *a3, unsigned int a4, unsigned int *a5, btVector3 *a6, double a7, btVector3 *a8)
{
  v8 = a2;
  v106 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return v8 != 0;
  }

  v15 = *(this + 9);
  v101 = a7;
  if ((v15 & 0x80000000) != 0)
  {
    if ((*(this + 10) & 0x80000000) != 0)
    {
      v16 = *(this + 6);
      if (v16 && *(this + 56) == 1)
      {
        btAlignedFreeInternal(v16);
      }

      *(this + 56) = 1;
      *(this + 6) = 0;
      *(this + 10) = 0;
    }

    bzero((*(this + 6) + 4 * v15), 4 * ~v15 + 4);
    a7 = v101;
  }

  v17 = 0;
  *(this + 9) = 0;
  *a5 = 0;
  __asm { FMOV            V6.2S, #1.0 }

  *a8->var0.var0 = _D6;
  a8->var0.var0[2] = 1.0;
  v104 = 0x7F7FFFFF7F7FFFFFLL;
  v105 = 3.4028e38;
  v103 = -3.4028e38;
  v102 = 0xFF7FFFFFFF7FFFFFLL;
  v23 = a3;
  do
  {
    for (i = 0; i != 3; ++i)
    {
      v25 = v23->var0.var0[i];
      if (v25 < v104.f32[i])
      {
        v104.f32[i] = v25;
      }

      if (v25 > v102.f32[i])
      {
        v102.f32[i] = v25;
      }
    }

    v23 = (v23 + a4);
    ++v17;
  }

  while (v17 != v8);
  v26 = vsub_f32(v102, v104);
  v27 = v103 - v105;
  v29.i32[1] = 1056964608;
  v28 = vmla_f32(v104, 0x3F0000003F000000, v26);
  *v29.i32 = v105 + ((v103 - v105) * 0.5);
  if (v8 >= 3 && v26.f32[0] >= 0.000001 && v26.f32[1] >= 0.000001 && v27 >= 0.000001)
  {
    v30 = 0;
    *a8->var0.var0 = v26;
    a8->var0.var0[2] = v27;
    v31 = vdiv_f32(_D6, v26);
    v32 = 1.0 / v27;
    v33 = vmul_f32(v28, v31);
    *v29.i32 = *v29.i32 * (1.0 / v27);
    v34 = vdup_lane_s32(v29, 0);
    v35 = vdup_lane_s32(*&a7, 0);
    v36 = &a6->var0.var0[2];
    v100 = v8;
    while (1)
    {
      v37 = vmul_f32(*a3->var0.var0, v31);
      v38 = a3->var0.var0[2] * v32;
      v39 = *a5;
      if (v39)
      {
        v40 = 0;
        v41.i32[1] = v37.i32[1];
        v42 = v36;
        while (1)
        {
          v43 = *(v42 - 2);
          if (fabsf(vsub_f32(v43, v37).f32[0]) < *&a7)
          {
            v44.i32[1] = HIDWORD(*(v42 - 1));
            v44.i32[0] = *v42;
            v41.f32[0] = a3->var0.var0[2] * v32;
            v45 = vcgt_f32(v35, vabd_f32(v44, v41));
            if (v45.i8[4] & 1) != 0 && (v45.i8[0])
            {
              break;
            }
          }

          ++v40;
          v42 += 4;
          if (v39 == v40)
          {
            LODWORD(v40) = *a5;
            goto LABEL_33;
          }
        }

        v46.f32[0] = a3->var0.var0[2] * v32;
        v46.i32[1] = *v42;
        v47 = vsub_f32(v46, v34);
        v48 = vsub_f32(v37, v33);
        v49 = vmul_f32(v48, v48);
        v50 = vsub_f32(v43, v33);
        v51 = vmul_f32(v50, v50);
        v52 = vmla_f32(vadd_f32(vzip2_s32(v49, v51), vzip1_s32(v49, v51)), v47, v47);
        if (vcgt_f32(v52, vdup_lane_s32(v52, 1)).u8[0])
        {
          *(v42 - 1) = v37;
          *v42 = v38;
        }
      }

      else
      {
        LODWORD(v40) = 0;
      }

      if (v40 == v39)
      {
LABEL_33:
        v53 = &a6[v39];
        *v53->var0.var0 = v37;
        v53->var0.var0[2] = v38;
        *a5 = v39 + 1;
      }

      LODWORD(v54) = *(this + 9);
      if (v54 != *(this + 10))
      {
        goto LABEL_50;
      }

      v55 = v54 ? 2 * v54 : 1;
      if (v54 >= v55)
      {
        goto LABEL_50;
      }

      v56 = a6;
      v57 = a5;
      v58 = v36;
      if (v55)
      {
        v59 = btAlignedAllocInternal(4 * v55, 16);
        LODWORD(a7) = LODWORD(v101);
        v60 = v59;
        LODWORD(v54) = *(this + 9);
      }

      else
      {
        v60 = 0;
      }

      v61 = *(this + 6);
      if (v54 >= 1)
      {
        break;
      }

      if (v61)
      {
        goto LABEL_47;
      }

LABEL_49:
      *(this + 56) = 1;
      *(this + 6) = v60;
      *(this + 10) = v55;
      LODWORD(v54) = *(this + 9);
      v36 = v58;
      a5 = v57;
      a6 = v56;
      v8 = v100;
LABEL_50:
      *(*(this + 6) + 4 * v54) = v40;
      a3 = (a3 + a4);
      ++*(this + 9);
      if (++v30 == v8)
      {
        v105 = 3.4028e38;
        v104 = 0x7F7FFFFF7F7FFFFFLL;
        v103 = -3.4028e38;
        v102 = 0xFF7FFFFFFF7FFFFFLL;
        v65 = *a5;
        if (v65)
        {
          v66 = 0;
          v67 = a6;
          do
          {
            for (j = 0; j != 3; ++j)
            {
              v69 = v67->var0.var0[j];
              if (v69 < v104.f32[j])
              {
                v104.f32[j] = v69;
              }

              if (v69 > v102.f32[j])
              {
                v102.f32[j] = v69;
              }
            }

            ++v66;
            ++v67;
          }

          while (v66 != v65);
          v70 = v102.f32[1];
          v71 = v102.f32[0];
          v72 = v104.f32[1];
          v73 = v104.f32[0];
          v74 = v103;
          v75 = v105;
        }

        else
        {
          v74 = -3.4028e38;
          v75 = 3.4028e38;
          v72 = 3.4028e38;
          v70 = -3.4028e38;
          v73 = 3.4028e38;
          v71 = -3.4028e38;
        }

        v80 = v71 - v73;
        v81 = v70 - v72;
        v82 = v74 - v75;
        if (v65 < 3 || v80 < 0.000001 || v81 < 0.000001 || v82 < 0.000001)
        {
          v83 = v73 + (v80 * 0.5);
          v84 = v72 + (v81 * 0.5);
          v85 = v75 + (v82 * 0.5);
          if (v80 >= 0.000001 && v80 < 3.4028e38)
          {
            v86 = v80;
          }

          else
          {
            v86 = 3.4028e38;
          }

          if (v81 >= 0.000001 && v81 < v86)
          {
            v86 = v81;
          }

          if (v82 >= 0.000001 && v82 < v86)
          {
            v86 = v82;
          }

          if (v86 == 3.4028e38)
          {
            v80 = 0.01;
            v81 = 0.01;
            v87 = 0.01;
          }

          else
          {
            v87 = v86 * 0.05;
            if (v80 < 0.000001)
            {
              v80 = v87;
            }

            if (v81 < 0.000001)
            {
              v81 = v87;
            }

            if (v82 >= 0.000001)
            {
              v87 = v82;
            }
          }

          v94 = v83 - v80;
          v95 = v80 + v83;
          v96 = v84 - v81;
          a6->var0.var0[0] = v94;
          a6->var0.var0[1] = v84 - v81;
          v97 = v81 + v84;
          v98 = v85 - v87;
          a6->var0.var0[2] = v85 - v87;
          v93 = v87 + v85;
          a6[1].var0.var0[0] = v95;
          a6[1].var0.var0[1] = v96;
          a6[1].var0.var0[2] = v98;
          a6[2].var0.var0[0] = v95;
          a6[2].var0.var0[1] = v97;
          a6[2].var0.var0[2] = v98;
          a6[3].var0.var0[0] = v94;
          a6[3].var0.var0[1] = v97;
          a6[3].var0.var0[2] = v98;
          a6[4].var0.var0[0] = v94;
          a6[4].var0.var0[1] = v96;
          a6[4].var0.var0[2] = v93;
          a6[5].var0.var0[0] = v95;
          a6[5].var0.var0[1] = v96;
          a6[5].var0.var0[2] = v93;
          a6[6].var0.var0[0] = v95;
          a6[6].var0.var0[1] = v97;
          a6[6].var0.var0[2] = v93;
          a6[7].var0.var0[0] = v94;
          a6[7].var0.var0[1] = v97;
          goto LABEL_100;
        }

        return v8 != 0;
      }
    }

    v54 = v54;
    v62 = v60;
    v63 = *(this + 6);
    do
    {
      v64 = *v63++;
      *v62++ = v64;
      --v54;
    }

    while (v54);
LABEL_47:
    if (*(this + 56) == 1)
    {
      btAlignedFreeInternal(v61);
      LODWORD(a7) = LODWORD(v101);
    }

    goto LABEL_49;
  }

  if (v26.f32[0] > 0.000001 && v26.f32[0] < 3.4028e38)
  {
    v76 = v26.f32[0];
  }

  else
  {
    v76 = 3.4028e38;
  }

  if (v26.f32[1] > 0.000001 && v26.f32[1] < v76)
  {
    v76 = v26.f32[1];
  }

  if (v27 > 0.000001 && v27 < v76)
  {
    v76 = v103 - v105;
  }

  if (v76 == 3.4028e38)
  {
    v77 = 0.01;
    v78 = 0.01;
    v79 = 0.01;
  }

  else
  {
    v77 = v76 * 0.05;
    if (v26.f32[0] >= 0.000001)
    {
      v79 = v26.f32[0];
    }

    else
    {
      v79 = v77;
    }

    if (v26.f32[1] >= 0.000001)
    {
      v78 = v26.f32[1];
    }

    else
    {
      v78 = v77;
    }

    if (v27 >= 0.000001)
    {
      v77 = v103 - v105;
    }
  }

  v88 = v28.f32[0] - v79;
  v89 = v79 + v28.f32[0];
  v90 = v28.f32[1] - v78;
  a6->var0.var0[0] = v28.f32[0] - v79;
  a6->var0.var0[1] = v28.f32[1] - v78;
  v91 = v78 + v28.f32[1];
  v92 = *v29.i32 - v77;
  a6->var0.var0[2] = *v29.i32 - v77;
  v93 = v77 + *v29.i32;
  a6[1].var0.var0[0] = v89;
  a6[1].var0.var0[1] = v90;
  a6[1].var0.var0[2] = v92;
  a6[2].var0.var0[0] = v89;
  a6[2].var0.var0[1] = v91;
  a6[2].var0.var0[2] = v92;
  a6[3].var0.var0[0] = v88;
  a6[3].var0.var0[1] = v91;
  a6[3].var0.var0[2] = v92;
  a6[4].var0.var0[0] = v88;
  a6[4].var0.var0[1] = v90;
  a6[4].var0.var0[2] = v93;
  a6[5].var0.var0[0] = v89;
  a6[5].var0.var0[1] = v90;
  a6[5].var0.var0[2] = v93;
  a6[6].var0.var0[0] = v89;
  a6[6].var0.var0[1] = v91;
  a6[6].var0.var0[2] = v93;
  a6[7].var0.var0[0] = v88;
  a6[7].var0.var0[1] = v91;
LABEL_100:
  a6[7].var0.var0[2] = v93;
  *a5 = 8;
  return v8 != 0;
}