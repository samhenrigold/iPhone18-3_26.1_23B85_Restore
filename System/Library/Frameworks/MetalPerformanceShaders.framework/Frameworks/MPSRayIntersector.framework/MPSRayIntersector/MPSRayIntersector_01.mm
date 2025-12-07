void sub_239DFE960(float32x4_t *a1, int a2)
{
  v63[1] = *MEMORY[0x277D85DE8];
  v4 = a1[4].i64[0];
  v5 = a1[6].u32[2];
  MEMORY[0x28223BE20]();
  v6 = v63 - ((4 * v5 + 15) & 0x7FFFFFFF0);
  bzero(v6, 4 * v5);
  MEMORY[0x28223BE20]();
  bzero(v6, 4 * v5);
  MEMORY[0x28223BE20]();
  v7 = &v63[-4 * v5];
  bzero(v7, v8);
  if (v5)
  {
    bzero(v6, 4 * v5);
    bzero(v6, 4 * v5);
    v15 = v7 + 1;
    v16.i64[0] = 0x7F0000007FLL;
    v16.i64[1] = 0x7F0000007FLL;
    v17 = vnegq_f32(v16);
    do
    {
      v15[-1] = v17;
      *v15 = v16;
      v15 += 2;
      --v5;
    }

    while (v5);
  }

  v18 = *(v4 + 24);
  v19 = v18 * a2;
  v20 = v18 * a2 + v18;
  v21 = a1[7].i32[0];
  if (v20 >= a1[6].i32[3])
  {
    v22 = a1[6].u32[3];
  }

  else
  {
    v22 = v20;
  }

  if (v21)
  {
    if (v21 == 1)
    {
      sub_239DFE28C(v4, a1[4].i64[1], v6, v6, v7, v19, v22, a1[2], a1[3], v9, v10, v11, v12, v13, v14);
    }

    else if (v21 == 2)
    {
      sub_239DFE608(v4, a1[4].i64[1], v6, v6, v7, v19, v22, a1[2], a1[3], v9, v10, v11, v12, v13, v14);
    }
  }

  else
  {
    sub_239DFDF40(v4, a1[4].i64[1], v6, v6, v7, v19, v22, a1[2], a1[3], v9, v10, v11, v12, v13, v14);
  }

  if (a1[6].i32[2])
  {
    v23 = 0;
    do
    {
      atomic_fetch_add((a1[5].i64[0] + 4 * v23), *&v6[4 * v23]);
      atomic_fetch_add((a1[5].i64[1] + 4 * v23), *&v6[4 * v23]);
      v24 = (a1[6].i64[0] + 32 * v23);
      f32 = v7[2 * v23].f32;
      v26 = *f32;
      v27 = COERCE_FLOAT(atomic_load(v24));
      v28 = v27;
      if (v26 <= v27)
      {
        v28 = *f32;
      }

      v29 = v27;
      atomic_compare_exchange_strong_explicit(v24, &v29, LODWORD(v28), memory_order_release, memory_order_relaxed);
      if (LODWORD(v29) != LODWORD(v27))
      {
        v30 = v29;
        do
        {
          *&v31 = v29;
          if (v26 <= v29)
          {
            *&v31 = v26;
          }

          atomic_compare_exchange_strong_explicit(v24, &v30, v31, memory_order_release, memory_order_relaxed);
          v32 = LODWORD(v30) == LODWORD(v29);
          v29 = v30;
        }

        while (!v32);
      }

      v33 = f32[1];
      v34 = COERCE_FLOAT(atomic_load(v24 + 1));
      v35 = LODWORD(v34);
      if (v33 <= v34)
      {
        v35 = *(f32 + 1);
      }

      v36 = v34;
      atomic_compare_exchange_strong_explicit(v24 + 1, &v36, v35, memory_order_release, memory_order_relaxed);
      if (LODWORD(v36) != LODWORD(v34))
      {
        v37 = v36;
        do
        {
          *&v38 = v36;
          if (v33 <= v36)
          {
            *&v38 = v33;
          }

          atomic_compare_exchange_strong_explicit(v24 + 1, &v37, v38, memory_order_release, memory_order_relaxed);
          v32 = LODWORD(v37) == LODWORD(v36);
          v36 = v37;
        }

        while (!v32);
      }

      v39 = f32[2];
      v40 = COERCE_FLOAT(atomic_load(v24 + 2));
      v41 = LODWORD(v40);
      if (v39 <= v40)
      {
        v41 = *(f32 + 2);
      }

      v42 = v40;
      atomic_compare_exchange_strong_explicit(v24 + 2, &v42, v41, memory_order_release, memory_order_relaxed);
      if (LODWORD(v42) != LODWORD(v40))
      {
        v43 = v42;
        do
        {
          *&v44 = v42;
          if (v39 <= v42)
          {
            *&v44 = v39;
          }

          atomic_compare_exchange_strong_explicit(v24 + 2, &v43, v44, memory_order_release, memory_order_relaxed);
          v32 = LODWORD(v43) == LODWORD(v42);
          v42 = v43;
        }

        while (!v32);
      }

      v45 = f32[4];
      v46 = COERCE_FLOAT(atomic_load(v24 + 4));
      v47 = LODWORD(v46);
      if (v45 > v46)
      {
        v47 = *(f32 + 4);
      }

      v48 = v46;
      atomic_compare_exchange_strong_explicit(v24 + 4, &v48, v47, memory_order_release, memory_order_relaxed);
      if (LODWORD(v48) != LODWORD(v46))
      {
        v49 = v48;
        do
        {
          *&v50 = v48;
          if (v45 > v48)
          {
            *&v50 = v45;
          }

          atomic_compare_exchange_strong_explicit(v24 + 4, &v49, v50, memory_order_release, memory_order_relaxed);
          v32 = LODWORD(v49) == LODWORD(v48);
          v48 = v49;
        }

        while (!v32);
      }

      v51 = f32[5];
      v52 = COERCE_FLOAT(atomic_load(v24 + 5));
      v53 = LODWORD(v52);
      if (v51 > v52)
      {
        v53 = *(f32 + 5);
      }

      v54 = v52;
      atomic_compare_exchange_strong_explicit(v24 + 5, &v54, v53, memory_order_release, memory_order_relaxed);
      if (LODWORD(v54) != LODWORD(v52))
      {
        v55 = v54;
        do
        {
          *&v56 = v54;
          if (v51 > v54)
          {
            *&v56 = v51;
          }

          atomic_compare_exchange_strong_explicit(v24 + 5, &v55, v56, memory_order_release, memory_order_relaxed);
          v32 = LODWORD(v55) == LODWORD(v54);
          v54 = v55;
        }

        while (!v32);
      }

      v57 = f32[6];
      v58 = COERCE_FLOAT(atomic_load(v24 + 6));
      v59 = LODWORD(v58);
      if (v57 > v58)
      {
        v59 = *(f32 + 6);
      }

      v60 = v58;
      atomic_compare_exchange_strong_explicit(v24 + 6, &v60, v59, memory_order_release, memory_order_relaxed);
      if (LODWORD(v60) != LODWORD(v58))
      {
        v61 = v60;
        do
        {
          *&v62 = v60;
          if (v57 > v60)
          {
            *&v62 = v57;
          }

          atomic_compare_exchange_strong_explicit(v24 + 6, &v61, v62, memory_order_release, memory_order_relaxed);
          v32 = LODWORD(v61) == LODWORD(v60);
          v60 = v61;
        }

        while (!v32);
      }

      ++v23;
    }

    while (v23 < a1[6].u32[2]);
  }
}

uint64_t sub_239DFED64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7, float32x4_t a8, float32x4_t a9)
{
  if (a6 < a7)
  {
    v13 = *(result + 44);
    v14 = v13;
    v15 = v13 - 1;
    LODWORD(v146) = vsubq_f32(a9, a8).u32[0];
    v17 = a6;
    v18 = a7;
    do
    {
      v19 = a2 + 32 * v17;
      v20.i64[0] = *v19;
      v21 = (((COERCE_FLOAT(*v19) - a8.f32[0]) / v146) * v14);
      if (v15 >= v21)
      {
        v22 = (((COERCE_FLOAT(*v19) - a8.f32[0]) / v146) * v14);
      }

      else
      {
        v22 = v15;
      }

      v23.i64[0] = *(v19 + 16);
      LODWORD(v24) = (((v23.f32[0] - a8.f32[0]) / v146) * v14);
      if (v15 >= v24)
      {
        v24 = v24;
      }

      else
      {
        v24 = v15;
      }

      v25 = *(v19 + 28);
      v26 = 4 * *(v19 + 12);
      v27 = v26 | 1;
      v28 = v26 | 2;
      v29 = v26 | 3;
      v30 = *(*(result + 128) + 8 * v25);
      if (v30)
      {
        if (*(*(result + 152) + 4 * v25) == 4)
        {
          v26 = *(v30 + 4 * v26);
          v27 = *(v30 + 4 * v27);
          v28 = *(v30 + 4 * v28);
          v29 = *(v30 + 4 * v29);
        }

        else
        {
          v26 = *(v30 + 2 * v26);
          v27 = *(v30 + 2 * v27);
          v28 = *(v30 + 2 * v28);
          v29 = *(v30 + 2 * v29);
        }
      }

      v20.i32[2] = *(v19 + 8);
      v23.i32[2] = *(v19 + 24);
      v31 = *(*(result + 80) + 8 * v25);
      v32 = *(*(result + 104) + 4 * v25);
      v33 = v31 + v32 * v26;
      v9.i64[0] = *v33;
      v34 = *(v33 + 8);
      v35 = v31 + v32 * v27;
      v10.i64[0] = *v35;
      v36 = *(v35 + 8);
      v37 = v31 + v32 * v28;
      v11.i64[0] = *v37;
      v38 = *(v37 + 8);
      v39 = v31 + v32 * v29;
      v12.i64[0] = *v39;
      v40 = *(v39 + 8);
      ++*(a4 + 4 * v22);
      ++*(a3 + 4 * v24);
      if (v24 > v21)
      {
        v41 = v12;
        v41.i32[2] = v40;
        v42 = v11;
        v42.i32[2] = v38;
        v43 = v10;
        v43.i32[2] = v36;
        v44 = v9;
        v44.i32[2] = v34;
        v45 = v44;
        v45.i32[3] = 0;
        LODWORD(v46) = vsub_f32(*v10.f32, *v9.f32).u32[0];
        v47 = v43;
        v47.i32[3] = 0;
        v48 = v42;
        v48.i32[3] = 0;
        LODWORD(v49) = vsub_f32(*v11.f32, *v10.f32).u32[0];
        LODWORD(v50) = vsub_f32(*v12.f32, *v11.f32).u32[0];
        v51 = v41;
        v51.i32[3] = 0;
        LODWORD(v52) = vsub_f32(*v9.f32, *v12.f32).u32[0];
        do
        {
          v16 = a8.f32[0] + (v146 / v14);
          v53.f32[0] = v16 + ((v146 / v14) * v22);
          v54.i64[0] = 0x7F0000007FLL;
          v54.i64[1] = 0x7F0000007FLL;
          v55 = vnegq_f32(v54);
          v56.i64[0] = 0x7F0000007FLL;
          v56.i64[1] = 0x7F0000007FLL;
          v57 = v55;
          if (v9.f32[0] <= v53.f32[0])
          {
            v57 = vminnmq_f32(v45, xmmword_239E26FC0);
            v56 = vmaxnmq_f32(v45, xmmword_239E26FD0);
          }

          if (v9.f32[0] >= v53.f32[0])
          {
            v55 = vminnmq_f32(v45, xmmword_239E26FC0);
            v54 = vmaxnmq_f32(v45, xmmword_239E26FD0);
          }

          v59 = v10.f32[0] < v53.f32[0] && v9.f32[0] > v53.f32[0];
          v61 = v10.f32[0] > v53.f32[0] && v9.f32[0] < v53.f32[0];
          if (v61 || v59)
          {
            v62 = v57;
            v62.i32[3] = 0;
            v63 = vmlaq_n_f32(vmulq_n_f32(v44, 1.0 - ((v53.f32[0] - v9.f32[0]) / v46)), v43, (v53.f32[0] - v9.f32[0]) / v46);
            v63.i32[3] = 0;
            v64 = vminnmq_f32(v62, v63);
            v65 = v56;
            v65.i32[3] = 0;
            v66 = vmaxnmq_f32(v65, v63);
            v64.i32[3] = v57.i32[3];
            v66.i32[3] = v56.i32[3];
            v67 = v55;
            v67.i32[3] = 0;
            v68 = vminnmq_f32(v67, v63);
            v69 = v54;
            v69.i32[3] = 0;
            v70 = vmaxnmq_f32(v69, v63);
            v68.i32[3] = v55.i32[3];
            v70.i32[3] = v54.i32[3];
            v56 = v66;
            v57 = v64;
            v54 = v70;
            v55 = v68;
          }

          if (v10.f32[0] <= v53.f32[0])
          {
            v71 = v57;
            v71.i32[3] = 0;
            v72 = vminnmq_f32(v71, v47);
            v73 = v56;
            v73.i32[3] = 0;
            v74 = vmaxnmq_f32(v73, v47);
            v72.i32[3] = v57.i32[3];
            v74.i32[3] = v56.i32[3];
            v56 = v74;
            v57 = v72;
          }

          if (v10.f32[0] >= v53.f32[0])
          {
            v75 = v55;
            v75.i32[3] = 0;
            v76 = vminnmq_f32(v75, v47);
            v77 = v54;
            v77.i32[3] = 0;
            v78 = vmaxnmq_f32(v77, v47);
            v76.i32[3] = v55.i32[3];
            v78.i32[3] = v54.i32[3];
            v54 = v78;
            v55 = v76;
          }

          v80 = v11.f32[0] < v53.f32[0] && v10.f32[0] > v53.f32[0];
          v82 = v11.f32[0] > v53.f32[0] && v10.f32[0] < v53.f32[0];
          if (v82 || v80)
          {
            v83 = v57;
            v83.i32[3] = 0;
            v84 = vmlaq_n_f32(vmulq_n_f32(v43, 1.0 - ((v53.f32[0] - v10.f32[0]) / v49)), v42, (v53.f32[0] - v10.f32[0]) / v49);
            v84.i32[3] = 0;
            v85 = vminnmq_f32(v83, v84);
            v86 = v56;
            v86.i32[3] = 0;
            v87 = vmaxnmq_f32(v86, v84);
            v85.i32[3] = v57.i32[3];
            v87.i32[3] = v56.i32[3];
            v88 = v55;
            v88.i32[3] = 0;
            v89 = vminnmq_f32(v88, v84);
            v90 = v54;
            v90.i32[3] = 0;
            v91 = vmaxnmq_f32(v90, v84);
            v89.i32[3] = v55.i32[3];
            v91.i32[3] = v54.i32[3];
            v56 = v87;
            v57 = v85;
            v54 = v91;
            v55 = v89;
          }

          if (v11.f32[0] <= v53.f32[0])
          {
            v92 = v57;
            v92.i32[3] = 0;
            v93 = vminnmq_f32(v92, v48);
            v94 = v56;
            v94.i32[3] = 0;
            v95 = vmaxnmq_f32(v94, v48);
            v93.i32[3] = v57.i32[3];
            v95.i32[3] = v56.i32[3];
            v56 = v95;
            v57 = v93;
          }

          if (v11.f32[0] >= v53.f32[0])
          {
            v96 = v55;
            v96.i32[3] = 0;
            v97 = vminnmq_f32(v96, v48);
            v98 = v54;
            v98.i32[3] = 0;
            v99 = vmaxnmq_f32(v98, v48);
            v97.i32[3] = v55.i32[3];
            v99.i32[3] = v54.i32[3];
            v54 = v99;
            v55 = v97;
          }

          v101 = v12.f32[0] < v53.f32[0] && v11.f32[0] > v53.f32[0];
          v103 = v12.f32[0] > v53.f32[0] && v11.f32[0] < v53.f32[0];
          if (v103 || v101)
          {
            v104 = v57;
            v104.i32[3] = 0;
            v105 = vmlaq_n_f32(vmulq_n_f32(v42, 1.0 - ((v53.f32[0] - v11.f32[0]) / v50)), v41, (v53.f32[0] - v11.f32[0]) / v50);
            v105.i32[3] = 0;
            v106 = vminnmq_f32(v104, v105);
            v107 = v56;
            v107.i32[3] = 0;
            v108 = vmaxnmq_f32(v107, v105);
            v106.i32[3] = v57.i32[3];
            v108.i32[3] = v56.i32[3];
            v109 = v55;
            v109.i32[3] = 0;
            v110 = vminnmq_f32(v109, v105);
            v111 = v54;
            v111.i32[3] = 0;
            v112 = vmaxnmq_f32(v111, v105);
            v110.i32[3] = v55.i32[3];
            v112.i32[3] = v54.i32[3];
            v56 = v108;
            v57 = v106;
            v54 = v112;
            v55 = v110;
          }

          if (v12.f32[0] <= v53.f32[0])
          {
            v113 = v57;
            v113.i32[3] = 0;
            v114 = vminnmq_f32(v113, v51);
            v115 = v56;
            v115.i32[3] = 0;
            v116 = vmaxnmq_f32(v115, v51);
            v114.i32[3] = v57.i32[3];
            v116.i32[3] = v56.i32[3];
            v56 = v116;
            v57 = v114;
          }

          if (v12.f32[0] >= v53.f32[0])
          {
            v117 = v55;
            v117.i32[3] = 0;
            v118 = vminnmq_f32(v117, v51);
            v119 = v54;
            v119.i32[3] = 0;
            v120 = vmaxnmq_f32(v119, v51);
            v118.i32[3] = v55.i32[3];
            v120.i32[3] = v54.i32[3];
            v54 = v120;
            v55 = v118;
          }

          v122 = v9.f32[0] < v53.f32[0] && v12.f32[0] > v53.f32[0];
          v124 = v9.f32[0] > v53.f32[0] && v12.f32[0] < v53.f32[0];
          if (v124 || v122)
          {
            v125 = v57;
            v125.i32[3] = 0;
            v126 = vmlaq_n_f32(vmulq_n_f32(v41, 1.0 - ((v53.f32[0] - v12.f32[0]) / v52)), v44, (v53.f32[0] - v12.f32[0]) / v52);
            v126.i32[3] = 0;
            v127 = vminnmq_f32(v125, v126);
            v128 = v56;
            v128.i32[3] = 0;
            v129 = vmaxnmq_f32(v128, v126);
            v127.i32[3] = v57.i32[3];
            v129.i32[3] = v56.i32[3];
            v130 = v55;
            v130.i32[3] = 0;
            v131 = vminnmq_f32(v130, v126);
            v132 = v54;
            v132.i32[3] = 0;
            v133 = vmaxnmq_f32(v132, v126);
            v131.i32[3] = v55.i32[3];
            v133.i32[3] = v54.i32[3];
            v56 = v129;
            v57 = v127;
            v54 = v133;
            v55 = v131;
          }

          v57.i32[3] = 0;
          v20.i32[3] = 0;
          v134 = vmaxnmq_f32(v57, v20);
          v135.f32[0] = v16 + ((v146 / v14) * v22);
          v53 = v53.u32[0];
          v53.i32[1] = v56.i32[1];
          v53.i32[2] = v56.i32[2];
          v23.i32[3] = 0;
          v135.i32[1] = v55.i32[1];
          v136 = vminnmq_f32(v53, v23);
          v135.i64[1] = v55.u32[2];
          v137 = v54;
          v137.i32[3] = 0;
          v20 = vmaxnmq_f32(v135, v20);
          v23 = vminnmq_f32(v137, v23);
          v138 = (a5 + 32 * v22);
          v139 = *v138;
          v140 = v138[1];
          v139.i32[3] = 0;
          v134.i32[3] = 0;
          v140.i32[3] = 0;
          v136.i32[3] = 0;
          v141 = vminnmq_f32(v139, v134);
          v142 = vmaxnmq_f32(v140, v136);
          v138->i32[2] = v141.i32[2];
          v138->i64[0] = v141.i64[0];
          v138[1].i32[2] = v142.i32[2];
          v138[1].i64[0] = v142.i64[0];
          ++v22;
        }

        while (v24 != v22);
      }

      v143 = (a5 + 32 * v24);
      v9 = *v143;
      v10 = v143[1];
      v9.i32[3] = 0;
      v20.i32[3] = 0;
      v10.i32[3] = 0;
      v23.i32[3] = 0;
      v144 = vminnmq_f32(v9, v20);
      v145 = vmaxnmq_f32(v10, v23);
      v143->i32[2] = v144.i32[2];
      v143->i64[0] = v144.i64[0];
      v143[1].i32[2] = v145.i32[2];
      v143[1].i64[0] = v145.i64[0];
      ++v17;
    }

    while (v17 != v18);
  }

  return result;
}

uint64_t sub_239DFF3A8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7, float32x4_t a8, float32x4_t a9)
{
  if (a6 < a7)
  {
    v13 = *(result + 44);
    v14 = a8.f32[1];
    v15 = vsubq_f32(a9, a8);
    v16 = v13;
    v17 = v13 - 1;
    v18 = v15.f32[1] / v16;
    v142 = v14;
    v19 = v14 + (v15.f32[1] / v16);
    v20 = a6;
    v21 = a7;
    do
    {
      v22 = a2 + 32 * v20;
      v23.i64[0] = *v22;
      v24 = (((COERCE_FLOAT(HIDWORD(*v22)) - v142) / v15.f32[1]) * v16);
      if (v17 >= v24)
      {
        v25 = (((COERCE_FLOAT(HIDWORD(*v22)) - v142) / v15.f32[1]) * v16);
      }

      else
      {
        v25 = v17;
      }

      v26.i64[0] = *(v22 + 16);
      LODWORD(v27) = (((v26.f32[1] - v142) / v15.f32[1]) * v16);
      if (v17 >= v27)
      {
        v27 = v27;
      }

      else
      {
        v27 = v17;
      }

      v28 = *(v22 + 28);
      v29 = 4 * *(v22 + 12);
      v30 = v29 | 1;
      v31 = v29 | 2;
      v32 = v29 | 3;
      v33 = *(*(result + 128) + 8 * v28);
      if (v33)
      {
        if (*(*(result + 152) + 4 * v28) == 4)
        {
          v29 = *(v33 + 4 * v29);
          v30 = *(v33 + 4 * v30);
          v31 = *(v33 + 4 * v31);
          v32 = *(v33 + 4 * v32);
        }

        else
        {
          v29 = *(v33 + 2 * v29);
          v30 = *(v33 + 2 * v30);
          v31 = *(v33 + 2 * v31);
          v32 = *(v33 + 2 * v32);
        }
      }

      v23.i32[2] = *(v22 + 8);
      v26.i32[2] = *(v22 + 24);
      v34 = *(*(result + 80) + 8 * v28);
      v35 = *(*(result + 104) + 4 * v28);
      v36 = v34 + v35 * v29;
      v9.i64[0] = *v36;
      v37 = *(v36 + 8);
      v38 = v34 + v35 * v30;
      v10.i64[0] = *v38;
      v39 = *(v38 + 8);
      v40 = v34 + v35 * v31;
      v11.i64[0] = *v40;
      v41 = *(v40 + 8);
      v42 = v34 + v35 * v32;
      v12.i64[0] = *v42;
      v43 = *(v42 + 8);
      ++*(a4 + 4 * v25);
      ++*(a3 + 4 * v27);
      if (v27 > v24)
      {
        v44 = v12;
        v44.i32[2] = v43;
        v45 = v11;
        v45.i32[2] = v41;
        v9.i32[2] = v37;
        v46 = v9;
        v46.i32[3] = 0;
        v10.i32[2] = v39;
        v47 = v10;
        v47.i32[3] = 0;
        v48 = v45;
        v48.i32[3] = 0;
        v49 = v44;
        v49.i32[3] = 0;
        do
        {
          v50 = v19 + (v18 * v25);
          v51.i64[0] = 0x7F0000007FLL;
          v51.i64[1] = 0x7F0000007FLL;
          v52 = vnegq_f32(v51);
          v53.i64[0] = 0x7F0000007FLL;
          v53.i64[1] = 0x7F0000007FLL;
          v54 = v52;
          if (v9.f32[1] <= v50)
          {
            v54 = vminnmq_f32(v46, xmmword_239E26FC0);
            v53 = vmaxnmq_f32(v46, xmmword_239E26FD0);
          }

          if (v9.f32[1] < v50)
          {
            v55 = v10.f32[1] <= v50;
          }

          else
          {
            v52 = vminnmq_f32(v46, xmmword_239E26FC0);
            v51 = vmaxnmq_f32(v46, xmmword_239E26FD0);
            v55 = 1;
          }

          if (!v55 || (v9.f32[1] > v50 ? (v56 = v10.f32[1] < v50) : (v56 = 0), v56))
          {
            v57 = v54;
            v57.i32[3] = 0;
            v58 = vmlaq_n_f32(vmulq_n_f32(v9, 1.0 - ((v50 - v9.f32[1]) / (v10.f32[1] - v9.f32[1]))), v10, (v50 - v9.f32[1]) / (v10.f32[1] - v9.f32[1]));
            v58.i32[3] = 0;
            v59 = vminnmq_f32(v57, v58);
            v60 = v53;
            v60.i32[3] = 0;
            v61 = vmaxnmq_f32(v60, v58);
            v59.i32[3] = v54.i32[3];
            v61.i32[3] = v53.i32[3];
            v62 = v52;
            v62.i32[3] = 0;
            v63 = vminnmq_f32(v62, v58);
            v64 = v51;
            v64.i32[3] = 0;
            v65 = vmaxnmq_f32(v64, v58);
            v63.i32[3] = v52.i32[3];
            v65.i32[3] = v51.i32[3];
            v53 = v61;
            v54 = v59;
            v51 = v65;
            v52 = v63;
          }

          if (v10.f32[1] <= v50)
          {
            v66 = v54;
            v66.i32[3] = 0;
            v67 = vminnmq_f32(v66, v47);
            v68 = v53;
            v68.i32[3] = 0;
            v69 = vmaxnmq_f32(v68, v47);
            v67.i32[3] = v54.i32[3];
            v69.i32[3] = v53.i32[3];
            v53 = v69;
            v54 = v67;
          }

          if (v10.f32[1] >= v50)
          {
            v70 = v52;
            v70.i32[3] = 0;
            v71 = vminnmq_f32(v70, v47);
            v72 = v51;
            v72.i32[3] = 0;
            v73 = vmaxnmq_f32(v72, v47);
            v71.i32[3] = v52.i32[3];
            v73.i32[3] = v51.i32[3];
            v51 = v73;
            v52 = v71;
          }

          v75 = v11.f32[1] < v50 && v10.f32[1] > v50;
          v77 = v11.f32[1] > v50 && v10.f32[1] < v50;
          if (v77 || v75)
          {
            v78 = v54;
            v78.i32[3] = 0;
            v79 = vmlaq_n_f32(vmulq_n_f32(v10, 1.0 - ((v50 - v10.f32[1]) / (v11.f32[1] - v10.f32[1]))), v45, (v50 - v10.f32[1]) / (v11.f32[1] - v10.f32[1]));
            v79.i32[3] = 0;
            v80 = vminnmq_f32(v78, v79);
            v81 = v53;
            v81.i32[3] = 0;
            v82 = vmaxnmq_f32(v81, v79);
            v80.i32[3] = v54.i32[3];
            v82.i32[3] = v53.i32[3];
            v83 = v52;
            v83.i32[3] = 0;
            v84 = vminnmq_f32(v83, v79);
            v85 = v51;
            v85.i32[3] = 0;
            v86 = vmaxnmq_f32(v85, v79);
            v84.i32[3] = v52.i32[3];
            v86.i32[3] = v51.i32[3];
            v53 = v82;
            v54 = v80;
            v51 = v86;
            v52 = v84;
          }

          if (v11.f32[1] <= v50)
          {
            v87 = v54;
            v87.i32[3] = 0;
            v88 = vminnmq_f32(v87, v48);
            v89 = v53;
            v89.i32[3] = 0;
            v90 = vmaxnmq_f32(v89, v48);
            v88.i32[3] = v54.i32[3];
            v90.i32[3] = v53.i32[3];
            v53 = v90;
            v54 = v88;
          }

          if (v11.f32[1] >= v50)
          {
            v91 = v52;
            v91.i32[3] = 0;
            v92 = vminnmq_f32(v91, v48);
            v93 = v51;
            v93.i32[3] = 0;
            v94 = vmaxnmq_f32(v93, v48);
            v92.i32[3] = v52.i32[3];
            v94.i32[3] = v51.i32[3];
            v51 = v94;
            v52 = v92;
          }

          v96 = v12.f32[1] < v50 && v11.f32[1] > v50;
          v98 = v12.f32[1] > v50 && v11.f32[1] < v50;
          if (v98 || v96)
          {
            v99 = v54;
            v99.i32[3] = 0;
            v100 = vmlaq_n_f32(vmulq_n_f32(v45, 1.0 - ((v50 - v11.f32[1]) / (v12.f32[1] - v11.f32[1]))), v44, (v50 - v11.f32[1]) / (v12.f32[1] - v11.f32[1]));
            v100.i32[3] = 0;
            v101 = vminnmq_f32(v99, v100);
            v102 = v53;
            v102.i32[3] = 0;
            v103 = vmaxnmq_f32(v102, v100);
            v101.i32[3] = v54.i32[3];
            v103.i32[3] = v53.i32[3];
            v104 = v52;
            v104.i32[3] = 0;
            v105 = vminnmq_f32(v104, v100);
            v106 = v51;
            v106.i32[3] = 0;
            v107 = vmaxnmq_f32(v106, v100);
            v105.i32[3] = v52.i32[3];
            v107.i32[3] = v51.i32[3];
            v53 = v103;
            v54 = v101;
            v51 = v107;
            v52 = v105;
          }

          if (v12.f32[1] <= v50)
          {
            v108 = v54;
            v108.i32[3] = 0;
            v109 = vminnmq_f32(v108, v49);
            v110 = v53;
            v110.i32[3] = 0;
            v111 = vmaxnmq_f32(v110, v49);
            v109.i32[3] = v54.i32[3];
            v111.i32[3] = v53.i32[3];
            v53 = v111;
            v54 = v109;
          }

          if (v12.f32[1] >= v50)
          {
            v112 = v52;
            v112.i32[3] = 0;
            v113 = vminnmq_f32(v112, v49);
            v114 = v51;
            v114.i32[3] = 0;
            v115 = vmaxnmq_f32(v114, v49);
            v113.i32[3] = v52.i32[3];
            v115.i32[3] = v51.i32[3];
            v51 = v115;
            v52 = v113;
          }

          v117 = v9.f32[1] < v50 && v12.f32[1] > v50;
          v119 = v9.f32[1] > v50 && v12.f32[1] < v50;
          if (v119 || v117)
          {
            v120 = v54;
            v120.i32[3] = 0;
            v121 = vmlaq_n_f32(vmulq_n_f32(v44, 1.0 - ((v50 - v12.f32[1]) / (v9.f32[1] - v12.f32[1]))), v9, (v50 - v12.f32[1]) / (v9.f32[1] - v12.f32[1]));
            v121.i32[3] = 0;
            v122 = vminnmq_f32(v120, v121);
            v123 = v53;
            v123.i32[3] = 0;
            v124 = vmaxnmq_f32(v123, v121);
            v122.i32[3] = v54.i32[3];
            v124.i32[3] = v53.i32[3];
            v125 = v52;
            v125.i32[3] = 0;
            v126 = vminnmq_f32(v125, v121);
            v127 = v51;
            v127.i32[3] = 0;
            v128 = vmaxnmq_f32(v127, v121);
            v126.i32[3] = v52.i32[3];
            v128.i32[3] = v51.i32[3];
            v53 = v124;
            v54 = v122;
            v51 = v128;
            v52 = v126;
          }

          v54.i32[3] = 0;
          v23.i32[3] = 0;
          v129.i32[0] = v53.i32[0];
          v129.f32[1] = v19 + (v18 * v25);
          v129.i64[1] = v53.u32[2];
          v26.i32[3] = 0;
          v130 = vmaxnmq_f32(v54, v23);
          v131.i32[0] = v52.i32[0];
          v131.f32[1] = v129.f32[1];
          v132 = vminnmq_f32(v129, v26);
          v131.i64[1] = v52.u32[2];
          v133 = v51;
          v133.i32[3] = 0;
          v23 = vmaxnmq_f32(v131, v23);
          v26 = vminnmq_f32(v133, v26);
          v134 = (a5 + 32 * v25);
          v135 = *v134;
          v136 = v134[1];
          v135.i32[3] = 0;
          v130.i32[3] = 0;
          v136.i32[3] = 0;
          v132.i32[3] = 0;
          v137 = vminnmq_f32(v135, v130);
          v138 = vmaxnmq_f32(v136, v132);
          v134->i32[2] = v137.i32[2];
          v134->i64[0] = v137.i64[0];
          v134[1].i32[2] = v138.i32[2];
          v134[1].i64[0] = v138.i64[0];
          ++v25;
        }

        while (v27 != v25);
      }

      v139 = (a5 + 32 * v27);
      v9 = *v139;
      v10 = v139[1];
      v9.i32[3] = 0;
      v23.i32[3] = 0;
      v10.i32[3] = 0;
      v26.i32[3] = 0;
      v140 = vminnmq_f32(v9, v23);
      v141 = vmaxnmq_f32(v10, v26);
      v139->i32[2] = v140.i32[2];
      v139->i64[0] = v140.i64[0];
      v139[1].i32[2] = v141.i32[2];
      v139[1].i64[0] = v141.i64[0];
      ++v20;
    }

    while (v20 != v21);
  }

  return result;
}

