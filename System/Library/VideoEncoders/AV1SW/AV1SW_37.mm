uint64_t sub_277B34740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v139 = *MEMORY[0x277D85DE8];
  v15 = 2 * v8;
  if (v10 == 4)
  {
    v24 = 2 * v9;
    v25 = v138;
    if (v11 == 4)
    {
      v60 = 33;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v25[v61] = vrhaddq_u16(*(v15 + v61), *(v15 + v61 + 2));
          v62 += 8;
          v61 += 16;
        }

        while (v62 < 0x18);
        v25 += 64;
        v15 += v24;
        --v60;
      }

      while (v60);
      v63 = v138;
      v64 = v137;
      v65 = 32;
      do
      {
        v66 = 0;
        v67 = -8;
        do
        {
          *&v64[v66] = vrhaddq_u16(*&v63[v66], *&v63[v66 + 64]);
          v67 += 8;
          v66 += 16;
        }

        while (v67 < 0x18);
        v63 += 64;
        v64 += 64;
        --v65;
      }

      while (v65);
      v68 = 2 * v12;
      v69 = v137;
      v17 = 0uLL;
      v70 = 32;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v71 = 0;
        v72 = -8;
        do
        {
          v73 = vsubq_s16(*&v69[v71], *(v68 + v71));
          v20 = vpadalq_s16(v20, v73);
          v17 = vmlal_s16(v17, *v73.i8, *v73.i8);
          v19 = vmlal_high_s16(v19, v73, v73);
          v72 += 8;
          v71 += 16;
        }

        while (v72 < 0x18);
        v69 += 64;
        v68 += 2 * v13;
        --v70;
      }

      while (v70);
    }

    else if (v11)
    {
      v88 = 33;
      do
      {
        v89 = 0;
        v90 = -8;
        do
        {
          *&v25[v89] = vrhaddq_u16(*(v15 + v89), *(v15 + v89 + 2));
          v90 += 8;
          v89 += 16;
        }

        while (v90 < 0x18);
        v25 += 64;
        v15 += v24;
        --v88;
      }

      while (v88);
      v91 = vdupq_n_s16(8 - v11);
      v92 = vdupq_n_s16(v11);
      v93 = v138;
      v94 = v137;
      v95 = 32;
      do
      {
        v96 = 0;
        v97 = -8;
        do
        {
          *&v94[v96] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v93[v96], v91), *&v93[v96 + 64], v92), 3uLL);
          v97 += 8;
          v96 += 16;
        }

        while (v97 < 0x18);
        v93 += 64;
        v94 += 64;
        --v95;
      }

      while (v95);
      v98 = 2 * v12;
      v99 = v137;
      v17 = 0uLL;
      v100 = 32;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v101 = 0;
        v102 = -8;
        do
        {
          v103 = vsubq_s16(*&v99[v101], *(v98 + v101));
          v20 = vpadalq_s16(v20, v103);
          v17 = vmlal_s16(v17, *v103.i8, *v103.i8);
          v19 = vmlal_high_s16(v19, v103, v103);
          v102 += 8;
          v101 += 16;
        }

        while (v102 < 0x18);
        v99 += 64;
        v98 += 2 * v13;
        --v100;
      }

      while (v100);
    }

    else
    {
      v26 = 32;
      do
      {
        v27 = 0;
        v28 = -8;
        do
        {
          *&v25[v27] = vrhaddq_u16(*(v15 + v27), *(v15 + v27 + 2));
          v28 += 8;
          v27 += 16;
        }

        while (v28 < 0x18);
        v25 += 64;
        v15 += v24;
        --v26;
      }

      while (v26);
      v29 = 2 * v12;
      v30 = v138;
      v17 = 0uLL;
      v31 = 32;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v32 = 0;
        v33 = -8;
        do
        {
          v34 = vsubq_s16(*&v30[v32], *(v29 + v32));
          v20 = vpadalq_s16(v20, v34);
          v17 = vmlal_s16(v17, *v34.i8, *v34.i8);
          v19 = vmlal_high_s16(v19, v34, v34);
          v33 += 8;
          v32 += 16;
        }

        while (v33 < 0x18);
        v30 += 64;
        v29 += 2 * v13;
        --v31;
      }

      while (v31);
    }
  }

  else if (v10)
  {
    v35 = vdupq_n_s16(8 - v10);
    v36 = vdupq_n_s16(v10);
    v37 = 2 * v9;
    v38 = v138;
    if (v11 == 4)
    {
      v104 = 33;
      do
      {
        v105 = 0;
        v106 = -8;
        do
        {
          *&v38[v105] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v105), v35), *(v15 + v105 + 2), v36), 3uLL);
          v106 += 8;
          v105 += 16;
        }

        while (v106 < 0x18);
        v38 += 64;
        v15 += v37;
        --v104;
      }

      while (v104);
      v107 = v138;
      v108 = v137;
      v109 = 32;
      do
      {
        v110 = 0;
        v111 = -8;
        do
        {
          *&v108[v110] = vrhaddq_u16(*&v107[v110], *&v107[v110 + 64]);
          v111 += 8;
          v110 += 16;
        }

        while (v111 < 0x18);
        v107 += 64;
        v108 += 64;
        --v109;
      }

      while (v109);
      v112 = 2 * v12;
      v113 = v137;
      v17 = 0uLL;
      v114 = 32;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v115 = 0;
        v116 = -8;
        do
        {
          v117 = vsubq_s16(*&v113[v115], *(v112 + v115));
          v20 = vpadalq_s16(v20, v117);
          v17 = vmlal_s16(v17, *v117.i8, *v117.i8);
          v19 = vmlal_high_s16(v19, v117, v117);
          v116 += 8;
          v115 += 16;
        }

        while (v116 < 0x18);
        v113 += 64;
        v112 += 2 * v13;
        --v114;
      }

      while (v114);
    }

    else if (v11)
    {
      v118 = 33;
      do
      {
        v119 = 0;
        v120 = -8;
        do
        {
          *&v38[v119] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v119), v35), *(v15 + v119 + 2), v36), 3uLL);
          v120 += 8;
          v119 += 16;
        }

        while (v120 < 0x18);
        v38 += 64;
        v15 += v37;
        --v118;
      }

      while (v118);
      v121 = vdupq_n_s16(8 - v11);
      v122 = vdupq_n_s16(v11);
      v123 = v138;
      v124 = v137;
      v125 = 32;
      do
      {
        v126 = 0;
        v127 = -8;
        do
        {
          *&v124[v126] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v123[v126], v121), *&v123[v126 + 64], v122), 3uLL);
          v127 += 8;
          v126 += 16;
        }

        while (v127 < 0x18);
        v123 += 64;
        v124 += 64;
        --v125;
      }

      while (v125);
      v128 = 2 * v12;
      v129 = v137;
      v17 = 0uLL;
      v130 = 32;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v131 = 0;
        v132 = -8;
        do
        {
          v133 = vsubq_s16(*&v129[v131], *(v128 + v131));
          v20 = vpadalq_s16(v20, v133);
          v17 = vmlal_s16(v17, *v133.i8, *v133.i8);
          v19 = vmlal_high_s16(v19, v133, v133);
          v132 += 8;
          v131 += 16;
        }

        while (v132 < 0x18);
        v129 += 64;
        v128 += 2 * v13;
        --v130;
      }

      while (v130);
    }

    else
    {
      v39 = 32;
      do
      {
        v40 = 0;
        v41 = -8;
        do
        {
          *&v38[v40] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v40), v35), *(v15 + v40 + 2), v36), 3uLL);
          v41 += 8;
          v40 += 16;
        }

        while (v41 < 0x18);
        v38 += 64;
        v15 += v37;
        --v39;
      }

      while (v39);
      v42 = 2 * v12;
      v43 = v138;
      v17 = 0uLL;
      v44 = 32;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v45 = 0;
        v46 = -8;
        do
        {
          v47 = vsubq_s16(*&v43[v45], *(v42 + v45));
          v20 = vpadalq_s16(v20, v47);
          v17 = vmlal_s16(v17, *v47.i8, *v47.i8);
          v19 = vmlal_high_s16(v19, v47, v47);
          v46 += 8;
          v45 += 16;
        }

        while (v46 < 0x18);
        v43 += 64;
        v42 += 2 * v13;
        --v44;
      }

      while (v44);
    }
  }

  else if (v11 == 4)
  {
    v48 = 2 * v9;
    v49 = v15 + v48;
    v50 = v138;
    v51 = 32;
    do
    {
      v52 = 0;
      v53 = -8;
      do
      {
        *&v50[v52] = vrhaddq_u16(*(v15 + v52), *(v49 + v52));
        v53 += 8;
        v52 += 16;
      }

      while (v53 < 0x18);
      v50 += 64;
      v49 += v48;
      v15 += v48;
      --v51;
    }

    while (v51);
    v54 = 2 * v12;
    v55 = v138;
    v17 = 0uLL;
    v56 = 32;
    v19 = 0uLL;
    v20 = 0uLL;
    do
    {
      v57 = 0;
      v58 = -8;
      do
      {
        v59 = vsubq_s16(*&v55[v57], *(v54 + v57));
        v20 = vpadalq_s16(v20, v59);
        v17 = vmlal_s16(v17, *v59.i8, *v59.i8);
        v19 = vmlal_high_s16(v19, v59, v59);
        v58 += 8;
        v57 += 16;
      }

      while (v58 < 0x18);
      v55 += 64;
      v54 += 2 * v13;
      --v56;
    }

    while (v56);
  }

  else if (v11)
  {
    v74 = vdupq_n_s16(8 - v11);
    v75 = vdupq_n_s16(v11);
    v76 = 2 * v9;
    v77 = v15 + v76;
    v78 = v138;
    v79 = 32;
    do
    {
      v80 = 0;
      v81 = -8;
      do
      {
        *&v78[v80] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v80), v74), *(v77 + v80), v75), 3uLL);
        v81 += 8;
        v80 += 16;
      }

      while (v81 < 0x18);
      v78 += 64;
      v77 += v76;
      v15 += v76;
      --v79;
    }

    while (v79);
    v82 = 2 * v12;
    v83 = v138;
    v17 = 0uLL;
    v84 = 32;
    v19 = 0uLL;
    v20 = 0uLL;
    do
    {
      v85 = 0;
      v86 = -8;
      do
      {
        v87 = vsubq_s16(*&v83[v85], *(v82 + v85));
        v20 = vpadalq_s16(v20, v87);
        v17 = vmlal_s16(v17, *v87.i8, *v87.i8);
        v19 = vmlal_high_s16(v19, v87, v87);
        v86 += 8;
        v85 += 16;
      }

      while (v86 < 0x18);
      v83 += 64;
      v82 += 2 * v13;
      --v84;
    }

    while (v84);
  }

  else
  {
    v16 = 2 * v12;
    v17 = 0uLL;
    v18 = 32;
    v19 = 0uLL;
    v20 = 0uLL;
    do
    {
      v21 = 0;
      v22 = -8;
      do
      {
        v23 = vsubq_s16(*(v15 + v21), *(v16 + v21));
        v20 = vpadalq_s16(v20, v23);
        v17 = vmlal_s16(v17, *v23.i8, *v23.i8);
        v19 = vmlal_high_s16(v19, v23, v23);
        v22 += 8;
        v21 += 16;
      }

      while (v22 < 0x18);
      v16 += 2 * v13;
      v15 += 2 * v9;
      --v18;
    }

    while (v18);
  }

  v134 = vaddvq_s32(v20);
  v135 = vaddlvq_u32(vaddq_s32(v19, v17));
  *v14 = v135;
  return v135 - ((v134 * v134) >> 10);
}

uint64_t sub_277B34F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v138[520] = *MEMORY[0x277D85DE8];
  v15 = 2 * v8;
  if (v10 == 4)
  {
    v24 = 2 * v9;
    v25 = v138;
    if (v11 == 4)
    {
      v60 = 65;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v25[v61] = vrhaddq_u16(*(v15 + v61 * 8), *(v15 + v61 * 8 + 2));
          v62 += 8;
          v61 += 2;
        }

        while (v62 < 0x18);
        v25 += 8;
        v15 += v24;
        --v60;
      }

      while (v60);
      v63 = v138;
      v64 = v137;
      v65 = 64;
      do
      {
        v66 = 0;
        v67 = -8;
        do
        {
          *&v64[v66 * 8] = vrhaddq_u16(*&v63[v66], *&v63[v66 + 8]);
          v67 += 8;
          v66 += 2;
        }

        while (v67 < 0x18);
        v63 += 8;
        v64 += 64;
        --v65;
      }

      while (v65);
      v68 = 2 * v12;
      v69 = v137;
      v17 = 0uLL;
      v70 = 64;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v71 = 0;
        v72 = -8;
        do
        {
          v73 = vsubq_s16(*&v69[v71], *(v68 + v71));
          v20 = vpadalq_s16(v20, v73);
          v17 = vmlal_s16(v17, *v73.i8, *v73.i8);
          v19 = vmlal_high_s16(v19, v73, v73);
          v72 += 8;
          v71 += 16;
        }

        while (v72 < 0x18);
        v69 += 64;
        v68 += 2 * v13;
        --v70;
      }

      while (v70);
    }

    else if (v11)
    {
      v88 = 65;
      do
      {
        v89 = 0;
        v90 = -8;
        do
        {
          *&v25[v89] = vrhaddq_u16(*(v15 + v89 * 8), *(v15 + v89 * 8 + 2));
          v90 += 8;
          v89 += 2;
        }

        while (v90 < 0x18);
        v25 += 8;
        v15 += v24;
        --v88;
      }

      while (v88);
      v91 = vdupq_n_s16(8 - v11);
      v92 = vdupq_n_s16(v11);
      v93 = v138;
      v94 = v137;
      v95 = 64;
      do
      {
        v96 = 0;
        v97 = -8;
        do
        {
          *&v94[v96 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v93[v96], v91), *&v93[v96 + 8], v92), 3uLL);
          v97 += 8;
          v96 += 2;
        }

        while (v97 < 0x18);
        v93 += 8;
        v94 += 64;
        --v95;
      }

      while (v95);
      v98 = 2 * v12;
      v99 = v137;
      v17 = 0uLL;
      v100 = 64;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v101 = 0;
        v102 = -8;
        do
        {
          v103 = vsubq_s16(*&v99[v101], *(v98 + v101));
          v20 = vpadalq_s16(v20, v103);
          v17 = vmlal_s16(v17, *v103.i8, *v103.i8);
          v19 = vmlal_high_s16(v19, v103, v103);
          v102 += 8;
          v101 += 16;
        }

        while (v102 < 0x18);
        v99 += 64;
        v98 += 2 * v13;
        --v100;
      }

      while (v100);
    }

    else
    {
      v26 = 64;
      do
      {
        v27 = 0;
        v28 = -8;
        do
        {
          *&v25[v27] = vrhaddq_u16(*(v15 + v27 * 8), *(v15 + v27 * 8 + 2));
          v28 += 8;
          v27 += 2;
        }

        while (v28 < 0x18);
        v25 += 8;
        v15 += v24;
        --v26;
      }

      while (v26);
      v29 = 2 * v12;
      v30 = v138;
      v17 = 0uLL;
      v31 = 64;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v32 = 0;
        v33 = -8;
        do
        {
          v34 = vsubq_s16(*&v30[v32], *(v29 + v32 * 8));
          v20 = vpadalq_s16(v20, v34);
          v17 = vmlal_s16(v17, *v34.i8, *v34.i8);
          v19 = vmlal_high_s16(v19, v34, v34);
          v33 += 8;
          v32 += 2;
        }

        while (v33 < 0x18);
        v30 += 8;
        v29 += 2 * v13;
        --v31;
      }

      while (v31);
    }
  }

  else if (v10)
  {
    v35 = vdupq_n_s16(8 - v10);
    v36 = vdupq_n_s16(v10);
    v37 = 2 * v9;
    v38 = v138;
    if (v11 == 4)
    {
      v104 = 65;
      do
      {
        v105 = 0;
        v106 = -8;
        do
        {
          *&v38[v105] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v105 * 8), v35), *(v15 + v105 * 8 + 2), v36), 3uLL);
          v106 += 8;
          v105 += 2;
        }

        while (v106 < 0x18);
        v38 += 8;
        v15 += v37;
        --v104;
      }

      while (v104);
      v107 = v138;
      v108 = v137;
      v109 = 64;
      do
      {
        v110 = 0;
        v111 = -8;
        do
        {
          *&v108[v110 * 8] = vrhaddq_u16(*&v107[v110], *&v107[v110 + 8]);
          v111 += 8;
          v110 += 2;
        }

        while (v111 < 0x18);
        v107 += 8;
        v108 += 64;
        --v109;
      }

      while (v109);
      v112 = 2 * v12;
      v113 = v137;
      v17 = 0uLL;
      v114 = 64;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v115 = 0;
        v116 = -8;
        do
        {
          v117 = vsubq_s16(*&v113[v115], *(v112 + v115));
          v20 = vpadalq_s16(v20, v117);
          v17 = vmlal_s16(v17, *v117.i8, *v117.i8);
          v19 = vmlal_high_s16(v19, v117, v117);
          v116 += 8;
          v115 += 16;
        }

        while (v116 < 0x18);
        v113 += 64;
        v112 += 2 * v13;
        --v114;
      }

      while (v114);
    }

    else if (v11)
    {
      v118 = 65;
      do
      {
        v119 = 0;
        v120 = -8;
        do
        {
          *&v38[v119] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v119 * 8), v35), *(v15 + v119 * 8 + 2), v36), 3uLL);
          v120 += 8;
          v119 += 2;
        }

        while (v120 < 0x18);
        v38 += 8;
        v15 += v37;
        --v118;
      }

      while (v118);
      v121 = vdupq_n_s16(8 - v11);
      v122 = vdupq_n_s16(v11);
      v123 = v138;
      v124 = v137;
      v125 = 64;
      do
      {
        v126 = 0;
        v127 = -8;
        do
        {
          *&v124[v126 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v123[v126], v121), *&v123[v126 + 8], v122), 3uLL);
          v127 += 8;
          v126 += 2;
        }

        while (v127 < 0x18);
        v123 += 8;
        v124 += 64;
        --v125;
      }

      while (v125);
      v128 = 2 * v12;
      v129 = v137;
      v17 = 0uLL;
      v130 = 64;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v131 = 0;
        v132 = -8;
        do
        {
          v133 = vsubq_s16(*&v129[v131], *(v128 + v131));
          v20 = vpadalq_s16(v20, v133);
          v17 = vmlal_s16(v17, *v133.i8, *v133.i8);
          v19 = vmlal_high_s16(v19, v133, v133);
          v132 += 8;
          v131 += 16;
        }

        while (v132 < 0x18);
        v129 += 64;
        v128 += 2 * v13;
        --v130;
      }

      while (v130);
    }

    else
    {
      v39 = 64;
      do
      {
        v40 = 0;
        v41 = -8;
        do
        {
          *&v38[v40] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v40 * 8), v35), *(v15 + v40 * 8 + 2), v36), 3uLL);
          v41 += 8;
          v40 += 2;
        }

        while (v41 < 0x18);
        v38 += 8;
        v15 += v37;
        --v39;
      }

      while (v39);
      v42 = 2 * v12;
      v43 = v138;
      v17 = 0uLL;
      v44 = 64;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v45 = 0;
        v46 = -8;
        do
        {
          v47 = vsubq_s16(*&v43[v45], *(v42 + v45 * 8));
          v20 = vpadalq_s16(v20, v47);
          v17 = vmlal_s16(v17, *v47.i8, *v47.i8);
          v19 = vmlal_high_s16(v19, v47, v47);
          v46 += 8;
          v45 += 2;
        }

        while (v46 < 0x18);
        v43 += 8;
        v42 += 2 * v13;
        --v44;
      }

      while (v44);
    }
  }

  else if (v11 == 4)
  {
    v48 = 2 * v9;
    v49 = v15 + v48;
    v50 = v138;
    v51 = 64;
    do
    {
      v52 = 0;
      v53 = -8;
      do
      {
        *&v50[v52] = vrhaddq_u16(*(v15 + v52 * 8), *(v49 + v52 * 8));
        v53 += 8;
        v52 += 2;
      }

      while (v53 < 0x18);
      v50 += 8;
      v49 += v48;
      v15 += v48;
      --v51;
    }

    while (v51);
    v54 = 2 * v12;
    v55 = v138;
    v17 = 0uLL;
    v56 = 64;
    v19 = 0uLL;
    v20 = 0uLL;
    do
    {
      v57 = 0;
      v58 = -8;
      do
      {
        v59 = vsubq_s16(*&v55[v57], *(v54 + v57 * 8));
        v20 = vpadalq_s16(v20, v59);
        v17 = vmlal_s16(v17, *v59.i8, *v59.i8);
        v19 = vmlal_high_s16(v19, v59, v59);
        v58 += 8;
        v57 += 2;
      }

      while (v58 < 0x18);
      v55 += 8;
      v54 += 2 * v13;
      --v56;
    }

    while (v56);
  }

  else if (v11)
  {
    v74 = vdupq_n_s16(8 - v11);
    v75 = vdupq_n_s16(v11);
    v76 = 2 * v9;
    v77 = v15 + v76;
    v78 = v138;
    v79 = 64;
    do
    {
      v80 = 0;
      v81 = -8;
      do
      {
        *&v78[v80] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v80 * 8), v74), *(v77 + v80 * 8), v75), 3uLL);
        v81 += 8;
        v80 += 2;
      }

      while (v81 < 0x18);
      v78 += 8;
      v77 += v76;
      v15 += v76;
      --v79;
    }

    while (v79);
    v82 = 2 * v12;
    v83 = v138;
    v17 = 0uLL;
    v84 = 64;
    v19 = 0uLL;
    v20 = 0uLL;
    do
    {
      v85 = 0;
      v86 = -8;
      do
      {
        v87 = vsubq_s16(*&v83[v85], *(v82 + v85 * 8));
        v20 = vpadalq_s16(v20, v87);
        v17 = vmlal_s16(v17, *v87.i8, *v87.i8);
        v19 = vmlal_high_s16(v19, v87, v87);
        v86 += 8;
        v85 += 2;
      }

      while (v86 < 0x18);
      v83 += 8;
      v82 += 2 * v13;
      --v84;
    }

    while (v84);
  }

  else
  {
    v16 = 2 * v12;
    v17 = 0uLL;
    v18 = 64;
    v19 = 0uLL;
    v20 = 0uLL;
    do
    {
      v21 = 0;
      v22 = -8;
      do
      {
        v23 = vsubq_s16(*(v15 + v21), *(v16 + v21));
        v20 = vpadalq_s16(v20, v23);
        v17 = vmlal_s16(v17, *v23.i8, *v23.i8);
        v19 = vmlal_high_s16(v19, v23, v23);
        v22 += 8;
        v21 += 16;
      }

      while (v22 < 0x18);
      v16 += 2 * v13;
      v15 += 2 * v9;
      --v18;
    }

    while (v18);
  }

  v134 = vaddvq_s32(v20);
  v135 = vaddlvq_u32(vaddq_s32(v19, v17));
  *v14 = v135;
  return v135 - ((v134 * v134) >> 11);
}

