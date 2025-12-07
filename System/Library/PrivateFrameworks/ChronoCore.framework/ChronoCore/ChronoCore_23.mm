uint64_t sub_224C68E14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_224ACFF60;

  return sub_224C9EBD0(a1, v4, v5, v6);
}

uint64_t sub_224C68EC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_224ACFF60;

  return sub_224C9E71C(a1, v4, v5, v6);
}

uint64_t sub_224C68F7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_224ACFF60;

  return sub_224C6307C(a1, v4, v5, v6);
}

uint64_t sub_224C69030(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_224ACED1C;

  return sub_224C9E71C(a1, v4, v5, v6);
}

uint64_t sub_224C690E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_224ACFF60;

  return sub_224C622A0(a1, v4, v5, v6);
}

void sub_224C691B0(uint64_t a1, void *a2)
{
  v28 = a2;
  v2 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_224DAF7E8();
    sub_224DAF538();
    sub_224C6BAE4(&unk_2813509A0, 255, MEMORY[0x277CFA140], MEMORY[0x277D85378]);
    sub_224DAF1F8();
    v2 = v34;
    v3 = v35;
    v4 = v36;
    v5 = v37;
    v6 = v38;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v26[1] = v4;
  v29 = MEMORY[0x277D84F90];
  v27 = v2;
  if ((v2 & 0x8000000000000000) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v10 = sub_224DAF878();
  if (v10 && (*&v30 = v10, sub_224DAF538(), swift_dynamicCast(), v11 = *&v33[0], v12 = v5, v13 = v6, *&v33[0]))
  {
    while (1)
    {
      __swift_project_boxed_opaque_existential_1(v28 + 28, v28[31]);
      sub_224DAC6D8();

      if (v31)
      {
        sub_224A36F98(&v30, v33);
        sub_224A36F98(v33, &v30);
        v16 = v29;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v16 = sub_224A5C040(0, v16[2] + 1, 1, v16);
          v39 = v16;
        }

        v19 = v16[2];
        v18 = v16[3];
        if (v19 >= v18 >> 1)
        {
          v29 = sub_224A5C040((v18 > 1), v19 + 1, 1, v16);
          v39 = v29;
        }

        else
        {
          v29 = v16;
        }

        v20 = v31;
        v21 = v32;
        v22 = __swift_mutable_project_boxed_opaque_existential_1(&v30, v31);
        MEMORY[0x28223BE20](v22, v22);
        v24 = v26 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v25 + 16))(v24);
        sub_224A5C064(v19, v24, &v39, v20, v21);
        __swift_destroy_boxed_opaque_existential_1(&v30);
        v5 = v12;
        v6 = v13;
        v2 = v27;
        if (v27 < 0)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_224A3311C(&v30, &unk_27D6F4700, &unk_224DB3A10);
        v5 = v12;
        v6 = v13;
        if (v2 < 0)
        {
          goto LABEL_10;
        }
      }

LABEL_13:
      v14 = v5;
      v15 = v6;
      v12 = v5;
      if (!v6)
      {
        break;
      }

LABEL_17:
      v13 = (v15 - 1) & v15;
      v11 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v15)))));
      if (!v11)
      {
        goto LABEL_26;
      }
    }

    while (1)
    {
      v12 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v12 >= ((v4 + 64) >> 6))
      {
        goto LABEL_26;
      }

      v15 = *(v3 + 8 * v12);
      ++v14;
      if (v15)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_26:
    sub_224A3B7E4(v2);
  }
}