uint64_t sub_239DFFA00(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7, float32x4_t a8, float32x4_t a9)
{
  if (a6 < a7)
  {
    v13 = *(result + 44);
    v14 = a8.f32[2];
    v15 = vsubq_f32(a9, a8);
    v16 = v13;
    v17 = v13 - 1;
    v138 = v14;
    v18 = v14 + (v15.f32[2] / v16);
    v19 = a6;
    v20 = a7;
    do
    {
      v21 = a2 + 32 * v19;
      v22 = (((*(v21 + 8) - v138) / v15.f32[2]) * v16);
      if (v17 >= v22)
      {
        v23 = (((*(v21 + 8) - v138) / v15.f32[2]) * v16);
      }

      else
      {
        v23 = v17;
      }

      LODWORD(v24) = (((*(v21 + 24) - v138) / v15.f32[2]) * v16);
      if (v17 >= v24)
      {
        v24 = v24;
      }

      else
      {
        v24 = v17;
      }

      v25 = *(v21 + 28);
      v26 = 4 * *(v21 + 12);
      v27 = v26 | 1;
      v28 = v26 | 2;
      v29 = v26 | 3;
      v30 = *(*(result + 128) + 8 * v25);
      if (v30)
      {
        if (*(*(result + 152) + 4 * v25) == 4)
        {
          v26 = *(v30 + 4 * v26);
          v27 = *(v30 + 4 * v27);
          v28 = *(v30 + 4 * v28);
          v29 = *(v30 + 4 * v29);
        }

        else
        {
          v26 = *(v30 + 2 * v26);
          v27 = *(v30 + 2 * v27);
          v28 = *(v30 + 2 * v28);
          v29 = *(v30 + 2 * v29);
        }
      }

      v31.i64[0] = *v21;
      v31.i32[2] = *(v21 + 8);
      v32.i64[0] = *(v21 + 16);
      v32.i32[2] = *(v21 + 24);
      v33 = *(*(result + 80) + 8 * v25);
      v34 = *(*(result + 104) + 4 * v25);
      v35 = v33 + v34 * v26;
      v9.i64[0] = *v35;
      v36 = *(v35 + 8);
      v37 = v33 + v34 * v27;
      v10.i64[0] = *v37;
      v38 = *(v37 + 8);
      v39 = v33 + v34 * v28;
      v11.i64[0] = *v39;
      v40 = *(v39 + 8);
      v41 = v33 + v34 * v29;
      v12.i64[0] = *v41;
      v42 = *(v41 + 8);
      ++*(a4 + 4 * v23);
      ++*(a3 + 4 * v24);
      if (v24 > v22)
      {
        v12.f32[2] = v42;
        v11.f32[2] = v40;
        v10.f32[2] = v38;
        v9.f32[2] = v36;
        v43 = v9;
        v43.i32[3] = 0;
        v44 = v10;
        v44.i32[3] = 0;
        v45 = v11;
        v45.i32[3] = 0;
        v46 = v12;
        v46.i32[3] = 0;
        do
        {
          v47 = v18 + ((v15.f32[2] / v16) * v23);
          v48.i64[0] = 0x7F0000007FLL;
          v48.i64[1] = 0x7F0000007FLL;
          v49 = vnegq_f32(v48);
          v50.i64[0] = 0x7F0000007FLL;
          v50.i64[1] = 0x7F0000007FLL;
          v51 = v49;
          if (v36 <= v47)
          {
            v51 = vminnmq_f32(v43, xmmword_239E26FC0);
            v50 = vmaxnmq_f32(v43, xmmword_239E26FD0);
          }

          if (v36 < v47)
          {
            v52 = v38 <= v47;
          }

          else
          {
            v49 = vminnmq_f32(v43, xmmword_239E26FC0);
            v48 = vmaxnmq_f32(v43, xmmword_239E26FD0);
            v52 = 1;
          }

          if (!v52 || (v36 > v47 ? (v53 = v38 < v47) : (v53 = 0), v53))
          {
            v54 = v51;
            v54.i32[3] = 0;
            v55 = vmlaq_n_f32(vmulq_n_f32(v9, 1.0 - ((v47 - v36) / (v38 - v36))), v10, (v47 - v36) / (v38 - v36));
            v55.i32[3] = 0;
            v56 = vminnmq_f32(v54, v55);
            v57 = v50;
            v57.i32[3] = 0;
            v58 = vmaxnmq_f32(v57, v55);
            v56.i32[3] = v51.i32[3];
            v58.i32[3] = v50.i32[3];
            v59 = v49;
            v59.i32[3] = 0;
            v60 = vminnmq_f32(v59, v55);
            v61 = v48;
            v61.i32[3] = 0;
            v62 = vmaxnmq_f32(v61, v55);
            v60.i32[3] = v49.i32[3];
            v62.i32[3] = v48.i32[3];
            v50 = v58;
            v51 = v56;
            v48 = v62;
            v49 = v60;
          }

          if (v38 <= v47)
          {
            v63 = v51;
            v63.i32[3] = 0;
            v64 = vminnmq_f32(v63, v44);
            v65 = v50;
            v65.i32[3] = 0;
            v66 = vmaxnmq_f32(v65, v44);
            v64.i32[3] = v51.i32[3];
            v66.i32[3] = v50.i32[3];
            v50 = v66;
            v51 = v64;
          }

          if (v38 >= v47)
          {
            v67 = v49;
            v67.i32[3] = 0;
            v68 = vminnmq_f32(v67, v44);
            v69 = v48;
            v69.i32[3] = 0;
            v70 = vmaxnmq_f32(v69, v44);
            v68.i32[3] = v49.i32[3];
            v70.i32[3] = v48.i32[3];
            v48 = v70;
            v49 = v68;
          }

          v72 = v40 < v47 && v38 > v47;
          v74 = v40 > v47 && v38 < v47;
          if (v74 || v72)
          {
            v75 = v51;
            v75.i32[3] = 0;
            v76 = vmlaq_n_f32(vmulq_n_f32(v10, 1.0 - ((v47 - v38) / (v40 - v38))), v11, (v47 - v38) / (v40 - v38));
            v76.i32[3] = 0;
            v77 = vminnmq_f32(v75, v76);
            v78 = v50;
            v78.i32[3] = 0;
            v79 = vmaxnmq_f32(v78, v76);
            v77.i32[3] = v51.i32[3];
            v79.i32[3] = v50.i32[3];
            v80 = v49;
            v80.i32[3] = 0;
            v81 = vminnmq_f32(v80, v76);
            v82 = v48;
            v82.i32[3] = 0;
            v83 = vmaxnmq_f32(v82, v76);
            v81.i32[3] = v49.i32[3];
            v83.i32[3] = v48.i32[3];
            v50 = v79;
            v51 = v77;
            v48 = v83;
            v49 = v81;
          }

          if (v40 <= v47)
          {
            v84 = v51;
            v84.i32[3] = 0;
            v85 = vminnmq_f32(v84, v45);
            v86 = v50;
            v86.i32[3] = 0;
            v87 = vmaxnmq_f32(v86, v45);
            v85.i32[3] = v51.i32[3];
            v87.i32[3] = v50.i32[3];
            v50 = v87;
            v51 = v85;
          }

          if (v40 >= v47)
          {
            v88 = v49;
            v88.i32[3] = 0;
            v89 = vminnmq_f32(v88, v45);
            v90 = v48;
            v90.i32[3] = 0;
            v91 = vmaxnmq_f32(v90, v45);
            v89.i32[3] = v49.i32[3];
            v91.i32[3] = v48.i32[3];
            v48 = v91;
            v49 = v89;
          }

          v93 = v42 < v47 && v40 > v47;
          v95 = v42 > v47 && v40 < v47;
          if (v95 || v93)
          {
            v96 = v51;
            v96.i32[3] = 0;
            v97 = vmlaq_n_f32(vmulq_n_f32(v11, 1.0 - ((v47 - v40) / (v42 - v40))), v12, (v47 - v40) / (v42 - v40));
            v97.i32[3] = 0;
            v98 = vminnmq_f32(v96, v97);
            v99 = v50;
            v99.i32[3] = 0;
            v100 = vmaxnmq_f32(v99, v97);
            v98.i32[3] = v51.i32[3];
            v100.i32[3] = v50.i32[3];
            v101 = v49;
            v101.i32[3] = 0;
            v102 = vminnmq_f32(v101, v97);
            v103 = v48;
            v103.i32[3] = 0;
            v104 = vmaxnmq_f32(v103, v97);
            v102.i32[3] = v49.i32[3];
            v104.i32[3] = v48.i32[3];
            v50 = v100;
            v51 = v98;
            v48 = v104;
            v49 = v102;
          }

          if (v42 <= v47)
          {
            v105 = v51;
            v105.i32[3] = 0;
            v106 = vminnmq_f32(v105, v46);
            v107 = v50;
            v107.i32[3] = 0;
            v108 = vmaxnmq_f32(v107, v46);
            v106.i32[3] = v51.i32[3];
            v108.i32[3] = v50.i32[3];
            v50 = v108;
            v51 = v106;
          }

          if (v42 >= v47)
          {
            v109 = v49;
            v109.i32[3] = 0;
            v110 = vminnmq_f32(v109, v46);
            v111 = v48;
            v111.i32[3] = 0;
            v112 = vmaxnmq_f32(v111, v46);
            v110.i32[3] = v49.i32[3];
            v112.i32[3] = v48.i32[3];
            v48 = v112;
            v49 = v110;
          }

          v114 = v36 < v47 && v42 > v47;
          v116 = v36 > v47 && v42 < v47;
          if (v116 || v114)
          {
            v117 = v51;
            v117.i32[3] = 0;
            v118 = vmlaq_n_f32(vmulq_n_f32(v12, 1.0 - ((v47 - v42) / (v36 - v42))), v9, (v47 - v42) / (v36 - v42));
            v118.i32[3] = 0;
            v119 = vminnmq_f32(v117, v118);
            v120 = v50;
            v120.i32[3] = 0;
            v120.i64[0] = vmaxnmq_f32(v120, v118).u64[0];
            v119.i32[3] = v51.i32[3];
            v121 = v49;
            v121.i32[3] = 0;
            v122 = vminnmq_f32(v121, v118).u64[0];
            v50 = v48;
            v50.i32[3] = 0;
            v123 = vmaxnmq_f32(v50, v118);
            v123.i32[3] = v48.i32[3];
            v50.i64[0] = v120.i64[0];
            v51 = v119;
            v48 = v123;
            v49.i64[0] = v122;
          }

          v51.i32[3] = 0;
          v31.i32[3] = 0;
          v124.i64[0] = v50.i64[0];
          v124.i64[1] = LODWORD(v47);
          v32.i32[3] = 0;
          v125 = vmaxnmq_f32(v51, v31);
          v126.i64[0] = v49.i64[0];
          v127 = vminnmq_f32(v124, v32);
          v126.i64[1] = LODWORD(v47);
          v128 = v48;
          v128.i32[3] = 0;
          v31 = vmaxnmq_f32(v126, v31);
          v32 = vminnmq_f32(v128, v32);
          v129 = (a5 + 32 * v23);
          v130 = *v129;
          v131 = v129[1];
          v130.i32[3] = 0;
          v125.i32[3] = 0;
          v131.i32[3] = 0;
          v127.i32[3] = 0;
          v132 = vminnmq_f32(v130, v125);
          v133 = vmaxnmq_f32(v131, v127);
          v129->i32[2] = v132.i32[2];
          v129->i64[0] = v132.i64[0];
          v129[1].i32[2] = v133.i32[2];
          v129[1].i64[0] = v133.i64[0];
          ++v23;
        }

        while (v24 != v23);
      }

      v134 = (a5 + 32 * v24);
      v9 = *v134;
      v135 = v134[1];
      v9.i32[3] = 0;
      v31.i32[3] = 0;
      v135.i32[3] = 0;
      v32.i32[3] = 0;
      v136 = vminnmq_f32(v9, v31);
      v137 = vmaxnmq_f32(v135, v32);
      v134->i32[2] = v136.i32[2];
      v134->i64[0] = v136.i64[0];
      v134[1].i32[2] = v137.i32[2];
      v134[1].i64[0] = v137.i64[0];
      ++v19;
    }

    while (v19 != v20);
  }

  return result;
}

void sub_239E00038(float32x4_t *a1, int a2)
{
  v57[1] = *MEMORY[0x277D85DE8];
  v4 = a1[4].i64[0];
  v5 = a1[6].u32[2];
  MEMORY[0x28223BE20]();
  v6 = v57 - ((4 * v5 + 15) & 0x7FFFFFFF0);
  bzero(v6, 4 * v5);
  MEMORY[0x28223BE20]();
  bzero(v6, 4 * v5);
  MEMORY[0x28223BE20]();
  v7 = &v57[-4 * v5];
  bzero(v7, v8);
  if (v5)
  {
    bzero(v6, 4 * v5);
    bzero(v6, 4 * v5);
    v9 = v7 + 1;
    v10.i64[0] = 0x7F0000007FLL;
    v10.i64[1] = 0x7F0000007FLL;
    v11 = vnegq_f32(v10);
    do
    {
      v9[-1] = v11;
      *v9 = v10;
      v9 += 2;
      --v5;
    }

    while (v5);
  }

  v12 = *(v4 + 24);
  v13 = v12 * a2;
  v14 = v12 * a2 + v12;
  v15 = a1[7].i32[0];
  if (v14 >= a1[6].i32[3])
  {
    v16 = a1[6].u32[3];
  }

  else
  {
    v16 = v14;
  }

  if (v15)
  {
    if (v15 == 1)
    {
      sub_239DFF3A8(v4, a1[4].i64[1], v6, v6, v7, v13, v16, a1[2], a1[3]);
    }

    else if (v15 == 2)
    {
      sub_239DFFA00(v4, a1[4].i64[1], v6, v6, v7, v13, v16, a1[2], a1[3]);
    }
  }

  else
  {
    sub_239DFED64(v4, a1[4].i64[1], v6, v6, v7, v13, v16, a1[2], a1[3]);
  }

  if (a1[6].i32[2])
  {
    v17 = 0;
    do
    {
      atomic_fetch_add((a1[5].i64[0] + 4 * v17), *&v6[4 * v17]);
      atomic_fetch_add((a1[5].i64[1] + 4 * v17), *&v6[4 * v17]);
      v18 = (a1[6].i64[0] + 32 * v17);
      f32 = v7[2 * v17].f32;
      v20 = *f32;
      v21 = COERCE_FLOAT(atomic_load(v18));
      v22 = v21;
      if (v20 <= v21)
      {
        v22 = *f32;
      }

      v23 = v21;
      atomic_compare_exchange_strong_explicit(v18, &v23, LODWORD(v22), memory_order_release, memory_order_relaxed);
      if (LODWORD(v23) != LODWORD(v21))
      {
        v24 = v23;
        do
        {
          *&v25 = v23;
          if (v20 <= v23)
          {
            *&v25 = v20;
          }

          atomic_compare_exchange_strong_explicit(v18, &v24, v25, memory_order_release, memory_order_relaxed);
          v26 = LODWORD(v24) == LODWORD(v23);
          v23 = v24;
        }

        while (!v26);
      }

      v27 = f32[1];
      v28 = COERCE_FLOAT(atomic_load(v18 + 1));
      v29 = LODWORD(v28);
      if (v27 <= v28)
      {
        v29 = *(f32 + 1);
      }

      v30 = v28;
      atomic_compare_exchange_strong_explicit(v18 + 1, &v30, v29, memory_order_release, memory_order_relaxed);
      if (LODWORD(v30) != LODWORD(v28))
      {
        v31 = v30;
        do
        {
          *&v32 = v30;
          if (v27 <= v30)
          {
            *&v32 = v27;
          }

          atomic_compare_exchange_strong_explicit(v18 + 1, &v31, v32, memory_order_release, memory_order_relaxed);
          v26 = LODWORD(v31) == LODWORD(v30);
          v30 = v31;
        }

        while (!v26);
      }

      v33 = f32[2];
      v34 = COERCE_FLOAT(atomic_load(v18 + 2));
      v35 = LODWORD(v34);
      if (v33 <= v34)
      {
        v35 = *(f32 + 2);
      }

      v36 = v34;
      atomic_compare_exchange_strong_explicit(v18 + 2, &v36, v35, memory_order_release, memory_order_relaxed);
      if (LODWORD(v36) != LODWORD(v34))
      {
        v37 = v36;
        do
        {
          *&v38 = v36;
          if (v33 <= v36)
          {
            *&v38 = v33;
          }

          atomic_compare_exchange_strong_explicit(v18 + 2, &v37, v38, memory_order_release, memory_order_relaxed);
          v26 = LODWORD(v37) == LODWORD(v36);
          v36 = v37;
        }

        while (!v26);
      }

      v39 = f32[4];
      v40 = COERCE_FLOAT(atomic_load(v18 + 4));
      v41 = LODWORD(v40);
      if (v39 > v40)
      {
        v41 = *(f32 + 4);
      }

      v42 = v40;
      atomic_compare_exchange_strong_explicit(v18 + 4, &v42, v41, memory_order_release, memory_order_relaxed);
      if (LODWORD(v42) != LODWORD(v40))
      {
        v43 = v42;
        do
        {
          *&v44 = v42;
          if (v39 > v42)
          {
            *&v44 = v39;
          }

          atomic_compare_exchange_strong_explicit(v18 + 4, &v43, v44, memory_order_release, memory_order_relaxed);
          v26 = LODWORD(v43) == LODWORD(v42);
          v42 = v43;
        }

        while (!v26);
      }

      v45 = f32[5];
      v46 = COERCE_FLOAT(atomic_load(v18 + 5));
      v47 = LODWORD(v46);
      if (v45 > v46)
      {
        v47 = *(f32 + 5);
      }

      v48 = v46;
      atomic_compare_exchange_strong_explicit(v18 + 5, &v48, v47, memory_order_release, memory_order_relaxed);
      if (LODWORD(v48) != LODWORD(v46))
      {
        v49 = v48;
        do
        {
          *&v50 = v48;
          if (v45 > v48)
          {
            *&v50 = v45;
          }

          atomic_compare_exchange_strong_explicit(v18 + 5, &v49, v50, memory_order_release, memory_order_relaxed);
          v26 = LODWORD(v49) == LODWORD(v48);
          v48 = v49;
        }

        while (!v26);
      }

      v51 = f32[6];
      v52 = COERCE_FLOAT(atomic_load(v18 + 6));
      v53 = LODWORD(v52);
      if (v51 > v52)
      {
        v53 = *(f32 + 6);
      }

      v54 = v52;
      atomic_compare_exchange_strong_explicit(v18 + 6, &v54, v53, memory_order_release, memory_order_relaxed);
      if (LODWORD(v54) != LODWORD(v52))
      {
        v55 = v54;
        do
        {
          *&v56 = v54;
          if (v51 > v54)
          {
            *&v56 = v51;
          }

          atomic_compare_exchange_strong_explicit(v18 + 6, &v55, v56, memory_order_release, memory_order_relaxed);
          v26 = LODWORD(v55) == LODWORD(v54);
          v54 = v55;
        }

        while (!v26);
      }

      ++v17;
    }

    while (v17 < a1[6].u32[2]);
  }
}

float *sub_239E0043C(float *a1, float *a2, _DWORD *a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v3 = a2;
  while (2)
  {
    v5 = a3[1];
    v4 = a3[2];
    v6 = v5;
    v7 = &a3[v5 & 3];
    v8 = v7[28];
    v9 = v7[32];
    LODWORD(v7) = a3[36];
    v10 = v9 - v8;
    v11 = v7;
    v12 = v7 - 1;
    while (1)
    {
      v13 = (((a1[v6] - v8) / v10) * v11);
      if (v12 < v13)
      {
        v13 = v12;
      }

      if (v13 >= v4)
      {
        break;
      }

      a1 += 8;
      if (a1 == v3)
      {
        return v3;
      }
    }

    v14 = 4 * v6 - 32;
    v15 = v3;
    do
    {
      v3 = v15 - 8;
      if (v15 - 8 == a1)
      {
        return a1;
      }

      v16 = (((*(v15 + v14) - v8) / v10) * v11);
      if (v12 >= v16)
      {
        v17 = v16;
      }

      else
      {
        v17 = v12;
      }

      v15 = v3;
    }

    while (v17 >= v4);
    v20 = *(a1 + 1);
    v19 = *a1;
    *(a1 + 1) = *(v3 + 1);
    *a1 = *v3;
    a1 += 8;
    *(v3 + 1) = v20;
    *v3 = v19;
    if (v3 != a1)
    {
      continue;
    }

    break;
  }

  return v3;
}

__int128 *sub_239E00554(__int128 *a1, __int128 *a2, _DWORD *a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v3 = a2;
  while (2)
  {
    v5 = a3[1];
    v4 = a3[2];
    v6 = v5;
    v7 = &a3[v5 & 3];
    v8 = v7[28];
    v9 = v7[32];
    LODWORD(v7) = a3[36];
    v10 = v9 - v8;
    v11 = v7;
    v12 = v7 - 1;
    v13 = 4 * v6;
    v14 = 4 * v6 + 16;
    while (1)
    {
      v15 = (((*(a1 + v14) - v8) / v10) * v11);
      if (v12 < v15)
      {
        v15 = v12;
      }

      if (v15 >= v4)
      {
        break;
      }

      a1 += 2;
      if (a1 == v3)
      {
        return v3;
      }
    }

    v16 = v13 - 16;
    v17 = v3;
    do
    {
      v3 = v17 - 2;
      if (v17 - 2 == a1)
      {
        return a1;
      }

      v18 = (((*(v17 + v16) - v8) / v10) * v11);
      if (v12 >= v18)
      {
        v19 = v18;
      }

      else
      {
        v19 = v12;
      }

      v17 = v3;
    }

    while (v19 >= v4);
    v22 = a1[1];
    v21 = *a1;
    a1[1] = v3[1];
    *a1 = *v3;
    a1 += 2;
    v3[1] = v22;
    *v3 = v21;
    if (v3 != a1)
    {
      continue;
    }

    break;
  }

  return v3;
}

BOOL sub_239E00670(const char *a1)
{
  v3 = 0;
  v2 = 4;
  if (sysctlbyname(a1, &v3, &v2, 0, 0) < 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return v3 != 0;
}

void *sub_239E006FC(const void *a1, const char *a2, void *a3, uint64_t a4)
{
  v6 = (objc_msgSend_contents(a3, a2, a3) + a4);

  return memcpy(v6, a1, a2);
}

void *sub_239E00750(void *a1, const char *a2, void *a3, size_t a4)
{
  v6 = &a2[objc_msgSend_contents(a1, a2, a3)];

  return memcpy(a3, v6, a4);
}

id sub_239E007A0(void *a1, void *a2, void *a3, uint64_t a4)
{
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (a2 == a3)
  {
    v81 = qword_27DF88880++;
    sub_239E00B50(a2, 724238768, v81);
    v84 = objc_msgSend_blitCommandEncoder(a2, v82, v83);
    if (objc_msgSend_count(a1, v85, v86))
    {
      v89 = 0;
      do
      {
        v90 = objc_msgSend_objectAtIndexedSubscript_(a1, v87, v89);
        v93 = objc_msgSend_device(a2, v91, v92);
        v96 = objc_msgSend_length(v90, v94, v95);
        v98 = objc_msgSend_newBufferWithLength_options_(v93, v97, v96, a4);
        v101 = objc_msgSend_length(v90, v99, v100);
        objc_msgSend_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size_(v84, v102, v90, 0, v98, 0, v101);
        objc_msgSend_addObject_(v10, v103, v98);

        ++v89;
      }

      while (v89 < objc_msgSend_count(a1, v104, v105));
    }

    objc_msgSend_endEncoding(v84, v87, v88);
    sub_239E00B50(a2, 724238772, v81);
  }

  else
  {
    v108 = objc_msgSend_blitCommandEncoder(a2, v8, v9);
    v109 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v16 = a2;
    v107 = a4;
    if (objc_msgSend_count(a1, v12, v13))
    {
      v17 = 0;
      do
      {
        v18 = v10;
        v19 = objc_msgSend_objectAtIndexedSubscript_(a1, v14, v17);
        v22 = objc_msgSend_device(v16, v20, v21);
        v25 = objc_msgSend_length(v19, v23, v24);
        v27 = objc_msgSend_newBufferWithLength_options_(v22, v26, v25, 0);
        v30 = objc_msgSend_device(a3, v28, v29);
        v33 = objc_msgSend_length(v27, v31, v32);
        v35 = objc_msgSend_newBufferWithLength_options_(v30, v34, v33, 0);
        v38 = objc_msgSend_device(a3, v36, v37);
        v41 = objc_msgSend_length(v27, v39, v40);
        v43 = objc_msgSend_newBufferWithLength_options_(v38, v42, v41, v107);
        v46 = objc_msgSend_length(v27, v44, v45);
        v47 = v19;
        v10 = v18;
        objc_msgSend_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size_(v108, v48, v47, 0, v27, 0, v46);
        objc_msgSend_addObject_(v109, v49, v27);

        objc_msgSend_addObject_(v11, v50, v35);
        objc_msgSend_addObject_(v18, v51, v43);

        ++v17;
      }

      while (v17 < objc_msgSend_count(a1, v52, v53));
    }

    objc_msgSend_endEncoding(v108, v14, v15);
    v54 = objc_alloc_init(MEMORY[0x277CD6FD8]);
    v57 = objc_msgSend_device(v16, v55, v56);
    v60 = objc_msgSend_newSharedEvent(v57, v58, v59);
    objc_msgSend_encodeSignalEvent_value_(v16, v61, v60, 1);
    v110[0] = MEMORY[0x277D85DD0];
    v110[1] = 3221225472;
    v110[2] = sub_239E00C58;
    v110[3] = &unk_278B3C3E8;
    v110[4] = v109;
    v110[5] = v11;
    v110[6] = v60;
    v110[7] = v54;
    objc_msgSend_notifyListener_atValue_block_(v60, v62, v54, 1, v110);
    objc_msgSend_encodeWaitForEvent_value_(a3, v63, v60, 2);
    v66 = objc_msgSend_blitCommandEncoder(a3, v64, v65);
    if (objc_msgSend_count(v109, v67, v68))
    {
      v71 = 0;
      do
      {
        v72 = objc_msgSend_objectAtIndexedSubscript_(v11, v69, v71);
        v74 = objc_msgSend_objectAtIndexedSubscript_(v10, v73, v71);
        v77 = objc_msgSend_length(v72, v75, v76);
        objc_msgSend_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size_(v66, v78, v72, 0, v74, 0, v77);
        ++v71;
      }

      while (v71 < objc_msgSend_count(v109, v79, v80));
    }

    objc_msgSend_endEncoding(v66, v69, v70);
  }

  return v10;
}

void sub_239E00B50(void *a1, int a2, uint64_t a3)
{
  v6 = getenv("MPSRAYINTERSECTOR_LOG_COMMAND_BUFFER_EVENTS");
  if (v6)
  {
    if (*v6 == 49)
    {
      v7 = objc_alloc_init(MEMORY[0x277CD6FD8]);
      v10 = objc_msgSend_device(a1, v8, v9);
      v13 = objc_msgSend_newSharedEvent(v10, v11, v12);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = sub_239E04240;
      v17[3] = &unk_278B3C840;
      v18 = a2;
      v17[5] = a3;
      memset(&v17[6], 0, 24);
      v17[4] = v13;
      objc_msgSend_notifyListener_atValue_block_(v13, v14, v7, 1, v17);
      objc_msgSend_encodeSignalEvent_value_(a1, v15, v13, 1);
      objc_msgSend_encodeWaitForEvent_value_(a1, v16, v13, 2);
    }
  }
}

void sub_239E00C58(id *a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_count(a1[4], a2, a3))
  {
    v5 = 0;
    do
    {
      v6 = objc_msgSend_objectAtIndexedSubscript_(a1[4], v4, v5);
      v8 = objc_msgSend_objectAtIndexedSubscript_(a1[5], v7, v5);
      v11 = objc_msgSend_contents(v8, v9, v10);
      v14 = objc_msgSend_contents(v6, v12, v13);
      v17 = objc_msgSend_length(v6, v15, v16);
      memcpy(v11, v14, v17);
      ++v5;
    }

    while (v5 < objc_msgSend_count(a1[4], v18, v19));
  }

  objc_msgSend_setSignaledValue_(a1[6], v4, 2);

  v20 = a1[5];
}

void sub_239E00D2C(void *a1)
{
  v2 = dispatch_semaphore_create(0);
  kdebug_trace();
  v5 = objc_msgSend_commandBuffer(a1, v3, v4);
  v8 = objc_msgSend_device(a1, v6, v7);
  v11 = objc_msgSend_newSharedEvent(v8, v9, v10);
  v12 = objc_alloc_init(MEMORY[0x277CD6FD8]);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_239E00E40;
  v17[3] = &unk_278B3C410;
  v17[4] = v2;
  objc_msgSend_notifyListener_atValue_block_(v11, v13, v12, 1, v17);
  objc_msgSend_encodeSignalEvent_value_(v5, v14, v11, 1);
  objc_msgSend_commit(v5, v15, v16);
  dispatch_semaphore_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v2);
}

intptr_t sub_239E00E40(uint64_t a1)
{
  kdebug_trace();
  v2 = *(a1 + 32);

  return dispatch_semaphore_signal(v2);
}

void sub_239E00E90(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  *(a1 + 8) = 1;
  *a1 = &unk_284D08780;
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  operator new();
}

uint64_t sub_239E01044(uint64_t a1)
{
  *a1 = &unk_284D08780;

  v2 = *(a1 + 32);
  add = atomic_fetch_add(v2 + 2, 0xFFFFFFFF);
  if (v2)
  {
    v4 = add == 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    (*(*v2 + 8))(v2);
  }

  v5 = *(a1 + 40);
  v6 = atomic_fetch_add(v5 + 2, 0xFFFFFFFF);
  if (v5 && v6 == 1)
  {
    (*(*v5 + 8))(v5);
  }

  v7 = *(a1 + 48);
  v8 = atomic_fetch_add(v7 + 2, 0xFFFFFFFF);
  if (v7 && v8 == 1)
  {
    (*(*v7 + 8))(v7);
  }

  v9 = *(a1 + 56);
  v10 = atomic_fetch_add(v9 + 2, 0xFFFFFFFF);
  if (v9 && v10 == 1)
  {
    (*(*v9 + 8))(v9);
  }

  v11 = *(a1 + 64);
  v12 = atomic_fetch_add(v11 + 2, 0xFFFFFFFF);
  if (v11 && v12 == 1)
  {
    (*(*v11 + 8))(v11);
  }

  v13 = *(a1 + 72);
  v14 = atomic_fetch_add(v13 + 2, 0xFFFFFFFF);
  if (v13 && v14 == 1)
  {
    (*(*v13 + 8))(v13);
  }

  v15 = *(a1 + 80);
  v16 = atomic_fetch_add(v15 + 2, 0xFFFFFFFF);
  if (v15 && v16 == 1)
  {
    (*(*v15 + 8))(v15);
  }

  return a1;
}

void sub_239E0125C(uint64_t a1)
{
  sub_239E01044(a1);

  JUMPOUT(0x23EE7D780);
}

uint64_t sub_239E01294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10, uint64_t a11, uint64_t a12, int a13, void *a14)
{
  *(a1 + 8) = 1;
  *a1 = &unk_284D084E0;
  atomic_fetch_add((a2 + 8), 1u);
  *(a1 + 16) = a2;
  *(a1 + 24) = sub_239E18C14(a3);
  *(a1 + 32) = sub_239E18C14(a4);
  *(a1 + 40) = sub_239E18C14(a5);
  *(a1 + 48) = sub_239E18C14(a6);
  *(a1 + 56) = sub_239E18C14(a7);
  *(a1 + 64) = a8;
  *(a1 + 72) = a11;
  *(a1 + 80) = a12;
  *(a1 + 88) = a13;
  *(a1 + 104) = a14;
  MPSDevice = MPSDevice::GetMPSDevice();
  *(a1 + 112) = MPSDevice::GetMPSLibrary_DoNotUse(MPSDevice, &stru_278B3C430);
  v21 = *(a2 + 16);
  v22 = (*(*MPSDevice + 24))(MPSDevice);
  v24 = objc_msgSend_newBufferWithLength_options_(v21, v23, 32, 16 * v22);
  *(a1 + 96) = v24;
  v27 = objc_msgSend_contents(v24, v25, v26);
  *v27 = a9;
  v27[1] = a10;
  return a1;
}

uint64_t sub_239E0140C(uint64_t a1, uint64_t a2, void *a3)
{
  v91[6] = *MEMORY[0x277D85DE8];
  *(a1 + 8) = 1;
  *a1 = &unk_284D084E0;
  atomic_fetch_add((a2 + 8), 1u);
  *(a1 + 16) = a2;
  if (*(*(a2 + 32) + 40))
  {
    sub_239E24A2C(a1, a2);
  }

  MPSDevice = MPSDevice::GetMPSDevice();
  *(a1 + 112) = MPSDevice::GetMPSLibrary_DoNotUse(MPSDevice, &stru_278B3C430);
  *(a1 + 80) = objc_msgSend_decodeInt64ForKey_(a3, v6, @"MPSBVHKeyRootNodeType");
  *(a1 + 72) = objc_msgSend_decodeInt64ForKey_(a3, v7, @"MPSBVHKeyLeafNodeCount");
  *(a1 + 64) = objc_msgSend_decodeInt64ForKey_(a3, v8, @"MPSBVHKeyInnerNodeCount");
  if (objc_msgSend_containsValueForKey_(a3, v9, @"MPSBVHKeyBranchingFactor"))
  {
    v11 = objc_msgSend_decodeInt64ForKey_(a3, v10, @"MPSBVHKeyBranchingFactor");
  }

  else
  {
    v11 = 2;
  }

  *(a1 + 84) = v11;
  v12 = objc_msgSend_containsValueForKey_(a3, v10, @"MPSBVHKeyNodeLayout");
  if (v12)
  {
    v12 = objc_msgSend_decodeInt64ForKey_(a3, v13, @"MPSBVHKeyNodeLayout");
  }

  *(a1 + 88) = v12;
  v89 = 0;
  v90 = 0;
  v87 = 0;
  v88 = 0;
  v86 = 0;
  v84 = a3;
  v14 = objc_msgSend_decodeBytesForKey_returnedLength_(a3, v13, @"MPSBVHKeyInnerNodes", &v90);
  __src = objc_msgSend_decodeBytesForKey_returnedLength_(a3, v15, @"MPSBVHKeyLeafNodes", &v89);
  v80 = objc_msgSend_decodeBytesForKey_returnedLength_(a3, v16, @"MPSBVHKeyPageTable0", &v88);
  v78 = objc_msgSend_decodeBytesForKey_returnedLength_(a3, v17, @"MPSBVHKeyPageTable1", &v87);
  v77 = objc_msgSend_decodeBytesForKey_returnedLength_(a3, v18, @"MPSBVHKeyPages", &v86);
  v21 = objc_msgSend_commandBuffer(*(*(a1 + 16) + 24), v19, v20);
  *(a1 + 24) = sub_239E19178(*(*(a1 + 16) + 40), v90, v21);
  *(a1 + 32) = sub_239E19178(*(*(a1 + 16) + 48), v89, v21);
  *(a1 + 40) = sub_239E19178(*(*(a1 + 16) + 56), v88, v21);
  *(a1 + 48) = sub_239E19178(*(*(a1 + 16) + 64), v87, v21);
  *(a1 + 56) = sub_239E19178(*(*(a1 + 16) + 72), v86, v21);
  objc_msgSend_commit(v21, v22, v23);
  kdebug_trace();
  objc_msgSend_waitUntilCompleted(v21, v24, v25);
  kdebug_trace();
  v26 = *(*(a1 + 24) + 40);
  v28 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 16) + 40) + 24), v27, 0);
  v29 = *(*(a1 + 24) + 32);
  v32 = objc_msgSend_contents(v28, v30, v31);
  memcpy((v32 + v29), v14, v26);
  v33 = *(*(a1 + 32) + 40);
  v35 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 16) + 48) + 24), v34, 0);
  v36 = *(*(a1 + 32) + 32);
  v39 = objc_msgSend_contents(v35, v37, v38);
  memcpy((v39 + v36), __src, v33);
  v40 = *(*(a1 + 40) + 40);
  v42 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 16) + 56) + 24), v41, 0);
  v43 = *(*(a1 + 40) + 32);
  v46 = objc_msgSend_contents(v42, v44, v45);
  memcpy((v46 + v43), v80, v40);
  v47 = *(*(a1 + 48) + 40);
  v49 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 16) + 64) + 24), v48, 0);
  v50 = *(*(a1 + 48) + 32);
  v53 = objc_msgSend_contents(v49, v51, v52);
  memcpy((v53 + v50), v78, v47);
  v54 = *(*(a1 + 56) + 40);
  v56 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 16) + 72) + 24), v55, 0);
  v57 = *(*(a1 + 56) + 32);
  v60 = objc_msgSend_contents(v56, v58, v59);
  memcpy((v60 + v57), v77, v54);
  v61 = *(a2 + 16);
  v62 = (*(*MPSDevice + 24))(MPSDevice);
  *(a1 + 96) = objc_msgSend_newBufferWithLength_options_(v61, v63, 32, 16 * v62);
  v85 = 0;
  v65 = objc_msgSend_decodeBytesForKey_returnedLength_(v84, v64, @"MPSBVHKeyBoundingBox", &v85);
  v68 = v65;
  if (v85 != 32)
  {
    sub_239E24A7C(v65, v66);
  }

  *v81 = v68[1];
  *__srca = *v68;
  v69 = objc_msgSend_contents(*(a1 + 96), v66, v67);
  *v69 = *__srca;
  v69[1] = *v81;
  v70 = MEMORY[0x277CBEB98];
  v91[0] = objc_opt_class();
  v91[1] = objc_opt_class();
  v91[2] = objc_opt_class();
  v91[3] = objc_opt_class();
  v91[4] = objc_opt_class();
  v91[5] = objc_opt_class();
  v72 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v71, v91, 6);
  v74 = objc_msgSend_setWithArray_(v70, v73, v72);
  *(a1 + 104) = objc_msgSend_decodeObjectOfClasses_forKey_(v84, v75, v74, @"MPSBVHKeyStatistics");
  return a1;
}