uint64_t sub_277B35728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v138[528] = *MEMORY[0x277D85DE8];
  v15 = 2 * v8;
  if (v10 == 4)
  {
    v24 = 2 * v9;
    v25 = v138;
    if (v11 == 4)
    {
      v60 = 33;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v25[v61] = vrhaddq_u16(*(v15 + v61 * 8), *(v15 + v61 * 8 + 2));
          v62 += 8;
          v61 += 2;
        }

        while (v62 < 0x38);
        v25 += 16;
        v15 += v24;
        --v60;
      }

      while (v60);
      v63 = v138;
      v64 = v137;
      v65 = 32;
      do
      {
        v66 = 0;
        v67 = -8;
        do
        {
          *&v64[v66 * 8] = vrhaddq_u16(*&v63[v66], *&v63[v66 + 16]);
          v67 += 8;
          v66 += 2;
        }

        while (v67 < 0x38);
        v63 += 16;
        v64 += 128;
        --v65;
      }

      while (v65);
      v68 = 2 * v12;
      v69 = v137;
      v17 = 0uLL;
      v70 = 32;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v71 = 0;
        v72 = -8;
        do
        {
          v73 = vsubq_s16(*&v69[v71], *(v68 + v71));
          v20 = vpadalq_s16(v20, v73);
          v17 = vmlal_s16(v17, *v73.i8, *v73.i8);
          v19 = vmlal_high_s16(v19, v73, v73);
          v72 += 8;
          v71 += 16;
        }

        while (v72 < 0x38);
        v69 += 128;
        v68 += 2 * v13;
        --v70;
      }

      while (v70);
    }

    else if (v11)
    {
      v88 = 33;
      do
      {
        v89 = 0;
        v90 = -8;
        do
        {
          *&v25[v89] = vrhaddq_u16(*(v15 + v89 * 8), *(v15 + v89 * 8 + 2));
          v90 += 8;
          v89 += 2;
        }

        while (v90 < 0x38);
        v25 += 16;
        v15 += v24;
        --v88;
      }

      while (v88);
      v91 = vdupq_n_s16(8 - v11);
      v92 = vdupq_n_s16(v11);
      v93 = v138;
      v94 = v137;
      v95 = 32;
      do
      {
        v96 = 0;
        v97 = -8;
        do
        {
          *&v94[v96 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v93[v96], v91), *&v93[v96 + 16], v92), 3uLL);
          v97 += 8;
          v96 += 2;
        }

        while (v97 < 0x38);
        v93 += 16;
        v94 += 128;
        --v95;
      }

      while (v95);
      v98 = 2 * v12;
      v99 = v137;
      v17 = 0uLL;
      v100 = 32;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v101 = 0;
        v102 = -8;
        do
        {
          v103 = vsubq_s16(*&v99[v101], *(v98 + v101));
          v20 = vpadalq_s16(v20, v103);
          v17 = vmlal_s16(v17, *v103.i8, *v103.i8);
          v19 = vmlal_high_s16(v19, v103, v103);
          v102 += 8;
          v101 += 16;
        }

        while (v102 < 0x38);
        v99 += 128;
        v98 += 2 * v13;
        --v100;
      }

      while (v100);
    }

    else
    {
      v26 = 32;
      do
      {
        v27 = 0;
        v28 = -8;
        do
        {
          *&v25[v27] = vrhaddq_u16(*(v15 + v27 * 8), *(v15 + v27 * 8 + 2));
          v28 += 8;
          v27 += 2;
        }

        while (v28 < 0x38);
        v25 += 16;
        v15 += v24;
        --v26;
      }

      while (v26);
      v29 = 2 * v12;
      v30 = v138;
      v17 = 0uLL;
      v31 = 32;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v32 = 0;
        v33 = -8;
        do
        {
          v34 = vsubq_s16(*&v30[v32], *(v29 + v32 * 8));
          v20 = vpadalq_s16(v20, v34);
          v17 = vmlal_s16(v17, *v34.i8, *v34.i8);
          v19 = vmlal_high_s16(v19, v34, v34);
          v33 += 8;
          v32 += 2;
        }

        while (v33 < 0x38);
        v30 += 16;
        v29 += 2 * v13;
        --v31;
      }

      while (v31);
    }
  }

  else if (v10)
  {
    v35 = vdupq_n_s16(8 - v10);
    v36 = vdupq_n_s16(v10);
    v37 = 2 * v9;
    v38 = v138;
    if (v11 == 4)
    {
      v104 = 33;
      do
      {
        v105 = 0;
        v106 = -8;
        do
        {
          *&v38[v105] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v105 * 8), v35), *(v15 + v105 * 8 + 2), v36), 3uLL);
          v106 += 8;
          v105 += 2;
        }

        while (v106 < 0x38);
        v38 += 16;
        v15 += v37;
        --v104;
      }

      while (v104);
      v107 = v138;
      v108 = v137;
      v109 = 32;
      do
      {
        v110 = 0;
        v111 = -8;
        do
        {
          *&v108[v110 * 8] = vrhaddq_u16(*&v107[v110], *&v107[v110 + 16]);
          v111 += 8;
          v110 += 2;
        }

        while (v111 < 0x38);
        v107 += 16;
        v108 += 128;
        --v109;
      }

      while (v109);
      v112 = 2 * v12;
      v113 = v137;
      v17 = 0uLL;
      v114 = 32;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v115 = 0;
        v116 = -8;
        do
        {
          v117 = vsubq_s16(*&v113[v115], *(v112 + v115));
          v20 = vpadalq_s16(v20, v117);
          v17 = vmlal_s16(v17, *v117.i8, *v117.i8);
          v19 = vmlal_high_s16(v19, v117, v117);
          v116 += 8;
          v115 += 16;
        }

        while (v116 < 0x38);
        v113 += 128;
        v112 += 2 * v13;
        --v114;
      }

      while (v114);
    }

    else if (v11)
    {
      v118 = 33;
      do
      {
        v119 = 0;
        v120 = -8;
        do
        {
          *&v38[v119] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v119 * 8), v35), *(v15 + v119 * 8 + 2), v36), 3uLL);
          v120 += 8;
          v119 += 2;
        }

        while (v120 < 0x38);
        v38 += 16;
        v15 += v37;
        --v118;
      }

      while (v118);
      v121 = vdupq_n_s16(8 - v11);
      v122 = vdupq_n_s16(v11);
      v123 = v138;
      v124 = v137;
      v125 = 32;
      do
      {
        v126 = 0;
        v127 = -8;
        do
        {
          *&v124[v126 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v123[v126], v121), *&v123[v126 + 16], v122), 3uLL);
          v127 += 8;
          v126 += 2;
        }

        while (v127 < 0x38);
        v123 += 16;
        v124 += 128;
        --v125;
      }

      while (v125);
      v128 = 2 * v12;
      v129 = v137;
      v17 = 0uLL;
      v130 = 32;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v131 = 0;
        v132 = -8;
        do
        {
          v133 = vsubq_s16(*&v129[v131], *(v128 + v131));
          v20 = vpadalq_s16(v20, v133);
          v17 = vmlal_s16(v17, *v133.i8, *v133.i8);
          v19 = vmlal_high_s16(v19, v133, v133);
          v132 += 8;
          v131 += 16;
        }

        while (v132 < 0x38);
        v129 += 128;
        v128 += 2 * v13;
        --v130;
      }

      while (v130);
    }

    else
    {
      v39 = 32;
      do
      {
        v40 = 0;
        v41 = -8;
        do
        {
          *&v38[v40] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v40 * 8), v35), *(v15 + v40 * 8 + 2), v36), 3uLL);
          v41 += 8;
          v40 += 2;
        }

        while (v41 < 0x38);
        v38 += 16;
        v15 += v37;
        --v39;
      }

      while (v39);
      v42 = 2 * v12;
      v43 = v138;
      v17 = 0uLL;
      v44 = 32;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v45 = 0;
        v46 = -8;
        do
        {
          v47 = vsubq_s16(*&v43[v45], *(v42 + v45 * 8));
          v20 = vpadalq_s16(v20, v47);
          v17 = vmlal_s16(v17, *v47.i8, *v47.i8);
          v19 = vmlal_high_s16(v19, v47, v47);
          v46 += 8;
          v45 += 2;
        }

        while (v46 < 0x38);
        v43 += 16;
        v42 += 2 * v13;
        --v44;
      }

      while (v44);
    }
  }

  else if (v11 == 4)
  {
    v48 = 2 * v9;
    v49 = v15 + v48;
    v50 = v138;
    v51 = 32;
    do
    {
      v52 = 0;
      v53 = -8;
      do
      {
        *&v50[v52] = vrhaddq_u16(*(v15 + v52 * 8), *(v49 + v52 * 8));
        v53 += 8;
        v52 += 2;
      }

      while (v53 < 0x38);
      v50 += 16;
      v49 += v48;
      v15 += v48;
      --v51;
    }

    while (v51);
    v54 = 2 * v12;
    v55 = v138;
    v17 = 0uLL;
    v56 = 32;
    v19 = 0uLL;
    v20 = 0uLL;
    do
    {
      v57 = 0;
      v58 = -8;
      do
      {
        v59 = vsubq_s16(*&v55[v57], *(v54 + v57 * 8));
        v20 = vpadalq_s16(v20, v59);
        v17 = vmlal_s16(v17, *v59.i8, *v59.i8);
        v19 = vmlal_high_s16(v19, v59, v59);
        v58 += 8;
        v57 += 2;
      }

      while (v58 < 0x38);
      v55 += 16;
      v54 += 2 * v13;
      --v56;
    }

    while (v56);
  }

  else if (v11)
  {
    v74 = vdupq_n_s16(8 - v11);
    v75 = vdupq_n_s16(v11);
    v76 = 2 * v9;
    v77 = v15 + v76;
    v78 = v138;
    v79 = 32;
    do
    {
      v80 = 0;
      v81 = -8;
      do
      {
        *&v78[v80] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v80 * 8), v74), *(v77 + v80 * 8), v75), 3uLL);
        v81 += 8;
        v80 += 2;
      }

      while (v81 < 0x38);
      v78 += 16;
      v77 += v76;
      v15 += v76;
      --v79;
    }

    while (v79);
    v82 = 2 * v12;
    v83 = v138;
    v17 = 0uLL;
    v84 = 32;
    v19 = 0uLL;
    v20 = 0uLL;
    do
    {
      v85 = 0;
      v86 = -8;
      do
      {
        v87 = vsubq_s16(*&v83[v85], *(v82 + v85 * 8));
        v20 = vpadalq_s16(v20, v87);
        v17 = vmlal_s16(v17, *v87.i8, *v87.i8);
        v19 = vmlal_high_s16(v19, v87, v87);
        v86 += 8;
        v85 += 2;
      }

      while (v86 < 0x38);
      v83 += 16;
      v82 += 2 * v13;
      --v84;
    }

    while (v84);
  }

  else
  {
    v16 = 2 * v12;
    v17 = 0uLL;
    v18 = 32;
    v19 = 0uLL;
    v20 = 0uLL;
    do
    {
      v21 = 0;
      v22 = -8;
      do
      {
        v23 = vsubq_s16(*(v15 + v21), *(v16 + v21));
        v20 = vpadalq_s16(v20, v23);
        v17 = vmlal_s16(v17, *v23.i8, *v23.i8);
        v19 = vmlal_high_s16(v19, v23, v23);
        v22 += 8;
        v21 += 16;
      }

      while (v22 < 0x38);
      v16 += 2 * v13;
      v15 += 2 * v9;
      --v18;
    }

    while (v18);
  }

  v134 = vaddvq_s32(v20);
  v135 = vaddlvq_u32(vaddq_s32(v19, v17));
  *v14 = v135;
  return v135 - ((v134 * v134) >> 11);
}

uint64_t sub_277B35F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v138[1040] = *MEMORY[0x277D85DE8];
  v15 = 2 * v8;
  if (v10 == 4)
  {
    v24 = 2 * v9;
    v25 = v138;
    if (v11 == 4)
    {
      v60 = 65;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v25[v61] = vrhaddq_u16(*(v15 + v61 * 8), *(v15 + v61 * 8 + 2));
          v62 += 8;
          v61 += 2;
        }

        while (v62 < 0x38);
        v25 += 16;
        v15 += v24;
        --v60;
      }

      while (v60);
      v63 = v138;
      v64 = v137;
      v65 = 64;
      do
      {
        v66 = 0;
        v67 = -8;
        do
        {
          *&v64[v66 * 8] = vrhaddq_u16(*&v63[v66], *&v63[v66 + 16]);
          v67 += 8;
          v66 += 2;
        }

        while (v67 < 0x38);
        v63 += 16;
        v64 += 128;
        --v65;
      }

      while (v65);
      v68 = 2 * v12;
      v69 = v137;
      v17 = 0uLL;
      v70 = 64;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v71 = 0;
        v72 = -8;
        do
        {
          v73 = vsubq_s16(*&v69[v71], *(v68 + v71));
          v20 = vpadalq_s16(v20, v73);
          v17 = vmlal_s16(v17, *v73.i8, *v73.i8);
          v19 = vmlal_high_s16(v19, v73, v73);
          v72 += 8;
          v71 += 16;
        }

        while (v72 < 0x38);
        v69 += 128;
        v68 += 2 * v13;
        --v70;
      }

      while (v70);
    }

    else if (v11)
    {
      v88 = 65;
      do
      {
        v89 = 0;
        v90 = -8;
        do
        {
          *&v25[v89] = vrhaddq_u16(*(v15 + v89 * 8), *(v15 + v89 * 8 + 2));
          v90 += 8;
          v89 += 2;
        }

        while (v90 < 0x38);
        v25 += 16;
        v15 += v24;
        --v88;
      }

      while (v88);
      v91 = vdupq_n_s16(8 - v11);
      v92 = vdupq_n_s16(v11);
      v93 = v138;
      v94 = v137;
      v95 = 64;
      do
      {
        v96 = 0;
        v97 = -8;
        do
        {
          *&v94[v96 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v93[v96], v91), *&v93[v96 + 16], v92), 3uLL);
          v97 += 8;
          v96 += 2;
        }

        while (v97 < 0x38);
        v93 += 16;
        v94 += 128;
        --v95;
      }

      while (v95);
      v98 = 2 * v12;
      v99 = v137;
      v17 = 0uLL;
      v100 = 64;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v101 = 0;
        v102 = -8;
        do
        {
          v103 = vsubq_s16(*&v99[v101], *(v98 + v101));
          v20 = vpadalq_s16(v20, v103);
          v17 = vmlal_s16(v17, *v103.i8, *v103.i8);
          v19 = vmlal_high_s16(v19, v103, v103);
          v102 += 8;
          v101 += 16;
        }

        while (v102 < 0x38);
        v99 += 128;
        v98 += 2 * v13;
        --v100;
      }

      while (v100);
    }

    else
    {
      v26 = 64;
      do
      {
        v27 = 0;
        v28 = -8;
        do
        {
          *&v25[v27] = vrhaddq_u16(*(v15 + v27 * 8), *(v15 + v27 * 8 + 2));
          v28 += 8;
          v27 += 2;
        }

        while (v28 < 0x38);
        v25 += 16;
        v15 += v24;
        --v26;
      }

      while (v26);
      v29 = 2 * v12;
      v30 = v138;
      v17 = 0uLL;
      v31 = 64;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v32 = 0;
        v33 = -8;
        do
        {
          v34 = vsubq_s16(*&v30[v32], *(v29 + v32 * 8));
          v20 = vpadalq_s16(v20, v34);
          v17 = vmlal_s16(v17, *v34.i8, *v34.i8);
          v19 = vmlal_high_s16(v19, v34, v34);
          v33 += 8;
          v32 += 2;
        }

        while (v33 < 0x38);
        v30 += 16;
        v29 += 2 * v13;
        --v31;
      }

      while (v31);
    }
  }

  else if (v10)
  {
    v35 = vdupq_n_s16(8 - v10);
    v36 = vdupq_n_s16(v10);
    v37 = 2 * v9;
    v38 = v138;
    if (v11 == 4)
    {
      v104 = 65;
      do
      {
        v105 = 0;
        v106 = -8;
        do
        {
          *&v38[v105] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v105 * 8), v35), *(v15 + v105 * 8 + 2), v36), 3uLL);
          v106 += 8;
          v105 += 2;
        }

        while (v106 < 0x38);
        v38 += 16;
        v15 += v37;
        --v104;
      }

      while (v104);
      v107 = v138;
      v108 = v137;
      v109 = 64;
      do
      {
        v110 = 0;
        v111 = -8;
        do
        {
          *&v108[v110 * 8] = vrhaddq_u16(*&v107[v110], *&v107[v110 + 16]);
          v111 += 8;
          v110 += 2;
        }

        while (v111 < 0x38);
        v107 += 16;
        v108 += 128;
        --v109;
      }

      while (v109);
      v112 = 2 * v12;
      v113 = v137;
      v17 = 0uLL;
      v114 = 64;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v115 = 0;
        v116 = -8;
        do
        {
          v117 = vsubq_s16(*&v113[v115], *(v112 + v115));
          v20 = vpadalq_s16(v20, v117);
          v17 = vmlal_s16(v17, *v117.i8, *v117.i8);
          v19 = vmlal_high_s16(v19, v117, v117);
          v116 += 8;
          v115 += 16;
        }

        while (v116 < 0x38);
        v113 += 128;
        v112 += 2 * v13;
        --v114;
      }

      while (v114);
    }

    else if (v11)
    {
      v118 = 65;
      do
      {
        v119 = 0;
        v120 = -8;
        do
        {
          *&v38[v119] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v119 * 8), v35), *(v15 + v119 * 8 + 2), v36), 3uLL);
          v120 += 8;
          v119 += 2;
        }

        while (v120 < 0x38);
        v38 += 16;
        v15 += v37;
        --v118;
      }

      while (v118);
      v121 = vdupq_n_s16(8 - v11);
      v122 = vdupq_n_s16(v11);
      v123 = v138;
      v124 = v137;
      v125 = 64;
      do
      {
        v126 = 0;
        v127 = -8;
        do
        {
          *&v124[v126 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v123[v126], v121), *&v123[v126 + 16], v122), 3uLL);
          v127 += 8;
          v126 += 2;
        }

        while (v127 < 0x38);
        v123 += 16;
        v124 += 128;
        --v125;
      }

      while (v125);
      v128 = 2 * v12;
      v129 = v137;
      v17 = 0uLL;
      v130 = 64;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v131 = 0;
        v132 = -8;
        do
        {
          v133 = vsubq_s16(*&v129[v131], *(v128 + v131));
          v20 = vpadalq_s16(v20, v133);
          v17 = vmlal_s16(v17, *v133.i8, *v133.i8);
          v19 = vmlal_high_s16(v19, v133, v133);
          v132 += 8;
          v131 += 16;
        }

        while (v132 < 0x38);
        v129 += 128;
        v128 += 2 * v13;
        --v130;
      }

      while (v130);
    }

    else
    {
      v39 = 64;
      do
      {
        v40 = 0;
        v41 = -8;
        do
        {
          *&v38[v40] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v40 * 8), v35), *(v15 + v40 * 8 + 2), v36), 3uLL);
          v41 += 8;
          v40 += 2;
        }

        while (v41 < 0x38);
        v38 += 16;
        v15 += v37;
        --v39;
      }

      while (v39);
      v42 = 2 * v12;
      v43 = v138;
      v17 = 0uLL;
      v44 = 64;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v45 = 0;
        v46 = -8;
        do
        {
          v47 = vsubq_s16(*&v43[v45], *(v42 + v45 * 8));
          v20 = vpadalq_s16(v20, v47);
          v17 = vmlal_s16(v17, *v47.i8, *v47.i8);
          v19 = vmlal_high_s16(v19, v47, v47);
          v46 += 8;
          v45 += 2;
        }

        while (v46 < 0x38);
        v43 += 16;
        v42 += 2 * v13;
        --v44;
      }

      while (v44);
    }
  }

  else if (v11 == 4)
  {
    v48 = 2 * v9;
    v49 = v15 + v48;
    v50 = v138;
    v51 = 64;
    do
    {
      v52 = 0;
      v53 = -8;
      do
      {
        *&v50[v52] = vrhaddq_u16(*(v15 + v52 * 8), *(v49 + v52 * 8));
        v53 += 8;
        v52 += 2;
      }

      while (v53 < 0x38);
      v50 += 16;
      v49 += v48;
      v15 += v48;
      --v51;
    }

    while (v51);
    v54 = 2 * v12;
    v55 = v138;
    v17 = 0uLL;
    v56 = 64;
    v19 = 0uLL;
    v20 = 0uLL;
    do
    {
      v57 = 0;
      v58 = -8;
      do
      {
        v59 = vsubq_s16(*&v55[v57], *(v54 + v57 * 8));
        v20 = vpadalq_s16(v20, v59);
        v17 = vmlal_s16(v17, *v59.i8, *v59.i8);
        v19 = vmlal_high_s16(v19, v59, v59);
        v58 += 8;
        v57 += 2;
      }

      while (v58 < 0x38);
      v55 += 16;
      v54 += 2 * v13;
      --v56;
    }

    while (v56);
  }

  else if (v11)
  {
    v74 = vdupq_n_s16(8 - v11);
    v75 = vdupq_n_s16(v11);
    v76 = 2 * v9;
    v77 = v15 + v76;
    v78 = v138;
    v79 = 64;
    do
    {
      v80 = 0;
      v81 = -8;
      do
      {
        *&v78[v80] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v80 * 8), v74), *(v77 + v80 * 8), v75), 3uLL);
        v81 += 8;
        v80 += 2;
      }

      while (v81 < 0x38);
      v78 += 16;
      v77 += v76;
      v15 += v76;
      --v79;
    }

    while (v79);
    v82 = 2 * v12;
    v83 = v138;
    v17 = 0uLL;
    v84 = 64;
    v19 = 0uLL;
    v20 = 0uLL;
    do
    {
      v85 = 0;
      v86 = -8;
      do
      {
        v87 = vsubq_s16(*&v83[v85], *(v82 + v85 * 8));
        v20 = vpadalq_s16(v20, v87);
        v17 = vmlal_s16(v17, *v87.i8, *v87.i8);
        v19 = vmlal_high_s16(v19, v87, v87);
        v86 += 8;
        v85 += 2;
      }

      while (v86 < 0x38);
      v83 += 16;
      v82 += 2 * v13;
      --v84;
    }

    while (v84);
  }

  else
  {
    v16 = 2 * v12;
    v17 = 0uLL;
    v18 = 64;
    v19 = 0uLL;
    v20 = 0uLL;
    do
    {
      v21 = 0;
      v22 = -8;
      do
      {
        v23 = vsubq_s16(*(v15 + v21), *(v16 + v21));
        v20 = vpadalq_s16(v20, v23);
        v17 = vmlal_s16(v17, *v23.i8, *v23.i8);
        v19 = vmlal_high_s16(v19, v23, v23);
        v22 += 8;
        v21 += 16;
      }

      while (v22 < 0x38);
      v16 += 2 * v13;
      v15 += 2 * v9;
      --v18;
    }

    while (v18);
  }

  v134 = vaddvq_s32(v20);
  v135 = vaddlvq_u32(vaddq_s32(v19, v17));
  *v14 = v135;
  return v135 - ((v134 * v134) >> 12);
}

uint64_t sub_277B36740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v138[2064] = *MEMORY[0x277D85DE8];
  v15 = 2 * v8;
  if (v10 == 4)
  {
    v24 = 2 * v9;
    v25 = v138;
    if (v11 == 4)
    {
      v60 = 129;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v25[v61] = vrhaddq_u16(*(v15 + v61 * 8), *(v15 + v61 * 8 + 2));
          v62 += 8;
          v61 += 2;
        }

        while (v62 < 0x38);
        v25 += 16;
        v15 += v24;
        --v60;
      }

      while (v60);
      v63 = v138;
      v64 = v137;
      v65 = 128;
      do
      {
        v66 = 0;
        v67 = -8;
        do
        {
          *&v64[v66 * 8] = vrhaddq_u16(*&v63[v66], *&v63[v66 + 16]);
          v67 += 8;
          v66 += 2;
        }

        while (v67 < 0x38);
        v63 += 16;
        v64 += 128;
        --v65;
      }

      while (v65);
      v68 = 2 * v12;
      v69 = v137;
      v17 = 0uLL;
      v70 = 128;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v71 = 0;
        v72 = -8;
        do
        {
          v73 = vsubq_s16(*&v69[v71], *(v68 + v71));
          v20 = vpadalq_s16(v20, v73);
          v17 = vmlal_s16(v17, *v73.i8, *v73.i8);
          v19 = vmlal_high_s16(v19, v73, v73);
          v72 += 8;
          v71 += 16;
        }

        while (v72 < 0x38);
        v69 += 128;
        v68 += 2 * v13;
        --v70;
      }

      while (v70);
    }

    else if (v11)
    {
      v88 = 129;
      do
      {
        v89 = 0;
        v90 = -8;
        do
        {
          *&v25[v89] = vrhaddq_u16(*(v15 + v89 * 8), *(v15 + v89 * 8 + 2));
          v90 += 8;
          v89 += 2;
        }

        while (v90 < 0x38);
        v25 += 16;
        v15 += v24;
        --v88;
      }

      while (v88);
      v91 = vdupq_n_s16(8 - v11);
      v92 = vdupq_n_s16(v11);
      v93 = v138;
      v94 = v137;
      v95 = 128;
      do
      {
        v96 = 0;
        v97 = -8;
        do
        {
          *&v94[v96 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v93[v96], v91), *&v93[v96 + 16], v92), 3uLL);
          v97 += 8;
          v96 += 2;
        }

        while (v97 < 0x38);
        v93 += 16;
        v94 += 128;
        --v95;
      }

      while (v95);
      v98 = 2 * v12;
      v99 = v137;
      v17 = 0uLL;
      v100 = 128;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v101 = 0;
        v102 = -8;
        do
        {
          v103 = vsubq_s16(*&v99[v101], *(v98 + v101));
          v20 = vpadalq_s16(v20, v103);
          v17 = vmlal_s16(v17, *v103.i8, *v103.i8);
          v19 = vmlal_high_s16(v19, v103, v103);
          v102 += 8;
          v101 += 16;
        }

        while (v102 < 0x38);
        v99 += 128;
        v98 += 2 * v13;
        --v100;
      }

      while (v100);
    }

    else
    {
      v26 = 128;
      do
      {
        v27 = 0;
        v28 = -8;
        do
        {
          *&v25[v27] = vrhaddq_u16(*(v15 + v27 * 8), *(v15 + v27 * 8 + 2));
          v28 += 8;
          v27 += 2;
        }

        while (v28 < 0x38);
        v25 += 16;
        v15 += v24;
        --v26;
      }

      while (v26);
      v29 = 2 * v12;
      v30 = v138;
      v17 = 0uLL;
      v31 = 128;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v32 = 0;
        v33 = -8;
        do
        {
          v34 = vsubq_s16(*&v30[v32], *(v29 + v32 * 8));
          v20 = vpadalq_s16(v20, v34);
          v17 = vmlal_s16(v17, *v34.i8, *v34.i8);
          v19 = vmlal_high_s16(v19, v34, v34);
          v33 += 8;
          v32 += 2;
        }

        while (v33 < 0x38);
        v30 += 16;
        v29 += 2 * v13;
        --v31;
      }

      while (v31);
    }
  }

  else if (v10)
  {
    v35 = vdupq_n_s16(8 - v10);
    v36 = vdupq_n_s16(v10);
    v37 = 2 * v9;
    v38 = v138;
    if (v11 == 4)
    {
      v104 = 129;
      do
      {
        v105 = 0;
        v106 = -8;
        do
        {
          *&v38[v105] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v105 * 8), v35), *(v15 + v105 * 8 + 2), v36), 3uLL);
          v106 += 8;
          v105 += 2;
        }

        while (v106 < 0x38);
        v38 += 16;
        v15 += v37;
        --v104;
      }

      while (v104);
      v107 = v138;
      v108 = v137;
      v109 = 128;
      do
      {
        v110 = 0;
        v111 = -8;
        do
        {
          *&v108[v110 * 8] = vrhaddq_u16(*&v107[v110], *&v107[v110 + 16]);
          v111 += 8;
          v110 += 2;
        }

        while (v111 < 0x38);
        v107 += 16;
        v108 += 128;
        --v109;
      }

      while (v109);
      v112 = 2 * v12;
      v113 = v137;
      v17 = 0uLL;
      v114 = 128;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v115 = 0;
        v116 = -8;
        do
        {
          v117 = vsubq_s16(*&v113[v115], *(v112 + v115));
          v20 = vpadalq_s16(v20, v117);
          v17 = vmlal_s16(v17, *v117.i8, *v117.i8);
          v19 = vmlal_high_s16(v19, v117, v117);
          v116 += 8;
          v115 += 16;
        }

        while (v116 < 0x38);
        v113 += 128;
        v112 += 2 * v13;
        --v114;
      }

      while (v114);
    }

    else if (v11)
    {
      v118 = 129;
      do
      {
        v119 = 0;
        v120 = -8;
        do
        {
          *&v38[v119] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v119 * 8), v35), *(v15 + v119 * 8 + 2), v36), 3uLL);
          v120 += 8;
          v119 += 2;
        }

        while (v120 < 0x38);
        v38 += 16;
        v15 += v37;
        --v118;
      }

      while (v118);
      v121 = vdupq_n_s16(8 - v11);
      v122 = vdupq_n_s16(v11);
      v123 = v138;
      v124 = v137;
      v125 = 128;
      do
      {
        v126 = 0;
        v127 = -8;
        do
        {
          *&v124[v126 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v123[v126], v121), *&v123[v126 + 16], v122), 3uLL);
          v127 += 8;
          v126 += 2;
        }

        while (v127 < 0x38);
        v123 += 16;
        v124 += 128;
        --v125;
      }

      while (v125);
      v128 = 2 * v12;
      v129 = v137;
      v17 = 0uLL;
      v130 = 128;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v131 = 0;
        v132 = -8;
        do
        {
          v133 = vsubq_s16(*&v129[v131], *(v128 + v131));
          v20 = vpadalq_s16(v20, v133);
          v17 = vmlal_s16(v17, *v133.i8, *v133.i8);
          v19 = vmlal_high_s16(v19, v133, v133);
          v132 += 8;
          v131 += 16;
        }

        while (v132 < 0x38);
        v129 += 128;
        v128 += 2 * v13;
        --v130;
      }

      while (v130);
    }

    else
    {
      v39 = 128;
      do
      {
        v40 = 0;
        v41 = -8;
        do
        {
          *&v38[v40] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v40 * 8), v35), *(v15 + v40 * 8 + 2), v36), 3uLL);
          v41 += 8;
          v40 += 2;
        }

        while (v41 < 0x38);
        v38 += 16;
        v15 += v37;
        --v39;
      }

      while (v39);
      v42 = 2 * v12;
      v43 = v138;
      v17 = 0uLL;
      v44 = 128;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v45 = 0;
        v46 = -8;
        do
        {
          v47 = vsubq_s16(*&v43[v45], *(v42 + v45 * 8));
          v20 = vpadalq_s16(v20, v47);
          v17 = vmlal_s16(v17, *v47.i8, *v47.i8);
          v19 = vmlal_high_s16(v19, v47, v47);
          v46 += 8;
          v45 += 2;
        }

        while (v46 < 0x38);
        v43 += 16;
        v42 += 2 * v13;
        --v44;
      }

      while (v44);
    }
  }

  else if (v11 == 4)
  {
    v48 = 2 * v9;
    v49 = v15 + v48;
    v50 = v138;
    v51 = 128;
    do
    {
      v52 = 0;
      v53 = -8;
      do
      {
        *&v50[v52] = vrhaddq_u16(*(v15 + v52 * 8), *(v49 + v52 * 8));
        v53 += 8;
        v52 += 2;
      }

      while (v53 < 0x38);
      v50 += 16;
      v49 += v48;
      v15 += v48;
      --v51;
    }

    while (v51);
    v54 = 2 * v12;
    v55 = v138;
    v17 = 0uLL;
    v56 = 128;
    v19 = 0uLL;
    v20 = 0uLL;
    do
    {
      v57 = 0;
      v58 = -8;
      do
      {
        v59 = vsubq_s16(*&v55[v57], *(v54 + v57 * 8));
        v20 = vpadalq_s16(v20, v59);
        v17 = vmlal_s16(v17, *v59.i8, *v59.i8);
        v19 = vmlal_high_s16(v19, v59, v59);
        v58 += 8;
        v57 += 2;
      }

      while (v58 < 0x38);
      v55 += 16;
      v54 += 2 * v13;
      --v56;
    }

    while (v56);
  }

  else if (v11)
  {
    v74 = vdupq_n_s16(8 - v11);
    v75 = vdupq_n_s16(v11);
    v76 = 2 * v9;
    v77 = v15 + v76;
    v78 = v138;
    v79 = 128;
    do
    {
      v80 = 0;
      v81 = -8;
      do
      {
        *&v78[v80] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v80 * 8), v74), *(v77 + v80 * 8), v75), 3uLL);
        v81 += 8;
        v80 += 2;
      }

      while (v81 < 0x38);
      v78 += 16;
      v77 += v76;
      v15 += v76;
      --v79;
    }

    while (v79);
    v82 = 2 * v12;
    v83 = v138;
    v17 = 0uLL;
    v84 = 128;
    v19 = 0uLL;
    v20 = 0uLL;
    do
    {
      v85 = 0;
      v86 = -8;
      do
      {
        v87 = vsubq_s16(*&v83[v85], *(v82 + v85 * 8));
        v20 = vpadalq_s16(v20, v87);
        v17 = vmlal_s16(v17, *v87.i8, *v87.i8);
        v19 = vmlal_high_s16(v19, v87, v87);
        v86 += 8;
        v85 += 2;
      }

      while (v86 < 0x38);
      v83 += 16;
      v82 += 2 * v13;
      --v84;
    }

    while (v84);
  }

  else
  {
    v16 = 2 * v12;
    v17 = 0uLL;
    v18 = 128;
    v19 = 0uLL;
    v20 = 0uLL;
    do
    {
      v21 = 0;
      v22 = -8;
      do
      {
        v23 = vsubq_s16(*(v15 + v21), *(v16 + v21));
        v20 = vpadalq_s16(v20, v23);
        v17 = vmlal_s16(v17, *v23.i8, *v23.i8);
        v19 = vmlal_high_s16(v19, v23, v23);
        v22 += 8;
        v21 += 16;
      }

      while (v22 < 0x38);
      v16 += 2 * v13;
      v15 += 2 * v9;
      --v18;
    }

    while (v18);
  }

  v134 = vaddvq_s32(v20);
  v135 = vaddlvq_u32(vaddq_s32(v19, v17));
  *v14 = v135;
  return v135 - ((v134 * v134) >> 13);
}