uint64_t sub_224C69568(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v101 = a4;
  v87 = a2;
  v88 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3890, &unk_224DB9C30);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v11 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v109 = &v86 - v14;
  MEMORY[0x28223BE20](v13, v15);
  v112 = &v86 - v16;
  v17 = sub_224DA9908();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v108 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_224DAAF48();
  result = MEMORY[0x28223BE20](v115, v21);
  v106 = &v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = 0;
  v25 = 0;
  v102 = a3;
  v26 = *(a3 + 64);
  v92 = a3 + 64;
  v27 = 1 << *(a3 + 32);
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  else
  {
    v28 = -1;
  }

  v29 = v28 & v26;
  v93 = (v27 + 63) >> 6;
  v97 = v18 + 16;
  v98 = v23 + 2;
  v107 = v23;
  v113 = v23 + 1;
  v99 = v18;
  v103 = (v18 + 8);
  v90 = a5 & 0xC000000000000001;
  v30 = a5 & 0xFFFFFFFFFFFFFF8;
  if (a5 < 0)
  {
    v30 = a5;
  }

  v86 = v30;
  v96 = a5;
  v31 = a5 + 56;
  v32 = v17;
  v95 = v31;
  v110 = v7;
  v100 = v11;
  v104 = v17;
  while (v29)
  {
    v33 = v32;
    v34 = __clz(__rbit64(v29));
    v105 = (v29 - 1) & v29;
LABEL_16:
    v37 = v34 | (v25 << 6);
    v38 = v102;
    v39 = v106;
    v40 = v102[6] + v107[9] * v37;
    v111 = v107[2];
    v41 = v115;
    v111(v106, v40, v115);
    v42 = v38[7];
    v43 = *(v99 + 72);
    v94 = v37;
    v44 = *(v99 + 16);
    v45 = v108;
    v44(v108, v42 + v43 * v37, v33);
    v46 = v112;
    v111(v112, v39, v41);
    v44((v46 + *(v110 + 48)), v45, v33);
    v47 = v109;
    sub_224A3796C(v46, v109, &qword_27D6F3890, &unk_224DB9C30);
    v48 = sub_224DAAF08();
    v50 = v49;
    v111 = v107[1];
    (v111)(v47, v41);
    v51 = *(v101 + 32);
    if (!(v51 >> 6))
    {
      v57 = 0xE800000000000000;
      strcpy(v114, "archive-");
      BYTE1(v114[1]) = 0;
      WORD1(v114[1]) = 0;
      HIDWORD(v114[1]) = -402653184;
      v58 = 0xEF77656976657270;
      if (v51 != 3)
      {
        v58 = 0xEC0000006576696CLL;
      }

      v59 = 0x2D6C6F72746E6F63;
      if (v51 == 2)
      {
        v59 = 0x656E696C656D6974;
        v58 = 0xE800000000000000;
      }

      v60 = 0x746F687370616E73;
      if (!v51)
      {
        v60 = 0x6C6F686563616C70;
        v57 = 0xEB00000000726564;
      }

      if (v51 <= 1)
      {
        v55 = v60;
      }

      else
      {
        v55 = v59;
      }

      if (v51 <= 1)
      {
        v56 = v57;
      }

      else
      {
        v56 = v58;
      }

LABEL_40:
      MEMORY[0x22AA5D210](v55, v56);

      v61 = v114[1];
      v62 = v100;
      v63 = v103;
      if (v48 != v114[0])
      {
        goto LABEL_55;
      }

      goto LABEL_53;
    }

    if (v51 >> 6 == 1)
    {
      v52 = v51 & 0x3F;
      v114[0] = 0;
      v114[1] = 0xE000000000000000;
      sub_224DAF938();

      strcpy(v114, "configuration-");
      HIBYTE(v114[1]) = -18;
      v53 = 0xEF77656976657270;
      if (v52 != 2)
      {
        v53 = 0xEC0000006576696CLL;
      }

      v54 = 0x746F687370616E73;
      if (v52)
      {
        v54 = 0x656E696C656D6974;
      }

      if (v52 <= 1)
      {
        v55 = v54;
      }

      else
      {
        v55 = 0x2D6C6F72746E6F63;
      }

      if (v52 <= 1)
      {
        v56 = 0xE800000000000000;
      }

      else
      {
        v56 = v53;
      }

      goto LABEL_40;
    }

    v64 = 1852793705;
    if (v51 != 129)
    {
      v64 = 0x7974697669746361;
    }

    v65 = 0xE400000000000000;
    if (v51 != 129)
    {
      v65 = 0xEF65766968637241;
    }

    if (v51 == 128)
    {
      v66 = 0x6F69736E65747865;
    }

    else
    {
      v66 = v64;
    }

    if (v51 == 128)
    {
      v61 = 0xE90000000000006ELL;
    }

    else
    {
      v61 = v65;
    }

    v63 = v103;
    v62 = v100;
    if (v48 != v66)
    {
      goto LABEL_55;
    }

LABEL_53:
    if (v50 == v61)
    {
      v67 = 1;
      goto LABEL_56;
    }

LABEL_55:
    v67 = sub_224DAFD88();
LABEL_56:

    v68 = v110;
    v69 = *v63;
    v32 = v104;
    (*v63)(v109 + *(v110 + 48), v104);
    if ((v67 & 1) == 0)
    {
      sub_224A3311C(v112, &qword_27D6F3890, &unk_224DB9C30);
      goto LABEL_8;
    }

    v70 = sub_224DAF538();
    v71 = v112;
    sub_224A3796C(v112, v62, &qword_27D6F3890, &unk_224DB9C30);
    v72 = *(v68 + 48);
    sub_224DAAEF8();
    v91 = v70;
    v73 = sub_224DAF4F8();
    v74 = v73;
    (v111)(v62, v115);
    if (!v73)
    {
      sub_224A3311C(v71, &qword_27D6F3890, &unk_224DB9C30);
      v32 = v104;
      v69(v62 + v72, v104);
      goto LABEL_8;
    }

    v75 = v104;
    v69(v62 + v72, v104);
    if (v90)
    {
      v76 = v74;
      v77 = sub_224DAF888();

      sub_224A3311C(v112, &qword_27D6F3890, &unk_224DB9C30);
      v69(v108, v75);
      result = (v111)(v106, v115);
      v32 = v75;
      v29 = v105;
      if (v77)
      {
LABEL_69:
        *(v88 + ((v94 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v94;
        if (__OFADD__(v89++, 1))
        {
          __break(1u);
          return sub_224B2D094(v88, v87, v89, v102);
        }
      }
    }

    else
    {
      if (*(v96 + 16))
      {
        v78 = v96;
        v79 = sub_224DAF698();
        v80 = -1 << *(v78 + 32);
        v81 = v79 & ~v80;
        if ((*(v95 + ((v81 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v81))
        {
          v82 = ~v80;
          while (1)
          {
            v83 = *(*(v96 + 48) + 8 * v81);
            v84 = sub_224DAF6A8();

            if (v84)
            {
              break;
            }

            v81 = (v81 + 1) & v82;
            if (((*(v95 + ((v81 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v81) & 1) == 0)
            {
              goto LABEL_67;
            }
          }

          sub_224A3311C(v112, &qword_27D6F3890, &unk_224DB9C30);
          v32 = v104;
          v69(v108, v104);
          result = (v111)(v106, v115);
          v29 = v105;
          goto LABEL_69;
        }
      }

LABEL_67:

      sub_224A3311C(v112, &qword_27D6F3890, &unk_224DB9C30);
      v32 = v104;
LABEL_8:
      v69(v108, v32);
      result = (v111)(v106, v115);
      v29 = v105;
    }
  }

  v35 = v25;
  while (1)
  {
    v25 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v25 >= v93)
    {
      return sub_224B2D094(v88, v87, v89, v102);
    }

    v36 = *(v92 + 8 * v25);
    ++v35;
    if (v36)
    {
      v33 = v32;
      v34 = __clz(__rbit64(v36));
      v105 = (v36 - 1) & v36;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224C69F08(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v106 = a4;
  v90 = a2;
  v91 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F56A0, &unk_224DB4150);
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v126 = &v89 - v14;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3890, &unk_224DB9C30);
  v16 = MEMORY[0x28223BE20](v117, v15);
  v94 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v115 = &v89 - v20;
  MEMORY[0x28223BE20](v19, v21);
  v119 = &v89 - v22;
  v23 = sub_224DA9908();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v25);
  v113 = &v89 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_224DAAF48();
  result = MEMORY[0x28223BE20](v122, v27);
  v111 = &v89 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = 0;
  v31 = 0;
  v32 = *(a3 + 64);
  v93 = a3 + 64;
  v33 = 1 << *(a3 + 32);
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  else
  {
    v34 = -1;
  }

  v35 = v34 & v32;
  v36 = (v33 + 63) >> 6;
  v103 = v29 + 2;
  v102 = v24 + 16;
  v112 = v29;
  v118 = v29 + 1;
  v105 = v24;
  v110 = (v24 + 8);
  v124 = a5;
  v120 = v8 + 16;
  v121 = a5 + 7;
  v89 = v8;
  v123 = (v8 + 8);
  v104 = v36;
  v108 = a3;
  v114 = v23;
  v101 = v12;
  v100 = v7;
  while (v35)
  {
    v38 = __clz(__rbit64(v35));
    v109 = (v35 - 1) & v35;
LABEL_14:
    v41 = v38 | (v31 << 6);
    v42 = v111;
    v43 = v112[2];
    v43(v111, *(a3 + 48) + v112[9] * v41, v122);
    v44 = *(a3 + 56);
    v45 = *(v105 + 72);
    v99 = v41;
    v46 = v44 + v45 * v41;
    v47 = *(v105 + 16);
    v48 = v113;
    v47(v113, v46, v23);
    v49 = v23;
    v50 = v119;
    v51 = v42;
    v52 = v122;
    v43(v119, v51, v122);
    v47((v50 + *(v117 + 48)), v48, v49);
    v53 = v115;
    sub_224A3796C(v50, v115, &qword_27D6F3890, &unk_224DB9C30);
    v54 = sub_224DAAF08();
    v56 = v55;
    v116 = v112[1];
    v116(v53, v52);
    v57 = *(v106 + 32);
    if (v57 >> 6)
    {
      if (v57 >> 6 == 1)
      {
        v58 = v57 & 0x3F;
        v125[0] = 0;
        v125[1] = 0xE000000000000000;
        sub_224DAF938();

        strcpy(v125, "configuration-");
        HIBYTE(v125[1]) = -18;
        v59 = 0xEF77656976657270;
        if (v58 != 2)
        {
          v59 = 0xEC0000006576696CLL;
        }

        v60 = 0x746F687370616E73;
        if (v58)
        {
          v60 = 0x656E696C656D6974;
        }

        if (v58 <= 1)
        {
          v61 = v60;
        }

        else
        {
          v61 = 0x2D6C6F72746E6F63;
        }

        if (v58 <= 1)
        {
          v62 = 0xE800000000000000;
        }

        else
        {
          v62 = v59;
        }

        v63 = v101;
        v64 = v100;
        a3 = v108;
        MEMORY[0x22AA5D210](v61, v62);

        v65 = v125[0];
        v66 = v125[1];
      }

      else
      {
        v63 = v101;
        v64 = v100;
        a3 = v108;
        v74 = 1852793705;
        if (v57 != 129)
        {
          v74 = 0x7974697669746361;
        }

        v75 = 0xE400000000000000;
        if (v57 != 129)
        {
          v75 = 0xEF65766968637241;
        }

        if (v57 == 128)
        {
          v65 = 0x6F69736E65747865;
        }

        else
        {
          v65 = v74;
        }

        if (v57 == 128)
        {
          v66 = 0xE90000000000006ELL;
        }

        else
        {
          v66 = v75;
        }
      }

      v73 = v110;
      if (v54 != v65)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v67 = 0xE800000000000000;
      strcpy(v125, "archive-");
      BYTE1(v125[1]) = 0;
      WORD1(v125[1]) = 0;
      HIDWORD(v125[1]) = -402653184;
      v68 = 0xEF77656976657270;
      if (v57 != 3)
      {
        v68 = 0xEC0000006576696CLL;
      }

      v69 = 0x2D6C6F72746E6F63;
      if (v57 == 2)
      {
        v69 = 0x656E696C656D6974;
        v68 = 0xE800000000000000;
      }

      v70 = 0x746F687370616E73;
      if (!v57)
      {
        v70 = 0x6C6F686563616C70;
        v67 = 0xEB00000000726564;
      }

      if (v57 <= 1)
      {
        v71 = v70;
      }

      else
      {
        v71 = v69;
      }

      if (v57 <= 1)
      {
        v72 = v67;
      }

      else
      {
        v72 = v68;
      }

      MEMORY[0x22AA5D210](v71, v72);

      v66 = v125[1];
      v63 = v101;
      v64 = v100;
      v73 = v110;
      a3 = v108;
      if (v54 != v125[0])
      {
LABEL_54:
        v76 = sub_224DAFD88();
        goto LABEL_55;
      }
    }

    if (v56 != v66)
    {
      goto LABEL_54;
    }

    v76 = 1;
LABEL_55:

    v37 = *v73;
    v23 = v114;
    (*v73)(v115 + *(v117 + 48), v114);
    if (v76)
    {
      v107 = v37;
      v77 = v94;
      sub_224A3796C(v119, v94, &qword_27D6F3890, &unk_224DB9C30);
      v98 = *(v117 + 48);
      v97 = sub_224DAAEF8();
      v96 = v78;
      v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
      sub_224A33088(&qword_281351980, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9F98]);
      sub_224A33088(&unk_281351950, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FC0]);
      sub_224A33088(&qword_281351978, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FA0]);
      sub_224A33088(&qword_281351970, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FA8]);
      sub_224DAA208();
      v116(v77, v122);
      v107(v77 + v98, v114);
      if (!v124[2] || (v79 = v124, sub_224A33088(&qword_27D6F36A8, &unk_27D6F56A0, &unk_224DB4150, MEMORY[0x277CFA018]), v80 = sub_224DAED88(), v81 = -1 << *(v79 + 32), v82 = v80 & ~v81, ((*(v121 + ((v82 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v82) & 1) == 0))
      {
LABEL_5:
        (*v123)(v126, v64);
        v37 = v107;
        a3 = v108;
        v23 = v114;
        goto LABEL_6;
      }

      v83 = ~v81;
      v84 = *(v89 + 72);
      v85 = *(v89 + 16);
      while (1)
      {
        v85(v63, v124[6] + v84 * v82, v64);
        sub_224A33088(&qword_27D6F36B0, &unk_27D6F56A0, &unk_224DB4150, MEMORY[0x277CFA020]);
        v86 = sub_224DAEDD8();
        v87 = *v123;
        (*v123)(v63, v64);
        if (v86)
        {
          break;
        }

        v82 = (v82 + 1) & v83;
        if (((*(v121 + ((v82 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v82) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v87(v126, v64);
      sub_224A3311C(v119, &qword_27D6F3890, &unk_224DB9C30);
      v23 = v114;
      v107(v113, v114);
      result = (v116)(v111, v122);
      *(v91 + ((v99 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v99;
      v88 = __OFADD__(v92++, 1);
      a3 = v108;
      v35 = v109;
      v36 = v104;
      if (v88)
      {
        __break(1u);
        return sub_224B2D094(v91, v90, v92, a3);
      }
    }

    else
    {
LABEL_6:
      sub_224A3311C(v119, &qword_27D6F3890, &unk_224DB9C30);
      v37(v113, v23);
      result = (v116)(v111, v122);
      v36 = v104;
      v35 = v109;
    }
  }

  v39 = v31;
  while (1)
  {
    v31 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v31 >= v36)
    {
      return sub_224B2D094(v91, v90, v92, a3);
    }

    v40 = *(v93 + 8 * v31);
    ++v39;
    if (v40)
    {
      v38 = __clz(__rbit64(v40));
      v109 = (v40 - 1) & v40;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void *sub_224C6AAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, unint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v20[1] = *MEMORY[0x277D85DE8];
  v11 = *(a1 + 32);
  v12 = v11 & 0x3F;
  v13 = ((1 << v11) + 63) >> 6;
  v14 = 8 * v13;
  swift_retain_n();
  v15 = swift_bridgeObjectRetain_n();
  if (v12 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v19 = swift_slowAlloc();

      v17 = sub_224C689E4(v19, v13, a1, a2, a3, a5);
      MEMORY[0x22AA5EED0](v19, -1, -1);

      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v15, v16);
  bzero(v20 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0), v14);

  v17 = a4(v20 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0), v13, a1, a2, a3);

  if (v5)
  {
    swift_willThrow();
  }

LABEL_6:

  return v17;
}

uint64_t sub_224C6AD14(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v21 - v5;
  v7 = sub_224DAAF48();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224BFF638(0x6F69736E65747865, 0xE90000000000006ELL);
  if (*(a2 + 16) && (v12 = sub_224B0B3CC(v11), (v13 & 1) != 0))
  {
    v14 = v12;
    v15 = *(a2 + 56);
    v16 = sub_224DA9908();
    v17 = *(v16 - 8);
    (*(v17 + 16))(v6, v15 + *(v17 + 72) * v14, v16);
    (*(v8 + 8))(v11, v7);
    v18 = 1;
    (*(v17 + 56))(v6, 0, 1, v16);
  }

  else
  {
    (*(v8 + 8))(v11, v7);
    v19 = sub_224DA9908();
    (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
    v18 = 0;
  }

  sub_224A3311C(v6, &unk_27D6F5630, &unk_224DB34C0);
  return v18;
}

uint64_t sub_224C6AF90(void **a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = sub_224CD6B48(*a1, a2);
  v6 = sub_224C6AD14(v4, a3);
  if (v5)
  {
    if (v6)
    {
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v7 = sub_224DAB258();
      __swift_project_value_buffer(v7, qword_281365120);
      v8 = v4;
      v9 = sub_224DAB228();
      v10 = sub_224DAF268();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *v11 = 138543362;
        *(v11 + 4) = v8;
        *v12 = v8;
        v13 = v8;
        v14 = "Including extension %{public}@ - has descriptors and is known to replicator";
LABEL_16:
        _os_log_impl(&dword_224A2F000, v9, v10, v14, v11, 0xCu);
        v21 = 1;
LABEL_22:
        sub_224A3311C(v12, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v12, -1, -1);
        MEMORY[0x22AA5EED0](v11, -1, -1);
        goto LABEL_23;
      }
    }

    else
    {
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v18 = sub_224DAB258();
      __swift_project_value_buffer(v18, qword_281365120);
      v19 = v4;
      v9 = sub_224DAB228();
      v10 = sub_224DAF268();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *v11 = 138543362;
        *(v11 + 4) = v19;
        *v12 = v19;
        v20 = v19;
        v14 = "Including extension %{public}@ - has descriptors";
        goto LABEL_16;
      }
    }
  }

  else
  {
    if ((v6 & 1) == 0)
    {
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v22 = sub_224DAB258();
      __swift_project_value_buffer(v22, qword_281365120);
      v23 = v4;
      v9 = sub_224DAB228();
      v24 = sub_224DAF2A8();

      if (!os_log_type_enabled(v9, v24))
      {
        v21 = 0;
        goto LABEL_23;
      }

      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138543362;
      *(v11 + 4) = v23;
      *v12 = v23;
      v25 = v23;
      _os_log_impl(&dword_224A2F000, v9, v24, "Filtering out extension %{public}@ - no descriptors and not known to replicator", v11, 0xCu);
      v21 = 0;
      goto LABEL_22;
    }

    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v15 = sub_224DAB258();
    __swift_project_value_buffer(v15, qword_281365120);
    v16 = v4;
    v9 = sub_224DAB228();
    v10 = sub_224DAF268();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138543362;
      *(v11 + 4) = v16;
      *v12 = v16;
      v17 = v16;
      v14 = "Including extension %{public}@ - already known to replicator";
      goto LABEL_16;
    }
  }

  v21 = 1;
LABEL_23:

  return v21;
}

void sub_224C6B358(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = 0;
  v7 = 0;
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    v25 = *(*(a3 + 48) + 8 * v16);
    v17 = v25;
    v18 = sub_224C6AF90(&v25, a4, a5);

    if (v5)
    {
      return;
    }

    if (v18)
    {
      *(a1 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:

        sub_224B05554(a1, a2, v22, a3);
        return;
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_16;
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_224C6B4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v38[1] = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 32);
  v10 = v9 & 0x3F;
  v11 = ((1 << v9) + 63) >> 6;
  v12 = 8 * v11;
  v37 = a2;

  v36 = a4;

  if (v10 > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v31 = v11;
    v33 = &v30;
    v34 = a3;
    MEMORY[0x28223BE20](v13, v14);
    v32 = &v30 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v32, v12);
    v35 = 0;
    v11 = 0;
    a3 = a1 + 56;
    v15 = 1 << *(a1 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(a1 + 56);
    v12 = (v15 + 63) >> 6;
    while (v17)
    {
      v18 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_12:
      v21 = v18 | (v11 << 6);
      v38[0] = *(*(a1 + 48) + 8 * v21);
      v22 = v38[0];
      v23 = sub_224C6AF90(v38, v37, v36);
      if (v5)
      {

        swift_willThrow();
        goto LABEL_18;
      }

      v24 = v23;

      if (v24)
      {
        *&v32[(v21 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v21;
        if (__OFADD__(v35++, 1))
        {
          __break(1u);
LABEL_17:
          v11 = sub_224B05554(v32, v31, v35, a1);
          goto LABEL_18;
        }
      }
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v12)
      {
        goto LABEL_17;
      }

      v20 = *(a3 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v17 = (v20 - 1) & v20;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v27 = swift_slowAlloc();
  v28 = v37;

  v29 = v36;

  v11 = sub_224C68AAC(v27, v11, a1, v28, a3, v29);

  MEMORY[0x22AA5EED0](v27, -1, -1);
LABEL_18:

  return v11;
}

uint64_t sub_224C6B7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x277D84FA0];
    v25 = MEMORY[0x277D84FA0];

    sub_224DAF7E8();
    if (sub_224DAF878())
    {
      sub_224DAF538();
      while (1)
      {
        swift_dynamicCast();
        v9 = sub_224C6AF90(&v24, a2, a4);
        if (v4)
        {
          break;
        }

        v10 = v24;
        if (v9)
        {
          v11 = *(v8 + 16);
          if (*(v8 + 24) <= v11)
          {
            sub_224ADEE2C(v11 + 1);
          }

          v8 = v25;
          result = sub_224DAF698();
          v13 = v8 + 56;
          v14 = -1 << *(v8 + 32);
          v15 = result & ~v14;
          v16 = v15 >> 6;
          if (((-1 << v15) & ~*(v8 + 56 + 8 * (v15 >> 6))) != 0)
          {
            v17 = __clz(__rbit64((-1 << v15) & ~*(v8 + 56 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v18 = 0;
            v19 = (63 - v14) >> 6;
            do
            {
              if (++v16 == v19 && (v18 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v20 = v16 == v19;
              if (v16 == v19)
              {
                v16 = 0;
              }

              v18 |= v20;
              v21 = *(v13 + 8 * v16);
            }

            while (v21 == -1);
            v17 = __clz(__rbit64(~v21)) + (v16 << 6);
          }

          *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
          *(*(v8 + 48) + 8 * v17) = v10;
          ++*(v8 + 16);
        }

        else
        {
        }

        if (!sub_224DAF878())
        {
          goto LABEL_21;
        }
      }

      v23 = v24;
    }

    else
    {
LABEL_21:
    }
  }

  else
  {

    v8 = sub_224C6B4B8(a1, a2, a3, a4);
  }

  return v8;
}

uint64_t sub_224C6BA7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_224C6BAE4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s15ExtensionChangeOMa(uint64_t a1)
{
  result = qword_281359348;
  if (!qword_281359348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_224C6BBBC(uint64_t a1)
{
  sub_224C6BC30(319);
  if (v1 <= 0x3F)
  {
    sub_224DAF538();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_224C6BC30(uint64_t a1)
{
  if (!qword_281350D18)
  {
    sub_224DACE38();
    sub_224DAE9F8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_281350D18);
    }
  }
}

unint64_t sub_224C6BCA0()
{
  v1 = v0;
  v2 = sub_224DACE38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s15ExtensionChangeOMa(0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = (&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_224C6C29C(v1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v10;
    v24 = 0;
    v25 = 0xE000000000000000;
    sub_224DAF938();

    v24 = 0xD000000000000016;
    v25 = 0x8000000224DCBF30;
    v12 = [v11 description];
    v13 = sub_224DAEE18();
    v15 = v14;

    MEMORY[0x22AA5D210](v13, v15);

    return v24;
  }

  else
  {
    v17 = *(v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5A98, &qword_224DBC300) + 48));
    (*(v3 + 32))(v6, v10, v2);
    v24 = 0;
    v25 = 0xE000000000000000;
    sub_224DAF938();

    v24 = 0xD000000000000014;
    v25 = 0x8000000224DCBF50;
    sub_224C6C3C4();
    v18 = sub_224DAFD28();
    MEMORY[0x22AA5D210](v18);

    MEMORY[0x22AA5D210](0xD000000000000019, 0x8000000224DCBF70);
    v19 = [v17 description];
    v20 = sub_224DAEE18();
    v22 = v21;

    MEMORY[0x22AA5D210](v20, v22);

    v16 = v24;
    (*(v3 + 8))(v6, v2);
  }

  return v16;
}

uint64_t sub_224C6BF74(uint64_t a1, uint64_t a2)
{
  v4 = sub_224DACE38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s15ExtensionChangeOMa(0);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v13 = (&v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v32 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5B08, &qword_224DBC8C8);
  v19 = MEMORY[0x28223BE20](v17 - 8, v18);
  v21 = &v32 - v20;
  v22 = (&v32 + *(v19 + 56) - v20);
  sub_224C6C29C(a1, &v32 - v20);
  sub_224C6C29C(a2, v22);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_224C6C29C(v21, v13);
    v23 = *v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v24 = *v22;
      sub_224AC21B4();
      v25 = sub_224DAF6A8();

LABEL_11:
      sub_224C6C368(v21);
      return v25 & 1;
    }

    goto LABEL_7;
  }

  sub_224C6C29C(v21, v16);
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5A98, &qword_224DBC300) + 48);
  v27 = *&v16[v26];
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    (*(v5 + 8))(v16, v4);
LABEL_7:
    sub_224C6C300(v21);
    goto LABEL_8;
  }

  v28 = *(v22 + v26);
  (*(v5 + 32))(v8, v22, v4);
  v29 = MEMORY[0x22AA5B110](v16, v8);
  v30 = *(v5 + 8);
  v30(v16, v4);
  if (v29)
  {
    sub_224AC21B4();
    v25 = sub_224DAF6A8();

    v30(v8, v4);
    goto LABEL_11;
  }

  v30(v8, v4);

  sub_224C6C368(v21);
LABEL_8:
  v25 = 0;
  return v25 & 1;
}

uint64_t sub_224C6C29C(uint64_t a1, uint64_t a2)
{
  v4 = _s15ExtensionChangeOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_224C6C300(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5B08, &qword_224DBC8C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_224C6C368(uint64_t a1)
{
  v2 = _s15ExtensionChangeOMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_224C6C3C4()
{
  result = qword_27D6F5B10;
  if (!qword_27D6F5B10)
  {
    sub_224DACE38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F5B10);
  }

  return result;
}

uint64_t sub_224C6C594()
{
  v0 = sub_224DAB258();
  __swift_allocate_value_buffer(v0, qword_2813516E0);
  __swift_project_value_buffer(v0, qword_2813516E0);
  return sub_224DAB238();
}

uint64_t sub_224C6C610()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A10, &unk_224DB4000);
    sub_224A33088(&qword_281350EE0, &qword_27D6F4A10, &unk_224DB4000, MEMORY[0x277CBCE20]);
    v1 = sub_224DAB3A8();
    *(v0 + 24) = v1;
  }

  return v1;
}

double sub_224C6C6D4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_224DAB7B8();
  v60 = *(v4 - 8);
  v61 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v58 = &v51[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v59 = sub_224DAB848();
  v57 = *(v59 - 8);
  MEMORY[0x28223BE20](v59, v7);
  v56 = &v51[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v55 = &v51[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v51[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v19 = MEMORY[0x28223BE20](v17 - 8, v18);
  v54 = &v51[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v51[-v22];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5B90, &qword_224DB5C50);
  v25 = v24 - 8;
  MEMORY[0x28223BE20](v24, v26);
  v28 = &v51[-v27];
  v29 = OBJC_IVAR____TtC10ChronoCore18NowPlayingObserver__queue_activeNowPlayingApp;
  swift_beginAccess();
  v30 = *(v25 + 56);
  sub_224AFD468(v2 + v29, v28);
  sub_224AFD468(a1, &v28[v30]);
  v62 = v10;
  v31 = *(v10 + 48);
  if (v31(v28, 1, v9) == 1)
  {
    if (v31(&v28[v30], 1, v9) == 1)
    {
      sub_224A3311C(v28, &unk_27D6F5060, &qword_224DB5620);
      return result;
    }
  }

  else
  {
    sub_224AFD468(v28, v23);
    if (v31(&v28[v30], 1, v9) != 1)
    {
      v53 = v2;
      v40 = v62;
      (*(v62 + 32))(v16, &v28[v30], v9);
      sub_224A33088(&unk_281351960, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FB0]);
      v52 = sub_224DAEDD8();
      v41 = v40;
      v2 = v53;
      v42 = *(v41 + 8);
      v42(v16, v9);
      v42(v23, v9);
      sub_224A3311C(v28, &unk_27D6F5060, &qword_224DB5620);
      if (v52)
      {
        return result;
      }

      goto LABEL_7;
    }

    (*(v62 + 8))(v23, v9);
  }

  sub_224A3311C(v28, &qword_27D6F5B90, &qword_224DB5C50);
LABEL_7:
  if (qword_2813516D8 != -1)
  {
    swift_once();
  }

  v33 = sub_224DAB258();
  __swift_project_value_buffer(v33, qword_2813516E0);

  v34 = sub_224DAB228();
  v35 = sub_224DAF2A8();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    aBlock[0] = v37;
    *v36 = 136446210;
    v38 = v54;
    sub_224AFD468(v2 + v29, v54);
    if (v31(v38, 1, v9) == 1)
    {
      v39 = v55;
      sub_224DA9FF8();
      if (v31(v38, 1, v9) != 1)
      {
        sub_224A3311C(v38, &unk_27D6F5060, &qword_224DB5620);
      }
    }

    else
    {
      v39 = v55;
      (*(v62 + 32))(v55, v38, v9);
    }

    sub_224A33088(&qword_281351940, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FC8]);
    v43 = sub_224DAFD28();
    v45 = v44;
    (*(v62 + 8))(v39, v9);
    v46 = sub_224A33F74(v43, v45, aBlock);

    *(v36 + 4) = v46;
    _os_log_impl(&dword_224A2F000, v34, v35, "Active now playing app is now: %{public}s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x22AA5EED0](v37, -1, -1);
    MEMORY[0x22AA5EED0](v36, -1, -1);
  }

  aBlock[4] = sub_224C6E008;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_29_1;
  v47 = _Block_copy(aBlock);

  v48 = v56;
  sub_224DAB7E8();
  v63 = MEMORY[0x277D84F90];
  sub_224A80DE0(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
  v49 = v58;
  v50 = v61;
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v48, v49, v47);
  _Block_release(v47);
  (*(v60 + 8))(v49, v50);
  (*(v57 + 8))(v48, v59);

  return result;
}

double sub_224C6CF10(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A10, &unk_224DB4000);
  sub_224A33088(&qword_281350EF0, &qword_27D6F4A10, &unk_224DB4000, MEMORY[0x277CBCE18]);
  sub_224DAB398();

  return result;
}

uint64_t sub_224C6CFA8()
{
  v1 = v0;
  v2 = sub_224DAF3C8();
  v3 = *(v2 - 8);
  v36 = v2;
  v37 = v3;
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DAF318();
  MEMORY[0x28223BE20](v7, v8);
  v9 = sub_224DAB848();
  MEMORY[0x28223BE20](v9 - 8, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A10, &unk_224DB4000);
  swift_allocObject();
  *(v0 + 16) = sub_224DAB358();
  *(v0 + 24) = 0;
  v35 = v0;
  v11 = OBJC_IVAR____TtC10ChronoCore18NowPlayingObserver__queue_activeNowPlayingApp;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  (*(*(v12 - 8) + 56))(v1 + v11, 1, 1, v12);
  *(v1 + OBJC_IVAR____TtC10ChronoCore18NowPlayingObserver__delegate) = 0;
  v31 = sub_224AC319C();
  v34 = "ayingControllerDelegate";
  sub_224DAB7E8();
  v39 = MEMORY[0x277D84F90];
  v33 = sub_224A80DE0(&qword_281350A88, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  sub_224A33088(&qword_281350B90, &qword_27D6F3470, qword_224DB38B0, MEMORY[0x277D83970]);
  sub_224DAF788();
  v13 = *MEMORY[0x277D85260];
  v14 = v36;
  v15 = *(v37 + 104);
  v37 += 104;
  v30 = v6;
  v15(v6, v13, v36);
  v16 = sub_224DAF418();
  v17 = v35;
  *(v35 + OBJC_IVAR____TtC10ChronoCore18NowPlayingObserver__queue) = v16;
  sub_224DAB7E8();
  v39 = MEMORY[0x277D84F90];
  sub_224DAF788();
  v15(v30, v13, v14);
  *(v17 + OBJC_IVAR____TtC10ChronoCore18NowPlayingObserver__calloutQueue) = sub_224DAF418();
  v18 = [objc_opt_self() userSelectedDestination];
  v19 = [objc_allocWithZone(MEMORY[0x277D279C0]) initWithDestination_];

  [v19 setRequestClientProperties_];
  [v19 setRequestPlaybackState_];
  v20 = [objc_allocWithZone(MEMORY[0x277D279B8]) initWithConfiguration_];
  *(v17 + OBJC_IVAR____TtC10ChronoCore18NowPlayingObserver__monitor) = v20;
  v21 = type metadata accessor for NowPlayingControllerDelegate();
  v22 = objc_allocWithZone(v21);
  swift_weakInit();
  swift_weakAssign();
  v38.receiver = v22;
  v38.super_class = v21;
  v23 = objc_msgSendSuper2(&v38, sel_init);
  v24 = *(v17 + OBJC_IVAR____TtC10ChronoCore18NowPlayingObserver__delegate);
  *(v17 + OBJC_IVAR____TtC10ChronoCore18NowPlayingObserver__delegate) = v23;
  v25 = v23;

  v26 = OBJC_IVAR____TtC10ChronoCore18NowPlayingObserver__monitor;
  v27 = *(v17 + OBJC_IVAR____TtC10ChronoCore18NowPlayingObserver__monitor);
  [v27 setDelegate_];

  [*(v17 + v26) beginLoadingUpdates];
  return v17;
}

double sub_224C6D4A0()
{
  v1 = sub_224DAB7B8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_224DAB848();
  v6 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *(v0 + OBJC_IVAR____TtC10ChronoCore18NowPlayingObserver__queue);
  aBlock[4] = sub_224C6DF90;
  v16 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_31;
  v10 = _Block_copy(aBlock);

  sub_224DAB7E8();
  v14 = MEMORY[0x277D84F90];
  sub_224A80DE0(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v9, v5, v10);
  _Block_release(v10);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v13);

  return result;
}

uint64_t sub_224C6D75C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v6 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v27[-v8];
  v10 = *(a1 + OBJC_IVAR____TtC10ChronoCore18NowPlayingObserver__monitor);
  v11 = [v10 response];
  if (v11 && (v12 = v11, v13 = [v11 clientProperties], v12, v14 = objc_msgSend(v13, sel_parentApplicationBundleIdentifier), v13, v14) || (v15 = objc_msgSend(v10, sel_response)) != 0 && (v16 = v15, v17 = objc_msgSend(v15, sel_clientProperties), v16, v14 = objc_msgSend(v17, sel_bundleIdentifier), v17, v14))
  {
    sub_224DAEE18();
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = [v10 response];
  if (!v20 || (v21 = v20, v22 = [v20 playbackState], v21, v22 != 1))
  {

    goto LABEL_12;
  }

  if (!v19)
  {
LABEL_12:
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
    (*(*(v24 - 8) + 56))(v9, 1, 1, v24);
    goto LABEL_13;
  }

  sub_224DA9FF8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  (*(*(v23 - 8) + 56))(v9, 0, 1, v23);
LABEL_13:
  v25 = OBJC_IVAR____TtC10ChronoCore18NowPlayingObserver__queue_activeNowPlayingApp;
  swift_beginAccess();
  sub_224AFD468(a1 + v25, v6);
  swift_beginAccess();
  sub_224C6DF98(v9, a1 + v25);
  swift_endAccess();
  sub_224C6C6D4(v6);
  sub_224A3311C(v6, &unk_27D6F5060, &qword_224DB5620);
  return sub_224A3311C(v9, &unk_27D6F5060, &qword_224DB5620);
}

uint64_t sub_224C6DA68()
{

  sub_224A3311C(v0 + OBJC_IVAR____TtC10ChronoCore18NowPlayingObserver__queue_activeNowPlayingApp, &unk_27D6F5060, &qword_224DB5620);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NowPlayingObserver(uint64_t a1)
{
  result = qword_281359768;
  if (!qword_281359768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_224C6DB80(uint64_t a1)
{
  sub_224B48260(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_224C6DDA8(char *a1)
{
  if (swift_weakLoadStrong())
  {
    v2 = a1;
    sub_224C6D4A0();
  }
}

id sub_224C6DEC8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NowPlayingControllerDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_224C6DF30@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10ChronoCore18NowPlayingObserver__queue_activeNowPlayingApp;
  swift_beginAccess();
  return sub_224AFD468(v1 + v3, a1);
}

uint64_t sub_224C6DF98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_224C6E0C0()
{

  return swift_deallocClassInstance();
}

char *sub_224C6E134()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(*(v1 + 16));
  v2 = *(v0 + 16);
  swift_beginAccess();
  v3 = *(v2 + 16);
  v4 = *(v3 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = sub_224B0CBDC(*(v3 + 16), 0);
  v6 = *(sub_224DAC5E8() - 8);
  v7 = sub_224B2EE98(&v10, &v5[(*(v6 + 80) + 32) & ~*(v6 + 80)], v4, v3);
  v8 = v10;

  sub_224A3B7E4(v8);
  if (v7 != v4)
  {
    __break(1u);
LABEL_4:
    v5 = MEMORY[0x277D84F90];
  }

  os_unfair_lock_unlock(*(v1 + 16));
  return v5;
}

void sub_224C6E254(uint64_t a1)
{
  v2 = v1;
  v4 = sub_224DAC5E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v8 = *(v1 + 24);
  os_unfair_lock_lock(*(v8 + 16));
  sub_224B9E770(a1);
  v9 = *(v1 + 32);
  (*(v5 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v10 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  (*(v5 + 32))(v11 + v10, &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

  _s10ChronoCore14PushFoundationO20KeepAliveTransactionC9asyncTask6reason5queue5delay8wrappingySS_So012OS_dispatch_K0CSdyyycctFZ_0(0x6573616261746144, 0xE800000000000000, v9, sub_224C6F104, v11, 0.0);

  os_unfair_lock_unlock(*(v8 + 16));
}

uint64_t sub_224C6E5D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a4;
  v7 = sub_224DAC5E8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BB0, &unk_224DB8CF0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v28 - v13;
  v30 = a2;
  v31 = a3;
  sub_224B9EF28(a2, a3, &v28 - v13);
  if ((*(v8 + 48))(v14, 1, v7) == 1)
  {
    v15 = v31;
    sub_224C6EFCC(v14);
    if (qword_281351438 != -1)
    {
      swift_once();
    }

    v16 = sub_224DAB258();
    __swift_project_value_buffer(v16, qword_281364D78);

    v17 = sub_224DAB228();
    v18 = sub_224DAF2A8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v33 = v20;
      *v19 = 136446210;
      *(v19 + 4) = sub_224A33F74(v30, v15, &v33);
      _os_log_impl(&dword_224A2F000, v17, v18, "Subscription does not exist with identifier: %{public}s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x22AA5EED0](v20, -1, -1);
      MEMORY[0x22AA5EED0](v19, -1, -1);
    }

    v21 = 1;
  }

  else
  {
    v22 = v32;
    v28 = *(v8 + 32);
    v28(v32, v14, v7);
    v29 = *(a1 + 32);
    (*(v8 + 16))(&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v22, v7);
    v23 = (*(v8 + 80) + 24) & ~*(v8 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = a1;
    v28(v24 + v23, &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    v25 = (v24 + ((v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
    v26 = v31;
    *v25 = v30;
    v25[1] = v26;

    _s10ChronoCore14PushFoundationO20KeepAliveTransactionC9asyncTask6reason5queue5delay8wrappingySS_So012OS_dispatch_K0CSdyyycctFZ_0(0x6573616261746144, 0xE800000000000000, v29, sub_224C6F034, v24, 0.0);

    v21 = 0;
  }

  return (*(v8 + 56))(v32, v21, 1, v7);
}

uint64_t sub_224C6EBA4()
{
  sub_224DABAE8();
  sub_224DAC588();
  sub_224DAB9F8();
}

void sub_224C6EC0C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 24);
  os_unfair_lock_lock(*(v7 + 16));
  v8 = *(v3 + 16);
  swift_beginAccess();
  v9 = *(v8 + 16);
  if (!*(v9 + 16))
  {
    goto LABEL_5;
  }

  v10 = sub_224A3A40C(a1, a2);
  if ((v11 & 1) == 0)
  {

LABEL_5:
    v16 = sub_224DAC5E8();
    (*(*(v16 - 8) + 56))(a3, 1, 1, v16);
    goto LABEL_6;
  }

  v12 = v10;
  v13 = *(v9 + 56);
  v14 = sub_224DAC5E8();
  v15 = *(v14 - 8);
  (*(v15 + 16))(a3, v13 + *(v15 + 72) * v12, v14);

  (*(v15 + 56))(a3, 0, 1, v14);
LABEL_6:
  os_unfair_lock_unlock(*(v7 + 16));
}

uint64_t sub_224C6EDD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = *(*v3 + 24);
  os_unfair_lock_lock(*(v5 + 16));
  v6 = a3();
  os_unfair_lock_unlock(*(v5 + 16));
  return v6;
}

void sub_224C6EE6C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  v8 = *(v7 + 24);
  os_unfair_lock_lock(*(v8 + 16));
  sub_224C6E5D4(v7, a1, a2, a3);
  v9 = *(v8 + 16);

  os_unfair_lock_unlock(v9);
}

uint64_t sub_224C6EF24(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 24);
  os_unfair_lock_lock(*(v5 + 16));
  LOBYTE(a2) = sub_224B9F2DC(a1, a2);
  os_unfair_lock_unlock(*(v5 + 16));
  return a2 & 1;
}

uint64_t sub_224C6EF80()
{
  v1 = *(*v0 + 24);
  os_unfair_lock_lock(*(v1 + 16));
  v2 = sub_224BA1954();
  os_unfair_lock_unlock(*(v1 + 16));
  return v2;
}

uint64_t sub_224C6EFCC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BB0, &unk_224DB8CF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_224C6F034(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v5 = *(sub_224DAC5E8() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_224C6E96C(a1, a2, v6, v7);
}

uint64_t sub_224C6F104(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v5 = *(sub_224DAC5E8() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_224C6E3E4(a1, a2, v6, v7);
}

double sub_224C6F188()
{
  sub_224DABAE8();
  sub_224DABA08();

  return result;
}

char *sub_224C6F1DC(uint64_t a1)
{
  v50 = a1;
  v53 = sub_224DAC5E8();
  v51 = *(v53 - 8);
  v3 = MEMORY[0x28223BE20](v53, v2);
  v48 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v47 - v6;
  v52 = sub_224DAF3C8();
  v8 = *(v52 - 1);
  MEMORY[0x28223BE20](v52, v9);
  v49 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DAF318();
  MEMORY[0x28223BE20](v11, v12);
  v13 = sub_224DAB848();
  MEMORY[0x28223BE20](v13 - 8, v14);
  type metadata accessor for PushSubscriptionStore();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D84F90];
  *(v15 + 16) = sub_224DA0FA4(MEMORY[0x277D84F90]);
  *(v1 + 2) = v15;
  type metadata accessor for UnfairLock();
  v17 = swift_allocObject();
  v18 = swift_slowAlloc();
  *v18 = 0;
  *(v17 + 16) = v18;
  *(v1 + 3) = v17;
  sub_224AC319C();
  sub_224DAB7E8();
  v54 = v16;
  sub_224AC31E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  sub_224AC3240();
  sub_224DAF788();
  (*(v8 + 104))(v49, *MEMORY[0x277D85260], v52);
  *(v1 + 4) = sub_224DAF418();
  *(v1 + 5) = v50;

  sub_224DAB958();
  v19 = sub_224DAB948();
  v49 = v1;

  v20 = *(v19 + 16);
  v50 = v19;
  v21 = 0;
  if (v20)
  {
    v52 = *(v51 + 16);
    v22 = v19 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
    v23 = *(v51 + 72);
    v24 = (v51 + 8);
    v25 = 0xE000000000000000;
    v26 = v20;
    v52(v7, v22, v53);
    while (1)
    {
      v29 = HIBYTE(v25) & 0xF;
      if ((v25 & 0x2000000000000000) == 0)
      {
        v29 = v21 & 0xFFFFFFFFFFFFLL;
      }

      if (v29)
      {
        v54 = v21;
        v55 = v25;

        MEMORY[0x22AA5D210](8236, 0xE200000000000000);
        v27 = sub_224DAC588();
        MEMORY[0x22AA5D210](v27);

        v21 = v54;
        v25 = v55;
      }

      else
      {
        v21 = sub_224DAC588();
        v31 = v30;

        v25 = v31;
      }

      v28 = v53;
      (*v24)(v7, v53);
      v22 += v23;
      if (!--v26)
      {
        break;
      }

      v52(v7, v22, v28);
    }
  }

  else
  {
    v25 = 0xE000000000000000;
  }

  if (qword_281351438 != -1)
  {
    swift_once();
  }

  v32 = sub_224DAB258();
  __swift_project_value_buffer(v32, qword_281364D78);

  v33 = sub_224DAB228();
  v34 = sub_224DAF2A8();

  v35 = os_log_type_enabled(v33, v34);
  v36 = v49;
  if (v35)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v54 = v38;
    *v37 = 136446210;
    v39 = sub_224A33F74(v21, v25, &v54);

    *(v37 + 4) = v39;
    _os_log_impl(&dword_224A2F000, v33, v34, "Restored subscriptions with identifiers: %{public}s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x22AA5EED0](v38, -1, -1);
    MEMORY[0x22AA5EED0](v37, -1, -1);
  }

  else
  {
  }

  v40 = v53;
  v41 = v48;
  if (v20)
  {
    v42 = *(v51 + 16);
    v43 = v50 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
    v44 = *(v51 + 72);
    v45 = (v51 + 8);
    do
    {
      v42(v41, v43, v40);
      sub_224B9E770(v41);
      (*v45)(v41, v40);
      v43 += v44;
      --v20;
    }

    while (v20);
  }

  return v36;
}

void sub_224C6F830(void *a1, uint64_t a2)
{
  if (a1)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v3 = a1;
      sub_224C6F99C(v3, 0);
    }
  }
}

void sub_224C6F8A4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_224C6F910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_224C6F99C(v5, 1);
    }
  }
}

uint64_t sub_224C6F99C(char *a1, int a2)
{
  v3 = v2;
  v6 = sub_224DA9908();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssert();
  result = 1;
  if (*(v3 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__activationBlockIsCompleted))
  {
    return result;
  }

  v70 = v10;
  v69 = a2;
  *(v3 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__activationBlockIsCompleted) = 1;
  v12 = OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock;
  v13 = *(*(v3 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock) + 16);
  v68 = *(v3 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock);

  os_unfair_lock_lock(v13);
  os_unfair_lock_assert_owner(*(*(v3 + v12) + 16));
  v14 = *(v3 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock_budgetedDASActivity);
  if (v14)
  {
    v15 = v14 == a1;
  }

  else
  {
    v15 = 1;
  }

  v74 = v6;
  v76 = v3;
  if (!v15)
  {
    v16 = (v3 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__scheduler);
    v17 = *(v3 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__scheduler + 24);
    v18 = *(v3 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__scheduler + 32);
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v19 = *(v18 + 24);
    v20 = v14;
    v3 = v76;
    v19();
    v6 = v74;
  }

  v75 = v7;
  v21 = *(v3 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock_fallbackDASActivity);
  if (v21)
  {
    v22 = v21 == a1;
  }

  else
  {
    v22 = 1;
  }

  if (!v22)
  {
    v23 = (v3 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__scheduler);
    v24 = *(v3 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__scheduler + 24);
    v25 = *(v3 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__scheduler + 32);
    __swift_project_boxed_opaque_existential_1(v23, v24);
    v26 = *(v25 + 24);
    v27 = v21;
    v3 = v76;
    v26();
    v6 = v74;
  }

  v28 = OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock_rateLimitedDASActivitiesByIdentifier;
  swift_beginAccess();
  v29 = *(v3 + v28);
  if (v29)
  {
    v30 = v29 + 64;
    v31 = 1 << *(v29 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v6 = v32 & *(v29 + 64);
    v71 = (v3 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__scheduler);
    v33 = (v31 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v3 = 0;
    v72 = v29;
    v73 = a1;
    while (v6)
    {
LABEL_21:
      v35 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v36 = *(*(v29 + 56) + 8 * (v35 | (v3 << 6)));
      if (v36 != a1)
      {
        v37 = v71[4];
        __swift_project_boxed_opaque_existential_1(v71, v71[3]);
        v77 = *(v37 + 24);

        v38 = v36;
        a1 = v73;
        v77();
        v29 = v72;
      }
    }

    while (1)
    {
      v34 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v34 >= v33)
      {

        v6 = v74;
        v3 = v76;
        goto LABEL_24;
      }

      v6 = *(v30 + 8 * v34);
      ++v3;
      if (v6)
      {
        v3 = v34;
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

LABEL_24:
  os_unfair_lock_unlock(*(v68 + 16));

  if (qword_2813515F0 != -1)
  {
LABEL_31:
    swift_once();
  }

  v39 = sub_224DAB258();
  __swift_project_value_buffer(v39, qword_281364F88);

  v40 = sub_224DAB228();
  v41 = sub_224DAF2A8();

  v42 = &unk_281356000;
  if (os_log_type_enabled(v40, v41))
  {
    v43 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v79 = v77;
    *v43 = 136446466;
    v44 = *(v75 + 16);
    v73 = *(v3 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__activity);
    v74 = v44;
    v45 = v70;
    v44(v70, &v73[OBJC_IVAR____TtC10ChronoCore12TaskActivity_identifier], v6);
    v78 = sub_224DA98E8();
    sub_224A3F6A4();
    v46 = sub_224DAEF18();
    LODWORD(v72) = v41;
    v48 = sub_224A3D19C(8, v46, v47);
    v50 = v49;
    v52 = v51;
    v54 = v53;

    v55 = MEMORY[0x22AA5D1C0](v48, v50, v52, v54);
    v57 = v56;
    v42 = &unk_281356000;

    v58 = v75;
    (*(v75 + 8))(v45, v6);
    v59 = sub_224A33F74(v55, v57, &v79);

    *(v43 + 4) = v59;
    *(v43 + 12) = 2082;
    v60 = *&v73[OBJC_IVAR____TtC10ChronoCore12TaskActivity_name];
    v61 = *&v73[OBJC_IVAR____TtC10ChronoCore12TaskActivity_name + 8];

    v62 = sub_224A33F74(v60, v61, &v79);

    *(v43 + 14) = v62;
    _os_log_impl(&dword_224A2F000, v40, v72, "[%{public}s]: DAS  refresh activity began; name: %{public}s", v43, 0x16u);
    v63 = v77;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v63, -1, -1);
    MEMORY[0x22AA5EED0](v43, -1, -1);

    v64 = v76;
    v65 = v74;
  }

  else
  {

    v58 = v75;
    v64 = v3;
    v65 = *(v75 + 16);
    v45 = v70;
  }

  v66 = *(v64 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__startHandler);
  v65(v45, *(v64 + v42[334]) + OBJC_IVAR____TtC10ChronoCore12TaskActivity_identifier, v6);
  v66(v45, 1);
  (*(v58 + 8))(v45, v6);
  return ~v69 & 1;
}

uint64_t sub_224C6FFE0(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3320, &unk_224DBD6F0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v49[-v5];
  v7 = sub_224DAAE38();
  v51 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v49[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v49[-v13];
  v15 = sub_224DA9908();
  v16 = *(v15 - 8);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v52 = &v49[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v49[-v21];
  sub_224A3796C(v1 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__remoteDeviceProvider, &v53, &qword_27D6F5590, &qword_224DBEC00);
  if (v54)
  {
    sub_224A36F98(&v53, v55);
    sub_224DA9888();
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {
      sub_224A3311C(v14, &unk_27D6F5630, &unk_224DB34C0);
      __swift_destroy_boxed_opaque_existential_1(v55);
    }

    else
    {
      (*(v16 + 32))(v22, v14, v15);
      v23 = v15;
      __swift_project_boxed_opaque_existential_1(v55, v55[3]);
      sub_224DAAC98();
      v24 = v51;
      if ((v51[6])(v6, 1, v7) != 1)
      {
        (v24[4])(v10, v6, v7);
        v46 = v52;
        sub_224DAADF8();
        v47 = sub_224DA9898();
        v48 = *(v16 + 8);
        v48(v46, v23);
        (v24[1])(v10, v7);
        v48(v22, v23);
        __swift_destroy_boxed_opaque_existential_1(v55);
        return v47;
      }

      (*(v16 + 8))(v22, v23);
      sub_224A3311C(v6, &qword_27D6F3320, &unk_224DBD6F0);
      __swift_destroy_boxed_opaque_existential_1(v55);
      v15 = v23;
    }
  }

  else
  {
    sub_224A3311C(&v53, &qword_27D6F5590, &qword_224DBEC00);
  }

  if (qword_2813515F0 != -1)
  {
    swift_once();
  }

  v25 = sub_224DAB258();
  __swift_project_value_buffer(v25, qword_281364F88);

  v26 = sub_224DAB228();
  v27 = sub_224DAF288();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v55[0] = v51;
    *v28 = 136446210;
    v29 = v52;
    (*(v16 + 16))(v52, *(v2 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__activity) + OBJC_IVAR____TtC10ChronoCore12TaskActivity_identifier, v15);
    v50 = v27;
    *&v53 = sub_224DA98E8();
    sub_224A3F6A4();
    v30 = sub_224DAEF18();
    v32 = sub_224A3D19C(8, v30, v31);
    v33 = v15;
    v35 = v34;
    v37 = v36;
    v39 = v38;

    v40 = MEMORY[0x22AA5D1C0](v32, v35, v37, v39);
    v42 = v41;

    (*(v16 + 8))(v29, v33);
    v43 = sub_224A33F74(v40, v42, v55);

    *(v28 + 4) = v43;
    _os_log_impl(&dword_224A2F000, v26, v50, "[%{public}s]: Relationship does not exist; cannot use remote device ID", v28, 0xCu);
    v44 = v51;
    __swift_destroy_boxed_opaque_existential_1(v51);
    MEMORY[0x22AA5EED0](v44, -1, -1);
    MEMORY[0x22AA5EED0](v28, -1, -1);
  }

  return 0;
}

uint64_t sub_224C705EC(uint64_t a1)
{
  result = sub_224DA9878();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_224C70740(uint64_t a1)
{
  v32 = sub_224DA9688();
  v3 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v4);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v8;
  }

  v30[1] = v1;
  v41 = MEMORY[0x277D84F90];
  sub_224ADA268(0, v7, 0);
  v8 = v41;
  v40 = a1 + 56;
  result = sub_224DAF798();
  v10 = result;
  v11 = 0;
  v35 = v3 + 32;
  v36 = v3 + 16;
  v31 = a1 + 64;
  v12 = v32;
  v33 = v7;
  v34 = a1;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
  {
    v14 = v10 >> 6;
    if ((*(v40 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_22;
    }

    v37 = v11;
    v39 = *(a1 + 36);
    v15 = *(v3 + 72);
    (*(v3 + 16))(v6, *(a1 + 48) + v15 * v10, v12);
    v41 = v8;
    v16 = v12;
    v18 = *(v8 + 16);
    v17 = *(v8 + 24);
    v19 = v18 + 1;
    if (v18 >= v17 >> 1)
    {
      v38 = v18 + 1;
      sub_224ADA268((v17 > 1), v18 + 1, 1);
      v19 = v38;
      v8 = v41;
    }

    *(v8 + 16) = v19;
    v20 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v38 = v8;
    v21 = v8 + v20 + v18 * v15;
    v22 = v3;
    result = (*(v3 + 32))(v21, v6, v16);
    v13 = 1 << *(v34 + 32);
    if (v10 >= v13)
    {
      goto LABEL_23;
    }

    v23 = *(v40 + 8 * v14);
    if ((v23 & (1 << v10)) == 0)
    {
      goto LABEL_24;
    }

    v12 = v16;
    a1 = v34;
    if (v39 != *(v34 + 36))
    {
      goto LABEL_25;
    }

    v24 = v23 & (-2 << (v10 & 0x3F));
    if (v24)
    {
      v13 = __clz(__rbit64(v24)) | v10 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v25 = v14 << 6;
      v26 = v14 + 1;
      v27 = (v31 + 8 * v14);
      while (v26 < (v13 + 63) >> 6)
      {
        v29 = *v27++;
        v28 = v29;
        v25 += 64;
        ++v26;
        if (v29)
        {
          result = sub_224A3E204(v10, v39, 0);
          v13 = __clz(__rbit64(v28)) + v25;
          goto LABEL_19;
        }
      }

      result = sub_224A3E204(v10, v39, 0);
LABEL_19:
      v12 = v32;
    }

    v11 = v37 + 1;
    v10 = v13;
    v3 = v22;
    v8 = v38;
    if (v37 + 1 == v33)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void sub_224C70AE0(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_224DAF7E8();
    sub_224A3B79C(0, &qword_281350908, 0x277CFA398);
    sub_224C74C44();
    sub_224DAF1F8();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = (v8 & *(a1 + 56));
  }

  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      sub_224A3B7E4(v1);
      return;
    }

    while (1)
    {
      sub_224ADC4E8(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_224DAF878())
      {
        sub_224A3B79C(0, &qword_281350908, 0x277CFA398);
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = v2[v11];
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_224C70CC0(uint64_t a1, uint64_t (*a2)(void), void (*a3)(char *, char *))
{
  v28 = a3;
  v4 = a2(0);
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = v27 - v12;
  MEMORY[0x28223BE20](v11, v14);
  v16 = v27 - v15;
  v17 = 0;
  v29 = a1;
  v20 = *(a1 + 56);
  v19 = a1 + 56;
  v18 = v20;
  v21 = 1 << *(v19 - 24);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v24 = (v21 + 63) >> 6;
  v27[2] = v5 + 32;
  v27[3] = v5 + 16;
  v27[1] = v5 + 8;
  if ((v22 & v18) != 0)
  {
    do
    {
      v25 = v17;
LABEL_9:
      v26 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      (*(v5 + 16))(v16, *(v29 + 48) + *(v5 + 72) * (v26 | (v25 << 6)), v4);
      (*(v5 + 32))(v9, v16, v4);
      v28(v13, v9);
      (*(v5 + 8))(v13, v4);
    }

    while (v23);
  }

  while (1)
  {
    v25 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v25 >= v24)
    {

      return;
    }

    v23 = *(v19 + 8 * v25);
    ++v17;
    if (v23)
    {
      v17 = v25;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_224C70EE0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  sub_224A3D418(*(v0 + 120), *(v0 + 128));
  sub_224A3D418(*(v0 + 136), *(v0 + 144));

  return swift_deallocClassInstance();
}

uint64_t sub_224C70F6C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  result = sub_224C70FB0(a1);
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  return result;
}

uint64_t sub_224C70FB0(int a1)
{
  v84 = a1;
  v2 = sub_224DA9878();
  v86 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v92 = v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_224DAB1F8();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v89 = v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v88 = v80 - v12;
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = v80 - v15;
  v18 = MEMORY[0x28223BE20](v14, v17);
  v90 = v80 - v19;
  MEMORY[0x28223BE20](v18, v20);
  v91 = v80 - v21;
  v22 = sub_224DAB8C8();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v24);
  v26 = (v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v85 = v1;
  v27 = *(v1 + 16);
  *v26 = v27;
  (*(v23 + 104))(v26, *MEMORY[0x277D85200], v22);
  v28 = v27;
  v29 = sub_224DAB8F8();
  (*(v23 + 8))(v26, v22);
  if (v29)
  {
    if (qword_281351470 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v30 = sub_224DAB258();
  v80[2] = __swift_project_value_buffer(v30, qword_281364DD8);
  v31 = sub_224DAB228();
  v32 = sub_224DAF2A8();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_224A2F000, v31, v32, "Begin reap session", v33, 2u);
    MEMORY[0x22AA5EED0](v33, -1, -1);
  }

  v87 = v16;
  v81 = v6;
  v82 = v5;
  v83 = v2;

  if (qword_2813507E0 != -1)
  {
    swift_once();
  }

  v34 = qword_281364CB8;
  v35 = v91;
  sub_224DAB1E8();
  v36 = sub_224DAF4B8();
  v37 = MEMORY[0x277D84F90];
  sub_224DAB1D8(v36, &dword_224A2F000, v34, "ReapSession", 11, 2, v35, "enableTelemetry=YES", 19, 2, MEMORY[0x277D84F90]);
  __swift_project_boxed_opaque_existential_1((v85 + 32), *(v85 + 56));
  v38 = sub_224DAC388();
  v39 = v34;
  v40 = v90;
  sub_224DAB1E8();
  v41 = sub_224DAF4B8();
  LOBYTE(v71) = 2;
  sub_224DAB1D8(v41, &dword_224A2F000, v39, "IdentifyProposedURLs", 20, 2, v40, "enableTelemetry=YES", 19, v71, v37);
  v80[1] = v38;
  v42 = sub_224C71910(v38);
  v43 = sub_224DAF4A8();
  LOBYTE(v72) = 2;
  sub_224DAB1D8(v43, &dword_224A2F000, v39, "IdentifyProposedURLs", 20, 2, v40, "enableTelemetry=YES", 19, v72, v37);
  v44 = v39;
  v45 = v87;
  sub_224DAB1E8();
  v46 = sub_224DAF4B8();
  v47 = MEMORY[0x277D84F90];
  LOBYTE(v73) = 2;
  sub_224DAB1D8(v46, &dword_224A2F000, v44, "IdentifyProtectedURLs", 21, 2, v45, "enableTelemetry=YES", 19, v73, MEMORY[0x277D84F90]);
  sub_224DA9808();
  v48 = sub_224C71A98(v38, v42);
  v49 = sub_224DAF4A8();
  LOBYTE(v74) = 2;
  sub_224DAB1D8(v49, &dword_224A2F000, v44, "IdentifyProtectedURLs", 21, 2, v45, "enableTelemetry=YES", 19, v74, v47);
  v50 = v88;
  sub_224DAB1E8();
  v51 = sub_224DAF4B8();
  LOBYTE(v75) = 2;
  v80[0] = v42;
  sub_224DAB1D8(v51, &dword_224A2F000, v44, "IdentifyUnprotectedURLs", 23, 2, v50, "enableTelemetry=YES", 19, v75, v47);
  v52 = sub_224C7495C(v42, v48);

  v53 = sub_224DAF4A8();
  LOBYTE(v76) = 2;
  sub_224DAB1D8(v53, &dword_224A2F000, v44, "IdentifyUnprotectedURLs", 23, 2, v50, "enableTelemetry=YES", 19, v76, v47);
  v54 = v89;
  sub_224DAB1E8();
  v55 = sub_224DAF4B8();
  LOBYTE(v77) = 2;
  sub_224DAB1D8(v55, &dword_224A2F000, v44, "ExecuteReap", 11, 2, v54, "enableTelemetry=YES", 19, v77, v47);
  sub_224C71DA8(v84 & 1, v92, v52);
  v57 = v56;

  v58 = sub_224DAF4A8();
  v59 = MEMORY[0x277D84F90];
  LOBYTE(v78) = 2;
  sub_224DAB1D8(v58, &dword_224A2F000, v44, "ExecuteReap", 11, 2, v54, "enableTelemetry=YES", 19, v78, MEMORY[0x277D84F90]);
  v60 = sub_224DAF4A8();
  LOBYTE(v79) = 2;
  sub_224DAB1D8(v60, &dword_224A2F000, v44, "ReapSession", 11, 2, v91, "enableTelemetry=YES", 19, v79, v59);
  v61 = v80[0];

  v62 = sub_224DAB228();
  v63 = sub_224DAF2A8();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 134349568;
    *(v64 + 4) = *(v61 + 16);

    *(v64 + 12) = 2050;
    *(v64 + 14) = *(v48 + 16);

    *(v64 + 22) = 2050;
    *(v64 + 24) = *(v57 + 16);

    _os_log_impl(&dword_224A2F000, v62, v63, "End reap session; proposed: %{public}ld; protected: %{public}ld; deleted: %{public}ld", v64, 0x20u);
    MEMORY[0x22AA5EED0](v64, -1, -1);
  }

  else
  {
  }

  v65 = v83;
  v66 = v81;
  v67 = sub_224C70740(v48);

  sub_224C70740(v61);

  sub_224C70740(v57);

  v68 = *(v66 + 8);
  v69 = v82;
  v68(v89, v82);
  v68(v88, v69);
  (*(v86 + 8))(v92, v65);
  v68(v87, v69);
  v68(v90, v69);
  v68(v91, v69);
  return v67;
}

uint64_t sub_224C71910(uint64_t a1)
{
  sub_224A3317C(v1 + 72, &v18);
  v17 = a1;
  v3 = *(v1 + 112);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;

    v6 = MEMORY[0x277D84FA0];
    do
    {
      sub_224A3317C(v5, v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F36D8, &qword_224DB3CA0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5BA8, &qword_224DBCBB0);
      if (swift_dynamicCast())
      {
        sub_224A36F98(v11, v14);
        v8 = v15;
        v7 = v16;
        __swift_project_boxed_opaque_existential_1(v14, v15);
        v9 = (*(v7 + 16))(&v17, v8, v7);
        v6 = sub_224AD6960(v9, v6);
        __swift_destroy_boxed_opaque_existential_1(v14);
      }

      else
      {
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        sub_224A3311C(v11, &qword_27D6F5BB0, &unk_224DBCBB8);
      }

      v5 += 40;
      --v4;
    }

    while (v4);
  }

  else
  {

    v6 = MEMORY[0x277D84FA0];
  }

  sub_224C74BF0(&v17);
  return v6;
}

uint64_t sub_224C71A98(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v4 = sub_224DAB8C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = v2;
  v10 = *(v2 + 16);
  *v8 = v10;
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v11 = v10;
  LOBYTE(v10) = sub_224DAB8F8();
  result = (*(v5 + 8))(v8, v4);
  if (v10)
  {
    v35 = a2;
    v34 = MEMORY[0x277D84FA0];
    v13 = *(v2 + 112);
    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = v13 + 32;

      v25 = v2;
      do
      {
        sub_224A3317C(v15, &v27);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F36D8, &qword_224DB3CA0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5B98, &qword_224DBCBA0);
        if (swift_dynamicCast())
        {
          sub_224A36F98(v29, v31);
          sub_224A3317C(v9 + 72, v28);
          v27 = v26;
          v28[5] = v35;
          v17 = v32;
          v16 = v33;
          __swift_project_boxed_opaque_existential_1(v31, v32);
          v18 = *(v16 + 16);

          v19 = v18(&v27, v17, v16);
          v9 = v25;
          v20 = v19;

          sub_224C70CC0(v21, MEMORY[0x277CC9260], sub_224ADB390);
          sub_224AFF0B4(v20, v22);

          sub_224C74B9C(&v27);
          __swift_destroy_boxed_opaque_existential_1(v31);
        }

        else
        {
          v30 = 0;
          memset(v29, 0, sizeof(v29));
          sub_224A3311C(v29, &qword_27D6F5BA0, &qword_224DBCBA8);
        }

        v15 += 40;
        --v14;
      }

      while (v14);
      v23 = v34;
    }

    else
    {

      v23 = MEMORY[0x277D84FA0];
    }

    return v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_224C71DA8(int a1, uint64_t a2, uint64_t a3)
{
  v52 = a2;
  v51 = a1;
  v5 = sub_224DA9688();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v44 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v43 = &v43 - v12;
  v14 = MEMORY[0x28223BE20](v11, v13);
  v55 = &v43 - v15;
  MEMORY[0x28223BE20](v14, v16);
  v50 = &v43 - v17;
  v18 = sub_224DAB8C8();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = (&v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = v3;
  v23 = *(v3 + 16);
  *v22 = v23;
  (*(v19 + 104))(v22, *MEMORY[0x277D85200], v18);
  v24 = v23;
  LOBYTE(v23) = sub_224DAB8F8();
  (*(v19 + 8))(v22, v18);
  if (v23)
  {
    v49 = v5;
    v56 = MEMORY[0x277D84FA0];
    v25 = a3 + 56;
    v26 = 1 << *(a3 + 32);
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v28 = v27 & *(a3 + 56);
    v29 = (v26 + 63) >> 6;
    v54 = v6 + 16;
    v45 = (v6 + 8);
    v46 = v6 + 32;

    v30 = 0;
    v31 = v6;
    v32 = v55;
    v47 = v6;
    v48 = a3;
    v33 = v49;
    while (v28)
    {
      v34 = v30;
LABEL_12:
      v35 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
      v36 = *(a3 + 48) + *(v31 + 72) * (v35 | (v34 << 6));
      v37 = *(v31 + 16);
      v38 = v50;
      v37(v50, v36, v33);
      (*(v31 + 32))(v32, v38, v33);
      if (sub_224C72170(v51 & 1, v52, v32))
      {
        v39 = v44;
        v37(v44, v55, v33);
        v40 = v43;
        v41 = v39;
        v32 = v55;
        sub_224ADB390(v43, v41);
        v42 = *v45;
        (*v45)(v40, v33);
        v42(v32, v33);
      }

      else
      {
        (*v45)(v32, v33);
      }

      v30 = v34;
      v31 = v47;
      a3 = v48;
    }

    while (1)
    {
      v34 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v34 >= v29)
      {

        return;
      }

      v28 = *(v25 + 8 * v34);
      ++v30;
      if (v28)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_224C72170(int a1, uint64_t a2, uint64_t a3)
{
  v167 = a2;
  v159 = sub_224DAB7B8();
  v158 = *(v159 - 8);
  MEMORY[0x28223BE20](v159, v5);
  v156 = &v151 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_224DAB848();
  v155 = *(v157 - 8);
  MEMORY[0x28223BE20](v157, v7);
  v154 = &v151 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v163 = &v151 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v172 = &v151 - v14;
  v15 = sub_224DA9878();
  v16 = *(v15 - 8);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v160 = &v151 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v151 - v21;
  v23 = sub_224DA9688();
  v24 = *(v23 - 8);
  v25 = v24[8];
  v27 = MEMORY[0x28223BE20](v23, v26);
  v164 = &v151 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27, v28);
  v153 = &v151 - v30;
  v32 = MEMORY[0x28223BE20](v29, v31);
  v166 = &v151 - v33;
  v35 = MEMORY[0x28223BE20](v32, v34);
  v162 = &v151 - v36;
  v38 = MEMORY[0x28223BE20](v35, v37);
  v152 = &v151 - v39;
  v41 = MEMORY[0x28223BE20](v38, v40);
  v43 = &v151 - v42;
  MEMORY[0x28223BE20](v41, v44);
  v46 = &v151 - v45;
  v173 = a3;
  v161 = a1;
  if (a1)
  {
    if (qword_281351470 != -1)
    {
      swift_once();
    }

    v47 = sub_224DAB258();
    __swift_project_value_buffer(v47, qword_281364DD8);
    v171 = v24[2];
    v171(v46, a3, v23);
    v48 = sub_224DAB228();
    v49 = sub_224DAF2A8();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v168 = v22;
      v169 = v15;
      v51 = v50;
      v151 = swift_slowAlloc();
      aBlock[0] = v151;
      *v51 = 136446210;
      sub_224C74B54(&qword_281351A70, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v52 = sub_224DAFD28();
      v53 = v16;
      v54 = v24;
      v55 = v23;
      v57 = v56;
      v170 = v54[1];
      v170(v46, v55);
      v58 = sub_224A33F74(v52, v57, aBlock);
      v23 = v55;
      v24 = v54;
      v16 = v53;

      *(v51 + 4) = v58;
      _os_log_impl(&dword_224A2F000, v48, v49, "Reaping (dryrun) %{public}s", v51, 0xCu);
      v59 = v151;
      __swift_destroy_boxed_opaque_existential_1(v151);
      MEMORY[0x22AA5EED0](v59, -1, -1);
      v60 = v51;
      v22 = v168;
      v15 = v169;
      MEMORY[0x22AA5EED0](v60, -1, -1);

      goto LABEL_13;
    }

    v75 = v24[1];
    v76 = v46;
  }

  else
  {
    if (qword_281351470 != -1)
    {
      swift_once();
    }

    v61 = sub_224DAB258();
    __swift_project_value_buffer(v61, qword_281364DD8);
    v171 = v24[2];
    v171(v43, a3, v23);
    v62 = sub_224DAB228();
    v63 = sub_224DAF2A8();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v168 = v22;
      v169 = v15;
      v65 = v64;
      v66 = swift_slowAlloc();
      aBlock[0] = v66;
      *v65 = 136446210;
      sub_224C74B54(&qword_281351A70, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v67 = sub_224DAFD28();
      v151 = v16;
      v68 = v24;
      v69 = v23;
      v70 = v67;
      v72 = v71;
      v170 = v68[1];
      v170(v43, v69);
      v73 = sub_224A33F74(v70, v72, aBlock);

      *(v65 + 4) = v73;
      v23 = v69;
      v24 = v68;
      v16 = v151;
      _os_log_impl(&dword_224A2F000, v62, v63, "Reaping %{public}s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v66);
      MEMORY[0x22AA5EED0](v66, -1, -1);
      v74 = v65;
      v22 = v168;
      v15 = v169;
      MEMORY[0x22AA5EED0](v74, -1, -1);

      goto LABEL_13;
    }

    v75 = v24[1];
    v76 = v43;
  }

  v170 = v75;
  v75(v76, v23);
LABEL_13:
  v78 = v172;
  v77 = v173;
  sub_224DA9668();
  v79 = v16[6];
  if (v79(v78, 1, v15) == 1)
  {
    sub_224A3311C(v78, &qword_27D6F32B0, &qword_224DB3EA0);
    if (qword_281351470 != -1)
    {
      swift_once();
    }

    v80 = sub_224DAB258();
    __swift_project_value_buffer(v80, qword_281364DD8);
    v81 = v166;
    v171(v166, v77, v23);
    v82 = sub_224DAB228();
    v83 = sub_224DAF2A8();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      aBlock[0] = v85;
      *v84 = 136446210;
      sub_224C74B54(&qword_281351A70, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v86 = sub_224DAFD28();
      v87 = v23;
      v88 = v86;
      v90 = v89;
      v170(v81, v87);
      v91 = sub_224A33F74(v88, v90, aBlock);

      *(v84 + 4) = v91;
      _os_log_impl(&dword_224A2F000, v82, v83, "Skipping file because we have no cached modification date: %{public}s", v84, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v85);
      MEMORY[0x22AA5EED0](v85, -1, -1);
      MEMORY[0x22AA5EED0](v84, -1, -1);
    }

    else
    {

      v170(v81, v23);
    }

    return 0;
  }

  v166 = v24;
  v92 = v16[4];
  v92(v22, v78, v15);
  if ((sub_224DA9798() & 1) == 0)
  {
    if (qword_281351470 != -1)
    {
      swift_once();
    }

    v94 = sub_224DAB258();
    __swift_project_value_buffer(v94, qword_281364DD8);
    v95 = v162;
    v171(v162, v173, v23);
    v96 = sub_224DAB228();
    v97 = sub_224DAF2A8();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v169 = v15;
      v99 = v22;
      v100 = v98;
      v101 = swift_slowAlloc();
      aBlock[0] = v101;
      *v100 = 136446210;
      sub_224C74B54(&qword_281351A70, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v102 = sub_224DAFD28();
      v103 = v23;
      v104 = v102;
      v106 = v105;
      v170(v95, v103);
      v107 = sub_224A33F74(v104, v106, aBlock);

      *(v100 + 4) = v107;
      _os_log_impl(&dword_224A2F000, v96, v97, "Skipping file because it was created after the protection list was built: %{public}s", v100, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v101);
      MEMORY[0x22AA5EED0](v101, -1, -1);
      MEMORY[0x22AA5EED0](v100, -1, -1);

      (v16[1])(v99, v169);
    }

    else
    {

      v170(v95, v23);
      (v16[1])(v22, v15);
    }

    return 0;
  }

  v168 = v22;
  v151 = v16;
  v169 = v15;
  v172 = v23;
  __swift_project_boxed_opaque_existential_1(v165 + 9, v165[12]);
  v93 = v163;
  sub_224DAA3D8();
  v108 = v169;
  v109 = v79(v93, 1, v169);
  if (v109 == 1)
  {
    (v151[1])(v168, v108);
    sub_224A3311C(v93, &qword_27D6F32B0, &qword_224DB3EA0);
    v110 = v165;
    v111 = v166;
    v112 = v173;
    if (v161)
    {
      goto LABEL_34;
    }

LABEL_32:
    __swift_project_boxed_opaque_existential_1(v110 + 9, v110[12]);
    sub_224DA9658();
    v120 = sub_224DAA378();
    v112 = v173;

    if (v120)
    {
      __swift_project_boxed_opaque_existential_1(v110 + 9, v110[12]);
      sub_224DAA388();
    }

    goto LABEL_34;
  }

  v114 = v160;
  v92(v160, v93, v108);
  v115 = v114;
  sub_224C74B54(&qword_281351A38, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v116 = v168;
  v117 = sub_224DAEDD8();
  v118 = v151;
  v110 = v165;
  if ((v117 & 1) == 0)
  {
    v132 = v173;
    if (qword_281351470 != -1)
    {
      swift_once();
    }

    v133 = sub_224DAB258();
    __swift_project_value_buffer(v133, qword_281364DD8);
    v134 = v152;
    v135 = v132;
    v136 = v172;
    v171(v152, v135, v172);
    v137 = sub_224DAB228();
    v138 = sub_224DAF2A8();
    if (os_log_type_enabled(v137, v138))
    {
      v139 = v108;
      v140 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      aBlock[0] = v141;
      *v140 = 136446210;
      sub_224C74B54(&qword_281351A70, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v142 = sub_224DAFD28();
      v143 = v136;
      v144 = v142;
      v146 = v145;
      v170(v134, v143);
      v147 = sub_224A33F74(v144, v146, aBlock);

      *(v140 + 4) = v147;
      _os_log_impl(&dword_224A2F000, v137, v138, "Skipping file because it has been modified: %{public}s", v140, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v141);
      MEMORY[0x22AA5EED0](v141, -1, -1);
      MEMORY[0x22AA5EED0](v140, -1, -1);

      v148 = v118[1];
      v148(v160, v139);
      v149 = v168;
      v150 = v139;
    }

    else
    {

      v170(v134, v136);
      v148 = v118[1];
      v148(v115, v108);
      v149 = v168;
      v150 = v108;
    }

    v148(v149, v150);
    return 0;
  }

  v119 = v151[1];
  v119(v115, v108);
  v119(v116, v108);
  v111 = v166;
  v112 = v173;
  if ((v161 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_34:
  v121 = v110[15];
  if (v121)
  {
    v122 = v110[16];
    v123 = v153;
    v124 = v112;
    v125 = v172;
    v171(v153, v124, v172);
    v126 = (*(v111 + 80) + 32) & ~*(v111 + 80);
    v127 = swift_allocObject();
    *(v127 + 16) = v121;
    *(v127 + 24) = v122;
    v111[4](v127 + v126, v123, v125);
    aBlock[4] = sub_224C74AEC;
    aBlock[5] = v127;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224A39F40;
    aBlock[3] = &block_descriptor_33;
    v128 = _Block_copy(aBlock);
    sub_224A364AC(v121, v122);

    v129 = v154;
    sub_224DAB7E8();
    v174 = MEMORY[0x277D84F90];
    sub_224C74B54(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A9B6A0(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
    v130 = v156;
    v131 = v159;
    sub_224DAF788();
    MEMORY[0x22AA5D760](0, v129, v130, v128);
    _Block_release(v128);
    sub_224A3D418(v121, v122);
    (*(v158 + 8))(v130, v131);
    (*(v155 + 8))(v129, v157);
  }

  return 1;
}

void sub_224C735BC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6)
{
  if (*(a5 + 16))
  {
    v7 = a4 >> 1;
    if (a4 >> 1 != a3)
    {
      if ((a4 >> 1) <= a3)
      {
        __break(1u);
      }

      else
      {
        v11 = (a2 + 16 * a3);
        v12 = *v11;
        v13 = v11[1];

        v14 = sub_224A3A40C(v12, v13);
        v16 = v15;

        if ((v16 & 1) == 0)
        {
          return;
        }

        if (!__OFSUB__(v7, a3))
        {
          v17 = *(a5 + 56) + 16 * v14;
          v18 = *(v17 + 8);
          v19 = *v17;

          v20 = swift_unknownObjectRetain();
          sub_224C735BC(v20, a2, a3 + 1, a4, v19, v18);
          swift_unknownObjectRelease();

          return;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_224C736D0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 1 == a3)
  {
    return result;
  }

  if ((a4 >> 1) <= a3)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v6 = v4;
  v7 = result;
  v10 = (a2 + 16 * a3);
  v12 = *v10;
  v11 = v10[1];
  v13 = *v4;
  v14 = *(v13 + 16);

  swift_unknownObjectRetain();
  if (v14 && (v15 = sub_224A3A40C(v12, v11), (v16 & 1) != 0))
  {
    v17 = *(v13 + 56) + 16 * v15;
    v20 = *v17;
    v21 = *(v17 + 8);
  }

  else
  {
    v20 = sub_224DA1FDC(MEMORY[0x277D84F90]);
    v21 = 0;
  }

  sub_224C736D0(v7, a2, a3 + 1, a4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v6;
  sub_224B2272C(v20, v21, v12, v11, isUniquelyReferenced_nonNull_native);
  swift_unknownObjectRelease();

  *v6 = v19;
  return result;
}

unint64_t *sub_224C73814(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = sub_224C7419C(v9, a2, a3, a4, a5 & 1);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

uint64_t sub_224C738B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v44 = a4;
  v45 = a5;
  v43 = a3;
  v42 = sub_224DAF3C8();
  v14 = *(v42 - 8);
  MEMORY[0x28223BE20](v42, v15);
  v41 = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_224DAF318();
  MEMORY[0x28223BE20](v17, v18);
  v19 = sub_224DAB848();
  MEMORY[0x28223BE20](v19 - 8, v20);
  v22 = v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a7;
  v52 = a9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v50);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1, a1, a7);
  v48 = a8;
  v49 = a10;
  v24 = __swift_allocate_boxed_opaque_existential_1(&v47);
  (*(*(a8 - 8) + 32))(v24, a2, a8);
  type metadata accessor for FileReaper();
  v25 = swift_allocObject();
  v26 = __swift_mutable_project_boxed_opaque_existential_1(v50, v51);
  MEMORY[0x28223BE20](v26, v26);
  v28 = (v38 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  v30 = *v28;
  *(v25 + 56) = sub_224DAC3C8();
  *(v25 + 64) = &off_28382F820;
  *(v25 + 32) = v30;
  v31 = sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  v39 = "tedURLs";
  v40 = v31;
  sub_224DAB828();
  v46 = MEMORY[0x277D84F90];
  v38[3] = sub_224C74B54(&qword_281350A88, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v38[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  v38[4] = sub_224A9B6A0(&qword_281350B90, &qword_27D6F3470, qword_224DB38B0);
  sub_224DAF788();
  v32 = *MEMORY[0x277D85260];
  v33 = *(v14 + 104);
  v38[1] = v14 + 104;
  v34 = v41;
  v35 = v42;
  v33(v41, v32, v42);
  v38[0] = v22;
  *(v25 + 16) = sub_224DAF418();
  v39 = "Core.FileReaper.internal";
  sub_224DAB7E8();
  v46 = MEMORY[0x277D84F90];
  sub_224DAF788();
  v33(v34, v32, v35);
  *(v25 + 24) = sub_224DAF418();
  *(v25 + 120) = 0u;
  *(v25 + 136) = 0u;
  sub_224A36F98(&v47, v25 + 72);
  v36 = v44;
  *(v25 + 112) = v43;
  *(v25 + 120) = v36;
  *(v25 + 128) = v45;
  __swift_destroy_boxed_opaque_existential_1(v50);
  return v25;
}

void *sub_224C73D7C(uint64_t a1)
{
  v2 = sub_224DA9688();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v56 = &v48 - v9;
  v10 = sub_224DA1FDC(MEMORY[0x277D84F90]);
  v11 = 0;
  v12 = a1 + 56;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a1 + 56);
  v16 = (v13 + 63) >> 6;
  v54 = v3 + 32;
  v55 = v3 + 16;
  v57 = v3;
  v52 = (v3 + 8);
  v53 = v7;
  v49 = v2;
  v50 = a1;
  v51 = v16;
  while (v15)
  {
LABEL_11:
    v19 = v56;
    v18 = v57;
    (*(v57 + 16))(v56, *(a1 + 48) + *(v57 + 72) * (__clz(__rbit64(v15)) | (v11 << 6)), v2);
    v20 = (*(v18 + 32))(v7, v19, v2);
    v62 = MEMORY[0x22AA5E4C0](v20);
    v21 = sub_224DA95B8();
    v22 = v21;
    v23 = v21[2];
    if (!v23)
    {

      goto LABEL_5;
    }

    v24 = v21[4];
    v25 = v21[5];
    v26 = v10[2];

    v60 = v24;
    v61 = v25;
    if (v26 && (v27 = sub_224A3A40C(v24, v25), (v28 & 1) != 0))
    {
      v29 = v10[7] + 16 * v27;
      v30 = *v29;
      LOBYTE(v29) = *(v29 + 8);
      v64 = v30;
      v65 = v29;
    }

    else
    {
      v64 = MEMORY[0x277D84F98];
      v65 = 0;
    }

    sub_224C736D0(v22, v22 + 32, 1, (2 * v23) | 1);
    v58 = v64;
    v59 = v65;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v63 = v10;
    v33 = sub_224A3A40C(v60, v61);
    v34 = v10[2];
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    v16 = v51;
    if (__OFADD__(v34, v35))
    {
      goto LABEL_29;
    }

    v37 = v32;
    if (v10[3] >= v36)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_224B28BC4();
      }

      v38 = v61;
      v10 = v63;
      if ((v37 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      sub_224B168C8(v36, isUniquelyReferenced_nonNull_native);
      v38 = v61;
      v39 = sub_224A3A40C(v60, v61);
      if ((v37 & 1) != (v40 & 1))
      {
        goto LABEL_31;
      }

      v33 = v39;
      v10 = v63;
      if ((v37 & 1) == 0)
      {
LABEL_20:
        v10[(v33 >> 6) + 8] |= 1 << v33;
        v41 = (v10[6] + 16 * v33);
        *v41 = v60;
        v41[1] = v38;
        v42 = v10[7] + 16 * v33;
        *v42 = v58;
        *(v42 + 8) = v59;
        v43 = v10[2];
        v44 = __OFADD__(v43, 1);
        v45 = v43 + 1;
        if (v44)
        {
          goto LABEL_30;
        }

        v10[2] = v45;
        swift_bridgeObjectRelease_n();
        goto LABEL_26;
      }
    }

    v46 = v10[7] + 16 * v33;
    *v46 = v58;
    *(v46 + 8) = v59;
    swift_bridgeObjectRelease_n();

LABEL_26:
    v2 = v49;
    a1 = v50;
LABEL_5:
    v15 &= v15 - 1;
    objc_autoreleasePoolPop(v62);
    v7 = v53;
    (*v52)(v53, v2);
  }

  while (1)
  {
    v17 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v17 >= v16)
    {

      return v10;
    }

    v15 = *(v12 + 8 * v17);
    ++v11;
    if (v15)
    {
      v11 = v17;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_224DAFDD8();
  __break(1u);
  return result;
}

uint64_t sub_224C7419C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v39 = a2;
  v42 = a5;
  v40 = a1;
  v7 = sub_224DA9688();
  result = MEMORY[0x28223BE20](v7, v8);
  v12 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = 0;
  v13 = 0;
  v14 = a3 + 56;
  v15 = 1 << *(a3 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a3 + 56);
  v18 = (v15 + 63) >> 6;
  v49 = v11 + 16;
  v50 = v11;
  v48 = (v11 + 8);
  v43 = result;
  v44 = a3;
  v46 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  while (v17)
  {
    v19 = __clz(__rbit64(v17));
    v51 = (v17 - 1) & v17;
LABEL_13:
    v22 = v19 | (v13 << 6);
    v23 = *(a3 + 48);
    v24 = *(v50 + 72);
    v47 = v22;
    (*(v50 + 16))(v12, v23 + v24 * v22, v7);
    v25 = sub_224DA95B8();
    v26 = v25;
    if (*(a4 + 16))
    {
      v27 = v25[2];
      if (v27)
      {
        v29 = v25[4];
        v28 = v25[5];

        v30 = sub_224A3A40C(v29, v28);
        v45 = v31;

        if ((v45 & 1) == 0)
        {

          v7 = v43;
          a3 = v44;
          v12 = v46;
          goto LABEL_20;
        }

        v32 = *(a4 + 56) + 16 * v30;
        v33 = *v32;
        v34 = *(v32 + 8);

        sub_224C735BC(v26, v26 + 32, 1, (2 * v27) | 1, v33, v34);
        v36 = v35;

        v12 = v46;
        v7 = v43;
        result = (*v48)(v46, v43);
        a3 = v44;
        v17 = v51;
        if ((v36 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      else
      {

        v12 = v46;
LABEL_5:
        result = (*v48)(v12, v7);
        v17 = v51;
      }
    }

    else
    {

      if ((v42 & 1) == 0)
      {
        goto LABEL_5;
      }

LABEL_20:
      result = (*v48)(v12, v7);
      v17 = v51;
LABEL_21:
      *(v40 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47;
      if (__OFADD__(v41++, 1))
      {
        __break(1u);
LABEL_24:

        return sub_224B04F30(v40, v39, v41, a3);
      }
    }
  }

  v20 = v13;
  while (1)
  {
    v13 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v13 >= v18)
    {
      goto LABEL_24;
    }

    v21 = *(v14 + 8 * v13);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v51 = (v21 - 1) & v21;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224C744E4(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v45 = a3;
  v55 = *MEMORY[0x277D85DE8];
  v7 = sub_224DA9688();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v54 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v10) = *(a1 + 32);
  v11 = v10 & 0x3F;
  v12 = ((1 << v10) + 63) >> 6;
  v13 = 8 * v12;

  if (v11 > 0xD)
  {
    goto LABEL_28;
  }

  while (2)
  {
    v41 = v12;
    v42 = v4;
    v40 = &v40;
    MEMORY[0x28223BE20](v14, v15);
    v43 = &v40 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v43, v13);
    v44 = 0;
    v16 = 0;
    v12 = a1 + 56;
    v17 = 1 << *(a1 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(a1 + 56);
    v20 = (v17 + 63) >> 6;
    v51 = (v8 + 8);
    v52 = v8 + 16;
    v4 = v8;
    v46 = v8;
    v47 = a1;
    v49 = v7;
    while (v19)
    {
      v21 = __clz(__rbit64(v19));
      v53 = (v19 - 1) & v19;
LABEL_14:
      v24 = v21 | (v16 << 6);
      v25 = *(a1 + 48);
      v26 = *(v4 + 72);
      v50 = v24;
      v13 = v54;
      (*(v4 + 16))(v54, v25 + v26 * v24, v7);
      v27 = sub_224DA95B8();
      v8 = v27;
      if (*(a2 + 16))
      {
        v28 = v27[2];
        if (v28)
        {
          v30 = v27[4];
          v29 = v27[5];

          v13 = sub_224A3A40C(v30, v29);
          v48 = v31;

          if ((v48 & 1) == 0)
          {

            v4 = v46;
            a1 = v47;
            v7 = v49;
            goto LABEL_21;
          }

          v32 = *(a2 + 56) + 16 * v13;
          v33 = *v32;
          v34 = *(v32 + 8);

          sub_224C735BC(v8, v8 + 32, 1, (2 * v28) | 1, v33, v34);
          v13 = v35;

          v7 = v49;
          (*v51)(v54, v49);
          v4 = v46;
          a1 = v47;
          v19 = v53;
          if ((v13 & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        else
        {

          v7 = v49;
LABEL_6:
          (*v51)(v54, v7);
          v19 = v53;
        }
      }

      else
      {

        if ((v45 & 1) == 0)
        {
          goto LABEL_6;
        }

LABEL_21:
        (*v51)(v54, v7);
        v19 = v53;
LABEL_22:
        *&v43[(v50 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v50;
        if (__OFADD__(v44++, 1))
        {
          __break(1u);
LABEL_25:
          v37 = sub_224B04F30(v43, v41, v44, a1);

          return v37;
        }
      }
    }

    v22 = v16;
    while (1)
    {
      v16 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v16 >= v20)
      {
        goto LABEL_25;
      }

      v23 = *(v12 + 8 * v16);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v53 = (v23 - 1) & v23;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_28:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v39 = swift_slowAlloc();

  v37 = sub_224C73814(v39, v12, a1, a2, v45 & 1);

  MEMORY[0x22AA5EED0](v39, -1, -1);

  return v37;
}

uint64_t sub_224C7495C(uint64_t a1, uint64_t a2)
{
  v5 = sub_224DAB8C8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = (&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2 + 16);
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x277D85200], v5);
  v11 = v10;
  LOBYTE(v10) = sub_224DAB8F8();
  result = (*(v6 + 8))(v9, v5);
  if (v10)
  {
    if (*(a2 + 16) <= *(a1 + 16) >> 3)
    {
      v20 = a1;

      sub_224AFF0B4(a2, v14);
      v13 = v20;
    }

    else
    {

      v13 = sub_224B00004(a2, a1);
    }

    v16 = sub_224C73D7C(v15);
    v18 = sub_224C744E4(v13, v16, v17 & 1);

    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_224C74B54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_224C74C44()
{
  result = qword_281350900;
  if (!qword_281350900)
  {
    sub_224A3B79C(255, &qword_281350908, 0x277CFA398);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281350900);
  }

  return result;
}

uint64_t sub_224C74CAC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_224C74CF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_224C74D44()
{
  v1 = *(v0 + 16);
  if (v1 && ([v1 cancel], (v2 = *(v0 + 16)) != 0))
  {
    [v2 invalidate];
    v3 = *(v0 + 16);
  }

  else
  {
    v3 = 0;
  }

  sub_224A3D418(*(v0 + 40), *(v0 + 48));
  return v0;
}

uint64_t sub_224C74DAC()
{
  sub_224C74D44();

  return swift_deallocClassInstance();
}

void *sub_224C74E04()
{
  v13[0] = sub_224DAF3C8();
  v1 = *(v13[0] - 8);
  MEMORY[0x28223BE20](v13[0], v2);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_224DAF318();
  MEMORY[0x28223BE20](v5, v6);
  v7 = sub_224DAB848();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v0[2] = 0;
  type metadata accessor for UnfairLock();
  v9 = swift_allocObject();
  v10 = swift_slowAlloc();
  *v10 = 0;
  *(v9 + 16) = v10;
  v0[3] = v9;
  sub_224AC319C();
  sub_224DAB7E8();
  v13[1] = MEMORY[0x277D84F90];
  sub_224AC31E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  sub_224AC3240();
  sub_224DAF788();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v13[0]);
  v11 = sub_224DAF418();
  v0[5] = 0;
  v0[6] = 0;
  v0[4] = v11;
  return v0;
}

uint64_t sub_224C75048(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  v4 = *(v2 + 48);
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return sub_224A3D418(v3, v4);
}

id sub_224C7505C()
{
  if (qword_2813515D8 != -1)
  {
    swift_once();
  }

  v0 = sub_224DAB258();
  __swift_project_value_buffer(v0, qword_281364F58);
  v1 = sub_224DAB228();
  v2 = sub_224DAF2A8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_224A2F000, v1, v2, "Start", v3, 2u);
    MEMORY[0x22AA5EED0](v3, -1, -1);
  }

  v4 = objc_opt_self();
  v5 = swift_allocObject();
  swift_weakInit();
  v8[4] = sub_224C759CC;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_224CB9B8C;
  v8[3] = &block_descriptor_8;
  v6 = _Block_copy(v8);

  [v4 setFocusConfigurationStreamEventHandler_];
  _Block_release(v6);
  return [v4 subscribeToFocusConfigurationStreamWithIdentifier_];
}

uint64_t sub_224C75214(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v27[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v27[-v9];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = sub_224DAEEB8();
    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      sub_224DA9FF8();
      if (qword_2813515D8 != -1)
      {
        swift_once();
      }

      v15 = sub_224DAB258();
      __swift_project_value_buffer(v15, qword_281364F58);
      (*(v3 + 16))(v7, v10, v2);
      v16 = sub_224DAB228();
      v17 = sub_224DAF2A8();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v29 = v18;
        v30 = swift_slowAlloc();
        v31 = v30;
        *v18 = 136446210;
        sub_224A33088(&qword_281351940, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FC8]);
        v28 = v17;
        v19 = sub_224DAFD28();
        v21 = v20;
        v22 = *(v3 + 8);
        v22(v7, v2);
        v23 = sub_224A33F74(v19, v21, &v31);

        v24 = v29;
        *(v29 + 1) = v23;
        v25 = v24;
        _os_log_impl(&dword_224A2F000, v16, v28, "[focus:%{public}s] Focus Configuration changed", v24, 0xCu);
        v26 = v30;
        __swift_destroy_boxed_opaque_existential_1(v30);
        MEMORY[0x22AA5EED0](v26, -1, -1);
        MEMORY[0x22AA5EED0](v25, -1, -1);
      }

      else
      {

        v22 = *(v3 + 8);
        v22(v7, v2);
      }

      sub_224C75554(v10);

      return (v22)(v10, v2);
    }

    else
    {
    }
  }

  return result;
}

void sub_224C75554(uint64_t a1)
{
  v2 = v1;
  v3 = sub_224DAB7B8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAB848();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  v13 = sub_224DAC668();
  if (*(v13 + 16))
  {
    v18 = v2[8];
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = v2;
    aBlock[4] = sub_224C759C4;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224A39F40;
    aBlock[3] = &block_descriptor_35;
    v15 = _Block_copy(aBlock);

    sub_224DAB7E8();
    v19 = MEMORY[0x277D84F90];
    sub_224A3AF98();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    v17 = v8;
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
    sub_224DAF788();
    MEMORY[0x22AA5D760](0, v12, v7, v15);
    _Block_release(v15);
    (*(v4 + 8))(v7, v3);
    (*(v9 + 8))(v12, v17);
  }

  else
  {
  }
}

uint64_t sub_224C75864(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v7 = MEMORY[0x277D84F90];
    sub_224DAF9E8();
    v4 = a1 + 32;
    do
    {
      sub_224A3317C(v4, v6);
      __swift_project_boxed_opaque_existential_1(v6, v6[3]);
      sub_224DAE338();
      __swift_destroy_boxed_opaque_existential_1(v6);
      sub_224DAF9B8();
      sub_224DAF9F8();
      sub_224DAFA08();
      sub_224DAF9C8();
      v4 += 40;
      --v1;
    }

    while (v1);
    v2 = v7;
  }

  v6[0] = v2;
  sub_224DAB348();
}

uint64_t sub_224C75958()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_224C759F0()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 56);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5530, &unk_224DBB320);
    sub_224A33088(&qword_281350F10, &qword_27D6F5530, &unk_224DBB320, MEMORY[0x277CBCE20]);
    v1 = sub_224DAB3A8();
    *(v0 + 56) = v1;
  }

  return v1;
}

uint64_t sub_224C75AB4(__n128 a1)
{
  if (*(v1 + 64))
  {
    v2 = *(v1 + 64);
  }

  else
  {
    v2 = sub_224DAC0D8();
    *(v1 + 64) = v2;
  }

  return v2;
}

uint64_t sub_224C75B1C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_224DAC2B8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_224DB2780;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5240, &qword_224DBB330);
  MEMORY[0x22AA5BB00](v8);
  v9 = sub_224DAC2A8();
  result = (*(v3 + 8))(v6, v2);
  *(v7 + 32) = v9;
  *a1 = v7;
  return result;
}

double sub_224C75C44(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_224DAB348();
  }

  return result;
}

double sub_224C75CC4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    BSDispatchQueueAssert();
    sub_224C89C84();
    sub_224C87C9C();
  }

  return result;
}

double sub_224C75D30(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_224C8AD30();
  }

  return result;
}

double sub_224C75D88(uint64_t a1, uint64_t a2)
{
  v3 = sub_224DAE918();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v30 - v9;
  v11 = sub_224DAB258();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v12 + 16))(v15, Strong + OBJC_IVAR____TtC10ChronoCore18LiveControlService_logger, v11);

    (*(v4 + 16))(v10, a1, v3);
    v17 = v4;
    v18 = sub_224DAB228();
    v19 = sub_224DAF278();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v34 = v3;
      v21 = v20;
      v31 = swift_slowAlloc();
      v36[0] = v31;
      *v21 = 136446210;
      sub_224C8DD50(&qword_281350C28, MEMORY[0x277CE3D70], MEMORY[0x277CE3D80]);
      v32 = v11;
      v22 = v17;
      v23 = sub_224DAFD28();
      v33 = a1;
      v25 = v24;
      (*(v22 + 8))(v10, v34);
      v26 = sub_224A33F74(v23, v25, v36);
      a1 = v33;

      *(v21 + 4) = v26;
      _os_log_impl(&dword_224A2F000, v18, v19, "Protection Type changed to %{public}s", v21, 0xCu);
      v27 = v31;
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x22AA5EED0](v27, -1, -1);
      v28 = v21;
      v3 = v34;
      MEMORY[0x22AA5EED0](v28, -1, -1);

      (*(v12 + 8))(v15, v32);
      v4 = v22;
    }

    else
    {

      (*(v17 + 8))(v10, v3);
      (*(v12 + 8))(v15, v11);
      v4 = v17;
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    (*(v4 + 16))(v35, a1, v3);
    sub_224DAC0A8();
  }

  return result;
}

double sub_224C76184(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4620, &qword_224DB34D0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v13 - v4;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_224DAC5D8();
    if (v9)
    {
      v10 = v9;
      v11 = sub_224DAF128();
      (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
      v12 = swift_allocObject();
      v12[2] = 0;
      v12[3] = 0;
      v12[4] = v8;
      v12[5] = v10;
      sub_224D00D34(0, 0, v5, &unk_224DBD058, v12);
    }
  }

  return result;
}

uint64_t sub_224C762C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_224ACED1C;

  return sub_224C7AB6C(a5);
}

double sub_224C76390(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    sub_224B3E234(a1);
    swift_endAccess();
  }

  return result;
}

double sub_224C7642C(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    MEMORY[0x28223BE20](Strong, v3);
    sub_224DAC128();
  }

  return result;
}

void sub_224C764D8(uint64_t a3@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_224C852BC(a3);
  }

  else
  {
    v4 = sub_224DAE4F8();
    (*(*(v4 - 8) + 56))(a3, 1, 1, v4);
  }
}

void sub_224C7658C()
{
  v1 = OBJC_IVAR____TtC10ChronoCore18LiveControlService__queue;
  v2 = *&v0[OBJC_IVAR____TtC10ChronoCore18LiveControlService__queue];
  v3 = swift_allocObject();
  *(v3 + 16) = sub_224C8FF50;
  *(v3 + 24) = v0;
  v8[4] = sub_224BC4B74;
  v8[5] = v3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_224A9B6F8;
  v8[3] = &block_descriptor_211;
  v4 = _Block_copy(v8);
  v5 = v2;

  dispatch_sync(v5, v4);

  _Block_release(v4);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v0 + 9);
    __swift_destroy_boxed_opaque_existential_1(v0 + 14);

    __swift_destroy_boxed_opaque_existential_1(v0 + 20);
    __swift_destroy_boxed_opaque_existential_1(v0 + 25);
    __swift_destroy_boxed_opaque_existential_1(v0 + 30);
    __swift_destroy_boxed_opaque_existential_1(v0 + 35);

    __swift_destroy_boxed_opaque_existential_1(v0 + 41);

    __swift_destroy_boxed_opaque_existential_1(v0 + 48);
    v6 = OBJC_IVAR____TtC10ChronoCore18LiveControlService_logger;
    v7 = sub_224DAB258();
    (*(*(v7 - 8) + 8))(&v0[v6], v7);

    __swift_destroy_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC10ChronoCore18LiveControlService_reloadStateService]);
  }
}

uint64_t sub_224C767FC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC10ChronoCore18LiveControlService__queue_persistentSubscriptions;
  swift_beginAccess();
  v3 = *(a1 + v2);
  if (v3 >> 62)
  {
LABEL_15:
    v4 = sub_224DAF838();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x22AA5DCC0](v5, v3);
        v6 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_12:
          __break(1u);
        }
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_15;
        }

        v6 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_12;
        }
      }

      sub_224DAB328();

      ++v5;
    }

    while (v6 != v4);
  }
}

uint64_t sub_224C76908()
{
  sub_224C7658C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LiveControlService(uint64_t a1)
{
  result = qword_281359B58;
  if (!qword_281359B58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224C769B4(uint64_t a1)
{
  result = sub_224DAB258();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_224C76AB4(char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3348, &unk_224DB3560);
  v63 = *(v2 - 8);
  v64 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v62 = v50 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F37C8, &unk_224DB4020);
  v60 = *(v5 - 8);
  v61 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v59 = v50 - v7;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C50, &unk_224DBA3C0);
  v54 = *(v68 - 8);
  MEMORY[0x28223BE20](v68, v8);
  v53 = v50 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C58, &qword_224DC1AF0);
  v56 = *(v10 - 8);
  v57 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v55 = v50 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = v50 - v15;
  v52 = sub_224DAF3B8();
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52, v17);
  v19 = v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5C00, &qword_224DBD030);
  v65 = *(v72 - 8);
  MEMORY[0x28223BE20](v72, v20);
  v22 = v50 - v21;
  v23 = sub_224DAB258();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v25);
  v27 = v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v27, &a1[OBJC_IVAR____TtC10ChronoCore18LiveControlService_logger], v23);
  v28 = sub_224DAB228();
  v29 = sub_224DAF2A8();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_224A2F000, v28, v29, "Start", v30, 2u);
    MEMORY[0x22AA5EED0](v30, -1, -1);
  }

  (*(v24 + 8))(v27, v23);
  __swift_project_boxed_opaque_existential_1(a1 + 20, *(a1 + 23));
  v73 = sub_224DAD8D8();
  sub_224DAF378();
  v58 = OBJC_IVAR____TtC10ChronoCore18LiveControlService__queue;
  v74 = *&a1[OBJC_IVAR____TtC10ChronoCore18LiveControlService__queue];
  v31 = v74;
  v70 = sub_224DAF358();
  v32 = *(v70 - 8);
  v71 = *(v32 + 56);
  v67 = v32 + 56;
  v71(v16, 1, 1, v70);
  v33 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5C08, &qword_224DBD038);
  v34 = sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  v69 = MEMORY[0x277CBCD90];
  sub_224A33088(&qword_2813510A8, &qword_27D6F5C08, &qword_224DBD038, MEMORY[0x277CBCD90]);
  v66 = sub_224B67CF4();
  v35 = v34;
  sub_224DAB468();
  sub_224A3311C(v16, &qword_27D6F5090, &qword_224DB5C30);

  (*(v51 + 8))(v19, v52);

  swift_allocObject();
  swift_weakInit();
  sub_224A33088(&unk_281351340, &qword_27D6F5C00, &qword_224DBD030, MEMORY[0x277CBCCF8]);
  v36 = v72;
  sub_224DAB488();

  (*(v65 + 8))(v22, v36);
  v37 = OBJC_IVAR____TtC10ChronoCore18LiveControlService__queue_persistentSubscriptions;
  swift_beginAccess();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F54F0, &qword_224DBA400);
  v72 = sub_224A33088(&unk_281350BC0, &unk_27D6F54F0, &qword_224DBA400, MEMORY[0x277D83990]);
  sub_224DAB318();
  swift_endAccess();

  __swift_project_boxed_opaque_existential_1(a1 + 14, *(a1 + 17));
  v73 = sub_224DAC688();
  __swift_project_boxed_opaque_existential_1(a1 + 14, *(a1 + 17));
  v74 = sub_224DAC6A8();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5500, &unk_224DB4040);
  v52 = sub_224A33088(&qword_281351048, &unk_27D6F5500, &unk_224DB4040, v69);
  v38 = v53;
  sub_224DAB428();

  v50[1] = v35;
  v39 = sub_224DAF3D8();
  v73 = v39;
  v71(v16, 1, 1, v70);
  sub_224A33088(&qword_281351310, &qword_27D6F4C50, &unk_224DBA3C0, MEMORY[0x277CBCD48]);
  v40 = v55;
  v41 = v68;
  sub_224DAB448();
  sub_224A3311C(v16, &qword_27D6F5090, &qword_224DB5C30);

  (*(v54 + 8))(v38, v41);
  swift_allocObject();
  swift_weakInit();
  v68 = MEMORY[0x277CBCD60];
  sub_224A33088(&qword_2813511C8, &qword_27D6F4C58, &qword_224DC1AF0, MEMORY[0x277CBCD60]);
  v42 = v57;
  sub_224DAB488();

  (*(v56 + 8))(v40, v42);
  v50[2] = v37;
  swift_beginAccess();
  sub_224DAB318();
  swift_endAccess();

  __swift_project_boxed_opaque_existential_1(a1 + 14, *(a1 + 17));
  v73 = sub_224DAC698();
  v43 = sub_224DAF3D8();
  v74 = v43;
  v71(v16, 1, 1, v70);
  v44 = v59;
  sub_224DAB448();
  sub_224A3311C(v16, &qword_27D6F5090, &qword_224DB5C30);

  swift_allocObject();
  swift_weakInit();
  sub_224A33088(&qword_281351230, &qword_27D6F37C8, &unk_224DB4020, v68);
  v45 = v61;
  sub_224DAB488();

  (*(v60 + 8))(v44, v45);
  swift_beginAccess();
  sub_224DAB318();
  swift_endAccess();

  v73 = sub_224DAC0D8();
  v46 = sub_224DAF3D8();
  v74 = v46;
  v71(v16, 1, 1, v70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3350, &unk_224DBD040);
  sub_224A33088(&unk_2813510E8, &qword_27D6F3350, &unk_224DBD040, v69);
  v47 = v62;
  sub_224DAB448();
  sub_224A3311C(v16, &qword_27D6F5090, &qword_224DB5C30);

  swift_allocObject();
  swift_weakInit();
  sub_224A33088(&qword_281351288, &qword_27D6F3348, &unk_224DB3560, v68);
  v48 = v64;
  sub_224DAB488();

  (*(v63 + 8))(v47, v48);
  swift_beginAccess();
  sub_224DAB318();
  swift_endAccess();

  BSDispatchQueueAssert();
  sub_224C89C84();
  return sub_224C87C9C();
}

