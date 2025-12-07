float64x2_t sub_188F00F30(float64x2_t *a1, float64x2_t result)
{
  if ((*(v2 + 216) & 1) == 0)
  {
    v3 = result.f64[0] / 1000.0 / (1.0 - result.f64[0]);
    v4 = vaddq_f64(vmulq_n_f64(*(v2 + 168), v3), a1[1]);
    *a1 = vaddq_f64(vmulq_n_f64(*(v2 + 152), v3), *a1);
    a1[1] = v4;
    v5 = vaddq_f64(vmulq_n_f64(*(v2 + 184), v3), a1[2]);
    result = vaddq_f64(vmulq_n_f64(*(v2 + 200), v3), a1[3]);
    a1[2] = v5;
    a1[3] = result;
  }

  return result;
}

void sub_188F00F98(uint64_t *a1, double a2)
{
  v5 = *(v2 + 88);
  v4 = *(v2 + 96);
  v6 = *(v2 + 120) | (*(v2 + 124) << 32);
  v7 = v5;
  v8 = *(v2 + 104);
  v9 = *(v2 + 112);
  v10 = v4;
  v11 = v8;
  v12 = v9;
  v13 = v6;
  if (v5)
  {
    if (v5 == 1)
    {
      return;
    }

    v42 = v5;
    v43 = v4;
    v14 = a2 / 1000.0 / (1.0 - a2);
    v44 = v8;
    v45 = v9;
    v46 = v6;
    v47 = BYTE4(v6) & 1;
    sub_188F0D3EC(v5, v4, v8, v9);
    sub_188F0B550(v5, v4, v8, v9);
    sub_18908FB80(v14);
    v7 = v5;
    v10 = v4;
    v11 = v8;
    v12 = v9;
    v15 = 0x100000000;
    if ((v6 & 0x100000000) == 0)
    {
      v15 = 0;
    }

    v13 = v15 | v46;
  }

  v36 = v4;
  v16 = *a1;
  if (*a1)
  {
    v17 = v11;
    v19 = a1[1];
    v18 = a1[2];
    v20 = a1[3];
    v21 = *(a1 + 8);
    v22 = v21 | (*(a1 + 36) << 32);
    if (v7)
    {
      v42 = v7;
      v43 = v10;
      v44 = v17;
      v45 = v12;
      v34 = v12;
      v35 = v17;
      v46 = v13;
      v47 = BYTE4(v13) & 1;
      v37 = v19;
      v38 = v18;
      v39 = v20;
      v40 = v21;
      v41 = BYTE4(v22) & 1;
      v32 = v8;
      v33 = v9;
      v23 = v19;
      v30 = v20;
      v31 = v19;
      v24 = v18;
      sub_188F0B550(v7, v10, v17, v12);
      sub_188F0B550(v16, v23, v24, v30);
      sub_18908FD40(&v42);
      sub_188F0B59C(v16, v31, v24, v30);

      sub_188F0D3FC(v5, v36, v32, v33);
      sub_188F0B59C(v7, v10, v35, v34);
      v7 = v16;
      v10 = v37;
      v11 = v38;
      v25 = v39;
      v26 = 0x100000000;
      if (!v41)
      {
        v26 = 0;
      }

      v13 = v26 | v40;
    }

    else
    {
      v10 = a1[1];
      v27 = v8;
      v28 = a1[3];
      v29 = a1[2];
      sub_188F0D3FC(v5, v36, v27, v9);
      v13 = v22 & 0x1FFFFFFFFLL;
      v7 = v16;
      v11 = v29;
      v25 = v28;
    }
  }

  else
  {
    v25 = v12;
    if (v7)
    {
      sub_188F0B550(v7, v10, v11, v12);
      sub_188F0D3FC(v5, v36, v8, v9);
      sub_188F0B59C(v7, v10, v11, v25);
    }

    else
    {
      sub_188F0D3FC(v5, v36, v8, v9);
    }
  }

  *a1 = v7;
  a1[1] = v10;
  a1[2] = v11;
  a1[3] = v25;
  *(a1 + 8) = v13;
  *(a1 + 36) = BYTE4(v13);
}

double sub_188F01294(char a1, void *a2, uint64_t (*a3)(void), double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v95 = a9;
  v97 = a7;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936518, &qword_18A650CC8);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v93 = (&v91 - v19);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936528, &qword_18A650CD8);
  MEMORY[0x1EEE9AC00](v96);
  v21 = (&v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v94 = &v91 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v91 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v91 - v28;
  v30 = UIAnimationDragCoefficient();
  signpost_c2_entryLock_start();
  v99 = a2[2];
  os_unfair_lock_lock(v99 + 4);
  signpost_c2_entryLock_start();
  v98 = swift_allocObject();
  *(v98 + 16) = 0;
  if (*(a2 + *(*a2 + 120)) & 1) != 0 || (a1 & 1) != 0 || (a3())
  {
    v31 = v98;
    *(v98 + 16) = 1;
    v32 = 0.0;
    goto LABEL_5;
  }

  signpost_c2_entryLock_start();
  v92 = a6;
  v41 = *(a6 + 24);
  os_unfair_lock_lock((v41 + 176));
  v128 = *(v41 + 96);
  v129 = *(v41 + 112);
  v124 = *(v41 + 116);
  v125 = *(v41 + 132);
  v120 = *(v41 + 136);
  v121 = *(v41 + 152);
  v117 = *(v41 + 172);
  v116 = *(v41 + 156);
  os_unfair_lock_unlock((v41 + 176));
  v42 = *(*a2 + 104);
  swift_beginAccess();
  sub_188C56278(&v111, a4 / v30);
  swift_endAccess();
  v131 = v112[0];
  v127 = DWORD1(v112[1]);
  v123 = DWORD2(v112[2]);
  v130 = v111;
  v126 = *(v112 + 4);
  v122 = *(&v112[1] + 8);
  v119 = HIDWORD(v112[3]);
  HIDWORD(v43) = v112[3];
  v118 = *(&v112[2] + 12);
  LODWORD(v43) = 1008981770;
  v44 = sub_188F7BFE0(&v128, v43);
  v45 = v44;
  LODWORD(v44) = 1008981770;
  v46 = sub_188F7BFE0(&v124, v44);
  v47 = v46;
  LODWORD(v46) = 1008981770;
  v48 = sub_188F7BFE0(&v120, v46);
  v49 = v48;
  LODWORD(v48) = 1008981770;
  v50 = sub_188F7BFE0(&v116, v48);
  if (v45 > v47)
  {
    v51 = v45;
  }

  else
  {
    v51 = v47;
  }

  if (v51 <= v49)
  {
    v51 = v49;
  }

  if (v51 > v50)
  {
    v32 = v51;
  }

  else
  {
    v32 = v50;
  }

  os_unfair_lock_lock((v41 + 176));
  v52 = v112[2];
  *(v41 + 128) = v112[1];
  *(v41 + 144) = v52;
  *(v41 + 160) = v112[3];
  v53 = v112[0];
  *(v41 + 96) = v111;
  *(v41 + 112) = v53;
  os_unfair_lock_unlock((v41 + 176));
  signpost_c2_entryLock_start();
  sub_188A3F29C(a2 + v42, v29, &qword_1EA936528, &qword_18A650CD8);
  sub_188A3F29C(v29, v26, &qword_1EA936528, &qword_18A650CD8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_188A3F5FC(v29, &qword_1EA936528, &qword_18A650CD8);
      v56 = v26;
      v57 = v93;
      sub_188A3F704(v56, v93, &qword_1EA936518, &qword_18A650CC8);
      v58 = *(v57 + 256);
      sub_188A3F5FC(v57, &qword_1EA936518, &qword_18A650CC8);
      if ((v58 & 1) == 0)
      {
LABEL_27:
        v108 = v112[1];
        v109 = v112[2];
        v110 = v112[3];
        v106 = v111;
        v107 = v112[0];
        sub_188D22448(&v101);
        v60 = 0;
        goto LABEL_38;
      }
    }

    else
    {
      sub_188A3F5FC(v29, &qword_1EA936528, &qword_18A650CD8);
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      memcpy(v115, v26, 0x150uLL);
      v55 = sub_188EF46F4();
    }

    else
    {
      memcpy(v115, v26, sizeof(v115));
      v55 = sub_188CB891C();
    }

    v59 = v55;
    sub_188A3F5FC(v29, &qword_1EA936528, &qword_18A650CD8);
    if ((v59 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v61 = v94;
  sub_188A3F29C(a2 + v42, v94, &qword_1EA936528, &qword_18A650CD8);
  sub_188A3F704(v61, v21, &qword_1EA936528, &qword_18A650CD8);
  v62 = swift_getEnumCaseMultiPayload();
  if (v62 <= 1)
  {
    if (v62)
    {
      v69 = v21[19];
      v108 = v21[18];
      v109 = v69;
      v110 = v21[20];
      v65 = v21[16];
      v64 = v21[17];
    }

    else
    {
      v63 = v21[17];
      v108 = v21[16];
      v109 = v63;
      v110 = v21[18];
      v65 = v21[14];
      v64 = v21[15];
    }

    goto LABEL_36;
  }

  if (v62 != 2)
  {
    v70 = v21[3];
    v108 = v21[2];
    v109 = v70;
    v110 = v21[4];
    v65 = *v21;
    v64 = v21[1];
LABEL_36:
    v106 = v65;
    v107 = v64;
    goto LABEL_37;
  }

  v66 = v93;
  sub_188A3F704(v21, v93, &qword_1EA936518, &qword_18A650CC8);
  v67 = v66[14];
  v108 = v66[13];
  v109 = v67;
  v110 = v66[15];
  v68 = v66[12];
  v106 = v66[11];
  v107 = v68;
  sub_188A3F5FC(v66, &qword_1EA936518, &qword_18A650CC8);
LABEL_37:
  v105 = 0u;
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v60 = 1;
LABEL_38:
  v71 = v97;
  swift_beginAccess();
  v72 = *(v71 + 96);
  v100 = 0;
  if ((v72 & 1) != 0 || (v114[1] = v107, v114[2] = v108, v114[3] = v109, v114[4] = v110, v73 = *(v71 + 64), v113[2] = *(v71 + 48), v113[3] = v73, v113[4] = *(v71 + 80), v114[0] = v106, v74 = *(v71 + 32), v113[0] = *(v71 + 16), v113[1] = v74, !sub_188D22388(v113, v114)))
  {
    v75 = swift_allocObject();
    v76 = v107;
    v77 = v109;
    v78 = v110;
    *(v75 + 64) = v108;
    *(v75 + 80) = v77;
    v79 = v105;
    *(v75 + 32) = v106;
    *(v75 + 48) = v76;
    v80 = v103;
    v81 = v104;
    v82 = v101;
    *(v75 + 128) = v102;
    *(v75 + 144) = v80;
    *(v75 + 160) = v81;
    *(v75 + 176) = v79;
    *(v75 + 16) = v95;
    *(v75 + 24) = a10;
    *(v75 + 96) = v78;
    *(v75 + 112) = v82;
    v83 = swift_allocObject();
    *(v83 + 16) = sub_188F0CCB8;
    *(v83 + 24) = v75;
    swift_beginAccess();
    v84 = *(a8 + 112);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a8 + 112) = v84;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v84 = sub_188E4B69C(0, v84[2] + 1, 1, v84);
      *(a8 + 112) = v84;
    }

    v87 = v84[2];
    v86 = v84[3];
    if (v87 >= v86 >> 1)
    {
      v84 = sub_188E4B69C((v86 > 1), v87 + 1, 1, v84);
    }

    v84[2] = v87 + 1;
    v88 = &v84[2 * v87];
    v88[4] = sub_188E85C88;
    v88[5] = v83;
    *(a8 + 112) = v84;
    swift_endAccess();
    sub_188AA7584();

    v71 = v97;
  }

  swift_beginAccess();
  v89 = v109;
  *(v71 + 48) = v108;
  *(v71 + 64) = v89;
  *(v71 + 80) = v110;
  v90 = v107;
  *(v71 + 16) = v106;
  *(v71 + 32) = v90;
  *(v71 + 96) = 0;
  if ((v60 & 1) == 0)
  {

    goto LABEL_10;
  }

  a6 = v92;
  v31 = v98;
LABEL_5:
  v33 = swift_allocObject();
  v33[2] = a2;
  v33[3] = a11;
  v33[4] = a12;
  v33[5] = a6;
  v33[6] = a8;
  v33[7] = v31;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_188F0CD1C;
  *(v34 + 24) = v33;
  swift_beginAccess();
  v35 = *(a8 + 112);

  v36 = swift_isUniquelyReferenced_nonNull_native();
  *(a8 + 112) = v35;
  if ((v36 & 1) == 0)
  {
    v35 = sub_188E4B69C(0, v35[2] + 1, 1, v35);
    *(a8 + 112) = v35;
  }

  v38 = v35[2];
  v37 = v35[3];
  if (v38 >= v37 >> 1)
  {
    v35 = sub_188E4B69C((v37 > 1), v38 + 1, 1, v35);
  }

  v35[2] = v38 + 1;
  v39 = &v35[2 * v38];
  v39[4] = sub_188F0E0CC;
  v39[5] = v34;
  *(a8 + 112) = v35;
  swift_endAccess();
  sub_188AA7584();

LABEL_10:
  os_unfair_lock_unlock(v99 + 4);
  return v32;
}

double sub_188F01BB8(char a1, void *a2, uint64_t (*a3)(void), double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v69 = a9;
  v70 = a7;
  v72 = a6;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936560, &qword_18A650D10);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = (&v67 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936568, &qword_18A650D18);
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v67 - v24;
  v26 = UIAnimationDragCoefficient();
  signpost_c2_entryLock_start();
  v71 = a2[2];
  os_unfair_lock_lock(v71 + 4);
  signpost_c2_entryLock_start();
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  if (*(a2 + *(*a2 + 120)) & 1) != 0 || (a1 & 1) != 0 || (a3())
  {
    *(v27 + 16) = 1;
    v28 = 0.0;
LABEL_5:
    v29 = swift_allocObject();
    v29[2] = a2;
    v29[3] = a11;
    v30 = v72;
    v29[4] = a12;
    v29[5] = v30;
    v29[6] = a8;
    v29[7] = v27;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_188F0D528;
    *(v31 + 24) = v29;
    swift_beginAccess();
    v32 = *(a8 + 112);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a8 + 112) = v32;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v32 = sub_188E4B69C(0, v32[2] + 1, 1, v32);
      *(a8 + 112) = v32;
    }

    v35 = v32[2];
    v34 = v32[3];
    if (v35 >= v34 >> 1)
    {
      v32 = sub_188E4B69C((v34 > 1), v35 + 1, 1, v32);
    }

    v32[2] = v35 + 1;
    v36 = &v32[2 * v35];
    v36[4] = sub_188F0E0CC;
    v36[5] = v31;
    *(a8 + 112) = v32;
    swift_endAccess();
    sub_188AA7584();

    goto LABEL_10;
  }

  signpost_c2_entryLock_start();
  v38 = *(v72 + 24);
  os_unfair_lock_lock((v38 + 48));
  v40 = *(v38 + 32);
  v39 = *(v38 + 40);
  os_unfair_lock_unlock((v38 + 48));
  v41 = *(*a2 + 104);
  swift_beginAccess();
  v68 = v41;
  v42 = sub_188C55C38(a4 / v26);
  v44 = v43;
  swift_endAccess();
  v45 = objc_opt_self();
  v46 = +[(UIScreen *)v45];
  [v46 scale];
  v48 = v47;

  v49 = vabdd_f64(v42, v40) / (1.0 / v48);
  v50 = vabdd_f64(v44, v39);
  v51 = +[(UIScreen *)v45];
  [v51 scale];
  v53 = v52;

  if (v49 > v50 / (1.0 / v53))
  {
    v28 = v49;
  }

  else
  {
    v28 = v50 / (1.0 / v53);
  }

  os_unfair_lock_lock((v38 + 48));
  *(v38 + 32) = v42;
  *(v38 + 40) = v44;
  os_unfair_lock_unlock((v38 + 48));
  signpost_c2_entryLock_start();
  v54 = sub_188C55FB0();
  if ((v54 & 1) == 0)
  {
    v57 = sub_188F00028();
    v59 = v58;
LABEL_25:
    v56 = v70;
    goto LABEL_26;
  }

  sub_188A3F29C(a2 + v68, v25, &qword_1EA936568, &qword_18A650D18);
  sub_188A3F704(v25, v22, &qword_1EA936568, &qword_18A650D18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_188A3F704(v22, v19, &qword_1EA936560, &qword_18A650D10);
      v42 = v19[6];
      v44 = v19[7];
      sub_188A3F5FC(v19, &qword_1EA936560, &qword_18A650D10);
    }

    else
    {
      v42 = *v22;
      v44 = v22[1];
    }

    v57 = 0.0;
    v59 = 0;
    goto LABEL_25;
  }

  v56 = v70;
  if (EnumCaseMultiPayload)
  {
    v42 = v22[8];
    v44 = v22[9];
  }

  else
  {
    v42 = v22[20];
    v44 = v22[21];
  }

  v57 = 0.0;
  v59 = 0;
LABEL_26:
  swift_beginAccess();
  if ((*(v56 + 32) & 1) != 0 || *(v56 + 16) != v42 || *(v56 + 24) != v44)
  {
    v60 = swift_allocObject();
    *(v60 + 16) = v69;
    *(v60 + 24) = a10;
    *(v60 + 32) = v42;
    *(v60 + 40) = v44;
    *(v60 + 48) = v57;
    *(v60 + 56) = v59;
    v61 = swift_allocObject();
    *(v61 + 16) = sub_188F0E054;
    *(v61 + 24) = v60;
    swift_beginAccess();
    v62 = *(a8 + 112);

    v63 = swift_isUniquelyReferenced_nonNull_native();
    *(a8 + 112) = v62;
    if ((v63 & 1) == 0)
    {
      v62 = sub_188E4B69C(0, v62[2] + 1, 1, v62);
      *(a8 + 112) = v62;
    }

    v65 = v62[2];
    v64 = v62[3];
    if (v65 >= v64 >> 1)
    {
      v62 = sub_188E4B69C((v64 > 1), v65 + 1, 1, v62);
    }

    v62[2] = v65 + 1;
    v66 = &v62[2 * v65];
    v66[4] = sub_188F0E0CC;
    v66[5] = v61;
    *(a8 + 112) = v62;
    swift_endAccess();
    sub_188AA7584();
  }

  swift_beginAccess();
  *(v56 + 16) = v42;
  *(v56 + 24) = v44;
  *(v56 + 32) = 0;
  if (v54)
  {
    goto LABEL_5;
  }

LABEL_10:

  os_unfair_lock_unlock(v71 + 4);
  return v28;
}

double sub_188F02240(char a1, void *a2, uint64_t (*a3)(void), double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v20 = UIAnimationDragCoefficient();
  signpost_c2_entryLock_start();
  v21 = a2[2];
  os_unfair_lock_lock(v21 + 4);
  signpost_c2_entryLock_start();
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  if ((*(a2 + *(*a2 + 120)) & 1) == 0 && (a1 & 1) == 0 && (a3() & 1) == 0)
  {
    v54 = a7;
    v51 = v21;
    signpost_c2_entryLock_start();
    v32 = *(a6 + 24);
    os_unfair_lock_lock((v32 + 32));
    v33 = *(v32 + 24);

    os_unfair_lock_unlock((v32 + 32));
    swift_beginAccess();
    v34 = sub_188CD121C(a4 / v20);
    swift_endAccess();
    v23 = sub_18914A018(v33, v34);
    MEMORY[0x1EEE9AC00](v35);

    os_unfair_lock_lock((v32 + 32));
    sub_188CD1F3C(v32 + 16);
    os_unfair_lock_unlock((v32 + 32));

    signpost_c2_entryLock_start();
    v36 = sub_188CD1C88();
    if (v36)
    {
      v37 = sub_188CD1F8C();
      v53 = 0;
    }

    else
    {

      v53 = sub_188F001DC();
      v37 = v34;
    }

    v38 = v54;
    swift_beginAccess();
    v39 = *(v54 + 16);
    v52 = v37;
    if (v39)
    {
      if (v39 != 1)
      {
        if (v37)
        {
          v40 = sub_1890154CC(v39, v37);
          sub_188F0D090(v39);
          if ((v40 & 1) == 0)
          {
            v50 = v36;
            v41 = v52;

LABEL_22:
            v42 = swift_allocObject();
            v42[2] = a9;
            v42[3] = a10;
            v42[4] = v41;
            v42[5] = v53;
            v43 = swift_allocObject();
            *(v43 + 16) = sub_188F0D5A4;
            *(v43 + 24) = v42;
            swift_beginAccess();
            v44 = *(a8 + 112);

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(a8 + 112) = v44;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v44 = sub_188E4B69C(0, v44[2] + 1, 1, v44);
              *(a8 + 112) = v44;
            }

            v47 = v44[2];
            v46 = v44[3];
            if (v47 >= v46 >> 1)
            {
              v44 = sub_188E4B69C((v46 > 1), v47 + 1, 1, v44);
            }

            v44[2] = v47 + 1;
            v48 = &v44[2 * v47];
            v48[4] = sub_188F0E0CC;
            v48[5] = v43;
            *(a8 + 112) = v44;
            swift_endAccess();
            sub_188AA7584();

            v38 = v54;
            v36 = v50;
LABEL_28:

            swift_beginAccess();
            v49 = *(v38 + 16);
            *(v38 + 16) = v52;
            sub_188CD0030(v49);
            v21 = v51;
            if ((v36 & 1) == 0)
            {
              goto LABEL_10;
            }

            goto LABEL_5;
          }

LABEL_27:

          goto LABEL_28;
        }

        v50 = v36;
        sub_188F0D090(v39);

LABEL_21:
        v41 = v37;
        goto LABEL_22;
      }
    }

    else
    {
      sub_188F0D090(0);
      if (!v37)
      {
        goto LABEL_27;
      }
    }

    v50 = v36;

    goto LABEL_21;
  }

  *(v22 + 16) = 1;
  v23 = 0.0;
LABEL_5:
  v24 = swift_allocObject();
  v24[2] = a2;
  v24[3] = a11;
  v24[4] = a12;
  v24[5] = a6;
  v24[6] = a8;
  v24[7] = v22;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_188F0D5E8;
  *(v25 + 24) = v24;
  swift_beginAccess();
  v26 = *(a8 + 112);

  v27 = swift_isUniquelyReferenced_nonNull_native();
  *(a8 + 112) = v26;
  if ((v27 & 1) == 0)
  {
    v26 = sub_188E4B69C(0, v26[2] + 1, 1, v26);
    *(a8 + 112) = v26;
  }

  v29 = v26[2];
  v28 = v26[3];
  if (v29 >= v28 >> 1)
  {
    v26 = sub_188E4B69C((v28 > 1), v29 + 1, 1, v26);
  }

  v26[2] = v29 + 1;
  v30 = &v26[2 * v29];
  v30[4] = sub_188F0E0CC;
  v30[5] = v25;
  *(a8 + 112) = v26;
  swift_endAccess();
  sub_188AA7584();

LABEL_10:

  os_unfair_lock_unlock(v21 + 4);
  return v23;
}

double sub_188F02800(char a1, void *a2, uint64_t (*a3)(void), double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v86 = a9;
  v87 = a7;
  v90 = a6;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9365C0, &qword_18A650D60);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v85 = &v79[-v18];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9365C8, &qword_18A650D68);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v79[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v79[-v23];
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v79[-v26];
  v28 = UIAnimationDragCoefficient();
  signpost_c2_entryLock_start();
  v89 = a2[2];
  os_unfair_lock_lock(v89 + 4);
  signpost_c2_entryLock_start();
  v88 = swift_allocObject();
  *(v88 + 16) = 0;
  if (*(a2 + *(*a2 + 120)) & 1) != 0 || (a1 & 1) != 0 || (a3())
  {
    v29 = v88;
    *(v88 + 16) = 1;
    v30 = 0.0;
    goto LABEL_5;
  }

  signpost_c2_entryLock_start();
  v40 = *(v90 + 24);
  os_unfair_lock_lock((v40 + 144));
  v41 = *(v40 + 96);
  v108[0] = *(v40 + 80);
  v108[1] = v41;
  v42 = *(v40 + 128);
  v108[2] = *(v40 + 112);
  v108[3] = v42;
  os_unfair_lock_unlock((v40 + 144));
  v43 = *(*a2 + 104);
  swift_beginAccess();
  sub_188EF0608(&v104, a4 / v28);
  swift_endAccess();
  v108[4] = v104;
  v108[5] = v105;
  v108[6] = v106;
  v108[7] = v107;
  v30 = sub_188EB989C(v108);
  os_unfair_lock_lock((v40 + 144));
  v44 = v105;
  *(v40 + 80) = v104;
  *(v40 + 96) = v44;
  v45 = v107;
  *(v40 + 112) = v106;
  *(v40 + 128) = v45;
  os_unfair_lock_unlock((v40 + 144));
  signpost_c2_entryLock_start();
  v80 = sub_188F078BC();
  if ((v80 & 1) == 0)
  {
    v83 = v104;
    v84 = v105;
    v81 = v106;
    v82 = v107;
    swift_beginAccess();
    sub_188A3F29C(a2 + v43, v21, &qword_1EA9365C8, &qword_18A650D68);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      v47 = v87;
      if (EnumCaseMultiPayload != 2)
      {
        v61 = *(v21 + 5);
        v100 = *(v21 + 4);
        v101 = v61;
        v53 = *(v21 + 6);
        v54 = *(v21 + 7);
        goto LABEL_26;
      }

      v59 = v85;
      sub_188A3F704(v21, v85, &qword_1EA9365C0, &qword_18A650D60);
      sub_188EF52DC(&v100);
      sub_188A3F5FC(v59, &qword_1EA9365C0, &qword_18A650D60);
    }

    else
    {
      v47 = v87;
      if (!EnumCaseMultiPayload)
      {
        v52 = *(v21 + 18);
        v100 = *(v21 + 17);
        v101 = v52;
        v53 = *(v21 + 19);
        v54 = *(v21 + 20);
LABEL_26:
        v102 = v53;
        v103 = v54;
        goto LABEL_27;
      }

      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
    }

LABEL_27:
    v29 = v88;
    swift_endAccess();
    goto LABEL_28;
  }

  sub_188A3F29C(a2 + v43, v27, &qword_1EA9365C8, &qword_18A650D68);
  sub_188A3F704(v27, v24, &qword_1EA9365C8, &qword_18A650D68);
  v46 = swift_getEnumCaseMultiPayload();
  if (v46 <= 1)
  {
    v47 = v87;
    v29 = v88;
    v48 = v24[14];
    v83 = v24[13];
    v84 = v48;
    v49 = v24[15];
    v50 = v24[16];
LABEL_23:
    v82 = v50;
    v81 = v49;
    goto LABEL_24;
  }

  v47 = v87;
  v29 = v88;
  if (v46 != 2)
  {
    v60 = v24[1];
    v83 = *v24;
    v84 = v60;
    v49 = v24[2];
    v50 = v24[3];
    goto LABEL_23;
  }

  v55 = v24;
  v56 = v85;
  sub_188A3F704(v55, v85, &qword_1EA9365C0, &qword_18A650D60);
  v57 = v56[10];
  v83 = v56[9];
  v84 = v57;
  v58 = v56[12];
  v81 = v56[11];
  v82 = v58;
  sub_188A3F5FC(v56, &qword_1EA9365C0, &qword_18A650D60);
LABEL_24:
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
LABEL_28:
  swift_beginAccess();
  v62 = 0;
  v63 = *(v47 + 80);
  v99 = 0;
  if ((v63 & 1) != 0 || (v64 = *(v47 + 32), v95 = *(v47 + 16), v96 = v64, v65 = *(v47 + 64), v97 = *(v47 + 48), v98 = v65, v91 = v83, v92 = v84, v93 = v81, v94 = v82, !CACornerRadiiEqualToRadii()))
  {
    v66 = swift_allocObject();
    *(v66 + 16) = v86;
    *(v66 + 24) = a10;
    v67 = v84;
    *(v66 + 32) = v83;
    *(v66 + 48) = v67;
    v68 = v82;
    *(v66 + 64) = v81;
    *(v66 + 80) = v68;
    v69 = v101;
    *(v66 + 96) = v100;
    *(v66 + 112) = v69;
    v70 = v103;
    *(v66 + 128) = v102;
    *(v66 + 144) = v70;
    v71 = swift_allocObject();
    *(v71 + 16) = sub_188F0D848;
    *(v71 + 24) = v66;
    swift_beginAccess();
    v72 = *(a8 + 112);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a8 + 112) = v72;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v72 = sub_188E4B69C(0, v72[2] + 1, 1, v72);
      *(a8 + 112) = v72;
    }

    v75 = v72[2];
    v74 = v72[3];
    if (v75 >= v74 >> 1)
    {
      v72 = sub_188E4B69C((v74 > 1), v75 + 1, 1, v72);
    }

    v72[2] = v75 + 1;
    v76 = &v72[2 * v75];
    v76[4] = sub_188F0E0CC;
    v76[5] = v71;
    *(a8 + 112) = v72;
    swift_endAccess();
    sub_188AA7584();

    v62 = v99;
  }

  swift_beginAccess();
  v77 = v84;
  *(v47 + 16) = v83;
  *(v47 + 32) = v77;
  v78 = v82;
  *(v47 + 48) = v81;
  *(v47 + 64) = v78;
  *(v47 + 80) = v62;
  if ((v80 & 1) == 0)
  {

    goto LABEL_10;
  }