uint64_t sub_239E01940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = *MEMORY[0x277D85DE8];
  *(a1 + 8) = 1;
  *a1 = &unk_284D084E0;
  atomic_fetch_add((a2 + 8), 1u);
  *(a1 + 16) = a2;
  *(a1 + 64) = *(a3 + 64);
  *(a1 + 80) = *(a3 + 80);
  *(a1 + 88) = *(a3 + 88);
  kdebug_trace();
  MPSDevice = MPSDevice::GetMPSDevice();
  *(a1 + 112) = MPSDevice::GetMPSLibrary_DoNotUse(MPSDevice, &stru_278B3C430);
  v7 = *(a3 + 40);
  v55 = *(a3 + 24);
  v56 = v7;
  v57 = *(a3 + 56);
  v53 = 0;
  v54 = 0;
  v52 = 0;
  sub_239E04698(&v52, &v55, &v58, 5uLL);
  v8 = *(a3 + 16);
  v9 = *(v8 + 56);
  v55 = *(v8 + 40);
  v56 = v9;
  v57 = *(v8 + 72);
  v50 = 0;
  v51 = 0;
  v49 = 0;
  sub_239E0470C(&v49, &v55, &v58, 5uLL);
  v10 = *(a2 + 56);
  v55 = *(a2 + 40);
  v56 = v10;
  v57 = *(a2 + 72);
  v47 = 0;
  v48 = 0;
  v46 = 0;
  sub_239E0470C(&v46, &v55, &v58, 5uLL);
  v15 = objc_msgSend_commandBuffer(*(a2 + 24), v11, v12);
  v16 = *(a3 + 16);
  v17 = v15;
  if (*(a2 + 16) != *(v16 + 16))
  {
    v17 = objc_msgSend_commandBuffer(*(v16 + 24), v13, v14);
  }

  v44 = 0;
  v45 = 0;
  v43 = 0;
  sub_239E04564(&v43, v52, v53, (v53 - v52) >> 3);
  v40 = 0;
  v41 = 0;
  v42 = 0;
  sub_239E0461C(&v40, v49, v50, (v50 - v49) >> 3);
  __p = 0;
  v38 = 0;
  v39 = 0;
  sub_239E0461C(&__p, v46, v47, (v47 - v46) >> 3);
  sub_239E01D68(&v43, &v40, &__p, v17, v15, &v55);
  if (__p)
  {
    v38 = __p;
    operator delete(__p);
  }

  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  objc_msgSend_commit(v15, v18, v19);
  if (v17 != v15)
  {
    objc_msgSend_commit(v17, v20, v21);
  }

  v22 = v55;
  *(a1 + 24) = *v55;
  *(a1 + 32) = v22[1];
  *(a1 + 40) = v22[2];
  *(a1 + 48) = v22[3];
  *(a1 + 56) = v22[4];
  v23 = *(a2 + 16);
  v24 = (*(*MPSDevice + 24))(MPSDevice);
  *(a1 + 96) = objc_msgSend_newBufferWithLength_options_(v23, v25, 32, 16 * v24);
  v28 = objc_msgSend_contents(*(a3 + 96), v26, v27);
  v35 = v28[1];
  v36 = *v28;
  v31 = objc_msgSend_contents(*(a1 + 96), v29, v30);
  *v31 = v36;
  v31[1] = v35;
  *(a1 + 104) = objc_msgSend_copy(*(a3 + 104), v32, v33);
  kdebug_trace();
  if (v55)
  {
    *(&v55 + 1) = v55;
    operator delete(v55);
  }

  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }

  if (v52)
  {
    v53 = v52;
    operator delete(v52);
  }

  return a1;
}

void sub_239E01CB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, void *a25, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a25)
  {
    operator delete(a25);
  }

  v28 = *(v26 - 136);
  if (v28)
  {
    *(v26 - 128) = v28;
    operator delete(v28);
  }

  _Unwind_Resume(exception_object);
}

void sub_239E01D68(const void **a1@<X0>, const void **a2@<X1>, uint64_t *a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a5;
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  v9 = *a1;
  v10 = a1[1];
  if (v10 == *a1)
  {
    v27 = a4;
    v26 = (v10 - *a1) >> 3;
  }

  else
  {
    v11 = 0;
    do
    {
      v12 = sub_239E19178(*(*a3 + 8 * v11), *(v9[v11] + 40), v6);
      v13 = a6;
      v15 = *(a6 + 8);
      v14 = *(a6 + 16);
      if (v15 >= v14)
      {
        v17 = (v15 - *a6) >> 3;
        if ((v17 + 1) >> 61)
        {
          sub_239DEDF38();
        }

        v18 = v14 - *a6;
        v19 = v18 >> 2;
        if (v18 >> 2 <= (v17 + 1))
        {
          v19 = v17 + 1;
        }

        if (v18 >= 0x7FFFFFFFFFFFFFF8)
        {
          v20 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v19;
        }

        if (v20)
        {
          sub_239DF5EE4(a6, v20);
        }

        *(8 * v17) = v12;
        v16 = 8 * v17 + 8;
        v21 = *(a6 + 8) - *a6;
        v22 = (8 * v17 - v21);
        memcpy(v22, *a6, v21);
        v13 = a6;
        v23 = *a6;
        *a6 = v22;
        *(a6 + 8) = v16;
        *(a6 + 16) = 0;
        if (v23)
        {
          operator delete(v23);
          v13 = a6;
        }
      }

      else
      {
        *v15 = v12;
        v16 = (v15 + 1);
      }

      v6 = a5;
      *(v13 + 8) = v16;
      v24 = v13;
      sub_239E18C14(*(*a1 + v11));
      sub_239E18C14(*(*v24 + 8 * v11++));
      v9 = *a1;
      v10 = a1[1];
      v25 = v10 - *a1;
    }

    while (v11 < v25 >> 3);
    v26 = v25 >> 3;
    v27 = a4;
  }

  v113[0] = MEMORY[0x277D85DD0];
  v113[1] = 3321888768;
  v113[2] = sub_239E04288;
  v113[3] = &unk_284D08460;
  v115 = 0;
  v116 = 0;
  v114 = 0;
  sub_239E04564(&v114, v9, v10, v26);
  objc_msgSend_addCompletedHandler_(v27, v28, v113);
  v109[0] = MEMORY[0x277D85DD0];
  v109[1] = 3321888768;
  v109[2] = sub_239E0430C;
  v109[3] = &unk_284D08460;
  v111 = 0;
  v112 = 0;
  v110 = 0;
  sub_239E04564(&v110, *a6, *(a6 + 8), (*(a6 + 8) - *a6) >> 3);
  objc_msgSend_addCompletedHandler_(v6, v29, v109);
  if (v27 == v6)
  {
    v80 = qword_27DF88880++;
    sub_239E00B50(v27, 724238768, v80);
    v85 = objc_msgSend_blitCommandEncoder(v27, v81, v82);
    v87 = *a1;
    v86 = a1[1];
    if (v86 != *a1)
    {
      v88 = 0;
      v89 = *a3;
      do
      {
        if (*(*(v89 + 8 * v88) + 32))
        {
          v90 = 0;
          do
          {
            v91 = objc_msgSend_objectAtIndexedSubscript_(*(*(*a2 + v88) + 24), v83, v90);
            v92 = *(*(*a1 + v88) + 32);
            v94 = objc_msgSend_objectAtIndexedSubscript_(*(*(*a3 + 8 * v88) + 24), v93, v90);
            objc_msgSend_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size_(v85, v95, v91, v92, v94, *(*(*a6 + 8 * v88) + 32), *(*(*a1 + v88) + 40));
            ++v90;
            v89 = *a3;
          }

          while (v90 < *(*(*a3 + 8 * v88) + 32));
          v87 = *a1;
          v86 = a1[1];
        }

        ++v88;
      }

      while (v88 < (v86 - v87) >> 3);
    }

    objc_msgSend_endEncoding(v85, v83, v84);
    sub_239E00B50(a4, 724238772, v80);
  }

  else
  {
    v32 = objc_msgSend_blitCommandEncoder(v27, v30, v31);
    v33 = 0x277CBE000uLL;
    v97 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v96 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (a1[1] != *a1)
    {
      v36 = 0;
      do
      {
        v37 = objc_alloc_init(*(v33 + 2840));
        v39 = objc_alloc_init(*(v33 + 2840));
        v40 = *(*a2 + v36);
        if (*(v40 + 32))
        {
          v41 = 0;
          do
          {
            v42 = objc_msgSend_objectAtIndexedSubscript_(*(v40 + 24), v38, v41);
            v45 = objc_msgSend_device(a4, v43, v44);
            v47 = objc_msgSend_newBufferWithLength_options_(v45, v46, *(*(*a1 + v36) + 40), 0);
            v50 = objc_msgSend_device(a5, v48, v49);
            v52 = objc_msgSend_newBufferWithLength_options_(v50, v51, *(*(*a1 + v36) + 40), 0);
            objc_msgSend_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size_(v32, v53, v42, *(*(*a1 + v36) + 32), v47, 0, *(*(*a1 + v36) + 40));
            objc_msgSend_addObject_(v37, v54, v47);

            objc_msgSend_addObject_(v39, v55, v52);
            ++v41;
            v40 = *(*a2 + v36);
          }

          while (v41 < *(v40 + 32));
        }

        objc_msgSend_addObject_(v97, v38, v37);

        objc_msgSend_addObject_(v96, v56, v39);
        ++v36;
        v6 = a5;
        v33 = 0x277CBE000;
      }

      while (v36 < (a1[1] - *a1) >> 3);
    }

    objc_msgSend_endEncoding(v32, v34, v35);
    v57 = objc_alloc_init(MEMORY[0x277CD6FD8]);
    v60 = objc_msgSend_device(a4, v58, v59);
    v63 = objc_msgSend_newSharedEvent(v60, v61, v62);
    objc_msgSend_encodeSignalEvent_value_(a4, v64, v63, 1);
    v102[0] = MEMORY[0x277D85DD0];
    v102[1] = 3321888768;
    v102[2] = sub_239E0435C;
    v102[3] = &unk_284D08498;
    v104 = 0;
    v105 = 0;
    v103 = 0;
    sub_239E04564(&v103, *a1, a1[1], (a1[1] - *a1) >> 3);
    v102[4] = v97;
    v102[5] = v96;
    v107 = 0;
    v108 = 0;
    __p = 0;
    sub_239E0461C(&__p, *a2, a2[1], (a2[1] - *a2) >> 3);
    v102[6] = v63;
    v102[7] = v57;
    objc_msgSend_notifyListener_atValue_block_(v63, v65, v57, 1, v102);
    objc_msgSend_encodeWaitForEvent_value_(v6, v66, v63, 2);
    v71 = objc_msgSend_blitCommandEncoder(v6, v67, v68);
    if (a1[1] != *a1)
    {
      v72 = 0;
      do
      {
        v73 = objc_msgSend_objectAtIndexedSubscript_(v96, v69, v72);
        if (*(*(*a3 + 8 * v72) + 32))
        {
          v74 = v73;
          v75 = 0;
          do
          {
            v76 = objc_msgSend_objectAtIndexedSubscript_(v74, v69, v75);
            v78 = objc_msgSend_objectAtIndexedSubscript_(*(*(*a3 + 8 * v72) + 24), v77, v75);
            objc_msgSend_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size_(v71, v79, v76, 0, v78, *(*(*a6 + 8 * v72) + 32), *(*(*a6 + 8 * v72) + 40));
            ++v75;
          }

          while (v75 < *(*(*a3 + 8 * v72) + 32));
        }

        ++v72;
      }

      while (v72 < (a1[1] - *a1) >> 3);
    }

    objc_msgSend_endEncoding(v71, v69, v70);
    if (__p)
    {
      v107 = __p;
      operator delete(__p);
    }

    if (v103)
    {
      v104 = v103;
      operator delete(v103);
    }
  }

  if (v110)
  {
    v111 = v110;
    operator delete(v110);
  }

  if (v114)
  {
    v115 = v114;
    operator delete(v114);
  }
}

void sub_239E02408(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  v37 = *(v35 - 128);
  if (v37)
  {
    *(v35 - 120) = v37;
    operator delete(v37);
  }

  v38 = *a15;
  if (*a15)
  {
    *(a15 + 8) = v38;
    operator delete(v38);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239E024E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_msgSend_commandBuffer(*(*(a1 + 16) + 24), a2, a3);
  v10 = objc_msgSend_blitCommandEncoder(v5, v6, v7);
  if (*(a2 + 32))
  {
    v11 = 0;
    do
    {
      v12 = objc_msgSend_objectAtIndexedSubscript_(*(a2 + 24), v8, v11);
      objc_msgSend_fillBuffer_range_value_(v10, v13, v12, *(a3 + 32), *(a3 + 40), 0);
      ++v11;
    }

    while (v11 < *(a2 + 32));
  }

  objc_msgSend_endEncoding(v10, v8, v9);
  objc_msgSend_commit(v5, v14, v15);
  kdebug_trace();
  objc_msgSend_waitUntilCompleted(v5, v16, v17);

  return kdebug_trace();
}

uint64_t sub_239E025C8(uint64_t a1)
{
  *a1 = &unk_284D084E0;
  sub_239E18C24(*(a1 + 24));
  sub_239E18C24(*(a1 + 32));
  sub_239E18C24(*(a1 + 40));
  sub_239E18C24(*(a1 + 48));
  sub_239E18C24(*(a1 + 56));
  v2 = *(a1 + 16);
  add = atomic_fetch_add(v2 + 2, 0xFFFFFFFF);
  if (v2 && add == 1)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_239E02688(uint64_t a1)
{
  sub_239E025C8(a1);

  JUMPOUT(0x23EE7D780);
}

uint64_t sub_239E026C0(uint64_t a1, void *a2)
{
  if (*(*(*(a1 + 16) + 32) + 40))
  {
    sub_239E24AB8(a1, a2);
  }

  objc_msgSend_encodeInt64_forKey_(a2, a2, *(a1 + 80), @"MPSBVHKeyRootNodeType");
  objc_msgSend_encodeInt64_forKey_(a2, v4, *(a1 + 72), @"MPSBVHKeyLeafNodeCount");
  objc_msgSend_encodeInt64_forKey_(a2, v5, *(a1 + 64), @"MPSBVHKeyInnerNodeCount");
  objc_msgSend_encodeInt64_forKey_(a2, v6, *(a1 + 84), @"MPSBVHKeyBranchingFactor");
  objc_msgSend_encodeInt64_forKey_(a2, v7, *(a1 + 88), @"MPSBVHKeyNodeLayout");
  v9 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 16) + 40) + 24), v8, 0);
  v12 = objc_msgSend_contents(v9, v10, v11);
  v50 = *(*(a1 + 24) + 32);
  v51 = v12;
  v14 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 16) + 48) + 24), v13, 0);
  v17 = objc_msgSend_contents(v14, v15, v16);
  v18 = *(*(a1 + 32) + 32);
  v20 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 16) + 56) + 24), v19, 0);
  v23 = objc_msgSend_contents(v20, v21, v22);
  v24 = *(*(a1 + 40) + 32);
  v26 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 16) + 64) + 24), v25, 0);
  v29 = objc_msgSend_contents(v26, v27, v28);
  v30 = *(*(a1 + 48) + 32);
  v32 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 16) + 72) + 24), v31, 0);
  v35 = objc_msgSend_contents(v32, v33, v34);
  v36 = *(*(a1 + 56) + 32);
  objc_msgSend_encodeBytes_length_forKey_(a2, v37, v51 + v50, *(*(a1 + 24) + 40), @"MPSBVHKeyInnerNodes");
  objc_msgSend_encodeBytes_length_forKey_(a2, v38, v17 + v18, *(*(a1 + 32) + 40), @"MPSBVHKeyLeafNodes");
  objc_msgSend_encodeBytes_length_forKey_(a2, v39, v23 + v24, *(*(a1 + 40) + 40), @"MPSBVHKeyPageTable0");
  objc_msgSend_encodeBytes_length_forKey_(a2, v40, v29 + v30, *(*(a1 + 48) + 40), @"MPSBVHKeyPageTable1");
  objc_msgSend_encodeBytes_length_forKey_(a2, v41, v35 + v36, *(*(a1 + 56) + 40), @"MPSBVHKeyPages");
  v44 = objc_msgSend_contents(*(a1 + 96), v42, v43);
  v45 = *v44;
  v46 = *(v44 + 16);
  v53 = *(v44 + 8);
  v55 = DWORD2(v46);
  v52 = v45;
  v54 = v46;
  objc_msgSend_encodeBytes_length_forKey_(a2, v47, &v52, 32, @"MPSBVHKeyBoundingBox");
  return objc_msgSend_encodeObject_forKey_(a2, v48, *(a1 + 104), @"MPSBVHKeyStatistics");
}

void *sub_239E0291C(void *result, const char *a2, int a3, void *a4)
{
  v25 = a3;
  v26 = a2;
  if (a3 | a2)
  {
    v5 = result;
    v6 = objc_msgSend_objectAtIndexedSubscript_(*(*(result[2] + 40) + 24), a2, 0);
    v7 = *(v5[3] + 32);
    v24 = *(v5 + 16) + 1;
    v8 = *(v5 + 21);
    if (v8 == 4)
    {
      if (*(v5 + 22) <= 1u)
      {
        goto LABEL_10;
      }

      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v8 == 2)
      {
        if (*(v5 + 22) <= 1u)
        {
LABEL_10:
          ComputeState = MPSLibrary::GetComputeState();
          objc_msgSend_setComputePipelineState_(a4, v11, ComputeState);
LABEL_16:
          objc_msgSend_setBuffer_offset_atIndex_(a4, v12, v6, v7, 0);
          objc_msgSend_setBytes_length_atIndex_(a4, v13, &v24, 4, 1);
          objc_msgSend_setBytes_length_atIndex_(a4, v14, &v26, 4, 2);
          objc_msgSend_setBytes_length_atIndex_(a4, v15, &v25, 4, 3);
          v18 = objc_msgSend_threadExecutionWidth(ComputeState, v16, v17);
          v22 = (v18 + v24 - 1) / v18;
          v23 = vdupq_n_s64(1uLL);
          v20 = v18;
          v21 = v23;
          return objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a4, v19, &v22, &v20);
        }

        if (MTLReportFailureTypeEnabled())
        {
          goto LABEL_14;
        }

LABEL_15:
        ComputeState = 0;
        objc_msgSend_setComputePipelineState_(a4, v9, 0);
        goto LABEL_16;
      }

      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_15;
      }
    }

LABEL_14:
    MTLReportFailure();
    goto LABEL_15;
  }

  return result;
}

void *sub_239E02B3C(void *result, const char *a2, int a3, void *a4)
{
  v25 = a2;
  v24 = a3;
  if (a3 | a2)
  {
    v5 = result;
    v6 = objc_msgSend_objectAtIndexedSubscript_(*(*(result[2] + 72) + 24), a2, 0);
    v7 = v5[7];
    v8 = *(v7 + 32);
    v23 = *(v7 + 40) >> 2;
    ComputeState = MPSLibrary::GetComputeState();
    objc_msgSend_setComputePipelineState_(a4, v10, ComputeState);
    objc_msgSend_setBuffer_offset_atIndex_(a4, v11, v6, v8, 0);
    objc_msgSend_setBytes_length_atIndex_(a4, v12, &v23, 4, 1);
    objc_msgSend_setBytes_length_atIndex_(a4, v13, &v25, 4, 2);
    objc_msgSend_setBytes_length_atIndex_(a4, v14, &v24, 4, 3);
    v17 = objc_msgSend_threadExecutionWidth(ComputeState, v15, v16);
    v21 = (v17 + v23 - 1) / v17;
    v22 = vdupq_n_s64(1uLL);
    v19 = v17;
    v20 = v22;
    return objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a4, v18, &v21, &v19);
  }

  return result;
}

void *sub_239E02C78(void *result, const char *a2, void *a3)
{
  v22 = a2;
  if (a2)
  {
    v4 = result;
    v5 = objc_msgSend_objectAtIndexedSubscript_(*(*(result[2] + 56) + 24), a2, 0);
    v6 = v4[5];
    v7 = *(v6 + 32);
    v21 = *(v6 + 40) >> 2;
    ComputeState = MPSLibrary::GetComputeState();
    objc_msgSend_setComputePipelineState_(a3, v9, ComputeState);
    objc_msgSend_setBuffer_offset_atIndex_(a3, v10, v5, v7, 0);
    objc_msgSend_setBytes_length_atIndex_(a3, v11, &v21, 4, 1);
    objc_msgSend_setBytes_length_atIndex_(a3, v12, &v22, 4, 2);
    v15 = objc_msgSend_threadExecutionWidth(ComputeState, v13, v14);
    v19 = (v15 + v21 - 1) / v15;
    v20 = vdupq_n_s64(1uLL);
    v17 = v15;
    v18 = v20;
    return objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a3, v16, &v19, &v17);
  }

  return result;
}

void *sub_239E02D98(void *result, const char *a2, void *a3)
{
  v22 = a2;
  if (a2)
  {
    v4 = result;
    v5 = objc_msgSend_objectAtIndexedSubscript_(*(*(result[2] + 64) + 24), a2, 0);
    v6 = v4[6];
    v7 = *(v6 + 32);
    v21 = *(v6 + 40) >> 2;
    ComputeState = MPSLibrary::GetComputeState();
    objc_msgSend_setComputePipelineState_(a3, v9, ComputeState);
    objc_msgSend_setBuffer_offset_atIndex_(a3, v10, v5, v7, 0);
    objc_msgSend_setBytes_length_atIndex_(a3, v11, &v21, 4, 1);
    objc_msgSend_setBytes_length_atIndex_(a3, v12, &v22, 4, 2);
    v15 = objc_msgSend_threadExecutionWidth(ComputeState, v13, v14);
    v19 = (v15 + v21 - 1) / v15;
    v20 = vdupq_n_s64(1uLL);
    v17 = v15;
    v18 = v20;
    return objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a3, v16, &v19, &v17);
  }

  return result;
}

uint64_t sub_239E02EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, void *a16)
{
  *sub_239E01294(a1, a2, a3, a4, a5, a6, a7, a11, a9, a10, a12, a13, a14, a16) = &unk_284D08728;
  *(a1 + 120) = sub_239E18C14(a8);
  *(a1 + 128) = a15;
  return a1;
}

uint64_t sub_239E02F78(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v8 = sub_239E0140C(a1, a2, a3);
  *v8 = &unk_284D08728;
  *(v8 + 128) = a4;
  size = 0;
  v10 = objc_msgSend_decodeBytesForKey_returnedLength_(a3, v9, @"MPSTriangleBVHKeyTriangleIndices", &size);
  v39 = 0;
  v12 = objc_msgSend_containsValueForKey_(a3, v11, @"MPSPrimitiveBVHKeyResourceIndices");
  v14 = v12;
  if (v12)
  {
    v17 = objc_msgSend_decodeBytesForKey_returnedLength_(a3, v13, @"MPSPrimitiveBVHKeyResourceIndices", &v39);
    if (v39 != size && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  else
  {
    v17 = malloc_type_malloc(size, 0x100004077774924uLL);
    bzero(v17, size);
  }

  v18 = objc_msgSend_commandBuffer(*(a2 + 24), v15, v16);
  v19 = sub_239E19178(*(*(a1 + 16) + 32), size, v18);
  *(a1 + 120) = v19;
  v20 = *(v19 + 40);
  v22 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 16) + 32) + 24), v21, 0);
  v23 = *(*(a1 + 120) + 32);
  v26 = objc_msgSend_contents(v22, v24, v25);
  memcpy((v26 + v23), v10, v20);
  v27 = *(*(a1 + 120) + 40);
  v29 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 16) + 32) + 24), v28, 1);
  v30 = *(*(a1 + 120) + 32);
  v33 = objc_msgSend_contents(v29, v31, v32);
  memcpy((v33 + v30), v17, v27);
  if ((v14 & 1) == 0)
  {
    free(v17);
  }

  sub_239E031D0(a1, *(*(a1 + 56) + 32), *(*(a1 + 40) + 32), *(*(a1 + 24) + 32), *(*(a1 + 32) + 32), *(*(a1 + 120) + 32), *(a1 + 128), v18);
  objc_msgSend_commit(v18, v34, v35);
  kdebug_trace();
  objc_msgSend_waitUntilCompleted(v18, v36, v37);
  kdebug_trace();
  return a1;
}

uint64_t sub_239E031D0(uint64_t a1, int a2, int a3, int a4, int a5, int a6, const char *a7, void *a8)
{
  kdebug_trace();
  sub_239E00B50(a8, 724238408, 0);
  v18 = objc_msgSend_computeCommandEncoder(a8, v16, v17);
  a5 >>= 4;
  v20 = a4 / sub_239DE30C0(a1, v19);
  sub_239E0291C(a1, v20, a5, v18);
  sub_239E03890(a1, v20, a6 >> 2, v18);
  sub_239E02B3C(a1, v20, a5, v18);
  sub_239E02C78(a1, (a2 >> 2), v18);
  sub_239E02D98(a1, (a3 >> 2), v18);
  sub_239E039C8(a1, a7, v18);
  objc_msgSend_endEncoding(v18, v21, v22);
  *(a1 + 128) += a7;
  sub_239E00B50(a8, 724238412, 0);

  return kdebug_trace();
}

uint64_t sub_239E03344(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v55[2] = *MEMORY[0x277D85DE8];
  v8 = sub_239E01940(a1, a2, a3);
  *v8 = &unk_284D08728;
  *(v8 + 128) = a4;
  v37 = a1;
  kdebug_trace();
  v54 = *(a3 + 120);
  v48 = 0;
  v49 = 0;
  v47 = 0;
  sub_239E04698(&v47, &v54, v55, 1uLL);
  v52 = *(*(a3 + 16) + 32);
  v55[0] = 0;
  v55[1] = 0;
  v54 = 0;
  sub_239E0470C(&v54, &v52, v53, 1uLL);
  v50 = *(a2 + 32);
  v53[0] = 0;
  v53[1] = 0;
  v52 = 0;
  sub_239E0470C(&v52, &v50, &v51, 1uLL);
  v13 = objc_msgSend_commandBuffer(*(a2 + 24), v9, v10);
  v14 = *(a3 + 16);
  v15 = v13;
  if (*(a2 + 16) != *(v14 + 16))
  {
    v15 = objc_msgSend_commandBuffer(*(v14 + 24), v11, v12);
  }

  v45 = 0;
  v46 = 0;
  v44 = 0;
  sub_239E04564(&v44, v47, v48, (v48 - v47) >> 3);
  v41 = 0;
  v42 = 0;
  v43 = 0;
  sub_239E0461C(&v41, v54, v55[0], (v55[0] - v54) >> 3);
  __p = 0;
  v39 = 0;
  v40 = 0;
  sub_239E0461C(&__p, v52, v53[0], (v53[0] - v52) >> 3);
  sub_239E01D68(&v44, &v41, &__p, v15, v13, &v50);
  if (__p)
  {
    v39 = __p;
    operator delete(__p);
  }

  if (v41)
  {
    v42 = v41;
    operator delete(v41);
  }

  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  objc_msgSend_commit(v15, v16, v17);
  if (v15 != v13)
  {
    objc_msgSend_commit(v13, v18, v19);
  }

  v20 = *v50;
  *(a1 + 120) = *v50;
  v36 = *(*(a3 + 24) + 32);
  v35 = *(*(a1 + 24) + 32);
  v34 = *(*(a3 + 32) + 32);
  v21 = *(*(a1 + 32) + 32);
  v22 = *(*(a3 + 56) + 32);
  v23 = *(*(a1 + 56) + 32);
  v24 = *(*(a3 + 40) + 32);
  v25 = *(*(a1 + 40) + 32);
  v26 = *(*(a3 + 120) + 32);
  v27 = *(v20 + 32);
  v28 = *(a3 + 128);
  v29 = *(a1 + 128);
  v30 = objc_msgSend_commandBuffer(*(a2 + 24), v18, v19);
  sub_239E031D0(v37, v23 - v22, v25 - v24, v35 - v36, v21 - v34, v27 - v26, (v29 - v28), v30);
  objc_msgSend_commit(v30, v31, v32);
  kdebug_trace();
  if (v50)
  {
    v51 = v50;
    operator delete(v50);
  }

  if (v52)
  {
    v53[0] = v52;
    operator delete(v52);
  }

  if (v54)
  {
    v55[0] = v54;
    operator delete(v54);
  }

  if (v47)
  {
    v48 = v47;
    operator delete(v47);
  }

  return v37;
}

void sub_239E03670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v29 = *(v27 - 144);
  if (v29)
  {
    *(v27 - 136) = v29;
    operator delete(v29);
  }

  v30 = *(v27 - 120);
  if (v30)
  {
    *(v27 - 112) = v30;
    operator delete(v30);
  }

  if (__p)
  {
    operator delete(__p);
  }

  sub_239E025C8(a13);
  _Unwind_Resume(a1);
}

uint64_t sub_239E0373C(void *a1)
{
  *a1 = &unk_284D08728;
  sub_239E18C24(a1[15]);

  return sub_239E025C8(a1);
}

void sub_239E0379C(void *a1)
{
  sub_239E0373C(a1);

  JUMPOUT(0x23EE7D780);
}

uint64_t sub_239E037D4(uint64_t a1, void *a2)
{
  sub_239E026C0(a1, a2);
  v5 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 16) + 32) + 24), v4, 0);
  v8 = objc_msgSend_contents(v5, v6, v7);
  v9 = *(*(a1 + 120) + 32);
  v11 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 16) + 32) + 24), v10, 1);
  v14 = objc_msgSend_contents(v11, v12, v13);
  v15 = *(a1 + 120);
  v16 = *(v15 + 32);
  objc_msgSend_encodeBytes_length_forKey_(a2, v17, v8 + v9, *(v15 + 40), @"MPSTriangleBVHKeyTriangleIndices");
  v19 = *(*(a1 + 120) + 40);

  return objc_msgSend_encodeBytes_length_forKey_(a2, v18, v14 + v16, v19, @"MPSPrimitiveBVHKeyResourceIndices");
}

void *sub_239E03890(void *result, const char *a2, int a3, void *a4)
{
  v24 = a2;
  v23 = a3;
  if (a3 | a2)
  {
    v5 = result;
    v6 = objc_msgSend_objectAtIndexedSubscript_(*(*(result[2] + 48) + 24), a2, 0);
    v7 = *(v5[4] + 32);
    v22 = v5[9];
    ComputeState = MPSLibrary::GetComputeState();
    objc_msgSend_setComputePipelineState_(a4, v9, ComputeState);
    objc_msgSend_setBuffer_offset_atIndex_(a4, v10, v6, v7, 0);
    objc_msgSend_setBytes_length_atIndex_(a4, v11, &v22, 4, 1);
    objc_msgSend_setBytes_length_atIndex_(a4, v12, &v24, 4, 2);
    objc_msgSend_setBytes_length_atIndex_(a4, v13, &v23, 4, 3);
    v16 = objc_msgSend_threadExecutionWidth(ComputeState, v14, v15);
    v20 = (v16 + v22 - 1) / v16;
    v21 = vdupq_n_s64(1uLL);
    v18 = v16;
    v19 = v21;
    return objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a4, v17, &v20, &v18);
  }

  return result;
}

void *sub_239E039C8(void *result, const char *a2, void *a3)
{
  v22 = a2;
  if (a2)
  {
    v4 = result;
    v5 = objc_msgSend_objectAtIndexedSubscript_(*(*(result[2] + 32) + 24), a2, 1);
    v6 = v4[15];
    v7 = *(v6 + 32);
    v21 = *(v6 + 40) >> 2;
    ComputeState = MPSLibrary::GetComputeState();
    objc_msgSend_setComputePipelineState_(a3, v9, ComputeState);
    objc_msgSend_setBuffer_offset_atIndex_(a3, v10, v5, v7, 0);
    objc_msgSend_setBytes_length_atIndex_(a3, v11, &v21, 4, 1);
    objc_msgSend_setBytes_length_atIndex_(a3, v12, &v22, 4, 2);
    v15 = objc_msgSend_threadExecutionWidth(ComputeState, v13, v14);
    v19 = (v15 + v21 - 1) / v15;
    v20 = vdupq_n_s64(1uLL);
    v17 = v15;
    v18 = v20;
    return objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a3, v16, &v19, &v17);
  }

  return result;
}

uint64_t sub_239E03AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10, uint64_t a11, uint64_t a12, int a13, void *a14, void *a15)
{
  *sub_239E01294(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a15) = &unk_284D08748;
  *(a1 + 120) = a14;
  return a1;
}

void *sub_239E03B88(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_239E0140C(a1, a2, a3);
  *v6 = &unk_284D08748;
  v7 = *(v6[3] + 32);
  v8 = *(v6[4] + 32);
  v9 = *(v6[7] + 32);
  v10 = *(v6[5] + 32);
  v13 = objc_msgSend_commandBuffer(*(a2 + 24), v11, v12);
  sub_239E03CE8(a1, v9, v10, v7, v8, v13);
  objc_msgSend_commit(v13, v14, v15);
  kdebug_trace();
  objc_msgSend_waitUntilCompleted(v13, v16, v17);
  kdebug_trace();
  v27 = 0;
  v20 = objc_msgSend_decodeBytesForKey_returnedLength_(a3, v18, @"MPSInstanceBVHKeyInverseTransforms", &v27);
  if (v20)
  {
    v21 = objc_msgSend_newBufferWithLength_options_(*(a2 + 16), v19, v27, 0);
    a1[15] = v21;
    v22 = v27;
    v25 = objc_msgSend_contents(v21, v23, v24);
    memcpy(v25, v20, v22);
  }

  else
  {
    a1[15] = 0;
  }

  return a1;
}

uint64_t sub_239E03CE8(void *a1, int a2, int a3, int a4, int a5, void *a6)
{
  kdebug_trace();
  sub_239E00B50(a6, 724238408, 0);
  v14 = objc_msgSend_computeCommandEncoder(a6, v12, v13);
  a5 >>= 3;
  v16 = a4 / sub_239DE30C0(a1, v15);
  sub_239E0291C(a1, v16, a5, v14);
  sub_239E04124(a1, v16, v14);
  sub_239E02B3C(a1, v16, a5, v14);
  sub_239E02C78(a1, (a2 >> 2), v14);
  sub_239E02D98(a1, (a3 >> 2), v14);
  objc_msgSend_endEncoding(v14, v17, v18);
  sub_239E00B50(a6, 724238412, 0);

  return kdebug_trace();
}

void *sub_239E03E28(void *a1, uint64_t a2, void *a3)
{
  *sub_239E01940(a1, a2, a3) = &unk_284D08748;
  kdebug_trace();
  v30 = *(a3[3] + 32);
  v31 = a2;
  v6 = *(a1[3] + 32);
  v7 = *(a3[4] + 32);
  v8 = *(a1[4] + 32);
  v9 = *(a3[7] + 32);
  v10 = *(a1[7] + 32);
  v11 = *(a3[5] + 32);
  v12 = *(a1[5] + 32);
  v15 = objc_msgSend_commandBuffer(*(a2 + 24), v13, v14);
  sub_239E03CE8(a1, v10 - v9, v12 - v11, v6 - v30, v8 - v7, v15);
  v18 = v15;
  v19 = a3[15];
  if (v19)
  {
    v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
    objc_msgSend_addObject_(v20, v21, v19);
    v24 = a3[2];
    v25 = v18;
    if (*(v31 + 16) != *(v24 + 16))
    {
      v25 = objc_msgSend_commandBuffer(*(v24 + 24), v22, v23);
    }

    v28 = sub_239E007A0(v20, v25, v18, *(*(v31 + 32) + 40));
    if (v25 != v18)
    {
      objc_msgSend_commit(v25, v26, v27);
    }

    a1[15] = objc_msgSend_objectAtIndexedSubscript_(v28, v26, 0);
  }

  else
  {
    a1[15] = 0;
  }

  objc_msgSend_commit(v18, v16, v17);
  kdebug_trace();
  return a1;
}

uint64_t sub_239E04010(uint64_t a1)
{
  *a1 = &unk_284D08748;

  return sub_239E025C8(a1);
}

void sub_239E04070(uint64_t a1)
{
  sub_239E04010(a1);

  JUMPOUT(0x23EE7D780);
}

void *sub_239E040A8(uint64_t a1, void *a2)
{
  sub_239E026C0(a1, a2);
  result = *(a1 + 120);
  if (result)
  {
    v7 = objc_msgSend_contents(result, v4, v5);
    v11 = objc_msgSend_length(*(a1 + 120), v8, v9);

    return objc_msgSend_encodeBytes_length_forKey_(a2, v10, v7, v11, @"MPSInstanceBVHKeyInverseTransforms");
  }

  return result;
}