uint64_t sub_277B36F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v138[2080] = *MEMORY[0x277D85DE8];
  v15 = 2 * v8;
  if (v10 == 4)
  {
    v24 = 2 * v9;
    v25 = v138;
    if (v11 == 4)
    {
      v60 = 65;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v25[v61] = vrhaddq_u16(*(v15 + v61 * 8), *(v15 + v61 * 8 + 2));
          v62 += 8;
          v61 += 2;
        }

        while (v62 < 0x78);
        v25 += 32;
        v15 += v24;
        --v60;
      }

      while (v60);
      v63 = v138;
      v64 = v137;
      v65 = 64;
      do
      {
        v66 = 0;
        v67 = -8;
        do
        {
          *&v64[v66 * 8] = vrhaddq_u16(*&v63[v66], *&v63[v66 + 32]);
          v67 += 8;
          v66 += 2;
        }

        while (v67 < 0x78);
        v63 += 32;
        v64 += 256;
        --v65;
      }

      while (v65);
      v68 = 2 * v12;
      v69 = v137;
      v17 = 0uLL;
      v70 = 64;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v71 = 0;
        v72 = -8;
        do
        {
          v73 = vsubq_s16(*&v69[v71], *(v68 + v71));
          v20 = vpadalq_s16(v20, v73);
          v17 = vmlal_s16(v17, *v73.i8, *v73.i8);
          v19 = vmlal_high_s16(v19, v73, v73);
          v72 += 8;
          v71 += 16;
        }

        while (v72 < 0x78);
        v69 += 256;
        v68 += 2 * v13;
        --v70;
      }

      while (v70);
    }

    else if (v11)
    {
      v88 = 65;
      do
      {
        v89 = 0;
        v90 = -8;
        do
        {
          *&v25[v89] = vrhaddq_u16(*(v15 + v89 * 8), *(v15 + v89 * 8 + 2));
          v90 += 8;
          v89 += 2;
        }

        while (v90 < 0x78);
        v25 += 32;
        v15 += v24;
        --v88;
      }

      while (v88);
      v91 = vdupq_n_s16(8 - v11);
      v92 = vdupq_n_s16(v11);
      v93 = v138;
      v94 = v137;
      v95 = 64;
      do
      {
        v96 = 0;
        v97 = -8;
        do
        {
          *&v94[v96 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v93[v96], v91), *&v93[v96 + 32], v92), 3uLL);
          v97 += 8;
          v96 += 2;
        }

        while (v97 < 0x78);
        v93 += 32;
        v94 += 256;
        --v95;
      }

      while (v95);
      v98 = 2 * v12;
      v99 = v137;
      v17 = 0uLL;
      v100 = 64;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v101 = 0;
        v102 = -8;
        do
        {
          v103 = vsubq_s16(*&v99[v101], *(v98 + v101));
          v20 = vpadalq_s16(v20, v103);
          v17 = vmlal_s16(v17, *v103.i8, *v103.i8);
          v19 = vmlal_high_s16(v19, v103, v103);
          v102 += 8;
          v101 += 16;
        }

        while (v102 < 0x78);
        v99 += 256;
        v98 += 2 * v13;
        --v100;
      }

      while (v100);
    }

    else
    {
      v26 = 64;
      do
      {
        v27 = 0;
        v28 = -8;
        do
        {
          *&v25[v27] = vrhaddq_u16(*(v15 + v27 * 8), *(v15 + v27 * 8 + 2));
          v28 += 8;
          v27 += 2;
        }

        while (v28 < 0x78);
        v25 += 32;
        v15 += v24;
        --v26;
      }

      while (v26);
      v29 = 2 * v12;
      v30 = v138;
      v17 = 0uLL;
      v31 = 64;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v32 = 0;
        v33 = -8;
        do
        {
          v34 = vsubq_s16(*&v30[v32], *(v29 + v32 * 8));
          v20 = vpadalq_s16(v20, v34);
          v17 = vmlal_s16(v17, *v34.i8, *v34.i8);
          v19 = vmlal_high_s16(v19, v34, v34);
          v33 += 8;
          v32 += 2;
        }

        while (v33 < 0x78);
        v30 += 32;
        v29 += 2 * v13;
        --v31;
      }

      while (v31);
    }
  }

  else if (v10)
  {
    v35 = vdupq_n_s16(8 - v10);
    v36 = vdupq_n_s16(v10);
    v37 = 2 * v9;
    v38 = v138;
    if (v11 == 4)
    {
      v104 = 65;
      do
      {
        v105 = 0;
        v106 = -8;
        do
        {
          *&v38[v105] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v105 * 8), v35), *(v15 + v105 * 8 + 2), v36), 3uLL);
          v106 += 8;
          v105 += 2;
        }

        while (v106 < 0x78);
        v38 += 32;
        v15 += v37;
        --v104;
      }

      while (v104);
      v107 = v138;
      v108 = v137;
      v109 = 64;
      do
      {
        v110 = 0;
        v111 = -8;
        do
        {
          *&v108[v110 * 8] = vrhaddq_u16(*&v107[v110], *&v107[v110 + 32]);
          v111 += 8;
          v110 += 2;
        }

        while (v111 < 0x78);
        v107 += 32;
        v108 += 256;
        --v109;
      }

      while (v109);
      v112 = 2 * v12;
      v113 = v137;
      v17 = 0uLL;
      v114 = 64;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v115 = 0;
        v116 = -8;
        do
        {
          v117 = vsubq_s16(*&v113[v115], *(v112 + v115));
          v20 = vpadalq_s16(v20, v117);
          v17 = vmlal_s16(v17, *v117.i8, *v117.i8);
          v19 = vmlal_high_s16(v19, v117, v117);
          v116 += 8;
          v115 += 16;
        }

        while (v116 < 0x78);
        v113 += 256;
        v112 += 2 * v13;
        --v114;
      }

      while (v114);
    }

    else if (v11)
    {
      v118 = 65;
      do
      {
        v119 = 0;
        v120 = -8;
        do
        {
          *&v38[v119] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v119 * 8), v35), *(v15 + v119 * 8 + 2), v36), 3uLL);
          v120 += 8;
          v119 += 2;
        }

        while (v120 < 0x78);
        v38 += 32;
        v15 += v37;
        --v118;
      }

      while (v118);
      v121 = vdupq_n_s16(8 - v11);
      v122 = vdupq_n_s16(v11);
      v123 = v138;
      v124 = v137;
      v125 = 64;
      do
      {
        v126 = 0;
        v127 = -8;
        do
        {
          *&v124[v126 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v123[v126], v121), *&v123[v126 + 32], v122), 3uLL);
          v127 += 8;
          v126 += 2;
        }

        while (v127 < 0x78);
        v123 += 32;
        v124 += 256;
        --v125;
      }

      while (v125);
      v128 = 2 * v12;
      v129 = v137;
      v17 = 0uLL;
      v130 = 64;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v131 = 0;
        v132 = -8;
        do
        {
          v133 = vsubq_s16(*&v129[v131], *(v128 + v131));
          v20 = vpadalq_s16(v20, v133);
          v17 = vmlal_s16(v17, *v133.i8, *v133.i8);
          v19 = vmlal_high_s16(v19, v133, v133);
          v132 += 8;
          v131 += 16;
        }

        while (v132 < 0x78);
        v129 += 256;
        v128 += 2 * v13;
        --v130;
      }

      while (v130);
    }

    else
    {
      v39 = 64;
      do
      {
        v40 = 0;
        v41 = -8;
        do
        {
          *&v38[v40] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v40 * 8), v35), *(v15 + v40 * 8 + 2), v36), 3uLL);
          v41 += 8;
          v40 += 2;
        }

        while (v41 < 0x78);
        v38 += 32;
        v15 += v37;
        --v39;
      }

      while (v39);
      v42 = 2 * v12;
      v43 = v138;
      v17 = 0uLL;
      v44 = 64;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v45 = 0;
        v46 = -8;
        do
        {
          v47 = vsubq_s16(*&v43[v45], *(v42 + v45 * 8));
          v20 = vpadalq_s16(v20, v47);
          v17 = vmlal_s16(v17, *v47.i8, *v47.i8);
          v19 = vmlal_high_s16(v19, v47, v47);
          v46 += 8;
          v45 += 2;
        }

        while (v46 < 0x78);
        v43 += 32;
        v42 += 2 * v13;
        --v44;
      }

      while (v44);
    }
  }

  else if (v11 == 4)
  {
    v48 = 2 * v9;
    v49 = v15 + v48;
    v50 = v138;
    v51 = 64;
    do
    {
      v52 = 0;
      v53 = -8;
      do
      {
        *&v50[v52] = vrhaddq_u16(*(v15 + v52 * 8), *(v49 + v52 * 8));
        v53 += 8;
        v52 += 2;
      }

      while (v53 < 0x78);
      v50 += 32;
      v49 += v48;
      v15 += v48;
      --v51;
    }

    while (v51);
    v54 = 2 * v12;
    v55 = v138;
    v17 = 0uLL;
    v56 = 64;
    v19 = 0uLL;
    v20 = 0uLL;
    do
    {
      v57 = 0;
      v58 = -8;
      do
      {
        v59 = vsubq_s16(*&v55[v57], *(v54 + v57 * 8));
        v20 = vpadalq_s16(v20, v59);
        v17 = vmlal_s16(v17, *v59.i8, *v59.i8);
        v19 = vmlal_high_s16(v19, v59, v59);
        v58 += 8;
        v57 += 2;
      }

      while (v58 < 0x78);
      v55 += 32;
      v54 += 2 * v13;
      --v56;
    }

    while (v56);
  }

  else if (v11)
  {
    v74 = vdupq_n_s16(8 - v11);
    v75 = vdupq_n_s16(v11);
    v76 = 2 * v9;
    v77 = v15 + v76;
    v78 = v138;
    v79 = 64;
    do
    {
      v80 = 0;
      v81 = -8;
      do
      {
        *&v78[v80] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v80 * 8), v74), *(v77 + v80 * 8), v75), 3uLL);
        v81 += 8;
        v80 += 2;
      }

      while (v81 < 0x78);
      v78 += 32;
      v77 += v76;
      v15 += v76;
      --v79;
    }

    while (v79);
    v82 = 2 * v12;
    v83 = v138;
    v17 = 0uLL;
    v84 = 64;
    v19 = 0uLL;
    v20 = 0uLL;
    do
    {
      v85 = 0;
      v86 = -8;
      do
      {
        v87 = vsubq_s16(*&v83[v85], *(v82 + v85 * 8));
        v20 = vpadalq_s16(v20, v87);
        v17 = vmlal_s16(v17, *v87.i8, *v87.i8);
        v19 = vmlal_high_s16(v19, v87, v87);
        v86 += 8;
        v85 += 2;
      }

      while (v86 < 0x78);
      v83 += 32;
      v82 += 2 * v13;
      --v84;
    }

    while (v84);
  }

  else
  {
    v16 = 2 * v12;
    v17 = 0uLL;
    v18 = 64;
    v19 = 0uLL;
    v20 = 0uLL;
    do
    {
      v21 = 0;
      v22 = -8;
      do
      {
        v23 = vsubq_s16(*(v15 + v21), *(v16 + v21));
        v20 = vpadalq_s16(v20, v23);
        v17 = vmlal_s16(v17, *v23.i8, *v23.i8);
        v19 = vmlal_high_s16(v19, v23, v23);
        v22 += 8;
        v21 += 16;
      }

      while (v22 < 0x78);
      v16 += 2 * v13;
      v15 += 2 * v9;
      --v18;
    }

    while (v18);
  }

  v134 = vaddvq_s32(v20);
  v135 = vaddlvq_u32(vaddq_s32(v19, v17));
  *v14 = v135;
  return v135 - ((v134 * v134) >> 13);
}

uint64_t sub_277B37758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v138[4128] = *MEMORY[0x277D85DE8];
  v15 = 2 * v8;
  if (v10 == 4)
  {
    v24 = 2 * v9;
    v25 = v138;
    if (v11 == 4)
    {
      v60 = 129;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v25[v61] = vrhaddq_u16(*(v15 + v61 * 8), *(v15 + v61 * 8 + 2));
          v62 += 8;
          v61 += 2;
        }

        while (v62 < 0x78);
        v25 += 32;
        v15 += v24;
        --v60;
      }

      while (v60);
      v63 = v138;
      v64 = v137;
      v65 = 128;
      do
      {
        v66 = 0;
        v67 = -8;
        do
        {
          *&v64[v66 * 8] = vrhaddq_u16(*&v63[v66], *&v63[v66 + 32]);
          v67 += 8;
          v66 += 2;
        }

        while (v67 < 0x78);
        v63 += 32;
        v64 += 256;
        --v65;
      }

      while (v65);
      v68 = 2 * v12;
      v69 = v137;
      v17 = 0uLL;
      v70 = 128;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v71 = 0;
        v72 = -8;
        do
        {
          v73 = vsubq_s16(*&v69[v71], *(v68 + v71));
          v20 = vpadalq_s16(v20, v73);
          v17 = vmlal_s16(v17, *v73.i8, *v73.i8);
          v19 = vmlal_high_s16(v19, v73, v73);
          v72 += 8;
          v71 += 16;
        }

        while (v72 < 0x78);
        v69 += 256;
        v68 += 2 * v13;
        --v70;
      }

      while (v70);
    }

    else if (v11)
    {
      v88 = 129;
      do
      {
        v89 = 0;
        v90 = -8;
        do
        {
          *&v25[v89] = vrhaddq_u16(*(v15 + v89 * 8), *(v15 + v89 * 8 + 2));
          v90 += 8;
          v89 += 2;
        }

        while (v90 < 0x78);
        v25 += 32;
        v15 += v24;
        --v88;
      }

      while (v88);
      v91 = vdupq_n_s16(8 - v11);
      v92 = vdupq_n_s16(v11);
      v93 = v138;
      v94 = v137;
      v95 = 128;
      do
      {
        v96 = 0;
        v97 = -8;
        do
        {
          *&v94[v96 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v93[v96], v91), *&v93[v96 + 32], v92), 3uLL);
          v97 += 8;
          v96 += 2;
        }

        while (v97 < 0x78);
        v93 += 32;
        v94 += 256;
        --v95;
      }

      while (v95);
      v98 = 2 * v12;
      v99 = v137;
      v17 = 0uLL;
      v100 = 128;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v101 = 0;
        v102 = -8;
        do
        {
          v103 = vsubq_s16(*&v99[v101], *(v98 + v101));
          v20 = vpadalq_s16(v20, v103);
          v17 = vmlal_s16(v17, *v103.i8, *v103.i8);
          v19 = vmlal_high_s16(v19, v103, v103);
          v102 += 8;
          v101 += 16;
        }

        while (v102 < 0x78);
        v99 += 256;
        v98 += 2 * v13;
        --v100;
      }

      while (v100);
    }

    else
    {
      v26 = 128;
      do
      {
        v27 = 0;
        v28 = -8;
        do
        {
          *&v25[v27] = vrhaddq_u16(*(v15 + v27 * 8), *(v15 + v27 * 8 + 2));
          v28 += 8;
          v27 += 2;
        }

        while (v28 < 0x78);
        v25 += 32;
        v15 += v24;
        --v26;
      }

      while (v26);
      v29 = 2 * v12;
      v30 = v138;
      v17 = 0uLL;
      v31 = 128;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v32 = 0;
        v33 = -8;
        do
        {
          v34 = vsubq_s16(*&v30[v32], *(v29 + v32 * 8));
          v20 = vpadalq_s16(v20, v34);
          v17 = vmlal_s16(v17, *v34.i8, *v34.i8);
          v19 = vmlal_high_s16(v19, v34, v34);
          v33 += 8;
          v32 += 2;
        }

        while (v33 < 0x78);
        v30 += 32;
        v29 += 2 * v13;
        --v31;
      }

      while (v31);
    }
  }

  else if (v10)
  {
    v35 = vdupq_n_s16(8 - v10);
    v36 = vdupq_n_s16(v10);
    v37 = 2 * v9;
    v38 = v138;
    if (v11 == 4)
    {
      v104 = 129;
      do
      {
        v105 = 0;
        v106 = -8;
        do
        {
          *&v38[v105] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v105 * 8), v35), *(v15 + v105 * 8 + 2), v36), 3uLL);
          v106 += 8;
          v105 += 2;
        }

        while (v106 < 0x78);
        v38 += 32;
        v15 += v37;
        --v104;
      }

      while (v104);
      v107 = v138;
      v108 = v137;
      v109 = 128;
      do
      {
        v110 = 0;
        v111 = -8;
        do
        {
          *&v108[v110 * 8] = vrhaddq_u16(*&v107[v110], *&v107[v110 + 32]);
          v111 += 8;
          v110 += 2;
        }

        while (v111 < 0x78);
        v107 += 32;
        v108 += 256;
        --v109;
      }

      while (v109);
      v112 = 2 * v12;
      v113 = v137;
      v17 = 0uLL;
      v114 = 128;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v115 = 0;
        v116 = -8;
        do
        {
          v117 = vsubq_s16(*&v113[v115], *(v112 + v115));
          v20 = vpadalq_s16(v20, v117);
          v17 = vmlal_s16(v17, *v117.i8, *v117.i8);
          v19 = vmlal_high_s16(v19, v117, v117);
          v116 += 8;
          v115 += 16;
        }

        while (v116 < 0x78);
        v113 += 256;
        v112 += 2 * v13;
        --v114;
      }

      while (v114);
    }

    else if (v11)
    {
      v118 = 129;
      do
      {
        v119 = 0;
        v120 = -8;
        do
        {
          *&v38[v119] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v119 * 8), v35), *(v15 + v119 * 8 + 2), v36), 3uLL);
          v120 += 8;
          v119 += 2;
        }

        while (v120 < 0x78);
        v38 += 32;
        v15 += v37;
        --v118;
      }

      while (v118);
      v121 = vdupq_n_s16(8 - v11);
      v122 = vdupq_n_s16(v11);
      v123 = v138;
      v124 = v137;
      v125 = 128;
      do
      {
        v126 = 0;
        v127 = -8;
        do
        {
          *&v124[v126 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v123[v126], v121), *&v123[v126 + 32], v122), 3uLL);
          v127 += 8;
          v126 += 2;
        }

        while (v127 < 0x78);
        v123 += 32;
        v124 += 256;
        --v125;
      }

      while (v125);
      v128 = 2 * v12;
      v129 = v137;
      v17 = 0uLL;
      v130 = 128;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v131 = 0;
        v132 = -8;
        do
        {
          v133 = vsubq_s16(*&v129[v131], *(v128 + v131));
          v20 = vpadalq_s16(v20, v133);
          v17 = vmlal_s16(v17, *v133.i8, *v133.i8);
          v19 = vmlal_high_s16(v19, v133, v133);
          v132 += 8;
          v131 += 16;
        }

        while (v132 < 0x78);
        v129 += 256;
        v128 += 2 * v13;
        --v130;
      }

      while (v130);
    }

    else
    {
      v39 = 128;
      do
      {
        v40 = 0;
        v41 = -8;
        do
        {
          *&v38[v40] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v40 * 8), v35), *(v15 + v40 * 8 + 2), v36), 3uLL);
          v41 += 8;
          v40 += 2;
        }

        while (v41 < 0x78);
        v38 += 32;
        v15 += v37;
        --v39;
      }

      while (v39);
      v42 = 2 * v12;
      v43 = v138;
      v17 = 0uLL;
      v44 = 128;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v45 = 0;
        v46 = -8;
        do
        {
          v47 = vsubq_s16(*&v43[v45], *(v42 + v45 * 8));
          v20 = vpadalq_s16(v20, v47);
          v17 = vmlal_s16(v17, *v47.i8, *v47.i8);
          v19 = vmlal_high_s16(v19, v47, v47);
          v46 += 8;
          v45 += 2;
        }

        while (v46 < 0x78);
        v43 += 32;
        v42 += 2 * v13;
        --v44;
      }

      while (v44);
    }
  }

  else if (v11 == 4)
  {
    v48 = 2 * v9;
    v49 = v15 + v48;
    v50 = v138;
    v51 = 128;
    do
    {
      v52 = 0;
      v53 = -8;
      do
      {
        *&v50[v52] = vrhaddq_u16(*(v15 + v52 * 8), *(v49 + v52 * 8));
        v53 += 8;
        v52 += 2;
      }

      while (v53 < 0x78);
      v50 += 32;
      v49 += v48;
      v15 += v48;
      --v51;
    }

    while (v51);
    v54 = 2 * v12;
    v55 = v138;
    v17 = 0uLL;
    v56 = 128;
    v19 = 0uLL;
    v20 = 0uLL;
    do
    {
      v57 = 0;
      v58 = -8;
      do
      {
        v59 = vsubq_s16(*&v55[v57], *(v54 + v57 * 8));
        v20 = vpadalq_s16(v20, v59);
        v17 = vmlal_s16(v17, *v59.i8, *v59.i8);
        v19 = vmlal_high_s16(v19, v59, v59);
        v58 += 8;
        v57 += 2;
      }

      while (v58 < 0x78);
      v55 += 32;
      v54 += 2 * v13;
      --v56;
    }

    while (v56);
  }

  else if (v11)
  {
    v74 = vdupq_n_s16(8 - v11);
    v75 = vdupq_n_s16(v11);
    v76 = 2 * v9;
    v77 = v15 + v76;
    v78 = v138;
    v79 = 128;
    do
    {
      v80 = 0;
      v81 = -8;
      do
      {
        *&v78[v80] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v80 * 8), v74), *(v77 + v80 * 8), v75), 3uLL);
        v81 += 8;
        v80 += 2;
      }

      while (v81 < 0x78);
      v78 += 32;
      v77 += v76;
      v15 += v76;
      --v79;
    }

    while (v79);
    v82 = 2 * v12;
    v83 = v138;
    v17 = 0uLL;
    v84 = 128;
    v19 = 0uLL;
    v20 = 0uLL;
    do
    {
      v85 = 0;
      v86 = -8;
      do
      {
        v87 = vsubq_s16(*&v83[v85], *(v82 + v85 * 8));
        v20 = vpadalq_s16(v20, v87);
        v17 = vmlal_s16(v17, *v87.i8, *v87.i8);
        v19 = vmlal_high_s16(v19, v87, v87);
        v86 += 8;
        v85 += 2;
      }

      while (v86 < 0x78);
      v83 += 32;
      v82 += 2 * v13;
      --v84;
    }

    while (v84);
  }

  else
  {
    v16 = 2 * v12;
    v17 = 0uLL;
    v18 = 128;
    v19 = 0uLL;
    v20 = 0uLL;
    do
    {
      v21 = 0;
      v22 = -8;
      do
      {
        v23 = vsubq_s16(*(v15 + v21), *(v16 + v21));
        v20 = vpadalq_s16(v20, v23);
        v17 = vmlal_s16(v17, *v23.i8, *v23.i8);
        v19 = vmlal_high_s16(v19, v23, v23);
        v22 += 8;
        v21 += 16;
      }

      while (v22 < 0x78);
      v16 += 2 * v13;
      v15 += 2 * v9;
      --v18;
    }

    while (v18);
  }

  v134 = vaddvq_s32(v20);
  v135 = vaddlvq_u32(vaddq_s32(v19, v17));
  *v14 = v135;
  return v135 - ((v134 * v134) >> 14);
}

uint64_t sub_277B37F68(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, int *a7)
{
  v7 = 0;
  v18[17] = *MEMORY[0x277D85DE8];
  v8 = vdup_n_s16(8 - a3);
  v9 = vdup_n_s16(a3);
  v10 = (2 * a1 + 2);
  do
  {
    v18[v7++] = vrshr_n_u16(vmla_s16(vmul_s16(*(v10 - 2), v8), *v10, v9), 3uLL);
    v10 = (v10 + 2 * a2);
  }

  while ((v7 * 8) != 136);
  v11 = 0;
  v12 = vdup_n_s16(8 - a4);
  v13 = vdup_n_s16(a4);
  v14 = v18[0];
  do
  {
    v15 = v18[v11 + 1];
    *&v17[v11 * 8] = vrshr_n_u16(vmla_s16(vmul_s16(v14, v12), v15, v13), 3uLL);
    ++v11;
    v14 = v15;
  }

  while ((v11 * 8) != 128);
  return sub_277997618(v17 >> 1, 4u, a5, a6, a7);
}

uint64_t sub_277B38068(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7)
{
  v7 = 0;
  v27 = *MEMORY[0x277D85DE8];
  v8 = vdupq_n_s16(8 - a3);
  v9 = vdupq_n_s16(a3);
  v10 = (2 * a1 + 2);
  do
  {
    v26[v7++] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v10 - 2), v8), *v10, v9), 3uLL);
    v10 = (v10 + 2 * a2);
  }

  while ((v7 * 16) != 528);
  v11 = 0;
  v12 = vdupq_n_s16(8 - a4);
  v13 = vdupq_n_s16(a4);
  v14 = v26[0];
  do
  {
    v15 = v26[v11 + 1];
    *&v25[v11 * 16] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v14, v12), v15, v13), 3uLL);
    ++v11;
    v14 = v15;
  }

  while ((v11 * 16) != 512);
  v16 = 0;
  v17 = (2 * a5);
  v18 = 0uLL;
  v19 = 0uLL;
  v20 = 0uLL;
  do
  {
    v21 = vsubq_s16(*&v25[v16], *v17);
    v20 = vpadalq_s16(v20, v21);
    v18 = vmlal_s16(v18, *v21.i8, *v21.i8);
    v19 = vmlal_high_s16(v19, v21, v21);
    v16 += 16;
    v17 = (v17 + 2 * a6);
  }

  while (v16 != 512);
  v22 = vaddlvq_u32(vaddq_s32(v19, v18));
  *a7 = v22;
  v23 = vaddvq_s32(v20);
  return v22 - ((v23 * v23) >> 8);
}