LABEL_5:
  v31 = swift_allocObject();
  v31[2] = a2;
  v31[3] = a11;
  v32 = v90;
  v31[4] = a12;
  v31[5] = v32;
  v31[6] = a8;
  v31[7] = v29;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_188F0D8A4;
  *(v33 + 24) = v31;
  swift_beginAccess();
  v34 = *(a8 + 112);

  v35 = swift_isUniquelyReferenced_nonNull_native();
  *(a8 + 112) = v34;
  if ((v35 & 1) == 0)
  {
    v34 = sub_188E4B69C(0, v34[2] + 1, 1, v34);
    *(a8 + 112) = v34;
  }

  v37 = v34[2];
  v36 = v34[3];
  if (v37 >= v36 >> 1)
  {
    v34 = sub_188E4B69C((v36 > 1), v37 + 1, 1, v34);
  }

  v34[2] = v37 + 1;
  v38 = &v34[2 * v37];
  v38[4] = sub_188F0E0CC;
  v38[5] = v33;
  *(a8 + 112) = v34;
  swift_endAccess();
  sub_188AA7584();

LABEL_10:
  os_unfair_lock_unlock(v89 + 4);
  return v30;
}

double sub_188F02F90(char a1, void *a2, uint64_t (*a3)(void), double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v20 = UIAnimationDragCoefficient();
  signpost_c2_entryLock_start();
  v21 = a2[2];
  os_unfair_lock_lock(v21 + 4);
  signpost_c2_entryLock_start();
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  if (*(a2 + *(*a2 + 120)) & 1) != 0 || (a1 & 1) != 0 || (a3())
  {
    *(v22 + 16) = 1;
    v23 = 0.0;
  }

  else
  {
    v52 = a7;
    v50 = v21;
    signpost_c2_entryLock_start();
    v32 = *(a6 + 24);
    os_unfair_lock_lock((v32 + 32));
    v33 = *(v32 + 24);

    os_unfair_lock_unlock((v32 + 32));
    swift_beginAccess();
    v34 = sub_188D758A4(a4 / v20);
    swift_endAccess();
    v35 = sub_188F491B0(v33, v34);
    v23 = v36;
    MEMORY[0x1EEE9AC00](v35);

    os_unfair_lock_lock((v32 + 32));
    sub_188CD1F3C(v32 + 16);
    os_unfair_lock_unlock((v32 + 32));

    signpost_c2_entryLock_start();
    v37 = sub_188D75B7C();
    if (v37)
    {
      v38 = sub_188D77508();
      v51 = MEMORY[0x1E69E7CC0];
    }

    else
    {

      v51 = sub_188D75E64();
      v38 = v34;
    }

    v39 = v52;
    swift_beginAccess();
    v40 = *(v52 + 16);
    if (v40 && (sub_188BD69E4(v38, v40, 0.0) & 1) != 0)
    {
    }

    else
    {
      v49 = v37;
      v41 = swift_allocObject();
      v41[2] = a9;
      v41[3] = a10;
      v41[4] = v38;
      v41[5] = v51;
      v42 = swift_allocObject();
      *(v42 + 16) = sub_188F0D5A4;
      *(v42 + 24) = v41;
      v48 = v42;
      swift_beginAccess();
      v43 = *(a8 + 112);
      swift_bridgeObjectRetain_n();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a8 + 112) = v43;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v43 = sub_188E4B69C(0, v43[2] + 1, 1, v43);
        *(a8 + 112) = v43;
      }

      v46 = v43[2];
      v45 = v43[3];
      if (v46 >= v45 >> 1)
      {
        v43 = sub_188E4B69C((v45 > 1), v46 + 1, 1, v43);
      }

      v43[2] = v46 + 1;
      v47 = &v43[2 * v46];
      v47[4] = sub_188F0E0CC;
      v47[5] = v48;
      *(a8 + 112) = v43;
      swift_endAccess();
      sub_188AA7584();

      v39 = v52;
      v37 = v49;
    }

    swift_beginAccess();
    *(v39 + 16) = v38;

    if ((v37 & 1) == 0)
    {
      v21 = v50;
      goto LABEL_10;
    }

    v21 = v50;
  }

  v24 = swift_allocObject();
  v24[2] = a2;
  v24[3] = a11;
  v24[4] = a12;
  v24[5] = a6;
  v24[6] = a8;
  v24[7] = v22;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_188F0D924;
  *(v25 + 24) = v24;
  swift_beginAccess();
  v26 = *(a8 + 112);

  v27 = swift_isUniquelyReferenced_nonNull_native();
  *(a8 + 112) = v26;
  if ((v27 & 1) == 0)
  {
    v26 = sub_188E4B69C(0, v26[2] + 1, 1, v26);
    *(a8 + 112) = v26;
  }

  v29 = v26[2];
  v28 = v26[3];
  if (v29 >= v28 >> 1)
  {
    v26 = sub_188E4B69C((v28 > 1), v29 + 1, 1, v26);
  }

  v26[2] = v29 + 1;
  v30 = &v26[2 * v29];
  v30[4] = sub_188F0E0CC;
  v30[5] = v25;
  *(a8 + 112) = v26;
  swift_endAccess();
  sub_188AA7584();

LABEL_10:

  os_unfair_lock_unlock(v21 + 4);
  return v23;
}

double sub_188F034D4(char a1, void *a2, uint64_t (*a3)(void), double a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v20 = UIAnimationDragCoefficient();
  signpost_c2_entryLock_start();
  v21 = a2[2];
  os_unfair_lock_lock(v21 + 4);
  signpost_c2_entryLock_start();
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  if ((*(a2 + *(*a2 + 120)) & 1) == 0 && (a1 & 1) == 0 && (a3() & 1) == 0)
  {
    v68 = a9;
    v75 = v21;
    signpost_c2_entryLock_start();
    v32 = *(a6 + 24);
    os_unfair_lock_lock((v32 + 96));
    v33 = *(v32 + 56);
    v72 = *(v32 + 64);
    v71 = *(v32 + 72);
    v70 = *(v32 + 80);
    sub_188F0B550(v33, v72, v71, v70);
    os_unfair_lock_unlock((v32 + 96));
    swift_beginAccess();
    sub_188EF082C(&v87, a4 / v20);
    v85 = *v88;
    v84 = v87;
    v82 = v88[20];
    v34 = *&v88[16];
    v35 = swift_endAccess();
    v91 = v87;
    *v92 = *v88;
    *&v92[13] = *&v88[13];
    v74 = a6;
    v73 = v33;
    if (v87)
    {
      if (v33)
      {
        v35 = sub_189090CE0(v33, v87, 0.00000001);
LABEL_18:
        v23 = v36;
        goto LABEL_19;
      }

      v37 = v87;
    }

    else
    {
      if (!v33)
      {
        v23 = 0.0;
LABEL_19:
        v89 = v87;
        *v90 = *v88;
        *&v90[13] = *&v88[13];
        MEMORY[0x1EEE9AC00](v35);
        sub_188F0D40C(&v91, v86);
        os_unfair_lock_lock((v32 + 96));
        sub_188F0D960((v32 + 16));
        os_unfair_lock_unlock((v32 + 96));
        sub_188F0D344(&v87);
        signpost_c2_entryLock_start();
        v69 = sub_188F07B8C();
        if (v69)
        {
          sub_188EF9BF4(&v89);
          v83 = 0;
          v81 = 0;
          v80 = 0;
          v79 = 0;
          v78 = 0;
          v85 = *v90;
          v84 = v89;
          v38 = *&v90[16] | (v90[20] << 32);
        }

        else
        {
          v38 = v34 | (v82 << 32);
          sub_188F0D40C(&v91, &v89);
          sub_188F00408(&v89);
          v81 = *(&v89 + 1);
          v83 = v89;
          v80 = *v90;
          v79 = *&v90[8];
          v78 = *&v90[16] | (v90[20] << 32);
        }

        swift_beginAccess();
        v39 = a7[2];
        v40 = a7[3];
        v76 = a7[5];
        v41 = HIDWORD(v38);
        if (v39)
        {
          v67 = a7[3];
          v77 = HIDWORD(v38);
          if (v39 == 1)
          {
            v42 = a7[4];
            sub_188F0B550(v84, *(&v84 + 1), v85, *(&v85 + 1));
            sub_188F0B550(v84, *(&v84 + 1), v85, *(&v85 + 1));
            sub_188F0D3FC(1, v67, v42, v76);
            sub_188F0D3FC(v84, *(&v84 + 1), v85, *(&v85 + 1));
            goto LABEL_34;
          }

          v66 = a7[4];
          if (!v84)
          {
            sub_188F0B550(0, *(&v84 + 1), v85, *(&v85 + 1));
            sub_188F0D3EC(v39, v40, v66, v76);
            sub_188F0B59C(v39, v40, v66, v76);
            goto LABEL_34;
          }

          v64 = sub_189090578(v39, v84);
          sub_188F0B550(v84, *(&v84 + 1), v85, *(&v85 + 1));
          sub_188F0D3EC(v39, v40, v66, v76);
          sub_188F0B59C(v39, v40, v66, v76);
          if (!v64)
          {
LABEL_34:
            v50 = swift_allocObject();
            v51 = v38;
            v63 = v38;
            v52 = v50;
            *(v50 + 16) = v68;
            *(v50 + 24) = a10;
            *(v50 + 32) = v84;
            *(v50 + 48) = v85;
            *(v50 + 68) = v77;
            *(v50 + 64) = v51;
            *(v50 + 72) = v83;
            *(v50 + 80) = v81;
            *(v50 + 88) = v80;
            *(v50 + 96) = v79;
            *(v50 + 108) = BYTE4(v78);
            *(v50 + 104) = v78;
            v53 = swift_allocObject();
            *(v53 + 16) = sub_188F0D97C;
            *(v53 + 24) = v52;
            v65 = v53;
            swift_beginAccess();
            v54 = *(a8 + 112);
            v49 = v63;
            sub_188F0B550(v84, *(&v84 + 1), v85, *(&v85 + 1));

            sub_188F0B550(v83, v81, v80, v79);

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(a8 + 112) = v54;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v54 = sub_188E4B69C(0, v54[2] + 1, 1, v54);
              *(a8 + 112) = v54;
            }

            v41 = v54[2];
            v56 = v54[3];
            if (v41 >= v56 >> 1)
            {
              v54 = sub_188E4B69C((v56 > 1), v41 + 1, 1, v54);
            }

            v54[2] = v41 + 1;
            v57 = &v54[2 * v41];
            v57[4] = sub_188F0E0CC;
            v57[5] = v65;
            *(a8 + 112) = v54;
            swift_endAccess();
            sub_188AA7584();
            sub_188F0B59C(v84, *(&v84 + 1), v85, *(&v85 + 1));
            sub_188F0B59C(v83, v81, v80, v79);

            sub_188F0D344(&v87);
            v21 = v75;
            a6 = v74;
            v45 = v72;
            v46 = v71;
            v47 = v70;
            v48 = v69;
            LOBYTE(v41) = v77;
LABEL_39:
            sub_188F0B59C(v73, v45, v46, v47);
            swift_beginAccess();
            v58 = a7 + 6;
            v59 = *(v58 - 4);
            v60 = *(v58 - 3);
            v61 = *(v58 - 2);
            v62 = *(v58 - 1);
            *(v58 - 2) = v84;
            *(v58 - 1) = v85;
            *v58 = v49;
            *(v58 + 4) = v41;
            sub_188F0D3FC(v59, v60, v61, v62);
            if ((v48 & 1) == 0)
            {
              goto LABEL_10;
            }

            goto LABEL_5;
          }

          v44 = v38;
          sub_188F0B59C(v84, *(&v84 + 1), v85, *(&v85 + 1));
          LOBYTE(v41) = BYTE4(v38);
        }

        else
        {
          if (v84)
          {
            v77 = HIDWORD(v38);
            v43 = a7[4];
            sub_188F0B550(v84, *(&v84 + 1), v85, *(&v85 + 1));
            sub_188F0D3EC(0, v40, v43, v76);
            goto LABEL_34;
          }

          v44 = v38;
          sub_188F0D3EC(0, v40, a7[4], v76);
        }

        sub_188F0D344(&v87);
        sub_188F0B59C(v83, v81, v80, v79);
        v21 = v75;
        v45 = v72;
        v46 = v71;
        v47 = v70;
        v48 = v69;
        v49 = v44;
        goto LABEL_39;
      }

      v37 = v33;
    }

    v36 = sub_189090C68(v37, 0.00000001);
    goto LABEL_18;
  }

  *(v22 + 16) = 1;
  v23 = 0.0;
LABEL_5:
  v24 = swift_allocObject();
  v24[2] = a2;
  v24[3] = a11;
  v24[4] = a12;
  v24[5] = a6;
  v24[6] = a8;
  v24[7] = v22;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_188F0D98C;
  *(v25 + 24) = v24;
  swift_beginAccess();
  v26 = *(a8 + 112);

  v27 = swift_isUniquelyReferenced_nonNull_native();
  *(a8 + 112) = v26;
  if ((v27 & 1) == 0)
  {
    v26 = sub_188E4B69C(0, v26[2] + 1, 1, v26);
    *(a8 + 112) = v26;
  }

  v29 = v26[2];
  v28 = v26[3];
  if (v29 >= v28 >> 1)
  {
    v26 = sub_188E4B69C((v28 > 1), v29 + 1, 1, v26);
  }

  v26[2] = v29 + 1;
  v30 = &v26[2 * v29];
  v30[4] = sub_188F0E0CC;
  v30[5] = v25;
  *(a8 + 112) = v26;
  swift_endAccess();
  sub_188AA7584();

LABEL_10:

  os_unfair_lock_unlock(v21 + 4);
  return v23;
}

double sub_188F03FFC(char a1, void *a2, uint64_t (*a3)(void), double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v56 = a9;
  v57 = a7;
  v59 = a6;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936658, &qword_18A650DE0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v54[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936660, &qword_18A650DE8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v54[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v54[-v24];
  v26 = UIAnimationDragCoefficient();
  signpost_c2_entryLock_start();
  v58 = a2[2];
  os_unfair_lock_lock(v58 + 4);
  signpost_c2_entryLock_start();
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  if (*(a2 + *(*a2 + 120)) & 1) != 0 || (a1 & 1) != 0 || (a3())
  {
    *(v27 + 16) = 1;
    v28 = 0.0;
LABEL_5:
    v29 = swift_allocObject();
    v29[2] = a2;
    v29[3] = a11;
    v30 = v59;
    v29[4] = a12;
    v29[5] = v30;
    v29[6] = a8;
    v29[7] = v27;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_188F0D9C4;
    *(v31 + 24) = v29;
    swift_beginAccess();
    v32 = *(a8 + 112);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a8 + 112) = v32;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v32 = sub_188E4B69C(0, v32[2] + 1, 1, v32);
      *(a8 + 112) = v32;
    }

    v35 = v32[2];
    v34 = v32[3];
    if (v35 >= v34 >> 1)
    {
      v32 = sub_188E4B69C((v34 > 1), v35 + 1, 1, v32);
    }

    v32[2] = v35 + 1;
    v36 = &v32[2 * v35];
    v36[4] = sub_188F0E0CC;
    v36[5] = v31;
    *(a8 + 112) = v32;
    swift_endAccess();
    sub_188AA7584();

    goto LABEL_10;
  }

  signpost_c2_entryLock_start();
  v38 = *(v59 + 24);
  os_unfair_lock_lock((v38 + 32));
  v39 = *(v38 + 24);
  os_unfair_lock_unlock((v38 + 32));
  v40 = *(*a2 + 104);
  swift_beginAccess();
  v41 = sub_188EF10E0(a4 / v26);
  swift_endAccess();
  os_unfair_lock_lock((v38 + 32));
  *(v38 + 24) = v41;
  os_unfair_lock_unlock((v38 + 32));
  signpost_c2_entryLock_start();
  v55 = sub_188AB3838();
  if (!v55)
  {
    v45 = sub_188AB715C();
    v44 = v41;
LABEL_17:
    v43 = v57;
    goto LABEL_18;
  }

  sub_188A3F29C(a2 + v40, v25, &qword_1EA936660, &qword_18A650DE8);
  sub_188A3F704(v25, v22, &qword_1EA936660, &qword_18A650DE8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_188A3F704(v22, v19, &qword_1EA936658, &qword_18A650DE0);
      v44 = v19[4];
      sub_188A3F5FC(v19, &qword_1EA936658, &qword_18A650DE0);
    }

    else
    {
      v44 = *v22;
    }

    v45 = 0.0;
    goto LABEL_17;
  }

  v43 = v57;
  if (EnumCaseMultiPayload)
  {
    v44 = v22[5];
  }

  else
  {
    v44 = v22[19];
  }

  v45 = 0.0;
LABEL_18:
  v46 = vabdd_f64(v41, v39);
  swift_beginAccess();
  if ((*(v43 + 24) & 1) != 0 || *(v43 + 16) != v44)
  {
    v47 = swift_allocObject();
    *(v47 + 16) = v56;
    *(v47 + 24) = a10;
    *(v47 + 32) = v44;
    *(v47 + 40) = v45;
    v48 = swift_allocObject();
    *(v48 + 16) = sub_188F0E05C;
    *(v48 + 24) = v47;
    swift_beginAccess();
    v49 = *(a8 + 112);

    v50 = swift_isUniquelyReferenced_nonNull_native();
    *(a8 + 112) = v49;
    if ((v50 & 1) == 0)
    {
      v49 = sub_188E4B69C(0, v49[2] + 1, 1, v49);
      *(a8 + 112) = v49;
    }

    v52 = v49[2];
    v51 = v49[3];
    if (v52 >= v51 >> 1)
    {
      v49 = sub_188E4B69C((v51 > 1), v52 + 1, 1, v49);
    }

    v49[2] = v52 + 1;
    v53 = &v49[2 * v52];
    v53[4] = sub_188F0E0CC;
    v53[5] = v48;
    *(a8 + 112) = v49;
    swift_endAccess();
    sub_188AA7584();
  }

  v28 = v46 / 0.001;
  swift_beginAccess();
  *(v43 + 16) = v44;
  *(v43 + 24) = 0;
  if (v55)
  {
    goto LABEL_5;
  }

LABEL_10:

  os_unfair_lock_unlock(v58 + 4);
  return v28;
}

double sub_188F045E8(char a1, void *a2, uint64_t (*a3)(void), double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v61 = a9;
  v62 = a7;
  v64 = a6;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936688, &qword_18A650E08);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v59[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936690, &qword_18A650E10);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v59[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v59[-v24];
  v26 = UIAnimationDragCoefficient();
  signpost_c2_entryLock_start();
  v63 = a2[2];
  os_unfair_lock_lock(v63 + 4);
  signpost_c2_entryLock_start();
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  if (*(a2 + *(*a2 + 120)) & 1) != 0 || (a1 & 1) != 0 || (a3())
  {
    *(v27 + 16) = 1;
    v28 = 0.0;
LABEL_5:
    v29 = swift_allocObject();
    v29[2] = a2;
    v29[3] = a11;
    v30 = v64;
    v29[4] = a12;
    v29[5] = v30;
    v29[6] = a8;
    v29[7] = v27;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_188F0D9FC;
    *(v31 + 24) = v29;
    swift_beginAccess();
    v32 = *(a8 + 112);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a8 + 112) = v32;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v32 = sub_188E4B69C(0, v32[2] + 1, 1, v32);
      *(a8 + 112) = v32;
    }

    v35 = v32[2];
    v34 = v32[3];
    if (v35 >= v34 >> 1)
    {
      v32 = sub_188E4B69C((v34 > 1), v35 + 1, 1, v32);
    }

    v32[2] = v35 + 1;
    v36 = &v32[2 * v35];
    v36[4] = sub_188F0E0CC;
    v36[5] = v31;
    *(a8 + 112) = v32;
    swift_endAccess();
    sub_188AA7584();

    goto LABEL_10;
  }

  signpost_c2_entryLock_start();
  v38 = *(v64 + 24);
  os_unfair_lock_lock((v38 + 48));
  v39 = *(v38 + 32);
  v40 = *(v38 + 40);
  os_unfair_lock_unlock((v38 + 48));
  v41 = *(*a2 + 104);
  swift_beginAccess();
  v42 = sub_188EF13C8(a4 / v26);
  v44 = v43;
  swift_endAccess();
  v45 = vabdd_f64(v42, v39) / 0.001;
  v46 = vabdd_f64(v44, v40);
  if (v45 > v46 / 0.001)
  {
    v28 = v45;
  }

  else
  {
    v28 = v46 / 0.001;
  }

  os_unfair_lock_lock((v38 + 48));
  *(v38 + 32) = v42;
  *(v38 + 40) = v44;
  os_unfair_lock_unlock((v38 + 48));
  signpost_c2_entryLock_start();
  v60 = sub_188D1FDE0();
  if ((v60 & 1) == 0)
  {
    v49 = sub_188F006F4();
    v51 = v50;
LABEL_25:
    v48 = v62;
    goto LABEL_26;
  }

  sub_188A3F29C(a2 + v41, v25, &qword_1EA936690, &qword_18A650E10);
  sub_188A3F704(v25, v22, &qword_1EA936690, &qword_18A650E10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_188A3F704(v22, v19, &qword_1EA936688, &qword_18A650E08);
      v42 = v19[6];
      v44 = v19[7];
      sub_188A3F5FC(v19, &qword_1EA936688, &qword_18A650E08);
    }

    else
    {
      v42 = *v22;
      v44 = v22[1];
    }

    v49 = 0.0;
    v51 = 0;
    goto LABEL_25;
  }

  v48 = v62;
  if (EnumCaseMultiPayload)
  {
    v42 = v22[8];
    v44 = v22[9];
  }

  else
  {
    v42 = v22[20];
    v44 = v22[21];
  }

  v49 = 0.0;
  v51 = 0;
LABEL_26:
  swift_beginAccess();
  if ((*(v48 + 32) & 1) != 0 || *(v48 + 16) != v42 || *(v48 + 24) != v44)
  {
    v52 = swift_allocObject();
    *(v52 + 16) = v61;
    *(v52 + 24) = a10;
    *(v52 + 32) = v42;
    *(v52 + 40) = v44;
    *(v52 + 48) = v49;
    *(v52 + 56) = v51;
    v53 = swift_allocObject();
    *(v53 + 16) = sub_188F0D9F8;
    *(v53 + 24) = v52;
    swift_beginAccess();
    v54 = *(a8 + 112);

    v55 = swift_isUniquelyReferenced_nonNull_native();
    *(a8 + 112) = v54;
    if ((v55 & 1) == 0)
    {
      v54 = sub_188E4B69C(0, v54[2] + 1, 1, v54);
      *(a8 + 112) = v54;
    }

    v57 = v54[2];
    v56 = v54[3];
    if (v57 >= v56 >> 1)
    {
      v54 = sub_188E4B69C((v56 > 1), v57 + 1, 1, v54);
    }

    v54[2] = v57 + 1;
    v58 = &v54[2 * v57];
    v58[4] = sub_188F0E0CC;
    v58[5] = v53;
    *(a8 + 112) = v54;
    swift_endAccess();
    sub_188AA7584();
  }

  swift_beginAccess();
  *(v48 + 16) = v42;
  *(v48 + 24) = v44;
  *(v48 + 32) = 0;
  if (v60)
  {
    goto LABEL_5;
  }

LABEL_10:

  os_unfair_lock_unlock(v63 + 4);
  return v28;
}

double sub_188F04C04(char a1, void *a2, uint64_t (*a3)(void), double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v83 = a9;
  v84 = a7;
  v88 = a6;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9366B8, &qword_18A650E30);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v79[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9366C0, &qword_18A650E38);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v79[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v79[-v24];
  v26 = UIAnimationDragCoefficient();
  signpost_c2_entryLock_start();
  v87 = a2[2];
  os_unfair_lock_lock(v87 + 4);
  signpost_c2_entryLock_start();
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  if (*(a2 + *(*a2 + 120)) & 1) != 0 || (a1 & 1) != 0 || (a3())
  {
    *(v27 + 16) = 1;
    v28 = 0.0;
LABEL_5:
    v29 = swift_allocObject();
    v29[2] = a2;
    v29[3] = a11;
    v30 = v88;
    v29[4] = a12;
    v29[5] = v30;
    v29[6] = a8;
    v29[7] = v27;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_188F0DAE4;
    *(v31 + 24) = v29;
    swift_beginAccess();
    v32 = *(a8 + 112);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a8 + 112) = v32;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v32 = sub_188E4B69C(0, v32[2] + 1, 1, v32);
      *(a8 + 112) = v32;
    }

    v35 = v32[2];
    v34 = v32[3];
    if (v35 >= v34 >> 1)
    {
      v32 = sub_188E4B69C((v34 > 1), v35 + 1, 1, v32);
    }

    v32[2] = v35 + 1;
    v36 = &v32[2 * v35];
    v36[4] = sub_188F0E0CC;
    v36[5] = v31;
    *(a8 + 112) = v32;
    swift_endAccess();
    sub_188AA7584();

    goto LABEL_10;
  }

  v38 = a4 / v26;
  signpost_c2_entryLock_start();
  v39 = *(v88 + 24);
  os_unfair_lock_lock((v39 + 80));
  v40 = *(v39 + 48);
  v41 = *(v39 + 56);
  v42 = *(v39 + 64);
  v43 = *(v39 + 72);
  os_unfair_lock_unlock((v39 + 80));
  v44 = *(*a2 + 104);
  swift_beginAccess();
  v45.f64[0] = sub_188C53BC8(v38);
  v85 = v45;
  v82 = v46;
  v86 = v47;
  v81 = v48;
  swift_endAccess();
  v49 = vabdd_f64(v85.f64[0], v40) / 0.01;
  v50 = vabdd_f64(*&v82, v41) / 0.01;
  v51 = vabdd_f64(v86.f64[0], v42) / 0.01;
  v52 = vabdd_f64(*&v81, v43);
  if (v49 <= v50)
  {
    v49 = v50;
  }

  if (v49 <= v51)
  {
    v49 = v51;
  }

  if (v49 > v52 / 0.01)
  {
    v28 = v49;
  }

  else
  {
    v28 = v52 / 0.01;
  }

  os_unfair_lock_lock((v39 + 80));
  v53 = v82;
  *(v39 + 48) = v85.f64[0];
  *(v39 + 56) = v53;
  v54 = v81;
  *(v39 + 64) = v86.f64[0];
  *(v39 + 72) = v54;
  os_unfair_lock_unlock((v39 + 80));
  signpost_c2_entryLock_start();
  v80 = sub_188C53E60();
  if ((v80 & 1) == 0)
  {
    v59 = sub_188C540E0();
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v66.f64[0] = v86.f64[0];
    *&v66.f64[1] = v81;
    v86 = v66;
    v66.f64[0] = v85.f64[0];
    *&v66.f64[1] = v82;
    v85 = v66;
LABEL_29:
    v56 = v84;
    goto LABEL_30;
  }

  sub_188A3F29C(a2 + v44, v25, &qword_1EA9366C0, &qword_18A650E38);
  sub_188A3F704(v25, v22, &qword_1EA9366C0, &qword_18A650E38);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_188A3F704(v22, v19, &qword_1EA9366B8, &qword_18A650E30);
      v67 = v19[6];
      v85 = v19[5];
      v86 = v67;
      sub_188A3F5FC(v19, &qword_1EA9366B8, &qword_18A650E30);
    }

    else
    {
      v68 = v22[1];
      v85 = *v22;
      v86 = v68;
    }

    v65 = 0;
    v63 = 0;
    v61 = 0;
    v59 = 0.0;
    goto LABEL_29;
  }

  v56 = v84;
  if (EnumCaseMultiPayload)
  {
    v57 = v22[7];
    v58 = v22[8];
  }

  else
  {
    v57 = v22[11];
    v58 = v22[12];
  }

  v86 = v58;
  v85 = v57;
  v65 = 0;
  v63 = 0;
  v61 = 0;
  v59 = 0.0;