void *sub_239E04124(void *result, const char *a2, void *a3)
{
  v21 = a2;
  if (a2)
  {
    v4 = result;
    v5 = objc_msgSend_objectAtIndexedSubscript_(*(*(result[2] + 48) + 24), a2, 0);
    v6 = *(v4[4] + 32);
    v20 = v4[9];
    ComputeState = MPSLibrary::GetComputeState();
    objc_msgSend_setComputePipelineState_(a3, v8, ComputeState);
    objc_msgSend_setBuffer_offset_atIndex_(a3, v9, v5, v6, 0);
    objc_msgSend_setBytes_length_atIndex_(a3, v10, &v20, 4, 1);
    objc_msgSend_setBytes_length_atIndex_(a3, v11, &v21, 4, 2);
    v14 = objc_msgSend_threadExecutionWidth(ComputeState, v12, v13);
    v18 = (v14 + v20 - 1) / v14;
    v19 = vdupq_n_s64(1uLL);
    v16 = v14;
    v17 = v19;
    return objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a3, v15, &v18, &v16);
  }

  return result;
}

uint64_t sub_239E04240(uint64_t a1)
{
  kdebug_trace();
  v3 = *(a1 + 32);

  return objc_msgSend_setSignaledValue_(v3, v2, 2);
}

uint64_t sub_239E04288(uint64_t result)
{
  v1 = *(result + 32);
  if (*(result + 40) != v1)
  {
    v2 = result;
    v3 = 0;
    do
    {
      result = sub_239E18C24(*(v1 + 8 * v3++));
      v1 = *(v2 + 32);
    }

    while (v3 < (*(v2 + 40) - v1) >> 3);
  }

  return result;
}

uint64_t *sub_239E042D8(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v2 = (a1 + 32);
  v2[2] = 0;
  return sub_239E04564(v2, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 3);
}

void sub_239E042F4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }
}

uint64_t sub_239E0430C(uint64_t result)
{
  v1 = *(result + 32);
  if (*(result + 40) != v1)
  {
    v2 = result;
    v3 = 0;
    do
    {
      result = sub_239E18C24(*(v1 + 8 * v3++));
      v1 = *(v2 + 32);
    }

    while (v3 < (*(v2 + 40) - v1) >> 3);
  }

  return result;
}

void sub_239E0435C(uint64_t a1, const char *a2)
{
  if (*(a1 + 72) != *(a1 + 64))
  {
    v3 = 0;
    do
    {
      v4 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), a2, v3);
      v6 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 40), v5, v3);
      if (*(*(*(a1 + 88) + 8 * v3) + 32))
      {
        v7 = v6;
        v8 = 0;
        do
        {
          v9 = objc_msgSend_objectAtIndexedSubscript_(v4, a2, v8);
          v11 = objc_msgSend_objectAtIndexedSubscript_(v7, v10, v8);
          v14 = objc_msgSend_contents(v11, v12, v13);
          v17 = objc_msgSend_contents(v9, v15, v16);
          v20 = objc_msgSend_length(v9, v18, v19);
          memcpy(v14, v17, v20);
          ++v8;
        }

        while (v8 < *(*(*(a1 + 88) + 8 * v3) + 32));
      }

      ++v3;
    }

    while (v3 < (*(a1 + 72) - *(a1 + 64)) >> 3);
  }

  objc_msgSend_setSignaledValue_(*(a1 + 48), a2, 2);

  v21 = *(a1 + 40);
}

uint64_t *sub_239E04484(void *a1, uint64_t a2)
{
  a1[8] = 0;
  a1[9] = 0;
  a1[10] = 0;
  sub_239E04564(a1 + 8, *(a2 + 64), *(a2 + 72), (*(a2 + 72) - *(a2 + 64)) >> 3);
  a1[11] = 0;
  a1[12] = 0;
  a1[13] = 0;
  return sub_239E0461C(a1 + 11, *(a2 + 88), *(a2 + 96), (*(a2 + 96) - *(a2 + 88)) >> 3);
}

void sub_239E044F0(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 72) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_239E0450C(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    a1[12] = v2;
    operator delete(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    a1[9] = v3;

    operator delete(v3);
  }
}

uint64_t *sub_239E04564(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_239E045E0(result, a4);
  }

  return result;
}

void sub_239E045C4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_239E045E0(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_239DF5EE4(a1, a2);
  }

  sub_239DEDF38();
}

uint64_t *sub_239E0461C(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_239E045E0(result, a4);
  }

  return result;
}

void sub_239E0467C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_239E04698(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    sub_239E045E0(result, a4);
  }

  return result;
}

void sub_239E046F0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_239E0470C(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    sub_239E045E0(result, a4);
  }

  return result;
}

void sub_239E04764(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_239E0487C(void *a1, const char *a2, uint64_t a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v3 = objc_msgSend_counterSets(a1, a2, a3);
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v26, v31, 16);
  if (!v5)
  {
    return 0;
  }

  v8 = v5;
  v9 = *v27;
  v10 = *MEMORY[0x277CD69D8];
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v27 != v9)
      {
        objc_enumerationMutation(v3);
      }

      v12 = *(*(&v26 + 1) + 8 * i);
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v13 = objc_msgSend_counters(v12, v6, v7, 0);
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v22, v30, 16);
      if (v15)
      {
        v16 = v15;
        v17 = *v23;
LABEL_8:
        v18 = 0;
        while (1)
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v13);
          }

          v19 = objc_msgSend_name(*(*(&v22 + 1) + 8 * v18), v6, v7);
          if (objc_msgSend_isEqualToString_(v19, v20, v10))
          {
            return v12;
          }

          if (v16 == ++v18)
          {
            v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v6, &v22, v30, 16);
            if (v16)
            {
              goto LABEL_8;
            }

            break;
          }
        }
      }
    }

    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v26, v31, 16);
    v12 = 0;
    if (v8)
    {
      continue;
    }

    return v12;
  }
}

uint64_t sub_239E04A1C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_alloc_init(MEMORY[0x277CD6D50]);
  objc_msgSend_setCounterSet_(v6, v7, a2);
  objc_msgSend_setSampleCount_(v6, v8, a3);
  objc_msgSend_setStorageMode_(v6, v9, 0);
  v17 = 0;
  v11 = objc_msgSend_newCounterSampleBufferWithDescriptor_error_(a1, v10, v6, &v17);

  if (!v11)
  {
    objc_msgSend_description(v17, v12, v13);
    if (MTLReportFailureTypeEnabled())
    {
      objc_msgSend_description(v17, v14, v15);
      MTLReportFailure();
    }
  }

  return v11;
}

uint64_t sub_239E04ADC(int a1, const char *a2, void *a3, uint64_t a4)
{
  v8 = objc_msgSend_device(a3, a2, a3);
  v10 = objc_msgSend_supportsCounterSampling_(v8, v9, 0);
  if (a2 && a1 && (v10 & 1) != 0 && (v13 = objc_msgSend_device(a3, v11, v12), (v14 = sub_239E04A1C(v13, a2, 2)) != 0))
  {
    v15 = v14;
    v16 = objc_alloc_init(MEMORY[0x277CD6D20]);
    objc_msgSend_setDispatchType_(v16, v17, 0);
    v20 = objc_msgSend_sampleBufferAttachments(v16, v18, v19);
    v22 = objc_msgSend_objectAtIndexedSubscript_(v20, v21, 0);
    objc_msgSend_setSampleBuffer_(v22, v23, v15);
    objc_msgSend_setStartOfEncoderSampleIndex_(v22, v24, 0);
    objc_msgSend_setEndOfEncoderSampleIndex_(v22, v25, 1);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = sub_239E04C3C;
    v30[3] = &unk_278B3CDE8;
    v30[4] = v15;
    v30[5] = a4;
    objc_msgSend_addCompletedHandler_(a3, v26, v30);
    v28 = objc_msgSend_computeCommandEncoderWithDescriptor_(a3, v27, v16);

    return v28;
  }

  else
  {

    return objc_msgSend_computeCommandEncoder(a3, v11, v12);
  }
}

uint64_t sub_239E04C3C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = objc_msgSend_sampleCount(v4, a2, a3);
  v7 = objc_msgSend_resolveCounterRange_(v4, v6, 0, v5);
  v10 = objc_msgSend_bytes(v7, v8, v9);
  v11 = v10[1] - *v10;

  v13 = *(*(a1 + 40) + 16);

  v12.n128_f64[0] = (v11 / 1000000.0);
  return v13(v12);
}

uint64_t *sub_239E04CBC(uint64_t *a1, unsigned int **a2, uint64_t *a3)
{
  *(a1 + 3) = 0u;
  v6 = a1 + 6;
  a1[8] = 0;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  v8 = *a2;
  v7 = a2[1];
  v9 = v7 - *a2;
  if (v7 == *a2)
  {
    v14 = 1;
  }

  else
  {
    v10 = 0;
    v11 = v9 >> 2;
    if (v11 <= 1)
    {
      v11 = 1;
    }

    do
    {
      v13 = *v8;
      v8 += 4;
      v12 = v13;
      if (v13 > v10)
      {
        v10 = v12;
      }

      --v11;
    }

    while (v11);
    if (v10 <= 0xFFFFEFFF)
    {
      v14 = (v10 + 4096) >> 12;
    }

    else
    {
      v14 = 0xFFFFFLL;
    }
  }

  sub_239E04F58(a1 + 3, v14);
  v15 = a1[3];
  v16 = a1[4];
  v17 = v16 - v15;
  if (v16 != v15)
  {
    if (v17 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v16 - v15;
    }

    bzero(a1[3], 4 * v18);
  }

  v19 = *a2;
  v20 = a2[1];
  while (v19 != v20)
  {
    v21 = *v19;
    v22 = v21 >> 12;
    v23 = (v21 >> 5) & 0x7F;
    if (v23 >= v15[v22])
    {
      v15[v22] = v23 + 1;
    }

    ++v19;
  }

  if (v16 == v15)
  {
    v24 = 0;
  }

  else
  {
    v24 = 0;
    if (v17 <= 1)
    {
      v25 = 1;
    }

    else
    {
      v25 = v16 - v15;
    }

    do
    {
      v26 = *v15;
      if (v26)
      {
        *v15 = v24;
        v24 += v26;
      }

      ++v15;
      --v25;
    }

    while (v25);
  }

  sub_239E04F58(a1, v24);
  v27 = *a1;
  v28 = a1[1];
  v29 = (v28 - *a1) >> 2;
  if (v28 != *a1)
  {
    if (v29 <= 1)
    {
      v30 = 1;
    }

    else
    {
      v30 = (v28 - *a1) >> 2;
    }

    bzero(*a1, 4 * v30);
  }

  v31 = *a2;
  v32 = a2[1];
  if (*a2 != v32)
  {
    v33 = a1[3];
    do
    {
      v34 = *v31;
      v35 = *(v33 + ((v34 >> 10) & 0x3FFFFC));
      v36 = (v34 >> 5) & 0x7F;
      v37 = *v31 & 0x1F;
      v38 = v35 + v36;
      if (v37 >= v27[v38])
      {
        v27[v38] = v37 + 1;
      }

      v31 += 4;
    }

    while (v31 != v32);
  }

  if (v28 == v27)
  {
    v39 = 0;
  }

  else
  {
    v39 = 0;
    if (v29 <= 1)
    {
      v40 = 1;
    }

    else
    {
      v40 = v29;
    }

    do
    {
      v41 = *v27;
      if (v41)
      {
        *v27 = v39;
        v39 += v41;
      }

      ++v27;
      --v40;
    }

    while (v40);
  }

  sub_239E04F58(v6, v39);
  v42 = *a2;
  v43 = a2[1];
  v44 = v43 - *a2;
  if (v43 != *a2)
  {
    v45 = 0;
    v46 = v44 >> 2;
    v47 = *a3;
    v48 = a1[3];
    v49 = *a1;
    v50 = a1[6];
    do
    {
      *(v50 + 4 * (*(v49 + 4 * (*(v48 + ((*&v42[4 * v45] >> 10) & 0x3FFFFC)) + ((*&v42[4 * v45] >> 5) & 0x7Fu))) + (*&v42[4 * v45] & 0x1Fu))) = *(v47 + 4 * v45);
      ++v45;
    }

    while (v46 > v45);
  }

  return a1;
}

void sub_239E04F14(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 56) = v4;
    operator delete(v4);
  }

  v5 = *(v1 + 24);
  if (v5)
  {
    *(v1 + 32) = v5;
    operator delete(v5);
  }

  v6 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

void sub_239E04F58(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 2;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 4 * a2;
    }
  }

  else
  {
    sub_239E04F8C(result, a2 - v2);
  }
}

void sub_239E04F8C(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 2)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 4 * a2);
      v5 += 4 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 2);
    if (v8 >> 62)
    {
      sub_239DEDF38();
    }

    v9 = v4 - v6;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_239DEE028(a1, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[4 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

uint64_t sub_239E050BC(uint64_t a1, __int128 *a2, dispatch_object_t object)
{
  *a1 = &unk_284D08578;
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a2 + 6);
  *(a1 + 40) = a2[2];
  *(a1 + 24) = v5;
  *(a1 + 8) = v4;
  *(a1 + 56) = v6;
  *(a1 + 64) = object;
  if (object)
  {
    dispatch_retain(object);
  }

  *(a1 + 72) = dispatch_group_create();
  return a1;
}

uint64_t sub_239E0512C(uint64_t a1)
{
  *a1 = &unk_284D08578;
  dispatch_release(*(a1 + 72));
  v2 = *(a1 + 64);
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

uint64_t sub_239E05188(uint64_t a1, __n128 *a2, uint64_t a3, float32x4_t *a4, float32x4_t *a5, __n128 a6, __n128 a7)
{
  if (*(a1 + 40) <= a3)
  {
    return 0;
  }

  if (a2[2].n128_u32[0] < 2 * *(a1 + 32))
  {
    return 0;
  }

  result = (**a1)(a1, a3, a2[2].n128_u64[1], a6, a7, *a2, a2[1]);
  if (result)
  {
    v11 = a2[2].n128_i64[1];
    a4[2].i64[1] = v11;
    v12 = a4[2].u32[0];
    v13 = (v11 + 32 * v12);
    a5[2].i64[1] = v13;
    a4[2].i32[1] = v12;
    v14 = a5[2].u32[0];
    a5[2].i32[1] = v14;
    v15 = a2[2].n128_u32[1];
    v16 = v15 - (v14 + v12);
    if (v15 != v14 + v12)
    {
      v17 = vsubq_f32(a4[1], *a4);
      v18 = vmul_f32(*v17.i8, *&vextq_s8(v17, v17, 4uLL));
      v19 = vsubq_f32(a5[1], *a5);
      v20 = vmul_f32(*v19.i8, *&vextq_s8(v19, v19, 4uLL));
      *v17.i8 = vadd_f32(vzip2_s32(v20, v18), vmla_f32(vzip1_s32(v20, v18), vzip1_s32(*&vextq_s8(v19, v19, 8uLL), *&vextq_s8(v17, v17, 8uLL)), vzip1_s32(*v19.i8, *v17.i8)));
      v21 = vadd_f32(*v17.i8, *v17.i8);
      v22 = vcltz_f32(v21);
      v23 = v21.f32[1];
      if (v22.i8[4])
      {
        v23 = 0.0;
      }

      if (v22.i8[0])
      {
        v21.f32[0] = 0.0;
      }

      v24 = vcvtas_u32_f32(((v23 * v12) / ((v23 * v12) + (v21.f32[0] * v14))) * v16);
      a4[2].i32[1] = v24;
      a5[2].i32[1] = v16 - v24;
      a4[2].i32[1] += v12;
      a5[2].i32[1] += v14;
      memmove((a2[2].n128_u64[1] + 32 * a4[2].u32[1]), v13, 32 * v14);
      a5[2].i64[1] = a2[2].n128_u64[1] + 32 * a4[2].u32[1];
    }

    return 1;
  }

  return result;
}

void sub_239E05340(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, atomic_uint *a7, __n128 a8, __n128 a9)
{
  v77 = 0uLL;
  v78 = 0;
  sub_239E05708(&v77, a2);
  v76 = 0;
  v14 = 0uLL;
  v75 = 0u;
  v15.i64[0] = 0x7F0000007FLL;
  v15.i64[1] = 0x7F0000007FLL;
  v52 = vnegq_f32(v15);
  while (1)
  {
    v16 = *(&v77 + 1);
    v17 = v77;
    v18 = *(&v14 + 1);
    v19 = v14;
    v20 = 0xAAAAAAAAAAAAAAABLL * ((*(&v14 + 1) - v14) >> 4);
    if (*(&v77 + 1) == v77 || v20 - 0x5555555555555555 * ((*(&v77 + 1) - v77) >> 4) >= *(a1 + 52))
    {
      break;
    }

    v22 = (v77 + 48);
    if (*(&v77 + 1) != v77 + 48)
    {
      _Q0 = vsubq_f32(*(v77 + 16), *v77);
      _S2 = _Q0.i32[2];
      __asm { FMLA            S1, S2, V0.S[1] }

      v29 = _S1 + _S1;
      do
      {
        v30 = vsubq_f32(v22[1], *v22);
        v31 = vmul_f32(*v30.i8, *&vextq_s8(v30, v30, 4uLL));
        v32 = (v31.f32[1] + (v31.f32[0] + (*v30.i32 * *&v30.i32[2]))) + (v31.f32[1] + (v31.f32[0] + (*v30.i32 * *&v30.i32[2])));
        if (v32 > v29)
        {
          v17 = v22;
          v29 = v32;
        }

        v22 += 3;
      }

      while (v22 != *(&v77 + 1));
    }

    v33 = *v17;
    v34 = v17[2];
    v73 = v17[1];
    v74 = v34;
    v72 = v33;
    v33.i64[0] = 0x7F0000007FLL;
    v33.i64[1] = 0x7F0000007FLL;
    v69 = v52;
    v70 = v33;
    v68[0] = v52;
    v68[1] = v33;
    if (sub_239E05188(a1, &v72, a4, &v69, v68, a8, a9))
    {
      v35 = v69;
      v36 = v71;
      v17[1] = v70;
      v17[2] = v36;
      *v17 = v35;
      sub_239E05708(&v77, v68);
    }

    else
    {
      sub_239E05708(&v75, &v72);
      v37 = *(&v77 + 1) - (v17 + 3);
      if (*(&v77 + 1) != &v17[3])
      {
        memmove(v17, &v17[3], *(&v77 + 1) - (v17 + 3));
      }

      *(&v77 + 1) = v17 + v37;
    }

    v14 = v75;
  }

  v38 = *a2;
  *(a5 + 8) = *(a2 + 1);
  *a5 = v38;
  v39 = a2[1];
  *(a5 + 16) = v39;
  *(a5 + 24) = DWORD2(v39);
  sub_239E15E88(&v77, v16, v19, v18, v20);
  v40 = *(&v77 + 1);
  v41 = v77;
  v42 = 0xAAAAAAAAAAAAAAABLL * ((*(&v77 + 1) - v77) >> 4);
  if (v42 < 2)
  {
    *(a5 + 28) = -*(a2 + 8);
    *(a5 + 12) = (*(a2 + 5) - a3) >> 5;
  }

  else
  {
    *(a5 + 12) = atomic_fetch_add_explicit(a7, *(a1 + 52), memory_order_relaxed);
    *(a5 + 28) = v42;
    if (*(a1 + 64) && *(a2 + 8) > *(a1 + 28))
    {
      if (v41 != v40)
      {
        v43 = 0;
        v44 = MEMORY[0x277D85DD0];
        do
        {
          v72 = *v41;
          v73 = *(v41 + 16);
          v74 = *(v41 + 32);
          v46 = *(a1 + 64);
          v45 = *(a1 + 72);
          block[0] = v44;
          block[1] = 3221225472;
          block[2] = sub_239E05810;
          block[3] = &unk_278B3CE08;
          v56 = v72;
          v57 = v73;
          v58 = v74;
          v59 = a8;
          v60 = a9;
          v61 = a1;
          v62 = a3;
          v63 = a6;
          v64 = a5;
          v66 = a4;
          v67 = v43;
          v65 = a7;
          dispatch_group_async(v45, v46, block);
          ++v43;
          v41 += 48;
        }

        while (v41 != v40);
      }
    }

    else if (v41 != v40)
    {
      v47 = 0;
      do
      {
        v48 = *v41;
        v49 = *(v41 + 32);
        v73 = *(v41 + 16);
        v74 = v49;
        v72 = v48;
        sub_239E05340(a1, &v72, a3, (a4 + 1), a6 + 32 * (v47 + *(a5 + 12)), a6, a7, a8, a9);
        ++v47;
        v41 += 48;
      }

      while (v41 != v40);
    }
  }

  if (v75)
  {
    *(&v75 + 1) = v75;
    operator delete(v75);
  }

  if (v77)
  {
    *(&v77 + 1) = v77;
    operator delete(v77);
  }
}

void sub_239E056CC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 160);
  if (v3)
  {
    *(v1 - 152) = v3;
    operator delete(v3);
  }

  v4 = *(v1 - 128);
  if (v4)
  {
    *(v1 - 120) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_239E05708(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    v10 = v9 + 1;
    if (v9 + 1 > 0x555555555555555)
    {
      sub_239DEDF38();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 4);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0x555555555555555;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      sub_239E15E30(a1, v12);
    }

    v13 = 48 * v9;
    v14 = *a2;
    v15 = a2[2];
    *(v13 + 16) = a2[1];
    *(v13 + 32) = v15;
    *v13 = v14;
    v8 = 48 * v9 + 48;
    v16 = *(a1 + 8) - *a1;
    v17 = v13 - v16;
    memcpy((v13 - v16), *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[2];
    v4[1] = a2[1];
    v4[2] = v7;
    *v4 = v6;
    v8 = (v4 + 3);
  }

  *(a1 + 8) = v8;
}

void *sub_239E05840(uint64_t a1, uint64_t a2, int a3, int a4, unsigned int *a5, __n128 a6, __n128 a7)
{
  v11 = *(a1 + 32);
  v12 = v11 + *(a1 + 52) * a4 - 1;
  if (v11 > v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12 / v11;
  }

  *a5 = v13;
  memptr = 0;
  malloc_type_posix_memalign(&memptr, 0x20uLL, 32 * v13, 0x1000040E0EAB150uLL);
  atomic_store(1u, &v21);
  v17[0] = a6;
  v17[1] = a7;
  v18 = a3;
  v19 = a4;
  v20 = a2;
  sub_239E05340(a1, v17, a2, 1, memptr, memptr, &v21, a6, a7);
  dispatch_group_wait(*(a1 + 72), 0xFFFFFFFFFFFFFFFFLL);
  return memptr;
}

uint64_t sub_239E05910(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  *a3 = 0;
  *a4 = 0;
  *a5 = 0;
  return sub_239E05960();
}

uint64_t sub_239E05960()
{
  v14[1] = *MEMORY[0x277D85DE8];
  result = MEMORY[0x28223BE20]();
  v7 = v14 - v6;
  for (i = v7; ; i -= 4)
  {
    if (*(v1 + 32 * v5 + 28) < 1)
    {
      v12 = *(v4 + 8);
      ++**v4;
      *v12 -= *(**(v4 + 16) + 32 * v5 + 28);
    }

    else
    {
      ++*v2;
      v9 = *v3 + 32 * v5;
      v10 = *(v9 + 28);
      if (v10 >= 1)
      {
        v11 = v10 + 1;
        do
        {
          *i = v11 + *(v9 + 12) - 2;
          i += 4;
          --v11;
        }

        while (v11 > 1);
      }
    }

    if (i == v7)
    {
      break;
    }

    v13 = *(i - 1);
    v5 = v13;
  }

  return result;
}

uint64_t **sub_239E05A78(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v27 = a3;
  v28 = a2;
  v25 = a5;
  v26 = a4;
  v24 = a6;
  v22 = 0;
  v23 = 2;
  v20 = a7;
  v21 = a6;
  v18 = a9;
  v19 = a8;
  v9 = a2[7] > 0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  v10 = a2[1];
  v11 = a2[2];
  v12 = a2[4];
  v13 = a2[5];
  v14 = a2[6];
  *a4 = *a2;
  *(a4 + 4) = v12;
  *(a4 + 8) = v10;
  *(a4 + 12) = v13;
  *(a4 + 16) = v11;
  *(a4 + 20) = v14;
  *(a4 + 24) = v9;
  v17[0] = &v28;
  v17[1] = &v19;
  v17[2] = &v18;
  v17[3] = &v26;
  v17[4] = &v23;
  v17[5] = &v22;
  v16[0] = &v28;
  v16[1] = &v19;
  v16[2] = &v18;
  v16[3] = &v25;
  v16[4] = &v21;
  v16[5] = &v24;
  v16[6] = &v27;
  v16[7] = &v20;
  return sub_239E05B48(a1, a2, v9 << 32, 0x100000000, v17, v16);
}

uint64_t **sub_239E05B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t **a5, uint64_t a6)
{
  v44[1] = *MEMORY[0x277D85DE8];
  result = MEMORY[0x28223BE20]();
  v18 = &v44[-2 * v17];
  v44[0] = v18;
  while (1)
  {
    if (*(a2 + 32 * v10 + 28) < 1)
    {
      v19 = *a6;
      v20 = *(a6 + 8);
      v21 = *v20;
      *v21 = HIDWORD(v11);
      v22 = *v19;
      *v20 = v21 + 1;
      v23 = *(a6 + 16);
      v24 = *v23;
      *v24 = -HIDWORD(v10);
      v25 = v22 + 32 * v10;
      *v23 = v24 + 1;
      v26 = (**(a6 + 24) + 16 * (v10 >> 32));
      LODWORD(v24) = *(v25 + 28);
      v27 = -v24;
      v28 = (**(a6 + 32) - **(a6 + 40)) >> 2;
      *v26 = v27;
      v26[1] = v28;
      v26[2] = v11;
      v26[3] = 0;
      if (v24)
      {
        v29 = **(a6 + 48);
        v30 = *(v25 + 12);
        v31 = 32 * v27;
        v32 = v29 + 32 * v30;
        v33 = 32 * v30;
        v34 = (v32 + 12);
        v35 = v31;
        do
        {
          v36 = *v34;
          v34 += 8;
          v37 = *(a6 + 32);
          v38 = *v37;
          *v38 = v36;
          *v37 = v38 + 1;
          v35 -= 32;
        }

        while (v35);
        v39 = (v29 + v33 + 28);
        do
        {
          v40 = *v39;
          v39 += 8;
          v41 = *(a6 + 56);
          v42 = *v41;
          *v42 = v40;
          *v41 = v42 + 1;
          v31 -= 32;
        }

        while (v31);
      }
    }

    else
    {
      result = sub_239E16118(a5, v10, v11, v44, v12, v13, v14, v15, v16);
    }

    v43 = v44[0];
    if (v44[0] == v18)
    {
      break;
    }

    v44[0] -= 2;
    v10 = *(v43 - 2);
    v11 = *(v43 - 1);
  }

  return result;
}

uint64_t **sub_239E05CF4(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a3;
  v24 = a2;
  v21 = a6;
  v22 = a5;
  v19 = 0;
  v20 = 2;
  v17 = a8;
  v18 = a7;
  v8 = a2[7] > 0;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[4];
  v12 = a2[5];
  v13 = a2[6];
  *a5 = *a2;
  *(a5 + 4) = v11;
  *(a5 + 8) = v9;
  *(a5 + 12) = v12;
  *(a5 + 16) = v10;
  *(a5 + 20) = v13;
  *(a5 + 24) = v8;
  v16[0] = &v24;
  v16[1] = &v18;
  v16[2] = &v17;
  v16[3] = &v22;
  v16[4] = &v20;
  v16[5] = &v19;
  v15[0] = &v24;
  v15[1] = &v18;
  v15[2] = &v17;
  v15[3] = &v21;
  v15[4] = &v23;
  return sub_239E05DA8(a1, a2, v8 << 32, 0x100000000, v16, v15);
}

uint64_t **sub_239E05DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t **a5, uint64_t a6)
{
  v27[1] = *MEMORY[0x277D85DE8];
  result = MEMORY[0x28223BE20]();
  v18 = &v27[-2 * v17];
  v27[0] = v18;
  while (1)
  {
    if (*(a2 + 32 * v10 + 28) < 1)
    {
      v19 = *(a6 + 8);
      v20 = **a6 + 32 * v10;
      v21 = *v19;
      *v21 = HIDWORD(v11);
      *v19 = v21 + 1;
      v22 = *(a6 + 16);
      v23 = *v22;
      *v23 = -HIDWORD(v10);
      *v22 = v23 + 1;
      v24 = *(v20 + 28) ? *(**(a6 + 32) + 32 * *(v20 + 12) + 12) : -1;
      v25 = (**(a6 + 24) + 8 * (v10 >> 32));
      *v25 = v24;
      v25[1] = v11;
    }

    else
    {
      result = sub_239E16118(a5, v10, v11, v27, v12, v13, v14, v15, v16);
    }

    v26 = v27[0];
    if (v27[0] == v18)
    {
      break;
    }

    v27[0] -= 2;
    v10 = *(v26 - 2);
    v11 = *(v26 - 1);
  }

  return result;
}

__n128 sub_239E05EF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  v4 = *(a2 + 16);
  result = *(a2 + 32);
  *(a1 + 8) = *a2;
  *(a1 + 24) = v4;
  *(a1 + 40) = result;
  *(a1 + 56) = v2;
  *a1 = &unk_284D086F8;
  return result;
}

__n128 sub_239E05F38(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 56) = *(a2 + 48);
  *(a1 + 40) = v4;
  *(a1 + 24) = v3;
  *(a1 + 8) = result;
  *a1 = &unk_284D086F8;
  return result;
}

dispatch_queue_t sub_239E05F90()
{
  v0 = qos_class_self();
  v1 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x277D85CD8], v0, 0);

  return dispatch_queue_create("com.apple.mpsaccelerationstructure.queue", v1);
}