double sub_224C777EC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    a3(a1);
  }

  return result;
}

void sub_224C77860(uint64_t *a1, uint64_t a2)
{
  v3 = sub_224DAC2B8();
  v32 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v7 = *(v46 - 8);
  MEMORY[0x28223BE20](v46, v8);
  v45 = &v32 - v9;
  v44 = sub_224DA9878();
  v10 = *(v44 - 8);
  MEMORY[0x28223BE20](v44, v11);
  v43 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_224DACB98();
  v13 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v14);
  v50 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v17 = v33;
    v42 = *(v16 + 16);
    if (v42)
    {
      v18 = 0;
      v40 = (Strong + OBJC_IVAR____TtC10ChronoCore18LiveControlService_reloadStateService);
      v39 = v16 + 32;
      v38 = (v13 + 104);
      v37 = *MEMORY[0x277CF9B98];
      v36 = (v7 + 8);
      v35 = (v10 + 8);
      v51 = (v32 + 8);
      v52 = v32 + 16;
      v34 = (v13 + 8);
      v41 = v16;
      while (v18 < *(v16 + 16))
      {
        v48 = v18;
        sub_224A3317C(v39 + 40 * v18, v53);
        __swift_project_boxed_opaque_existential_1(v53, v53[3]);
        v19 = sub_224DAE338();
        __swift_destroy_boxed_opaque_existential_1(v53);
        (*v38)(v50, v37, v17);
        __swift_project_boxed_opaque_existential_1(v40, v40[3]);
        v20 = v43;
        sub_224DA9868();
        v21 = v45;
        sub_224DAF528();
        sub_224DAD1B8();
        (*v36)(v21, v46);
        (*v35)(v20, v44);
        v22 = sub_224DAC108();
        v23 = *(v22 + 16);
        if (v23)
        {
          sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
          v24 = *(v32 + 80);
          v47 = v22;
          v25 = v22 + ((v24 + 32) & ~v24);
          v26 = *(v32 + 72);
          v27 = *(v32 + 16);
          do
          {
            v28 = v3;
            v27(v6, v25, v3);
            v29 = sub_224DAC2A8();
            v30 = [v29 extensionIdentity];

            LOBYTE(v29) = sub_224DAF6A8();
            if (v29)
            {
              v31 = sub_224DAC2A8();
              sub_224C809D8(v31, v50);
            }

            v3 = v28;
            (*v51)(v6, v28);
            v25 += v26;
            --v23;
          }

          while (v23);

          v17 = v33;
        }

        else
        {
        }

        v18 = v48 + 1;
        (*v34)(v50, v17);
        v16 = v41;
        if (v18 == v42)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_13:
    }
  }
}