LABEL_30:
  swift_beginAccess();
  if ((*(v56 + 48) & 1) != 0 || (v78 = vmovn_s64(vceqq_f64(*(v56 + 16), v85)), (v78.i8[0] & 1) == 0) || (v78.i8[4] & 1) == 0 || *(v56 + 32) != v86.f64[0] || *(v56 + 40) != v86.f64[1])
  {
    v69 = swift_allocObject();
    *(v69 + 16) = v83;
    *(v69 + 24) = a10;
    v70 = v86;
    *(v69 + 32) = v85;
    *(v69 + 48) = v70;
    *(v69 + 64) = v59;
    *(v69 + 72) = v61;
    *(v69 + 80) = v63;
    *(v69 + 88) = v65;
    v71 = swift_allocObject();
    *(v71 + 16) = sub_188F0DA98;
    *(v71 + 24) = v69;
    swift_beginAccess();
    v72 = *(a8 + 112);

    v73 = swift_isUniquelyReferenced_nonNull_native();
    *(a8 + 112) = v72;
    if ((v73 & 1) == 0)
    {
      v72 = sub_188E4B69C(0, v72[2] + 1, 1, v72);
      *(a8 + 112) = v72;
    }

    v75 = v72[2];
    v74 = v72[3];
    if (v75 >= v74 >> 1)
    {
      v72 = sub_188E4B69C((v74 > 1), v75 + 1, 1, v72);
    }

    v72[2] = v75 + 1;
    v76 = &v72[2 * v75];
    v76[4] = sub_188F0E0CC;
    v76[5] = v71;
    *(a8 + 112) = v72;
    swift_endAccess();
    sub_188AA7584();
  }

  swift_beginAccess();
  v77 = v86;
  *(v56 + 16) = v85;
  *(v56 + 32) = v77;
  *(v56 + 48) = 0;
  if (v80)
  {
    goto LABEL_5;
  }

LABEL_10:

  os_unfair_lock_unlock(v87 + 4);
  return v28;
}

double sub_188F0532C(char a1, void *a2, uint64_t (*a3)(void), double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v57 = a9;
  v58 = a7;
  v60 = a6;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9366E8, &qword_18A650E58);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v55[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9366F0, &qword_18A650E60);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v55[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v55[-v24];
  v26 = UIAnimationDragCoefficient();
  signpost_c2_entryLock_start();
  v59 = a2[2];
  os_unfair_lock_lock(v59 + 4);
  signpost_c2_entryLock_start();
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  if (*(a2 + *(*a2 + 120)) & 1) != 0 || (a1 & 1) != 0 || (a3())
  {
    *(v27 + 16) = 1;
    v28 = 0.0;
LABEL_5:
    v29 = swift_allocObject();
    v29[2] = a2;
    v29[3] = a11;
    v30 = v60;
    v29[4] = a12;
    v29[5] = v30;
    v29[6] = a8;
    v29[7] = v27;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_188F0DBAC;
    *(v31 + 24) = v29;
    swift_beginAccess();
    v32 = *(a8 + 112);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a8 + 112) = v32;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v32 = sub_188E4B69C(0, v32[2] + 1, 1, v32);
      *(a8 + 112) = v32;
    }

    v35 = v32[2];
    v34 = v32[3];
    if (v35 >= v34 >> 1)
    {
      v32 = sub_188E4B69C((v34 > 1), v35 + 1, 1, v32);
    }

    v32[2] = v35 + 1;
    v36 = &v32[2 * v35];
    v36[4] = sub_188F0E0CC;
    v36[5] = v31;
    *(a8 + 112) = v32;
    swift_endAccess();
    sub_188AA7584();

    goto LABEL_10;
  }

  signpost_c2_entryLock_start();
  v38 = *(v60 + 24);
  os_unfair_lock_lock((v38 + 32));
  v39 = *(v38 + 24);
  os_unfair_lock_unlock((v38 + 32));
  v40 = *(*a2 + 104);
  swift_beginAccess();
  v41 = sub_188EF1740(a4 / v26);
  swift_endAccess();
  if (qword_1EA931200 != -1)
  {
    swift_once();
  }

  v42 = *&qword_1EA994F30;
  os_unfair_lock_lock((v38 + 32));
  *(v38 + 24) = v41;
  os_unfair_lock_unlock((v38 + 32));
  signpost_c2_entryLock_start();
  v56 = sub_188AAAC5C();
  if (!v56)
  {
    v46 = sub_188AAAF70();
    v45 = v41;
LABEL_19:
    v44 = v58;
    goto LABEL_20;
  }

  sub_188A3F29C(a2 + v40, v25, &qword_1EA9366F0, &qword_18A650E60);
  sub_188A3F704(v25, v22, &qword_1EA9366F0, &qword_18A650E60);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_188A3F704(v22, v19, &qword_1EA9366E8, &qword_18A650E58);
      v45 = v19[4];
      sub_188A3F5FC(v19, &qword_1EA9366E8, &qword_18A650E58);
    }

    else
    {
      v45 = *v22;
    }

    v46 = 0.0;
    goto LABEL_19;
  }

  v44 = v58;
  if (EnumCaseMultiPayload)
  {
    v45 = v22[5];
  }

  else
  {
    v45 = v22[19];
  }

  v46 = 0.0;
LABEL_20:
  v47 = vabdd_f64(v41, v39);
  swift_beginAccess();
  if ((*(v44 + 24) & 1) != 0 || *(v44 + 16) != v45)
  {
    v48 = swift_allocObject();
    *(v48 + 16) = v57;
    *(v48 + 24) = a10;
    *(v48 + 32) = v45;
    *(v48 + 40) = v46;
    v49 = swift_allocObject();
    *(v49 + 16) = sub_188F0DB64;
    *(v49 + 24) = v48;
    swift_beginAccess();
    v50 = *(a8 + 112);

    v51 = swift_isUniquelyReferenced_nonNull_native();
    *(a8 + 112) = v50;
    if ((v51 & 1) == 0)
    {
      v50 = sub_188E4B69C(0, v50[2] + 1, 1, v50);
      *(a8 + 112) = v50;
    }

    v53 = v50[2];
    v52 = v50[3];
    if (v53 >= v52 >> 1)
    {
      v50 = sub_188E4B69C((v52 > 1), v53 + 1, 1, v50);
    }

    v50[2] = v53 + 1;
    v54 = &v50[2 * v53];
    v54[4] = sub_188F0E0CC;
    v54[5] = v49;
    *(a8 + 112) = v50;
    swift_endAccess();
    sub_188AA7584();
  }

  v28 = v47 / v42;
  swift_beginAccess();
  *(v44 + 16) = v45;
  *(v44 + 24) = 0;
  if (v56)
  {
    goto LABEL_5;
  }

LABEL_10:

  os_unfair_lock_unlock(v59 + 4);
  return v28;
}

double sub_188F05950(char a1, void *a2, uint64_t (*a3)(void), double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v76 = a9;
  v77 = a7;
  v81 = a6;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936718, &qword_18A650E80);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v72[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936720, &qword_18A650E88);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v72[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v72[-v24];
  v26 = UIAnimationDragCoefficient();
  signpost_c2_entryLock_start();
  v80 = a2[2];
  os_unfair_lock_lock(v80 + 4);
  signpost_c2_entryLock_start();
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  if (*(a2 + *(*a2 + 120)) & 1) != 0 || (a1 & 1) != 0 || (a3())
  {
    *(v27 + 16) = 1;
    v28 = 0.0;
LABEL_5:
    v29 = swift_allocObject();
    v29[2] = a2;
    v29[3] = a11;
    v30 = v81;
    v29[4] = a12;
    v29[5] = v30;
    v29[6] = a8;
    v29[7] = v27;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_188F0DAE4;
    *(v31 + 24) = v29;
    swift_beginAccess();
    v32 = *(a8 + 112);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a8 + 112) = v32;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v32 = sub_188E4B69C(0, v32[2] + 1, 1, v32);
      *(a8 + 112) = v32;
    }

    v35 = v32[2];
    v34 = v32[3];
    if (v35 >= v34 >> 1)
    {
      v32 = sub_188E4B69C((v34 > 1), v35 + 1, 1, v32);
    }

    v32[2] = v35 + 1;
    v36 = &v32[2 * v35];
    v36[4] = sub_188F0E0CC;
    v36[5] = v31;
    *(a8 + 112) = v32;
    swift_endAccess();
    sub_188AA7584();

    goto LABEL_10;
  }

  v38 = a4 / v26;
  signpost_c2_entryLock_start();
  v39 = *(v81 + 24);
  os_unfair_lock_lock((v39 + 80));
  v40 = *(v39 + 48);
  v41 = *(v39 + 56);
  v42 = *(v39 + 64);
  v43 = *(v39 + 72);
  os_unfair_lock_unlock((v39 + 80));
  v44 = *(*a2 + 104);
  swift_beginAccess();
  *&v45 = sub_188EF1A28(v38);
  v78 = v45;
  v75 = v46;
  v79 = v47;
  v74 = v48;
  swift_endAccess();
  v28 = sub_18916F738(v40, v41, v42, v43, *&v78, *&v75, *&v79, *&v74);
  os_unfair_lock_lock((v39 + 80));
  *(v39 + 48) = v78;
  *(v39 + 56) = v75;
  *(v39 + 64) = v79;
  *(v39 + 72) = v74;
  os_unfair_lock_unlock((v39 + 80));
  signpost_c2_entryLock_start();
  v73 = sub_188AAA5C0();
  if ((v73 & 1) == 0)
  {
    v53 = sub_188F008A8();
    v55 = v54;
    v57 = v56;
    v59 = v58;
    *&v60 = v79;
    *(&v60 + 1) = v74;
    v79 = v60;
    *&v60 = v78;
    *(&v60 + 1) = v75;
    v78 = v60;
LABEL_22:
    v50 = v77;
    goto LABEL_23;
  }

  sub_188A3F29C(a2 + v44, v25, &qword_1EA936720, &qword_18A650E88);
  sub_188A3F704(v25, v22, &qword_1EA936720, &qword_18A650E88);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_188A3F704(v22, v19, &qword_1EA936718, &qword_18A650E80);
      v61 = *(v19 + 6);
      v78 = *(v19 + 5);
      v79 = v61;
      sub_188A3F5FC(v19, &qword_1EA936718, &qword_18A650E80);
    }

    else
    {
      v62 = v22[1];
      v78 = *v22;
      v79 = v62;
    }

    v53 = 0.0;
    v55 = 0;
    v57 = 0;
    v59 = 0;
    goto LABEL_22;
  }

  v50 = v77;
  if (EnumCaseMultiPayload)
  {
    v51 = v22[7];
    v52 = v22[8];
  }

  else
  {
    v51 = v22[11];
    v52 = v22[12];
  }

  v79 = v52;
  v78 = v51;
  v53 = 0.0;
  v55 = 0;
  v57 = 0;
  v59 = 0;
LABEL_23:
  swift_beginAccess();
  if ((*(v50 + 48) & 1) != 0 || (*&v82.origin.x = v78, *&v82.size.width = v79, v82.origin.y = *(&v78 + 1), v82.size.height = *(&v79 + 1), !CGRectEqualToRect(*(v50 + 16), v82)))
  {
    v63 = swift_allocObject();
    *(v63 + 16) = v76;
    *(v63 + 24) = a10;
    v64 = v79;
    *(v63 + 32) = v78;
    *(v63 + 48) = v64;
    *(v63 + 64) = v53;
    *(v63 + 72) = v55;
    *(v63 + 80) = v57;
    *(v63 + 88) = v59;
    v65 = swift_allocObject();
    *(v65 + 16) = sub_188F0E068;
    *(v65 + 24) = v63;
    swift_beginAccess();
    v66 = *(a8 + 112);

    v67 = swift_isUniquelyReferenced_nonNull_native();
    *(a8 + 112) = v66;
    if ((v67 & 1) == 0)
    {
      v66 = sub_188E4B69C(0, v66[2] + 1, 1, v66);
      *(a8 + 112) = v66;
    }

    v69 = v66[2];
    v68 = v66[3];
    if (v69 >= v68 >> 1)
    {
      v66 = sub_188E4B69C((v68 > 1), v69 + 1, 1, v66);
    }

    v66[2] = v69 + 1;
    v70 = &v66[2 * v69];
    v70[4] = sub_188F0E0CC;
    v70[5] = v65;
    *(a8 + 112) = v66;
    swift_endAccess();
    sub_188AA7584();
  }

  swift_beginAccess();
  v71 = v79;
  *(v50 + 16) = v78;
  *(v50 + 32) = v71;
  *(v50 + 48) = 0;
  if (v73)
  {
    goto LABEL_5;
  }

LABEL_10:

  os_unfair_lock_unlock(v80 + 4);
  return v28;
}

double sub_188F0602C(char a1, void *a2, uint64_t (*a3)(void), double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v82 = a9;
  v83 = a7;
  v87 = a6;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936748, &qword_18A650EA8);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v78[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936750, &qword_18A650EB0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v78[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v78[-v24];
  v26 = UIAnimationDragCoefficient();
  signpost_c2_entryLock_start();
  v86 = a2[2];
  os_unfair_lock_lock(v86 + 4);
  signpost_c2_entryLock_start();
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  if (*(a2 + *(*a2 + 120)) & 1) != 0 || (a1 & 1) != 0 || (a3())
  {
    *(v27 + 16) = 1;
    v28 = 0.0;
LABEL_5:
    v29 = swift_allocObject();
    v29[2] = a2;
    v29[3] = a11;
    v30 = v87;
    v29[4] = a12;
    v29[5] = v30;
    v29[6] = a8;
    v29[7] = v27;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_188F0DC18;
    *(v31 + 24) = v29;
    swift_beginAccess();
    v32 = *(a8 + 112);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a8 + 112) = v32;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v32 = sub_188E4B69C(0, v32[2] + 1, 1, v32);
      *(a8 + 112) = v32;
    }

    v35 = v32[2];
    v34 = v32[3];
    if (v35 >= v34 >> 1)
    {
      v32 = sub_188E4B69C((v34 > 1), v35 + 1, 1, v32);
    }

    v32[2] = v35 + 1;
    v36 = &v32[2 * v35];
    v36[4] = sub_188F0E0CC;
    v36[5] = v31;
    *(a8 + 112) = v32;
    swift_endAccess();
    sub_188AA7584();

    goto LABEL_10;
  }

  v38 = a4 / v26;
  signpost_c2_entryLock_start();
  v39 = *(v87 + 24);
  os_unfair_lock_lock((v39 + 80));
  v40 = *(v39 + 48);
  v41 = *(v39 + 56);
  v42 = *(v39 + 64);
  v43 = *(v39 + 72);
  os_unfair_lock_unlock((v39 + 80));
  v44 = *(*a2 + 104);
  swift_beginAccess();
  *&v45 = sub_188EF1CC0(v38);
  v84 = v45;
  v81 = v46;
  v85 = v47;
  v80 = v48;
  swift_endAccess();
  v49 = vabdd_f64(*&v84, v40) / 0.001;
  v50 = vabdd_f64(*&v81, v41) / 0.001;
  v51 = vabdd_f64(*&v85, v42) / 0.001;
  v52 = vabdd_f64(*&v80, v43);
  if (v49 <= v50)
  {
    v49 = v50;
  }

  if (v49 <= v51)
  {
    v49 = v51;
  }

  if (v49 > v52 / 0.001)
  {
    v28 = v49;
  }

  else
  {
    v28 = v52 / 0.001;
  }

  os_unfair_lock_lock((v39 + 80));
  v53 = v81;
  *(v39 + 48) = v84;
  *(v39 + 56) = v53;
  v54 = v80;
  *(v39 + 64) = v85;
  *(v39 + 72) = v54;
  os_unfair_lock_unlock((v39 + 80));
  signpost_c2_entryLock_start();
  v79 = sub_188F07EB0();
  if ((v79 & 1) == 0)
  {
    v59 = sub_188F00A84();
    v61 = v60;
    v63 = v62;
    v65 = v64;
    *&v66 = v85;
    *(&v66 + 1) = v80;
    v85 = v66;
    *&v66 = v84;
    *(&v66 + 1) = v81;
    v84 = v66;
LABEL_29:
    v56 = v83;
    goto LABEL_30;
  }

  sub_188A3F29C(a2 + v44, v25, &qword_1EA936750, &qword_18A650EB0);
  sub_188A3F704(v25, v22, &qword_1EA936750, &qword_18A650EB0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_188A3F704(v22, v19, &qword_1EA936748, &qword_18A650EA8);
      v67 = *(v19 + 6);
      v84 = *(v19 + 5);
      v85 = v67;
      sub_188A3F5FC(v19, &qword_1EA936748, &qword_18A650EA8);
    }

    else
    {
      v68 = v22[1];
      v84 = *v22;
      v85 = v68;
    }

    v59 = 0.0;
    v61 = 0;
    v63 = 0;
    v65 = 0;
    goto LABEL_29;
  }

  v56 = v83;
  if (EnumCaseMultiPayload)
  {
    v57 = v22[7];
    v58 = v22[8];
  }

  else
  {
    v57 = v22[11];
    v58 = v22[12];
  }

  v85 = v58;
  v84 = v57;
  v59 = 0.0;
  v61 = 0;
  v63 = 0;
  v65 = 0;
LABEL_30:
  swift_beginAccess();
  if ((*(v56 + 48) & 1) != 0 || (*&v88.origin.x = v84, *&v88.size.width = v85, v88.origin.y = *(&v84 + 1), v88.size.height = *(&v85 + 1), !CGRectEqualToRect(*(v56 + 16), v88)))
  {
    v69 = swift_allocObject();
    *(v69 + 16) = v82;
    *(v69 + 24) = a10;
    v70 = v85;
    *(v69 + 32) = v84;
    *(v69 + 48) = v70;
    *(v69 + 64) = v59;
    *(v69 + 72) = v61;
    *(v69 + 80) = v63;
    *(v69 + 88) = v65;
    v71 = swift_allocObject();
    *(v71 + 16) = sub_188F0DC14;
    *(v71 + 24) = v69;
    swift_beginAccess();
    v72 = *(a8 + 112);

    v73 = swift_isUniquelyReferenced_nonNull_native();
    *(a8 + 112) = v72;
    if ((v73 & 1) == 0)
    {
      v72 = sub_188E4B69C(0, v72[2] + 1, 1, v72);
      *(a8 + 112) = v72;
    }

    v75 = v72[2];
    v74 = v72[3];
    if (v75 >= v74 >> 1)
    {
      v72 = sub_188E4B69C((v74 > 1), v75 + 1, 1, v72);
    }

    v72[2] = v75 + 1;
    v76 = &v72[2 * v75];
    v76[4] = sub_188F0E0CC;
    v76[5] = v71;
    *(a8 + 112) = v72;
    swift_endAccess();
    sub_188AA7584();
  }

  swift_beginAccess();
  v77 = v85;
  *(v56 + 16) = v84;
  *(v56 + 32) = v77;
  *(v56 + 48) = 0;
  if (v79)
  {
    goto LABEL_5;
  }

LABEL_10:

  os_unfair_lock_unlock(v86 + 4);
  return v28;
}

double sub_188F06728(char a1, void *a2, uint64_t (*a3)(void), double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v106 = a9;
  v108 = a7;
  v111 = a6;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936778, &qword_18A650ED0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v105 = &v102 - v18;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936780, &qword_18A650ED8);
  MEMORY[0x1EEE9AC00](v107);
  v20 = &v102 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v102 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v102 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v102 - v28;
  v30 = UIAnimationDragCoefficient();
  signpost_c2_entryLock_start();
  v110 = a2[2];
  os_unfair_lock_lock(v110 + 4);
  signpost_c2_entryLock_start();
  v109 = swift_allocObject();
  *(v109 + 16) = 0;
  if (*(a2 + *(*a2 + 120)) & 1) != 0 || (a1 & 1) != 0 || (a3())
  {
    v31 = v109;
    *(v109 + 16) = 1;
    v32 = 0.0;
    goto LABEL_5;
  }

  v104 = a8;
  signpost_c2_entryLock_start();
  v42 = *(v111 + 24);
  os_unfair_lock_lock((v42 + 284));
  v103 = v42 + 152;
  v43 = *(v42 + 232);
  v44 = *(v42 + 264);
  v188 = *(v42 + 248);
  v189 = v44;
  v190 = *(v42 + 280);
  v45 = *(v42 + 168);
  v46 = *(v42 + 200);
  v184 = *(v42 + 184);
  v185 = v46;
  v47 = *(v42 + 216);
  v187 = v43;
  v186 = v47;
  v48 = *(v42 + 152);
  v183 = v45;
  v182 = v48;
  os_unfair_lock_unlock((v42 + 284));
  v49 = *(*a2 + 104);
  swift_beginAccess();
  sub_188AABCFC(&v161, a4 / v30);
  swift_endAccess();
  v197 = v167;
  v198 = v168;
  v199 = v169;
  v193 = v163;
  v194 = v164;
  v195 = v165;
  v196 = v166;
  v191 = v161;
  v192 = v162;
  sub_189179EB0();
  v32 = v50;
  os_unfair_lock_lock((v42 + 284));
  v51 = v165;
  *(v42 + 232) = v166;
  v52 = v168;
  *(v42 + 248) = v167;
  *(v103 + 112) = v52;
  v53 = v161;
  *(v42 + 168) = v162;
  v54 = v164;
  *(v42 + 184) = v163;
  *(v42 + 200) = v54;
  *(v42 + 216) = v51;
  *(v42 + 280) = v169;
  *(v42 + 152) = v53;
  os_unfair_lock_unlock((v42 + 284));
  signpost_c2_entryLock_start();
  v103 = v49;
  sub_188A3F29C(a2 + v49, v29, &qword_1EA936780, &qword_18A650ED8);
  sub_188A3F29C(v29, v26, &qword_1EA936780, &qword_18A650ED8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_188A3F5FC(v29, &qword_1EA936780, &qword_18A650ED8);
      v57 = v105;
      sub_188A3F704(v26, v105, &qword_1EA936778, &qword_18A650ED0);
      v58 = *(v57 + 417);
      sub_188A3F5FC(v57, &qword_1EA936778, &qword_18A650ED0);
      a8 = v104;
      if ((v58 & 1) == 0)
      {
LABEL_19:
        v158 = v167;
        v159 = v168;
        v160 = v169;
        v154 = v163;
        v155 = v164;
        v157 = v166;
        v156 = v165;
        v152 = v161;
        v153 = v162;
        sub_188AB6F20(&v143);
        v60 = 0;
        goto LABEL_31;
      }
    }

    else
    {
      sub_188A3F5FC(v29, &qword_1EA936780, &qword_18A650ED8);
      a8 = v104;
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      memcpy(v181, v26, 0x229uLL);
      v56 = sub_188EF49A4();
    }

    else
    {
      memcpy(v181, v26, sizeof(v181));
      v56 = sub_188AB6990();
    }

    v59 = v56;
    sub_188A3F5FC(v29, &qword_1EA936780, &qword_18A650ED8);
    a8 = v104;
    if (!v59)
    {
      goto LABEL_19;
    }
  }

  sub_188A3F29C(a2 + v103, v23, &qword_1EA936780, &qword_18A650ED8);
  sub_188A3F704(v23, v20, &qword_1EA936780, &qword_18A650ED8);
  v61 = swift_getEnumCaseMultiPayload();
  if (v61 <= 1)
  {
    if (v61)
    {
      v62 = (v20 + 424);
      v63 = v20[552];
    }

    else
    {
      v62 = (v20 + 280);
      v63 = v20[408];
    }

    v160 = v63;
    v69 = v62[7];
    v158 = v62[6];
    v159 = v69;
    v70 = v62[3];
    v154 = v62[2];
    v155 = v70;
    v71 = v62[4];
    v157 = v62[5];
    v156 = v71;
    v73 = *v62;
    v72 = v62[1];
    goto LABEL_29;
  }

  if (v61 != 2)
  {
    v74 = *(v20 + 7);
    v158 = *(v20 + 6);
    v159 = v74;
    v160 = v20[128];
    v75 = *(v20 + 3);
    v154 = *(v20 + 2);
    v155 = v75;
    v76 = *(v20 + 4);
    v157 = *(v20 + 5);
    v156 = v76;
    v73 = *v20;
    v72 = *(v20 + 1);
LABEL_29:
    v152 = v73;
    v153 = v72;
    goto LABEL_30;
  }

  v64 = v105;
  sub_188A3F704(v20, v105, &qword_1EA936778, &qword_18A650ED0);
  v65 = *(v64 + 400);
  v158 = *(v64 + 384);
  v159 = v65;
  v160 = *(v64 + 416);
  v66 = *(v64 + 336);
  v154 = *(v64 + 320);
  v155 = v66;
  v67 = *(v64 + 352);
  v157 = *(v64 + 368);
  v156 = v67;
  v68 = *(v64 + 304);
  v152 = *(v64 + 288);
  v153 = v68;
  sub_188A3F5FC(v64, &qword_1EA936778, &qword_18A650ED0);
LABEL_30:
  v151 = 0;
  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  v145 = 0u;
  v146 = 0u;
  v60 = 1;
  v143 = 0u;
  v144 = 0u;
LABEL_31:
  v77 = v108;
  v31 = v109;
  swift_beginAccess();
  v78 = *(v77 + 128);
  v120 = *(v77 + 112);
  v121 = v78;
  v122 = *(v77 + 144);
  v79 = *(v77 + 64);
  v116 = *(v77 + 48);
  v117 = v79;
  v80 = *(v77 + 96);
  v118 = *(v77 + 80);
  v119 = v80;
  v81 = *(v77 + 32);
  v114 = *(v77 + 16);
  v115 = v81;
  v138 = v158;
  v139 = v159;
  v140 = v160;
  v134 = v154;
  v135 = v155;
  v136 = v156;
  v137 = v157;
  v132 = v152;
  v133 = v153;
  signpost_c2_entryLock_start();
  v128 = v137;
  v129 = v138;
  v130 = v139;
  v124 = v133;
  v125 = v134;
  v126 = v135;
  v131 = v140;
  v127 = v136;
  v123 = v132;
  v141[6] = v120;
  v141[7] = v121;
  v142 = v122;
  v141[2] = v116;
  v141[3] = v117;
  v141[4] = v118;
  v141[5] = v119;
  v141[0] = v114;
  v141[1] = v115;
  if (sub_188AB3700(v141) == 1)
  {
    v178 = v129;
    v179 = v130;
    v180 = v131;
    v174 = v125;
    v175 = v126;
    v177 = v128;
    v176 = v127;
    v173 = v124;
    v172 = v123;
    if (sub_188AB3700(&v172) == 1)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v112[6] = v129;
    v112[7] = v130;
    v113 = v131;
    v112[2] = v125;
    v112[3] = v126;
    v112[4] = v127;
    v112[5] = v128;
    v112[0] = v123;
    v112[1] = v124;
    if (sub_188AB3700(v112) != 1)
    {
      v178 = v129;
      v179 = v130;
      v180 = v131;
      v174 = v125;
      v175 = v126;
      v177 = v128;
      v176 = v127;
      v173 = v124;
      v172 = v123;
      v170[6] = v120;
      v170[7] = v121;
      v171 = v122;
      v170[2] = v116;
      v170[3] = v117;
      v170[5] = v119;
      v170[4] = v118;
      v170[1] = v115;
      v170[0] = v114;
      if (sub_188ABBAE8(v170, &v172))
      {
        goto LABEL_41;
      }
    }
  }

  v82 = swift_allocObject();
  v83 = v150;
  *(v82 + 264) = v149;
  *(v82 + 280) = v83;
  v84 = v159;
  *(v82 + 128) = v158;
  *(v82 + 144) = v84;
  v85 = v155;
  *(v82 + 64) = v154;
  *(v82 + 80) = v85;
  v86 = v157;
  *(v82 + 96) = v156;
  *(v82 + 112) = v86;
  v87 = v153;
  *(v82 + 32) = v152;
  *(v82 + 48) = v87;
  v88 = v147;
  *(v82 + 248) = v148;
  v89 = v143;
  *(v82 + 184) = v144;
  v90 = v146;
  *(v82 + 200) = v145;
  *(v82 + 216) = v90;
  *(v82 + 232) = v88;
  *(v82 + 16) = v106;
  *(v82 + 24) = a10;
  *(v82 + 160) = v160;
  *(v82 + 296) = v151;
  *(v82 + 168) = v89;
  v91 = swift_allocObject();
  *(v91 + 16) = sub_188F0DCF4;
  *(v91 + 24) = v82;
  swift_beginAccess();
  v92 = *(a8 + 112);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a8 + 112) = v92;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v92 = sub_188E4B69C(0, v92[2] + 1, 1, v92);
    *(a8 + 112) = v92;
  }

  v95 = v92[2];
  v94 = v92[3];
  if (v95 >= v94 >> 1)
  {
    v92 = sub_188E4B69C((v94 > 1), v95 + 1, 1, v92);
  }

  v92[2] = v95 + 1;
  v96 = &v92[2 * v95];
  v96[4] = sub_188F0E0CC;
  v96[5] = v91;
  *(a8 + 112) = v92;
  swift_endAccess();
  sub_188AA7584();

LABEL_41:
  v97 = v108;
  swift_beginAccess();
  v98 = v139;
  *(v97 + 112) = v138;
  *(v97 + 128) = v98;
  *(v97 + 144) = v140;
  v99 = v135;
  *(v97 + 48) = v134;
  *(v97 + 64) = v99;
  v100 = v137;
  *(v97 + 80) = v136;
  *(v97 + 96) = v100;
  v101 = v133;
  *(v97 + 16) = v132;
  *(v97 + 32) = v101;
  if ((v60 & 1) == 0)
  {

    goto LABEL_10;
  }

