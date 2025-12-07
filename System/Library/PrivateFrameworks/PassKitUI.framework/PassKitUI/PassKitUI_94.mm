uint64_t sub_1BD9F550C(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45CC0, &qword_1BE0D5630);
  v2[12] = swift_task_alloc();
  v3 = sub_1BE0498B4();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B9D8, &qword_1BE10D5B0);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v4 = type metadata accessor for FinanceKitGroupMetadataDataProvider.Metadata(0);
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v5 = sub_1BE04AFE4();
  v2[27] = v5;
  v2[28] = *(v5 - 8);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD9F579C, v1, 0);
}

uint64_t sub_1BD9F579C()
{
  v1 = *(v0 + 80);
  v110 = sub_1BD1AC9E4(MEMORY[0x1E69E7CC0]);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 224);
    v105 = *(v0 + 160);
    v4 = *(v0 + 88);
    v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v6 = *(v0 + 80) + v5;
    swift_beginAccess();
    v7 = *(v3 + 16);
    v3 += 16;
    v113 = v7;
    v109 = (v3 - 8);
    v107 = (v3 + 16);
    v111 = *(v3 + 56);
    v112 = MEMORY[0x1E69E7CC0];
    v103 = v5;
    v104 = v4;
    v7(*(v0 + 288), v6, *(v0 + 216));
    while (1)
    {
      v17 = *(v4 + 120);
      if (!v17[2])
      {
        goto LABEL_14;
      }

      v18 = *(v0 + 288);
      sub_1BE048C84();
      v19 = sub_1BD14951C(v18);
      if ((v20 & 1) == 0)
      {
        break;
      }

      v28 = *(v0 + 280);
      v27 = *(v0 + 288);
      v30 = *(v0 + 208);
      v29 = *(v0 + 216);
      v31 = *(v0 + 192);
      v32 = *(v0 + 200);
      v106 = *(v105 + 72);
      sub_1BD9F7240(v17[7] + v106 * v19, v32);
      v17, v33, v34, v35, v36, v37, v38, v39;
      sub_1BD9F72A4(v32, v30);
      v113(v28, v27, v29);
      sub_1BD9F7240(v30, v31);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = sub_1BD14951C(v28);
      v42 = v110[2];
      v43 = (v9 & 1) == 0;
      v44 = __OFADD__(v42, v43);
      v45 = v42 + v43;
      if (v44)
      {
        __break(1u);
LABEL_45:
        __break(1u);
        return MEMORY[0x1EEDC14C0](v41, v9, v10, v11);
      }

      v46 = v110;
      v47 = v9;
      if (v110[3] >= v45)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v63 = v41;
          sub_1BD5089D0();
          v41 = v63;
          v46 = v110;
        }
      }

      else
      {
        v48 = *(v0 + 280);
        sub_1BD504A24(v45, isUniquelyReferenced_nonNull_native);
        v41 = sub_1BD14951C(v48);
        if ((v47 & 1) != (v49 & 1))
        {

          return sub_1BE053C14();
        }

        v46 = v110;
      }

      v55 = *(v0 + 280);
      v54 = *(v0 + 288);
      v57 = *(v0 + 208);
      v56 = *(v0 + 216);
      v58 = *(v0 + 192);
      v110 = v46;
      if (v47)
      {
        sub_1BD9F7308(v58, v46[7] + v41 * v106);
        v8 = *v109;
        (*v109)(v55, v56);
        sub_1BD9F717C(v57);
        v8(v54, v56);
      }

      else
      {
        v46[(v41 >> 6) + 8] |= 1 << v41;
        v59 = v41;
        v113(v46[6] + v41 * v111, v55, v56);
        sub_1BD9F72A4(v58, v110[7] + v59 * v106);
        v60 = *v109;
        (*v109)(v55, v56);
        sub_1BD9F717C(v57);
        v41 = (v60)(v54, v56);
        v61 = v110[2];
        v44 = __OFADD__(v61, 1);
        v62 = v61 + 1;
        if (v44)
        {
          goto LABEL_45;
        }

        v110[2] = v62;
      }

      v5 = v103;
      v4 = v104;
      v16 = v111;
LABEL_5:
      v6 += v16;
      if (!--v2)
      {
        v112, v9, v10, v11, v12, v13, v14, v15;
        goto LABEL_25;
      }

      v113(*(v0 + 288), v6, *(v0 + 216));
    }

    v17, v20, v21, v22, v23, v24, v25, v26;
LABEL_14:
    v113(*(v0 + 272), *(v0 + 288), *(v0 + 216));
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v112 = sub_1BD1D82D4(0, v112[2] + 1, 1, v112);
    }

    v51 = v112[2];
    v50 = v112[3];
    if (v51 >= v50 >> 1)
    {
      v112 = sub_1BD1D82D4((v50 > 1), v51 + 1, 1, v112);
    }

    v52 = *(v0 + 272);
    v53 = *(v0 + 216);
    (*v109)(*(v0 + 288), v53);
    v112[2] = v51 + 1;
    v16 = v111;
    (*v107)(v112 + v5 + v51 * v111, v52, v53);
    goto LABEL_5;
  }

LABEL_25:
  *(v0 + 296) = *(*(v0 + 88) + 112);
  v64 = sub_1BE048F94();
  *(v0 + 304) = v64;
  v65 = *(v0 + 224);
  v66 = *(v0 + 112);
  v67 = *(v64 + 32);
  *(v0 + 392) = v67;
  v68 = -1;
  v69 = -1 << v67;
  v70 = *(v64 + 64);
  if (-v69 < 64)
  {
    v68 = ~(-1 << -v69);
  }

  *(v0 + 312) = v110;
  *(v0 + 320) = v110;
  v71 = v68 & v70;
  if (v71)
  {
    v72 = 0;
LABEL_32:
    v75 = *(v0 + 264);
    v76 = *(v0 + 216);
    v78 = *(v0 + 128);
    v77 = *(v0 + 136);
    v108 = *(v0 + 104);
    v114 = (v71 - 1) & v71;
    v79 = __clz(__rbit64(v71)) | (v72 << 6);
    v80 = v64;
    (*(v65 + 16))(v75, *(v64 + 48) + *(v65 + 72) * v79, v76);
    (*(v66 + 16))(v78, *(v80 + 56) + *(v66 + 72) * v79, v108);
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5B9E0, &unk_1BE10D5B8);
    v82 = *(v81 + 48);
    (*(v65 + 32))(v77, v75, v76);
    (*(v66 + 32))(v77 + v82, v78, v108);
    (*(*(v81 - 8) + 56))(v77, 0, 1, v81);
    v83 = v114;
    v74 = v72;
  }

  else
  {
    v73 = 0;
    v74 = ((63 - v69) >> 6) - 1;
    while (v74 != v73)
    {
      v72 = v73 + 1;
      v71 = *(v64 + 72 + 8 * v73++);
      if (v71)
      {
        goto LABEL_32;
      }
    }

    v101 = *(v0 + 136);
    v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5B9E0, &unk_1BE10D5B8);
    (*(*(v102 - 8) + 56))(v101, 1, 1, v102);
    v83 = 0;
  }

  *(v0 + 328) = v83;
  *(v0 + 336) = v74;
  v84 = *(v0 + 144);
  sub_1BD9F709C(*(v0 + 136), v84);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5B9E0, &unk_1BE10D5B8);
  if ((*(*(v85 - 8) + 48))(v84, 1, v85) == 1)
  {
    *(v0 + 304), v86, v87, v88, v89, v90, v91, v92;

    v93 = *(v0 + 8);

    return v93(v110);
  }

  else
  {
    v95 = *(v0 + 144);
    v97 = *(v0 + 112);
    v96 = *(v0 + 120);
    v98 = *(v0 + 104);
    v99 = *(v85 + 48);
    (*(*(v0 + 224) + 32))(*(v0 + 256), v95, *(v0 + 216));
    (*(v97 + 32))(v96, v95 + v99, v98);
    sub_1BE049884();
    v100 = swift_task_alloc();
    *(v0 + 344) = v100;
    *v100 = v0;
    v100[1] = sub_1BD9F6194;
    v9 = *(v0 + 248);
    v41 = *(v0 + 96);
    v10 = 0;
    v11 = 1;

    return MEMORY[0x1EEDC14C0](v41, v9, v10, v11);
  }
}

uint64_t sub_1BD9F6194()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = v2[40];
    v4 = v2[31];
    v5 = v2[27];
    v6 = v2[28];
    v7 = v2[11];
    v8 = *(v6 + 8);
    v2[47] = v8;
    v2[48] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v8(v4, v5);
    v3, v9, v10, v11, v12, v13, v14, v15;
    v16 = sub_1BD9F6D84;
    v17 = v7;
  }

  else
  {
    v18 = v2[31];
    v19 = v2[27];
    v20 = v2[28];
    v21 = v2[11];
    v22 = *(v20 + 8);
    v2[45] = v22;
    v2[46] = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v22(v18, v19);
    v16 = sub_1BD9F6314;
    v17 = v21;
  }

  return MEMORY[0x1EEE6DFA0](v16, v17, 0);
}

uint64_t sub_1BD9F6314()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 184);
  v3 = *(v0 + 152);
  v4 = *(v0 + 96);
  v5 = sub_1BE049894();
  v7 = v6;
  sub_1BE049884();
  sub_1BD9F710C(v4, v2 + *(v3 + 24));
  sub_1BE0498A4();
  *v2 = v5;
  v2[1] = v7;
  sub_1BE052984();
  if (v1)
  {
    v15 = *(v0 + 360);
    v145 = *(v0 + 320);
    v16 = *(v0 + 256);
    v17 = *(v0 + 216);
    v18 = *(v0 + 184);
    v19 = *(v0 + 112);
    v20 = *(v0 + 120);
    v22 = *(v0 + 96);
    v21 = *(v0 + 104);
    *(v0 + 304), v8, v9, v10, v11, v12, v13, v14;
    sub_1BD9F717C(v18);
    sub_1BD9F71D8(v22);
    (*(v19 + 8))(v20, v21);
    v15(v16, v17);
    v145, v23, v24, v25, v26, v27, v28, v29;

    v30 = *(v0 + 8);

    return v30();
  }

  v32 = *(v0 + 240);
  v34 = *(v0 + 176);
  v33 = *(v0 + 184);
  v35 = *(v0 + 88);
  v36 = *(*(v0 + 224) + 16);
  (v36)(v32, *(v0 + 256), *(v0 + 216));
  swift_beginAccess();
  sub_1BD9F7240(v33, v34);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = *(v35 + 120);
  *(v0 + 64) = v38;
  *(v35 + 120) = 0x8000000000000000;
  v39 = sub_1BD14951C(v32);
  v41 = *(v38 + 16);
  v42 = (v40 & 1) == 0;
  v43 = __OFADD__(v41, v42);
  v44 = v41 + v42;
  if (v43)
  {
    goto LABEL_45;
  }

  LOBYTE(v32) = v40;
  if (*(v38 + 24) >= v44)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_47;
    }

    while (1)
    {
LABEL_10:
      v47 = *(v0 + 64);
      v48 = *(v0 + 360);
      v49 = *(v0 + 240);
      if (v32)
      {
        v50 = *(v0 + 216);
        v144 = *(*(v0 + 160) + 72);
        sub_1BD9F7308(*(v0 + 176), v47[7] + v144 * v39);
        v48(v49, v50);
      }

      else
      {
        v59 = *(v0 + 216);
        v58 = *(v0 + 224);
        v60 = *(v0 + 176);
        v61 = *(v0 + 160);
        v47[(v39 >> 6) + 8] |= 1 << v39;
        v62 = v36;
        v36 = v39;
        v147 = v62;
        v62(v47[6] + *(v58 + 72) * v39, v49, v59);
        v63 = *(v61 + 72);
        sub_1BD9F72A4(v60, v47[7] + v63 * v36);
        v39 = (v48)(v49, v59);
        v64 = v47[2];
        v43 = __OFADD__(v64, 1);
        v65 = v64 + 1;
        if (v43)
        {
          __break(1u);
LABEL_49:
          v138 = v39;
          sub_1BD5089D0();
          v39 = v138;
          goto LABEL_21;
        }

        v144 = v63;
        v47[2] = v65;
        v36 = v147;
      }

      v66 = *(v0 + 312);
      v67 = *(v0 + 256);
      v68 = *(v0 + 232);
      v69 = *(v0 + 216);
      v70 = *(v0 + 184);
      v71 = *(v0 + 168);
      v72 = *(v0 + 88);
      v73 = *(v72 + 120);
      *(v72 + 120) = v47;
      v73, v51, v52, v53, v54, v55, v56, v57;
      swift_endAccess();
      (v36)(v68, v67, v69);
      sub_1BD9F7240(v70, v71);
      v32 = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 72) = v66;
      v39 = sub_1BD14951C(v68);
      v75 = *(v66 + 16);
      v76 = (v74 & 1) == 0;
      v43 = __OFADD__(v75, v76);
      v77 = v75 + v76;
      if (v43)
      {
        goto LABEL_46;
      }

      LOBYTE(v60) = v74;
      if (*(*(v0 + 312) + 24) < v77)
      {
        v78 = *(v0 + 232);
        sub_1BD504A24(v77, v32);
        v39 = sub_1BD14951C(v78);
        if ((v60 & 1) != (v79 & 1))
        {
          goto LABEL_17;
        }

        goto LABEL_21;
      }

      if ((v32 & 1) == 0)
      {
        goto LABEL_49;
      }

LABEL_21:
      v80 = *(v0 + 72);
      v81 = *(v0 + 360);
      v32 = *(v0 + 368);
      v143 = *(v0 + 256);
      v82 = *(v0 + 232);
      v148 = v80;
      if (v60)
      {
        v83 = *(v0 + 216);
        v84 = *(v0 + 184);
        v86 = *(v0 + 112);
        v85 = *(v0 + 120);
        v36 = *(v0 + 96);
        v87 = *(v0 + 104);
        sub_1BD9F7308(*(v0 + 168), *(v80 + 56) + v39 * v144);
        v81(v82, v83);
        sub_1BD9F717C(v84);
        sub_1BD9F71D8(v36);
        (*(v86 + 8))(v85, v87);
        v39 = (v81)(v143, v83);
        v88 = v148;
      }

      else
      {
        v90 = *(v0 + 216);
        v89 = *(v0 + 224);
        v91 = *(v0 + 168);
        v141 = *(v0 + 120);
        v92 = v36;
        v93 = *(v0 + 112);
        v139 = *(v0 + 184);
        v140 = *(v0 + 104);
        v94 = *(v0 + 96);
        *(v80 + 8 * (v39 >> 6) + 64) |= 1 << v39;
        v95 = v39;
        v92(*(v80 + 48) + *(v89 + 72) * v39, v82, v90);
        sub_1BD9F72A4(v91, *(v148 + 56) + v95 * v144);
        v81(v82, v90);
        sub_1BD9F717C(v139);
        sub_1BD9F71D8(v94);
        v96 = *(v93 + 8);
        v36 = v93 + 8;
        v96(v141, v140);
        v39 = (v81)(v143, v90);
        v88 = v148;
        v100 = *(v148 + 16);
        v43 = __OFADD__(v100, 1);
        v101 = v100 + 1;
        if (v43)
        {
          __break(1u);
          return MEMORY[0x1EEDC14C0](v39, v97, v98, v99);
        }

        *(v148 + 16) = v101;
      }

      v102 = *(v0 + 328);
      v103 = *(v0 + 336);
      *(v0 + 312) = v88;
      *(v0 + 320) = v88;
      if (v102)
      {
        v104 = *(v0 + 304);
LABEL_35:
        v109 = *(v0 + 264);
        v110 = *(v0 + 216);
        v111 = *(v0 + 224);
        v113 = *(v0 + 128);
        v112 = *(v0 + 136);
        v114 = *(v0 + 112);
        v142 = *(v0 + 104);
        v146 = (v102 - 1) & v102;
        v115 = __clz(__rbit64(v102)) | (v103 << 6);
        (*(v111 + 16))(v109, *(v104 + 48) + *(v111 + 72) * v115, v110);
        (*(v114 + 16))(v113, *(v104 + 56) + *(v114 + 72) * v115, v142);
        v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5B9E0, &unk_1BE10D5B8);
        v117 = *(v116 + 48);
        (*(v111 + 32))(v112, v109, v110);
        (*(v114 + 32))(v112 + v117, v113, v142);
        (*(*(v116 - 8) + 56))(v112, 0, 1, v116);
        v118 = v146;
        v107 = v103;
LABEL_36:
        *(v0 + 328) = v118;
        *(v0 + 336) = v107;
        v119 = *(v0 + 144);
        sub_1BD9F709C(*(v0 + 136), v119);
        v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5B9E0, &unk_1BE10D5B8);
        if ((*(*(v120 - 8) + 48))(v119, 1, v120) == 1)
        {
          *(v0 + 304), v121, v122, v123, v124, v125, v126, v127;

          v128 = *(v0 + 8);

          return v128(v148);
        }

        v129 = *(v0 + 144);
        v131 = *(v0 + 112);
        v130 = *(v0 + 120);
        v132 = *(v0 + 104);
        v133 = *(v120 + 48);
        (*(*(v0 + 224) + 32))(*(v0 + 256), v129, *(v0 + 216));
        (*(v131 + 32))(v130, v129 + v133, v132);
        sub_1BE049884();
        v134 = swift_task_alloc();
        *(v0 + 344) = v134;
        *v134 = v0;
        v134[1] = sub_1BD9F6194;
        v97 = *(v0 + 248);
        v39 = *(v0 + 96);
        v98 = 0;
        v99 = 1;

        return MEMORY[0x1EEDC14C0](v39, v97, v98, v99);
      }

      v105 = ((1 << *(v0 + 392)) + 63) >> 6;
      if (v105 <= (v103 + 1))
      {
        v106 = v103 + 1;
      }

      else
      {
        v106 = ((1 << *(v0 + 392)) + 63) >> 6;
      }

      v107 = v106 - 1;
      while (1)
      {
        v108 = v103 + 1;
        if (__OFADD__(v103, 1))
        {
          break;
        }

        if (v108 >= v105)
        {
          v135 = *(v0 + 136);
          v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5B9E0, &unk_1BE10D5B8);
          (*(*(v136 - 8) + 56))(v135, 1, 1, v136);
          v118 = 0;
          goto LABEL_36;
        }

        v104 = *(v0 + 304);
        v102 = *(v104 + 8 * v108 + 64);
        ++v103;
        if (v102)
        {
          v103 = v108;
          goto LABEL_35;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      v137 = v39;
      sub_1BD5089D0();
      v39 = v137;
    }
  }

  v45 = *(v0 + 240);
  sub_1BD504A24(v44, isUniquelyReferenced_nonNull_native);
  v39 = sub_1BD14951C(v45);
  if ((v32 & 1) == (v46 & 1))
  {
    goto LABEL_10;
  }

LABEL_17:

  return sub_1BE053C14();
}

uint64_t sub_1BD9F6D84(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 376);
  v10 = *(v8 + 256);
  v11 = *(v8 + 216);
  v13 = *(v8 + 112);
  v12 = *(v8 + 120);
  v14 = *(v8 + 104);
  *(v8 + 304), a2, a3, a4, a5, a6, a7, a8;
  (*(v13 + 8))(v12, v14);
  v9(v10, v11);

  v15 = *(v8 + 8);

  return v15();
}

uint64_t sub_1BD9F6F18(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 112), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 120), v9, v10, v11, v12, v13, v14, v15;
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v8);
}

uint64_t type metadata accessor for FinanceKitGroupMetadataDataProvider.Metadata(uint64_t a1)
{
  result = qword_1EBD5B9C8;
  if (!qword_1EBD5B9C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD9F6FF0(uint64_t a1)
{
  sub_1BE04AFE4();
  if (v1 <= 0x3F)
  {
    sub_1BD41DE58(319);
    if (v2 <= 0x3F)
    {
      sub_1BE049B04();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1BD9F709C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B9D8, &qword_1BE10D5B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD9F710C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45CC0, &qword_1BE0D5630);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD9F717C(uint64_t a1)
{
  v2 = type metadata accessor for FinanceKitGroupMetadataDataProvider.Metadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD9F71D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45CC0, &qword_1BE0D5630);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD9F7240(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitGroupMetadataDataProvider.Metadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD9F72A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitGroupMetadataDataProvider.Metadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD9F7308(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitGroupMetadataDataProvider.Metadata(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD9F7398(unint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t (*a3)(uint64_t, void *, void *))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v6 = a1;
  v7 = sub_1BE053704();
  if (!v7)
  {
LABEL_7:
    v6, v8, v9, v10, v11, v12, v13, v14;
    return MEMORY[0x1E69E7CC0];
  }

  v15 = v7;
  v16 = a2(v7, 0);
  v17 = a3(v16 + 32, v15, v6);
  v6 = v18;
  v17, v19, v18, v20, v21, v22, v23, v24;
  result = v16;
  if (v6 != v15)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

id sub_1BD9F743C()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = v0;
  for (i = (v1 + 56); ; i += 4)
  {
    v6 = *(i - 3);
    v5 = *(i - 2);
    v7 = *i;
    v8 = v3[1];
    v43 = *v3;
    v44 = v8;
    sub_1BE048C84();
    sub_1BE048C84();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48B70, &unk_1BE0E5BC0);
    MEMORY[0x1BFB3E970](&v41, v9);
    v16 = v42;
    if (v6 == v41 && v5 == v42)
    {
      break;
    }

    v18 = sub_1BE053B84();
    v16, v19, v20, v21, v22, v23, v24, v25;
    if (v18)
    {
      return v6;
    }

    v7, v26, v27, v28, v29, v30, v31, v32;
    v5, v33, v34, v35, v36, v37, v38, v39;
    if (!--v2)
    {
      return 0;
    }
  }

  v42, v10, v41, v11, v12, v13, v14, v15;
  return v6;
}

uint64_t sub_1BD9F7554@<X0>(uint64_t a1@<X8>)
{
  v40[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BAF8, &qword_1BE10D700);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v40 - v4;
  v6 = swift_allocObject();
  v7 = v1[5];
  v6[5] = v1[4];
  v6[6] = v7;
  *(v6 + 105) = *(v1 + 89);
  v8 = v1[1];
  v6[1] = *v1;
  v6[2] = v8;
  v9 = v1[3];
  v6[3] = v1[2];
  v6[4] = v9;
  v41 = v1;
  sub_1BD9FA9D0(v1, &v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BB00, &qword_1BE10D708);
  sub_1BD9FAA08();
  sub_1BE051704();
  v42 = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516C4();
  v10 = v43;
  v11 = v44;
  v12 = swift_allocObject();
  v13 = v1[5];
  v12[5] = v1[4];
  v12[6] = v13;
  *(v12 + 105) = *(v1 + 89);
  v14 = v1[1];
  v12[1] = *v1;
  v12[2] = v14;
  v15 = v1[3];
  v12[3] = v1[2];
  v12[4] = v15;
  sub_1BD9FA9D0(v1, &v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BB20, &qword_1BE10D720);
  sub_1BD0DE4F4(&qword_1EBD5BB28, &qword_1EBD5BAF8, &qword_1BE10D700, MEMORY[0x1E697D680]);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5BB30, &unk_1BE10D728);
  v17 = sub_1BD9FAB0C();
  v43 = v16;
  v44 = MEMORY[0x1E69E6158];
  v45 = v17;
  v46 = MEMORY[0x1E69E6180];
  swift_getOpaqueTypeConformance2();
  sub_1BE050F64();
  v11, v18, v19, v20, v21, v22, v23, v24;
  v12, v25, v26, v27, v28, v29, v30, v31;
  v10, v32, v33, v34, v35, v36, v37, v38;
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1BD9F785C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v27 = sub_1BE04FF64();
  v3 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5BB10, &unk_1BE10D710);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - v7;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5BB50, &qword_1BE10D738);
  v9 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v11 = &v25 - v10;
  *v8 = sub_1BE04F504();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD549B0, &qword_1BE10D740);
  sub_1BD9F7CD4(a1, &v8[*(v12 + 44)]);
  sub_1BE04FF44();
  v13 = sub_1BD0DE4F4(&qword_1EBD549A0, &unk_1EBD5BB10, &unk_1BE10D710, MEMORY[0x1E69817F8]);
  sub_1BE050D14();
  (*(v3 + 8))(v5, v27);
  sub_1BD0DE53C(v8, &unk_1EBD5BB10, &unk_1BE10D710);
  sub_1BE052434();
  v15 = v14;
  v29 = v6;
  v30 = v13;
  swift_getOpaqueTypeConformance2();
  v16 = v26;
  sub_1BE050DE4();
  v15, v17, v18, v19, v20, v21, v22, v23;
  return (*(v9 + 8))(v11, v16);
}

uint64_t sub_1BD9F7B20(__int128 *a1)
{
  v27 = a1[4];
  *v28 = a1[5];
  *&v28[9] = *(a1 + 89);
  v23 = *a1;
  v24 = a1[1];
  v25 = a1[2];
  v26 = a1[3];
  *&v28[32] = sub_1BE04EC54();
  v28[40] = sub_1BE0501D4();
  sub_1BD9FA9D0(a1, v29);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48B70, &unk_1BE0E5BC0);
  MEMORY[0x1BFB3E970](v29, v2);
  v3 = *(&v29[0] + 1);
  v4 = swift_allocObject();
  v5 = a1[5];
  v4[5] = a1[4];
  v4[6] = v5;
  *(v4 + 105) = *(a1 + 89);
  v6 = a1[1];
  v4[1] = *a1;
  v4[2] = v6;
  v7 = a1[3];
  v4[3] = a1[2];
  v4[4] = v7;
  sub_1BD9FA9D0(a1, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BB30, &unk_1BE10D728);
  sub_1BD9FAB0C();
  sub_1BE051074();
  v3, v8, v9, v10, v11, v12, v13, v14;
  v4, v15, v16, v17, v18, v19, v20, v21;
  v29[4] = v27;
  v29[5] = *v28;
  v30[0] = *&v28[16];
  *(v30 + 9) = *&v28[25];
  v29[0] = v23;
  v29[1] = v24;
  v29[2] = v25;
  v29[3] = v26;
  return sub_1BD0DE53C(v29, &qword_1EBD5BB30, &unk_1BE10D728);
}

id sub_1BD9F7CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v170 = a1;
  v180 = a2;
  v2 = sub_1BE04C894();
  v173 = *(v2 - 8);
  v174 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v172 = &v166 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE04C764();
  v178 = *(v4 - 8);
  v179 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v177 = &v166 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v175 = &v166 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5BB60, &qword_1BE0C4580);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v176 = &v166 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v181 = &v166 - v11;
  v12 = sub_1BE04BD74();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v166 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  v168 = *(v16 - 8);
  v169 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v171 = &v166 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v167 = &v166 - v19;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v182 = &v166 - v22;
  (*(v13 + 104))(v15, *MEMORY[0x1E69B8068], v12, v21);
  result = PKPassKitBundle();
  if (result)
  {
    v24 = result;
    v25 = sub_1BE04B6F4();
    v27 = v26;

    (*(v13 + 8))(v15, v12);
    v183 = v25;
    v184 = v27;
    sub_1BD0DDEBC();
    v28 = sub_1BE0506C4();
    v30 = v29;
    LOBYTE(v25) = v31;
    v33 = v32;
    v34 = sub_1BE051464();
    v35 = sub_1BE050564();
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v34, v36, v38, v40, v42, v43, v44, v45;
    sub_1BD0DDF10(v28, v30, (v25 & 1), v46, v47, v48, v49, v50);
    v33, v51, v52, v53, v54, v55, v56, v57;
    v183 = v35;
    v184 = v37;
    v58 = (v39 & 1);
    v185 = v39 & 1;
    v186 = v41;
    sub_1BE052434();
    v60 = v59;
    v61 = v182;
    sub_1BE050DE4();
    v60, v62, v63, v64, v65, v66, v67, v68;
    sub_1BD0DDF10(v35, v37, v58, v69, v70, v71, v72, v73);
    v41, v74, v75, v76, v77, v78, v79, v80;
    v81 = v170;
    sub_1BD9F743C();
    if (v82)
    {
      v85 = v82;
      v86 = v84;
      v183 = v83;
      v184 = v84;
      sub_1BE048C84();
      v87 = sub_1BE0506C4();
      v89 = v88;
      v91 = v90;
      v93 = v92;
      v86, v88, v90, v92, v94, v95, v96, v97;
      v85, v98, v99, v100, v101, v102, v103, v104;
      if (*(v81 + 72))
      {
        v105 = sub_1BE051494();
      }

      else
      {
        v105 = sub_1BE051264();
      }

      v108 = v105;
      v109 = sub_1BE050564();
      v111 = v110;
      v113 = v112;
      v115 = v114;
      v108, v110, v112, v114, v116, v117, v118, v119;
      sub_1BD0DDF10(v87, v89, (v91 & 1), v120, v121, v122, v123, v124);
      v93, v125, v126, v127, v128, v129, v130, v131;
      v183 = v109;
      v184 = v111;
      v185 = v113 & 1;
      v186 = v115;
      sub_1BE052434();
      v133 = v132;
      v134 = v167;
      sub_1BE050DE4();
      v133, v135, v136, v137, v138, v139, v140, v141;
      sub_1BD0DDF10(v109, v111, (v113 & 1), v142, v143, v144, v145, v146);
      v115, v147, v148, v149, v150, v151, v152, v153;
      v107 = v181;
      sub_1BD133260(v134, v181);
      v106 = 0;
      v61 = v182;
    }

    else
    {
      v106 = 1;
      v107 = v181;
    }

    (*(v168 + 56))(v107, v106, 1, v169);
    (*(v173 + 104))(v172, *MEMORY[0x1E69BCA00], v174);
    v154 = v175;
    sub_1BE04C754();
    v155 = v171;
    sub_1BD0DE19C(v61, v171, &qword_1EBD452C0, &qword_1BE0B7620);
    LOBYTE(v183) = 1;
    v156 = v176;
    sub_1BD0DE19C(v107, v176, &unk_1EBD5BB60, &qword_1BE0C4580);
    v157 = v177;
    v158 = v178;
    v159 = *(v178 + 16);
    v160 = v179;
    v159(v177, v154, v179);
    v161 = v180;
    sub_1BD0DE19C(v155, v180, &qword_1EBD452C0, &qword_1BE0B7620);
    v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD549B8, &qword_1BE0FAE98);
    v163 = v161 + v162[12];
    v164 = v183;
    *v163 = 0;
    *(v163 + 8) = v164;
    sub_1BD0DE19C(v156, v161 + v162[16], &unk_1EBD5BB60, &qword_1BE0C4580);
    v159((v161 + v162[20]), v157, v160);
    v165 = *(v158 + 8);
    v165(v154, v160);
    sub_1BD0DE53C(v181, &unk_1EBD5BB60, &qword_1BE0C4580);
    sub_1BD0DE53C(v182, &qword_1EBD452C0, &qword_1BE0B7620);
    v165(v157, v160);
    sub_1BD0DE53C(v156, &unk_1EBD5BB60, &qword_1BE0C4580);
    return sub_1BD0DE53C(v155, &qword_1EBD452C0, &qword_1BE0B7620);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD9F84C0(void *a1)
{
  v2 = [a1 viewControllers];
  sub_1BD0E5E8C(0, &qword_1EBD43450, 0x1E69DD258);
  v3 = sub_1BE052744();

  if (v3 >> 62)
  {
    if (sub_1BE053704())
    {
      goto LABEL_3;
    }

LABEL_15:

    v3, v4, v5, v6, v7, v8, v9, v10;
    return;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x1BFB40900](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }

    v11 = *(v3 + 32);
  }

  v29 = v11;
  v3, v12, v13, v14, v15, v16, v17, v18;
  type metadata accessor for _CountryPickerViewController();
  v19 = swift_dynamicCastClass();
  if (v19)
  {
    v20 = v19;
    v21 = (v19 + OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_configuration);
    v23 = v21[1];
    v22 = v21[2];
    v31[0] = *v21;
    v31[1] = v23;
    v31[2] = v22;
    v25 = v21[4];
    v24 = v21[5];
    v26 = v21[3];
    *&v32[9] = *(v21 + 89);
    v31[4] = v25;
    *v32 = v24;
    v31[3] = v26;
    memmove(v21, v1, 0x69uLL);
    sub_1BD9FB138(v1, v30);
    sub_1BD9FB170(v31);
    if (![v20 isViewLoaded])
    {
LABEL_10:

      return;
    }

    sub_1BD9F8B18();
    v27 = [v20 tableView];
    if (v27)
    {
      v28 = v27;
      [v27 reloadData];

      goto LABEL_10;
    }

    goto LABEL_20;
  }
}