uint64_t sub_277B381B4(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7)
{
  v138[15] = *MEMORY[0x277D85DE8];
  v7 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v102 = 0;
      v103 = (v7 + 18);
      do
      {
        v104 = &v137[v102];
        *v104 = vrhaddq_u16(*(v103 - 18), v103[-1]);
        v104[1] = vrhaddq_u16(*(v103 - 2), *v103);
        v102 += 2;
        v103 = (v103 + 2 * a2);
      }

      while ((v102 * 16) != 160);
      v105 = v137[0];
      v106 = v138;
      v107 = 32;
      do
      {
        v108 = &v136[v107];
        v110 = v106[-2];
        v109 = v106[-1];
        v111 = *v106;
        v106 += 2;
        v108[-2] = vrhaddq_u16(v105, v109);
        v108[-1] = vrhaddq_u16(v110, v111);
        v107 += 32;
        v105 = v109;
      }

      while (v107 != 160);
      v112 = 2 * a5;
      v113 = v136;
      v9 = 0uLL;
      v114 = 4;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v115 = 0;
        v116 = 1;
        do
        {
          v117 = v116;
          v118 = vsubq_s16(*&v113[2 * v115], *(v112 + 2 * v115));
          v12 = vpadalq_s16(v12, v118);
          v9 = vmlal_s16(v9, *v118.i8, *v118.i8);
          v11 = vmlal_high_s16(v11, v118, v118);
          v115 = 8;
          v116 = 0;
        }

        while ((v117 & 1) != 0);
        v113 += 32;
        v112 += 2 * a6;
        --v114;
      }

      while (v114);
    }

    else
    {
      v17 = 0;
      v18 = (v7 + 18);
      v19 = 2 * a2;
      if (a4)
      {
        do
        {
          v28 = &v137[v17];
          *v28 = vrhaddq_u16(*(v18 - 18), v18[-1]);
          v28[1] = vrhaddq_u16(*(v18 - 2), *v18);
          v17 += 2;
          v18 = (v18 + v19);
        }

        while ((v17 * 16) != 160);
        v29 = vdupq_n_s16(8 - a4);
        v30 = vdupq_n_s16(a4);
        v31 = v137[0];
        v32 = v138;
        v33 = 32;
        do
        {
          v35 = v32[-2];
          v34 = v32[-1];
          v36 = *v32;
          v32 += 2;
          v37 = &v136[v33];
          v37[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v31, v29), v34, v30), 3uLL);
          v37[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v35, v29), v36, v30), 3uLL);
          v33 += 32;
          v31 = v34;
        }

        while (v33 != 160);
        v38 = 2 * a5;
        v39 = v136;
        v9 = 0uLL;
        v40 = 4;
        v11 = 0uLL;
        v12 = 0uLL;
        do
        {
          v41 = 0;
          v42 = 1;
          do
          {
            v43 = v42;
            v44 = vsubq_s16(*&v39[2 * v41], *(v38 + 2 * v41));
            v12 = vpadalq_s16(v12, v44);
            v9 = vmlal_s16(v9, *v44.i8, *v44.i8);
            v11 = vmlal_high_s16(v11, v44, v44);
            v41 = 8;
            v42 = 0;
          }

          while ((v43 & 1) != 0);
          v39 += 32;
          v38 += 2 * a6;
          --v40;
        }

        while (v40);
      }

      else
      {
        do
        {
          v20 = &v137[v17];
          *v20 = vrhaddq_u16(*(v18 - 18), v18[-1]);
          v20[1] = vrhaddq_u16(*(v18 - 2), *v18);
          v17 += 2;
          v18 = (v18 + v19);
        }

        while ((v17 * 16) != 128);
        v21 = 2 * a5;
        v22 = v137;
        v9 = 0uLL;
        v23 = 4;
        v11 = 0uLL;
        v12 = 0uLL;
        do
        {
          v24 = 0;
          v25 = 1;
          do
          {
            v26 = v25;
            v27 = vsubq_s16(v22[v24 / 8], *(v21 + 2 * v24));
            v12 = vpadalq_s16(v12, v27);
            v9 = vmlal_s16(v9, *v27.i8, *v27.i8);
            v11 = vmlal_high_s16(v11, v27, v27);
            v24 = 8;
            v25 = 0;
          }

          while ((v26 & 1) != 0);
          v22 += 2;
          v21 += 2 * a6;
          --v23;
        }

        while (v23);
      }
    }
  }

  else if (a3)
  {
    v45 = 0;
    v46 = vdupq_n_s16(8 - a3);
    v47 = vdupq_n_s16(a3);
    v48 = (v7 + 18);
    v49 = 2 * a2;
    if (a4 == 4)
    {
      do
      {
        v58 = &v137[v45];
        *v58 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v48 - 18), v46), v48[-1], v47), 3uLL);
        v58[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v48 - 2), v46), *v48, v47), 3uLL);
        v45 += 2;
        v48 = (v48 + v49);
      }

      while ((v45 * 16) != 160);
      v59 = v137[0];
      v60 = v138;
      v61 = 32;
      do
      {
        v62 = &v136[v61];
        v64 = v60[-2];
        v63 = v60[-1];
        v65 = *v60;
        v60 += 2;
        v62[-2] = vrhaddq_u16(v59, v63);
        v62[-1] = vrhaddq_u16(v64, v65);
        v61 += 32;
        v59 = v63;
      }

      while (v61 != 160);
      v66 = 2 * a5;
      v67 = v136;
      v9 = 0uLL;
      v68 = 4;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v69 = 0;
        v70 = 1;
        do
        {
          v71 = v70;
          v72 = vsubq_s16(*&v67[2 * v69], *(v66 + 2 * v69));
          v12 = vpadalq_s16(v12, v72);
          v9 = vmlal_s16(v9, *v72.i8, *v72.i8);
          v11 = vmlal_high_s16(v11, v72, v72);
          v69 = 8;
          v70 = 0;
        }

        while ((v71 & 1) != 0);
        v67 += 32;
        v66 += 2 * a6;
        --v68;
      }

      while (v68);
    }

    else if (a4)
    {
      do
      {
        v73 = &v137[v45];
        *v73 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v48 - 18), v46), v48[-1], v47), 3uLL);
        v73[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v48 - 2), v46), *v48, v47), 3uLL);
        v45 += 2;
        v48 = (v48 + v49);
      }

      while ((v45 * 16) != 160);
      v74 = vdupq_n_s16(8 - a4);
      v75 = vdupq_n_s16(a4);
      v76 = v137[0];
      v77 = v138;
      v78 = 32;
      do
      {
        v80 = v77[-2];
        v79 = v77[-1];
        v81 = *v77;
        v77 += 2;
        v82 = &v136[v78];
        v82[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v76, v74), v79, v75), 3uLL);
        v82[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v80, v74), v81, v75), 3uLL);
        v78 += 32;
        v76 = v79;
      }

      while (v78 != 160);
      v83 = 2 * a5;
      v84 = v136;
      v9 = 0uLL;
      v85 = 4;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v86 = 0;
        v87 = 1;
        do
        {
          v88 = v87;
          v89 = vsubq_s16(*&v84[2 * v86], *(v83 + 2 * v86));
          v12 = vpadalq_s16(v12, v89);
          v9 = vmlal_s16(v9, *v89.i8, *v89.i8);
          v11 = vmlal_high_s16(v11, v89, v89);
          v86 = 8;
          v87 = 0;
        }

        while ((v88 & 1) != 0);
        v84 += 32;
        v83 += 2 * a6;
        --v85;
      }

      while (v85);
    }

    else
    {
      do
      {
        v50 = &v137[v45];
        *v50 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v48 - 18), v46), v48[-1], v47), 3uLL);
        v50[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v48 - 2), v46), *v48, v47), 3uLL);
        v45 += 2;
        v48 = (v48 + v49);
      }

      while ((v45 * 16) != 128);
      v51 = 2 * a5;
      v52 = v137;
      v9 = 0uLL;
      v53 = 4;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v54 = 0;
        v55 = 1;
        do
        {
          v56 = v55;
          v57 = vsubq_s16(v52[v54 / 8], *(v51 + 2 * v54));
          v12 = vpadalq_s16(v12, v57);
          v9 = vmlal_s16(v9, *v57.i8, *v57.i8);
          v11 = vmlal_high_s16(v11, v57, v57);
          v54 = 8;
          v55 = 0;
        }

        while ((v56 & 1) != 0);
        v52 += 2;
        v51 += 2 * a6;
        --v53;
      }

      while (v53);
    }
  }

  else if (a4 == 4)
  {
    v90 = 0;
    v91 = *v7;
    v92 = 2 * a2;
    do
    {
      v93 = &v137[v90];
      v94 = *(v7 + 2 * a2);
      *v93 = vrhaddq_u16(v91, v94);
      v93[1] = vrhaddq_u16(*(v7 + 16), *(v7 + v92 + 16));
      v90 += 2;
      v7 += v92;
      v91 = v94;
    }

    while ((v90 * 16) != 128);
    v95 = 2 * a5;
    v96 = v137;
    v9 = 0uLL;
    v97 = 4;
    v11 = 0uLL;
    v12 = 0uLL;
    do
    {
      v98 = 0;
      v99 = 1;
      do
      {
        v100 = v99;
        v101 = vsubq_s16(v96[v98 / 8], *(v95 + 2 * v98));
        v12 = vpadalq_s16(v12, v101);
        v9 = vmlal_s16(v9, *v101.i8, *v101.i8);
        v11 = vmlal_high_s16(v11, v101, v101);
        v98 = 8;
        v99 = 0;
      }

      while ((v100 & 1) != 0);
      v96 += 2;
      v95 += 2 * a6;
      --v97;
    }

    while (v97);
  }

  else if (a4)
  {
    v119 = 0;
    v120 = vdupq_n_s16(8 - a4);
    v121 = vdupq_n_s16(a4);
    v122 = *v7;
    v123 = 2 * a2;
    do
    {
      v124 = &v137[v119];
      v125 = *(v7 + 2 * a2);
      *v124 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v122, v120), v125, v121), 3uLL);
      v124[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + 16), v120), *(v7 + v123 + 16), v121), 3uLL);
      v119 += 2;
      v7 += v123;
      v122 = v125;
    }

    while ((v119 * 16) != 128);
    v126 = 2 * a5;
    v127 = v137;
    v9 = 0uLL;
    v128 = 4;
    v11 = 0uLL;
    v12 = 0uLL;
    do
    {
      v129 = 0;
      v130 = 1;
      do
      {
        v131 = v130;
        v132 = vsubq_s16(v127[v129 / 8], *(v126 + 2 * v129));
        v12 = vpadalq_s16(v12, v132);
        v9 = vmlal_s16(v9, *v132.i8, *v132.i8);
        v11 = vmlal_high_s16(v11, v132, v132);
        v129 = 8;
        v130 = 0;
      }

      while ((v131 & 1) != 0);
      v127 += 2;
      v126 += 2 * a6;
      --v128;
    }

    while (v128);
  }

  else
  {
    v8 = 2 * a5;
    v9 = 0uLL;
    v10 = 4;
    v11 = 0uLL;
    v12 = 0uLL;
    do
    {
      v13 = 0;
      v14 = 1;
      do
      {
        v15 = v14;
        v16 = vsubq_s16(*(v7 + 2 * v13), *(v8 + 2 * v13));
        v12 = vpadalq_s16(v12, v16);
        v9 = vmlal_s16(v9, *v16.i8, *v16.i8);
        v11 = vmlal_high_s16(v11, v16, v16);
        v13 = 8;
        v14 = 0;
      }

      while ((v15 & 1) != 0);
      v7 += 2 * a2;
      v8 += 2 * a6;
      --v10;
    }

    while (v10);
  }

  v133 = vaddvq_s32(v12);
  v134 = vaddlvq_u32(vaddq_s32(v11, v9));
  *a7 = v134;
  return v134 - ((v133 * v133) >> 6);
}

uint64_t sub_277B38960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v146[255] = *MEMORY[0x277D85DE8];
  v15 = 2 * v8;
  if (v10 == 4)
  {
    if (v11 == 4)
    {
      v110 = 0;
      v111 = (v15 + 18);
      do
      {
        v112 = &v145[v110];
        *v112 = vrhaddq_u16(*(v111 - 18), v111[-1]);
        v112[1] = vrhaddq_u16(*(v111 - 2), *v111);
        v110 += 2;
        v111 = (v111 + 2 * v9);
      }

      while ((v110 * 16) != 2080);
      v113 = v145[0];
      v114 = v146;
      v115 = 32;
      do
      {
        v116 = &v144[v115];
        v118 = v114[-2];
        v117 = v114[-1];
        v119 = *v114;
        v114 += 2;
        v116[-2] = vrhaddq_u16(v113, v117);
        v116[-1] = vrhaddq_u16(v118, v119);
        v115 += 32;
        v113 = v117;
      }

      while (v115 != 2080);
      v120 = 2 * v12;
      v121 = v144;
      v17 = 0uLL;
      v122 = 64;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v123 = 0;
        v124 = 1;
        do
        {
          v125 = v124;
          v126 = vsubq_s16(*&v121[2 * v123], *(v120 + 2 * v123));
          v20 = vpadalq_s16(v20, v126);
          v17 = vmlal_s16(v17, *v126.i8, *v126.i8);
          v19 = vmlal_high_s16(v19, v126, v126);
          v123 = 8;
          v124 = 0;
        }

        while ((v125 & 1) != 0);
        v121 += 32;
        v120 += 2 * v13;
        --v122;
      }

      while (v122);
    }

    else
    {
      v25 = 0;
      v26 = (v15 + 18);
      v27 = 2 * v9;
      if (v11)
      {
        do
        {
          v36 = &v145[v25];
          *v36 = vrhaddq_u16(*(v26 - 18), v26[-1]);
          v36[1] = vrhaddq_u16(*(v26 - 2), *v26);
          v25 += 2;
          v26 = (v26 + v27);
        }

        while ((v25 * 16) != 2080);
        v37 = vdupq_n_s16(8 - v11);
        v38 = vdupq_n_s16(v11);
        v39 = v145[0];
        v40 = v146;
        v41 = 32;
        do
        {
          v43 = v40[-2];
          v42 = v40[-1];
          v44 = *v40;
          v40 += 2;
          v45 = &v144[v41];
          v45[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v39, v37), v42, v38), 3uLL);
          v45[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v43, v37), v44, v38), 3uLL);
          v41 += 32;
          v39 = v42;
        }

        while (v41 != 2080);
        v46 = 2 * v12;
        v47 = v144;
        v17 = 0uLL;
        v48 = 64;
        v19 = 0uLL;
        v20 = 0uLL;
        do
        {
          v49 = 0;
          v50 = 1;
          do
          {
            v51 = v50;
            v52 = vsubq_s16(*&v47[2 * v49], *(v46 + 2 * v49));
            v20 = vpadalq_s16(v20, v52);
            v17 = vmlal_s16(v17, *v52.i8, *v52.i8);
            v19 = vmlal_high_s16(v19, v52, v52);
            v49 = 8;
            v50 = 0;
          }

          while ((v51 & 1) != 0);
          v47 += 32;
          v46 += 2 * v13;
          --v48;
        }

        while (v48);
      }

      else
      {
        do
        {
          v28 = &v145[v25];
          *v28 = vrhaddq_u16(*(v26 - 18), v26[-1]);
          v28[1] = vrhaddq_u16(*(v26 - 2), *v26);
          v25 += 2;
          v26 = (v26 + v27);
        }

        while ((v25 * 16) != 2048);
        v29 = 2 * v12;
        v30 = v145;
        v17 = 0uLL;
        v31 = 64;
        v19 = 0uLL;
        v20 = 0uLL;
        do
        {
          v32 = 0;
          v33 = 1;
          do
          {
            v34 = v33;
            v35 = vsubq_s16(v30[v32 / 8], *(v29 + 2 * v32));
            v20 = vpadalq_s16(v20, v35);
            v17 = vmlal_s16(v17, *v35.i8, *v35.i8);
            v19 = vmlal_high_s16(v19, v35, v35);
            v32 = 8;
            v33 = 0;
          }

          while ((v34 & 1) != 0);
          v30 += 2;
          v29 += 2 * v13;
          --v31;
        }

        while (v31);
      }
    }
  }

  else if (v10)
  {
    v53 = 0;
    v54 = vdupq_n_s16(8 - v10);
    v55 = vdupq_n_s16(v10);
    v56 = (v15 + 18);
    v57 = 2 * v9;
    if (v11 == 4)
    {
      do
      {
        v66 = &v145[v53];
        *v66 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v56 - 18), v54), v56[-1], v55), 3uLL);
        v66[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v56 - 2), v54), *v56, v55), 3uLL);
        v53 += 2;
        v56 = (v56 + v57);
      }

      while ((v53 * 16) != 2080);
      v67 = v145[0];
      v68 = v146;
      v69 = 32;
      do
      {
        v70 = &v144[v69];
        v72 = v68[-2];
        v71 = v68[-1];
        v73 = *v68;
        v68 += 2;
        v70[-2] = vrhaddq_u16(v67, v71);
        v70[-1] = vrhaddq_u16(v72, v73);
        v69 += 32;
        v67 = v71;
      }

      while (v69 != 2080);
      v74 = 2 * v12;
      v75 = v144;
      v17 = 0uLL;
      v76 = 64;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v77 = 0;
        v78 = 1;
        do
        {
          v79 = v78;
          v80 = vsubq_s16(*&v75[2 * v77], *(v74 + 2 * v77));
          v20 = vpadalq_s16(v20, v80);
          v17 = vmlal_s16(v17, *v80.i8, *v80.i8);
          v19 = vmlal_high_s16(v19, v80, v80);
          v77 = 8;
          v78 = 0;
        }

        while ((v79 & 1) != 0);
        v75 += 32;
        v74 += 2 * v13;
        --v76;
      }

      while (v76);
    }

    else if (v11)
    {
      do
      {
        v81 = &v145[v53];
        *v81 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v56 - 18), v54), v56[-1], v55), 3uLL);
        v81[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v56 - 2), v54), *v56, v55), 3uLL);
        v53 += 2;
        v56 = (v56 + v57);
      }

      while ((v53 * 16) != 2080);
      v82 = vdupq_n_s16(8 - v11);
      v83 = vdupq_n_s16(v11);
      v84 = v145[0];
      v85 = v146;
      v86 = 32;
      do
      {
        v88 = v85[-2];
        v87 = v85[-1];
        v89 = *v85;
        v85 += 2;
        v90 = &v144[v86];
        v90[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v84, v82), v87, v83), 3uLL);
        v90[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v88, v82), v89, v83), 3uLL);
        v86 += 32;
        v84 = v87;
      }

      while (v86 != 2080);
      v91 = 2 * v12;
      v92 = v144;
      v17 = 0uLL;
      v93 = 64;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v94 = 0;
        v95 = 1;
        do
        {
          v96 = v95;
          v97 = vsubq_s16(*&v92[2 * v94], *(v91 + 2 * v94));
          v20 = vpadalq_s16(v20, v97);
          v17 = vmlal_s16(v17, *v97.i8, *v97.i8);
          v19 = vmlal_high_s16(v19, v97, v97);
          v94 = 8;
          v95 = 0;
        }

        while ((v96 & 1) != 0);
        v92 += 32;
        v91 += 2 * v13;
        --v93;
      }

      while (v93);
    }

    else
    {
      do
      {
        v58 = &v145[v53];
        *v58 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v56 - 18), v54), v56[-1], v55), 3uLL);
        v58[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v56 - 2), v54), *v56, v55), 3uLL);
        v53 += 2;
        v56 = (v56 + v57);
      }

      while ((v53 * 16) != 2048);
      v59 = 2 * v12;
      v60 = v145;
      v17 = 0uLL;
      v61 = 64;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v62 = 0;
        v63 = 1;
        do
        {
          v64 = v63;
          v65 = vsubq_s16(v60[v62 / 8], *(v59 + 2 * v62));
          v20 = vpadalq_s16(v20, v65);
          v17 = vmlal_s16(v17, *v65.i8, *v65.i8);
          v19 = vmlal_high_s16(v19, v65, v65);
          v62 = 8;
          v63 = 0;
        }

        while ((v64 & 1) != 0);
        v60 += 2;
        v59 += 2 * v13;
        --v61;
      }

      while (v61);
    }
  }

  else if (v11 == 4)
  {
    v98 = 0;
    v99 = *v15;
    v100 = 2 * v9;
    do
    {
      v101 = &v145[v98];
      v102 = *(v15 + 2 * v9);
      *v101 = vrhaddq_u16(v99, v102);
      v101[1] = vrhaddq_u16(*(v15 + 16), *(v15 + v100 + 16));
      v98 += 2;
      v15 += v100;
      v99 = v102;
    }

    while ((v98 * 16) != 2048);
    v103 = 2 * v12;
    v104 = v145;
    v17 = 0uLL;
    v105 = 64;
    v19 = 0uLL;
    v20 = 0uLL;
    do
    {
      v106 = 0;
      v107 = 1;
      do
      {
        v108 = v107;
        v109 = vsubq_s16(v104[v106 / 8], *(v103 + 2 * v106));
        v20 = vpadalq_s16(v20, v109);
        v17 = vmlal_s16(v17, *v109.i8, *v109.i8);
        v19 = vmlal_high_s16(v19, v109, v109);
        v106 = 8;
        v107 = 0;
      }

      while ((v108 & 1) != 0);
      v104 += 2;
      v103 += 2 * v13;
      --v105;
    }

    while (v105);
  }

  else if (v11)
  {
    v127 = 0;
    v128 = vdupq_n_s16(8 - v11);
    v129 = vdupq_n_s16(v11);
    v130 = *v15;
    v131 = 2 * v9;
    do
    {
      v132 = &v145[v127];
      v133 = *(v15 + 2 * v9);
      *v132 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v130, v128), v133, v129), 3uLL);
      v132[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + 16), v128), *(v15 + v131 + 16), v129), 3uLL);
      v127 += 2;
      v15 += v131;
      v130 = v133;
    }

    while ((v127 * 16) != 2048);
    v134 = 2 * v12;
    v135 = v145;
    v17 = 0uLL;
    v136 = 64;
    v19 = 0uLL;
    v20 = 0uLL;
    do
    {
      v137 = 0;
      v138 = 1;
      do
      {
        v139 = v138;
        v140 = vsubq_s16(v135[v137 / 8], *(v134 + 2 * v137));
        v20 = vpadalq_s16(v20, v140);
        v17 = vmlal_s16(v17, *v140.i8, *v140.i8);
        v19 = vmlal_high_s16(v19, v140, v140);
        v137 = 8;
        v138 = 0;
      }

      while ((v139 & 1) != 0);
      v135 += 2;
      v134 += 2 * v13;
      --v136;
    }

    while (v136);
  }

  else
  {
    v16 = 2 * v12;
    v17 = 0uLL;
    v18 = 64;
    v19 = 0uLL;
    v20 = 0uLL;
    do
    {
      v21 = 0;
      v22 = 1;
      do
      {
        v23 = v22;
        v24 = vsubq_s16(*(v15 + 2 * v21), *(v16 + 2 * v21));
        v20 = vpadalq_s16(v20, v24);
        v17 = vmlal_s16(v17, *v24.i8, *v24.i8);
        v19 = vmlal_high_s16(v19, v24, v24);
        v21 = 8;
        v22 = 0;
      }

      while ((v23 & 1) != 0);
      v15 += 2 * v9;
      v16 += 2 * v13;
      --v18;
    }

    while (v18);
  }

  v141 = vaddvq_s32(v20);
  v142 = vaddlvq_u32(vaddq_s32(v19, v17));
  *v14 = v142;
  return v142 - ((v141 * v141) >> 10);
}