void sub_239E05FD8(uint64_t a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, int a8, void *a9, uint64_t a10, unsigned int a11)
{
  v11 = a3;
  v266 = *MEMORY[0x277D85DE8];
  if (*(*(a2 + 4) + 40))
  {
    sub_239E24B58(a1, a2);
  }

  v220 = objc_msgSend_date(MEMORY[0x277CBEAA8], a2, a3);
  v224 = *(a2 + 2);
  v222 = *(a2 + 3);
  if (a10 == 1)
  {
    v13 = 4;
  }

  else
  {
    v13 = 3;
  }

  v259 = 0;
  v258 = 0;
  v260 = 0;
  v256 = 0;
  v255 = 0;
  v257 = 0;
  v253 = 0;
  v252 = 0;
  v254 = 0;
  v250 = 0;
  v249 = 0;
  v251 = 0;
  v231 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0;
  v15 = 0;
  v232 = 0;
  v234 = 0;
  v223 = v13 * a5;
  v225 = v11;
  for (i = objc_msgSend_count(v11, v16, v17); v14 < i; i = objc_msgSend_count(v225, v67, v68))
  {
    v21 = objc_msgSend_objectAtIndexedSubscript_(v11, v19, v14);
    v23 = objc_msgSend_objectAtIndexedSubscript_(a4, v22, v14);
    v26 = objc_msgSend_unsignedIntegerValue(v23, v24, v25);
    v28 = objc_msgSend_objectAtIndexedSubscript_(a6, v27, v14);
    v29 = v13;
    v31 = objc_msgSend_objectAtIndexedSubscript_(a7, v30, v14);
    v34 = objc_msgSend_unsignedIntegerValue(v31, v32, v33);
    v245[0] = 0;
    v261[0] = 0;
    v36 = objc_msgSend_objectAtIndexedSubscript_(a9, v35, v14);
    v39 = objc_msgSend_unsignedIntegerValue(v36, v37, v38);
    if (objc_msgSend_storageMode(v21, v40, v41) == 2)
    {
      v45 = objc_msgSend_length(v21, v42, v43) - v26;
      if (v28)
      {
        v46 = v45;
        v47 = objc_msgSend_newBufferWithLength_options_(v224, v44, v45, 0);
      }

      else
      {
        v46 = v223 * v39;
        v47 = objc_msgSend_newBufferWithLength_options_(v224, v44, v223 * v39, 0);
      }

      v50 = v47;
      if (!v234)
      {
        v234 = objc_msgSend_commandBuffer(v222, v48, v49);
        v232 = objc_msgSend_blitCommandEncoder(v234, v51, v52);
      }

      objc_msgSend_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size_(v232, v48, v21, v26, v50, 0, v46);
      v55 = objc_msgSend_contents(v50, v53, v54);
    }

    else
    {
      v50 = 0;
      v55 = (objc_msgSend_contents(v21, v42, v43) + v26);
    }

    v245[0] = v55;
    if (v28)
    {
      if (objc_msgSend_storageMode(v28, v56, v57) == 2)
      {
        v62 = objc_msgSend_newBufferWithLength_options_(v224, v58, 4 * v39 * v29, 0);
        if (!v234)
        {
          v234 = objc_msgSend_commandBuffer(v222, v60, v61);
          v232 = objc_msgSend_blitCommandEncoder(v234, v63, v64);
        }

        objc_msgSend_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size_(v232, v60, v28, v34, v62, 0, 4 * v39 * v29);
        v261[0] = objc_msgSend_contents(v62, v65, v66);
      }

      else
      {
        v62 = 0;
        v261[0] = (objc_msgSend_contents(v28, v58, v59) + v34);
      }
    }

    else
    {
      v62 = 0;
    }

    sub_239DEDD74(&v258, v245);
    LODWORD(__p[0]) = a5;
    sub_239DEDE48(&v255, __p);
    sub_239DEDD74(&v252, v261);
    LODWORD(__p[0]) = a8;
    sub_239DEDE48(&v249, __p);
    if (v50)
    {
      objc_msgSend_addObject_(v231, v67, v50);
    }

    if (v62)
    {
      objc_msgSend_addObject_(v231, v67, v62);
    }

    v15 += v39 * v29;
    v13 = v29;
    ++v14;
    v11 = v225;
  }

  if (v234)
  {
    objc_msgSend_endEncoding(v232, v19, v20);
    objc_msgSend_commit(v234, v69, v70);
    kdebug_trace();
    objc_msgSend_waitUntilCompleted(v234, v71, v72);
    kdebug_trace();
  }

  memset(v245, 0, sizeof(v245));
  sub_239E15CC0(v245, v258, v259, (v259 - v258) >> 3);
  memset(v246, 0, sizeof(v246));
  sub_239E15D78(v246, v255, v256, (v256 - v255) >> 2);
  memset(v247, 0, sizeof(v247));
  sub_239E15CC0(v247, v252, v253, (v253 - v252) >> 3);
  memset(v248, 0, sizeof(v248));
  sub_239E15D78(v248, v249, v250, (v250 - v249) >> 2);
  v75 = objc_msgSend_date(MEMORY[0x277CBEAA8], v73, v74);
  kdebug_trace();
  v76 = 1.0;
  if (*(a1 + 12) == 3)
  {
    v76 = 2.0;
  }

  v77 = (v76 * (v15 / v13));
  memptr = 0;
  v78 = 32 * v77;
  malloc_type_posix_memalign(&memptr, 0x20uLL, 32 * v77, 0x1000040E0EAB150uLL);
  v243 = 0;
  if (a10)
  {
    v81 = 0;
    v82.i64[0] = 0x7F0000007FLL;
    v82.i64[1] = 0x7F0000007FLL;
    v83.n128_u64[0] = 0x7F0000007FLL;
    v83.n128_u64[1] = 0x7F0000007FLL;
    v233 = vnegq_f32(v82);
    v235 = v83;
    while (v81 < objc_msgSend_count(v11, v79, v80))
    {
      v85 = objc_msgSend_objectAtIndexedSubscript_(a9, v84, v81);
      v88 = objc_msgSend_unsignedIntegerValue(v85, v86, v87);
      if (v88)
      {
        v92 = 0;
        v93 = 1;
        do
        {
          v94 = v92 + 1;
          v95 = v92 + 2;
          v96 = v92 + 3;
          v97 = *(v247[0] + v81);
          if (v97)
          {
            if (*(v248[0] + v81) == 4)
            {
              v98 = *(v97 + 4 * v92);
              v94 = *(v97 + 4 * v94);
              v95 = *(v97 + 4 * v95);
              v96 = *(v97 + 4 * v96);
            }

            else
            {
              v98 = *(v97 + 2 * v92);
              v94 = *(v97 + 2 * v94);
              v95 = *(v97 + 2 * v95);
              v96 = *(v97 + 2 * v96);
            }
          }

          else
          {
            v98 = v92;
          }

          v99 = *(v245[0] + v81);
          v100 = *(v246[0] + v81);
          v101 = v99 + v100 * v98;
          v89.i64[0] = *v101;
          v89.i32[2] = *(v101 + 8);
          v102 = v99 + v100 * v94;
          v91.i64[0] = *v102;
          v91.i32[2] = *(v102 + 8);
          v103 = v99 + v100 * v95;
          v90.i64[0] = *v103;
          v90.i32[2] = *(v103 + 8);
          v104 = vsubq_f32(v91, v89);
          v105 = vsubq_f32(v90, v89);
          v106 = vmlaq_f32(vnegq_f32(vmulq_f32(v104, vextq_s8(vuzp1q_s32(v105, v105), v105, 0xCuLL))), v105, vextq_s8(vuzp1q_s32(v104, v104), v104, 0xCuLL));
          v107 = vmulq_f32(v106, v106);
          if (sqrtf(v107.f32[1] + (v107.f32[2] + v107.f32[0])) != 0.0)
          {
            v108 = v99 + v100 * v96;
            v109.i64[0] = *v108;
            v89.i32[3] = 0;
            v91.i32[3] = 0;
            v110 = vminnmq_f32(v89, v91);
            v111 = vmaxnmq_f32(v89, v91);
            v110.i32[3] = 0;
            v90.i32[3] = 0;
            v112 = vminnmq_f32(v110, v90);
            v111.i32[3] = 0;
            v112.i32[3] = 0;
            v113 = vmaxnmq_f32(v111, v90);
            v109.i64[1] = *(v108 + 8);
            v114 = vminnmq_f32(v112, v109);
            v113.i32[3] = 0;
            v115 = vmaxnmq_f32(v113, v109);
            v116 = v233;
            v116.i32[3] = 0;
            v117 = v243++;
            v118 = memptr + 32 * v117;
            *(v118 + 2) = v114.i32[2];
            *v118 = v114.i64[0];
            v114.i32[3] = 0;
            v90 = vminnmq_f32(v116, v114);
            v91 = v235;
            v91.i32[3] = 0;
            *(v118 + 2) = v115.i64[0];
            *(v118 + 6) = v115.i32[2];
            v115.i32[3] = 0;
            v89 = vmaxnmq_f32(v91, v115);
            v90.i32[3] = v233.n128_i32[3];
            v89.i32[3] = v235.n128_i32[3];
            *(v118 + 3) = v93 - 1;
            *(v118 + 7) = v81;
            v233 = v90;
            v235 = v89;
          }

          v119 = v88 > v93++;
          v92 += 4;
        }

        while (v119);
      }

      ++v81;
    }
  }

  else
  {
    v120 = 0;
    v121.i64[0] = 0x7F0000007FLL;
    v121.i64[1] = 0x7F0000007FLL;
    v122.n128_u64[0] = 0x7F0000007FLL;
    v122.n128_u64[1] = 0x7F0000007FLL;
    v233 = vnegq_f32(v121);
    v235 = v122;
    while (v120 < objc_msgSend_count(v11, v79, v80))
    {
      v124 = objc_msgSend_objectAtIndexedSubscript_(a9, v123, v120);
      v127 = objc_msgSend_unsignedIntegerValue(v124, v125, v126);
      if (v127)
      {
        v131 = 0;
        v132 = 1;
        do
        {
          v133 = v131 + 1;
          v134 = v131 + 2;
          v135 = *(v247[0] + v120);
          if (v135)
          {
            if (*(v248[0] + v120) == 4)
            {
              v136 = *(v135 + 4 * v131);
              v133 = *(v135 + 4 * v133);
              v134 = *(v135 + 4 * v134);
            }

            else
            {
              v136 = *(v135 + 2 * v131);
              v133 = *(v135 + 2 * v133);
              v134 = *(v135 + 2 * v134);
            }
          }

          else
          {
            v136 = v131;
          }

          v137 = *(v245[0] + v120);
          v138 = *(v246[0] + v120);
          v139 = v137 + v138 * v136;
          v128.i64[0] = *v139;
          v128.i32[2] = *(v139 + 8);
          v140 = v137 + v138 * v133;
          v129.i64[0] = *v140;
          v129.i32[2] = *(v140 + 8);
          v141 = v137 + v138 * v134;
          v130.i64[0] = *v141;
          v130.i32[2] = *(v141 + 8);
          v142 = vsubq_f32(v129, v128);
          v143 = vsubq_f32(v130, v128);
          v144 = vmlaq_f32(vnegq_f32(vmulq_f32(v142, vextq_s8(vuzp1q_s32(v143, v143), v143, 0xCuLL))), v143, vextq_s8(vuzp1q_s32(v142, v142), v142, 0xCuLL));
          v145 = vmulq_f32(v144, v144);
          if (sqrtf(v145.f32[1] + (v145.f32[2] + v145.f32[0])) != 0.0)
          {
            v128.i32[3] = 0;
            v129.i32[3] = 0;
            v146 = vminnmq_f32(v128, v129);
            v146.i32[3] = 0;
            v147 = vmaxnmq_f32(v128, v129);
            v130.i32[3] = 0;
            v148 = vminnmq_f32(v146, v130);
            v147.i32[3] = 0;
            v149 = vmaxnmq_f32(v147, v130);
            v150 = v233;
            v150.i32[3] = 0;
            v151 = v243++;
            v152 = memptr + 32 * v151;
            *(v152 + 2) = v148.i32[2];
            *v152 = v148.i64[0];
            v148.i32[3] = 0;
            v129 = vminnmq_f32(v150, v148);
            v130 = v235;
            v130.i32[3] = 0;
            *(v152 + 2) = v149.i64[0];
            *(v152 + 6) = v149.i32[2];
            v149.i32[3] = 0;
            v128 = vmaxnmq_f32(v130, v149);
            v129.i32[3] = v233.n128_i32[3];
            v128.i32[3] = v235.n128_i32[3];
            *(v152 + 3) = v132 - 1;
            *(v152 + 7) = v120;
            v233 = v129;
            v235 = v128;
          }

          v119 = v127 > v132++;
          v131 += 3;
        }

        while (v119);
      }

      ++v120;
    }
  }

  kdebug_trace();
  objc_msgSend_timeIntervalSinceNow(v75, v153, v154);
  v155 = sub_239E05F90();
  v156 = *(a1 + 12);
  if (v156 > 1)
  {
    if (v156 == 2)
    {
      operator new();
    }

    if (v156 == 3)
    {
      operator new();
    }
  }

  else
  {
    if (!v156)
    {
      operator new();
    }

    if (v156 == 1)
    {
      operator new();
    }
  }

  dispatch_release(v155);
  v159 = objc_msgSend_date(MEMORY[0x277CBEAA8], v157, v158);
  kdebug_trace();
  v242 = 0;
  v160 = sub_239E05840(0, memptr, v243, v77, &v242, v233, v235);
  kdebug_trace();
  objc_msgSend_timeIntervalSinceNow(v159, v161, v162);
  if (*(a1 + 8) == 1)
  {
    v165 = objc_msgSend_date(MEMORY[0x277CBEAA8], v163, v164);
    v168 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v166, v167);
    v169 = *(a1 + 24);
    *v261 = *(a1 + 8);
    v262 = v169;
    v263 = *(a1 + 40);
    v264 = *(a1 + 56);
    sub_239DFA254(a1, v261, v160, v168, v263, v169);
    objc_msgSend_setObject_forKeyedSubscript_(v168, v170, @"CPU", @"BVH Builder");
    v172 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v171, @"{ %f, %f, %f }, { %f, %f, %f }", v233.n128_f32[0], v233.n128_f32[1], v233.n128_f32[2], v235.n128_f32[0], v235.n128_f32[1], v235.n128_f32[2], v220);
    objc_msgSend_setObject_forKeyedSubscript_(v168, v173, v172, @"Bounds");
    if (v160[7] >= 0)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v168, v174, @"Internal", @"BVH Root Node Type");
    }

    else
    {
      objc_msgSend_setObject_forKeyedSubscript_(v168, v174, @"Leaf", @"BVH Root Node Type");
    }

    v177 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v175, v176);
    objc_msgSend_setObject_forKeyedSubscript_(v168, v178, v177, @"Temporary Memory");
    v181 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v179, v180, vcvtd_n_f64_u64(v78, 0x14uLL));
    objc_msgSend_setObject_forKeyedSubscript_(v177, v182, v181, @"Fragments (mb)");
    v185 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v183, v184, vcvtd_n_f64_u64(32 * v242, 0x14uLL));
    objc_msgSend_setObject_forKeyedSubscript_(v177, v186, v185, @"Nodes (mb)");
    v240 = 0u;
    v241 = 0u;
    v238 = 0u;
    v239 = 0u;
    v190 = objc_msgSend_countByEnumeratingWithState_objects_count_(v177, v187, &v238, v265, 16);
    if (v190)
    {
      v191 = *v239;
      v192 = 0.0;
      do
      {
        for (j = 0; j != v190; ++j)
        {
          if (*v239 != v191)
          {
            objc_enumerationMutation(v177);
          }

          v194 = objc_msgSend_objectForKeyedSubscript_(v177, v188, *(*(&v238 + 1) + 8 * j));
          objc_msgSend_doubleValue(v194, v195, v196);
          v192 = v192 + v197;
        }

        v190 = objc_msgSend_countByEnumeratingWithState_objects_count_(v177, v188, &v238, v265, 16);
      }

      while (v190);
    }

    else
    {
      v192 = 0.0;
    }

    v198 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v188, v189, v192);
    objc_msgSend_setObject_forKeyedSubscript_(v177, v199, v198, @"Total (mb)");
    objc_msgSend_timeIntervalSinceNow(v165, v200, v201);
  }

  v202 = objc_msgSend_date(MEMORY[0x277CBEAA8], v163, v164);
  __p[0] = v160;
  v237 = 0;
  v243 = 0;
  v261[0] = &v237;
  v261[1] = &v243;
  v262.i64[0] = __p;
  sub_239E05960();
  objc_msgSend_timeIntervalSinceNow(v202, v203, v204);
  v205 = getpagesize();
  v206 = -v205;
  v207 = mmap(0, (v205 + (HIDWORD(v237) << 6) + 63) & -v205, 3, 4098, -1, 0);
  if (v207 == -1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v208 = v205 - 1;
  v209 = mmap(0, (v205 - 1 + 16 * v237) & v206, 3, 4098, -1, 0);
  if (v209 == -1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (((v208 + 4 * v243) & v206) != 0)
  {
    v210 = (v208 + 4 * v243) & v206;
  }

  else
  {
    v210 = v205;
  }

  v211 = mmap(0, v210, 3, 4098, -1, 0);
  if (v211 == -1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v214 = mmap(0, v210, 3, 4098, -1, 0);
  if (v214 == -1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v215 = objc_msgSend_date(MEMORY[0x277CBEAA8], v212, v213);
  v261[1] = 0;
  v261[0] = 0;
  v262.i64[0] = 0;
  memset(__p, 0, sizeof(__p));
  sub_239E04F58(v261, (v237 + HIDWORD(v237)));
  sub_239E04F58(__p, (v237 + HIDWORD(v237)));
  sub_239E05A78(a1, v160, memptr, v207, v209, v211, v214, v261[0], __p[0]);
  objc_msgSend_timeIntervalSinceNow(v215, v216, v217);
  free(memptr);
  objc_msgSend_date(MEMORY[0x277CBEAA8], v218, v219);
  kdebug_trace();
  operator new();
}

uint64_t sub_239E07744(uint64_t a1)
{
  kdebug_trace();
  v2 = *(a1 + 168);
  v3 = *(a1 + 48);
  v5 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 32) + 24), v4, 0);
  sub_239E006FC(v3, v2, v5, *(*(a1 + 64) + 32));
  v6 = *(a1 + 72);
  v7 = *(a1 + 168);
  v9 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 32) + 24), v8, 1);
  sub_239E006FC(v6, v7, v9, *(*(a1 + 64) + 32));
  v10 = *(a1 + 80);
  v11 = *(a1 + 172);
  v13 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 40) + 24), v12, 0);
  sub_239E006FC(v10, v11, v13, *(*(a1 + 88) + 32));
  v14 = *(a1 + 96);
  v15 = *(a1 + 176);
  v17 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 48) + 24), v16, 0);
  sub_239E006FC(v14, v15, v17, *(*(a1 + 104) + 32));
  v18 = *(a1 + 112);
  v19 = (*(*(a1 + 120) + 8) - **(a1 + 120));
  v21 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 56) + 24), v20, 0);
  sub_239E006FC(v18, v19, v21, *(*(a1 + 128) + 32));
  v22 = *(a1 + 136);
  v23 = (*(*(a1 + 120) + 32) - *(*(a1 + 120) + 24));
  v25 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 64) + 24), v24, 0);
  sub_239E006FC(v22, v23, v25, *(*(a1 + 144) + 32));
  v26 = *(a1 + 152);
  v27 = (*(*(a1 + 120) + 56) - *(*(a1 + 120) + 48));
  v29 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 72) + 24), v28, 0);
  sub_239E006FC(v26, v27, v29, *(*(a1 + 160) + 32));
  objc_msgSend_setSignaledValue_(*(a1 + 32), v30, 2);
  munmap(*(a1 + 80), *(a1 + 172));
  munmap(*(a1 + 96), *(a1 + 176));
  munmap(*(a1 + 48), *(a1 + 168));
  munmap(*(a1 + 72), *(a1 + 168));
  v31 = *(a1 + 120);
  if (v31)
  {
    v32 = *(v31 + 48);
    if (v32)
    {
      *(v31 + 56) = v32;
      operator delete(v32);
    }

    v33 = *(v31 + 24);
    if (v33)
    {
      *(v31 + 32) = v33;
      operator delete(v33);
    }

    v34 = *v31;
    if (*v31)
    {
      *(v31 + 8) = v34;
      operator delete(v34);
    }

    MEMORY[0x23EE7D780](v31, 0x10C40E523AF1CLL);
  }

  v35 = *(a1 + 56);
  add = atomic_fetch_add(v35 + 2, 0xFFFFFFFF);
  if (v35 && add == 1)
  {
    (*(*v35 + 8))(v35);
  }

  sub_239E18C24(*(a1 + 88));
  sub_239E18C24(*(a1 + 104));
  sub_239E18C24(*(a1 + 128));
  sub_239E18C24(*(a1 + 144));
  sub_239E18C24(*(a1 + 160));
  sub_239E18C24(*(a1 + 64));

  return kdebug_trace();
}

void sub_239E07A3C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, unint64_t a8, void *a9)
{
  v125 = *MEMORY[0x277D85DE8];
  if (*(a2[4] + 40))
  {
    sub_239E24BA4(a1, a2);
  }

  v16 = a2[2];
  v110 = a2[3];
  kdebug_trace();
  v19 = 0;
  v20 = 0;
  v21 = 0;
  if (!a5)
  {
    if (objc_msgSend_storageMode(a3, v17, v18) == 2)
    {
      v24 = objc_msgSend_newBufferWithLength_options_(v16, v22, a8 << 6, 0);
      v21 = objc_msgSend_commandBuffer(v110, v25, v26);
      v20 = objc_msgSend_blitCommandEncoder(v21, v27, v28);
      objc_msgSend_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size_(v20, v29, a3, a4, v24, 0, a8 << 6);
      v19 = objc_msgSend_contents(v24, v30, v31);
    }

    else
    {
      v20 = 0;
      v21 = 0;
      v19 = objc_msgSend_contents(a3, v22, v23) + a4;
    }
  }

  v108 = v16;
  if (objc_msgSend_storageMode(a6, v17, v18) == 2)
  {
    v36 = objc_msgSend_newBufferWithLength_options_(v16, v32, 4 * a8, 0);
    if (!v21)
    {
      v21 = objc_msgSend_commandBuffer(v110, v34, v35);
      v20 = objc_msgSend_blitCommandEncoder(v21, v37, v38);
    }

    objc_msgSend_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size_(v20, v34, a6, a7, v36, 0, 4 * a8);
    v43 = objc_msgSend_contents(v36, v39, v40);
  }

  else
  {
    v43 = objc_msgSend_contents(a6, v32, v33) + a7;
  }

  if (v21)
  {
    objc_msgSend_endEncoding(v20, v41, v42);
    objc_msgSend_commit(v21, v44, v45);
    kdebug_trace();
    objc_msgSend_waitUntilCompleted(v21, v46, v47);
    kdebug_trace();
  }

  kdebug_trace();
  kdebug_trace();
  if (v19)
  {
    v49 = (a8 <= 1 ? objc_msgSend_newBufferWithLength_options_(v108, v48, 64, 0) : objc_msgSend_newBufferWithLength_options_(v108, v48, a8 << 6, 0));
    v52 = objc_msgSend_contents(v49, v50, v51);
    if (a8)
    {
      v53 = v19 + 32;
      v54 = v52 + 32;
      v55 = a8;
      do
      {
        *(v54 - 32) = __invert_f4(*(v53 - 32));
        v54 += 64;
        v53 += 64;
        --v55;
      }

      while (v55);
    }
  }

  memset(v121, 0, sizeof(v121));
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(a9, v48, &v117, v124, 16);
  if (v58)
  {
    v59 = *v118;
    do
    {
      for (i = 0; i != v58; ++i)
      {
        if (*v118 != v59)
        {
          objc_enumerationMutation(a9);
        }

        objc_msgSend_boundingBox(*(*(&v117 + 1) + 8 * i), v56, v57);
        LODWORD(v122[1]) = v61;
        v123 = v62;
        v122[0] = v63;
        v122[2] = v64;
        sub_239E08920(v121, v122);
      }

      v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(a9, v56, &v117, v124, 16);
    }

    while (v58);
  }

  memptr = 0;
  if (a8 <= 1)
  {
    v65 = 1;
  }

  else
  {
    v65 = a8;
  }

  malloc_type_posix_memalign(&memptr, 0x20uLL, 32 * v65, 0x1000040E0EAB150uLL);
  v115 = 0;
  if (v19)
  {
    if (a8)
    {
      v66 = 0;
      v67.i64[0] = 0x7F0000007FLL;
      v67.i64[1] = 0x7F0000007FLL;
      v68.i64[0] = 0x7F0000007FLL;
      v68.i64[1] = 0x7F0000007FLL;
      v111 = vnegq_f32(v67);
      v113 = v68;
      do
      {
        v69 = (v121[0] + 32 * *(v43 + 4 * v66));
        v70 = *v69;
        v71 = v69[1];
        if ((vmovn_s32(vcgtq_f32(*v69, v71)).u8[0] & 1) == 0 && v71.f32[1] >= v70.f32[1] && v71.f32[2] >= v70.f32[2])
        {
          v73 = 0;
          v74.i64[0] = 0x7F0000007FLL;
          v74.i64[1] = 0x7F0000007FLL;
          v75 = vnegq_f32(v74);
          do
          {
            v76 = v75;
            v77 = v74;
            if (v73)
            {
              v78 = v70.f32[0];
            }

            else
            {
              v78 = v71.f32[0];
            }

            if ((v73 & 2) != 0)
            {
              v79 = v70.f32[1];
            }

            else
            {
              v79 = v71.f32[1];
            }

            if (v73 >= 4)
            {
              v80 = v70.f32[2];
            }

            else
            {
              v80 = v71.f32[2];
            }

            v81 = vaddq_f32(*(v19 + (v66 << 6) + 48), vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(*(v19 + (v66 << 6)), v78), *(v19 + (v66 << 6) + 16), v79), *(v19 + (v66 << 6) + 32), v80));
            v82 = v76;
            v82.i32[3] = 0;
            v81.i32[3] = 0;
            v83 = vminnmq_f32(v82, v81);
            v75 = v83;
            v75.i32[3] = v76.i32[3];
            v84 = v77;
            v84.i32[3] = 0;
            v85 = vmaxnmq_f32(v84, v81);
            v74 = v85;
            v74.i32[3] = v77.i32[3];
            ++v73;
          }

          while (v73 != 8);
          v86 = v111;
          v86.i32[3] = 0;
          v75.i32[3] = 0;
          v87 = v113;
          v87.i32[3] = 0;
          v74.i32[3] = 0;
          v88 = vminnmq_f32(v86, v75);
          v89 = vmaxnmq_f32(v87, v74);
          v88.i32[3] = v111.i32[3];
          v89.i32[3] = v113.i32[3];
          v90 = v115++;
          v91 = memptr + 32 * v90;
          *v91 = v83.i64[0];
          *(v91 + 2) = v83.i32[2];
          *(v91 + 3) = v66;
          *(v91 + 2) = v85.i64[0];
          *(v91 + 6) = v85.i32[2];
          *(v91 + 7) = 0;
          v111 = v88;
          v113 = v89;
        }

        ++v66;
      }

      while (v66 != a8);
    }
  }

  else if (a8)
  {
    v92 = 0;
    v93.i64[0] = 0x7F0000007FLL;
    v93.i64[1] = 0x7F0000007FLL;
    v94.i64[0] = 0x7F0000007FLL;
    v94.i64[1] = 0x7F0000007FLL;
    v112 = vnegq_f32(v93);
    v114 = v94;
    do
    {
      v95 = v121[0] + 32 * *(v43 + 4 * v92);
      v97 = *v95;
      v96 = *(v95 + 1);
      v98 = vcgt_f32(*v95, *&v96);
      if ((v98.i8[0] & 1) == 0 && (v98.i8[4] & 1) == 0 && *(&v96 + 2) >= *(&v97 + 2))
      {
        v99 = v112;
        v99.i32[3] = 0;
        v100 = *v95;
        v100.i32[3] = 0;
        v101 = vminnmq_f32(v99, v100);
        v102 = v114;
        v102.i32[3] = 0;
        v103 = *(v95 + 1);
        v103.i32[3] = 0;
        v104 = vmaxnmq_f32(v102, v103);
        v101.i32[3] = v112.i32[3];
        v104.i32[3] = v114.i32[3];
        v105 = v115++;
        v106 = memptr + 32 * v105;
        *v106 = v97;
        *(v106 + 2) = DWORD2(v97);
        *(v106 + 3) = v92;
        *(v106 + 2) = v96;
        *(v106 + 6) = DWORD2(v96);
        *(v106 + 7) = 0;
        v112 = v101;
        v114 = v104;
      }

      ++v92;
    }

    while (a8 != v92);
  }

  kdebug_trace();
  sub_239E05F90();
  v107 = *(a1 + 12);
  if (v107)
  {
    if (v107 == 1)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_239E08920(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      sub_239DEDF38();
    }

    v10 = v5 - *a1;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_239E162F0(a1, v11);
    }

    v12 = (32 * v8);
    v13 = a2[1];
    *v12 = *a2;
    v12[1] = v13;
    v7 = 32 * v8 + 32;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy(v12 - v14, *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    v7 = (v4 + 2);
  }

  *(a1 + 8) = v7;
}

uint64_t sub_239E089F8(uint64_t a1)
{
  kdebug_trace();
  v2 = *(a1 + 144);
  v3 = *(a1 + 48);
  v5 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 40) + 24), v4, 0);
  sub_239E006FC(v3, v2, v5, *(*(a1 + 64) + 32));
  v6 = *(a1 + 72);
  v7 = *(a1 + 148);
  v9 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 48) + 24), v8, 0);
  sub_239E006FC(v6, v7, v9, *(*(a1 + 80) + 32));
  v10 = *(a1 + 88);
  v11 = (*(*(a1 + 96) + 8) - **(a1 + 96));
  v13 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 56) + 24), v12, 0);
  sub_239E006FC(v10, v11, v13, *(*(a1 + 104) + 32));
  v14 = *(a1 + 112);
  v15 = (*(*(a1 + 96) + 32) - *(*(a1 + 96) + 24));
  v17 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 64) + 24), v16, 0);
  sub_239E006FC(v14, v15, v17, *(*(a1 + 120) + 32));
  v18 = *(a1 + 128);
  v19 = (*(*(a1 + 96) + 56) - *(*(a1 + 96) + 48));
  v21 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 72) + 24), v20, 0);
  sub_239E006FC(v18, v19, v21, *(*(a1 + 136) + 32));
  objc_msgSend_setSignaledValue_(*(a1 + 32), v22, 2);
  munmap(*(a1 + 48), *(a1 + 144));
  munmap(*(a1 + 72), *(a1 + 148));
  v23 = *(a1 + 96);
  if (v23)
  {
    v24 = *(v23 + 48);
    if (v24)
    {
      *(v23 + 56) = v24;
      operator delete(v24);
    }

    v25 = *(v23 + 24);
    if (v25)
    {
      *(v23 + 32) = v25;
      operator delete(v25);
    }

    v26 = *v23;
    if (*v23)
    {
      *(v23 + 8) = v26;
      operator delete(v26);
    }

    MEMORY[0x23EE7D780](v23, 0x10C40E523AF1CLL);
  }

  v27 = *(a1 + 56);
  add = atomic_fetch_add(v27 + 2, 0xFFFFFFFF);
  if (v27 && add == 1)
  {
    (*(*v27 + 8))(v27);
  }

  sub_239E18C24(*(a1 + 64));
  sub_239E18C24(*(a1 + 80));
  sub_239E18C24(*(a1 + 104));
  sub_239E18C24(*(a1 + 120));
  sub_239E18C24(*(a1 + 136));

  return kdebug_trace();
}

uint64_t sub_239E08C68(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int **a6, uint64_t a7, NSObject *a8, float32x4_t *a9)
{
  if (a7 == 1)
  {
    v16 = 4;
  }

  else
  {
    v16 = 3;
  }

  v17 = *a2;
  v18 = a2[1];
  v20 = (v18 - v17) >> 3;
  v21 = 0;
  if (v18 != v17)
  {
    v22 = *a6;
    if (v20 <= 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = (v18 - v17) >> 3;
    }

    do
    {
      v24 = *v22++;
      v21 += v16 * v24;
      --v23;
    }

    while (v23);
  }

  v108 = 0;
  v109 = 0;
  v110 = 0;
  sub_239E15CC0(&v108, v17, v18, v20);
  v111 = 0;
  v112 = 0;
  v113 = 0;
  sub_239E15D78(&v111, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 2);
  v114 = 0;
  v115 = 0;
  v116 = 0;
  sub_239E15CC0(&v114, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 3);
  __p = 0;
  v118 = 0;
  v119 = 0;
  sub_239E15D78(&__p, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 2);
  v25 = 1.0;
  if (*(a1 + 12) == 3)
  {
    v25 = 2.0;
  }

  v26 = (v25 * (v21 / v16));
  memptr = 0;
  malloc_type_posix_memalign(&memptr, 0x20uLL, 32 * v26, 0x1000040E0EAB150uLL);
  v28.i64[0] = 0x7F0000007FLL;
  v28.i64[1] = 0x7F0000007FLL;
  v29 = vnegq_f32(v28);
  *a9 = v29;
  a9[1] = v28;
  v31 = *a2;
  v30 = a2[1];
  if (a7)
  {
    if (v30 != *a2)
    {
      v32 = 0;
      v33 = 0;
      do
      {
        v34 = (*a6)[v33];
        if (v34)
        {
          v35 = 0;
          for (i = 0; i != v34; ++i)
          {
            v37 = v35 + 1;
            v38 = v35 + 2;
            v39 = v35 + 3;
            v40 = *(v114 + v33);
            if (v40)
            {
              if (*(__p + v33) == 4)
              {
                v41 = *(v40 + 4 * v35);
                v37 = *(v40 + 4 * v37);
                v38 = *(v40 + 4 * v38);
                v39 = *(v40 + 4 * v39);
              }

              else
              {
                v41 = *(v40 + 2 * v35);
                v37 = *(v40 + 2 * v37);
                v38 = *(v40 + 2 * v38);
                v39 = *(v40 + 2 * v39);
              }
            }

            else
            {
              v41 = v35;
            }

            v42 = *(v108 + v33);
            v43 = *(v111 + v33);
            v44 = v42 + v43 * v41;
            v28.i64[0] = *v44;
            v28.i32[2] = *(v44 + 8);
            v45 = v42 + v43 * v37;
            v29.i64[0] = *v45;
            v29.i32[2] = *(v45 + 8);
            v46 = v42 + v43 * v38;
            v27.i64[0] = *v46;
            v27.i32[2] = *(v46 + 8);
            v47 = vsubq_f32(v29, v28);
            v48 = vsubq_f32(v27, v28);
            v49 = vmlaq_f32(vnegq_f32(vmulq_f32(v47, vextq_s8(vuzp1q_s32(v48, v48), v48, 0xCuLL))), v48, vextq_s8(vuzp1q_s32(v47, v47), v47, 0xCuLL));
            v50 = vmulq_f32(v49, v49);
            if (sqrtf(v50.f32[1] + (v50.f32[2] + v50.f32[0])) != 0.0)
            {
              v51 = v42 + v43 * v39;
              v52.i64[0] = *v51;
              v28.i32[3] = 0;
              v29.i32[3] = 0;
              v53 = vminnmq_f32(v28, v29);
              v54 = vmaxnmq_f32(v28, v29);
              v53.i32[3] = 0;
              v27.i32[3] = 0;
              v55 = vminnmq_f32(v53, v27);
              v54.i32[3] = 0;
              v56 = vmaxnmq_f32(v54, v27);
              v55.i32[3] = 0;
              v52.i64[1] = *(v51 + 8);
              v29 = vminnmq_f32(v55, v52);
              v56.i32[3] = 0;
              v28 = vmaxnmq_f32(v56, v52);
              v57 = *a9;
              v58 = a9[1];
              v57.i32[3] = 0;
              v59 = v29;
              v59.i32[3] = 0;
              v27 = vminnmq_f32(v57, v59);
              v58.i32[3] = 0;
              v60 = v28;
              v60.i32[3] = 0;
              v61 = vmaxnmq_f32(v58, v60);
              a9->i32[2] = v27.i32[2];
              a9[1].i32[2] = v61.i32[2];
              a9->i64[0] = v27.i64[0];
              a9[1].i64[0] = v61.i64[0];
              v62 = v32++;
              v106 = v32;
              v63 = memptr + 32 * v62;
              *v63 = v29.i64[0];
              *(v63 + 2) = v29.i32[2];
              *(v63 + 3) = i;
              *(v63 + 2) = v28.i64[0];
              *(v63 + 6) = v28.i32[2];
              *(v63 + 7) = v33;
            }

            v35 += 4;
          }

          v31 = *a2;
          v30 = a2[1];
        }

        ++v33;
      }

      while (v33 < (v30 - v31) >> 3);
      goto LABEL_43;
    }

LABEL_42:
    v32 = 0;
    goto LABEL_43;
  }

  if (v30 == *a2)
  {
    goto LABEL_42;
  }

  v32 = 0;
  v64 = 0;
  do
  {
    v65 = (*a6)[v64];
    if (v65)
    {
      v66 = 0;
      for (j = 0; j != v65; ++j)
      {
        v68 = v66 + 1;
        v69 = v66 + 2;
        v70 = *(v114 + v64);
        if (v70)
        {
          if (*(__p + v64) == 4)
          {
            v71 = *(v70 + 4 * v66);
            v68 = *(v70 + 4 * v68);
            v69 = *(v70 + 4 * v69);
          }

          else
          {
            v71 = *(v70 + 2 * v66);
            v68 = *(v70 + 2 * v68);
            v69 = *(v70 + 2 * v69);
          }
        }

        else
        {
          v71 = v66;
        }

        v72 = *(v108 + v64);
        v73 = *(v111 + v64);
        v74 = v72 + v73 * v71;
        v28.i64[0] = *v74;
        v28.i32[2] = *(v74 + 8);
        v75 = v72 + v73 * v68;
        v29.i64[0] = *v75;
        v29.i32[2] = *(v75 + 8);
        v76 = v72 + v73 * v69;
        v27.i64[0] = *v76;
        v27.i32[2] = *(v76 + 8);
        v77 = vsubq_f32(v29, v28);
        v78 = vsubq_f32(v27, v28);
        v79 = vmlaq_f32(vnegq_f32(vmulq_f32(v77, vextq_s8(vuzp1q_s32(v78, v78), v78, 0xCuLL))), v78, vextq_s8(vuzp1q_s32(v77, v77), v77, 0xCuLL));
        v80 = vmulq_f32(v79, v79);
        if (sqrtf(v80.f32[1] + (v80.f32[2] + v80.f32[0])) != 0.0)
        {
          v28.i32[3] = 0;
          v29.i32[3] = 0;
          v81 = vminnmq_f32(v28, v29);
          v82 = vmaxnmq_f32(v28, v29);
          v81.i32[3] = 0;
          v27.i32[3] = 0;
          v29 = vminnmq_f32(v81, v27);
          v82.i32[3] = 0;
          v28 = vmaxnmq_f32(v82, v27);
          v83 = *a9;
          v84 = a9[1];
          v83.i32[3] = 0;
          v85 = v29;
          v85.i32[3] = 0;
          v27 = vminnmq_f32(v83, v85);
          v84.i32[3] = 0;
          v86 = v28;
          v86.i32[3] = 0;
          v87 = vmaxnmq_f32(v84, v86);
          a9->i32[2] = v27.i32[2];
          a9[1].i32[2] = v87.i32[2];
          a9->i64[0] = v27.i64[0];
          a9[1].i64[0] = v87.i64[0];
          v88 = v32++;
          v106 = v32;
          v89 = memptr + 32 * v88;
          *v89 = v29.i64[0];
          *(v89 + 2) = v29.i32[2];
          *(v89 + 3) = j;
          *(v89 + 2) = v28.i64[0];
          *(v89 + 6) = v28.i32[2];
          *(v89 + 7) = v64;
        }

        v66 += 3;
      }

      v31 = *a2;
      v30 = a2[1];
    }

    ++v64;
  }

  while (v64 < (v30 - v31) >> 3);
LABEL_43:
  v90 = *(a1 + 12);
  if (v90 > 1)
  {
    if (v90 == 2)
    {
      operator new();
    }

    if (v90 == 3)
    {
      operator new();
    }
  }

  else
  {
    if (!v90)
    {
      operator new();
    }

    if (v90 == 1)
    {
      operator new();
    }
  }

  v105 = 0;
  v91 = sub_239E05840(0, memptr, v32, v26, &v105, *a9, a9[1]);
  v122 = v91;
  v104 = 0;
  v106 = 0;
  v120[0] = &v104;
  v120[1] = &v106;
  *&v121 = &v122;
  sub_239E05960();
  v94 = *(a1 + 52);
  if (v94 == 4)
  {
    v95 = 192;
  }

  else
  {
    v95 = 320;
  }

  if (v94 == 4)
  {
    v96 = 192;
  }

  else
  {
    v96 = 384;
  }

  v97 = v95 * HIDWORD(v104);
  v98 = v95 * HIDWORD(v104) + v96 * v106;
  v120[0] = 0;
  if (v98)
  {
    malloc_type_posix_memalign(v120, 0x40uLL, v98, 0x9CCB6776uLL);
    v99 = v120[0];
    if (!v120[0])
    {
      v102 = 0;
      goto LABEL_67;
    }

    v94 = *(a1 + 52);
  }

  else
  {
    v99 = 0;
  }

  v100 = v99 + v97;
  if (v94 == 4)
  {
    v101 = sub_239E09514(a1, v91, memptr, v99, v100, &v108, v92, v93);
  }

  else
  {
    v101 = sub_239E095D8(a1, v91, memptr, v99, v100, &v108, v92, v93);
  }

  v102 = v101;
LABEL_67:
  free(memptr);
  free(v91);
  if (__p)
  {
    v118 = __p;
    operator delete(__p);
  }

  if (v114)
  {
    v115 = v114;
    operator delete(v114);
  }

  if (v111)
  {
    v112 = v111;
    operator delete(v111);
  }

  if (v108)
  {
    v109 = v108;
    operator delete(v108);
  }

  return v102;
}