id sub_1BD9F86AC()
{
  v1 = v0[5];
  v9[4] = v0[4];
  v10[0] = v1;
  *(v10 + 9) = *(v0 + 89);
  v2 = v0[1];
  v9[0] = *v0;
  v9[1] = v2;
  v3 = v0[3];
  v9[2] = v0[2];
  v9[3] = v3;
  v4 = objc_allocWithZone(type metadata accessor for _CountryPickerViewController());
  sub_1BD9FA9D0(v9, &v8);
  v5 = sub_1BD9F895C(v9);
  v6 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];

  return v6;
}

uint64_t sub_1BD9F8794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD9FB0E4();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1BD9F87F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD9FB0E4();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1BD9F885C(uint64_t a1)
{
  sub_1BD9FB0E4();
  sub_1BE0500A4();
  __break(1u);
}

id sub_1BD9F895C(_OWORD *a1)
{
  v1[OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_isFreshPresentation] = 1;
  *&v1[OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_sections] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_filteredSections] = 0;
  v3 = OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_resultsSearchController;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x1E69DCF10]) initWithSearchResultsController_];
  v4 = &v1[OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_configuration];
  v5 = a1[1];
  *v4 = *a1;
  v4[1] = v5;
  *(v4 + 89) = *(a1 + 89);
  v6 = a1[5];
  v4[4] = a1[4];
  v4[5] = v6;
  v7 = a1[3];
  v4[2] = a1[2];
  v4[3] = v7;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for _CountryPickerViewController();
  return objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, 0, 0);
}

void sub_1BD9F8A34(void *a1)
{
  *(v1 + OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_isFreshPresentation) = 1;
  *(v1 + OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_sections) = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_filteredSections) = 0;
  v2 = OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_resultsSearchController;
  *(v1 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCF10]) initWithSearchResultsController_];
  sub_1BE053994();
  __break(1u);
}

void sub_1BD9F8B18()
{
  v109 = v0;
  v110 = [objc_opt_self() currentCollation];
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_configuration + 64);
  v2 = v1[2];
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v112 = MEMORY[0x1E69E7CC0];
    sub_1BE048C84();
    sub_1BE0538E4();
    v4 = type metadata accessor for _AllowedValue();
    v108 = v1;
    v5 = v1 + 7;
    do
    {
      v7 = *(v5 - 3);
      v6 = *(v5 - 2);
      v8 = *(v5 - 1);
      v9 = *v5;
      v10 = objc_allocWithZone(v4);
      v11 = &v10[OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509513_AllowedValue_value];
      *v11 = v7;
      *(v11 + 1) = v6;
      v12 = &v10[OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509513_AllowedValue_localizedTitle];
      *v12 = v8;
      *(v12 + 1) = v9;
      v111.receiver = v10;
      v111.super_class = v4;
      sub_1BE048C84();
      sub_1BE048C84();
      objc_msgSendSuper2(&v111, sel_init);
      sub_1BE0538C4();
      sub_1BE0538F4();
      sub_1BE053904();
      sub_1BE0538D4();
      v5 += 4;
      --v2;
    }

    while (v2);
    v108, v13, v14, v15, v16, v17, v18, v19;
    v3 = v112;
  }

  v20 = [v110 sectionTitles];
  v21 = sub_1BE052744();

  v22 = v21[2];
  v21, v23, v24, v25, v26, v27, v28, v29;
  v30 = MEMORY[0x1E69E7CC0];
  v38 = sub_1BD9FAE8C(MEMORY[0x1E69E7CC0], v22);
  if (v3 >> 62)
  {
    goto LABEL_29;
  }

  v39 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v39)
  {
    while (v39 >= 1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_32;
      }

LABEL_9:
      v40 = 0;
      v30 = v3 & 0xC000000000000001;
      while (1)
      {
        v41 = v30 ? MEMORY[0x1BFB40900](v40, v3) : *(v3 + 8 * v40 + 32);
        v42 = v41;
        v43 = [v110 sectionForObject:v41 collationStringSelector:sel_localizedTitle];
        v44 = v42;
        if ((v43 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v43 >= v38[2])
        {
          goto LABEL_28;
        }

        v45 = v44;
        MEMORY[0x1BFB3F7A0]();
        if (*((v38[v43 + 4] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38[v43 + 4] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BE052774();
        }

        ++v40;
        sub_1BE0527C4();

        if (v39 == v40)
        {
          v30 = MEMORY[0x1E69E7CC0];
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      v39 = sub_1BE053704();
      if (!v39)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_32:
    v38 = sub_1BD5000A8(v38);
    goto LABEL_9;
  }

LABEL_19:
  v3, v31, v32, v33, v34, v35, v36, v37;
  v53 = v38[2];
  if (v53)
  {
    v112 = v30;
    sub_1BD532438(0, v53, 0);
    v54 = 4;
    v55 = v112;
    do
    {
      v56 = v38[v54];
      v57 = sub_1BE048C84();
      v65 = sub_1BD3F06F4(v57, v58, v59, v60, v61, v62, v63, v64);
      v66 = sub_1BE052724();
      v65, v67, v68, v69, v70, v71, v72, v73;
      v74 = [v110 sortedArrayFromArray:v66 collationStringSelector:sel_localizedTitle];

      v75 = sub_1BE052744();
      v56, v76, v77, v78, v79, v80, v81, v82;

      v112 = v55;
      v91 = v55[2];
      v90 = v55[3];
      if (v91 >= v90 >> 1)
      {
        sub_1BD532438((v90 > 1), (v91 + 1), 1);
        v55 = v112;
      }

      v55[2] = (v91 + 1);
      v55[v91 + 4] = v75;
      ++v54;
      --v53;
    }

    while (v53);
    v38, v83, v84, v85, v86, v87, v88, v89;
  }

  else
  {
    v38, v46, v47, v48, v49, v50, v51, v52;
    v55 = MEMORY[0x1E69E7CC0];
  }

  v92 = sub_1BD3F05C4(v55);
  v55, v93, v94, v95, v96, v97, v98, v99;

  v100 = *(v109 + OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_sections);
  *(v109 + OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_sections) = v92;
  v100, v101, v102, v103, v104, v105, v106, v107;
}

void sub_1BD9F8F34(void *a1)
{
  v2 = [a1 searchBar];
  v3 = [v2 text];
  if (v3)
  {
    v11 = v3;
    v12 = sub_1BE052434();
    v14 = v13;

    v22 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v22 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v22)
    {
      v23 = sub_1BE048C84();
      sub_1BD9FACBC(v23, v12, v14, v24, v25, v26, v27, v28);
      v30 = v29;
      v14, v31, v32, v33, v34, v35, v36, v37;
      v3 = sub_1BD9F7398(v30, sub_1BD1DED88, sub_1BDA7E798);
    }

    else
    {
      v14, v15, v16, v17, v18, v19, v20, v21;
      v3 = 0;
    }
  }

  v38 = *&v1[OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_filteredSections];
  *&v1[OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_filteredSections] = v3;
  v38, v4, v5, v6, v7, v8, v9, v10;
  v39 = [v1 tableView];
  if (v39)
  {
    v40 = v39;
    [v39 reloadData];
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD9F90F4()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v71 = v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v73 = v70 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v70 - v7;
  v9 = type metadata accessor for _CountryPickerViewController();
  v77.receiver = v0;
  v77.super_class = v9;
  objc_msgSendSuper2(&v77, sel_viewDidLoad);
  v10 = OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_resultsSearchController;
  [*&v0[OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_resultsSearchController] setSearchResultsUpdater_];
  v11 = [*&v0[v10] searchBar];
  [v11 setSearchBarStyle_];

  v12 = [*&v0[v10] searchBar];
  v13 = v2;
  v14 = *(v2 + 104);
  v76 = *MEMORY[0x1E69B8068];
  v72 = v2 + 104;
  v75 = v14;
  v14(v8);
  v15 = PKPassKitBundle();
  if (!v15)
  {
    __break(1u);
    goto LABEL_7;
  }

  v16 = v15;
  sub_1BE04B6F4();
  v18 = v17;

  v19 = *(v13 + 8);
  v70[1] = v13 + 8;
  v74 = v19;
  v19(v8, v1);
  v20 = sub_1BE052404();
  v18, v21, v22, v23, v24, v25, v26, v27;
  [v12 setPlaceholder_];

  v28 = [*&v0[v10] searchBar];
  [v28 sizeToFit];

  v29 = [*&v0[v10] searchBar];
  [v29 setTranslucent_];

  v30 = [*&v0[v10] searchBar];
  v31 = objc_opt_self();
  v32 = [v31 clearColor];
  [v30 setBarTintColor_];

  v33 = [*&v0[v10] searchBar];
  v34 = [v31 clearColor];
  [v33 setBackgroundColor_];

  v35 = [*&v0[v10] searchBar];
  [v35 setShowsCancelButton_];

  v36 = [*&v0[v10] searchBar];
  [v36 setDelegate_];

  [*&v0[v10] setHidesNavigationBarDuringPresentation_];
  [*&v0[v10] setObscuresBackgroundDuringPresentation_];
  [v0 setDefinesPresentationContext_];
  v37 = [v0 navigationItem];
  [v37 setHidesSearchBarWhenScrolling_];

  v38 = [v0 navigationItem];
  [v38 setSearchController_];

  v39 = [v0 navigationItem];
  v40 = v73;
  v75(v73, v76, v1);
  v41 = PKPassKitBundle();
  if (!v41)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v42 = v41;
  sub_1BE04B6F4();
  v44 = v43;

  v74(v40, v1);
  v45 = sub_1BE052404();
  v44, v46, v47, v48, v49, v50, v51, v52;
  [v39 setTitle_];

  v53 = v71;
  v75(v71, v76, v1);
  v54 = PKPassKitBundle();
  if (!v54)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v55 = v54;
  sub_1BE04B6F4();
  v57 = v56;

  v74(v53, v1);
  v58 = sub_1BE052404();
  v57, v59, v60, v61, v62, v63, v64, v65;
  [v0 setTitle_];

  v66 = [v0 tableView];
  if (v66)
  {
    v67 = v66;
    sub_1BD0E5E8C(0, &qword_1EBD5BB80, 0x1E69DD028);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v69 = sub_1BE052404();
    [v67 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v69];

    sub_1BD9F8B18();
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_1BD9F977C(int a1, uint64_t a2)
{
  v4 = sub_1BE04B414();
  v80 = *(v4 - 8);
  v81 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v78 = &v75[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v79 = &v75[-v7];
  v8 = type metadata accessor for _CountryPickerViewController();
  v90.receiver = v2;
  v90.super_class = v8;
  v76 = a1;
  objc_msgSendSuper2(&v90, sel_viewWillAppear_, a1 & 1);
  v9 = OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_sections;
  v82 = *(*&v2[OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_sections] + 16);
  if (v82)
  {
    v10 = 0;
    v11 = &v2[OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_configuration];
    v83 = v2;
    v77 = OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_sections;
    while (1)
    {
      v12 = *&v2[v9];
      if (v10 >= *(v12 + 16))
      {
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return;
      }

      v13 = *(v12 + 8 * v10 + 32);
      v84 = v10;
      if (v13 >> 62)
      {
        v60 = sub_1BE053704();
        if (v60 < 0)
        {
          goto LABEL_31;
        }

        v14 = v60;
      }

      else
      {
        v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      sub_1BE048C84();
      if (v14)
      {
        break;
      }

LABEL_3:
      v10 = v84 + 1;
      v13, v15, v16, v17, v18, v19, v20, v21;
      v2 = v83;
      v9 = v77;
      if (v10 == v82)
      {
        return;
      }
    }

    v22 = 0;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x1BFB40900](v22, v13);
      }

      else
      {
        if (v22 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_30;
        }

        v23 = *(v13 + 8 * v22 + 32);
      }

      v24 = v23;
      v25 = *&v23[OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509513_AllowedValue_value];
      v26 = *&v23[OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509513_AllowedValue_value + 8];
      v27 = *(v11 + 2);
      v28 = *(v11 + 3);
      v87 = *v11;
      v88 = v27;
      v89 = v28;
      sub_1BE048C84();
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48B70, &unk_1BE0E5BC0);
      MEMORY[0x1BFB3E970](&v85, v29);
      v36 = v86;
      if (v25 == v85 && v26 == v86)
      {
        v13, v30, v85, v31, v32, v33, v34, v35;
        v26, v61, v62, v63, v64, v65, v66, v67;
        goto LABEL_24;
      }

      v38 = sub_1BE053B84();
      v26, v39, v40, v41, v42, v43, v44, v45;
      v36, v46, v47, v48, v49, v50, v51, v52;
      if (v38)
      {
        break;
      }

      ++v22;

      if (v14 == v22)
      {
        goto LABEL_3;
      }
    }

    v36 = v13;
LABEL_24:
    v36, v53, v54, v55, v56, v57, v58, v59;
    v68 = v78;
    MEMORY[0x1BFB38470](v22, v84);

    v70 = v79;
    v69 = v80;
    v71 = v81;
    (*(v80 + 32))(v79, v68, v81);
    if (v83[OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_isFreshPresentation] == 1)
    {
      v72 = [v83 tableView];
      if (!v72)
      {
        goto LABEL_32;
      }

      v73 = v72;
      v74 = sub_1BE04B3C4();
      [v73 scrollToRowAtIndexPath:v74 atScrollPosition:2 animated:v76 & 1];
    }

    (*(v69 + 8))(v70, v71);
  }
}

void sub_1BD9F9B64(void *a1, uint64_t a2, uint64_t a3, const char **a4, char a5)
{
  v10.receiver = a1;
  v10.super_class = type metadata accessor for _CountryPickerViewController();
  v8 = *a4;
  v9 = v10.receiver;
  objc_msgSendSuper2(&v10, v8, a3);
  v9[OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_isFreshPresentation] = a5;
}

void sub_1BD9F9C58(uint64_t a1, unint64_t a2)
{
  if ([v2 tableView:a1 numberOfRowsInSection:a2] >= 1 && !*&v2[OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_filteredSections])
  {
    v4 = [objc_opt_self() currentCollation];
    v5 = [v4 sectionTitles];
    v6 = sub_1BE052744();

    if ((a2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v6[2] > a2)
    {
      sub_1BE048C84();

      v6, v7, v8, v9, v10, v11, v12, v13;
      return;
    }

    __break(1u);
  }
}

unint64_t sub_1BD9F9F28(void *a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1BE052404();
  v7 = sub_1BE04B3C4();
  v8 = [a1 dequeueReusableCellWithIdentifier:v6 forIndexPath:v7];

  v9 = *(v3 + OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_filteredSections);
  if (v9)
  {
    v10 = *(v3 + OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_resultsSearchController);
    sub_1BE048C84();
    if ([v10 isActive])
    {
      result = sub_1BE04B3F4();
      if ((v9 & 0xC000000000000001) == 0)
      {
        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (result < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v19 = *(v9 + 8 * result + 32);
LABEL_7:
          v27 = v19;
          v9, v20, v21, v22, v23, v24, v25, v26;
          v28 = v27;
          goto LABEL_15;
        }

        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

LABEL_35:
      v19 = MEMORY[0x1BFB40900]();
      goto LABEL_7;
    }

    v9, v11, v12, v13, v14, v15, v16, v17;
  }

  v9 = sub_1BE04B404();
  v29 = sub_1BE04B3F4();
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v30 = *(v3 + OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_sections);
  if (v9 >= *(v30 + 16))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  a2 = *(v30 + 8 * v9 + 32);
  if ((a2 & 0xC000000000000001) == 0)
  {
    if ((v29 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v29 < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v28 = *(a2 + 8 * v29 + 32);
      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_35;
  }

LABEL_32:
  v70 = v29;
  sub_1BE048C84();
  v71 = MEMORY[0x1BFB40900](v70, a2);
  a2, v72, v73, v74, v75, v76, v77, v78;
  v28 = v71;
LABEL_15:
  v31 = *&v28[OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509513_AllowedValue_value];
  v32 = *&v28[OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509513_AllowedValue_value + 8];
  v33 = v3 + OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_configuration;
  v34 = *(v3 + OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_configuration + 16);
  v35 = *(v3 + OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_configuration + 24);
  v81 = *(v3 + OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_configuration);
  v82 = v34;
  v83 = v35;
  v36 = v28;
  sub_1BE048C84();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48B70, &unk_1BE0E5BC0);
  MEMORY[0x1BFB3E970](&v79, v37);
  v44 = v79;
  v45 = v80;
  if (v31 == v79 && v32 == v80)
  {
    v47 = 1;
  }

  else
  {
    v47 = sub_1BE053B84();
  }

  v32, v38, v44, v39, v40, v41, v42, v43;
  v45, v48, v49, v50, v51, v52, v53, v54;
  v55 = *(v33 + 72);
  result = [v8 textLabel];
  if (!result)
  {
    goto LABEL_38;
  }

  v56 = result;
  v57 = *&v36[OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509513_AllowedValue_localizedTitle + 8];
  sub_1BE048C84();

  v58 = sub_1BE052404();
  v57, v59, v60, v61, v62, v63, v64, v65;
  [v56 setText_];

  result = [v8 textLabel];
  if (!result)
  {
LABEL_39:
    __break(1u);
    return result;
  }

  v66 = result;
  if ((v55 | v47 ^ 1))
  {
    v67 = [objc_opt_self() labelColor];
  }

  else
  {
    sub_1BD0E5E8C(0, &qword_1EBD43100, 0x1E69DC888);
    sub_1BE051264();
    v67 = sub_1BE052FE4();
  }

  v68 = v67;
  [v66 setTextColor_];

  if (v47)
  {
    v69 = 3;
  }

  else
  {
    v69 = 0;
  }

  [v8 setAccessoryType_];

  return v8;
}

void sub_1BD9FA3CC(void *a1, id *a2, double a3)
{
  v4 = v3;
  v7 = *(v3 + OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_filteredSections);
  if (!v7)
  {
LABEL_10:
    v27 = a2;
    v28 = sub_1BE04B404();
    v29 = sub_1BE04B3F4();
    if ((v28 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v30 = *(v4 + OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_sections);
      if (v28 < *(v30 + 16))
      {
        v27 = *(v30 + 8 * v28 + 32);
        if ((v27 & 0xC000000000000001) == 0)
        {
          if ((v29 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v29 < *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v25 = *(v27 + 8 * v29 + 32);
            goto LABEL_16;
          }

          __break(1u);
          goto LABEL_22;
        }

LABEL_19:
        v32 = v29;
        sub_1BE048C84();
        v25 = MEMORY[0x1BFB40900](v32, v27);
        v26 = v27;
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

  v8 = *(v3 + OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_resultsSearchController);
  sub_1BE048C84();
  if (![v8 isActive])
  {
    v7, v9, v10, v11, v12, v13, v14, v15;
    goto LABEL_10;
  }

  v16 = sub_1BE04B3F4();
  if ((v7 & 0xC000000000000001) != 0)
  {
LABEL_22:
    v17 = MEMORY[0x1BFB40900]();
    goto LABEL_7;
  }

  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v16 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(v7 + 8 * v16 + 32);
LABEL_7:
    v25 = v17;
    v26 = v7;
LABEL_8:
    v26, v18, v19, v20, v21, v22, v23, v24;
LABEL_16:
    v35 = *(v4 + OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_configuration);
    v36 = *(v4 + OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_configuration + 16);
    v37 = *(v4 + OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_configuration + 24);
    v33 = *&v25[OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509513_AllowedValue_value];
    v34 = *&v25[OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509513_AllowedValue_value + 8];
    sub_1BE048C84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48B70, &unk_1BE0E5BC0);
    sub_1BE0518F4();
    v31 = sub_1BE04B3C4();
    [a1 deselectRowAtIndexPath:v31 animated:{1, v33, v34, v35, v36, v37}];

    [a1 reloadData];
    return;
  }

  __break(1u);
}

id sub_1BD9FA824(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

unint64_t sub_1BD9FAA08()
{
  result = qword_1EBD5BB08;
  if (!qword_1EBD5BB08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5BB00, &qword_1BE10D708);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD5BB10, &unk_1BE10D710);
    sub_1BD0DE4F4(&qword_1EBD549A0, &unk_1EBD5BB10, &unk_1BE10D710, MEMORY[0x1E69817F8]);
    swift_getOpaqueTypeConformance2();
    sub_1BD0F15A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5BB08);
  }

  return result;
}

unint64_t sub_1BD9FAB0C()
{
  result = qword_1EBD5BB38;
  if (!qword_1EBD5BB38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5BB30, &unk_1BE10D728);
    sub_1BD9FAB98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5BB38);
  }

  return result;
}

unint64_t sub_1BD9FAB98()
{
  result = qword_1EBD5BB40;
  if (!qword_1EBD5BB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5BB40);
  }

  return result;
}

uint64_t objectdestroyTm_122(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 24), v9, v10, v11, v12, v13, v14, v15;
  *(v8 + 40), v16, v17, v18, v19, v20, v21, v22;
  *(v8 + 56), v23, v24, v25, v26, v27, v28, v29;
  *(v8 + 72), v30, v31, v32, v33, v34, v35, v36;
  *(v8 + 80), v37, v38, v39, v40, v41, v42, v43;
  *(v8 + 104), v44, v45, v46, v47, v48, v49, v50;
  sub_1BD0D4604(*(v8 + 112), *(v8 + 120), v51, v52, v53, v54, v55, v56);

  return swift_deallocObject();
}

double sub_1BD9FAC68(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  return result;
}

void sub_1BD9FACBC(void *a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v35 = 0;
  v8 = 0;
  v33 = a1 + 4;
  while (1)
  {
    v17 = a1[2];
    if (v35 == v17)
    {
      a1, a2, a3, a4, a5, a6, a7, a8;
      v8, v26, v27, v28, v29, v30, v31, v32;
      return;
    }

    if (v35 >= v17)
    {
      break;
    }

    v18 = v33[v35];
    sub_1BE048C84();
    v8, v19, v20, v21, v22, v23, v24, v25;
    v8 = v18;
    ++v35;
    if (v18)
    {
      v9 = 0;
      v10 = v18 >> 62;
      if (v18 >> 62)
      {
LABEL_5:
        v11 = sub_1BE053704();
        goto LABEL_7;
      }

      while (1)
      {
        v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
        if (v9 == v11)
        {
          break;
        }

        if ((v8 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x1BFB40900](v9, v8);
        }

        else
        {
          if (v9 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v12 = *(v8 + 8 * v9 + 32);
        }

        v13 = v12;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        v14 = sub_1BE052404();
        v15 = sub_1BE052404();
        v16 = [v14 localizedStandardContainsString_];

        if (v16)
        {
          sub_1BE0538C4();
          sub_1BE0538F4();
          sub_1BE053904();
          sub_1BE0538D4();
          ++v9;
          if (v10)
          {
            goto LABEL_5;
          }
        }

        else
        {

          ++v9;
          if (v10)
          {
            goto LABEL_5;
          }
        }
      }
    }
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_1BD9FAE8C(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5BB70, &qword_1BE0D4600);
    v4 = sub_1BE0527B4();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;
        sub_1BE048C84();
        --v6;
      }

      while (v6);
    }

    sub_1BE048C84();
    return v5;
  }

  return result;
}

uint64_t sub_1BD9FAF28(unint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_filteredSections);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_resultsSearchController);
    sub_1BE048C84();
    if ([v4 isActive])
    {
      if (v3 >> 62)
      {
        v12 = sub_1BE053704();
      }

      else
      {
        v12 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v3, v5, v6, v7, v8, v9, v10, v11;
      return v12;
    }

    v3, v5, v6, v7, v8, v9, v10, v11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v14 = *(v1 + OBJC_IVAR____TtC9PassKitUIP33_8AF49C9430B60B059CB9BE426A22509528_CountryPickerViewController_sections);
    if (*(v14 + 16) > a1)
    {
      v15 = *(v14 + 8 * a1 + 32);
      if (!(v15 >> 62))
      {
        return *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:

  return sub_1BE053704();
}

uint64_t sub_1BD9FB02C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
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

uint64_t sub_1BD9FB074(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BD9FB0E4()
{
  result = qword_1EBD5BB88;
  if (!qword_1EBD5BB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5BB88);
  }

  return result;
}

uint64_t static PassbookSettingsNavigationPathBuilder.appendAutofillViewNavigationPath(to:descriptors:authentication:settingsController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a5;
  v8 = sub_1BE04CEB4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE04CEE4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE052D94();
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = v18;
  type metadata accessor for AutoFillFPANCardsView(0);
  sub_1BD9FBA34(&qword_1EBD5BBF0, type metadata accessor for AutoFillFPANCardsView, &protocol conformance descriptor for AutoFillFPANCardsView);
  sub_1BE04CEA4();
  sub_1BD9FBA34(&qword_1EBD5BBF8, MEMORY[0x1E69C59C0], MEMORY[0x1E69C59C8]);
  sub_1BE04CED4();
  (*(v9 + 8))(v11, v8);
  return (*(v13 + 8))(v15, v12);
}

void sub_1BD9FB3E4(uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a4;
  sub_1BE051694();
  *a5 = v28;
  *(a5 + 8) = v29;
  type metadata accessor for DescriptorsModel(0);
  swift_allocObject();
  sub_1BD8AA788();
  sub_1BD9FBA34(&qword_1EBD420B0, type metadata accessor for DescriptorsModel, &unk_1BE100FD0);
  v7 = sub_1BE04E954();
  v9 = v8;
  *(a5 + 16) = v7;
  *(a5 + 24) = v8;
  v10 = type metadata accessor for AutoFillFPANCardsView(0);
  v11 = v10[6];
  *(a5 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
  swift_storeEnumTagMultiPayload();
  v12 = v10[7];
  sub_1BE052434();
  v13 = *MEMORY[0x1E69BC6D8];
  v14 = objc_allocWithZone(MEMORY[0x1E695E000]);
  sub_1BE048964();
  [v14 initWithSuiteName_];
  *(a5 + v12) = sub_1BE04E124();
  v15 = v10[8];
  sub_1BE052434();
  [objc_allocWithZone(MEMORY[0x1E695E000]) initWithSuiteName_];
  *(a5 + v15) = sub_1BE04E124();
  v16 = v10[10];
  *(a5 + v10[9]) = a4;
  *(a5 + v16) = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048C84();
  sub_1BE04D8C4();
  v17 = *(v9 + 24);
  v18 = *(v9 + 32);
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  sub_1BD041A38(a2, a3);
  sub_1BD030220(v17, v18, v19, v20, v21, v22, v23, v24);
}

id PassbookSettingsNavigationPathBuilder.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PassbookSettingsNavigationPathBuilder.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PassbookSettingsNavigationPathBuilder.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1BD9FB9E8()
{
  result = qword_1EBD420C0;
  if (!qword_1EBD420C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD420C0);
  }

  return result;
}

uint64_t sub_1BD9FBA34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1BD9FBA80()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = 45;
  v41 = 0xE100000000000000;
  v6 = sub_1BE04AF74();
  v8 = v7;
  MEMORY[0x1BFB3F610](v6);
  v8, v9, v10, v11, v12, v13, v14, v15;
  v16 = v40;
  v17 = v41;
  v40 = 0xD000000000000027;
  v41 = 0x80000001BE1473D0;
  MEMORY[0x1BFB3F610](v16, v17);
  v17, v18, v19, v20, v21, v22, v23, v24;
  v25 = v41;
  v26 = *(v1 + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_userDefaults);
  v27 = sub_1BE052404();
  v25, v28, v29, v30, v31, v32, v33, v34;
  v35 = [v26 integerForKey_];

  if (v35 >= 3)
  {
    sub_1BE04D114();
    v36 = sub_1BE04D204();
    v37 = sub_1BE052C34();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 134217984;
      *(v38 + 4) = v35;
      _os_log_impl(&dword_1BD026000, v36, v37, "Unable to map rawValue: %ld to FinanceKitSpendingSummaryPeriod, return the default value (weekly).", v38, 0xCu);
      MEMORY[0x1BFB45F20](v38, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    return 0;
  }

  return v35;
}

uint64_t sub_1BD9FBC84(char a1)
{
  *(v2 + 40) = v1;
  *(v2 + 128) = a1;
  v3 = sub_1BE04D214();
  *(v2 + 48) = v3;
  *(v2 + 56) = *(v3 - 8);
  *(v2 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD9FBD48, v1, 0);
}

unint64_t sub_1BD9FBD48(uint64_t a1)
{
  v2 = *(v1 + 128);
  v3 = sub_1BE04AF74();
  v5 = v4;
  MEMORY[0x1BFB3F610](v3);
  v5, v6, v7, v8, v9, v10, v11, v12;
  MEMORY[0x1BFB3F610](45, 0xE100000000000000);
  0xE100000000000000, v13, v14, v15, v16, v17, v18, v19;
  v20 = 0x80000001BE1473D0;
  if (v2 == sub_1BD9FBA80())
  {
LABEL_12:
    v20, v21, v22, v23, v24, v25, v26, v27;
    goto LABEL_13;
  }

  v28 = *(v1 + 40);
  v29 = *(v28 + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_userDefaults);
  v30 = sub_1BE052404();
  0x80000001BE1473D0, v31, v32, v33, v34, v35, v36, v37;
  [v29 setInteger:v2 forKey:v30];

  v38 = OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_observers;
  swift_beginAccess();
  result = *(v28 + v38);
  *(v1 + 72) = result;
  if (!(result >> 62))
  {
    v40 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v1 + 80) = v40;
    if (v40)
    {
      goto LABEL_4;
    }

LABEL_13:

    v52 = *(v1 + 8);

    return v52();
  }

  v57 = result;
  v40 = sub_1BE053704();
  result = v57;
  *(v1 + 80) = v40;
  if (!v40)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (v40 < 1)
  {
    __break(1u);
  }

  else
  {
    sub_1BE048C84();
    v41 = 0;
    while (1)
    {
      *(v1 + 88) = v41;
      v42 = *(v1 + 72);
      if ((v42 & 0xC000000000000001) != 0)
      {
        v43 = MEMORY[0x1BFB40900]();
      }

      else
      {
        v43 = *(v42 + 8 * v41 + 32);
        sub_1BE048964();
      }

      *(v1 + 96) = v43;
      Strong = swift_unknownObjectWeakLoadStrong();
      *(v1 + 104) = Strong;
      if (Strong)
      {
        break;
      }

      v43, v45, v46, v47, v48, v49, v50, v51;
      v41 = *(v1 + 88) + 1;
      if (v41 == *(v1 + 80))
      {
        v20 = *(v1 + 72);
        goto LABEL_12;
      }
    }

    v53 = v43[3];
    ObjectType = swift_getObjectType();
    v58 = (*(v53 + 16) + **(v53 + 16));
    v55 = swift_task_alloc();
    *(v1 + 112) = v55;
    *v55 = v1;
    v55[1] = sub_1BD9FC05C;
    v56 = *(v1 + 128);

    return v58(v56, ObjectType, v53);
  }

  return result;
}

uint64_t sub_1BD9FC05C()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = sub_1BD9FC350;
  }

  else
  {
    v5 = *(v2 + 40);
    swift_unknownObjectRelease();
    v4 = sub_1BD9FC184;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1BD9FC184(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  for (i = *(v8 + 96); ; i = v19)
  {
    i, a2, a3, a4, a5, a6, a7, a8;
    v17 = *(v8 + 88) + 1;
    if (v17 == *(v8 + 80))
    {
      break;
    }

    *(v8 + 88) = v17;
    v18 = *(v8 + 72);
    if ((v18 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x1BFB40900]();
    }

    else
    {
      v19 = *(v18 + 8 * v17 + 32);
      sub_1BE048964();
    }

    *(v8 + 96) = v19;
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v8 + 104) = Strong;
    if (Strong)
    {
      v23 = *(v19 + 24);
      ObjectType = swift_getObjectType();
      v27 = (*(v23 + 16) + **(v23 + 16));
      v25 = swift_task_alloc();
      *(v8 + 112) = v25;
      *v25 = v8;
      v25[1] = sub_1BD9FC05C;
      v26 = *(v8 + 128);

      return v27(v26, ObjectType, v23);
    }
  }

  *(v8 + 72), v10, v11, v12, v13, v14, v15, v16;

  v21 = *(v8 + 8);

  return v21();
}

uint64_t sub_1BD9FC350()
{
  v1 = *(v0 + 120);
  swift_unknownObjectRelease();
  sub_1BE04D114();
  v2 = v1;
  v3 = sub_1BE04D204();
  v4 = sub_1BE052C34();

  v5 = os_log_type_enabled(v3, v4);
  v13 = *(v0 + 120);
  v14 = *(v0 + 96);
  if (v5)
  {
    v15 = *(v0 + 128);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 134218242;
    *(v16 + 4) = v15;
    *(v16 + 12) = 2112;
    v18 = v13;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v19;
    *v17 = v19;
    _os_log_impl(&dword_1BD026000, v3, v4, "Observer failed to update currently selected period to: %ld with error: %@.", v16, 0x16u);
    sub_1BD0DE53C(v17, &unk_1EBD3E590, &unk_1BE0B7E50);
    MEMORY[0x1BFB45F20](v17, -1, -1);
    MEMORY[0x1BFB45F20](v16, -1, -1);

    v14, v20, v21, v22, v23, v24, v25, v26;
  }

  else
  {
    *(v0 + 96), v6, v7, v8, v9, v10, v11, v12;
  }

  (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
  while (1)
  {
    v34 = *(v0 + 88) + 1;
    if (v34 == *(v0 + 80))
    {
      break;
    }

    *(v0 + 88) = v34;
    v35 = *(v0 + 72);
    if ((v35 & 0xC000000000000001) != 0)
    {
      v36 = MEMORY[0x1BFB40900]();
    }

    else
    {
      v36 = *(v35 + 8 * v34 + 32);
      sub_1BE048964();
    }

    *(v0 + 96) = v36;
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 104) = Strong;
    if (Strong)
    {
      v47 = v36[3];
      ObjectType = swift_getObjectType();
      v51 = (*(v47 + 16) + **(v47 + 16));
      v49 = swift_task_alloc();
      *(v0 + 112) = v49;
      *v49 = v0;
      v49[1] = sub_1BD9FC05C;
      v50 = *(v0 + 128);

      return v51(v50, ObjectType, v47);
    }

    v36, v38, v39, v40, v41, v42, v43, v44;
  }

  *(v0 + 72), v27, v28, v29, v30, v31, v32, v33;

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_1BD9FC674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[14] = a4;
  v5[15] = v4;
  v5[12] = a2;
  v5[13] = a3;
  v5[11] = a1;
  v6 = sub_1BE04B2D4();
  v5[16] = v6;
  v7 = *(v6 - 8);
  v5[17] = v7;
  v5[18] = *(v7 + 64);
  v5[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  v5[20] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
  v5[21] = v8;
  v9 = *(v8 - 8);
  v5[22] = v9;
  v5[23] = *(v9 + 64);
  v5[24] = swift_task_alloc();
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD402D0, &unk_1BE0C7D50) - 8);
  v5[25] = v10;
  v5[26] = *(v10 + 64);
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD9FC864, v4, 0);
}