uint64_t sub_277B39128(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7)
{
  v136 = *MEMORY[0x277D85DE8];
  v7 = 2 * a1;
  if (a3 == 4)
  {
    v16 = 2 * a2;
    v17 = v135;
    if (a4 == 4)
    {
      v51 = 9;
      do
      {
        v52 = 0;
        v53 = -8;
        do
        {
          *&v17[v52] = vrhaddq_u16(*(v7 + v52), *(v7 + v52 + 2));
          v53 += 8;
          v52 += 16;
        }

        while (v53 < 0x18);
        v17 += 64;
        v7 += v16;
        --v51;
      }

      while (v51);
      v54 = v135;
      v55 = v134;
      v56 = 8;
      do
      {
        v57 = 0;
        v58 = -8;
        do
        {
          *&v55[v57] = vrhaddq_u16(*&v54[v57], *&v54[v57 + 64]);
          v58 += 8;
          v57 += 16;
        }

        while (v58 < 0x18);
        v54 += 64;
        v55 += 64;
        --v56;
      }

      while (v56);
      v59 = 2 * a5;
      v60 = v134;
      v9 = 0uLL;
      v61 = 8;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v62 = 0;
        v63 = -8;
        do
        {
          v64 = vsubq_s16(*&v60[v62], *(v59 + v62));
          v12 = vpadalq_s16(v12, v64);
          v9 = vmlal_s16(v9, *v64.i8, *v64.i8);
          v11 = vmlal_high_s16(v11, v64, v64);
          v63 += 8;
          v62 += 16;
        }

        while (v63 < 0x18);
        v60 += 64;
        v59 += 2 * a6;
        --v61;
      }

      while (v61);
    }

    else if (a4)
    {
      v79 = 9;
      do
      {
        v80 = 0;
        v81 = -8;
        do
        {
          *&v17[v80] = vrhaddq_u16(*(v7 + v80), *(v7 + v80 + 2));
          v81 += 8;
          v80 += 16;
        }

        while (v81 < 0x18);
        v17 += 64;
        v7 += v16;
        --v79;
      }

      while (v79);
      v82 = 8;
      v83 = vdupq_n_s16(8 - a4);
      v84 = vdupq_n_s16(a4);
      v85 = v135;
      v86 = v134;
      do
      {
        v87 = 0;
        v88 = -8;
        do
        {
          *&v86[v87] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v85[v87], v83), *&v85[v87 + 64], v84), 3uLL);
          v88 += 8;
          v87 += 16;
        }

        while (v88 < 0x18);
        v85 += 64;
        v86 += 64;
        --v82;
      }

      while (v82);
      v89 = 2 * a5;
      v90 = v134;
      v9 = 0uLL;
      v91 = 8;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v92 = 0;
        v93 = -8;
        do
        {
          v94 = vsubq_s16(*&v90[v92], *(v89 + v92));
          v12 = vpadalq_s16(v12, v94);
          v9 = vmlal_s16(v9, *v94.i8, *v94.i8);
          v11 = vmlal_high_s16(v11, v94, v94);
          v93 += 8;
          v92 += 16;
        }

        while (v93 < 0x18);
        v90 += 64;
        v89 += 2 * a6;
        --v91;
      }

      while (v91);
    }

    else
    {
      v18 = 8;
      do
      {
        v19 = 0;
        v20 = -8;
        do
        {
          *&v17[v19] = vrhaddq_u16(*(v7 + v19), *(v7 + v19 + 2));
          v20 += 8;
          v19 += 16;
        }

        while (v20 < 0x18);
        v17 += 64;
        v7 += v16;
        --v18;
      }

      while (v18);
      v21 = 2 * a5;
      v22 = v135;
      v9 = 0uLL;
      v23 = 8;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v24 = 0;
        v25 = -8;
        do
        {
          v26 = vsubq_s16(*&v22[v24], *(v21 + v24));
          v12 = vpadalq_s16(v12, v26);
          v9 = vmlal_s16(v9, *v26.i8, *v26.i8);
          v11 = vmlal_high_s16(v11, v26, v26);
          v25 += 8;
          v24 += 16;
        }

        while (v25 < 0x18);
        v22 += 64;
        v21 += 2 * a6;
        --v23;
      }

      while (v23);
    }
  }

  else if (a3)
  {
    v27 = 8;
    if (a4 == 4)
    {
      v95 = vdupq_n_s16(8 - a3);
      v96 = vdupq_n_s16(a3);
      v97 = v135;
      v98 = 9;
      do
      {
        v99 = 0;
        v100 = -8;
        do
        {
          *&v97[v99] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v99), v95), *(v7 + v99 + 2), v96), 3uLL);
          v100 += 8;
          v99 += 16;
        }

        while (v100 < 0x18);
        v97 += 64;
        v7 += 2 * a2;
        --v98;
      }

      while (v98);
      v101 = v135;
      v102 = v134;
      v103 = 8;
      do
      {
        v104 = 0;
        v105 = -8;
        do
        {
          *&v102[v104] = vrhaddq_u16(*&v101[v104], *&v101[v104 + 64]);
          v105 += 8;
          v104 += 16;
        }

        while (v105 < 0x18);
        v101 += 64;
        v102 += 64;
        --v103;
      }

      while (v103);
      v106 = 2 * a5;
      v107 = v134;
      v9 = 0uLL;
      v108 = 8;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v109 = 0;
        v110 = -8;
        do
        {
          v111 = vsubq_s16(*&v107[v109], *(v106 + v109));
          v12 = vpadalq_s16(v12, v111);
          v9 = vmlal_s16(v9, *v111.i8, *v111.i8);
          v11 = vmlal_high_s16(v11, v111, v111);
          v110 += 8;
          v109 += 16;
        }

        while (v110 < 0x18);
        v107 += 64;
        v106 += 2 * a6;
        --v108;
      }

      while (v108);
    }

    else if (a4)
    {
      v112 = vdupq_n_s16(8 - a3);
      v113 = vdupq_n_s16(a3);
      v114 = v135;
      v115 = 9;
      do
      {
        v116 = 0;
        v117 = -8;
        do
        {
          *&v114[v116] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v116), v112), *(v7 + v116 + 2), v113), 3uLL);
          v117 += 8;
          v116 += 16;
        }

        while (v117 < 0x18);
        v114 += 64;
        v7 += 2 * a2;
        --v115;
      }

      while (v115);
      v118 = 8;
      v119 = vdupq_n_s16(8 - a4);
      v120 = vdupq_n_s16(a4);
      v121 = v135;
      v122 = v134;
      do
      {
        v123 = 0;
        v124 = -8;
        do
        {
          *&v122[v123] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v121[v123], v119), *&v121[v123 + 64], v120), 3uLL);
          v124 += 8;
          v123 += 16;
        }

        while (v124 < 0x18);
        v121 += 64;
        v122 += 64;
        --v118;
      }

      while (v118);
      v125 = 2 * a5;
      v126 = v134;
      v9 = 0uLL;
      v127 = 8;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v128 = 0;
        v129 = -8;
        do
        {
          v130 = vsubq_s16(*&v126[v128], *(v125 + v128));
          v12 = vpadalq_s16(v12, v130);
          v9 = vmlal_s16(v9, *v130.i8, *v130.i8);
          v11 = vmlal_high_s16(v11, v130, v130);
          v129 += 8;
          v128 += 16;
        }

        while (v129 < 0x18);
        v126 += 64;
        v125 += 2 * a6;
        --v127;
      }

      while (v127);
    }

    else
    {
      v28 = vdupq_n_s16(8 - a3);
      v29 = vdupq_n_s16(a3);
      v30 = v135;
      do
      {
        v31 = 0;
        v32 = -8;
        do
        {
          *&v30[v31] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v31), v28), *(v7 + v31 + 2), v29), 3uLL);
          v32 += 8;
          v31 += 16;
        }

        while (v32 < 0x18);
        v30 += 64;
        v7 += 2 * a2;
        --v27;
      }

      while (v27);
      v33 = 2 * a5;
      v34 = v135;
      v9 = 0uLL;
      v35 = 8;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v36 = 0;
        v37 = -8;
        do
        {
          v38 = vsubq_s16(*&v34[v36], *(v33 + v36));
          v12 = vpadalq_s16(v12, v38);
          v9 = vmlal_s16(v9, *v38.i8, *v38.i8);
          v11 = vmlal_high_s16(v11, v38, v38);
          v37 += 8;
          v36 += 16;
        }

        while (v37 < 0x18);
        v34 += 64;
        v33 += 2 * a6;
        --v35;
      }

      while (v35);
    }
  }

  else if (a4 == 4)
  {
    v39 = 2 * a2;
    v40 = v7 + v39;
    v41 = v135;
    v42 = 8;
    do
    {
      v43 = 0;
      v44 = -8;
      do
      {
        *&v41[v43] = vrhaddq_u16(*(v7 + v43), *(v40 + v43));
        v44 += 8;
        v43 += 16;
      }

      while (v44 < 0x18);
      v41 += 64;
      v40 += v39;
      v7 += v39;
      --v42;
    }

    while (v42);
    v45 = 2 * a5;
    v46 = v135;
    v9 = 0uLL;
    v47 = 8;
    v11 = 0uLL;
    v12 = 0uLL;
    do
    {
      v48 = 0;
      v49 = -8;
      do
      {
        v50 = vsubq_s16(*&v46[v48], *(v45 + v48));
        v12 = vpadalq_s16(v12, v50);
        v9 = vmlal_s16(v9, *v50.i8, *v50.i8);
        v11 = vmlal_high_s16(v11, v50, v50);
        v49 += 8;
        v48 += 16;
      }

      while (v49 < 0x18);
      v46 += 64;
      v45 += 2 * a6;
      --v47;
    }

    while (v47);
  }

  else if (a4)
  {
    v65 = 8;
    v66 = vdupq_n_s16(8 - a4);
    v67 = vdupq_n_s16(a4);
    v68 = 2 * a2;
    v69 = v7 + v68;
    v70 = v135;
    do
    {
      v71 = 0;
      v72 = -8;
      do
      {
        *&v70[v71] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v71), v66), *(v69 + v71), v67), 3uLL);
        v72 += 8;
        v71 += 16;
      }

      while (v72 < 0x18);
      v70 += 64;
      v69 += v68;
      v7 += v68;
      --v65;
    }

    while (v65);
    v73 = 2 * a5;
    v74 = v135;
    v9 = 0uLL;
    v75 = 8;
    v11 = 0uLL;
    v12 = 0uLL;
    do
    {
      v76 = 0;
      v77 = -8;
      do
      {
        v78 = vsubq_s16(*&v74[v76], *(v73 + v76));
        v12 = vpadalq_s16(v12, v78);
        v9 = vmlal_s16(v9, *v78.i8, *v78.i8);
        v11 = vmlal_high_s16(v11, v78, v78);
        v77 += 8;
        v76 += 16;
      }

      while (v77 < 0x18);
      v74 += 64;
      v73 += 2 * a6;
      --v75;
    }

    while (v75);
  }

  else
  {
    v8 = 2 * a5;
    v9 = 0uLL;
    v10 = 8;
    v11 = 0uLL;
    v12 = 0uLL;
    do
    {
      v13 = 0;
      v14 = -8;
      do
      {
        v15 = vsubq_s16(*(v7 + v13), *(v8 + v13));
        v12 = vpadalq_s16(v12, v15);
        v9 = vmlal_s16(v9, *v15.i8, *v15.i8);
        v11 = vmlal_high_s16(v11, v15, v15);
        v14 += 8;
        v13 += 16;
      }

      while (v14 < 0x18);
      v8 += 2 * a6;
      v7 += 2 * a2;
      --v10;
    }

    while (v10);
  }

  v131 = vaddvq_s32(v12);
  v132 = vaddlvq_u32(vaddq_s32(v11, v9));
  *a7 = v132;
  return v132 - ((v131 * v131) >> 8);
}

uint64_t sub_277B39900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v139 = *MEMORY[0x277D85DE8];
  v15 = 2 * v8;
  if (v10 == 4)
  {
    v24 = 2 * v9;
    v25 = v138;
    if (v11 == 4)
    {
      v60 = 17;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v25[v61] = vrhaddq_u16(*(v15 + v61), *(v15 + v61 + 2));
          v62 += 8;
          v61 += 16;
        }

        while (v62 < 0x38);
        v25 += 128;
        v15 += v24;
        --v60;
      }

      while (v60);
      v63 = v138;
      v64 = v137;
      v65 = 16;
      do
      {
        v66 = 0;
        v67 = -8;
        do
        {
          *&v64[v66] = vrhaddq_u16(*&v63[v66], *&v63[v66 + 128]);
          v67 += 8;
          v66 += 16;
        }

        while (v67 < 0x38);
        v63 += 128;
        v64 += 128;
        --v65;
      }

      while (v65);
      v68 = 2 * v12;
      v69 = v137;
      v17 = 0uLL;
      v70 = 16;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v71 = 0;
        v72 = -8;
        do
        {
          v73 = vsubq_s16(*&v69[v71], *(v68 + v71));
          v20 = vpadalq_s16(v20, v73);
          v17 = vmlal_s16(v17, *v73.i8, *v73.i8);
          v19 = vmlal_high_s16(v19, v73, v73);
          v72 += 8;
          v71 += 16;
        }

        while (v72 < 0x38);
        v69 += 128;
        v68 += 2 * v13;
        --v70;
      }

      while (v70);
    }

    else if (v11)
    {
      v88 = 17;
      do
      {
        v89 = 0;
        v90 = -8;
        do
        {
          *&v25[v89] = vrhaddq_u16(*(v15 + v89), *(v15 + v89 + 2));
          v90 += 8;
          v89 += 16;
        }

        while (v90 < 0x38);
        v25 += 128;
        v15 += v24;
        --v88;
      }

      while (v88);
      v91 = vdupq_n_s16(8 - v11);
      v92 = vdupq_n_s16(v11);
      v93 = v138;
      v94 = v137;
      v95 = 16;
      do
      {
        v96 = 0;
        v97 = -8;
        do
        {
          *&v94[v96] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v93[v96], v91), *&v93[v96 + 128], v92), 3uLL);
          v97 += 8;
          v96 += 16;
        }

        while (v97 < 0x38);
        v93 += 128;
        v94 += 128;
        --v95;
      }

      while (v95);
      v98 = 2 * v12;
      v99 = v137;
      v17 = 0uLL;
      v100 = 16;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v101 = 0;
        v102 = -8;
        do
        {
          v103 = vsubq_s16(*&v99[v101], *(v98 + v101));
          v20 = vpadalq_s16(v20, v103);
          v17 = vmlal_s16(v17, *v103.i8, *v103.i8);
          v19 = vmlal_high_s16(v19, v103, v103);
          v102 += 8;
          v101 += 16;
        }

        while (v102 < 0x38);
        v99 += 128;
        v98 += 2 * v13;
        --v100;
      }

      while (v100);
    }

    else
    {
      v26 = 16;
      do
      {
        v27 = 0;
        v28 = -8;
        do
        {
          *&v25[v27] = vrhaddq_u16(*(v15 + v27), *(v15 + v27 + 2));
          v28 += 8;
          v27 += 16;
        }

        while (v28 < 0x38);
        v25 += 128;
        v15 += v24;
        --v26;
      }

      while (v26);
      v29 = 2 * v12;
      v30 = v138;
      v17 = 0uLL;
      v31 = 16;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v32 = 0;
        v33 = -8;
        do
        {
          v34 = vsubq_s16(*&v30[v32], *(v29 + v32));
          v20 = vpadalq_s16(v20, v34);
          v17 = vmlal_s16(v17, *v34.i8, *v34.i8);
          v19 = vmlal_high_s16(v19, v34, v34);
          v33 += 8;
          v32 += 16;
        }

        while (v33 < 0x38);
        v30 += 128;
        v29 += 2 * v13;
        --v31;
      }

      while (v31);
    }
  }

  else if (v10)
  {
    v35 = vdupq_n_s16(8 - v10);
    v36 = vdupq_n_s16(v10);
    v37 = 2 * v9;
    v38 = v138;
    if (v11 == 4)
    {
      v104 = 17;
      do
      {
        v105 = 0;
        v106 = -8;
        do
        {
          *&v38[v105] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v105), v35), *(v15 + v105 + 2), v36), 3uLL);
          v106 += 8;
          v105 += 16;
        }

        while (v106 < 0x38);
        v38 += 128;
        v15 += v37;
        --v104;
      }

      while (v104);
      v107 = v138;
      v108 = v137;
      v109 = 16;
      do
      {
        v110 = 0;
        v111 = -8;
        do
        {
          *&v108[v110] = vrhaddq_u16(*&v107[v110], *&v107[v110 + 128]);
          v111 += 8;
          v110 += 16;
        }

        while (v111 < 0x38);
        v107 += 128;
        v108 += 128;
        --v109;
      }

      while (v109);
      v112 = 2 * v12;
      v113 = v137;
      v17 = 0uLL;
      v114 = 16;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v115 = 0;
        v116 = -8;
        do
        {
          v117 = vsubq_s16(*&v113[v115], *(v112 + v115));
          v20 = vpadalq_s16(v20, v117);
          v17 = vmlal_s16(v17, *v117.i8, *v117.i8);
          v19 = vmlal_high_s16(v19, v117, v117);
          v116 += 8;
          v115 += 16;
        }

        while (v116 < 0x38);
        v113 += 128;
        v112 += 2 * v13;
        --v114;
      }

      while (v114);
    }

    else if (v11)
    {
      v118 = 17;
      do
      {
        v119 = 0;
        v120 = -8;
        do
        {
          *&v38[v119] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v119), v35), *(v15 + v119 + 2), v36), 3uLL);
          v120 += 8;
          v119 += 16;
        }

        while (v120 < 0x38);
        v38 += 128;
        v15 += v37;
        --v118;
      }

      while (v118);
      v121 = vdupq_n_s16(8 - v11);
      v122 = vdupq_n_s16(v11);
      v123 = v138;
      v124 = v137;
      v125 = 16;
      do
      {
        v126 = 0;
        v127 = -8;
        do
        {
          *&v124[v126] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v123[v126], v121), *&v123[v126 + 128], v122), 3uLL);
          v127 += 8;
          v126 += 16;
        }

        while (v127 < 0x38);
        v123 += 128;
        v124 += 128;
        --v125;
      }

      while (v125);
      v128 = 2 * v12;
      v129 = v137;
      v17 = 0uLL;
      v130 = 16;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v131 = 0;
        v132 = -8;
        do
        {
          v133 = vsubq_s16(*&v129[v131], *(v128 + v131));
          v20 = vpadalq_s16(v20, v133);
          v17 = vmlal_s16(v17, *v133.i8, *v133.i8);
          v19 = vmlal_high_s16(v19, v133, v133);
          v132 += 8;
          v131 += 16;
        }

        while (v132 < 0x38);
        v129 += 128;
        v128 += 2 * v13;
        --v130;
      }

      while (v130);
    }

    else
    {
      v39 = 16;
      do
      {
        v40 = 0;
        v41 = -8;
        do
        {
          *&v38[v40] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v40), v35), *(v15 + v40 + 2), v36), 3uLL);
          v41 += 8;
          v40 += 16;
        }

        while (v41 < 0x38);
        v38 += 128;
        v15 += v37;
        --v39;
      }

      while (v39);
      v42 = 2 * v12;
      v43 = v138;
      v17 = 0uLL;
      v44 = 16;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v45 = 0;
        v46 = -8;
        do
        {
          v47 = vsubq_s16(*&v43[v45], *(v42 + v45));
          v20 = vpadalq_s16(v20, v47);
          v17 = vmlal_s16(v17, *v47.i8, *v47.i8);
          v19 = vmlal_high_s16(v19, v47, v47);
          v46 += 8;
          v45 += 16;
        }

        while (v46 < 0x38);
        v43 += 128;
        v42 += 2 * v13;
        --v44;
      }

      while (v44);
    }
  }

  else if (v11 == 4)
  {
    v48 = 2 * v9;
    v49 = v15 + v48;
    v50 = v138;
    v51 = 16;
    do
    {
      v52 = 0;
      v53 = -8;
      do
      {
        *&v50[v52] = vrhaddq_u16(*(v15 + v52), *(v49 + v52));
        v53 += 8;
        v52 += 16;
      }

      while (v53 < 0x38);
      v50 += 128;
      v49 += v48;
      v15 += v48;
      --v51;
    }

    while (v51);
    v54 = 2 * v12;
    v55 = v138;
    v17 = 0uLL;
    v56 = 16;
    v19 = 0uLL;
    v20 = 0uLL;
    do
    {
      v57 = 0;
      v58 = -8;
      do
      {
        v59 = vsubq_s16(*&v55[v57], *(v54 + v57));
        v20 = vpadalq_s16(v20, v59);
        v17 = vmlal_s16(v17, *v59.i8, *v59.i8);
        v19 = vmlal_high_s16(v19, v59, v59);
        v58 += 8;
        v57 += 16;
      }

      while (v58 < 0x38);
      v55 += 128;
      v54 += 2 * v13;
      --v56;
    }

    while (v56);
  }

  else if (v11)
  {
    v74 = vdupq_n_s16(8 - v11);
    v75 = vdupq_n_s16(v11);
    v76 = 2 * v9;
    v77 = v15 + v76;
    v78 = v138;
    v79 = 16;
    do
    {
      v80 = 0;
      v81 = -8;
      do
      {
        *&v78[v80] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v80), v74), *(v77 + v80), v75), 3uLL);
        v81 += 8;
        v80 += 16;
      }

      while (v81 < 0x38);
      v78 += 128;
      v77 += v76;
      v15 += v76;
      --v79;
    }

    while (v79);
    v82 = 2 * v12;
    v83 = v138;
    v17 = 0uLL;
    v84 = 16;
    v19 = 0uLL;
    v20 = 0uLL;
    do
    {
      v85 = 0;
      v86 = -8;
      do
      {
        v87 = vsubq_s16(*&v83[v85], *(v82 + v85));
        v20 = vpadalq_s16(v20, v87);
        v17 = vmlal_s16(v17, *v87.i8, *v87.i8);
        v19 = vmlal_high_s16(v19, v87, v87);
        v86 += 8;
        v85 += 16;
      }

      while (v86 < 0x38);
      v83 += 128;
      v82 += 2 * v13;
      --v84;
    }

    while (v84);
  }

  else
  {
    v16 = 2 * v12;
    v17 = 0uLL;
    v18 = 16;
    v19 = 0uLL;
    v20 = 0uLL;
    do
    {
      v21 = 0;
      v22 = -8;
      do
      {
        v23 = vsubq_s16(*(v15 + v21), *(v16 + v21));
        v20 = vpadalq_s16(v20, v23);
        v17 = vmlal_s16(v17, *v23.i8, *v23.i8);
        v19 = vmlal_high_s16(v19, v23, v23);
        v22 += 8;
        v21 += 16;
      }

      while (v22 < 0x38);
      v16 += 2 * v13;
      v15 += 2 * v9;
      --v18;
    }

    while (v18);
  }

  v134 = vaddvq_s32(v20);
  v135 = vaddlvq_u32(vaddq_s32(v19, v17));
  *v14 = v135;
  return v135 - ((v134 * v134) >> 10);
}

uint64_t sub_277B3A0DC(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, _DWORD *a7)
{
  v7 = 0;
  v18[5] = *MEMORY[0x277D85DE8];
  v8 = vdup_n_s16(8 - a3);
  v9 = vdup_n_s16(a3);
  v10 = (2 * a1 + 2);
  do
  {
    v18[v7++] = vrshr_n_u16(vmla_s16(vmul_s16(*(v10 - 2), v8), *v10, v9), 3uLL);
    v10 = (v10 + 2 * a2);
  }

  while ((v7 * 8) != 40);
  v11 = 0;
  v12 = vdup_n_s16(8 - a4);
  v13 = vdup_n_s16(a4);
  v14 = v18[0];
  do
  {
    v15 = v18[v11 + 1];
    *&v17[v11 * 8] = vrshr_n_u16(vmla_s16(vmul_s16(v14, v12), v15, v13), 3uLL);
    ++v11;
    v14 = v15;
  }

  while ((v11 * 8) != 32);
  return sub_2779960F8(v17 >> 1, 4u, a5, a6, a7);
}

uint64_t sub_277B3A1D4(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, _DWORD *a7)
{
  v7 = 0;
  v18[9] = *MEMORY[0x277D85DE8];
  v8 = vdup_n_s16(8 - a3);
  v9 = vdup_n_s16(a3);
  v10 = (2 * a1 + 2);
  do
  {
    v18[v7++] = vrshr_n_u16(vmla_s16(vmul_s16(*(v10 - 2), v8), *v10, v9), 3uLL);
    v10 = (v10 + 2 * a2);
  }

  while ((v7 * 8) != 72);
  v11 = 0;
  v12 = vdup_n_s16(8 - a4);
  v13 = vdup_n_s16(a4);
  v14 = v18[0];
  do
  {
    v15 = v18[v11 + 1];
    *&v17[v11 * 8] = vrshr_n_u16(vmla_s16(vmul_s16(v14, v12), v15, v13), 3uLL);
    ++v11;
    v14 = v15;
  }

  while ((v11 * 8) != 64);
  return sub_2779961A0(v17 >> 1, 4u, a5, a6, a7);
}

uint64_t sub_277B3A2CC(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7)
{
  v7 = 0;
  v19 = *MEMORY[0x277D85DE8];
  v8 = vdupq_n_s16(8 - a3);
  v9 = vdupq_n_s16(a3);
  v10 = (2 * a1 + 2);
  do
  {
    v18[v7++] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v10 - 2), v8), *v10, v9), 3uLL);
    v10 = (v10 + 2 * a2);
  }

  while ((v7 * 16) != 80);
  v11 = 0;
  v12 = vdupq_n_s16(8 - a4);
  v13 = vdupq_n_s16(a4);
  v14 = v18[0];
  do
  {
    v15 = v18[v11 + 1];
    *&v17[v11 * 16] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v14, v12), v15, v13), 3uLL);
    ++v11;
    v14 = v15;
  }

  while ((v11 * 16) != 64);
  return sub_277996248(v17 >> 1, 8, a5, a6, a7);
}

uint64_t sub_277B3A3C4(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7)
{
  v7 = 0;
  v19 = *MEMORY[0x277D85DE8];
  v8 = vdupq_n_s16(8 - a3);
  v9 = vdupq_n_s16(a3);
  v10 = (2 * a1 + 2);
  do
  {
    v18[v7++] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v10 - 2), v8), *v10, v9), 3uLL);
    v10 = (v10 + 2 * a2);
  }

  while ((v7 * 16) != 144);
  v11 = 0;
  v12 = vdupq_n_s16(8 - a4);
  v13 = vdupq_n_s16(a4);
  v14 = v18[0];
  do
  {
    v15 = v18[v11 + 1];
    *&v17[v11 * 16] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v14, v12), v15, v13), 3uLL);
    ++v11;
    v14 = v15;
  }

  while ((v11 * 16) != 128);
  return sub_2779962D4(v17 >> 1, 8, a5, a6, a7);
}

uint64_t sub_277B3A4C4(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7)
{
  v7 = 0;
  v19 = *MEMORY[0x277D85DE8];
  v8 = vdupq_n_s16(8 - a3);
  v9 = vdupq_n_s16(a3);
  v10 = (2 * a1 + 2);
  do
  {
    v18[v7++] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v10 - 2), v8), *v10, v9), 3uLL);
    v10 = (v10 + 2 * a2);
  }

  while ((v7 * 16) != 272);
  v11 = 0;
  v12 = vdupq_n_s16(8 - a4);
  v13 = vdupq_n_s16(a4);
  v14 = v18[0];
  do
  {
    v15 = v18[v11 + 1];
    *&v17[v11 * 16] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v14, v12), v15, v13), 3uLL);
    ++v11;
    v14 = v15;
  }

  while ((v11 * 16) != 256);
  return sub_277996360(v17 >> 1, 8, a5, a6, a7);
}

uint64_t sub_277B3A5C4(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7)
{
  v73[31] = *MEMORY[0x277D85DE8];
  v7 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v53 = 0;
      v54 = (v7 + 18);
      do
      {
        v55 = &v72[v53];
        *v55 = vrhaddq_u16(*(v54 - 18), v54[-1]);
        v55[1] = vrhaddq_u16(*(v54 - 2), *v54);
        v53 += 2;
        v54 = (v54 + 2 * a2);
      }

      while ((v53 * 16) != 288);
      v56 = v72[0];
      v57 = v73;
      v58 = 32;
      do
      {
        v59 = &v71[v58];
        v61 = v57[-2];
        v60 = v57[-1];
        v62 = *v57;
        v57 += 2;
        v59[-2] = vrhaddq_u16(v56, v60);
        v59[-1] = vrhaddq_u16(v61, v62);
        v58 += 32;
        v56 = v60;
      }

      while (v58 != 288);
    }

    else
    {
      v10 = 0;
      v11 = (v7 + 18);
      v12 = 2 * a2;
      if (!a4)
      {
        do
        {
          v13 = &v72[v10];
          *v13 = vrhaddq_u16(*(v11 - 18), v11[-1]);
          v13[1] = vrhaddq_u16(*(v11 - 2), *v11);
          v10 += 2;
          v11 = (v11 + v12);
        }

        while ((v10 * 16) != 256);
        goto LABEL_38;
      }

      do
      {
        v14 = &v72[v10];
        *v14 = vrhaddq_u16(*(v11 - 18), v11[-1]);
        v14[1] = vrhaddq_u16(*(v11 - 2), *v11);
        v10 += 2;
        v11 = (v11 + v12);
      }

      while ((v10 * 16) != 288);
      v15 = vdupq_n_s16(8 - a4);
      v16 = vdupq_n_s16(a4);
      v17 = v72[0];
      v18 = v73;
      v19 = 32;
      do
      {
        v21 = v18[-2];
        v20 = v18[-1];
        v22 = *v18;
        v18 += 2;
        v23 = &v71[v19];
        v23[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v17, v15), v20, v16), 3uLL);
        v23[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v21, v15), v22, v16), 3uLL);
        v19 += 32;
        v17 = v20;
      }

      while (v19 != 288);
    }

    goto LABEL_35;
  }

  if (a3)
  {
    v24 = 0;
    v25 = vdupq_n_s16(8 - a3);
    v26 = vdupq_n_s16(a3);
    v27 = (v7 + 18);
    v28 = 2 * a2;
    if (a4 == 4)
    {
      do
      {
        v30 = &v72[v24];
        *v30 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 18), v25), v27[-1], v26), 3uLL);
        v30[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 2), v25), *v27, v26), 3uLL);
        v24 += 2;
        v27 = (v27 + v28);
      }

      while ((v24 * 16) != 288);
      v31 = v72[0];
      v32 = v73;
      v33 = 32;
      do
      {
        v34 = &v71[v33];
        v36 = v32[-2];
        v35 = v32[-1];
        v37 = *v32;
        v32 += 2;
        v34[-2] = vrhaddq_u16(v31, v35);
        v34[-1] = vrhaddq_u16(v36, v37);
        v33 += 32;
        v31 = v35;
      }

      while (v33 != 288);
    }

    else
    {
      if (!a4)
      {
        do
        {
          v29 = &v72[v24];
          *v29 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 18), v25), v27[-1], v26), 3uLL);
          v29[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 2), v25), *v27, v26), 3uLL);
          v24 += 2;
          v27 = (v27 + v28);
        }

        while ((v24 * 16) != 256);
        goto LABEL_38;
      }

      do
      {
        v38 = &v72[v24];
        *v38 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 18), v25), v27[-1], v26), 3uLL);
        v38[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 2), v25), *v27, v26), 3uLL);
        v24 += 2;
        v27 = (v27 + v28);
      }

      while ((v24 * 16) != 288);
      v39 = vdupq_n_s16(8 - a4);
      v40 = vdupq_n_s16(a4);
      v41 = v72[0];
      v42 = v73;
      v43 = 32;
      do
      {
        v45 = v42[-2];
        v44 = v42[-1];
        v46 = *v42;
        v42 += 2;
        v47 = &v71[v43];
        v47[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v41, v39), v44, v40), 3uLL);
        v47[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v45, v39), v46, v40), 3uLL);
        v43 += 32;
        v41 = v44;
      }

      while (v43 != 288);
    }