void sub_224C77DE0(uint64_t *a1, uint64_t a2)
{
  v3 = sub_224DAC2B8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return;
  }

  v42 = *(v8 + 16);
  if (!v42)
  {
LABEL_32:

    return;
  }

  v9 = 0;
  v43 = v8 + 32;
  v56 = "Reloading all content: ";
  v10 = (v4 + 8);
  v48 = v4;
  v49 = v3;
  v46 = v4 + 16;
  v47 = v7;
  v41 = v8;
  v45 = (v4 + 8);
  while (1)
  {
    if (v9 >= *(v8 + 16))
    {
      goto LABEL_36;
    }

    v44 = v9;
    sub_224A3317C(v43 + 40 * v9, v59);
    v12 = sub_224DAC108();
    v55 = *(v12 + 16);
    if (v55)
    {
      break;
    }

LABEL_5:
    v11 = v44 + 1;
    __swift_destroy_boxed_opaque_existential_1(v59);
    v9 = v11;
    if (v11 == v42)
    {
      goto LABEL_32;
    }
  }

  v13 = v12;
  v54 = sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
  v14 = v13;
  v15 = 0;
  v16 = *(v4 + 80);
  v52 = v13;
  v53 = v13 + ((v16 + 32) & ~v16);
LABEL_11:
  if (v15 >= *(v14 + 16))
  {
    goto LABEL_35;
  }

  (*(v4 + 16))(v7, v53 + *(v4 + 72) * v15, v3);
  v17 = sub_224DAC2A8();
  v18 = [v17 extensionIdentity];

  __swift_project_boxed_opaque_existential_1(v59, v59[3]);
  v19 = sub_224DAE338();
  LOBYTE(v17) = sub_224DAF6A8();

  if ((v17 & 1) == 0)
  {
    goto LABEL_10;
  }

  v20 = sub_224DAC168();
  if (!v20)
  {
    goto LABEL_10;
  }

  v21 = v20;
  if ((v20 & 0xC000000000000001) != 0)
  {
    v22 = sub_224DAFA68();
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v21 = v22 | 0x8000000000000000;
  }

  else
  {
    v26 = -1 << *(v20 + 32);
    v23 = v20 + 64;
    v24 = ~v26;
    v27 = -v26;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    else
    {
      v28 = -1;
    }

    v25 = v28 & *(v20 + 64);
  }

  v29 = 0;
  v51 = v24;
  v30 = (v24 + 64) >> 6;
  if ((v21 & 0x8000000000000000) != 0)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v31 = v29;
    v32 = v25;
    v33 = v29;
    if (!v25)
    {
      break;
    }