LABEL_5:
  v33 = swift_allocObject();
  v33[2] = a2;
  v33[3] = a11;
  v34 = v111;
  v33[4] = a12;
  v33[5] = v34;
  v33[6] = a8;
  v33[7] = v31;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_188F0DD90;
  *(v35 + 24) = v33;
  swift_beginAccess();
  v36 = *(a8 + 112);

  v37 = swift_isUniquelyReferenced_nonNull_native();
  *(a8 + 112) = v36;
  if ((v37 & 1) == 0)
  {
    v36 = sub_188E4B69C(0, v36[2] + 1, 1, v36);
    *(a8 + 112) = v36;
  }

  v39 = v36[2];
  v38 = v36[3];
  if (v39 >= v38 >> 1)
  {
    v36 = sub_188E4B69C((v38 > 1), v39 + 1, 1, v36);
  }

  v36[2] = v39 + 1;
  v40 = &v36[2 * v39];
  v40[4] = sub_188F0E0CC;
  v40[5] = v35;
  *(a8 + 112) = v36;
  swift_endAccess();
  sub_188AA7584();

LABEL_10:
  os_unfair_lock_unlock(v110 + 4);
  return v32;
}

double sub_188F07270(char a1, void *a2, uint64_t (*a3)(void), double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v61 = a9;
  v62 = a7;
  v64 = a6;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9367A8, &qword_18A650EF8);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v59[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9367B0, &qword_18A650F00);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v59[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v59[-v24];
  v26 = UIAnimationDragCoefficient();
  signpost_c2_entryLock_start();
  v63 = a2[2];
  os_unfair_lock_lock(v63 + 4);
  signpost_c2_entryLock_start();
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  if (*(a2 + *(*a2 + 120)) & 1) != 0 || (a1 & 1) != 0 || (a3())
  {
    *(v27 + 16) = 1;
    v28 = 0.0;
LABEL_5:
    v29 = swift_allocObject();
    v29[2] = a2;
    v29[3] = a11;
    v30 = v64;
    v29[4] = a12;
    v29[5] = v30;
    v29[6] = a8;
    v29[7] = v27;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_188F0D528;
    *(v31 + 24) = v29;
    swift_beginAccess();
    v32 = *(a8 + 112);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a8 + 112) = v32;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v32 = sub_188E4B69C(0, v32[2] + 1, 1, v32);
      *(a8 + 112) = v32;
    }

    v35 = v32[2];
    v34 = v32[3];
    if (v35 >= v34 >> 1)
    {
      v32 = sub_188E4B69C((v34 > 1), v35 + 1, 1, v32);
    }

    v32[2] = v35 + 1;
    v36 = &v32[2 * v35];
    v36[4] = sub_188F0E0CC;
    v36[5] = v31;
    *(a8 + 112) = v32;
    swift_endAccess();
    sub_188AA7584();

    goto LABEL_10;
  }

  signpost_c2_entryLock_start();
  v38 = *(v64 + 24);
  os_unfair_lock_lock((v38 + 48));
  v40 = *(v38 + 32);
  v39 = *(v38 + 40);
  os_unfair_lock_unlock((v38 + 48));
  v41 = *(*a2 + 104);
  swift_beginAccess();
  v42 = sub_188EF1F58(a4 / v26);
  v44 = v43;
  swift_endAccess();
  v45 = vabdd_f64(v42, v40);
  if (qword_1ED48D080 != -1)
  {
    swift_once();
  }

  v46 = vabdd_f64(v44, v39);
  if (v45 / *&qword_1ED4A3498 > v46 / *&qword_1ED4A3498)
  {
    v28 = v45 / *&qword_1ED4A3498;
  }

  else
  {
    v28 = v46 / *&qword_1ED4A3498;
  }

  os_unfair_lock_lock((v38 + 48));
  *(v38 + 32) = v42;
  *(v38 + 40) = v44;
  os_unfair_lock_unlock((v38 + 48));
  signpost_c2_entryLock_start();
  v60 = sub_188AAA888();
  if ((v60 & 1) == 0)
  {
    v49 = sub_188F00C60();
    v51 = v50;
LABEL_27:
    v48 = v62;
    goto LABEL_28;
  }

  sub_188A3F29C(a2 + v41, v25, &qword_1EA9367B0, &qword_18A650F00);
  sub_188A3F704(v25, v22, &qword_1EA9367B0, &qword_18A650F00);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_188A3F704(v22, v19, &qword_1EA9367A8, &qword_18A650EF8);
      v42 = v19[6];
      v44 = v19[7];
      sub_188A3F5FC(v19, &qword_1EA9367A8, &qword_18A650EF8);
    }

    else
    {
      v42 = *v22;
      v44 = v22[1];
    }

    v49 = 0.0;
    v51 = 0;
    goto LABEL_27;
  }

  v48 = v62;
  if (EnumCaseMultiPayload)
  {
    v42 = v22[8];
    v44 = v22[9];
  }

  else
  {
    v42 = v22[20];
    v44 = v22[21];
  }

  v49 = 0.0;
  v51 = 0;
LABEL_28:
  swift_beginAccess();
  if ((*(v48 + 32) & 1) != 0 || *(v48 + 16) != v42 || *(v48 + 24) != v44)
  {
    v52 = swift_allocObject();
    *(v52 + 16) = v61;
    *(v52 + 24) = a10;
    *(v52 + 32) = v42;
    *(v52 + 40) = v44;
    *(v52 + 48) = v49;
    *(v52 + 56) = v51;
    v53 = swift_allocObject();
    *(v53 + 16) = sub_188F0E054;
    *(v53 + 24) = v52;
    swift_beginAccess();
    v54 = *(a8 + 112);

    v55 = swift_isUniquelyReferenced_nonNull_native();
    *(a8 + 112) = v54;
    if ((v55 & 1) == 0)
    {
      v54 = sub_188E4B69C(0, v54[2] + 1, 1, v54);
      *(a8 + 112) = v54;
    }

    v57 = v54[2];
    v56 = v54[3];
    if (v57 >= v56 >> 1)
    {
      v54 = sub_188E4B69C((v56 > 1), v57 + 1, 1, v54);
    }

    v54[2] = v57 + 1;
    v58 = &v54[2 * v57];
    v58[4] = sub_188F0E0CC;
    v58[5] = v53;
    *(a8 + 112) = v54;
    swift_endAccess();
    sub_188AA7584();
  }

  swift_beginAccess();
  *(v48 + 16) = v42;
  *(v48 + 24) = v44;
  *(v48 + 32) = 0;
  if (v60)
  {
    goto LABEL_5;
  }

LABEL_10:

  os_unfair_lock_unlock(v63 + 4);
  return v28;
}

uint64_t sub_188F078BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9365C0, &qword_18A650D60);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v17[-v2];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9365C8, &qword_18A650D68);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17[-v8];
  v10 = *(*v0 + 104);
  swift_beginAccess();
  sub_188A3F29C(v0 + v10, v9, &qword_1EA9365C8, &qword_18A650D68);
  sub_188A3F29C(v9, v6, &qword_1EA9365C8, &qword_18A650D68);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      sub_188A3F5FC(v9, &qword_1EA9365C8, &qword_18A650D68);
      v12 = 1;
      return v12 & 1;
    }

    sub_188A3F5FC(v9, &qword_1EA9365C8, &qword_18A650D68);
    sub_188A3F704(v6, v3, &qword_1EA9365C0, &qword_18A650D60);
    v12 = v3[208];
    v13 = v3;
    v14 = &qword_1EA9365C0;
    v15 = &qword_18A650D60;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v12 = vabdd_f64(v6[26], v6[16]) <= 0.001 && vabdd_f64(v6[27], v6[17]) <= 0.001 && vabdd_f64(v6[28], v6[18]) <= 0.001 && vabdd_f64(v6[29], v6[19]) <= 0.001 && vabdd_f64(v6[30], v6[20]) <= 0.001 && vabdd_f64(v6[31], v6[21]) <= 0.001 && vabdd_f64(v6[32], v6[22]) <= 0.001 && vabdd_f64(v6[33], v6[23]) <= 0.001;
    }

    else
    {
      memcpy(v18, v6, sizeof(v18));
      v12 = sub_188EE8FB0();
    }

    v14 = &qword_1EA9365C8;
    v15 = &qword_18A650D68;
    v13 = v9;
  }

  sub_188A3F5FC(v13, v14, v15);
  return v12 & 1;
}

uint64_t sub_188F07B8C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936620, &qword_18A650DB0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v33[-v2];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936628, &qword_18A650DB8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v33[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33[-v8];
  v10 = *(*v0 + 104);
  swift_beginAccess();
  sub_188A3F29C(v0 + v10, v9, &qword_1EA936628, &qword_18A650DB8);
  sub_188A3F29C(v9, v6, &qword_1EA936628, &qword_18A650DB8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      memcpy(v34, v6, 0x17DuLL);
      v12 = sub_188EE90C0();
      sub_188A3F5FC(v34, &qword_1EA936840, &qword_18A650F88);
      v13 = &qword_1EA936628;
      v14 = &qword_18A650DB8;
      v15 = v9;
LABEL_16:
      sub_188A3F5FC(v15, v13, v14);
      return v12 & 1;
    }

    v16 = v6[8];
    v17 = v6[9];
    v18 = v6[6];
    v34[7] = v6[7];
    v34[8] = v16;
    v34[9] = v17;
    *(&v34[9] + 13) = *(v6 + 157);
    v19 = v6[5];
    v34[4] = v6[4];
    v34[5] = v19;
    v34[6] = v18;
    v20 = v6[1];
    v34[0] = *v6;
    v34[1] = v20;
    v21 = v6[3];
    v34[2] = v6[2];
    v34[3] = v21;
    v22 = *&v34[5];
    if (*(&v34[8] + 1))
    {
      if (*&v34[5])
      {
        v23 = sub_189090B30(*&v34[5], *(&v34[8] + 1), 0.00000001);
LABEL_14:
        v12 = v23;
LABEL_15:
        sub_188A3F5FC(v9, &qword_1EA936628, &qword_18A650DB8);
        v13 = &qword_1EA936848;
        v14 = &qword_18A650F90;
        v15 = v34;
        goto LABEL_16;
      }

      v22 = *(&v34[8] + 1);
    }

    else if (!*&v34[5])
    {
      v12 = 1;
      goto LABEL_15;
    }

    v23 = sub_189090ADC(v22, 0.00000001);
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_188A3F5FC(v9, &qword_1EA936628, &qword_18A650DB8);
    sub_188A3F704(v6, v3, &qword_1EA936620, &qword_18A650DB0);
    v12 = v3[133];
    v15 = v3;
    v13 = &qword_1EA936620;
    v14 = &qword_18A650DB0;
    goto LABEL_16;
  }

  sub_188A3F5FC(v9, &qword_1EA936628, &qword_18A650DB8);
  v24 = *v6;
  v25 = *(v6 + 1);
  v26 = *(v6 + 2);
  v27 = *(v6 + 3);
  v28 = *(v6 + 5);
  v29 = *(v6 + 6);
  v31 = *(v6 + 7);
  v30 = *(v6 + 8);
  sub_188F0B59C(v24, v25, v26, v27);
  sub_188F0B59C(v28, v29, v31, v30);
  v12 = 1;
  return v12 & 1;
}

uint64_t sub_188F07EB0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936748, &qword_18A650EA8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v17[-v2];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936750, &qword_18A650EB0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17[-v8];
  v10 = *(*v0 + 104);
  swift_beginAccess();
  sub_188A3F29C(v0 + v10, v9, &qword_1EA936750, &qword_18A650EB0);
  sub_188A3F29C(v9, v6, &qword_1EA936750, &qword_18A650EB0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      sub_188A3F5FC(v9, &qword_1EA936750, &qword_18A650EB0);
      v12 = 1;
      return v12 & 1;
    }

    sub_188A3F5FC(v9, &qword_1EA936750, &qword_18A650EB0);
    sub_188A3F704(v6, v3, &qword_1EA936748, &qword_18A650EA8);
    v12 = v3[112];
    v13 = v3;
    v14 = &qword_1EA936748;
    v15 = &qword_18A650EA8;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v12 = vabdd_f64(v6[14], v6[8]) <= 0.001 && vabdd_f64(v6[15], v6[9]) <= 0.001 && vabdd_f64(v6[16], v6[10]) <= 0.001 && vabdd_f64(v6[17], v6[11]) <= 0.001;
    }

    else
    {
      memcpy(v18, v6, sizeof(v18));
      v12 = sub_188EE986C();
    }

    v14 = &qword_1EA936750;
    v15 = &qword_18A650EB0;
    v13 = v9;
  }

  sub_188A3F5FC(v13, v14, v15);
  return v12 & 1;
}

double sub_188F08130(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  signpost_c2_entryLock_start();
  v11 = a1[2];
  os_unfair_lock_lock(v11 + 4);
  signpost_c2_entryLock_start();
  if ((*(a1 + *(*a1 + 120)) & 1) == 0)
  {
    v12 = a2();
    v13 = *(a4 + 32);
    MEMORY[0x1EEE9AC00](v12);
    os_unfair_lock_lock((v13 + 24));
    sub_188F0E024((v13 + 16));
    os_unfair_lock_unlock((v13 + 24));
    swift_beginAccess();
    v14 = a1 + *(*a1 + 112);
    v15 = *v14;
    if (*v14)
    {
      v16 = *(v14 + 1);
      v17 = *(a6 + 16);
      *v14 = 0;
      *(v14 + 1) = 0;
      v15(a5, (v17 & 1) == 0);
      sub_188A55B8C(v15, v16);
    }
  }

  sub_188A32084(sub_188F0CD34, a4);

  os_unfair_lock_unlock(v11 + 4);
  return 0.0;
}

double sub_188F082AC(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  signpost_c2_entryLock_start();
  v11 = a1[2];
  os_unfair_lock_lock(v11 + 4);
  signpost_c2_entryLock_start();
  if ((*(a1 + *(*a1 + 120)) & 1) == 0)
  {
    v12 = a2();
    v13 = *(a4 + 32);
    MEMORY[0x1EEE9AC00](v12);
    os_unfair_lock_lock((v13 + 24));
    sub_188F0E024((v13 + 16));
    os_unfair_lock_unlock((v13 + 24));
    swift_beginAccess();
    v14 = a1 + *(*a1 + 112);
    v15 = *v14;
    if (*v14)
    {
      v16 = *(v14 + 1);
      v17 = *(a6 + 16);
      *v14 = 0;
      *(v14 + 1) = 0;
      v15(a5, (v17 & 1) == 0);
      sub_188A55B8C(v15, v16);
    }
  }

  sub_188A32084(sub_188F0E058, a4);

  os_unfair_lock_unlock(v11 + 4);
  return 0.0;
}

double sub_188F08428(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  signpost_c2_entryLock_start();
  v11 = a1[2];
  os_unfair_lock_lock(v11 + 4);
  signpost_c2_entryLock_start();
  if ((*(a1 + *(*a1 + 120)) & 1) == 0)
  {
    v12 = a2();
    v13 = *(a4 + 32);
    MEMORY[0x1EEE9AC00](v12);
    os_unfair_lock_lock((v13 + 24));
    sub_188F0E024((v13 + 16));
    os_unfair_lock_unlock((v13 + 24));
    swift_beginAccess();
    v14 = a1 + *(*a1 + 112);
    v15 = *v14;
    if (*v14)
    {
      v16 = *(v14 + 1);
      v17 = *(a6 + 16);
      *v14 = 0;
      *(v14 + 1) = 0;
      v15(a5, (v17 & 1) == 0);
      sub_188A55B8C(v15, v16);
    }
  }

  sub_188A32084(sub_188F0D600, a4);

  os_unfair_lock_unlock(v11 + 4);
  return 0.0;
}

double sub_188F085A4(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  signpost_c2_entryLock_start();
  v11 = a1[2];
  os_unfair_lock_lock(v11 + 4);
  signpost_c2_entryLock_start();
  if ((*(a1 + *(*a1 + 120)) & 1) == 0)
  {
    v12 = a2();
    v13 = *(a4 + 32);
    MEMORY[0x1EEE9AC00](v12);
    os_unfair_lock_lock((v13 + 24));
    sub_188F0E024((v13 + 16));
    os_unfair_lock_unlock((v13 + 24));
    swift_beginAccess();
    v14 = a1 + *(*a1 + 112);
    v15 = *v14;
    if (*v14)
    {
      v16 = *(v14 + 1);
      v17 = *(a6 + 16);
      *v14 = 0;
      *(v14 + 1) = 0;
      v15(a5, (v17 & 1) == 0);
      sub_188A55B8C(v15, v16);
    }
  }

  sub_188A32084(sub_188F0D8BC, a4);

  os_unfair_lock_unlock(v11 + 4);
  return 0.0;
}

double sub_188F08720(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  signpost_c2_entryLock_start();
  v11 = a1[2];
  os_unfair_lock_lock(v11 + 4);
  signpost_c2_entryLock_start();
  if ((*(a1 + *(*a1 + 120)) & 1) == 0)
  {
    v12 = a2();
    v13 = *(a4 + 32);
    MEMORY[0x1EEE9AC00](v12);
    os_unfair_lock_lock((v13 + 24));
    sub_188F0E024((v13 + 16));
    os_unfair_lock_unlock((v13 + 24));
    swift_beginAccess();
    v14 = a1 + *(*a1 + 112);
    v15 = *v14;
    if (*v14)
    {
      v16 = *(v14 + 1);
      v17 = *(a6 + 16);
      *v14 = 0;
      *(v14 + 1) = 0;
      v15(a5, (v17 & 1) == 0);
      sub_188A55B8C(v15, v16);
    }
  }

  sub_188A32084(sub_188F0E050, a4);

  os_unfair_lock_unlock(v11 + 4);
  return 0.0;
}

double sub_188F0889C(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  signpost_c2_entryLock_start();
  v11 = a1[2];
  os_unfair_lock_lock(v11 + 4);
  signpost_c2_entryLock_start();
  if ((*(a1 + *(*a1 + 120)) & 1) == 0)
  {
    v12 = a2();
    v13 = *(a4 + 32);
    MEMORY[0x1EEE9AC00](v12);
    os_unfair_lock_lock((v13 + 24));
    sub_188F0E024((v13 + 16));
    os_unfair_lock_unlock((v13 + 24));
    swift_beginAccess();
    v14 = a1 + *(*a1 + 112);
    v15 = *v14;
    if (*v14)
    {
      v16 = *(v14 + 1);
      v17 = *(a6 + 16);
      *v14 = 0;
      *(v14 + 1) = 0;
      v15(a5, (v17 & 1) == 0);
      sub_188A55B8C(v15, v16);
    }
  }

  sub_188A32084(sub_188F0D9A4, a4);

  os_unfair_lock_unlock(v11 + 4);
  return 0.0;
}

double sub_188F08A18(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  signpost_c2_entryLock_start();
  v11 = a1[2];
  os_unfair_lock_lock(v11 + 4);
  signpost_c2_entryLock_start();
  if ((*(a1 + *(*a1 + 120)) & 1) == 0)
  {
    v12 = a2();
    v13 = *(a4 + 32);
    MEMORY[0x1EEE9AC00](v12);
    os_unfair_lock_lock((v13 + 24));
    sub_188F0E024((v13 + 16));
    os_unfair_lock_unlock((v13 + 24));
    swift_beginAccess();
    v14 = a1 + *(*a1 + 112);
    v15 = *v14;
    if (*v14)
    {
      v16 = *(v14 + 1);
      v17 = *(a6 + 16);
      *v14 = 0;
      *(v14 + 1) = 0;
      v15(a5, (v17 & 1) == 0);
      sub_188A55B8C(v15, v16);
    }
  }

  sub_188A32084(sub_188F0E060, a4);

  os_unfair_lock_unlock(v11 + 4);
  return 0.0;
}

double sub_188F08B94(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  signpost_c2_entryLock_start();
  v11 = a1[2];
  os_unfair_lock_lock(v11 + 4);
  signpost_c2_entryLock_start();
  if ((*(a1 + *(*a1 + 120)) & 1) == 0)
  {
    v12 = a2();
    v13 = *(a4 + 32);
    MEMORY[0x1EEE9AC00](v12);
    os_unfair_lock_lock((v13 + 24));
    sub_188F0E024((v13 + 16));
    os_unfair_lock_unlock((v13 + 24));
    swift_beginAccess();
    v14 = a1 + *(*a1 + 112);
    v15 = *v14;
    if (*v14)
    {
      v16 = *(v14 + 1);
      v17 = *(a6 + 16);
      *v14 = 0;
      *(v14 + 1) = 0;
      v15(a5, (v17 & 1) == 0);
      sub_188A55B8C(v15, v16);
    }
  }

  sub_188A32084(sub_188F0DA14, a4);

  os_unfair_lock_unlock(v11 + 4);
  return 0.0;
}

double sub_188F08D10(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  signpost_c2_entryLock_start();
  v11 = a1[2];
  os_unfair_lock_lock(v11 + 4);
  signpost_c2_entryLock_start();
  if ((*(a1 + *(*a1 + 120)) & 1) == 0)
  {
    v12 = a2();
    v13 = *(a4 + 32);
    MEMORY[0x1EEE9AC00](v12);
    os_unfair_lock_lock((v13 + 24));
    sub_188F0E024((v13 + 16));
    os_unfair_lock_unlock((v13 + 24));
    swift_beginAccess();
    v14 = a1 + *(*a1 + 112);
    v15 = *v14;
    if (*v14)
    {
      v16 = *(v14 + 1);
      v17 = *(a6 + 16);
      *v14 = 0;
      *(v14 + 1) = 0;
      v15(a5, (v17 & 1) == 0);
      sub_188A55B8C(v15, v16);
    }
  }

  sub_188A32084(sub_188F0E064, a4);

  os_unfair_lock_unlock(v11 + 4);
  return 0.0;
}

double sub_188F08E8C(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  signpost_c2_entryLock_start();
  v11 = a1[2];
  os_unfair_lock_lock(v11 + 4);
  signpost_c2_entryLock_start();
  if ((*(a1 + *(*a1 + 120)) & 1) == 0)
  {
    v12 = a2();
    v13 = *(a4 + 32);
    MEMORY[0x1EEE9AC00](v12);
    os_unfair_lock_lock((v13 + 24));
    sub_188F0E024((v13 + 16));
    os_unfair_lock_unlock((v13 + 24));
    swift_beginAccess();
    v14 = a1 + *(*a1 + 112);
    v15 = *v14;
    if (*v14)
    {
      v16 = *(v14 + 1);
      v17 = *(a6 + 16);
      *v14 = 0;
      *(v14 + 1) = 0;
      v15(a5, (v17 & 1) == 0);
      sub_188A55B8C(v15, v16);
    }
  }

  sub_188A32084(sub_188F0DBC4, a4);

  os_unfair_lock_unlock(v11 + 4);
  return 0.0;
}

double sub_188F09008(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  signpost_c2_entryLock_start();
  v11 = a1[2];
  os_unfair_lock_lock(v11 + 4);
  signpost_c2_entryLock_start();
  if ((*(a1 + *(*a1 + 120)) & 1) == 0)
  {
    v12 = a2();
    v13 = *(a4 + 32);
    MEMORY[0x1EEE9AC00](v12);
    os_unfair_lock_lock((v13 + 24));
    sub_188F0E024((v13 + 16));
    os_unfair_lock_unlock((v13 + 24));
    swift_beginAccess();
    v14 = a1 + *(*a1 + 112);
    v15 = *v14;
    if (*v14)
    {
      v16 = *(v14 + 1);
      v17 = *(a6 + 16);
      *v14 = 0;
      *(v14 + 1) = 0;
      v15(a5, (v17 & 1) == 0);
      sub_188A55B8C(v15, v16);
    }
  }

  sub_188A32084(sub_188F0DC30, a4);

  os_unfair_lock_unlock(v11 + 4);
  return 0.0;
}

double sub_188F09184(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  signpost_c2_entryLock_start();
  v11 = a1[2];
  os_unfair_lock_lock(v11 + 4);
  signpost_c2_entryLock_start();
  if ((*(a1 + *(*a1 + 120)) & 1) == 0)
  {
    v12 = a2();
    v13 = *(a4 + 32);
    MEMORY[0x1EEE9AC00](v12);
    os_unfair_lock_lock((v13 + 24));
    sub_188F0E024((v13 + 16));
    os_unfair_lock_unlock((v13 + 24));
    swift_beginAccess();
    v14 = a1 + *(*a1 + 112);
    v15 = *v14;
    if (*v14)
    {
      v16 = *(v14 + 1);
      v17 = *(a6 + 16);
      *v14 = 0;
      *(v14 + 1) = 0;
      v15(a5, (v17 & 1) == 0);
      sub_188A55B8C(v15, v16);
    }
  }

  sub_188A32084(sub_188F0DDA8, a4);

  os_unfair_lock_unlock(v11 + 4);
  return 0.0;
}

void sub_188F09300(uint64_t a1)
{
  v1 = *(a1 + 504);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 504) = v3;
    if (!v3)
    {
      v5 = *(a1 + 32);
      os_unfair_lock_lock((v5 + 24));
      v6 = *(v5 + 16);

      os_unfair_lock_unlock((v5 + 24));
      if (v6)
      {
      }

      else
      {
        swift_beginAccess();
        if (*(a1 + 397) != 1)
        {
          v7 = *(a1 + 520);

          v7(v8);
        }
      }
    }
  }
}

void sub_188F093D8(uint64_t a1)
{
  v1 = *(a1 + 440);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 440) = v3;
    if (!v3)
    {
      v5 = *(a1 + 32);
      os_unfair_lock_lock((v5 + 24));
      v6 = *(v5 + 16);

      os_unfair_lock_unlock((v5 + 24));
      if (v6)
      {
      }

      else
      {
        swift_beginAccess();
        if (*(a1 + 345) != 1)
        {
          v7 = *(a1 + 456);

          v7(v8);
        }
      }
    }
  }
}

void sub_188F094AC(uint64_t a1)
{
  v1 = *(a1 + 128);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 128) = v3;
    if (!v3)
    {
      v5 = *(a1 + 32);
      os_unfair_lock_lock((v5 + 24));
      v6 = *(v5 + 16);

      os_unfair_lock_unlock((v5 + 24));
      if (v6)
      {
      }

      else
      {
        swift_beginAccess();
        if (*(a1 + 96) != 1)
        {
          v7 = *(a1 + 144);

          v7(v8);
        }
      }
    }
  }
}

void sub_188F09580(uint64_t a1)
{
  v1 = *(a1 + 280);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 280) = v3;
    if (!v3)
    {
      v5 = *(a1 + 32);
      os_unfair_lock_lock((v5 + 24));
      v6 = *(v5 + 16);

      os_unfair_lock_unlock((v5 + 24));
      if (v6)
      {
      }

      else
      {
        swift_beginAccess();
        if (*(a1 + 221) != 1)
        {
          v7 = *(a1 + 296);

          v7(v8);
        }
      }
    }
  }
}

void sub_188F09654(uint64_t a1)
{
  v1 = *(a1 + 160);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 160) = v3;
    if (!v3)
    {
      v5 = *(a1 + 32);
      os_unfair_lock_lock((v5 + 24));
      v6 = *(v5 + 16);

      os_unfair_lock_unlock((v5 + 24));
      if (v6)
      {
      }

      else
      {
        swift_beginAccess();
        if (*(a1 + 121) != 1)
        {
          v7 = *(a1 + 176);

          v7(v8);
        }
      }
    }
  }
}

void sub_188F09728(uint64_t a1)
{
  v1 = *(a1 + 280);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 280) = v3;
    if (!v3)
    {
      v5 = *(a1 + 32);
      os_unfair_lock_lock((v5 + 24));
      v6 = *(v5 + 16);

      os_unfair_lock_unlock((v5 + 24));
      if (v6)
      {
      }

      else
      {
        swift_beginAccess();
        if (*(a1 + 217) != 1)
        {
          v7 = *(a1 + 296);

          v7(v8);
        }
      }
    }
  }
}

void sub_188F097FC(uint64_t a1)
{
  v1 = *(a1 + 760);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 760) = v3;
    if (!v3)
    {
      v5 = *(a1 + 32);
      os_unfair_lock_lock((v5 + 24));
      v6 = *(v5 + 16);

      os_unfair_lock_unlock((v5 + 24));
      if (v6)
      {
      }

      else
      {
        swift_beginAccess();
        if (*(a1 + 601) != 1)
        {
          v7 = *(a1 + 776);

          v7(v8);
        }
      }
    }
  }
}

void sub_188F098D4(uint64_t a1)
{
  v1 = *(a1 + 200);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 200) = v3;
    if (!v3)
    {
      v5 = *(a1 + 32);
      os_unfair_lock_lock((v5 + 24));
      v6 = *(v5 + 16);

      os_unfair_lock_unlock((v5 + 24));
      if (v6)
      {
      }

      else
      {
        swift_beginAccess();
        if (*(a1 + 153) != 1)
        {
          v7 = *(a1 + 216);

          v7(v8);
        }
      }
    }
  }
}