uint64_t sub_1BD9FC864()
{
  v1 = v0[28];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[13];
  sub_1BE053D74();
  sub_1BE04AF64();
  sub_1BDA1396C(&qword_1EBD52550, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1BE052294();
  sub_1BE052294();
  sub_1BD0DE19C(v4, v1, &qword_1EBD402D0, &unk_1BE0C7D50);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1BE053D24();
  }

  else
  {
    v5 = v0[24];
    sub_1BD0DE204(v0[28], v5, &qword_1EBD38DB8, &unk_1BE0BD340);
    sub_1BE053D24();
    sub_1BE052294();
    sub_1BE052294();
    sub_1BD0DE53C(v5, &qword_1EBD38DB8, &unk_1BE0BD340);
  }

  v6 = v0[15];
  sub_1BDA1396C(&qword_1EBD398C8, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AD8]);
  sub_1BE052294();
  v7 = sub_1BE053D54();
  v8 = OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_cache;
  v0[29] = v7;
  v0[30] = v8;
  swift_beginAccess();
  v9 = *(v6 + v8);
  if (*(v9 + 16) && (v10 = sub_1BD149084(v7), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
    v0[31] = v12;
    sub_1BE048964();
    v13 = swift_task_alloc();
    v0[32] = v13;
    v14 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model(0);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
    *v13 = v0;
    v13[1] = sub_1BD9FCDF8;
    v16 = v0[11];
    v17 = MEMORY[0x1E69E7288];
    v18 = v12;
    v19 = v14;
  }

  else
  {
    v20 = v0[27];
    v21 = v0[24];
    v44 = v0[25];
    v45 = v0[26];
    v38 = v20;
    v39 = v21;
    v42 = v0[22];
    v43 = v0[23];
    v22 = v0[19];
    v23 = v0[20];
    v24 = v0[17];
    v46 = v23;
    v41 = v0[16];
    v40 = v0[14];
    v37 = v0[13];
    v47 = v7;
    v25 = v0[12];
    v26 = sub_1BE0528D4();
    (*(*(v26 - 8) + 56))(v23, 1, 1, v26);
    v27 = swift_allocObject();
    swift_weakInit();
    sub_1BD0DE19C(v25, v21, &qword_1EBD38DB8, &unk_1BE0BD340);
    sub_1BD0DE19C(v37, v20, &qword_1EBD402D0, &unk_1BE0C7D50);
    (*(v24 + 16))(v22, v40, v41);
    v28 = (*(v42 + 80) + 40) & ~*(v42 + 80);
    v29 = (v43 + *(v44 + 80) + v28) & ~*(v44 + 80);
    v30 = (v45 + *(v24 + 80) + v29) & ~*(v24 + 80);
    v31 = swift_allocObject();
    *(v31 + 2) = 0;
    *(v31 + 3) = 0;
    *(v31 + 4) = v27;
    sub_1BD0DE204(v39, &v31[v28], &qword_1EBD38DB8, &unk_1BE0BD340);
    sub_1BD0DE204(v38, &v31[v29], &qword_1EBD402D0, &unk_1BE0C7D50);
    (*(v24 + 32))(&v31[v30], v22, v41);
    v32 = sub_1BDA54610(0, 0, v46, &unk_1BE10DE78, v31);
    v0[34] = v32;
    swift_beginAccess();
    sub_1BE048964();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = *(v6 + v8);
    *(v6 + v8) = 0x8000000000000000;
    sub_1BD1DB458(v32, v47, isUniquelyReferenced_nonNull_native);
    *(v6 + v8) = v48;
    swift_endAccess();
    v34 = swift_task_alloc();
    v0[35] = v34;
    v35 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model(0);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
    *v34 = v0;
    v34[1] = sub_1BD9FCFCC;
    v16 = v0[11];
    v17 = MEMORY[0x1E69E7288];
    v18 = v32;
    v19 = v35;
  }

  return MEMORY[0x1EEE6DA10](v16, v18, v19, v15, v17);
}

uint64_t sub_1BD9FCDF8()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = *(v2 + 120);
  if (v0)
  {
    v4 = sub_1BD9FD1A0;
  }

  else
  {
    v4 = sub_1BD9FCF24;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1BD9FCF24(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 248), a2, a3, a4, a5, a6, a7, a8;

  v9 = *(v8 + 8);

  return v9();
}

uint64_t sub_1BD9FCFCC()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  v3 = *(v2 + 120);
  if (v0)
  {
    v4 = sub_1BD9FD248;
  }

  else
  {
    v4 = sub_1BD9FD0F8;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1BD9FD0F8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 272), a2, a3, a4, a5, a6, a7, a8;

  v9 = *(v8 + 8);

  return v9();
}

uint64_t sub_1BD9FD1A0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 248), a2, a3, a4, a5, a6, a7, a8;

  v9 = *(v8 + 8);

  return v9();
}

uint64_t sub_1BD9FD248()
{
  v1 = *(v0 + 232);
  swift_beginAccess();
  v2 = sub_1BD6B1EB4(v1);
  swift_endAccess();
  v2, v3, v4, v5, v6, v7, v8, v9;
  swift_willThrow();
  *(v0 + 272), v10, v11, v12, v13, v14, v15, v16;

  v17 = *(v0 + 8);

  return v17();
}

BOOL sub_1BD9FD33C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD507E8, &qword_1BE0F10D0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v19 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD507F0, &qword_1BE0F10D8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD507F8, &qword_1BE0F10E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v19 - v8;
  v10 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model(0);
  sub_1BD0DE19C(v0 + v10[9], v9, &qword_1EBD507F8, &qword_1BE0F10E0);
  v11 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.IncomeBreakdown(0);
  v12 = 1;
  v13 = (*(*(v11 - 8) + 48))(v9, 1, v11);
  sub_1BD0DE53C(v9, &qword_1EBD507F8, &qword_1BE0F10E0);
  if (v13 == 1)
  {
    sub_1BD0DE19C(v0 + v10[10], v6, &qword_1EBD507F0, &qword_1BE0F10D8);
    v14 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ReimbursementsBreakdown(0);
    v15 = (*(*(v14 - 8) + 48))(v6, 1, v14);
    sub_1BD0DE53C(v6, &qword_1EBD507F0, &qword_1BE0F10D8);
    if (v15 == 1)
    {
      sub_1BD0DE19C(v0 + v10[11], v3, &qword_1EBD507E8, &qword_1BE0F10D0);
      v16 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ManuallyExcludedBreakdown(0);
      v17 = (*(*(v16 - 8) + 48))(v3, 1, v16);
      sub_1BD0DE53C(v3, &qword_1EBD507E8, &qword_1BE0F10D0);
      if (v17 == 1)
      {
        return *(v0 + v10[12]) != 0;
      }
    }
  }

  return v12;
}

void sub_1BD9FD5FC(uint64_t *a1)
{
  v2 = *(sub_1BE049774() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1BD5ED808(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1BDA0DC70(v5, MEMORY[0x1E6967838], sub_1BDA0E9B0, sub_1BDA0DDC0);
  *a1 = v3;
}

void sub_1BD9FD6E0(uint64_t *a1)
{
  v2 = *(sub_1BE0497B4() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1BD5ED81C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1BDA0DC70(v5, MEMORY[0x1E6967840], sub_1BDA0FA04, sub_1BDA0E3A8);
  *a1 = v3;
}

void sub_1BD9FD7C4(uint64_t a1)
{
  v2 = v1;
  v37 = a1;
  v3 = sub_1BE04AFE4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v6 = (v1 + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_availableRanges);
  v6[1] = 0;
  v6[2] = 0;
  *v6 = 0;
  v7 = OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_store;
  sub_1BE0490F4();
  *(v1 + v7) = sub_1BE0490B4();
  sub_1BE052434();
  v9 = v8;
  v10 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v11 = sub_1BE052404();
  v9, v12, v13, v14, v15, v16, v17, v18;
  v19 = [v10 initWithSuiteName_];

  if (v19)
  {
    *(v1 + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_userDefaults) = v19;
    v20 = OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_calendar;
    sub_1BE04B1E4();
    v21 = OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_metadataFetcher;
    v22 = sub_1BE0490B4();
    type metadata accessor for FinanceKitGroupMetadataDataProvider();
    v23 = swift_allocObject();
    swift_defaultActor_initialize();
    v24 = MEMORY[0x1E69E7CC0];
    v25 = sub_1BD1AC9E4(MEMORY[0x1E69E7CC0]);
    *(v23 + 112) = v22;
    *(v23 + 120) = v25;
    *(v1 + v21) = v23;
    *(v1 + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_startUpTask) = 0;
    *(v1 + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_transactionUpdatesTask) = 0;
    v26 = OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_cache;
    *(v1 + v26) = sub_1BD1ACC14(v24);
    *(v1 + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_observers) = v24;
    v27 = *(v4 + 16);
    v28 = v37;
    v27(v1 + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_accountID, v37, v3);
    v29 = OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_spendingAggregator;
    v30 = sub_1BE04B2F4();
    (*(*(v30 - 8) + 16))(v1 + v29, v1 + v20, v30);
    v31 = v36;
    v27(v36, v28, v3);
    v32 = sub_1BE0490B4();
    type metadata accessor for FinanceKitSpendingSummaryFetcher(0);
    v33 = swift_allocObject();
    swift_defaultActor_initialize();
    v34 = OBJC_IVAR____TtC9PassKitUI32FinanceKitSpendingSummaryFetcher_cache;
    v35 = sub_1BD1ACC00(v24);
    (*(v4 + 8))(v28, v3);
    *(v33 + v34) = v35;
    (*(v4 + 32))(v33 + OBJC_IVAR____TtC9PassKitUI32FinanceKitSpendingSummaryFetcher_accountID, v31, v3);
    *(v33 + OBJC_IVAR____TtC9PassKitUI32FinanceKitSpendingSummaryFetcher_store) = v32;
    *(v2 + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_summaryFetcher) = v33;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD9FDAE4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_transactionUpdatesTask;
  v10 = *(v8 + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_transactionUpdatesTask);
  if (v10)
  {
    sub_1BE048964();
    sub_1BE052944();
    v10, v11, v12, v13, v14, v15, v16, v17;
    v18 = *(v8 + v9);
  }

  else
  {
    v18 = 0;
  }

  *(v8 + v9) = 0;
  v18, a2, a3, a4, a5, a6, a7, a8;
  v19 = OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_accountID;
  v20 = sub_1BE04AFE4();
  (*(*(v20 - 8) + 8))(v8 + v19, v20);
  sub_1BDA13DC4(*(v8 + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_availableRanges), *(v8 + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_availableRanges + 8), *(v8 + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_availableRanges + 16), v21, v22, v23, v24, v25);
  *(v8 + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_store), v26, v27, v28, v29, v30, v31, v32;

  v33 = OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_calendar;
  v34 = sub_1BE04B2F4();
  (*(*(v34 - 8) + 8))(v8 + v33, v34);
  sub_1BDA138A4(v8 + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_spendingAggregator, type metadata accessor for FinanceKitDailyCategorySpendingAggregator);
  *(v8 + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_summaryFetcher), v35, v36, v37, v38, v39, v40, v41;
  *(v8 + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_metadataFetcher), v42, v43, v44, v45, v46, v47, v48;
  *(v8 + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_startUpTask), v49, v50, v51, v52, v53, v54, v55;
  *(v8 + v9), v56, v57, v58, v59, v60, v61, v62;
  *(v8 + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_cache), v63, v64, v65, v66, v67, v68, v69;
  *(v8 + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_observers), v70, v71, v72, v73, v74, v75, v76;
  swift_defaultActor_destroy();
  return v8;
}

uint64_t sub_1BD9FDC9C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  sub_1BD9FDAE4(a1, a2, a3, a4, a5, a6, a7, a8);

  return MEMORY[0x1EEE6DEF0](v8);
}

uint64_t sub_1BD9FDCF0(uint64_t a1)
{
  result = sub_1BE04AFE4();
  if (v2 <= 0x3F)
  {
    result = sub_1BE04B2F4();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1BD9FDE08()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD9FDEA4, v0, 0);
}

uint64_t sub_1BD9FDEA4()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_startUpTask;
  v0[4] = OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_startUpTask;
  v3 = *(v1 + v2);
  v0[5] = v3;
  if (v3)
  {
    sub_1BE048964();
    v4 = swift_task_alloc();
    v0[6] = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
    *v4 = v0;
    v6 = sub_1BD9FE0E8;
  }

  else
  {
    v7 = v0[3];
    v8 = sub_1BE0528D4();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = sub_1BDA1396C(&qword_1EBD5BDC0, type metadata accessor for FinanceKitSpendingSummaryDataProvider, &unk_1BE10DDB0);
    v10 = swift_allocObject();
    v10[2] = v1;
    v10[3] = v9;
    v10[4] = v1;
    swift_retain_n();
    v3 = sub_1BDA543A4(0, 0, v7, &unk_1BE10DED8, v10);
    v0[8] = v3;
    v11 = *(v1 + v2);
    *(v1 + v2) = v3;
    sub_1BE048964();
    v11, v12, v13, v14, v15, v16, v17, v18;
    v4 = swift_task_alloc();
    v0[9] = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
    *v4 = v0;
    v6 = sub_1BD9FE280;
  }

  v4[1] = v6;
  v19 = MEMORY[0x1E69E7288];
  v20 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA10](v5, v3, v20, v5, v19);
}

uint64_t sub_1BD9FE0E8()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = sub_1BD9FE418;
  }

  else
  {
    v4 = sub_1BD9FE214;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1BD9FE214(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 40), a2, a3, a4, a5, a6, a7, a8;

  v9 = *(v8 + 8);

  return v9();
}

uint64_t sub_1BD9FE280()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = sub_1BD9FE484;
  }

  else
  {
    v4 = sub_1BD9FE3AC;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1BD9FE3AC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 64), a2, a3, a4, a5, a6, a7, a8;

  v9 = *(v8 + 8);

  return v9();
}

uint64_t sub_1BD9FE418(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 40), a2, a3, a4, a5, a6, a7, a8;

  v9 = *(v8 + 8);

  return v9();
}

uint64_t sub_1BD9FE484(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = v8[8];
  v10 = v8[4];
  v11 = v8[2];
  v12 = *(v11 + v10);
  *(v11 + v10) = 0;
  v12, a2, a3, a4, a5, a6, a7, a8;
  swift_willThrow();
  v9, v13, v14, v15, v16, v17, v18, v19;

  v20 = v8[1];

  return v20();
}

uint64_t sub_1BD9FE518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  v4[5] = swift_task_alloc();
  v4[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BDC8, &qword_1BE10DEE0);
  v4[7] = swift_task_alloc();
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BDD0, &qword_1BE10DEE8) - 8);
  v4[8] = v5;
  v4[9] = *(v5 + 64);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BDD8, &unk_1BE10DEF0);
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980, &qword_1BE0BF3C0);
  v4[15] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BDE0, &unk_1BE10DF00);
  v4[16] = v7;
  v4[17] = *(v7 - 8);
  v4[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F788, &unk_1BE0E2970);
  v8 = swift_task_alloc();
  v4[19] = v8;
  v9 = swift_task_alloc();
  v4[20] = v9;
  *v9 = v4;
  v9[1] = sub_1BD9FE7E4;

  return sub_1BD9FEFD8(v8);
}

uint64_t sub_1BD9FE7E4()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_1BD9FEF14;
  }

  else
  {
    v4 = sub_1BD9FE910;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1BD9FE910()
{
  v1 = v0[21];
  v2 = v0[15];
  v3 = v0[4];
  v4 = OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_accountID;
  v5 = sub_1BE04AFE4();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v2, v3 + v4, v5);
  (*(v6 + 56))(v2, 0, 1, v5);
  v7 = sub_1BE048FD4();
  if (v1)
  {
    v8 = v0[19];
    sub_1BD0DE53C(v0[15], &qword_1EBD39980, &qword_1BE0BF3C0);
    sub_1BD0DE53C(v8, &qword_1EBD3F788, &unk_1BE0E2970);
  }

  else
  {
    v9 = v7;
    sub_1BD0DE53C(v0[15], &qword_1EBD39980, &qword_1BE0BF3C0);
    v0[2] = v9;
    sub_1BE049E84();
    sub_1BDA1396C(&qword_1EBD5BDE8, MEMORY[0x1E6967C90], MEMORY[0x1E6967C98]);
    sub_1BE053984();
    v10 = sub_1BE048F64();
    v40 = v0[19];
    v39 = v0[17];
    v32 = v0[16];
    v33 = v0[18];
    v13 = v0[14];
    v14 = v0[11];
    v37 = v0[9];
    v38 = v0[13];
    v35 = v0[10];
    v36 = v0[8];
    v15 = v0[7];
    v30 = v0[5];
    v31 = v0[12];
    v34 = v0[4];
    v0[3] = v10;
    sub_1BE049CA4();
    sub_1BDA1396C(&qword_1EBD5BDF0, MEMORY[0x1E6967BB8], MEMORY[0x1E6967BC0]);
    sub_1BE053984();
    v16 = MEMORY[0x1E69E8878];
    sub_1BD0DE4F4(&qword_1EBD5BDF8, &qword_1EBD5BDE0, &unk_1BE10DF00, MEMORY[0x1E69E8878]);
    sub_1BD0DE4F4(&qword_1EBD5BE00, &qword_1EBD5BDD8, &unk_1BE10DEF0, v16);
    sub_1BE04CF74();
    sub_1BD0DE4F4(&qword_1EBD5BE08, &qword_1EBD5BDC8, &qword_1BE10DEE0, MEMORY[0x1E698D2E0]);
    sub_1BE0529D4();
    sub_1BD0DE53C(v15, &qword_1EBD5BDC8, &qword_1BE10DEE0);
    v17 = sub_1BE0528D4();
    (*(*(v17 - 8) + 56))(v30, 1, 1, v17);
    v18 = swift_allocObject();
    swift_weakInit();
    sub_1BD0DE19C(v14, v35, &qword_1EBD5BDD0, &qword_1BE10DEE8);
    v19 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    sub_1BD0DE204(v35, v20 + v19, &qword_1EBD5BDD0, &qword_1BE10DEE8);
    *(v20 + ((v37 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = v18;
    v21 = sub_1BD122C00(0, 0, v30, &unk_1BE10DF30, v20);
    sub_1BD0DE53C(v14, &qword_1EBD5BDD0, &qword_1BE10DEE8);
    (*(v38 + 8))(v13, v31);
    (*(v39 + 8))(v33, v32);
    sub_1BD0DE53C(v40, &qword_1EBD3F788, &unk_1BE0E2970);
    v22 = *(v34 + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_transactionUpdatesTask);
    *(v34 + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_transactionUpdatesTask) = v21;
    v22, v23, v24, v25, v26, v27, v28, v29;
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1BD9FEF14()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD9FEFD8(uint64_t a1)
{
  v2[179] = v1;
  v2[173] = a1;
  v3 = sub_1BE04B2D4();
  v2[185] = v3;
  v2[191] = *(v3 - 8);
  v2[197] = swift_task_alloc();
  v4 = sub_1BE049A94();
  v2[203] = v4;
  v2[209] = *(v4 - 8);
  v2[210] = swift_task_alloc();
  v2[211] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  v2[212] = swift_task_alloc();
  v2[213] = swift_task_alloc();
  v5 = sub_1BE04AF64();
  v2[214] = v5;
  v2[215] = *(v5 - 8);
  v2[216] = swift_task_alloc();
  v2[217] = swift_task_alloc();
  v6 = sub_1BE049D74();
  v2[218] = v6;
  v2[219] = *(v6 - 8);
  v2[220] = swift_task_alloc();
  v2[221] = swift_task_alloc();
  v2[222] = swift_task_alloc();
  v2[223] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DF0, &unk_1BE0E8DB0);
  v2[224] = v7;
  v8 = *(v7 - 8);
  v2[225] = v8;
  v2[226] = *(v8 + 64);
  v2[227] = swift_task_alloc();
  v2[228] = swift_task_alloc();
  v2[229] = swift_task_alloc();
  v9 = sub_1BE04AFE4();
  v2[230] = v9;
  v2[231] = *(v9 - 8);
  v2[232] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD9FF314, v1, 0);
}

uint64_t sub_1BD9FF314()
{
  v1 = v0[232];
  v2 = v0[229];
  v3 = v0[228];
  v4 = v0[225];
  v16 = v0[227];
  v15 = v0[224];
  v5 = v0[203];
  v6 = v0[179];
  (*(v0[231] + 16))(v1, v6 + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_accountID, v0[230]);
  *(swift_task_alloc() + 16) = v1;
  v0[167] = v5;
  swift_allocateMetadataPack();
  v14 = v2;
  sub_1BE04B444();

  v13 = *(v4 + 16);
  v13(v3, v2, v15);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  v0[233] = v8;
  *(v8 + 16) = v6;
  v12 = *(v4 + 32);
  v12(v8 + v7, v3, v15);
  sub_1BE048964();
  swift_asyncLet_begin();
  v13(v16, v14, v15);
  v9 = swift_allocObject();
  v0[234] = v9;
  *(v9 + 16) = v6;
  v12(v9 + v7, v16, v15);
  sub_1BE048964();
  swift_asyncLet_begin();
  v10 = v0[223];

  return MEMORY[0x1EEE6DEC0](v0 + 2, v10, sub_1BD9FF590, v0 + 162);
}

uint64_t sub_1BD9FF590()
{
  v1[235] = v0;
  if (v0)
  {
    v2 = v1[179];

    return MEMORY[0x1EEE6DFA0](sub_1BD9FFD48, v2, 0);
  }

  else
  {
    v3 = v1[223];
    v4 = v1[221];
    v5 = v1[219];
    v6 = v1[218];
    v7 = *(v5 + 16);
    v1[236] = v7;
    v1[237] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v7(v4, v3, v6);
    v8 = v1[222];

    return MEMORY[0x1EEE6DEC0](v1 + 82, v8, sub_1BD9FF664, v1 + 180);
  }
}

uint64_t sub_1BD9FF664()
{
  *(v1 + 1904) = v0;
  if (v0)
  {
    v2 = sub_1BD9FFF60;
  }

  else
  {
    v2 = sub_1BD9FF698;
  }

  return MEMORY[0x1EEE6DFA0](v2, *(v1 + 1432), 0);
}

uint64_t sub_1BD9FF698()
{
  (*(v0 + 1888))(*(v0 + 1760), *(v0 + 1776), *(v0 + 1744));
  v1 = sub_1BE049D54();
  v9 = *(v0 + 1736);
  v10 = *(v0 + 1720);
  v11 = *(v0 + 1712);
  v12 = *(v0 + 1704);
  if (v1[2])
  {
    v13 = *(v0 + 1688);
    v14 = *(v0 + 1672);
    v15 = *(v0 + 1624);
    v16 = v1;
    (*(v14 + 16))(v13, v1 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), v15);
    v16, v17, v18, v19, v20, v21, v22, v23;
    sub_1BE049974();
    (*(v14 + 8))(v13, v15);
    v24 = *(v10 + 56);
    v24(v12, 0, 1, v11);
    (*(v10 + 32))(v9, v12, v11);
  }

  else
  {
    v1, v2, v3, v4, v5, v6, v7, v8;
    v24 = *(v10 + 56);
    v24(v12, 1, 1, v11);
    sub_1BE04AEF4();
    if ((*(v10 + 48))(v12, 1, v11) != 1)
    {
      sub_1BD0DE53C(*(v0 + 1704), &unk_1EBD39970, &unk_1BE0B9F80);
    }
  }

  v25 = sub_1BE049D54();
  v33 = *(v0 + 1728);
  v34 = *(v0 + 1720);
  v35 = *(v0 + 1712);
  v36 = *(v0 + 1696);
  if (v25[2])
  {
    v37 = *(v0 + 1680);
    v38 = *(v0 + 1672);
    v39 = *(v0 + 1624);
    v40 = v25;
    (*(v38 + 16))(v37, v25 + ((*(v38 + 80) + 32) & ~*(v38 + 80)), v39);
    v40, v41, v42, v43, v44, v45, v46, v47;
    sub_1BE049974();
    (*(v38 + 8))(v37, v39);
    v24(v36, 0, 1, v35);
    (*(v34 + 32))(v33, v36, v35);
  }

  else
  {
    v25, v26, v27, v28, v29, v30, v31, v32;
    v24(v36, 1, 1, v35);
    sub_1BE04AEF4();
    if ((*(v34 + 48))(v36, 1, v35) != 1)
    {
      sub_1BD0DE53C(*(v0 + 1696), &unk_1EBD39970, &unk_1BE0B9F80);
    }
  }

  v76 = *(v0 + 1744);
  v77 = *(v0 + 1768);
  v48 = *(v0 + 1736);
  v49 = *(v0 + 1728);
  v72 = *(v0 + 1720);
  v73 = *(v0 + 1760);
  v74 = *(v0 + 1712);
  v75 = *(v0 + 1752);
  v50 = *(v0 + 1576);
  v51 = *(v0 + 1528);
  v52 = *(v0 + 1480);
  v53 = *(v0 + 1432);
  v54 = *(v51 + 104);
  v54(v50, *MEMORY[0x1E6969A20], v52);
  v71 = sub_1BDA0C658(v50, v48, v49);
  v55 = *(v51 + 8);
  v55(v50, v52);
  v54(v50, *MEMORY[0x1E6969A78], v52);
  v70 = sub_1BDA0C658(v50, v48, v49);
  v55(v50, v52);
  v54(v50, *MEMORY[0x1E6969A68], v52);
  v56 = sub_1BDA0C658(v50, v48, v49);
  v55(v50, v52);
  v57 = (v53 + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_availableRanges);
  v58 = *(v53 + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_availableRanges);
  v59 = *(v53 + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_availableRanges + 8);
  v60 = *(v53 + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_availableRanges + 16);
  *v57 = v71;
  v57[1] = v70;
  v57[2] = v56;
  sub_1BDA13DC4(v58, v59, v60, v61, v62, v63, v64, v65);
  sub_1BE049D64();
  v66 = *(v72 + 8);
  v66(v49, v74);
  v66(v48, v74);
  v67 = *(v75 + 8);
  v67(v73, v76);
  v67(v77, v76);
  v68 = *(v0 + 1776);

  return MEMORY[0x1EEE6DEB0](v0 + 656, v68, sub_1BD9FFB58, v0 + 1584);
}

uint64_t sub_1BD9FFBB0()
{
  v1 = v0[234];
  v2 = v0[233];
  v3 = v0[232];
  v4 = v0[231];
  v5 = v0[230];
  (*(v0[225] + 8))(v0[229], v0[224]);
  (*(v4 + 8))(v3, v5);
  v2, v6, v7, v8, v9, v10, v11, v12;
  v1, v13, v14, v15, v16, v17, v18, v19;

  v20 = v0[1];

  return v20();
}

uint64_t sub_1BD9FFDC0()
{
  v1 = v0[234];
  v2 = v0[233];
  v3 = v0[232];
  v4 = v0[231];
  v5 = v0[230];
  (*(v0[225] + 8))(v0[229], v0[224]);
  (*(v4 + 8))(v3, v5);
  v2, v6, v7, v8, v9, v10, v11, v12;
  v1, v13, v14, v15, v16, v17, v18, v19;

  v20 = v0[1];

  return v20();
}

uint64_t sub_1BD9FFF60()
{
  (*(v0[219] + 8))(v0[221], v0[218]);
  v1 = v0[222];

  return MEMORY[0x1EEE6DEB0](v0 + 82, v1, sub_1BD9FFFE0, v0 + 186);
}

uint64_t sub_1BDA00038()
{
  v1 = v0[234];
  v2 = v0[233];
  v3 = v0[232];
  v4 = v0[231];
  v5 = v0[230];
  (*(v0[225] + 8))(v0[229], v0[224]);
  (*(v4 + 8))(v3, v5);
  v2, v6, v7, v8, v9, v10, v11, v12;
  v1, v13, v14, v15, v16, v17, v18, v19;

  v20 = v0[1];

  return v20();
}

uint64_t sub_1BDA001D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v6 = sub_1BE04D214();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F788, &unk_1BE0E2970);
  v5[15] = swift_task_alloc();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BE10, &qword_1BE10DF38);
  v5[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BDA00318, 0, 0);
}