LABEL_25:
    v34 = (v32 - 1) & v32;
    v35 = *(*(v21 + 48) + ((v33 << 9) | (8 * __clz(__rbit64(v32)))));

    if (!v35)
    {
LABEL_9:
      sub_224A3B7E4(v21);
      v4 = v48;
      v3 = v49;
      v7 = v47;
      v10 = v45;
LABEL_10:
      ++v15;
      (*v10)(v7, v3);
      v14 = v52;
      if (v15 == v55)
      {

        v8 = v41;
        goto LABEL_5;
      }

      goto LABEL_11;
    }

    while (1)
    {

      sub_224DABF38();
      sub_224DABEA8();

      v29 = v33;
      v25 = v34;
      if ((v21 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_27:
      v36 = sub_224DAFB18();
      if (v36)
      {
        v38 = v37;
        v57 = v36;
        type metadata accessor for EmptyKey();
        swift_dynamicCast();
        v39 = v58;
        v57 = v38;
        sub_224DABF48();
        swift_dynamicCast();
        v33 = v29;
        v34 = v25;
        if (v39)
        {
          continue;
        }
      }

      goto LABEL_9;
    }
  }

  while (1)
  {
    v33 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v33 >= v30)
    {
      goto LABEL_9;
    }

    v32 = *(v23 + 8 * v33);
    ++v31;
    if (v32)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

uint64_t sub_224C78284(uint64_t a1, uint64_t a2)
{
  v3 = sub_224DAC2B8();
  v46 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v45 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3358, &unk_224DB3570);
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v38 - v13;
  v15 = sub_224DAB258();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v43 = v16;
    v44 = v15;
    (*(v16 + 16))(v19, Strong + OBJC_IVAR____TtC10ChronoCore18LiveControlService_logger, v15);

    v21 = *(v7 + 16);
    v21(v14, a1, v6);
    v21(v11, a1, v6);
    v22 = sub_224DAB228();
    v23 = sub_224DAF2A8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v39 = v23;
      v25 = v24;
      v40 = swift_slowAlloc();
      v48[0] = v40;
      *v25 = 136446466;
      v38 = v22;
      sub_224DAC838();
      v42 = v3;
      v26 = *(v7 + 8);
      v26(v14, v6);
      v41 = a1;
      v27 = *(v47 + 16);
      v28 = *(v47 + 24);

      v29 = sub_224A33F74(v27, v28, v48);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2082;
      sub_224DAC838();
      v26(v11, v6);
      v3 = v42;
      v30 = *(v47 + 16);
      v31 = *(v47 + 24);

      v32 = sub_224A33F74(v30, v31, v48);

      *(v25 + 14) = v32;
      v33 = v38;
      _os_log_impl(&dword_224A2F000, v38, v39, "%{public}s:%{public}s Marking variant removed from store.", v25, 0x16u);
      v34 = v40;
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v34, -1, -1);
      MEMORY[0x22AA5EED0](v25, -1, -1);
    }

    else
    {

      v35 = *(v7 + 8);
      v35(v11, v6);
      v35(v14, v6);
    }

    (*(v43 + 8))(v19, v44);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_unknownObjectRetain();

    swift_getObjectType();
    v37 = v45;
    MEMORY[0x22AA5ABC0](v6);
    sub_224DAC478();
    swift_unknownObjectRelease();
    return (*(v46 + 8))(v37, v3);
  }

  return result;
}

uint64_t sub_224C78774(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v35 - v6;
  v8 = sub_224DAF3B8();
  v41 = *(v8 - 8);
  v42 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CA0, &qword_224DBA450);
  v44 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v45 = &v35 - v14;
  v15 = sub_224DAC2B8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v40 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v21 = *(v16 + 16);
  v46 = &v35 - v22;
  v39 = v21;
  v21();
  v43 = a1;
  v23 = sub_224DAC168();
  if (v23 && (v24 = sub_224D5D150(v23), , v24))
  {
    sub_224DABEB8();

    v38 = v12;
    __swift_project_boxed_opaque_existential_1(v49, v49[3]);
    v37 = sub_224DAD178();
    v48 = v37;
    sub_224DAF378();
    v47 = *(v2 + OBJC_IVAR____TtC10ChronoCore18LiveControlService__queue);
    v25 = v47;
    v26 = sub_224DAF358();
    (*(*(v26 - 8) + 56))(v7, 1, 1, v26);
    v36 = v25;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5200, &qword_224DBA810);
    sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
    sub_224A33088(&qword_281350FF0, &qword_27D6F5200, &qword_224DBA810, MEMORY[0x277CBCD90]);
    sub_224B67CF4();
    sub_224DAB468();
    sub_224A3311C(v7, &qword_27D6F5090, &qword_224DB5C30);

    (*(v41 + 8))(v11, v42);

    __swift_destroy_boxed_opaque_existential_1(v49);
    v27 = swift_allocObject();
    swift_weakInit();
    v28 = v40;
    (v39)(v40, v43, v15);
    v29 = (*(v16 + 80) + 24) & ~*(v16 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = v27;
    (*(v16 + 32))(v30 + v29, v28, v15);
    sub_224A33088(&qword_281351338, &qword_27D6F4CA0, &qword_224DBA450, MEMORY[0x277CBCCF8]);
    v31 = v38;
    v32 = v45;
    v33 = sub_224DAB488();

    (*(v44 + 8))(v32, v31);
  }

  else
  {
    v33 = 0;
  }

  swift_beginAccess();
  sub_224B08CD8(v33, v46);
  return swift_endAccess();
}

double sub_224C78CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_224DAC2B8();
  v47 = *(v4 - 8);
  v48 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v45 = v6;
  v46 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DABD68();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v44 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C28, qword_224DBA340);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v43 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C30, &unk_224DBB310);
  v17 = MEMORY[0x28223BE20](v15 - 8, v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v17, v20);
  v23 = &v43 - v22;
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v43 - v25;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v29 = Strong;

    v49 = a3;
    sub_224DAC118();

    (*(v8 + 104))(v23, *MEMORY[0x277CF98C0], v7);
    (*(v8 + 56))(v23, 0, 1, v7);
    v30 = *(v11 + 48);
    sub_224A3796C(v26, v14, &qword_27D6F4C30, &unk_224DBB310);
    sub_224A3796C(v23, &v14[v30], &qword_27D6F4C30, &unk_224DBB310);
    v31 = *(v8 + 48);
    if (v31(v14, 1, v7) == 1)
    {
      sub_224A3311C(v23, &qword_27D6F4C30, &unk_224DBB310);
      if (v31(&v14[v30], 1, v7) == 1)
      {
        sub_224A3311C(v14, &qword_27D6F4C30, &unk_224DBB310);
        v32 = v49;
LABEL_10:
        v49 = *(v29 + 152);
        v37 = swift_allocObject();
        swift_weakInit();
        v38 = v46;
        v39 = v47;
        v40 = v48;
        (*(v47 + 16))(v46, v32, v48);
        v41 = (*(v39 + 80) + 24) & ~*(v39 + 80);
        v42 = swift_allocObject();
        *(v42 + 16) = v37;
        (*(v39 + 32))(v42 + v41, v38, v40);

        sub_224DAC0B8();

        sub_224A3311C(v26, &qword_27D6F4C30, &unk_224DBB310);

        return result;
      }
    }

    else
    {
      sub_224A3796C(v14, v19, &qword_27D6F4C30, &unk_224DBB310);
      if (v31(&v14[v30], 1, v7) != 1)
      {
        v33 = &v14[v30];
        v34 = v44;
        (*(v8 + 32))(v44, v33, v7);
        sub_224C8DD50(&unk_281350E90, MEMORY[0x277CF98C8], MEMORY[0x277CF98D0]);
        v35 = sub_224DAEDD8();
        v36 = *(v8 + 8);
        v36(v34, v7);
        sub_224A3311C(v23, &qword_27D6F4C30, &unk_224DBB310);
        v36(v19, v7);
        sub_224A3311C(v14, &qword_27D6F4C30, &unk_224DBB310);
        v32 = v49;
        if (v35)
        {
          goto LABEL_10;
        }

LABEL_8:
        sub_224C796B8(v32);

        sub_224A3311C(v26, &qword_27D6F4C30, &unk_224DBB310);
        return result;
      }

      sub_224A3311C(v23, &qword_27D6F4C30, &unk_224DBB310);
      (*(v8 + 8))(v19, v7);
    }

    sub_224A3311C(v14, &qword_27D6F4C28, qword_224DBA340);
    v32 = v49;
    goto LABEL_8;
  }

  return result;
}

double sub_224C792D0(uint64_t a1, uint64_t a2)
{
  v3 = sub_224DAB7B8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v28 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DAB848();
  v27 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DAC2B8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v26 = v7;
    v17 = *(Strong + OBJC_IVAR____TtC10ChronoCore18LiveControlService__queue);
    v18 = Strong;
    (*(v12 + 16))(&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v11);
    v19 = *(v12 + 80);
    v25 = v4;
    v20 = (v19 + 24) & ~v19;
    v21 = swift_allocObject();
    *(v21 + 16) = v18;
    (*(v12 + 32))(v21 + v20, &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
    aBlock[4] = sub_224C8FEEC;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224A39F40;
    aBlock[3] = &block_descriptor_204;
    v22 = _Block_copy(aBlock);
    v23 = v17;

    sub_224DAB7E8();
    v29 = MEMORY[0x277D84F90];
    sub_224C8DD50(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
    v24 = v28;
    sub_224DAF788();
    MEMORY[0x22AA5D760](0, v10, v24, v22);
    _Block_release(v22);

    (*(v25 + 8))(v24, v3);
    (*(v27 + 8))(v10, v26);
  }

  return result;
}

void sub_224C796B8(uint64_t a1)
{
  v2 = v1;
  v119 = sub_224DACB98();
  v117 = *(v119 - 8);
  MEMORY[0x28223BE20](v119, v4);
  v118 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_224DACB08();
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115, v6);
  v116 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_224DACB28();
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109, v8);
  v111 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_224DACC88();
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113, v10);
  v110 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_224DAC2B8();
  v126 = *(v120 - 8);
  v13 = MEMORY[0x28223BE20](v120, v12);
  v15 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v106 = &v95 - v17;
  v125 = sub_224DAB258();
  v18 = *(v125 - 8);
  v20 = MEMORY[0x28223BE20](v125, v19);
  v22 = &v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v23);
  v107 = &v95 - v24;
  v131 = sub_224DAB728();
  v123 = *(v131 - 8);
  MEMORY[0x28223BE20](v131, v25);
  v130 = &v95 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_224DAE4F8();
  v122 = *(v129 - 8);
  MEMORY[0x28223BE20](v129, v27);
  v128 = &v95 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_224DAB8C8();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v31);
  v33 = (&v95 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = *(v2 + OBJC_IVAR____TtC10ChronoCore18LiveControlService__queue);
  *v33 = v34;
  (*(v30 + 104))(v33, *MEMORY[0x277D85200], v29);
  v35 = v34;
  v36 = sub_224DAB8F8();
  (*(v30 + 8))(v33, v29);
  if ((v36 & 1) == 0)
  {
LABEL_36:
    __break(1u);
    return;
  }

  v37 = *(v2 + 152);
  v38 = sub_224DAC168();
  if (!v38)
  {
    return;
  }

  v39 = v38;
  v40 = sub_224DAC2A8();
  v41 = [v40 extensionIdentity];

  swift_beginAccess();
  v42 = a1;

  LOBYTE(v41) = sub_224DAA048();

  if (v41)
  {

    v43 = v18;
    v44 = v125;
    (*(v18 + 16))(v22, v2 + OBJC_IVAR____TtC10ChronoCore18LiveControlService_logger, v125);
    v45 = v126;
    v46 = v120;
    (*(v126 + 16))(v15, v42, v120);
    v47 = sub_224DAB228();
    v48 = sub_224DAF278();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = v43;
      v51 = swift_slowAlloc();
      v133[0] = v51;
      *v49 = 136446210;
      sub_224C8DD50(&unk_281350E08, MEMORY[0x277CF99B8], MEMORY[0x277CF99E0]);
      v52 = sub_224DAFD28();
      v53 = v45;
      v55 = v54;
      (*(v53 + 8))(v15, v46);
      v56 = sub_224A33F74(v52, v55, v133);

      *(v49 + 4) = v56;
      _os_log_impl(&dword_224A2F000, v47, v48, "Ignoring proactive reload for timeline %{public}s becasue it is remote", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v51);
      MEMORY[0x22AA5EED0](v51, -1, -1);
      MEMORY[0x22AA5EED0](v49, -1, -1);

      (*(v50 + 8))(v22, v125);
    }

    else
    {

      (*(v45 + 8))(v15, v46);
      (*(v43 + 8))(v22, v44);
    }

    return;
  }

  v105 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_224DBB050;
  *(v57 + 32) = swift_getKeyPath();
  *(v57 + 40) = swift_getKeyPath();
  *(v57 + 48) = swift_getKeyPath();
  *(v57 + 56) = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  v127 = v57;
  *(v57 + 64) = KeyPath;
  v101 = v2;
  v103 = v37;
  if ((v39 & 0xC000000000000001) != 0)
  {
    v60 = sub_224DAFA68();
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v39 = v60 | 0x8000000000000000;
  }

  else
  {
    v64 = -1 << *(v39 + 32);
    v61 = v39 + 64;
    v62 = ~v64;
    v65 = -v64;
    if (v65 < 64)
    {
      v66 = ~(-1 << v65);
    }

    else
    {
      v66 = -1;
    }

    v63 = v66 & *(v39 + 64);
  }

  v104 = 0;
  v67 = 0;
  v102 = v62;
  v68 = (v62 + 64) >> 6;
  ++v123;
  ++v122;
  v100 = (v18 + 16);
  v99 = (v126 + 16);
  v126 += 8;
  v98 = (v18 + 8);
  *&v59 = 136446210;
  v97 = v59;
  v124 = v61;
  v121 = v68;
LABEL_15:
  v69 = v67;
  v70 = v63;
  if ((v39 & 0x8000000000000000) != 0)
  {
    while (1)
    {
      v74 = sub_224DAFB18();
      if (!v74)
      {
        break;
      }

      v76 = v75;
      v132[0] = v74;
      type metadata accessor for EmptyKey();
      swift_dynamicCast();
      v77 = v133[0];
      v132[0] = v76;
      sub_224DABF48();
      swift_dynamicCast();
      v67 = v69;
      v63 = v70;
      if (!v77)
      {
        break;
      }

LABEL_24:

      if (!sub_224DABF28())
      {

        goto LABEL_15;
      }

      v78 = v63;
      v79 = v39;
      sub_224DAC9F8();
      __swift_project_boxed_opaque_existential_1(v133, v133[3]);
      v80 = v128;
      sub_224DAE7E8();
      sub_224DABEB8();
      __swift_project_boxed_opaque_existential_1(v132, v132[3]);
      v81 = v130;
      sub_224DAD168();

      v82 = sub_224DAE4E8();

      (*v123)(v81, v131);
      (*v122)(v80, v129);
      __swift_destroy_boxed_opaque_existential_1(v132);
      __swift_destroy_boxed_opaque_existential_1(v133);
      if ((v82 & 1) == 0)
      {
        (*v100)(v107, v101 + OBJC_IVAR____TtC10ChronoCore18LiveControlService_logger, v125);
        v83 = v106;
        v84 = v120;
        (*v99)(v106, v105, v120);
        v85 = sub_224DAB228();
        v104 = sub_224DAF2A8();
        v39 = v79;
        v63 = v78;
        if (os_log_type_enabled(v85, v104))
        {
          v86 = swift_slowAlloc();
          v96 = swift_slowAlloc();
          v133[0] = v96;
          *v86 = v97;
          sub_224C8DD50(&unk_281350E08, MEMORY[0x277CF99B8], MEMORY[0x277CF99E0]);
          v87 = v85;
          v88 = sub_224DAFD28();
          v89 = v83;
          v91 = v90;
          (*v126)(v89, v84);
          v92 = sub_224A33F74(v88, v91, v133);

          *(v86 + 4) = v92;
          _os_log_impl(&dword_224A2F000, v87, v104, "Proactively reloading timeline for %{public}s because environment no longer matches.", v86, 0xCu);
          v93 = v96;
          __swift_destroy_boxed_opaque_existential_1(v96);
          MEMORY[0x22AA5EED0](v93, -1, -1);
          MEMORY[0x22AA5EED0](v86, -1, -1);
        }

        else
        {

          (*v126)(v83, v84);
        }

        (*v98)(v107, v125);
        v104 = 1;
        v61 = v124;
        v68 = v121;
        goto LABEL_15;
      }

      v69 = v67;
      v70 = v78;
      v39 = v79;
      v61 = v124;
      v68 = v121;
      if ((v39 & 0x8000000000000000) == 0)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_16:
    v71 = v69;
    v72 = v70;
    v67 = v69;
    if (!v70)
    {
      while (1)
      {
        v67 = v71 + 1;
        if (__OFADD__(v71, 1))
        {
          break;
        }

        if (v67 >= v68)
        {
          goto LABEL_32;
        }

        v72 = *(v61 + 8 * v67);
        ++v71;
        if (v72)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
      goto LABEL_36;
    }

LABEL_20:
    v63 = (v72 - 1) & v72;
    v73 = *(*(v39 + 48) + ((v67 << 9) | (8 * __clz(__rbit64(v72)))));

    if (v73)
    {
      goto LABEL_24;
    }
  }

LABEL_32:
  sub_224A3B7E4(v39);

  if (v104)
  {
    (*(v108 + 104))(v111, *MEMORY[0x277CF9B50], v109);
    (*(v114 + 104))(v116, *MEMORY[0x277CF9B40], v115);
    (*(v117 + 104))(v118, *MEMORY[0x277CF9BA8], v119);
    sub_224DACC48();
    v94 = v110;
    sub_224DACC38();
    sub_224DAC138();
    (*(v112 + 8))(v94, v113);
  }
}

uint64_t sub_224C7A5F8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4620, &qword_224DB34D0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v44 = &v36 - v3;
  v41 = sub_224DAC538();
  MEMORY[0x28223BE20](v41, v4);
  v42 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_224DAC528();
  v38 = *(v6 - 8);
  v39 = v6;
  v7 = *(v38 + 64);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v37 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v43 = &v36 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BB0, &unk_224DB8CF0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v36 - v14;
  v16 = sub_224DAC5E8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v45 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v0 + 264);
  v40 = v0;
  __swift_project_boxed_opaque_existential_1((v0 + 240), v20);
  v21 = sub_224DAE418();
  v23 = v22;
  v24 = off_283828B98;
  v25 = type metadata accessor for PushService();
  v24(v21, v23, v25, &off_283828B40);

  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    return sub_224A3311C(v15, &qword_27D6F3BB0, &unk_224DB8CF0);
  }

  (*(v17 + 32))(v45, v15, v16);
  v27 = v42;
  sub_224DAC558();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v17 + 8))(v45, v16);
    return sub_224A3D358(v27, MEMORY[0x277CF9A70]);
  }

  else
  {
    v28 = v38;
    v29 = v39;
    v41 = *(v38 + 32);
    v30 = v43;
    v41(v43, v27, v39);
    v31 = sub_224DAF128();
    (*(*(v31 - 8) + 56))(v44, 1, 1, v31);
    v32 = v37;
    (*(v28 + 16))(v37, v30, v29);
    v33 = (*(v28 + 80) + 40) & ~*(v28 + 80);
    v34 = swift_allocObject();
    *(v34 + 2) = 0;
    *(v34 + 3) = 0;
    v35 = v41;
    *(v34 + 4) = v40;
    v35(&v34[v33], v32, v29);

    sub_224D00D34(0, 0, v44, &unk_224DBCF90, v34);

    (*(v28 + 8))(v43, v29);
    return (*(v17 + 8))(v45, v16);
  }
}