LABEL_35:
    v63 = v71;
    return sub_2779963EC(v63 >> 1, 16, a5, a6, a7);
  }

  if (a4 == 4)
  {
    v48 = 0;
    v49 = *v7;
    v50 = 2 * a2;
    do
    {
      v51 = &v72[v48];
      v52 = *(v7 + 2 * a2);
      *v51 = vrhaddq_u16(v49, v52);
      v51[1] = vrhaddq_u16(*(v7 + 16), *(v7 + v50 + 16));
      v48 += 2;
      v7 += v50;
      v49 = v52;
    }

    while ((v48 * 16) != 256);
    goto LABEL_38;
  }

  if (a4)
  {
    v64 = 0;
    v65 = vdupq_n_s16(8 - a4);
    v66 = vdupq_n_s16(a4);
    v67 = *v7;
    v68 = 2 * a2;
    do
    {
      v69 = &v72[v64];
      v70 = *(v7 + 2 * a2);
      *v69 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v67, v65), v70, v66), 3uLL);
      v69[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + 16), v65), *(v7 + v68 + 16), v66), 3uLL);
      v64 += 2;
      v7 += v68;
      v67 = v70;
    }

    while ((v64 * 16) != 256);
LABEL_38:
    v63 = v72;
    return sub_2779963EC(v63 >> 1, 16, a5, a6, a7);
  }

  v8 = a1 & 0x7FFFFFFFFFFFFFFFLL;

  return sub_2779963EC(v8, a2, a5, a6, a7);
}

uint64_t sub_277B3AA50(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7)
{
  v73[63] = *MEMORY[0x277D85DE8];
  v7 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v53 = 0;
      v54 = (v7 + 18);
      do
      {
        v55 = &v72[v53];
        *v55 = vrhaddq_u16(*(v54 - 18), v54[-1]);
        v55[1] = vrhaddq_u16(*(v54 - 2), *v54);
        v53 += 2;
        v54 = (v54 + 2 * a2);
      }

      while ((v53 * 16) != 544);
      v56 = v72[0];
      v57 = v73;
      v58 = 32;
      do
      {
        v59 = &v71[v58];
        v61 = v57[-2];
        v60 = v57[-1];
        v62 = *v57;
        v57 += 2;
        v59[-2] = vrhaddq_u16(v56, v60);
        v59[-1] = vrhaddq_u16(v61, v62);
        v58 += 32;
        v56 = v60;
      }

      while (v58 != 544);
    }

    else
    {
      v10 = 0;
      v11 = (v7 + 18);
      v12 = 2 * a2;
      if (!a4)
      {
        do
        {
          v13 = &v72[v10];
          *v13 = vrhaddq_u16(*(v11 - 18), v11[-1]);
          v13[1] = vrhaddq_u16(*(v11 - 2), *v11);
          v10 += 2;
          v11 = (v11 + v12);
        }

        while ((v10 * 16) != 512);
        goto LABEL_38;
      }

      do
      {
        v14 = &v72[v10];
        *v14 = vrhaddq_u16(*(v11 - 18), v11[-1]);
        v14[1] = vrhaddq_u16(*(v11 - 2), *v11);
        v10 += 2;
        v11 = (v11 + v12);
      }

      while ((v10 * 16) != 544);
      v15 = vdupq_n_s16(8 - a4);
      v16 = vdupq_n_s16(a4);
      v17 = v72[0];
      v18 = v73;
      v19 = 32;
      do
      {
        v21 = v18[-2];
        v20 = v18[-1];
        v22 = *v18;
        v18 += 2;
        v23 = &v71[v19];
        v23[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v17, v15), v20, v16), 3uLL);
        v23[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v21, v15), v22, v16), 3uLL);
        v19 += 32;
        v17 = v20;
      }

      while (v19 != 544);
    }

    goto LABEL_35;
  }

  if (a3)
  {
    v24 = 0;
    v25 = vdupq_n_s16(8 - a3);
    v26 = vdupq_n_s16(a3);
    v27 = (v7 + 18);
    v28 = 2 * a2;
    if (a4 == 4)
    {
      do
      {
        v30 = &v72[v24];
        *v30 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 18), v25), v27[-1], v26), 3uLL);
        v30[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 2), v25), *v27, v26), 3uLL);
        v24 += 2;
        v27 = (v27 + v28);
      }

      while ((v24 * 16) != 544);
      v31 = v72[0];
      v32 = v73;
      v33 = 32;
      do
      {
        v34 = &v71[v33];
        v36 = v32[-2];
        v35 = v32[-1];
        v37 = *v32;
        v32 += 2;
        v34[-2] = vrhaddq_u16(v31, v35);
        v34[-1] = vrhaddq_u16(v36, v37);
        v33 += 32;
        v31 = v35;
      }

      while (v33 != 544);
    }

    else
    {
      if (!a4)
      {
        do
        {
          v29 = &v72[v24];
          *v29 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 18), v25), v27[-1], v26), 3uLL);
          v29[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 2), v25), *v27, v26), 3uLL);
          v24 += 2;
          v27 = (v27 + v28);
        }

        while ((v24 * 16) != 512);
        goto LABEL_38;
      }

      do
      {
        v38 = &v72[v24];
        *v38 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 18), v25), v27[-1], v26), 3uLL);
        v38[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 2), v25), *v27, v26), 3uLL);
        v24 += 2;
        v27 = (v27 + v28);
      }

      while ((v24 * 16) != 544);
      v39 = vdupq_n_s16(8 - a4);
      v40 = vdupq_n_s16(a4);
      v41 = v72[0];
      v42 = v73;
      v43 = 32;
      do
      {
        v45 = v42[-2];
        v44 = v42[-1];
        v46 = *v42;
        v42 += 2;
        v47 = &v71[v43];
        v47[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v41, v39), v44, v40), 3uLL);
        v47[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v45, v39), v46, v40), 3uLL);
        v43 += 32;
        v41 = v44;
      }

      while (v43 != 544);
    }

LABEL_35:
    v63 = v71;
    return sub_277996494(v63 >> 1, 16, a5, a6, a7);
  }

  if (a4 == 4)
  {
    v48 = 0;
    v49 = *v7;
    v50 = 2 * a2;
    do
    {
      v51 = &v72[v48];
      v52 = *(v7 + 2 * a2);
      *v51 = vrhaddq_u16(v49, v52);
      v51[1] = vrhaddq_u16(*(v7 + 16), *(v7 + v50 + 16));
      v48 += 2;
      v7 += v50;
      v49 = v52;
    }

    while ((v48 * 16) != 512);
    goto LABEL_38;
  }

  if (a4)
  {
    v64 = 0;
    v65 = vdupq_n_s16(8 - a4);
    v66 = vdupq_n_s16(a4);
    v67 = *v7;
    v68 = 2 * a2;
    do
    {
      v69 = &v72[v64];
      v70 = *(v7 + 2 * a2);
      *v69 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v67, v65), v70, v66), 3uLL);
      v69[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + 16), v65), *(v7 + v68 + 16), v66), 3uLL);
      v64 += 2;
      v7 += v68;
      v67 = v70;
    }

    while ((v64 * 16) != 512);
LABEL_38:
    v63 = v72;
    return sub_277996494(v63 >> 1, 16, a5, a6, a7);
  }

  v8 = a1 & 0x7FFFFFFFFFFFFFFFLL;

  return sub_277996494(v8, a2, a5, a6, a7);
}

uint64_t sub_277B3AEDC(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7)
{
  v73[127] = *MEMORY[0x277D85DE8];
  v7 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v53 = 0;
      v54 = (v7 + 18);
      do
      {
        v55 = &v72[v53];
        *v55 = vrhaddq_u16(*(v54 - 18), v54[-1]);
        v55[1] = vrhaddq_u16(*(v54 - 2), *v54);
        v53 += 2;
        v54 = (v54 + 2 * a2);
      }

      while ((v53 * 16) != 1056);
      v56 = v72[0];
      v57 = v73;
      v58 = 32;
      do
      {
        v59 = &v71[v58];
        v61 = v57[-2];
        v60 = v57[-1];
        v62 = *v57;
        v57 += 2;
        v59[-2] = vrhaddq_u16(v56, v60);
        v59[-1] = vrhaddq_u16(v61, v62);
        v58 += 32;
        v56 = v60;
      }

      while (v58 != 1056);
    }

    else
    {
      v10 = 0;
      v11 = (v7 + 18);
      v12 = 2 * a2;
      if (!a4)
      {
        do
        {
          v13 = &v72[v10];
          *v13 = vrhaddq_u16(*(v11 - 18), v11[-1]);
          v13[1] = vrhaddq_u16(*(v11 - 2), *v11);
          v10 += 2;
          v11 = (v11 + v12);
        }

        while ((v10 * 16) != 1024);
        goto LABEL_38;
      }

      do
      {
        v14 = &v72[v10];
        *v14 = vrhaddq_u16(*(v11 - 18), v11[-1]);
        v14[1] = vrhaddq_u16(*(v11 - 2), *v11);
        v10 += 2;
        v11 = (v11 + v12);
      }

      while ((v10 * 16) != 1056);
      v15 = vdupq_n_s16(8 - a4);
      v16 = vdupq_n_s16(a4);
      v17 = v72[0];
      v18 = v73;
      v19 = 32;
      do
      {
        v21 = v18[-2];
        v20 = v18[-1];
        v22 = *v18;
        v18 += 2;
        v23 = &v71[v19];
        v23[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v17, v15), v20, v16), 3uLL);
        v23[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v21, v15), v22, v16), 3uLL);
        v19 += 32;
        v17 = v20;
      }

      while (v19 != 1056);
    }

    goto LABEL_35;
  }

  if (a3)
  {
    v24 = 0;
    v25 = vdupq_n_s16(8 - a3);
    v26 = vdupq_n_s16(a3);
    v27 = (v7 + 18);
    v28 = 2 * a2;
    if (a4 == 4)
    {
      do
      {
        v30 = &v72[v24];
        *v30 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 18), v25), v27[-1], v26), 3uLL);
        v30[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 2), v25), *v27, v26), 3uLL);
        v24 += 2;
        v27 = (v27 + v28);
      }

      while ((v24 * 16) != 1056);
      v31 = v72[0];
      v32 = v73;
      v33 = 32;
      do
      {
        v34 = &v71[v33];
        v36 = v32[-2];
        v35 = v32[-1];
        v37 = *v32;
        v32 += 2;
        v34[-2] = vrhaddq_u16(v31, v35);
        v34[-1] = vrhaddq_u16(v36, v37);
        v33 += 32;
        v31 = v35;
      }

      while (v33 != 1056);
    }

    else
    {
      if (!a4)
      {
        do
        {
          v29 = &v72[v24];
          *v29 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 18), v25), v27[-1], v26), 3uLL);
          v29[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 2), v25), *v27, v26), 3uLL);
          v24 += 2;
          v27 = (v27 + v28);
        }

        while ((v24 * 16) != 1024);
        goto LABEL_38;
      }

      do
      {
        v38 = &v72[v24];
        *v38 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 18), v25), v27[-1], v26), 3uLL);
        v38[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 2), v25), *v27, v26), 3uLL);
        v24 += 2;
        v27 = (v27 + v28);
      }

      while ((v24 * 16) != 1056);
      v39 = vdupq_n_s16(8 - a4);
      v40 = vdupq_n_s16(a4);
      v41 = v72[0];
      v42 = v73;
      v43 = 32;
      do
      {
        v45 = v42[-2];
        v44 = v42[-1];
        v46 = *v42;
        v42 += 2;
        v47 = &v71[v43];
        v47[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v41, v39), v44, v40), 3uLL);
        v47[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v45, v39), v46, v40), 3uLL);
        v43 += 32;
        v41 = v44;
      }

      while (v43 != 1056);
    }

LABEL_35:
    v63 = v71;
    return sub_27799653C(v63 >> 1, 16, a5, a6, a7);
  }

  if (a4 == 4)
  {
    v48 = 0;
    v49 = *v7;
    v50 = 2 * a2;
    do
    {
      v51 = &v72[v48];
      v52 = *(v7 + 2 * a2);
      *v51 = vrhaddq_u16(v49, v52);
      v51[1] = vrhaddq_u16(*(v7 + 16), *(v7 + v50 + 16));
      v48 += 2;
      v7 += v50;
      v49 = v52;
    }

    while ((v48 * 16) != 1024);
    goto LABEL_38;
  }

  if (a4)
  {
    v64 = 0;
    v65 = vdupq_n_s16(8 - a4);
    v66 = vdupq_n_s16(a4);
    v67 = *v7;
    v68 = 2 * a2;
    do
    {
      v69 = &v72[v64];
      v70 = *(v7 + 2 * a2);
      *v69 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v67, v65), v70, v66), 3uLL);
      v69[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + 16), v65), *(v7 + v68 + 16), v66), 3uLL);
      v64 += 2;
      v7 += v68;
      v67 = v70;
    }

    while ((v64 * 16) != 1024);
LABEL_38:
    v63 = v72;
    return sub_27799653C(v63 >> 1, 16, a5, a6, a7);
  }

  v8 = a1 & 0x7FFFFFFFFFFFFFFFLL;

  return sub_27799653C(v8, a2, a5, a6, a7);
}

uint64_t sub_277B3B368(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7)
{
  v75 = *MEMORY[0x277D85DE8];
  v7 = 2 * a1;
  if (a3 == 4)
  {
    v10 = 2 * a2;
    v11 = v74;
    if (a4 == 4)
    {
      v28 = 17;
      do
      {
        v29 = 0;
        v30 = -8;
        do
        {
          *&v11[v29] = vrhaddq_u16(*(v7 + v29), *(v7 + v29 + 2));
          v30 += 8;
          v29 += 16;
        }

        while (v30 < 0x18);
        v11 += 64;
        v7 += v10;
        --v28;
      }

      while (v28);
      v31 = v74;
      v32 = v73;
      v33 = 16;
      do
      {
        v34 = 0;
        v35 = -8;
        do
        {
          *&v32[v34] = vrhaddq_u16(*&v31[v34], *&v31[v34 + 64]);
          v35 += 8;
          v34 += 16;
        }

        while (v35 < 0x18);
        v31 += 64;
        v32 += 64;
        --v33;
      }

      while (v33);
    }

    else
    {
      if (!a4)
      {
        v12 = 16;
        do
        {
          v13 = 0;
          v14 = -8;
          do
          {
            *&v11[v13] = vrhaddq_u16(*(v7 + v13), *(v7 + v13 + 2));
            v14 += 8;
            v13 += 16;
          }

          while (v14 < 0x18);
          v11 += 64;
          v7 += v10;
          --v12;
        }

        while (v12);
        goto LABEL_40;
      }

      v45 = 17;
      do
      {
        v46 = 0;
        v47 = -8;
        do
        {
          *&v11[v46] = vrhaddq_u16(*(v7 + v46), *(v7 + v46 + 2));
          v47 += 8;
          v46 += 16;
        }

        while (v47 < 0x18);
        v11 += 64;
        v7 += v10;
        --v45;
      }

      while (v45);
      v48 = vdupq_n_s16(8 - a4);
      v49 = vdupq_n_s16(a4);
      v50 = v74;
      v51 = v73;
      v52 = 16;
      do
      {
        v53 = 0;
        v54 = -8;
        do
        {
          *&v51[v53] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v50[v53], v48), *&v50[v53 + 64], v49), 3uLL);
          v54 += 8;
          v53 += 16;
        }

        while (v54 < 0x18);
        v50 += 64;
        v51 += 64;
        --v52;
      }

      while (v52);
    }

    goto LABEL_67;
  }

  if (a3)
  {
    v15 = vdupq_n_s16(8 - a3);
    v16 = vdupq_n_s16(a3);
    v17 = 2 * a2;
    v18 = v74;
    if (a4 == 4)
    {
      v55 = 17;
      do
      {
        v56 = 0;
        v57 = -8;
        do
        {
          *&v18[v56] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v56), v15), *(v7 + v56 + 2), v16), 3uLL);
          v57 += 8;
          v56 += 16;
        }

        while (v57 < 0x18);
        v18 += 64;
        v7 += v17;
        --v55;
      }

      while (v55);
      v58 = v74;
      v59 = v73;
      v60 = 16;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v59[v61] = vrhaddq_u16(*&v58[v61], *&v58[v61 + 64]);
          v62 += 8;
          v61 += 16;
        }

        while (v62 < 0x18);
        v58 += 64;
        v59 += 64;
        --v60;
      }

      while (v60);
    }

    else
    {
      if (!a4)
      {
        v19 = 16;
        do
        {
          v20 = 0;
          v21 = -8;
          do
          {
            *&v18[v20] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v20), v15), *(v7 + v20 + 2), v16), 3uLL);
            v21 += 8;
            v20 += 16;
          }

          while (v21 < 0x18);
          v18 += 64;
          v7 += v17;
          --v19;
        }

        while (v19);
        goto LABEL_40;
      }

      v63 = 17;
      do
      {
        v64 = 0;
        v65 = -8;
        do
        {
          *&v18[v64] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v64), v15), *(v7 + v64 + 2), v16), 3uLL);
          v65 += 8;
          v64 += 16;
        }

        while (v65 < 0x18);
        v18 += 64;
        v7 += v17;
        --v63;
      }

      while (v63);
      v66 = vdupq_n_s16(8 - a4);
      v67 = vdupq_n_s16(a4);
      v68 = v74;
      v69 = v73;
      v70 = 16;
      do
      {
        v71 = 0;
        v72 = -8;
        do
        {
          *&v69[v71] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v68[v71], v66), *&v68[v71 + 64], v67), 3uLL);
          v72 += 8;
          v71 += 16;
        }

        while (v72 < 0x18);
        v68 += 64;
        v69 += 64;
        --v70;
      }

      while (v70);
    }

LABEL_67:
    v44 = v73;
    return sub_2779965E4(v44 >> 1, 32, a5, a6, a7);
  }

  if (a4 == 4)
  {
    v22 = 2 * a2;
    v23 = v74;
    v24 = 16;
    v25 = v7 + v22;
    do
    {
      v26 = 0;
      v27 = -8;
      do
      {
        *&v23[v26] = vrhaddq_u16(*(v7 + v26), *(v25 + v26));
        v27 += 8;
        v26 += 16;
      }

      while (v27 < 0x18);
      v23 += 64;
      v25 += v22;
      v7 += v22;
      --v24;
    }

    while (v24);
    goto LABEL_40;
  }

  if (a4)
  {
    v36 = vdupq_n_s16(8 - a4);
    v37 = vdupq_n_s16(a4);
    v38 = 2 * a2;
    v39 = v7 + v38;
    v40 = v74;
    v41 = 16;
    do
    {
      v42 = 0;
      v43 = -8;
      do
      {
        *&v40[v42] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v42), v36), *(v39 + v42), v37), 3uLL);
        v43 += 8;
        v42 += 16;
      }

      while (v43 < 0x18);
      v40 += 64;
      v39 += v38;
      v7 += v38;
      --v41;
    }

    while (v41);
LABEL_40:
    v44 = v74;
    return sub_2779965E4(v44 >> 1, 32, a5, a6, a7);
  }

  v8 = a1 & 0x7FFFFFFFFFFFFFFFLL;

  return sub_2779965E4(v8, a2, a5, a6, a7);
}

uint64_t sub_277B3B828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v83 = *MEMORY[0x277D85DE8];
  v15 = 2 * v8;
  if (v10 == 4)
  {
    v18 = 2 * v9;
    v19 = v82;
    if (v11 == 4)
    {
      v36 = 33;
      do
      {
        v37 = 0;
        v38 = -8;
        do
        {
          *&v19[v37] = vrhaddq_u16(*(v15 + v37), *(v15 + v37 + 2));
          v38 += 8;
          v37 += 16;
        }

        while (v38 < 0x18);
        v19 += 64;
        v15 += v18;
        --v36;
      }

      while (v36);
      v39 = v82;
      v40 = v81;
      v41 = 32;
      do
      {
        v42 = 0;
        v43 = -8;
        do
        {
          *&v40[v42] = vrhaddq_u16(*&v39[v42], *&v39[v42 + 64]);
          v43 += 8;
          v42 += 16;
        }

        while (v43 < 0x18);
        v39 += 64;
        v40 += 64;
        --v41;
      }

      while (v41);
    }

    else
    {
      if (!v11)
      {
        v20 = 32;
        do
        {
          v21 = 0;
          v22 = -8;
          do
          {
            *&v19[v21] = vrhaddq_u16(*(v15 + v21), *(v15 + v21 + 2));
            v22 += 8;
            v21 += 16;
          }

          while (v22 < 0x18);
          v19 += 64;
          v15 += v18;
          --v20;
        }

        while (v20);
        goto LABEL_40;
      }

      v53 = 33;
      do
      {
        v54 = 0;
        v55 = -8;
        do
        {
          *&v19[v54] = vrhaddq_u16(*(v15 + v54), *(v15 + v54 + 2));
          v55 += 8;
          v54 += 16;
        }

        while (v55 < 0x18);
        v19 += 64;
        v15 += v18;
        --v53;
      }

      while (v53);
      v56 = vdupq_n_s16(8 - v11);
      v57 = vdupq_n_s16(v11);
      v58 = v82;
      v59 = v81;
      v60 = 32;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v59[v61] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v58[v61], v56), *&v58[v61 + 64], v57), 3uLL);
          v62 += 8;
          v61 += 16;
        }

        while (v62 < 0x18);
        v58 += 64;
        v59 += 64;
        --v60;
      }

      while (v60);
    }

    goto LABEL_67;
  }

  if (v10)
  {
    v23 = vdupq_n_s16(8 - v10);
    v24 = vdupq_n_s16(v10);
    v25 = 2 * v9;
    v26 = v82;
    if (v11 == 4)
    {
      v63 = 33;
      do
      {
        v64 = 0;
        v65 = -8;
        do
        {
          *&v26[v64] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v64), v23), *(v15 + v64 + 2), v24), 3uLL);
          v65 += 8;
          v64 += 16;
        }

        while (v65 < 0x18);
        v26 += 64;
        v15 += v25;
        --v63;
      }

      while (v63);
      v66 = v82;
      v67 = v81;
      v68 = 32;
      do
      {
        v69 = 0;
        v70 = -8;
        do
        {
          *&v67[v69] = vrhaddq_u16(*&v66[v69], *&v66[v69 + 64]);
          v70 += 8;
          v69 += 16;
        }

        while (v70 < 0x18);
        v66 += 64;
        v67 += 64;
        --v68;
      }

      while (v68);
    }

    else
    {
      if (!v11)
      {
        v27 = 32;
        do
        {
          v28 = 0;
          v29 = -8;
          do
          {
            *&v26[v28] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v28), v23), *(v15 + v28 + 2), v24), 3uLL);
            v29 += 8;
            v28 += 16;
          }

          while (v29 < 0x18);
          v26 += 64;
          v15 += v25;
          --v27;
        }

        while (v27);
        goto LABEL_40;
      }

      v71 = 33;
      do
      {
        v72 = 0;
        v73 = -8;
        do
        {
          *&v26[v72] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v72), v23), *(v15 + v72 + 2), v24), 3uLL);
          v73 += 8;
          v72 += 16;
        }

        while (v73 < 0x18);
        v26 += 64;
        v15 += v25;
        --v71;
      }

      while (v71);
      v74 = vdupq_n_s16(8 - v11);
      v75 = vdupq_n_s16(v11);
      v76 = v82;
      v77 = v81;
      v78 = 32;
      do
      {
        v79 = 0;
        v80 = -8;
        do
        {
          *&v77[v79] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v76[v79], v74), *&v76[v79 + 64], v75), 3uLL);
          v80 += 8;
          v79 += 16;
        }

        while (v80 < 0x18);
        v76 += 64;
        v77 += 64;
        --v78;
      }

      while (v78);
    }

LABEL_67:
    v52 = v81;
    return sub_277996688(v52 >> 1, 32, v12, v13, v14);
  }

  if (v11 == 4)
  {
    v30 = 2 * v9;
    v31 = v82;
    v32 = 32;
    v33 = v15 + v30;
    do
    {
      v34 = 0;
      v35 = -8;
      do
      {
        *&v31[v34] = vrhaddq_u16(*(v15 + v34), *(v33 + v34));
        v35 += 8;
        v34 += 16;
      }

      while (v35 < 0x18);
      v31 += 64;
      v33 += v30;
      v15 += v30;
      --v32;
    }

    while (v32);
    goto LABEL_40;
  }

  if (v11)
  {
    v44 = vdupq_n_s16(8 - v11);
    v45 = vdupq_n_s16(v11);
    v46 = 2 * v9;
    v47 = v15 + v46;
    v48 = v82;
    v49 = 32;
    do
    {
      v50 = 0;
      v51 = -8;
      do
      {
        *&v48[v50] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v50), v44), *(v47 + v50), v45), 3uLL);
        v51 += 8;
        v50 += 16;
      }

      while (v51 < 0x18);
      v48 += 64;
      v47 += v46;
      v15 += v46;
      --v49;
    }

    while (v49);
LABEL_40:
    v52 = v82;
    return sub_277996688(v52 >> 1, 32, v12, v13, v14);
  }

  v16 = v8 & 0x7FFFFFFFFFFFFFFFLL;

  return sub_277996688(v16, v9, v12, v13, v14);
}

