uint64_t sub_192198B04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1968, &qword_19223DEC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_192198B74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_192198BBC()
{
  if (qword_1ED7499A8 != -1)
  {
    swift_once();
  }

  v0 = off_1ED7499B0;
  v1 = *(off_1ED7499B0 + 2);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  v0[24] = 5;
  os_unfair_lock_unlock(*(v1 + 16));

  return result;
}

uint64_t sub_192198C88()
{

  return swift_deallocClassInstance();
}

double sub_192198CD8()
{
  sub_192226DF0();
  if (sub_192226DC0())
  {
    v0 = MEMORY[0x1E6965930];
  }

  else
  {
    sub_192226E00();
    if (sub_192226DC0())
    {
      v0 = MEMORY[0x1E6965940];
    }

    else
    {
      sub_192226DD0();
      if (sub_192226DC0())
      {
        v0 = MEMORY[0x1E6965938];
      }

      else
      {
        sub_192226E40();
        if (sub_192226DC0())
        {
          v0 = MEMORY[0x1E6965960];
        }

        else
        {
          sub_192226E20();
          if (sub_192226DC0())
          {
            v0 = MEMORY[0x1E6965950];
          }

          else
          {
            sub_192226E30();
            v1 = sub_192226DC0();
            v0 = MEMORY[0x1E6965958];
            if ((v1 & 1) == 0)
            {
              sub_192226E10();
              if (sub_192226DC0())
              {
                v0 = MEMORY[0x1E6965948];
              }

              else
              {
                sub_192226DE0();
                if (sub_192226DC0())
                {
                  v0 = MEMORY[0x1E6965968];
                }

                else
                {
                  sub_192226DB0();
                  if (sub_192226DC0())
                  {
                    v0 = MEMORY[0x1E6965978];
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return *v0;
}

uint64_t ContentSizeCategory.description.getter()
{
  v1 = v0;
  v2 = sub_1922265A0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E697F658])
  {
    return 21336;
  }

  if (v7 == *MEMORY[0x1E697F690])
  {
    return 83;
  }

  if (v7 == *MEMORY[0x1E697F698])
  {
    return 77;
  }

  if (v7 == *MEMORY[0x1E697F680])
  {
    return 76;
  }

  if (v7 == *MEMORY[0x1E697F650])
  {
    return 19544;
  }

  v9 = v7;
  result = 5003329;
  if (v9 == *MEMORY[0x1E697F660])
  {
    return 5003352;
  }

  if (v9 == *MEMORY[0x1E697F630])
  {
    return 1280858200;
  }

  if (v9 == *MEMORY[0x1E697F670])
  {
    return 19777;
  }

  if (v9 == *MEMORY[0x1E697F668])
  {
    return 19521;
  }

  if (v9 != *MEMORY[0x1E697F678])
  {
    if (v9 == *MEMORY[0x1E697F640])
    {
      return 1280858177;
    }

    else
    {
      if (v9 != *MEMORY[0x1E697F648])
      {
        (*(v3 + 8))(v6, v2);
        return 76;
      }

      return 0x4C58585841;
    }
  }

  return result;
}

uint64_t sub_192199098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(char *, char *, uint64_t)@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v147 = a6;
  v148 = a4;
  v155 = a25;
  v141 = a24;
  v151 = a23;
  v149 = a5;
  v150 = a20;
  v153 = a19;
  v154 = a21;
  v132 = a18;
  v131 = a17;
  v130 = a16;
  v129 = a15;
  v127 = a14;
  v124 = a13;
  v136 = a12;
  v142 = *(a22 - 8);
  v31 = *(v142 + 64);
  v135 = a11;
  v152 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v134 = &v119 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v133 = &v119 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v140 = &v119 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v128 = &v119 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v139 = &v119 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v119 - v41;
  v43 = sub_192224FB0();
  MEMORY[0x1EEE9AC00](v43 - 8);
  v44 = *a8;
  *(a9 + 192) = 0;
  v137 = a1;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  v143 = a2;
  *(a9 + 32) = 0;
  *(a9 + 40) = 0;
  *(a9 + 48) = a3;
  v45 = v149;
  *(a9 + 176) = v148;
  *(a9 + 184) = v45;
  swift_getAssociatedConformanceWitness();

  if (a7)
  {
    v46 = v147;
  }

  else
  {
    sub_192224BC0();
    v46 = sub_192227980();
    a7 = v47;
  }

  v122 = a9;
  *(a9 + 152) = v46;
  *(a9 + 160) = a7;
  *(a9 + 168) = v44;
  v48 = v153;
  v126 = sub_192224BB0();
  v125 = v49;
  v50 = swift_allocObject();
  v123 = v50;
  v51 = v48;
  v52 = v150;
  v53 = v151;
  v50[2] = v48;
  v50[3] = v52;
  v54 = v52;
  v55 = v155;
  v50[4] = v154;
  v50[5] = a22;
  v57 = v141;
  v56 = v142;
  v50[6] = v53;
  v50[7] = v57;
  v50[8] = v55;
  v58 = *(v56 + 16);
  v144 = v56 + 16;
  v145 = v58;
  v120 = v42;
  v58(v42, v152, a22);
  v59 = v56;
  v60 = *(v56 + 80);
  v61 = (v60 + 72) & ~v60;
  v149 = v60;
  v138 = v61 + v31;
  v62 = swift_allocObject();
  *(v62 + 2) = v51;
  *(v62 + 3) = v54;
  v64 = v154;
  v63 = v155;
  *(v62 + 4) = v154;
  *(v62 + 5) = a22;
  *(v62 + 6) = v53;
  *(v62 + 7) = v57;
  *(v62 + 8) = v63;
  v147 = *(v59 + 32);
  v148 = v59 + 32;
  v65 = v62;
  v121 = v62;
  v147(&v62[v61], v120, a22);
  v119 = (v61 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = &v65[v119];
  v67 = v127;
  *v66 = v124;
  v66[1] = v67;
  v68 = v152;
  v69 = v145;
  v145(v139, v152, a22);
  v70 = swift_allocObject();
  v71 = v153;
  v72 = v150;
  v73 = v151;
  v70[2] = v153;
  v70[3] = v72;
  v70[4] = v64;
  v70[5] = a22;
  v70[6] = v73;
  v70[7] = v57;
  v70[8] = v63;
  v146 = v61;
  v74 = v70;
  v127 = v70;
  v147(v70 + v61, v139, a22);
  v75 = v119;
  v76 = (v74 + v119);
  v77 = v130;
  *v76 = v129;
  v76[1] = v77;
  v78 = v128;
  v69(v128, v68, a22);
  v79 = v75;
  v80 = swift_allocObject();
  v81 = v150;
  *(v80 + 2) = v71;
  *(v80 + 3) = v81;
  v82 = v155;
  *(v80 + 4) = v154;
  *(v80 + 5) = a22;
  *(v80 + 6) = v73;
  *(v80 + 7) = v57;
  *(v80 + 8) = v82;
  v83 = v80;
  v139 = v80;
  v84 = v78;
  v85 = v147;
  v147(&v80[v61], v84, a22);
  v86 = &v83[v79];
  v87 = v132;
  *v86 = v131;
  v86[1] = v87;
  v88 = v145;
  v145(v140, v68, a22);
  v89 = swift_allocObject();
  v132 = v89;
  v90 = v154;
  v89[2] = v153;
  v89[3] = v81;
  v89[4] = v90;
  v89[5] = a22;
  v91 = v151;
  v89[6] = v151;
  v89[7] = v57;
  v92 = v155;
  v89[8] = v155;
  v85(v89 + v146, v140, a22);
  v93 = v133;
  v94 = v152;
  v88(v133, v152, a22);
  v95 = swift_allocObject();
  v97 = v153;
  v96 = v154;
  v98 = v150;
  *(v95 + 2) = v153;
  *(v95 + 3) = v98;
  *(v95 + 4) = v96;
  *(v95 + 5) = a22;
  v99 = v141;
  *(v95 + 6) = v91;
  *(v95 + 7) = v99;
  *(v95 + 8) = v92;
  v100 = v93;
  v101 = v147;
  v147(&v95[v146], v100, a22);
  v102 = v134;
  v145(v134, v94, a22);
  v103 = swift_allocObject();
  *(v103 + 2) = v97;
  *(v103 + 3) = v98;
  *(v103 + 4) = v96;
  *(v103 + 5) = a22;
  *(v103 + 6) = v151;
  *(v103 + 7) = v99;
  *(v103 + 8) = v155;
  v101(&v103[v146], v102, a22);
  v105 = v135;
  v104 = v136;
  v106 = v122;
  *v122 = v135;
  v106[1] = v104;
  v106[16] = &type metadata for ControlToggleTemplateProvider;
  v106[17] = &off_1F06B3538;
  v107 = swift_allocObject();
  v106[13] = v107;
  v108 = v137;
  v109 = v143;
  *(v107 + 16) = v137;
  *(v107 + 24) = v109;
  v110 = v125;
  *(v107 + 32) = v126;
  *(v107 + 40) = v110;
  *(v107 + 48) = 0;
  v111 = v123;
  *(v107 + 56) = sub_19219FF70;
  *(v107 + 64) = v111;
  v112 = v121;
  *(v107 + 72) = &unk_19223E2E0;
  *(v107 + 80) = v112;
  *(v107 + 88) = 0;
  *(v107 + 96) = 0;
  v113 = v127;
  *(v107 + 104) = &unk_19223E2F0;
  *(v107 + 112) = v113;
  v114 = v139;
  *(v107 + 120) = &unk_19223E300;
  *(v107 + 128) = v114;
  v115 = v132;
  *(v107 + 136) = &unk_19223E310;
  *(v107 + 144) = v115;
  *(v107 + 152) = &unk_19223E320;
  *(v107 + 160) = v95;
  *(v107 + 168) = &unk_19223E330;
  *(v107 + 176) = v103;
  v116 = *(v142 + 8);

  v117 = v104;
  result = v116(v152, a22);
  *(v106 + 144) = 0;
  v106[7] = v108;
  v106[8] = v109;
  v106[9] = 0;
  v106[10] = 0;
  v106[11] = v105;
  v106[12] = v117;
  return result;
}

uint64_t sub_1921998F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDF8, &qword_19222B5B0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_19219FDFC(a3, v22 - v9);
  v11 = sub_192227CF0();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_19219FE6C(v10);
  }

  else
  {
    sub_192227CE0();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_192227C70();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1922279A0() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_19219FE6C(a3);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_19219FE6C(a3);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_192199B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_192199B9C, 0, 0);
}

uint64_t sub_192199B9C()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (AssociatedTypeWitness == &type metadata for EmptyConfiguration)
  {
    swift_dynamicCast();
    v8 = v0[1];

    return v8();
  }

  else
  {
    v2 = AssociatedTypeWitness;
    v3 = swift_task_alloc();
    v0[6] = v3;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    *v3 = v0;
    v3[1] = sub_1920F9F30;
    v5 = v0[2];
    v6 = v0[3];

    return sub_19213431C(v5, v6, v2, AssociatedConformanceWitness);
  }
}

id sub_192199CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19214C644();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_192224C80();
  v14 = sub_1921D85E8(v12, a1, AssociatedConformanceWitness);
  (*(v10 + 8))(v12, a1);
  return v14;
}

uint64_t sub_192199E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a6;
  v6[6] = v14;
  v6[3] = a4;
  v6[4] = a5;
  v6[2] = a3;
  v6[7] = swift_task_alloc();
  v6[8] = *(a5 - 8);
  v9 = swift_task_alloc();
  v6[9] = v9;
  v6[10] = sub_192227CC0();
  v6[11] = sub_192227CB0();
  v12 = (*(v15 + 48) + **(v15 + 48));
  v10 = swift_task_alloc();
  v6[12] = v10;
  *v10 = v6;
  v10[1] = sub_192199FEC;

  return v12(v9, a1);
}

uint64_t sub_192199FEC()
{
  *(*v1 + 104) = v0;

  v3 = sub_192227C70();
  if (v0)
  {
    v4 = sub_1921A1270;
  }

  else
  {
    v4 = sub_1921A127C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_19219A148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a7;
  v7[6] = v15;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a3;
  v7[7] = swift_task_alloc();
  v7[8] = *(a5 - 8);
  v10 = swift_task_alloc();
  v7[9] = v10;
  v7[10] = sub_192227CC0();
  v7[11] = sub_192227CB0();
  v13 = (*(v16 + 48) + **(v16 + 48));
  v11 = swift_task_alloc();
  v7[12] = v11;
  *v11 = v7;
  v11[1] = sub_192199FEC;

  return v13(v10, a1);
}

uint64_t sub_19219A330(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = v14;
  *(v6 + 48) = v15;
  *(v6 + 24) = a5;
  *(v6 + 32) = a6;
  *(v6 + 16) = a4;
  *(v6 + 112) = a2;
  *(v6 + 56) = swift_task_alloc();
  *(v6 + 64) = *(a6 - 8);
  v9 = swift_task_alloc();
  *(v6 + 72) = v9;
  *(v6 + 80) = sub_192227CC0();
  *(v6 + 88) = sub_192227CB0();
  v12 = (*(v16 + 48) + **(v16 + 48));
  v10 = swift_task_alloc();
  *(v6 + 96) = v10;
  *v10 = v6;
  v10[1] = sub_19219A518;

  return v12(v9, a1);
}

uint64_t sub_19219A518()
{
  *(*v1 + 104) = v0;

  v3 = sub_192227C70();
  if (v0)
  {
    v4 = sub_1921A1270;
  }

  else
  {
    v4 = sub_1921A1280;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_19219A674(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 32) = a6;
  *(v7 + 40) = a7;
  *(v7 + 96) = a3;
  *(v7 + 16) = a1;
  *(v7 + 24) = a5;
  *(v7 + 48) = *(a7 - 8);
  v9 = swift_task_alloc();
  *(v7 + 56) = v9;
  *(v7 + 64) = sub_192227CC0();
  *(v7 + 72) = sub_192227CB0();
  v12 = (*(v14 + 48) + **(v14 + 48));
  v10 = swift_task_alloc();
  *(v7 + 80) = v10;
  *v10 = v7;
  v10[1] = sub_19219A830;

  return v12(v9, a2);
}

uint64_t sub_19219A830()
{
  *(*v1 + 88) = v0;

  v3 = sub_192227C70();
  if (v0)
  {
    v4 = sub_1921A1264;
  }

  else
  {
    v4 = sub_1921A1284;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_19219A98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a7;
  v7[5] = v15;
  v7[2] = a2;
  v7[3] = a3;
  v7[6] = *(a3 - 8);
  v10 = swift_task_alloc();
  v7[7] = v10;
  v7[8] = sub_192227CC0();
  v7[9] = sub_192227CB0();
  v13 = (*(v15 + 48) + **(v15 + 48));
  v11 = swift_task_alloc();
  v7[10] = v11;
  *v11 = v7;
  v11[1] = sub_19219AB44;

  return v13(v10, a1, a7);
}

uint64_t sub_19219AB44()
{
  v2 = *v1;
  v2[11] = v0;

  if (v0)
  {
    v4 = sub_192227C70();

    return MEMORY[0x1EEE6DFA0](sub_1921A1274, v4, v3);
  }

  else
  {
    v10 = (*(v2[5] + 24) + **(v2[5] + 24));
    v5 = swift_task_alloc();
    v2[12] = v5;
    *v5 = v2;
    v5[1] = sub_19219AD54;
    v6 = v2[4];
    v7 = v2[5];
    v8 = v2[7];

    return v10(v8, v6, v7);
  }
}

uint64_t sub_19219AD54(char a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = sub_192227C70();
    v7 = v6;
    v8 = sub_1921A1288;
  }

  else
  {
    *(v4 + 112) = a1 & 1;
    v5 = sub_192227C70();
    v7 = v9;
    v8 = sub_1921A1294;
  }

  return MEMORY[0x1EEE6DFA0](v8, v5, v7);
}

uint64_t sub_19219AED8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 32) = a8;
  *(v8 + 40) = v16;
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  *(v8 + 96) = a2;
  *(v8 + 48) = *(a4 - 8);
  v11 = swift_task_alloc();
  *(v8 + 56) = v11;
  *(v8 + 64) = sub_192227CC0();
  *(v8 + 72) = sub_192227CB0();
  v14 = (*(v16 + 48) + **(v16 + 48));
  v12 = swift_task_alloc();
  *(v8 + 80) = v12;
  *v12 = v8;
  v12[1] = sub_19219B094;

  return v14(v11, a1, a8);
}

uint64_t sub_19219B094()
{
  *(*v1 + 88) = v0;

  v3 = sub_192227C70();
  if (v0)
  {
    v4 = sub_1921A1264;
  }

  else
  {
    v4 = sub_1921A126C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_19219B1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a8;
  v8[6] = v16;
  v8[3] = a3;
  v8[4] = a4;
  v8[2] = a1;
  v8[7] = *(a4 - 8);
  v11 = swift_task_alloc();
  v8[8] = v11;
  v8[9] = sub_192227CC0();
  v8[10] = sub_192227CB0();
  v14 = (*(v16 + 48) + **(v16 + 48));
  v12 = swift_task_alloc();
  v8[11] = v12;
  *v12 = v8;
  v12[1] = sub_19219B3AC;

  return v14(v11, a2, a8);
}

uint64_t sub_19219B3AC()
{
  v2 = *v1;
  v2[12] = v0;

  if (v0)
  {
    v4 = sub_192227C70();

    return MEMORY[0x1EEE6DFA0](sub_1921A1278, v4, v3);
  }

  else
  {
    v11 = (*(v2[6] + 40) + **(v2[6] + 40));
    v5 = swift_task_alloc();
    v2[13] = v5;
    *v5 = v2;
    v5[1] = sub_19219B5BC;
    v6 = v2[8];
    v7 = v2[5];
    v8 = v2[6];
    v9 = v2[2];

    return v11(v9, v6, v7, v8);
  }
}

uint64_t sub_19219B5BC()
{
  *(*v1 + 112) = v0;

  v3 = sub_192227C70();
  if (v0)
  {
    v4 = sub_1921A128C;
  }

  else
  {
    v4 = sub_1921A1268;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

id sub_19219B718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19214C644();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_192224C80();
  v12 = sub_1921D85E8(v10, a1, AssociatedConformanceWitness);
  (*(v8 + 8))(v10, a1);
  return v12;
}

uint64_t sub_19219B838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a6;
  v8[6] = v17;
  v8[3] = a4;
  v8[4] = a5;
  v8[2] = a3;
  v8[7] = swift_task_alloc();
  v8[8] = *(a5 - 8);
  v12 = swift_task_alloc();
  v8[9] = v12;
  v8[10] = sub_192227CC0();
  v8[11] = sub_192227CB0();
  v15 = (*(v18 + 48) + **(v18 + 48));
  v13 = swift_task_alloc();
  v8[12] = v13;
  *v13 = v8;
  v13[1] = sub_19219BA20;

  return v15(v12, a1, a8);
}

uint64_t sub_19219BA20()
{
  *(*v1 + 104) = v0;

  v3 = sub_192227C70();
  if (v0)
  {
    v4 = sub_19219BC58;
  }

  else
  {
    v4 = sub_19219BB7C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_19219BB7C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[4];
  v4 = v0[2];

  v4(v1);
  v5 = sub_192227570();
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_19219BC58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19219BCD4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 40) = a8;
  *(v8 + 48) = v16;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  *(v8 + 112) = a2;
  *(v8 + 56) = swift_task_alloc();
  *(v8 + 64) = *(a6 - 8);
  v11 = swift_task_alloc();
  *(v8 + 72) = v11;
  *(v8 + 80) = sub_192227CC0();
  *(v8 + 88) = sub_192227CB0();
  v14 = (*(v17 + 48) + **(v17 + 48));
  v12 = swift_task_alloc();
  *(v8 + 96) = v12;
  *v12 = v8;
  v12[1] = sub_19219BEBC;

  return v14(v11, a1);
}

uint64_t sub_19219BEBC()
{
  *(*v1 + 104) = v0;

  v3 = sub_192227C70();
  if (v0)
  {
    v4 = sub_1921A1270;
  }

  else
  {
    v4 = sub_19219C018;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_19219C018()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = *(v0 + 112);

  v4(v5, v1);
  v6 = sub_192227570();
  (*(v2 + 8))(v1, v3);

  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t sub_19219C104(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 32) = a6;
  *(v7 + 40) = a7;
  *(v7 + 96) = a3;
  *(v7 + 16) = a1;
  *(v7 + 24) = a5;
  *(v7 + 48) = *(a7 - 8);
  v9 = swift_task_alloc();
  *(v7 + 56) = v9;
  *(v7 + 64) = sub_192227CC0();
  *(v7 + 72) = sub_192227CB0();
  v12 = (*(v14 + 48) + **(v14 + 48));
  v10 = swift_task_alloc();
  *(v7 + 80) = v10;
  *v10 = v7;
  v10[1] = sub_19219C2C0;

  return v12(v9, a2);
}

uint64_t sub_19219C2C0()
{
  *(*v1 + 88) = v0;

  v3 = sub_192227C70();
  if (v0)
  {
    v4 = sub_192165DB0;
  }

  else
  {
    v4 = sub_19219C41C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_19219C41C()
{
  v13 = v0;
  v1 = *(v0 + 24);

  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 40);
  if (v1)
  {
    v5 = *(v0 + 16);
    (*(v0 + 24))(v11, *(v0 + 96), *(v0 + 56));
    (*(v3 + 8))(v2, v4);
    v6 = v11[3];
    *(v5 + 32) = v11[2];
    *(v5 + 48) = v6;
    *(v5 + 64) = v12;
    v7 = v11[1];
    *v5 = v11[0];
    *(v5 + 16) = v7;
  }

  else
  {
    v8 = *(v0 + 16);
    (*(v3 + 8))(*(v0 + 56), *(v0 + 40));
    *(v8 + 64) = 0;
    *(v8 + 32) = 0u;
    *(v8 + 48) = 0u;
    *v8 = 0u;
    *(v8 + 16) = 0u;
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_19219C524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a6;
  v6[5] = v14;
  v6[2] = a2;
  v6[3] = a3;
  v6[6] = *(a3 - 8);
  v9 = swift_task_alloc();
  v6[7] = v9;
  v6[8] = sub_192227CC0();
  v6[9] = sub_192227CB0();
  v12 = (*(v14 + 48) + **(v14 + 48));
  v10 = swift_task_alloc();
  v6[10] = v10;
  *v10 = v6;
  v10[1] = sub_19219C6DC;

  return v12(v9, a1, a6);
}

uint64_t sub_19219C6DC()
{
  v2 = *v1;
  v2[11] = v0;

  if (v0)
  {
    v4 = sub_192227C70();

    return MEMORY[0x1EEE6DFA0](sub_19219CB08, v4, v3);
  }

  else
  {
    v10 = (*(v2[5] + 24) + **(v2[5] + 24));
    v5 = swift_task_alloc();
    v2[12] = v5;
    *v5 = v2;
    v5[1] = sub_19219C8EC;
    v6 = v2[4];
    v7 = v2[5];
    v8 = v2[7];

    return v10(v8, v6, v7);
  }
}

uint64_t sub_19219C8EC(char a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = sub_192227C70();
    v7 = v6;
    v8 = sub_19219CB78;
  }

  else
  {
    *(v4 + 112) = a1 & 1;
    v5 = sub_192227C70();
    v7 = v9;
    v8 = sub_19219CA70;
  }

  return MEMORY[0x1EEE6DFA0](v8, v5, v7);
}

uint64_t sub_19219CA70()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);
  v5 = *(v0 + 112);

  return v4(v5);
}

uint64_t sub_19219CB08()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_19219CB78()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[3];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_19219CC10(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 32) = a7;
  *(v7 + 40) = v15;
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  *(v7 + 96) = a2;
  *(v7 + 48) = *(a4 - 8);
  v10 = swift_task_alloc();
  *(v7 + 56) = v10;
  *(v7 + 64) = sub_192227CC0();
  *(v7 + 72) = sub_192227CB0();
  v13 = (*(v15 + 48) + **(v15 + 48));
  v11 = swift_task_alloc();
  *(v7 + 80) = v11;
  *v11 = v7;
  v11[1] = sub_19219CDCC;

  return v13(v10, a1, a7);
}

uint64_t sub_19219CDCC()
{
  *(*v1 + 88) = v0;

  v3 = sub_192227C70();
  if (v0)
  {
    v4 = sub_1921A1264;
  }

  else
  {
    v4 = sub_19219CF28;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_19219CF28()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 24);
  v6 = *(v0 + 96);

  (*(v3 + 32))(v1, v6, v4, v3);
  (*(v2 + 8))(v1, v5);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_19219CFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a7;
  v7[6] = v15;
  v7[3] = a3;
  v7[4] = a4;
  v7[2] = a1;
  v7[7] = *(a4 - 8);
  v10 = swift_task_alloc();
  v7[8] = v10;
  v7[9] = sub_192227CC0();
  v7[10] = sub_192227CB0();
  v13 = (*(v15 + 48) + **(v15 + 48));
  v11 = swift_task_alloc();
  v7[11] = v11;
  *v11 = v7;
  v11[1] = sub_19219D1B4;

  return v13(v10, a2, a7);
}

uint64_t sub_19219D1B4()
{
  v2 = *v1;
  v2[12] = v0;

  if (v0)
  {
    v4 = sub_192227C70();

    return MEMORY[0x1EEE6DFA0](sub_19219D5B4, v4, v3);
  }

  else
  {
    v11 = (*(v2[6] + 40) + **(v2[6] + 40));
    v5 = swift_task_alloc();
    v2[13] = v5;
    *v5 = v2;
    v5[1] = sub_19219D3C4;
    v6 = v2[8];
    v7 = v2[5];
    v8 = v2[6];
    v9 = v2[2];

    return v11(v9, v6, v7, v8);
  }
}

uint64_t sub_19219D3C4()
{
  *(*v1 + 112) = v0;

  v3 = sub_192227C70();
  if (v0)
  {
    v4 = sub_19219D620;
  }

  else
  {
    v4 = sub_19219D520;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_19219D520()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[4];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_19219D5B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19219D620()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[4];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t ControlToggle.init<A, B, C, D>(kind:intent:displayName:preferredSize:stateProvider:title:subtitle:value:affordances:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, _BYTE *a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, __int128 a9, __int128 a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v53 = a7;
  v54 = a2;
  v56 = a4;
  v57 = a6;
  v55 = a3;
  v51 = a8;
  v52 = a1;
  v49 = a10;
  v50 = a9;
  v48 = a11;
  v43 = a15;
  v44 = a18;
  v45 = a14;
  v46 = a19;
  v47 = a12;
  v22 = *(a17 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ToggleStateProviderBox(0, a17, a21, v25);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v38 - v27;
  v39 = &v38 - v27;
  LOBYTE(a5) = *a5;
  swift_getAssociatedConformanceWitness();
  v42 = sub_192224BB0();
  v41 = v29;
  v58[0] = a5;
  v40 = v22;
  (*(v22 + 16))(v24, v57, a17);
  (*(v22 + 32))(v28, v24, a17);
  WitnessTable = swift_getWitnessTable();
  v31 = v44;
  v32 = v45;
  v33 = v43;
  v34 = v46;
  v35 = sub_192107D5C(a13, v45, v43, a16, v26, v44, v46, a20, WitnessTable);
  sub_192080DB4(v52, v54, a13, v42, v41, v55, v56, v58, v51, v39, v35, v36, v53, v50, *(&v50 + 1), v49, *(&v49 + 1), v48, *(&v48 + 1), v47, a13, v32, v33, a16, v26, v31, v34, a20, WitnessTable);
  return (*(v40 + 8))(v57, a17);
}

uint64_t ControlToggle.init<A, B, C>(kind:intent:displayName:preferredSize:stateProvider:title:value:affordances:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, char *, uint64_t)@<X3>, uint64_t a4@<X4>, _BYTE *a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, __int128 a9, __int128 a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v44 = a7;
  v45 = a2;
  v47 = a4;
  v48 = a6;
  v46 = a3;
  v42 = a8;
  v43 = a1;
  v40 = a10;
  v41 = a9;
  v38 = a13;
  v39 = a11;
  v19 = *(a15 - 8);
  v37 = a17;
  MEMORY[0x1EEE9AC00](a1);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for ToggleStateProviderBox(0, a15, a18, v22);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v34 - v24;
  LOBYTE(a5) = *a5;
  swift_getAssociatedConformanceWitness();
  v26 = sub_192224BB0();
  v35 = v27;
  v36 = v26;
  v49[0] = a5;
  (*(v19 + 16))(v21, v48, a15);
  (*(v19 + 32))(v25, v21, a15);
  WitnessTable = swift_getWitnessTable();
  v29 = v37;
  v30 = v38;
  v31 = sub_1921081A8(a12, v38, a14, v23, a16, v37, WitnessTable);
  sub_192199098(v43, v45, a12, v36, v35, v46, v47, v49, v42, v25, v31, v32, v44, v41, *(&v41 + 1), v40, *(&v40 + 1), v39, a12, v30, a14, v23, a16, v29, WitnessTable);
  return (*(v19 + 8))(v48, a15);
}

uint64_t ControlToggle.init<A, B, C>(kind:intent:stateProvider:content:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v37 = a7;
  v38 = a6;
  v42 = a5;
  v43 = a3;
  v33 = a4;
  v40 = a1;
  v41 = a2;
  v39 = a8;
  v15 = *(a12 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for ToggleStateProviderBox(0, a12, a15, v18);
  MEMORY[0x1EEE9AC00](v31);
  v20 = &v30 - v19;
  v32 = &v30 - v19;
  swift_getAssociatedConformanceWitness();
  v21 = sub_192224BB0();
  v35 = v22;
  v36 = v21;
  v34 = v15;
  (*(v15 + 16))(v17, v43, a12);
  (*(v15 + 32))(v20, v17, a12);
  v23 = swift_allocObject();
  v23[2] = a9;
  v23[3] = a10;
  v23[4] = a11;
  v23[5] = a12;
  v23[6] = a13;
  v23[7] = a14;
  v24 = v33;
  v23[8] = a15;
  v23[9] = v24;
  v23[10] = v42;
  v25 = v31;
  WitnessTable = swift_getWitnessTable();
  sub_19202F7C8(v44);

  v27 = sub_1921081A8(a9, a10, a11, v25, a13, a14, WitnessTable);
  sub_192199098(v40, v41, a9, v36, v35, 0, 0, v44, v39, v32, v27, v28, sub_19219DFF4, v23, v38, v37, 0, 0, a9, a10, a11, v25, a13, a14, WitnessTable);

  return (*(v34 + 8))(v43, a12);
}

uint64_t sub_19219DEB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  v13(1, v10);
  sub_1921BB14C();
  v14 = *(v6 + 8);
  v14(v8, a5);
  sub_1921BB14C();
  return (v14)(v12, a5);
}

uint64_t ControlToggle.disabled(_:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  (*(*(a2 - 8) + 16))(a3, v4, a2);
  sub_1920B2B7C(v4 + 104, &v31);
  if (BYTE7(v33) == 1)
  {
    return sub_1920B2BD8(&v31);
  }

  sub_19209CBAC(&v31, v42);
  sub_192033A64(v42, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EADF0C38, &qword_1922371C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return __swift_destroy_boxed_opaque_existential_1(v42);
  }

  v21[0] = v31;
  v21[1] = v32;
  v8 = a1 & 1;
  v18 = v31;
  v19 = v32;
  v20[0] = v8;
  *&v20[81] = v38;
  *&v20[97] = v39;
  *&v20[113] = *v40;
  *&v20[128] = *&v40[15];
  *&v20[17] = v34;
  *&v20[33] = v35;
  *&v20[49] = v36;
  *&v20[65] = v37;
  *&v20[1] = v33;
  v16[3] = &type metadata for ControlToggleTemplateProvider;
  v16[4] = &off_1F06B3538;
  v9 = swift_allocObject();
  v16[0] = v9;
  v10 = *&v20[112];
  *(v9 + 144) = *&v20[96];
  *(v9 + 160) = v10;
  *(v9 + 176) = *&v20[128];
  v11 = *&v20[48];
  *(v9 + 80) = *&v20[32];
  *(v9 + 96) = v11;
  v12 = *&v20[80];
  *(v9 + 112) = *&v20[64];
  *(v9 + 128) = v12;
  v13 = v19;
  *(v9 + 16) = v18;
  *(v9 + 32) = v13;
  v14 = *&v20[16];
  *(v9 + 48) = *v20;
  *(v9 + 64) = v14;
  v22 = v8;
  v28 = v38;
  v29 = v39;
  *v30 = *v40;
  *&v30[15] = *&v40[15];
  v24 = v34;
  v25 = v35;
  v26 = v36;
  v27 = v37;
  v23 = v33;
  sub_19219E264(&v18, v15);
  sub_19219E29C(v21);
  __swift_destroy_boxed_opaque_existential_1(v42);
  v17 = 0;
  return sub_192147370(v16, a3 + 104);
}

uint64_t sub_19219E310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_19219E364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1920EF9CC;

  return v9(a1, a2, a3);
}

uint64_t sub_19219E4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 40) + **(a4 + 40));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1920B3B44;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_19219E5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 48) + **(a4 + 48));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1920B3B44;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ToggleStateProvider.getState(appIntent:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1920EF9CC;

  return v9(a1, a2, a3);
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_19219E86C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_19219E8B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_19219E92C(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  v8 = (*(v4 + 24) + **(v4 + 24));
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_19210B93C;

  return v8(a1, v5, v4);
}

uint64_t sub_19219EA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 104) = a5;
  *(v7 + 16) = a4;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v7 + 24) = AssociatedConformanceWitness;
  *(v7 + 32) = *(AssociatedConformanceWitness + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v9 = sub_192228240();
  *(v7 + 40) = v9;
  *(v7 + 48) = *(v9 - 8);
  *(v7 + 56) = swift_task_alloc();
  v10 = swift_checkMetadataState();
  *(v7 + 64) = v10;
  *(v7 + 72) = *(v10 - 8);
  *(v7 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19219EC3C, 0, 0);
}