uint64_t sub_224C7AAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_224C7AAC8, 0, 0);
}

uint64_t sub_224C7AAC8(uint64_t a1)
{
  v2 = sub_224DAC508();
  *(v1 + 32) = v2;
  v3 = swift_task_alloc();
  *(v1 + 40) = v3;
  *v3 = v1;
  v3[1] = sub_224B9B4C8;

  return sub_224C7AB6C(v2);
}

uint64_t sub_224C7AB6C(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = sub_224DAE438();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v4 = sub_224DAC5E8();
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4030, &unk_224DB5630);
  v2[21] = swift_task_alloc();
  v5 = sub_224DA9908();
  v2[22] = v5;
  v2[23] = *(v5 - 8);
  v2[24] = swift_task_alloc();
  v6 = sub_224DA9878();
  v2[25] = v6;
  v2[26] = *(v6 - 8);
  v2[27] = swift_task_alloc();
  type metadata accessor for ExtensionTask.SchedulingConfiguration(0);
  v2[28] = swift_task_alloc();
  v2[29] = type metadata accessor for ExtensionTask.Identifier(0);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224C7ADF8, 0, 0);
}

uint64_t sub_224C7ADF8()
{
  receiver = v0[15].receiver;
  super_class = v0[15].super_class;
  v3 = v0[14].receiver;
  v147 = v3;
  v4 = v0[13].receiver;
  v127 = v0[13].super_class;
  v130 = v0[12].super_class;
  v136 = v0[11].super_class;
  v140 = v0[11].receiver;
  v142 = v0[10].super_class;
  v144 = v0[12].receiver;
  v5 = v0[5].super_class;
  v123 = v0[6].receiver;
  v0[16].receiver = [(objc_class *)v5 extensionIdentity];
  v6 = v5;
  v7 = sub_224C83DFC(v6);
  *super_class = v6;
  super_class[1] = v7;
  swift_storeEnumTagMultiPayload();
  sub_224A4152C(super_class, receiver, type metadata accessor for ExtensionTask.Identifier);
  v115 = [(objc_class *)v6 extensionIdentity];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33D0, qword_224DB3710);
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5070, &unk_224DB3670);
  v9 = *(type metadata accessor for ExtensionTask.SchedulingOption(0) - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_224DB8BC0;
  v13 = v12 + v11;
  v14 = sub_224DAE8B8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 56);
  v16(v13, 4, 5, v14);
  v16(v13 + v10, 3, 5, v14);
  (*(v15 + 104))(v13 + 2 * v10, *MEMORY[0x277CE3D28], v14);
  v16(v13 + 2 * v10, 0, 5, v14);
  v117 = type metadata accessor for ExtensionTask(0);
  v17 = objc_allocWithZone(v117);
  sub_224DAE908();
  v18 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions;
  *&v17[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions] = MEMORY[0x277D84F90];
  v19 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_powerlogWakeReason;
  v20 = sub_224DAC938();
  v21 = *(v20 - 8);
  v120 = v20;
  v125 = *(v21 + 56);
  v125(&v17[v19], 1, 1, v20);
  v22 = &v17[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_syncWorkItem];
  *v22 = 0;
  v22[1] = 0;
  v23 = &v17[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem];
  *v23 = 0;
  v23[1] = 0;
  v24 = &v17[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskWorkItem];
  *v24 = 0;
  v24[1] = 0;
  v25 = &v17[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion];
  *v25 = 0;
  v25[1] = 0;
  sub_224DA9868();
  v4[4](&v17[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_creationDate], v127, v130);
  *&v17[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_target] = v115;
  sub_224A4152C(v147, &v17[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingConfiguration], type metadata accessor for ExtensionTask.SchedulingConfiguration);
  swift_beginAccess();
  *&v17[v18] = v12;
  v131 = v115;

  v26 = &v17[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_cost];
  *v26 = 1;
  v26[8] = 0;
  sub_224A4152C(receiver, &v17[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_identifier], type metadata accessor for ExtensionTask.Identifier);
  sub_224DA98F8();
  (*(v136 + 2))(&v17[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskIdentifier], v144, v140);
  v0[5].receiver = sub_224DA98E8();
  sub_224A3F6A4();
  v27 = sub_224DAEF18();
  v29 = sub_224A3D19C(8, v27, v28);
  v31 = v30;
  v33 = v32;
  v35 = v34;

  v36 = MEMORY[0x22AA5D1C0](v29, v31, v33, v35);
  v38 = v37;

  v39 = &v17[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest];
  *v39 = v36;
  v39[1] = v38;
  v17[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_allowCostOverride] = 1;
  v0[4].receiver = v17;
  v0[4].super_class = v117;
  v40 = objc_msgSendSuper2(v0 + 4, sel_init);
  v0[16].super_class = v40;

  (*(v136 + 1))(v144, v140);
  sub_224A3D358(v147, type metadata accessor for ExtensionTask.SchedulingConfiguration);
  sub_224A3D358(receiver, type metadata accessor for ExtensionTask.Identifier);
  (*(v21 + 104))(v142, *MEMORY[0x277CF9AE8], v120);
  v125(v142, 0, 1, v120);
  v41 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_powerlogWakeReason;
  swift_beginAccess();
  v116 = v40;
  sub_224A838C0(v142, v40 + v41, &qword_27D6F4030, &unk_224DB5630);
  swift_endAccess();
  __swift_project_boxed_opaque_existential_1(v123 + 30, v123[33]);
  v42 = off_283828B60[0];
  v118 = type metadata accessor for PushService();
  v43 = v42(v118, &off_283828B40);
  v141 = sub_224DA0FA4(MEMORY[0x277D84F90]);
  v44 = *(v43 + 16);
  if (!v44)
  {
LABEL_20:

    v75 = swift_allocObject();
    v0[17].receiver = v75;
    *(v75 + 16) = MEMORY[0x277D84F90];
    v76 = (v75 + 16);
    v77 = swift_allocObject();
    v0[17].super_class = v77;
    *(v77 + 16) = MEMORY[0x277D84F98];
    __swift_project_boxed_opaque_existential_1(v123 + 30, v123[33]);
    v78 = off_283828B68(v118, &off_283828B40);
    v149 = v78;
    v150 = *(v78 + 16);
    if (!v150)
    {

LABEL_46:
      v151 = *&v0[5].super_class;

      v112 = swift_task_alloc();
      v0[18].receiver = v112;
      *(v112 + 16) = v116;
      *(v112 + 24) = vextq_s8(v151, v151, 8uLL);
      *(v112 + 40) = v75;
      *(v112 + 48) = v77;
      v113 = swift_task_alloc();
      v0[18].super_class = v113;
      *v113 = v0;
      *(v113 + 1) = sub_224C7BCD0;

      return MEMORY[0x2822008A0]();
    }

    v79 = v78;
    v119 = v75;
    v121 = (v75 + 16);
    v80 = 0;
    v81 = v0[7].receiver;
    v146 = v78 + ((v81[80] + 32) & ~v81[80]);
    v129 = v0[8].super_class;
    v122 = v77;
    v124 = (v129 + 8);
    v82 = (v81 + 8);
    while (1)
    {
      if (v80 >= *(v79 + 16))
      {
        goto LABEL_55;
      }

      (*(v81 + 2))(v0[7].super_class, v146 + *(v81 + 9) * v80, v0[6].super_class);
      v83 = sub_224DAE418();
      if (!v141[2])
      {
        break;
      }

      v85 = sub_224A3A40C(v83, v84);
      v87 = v86;
      v79 = v149;

      if ((v87 & 1) == 0)
      {
        goto LABEL_23;
      }

      (*(v129 + 2))(v0[9].receiver, v141[7] + *(v129 + 9) * v85, v0[8].receiver);
      v88 = sub_224DAC5D8();
      if (v88)
      {
        v89 = v88;
        MEMORY[0x22AA5D350]();
        if (*((*v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_224DAF038();
        }

        sub_224DAF078();
        v138 = sub_224DAE428();
        v139 = v90;
        v91 = *(v77 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v77 + 16) = 0x8000000000000000;
        v94 = sub_224B0BD50(v89);
        v95 = v91[2];
        v96 = (v93 & 1) == 0;
        v97 = v95 + v96;
        if (__OFADD__(v95, v96))
        {
          goto LABEL_57;
        }

        v98 = v93;
        if (v91[3] >= v97)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_224B29134();
          }
        }

        else
        {
          sub_224B171E8(v97, isUniquelyReferenced_nonNull_native);
          v99 = sub_224B0BD50(v89);
          if ((v98 & 1) != (v100 & 1))
          {
            sub_224A3B79C(0, &qword_281350A50, 0x277CFA228);
            goto LABEL_51;
          }

          v94 = v99;
        }

        v103 = v0[9].receiver;
        v104 = v0[8].receiver;
        v133 = v0[6].super_class;
        v135 = v0[7].super_class;
        if (v98)
        {
          v105 = (v91[7] + 16 * v94);
          v106 = v0[8].receiver;
          v107 = *v105;
          v108 = v105[1];
          *v105 = v138;
          v105[1] = v139;
          sub_224A78024(v107, v108);

          (*v124)(v103, v106);
          (*v82)(v135, v133);
        }

        else
        {
          v91[(v94 >> 6) + 8] |= 1 << v94;
          *(v91[6] + 8 * v94) = v89;
          v109 = (v91[7] + 16 * v94);
          *v109 = v138;
          v109[1] = v139;
          (*v124)(v103, v104);
          (*v82)(v135, v133);
          v110 = v91[2];
          v73 = __OFADD__(v110, 1);
          v111 = v110 + 1;
          if (v73)
          {
            goto LABEL_59;
          }

          v91[2] = v111;
        }

        v77 = v122;
        *(v122 + 16) = v91;

        v76 = v121;
      }

      else
      {
        v101 = v0[7].super_class;
        v102 = v0[6].super_class;
        (*v124)(v0[9].receiver, v0[8].receiver);
        (*v82)(v101, v102);
      }

      v79 = v149;
LABEL_24:
      if (v150 == ++v80)
      {

        v75 = v119;
        goto LABEL_46;
      }
    }

LABEL_23:
    (*v82)(v0[7].super_class, v0[6].super_class);
    goto LABEL_24;
  }

  v45 = 0;
  v46 = v0[8].super_class;
  v145 = v43 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
  v143 = (v46 + 8);
  v128 = (v46 + 32);
  v148 = v46;
  v126 = (v46 + 40);
  v132 = *(v43 + 16);
  v134 = v43;
  while (v45 < *(v43 + 16))
  {
    v47 = *(v148 + 9);
    v48 = *(v148 + 2);
    v48(v0[10].receiver, v145 + v47 * v45, v0[8].receiver);
    v49 = sub_224DAC5D8();
    if (v49)
    {
      v50 = v49;
      sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
      v51 = [v50 extensionIdentity];
      v52 = sub_224DAF6A8();

      v53 = v0[10].receiver;
      if (v52)
      {
        v54 = v0[9].super_class;
        v55 = v0[8].receiver;
        v56 = sub_224DAC588();
        v58 = v57;
        v48(v54, v53, v55);
        v59 = swift_isUniquelyReferenced_nonNull_native();
        v61 = sub_224A3A40C(v56, v58);
        v62 = v141[2];
        v63 = (v60 & 1) == 0;
        v64 = v62 + v63;
        if (__OFADD__(v62, v63))
        {
          goto LABEL_56;
        }

        v65 = v60;
        if (v141[3] >= v64)
        {
          if ((v59 & 1) == 0)
          {
            sub_224B2527C();
          }
        }

        else
        {
          sub_224B0F104(v64, v59);
          v66 = sub_224A3A40C(v56, v58);
          if ((v65 & 1) != (v67 & 1))
          {
LABEL_51:

            return sub_224DAFDD8();
          }

          v61 = v66;
        }

        v69 = v0[9].super_class;
        v137 = v0[10].receiver;
        v70 = v0[8].receiver;
        if (v65)
        {

          (*v126)(v141[7] + v61 * v47, v69, v70);

          (*v143)(v137, v70);
        }

        else
        {
          v141[(v61 >> 6) + 8] |= 1 << v61;
          v71 = (v141[6] + 16 * v61);
          *v71 = v56;
          v71[1] = v58;
          (*v128)(v141[7] + v61 * v47, v69, v70);

          (*v143)(v137, v70);
          v72 = v141[2];
          v73 = __OFADD__(v72, 1);
          v74 = v72 + 1;
          if (v73)
          {
            goto LABEL_58;
          }

          v141[2] = v74;
        }

        v44 = v132;
        v43 = v134;
      }

      else
      {
        v68 = v0[8].receiver;

        (*v143)(v53, v68);
      }
    }

    else
    {
      (*v143)(v0[10].receiver, v0[8].receiver);
    }

    if (v44 == ++v45)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
  return MEMORY[0x2822008A0]();
}

uint64_t sub_224C7BCD0()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_224C7BF2C;
  }

  else
  {
    v2 = sub_224C7BE00;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_224C7BE00()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 248);

  sub_224A3D358(v2, type metadata accessor for ExtensionTask.Identifier);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_224C7BF2C()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 248);

  sub_224A3D358(v2, type metadata accessor for ExtensionTask.Identifier);

  v3 = *(v0 + 8);

  return v3();
}

double sub_224C7C058(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v31 = a2;
  v32 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4280, &unk_224DB65C0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v31 - v14;
  v16 = swift_allocObject();
  *(v16 + 2) = a3;
  *(v16 + 3) = a4;
  *(v16 + 4) = a5;
  *(v16 + 5) = a6;
  v17 = (a2 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem);
  v19 = *(a2 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem);
  v18 = *(a2 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem + 8);
  *v17 = sub_224C8FB64;
  v17[1] = v16;

  v20 = a4;

  sub_224A3D418(v19, v18);
  (*(v12 + 16))(v15, v32, v11);
  v21 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = a3;
  *(v22 + 24) = v20;
  (*(v12 + 32))(v22 + v21, v15, v11);
  v23 = v31;
  v24 = (v31 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion);
  v25 = *(v31 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion);
  v26 = *(v31 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion + 8);
  *v24 = sub_224C8FB70;
  v24[1] = v22;

  v27 = v20;
  sub_224A3D418(v25, v26);
  v28 = a3[51];
  v29 = a3[52];
  __swift_project_boxed_opaque_existential_1(a3 + 48, v28);
  (*(v29 + 16))(v23, v28, v29);

  return result;
}

void sub_224C7C298(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v32 = a2;
  v33 = a3;
  v31 = sub_224DAE6E8();
  v10 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_224DAB258();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224A3796C(a1, aBlock, &qword_27D6F4760, &unk_224DB3680);
  if (v35)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5080, &qword_224DB3690);
    if (swift_dynamicCast())
    {
      v19 = v38;
      sub_224DAECA8();
      swift_beginAccess();
      swift_beginAccess();

      v20 = sub_224DAEC98();
      v21 = swift_allocObject();
      v22 = v33;
      *(v21 + 16) = v32;
      *(v21 + 24) = v22;
      v36 = sub_224BFDE18;
      v37 = v21;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_224BC6D2C;
      v35 = &block_descriptor_170;
      v23 = _Block_copy(aBlock);

      [v19 controlPushTokensDidChange:v20 completion:v23];
      _Block_release(v23);
      swift_unknownObjectRelease();
      goto LABEL_8;
    }
  }

  else
  {
    sub_224A3311C(aBlock, &qword_27D6F4760, &unk_224DB3680);
  }

  (*(v15 + 16))(v18, a4 + OBJC_IVAR____TtC10ChronoCore18LiveControlService_logger, v14);
  v24 = a5;
  v25 = sub_224DAB228();
  v26 = sub_224DAF288();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138543362;
    v29 = [v24 extensionIdentity];
    *(v27 + 4) = v29;
    *v28 = v29;
    _os_log_impl(&dword_224A2F000, v25, v26, "Unable to update state in extension %{public}@: No extension session", v27, 0xCu);
    sub_224A3311C(v28, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v28, -1, -1);
    MEMORY[0x22AA5EED0](v27, -1, -1);
  }

  (*(v15 + 8))(v18, v14);
  sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
  (*(v10 + 104))(v13, *MEMORY[0x277CE3C40], v31);
  v20 = sub_224DAF638();
  v32();
LABEL_8:
}

uint64_t sub_224C7C70C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = sub_224DAB258();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = v33 - v15;
  if (a3)
  {
    (*(v9 + 16))(v33 - v15, a4 + OBJC_IVAR____TtC10ChronoCore18LiveControlService_logger, v8);
    v17 = a3;
    v18 = a5;
    v19 = sub_224DAB228();
    v20 = sub_224DAF288();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138543618;
      v23 = [v18 extensionIdentity];
      *(v21 + 4) = v23;
      *v22 = v23;
      *(v21 + 12) = 2114;
      v24 = a3;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 14) = v25;
      v22[1] = v25;
      _os_log_impl(&dword_224A2F000, v19, v20, "Error occurred when sending push token to extension %{public}@: %{public}@", v21, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F69F0, &unk_224DB3900);
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v22, -1, -1);
      MEMORY[0x22AA5EED0](v21, -1, -1);
    }

    (*(v9 + 8))(v16, v8);
    v33[1] = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4280, &unk_224DB65C0);
    return sub_224DAF0D8();
  }

  else
  {
    (*(v9 + 16))(v13, a4 + OBJC_IVAR____TtC10ChronoCore18LiveControlService_logger, v8);
    v27 = a5;
    v28 = sub_224DAB228();
    v29 = sub_224DAF2A8();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138543362;
      v32 = [v27 extensionIdentity];
      *(v30 + 4) = v32;
      *v31 = v32;
      _os_log_impl(&dword_224A2F000, v28, v29, "Push token sent to extension %{public}@ successfully.", v30, 0xCu);
      sub_224A3311C(v31, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v31, -1, -1);
      MEMORY[0x22AA5EED0](v30, -1, -1);
    }

    (*(v9 + 8))(v13, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4280, &unk_224DB65C0);
    return sub_224DAF0E8();
  }
}

uint64_t sub_224C7CAAC(void *a1, uint64_t a2)
{
  v48 = a2;
  v4 = sub_224DAB258();
  v5 = *(v4 - 8);
  v49 = v4;
  v50 = v5;
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v43 = &v43 - v11;
  v47 = sub_224DAE138();
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47, v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_224DAE168();
  MEMORY[0x28223BE20](v15 - 8, v16);
  v46 = sub_224DAC5E8();
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46, v17);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  v20 = a1;
  v21 = [a1 extensionIdentity];
  sub_224DAC6D8();

  if (v52)
  {
    v23 = v49;
    v22 = v50;
    sub_224A36F98(&v51, v53);
    __swift_project_boxed_opaque_existential_1(v53, v53[3]);
    sub_224DAE288();
    if (v24)
    {
      (*(v45 + 16))(v14, v48, v47);
      v25 = v20;
      sub_224DAE148();
      sub_224DAC5C8();
      __swift_project_boxed_opaque_existential_1(v2 + 30, v2[33]);
      v26 = sub_224AB65D4(v19, 1);
      (*(v44 + 8))(v19, v46, v26);
    }

    else
    {
      v36 = v43;
      (*(v22 + 16))(v43, v2 + OBJC_IVAR____TtC10ChronoCore18LiveControlService_logger, v23);
      v37 = v20;
      v38 = sub_224DAB228();
      v39 = sub_224DAF288();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *v40 = 138543362;
        v42 = [v37 extensionIdentity];
        *(v40 + 4) = v42;
        *v41 = v42;
        _os_log_impl(&dword_224A2F000, v38, v39, "Error occured when subscribing to pushes for extension %{public}@: Could not find push environment entitlement.", v40, 0xCu);
        sub_224A3311C(v41, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v41, -1, -1);
        MEMORY[0x22AA5EED0](v40, -1, -1);
      }

      (*(v22 + 8))(v36, v23);
    }

    return __swift_destroy_boxed_opaque_existential_1(v53);
  }

  else
  {
    sub_224A3311C(&v51, &unk_27D6F4700, &unk_224DB3A10);
    v28 = v49;
    v27 = v50;
    (*(v50 + 16))(v9, v2 + OBJC_IVAR____TtC10ChronoCore18LiveControlService_logger, v49);
    v29 = v20;
    v30 = sub_224DAB228();
    v31 = sub_224DAF288();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138543362;
      v34 = [v29 extensionIdentity];
      *(v32 + 4) = v34;
      *v33 = v34;
      _os_log_impl(&dword_224A2F000, v30, v31, "Error occured when subscribing to pushes for extension %{public}@: Could not find extension in extensionManager.", v32, 0xCu);
      sub_224A3311C(v33, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v33, -1, -1);
      MEMORY[0x22AA5EED0](v32, -1, -1);
    }

    return (*(v27 + 8))(v9, v28);
  }
}

uint64_t sub_224C7D04C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v60 = a2;
  v61 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4620, &qword_224DB34D0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v62 = &v47 - v5;
  v6 = sub_224DAA548();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v58 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v47 - v12;
  v52 = sub_224DAE738();
  v14 = *(v52 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x28223BE20](v52, v16);
  v49 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v47 - v19;
  sub_224DAA8F8();
  v56 = sub_224DAA0D8();

  v57 = v20;
  sub_224DAA918();
  v21 = sub_224DAA908();
  v53 = v22;
  v54 = v21;
  v23 = *MEMORY[0x277CFA0A0];
  v24 = *(v7 + 104);
  v55 = v13;
  v50 = v6;
  v24(v13, v23, v6);
  v25 = v62;
  sub_224DAF0F8();
  v26 = sub_224DAF128();
  (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
  v27 = v14;
  v28 = v20;
  v29 = v52;
  (*(v14 + 16))(&v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v28, v52);
  v30 = v7;
  v48 = v7;
  v31 = v58;
  (*(v7 + 16))(v58, v13, v6);
  v32 = *(v27 + 80);
  v51 = v27;
  v33 = (v32 + 48) & ~v32;
  v34 = (v15 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = (*(v30 + 80) + v34 + 16) & ~*(v30 + 80);
  v36 = swift_allocObject();
  *(v36 + 2) = 0;
  *(v36 + 3) = 0;
  v37 = v56;
  *(v36 + 4) = v59;
  *(v36 + 5) = v37;
  (*(v27 + 32))(&v36[v33], v49, v29);
  v38 = &v36[v34];
  v39 = v53;
  *v38 = v54;
  v38[1] = v39;
  v40 = v48;
  v41 = v31;
  v42 = v50;
  (*(v48 + 32))(&v36[v35], v41, v50);
  v43 = &v36[(v8 + v35 + 7) & 0xFFFFFFFFFFFFFFF8];
  v44 = v61;
  *v43 = v60;
  v43[1] = v44;

  v45 = v37;

  sub_224D8E744(0, 0, v62, &unk_224DBCF78, v36);

  (*(v40 + 8))(v55, v42);
  return (*(v51 + 8))(v57, v29);
}

uint64_t sub_224C7D470(void **a1, uint64_t a2, uint64_t a3)
{
  v58 = a2;
  v59 = a3;
  v4 = sub_224DAE738();
  v55 = *(v4 - 8);
  v56 = v4;
  v49 = *(v55 + 64);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4620, &qword_224DB34D0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v46 - v10;
  v12 = sub_224DAA548();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v48 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v46 - v18;
  v50 = *a1;
  v20 = type metadata accessor for RemoteControlActionRequest(0);
  v21 = *(v20 + 20);
  v22 = (a1 + *(v20 + 24));
  v24 = *v22;
  v23 = v22[1];
  v53 = v24;
  v51 = v23;
  v25 = *MEMORY[0x277CFA0B0];
  v26 = *(v13 + 104);
  v52 = v19;
  v47 = v12;
  v26(v19, v25, v12);
  v54 = v11;
  sub_224DAF0F8();
  v27 = sub_224DAF128();
  (*(*(v27 - 8) + 56))(v11, 0, 1, v27);
  v28 = v55;
  v29 = v56;
  (*(v55 + 16))(v7, a1 + v21, v56);
  v30 = v13;
  v46 = v13;
  (*(v13 + 16))(&v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v19, v12);
  v31 = v28;
  v32 = (*(v28 + 80) + 48) & ~*(v28 + 80);
  v33 = (v49 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = (*(v30 + 80) + v33 + 16) & ~*(v30 + 80);
  v35 = (v14 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  *(v36 + 2) = 0;
  *(v36 + 3) = 0;
  v37 = v50;
  *(v36 + 4) = v57;
  *(v36 + 5) = v37;
  (*(v31 + 32))(&v36[v32], v7, v29);
  v38 = &v36[v33];
  v39 = v51;
  *v38 = v53;
  *(v38 + 1) = v39;
  v41 = v46;
  v40 = v47;
  (*(v46 + 32))(&v36[v34], v48, v47);
  v42 = &v36[v35];
  v43 = v59;
  *v42 = v58;
  v42[1] = v43;

  v44 = v37;
  sub_224D8E744(0, 0, v54, &unk_224DBCF70, v36);

  return (*(v41 + 8))(v52, v40);
}

uint64_t sub_224C7D838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = v18;
  v8[11] = v19;
  v8[8] = a4;
  v8[9] = a5;
  v13 = sub_224DACB98();
  v8[12] = v13;
  v8[13] = *(v13 - 8);
  v8[14] = swift_task_alloc();
  v14 = swift_task_alloc();
  v8[15] = v14;
  *v14 = v8;
  v14[1] = sub_224C7D970;

  return sub_224C81244(a5, a6, a7, a8, v17);
}

uint64_t sub_224C7D970()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_224C7DD34;
  }

  else
  {
    v2 = sub_224C7DA84;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_224C7DA84()
{
  if (qword_281351448 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = sub_224DAB258();
  __swift_project_value_buffer(v2, qword_281364D90);
  v3 = v1;
  v4 = sub_224DAB228();
  v5 = sub_224DAF2A8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[9];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_224A2F000, v4, v5, "[%{public}@]: Action success", v7, 0xCu);
    sub_224A3311C(v8, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v8, -1, -1);
    MEMORY[0x22AA5EED0](v7, -1, -1);
  }

  v10 = v0[10];

  v10(0);
  v12 = v0[13];
  v11 = v0[14];
  v23 = v0[12];
  v13 = v0[9];
  (*(v12 + 104))(v11, *MEMORY[0x277CF9B68]);
  v14 = [v13 extensionIdentity];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3308, &qword_224DB5C00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_224DB3100;
  v16 = [v13 kind];
  v17 = sub_224DAEE18();
  v19 = v18;

  *(inited + 32) = v17;
  *(inited + 40) = v19;
  v20 = sub_224AE8AF4(inited);
  swift_setDeallocating();
  sub_224BCA6B4(inited + 32);
  sub_224C84DA4(v14, v20);

  sub_224C809D8(v13, v11);
  (*(v12 + 8))(v11, v23);

  v21 = v0[1];

  return v21();
}

uint64_t sub_224C7DD34()
{
  if (qword_281351448 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = v0[9];
  v3 = sub_224DAB258();
  __swift_project_value_buffer(v3, qword_281364D90);
  v4 = v2;
  v5 = v1;
  v6 = sub_224DAB228();
  v7 = sub_224DAF2A8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[16];
    v9 = v0[9];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543618;
    *(v10 + 4) = v9;
    *v11 = v9;
    *(v10 + 12) = 2114;
    v12 = v9;
    v13 = v8;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    v11[1] = v14;
    _os_log_impl(&dword_224A2F000, v6, v7, "[%{public}@]: Action failure: %{public}@", v10, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F69F0, &unk_224DB3900);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v11, -1, -1);
    MEMORY[0x22AA5EED0](v10, -1, -1);
  }

  v15 = v0[16];
  v16 = v0[10];

  v17 = v15;
  v16(v15);

  v19 = v0[13];
  v18 = v0[14];
  v30 = v0[12];
  v20 = v0[9];
  (*(v19 + 104))(v18, *MEMORY[0x277CF9B68]);
  v21 = [v20 extensionIdentity];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3308, &qword_224DB5C00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_224DB3100;
  v23 = [v20 kind];
  v24 = sub_224DAEE18();
  v26 = v25;

  *(inited + 32) = v24;
  *(inited + 40) = v26;
  v27 = sub_224AE8AF4(inited);
  swift_setDeallocating();
  sub_224BCA6B4(inited + 32);
  sub_224C84DA4(v21, v27);

  sub_224C809D8(v20, v18);
  (*(v19 + 8))(v18, v30);

  v28 = v0[1];

  return v28();
}