void sub_188F099A8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_188AA72A8(a1, v62);
  if (!v64)
  {
    v66 = v62[2];
    v67 = v62[3];
    v68 = v62[4];
    v69 = v63;
    v65[0] = v62[0];
    v65[1] = v62[1];
    v53 = 0u;
    memset(v54, 0, 25);
    v51 = 0u;
    v52 = 0u;
    *&v56 = 0;
    v55 = 0uLL;
    BYTE8(v56) = 0;
    *&v58 = 0;
    v57 = 0uLL;
    DWORD2(v58) = 0;
    *&v59 = 0x3FF0000000000000;
    *(&v59 + 1) = a4;
    *(&v60 + 1) = a2;
    *&v60 = 0;
    v61 = a2;

    swift_bridgeObjectRetain_n();
    sub_188AA79A0(v65, 1);
    if (a3 != 1)
    {

      *&v60 = a3;
    }

    if ((*(&v66 + 1) & 0x8000000000000000) == 0)
    {
      goto LABEL_31;
    }

    v14 = v69;
    v15 = *v65;
    if (*(&v68 + 1) > 0.0)
    {
      sub_188F0AA6C(&v61, *(v5 + 32), *(&v68 + 1));
    }

    if (v14 <= 0.0)
    {
      goto LABEL_31;
    }

    sub_188CD18C0(a4, a2);
    if (v16)
    {
      v17 = *(v16 + 16);
      if (v17)
      {
        *&v50[0] = MEMORY[0x1E69E7CC0];
        v18 = v16;
        sub_188CCF904(0, v17, 0);
        v19 = 6.28318531 / v15 * (6.28318531 / v15) * v14;
        v20 = *&v50[0];
        v21 = *(*&v50[0] + 16);
        v22 = 32 * v21;
        v23 = v18 + 3;
        do
        {
          v24 = v23[-1];
          v25 = *v23;
          *&v50[0] = v20;
          v26 = *(v20 + 24);
          v27 = v21 + 1;
          if (v21 >= v26 >> 1)
          {
            v46 = v25;
            v47 = v24;
            sub_188CCF904((v26 > 1), v21 + 1, 1);
            v25 = v46;
            v24 = v47;
            v19 = 6.28318531 / v15 * (6.28318531 / v15) * v14;
            v20 = *&v50[0];
          }

          *(v20 + 16) = v27;
          v28 = (v20 + v22);
          v28[2] = vmulq_n_f64(v24, v19);
          v28[3] = vmulq_n_f64(v25, v19);
          v22 += 32;
          v23 += 2;
          v21 = v27;
          --v17;
        }

        while (v17);

        v30 = v60;
        if (!v60)
        {
          goto LABEL_30;
        }

        goto LABEL_25;
      }

      v30 = v60;
      v20 = MEMORY[0x1E69E7CC0];
      if (v60)
      {
LABEL_25:
        v31 = *(v30 + 16);
        v32 = *(v20 + 16);
        if (v31 == v32)
        {

          v34 = sub_188EF6C40(v33, v20);
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          v20 = v34;
        }

        else if (v32 >= v31)
        {
        }

        else
        {

          v20 = v30;
        }
      }
    }

    else
    {
      v20 = v60;
    }

LABEL_30:
    *&v60 = v20;
LABEL_31:
    v35 = v57;
    v49[8] = v58;
    v49[9] = v59;
    v36 = v59;
    v37 = v60;
    v49[10] = v60;
    v49[11] = v61;
    v38 = v54[1];
    v39 = v54[0];
    v49[4] = v54[1];
    v49[5] = v55;
    v40 = v55;
    v41 = v56;
    v49[6] = v56;
    v49[7] = v57;
    v49[0] = v51;
    v49[1] = v52;
    v43 = v51;
    v42 = v52;
    v44 = v53;
    v49[2] = v53;
    v49[3] = v54[0];
    *(a5 + 128) = v58;
    *(a5 + 144) = v36;
    v45 = v61;
    *(a5 + 160) = v37;
    *(a5 + 176) = v45;
    *(a5 + 64) = v38;
    *(a5 + 80) = v40;
    *(a5 + 96) = v41;
    *(a5 + 112) = v35;
    *a5 = v43;
    *(a5 + 16) = v42;
    *(a5 + 32) = v44;
    *(a5 + 48) = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936598, &qword_18A650D40);
    swift_storeEnumTagMultiPayload();
    v50[8] = v58;
    v50[9] = v59;
    v50[10] = v60;
    v50[11] = v61;
    v50[4] = v54[1];
    v50[5] = v55;
    v50[6] = v56;
    v50[7] = v57;
    v50[0] = v51;
    v50[1] = v52;
    v50[2] = v53;
    v50[3] = v54[0];
    sub_188A3F29C(v49, v48, &qword_1EA9367F8, &qword_18A650F40);
    sub_188A3F5FC(v50, &qword_1EA9367F8, &qword_18A650F40);
    return;
  }

  if (v64 == 2)
  {
    v10 = *&v62[0];
    v11 = BYTE8(v62[0]);
    *a5 = 0;
    *(a5 + 40) = 0;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936590, &qword_18A650D38);
    sub_188CCF32C();

    sub_18A4A49B8();
    v13 = *(v12 + 64);
    *(a5 + 8) = v10;
    *(a5 + 16) = a2;
    *(a5 + 24) = a2;
    *(a5 + 32) = a4;
    *(a5 + v13) = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936598, &qword_18A650D40);
    swift_storeEnumTagMultiPayload();
    swift_bridgeObjectRetain_n();
  }

  else
  {
    sub_188AA7808(v62);
    if (a3 == 1)
    {
      v29 = 0;
    }

    else
    {
      v29 = a3;
    }

    *a5 = a4;
    *(a5 + 8) = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936598, &qword_18A650D40);
    swift_storeEnumTagMultiPayload();

    sub_188F0D090(a3);
  }
}

uint64_t sub_188F09E50@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v11 = *a3;
  v10 = *(a3 + 8);
  v12 = *(a3 + 24);
  v55 = *(a3 + 16);
  v13 = *(a3 + 32) | (*(a3 + 36) << 32);
  sub_188AA72A8(a1, v60);
  if (!v62)
  {
    v76 = v60[2];
    v77 = v60[3];
    v78 = v60[4];
    v75[0] = v60[0];
    v75[1] = v60[1];
    v25 = a2[1];
    *(&__src[16] + 8) = *a2;
    *(&__src[17] + 8) = v25;
    v26 = *(a4 + 16);
    *(&__src[11] + 8) = *a4;
    v79 = v61;
    *(&__src[12] + 8) = v26;
    memset(__src, 0, 73);
    memset(&__src[7], 0, 37);
    memset(&__src[5], 0, 25);
    *&__src[10] = 0;
    *(&__src[9] + 1) = 0;
    DWORD2(__src[10]) = 0;
    *&__src[11] = 0x3FF0000000000000;
    *(&__src[18] + 5) = *(a2 + 29);
    *(&__src[13] + 5) = *(a4 + 29);
    memset(&__src[14], 0, 37);
    *(&__src[21] + 8) = 0u;
    *(&__src[22] + 8) = 0u;
    *(&__src[23] + 5) = 0;
    *(&__src[20] + 13) = *(a2 + 29);
    __src[20] = a2[1];
    __src[19] = *(&__src[16] + 8);
    sub_188F0D2E8(a2, v58);
    sub_188F0D2E8(a4, v58);
    sub_188F0D2E8(a2, v58);
    sub_188EE284C(v75, 1);
    if (v11 != 1)
    {
      v51 = *(&__src[14] + 1);
      v52 = *&__src[14];
      v49 = *(&__src[15] + 1);
      v50 = *&__src[15];
      sub_188F0B550(v11, v10, v55, v12);
      sub_188F0B59C(v52, v51, v50, v49);
      *&__src[14] = v11;
      *(&__src[14] + 1) = v10;
      *&__src[15] = v55;
      *(&__src[15] + 1) = v12;
      BYTE4(__src[16]) = BYTE4(v13);
      LODWORD(__src[16]) = v13;
    }

    if ((*(&v76 + 1) & 0x8000000000000000) == 0)
    {
      goto LABEL_39;
    }

    v27 = v79;
    v28 = *v75;
    if (*(&v78 + 1) > 0.0)
    {
      v29 = v5[5];
      v72 = v5[4];
      v73 = v29;
      v74[0] = v5[6];
      *(v74 + 13) = *(v5 + 109);
      v30 = v5[1];
      v68 = *v5;
      v69 = v30;
      v31 = v5[3];
      v70 = v5[2];
      v71 = v31;
      sub_188F00F98(&__src[19], *(&v78 + 1));
    }

    if (v27 <= 0.0)
    {
      goto LABEL_39;
    }

    sub_1890905D8(a4, a2, &v63);
    if (v63)
    {
      *(v58 + 8) = v64[0];
      *(&v58[1] + 5) = *(v64 + 13);
      *&v58[0] = v63;
      sub_18908FB80(6.28318531 / v28 * (6.28318531 / v28) * v27);
      v32 = *(&v58[0] + 1);
      v33 = *&v58[0];
      v34 = *(&v58[1] + 1);
      v35 = *&v58[1];
      v36 = 0x100000000;
      if (!BYTE4(v58[2]))
      {
        v36 = 0;
      }

      v37 = v36 | LODWORD(v58[2]);
      v38 = *&__src[14];
      if (*&__src[14])
      {
        goto LABEL_14;
      }
    }

    else
    {
      v33 = 0;
      v32 = 0;
      v35 = 0;
      v34 = 0;
      v37 = 0;
      v38 = *&__src[14];
      if (*&__src[14])
      {
LABEL_14:
        v39 = *(&__src[14] + 1);
        v40 = __src[15];
        v41 = LODWORD(__src[16]) | (BYTE4(__src[16]) << 32);
        if (v33)
        {
          v65[0] = v33;
          v65[1] = v32;
          v65[2] = v35;
          v65[3] = v34;
          v66 = v37;
          v67 = BYTE4(v37);
          *&v58[0] = v38;
          *(&v58[0] + 1) = *(&__src[14] + 1);
          v58[1] = __src[15];
          LODWORD(v58[2]) = __src[16];
          BYTE4(v58[2]) = BYTE4(v41) & 1;
          v53 = v32;
          v54 = *(&__src[15] + 1);
          sub_188F0B550(v33, v32, v35, v34);
          sub_188F0B550(v38, v39, v40, *(&v40 + 1));
          sub_18908FD40(v65);
          sub_188F0B59C(v33, v53, v35, v34);
          sub_188F0B59C(v38, v39, v40, v54);

          v32 = *(&v58[0] + 1);
          v33 = *&v58[0];
          v34 = *(&v58[1] + 1);
          v35 = *&v58[1];
          v42 = 0x100000000;
          if (!BYTE4(v58[2]))
          {
            v42 = 0;
          }

          v37 = v42 | LODWORD(v58[2]);
        }

        else
        {
          v37 = v41 & 0x1FFFFFFFFLL;
          v33 = v38;
          v32 = *(&__src[14] + 1);
          v34 = *(&__src[15] + 1);
          v35 = *&__src[15];
        }

LABEL_38:
        *&__src[14] = v33;
        *(&__src[14] + 1) = v32;
        *&__src[15] = v35;
        *(&__src[15] + 1) = v34;
        LODWORD(__src[16]) = v37;
        BYTE4(__src[16]) = BYTE4(v37);
LABEL_39:
        memcpy(__dst, __src, 0x17DuLL);
        memcpy(a5, __src, 0x17DuLL);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936628, &qword_18A650DB8);
        swift_storeEnumTagMultiPayload();
        memcpy(v58, __src, 0x17DuLL);
        sub_188A3F29C(__dst, v56, &qword_1EA936840, &qword_18A650F88);
        return sub_188A3F5FC(v58, &qword_1EA936840, &qword_18A650F88);
      }
    }

    if (!v33)
    {
      v32 = 0;
      v35 = 0;
      v34 = 0;
      v37 = 0;
    }

    goto LABEL_38;
  }

  if (v62 == 2)
  {
    v14 = *&v60[0];
    v15 = BYTE8(v60[0]);
    *a5 = 0;
    *(a5 + 133) = 0;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936620, &qword_18A650DB0);
    v17 = *(a4 + 16);
    __src[0] = *a4;
    __src[1] = v17;
    *(&__src[1] + 13) = *(a4 + 29);
    sub_188F0D40C(__src, v58);
    sub_188F0D398();
    sub_18A4A49B8();
    v18 = *(v16 + 64);
    a5[1] = v14;
    v19 = *a2;
    v20 = a2[1];
    *(a5 + 1) = *a2;
    *(a5 + 2) = v20;
    v21 = *(a2 + 29);
    *(a5 + 45) = v21;
    *(a5 + 7) = v19;
    *(a5 + 9) = v20;
    *(a5 + 85) = v21;
    *(a5 + 125) = *(a4 + 29);
    v22 = *(a4 + 16);
    *(a5 + 6) = *a4;
    *(a5 + 7) = v22;
    *(a5 + v18) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936628, &qword_18A650DB8);
    swift_storeEnumTagMultiPayload();
    v23 = a2[1];
    v58[0] = *a2;
    v58[1] = v23;
    *(&v58[1] + 13) = *(a2 + 29);
    sub_188F0D40C(v58, __dst);
    return sub_188F0D40C(v58, __dst);
  }

  else
  {
    sub_188AA7808(v60);
    if (v11 == 1)
    {
      v43 = 0;
    }

    else
    {
      v43 = v11;
    }

    if (v11 == 1)
    {
      v44 = 0;
    }

    else
    {
      v44 = v10;
    }

    if (v11 == 1)
    {
      v45 = 0;
    }

    else
    {
      v45 = v55;
    }

    if (v11 == 1)
    {
      v46 = 0;
    }

    else
    {
      v46 = v12;
    }

    if (v11 == 1)
    {
      v47 = 0;
    }

    else
    {
      v47 = v13;
    }

    v48 = *(a4 + 16);
    *a5 = *a4;
    *(a5 + 1) = v48;
    *(a5 + 29) = *(a4 + 29);
    a5[5] = v43;
    a5[6] = v44;
    a5[7] = v45;
    a5[8] = v46;
    *(a5 + 18) = v47;
    *(a5 + 76) = BYTE4(v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936628, &qword_18A650DB8);
    swift_storeEnumTagMultiPayload();
    sub_188F0D2E8(a4, __src);
    return sub_188A3F29C(a3, __src, &qword_1EA936850, &qword_18A650F98);
  }
}

uint64_t sub_188F0A4EC(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = *(a1 + 40);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  v5 = v4;
  os_unfair_lock_unlock((v3 + 24));
  if (v4)
  {
  }

  return Strong;
}

uint64_t sub_188F0A568(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = *(a1 + 40);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  v5 = v4;
  os_unfair_lock_unlock((v3 + 24));
  if (v4)
  {
  }

  return Strong;
}

uint64_t sub_188F0A5E4(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = *(a1 + 40);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  v5 = v4;
  os_unfair_lock_unlock((v3 + 24));
  if (v4)
  {
  }

  return Strong;
}

uint64_t sub_188F0A660(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = *(a1 + 40);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  v5 = v4;
  os_unfair_lock_unlock((v3 + 24));
  if (v4)
  {
  }

  return Strong;
}

uint64_t sub_188F0A6DC(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = *(a1 + 40);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  v5 = v4;
  os_unfair_lock_unlock((v3 + 24));
  if (v4)
  {
  }

  return Strong;
}

uint64_t sub_188F0A758(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = *(a1 + 40);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  v5 = v4;
  os_unfair_lock_unlock((v3 + 24));
  if (v4)
  {
  }

  return Strong;
}

uint64_t sub_188F0A7D4(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = *(a1 + 40);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  v5 = v4;
  os_unfair_lock_unlock((v3 + 24));
  if (v4)
  {
  }

  return Strong;
}

uint64_t sub_188F0A850(uint64_t a1, uint64_t a2, uint64_t (*a3)(_OWORD *, _OWORD *, uint64_t), uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 36);
  v7 = *(a2 + 32);
  v8 = *(a2 + 36);
  v9 = *(a1 + 16);
  v15[0] = *a1;
  v15[1] = v9;
  v17 = v6;
  v16 = v5;
  v10 = *(a2 + 16);
  v12[0] = *a2;
  v12[1] = v10;
  v14 = v8;
  v13 = v7;
  return a3(v15, v12, a5);
}

uint64_t sub_188F0A8C0(uint64_t (*a1)(_OWORD *, _OWORD *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 32);
  v5 = *(a3 + 36);
  v6 = *(a4 + 32);
  v7 = *(a4 + 36);
  v8 = *(a3 + 16);
  v14[0] = *a3;
  v14[1] = v8;
  v16 = v5;
  v15 = v4;
  v9 = *(a4 + 16);
  v11[0] = *a4;
  v11[1] = v9;
  v13 = v7;
  v12 = v6;
  return a1(v14, v11);
}

void sub_188F0A92C(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *(a2 + 36);
  v7 = *(a2 + 8);
  v8 = a1 + 9;
  v11 = a1[6];
  v12 = a1[5];
  v9 = a1[7];
  v10 = a1[8];
  sub_188F0B550(*a2, v3, v4, v5);
  sub_188F0B59C(v12, v11, v9, v10);
  *(v8 - 4) = v2;
  *(v8 - 3) = v3;
  *(v8 - 2) = v4;
  *(v8 - 1) = v5;
  *(v8 + 4) = v6;
  *v8 = v7;
}

uint64_t sub_188F0A9DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10, __n128 a11, __n128 a12, __n128 a13, __n128 a14, __n128 a15, __n128 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t (*a26)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, __n128, __n128, __n128, __n128, __n128, __n128, __n128, __n128, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  a12.n128_u64[0] = a4[3];
  a13.n128_u64[0] = *a5;
  a14.n128_u64[0] = a5[1];
  a15.n128_u64[0] = a5[2];
  a16.n128_u64[0] = a5[3];
  v32 = a19;
  LOBYTE(a19) = a21;
  HIDWORD(a19) = HIDWORD(a21);
  v34 = __PAIR64__(a10.n128_u32[0], a9.n128_u32[0]);
  LODWORD(a21) = a11.n128_u32[0];
  a9.n128_u64[0] = *a4;
  a10.n128_u64[0] = a4[1];
  a11.n128_u64[0] = a4[2];

  return a26(a1, a2, a3, a6, a7, a8, a17, a18, a9, a10, a11, a12, a13, a14, a15, a16, v32, a20, a19, v34, a21, a22);
}

void sub_188F0AA6C(uint64_t *a1, uint64_t a2, double a3)
{
  if (a2 == 1)
  {
    return;
  }

  if (!a2)
  {
    v7 = *a1;
    goto LABEL_11;
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    v23 = a3 / 1000.0 / (1.0 - a3);
    v24 = MEMORY[0x1E69E7CC0];

    sub_188CCF904(0, v5, 0);
    v6 = v23;
    v7 = v24;
    v8 = *(v24 + 16);
    v9 = 32 * v8;
    v10 = (a2 + 48);
    do
    {
      v11 = v10[-1];
      v12 = *v10;
      v13 = *(v24 + 24);
      v14 = v8 + 1;
      if (v8 >= v13 >> 1)
      {
        v21 = *v10;
        v22 = v10[-1];
        sub_188CCF904((v13 > 1), v8 + 1, 1);
        v12 = v21;
        v11 = v22;
        v6 = v23;
      }

      *(v24 + 16) = v14;
      v15 = (v24 + v9);
      v15[2] = vmulq_n_f64(v11, v6);
      v15[3] = vmulq_n_f64(v12, v6);
      v9 += 32;
      v10 += 2;
      v8 = v14;
      --v5;
    }

    while (v5);
    v16 = *a1;
    if (!*a1)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  v16 = *a1;

  v7 = MEMORY[0x1E69E7CC0];
  if (!v16)
  {
LABEL_11:
    sub_188CD0030(a2);
LABEL_12:
    *a1 = v7;
    return;
  }

LABEL_14:
  v17 = *(v16 + 16);
  v18 = *(v7 + 16);
  if (v17 == v18)
  {

    v20 = sub_188EF6C40(v19, v7);

    swift_bridgeObjectRelease_n();
    sub_188CD0030(a2);

    *a1 = v20;
  }

  else
  {
    if (v18 >= v17)
    {

      sub_188CD0030(a2);

      goto LABEL_12;
    }

    sub_188CD0030(a2);

    *a1 = v16;
  }
}

void sub_188F0AC68(uint64_t *a1, uint64_t a2, double a3)
{
  if (a2)
  {
    v6 = *(a2 + 16);
    swift_bridgeObjectRetain_n();
    if (v6)
    {
      v7 = a2;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_188D75E50(a2);
      }

      if (v6 > *(v7 + 2))
      {
        __break(1u);
        return;
      }

      v8 = a3 / 1000.0 / (1.0 - a3);
      if (v6 > 3)
      {
        v9 = v6 & 0x7FFFFFFFFFFFFFFCLL;
        v10 = (v7 + 48);
        v11 = v6 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v12 = vmulq_n_f64(*v10, v8);
          v10[-1] = vmulq_n_f64(v10[-1], v8);
          *v10 = v12;
          v10 += 2;
          v11 -= 4;
        }

        while (v11);
        if (v6 == v9)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v9 = 0;
      }

      v13 = v6 - v9;
      v14 = 8 * v9 + 32;
      do
      {
        *&v7[v14] = v8 * *&v7[v14];
        v14 += 8;
        --v13;
      }

      while (v13);
    }

    else
    {
      v7 = a2;
    }

LABEL_14:
    sub_188D85564(*a1, v7);
    v16 = v15;

    *a1 = v16;
  }
}