uint64_t sub_19219EC3C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 104);
  v3 = *(v0 + 24);
  (*(*(v0 + 72) + 16))(*(v0 + 80), *(v0 + 16), v1);
  (*(v3 + 24))((v2 & 1) == 0, v1, v3);
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_19219ED34;
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 32);

  return MEMORY[0x1EEDB2D48](v5, 1, v6, v7);
}

uint64_t sub_19219ED34()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_19219EEE8;
  }

  else
  {
    (*(v2[6] + 8))(v2[7], v2[5]);
    v3 = sub_19219EE60;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_19219EE60()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_19219EEE8()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_19219EF70(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1921A1290;

  return sub_19219E92C(a1, a2);
}

uint64_t sub_19219F020(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1920A59A8;

  return sub_19210A4F4(a1);
}

uint64_t sub_19219F0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1920B3B44;

  return sub_192199B78(a1, a2, a3, a4);
}

uint64_t sub_19219F170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[47] = a3;
  v4[48] = v3;
  v4[45] = a1;
  v4[46] = a2;
  sub_192227CC0();
  v4[49] = sub_192227CB0();
  v6 = sub_192227C70();
  v4[50] = v6;
  v4[51] = v5;

  return MEMORY[0x1EEE6DFA0](sub_19219F20C, v6, v5);
}

uint64_t sub_19219F20C()
{
  v2 = *(v0 + 376);
  v1 = *(v0 + 384);
  v3 = *(v0 + 360);
  v4 = *v1;
  v5 = *(v1 + 32);
  *(v0 + 32) = *(v1 + 16);
  *(v0 + 48) = v5;
  *(v0 + 16) = v4;
  v6 = *(v1 + 48);
  v7 = *(v1 + 64);
  v8 = *(v1 + 96);
  *(v0 + 96) = *(v1 + 80);
  *(v0 + 112) = v8;
  *(v0 + 64) = v6;
  *(v0 + 80) = v7;
  v9 = *(v1 + 112);
  v10 = *(v1 + 144);
  v11 = *(v1 + 160);
  *(v0 + 144) = *(v1 + 128);
  *(v0 + 160) = v10;
  *(v0 + 128) = v9;
  *(v0 + 176) = v11;
  *(v0 + 184) = v2;
  v3[3] = type metadata accessor for ControlTemplateToggle(0);
  v3[4] = sub_19219FED4(&qword_1EADED030, type metadata accessor for ControlTemplateToggle, &protocol conformance descriptor for ControlTemplateToggle);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v3);
  sub_19219E264(v1, v0 + 192);
  v13 = v2;
  v14 = swift_task_alloc();
  *(v0 + 416) = v14;
  *v14 = v0;
  v14[1] = sub_19219F354;
  v15 = *(v0 + 368);

  return sub_19212CC98(boxed_opaque_existential_1, v15);
}

uint64_t sub_19219F354()
{
  v2 = *v1;
  *(*v1 + 424) = v0;

  v3 = *(v2 + 408);
  v4 = *(v2 + 400);
  if (v0)
  {
    v5 = sub_19219F500;
  }

  else
  {
    v5 = sub_19219F490;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_19219F490()
{
  sub_19219FF1C(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19219F500()
{
  v1 = *(v0 + 360);
  sub_19219FF1C(v0 + 16);

  __swift_deallocate_boxed_opaque_existential_1(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_19219F57C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v4;
  v9 = *(v3 + 144);
  *(v7 + 144) = *(v3 + 128);
  *(v7 + 160) = v9;
  *(v7 + 176) = *(v3 + 160);
  v10 = *(v3 + 80);
  *(v7 + 80) = *(v3 + 64);
  *(v7 + 96) = v10;
  v11 = *(v3 + 112);
  *(v7 + 112) = *(v3 + 96);
  *(v7 + 128) = v11;
  v12 = *(v3 + 16);
  *(v7 + 16) = *v3;
  *(v7 + 32) = v12;
  v13 = *(v3 + 48);
  *(v7 + 48) = *(v3 + 32);
  *(v7 + 64) = v13;
  v14 = swift_task_alloc();
  *(v7 + 184) = v14;
  *v14 = v7;
  v14[1] = sub_19219F664;

  return sub_19219F170(a1, a2, a3);
}

uint64_t sub_19219F664()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_19219F758(uint64_t a1)
{
  v6 = (*(v1 + 120) + **(v1 + 120));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_19219F84C;

  return v6(a1);
}

uint64_t sub_19219F84C(char a1)
{
  v4 = *v2;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v4 + 8);

    return v7(a1 & 1);
  }
}

uint64_t sub_19219F97C(uint64_t a1, uint64_t a2)
{
  v5 = a1 > 0;
  v8 = (*(v2 + 136) + **(v2 + 136));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1920B3B44;

  return v8(a2, v5);
}

double sub_19219FAB4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v20 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDF8, &qword_19222B5B0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v20 - v14;
  v16 = sub_192227CF0();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v9 + 16))(v12, a1, AssociatedTypeWitness);
  v17 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = a3;
  *(v18 + 5) = a4;
  (*(v9 + 32))(&v18[v17], v12, AssociatedTypeWitness);
  v18[v17 + v10] = a2;
  sub_1921998F0(0, 0, v15, &unk_19223E2C0, v18);

  return result;
}

uint64_t sub_19219FCB8(uint64_t a1)
{
  v5 = v1[4];
  v4 = v1[5];
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1 + ((*(v6 + 80) + 48) & ~*(v6 + 80));
  v10 = *(v9 + *(v6 + 64));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1920B3B44;

  return sub_19219EA50(a1, v7, v8, v9, v10, v5, v4);
}