void sub_239E09480(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  MEMORY[0x23EE7D780](v20, 0x1091C4093A1021FLL, a3, a4, a5, a6, a7, a8);
  sub_239DFDEDC(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_239E09514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = a3;
  v20 = a2;
  v18 = a4 + 192;
  v17 = a5;
  v8 = *(a2 + 28);
  if (v8 <= 0)
  {
    v14 = &v20;
    v15 = &v18;
    v9 = a5 | ((3 - v8) >> 2) | 0x10;
    v16 = &v17;
    v11 = &v20;
    v12 = &v19;
    v13 = a6;
    a4 = a5;
  }

  else
  {
    v9 = a4;
    v14 = &v20;
    v15 = &v18;
    v16 = &v17;
    v11 = &v20;
    v12 = &v19;
    v13 = a6;
  }

  sub_239E16338(a1, a2, 0, a4, &v14, &v11);
  return v9;
}

uint64_t sub_239E095D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = a3;
  v20 = a2;
  v18 = a4 + 320;
  v17 = a5;
  v8 = *(a2 + 28);
  if (v8 <= 0)
  {
    v14 = &v20;
    v15 = &v18;
    v9 = a5 | ((7 - v8) >> 3) | 0x10;
    v16 = &v17;
    v11 = &v20;
    v12 = &v19;
    v13 = a6;
    a4 = a5;
  }

  else
  {
    v9 = a4;
    v14 = &v20;
    v15 = &v18;
    v16 = &v17;
    v11 = &v20;
    v12 = &v19;
    v13 = a6;
  }

  sub_239E167C4(a1, a2, 0, a4, &v14, &v11);
  return v9;
}

void sub_239E0969C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, NSObject *a6, float32x4_t *a7)
{
  memset(__p, 0, sizeof(__p));
  if (a2)
  {
    sub_239E09C24(__p, a5);
    if (a5)
    {
      v12 = a2 + 32;
      v13 = 32;
      v14 = a5;
      do
      {
        v59 = __invert_f4(*(v12 - 32));
        *(__p[0] + v13 - 32) = v59;
        v13 += 64;
        v12 += 64;
        --v14;
      }

      while (v14);
    }
  }

  memptr = 0;
  if (a5 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = a5;
  }

  malloc_type_posix_memalign(&memptr, 0x20uLL, 32 * v15, 0x1000040E0EAB150uLL);
  v18.i64[0] = 0x7F0000007FLL;
  v18.i64[1] = 0x7F0000007FLL;
  *a7 = vnegq_f32(v18);
  a7[1] = v18;
  if (a2)
  {
    if (a5)
    {
      v19 = 0;
      v20 = 0;
      do
      {
        objc_msgSend_boundingBox(*(a4 + 8 * v20), v16, v17);
        if ((vmovn_s32(vcgtq_f32(v21, v22)).u8[0] & 1) == 0 && v22.f32[1] >= v21.f32[1] && v22.f32[2] >= v21.f32[2])
        {
          v24 = 0;
          v25.i64[0] = 0x7F0000007FLL;
          v25.i64[1] = 0x7F0000007FLL;
          v26 = vnegq_f32(v25);
          do
          {
            v27 = v26;
            v28 = v25;
            if (v24)
            {
              v29 = v21.f32[0];
            }

            else
            {
              v29 = v22.f32[0];
            }

            if ((v24 & 2) != 0)
            {
              v30 = v21.f32[1];
            }

            else
            {
              v30 = v22.f32[1];
            }

            if (v24 >= 4)
            {
              v31 = v21.f32[2];
            }

            else
            {
              v31 = v22.f32[2];
            }

            v32 = vaddq_f32(*(a2 + (v20 << 6) + 48), vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(*(a2 + (v20 << 6)), v29), *(a2 + (v20 << 6) + 16), v30), *(a2 + (v20 << 6) + 32), v31));
            v33 = v27;
            v33.i32[3] = 0;
            v32.i32[3] = 0;
            v34 = vminnmq_f32(v33, v32);
            v26 = v34;
            v26.i32[3] = v27.i32[3];
            v35 = v28;
            v35.i32[3] = 0;
            v36 = vmaxnmq_f32(v35, v32);
            v25 = v36;
            v25.i32[3] = v28.i32[3];
            ++v24;
          }

          while (v24 != 8);
          v37 = *a7;
          v38 = a7[1];
          v37.i32[3] = 0;
          v26.i32[3] = 0;
          v39 = vminnmq_f32(v37, v26);
          v38.i32[3] = 0;
          v25.i32[3] = 0;
          v40 = vmaxnmq_f32(v38, v25);
          a7->i32[2] = v39.i32[2];
          a7[1].i32[2] = v40.i32[2];
          a7->i64[0] = v39.i64[0];
          a7[1].i64[0] = v40.i64[0];
          v41 = v19++;
          v42 = memptr + 32 * v41;
          *v42 = v34.i64[0];
          *(v42 + 2) = v34.i32[2];
          *(v42 + 3) = v20;
          *(v42 + 2) = v36.i64[0];
          *(v42 + 6) = v36.i32[2];
          *(v42 + 7) = 0;
        }

        ++v20;
      }

      while (v20 != a5);
    }
  }

  else if (a5)
  {
    v43 = 0;
    v44 = 0;
    do
    {
      objc_msgSend_boundingBox(*(a4 + 8 * v44), v16, v17);
      v47 = vcgt_f32(*v45.f32, *v46.f32);
      if ((v47.i8[0] & 1) == 0 && (v47.i8[4] & 1) == 0 && v46.f32[2] >= v45.f32[2])
      {
        v48 = *a7;
        v49 = a7[1];
        v48.i32[3] = 0;
        v50 = v45;
        v50.i32[3] = 0;
        v51 = vminnmq_f32(v48, v50);
        v49.i32[3] = 0;
        v52 = v46;
        v52.i32[3] = 0;
        a7->i32[2] = v51.i32[2];
        v53 = vmaxnmq_f32(v49, v52);
        a7->i64[0] = v51.i64[0];
        a7[1].i32[2] = v53.i32[2];
        a7[1].i64[0] = v53.i64[0];
        v54 = v43++;
        v55 = memptr + 32 * v54;
        *v55 = v45.i64[0];
        *(v55 + 2) = v45.i32[2];
        *(v55 + 3) = v44;
        *(v55 + 2) = v46.i64[0];
        *(v55 + 6) = v46.i32[2];
        *(v55 + 7) = 0;
      }

      ++v44;
    }

    while (a5 != v44);
  }

  v56 = *(a1 + 12);
  if (v56 != 1)
  {
    if (!v56)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_239E09BE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_239E09C24(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 6;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + (a2 << 6);
    }
  }

  else
  {
    sub_239E16C78(result, a2 - v2);
  }
}

uint64_t sub_239E09C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = a3;
  v21 = a2;
  v18 = a7;
  v19 = a6;
  v17 = a4 + 192;
  v16 = a5;
  if (*(a2 + 28) <= 0)
  {
    v7 = a5 | 0x20;
    v13 = &v21;
    v14 = &v17;
    v15 = &v16;
    v9 = &v21;
    v10 = &v20;
    v11 = &v18;
    v12 = &v19;
    a4 = a5;
  }

  else
  {
    v7 = a4;
    v13 = &v21;
    v14 = &v17;
    v15 = &v16;
    v9 = &v21;
    v10 = &v20;
    v11 = &v18;
    v12 = &v19;
  }

  sub_239E16DD4(a1, a2, 0, a4, &v13, &v9);
  return v7;
}

uint64_t sub_239E09D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = a3;
  v21 = a2;
  v18 = a7;
  v19 = a6;
  v17 = a4 + 320;
  v16 = a5;
  if (*(a2 + 28) <= 0)
  {
    v7 = a5 | 0x20;
    v13 = &v21;
    v14 = &v17;
    v15 = &v16;
    v9 = &v21;
    v10 = &v20;
    v11 = &v18;
    v12 = &v19;
    a4 = a5;
  }

  else
  {
    v7 = a4;
    v13 = &v21;
    v14 = &v17;
    v15 = &v16;
    v9 = &v21;
    v10 = &v20;
    v11 = &v18;
    v12 = &v19;
  }

  sub_239E1714C(a1, a2, 0, a4, &v13, &v9);
  return v7;
}

uint64_t sub_239E09DE4(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v27 = a3;
  v28 = a2;
  v25 = a5;
  v26 = a4;
  v24 = a6;
  v22 = 0;
  v23 = 2;
  v20 = a7;
  v21 = a6;
  v18 = a9;
  v19 = a8;
  v9 = a2[7] > 0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  v10 = a2[1];
  v11 = a2[2];
  v12 = a2[4];
  v13 = a2[5];
  v14 = a2[6];
  *(a4 + 16) = *a2;
  *(a4 + 24) = v10;
  *(a4 + 32) = v11;
  *(a4 + 40) = v12;
  *(a4 + 48) = v13;
  *(a4 + 56) = v14;
  *a4 = v9;
  v17[0] = &v28;
  v17[1] = &v19;
  v17[2] = &v18;
  v17[3] = &v26;
  v17[4] = &v23;
  v17[5] = &v22;
  v16[0] = &v28;
  v16[1] = &v19;
  v16[2] = &v18;
  v16[3] = &v25;
  v16[4] = &v21;
  v16[5] = &v24;
  v16[6] = &v27;
  v16[7] = &v20;
  return sub_239E09EC0(a1, a2, v9 << 32, 0x100000000, v17, v16);
}

uint64_t sub_239E09EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39[1] = *MEMORY[0x277D85DE8];
  result = MEMORY[0x28223BE20]();
  v13 = &v39[-2 * v12];
  v39[0] = v13;
  while (1)
  {
    if (*(a2 + 32 * v10 + 28) < 1)
    {
      v14 = *a6;
      v15 = *(a6 + 8);
      v16 = *v15;
      *v16 = HIDWORD(v11);
      v17 = *v14;
      *v15 = v16 + 1;
      v18 = *(a6 + 16);
      v19 = *v18;
      *v19 = -HIDWORD(v10);
      v20 = v17 + 32 * v10;
      *v18 = v19 + 1;
      v21 = (**(a6 + 24) + 16 * (v10 >> 32));
      LODWORD(v19) = *(v20 + 28);
      v22 = -v19;
      v23 = (**(a6 + 32) - **(a6 + 40)) >> 2;
      *v21 = v22;
      v21[1] = v23;
      v21[2] = v11;
      v21[3] = 0;
      if (v19)
      {
        v24 = **(a6 + 48);
        v25 = *(v20 + 12);
        v26 = 32 * v22;
        v27 = v24 + 32 * v25;
        v28 = 32 * v25;
        v29 = (v27 + 12);
        v30 = v26;
        do
        {
          v31 = *v29;
          v29 += 8;
          v32 = *(a6 + 32);
          v33 = *v32;
          *v33 = v31;
          *v32 = v33 + 1;
          v30 -= 32;
        }

        while (v30);
        v34 = (v24 + v28 + 28);
        do
        {
          v35 = *v34;
          v34 += 8;
          v36 = *(a6 + 56);
          v37 = *v36;
          *v37 = v35;
          *v36 = v37 + 1;
          v26 -= 32;
        }

        while (v26);
      }
    }

    else
    {
      result = sub_239E174D4(a5, v10, v11, v39);
    }

    v38 = v39[0];
    if (v39[0] == v13)
    {
      break;
    }

    v39[0] -= 2;
    v10 = *(v38 - 2);
    v11 = *(v38 - 1);
  }

  return result;
}

uint64_t sub_239E0A06C(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a3;
  v24 = a2;
  v21 = a6;
  v22 = a5;
  v19 = 0;
  v20 = 2;
  v17 = a8;
  v18 = a7;
  v8 = a2[7] > 0;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[4];
  v12 = a2[5];
  v13 = a2[6];
  *(a5 + 16) = *a2;
  *(a5 + 24) = v9;
  *(a5 + 32) = v10;
  *(a5 + 40) = v11;
  *(a5 + 48) = v12;
  *(a5 + 56) = v13;
  *a5 = v8;
  v16[0] = &v24;
  v16[1] = &v18;
  v16[2] = &v17;
  v16[3] = &v22;
  v16[4] = &v20;
  v16[5] = &v19;
  v15[0] = &v24;
  v15[1] = &v18;
  v15[2] = &v17;
  v15[3] = &v21;
  v15[4] = &v23;
  return sub_239E0A12C(a1, a2, v8 << 32, 0x100000000, v16, v15);
}

uint64_t sub_239E0A12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22[1] = *MEMORY[0x277D85DE8];
  result = MEMORY[0x28223BE20]();
  v13 = &v22[-2 * v12];
  v22[0] = v13;
  while (1)
  {
    if (*(a2 + 32 * v10 + 28) < 1)
    {
      v14 = *(a6 + 8);
      v15 = **a6 + 32 * v10;
      v16 = *v14;
      *v16 = HIDWORD(v11);
      *v14 = v16 + 1;
      v17 = *(a6 + 16);
      v18 = *v17;
      *v18 = -HIDWORD(v10);
      *v17 = v18 + 1;
      v19 = *(v15 + 28) ? *(**(a6 + 32) + 32 * *(v15 + 12) + 12) : -1;
      v20 = (**(a6 + 24) + 8 * (v10 >> 32));
      *v20 = v19;
      v20[1] = v11;
    }

    else
    {
      result = sub_239E174D4(a5, v10, v11, v22);
    }

    v21 = v22[0];
    if (v22[0] == v13)
    {
      break;
    }

    v22[0] -= 2;
    v10 = *(v21 - 2);
    v11 = *(v21 - 1);
  }

  return result;
}

__n128 sub_239E0A278(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  v4 = *(a2 + 16);
  result = *(a2 + 32);
  *(a1 + 8) = *a2;
  *(a1 + 24) = v4;
  *(a1 + 40) = result;
  *(a1 + 56) = v2;
  *a1 = &unk_284D08698;
  return result;
}

__n128 sub_239E0A2BC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 56) = *(a2 + 48);
  *(a1 + 40) = v4;
  *(a1 + 24) = v3;
  *(a1 + 8) = result;
  *a1 = &unk_284D08698;
  return result;
}

void sub_239E0A310(uint64_t a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, int a8, void *a9, uint64_t a10, unsigned int a11)
{
  v11 = a3;
  v266 = *MEMORY[0x277D85DE8];
  if (*(*(a2 + 4) + 40))
  {
    sub_239E24B58(a1, a2);
  }

  v220 = objc_msgSend_date(MEMORY[0x277CBEAA8], a2, a3);
  v224 = *(a2 + 2);
  v222 = *(a2 + 3);
  if (a10 == 1)
  {
    v13 = 4;
  }

  else
  {
    v13 = 3;
  }

  v259 = 0;
  v258 = 0;
  v260 = 0;
  v256 = 0;
  v255 = 0;
  v257 = 0;
  v253 = 0;
  v252 = 0;
  v254 = 0;
  v250 = 0;
  v249 = 0;
  v251 = 0;
  v231 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0;
  v15 = 0;
  v232 = 0;
  v234 = 0;
  v223 = v13 * a5;
  v225 = v11;
  for (i = objc_msgSend_count(v11, v16, v17); v14 < i; i = objc_msgSend_count(v225, v67, v68))
  {
    v21 = objc_msgSend_objectAtIndexedSubscript_(v11, v19, v14);
    v23 = objc_msgSend_objectAtIndexedSubscript_(a4, v22, v14);
    v26 = objc_msgSend_unsignedIntegerValue(v23, v24, v25);
    v28 = objc_msgSend_objectAtIndexedSubscript_(a6, v27, v14);
    v29 = v13;
    v31 = objc_msgSend_objectAtIndexedSubscript_(a7, v30, v14);
    v34 = objc_msgSend_unsignedIntegerValue(v31, v32, v33);
    v245[0] = 0;
    v261[0] = 0;
    v36 = objc_msgSend_objectAtIndexedSubscript_(a9, v35, v14);
    v39 = objc_msgSend_unsignedIntegerValue(v36, v37, v38);
    if (objc_msgSend_storageMode(v21, v40, v41) == 2)
    {
      v45 = objc_msgSend_length(v21, v42, v43) - v26;
      if (v28)
      {
        v46 = v45;
        v47 = objc_msgSend_newBufferWithLength_options_(v224, v44, v45, 0);
      }

      else
      {
        v46 = v223 * v39;
        v47 = objc_msgSend_newBufferWithLength_options_(v224, v44, v223 * v39, 0);
      }

      v50 = v47;
      if (!v234)
      {
        v234 = objc_msgSend_commandBuffer(v222, v48, v49);
        v232 = objc_msgSend_blitCommandEncoder(v234, v51, v52);
      }

      objc_msgSend_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size_(v232, v48, v21, v26, v50, 0, v46);
      v55 = objc_msgSend_contents(v50, v53, v54);
    }

    else
    {
      v50 = 0;
      v55 = (objc_msgSend_contents(v21, v42, v43) + v26);
    }

    v245[0] = v55;
    if (v28)
    {
      if (objc_msgSend_storageMode(v28, v56, v57) == 2)
      {
        v62 = objc_msgSend_newBufferWithLength_options_(v224, v58, 4 * v39 * v29, 0);
        if (!v234)
        {
          v234 = objc_msgSend_commandBuffer(v222, v60, v61);
          v232 = objc_msgSend_blitCommandEncoder(v234, v63, v64);
        }

        objc_msgSend_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size_(v232, v60, v28, v34, v62, 0, 4 * v39 * v29);
        v261[0] = objc_msgSend_contents(v62, v65, v66);
      }

      else
      {
        v62 = 0;
        v261[0] = (objc_msgSend_contents(v28, v58, v59) + v34);
      }
    }

    else
    {
      v62 = 0;
    }

    sub_239DEDD74(&v258, v245);
    LODWORD(__p[0]) = a5;
    sub_239DEDE48(&v255, __p);
    sub_239DEDD74(&v252, v261);
    LODWORD(__p[0]) = a8;
    sub_239DEDE48(&v249, __p);
    if (v50)
    {
      objc_msgSend_addObject_(v231, v67, v50);
    }

    if (v62)
    {
      objc_msgSend_addObject_(v231, v67, v62);
    }

    v15 += v39 * v29;
    v13 = v29;
    ++v14;
    v11 = v225;
  }

  if (v234)
  {
    objc_msgSend_endEncoding(v232, v19, v20);
    objc_msgSend_commit(v234, v69, v70);
    kdebug_trace();
    objc_msgSend_waitUntilCompleted(v234, v71, v72);
    kdebug_trace();
  }

  memset(v245, 0, sizeof(v245));
  sub_239E15CC0(v245, v258, v259, (v259 - v258) >> 3);
  memset(v246, 0, sizeof(v246));
  sub_239E15D78(v246, v255, v256, (v256 - v255) >> 2);
  memset(v247, 0, sizeof(v247));
  sub_239E15CC0(v247, v252, v253, (v253 - v252) >> 3);
  memset(v248, 0, sizeof(v248));
  sub_239E15D78(v248, v249, v250, (v250 - v249) >> 2);
  v75 = objc_msgSend_date(MEMORY[0x277CBEAA8], v73, v74);
  kdebug_trace();
  v76 = 1.0;
  if (*(a1 + 12) == 3)
  {
    v76 = 2.0;
  }

  v77 = (v76 * (v15 / v13));
  memptr = 0;
  v78 = 32 * v77;
  malloc_type_posix_memalign(&memptr, 0x20uLL, 32 * v77, 0x1000040E0EAB150uLL);
  v243 = 0;
  if (a10)
  {
    v81 = 0;
    v82.i64[0] = 0x7F0000007FLL;
    v82.i64[1] = 0x7F0000007FLL;
    v83.n128_u64[0] = 0x7F0000007FLL;
    v83.n128_u64[1] = 0x7F0000007FLL;
    v233 = vnegq_f32(v82);
    v235 = v83;
    while (v81 < objc_msgSend_count(v11, v79, v80))
    {
      v85 = objc_msgSend_objectAtIndexedSubscript_(a9, v84, v81);
      v88 = objc_msgSend_unsignedIntegerValue(v85, v86, v87);
      if (v88)
      {
        v92 = 0;
        v93 = 1;
        do
        {
          v94 = v92 + 1;
          v95 = v92 + 2;
          v96 = v92 + 3;
          v97 = *(v247[0] + v81);
          if (v97)
          {
            if (*(v248[0] + v81) == 4)
            {
              v98 = *(v97 + 4 * v92);
              v94 = *(v97 + 4 * v94);
              v95 = *(v97 + 4 * v95);
              v96 = *(v97 + 4 * v96);
            }

            else
            {
              v98 = *(v97 + 2 * v92);
              v94 = *(v97 + 2 * v94);
              v95 = *(v97 + 2 * v95);
              v96 = *(v97 + 2 * v96);
            }
          }

          else
          {
            v98 = v92;
          }

          v99 = *(v245[0] + v81);
          v100 = *(v246[0] + v81);
          v101 = v99 + v100 * v98;
          v89.i64[0] = *v101;
          v89.i32[2] = *(v101 + 8);
          v102 = v99 + v100 * v94;
          v91.i64[0] = *v102;
          v91.i32[2] = *(v102 + 8);
          v103 = v99 + v100 * v95;
          v90.i64[0] = *v103;
          v90.i32[2] = *(v103 + 8);
          v104 = vsubq_f32(v91, v89);
          v105 = vsubq_f32(v90, v89);
          v106 = vmlaq_f32(vnegq_f32(vmulq_f32(v104, vextq_s8(vuzp1q_s32(v105, v105), v105, 0xCuLL))), v105, vextq_s8(vuzp1q_s32(v104, v104), v104, 0xCuLL));
          v107 = vmulq_f32(v106, v106);
          if (sqrtf(v107.f32[1] + (v107.f32[2] + v107.f32[0])) != 0.0)
          {
            v108 = v99 + v100 * v96;
            v109.i64[0] = *v108;
            v89.i32[3] = 0;
            v91.i32[3] = 0;
            v110 = vminnmq_f32(v89, v91);
            v111 = vmaxnmq_f32(v89, v91);
            v110.i32[3] = 0;
            v90.i32[3] = 0;
            v112 = vminnmq_f32(v110, v90);
            v111.i32[3] = 0;
            v112.i32[3] = 0;
            v113 = vmaxnmq_f32(v111, v90);
            v109.i64[1] = *(v108 + 8);
            v114 = vminnmq_f32(v112, v109);
            v113.i32[3] = 0;
            v115 = vmaxnmq_f32(v113, v109);
            v116 = v233;
            v116.i32[3] = 0;
            v117 = v243++;
            v118 = memptr + 32 * v117;
            *(v118 + 2) = v114.i32[2];
            *v118 = v114.i64[0];
            v114.i32[3] = 0;
            v90 = vminnmq_f32(v116, v114);
            v91 = v235;
            v91.i32[3] = 0;
            *(v118 + 2) = v115.i64[0];
            *(v118 + 6) = v115.i32[2];
            v115.i32[3] = 0;
            v89 = vmaxnmq_f32(v91, v115);
            v90.i32[3] = v233.n128_i32[3];
            v89.i32[3] = v235.n128_i32[3];
            *(v118 + 3) = v93 - 1;
            *(v118 + 7) = v81;
            v233 = v90;
            v235 = v89;
          }

          v119 = v88 > v93++;
          v92 += 4;
        }

        while (v119);
      }

      ++v81;
    }
  }

  else
  {
    v120 = 0;
    v121.i64[0] = 0x7F0000007FLL;
    v121.i64[1] = 0x7F0000007FLL;
    v122.n128_u64[0] = 0x7F0000007FLL;
    v122.n128_u64[1] = 0x7F0000007FLL;
    v233 = vnegq_f32(v121);
    v235 = v122;
    while (v120 < objc_msgSend_count(v11, v79, v80))
    {
      v124 = objc_msgSend_objectAtIndexedSubscript_(a9, v123, v120);
      v127 = objc_msgSend_unsignedIntegerValue(v124, v125, v126);
      if (v127)
      {
        v131 = 0;
        v132 = 1;
        do
        {
          v133 = v131 + 1;
          v134 = v131 + 2;
          v135 = *(v247[0] + v120);
          if (v135)
          {
            if (*(v248[0] + v120) == 4)
            {
              v136 = *(v135 + 4 * v131);
              v133 = *(v135 + 4 * v133);
              v134 = *(v135 + 4 * v134);
            }

            else
            {
              v136 = *(v135 + 2 * v131);
              v133 = *(v135 + 2 * v133);
              v134 = *(v135 + 2 * v134);
            }
          }

          else
          {
            v136 = v131;
          }

          v137 = *(v245[0] + v120);
          v138 = *(v246[0] + v120);
          v139 = v137 + v138 * v136;
          v128.i64[0] = *v139;
          v128.i32[2] = *(v139 + 8);
          v140 = v137 + v138 * v133;
          v129.i64[0] = *v140;
          v129.i32[2] = *(v140 + 8);
          v141 = v137 + v138 * v134;
          v130.i64[0] = *v141;
          v130.i32[2] = *(v141 + 8);
          v142 = vsubq_f32(v129, v128);
          v143 = vsubq_f32(v130, v128);
          v144 = vmlaq_f32(vnegq_f32(vmulq_f32(v142, vextq_s8(vuzp1q_s32(v143, v143), v143, 0xCuLL))), v143, vextq_s8(vuzp1q_s32(v142, v142), v142, 0xCuLL));
          v145 = vmulq_f32(v144, v144);
          if (sqrtf(v145.f32[1] + (v145.f32[2] + v145.f32[0])) != 0.0)
          {
            v128.i32[3] = 0;
            v129.i32[3] = 0;
            v146 = vminnmq_f32(v128, v129);
            v146.i32[3] = 0;
            v147 = vmaxnmq_f32(v128, v129);
            v130.i32[3] = 0;
            v148 = vminnmq_f32(v146, v130);
            v147.i32[3] = 0;
            v149 = vmaxnmq_f32(v147, v130);
            v150 = v233;
            v150.i32[3] = 0;
            v151 = v243++;
            v152 = memptr + 32 * v151;
            *(v152 + 2) = v148.i32[2];
            *v152 = v148.i64[0];
            v148.i32[3] = 0;
            v129 = vminnmq_f32(v150, v148);
            v130 = v235;
            v130.i32[3] = 0;
            *(v152 + 2) = v149.i64[0];
            *(v152 + 6) = v149.i32[2];
            v149.i32[3] = 0;
            v128 = vmaxnmq_f32(v130, v149);
            v129.i32[3] = v233.n128_i32[3];
            v128.i32[3] = v235.n128_i32[3];
            *(v152 + 3) = v132 - 1;
            *(v152 + 7) = v120;
            v233 = v129;
            v235 = v128;
          }

          v119 = v127 > v132++;
          v131 += 3;
        }

        while (v119);
      }

      ++v120;
    }
  }

  kdebug_trace();
  objc_msgSend_timeIntervalSinceNow(v75, v153, v154);
  v155 = sub_239E05F90();
  v156 = *(a1 + 12);
  if (v156 > 1)
  {
    if (v156 == 2)
    {
      operator new();
    }

    if (v156 == 3)
    {
      operator new();
    }
  }

  else
  {
    if (!v156)
    {
      operator new();
    }

    if (v156 == 1)
    {
      operator new();
    }
  }

  dispatch_release(v155);
  v159 = objc_msgSend_date(MEMORY[0x277CBEAA8], v157, v158);
  kdebug_trace();
  v242 = 0;
  v160 = sub_239E05840(0, memptr, v243, v77, &v242, v233, v235);
  kdebug_trace();
  objc_msgSend_timeIntervalSinceNow(v159, v161, v162);
  if (*(a1 + 8) == 1)
  {
    v165 = objc_msgSend_date(MEMORY[0x277CBEAA8], v163, v164);
    v168 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v166, v167);
    v169 = *(a1 + 24);
    *v261 = *(a1 + 8);
    v262 = v169;
    v263 = *(a1 + 40);
    v264 = *(a1 + 56);
    sub_239DFA254(a1, v261, v160, v168, v263, v169);
    objc_msgSend_setObject_forKeyedSubscript_(v168, v170, @"CPU", @"BVH Builder");
    v172 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v171, @"{ %f, %f, %f }, { %f, %f, %f }", v233.n128_f32[0], v233.n128_f32[1], v233.n128_f32[2], v235.n128_f32[0], v235.n128_f32[1], v235.n128_f32[2], v220);
    objc_msgSend_setObject_forKeyedSubscript_(v168, v173, v172, @"Bounds");
    if (v160[7] >= 0)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v168, v174, @"Internal", @"BVH Root Node Type");
    }

    else
    {
      objc_msgSend_setObject_forKeyedSubscript_(v168, v174, @"Leaf", @"BVH Root Node Type");
    }

    v177 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v175, v176);
    objc_msgSend_setObject_forKeyedSubscript_(v168, v178, v177, @"Temporary Memory");
    v181 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v179, v180, vcvtd_n_f64_u64(v78, 0x14uLL));
    objc_msgSend_setObject_forKeyedSubscript_(v177, v182, v181, @"Fragments (mb)");
    v185 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v183, v184, vcvtd_n_f64_u64(32 * v242, 0x14uLL));
    objc_msgSend_setObject_forKeyedSubscript_(v177, v186, v185, @"Nodes (mb)");
    v240 = 0u;
    v241 = 0u;
    v238 = 0u;
    v239 = 0u;
    v190 = objc_msgSend_countByEnumeratingWithState_objects_count_(v177, v187, &v238, v265, 16);
    if (v190)
    {
      v191 = *v239;
      v192 = 0.0;
      do
      {
        for (j = 0; j != v190; ++j)
        {
          if (*v239 != v191)
          {
            objc_enumerationMutation(v177);
          }

          v194 = objc_msgSend_objectForKeyedSubscript_(v177, v188, *(*(&v238 + 1) + 8 * j));
          objc_msgSend_doubleValue(v194, v195, v196);
          v192 = v192 + v197;
        }

        v190 = objc_msgSend_countByEnumeratingWithState_objects_count_(v177, v188, &v238, v265, 16);
      }

      while (v190);
    }

    else
    {
      v192 = 0.0;
    }

    v198 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v188, v189, v192);
    objc_msgSend_setObject_forKeyedSubscript_(v177, v199, v198, @"Total (mb)");
    objc_msgSend_timeIntervalSinceNow(v165, v200, v201);
  }

  v202 = objc_msgSend_date(MEMORY[0x277CBEAA8], v163, v164);
  __p[0] = v160;
  v237 = 0;
  v243 = 0;
  v261[0] = &v237;
  v261[1] = &v243;
  v262.i64[0] = __p;
  sub_239E05960();
  objc_msgSend_timeIntervalSinceNow(v202, v203, v204);
  v205 = getpagesize();
  v206 = -v205;
  v207 = mmap(0, (v205 + (HIDWORD(v237) << 6) + 63) & -v205, 3, 4098, -1, 0);
  if (v207 == -1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v208 = v205 - 1;
  v209 = mmap(0, (v205 - 1 + 16 * v237) & v206, 3, 4098, -1, 0);
  if (v209 == -1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (((v208 + 4 * v243) & v206) != 0)
  {
    v210 = (v208 + 4 * v243) & v206;
  }

  else
  {
    v210 = v205;
  }

  v211 = mmap(0, v210, 3, 4098, -1, 0);
  if (v211 == -1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v214 = mmap(0, v210, 3, 4098, -1, 0);
  if (v214 == -1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v215 = objc_msgSend_date(MEMORY[0x277CBEAA8], v212, v213);
  v261[1] = 0;
  v261[0] = 0;
  v262.i64[0] = 0;
  memset(__p, 0, sizeof(__p));
  sub_239E04F58(v261, (v237 + HIDWORD(v237)));
  sub_239E04F58(__p, (v237 + HIDWORD(v237)));
  sub_239E09DE4(a1, v160, memptr, v207, v209, v211, v214, v261[0], __p[0]);
  objc_msgSend_timeIntervalSinceNow(v215, v216, v217);
  free(memptr);
  objc_msgSend_date(MEMORY[0x277CBEAA8], v218, v219);
  kdebug_trace();
  operator new();
}

uint64_t sub_239E0BA7C(uint64_t a1)
{
  kdebug_trace();
  v2 = *(a1 + 168);
  v3 = *(a1 + 48);
  v5 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 32) + 24), v4, 0);
  sub_239E006FC(v3, v2, v5, *(*(a1 + 64) + 32));
  v6 = *(a1 + 72);
  v7 = *(a1 + 168);
  v9 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 32) + 24), v8, 1);
  sub_239E006FC(v6, v7, v9, *(*(a1 + 64) + 32));
  v10 = *(a1 + 80);
  v11 = *(a1 + 172);
  v13 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 40) + 24), v12, 0);
  sub_239E006FC(v10, v11, v13, *(*(a1 + 88) + 32));
  v14 = *(a1 + 96);
  v15 = *(a1 + 176);
  v17 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 48) + 24), v16, 0);
  sub_239E006FC(v14, v15, v17, *(*(a1 + 104) + 32));
  v18 = *(a1 + 112);
  v19 = (*(*(a1 + 120) + 8) - **(a1 + 120));
  v21 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 56) + 24), v20, 0);
  sub_239E006FC(v18, v19, v21, *(*(a1 + 128) + 32));
  v22 = *(a1 + 136);
  v23 = (*(*(a1 + 120) + 32) - *(*(a1 + 120) + 24));
  v25 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 64) + 24), v24, 0);
  sub_239E006FC(v22, v23, v25, *(*(a1 + 144) + 32));
  v26 = *(a1 + 152);
  v27 = (*(*(a1 + 120) + 56) - *(*(a1 + 120) + 48));
  v29 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 72) + 24), v28, 0);
  sub_239E006FC(v26, v27, v29, *(*(a1 + 160) + 32));
  objc_msgSend_setSignaledValue_(*(a1 + 32), v30, 2);
  munmap(*(a1 + 80), *(a1 + 172));
  munmap(*(a1 + 96), *(a1 + 176));
  munmap(*(a1 + 48), *(a1 + 168));
  munmap(*(a1 + 72), *(a1 + 168));
  v31 = *(a1 + 120);
  if (v31)
  {
    v32 = *(v31 + 48);
    if (v32)
    {
      *(v31 + 56) = v32;
      operator delete(v32);
    }

    v33 = *(v31 + 24);
    if (v33)
    {
      *(v31 + 32) = v33;
      operator delete(v33);
    }

    v34 = *v31;
    if (*v31)
    {
      *(v31 + 8) = v34;
      operator delete(v34);
    }

    MEMORY[0x23EE7D780](v31, 0x10C40E523AF1CLL);
  }

  v35 = *(a1 + 56);
  add = atomic_fetch_add(v35 + 2, 0xFFFFFFFF);
  if (v35 && add == 1)
  {
    (*(*v35 + 8))(v35);
  }

  sub_239E18C24(*(a1 + 88));
  sub_239E18C24(*(a1 + 104));
  sub_239E18C24(*(a1 + 128));
  sub_239E18C24(*(a1 + 144));
  sub_239E18C24(*(a1 + 160));
  sub_239E18C24(*(a1 + 64));

  return kdebug_trace();
}