void sub_188F0ADA8(__int128 *a1, __int128 *a2, uint64_t a3, void (*a4)(void *), float a5, uint64_t a6, uint64_t a7, char a8, char a9, id *a10, uint64_t a11)
{
  v18 = objc_opt_self();
  v19 = a1[1];
  v28 = *a1;
  v29 = v19;
  v20 = a1[3];
  v30 = a1[2];
  v31 = v20;
  v32 = a1[4];
  v21 = [v18 valueWithCAColorMatrix_];
  if (!v21)
  {
    goto LABEL_12;
  }

  v22 = v21;
  v23 = sub_188A34624(0, &qword_1ED48EC30, 0x1E696B098);
  v33[3] = v23;
  v33[0] = v22;
  if (a4)
  {
    a4(v33);
  }

  sub_188A55598(v33, v27);
  v24 = a2[1];
  v28 = *a2;
  v29 = v24;
  v25 = a2[3];
  v30 = a2[2];
  v31 = v25;
  v32 = a2[4];
  v26 = [v18 valueWithCAColorMatrix_];
  if (!v26)
  {
    goto LABEL_13;
  }

  *(&v29 + 1) = v23;
  *&v28 = v26;
  if ((LODWORD(a5) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
  }

  else if (a5 > -9.2234e18)
  {
    if (a5 < 9.2234e18)
    {
      sub_188AAC950(v27, &v28, a5, a8 & 1, a9 & 1, a10, a11, a3);
      sub_188A3F5FC(v27, &qword_1EA934050, qword_18A64CA10);
      sub_188A3F5FC(&v28, &qword_1EA934050, qword_18A64CA10);
      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      return;
    }

    goto LABEL_11;
  }

  __break(1u);
LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
}

void sub_188F0AF7C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *), float a5, uint64_t a6, uint64_t a7, char a8, char a9, id *a10, uint64_t a11)
{
  sub_188CD27A4(a1, v19);
  if (a4)
  {
    a4(v19);
  }

  sub_188A55598(v19, v18);
  sub_188CD27A4(a2, v17);
  if ((LODWORD(a5) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a5 <= -9.2234e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a5 < 9.2234e18)
  {
    sub_188AAC950(v18, v17, a5, a8 & 1, a9 & 1, a10, a11, a3);
    sub_188A3F5FC(v17, &qword_1EA934050, qword_18A64CA10);
    sub_188A3F5FC(v18, &qword_1EA934050, qword_18A64CA10);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_188F0B0B0(float a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *), uint64_t a6, uint64_t a7, char a8, char a9, id *a10, uint64_t a11)
{
  sub_188EB96B4(v18);
  if (a5)
  {
    a5(v18);
  }

  sub_188A55598(v18, v17);
  sub_188EB96B4(v16);
  if ((LODWORD(a1) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 <= -9.2234e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a1 < 9.2234e18)
  {
    sub_188AAC950(v17, v16, a1, a8 & 1, a9 & 1, a10, a11, a4);
    sub_188A3F5FC(v16, &qword_1EA934050, qword_18A64CA10);
    sub_188A3F5FC(v17, &qword_1EA934050, qword_18A64CA10);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_188F0B1EC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, __n128), float a5, uint64_t a6, uint64_t a7, char a8, char a9, id *a10, uint64_t a11)
{
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936368, &qword_18A650800);
  v21[3] = v18;
  v21[0] = a1;

  if (a4)
  {
    (a4)(v21);
  }

  sub_188A55598(v21, v20);
  v19[3] = v18;
  v19[0] = a2;
  if ((LODWORD(a5) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a5 <= -9.2234e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a5 < 9.2234e18)
  {

    sub_188AAC950(v20, v19, a5, a8 & 1, a9 & 1, a10, a11, a3);
    sub_188A3F5FC(v20, &qword_1EA934050, qword_18A64CA10);
    sub_188A3F5FC(v19, &qword_1EA934050, qword_18A64CA10);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_188F0B364(float a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *), uint64_t a6, uint64_t a7, char a8, char a9, id *a10, uint64_t a11)
{
  sub_18908F708(v18);
  if (a5)
  {
    a5(v18);
  }

  sub_188A55598(v18, v17);
  sub_18908F89C(v18, v16);
  if ((LODWORD(a1) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 <= -9.2234e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a1 < 9.2234e18)
  {
    sub_188AAC950(v17, v16, a1, a8 & 1, a9 & 1, a10, a11, a4);
    sub_188A3F5FC(v16, &qword_1EA934050, qword_18A64CA10);
    sub_188A3F5FC(v17, &qword_1EA934050, qword_18A64CA10);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    return;
  }

LABEL_9:
  __break(1u);
}

double sub_188F0B550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
  }

  return result;
}

double sub_188F0B59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
  }

  return result;
}

void sub_188F0B5E8(uint64_t a1, void (*a2)(void *), double a3, double a4, double a5, double a6, float a7, uint64_t a8, uint64_t a9, char a10, char a11, id *a12, uint64_t a13, SEL *a14)
{
  v24 = objc_opt_self();
  v25 = [v24 *a14];
  v26 = sub_188A34624(0, &qword_1ED48EC30, 0x1E696B098);
  v31[3] = v26;
  v31[0] = v25;
  if (a2)
  {
    a2(v31);
  }

  sub_188A55598(v31, v30);
  v27 = [v24 *a14];
  v29[3] = v26;
  v29[0] = v27;
  if ((LODWORD(a7) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a7 <= -9.2234e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a7 < 9.2234e18)
  {
    sub_188AAC950(v30, v29, a7, a10 & 1, a11 & 1, a12, a13, a1);
    sub_188A3F5FC(v30, &qword_1EA934050, qword_18A64CA10);
    sub_188A3F5FC(v29, &qword_1EA934050, qword_18A64CA10);
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_188F0B7A8(uint64_t a1, void (*a2)(void *), double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, uint64_t a11, uint64_t a12, char a13, char a14, id *a15, uint64_t a16, float a17)
{
  v25 = 0.0;
  v26 = 0.0;
  v27 = 0.0;
  if (a6 > 0.0)
  {
    v27 = a3 / a6;
    v26 = a4 / a6;
    v25 = a5 / a6;
  }

  v28 = [objc_allocWithZone(UIColor) initWithRed:v27 green:v26 blue:v25 alpha:a6];
  v29 = [v28 CGColor];

  type metadata accessor for CGColor(0);
  v31 = v30;
  v41[3] = v30;
  v41[0] = v29;
  if (a2)
  {
    a2(v41);
  }

  sub_188A55598(v41, v40);
  v32 = 0.0;
  v33 = 0.0;
  v34 = 0.0;
  if (a10 > 0.0)
  {
    v34 = a7 / a10;
    v33 = a8 / a10;
    v32 = a9 / a10;
  }

  v35 = [objc_allocWithZone(UIColor) initWithRed:v34 green:v33 blue:v32 alpha:a10];
  v36 = [v35 CGColor];

  v39[3] = v31;
  v39[0] = v36;
  if ((LODWORD(a17) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (a17 <= -9.2234e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (a17 < 9.2234e18)
  {
    sub_188AAC950(v40, v39, a17, a13 & 1, a14 & 1, a15, a16, a1);
    sub_188A3F5FC(v40, &qword_1EA934050, qword_18A64CA10);
    sub_188A3F5FC(v39, &qword_1EA934050, qword_18A64CA10);
    __swift_destroy_boxed_opaque_existential_0Tm(v41);
    return;
  }

LABEL_13:
  __break(1u);
}

void sub_188F0B9DC(uint64_t a1, void (*a2)(void *), double a3, double a4, float a5, uint64_t a6, uint64_t a7, char a8, char a9, id *a10, uint64_t a11)
{
  v18 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v19 = sub_188A34624(0, &qword_1ED48FD80, 0x1E696AD98);
  v23[3] = v19;
  v23[0] = v18;
  if (a2)
  {
    a2(v23);
  }

  sub_188A55598(v23, v22);
  v21[3] = v19;
  v21[0] = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  if ((LODWORD(a5) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a5 <= -9.2234e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a5 < 9.2234e18)
  {
    sub_188AAC950(v22, v21, a5, a8 & 1, a9 & 1, a10, a11, a1);
    sub_188A3F5FC(v22, &qword_1EA934050, qword_18A64CA10);
    sub_188A3F5FC(v21, &qword_1EA934050, qword_18A64CA10);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_188F0BB80(uint64_t a1, void (*a2)(void *), double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, uint64_t a11, uint64_t a12, char a13, char a14, id *a15, uint64_t a16, float a17)
{
  v29 = objc_opt_self();
  v30 = [v29 valueWithCGRect_];
  v31 = sub_188A34624(0, &qword_1ED48EC30, 0x1E696B098);
  v36[3] = v31;
  v36[0] = v30;
  if (a2)
  {
    a2(v36);
  }

  sub_188A55598(v36, v35);
  v34[3] = v31;
  v34[0] = [v29 valueWithCGRect_];
  if ((LODWORD(a17) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a17 <= -9.2234e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a17 < 9.2234e18)
  {
    sub_188AAC950(v35, v34, a17, a13 & 1, a14 & 1, a15, a16, a1);
    sub_188A3F5FC(v35, &qword_1EA934050, qword_18A64CA10);
    sub_188A3F5FC(v34, &qword_1EA934050, qword_18A64CA10);
    __swift_destroy_boxed_opaque_existential_0Tm(v36);
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_188F0BD68(float a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *), uint64_t a6, uint64_t a7, char a8, char a9, id *a10, uint64_t a11)
{
  sub_188AA9844(&v21);
  v15 = objc_opt_self();
  v16 = [v15 valueWithCATransform3D_];
  v17 = sub_188A34624(0, &qword_1ED48EC30, 0x1E696B098);
  v23[3] = v17;
  v23[0] = v16;
  if (a5)
  {
    a5(v23);
  }

  sub_188A55598(v23, v20);
  v18 = [v15 valueWithCATransform3D_];
  v22 = v17;
  *&v21 = v18;
  if ((LODWORD(a1) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 <= -9.2234e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a1 < 9.2234e18)
  {
    sub_188AAC950(v20, &v21, a1, a8 & 1, a9 & 1, a10, a11, a4);
    sub_188A3F5FC(v20, &qword_1EA934050, qword_18A64CA10);
    sub_188A3F5FC(&v21, &qword_1EA934050, qword_18A64CA10);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t objectdestroy_217Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void sub_188F0BF58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 44);
  v8 = *(v3 + 52);
  v9 = *(v3 + 56);
  v10 = *(v3 + 64);
  v11 = *(v3 + 72);
  v12 = *(a1 + 112);
  v20[6] = *(a1 + 96);
  v20[7] = v12;
  v21 = *(a1 + 128);
  v13 = *(a1 + 48);
  v20[2] = *(a1 + 32);
  v20[3] = v13;
  v14 = *(a1 + 80);
  v20[4] = *(a1 + 64);
  v20[5] = v14;
  v15 = *(a1 + 16);
  v20[0] = *a1;
  v20[1] = v15;
  v16 = *(a2 + 112);
  v22[6] = *(a2 + 96);
  v22[7] = v16;
  v23 = *(a2 + 128);
  v17 = *(a2 + 48);
  v22[2] = *(a2 + 32);
  v22[3] = v17;
  v18 = *(a2 + 80);
  v22[4] = *(a2 + 64);
  v22[5] = v18;
  v19 = *(a2 + 16);
  v22[0] = *a2;
  v22[1] = v19;
  sub_188F0BD68(v7, v20, v22, a3, v4, v5, v6, v8, v9, v10, v11);
}

void sub_188F0C0E8(__int128 *a1, __int128 *a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 44);
  v8 = *(v3 + 52);
  v9 = *(v3 + 56);
  v10 = *(v3 + 64);
  v11 = *(v3 + 72);
  v12 = a1[1];
  v14 = *a1;
  v15[0] = v12;
  *(v15 + 13) = *(a1 + 29);
  v13 = a2[1];
  v16 = *a2;
  v17[0] = v13;
  *(v17 + 13) = *(a2 + 29);
  sub_188F0B364(v7, &v14, &v16, a3, v4, v5, v6, v8, v9, v10, v11);
}

void sub_188F0C14C(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 44);
  v8 = *(v3 + 52);
  v9 = *(v3 + 56);
  v10 = *(v3 + 64);
  v11 = *(v3 + 72);
  v12 = a1[1];
  v16[0] = *a1;
  v16[1] = v12;
  v13 = a1[3];
  v16[2] = a1[2];
  v16[3] = v13;
  v14 = a2[1];
  v17[0] = *a2;
  v17[1] = v14;
  v15 = a2[3];
  v17[2] = a2[2];
  v17[3] = v15;
  sub_188F0B0B0(v7, v16, v17, a3, v4, v5, v6, v8, v9, v10, v11);
}

void sub_188F0C250(__int128 *a1, __int128 *a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 44);
  v8 = *(v3 + 52);
  v9 = *(v3 + 56);
  v10 = *(v3 + 64);
  v11 = *(v3 + 72);
  v12 = a1[3];
  v16[2] = a1[2];
  v16[3] = v12;
  v16[4] = a1[4];
  v13 = a1[1];
  v16[0] = *a1;
  v16[1] = v13;
  v14 = a2[3];
  v17[2] = a2[2];
  v17[3] = v14;
  v17[4] = a2[4];
  v15 = a2[1];
  v17[0] = *a2;
  v17[1] = v15;
  sub_188F0ADA8(v16, v17, a3, v4, v7, v5, v6, v8, v9, v10, v11);
}

uint64_t objectdestroy_35Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

double sub_188F0C30C(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v10 = *(*(*(v9 + 16) - 8) + 80);
  v11 = (v10 + 48) & ~v10;
  v12 = *(*(*(v9 + 16) - 8) + 64);
  v13 = (v12 + v10 + v11) & ~v10;
  v14 = (v12 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 47) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 23) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 27) & 0xFFFFFFFFFFFFFFF8;
  v19 = v9 + v17;
  return sub_188EDE5D0(a1, *(v9 + 32), *(v9 + 40), (v9 + v11), v9 + v13, (v9 + v14), *(v9 + v15), *(v9 + v15 + 8), *(v9 + v18), *(v9 + v18 + 4), *(v9 + v18 + 8), a5, a6, a7, a8, a9, *(v9 + v16), *(v9 + v16 + 8), *v19, *(v19 + 8), *(v19 + 16), *(v19 + 20), *(v9 + ((v18 + 19) & 0xFFFFFFFFFFFFFFF8)), *(v9 + ((v18 + 19) & 0xFFFFFFFFFFFFFFF8) + 8), *(v9 + ((v18 + 35) & 0xFFFFFFFFFFFFFFF8)), *(v9 + ((v18 + 35) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_188F0C450(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 344);
  v5 = *(v1 + 352);
  v6 = *(v1 + 360);
  v7 = *(v1 + 376);
  v8 = *(v1 + 384);
  v9 = *(v1 + 392);
  v10 = *(v1 + 396);
  v11 = *(v1 + 400);
  v12 = *(v1 + 404);
  v13 = *(v1 + 408);
  v14 = *(v1 + 416);
  v15 = *(v1 + 424);
  v16 = *(v1 + 432);
  v17 = *(v1 + 440);
  v18 = *(v1 + 144);
  v26[6] = *(v1 + 128);
  v26[7] = v18;
  v27 = *(v1 + 160);
  v19 = *(v1 + 80);
  v26[2] = *(v1 + 64);
  v26[3] = v19;
  v20 = *(v1 + 112);
  v26[4] = *(v1 + 96);
  v26[5] = v20;
  v21 = *(v1 + 48);
  v26[0] = *(v1 + 32);
  v26[1] = v21;
  v22 = *(v1 + 248);
  v23 = *(v1 + 280);
  v31 = *(v1 + 264);
  v32 = v23;
  v33 = *(v1 + 296);
  v24 = *(v1 + 184);
  v25 = *(v1 + 216);
  v28[2] = *(v1 + 200);
  v28[3] = v25;
  v29 = *(v1 + 232);
  v30 = v22;
  v28[0] = *(v1 + 168);
  v28[1] = v24;
  sub_188EDC6A8(a1, v2, v3, v26, v28, (v1 + 304), v4, v5, v11, v12, v13, *&v6, *v28, *&v24, *&v29, *&v25, v6, *(&v6 + 1), v7, v8, v9, v10, v14, v15, v16, v17);
}

uint64_t objectdestroy_759Tm()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));

  return MEMORY[0x1EEE6BDD0](v0, 240, 7);
}

uint64_t sub_188F0C5D4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, __n128, __n128, __n128, __n128, __n128, __n128, __n128, __n128, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t), __n128 a3, __n128 a4, __n128 a5, double a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  a3.n128_u32[0] = *(v10 + 192);
  a4.n128_u32[0] = *(v10 + 196);
  a5.n128_u32[0] = *(v10 + 200);
  LOBYTE(v13) = *(v10 + 216);
  HIDWORD(v12) = *(v10 + 188);
  LOBYTE(v12) = *(v10 + 184);
  return sub_188F0A9DC(a1, *(v10 + 16), *(v10 + 24), (v10 + 32), (v10 + 64), v10 + 96, *(v10 + 136), *(v10 + 144), a3, a4, a5, *(v10 + 152), a7, a8, a9, a10, *(v10 + 152), *(v10 + 160), *(v10 + 168), *(v10 + 176), v12, *(v10 + 208), v13, *(v10 + 224), *(v10 + 232), a2);
}

uint64_t objectdestroy_745Tm()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 64));

  return MEMORY[0x1EEE6BDD0](v0, 208, 7);
}

uint64_t objectdestroy_773Tm()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 192, 7);
}

uint64_t sub_188F0C7B8(uint64_t a1, uint64_t (*a2)(uint64_t, void, void, uint64_t, void, void, void, void, double, double, float, float, float, void, void, char, void, char, void, void))
{
  v6 = *(v2 + 168);
  v5 = *(v2 + 140);
  v4 = *(v2 + 136);
  return a2(a1, *(v2 + 16), *(v2 + 24), v2 + 48, *(v2 + 88), *(v2 + 96), *(v2 + 104), *(v2 + 112), *(v2 + 32), *(v2 + 40), *(v2 + 144), *(v2 + 148), *(v2 + 152), *(v2 + 120), *(v2 + 128), v4, *(v2 + 160), v6, *(v2 + 176), *(v2 + 184));
}

void sub_188F0C82C(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v10 = *(v9 + 16);
  v11 = *(v9 + 24);
  v12 = *(v9 + 152);
  v13 = *(v9 + 160);
  v14 = *(v9 + 168);
  v15 = *(v9 + 184);
  v16 = *(v9 + 192);
  v17 = *(v9 + 200);
  v18 = *(v9 + 204);
  v19 = *(v9 + 208);
  v20 = *(v9 + 212);
  v21 = *(v9 + 216);
  v22 = *(v9 + 224);
  v23 = *(v9 + 232);
  v24 = *(v9 + 240);
  v25 = *(v9 + 248);
  v26 = *(v9 + 48);
  v28 = *(v9 + 32);
  v29[0] = v26;
  *(v29 + 13) = *(v9 + 61);
  v27 = *(v9 + 88);
  v30 = *(v9 + 72);
  v31[0] = v27;
  *(v31 + 13) = *(v9 + 101);
  sub_188ED5B58(a1, v10, v11, &v28, &v30, (v9 + 112), v12, v13, v19, v20, v21, *&v14, *&v30, *&v27, a8, a9, v14, *(&v14 + 1), v15, v16, v17, v18, v22, v23, v24, v25);
}

void sub_188F0C8F8(void *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v10 = *(v9 + 16);
  v11 = *(v9 + 24);
  v12 = *(v9 + 200);
  v13 = *(v9 + 208);
  v14 = *(v9 + 216);
  v15 = *(v9 + 232);
  v16 = *(v9 + 240);
  v17 = *(v9 + 248);
  v18 = *(v9 + 252);
  v19 = *(v9 + 256);
  v20 = *(v9 + 260);
  v21 = *(v9 + 264);
  v22 = *(v9 + 272);
  v23 = *(v9 + 280);
  v24 = *(v9 + 288);
  v25 = *(v9 + 296);
  v26 = *(v9 + 48);
  v30[0] = *(v9 + 32);
  v30[1] = v26;
  v27 = *(v9 + 80);
  v30[2] = *(v9 + 64);
  v30[3] = v27;
  v28 = *(v9 + 112);
  v31[0] = *(v9 + 96);
  v31[1] = v28;
  v29 = *(v9 + 144);
  v32 = *(v9 + 128);
  v33 = v29;
  sub_188ED3EC4(a1, v10, v11, v30, v31, (v9 + 160), v12, v13, v19, v20, v21, *&v14, *&v32, *&v29, a8, a9, v14, *(&v14 + 1), v15, v16, v17, v18, v22, v23, v24, v25);
}

uint64_t objectdestroy_808Tm()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 192, 7);
}

uint64_t sub_188F0CA28(uint64_t a1, uint64_t (*a2)(uint64_t, void, void, void, void, uint64_t, void, void, float, float, float, void, void, void, void, char, void, char, void, void))
{
  v6 = *(v2 + 168);
  v5 = *(v2 + 140);
  v4 = *(v2 + 136);
  return a2(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), v2 + 48, *(v2 + 88), *(v2 + 96), *(v2 + 144), *(v2 + 148), *(v2 + 152), *(v2 + 104), *(v2 + 112), *(v2 + 120), *(v2 + 128), v4, *(v2 + 160), v6, *(v2 + 176), *(v2 + 184));
}

uint64_t sub_188F0CAD4(uint64_t a1, uint64_t (*a2)(uint64_t, void, void, uint64_t, void, void, void, void, double, double, double, double, float, float, float, void, void, char, void, char, void, void))
{
  v6 = *(v2 + 184);
  v5 = *(v2 + 156);
  v4 = *(v2 + 152);
  return a2(a1, *(v2 + 16), *(v2 + 24), v2 + 64, *(v2 + 104), *(v2 + 112), *(v2 + 120), *(v2 + 128), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 160), *(v2 + 164), *(v2 + 168), *(v2 + 136), *(v2 + 144), v4, *(v2 + 176), v6, *(v2 + 192), *(v2 + 200));
}

void sub_188F0CB4C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 232);
  v5 = *(v1 + 240);
  v6 = *(v1 + 248);
  v7 = *(v1 + 264);
  v8 = *(v1 + 272);
  v9 = *(v1 + 280);
  v10 = *(v1 + 284);
  v11 = *(v1 + 288);
  v12 = *(v1 + 80);
  v22[2] = *(v1 + 64);
  v22[3] = v12;
  v13 = *(v1 + 112);
  v22[4] = *(v1 + 96);
  v14 = *(v1 + 48);
  v22[0] = *(v1 + 32);
  v22[1] = v14;
  v15 = *(v1 + 128);
  v16 = *(v1 + 160);
  v17 = *(v1 + 176);
  v23[2] = *(v1 + 144);
  v23[3] = v16;
  v14.i32[0] = *(v1 + 292);
  v23[4] = v17;
  v16.i32[0] = *(v1 + 296);
  v18 = *(v1 + 304);
  v19 = *(v1 + 312);
  v20 = *(v1 + 320);
  v21 = *(v1 + 328);
  v23[0] = v13;
  v23[1] = v15;
  sub_188ED11D8(a1, v2, v3, v22, v23, (v1 + 192), v4, v5, v11, v14.f32[0], v16.f32[0], v6, *(&v6 + 1), v7, v8, v9, v10, v18, v19, v20, v21);
}

uint64_t sub_188F0CC00(_OWORD *a1, _OWORD *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  v5 = a1[3];
  v11[2] = a1[2];
  v11[3] = v5;
  v11[4] = a1[4];
  v6 = a1[1];
  v11[0] = *a1;
  v11[1] = v6;
  v7 = a2[3];
  v10[2] = a2[2];
  v10[3] = v7;
  v10[4] = a2[4];
  v8 = a2[1];
  v10[0] = *a2;
  v10[1] = v8;
  return v3(v11, v10, v4);
}

uint64_t sub_188F0CCB8()
{
  v1 = *(v0 + 80);
  v10[2] = *(v0 + 64);
  v10[3] = v1;
  v2 = *(v0 + 112);
  v10[4] = *(v0 + 96);
  v3 = *(v0 + 48);
  v10[0] = *(v0 + 32);
  v10[1] = v3;
  v4 = *(v0 + 128);
  v5 = *(v0 + 160);
  v6 = *(v0 + 176);
  v9[2] = *(v0 + 144);
  v9[3] = v5;
  v9[4] = v6;
  v7 = *(v0 + 16);
  v9[0] = v2;
  v9[1] = v4;
  return v7(v10, v9);
}

uint64_t sub_188F0CD3C(double a1)
{
  v2 = v1;
  if (a1 <= 0.0)
  {
    return *(v1 + 16);
  }

  v47 = 1.0 - pow(*(v1 + 24), a1 * 1000.0);
  v3 = *(v1 + 8);
  sub_188CD18C0(*(v1 + 40), v3);
  if (!v4)
  {
    goto LABEL_17;
  }

  v5 = *(v4 + 16);
  if (!v5)
  {

    v7 = MEMORY[0x1E69E7CC0];
    if (!v3)
    {
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  v48 = MEMORY[0x1E69E7CC0];
  v6 = v4;
  sub_188CCF904(0, v5, 0);
  v7 = v48;
  v8 = *(v48 + 16);
  v9 = 32 * v8;
  v10 = v6 + 3;
  v11 = v47;
  do
  {
    v12 = v10[-1];
    v13 = *v10;
    v14 = *(v48 + 24);
    v15 = v8 + 1;
    if (v8 >= v14 >> 1)
    {
      v43 = *v10;
      v45 = v10[-1];
      sub_188CCF904((v14 > 1), v8 + 1, 1);
      v13 = v43;
      v12 = v45;
      v11 = v47;
    }

    *(v48 + 16) = v15;
    v16 = (v48 + v9);
    v16[2] = vmulq_n_f64(v12, v11);
    v16[3] = vmulq_n_f64(v13, v11);
    v9 += 32;
    v10 += 2;
    v8 = v15;
    --v5;
  }

  while (v5);

  if (v3)
  {
LABEL_13:
    v18 = *(v3 + 16);
    v19 = *(v7 + 16);
    if (v18 == v19)
    {

      v21 = sub_188EF6C40(v20, v7);
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      v7 = v21;
      goto LABEL_19;
    }

    if (v19 >= v18)
    {

      goto LABEL_19;
    }

LABEL_17:
    v7 = v3;
  }

LABEL_19:
  *(v2 + 8) = v7;
  v22 = *(v2 + 16);
  sub_188CD18C0(v7, v22);
  if (!v23)
  {
LABEL_32:
    result = v22;
    *(v2 + 16) = v22;
    return result;
  }

  v24 = *(v23 + 16);
  if (!v24)
  {

    result = MEMORY[0x1E69E7CC0];
    if (v22)
    {
      goto LABEL_26;
    }

LABEL_29:
    *(v2 + 16) = result;
    return result;
  }

  v49 = MEMORY[0x1E69E7CC0];
  v25 = v23;
  sub_188CCF904(0, v24, 0);
  v26 = v49;
  v27 = *(v49 + 16);
  v28 = 32 * v27;
  v29 = v25 + 3;
  v30 = v47;
  do
  {
    v31 = v29[-1];
    v32 = *v29;
    v50 = v26;
    v33 = *(v26 + 24);
    v34 = v27 + 1;
    if (v27 >= v33 >> 1)
    {
      v44 = *v29;
      v46 = v29[-1];
      sub_188CCF904((v33 > 1), v27 + 1, 1);
      v32 = v44;
      v31 = v46;
      v30 = v47;
      v26 = v50;
    }

    *(v26 + 16) = v34;
    v35 = (v26 + v28);
    v35[2] = vmulq_n_f64(v31, v30);
    v35[3] = vmulq_n_f64(v32, v30);
    v28 += 32;
    v29 += 2;
    v27 = v34;
    --v24;
  }

  while (v24);
  v36 = v26;

  result = v36;
  if (!v22)
  {
    goto LABEL_29;
  }

LABEL_26:
  v37 = *(v22 + 16);
  v38 = *(result + 16);
  if (v37 == v38)
  {
    v39 = result;

    v41 = sub_188EF6C40(v40, v39);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    result = v41;
    *(v2 + 16) = v41;
    return result;
  }

  if (v38 < v37)
  {

    goto LABEL_32;
  }

  v42 = result;

  result = v42;
  *(v2 + 16) = v42;
  return result;
}

double sub_188F0D090(uint64_t a1)
{
  if (a1 != 1)
  {
  }

  return result;
}

uint64_t sub_188F0D0A0(double a1)
{
  if (a1 <= 0.0)
  {
    return *(v1 + 16);
  }

  v28 = 1.0 - pow(*(v1 + 24), a1 * 1000.0);
  v2 = *(v1 + 8);
  sub_188D7EBC0(*(v1 + 40), v2);
  v4 = v3;
  v5 = *(v3 + 16);
  if (!v5)
  {
    v6 = v3;
    goto LABEL_16;
  }

  v6 = v4;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_188D75E50(v4);
  }

  if (v5 > *(v6 + 2))
  {
    __break(1u);
LABEL_30:
    result = sub_188D75E50(v4);
    v18 = result;
    goto LABEL_18;
  }

  if (v5 > 3)
  {
    v7 = v5 & 0x7FFFFFFFFFFFFFFCLL;
    v10 = (v6 + 48);
    v11 = v5 & 0x7FFFFFFFFFFFFFFCLL;
    v8 = v28;
    do
    {
      v12 = vmulq_n_f64(*v10, v28);
      v10[-1] = vmulq_n_f64(v10[-1], v28);
      *v10 = v12;
      v10 += 2;
      v11 -= 4;
    }

    while (v11);
    if (v5 == v7)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v7 = 0;
    v8 = v28;
  }

  v13 = v5 - v7;
  v14 = &v6[8 * v7 + 32];
  do
  {
    *v14 = v8 * *v14;
    ++v14;
    --v13;
  }

  while (v13);
LABEL_15:

LABEL_16:
  sub_188D85564(v2, v6);
  v16 = v15;

  *(v1 + 8) = v16;
  v2 = *(v1 + 16);
  sub_188D7EBC0(v16, v2);
  v4 = v17;
  v5 = *(v17 + 16);
  if (!v5)
  {
    v18 = v17;
LABEL_28:
    sub_188D85564(v2, v18);
    v27 = v26;

    result = v27;
    *(v1 + 16) = v27;
    return result;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  v18 = v4;
  if ((result & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_18:
  if (v5 <= *(v18 + 16))
  {
    if (v5 > 3)
    {
      v19 = v5 & 0x7FFFFFFFFFFFFFFCLL;
      v21 = (v18 + 48);
      v22 = v5 & 0x7FFFFFFFFFFFFFFCLL;
      v20 = v28;
      do
      {
        v23 = vmulq_n_f64(*v21, v28);
        v21[-1] = vmulq_n_f64(v21[-1], v28);
        *v21 = v23;
        v21 += 2;
        v22 -= 4;
      }

      while (v22);
      if (v5 == v19)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v19 = 0;
      v20 = v28;
    }

    v24 = v5 - v19;
    v25 = (v18 + 8 * v19 + 32);
    do
    {
      *v25 = v20 * *v25;
      ++v25;
      --v24;
    }

    while (v24);
LABEL_27:

    goto LABEL_28;
  }

  __break(1u);
  return result;
}

unint64_t sub_188F0D398()
{
  result = qword_1EA92EBE0;
  if (!qword_1EA92EBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92EBE0);
  }

  return result;
}

double sub_188F0D3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != 1)
  {
    return sub_188F0B550(a1, a2, a3, a4);
  }

  return result;
}

double sub_188F0D3FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != 1)
  {
    return sub_188F0B59C(a1, a2, a3, a4);
  }

  return result;
}

unint64_t sub_188F0D468()
{
  result = qword_1EA92F2F0;
  if (!qword_1EA92F2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92F2F0);
  }

  return result;
}

unint64_t sub_188F0D4BC()
{
  result = qword_1ED48C920;
  if (!qword_1ED48C920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48C920);
  }

  return result;
}

uint64_t sub_188F0D540(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  v5 = *a1;
  v7 = *a2;
  v8 = v5;
  return v3(&v8, &v7, v4);
}

uint64_t sub_188F0D5A4()
{
  v1 = v0[2];
  v2 = v0[4];
  v4 = v0[5];
  v5 = v2;
  return v1(&v5, &v4);
}

BOOL sub_188F0D61C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (a1)
    {
      v2 = *(a2 + 16);
      if (v2 == *(a1 + 16))
      {
        v3 = v2 + 1;
        v4 = (a2 + 56);
        v5 = (a1 + 56);
        do
        {
          result = --v3 == 0;
          if (!v3)
          {
            break;
          }

          if (vabdd_f64(*(v4 - 3), *(v5 - 3)) > 0.01)
          {
            break;
          }

          if (vabdd_f64(*(v4 - 2), *(v5 - 2)) > 0.01)
          {
            break;
          }

          if (vabdd_f64(*(v4 - 1), *(v5 - 1)) > 0.01)
          {
            break;
          }

          v7 = *v4;
          v4 += 4;
          v8 = v7;
          v9 = *v5;
          v5 += 4;
        }

        while (vabdd_f64(v8, v9) <= 0.01);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v15 = *(a2 + 16);
      v16 = (a2 + 32);
      v17 = vdupq_n_s64(0x3F847AE147AE147BuLL);
      do
      {
        result = v15 == 0;
        if (!v15)
        {
          break;
        }

        v19 = *v16;
        v18 = v16[1];
        v16 += 2;
        --v15;
      }

      while ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vcgeq_f64(v17, vabsq_f64(v19)), vcgeq_f64(v17, vabsq_f64(v18)))))) & 1) == 0);
    }
  }

  else if (a1)
  {
    v10 = *(a1 + 16);
    v11 = (a1 + 32);
    v12 = vdupq_n_s64(0x3F847AE147AE147BuLL);
    do
    {
      result = v10 == 0;
      if (!v10)
      {
        break;
      }

      v14 = *v11;
      v13 = v11[1];
      v11 += 2;
      --v10;
    }

    while ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vcgeq_f64(v12, vabsq_f64(v14)), vcgeq_f64(v12, vabsq_f64(v13)))))) & 1) == 0);
  }

  else
  {
    return 1;
  }

  return result;
}

uint64_t sub_188F0D7D0(_OWORD *a1, _OWORD *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  v5 = a1[1];
  v11[0] = *a1;
  v11[1] = v5;
  v6 = a1[3];
  v11[2] = a1[2];
  v11[3] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  v8 = a2[3];
  v10[2] = a2[2];
  v10[3] = v8;
  return v3(v11, v10, v4);
}

uint64_t sub_188F0D848()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 48);
  v8[0] = *(v0 + 32);
  v8[1] = v2;
  v3 = *(v0 + 80);
  v8[2] = *(v0 + 64);
  v8[3] = v3;
  v4 = *(v0 + 112);
  v7[0] = *(v0 + 96);
  v7[1] = v4;
  v5 = *(v0 + 144);
  v7[2] = *(v0 + 128);
  v7[3] = v5;
  return v1(v8, v7);
}

uint64_t objectdestroy_937Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_188F0DA30(_OWORD *a1, _OWORD *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  v5 = a1[1];
  v9[0] = *a1;
  v9[1] = v5;
  v6 = a2[1];
  v8[0] = *a2;
  v8[1] = v6;
  return v3(v9, v8, v4);
}

uint64_t sub_188F0DA98()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 48);
  v6[0] = *(v0 + 32);
  v6[1] = v2;
  v3 = *(v0 + 80);
  v5[0] = *(v0 + 64);
  v5[1] = v3;
  return v1(v6, v5);
}

uint64_t sub_188F0DB00(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  v5 = *a1;
  v7 = *a2;
  v8 = v5;
  return v3(&v8, &v7, v4);
}

uint64_t sub_188F0DB68()
{
  v1 = v0[2];
  v2 = v0[4];
  v4 = v0[5];
  v5 = v2;
  return v1(&v5, &v4);
}

uint64_t sub_188F0DC4C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  v5 = *(a1 + 112);
  v16[6] = *(a1 + 96);
  v16[7] = v5;
  v17 = *(a1 + 128);
  v6 = *(a1 + 48);
  v16[2] = *(a1 + 32);
  v16[3] = v6;
  v7 = *(a1 + 80);
  v16[4] = *(a1 + 64);
  v16[5] = v7;
  v8 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v8;
  v9 = *(a2 + 112);
  v14[6] = *(a2 + 96);
  v14[7] = v9;
  v15 = *(a2 + 128);
  v10 = *(a2 + 48);
  v14[2] = *(a2 + 32);
  v14[3] = v10;
  v11 = *(a2 + 80);
  v14[4] = *(a2 + 64);
  v14[5] = v11;
  v12 = *(a2 + 16);
  v14[0] = *a2;
  v14[1] = v12;
  return v3(v16, v14, v4);
}