uint64_t sub_19219FDFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDF8, &qword_19222B5B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19219FE6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDF8, &qword_19222B5B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19219FED4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_19219FF84(uint64_t a1)
{
  v4 = v1[2];
  v14 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = (*(*(v6 - 8) + 80) + 72) & ~*(*(v6 - 8) + 80);
  v8 = (v1 + ((*(*(v6 - 8) + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1920EF2F4;

  return sub_19219B838(a1, v1 + v7, v9, v10, v4, v14, v5, v6);
}

uint64_t objectdestroy_48Tm_0()
{
  (*(*(*(v0 + 40) - 8) + 8))(v0 + ((*(*(*(v0 + 40) - 8) + 80) + 72) & ~*(*(*(v0 + 40) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1921A0174(uint64_t a1, char a2)
{
  v14 = v2[3];
  v15 = v2[2];
  v6 = v2[4];
  v7 = v2[5];
  v8 = (*(*(v7 - 8) + 80) + 72) & ~*(*(v7 - 8) + 80);
  v9 = (v2 + ((*(*(v7 - 8) + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1920EF9CC;

  return sub_19219BCD4(a1, a2, v2 + v8, v10, v11, v15, v14, v6);
}

uint64_t sub_1921A02D0(uint64_t a1, uint64_t a2, char a3)
{
  v6 = v4;
  v15 = *(v3 + 16);
  v8 = *(v3 + 40);
  v9 = (*(*(v8 - 8) + 80) + 72) & ~*(*(v8 - 8) + 80);
  v10 = (v3 + ((*(*(v8 - 8) + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1920B3B44;

  return sub_19219C104(a1, a2, a3, v3 + v9, v11, v12, v15);
}

uint64_t sub_1921A0438(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = (*(*(v6 - 8) + 80) + 72) & ~*(*(v6 - 8) + 80);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1920EF2F4;

  return sub_19219C524(a1, v1 + v7, v3, v4, v5, v6);
}

uint64_t sub_1921A0550(uint64_t a1, char a2)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = (*(*(v7 - 8) + 80) + 72) & ~*(*(v7 - 8) + 80);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1920B3B44;

  return sub_19219CC10(a1, a2, v2 + v8, v4, v5, v6, v7);
}

uint64_t objectdestroy_60Tm()
{
  (*(*(*(v0 + 40) - 8) + 8))(v0 + ((*(*(*(v0 + 40) - 8) + 80) + 72) & ~*(*(*(v0 + 40) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1921A06EC(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v11 = v2[2];
  v6 = v2[4];
  v7 = v2[5];
  v8 = (*(*(v7 - 8) + 80) + 72) & ~*(*(v7 - 8) + 80);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1920A59A8;

  return sub_19219CFF8(a1, a2, v2 + v8, v11, v5, v6, v7);
}

uint64_t sub_1921A0840(uint64_t a1)
{
  v4 = v1[2];
  v13 = v1[3];
  v5 = v1[6];
  v6 = (*(*(v5 - 8) + 80) + 88) & ~*(*(v5 - 8) + 80);
  v7 = (v1 + ((*(*(v5 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1920EF9CC;

  return sub_192199E08(a1, v1 + v6, v8, v9, v4, v13);
}

uint64_t sub_1921A09A0(uint64_t a1)
{
  v4 = v1[2];
  v14 = v1[3];
  v12 = v1[4];
  v5 = v1[6];
  v6 = (*(*(v5 - 8) + 80) + 88) & ~*(*(v5 - 8) + 80);
  v7 = (v1 + ((*(*(v5 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1920EF9CC;

  return sub_19219A148(a1, v1 + v6, v8, v9, v4, v14, v12);
}

uint64_t objectdestroy_90Tm()
{
  (*(*(*(v0 + 48) - 8) + 8))(v0 + ((*(*(*(v0 + 48) - 8) + 80) + 88) & ~*(*(*(v0 + 48) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1921A0B98(uint64_t a1, char a2)
{
  v12 = *(v2 + 16);
  v5 = *(v2 + 48);
  v6 = (*(*(v5 - 8) + 80) + 88) & ~*(*(v5 - 8) + 80);
  v7 = (v2 + ((*(*(v5 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1920EF9CC;

  return sub_19219A330(a1, a2, v2 + v6, v8, v9, v12);
}

uint64_t sub_1921A0CFC(uint64_t a1, uint64_t a2, char a3)
{
  v5 = v4;
  v15 = *(v3 + 16);
  v6 = *(v3 + 48);
  v7 = (*(*(v6 - 8) + 80) + 88) & ~*(*(v6 - 8) + 80);
  v8 = (v3 + ((*(*(v6 - 8) + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1920B3B44;

  return sub_19219A674(a1, a2, a3, v3 + v7, v9, v10, v15);
}

uint64_t sub_1921A0E64(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = (*(*(v7 - 8) + 80) + 88) & ~*(*(v7 - 8) + 80);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1920EF9CC;

  return sub_19219A98C(a1, v1 + v8, v3, v4, v5, v6, v7);
}

uint64_t sub_1921A0F8C(uint64_t a1, char a2)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = (*(*(v8 - 8) + 80) + 88) & ~*(*(v8 - 8) + 80);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1920B3B44;

  return sub_19219AED8(a1, a2, v2 + v9, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_106Tm()
{
  (*(*(*(v0 + 48) - 8) + 8))(v0 + ((*(*(*(v0 + 48) - 8) + 80) + 88) & ~*(*(*(v0 + 48) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1921A1138(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v12 = v2[2];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = (*(*(v8 - 8) + 80) + 88) & ~*(*(v8 - 8) + 80);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1920B3B44;

  return sub_19219B1F0(a1, a2, v2 + v9, v12, v5, v6, v7, v8);
}

uint64_t sub_1921A1298@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *a1;
  v11 = swift_allocObject();
  v12 = (v10 + *MEMORY[0x1E69E77B0]);
  v13 = v12[1];
  v14 = (v13 + *MEMORY[0x1E695A680]);
  v15 = v14[1];
  v16 = *(v15 + *MEMORY[0x1E695A610] + 8);
  v11[2] = v16;
  v23 = *v12;
  v24 = v16;
  v11[3] = *v12;
  v22 = v14[2];
  v11[4] = v22;
  v11[5] = v15;
  v11[6] = v13;
  v11[7] = a2;
  v11[8] = a3;
  v11[9] = a4;
  v21 = v14[5];
  v11[10] = v21;
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = a1;
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = a4;
  v18[5] = a1;
  v19 = swift_allocObject();
  v19[2] = v24;
  v19[3] = v23;
  v19[4] = v22;
  v19[5] = v15;
  v19[6] = v13;
  v19[7] = a2;
  v19[8] = a3;
  v19[9] = a4;
  v19[10] = v21;
  *a5 = &unk_19223E530;
  a5[1] = v11;
  a5[2] = &unk_19223E540;
  a5[3] = v17;
  a5[4] = &unk_19223E550;
  a5[5] = v18;
  a5[6] = &unk_19223E560;
  a5[7] = v19;
}

double ControlPicker.init<A, B, C, D, E, F, G, H>(kind:displayName:preferredSize:intentUpdatableProperty:title:subtitle:value:affordances:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t *a6@<X5>, void *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v26 = *a5;
  v27 = *(*a6 + *MEMORY[0x1E69E77B0] + 8);
  v28 = sub_192224D10();
  v43 = v29;
  v44 = v28;
  v52 = v26;
  sub_1921A1298(a6, a19, a20, a21, v51);

  v31 = sub_192224BA0();
  if (a14)
  {
    v32 = a15;
  }

  else
  {
    v32 = 0;
  }

  v33 = type metadata accessor for KeyPathPickerBox(0, *(*(v27 + *MEMORY[0x1E695A680] + 8) + *MEMORY[0x1E695A610] + 8), a20, v30);
  v34 = sub_1920818CC();
  WitnessTable = swift_getWitnessTable();
  sub_192145D94(a1, a2, &type metadata for EmptyConfiguration, v44, v43, a3, a4, &v52, v53, v51, 3, v31, a7, a8, a10, a11, a12, a13, a14, v32, &type metadata for EmptyConfiguration, a16, a17, a18, v33, v34, a22, a23, a24, WitnessTable);

  v36 = v61;
  *(a9 + 128) = v60;
  *(a9 + 144) = v36;
  v37 = v63;
  *(a9 + 160) = v62;
  *(a9 + 176) = v37;
  v38 = v57;
  *(a9 + 64) = v56;
  *(a9 + 80) = v38;
  v39 = v59;
  *(a9 + 96) = v58;
  *(a9 + 112) = v39;
  v40 = v53[1];
  *a9 = v53[0];
  *(a9 + 16) = v40;
  result = *&v54;
  v42 = v55;
  *(a9 + 32) = v54;
  *(a9 + 48) = v42;
  *(a9 + 192) = 1;
  return result;
}

{
  v25 = *a5;
  v26 = *(*a6 + *MEMORY[0x1E69E77B0] + 8);
  v27 = sub_192224D10();
  v36 = v28;
  v37 = v27;
  v46[0] = v25;
  sub_1921A1EB0(a6, a19, a20, a24, v45);

  v30 = sub_192224BA0();
  if (a14)
  {
    v31 = a15;
  }

  else
  {
    v31 = 0;
  }

  v32 = type metadata accessor for KeyPathPickerBox(0, *(*(v26 + *MEMORY[0x1E695A680] + 8) + *MEMORY[0x1E695A610] + 8), *(a19 + 24), v29);
  v33 = sub_1920818CC();
  WitnessTable = swift_getWitnessTable();
  sub_192145D94(a1, a2, &type metadata for EmptyConfiguration, v37, v36, a3, a4, v46, a9, v45, 3, v30, a7, a8, a10, a11, a12, a13, a14, v31, &type metadata for EmptyConfiguration, a16, a17, a18, v32, v33, a21, a22, a23, WitnessTable);

  return result;
}

double ControlPicker.init<A, B, C, D, E, F, G>(kind:displayName:preferredSize:intentUpdatableProperty:title:value:affordances:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v20 = *a5;
  v21 = *(*a6 + *MEMORY[0x1E69E77B0] + 8);
  v22 = MEMORY[0x1E695A680];
  v23 = sub_192224D10();
  v32 = v24;
  v33 = v23;
  v42[0] = v20;
  sub_1921A18CC(a6, a16, a17, v41);

  v26 = sub_192224BA0();
  if (a12)
  {
    v27 = a13;
  }

  else
  {
    v27 = 0;
  }

  v28 = type metadata accessor for KeyPathPickerBox(0, *(*(v21 + *v22 + 8) + *MEMORY[0x1E695A610] + 8), *(a16 + 24), v25);
  v29 = sub_1920818CC();
  WitnessTable = swift_getWitnessTable();
  sub_192080134(a1, a2, &type metadata for EmptyConfiguration, v33, v32, a3, a4, v42, a9, v41, 3, v26, a7, a8, a10, a11, a12, v27, &type metadata for EmptyConfiguration, a14, a15, v28, v29, a18, a19, WitnessTable);

  return result;
}

uint64_t sub_1921A18CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *a1;
  v9 = swift_allocObject();
  v10 = (v8 + *MEMORY[0x1E69E77B0]);
  v11 = v10[1];
  v12 = (v11 + *MEMORY[0x1E695A680]);
  v13 = v12[1];
  v14 = *(v13 + *MEMORY[0x1E695A610] + 8);
  v9[2] = v14;
  v21 = *v10;
  v22 = v14;
  v9[3] = *v10;
  v20 = v12[2];
  v9[4] = v20;
  v9[5] = v13;
  v9[6] = v11;
  v9[7] = a2;
  v9[8] = a3;
  v15 = v12[5];
  v9[9] = v15;
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a1;
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a1;
  v18 = swift_allocObject();
  v18[2] = v22;
  v18[3] = v21;
  v18[4] = v20;
  v18[5] = v13;
  v18[6] = v11;
  v18[7] = a2;
  v18[8] = a3;
  v18[9] = v15;
  *a4 = &unk_19223E4F0;
  a4[1] = v9;
  a4[2] = &unk_19223E500;
  a4[3] = v16;
  a4[4] = &unk_19223E510;
  a4[5] = v17;
  a4[6] = &unk_19223E520;
  a4[7] = v18;
}

double ControlPicker.init<A, B, C, D, E, F, G, H>(kind:displayName:preferredSize:intentUpdatableProperty:title:subtitle:value:affordances:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t *a6@<X5>, void *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v25 = *a5;
  v26 = *(*a6 + *MEMORY[0x1E69E77B0] + 8);
  v27 = MEMORY[0x1E695A680];
  v28 = sub_192224D10();
  v36 = v29;
  v37 = v28;
  v46[0] = v25;
  sub_1921A18CC(a6, a19, a20, v45);

  v31 = sub_192224BA0();
  if (!a14)
  {
    a15 = 0;
  }

  v32 = type metadata accessor for KeyPathPickerBox(0, *(*(v26 + *v27 + 8) + *MEMORY[0x1E695A610] + 8), *(a19 + 24), v30);
  v33 = sub_1920818CC();
  WitnessTable = swift_getWitnessTable();
  sub_192145D94(a1, a2, &type metadata for EmptyConfiguration, v37, v36, a3, a4, v46, a9, v45, 3, v31, a7, a8, a10, a11, a12, a13, a14, a15, &type metadata for EmptyConfiguration, a16, a17, a18, v32, v33, a21, a22, a23, WitnessTable);

  return result;
}

double ControlPicker.init<A, B, C, D, E, F, G>(kind:displayName:preferredSize:intentUpdatableProperty:title:value:affordances:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = *a5;
  v22 = *(*a6 + *MEMORY[0x1E69E77B0] + 8);
  v23 = sub_192224D10();
  v32 = v24;
  v33 = v23;
  v42[0] = v21;
  sub_1921A1EB0(a6, a16, a17, a20, v41);

  v26 = sub_192224BA0();
  if (a12)
  {
    v27 = a13;
  }

  else
  {
    v27 = 0;
  }

  v28 = type metadata accessor for KeyPathPickerBox(0, *(*(v22 + *MEMORY[0x1E695A680] + 8) + *MEMORY[0x1E695A610] + 8), *(a16 + 24), v25);
  v29 = sub_1920818CC();
  WitnessTable = swift_getWitnessTable();
  sub_192080134(a1, a2, &type metadata for EmptyConfiguration, v33, v32, a3, a4, v42, a9, v41, 3, v26, a7, a8, a10, a11, a12, v27, &type metadata for EmptyConfiguration, a14, a15, v28, v29, a18, a19, WitnessTable);

  return result;
}

uint64_t sub_1921A1EB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *a1;
  v11 = swift_allocObject();
  v12 = (v10 + *MEMORY[0x1E69E77B0]);
  v13 = v12[1];
  v14 = (v13 + *MEMORY[0x1E695A680]);
  v15 = v14[1];
  v16 = *(v15 + *MEMORY[0x1E695A610] + 8);
  v11[2] = v16;
  v23 = *v12;
  v24 = v16;
  v11[3] = *v12;
  v22 = v14[2];
  v11[4] = v22;
  v11[5] = v15;
  v11[6] = v13;
  v11[7] = a2;
  v11[8] = a3;
  v21 = v14[5];
  v11[9] = v21;
  v11[10] = a4;
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = a1;
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = a4;
  v18[5] = a1;
  v19 = swift_allocObject();
  v19[2] = v24;
  v19[3] = v23;
  v19[4] = v22;
  v19[5] = v15;
  v19[6] = v13;
  v19[7] = a2;
  v19[8] = a3;
  v19[9] = v21;
  v19[10] = a4;
  *a5 = &unk_19223E4A8;
  a5[1] = v11;
  a5[2] = &unk_19223E4B8;
  a5[3] = v17;
  a5[4] = &unk_19223E4C8;
  a5[5] = v18;
  a5[6] = &unk_19223E4D8;
  a5[7] = v19;
}

uint64_t sub_1921A22A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = *(*(*(a6 + 16) + 8) + 16);
  v6[4] = swift_getAssociatedTypeWitness();
  v6[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1921A2360, 0, 0);
}

uint64_t sub_1921A2360()
{
  sub_192228410();
  swift_getAssociatedConformanceWitness();
  v1 = sub_192227C50();

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1921A2420(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v5[14] = a2;
  v5[15] = a3;
  v5[13] = a1;
  v6 = *a2;
  v5[18] = *a2;
  v5[19] = *(a5 + 8);
  v7 = *(v6 + *MEMORY[0x1E69E77B0]);
  v5[20] = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[21] = AssociatedTypeWitness;
  v5[22] = *(AssociatedTypeWitness - 8);
  v5[23] = swift_task_alloc();
  v5[24] = *(v7 - 8);
  v5[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1921A2590, 0, 0);
}

uint64_t sub_1921A2590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[19];
  v5 = v4[20];
  v7 = v4[15];
  v8 = v4[14];
  v9 = (*(v4[18] + *MEMORY[0x1E69E77B0] + 8) + *MEMORY[0x1E695A680]);
  v10 = *(v9[1] + *MEMORY[0x1E695A610] + 8);
  type metadata accessor for KeyPathPickerBox(0, v10, v4[16], a4);
  v11 = *(*(v7 + 8) + 24);
  v4[8] = v5;
  v4[9] = v10;
  v4[10] = v6;
  v4[11] = v11;
  v12 = sub_192224D40();
  v4[26] = v12;
  v13 = v9[2];
  WitnessTable = swift_getWitnessTable();
  v4[2] = v5;
  v15 = v9[5];
  v4[3] = v12;
  v4[4] = v13;
  v4[5] = v6;
  v4[6] = WitnessTable;
  v4[7] = v15;
  sub_192224D50();
  v16 = sub_192228BA0();
  sub_192114D64(v8, v16, (v4 + 12));
  v4[27] = v4[12];
  sub_192224B30();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = swift_task_alloc();
  v4[28] = v18;
  *v18 = v4;
  v18[1] = sub_1921A27F8;
  v19 = v4[25];
  v20 = v4[21];

  return MEMORY[0x1EEDB3838](v19, v20, AssociatedConformanceWitness);
}

uint64_t sub_1921A27F8()
{
  v2 = *v1;
  v2[29] = v0;

  if (v0)
  {
    (*(v2[22] + 8))(v2[23], v2[21]);

    return MEMORY[0x1EEE6DFA0](sub_1921A2BB8, 0, 0);
  }

  else
  {
    (*(v2[22] + 8))(v2[23], v2[21]);
    v3 = swift_task_alloc();
    v2[30] = v3;
    WitnessTable = swift_getWitnessTable();
    *v3 = v2;
    v3[1] = sub_1921A29D4;
    v5 = v2[27];
    v6 = v2[13];

    return MEMORY[0x1EEDB2C68](v6, v5, WitnessTable);
  }
}

uint64_t sub_1921A29D4()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  (*(v2[24] + 8))(v2[25], v2[20]);
  if (v0)
  {
    v3 = sub_1921A2C30;
  }

  else
  {
    v3 = sub_1921A2B3C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1921A2B3C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1921A2BB8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1921A2C30()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1921A2CA8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  v7 = *a2;
  v8 = MEMORY[0x1E69E77B0];
  v5[24] = *(a5 + 8);
  v9 = (v7 + *v8);
  v10 = *v9;
  v5[25] = *v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[26] = AssociatedTypeWitness;
  v5[27] = *(AssociatedTypeWitness - 8);
  v5[28] = swift_task_alloc();
  v5[29] = *(v10 - 8);
  v5[30] = swift_task_alloc();
  v12 = v9[1];
  v5[31] = v12;
  v13 = *(*(v12 + *MEMORY[0x1E695A680] + 8) + *MEMORY[0x1E695A610] + 8);
  v5[32] = v13;
  v5[33] = *(v13 - 8);
  v5[34] = swift_task_alloc();
  v5[35] = *(*(*(a3 + 16) + 8) + 16);
  v5[36] = swift_getAssociatedTypeWitness();
  v5[37] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1921A2F00, 0, 0);
}

uint64_t sub_1921A2F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 248);
  v5 = *(v4 + 256);
  v8 = *(v4 + 192);
  v7 = *(v4 + 200);
  v9 = *(v4 + 160);
  v10 = *(v4 + 168);
  type metadata accessor for KeyPathPickerBox(0, v5, *(v4 + 176), a4);
  v11 = *(*(v10 + 8) + 24);
  *(v4 + 64) = v7;
  *(v4 + 72) = v5;
  *(v4 + 80) = v8;
  *(v4 + 88) = v11;
  v12 = sub_192224D40();
  *(v4 + 304) = v12;
  v13 = v6 + *MEMORY[0x1E695A680];
  v14 = *(v13 + 16);
  WitnessTable = swift_getWitnessTable();
  *(v4 + 16) = v7;
  v16 = *(v13 + 40);
  *(v4 + 24) = v12;
  *(v4 + 32) = v14;
  *(v4 + 40) = v8;
  *(v4 + 48) = WitnessTable;
  *(v4 + 56) = v16;
  sub_192224D50();
  v17 = sub_192228BA0();
  sub_192114D64(v9, v17, v4 + 128);
  v18 = *(v4 + 152);
  *(v4 + 312) = *(v4 + 128);
  sub_192228410();
  swift_getAssociatedConformanceWitness();
  *(v4 + 136) = sub_192227C50();
  sub_192227C40();
  swift_getWitnessTable();
  sub_192227DE0();
  *(v4 + 112) = *(v4 + 96);
  *(v4 + 144) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0CC0, &qword_1922374E0);
  if (sub_192227EF0())
  {

    sub_192228410();
    sub_192227C50();
    sub_192227C60();

    sub_192224B30();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v20 = swift_task_alloc();
    *(v4 + 320) = v20;
    *v20 = v4;
    v20[1] = sub_1921A32F8;
    v21 = *(v4 + 240);
    v22 = *(v4 + 208);

    return MEMORY[0x1EEDB3838](v21, v22, AssociatedConformanceWitness);
  }

  else
  {
    v23 = *(v4 + 152);
    v24 = sub_192227C10();

    sub_192134734();
    swift_allocError();
    *v25 = v23;
    *(v25 + 8) = v24;
    *(v25 + 16) = 1;
    swift_willThrow();

    v26 = *(v4 + 8);

    return v26();
  }
}

uint64_t sub_1921A32F8()
{
  v2 = *v1;
  v2[41] = v0;

  if (v0)
  {
    (*(v2[27] + 8))(v2[28], v2[26]);

    return MEMORY[0x1EEE6DFA0](sub_1921A3700, 0, 0);
  }

  else
  {
    (*(v2[27] + 8))(v2[28], v2[26]);
    v3 = swift_task_alloc();
    v2[42] = v3;
    WitnessTable = swift_getWitnessTable();
    *v3 = v2;
    v3[1] = sub_1921A34D8;
    v5 = v2[39];
    v6 = v2[34];
    v7 = v2[32];

    return MEMORY[0x1EEDB2C88](v6, v5, v7, WitnessTable);
  }
}

uint64_t sub_1921A34D8()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  (*(v2[29] + 8))(v2[30], v2[25]);
  if (v0)
  {
    v3 = sub_1921A37B8;
  }

  else
  {
    v3 = sub_1921A3640;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1921A3640()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1921A3700()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1921A37B8()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1921A3870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = type metadata accessor for KeyPathPickerBox(0, a2, a8, a4);
  v12 = swift_task_alloc();
  *(v8 + 16) = v12;
  *v12 = v8;
  v12[1] = sub_1920A59A8;

  return sub_192114F64(a1, a3, v11, a3, &off_1F06B3838, v15);
}

uint64_t sub_1921A3948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[4] = AssociatedTypeWitness;
  v6[5] = *(AssociatedTypeWitness - 8);
  v6[6] = swift_task_alloc();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6[7] = AssociatedConformanceWitness;
  v6[8] = *(AssociatedConformanceWitness + 8);
  v9 = swift_getAssociatedTypeWitness();
  v6[9] = v9;
  v6[10] = *(v9 - 8);
  v6[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1921A3AD4, 0, 0);
}

uint64_t sub_1921A3AD4()
{
  sub_192224B30();
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_1921A3B84;
  v2 = v0[11];
  v3 = v0[7];
  v4 = v0[4];

  return MEMORY[0x1EEDB2EA8](v2, v4, v3);
}

uint64_t sub_1921A3B84()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  *(*v1 + 104) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1921A3DC4;
  }

  else
  {
    v5 = sub_1921A3CF4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1921A3CF4()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  swift_getAssociatedConformanceWitness();
  v4 = sub_192224CD0();
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1921A3DC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1921A3E34(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a3;
  v4[16] = a4;
  v4[13] = a1;
  v4[14] = a2;
  v5 = *a2;
  v4[17] = *a2;
  v4[18] = *(a4 + 8);
  v6 = *(v5 + *MEMORY[0x1E69E77B0]);
  v4[19] = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[20] = AssociatedTypeWitness;
  v4[21] = *(AssociatedTypeWitness - 8);
  v4[22] = swift_task_alloc();
  v4[23] = *(v6 - 8);
  v4[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1921A3FA0, 0, 0);
}

uint64_t sub_1921A3FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[18];
  v5 = v4[19];
  v7 = v4[14];
  v8 = v4[15];
  v9 = (*(v4[17] + *MEMORY[0x1E69E77B0] + 8) + *MEMORY[0x1E695A680]);
  v10 = *(v9[1] + *MEMORY[0x1E695A610] + 8);
  type metadata accessor for KeyPathPickerBox(0, v10, *(v8 + 24), a4);
  v11 = *(*(v8 + 8) + 24);
  v4[8] = v5;
  v4[9] = v10;
  v4[10] = v6;
  v4[11] = v11;
  v12 = sub_192224D40();
  v4[25] = v12;
  v13 = v9[2];
  WitnessTable = swift_getWitnessTable();
  v4[2] = v5;
  v15 = v9[5];
  v4[3] = v12;
  v4[4] = v13;
  v4[5] = v6;
  v4[6] = WitnessTable;
  v4[7] = v15;
  sub_192224D50();
  v16 = sub_192228BA0();
  sub_192114D64(v7, v16, (v4 + 12));
  v4[26] = v4[12];
  sub_192224B30();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = swift_task_alloc();
  v4[27] = v18;
  *v18 = v4;
  v18[1] = sub_1921A4208;
  v19 = v4[24];
  v20 = v4[20];

  return MEMORY[0x1EEDB3838](v19, v20, AssociatedConformanceWitness);
}

uint64_t sub_1921A4208()
{
  v2 = *v1;
  v2[28] = v0;

  if (v0)
  {
    (*(v2[21] + 8))(v2[22], v2[20]);

    return MEMORY[0x1EEE6DFA0](sub_1921A8438, 0, 0);
  }

  else
  {
    (*(v2[21] + 8))(v2[22], v2[20]);
    v3 = swift_task_alloc();
    v2[29] = v3;
    WitnessTable = swift_getWitnessTable();
    *v3 = v2;
    v3[1] = sub_1921A43E4;
    v5 = v2[26];
    v6 = v2[13];

    return MEMORY[0x1EEDB2C68](v6, v5, WitnessTable);
  }
}

uint64_t sub_1921A43E4()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  (*(v2[23] + 8))(v2[24], v2[19]);
  if (v0)
  {
    v3 = sub_1921A843C;
  }

  else
  {
    v3 = sub_1921A8444;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1921A454C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a1;
  v4[20] = a2;
  v4[21] = a3;
  v4[22] = a4;
  v5 = *a2;
  v6 = MEMORY[0x1E69E77B0];
  v4[23] = *(a4 + 8);
  v7 = (v5 + *v6);
  v8 = *v7;
  v4[24] = *v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[25] = AssociatedTypeWitness;
  v4[26] = *(AssociatedTypeWitness - 8);
  v4[27] = swift_task_alloc();
  v4[28] = *(v8 - 8);
  v4[29] = swift_task_alloc();
  v10 = v7[1];
  v4[30] = v10;
  v11 = *(*(v10 + *MEMORY[0x1E695A680] + 8) + *MEMORY[0x1E695A610] + 8);
  v4[31] = v11;
  v4[32] = *(v11 - 8);
  v4[33] = swift_task_alloc();
  v12 = swift_getAssociatedTypeWitness();
  v4[34] = v12;
  v4[35] = *(v12 - 8);
  v4[36] = swift_task_alloc();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4[37] = AssociatedConformanceWitness;
  v4[38] = *(AssociatedConformanceWitness + 8);
  v14 = swift_getAssociatedTypeWitness();
  v4[39] = v14;
  v4[40] = *(v14 - 8);
  v4[41] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1921A4868, 0, 0);
}

uint64_t sub_1921A4868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[30];
  v5 = v4[31];
  v8 = v4[23];
  v7 = v4[24];
  v9 = v4[21];
  v10 = v4[20];
  type metadata accessor for KeyPathPickerBox(0, v5, *(v9 + 24), a4);
  v11 = *(*(v9 + 8) + 24);
  v4[8] = v7;
  v4[9] = v5;
  v4[10] = v8;
  v4[11] = v11;
  v12 = sub_192224D40();
  v4[42] = v12;
  v13 = v6 + *MEMORY[0x1E695A680];
  v14 = *(v13 + 16);
  WitnessTable = swift_getWitnessTable();
  v4[2] = v7;
  v16 = *(v13 + 40);
  v4[3] = v12;
  v4[4] = v14;
  v4[5] = v8;
  v4[6] = WitnessTable;
  v4[7] = v16;
  sub_192224D50();
  v17 = sub_192228BA0();
  sub_192114D64(v10, v17, (v4 + 16));
  v4[43] = v4[16];
  sub_192224B30();
  v18 = swift_task_alloc();
  v4[44] = v18;
  *v18 = v4;
  v18[1] = sub_1921A4AA0;
  v19 = v4[41];
  v20 = v4[37];
  v21 = v4[34];

  return MEMORY[0x1EEDB2EA8](v19, v21, v20);
}

uint64_t sub_1921A4AA0()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  (*(v2[35] + 8))(v2[36], v2[34]);
  if (v0)
  {
    v3 = sub_1921A52EC;
  }

  else
  {
    v3 = sub_1921A4C08;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1921A4C08()
{
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v3 = *(v0 + 312);
  v4 = *(v0 + 152);
  swift_getAssociatedConformanceWitness();
  v5 = sub_192224CD0();
  (*(v2 + 8))(v1, v3);
  *(v0 + 136) = v5;
  sub_192227C40();
  swift_getWitnessTable();
  sub_192227DE0();
  *(v0 + 112) = *(v0 + 96);
  *(v0 + 144) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0CC0, &qword_1922374E0);
  if (sub_192227EF0())
  {
    sub_192227C60();

    sub_192224B30();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v7 = swift_task_alloc();
    *(v0 + 368) = v7;
    *v7 = v0;
    v7[1] = sub_1921A4ED0;
    v8 = *(v0 + 232);
    v9 = *(v0 + 200);

    return MEMORY[0x1EEDB3838](v8, v9, AssociatedConformanceWitness);
  }

  else
  {
    v10 = *(v0 + 152);
    v11 = sub_192227C10();

    sub_192134734();
    swift_allocError();
    *v12 = v10;
    *(v12 + 8) = v11;
    *(v12 + 16) = 1;
    swift_willThrow();

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_1921A4ED0()
{
  v2 = *v1;
  v2[47] = v0;

  if (v0)
  {
    (*(v2[26] + 8))(v2[27], v2[25]);

    return MEMORY[0x1EEE6DFA0](sub_1921A5398, 0, 0);
  }

  else
  {
    (*(v2[26] + 8))(v2[27], v2[25]);
    v3 = swift_task_alloc();
    v2[48] = v3;
    WitnessTable = swift_getWitnessTable();
    *v3 = v2;
    v3[1] = sub_1921A50B0;
    v5 = v2[43];
    v6 = v2[33];
    v7 = v2[31];

    return MEMORY[0x1EEDB2C88](v6, v5, v7, WitnessTable);
  }
}

uint64_t sub_1921A50B0()
{
  v2 = *v1;
  *(*v1 + 392) = v0;

  (*(v2[28] + 8))(v2[29], v2[24]);
  if (v0)
  {
    v3 = sub_1921A5464;
  }

  else
  {
    v3 = sub_1921A5218;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1921A5218()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1921A52EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1921A5398()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1921A5464()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1921A5530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = type metadata accessor for KeyPathPickerBox(0, a2, *(a7 + 24), a4);
  v13 = swift_task_alloc();
  *(v8 + 16) = v13;
  *v13 = v8;
  v13[1] = sub_1920B3B44;

  return sub_192114F64(a1, a3, v12, a3, &off_1F06B3838, a8);
}

uint64_t sub_1921A5608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a6;
  v6[4] = v11;
  v6[2] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[5] = AssociatedTypeWitness;
  v6[6] = *(AssociatedTypeWitness - 8);
  v6[7] = swift_task_alloc();
  v6[8] = *(swift_getAssociatedConformanceWitness() + 8);
  v8 = swift_getAssociatedTypeWitness();
  v6[9] = v8;
  v6[10] = *(v8 - 8);
  v6[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1921A579C, 0, 0);
}

uint64_t sub_1921A579C()
{
  sub_192224B30();
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_1921A584C;
  v2 = v0[11];
  v4 = v0[4];
  v3 = v0[5];

  return MEMORY[0x1EEDB3AE0](v2, v3, v4);
}

uint64_t sub_1921A584C()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 104) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1921A5A8C;
  }

  else
  {
    v5 = sub_1921A59BC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1921A59BC()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  swift_getAssociatedConformanceWitness();
  v4 = sub_192224CD0();
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1921A5A8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1921A5AFC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a3;
  v4[16] = a4;
  v4[13] = a1;
  v4[14] = a2;
  v5 = *a2;
  v4[17] = *a2;
  v4[18] = *(a4 + 8);
  v6 = *(v5 + *MEMORY[0x1E69E77B0]);
  v4[19] = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[20] = AssociatedTypeWitness;
  v4[21] = *(AssociatedTypeWitness - 8);
  v4[22] = swift_task_alloc();
  v4[23] = *(v6 - 8);
  v4[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1921A5C68, 0, 0);
}

uint64_t sub_1921A5C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[18];
  v5 = v4[19];
  v7 = v4[14];
  v8 = v4[15];
  v9 = (*(v4[17] + *MEMORY[0x1E69E77B0] + 8) + *MEMORY[0x1E695A680]);
  v10 = *(v9[1] + *MEMORY[0x1E695A610] + 8);
  type metadata accessor for KeyPathPickerBox(0, v10, *(v8 + 24), a4);
  v11 = *(*(v8 + 8) + 24);
  v4[8] = v5;
  v4[9] = v10;
  v4[10] = v6;
  v4[11] = v11;
  v12 = sub_192224D40();
  v4[25] = v12;
  v13 = v9[2];
  WitnessTable = swift_getWitnessTable();
  v4[2] = v5;
  v15 = v9[5];
  v4[3] = v12;
  v4[4] = v13;
  v4[5] = v6;
  v4[6] = WitnessTable;
  v4[7] = v15;
  sub_192224D50();
  v16 = sub_192228BA0();
  sub_192114D64(v7, v16, (v4 + 12));
  v4[26] = v4[12];
  sub_192224B30();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = swift_task_alloc();
  v4[27] = v18;
  *v18 = v4;
  v18[1] = sub_1921A5ED0;
  v19 = v4[24];
  v20 = v4[20];

  return MEMORY[0x1EEDB3838](v19, v20, AssociatedConformanceWitness);
}

uint64_t sub_1921A5ED0()
{
  v2 = *v1;
  v2[28] = v0;

  if (v0)
  {
    (*(v2[21] + 8))(v2[22], v2[20]);

    return MEMORY[0x1EEE6DFA0](sub_1921A6290, 0, 0);
  }

  else
  {
    (*(v2[21] + 8))(v2[22], v2[20]);
    v3 = swift_task_alloc();
    v2[29] = v3;
    WitnessTable = swift_getWitnessTable();
    *v3 = v2;
    v3[1] = sub_1921A60AC;
    v5 = v2[26];
    v6 = v2[13];

    return MEMORY[0x1EEDB2C68](v6, v5, WitnessTable);
  }
}

uint64_t sub_1921A60AC()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  (*(v2[23] + 8))(v2[24], v2[19]);
  if (v0)
  {
    v3 = sub_1921A6308;
  }

  else
  {
    v3 = sub_1921A6214;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1921A6214()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1921A6290()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1921A6308()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1921A6380(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  v6 = *a2;
  v7 = MEMORY[0x1E69E77B0];
  v5[24] = *(a4 + 8);
  v8 = (v6 + *v7);
  v9 = *v8;
  v5[25] = *v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[26] = AssociatedTypeWitness;
  v5[27] = *(AssociatedTypeWitness - 8);
  v5[28] = swift_task_alloc();
  v5[29] = *(v9 - 8);
  v5[30] = swift_task_alloc();
  v11 = v8[1];
  v5[31] = v11;
  v12 = *(*(v11 + *MEMORY[0x1E695A680] + 8) + *MEMORY[0x1E695A610] + 8);
  v5[32] = v12;
  v5[33] = *(v12 - 8);
  v5[34] = swift_task_alloc();
  v13 = swift_getAssociatedTypeWitness();
  v5[35] = v13;
  v5[36] = *(v13 - 8);
  v5[37] = swift_task_alloc();
  v5[38] = *(swift_getAssociatedConformanceWitness() + 8);
  v14 = swift_getAssociatedTypeWitness();
  v5[39] = v14;
  v5[40] = *(v14 - 8);
  v5[41] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1921A669C, 0, 0);
}

uint64_t sub_1921A669C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[31];
  v5 = v4[32];
  v8 = v4[24];
  v7 = v4[25];
  v9 = v4[21];
  v10 = v4[20];
  type metadata accessor for KeyPathPickerBox(0, v5, *(v9 + 24), a4);
  v11 = *(*(v9 + 8) + 24);
  v4[8] = v7;
  v4[9] = v5;
  v4[10] = v8;
  v4[11] = v11;
  v12 = sub_192224D40();
  v4[42] = v12;
  v13 = v6 + *MEMORY[0x1E695A680];
  v14 = *(v13 + 16);
  WitnessTable = swift_getWitnessTable();
  v4[2] = v7;
  v16 = *(v13 + 40);
  v4[3] = v12;
  v4[4] = v14;
  v4[5] = v8;
  v4[6] = WitnessTable;
  v4[7] = v16;
  sub_192224D50();
  v17 = sub_192228BA0();
  sub_192114D64(v10, v17, (v4 + 16));
  v4[43] = v4[16];
  sub_192224B30();
  v18 = swift_task_alloc();
  v4[44] = v18;
  *v18 = v4;
  v18[1] = sub_1921A68D8;
  v19 = v4[41];
  v20 = v4[35];
  v21 = v4[23];

  return MEMORY[0x1EEDB3AE0](v19, v20, v21);
}

uint64_t sub_1921A68D8()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  (*(v2[36] + 8))(v2[37], v2[35]);
  if (v0)
  {
    v3 = sub_1921A7128;
  }

  else
  {
    v3 = sub_1921A6A40;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1921A6A40()
{
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v3 = *(v0 + 312);
  v4 = *(v0 + 152);
  swift_getAssociatedConformanceWitness();
  v5 = sub_192224CD0();
  (*(v2 + 8))(v1, v3);
  *(v0 + 136) = v5;
  sub_192227C40();
  swift_getWitnessTable();
  sub_192227DE0();
  *(v0 + 112) = *(v0 + 96);
  *(v0 + 144) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0CC0, &qword_1922374E0);
  if (sub_192227EF0())
  {
    sub_192227C60();

    sub_192224B30();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v7 = swift_task_alloc();
    *(v0 + 368) = v7;
    *v7 = v0;
    v7[1] = sub_1921A6D0C;
    v8 = *(v0 + 240);
    v9 = *(v0 + 208);

    return MEMORY[0x1EEDB3838](v8, v9, AssociatedConformanceWitness);
  }

  else
  {
    v10 = *(v0 + 152);
    v11 = sub_192227C10();

    sub_192134734();
    swift_allocError();
    *v12 = v10;
    *(v12 + 8) = v11;
    *(v12 + 16) = 1;
    swift_willThrow();

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_1921A6D0C()
{
  v2 = *v1;
  v2[47] = v0;

  if (v0)
  {
    (*(v2[27] + 8))(v2[28], v2[26]);

    return MEMORY[0x1EEE6DFA0](sub_1921A71D4, 0, 0);
  }

  else
  {
    (*(v2[27] + 8))(v2[28], v2[26]);
    v3 = swift_task_alloc();
    v2[48] = v3;
    WitnessTable = swift_getWitnessTable();
    *v3 = v2;
    v3[1] = sub_1921A6EEC;
    v5 = v2[43];
    v6 = v2[34];
    v7 = v2[32];

    return MEMORY[0x1EEDB2C88](v6, v5, v7, WitnessTable);
  }
}

uint64_t sub_1921A6EEC()
{
  v2 = *v1;
  *(*v1 + 392) = v0;

  (*(v2[29] + 8))(v2[30], v2[25]);
  if (v0)
  {
    v3 = sub_1921A72A0;
  }

  else
  {
    v3 = sub_1921A7054;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1921A7054()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1921A7128()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1921A71D4()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1921A72A0()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1921A736C()
{
  v4 = (*v0 + **v0);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1920A5800;

  return v4();
}

uint64_t sub_1921A7454(uint64_t a1)
{
  v6 = (*(v1 + 16) + **(v1 + 16));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1920B3B44;

  return v6(a1);
}

uint64_t sub_1921A754C(uint64_t a1, uint64_t a2)
{
  v7 = (*(v2 + 32) + **(v2 + 32));
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1920B3B44;

  return v7(a2);
}

uint64_t sub_1921A7640()
{
  v2 = v0[1];
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  v3 = v0[3];
  *(v1 + 48) = v0[2];
  *(v1 + 64) = v3;
  v4 = swift_task_alloc();
  *(v1 + 80) = v4;
  *v4 = v1;
  v4[1] = sub_1921A76E0;

  return sub_1921A736C();
}

uint64_t sub_1921A76E0(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1921A77E0(uint64_t a1)
{
  v4 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  v5 = v1[3];
  *(v2 + 48) = v1[2];
  *(v2 + 64) = v5;
  v6 = swift_task_alloc();
  *(v2 + 80) = v6;
  *v6 = v2;
  v6[1] = sub_1921A8440;

  return sub_1921A7454(a1);
}

uint64_t sub_1921A788C(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];
  *(v3 + 16) = *v2;
  *(v3 + 32) = v5;
  v6 = v2[3];
  *(v3 + 48) = v2[2];
  *(v3 + 64) = v6;
  v7 = swift_task_alloc();
  *(v3 + 80) = v7;
  *v7 = v3;
  v7[1] = sub_1921A7934;

  return sub_1921A754C(v7, a2);
}

uint64_t sub_1921A7934()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1921A7A28()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_1921A7A64()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1920EF9CC;

  return sub_1921A5608(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1921A7B4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1920B3B44;

  return sub_1921A5AFC(a1, v6, v4, v5);
}

uint64_t sub_1921A7C0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1920B3B44;

  return sub_1921A6380(a1, v6, v4, v5, v7);
}

uint64_t sub_1921A7CC8(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1920B3B44;

  return sub_1921A5530(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1921A7DBC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1920EF9CC;

  return sub_1921A3948(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1921A7E90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1920B3B44;

  return sub_1921A3E34(a1, v6, v4, v5);
}

uint64_t sub_1921A7F44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1920B3B44;

  return sub_1921A454C(a1, v6, v4, v5);
}

uint64_t sub_1921A7FF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1920B3B44;

  return sub_1921A5530(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1921A80E0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1920EF2F4;

  return sub_1921A22A4(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1921A81C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1920B3B44;

  return sub_1921A2420(a1, v6, v4, v5, v7);
}

uint64_t sub_1921A8288(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1920B3B44;

  return sub_1921A2CA8(a1, v6, v4, v5, v7);
}

uint64_t sub_1921A8344(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1920A59A8;

  return sub_1921A3870(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1921A8448(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = sub_192226570();
    sub_1921B0094(&qword_1EADEFF38, MEMORY[0x1E697F4E0], MEMORY[0x1E697F508]);
    sub_192227E00();
    sub_192227E60();
    sub_192227E30();
    if (v4)
    {
      sub_192227E60();
    }

    else
    {
      v6 = v3;
    }

    result = sub_192227E00();
    if (v6 >= v5)
    {
      sub_192227EC0();
      return (*(*(v2 - 8) + 8))(v1, v2);
    }
  }

  __break(1u);
  return result;
}

void static Widget.main()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v7 = sub_1922258B0();
  __swift_project_value_buffer(v7, qword_1ED74CCC8);
  v8 = sub_192225890();
  v9 = sub_192227FB0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_192028000, v8, v9, "main [Widget]", v10, 2u);
    MEMORY[0x193B0C7F0](v10, -1, -1);
  }

  type metadata accessor for ResolvedWidgetHost(0, a1, a2, v11);
  sub_192227560();
  v15 = sub_1921AFBB8(v6, v12, v13, v14);
  (*(v4 + 8))(v6, a1);
  *&xmmword_1ED74CC80 = v15;
  *(&xmmword_1ED74CC80 + 1) = &off_1F06B3BA8;
  qword_1ED74CC90 = &off_1F06B3B60;

  v16 = sub_192225890();
  v17 = sub_192227FB0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 136446210;
    v24 = xmmword_1ED74CC80;
    v25 = qword_1ED74CC90;
    v26 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1978, qword_19223E570);
    v20 = sub_192228230();
    v22 = sub_19202B8CC(v20, v21, &v26);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_192028000, v16, v17, "WidgetHost - %{public}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x193B0C7F0](v19, -1, -1);
    MEMORY[0x193B0C7F0](v18, -1, -1);
  }

  sub_19202A7A8(0, &qword_1ED74C300, 0x1E6966CA8);
  v23 = [objc_allocWithZone(type metadata accessor for WidgetExtensionXPCServer()) init];
  sub_192227F70();
}

uint64_t static ControlWidget.main()(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_192226810();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - v8;
  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v10 = sub_1922258B0();
  __swift_project_value_buffer(v10, qword_1ED74CCC8);
  v11 = sub_192225890();
  v12 = sub_192227FB0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_192028000, v11, v12, "main [Control]", v13, 2u);
    MEMORY[0x193B0C7F0](v13, -1, -1);
  }

  sub_192225AC0();
  MEMORY[0x193B097D0](v5, a1, a2);
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for ResolvedWidgetHost(0, v6, WitnessTable, v15);
  *&xmmword_1ED74CC80 = sub_1921AFBB8(v9, v16, v17, v18);
  *(&xmmword_1ED74CC80 + 1) = &off_1F06B3BA8;
  qword_1ED74CC90 = &off_1F06B3B60;

  v19 = sub_192225890();
  v20 = sub_192227FB0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 136446210;
    v28 = xmmword_1ED74CC80;
    v29 = qword_1ED74CC90;
    v30 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1978, qword_19223E570);
    v23 = sub_192228230();
    v25 = sub_19202B8CC(v23, v24, &v30);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_192028000, v19, v20, "WidgetHost - %{public}s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x193B0C7F0](v22, -1, -1);
    MEMORY[0x193B0C7F0](v21, -1, -1);
  }

  sub_19202A7A8(0, &qword_1ED74C300, 0x1E6966CA8);
  v26 = [objc_allocWithZone(type metadata accessor for WidgetExtensionXPCServer()) init];
  sub_192227F70();

  return (*(v7 + 8))(v9, v6);
}

void *sub_1921A8C4C@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = type metadata accessor for ViewSource(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for WidgetDescriptor(0);
  v4 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  sub_1920791AC();
  result = sub_1922259B0();
  v10 = v29;
  v26 = *(v29 + 16);
  if (v26)
  {
    v11 = 0;
    v12 = MEMORY[0x1E69E7CC0];
    v25 = v1;
    while (1)
    {
      if (v11 >= *(v10 + 16))
      {
        __break(1u);
        return result;
      }

      v13 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v14 = *(v4 + 72);
      sub_192036754(v10 + v13 + v14 * v11, v8, type metadata accessor for WidgetDescriptor);
      sub_192036754(v8, v3, type metadata accessor for ViewSource);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload != 2)
        {
LABEL_11:
          sub_192036A20(v3, type metadata accessor for ViewSource);
          sub_192082064(v8, v27, type metadata accessor for WidgetDescriptor);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v28 = v12;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1920820CC(0, *(v12 + 16) + 1, 1);
            v12 = v28;
          }

          v19 = *(v12 + 16);
          v18 = *(v12 + 24);
          if (v19 >= v18 >> 1)
          {
            sub_1920820CC((v18 > 1), v19 + 1, 1);
            v12 = v28;
          }

          *(v12 + 16) = v19 + 1;
          result = sub_192082064(v27, v12 + v13 + v19 * v14, type metadata accessor for WidgetDescriptor);
          goto LABEL_5;
        }

        sub_192036A20(v3, type metadata accessor for ViewSource);
      }

      else
      {
        if (!EnumCaseMultiPayload)
        {
          goto LABEL_11;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE28, &qword_19222B6A0);

        v16 = sub_1922253B0();
        (*(*(v16 - 8) + 8))(v3, v16);
      }

      result = sub_192036A20(v8, type metadata accessor for WidgetDescriptor);
LABEL_5:
      if (v26 == ++v11)
      {
        goto LABEL_17;
      }
    }
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_17:

  if (*(v12 + 16))
  {
    v20 = v24;
    sub_192036754(v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v24, type metadata accessor for WidgetDescriptor);
    v21 = 0;
  }

  else
  {
    v21 = 1;
    v20 = v24;
  }

  return (*(v4 + 56))(v20, v21, 1, v23);
}

uint64_t sub_1921A9064@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF19C0, &unk_19223E6B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17[-v11];
  v13 = *a1;
  swift_beginAccess();
  sub_19202CFFC(v3 + v13, v12, &qword_1EADF19C0, &unk_19223E6B0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670);
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v12, 1, v14) != 1)
  {
    return sub_1921B0024(v12, a3);
  }

  sub_192033970(v12, &qword_1EADF19C0, &unk_19223E6B0);
  a2(v3);
  sub_19202CFFC(a3, v9, &qword_1EADEEE20, &qword_19222B670);
  (*(v15 + 56))(v9, 0, 1, v14);
  swift_beginAccess();
  sub_1921AFFB4(v9, v3 + v13);
  return swift_endAccess();
}

void *sub_1921A925C@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = type metadata accessor for ViewSource(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for WidgetDescriptor(0);
  v27 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - v6;
  sub_1920791AC();
  result = sub_1922259B0();
  v9 = v30;
  v10 = *(v30 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = MEMORY[0x1E69E7CC0];
    v26 = v1;
    v13 = v27;
    while (v11 < *(v9 + 16))
    {
      v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v15 = *(v13 + 72);
      sub_192036754(v9 + v14 + v15 * v11, v7, type metadata accessor for WidgetDescriptor);
      sub_192036754(v7, v3, type metadata accessor for ViewSource);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE28, &qword_19222B6A0);

        v16 = sub_1922253B0();
        (*(*(v16 - 8) + 8))(v3, v16);
        sub_192082064(v7, v28, type metadata accessor for WidgetDescriptor);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1920820CC(0, *(v12 + 16) + 1, 1);
          v12 = v29;
        }

        v19 = *(v12 + 16);
        v18 = *(v12 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1920820CC((v18 > 1), v19 + 1, 1);
          v12 = v29;
        }

        *(v12 + 16) = v19 + 1;
        result = sub_192082064(v28, v12 + v14 + v19 * v15, type metadata accessor for WidgetDescriptor);
        v13 = v27;
      }

      else
      {
        sub_192036A20(v3, type metadata accessor for ViewSource);
        result = sub_192036A20(v7, type metadata accessor for WidgetDescriptor);
      }

      if (v10 == ++v11)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
    v13 = v27;
LABEL_13:

    if (*(v12 + 16))
    {
      v20 = v25;
      sub_192036754(v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v25, type metadata accessor for WidgetDescriptor);
      v21 = v13;
      v22 = 0;
    }

    else
    {
      v21 = v13;
      v22 = 1;
      v20 = v25;
    }

    return (*(v21 + 56))(v20, v22, 1, v24);
  }

  return result;
}

void *sub_1921A9650@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = type metadata accessor for ViewSource(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for WidgetDescriptor(0);
  v4 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  sub_1920791AC();
  result = sub_1922259B0();
  v10 = v30;
  v11 = *(v30 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = MEMORY[0x1E69E7CC0];
    v26 = v1;
    v27 = v11;
    while (1)
    {
      if (v12 >= *(v10 + 16))
      {
        __break(1u);
        return result;
      }

      v14 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v15 = *(v4 + 72);
      sub_192036754(v10 + v14 + v15 * v12, v8, type metadata accessor for WidgetDescriptor);
      sub_192036754(v8, v3, type metadata accessor for ViewSource);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          sub_192036A20(v3, type metadata accessor for ViewSource);
          sub_192082064(v8, v28, type metadata accessor for WidgetDescriptor);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v29 = v13;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1920820CC(0, *(v13 + 16) + 1, 1);
            v13 = v29;
          }

          v20 = *(v13 + 16);
          v19 = *(v13 + 24);
          if (v20 >= v19 >> 1)
          {
            sub_1920820CC((v19 > 1), v20 + 1, 1);
            v13 = v29;
          }

          *(v13 + 16) = v20 + 1;
          result = sub_192082064(v28, v13 + v14 + v20 * v15, type metadata accessor for WidgetDescriptor);
          v11 = v27;
          goto LABEL_5;
        }
      }

      else if (EnumCaseMultiPayload)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE28, &qword_19222B6A0);

        v11 = v27;

        v17 = sub_1922253B0();
        (*(*(v17 - 8) + 8))(v3, v17);
        goto LABEL_4;
      }

      sub_192036A20(v3, type metadata accessor for ViewSource);
LABEL_4:
      result = sub_192036A20(v8, type metadata accessor for WidgetDescriptor);
LABEL_5:
      if (v11 == ++v12)
      {
        goto LABEL_17;
      }
    }
  }

  v13 = MEMORY[0x1E69E7CC0];
LABEL_17:

  if (*(v13 + 16))
  {
    v21 = v25;
    sub_192036754(v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v25, type metadata accessor for WidgetDescriptor);
    v22 = 0;
  }

  else
  {
    v22 = 1;
    v21 = v25;
  }

  return (*(v4 + 56))(v21, v22, 1, v24);
}

void sub_1921A9A44()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v21 - v2;
  v4 = type metadata accessor for WidgetDescriptor(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v21 - v9;
  v11 = [objc_opt_self() mainBundle];
  v12 = [v11 bundleIdentifier];

  if (v12)
  {
    v13 = sub_192227960();
    v15 = v14;

    sub_1921A8C2C(v3);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {

      sub_192033970(v3, &qword_1EADEEE20, &qword_19222B670);
    }

    else
    {
      sub_192082064(v3, v10, type metadata accessor for WidgetDescriptor);
      v17 = *(v0 + 16);
      v16 = *(v0 + 24);
      sub_19202A7A8(0, &qword_1ED749A50, 0x1E6994310);
      sub_192036754(v10, v7, type metadata accessor for WidgetDescriptor);
      sub_1920367C8(v17, v16);
      v18 = sub_1921ADC0C(v7, v13, v15, v17, v16);
      [v18 copy];
      sub_1922282B0();

      swift_unknownObjectRelease();
      sub_19202A7A8(0, &qword_1ED74C500, 0x1E6994388);
      swift_dynamicCast();
      v19 = v21[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEBD8, &qword_19222CAF0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_19222C680;
      *(v20 + 32) = v19;
      sub_192036A20(v10, type metadata accessor for WidgetDescriptor);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1921A9D54()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v49 - v6;
  v8 = type metadata accessor for WidgetDescriptor(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v55 = &v49 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v54 = &v49 - v15;
  v16 = [objc_opt_self() mainBundle];
  v17 = [v16 bundleIdentifier];

  if (v17)
  {
    v18 = sub_192227960();
    v20 = v19;

    sub_1921A9A44();
    v53 = v21;
    sub_1921A9630(v7);
    v51 = *(v9 + 48);
    v22 = v51(v7, 1, v8);
    v23 = 0x1FB0EE000;
    v50 = v11;
    v52 = v20;
    if (v22 == 1)
    {
      sub_192033970(v7, &qword_1EADEEE20, &qword_19222B670);
      v24 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v49 = type metadata accessor for WidgetDescriptor;
      v25 = v54;
      sub_192082064(v7, v54, type metadata accessor for WidgetDescriptor);
      v27 = *(v1 + 16);
      v26 = *(v1 + 24);
      sub_19202A7A8(0, qword_1ED7491A8, 0x1E69942E0);
      v28 = v25;
      v29 = v4;
      v30 = v18;
      v31 = v8;
      v32 = v55;
      sub_192036754(v28, v55, type metadata accessor for WidgetDescriptor);

      sub_1920367C8(v27, v26);
      v33 = v32;
      v8 = v31;
      v18 = v30;
      v4 = v29;
      v23 = &property descriptor for StorageBackedControlArchive.state;
      v34 = sub_192038824(v33, v18, v20, v27, v26);
      [v34 copy];
      sub_1922282B0();

      swift_unknownObjectRelease();
      sub_19202A7A8(0, &qword_1ED749A58, 0x1E6994248);
      swift_dynamicCast();
      v35 = v56;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEBD8, &qword_19222CAF0);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_19222C680;
      *(v24 + 32) = v35;
      sub_192036A20(v54, v49);
    }

    sub_1921A9044(v4);
    if (v51(v4, 1, v8) == 1)
    {

      sub_192033970(v4, &qword_1EADEEE20, &qword_19222B670);
      v36 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v37 = v50;
      sub_192082064(v4, v50, type metadata accessor for WidgetDescriptor);
      v39 = *(v1 + 16);
      v38 = *(v1 + 24);
      sub_19202A7A8(0, qword_1EADEE810, 0x1E6994308);
      v40 = v55;
      sub_192036754(v37, v55, type metadata accessor for WidgetDescriptor);
      sub_1920367C8(v39, v38);
      v41 = sub_1921AF35C(v40, v18, v52, v39, v38);
      [v41 v23 + 1016];
      sub_1922282B0();

      swift_unknownObjectRelease();
      sub_19202A7A8(0, &qword_1ED749D10, 0x1E6994358);
      swift_dynamicCast();
      v42 = v56;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEBD8, &qword_19222CAF0);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_19222C680;
      *(v36 + 32) = v42;
      sub_192036A20(v37, type metadata accessor for WidgetDescriptor);
    }

    v43 = v53;
    if (v53 >> 62)
    {
      if (sub_192228340() == 1)
      {
        goto LABEL_12;
      }
    }

    else if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
LABEL_12:

LABEL_19:
      Result = type metadata accessor for DescriptorFetchResult();
      v46 = objc_allocWithZone(Result);
      v48 = sub_192036D98(v43, v47);

      *&v46[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_widgetDescriptors] = v48;
      *&v46[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_activityDescriptors] = v36;
      *&v46[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_controlDescriptors] = v24;
      v57.receiver = v46;
      v57.super_class = Result;
      objc_msgSendSuper2(&v57, sel_init);
      return;
    }

    if (v36 >> 62)
    {
      if (sub_192228340() == 1)
      {
        goto LABEL_12;
      }
    }

    else if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_12;
    }

    if (v24 >> 62)
    {
      v44 = sub_192228340();
    }

    else
    {
      v44 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v44 == 1)
    {
      goto LABEL_19;
    }

    __break(1u);
  }

  __break(1u);
}

double sub_1921AA3F0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v28 = a2;
  v4 = *v2;
  v5 = type metadata accessor for ViewSource(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - v15;
  v29 = v2;
  v18 = type metadata accessor for ResolvedWidgetHost(0, *(v4 + 96), *(v4 + 104), v17);
  sub_19207B920(a1, v18, &off_1F06B3B60, v16);
  sub_19202CFFC(v16, v13, &qword_1EADEEE20, &qword_19222B670);
  v19 = type metadata accessor for WidgetDescriptor(0);
  if ((*(*(v19 - 8) + 48))(v13, 1, v19) == 1)
  {
    sub_192033970(v16, &qword_1EADEEE20, &qword_19222B670);
  }

  else
  {
    sub_192036754(v13, v10, type metadata accessor for ViewSource);
    sub_192036A20(v13, type metadata accessor for WidgetDescriptor);
    sub_192082064(v10, v7, type metadata accessor for ViewSource);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      sub_192036A20(v7, type metadata accessor for ViewSource);
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v21 = v7[4];
        v22 = v7[5];
        v23 = v7[6];

        sub_19207C280(v21, v22);

        v23(v24);

        sub_192033970(v16, &qword_1EADEEE20, &qword_19222B670);
        return result;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE28, &qword_19222B6A0);

      v26 = sub_1922253B0();
      (*(*(v26 - 8) + 8))(v7, v26);
    }

    v13 = v16;
  }

  sub_192033970(v13, &qword_1EADEEE20, &qword_19222B670);
  result = 0.0;
  v27 = v28;
  *v28 = 0u;
  v27[1] = 0u;
  *(v27 + 4) = 0;
  return result;
}

uint64_t sub_1921AA784@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ViewSource(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for WidgetDescriptor(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v58 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v55 - v11;
  v13 = sub_192036694();
  v70 = v13[2];
  if (v70)
  {
    v14 = 0;
    v15 = *(v8 + 80);
    v55 = a2;
    v56 = (v15 + 32) & ~v15;
    v71 = v13 + v56;
    v64 = MEMORY[0x1E69E7CC0];
    v16 = v8;
    v17 = v13;
    v18 = v70;
    v57 = v7;
    v59 = v16;
    v60 = v13;
    v61 = v4;
    v62 = a1;
    while (1)
    {
      if (v14 >= v17[2])
      {
        __break(1u);
LABEL_43:
        if (qword_1ED74C6B0 != -1)
        {
          swift_once();
        }

        v51 = sub_1922258B0();
        __swift_project_value_buffer(v51, qword_1ED74CCC8);
        v52 = sub_192225890();
        v53 = sub_192227F90();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          *v54 = 134349056;
          *(v54 + 4) = a1;
          _os_log_impl(&dword_192028000, v52, v53, "Unrecognized family: %{public}ld", v54, 0xCu);
          MEMORY[0x193B0C7F0](v54, -1, -1);
        }

        sub_192228620();
        __break(1u);
LABEL_48:
        result = sub_192228990();
        __break(1u);
        return result;
      }

      v19 = *(v16 + 72);
      sub_192036754(&v71[v19 * v14], v12, type metadata accessor for WidgetDescriptor);
      if (a1)
      {
        sub_192036754(v12, v6, type metadata accessor for ViewSource);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload > 1)
        {
          sub_192036A20(v6, type metadata accessor for ViewSource);
        }

        else
        {
          if (!EnumCaseMultiPayload)
          {
            v21 = v7;
            v22 = *v6;
            v23 = v6[1];
            v24 = v6[4];
            v65 = v6[3];
            v66 = v24;
            v25 = v6[7];
            v67 = v6[5];
            v68 = v25;
            v69 = a1;
            v26 = [v69 kind];
            v27 = sub_192227960();
            v29 = v28;

            v30 = v23;
            if (v22 == v27 && v23 == v29)
            {

              v7 = v21;
              goto LABEL_15;
            }

            v32 = sub_1922289A0();

            v7 = v21;
            if (v32)
            {
LABEL_15:
              v63 = v30;
              v33 = *&v12[*(v7 + 28)];
              v34 = *(v33 + 16);
              if (v34)
              {
                v73 = MEMORY[0x1E69E7CC0];
                sub_19207C250(0, v34, 0);
                v35 = v73;
                v36 = (v33 + 32);
                while (1)
                {
                  v37 = *v36++;
                  a1 = v37;
                  v38 = v37 - 1;
                  if ((v37 - 1) >= 0xE || ((0x2FFFu >> v38) & 1) == 0)
                  {
                    goto LABEL_43;
                  }

                  v39 = byte_19223E728[v38];
                  v73 = v35;
                  v41 = *(v35 + 16);
                  v40 = *(v35 + 24);
                  if (v41 >= v40 >> 1)
                  {
                    sub_19207C250((v40 > 1), v41 + 1, 1);
                    v35 = v73;
                  }

                  *(v35 + 16) = v41 + 1;
                  *(v35 + v41 + 32) = v39;
                  if (!--v34)
                  {
                    v7 = v57;
                    goto LABEL_24;
                  }
                }
              }

              v35 = MEMORY[0x1E69E7CC0];
LABEL_24:
              v18 = v70;
              InternalWidgetFamily.init(_:)([v69 family], &v72);
              a1 = v62;
              v17 = v60;
              if (v72 > 0xCuLL)
              {
                goto LABEL_48;
              }

              v42 = *(v35 + 16);
              v43 = (v35 + 32);
              do
              {
                if (!v42)
                {

                  sub_19207C280(v66, v67);

                  sub_192036A20(v12, type metadata accessor for WidgetDescriptor);
                  v16 = v59;
                  goto LABEL_5;
                }

                v44 = *v43++;
                --v42;
              }

              while (qword_19223E6C0[v72] != v44);

              sub_19207C280(v66, v67);

              sub_192082064(v12, v58, type metadata accessor for WidgetDescriptor);
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v45 = v64;
              }

              else
              {
                v45 = sub_19207C2E8(0, v64[2] + 1, 1, v64);
              }

              v47 = v45[2];
              v46 = v45[3];
              if (v47 >= v46 >> 1)
              {
                v45 = sub_19207C2E8((v46 > 1), v47 + 1, 1, v45);
              }

              v45[2] = v47 + 1;
              v64 = v45;
              sub_192082064(v58, v45 + v56 + v47 * v19, type metadata accessor for WidgetDescriptor);
              v16 = v59;
            }

            else
            {
              sub_192036A20(v12, type metadata accessor for WidgetDescriptor);

              sub_19207C280(v66, v67);

              v16 = v59;
              v17 = v60;
              a1 = v62;
            }

            v18 = v70;
            goto LABEL_5;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE28, &qword_19222B6A0);

          v18 = v70;

          v31 = sub_1922253B0();
          (*(*(v31 - 8) + 8))(v6, v31);
        }
      }

      sub_192036A20(v12, type metadata accessor for WidgetDescriptor);
LABEL_5:
      if (++v14 == v18)
      {

        a2 = v55;
        v48 = v64;
        if (!v64[2])
        {
          goto LABEL_40;
        }

LABEL_38:
        sub_192036754(v48 + ((*(v16 + 80) + 32) & ~*(v16 + 80)), a2, type metadata accessor for WidgetDescriptor);
        v49 = 0;
        goto LABEL_41;
      }
    }
  }

  v48 = MEMORY[0x1E69E7CC0];
  v16 = v8;
  if (*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_38;
  }

LABEL_40:
  v49 = 1;
LABEL_41:

  return (*(v16 + 56))(a2, v49, 1, v7);
}

uint64_t sub_1921AAF24@<X0>(_OWORD *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - v3;
  v5 = type metadata accessor for ViewSource(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1921A9044(v4);
  v8 = type metadata accessor for WidgetDescriptor(0);
  if ((*(*(v8 - 8) + 48))(v4, 1, v8))
  {
    sub_192033970(v4, &qword_1EADEEE20, &qword_19222B670);
  }

  else
  {
    sub_192036754(v4, v7, type metadata accessor for ViewSource);
    sub_192033970(v4, &qword_1EADEEE20, &qword_19222B670);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v9 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE28, &qword_19222B6A0) + 48)];
      v10 = sub_1922253B0();
      v11 = *(*(v10 - 8) + 8);
      v12 = *v9;
      v16 = *(v9 + 1);
      v17 = v12;
      result = v11(v7, v10);
      v14 = v16;
      *a1 = v17;
      a1[1] = v14;
      return result;
    }

    sub_192036A20(v7, type metadata accessor for ViewSource);
  }

  sub_1920EECBC();
  swift_allocError();
  *v15 = 0;
  return swift_willThrow();
}

uint64_t sub_1921AB15C()
{

  sub_192033970(v0 + qword_1ED749988, &qword_1EADF19C0, &unk_19223E6B0);
  sub_192033970(v0 + qword_1ED749520, &qword_1EADF19C0, &unk_19223E6B0);
  return sub_192033970(v0 + qword_1ED748A90, &qword_1EADF19C0, &unk_19223E6B0);
}

void *sub_1921AB1E0()
{
  sub_192039140(*(v0 + 16), *(v0 + 24));

  sub_192033970(v0 + qword_1ED749988, &qword_1EADF19C0, &unk_19223E6B0);
  sub_192033970(v0 + qword_1ED749520, &qword_1EADF19C0, &unk_19223E6B0);
  sub_192033970(v0 + qword_1ED748A90, &qword_1EADF19C0, &unk_19223E6B0);
  return v0;
}

uint64_t sub_1921AB270()
{
  sub_1921AB1E0();

  return swift_deallocClassInstance();
}

uint64_t sub_1921AB3B8(void (*a1)(__n128))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - v3;
  v5 = type metadata accessor for WidgetDescriptor(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v7);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_192033970(v4, &qword_1EADEEE20, &qword_19222B670);
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_192082064(v4, v9, type metadata accessor for WidgetDescriptor);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEB80, &qword_19222AF60);
    v11 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_19222B480;
    sub_192082064(v9, v12 + v11, type metadata accessor for WidgetDescriptor);
    return v12;
  }
}

void static WidgetBundle.main()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v7 = sub_1922258B0();
  __swift_project_value_buffer(v7, qword_1ED74CCC8);
  v8 = sub_192225890();
  v9 = sub_192227FB0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_192028000, v8, v9, "main [WidgetBundle]", v10, 2u);
    MEMORY[0x193B0C7F0](v10, -1, -1);
  }

  type metadata accessor for ResolvedWidgetBundleHost();
  sub_192225A90();
  v11 = sub_1921AFD24(v6, a1, a2);
  (*(v4 + 8))(v6, a1);
  *&xmmword_1ED74CC80 = v11;
  *(&xmmword_1ED74CC80 + 1) = &off_1F06B3B48;
  qword_1ED74CC90 = &off_1F06B3B00;

  v12 = sub_192225890();
  v13 = sub_192227FB0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 136446210;
    v20 = xmmword_1ED74CC80;
    v21 = qword_1ED74CC90;
    v22 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1978, qword_19223E570);
    v16 = sub_192228230();
    v18 = sub_19202B8CC(v16, v17, &v22);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_192028000, v12, v13, "WidgetHost - %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x193B0C7F0](v15, -1, -1);
    MEMORY[0x193B0C7F0](v14, -1, -1);
  }

  sub_19202A7A8(0, &qword_1ED74C300, 0x1E6966CA8);
  v19 = [objc_allocWithZone(type metadata accessor for WidgetExtensionXPCServer()) init];
  sub_192227F70();
}

void *sub_1921AB8BC()
{
  v0 = type metadata accessor for ViewSource(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for WidgetDescriptor(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v23 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  sub_1920791AC();
  result = sub_192225D70();
  v10 = v25;
  v11 = *(v25 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = MEMORY[0x1E69E7CC0];
    v21 = *(v25 + 16);
    v22 = v0;
    while (v12 < *(v10 + 16))
    {
      v14 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v15 = *(v4 + 72);
      sub_192036754(v10 + v14 + v15 * v12, v8, type metadata accessor for WidgetDescriptor);
      sub_192036754(v8, v2, type metadata accessor for ViewSource);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE28, &qword_19222B6A0);

        v16 = sub_1922253B0();
        (*(*(v16 - 8) + 8))(v2, v16);
        sub_192082064(v8, v23, type metadata accessor for WidgetDescriptor);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1920820CC(0, *(v13 + 16) + 1, 1);
          v13 = v24;
        }

        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1920820CC((v18 > 1), v19 + 1, 1);
          v13 = v24;
        }

        *(v13 + 16) = v19 + 1;
        result = sub_192082064(v23, v13 + v14 + v19 * v15, type metadata accessor for WidgetDescriptor);
        v11 = v21;
      }

      else
      {
        sub_192036A20(v2, type metadata accessor for ViewSource);
        result = sub_192036A20(v8, type metadata accessor for WidgetDescriptor);
      }

      if (v11 == ++v12)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
LABEL_13:

    return v13;
  }

  return result;
}

void *sub_1921ABC08()
{
  v0 = type metadata accessor for ViewSource(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for WidgetDescriptor(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v25 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  sub_1920791AC();
  result = sub_192225D70();
  v10 = v27;
  v11 = *(v27 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = MEMORY[0x1E69E7CC0];
    v23 = v0;
    v24 = v11;
    while (1)
    {
      if (v12 >= *(v10 + 16))
      {
        __break(1u);
        return result;
      }

      v14 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v15 = *(v4 + 72);
      sub_192036754(v10 + v14 + v15 * v12, v8, type metadata accessor for WidgetDescriptor);
      sub_192036754(v8, v2, type metadata accessor for ViewSource);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          sub_192036A20(v2, type metadata accessor for ViewSource);
          sub_192082064(v8, v25, type metadata accessor for WidgetDescriptor);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v26 = v13;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1920820CC(0, *(v13 + 16) + 1, 1);
            v13 = v26;
          }

          v20 = *(v13 + 16);
          v19 = *(v13 + 24);
          if (v20 >= v19 >> 1)
          {
            sub_1920820CC((v19 > 1), v20 + 1, 1);
            v13 = v26;
          }

          *(v13 + 16) = v20 + 1;
          result = sub_192082064(v25, v13 + v14 + v20 * v15, type metadata accessor for WidgetDescriptor);
          v11 = v24;
          goto LABEL_5;
        }
      }

      else if (EnumCaseMultiPayload)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE28, &qword_19222B6A0);

        v11 = v24;

        v17 = sub_1922253B0();
        (*(*(v17 - 8) + 8))(v2, v17);
        goto LABEL_4;
      }

      sub_192036A20(v2, type metadata accessor for ViewSource);
LABEL_4:
      result = sub_192036A20(v8, type metadata accessor for WidgetDescriptor);
LABEL_5:
      if (v11 == ++v12)
      {
        goto LABEL_17;
      }
    }
  }

  v13 = MEMORY[0x1E69E7CC0];
LABEL_17:

  v27 = MEMORY[0x1E69E7CD0];
  sub_1920822EC(v13, &v27);
  v22 = v21;

  return v22;
}

uint64_t sub_1921ABFAC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v73 = a2;
  v3 = type metadata accessor for ViewSource(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1922253B0();
  v6 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v77 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v93 = &v72 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v72 - v11;
  v97 = sub_192225360();
  v91 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v89 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v96 = &v72 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v74 = &v72 - v17;
  if (qword_1EADEDEB0 != -1)
  {
    swift_once();
  }

  v18 = sub_1922258B0();
  v88 = __swift_project_value_buffer(v18, qword_1EAE007D8);
  v19 = sub_192225890();
  v20 = sub_192227F80();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = v5;
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_192028000, v19, v20, "WidgetHost activity search: START", v22, 2u);
    v23 = v22;
    v5 = v21;
    MEMORY[0x193B0C7F0](v23, -1, -1);
  }

  v24 = sub_192039194();
  v26 = v91 + 16;
  v25 = *(v91 + 16);
  v27 = v97;
  v25(v74, a1, v97);
  v87 = v25;
  v25(v96, a1, v27);
  v29 = v24[2];
  v90 = (v26 - 8);
  v91 = v26;
  if (!v29)
  {
    v30 = 0;
    goto LABEL_19;
  }

  v86 = (v6 + 32);
  v101 = (v6 + 8);
  v82 = (v6 + 16);
  v30 = 0;
  v31 = *(type metadata accessor for WidgetDescriptor(0) - 8);
  v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v72 = v24;
  v6 = (v24 + v32);
  v33 = *(v31 + 72);
  *&v34 = 136446466;
  v75 = v34;
  v35 = v78;
  v36 = v77;
  v84 = v5;
  v85 = v3;
  v76 = v12;
  v83 = v29;
  v81 = v33;
  while (1)
  {
    sub_192036754(v6, v5, type metadata accessor for ViewSource);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    sub_192036A20(v5, type metadata accessor for ViewSource);
LABEL_8:
    ++v30;
    v6 = (v6 + v33);
    if (v29 == v30)
    {
      v30 = v29;
      goto LABEL_18;
    }
  }

  v37 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE28, &qword_19222B6A0) + 48)];
  v38 = *(v37 + 1);
  v94 = *(v37 + 3);
  v95 = v38;
  (*v86)(v12, v5, v35);
  v39 = v12;
  v40 = v93;
  sub_192225320();
  v41 = sub_192225390();
  v42 = *v101;
  (*v101)(v40, v35);
  if ((v41 & 1) == 0)
  {
    (*v82)(v36, v39, v35);
    v43 = v89;
    v87(v89, v96, v97);
    v44 = sub_192225890();
    v92 = sub_192227F80();
    if (os_log_type_enabled(v44, v92))
    {
      v45 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      *&v98 = v80;
      *v45 = v75;
      v79 = v44;
      v46 = sub_192225380();
      v48 = v47;
      v42(v36, v35);
      v49 = sub_19202B8CC(v46, v48, &v98);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2082;
      v50 = v93;
      sub_192225320();
      v51 = sub_192225380();
      v53 = v52;
      v54 = v50;
      v55 = v78;
      v42(v54, v78);
      (*v90)(v43, v97);
      v56 = sub_19202B8CC(v51, v53, &v98);
      v12 = v76;

      *(v45 + 14) = v56;
      v57 = v79;
      _os_log_impl(&dword_192028000, v79, v92, "WidgetHost session search: Candidate Failure - (%{public}s) vs. (%{public}s)", v45, 0x16u);
      v58 = v80;
      swift_arrayDestroy();
      MEMORY[0x193B0C7F0](v58, -1, -1);
      MEMORY[0x193B0C7F0](v45, -1, -1);

      v42(v12, v55);
      v5 = v84;
      v35 = v55;
      v36 = v77;
    }

    else
    {
      v12 = v39;

      (*v90)(v43, v97);
      v42(v36, v35);
      v42(v39, v35);
      v5 = v84;
    }

    v29 = v83;
    v33 = v81;
    goto LABEL_8;
  }

  v42(v39, v35);