void sub_239E0BD74(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, unint64_t a8, void *a9)
{
  v125 = *MEMORY[0x277D85DE8];
  if (*(a2[4] + 40))
  {
    sub_239E24BA4(a1, a2);
  }

  v16 = a2[2];
  v110 = a2[3];
  kdebug_trace();
  v19 = 0;
  v20 = 0;
  v21 = 0;
  if (!a5)
  {
    if (objc_msgSend_storageMode(a3, v17, v18) == 2)
    {
      v24 = objc_msgSend_newBufferWithLength_options_(v16, v22, a8 << 6, 0);
      v21 = objc_msgSend_commandBuffer(v110, v25, v26);
      v20 = objc_msgSend_blitCommandEncoder(v21, v27, v28);
      objc_msgSend_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size_(v20, v29, a3, a4, v24, 0, a8 << 6);
      v19 = objc_msgSend_contents(v24, v30, v31);
    }

    else
    {
      v20 = 0;
      v21 = 0;
      v19 = objc_msgSend_contents(a3, v22, v23) + a4;
    }
  }

  v108 = v16;
  if (objc_msgSend_storageMode(a6, v17, v18) == 2)
  {
    v36 = objc_msgSend_newBufferWithLength_options_(v16, v32, 4 * a8, 0);
    if (!v21)
    {
      v21 = objc_msgSend_commandBuffer(v110, v34, v35);
      v20 = objc_msgSend_blitCommandEncoder(v21, v37, v38);
    }

    objc_msgSend_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size_(v20, v34, a6, a7, v36, 0, 4 * a8);
    v43 = objc_msgSend_contents(v36, v39, v40);
  }

  else
  {
    v43 = objc_msgSend_contents(a6, v32, v33) + a7;
  }

  if (v21)
  {
    objc_msgSend_endEncoding(v20, v41, v42);
    objc_msgSend_commit(v21, v44, v45);
    kdebug_trace();
    objc_msgSend_waitUntilCompleted(v21, v46, v47);
    kdebug_trace();
  }

  kdebug_trace();
  kdebug_trace();
  if (v19)
  {
    v49 = (a8 <= 1 ? objc_msgSend_newBufferWithLength_options_(v108, v48, 64, 0) : objc_msgSend_newBufferWithLength_options_(v108, v48, a8 << 6, 0));
    v52 = objc_msgSend_contents(v49, v50, v51);
    if (a8)
    {
      v53 = v19 + 32;
      v54 = v52 + 32;
      v55 = a8;
      do
      {
        *(v54 - 32) = __invert_f4(*(v53 - 32));
        v54 += 64;
        v53 += 64;
        --v55;
      }

      while (v55);
    }
  }

  memset(v121, 0, sizeof(v121));
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(a9, v48, &v117, v124, 16);
  if (v58)
  {
    v59 = *v118;
    do
    {
      for (i = 0; i != v58; ++i)
      {
        if (*v118 != v59)
        {
          objc_enumerationMutation(a9);
        }

        objc_msgSend_boundingBox(*(*(&v117 + 1) + 8 * i), v56, v57);
        LODWORD(v122[1]) = v61;
        v123 = v62;
        v122[0] = v63;
        v122[2] = v64;
        sub_239E08920(v121, v122);
      }

      v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(a9, v56, &v117, v124, 16);
    }

    while (v58);
  }

  memptr = 0;
  if (a8 <= 1)
  {
    v65 = 1;
  }

  else
  {
    v65 = a8;
  }

  malloc_type_posix_memalign(&memptr, 0x20uLL, 32 * v65, 0x1000040E0EAB150uLL);
  v115 = 0;
  if (v19)
  {
    if (a8)
    {
      v66 = 0;
      v67.i64[0] = 0x7F0000007FLL;
      v67.i64[1] = 0x7F0000007FLL;
      v68.i64[0] = 0x7F0000007FLL;
      v68.i64[1] = 0x7F0000007FLL;
      v111 = vnegq_f32(v67);
      v113 = v68;
      do
      {
        v69 = (v121[0] + 32 * *(v43 + 4 * v66));
        v70 = *v69;
        v71 = v69[1];
        if ((vmovn_s32(vcgtq_f32(*v69, v71)).u8[0] & 1) == 0 && v71.f32[1] >= v70.f32[1] && v71.f32[2] >= v70.f32[2])
        {
          v73 = 0;
          v74.i64[0] = 0x7F0000007FLL;
          v74.i64[1] = 0x7F0000007FLL;
          v75 = vnegq_f32(v74);
          do
          {
            v76 = v75;
            v77 = v74;
            if (v73)
            {
              v78 = v70.f32[0];
            }

            else
            {
              v78 = v71.f32[0];
            }

            if ((v73 & 2) != 0)
            {
              v79 = v70.f32[1];
            }

            else
            {
              v79 = v71.f32[1];
            }

            if (v73 >= 4)
            {
              v80 = v70.f32[2];
            }

            else
            {
              v80 = v71.f32[2];
            }

            v81 = vaddq_f32(*(v19 + (v66 << 6) + 48), vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(*(v19 + (v66 << 6)), v78), *(v19 + (v66 << 6) + 16), v79), *(v19 + (v66 << 6) + 32), v80));
            v82 = v76;
            v82.i32[3] = 0;
            v81.i32[3] = 0;
            v83 = vminnmq_f32(v82, v81);
            v75 = v83;
            v75.i32[3] = v76.i32[3];
            v84 = v77;
            v84.i32[3] = 0;
            v85 = vmaxnmq_f32(v84, v81);
            v74 = v85;
            v74.i32[3] = v77.i32[3];
            ++v73;
          }

          while (v73 != 8);
          v86 = v111;
          v86.i32[3] = 0;
          v75.i32[3] = 0;
          v87 = v113;
          v87.i32[3] = 0;
          v74.i32[3] = 0;
          v88 = vminnmq_f32(v86, v75);
          v89 = vmaxnmq_f32(v87, v74);
          v88.i32[3] = v111.i32[3];
          v89.i32[3] = v113.i32[3];
          v90 = v115++;
          v91 = memptr + 32 * v90;
          *v91 = v83.i64[0];
          *(v91 + 2) = v83.i32[2];
          *(v91 + 3) = v66;
          *(v91 + 2) = v85.i64[0];
          *(v91 + 6) = v85.i32[2];
          *(v91 + 7) = 0;
          v111 = v88;
          v113 = v89;
        }

        ++v66;
      }

      while (v66 != a8);
    }
  }

  else if (a8)
  {
    v92 = 0;
    v93.i64[0] = 0x7F0000007FLL;
    v93.i64[1] = 0x7F0000007FLL;
    v94.i64[0] = 0x7F0000007FLL;
    v94.i64[1] = 0x7F0000007FLL;
    v112 = vnegq_f32(v93);
    v114 = v94;
    do
    {
      v95 = v121[0] + 32 * *(v43 + 4 * v92);
      v97 = *v95;
      v96 = *(v95 + 1);
      v98 = vcgt_f32(*v95, *&v96);
      if ((v98.i8[0] & 1) == 0 && (v98.i8[4] & 1) == 0 && *(&v96 + 2) >= *(&v97 + 2))
      {
        v99 = v112;
        v99.i32[3] = 0;
        v100 = *v95;
        v100.i32[3] = 0;
        v101 = vminnmq_f32(v99, v100);
        v102 = v114;
        v102.i32[3] = 0;
        v103 = *(v95 + 1);
        v103.i32[3] = 0;
        v104 = vmaxnmq_f32(v102, v103);
        v101.i32[3] = v112.i32[3];
        v104.i32[3] = v114.i32[3];
        v105 = v115++;
        v106 = memptr + 32 * v105;
        *v106 = v97;
        *(v106 + 2) = DWORD2(v97);
        *(v106 + 3) = v92;
        *(v106 + 2) = v96;
        *(v106 + 6) = DWORD2(v96);
        *(v106 + 7) = 0;
        v112 = v101;
        v114 = v104;
      }

      ++v92;
    }

    while (a8 != v92);
  }

  kdebug_trace();
  sub_239E05F90();
  v107 = *(a1 + 12);
  if (v107)
  {
    if (v107 == 1)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

uint64_t sub_239E0CC58(uint64_t a1)
{
  kdebug_trace();
  v2 = *(a1 + 144);
  v3 = *(a1 + 48);
  v5 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 40) + 24), v4, 0);
  sub_239E006FC(v3, v2, v5, *(*(a1 + 64) + 32));
  v6 = *(a1 + 72);
  v7 = *(a1 + 148);
  v9 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 48) + 24), v8, 0);
  sub_239E006FC(v6, v7, v9, *(*(a1 + 80) + 32));
  v10 = *(a1 + 88);
  v11 = (*(*(a1 + 96) + 8) - **(a1 + 96));
  v13 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 56) + 24), v12, 0);
  sub_239E006FC(v10, v11, v13, *(*(a1 + 104) + 32));
  v14 = *(a1 + 112);
  v15 = (*(*(a1 + 96) + 32) - *(*(a1 + 96) + 24));
  v17 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 64) + 24), v16, 0);
  sub_239E006FC(v14, v15, v17, *(*(a1 + 120) + 32));
  v18 = *(a1 + 128);
  v19 = (*(*(a1 + 96) + 56) - *(*(a1 + 96) + 48));
  v21 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 72) + 24), v20, 0);
  sub_239E006FC(v18, v19, v21, *(*(a1 + 136) + 32));
  objc_msgSend_setSignaledValue_(*(a1 + 32), v22, 2);
  munmap(*(a1 + 48), *(a1 + 144));
  munmap(*(a1 + 72), *(a1 + 148));
  v23 = *(a1 + 96);
  if (v23)
  {
    v24 = *(v23 + 48);
    if (v24)
    {
      *(v23 + 56) = v24;
      operator delete(v24);
    }

    v25 = *(v23 + 24);
    if (v25)
    {
      *(v23 + 32) = v25;
      operator delete(v25);
    }

    v26 = *v23;
    if (*v23)
    {
      *(v23 + 8) = v26;
      operator delete(v26);
    }

    MEMORY[0x23EE7D780](v23, 0x10C40E523AF1CLL);
  }

  v27 = *(a1 + 56);
  add = atomic_fetch_add(v27 + 2, 0xFFFFFFFF);
  if (v27 && add == 1)
  {
    (*(*v27 + 8))(v27);
  }

  sub_239E18C24(*(a1 + 64));
  sub_239E18C24(*(a1 + 80));
  sub_239E18C24(*(a1 + 104));
  sub_239E18C24(*(a1 + 120));
  sub_239E18C24(*(a1 + 136));

  return kdebug_trace();
}

uint64_t sub_239E0CEC8(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int **a6, uint64_t a7, NSObject *a8, float32x4_t *a9)
{
  if (a7 == 1)
  {
    v16 = 4;
  }

  else
  {
    v16 = 3;
  }

  v17 = *a2;
  v18 = a2[1];
  v20 = (v18 - v17) >> 3;
  v21 = 0;
  if (v18 != v17)
  {
    v22 = *a6;
    if (v20 <= 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = (v18 - v17) >> 3;
    }

    do
    {
      v24 = *v22++;
      v21 += v16 * v24;
      --v23;
    }

    while (v23);
  }

  v108 = 0;
  v109 = 0;
  v110 = 0;
  sub_239E15CC0(&v108, v17, v18, v20);
  v111 = 0;
  v112 = 0;
  v113 = 0;
  sub_239E15D78(&v111, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 2);
  v114 = 0;
  v115 = 0;
  v116 = 0;
  sub_239E15CC0(&v114, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 3);
  __p = 0;
  v118 = 0;
  v119 = 0;
  sub_239E15D78(&__p, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 2);
  v25 = 1.0;
  if (*(a1 + 12) == 3)
  {
    v25 = 2.0;
  }

  v26 = (v25 * (v21 / v16));
  memptr = 0;
  malloc_type_posix_memalign(&memptr, 0x20uLL, 32 * v26, 0x1000040E0EAB150uLL);
  v28.i64[0] = 0x7F0000007FLL;
  v28.i64[1] = 0x7F0000007FLL;
  v29 = vnegq_f32(v28);
  *a9 = v29;
  a9[1] = v28;
  v31 = *a2;
  v30 = a2[1];
  if (a7)
  {
    if (v30 != *a2)
    {
      v32 = 0;
      v33 = 0;
      do
      {
        v34 = (*a6)[v33];
        if (v34)
        {
          v35 = 0;
          for (i = 0; i != v34; ++i)
          {
            v37 = v35 + 1;
            v38 = v35 + 2;
            v39 = v35 + 3;
            v40 = *(v114 + v33);
            if (v40)
            {
              if (*(__p + v33) == 4)
              {
                v41 = *(v40 + 4 * v35);
                v37 = *(v40 + 4 * v37);
                v38 = *(v40 + 4 * v38);
                v39 = *(v40 + 4 * v39);
              }

              else
              {
                v41 = *(v40 + 2 * v35);
                v37 = *(v40 + 2 * v37);
                v38 = *(v40 + 2 * v38);
                v39 = *(v40 + 2 * v39);
              }
            }

            else
            {
              v41 = v35;
            }

            v42 = *(v108 + v33);
            v43 = *(v111 + v33);
            v44 = v42 + v43 * v41;
            v28.i64[0] = *v44;
            v28.i32[2] = *(v44 + 8);
            v45 = v42 + v43 * v37;
            v29.i64[0] = *v45;
            v29.i32[2] = *(v45 + 8);
            v46 = v42 + v43 * v38;
            v27.i64[0] = *v46;
            v27.i32[2] = *(v46 + 8);
            v47 = vsubq_f32(v29, v28);
            v48 = vsubq_f32(v27, v28);
            v49 = vmlaq_f32(vnegq_f32(vmulq_f32(v47, vextq_s8(vuzp1q_s32(v48, v48), v48, 0xCuLL))), v48, vextq_s8(vuzp1q_s32(v47, v47), v47, 0xCuLL));
            v50 = vmulq_f32(v49, v49);
            if (sqrtf(v50.f32[1] + (v50.f32[2] + v50.f32[0])) != 0.0)
            {
              v51 = v42 + v43 * v39;
              v52.i64[0] = *v51;
              v28.i32[3] = 0;
              v29.i32[3] = 0;
              v53 = vminnmq_f32(v28, v29);
              v54 = vmaxnmq_f32(v28, v29);
              v53.i32[3] = 0;
              v27.i32[3] = 0;
              v55 = vminnmq_f32(v53, v27);
              v54.i32[3] = 0;
              v56 = vmaxnmq_f32(v54, v27);
              v55.i32[3] = 0;
              v52.i64[1] = *(v51 + 8);
              v29 = vminnmq_f32(v55, v52);
              v56.i32[3] = 0;
              v28 = vmaxnmq_f32(v56, v52);
              v57 = *a9;
              v58 = a9[1];
              v57.i32[3] = 0;
              v59 = v29;
              v59.i32[3] = 0;
              v27 = vminnmq_f32(v57, v59);
              v58.i32[3] = 0;
              v60 = v28;
              v60.i32[3] = 0;
              v61 = vmaxnmq_f32(v58, v60);
              a9->i32[2] = v27.i32[2];
              a9[1].i32[2] = v61.i32[2];
              a9->i64[0] = v27.i64[0];
              a9[1].i64[0] = v61.i64[0];
              v62 = v32++;
              v106 = v32;
              v63 = memptr + 32 * v62;
              *v63 = v29.i64[0];
              *(v63 + 2) = v29.i32[2];
              *(v63 + 3) = i;
              *(v63 + 2) = v28.i64[0];
              *(v63 + 6) = v28.i32[2];
              *(v63 + 7) = v33;
            }

            v35 += 4;
          }

          v31 = *a2;
          v30 = a2[1];
        }

        ++v33;
      }

      while (v33 < (v30 - v31) >> 3);
      goto LABEL_43;
    }

LABEL_42:
    v32 = 0;
    goto LABEL_43;
  }

  if (v30 == *a2)
  {
    goto LABEL_42;
  }

  v32 = 0;
  v64 = 0;
  do
  {
    v65 = (*a6)[v64];
    if (v65)
    {
      v66 = 0;
      for (j = 0; j != v65; ++j)
      {
        v68 = v66 + 1;
        v69 = v66 + 2;
        v70 = *(v114 + v64);
        if (v70)
        {
          if (*(__p + v64) == 4)
          {
            v71 = *(v70 + 4 * v66);
            v68 = *(v70 + 4 * v68);
            v69 = *(v70 + 4 * v69);
          }

          else
          {
            v71 = *(v70 + 2 * v66);
            v68 = *(v70 + 2 * v68);
            v69 = *(v70 + 2 * v69);
          }
        }

        else
        {
          v71 = v66;
        }

        v72 = *(v108 + v64);
        v73 = *(v111 + v64);
        v74 = v72 + v73 * v71;
        v28.i64[0] = *v74;
        v28.i32[2] = *(v74 + 8);
        v75 = v72 + v73 * v68;
        v29.i64[0] = *v75;
        v29.i32[2] = *(v75 + 8);
        v76 = v72 + v73 * v69;
        v27.i64[0] = *v76;
        v27.i32[2] = *(v76 + 8);
        v77 = vsubq_f32(v29, v28);
        v78 = vsubq_f32(v27, v28);
        v79 = vmlaq_f32(vnegq_f32(vmulq_f32(v77, vextq_s8(vuzp1q_s32(v78, v78), v78, 0xCuLL))), v78, vextq_s8(vuzp1q_s32(v77, v77), v77, 0xCuLL));
        v80 = vmulq_f32(v79, v79);
        if (sqrtf(v80.f32[1] + (v80.f32[2] + v80.f32[0])) != 0.0)
        {
          v28.i32[3] = 0;
          v29.i32[3] = 0;
          v81 = vminnmq_f32(v28, v29);
          v82 = vmaxnmq_f32(v28, v29);
          v81.i32[3] = 0;
          v27.i32[3] = 0;
          v29 = vminnmq_f32(v81, v27);
          v82.i32[3] = 0;
          v28 = vmaxnmq_f32(v82, v27);
          v83 = *a9;
          v84 = a9[1];
          v83.i32[3] = 0;
          v85 = v29;
          v85.i32[3] = 0;
          v27 = vminnmq_f32(v83, v85);
          v84.i32[3] = 0;
          v86 = v28;
          v86.i32[3] = 0;
          v87 = vmaxnmq_f32(v84, v86);
          a9->i32[2] = v27.i32[2];
          a9[1].i32[2] = v87.i32[2];
          a9->i64[0] = v27.i64[0];
          a9[1].i64[0] = v87.i64[0];
          v88 = v32++;
          v106 = v32;
          v89 = memptr + 32 * v88;
          *v89 = v29.i64[0];
          *(v89 + 2) = v29.i32[2];
          *(v89 + 3) = j;
          *(v89 + 2) = v28.i64[0];
          *(v89 + 6) = v28.i32[2];
          *(v89 + 7) = v64;
        }

        v66 += 3;
      }

      v31 = *a2;
      v30 = a2[1];
    }

    ++v64;
  }

  while (v64 < (v30 - v31) >> 3);
LABEL_43:
  v90 = *(a1 + 12);
  if (v90 > 1)
  {
    if (v90 == 2)
    {
      operator new();
    }

    if (v90 == 3)
    {
      operator new();
    }
  }

  else
  {
    if (!v90)
    {
      operator new();
    }

    if (v90 == 1)
    {
      operator new();
    }
  }

  v105 = 0;
  v91 = sub_239E05840(0, memptr, v32, v26, &v105, *a9, a9[1]);
  v122 = v91;
  v104 = 0;
  v106 = 0;
  v120[0] = &v104;
  v120[1] = &v106;
  *&v121 = &v122;
  sub_239E05960();
  v94 = *(a1 + 52);
  if (v94 == 4)
  {
    v95 = 192;
  }

  else
  {
    v95 = 320;
  }

  if (v94 == 4)
  {
    v96 = 192;
  }

  else
  {
    v96 = 384;
  }

  v97 = v95 * HIDWORD(v104);
  v98 = v95 * HIDWORD(v104) + v96 * v106;
  v120[0] = 0;
  if (v98)
  {
    malloc_type_posix_memalign(v120, 0x40uLL, v98, 0x9CCB6776uLL);
    v99 = v120[0];
    if (!v120[0])
    {
      v102 = 0;
      goto LABEL_67;
    }

    v94 = *(a1 + 52);
  }

  else
  {
    v99 = 0;
  }

  v100 = v99 + v97;
  if (v94 == 4)
  {
    v101 = sub_239E09514(a1, v91, memptr, v99, v100, &v108, v92, v93);
  }

  else
  {
    v101 = sub_239E095D8(a1, v91, memptr, v99, v100, &v108, v92, v93);
  }

  v102 = v101;
LABEL_67:
  free(memptr);
  free(v91);
  if (__p)
  {
    v118 = __p;
    operator delete(__p);
  }

  if (v114)
  {
    v115 = v114;
    operator delete(v114);
  }

  if (v111)
  {
    v112 = v111;
    operator delete(v111);
  }

  if (v108)
  {
    v109 = v108;
    operator delete(v108);
  }

  return v102;
}

void sub_239E0D6E0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  MEMORY[0x23EE7D780](v20, 0x1091C4093A1021FLL, a3, a4, a5, a6, a7, a8);
  sub_239DFDEDC(&a13);
  _Unwind_Resume(a1);
}

void sub_239E0D774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, NSObject *a6, float32x4_t *a7)
{
  memset(__p, 0, sizeof(__p));
  if (a2)
  {
    sub_239E09C24(__p, a5);
    if (a5)
    {
      v12 = a2 + 32;
      v13 = 32;
      v14 = a5;
      do
      {
        v59 = __invert_f4(*(v12 - 32));
        *(__p[0] + v13 - 32) = v59;
        v13 += 64;
        v12 += 64;
        --v14;
      }

      while (v14);
    }
  }

  memptr = 0;
  if (a5 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = a5;
  }

  malloc_type_posix_memalign(&memptr, 0x20uLL, 32 * v15, 0x1000040E0EAB150uLL);
  v18.i64[0] = 0x7F0000007FLL;
  v18.i64[1] = 0x7F0000007FLL;
  *a7 = vnegq_f32(v18);
  a7[1] = v18;
  if (a2)
  {
    if (a5)
    {
      v19 = 0;
      v20 = 0;
      do
      {
        objc_msgSend_boundingBox(*(a4 + 8 * v20), v16, v17);
        if ((vmovn_s32(vcgtq_f32(v21, v22)).u8[0] & 1) == 0 && v22.f32[1] >= v21.f32[1] && v22.f32[2] >= v21.f32[2])
        {
          v24 = 0;
          v25.i64[0] = 0x7F0000007FLL;
          v25.i64[1] = 0x7F0000007FLL;
          v26 = vnegq_f32(v25);
          do
          {
            v27 = v26;
            v28 = v25;
            if (v24)
            {
              v29 = v21.f32[0];
            }

            else
            {
              v29 = v22.f32[0];
            }

            if ((v24 & 2) != 0)
            {
              v30 = v21.f32[1];
            }

            else
            {
              v30 = v22.f32[1];
            }

            if (v24 >= 4)
            {
              v31 = v21.f32[2];
            }

            else
            {
              v31 = v22.f32[2];
            }

            v32 = vaddq_f32(*(a2 + (v20 << 6) + 48), vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(*(a2 + (v20 << 6)), v29), *(a2 + (v20 << 6) + 16), v30), *(a2 + (v20 << 6) + 32), v31));
            v33 = v27;
            v33.i32[3] = 0;
            v32.i32[3] = 0;
            v34 = vminnmq_f32(v33, v32);
            v26 = v34;
            v26.i32[3] = v27.i32[3];
            v35 = v28;
            v35.i32[3] = 0;
            v36 = vmaxnmq_f32(v35, v32);
            v25 = v36;
            v25.i32[3] = v28.i32[3];
            ++v24;
          }

          while (v24 != 8);
          v37 = *a7;
          v38 = a7[1];
          v37.i32[3] = 0;
          v26.i32[3] = 0;
          v39 = vminnmq_f32(v37, v26);
          v38.i32[3] = 0;
          v25.i32[3] = 0;
          v40 = vmaxnmq_f32(v38, v25);
          a7->i32[2] = v39.i32[2];
          a7[1].i32[2] = v40.i32[2];
          a7->i64[0] = v39.i64[0];
          a7[1].i64[0] = v40.i64[0];
          v41 = v19++;
          v42 = memptr + 32 * v41;
          *v42 = v34.i64[0];
          *(v42 + 2) = v34.i32[2];
          *(v42 + 3) = v20;
          *(v42 + 2) = v36.i64[0];
          *(v42 + 6) = v36.i32[2];
          *(v42 + 7) = 0;
        }

        ++v20;
      }

      while (v20 != a5);
    }
  }

  else if (a5)
  {
    v43 = 0;
    v44 = 0;
    do
    {
      objc_msgSend_boundingBox(*(a4 + 8 * v44), v16, v17);
      v47 = vcgt_f32(*v45.f32, *v46.f32);
      if ((v47.i8[0] & 1) == 0 && (v47.i8[4] & 1) == 0 && v46.f32[2] >= v45.f32[2])
      {
        v48 = *a7;
        v49 = a7[1];
        v48.i32[3] = 0;
        v50 = v45;
        v50.i32[3] = 0;
        v51 = vminnmq_f32(v48, v50);
        v49.i32[3] = 0;
        v52 = v46;
        v52.i32[3] = 0;
        a7->i32[2] = v51.i32[2];
        v53 = vmaxnmq_f32(v49, v52);
        a7->i64[0] = v51.i64[0];
        a7[1].i32[2] = v53.i32[2];
        a7[1].i64[0] = v53.i64[0];
        v54 = v43++;
        v55 = memptr + 32 * v54;
        *v55 = v45.i64[0];
        *(v55 + 2) = v45.i32[2];
        *(v55 + 3) = v44;
        *(v55 + 2) = v46.i64[0];
        *(v55 + 6) = v46.i32[2];
        *(v55 + 7) = 0;
      }

      ++v44;
    }

    while (a5 != v44);
  }

  v56 = *(a1 + 12);
  if (v56 != 1)
  {
    if (!v56)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_239E0DCBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_239E0DCFC(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v27 = a3;
  v28 = a2;
  v25 = a5;
  v26 = a4;
  v24 = a6;
  v22 = 0;
  v23 = 2;
  v20 = a7;
  v21 = a6;
  v18 = a9;
  v19 = a8;
  v9 = a2[7] > 0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  v10 = a2[1];
  v11 = a2[2];
  v12 = a2[4];
  v13 = a2[5];
  v14 = a2[6];
  *a4 = *a2;
  *(a4 + 4) = v12;
  *(a4 + 8) = v10;
  *(a4 + 12) = v13;
  *(a4 + 16) = v11;
  *(a4 + 20) = v14;
  *(a4 + 24) = v9;
  v17[0] = &v28;
  v17[1] = &v19;
  v17[2] = &v18;
  v17[3] = &v26;
  v17[4] = &v23;
  v17[5] = &v22;
  v16[0] = &v28;
  v16[1] = &v19;
  v16[2] = &v18;
  v16[3] = &v25;
  v16[4] = &v21;
  v16[5] = &v24;
  v16[6] = &v27;
  v16[7] = &v20;
  return sub_239E0DDD4(a1, a2, v9 << 32, 0x100000000, v17, v16);
}

uint64_t **sub_239E0DDD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t **a5, uint64_t a6)
{
  v44[1] = *MEMORY[0x277D85DE8];
  result = MEMORY[0x28223BE20]();
  v18 = &v44[-2 * v17];
  v44[0] = v18;
  while (1)
  {
    if (*(a2 + 32 * v10 + 28) < 1)
    {
      v19 = *a6;
      v20 = *(a6 + 8);
      v21 = *v20;
      *v21 = HIDWORD(v11);
      v22 = *v19;
      *v20 = v21 + 1;
      v23 = *(a6 + 16);
      v24 = *v23;
      *v24 = -HIDWORD(v10);
      v25 = v22 + 32 * v10;
      *v23 = v24 + 1;
      v26 = (**(a6 + 24) + 16 * (v10 >> 32));
      LODWORD(v24) = *(v25 + 28);
      v27 = -v24;
      v28 = (**(a6 + 32) - **(a6 + 40)) >> 2;
      *v26 = v27;
      v26[1] = v28;
      v26[2] = v11;
      v26[3] = 0;
      if (v24)
      {
        v29 = **(a6 + 48);
        v30 = *(v25 + 12);
        v31 = 32 * v27;
        v32 = v29 + 32 * v30;
        v33 = 32 * v30;
        v34 = (v32 + 12);
        v35 = v31;
        do
        {
          v36 = *v34;
          v34 += 8;
          v37 = *(a6 + 32);
          v38 = *v37;
          *v38 = v36;
          *v37 = v38 + 1;
          v35 -= 32;
        }

        while (v35);
        v39 = (v29 + v33 + 28);
        do
        {
          v40 = *v39;
          v39 += 8;
          v41 = *(a6 + 56);
          v42 = *v41;
          *v42 = v40;
          *v41 = v42 + 1;
          v31 -= 32;
        }

        while (v31);
      }
    }

    else
    {
      result = sub_239E17714(a5, v10, v11, v44, v12, v13, v14, v15, v16);
    }

    v43 = v44[0];
    if (v44[0] == v18)
    {
      break;
    }

    v44[0] -= 2;
    v10 = *(v43 - 2);
    v11 = *(v43 - 1);
  }

  return result;
}

uint64_t **sub_239E0DF80(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a3;
  v24 = a2;
  v21 = a6;
  v22 = a5;
  v19 = 0;
  v20 = 2;
  v17 = a8;
  v18 = a7;
  v8 = a2[7] > 0;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[4];
  v12 = a2[5];
  v13 = a2[6];
  *a5 = *a2;
  *(a5 + 4) = v11;
  *(a5 + 8) = v9;
  *(a5 + 12) = v12;
  *(a5 + 16) = v10;
  *(a5 + 20) = v13;
  *(a5 + 24) = v8;
  v16[0] = &v24;
  v16[1] = &v18;
  v16[2] = &v17;
  v16[3] = &v22;
  v16[4] = &v20;
  v16[5] = &v19;
  v15[0] = &v24;
  v15[1] = &v18;
  v15[2] = &v17;
  v15[3] = &v21;
  v15[4] = &v23;
  return sub_239E0E03C(a1, a2, v8 << 32, 0x100000000, v16, v15);
}

uint64_t **sub_239E0E03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t **a5, uint64_t a6)
{
  v27[1] = *MEMORY[0x277D85DE8];
  result = MEMORY[0x28223BE20]();
  v18 = &v27[-2 * v17];
  v27[0] = v18;
  while (1)
  {
    if (*(a2 + 32 * v10 + 28) < 1)
    {
      v19 = *(a6 + 8);
      v20 = **a6 + 32 * v10;
      v21 = *v19;
      *v21 = HIDWORD(v11);
      *v19 = v21 + 1;
      v22 = *(a6 + 16);
      v23 = *v22;
      *v23 = -HIDWORD(v10);
      *v22 = v23 + 1;
      v24 = *(v20 + 28) ? *(**(a6 + 32) + 32 * *(v20 + 12) + 12) : -1;
      v25 = (**(a6 + 24) + 8 * (v10 >> 32));
      *v25 = v24;
      v25[1] = v11;
    }

    else
    {
      result = sub_239E17714(a5, v10, v11, v27, v12, v13, v14, v15, v16);
    }

    v26 = v27[0];
    if (v27[0] == v18)
    {
      break;
    }

    v27[0] -= 2;
    v10 = *(v26 - 2);
    v11 = *(v26 - 1);
  }

  return result;
}

__n128 sub_239E0E188(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  v4 = *(a2 + 16);
  result = *(a2 + 32);
  *(a1 + 8) = *a2;
  *(a1 + 24) = v4;
  *(a1 + 40) = result;
  *(a1 + 56) = v2;
  *a1 = &unk_284D086C8;
  return result;
}

__n128 sub_239E0E1CC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 56) = *(a2 + 48);
  *(a1 + 40) = v4;
  *(a1 + 24) = v3;
  *(a1 + 8) = result;
  *a1 = &unk_284D086C8;
  return result;
}