uint64_t sub_277B3BD08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v82[520] = *MEMORY[0x277D85DE8];
  v15 = 2 * v8;
  if (v10 == 4)
  {
    v18 = 2 * v9;
    v19 = v82;
    if (v11 == 4)
    {
      v36 = 65;
      do
      {
        v37 = 0;
        v38 = -8;
        do
        {
          *&v19[v37] = vrhaddq_u16(*(v15 + v37 * 8), *(v15 + v37 * 8 + 2));
          v38 += 8;
          v37 += 2;
        }

        while (v38 < 0x18);
        v19 += 8;
        v15 += v18;
        --v36;
      }

      while (v36);
      v39 = v82;
      v40 = v81;
      v41 = 64;
      do
      {
        v42 = 0;
        v43 = -8;
        do
        {
          *&v40[v42 * 8] = vrhaddq_u16(*&v39[v42], *&v39[v42 + 8]);
          v43 += 8;
          v42 += 2;
        }

        while (v43 < 0x18);
        v39 += 8;
        v40 += 64;
        --v41;
      }

      while (v41);
    }

    else
    {
      if (!v11)
      {
        v20 = 64;
        do
        {
          v21 = 0;
          v22 = -8;
          do
          {
            *&v19[v21] = vrhaddq_u16(*(v15 + v21 * 8), *(v15 + v21 * 8 + 2));
            v22 += 8;
            v21 += 2;
          }

          while (v22 < 0x18);
          v19 += 8;
          v15 += v18;
          --v20;
        }

        while (v20);
        goto LABEL_40;
      }

      v53 = 65;
      do
      {
        v54 = 0;
        v55 = -8;
        do
        {
          *&v19[v54] = vrhaddq_u16(*(v15 + v54 * 8), *(v15 + v54 * 8 + 2));
          v55 += 8;
          v54 += 2;
        }

        while (v55 < 0x18);
        v19 += 8;
        v15 += v18;
        --v53;
      }

      while (v53);
      v56 = vdupq_n_s16(8 - v11);
      v57 = vdupq_n_s16(v11);
      v58 = v82;
      v59 = v81;
      v60 = 64;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v59[v61 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v58[v61], v56), *&v58[v61 + 8], v57), 3uLL);
          v62 += 8;
          v61 += 2;
        }

        while (v62 < 0x18);
        v58 += 8;
        v59 += 64;
        --v60;
      }

      while (v60);
    }

    goto LABEL_67;
  }

  if (v10)
  {
    v23 = vdupq_n_s16(8 - v10);
    v24 = vdupq_n_s16(v10);
    v25 = 2 * v9;
    v26 = v82;
    if (v11 == 4)
    {
      v63 = 65;
      do
      {
        v64 = 0;
        v65 = -8;
        do
        {
          *&v26[v64] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v64 * 8), v23), *(v15 + v64 * 8 + 2), v24), 3uLL);
          v65 += 8;
          v64 += 2;
        }

        while (v65 < 0x18);
        v26 += 8;
        v15 += v25;
        --v63;
      }

      while (v63);
      v66 = v82;
      v67 = v81;
      v68 = 64;
      do
      {
        v69 = 0;
        v70 = -8;
        do
        {
          *&v67[v69 * 8] = vrhaddq_u16(*&v66[v69], *&v66[v69 + 8]);
          v70 += 8;
          v69 += 2;
        }

        while (v70 < 0x18);
        v66 += 8;
        v67 += 64;
        --v68;
      }

      while (v68);
    }

    else
    {
      if (!v11)
      {
        v27 = 64;
        do
        {
          v28 = 0;
          v29 = -8;
          do
          {
            *&v26[v28] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v28 * 8), v23), *(v15 + v28 * 8 + 2), v24), 3uLL);
            v29 += 8;
            v28 += 2;
          }

          while (v29 < 0x18);
          v26 += 8;
          v15 += v25;
          --v27;
        }

        while (v27);
        goto LABEL_40;
      }

      v71 = 65;
      do
      {
        v72 = 0;
        v73 = -8;
        do
        {
          *&v26[v72] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v72 * 8), v23), *(v15 + v72 * 8 + 2), v24), 3uLL);
          v73 += 8;
          v72 += 2;
        }

        while (v73 < 0x18);
        v26 += 8;
        v15 += v25;
        --v71;
      }

      while (v71);
      v74 = vdupq_n_s16(8 - v11);
      v75 = vdupq_n_s16(v11);
      v76 = v82;
      v77 = v81;
      v78 = 64;
      do
      {
        v79 = 0;
        v80 = -8;
        do
        {
          *&v77[v79 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v76[v79], v74), *&v76[v79 + 8], v75), 3uLL);
          v80 += 8;
          v79 += 2;
        }

        while (v80 < 0x18);
        v76 += 8;
        v77 += 64;
        --v78;
      }

      while (v78);
    }

LABEL_67:
    v52 = v81;
    return sub_27799672C(v52 >> 1, 32, v12, v13, v14);
  }

  if (v11 == 4)
  {
    v30 = 2 * v9;
    v31 = v82;
    v32 = 64;
    v33 = v15 + v30;
    do
    {
      v34 = 0;
      v35 = -8;
      do
      {
        *&v31[v34] = vrhaddq_u16(*(v15 + v34 * 8), *(v33 + v34 * 8));
        v35 += 8;
        v34 += 2;
      }

      while (v35 < 0x18);
      v31 += 8;
      v33 += v30;
      v15 += v30;
      --v32;
    }

    while (v32);
    goto LABEL_40;
  }

  if (v11)
  {
    v44 = vdupq_n_s16(8 - v11);
    v45 = vdupq_n_s16(v11);
    v46 = 2 * v9;
    v47 = v15 + v46;
    v48 = v82;
    v49 = 64;
    do
    {
      v50 = 0;
      v51 = -8;
      do
      {
        *&v48[v50] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v50 * 8), v44), *(v47 + v50 * 8), v45), 3uLL);
        v51 += 8;
        v50 += 2;
      }

      while (v51 < 0x18);
      v48 += 8;
      v47 += v46;
      v15 += v46;
      --v49;
    }

    while (v49);
LABEL_40:
    v52 = v82;
    return sub_27799672C(v52 >> 1, 32, v12, v13, v14);
  }

  v16 = v8 & 0x7FFFFFFFFFFFFFFFLL;

  return sub_27799672C(v16, v9, v12, v13, v14);
}

uint64_t sub_277B3C20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v82[528] = *MEMORY[0x277D85DE8];
  v15 = 2 * v8;
  if (v10 == 4)
  {
    v18 = 2 * v9;
    v19 = v82;
    if (v11 == 4)
    {
      v36 = 33;
      do
      {
        v37 = 0;
        v38 = -8;
        do
        {
          *&v19[v37] = vrhaddq_u16(*(v15 + v37 * 8), *(v15 + v37 * 8 + 2));
          v38 += 8;
          v37 += 2;
        }

        while (v38 < 0x38);
        v19 += 16;
        v15 += v18;
        --v36;
      }

      while (v36);
      v39 = v82;
      v40 = v81;
      v41 = 32;
      do
      {
        v42 = 0;
        v43 = -8;
        do
        {
          *&v40[v42 * 8] = vrhaddq_u16(*&v39[v42], *&v39[v42 + 16]);
          v43 += 8;
          v42 += 2;
        }

        while (v43 < 0x38);
        v39 += 16;
        v40 += 128;
        --v41;
      }

      while (v41);
    }

    else
    {
      if (!v11)
      {
        v20 = 32;
        do
        {
          v21 = 0;
          v22 = -8;
          do
          {
            *&v19[v21] = vrhaddq_u16(*(v15 + v21 * 8), *(v15 + v21 * 8 + 2));
            v22 += 8;
            v21 += 2;
          }

          while (v22 < 0x38);
          v19 += 16;
          v15 += v18;
          --v20;
        }

        while (v20);
        goto LABEL_40;
      }

      v53 = 33;
      do
      {
        v54 = 0;
        v55 = -8;
        do
        {
          *&v19[v54] = vrhaddq_u16(*(v15 + v54 * 8), *(v15 + v54 * 8 + 2));
          v55 += 8;
          v54 += 2;
        }

        while (v55 < 0x38);
        v19 += 16;
        v15 += v18;
        --v53;
      }

      while (v53);
      v56 = vdupq_n_s16(8 - v11);
      v57 = vdupq_n_s16(v11);
      v58 = v82;
      v59 = v81;
      v60 = 32;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v59[v61 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v58[v61], v56), *&v58[v61 + 16], v57), 3uLL);
          v62 += 8;
          v61 += 2;
        }

        while (v62 < 0x38);
        v58 += 16;
        v59 += 128;
        --v60;
      }

      while (v60);
    }

    goto LABEL_67;
  }

  if (v10)
  {
    v23 = vdupq_n_s16(8 - v10);
    v24 = vdupq_n_s16(v10);
    v25 = 2 * v9;
    v26 = v82;
    if (v11 == 4)
    {
      v63 = 33;
      do
      {
        v64 = 0;
        v65 = -8;
        do
        {
          *&v26[v64] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v64 * 8), v23), *(v15 + v64 * 8 + 2), v24), 3uLL);
          v65 += 8;
          v64 += 2;
        }

        while (v65 < 0x38);
        v26 += 16;
        v15 += v25;
        --v63;
      }

      while (v63);
      v66 = v82;
      v67 = v81;
      v68 = 32;
      do
      {
        v69 = 0;
        v70 = -8;
        do
        {
          *&v67[v69 * 8] = vrhaddq_u16(*&v66[v69], *&v66[v69 + 16]);
          v70 += 8;
          v69 += 2;
        }

        while (v70 < 0x38);
        v66 += 16;
        v67 += 128;
        --v68;
      }

      while (v68);
    }

    else
    {
      if (!v11)
      {
        v27 = 32;
        do
        {
          v28 = 0;
          v29 = -8;
          do
          {
            *&v26[v28] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v28 * 8), v23), *(v15 + v28 * 8 + 2), v24), 3uLL);
            v29 += 8;
            v28 += 2;
          }

          while (v29 < 0x38);
          v26 += 16;
          v15 += v25;
          --v27;
        }

        while (v27);
        goto LABEL_40;
      }

      v71 = 33;
      do
      {
        v72 = 0;
        v73 = -8;
        do
        {
          *&v26[v72] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v72 * 8), v23), *(v15 + v72 * 8 + 2), v24), 3uLL);
          v73 += 8;
          v72 += 2;
        }

        while (v73 < 0x38);
        v26 += 16;
        v15 += v25;
        --v71;
      }

      while (v71);
      v74 = vdupq_n_s16(8 - v11);
      v75 = vdupq_n_s16(v11);
      v76 = v82;
      v77 = v81;
      v78 = 32;
      do
      {
        v79 = 0;
        v80 = -8;
        do
        {
          *&v77[v79 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v76[v79], v74), *&v76[v79 + 16], v75), 3uLL);
          v80 += 8;
          v79 += 2;
        }

        while (v80 < 0x38);
        v76 += 16;
        v77 += 128;
        --v78;
      }

      while (v78);
    }

LABEL_67:
    v52 = v81;
    return sub_2779967D0(v52 >> 1, 64, v12, v13, v14);
  }

  if (v11 == 4)
  {
    v30 = 2 * v9;
    v31 = v82;
    v32 = 32;
    v33 = v15 + v30;
    do
    {
      v34 = 0;
      v35 = -8;
      do
      {
        *&v31[v34] = vrhaddq_u16(*(v15 + v34 * 8), *(v33 + v34 * 8));
        v35 += 8;
        v34 += 2;
      }

      while (v35 < 0x38);
      v31 += 16;
      v33 += v30;
      v15 += v30;
      --v32;
    }

    while (v32);
    goto LABEL_40;
  }

  if (v11)
  {
    v44 = vdupq_n_s16(8 - v11);
    v45 = vdupq_n_s16(v11);
    v46 = 2 * v9;
    v47 = v15 + v46;
    v48 = v82;
    v49 = 32;
    do
    {
      v50 = 0;
      v51 = -8;
      do
      {
        *&v48[v50] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v50 * 8), v44), *(v47 + v50 * 8), v45), 3uLL);
        v51 += 8;
        v50 += 2;
      }

      while (v51 < 0x38);
      v48 += 16;
      v47 += v46;
      v15 += v46;
      --v49;
    }

    while (v49);
LABEL_40:
    v52 = v82;
    return sub_2779967D0(v52 >> 1, 64, v12, v13, v14);
  }

  v16 = v8 & 0x7FFFFFFFFFFFFFFFLL;

  return sub_2779967D0(v16, v9, v12, v13, v14);
}

uint64_t sub_277B3C710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v82[1040] = *MEMORY[0x277D85DE8];
  v15 = 2 * v8;
  if (v10 == 4)
  {
    v18 = 2 * v9;
    v19 = v82;
    if (v11 == 4)
    {
      v36 = 65;
      do
      {
        v37 = 0;
        v38 = -8;
        do
        {
          *&v19[v37] = vrhaddq_u16(*(v15 + v37 * 8), *(v15 + v37 * 8 + 2));
          v38 += 8;
          v37 += 2;
        }

        while (v38 < 0x38);
        v19 += 16;
        v15 += v18;
        --v36;
      }

      while (v36);
      v39 = v82;
      v40 = v81;
      v41 = 64;
      do
      {
        v42 = 0;
        v43 = -8;
        do
        {
          *&v40[v42 * 8] = vrhaddq_u16(*&v39[v42], *&v39[v42 + 16]);
          v43 += 8;
          v42 += 2;
        }

        while (v43 < 0x38);
        v39 += 16;
        v40 += 128;
        --v41;
      }

      while (v41);
    }

    else
    {
      if (!v11)
      {
        v20 = 64;
        do
        {
          v21 = 0;
          v22 = -8;
          do
          {
            *&v19[v21] = vrhaddq_u16(*(v15 + v21 * 8), *(v15 + v21 * 8 + 2));
            v22 += 8;
            v21 += 2;
          }

          while (v22 < 0x38);
          v19 += 16;
          v15 += v18;
          --v20;
        }

        while (v20);
        goto LABEL_40;
      }

      v53 = 65;
      do
      {
        v54 = 0;
        v55 = -8;
        do
        {
          *&v19[v54] = vrhaddq_u16(*(v15 + v54 * 8), *(v15 + v54 * 8 + 2));
          v55 += 8;
          v54 += 2;
        }

        while (v55 < 0x38);
        v19 += 16;
        v15 += v18;
        --v53;
      }

      while (v53);
      v56 = vdupq_n_s16(8 - v11);
      v57 = vdupq_n_s16(v11);
      v58 = v82;
      v59 = v81;
      v60 = 64;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v59[v61 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v58[v61], v56), *&v58[v61 + 16], v57), 3uLL);
          v62 += 8;
          v61 += 2;
        }

        while (v62 < 0x38);
        v58 += 16;
        v59 += 128;
        --v60;
      }

      while (v60);
    }

    goto LABEL_67;
  }

  if (v10)
  {
    v23 = vdupq_n_s16(8 - v10);
    v24 = vdupq_n_s16(v10);
    v25 = 2 * v9;
    v26 = v82;
    if (v11 == 4)
    {
      v63 = 65;
      do
      {
        v64 = 0;
        v65 = -8;
        do
        {
          *&v26[v64] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v64 * 8), v23), *(v15 + v64 * 8 + 2), v24), 3uLL);
          v65 += 8;
          v64 += 2;
        }

        while (v65 < 0x38);
        v26 += 16;
        v15 += v25;
        --v63;
      }

      while (v63);
      v66 = v82;
      v67 = v81;
      v68 = 64;
      do
      {
        v69 = 0;
        v70 = -8;
        do
        {
          *&v67[v69 * 8] = vrhaddq_u16(*&v66[v69], *&v66[v69 + 16]);
          v70 += 8;
          v69 += 2;
        }

        while (v70 < 0x38);
        v66 += 16;
        v67 += 128;
        --v68;
      }

      while (v68);
    }

    else
    {
      if (!v11)
      {
        v27 = 64;
        do
        {
          v28 = 0;
          v29 = -8;
          do
          {
            *&v26[v28] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v28 * 8), v23), *(v15 + v28 * 8 + 2), v24), 3uLL);
            v29 += 8;
            v28 += 2;
          }

          while (v29 < 0x38);
          v26 += 16;
          v15 += v25;
          --v27;
        }

        while (v27);
        goto LABEL_40;
      }

      v71 = 65;
      do
      {
        v72 = 0;
        v73 = -8;
        do
        {
          *&v26[v72] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v72 * 8), v23), *(v15 + v72 * 8 + 2), v24), 3uLL);
          v73 += 8;
          v72 += 2;
        }

        while (v73 < 0x38);
        v26 += 16;
        v15 += v25;
        --v71;
      }

      while (v71);
      v74 = vdupq_n_s16(8 - v11);
      v75 = vdupq_n_s16(v11);
      v76 = v82;
      v77 = v81;
      v78 = 64;
      do
      {
        v79 = 0;
        v80 = -8;
        do
        {
          *&v77[v79 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v76[v79], v74), *&v76[v79 + 16], v75), 3uLL);
          v80 += 8;
          v79 += 2;
        }

        while (v80 < 0x38);
        v76 += 16;
        v77 += 128;
        --v78;
      }

      while (v78);
    }

LABEL_67:
    v52 = v81;
    return sub_277996874(v52 >> 1, 64, v12, v13, v14);
  }

  if (v11 == 4)
  {
    v30 = 2 * v9;
    v31 = v82;
    v32 = 64;
    v33 = v15 + v30;
    do
    {
      v34 = 0;
      v35 = -8;
      do
      {
        *&v31[v34] = vrhaddq_u16(*(v15 + v34 * 8), *(v33 + v34 * 8));
        v35 += 8;
        v34 += 2;
      }

      while (v35 < 0x38);
      v31 += 16;
      v33 += v30;
      v15 += v30;
      --v32;
    }

    while (v32);
    goto LABEL_40;
  }

  if (v11)
  {
    v44 = vdupq_n_s16(8 - v11);
    v45 = vdupq_n_s16(v11);
    v46 = 2 * v9;
    v47 = v15 + v46;
    v48 = v82;
    v49 = 64;
    do
    {
      v50 = 0;
      v51 = -8;
      do
      {
        *&v48[v50] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v50 * 8), v44), *(v47 + v50 * 8), v45), 3uLL);
        v51 += 8;
        v50 += 2;
      }

      while (v51 < 0x38);
      v48 += 16;
      v47 += v46;
      v15 += v46;
      --v49;
    }

    while (v49);
LABEL_40:
    v52 = v82;
    return sub_277996874(v52 >> 1, 64, v12, v13, v14);
  }

  v16 = v8 & 0x7FFFFFFFFFFFFFFFLL;

  return sub_277996874(v16, v9, v12, v13, v14);
}

uint64_t sub_277B3CC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v82[2064] = *MEMORY[0x277D85DE8];
  v15 = 2 * v8;
  if (v10 == 4)
  {
    v18 = 2 * v9;
    v19 = v82;
    if (v11 == 4)
    {
      v36 = 129;
      do
      {
        v37 = 0;
        v38 = -8;
        do
        {
          *&v19[v37] = vrhaddq_u16(*(v15 + v37 * 8), *(v15 + v37 * 8 + 2));
          v38 += 8;
          v37 += 2;
        }

        while (v38 < 0x38);
        v19 += 16;
        v15 += v18;
        --v36;
      }

      while (v36);
      v39 = v82;
      v40 = v81;
      v41 = 128;
      do
      {
        v42 = 0;
        v43 = -8;
        do
        {
          *&v40[v42 * 8] = vrhaddq_u16(*&v39[v42], *&v39[v42 + 16]);
          v43 += 8;
          v42 += 2;
        }

        while (v43 < 0x38);
        v39 += 16;
        v40 += 128;
        --v41;
      }

      while (v41);
    }

    else
    {
      if (!v11)
      {
        v20 = 128;
        do
        {
          v21 = 0;
          v22 = -8;
          do
          {
            *&v19[v21] = vrhaddq_u16(*(v15 + v21 * 8), *(v15 + v21 * 8 + 2));
            v22 += 8;
            v21 += 2;
          }

          while (v22 < 0x38);
          v19 += 16;
          v15 += v18;
          --v20;
        }

        while (v20);
        goto LABEL_40;
      }

      v53 = 129;
      do
      {
        v54 = 0;
        v55 = -8;
        do
        {
          *&v19[v54] = vrhaddq_u16(*(v15 + v54 * 8), *(v15 + v54 * 8 + 2));
          v55 += 8;
          v54 += 2;
        }

        while (v55 < 0x38);
        v19 += 16;
        v15 += v18;
        --v53;
      }

      while (v53);
      v56 = vdupq_n_s16(8 - v11);
      v57 = vdupq_n_s16(v11);
      v58 = v82;
      v59 = v81;
      v60 = 128;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v59[v61 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v58[v61], v56), *&v58[v61 + 16], v57), 3uLL);
          v62 += 8;
          v61 += 2;
        }

        while (v62 < 0x38);
        v58 += 16;
        v59 += 128;
        --v60;
      }

      while (v60);
    }

    goto LABEL_67;
  }

  if (v10)
  {
    v23 = vdupq_n_s16(8 - v10);
    v24 = vdupq_n_s16(v10);
    v25 = 2 * v9;
    v26 = v82;
    if (v11 == 4)
    {
      v63 = 129;
      do
      {
        v64 = 0;
        v65 = -8;
        do
        {
          *&v26[v64] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v64 * 8), v23), *(v15 + v64 * 8 + 2), v24), 3uLL);
          v65 += 8;
          v64 += 2;
        }

        while (v65 < 0x38);
        v26 += 16;
        v15 += v25;
        --v63;
      }

      while (v63);
      v66 = v82;
      v67 = v81;
      v68 = 128;
      do
      {
        v69 = 0;
        v70 = -8;
        do
        {
          *&v67[v69 * 8] = vrhaddq_u16(*&v66[v69], *&v66[v69 + 16]);
          v70 += 8;
          v69 += 2;
        }

        while (v70 < 0x38);
        v66 += 16;
        v67 += 128;
        --v68;
      }

      while (v68);
    }

    else
    {
      if (!v11)
      {
        v27 = 128;
        do
        {
          v28 = 0;
          v29 = -8;
          do
          {
            *&v26[v28] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v28 * 8), v23), *(v15 + v28 * 8 + 2), v24), 3uLL);
            v29 += 8;
            v28 += 2;
          }

          while (v29 < 0x38);
          v26 += 16;
          v15 += v25;
          --v27;
        }

        while (v27);
        goto LABEL_40;
      }

      v71 = 129;
      do
      {
        v72 = 0;
        v73 = -8;
        do
        {
          *&v26[v72] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v72 * 8), v23), *(v15 + v72 * 8 + 2), v24), 3uLL);
          v73 += 8;
          v72 += 2;
        }

        while (v73 < 0x38);
        v26 += 16;
        v15 += v25;
        --v71;
      }

      while (v71);
      v74 = vdupq_n_s16(8 - v11);
      v75 = vdupq_n_s16(v11);
      v76 = v82;
      v77 = v81;
      v78 = 128;
      do
      {
        v79 = 0;
        v80 = -8;
        do
        {
          *&v77[v79 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v76[v79], v74), *&v76[v79 + 16], v75), 3uLL);
          v80 += 8;
          v79 += 2;
        }

        while (v80 < 0x38);
        v76 += 16;
        v77 += 128;
        --v78;
      }

      while (v78);
    }

LABEL_67:
    v52 = v81;
    return sub_277996918(v52 >> 1, 64, v12, v13, v14);
  }

  if (v11 == 4)
  {
    v30 = 2 * v9;
    v31 = v82;
    v32 = 128;
    v33 = v15 + v30;
    do
    {
      v34 = 0;
      v35 = -8;
      do
      {
        *&v31[v34] = vrhaddq_u16(*(v15 + v34 * 8), *(v33 + v34 * 8));
        v35 += 8;
        v34 += 2;
      }

      while (v35 < 0x38);
      v31 += 16;
      v33 += v30;
      v15 += v30;
      --v32;
    }

    while (v32);
    goto LABEL_40;
  }

  if (v11)
  {
    v44 = vdupq_n_s16(8 - v11);
    v45 = vdupq_n_s16(v11);
    v46 = 2 * v9;
    v47 = v15 + v46;
    v48 = v82;
    v49 = 128;
    do
    {
      v50 = 0;
      v51 = -8;
      do
      {
        *&v48[v50] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v50 * 8), v44), *(v47 + v50 * 8), v45), 3uLL);
        v51 += 8;
        v50 += 2;
      }

      while (v51 < 0x38);
      v48 += 16;
      v47 += v46;
      v15 += v46;
      --v49;
    }

    while (v49);
LABEL_40:
    v52 = v82;
    return sub_277996918(v52 >> 1, 64, v12, v13, v14);
  }

  v16 = v8 & 0x7FFFFFFFFFFFFFFFLL;

  return sub_277996918(v16, v9, v12, v13, v14);
}

uint64_t sub_277B3D118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v82[2080] = *MEMORY[0x277D85DE8];
  v15 = 2 * v8;
  if (v10 == 4)
  {
    v18 = 2 * v9;
    v19 = v82;
    if (v11 == 4)
    {
      v36 = 65;
      do
      {
        v37 = 0;
        v38 = -8;
        do
        {
          *&v19[v37] = vrhaddq_u16(*(v15 + v37 * 8), *(v15 + v37 * 8 + 2));
          v38 += 8;
          v37 += 2;
        }

        while (v38 < 0x78);
        v19 += 32;
        v15 += v18;
        --v36;
      }

      while (v36);
      v39 = v82;
      v40 = v81;
      v41 = 64;
      do
      {
        v42 = 0;
        v43 = -8;
        do
        {
          *&v40[v42 * 8] = vrhaddq_u16(*&v39[v42], *&v39[v42 + 32]);
          v43 += 8;
          v42 += 2;
        }

        while (v43 < 0x78);
        v39 += 32;
        v40 += 256;
        --v41;
      }

      while (v41);
    }

    else
    {
      if (!v11)
      {
        v20 = 64;
        do
        {
          v21 = 0;
          v22 = -8;
          do
          {
            *&v19[v21] = vrhaddq_u16(*(v15 + v21 * 8), *(v15 + v21 * 8 + 2));
            v22 += 8;
            v21 += 2;
          }

          while (v22 < 0x78);
          v19 += 32;
          v15 += v18;
          --v20;
        }

        while (v20);
        goto LABEL_40;
      }

      v53 = 65;
      do
      {
        v54 = 0;
        v55 = -8;
        do
        {
          *&v19[v54] = vrhaddq_u16(*(v15 + v54 * 8), *(v15 + v54 * 8 + 2));
          v55 += 8;
          v54 += 2;
        }

        while (v55 < 0x78);
        v19 += 32;
        v15 += v18;
        --v53;
      }

      while (v53);
      v56 = vdupq_n_s16(8 - v11);
      v57 = vdupq_n_s16(v11);
      v58 = v82;
      v59 = v81;
      v60 = 64;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v59[v61 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v58[v61], v56), *&v58[v61 + 32], v57), 3uLL);
          v62 += 8;
          v61 += 2;
        }

        while (v62 < 0x78);
        v58 += 32;
        v59 += 256;
        --v60;
      }

      while (v60);
    }

    goto LABEL_67;
  }

  if (v10)
  {
    v23 = vdupq_n_s16(8 - v10);
    v24 = vdupq_n_s16(v10);
    v25 = 2 * v9;
    v26 = v82;
    if (v11 == 4)
    {
      v63 = 65;
      do
      {
        v64 = 0;
        v65 = -8;
        do
        {
          *&v26[v64] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v64 * 8), v23), *(v15 + v64 * 8 + 2), v24), 3uLL);
          v65 += 8;
          v64 += 2;
        }

        while (v65 < 0x78);
        v26 += 32;
        v15 += v25;
        --v63;
      }

      while (v63);
      v66 = v82;
      v67 = v81;
      v68 = 64;
      do
      {
        v69 = 0;
        v70 = -8;
        do
        {
          *&v67[v69 * 8] = vrhaddq_u16(*&v66[v69], *&v66[v69 + 32]);
          v70 += 8;
          v69 += 2;
        }

        while (v70 < 0x78);
        v66 += 32;
        v67 += 256;
        --v68;
      }

      while (v68);
    }

    else
    {
      if (!v11)
      {
        v27 = 64;
        do
        {
          v28 = 0;
          v29 = -8;
          do
          {
            *&v26[v28] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v28 * 8), v23), *(v15 + v28 * 8 + 2), v24), 3uLL);
            v29 += 8;
            v28 += 2;
          }

          while (v29 < 0x78);
          v26 += 32;
          v15 += v25;
          --v27;
        }

        while (v27);
        goto LABEL_40;
      }

      v71 = 65;
      do
      {
        v72 = 0;
        v73 = -8;
        do
        {
          *&v26[v72] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v72 * 8), v23), *(v15 + v72 * 8 + 2), v24), 3uLL);
          v73 += 8;
          v72 += 2;
        }

        while (v73 < 0x78);
        v26 += 32;
        v15 += v25;
        --v71;
      }

      while (v71);
      v74 = vdupq_n_s16(8 - v11);
      v75 = vdupq_n_s16(v11);
      v76 = v82;
      v77 = v81;
      v78 = 64;
      do
      {
        v79 = 0;
        v80 = -8;
        do
        {
          *&v77[v79 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v76[v79], v74), *&v76[v79 + 32], v75), 3uLL);
          v80 += 8;
          v79 += 2;
        }

        while (v80 < 0x78);
        v76 += 32;
        v77 += 256;
        --v78;
      }

      while (v78);
    }