LABEL_18:
  v24 = v72;
LABEL_19:
  v59 = v24[2];
  v60 = v90;
  if (v30 == v59)
  {
    v61 = *v90;
    v62 = v97;
    (*v90)(v74, v97);

    (v61)(v96, v62);
    sub_1920EECBC();
    swift_allocError();
    *v63 = 0;
    return swift_willThrow();
  }

  if (v30 >= v59)
  {
    __break(1u);
  }

  else
  {
    v65 = *(type metadata accessor for WidgetDescriptor(0) - 8);
    v66 = v74;
    v67 = sub_1921AC914(v24 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v30, v74, &v98);
    v6 = *v60;
    (*v60)(v66, v97, v67);
    v68 = v98;
    v69 = v99;
    v70 = v100;
    sub_1921AFEC8(v98, *(&v98 + 1), v99, v100);
    v28.n128_f64[0] = sub_1921AFE84(v68, *(&v68 + 1), v69, v70);
    if (v68)
    {

      result = (v6)(v96, v97);
      v71 = v73;
      *v73 = v68;
      v71[2] = v69;
      v71[3] = v70;
      return result;
    }
  }

  result = (v6)(v96, v97, v28);
  __break(1u);
  return result;
}

double sub_1921AC914@<D0>(uint64_t a1@<X0>, char *a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = sub_192225360();
  v63 = *(v6 - 8);
  v64 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ViewSource(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1922253B0();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v62 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v52 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v52 - v19;
  sub_192036754(a1, v11, type metadata accessor for ViewSource);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v59 = v8;
    v61 = a3;
    v21 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE28, &qword_19222B6A0) + 48)];
    v22 = *v21;
    v60 = *(v21 + 8);
    v23 = *(v21 + 3);
    (*(v13 + 32))(v20, v11, v12);
    v58 = a2;
    sub_192225320();
    v24 = sub_192225390();
    v25 = *(v13 + 8);
    v25(v17, v12);
    if (v24)
    {
      v25(v20, v12);
      v26 = v61;
      *v61 = v22;
      result = *&v60;
      *(v26 + 1) = v60;
      v26[3] = v23;
    }

    else
    {
      v56 = v23;
      v57 = v25;
      if (qword_1EADEDEB0 != -1)
      {
        swift_once();
      }

      v28 = sub_1922258B0();
      __swift_project_value_buffer(v28, qword_1EAE007D8);
      v29 = v62;
      (*(v13 + 16))(v62, v20, v12);
      v31 = v63;
      v30 = v64;
      v32 = v59;
      (*(v63 + 16))(v59, v58, v64);
      v33 = sub_192225890();
      v34 = sub_192227F80();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v58 = v20;
        v36 = v35;
        v55 = swift_slowAlloc();
        v65 = v55;
        *v36 = 136446466;
        v54 = v34;
        v37 = sub_192225380();
        v53 = v33;
        v38 = v37;
        v40 = v39;
        v57(v29, v12);
        v41 = sub_19202B8CC(v38, v40, &v65);

        *(v36 + 4) = v41;
        *(v36 + 12) = 2082;
        v42 = v36;
        sub_192225320();
        v43 = sub_192225380();
        v45 = v44;
        v46 = v57;
        v57(v17, v12);
        (*(v31 + 8))(v32, v30);
        v47 = sub_19202B8CC(v43, v45, &v65);

        *(v42 + 14) = v47;
        v48 = v53;
        _os_log_impl(&dword_192028000, v53, v54, "WidgetHost session search: Candidate Failure - (%{public}s) vs. (%{public}s)", v42, 0x16u);
        v49 = v55;
        swift_arrayDestroy();
        MEMORY[0x193B0C7F0](v49, -1, -1);
        MEMORY[0x193B0C7F0](v42, -1, -1);

        v46(v58, v12);
      }

      else
      {

        (*(v31 + 8))(v32, v30);
        v50 = v57;
        v57(v29, v12);
        v50(v20, v12);
      }

      v51 = v61;
      result = 0.0;
      *v61 = 0u;
      *(v51 + 1) = 0u;
    }
  }

  else
  {
    sub_192036A20(v11, type metadata accessor for ViewSource);
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

void sub_1921ACEAC(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v40 = a3;
  v6 = type metadata accessor for WidgetDescriptor(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EADEDEB0 != -1)
  {
LABEL_23:
    swift_once();
  }

  v10 = sub_1922258B0();
  __swift_project_value_buffer(v10, qword_1EAE007D8);
  v11 = sub_192225890();
  v12 = sub_192227F80();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_192028000, v11, v12, "WidgetHost activity context search: START", v13, 2u);
    MEMORY[0x193B0C7F0](v13, -1, -1);
  }

  v14 = sub_192039194();
  v15 = v14[2];
  if (v15)
  {
    v16 = 0;
    *&v37 = v15 - 1;
    v17 = MEMORY[0x1E69E7CC0];
    do
    {
      v18 = v16;
      while (1)
      {
        if (v18 >= v14[2])
        {
          __break(1u);
          goto LABEL_23;
        }

        sub_192036754(v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v18, v9, type metadata accessor for WidgetDescriptor);
        sub_1921AD264(v9, a1, a2, &v38);
        if (v3)
        {

          sub_192036A20(v9, type metadata accessor for WidgetDescriptor);

          __break(1u);
          return;
        }

        sub_192036A20(v9, type metadata accessor for WidgetDescriptor);
        if (v38)
        {
          break;
        }

        ++v18;
        sub_1921AFE84(0, *(&v38 + 1), v39, *(&v39 + 1));
        if (v15 == v18)
        {
          goto LABEL_19;
        }
      }

      v35 = v38;
      v36 = v39;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_1920C3690(0, *(v17 + 2) + 1, 1, v17);
      }

      v19 = v17;
      v20 = *(v17 + 2);
      v21 = v19;
      v22 = *(v19 + 3);
      v23 = v20 + 1;
      v25 = v35;
      v24 = v36;
      if (v20 >= v22 >> 1)
      {
        v34 = v20 + 1;
        v27 = sub_1920C3690((v22 > 1), v20 + 1, 1, v21);
        v23 = v34;
        v25 = v35;
        v24 = v36;
        v21 = v27;
      }

      v16 = v18 + 1;
      *(v21 + 2) = v23;
      v26 = &v21[32 * v20];
      v17 = v21;
      *(v26 + 2) = v25;
      *(v26 + 3) = v24;
    }

    while (v37 != v18);
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