void sub_239E0E220(uint64_t a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, int a8, void *a9, uint64_t a10, unsigned int a11)
{
  v11 = a3;
  v266 = *MEMORY[0x277D85DE8];
  if (*(*(a2 + 4) + 40))
  {
    sub_239E24B58(a1, a2);
  }

  v220 = objc_msgSend_date(MEMORY[0x277CBEAA8], a2, a3);
  v224 = *(a2 + 2);
  v222 = *(a2 + 3);
  if (a10 == 1)
  {
    v13 = 4;
  }

  else
  {
    v13 = 3;
  }

  v259 = 0;
  v258 = 0;
  v260 = 0;
  v256 = 0;
  v255 = 0;
  v257 = 0;
  v253 = 0;
  v252 = 0;
  v254 = 0;
  v250 = 0;
  v249 = 0;
  v251 = 0;
  v231 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0;
  v15 = 0;
  v232 = 0;
  v234 = 0;
  v223 = v13 * a5;
  v225 = v11;
  for (i = objc_msgSend_count(v11, v16, v17); v14 < i; i = objc_msgSend_count(v225, v67, v68))
  {
    v21 = objc_msgSend_objectAtIndexedSubscript_(v11, v19, v14);
    v23 = objc_msgSend_objectAtIndexedSubscript_(a4, v22, v14);
    v26 = objc_msgSend_unsignedIntegerValue(v23, v24, v25);
    v28 = objc_msgSend_objectAtIndexedSubscript_(a6, v27, v14);
    v29 = v13;
    v31 = objc_msgSend_objectAtIndexedSubscript_(a7, v30, v14);
    v34 = objc_msgSend_unsignedIntegerValue(v31, v32, v33);
    v245[0] = 0;
    v261[0] = 0;
    v36 = objc_msgSend_objectAtIndexedSubscript_(a9, v35, v14);
    v39 = objc_msgSend_unsignedIntegerValue(v36, v37, v38);
    if (objc_msgSend_storageMode(v21, v40, v41) == 2)
    {
      v45 = objc_msgSend_length(v21, v42, v43) - v26;
      if (v28)
      {
        v46 = v45;
        v47 = objc_msgSend_newBufferWithLength_options_(v224, v44, v45, 0);
      }

      else
      {
        v46 = v223 * v39;
        v47 = objc_msgSend_newBufferWithLength_options_(v224, v44, v223 * v39, 0);
      }

      v50 = v47;
      if (!v234)
      {
        v234 = objc_msgSend_commandBuffer(v222, v48, v49);
        v232 = objc_msgSend_blitCommandEncoder(v234, v51, v52);
      }

      objc_msgSend_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size_(v232, v48, v21, v26, v50, 0, v46);
      v55 = objc_msgSend_contents(v50, v53, v54);
    }

    else
    {
      v50 = 0;
      v55 = (objc_msgSend_contents(v21, v42, v43) + v26);
    }

    v245[0] = v55;
    if (v28)
    {
      if (objc_msgSend_storageMode(v28, v56, v57) == 2)
      {
        v62 = objc_msgSend_newBufferWithLength_options_(v224, v58, 4 * v39 * v29, 0);
        if (!v234)
        {
          v234 = objc_msgSend_commandBuffer(v222, v60, v61);
          v232 = objc_msgSend_blitCommandEncoder(v234, v63, v64);
        }

        objc_msgSend_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size_(v232, v60, v28, v34, v62, 0, 4 * v39 * v29);
        v261[0] = objc_msgSend_contents(v62, v65, v66);
      }

      else
      {
        v62 = 0;
        v261[0] = (objc_msgSend_contents(v28, v58, v59) + v34);
      }
    }

    else
    {
      v62 = 0;
    }

    sub_239DEDD74(&v258, v245);
    LODWORD(__p[0]) = a5;
    sub_239DEDE48(&v255, __p);
    sub_239DEDD74(&v252, v261);
    LODWORD(__p[0]) = a8;
    sub_239DEDE48(&v249, __p);
    if (v50)
    {
      objc_msgSend_addObject_(v231, v67, v50);
    }

    if (v62)
    {
      objc_msgSend_addObject_(v231, v67, v62);
    }

    v15 += v39 * v29;
    v13 = v29;
    ++v14;
    v11 = v225;
  }

  if (v234)
  {
    objc_msgSend_endEncoding(v232, v19, v20);
    objc_msgSend_commit(v234, v69, v70);
    kdebug_trace();
    objc_msgSend_waitUntilCompleted(v234, v71, v72);
    kdebug_trace();
  }

  memset(v245, 0, sizeof(v245));
  sub_239E15CC0(v245, v258, v259, (v259 - v258) >> 3);
  memset(v246, 0, sizeof(v246));
  sub_239E15D78(v246, v255, v256, (v256 - v255) >> 2);
  memset(v247, 0, sizeof(v247));
  sub_239E15CC0(v247, v252, v253, (v253 - v252) >> 3);
  memset(v248, 0, sizeof(v248));
  sub_239E15D78(v248, v249, v250, (v250 - v249) >> 2);
  v75 = objc_msgSend_date(MEMORY[0x277CBEAA8], v73, v74);
  kdebug_trace();
  v76 = 1.0;
  if (*(a1 + 12) == 3)
  {
    v76 = 2.0;
  }

  v77 = (v76 * (v15 / v13));
  memptr = 0;
  v78 = 32 * v77;
  malloc_type_posix_memalign(&memptr, 0x20uLL, 32 * v77, 0x1000040E0EAB150uLL);
  v243 = 0;
  if (a10)
  {
    v81 = 0;
    v82.i64[0] = 0x7F0000007FLL;
    v82.i64[1] = 0x7F0000007FLL;
    v83.n128_u64[0] = 0x7F0000007FLL;
    v83.n128_u64[1] = 0x7F0000007FLL;
    v233 = vnegq_f32(v82);
    v235 = v83;
    while (v81 < objc_msgSend_count(v11, v79, v80))
    {
      v85 = objc_msgSend_objectAtIndexedSubscript_(a9, v84, v81);
      v88 = objc_msgSend_unsignedIntegerValue(v85, v86, v87);
      if (v88)
      {
        v92 = 0;
        v93 = 1;
        do
        {
          v94 = v92 + 1;
          v95 = v92 + 2;
          v96 = v92 + 3;
          v97 = *(v247[0] + v81);
          if (v97)
          {
            if (*(v248[0] + v81) == 4)
            {
              v98 = *(v97 + 4 * v92);
              v94 = *(v97 + 4 * v94);
              v95 = *(v97 + 4 * v95);
              v96 = *(v97 + 4 * v96);
            }

            else
            {
              v98 = *(v97 + 2 * v92);
              v94 = *(v97 + 2 * v94);
              v95 = *(v97 + 2 * v95);
              v96 = *(v97 + 2 * v96);
            }
          }

          else
          {
            v98 = v92;
          }

          v99 = *(v245[0] + v81);
          v100 = *(v246[0] + v81);
          v101 = v99 + v100 * v98;
          v89.i64[0] = *v101;
          v89.i32[2] = *(v101 + 8);
          v102 = v99 + v100 * v94;
          v91.i64[0] = *v102;
          v91.i32[2] = *(v102 + 8);
          v103 = v99 + v100 * v95;
          v90.i64[0] = *v103;
          v90.i32[2] = *(v103 + 8);
          v104 = vsubq_f32(v91, v89);
          v105 = vsubq_f32(v90, v89);
          v106 = vmlaq_f32(vnegq_f32(vmulq_f32(v104, vextq_s8(vuzp1q_s32(v105, v105), v105, 0xCuLL))), v105, vextq_s8(vuzp1q_s32(v104, v104), v104, 0xCuLL));
          v107 = vmulq_f32(v106, v106);
          if (sqrtf(v107.f32[1] + (v107.f32[2] + v107.f32[0])) != 0.0)
          {
            v108 = v99 + v100 * v96;
            v109.i64[0] = *v108;
            v89.i32[3] = 0;
            v91.i32[3] = 0;
            v110 = vminnmq_f32(v89, v91);
            v111 = vmaxnmq_f32(v89, v91);
            v110.i32[3] = 0;
            v90.i32[3] = 0;
            v112 = vminnmq_f32(v110, v90);
            v111.i32[3] = 0;
            v112.i32[3] = 0;
            v113 = vmaxnmq_f32(v111, v90);
            v109.i64[1] = *(v108 + 8);
            v114 = vminnmq_f32(v112, v109);
            v113.i32[3] = 0;
            v115 = vmaxnmq_f32(v113, v109);
            v116 = v233;
            v116.i32[3] = 0;
            v117 = v243++;
            v118 = memptr + 32 * v117;
            *(v118 + 2) = v114.i32[2];
            *v118 = v114.i64[0];
            v114.i32[3] = 0;
            v90 = vminnmq_f32(v116, v114);
            v91 = v235;
            v91.i32[3] = 0;
            *(v118 + 2) = v115.i64[0];
            *(v118 + 6) = v115.i32[2];
            v115.i32[3] = 0;
            v89 = vmaxnmq_f32(v91, v115);
            v90.i32[3] = v233.n128_i32[3];
            v89.i32[3] = v235.n128_i32[3];
            *(v118 + 3) = v93 - 1;
            *(v118 + 7) = v81;
            v233 = v90;
            v235 = v89;
          }

          v119 = v88 > v93++;
          v92 += 4;
        }

        while (v119);
      }

      ++v81;
    }
  }

  else
  {
    v120 = 0;
    v121.i64[0] = 0x7F0000007FLL;
    v121.i64[1] = 0x7F0000007FLL;
    v122.n128_u64[0] = 0x7F0000007FLL;
    v122.n128_u64[1] = 0x7F0000007FLL;
    v233 = vnegq_f32(v121);
    v235 = v122;
    while (v120 < objc_msgSend_count(v11, v79, v80))
    {
      v124 = objc_msgSend_objectAtIndexedSubscript_(a9, v123, v120);
      v127 = objc_msgSend_unsignedIntegerValue(v124, v125, v126);
      if (v127)
      {
        v131 = 0;
        v132 = 1;
        do
        {
          v133 = v131 + 1;
          v134 = v131 + 2;
          v135 = *(v247[0] + v120);
          if (v135)
          {
            if (*(v248[0] + v120) == 4)
            {
              v136 = *(v135 + 4 * v131);
              v133 = *(v135 + 4 * v133);
              v134 = *(v135 + 4 * v134);
            }

            else
            {
              v136 = *(v135 + 2 * v131);
              v133 = *(v135 + 2 * v133);
              v134 = *(v135 + 2 * v134);
            }
          }

          else
          {
            v136 = v131;
          }

          v137 = *(v245[0] + v120);
          v138 = *(v246[0] + v120);
          v139 = v137 + v138 * v136;
          v128.i64[0] = *v139;
          v128.i32[2] = *(v139 + 8);
          v140 = v137 + v138 * v133;
          v129.i64[0] = *v140;
          v129.i32[2] = *(v140 + 8);
          v141 = v137 + v138 * v134;
          v130.i64[0] = *v141;
          v130.i32[2] = *(v141 + 8);
          v142 = vsubq_f32(v129, v128);
          v143 = vsubq_f32(v130, v128);
          v144 = vmlaq_f32(vnegq_f32(vmulq_f32(v142, vextq_s8(vuzp1q_s32(v143, v143), v143, 0xCuLL))), v143, vextq_s8(vuzp1q_s32(v142, v142), v142, 0xCuLL));
          v145 = vmulq_f32(v144, v144);
          if (sqrtf(v145.f32[1] + (v145.f32[2] + v145.f32[0])) != 0.0)
          {
            v128.i32[3] = 0;
            v129.i32[3] = 0;
            v146 = vminnmq_f32(v128, v129);
            v146.i32[3] = 0;
            v147 = vmaxnmq_f32(v128, v129);
            v130.i32[3] = 0;
            v148 = vminnmq_f32(v146, v130);
            v147.i32[3] = 0;
            v149 = vmaxnmq_f32(v147, v130);
            v150 = v233;
            v150.i32[3] = 0;
            v151 = v243++;
            v152 = memptr + 32 * v151;
            *(v152 + 2) = v148.i32[2];
            *v152 = v148.i64[0];
            v148.i32[3] = 0;
            v129 = vminnmq_f32(v150, v148);
            v130 = v235;
            v130.i32[3] = 0;
            *(v152 + 2) = v149.i64[0];
            *(v152 + 6) = v149.i32[2];
            v149.i32[3] = 0;
            v128 = vmaxnmq_f32(v130, v149);
            v129.i32[3] = v233.n128_i32[3];
            v128.i32[3] = v235.n128_i32[3];
            *(v152 + 3) = v132 - 1;
            *(v152 + 7) = v120;
            v233 = v129;
            v235 = v128;
          }

          v119 = v127 > v132++;
          v131 += 3;
        }

        while (v119);
      }

      ++v120;
    }
  }

  kdebug_trace();
  objc_msgSend_timeIntervalSinceNow(v75, v153, v154);
  v155 = sub_239E05F90();
  v156 = *(a1 + 12);
  if (v156 > 1)
  {
    if (v156 == 2)
    {
      operator new();
    }

    if (v156 == 3)
    {
      operator new();
    }
  }

  else
  {
    if (!v156)
    {
      operator new();
    }

    if (v156 == 1)
    {
      operator new();
    }
  }

  dispatch_release(v155);
  v159 = objc_msgSend_date(MEMORY[0x277CBEAA8], v157, v158);
  kdebug_trace();
  v242 = 0;
  v160 = sub_239E05840(0, memptr, v243, v77, &v242, v233, v235);
  kdebug_trace();
  objc_msgSend_timeIntervalSinceNow(v159, v161, v162);
  if (*(a1 + 8) == 1)
  {
    v165 = objc_msgSend_date(MEMORY[0x277CBEAA8], v163, v164);
    v168 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v166, v167);
    v169 = *(a1 + 24);
    *v261 = *(a1 + 8);
    v262 = v169;
    v263 = *(a1 + 40);
    v264 = *(a1 + 56);
    sub_239DFA254(a1, v261, v160, v168, v263, v169);
    objc_msgSend_setObject_forKeyedSubscript_(v168, v170, @"CPU", @"BVH Builder");
    v172 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v171, @"{ %f, %f, %f }, { %f, %f, %f }", v233.n128_f32[0], v233.n128_f32[1], v233.n128_f32[2], v235.n128_f32[0], v235.n128_f32[1], v235.n128_f32[2], v220);
    objc_msgSend_setObject_forKeyedSubscript_(v168, v173, v172, @"Bounds");
    if (v160[7] >= 0)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v168, v174, @"Internal", @"BVH Root Node Type");
    }

    else
    {
      objc_msgSend_setObject_forKeyedSubscript_(v168, v174, @"Leaf", @"BVH Root Node Type");
    }

    v177 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v175, v176);
    objc_msgSend_setObject_forKeyedSubscript_(v168, v178, v177, @"Temporary Memory");
    v181 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v179, v180, vcvtd_n_f64_u64(v78, 0x14uLL));
    objc_msgSend_setObject_forKeyedSubscript_(v177, v182, v181, @"Fragments (mb)");
    v185 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v183, v184, vcvtd_n_f64_u64(32 * v242, 0x14uLL));
    objc_msgSend_setObject_forKeyedSubscript_(v177, v186, v185, @"Nodes (mb)");
    v240 = 0u;
    v241 = 0u;
    v238 = 0u;
    v239 = 0u;
    v190 = objc_msgSend_countByEnumeratingWithState_objects_count_(v177, v187, &v238, v265, 16);
    if (v190)
    {
      v191 = *v239;
      v192 = 0.0;
      do
      {
        for (j = 0; j != v190; ++j)
        {
          if (*v239 != v191)
          {
            objc_enumerationMutation(v177);
          }

          v194 = objc_msgSend_objectForKeyedSubscript_(v177, v188, *(*(&v238 + 1) + 8 * j));
          objc_msgSend_doubleValue(v194, v195, v196);
          v192 = v192 + v197;
        }

        v190 = objc_msgSend_countByEnumeratingWithState_objects_count_(v177, v188, &v238, v265, 16);
      }

      while (v190);
    }

    else
    {
      v192 = 0.0;
    }

    v198 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v188, v189, v192);
    objc_msgSend_setObject_forKeyedSubscript_(v177, v199, v198, @"Total (mb)");
    objc_msgSend_timeIntervalSinceNow(v165, v200, v201);
  }

  v202 = objc_msgSend_date(MEMORY[0x277CBEAA8], v163, v164);
  __p[0] = v160;
  v237 = 0;
  v243 = 0;
  v261[0] = &v237;
  v261[1] = &v243;
  v262.i64[0] = __p;
  sub_239E05960();
  objc_msgSend_timeIntervalSinceNow(v202, v203, v204);
  v205 = getpagesize();
  v206 = -v205;
  v207 = mmap(0, (v205 + (HIDWORD(v237) << 7) + 127) & -v205, 3, 4098, -1, 0);
  if (v207 == -1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v208 = v205 - 1;
  v209 = mmap(0, (v205 - 1 + 16 * v237) & v206, 3, 4098, -1, 0);
  if (v209 == -1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (((v208 + 4 * v243) & v206) != 0)
  {
    v210 = (v208 + 4 * v243) & v206;
  }

  else
  {
    v210 = v205;
  }

  v211 = mmap(0, v210, 3, 4098, -1, 0);
  if (v211 == -1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v214 = mmap(0, v210, 3, 4098, -1, 0);
  if (v214 == -1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v215 = objc_msgSend_date(MEMORY[0x277CBEAA8], v212, v213);
  v261[1] = 0;
  v261[0] = 0;
  v262.i64[0] = 0;
  memset(__p, 0, sizeof(__p));
  sub_239E04F58(v261, (v237 + HIDWORD(v237)));
  sub_239E04F58(__p, (v237 + HIDWORD(v237)));
  sub_239E0DCFC(a1, v160, memptr, v207, v209, v211, v214, v261[0], __p[0]);
  objc_msgSend_timeIntervalSinceNow(v215, v216, v217);
  free(memptr);
  objc_msgSend_date(MEMORY[0x277CBEAA8], v218, v219);
  kdebug_trace();
  operator new();
}

uint64_t sub_239E0F98C(uint64_t a1)
{
  kdebug_trace();
  v2 = *(a1 + 168);
  v3 = *(a1 + 48);
  v5 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 32) + 24), v4, 0);
  sub_239E006FC(v3, v2, v5, *(*(a1 + 64) + 32));
  v6 = *(a1 + 72);
  v7 = *(a1 + 168);
  v9 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 32) + 24), v8, 1);
  sub_239E006FC(v6, v7, v9, *(*(a1 + 64) + 32));
  v10 = *(a1 + 80);
  v11 = *(a1 + 172);
  v13 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 40) + 24), v12, 0);
  sub_239E006FC(v10, v11, v13, *(*(a1 + 88) + 32));
  v14 = *(a1 + 96);
  v15 = *(a1 + 176);
  v17 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 48) + 24), v16, 0);
  sub_239E006FC(v14, v15, v17, *(*(a1 + 104) + 32));
  v18 = *(a1 + 112);
  v19 = (*(*(a1 + 120) + 8) - **(a1 + 120));
  v21 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 56) + 24), v20, 0);
  sub_239E006FC(v18, v19, v21, *(*(a1 + 128) + 32));
  v22 = *(a1 + 136);
  v23 = (*(*(a1 + 120) + 32) - *(*(a1 + 120) + 24));
  v25 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 64) + 24), v24, 0);
  sub_239E006FC(v22, v23, v25, *(*(a1 + 144) + 32));
  v26 = *(a1 + 152);
  v27 = (*(*(a1 + 120) + 56) - *(*(a1 + 120) + 48));
  v29 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 72) + 24), v28, 0);
  sub_239E006FC(v26, v27, v29, *(*(a1 + 160) + 32));
  objc_msgSend_setSignaledValue_(*(a1 + 32), v30, 2);
  munmap(*(a1 + 80), *(a1 + 172));
  munmap(*(a1 + 96), *(a1 + 176));
  munmap(*(a1 + 48), *(a1 + 168));
  munmap(*(a1 + 72), *(a1 + 168));
  v31 = *(a1 + 120);
  if (v31)
  {
    v32 = *(v31 + 48);
    if (v32)
    {
      *(v31 + 56) = v32;
      operator delete(v32);
    }

    v33 = *(v31 + 24);
    if (v33)
    {
      *(v31 + 32) = v33;
      operator delete(v33);
    }

    v34 = *v31;
    if (*v31)
    {
      *(v31 + 8) = v34;
      operator delete(v34);
    }

    MEMORY[0x23EE7D780](v31, 0x10C40E523AF1CLL);
  }

  v35 = *(a1 + 56);
  add = atomic_fetch_add(v35 + 2, 0xFFFFFFFF);
  if (v35 && add == 1)
  {
    (*(*v35 + 8))(v35);
  }

  sub_239E18C24(*(a1 + 88));
  sub_239E18C24(*(a1 + 104));
  sub_239E18C24(*(a1 + 128));
  sub_239E18C24(*(a1 + 144));
  sub_239E18C24(*(a1 + 160));
  sub_239E18C24(*(a1 + 64));

  return kdebug_trace();
}

void sub_239E0FC84(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, unint64_t a8, void *a9)
{
  v125 = *MEMORY[0x277D85DE8];
  if (*(a2[4] + 40))
  {
    sub_239E24BA4(a1, a2);
  }

  v16 = a2[2];
  v110 = a2[3];
  kdebug_trace();
  v19 = 0;
  v20 = 0;
  v21 = 0;
  if (!a5)
  {
    if (objc_msgSend_storageMode(a3, v17, v18) == 2)
    {
      v24 = objc_msgSend_newBufferWithLength_options_(v16, v22, a8 << 6, 0);
      v21 = objc_msgSend_commandBuffer(v110, v25, v26);
      v20 = objc_msgSend_blitCommandEncoder(v21, v27, v28);
      objc_msgSend_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size_(v20, v29, a3, a4, v24, 0, a8 << 6);
      v19 = objc_msgSend_contents(v24, v30, v31);
    }

    else
    {
      v20 = 0;
      v21 = 0;
      v19 = objc_msgSend_contents(a3, v22, v23) + a4;
    }
  }

  v108 = v16;
  if (objc_msgSend_storageMode(a6, v17, v18) == 2)
  {
    v36 = objc_msgSend_newBufferWithLength_options_(v16, v32, 4 * a8, 0);
    if (!v21)
    {
      v21 = objc_msgSend_commandBuffer(v110, v34, v35);
      v20 = objc_msgSend_blitCommandEncoder(v21, v37, v38);
    }

    objc_msgSend_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size_(v20, v34, a6, a7, v36, 0, 4 * a8);
    v43 = objc_msgSend_contents(v36, v39, v40);
  }

  else
  {
    v43 = objc_msgSend_contents(a6, v32, v33) + a7;
  }

  if (v21)
  {
    objc_msgSend_endEncoding(v20, v41, v42);
    objc_msgSend_commit(v21, v44, v45);
    kdebug_trace();
    objc_msgSend_waitUntilCompleted(v21, v46, v47);
    kdebug_trace();
  }

  kdebug_trace();
  kdebug_trace();
  if (v19)
  {
    v49 = (a8 <= 1 ? objc_msgSend_newBufferWithLength_options_(v108, v48, 64, 0) : objc_msgSend_newBufferWithLength_options_(v108, v48, a8 << 6, 0));
    v52 = objc_msgSend_contents(v49, v50, v51);
    if (a8)
    {
      v53 = v19 + 32;
      v54 = v52 + 32;
      v55 = a8;
      do
      {
        *(v54 - 32) = __invert_f4(*(v53 - 32));
        v54 += 64;
        v53 += 64;
        --v55;
      }

      while (v55);
    }
  }

  memset(v121, 0, sizeof(v121));
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(a9, v48, &v117, v124, 16);
  if (v58)
  {
    v59 = *v118;
    do
    {
      for (i = 0; i != v58; ++i)
      {
        if (*v118 != v59)
        {
          objc_enumerationMutation(a9);
        }

        objc_msgSend_boundingBox(*(*(&v117 + 1) + 8 * i), v56, v57);
        LODWORD(v122[1]) = v61;
        v123 = v62;
        v122[0] = v63;
        v122[2] = v64;
        sub_239E08920(v121, v122);
      }

      v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(a9, v56, &v117, v124, 16);
    }

    while (v58);
  }

  memptr = 0;
  if (a8 <= 1)
  {
    v65 = 1;
  }

  else
  {
    v65 = a8;
  }

  malloc_type_posix_memalign(&memptr, 0x20uLL, 32 * v65, 0x1000040E0EAB150uLL);
  v115 = 0;
  if (v19)
  {
    if (a8)
    {
      v66 = 0;
      v67.i64[0] = 0x7F0000007FLL;
      v67.i64[1] = 0x7F0000007FLL;
      v68.i64[0] = 0x7F0000007FLL;
      v68.i64[1] = 0x7F0000007FLL;
      v111 = vnegq_f32(v67);
      v113 = v68;
      do
      {
        v69 = (v121[0] + 32 * *(v43 + 4 * v66));
        v70 = *v69;
        v71 = v69[1];
        if ((vmovn_s32(vcgtq_f32(*v69, v71)).u8[0] & 1) == 0 && v71.f32[1] >= v70.f32[1] && v71.f32[2] >= v70.f32[2])
        {
          v73 = 0;
          v74.i64[0] = 0x7F0000007FLL;
          v74.i64[1] = 0x7F0000007FLL;
          v75 = vnegq_f32(v74);
          do
          {
            v76 = v75;
            v77 = v74;
            if (v73)
            {
              v78 = v70.f32[0];
            }

            else
            {
              v78 = v71.f32[0];
            }

            if ((v73 & 2) != 0)
            {
              v79 = v70.f32[1];
            }

            else
            {
              v79 = v71.f32[1];
            }

            if (v73 >= 4)
            {
              v80 = v70.f32[2];
            }

            else
            {
              v80 = v71.f32[2];
            }

            v81 = vaddq_f32(*(v19 + (v66 << 6) + 48), vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(*(v19 + (v66 << 6)), v78), *(v19 + (v66 << 6) + 16), v79), *(v19 + (v66 << 6) + 32), v80));
            v82 = v76;
            v82.i32[3] = 0;
            v81.i32[3] = 0;
            v83 = vminnmq_f32(v82, v81);
            v75 = v83;
            v75.i32[3] = v76.i32[3];
            v84 = v77;
            v84.i32[3] = 0;
            v85 = vmaxnmq_f32(v84, v81);
            v74 = v85;
            v74.i32[3] = v77.i32[3];
            ++v73;
          }

          while (v73 != 8);
          v86 = v111;
          v86.i32[3] = 0;
          v75.i32[3] = 0;
          v87 = v113;
          v87.i32[3] = 0;
          v74.i32[3] = 0;
          v88 = vminnmq_f32(v86, v75);
          v89 = vmaxnmq_f32(v87, v74);
          v88.i32[3] = v111.i32[3];
          v89.i32[3] = v113.i32[3];
          v90 = v115++;
          v91 = memptr + 32 * v90;
          *v91 = v83.i64[0];
          *(v91 + 2) = v83.i32[2];
          *(v91 + 3) = v66;
          *(v91 + 2) = v85.i64[0];
          *(v91 + 6) = v85.i32[2];
          *(v91 + 7) = 0;
          v111 = v88;
          v113 = v89;
        }

        ++v66;
      }

      while (v66 != a8);
    }
  }

  else if (a8)
  {
    v92 = 0;
    v93.i64[0] = 0x7F0000007FLL;
    v93.i64[1] = 0x7F0000007FLL;
    v94.i64[0] = 0x7F0000007FLL;
    v94.i64[1] = 0x7F0000007FLL;
    v112 = vnegq_f32(v93);
    v114 = v94;
    do
    {
      v95 = v121[0] + 32 * *(v43 + 4 * v92);
      v97 = *v95;
      v96 = *(v95 + 1);
      v98 = vcgt_f32(*v95, *&v96);
      if ((v98.i8[0] & 1) == 0 && (v98.i8[4] & 1) == 0 && *(&v96 + 2) >= *(&v97 + 2))
      {
        v99 = v112;
        v99.i32[3] = 0;
        v100 = *v95;
        v100.i32[3] = 0;
        v101 = vminnmq_f32(v99, v100);
        v102 = v114;
        v102.i32[3] = 0;
        v103 = *(v95 + 1);
        v103.i32[3] = 0;
        v104 = vmaxnmq_f32(v102, v103);
        v101.i32[3] = v112.i32[3];
        v104.i32[3] = v114.i32[3];
        v105 = v115++;
        v106 = memptr + 32 * v105;
        *v106 = v97;
        *(v106 + 2) = DWORD2(v97);
        *(v106 + 3) = v92;
        *(v106 + 2) = v96;
        *(v106 + 6) = DWORD2(v96);
        *(v106 + 7) = 0;
        v112 = v101;
        v114 = v104;
      }

      ++v92;
    }

    while (a8 != v92);
  }

  kdebug_trace();
  sub_239E05F90();
  v107 = *(a1 + 12);
  if (v107)
  {
    if (v107 == 1)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

uint64_t sub_239E10B68(uint64_t a1)
{
  kdebug_trace();
  v2 = *(a1 + 144);
  v3 = *(a1 + 48);
  v5 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 40) + 24), v4, 0);
  sub_239E006FC(v3, v2, v5, *(*(a1 + 64) + 32));
  v6 = *(a1 + 72);
  v7 = *(a1 + 148);
  v9 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 48) + 24), v8, 0);
  sub_239E006FC(v6, v7, v9, *(*(a1 + 80) + 32));
  v10 = *(a1 + 88);
  v11 = (*(*(a1 + 96) + 8) - **(a1 + 96));
  v13 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 56) + 24), v12, 0);
  sub_239E006FC(v10, v11, v13, *(*(a1 + 104) + 32));
  v14 = *(a1 + 112);
  v15 = (*(*(a1 + 96) + 32) - *(*(a1 + 96) + 24));
  v17 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 64) + 24), v16, 0);
  sub_239E006FC(v14, v15, v17, *(*(a1 + 120) + 32));
  v18 = *(a1 + 128);
  v19 = (*(*(a1 + 96) + 56) - *(*(a1 + 96) + 48));
  v21 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 72) + 24), v20, 0);
  sub_239E006FC(v18, v19, v21, *(*(a1 + 136) + 32));
  objc_msgSend_setSignaledValue_(*(a1 + 32), v22, 2);
  munmap(*(a1 + 48), *(a1 + 144));
  munmap(*(a1 + 72), *(a1 + 148));
  v23 = *(a1 + 96);
  if (v23)
  {
    v24 = *(v23 + 48);
    if (v24)
    {
      *(v23 + 56) = v24;
      operator delete(v24);
    }

    v25 = *(v23 + 24);
    if (v25)
    {
      *(v23 + 32) = v25;
      operator delete(v25);
    }

    v26 = *v23;
    if (*v23)
    {
      *(v23 + 8) = v26;
      operator delete(v26);
    }

    MEMORY[0x23EE7D780](v23, 0x10C40E523AF1CLL);
  }

  v27 = *(a1 + 56);
  add = atomic_fetch_add(v27 + 2, 0xFFFFFFFF);
  if (v27 && add == 1)
  {
    (*(*v27 + 8))(v27);
  }

  sub_239E18C24(*(a1 + 64));
  sub_239E18C24(*(a1 + 80));
  sub_239E18C24(*(a1 + 104));
  sub_239E18C24(*(a1 + 120));
  sub_239E18C24(*(a1 + 136));

  return kdebug_trace();
}

uint64_t sub_239E10DD8(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int **a6, uint64_t a7, NSObject *a8, float32x4_t *a9)
{
  if (a7 == 1)
  {
    v16 = 4;
  }

  else
  {
    v16 = 3;
  }

  v17 = *a2;
  v18 = a2[1];
  v20 = (v18 - v17) >> 3;
  v21 = 0;
  if (v18 != v17)
  {
    v22 = *a6;
    if (v20 <= 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = (v18 - v17) >> 3;
    }

    do
    {
      v24 = *v22++;
      v21 += v16 * v24;
      --v23;
    }

    while (v23);
  }

  v108 = 0;
  v109 = 0;
  v110 = 0;
  sub_239E15CC0(&v108, v17, v18, v20);
  v111 = 0;
  v112 = 0;
  v113 = 0;
  sub_239E15D78(&v111, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 2);
  v114 = 0;
  v115 = 0;
  v116 = 0;
  sub_239E15CC0(&v114, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 3);
  __p = 0;
  v118 = 0;
  v119 = 0;
  sub_239E15D78(&__p, *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 2);
  v25 = 1.0;
  if (*(a1 + 12) == 3)
  {
    v25 = 2.0;
  }

  v26 = (v25 * (v21 / v16));
  memptr = 0;
  malloc_type_posix_memalign(&memptr, 0x20uLL, 32 * v26, 0x1000040E0EAB150uLL);
  v28.i64[0] = 0x7F0000007FLL;
  v28.i64[1] = 0x7F0000007FLL;
  v29 = vnegq_f32(v28);
  *a9 = v29;
  a9[1] = v28;
  v31 = *a2;
  v30 = a2[1];
  if (a7)
  {
    if (v30 != *a2)
    {
      v32 = 0;
      v33 = 0;
      do
      {
        v34 = (*a6)[v33];
        if (v34)
        {
          v35 = 0;
          for (i = 0; i != v34; ++i)
          {
            v37 = v35 + 1;
            v38 = v35 + 2;
            v39 = v35 + 3;
            v40 = *(v114 + v33);
            if (v40)
            {
              if (*(__p + v33) == 4)
              {
                v41 = *(v40 + 4 * v35);
                v37 = *(v40 + 4 * v37);
                v38 = *(v40 + 4 * v38);
                v39 = *(v40 + 4 * v39);
              }

              else
              {
                v41 = *(v40 + 2 * v35);
                v37 = *(v40 + 2 * v37);
                v38 = *(v40 + 2 * v38);
                v39 = *(v40 + 2 * v39);
              }
            }

            else
            {
              v41 = v35;
            }

            v42 = *(v108 + v33);
            v43 = *(v111 + v33);
            v44 = v42 + v43 * v41;
            v28.i64[0] = *v44;
            v28.i32[2] = *(v44 + 8);
            v45 = v42 + v43 * v37;
            v29.i64[0] = *v45;
            v29.i32[2] = *(v45 + 8);
            v46 = v42 + v43 * v38;
            v27.i64[0] = *v46;
            v27.i32[2] = *(v46 + 8);
            v47 = vsubq_f32(v29, v28);
            v48 = vsubq_f32(v27, v28);
            v49 = vmlaq_f32(vnegq_f32(vmulq_f32(v47, vextq_s8(vuzp1q_s32(v48, v48), v48, 0xCuLL))), v48, vextq_s8(vuzp1q_s32(v47, v47), v47, 0xCuLL));
            v50 = vmulq_f32(v49, v49);
            if (sqrtf(v50.f32[1] + (v50.f32[2] + v50.f32[0])) != 0.0)
            {
              v51 = v42 + v43 * v39;
              v52.i64[0] = *v51;
              v28.i32[3] = 0;
              v29.i32[3] = 0;
              v53 = vminnmq_f32(v28, v29);
              v54 = vmaxnmq_f32(v28, v29);
              v53.i32[3] = 0;
              v27.i32[3] = 0;
              v55 = vminnmq_f32(v53, v27);
              v54.i32[3] = 0;
              v56 = vmaxnmq_f32(v54, v27);
              v55.i32[3] = 0;
              v52.i64[1] = *(v51 + 8);
              v29 = vminnmq_f32(v55, v52);
              v56.i32[3] = 0;
              v28 = vmaxnmq_f32(v56, v52);
              v57 = *a9;
              v58 = a9[1];
              v57.i32[3] = 0;
              v59 = v29;
              v59.i32[3] = 0;
              v27 = vminnmq_f32(v57, v59);
              v58.i32[3] = 0;
              v60 = v28;
              v60.i32[3] = 0;
              v61 = vmaxnmq_f32(v58, v60);
              a9->i32[2] = v27.i32[2];
              a9[1].i32[2] = v61.i32[2];
              a9->i64[0] = v27.i64[0];
              a9[1].i64[0] = v61.i64[0];
              v62 = v32++;
              v106 = v32;
              v63 = memptr + 32 * v62;
              *v63 = v29.i64[0];
              *(v63 + 2) = v29.i32[2];
              *(v63 + 3) = i;
              *(v63 + 2) = v28.i64[0];
              *(v63 + 6) = v28.i32[2];
              *(v63 + 7) = v33;
            }

            v35 += 4;
          }

          v31 = *a2;
          v30 = a2[1];
        }

        ++v33;
      }

      while (v33 < (v30 - v31) >> 3);
      goto LABEL_43;
    }

LABEL_42:
    v32 = 0;
    goto LABEL_43;
  }

  if (v30 == *a2)
  {
    goto LABEL_42;
  }

  v32 = 0;
  v64 = 0;
  do
  {
    v65 = (*a6)[v64];
    if (v65)
    {
      v66 = 0;
      for (j = 0; j != v65; ++j)
      {
        v68 = v66 + 1;
        v69 = v66 + 2;
        v70 = *(v114 + v64);
        if (v70)
        {
          if (*(__p + v64) == 4)
          {
            v71 = *(v70 + 4 * v66);
            v68 = *(v70 + 4 * v68);
            v69 = *(v70 + 4 * v69);
          }

          else
          {
            v71 = *(v70 + 2 * v66);
            v68 = *(v70 + 2 * v68);
            v69 = *(v70 + 2 * v69);
          }
        }

        else
        {
          v71 = v66;
        }

        v72 = *(v108 + v64);
        v73 = *(v111 + v64);
        v74 = v72 + v73 * v71;
        v28.i64[0] = *v74;
        v28.i32[2] = *(v74 + 8);
        v75 = v72 + v73 * v68;
        v29.i64[0] = *v75;
        v29.i32[2] = *(v75 + 8);
        v76 = v72 + v73 * v69;
        v27.i64[0] = *v76;
        v27.i32[2] = *(v76 + 8);
        v77 = vsubq_f32(v29, v28);
        v78 = vsubq_f32(v27, v28);
        v79 = vmlaq_f32(vnegq_f32(vmulq_f32(v77, vextq_s8(vuzp1q_s32(v78, v78), v78, 0xCuLL))), v78, vextq_s8(vuzp1q_s32(v77, v77), v77, 0xCuLL));
        v80 = vmulq_f32(v79, v79);
        if (sqrtf(v80.f32[1] + (v80.f32[2] + v80.f32[0])) != 0.0)
        {
          v28.i32[3] = 0;
          v29.i32[3] = 0;
          v81 = vminnmq_f32(v28, v29);
          v82 = vmaxnmq_f32(v28, v29);
          v81.i32[3] = 0;
          v27.i32[3] = 0;
          v29 = vminnmq_f32(v81, v27);
          v82.i32[3] = 0;
          v28 = vmaxnmq_f32(v82, v27);
          v83 = *a9;
          v84 = a9[1];
          v83.i32[3] = 0;
          v85 = v29;
          v85.i32[3] = 0;
          v27 = vminnmq_f32(v83, v85);
          v84.i32[3] = 0;
          v86 = v28;
          v86.i32[3] = 0;
          v87 = vmaxnmq_f32(v84, v86);
          a9->i32[2] = v27.i32[2];
          a9[1].i32[2] = v87.i32[2];
          a9->i64[0] = v27.i64[0];
          a9[1].i64[0] = v87.i64[0];
          v88 = v32++;
          v106 = v32;
          v89 = memptr + 32 * v88;
          *v89 = v29.i64[0];
          *(v89 + 2) = v29.i32[2];
          *(v89 + 3) = j;
          *(v89 + 2) = v28.i64[0];
          *(v89 + 6) = v28.i32[2];
          *(v89 + 7) = v64;
        }

        v66 += 3;
      }

      v31 = *a2;
      v30 = a2[1];
    }

    ++v64;
  }

  while (v64 < (v30 - v31) >> 3);
LABEL_43:
  v90 = *(a1 + 12);
  if (v90 > 1)
  {
    if (v90 == 2)
    {
      operator new();
    }

    if (v90 == 3)
    {
      operator new();
    }
  }

  else
  {
    if (!v90)
    {
      operator new();
    }

    if (v90 == 1)
    {
      operator new();
    }
  }

  v105 = 0;
  v91 = sub_239E05840(0, memptr, v32, v26, &v105, *a9, a9[1]);
  v122 = v91;
  v104 = 0;
  v106 = 0;
  v120[0] = &v104;
  v120[1] = &v106;
  *&v121 = &v122;
  sub_239E05960();
  v94 = *(a1 + 52);
  if (v94 == 4)
  {
    v95 = 192;
  }

  else
  {
    v95 = 320;
  }

  if (v94 == 4)
  {
    v96 = 192;
  }

  else
  {
    v96 = 384;
  }

  v97 = v95 * HIDWORD(v104);
  v98 = v95 * HIDWORD(v104) + v96 * v106;
  v120[0] = 0;
  if (v98)
  {
    malloc_type_posix_memalign(v120, 0x40uLL, v98, 0x9CCB6776uLL);
    v99 = v120[0];
    if (!v120[0])
    {
      v102 = 0;
      goto LABEL_67;
    }

    v94 = *(a1 + 52);
  }

  else
  {
    v99 = 0;
  }

  v100 = v99 + v97;
  if (v94 == 4)
  {
    v101 = sub_239E09514(a1, v91, memptr, v99, v100, &v108, v92, v93);
  }

  else
  {
    v101 = sub_239E095D8(a1, v91, memptr, v99, v100, &v108, v92, v93);
  }

  v102 = v101;
LABEL_67:
  free(memptr);
  free(v91);
  if (__p)
  {
    v118 = __p;
    operator delete(__p);
  }

  if (v114)
  {
    v115 = v114;
    operator delete(v114);
  }

  if (v111)
  {
    v112 = v111;
    operator delete(v111);
  }

  if (v108)
  {
    v109 = v108;
    operator delete(v108);
  }

  return v102;
}