uint64_t sub_1BDA00318()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BDD0, &qword_1BE10DEE8);
  sub_1BE04CF54();
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  v1[1] = sub_1BDA003F4;
  v2 = *(v0 + 128);

  return MEMORY[0x1EEDEE7E8](v0 + 248, v2);
}

uint64_t sub_1BDA003F4()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_1BDA00648;
  }

  else
  {
    *(v2 + 249) = *(v2 + 248);
    v3 = sub_1BDA00510;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1BDA00510(uint64_t a1)
{
  if ((*(v1 + 249) & 1) != 0 || (sub_1BE052974() & 1) != 0 || (Strong = swift_weakLoadStrong(), (*(v1 + 160) = Strong) == 0))
  {
    sub_1BD0DE53C(*(v1 + 136), &qword_1EBD5BE10, &qword_1BE10DF38);

    v6 = *(v1 + 8);

    return v6();
  }

  else
  {
    v3 = swift_task_alloc();
    *(v1 + 168) = v3;
    *v3 = v1;
    v3[1] = sub_1BDA00898;
    v4 = *(v1 + 120);

    return sub_1BD9FEFD8(v4);
  }
}

uint64_t sub_1BDA00648()
{
  *(v0 + 64) = *(v0 + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
  swift_willThrowTypedImpl();

  return MEMORY[0x1EEE6DFA0](sub_1BDA006DC, 0, 0);
}

uint64_t sub_1BDA006DC()
{
  v1 = v0[19];
  sub_1BD0DE53C(v0[17], &qword_1EBD5BE10, &qword_1BE10DF38);
  sub_1BE04D114();
  v2 = v1;
  v3 = sub_1BE04D204();
  v4 = sub_1BE052C34();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_1BD026000, v3, v4, "Failed to listen to transaction updates with error: %@.", v5, 0xCu);
    sub_1BD0DE53C(v6, &unk_1EBD3E590, &unk_1BE0B7E50);
    MEMORY[0x1BFB45F20](v6, -1, -1);
    MEMORY[0x1BFB45F20](v5, -1, -1);
  }

  else
  {
  }

  (*(v0[12] + 8))(v0[14], v0[11]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1BDA00898()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_1BDA01168;
  }

  else
  {
    sub_1BD0DE53C(*(v2 + 120), &qword_1EBD3F788, &unk_1BE0E2970);
    v3 = sub_1BDA009C4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1BDA009C4()
{
  v1 = swift_task_alloc();
  *(v0 + 184) = v1;
  *v1 = v0;
  v1[1] = sub_1BDA00A54;

  return sub_1BDA01680();
}

uint64_t sub_1BDA00A54()
{
  v1 = *(*v0 + 160);

  return MEMORY[0x1EEE6DFA0](sub_1BDA00B64, v1, 0);
}

uint64_t sub_1BDA00B64()
{
  v1 = *(v0 + 160);
  v2 = OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_observers;
  swift_beginAccess();
  *(v0 + 192) = *(v1 + v2);
  sub_1BE048C84();

  return MEMORY[0x1EEE6DFA0](sub_1BDA00BF4, 0, 0);
}

uint64_t sub_1BDA00BF4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v9 = v8[24];
  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8[25] = v10;
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_10:
    v22 = v8[20];
    v8[24], a2, a3, a4, a5, a6, a7, a8;
    v22, v23, v24, v25, v26, v27, v28, v29;
    v30 = swift_task_alloc();
    v8[18] = v30;
    *v30 = v8;
    v30[1] = sub_1BDA003F4;
    a2 = v8[16];
    v10 = (v8 + 31);

    return MEMORY[0x1EEDEE7E8](v10, a2);
  }

  v10 = sub_1BE053704();
  v8[25] = v10;
  if (!v10)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v10 < 1)
  {
    __break(1u);
    return MEMORY[0x1EEDEE7E8](v10, a2);
  }

  v11 = 0;
  while (1)
  {
    v8[26] = v11;
    v12 = v8[24];
    if ((v12 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1BFB40900]();
    }

    else
    {
      v13 = *(v12 + 8 * v11 + 32);
      sub_1BE048964();
    }

    v8[27] = v13;
    Strong = swift_unknownObjectWeakLoadStrong();
    v8[28] = Strong;
    if (Strong)
    {
      break;
    }

    v13, v15, v16, v17, v18, v19, v20, v21;
    v11 = v8[26] + 1;
    if (v11 == v8[25])
    {
      goto LABEL_10;
    }
  }

  v31 = v13[3];
  ObjectType = swift_getObjectType();
  v35 = (*(v31 + 8) + **(v31 + 8));
  v33 = swift_task_alloc();
  v8[29] = v33;
  *v33 = v8;
  v33[1] = sub_1BDA00E40;

  return v35(ObjectType, v31);
}

uint64_t sub_1BDA00E40()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_1BDA0132C;
  }

  else
  {
    swift_unknownObjectRelease();
    v2 = sub_1BDA00F5C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BDA00F5C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  for (i = *(v8 + 216); ; i = v19)
  {
    i, a2, a3, a4, a5, a6, a7, a8;
    v17 = *(v8 + 208) + 1;
    if (v17 == *(v8 + 200))
    {
      break;
    }

    *(v8 + 208) = v17;
    v18 = *(v8 + 192);
    if ((v18 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x1BFB40900]();
    }

    else
    {
      v19 = *(v18 + 8 * v17 + 32);
      sub_1BE048964();
    }

    *(v8 + 216) = v19;
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v8 + 224) = Strong;
    if (Strong)
    {
      v31 = *(v19 + 24);
      ObjectType = swift_getObjectType();
      v35 = (*(v31 + 8) + **(v31 + 8));
      v33 = swift_task_alloc();
      *(v8 + 232) = v33;
      *v33 = v8;
      v33[1] = sub_1BDA00E40;

      return v35(ObjectType, v31);
    }
  }

  v21 = *(v8 + 160);
  *(v8 + 192), v10, v11, v12, v13, v14, v15, v16;
  v21, v22, v23, v24, v25, v26, v27, v28;
  v29 = swift_task_alloc();
  *(v8 + 144) = v29;
  *v29 = v8;
  v29[1] = sub_1BDA003F4;
  v30 = *(v8 + 128);

  return MEMORY[0x1EEDEE7E8](v8 + 248, v30);
}

uint64_t sub_1BDA01168(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 160), a2, a3, a4, a5, a6, a7, a8;
  v9 = *(v8 + 176);
  sub_1BD0DE53C(*(v8 + 136), &qword_1EBD5BE10, &qword_1BE10DF38);
  sub_1BE04D114();
  v10 = v9;
  v11 = sub_1BE04D204();
  v12 = sub_1BE052C34();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = v9;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_1BD026000, v11, v12, "Failed to listen to transaction updates with error: %@.", v13, 0xCu);
    sub_1BD0DE53C(v14, &unk_1EBD3E590, &unk_1BE0B7E50);
    MEMORY[0x1BFB45F20](v14, -1, -1);
    MEMORY[0x1BFB45F20](v13, -1, -1);
  }

  else
  {
  }

  (*(*(v8 + 96) + 8))(*(v8 + 112), *(v8 + 88));

  v17 = *(v8 + 8);

  return v17();
}

uint64_t sub_1BDA0132C()
{
  v1 = *(v0 + 240);
  swift_unknownObjectRelease();
  sub_1BE04D114();
  v2 = v1;
  v3 = sub_1BE04D204();
  v4 = sub_1BE052C34();

  v5 = os_log_type_enabled(v3, v4);
  v13 = *(v0 + 240);
  v14 = *(v0 + 216);
  if (v5)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    v17 = v13;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v18;
    *v16 = v18;
    _os_log_impl(&dword_1BD026000, v3, v4, "Observer failed to invalidate spending summaries with error: %@.", v15, 0xCu);
    sub_1BD0DE53C(v16, &unk_1EBD3E590, &unk_1BE0B7E50);
    MEMORY[0x1BFB45F20](v16, -1, -1);
    MEMORY[0x1BFB45F20](v15, -1, -1);

    v14, v19, v20, v21, v22, v23, v24, v25;
  }

  else
  {
    *(v0 + 216), v6, v7, v8, v9, v10, v11, v12;
  }

  (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
  while (1)
  {
    v33 = *(v0 + 208) + 1;
    if (v33 == *(v0 + 200))
    {
      break;
    }

    *(v0 + 208) = v33;
    v34 = *(v0 + 192);
    if ((v34 & 0xC000000000000001) != 0)
    {
      v35 = MEMORY[0x1BFB40900]();
    }

    else
    {
      v35 = *(v34 + 8 * v33 + 32);
      sub_1BE048964();
    }

    *(v0 + 216) = v35;
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 224) = Strong;
    if (Strong)
    {
      v54 = v35[3];
      ObjectType = swift_getObjectType();
      v58 = (*(v54 + 8) + **(v54 + 8));
      v56 = swift_task_alloc();
      *(v0 + 232) = v56;
      *v56 = v0;
      v56[1] = sub_1BDA00E40;

      return v58(ObjectType, v54);
    }

    v35, v37, v38, v39, v40, v41, v42, v43;
  }

  v44 = *(v0 + 160);
  *(v0 + 192), v26, v27, v28, v29, v30, v31, v32;
  v44, v45, v46, v47, v48, v49, v50, v51;
  v52 = swift_task_alloc();
  *(v0 + 144) = v52;
  *v52 = v0;
  v52[1] = sub_1BDA003F4;
  v53 = *(v0 + 128);

  return MEMORY[0x1EEDEE7E8](v0 + 248, v53);
}

uint64_t sub_1BDA016A0()
{
  v1 = *(v0 + 64);
  v2 = OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_cache;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = -1;
  v5 = -1 << *(v3 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v3 + 64);
  v7 = (63 - v5) >> 6;
  v8 = swift_bridgeObjectRetain_n();
  v16 = 0;
  if (v6)
  {
    while (1)
    {
      v17 = v16;
LABEL_9:
      v18 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v19 = *(*(v3 + 56) + ((v17 << 9) | (8 * v18)));
      type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model(0);
      sub_1BE048964();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
      sub_1BE052944();
      v19, v20, v21, v22, v23, v24, v25, v26;
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v8, v9, v10);
    }

    if (v17 >= v7)
    {
      break;
    }

    v6 = *(v3 + 64 + 8 * v17);
    ++v16;
    if (v6)
    {
      v16 = v17;
      goto LABEL_9;
    }
  }

  v27 = *(v0 + 64);
  v3, v9, v10, v11, v12, v13, v14, v15;
  v3, v28, v29, v30, v31, v32, v33, v34;
  v35 = *(v1 + v2);
  *(v1 + v2) = MEMORY[0x1E69E7CC8];
  v35, v36, v37, v38, v39, v40, v41, v42;
  v9 = *(v27 + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_summaryFetcher);
  *(v0 + 72) = v9;
  v8 = sub_1BDA0185C;
  v10 = 0;

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1BDA0185C()
{
  v1 = *(v0 + 64);
  sub_1BD72AD30();

  return MEMORY[0x1EEE6DFA0](sub_1BDA018C4, v1, 0);
}

uint64_t sub_1BDA018C4()
{
  v1 = *(*(v0 + 64) + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_metadataFetcher);
  *(v0 + 80) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1BDA018F0, v1, 0);
}

uint64_t sub_1BDA018F0()
{
  v1 = *(v0 + 80);
  swift_beginAccess();
  v2 = *(v1 + 120);
  *(v1 + 120) = MEMORY[0x1E69E7CC8];
  v2, v3, v4, v5, v6, v7, v8, v9;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1BDA01974(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BD88, &unk_1BE10DE50);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BDA13D70();
  sub_1BE053DA4();
  v12 = 0;
  sub_1BE0493F4();
  sub_1BDA1396C(&qword_1EBD5BD58, MEMORY[0x1E6967790], MEMORY[0x1E6967798]);
  sub_1BE053AF4();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.IncomeBreakdown(0) + 20));
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38F08, &qword_1BE0DF9C0);
    sub_1BDA13BC4(&qword_1EBD38F60, &qword_1EBD38F68, MEMORY[0x1E69695B0], MEMORY[0x1E69E64F0]);
    sub_1BE053AF4();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_1BDA01B90(id *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v39 = sub_1BE0493F4();
  v36 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BD78, &qword_1BE10DE48);
  v7 = *(v6 - 8);
  v37 = v6;
  v38 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - v8;
  v10 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.IncomeBreakdown(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BDA13D70();
  sub_1BE053D94();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1, v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    v34 = v10;
    v20 = v12;
    v21 = v36;
    v42 = 0;
    sub_1BDA1396C(&qword_1EBD5BD48, MEMORY[0x1E6967790], MEMORY[0x1E69677B0]);
    v22 = v39;
    v23 = v37;
    sub_1BE053AA4();
    v24 = *(v21 + 32);
    v33 = v20;
    v24(v20, v5, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38F08, &qword_1BE0DF9C0);
    v41 = 1;
    sub_1BDA13BC4(&qword_1EBD38F50, &qword_1EBD38F58, MEMORY[0x1E69695D0], MEMORY[0x1E69E6510]);
    sub_1BE053AA4();
    (*(v38 + 8))(v9, v23);
    v25 = v33;
    *(v33 + *(v34 + 20)) = v40;
    sub_1BDA13D08(v25, v35, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.IncomeBreakdown);
    __swift_destroy_boxed_opaque_existential_0(a1, v26, v27, v28, v29, v30, v31, v32);
    sub_1BDA138A4(v25, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.IncomeBreakdown);
  }
}

uint64_t sub_1BDA01F64(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BD70, &qword_1BE10DE40);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BDA13CB4();
  sub_1BE053DA4();
  v12 = 0;
  sub_1BE0493F4();
  sub_1BDA1396C(&qword_1EBD5BD58, MEMORY[0x1E6967790], MEMORY[0x1E6967798]);
  sub_1BE053AF4();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ReimbursementsBreakdown(0) + 20));
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38F08, &qword_1BE0DF9C0);
    sub_1BDA13BC4(&qword_1EBD38F60, &qword_1EBD38F68, MEMORY[0x1E69695B0], MEMORY[0x1E69E64F0]);
    sub_1BE053AF4();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_1BDA02180(id *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v39 = sub_1BE0493F4();
  v36 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BD60, &qword_1BE10DE38);
  v7 = *(v6 - 8);
  v37 = v6;
  v38 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - v8;
  v10 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ReimbursementsBreakdown(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BDA13CB4();
  sub_1BE053D94();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1, v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    v34 = v10;
    v20 = v12;
    v21 = v36;
    v42 = 0;
    sub_1BDA1396C(&qword_1EBD5BD48, MEMORY[0x1E6967790], MEMORY[0x1E69677B0]);
    v22 = v39;
    v23 = v37;
    sub_1BE053AA4();
    v24 = *(v21 + 32);
    v33 = v20;
    v24(v20, v5, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38F08, &qword_1BE0DF9C0);
    v41 = 1;
    sub_1BDA13BC4(&qword_1EBD38F50, &qword_1EBD38F58, MEMORY[0x1E69695D0], MEMORY[0x1E69E6510]);
    sub_1BE053AA4();
    (*(v38 + 8))(v9, v23);
    v25 = v33;
    *(v33 + *(v34 + 20)) = v40;
    sub_1BDA13D08(v25, v35, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ReimbursementsBreakdown);
    __swift_destroy_boxed_opaque_existential_0(a1, v26, v27, v28, v29, v30, v31, v32);
    sub_1BDA138A4(v25, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ReimbursementsBreakdown);
  }
}

uint64_t sub_1BDA02558()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0x636E496C61746F74;
  }
}

void sub_1BDA025A0(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v12 = 0xEB00000000656D6FLL;
  v13 = a1 == 0x636E496C61746F74 && a2 == 0xEB00000000656D6FLL;
  if (v13 || (sub_1BE053B84() & 1) != 0)
  {
    a2, v12, a3, a4, a5, a6, a7, a8;
    v14 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001BE147490 == a2)
  {
    a2, 0x80000001BE147490, a3, a4, a5, a6, a7, a8;
    v14 = 1;
  }

  else
  {
    v15 = sub_1BE053B84();
    a2, v16, v17, v18, v19, v20, v21, v22;
    if (v15)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }
  }

  *a9 = v14;
}

uint64_t sub_1BDA02688(uint64_t a1)
{
  v2 = sub_1BDA13D70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BDA026C4(uint64_t a1)
{
  v2 = sub_1BDA13D70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1BDA02730()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0xD000000000000013;
  }
}

void sub_1BDA0276C(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v12 = 0x80000001BE1474B0;
  if (a1 == 0xD000000000000013 && 0x80000001BE1474B0 == a2 || (sub_1BE053B84() & 1) != 0)
  {
    a2, v12, a3, a4, a5, a6, a7, a8;
    v13 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001BE147490 == a2)
  {
    a2, 0x80000001BE147490, a3, a4, a5, a6, a7, a8;
    v13 = 1;
  }

  else
  {
    v14 = sub_1BE053B84();
    a2, v15, v16, v17, v18, v19, v20, v21;
    if (v14)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }
  }

  *a9 = v13;
}

uint64_t sub_1BDA02850(uint64_t a1)
{
  v2 = sub_1BDA13CB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BDA0288C(uint64_t a1)
{
  v2 = sub_1BDA13CB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BDA028FC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BD50, &qword_1BE10DE30);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BDA13C60();
  sub_1BE053DA4();
  v12 = 0;
  sub_1BE0493F4();
  sub_1BDA1396C(&qword_1EBD5BD58, MEMORY[0x1E6967790], MEMORY[0x1E6967798]);
  sub_1BE053AF4();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ManuallyExcludedBreakdown(0) + 20));
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38F08, &qword_1BE0DF9C0);
    sub_1BDA13BC4(&qword_1EBD38F60, &qword_1EBD38F68, MEMORY[0x1E69695B0], MEMORY[0x1E69E64F0]);
    sub_1BE053AF4();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_1BDA02B18(id *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v39 = sub_1BE0493F4();
  v36 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BD38, &qword_1BE10DE28);
  v7 = *(v6 - 8);
  v37 = v6;
  v38 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - v8;
  v10 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ManuallyExcludedBreakdown(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BDA13C60();
  sub_1BE053D94();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1, v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    v34 = v10;
    v20 = v12;
    v21 = v36;
    v42 = 0;
    sub_1BDA1396C(&qword_1EBD5BD48, MEMORY[0x1E6967790], MEMORY[0x1E69677B0]);
    v22 = v39;
    v23 = v37;
    sub_1BE053AA4();
    v24 = *(v21 + 32);
    v33 = v20;
    v24(v20, v5, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38F08, &qword_1BE0DF9C0);
    v41 = 1;
    sub_1BDA13BC4(&qword_1EBD38F50, &qword_1EBD38F58, MEMORY[0x1E69695D0], MEMORY[0x1E69E6510]);
    sub_1BE053AA4();
    (*(v38 + 8))(v9, v23);
    v25 = v33;
    *(v33 + *(v34 + 20)) = v40;
    sub_1BDA13D08(v25, v35, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ManuallyExcludedBreakdown);
    __swift_destroy_boxed_opaque_existential_0(a1, v26, v27, v28, v29, v30, v31, v32);
    sub_1BDA138A4(v25, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ManuallyExcludedBreakdown);
  }
}

uint64_t sub_1BDA02EEC(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BD30, &qword_1BE10DE20);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BDA13B70();
  sub_1BE053DA4();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38F08, &qword_1BE0DF9C0);
  sub_1BDA13BC4(&qword_1EBD38F60, &qword_1EBD38F68, MEMORY[0x1E69695B0], MEMORY[0x1E69E64F0]);
  sub_1BE053AF4();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1BDA03080()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0x6570536C61746F74;
  }
}

void sub_1BDA030CC(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v12 = 0xED0000676E69646ELL;
  v13 = a1 == 0x6570536C61746F74 && a2 == 0xED0000676E69646ELL;
  if (v13 || (sub_1BE053B84() & 1) != 0)
  {
    a2, v12, a3, a4, a5, a6, a7, a8;
    v14 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001BE147490 == a2)
  {
    a2, 0x80000001BE147490, a3, a4, a5, a6, a7, a8;
    v14 = 1;
  }

  else
  {
    v15 = sub_1BE053B84();
    a2, v16, v17, v18, v19, v20, v21, v22;
    if (v15)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }
  }

  *a9 = v14;
}

uint64_t sub_1BDA031B8(uint64_t a1)
{
  v2 = sub_1BDA13C60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BDA031F4(uint64_t a1)
{
  v2 = sub_1BDA13C60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1BDA03260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1BE0493B4())
  {
    v6 = *(a3 + 20);
    v7 = *(a1 + v6);
    v8 = *(a2 + v6);

    sub_1BD842AA4(v7, v8);
  }
}

void sub_1BDA032E4(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X3>, void *a4@<X4>, void *a5@<X5>, unint64_t a6@<X6>, uint64_t a7@<X7>, _BYTE *a8@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x80000001BE147490 == a2)
  {
    a2, 0x80000001BE147490, 0xD000000000000016, a3, a4, a5, a6, a7;
    v10 = 0;
  }

  else
  {
    v11 = sub_1BE053B84();
    a2, v12, v13, v14, v15, v16, v17, v18;
    v10 = v11 ^ 1;
  }

  *a8 = v10 & 1;
}

uint64_t sub_1BDA03378(uint64_t a1)
{
  v2 = sub_1BDA13B70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BDA033B4(uint64_t a1)
{
  v2 = sub_1BDA13B70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1BDA033F0@<X0>(uint64_t *a1@<X8>, id *a2@<X0>)
{
  result = sub_1BDA139B4(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1BDA0344C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BDA03474, 0, 0);
}

uint64_t sub_1BDA03474()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_1BDA035A0;
    v3 = v0[8];
    v4 = v0[9];
    v5 = v0[7];
    v6 = v0[5];

    return sub_1BDA0377C(v6, v5, v3, v4);
  }

  else
  {
    sub_1BDA13FE4();
    swift_allocError();
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1BDA035A0()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1BDA03718;
  }

  else
  {
    v2 = sub_1BDA036B4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BDA036B4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 80), a2, a3, a4, a5, a6, a7, a8;
  v9 = *(v8 + 8);

  return v9();
}

uint64_t sub_1BDA03718(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 80), a2, a3, a4, a5, a6, a7, a8;
  v9 = *(v8 + 8);

  return v9();
}

uint64_t sub_1BDA0377C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[191] = v4;
  v5[185] = a4;
  v5[179] = a3;
  v5[173] = a2;
  v5[167] = a1;
  v6 = sub_1BE04D214();
  v5[197] = v6;
  v5[203] = *(v6 - 8);
  v5[209] = swift_task_alloc();
  v7 = sub_1BE049624();
  v5[210] = v7;
  v5[211] = *(v7 - 8);
  v5[212] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BD98, &qword_1BE10DE88);
  v5[213] = swift_task_alloc();
  v5[214] = swift_task_alloc();
  v8 = sub_1BE049684();
  v5[215] = v8;
  v5[216] = *(v8 - 8);
  v5[217] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BDA0, &qword_1BE10DE90);
  v5[218] = swift_task_alloc();
  v5[219] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD507E8, &qword_1BE0F10D0);
  v5[220] = swift_task_alloc();
  v9 = sub_1BE049654();
  v5[221] = v9;
  v5[222] = *(v9 - 8);
  v5[223] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BDA8, &qword_1BE10DE98);
  v5[224] = swift_task_alloc();
  v5[225] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD507F0, &qword_1BE0F10D8);
  v5[226] = swift_task_alloc();
  v10 = sub_1BE0495F4();
  v5[227] = v10;
  v5[228] = *(v10 - 8);
  v5[229] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BDB0, &qword_1BE10DEA0);
  v5[230] = swift_task_alloc();
  v5[231] = swift_task_alloc();
  v11 = sub_1BE0496B4();
  v5[232] = v11;
  v5[233] = *(v11 - 8);
  v5[234] = swift_task_alloc();
  v5[235] = swift_task_alloc();
  v5[236] = swift_task_alloc();
  v5[237] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD507F8, &qword_1BE0F10E0);
  v5[238] = swift_task_alloc();
  type metadata accessor for FinanceKitDailyCategorySpendingAggregator(0);
  v5[239] = swift_task_alloc();
  v12 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.GroupBreakdown(0);
  v5[240] = v12;
  v5[241] = *(v12 - 8);
  v5[242] = swift_task_alloc();
  v13 = type metadata accessor for FinanceKitGroupMetadataDataProvider.Metadata(0);
  v5[243] = v13;
  v5[244] = *(v13 - 8);
  v5[245] = swift_task_alloc();
  v5[246] = swift_task_alloc();
  v14 = sub_1BE0497B4();
  v5[247] = v14;
  v5[248] = *(v14 - 8);
  v5[249] = swift_task_alloc();
  v5[250] = swift_task_alloc();
  v15 = sub_1BE049B04();
  v5[251] = v15;
  v5[252] = *(v15 - 8);
  v5[253] = swift_task_alloc();
  v16 = sub_1BE049774();
  v5[254] = v16;
  v5[255] = *(v16 - 8);
  v5[256] = swift_task_alloc();
  v5[257] = swift_task_alloc();
  v5[258] = swift_task_alloc();
  v5[259] = swift_task_alloc();
  v5[260] = swift_task_alloc();
  v17 = sub_1BE04AFE4();
  v5[261] = v17;
  v5[262] = *(v17 - 8);
  v5[263] = swift_task_alloc();
  v5[264] = swift_task_alloc();
  v5[265] = swift_task_alloc();
  v5[266] = swift_task_alloc();
  v18 = sub_1BE049734();
  v5[267] = v18;
  v5[268] = *(v18 - 8);
  v5[269] = swift_task_alloc();
  v5[270] = swift_task_alloc();
  v19 = sub_1BE0497E4();
  v5[271] = v19;
  v5[272] = *(v19 - 8);
  v5[273] = swift_task_alloc();
  v5[274] = swift_task_alloc();
  v5[275] = swift_task_alloc();
  v5[276] = swift_task_alloc();
  v5[277] = swift_task_alloc();
  v5[278] = swift_task_alloc();
  v5[279] = type metadata accessor for FinanceKitSpendingSummaryDataProvider.PartialPeriodSpendingFilter(0);
  v5[280] = swift_task_alloc();
  v5[281] = swift_task_alloc();
  v5[282] = swift_task_alloc();
  v20 = sub_1BE04AF64();
  v5[283] = v20;
  v5[284] = *(v20 - 8);
  v5[285] = swift_task_alloc();
  v5[286] = swift_task_alloc();
  v5[287] = swift_task_alloc();
  v5[288] = swift_task_alloc();
  v5[289] = swift_task_alloc();
  v5[290] = swift_task_alloc();
  v5[291] = swift_task_alloc();
  v21 = sub_1BE0493F4();
  v5[292] = v21;
  v5[293] = *(v21 - 8);
  v5[294] = swift_task_alloc();
  v5[295] = swift_task_alloc();
  v5[296] = swift_task_alloc();
  v5[297] = swift_task_alloc();
  v5[298] = swift_task_alloc();
  v5[299] = swift_task_alloc();
  v5[300] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44F98, &unk_1BE0D39B0);
  v5[301] = swift_task_alloc();
  v5[302] = swift_task_alloc();
  v5[303] = swift_task_alloc();
  v5[304] = swift_task_alloc();
  v5[305] = swift_task_alloc();
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD402D0, &unk_1BE0C7D50) - 8);
  v5[306] = v22;
  v5[307] = *(v22 + 64);
  v5[308] = swift_task_alloc();
  v5[309] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BDB8, &qword_1BE10DEA8);
  v5[310] = swift_task_alloc();
  v5[311] = swift_task_alloc();
  v5[312] = swift_task_alloc();
  v5[313] = swift_task_alloc();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
  v5[314] = v23;
  v24 = *(v23 - 8);
  v5[315] = v24;
  v5[316] = *(v24 + 64);
  v5[317] = swift_task_alloc();
  v5[318] = swift_task_alloc();
  v5[319] = swift_task_alloc();
  v5[320] = swift_task_alloc();
  v5[321] = swift_task_alloc();
  v5[322] = swift_task_alloc();
  v25 = sub_1BE049814();
  v5[323] = v25;
  v5[324] = *(v25 - 8);
  v5[325] = swift_task_alloc();
  v5[326] = swift_task_alloc();
  v5[327] = swift_task_alloc();
  v5[328] = swift_task_alloc();
  v26 = sub_1BE04CFE4();
  v5[329] = v26;
  v5[330] = *(v26 - 8);
  v5[331] = swift_task_alloc();
  v5[332] = swift_task_alloc();
  v5[333] = swift_task_alloc();
  v5[334] = swift_task_alloc();
  v5[335] = swift_task_alloc();
  v5[336] = swift_task_alloc();
  v27 = sub_1BE04CFC4();
  v5[337] = v27;
  v5[338] = *(v27 - 8);
  v5[339] = swift_task_alloc();
  v5[340] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BDA044A4, v4, 0);
}