uint64_t sub_188F0DCF4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 144);
  v13[6] = *(v0 + 128);
  v13[7] = v2;
  v14 = *(v0 + 160);
  v3 = *(v0 + 80);
  v13[2] = *(v0 + 64);
  v13[3] = v3;
  v4 = *(v0 + 112);
  v13[4] = *(v0 + 96);
  v13[5] = v4;
  v5 = *(v0 + 48);
  v13[0] = *(v0 + 32);
  v13[1] = v5;
  v6 = *(v0 + 248);
  v7 = *(v0 + 280);
  v11[6] = *(v0 + 264);
  v11[7] = v7;
  v12 = *(v0 + 296);
  v8 = *(v0 + 184);
  v9 = *(v0 + 216);
  v11[2] = *(v0 + 200);
  v11[3] = v9;
  v11[4] = *(v0 + 232);
  v11[5] = v6;
  v11[0] = *(v0 + 168);
  v11[1] = v8;
  return v1(v13, v11);
}

uint64_t sub_188F0DDB0(__int128 *a1, __int128 *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  v5 = *a1;
  v7 = *a2;
  v8 = v5;
  return v3(&v8, &v7, v4);
}

uint64_t objectdestroy_848Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_188F0DEC8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v4 = *(v0 + 48);
  v5 = v2;
  return v1(&v5, &v4);
}

uint64_t objectdestroy_864Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

id sub_188F0E274()
{
  v1 = OBJC_IVAR____UIViewControllerTransitionOptions_dimmingColor;
  *&v0[OBJC_IVAR____UIViewControllerTransitionOptions_dimmingColor] = 0;
  v2 = OBJC_IVAR____UIViewControllerTransitionOptions_dimmingVisualEffects;
  *&v0[OBJC_IVAR____UIViewControllerTransitionOptions_dimmingVisualEffects] = 0;
  type metadata accessor for _UIZoomTransitionSettingsDomain();
  v10.receiver = swift_getObjCClassFromMetadata();
  v10.super_class = &OBJC_METACLASS____TtC5UIKit31_UIZoomTransitionSettingsDomain;
  result = objc_msgSendSuper2(&v10, sel_rootSettings);
  if (result)
  {
    v4 = result;
    type metadata accessor for _UIZoomTransitionSpec();
    v5 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:*(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit21_UIZoomTransitionSpec_dimmingOpacity)];
    v6 = *&v0[v1];
    *&v0[v1] = v5;

    *&v0[v2] = MEMORY[0x1E69E7CC0];

    v7 = &v0[OBJC_IVAR____UIViewControllerTransitionOptions_frameOfSourceInDestination];
    v8 = *(MEMORY[0x1E695F050] + 16);
    *v7 = *MEMORY[0x1E695F050];
    v7[1] = v8;
    v0[OBJC_IVAR____UIViewControllerTransitionOptions_popPreemptsPushInSwiftUIEnabled] = 0;
    v9.receiver = v0;
    v9.super_class = _UIViewControllerTransitionOptions;
    return objc_msgSendSuper2(&v9, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_188F0E438(void *a1)
{
  v2 = v1;
  [v1 _displayCornerRadius];
  v5 = v4;
  v6 = [v1 coordinateSpace];
  v7 = [(UIScreen *)v1 _typedStorage];
  v8 = sub_18901F134();

  if (v8)
  {
    v10 = *(v8 + 48);
    v9 = *(v8 + 64);
    v27 = *(v8 + 96);
    v11 = *(v8 + 80);
    v25 = v9;
    v26 = v11;
    v23 = *(v8 + 32);
    v24 = v10;
    *(v8 + 32) = v5;
    *(v8 + 40) = 0;
    *(v8 + 48) = v5;
    *(v8 + 56) = 0;
    *(v8 + 64) = v5;
    *(v8 + 72) = 0;
    *(v8 + 80) = v5;
    *(v8 + 88) = 0;
    *(v8 + 96) = MEMORY[0x1E69E7CC0];

    sub_188E4342C(&v23);
    swift_getKeyPath();
    sub_188E434C4();
    sub_18A4A2C08();

    Strong = swift_unknownObjectWeakLoadStrong();

    if (!Strong || (swift_unknownObjectRelease(), Strong != v6))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      swift_unknownObjectRetain();
      sub_18A4A2BF8();

      swift_unknownObjectRelease();
    }
  }

  else
  {
    *&v23 = v5;
    BYTE8(v23) = 0;
    *&v24 = v5;
    BYTE8(v24) = 0;
    *&v25 = v5;
    BYTE8(v25) = 0;
    *&v26 = v5;
    BYTE8(v26) = 0;
    v27 = MEMORY[0x1E69E7CC0];
    type metadata accessor for _UICornerProvider(0);
    v14 = swift_allocObject();
    swift_getObjectType();
    v15 = swift_unknownObjectRetain();
    v8 = sub_188F2E28C(v15, &v23, v14);
    swift_unknownObjectRelease();

    v16 = [(UIScreen *)v2 _typedStorage];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936900, &unk_18A651020);
    v17 = swift_allocObject();
    *(v17 + 16) = v8;
    v18 = OBJC_IVAR____UITypedStorage_storage;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(&v16->super.isa + v18);
    *(&v16->super.isa + v18) = 0x8000000000000000;
    sub_188A40430(v17, &_s17CornerProviderKeyVN, isUniquelyReferenced_nonNull_native);
    *(&v16->super.isa + v18) = v22;
    swift_endAccess();
  }

  sub_188F2BF74();
  if (qword_1ED491B40 != -1)
  {
    swift_once();
  }

  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v20 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  sub_18901B6CC(&type metadata for _UICornerProvider.Trait, sub_188E192C0, 0);
  os_unfair_lock_unlock(v20[2]);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93E970, &unk_18A651030);
  v21 = sub_188A74A44();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [a1 _setObject_forTraitToken_];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

void sub_188F0E920(uint64_t a1, char a2, uint64_t a3)
{
  v3 = *(a3 + 40);
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(a3 + 40) = v5;
    *(a3 + 16) = (*(a3 + 16) | a2) & 1;
    sub_188F0E9FC();
  }
}

double sub_188F0E968(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  v5 = (v2 + 24);
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;

  result = sub_188A55B8C(v3, v4);
  if (!*(v2 + 40))
  {
    v7 = *v5;
    if (*v5)
    {
      v8 = *(v2 + 32);
      *v5 = 0;
      *(v2 + 32) = 0;
      v7(*(v2 + 16), result);

      return sub_188A55B8C(v7, v8);
    }
  }

  return result;
}

double sub_188F0E9FC()
{
  if (!*(v0 + 40))
  {
    v1 = *(v0 + 24);
    if (v1)
    {
      v2 = *(v0 + 32);
      *(v0 + 24) = 0;
      *(v0 + 32) = 0;
      v1(*(v0 + 16));

      return sub_188A55B8C(v1, v2);
    }
  }

  return result;
}

uint64_t sub_188F0EA74()
{
  sub_188A55B8C(*(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

id sub_188F0EF7C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_188F0EFC4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800, &unk_18A64D700);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18A64BFB0;
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_18A6510E0;
  v2 = sub_18A4A7258();
  v3 = sub_18A4A7258();
  v4 = objc_opt_self();
  v5 = [v4 rowWithTitle:v2 childSettingsKeyPath:v3];

  if (!v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = sub_188A34624(0, &qword_1EA934BA8, 0x1E69C6610);
  *(v1 + 56) = v6;
  *(v1 + 32) = v5;
  v7 = sub_18A4A7258();
  v8 = sub_18A4A7258();
  v9 = [v4 rowWithTitle:v7 childSettingsKeyPath:v8];

  if (!v9)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *(v1 + 88) = v6;
  *(v1 + 64) = v9;
  v10 = sub_18A4A7258();
  v11 = sub_18A4A7258();
  v12 = [v4 rowWithTitle:v10 childSettingsKeyPath:v11];

  if (!v12)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *(v1 + 120) = v6;
  *(v1 + 96) = v12;
  v13 = sub_18A4A7258();
  v14 = sub_18A4A7258();
  v15 = [v4 rowWithTitle:v13 childSettingsKeyPath:v14];

  if (!v15)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *(v1 + 152) = v6;
  *(v1 + 128) = v15;
  v16 = sub_18A4A7258();
  v17 = sub_18A4A7258();
  v18 = [objc_opt_self() rowWithTitle:v16 valueKeyPath:v17];

  if (!v18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v19 = objc_opt_self();
  *(v1 + 184) = sub_188A34624(0, &unk_1EA936980, 0x1E69C66A8);
  *(v1 + 160) = v18;
  v20 = sub_18A4A7518();

  v21 = sub_18A4A7258();
  v22 = [v19 sectionWithRows:v20 title:v21];

  if (v22)
  {
    *(v0 + 56) = sub_188A34624(0, &qword_1EA934B98, 0x1E69C6690);
    *(v0 + 32) = v22;
    v23 = sub_18A4A7258();
    v24 = sub_18A4A7518();

    [v19 moduleWithTitle:v23 contents:v24];

    return;
  }

LABEL_13:
  __break(1u);
}

void sub_188F0F3F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800, &unk_18A64D700);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18A64D660;
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_18A6510F0;
  v2 = sub_18A4A7258();
  v3 = sub_18A4A7258();
  v4 = [objc_opt_self() rowWithTitle:v2 childSettingsKeyPath:v3];

  if (!v4)
  {
    __break(1u);
    goto LABEL_17;
  }

  *(v1 + 56) = sub_188A34624(0, &qword_1EA934BA8, 0x1E69C6610);
  *(v1 + 32) = v4;
  v5 = sub_18A4A7258();
  v6 = sub_18A4A7258();
  v7 = objc_opt_self();
  v8 = [v7 rowWithTitle:v5 valueKeyPath:v6];

  if (!v8)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = sub_188A34624(0, &qword_1EA934B90, 0x1E69C6618);
  *(v1 + 88) = v9;
  *(v1 + 64) = v8;
  v10 = sub_18A4A7258();
  v11 = sub_18A4A7258();
  v12 = [v7 rowWithTitle:v10 valueKeyPath:v11];

  if (!v12)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *(v1 + 120) = v9;
  *(v1 + 96) = v12;
  v13 = sub_18A4A7258();
  v14 = sub_18A4A7258();
  v15 = [v7 rowWithTitle:v13 valueKeyPath:v14];

  if (!v15)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  *(v1 + 152) = v9;
  *(v1 + 128) = v15;
  v16 = sub_18A4A7258();
  v17 = sub_18A4A7258();
  v18 = [v7 rowWithTitle:v16 valueKeyPath:v17];

  if (!v18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  *(v1 + 184) = v9;
  *(v1 + 160) = v18;
  v19 = sub_18A4A7258();
  v20 = sub_18A4A7258();
  v21 = [v7 &selRef:v19 rollbackKeyplane:v20 withTransformationContext:? + 5];

  if (!v21)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  *(v1 + 216) = v9;
  *(v1 + 192) = v21;
  v22 = sub_18A4A7258();
  v23 = sub_18A4A7258();
  v24 = [v7 &selRef:v22 rollbackKeyplane:v23 withTransformationContext:? + 5];

  if (!v24)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v25 = objc_opt_self();
  *(v1 + 248) = v9;
  *(v1 + 224) = v24;
  v26 = sub_18A4A7518();

  v49 = v25;
  v27 = [v25 sectionWithRows:v26 title:0];

  if (!v27)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v48 = sub_188A34624(0, &qword_1EA934B98, 0x1E69C6690);
  *(v0 + 56) = v48;
  *(v0 + 32) = v27;
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_18A64D660;
  v29 = sub_18A4A7258();
  v30 = sub_18A4A7258();
  v31 = [v7 &selRef:v29 rollbackKeyplane:v30 withTransformationContext:? + 5];

  if (!v31)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  *(v28 + 56) = v9;
  *(v28 + 32) = v31;
  v32 = sub_18A4A7258();
  v33 = sub_18A4A7258();
  v34 = [v7 &selRef:v32 rollbackKeyplane:v33 withTransformationContext:? + 5];

  if (!v34)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  *(v28 + 88) = v9;
  *(v28 + 64) = v34;
  v35 = sub_18A4A7258();
  v36 = sub_18A4A7258();
  v37 = [v7 &selRef:v35 rollbackKeyplane:v36 withTransformationContext:? + 5];

  if (!v37)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  *(v28 + 120) = v9;
  *(v28 + 96) = v37;
  v38 = sub_18A4A7518();

  v39 = sub_18A4A7258();
  v40 = [v49 sectionWithRows:v38 title:v39];

  if (!v40)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  *(v0 + 88) = v48;
  *(v0 + 64) = v40;
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_18A64BFB0;
  v42 = [objc_allocWithZone(MEMORY[0x1E69C6640]) init];
  v43 = sub_18A4A7258();
  v44 = [objc_opt_self() rowWithTitle:v43 action:v42];

  if (!v44)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  *(v41 + 56) = sub_188A34624(0, &qword_1EA934BA0, 0x1E69C65E8);
  *(v41 + 32) = v44;
  v45 = sub_18A4A7518();

  v46 = [v49 sectionWithRows_];

  if (v46)
  {
    *(v0 + 120) = v48;
    *(v0 + 96) = v46;
    v47 = sub_18A4A7518();

    [v49 moduleWithTitle:0 contents:v47];

    return;
  }

LABEL_29:
  __break(1u);
}

id _UIRelativeCornerMaskingProviderSceneComponent.init(scene:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithScene_];

  return v2;
}

{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____UIRelativeCornerMaskingProviderSceneComponent____lazy_storage___traitOverrides] = 0;
  *&v1[OBJC_IVAR____UIRelativeCornerMaskingProviderSceneComponent____lazy_storage___concentricMaskingSupport] = 0;
  swift_unknownObjectWeakAssign();
  v5.receiver = v1;
  v5.super_class = _UIRelativeCornerMaskingProviderSceneComponent;
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

id _UIRelativeCornerMaskingProviderSceneComponent.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

double UIWindowScene.bounds.getter()
{
  [objc_msgSend(v0 _coordinateSpace)];
  v2 = v1;
  swift_unknownObjectRelease();
  return v2;
}

unint64_t type metadata accessor for _UIRelativeCornerMaskingProviderSceneComponent()
{
  result = qword_1EA936AD0;
  if (!qword_1EA936AD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA936AD0);
  }

  return result;
}

double sub_188F0FEC8(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, SEL *a8)
{
  v14 = swift_dynamicCastObjCProtocolConditional();
  if (v14)
  {
    v15 = v14;
    swift_unknownObjectRetain();
    v16 = a1;
    [objc_msgSend(v16 _coordinateSpace)];
    a2 = v17;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return a2;
}

uint64_t UIDocumentViewControllerLaunchOptions.background.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = [v1 background];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C38, &unk_18A651190);
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_188F100D4@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 background];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C38, &unk_18A651190);
  result = swift_allocObject();
  *(result + 16) = v3;
  *a2 = result;
  return result;
}

void UIDocumentViewControllerLaunchOptions.background.setter(uint64_t *a1)
{
  v2 = *(*a1 + 16);

  [v1 setBackground_];
}

void (*UIDocumentViewControllerLaunchOptions.background.modify(uint64_t *a1))(id *a1, char a2)
{
  a1[1] = v1;
  v3 = [v1 background];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C38, &unk_18A651190);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *a1 = v4;
  return sub_188F10220;
}

void sub_188F10220(id *a1, char a2)
{
  v2 = a1[1];
  v3 = *(*a1 + 2);
  if (a2)
  {
    [a1[1] setBackground_];
  }

  else
  {
    v4 = v3;

    [v2 setBackground_];
  }
}

void static UIDocument.StateChangedMessage.makeMessage(_:)(void *a1@<X8>)
{
  sub_18A4A2438();
  if (!v5)
  {
    sub_188A3F5FC(v4, &qword_1EA934050, qword_18A64CA10);
    goto LABEL_5;
  }

  sub_188F103B8();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v2 = 0;
    goto LABEL_6;
  }

  v2 = v3;
LABEL_6:
  *a1 = v2;
}

unint64_t sub_188F103B8()
{
  result = qword_1EA936AD8;
  if (!qword_1EA936AD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA936AD8);
  }

  return result;
}

uint64_t static UIDocument.StateChangedMessage.makeNotification(_:)(void **a1)
{
  v1 = *a1;
  sub_188F103B8();
  v2 = v1;
  v3 = @"UIDocumentStateChangedNotification";
  return sub_18A4A2428();
}

uint64_t sub_188F10480(void **a1)
{
  v1 = *a1;
  sub_188F103B8();
  v2 = v1;
  v3 = @"UIDocumentStateChangedNotification";
  return sub_18A4A2428();
}

uint64_t UIDocument.DidMoveToWritableLocationMessage.oldURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UIDocument.DidMoveToWritableLocationMessage(0) + 20);
  v4 = sub_18A4A28E8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for UIDocument.DidMoveToWritableLocationMessage(uint64_t a1)
{
  result = qword_1EA936AE0;
  if (!qword_1EA936AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t UIDocument.DidMoveToWritableLocationMessage.oldURL.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UIDocument.DidMoveToWritableLocationMessage(0) + 20);
  v4 = sub_18A4A28E8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UIDocument.DidMoveToWritableLocationMessage.init(document:oldURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for UIDocument.DidMoveToWritableLocationMessage(0) + 20);
  v6 = sub_18A4A28E8();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t static UIDocument.DidMoveToWritableLocationMessage.makeMessage(_:)@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93C760, &unk_18A650510);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v23 - v3;
  v5 = sub_18A4A28E8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18A4A2438();
  if (!v25)
  {
    v16 = &qword_1EA934050;
    v17 = qword_18A64CA10;
    v18 = v24;
LABEL_14:
    sub_188A3F5FC(v18, v16, v17);
    goto LABEL_15;
  }

  sub_188F103B8();
  if (swift_dynamicCast())
  {
    v9 = v26;
    v10 = sub_18A4A2448();
    if (v10)
    {
      v11 = v10;
      v23[1] = sub_18A4A7288();
      v23[2] = v12;
      sub_18A4A8048();
      if (*(v11 + 16) && (v13 = sub_188BBA050(v24), (v14 & 1) != 0))
      {
        sub_188A55598(*(v11 + 56) + 32 * v13, &v26);
        sub_188BBA15C(v24);

        if (*(&v27 + 1))
        {
          v15 = swift_dynamicCast();
          (*(v6 + 56))(v4, v15 ^ 1u, 1, v5);
          if ((*(v6 + 48))(v4, 1, v5) != 1)
          {
            v21 = *(v6 + 32);
            v21(v8, v4, v5);
            v22 = type metadata accessor for UIDocument.DidMoveToWritableLocationMessage(0);
            v21(&a1[*(v22 + 20)], v8, v5);
            *a1 = v9;
            return (*(*(v22 - 8) + 56))(a1, 0, 1, v22);
          }

          goto LABEL_13;
        }
      }

      else
      {

        sub_188BBA15C(v24);
        v26 = 0u;
        v27 = 0u;
      }
    }

    else
    {

      v26 = 0u;
      v27 = 0u;
    }

    sub_188A3F5FC(&v26, &qword_1EA934050, qword_18A64CA10);
    (*(v6 + 56))(v4, 1, 1, v5);
LABEL_13:
    v16 = &qword_1EA93C760;
    v17 = &unk_18A650510;
    v18 = v4;
    goto LABEL_14;
  }

LABEL_15:
  v19 = type metadata accessor for UIDocument.DidMoveToWritableLocationMessage(0);
  return (*(*(v19 - 8) + 56))(a1, 1, 1, v19);
}

uint64_t static UIDocument.DidMoveToWritableLocationMessage.makeNotification(_:)(void **a1)
{
  v2 = *a1;
  sub_188F103B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934D68, &unk_18A6583A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64BFB0;
  sub_18A4A7288();
  v4 = @"UIDocumentDidMoveToWritableLocationNotification";
  v5 = v2;
  sub_18A4A8048();
  v6 = *(type metadata accessor for UIDocument.DidMoveToWritableLocationMessage(0) + 20);
  v7 = sub_18A4A28E8();
  *(inited + 96) = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 72));
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_0, a1 + v6, v7);
  sub_188E8DA14(inited);
  swift_setDeallocating();
  sub_188A3F5FC(inited + 32, &qword_1EA934D78, &qword_18A6511A0);
  return sub_18A4A2428();
}

unint64_t sub_188F10C84(uint64_t a1)
{
  result = sub_188F103B8();
  if (v2 <= 0x3F)
  {
    result = sub_18A4A28E8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_188F10EA8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_188F11E74();
  }
}

void sub_188F10EFC()
{
  *(v0 + OBJC_IVAR____UIFluidSliderElasticPanDriver_state) = 3;
  if (*(v0 + OBJC_IVAR____UIFluidSliderElasticPanDriver_enabled) == 1)
  {
    v1 = OBJC_IVAR____UIFluidSliderElasticPanDriver_panGestureRecognizer;
    v2 = *(v0 + OBJC_IVAR____UIFluidSliderElasticPanDriver_panGestureRecognizer);
    if (v2)
    {
      [v2 setEnabled_];
      v3 = *(v0 + v1);
      if (v3)
      {

        [v3 setEnabled_];
      }
    }
  }
}

void sub_188F11020(void *a1)
{
  v92 = *MEMORY[0x1E69E9840];
  if ([a1 state] == 1)
  {
    *&v1[OBJC_IVAR____UIFluidSliderElasticPanDriver_state] = 1;
    *&v1[OBJC_IVAR____UIFluidSliderElasticPanDriver_previousTranslation] = 0;
    swift_beginAccess();
    _UIUpdateRequestActivate(dword_1EA936AF0, 1048627);
    swift_endAccess();
    *&v1[OBJC_IVAR____UIFluidSliderElasticPanDriver_initialStretchAmount] = *&v1[OBJC_IVAR____UIFluidSliderElasticPanDriver_stretchAmount];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong presentationValue];
      v5 = v4;
      swift_unknownObjectRelease();
      *&v1[OBJC_IVAR____UIFluidSliderElasticPanDriver_previousTarget] = v5;
    }

    v6 = objc_opt_self();
    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_188F12360;
    *(v8 + 24) = v7;
    v90 = sub_188A4B574;
    v91 = v8;
    aBlock = MEMORY[0x1E69E9820];
    v87 = 1107296256;
    v88 = sub_188A4A968;
    v89 = &block_descriptor_79;
    v9 = _Block_copy(&aBlock);
    v10 = v1;

    [v6 performWithoutAnimation_];
    _Block_release(v9);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if ((v6 & 1) == 0)
    {
      sub_188F11E74();

      return;
    }

    __break(1u);
    __break(1u);
LABEL_36:
    __break(1u);
  }

  v11 = OBJC_IVAR____UIFluidSliderElasticPanDriver_trackAxis;
  if (*&v1[OBJC_IVAR____UIFluidSliderElasticPanDriver_trackAxis] == 2 || (v12 = swift_unknownObjectWeakLoadStrong(), v13 = 1.0, v12) && (v14 = v12, v15 = [v12 effectiveUserInterfaceLayoutDirection], v14, v15 == 1))
  {
    v13 = -1.0;
  }

  v16 = [a1 view];
  [a1 translationInView_];
  v18 = v17;
  v20 = v19;

  v21 = [a1 view];
  [a1 velocityInView_];
  v23 = v22;
  v25 = v24;

  v26 = *&v1[OBJC_IVAR____UIFluidSliderElasticPanDriver_animatedValue];
  v27 = OBJC_IVAR____UIFluidSliderElasticPanDriver_velocityMultiplier;
  v28 = *&v1[OBJC_IVAR____UIFluidSliderElasticPanDriver_velocityMultiplier];
  v29 = *&v1[v11];
  v30 = swift_unknownObjectWeakLoadStrong();
  if (!v30)
  {
    __break(1u);
    goto LABEL_38;
  }

  if (v29 == 2)
  {
    v31 = v25;
  }

  else
  {
    v31 = v23;
  }

  v32 = v28 * v31;
  [v30 currentTrackLength];
  v34 = v33;
  swift_unknownObjectRelease();
  [v26 setVelocity_];
  if ([a1 state] != 3 && objc_msgSend(a1, sel_state) != 4)
  {
    if (*&v1[v11] == 2)
    {
      v18 = v20;
    }

    v60 = *&v1[OBJC_IVAR____UIFluidSliderElasticPanDriver_previousTranslation];
    *&v1[OBJC_IVAR____UIFluidSliderElasticPanDriver_previousTranslation] = v18;
    v61 = *&v1[v27];
    v62 = swift_unknownObjectWeakLoadStrong();
    if (v62)
    {
      v63 = (v18 - v60) * v61;
      [v62 currentTrackLength];
      v65 = v64;
      swift_unknownObjectRelease();
      v66 = v13 * (v63 / v65) + *&v1[OBJC_IVAR____UIFluidSliderElasticPanDriver_previousTarget];
      *&v1[OBJC_IVAR____UIFluidSliderElasticPanDriver_previousTarget] = v66;
      v67 = objc_opt_self();
      v68 = swift_allocObject();
      swift_unknownObjectUnownedInit();
      v69 = swift_allocObject();
      *(v69 + 16) = v68;
      *(v69 + 24) = v66;
      v90 = sub_188F12344;
      v91 = v69;
      aBlock = MEMORY[0x1E69E9820];
      v87 = 1107296256;
      v88 = sub_188A4A8F0;
      v89 = &block_descriptor_24;
      v70 = _Block_copy(&aBlock);

      v90 = signpost_c2_entryLock_start;
      v91 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v87 = 1107296256;
      v88 = sub_188C3DD6C;
      v89 = &block_descriptor_54;
      v71 = _Block_copy(&aBlock);
      [v67 _animateByRetargetingAnimations_completion_];
      _Block_release(v71);
      _Block_release(v70);
      return;
    }

    goto LABEL_39;
  }

  swift_beginAccess();
  _UIUpdateRequestDeactivate(dword_1EA936AF0, 1048627);
  swift_endAccess();
  [v26 presentationValue];
  v36 = v35;
  v37 = swift_allocObject();
  [v26 velocity];
  v39 = v36 + v38 * 0.099;
  *(v37 + 16) = v39;
  v40 = (v37 + 16);
  v41 = objc_opt_self();
  v42 = [v41 rootSettings];
  v43 = [v42 elasticPanDriverSettings];

  [v43 projectionThreshold];
  v45 = v44;

  v46 = swift_unknownObjectWeakLoadStrong();
  if (!v46)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    return;
  }

  [v46 currentTrackLength];
  v48 = v47;
  swift_unknownObjectRelease();
  v49 = v45 / v48;
  if (v45 / v48 < 0.0)
  {
    v49 = 0.0;
  }

  if (vabdd_f64(v39, v36) < v49)
  {
    [v26 value];
    v39 = v50;
    *v40 = v50;
  }

  v51 = swift_unknownObjectWeakLoadStrong();
  if (v51)
  {
    aBlock = 0xBFF0000000000000;
    v52 = [v51 driver:v1 shouldAdjustValueForProposedValue:&aBlock adjustedValue:0 startValue:0 endValue:v39];
    swift_unknownObjectRelease();
    if (v52)
    {
      *v40 = aBlock;
    }
  }

  v53 = swift_unknownObjectWeakLoadStrong();
  if (v53)
  {
    v54 = v53;
    v55 = v1;
    if ([v53 isLocked])
    {
      [v54 value];
      v57 = v56;
      swift_unknownObjectRelease();
      v58 = v57;
      v59 = v57;
    }

    else
    {
      [v54 minValue];
      v73 = v72;
      [v54 maxValue];
      v75 = v74;
      swift_unknownObjectRelease();
      if (v73 > v75)
      {
        goto LABEL_36;
      }

      v59 = v75;
      v58 = v73;
    }
  }

  else
  {
    v55 = v1;
    v59 = 1.0;
    v58 = 0.0;
  }

  sub_1891F0578(v58, v59);
  *&v55[OBJC_IVAR____UIFluidSliderElasticPanDriver_state] = 2;
  v76 = objc_opt_self();
  v77 = [v41 rootSettings];
  v78 = [v77 elasticPanDriverSettings];

  v79 = [v78 update];
  v80 = [v79 springAnimationBehavior];

  v81 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v82 = swift_allocObject();
  *(v82 + 16) = v81;
  *(v82 + 24) = v37;
  v90 = sub_188F12350;
  v91 = v82;
  aBlock = MEMORY[0x1E69E9820];
  v87 = 1107296256;
  v88 = sub_188A4A8F0;
  v89 = &block_descriptor_64_0;
  v83 = _Block_copy(&aBlock);

  v84 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v90 = sub_188F12358;
  v91 = v84;
  aBlock = MEMORY[0x1E69E9820];
  v87 = 1107296256;
  v88 = sub_188C3DD6C;
  v89 = &block_descriptor_70_1;
  v85 = _Block_copy(&aBlock);

  [v76 _animateUsingSpringBehavior_tracking_animations_completion_];
  _Block_release(v85);
  _Block_release(v83);
}