LABEL_19:

  if (*(v17 + 2))
  {
    v28 = v17;
    v29 = *(v17 + 4);
    v30 = *(v28 + 7);
    v37 = *(v28 + 40);

    v31 = v40;
    *v40 = v29;
    *(v31 + 1) = v37;
    v31[3] = v30;
  }

  else
  {

    sub_1920EECBC();
    swift_allocError();
    *v32 = 0;
    swift_willThrow();
  }
}

uint64_t sub_1921AD264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v60 = a2;
  v61 = a3;
  v7 = type metadata accessor for ViewSource(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1922253B0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v59 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v50 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v50 - v17;
  sub_192036754(a1, v9, type metadata accessor for ViewSource);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v57 = a4;
    v58 = v4;
    v19 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE28, &qword_19222B6A0) + 48)];
    v20 = *v19;
    v56 = *(v19 + 8);
    v21 = *(v19 + 3);
    (*(v11 + 32))(v18, v9, v10);
    sub_1922253A0();
    v22 = sub_192225390();
    v23 = v11;
    v24 = *(v11 + 8);
    v55 = v15;
    v24(v15, v10);
    if (v22)
    {
      result = (v24)(v18, v10);
      v26 = v57;
      *v57 = v20;
      *(v26 + 1) = v56;
      v26[3] = v21;
    }

    else
    {
      v54 = v21;
      if (qword_1EADEDEB0 != -1)
      {
        swift_once();
      }

      v27 = sub_1922258B0();
      __swift_project_value_buffer(v27, qword_1EAE007D8);
      v28 = v59;
      (*(v23 + 16))(v59, v18, v10);
      v29 = sub_192225890();
      v30 = sub_192227F80();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v53 = v18;
        v32 = v31;
        v52 = swift_slowAlloc();
        v62 = v52;
        *v32 = 136446466;
        v51 = v29;
        v33 = sub_192225380();
        v34 = v28;
        v35 = v10;
        v37 = v36;
        v24(v34, v10);
        v38 = sub_19202B8CC(v33, v37, &v62);

        *(v32 + 4) = v38;
        *(v32 + 12) = 2082;
        v39 = v30;
        v40 = v55;
        sub_1922253A0();
        v41 = sub_192225380();
        v43 = v42;
        v24(v40, v35);
        v44 = sub_19202B8CC(v41, v43, &v62);

        *(v32 + 14) = v44;
        v45 = v51;
        _os_log_impl(&dword_192028000, v51, v39, "WidgetHost session context search: Candidate Failure - (%{public}s) vs. (%{public}s)", v32, 0x16u);
        v46 = v52;
        swift_arrayDestroy();
        MEMORY[0x193B0C7F0](v46, -1, -1);
        MEMORY[0x193B0C7F0](v32, -1, -1);

        v47 = v53;
        v48 = v35;
      }

      else
      {

        v24(v28, v10);
        v47 = v18;
        v48 = v10;
      }

      result = (v24)(v47, v48);
      v49 = v57;
      *v57 = 0u;
      *(v49 + 1) = 0u;
    }
  }

  else
  {
    result = sub_192036A20(v9, type metadata accessor for ViewSource);
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

double sub_1921AD738@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ViewSource(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  sub_1921AA784(a1, &v24 - v14);
  sub_19202CFFC(v15, v12, &qword_1EADEEE20, &qword_19222B670);
  v16 = type metadata accessor for WidgetDescriptor(0);
  if ((*(*(v16 - 8) + 48))(v12, 1, v16) == 1)
  {
    sub_192033970(v15, &qword_1EADEEE20, &qword_19222B670);
  }

  else
  {
    sub_192036754(v12, v9, type metadata accessor for ViewSource);
    sub_192036A20(v12, type metadata accessor for WidgetDescriptor);
    sub_192082064(v9, v6, type metadata accessor for ViewSource);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      sub_192036A20(v6, type metadata accessor for ViewSource);
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v18 = v6[4];
        v19 = v6[5];
        v20 = v6[6];

        sub_19207C280(v18, v19);

        v20(v21);

        sub_192033970(v15, &qword_1EADEEE20, &qword_19222B670);
        return result;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE28, &qword_19222B6A0);

      v23 = sub_1922253B0();
      (*(*(v23 - 8) + 8))(v6, v23);
    }

    v12 = v15;
  }

  sub_192033970(v12, &qword_1EADEEE20, &qword_19222B670);
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
  return result;
}