uint64_t sub_1BDA044A4()
{
  v1 = v0[336];
  v2 = v0[330];
  v3 = v0[329];
  sub_1BE04B6B4();
  sub_1BE04CFD4();
  sub_1BE04CF94();
  v4 = *(v2 + 8);
  v0[341] = v4;
  v0[342] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v29 = v4;
  v4(v1, v3);
  sub_1BE04B6B4();
  v5 = sub_1BE04CFD4();
  v6 = sub_1BE052E34();
  if (sub_1BE053494())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v5, v6, v8, "GenerateSpendingSummary", "", v7, 2u);
    MEMORY[0x1BFB45F20](v7, -1, -1);
  }

  v9 = v0[340];
  v10 = v0[339];
  v11 = v0[338];
  v12 = v0[337];
  v22 = v0[329];
  v23 = v0[335];
  v13 = v0[322];
  v24 = v0[315];
  v26 = v0[308];
  v27 = v0[306];
  v28 = v0[307];
  v14 = v0[191];
  v25 = v0[179];
  v15 = v0[173];

  (*(v11 + 16))(v10, v9, v12);
  sub_1BE04D024();
  swift_allocObject();
  v0[343] = sub_1BE04D014();
  v29(v23, v22);
  sub_1BD0DE19C(v15, v13, &qword_1EBD38DB8, &unk_1BE0BD340);
  v16 = (*(v24 + 80) + 24) & ~*(v24 + 80);
  v17 = swift_allocObject();
  v0[344] = v17;
  *(v17 + 16) = v14;
  sub_1BD0DE204(v13, v17 + v16, &qword_1EBD38DB8, &unk_1BE0BD340);
  sub_1BE048964();
  swift_asyncLet_begin();
  sub_1BD0DE19C(v25, v26, &qword_1EBD402D0, &unk_1BE0C7D50);
  v18 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v19 = swift_allocObject();
  v0[345] = v19;
  sub_1BD0DE204(v26, v19 + v18, &qword_1EBD402D0, &unk_1BE0C7D50);
  *(v19 + ((v28 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v14;
  sub_1BE048964();
  swift_asyncLet_begin();
  v20 = v0[328];

  return MEMORY[0x1EEE6DEC0](v0 + 2, v20, sub_1BDA0481C, v0 + 162);
}

uint64_t sub_1BDA0481C()
{
  v1[346] = v0;
  if (v0)
  {
    v2 = v1[191];

    return MEMORY[0x1EEE6DFA0](sub_1BDA07884, v2, 0);
  }

  else
  {
    (*(v1[324] + 16))(v1[327], v1[328], v1[323]);
    v3 = v1[313];

    return MEMORY[0x1EEE6DEC0](v1 + 82, v3, sub_1BDA048E0, v1 + 180);
  }
}

uint64_t sub_1BDA048E0()
{
  *(v1 + 2776) = v0;
  if (v0)
  {
    v2 = sub_1BDA07EC0;
  }

  else
  {
    v2 = sub_1BDA04914;
  }

  return MEMORY[0x1EEE6DFA0](v2, *(v1 + 1528), 0);
}

void sub_1BDA04914()
{
  v184 = v0;
  sub_1BD0DE19C(v0[313], v0[312], &qword_1EBD5BDB8, &qword_1BE10DEA8);
  sub_1BE04B6B4();
  v1 = sub_1BE04CFD4();
  v2 = sub_1BE052E44();
  if (sub_1BE053494())
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v1, v2, v4, "Fetch Complete", "", v3, 2u);
    MEMORY[0x1BFB45F20](v3, -1, -1);
  }

  v5 = v0[341];
  v6 = v0[334];
  v7 = v0[329];
  v8 = v0[324];
  v174 = v0[323];
  v9 = v0[312];
  v10 = v0[311];
  v11 = v0[305];

  v5(v6, v7);
  v12 = type metadata accessor for FinanceKitSpendingTrend(0);
  v0[348] = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v0[349] = v14;
  v0[350] = (v13 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v14(v11, 1, 1, v12);
  sub_1BD0DE19C(v9, v10, &qword_1EBD5BDB8, &qword_1BE10DEA8);
  v15 = *(v8 + 48);
  v0[351] = v15;
  v0[352] = (v8 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v15(v10, 1, v174) == 1)
  {
    sub_1BD0DE53C(v0[311], &qword_1EBD5BDB8, &qword_1BE10DEA8);
    v175 = v0[347];
    goto LABEL_13;
  }

  (*(v0[324] + 32))(v0[326], v0[311], v0[323]);
  sub_1BE049804();
  sub_1BE04AEF4();
  sub_1BDA1396C(&qword_1EBD525D0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  v16 = sub_1BE052314();
  v17 = v0[321];
  if (v16)
  {
    v18 = v0[291];
    v19 = v0[284];
    v20 = v0[283];
    v21 = sub_1BE0522F4();
    v22 = *(v19 + 8);
    v22(v18, v20);
    sub_1BD0DE53C(v17, &qword_1EBD38DB8, &unk_1BE0BD340);
    if (v21)
    {
      v23 = v0[319];
      v24 = v0[290];
      v162 = v0[289];
      v25 = v0[284];
      v160 = v0[283];
      v165 = v0[278];
      v169 = v0[272];
      v176 = v0[271];
      sub_1BE049804();
      swift_storeEnumTagMultiPayload();
      sub_1BE04AEF4();
      sub_1BE04ADC4();
      v159 = v22;
      v22(v24, v160);
      sub_1BE049804();
      (*(v25 + 16))(v162, v23, v160);
      sub_1BD0DE53C(v23, &qword_1EBD38DB8, &unk_1BE0BD340);
      sub_1BE04ADD4();
      sub_1BE0497F4();
      v26 = sub_1BE0496E4();
      (*(v169 + 8))(v165, v176);
      v34 = MEMORY[0x1BFB403C0](0);
      v35 = v26;
      v179 = v34;
      v180 = v27;
      LODWORD(v181) = v28;
      v177 = *(v26 + 16);
      if (v177)
      {
        v36 = v0[268];
        v38 = *(v36 + 16);
        v36 += 16;
        v37 = v38;
        v39 = (v36 - 8);
        v40 = v0[347];
        v41 = v0[288];
        v42 = v0[282];
        v43 = v0[270];
        v44 = (*(v36 + 64) + 32) & ~*(v36 + 64);
        v45 = *(v36 + 56);
        v164 = v35;
        v38(v43, v35 + v44, v0[267]);
        sub_1BDA0B03C(&v179, v43, v41, v42);
        if (v40)
        {
          v46 = v0[270];
          v47 = v0[267];

          (*v39)(v46, v47);
          return;
        }

        v168 = *v39;
        v173 = v37;
        (*v39)(v0[270], v0[267]);
        v35 = v164;
        if (v177 != 1)
        {
          v147 = v164 + v45 + v44;
          v148 = 1;
          while (v148 < v35[2])
          {
            v149 = v35;
            v150 = v0[288];
            v151 = v0[282];
            v152 = v0[270];
            v173(v152, v147, v0[267]);
            sub_1BDA0B03C(&v179, v152, v150, v151);
            ++v148;
            v168(v0[270], v0[267]);
            v147 += v45;
            v35 = v149;
            if (v177 == v148)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_42;
        }

LABEL_39:
        v175 = 0;
      }

      else
      {
        v175 = v0[347];
      }

      v163 = v0[320];
      v153 = v0[298];
      v154 = v0[293];
      v155 = v0[292];
      v158 = v0[289];
      v156 = v0[288];
      v157 = v0[283];
      v161 = v0[282];
      v35, v27, v28, v29, v30, v31, v32, v33;
      sub_1BE0496D4();
      sub_1BE0493A4();
      (*(v154 + 8))(v153, v155);
      sub_1BE049404();
      v159(v156, v157);
      v159(v158, v157);
      sub_1BDA138A4(v161, type metadata accessor for FinanceKitSpendingSummaryDataProvider.PartialPeriodSpendingFilter);
      sub_1BD0DE53C(v163, &qword_1EBD38DB8, &unk_1BE0BD340);
      goto LABEL_12;
    }
  }

  else
  {
    (*(v0[284] + 8))(v0[291], v0[283]);
    sub_1BD0DE53C(v17, &qword_1EBD38DB8, &unk_1BE0BD340);
  }

  sub_1BE0496D4();
  v175 = v0[347];
LABEL_12:
  v170 = v0[326];
  v48 = v0[324];
  v49 = v0[323];
  v50 = v0[305];
  v51 = v0[304];
  v52 = v0[300];
  v53 = v0[298];
  v54 = v0[293];
  v55 = v0[292];
  (*(v54 + 32))(v52, v0[299], v55);
  sub_1BE0496D4();
  sub_1BD36295C(v51);
  v56 = *(v54 + 8);
  v56(v53, v55);
  v56(v52, v55);
  (*(v48 + 8))(v170, v49);
  sub_1BD0DE53C(v50, &qword_1EBD44F98, &unk_1BE0D39B0);
  sub_1BD0DE204(v51, v50, &qword_1EBD44F98, &unk_1BE0D39B0);
LABEL_13:
  v57 = v0[277];
  v58 = v0[272];
  v59 = v0[271];
  sub_1BE0497F4();
  v60 = sub_1BE0497D4();
  v61 = *(v58 + 8);
  v0[353] = v61;
  v0[354] = (v58 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v171 = v61;
  v61(v57, v59);
  v62 = v60[2];
  if (!v62)
  {
    v64 = MEMORY[0x1E69E7CC0];
    goto LABEL_17;
  }

  v63 = v0[248];
  v64 = sub_1BD1DA160(v62, 0);
  sub_1BD5EE328(&v179, &v64[(*(v63 + 80) + 32) & ~*(v63 + 80)], v62, v60);
  v66 = v65;
  v67 = v179;
  v68 = v180;
  v69 = v181;
  v70 = v182;
  v71 = v183;
  sub_1BE048C84();
  sub_1BD0D45FC(v67, v68, v69, v70, v71, v72, v73, v74);
  if (v66 != v62)
  {
    __break(1u);
LABEL_42:
    __break(1u);
    return;
  }

LABEL_17:
  v178 = v64;
  sub_1BD9FD6E0(&v178);
  if (v175)
  {

    v178, v118, v119, v120, v121, v122, v123, v124;
    return;
  }

  v82 = v0[327];
  v83 = v0[312];
  v84 = v0[191];
  v60, v75, v76, v77, v78, v79, v80, v81;
  v85 = v178;
  v86 = swift_task_alloc();
  v86[2] = v83;
  v86[3] = v82;
  v86[4] = v84;
  v166 = v85;
  sub_1BDA3DE30(sub_1BDA14260, v86, v85);
  v0[355] = v87;

  sub_1BE04B6B4();
  v88 = sub_1BE04CFD4();
  v89 = sub_1BE052E44();
  if (sub_1BE053494())
  {
    v90 = swift_slowAlloc();
    *v90 = 0;
    v91 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v88, v89, v91, "Calculated Category Breakdowns", "", v90, 2u);
    MEMORY[0x1BFB45F20](v90, -1, -1);
  }

  v92 = v0[341];
  v93 = v0[333];
  v94 = v0[329];
  v95 = v0[276];
  v96 = v0[271];

  v92(v93, v94);
  sub_1BE0497F4();
  v97 = sub_1BE0497C4();
  v171(v95, v96);
  v98 = v97[2];
  if (v98)
  {
    v99 = v0[255];
    v100 = sub_1BD1DA138(v97[2], 0);
    sub_1BD5EE310(&v179, &v100[(*(v99 + 80) + 32) & ~*(v99 + 80)], v98, v97);
    v102 = v101;
    v103 = v179;
    v104 = v180;
    v106 = v181;
    v105 = v182;
    v107 = v183;
    sub_1BE048C84();
    sub_1BD0D45FC(v103, v104, v106, v105, v107, v108, v109, v110);
    if (v102 == v98)
    {
      goto LABEL_24;
    }

    __break(1u);
  }

  v100 = MEMORY[0x1E69E7CC0];
LABEL_24:
  v178 = v100;
  sub_1BD9FD5FC(&v178);
  v166, v111, v112, v113, v114, v115, v116, v117;
  v97, v125, v126, v127, v128, v129, v130, v131;
  v132 = v178;
  v0[356] = v178;
  v133 = v132[2];
  v134 = MEMORY[0x1E69E7CC0];
  if (v133)
  {
    v135 = v0[262];
    v136 = v0[255];
    v179 = MEMORY[0x1E69E7CC0];
    sub_1BD531F28(0, v133, 0);
    v134 = v179;
    v137 = *(v136 + 16);
    v136 += 16;
    v138 = v132 + ((*(v136 + 64) + 32) & ~*(v136 + 64));
    v167 = *(v136 + 56);
    v172 = v137;
    v139 = (v136 - 8);
    do
    {
      v140 = v0[260];
      v141 = v0[254];
      v172(v140, v138, v141);
      sub_1BE049764();
      (*v139)(v140, v141);
      v179 = v134;
      v143 = *(v134 + 16);
      v142 = *(v134 + 24);
      if (v143 >= v142 >> 1)
      {
        sub_1BD531F28((v142 > 1), v143 + 1, 1);
        v134 = v179;
      }

      v144 = v0[266];
      v145 = v0[261];
      *(v134 + 16) = v143 + 1;
      (*(v135 + 32))(v134 + ((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v135 + 72) * v143, v144, v145);
      v138 += v167;
      --v133;
    }

    while (v133);
  }

  v0[357] = v134;
  v146 = swift_task_alloc();
  v0[358] = v146;
  *v146 = v0;
  v146[1] = sub_1BDA055BC;

  sub_1BD9F550C(v134);
}

uint64_t sub_1BDA055BC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 2872) = a1;
  *(v4 + 2880) = v1;

  v12 = *(v3 + 2856);
  if (v1)
  {
    v13 = *(v4 + 1528);
    *(v4 + 2848), v5, v6, v7, v8, v9, v10, v11;
    v12, v14, v15, v16, v17, v18, v19, v20;
    v21 = sub_1BDA0855C;
  }

  else
  {
    v13 = *(v4 + 1528);
    v12, v5, v6, v7, v8, v9, v10, v11;
    v21 = sub_1BDA05718;
  }

  return MEMORY[0x1EEE6DFA0](v21, v13, 0);
}

uint64_t sub_1BDA05718(uint64_t a1, const char *a2, uint64_t (*a3)(), void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v384 = v8;
  v9 = *(v8 + 2848);
  v10 = *(v8 + 2872);
  v343 = v9[2];
  if (v343)
  {
    v11 = 0;
    v12 = *(v8 + 2040);
    v339 = v9 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v13 = *(v8 + 2592);
    v336 = (v13 + 32);
    v14 = *(v8 + 2272);
    v379 = (v14 + 8);
    v338 = (*(v8 + 2344) + 8);
    v348 = (v12 + 8);
    v335 = (v13 + 8);
    v15 = *(v8 + 2096);
    v334 = (v15 + 16);
    v304 = (v14 + 16);
    v303 = *(v8 + 2144);
    v333 = (v15 + 32);
    v340 = v12;
    v306 = (v12 + 32);
    v16 = *(v8 + 2016);
    v351 = (v15 + 8);
    v332 = (v16 + 32);
    v331 = (v16 + 8);
    v330 = (v16 + 16);
    v342 = MEMORY[0x1E69E7CC0];
    v328 = *(v8 + 1952);
    v329 = *(v8 + 1968);
    v326 = *(v8 + 1928);
    v327 = *(v8 + 1944);
    v305 = *(v8 + 1984);
    v325 = *(v8 + 1920);
    v341 = *(v8 + 2872);
    while (1)
    {
      if (v11 >= *(*(v8 + 2848) + 16))
      {
        __break(1u);
        return MEMORY[0x1EEE6DEB0](v9, a2, a3, a4);
      }

      v355 = *(v8 + 2808);
      v364 = v11;
      v21 = *(v8 + 2792);
      v22 = *(v8 + 2784);
      v23 = *(v8 + 2584);
      v24 = *(v8 + 2496);
      v25 = *(v8 + 2480);
      v26 = *(v8 + 2424);
      v344 = *(v340 + 72);
      v346 = *(v340 + 16);
      (v346)(*(v8 + 2072), &v339[v344 * v11], *(v8 + 2032), a4, a5, a6, a7, a8);
      sub_1BE049764();
      v21(v26, 1, 1, v22);
      sub_1BD0DE19C(v24, v25, &qword_1EBD5BDB8, &qword_1BE10DEA8);
      if (v355(v25, 1, v23) == 1)
      {
        sub_1BD0DE53C(*(v8 + 2480), &qword_1EBD5BDB8, &qword_1BE10DEA8);
        goto LABEL_35;
      }

      (*v336)(*(v8 + 2600), *(v8 + 2480), *(v8 + 2584));
      sub_1BE049804();
      sub_1BE04AEF4();
      sub_1BDA1396C(&qword_1EBD525D0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
      v27 = sub_1BE052314();
      v28 = *(v8 + 2544);
      v29 = *(v8 + 2296);
      v30 = *(v8 + 2264);
      if (v27)
      {
        v31 = sub_1BE0522F4();
        v32 = *v379;
        (*v379)(v29, v30);
        sub_1BD0DE53C(v28, &qword_1EBD38DB8, &unk_1BE0BD340);
        if (v31)
        {
          v356 = *(v8 + 2824);
          v337 = v32;
          v33 = *(v8 + 2552);
          v34 = *(v8 + 2320);
          v314 = *(v8 + 2288);
          v35 = *(v8 + 2248);
          v313 = *(v8 + 2264);
          v319 = *(v8 + 2200);
          v322 = *(v8 + 2168);
          v36 = *(v8 + 2120);
          v37 = *(v8 + 2088);
          sub_1BE049744();
          sub_1BE049804();
          (*v334)(v35, v36, v37);
          swift_storeEnumTagMultiPayload();
          sub_1BE04AEF4();
          sub_1BE04ADC4();
          v337(v34, v313);
          sub_1BE049804();
          (*v304)(v314, v33, v313);
          sub_1BD0DE53C(v33, &qword_1EBD38DB8, &unk_1BE0BD340);
          sub_1BE04ADD4();
          sub_1BE0497F4();
          v38 = sub_1BE0496E4();
          v356(v319, v322);
          v382[0] = MEMORY[0x1BFB403C0](0);
          v382[1] = v39;
          v383 = v40;
          v46 = v38[2];
          if (v46)
          {
            v315 = v38;
            v47 = v38 + ((*(v303 + 80) + 32) & ~*(v303 + 80));
            v48 = *(v303 + 72);
            v373 = *(v303 + 16);
            v49 = v337;
            v357 = v48;
            do
            {
              v64 = *(v8 + 2320);
              v65 = *(v8 + 2264);
              v373(*(v8 + 2152), v47, *(v8 + 2136));
              sub_1BE049724();
              v66 = sub_1BE0522F4();
              v49(v64, v65);
              if ((v66 & 1) == 0)
              {
                sub_1BDA13D08(*(v8 + 2248), *(v8 + 2240), type metadata accessor for FinanceKitSpendingSummaryDataProvider.PartialPeriodSpendingFilter);
                EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
                if (EnumCaseMultiPayload)
                {
                  if (EnumCaseMultiPayload == 1)
                  {
                    (*v333)(*(v8 + 2112), *(v8 + 2240), *(v8 + 2088));
                    v75 = sub_1BE0496F4();
                    if (v75[2] && (v76 = sub_1BD14951C(*(v8 + 2112)), (v68 & 1) != 0))
                    {
                      v77 = *(v8 + 2384);
                      v323 = *(v8 + 2112);
                      v317 = *(v8 + 2336);
                      v320 = *(v8 + 2088);
                      v78 = *(v8 + 2064);
                      v79 = *(v8 + 2056);
                      v80 = *(v8 + 2032);
                      v346(v79, v75[7] + v76 * v344, v80);
                      v75, v81, v82, v83, v84, v85, v86, v87;
                      (*v306)(v78, v79, v80);
                      sub_1BE049744();
                      v88 = sub_1BE0493C4();
                      v90 = v89;
                      v92 = v91;
                      (*v338)(v77, v317);
                      v93 = v90;
                      v49 = v337;
                      MEMORY[0x1BFB40450](v382, v88, v93, v92);
                      (*v348)(v78, v80);
                      (*v351)(v323, v320);
                    }

                    else
                    {
                      v120 = *(v8 + 2112);
                      v121 = *(v8 + 2088);
                      v75, v68, v69, v70, v71, v72, v73, v74;
                      (*v351)(v120, v121);
                    }
                  }

                  else
                  {
                    v50 = *(v8 + 2384);
                    v51 = *(v8 + 2336);
                    sub_1BE049704();
                    v52 = sub_1BE0493C4();
                    v54 = v53;
                    v56 = v55;
                    (*v338)(v50, v51);
                    MEMORY[0x1BFB40450](v382, v52, v54, v56);
                  }

                  v48 = v357;
                }

                else
                {
                  (*v332)(*(v8 + 2024), *(v8 + 2240), *(v8 + 2008));
                  v101 = sub_1BE049714();
                  if (v101[2] && (v102 = sub_1BD148E9C(*(v8 + 2024)), (v94 & 1) != 0))
                  {
                    v103 = *(v8 + 2384);
                    v324 = *(v8 + 2024);
                    v318 = *(v8 + 2336);
                    v321 = *(v8 + 2008);
                    v104 = *(v8 + 2000);
                    v316 = v104;
                    v105 = *(v8 + 1992);
                    v106 = *(v8 + 1976);
                    (*(v305 + 16))(v105, v101[7] + *(v305 + 72) * v102, v106);
                    v101, v107, v108, v109, v110, v111, v112, v113;
                    (*(v305 + 32))(v104, v105, v106);
                    sub_1BE049784();
                    v114 = sub_1BE0493C4();
                    v116 = v115;
                    v118 = v117;
                    (*v338)(v103, v318);
                    v119 = v116;
                    v49 = v337;
                    MEMORY[0x1BFB40450](v382, v114, v119, v118);
                    v48 = v357;
                    (*(v305 + 8))(v316, v106);
                    (*v331)(v324, v321);
                  }

                  else
                  {
                    v122 = *(v8 + 2024);
                    v123 = *(v8 + 2008);
                    v101, v94, v95, v96, v97, v98, v99, v100;
                    (*v331)(v122, v123);
                  }
                }
              }

              (*(v303 + 8))(*(v8 + 2152), *(v8 + 2136));
              v47 += v48;
              --v46;
            }

            while (v46);
            v315, v57, v58, v59, v60, v61, v62, v63;
          }

          else
          {
            v38, v39, v40, v41, v42, v43, v44, v45;
          }

          v312 = *(v8 + 2600);
          v359 = *(v8 + 2584);
          v309 = *(v8 + 2536);
          v375 = *(v8 + 2424);
          v155 = *(v8 + 2384);
          v310 = *(v8 + 2376);
          v311 = *(v8 + 2416);
          v156 = *(v8 + 2368);
          v157 = *(v8 + 2336);
          v158 = *(v8 + 2280);
          v159 = *(v8 + 2264);
          v307 = *(v8 + 2288);
          v308 = *(v8 + 2248);
          sub_1BE0496D4();
          sub_1BE0493A4();
          v160 = *v338;
          (*v338)(v155, v157);
          sub_1BE049404();
          v337(v158, v159);
          v337(v307, v159);
          sub_1BDA138A4(v308, type metadata accessor for FinanceKitSpendingSummaryDataProvider.PartialPeriodSpendingFilter);
          sub_1BD0DE53C(v309, &qword_1EBD38DB8, &unk_1BE0BD340);
          sub_1BD36295C(v311);
          v160(v156, v157);
          v160(v310, v157);
          (*v335)(v312, v359);
          sub_1BD0DE53C(v375, &qword_1EBD44F98, &unk_1BE0D39B0);
          v151 = v311;
          v152 = v375;
          goto LABEL_34;
        }
      }

      else
      {
        (*v379)(*(v8 + 2296), *(v8 + 2264));
        sub_1BD0DE53C(v28, &qword_1EBD38DB8, &unk_1BE0BD340);
      }

      v124 = *(v8 + 2824);
      v125 = *(v8 + 2192);
      v126 = *(v8 + 2168);
      sub_1BE0497F4();
      v127 = sub_1BE0497C4();
      v124(v125, v126);
      if (!v127[2] || (v135 = sub_1BD14951C(*(v8 + 2120)), (v128 & 1) == 0))
      {
        v153 = *(v8 + 2600);
        v154 = *(v8 + 2584);
        v127, v128, v129, v130, v131, v132, v133, v134;
        (*v335)(v153, v154);
        goto LABEL_35;
      }

      v374 = *(v8 + 2600);
      v358 = *(v8 + 2584);
      v136 = *(v8 + 2432);
      v137 = *(v8 + 2424);
      v138 = *(v8 + 2384);
      v139 = *(v8 + 2360);
      v140 = *(v8 + 2336);
      v141 = *(v8 + 2048);
      v142 = *(v8 + 2032);
      v346(v141, v127[7] + v135 * v344, v142);
      v127, v143, v144, v145, v146, v147, v148, v149;
      sub_1BE049744();
      sub_1BE049744();
      sub_1BD36295C(v136);
      v150 = *v338;
      (*v338)(v139, v140);
      v150(v138, v140);
      (*v348)(v141, v142);
      (*v335)(v374, v358);
      sub_1BD0DE53C(v137, &qword_1EBD44F98, &unk_1BE0D39B0);
      v151 = v136;
      v152 = v137;
LABEL_34:
      sub_1BD0DE204(v151, v152, &qword_1EBD44F98, &unk_1BE0D39B0);
LABEL_35:
      if (*(v341 + 16) && (v161 = sub_1BD14951C(*(v8 + 2120)), (v162 & 1) != 0))
      {
        v376 = *(v8 + 2424);
        v163 = *(v8 + 2120);
        v164 = *(v8 + 2088);
        v360 = *(v8 + 2008);
        v165 = *(v8 + 1968);
        v166 = *(v8 + 1960);
        v167 = *(v8 + 1936);
        sub_1BDA13D08(*(v341 + 56) + *(v328 + 72) * v161, v166, type metadata accessor for FinanceKitGroupMetadataDataProvider.Metadata);
        sub_1BDA13904(v166, v165, type metadata accessor for FinanceKitGroupMetadataDataProvider.Metadata);
        v168 = *v334;
        (*v334)(v167, v163, v164);
        v347 = *v165;
        v169 = *(v329 + 8);
        v168(v167 + v325[6], &v165[v327[5]], v164);
        sub_1BD0DE19C(&v165[v327[6]], v167 + v325[7], &qword_1EBD45CC0, &qword_1BE0D5630);
        (*v330)(v167 + v325[8], &v165[v327[7]], v360);
        sub_1BE048C84();
        v170 = sub_1BE049754();
        sub_1BE049744();
        sub_1BD0DE19C(v376, v167 + v325[11], &qword_1EBD44F98, &unk_1BE0D39B0);
        v171 = (v167 + v325[5]);
        *v171 = v347;
        v171[1] = v169;
        *(v167 + v325[9]) = v170;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v342 = sub_1BD1D9DD4(0, v342[2] + 1, 1, v342);
        }

        v173 = v342[2];
        v172 = v342[3];
        if (v173 >= v172 >> 1)
        {
          v342 = sub_1BD1D9DD4((v172 > 1), v173 + 1, 1, v342);
        }

        v174 = *(v8 + 2424);
        v175 = *(v8 + 2120);
        v176 = *(v8 + 2088);
        v177 = *(v8 + 2072);
        v178 = *(v8 + 2032);
        v179 = *(v8 + 1936);
        sub_1BDA138A4(*(v8 + 1968), type metadata accessor for FinanceKitGroupMetadataDataProvider.Metadata);
        sub_1BD0DE53C(v174, &qword_1EBD44F98, &unk_1BE0D39B0);
        (*v351)(v175, v176);
        (*v348)(v177, v178);
        v342[2] = v173 + 1;
        v9 = sub_1BDA13904(v179, v342 + ((*(v326 + 80) + 32) & ~*(v326 + 80)) + *(v326 + 72) * v173, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.GroupBreakdown);
      }

      else
      {
        v17 = *(v8 + 2120);
        v18 = *(v8 + 2088);
        v19 = *(v8 + 2072);
        v20 = *(v8 + 2032);
        sub_1BD0DE53C(*(v8 + 2424), &qword_1EBD44F98, &unk_1BE0D39B0);
        (*v351)(v17, v18);
        v9 = (*v348)(v19, v20);
      }

      v11 = v364 + 1;
      if (v364 + 1 == v343)
      {
        v180 = *(v8 + 2872);
        *(v8 + 2848), a2, a3, a4, a5, a6, a7, a8;
        v180, v181, v182, v183, v184, v185, v186, v187;
        goto LABEL_44;
      }
    }
  }

  v9, a2, a3, a4, a5, a6, a7, a8;
  v10, v188, v189, v190, v191, v192, v193, v194;
  v342 = MEMORY[0x1E69E7CC0];
LABEL_44:
  sub_1BE04B6B4();
  v195 = sub_1BE04CFD4();
  v196 = sub_1BE052E44();
  if (sub_1BE053494())
  {
    v197 = swift_slowAlloc();
    *v197 = 0;
    v198 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v195, v196, v198, "Calculated Group Breakdowns", "", v197, 2u);
    MEMORY[0x1BFB45F20](v197, -1, -1);
  }

  v361 = *(v8 + 2824);
  v199 = *(v8 + 2728);
  v200 = *(v8 + 2656);
  v201 = *(v8 + 2632);
  v370 = *(v8 + 2552);
  v202 = *(v8 + 2384);
  v203 = *(v8 + 2344);
  v367 = *(v8 + 2336);
  v204 = *(v8 + 2184);
  v205 = *(v8 + 1912);
  v350 = *(v8 + 1528);
  v352 = *(v8 + 2168);
  v380 = *(v8 + 1480);

  v199(v200, v201);
  v206 = OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_calendar;
  v207 = sub_1BE04B2F4();
  (*(*(v207 - 8) + 16))(v205, v350 + v206, v207);
  sub_1BE0497F4();
  v208 = sub_1BE0496E4();
  v361(v204, v352);
  sub_1BE0496D4();
  v209 = sub_1BE0493A4();
  v211 = v210;
  (*(v203 + 8))(v202, v367);
  sub_1BE049804();
  sub_1BD19E4C4(v208, v209, v211, v370, v380);
  v381 = v212;
  v211, v213, v214, v215, v216, v217, v218, v219;
  v208, v220, v221, v222, v223, v224, v225, v226;
  sub_1BD0DE53C(v370, &qword_1EBD38DB8, &unk_1BE0BD340);
  sub_1BE04B6B4();
  v227 = sub_1BE04CFD4();
  v228 = sub_1BE052E44();
  if (sub_1BE053494())
  {
    v229 = swift_slowAlloc();
    *v229 = 0;
    v230 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v227, v228, v230, "Aggregated Daily Spending", "", v229, 2u);
    MEMORY[0x1BFB45F20](v229, -1, -1);
  }

  v231 = *(v8 + 2728);
  v232 = *(v8 + 2648);
  v233 = *(v8 + 2632);
  v353 = *(v8 + 2408);
  v362 = *(v8 + 2440);
  v349 = *(v8 + 2104);
  v234 = v227;
  v235 = *(v8 + 2096);
  v345 = *(v8 + 2088);
  v236 = *(v8 + 1896);
  v237 = *(v8 + 1864);
  v365 = *(v8 + 1848);
  v368 = *(v8 + 1856);
  v238 = *(v8 + 1824);
  v371 = *(v8 + 1840);
  v377 = *(v8 + 1816);
  v239 = *(v8 + 1528);

  v231(v232, v233);
  (*(v235 + 16))(v349, v239 + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_accountID, v345);
  sub_1BE0496D4();
  sub_1BD0DE19C(v362, v353, &qword_1EBD44F98, &unk_1BE0D39B0);
  sub_1BE0496C4();
  sub_1BE049694();
  v240 = *(v237 + 8);
  v240(v236, v368);
  sub_1BD0DE19C(v365, v371, &qword_1EBD5BDB0, &qword_1BE10DEA0);
  v241 = (*(v238 + 48))(v371, 1, v377);
  v242 = *(v8 + 1904);
  v243 = *(v8 + 1848);
  if (v241 == 1)
  {
    sub_1BD0DE53C(*(v8 + 1848), &qword_1EBD5BDB0, &qword_1BE10DEA0);
    v244 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.IncomeBreakdown(0);
    (*(*(v244 - 8) + 56))(v242, 1, 1, v244);
  }

  else
  {
    v245 = *(v8 + 1832);
    v246 = *(v8 + 1824);
    v247 = *(v8 + 1816);
    (*(v246 + 32))(v245, *(v8 + 1840), v247);
    sub_1BE0495D4();
    v248 = sub_1BE0495E4();
    (*(v246 + 8))(v245, v247);
    sub_1BD0DE53C(v243, &qword_1EBD5BDB0, &qword_1BE10DEA0);
    v249 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.IncomeBreakdown(0);
    *(v242 + *(v249 + 20)) = v248;
    (*(*(v249 - 8) + 56))(v242, 0, 1, v249);
  }

  v250 = *(v8 + 1888);
  v251 = *(v8 + 1856);
  v252 = *(v8 + 1800);
  v253 = *(v8 + 1792);
  v254 = *(v8 + 1776);
  v255 = *(v8 + 1768);
  sub_1BE0496C4();
  sub_1BE0495C4();
  v240(v250, v251);
  sub_1BD0DE19C(v252, v253, &qword_1EBD5BDA8, &qword_1BE10DE98);
  v256 = (*(v254 + 48))(v253, 1, v255);
  v257 = *(v8 + 1808);
  v258 = *(v8 + 1800);
  if (v256 == 1)
  {
    sub_1BD0DE53C(*(v8 + 1800), &qword_1EBD5BDA8, &qword_1BE10DE98);
    v259 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ReimbursementsBreakdown(0);
    (*(*(v259 - 8) + 56))(v257, 1, 1, v259);
  }

  else
  {
    v260 = *(v8 + 1784);
    v261 = *(v8 + 1776);
    v262 = *(v8 + 1768);
    (*(v261 + 32))(v260, *(v8 + 1792), v262);
    sub_1BE0495D4();
    v263 = sub_1BE0495E4();
    (*(v261 + 8))(v260, v262);
    sub_1BD0DE53C(v258, &qword_1EBD5BDA8, &qword_1BE10DE98);
    v264 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ReimbursementsBreakdown(0);
    *(v257 + *(v264 + 20)) = v263;
    (*(*(v264 - 8) + 56))(v257, 0, 1, v264);
  }

  v265 = *(v8 + 1880);
  v266 = *(v8 + 1856);
  v267 = *(v8 + 1752);
  v268 = *(v8 + 1744);
  v269 = *(v8 + 1728);
  v270 = *(v8 + 1720);
  sub_1BE0496C4();
  sub_1BE049604();
  v240(v265, v266);
  sub_1BD0DE19C(v267, v268, &qword_1EBD5BDA0, &qword_1BE10DE90);
  v271 = (*(v269 + 48))(v268, 1, v270);
  v272 = *(v8 + 1760);
  v273 = *(v8 + 1752);
  if (v271 == 1)
  {
    sub_1BD0DE53C(*(v8 + 1752), &qword_1EBD5BDA0, &qword_1BE10DE90);
    v274 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ManuallyExcludedBreakdown(0);
    (*(*(v274 - 8) + 56))(v272, 1, 1, v274);
  }

  else
  {
    v275 = *(v8 + 1736);
    v276 = *(v8 + 1728);
    v277 = *(v8 + 1720);
    (*(v276 + 32))(v275, *(v8 + 1744), v277);
    sub_1BE0495D4();
    v278 = sub_1BE0495E4();
    (*(v276 + 8))(v275, v277);
    sub_1BD0DE53C(v273, &qword_1EBD5BDA0, &qword_1BE10DE90);
    v279 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ManuallyExcludedBreakdown(0);
    *(v272 + *(v279 + 20)) = v278;
    (*(*(v279 - 8) + 56))(v272, 0, 1, v279);
  }

  v280 = *(v8 + 1872);
  v281 = *(v8 + 1856);
  v282 = *(v8 + 1712);
  v283 = *(v8 + 1704);
  v284 = *(v8 + 1688);
  v285 = *(v8 + 1680);
  sub_1BE0496C4();
  sub_1BE0496A4();
  v240(v280, v281);
  sub_1BD0DE19C(v282, v283, &qword_1EBD5BD98, &qword_1BE10DE88);
  v286 = (*(v284 + 48))(v283, 1, v285);
  v287 = *(v8 + 2440);
  v288 = *(v8 + 1912);
  v289 = *(v8 + 1712);
  if (v286 == 1)
  {
    sub_1BD0DE53C(*(v8 + 1712), &qword_1EBD5BD98, &qword_1BE10DE88);
    sub_1BDA138A4(v288, type metadata accessor for FinanceKitDailyCategorySpendingAggregator);
    sub_1BD0DE53C(v287, &qword_1EBD44F98, &unk_1BE0D39B0);
    v378 = 0;
  }

  else
  {
    v290 = *(v8 + 1696);
    v291 = *(v8 + 1688);
    v292 = *(v8 + 1680);
    (*(v291 + 32))(v290, *(v8 + 1704), v292);
    v378 = sub_1BE049614();
    (*(v291 + 8))(v290, v292);
    sub_1BD0DE53C(v289, &qword_1EBD5BD98, &qword_1BE10DE88);
    sub_1BDA138A4(v288, type metadata accessor for FinanceKitDailyCategorySpendingAggregator);
    sub_1BD0DE53C(v287, &qword_1EBD44F98, &unk_1BE0D39B0);
  }

  v293 = *(v8 + 2840);
  v294 = *(v8 + 2592);
  v369 = *(v8 + 2584);
  v372 = *(v8 + 2616);
  v295 = *(v8 + 2408);
  v296 = *(v8 + 2352);
  v297 = *(v8 + 2344);
  v298 = *(v8 + 2336);
  v299 = *(v8 + 1904);
  v354 = *(v8 + 1808);
  v363 = *(v8 + 1760);
  v366 = *(v8 + 2496);
  v300 = *(v8 + 1336);
  (*(*(v8 + 2096) + 32))(v300, *(v8 + 2104), *(v8 + 2088));
  v301 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model(0);
  (*(v297 + 32))(v300 + v301[5], v296, v298);
  sub_1BD0DE204(v295, v300 + v301[6], &qword_1EBD44F98, &unk_1BE0D39B0);
  *(v300 + v301[7]) = v381;
  *(v300 + v301[8]) = v293;
  sub_1BD0DE204(v299, v300 + v301[9], &qword_1EBD507F8, &qword_1BE0F10E0);
  sub_1BD0DE204(v354, v300 + v301[10], &qword_1EBD507F0, &qword_1BE0F10D8);
  sub_1BD0DE204(v363, v300 + v301[11], &qword_1EBD507E8, &qword_1BE0F10D0);
  *(v300 + v301[12]) = v378;
  *(v300 + v301[13]) = v342;
  sub_1BD0DE53C(v366, &qword_1EBD5BDB8, &qword_1BE10DEA8);
  (*(v294 + 8))(v372, v369);
  a3 = sub_1BDA07274;
  a2 = *(v8 + 2504);
  v9 = (v8 + 656);
  a4 = (v8 + 1584);

  return MEMORY[0x1EEE6DEB0](v9, a2, a3, a4);
}