void sub_224C7E044(void *a1)
{
  v126 = sub_224DACB98();
  v120 = *(v126 - 8);
  MEMORY[0x28223BE20](v126, v3);
  v119 = &v113[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v124 = sub_224DAB258();
  v123 = *(v124 - 8);
  v6 = MEMORY[0x28223BE20](v124, v5);
  v117 = &v113[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6, v8);
  v115 = &v113[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v131 = &v113[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12, v14);
  v129 = &v113[-v15];
  v134 = sub_224DA9878();
  v130 = *(v134 - 8);
  v17 = MEMORY[0x28223BE20](v134, v16);
  v121 = &v113[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x28223BE20](v17, v19);
  v122 = &v113[-v21];
  v23 = MEMORY[0x28223BE20](v20, v22);
  v128 = &v113[-v24];
  MEMORY[0x28223BE20](v23, v25);
  v133 = &v113[-v26];
  v132 = sub_224DABD68();
  v135 = *(v132 - 8);
  MEMORY[0x28223BE20](v132, v27);
  v116 = &v113[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C28, qword_224DBA340);
  MEMORY[0x28223BE20](v29, v30);
  v32 = &v113[-v31];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C30, &unk_224DBB310);
  v35 = MEMORY[0x28223BE20](v33 - 8, v34);
  v127 = &v113[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = MEMORY[0x28223BE20](v35, v37);
  v40 = &v113[-v39];
  MEMORY[0x28223BE20](v38, v41);
  v43 = &v113[-v42];
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  MEMORY[0x28223BE20](v44 - 8, v45);
  v47 = &v113[-v46];
  v48 = sub_224DAC2B8();
  v136 = *(v48 - 8);
  v137 = v48;
  MEMORY[0x28223BE20](v48, v49);
  v51 = &v113[-((v50 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  (*(*(v52 - 8) + 56))(v47, 1, 1, v52);
  v118 = a1;
  sub_224C86DA4(a1, v47, v51);
  sub_224A3311C(v47, &qword_27D6F56C0, &unk_224DB3580);
  v125 = v1;
  v53 = sub_224DAC168();
  if (v53)
  {
    v54 = sub_224D5D26C(v53);
    v56 = v55;

    if (v54)
    {

      if (!sub_224DABF28() || (v57 = sub_224DAC9E8(), , (v57 & 1) == 0))
      {
        sub_224DAC118();
        v58 = v135;
        v59 = v132;
        (*(v135 + 104))(v40, *MEMORY[0x277CF98B0], v132);
        (*(v58 + 56))(v40, 0, 1, v59);
        v60 = *(v29 + 48);
        sub_224A3796C(v43, v32, &qword_27D6F4C30, &unk_224DBB310);
        sub_224A3796C(v40, &v32[v60], &qword_27D6F4C30, &unk_224DBB310);
        v61 = *(v58 + 48);
        if (v61(v32, 1, v59) == 1)
        {
          sub_224A3311C(v40, &qword_27D6F4C30, &unk_224DBB310);
          sub_224A3311C(v43, &qword_27D6F4C30, &unk_224DBB310);
          if (v61(&v32[v60], 1, v59) == 1)
          {
            sub_224A3311C(v32, &qword_27D6F4C30, &unk_224DBB310);
            goto LABEL_15;
          }

          goto LABEL_12;
        }

        v62 = v127;
        sub_224A3796C(v32, v127, &qword_27D6F4C30, &unk_224DBB310);
        if (v61(&v32[v60], 1, v59) == 1)
        {
          sub_224A3311C(v40, &qword_27D6F4C30, &unk_224DBB310);
          sub_224A3311C(v43, &qword_27D6F4C30, &unk_224DBB310);
          (*(v135 + 8))(v62, v59);
LABEL_12:
          sub_224A3311C(v32, &qword_27D6F4C28, qword_224DBA340);
LABEL_13:
          (*(v136 + 8))(v51, v137);

          return;
        }

        v63 = v135;
        v64 = &v32[v60];
        v65 = v116;
        (*(v135 + 32))(v116, v64, v59);
        sub_224C8DD50(&unk_281350E90, MEMORY[0x277CF98C8], MEMORY[0x277CF98D0]);
        v114 = sub_224DAEDD8();
        v66 = *(v63 + 8);
        v66(v65, v59);
        sub_224A3311C(v40, &qword_27D6F4C30, &unk_224DBB310);
        sub_224A3311C(v43, &qword_27D6F4C30, &unk_224DBB310);
        v66(v127, v59);
        sub_224A3311C(v32, &qword_27D6F4C30, &unk_224DBB310);
        if ((v114 & 1) == 0)
        {
          goto LABEL_13;
        }
      }

LABEL_15:
      v132 = v51;
      v67 = v128;
      sub_224DA9808();
      v68 = v133;
      sub_224DA9768();
      v69 = v130;
      v70 = *(v130 + 8);
      v71 = v134;
      v70(v67, v134);
      v72 = v129;
      v135 = v56;
      sub_224DABED8();
      v73 = *(v69 + 48);
      if (v73(v72, 1, v71) == 1)
      {
        sub_224A3311C(v72, &qword_27D6F32B0, &qword_224DB3EA0);
        v74 = v131;
      }

      else
      {
        v75 = v122;
        (*(v69 + 32))(v122, v72, v71);
        v76 = sub_224DA9798();
        v74 = v131;
        if (v76)
        {
          v77 = v115;
          (*(v123 + 16))(v115, v125 + OBJC_IVAR____TtC10ChronoCore18LiveControlService_logger, v124);
          v78 = v118;
          v79 = sub_224DAB228();
          v80 = sub_224DAF2A8();

          if (os_log_type_enabled(v79, v80))
          {
            v81 = swift_slowAlloc();
            v82 = swift_slowAlloc();
            *v81 = 138543362;
            *(v81 + 4) = v78;
            *v82 = v78;
            v83 = v78;
            _os_log_impl(&dword_224A2F000, v79, v80, "[%{public}@]: Reloading control because it's stale from prior extension failure. Reloading...", v81, 0xCu);
            sub_224A3311C(v82, &unk_27D6F69F0, &unk_224DB3900);
            MEMORY[0x22AA5EED0](v82, -1, -1);
            MEMORY[0x22AA5EED0](v81, -1, -1);
          }

          (*(v123 + 8))(v77, v124);
          v84 = v120;
          v85 = v119;
          (*(v120 + 104))(v119, *MEMORY[0x277CF9BE8], v126);
          v86 = [v78 extensionIdentity];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3308, &qword_224DB5C00);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_224DB3100;
          v88 = [v78 kind];
          v89 = sub_224DAEE18();
          v91 = v90;

          *(inited + 32) = v89;
          *(inited + 40) = v91;
          v92 = sub_224AE8AF4(inited);
          swift_setDeallocating();
          sub_224BCA6B4(inited + 32);
          sub_224C84DA4(v86, v92);

          sub_224C809D8(v78, v85);

          (*(v84 + 8))(v85, v126);
          v93 = &v139;
          goto LABEL_28;
        }

        v70(v75, v71);
      }

      sub_224DABEC8();
      if (v73(v74, 1, v71) == 1)
      {

        v70(v68, v71);
        (*(v136 + 8))(v132, v137);
        sub_224A3311C(v74, &qword_27D6F32B0, &qword_224DB3EA0);
        return;
      }

      v94 = v121;
      (*(v69 + 32))(v121, v74, v71);
      if ((sub_224DA9798() & 1) == 0)
      {

        v70(v94, v71);
        v111 = v68;
        v112 = v71;
        goto LABEL_30;
      }

      (*(v123 + 16))(v117, v125 + OBJC_IVAR____TtC10ChronoCore18LiveControlService_logger, v124);
      v95 = v118;
      v96 = sub_224DAB228();
      v97 = sub_224DAF2A8();

      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        *v98 = 138543362;
        *(v98 + 4) = v95;
        *v99 = v95;
        v100 = v95;
        _os_log_impl(&dword_224A2F000, v96, v97, "[%{public}@]: Reloading control because it's stale from developer error. Reloading...", v98, 0xCu);
        sub_224A3311C(v99, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v99, -1, -1);
        MEMORY[0x22AA5EED0](v98, -1, -1);
      }

      (*(v123 + 8))(v117, v124);
      v101 = v120;
      v102 = v119;
      (*(v120 + 104))(v119, *MEMORY[0x277CF9BE8], v126);
      v103 = [v95 extensionIdentity];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3308, &qword_224DB5C00);
      v104 = swift_initStackObject();
      *(v104 + 16) = xmmword_224DB3100;
      v105 = [v95 kind];
      v106 = sub_224DAEE18();
      v108 = v107;

      *(v104 + 32) = v106;
      *(v104 + 40) = v108;
      v109 = sub_224AE8AF4(v104);
      swift_setDeallocating();
      sub_224BCA6B4(v104 + 32);
      sub_224C84DA4(v103, v109);

      sub_224C809D8(v95, v102);

      (*(v101 + 8))(v102, v126);
      v93 = &v138;
LABEL_28:
      v110 = v134;
      v70(*(v93 - 32), v134);
      v111 = v133;
      v112 = v110;
LABEL_30:
      v70(v111, v112);
      (*(v136 + 8))(v132, v137);
      return;
    }
  }

  (*(v136 + 8))(v51, v137);
}

uint64_t sub_224C7F024(uint64_t a1, uint64_t a2)
{
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v53 = &v51 - v7;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5B90, &qword_224DB5C50);
  MEMORY[0x28223BE20](v67, v8);
  v10 = &v51 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = &v51 - v18;
  MEMORY[0x28223BE20](v17, v20);
  v72 = &v51 - v21;
  v69 = sub_224DAC2B8();
  v22 = *(v69 - 8);
  MEMORY[0x28223BE20](v69, v23);
  v71 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = a1;
  sub_224C8422C(a1, 0);
  v55 = v2;
  v25 = sub_224DAC108();
  v26 = *(v25 + 16);
  if (v26)
  {
    v60 = v4;
    v70 = v19;
    v58 = v15;
    v28 = *(v22 + 16);
    v27 = v22 + 16;
    v65 = v28;
    v29 = (*(v27 + 64) + 32) & ~*(v27 + 64);
    v51 = v25;
    v30 = v25 + v29;
    v63 = (v5 + 56);
    v64 = (v5 + 16);
    v62 = *(v27 + 56);
    v31 = (v5 + 48);
    v52 = (v5 + 32);
    v57 = (v5 + 8);
    v66 = v27;
    v61 = (v27 - 8);
    v59 = (v5 + 48);
    v28(v71, v25 + v29, v69);
    while (1)
    {
      v34 = sub_224DAC2A8();
      v35 = v31;
      v36 = [v34 extensionIdentity];

      v37 = *MEMORY[0x277CFA130];
      swift_beginAccess();
      v38 = v36 + v37;
      v39 = v72;
      sub_224A3796C(v38, v72, &unk_27D6F5060, &qword_224DB5620);

      v40 = v70;
      v41 = v60;
      (*v64)(v70, v68, v60);
      (*v63)(v40, 0, 1, v41);
      v42 = *(v67 + 48);
      sub_224A3796C(v39, v10, &unk_27D6F5060, &qword_224DB5620);
      sub_224A3796C(v40, &v10[v42], &unk_27D6F5060, &qword_224DB5620);
      v43 = *v35;
      if ((*v35)(v10, 1, v41) == 1)
      {
        break;
      }

      v45 = v58;
      sub_224A3796C(v10, v58, &unk_27D6F5060, &qword_224DB5620);
      if (v43(&v10[v42], 1, v41) == 1)
      {
        sub_224A3311C(v70, &unk_27D6F5060, &qword_224DB5620);
        sub_224A3311C(v72, &unk_27D6F5060, &qword_224DB5620);
        (*v57)(v45, v41);
        v32 = v69;
        v33 = v71;
        v31 = v59;
LABEL_4:
        sub_224A3311C(v10, &qword_27D6F5B90, &qword_224DB5C50);
        goto LABEL_5;
      }

      v46 = &v10[v42];
      v47 = v53;
      (*v52)(v53, v46, v41);
      sub_224A33088(&unk_281351960, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FB0]);
      v56 = sub_224DAEDD8();
      v48 = *v57;
      (*v57)(v47, v41);
      sub_224A3311C(v70, &unk_27D6F5060, &qword_224DB5620);
      sub_224A3311C(v72, &unk_27D6F5060, &qword_224DB5620);
      v48(v45, v41);
      sub_224A3311C(v10, &unk_27D6F5060, &qword_224DB5620);
      v32 = v69;
      v33 = v71;
      v31 = v59;
      if (v56)
      {
        goto LABEL_12;
      }

LABEL_5:
      (*v61)(v33, v32);
      v30 += v62;
      if (!--v26)
      {
      }

      v65(v33, v30, v32);
    }

    sub_224A3311C(v40, &unk_27D6F5060, &qword_224DB5620);
    sub_224A3311C(v72, &unk_27D6F5060, &qword_224DB5620);
    v44 = v43(&v10[v42], 1, v41);
    v33 = v71;
    v31 = v35;
    v32 = v69;
    if (v44 != 1)
    {
      goto LABEL_4;
    }

    sub_224A3311C(v10, &unk_27D6F5060, &qword_224DB5620);
LABEL_12:
    v49 = sub_224DAC2A8();
    sub_224C809D8(v49, v54);
    v33 = v71;

    v31 = v59;
    goto LABEL_5;
  }
}

uint64_t sub_224C7F6A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_224DAC2B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3308, &qword_224DB5C00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_224DB3100;
    *(inited + 32) = a2;
    *(inited + 40) = a3;

    v14 = sub_224AE8AF4(inited);
    v38 = v8;
    v15 = a4;
    v16 = a2;
    v17 = v9;
    v18 = v14;
    swift_setDeallocating();
    sub_224BCA6B4(inited + 32);
    sub_224C8422C(a1, v18);
    v9 = v17;

    v19 = sub_224DAC108();
    MEMORY[0x28223BE20](v19, v20);
    v22 = &v36 - 6;
    *(&v36 - 4) = a1;
    *(&v36 - 3) = v16;
    a4 = v15;
    v8 = v38;
    *(&v36 - 2) = a3;
    v23 = sub_224C8F618;
  }

  else
  {
    sub_224C8422C(a1, 0);

    v24 = sub_224DAC108();
    MEMORY[0x28223BE20](v24, v25);
    v22 = &v36 - 4;
    *(&v36 - 2) = a1;
    v23 = sub_224C8F5F8;
  }

  v26 = sub_224A3BB04(v23, v22, v21);
  v27 = *(v26 + 16);
  if (v27)
  {
    v29 = *(v9 + 16);
    v28 = v9 + 16;
    v30 = *(v28 + 64);
    v36 = v26;
    v31 = v26 + ((v30 + 32) & ~v30);
    v37 = *(v28 + 56);
    v38 = v29;
    v32 = (v28 - 8);
    do
    {
      v38(v12, v31, v8);
      v33 = v28;
      v34 = sub_224DAC2A8();
      (*v32)(v12, v8);
      sub_224C809D8(v34, a4);

      v28 = v33;
      v31 += v37;
      --v27;
    }

    while (v27);
  }
}

uint64_t sub_224C7F964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a3;
  v45 = a4;
  v46 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v42 = &v41 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5B90, &qword_224DB5C50);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v16 = MEMORY[0x28223BE20](v14 - 8, v15);
  v47 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v41 - v20;
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v41 - v23;
  v43 = a1;
  v25 = sub_224DAC2A8();
  v26 = [v25 extensionIdentity];

  v27 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  sub_224A3796C(v26 + v27, v24, &unk_27D6F5060, &qword_224DB5620);

  (*(v6 + 16))(v21, v46, v5);
  (*(v6 + 56))(v21, 0, 1, v5);
  v28 = *(v10 + 56);
  sub_224A3796C(v24, v13, &unk_27D6F5060, &qword_224DB5620);
  sub_224A3796C(v21, &v13[v28], &unk_27D6F5060, &qword_224DB5620);
  v29 = *(v6 + 48);
  if (v29(v13, 1, v5) != 1)
  {
    sub_224A3796C(v13, v47, &unk_27D6F5060, &qword_224DB5620);
    if (v29(&v13[v28], 1, v5) != 1)
    {
      v31 = &v13[v28];
      v32 = v42;
      (*(v6 + 32))(v42, v31, v5);
      sub_224A33088(&unk_281351960, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FB0]);
      v33 = v47;
      LODWORD(v46) = sub_224DAEDD8();
      v34 = *(v6 + 8);
      v34(v32, v5);
      sub_224A3311C(v21, &unk_27D6F5060, &qword_224DB5620);
      sub_224A3311C(v24, &unk_27D6F5060, &qword_224DB5620);
      v34(v33, v5);
      sub_224A3311C(v13, &unk_27D6F5060, &qword_224DB5620);
      if (v46)
      {
        goto LABEL_9;
      }

LABEL_7:
      v30 = 0;
      return v30 & 1;
    }

    sub_224A3311C(v21, &unk_27D6F5060, &qword_224DB5620);
    sub_224A3311C(v24, &unk_27D6F5060, &qword_224DB5620);
    (*(v6 + 8))(v47, v5);
LABEL_6:
    sub_224A3311C(v13, &qword_27D6F5B90, &qword_224DB5C50);
    goto LABEL_7;
  }

  sub_224A3311C(v21, &unk_27D6F5060, &qword_224DB5620);
  sub_224A3311C(v24, &unk_27D6F5060, &qword_224DB5620);
  if (v29(&v13[v28], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_224A3311C(v13, &unk_27D6F5060, &qword_224DB5620);
LABEL_9:
  v35 = sub_224DAC2A8();
  v36 = [v35 kind];

  v37 = sub_224DAEE18();
  v39 = v38;

  if (v37 == v44 && v39 == v45)
  {

    v30 = 1;
  }

  else
  {
    v30 = sub_224DAFD88();
  }

  return v30 & 1;
}

uint64_t sub_224C7FE90(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v34 = &v34 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5B90, &qword_224DB5C50);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v36 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v34 - v17;
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v34 - v20;
  v22 = sub_224DAC2A8();
  v23 = [v22 extensionIdentity];

  v24 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  sub_224A3796C(v23 + v24, v21, &unk_27D6F5060, &qword_224DB5620);

  (*(v3 + 16))(v18, v35, v2);
  (*(v3 + 56))(v18, 0, 1, v2);
  v25 = *(v7 + 56);
  sub_224A3796C(v21, v10, &unk_27D6F5060, &qword_224DB5620);
  sub_224A3796C(v18, &v10[v25], &unk_27D6F5060, &qword_224DB5620);
  v26 = v3;
  v27 = *(v3 + 48);
  if (v27(v10, 1, v2) != 1)
  {
    sub_224A3796C(v10, v36, &unk_27D6F5060, &qword_224DB5620);
    if (v27(&v10[v25], 1, v2) != 1)
    {
      v29 = v26;
      v30 = &v10[v25];
      v31 = v34;
      (*(v26 + 32))(v34, v30, v2);
      sub_224A33088(&unk_281351960, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FB0]);
      v28 = sub_224DAEDD8();
      v32 = *(v29 + 8);
      v32(v31, v2);
      sub_224A3311C(v18, &unk_27D6F5060, &qword_224DB5620);
      sub_224A3311C(v21, &unk_27D6F5060, &qword_224DB5620);
      v32(v36, v2);
      sub_224A3311C(v10, &unk_27D6F5060, &qword_224DB5620);
      return v28 & 1;
    }

    sub_224A3311C(v18, &unk_27D6F5060, &qword_224DB5620);
    sub_224A3311C(v21, &unk_27D6F5060, &qword_224DB5620);
    (*(v26 + 8))(v36, v2);
    goto LABEL_6;
  }

  sub_224A3311C(v18, &unk_27D6F5060, &qword_224DB5620);
  sub_224A3311C(v21, &unk_27D6F5060, &qword_224DB5620);
  if (v27(&v10[v25], 1, v2) != 1)
  {
LABEL_6:
    sub_224A3311C(v10, &qword_27D6F5B90, &qword_224DB5C50);
    v28 = 0;
    return v28 & 1;
  }

  sub_224A3311C(v10, &unk_27D6F5060, &qword_224DB5620);
  v28 = 1;
  return v28 & 1;
}

uint64_t sub_224C80344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a4;
  v7 = sub_224DAC2B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3308, &qword_224DB5C00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_224DB3100;
    *(inited + 32) = a2;
    *(inited + 40) = a3;

    v13 = sub_224AE8AF4(inited);
    swift_setDeallocating();
    sub_224BCA6B4(inited + 32);
  }

  else
  {
    v13 = 0;
  }

  sub_224C84DA4(a1, v13);

  v14 = sub_224DAC108();
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
    v18 = *(v8 + 16);
    v17 = v8 + 16;
    v39 = v18;
    v40 = v16;
    v19 = *(v17 + 64);
    v35 = v14;
    v36 = v7;
    v20 = v14 + ((v19 + 32) & ~v19);
    v38 = *(v17 + 56);
    v41 = v17;
    v21 = (v17 - 8);
    v18(v11, v20, v7);
    while (1)
    {
      v23 = sub_224DAC2A8();
      v24 = [v23 extensionIdentity];

      LOBYTE(v23) = sub_224DAF6A8();
      if (v23)
      {
        v25 = sub_224DAC2A8();
        v22 = v25;
        if (!a3)
        {
          goto LABEL_8;
        }

        v26 = a1;
        v27 = a2;
        v28 = a3;
        v29 = [v25 kind];

        v30 = sub_224DAEE18();
        v32 = v31;

        a3 = v28;
        a2 = v27;
        if (v30 == v27 && v32 == a3)
        {

          a1 = v26;
          v7 = v36;
LABEL_7:
          v22 = sub_224DAC2A8();
LABEL_8:
          sub_224C809D8(v22, v37);

          goto LABEL_9;
        }

        v33 = sub_224DAFD88();

        a1 = v26;
        v7 = v36;
        if (v33)
        {
          goto LABEL_7;
        }
      }

LABEL_9:
      (*v21)(v11, v7);
      v20 += v38;
      if (!--v15)
      {
      }

      v39(v11, v20, v7);
    }
  }
}

uint64_t sub_224C80650(uint64_t a1)
{
  v20[3] = a1;
  v2 = sub_224DAC2B8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *(v1 + 152);
  v7 = sub_224DAC108();
  v8 = *(v7 + 16);
  if (v8)
  {
    v20[2] = sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
    v11 = *(v3 + 16);
    v10 = v3 + 16;
    v9 = v11;
    v12 = (*(v10 + 64) + 32) & ~*(v10 + 64);
    v20[0] = v7;
    v13 = v7 + v12;
    v14 = *(v10 + 56);
    v15 = (v10 - 8);
    do
    {
      v16 = v10;
      v9(v6, v13, v2);
      v17 = sub_224DAC2A8();
      v18 = sub_224DAF6A8();

      if (v18)
      {
        sub_224DAC0F8();
      }

      (*v15)(v6, v2);
      v13 += v14;
      --v8;
      v10 = v16;
    }

    while (v8);
  }
}

void sub_224C80818(uint64_t a1, uint64_t a2)
{
  v4 = sub_224DAB8C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = (v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a1 + OBJC_IVAR____TtC10ChronoCore18LiveControlService__queue);
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v10 = v9;
  LOBYTE(v9) = sub_224DAB8F8();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    type metadata accessor for EmptyKey();
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    *(v11 + 24) = 0xE000000000000000;
    v14[1] = v11;
    v12 = sub_224DAD288();
    MEMORY[0x28223BE20](v12, v13);
    v14[-4] = a2;
    v14[-3] = v11;
    v14[-2] = a1;
    sub_224DAC128();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_224C809D8(void *a1, uint64_t a2)
{
  v5 = sub_224DACB08();
  v87 = *(v5 - 8);
  v88 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v89 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DACB28();
  v84 = *(v8 - 8);
  v85 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v86 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DACC88();
  v92 = *(v11 - 8);
  v93 = v11;
  v13 = MEMORY[0x28223BE20](v11, v12);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v91 = &v70 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v82 = (&v70 - v20);
  v76 = sub_224DAC2B8();
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76, v21);
  v23 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_224DACB98();
  v25 = *(v24 - 8);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v83 = &v70 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v70 - v30;
  v32 = sub_224DAB258();
  MEMORY[0x28223BE20](v32, v33);
  v35 = &v70 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v37;
  v79 = v36;
  v38 = *(v37 + 16);
  v90 = v2;
  v38(v35, v2 + OBJC_IVAR____TtC10ChronoCore18LiveControlService_logger);
  v39 = *(v25 + 16);
  v77 = v24;
  v80 = v39;
  v81 = v25 + 16;
  v39(v31, a2, v24);
  v40 = a1;
  v41 = sub_224DAB228();
  v42 = sub_224DAF2A8();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v74 = a2;
    v44 = v43;
    v45 = swift_slowAlloc();
    v72 = v45;
    v73 = swift_slowAlloc();
    v94[0] = v73;
    *v44 = 138543618;
    *(v44 + 4) = v40;
    *v45 = v40;
    *(v44 + 12) = 2082;
    sub_224C8DD50(&unk_281350D28, MEMORY[0x277CF9BF8], MEMORY[0x277CF9C00]);
    v71 = v42;
    v46 = v40;
    v47 = v40;
    v70 = v41;
    v48 = v77;
    v49 = sub_224DAFD28();
    v51 = v50;
    (*(v25 + 8))(v31, v48);
    v52 = sub_224A33F74(v49, v51, v94);
    v40 = v46;

    *(v44 + 14) = v52;
    v53 = v70;
    _os_log_impl(&dword_224A2F000, v70, v71, "Reload live control: %{public}@ for reason: %{public}s", v44, 0x16u);
    v54 = v72;
    sub_224A3311C(v72, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v54, -1, -1);
    v55 = v73;
    __swift_destroy_boxed_opaque_existential_1(v73);
    MEMORY[0x22AA5EED0](v55, -1, -1);
    v56 = v44;
    a2 = v74;
    MEMORY[0x22AA5EED0](v56, -1, -1);
  }

  else
  {

    v48 = v77;
    (*(v25 + 8))(v31, v77);
  }

  (*(v78 + 8))(v35, v79);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v58 = v82;
  (*(*(v57 - 8) + 56))(v82, 1, 1, v57);
  sub_224C86DA4(v40, v58, v23);
  sub_224A3311C(v58, &qword_27D6F56C0, &unk_224DB3580);
  v59 = v90;
  swift_getObjectType();
  sub_224DAC468();
  (*(v84 + 104))(v86, *MEMORY[0x277CF9B50], v85);
  (*(v87 + 104))(v89, *MEMORY[0x277CF9B40], v88);
  v80(v83, a2, v48);
  sub_224DACC48();
  v60 = v91;
  sub_224DACC38();
  (*(v92 + 16))(v15, v60, v93);
  v61 = *(v59 + 320);
  result = v61 + 32;
  v63 = -*(v61 + 16);
  v64 = -1;
  while (1)
  {
    if (v63 + v64 == -1)
    {
      sub_224DAC138();
LABEL_10:
      v68 = v93;
      v69 = *(v92 + 8);
      v69(v15, v93);
      v69(v91, v68);
      return (*(v75 + 8))(v23, v76);
    }

    if (++v64 >= *(v61 + 16))
    {
      break;
    }

    v65 = result + 40;
    sub_224A3317C(result, v94);
    v66 = v95;
    v67 = v96;
    __swift_project_boxed_opaque_existential_1(v94, v95);
    LOBYTE(v66) = (*(v67 + 8))(v23, v15, v66, v67);
    __swift_destroy_boxed_opaque_existential_1(v94);
    result = v65;
    if ((v66 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224C81244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[9] = a5;
  v6[10] = v5;
  v6[7] = a3;
  v6[8] = a4;
  v6[5] = a1;
  v6[6] = a2;
  v7 = sub_224DAE6E8();
  v6[11] = v7;
  v6[12] = *(v7 - 8);
  v6[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v6[14] = swift_task_alloc();
  v8 = sub_224DAC2B8();
  v6[15] = v8;
  v6[16] = *(v8 - 8);
  v6[17] = swift_task_alloc();
  v9 = sub_224DAE718();
  v6[18] = v9;
  v6[19] = *(v9 - 8);
  v6[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224C813FC, 0, 0);
}

uint64_t sub_224C813FC()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 144);
  sub_224DAE728();
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x277CE3C70])
  {
    (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
LABEL_6:
    if (qword_281351448 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 40);
    v9 = sub_224DAB258();
    __swift_project_value_buffer(v9, qword_281364D90);
    v10 = v8;
    v11 = sub_224DAB228();
    v12 = sub_224DAF2A8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 40);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138543362;
      *(v14 + 4) = v13;
      *v15 = v13;
      v16 = v13;
      _os_log_impl(&dword_224A2F000, v11, v12, "[%{public}@]: Performing control action with the intent", v14, 0xCu);
      sub_224A3311C(v15, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v15, -1, -1);
      MEMORY[0x22AA5EED0](v14, -1, -1);
    }

    v18 = *(v0 + 72);
    v17 = *(v0 + 80);
    v19 = *(v0 + 64);
    v46 = *(v0 + 48);
    v20 = *(v0 + 40);

    v21 = swift_task_alloc();
    *(v0 + 168) = v21;
    *(v21 + 16) = v17;
    *(v21 + 24) = v20;
    *(v21 + 32) = v18;
    *(v21 + 40) = v46;
    *(v21 + 56) = v19;
    v22 = swift_task_alloc();
    *(v0 + 176) = v22;
    *v22 = v0;
    v22[1] = sub_224C81A94;