void sub_188F119F8(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 16;
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_188F123C8;
  *(v5 + 24) = v4;
  v7[4] = sub_188E3FE50;
  v7[5] = v5;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_188A4A968;
  v7[3] = &block_descriptor_89;
  v6 = _Block_copy(v7);

  UIFS_HFR(v6);
  _Block_release(v6);

  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }
}

void sub_188F11B48(uint64_t a1, double *a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v4 = *&Strong[OBJC_IVAR____UIFluidSliderElasticPanDriver_animatedValue];

  swift_beginAccess();
  [v4 setValue_];
}

void sub_188F11BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (*(Strong + OBJC_IVAR____UIFluidSliderElasticPanDriver_state) == 2)
    {
      *(Strong + OBJC_IVAR____UIFluidSliderElasticPanDriver_state) = 0;
      sub_188F11E74();
    }
  }
}

void sub_188F11C34(uint64_t a1, double a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_188F12444;
  *(v5 + 24) = v4;
  v7[4] = sub_188E3FE50;
  v7[5] = v5;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_188A4A968;
  v7[3] = &block_descriptor_99_1;
  v6 = _Block_copy(v7);

  UIFS_HFR(v6);
  _Block_release(v6);

  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }
}

void sub_188F11D90(uint64_t a1, double a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v4 = *&Strong[OBJC_IVAR____UIFluidSliderElasticPanDriver_animatedValue];

  [v4 setValue_];
}

void sub_188F11E74()
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = OBJC_IVAR____UIFluidSliderElasticPanDriver_state;
  if (*(v0 + OBJC_IVAR____UIFluidSliderElasticPanDriver_state) != 3)
  {
    v2 = v0;
    v3 = *(v0 + OBJC_IVAR____UIFluidSliderElasticPanDriver_initialStretchAmount);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      __break(1u);
      return;
    }

    [Strong currentTrackLength];
    v6 = v5;
    swift_unknownObjectRelease();
    [*(v0 + OBJC_IVAR____UIFluidSliderElasticPanDriver_animatedValue) presentationValue];
    v8 = v7;
    v28 = v7;
    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      v26 = -1.0;
      v27[0] = -1.0;
      v25 = -1.0;
      v10 = [v9 driver:v0 shouldAdjustValueForProposedValue:v27 adjustedValue:&v26 startValue:&v25 endValue:v8];
      v11 = -1.0;
      if (v10)
      {
        if (v26 > v25)
        {
          goto LABEL_20;
        }

        v11 = v27[0];
        sub_188F120EC(v27[0], v26, v25);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v11 = -1.0;
    }

    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      if ([v12 isLocked])
      {
        [v13 value];
        v15 = v14;
        swift_unknownObjectRelease();
        v16 = v15;
        v17 = v15;
      }

      else
      {
        [v13 minValue];
        v19 = v18;
        [v13 maxValue];
        v21 = v20;
        swift_unknownObjectRelease();
        if (v19 > v21)
        {
          goto LABEL_21;
        }

        v17 = v21;
        v16 = v19;
      }
    }

    else
    {
      v17 = 1.0;
      v16 = 0.0;
    }

    if (v3 / v6 >= 0.0)
    {
      sub_1891F04F0(v16, v17, -(v3 / v6), v3 / v6);
      v22 = v28;
      v23 = *(v2 + v1);
      v24 = swift_unknownObjectWeakLoadStrong();
      if (v24)
      {
        v27[0] = v22;
        v27[1] = 1.0;
        v27[2] = v23;
        *&v27[3] = 1;
        v27[4] = v11;
        [v24 fluidSliderDriver:v2 didGenerateUpdate:v27];
        swift_unknownObjectRelease();
      }

      return;
    }

    __break(1u);
LABEL_20:
    __break(1u);
    __break(1u);
LABEL_21:
    __break(1u);
  }
}

void sub_188F120EC(double a1, double a2, double a3)
{
  v4 = *v3;
  if ((*&a3 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v5 = *v3;
  }

  else
  {
    v5 = a3;
  }

  if ((~*&a3 & 0x7FF0000000000000) != 0)
  {
    v5 = a3;
  }

  if (v4 <= a3)
  {
    v5 = *v3;
  }

  if ((*&v5 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = v5;
  }

  if ((~*&v5 & 0x7FF0000000000000) != 0)
  {
    v6 = v5;
  }

  if (v5 >= a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = a2;
  }

  if (v4 > a1)
  {
    a2 = a3;
  }

  if (a2 != a1)
  {
    v8 = vabdd_f64(a1, a2);
    *v3 = v8 * pow((v7 - a1) / v8, 5.0) + a1;
  }
}

id sub_188F12180()
{
  v1 = type metadata accessor for _UIFluidSliderElasticPanDriver();
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_dealloc, v1);
}

uint64_t sub_188F12244(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 1;
  }

  v4 = Strong;
  v5 = swift_unknownObjectWeakLoadStrong();
  [a1 locationInView_];
  v7 = v6;
  v9 = v8;

  v10 = [v4 driver:v1 shouldBeginAtPoint:{v7, v9}];
  swift_unknownObjectRelease();
  return v10;
}

id sub_188F12360()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____UIFluidSliderElasticPanDriver_animatedValue);
  [v2 setValue_];

  return [v2 setVelocity_];
}

void UIFS_HFR(void *a1)
{
  v1 = a1;
  v3 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [UIView _modifyAnimationsWithPreferredFrameRateRange:1048627 updateReason:v1 animations:*&v3.minimum, *&v3.maximum, *&v3.preferred];
}

void sub_188F12580()
{
  v1 = OBJC_IVAR____TtC5UIKit34_UIZoomToolbarTransitionController_temporaryViews;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_10:
    *(v0 + v1) = MEMORY[0x1E69E7CC0];

    v7 = *(v0 + OBJC_IVAR____TtC5UIKit34_UIZoomToolbarTransitionController_toolbarSnapshot);
    *(v0 + OBJC_IVAR____TtC5UIKit34_UIZoomToolbarTransitionController_toolbarSnapshot) = 0;

    return;
  }

  v3 = sub_18A4A7F68();
  if (!v3)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v3 >= 1)
  {

    for (i = 0; i != v3; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = sub_188E49300(i, v2);
      }

      else
      {
        v5 = *(v2 + 8 * i + 32);
      }

      v6 = v5;
      [v5 removeFromSuperview];
    }

    goto LABEL_10;
  }

  __break(1u);
}

id sub_188F1269C()
{
  ObjectType = swift_getObjectType();
  sub_188F12580();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_188F127C8(void *a1)
{
  v2 = [objc_allocWithZone(UIView) init];
  v3 = &selRef_finishTransition;
  [a1 frame];
  [v2 setFrame_];
  [v2 setHidden_];
  [a1 alpha];
  [v2 setAlpha_];
  v4 = [a1 subviews];
  sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78);
  v5 = sub_18A4A7548();

  v6 = v5;
  if (v5 >> 62)
  {
    v26 = sub_18A4A7F68();
    v6 = v5;
    v7 = v26;
    v8 = &selRef_setEnqueuedWillEnterForegroundActions_;
    if (v26)
    {
      goto LABEL_3;
    }

LABEL_19:

    return;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v8 = &selRef_setEnqueuedWillEnterForegroundActions_;
  if (!v7)
  {
    goto LABEL_19;
  }

LABEL_3:
  if (v7 >= 1)
  {
    v9 = 0;
    v27 = v6 & 0xC000000000000001;
    v28 = v6;
    while (1)
    {
      v22 = v27 ? sub_188E49300(v9, v6) : *(v6 + 8 * v9 + 32);
      v21 = v22;
      v23 = [a1 currentBackgroundView];
      if (!v23)
      {
        break;
      }

      v24 = v23;
      v25 = sub_18A4A7C88();

      if ((v25 & 1) == 0)
      {
        goto LABEL_16;
      }

      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      if (!v10)
      {
        goto LABEL_16;
      }

      v11 = v10;
      v12 = objc_allocWithZone(_UIBarBackground);
      v13 = v3;
      v14 = a1;
      v15 = v2;
      v16 = v21;
      v17 = [v12 init];
      v18 = [v11 layout];
      [v17 setLayout_];

      [v17 transitionBackgroundViewsAnimated_];
      v2 = v15;
      a1 = v14;
      v3 = v13;
      v8 = &selRef_setEnqueuedWillEnterForegroundActions_;
      v19 = v17;
LABEL_7:
      v20 = v19;
      [v21 v3[509]];
      [v20 v8[400]];
      [v2 addSubview_];

      v21 = v20;
LABEL_8:
      ++v9;

      v6 = v28;
      if (v7 == v9)
      {
        goto LABEL_19;
      }
    }

LABEL_16:
    v19 = [v21 snapshotViewAfterScreenUpdates_];
    if (!v19)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  __break(1u);
}

void sub_188F12AE0(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(v2 + OBJC_IVAR____TtC5UIKit34_UIZoomToolbarTransitionController_toolbarSnapshot);
  if (v5)
  {
    v6 = *(v2 + OBJC_IVAR____TtC5UIKit34_UIZoomToolbarTransitionController_toolbarSnapshot);
  }

  else
  {
    sub_188F127C8(a1);
    v6 = v7;
  }

  v8 = OBJC_IVAR____TtC5UIKit34_UIZoomToolbarTransitionController_temporaryViews;
  swift_beginAccess();
  v9 = v5;
  v10 = v6;
  MEMORY[0x18CFE2450]();
  if (*((*(v3 + v8) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v8) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_18A4A7588();
  }

  sub_18A4A75F8();
  swift_endAccess();
  sub_188A34624(0, &qword_1ED48E8C0, off_1E70E94D0);
  v11 = sub_18A4A7518();
  [a1 setItems:v11 animated:0];

  if (*(v3 + OBJC_IVAR____TtC5UIKit34_UIZoomToolbarTransitionController_isZoomingIn) == 1)
  {
    v12 = [a1 superview];
    [v12 addSubview_];

    v13 = [objc_allocWithZone(_UIPortalView) initWithSourceView_];
    [a1 frame];
    [v13 setFrame_];
    [v13 setHidesSourceView_];
    [*(v3 + OBJC_IVAR____TtC5UIKit34_UIZoomToolbarTransitionController_overlay) addSubview_];
    v14 = swift_beginAccess();
    MEMORY[0x18CFE2450](v14);
    if (*((*(v3 + v8) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v8) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18A4A7588();
    }

    sub_18A4A75F8();
    swift_endAccess();
  }

  else
  {
    [*(v3 + OBJC_IVAR____TtC5UIKit34_UIZoomToolbarTransitionController_overlay) addSubview_];
  }
}

double sub_188F12D64@<D0>(uint64_t *a1@<X8>)
{
  a1[3] = &_s13ShadowMetricsVN;
  a1[4] = &off_1EFACAC60;
  v2 = swift_allocObject();
  *a1 = v2;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  return result;
}

void sub_188F12DF0(void *a1)
{
  v2 = v1;
  v4 = [v2 collapsedPreview];
  if (v4)
  {
    v5 = v4;
    if (!a1)
    {

      if (!_UIContextMenuReduceMotionEnabled())
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    sub_188A34624(0, &qword_1EA930100, off_1E70EA9B8);
    v6 = a1;
    v7 = sub_18A4A7C88();

    if (v7)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  if (_UIContextMenuReduceMotionEnabled())
  {
LABEL_5:
    [v2 setHidesCollapsedSourceView_];
  }

LABEL_6:
  if (([v2 expanded] & 1) == 0)
  {
    sub_188D62314();
  }

  [v2 _updateCollapsedPortalView];
}

id sub_188F12FDC(uint64_t a1)
{
  v6.super_class = _UIContentPlatterView;
  v3 = objc_msgSendSuper2(&v6, sel_collapsedShadowStyle);
  v5.receiver = v1;
  v5.super_class = _UIContentPlatterView;
  objc_msgSendSuper2(&v5, sel_setCollapsedShadowStyle_, a1);
  result = [v1 collapsedShadowStyle];
  if (result != v3)
  {
    if ([v1 alwaysCompact])
    {
      [v1 setExpandedShadowStyle_];
    }

    sub_188D81DB4();
    return [v1 _updateShadowPath];
  }

  return result;
}

void sub_188F133B4(char a1)
{
  objc_msgSendSuper2(&v17, sel_setHidesCollapsedSourceView_, a1 & 1);
  v2 = [v1 collapsedPortalView];
  if (v2)
  {
    v3 = v2;
    [v2 setHidesSourceView_];
  }

  if (([v1 hidesCollapsedSourceView] & 1) == 0)
  {
    v16 = [v1 collapsedPreview];
    if (v16)
    {
      v4 = [v1 morphView];
      v5 = OBJC_IVAR____UIMagicMorphView_destinations;
      swift_beginAccess();
      v6 = *&v4[v5];
      v15 = v4;
      if (v6 >> 62)
      {
        goto LABEL_22;
      }

      for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_18A4A7F68())
      {

        if (!i)
        {
          break;
        }

        v8 = 0;
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v9 = sub_188E494B4(v8, v6);
          }

          else
          {
            if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_21;
            }

            v9 = *(v6 + 8 * v8 + 32);
          }

          v10 = v9;
          v11 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          sub_188A34624(0, &qword_1ED490230, 0x1E69E58C0);
          v12 = [*&v10[OBJC_IVAR____UIMagicMorphDestination_preview] view];
          v13 = [v16 view];
          v14 = sub_18A4A7C88();

          if (v14)
          {

            sub_1890DEC38();

            return;
          }

          ++v8;
          if (v11 == i)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        ;
      }

LABEL_17:
    }
  }
}

void sub_188F13650()
{
  [v0 setDidTearOffPreviewForDrag_];
  if ([v0 alwaysCompact])
  {
    v1 = [v0 collapsedPreview];
    if (v1)
    {
      v2 = v1;
      v3 = [v1 _previewMode];

      if (v3 == 4)
      {
        CGAffineTransformMakeScale(&v4, 0.909090909, 0.909090909);
        [v0 setTransform_];
      }
    }
  }
}

void sub_188F13760()
{
  v1 = [v0 expandedPreview];
  if (v1)
  {
    v2 = v1;
    if ([v0 isFrozen] & 1) != 0 || (objc_msgSend(v0, sel_alwaysCompact))
    {
      v3 = v2;
    }

    else
    {
      [v0 setIsFrozen_];
      v14 = [v2 view];
      [v14 bounds];
      v8 = _UISnapshotViewRectAfterCommit(v14, 0, v4, v5, v6, v7);
      if (v8)
      {
        v9 = v8;
        [v14 bounds];
        [(UIView *)v9 setFrame:?];
        v10 = v9;
        v11 = [v2 parameters];
        v12 = [v2 target];
        v13 = [objc_allocWithZone(UITargetedPreview) initWithView:v10 parameters:v11 target:v12];

        [v0 setExpandedPreview_];
      }

      v3 = v14;
    }
  }
}

void sub_188F13960()
{
  v1 = v0;
  v2 = [v0 _destinationPreview];
  if (v2)
  {
    v9 = v2;
    [v2 size];
    v4 = v3;
    v6 = v5;
    v7 = [v0 morphView];
    [v7 setBounds_];

    v8 = [v1 morphView];
    v8[OBJC_IVAR____UIMagicMorphView_contentSizeDidChange] = 1;
    [v8 setNeedsLayout];
    if ([objc_opt_self() _isInAnimationBlock])
    {
      [v8 layoutIfNeeded];
    }

    sub_1890E07A8();

    [v1 setNeedsLayout];
    [v1 layoutIfNeeded];
  }
}

void sub_188F13C20()
{
  v1 = [v0 expanded];
  v2 = &selRef_expandedShadowStyle;
  if (!v1)
  {
    v2 = &selRef_collapsedShadowStyle;
  }

  if ([v0 *v2] == 1 && (v3 = objc_msgSend(v0, sel__destinationPreview)) != 0)
  {
    v4 = v3;
    v5 = [v0 layer];
    v6 = [v4 parameters];
    v7 = [v6 effectiveShadowPath];

    if (v7)
    {
      v8 = [v7 CGPath];
    }

    else
    {
      v8 = 0;
    }

    [v5 setShadowPath_];
  }

  else
  {
    v8 = [v0 layer];
    [v8 setShadowPath_];
  }
}

void sub_188F13DD0()
{
  v1 = [v0 collapsedPreview];
  v2 = [v0 collapsedPortalView];
  if (v1)
  {
    v3 = v2;
    if (!v2)
    {
      v3 = [objc_allocWithZone(_UIPortalView) init];
      [v3 setHidesSourceView_];
      [v3 setHidden_];
      [v0 insertSubview:v3 atIndex:0];
      [v0 setCollapsedPortalView_];

      v2 = 0;
    }

    v4 = v2;
    v5 = [v1 view];
    [v3 setSourceView_];

    v6 = [v1 view];
    v7 = [v6 _suppressBackground];

    [v0 setCollapsedPreviewBackgroundSuppression_];
    swift_unknownObjectRelease();
    v8 = v3;
  }

  else
  {
    if (!v2)
    {
      return;
    }

    v9 = v2;
    [v2 removeFromSuperview];
    [v0 setCollapsedPortalView_];
    [v0 setCollapsedPreviewBackgroundSuppression_];
    v8 = v9;
  }
}

id sub_188F1404C(double a1, double a2, double a3, double a4)
{
  _s21BackgroundCaptureViewCMa();
  v16.receiver = v4;
  v16.super_class = v9;
  v10 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  [v10 setUserInteractionEnabled_];
  v11 = [v10 layer];

  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    v13 = v12;
    v14 = sub_18A4A7258();
    [v13 setGroupName_];

    v11 = v14;
  }

  return v10;
}

id sub_188F141E4()
{
  v1 = _s21BackgroundCaptureViewCMa();
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_dealloc, v1);
}

id sub_188F14254(id result, void *a2, void *a3)
{
  if (result)
  {
    v4 = result;
    v5 = a2;

    return a3;
  }

  return result;
}

void sub_188F142A4()
{
  v1 = OBJC_IVAR____UIContentPlatterView_morphView;
  type metadata accessor for _UIMagicMorphView(0);
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____UIContentPlatterView_collapsedPortalView) = 0;
  *(v0 + OBJC_IVAR____UIContentPlatterView_collapsedPreviewBackgroundSuppression) = 0;
  *(v0 + OBJC_IVAR____UIContentPlatterView_isFrozen) = 0;
  *(v0 + OBJC_IVAR____UIContentPlatterView_didTearOffPreviewForDrag) = 0;
  v2 = (v0 + OBJC_IVAR____UIContentPlatterView_backgroundCapture);
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  *(v0 + OBJC_IVAR____UIContentPlatterView__shadowProperties) = 0;
  sub_18A4A8398();
  __break(1u);
}

char *sub_188F14554()
{
  if ([v0 _hasInvalidated])
  {
    sub_188F1558C();
    swift_allocError();
    *v1 = 0;
    return swift_willThrow();
  }

  if (qword_1EA92FEE0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EA92FEF0;
  if ([v0 _sceneComponentForKey_])
  {
    _s17TextureControllerCMa();
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  _s17TextureControllerCMa();
  objc_allocWithZone(v4);
  v5 = v0;
  v6 = sub_188F167B8(v5);

  [v5 _registerSceneComponent_forKey_];
  return v6;
}

uint64_t sub_188F1468C()
{
  sub_188A34624(0, &qword_1ED48F7A0, 0x1E696AEC0);
  result = sub_18A4A7CB8();
  qword_1EA92FEF0 = result;
  return result;
}

id sub_188F14864(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t), id a4)
{
  v9 = sub_188F14554();
  if (!v4)
  {
    v10 = v9;
    a4 = sub_188DD0418(a1, a2, a3, a4);
  }

  return a4;
}

id sub_188F14908(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = [a1 window];
  if (v12 && (v13 = v12, v12, v13 == v6))
  {
    v16 = sub_188F14B84(a5, a6);
    v17 = *&v16[OBJC_IVAR____TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C136_UISelfTargetingTextureWindowStorage_controller];

    v6 = sub_188DD0E2C(a1, a2, a3);
  }

  else
  {
    sub_188F1558C();
    swift_allocError();
    *v14 = 1;
    swift_willThrow();
  }

  return v6;
}

id sub_188F14B84(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = objc_getAssociatedObject(v2, &unk_1EA936D88);
  swift_endAccess();
  if (v4)
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  v23[0] = v21;
  v23[1] = v22;
  if (!*(&v22 + 1))
  {
    sub_188A3F5FC(v23, &qword_1EA934050, qword_18A64CA10);
    goto LABEL_8;
  }

  type metadata accessor for _UISelfTargetingTextureWindowStorage();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v6 = *(a2 + 16);
    type metadata accessor for _UISharedTextureController();
    v8 = v7;
    v9 = objc_allocWithZone(v7);
    v10 = &v9[OBJC_IVAR____TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C126_UISharedTextureController_delegate];
    *&v9[OBJC_IVAR____TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C126_UISharedTextureController_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    *&v9[OBJC_IVAR____TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C126_UISharedTextureController_sharingContexts] = sub_188E8E398(MEMORY[0x1E69E7CC0]);
    *(v10 + 1) = v6;
    swift_unknownObjectWeakAssign();
    v20.receiver = v9;
    v20.super_class = v8;
    v11 = objc_msgSendSuper2(&v20, sel_init);
    type metadata accessor for _UISelfTargetingTextureWindowStorage();
    v13 = v12;
    v14 = objc_allocWithZone(v12);
    *&v14[OBJC_IVAR____TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C136_UISelfTargetingTextureWindowStorage_containerView] = 0;
    *&v14[OBJC_IVAR____TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C136_UISelfTargetingTextureWindowStorage_controller] = v11;
    v19.receiver = v14;
    v19.super_class = v13;
    v15 = v11;
    v16 = objc_msgSendSuper2(&v19, sel_init);
    swift_beginAccess();
    v5 = v16;
    objc_setAssociatedObject(v2, &unk_1EA936D88, v5, 1);
    swift_endAccess();

    return v5;
  }

  return v18;
}

id sub_188F14D80(uint64_t a1, uint64_t a2)
{
  v5 = sub_188F14B84(a1, a2);
  v6 = *&v5[OBJC_IVAR____TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C136_UISelfTargetingTextureWindowStorage_containerView];
  v7 = v6;

  if (!v6)
  {
    [v2 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    type metadata accessor for _UISharedTextureContainerView();
    v17 = [objc_allocWithZone(v16) initWithFrame_];
    [v17 setUserInteractionEnabled_];
    v18 = [v17 layer];
    [v18 setAllowsHitTesting_];

    [v17 setHidden_];
    v19 = sub_188F14B84(a1, a2);
    v20 = *&v19[OBJC_IVAR____TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C136_UISelfTargetingTextureWindowStorage_containerView];
    *&v19[OBJC_IVAR____TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C136_UISelfTargetingTextureWindowStorage_containerView] = v17;
    v7 = v17;

    [v2 insertSubview:v7 atIndex:0];
  }

  return v7;
}

id sub_188F14FF4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_188F15058()
{
  sub_18A4A80E8();

  strcpy(v2, "SharedTexture-");
  v0 = sub_18A4A8618();
  MEMORY[0x18CFE22D0](v0);

  return v2[0];
}

id sub_188F150F4()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C126_UISharedTextureController_delegate + 8] = 0;
  swift_unknownObjectWeakAssign();
  sub_188DED0E8();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_188F15444(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_188F1548C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_188F154E0()
{
  result = qword_1EA936E50;
  if (!qword_1EA936E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA936E50);
  }

  return result;
}

unint64_t sub_188F15538()
{
  result = qword_1EA92FF08[0];
  if (!qword_1EA92FF08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA92FF08);
  }

  return result;
}

unint64_t sub_188F1558C()
{
  result = qword_1EA936E60;
  if (!qword_1EA936E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA936E60);
  }

  return result;
}

uint64_t sub_188F155F4(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v7 = a4[7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA935770, &qword_18A64F2D0);
  result = sub_188A3F704(a3, v7 + *(*(v8 - 8) + 72) * a1, &unk_1EA935770, &qword_18A64F2D0);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_188F156AC(unint64_t result, _OWORD *a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = (a4[6] + 48 * result);
  v5 = a2[1];
  *v4 = *a2;
  v4[1] = v5;
  *(v4 + 25) = *(a2 + 25);
  *(a4[7] + 8 * result) = a3;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_188F15704(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 40 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  *(a4[7] + 8 * result) = a3;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_188F1575C(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  v4 = a4[7] + 40 * result;
  v5 = *(a3 + 16);
  *v4 = *a3;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a3 + 32);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_188F157B4(unint64_t result, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  v4 = a3[13];
  v5 = (a4[7] + (result << 8));
  v5[12] = a3[12];
  v5[13] = v4;
  v5[14] = a3[14];
  *(v5 + 233) = *(a3 + 233);
  v6 = a3[9];
  v5[8] = a3[8];
  v5[9] = v6;
  v7 = a3[11];
  v5[10] = a3[10];
  v5[11] = v7;
  v8 = a3[5];
  v5[4] = a3[4];
  v5[5] = v8;
  v9 = a3[7];
  v5[6] = a3[6];
  v5[7] = v9;
  v10 = a3[1];
  *v5 = *a3;
  v5[1] = v10;
  v11 = a3[3];
  v5[2] = a3[2];
  v5[3] = v11;
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

unint64_t sub_188F15840(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  v4 = a4[7] + 216 * result;
  v5 = *(a3 + 80);
  *(v4 + 64) = *(a3 + 64);
  *(v4 + 80) = v5;
  v6 = *(a3 + 48);
  *(v4 + 32) = *(a3 + 32);
  *(v4 + 48) = v6;
  v7 = *(a3 + 144);
  *(v4 + 128) = *(a3 + 128);
  *(v4 + 144) = v7;
  v8 = *(a3 + 112);
  *(v4 + 96) = *(a3 + 96);
  *(v4 + 112) = v8;
  *(v4 + 208) = *(a3 + 208);
  v9 = *(a3 + 192);
  *(v4 + 176) = *(a3 + 176);
  *(v4 + 192) = v9;
  *(v4 + 160) = *(a3 + 160);
  v10 = *(a3 + 16);
  *v4 = *a3;
  *(v4 + 16) = v10;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_188F158C8(unint64_t result, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  v4 = (a4[7] + 160 * result);
  v5 = a3[5];
  v4[4] = a3[4];
  v4[5] = v5;
  v6 = a3[3];
  v4[2] = a3[2];
  v4[3] = v6;
  v7 = a3[9];
  v4[8] = a3[8];
  v4[9] = v7;
  v8 = a3[7];
  v4[6] = a3[6];
  v4[7] = v8;
  v9 = a3[1];
  *v4 = *a3;
  v4[1] = v9;
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_188F15938(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_188E8FC60(a3, a4[7] + 16 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_188F159A0(unint64_t result, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = a5[6] + 16 * result;
  *v5 = a2;
  *(v5 + 8) = a3 & 1;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_188F159F0(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = a5[7] + 16 * result;
  *v5 = a3;
  *(v5 + 8) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_188F15A3C(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + 48 * result);
  v7 = a4[1];
  *v6 = *a4;
  v6[1] = v7;
  v6[2] = a4[2];
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_188F15A98(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UITextEffectView.EffectID(0);
  sub_188F16994(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for UITextEffectView.EffectID);
  result = sub_188A5EBAC(a3, a4[7] + 40 * a1);
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_188F15B58(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_188E904EC(a3, a4[7] + 8 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_188F15BC4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 32 * result);
  *v7 = a2;
  v7[1] = a3;
  v7[2] = a4;
  v7[3] = a5;
  *(a7[7] + 8 * result) = a6;
  v8 = a7[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v10;
  }

  return result;
}

uint64_t sub_188F15C10(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_188A3F704(a3, a4[7] + 8 * a1, a5, a6);
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_188F15C84(unint64_t result, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = a5[6] + 16 * result;
  *v5 = a2;
  *(v5 + 8) = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_188F15CD0(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_188F15D14(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_188F166A0(a3, a4[7] + 32 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_188F15D7C(unint64_t result, uint64_t a2, void *a3, double a4, double a5, double a6, double a7)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + 8 * result) = a2;
  v7 = (a3[7] + 32 * result);
  *v7 = a4;
  v7[1] = a5;
  v7[2] = a6;
  v7[3] = a7;
  v8 = a3[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v10;
  }

  return result;
}

uint64_t sub_188F15DC8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_18A4A29D8();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_188F15E80(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for UITextEffectView.EffectID(0);
  result = sub_188F16994(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for UITextEffectView.EffectID);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_188F15F2C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = _s8CacheKeyVMa(0);
  result = sub_188F16994(a2, v8 + *(*(v9 - 8) + 72) * a1, _s8CacheKeyVMa);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}