double sub_1921ADA7C()
{

  return result;
}

uint64_t sub_1921ADABC()
{
  sub_192039140(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

id sub_1921ADC0C(uint64_t a1, uint64_t a2, uint64_t a3, int64_t a4, void *a5)
{
  v140 = a5;
  v138 = type metadata accessor for ViewSource(0);
  MEMORY[0x1EEE9AC00](v138);
  v8 = &v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v137 = &v132 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v136 = &v132 - v12;
  v144 = type metadata accessor for WidgetDescriptor(0);
  v13 = *(a1 + *(v144 + 28));
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = v13 + 32;
    do
    {
      v16 += 8;
      v15 |= CHSWidgetFamilyMaskFromWidgetFamily();
      --v14;
    }

    while (v14);
  }

  else
  {
    v15 = 0;
  }

  v139 = a4;
  sub_1921DB7C0(&v145);
  if (v146)
  {
    sub_19203832C(&v145, &v151);
    v17 = sub_192227930();

    v18 = v152;
    v19 = v153;
    __swift_project_boxed_opaque_existential_1(&v151, v152);
    (*(v19 + 16))(v18, v19);
    v20 = sub_192227930();

    v21 = v152;
    v22 = v153;
    __swift_project_boxed_opaque_existential_1(&v151, v152);
    (*(v22 + 24))(v21, v22);
    v23 = v144;
    if (v24)
    {
      v25 = sub_192227930();
    }

    else
    {
      v25 = 0;
    }

    v26 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithExtensionBundleIdentifier:v17 containerBundleIdentifier:0 kind:v20 supportedFamilies:v15 intentType:v25];

    sub_192033A64(&v151, v150);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF19A8, &qword_19223E690);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF19B0, &qword_19223E698);
    v27 = swift_dynamicCast();
    v143 = v26;
    v141 = a1;
    if ((v27 & 1) == 0)
    {
      v149 = 0;
      memset(v148, 0, sizeof(v148));
      sub_192033970(v148, &qword_1EADF19B8, &unk_19223E6A0);
      goto LABEL_45;
    }

    sub_19203832C(v148, &v145);
    v28 = v146;
    v29 = v147;
    __swift_project_boxed_opaque_existential_1(&v145, v146);
    v30 = (*(v29 + 8))(v28, v29);
    if (!v30)
    {
      __swift_destroy_boxed_opaque_existential_1(&v145);
      v26 = v143;
      goto LABEL_45;
    }

    v32 = v31;
    v33 = v30;
    v34 = v30();
    sub_19207C280(v33, v32);
    v35 = *(v34 + 16);
    if (v35)
    {
      v36 = *(v34 + 32);
    }

    else
    {
      v36 = 0;
    }

    if ((*MEMORY[0x1E69941F8] & 0x8000000000000000) != 0)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (v35 >= *MEMORY[0x1E69941F8])
    {
      v38 = *MEMORY[0x1E69941F8];
    }

    else
    {
      v38 = v35;
    }

    v135 = MEMORY[0x1E69E7CC0];
    v150[0] = MEMORY[0x1E69E7CC0];
    v134 = v34;
    if (!v38)
    {
      goto LABEL_37;
    }

    v39 = 0;
    v142 = -v38;
    v135 = MEMORY[0x1E69E7CC0];
    v40 = v34 + 48;
    v133 = v36;
    v132 = v38;