uint64_t sub_1BDA072CC()
{
  v1 = v0[345];
  v2 = v0[344];
  v3 = v0[343];
  v4 = v0[340];
  v5 = v0[338];
  v6 = v0[337];
  sub_1BDA091AC("GenerateSpendingSummary", 23, 2, v3);
  v3, v7, v8, v9, v10, v11, v12, v13;
  (*(v5 + 8))(v4, v6);
  v2, v14, v15, v16, v17, v18, v19, v20;
  v1, v21, v22, v23, v24, v25, v26, v27;

  v28 = v0[1];

  return v28();
}

uint64_t sub_1BDA078FC()
{
  v1 = v0[345];
  v2 = v0[344];
  v3 = v0[343];
  v4 = v0[340];
  v5 = v0[338];
  v6 = v0[337];
  sub_1BDA091AC("GenerateSpendingSummary", 23, 2, v3);
  v3, v7, v8, v9, v10, v11, v12, v13;
  (*(v5 + 8))(v4, v6);
  v2, v14, v15, v16, v17, v18, v19, v20;
  v1, v21, v22, v23, v24, v25, v26, v27;

  v28 = v0[1];

  return v28();
}

uint64_t sub_1BDA07EC0()
{
  (*(v0[324] + 8))(v0[327], v0[323]);
  v1 = v0[313];

  return MEMORY[0x1EEE6DEB0](v0 + 82, v1, sub_1BDA07F40, v0 + 186);
}

uint64_t sub_1BDA07F98()
{
  v1 = v0[345];
  v2 = v0[344];
  v3 = v0[343];
  v4 = v0[340];
  v5 = v0[338];
  v6 = v0[337];
  sub_1BDA091AC("GenerateSpendingSummary", 23, 2, v3);
  v3, v7, v8, v9, v10, v11, v12, v13;
  (*(v5 + 8))(v4, v6);
  v2, v14, v15, v16, v17, v18, v19, v20;
  v1, v21, v22, v23, v24, v25, v26, v27;

  v28 = v0[1];

  return v28();
}

uint64_t sub_1BDA0855C(uint64_t a1)
{
  v2 = v1[360];
  sub_1BE04D114();
  v3 = v2;
  v4 = sub_1BE04D204();
  v5 = sub_1BE052C34();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[360];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1BD026000, v4, v5, "Failed to generate group breakdowns with error: %@.", v8, 0xCu);
    sub_1BD0DE53C(v9, &unk_1EBD3E590, &unk_1BE0B7E50);
    MEMORY[0x1BFB45F20](v9, -1, -1);
    MEMORY[0x1BFB45F20](v8, -1, -1);
  }

  else
  {
  }

  (*(v1[203] + 8))(v1[209], v1[197]);
  sub_1BE04B6B4();
  v12 = sub_1BE04CFD4();
  v13 = sub_1BE052E44();
  if (sub_1BE053494())
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v12, v13, v15, "Calculated Group Breakdowns", "", v14, 2u);
    MEMORY[0x1BFB45F20](v14, -1, -1);
  }

  v128 = v1[353];
  v16 = v12;
  v17 = v1[341];
  v18 = v1[332];
  v19 = v1[329];
  v136 = v1[319];
  v20 = v1[298];
  v21 = v1[293];
  v133 = v1[292];
  v22 = v1[273];
  v23 = v1[239];
  v124 = v1[191];
  v125 = v1[271];
  v141 = v1[185];

  v17(v18, v19);
  v24 = OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_calendar;
  v25 = sub_1BE04B2F4();
  (*(*(v25 - 8) + 16))(v23, v124 + v24, v25);
  sub_1BE0497F4();
  v26 = sub_1BE0496E4();
  v128(v22, v125);
  sub_1BE0496D4();
  v27 = sub_1BE0493A4();
  v29 = v28;
  (*(v21 + 8))(v20, v133);
  sub_1BE049804();
  sub_1BD19E4C4(v26, v27, v29, v136, v141);
  v142 = v30;
  v29, v31, v32, v33, v34, v35, v36, v37;
  v26, v38, v39, v40, v41, v42, v43, v44;
  sub_1BD0DE53C(v136, &qword_1EBD38DB8, &unk_1BE0BD340);
  sub_1BE04B6B4();
  v45 = sub_1BE04CFD4();
  v46 = sub_1BE052E44();
  if (sub_1BE053494())
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    v48 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v45, v46, v48, "Aggregated Daily Spending", "", v47, 2u);
    MEMORY[0x1BFB45F20](v47, -1, -1);
  }

  v49 = v1[341];
  v50 = v1[331];
  v51 = v1[329];
  v126 = v1[301];
  v129 = v1[305];
  v123 = v1[263];
  v52 = v45;
  v53 = v1[262];
  v122 = v1[261];
  v54 = v1[237];
  v55 = v1[233];
  v131 = v1[231];
  v134 = v1[232];
  v56 = v1[228];
  v137 = v1[230];
  v139 = v1[227];
  v57 = v1[191];

  v49(v50, v51);
  (*(v53 + 16))(v123, v57 + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_accountID, v122);
  sub_1BE0496D4();
  sub_1BD0DE19C(v129, v126, &qword_1EBD44F98, &unk_1BE0D39B0);
  sub_1BE0496C4();
  sub_1BE049694();
  v58 = *(v55 + 8);
  v58(v54, v134);
  sub_1BD0DE19C(v131, v137, &qword_1EBD5BDB0, &qword_1BE10DEA0);
  v59 = (*(v56 + 48))(v137, 1, v139);
  v60 = v1[238];
  v61 = v1[231];
  if (v59 == 1)
  {
    sub_1BD0DE53C(v1[231], &qword_1EBD5BDB0, &qword_1BE10DEA0);
    v62 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.IncomeBreakdown(0);
    (*(*(v62 - 8) + 56))(v60, 1, 1, v62);
  }

  else
  {
    v63 = v1[229];
    v64 = v1[228];
    v65 = v1[227];
    (*(v64 + 32))(v63, v1[230], v65);
    sub_1BE0495D4();
    v66 = sub_1BE0495E4();
    (*(v64 + 8))(v63, v65);
    sub_1BD0DE53C(v61, &qword_1EBD5BDB0, &qword_1BE10DEA0);
    v67 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.IncomeBreakdown(0);
    *(v60 + *(v67 + 20)) = v66;
    (*(*(v67 - 8) + 56))(v60, 0, 1, v67);
  }

  v68 = v1[236];
  v69 = v1[232];
  v70 = v1[225];
  v71 = v1[224];
  v72 = v1[222];
  v73 = v1[221];
  sub_1BE0496C4();
  sub_1BE0495C4();
  v58(v68, v69);
  sub_1BD0DE19C(v70, v71, &qword_1EBD5BDA8, &qword_1BE10DE98);
  v74 = (*(v72 + 48))(v71, 1, v73);
  v75 = v1[226];
  v76 = v1[225];
  if (v74 == 1)
  {
    sub_1BD0DE53C(v1[225], &qword_1EBD5BDA8, &qword_1BE10DE98);
    v77 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ReimbursementsBreakdown(0);
    (*(*(v77 - 8) + 56))(v75, 1, 1, v77);
  }

  else
  {
    v78 = v1[223];
    v79 = v1[222];
    v80 = v1[221];
    (*(v79 + 32))(v78, v1[224], v80);
    sub_1BE0495D4();
    v81 = sub_1BE0495E4();
    (*(v79 + 8))(v78, v80);
    sub_1BD0DE53C(v76, &qword_1EBD5BDA8, &qword_1BE10DE98);
    v82 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ReimbursementsBreakdown(0);
    *(v75 + *(v82 + 20)) = v81;
    (*(*(v82 - 8) + 56))(v75, 0, 1, v82);
  }

  v83 = v1[235];
  v84 = v1[232];
  v85 = v1[219];
  v86 = v1[218];
  v87 = v1[216];
  v88 = v1[215];
  sub_1BE0496C4();
  sub_1BE049604();
  v58(v83, v84);
  sub_1BD0DE19C(v85, v86, &qword_1EBD5BDA0, &qword_1BE10DE90);
  v89 = (*(v87 + 48))(v86, 1, v88);
  v90 = v1[220];
  v91 = v1[219];
  if (v89 == 1)
  {
    sub_1BD0DE53C(v1[219], &qword_1EBD5BDA0, &qword_1BE10DE90);
    v92 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ManuallyExcludedBreakdown(0);
    (*(*(v92 - 8) + 56))(v90, 1, 1, v92);
  }

  else
  {
    v93 = v1[217];
    v94 = v1[216];
    v95 = v1[215];
    (*(v94 + 32))(v93, v1[218], v95);
    sub_1BE0495D4();
    v96 = sub_1BE0495E4();
    (*(v94 + 8))(v93, v95);
    sub_1BD0DE53C(v91, &qword_1EBD5BDA0, &qword_1BE10DE90);
    v97 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ManuallyExcludedBreakdown(0);
    *(v90 + *(v97 + 20)) = v96;
    (*(*(v97 - 8) + 56))(v90, 0, 1, v97);
  }

  v98 = v1[234];
  v99 = v1[232];
  v100 = v1[214];
  v101 = v1[213];
  v102 = v1[211];
  v103 = v1[210];
  sub_1BE0496C4();
  sub_1BE0496A4();
  v58(v98, v99);
  sub_1BD0DE19C(v100, v101, &qword_1EBD5BD98, &qword_1BE10DE88);
  v104 = (*(v102 + 48))(v101, 1, v103);
  v105 = v1[305];
  v106 = v1[239];
  v107 = v1[214];
  if (v104 == 1)
  {
    sub_1BD0DE53C(v1[214], &qword_1EBD5BD98, &qword_1BE10DE88);
    sub_1BDA138A4(v106, type metadata accessor for FinanceKitDailyCategorySpendingAggregator);
    sub_1BD0DE53C(v105, &qword_1EBD44F98, &unk_1BE0D39B0);
    v140 = 0;
  }

  else
  {
    v108 = v1[212];
    v109 = v1[211];
    v110 = v1[210];
    (*(v109 + 32))(v108, v1[213], v110);
    v140 = sub_1BE049614();
    (*(v109 + 8))(v108, v110);
    sub_1BD0DE53C(v107, &qword_1EBD5BD98, &qword_1BE10DE88);
    sub_1BDA138A4(v106, type metadata accessor for FinanceKitDailyCategorySpendingAggregator);
    sub_1BD0DE53C(v105, &qword_1EBD44F98, &unk_1BE0D39B0);
  }

  v111 = v1[355];
  v112 = v1[324];
  v135 = v1[323];
  v138 = v1[327];
  v113 = v1[301];
  v114 = v1[294];
  v115 = v1[293];
  v116 = v1[292];
  v117 = v1[238];
  v127 = v1[226];
  v130 = v1[220];
  v132 = v1[312];
  v118 = v1[167];
  (*(v1[262] + 32))(v118, v1[263], v1[261]);
  v119 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model(0);
  (*(v115 + 32))(v118 + v119[5], v114, v116);
  sub_1BD0DE204(v113, v118 + v119[6], &qword_1EBD44F98, &unk_1BE0D39B0);
  *(v118 + v119[7]) = v142;
  *(v118 + v119[8]) = v111;
  sub_1BD0DE204(v117, v118 + v119[9], &qword_1EBD507F8, &qword_1BE0F10E0);
  sub_1BD0DE204(v127, v118 + v119[10], &qword_1EBD507F0, &qword_1BE0F10D8);
  sub_1BD0DE204(v130, v118 + v119[11], &qword_1EBD507E8, &qword_1BE0F10D0);
  *(v118 + v119[12]) = v140;
  *(v118 + v119[13]) = MEMORY[0x1E69E7CC0];
  sub_1BD0DE53C(v132, &qword_1EBD5BDB8, &qword_1BE10DEA8);
  (*(v112 + 8))(v138, v135);
  v120 = v1[313];

  return MEMORY[0x1EEE6DEB0](v1 + 82, v120, sub_1BDA07274, v1 + 198);
}

uint64_t sub_1BDA091AC(const char *a1, uint64_t a2, int a3, void *a4)
{
  v35 = a3;
  v36 = a1;
  v5 = sub_1BE04CFF4();
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04CFC4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE04CFE4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04B6B4();
  v16 = sub_1BE04CFD4();
  sub_1BE04D004();
  v32 = sub_1BE052E24();
  result = sub_1BE053494();
  if ((result & 1) == 0)
  {
LABEL_13:

    (*(v9 + 8))(v11, v8);
    return (*(v13 + 8))(v15, v12);
  }

  v31 = v12;
  if ((v35 & 1) == 0)
  {
    if (v36)
    {
LABEL_9:
      sub_1BE048964();
      sub_1BE04D034();
      a4, v18, v19, v20, v21, v22, v23, v24;
      v26 = v33;
      v25 = v34;
      if ((*(v33 + 88))(v7, v34) == *MEMORY[0x1E69E93E8])
      {
        v27 = "[Error] Interval already ended";
      }

      else
      {
        (*(v26 + 8))(v7, v25);
        v27 = "";
      }

      v28 = swift_slowAlloc();
      *v28 = 0;
      v29 = sub_1BE04CFA4();
      _os_signpost_emit_with_name_impl(&dword_1BD026000, v16, v32, v29, v36, v27, v28, 2u);
      MEMORY[0x1BFB45F20](v28, -1, -1);
      v12 = v31;
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v36 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v36 & 0xFFFFF800) != 0xD800)
  {
    if (v36 >> 16 <= 0x10)
    {
      v36 = &v37;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1BDA094F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BDA09514, 0, 0);
}

uint64_t sub_1BDA09514()
{
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1BD72AC3C;
  v2 = v0[4];
  v3 = v0[2];

  return sub_1BD72A248(v3, v2);
}

uint64_t sub_1BDA095BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD402D0, &unk_1BE0C7D50);
  v3[5] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BDA096C4, 0, 0);
}

uint64_t sub_1BDA096C4()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  sub_1BD0DE19C(v0[3], v3, &qword_1EBD402D0, &unk_1BE0C7D50);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1BD0DE53C(v0[5], &qword_1EBD402D0, &unk_1BE0C7D50);
    v4 = v0[2];
    v5 = sub_1BE049814();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);

    v6 = v0[1];

    return v6();
  }

  else
  {
    sub_1BD0DE204(v0[5], v0[8], &qword_1EBD38DB8, &unk_1BE0BD340);
    v8 = swift_task_alloc();
    v0[9] = v8;
    *v8 = v0;
    v8[1] = sub_1BDA09880;
    v9 = v0[8];
    v10 = v0[2];

    return sub_1BD72A248(v10, v9);
  }
}