LABEL_67:
    v52 = v81;
    return sub_2779969BC(v52 >> 1, 128, v12, v13, v14);
  }

  if (v11 == 4)
  {
    v30 = 2 * v9;
    v31 = v82;
    v32 = 64;
    v33 = v15 + v30;
    do
    {
      v34 = 0;
      v35 = -8;
      do
      {
        *&v31[v34] = vrhaddq_u16(*(v15 + v34 * 8), *(v33 + v34 * 8));
        v35 += 8;
        v34 += 2;
      }

      while (v35 < 0x78);
      v31 += 32;
      v33 += v30;
      v15 += v30;
      --v32;
    }

    while (v32);
    goto LABEL_40;
  }

  if (v11)
  {
    v44 = vdupq_n_s16(8 - v11);
    v45 = vdupq_n_s16(v11);
    v46 = 2 * v9;
    v47 = v15 + v46;
    v48 = v82;
    v49 = 64;
    do
    {
      v50 = 0;
      v51 = -8;
      do
      {
        *&v48[v50] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v50 * 8), v44), *(v47 + v50 * 8), v45), 3uLL);
        v51 += 8;
        v50 += 2;
      }

      while (v51 < 0x78);
      v48 += 32;
      v47 += v46;
      v15 += v46;
      --v49;
    }

    while (v49);
LABEL_40:
    v52 = v82;
    return sub_2779969BC(v52 >> 1, 128, v12, v13, v14);
  }

  v16 = v8 & 0x7FFFFFFFFFFFFFFFLL;

  return sub_2779969BC(v16, v9, v12, v13, v14);
}

uint64_t sub_277B3D61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v82[4128] = *MEMORY[0x277D85DE8];
  v15 = 2 * v8;
  if (v10 == 4)
  {
    v18 = 2 * v9;
    v19 = v82;
    if (v11 == 4)
    {
      v36 = 129;
      do
      {
        v37 = 0;
        v38 = -8;
        do
        {
          *&v19[v37] = vrhaddq_u16(*(v15 + v37 * 8), *(v15 + v37 * 8 + 2));
          v38 += 8;
          v37 += 2;
        }

        while (v38 < 0x78);
        v19 += 32;
        v15 += v18;
        --v36;
      }

      while (v36);
      v39 = v82;
      v40 = v81;
      v41 = 128;
      do
      {
        v42 = 0;
        v43 = -8;
        do
        {
          *&v40[v42 * 8] = vrhaddq_u16(*&v39[v42], *&v39[v42 + 32]);
          v43 += 8;
          v42 += 2;
        }

        while (v43 < 0x78);
        v39 += 32;
        v40 += 256;
        --v41;
      }

      while (v41);
    }

    else
    {
      if (!v11)
      {
        v20 = 128;
        do
        {
          v21 = 0;
          v22 = -8;
          do
          {
            *&v19[v21] = vrhaddq_u16(*(v15 + v21 * 8), *(v15 + v21 * 8 + 2));
            v22 += 8;
            v21 += 2;
          }

          while (v22 < 0x78);
          v19 += 32;
          v15 += v18;
          --v20;
        }

        while (v20);
        goto LABEL_40;
      }

      v53 = 129;
      do
      {
        v54 = 0;
        v55 = -8;
        do
        {
          *&v19[v54] = vrhaddq_u16(*(v15 + v54 * 8), *(v15 + v54 * 8 + 2));
          v55 += 8;
          v54 += 2;
        }

        while (v55 < 0x78);
        v19 += 32;
        v15 += v18;
        --v53;
      }

      while (v53);
      v56 = vdupq_n_s16(8 - v11);
      v57 = vdupq_n_s16(v11);
      v58 = v82;
      v59 = v81;
      v60 = 128;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v59[v61 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v58[v61], v56), *&v58[v61 + 32], v57), 3uLL);
          v62 += 8;
          v61 += 2;
        }

        while (v62 < 0x78);
        v58 += 32;
        v59 += 256;
        --v60;
      }

      while (v60);
    }

    goto LABEL_67;
  }

  if (v10)
  {
    v23 = vdupq_n_s16(8 - v10);
    v24 = vdupq_n_s16(v10);
    v25 = 2 * v9;
    v26 = v82;
    if (v11 == 4)
    {
      v63 = 129;
      do
      {
        v64 = 0;
        v65 = -8;
        do
        {
          *&v26[v64] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v64 * 8), v23), *(v15 + v64 * 8 + 2), v24), 3uLL);
          v65 += 8;
          v64 += 2;
        }

        while (v65 < 0x78);
        v26 += 32;
        v15 += v25;
        --v63;
      }

      while (v63);
      v66 = v82;
      v67 = v81;
      v68 = 128;
      do
      {
        v69 = 0;
        v70 = -8;
        do
        {
          *&v67[v69 * 8] = vrhaddq_u16(*&v66[v69], *&v66[v69 + 32]);
          v70 += 8;
          v69 += 2;
        }

        while (v70 < 0x78);
        v66 += 32;
        v67 += 256;
        --v68;
      }

      while (v68);
    }

    else
    {
      if (!v11)
      {
        v27 = 128;
        do
        {
          v28 = 0;
          v29 = -8;
          do
          {
            *&v26[v28] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v28 * 8), v23), *(v15 + v28 * 8 + 2), v24), 3uLL);
            v29 += 8;
            v28 += 2;
          }

          while (v29 < 0x78);
          v26 += 32;
          v15 += v25;
          --v27;
        }

        while (v27);
        goto LABEL_40;
      }

      v71 = 129;
      do
      {
        v72 = 0;
        v73 = -8;
        do
        {
          *&v26[v72] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v72 * 8), v23), *(v15 + v72 * 8 + 2), v24), 3uLL);
          v73 += 8;
          v72 += 2;
        }

        while (v73 < 0x78);
        v26 += 32;
        v15 += v25;
        --v71;
      }

      while (v71);
      v74 = vdupq_n_s16(8 - v11);
      v75 = vdupq_n_s16(v11);
      v76 = v82;
      v77 = v81;
      v78 = 128;
      do
      {
        v79 = 0;
        v80 = -8;
        do
        {
          *&v77[v79 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v76[v79], v74), *&v76[v79 + 32], v75), 3uLL);
          v80 += 8;
          v79 += 2;
        }

        while (v80 < 0x78);
        v76 += 32;
        v77 += 256;
        --v78;
      }

      while (v78);
    }

LABEL_67:
    v52 = v81;
    return sub_277996A60(v52 >> 1, 128, v12, v13, v14);
  }

  if (v11 == 4)
  {
    v30 = 2 * v9;
    v31 = v82;
    v32 = 128;
    v33 = v15 + v30;
    do
    {
      v34 = 0;
      v35 = -8;
      do
      {
        *&v31[v34] = vrhaddq_u16(*(v15 + v34 * 8), *(v33 + v34 * 8));
        v35 += 8;
        v34 += 2;
      }

      while (v35 < 0x78);
      v31 += 32;
      v33 += v30;
      v15 += v30;
      --v32;
    }

    while (v32);
    goto LABEL_40;
  }

  if (v11)
  {
    v44 = vdupq_n_s16(8 - v11);
    v45 = vdupq_n_s16(v11);
    v46 = 2 * v9;
    v47 = v15 + v46;
    v48 = v82;
    v49 = 128;
    do
    {
      v50 = 0;
      v51 = -8;
      do
      {
        *&v48[v50] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v50 * 8), v44), *(v47 + v50 * 8), v45), 3uLL);
        v51 += 8;
        v50 += 2;
      }

      while (v51 < 0x78);
      v48 += 32;
      v47 += v46;
      v15 += v46;
      --v49;
    }

    while (v49);
LABEL_40:
    v52 = v82;
    return sub_277996A60(v52 >> 1, 128, v12, v13, v14);
  }

  v16 = v8 & 0x7FFFFFFFFFFFFFFFLL;

  return sub_277996A60(v16, v9, v12, v13, v14);
}

uint64_t sub_277B3DB24(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, _DWORD *a7)
{
  v7 = 0;
  v18[17] = *MEMORY[0x277D85DE8];
  v8 = vdup_n_s16(8 - a3);
  v9 = vdup_n_s16(a3);
  v10 = (2 * a1 + 2);
  do
  {
    v18[v7++] = vrshr_n_u16(vmla_s16(vmul_s16(*(v10 - 2), v8), *v10, v9), 3uLL);
    v10 = (v10 + 2 * a2);
  }

  while ((v7 * 8) != 136);
  v11 = 0;
  v12 = vdup_n_s16(8 - a4);
  v13 = vdup_n_s16(a4);
  v14 = v18[0];
  do
  {
    v15 = v18[v11 + 1];
    *&v17[v11 * 8] = vrshr_n_u16(vmla_s16(vmul_s16(v14, v12), v15, v13), 3uLL);
    ++v11;
    v14 = v15;
  }

  while ((v11 * 8) != 128);
  return sub_277997938(v17 >> 1, 4u, a5, a6, a7);
}

uint64_t sub_277B3DC24(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7)
{
  v7 = 0;
  v19 = *MEMORY[0x277D85DE8];
  v8 = vdupq_n_s16(8 - a3);
  v9 = vdupq_n_s16(a3);
  v10 = (2 * a1 + 2);
  do
  {
    v18[v7++] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v10 - 2), v8), *v10, v9), 3uLL);
    v10 = (v10 + 2 * a2);
  }

  while ((v7 * 16) != 528);
  v11 = 0;
  v12 = vdupq_n_s16(8 - a4);
  v13 = vdupq_n_s16(a4);
  v14 = v18[0];
  do
  {
    v15 = v18[v11 + 1];
    *&v17[v11 * 16] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v14, v12), v15, v13), 3uLL);
    ++v11;
    v14 = v15;
  }

  while ((v11 * 16) != 512);
  return sub_2779979E0(v17 >> 1, 8, a5, a6, a7);
}

uint64_t sub_277B3DD24(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7)
{
  v73[15] = *MEMORY[0x277D85DE8];
  v7 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v53 = 0;
      v54 = (v7 + 18);
      do
      {
        v55 = &v72[v53];
        *v55 = vrhaddq_u16(*(v54 - 18), v54[-1]);
        v55[1] = vrhaddq_u16(*(v54 - 2), *v54);
        v53 += 2;
        v54 = (v54 + 2 * a2);
      }

      while ((v53 * 16) != 160);
      v56 = v72[0];
      v57 = v73;
      v58 = 32;
      do
      {
        v59 = &v71[v58];
        v61 = v57[-2];
        v60 = v57[-1];
        v62 = *v57;
        v57 += 2;
        v59[-2] = vrhaddq_u16(v56, v60);
        v59[-1] = vrhaddq_u16(v61, v62);
        v58 += 32;
        v56 = v60;
      }

      while (v58 != 160);
    }

    else
    {
      v10 = 0;
      v11 = (v7 + 18);
      v12 = 2 * a2;
      if (!a4)
      {
        do
        {
          v13 = &v72[v10];
          *v13 = vrhaddq_u16(*(v11 - 18), v11[-1]);
          v13[1] = vrhaddq_u16(*(v11 - 2), *v11);
          v10 += 2;
          v11 = (v11 + v12);
        }

        while ((v10 * 16) != 128);
        goto LABEL_38;
      }

      do
      {
        v14 = &v72[v10];
        *v14 = vrhaddq_u16(*(v11 - 18), v11[-1]);
        v14[1] = vrhaddq_u16(*(v11 - 2), *v11);
        v10 += 2;
        v11 = (v11 + v12);
      }

      while ((v10 * 16) != 160);
      v15 = vdupq_n_s16(8 - a4);
      v16 = vdupq_n_s16(a4);
      v17 = v72[0];
      v18 = v73;
      v19 = 32;
      do
      {
        v21 = v18[-2];
        v20 = v18[-1];
        v22 = *v18;
        v18 += 2;
        v23 = &v71[v19];
        v23[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v17, v15), v20, v16), 3uLL);
        v23[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v21, v15), v22, v16), 3uLL);
        v19 += 32;
        v17 = v20;
      }

      while (v19 != 160);
    }

    goto LABEL_35;
  }

  if (a3)
  {
    v24 = 0;
    v25 = vdupq_n_s16(8 - a3);
    v26 = vdupq_n_s16(a3);
    v27 = (v7 + 18);
    v28 = 2 * a2;
    if (a4 == 4)
    {
      do
      {
        v30 = &v72[v24];
        *v30 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 18), v25), v27[-1], v26), 3uLL);
        v30[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 2), v25), *v27, v26), 3uLL);
        v24 += 2;
        v27 = (v27 + v28);
      }

      while ((v24 * 16) != 160);
      v31 = v72[0];
      v32 = v73;
      v33 = 32;
      do
      {
        v34 = &v71[v33];
        v36 = v32[-2];
        v35 = v32[-1];
        v37 = *v32;
        v32 += 2;
        v34[-2] = vrhaddq_u16(v31, v35);
        v34[-1] = vrhaddq_u16(v36, v37);
        v33 += 32;
        v31 = v35;
      }

      while (v33 != 160);
    }

    else
    {
      if (!a4)
      {
        do
        {
          v29 = &v72[v24];
          *v29 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 18), v25), v27[-1], v26), 3uLL);
          v29[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 2), v25), *v27, v26), 3uLL);
          v24 += 2;
          v27 = (v27 + v28);
        }

        while ((v24 * 16) != 128);
        goto LABEL_38;
      }

      do
      {
        v38 = &v72[v24];
        *v38 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 18), v25), v27[-1], v26), 3uLL);
        v38[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 2), v25), *v27, v26), 3uLL);
        v24 += 2;
        v27 = (v27 + v28);
      }

      while ((v24 * 16) != 160);
      v39 = vdupq_n_s16(8 - a4);
      v40 = vdupq_n_s16(a4);
      v41 = v72[0];
      v42 = v73;
      v43 = 32;
      do
      {
        v45 = v42[-2];
        v44 = v42[-1];
        v46 = *v42;
        v42 += 2;
        v47 = &v71[v43];
        v47[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v41, v39), v44, v40), 3uLL);
        v47[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v45, v39), v46, v40), 3uLL);
        v43 += 32;
        v41 = v44;
      }

      while (v43 != 160);
    }

LABEL_35:
    v63 = v71;
    return sub_277997A6C(v63 >> 1, 16, a5, a6, a7);
  }

  if (a4 == 4)
  {
    v48 = 0;
    v49 = *v7;
    v50 = 2 * a2;
    do
    {
      v51 = &v72[v48];
      v52 = *(v7 + 2 * a2);
      *v51 = vrhaddq_u16(v49, v52);
      v51[1] = vrhaddq_u16(*(v7 + 16), *(v7 + v50 + 16));
      v48 += 2;
      v7 += v50;
      v49 = v52;
    }

    while ((v48 * 16) != 128);
    goto LABEL_38;
  }

  if (a4)
  {
    v64 = 0;
    v65 = vdupq_n_s16(8 - a4);
    v66 = vdupq_n_s16(a4);
    v67 = *v7;
    v68 = 2 * a2;
    do
    {
      v69 = &v72[v64];
      v70 = *(v7 + 2 * a2);
      *v69 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v67, v65), v70, v66), 3uLL);
      v69[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + 16), v65), *(v7 + v68 + 16), v66), 3uLL);
      v64 += 2;
      v7 += v68;
      v67 = v70;
    }

    while ((v64 * 16) != 128);
LABEL_38:
    v63 = v72;
    return sub_277997A6C(v63 >> 1, 16, a5, a6, a7);
  }

  v8 = a1 & 0x7FFFFFFFFFFFFFFFLL;

  return sub_277997A6C(v8, a2, a5, a6, a7);
}

uint64_t sub_277B3E1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v81[255] = *MEMORY[0x277D85DE8];
  v15 = 2 * v8;
  if (v10 == 4)
  {
    if (v11 == 4)
    {
      v61 = 0;
      v62 = (v15 + 18);
      do
      {
        v63 = &v80[v61];
        *v63 = vrhaddq_u16(*(v62 - 18), v62[-1]);
        v63[1] = vrhaddq_u16(*(v62 - 2), *v62);
        v61 += 2;
        v62 = (v62 + 2 * v9);
      }

      while ((v61 * 16) != 2080);
      v64 = v80[0];
      v65 = v81;
      v66 = 32;
      do
      {
        v67 = &v79[v66];
        v69 = v65[-2];
        v68 = v65[-1];
        v70 = *v65;
        v65 += 2;
        v67[-2] = vrhaddq_u16(v64, v68);
        v67[-1] = vrhaddq_u16(v69, v70);
        v66 += 32;
        v64 = v68;
      }

      while (v66 != 2080);
    }

    else
    {
      v18 = 0;
      v19 = (v15 + 18);
      v20 = 2 * v9;
      if (!v11)
      {
        do
        {
          v21 = &v80[v18];
          *v21 = vrhaddq_u16(*(v19 - 18), v19[-1]);
          v21[1] = vrhaddq_u16(*(v19 - 2), *v19);
          v18 += 2;
          v19 = (v19 + v20);
        }

        while ((v18 * 16) != 2048);
        goto LABEL_38;
      }

      do
      {
        v22 = &v80[v18];
        *v22 = vrhaddq_u16(*(v19 - 18), v19[-1]);
        v22[1] = vrhaddq_u16(*(v19 - 2), *v19);
        v18 += 2;
        v19 = (v19 + v20);
      }

      while ((v18 * 16) != 2080);
      v23 = vdupq_n_s16(8 - v11);
      v24 = vdupq_n_s16(v11);
      v25 = v80[0];
      v26 = v81;
      v27 = 32;
      do
      {
        v29 = v26[-2];
        v28 = v26[-1];
        v30 = *v26;
        v26 += 2;
        v31 = &v79[v27];
        v31[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v25, v23), v28, v24), 3uLL);
        v31[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v29, v23), v30, v24), 3uLL);
        v27 += 32;
        v25 = v28;
      }

      while (v27 != 2080);
    }

    goto LABEL_35;
  }

  if (v10)
  {
    v32 = 0;
    v33 = vdupq_n_s16(8 - v10);
    v34 = vdupq_n_s16(v10);
    v35 = (v15 + 18);
    v36 = 2 * v9;
    if (v11 == 4)
    {
      do
      {
        v38 = &v80[v32];
        *v38 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v35 - 18), v33), v35[-1], v34), 3uLL);
        v38[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v35 - 2), v33), *v35, v34), 3uLL);
        v32 += 2;
        v35 = (v35 + v36);
      }

      while ((v32 * 16) != 2080);
      v39 = v80[0];
      v40 = v81;
      v41 = 32;
      do
      {
        v42 = &v79[v41];
        v44 = v40[-2];
        v43 = v40[-1];
        v45 = *v40;
        v40 += 2;
        v42[-2] = vrhaddq_u16(v39, v43);
        v42[-1] = vrhaddq_u16(v44, v45);
        v41 += 32;
        v39 = v43;
      }

      while (v41 != 2080);
    }

    else
    {
      if (!v11)
      {
        do
        {
          v37 = &v80[v32];
          *v37 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v35 - 18), v33), v35[-1], v34), 3uLL);
          v37[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v35 - 2), v33), *v35, v34), 3uLL);
          v32 += 2;
          v35 = (v35 + v36);
        }

        while ((v32 * 16) != 2048);
        goto LABEL_38;
      }

      do
      {
        v46 = &v80[v32];
        *v46 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v35 - 18), v33), v35[-1], v34), 3uLL);
        v46[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v35 - 2), v33), *v35, v34), 3uLL);
        v32 += 2;
        v35 = (v35 + v36);
      }

      while ((v32 * 16) != 2080);
      v47 = vdupq_n_s16(8 - v11);
      v48 = vdupq_n_s16(v11);
      v49 = v80[0];
      v50 = v81;
      v51 = 32;
      do
      {
        v53 = v50[-2];
        v52 = v50[-1];
        v54 = *v50;
        v50 += 2;
        v55 = &v79[v51];
        v55[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v49, v47), v52, v48), 3uLL);
        v55[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v53, v47), v54, v48), 3uLL);
        v51 += 32;
        v49 = v52;
      }

      while (v51 != 2080);
    }

LABEL_35:
    v71 = v79;
    return sub_277997B14(v71 >> 1, 16, v12, v13, v14);
  }

  if (v11 == 4)
  {
    v56 = 0;
    v57 = *v15;
    v58 = 2 * v9;
    do
    {
      v59 = &v80[v56];
      v60 = *(v15 + 2 * v9);
      *v59 = vrhaddq_u16(v57, v60);
      v59[1] = vrhaddq_u16(*(v15 + 16), *(v15 + v58 + 16));
      v56 += 2;
      v15 += v58;
      v57 = v60;
    }

    while ((v56 * 16) != 2048);
    goto LABEL_38;
  }

  if (v11)
  {
    v72 = 0;
    v73 = vdupq_n_s16(8 - v11);
    v74 = vdupq_n_s16(v11);
    v75 = *v15;
    v76 = 2 * v9;
    do
    {
      v77 = &v80[v72];
      v78 = *(v15 + 2 * v9);
      *v77 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v75, v73), v78, v74), 3uLL);
      v77[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + 16), v73), *(v15 + v76 + 16), v74), 3uLL);
      v72 += 2;
      v15 += v76;
      v75 = v78;
    }

    while ((v72 * 16) != 2048);
LABEL_38:
    v71 = v80;
    return sub_277997B14(v71 >> 1, 16, v12, v13, v14);
  }

  v16 = v8 & 0x7FFFFFFFFFFFFFFFLL;

  return sub_277997B14(v16, v9, v12, v13, v14);
}

uint64_t sub_277B3E65C(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7)
{
  v80 = *MEMORY[0x277D85DE8];
  v7 = 2 * a1;
  if (a3 == 4)
  {
    v10 = 2 * a2;
    v11 = v79;
    if (a4 == 4)
    {
      v27 = 9;
      do
      {
        v28 = 0;
        v29 = -8;
        do
        {
          *&v11[v28] = vrhaddq_u16(*(v7 + v28), *(v7 + v28 + 2));
          v29 += 8;
          v28 += 16;
        }

        while (v29 < 0x18);
        v11 += 64;
        v7 += v10;
        --v27;
      }

      while (v27);
      v30 = v79;
      v31 = v78;
      v32 = 8;
      do
      {
        v33 = 0;
        v34 = -8;
        do
        {
          *&v31[v33] = vrhaddq_u16(*&v30[v33], *&v30[v33 + 64]);
          v34 += 8;
          v33 += 16;
        }

        while (v34 < 0x18);
        v30 += 64;
        v31 += 64;
        --v32;
      }

      while (v32);
    }

    else
    {
      if (!a4)
      {
        v12 = 8;
        do
        {
          v13 = 0;
          v14 = -8;
          do
          {
            *&v11[v13] = vrhaddq_u16(*(v7 + v13), *(v7 + v13 + 2));
            v14 += 8;
            v13 += 16;
          }

          while (v14 < 0x18);
          v11 += 64;
          v7 += v10;
          --v12;
        }

        while (v12);
        goto LABEL_40;
      }

      v44 = 9;
      do
      {
        v45 = 0;
        v46 = -8;
        do
        {
          *&v11[v45] = vrhaddq_u16(*(v7 + v45), *(v7 + v45 + 2));
          v46 += 8;
          v45 += 16;
        }

        while (v46 < 0x18);
        v11 += 64;
        v7 += v10;
        --v44;
      }

      while (v44);
      v47 = 8;
      v48 = vdupq_n_s16(8 - a4);
      v49 = vdupq_n_s16(a4);
      v50 = v79;
      v51 = v78;
      do
      {
        v52 = 0;
        v53 = -8;
        do
        {
          *&v51[v52] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v50[v52], v48), *&v50[v52 + 64], v49), 3uLL);
          v53 += 8;
          v52 += 16;
        }

        while (v53 < 0x18);
        v50 += 64;
        v51 += 64;
        --v47;
      }

      while (v47);
    }

    goto LABEL_67;
  }

  if (a3)
  {
    v15 = 8;
    if (a4 == 4)
    {
      v54 = vdupq_n_s16(8 - a3);
      v55 = vdupq_n_s16(a3);
      v56 = v79;
      v57 = 9;
      do
      {
        v58 = 0;
        v59 = -8;
        do
        {
          *&v56[v58] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v58), v54), *(v7 + v58 + 2), v55), 3uLL);
          v59 += 8;
          v58 += 16;
        }

        while (v59 < 0x18);
        v56 += 64;
        v7 += 2 * a2;
        --v57;
      }

      while (v57);
      v60 = v79;
      v61 = v78;
      v62 = 8;
      do
      {
        v63 = 0;
        v64 = -8;
        do
        {
          *&v61[v63] = vrhaddq_u16(*&v60[v63], *&v60[v63 + 64]);
          v64 += 8;
          v63 += 16;
        }

        while (v64 < 0x18);
        v60 += 64;
        v61 += 64;
        --v62;
      }

      while (v62);
    }

    else
    {
      if (!a4)
      {
        v16 = vdupq_n_s16(8 - a3);
        v17 = vdupq_n_s16(a3);
        v18 = v79;
        do
        {
          v19 = 0;
          v20 = -8;
          do
          {
            *&v18[v19] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v19), v16), *(v7 + v19 + 2), v17), 3uLL);
            v20 += 8;
            v19 += 16;
          }

          while (v20 < 0x18);
          v18 += 64;
          v7 += 2 * a2;
          --v15;
        }

        while (v15);
        goto LABEL_40;
      }

      v65 = vdupq_n_s16(8 - a3);
      v66 = vdupq_n_s16(a3);
      v67 = v79;
      v68 = 9;
      do
      {
        v69 = 0;
        v70 = -8;
        do
        {
          *&v67[v69] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v69), v65), *(v7 + v69 + 2), v66), 3uLL);
          v70 += 8;
          v69 += 16;
        }

        while (v70 < 0x18);
        v67 += 64;
        v7 += 2 * a2;
        --v68;
      }

      while (v68);
      v71 = 8;
      v72 = vdupq_n_s16(8 - a4);
      v73 = vdupq_n_s16(a4);
      v74 = v79;
      v75 = v78;
      do
      {
        v76 = 0;
        v77 = -8;
        do
        {
          *&v75[v76] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v74[v76], v72), *&v74[v76 + 64], v73), 3uLL);
          v77 += 8;
          v76 += 16;
        }

        while (v77 < 0x18);
        v74 += 64;
        v75 += 64;
        --v71;
      }

      while (v71);
    }

LABEL_67:
    v43 = v78;
    return sub_277997BBC(v43 >> 1, 32, a5, a6, a7);
  }

  if (a4 == 4)
  {
    v21 = 2 * a2;
    v22 = v79;
    v23 = 8;
    v24 = v7 + v21;
    do
    {
      v25 = 0;
      v26 = -8;
      do
      {
        *&v22[v25] = vrhaddq_u16(*(v7 + v25), *(v24 + v25));
        v26 += 8;
        v25 += 16;
      }

      while (v26 < 0x18);
      v22 += 64;
      v24 += v21;
      v7 += v21;
      --v23;
    }

    while (v23);
    goto LABEL_40;
  }

  if (a4)
  {
    v35 = 8;
    v36 = vdupq_n_s16(8 - a4);
    v37 = vdupq_n_s16(a4);
    v38 = 2 * a2;
    v39 = v7 + v38;
    v40 = v79;
    do
    {
      v41 = 0;
      v42 = -8;
      do
      {
        *&v40[v41] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v41), v36), *(v39 + v41), v37), 3uLL);
        v42 += 8;
        v41 += 16;
      }

      while (v42 < 0x18);
      v40 += 64;
      v39 += v38;
      v7 += v38;
      --v35;
    }

    while (v35);
LABEL_40:
    v43 = v79;
    return sub_277997BBC(v43 >> 1, 32, a5, a6, a7);
  }

  v8 = a1 & 0x7FFFFFFFFFFFFFFFLL;

  return sub_277997BBC(v8, a2, a5, a6, a7);
}