LABEL_11:

    return MEMORY[0x2822008A0]();
  }

  if (v4 == *MEMORY[0x277CE3C68])
  {
    v5 = [*(v0 + 40) extensionIdentity];
    v6 = &v5[*MEMORY[0x277CFA128]];
    swift_beginAccess();
    v7 = *(v6 + 1);

    if (v7)
    {

      goto LABEL_6;
    }

    __swift_project_boxed_opaque_existential_1((*(v0 + 80) + 160), *(*(v0 + 80) + 184));
    if (sub_224DADA48() && (v23 = sub_224DACFB8(), , v23) && (v24 = [v23 controlType], v23, v24 == 1))
    {
      v25 = *(v0 + 136);
      v26 = *(v0 + 112);
      v27 = *(v0 + 40);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
      (*(*(v28 - 8) + 56))(v26, 1, 1, v28);
      sub_224C86DA4(v27, v26, v25);
      sub_224A3311C(v26, &qword_27D6F56C0, &unk_224DB3580);
      v29 = sub_224DAC168();
      if (v29)
      {
        v30 = sub_224D5D26C(v29);
        v32 = v31;

        if (v30)
        {
          *(v0 + 192) = v32;

          if (sub_224DABF18())
          {
            sub_224DA9F98();
          }

          v40 = *(v0 + 80);
          v41 = *(v0 + 40);
          sub_224DA9FA8();
          v42 = sub_224DA9F88();
          *(v0 + 200) = v42;
          v43 = swift_task_alloc();
          *(v0 + 208) = v43;
          v43[2] = v40;
          v43[3] = v41;
          v43[4] = v42;
          v44 = swift_task_alloc();
          *(v0 + 216) = v44;
          *v44 = v0;
          v44[1] = sub_224C81C3C;
          goto LABEL_11;
        }
      }

      v35 = *(v0 + 128);
      v34 = *(v0 + 136);
      v36 = *(v0 + 120);
      v38 = *(v0 + 96);
      v37 = *(v0 + 104);
      v39 = *(v0 + 88);
      sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
      (*(v38 + 104))(v37, *MEMORY[0x277CE3BF8], v39);
      sub_224DAF638();
      swift_willThrow();
      (*(v35 + 8))(v34, v36);

      v33 = *(v0 + 8);
    }

    else
    {

      v33 = *(v0 + 8);
    }

    return v33();
  }

  else
  {

    return sub_224DAFD78();
  }
}

uint64_t sub_224C81A94()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_224C81EE4;
  }

  else
  {

    v2 = sub_224C81BB0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_224C81BB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_224C81C3C()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_224C81E14;
  }

  else
  {

    v2 = sub_224C81D58;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_224C81D58()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_224C81E14()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_224C81EE4()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_224C81F78(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4280, &unk_224DB65C0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v18 - v13;
  __swift_project_boxed_opaque_existential_1((a2 + 280), *(a2 + 304));
  (*(v11 + 16))(v14, a1, v10);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = swift_allocObject();
  (*(v11 + 32))(v16 + v15, v14, v10);
  sub_224B92DFC(a3, a4, a5, sub_224C8F56C, v16);

  return result;
}

uint64_t sub_224C820F4(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4280, &unk_224DB65C0);
    return sub_224DAF0D8();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4280, &unk_224DB65C0);
    return sub_224DAF0E8();
  }
}

double sub_224C82168(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4280, &unk_224DB65C0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  sub_224C822C8(a3, a4, sub_224B677B8, v13);

  return result;
}

uint64_t sub_224C822C8(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v137 = a3;
  v138 = a4;
  v133 = a2;
  v6 = sub_224DAE6E8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4030, &unk_224DB5630);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v130 = &v117 - v13;
  v14 = sub_224DA9908();
  v128 = *(v14 - 8);
  v129 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v127 = &v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_224DA9878();
  v125 = *(v126 - 1);
  MEMORY[0x28223BE20](v126, v17);
  v124 = &v117 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ExtensionTask.SchedulingConfiguration(0);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v131 = &v117 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for ExtensionTask.Identifier(0);
  v24 = MEMORY[0x28223BE20](v22, v23);
  v139 = &v117 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v26);
  v132 = (&v117 - v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  MEMORY[0x28223BE20](v28 - 8, v29);
  v31 = (&v117 - v30);
  v32 = sub_224DAC2B8();
  v135 = *(v32 - 8);
  v136 = v32;
  MEMORY[0x28223BE20](v32, v33);
  v35 = &v117 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  (*(*(v36 - 8) + 56))(v31, 1, 1, v36);
  sub_224C86DA4(a1, v31, v35);
  sub_224A3311C(v31, &qword_27D6F56C0, &unk_224DB3580);
  v134 = v4;
  v37 = sub_224DAC168();
  if (v37 && (v38 = sub_224D5D26C(v37), , v38))
  {

    if (qword_281351448 != -1)
    {
      swift_once();
    }

    v123 = v35;
    v39 = sub_224DAB258();
    __swift_project_value_buffer(v39, qword_281364D90);
    v40 = a1;
    v41 = v133;

    v42 = sub_224DAB228();
    v43 = sub_224DAF2A8();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v142[0] = v46;
      *v44 = 138543618;
      *(v44 + 4) = v40;
      *v45 = v40;
      *(v44 + 12) = 2082;
      v140 = v41;
      sub_224DA9FA8();
      sub_224C8DD50(&qword_27D6F5BC0, MEMORY[0x277CF9F80], MEMORY[0x277CF9F88]);
      v47 = v40;
      v48 = sub_224DAFD28();
      v50 = sub_224A33F74(v48, v49, v142);

      *(v44 + 14) = v50;
      _os_log_impl(&dword_224A2F000, v42, v43, "Updating state requested for control: %{public}@ to %{public}s...", v44, 0x16u);
      sub_224A3311C(v45, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v45, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x22AA5EED0](v46, -1, -1);
      MEMORY[0x22AA5EED0](v44, -1, -1);
    }

    v51 = v40;
    v52 = sub_224C83DFC(v51);
    v53 = v132;
    *v132 = v51;
    v53[1] = v52;
    v54 = v51;
    v122 = v51;
    v55 = v53;
    swift_storeEnumTagMultiPayload();
    v121 = type metadata accessor for ExtensionTask.Identifier;
    sub_224A4152C(v55, v139, type metadata accessor for ExtensionTask.Identifier);
    v56 = [v54 extensionIdentity];
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33D0, qword_224DB3710);
    v58 = v131;
    (*(*(v57 - 8) + 56))(v131, 1, 1, v57);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5070, &unk_224DB3670);
    v59 = *(type metadata accessor for ExtensionTask.SchedulingOption(0) - 8);
    v60 = *(v59 + 72);
    v61 = (*(v59 + 80) + 32) & ~*(v59 + 80);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_224DB8BC0;
    v63 = v62 + v61;
    v64 = sub_224DAE8B8();
    v65 = *(v64 - 8);
    v66 = *(v65 + 56);
    v66(v63, 4, 5, v64);
    v66(v63 + v60, 3, 5, v64);
    (*(v65 + 104))(v63 + 2 * v60, *MEMORY[0x277CE3D20], v64);
    v66(v63 + 2 * v60, 0, 5, v64);
    v117 = type metadata accessor for ExtensionTask(0);
    v67 = objc_allocWithZone(v117);
    sub_224DAE908();
    v68 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions;
    *&v67[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions] = MEMORY[0x277D84F90];
    v69 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_powerlogWakeReason;
    v118 = sub_224DAC938();
    v70 = *(v118 - 8);
    v71 = *(v70 + 56);
    v119 = v70 + 56;
    v120 = v71;
    v71(&v67[v69], 1, 1, v118);
    v72 = &v67[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_syncWorkItem];
    *v72 = 0;
    v72[1] = 0;
    v73 = &v67[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem];
    *v73 = 0;
    v73[1] = 0;
    v74 = &v67[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskWorkItem];
    *v74 = 0;
    v74[1] = 0;
    v75 = &v67[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion];
    *v75 = 0;
    v75[1] = 0;
    v76 = v124;
    sub_224DA9868();
    (*(v125 + 32))(&v67[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_creationDate], v76, v126);
    *&v67[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_target] = v56;
    sub_224A4152C(v58, &v67[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingConfiguration], type metadata accessor for ExtensionTask.SchedulingConfiguration);
    swift_beginAccess();
    *&v67[v68] = v62;
    v126 = v56;

    v77 = &v67[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_cost];
    *v77 = 1;
    v77[8] = 0;
    sub_224A4152C(v139, &v67[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_identifier], v121);
    v78 = v127;
    sub_224DA98F8();
    v80 = v128;
    v79 = v129;
    (*(v128 + 16))(&v67[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskIdentifier], v78, v129);
    v140 = sub_224DA98E8();
    sub_224A3F6A4();
    v81 = sub_224DAEF18();
    v83 = sub_224A3D19C(8, v81, v82);
    v85 = v84;
    v87 = v86;
    v89 = v88;

    v90 = MEMORY[0x22AA5D1C0](v83, v85, v87, v89);
    v92 = v91;

    v93 = &v67[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest];
    *v93 = v90;
    v93[1] = v92;
    v67[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_allowCostOverride] = 1;
    v141.receiver = v67;
    v141.super_class = v117;
    v94 = objc_msgSendSuper2(&v141, sel_init);

    (*(v80 + 8))(v78, v79);
    sub_224A3D358(v131, type metadata accessor for ExtensionTask.SchedulingConfiguration);
    sub_224A3D358(v139, type metadata accessor for ExtensionTask.Identifier);
    v95 = v130;
    v96 = v118;
    (*(v70 + 104))(v130, *MEMORY[0x277CF9AE8], v118);
    v120(v95, 0, 1, v96);
    v97 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_powerlogWakeReason;
    swift_beginAccess();
    sub_224A838C0(v95, &v94[v97], &qword_27D6F4030, &unk_224DB5630);
    swift_endAccess();
    v98 = swift_allocObject();
    v99 = v122;
    v100 = v133;
    *(v98 + 16) = v122;
    *(v98 + 24) = v100;
    v101 = &v94[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem];
    v102 = *&v94[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem];
    v103 = *&v94[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem + 8];
    *v101 = sub_224C900CC;
    v101[1] = v98;
    v104 = v99;

    sub_224A3D418(v102, v103);
    v105 = swift_allocObject();
    v106 = v137;
    v107 = v138;
    v105[2] = v104;
    v105[3] = v106;
    v108 = v134;
    v105[4] = v107;
    v105[5] = v108;
    v109 = &v94[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion];
    v110 = *&v94[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion];
    v111 = *&v94[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion + 8];
    *v109 = sub_224C90094;
    *(v109 + 1) = v105;
    v112 = v104;

    sub_224A3D418(v110, v111);
    v113 = v108[51];
    v114 = v108[52];
    __swift_project_boxed_opaque_existential_1(v108 + 48, v113);
    (*(v114 + 16))(v94, v113, v114);

    sub_224A3D358(v132, type metadata accessor for ExtensionTask.Identifier);
    v35 = v123;
  }

  else
  {
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    (*(v7 + 104))(v10, *MEMORY[0x277CE3BF8], v6);
    v115 = sub_224DAF638();
    v137();
  }

  return (*(v135 + 8))(v35, v136);
}

void sub_224C830C8(uint64_t a1, void (*a2)(void), uint64_t a3, void *a4, uint64_t a5)
{
  v9 = sub_224DAE6E8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &aBlock[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224A3796C(a1, aBlock, &qword_27D6F4760, &unk_224DB3680);
  if (v25)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5080, &qword_224DB3690);
    if (swift_dynamicCast())
    {
      v14 = v28;
      sub_224DAEB88();
      v15 = a4;

      v16 = sub_224DAEB78();
      v17 = swift_allocObject();
      *(v17 + 16) = a2;
      *(v17 + 24) = a3;
      v26 = sub_224B9D69C;
      v27 = v17;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_224BC6D2C;
      v25 = &block_descriptor_36;
      v18 = _Block_copy(aBlock);

      [v14 setControlState:v16 completion:v18];
      _Block_release(v18);
      swift_unknownObjectRelease();
      goto LABEL_10;
    }
  }

  else
  {
    sub_224A3311C(aBlock, &qword_27D6F4760, &unk_224DB3680);
  }

  if (qword_281351448 != -1)
  {
    swift_once();
  }

  v19 = sub_224DAB258();
  __swift_project_value_buffer(v19, qword_281364D90);
  v20 = sub_224DAB228();
  v21 = sub_224DAF288();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_224A2F000, v20, v21, "Unable to update state in extension: No extension session", v22, 2u);
    MEMORY[0x22AA5EED0](v22, -1, -1);
  }

  sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
  (*(v10 + 104))(v13, *MEMORY[0x277CE3C40], v9);
  v16 = sub_224DAF638();
  a2();
LABEL_10:
}

double sub_224C83424(uint64_t a1, uint64_t a2, void *a3, void *a4, void (*a5)(void *), uint64_t a6, uint64_t a7)
{
  v67 = a7;
  v11 = sub_224DACB98();
  v65 = *(v11 - 8);
  v66 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v64 = v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5BC8, &qword_224DBCED8);
  v60 = *(v14 - 8);
  v61 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v58 = v57 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5BD0, &qword_224DBCEE0);
  v18 = *(v17 - 8);
  v62 = v17;
  v63 = v18;
  MEMORY[0x28223BE20](v17, v19);
  v59 = v57 - v20;
  if (qword_281351448 != -1)
  {
    swift_once();
  }

  v21 = sub_224DAB258();
  __swift_project_value_buffer(v21, qword_281364D90);
  v22 = a4;
  v23 = a3;
  v24 = sub_224DAB228();
  v25 = sub_224DAF2A8();

  if (os_log_type_enabled(v24, v25))
  {
    v57[1] = a6;
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v70[0] = v27;
    *v26 = 136446466;
    v28 = [v22 _loggingIdentifier];
    v29 = sub_224DAEE18();
    v31 = v30;

    v32 = sub_224A33F74(v29, v31, v70);

    *(v26 + 4) = v32;
    *(v26 + 12) = 2082;
    if (a3)
    {
      swift_getErrorValue();
      v33 = sub_224D1680C(v68, v69);
      v35 = v34;
    }

    else
    {
      v35 = 0xE300000000000000;
      v33 = 7104878;
    }

    v36 = sub_224A33F74(v33, v35, v70);

    *(v26 + 14) = v36;
    _os_log_impl(&dword_224A2F000, v24, v25, "[%{public}s] Set state action completed (error=%{public}s); now reloading control for data consistency...", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v27, -1, -1);
    MEMORY[0x22AA5EED0](v26, -1, -1);
  }

  else
  {
  }

  a5(a3);
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  v70[0] = sub_224DAC058();
  *(swift_allocObject() + 16) = v22;
  v38 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5550, &qword_224DBBBD8);
  sub_224A33088(&unk_2813510C0, &qword_27D6F5550, &qword_224DBBBD8, MEMORY[0x277CBCD90]);
  v39 = v58;
  sub_224DAB438();

  sub_224A33088(&qword_27D6F5BD8, &qword_27D6F5BC8, &qword_224DBCED8, MEMORY[0x277CBCC90]);
  v40 = v59;
  v41 = v61;
  sub_224DAB418();
  (*(v60 + 8))(v39, v41);
  v42 = swift_allocObject();
  *(v42 + 16) = v38;
  *(v42 + 24) = v37;
  sub_224A33088(&qword_27D6F5BE0, &qword_27D6F5BD0, &qword_224DBCEE0, MEMORY[0x277CBCC58]);
  v43 = v38;

  v44 = v62;
  v45 = sub_224DAB488();

  (*(v63 + 8))(v40, v44);
  swift_beginAccess();
  *(v37 + 16) = v45;

  v46 = v64;
  v47 = v65;
  v48 = v66;
  (*(v65 + 104))(v64, *MEMORY[0x277CF9B68], v66);
  v49 = [v43 extensionIdentity];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3308, &qword_224DB5C00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_224DB3100;
  v51 = [v43 kind];
  v52 = sub_224DAEE18();
  v54 = v53;

  *(inited + 32) = v52;
  *(inited + 40) = v54;
  v55 = sub_224AE8AF4(inited);
  swift_setDeallocating();
  sub_224BCA6B4(inited + 32);
  sub_224C84DA4(v49, v55);

  sub_224C809D8(v43, v46);
  (*(v47 + 8))(v46, v48);

  return result;
}

uint64_t sub_224C83B14(uint64_t a1, uint64_t a2)
{
  v2 = sub_224DAC2B8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5240, &qword_224DBB330);
  MEMORY[0x22AA5BB00](v7);
  v8 = sub_224DAC2A8();
  (*(v3 + 8))(v6, v2);
  v9 = sub_224DAF6A8();

  return v9 & 1;
}

double sub_224C83C44(uint64_t a1, void *a2, uint64_t a3)
{
  if (qword_281351448 != -1)
  {
    swift_once();
  }

  v5 = sub_224DAB258();
  __swift_project_value_buffer(v5, qword_281364D90);
  v6 = a2;
  v7 = sub_224DAB228();
  v8 = sub_224DAF2A8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17[0] = v10;
    *v9 = 136446210;
    v11 = [v6 _loggingIdentifier];
    v12 = sub_224DAEE18();
    v14 = v13;

    v15 = sub_224A33F74(v12, v14, v17);

    *(v9 + 4) = v15;
    _os_log_impl(&dword_224A2F000, v7, v8, "[%{public}s] Follow-on reload completed.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x22AA5EED0](v10, -1, -1);
    MEMORY[0x22AA5EED0](v9, -1, -1);
  }

  swift_beginAccess();
  if (*(a3 + 16))
  {

    sub_224DAB328();
  }

  return result;
}

uint64_t sub_224C83DFC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v32 - v10;
  v37 = 0;
  v12 = [a1 extensionIdentity];
  v13 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  sub_224A3796C(v12 + v13, v6, &unk_27D6F5060, &qword_224DB5620);

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_224A3311C(v6, &unk_27D6F5060, &qword_224DB5620);
    return 0;
  }

  (*(v8 + 32))(v11, v6, v7);
  v15 = v1[28];
  v16 = v1[29];
  __swift_project_boxed_opaque_existential_1(v1 + 25, v15);
  v17 = (*(v16 + 24))(768, v15, v16);
  if (!v17)
  {
    (*(v8 + 8))(v11, v7);
    return 0;
  }

  v18 = sub_224A7B208(v17);
  MEMORY[0x28223BE20](v18, v19);
  *(&v32 - 2) = v11;
  v21 = sub_224A4ECE8(sub_224C8F404, (&v32 - 4), v20);

  if (v21 >> 62)
  {
    v22 = sub_224DAF838();
    if (v22)
    {
      goto LABEL_6;
    }

LABEL_21:

    v31 = 0;
    goto LABEL_22;
  }

  v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v22)
  {
    goto LABEL_21;
  }

LABEL_6:
  v33 = v11;
  v34 = v8;
  v35 = v7;
  result = sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
  if (v22 < 1)
  {
    __break(1u);
    return result;
  }

  v23 = 0;
  v24 = v21 & 0xC000000000000001;
  v36 = v21 & 0xC000000000000001;
  do
  {
    if (v24)
    {
      v25 = MEMORY[0x22AA5DCC0](v23, v21);
    }

    else
    {
      v25 = *(v21 + 8 * v23 + 32);
    }

    v26 = v25;
    v27 = [v25 controlIdentity];
    v28 = sub_224DAF6A8();

    if (v28)
    {
      v29 = v37;
      if (!v37)
      {
        v29 = MEMORY[0x277D84F90];
      }

      v37 = v29;
      v30 = v26;
      MEMORY[0x22AA5D350]();
      if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_224DAF038();
      }

      sub_224DAF078();
      v24 = v36;
    }

    ++v23;
  }

  while (v22 != v23);

  v31 = v37;
  v8 = v34;
  v7 = v35;
  v11 = v33;
LABEL_22:
  (*(v8 + 8))(v11, v7);
  return v31;
}

void sub_224C8422C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v6 = *(v66 - 8);
  MEMORY[0x28223BE20](v66, v7);
  v65 = &v53 - v8;
  v9 = sub_224DA9878();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v64 = (&v53 - v16);
  __swift_project_boxed_opaque_existential_1((v2 + 160), *(v2 + 184));
  v17 = sub_224DADA48();
  if (v17)
  {
    MEMORY[0x28223BE20](v17, v18);
    *(&v53 - 2) = a1;
    v19 = sub_224DACF48();

    if (a2)
    {
      if (v19)
      {
        sub_224DA9868();
        v20 = sub_224DACF18();
        v14 = v20;
        v56 = v9;
        v55 = v10;
        v54 = v19;
        if (v20 >> 62)
        {
          goto LABEL_47;
        }

        for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_224DAF838())
        {
          v22 = 0;
          v58 = (v3 + OBJC_IVAR____TtC10ChronoCore18LiveControlService_reloadStateService);
          v3 = v14 & 0xC000000000000001;
          v59 = v14 + 32;
          v60 = v14 & 0xFFFFFFFFFFFFFF8;
          v23 = a2 + 56;
          v57 = v6 + 1;
          v67 = i;
          while (1)
          {
            if (v3)
            {
              v24 = MEMORY[0x22AA5DCC0](v22, v14);
            }

            else
            {
              if (v22 >= *(v60 + 16))
              {
                goto LABEL_46;
              }

              v24 = *(v59 + 8 * v22);
            }

            v6 = v24;
            if (__OFADD__(v22++, 1))
            {
              break;
            }

            v26 = [v24 kind];
            v27 = sub_224DAEE18();
            v29 = v28;

            if (*(a2 + 16))
            {
              sub_224DAFE68();
              sub_224DAEE78();
              v30 = sub_224DAFEA8();
              v31 = -1 << *(a2 + 32);
              v32 = v30 & ~v31;
              if ((*(v23 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
              {
                v33 = ~v31;
                while (1)
                {
                  v34 = (*(a2 + 48) + 16 * v32);
                  v35 = *v34 == v27 && v34[1] == v29;
                  if (v35 || (sub_224DAFD88() & 1) != 0)
                  {
                    break;
                  }

                  v32 = (v32 + 1) & v33;
                  if (((*(v23 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
                  {
                    goto LABEL_23;
                  }
                }

                v36 = v58[4];
                v62 = v58[3];
                v63 = v36;
                v61 = __swift_project_boxed_opaque_existential_1(v58, v62);
                v37 = [v6 extensionIdentity];
                v38 = v65;
                sub_224DAF528();

                v39 = [v6 kind];
                sub_224DAEE18();

                sub_224DAD1B8();

                (*v57)(v38, v66);
                i = v67;
              }

              else
              {
LABEL_23:

                i = v67;
              }
            }

            else
            {
            }

            if (v22 == i)
            {
              goto LABEL_48;
            }
          }

          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          ;
        }

LABEL_48:

        (*(v55 + 8))(v64, v56);
      }
    }

    else if (v19)
    {

      v40 = sub_224DACF58();
      v54 = v19;

      sub_224DA9868();
      v56 = v9;
      v55 = v10;
      v63 = v3;
      v67 = v14;
      if ((v40 & 0xC000000000000001) != 0)
      {
        sub_224DAF7E8();
        sub_224DAF538();
        sub_224C8DD50(&unk_2813509A0, MEMORY[0x277CFA140], MEMORY[0x277D85378]);
        sub_224DAF1F8();
        v42 = v68;
        v41 = v69;
        v43 = v70;
        v44 = v71;
        v45 = v72;
      }

      else
      {
        v44 = 0;
        v46 = -1 << *(v40 + 32);
        v41 = v40 + 56;
        v43 = ~v46;
        v47 = -v46;
        if (v47 < 64)
        {
          v48 = ~(-1 << v47);
        }

        else
        {
          v48 = -1;
        }

        v45 = v48 & *(v40 + 56);
        v42 = v40;
      }

      v61 = v43;
      v62 = (v43 + 64) >> 6;
      v64 = (v6 + 1);
      if (v42 < 0)
      {
        goto LABEL_39;
      }

      while (1)
      {
        v49 = v44;
        v50 = v45;
        v51 = v44;
        if (!v45)
        {
          break;
        }

LABEL_37:
        v14 = (v50 - 1) & v50;
        v6 = *(*(v42 + 48) + ((v51 << 9) | (8 * __clz(__rbit64(v50)))));
        if (!v6)
        {
          goto LABEL_43;
        }

        while (1)
        {
          a2 = v42;
          __swift_project_boxed_opaque_existential_1((v63 + OBJC_IVAR____TtC10ChronoCore18LiveControlService_reloadStateService), *(v63 + OBJC_IVAR____TtC10ChronoCore18LiveControlService_reloadStateService + 24));
          v3 = v65;
          sub_224DAF528();
          sub_224DAD1B8();

          (*v64)(v3, v66);
          v44 = v51;
          v45 = v14;
          if ((v42 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_39:
          v52 = sub_224DAF878();
          if (v52)
          {
            v73 = v52;
            sub_224DAF538();
            swift_dynamicCast();
            v6 = v74;
            v51 = v44;
            v14 = v45;
            if (v74)
            {
              continue;
            }
          }

          goto LABEL_43;
        }
      }

      while (1)
      {
        v51 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
          goto LABEL_45;
        }

        if (v51 >= v62)
        {
          break;
        }

        v50 = *(v41 + 8 * v51);
        ++v49;
        if (v50)
        {
          goto LABEL_37;
        }
      }

LABEL_43:
      (*(v55 + 8))(v67, v56);

      sub_224A3B7E4(v42);
    }
  }
}