uint64_t sub_1BDA09880()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1BDA09A6C;
  }

  else
  {
    v2 = sub_1BDA09994;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BDA09994()
{
  sub_1BD0DE53C(v0[8], &qword_1EBD38DB8, &unk_1BE0BD340);
  v1 = v0[2];
  v2 = sub_1BE049814();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1BDA09A6C()
{
  sub_1BD0DE53C(*(v0 + 64), &qword_1EBD38DB8, &unk_1BE0BD340);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BDA09AF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE049B04();
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v45 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v42 - v7;
  v8 = sub_1BE0493F4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v42 - v13;
  v50 = a1;
  sub_1BE049784();
  v15 = sub_1BE0493C4();
  v48 = v16;
  v49 = v15;
  v18 = v17;
  v19 = *(v9 + 8);
  v19(v14, v8);
  v51 = a2;
  sub_1BE049784();
  v20 = sub_1BE0493C4();
  v22 = v21;
  v24 = v23;
  v44 = v8;
  v19(v11, v8);
  if (MEMORY[0x1BFB40440](v49, v48, v18, v20, v22, v24))
  {
    v25 = v43;
    sub_1BE0497A4();
    v26 = sub_1BE049AF4();
    v27 = v47;
    v28 = *(v46 + 8);
    v28(v25, v47);
    v29 = v45;
    sub_1BE0497A4();
    LOWORD(v25) = sub_1BE049AF4();
    v28(v29, v27);
    v30 = v26 < v25;
  }

  else
  {
    sub_1BE049784();
    v31 = sub_1BE0493C4();
    v50 = v32;
    v34 = v33;
    v35 = v44;
    v19(v14, v44);
    sub_1BE049784();
    v36 = sub_1BE0493C4();
    v38 = v37;
    v40 = v39;
    v19(v11, v35);
    v30 = MEMORY[0x1BFB403F0](v36, v38, v40, v31, v50, v34);
  }

  return v30 & 1;
}

uint64_t sub_1BDA09E0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v153 = a3;
  v156 = a4;
  v157 = a2;
  v131 = sub_1BE0497B4();
  v130 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v128 = &v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v129 = &v125 - v8;
  v9 = sub_1BE049734();
  v10 = *(v9 - 8);
  v162 = v9;
  v163 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v125 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE0497E4();
  v151 = *(v13 - 8);
  v152 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v148 = &v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v137 = &v125 - v16;
  v136 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.PartialPeriodSpendingFilter(0);
  MEMORY[0x1EEE9AC00](v136);
  v145 = &v125 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_1BE0493F4();
  v140 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v127 = &v125 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v139 = &v125 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v133 = &v125 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v144 = &v125 - v24;
  v154 = sub_1BE04AF64();
  v150 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v164 = &v125 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v143 = &v125 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v135 = &v125 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v149 = &v125 - v31;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
  MEMORY[0x1EEE9AC00](v146);
  v134 = &v125 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v142 = &v125 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v125 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BDB8, &qword_1BE10DEA8);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v40 = &v125 - v39;
  v41 = sub_1BE049814();
  v42 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v125 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44F98, &unk_1BE0D39B0);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v138 = &v125 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v132 = &v125 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v125 - v50;
  v52 = sub_1BE049B04();
  v159 = *(v52 - 8);
  v160 = v52;
  MEMORY[0x1EEE9AC00](v52);
  v158 = &v125 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = a1;
  sub_1BE0497A4();
  v54 = type metadata accessor for FinanceKitSpendingTrend(0);
  v55 = *(*(v54 - 8) + 56);
  v155 = v51;
  v55(v51, 1, 1, v54);
  sub_1BD0DE19C(v157, v40, &qword_1EBD5BDB8, &qword_1BE10DEA8);
  if ((*(v42 + 48))(v40, 1, v41) == 1)
  {
    sub_1BD0DE53C(v40, &qword_1EBD5BDB8, &qword_1BE10DEA8);
    v57 = v155;
    v56 = v156;
LABEL_3:
    v58 = v158;
LABEL_17:
    v112 = v159;
    v111 = v160;
    (*(v159 + 16))(v56, v58, v160);
    v113 = sub_1BE049794();
    v114 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.CategoryBreakdown(0);
    sub_1BE049784();
    (*(v112 + 8))(v58, v111);
    *(v56 + *(v114 + 20)) = v113;
    return sub_1BD0DE204(v57, v56 + *(v114 + 28), &qword_1EBD44F98, &unk_1BE0D39B0);
  }

  v126 = v42;
  v59 = *(v42 + 32);
  v157 = v41;
  v59(v44, v40, v41);
  sub_1BE049804();
  v60 = v149;
  sub_1BE04AEF4();
  sub_1BDA1396C(&qword_1EBD525D0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  v61 = v154;
  v62 = sub_1BE052314();
  v147 = v44;
  if ((v62 & 1) == 0)
  {
    (*(v150 + 8))(v60, v61);
    sub_1BD0DE53C(v37, &qword_1EBD38DB8, &unk_1BE0BD340);
    v58 = v158;
    goto LABEL_13;
  }

  v63 = sub_1BE0522F4();
  v64 = v150;
  v66 = v150 + 8;
  v65 = *(v150 + 8);
  v65(v60, v61);
  sub_1BD0DE53C(v37, &qword_1EBD38DB8, &unk_1BE0BD340);
  v58 = v158;
  if ((v63 & 1) == 0)
  {
LABEL_13:
    v85 = v147;
    v84 = v148;
    sub_1BE0497F4();
    v86 = sub_1BE0497D4();
    (*(v151 + 8))(v84, v152);
    if (v86[2] && (v94 = sub_1BD148E9C(v58), (v87 & 1) != 0))
    {
      v95 = v130;
      v96 = v128;
      v97 = v131;
      (*(v130 + 16))(v128, v86[7] + *(v130 + 72) * v94, v131);
      v86, v98, v99, v100, v101, v102, v103, v104;
      v105 = v129;
      (*(v95 + 32))(v129, v96, v97);
      v106 = v139;
      sub_1BE049784();
      v107 = v127;
      sub_1BE049784();
      sub_1BD36295C(v138);
      v108 = *(v140 + 8);
      v109 = v107;
      v110 = v141;
      v108(v109, v141);
      v108(v106, v110);
      (*(v95 + 8))(v105, v97);
      (*(v126 + 8))(v147, v157);
      v57 = v155;
      sub_1BD0DE53C(v155, &qword_1EBD44F98, &unk_1BE0D39B0);
      sub_1BD0DE204(v138, v57, &qword_1EBD44F98, &unk_1BE0D39B0);
      v56 = v156;
    }

    else
    {
      v86, v87, v88, v89, v90, v91, v92, v93;
      (*(v126 + 8))(v85, v157);
      v57 = v155;
      v56 = v156;
    }

    goto LABEL_17;
  }

  sub_1BE049784();
  sub_1BE049804();
  v67 = v145;
  (*(v159 + 16))(v145, v58, v160);
  swift_storeEnumTagMultiPayload();
  v68 = v135;
  sub_1BE04AEF4();
  sub_1BE04ADC4();
  v69 = v154;
  v153 = v66;
  v149 = v65;
  v65(v68, v154);
  v70 = v134;
  sub_1BE049804();
  (*(v64 + 16))(v143, v70, v69);
  sub_1BD0DE53C(v70, &qword_1EBD38DB8, &unk_1BE0BD340);
  sub_1BE04ADD4();
  v71 = v137;
  sub_1BE0497F4();
  v72 = sub_1BE0496E4();
  (*(v151 + 8))(v71, v152);
  v73 = MEMORY[0x1BFB403C0](0);
  v165[0] = v73;
  v165[1] = v74;
  v166 = v75;
  v81 = v72[2];
  if (!v81)
  {
    v162 = HIWORD(v73);
    v163 = HIDWORD(v73);
LABEL_19:
    v72, v74, v75, v76, v77, v78, v79, v80;
    v116 = v139;
    sub_1BE0496D4();
    sub_1BE0493A4();
    v117 = *(v140 + 8);
    v118 = v116;
    v119 = v141;
    v117(v118, v141);
    v120 = v133;
    sub_1BE049404();
    v121 = v154;
    v122 = v149;
    (v149)(v164, v154);
    v122(v143, v121);
    sub_1BDA138A4(v145, type metadata accessor for FinanceKitSpendingSummaryDataProvider.PartialPeriodSpendingFilter);
    sub_1BD0DE53C(v142, &qword_1EBD38DB8, &unk_1BE0BD340);
    v123 = v132;
    v124 = v144;
    sub_1BD36295C(v132);
    v117(v120, v119);
    v117(v124, v119);
    (*(v126 + 8))(v147, v157);
    v57 = v155;
    sub_1BD0DE53C(v155, &qword_1EBD44F98, &unk_1BE0D39B0);
    sub_1BD0DE204(v123, v57, &qword_1EBD44F98, &unk_1BE0D39B0);
    v56 = v156;
    goto LABEL_3;
  }

  v82 = 0;
  v83 = (v163 + 8);
  while (v82 < v72[2])
  {
    v71 = v162;
    (*(v163 + 16))(v12, v72 + ((*(v163 + 80) + 32) & ~*(v163 + 80)) + *(v163 + 72) * v82, v162);
    sub_1BDA0B03C(v165, v12, v164, v67);
    if (v4)
    {
      goto LABEL_21;
    }

    ++v82;
    (*v83)(v12, v71);
    if (v81 == v82)
    {
      v163 = WORD2(v165[0]);
      v162 = HIWORD(v165[0]);
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:

  result = (*v83)(v12, v71);
  __break(1u);
  return result;
}

uint64_t sub_1BDA0AD30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04AFE4();
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v45 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v42 - v7;
  v8 = sub_1BE0493F4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v42 - v13;
  v50 = a1;
  sub_1BE049744();
  v15 = sub_1BE0493C4();
  v48 = v16;
  v49 = v15;
  v18 = v17;
  v19 = *(v9 + 8);
  v19(v14, v8);
  v51 = a2;
  sub_1BE049744();
  v20 = sub_1BE0493C4();
  v22 = v21;
  v24 = v23;
  v44 = v8;
  v19(v11, v8);
  if (MEMORY[0x1BFB40440](v49, v48, v18, v20, v22, v24))
  {
    v25 = v43;
    sub_1BE049764();
    v26 = v45;
    sub_1BE049764();
    v27 = MEMORY[0x1BFB38030](v25, v26);
    v28 = *(v46 + 8);
    v29 = v26;
    v30 = v47;
    v28(v29, v47);
    v28(v25, v30);
  }

  else
  {
    sub_1BE049744();
    v31 = sub_1BE0493C4();
    v50 = v32;
    v34 = v33;
    v35 = v44;
    v19(v14, v44);
    sub_1BE049744();
    v36 = sub_1BE0493C4();
    v38 = v37;
    v40 = v39;
    v19(v11, v35);
    v27 = MEMORY[0x1BFB403F0](v36, v38, v40, v31, v50, v34);
  }

  return v27 & 1;
}

uint64_t sub_1BDA0B03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v106 = a4;
  v107 = a3;
  v105 = a1;
  v4 = sub_1BE049774();
  v96 = *(v4 - 8);
  v97 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v94 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v95 = &v90 - v7;
  v8 = sub_1BE04AFE4();
  v100 = *(v8 - 8);
  v101 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v102 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE0497B4();
  v92 = *(v10 - 8);
  v93 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v90 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v91 = &v90 - v13;
  v14 = sub_1BE049B04();
  v98 = *(v14 - 8);
  v99 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BE0493F4();
  v103 = *(v17 - 8);
  v104 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.PartialPeriodSpendingFilter(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1BE04AF64();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE049724();
  sub_1BDA1396C(&qword_1EBD525D0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  v27 = sub_1BE0522F4();
  result = (*(v24 + 8))(v26, v23);
  if ((v27 & 1) == 0)
  {
    sub_1BDA13D08(v106, v22, type metadata accessor for FinanceKitSpendingSummaryDataProvider.PartialPeriodSpendingFilter);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v31 = v100;
        v30 = v101;
        v32 = v102;
        (*(v100 + 32))(v102, v22, v101);
        v40 = sub_1BE0496F4();
        if (v40[2] && (v41 = sub_1BD14951C(v32), (v33 & 1) != 0))
        {
          v43 = v96;
          v42 = v97;
          v44 = v94;
          (*(v96 + 16))(v94, v40[7] + *(v96 + 72) * v41, v97);
          v40, v45, v46, v47, v48, v49, v50, v51;
          v52 = v95;
          (*(v43 + 32))(v95, v44, v42);
          sub_1BE049744();
          v53 = sub_1BE0493C4();
          v55 = v54;
          v57 = v56;
          (*(v103 + 8))(v19, v104);
          MEMORY[0x1BFB40450](v105, v53, v55, v57);
          (*(v43 + 8))(v52, v42);
          return (*(v31 + 8))(v102, v30);
        }

        else
        {
          v40, v33, v34, v35, v36, v37, v38, v39;
          return (*(v31 + 8))(v32, v30);
        }
      }

      else
      {
        sub_1BE049704();
        v85 = sub_1BE0493C4();
        v87 = v86;
        v89 = v88;
        (*(v103 + 8))(v19, v104);
        return MEMORY[0x1BFB40450](v105, v85, v87, v89);
      }
    }

    else
    {
      v58 = v98;
      v59 = v99;
      (*(v98 + 32))(v16, v22, v99);
      v67 = sub_1BE049714();
      if (v67[2] && (v68 = sub_1BD148E9C(v16), (v60 & 1) != 0))
      {
        v70 = v92;
        v69 = v93;
        v71 = v90;
        (*(v92 + 16))(v90, v67[7] + *(v92 + 72) * v68, v93);
        v67, v72, v73, v74, v75, v76, v77, v78;
        v79 = v91;
        (*(v70 + 32))(v91, v71, v69);
        sub_1BE049784();
        v80 = v58;
        v81 = sub_1BE0493C4();
        v83 = v82;
        LODWORD(v107) = v84;
        (*(v103 + 8))(v19, v104);
        MEMORY[0x1BFB40450](v105, v81, v83, v107);
        (*(v70 + 8))(v79, v69);
        return (*(v80 + 8))(v16, v59);
      }

      else
      {
        v67, v60, v61, v62, v63, v64, v65, v66;
        return (*(v58 + 8))(v16, v59);
      }
    }
  }

  return result;
}

uint64_t sub_1BDA0B76C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v52 = a2;
  v58 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38EE0, &unk_1BE0B7F40);
  v5 = *(v4 - 8);
  v59 = v4;
  v60 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v57 = &v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F828, &unk_1BE0E8C00);
  v8 = *(v7 - 8);
  v53 = v7;
  v54 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v47 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38EE8, &qword_1BE0DF8F0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v47 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38EF0, &qword_1BE0B7F50);
  v51 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v47 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F830, &qword_1BE0E29F0);
  v19 = *(v18 - 8);
  v55 = v18;
  v56 = v19;
  MEMORY[0x1EEE9AC00](v18);
  v48 = &v47 - v20;
  v50 = *a1;
  sub_1BD0DE4F4(&qword_1EBD38F10, &qword_1EBD38EE8, &qword_1BE0DF8F0, MEMORY[0x1E6968DA8]);
  sub_1BE04A7C4();
  KeyPath = swift_getKeyPath();
  sub_1BE04A724();
  KeyPath, v22, v23, v24, v25, v26, v27, v28;
  v29 = v12 + 8;
  v30 = *(v12 + 8);
  v49 = v29;
  v30(v14, v11);
  sub_1BE04AFE4();
  sub_1BE04A7B4();
  v52 = MEMORY[0x1E6968D58];
  sub_1BD0DE4F4(&qword_1EBD38F20, &qword_1EBD38EF0, &qword_1BE0B7F50, MEMORY[0x1E6968D58]);
  sub_1BD0DE4F4(&qword_1EBD3F850, &qword_1EBD3F828, &unk_1BE0E8C00, MEMORY[0x1E6968D20]);
  sub_1BDA1396C(&unk_1EBD36A30, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v31 = v53;
  sub_1BE04A714();
  (*(v54 + 8))(v10, v31);
  (*(v51 + 8))(v17, v15);
  sub_1BE04A7C4();
  v32 = swift_getKeyPath();
  v33 = v57;
  sub_1BE04A724();
  v32, v34, v35, v36, v37, v38, v39, v40;
  v30(v14, v11);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5BE18, &unk_1BE10E000);
  v42 = v58;
  v58[3] = v41;
  v42[4] = sub_1BDA1471C();
  __swift_allocate_boxed_opaque_existential_1(v42);
  sub_1BD0DE4F4(&qword_1EBD3F858, &qword_1EBD3F830, &qword_1BE0E29F0, MEMORY[0x1E6968D08]);
  sub_1BD0DE4F4(qword_1EBD38F90, &qword_1EBD38EE0, &unk_1BE0B7F40, v52);
  v43 = v48;
  v44 = v55;
  v45 = v59;
  sub_1BE04A784();
  (*(v60 + 8))(v33, v45);
  return (*(v56 + 8))(v43, v44);
}

uint64_t sub_1BDA0BD38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DD0, &unk_1BE0B7DD0);
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BDA0BDD8, 0, 0);
}

uint64_t sub_1BDA0BDD8()
{
  v2 = v0[9];
  v1 = v0[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DD8, &unk_1BE0DF590);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DE0, &qword_1BE0B7DE0);
  *(swift_allocObject() + 16) = xmmword_1BE0B69E0;
  swift_getKeyPath();
  sub_1BDA1396C(&qword_1EBD525D0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  sub_1BE04A4F4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DF0, &unk_1BE0E8DB0);
  v4 = *(v3 - 8);
  (*(v4 + 16))(v1, v2, v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  v5 = sub_1BE049CE4();
  v6 = MEMORY[0x1E6967BC8];
  v0[5] = v5;
  v0[6] = v6;
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1BE049CD4();
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_1BDA0C044;
  v8 = v0[7];

  return MEMORY[0x1EEDC14D8](v8, v0 + 2);
}

uint64_t sub_1BDA0C044()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1BDA14D44, 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 16), v3, v4, v5, v6, v7, v8, v9);

    v10 = *(v2 + 8);

    return v10();
  }
}

uint64_t sub_1BDA0C190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DD0, &unk_1BE0B7DD0);
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BDA0C230, 0, 0);
}

uint64_t sub_1BDA0C230()
{
  v2 = v0[9];
  v1 = v0[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DD8, &unk_1BE0DF590);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DE0, &qword_1BE0B7DE0);
  *(swift_allocObject() + 16) = xmmword_1BE0B69E0;
  swift_getKeyPath();
  sub_1BDA1396C(&qword_1EBD525D0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  sub_1BE04A4F4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DF0, &unk_1BE0E8DB0);
  v4 = *(v3 - 8);
  (*(v4 + 16))(v1, v2, v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  v5 = sub_1BE049CE4();
  v6 = MEMORY[0x1E6967BC8];
  v0[5] = v5;
  v0[6] = v6;
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1BE049CD4();
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_1BDA0C49C;
  v8 = v0[7];

  return MEMORY[0x1EEDC14D8](v8, v0 + 2);
}

uint64_t sub_1BDA0C49C()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1BDA0C5E8, 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 16), v3, v4, v5, v6, v7, v8, v9);

    v10 = *(v2 + 8);

    return v10();
  }
}

uint64_t sub_1BDA0C5E8(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  __swift_destroy_boxed_opaque_existential_0((v8 + 16), a2, a3, a4, a5, a6, a7, a8);

  v9 = *(v8 + 8);

  return v9();
}