LABEL_23:
    if (v39 <= v38)
    {
      v41 = v38;
    }

    else
    {
      v41 = v39;
    }

    v42 = -v41;
    v36 = (v40 + 24 * v39++);
    while (1)
    {
      if (v42 + v39 == 1)
      {
        __break(1u);
        goto LABEL_41;
      }

      v43 = *(v36 - 2);
      v44 = objc_allocWithZone(MEMORY[0x1E69942D0]);
      v45 = v43;

      v46 = [v44 initWithIntent_];
      if (v46)
      {
        v47 = v46;
        v48 = objc_allocWithZone(MEMORY[0x1E69942C0]);
        v49 = sub_192227930();
        v50 = v48;
        v23 = v144;
        v51 = [v50 initWithIntentReference:v47 localizedDescription:v49];

        if (v51)
        {
          MEMORY[0x193B0AB00]();
          if (*((v150[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v150[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_192227BB0();
          }

          v52 = v142 + v39;
          sub_192227C00();
          v135 = v150[0];
          v36 = v133;
          v38 = v132;
          if (!v52)
          {
LABEL_37:
            swift_unknownObjectRelease();
            if (!(v135 >> 62))
            {
              a1 = v141;
              if (*((v135 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_39;
              }

LABEL_43:

              v26 = v143;
              goto LABEL_44;
            }

LABEL_42:
            v57 = sub_192228340();
            a1 = v141;
            if (!v57)
            {
              goto LABEL_43;
            }

LABEL_39:
            v53 = objc_allocWithZone(MEMORY[0x1E69942C8]);
            sub_19202A7A8(0, &qword_1EADED378, 0x1E69942C0);
            v54 = v36;
            v55 = sub_192227B60();

            v56 = [v53 initWithSchemaIntent:v54 recommendations:v55];

            v26 = v143;
            [v143 setIntentRecommendationsContainer_];

LABEL_44:
            __swift_destroy_boxed_opaque_existential_1(&v145);
LABEL_45:
            v58 = *(a1 + v23[41]);
            if (v58)
            {
              if (sub_1921AEF0C(v58, v37))
              {
                sub_19202A7A8(0, &qword_1EADF19A0, 0x1E6994298);
                v59 = sub_192227B60();

                goto LABEL_49;
              }
            }

            else
            {
              v59 = 0;
LABEL_49:
              v60 = v143;
              [v143 setRequiredFeatureFlags_];

              v26 = v60;
            }

            [v26 setEnablement_];
            if (*(a1 + v23[5] + 8))
            {
              v61 = sub_192227930();
            }

            else
            {
              v61 = 0;
            }

            [v26 setDisplayName_];

            if (*(a1 + v23[6] + 8))
            {
              v62 = sub_192227930();
            }

            else
            {
              v62 = 0;
            }

            [v26 setWidgetDescription_];

            [v26 setWidgetVisibility_];
            v63 = v26;
            if (![v26 widgetVisibility])
            {
              v64 = [objc_opt_self() mainBundle];
              v65 = [v64 bundlePath];

              sub_192227960();
              LOBYTE(v64) = sub_192227A10();

              [v63 setWidgetVisibility_];
            }

            v66 = sub_1920369B8();
            v67 = v66 & 1;
            if (sub_1920369B8())
            {
              v67 = v66 & 1 | 2;
            }

            if (sub_1920369B8())
            {
              v68 = v67 | 4;
            }

            else
            {
              v68 = v67;
            }

            [v63 setSpatialChromeStyles_];
            v69 = *(a1 + v23[9]);
            v70 = 1 << *(v69 + 32);
            if (v70 < 64)
            {
              v71 = ~(-1 << v70);
            }

            else
            {
              v71 = -1;
            }

            v72 = v71 & *(v69 + 64);
            v73 = (v70 + 63) >> 6;

            v74 = 0;
            v75 = v63;
            while (2)
            {
              if (!v72)
              {
                while (1)
                {
                  v77 = v74 + 1;
                  if (__OFADD__(v74, 1))
                  {
                    break;
                  }

                  if (v77 >= v73)
                  {

                    v109 = v144;
                    v72 = v141;
                    if (*(v141 + *(v144 + 56) + 8))
                    {
                      v110 = sub_192227930();
                    }

                    else
                    {
                      v110 = 0;
                    }

                    v63 = v140;
                    v73 = v139;
                    v111 = v137;
                    v112 = v136;
                    [v75 setEventMachServiceName_];

                    v113 = sub_192225050();
                    [v75 setLocaleToken_];

                    v114 = sub_192227930();
                    [v75 setSdkVersion_];

                    [v75 setPreferredBackgroundStyle_];
                    [v75 setSupportsVibrantContent_];
                    if (*(v72 + v109[18]) == 1)
                    {
                      if (qword_1ED749D58 != -1)
                      {
                        swift_once();
                      }

                      if (dyld_program_sdk_at_least())
                      {
                        [v75 setSupportsAccentedContent_];
                      }
                    }

                    sub_192036754(v72, v112, type metadata accessor for ViewSource);
                    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
                    if (EnumCaseMultiPayload <= 1 && EnumCaseMultiPayload)
                    {
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE28, &qword_19222B6A0);

                      v116 = sub_1922253B0();
                      (*(*(v116 - 8) + 8))(v112, v116);
                    }

                    else
                    {
                      sub_192036A20(v112, type metadata accessor for ViewSource);
                    }

                    [v75 setRelevanceBacked_];
                    [v75 setSupportsPush_];
                    if (*(v72 + v109[12] + 8))
                    {
                      v117 = sub_192227930();
                    }

                    else
                    {
                      v117 = 0;
                    }

                    [v75 setAssociatedKind_];

                    [v75 setEnablesMultipleTapTargets_];
                    v118 = v152;
                    v119 = v153;
                    __swift_project_boxed_opaque_existential_1(&v151, v152);
                    (*(v119 + 24))(v118, v119);
                    if (v120)
                    {

                      v121 = *(v72 + v109[23]);
                    }

                    else
                    {
                      v121 = 0;
                    }

                    v122 = v143;
                    [v143 setPromptsForUserConfiguration_];
                    [v122 setBackgroundRemovable_];
                    [v122 setSupportsInteraction_];
                    [v122 setHiddenBySensitiveUI_];
                    sub_192036754(v72, v111, type metadata accessor for ViewSource);
                    if (swift_getEnumCaseMultiPayload() == 3)
                    {
                      v123 = v111[5];
                      v124 = v111[6];
                      v125 = v111[7];

                      sub_19207C280(v124, v125);
                      if (v123)
                      {
                        v126 = sub_192227930();
                      }

                      else
                      {
                        v126 = 0;
                      }

                      v109 = v144;
                    }

                    else
                    {
                      sub_192036A20(v111, type metadata accessor for ViewSource);
                      v126 = 0;
                    }

                    v127 = v143;
                    [v143 setTargetLiveSceneBundleIdentifier_];

                    v75 = v127;
                    [v127 setWantsLiveScene_];
                    if (qword_1EADEE920 == -1)
                    {
LABEL_149:
                      v128 = qword_1EAE00888;
                      [v75 setConfigurationBackgroundColor_];
                      v129 = *(v128 + 24);
                      [v75 setConfigurationAccentColor_];
                      sub_192039140(v73, v63);

                      __swift_destroy_boxed_opaque_existential_1(&v151);
                      sub_192036A20(v72, type metadata accessor for WidgetDescriptor);
                      return v75;
                    }

LABEL_151:
                    swift_once();
                    goto LABEL_149;
                  }

                  v72 = *(v69 + 64 + 8 * v77);
                  ++v74;
                  if (v72)
                  {
                    v74 = v77;
                    goto LABEL_75;
                  }
                }

                __break(1u);
                goto LABEL_151;
              }

LABEL_75:
              v78 = (v74 << 9) | (8 * __clz(__rbit64(v72)));
              v63 = *(*(v69 + 48) + v78);
              v79 = *(*(v69 + 56) + v78);
              if (*(v79 + 16))
              {
                sub_192228AD0();
                MEMORY[0x193B0BA90](0);
                v80 = sub_192228B30();
                v81 = v79 + 56;
                v82 = -1 << *(v79 + 32);
                v83 = v80 & ~v82;
                if ((*(v79 + 56 + ((v83 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v83))
                {
                  v84 = ~v82;
                  while (*(*(v79 + 48) + v83))
                  {
                    v83 = (v83 + 1) & v84;
                    if (((*(v81 + ((v83 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v83) & 1) == 0)
                    {
                      goto LABEL_80;
                    }
                  }

                  v76 = 1;
                  if (*(v79 + 16))
                  {
LABEL_84:
                    sub_192228AD0();
                    MEMORY[0x193B0BA90](1);
                    v85 = sub_192228B30();
                    v86 = -1 << *(v79 + 32);
                    v87 = v85 & ~v86;
                    if ((*(v81 + ((v87 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v87))
                    {
                      v88 = ~v86;
                      while (*(*(v79 + 48) + v87) != 1)
                      {
                        v87 = (v87 + 1) & v88;
                        if (((*(v81 + ((v87 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v87) & 1) == 0)
                        {
                          goto LABEL_88;
                        }
                      }

                      v76 |= 2uLL;
                      if (*(v79 + 16))
                      {
LABEL_91:
                        sub_192228AD0();
                        MEMORY[0x193B0BA90](2);
                        v89 = sub_192228B30();
                        v90 = -1 << *(v79 + 32);
                        v91 = v89 & ~v90;
                        if ((*(v81 + ((v91 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v91))
                        {
                          v92 = ~v90;
                          while (*(*(v79 + 48) + v91) != 2)
                          {
                            v91 = (v91 + 1) & v92;
                            if (((*(v81 + ((v91 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v91) & 1) == 0)
                            {
                              goto LABEL_95;
                            }
                          }

                          v76 |= 4uLL;
                          if (*(v79 + 16))
                          {
LABEL_98:
                            sub_192228AD0();
                            MEMORY[0x193B0BA90](3);
                            v93 = sub_192228B30();
                            v94 = -1 << *(v79 + 32);
                            v95 = v93 & ~v94;
                            if ((*(v81 + ((v95 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v95))
                            {
                              v96 = ~v94;
                              while (*(*(v79 + 48) + v95) != 3)
                              {
                                v95 = (v95 + 1) & v96;
                                if (((*(v81 + ((v95 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v95) & 1) == 0)
                                {
                                  goto LABEL_102;
                                }
                              }

                              v76 |= 8uLL;
                              if (*(v79 + 16))
                              {
LABEL_105:
                                sub_192228AD0();
                                MEMORY[0x193B0BA90](6);
                                v97 = sub_192228B30();
                                v98 = -1 << *(v79 + 32);
                                v99 = v97 & ~v98;
                                if ((*(v81 + ((v99 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v99))
                                {
                                  v100 = ~v98;
                                  while (*(*(v79 + 48) + v99) != 6)
                                  {
                                    v99 = (v99 + 1) & v100;
                                    if (((*(v81 + ((v99 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v99) & 1) == 0)
                                    {
                                      goto LABEL_109;
                                    }
                                  }

                                  v76 |= 0x40uLL;
                                  if (*(v79 + 16))
                                  {
LABEL_112:
                                    sub_192228AD0();
                                    MEMORY[0x193B0BA90](4);
                                    v101 = sub_192228B30();
                                    v102 = -1 << *(v79 + 32);
                                    v103 = v101 & ~v102;
                                    if ((*(v81 + ((v103 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v103))
                                    {
                                      v104 = ~v102;
                                      while (*(*(v79 + 48) + v103) != 4)
                                      {
                                        v103 = (v103 + 1) & v104;
                                        if (((*(v81 + ((v103 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v103) & 1) == 0)
                                        {
                                          goto LABEL_116;
                                        }
                                      }

                                      v76 |= 0x10uLL;
                                      if (*(v79 + 16))
                                      {
LABEL_119:
                                        sub_192228AD0();
                                        MEMORY[0x193B0BA90](5);
                                        v105 = sub_192228B30();
                                        v106 = -1 << *(v79 + 32);
                                        v107 = v105 & ~v106;
                                        if ((*(v81 + ((v107 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v107))
                                        {
                                          v108 = ~v106;
                                          while (*(*(v79 + 48) + v107) != 5)
                                          {
                                            v107 = (v107 + 1) & v108;
                                            if (((*(v81 + ((v107 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v107) & 1) == 0)
                                            {
                                              goto LABEL_68;
                                            }
                                          }

                                          v76 |= 0x20uLL;
                                        }
                                      }
                                    }

                                    else
                                    {
LABEL_116:
                                      if (*(v79 + 16))
                                      {
                                        goto LABEL_119;
                                      }
                                    }
                                  }
                                }

                                else
                                {
LABEL_109:
                                  if (*(v79 + 16))
                                  {
                                    goto LABEL_112;
                                  }
                                }
                              }
                            }

                            else
                            {
LABEL_102:
                              if (*(v79 + 16))
                              {
                                goto LABEL_105;
                              }
                            }
                          }
                        }

                        else
                        {
LABEL_95:
                          if (*(v79 + 16))
                          {
                            goto LABEL_98;
                          }
                        }
                      }
                    }

                    else
                    {
LABEL_88:
                      if (*(v79 + 16))
                      {
                        goto LABEL_91;
                      }
                    }
                  }
                }

                else
                {
LABEL_80:
                  v76 = 0;
                  if (*(v79 + 16))
                  {
                    goto LABEL_84;
                  }
                }

LABEL_68:
                v75 = v143;
              }

              else
              {
                v76 = 0;
              }

              v72 &= v72 - 1;
              [v75 setDisfavoredLocations:v76 on:v63];
              continue;
            }
          }

          goto LABEL_23;
        }
      }

      else
      {
      }

      ++v39;
      v36 += 3;
      if (v142 + v39 == 1)
      {
        v36 = v133;
        goto LABEL_37;
      }
    }
  }

  sub_192033970(&v145, &qword_1EADF1860, &unk_19223D680);
  *&v145 = 0;
  *(&v145 + 1) = 0xE000000000000000;
  sub_192228400();

  *&v145 = 0xD00000000000002ALL;
  *(&v145 + 1) = 0x800000019224D590;
  sub_192036754(a1, v8, type metadata accessor for ViewSource);
  v131 = sub_192227990();
  MEMORY[0x193B0A990](v131);

  result = sub_192228620();
  __break(1u);
  return result;
}

uint64_t sub_1921AEF0C(unint64_t a1, __n128 a2)
{
  v7 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_15:
    sub_192228340();
    sub_192228520();
    v3 = sub_192228340();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_192228520();
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x193B0B410](v4, a1);
          v5 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          swift_unknownObjectRetain();
          v5 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_12;
          }
        }

        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          goto LABEL_13;
        }

        sub_1922284F0();
        sub_192228530();
        sub_192228540();
        sub_192228500();
        ++v4;
      }

      while (v5 != v3);
    }
  }

  return v7;
}

uint64_t sub_1921AF0B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - v5;
  v15 = MEMORY[0x1E69E7CC0];
  v7 = *(a1 + 16);
  sub_192228520();
  if (!v7)
  {
    return v15;
  }

  v10 = *(v4 + 16);
  v9 = v4 + 16;
  v8 = v10;
  v11 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
  v12 = *(v9 + 56);
  while (1)
  {
    v8(v6, v11, v3);
    sub_19202A7A8(0, &qword_1ED74BD10, 0x1E69943F0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_1922284F0();
    sub_192228530();
    sub_192228540();
    sub_192228500();
    v11 += v12;
    if (!--v7)
    {
      return v15;
    }
  }

  return 0;
}

uint64_t sub_1921AF240(uint64_t a1)
{
  v5 = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 16);
  sub_192228520();
  if (!v2)
  {
    return v5;
  }

  v3 = a1 + 32;
  sub_19202A7A8(0, &qword_1ED74BD10, 0x1E69943F0);
  while ((swift_dynamicCast() & 1) != 0)
  {
    sub_1922284F0();
    sub_192228530();
    sub_192228540();
    sub_192228500();
    v3 += 8;
    if (!--v2)
    {
      return v5;
    }
  }

  return 0;
}

id sub_1921AF35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37[1] = a4;
  v37[2] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1988, &unk_1922404E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = type metadata accessor for ViewSource(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0900, &unk_192235BA0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v37 - v14;
  v16 = sub_1922253B0();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v38 = v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_192036754(a1, v12, type metadata accessor for ViewSource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v17 + 56))(v15, 1, 1, v16);
      sub_192036A20(v12, type metadata accessor for ViewSource);
      goto LABEL_7;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE28, &qword_19222B6A0);

    (*(v17 + 32))(v15, v12, v16);
    (*(v17 + 56))(v15, 0, 1, v16);
    goto LABEL_7;
  }

  sub_192036A20(v12, type metadata accessor for ViewSource);
  (*(v17 + 56))(v15, 1, 1, v16);
LABEL_7:
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_192033970(v15, &qword_1EADF0900, &unk_192235BA0);
    result = sub_192228620();
    __break(1u);
  }

  else
  {
    (*(v17 + 32))(v38, v15, v16);
    sub_1921B0094(&qword_1EADEE4F8, MEMORY[0x1E6959BC8], MEMORY[0x1E6959BE8]);
    v20 = sub_1922286E0();
    v21 = sub_192225080();
    v23 = v22;

    sub_192228100();
    sub_192225500();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1998, &unk_19223E680);
    (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
    v25 = sub_1922280F0();
    v26 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v27 = sub_192225050();
    v28 = [v26 initWithExtensionIdentity:v25 activityAttributesType:v27];

    v29 = type metadata accessor for WidgetDescriptor(0);
    v30 = *(a1 + v29[5] + 8);
    v31 = v28;
    if (v30)
    {
      v30 = sub_192227930();
    }

    [v28 setDisplayName_];

    if (*(a1 + v29[6] + 8))
    {
      v32 = sub_192227930();
    }

    else
    {
      v32 = 0;
    }

    [v28 setWidgetDescription_];

    if (*(a1 + v29[14] + 8))
    {
      v33 = sub_192227930();
    }

    else
    {
      v33 = 0;
    }

    [v28 setEventMachServiceName_];

    v34 = sub_192225050();
    [v28 setLocaleToken_];

    v35 = sub_192227930();
    [v28 setSdkVersion_];

    [v28 setPreferredBackgroundStyle_];
    [v28 setSupportsVibrantContent_];

    sub_192039140(v21, v23);
    (*(v17 + 8))(v38, v16);
    sub_192036A20(a1, type metadata accessor for WidgetDescriptor);
    return v28;
  }

  return result;
}

uint64_t sub_1921AF9F8(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v2 + 96);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v12 - v6;
  v8 = qword_1ED749988;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670);
  v10 = *(*(v9 - 8) + 56);
  v10(&v2[v8], 1, 1, v9);
  v10(&v2[qword_1ED749520], 1, 1, v9);
  v10(&v2[qword_1ED748A90], 1, 1, v9);
  sub_1922259D0();
  (*(v5 + 16))(v7, a1, v4);
  *(v2 + 4) = sub_1922259C0();
  return sub_1921E7298();
}

uint64_t sub_1921AFBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ResolvedWidgetHost(0, *(v4 + 96), *(v4 + 104), a4);
  swift_allocObject();
  return sub_1921AF9F8(a1);
}

uint64_t sub_1921AFC20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_192225D90();
  v3[6] = 0;
  v3[7] = 0;
  v3[5] = 0;
  (*(v6 + 16))(v8, a1, a2);
  v3[4] = sub_192225D80();
  return sub_1921E7298();
}

uint64_t sub_1921AFD24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ResolvedWidgetBundleHost();
  swift_allocObject();
  return sub_1921AFC20(a1, a2, a3);
}

void sub_1921AFD7C(uint64_t a1)
{
  sub_1921AFE20(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_1921AFE20(uint64_t a1)
{
  if (!qword_1ED749980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEEE20, &qword_19222B670);
    v1 = sub_192228240();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED749980);
    }
  }
}

double sub_1921AFE84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_1921AFEC8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1921AFF0C()
{
  result = qword_1EADF1980;
  if (!qword_1EADF1980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1980);
  }

  return result;
}

unint64_t sub_1921AFF60()
{
  result = qword_1EADEE5F0;
  if (!qword_1EADEE5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE5F0);
  }

  return result;
}

uint64_t sub_1921AFFB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF19C0, &unk_19223E6B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1921B0024(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1921B0094(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL sub_1921B00DC(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_192228AD0();
  MEMORY[0x193B0BA90](v3);
  v4 = sub_192228B30();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_1921B01A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_192228AD0();
  sub_1922279B0();
  v6 = sub_192228B30();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1922289A0() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t ControlTemplate.namedIcon(_:symbolNames:from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v7 = sub_192226B50();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_192226B70();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a1, v11, v13);
  if ((*(v12 + 88))(v15, v11) == *MEMORY[0x1E697CB08])
  {
    (*(v12 + 96))(v15, v11);
    (*(v8 + 32))(v10, v15, v7);
    v16 = sub_192226AF0();
    v18 = sub_1921B01A8(v16, v17, a2);

    if (v18)
    {
      sub_192226AA0();
      return (*(v8 + 8))(v10, v7);
    }

    else
    {
      (*(v8 + 8))(v10, v7);
      return (*(v12 + 56))(a4, 1, 1, v11);
    }
  }

  else
  {
    (*(v12 + 56))(a4, 1, 1, v11);
    return (*(v12 + 8))(v15, v11);
  }
}

uint64_t sub_1921B0544(uint64_t a1)
{
  v2 = sub_192225020();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_192226B30();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v1, v6, v8);
  v11 = (*(v7 + 88))(v10, v6);
  if (v11 == *MEMORY[0x1E697CAF0])
  {
    (*(v7 + 96))(v10, v6);
    (*(v3 + 32))(v5, v10, v2);
    sub_1921B48F8(&qword_1EADF0A38, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_192227890();
    return (*(v3 + 8))(v5, v2);
  }

  else if (v11 == *MEMORY[0x1E697CAF8])
  {
    (*(v7 + 96))(v10, v6);
    return sub_192228AF0();
  }

  else
  {
    v13[0] = 0;
    v13[1] = 0xE000000000000000;
    sub_192228400();
    MEMORY[0x193B0A990](0xD00000000000004BLL, 0x800000019224B9D0);
    sub_1922285A0();
    result = sub_192228620();
    __break(1u);
  }

  return result;
}

uint64_t sub_1921B0830()
{
  sub_192228AD0();
  sub_1921B0544(v1);
  return sub_192228B30();
}

uint64_t sub_1921B0874()
{
  sub_192228AD0();
  sub_1921B0544(v1);
  return sub_192228B30();
}

id sub_1921B08CC(uint64_t a1, char *a2)
{
  v78 = a2;
  v3 = sub_192225020();
  v79 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v77 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v76 = (&v76 - v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v76 - v8;
  v10 = sub_192226B30();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v76 - v15;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v76 - v19;
  v21 = *(v11 + 16);
  v21(&v76 - v19, a1, v10, v18);
  v22 = (*(v11 + 88))(v20, v10);
  if (v22 == *MEMORY[0x1E697CAF0])
  {
    (*(v11 + 96))(v20, v10);
    v23 = v79;
    (*(v79 + 32))(v9, v20, v3);
    v24 = objc_allocWithZone(MEMORY[0x1E696AAE8]);
    v25 = sub_192224FE0();
    v26 = [v24 initWithURL_];

    v27 = v3;
    if (v26)
    {
      v28 = [objc_opt_self() defaultUICatalogForBundle_];
      if (v28)
      {
        v29 = v28;
        (*(v23 + 8))(v9, v27);

        return v29;
      }

      if (qword_1EADEE4E8 != -1)
      {
        swift_once();
      }

      v63 = sub_1922258B0();
      __swift_project_value_buffer(v63, qword_1EAE00810);
      v64 = v76;
      (*(v23 + 16))(v76, v9, v27);
      v65 = sub_192225890();
      v66 = sub_192227F90();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v78 = v9;
        v68 = v67;
        v69 = swift_slowAlloc();
        v80 = v69;
        *v68 = 136446210;
        v70 = sub_192225000();
        v72 = v71;
        v73 = *(v23 + 8);
        v73(v64, v27);
        v74 = sub_19202B8CC(v70, v72, &v80);

        *(v68 + 4) = v74;
        _os_log_impl(&dword_192028000, v65, v66, "Failed to load default CUICatalog for %{public}s", v68, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v69);
        MEMORY[0x193B0C7F0](v69, -1, -1);
        MEMORY[0x193B0C7F0](v68, -1, -1);

        v73(v78, v27);
      }

      else
      {

        v75 = *(v23 + 8);
        v75(v64, v27);
        v75(v9, v27);
      }
    }

    else
    {
      if (qword_1EADEE4E8 != -1)
      {
        swift_once();
      }

      v49 = sub_1922258B0();
      __swift_project_value_buffer(v49, qword_1EAE00810);
      v50 = v77;
      (*(v23 + 16))(v77, v9, v3);
      v51 = sub_192225890();
      v52 = sub_192227F90();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v80 = v54;
        *v53 = 136446210;
        v55 = sub_192225000();
        v56 = v50;
        v57 = v9;
        v59 = v58;
        v60 = *(v23 + 8);
        v60(v56, v27);
        v61 = sub_19202B8CC(v55, v59, &v80);

        *(v53 + 4) = v61;
        _os_log_impl(&dword_192028000, v51, v52, "Failed to construct bundle for %{public}s", v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v54);
        MEMORY[0x193B0C7F0](v54, -1, -1);
        MEMORY[0x193B0C7F0](v53, -1, -1);

        v62 = v57;
      }

      else
      {

        v60 = *(v23 + 8);
        v60(v50, v27);
        v62 = v9;
      }

      v60(v62, v27);
    }
  }

  else
  {
    if (v22 == *MEMORY[0x1E697CAF8])
    {
      v31 = [objc_opt_self() public];
      objc_allocWithZone(MEMORY[0x1E6999368]);
      v32 = v31;
      v33 = sub_1921B5170(0x737465737341, 0xE600000000000000, v31);

      return v33;
    }

    if (qword_1EADEE4E8 != -1)
    {
      swift_once();
    }

    v34 = sub_1922258B0();
    __swift_project_value_buffer(v34, qword_1EAE00810);
    (v21)(v16, a1, v10);

    v35 = sub_192225890();
    v36 = sub_192227F90();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      LODWORD(v77) = v36;
      v38 = v37;
      v79 = swift_slowAlloc();
      v80 = v79;
      *v38 = 136446466;
      (v21)(v13, v16, v10);
      v39 = sub_192227990();
      v41 = v40;
      v42 = *(v11 + 8);
      v76 = v35;
      v42(v16, v10);
      v43 = sub_19202B8CC(v39, v41, &v80);

      *(v38 + 4) = v43;
      *(v38 + 12) = 2082;
      v44 = sub_192227D60();
      v46 = sub_19202B8CC(v44, v45, &v80);

      *(v38 + 14) = v46;
      v47 = v76;
      _os_log_impl(&dword_192028000, v76, v77, "Got unexpected location type %{public}s for %{public}s", v38, 0x16u);
      v48 = v79;
      swift_arrayDestroy();
      MEMORY[0x193B0C7F0](v48, -1, -1);
      MEMORY[0x193B0C7F0](v38, -1, -1);
    }

    else
    {

      v42 = *(v11 + 8);
      v42(v16, v10);
    }

    v42(v20, v10);
  }

  return 0;
}

uint64_t ControlTemplateType.init<A>(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ControlTemplatePicker(0);
  MEMORY[0x1EEE9AC00](v6);
  v23 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ControlTemplateButton(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ControlTemplateToggle(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v18, a1, a2, v16);
  if (swift_dynamicCast())
  {
    v19 = *(v14 + 8);
    v19(a1, a2);
    sub_1921B4890(v13, a3, type metadata accessor for ControlTemplateToggle);
LABEL_7:
    type metadata accessor for ControlTemplateType(0);
    swift_storeEnumTagMultiPayload();
    return (v19)(v18, a2);
  }

  if (swift_dynamicCast())
  {
    v19 = *(v14 + 8);
    v19(a1, a2);
    sub_1921B4890(v10, a3, type metadata accessor for ControlTemplateButton);
    goto LABEL_7;
  }

  v20 = v23;
  if (swift_dynamicCast())
  {
    v19 = *(v14 + 8);
    v19(a1, a2);
    sub_1921B4890(v20, a3, type metadata accessor for ControlTemplatePicker);
    goto LABEL_7;
  }

  result = sub_192228620();
  __break(1u);
  return result;
}

uint64_t ControlTemplateType.anyTemplate.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ControlTemplateType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1921B4A08(v2, v6, type metadata accessor for ControlTemplateType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      a1[3] = type metadata accessor for ControlTemplateButton(0);
      v8 = sub_1921B48F8(&qword_1EADEE598, type metadata accessor for ControlTemplateButton, &protocol conformance descriptor for ControlTemplateButton);
      v9 = type metadata accessor for ControlTemplateButton;
    }

    else
    {
      a1[3] = type metadata accessor for ControlTemplatePicker(0);
      v8 = sub_1921B48F8(&qword_1EADF03A8, type metadata accessor for ControlTemplatePicker, &protocol conformance descriptor for ControlTemplatePicker);
      v9 = type metadata accessor for ControlTemplatePicker;
    }
  }

  else
  {
    a1[3] = type metadata accessor for ControlTemplateToggle(0);
    v8 = sub_1921B48F8(&qword_1EADED030, type metadata accessor for ControlTemplateToggle, &protocol conformance descriptor for ControlTemplateToggle);
    v9 = type metadata accessor for ControlTemplateToggle;
  }

  v10 = v9;
  a1[4] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_1921B4890(v6, boxed_opaque_existential_1, v10);
}

uint64_t ControlTemplateType.asPlaceholderTemplate()@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ControlTemplatePicker(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ControlTemplateToggle(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ControlTemplateButton(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ControlTemplateType(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1921B4A08(v2, v15, type metadata accessor for ControlTemplateType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1921B4890(v15, v12, type metadata accessor for ControlTemplateButton);
      a1[3] = v10;
      a1[4] = sub_1921B48F8(&qword_1EADEE598, type metadata accessor for ControlTemplateButton, &protocol conformance descriptor for ControlTemplateButton);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      ControlTemplateButton.asPlaceholder()(boxed_opaque_existential_1);
      v18 = type metadata accessor for ControlTemplateButton;
      v19 = v12;
    }

    else
    {
      sub_1921B4890(v15, v6, type metadata accessor for ControlTemplatePicker);
      a1[3] = v4;
      a1[4] = sub_1921B48F8(&qword_1EADF03A8, type metadata accessor for ControlTemplatePicker, &protocol conformance descriptor for ControlTemplatePicker);
      v21 = __swift_allocate_boxed_opaque_existential_1(a1);
      ControlTemplatePicker.asPlaceholder()(v21);
      v18 = type metadata accessor for ControlTemplatePicker;
      v19 = v6;
    }
  }

  else
  {
    sub_1921B4890(v15, v9, type metadata accessor for ControlTemplateToggle);
    a1[3] = v7;
    a1[4] = sub_1921B48F8(&qword_1EADED030, type metadata accessor for ControlTemplateToggle, &protocol conformance descriptor for ControlTemplateToggle);
    v20 = __swift_allocate_boxed_opaque_existential_1(a1);
    ControlTemplateToggle.asPlaceholder()(v20);
    v18 = type metadata accessor for ControlTemplateToggle;
    v19 = v9;
  }

  return sub_1921B4940(v19, v18);
}

uint64_t ControlTemplateType.asTemplateTypeWithTargetedVectorGlyphAssetLib(symbolNames:bundle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v177 = a2;
  v178 = a1;
  v180 = a3;
  v5 = type metadata accessor for ControlTemplatePicker(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v150 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ControlTemplateToggle(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v150 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v174 = &v150 - v12;
  v13 = sub_192226B50();
  v170 = *(v13 - 8);
  v171 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v173 = &v150 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v164 = &v150 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v168 = &v150 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v172 = (&v150 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v175 = &v150 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v166 = &v150 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v150 - v26;
  v28 = sub_192226B70();
  v176 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v167 = &v150 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v165 = &v150 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v169 = &v150 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v150 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v163 = &v150 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v150 - v40;
  v42 = type metadata accessor for ControlTemplateButton(0);
  MEMORY[0x1EEE9AC00](v42);
  v44 = (&v150 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = type metadata accessor for ControlTemplateType(0);
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v150 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v4;
  v50 = v49;
  sub_1921B4A08(v48, v47, type metadata accessor for ControlTemplateType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v179 = EnumCaseMultiPayload;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v160 = v50;
      sub_1921B4890(v47, v44, type metadata accessor for ControlTemplateButton);
      v52 = type metadata accessor for ControlTemplateButton.Option(0);
      sub_19202CFFC(v44 + v52[6], v27, &qword_1EADEF720, &unk_19222E2F0);
      v53 = v176;
      v161 = *(v176 + 48);
      v162 = v176 + 48;
      if (v161(v27, 1, v28) == 1)
      {
        v54 = v27;
      }

      else
      {
        v158 = *(v53 + 32);
        (v158)(v41, v27, v28);
        (*(v53 + 16))(v36, v41, v28);
        v57 = (*(v53 + 88))(v36, v28);
        v58 = v171;
        if (v57 == *MEMORY[0x1E697CB08])
        {
          v159 = v52;
          (*(v53 + 96))(v36, v28);
          v59 = v164;
          (*(v170 + 32))(v164, v36, v58);
          v60 = sub_192226AF0();
          v62 = sub_1921B01A8(v60, v61, v178);

          if (v62)
          {
            v63 = v166;
            sub_192226AA0();
            (*(v170 + 8))(v59, v58);
            v64 = v41;
            v65 = v63;
            (*(v53 + 8))(v64, v28);
          }

          else
          {
            (*(v170 + 8))(v59, v58);
            (*(v53 + 8))(v41, v28);
            v65 = v166;
            (*(v53 + 56))(v166, 1, 1, v28);
          }

          v52 = v159;
        }

        else
        {
          v66 = *(v53 + 8);
          v66(v41, v28);
          v65 = v166;
          (*(v53 + 56))(v166, 1, 1, v28);
          v66(v36, v28);
        }

        if (v161(v65, 1, v28) != 1)
        {
          v68 = v163;
          v69 = v65;
          v70 = v158;
          (v158)(v163, v69, v28);
          v71 = v44[1];
          v166 = *v44;
          v157 = v71;
          v72 = v44[3];
          v164 = v44[2];
          v159 = v72;
          v73 = v175;
          (v70)(v175, v68, v28);
          v74 = *(v53 + 56);
          v74(v73, 0, 1, v28);
          v75 = v52[7];
          v153 = v52[6];
          v76 = (v44 + v75);
          v77 = v76[1];
          v163 = *v76;
          v158 = v77;
          v156 = *(v76 + 16);
          v78 = v52[9];
          v79 = (v44 + v52[8]);
          v81 = *v79;
          v80 = v79[1];
          v155 = v81;
          v151 = v80;
          v82 = *(v44 + v78 + 8);
          v154 = *(v44 + v78);
          v67 = v180;
          v74(&v180[v153], 1, 1, v28);
          v83 = &v67[v52[7]];
          v84 = &v67[v52[8]];
          v152 = &v67[v52[9]];
          v85 = v157;
          *v67 = v166;
          *(v67 + 1) = v85;
          v86 = v159;
          *(v67 + 2) = v164;
          *(v67 + 3) = v86;

          v87 = v151;

          sub_19204193C(v175, &v67[v153], &qword_1EADEF720, &unk_19222E2F0);
          v88 = v158;
          *v83 = v163;
          *(v83 + 1) = v88;
          v83[16] = v156;
          *v84 = v155;
          *(v84 + 1) = v87;
          v89 = v152;
          *v152 = v154;
          *(v89 + 1) = v82;
LABEL_18:
          v91 = v172;
          v90 = v173;
          v92 = v42[5];
          v93 = (v44 + v92);
          v94 = &v67[v92];
          sub_19202CFFC(v44 + v92 + v52[6], v172, &qword_1EADEF720, &unk_19222E2F0);
          if (v161(v91, 1, v28) == 1)
          {
            sub_1921B49A0(v91);
            v95 = v93;
            v96 = v94;
          }

          else
          {
            v173 = v94;
            v159 = v52;
            v97 = v176;
            v98 = v169;
            v172 = *(v176 + 32);
            (v172)(v169, v91, v28);
            v99 = v167;
            (*(v97 + 16))(v167, v98, v28);
            if ((*(v97 + 88))(v99, v28) == *MEMORY[0x1E697CB08])
            {
              (*(v97 + 96))(v99, v28);
              v100 = v99;
              v101 = v170;
              (*(v170 + 32))(v90, v100, v171);
              v102 = v90;
              v103 = sub_192226AF0();
              v105 = sub_1921B01A8(v103, v104, v178);

              if (v105)
              {
                v106 = v168;
                v107 = v169;
                sub_192226AA0();
                (*(v101 + 8))(v102, v171);
                (*(v97 + 8))(v107, v28);
              }

              else
              {
                (*(v101 + 8))(v90, v171);
                (*(v97 + 8))(v169, v28);
                v106 = v168;
                (*(v97 + 56))(v168, 1, 1, v28);
              }
            }

            else
            {
              v108 = *(v97 + 8);
              v108(v98, v28);
              v109 = v99;
              v110 = v168;
              (*(v97 + 56))(v168, 1, 1, v28);
              v108(v109, v28);
              v106 = v110;
            }

            if (v161(v106, 1, v28) != 1)
            {
              v111 = v165;
              v112 = v106;
              v113 = v172;
              (v172)(v165, v112, v28);
              v114 = *v93;
              v171 = v93[1];
              v115 = v93[3];
              v177 = v93[2];
              v178 = v114;
              v116 = v175;
              v113(v175, v111, v28);
              v117 = *(v97 + 56);
              v117(v116, 0, 1, v28);
              v118 = v159;
              v119 = v159[6];
              v120 = v93 + v159[7];
              v121 = *(v120 + 1);
              v176 = *v120;
              v172 = v121;
              LODWORD(v170) = v120[16];
              v122 = v159[9];
              v123 = (v93 + v159[8]);
              v124 = *v123;
              v167 = v123[1];
              v125 = v93 + v122;
              v126 = *(v93 + v122);
              v127 = *(v125 + 1);
              v168 = v126;
              v169 = v124;
              v128 = v173;
              v117(&v173[v119], 1, 1, v28);
              v129 = v128 + v118[7];
              v130 = (v128 + v118[8]);
              v131 = (v128 + v118[9]);
              v132 = v177;
              v133 = v171;
              *v128 = v178;
              v128[1] = v133;
              v128[2] = v132;
              v128[3] = v115;

              v134 = v167;

              sub_19204193C(v175, v128 + v119, &qword_1EADEF720, &unk_19222E2F0);
              v135 = v172;
              *v129 = v176;
              *(v129 + 1) = v135;
              v129[16] = v170;
              v136 = v168;
              *v130 = v169;
              v130[1] = v134;
              *v131 = v136;
              v131[1] = v127;
              goto LABEL_29;
            }

            sub_1921B49A0(v106);
            v95 = v93;
            v96 = v173;
          }

          sub_1921B4A08(v95, v96, type metadata accessor for ControlTemplateButton.Option);
LABEL_29:
          v137 = *(v44 + v42[6]);
          v138 = v174;
          sub_19202CFFC(v44 + v42[7], v174, &qword_1EADEEE10, &unk_19222B630);
          v139 = *(v44 + v42[8]);
          LODWORD(v178) = *(v44 + v42[9]);
          v140 = (v44 + v42[10]);
          v142 = *v140;
          v141 = v140[1];
          v143 = *(v44 + v42[11]);

          v144 = v137;
          sub_1921B4940(v44, type metadata accessor for ControlTemplateButton);
          v145 = v42[7];
          v146 = sub_192225020();
          v147 = v180;
          (*(*(v146 - 8) + 56))(&v180[v145], 1, 1, v146);
          v148 = &v147[v42[10]];
          *&v147[v42[6]] = v137;
          sub_19204193C(v138, &v147[v145], &qword_1EADEEE10, &unk_19222B630);
          v147[v42[8]] = v139;
          v147[v42[9]] = v178;
          *v148 = v142;
          *(v148 + 1) = v141;
          v147[v42[11]] = v143;
          return swift_storeEnumTagMultiPayload();
        }

        v54 = v65;
      }

      sub_1921B49A0(v54);
      v67 = v180;
      sub_1921B4A08(v44, v180, type metadata accessor for ControlTemplateButton.Option);
      goto LABEL_18;
    }

    sub_1921B4890(v47, v7, type metadata accessor for ControlTemplatePicker);
    ControlTemplatePicker.asTemplateWithTargetedVectorGlyphAssetLib(symbolNames:bundle:)(v178, v177, v180);
    v55 = type metadata accessor for ControlTemplatePicker;
    v56 = v7;
  }

  else
  {
    sub_1921B4890(v47, v10, type metadata accessor for ControlTemplateToggle);
    ControlTemplateToggle.asTemplateWithTargetedVectorGlyphAssetLib(symbolNames:bundle:)(v178, v177, v180);
    v55 = type metadata accessor for ControlTemplateToggle;
    v56 = v10;
  }

  sub_1921B4940(v56, v55);
  return swift_storeEnumTagMultiPayload();
}

uint64_t ControlTemplateType.button.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ControlTemplateType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1921B4A08(v2, v6, type metadata accessor for ControlTemplateType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1921B4890(v6, a1, type metadata accessor for ControlTemplateButton);
    v7 = 0;
  }

  else
  {
    sub_1921B4940(v6, type metadata accessor for ControlTemplateType);
    v7 = 1;
  }

  v8 = type metadata accessor for ControlTemplateButton(0);
  return (*(*(v8 - 8) + 56))(a1, v7, 1, v8);
}

uint64_t ControlTemplateType.toggle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ControlTemplateType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1921B4A08(v2, v6, type metadata accessor for ControlTemplateType);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1921B4940(v6, type metadata accessor for ControlTemplateType);
    v7 = 1;
  }

  else
  {
    sub_1921B4890(v6, a1, type metadata accessor for ControlTemplateToggle);
    v7 = 0;
  }

  v8 = type metadata accessor for ControlTemplateToggle(0);
  return (*(*(v8 - 8) + 56))(a1, v7, 1, v8);
}

uint64_t ControlTemplateType.picker.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ControlTemplateType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1921B4A08(v2, v6, type metadata accessor for ControlTemplateType);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1921B4890(v6, a1, type metadata accessor for ControlTemplatePicker);
    v7 = 0;
  }

  else
  {
    sub_1921B4940(v6, type metadata accessor for ControlTemplateType);
    v7 = 1;
  }

  v8 = type metadata accessor for ControlTemplatePicker(0);
  return (*(*(v8 - 8) + 56))(a1, v7, 1, v8);
}

unint64_t ControlTemplateType.vectorGlyphAssetLibraryDatas.getter(__n128 a1)
{
  v2 = v1;
  v3 = type metadata accessor for ControlTemplateToggle(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ControlTemplateButton(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ControlTemplateType(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1921B4A08(v2, v11, type metadata accessor for ControlTemplateType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1921B4890(v11, v8, type metadata accessor for ControlTemplateButton);
      v13 = ControlTemplateButton.vectorGlyphAssetLibraryDatas.getter();
      sub_1921B4940(v8, type metadata accessor for ControlTemplateButton);
      return v13;
    }

    else
    {
      sub_1921B4940(v11, type metadata accessor for ControlTemplateType);
      return sub_192140634(MEMORY[0x1E69E7CC0]);
    }
  }

  else
  {
    sub_1921B4890(v11, v5, type metadata accessor for ControlTemplateToggle);
    v15 = ControlTemplateToggle.vectorGlyphAssetLibraryDatas.getter();
    sub_1921B4940(v5, type metadata accessor for ControlTemplateToggle);
    return v15;
  }
}

uint64_t sub_1921B2EF4(uint64_t a1)
{
  v2 = sub_1921B4B18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1921B2F30(uint64_t a1)
{
  v2 = sub_1921B4B18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1921B2F84@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1921B524C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1921B2FAC(uint64_t a1)
{
  v2 = sub_1921B4A70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1921B2FE8(uint64_t a1)
{
  v2 = sub_1921B4A70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1921B3024(uint64_t a1)
{
  v2 = sub_1921B4AC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1921B3060(uint64_t a1)
{
  v2 = sub_1921B4AC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1921B309C(uint64_t a1)
{
  v2 = sub_1921B4B6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1921B30D8(uint64_t a1)
{
  v2 = sub_1921B4B6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ControlTemplateType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF19E8, &qword_19223E850);
  v42 = *(v2 - 8);
  v43 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v41 = &v31 - v3;
  v39 = type metadata accessor for ControlTemplatePicker(0);
  MEMORY[0x1EEE9AC00](v39);
  v40 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF19F0, &qword_19223E858);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v31 - v6;
  v34 = type metadata accessor for ControlTemplateButton(0);
  MEMORY[0x1EEE9AC00](v34);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF19F8, &qword_19223E860);
  v32 = *(v8 - 8);
  v33 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - v9;
  v31 = type metadata accessor for ControlTemplateToggle(0);
  MEMORY[0x1EEE9AC00](v31);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ControlTemplateType(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1A00, &qword_19223E868);
  v16 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v18 = &v31 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1921B4A70();
  sub_192228B90();
  sub_1921B4A08(v44, v15, type metadata accessor for ControlTemplateType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v20 = (v16 + 8);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v21 = v35;
      sub_1921B4890(v15, v35, type metadata accessor for ControlTemplateButton);
      v47 = 1;
      sub_1921B4B18();
      v22 = v36;
      v23 = v45;
      sub_192228820();
      sub_1921B48F8(&qword_1EADEE5B0, type metadata accessor for ControlTemplateButton, &protocol conformance descriptor for ControlTemplateButton);
      v24 = v38;
      sub_1922288C0();
      (*(v37 + 8))(v22, v24);
      v25 = type metadata accessor for ControlTemplateButton;
    }

    else
    {
      v21 = v40;
      sub_1921B4890(v15, v40, type metadata accessor for ControlTemplatePicker);
      v48 = 2;
      sub_1921B4AC4();
      v29 = v41;
      v23 = v45;
      sub_192228820();
      sub_1921B48F8(&qword_1EADEF790, type metadata accessor for ControlTemplatePicker, &protocol conformance descriptor for ControlTemplatePicker);
      v30 = v43;
      sub_1922288C0();
      (*(v42 + 8))(v29, v30);
      v25 = type metadata accessor for ControlTemplatePicker;
    }

    sub_1921B4940(v21, v25);
    return (*v20)(v18, v23);
  }

  else
  {
    sub_1921B4890(v15, v12, type metadata accessor for ControlTemplateToggle);
    v46 = 0;
    sub_1921B4B6C();
    v26 = v45;
    sub_192228820();
    sub_1921B48F8(&qword_1EADED040, type metadata accessor for ControlTemplateToggle, &protocol conformance descriptor for ControlTemplateToggle);
    v27 = v33;
    sub_1922288C0();
    (*(v32 + 8))(v10, v27);
    sub_1921B4940(v12, type metadata accessor for ControlTemplateToggle);
    return (*v20)(v18, v26);
  }
}

uint64_t ControlTemplateType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1A10, &qword_19223E870);
  v4 = *(v3 - 8);
  v63 = v3;
  v64 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v67 = &v54 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1A18, &qword_19223E878);
  v7 = *(v6 - 8);
  v61 = v6;
  v62 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v66 = &v54 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1A20, &qword_19223E880);
  v59 = *(v9 - 8);
  v60 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v65 = &v54 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1A28, &unk_19223E888);
  v69 = *(v11 - 8);
  v70 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v54 - v12;
  v14 = type metadata accessor for ControlTemplateType(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v54 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v54 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v54 - v24;
  v26 = a1[3];
  v72 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_1921B4A70();
  v27 = v71;
  sub_192228B70();
  if (!v27)
  {
    v55 = v19;
    v56 = v22;
    v57 = v16;
    v29 = v65;
    v28 = v66;
    v71 = 0;
    v58 = v14;
    v31 = v67;
    v30 = v68;
    v32 = v70;
    v33 = sub_1922287F0();
    v34 = (2 * *(v33 + 16)) | 1;
    v73 = v33;
    v74 = v33 + 32;
    v75 = 0;
    v76 = v34;
    v35 = sub_19212C244();
    if (v35 == 3 || v75 != v76 >> 1)
    {
      v39 = sub_1922284A0();
      swift_allocError();
      v41 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0450, &unk_19222F5A0);
      *v41 = v58;
      sub_192228720();
      sub_192228480();
      (*(*(v39 - 8) + 104))(v41, *MEMORY[0x1E69E6AF8], v39);
      swift_willThrow();
    }

    else
    {
      if (v35)
      {
        if (v35 == 1)
        {
          v77 = 1;
          sub_1921B4B18();
          v36 = v71;
          sub_192228710();
          v37 = v30;
          v38 = v69;
          if (v36)
          {
            goto LABEL_9;
          }

          v71 = v25;
          type metadata accessor for ControlTemplateButton(0);
          sub_1921B48F8(&qword_1EADEE5A0, type metadata accessor for ControlTemplateButton, &protocol conformance descriptor for ControlTemplateButton);
          v51 = v55;
          v52 = v61;
          sub_1922287C0();
          (*(v62 + 8))(v28, v52);
          (*(v38 + 8))(v13, v70);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v44 = v51;
        }

        else
        {
          v77 = 2;
          sub_1921B4AC4();
          v46 = v31;
          v47 = v71;
          sub_192228710();
          v48 = v69;
          if (v47)
          {
            goto LABEL_9;
          }

          v37 = v30;
          v71 = v25;
          type metadata accessor for ControlTemplatePicker(0);
          sub_1921B48F8(&qword_1EADEF788, type metadata accessor for ControlTemplatePicker, &protocol conformance descriptor for ControlTemplatePicker);
          v49 = v57;
          v50 = v63;
          sub_1922287C0();
          (*(v64 + 8))(v46, v50);
          (*(v48 + 8))(v13, v32);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v44 = v49;
        }

LABEL_17:
        v53 = v71;
        sub_1921B4890(v44, v71, type metadata accessor for ControlTemplateType);
        sub_1921B4890(v53, v37, type metadata accessor for ControlTemplateType);
        return __swift_destroy_boxed_opaque_existential_1(v72);
      }

      v77 = 0;
      sub_1921B4B6C();
      v43 = v71;
      sub_192228710();
      if (!v43)
      {
        v71 = v25;
        type metadata accessor for ControlTemplateToggle(0);
        sub_1921B48F8(&qword_1EADED848, type metadata accessor for ControlTemplateToggle, &protocol conformance descriptor for ControlTemplateToggle);
        v44 = v56;
        v45 = v60;
        sub_1922287C0();
        (*(v59 + 8))(v29, v45);
        (*(v69 + 8))(v13, v32);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v37 = v30;
        goto LABEL_17;
      }
    }

LABEL_9:
    (*(v69 + 8))(v13, v32);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v72);
}

uint64_t ControlTemplateType.action(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for ControlTemplateButton(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ControlTemplateToggle.Option(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ControlTemplateToggle(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ControlTemplateType(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1921B4A08(v3, v17, type metadata accessor for ControlTemplateType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1921B4890(v17, v14, type metadata accessor for ControlTemplateToggle);
    if (a1 == 1)
    {
      v23 = *(v12 + 24);
    }

    else
    {
      v23 = *(v12 + 28);
    }

    sub_1921B4A08(&v14[v23], v11, type metadata accessor for ControlTemplateToggle.Option);
    sub_1921B4940(v14, type metadata accessor for ControlTemplateToggle);
    v19 = *(v11 + 2);
    v25 = v19;
    v21 = type metadata accessor for ControlTemplateToggle.Option;
    v22 = v11;
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1921B4890(v17, v8, type metadata accessor for ControlTemplateButton);
    v19 = *&v8[*(v6 + 24)];
    v20 = v19;
    v21 = type metadata accessor for ControlTemplateButton;
    v22 = v8;
LABEL_9:
    result = sub_1921B4940(v22, v21);
    goto LABEL_10;
  }

  result = sub_1921B4940(v17, type metadata accessor for ControlTemplateType);
  v19 = 0;
LABEL_10:
  *a2 = v19;
  return result;
}

uint64_t ControlTemplateType.validateIcon(_:)(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for ControlTemplatePicker(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ControlTemplateButton(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ControlTemplateToggle(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ControlTemplateType(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1921B4A08(v3, v17, type metadata accessor for ControlTemplateType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1921B4890(v17, v11, type metadata accessor for ControlTemplateButton);
      ControlTemplateButton.validateIcon(_:)(a1, a2);
      v19 = type metadata accessor for ControlTemplateButton;
      v20 = v11;
    }

    else
    {
      sub_1921B4890(v17, v8, type metadata accessor for ControlTemplatePicker);
      ControlTemplatePicker.validateIcon(_:)(a1);
      v19 = type metadata accessor for ControlTemplatePicker;
      v20 = v8;
    }
  }

  else
  {
    sub_1921B4890(v17, v14, type metadata accessor for ControlTemplateToggle);
    ControlTemplateToggle.validateIcon(_:)(a1, a2);
    v19 = type metadata accessor for ControlTemplateToggle;
    v20 = v14;
  }

  return sub_1921B4940(v20, v19);
}

uint64_t ControlTemplateType.debugDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ControlTemplatePicker(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ControlTemplateButton(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ControlTemplateToggle(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ControlTemplateType(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1921B4A08(v1, v13, type metadata accessor for ControlTemplateType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1921B4890(v13, v7, type metadata accessor for ControlTemplateButton);
      v15 = ControlTemplateButton.debugDescription.getter();
      v16 = type metadata accessor for ControlTemplateButton;
      v17 = v7;
    }

    else
    {
      sub_1921B4890(v13, v4, type metadata accessor for ControlTemplatePicker);
      v15 = ControlTemplatePicker.debugDescription.getter();
      v16 = type metadata accessor for ControlTemplatePicker;
      v17 = v4;
    }
  }

  else
  {
    sub_1921B4890(v13, v10, type metadata accessor for ControlTemplateToggle);
    v15 = ControlTemplateToggle.debugDescription.getter();
    v16 = type metadata accessor for ControlTemplateToggle;
    v17 = v10;
  }

  sub_1921B4940(v17, v16);
  return v15;
}

uint64_t sub_1921B4890(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1921B48F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1921B4940(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1921B49A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1921B4A08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1921B4A70()
{
  result = qword_1EADEE6D0;
  if (!qword_1EADEE6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE6D0);
  }

  return result;
}

unint64_t sub_1921B4AC4()
{
  result = qword_1EADF1A08;
  if (!qword_1EADF1A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1A08);
  }

  return result;
}

unint64_t sub_1921B4B18()
{
  result = qword_1EADEE5E8;
  if (!qword_1EADEE5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE5E8);
  }

  return result;
}

unint64_t sub_1921B4B6C()
{
  result = qword_1EADED8E0[0];
  if (!qword_1EADED8E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EADED8E0);
  }

  return result;
}

uint64_t sub_1921B4C88(uint64_t a1, __n128 a2)
{
  result = type metadata accessor for ControlTemplateToggle(319);
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for ControlTemplateButton(319);
    if (v4 <= 0x3F)
    {
      result = type metadata accessor for ControlTemplatePicker(319);
      if (v5 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1921B4D54()
{
  result = qword_1EADF1A30;
  if (!qword_1EADF1A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1A30);
  }

  return result;
}

unint64_t sub_1921B4DAC()
{
  result = qword_1EADF1A38;
  if (!qword_1EADF1A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1A38);
  }

  return result;
}

unint64_t sub_1921B4E04()
{
  result = qword_1EADF1A40;
  if (!qword_1EADF1A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1A40);
  }

  return result;
}

unint64_t sub_1921B4E5C()
{
  result = qword_1EADF1A48;
  if (!qword_1EADF1A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1A48);
  }

  return result;
}

unint64_t sub_1921B4EB4()
{
  result = qword_1EADEE690;
  if (!qword_1EADEE690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE690);
  }

  return result;
}

unint64_t sub_1921B4F0C()
{
  result = qword_1EADEE698;
  if (!qword_1EADEE698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE698);
  }

  return result;
}

unint64_t sub_1921B4F64()
{
  result = qword_1EADEE6B0;
  if (!qword_1EADEE6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE6B0);
  }

  return result;
}

unint64_t sub_1921B4FBC()
{
  result = qword_1EADEE6B8;
  if (!qword_1EADEE6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE6B8);
  }

  return result;
}

unint64_t sub_1921B5014()
{
  result = qword_1EADEE6A0;
  if (!qword_1EADEE6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE6A0);
  }

  return result;
}

unint64_t sub_1921B506C()
{
  result = qword_1EADEE6A8;
  if (!qword_1EADEE6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE6A8);
  }

  return result;
}

unint64_t sub_1921B50C4()
{
  result = qword_1EADEE6C0;
  if (!qword_1EADEE6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE6C0);
  }

  return result;
}

unint64_t sub_1921B511C()
{
  result = qword_1EADEE6C8;
  if (!qword_1EADEE6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE6C8);
  }

  return result;
}

id sub_1921B5170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = sub_192227930();

  v10[0] = 0;
  v6 = [v3 initWithName:v5 fromBundle:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_192224F90();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_1921B524C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C67676F74 && a2 == 0xE600000000000000;
  if (v4 || (sub_1922289A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F74747562 && a2 == 0xE600000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72656B636970 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1922289A0();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1921B53A0(uint64_t a1)
{
  result = sub_192226B30();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t CHSWidgetFamily.stableIntegerRepresentation.getter(uint64_t a1)
{
  if ((a1 - 1) > 0xD)
  {
    return 0;
  }

  else
  {
    return qword_19223F150[a1 - 1];
  }
}

uint64_t CHSWidgetFamilyMask.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for CHSWidgetFamilyMask(0);
  sub_192227AD0();
  (*(*(a2 - 8) + 8))(a1, a2);
  return v6;
}

uint64_t sub_1921B557C()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x614C6D6574737973;
    if (v1 != 2)
    {
      v6 = 0xD000000000000010;
    }

    v7 = 0x6D536D6574737973;
    if (*v0)
    {
      v7 = 0x654D6D6574737973;
    }

    if (*v0 <= 1u)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x726F737365636361;
    v3 = 0xD000000000000011;
    v4 = 0xD000000000000014;
    if (v1 != 7)
    {
      v4 = 0x726F737365636361;
    }

    if (v1 != 6)
    {
      v3 = v4;
    }

    if (v1 == 4)
    {
      v2 = 0xD000000000000018;
    }

    if (*v0 <= 5u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

WidgetKit::WidgetFamily_optional __swiftcall WidgetFamily.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 9;
  if (rawValue < 9)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t InternalWidgetFamily.description.getter()
{
  result = 0x726F737365636361;
  switch(*v0)
  {
    case 0:
      result = 0x6D536D6574737973;
      break;
    case 1:
      result = 0x654D6D6574737973;
      break;
    case 2:
      result = 0x614C6D6574737973;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    case 6:
    case 9:
      return result;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
    case 0xA:
      result = 0xD000000000000014;
      break;
    case 0xB:
      result = 0xD00000000000001BLL;
      break;
    case 0xC:
      result = 0x316C6F72746E6F63;
      break;
    default:
      result = sub_192228990();
      __break(1u);
      break;
  }

  return result;
}

WidgetKit::InternalWidgetFamily_optional __swiftcall InternalWidgetFamily.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 13;
  if (rawValue < 0xD)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t InternalWidgetFamily.chsWidgetFamily.getter()
{
  v1 = *v0;
  if (v1 < 0xD)
  {
    return qword_19223F218[v1];
  }

  result = sub_192228990();
  __break(1u);
  return result;
}

unint64_t CHSWidgetFamily.stableStringRepresentation.getter(uint64_t a1)
{
  v1 = a1 - 1;
  result = 0x726F737365636361;
  switch(v1)
  {
    case 0:
      result = 0x6D536D6574737973;
      break;
    case 1:
      result = 0x654D6D6574737973;
      break;
    case 2:
      result = 0x614C6D6574737973;
      break;
    case 3:
      result = 0xD000000000000019;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    case 6:
    case 11:
      return result;
    case 7:
    case 10:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0xD00000000000001BLL;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 13:
      result = 0x316C6F72746E6F63;
      break;
    default:
      result = 0x6E776F6E6B6E75;
      break;
  }

  return result;
}

uint64_t sub_1921B5B04@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  result = CHSWidgetFamilyMaskFromWidgetFamily();
  *a3 = result | v4;
  return result;
}

uint64_t CHSWidgetFamilyMask.family(_:)(unint64_t a1, uint64_t a2)
{
  v3 = CHSWidgetFamilyMask.internalFamilies()(a2);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (*(v3 + 2) <= a1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3[a1 + 32];

  if (v4 < 0xD)
  {
    return qword_19223F218[v4];
  }

LABEL_7:
  result = sub_192228620();
  __break(1u);
  return result;
}

char *CHSWidgetFamilyMask.internalFamilies()(__int16 a1)
{
  if ((a1 & 0x80) == 0)
  {
    v2 = MEMORY[0x1E69E7CC0];
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_192072C74(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_192072C74((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v2[v4 + 32] = 6;
  if ((a1 & 0x100) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_192072C74(0, *(v2 + 2) + 1, 1, v2);
    }

    v6 = *(v2 + 2);
    v5 = *(v2 + 3);
    if (v6 >= v5 >> 1)
    {
      v2 = sub_192072C74((v5 > 1), v6 + 1, 1, v2);
    }

    *(v2 + 2) = v6 + 1;
    v2[v6 + 32] = 10;
  }

LABEL_12:
  if ((a1 & 0x200) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_192072C74(0, *(v2 + 2) + 1, 1, v2);
    }

    v8 = *(v2 + 2);
    v7 = *(v2 + 3);
    if (v8 >= v7 >> 1)
    {
      v2 = sub_192072C74((v7 > 1), v8 + 1, 1, v2);
    }

    *(v2 + 2) = v8 + 1;
    v2[v8 + 32] = 11;
    if ((a1 & 0x4000) == 0)
    {
LABEL_14:
      if ((a1 & 2) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_36;
    }
  }

  else if ((a1 & 0x4000) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_192072C74(0, *(v2 + 2) + 1, 1, v2);
  }

  v10 = *(v2 + 2);
  v9 = *(v2 + 3);
  if (v10 >= v9 >> 1)
  {
    v2 = sub_192072C74((v9 > 1), v10 + 1, 1, v2);
  }

  *(v2 + 2) = v10 + 1;
  v2[v10 + 32] = 12;
  if ((a1 & 2) == 0)
  {
LABEL_15:
    if ((a1 & 4) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

LABEL_36:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_192072C74(0, *(v2 + 2) + 1, 1, v2);
  }

  v12 = *(v2 + 2);
  v11 = *(v2 + 3);
  if (v12 >= v11 >> 1)
  {
    v2 = sub_192072C74((v11 > 1), v12 + 1, 1, v2);
  }

  *(v2 + 2) = v12 + 1;
  v2[v12 + 32] = 0;
  if ((a1 & 4) == 0)
  {
LABEL_16:
    if ((a1 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_46;
  }

LABEL_41:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_192072C74(0, *(v2 + 2) + 1, 1, v2);
  }

  v14 = *(v2 + 2);
  v13 = *(v2 + 3);
  if (v14 >= v13 >> 1)
  {
    v2 = sub_192072C74((v13 > 1), v14 + 1, 1, v2);
  }

  *(v2 + 2) = v14 + 1;
  v2[v14 + 32] = 1;
  if ((a1 & 8) == 0)
  {
LABEL_17:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_51;
  }

LABEL_46:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_192072C74(0, *(v2 + 2) + 1, 1, v2);
  }

  v16 = *(v2 + 2);
  v15 = *(v2 + 3);
  if (v16 >= v15 >> 1)
  {
    v2 = sub_192072C74((v15 > 1), v16 + 1, 1, v2);
  }

  *(v2 + 2) = v16 + 1;
  v2[v16 + 32] = 2;
  if ((a1 & 0x20) == 0)
  {
LABEL_18:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_56;
  }

LABEL_51:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_192072C74(0, *(v2 + 2) + 1, 1, v2);
  }

  v18 = *(v2 + 2);
  v17 = *(v2 + 3);
  if (v18 >= v17 >> 1)
  {
    v2 = sub_192072C74((v17 > 1), v18 + 1, 1, v2);
  }

  *(v2 + 2) = v18 + 1;
  v2[v18 + 32] = 4;
  if ((a1 & 0x40) == 0)
  {
LABEL_19:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_61;
  }

LABEL_56:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_192072C74(0, *(v2 + 2) + 1, 1, v2);
  }

  v20 = *(v2 + 2);
  v19 = *(v2 + 3);
  if (v20 >= v19 >> 1)
  {
    v2 = sub_192072C74((v19 > 1), v20 + 1, 1, v2);
  }

  *(v2 + 2) = v20 + 1;
  v2[v20 + 32] = 5;
  if ((a1 & 0x10) == 0)
  {
LABEL_20:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_66;
  }

LABEL_61:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_192072C74(0, *(v2 + 2) + 1, 1, v2);
  }

  v22 = *(v2 + 2);
  v21 = *(v2 + 3);
  if (v22 >= v21 >> 1)
  {
    v2 = sub_192072C74((v21 > 1), v22 + 1, 1, v2);
  }

  *(v2 + 2) = v22 + 1;
  v2[v22 + 32] = 3;
  if ((a1 & 0x40) == 0)
  {
LABEL_21:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_71;
  }

LABEL_66:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_192072C74(0, *(v2 + 2) + 1, 1, v2);
  }

  v24 = *(v2 + 2);
  v23 = *(v2 + 3);
  if (v24 >= v23 >> 1)
  {
    v2 = sub_192072C74((v23 > 1), v24 + 1, 1, v2);
  }

  *(v2 + 2) = v24 + 1;
  v2[v24 + 32] = 5;
  if ((a1 & 0x10) == 0)
  {
LABEL_22:
    if ((a1 & 0x400) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_76;
  }

LABEL_71:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_192072C74(0, *(v2 + 2) + 1, 1, v2);
  }

  v26 = *(v2 + 2);
  v25 = *(v2 + 3);
  if (v26 >= v25 >> 1)
  {
    v2 = sub_192072C74((v25 > 1), v26 + 1, 1, v2);
  }

  *(v2 + 2) = v26 + 1;
  v2[v26 + 32] = 3;
  if ((a1 & 0x400) == 0)
  {
LABEL_23:
    if ((a1 & 0x800) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_81;
  }

LABEL_76:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_192072C74(0, *(v2 + 2) + 1, 1, v2);
  }

  v28 = *(v2 + 2);
  v27 = *(v2 + 3);
  if (v28 >= v27 >> 1)
  {
    v2 = sub_192072C74((v27 > 1), v28 + 1, 1, v2);
  }

  *(v2 + 2) = v28 + 1;
  v2[v28 + 32] = 7;
  if ((a1 & 0x800) == 0)
  {
LABEL_24:
    if ((a1 & 0x1000) == 0)
    {
      return v2;
    }

    goto LABEL_86;
  }

LABEL_81:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_192072C74(0, *(v2 + 2) + 1, 1, v2);
  }

  v30 = *(v2 + 2);
  v29 = *(v2 + 3);
  if (v30 >= v29 >> 1)
  {
    v2 = sub_192072C74((v29 > 1), v30 + 1, 1, v2);
  }

  *(v2 + 2) = v30 + 1;
  v2[v30 + 32] = 8;
  if ((a1 & 0x1000) != 0)
  {
LABEL_86:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_192072C74(0, *(v2 + 2) + 1, 1, v2);
    }

    v32 = *(v2 + 2);
    v31 = *(v2 + 3);
    if (v32 >= v31 >> 1)
    {
      v2 = sub_192072C74((v31 > 1), v32 + 1, 1, v2);
    }

    *(v2 + 2) = v32 + 1;
    v2[v32 + 32] = 9;
  }

  return v2;
}

char *CHSWidgetFamilyMask.chsWidgetFamilies.getter(__int16 a1)
{
  if ((a1 & 2) == 0)
  {
    v2 = MEMORY[0x1E69E7CC0];
    if ((a1 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_1920C36AC(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_1920C36AC((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  *&v2[8 * v4 + 32] = 1;
  if ((a1 & 4) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1920C36AC(0, *(v2 + 2) + 1, 1, v2);
    }

    v6 = *(v2 + 2);
    v5 = *(v2 + 3);
    if (v6 >= v5 >> 1)
    {
      v2 = sub_1920C36AC((v5 > 1), v6 + 1, 1, v2);
    }

    *(v2 + 2) = v6 + 1;
    *&v2[8 * v6 + 32] = 2;
  }

LABEL_12:
  if ((a1 & 8) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1920C36AC(0, *(v2 + 2) + 1, 1, v2);
    }

    v8 = *(v2 + 2);
    v7 = *(v2 + 3);
    if (v8 >= v7 >> 1)
    {
      v2 = sub_1920C36AC((v7 > 1), v8 + 1, 1, v2);
    }

    *(v2 + 2) = v8 + 1;
    *&v2[8 * v8 + 32] = 3;
    if ((a1 & 0x2000) == 0)
    {
LABEL_14:
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_30;
    }
  }

  else if ((a1 & 0x2000) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1920C36AC(0, *(v2 + 2) + 1, 1, v2);
  }

  v10 = *(v2 + 2);
  v9 = *(v2 + 3);
  if (v10 >= v9 >> 1)
  {
    v2 = sub_1920C36AC((v9 > 1), v10 + 1, 1, v2);
  }

  *(v2 + 2) = v10 + 1;
  *&v2[8 * v10 + 32] = 13;
  if ((a1 & 0x10) == 0)
  {
LABEL_15:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_30:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1920C36AC(0, *(v2 + 2) + 1, 1, v2);
  }

  v12 = *(v2 + 2);
  v11 = *(v2 + 3);
  if (v12 >= v11 >> 1)
  {
    v2 = sub_1920C36AC((v11 > 1), v12 + 1, 1, v2);
  }

  *(v2 + 2) = v12 + 1;
  *&v2[8 * v12 + 32] = 4;
  if ((a1 & 0x40) == 0)
  {
LABEL_16:
    if ((a1 & 0x400) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

LABEL_35:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1920C36AC(0, *(v2 + 2) + 1, 1, v2);
  }

  v14 = *(v2 + 2);
  v13 = *(v2 + 3);
  if (v14 >= v13 >> 1)
  {
    v2 = sub_1920C36AC((v13 > 1), v14 + 1, 1, v2);
  }

  *(v2 + 2) = v14 + 1;
  *&v2[8 * v14 + 32] = 6;
  if ((a1 & 0x400) == 0)
  {
LABEL_17:
    if ((a1 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_45;
  }

LABEL_40:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1920C36AC(0, *(v2 + 2) + 1, 1, v2);
  }

  v16 = *(v2 + 2);
  v15 = *(v2 + 3);
  if (v16 >= v15 >> 1)
  {
    v2 = sub_1920C36AC((v15 > 1), v16 + 1, 1, v2);
  }

  *(v2 + 2) = v16 + 1;
  *&v2[8 * v16 + 32] = 10;
  if ((a1 & 0x800) == 0)
  {
LABEL_18:
    if ((a1 & 0x1000) == 0)
    {
      return v2;
    }

    goto LABEL_50;
  }

LABEL_45:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1920C36AC(0, *(v2 + 2) + 1, 1, v2);
  }

  v18 = *(v2 + 2);
  v17 = *(v2 + 3);
  if (v18 >= v17 >> 1)
  {
    v2 = sub_1920C36AC((v17 > 1), v18 + 1, 1, v2);
  }

  *(v2 + 2) = v18 + 1;
  *&v2[8 * v18 + 32] = 11;
  if ((a1 & 0x1000) != 0)
  {
LABEL_50:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1920C36AC(0, *(v2 + 2) + 1, 1, v2);
    }

    v20 = *(v2 + 2);
    v19 = *(v2 + 3);
    if (v20 >= v19 >> 1)
    {
      v2 = sub_1920C36AC((v19 > 1), v20 + 1, 1, v2);
    }

    *(v2 + 2) = v20 + 1;
    *&v2[8 * v20 + 32] = 12;
  }

  return v2;
}