void *sub_1BDA0C658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v94 = a1;
  v96 = a3;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38810, &unk_1BE0B6F60);
  MEMORY[0x1EEE9AC00](v81);
  v74 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v83 = &v68 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD402D8, &qword_1BE0C7D60);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v68 - v8;
  v97 = sub_1BE04A2B4();
  v86 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v78 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
  v73 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v80 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v79 = &v68 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v85 = &v68 - v15;
  v16 = sub_1BE04AF64();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v77 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v76 = &v68 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v68 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v68 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v88 = &v68 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v68 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v75 = &v68 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v68 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v68 - v38;
  sub_1BE04AEF4();
  v87 = sub_1BDA1396C(&qword_1EBD525D0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  if (sub_1BE0522F4())
  {
    (*(v17 + 32))(v39, v31, v16);
  }

  else
  {
    (*(v17 + 8))(v31, v16);
    (*(v17 + 16))(v39, a2, v16);
  }

  v40 = *(v17 + 56);
  v84 = v17 + 56;
  v92 = v40;
  v40(v39, 0, 1, v16);
  sub_1BE04AEF4();
  v41 = v96;
  if (sub_1BE052304())
  {
    (*(v17 + 32))(v88, v26, v16);
  }

  else
  {
    (*(v17 + 8))(v26, v16);
    (*(v17 + 16))(v88, v41, v16);
  }

  v93 = OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_calendar;
  sub_1BD0DE19C(v39, v36, &unk_1EBD39970, &unk_1BE0B9F80);
  v90 = *(v17 + 48);
  v91 = v17 + 48;
  if (v90(v36, 1, v16) != 1)
  {
    v95 = *(v17 + 32);
    v96 = v17 + 32;
    v89 = (v86 + 6);
    v43 = (v17 + 8);
    v71 = (v86 + 4);
    v70 = (v86 + 1);
    v68 = (v17 + 16);
    v86 = MEMORY[0x1E69E7CC0];
    v72 = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    while (1)
    {
      while (1)
      {
        v95(v23, v36, v16);
        sub_1BE04B124();
        if ((*v89)(v9, 1, v97) != 1)
        {
          break;
        }

        sub_1BD0DE53C(v9, &qword_1EBD402D8, &qword_1BE0C7D60);
        v44 = *v43;
        (*v43)(v23, v16);
        sub_1BD0DE53C(v39, &unk_1EBD39970, &unk_1BE0B9F80);
        v92(v39, 1, 1, v16);
        sub_1BD0DE19C(v39, v36, &unk_1EBD39970, &unk_1BE0B9F80);
        if (v90(v36, 1, v16) == 1)
        {
          goto LABEL_24;
        }
      }

      v45 = v78;
      (*v71)(v78, v9, v97);
      v46 = v76;
      sub_1BE04A294();
      v47 = v77;
      sub_1BE04A284();
      v48 = sub_1BE052314();
      result = (*v70)(v45, v97);
      if ((v48 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v50 = v95;
      v95(v83, v46, v16);
      v51 = v83;
      v50(&v83[*(v81 + 48)], v47, v16);
      v52 = v74;
      sub_1BD0DE19C(v51, v74, &unk_1EBD38810, &unk_1BE0B6F60);
      v53 = v81;
      v69 = *(v81 + 48);
      v54 = v95;
      v95(v79, v52, v16);
      v44 = *v43;
      (*v43)((v52 + v69), v16);
      sub_1BD0DE204(v83, v52, &unk_1EBD38810, &unk_1BE0B6F60);
      v55 = *(v53 + 48);
      v56 = v79;
      v54(&v79[*(v82 + 36)], v52 + v55, v16);
      v44(v52, v16);
      v57 = v85;
      sub_1BD0DE204(v56, v85, &qword_1EBD38DB8, &unk_1BE0BD340);
      sub_1BD0DE19C(v57, v80, &qword_1EBD38DB8, &unk_1BE0BD340);
      v58 = v86;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v58 = sub_1BD1D9BE4(0, v58[2] + 1, 1, v58);
      }

      v60 = v58[2];
      v59 = v58[3];
      v61 = (v60 + 1);
      if (v60 >= v59 >> 1)
      {
        v86 = (v60 + 1);
        v67 = sub_1BD1D9BE4((v59 > 1), v60 + 1, 1, v58);
        v61 = v86;
        v58 = v67;
      }

      v58[2] = v61;
      v62 = (*(v73 + 80) + 32) & ~*(v73 + 80);
      v86 = v58;
      sub_1BD0DE204(v80, v58 + v62 + *(v73 + 72) * v60, &qword_1EBD38DB8, &unk_1BE0BD340);
      if ((sub_1BE052314() & 1) == 0)
      {
        break;
      }

      v63 = sub_1BE0522F4();
      v44(v23, v16);
      sub_1BD0DE53C(v39, &unk_1EBD39970, &unk_1BE0B9F80);
      if ((v63 & 1) == 0)
      {
        goto LABEL_22;
      }

      v64 = 1;
      v65 = v85;
      v66 = v75;
LABEL_23:
      sub_1BD0DE53C(v65, &qword_1EBD38DB8, &unk_1BE0BD340);
      v92(v66, v64, 1, v16);
      sub_1BD0DE204(v66, v39, &unk_1EBD39970, &unk_1BE0B9F80);
      sub_1BD0DE19C(v39, v36, &unk_1EBD39970, &unk_1BE0B9F80);
      if (v90(v36, 1, v16) == 1)
      {
LABEL_24:
        v44(v88, v16);
        goto LABEL_25;
      }
    }

    v44(v23, v16);
    sub_1BD0DE53C(v39, &unk_1EBD39970, &unk_1BE0B9F80);
LABEL_22:
    v65 = v85;
    v66 = v75;
    (*v68)(v75, v85 + *(v82 + 36), v16);
    v64 = 0;
    goto LABEL_23;
  }

  v42 = *(v17 + 8);
  v86 = MEMORY[0x1E69E7CC0];
  v42(v88, v16);
LABEL_25:
  sub_1BD0DE53C(v39, &unk_1EBD39970, &unk_1BE0B9F80);
  sub_1BD0DE53C(v36, &unk_1EBD39970, &unk_1BE0B9F80);
  return v86;
}

uint64_t sub_1BDA0D238()
{
  sub_1BD0D4534(v0 + 16);

  return swift_deallocClassInstance();
}

void sub_1BDA0D2EC(uint64_t a1)
{
  sub_1BE04AFE4();
  if (v1 <= 0x3F)
  {
    sub_1BE0493F4();
    if (v2 <= 0x3F)
    {
      sub_1BDA0D580(319, &qword_1EBD44FB0, type metadata accessor for FinanceKitSpendingTrend, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1BDA0D580(319, &qword_1EBD4B270, type metadata accessor for FinanceKitDailyCategorySpendingAggregator.PerCalendarUnitCategorySpending, MEMORY[0x1E69E62F8]);
        if (v4 <= 0x3F)
        {
          sub_1BDA0D580(319, &qword_1EBD5BC70, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.CategoryBreakdown, MEMORY[0x1E69E62F8]);
          if (v5 <= 0x3F)
          {
            sub_1BDA0D580(319, &qword_1EBD5BC78, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.IncomeBreakdown, MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              sub_1BDA0D580(319, &qword_1EBD5BC80, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ReimbursementsBreakdown, MEMORY[0x1E69E6720]);
              if (v7 <= 0x3F)
              {
                sub_1BDA0D580(319, &qword_1EBD5BC88, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ManuallyExcludedBreakdown, MEMORY[0x1E69E6720]);
                if (v8 <= 0x3F)
                {
                  sub_1BDA0D664();
                  if (v9 <= 0x3F)
                  {
                    sub_1BDA0D580(319, &qword_1EBD5BC98, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.GroupBreakdown, MEMORY[0x1E69E62F8]);
                    if (v10 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1BDA0D580(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BDA0D664()
{
  if (!qword_1EBD5BC90)
  {
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD5BC90);
    }
  }
}

void sub_1BDA0D6FC(uint64_t a1)
{
  sub_1BE04AFE4();
  if (v1 <= 0x3F)
  {
    sub_1BDA0D580(319, &qword_1EBD45CD8, MEMORY[0x1E69676E0], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1BE049B04();
      if (v3 <= 0x3F)
      {
        sub_1BDA0D850(319);
        if (v4 <= 0x3F)
        {
          sub_1BE0493F4();
          if (v5 <= 0x3F)
          {
            sub_1BDA0D580(319, &qword_1EBD44FB0, type metadata accessor for FinanceKitSpendingTrend, MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1BDA0D850(uint64_t a1)
{
  if (!qword_1EBD5BCB0)
  {
    sub_1BE04AFE4();
    sub_1BDA1396C(&qword_1EBD3A360, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v1 = sub_1BE052A84();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD5BCB0);
    }
  }
}

void sub_1BDA0D91C(uint64_t a1)
{
  sub_1BE049B04();
  if (v1 <= 0x3F)
  {
    sub_1BDA0D850(319);
    if (v2 <= 0x3F)
    {
      sub_1BE0493F4();
      if (v3 <= 0x3F)
      {
        sub_1BDA0D580(319, &qword_1EBD44FB0, type metadata accessor for FinanceKitSpendingTrend, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_58Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BE0493F4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_59Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BE0493F4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_1BDA0DBEC(uint64_t a1)
{
  sub_1BE0493F4();
  if (v1 <= 0x3F)
  {
    sub_1BDA0D850(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BDA0DC70(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, uint64_t), void (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  v9 = sub_1BE053B14();
  if (v9 < v8)
  {
    if (v8 >= -1)
    {
      v10 = v9;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        a2(0);
        v12 = sub_1BE0527B4();
        v12[2] = v11;
      }

      v13 = *(a2(0) - 8);
      v21[0] = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v21[1] = v11;
      a3(v21, v22, a1, v10);
      v12[2] = 0;
      v12, v14, v15, v16, v17, v18, v19, v20;
      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    a4(0, v8, 1, a1);
  }
}

void sub_1BDA0DDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v100 = a1;
  v80 = sub_1BE04AFE4();
  v7 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v79 = &v70[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v78 = &v70[-v10];
  v91 = sub_1BE0493F4();
  v11 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v93 = &v70[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v70[-v14];
  v16 = sub_1BE049774();
  MEMORY[0x1EEE9AC00](v16);
  v84 = &v70[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v98 = &v70[-v19];
  v23.n128_f64[0] = MEMORY[0x1EEE9AC00](v20);
  v72 = a2;
  if (a3 != a2)
  {
    v24 = &v70[-v21];
    v25 = *a4;
    v27 = *(v22 + 16);
    v26 = v22 + 16;
    v28 = *(v26 + 56);
    v86 = (v11 + 8);
    v87 = v27;
    v77 = (v7 + 8);
    v85 = (v26 - 8);
    v88 = v26;
    v29 = v25 + v28 * (a3 - 1);
    v81 = -v28;
    v82 = (v26 + 16);
    v30 = v100 - a3;
    v83 = v25;
    v71 = v28;
    v31 = v25 + v28 * a3;
    v89 = v16;
    v90 = v15;
    v99 = &v70[-v21];
LABEL_5:
    v76 = a3;
    v73 = v31;
    v100 = v31;
    v74 = v30;
    v75 = v29;
    while (1)
    {
      v94 = v30;
      v32 = v87;
      (v87)(v24, v100, v16, v23);
      v32(v98, v29, v16);
      sub_1BE049744();
      v33 = sub_1BE0493C4();
      v96 = v34;
      v97 = v33;
      v95 = v35;
      v36 = *v86;
      v37 = v91;
      (*v86)(v15, v91);
      v38 = v93;
      sub_1BE049744();
      v39 = sub_1BE0493C4();
      v41 = v40;
      v42 = v37;
      v44 = v43;
      v92 = v36;
      v36(v38, v37);
      if (MEMORY[0x1BFB40440](v97, v96, v95, v39, v41, v44))
      {
        v45 = v78;
        sub_1BE049764();
        v46 = v79;
        v47 = v98;
        sub_1BE049764();
        v48 = MEMORY[0x1BFB38030](v45, v46);
        v49 = *v77;
        v50 = v46;
        v51 = v80;
        (*v77)(v50, v80);
        v49(v45, v51);
        v52 = v47;
      }

      else
      {
        sub_1BE049744();
        v53 = sub_1BE0493C4();
        v96 = v54;
        v97 = v53;
        v95 = v55;
        v56 = v37;
        v57 = v92;
        v92(v15, v56);
        v58 = v93;
        v59 = v98;
        sub_1BE049744();
        v60 = sub_1BE0493C4();
        v62 = v61;
        v64 = v63;
        v57(v58, v42);
        v48 = MEMORY[0x1BFB403F0](v60, v62, v64, v97, v96, v95);
        v52 = v59;
      }

      v65 = *v85;
      v16 = v89;
      (*v85)(v52, v89);
      v66 = v99;
      v65(v99, v16);
      v15 = v90;
      v24 = v66;
      if ((v48 & 1) == 0)
      {
LABEL_4:
        a3 = v76 + 1;
        v29 = v75 + v71;
        v30 = v74 - 1;
        v31 = v73 + v71;
        if (v76 + 1 == v72)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v83)
      {
        break;
      }

      v67 = v100;
      v68 = *v82;
      v69 = v84;
      (*v82)(v84, v100, v16);
      swift_arrayInitWithTakeFrontToBack();
      v68(v29, v69, v16);
      v24 = v99;
      v29 += v81;
      v100 = v67 + v81;
      v30 = v94 + 1;
      if (v94 == -1)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1BDA0E3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v100 = a1;
  v80 = sub_1BE049B04();
  v7 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v79 = &v70[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v78 = &v70[-v10];
  v11 = sub_1BE0493F4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v70[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v70[-v16];
  v18 = sub_1BE0497B4();
  MEMORY[0x1EEE9AC00](v18);
  v84 = &v70[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v97 = &v70[-v21];
  v25.n128_f64[0] = MEMORY[0x1EEE9AC00](v22);
  v72 = a2;
  if (a3 != a2)
  {
    v26 = &v70[-v23];
    v27 = *a4;
    v29 = *(v24 + 16);
    v28 = v24 + 16;
    v30 = *(v28 + 56);
    v86 = (v12 + 8);
    v87 = v29;
    v77 = (v7 + 8);
    v85 = (v28 - 8);
    v88 = v28;
    v31 = v27 + v30 * (a3 - 1);
    v81 = -v30;
    v82 = (v28 + 16);
    v32 = v100 - a3;
    v83 = v27;
    v71 = v30;
    v33 = v27 + v30 * a3;
    v91 = v14;
    v92 = v11;
    v89 = v18;
    v90 = v17;
    v98 = &v70[-v23];
LABEL_5:
    v76 = a3;
    v73 = v33;
    v100 = v33;
    v74 = v32;
    v75 = v31;
    v99 = v31;
    while (1)
    {
      v93 = v32;
      v34 = v87;
      (v87)(v26, v100, v18, v25);
      v34(v97, v99, v18);
      sub_1BE049784();
      v35 = sub_1BE0493C4();
      v95 = v36;
      v96 = v35;
      v94 = v37;
      v38 = *v86;
      (*v86)(v17, v11);
      sub_1BE049784();
      v39 = sub_1BE0493C4();
      v40 = v11;
      v42 = v41;
      v44 = v43;
      v38(v14, v40);
      if (MEMORY[0x1BFB40440](v96, v95, v94, v39, v42, v44))
      {
        v45 = v78;
        sub_1BE0497A4();
        v46 = sub_1BE049AF4();
        v47 = *v77;
        v48 = v80;
        (*v77)(v45, v80);
        v49 = v79;
        v50 = v97;
        sub_1BE0497A4();
        LOWORD(v45) = sub_1BE049AF4();
        v47(v49, v48);
        v51 = v46 < v45;
      }

      else
      {
        sub_1BE049784();
        v52 = sub_1BE0493C4();
        v95 = v53;
        v96 = v52;
        v55 = v54;
        v38(v17, v40);
        v50 = v97;
        sub_1BE049784();
        v56 = sub_1BE0493C4();
        v58 = v57;
        v60 = v59;
        v38(v14, v40);
        v51 = MEMORY[0x1BFB403F0](v56, v58, v60, v96, v95, v55);
      }

      v61 = *v85;
      v18 = v89;
      (*v85)(v50, v89);
      v62 = v98;
      v61(v98, v18);
      v14 = v91;
      v11 = v92;
      v17 = v90;
      v26 = v62;
      if ((v51 & 1) == 0)
      {
LABEL_4:
        a3 = v76 + 1;
        v31 = v75 + v71;
        v32 = v74 - 1;
        v33 = v73 + v71;
        if (v76 + 1 == v72)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v83)
      {
        break;
      }

      v63 = *v82;
      v64 = v84;
      v65 = v90;
      v66 = v91;
      v67 = v92;
      v68 = v100;
      (*v82)(v84, v100, v18);
      v69 = v99;
      swift_arrayInitWithTakeFrontToBack();
      v63(v69, v64, v18);
      v99 = v69 + v81;
      v100 = v68 + v81;
      v11 = v67;
      v14 = v66;
      v17 = v65;
      v26 = v98;
      v32 = v93 + 1;
      if (v93 == -1)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1BDA0E9B0(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v5 = v4;
  v189 = a1;
  v204 = sub_1BE04AFE4();
  v8 = *(v204 - 8);
  MEMORY[0x1EEE9AC00](v204);
  v203 = &v182 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v202 = &v182 - v11;
  v211 = sub_1BE0493F4();
  v12 = *(v211 - 8);
  MEMORY[0x1EEE9AC00](v211);
  v214 = &v182 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v217 = &v182 - v15;
  v215 = sub_1BE049774();
  v16 = *(v215 - 8);
  MEMORY[0x1EEE9AC00](v215);
  v193 = &v182 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v207 = &v182 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v222 = &v182 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v216 = &v182 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v195 = &v182 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v183 = &v182 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v188 = &v182 - v29;
  v37.n128_f64[0] = MEMORY[0x1EEE9AC00](v30);
  v187 = &v182 - v38;
  v39 = a3[1];
  if (v39 < 1)
  {
    v42 = a3;
    v41 = MEMORY[0x1E69E7CC0];
LABEL_106:
    a4 = *v189;
    if (!*v189)
    {
      goto LABEL_148;
    }

    v8 = v41;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v176 = v8;
      goto LABEL_109;
    }

LABEL_142:
    v176 = sub_1BD5ED6C8(v8, v31, v32, v41, v33, v34, v35, v36);
LABEL_109:
    v223 = v176;
    v8 = *(v176 + 2);
    if (v8 >= 2)
    {
      while (*v42)
      {
        v177 = *&v176[16 * v8];
        v178 = v176;
        v179 = *&v176[16 * v8 + 24];
        sub_1BDA10AB8(*v42 + *(v16 + 72) * v177, *v42 + *(v16 + 72) * *&v176[16 * v8 + 16], (*v42 + *(v16 + 72) * v179), a4);
        if (v5)
        {
          v176 = v178;
          goto LABEL_120;
        }

        if (v179 < v177)
        {
          goto LABEL_135;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v178 = sub_1BD5ED6C8(v178, v31, v32, v41, v33, v34, v35, v36);
        }

        if (v8 - 2 >= *(v178 + 2))
        {
          goto LABEL_136;
        }

        v180 = &v178[16 * v8];
        *v180 = v177;
        *(v180 + 1) = v179;
        v223 = v178;
        sub_1BD5ED63C(v8 - 1);
        v176 = v223;
        v8 = *(v223 + 2);
        if (v8 <= 1)
        {
          goto LABEL_120;
        }
      }

      goto LABEL_146;
    }

    goto LABEL_120;
  }

  v184 = a4;
  v40 = 0;
  v212 = v16 + 16;
  v213 = (v16 + 8);
  v209 = (v12 + 8);
  v201 = (v8 + 8);
  v210 = (v16 + 32);
  v41 = MEMORY[0x1E69E7CC0];
  v42 = a3;
  v190 = a3;
  v199 = v16;
  while (1)
  {
    v43 = v40++;
    v194 = v41;
    if (v40 < v39)
    {
      v198 = v39;
      v8 = *v42;
      v44 = *(v16 + 72);
      v45 = *v42 + v44 * v40;
      v46 = *(v16 + 16);
      v47 = v187;
      v220 = v45;
      v48 = v215;
      v46(v187, v37);
      v221 = v44;
      v49 = v8 + v44 * v43;
      v50 = v43;
      v51 = v188;
      v197 = v46;
      (v46)(v188, v49, v48);
      LODWORD(v205) = sub_1BDA0AD30(v47, v51);
      v52 = v214;
      if (v5)
      {
        v181 = *v213;
        (*v213)(v51, v48);
        v181(v47, v48);
        v176 = v194;
LABEL_120:
        v176, v31, v32, v41, v33, v34, v35, v36;
        return;
      }

      a4 = v213;
      v53 = *v213;
      (*v213)(v51, v48);
      v196 = v53;
      (v53)(v47, v48);
      v40 = v50 + 2;
      v43 = v50;
      if (v50 + 2 >= v198)
      {
        v42 = v190;
      }

      else
      {
        v185 = v50;
        v186 = 0;
        v200 = v50 + 2;
        v31 = (v8 + v221 * v40);
        v54 = v211;
        v55 = v215;
        v56 = v195;
        v57 = v183;
        v58 = v209;
        v8 = v220;
        while (1)
        {
          v206 = v31;
          v59 = v197;
          (v197)(v57);
          v220 = v8;
          v59(v56, v8, v55);
          v60 = v217;
          sub_1BE049744();
          v61 = sub_1BE0493C4();
          v218 = v62;
          v219 = v61;
          LODWORD(v208) = v63;
          v64 = *v58;
          (*v58)(v60, v54);
          sub_1BE049744();
          v65 = sub_1BE0493C4();
          v66 = v52;
          v68 = v67;
          v69 = v54;
          v71 = v70;
          v64(v66, v69);
          if (MEMORY[0x1BFB40440](v219, v218, v208, v65, v68, v71))
          {
            v72 = v202;
            sub_1BE049764();
            v73 = v203;
            v56 = v195;
            sub_1BE049764();
            v8 = MEMORY[0x1BFB38030](v72, v73);
            v74 = *v201;
            v75 = v73;
            v76 = v204;
            (*v201)(v75, v204);
            v74(v72, v76);
          }

          else
          {
            sub_1BE049744();
            v77 = sub_1BE0493C4();
            v218 = v78;
            v219 = v77;
            LODWORD(v208) = v79;
            v64(v60, v69);
            v80 = v195;
            sub_1BE049744();
            v81 = sub_1BE0493C4();
            v83 = v82;
            v85 = v84;
            v64(v66, v69);
            v8 = MEMORY[0x1BFB403F0](v81, v83, v85, v219, v218, v208);
            v56 = v80;
          }

          v55 = v215;
          a4 = v213;
          v86 = v196;
          (v196)(v56, v215);
          v86(v57, v55);
          v54 = v211;
          v52 = v214;
          if ((v205 & 1) != (v8 & 1))
          {
            break;
          }

          v8 = v220 + v221;
          v31 = &v206[v221];
          if (v198 == ++v200)
          {
            v40 = v198;
            v5 = v186;
            v42 = v190;
            goto LABEL_16;
          }
        }

        v5 = v186;
        v42 = v190;
        v40 = v200;
LABEL_16:
        v43 = v185;
      }

      v16 = v199;
      v41 = v194;
      if (v205)
      {
        if (v40 < v43)
        {
          goto LABEL_141;
        }

        if (v43 < v40)
        {
          v186 = v5;
          v87 = v43;
          v88 = v221 * (v40 - 1);
          v89 = v40 * v221;
          v200 = v40;
          v90 = v40;
          v91 = v87;
          v185 = v87;
          v92 = v87 * v221;
          do
          {
            if (v91 != --v90)
            {
              v93 = *v42;
              if (!v93)
              {
                goto LABEL_145;
              }

              v8 = v93 + v92;
              v94 = *v210;
              (*v210)(v193, v93 + v92, v215, v41);
              if (v92 < v88 || v8 >= v93 + v89)
              {
                a4 = v215;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                a4 = v215;
                if (v92 != v88)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v94((v93 + v88), v193, a4);
              v42 = v190;
              v41 = v194;
            }

            ++v91;
            v88 -= v221;
            v89 -= v221;
            v92 += v221;
          }

          while (v91 < v90);
          v5 = v186;
          v16 = v199;
          v40 = v200;
          v43 = v185;
        }
      }
    }

    v95 = v42[1];
    if (v40 < v95)
    {
      if (__OFSUB__(v40, v43))
      {
        goto LABEL_138;
      }

      if (v40 - v43 < v184)
      {
        break;
      }
    }

LABEL_52:
    if (v40 < v43)
    {
      goto LABEL_137;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v41 = v194;
    }

    else
    {
      v41 = sub_1BD1D7844(0, *(v194 + 2) + 1, 1, v194, v33, v34, v35, v36);
    }

    a4 = *(v41 + 2);
    v133 = *(v41 + 3);
    v8 = a4 + 1;
    if (a4 >= v133 >> 1)
    {
      v41 = sub_1BD1D7844((v133 > 1), a4 + 1, 1, v41, v33, v34, v35, v36);
    }

    *(v41 + 2) = v8;
    v134 = &v41[16 * a4];
    *(v134 + 4) = v43;
    *(v134 + 5) = v40;
    if (!*v189)
    {
      goto LABEL_147;
    }

    if (a4)
    {
      v16 = *v189;
      while (1)
      {
        v135 = v8 - 1;
        if (v8 >= 4)
        {
          break;
        }

        if (v8 == 3)
        {
          v136 = *(v41 + 4);
          v137 = *(v41 + 5);
          v146 = __OFSUB__(v137, v136);
          v138 = v137 - v136;
          v139 = v146;
LABEL_73:
          if (v139)
          {
            goto LABEL_126;
          }

          v152 = &v41[16 * v8];
          v154 = *v152;
          v153 = *(v152 + 1);
          v155 = __OFSUB__(v153, v154);
          v156 = v153 - v154;
          v157 = v155;
          if (v155)
          {
            goto LABEL_129;
          }

          v158 = &v41[16 * v135 + 32];
          v160 = *v158;
          v159 = *(v158 + 1);
          v146 = __OFSUB__(v159, v160);
          v161 = v159 - v160;
          if (v146)
          {
            goto LABEL_132;
          }

          if (__OFADD__(v156, v161))
          {
            goto LABEL_133;
          }

          if (v156 + v161 >= v138)
          {
            if (v138 < v161)
            {
              v135 = v8 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v162 = &v41[16 * v8];
        v164 = *v162;
        v163 = *(v162 + 1);
        v146 = __OFSUB__(v163, v164);
        v156 = v163 - v164;
        v157 = v146;
LABEL_87:
        if (v157)
        {
          goto LABEL_128;
        }

        v165 = &v41[16 * v135];
        v167 = *(v165 + 4);
        v166 = *(v165 + 5);
        v146 = __OFSUB__(v166, v167);
        v168 = v166 - v167;
        if (v146)
        {
          goto LABEL_131;
        }

        if (v168 < v156)
        {
          goto LABEL_3;
        }

LABEL_94:
        a4 = v135 - 1;
        if (v135 - 1 >= v8)
        {
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        if (!*v42)
        {
          goto LABEL_144;
        }

        v173 = v41;
        v8 = *&v41[16 * a4 + 32];
        v174 = *&v41[16 * v135 + 40];
        sub_1BDA10AB8(*v42 + *(v199 + 72) * v8, *v42 + *(v199 + 72) * *&v41[16 * v135 + 32], (*v42 + *(v199 + 72) * v174), v16);
        if (v5)
        {
          v176 = v173;
          goto LABEL_120;
        }

        if (v174 < v8)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v173 = sub_1BD5ED6C8(v173, v31, v32, v41, v33, v34, v35, v36);
        }

        if (a4 >= *(v173 + 2))
        {
          goto LABEL_123;
        }

        v175 = &v173[16 * a4];
        *(v175 + 4) = v8;
        *(v175 + 5) = v174;
        v223 = v173;
        sub_1BD5ED63C(v135);
        v41 = v223;
        v8 = *(v223 + 2);
        if (v8 <= 1)
        {
          goto LABEL_3;
        }
      }

      v140 = &v41[16 * v8 + 32];
      v141 = *(v140 - 64);
      v142 = *(v140 - 56);
      v146 = __OFSUB__(v142, v141);
      v143 = v142 - v141;
      if (v146)
      {
        goto LABEL_124;
      }

      v145 = *(v140 - 48);
      v144 = *(v140 - 40);
      v146 = __OFSUB__(v144, v145);
      v138 = v144 - v145;
      v139 = v146;
      if (v146)
      {
        goto LABEL_125;
      }

      v147 = &v41[16 * v8];
      v149 = *v147;
      v148 = *(v147 + 1);
      v146 = __OFSUB__(v148, v149);
      v150 = v148 - v149;
      if (v146)
      {
        goto LABEL_127;
      }

      v146 = __OFADD__(v138, v150);
      v151 = v138 + v150;
      if (v146)
      {
        goto LABEL_130;
      }

      if (v151 >= v143)
      {
        v169 = &v41[16 * v135 + 32];
        v171 = *v169;
        v170 = *(v169 + 1);
        v146 = __OFSUB__(v170, v171);
        v172 = v170 - v171;
        if (v146)
        {
          goto LABEL_134;
        }

        if (v138 < v172)
        {
          v135 = v8 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

LABEL_3:
    v39 = v42[1];
    v16 = v199;
    if (v40 >= v39)
    {
      goto LABEL_106;
    }
  }

  v96 = v43 + v184;
  if (__OFADD__(v43, v184))
  {
    goto LABEL_139;
  }

  if (v96 >= v95)
  {
    v96 = v42[1];
  }

  if (v96 < v43)
  {
LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

  if (v40 == v96)
  {
    goto LABEL_52;
  }

  v186 = v5;
  v97 = *v42;
  v98 = *(v16 + 72);
  v208 = *(v16 + 16);
  v99 = v97 + v98 * (v40 - 1);
  v205 = -v98;
  v185 = v43;
  v16 = v43 - v40;
  v206 = v97;
  v191 = v98;
  v100 = (v97 + v40 * v98);
  v101 = v215;
  v102 = v216;
  v103 = v217;
  v192 = v96;
LABEL_42:
  v200 = v40;
  v196 = v100;
  v197 = v16;
  v198 = v99;
  while (1)
  {
    v218 = v16;
    v104 = v208;
    (v208)(v102, v100, v101, v41);
    v104(v222, v99, v101);
    sub_1BE049744();
    v105 = sub_1BE0493C4();
    v220 = v106;
    v221 = v105;
    LODWORD(v219) = v107;
    v108 = *v209;
    v109 = v211;
    (*v209)(v103, v211);
    v110 = v214;
    sub_1BE049744();
    v111 = sub_1BE0493C4();
    v113 = v112;
    v115 = v114;
    v108(v110, v109);
    if (MEMORY[0x1BFB40440](v221, v220, v219, v111, v113, v115))
    {
      v116 = v202;
      v102 = v216;
      sub_1BE049764();
      v117 = v203;
      v8 = v222;
      sub_1BE049764();
      v118 = MEMORY[0x1BFB38030](v116, v117);
      v119 = *v201;
      v120 = v117;
      v121 = v204;
      (*v201)(v120, v204);
      v119(v116, v121);
      v122 = v8;
    }

    else
    {
      v123 = v217;
      sub_1BE049744();
      v124 = sub_1BE0493C4();
      v220 = v125;
      v221 = v124;
      LODWORD(v219) = v126;
      v108(v123, v109);
      sub_1BE049744();
      v8 = sub_1BE0493C4();
      v128 = v127;
      v130 = v129;
      v108(v110, v109);
      v118 = MEMORY[0x1BFB403F0](v8, v128, v130, v221, v220, v219);
      v122 = v222;
      v102 = v216;
    }

    a4 = *v213;
    v101 = v215;
    (*v213)(v122, v215);
    (a4)(v102, v101);
    if ((v118 & 1) == 0)
    {
      v103 = v217;
LABEL_41:
      v40 = v200 + 1;
      v99 = v198 + v191;
      v16 = v197 - 1;
      v100 = &v196[v191];
      if (v200 + 1 == v192)
      {
        v40 = v192;
        v5 = v186;
        v42 = v190;
        v41 = v194;
        v43 = v185;
        goto LABEL_52;
      }

      goto LABEL_42;
    }

    v103 = v217;
    v131 = v218;
    if (!v206)
    {
      break;
    }

    a4 = *v210;
    v8 = v207;
    (*v210)(v207, v100, v101);
    swift_arrayInitWithTakeFrontToBack();
    (a4)(v99, v8, v101);
    v99 += v205;
    v100 += v205;
    v132 = __CFADD__(v131, 1);
    v16 = v131 + 1;
    if (v132)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
}

void sub_1BDA0FA04(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v5 = v4;
  v195 = a1;
  v210 = sub_1BE049B04();
  v8 = *(v210 - 8);
  MEMORY[0x1EEE9AC00](v210);
  v209 = &v188 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v208 = &v188 - v11;
  v220 = sub_1BE0493F4();
  v12 = *(v220 - 8);
  MEMORY[0x1EEE9AC00](v220);
  v223 = &v188 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v225 = &v188 - v15;
  v224 = sub_1BE0497B4();
  v16 = *(v224 - 8);
  MEMORY[0x1EEE9AC00](v224);
  v199 = &v188 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v213 = &v188 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v230 = &v188 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v217 = &v188 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v189 = &v188 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v201 = &v188 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v194 = &v188 - v29;
  v37.n128_f64[0] = MEMORY[0x1EEE9AC00](v30);
  v193 = &v188 - v38;
  v39 = a3[1];
  if (v39 < 1)
  {
    v42 = a3;
    v41 = MEMORY[0x1E69E7CC0];
LABEL_106:
    a4 = *v195;
    if (!*v195)
    {
      goto LABEL_148;
    }

    v8 = v41;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v182 = v8;
      goto LABEL_109;
    }

LABEL_142:
    v182 = sub_1BD5ED6C8(v8, v31, v32, v41, v33, v34, v35, v36);
LABEL_109:
    v231 = v182;
    v8 = *(v182 + 2);
    if (v8 >= 2)
    {
      while (*v42)
      {
        v183 = *&v182[16 * v8];
        v184 = v182;
        v185 = *&v182[16 * v8 + 24];
        sub_1BDA115A0(*v42 + *(v16 + 72) * v183, *v42 + *(v16 + 72) * *&v182[16 * v8 + 16], (*v42 + *(v16 + 72) * v185), a4);
        if (v5)
        {
          v182 = v184;
          goto LABEL_120;
        }

        if (v185 < v183)
        {
          goto LABEL_135;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v184 = sub_1BD5ED6C8(v184, v31, v32, v41, v33, v34, v35, v36);
        }

        if (v8 - 2 >= *(v184 + 2))
        {
          goto LABEL_136;
        }

        v186 = &v184[16 * v8];
        *v186 = v183;
        *(v186 + 1) = v185;
        v231 = v184;
        sub_1BD5ED63C(v8 - 1);
        v182 = v231;
        v8 = *(v231 + 2);
        if (v8 <= 1)
        {
          goto LABEL_120;
        }
      }

      goto LABEL_146;
    }

    goto LABEL_120;
  }

  v190 = a4;
  v40 = 0;
  v221 = v16 + 16;
  v222 = (v16 + 8);
  v219 = (v12 + 8);
  v207 = (v8 + 8);
  v218 = (v16 + 32);
  v41 = MEMORY[0x1E69E7CC0];
  v42 = a3;
  v196 = a3;
  v205 = v16;
  while (1)
  {
    v43 = v40++;
    v200 = v41;
    if (v40 < v39)
    {
      v212 = v39;
      v8 = *v42;
      v44 = *(v16 + 72);
      v45 = *v42 + v44 * v40;
      v46 = *(v16 + 16);
      v47 = v193;
      v228 = v45;
      v48 = v224;
      v46(v193, v37);
      v229 = v44;
      v49 = v8 + v44 * v43;
      v50 = v43;
      v51 = v194;
      v211 = v46;
      (v46)(v194, v49, v48);
      v214 = sub_1BDA09AF8(v47, v51);
      v52 = v223;
      if (v5)
      {
        v187 = *v222;
        (*v222)(v51, v48);
        v187(v47, v48);
        v182 = v200;
LABEL_120:
        v182, v31, v32, v41, v33, v34, v35, v36;
        return;
      }

      a4 = v222;
      v53 = *v222;
      (*v222)(v51, v48);
      v204 = v53;
      v53(v47, v48);
      v40 = v50 + 2;
      v43 = v50;
      if (v50 + 2 >= v212)
      {
        v42 = v196;
      }

      else
      {
        v191 = v50;
        v192 = 0;
        v206 = v50 + 2;
        v31 = (v8 + v229 * v40);
        v54 = v220;
        v55 = v224;
        v56 = v189;
        v57 = v201;
        v8 = v228;
        while (1)
        {
          v215 = v31;
          v58 = v211;
          (v211)(v57);
          v228 = v8;
          v58(v56, v8, v55);
          v59 = v225;
          sub_1BE049784();
          v60 = sub_1BE0493C4();
          v226 = v61;
          v227 = v60;
          LODWORD(v216) = v62;
          v63 = *v219;
          (*v219)(v59, v54);
          sub_1BE049784();
          v64 = sub_1BE0493C4();
          v65 = v52;
          v67 = v66;
          v68 = v54;
          v70 = v69;
          v63(v65, v68);
          if (MEMORY[0x1BFB40440](v227, v226, v216, v64, v67, v70))
          {
            v71 = v208;
            v57 = v201;
            sub_1BE0497A4();
            v72 = sub_1BE049AF4();
            v73 = *v207;
            v74 = v71;
            v75 = v210;
            (*v207)(v74, v210);
            v76 = v209;
            sub_1BE0497A4();
            v77 = sub_1BE049AF4();
            v73(v76, v75);
            v8 = v72 < v77;
          }

          else
          {
            sub_1BE049784();
            v78 = sub_1BE0493C4();
            v226 = v79;
            v227 = v78;
            LODWORD(v216) = v80;
            v63(v59, v68);
            sub_1BE049784();
            v81 = sub_1BE0493C4();
            v83 = v82;
            v85 = v84;
            v63(v65, v68);
            v57 = v201;
            v8 = MEMORY[0x1BFB403F0](v81, v83, v85, v227, v226, v216);
          }

          v55 = v224;
          a4 = v222;
          v86 = v204;
          v204(v56, v224);
          v86(v57, v55);
          v54 = v220;
          v52 = v223;
          if ((v214 & 1) != (v8 & 1))
          {
            break;
          }

          v8 = &v229[v228];
          v31 = &v229[v215];
          ++v206;
          v40 = v212;
          if (v212 == v206)
          {
            v5 = v192;
            v42 = v196;
            goto LABEL_16;
          }
        }

        v5 = v192;
        v42 = v196;
        v40 = v206;
LABEL_16:
        v43 = v191;
      }

      v16 = v205;
      v41 = v200;
      if (v214)
      {
        if (v40 < v43)
        {
          goto LABEL_141;
        }

        if (v43 < v40)
        {
          v192 = v5;
          v87 = v43;
          v88 = v229 * (v40 - 1);
          v89 = v40 * v229;
          v206 = v40;
          v90 = v40;
          v91 = v87;
          v191 = v87;
          v92 = v87 * v229;
          do
          {
            if (v91 != --v90)
            {
              v93 = *v42;
              if (!v93)
              {
                goto LABEL_145;
              }

              v8 = v93 + v92;
              v94 = *v218;
              (*v218)(v199, v93 + v92, v224, v41);
              if (v92 < v88 || v8 >= v93 + v89)
              {
                a4 = v224;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                a4 = v224;
                if (v92 != v88)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v94((v93 + v88), v199, a4);
              v42 = v196;
              v41 = v200;
            }

            ++v91;
            v88 -= v229;
            v89 -= v229;
            v92 += v229;
          }

          while (v91 < v90);
          v5 = v192;
          v16 = v205;
          v40 = v206;
          v43 = v191;
        }
      }
    }

    v95 = v42[1];
    if (v40 < v95)
    {
      if (__OFSUB__(v40, v43))
      {
        goto LABEL_138;
      }

      if (v40 - v43 < v190)
      {
        break;
      }
    }

LABEL_52:
    if (v40 < v43)
    {
      goto LABEL_137;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v41 = v200;
    }

    else
    {
      v41 = sub_1BD1D7844(0, *(v200 + 2) + 1, 1, v200, v33, v34, v35, v36);
    }

    a4 = *(v41 + 2);
    v139 = *(v41 + 3);
    v8 = a4 + 1;
    if (a4 >= v139 >> 1)
    {
      v41 = sub_1BD1D7844((v139 > 1), a4 + 1, 1, v41, v33, v34, v35, v36);
    }

    *(v41 + 2) = v8;
    v140 = &v41[16 * a4];
    *(v140 + 4) = v43;
    *(v140 + 5) = v40;
    if (!*v195)
    {
      goto LABEL_147;
    }

    if (a4)
    {
      v16 = *v195;
      while (1)
      {
        v141 = v8 - 1;
        if (v8 >= 4)
        {
          break;
        }

        if (v8 == 3)
        {
          v142 = *(v41 + 4);
          v143 = *(v41 + 5);
          v152 = __OFSUB__(v143, v142);
          v144 = v143 - v142;
          v145 = v152;
LABEL_73:
          if (v145)
          {
            goto LABEL_126;
          }

          v158 = &v41[16 * v8];
          v160 = *v158;
          v159 = *(v158 + 1);
          v161 = __OFSUB__(v159, v160);
          v162 = v159 - v160;
          v163 = v161;
          if (v161)
          {
            goto LABEL_129;
          }

          v164 = &v41[16 * v141 + 32];
          v166 = *v164;
          v165 = *(v164 + 1);
          v152 = __OFSUB__(v165, v166);
          v167 = v165 - v166;
          if (v152)
          {
            goto LABEL_132;
          }

          if (__OFADD__(v162, v167))
          {
            goto LABEL_133;
          }

          if (v162 + v167 >= v144)
          {
            if (v144 < v167)
            {
              v141 = v8 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v168 = &v41[16 * v8];
        v170 = *v168;
        v169 = *(v168 + 1);
        v152 = __OFSUB__(v169, v170);
        v162 = v169 - v170;
        v163 = v152;
LABEL_87:
        if (v163)
        {
          goto LABEL_128;
        }

        v171 = &v41[16 * v141];
        v173 = *(v171 + 4);
        v172 = *(v171 + 5);
        v152 = __OFSUB__(v172, v173);
        v174 = v172 - v173;
        if (v152)
        {
          goto LABEL_131;
        }

        if (v174 < v162)
        {
          goto LABEL_3;
        }

LABEL_94:
        a4 = v141 - 1;
        if (v141 - 1 >= v8)
        {
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        if (!*v42)
        {
          goto LABEL_144;
        }

        v179 = v41;
        v8 = *&v41[16 * a4 + 32];
        v180 = *&v41[16 * v141 + 40];
        sub_1BDA115A0(*v42 + *(v205 + 72) * v8, *v42 + *(v205 + 72) * *&v41[16 * v141 + 32], (*v42 + *(v205 + 72) * v180), v16);
        if (v5)
        {
          v182 = v179;
          goto LABEL_120;
        }

        if (v180 < v8)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v179 = sub_1BD5ED6C8(v179, v31, v32, v41, v33, v34, v35, v36);
        }

        if (a4 >= *(v179 + 2))
        {
          goto LABEL_123;
        }

        v181 = &v179[16 * a4];
        *(v181 + 4) = v8;
        *(v181 + 5) = v180;
        v231 = v179;
        sub_1BD5ED63C(v141);
        v41 = v231;
        v8 = *(v231 + 2);
        if (v8 <= 1)
        {
          goto LABEL_3;
        }
      }

      v146 = &v41[16 * v8 + 32];
      v147 = *(v146 - 64);
      v148 = *(v146 - 56);
      v152 = __OFSUB__(v148, v147);
      v149 = v148 - v147;
      if (v152)
      {
        goto LABEL_124;
      }

      v151 = *(v146 - 48);
      v150 = *(v146 - 40);
      v152 = __OFSUB__(v150, v151);
      v144 = v150 - v151;
      v145 = v152;
      if (v152)
      {
        goto LABEL_125;
      }

      v153 = &v41[16 * v8];
      v155 = *v153;
      v154 = *(v153 + 1);
      v152 = __OFSUB__(v154, v155);
      v156 = v154 - v155;
      if (v152)
      {
        goto LABEL_127;
      }

      v152 = __OFADD__(v144, v156);
      v157 = v144 + v156;
      if (v152)
      {
        goto LABEL_130;
      }

      if (v157 >= v149)
      {
        v175 = &v41[16 * v141 + 32];
        v177 = *v175;
        v176 = *(v175 + 1);
        v152 = __OFSUB__(v176, v177);
        v178 = v176 - v177;
        if (v152)
        {
          goto LABEL_134;
        }

        if (v144 < v178)
        {
          v141 = v8 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

LABEL_3:
    v39 = v42[1];
    v16 = v205;
    if (v40 >= v39)
    {
      goto LABEL_106;
    }
  }

  v96 = v43 + v190;
  if (__OFADD__(v43, v190))
  {
    goto LABEL_139;
  }

  if (v96 >= v95)
  {
    v96 = v42[1];
  }

  if (v96 < v43)
  {
LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

  if (v40 == v96)
  {
    goto LABEL_52;
  }

  v192 = v5;
  v97 = *v42;
  v98 = *(v16 + 72);
  v216 = *(v16 + 16);
  v16 = v97 + v98 * (v40 - 1);
  v211 = -v98;
  v191 = v43;
  v99 = v43 - v40;
  v206 = v40;
  v212 = v97;
  v197 = v98;
  v100 = (v97 + v40 * v98);
  v101 = v224;
  v102 = v225;
  v103 = v217;
  v198 = v96;
LABEL_42:
  v202 = v100;
  v203 = v99;
  v104 = v99;
  v204 = v16;
  while (1)
  {
    v227 = v104;
    v229 = v100;
    v105 = v216;
    (v216)(v103, v100, v101, v41);
    v226 = v16;
    v105(v230, v16, v101);
    sub_1BE049784();
    v228 = sub_1BE0493C4();
    v107 = v106;
    v109 = v108;
    v110 = v220;
    v111 = *v219;
    (*v219)(v102, v220);
    v112 = v223;
    sub_1BE049784();
    v113 = sub_1BE0493C4();
    v115 = v114;
    v117 = v116;
    v111(v112, v110);
    if (MEMORY[0x1BFB40440](v228, v107, v109, v113, v115, v117))
    {
      v118 = v208;
      v119 = v217;
      sub_1BE0497A4();
      v120 = sub_1BE049AF4();
      v121 = *v207;
      v122 = v210;
      (*v207)(v118, v210);
      v123 = v209;
      v124 = v230;
      sub_1BE0497A4();
      LOWORD(v118) = sub_1BE049AF4();
      v121(v123, v122);
      v8 = v120 < v118;
    }

    else
    {
      v125 = v225;
      v126 = v217;
      sub_1BE049784();
      v228 = sub_1BE0493C4();
      v215 = v127;
      v214 = v128;
      v111(v125, v110);
      v129 = v230;
      sub_1BE049784();
      v130 = sub_1BE0493C4();
      v132 = v131;
      v134 = v133;
      v111(v112, v110);
      v8 = MEMORY[0x1BFB403F0](v130, v132, v134, v228, v215, v214);
      v124 = v129;
      v119 = v126;
    }

    a4 = *v222;
    v101 = v224;
    (*v222)(v124, v224);
    v103 = v119;
    (a4)(v119, v101);
    v135 = v229;
    if ((v8 & 1) == 0)
    {
      v102 = v225;
LABEL_41:
      v16 = v204 + v197;
      v99 = v203 - 1;
      v100 = &v202[v197];
      if (++v206 == v198)
      {
        v40 = v198;
        v5 = v192;
        v42 = v196;
        v41 = v200;
        v43 = v191;
        goto LABEL_52;
      }

      goto LABEL_42;
    }

    v102 = v225;
    v136 = v227;
    if (!v212)
    {
      break;
    }

    a4 = *v218;
    v8 = v213;
    (*v218)(v213, v229, v101);
    v137 = v226;
    swift_arrayInitWithTakeFrontToBack();
    (a4)(v137, v8, v101);
    v16 = v137 + v211;
    v100 = &v135[v211];
    v138 = __CFADD__(v136, 1);
    v104 = v136 + 1;
    if (v138)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
}