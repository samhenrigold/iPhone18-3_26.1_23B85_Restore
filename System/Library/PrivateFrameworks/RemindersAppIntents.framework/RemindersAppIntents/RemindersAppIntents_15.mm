char *sub_261C84BF4()
{
  v0 = sub_261CFC8F4();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v29 - v5;
  v7 = sub_261C851D8();
  v8 = *(v7 + 2);
  if (v8)
  {
    v11 = *(v1 + 16);
    v9 = v1 + 16;
    v10 = v11;
    v12 = *(v9 + 64);
    v29 = v7;
    v13 = &v7[(v12 + 32) & ~v12];
    v36 = *(v9 + 56);
    v14 = (v9 + 72);
    v35 = *MEMORY[0x277CB9D88];
    v15 = (v9 - 8);
    v30 = (v9 + 80);
    v34 = MEMORY[0x277D84F90];
    v31 = v11;
    v32 = v9;
    v11(v6, v13, v0);
    while (1)
    {
      v10(v4, v6, v0);
      v17 = (*v14)(v4, v0);
      if (v17 == v35)
      {
        (*v30)(v4, v0);
        v18 = objc_allocWithZone(MEMORY[0x277CBDB70]);
        v19 = sub_261CFFA54();

        v20 = [v18 initWithStringValue_];

        v21 = [v20 unformattedInternationalStringValue];
        if (v21)
        {
          v33 = sub_261CFFA74();
          v23 = v22;

          (*v15)(v6, v0);
          v24 = (swift_isUniquelyReferenced_nonNull_native() & 1) != 0 ? v34 : sub_261B41B60(0, *(v34 + 2) + 1, 1, v34);
          v26 = *(v24 + 2);
          v25 = *(v24 + 3);
          if (v26 >= v25 >> 1)
          {
            v24 = sub_261B41B60((v25 > 1), v26 + 1, 1, v24);
          }

          *(v24 + 2) = v26 + 1;
          v34 = v24;
          v27 = &v24[16 * v26];
          *(v27 + 4) = v33;
          *(v27 + 5) = v23;
        }

        else
        {
          (*v15)(v6, v0);
        }

        v10 = v31;
      }

      else
      {
        v16 = *v15;
        (*v15)(v6, v0);
        v16(v4, v0);
      }

      v13 += v36;
      if (!--v8)
      {
        break;
      }

      v10(v6, v13, v0);
    }

    return v34;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }
}

char *sub_261C84F24()
{
  v0 = sub_261CFC8F4();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = (v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v2);
  v6 = v23 - v5;
  v7 = sub_261C851D8();
  v8 = *(v7 + 2);
  if (v8)
  {
    v11 = *(v1 + 16);
    v10 = v1 + 16;
    v9 = v11;
    v12 = (*(v10 + 64) + 32) & ~*(v10 + 64);
    v23[1] = v7;
    v13 = &v7[v12];
    v31 = *(v10 + 56);
    v14 = (v10 + 16);
    v15 = (v10 + 72);
    v30 = *MEMORY[0x277CB9D90];
    v24 = (v10 + 80);
    v25 = (v10 - 8);
    v16 = MEMORY[0x277D84F90];
    v26 = v11;
    v27 = v6;
    v28 = v10;
    v11(v6, &v7[v12], v0);
    while (1)
    {
      (*v14)(v4, v6, v0);
      v17 = (*v15)(v4, v0);
      if (v17 == v30)
      {
        (*v24)(v4, v0);
        v18 = v4[1];
        v29 = *v4;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_261B41B60(0, *(v16 + 2) + 1, 1, v16);
        }

        v20 = *(v16 + 2);
        v19 = *(v16 + 3);
        if (v20 >= v19 >> 1)
        {
          v16 = sub_261B41B60((v19 > 1), v20 + 1, 1, v16);
        }

        *(v16 + 2) = v20 + 1;
        v21 = &v16[16 * v20];
        *(v21 + 4) = v29;
        *(v21 + 5) = v18;
        v6 = v27;
        v9 = v26;
      }

      else
      {
        (*v25)(v4, v0);
      }

      v13 += v31;
      if (!--v8)
      {
        break;
      }

      v9(v6, v13, v0);
    }
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v16;
}

id sub_261C851A0()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBDAB8]);

  return [v0 init];
}

char *sub_261C851D8()
{
  v1 = sub_261CFC914();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v49 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB0D8, &qword_261D050F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v44 - v5;
  v7 = sub_261CFC8F4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v45 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v44 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v44 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v44 - v17;
  v19 = MEMORY[0x277D84F90];
  v53 = MEMORY[0x277D84F90];
  sub_261CFC934();
  v20 = v2[6](v6, 1, v1);
  v50 = v7;
  v51 = v8;
  if (v20 == 1)
  {
    sub_261AE6A40(v6, &qword_27FEDB0D8, &qword_261D050F0);
  }

  else
  {
    v47 = v0;
    sub_261CFC904();
    v48 = v2;
    (v2[1])(v6, v1);
    v21 = *(v8 + 32);
    v21(v18, v16, v7);
    (*(v8 + 16))(v13, v18, v7);
    v22 = sub_261B41B38(0, 1, 1, MEMORY[0x277D84F90]);
    v24 = *(v22 + 2);
    v23 = *(v22 + 3);
    v25 = v1;
    if (v24 >= v23 >> 1)
    {
      v22 = sub_261B41B38((v23 > 1), v24 + 1, 1, v22);
    }

    v26 = v51 + 8;
    v27 = v18;
    v28 = v50;
    (*(v51 + 8))(v27, v50);
    *(v22 + 2) = v24 + 1;
    v21(&v22[((*(v26 + 72) + 32) & ~*(v26 + 72)) + *(v26 + 64) * v24], v13, v28);
    v53 = v22;
    v1 = v25;
    v2 = v48;
    v19 = MEMORY[0x277D84F90];
  }

  v29 = sub_261CFC944();
  v30 = *(v29 + 16);
  v31 = v45;
  if (v30)
  {
    v52 = v19;
    sub_261B3A14C(0, v30, 0);
    v33 = v2[2];
    v32 = (v2 + 2);
    v34 = v32[64];
    v44 = v29;
    v35 = v29 + ((v34 + 32) & ~v34);
    v47 = *(v32 + 7);
    v48 = v33;
    v36 = (v32 - 8);
    v37 = v52;
    v46 = v51 + 32;
    do
    {
      v38 = v49;
      v39 = v32;
      (v48)(v49, v35, v1);
      sub_261CFC904();
      v40 = v1;
      (*v36)(v38, v1);
      v52 = v37;
      v42 = *(v37 + 16);
      v41 = *(v37 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_261B3A14C((v41 > 1), v42 + 1, 1);
        v37 = v52;
      }

      *(v37 + 16) = v42 + 1;
      (*(v51 + 32))(v37 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v42, v31, v50);
      v35 += v47;
      --v30;
      v1 = v40;
      v32 = v39;
    }

    while (v30);
  }

  else
  {

    v37 = MEMORY[0x277D84F90];
  }

  sub_261BBBA88(v37);
  return v53;
}

uint64_t sub_261C85690(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_261C867F8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_261C8570C(v6);
  return sub_261D00384();
}

void sub_261C8570C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_261D005D4();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_261B05020(0, &qword_27FEDD488, 0x277D44648);
        v6 = sub_261CFFCA4();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_261C85A40(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_261C85820(0, v2, 1, a1);
  }
}

void sub_261C85820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = sub_261CFD7E4();
  v8 = MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  v30 = a2;
  if (a3 != a2)
  {
    v13 = (v10 + 8);
    v36 = *a4;
    v14 = v36 + 8 * a3 - 8;
    v15 = a1 - a3;
LABEL_5:
    v32 = v14;
    v33 = a3;
    v16 = *(v36 + 8 * a3);
    v31 = v15;
    v17 = v15;
    while (1)
    {
      v18 = *v14;
      v19 = v16;
      v20 = v18;
      v21 = [v19 creationDate];
      sub_261CFD7C4();

      v22 = [v20 creationDate];
      v23 = v34;
      sub_261CFD7C4();

      LOBYTE(v22) = sub_261CFD7A4();
      v24 = *v13;
      v25 = v23;
      v26 = v35;
      (*v13)(v25, v35);
      v24(v12, v26);

      if ((v22 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v14 = v32 + 8;
        v15 = v31 - 1;
        if (v33 + 1 == v30)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v27 = *v14;
      v16 = *(v14 + 8);
      *v14 = v16;
      *(v14 + 8) = v27;
      v14 -= 8;
      if (__CFADD__(v17++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_261C85A40(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v116 = a1;
  v125 = sub_261CFD7E4();
  v9 = MEMORY[0x28223BE20](v125);
  v124 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v123 = &v110 - v12;
  v13 = a3[1];
  if (v13 < 1)
  {
    v15 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v116;
    if (!*v116)
    {
      goto LABEL_127;
    }

    a4 = v15;
    v16 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v105 = a4;
    }

    else
    {
LABEL_121:
      v105 = sub_261C867D8(a4);
    }

    v126 = v105;
    v106 = *(v105 + 2);
    if (v106 >= 2)
    {
      while (*v16)
      {
        a4 = *&v105[16 * v106];
        v107 = v105;
        v108 = *&v105[16 * v106 + 24];
        sub_261C862B0((*v16 + 8 * a4), (*v16 + 8 * *&v105[16 * v106 + 16]), (*v16 + 8 * v108), v5);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v108 < a4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = sub_261C867D8(v107);
        }

        if (v106 - 2 >= *(v107 + 2))
        {
          goto LABEL_115;
        }

        v109 = &v107[16 * v106];
        *v109 = a4;
        v109[1] = v108;
        v126 = v107;
        sub_261C8674C(v106 - 1);
        v105 = v126;
        v106 = *(v126 + 2);
        if (v106 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_125;
    }

LABEL_99:

    return;
  }

  v14 = 0;
  v122 = (v11 + 8);
  v15 = MEMORY[0x277D84F90];
  v115 = a4;
  v111 = a3;
  while (1)
  {
    v16 = v14++;
    if (v14 < v13)
    {
      v120 = v13;
      v113 = v15;
      v114 = v6;
      v17 = *a3;
      v18 = *(*a3 + 8 * v14);
      v119 = 8 * v16;
      v19 = (v17 + 8 * v16);
      v20 = *v19;
      v5 = (v19 + 2);
      v21 = v18;
      v22 = v20;
      v23 = [v21 creationDate];
      v24 = v123;
      sub_261CFD7C4();

      v25 = [v22 creationDate];
      v26 = v124;
      sub_261CFD7C4();

      LODWORD(v121) = sub_261CFD7A4();
      v27 = *v122;
      v28 = v125;
      (*v122)(v26, v125);
      v27(v24, v28);

      v112 = v16;
      v29 = (v16 + 2);
      while (1)
      {
        v14 = v120;
        if (v120 == v29)
        {
          break;
        }

        v30 = *(v5 - 8);
        v31 = *v5;
        v32 = v30;
        v33 = [v31 creationDate];
        v34 = v123;
        sub_261CFD7C4();

        v35 = [v32 creationDate];
        v36 = v124;
        sub_261CFD7C4();

        LODWORD(v35) = sub_261CFD7A4() & 1;
        v37 = v36;
        v38 = v125;
        v27(v37, v125);
        v27(v34, v38);

        ++v29;
        v5 += 8;
        if ((v121 & 1) != v35)
        {
          v14 = (v29 - 1);
          break;
        }
      }

      v15 = v113;
      v6 = v114;
      a4 = v115;
      v16 = v112;
      v39 = v119;
      if (v121)
      {
        if (v14 < v112)
        {
          goto LABEL_118;
        }

        a3 = v111;
        if (v112 < v14)
        {
          v40 = 8 * v14 - 8;
          v41 = v14;
          v42 = v112;
          do
          {
            if (v42 != --v41)
            {
              v44 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v43 = *(v44 + v39);
              *(v44 + v39) = *(v44 + v40);
              *(v44 + v40) = v43;
            }

            v42 = (v42 + 1);
            v40 -= 8;
            v39 += 8;
          }

          while (v42 < v41);
        }
      }

      else
      {
        a3 = v111;
      }
    }

    v45 = a3[1];
    if (v14 < v45)
    {
      if (__OFSUB__(v14, v16))
      {
        goto LABEL_117;
      }

      if (v14 - v16 < a4)
      {
        v46 = (v16 + a4);
        if (__OFADD__(v16, a4))
        {
          goto LABEL_119;
        }

        if (v46 >= v45)
        {
          v46 = a3[1];
        }

        if (v46 < v16)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v14 != v46)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v14 < v16)
    {
      goto LABEL_116;
    }

    v61 = v15;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v15 = v61;
    }

    else
    {
      v15 = sub_261B418E4(0, *(v61 + 2) + 1, 1, v61);
    }

    a4 = *(v15 + 2);
    v62 = *(v15 + 3);
    v5 = a4 + 1;
    if (a4 >= v62 >> 1)
    {
      v15 = sub_261B418E4((v62 > 1), a4 + 1, 1, v15);
    }

    *(v15 + 2) = v5;
    v63 = &v15[16 * a4];
    *(v63 + 4) = v16;
    *(v63 + 5) = v14;
    v64 = *v116;
    if (!*v116)
    {
      goto LABEL_126;
    }

    if (a4)
    {
      while (1)
      {
        v65 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v66 = *(v15 + 4);
          v67 = *(v15 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_56:
          if (v69)
          {
            goto LABEL_105;
          }

          v82 = &v15[16 * v5];
          v84 = *v82;
          v83 = *(v82 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_108;
          }

          v88 = &v15[16 * v65 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_112;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v65 = v5 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v92 = &v15[16 * v5];
        v94 = *v92;
        v93 = *(v92 + 1);
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_70:
        if (v87)
        {
          goto LABEL_107;
        }

        v95 = &v15[16 * v65];
        v97 = *(v95 + 4);
        v96 = *(v95 + 5);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_110;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_77:
        a4 = v65 - 1;
        if (v65 - 1 >= v5)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v103 = v15;
        v5 = *&v15[16 * a4 + 32];
        v16 = *&v15[16 * v65 + 40];
        sub_261C862B0((*a3 + 8 * v5), (*a3 + 8 * *&v15[16 * v65 + 32]), (*a3 + 8 * v16), v64);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v16 < v5)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_261C867D8(v103);
        }

        if (a4 >= *(v103 + 2))
        {
          goto LABEL_102;
        }

        v104 = &v103[16 * a4];
        *(v104 + 4) = v5;
        *(v104 + 5) = v16;
        v126 = v103;
        a4 = &v126;
        sub_261C8674C(v65);
        v15 = v126;
        v5 = *(v126 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = &v15[16 * v5 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_103;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_104;
      }

      v77 = &v15[16 * v5];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_106;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_109;
      }

      if (v81 >= v73)
      {
        v99 = &v15[16 * v65 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_113;
        }

        if (v68 < v102)
        {
          v65 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v13 = a3[1];
    a4 = v115;
    if (v14 >= v13)
    {
      goto LABEL_88;
    }
  }

  v113 = v15;
  v114 = v6;
  v121 = *a3;
  v47 = v121 + 8 * v14 - 8;
  v112 = v16;
  a4 = v16 - v14;
  v117 = v46;
LABEL_29:
  v119 = v47;
  v120 = v14;
  v48 = *(v121 + 8 * v14);
  v118 = a4;
  v49 = v47;
  while (1)
  {
    v50 = *v49;
    v5 = v48;
    v51 = v50;
    v52 = [v5 creationDate];
    v53 = v123;
    sub_261CFD7C4();

    v54 = [v51 creationDate];
    v55 = v124;
    sub_261CFD7C4();

    LOBYTE(v54) = sub_261CFD7A4();
    v56 = *v122;
    v57 = v55;
    v58 = v125;
    (*v122)(v57, v125);
    v56(v53, v58);

    if ((v54 & 1) == 0)
    {
LABEL_28:
      v14 = v120 + 1;
      v47 = v119 + 8;
      a4 = v118 - 1;
      if ((v120 + 1) != v117)
      {
        goto LABEL_29;
      }

      v14 = v117;
      v15 = v113;
      v6 = v114;
      a3 = v111;
      v16 = v112;
      goto LABEL_36;
    }

    if (!v121)
    {
      break;
    }

    v59 = *v49;
    v48 = *(v49 + 8);
    *v49 = v48;
    *(v49 + 8) = v59;
    v49 -= 8;
    if (__CFADD__(a4++, 1))
    {
      goto LABEL_28;
    }
  }

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
}

uint64_t sub_261C862B0(id *a1, id *a2, id *a3, void **a4)
{
  v56 = sub_261CFD7E4();
  v8 = *(v56 - 8);
  v9 = MEMORY[0x28223BE20](v56);
  v55 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v54 = &v49 - v11;
  v12 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v12 = a2 - a1;
  }

  v13 = v12 >> 3;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v13 >= v14 >> 3)
  {
    v57 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[v15] <= a4)
    {
      memmove(a4, a2, 8 * v15);
    }

    v58 = &a4[v15];
    if (a3 - a2 >= 8 && a2 > v57)
    {
      v50 = (v8 + 8);
LABEL_27:
      v49 = a1;
      v30 = a1 - 1;
      v31 = a3 - 1;
      v32 = v58;
      v51 = a1 - 1;
      do
      {
        v33 = a4;
        v34 = v31;
        v35 = v31 + 1;
        v36 = *--v32;
        v37 = *v30;
        v38 = v36;
        v53 = v38;
        v39 = v37;
        v52 = v39;
        v40 = [v38 creationDate];
        v41 = v54;
        sub_261CFD7C4();

        v42 = [v39 creationDate];
        v43 = v55;
        sub_261CFD7C4();

        LOBYTE(v42) = sub_261CFD7A4();
        v44 = *v50;
        v45 = v43;
        v46 = v56;
        (*v50)(v45, v56);
        v44(v41, v46);

        if (v42)
        {
          a4 = v33;
          a3 = v34;
          v47 = v51;
          if (v35 != v49)
          {
            *v34 = *v51;
          }

          if (v58 <= v33 || (a1 = v47, v47 <= v57))
          {
            a1 = v47;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v33;
        if (v35 != v58)
        {
          *v34 = *v32;
        }

        v31 = v34 - 1;
        v58 = v32;
        v30 = v51;
      }

      while (v32 > v33);
      v58 = v32;
      a1 = v49;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v13] <= a4)
    {
      memmove(a4, a1, 8 * v13);
    }

    v58 = &a4[v13];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v53 = a3;
      v16 = (v8 + 8);
      while (1)
      {
        v57 = a1;
        v17 = *a4;
        v18 = *a2;
        v19 = v17;
        v20 = [v18 creationDate];
        v21 = v54;
        sub_261CFD7C4();

        v22 = [v19 creationDate];
        v23 = v55;
        sub_261CFD7C4();

        LOBYTE(v22) = sub_261CFD7A4();
        v24 = *v16;
        v25 = v23;
        v26 = v56;
        (*v16)(v25, v56);
        v24(v21, v26);

        if ((v22 & 1) == 0)
        {
          break;
        }

        v27 = a2;
        v28 = v57;
        v29 = v57 == a2++;
        if (!v29)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v28 + 1;
        if (a4 >= v58 || a2 >= v53)
        {
          goto LABEL_39;
        }
      }

      v27 = a4;
      v28 = v57;
      v29 = v57 == a4++;
      if (v29)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v28 = *v27;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= (a4 + ((v58 - a4 + (v58 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a1, a4, 8 * (v58 - a4));
  }

  return 1;
}

uint64_t sub_261C8674C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_261C867D8(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

unint64_t sub_261C8680C()
{
  result = qword_27FEDD490;
  if (!qword_27FEDD490)
  {
    sub_261B05020(255, &qword_27FEDD488, 0x277D44648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD490);
  }

  return result;
}

uint64_t sub_261C86874()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDDBA8);
  v1 = __swift_project_value_buffer(v0, qword_27FEDDBA8);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t AppEntityID.entityName.getter()
{
  v1 = *v0;
  sub_261CFD104();
  return v1;
}

uint64_t AppEntityID.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppEntityID(0) + 20);
  v4 = sub_261CFD844();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppEntityID.recurrentInstanceSpecifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppEntityID(0) + 24);

  return sub_261AE7A78(v3, a1);
}

uint64_t AppEntityID.init(entityName:uuid:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for AppEntityID(0);
  v9 = *(v8 + 24);
  v10 = type metadata accessor for RecurrentInstanceSpecifier(0);
  (*(*(v10 - 8) + 56))(&a4[v9], 1, 1, v10);
  *a4 = a1;
  *(a4 + 1) = a2;
  v11 = *(v8 + 20);
  v12 = sub_261CFD844();
  v13 = *(*(v12 - 8) + 32);

  return v13(&a4[v11], a3, v12);
}

uint64_t AppEntityID.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  sub_261CFFB14();
  v9 = type metadata accessor for AppEntityID(0);
  sub_261CFD844();
  sub_261C88108(&qword_27FEDBEE8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_261CFF944();
  sub_261AE7A78(v1 + *(v9 + 24), v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return sub_261D006E4();
  }

  sub_261C87F3C(v8, v5);
  sub_261D006E4();
  sub_261CFD4E4();
  sub_261C88108(&qword_27FEDA170, MEMORY[0x277CC8990], MEMORY[0x277CC89A0]);
  sub_261CFF944();
  sub_261D006E4();
  return sub_261C87BE8(v5);
}

uint64_t AppEntityID.hashValue.getter()
{
  sub_261D006C4();
  AppEntityID.hash(into:)(v1);
  return sub_261D006F4();
}

uint64_t sub_261C86D90()
{
  sub_261D006C4();
  AppEntityID.hash(into:)(v1);
  return sub_261D006F4();
}

uint64_t sub_261C86DD4(uint64_t a1)
{
  sub_261D006C4();
  AppEntityID.hash(into:)(v2);
  return sub_261D006F4();
}

uint64_t static AppEntityID.entityIdentifier(for:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_261CFD104();

  return AppEntityID.init(entityIdentifierString:)(a1, a2, a3);
}

uint64_t AppEntityID.init(entityIdentifierString:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v116 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v110 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v112 = &v106 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA988, &unk_261D03480);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v106 - v10;
  v12 = sub_261CFD844();
  v114 = *(v12 - 8);
  v115 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v111 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v113 = &v106 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDBC8, &qword_261D0F9F0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v106 - v17;
  v19 = sub_261CFD414();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v106 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v106 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v106 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v106 - v30;
  sub_261CFD3E4();
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_261AE6A40(v18, &qword_27FEDDBC8, &qword_261D0F9F0);
    if (qword_27FED9C70 != -1)
    {
      swift_once();
    }

    v32 = sub_261CFF7A4();
    __swift_project_value_buffer(v32, qword_27FEDDBA8);
    sub_261CFD104();
    v33 = sub_261CFF784();
    v34 = sub_261CFFE64();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v117 = v36;
      *v35 = 136315138;
      v37 = sub_261B879C8(a1, a2, &v117);

      *(v35 + 4) = v37;
      _os_log_impl(&dword_261AE2000, v33, v34, "AppEntityID#init(entityIdentifierString:): failed to create URLComponents {input: %s}", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x26671D560](v36, -1, -1);
      MEMORY[0x26671D560](v35, -1, -1);
    }

    else
    {
    }

    goto LABEL_25;
  }

  v108 = v19;
  v109 = v20;
  (*(v20 + 32))(v31, v18, v19);
  v38 = sub_261CFD384();
  v40 = v31;
  if (!v39)
  {
    if (qword_27FED9C70 != -1)
    {
      swift_once();
    }

    v65 = sub_261CFF7A4();
    __swift_project_value_buffer(v65, qword_27FEDDBA8);
    v55 = v108;
    v66 = v109;
    (*(v109 + 16))(v29, v40, v108);
    v67 = sub_261CFF784();
    v68 = sub_261CFFE64();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v117 = v70;
      *v69 = 136315138;
      sub_261C88108(&qword_27FEDDBC0, MEMORY[0x277CC8958], MEMORY[0x277CC8968]);
      v71 = sub_261D005F4();
      v112 = v40;
      v73 = v72;
      v74 = *(v66 + 8);
      v74(v29, v55);
      v75 = sub_261B879C8(v71, v73, &v117);
      v76 = v116;

      *(v69 + 4) = v75;
      v77 = v68;
      v78 = v76;
      _os_log_impl(&dword_261AE2000, v67, v77, "AppEntityID#init(entityIdentifierString:): missing entityName {urlComponents: %s}", v69, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v70);
      MEMORY[0x26671D560](v70, -1, -1);
      MEMORY[0x26671D560](v69, -1, -1);

      v74(v112, v55);
LABEL_26:
      v85 = type metadata accessor for AppEntityID(0);
      return (*(*(v85 - 8) + 56))(v78, 1, 1, v85);
    }

    v84 = *(v66 + 8);
    v84(v29, v55);
    goto LABEL_24;
  }

  v106 = v38;
  v107 = v39;
  v41 = sub_261CFD3A4();
  v43 = sub_261C87FA0(1uLL, v41, v42);
  v45 = v44;
  v47 = v46;
  v49 = v48;

  MEMORY[0x26671C1B0](v43, v45, v47, v49);

  sub_261CFD7F4();

  v50 = v114;
  v51 = v115;
  if ((*(v114 + 48))(v11, 1, v115) == 1)
  {

    sub_261AE6A40(v11, &qword_27FEDA988, &unk_261D03480);
    if (qword_27FED9C70 != -1)
    {
      swift_once();
    }

    v52 = sub_261CFF7A4();
    __swift_project_value_buffer(v52, qword_27FEDDBA8);
    v53 = v109;
    v40 = v31;
    v54 = v31;
    v55 = v108;
    (*(v109 + 16))(v26, v54, v108);
    v56 = sub_261CFF784();
    v57 = sub_261CFFE64();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v117 = v59;
      *v58 = 136315138;
      sub_261C88108(&qword_27FEDDBC0, MEMORY[0x277CC8958], MEMORY[0x277CC8968]);
      v60 = sub_261D005F4();
      v112 = v40;
      v62 = v61;
      v63 = *(v53 + 8);
      v63(v26, v55);
      v64 = sub_261B879C8(v60, v62, &v117);

      *(v58 + 4) = v64;
      _os_log_impl(&dword_261AE2000, v56, v57, "AppEntityID#init(entityIdentifierString:): missing uuid {urlComponents: %s}", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v59);
      MEMORY[0x26671D560](v59, -1, -1);
      MEMORY[0x26671D560](v58, -1, -1);

      v63(v112, v55);
LABEL_25:
      v78 = v116;
      goto LABEL_26;
    }

    v84 = *(v53 + 8);
    v84(v26, v55);
LABEL_24:
    v84(v40, v55);
    goto LABEL_25;
  }

  v79 = *(v50 + 32);
  v79(v113, v11, v51);
  v80 = sub_261CFD3C4();
  v78 = v116;
  v82 = v31;
  v83 = v108;
  if (!v81)
  {
    goto LABEL_30;
  }

  if (v80 != 0xD000000000000013 || v81 != 0x8000000261D21590)
  {
    v87 = sub_261D00614();

    if (v87)
    {
      goto LABEL_28;
    }

LABEL_30:

    if (qword_27FED9C70 != -1)
    {
      swift_once();
    }

    v91 = sub_261CFF7A4();
    __swift_project_value_buffer(v91, qword_27FEDDBA8);
    v92 = v109;
    (*(v109 + 16))(v23, v82, v83);
    v93 = sub_261CFF784();
    v94 = sub_261CFFE64();
    if (!os_log_type_enabled(v93, v94))
    {

      v102 = *(v92 + 8);
      v102(v23, v83);
      (*(v114 + 8))(v113, v115);
      v102(v82, v83);
      goto LABEL_26;
    }

    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v117 = v96;
    *v95 = 136315138;
    sub_261C88108(&qword_27FEDDBC0, MEMORY[0x277CC8958], MEMORY[0x277CC8968]);
    v97 = sub_261D005F4();
    v99 = v98;
    v112 = v82;
    v100 = *(v92 + 8);
    v100(v23, v83);
    v101 = sub_261B879C8(v97, v99, &v117);

    *(v95 + 4) = v101;
    _os_log_impl(&dword_261AE2000, v93, v94, "AppEntityID#init(entityIdentifierString:): invalid scheme {urlComponents: %s}", v95, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v96);
    MEMORY[0x26671D560](v96, -1, -1);
    MEMORY[0x26671D560](v95, -1, -1);

    (*(v114 + 8))(v113, v115);
    v100(v112, v83);
    goto LABEL_25;
  }

LABEL_28:
  v88 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v89 = v112;
  (*(*(v88 - 8) + 56))(v112, 1, 1, v88);
  if (sub_261CFD364())
  {
    v90 = v110;
    sub_261C17A80(v110);
    sub_261AE6A40(v89, &qword_27FEDA108, &unk_261D020C0);
    (*(v109 + 8))(v82, v83);
    sub_261C88050(v90, v89);
  }

  else
  {
    (*(v109 + 8))(v82, v83);
  }

  v103 = v111;
  v79(v111, v113, v51);
  v104 = v107;
  *v78 = v106;
  v78[1] = v104;
  v105 = type metadata accessor for AppEntityID(0);
  v79(v78 + *(v105 + 20), v103, v51);
  sub_261C88050(v89, v78 + *(v105 + 24));
  return (*(*(v105 - 8) + 56))(v78, 0, 1, v105);
}

uint64_t sub_261C87B94@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_261CFD104();

  return AppEntityID.init(entityIdentifierString:)(a1, a2, a3);
}

uint64_t sub_261C87BE8(uint64_t a1)
{
  v2 = type metadata accessor for RecurrentInstanceSpecifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL _s19RemindersAppIntents0B8EntityIDV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDBD8, &qword_261D0FAD8);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  if (*a1 != *a2 && (sub_261D00614() & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for AppEntityID(0);
  if ((sub_261CFD824() & 1) == 0)
  {
    return 0;
  }

  v15 = *(v14 + 24);
  v16 = *(v11 + 48);
  sub_261AE7A78(a1 + v15, v13);
  sub_261AE7A78(a2 + v15, &v13[v16]);
  v17 = *(v5 + 48);
  if (v17(v13, 1, v4) == 1)
  {
    if (v17(&v13[v16], 1, v4) == 1)
    {
      sub_261AE6A40(v13, &qword_27FEDA108, &unk_261D020C0);
      return 1;
    }

    goto LABEL_10;
  }

  sub_261AE7A78(v13, v10);
  if (v17(&v13[v16], 1, v4) == 1)
  {
    sub_261C87BE8(v10);
LABEL_10:
    v19 = &qword_27FEDDBD8;
    v20 = &qword_261D0FAD8;
LABEL_11:
    sub_261AE6A40(v13, v19, v20);
    return 0;
  }

  sub_261C87F3C(&v13[v16], v7);
  if ((MEMORY[0x266719B40](v10, v7) & 1) == 0)
  {
    sub_261C87BE8(v7);
    sub_261C87BE8(v10);
    v19 = &qword_27FEDA108;
    v20 = &unk_261D020C0;
    goto LABEL_11;
  }

  v21 = *(v4 + 20);
  v22 = v10[v21];
  v23 = v7[v21];
  sub_261C87BE8(v7);
  sub_261C87BE8(v10);
  sub_261AE6A40(v13, &qword_27FEDA108, &unk_261D020C0);
  return v22 == v23;
}

uint64_t sub_261C87F3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecurrentInstanceSpecifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_261C87FA0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_261CFFB34();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_261CFFBF4();
}

uint64_t sub_261C88050(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_261C88108(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *initializeBufferWithCopyOfBuffer for AppEntityID(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v17 = *a2;
    *v3 = *a2;
    v3 = (v17 + ((v4 + 16) & ~v4));
    sub_261CFCDA4();
  }

  else
  {
    v5 = a2[1];
    *a1 = *a2;
    a1[1] = v5;
    v6 = *(a3 + 20);
    v9 = sub_261CFD844();
    v10 = *(*(v9 - 8) + 16);
    sub_261CFD104();
    v10(v3 + v6, a2 + v6, v9);
    v11 = *(a3 + 24);
    v12 = v3 + v11;
    v13 = a2 + v11;
    v14 = type metadata accessor for RecurrentInstanceSpecifier(0);
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v13, 1, v14))
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
      memcpy(v12, v13, *(*(v16 - 8) + 64));
    }

    else
    {
      v18 = sub_261CFD4E4();
      (*(*(v18 - 8) + 16))(v12, v13, v18);
      v12[*(v14 + 20)] = v13[*(v14 + 20)];
      (*(v15 + 56))(v12, 0, 1, v14);
    }
  }

  return v3;
}

char *assignWithCopy for AppEntityID(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  sub_261CFD104();

  v6 = *(a3 + 20);
  v7 = sub_261CFD844();
  (*(*(v7 - 8) + 24))(&a1[v6], &a2[v6], v7);
  v8 = *(a3 + 24);
  v9 = &a1[v8];
  v10 = &a2[v8];
  v11 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  v14 = v13(v9, 1, v11);
  v15 = v13(v10, 1, v11);
  if (!v14)
  {
    if (!v15)
    {
      v19 = sub_261CFD4E4();
      (*(*(v19 - 8) + 24))(v9, v10, v19);
      v9[*(v11 + 20)] = v10[*(v11 + 20)];
      return a1;
    }

    sub_261C87BE8(v9);
    goto LABEL_6;
  }

  if (v15)
  {
LABEL_6:
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
    memcpy(v9, v10, *(*(v17 - 8) + 64));
    return a1;
  }

  v16 = sub_261CFD4E4();
  (*(*(v16 - 8) + 16))(v9, v10, v16);
  v9[*(v11 + 20)] = v10[*(v11 + 20)];
  (*(v12 + 56))(v9, 0, 1, v11);
  return a1;
}

char *initializeWithTake for AppEntityID(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = sub_261CFD844();
  (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
  v8 = *(a3 + 24);
  v9 = &a1[v8];
  v10 = &a2[v8];
  v11 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11))
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
    memcpy(v9, v10, *(*(v13 - 8) + 64));
  }

  else
  {
    v14 = sub_261CFD4E4();
    (*(*(v14 - 8) + 32))(v9, v10, v14);
    v9[*(v11 + 20)] = v10[*(v11 + 20)];
    (*(v12 + 56))(v9, 0, 1, v11);
  }

  return a1;
}

char *assignWithTake for AppEntityID(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v7 = *(a3 + 20);
  v8 = sub_261CFD844();
  (*(*(v8 - 8) + 40))(&a1[v7], &a2[v7], v8);
  v9 = *(a3 + 24);
  v10 = &a1[v9];
  v11 = &a2[v9];
  v12 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  v15 = v14(v10, 1, v12);
  v16 = v14(v11, 1, v12);
  if (!v15)
  {
    if (!v16)
    {
      v20 = sub_261CFD4E4();
      (*(*(v20 - 8) + 40))(v10, v11, v20);
      v10[*(v12 + 20)] = v11[*(v12 + 20)];
      return a1;
    }

    sub_261C87BE8(v10);
    goto LABEL_6;
  }

  if (v16)
  {
LABEL_6:
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
    memcpy(v10, v11, *(*(v18 - 8) + 64));
    return a1;
  }

  v17 = sub_261CFD4E4();
  (*(*(v17 - 8) + 32))(v10, v11, v17);
  v10[*(v12 + 20)] = v11[*(v12 + 20)];
  (*(v13 + 56))(v10, 0, 1, v12);
  return a1;
}

uint64_t sub_261C88918()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDDBE0);
  v1 = __swift_project_value_buffer(v0, qword_27FEDDBE0);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t REMStoreIntentPerformer.suggestedEntities(query:)(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_261B0D584;

  return sub_261C8ABA8();
}

uint64_t REMStoreIntentPerformer.entities(query:matching:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_261B4276C;

  return sub_261C8B2D8(a1, a2, a3);
}

uint64_t sub_261C88BFC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDC10, &qword_261D0FB38);
  __swift_allocate_value_buffer(v0, qword_27FEDDBF8);
  __swift_project_value_buffer(v0, qword_27FEDDBF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDC30, &qword_261D0FB50);
  sub_261B01D28(&qword_27FEDDC28, &qword_27FEDDC10, &qword_261D0FB38, MEMORY[0x277D85AC0]);
  return sub_261CFE9A4();
}

uint64_t sub_261C88CD4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDC38, &qword_261D0FB58);
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDC30, &qword_261D0FB50);
  sub_261CFDBB4();
  v7 = sub_261B01D28(&qword_27FEDDC40, &qword_27FEDDC38, &qword_261D0FB58, MEMORY[0x277D85410]);
  MEMORY[0x26671A1D0](v4, v0, v7);
  v8 = *(v1 + 8);
  v8(v4, v0);
  sub_261CFDB14();
  return (v8)(v6, v0);
}

uint64_t sub_261C88E74@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDC10, &qword_261D0FB38);
  MEMORY[0x28223BE20](v1 - 8);
  v43 = &v33 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA890, &qword_261D033F0);
  MEMORY[0x28223BE20](v3 - 8);
  v38 = &v33 - v4;
  v40 = sub_261CFE944();
  v5 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDC48, &qword_261D0FB60);
  v9 = *(v8 - 8);
  v41 = v8;
  v42 = v9;
  MEMORY[0x28223BE20](v8);
  v39 = &v33 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA888, &qword_261D033E8);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v33 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v33 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA900, &qword_261D03420);
  v21 = sub_261B01D28(&qword_27FEDA8B0, &qword_27FEDA888, &qword_261D033E8, MEMORY[0x277D85AC0]);
  sub_261CFE9A4();
  v35 = v20;
  MEMORY[0x26671A1C0](v18, v11, v21);
  v22 = *(v12 + 8);
  v22(v18, v11);
  v36 = v12 + 8;
  v37 = v22;
  sub_261CFE9A4();
  MEMORY[0x26671A1C0](v15, v11, v21);
  v22(v15, v11);
  sub_261CFDB34();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA8A8, &qword_261D03400);
  v24 = v38;
  sub_261CFE8E4();
  v34 = *(v5 + 8);
  v25 = v40;
  v34(v7, v40);
  v26 = v39;
  MEMORY[0x26671A270](v24, v23);
  sub_261CFDB34();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDC30, &qword_261D0FB50);
  sub_261B01D28(&qword_27FEDDC50, &qword_27FEDDC48, &qword_261D0FB60, MEMORY[0x277D85410]);
  v28 = v43;
  v29 = v26;
  v30 = v41;
  sub_261CFE8F4();
  v34(v7, v25);
  MEMORY[0x26671A270](v28, v27);
  (*(v42 + 8))(v29, v30);
  v31 = v37;
  v37(v18, v11);
  return v31(v35, v11);
}

uint64_t sub_261C893CC@<X0>(void (*a1)(void, void)@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v67 = a1;
  v68 = a2;
  v66 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA898, &unk_261D08600);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v51 - v6;
  v56 = sub_261CFDB44();
  v63 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA938, &qword_261D03440);
  v64 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v60 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v55 = &v51 - v13;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA858, &unk_261D08610);
  v71 = *(v65 - 8);
  v14 = MEMORY[0x28223BE20](v65);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v59 = &v51 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA888, &qword_261D033E8);
  MEMORY[0x28223BE20](v18 - 8);
  v61 = &v51 - v19;
  v20 = sub_261CFE944();
  v69 = v20;
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v53 = &v51 - v25;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA8F0, &qword_261D08620);
  v70 = *(v62 - 8);
  v26 = MEMORY[0x28223BE20](v62);
  v54 = &v51 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v57 = &v51 - v28;
  v72 = v67;
  v73 = v68;
  v58 = sub_261B426C0();
  MEMORY[0x26671A1D0](v74, &v72, MEMORY[0x277D837D0], v58);
  v29 = sub_261CFDB34();
  a3(v29);
  v30 = sub_261CFE994();
  (*(*(v30 - 8) + 56))(v7, 1, 1, v30);
  sub_261CFDB34();
  sub_261C8BBC4(&qword_27FEDA940, MEMORY[0x277D853D0], MEMORY[0x277D853C8]);
  v31 = MEMORY[0x277D83E40];
  v52 = v16;
  v32 = v56;
  sub_261CFE924();
  v67 = *(v21 + 8);
  v68 = v21 + 8;
  v67(v24, v20);
  sub_261AE6A40(v7, &qword_27FEDA898, &unk_261D08600);
  (*(v63 + 8))(v9, v32);
  v33 = v60;
  MEMORY[0x26671A290](v16, v31);
  v34 = sub_261B01D28(&qword_27FEDA948, &qword_27FEDA938, &qword_261D03440, MEMORY[0x277D85420]);
  v35 = v55;
  MEMORY[0x26671A1D0](v33, v10, v34);
  v36 = *(v64 + 1);
  v36(v33, v10);
  v37 = v59;
  sub_261CFDB14();
  v36(v35, v10);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA900, &qword_261D03420);
  sub_261B01D28(&qword_27FEDA860, &qword_27FEDA858, &unk_261D08610, MEMORY[0x277D85AC0]);
  v39 = v61;
  v63 = v38;
  v40 = v65;
  v41 = v53;
  sub_261CFE914();
  v42 = *(v71 + 8);
  v71 += 8;
  v64 = v42;
  v42(v37, v40);
  v67(v41, v69);
  v43 = v54;
  MEMORY[0x26671A260](v39, v38);
  v44 = sub_261B01D28(&qword_27FEDA908, &qword_27FEDA8F0, &qword_261D08620, MEMORY[0x277D85408]);
  v45 = v57;
  v46 = v62;
  MEMORY[0x26671A1D0](v43, v62, v44);
  v47 = *(v70 + 8);
  v70 += 8;
  v47(v43, v46);
  v72 = v74[0];
  v73 = v74[1];
  sub_261CFDB14();

  sub_261CFDB34();
  v48 = v52;
  sub_261CFE904();
  sub_261CFE8D4();
  v49 = v64;
  v64(v48, v40);
  v67(v41, v69);
  v49(v37, v40);
  return (v47)(v45, v46);
}

uint64_t sub_261C89BD0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261B4276C;

  return sub_261C89DEC(a1, a2);
}

uint64_t sub_261C89C84(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_261B4276C;

  return sub_261C8ABA8();
}

uint64_t sub_261C89D2C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_261B4276C;

  return sub_261C8B2D8(a1, a2, a3);
}

uint64_t sub_261C89DEC(uint64_t a1, uint64_t a2)
{
  v2[23] = a2;
  v2[24] = sub_261CFEC94();
  v2[25] = swift_task_alloc();
  v3 = sub_261CFD674();
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();
  sub_261CFD884();
  v2[29] = swift_task_alloc();
  sub_261CFFA44();
  v2[30] = swift_task_alloc();
  sub_261CFD6A4();
  v2[31] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDC10, &qword_261D0FB38);
  v2[32] = v4;
  v2[33] = *(v4 - 8);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDC18, &qword_261D0FB40);
  v2[36] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDC20, &qword_261D0FB48);
  v2[37] = v5;
  v2[38] = *(v5 - 8);
  v2[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C8A074, 0, 0);
}

uint64_t sub_261C8A074()
{
  v81 = v0;
  if (qword_27FED9C78 != -1)
  {
LABEL_31:
    swift_once();
  }

  v1 = sub_261CFF7A4();
  __swift_project_value_buffer(v1, qword_27FEDDBE0);
  sub_261CFD104();
  v2 = sub_261CFF784();
  v3 = sub_261CFFE84();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[23];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *&v79[0] = v6;
    *v5 = 136446210;
    v7 = MEMORY[0x26671C340](v4, MEMORY[0x277D837D0]);
    v9 = sub_261B879C8(v7, v8, v79);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_261AE2000, v2, v3, "[ListBadgeEntityQueryPerforming] Query list badge entities with identifiers: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x26671D560](v6, -1, -1);
    MEMORY[0x26671D560](v5, -1, -1);
  }

  v10 = v0[23];
  v11 = *(v10 + 16);
  if (!v11)
  {
    v66 = MEMORY[0x277D84F90];
    goto LABEL_26;
  }

  v12 = 0;
  v13 = v0[33];
  v70 = (v13 + 16);
  v71 = (v13 + 8);
  v14 = v0[38];
  v69 = (v14 + 48);
  v68 = (v14 + 32);
  v66 = MEMORY[0x277D84F90];
  v67 = (v14 + 8);
  v15 = v10 + 40;
  v63 = *MEMORY[0x277CC9110];
  v72 = *(v10 + 16);
  v64 = (v0[27] + 104);
  v65 = v10 + 40;
  do
  {
    v16 = v15 + 16 * v12;
    while (1)
    {
      if (v12 >= v11)
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (__OFADD__(v12, 1))
      {
        goto LABEL_30;
      }

      v78 = v12 + 1;
      v73 = v16;
      v17 = qword_27FED9C80;
      sub_261CFD104();
      if (v17 != -1)
      {
        swift_once();
      }

      v18 = v0[35];
      v19 = v0[32];
      v20 = __swift_project_value_buffer(v19, qword_27FEDDBF8);
      (*v70)(v18, v20, v19);
      sub_261CFFBF4();
      sub_261B01D28(&qword_27FEDDC28, &qword_27FEDDC10, &qword_261D0FB38, MEMORY[0x277D85AC0]);
      sub_261CFE984();
      sub_261CFE9B4();
      v21 = v0[34];
      v22 = v0[35];
      v23 = v0[32];

      v24 = *v71;
      (*v71)(v21, v23);
      v24(v22, v23);
      v11 = v72;
      v26 = v0[36];
      v25 = v0[37];
      if ((*v69)(v26, 1, v25) != 1)
      {
        break;
      }

      sub_261AE6A40(v26, &qword_27FEDDC18, &qword_261D0FB40);
LABEL_8:
      ++v12;
      v16 = v73 + 16;
      if (v78 == v72)
      {
        goto LABEL_26;
      }
    }

    (*v68)(v0[39], v26, v25);
    sub_261CFE9C4();

    v27 = v0[9];
    v28 = v0[13];
    if (v27)
    {
      v29 = v0[6];
      v30 = v0[7];
      v31 = v0[8];
      v32 = v0[28];
      v57 = v0[26];

      v33 = MEMORY[0x26671C1B0](v29, v30, v31, v27);
      v59 = v34;
      v35 = v34;

      *&v79[0] = 0x3A6D656C626D65;
      *(&v79[0] + 1) = 0xE700000000000000;
      MEMORY[0x26671C210](v33, v35);
      v74 = *(&v79[0] + 1);
      v76 = *&v79[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA848, &unk_261D074E0);
      sub_261CFF9B4();
      sub_261CFD874();
      v55 = *v64;
      (*v64)(v32, v63, v57);
      sub_261CFD6C4();
      v56 = sub_261CFCB14();
      sub_261CFF9B4();
      sub_261CFD874();
      v55(v32, v63, v57);
      sub_261CFD6C4();
      v36 = sub_261CFCB14();
      v0[18] = v33;
      v0[19] = v59;
      sub_261CFD104();
      sub_261CFCA14();
      v0[20] = 0;
      v0[21] = 0;
      sub_261CFCA14();

      type metadata accessor for AnyListEntityLazyImage(0);
      v37 = swift_allocObject();
      v0[22] = MEMORY[0x277D84F90];
      sub_261C8BBC4(&qword_280D22D90, MEMORY[0x277D44D10], MEMORY[0x277D44D18]);
      v38 = v74;
      sub_261CFD104();
      sub_261CFCDA4();
      sub_261CFCDA4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9E0, &qword_261D014D0);
      v39 = v76;
      v40 = v56;
      sub_261B01D28(&qword_280D21E20, &unk_27FEDD9E0, &qword_261D014D0, MEMORY[0x277D83970]);
      sub_261D001D4();
      sub_261CFECB4();
      swift_allocObject();
      *(v37 + 128) = sub_261CFECA4();
      v41 = OBJC_IVAR____TtC19RemindersAppIntents22AnyListEntityLazyImage_cachedDisplayRepresentationImage;
      v42 = sub_261CFD074();
      (*(*(v42 - 8) + 56))(v37 + v41, 1, 1, v42);
      v43 = v79[0];
      *(v37 + 72) = v79[1];
      v44 = v79[3];
      *(v37 + 88) = v79[2];
      *(v37 + 104) = v44;
      *(v37 + 16) = v76;
      *(v37 + 24) = v74;
      *(v37 + 32) = v56;
      *(v37 + 40) = v36;
      *(v37 + 48) = 0;
      *(v37 + 120) = v80;
      *(v37 + 56) = v43;
      *(v37 + 121) = 2;

      goto LABEL_19;
    }

    if (!v28)
    {
      (*v67)(v0[39], v0[37]);

      goto LABEL_8;
    }

    v45 = v0[28];
    v62 = v0[26];
    v46 = MEMORY[0x26671C1B0](v0[10], v0[11], v0[12], v28);
    v60 = v47;
    v61 = v46;
    v48 = v47;

    *&v79[0] = 0x3A696A6F6D65;
    *(&v79[0] + 1) = 0xE600000000000000;
    MEMORY[0x26671C210](v46, v48);
    v75 = *(&v79[0] + 1);
    v77 = *&v79[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA848, &unk_261D074E0);
    sub_261CFF9B4();
    sub_261CFD874();
    v58 = *v64;
    (*v64)(v45, v63, v62);
    sub_261CFD6C4();
    v49 = sub_261CFCB14();
    sub_261CFF9B4();
    sub_261CFD874();
    v58(v45, v63, v62);
    v40 = v49;
    v38 = v75;
    v39 = v77;
    sub_261CFD6C4();
    v36 = sub_261CFCB14();
    v0[14] = 0;
    v0[15] = 0;
    sub_261CFCA14();
    v0[16] = v61;
    v0[17] = v60;
    sub_261CFCA14();

    v37 = 0;
LABEL_19:
    (*v67)(v0[39], v0[37]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v66 = sub_261B415B0(0, *(v66 + 2) + 1, 1, v66);
    }

    v51 = *(v66 + 2);
    v50 = *(v66 + 3);
    if (v51 >= v50 >> 1)
    {
      v66 = sub_261B415B0((v50 > 1), v51 + 1, 1, v66);
    }

    *(v66 + 2) = v51 + 1;
    v52 = &v66[40 * v51];
    *(v52 + 4) = v39;
    *(v52 + 5) = v38;
    *(v52 + 6) = v40;
    *(v52 + 7) = v36;
    *(v52 + 8) = v37;
    v12 = v78;
    v15 = v65;
  }

  while (v78 != v72);
LABEL_26:

  v53 = v0[1];

  return v53(v66);
}

uint64_t sub_261C8ABA8()
{
  v0[7] = sub_261CFEC94();
  v0[8] = swift_task_alloc();
  v1 = sub_261CFD674();
  v0[9] = v1;
  v0[10] = *(v1 - 8);
  v0[11] = swift_task_alloc();
  sub_261CFD884();
  v0[12] = swift_task_alloc();
  sub_261CFFA44();
  v0[13] = swift_task_alloc();
  sub_261CFD6A4();
  v0[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C8AD18, 0, 0);
}

uint64_t sub_261C8AD18()
{
  v1 = sub_261CFFFB4();
  v2 = MEMORY[0x277D84F90];
  v31 = *(v1 + 16);
  if (v31)
  {
    v3 = 0;
    v29 = v1 + 32;
    v28 = (v0[10] + 104);
    v27 = *MEMORY[0x277CC9110];
    v30 = v1;
    while (v3 < *(v1 + 16))
    {
      v36 = v3;
      v37 = v2;
      v4 = v0[11];
      v5 = v0[9];
      v32 = v5;
      v6 = *(v29 + 8 * v3);
      v7 = sub_261CFFA74();
      v33 = v8;
      v34 = v7;
      v9 = v8;
      *&v38 = 0x3A6D656C626D65;
      *(&v38 + 1) = 0xE700000000000000;
      v35 = v6;
      MEMORY[0x26671C210](v7, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA848, &unk_261D074E0);
      sub_261CFF9B4();
      sub_261CFD874();
      v10 = *v28;
      (*v28)(v4, v27, v5);
      sub_261CFD6C4();
      v11 = sub_261CFCB14();
      sub_261CFF9B4();
      sub_261CFD874();
      v12 = MEMORY[0x277D84F90];
      v10(v4, v27, v32);
      v2 = v37;
      sub_261CFD6C4();
      v13 = sub_261CFCB14();
      v0[2] = v34;
      v0[3] = v33;
      sub_261CFD104();
      sub_261CFCA14();
      v0[4] = 0;
      v0[5] = 0;
      sub_261CFCA14();

      type metadata accessor for AnyListEntityLazyImage(0);
      v14 = swift_allocObject();
      v0[6] = v12;
      sub_261C8BBC4(&qword_280D22D90, MEMORY[0x277D44D10], MEMORY[0x277D44D18]);
      sub_261CFD104();
      sub_261CFCDA4();
      sub_261CFCDA4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9E0, &qword_261D014D0);
      sub_261B01D28(&qword_280D21E20, &unk_27FEDD9E0, &qword_261D014D0, MEMORY[0x277D83970]);
      sub_261D001D4();
      sub_261CFECB4();
      swift_allocObject();
      v15 = sub_261CFECA4();

      *(v14 + 128) = v15;
      v16 = OBJC_IVAR____TtC19RemindersAppIntents22AnyListEntityLazyImage_cachedDisplayRepresentationImage;
      v17 = sub_261CFD074();
      (*(*(v17 - 8) + 56))(v14 + v16, 1, 1, v17);
      *(v14 + 72) = v39;
      *(v14 + 88) = v40;
      *(v14 + 104) = v41;
      *(v14 + 16) = 0x3A6D656C626D65;
      *(v14 + 24) = 0xE700000000000000;
      *(v14 + 32) = v11;
      *(v14 + 40) = v13;
      *(v14 + 48) = 0;
      *(v14 + 120) = v42;
      *(v14 + 56) = v38;
      *(v14 + 121) = 2;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_261B415B0(0, *(v37 + 2) + 1, 1, v37);
      }

      v19 = *(v2 + 2);
      v18 = *(v2 + 3);
      if (v19 >= v18 >> 1)
      {
        v2 = sub_261B415B0((v18 > 1), v19 + 1, 1, v2);
      }

      ++v3;
      *(v2 + 2) = v19 + 1;
      v20 = &v2[40 * v19];
      *(v20 + 4) = 0x3A6D656C626D65;
      *(v20 + 5) = 0xE700000000000000;
      *(v20 + 6) = v11;
      *(v20 + 7) = v13;
      *(v20 + 8) = v14;
      v1 = v30;
      if (v31 == v36 + 1)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:

    if (qword_27FED9C78 == -1)
    {
      goto LABEL_10;
    }
  }

  swift_once();
LABEL_10:
  v21 = sub_261CFF7A4();
  __swift_project_value_buffer(v21, qword_27FEDDBE0);
  sub_261CFD104();
  v22 = sub_261CFF784();
  v23 = sub_261CFFE84();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 134217984;
    *(v24 + 4) = *(v2 + 2);

    _os_log_impl(&dword_261AE2000, v22, v23, "[ListBadgeEntityQueryPerforming] Query list badge suggested entities, result.count: %ld", v24, 0xCu);
    MEMORY[0x26671D560](v24, -1, -1);
  }

  else
  {
  }

  v25 = v0[1];

  return v25(v2);
}

uint64_t sub_261C8B2D8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA708, &qword_261D03298);
  v3[13] = swift_task_alloc();
  v5 = sub_261CFD6A4();
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v6 = swift_task_alloc();
  v7 = *a1;
  v3[18] = v6;
  v3[19] = v7;

  return MEMORY[0x2822009F8](sub_261C8B3F0, 0, 0);
}

uint64_t sub_261C8B3F0()
{
  v11 = v0;
  if (qword_27FED9C78 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF7A4();
  __swift_project_value_buffer(v1, qword_27FEDDBE0);
  sub_261CFD104();
  v2 = sub_261CFF784();
  v3 = sub_261CFFE84();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[11];
    v4 = v0[12];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_261B879C8(v5, v4, &v10);
    _os_log_impl(&dword_261AE2000, v2, v3, "[ListBadgeEntityQueryPerforming] Query list badge entities with string: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x26671D560](v7, -1, -1);
    MEMORY[0x26671D560](v6, -1, -1);
  }

  v0[10] = v0[19];
  v8 = swift_task_alloc();
  v0[20] = v8;
  *v8 = v0;
  v8[1] = sub_261C8B5CC;

  return sub_261C8ABA8();
}

uint64_t sub_261C8B5CC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {
    v4 = sub_261C8BB38;
  }

  else
  {
    v4 = sub_261C8B6E0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_261C8B6E0()
{
  v1 = v0[21];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v39 = v0[15];
    v41 = -v2;
    v4 = MEMORY[0x277D84F90];
    v5 = v1 + 64;
    v33 = v0[21];
    v31 = v1 + 64;
    while (1)
    {
      v32 = v4;
      v6 = (v5 + 40 * v3++);
      while (1)
      {
        if ((v3 - 1) >= *(v1 + 16))
        {
          __break(1u);
          return;
        }

        v7 = *(v6 - 3);
        v40 = *(v6 - 4);
        v9 = *(v6 - 2);
        v8 = *(v6 - 1);
        v43 = *v6;
        sub_261CFCDA4();
        sub_261CFD104();
        sub_261CFCDA4();
        v42 = v8;
        sub_261CFCDA4();
        sub_261CFCA04();
        v10 = v0[3];
        if (v10)
        {
          break;
        }

LABEL_5:

        ++v3;
        v6 += 5;
        if (v41 + v3 == 1)
        {
          v4 = v32;
          goto LABEL_21;
        }
      }

      v11 = v0[2];
      if (qword_27FED9C60 != -1)
      {
        v26 = v0[2];
        swift_once();
        v11 = v26;
      }

      v12 = qword_27FEF3EF8;
      if (!*(qword_27FEF3EF8 + 16))
      {
        break;
      }

      v13 = sub_261B37CE8(v11, v10);
      v15 = v14;

      if ((v15 & 1) == 0)
      {
        goto LABEL_5;
      }

      v17 = v0[17];
      v16 = v0[18];
      v18 = v0[14];
      v34 = v0[16];
      v35 = v0[13];
      v38 = v0[12];
      v37 = v0[11];
      v19 = *(v12 + 56) + *(v39 + 72) * v13;
      v20 = *(v39 + 16);
      v20(v17, v19, v18);
      v36 = v18;
      (*(v39 + 32))(v16, v17, v18);
      v20(v34, v16, v18);
      v0[4] = sub_261CFFA94();
      v0[5] = v21;
      sub_261CFD874();
      v22 = sub_261CFD884();
      (*(*(v22 - 8) + 56))(v35, 0, 1, v22);
      sub_261B3BA3C();
      v23 = sub_261D00194();
      v25 = v24;
      sub_261AE6A40(v35, &qword_27FEDA708, &qword_261D03298);

      v0[6] = v23;
      v0[7] = v25;
      v0[8] = v37;
      v0[9] = v38;
      LOBYTE(v23) = sub_261D00184();
      v1 = v33;

      (*(v39 + 8))(v16, v36);
      if ((v23 & 1) == 0)
      {
        goto LABEL_5;
      }

      v4 = v32;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_261B39E7C(0, *(v32 + 16) + 1, 1);
        v4 = v32;
      }

      v5 = v31;
      v28 = *(v4 + 16);
      v27 = *(v4 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_261B39E7C((v27 > 1), v28 + 1, 1);
        v5 = v31;
        v4 = v32;
      }

      *(v4 + 16) = v28 + 1;
      v29 = (v4 + 40 * v28);
      v29[4] = v40;
      v29[5] = v7;
      v29[6] = v9;
      v29[7] = v42;
      v29[8] = v43;
      if (!(v41 + v3))
      {
        goto LABEL_21;
      }
    }

    goto LABEL_5;
  }

  v4 = MEMORY[0x277D84F90];
LABEL_21:

  v30 = v0[1];

  v30(v4);
}

uint64_t sub_261C8BB38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261C8BBC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_261C8BC0C()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_280D26FF8);
  __swift_project_value_buffer(v0, qword_280D26FF8);
  return sub_261CFF794();
}

uint64_t CreateGroupAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v32 = a1;
  v33 = sub_261CFD184();
  v1 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v31 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA280, &unk_261D02510);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v26 - v13;
  v27 = &v26 - v13;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA288, &unk_261D02520);
  v15 = sub_261CFD6A4();
  v16 = *(v15 - 8);
  v29 = *(v16 + 56);
  v30 = v16 + 56;
  v29(v14, 1, 1, v15);
  v17 = sub_261CFF994();
  v35 = 0;
  v36 = 0;
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  v18 = sub_261CFC834();
  v19 = *(*(v18 - 8) + 56);
  v19(v8, 1, 1, v18);
  v20 = *MEMORY[0x277CBA308];
  v21 = *(v1 + 104);
  v26 = v1 + 104;
  v21(v3, v20, v33);
  v22 = v27;
  *v32 = sub_261CFCD04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC400, &qword_261D09DF0);
  v29(v22, 1, 1, v15);
  v35 = MEMORY[0x277D84F90];
  v19(v8, 1, 1, v18);
  v19(v31, 1, 1, v18);
  v21(v3, v20, v33);
  sub_261B80F44(&qword_280D227A0, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);
  v23 = sub_261CFCC14();
  v24 = v32;
  v32[1] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDC70, &qword_261D0FB68);
  v34 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v24[2] = result;
  return result;
}

uint64_t sub_261C8C118()
{
  v0 = sub_261CFD674();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_261CFD884();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_261CFFA44();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_261CFD6A4();
  __swift_allocate_value_buffer(v6, qword_27FEDDC58);
  __swift_project_value_buffer(v6, qword_27FEDDC58);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static CreateGroupAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9C90 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDDC58);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static CreateGroupAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_261CFD674();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_261CFD884();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_261CFFA44();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_261CFD6A4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v6 + 104))(v8, *MEMORY[0x277CC9110], v5);
  sub_261CFD6C4();
  (*(v12 + 56))(v4, 1, 1, v11);
  sub_261CFCF04();
  v13 = sub_261CFCEE4();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t CreateGroupAppIntent.perform()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  *(v2 + 40) = *(v1 + 16);
  sub_261CFFD24();
  *(v2 + 48) = sub_261CFFD14();
  v4 = sub_261CFFCF4();
  *(v2 + 56) = v4;
  *(v2 + 64) = v3;

  return MEMORY[0x2822009F8](sub_261C8C748, v4, v3);
}

uint64_t sub_261C8C748()
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_261C8C82C;
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  v5 = v0[3];

  return sub_261C5AA7C(v4, "CreateGroupAppIntent", 20, 2, v5, v2, v3);
}

uint64_t sub_261C8C82C()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_261C8D330;
  }

  else
  {
    v5 = sub_261C8D334;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

unint64_t sub_261C8C96C()
{
  result = qword_27FEDDC78;
  if (!qword_27FEDDC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDC78);
  }

  return result;
}

unint64_t sub_261C8C9C4()
{
  result = qword_27FEDDC80;
  if (!qword_27FEDDC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDC80);
  }

  return result;
}

unint64_t sub_261C8CA1C()
{
  result = qword_27FEDDC88;
  if (!qword_27FEDDC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDC88);
  }

  return result;
}

uint64_t sub_261C8CAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  sub_261CFFD24();
  v4[14] = sub_261CFFD14();
  v6 = sub_261CFFCF4();
  v4[15] = v6;
  v4[16] = v5;

  return MEMORY[0x2822009F8](sub_261C8CB90, v6, v5);
}

uint64_t sub_261C8CB90()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  sub_261B258D8(0, v3, v1, v2);
  sub_261CFC664();
  v4 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  v0[7] = v3;
  v0[8] = v1;
  v0[9] = v2;
  v9 = (*(v5 + 8) + **(v5 + 8));
  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = sub_261BC2BF8;
  v7 = v0[10];

  return v9(v7, v0 + 7, v4, v5);
}

uint64_t sub_261C8CD04@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9C90 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDDC58);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261C8CDB0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  *(v2 + 40) = *(v1 + 16);
  sub_261CFFD24();
  *(v2 + 48) = sub_261CFFD14();
  v4 = sub_261CFFCF4();
  *(v2 + 56) = v4;
  *(v2 + 64) = v3;

  return MEMORY[0x2822009F8](sub_261C8CE58, v4, v3);
}

uint64_t sub_261C8CE58()
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_261C8CF3C;
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  v5 = v0[3];

  return sub_261C5AA7C(v4, "CreateGroupAppIntent", 20, 2, v5, v2, v3);
}

uint64_t sub_261C8CF3C()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_261C8D0DC;
  }

  else
  {
    v5 = sub_261C8D078;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_261C8D078()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261C8D0DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261C8D148(uint64_t a1)
{
  v2 = sub_261B31504();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t dispatch thunk of CreateGroupIntentPerforming.perform(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_261AF43A8;

  return v11(a1, a2, a3, a4);
}

unint64_t sub_261C8D2C8()
{
  result = qword_27FEDB5D8;
  if (!qword_27FEDB5D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDB588, &qword_261D06AC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB5D8);
  }

  return result;
}

uint64_t sub_261C8D338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for GroupEntity(0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v17[-v10];
  UpdateGroupAppIntent.init()(v18);
  v12 = v18[0];
  v13 = v18[1];
  v14 = v18[2];
  v15 = v18[3];
  sub_261BAB184(a1, v11);
  sub_261BAB184(v11, v9);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
  sub_261BAB1E8(v11);

  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCA04();
  sub_261CFCBC4();
  sub_261CFCA04();
  sub_261CFCBC4();
  sub_261AE498C(a2, v18);
  sub_261AE498C(v18, v17);
  sub_261CFC674();
  __swift_destroy_boxed_opaque_existential_0(v18);

  *a3 = v12;
  a3[1] = v13;
  a3[2] = v14;
  a3[3] = v15;
  return result;
}

uint64_t UpdateGroupAppIntent.perform()(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = v1[1];
  *(v2 + 24) = *v1;
  *(v2 + 40) = v3;
  sub_261CFFD24();
  *(v2 + 56) = sub_261CFFD14();
  v5 = sub_261CFFCF4();
  *(v2 + 64) = v5;
  *(v2 + 72) = v4;

  return MEMORY[0x2822009F8](sub_261C8D5FC, v5, v4);
}

uint64_t sub_261C8D5FC()
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_261B06958;
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  return sub_261C59FE4(v6, "UpdateGroupAppIntent", 20, 2, v4, v5, v2, v3);
}

uint64_t (*UpdateGroupAppIntent.name.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261AFA230;
}

uint64_t sub_261C8D7E0(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for GroupEntity(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_261BAB184(a1, &v10 - v7);
  sub_261BAB184(v8, v6);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
  sub_261BAB1E8(v8);
}

uint64_t UpdateGroupAppIntent.target.setter(uint64_t a1)
{
  v2 = type metadata accessor for GroupEntity(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261BAB184(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261BAB1E8(a1);
}

uint64_t (*UpdateGroupAppIntent.target.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261C8DA48(uint64_t *a1, uint64_t *a2)
{
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*UpdateGroupAppIntent.lists.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261C8DBA4()
{
  v0 = sub_261CFD674();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_261CFD884();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_261CFFA44();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_261CFD6A4();
  __swift_allocate_value_buffer(v6, qword_27FEDDC90);
  __swift_project_value_buffer(v6, qword_27FEDDC90);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static UpdateGroupAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9C98 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDDC90);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static UpdateGroupAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_261CFD674();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_261CFD884();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_261CFFA44();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_261CFD6A4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v6 + 104))(v8, *MEMORY[0x277CC9110], v5);
  sub_261CFD6C4();
  (*(v12 + 56))(v4, 1, 1, v11);
  sub_261CFCF04();
  v13 = sub_261CFCEE4();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t UpdateGroupAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v35 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD950, &unk_261D01440);
  MEMORY[0x28223BE20](v1 - 8);
  v36 = &v30 - v2;
  v3 = sub_261CFD184();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v34 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA280, &unk_261D02510);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v30 - v16;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA290, qword_261D0F1D0);
  v39 = sub_261CFD6A4();
  v18 = *(v39 - 8);
  v40 = *(v18 + 56);
  v41 = v18 + 56;
  v40(v17, 1, 1, v39);
  v19 = sub_261CFF994();
  v43 = 0;
  v44 = 0;
  (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
  v20 = sub_261CFC834();
  v21 = *(*(v20 - 8) + 56);
  v21(v11, 1, 1, v20);
  v38 = *MEMORY[0x277CBA308];
  v22 = *(v4 + 104);
  v31 = v3;
  v32 = v4 + 104;
  v37 = v22;
  v22(v6);
  v23 = v17;
  v24 = sub_261CFCD04();
  v25 = v35;
  *v35 = v24;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAD70, &unk_261D06AA0);
  v40(v17, 1, 1, v39);
  v26 = type metadata accessor for GroupEntity(0);
  (*(*(v26 - 8) + 56))(v36, 1, 1, v26);
  v27 = v21;
  v21(v11, 1, 1, v20);
  v28 = v34;
  v27(v34, 1, 1, v20);
  v37(v6, v38, v3);
  sub_261C73B88(&qword_280D22670, type metadata accessor for GroupEntity, &protocol conformance descriptor for GroupEntity);
  v25[1] = sub_261CFCC14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDCA8, qword_261D0FD58);
  v40(v23, 1, 1, v39);
  v43 = 0;
  v27(v11, 1, 1, v20);
  v27(v28, 1, 1, v20);
  v37(v6, v38, v31);
  sub_261C73B88(&qword_280D227A0, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);
  v25[2] = sub_261CFCC14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB580, &qword_261D06AB0);
  v42 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v25[3] = result;
  return result;
}

unint64_t sub_261C8E6FC()
{
  result = qword_27FEDDCB0;
  if (!qword_27FEDDCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDCB0);
  }

  return result;
}

unint64_t sub_261C8E754()
{
  result = qword_27FEDDCB8;
  if (!qword_27FEDDCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDCB8);
  }

  return result;
}

unint64_t sub_261C8E82C()
{
  result = qword_27FEDDCC0;
  if (!qword_27FEDDCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDCC0);
  }

  return result;
}

uint64_t sub_261C8E880@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9C98 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDDC90);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261C8E92C(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = v1[1];
  *(v2 + 24) = *v1;
  *(v2 + 40) = v3;
  sub_261CFFD24();
  *(v2 + 56) = sub_261CFFD14();
  v5 = sub_261CFFCF4();
  *(v2 + 64) = v5;
  *(v2 + 72) = v4;

  return MEMORY[0x2822009F8](sub_261C8E9D0, v5, v4);
}

uint64_t sub_261C8E9D0()
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_261B07CF8;
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  return sub_261C59FE4(v6, "UpdateGroupAppIntent", 20, 2, v4, v5, v2, v3);
}

uint64_t sub_261C8EB10(uint64_t a1)
{
  v2 = sub_261C8E82C();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t dispatch thunk of UpdateGroupIntentPerforming.perform(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_261AF43A8;

  return v11(a1, a2, a3, a4);
}

uint64_t CreateCustomSmartListAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v30 = a1;
  v1 = sub_261CFD184();
  v28 = *(v1 - 8);
  v29 = v1;
  MEMORY[0x28223BE20](v1);
  v27 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  MEMORY[0x28223BE20](v3 - 8);
  v26 = v23 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA280, &unk_261D02510);
  MEMORY[0x28223BE20](v5 - 8);
  v25 = v23 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v7 - 8);
  v24 = v23 - v8;
  v9 = sub_261CFD674();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_261CFD884();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = sub_261CFFA44();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = sub_261CFD6A4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v23[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA290, qword_261D0F1D0);
  sub_261CFF9B4();
  sub_261CFD874();
  v17 = *MEMORY[0x277CC9110];
  v18 = *(v10 + 104);
  v18(v12, v17, v9);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v18(v12, v17, v9);
  v19 = v24;
  sub_261CFD6C4();
  (*(v16 + 56))(v19, 0, 1, v15);
  v20 = sub_261CFF994();
  v31 = 0;
  v32 = 0;
  (*(*(v20 - 8) + 56))(v25, 1, 1, v20);
  v21 = sub_261CFC834();
  (*(*(v21 - 8) + 56))(v26, 1, 1, v21);
  (*(v28 + 104))(v27, *MEMORY[0x277CBA308], v29);
  result = sub_261CFCD24();
  *v30 = result;
  return result;
}

double sub_261C8F1E0@<D0>(_OWORD *a1@<X8>)
{
  sub_261CFCBB4();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_261C8F21C(uint64_t *a1, uint64_t *a2)
{
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t sub_261C8F2A4()
{
  v0 = sub_261CFD674();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_261CFD884();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_261CFFA44();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_261CFD6A4();
  __swift_allocate_value_buffer(v6, qword_27FEDDCC8);
  __swift_project_value_buffer(v6, qword_27FEDDCC8);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static CreateCustomSmartListAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9CA0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDDCC8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static CreateCustomSmartListAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_261CFD674();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_261CFD884();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_261CFFA44();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_261CFD6A4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v6 + 104))(v8, *MEMORY[0x277CC9110], v5);
  sub_261CFD6C4();
  (*(v12 + 56))(v4, 1, 1, v11);
  sub_261CFCF04();
  v13 = sub_261CFCEE4();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

void (*CreateCustomSmartListAppIntent.name.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261AFA3C4;
}

uint64_t CreateCustomSmartListAppIntent.perform()(uint64_t a1)
{
  v2[2] = a1;
  v3 = sub_261CFD754();
  v2[3] = v3;
  v2[4] = *(v3 - 8);
  v4 = swift_task_alloc();
  v5 = *v1;
  v2[5] = v4;
  v2[6] = v5;
  sub_261CFFD24();
  v2[7] = sub_261CFFD14();
  v7 = sub_261CFFCF4();

  return MEMORY[0x2822009F8](sub_261C8F9B8, v7, v6);
}

uint64_t sub_261C8F9B8()
{
  v1 = v0[6];
  v2 = v0[5];

  sub_261B26694(0, v1);
  sub_261BC07C8(v2);
  v3 = [objc_opt_self() defaultWorkspace];
  if (v3)
  {
    v4 = v3;
    sub_261D00034();
  }

  (*(v0[4] + 8))(v0[5], v0[3]);
  sub_261CFC9A4();

  v5 = v0[1];

  return v5();
}

uint64_t static CreateCustomSmartListAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDCE0, &qword_261D0FEA8);
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDCE8, &qword_261D0FEB0);
  MEMORY[0x28223BE20](v1);
  sub_261B314B0();
  sub_261CFD164();
  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDCF0, &unk_261D0FEE0);
  sub_261CFD144();

  sub_261CFD154();
  sub_261CFD174();
  return sub_261CFD124();
}

unint64_t sub_261C8FC48()
{
  result = qword_27FEDDCF8;
  if (!qword_27FEDDCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDCF8);
  }

  return result;
}

unint64_t sub_261C8FCA0()
{
  result = qword_27FEDDD00;
  if (!qword_27FEDDD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDD00);
  }

  return result;
}

uint64_t sub_261C8FD2C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9CA0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDDCC8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261C8FDD4(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDCE0, &qword_261D0FEA8);
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDCE8, &qword_261D0FEB0);
  MEMORY[0x28223BE20](v3);
  sub_261CFD164();
  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDCF0, &unk_261D0FEE0);
  sub_261CFD144();

  sub_261CFD154();
  sub_261CFD174();
  return sub_261CFD124();
}

uint64_t sub_261C8FF70(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261AF43A8;

  return CreateCustomSmartListAppIntent.perform()(a1);
}

uint64_t sub_261C9000C(uint64_t a1)
{
  v2 = sub_261B314B0();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_261C90058@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v68 = a4;
  v67 = a3;
  v66 = a1;
  v85 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v65 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v64 = &v57 - v9;
  v84 = sub_261CFD184();
  v86 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v83 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v82 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v75 = &v57 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v15 - 8);
  v74 = &v57 - v16;
  v81 = sub_261CFD674();
  v17 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_261CFD884();
  MEMORY[0x28223BE20](v20 - 8);
  v21 = sub_261CFFA44();
  MEMORY[0x28223BE20](v21 - 8);
  v22 = sub_261CFD6A4();
  v78 = v22;
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = *a2;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1F0, &qword_261D132D0);
  sub_261CFF9B4();
  sub_261CFD874();
  v27 = *(v17 + 104);
  v70 = *MEMORY[0x277CC9110];
  v26 = v70;
  v28 = v81;
  v27(v19, v70, v81);
  v69 = v27;
  v71 = v17 + 104;
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v27(v19, v26, v28);
  v29 = v74;
  sub_261CFD6C4();
  v30 = *(v23 + 56);
  v77 = v23 + 56;
  v79 = v30;
  v30(v29, 0, 1, v22);
  v88 = 0;
  v31 = sub_261CFC834();
  v32 = *(v31 - 8);
  v33 = *(v32 + 56);
  v72 = v33;
  v73 = v32 + 56;
  v34 = v75;
  v33(v75, 1, 1, v31);
  v33(v82, 1, 1, v31);
  v76 = *MEMORY[0x277CBA308];
  v35 = *(v86 + 104);
  v86 += 104;
  v80 = v35;
  v35(v83);
  v61 = sub_261B32BE4();
  v57 = v25;
  v36 = v34;
  v62 = sub_261CFCC34();
  *v85 = v62;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1F8, &qword_261D02320);
  sub_261CFF9B4();
  sub_261CFD874();
  v37 = v70;
  v38 = v81;
  v39 = v69;
  v69(v19, v70, v81);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v39(v19, v37, v38);
  v40 = v74;
  sub_261CFD6C4();
  v79(v40, 0, 1, v78);
  LOBYTE(v88) = 2;
  v41 = v36;
  v42 = v31;
  v58 = v31;
  v43 = v31;
  v44 = v72;
  v72(v41, 1, 1, v43);
  v44(v82, 1, 1, v42);
  v80(v83, v76, v84);
  sub_261B07F3C();
  v60 = sub_261CFCC04();
  v85[1] = v60;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAAB0, &qword_261D07BA0);
  sub_261CFF9B4();
  sub_261CFD874();
  v45 = v70;
  v46 = v81;
  v47 = v69;
  v69(v19, v70, v81);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v47(v19, v45, v46);
  sub_261CFD6C4();
  v79(v40, 0, 1, v78);
  v48 = type metadata accessor for ReminderEntity(0);
  v49 = v64;
  (*(*(v48 - 8) + 56))(v64, 1, 1, v48);
  v50 = v58;
  v51 = v72;
  v72(v75, 1, 1, v58);
  v51(v82, 1, 1, v50);
  v80(v83, v76, v84);
  v52 = sub_261CFCC34();
  v53 = v85;
  v85[2] = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDD38, &qword_261D10000);
  v87[0] = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  v53[3] = sub_261CFC684();
  v88 = v66;
  sub_261CFCBC4();
  LOBYTE(v88) = v63;
  sub_261CFCBC4();
  v54 = v67;
  sub_261C90F90(v67, v49);
  sub_261C90F90(v49, v65);
  sub_261CFCBC4();
  sub_261C91000(v49);
  v55 = v68;
  sub_261AE498C(v68, &v88);
  sub_261AE498C(&v88, v87);
  sub_261CFC674();
  __swift_destroy_boxed_opaque_existential_0(v55);
  sub_261C91000(v54);
  return __swift_destroy_boxed_opaque_existential_0(&v88);
}

uint64_t (*MoveRemindersToParentReminderAppIntent.reminders.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t (*MoveRemindersToParentReminderAppIntent.position.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261C90DE0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_261C90F90(a1, &v10 - v7);
  sub_261C90F90(v8, v6);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
  sub_261C91000(v8);
}

uint64_t MoveRemindersToParentReminderAppIntent.parentReminder.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261C90F90(a1, &v5 - v3);
  sub_261CFCBC4();
  return sub_261C91000(a1);
}

uint64_t sub_261C90F90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_261C91000(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*MoveRemindersToParentReminderAppIntent.parentReminder.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261AFA230;
}

uint64_t sub_261C91100()
{
  v0 = sub_261CFD674();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_261CFD884();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_261CFFA44();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_261CFD6A4();
  __swift_allocate_value_buffer(v6, qword_27FEDDD18);
  __swift_project_value_buffer(v6, qword_27FEDDD18);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static MoveRemindersToParentReminderAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9CA8 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDDD18);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static MoveRemindersToParentReminderAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_261CFD674();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_261CFD884();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_261CFFA44();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_261CFD6A4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v6 + 104))(v8, *MEMORY[0x277CC9110], v5);
  sub_261CFD6C4();
  (*(v12 + 56))(v4, 1, 1, v11);
  sub_261CFCF04();
  v13 = sub_261CFCEE4();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t static MoveRemindersToParentReminderAppIntent.isDiscoverable.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FEDDD30 = a1;
  return result;
}

uint64_t MoveRemindersToParentReminderAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v65 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0);
  MEMORY[0x28223BE20](v1 - 8);
  v51 = &v47 - v2;
  v3 = sub_261CFD184();
  v4 = *(v3 - 8);
  v69 = v3;
  v70 = v4;
  MEMORY[0x28223BE20](v3);
  v68 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v67 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v66 = &v47 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v10 - 8);
  v59 = &v47 - v11;
  v12 = sub_261CFD674();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_261CFD884();
  MEMORY[0x28223BE20](v16 - 8);
  v17 = sub_261CFFA44();
  MEMORY[0x28223BE20](v17 - 8);
  v18 = sub_261CFD6A4();
  v61 = v18;
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v52 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1F0, &qword_261D132D0);
  sub_261CFF9B4();
  sub_261CFD874();
  v22 = *(v13 + 104);
  v53 = *MEMORY[0x277CC9110];
  v21 = v53;
  v55 = v12;
  v22(v15, v53, v12);
  v54 = v22;
  v56 = v13 + 104;
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v22(v15, v21, v12);
  v23 = v59;
  sub_261CFD6C4();
  v24 = *(v19 + 56);
  v60 = v19 + 56;
  v62 = v24;
  v24(v23, 0, 1, v18);
  v72 = 0;
  v25 = sub_261CFC834();
  v26 = *(v25 - 8);
  v27 = *(v26 + 56);
  v57 = v27;
  v58 = v26 + 56;
  v27(v66, 1, 1, v25);
  v27(v67, 1, 1, v25);
  v64 = *MEMORY[0x277CBA308];
  v28 = *(v70 + 104);
  v70 += 104;
  v63 = v28;
  v28(v68);
  v50 = sub_261B32BE4();
  v29 = sub_261CFCC34();
  v30 = v65;
  *v65 = v29;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1F8, &qword_261D02320);
  sub_261CFF9B4();
  sub_261CFD874();
  v31 = v53;
  v32 = v55;
  v33 = v54;
  v54(v15, v53, v55);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v33(v15, v31, v32);
  v34 = v59;
  sub_261CFD6C4();
  v62(v34, 0, 1, v61);
  LOBYTE(v72) = 2;
  v35 = v25;
  v48 = v25;
  v36 = v25;
  v37 = v57;
  v57(v66, 1, 1, v36);
  v37(v67, 1, 1, v35);
  v63(v68, v64, v69);
  sub_261B07F3C();
  v30[1] = sub_261CFCC04();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAAB0, &qword_261D07BA0);
  sub_261CFF9B4();
  sub_261CFD874();
  v38 = v53;
  v39 = v55;
  v40 = v54;
  v54(v15, v53, v55);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v40(v15, v38, v39);
  sub_261CFD6C4();
  v62(v34, 0, 1, v61);
  v41 = type metadata accessor for ReminderEntity(0);
  (*(*(v41 - 8) + 56))(v51, 1, 1, v41);
  v42 = v48;
  v43 = v57;
  v57(v66, 1, 1, v48);
  v43(v67, 1, 1, v42);
  v63(v68, v64, v69);
  v44 = sub_261CFCC34();
  v45 = v65;
  v65[2] = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDD38, &qword_261D10000);
  v71 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v45[3] = result;
  return result;
}

uint64_t MoveRemindersToParentReminderAppIntent.perform()(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = v1[1];
  *(v2 + 24) = *v1;
  *(v2 + 40) = v3;
  sub_261CFFD24();
  *(v2 + 56) = sub_261CFFD14();
  v5 = sub_261CFFCF4();
  *(v2 + 64) = v5;
  *(v2 + 72) = v4;

  return MEMORY[0x2822009F8](sub_261C92214, v5, v4);
}

uint64_t sub_261C92214()
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_261B06958;
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  return sub_261C516EC(v6, "MoveRemindersToParentReminderAppIntent", 38, 2, v4, v5, v2, v3);
}

unint64_t sub_261C92310()
{
  result = qword_27FEDDD40;
  if (!qword_27FEDDD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDD40);
  }

  return result;
}

uint64_t sub_261C923E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[12] = a2;
  v5[13] = a3;
  v5[11] = a1;
  sub_261CFFD24();
  v5[16] = sub_261CFFD14();
  v7 = sub_261CFFCF4();
  v5[17] = v7;
  v5[18] = v6;

  return MEMORY[0x2822009F8](sub_261C92488, v7, v6);
}

uint64_t sub_261C92488()
{
  v1 = v0[14];
  v2 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  sub_261B2742C(0, v4, v3, v1, v2);
  sub_261CFC664();
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  v0[7] = v4;
  v0[8] = v3;
  v0[9] = v1;
  v0[10] = v2;
  v10 = (*(v6 + 8) + **(v6 + 8));
  v7 = swift_task_alloc();
  v0[19] = v7;
  *v7 = v0;
  v7[1] = sub_261B06CB8;
  v8 = v0[11];

  return v10(v8, v0 + 7, v5, v6);
}

uint64_t sub_261C9260C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9CA8 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDDD18);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261C926FC(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = v1[1];
  *(v2 + 24) = *v1;
  *(v2 + 40) = v3;
  sub_261CFFD24();
  *(v2 + 56) = sub_261CFFD14();
  v5 = sub_261CFFCF4();
  *(v2 + 64) = v5;
  *(v2 + 72) = v4;

  return MEMORY[0x2822009F8](sub_261C927A0, v5, v4);
}

uint64_t sub_261C927A0()
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_261B07CF8;
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  return sub_261C516EC(v6, "MoveRemindersToParentReminderAppIntent", 38, 2, v4, v5, v2, v3);
}

uint64_t sub_261C92898(uint64_t a1)
{
  v2 = sub_261B3145C();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t dispatch thunk of MoveRemindersToParentReminderIntentPerforming.perform(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_261AF43A8;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_261C92A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, ...)
{
  v24[1] = a5;
  v24[2] = a6;
  v24[0] = a4;
  v25 = a1;
  v26 = a2;
  v6 = sub_261CFD884();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_261CFD674();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_261CFFA44();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = sub_261CFD6A4();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v24 - v17;
  sub_261CFF9B4();
  if (qword_280D22DA8 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v7, qword_280D27028);
  (*(v8 + 16))(v10, v19, v7);
  sub_261CFD874();
  sub_261CFD6C4();
  (*(v13 + 16))(v16, v18, v12);
  sub_261CFFA94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA968, &qword_261D074F0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_261D03450;
  *(v20 + 56) = MEMORY[0x277D837D0];
  *(v20 + 64) = sub_261C92DC4();
  v21 = v26;
  *(v20 + 32) = v25;
  *(v20 + 40) = v21;
  sub_261CFD104();
  v22 = sub_261CFFA64();

  (*(v13 + 8))(v18, v12);
  return v22;
}

unint64_t sub_261C92DC4()
{
  result = qword_27FEDDD48;
  if (!qword_27FEDDD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDD48);
  }

  return result;
}

uint64_t sub_261C92E68()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDDD50);
  v1 = __swift_project_value_buffer(v0, qword_27FEDDD50);
  if (qword_280D22880 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D26FF8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t RemindersInCalendarUtilities.SetReminderDueDateRequest.reminderIDs.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t RemindersInCalendarUtilities.SetReminderDueDateRequest.dueDateComponents.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemindersInCalendarUtilities.SetReminderDueDateRequest(0) + 20);
  v4 = sub_261CFD4E4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for RemindersInCalendarUtilities.SetReminderDueDateRequest(uint64_t a1)
{
  result = qword_27FEDDD68;
  if (!qword_27FEDDD68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RemindersInCalendarUtilities.SetReminderDueDateRequest.dueDateComponents.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RemindersInCalendarUtilities.SetReminderDueDateRequest(0) + 20);
  v4 = sub_261CFD4E4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

void *RemindersInCalendarUtilities.SetReminderDueDateRequest.undoManager.getter()
{
  v1 = *(v0 + *(type metadata accessor for RemindersInCalendarUtilities.SetReminderDueDateRequest(0) + 24));
  v2 = v1;
  return v1;
}

void RemindersInCalendarUtilities.SetReminderDueDateRequest.undoManager.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RemindersInCalendarUtilities.SetReminderDueDateRequest(0) + 24);

  *(v1 + v3) = a1;
}

uint64_t RemindersInCalendarUtilities.SetReminderDueDateRequest.init(reminderIDs:dueDateComponents:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for RemindersInCalendarUtilities.SetReminderDueDateRequest(0);
  *&a3[*(v6 + 24)] = 0;
  *a3 = a1;
  v7 = *(v6 + 20);
  v8 = sub_261CFD4E4();
  v9 = *(*(v8 - 8) + 32);

  return v9(&a3[v7], a2, v8);
}

uint64_t RemindersInCalendarUtilities.SetReminderDueDateResult.SuccessResult.optimisticallyUpdatedReminders.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t RemindersInCalendarUtilities.RequestPerformer.perform(_:)(uint64_t a1, uint64_t a2)
{
  v2[23] = a1;
  v2[24] = a2;
  v3 = sub_261CFED34();
  v2[25] = v3;
  v2[26] = *(v3 - 8);
  v2[27] = swift_task_alloc();
  v4 = type metadata accessor for RemindersInCalendarUtilities.SetReminderDueDateRequest(0);
  v2[28] = v4;
  v5 = *(v4 - 8);
  v2[29] = v5;
  v2[30] = *(v5 + 64);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  sub_261CFFD24();
  v2[33] = sub_261CFFD14();
  v7 = sub_261CFFCF4();

  return MEMORY[0x2822009F8](sub_261C93414, v7, v6);
}

uint64_t sub_261C93414()
{
  v55 = v0;

  if (qword_27FED9CB0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = *(v0 + 24);
  v3 = sub_261CFF7A4();
  __swift_project_value_buffer(v3, qword_27FEDDD50);
  sub_261C93C0C(v2, v1);
  v4 = sub_261CFF784();
  v5 = sub_261CFFE84();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 32);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v54 = v9;
    *v8 = 136315138;
    sub_261B57A9C();
    sub_261B3B918();
    v10 = sub_261CFFD74();
    v12 = v11;
    sub_261C93C70(v7);
    v13 = sub_261B879C8(v10, v12, &v54);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_261AE2000, v4, v5, "RemindersInCalendar: set reminder due date {objectIDs: %s}", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x26671D560](v9, -1, -1);
    MEMORY[0x26671D560](v8, -1, -1);
  }

  else
  {

    sub_261C93C70(v7);
  }

  v14 = *(v0 + 26);
  v15 = *(v0 + 27);
  v17 = *(v0 + 24);
  v16 = *(v0 + 25);
  sub_261CFF674();
  v18 = *MEMORY[0x277D45908];
  v19 = sub_261CFF644();
  (*(*(v19 - 8) + 104))(v15, v18, v19);
  (*(v14 + 104))(v15, *MEMORY[0x277D44EA8], v16);
  MEMORY[0x26671BD30](v15);
  (*(v14 + 8))(v15, v16);
  v20 = *v17;
  if ((*v17 & 0xC000000000000001) != 0)
  {
    v21 = sub_261D00274();
  }

  else
  {
    v21 = *(v20 + 16);
  }

  v22 = sub_261CFF784();
  if (!v21)
  {
    v25 = sub_261CFFE84();
    if (os_log_type_enabled(v22, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_261AE2000, v22, v25, "RemindersInCalendar: input reminderIDs is empty", v26, 2u);
      MEMORY[0x26671D560](v26, -1, -1);
    }

    v27 = *(v0 + 23);

    *v27 = 0;
    goto LABEL_35;
  }

  v23 = sub_261CFFE54();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_261AE2000, v22, v23, "RemindersInCalendar: fetching reminders for setting due date", v24, 2u);
    MEMORY[0x26671D560](v24, -1, -1);
  }

  v28 = sub_261BC6FC4(v20);
  if (qword_280D21E90 != -1)
  {
    swift_once();
  }

  v29 = *(v0 + 31);
  v53 = *(v0 + 29);
  v30 = *(v0 + 24);
  v31 = qword_280D21E98;
  _s29RemindersListInteractorHelperCMa();
  swift_initStackObject();
  v32 = v31;
  v33 = *(sub_261CC1500(v32) + 16);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v52 = v33;
  sub_261CFE524();
  v34 = objc_opt_self();
  sub_261CFE2C4();
  v35 = sub_261CFFA54();

  sub_261AE498C(v0 + 104, (v0 + 9));
  sub_261C93C0C(v30, v29);
  v36 = (*(v53 + 80) + 56) & ~*(v53 + 80);
  v37 = swift_allocObject();
  sub_261AE49F0(v0 + 9, v37 + 16);
  sub_261C93E04(v29, v37 + v36);
  v38 = swift_allocObject();
  *(v38 + 16) = sub_261C93E68;
  *(v38 + 24) = v37;
  *(v0 + 6) = sub_261C78010;
  *(v0 + 7) = v38;
  *(v0 + 2) = MEMORY[0x277D85DD0];
  *(v0 + 3) = 1107296256;
  *(v0 + 4) = sub_261C92E40;
  *(v0 + 5) = &block_descriptor_3;
  v39 = _Block_copy(v0 + 1);
  sub_261CFCDA4();

  [v34 withActionName:v35 block:v39];

  _Block_release(v39);
  LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

  if (v34)
  {
    __break(1u);
LABEL_29:
    v40 = sub_261D00274();
    if (v40)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  sub_261CC11F4(*(*(v0 + 24) + *(*(v0 + 28) + 24)));
  if (v28 >> 62)
  {
    goto LABEL_29;
  }

  v40 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v40)
  {
LABEL_21:
    v54 = MEMORY[0x277D84F90];
    result = sub_261D003A4();
    if (v40 < 0)
    {
      __break(1u);
      return result;
    }

    v42 = 0;
    do
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        v43 = MEMORY[0x26671CA10](v42, v28);
      }

      else
      {
        v43 = *(v28 + 8 * v42 + 32);
      }

      v44 = v43;
      ++v42;
      v45 = [v32 refreshReminder_];

      sub_261D00374();
      sub_261D003B4();
      sub_261D003C4();
      sub_261D00384();
    }

    while (v40 != v42);

    v46 = v54;
    goto LABEL_31;
  }

LABEL_30:

  v46 = MEMORY[0x277D84F90];
LABEL_31:
  v47 = sub_261CFF784();
  v48 = sub_261CFFE84();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_261AE2000, v47, v48, "RemindersInCalendar: set reminder due date request finished", v49, 2u);
    MEMORY[0x26671D560](v49, -1, -1);

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v50 = *(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);
  *v50 = v46;

LABEL_35:

  v51 = *(v0 + 1);

  return v51();
}

uint64_t sub_261C93C0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemindersInCalendarUtilities.SetReminderDueDateRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_261C93C70(uint64_t a1)
{
  v2 = type metadata accessor for RemindersInCalendarUtilities.SetReminderDueDateRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_261C93CCC(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = *(type metadata accessor for RemindersInCalendarUtilities.SetReminderDueDateRequest(0) + 20);
  v8 = sub_261CFD4E4();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v6, a2 + v7, v8);
  (*(v9 + 56))(v6, 0, 1, v8);
  sub_261CFE5D4();
  return sub_261C94490(v6);
}

uint64_t sub_261C93E04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemindersInCalendarUtilities.SetReminderDueDateRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_261C93E68()
{
  v1 = *(type metadata accessor for RemindersInCalendarUtilities.SetReminderDueDateRequest(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80));

  return sub_261C93CCC((v0 + 16), v2);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_261CFCDA4();
}

char *_s25SetReminderDueDateRequestVwCP(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v6 = (v4 + ((v3 + 16) & ~v3));
    sub_261CFCDA4();
  }

  else
  {
    v6 = a1;
    v7 = *(a3 + 20);
    v9 = sub_261CFD4E4();
    v10 = *(*(v9 - 8) + 16);
    sub_261CFD104();
    v10(v6 + v7, a2 + v7, v9);
    v11 = *(a3 + 24);
    v12 = *(a2 + v11);
    *(v6 + v11) = v12;
    v13 = v12;
  }

  return v6;
}

void _s25SetReminderDueDateRequestVwxx(char *a1, uint64_t a2)
{

  v4 = *(a2 + 20);
  v5 = sub_261CFD4E4();
  (*(*(v5 - 8) + 8))(&a1[v4], v5);
  v6 = *&a1[*(a2 + 24)];
}

char *_s25SetReminderDueDateRequestVwcp(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = sub_261CFD4E4();
  v8 = *(*(v7 - 8) + 16);
  sub_261CFD104();
  v8(&a1[v6], &a2[v6], v7);
  v9 = *(a3 + 24);
  v10 = *&a2[v9];
  *&a1[v9] = v10;
  v11 = v10;
  return a1;
}

char *_s25SetReminderDueDateRequestVwca(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  sub_261CFD104();

  v6 = *(a3 + 20);
  v7 = sub_261CFD4E4();
  (*(*(v7 - 8) + 24))(&a1[v6], &a2[v6], v7);
  v8 = *(a3 + 24);
  v9 = *&a1[v8];
  v10 = *&a2[v8];
  *&a1[v8] = v10;
  v11 = v10;

  return a1;
}

char *_s25SetReminderDueDateRequestVwtk(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = sub_261CFD4E4();
  (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];
  return a1;
}

char *_s25SetReminderDueDateRequestVwta(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(a3 + 20);
  v7 = sub_261CFD4E4();
  (*(*(v7 - 8) + 40))(&a1[v6], &a2[v6], v7);
  v8 = *(a3 + 24);
  v9 = *&a1[v8];
  *&a1[v8] = *&a2[v8];

  return a1;
}

uint64_t sub_261C942F0(uint64_t a1)
{
  result = sub_261CFD4E4();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t _s24SetReminderDueDateResultOwet(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t _s24SetReminderDueDateResultOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_261C94438(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_261C94450(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_261C94490(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_261C949B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

uint64_t sub_261C949F4(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 176);
  v11[10] = *(a2 + 160);
  v11[11] = v3;
  v11[12] = *(a2 + 192);
  v12 = *(a2 + 208);
  v4 = *(a2 + 112);
  v11[6] = *(a2 + 96);
  v11[7] = v4;
  v5 = *(a2 + 144);
  v11[8] = *(a2 + 128);
  v11[9] = v5;
  v6 = *(a2 + 48);
  v11[2] = *(a2 + 32);
  v11[3] = v6;
  v7 = *(a2 + 80);
  v11[4] = *(a2 + 64);
  v11[5] = v7;
  v8 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v8;
  v10[223] = v2;
  sub_261B49630(v11, v10);
  sub_261CFCBC4();
  return sub_261B4968C(v11);
}

uint64_t CreateReminderAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v225 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA998, &unk_261D10200);
  MEMORY[0x28223BE20](v1 - 8);
  v203 = &v194[-v2];
  v211 = sub_261CFC894();
  v213 = *(v211 - 8);
  MEMORY[0x28223BE20](v211);
  v210 = &v194[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0);
  MEMORY[0x28223BE20](v4 - 8);
  v202 = &v194[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E0, &unk_261D02300);
  MEMORY[0x28223BE20](v6 - 8);
  v201 = &v194[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  MEMORY[0x28223BE20](v8 - 8);
  v200 = &v194[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA390, &unk_261D02F60);
  MEMORY[0x28223BE20](v10 - 8);
  v199 = &v194[-v11];
  v223 = sub_261CFD674();
  v228 = *(v223 - 8);
  MEMORY[0x28223BE20](v223);
  v208 = &v194[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_261CFD884();
  MEMORY[0x28223BE20](v13 - 8);
  v207 = &v194[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_261CFFA44();
  MEMORY[0x28223BE20](v15 - 8);
  v197 = &v194[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_261CFD6A4();
  v232 = v17;
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v220 = &v194[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA28, &unk_261D035E0);
  v212 = *(v209 - 8);
  MEMORY[0x28223BE20](v209);
  v205 = &v194[-v20];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  MEMORY[0x28223BE20](v21 - 8);
  v222 = &v194[-v22];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A8, &qword_261D034B0);
  MEMORY[0x28223BE20](v23 - 8);
  v221 = &v194[-v24];
  v233 = sub_261CFD184();
  v25 = *(v233 - 8);
  MEMORY[0x28223BE20](v233);
  v27 = &v194[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v214 = &v194[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v29);
  v32 = &v194[-v31];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA280, &unk_261D02510);
  MEMORY[0x28223BE20](v33 - 8);
  v35 = &v194[-v34];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v36 - 8);
  v38 = &v194[-v37];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA288, &unk_261D02520);
  v39 = *(v18 + 56);
  v229 = v18 + 56;
  v227 = v39;
  v39(v38, 1, 1, v17);
  v216 = sub_261CFF994();
  v239 = 0uLL;
  v40 = *(v216 - 8);
  v218 = *(v40 + 56);
  v217 = v40 + 56;
  v215 = v35;
  v218(v35, 1, 1, v216);
  v41 = sub_261CFC834();
  v42 = *(v41 - 8);
  v235 = *(v42 + 56);
  v236 = v42 + 56;
  v230 = v41;
  v235(v32, 1, 1, v41);
  v237 = *MEMORY[0x277CBA308];
  v43 = *(v25 + 104);
  v234 = v25 + 104;
  v231 = v43;
  v44 = v233;
  v43(v27);
  v219 = v38;
  v45 = v32;
  v46 = sub_261CFCD04();
  v47 = v225;
  *v225 = v46;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA38, &qword_261D10210);
  v48 = v38;
  v49 = v232;
  v50 = v227;
  v227(v48, 1, 1, v232);
  v51 = sub_261CFD524();
  (*(*(v51 - 8) + 56))(v221, 1, 1, v51);
  v52 = v41;
  v53 = v235;
  v235(v45, 1, 1, v52);
  v231(v27, v237, v44);
  v54 = v219;
  v47[1] = sub_261CFCCB4();
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDDA8, &qword_261D10218);
  v50(v54, 1, 1, v49);
  *&v239 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAAD0, &qword_261D10220);
  sub_261CFF6A4();
  *(swift_allocObject() + 16) = xmmword_261D03450;
  sub_261CFF684();
  v55 = v45;
  v56 = v230;
  v53(v45, 1, 1, v230);
  v226 = v27;
  v231(v27, v237, v233);
  v57 = v54;
  v58 = sub_261CFCC44();
  v59 = v225;
  v225[2] = v58;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDDB0, &qword_261D10228);
  v60 = v49;
  v61 = v49;
  v62 = v227;
  v227(v57, 1, 1, v61);
  *&v239 = MEMORY[0x277D84FA0];
  v218(v215, 1, 1, v216);
  v235(v55, 1, 1, v56);
  v231(v226, v237, v233);
  v63 = v57;
  v224 = v55;
  v59[3] = sub_261CFCD04();
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA48, &unk_261D10230);
  v62(v57, 1, 1, v60);
  v64 = sub_261CFD4E4();
  (*(*(v64 - 8) + 56))(v222, 1, 1, v64);
  v65 = v55;
  v66 = v230;
  v67 = v235;
  v235(v65, 1, 1, v230);
  v195 = *MEMORY[0x277CB9EF0];
  v68 = *(v212 + 104);
  v212 += 104;
  v196 = v68;
  v68(v205);
  v69 = v237;
  v70 = v233;
  v71 = v231;
  v231(v226, v237, v233);
  v72 = v224;
  v73 = sub_261CFCC94();
  v74 = v225;
  v225[4] = v73;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA50, &qword_261D03610);
  v227(v63, 1, 1, v232);
  v67(v72, 1, 1, v66);
  v71(v226, v69, v70);
  v74[5] = sub_261CFCCD4();
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA290, qword_261D0F1D0);
  sub_261CFF9B4();
  sub_261CFD874();
  v77 = v228 + 104;
  v76 = *(v228 + 104);
  v78 = v208;
  LODWORD(v222) = *MEMORY[0x277CC9110];
  v75 = v222;
  v79 = v223;
  (v76)(v208, v222, v223);
  v221 = v76;
  v228 = v77;
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  (v76)(v78, v75, v79);
  v80 = v219;
  v81 = v78;
  sub_261CFD6C4();
  v82 = v227;
  v227(v80, 0, 1, v232);
  v239 = 0uLL;
  v218(v215, 1, 1, v216);
  v235(v224, 1, 1, v230);
  v231(v226, v237, v233);
  v225[6] = sub_261CFCD24();
  sub_261CFF9B4();
  sub_261CFD874();
  v83 = v222;
  v84 = v223;
  v85 = v221;
  (v221)(v81, v222, v223);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v85(v81, v83, v84);
  v86 = v219;
  sub_261CFD6C4();
  v82(v86, 0, 1, v232);
  v239 = 0uLL;
  v218(v215, 1, 1, v216);
  v235(v224, 1, 1, v230);
  v231(v226, v237, v233);
  v225[7] = sub_261CFCD24();
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA30, &unk_261D035F0);
  sub_261CFF9B4();
  sub_261CFD874();
  v87 = v222;
  v88 = v223;
  v89 = v221;
  (v221)(v81, v222, v223);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v89(v81, v87, v88);
  sub_261CFD6C4();
  v227(v86, 0, 1, v232);
  LOBYTE(v239) = 2;
  v90 = sub_261CFFCE4();
  (*(*(v90 - 8) + 56))(v199, 1, 1, v90);
  v235(v224, 1, 1, v230);
  v231(v226, v237, v233);
  v91 = sub_261CFCD44();
  v92 = v225;
  v225[8] = v91;
  sub_261CFF9B4();
  sub_261CFD874();
  v93 = v87;
  v94 = v87;
  v95 = v223;
  v96 = v221;
  (v221)(v81, v94, v223);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v96(v81, v93, v95);
  v97 = v219;
  sub_261CFD6C4();
  v227(v97, 0, 1, v232);
  v196(v205, v195, v209);
  v235(v224, 1, 1, v230);
  v231(v226, v237, v233);
  v92[9] = sub_261CFCCA4();
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA70, &qword_261D03640);
  sub_261CFF9B4();
  sub_261CFD874();
  v98 = v222;
  v99 = v223;
  v100 = v221;
  (v221)(v81, v222, v223);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v100(v81, v98, v99);
  v101 = v219;
  sub_261CFD6C4();
  v227(v101, 0, 1, v232);
  v239 = 0u;
  v240 = 0u;
  v102 = v230;
  v103 = v235;
  v235(v224, 1, 1, v230);
  v103(v214, 1, 1, v102);
  v104 = v231;
  v231(v226, v237, v233);
  sub_261B51818();
  v105 = sub_261CFCC34();
  v106 = v225;
  v225[10] = v105;
  sub_261CFF9B4();
  sub_261CFD874();
  v107 = v208;
  v108 = v222;
  v109 = v223;
  v110 = v221;
  (v221)(v208, v222, v223);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v110(v107, v108, v109);
  v111 = v219;
  sub_261CFD6C4();
  v227(v111, 0, 1, v232);
  v235(v224, 1, 1, v230);
  v104(v226, v237, v233);
  sub_261C97E08();
  v112 = v111;
  v106[11] = sub_261CFCCE4();
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA80, &qword_261D03648);
  sub_261CFF9B4();
  sub_261CFD874();
  v113 = v222;
  v114 = v223;
  v110(v107, v222, v223);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v110(v107, v113, v114);
  sub_261CFD6C4();
  v227(v112, 0, 1, v232);
  *&v240 = 0;
  v239 = 0uLL;
  v115 = v230;
  v116 = v235;
  v235(v224, 1, 1, v230);
  v117 = v214;
  v116(v214, 1, 1, v115);
  v231(v226, v237, v233);
  sub_261C97E5C();
  sub_261B5186C();
  v225[12] = sub_261CFCC24();
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA90, &qword_261D10240);
  sub_261CFF9B4();
  sub_261CFD874();
  v118 = v222;
  v119 = v223;
  v120 = v221;
  (v221)(v107, v222, v223);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v120(v107, v118, v119);
  v121 = v219;
  sub_261CFD6C4();
  v227(v121, 0, 1, v232);
  LOBYTE(v239) = 3;
  v122 = v230;
  v123 = v235;
  v235(v224, 1, 1, v230);
  v123(v117, 1, 1, v122);
  v124 = v233;
  v231(v226, v237, v233);
  sub_261B52470();
  v225[13] = sub_261CFCC04();
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAAA0, &unk_261D03660);
  sub_261CFF9B4();
  sub_261CFD874();
  v125 = v222;
  v126 = v223;
  v127 = v221;
  (v221)(v107, v222, v223);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v127(v107, v125, v126);
  v128 = v219;
  sub_261CFD6C4();
  v227(v128, 0, 1, v232);
  LOBYTE(v239) = 4;
  v129 = v224;
  v130 = v230;
  v131 = v235;
  v235(v224, 1, 1, v230);
  v131(v214, 1, 1, v130);
  v231(v226, v237, v124);
  sub_261B524C4();
  v225[14] = sub_261CFCC04();
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA60, &unk_261D03620);
  sub_261CFF9B4();
  sub_261CFD874();
  v132 = v222;
  v133 = v223;
  v134 = v221;
  (v221)(v107, v222, v223);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v134(v107, v132, v133);
  sub_261CFD6C4();
  v135 = v227;
  v227(v128, 0, 1, v232);
  v136 = type metadata accessor for ListEntity(0);
  (*(*(v136 - 8) + 56))(v200, 1, 1, v136);
  v137 = v129;
  v138 = v230;
  v139 = v235;
  v235(v137, 1, 1, v230);
  v139(v214, 1, 1, v138);
  v231(v226, v237, v233);
  sub_261C9D3A4();
  sub_261CA001C(&qword_280D227A0, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);
  v140 = v219;
  v225[15] = sub_261CFCC24();
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA208, &qword_261D02328);
  sub_261CFF9B4();
  sub_261CFD874();
  v141 = v222;
  v142 = v223;
  v143 = v221;
  (v221)(v107, v222, v223);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v143(v107, v141, v142);
  sub_261CFD6C4();
  v135(v140, 0, 1, v232);
  v144 = type metadata accessor for SectionEntity(0);
  (*(*(v144 - 8) + 56))(v201, 1, 1, v144);
  v145 = v230;
  v146 = v235;
  v235(v224, 1, 1, v230);
  v147 = v214;
  v146(v214, 1, 1, v145);
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBD10, &qword_261D083B0);
  swift_getKeyPath();
  v148 = sub_261CFD204();
  swift_getKeyPath();
  v149 = sub_261CFD204();
  *&v239 = v148;
  *(&v239 + 1) = v149;
  v231(v226, v237, v233);
  sub_261C9D3F8();
  sub_261CA001C(&qword_280D224E0, type metadata accessor for SectionEntity, &protocol conformance descriptor for SectionEntity);
  v225[16] = sub_261CFCC24();
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAAB0, &qword_261D07BA0);
  sub_261CFF9B4();
  sub_261CFD874();
  v150 = v222;
  v151 = v223;
  v152 = v221;
  (v221)(v107, v222, v223);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v152(v107, v150, v151);
  v153 = v219;
  sub_261CFD6C4();
  v227(v153, 0, 1, v232);
  v154 = type metadata accessor for ReminderEntity(0);
  (*(*(v154 - 8) + 56))(v202, 1, 1, v154);
  v155 = v230;
  v156 = v235;
  v235(v224, 1, 1, v230);
  v156(v147, 1, 1, v155);
  v157 = v226;
  v231(v226, v237, v233);
  sub_261CA001C(&qword_280D22358, type metadata accessor for ReminderEntity, &protocol conformance descriptor for ReminderEntity);
  v225[17] = sub_261CFCC34();
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAAB8, &qword_261D03670);
  sub_261CFF9B4();
  sub_261CFD874();
  v158 = v222;
  v159 = v223;
  v160 = v221;
  (v221)(v107, v222, v223);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v160(v107, v158, v159);
  v161 = v219;
  sub_261CFD6C4();
  v227(v161, 0, 1, v232);
  v218(v215, 1, 1, v216);
  v235(v224, 1, 1, v230);
  v162 = v231;
  v231(v157, v237, v233);
  sub_261C9D44C();
  v163 = sub_261CFCD14();
  v164 = v225;
  v225[18] = v163;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDDE0, &unk_261D10298);
  sub_261CFF9B4();
  sub_261CFD874();
  v165 = v222;
  v166 = v221;
  (v221)(v107, v222, v159);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v166(v107, v165, v159);
  v167 = v166;
  v168 = v219;
  sub_261CFD6C4();
  v169 = v227;
  v227(v168, 0, 1, v232);
  *&v239 = 0;
  v235(v224, 1, 1, v230);
  v162(v226, v237, v233);
  v164[19] = sub_261CFCCC4();
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA88, &unk_261D03650);
  sub_261CFF9B4();
  sub_261CFD874();
  v170 = v222;
  v171 = v223;
  v167(v107, v222, v223);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v167(v107, v170, v171);
  sub_261CFD6C4();
  v169(v168, 0, 1, v232);
  v235(v224, 1, 1, v230);
  swift_getKeyPath();
  *&v239 = sub_261CFD204();
  LODWORD(v206) = *MEMORY[0x277CB9CE0];
  v172 = *(v213 + 104);
  v213 += 104;
  v205 = v172;
  v172(v210);
  v173 = v226;
  v174 = v233;
  v231(v226, v237, v233);
  v204 = sub_261C9D4A0();
  v175 = v173;
  v225[20] = sub_261CFCC74();
  sub_261CFF9B4();
  sub_261CFD874();
  v176 = v222;
  v177 = v223;
  v178 = v221;
  (v221)(v107, v222, v223);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v178(v107, v176, v177);
  v179 = v219;
  sub_261CFD6C4();
  v227(v179, 0, 1, v232);
  v235(v224, 1, 1, v230);
  swift_getKeyPath();
  *&v239 = sub_261CFD204();
  (v205)(v210, v206, v211);
  v231(v175, v237, v174);
  v180 = sub_261CFCC74();
  v181 = v225;
  v225[21] = v180;
  sub_261CFF9B4();
  sub_261CFD874();
  v182 = v222;
  v183 = v223;
  v184 = v221;
  (v221)(v107, v222, v223);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v184(v107, v182, v183);
  v185 = v219;
  sub_261CFD6C4();
  v227(v185, 0, 1, v232);
  *&v239 = 0;
  v218(v215, 1, 1, v216);
  v186 = v224;
  v235(v224, 1, 1, v230);
  v231(v175, v237, v233);
  v181[22] = sub_261CFCD24();
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDDF0, &qword_261D102A8);
  sub_261CFF9B4();
  sub_261CFD874();
  v187 = v222;
  v188 = v221;
  (v221)(v107, v222, v183);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v188(v107, v187, v183);
  sub_261CFD6C4();
  v227(v185, 0, 1, v232);
  v189 = sub_261CFC7E4();
  (*(*(v189 - 8) + 56))(v203, 1, 1, v189);
  v235(v186, 1, 1, v230);
  v231(v226, v237, v233);
  v190 = sub_261CFCC54();
  v191 = v225;
  v225[23] = v190;
  v191[24] = 0;
  v191[25] = 0;
  v192 = v191;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDDF8, &qword_261D102B0);
  v238 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v192[26] = result;
  return result;
}

unint64_t sub_261C97E08()
{
  result = qword_27FEDDDB8;
  if (!qword_27FEDDDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDDB8);
  }

  return result;
}

unint64_t sub_261C97E5C()
{
  result = qword_27FEDDDC0;
  if (!qword_27FEDDDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDDC0);
  }

  return result;
}

double sub_261C97EB0@<D0>(_OWORD *a1@<X8>)
{
  sub_261CFCBB4();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_261C97EEC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a2 + 176);
  v14[10] = *(a2 + 160);
  v14[11] = v4;
  v14[12] = *(a2 + 192);
  v15 = *(a2 + 208);
  v5 = *(a2 + 112);
  v14[6] = *(a2 + 96);
  v14[7] = v5;
  v6 = *(a2 + 144);
  v14[8] = *(a2 + 128);
  v14[9] = v6;
  v7 = *(a2 + 48);
  v14[2] = *(a2 + 32);
  v14[3] = v7;
  v8 = *(a2 + 80);
  v14[4] = *(a2 + 64);
  v14[5] = v8;
  v9 = *(a2 + 16);
  v14[0] = *a2;
  v14[1] = v9;
  v12 = v3;
  v13 = v2;
  sub_261CFD104();
  sub_261B49630(v14, v11);
  sub_261CFCBC4();
  return sub_261B4968C(v14);
}

uint64_t sub_261C97FD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  sub_261AFB668(a1, &v17 - v8, &qword_27FEDA160, &qword_261D02220);
  v10 = *(a2 + 176);
  v19[10] = *(a2 + 160);
  v19[11] = v10;
  v19[12] = *(a2 + 192);
  v20 = *(a2 + 208);
  v11 = *(a2 + 112);
  v19[6] = *(a2 + 96);
  v19[7] = v11;
  v12 = *(a2 + 144);
  v19[8] = *(a2 + 128);
  v19[9] = v12;
  v13 = *(a2 + 48);
  v19[2] = *(a2 + 32);
  v19[3] = v13;
  v14 = *(a2 + 80);
  v19[4] = *(a2 + 64);
  v19[5] = v14;
  v15 = *(a2 + 16);
  v19[0] = *a2;
  v19[1] = v15;
  sub_261AFB668(v9, v7, &qword_27FEDA160, &qword_261D02220);
  sub_261B49630(v19, &v18);
  sub_261CFCBC4();
  sub_261AE6A40(v9, &qword_27FEDA160, &qword_261D02220);
  return sub_261B4968C(v19);
}

uint64_t CreateReminderAppIntent.dueDateComponents.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261AFB668(a1, &v5 - v3, &qword_27FEDA160, &qword_261D02220);
  sub_261CFCBC4();
  return sub_261AE6A40(a1, &qword_27FEDA160, &qword_261D02220);
}

void *sub_261C981F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

uint64_t sub_261C98230(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 176);
  v11[10] = *(a2 + 160);
  v11[11] = v3;
  v11[12] = *(a2 + 192);
  v12 = *(a2 + 208);
  v4 = *(a2 + 112);
  v11[6] = *(a2 + 96);
  v11[7] = v4;
  v5 = *(a2 + 144);
  v11[8] = *(a2 + 128);
  v11[9] = v5;
  v6 = *(a2 + 48);
  v11[2] = *(a2 + 32);
  v11[3] = v6;
  v7 = *(a2 + 80);
  v11[4] = *(a2 + 64);
  v11[5] = v7;
  v8 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v8;
  v10[223] = v2;
  sub_261B49630(v11, v10);
  sub_261CFCBC4();
  return sub_261B4968C(v11);
}

uint64_t CreateReminderAppIntent.targetList.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261AFB668(a1, &v5 - v3, &unk_27FEDE0C0, &unk_261D02500);
  sub_261CFCBC4();
  return sub_261AE6A40(a1, &unk_27FEDE0C0, &unk_261D02500);
}

uint64_t sub_261C983D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E0, &unk_261D02300);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  sub_261AFB668(a1, &v17 - v8, &qword_27FEDA1E0, &unk_261D02300);
  v10 = *(a2 + 176);
  v19[10] = *(a2 + 160);
  v19[11] = v10;
  v19[12] = *(a2 + 192);
  v20 = *(a2 + 208);
  v11 = *(a2 + 112);
  v19[6] = *(a2 + 96);
  v19[7] = v11;
  v12 = *(a2 + 144);
  v19[8] = *(a2 + 128);
  v19[9] = v12;
  v13 = *(a2 + 48);
  v19[2] = *(a2 + 32);
  v19[3] = v13;
  v14 = *(a2 + 80);
  v19[4] = *(a2 + 64);
  v19[5] = v14;
  v15 = *(a2 + 16);
  v19[0] = *a2;
  v19[1] = v15;
  sub_261AFB668(v9, v7, &qword_27FEDA1E0, &unk_261D02300);
  sub_261B49630(v19, &v18);
  sub_261CFCBC4();
  sub_261AE6A40(v9, &qword_27FEDA1E0, &unk_261D02300);
  return sub_261B4968C(v19);
}

uint64_t CreateReminderAppIntent.targetSection.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E0, &unk_261D02300);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261AFB668(a1, &v5 - v3, &qword_27FEDA1E0, &unk_261D02300);
  sub_261CFCBC4();
  return sub_261AE6A40(a1, &qword_27FEDA1E0, &unk_261D02300);
}

uint64_t sub_261C98610(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  sub_261AFB668(a1, &v17 - v8, &unk_27FEDE110, &unk_261D035B0);
  v10 = *(a2 + 176);
  v19[10] = *(a2 + 160);
  v19[11] = v10;
  v19[12] = *(a2 + 192);
  v20 = *(a2 + 208);
  v11 = *(a2 + 112);
  v19[6] = *(a2 + 96);
  v19[7] = v11;
  v12 = *(a2 + 144);
  v19[8] = *(a2 + 128);
  v19[9] = v12;
  v13 = *(a2 + 48);
  v19[2] = *(a2 + 32);
  v19[3] = v13;
  v14 = *(a2 + 80);
  v19[4] = *(a2 + 64);
  v19[5] = v14;
  v15 = *(a2 + 16);
  v19[0] = *a2;
  v19[1] = v15;
  sub_261AFB668(v9, v7, &unk_27FEDE110, &unk_261D035B0);
  sub_261B49630(v19, &v18);
  sub_261CFCBC4();
  sub_261AE6A40(v9, &unk_27FEDE110, &unk_261D035B0);
  return sub_261B4968C(v19);
}

uint64_t CreateReminderAppIntent.parentReminder.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261AFB668(a1, &v5 - v3, &unk_27FEDE110, &unk_261D035B0);
  sub_261CFCBC4();
  return sub_261AE6A40(a1, &unk_27FEDE110, &unk_261D035B0);
}

uint64_t sub_261C9882C()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDDD78);
  v1 = __swift_project_value_buffer(v0, qword_27FEDDD78);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261C988F4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a2 + 176);
  v14[10] = *(a2 + 160);
  v14[11] = v4;
  v14[12] = *(a2 + 192);
  v15 = *(a2 + 208);
  v5 = *(a2 + 112);
  v14[6] = *(a2 + 96);
  v14[7] = v5;
  v6 = *(a2 + 144);
  v14[8] = *(a2 + 128);
  v14[9] = v6;
  v7 = *(a2 + 48);
  v14[2] = *(a2 + 32);
  v14[3] = v7;
  v8 = *(a2 + 80);
  v14[4] = *(a2 + 64);
  v14[5] = v8;
  v9 = *(a2 + 16);
  v14[0] = *a2;
  v14[1] = v9;
  v12 = v3;
  v13 = v2;
  sub_261CFD104();
  sub_261B49630(v14, v11);
  sub_261CFCBC4();
  return sub_261B4968C(v14);
}

uint64_t (*CreateReminderAppIntent.title.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261C98A54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A8, &qword_261D034B0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  sub_261AFB668(a1, &v17 - v8, &qword_27FEDA9A8, &qword_261D034B0);
  v10 = *(a2 + 176);
  v19[10] = *(a2 + 160);
  v19[11] = v10;
  v19[12] = *(a2 + 192);
  v20 = *(a2 + 208);
  v11 = *(a2 + 112);
  v19[6] = *(a2 + 96);
  v19[7] = v11;
  v12 = *(a2 + 144);
  v19[8] = *(a2 + 128);
  v19[9] = v12;
  v13 = *(a2 + 48);
  v19[2] = *(a2 + 32);
  v19[3] = v13;
  v14 = *(a2 + 80);
  v19[4] = *(a2 + 64);
  v19[5] = v14;
  v15 = *(a2 + 16);
  v19[0] = *a2;
  v19[1] = v15;
  sub_261AFB668(v9, v7, &qword_27FEDA9A8, &qword_261D034B0);
  sub_261B49630(v19, &v18);
  sub_261CFCBC4();
  sub_261AE6A40(v9, &qword_27FEDA9A8, &qword_261D034B0);
  return sub_261B4968C(v19);
}

uint64_t CreateReminderAppIntent.note.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A8, &qword_261D034B0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261AFB668(a1, &v5 - v3, &qword_27FEDA9A8, &qword_261D034B0);
  sub_261CFCBC4();
  return sub_261AE6A40(a1, &qword_27FEDA9A8, &qword_261D034B0);
}

uint64_t (*CreateReminderAppIntent.note.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261C98D08(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 176);
  v11[10] = *(a2 + 160);
  v11[11] = v3;
  v11[12] = *(a2 + 192);
  v12 = *(a2 + 208);
  v4 = *(a2 + 112);
  v11[6] = *(a2 + 96);
  v11[7] = v4;
  v5 = *(a2 + 144);
  v11[8] = *(a2 + 128);
  v11[9] = v5;
  v6 = *(a2 + 48);
  v11[2] = *(a2 + 32);
  v11[3] = v6;
  v7 = *(a2 + 80);
  v11[4] = *(a2 + 64);
  v11[5] = v7;
  v8 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v8;
  v10[27] = v2;
  sub_261CFD104();
  sub_261B49630(v11, v10);
  sub_261CFCBC4();
  return sub_261B4968C(v11);
}

uint64_t (*CreateReminderAppIntent.images.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261C98E64(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 176);
  v11[10] = *(a2 + 160);
  v11[11] = v3;
  v11[12] = *(a2 + 192);
  v12 = *(a2 + 208);
  v4 = *(a2 + 112);
  v11[6] = *(a2 + 96);
  v11[7] = v4;
  v5 = *(a2 + 144);
  v11[8] = *(a2 + 128);
  v11[9] = v5;
  v6 = *(a2 + 48);
  v11[2] = *(a2 + 32);
  v11[3] = v6;
  v7 = *(a2 + 80);
  v11[4] = *(a2 + 64);
  v11[5] = v7;
  v8 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v8;
  v10[27] = v2;
  sub_261CFD104();
  sub_261B49630(v11, v10);
  sub_261CFCBC4();
  return sub_261B4968C(v11);
}

uint64_t (*CreateReminderAppIntent.tags.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261C98FC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  sub_261AFB668(a1, &v17 - v8, &qword_27FEDA160, &qword_261D02220);
  v10 = *(a2 + 176);
  v19[10] = *(a2 + 160);
  v19[11] = v10;
  v19[12] = *(a2 + 192);
  v20 = *(a2 + 208);
  v11 = *(a2 + 112);
  v19[6] = *(a2 + 96);
  v19[7] = v11;
  v12 = *(a2 + 144);
  v19[8] = *(a2 + 128);
  v19[9] = v12;
  v13 = *(a2 + 48);
  v19[2] = *(a2 + 32);
  v19[3] = v13;
  v14 = *(a2 + 80);
  v19[4] = *(a2 + 64);
  v19[5] = v14;
  v15 = *(a2 + 16);
  v19[0] = *a2;
  v19[1] = v15;
  sub_261AFB668(v9, v7, &qword_27FEDA160, &qword_261D02220);
  sub_261B49630(v19, &v18);
  sub_261CFCBC4();
  sub_261AE6A40(v9, &qword_27FEDA160, &qword_261D02220);
  return sub_261B4968C(v19);
}

uint64_t CreateReminderAppIntent.dueDate.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261AFB668(a1, &v5 - v3, &qword_27FEDA160, &qword_261D02220);
  sub_261CFCBC4();
  return sub_261AE6A40(a1, &qword_27FEDA160, &qword_261D02220);
}

uint64_t (*CreateReminderAppIntent.dueDate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261C99274(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A0, &unk_261D034A0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  sub_261AFB668(a1, &v17 - v8, &qword_27FEDA9A0, &unk_261D034A0);
  v10 = *(a2 + 176);
  v19[10] = *(a2 + 160);
  v19[11] = v10;
  v19[12] = *(a2 + 192);
  v20 = *(a2 + 208);
  v11 = *(a2 + 112);
  v19[6] = *(a2 + 96);
  v19[7] = v11;
  v12 = *(a2 + 144);
  v19[8] = *(a2 + 128);
  v19[9] = v12;
  v13 = *(a2 + 48);
  v19[2] = *(a2 + 32);
  v19[3] = v13;
  v14 = *(a2 + 80);
  v19[4] = *(a2 + 64);
  v19[5] = v14;
  v15 = *(a2 + 16);
  v19[0] = *a2;
  v19[1] = v15;
  sub_261AFB668(v9, v7, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261B49630(v19, &v18);
  sub_261CFCBC4();
  sub_261AE6A40(v9, &qword_27FEDA9A0, &unk_261D034A0);
  return sub_261B4968C(v19);
}

uint64_t CreateReminderAppIntent.recurrence.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A0, &unk_261D034A0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261AFB668(a1, &v5 - v3, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261CFCBC4();
  return sub_261AE6A40(a1, &qword_27FEDA9A0, &unk_261D034A0);
}

uint64_t (*CreateReminderAppIntent.recurrence.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261C99544()
{
  v0 = sub_261CFD674();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_261CFD884();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_261CFFA44();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_261CFD6A4();
  __swift_allocate_value_buffer(v6, qword_27FEDDD90);
  __swift_project_value_buffer(v6, qword_27FEDDD90);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static CreateReminderAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9CC0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDDD90);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static CreateReminderAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_261CFD674();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_261CFD884();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_261CFFA44();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_261CFD6A4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v6 + 104))(v8, *MEMORY[0x277CC9110], v5);
  sub_261CFD6C4();
  (*(v12 + 56))(v4, 1, 1, v11);
  sub_261CFCF04();
  v13 = sub_261CFCEE4();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t (*CreateReminderAppIntent.name.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261C99B68(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a2 + 176);
  v14[10] = *(a2 + 160);
  v14[11] = v4;
  v14[12] = *(a2 + 192);
  v15 = *(a2 + 208);
  v5 = *(a2 + 112);
  v14[6] = *(a2 + 96);
  v14[7] = v5;
  v6 = *(a2 + 144);
  v14[8] = *(a2 + 128);
  v14[9] = v6;
  v7 = *(a2 + 48);
  v14[2] = *(a2 + 32);
  v14[3] = v7;
  v8 = *(a2 + 80);
  v14[4] = *(a2 + 64);
  v14[5] = v8;
  v9 = *(a2 + 16);
  v14[0] = *a2;
  v14[1] = v9;
  v12 = v3;
  v13 = v2;
  sub_261CFD104();
  sub_261B49630(v14, v11);
  sub_261CFCBC4();
  return sub_261B4968C(v14);
}

uint64_t (*CreateReminderAppIntent.notes.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t (*CreateReminderAppIntent.isAllDay.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t (*CreateReminderAppIntent.dueDateComponents.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261C99DD4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a2 + 176);
  v18[10] = *(a2 + 160);
  v18[11] = v6;
  v18[12] = *(a2 + 192);
  v19 = *(a2 + 208);
  v7 = *(a2 + 112);
  v18[6] = *(a2 + 96);
  v18[7] = v7;
  v8 = *(a2 + 144);
  v18[8] = *(a2 + 128);
  v18[9] = v8;
  v9 = *(a2 + 48);
  v18[2] = *(a2 + 32);
  v18[3] = v9;
  v10 = *(a2 + 80);
  v18[4] = *(a2 + 64);
  v18[5] = v10;
  v11 = *(a2 + 16);
  v18[0] = *a2;
  v18[1] = v11;
  v14 = v2;
  v15 = v3;
  v16 = v4;
  v17 = v5;
  sub_261B530B8(v2, v3, v4, v5);
  sub_261B49630(v18, v13);
  sub_261CFCBC4();
  return sub_261B4968C(v18);
}

uint64_t (*CreateReminderAppIntent.earlyAlert.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261C99F48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A0, &unk_261D034A0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  sub_261AFB668(a1, &v17 - v8, &qword_27FEDA9A0, &unk_261D034A0);
  v10 = *(a2 + 176);
  v19[10] = *(a2 + 160);
  v19[11] = v10;
  v19[12] = *(a2 + 192);
  v20 = *(a2 + 208);
  v11 = *(a2 + 112);
  v19[6] = *(a2 + 96);
  v19[7] = v11;
  v12 = *(a2 + 144);
  v19[8] = *(a2 + 128);
  v19[9] = v12;
  v13 = *(a2 + 48);
  v19[2] = *(a2 + 32);
  v19[3] = v13;
  v14 = *(a2 + 80);
  v19[4] = *(a2 + 64);
  v19[5] = v14;
  v15 = *(a2 + 16);
  v19[0] = *a2;
  v19[1] = v15;
  sub_261AFB668(v9, v7, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261B49630(v19, &v18);
  sub_261CFCBC4();
  sub_261AE6A40(v9, &qword_27FEDA9A0, &unk_261D034A0);
  return sub_261B4968C(v19);
}

uint64_t CreateReminderAppIntent.recurrenceRule.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A0, &unk_261D034A0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261AFB668(a1, &v5 - v3, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261CFCBC4();
  return sub_261AE6A40(a1, &qword_27FEDA9A0, &unk_261D034A0);
}

uint64_t (*CreateReminderAppIntent.recurrenceRule.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261C9A1FC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a2 + 176);
  v13[10] = *(a2 + 160);
  v13[11] = v5;
  v13[12] = *(a2 + 192);
  v14 = *(a2 + 208);
  v6 = *(a2 + 112);
  v13[6] = *(a2 + 96);
  v13[7] = v6;
  v7 = *(a2 + 144);
  v13[8] = *(a2 + 128);
  v13[9] = v7;
  v8 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v8;
  v9 = *(a2 + 80);
  v13[4] = *(a2 + 64);
  v13[5] = v9;
  v10 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v10;
  v12[27] = v2;
  v12[28] = v3;
  v12[29] = v4;
  sub_261B5306C(v2, v3, v4);
  sub_261B49630(v13, v12);
  sub_261CFCBC4();
  return sub_261B4968C(v13);
}

uint64_t (*CreateReminderAppIntent.spatialEventTrigger.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261C9A374(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 176);
  v11[10] = *(a2 + 160);
  v11[11] = v3;
  v11[12] = *(a2 + 192);
  v12 = *(a2 + 208);
  v4 = *(a2 + 112);
  v11[6] = *(a2 + 96);
  v11[7] = v4;
  v5 = *(a2 + 144);
  v11[8] = *(a2 + 128);
  v11[9] = v5;
  v6 = *(a2 + 48);
  v11[2] = *(a2 + 32);
  v11[3] = v6;
  v7 = *(a2 + 80);
  v11[4] = *(a2 + 64);
  v11[5] = v7;
  v8 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v8;
  v10[223] = v2;
  sub_261B49630(v11, v10);
  sub_261CFCBC4();
  return sub_261B4968C(v11);
}

uint64_t (*CreateReminderAppIntent.flags.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t (*CreateReminderAppIntent.priorityLevel.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t (*CreateReminderAppIntent.targetList.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t (*CreateReminderAppIntent.targetSection.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t (*CreateReminderAppIntent.parentReminder.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261AFA230;
}

uint64_t sub_261C9A730(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 176);
  v11[10] = *(a2 + 160);
  v11[11] = v3;
  v11[12] = *(a2 + 192);
  v12 = *(a2 + 208);
  v4 = *(a2 + 112);
  v11[6] = *(a2 + 96);
  v11[7] = v4;
  v5 = *(a2 + 144);
  v11[8] = *(a2 + 128);
  v11[9] = v5;
  v6 = *(a2 + 48);
  v11[2] = *(a2 + 32);
  v11[3] = v6;
  v7 = *(a2 + 80);
  v11[4] = *(a2 + 64);
  v11[5] = v7;
  v8 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v8;
  v10[27] = v2;
  sub_261CFD104();
  sub_261B49630(v11, v10);
  sub_261CFCBC4();
  return sub_261B4968C(v11);
}

uint64_t (*CreateReminderAppIntent.hashtags.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261C9A88C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 176);
  v11[10] = *(a2 + 160);
  v11[11] = v3;
  v11[12] = *(a2 + 192);
  v12 = *(a2 + 208);
  v4 = *(a2 + 112);
  v11[6] = *(a2 + 96);
  v11[7] = v4;
  v5 = *(a2 + 144);
  v11[8] = *(a2 + 128);
  v11[9] = v5;
  v6 = *(a2 + 48);
  v11[2] = *(a2 + 32);
  v11[3] = v6;
  v7 = *(a2 + 80);
  v11[4] = *(a2 + 64);
  v11[5] = v7;
  v8 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v8;
  v10[27] = v2;
  sub_261CFD104();
  sub_261B49630(v11, v10);
  sub_261CFCBC4();
  return sub_261B4968C(v11);
}

uint64_t (*CreateReminderAppIntent.urls.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261C9A9E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0B0, &unk_261D035D0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  sub_261AFB668(a1, &v17 - v8, &unk_27FEDB0B0, &unk_261D035D0);
  v10 = *(a2 + 176);
  v19[10] = *(a2 + 160);
  v19[11] = v10;
  v19[12] = *(a2 + 192);
  v20 = *(a2 + 208);
  v11 = *(a2 + 112);
  v19[6] = *(a2 + 96);
  v19[7] = v11;
  v12 = *(a2 + 144);
  v19[8] = *(a2 + 128);
  v19[9] = v12;
  v13 = *(a2 + 48);
  v19[2] = *(a2 + 32);
  v19[3] = v13;
  v14 = *(a2 + 80);
  v19[4] = *(a2 + 64);
  v19[5] = v14;
  v15 = *(a2 + 16);
  v19[0] = *a2;
  v19[1] = v15;
  sub_261AFB668(v9, v7, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261B49630(v19, &v18);
  sub_261CFCBC4();
  sub_261AE6A40(v9, &unk_27FEDB0B0, &unk_261D035D0);
  return sub_261B4968C(v19);
}

uint64_t CreateReminderAppIntent.contactPerson.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0B0, &unk_261D035D0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261AFB668(a1, &v5 - v3, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261CFCBC4();
  return sub_261AE6A40(a1, &unk_27FEDB0B0, &unk_261D035D0);
}

uint64_t (*CreateReminderAppIntent.contactPerson.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261C9AC9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0B0, &unk_261D035D0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  sub_261AFB668(a1, &v17 - v8, &unk_27FEDB0B0, &unk_261D035D0);
  v10 = *(a2 + 176);
  v19[10] = *(a2 + 160);
  v19[11] = v10;
  v19[12] = *(a2 + 192);
  v20 = *(a2 + 208);
  v11 = *(a2 + 112);
  v19[6] = *(a2 + 96);
  v19[7] = v11;
  v12 = *(a2 + 144);
  v19[8] = *(a2 + 128);
  v19[9] = v12;
  v13 = *(a2 + 48);
  v19[2] = *(a2 + 32);
  v19[3] = v13;
  v14 = *(a2 + 80);
  v19[4] = *(a2 + 64);
  v19[5] = v14;
  v15 = *(a2 + 16);
  v19[0] = *a2;
  v19[1] = v15;
  sub_261AFB668(v9, v7, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261B49630(v19, &v18);
  sub_261CFCBC4();
  sub_261AE6A40(v9, &unk_27FEDB0B0, &unk_261D035D0);
  return sub_261B4968C(v19);
}

uint64_t CreateReminderAppIntent.assignedPerson.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0B0, &unk_261D035D0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261AFB668(a1, &v5 - v3, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261CFCBC4();
  return sub_261AE6A40(a1, &unk_27FEDB0B0, &unk_261D035D0);
}

uint64_t (*CreateReminderAppIntent.assignedPerson.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261C9AF50(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 176);
  v11[10] = *(a2 + 160);
  v11[11] = v3;
  v11[12] = *(a2 + 192);
  v12 = *(a2 + 208);
  v4 = *(a2 + 112);
  v11[6] = *(a2 + 96);
  v11[7] = v4;
  v5 = *(a2 + 144);
  v11[8] = *(a2 + 128);
  v11[9] = v5;
  v6 = *(a2 + 48);
  v11[2] = *(a2 + 32);
  v11[3] = v6;
  v7 = *(a2 + 80);
  v11[4] = *(a2 + 64);
  v11[5] = v7;
  v8 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v8;
  v10[27] = v2;
  sub_261CFD104();
  sub_261B49630(v11, v10);
  sub_261CFCBC4();
  return sub_261B4968C(v11);
}

uint64_t (*CreateReminderAppIntent.subtasks.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261C9B0AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA998, &unk_261D10200);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  sub_261AFB668(a1, &v17 - v8, &qword_27FEDA998, &unk_261D10200);
  v10 = *(a2 + 176);
  v19[10] = *(a2 + 160);
  v19[11] = v10;
  v19[12] = *(a2 + 192);
  v20 = *(a2 + 208);
  v11 = *(a2 + 112);
  v19[6] = *(a2 + 96);
  v19[7] = v11;
  v12 = *(a2 + 144);
  v19[8] = *(a2 + 128);
  v19[9] = v12;
  v13 = *(a2 + 48);
  v19[2] = *(a2 + 32);
  v19[3] = v13;
  v14 = *(a2 + 80);
  v19[4] = *(a2 + 64);
  v19[5] = v14;
  v15 = *(a2 + 16);
  v19[0] = *a2;
  v19[1] = v15;
  sub_261AFB668(v9, v7, &qword_27FEDA998, &unk_261D10200);
  sub_261B49630(v19, &v18);
  sub_261CFCBC4();
  sub_261AE6A40(v9, &qword_27FEDA998, &unk_261D10200);
  return sub_261B4968C(v19);
}

uint64_t CreateReminderAppIntent.image.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA998, &unk_261D10200);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261AFB668(a1, &v5 - v3, &qword_27FEDA998, &unk_261D10200);
  sub_261CFCBC4();
  return sub_261AE6A40(a1, &qword_27FEDA998, &unk_261D10200);
}

uint64_t (*CreateReminderAppIntent.image.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t CreateReminderAppIntent.perform()(uint64_t a1)
{
  *(v2 + 448) = a1;
  v3 = *(v1 + 176);
  *(v2 + 176) = *(v1 + 160);
  *(v2 + 192) = v3;
  *(v2 + 208) = *(v1 + 192);
  *(v2 + 224) = *(v1 + 208);
  v4 = *(v1 + 112);
  *(v2 + 112) = *(v1 + 96);
  *(v2 + 128) = v4;
  v5 = *(v1 + 144);
  *(v2 + 144) = *(v1 + 128);
  *(v2 + 160) = v5;
  v6 = *(v1 + 48);
  *(v2 + 48) = *(v1 + 32);
  *(v2 + 64) = v6;
  v7 = *(v1 + 80);
  *(v2 + 80) = *(v1 + 64);
  *(v2 + 96) = v7;
  v8 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v8;
  sub_261CFFD24();
  *(v2 + 456) = sub_261CFFD14();
  v10 = sub_261CFFCF4();
  *(v2 + 464) = v10;
  *(v2 + 472) = v9;

  return MEMORY[0x2822009F8](sub_261C9B440, v10, v9);
}

uint64_t sub_261C9B440()
{
  sub_261B49630(v0 + 16, v0 + 232);
  v1 = swift_task_alloc();
  *(v0 + 480) = v1;
  *v1 = v0;
  v1[1] = sub_261C9B508;
  v2 = *(v0 + 448);

  return sub_261C55A68(v2, "CreateReminderAppIntent", 23, 2, v0 + 16);
}

uint64_t sub_261C9B508()
{
  v2 = *v1;
  *(*v1 + 488) = v0;

  v3 = *(v2 + 472);
  v4 = *(v2 + 464);
  if (v0)
  {
    v5 = sub_261CA0064;
  }

  else
  {
    v5 = sub_261CA0068;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_261C9B644(uint64_t a1, uint64_t a2)
{
  v2[34] = a1;
  v2[35] = a2;
  sub_261CFFD24();
  v2[36] = sub_261CFFD14();
  v4 = sub_261CFFCF4();
  v2[37] = v4;
  v2[38] = v3;

  return MEMORY[0x2822009F8](sub_261C9B6DC, v4, v3);
}

uint64_t sub_261C9B6DC()
{
  v1 = *(v0 + 280);
  sub_261B281F8(0);
  sub_261CFC664();
  v2 = *(v0 + 256);
  v3 = *(v0 + 264);
  __swift_project_boxed_opaque_existential_1((v0 + 232), v2);
  v4 = *(v1 + 16);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v4;
  v5 = *(v1 + 80);
  v7 = *(v1 + 32);
  v6 = *(v1 + 48);
  *(v0 + 80) = *(v1 + 64);
  *(v0 + 96) = v5;
  *(v0 + 48) = v7;
  *(v0 + 64) = v6;
  v8 = *(v1 + 144);
  v10 = *(v1 + 96);
  v9 = *(v1 + 112);
  *(v0 + 144) = *(v1 + 128);
  *(v0 + 160) = v8;
  *(v0 + 112) = v10;
  *(v0 + 128) = v9;
  v12 = *(v1 + 176);
  v11 = *(v1 + 192);
  v13 = *(v1 + 160);
  *(v0 + 224) = *(v1 + 208);
  *(v0 + 192) = v12;
  *(v0 + 208) = v11;
  *(v0 + 176) = v13;
  v17 = (*(v3 + 8) + **(v3 + 8));
  v14 = swift_task_alloc();
  *(v0 + 312) = v14;
  *v14 = v0;
  v14[1] = sub_261C9B870;
  v15 = *(v0 + 272);

  return v17(v15, v0 + 16, v2, v3);
}

uint64_t sub_261C9B870()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  v3 = *(v2 + 296);
  v4 = *(v2 + 304);
  if (v0)
  {
    v5 = sub_261C9B9F0;
  }

  else
  {
    v5 = sub_261C9B984;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_261C9B984()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 232));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261C9B9F0()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 232));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261C9BA7C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA120, &qword_261D02820);
  *(v0 + 48) = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  v1 = sub_261CFC684();
  *(v0 + 24) = v1;
  sub_261CFCDA4();
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_261B0AF4C;
  v3 = *(v0 + 16);

  return sub_261C523B8(v3, "ListEntityQuery.suggestedEntities", 33, 2, v1);
}

uint64_t sub_261C9BBD0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA120, &qword_261D02820);
  *(v0 + 80) = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  v1 = sub_261CFC684();
  *(v0 + 56) = v1;
  sub_261CFCDA4();
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_261C9BD04;
  v3 = *(v0 + 48);

  return sub_261C538B0(v3, "ListEntityQuery.defaultListEntity", 33, 2, v1);
}

uint64_t sub_261C9BD04()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_261C9BE40, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_261C9BE40()
{
  v18 = v0;

  if (qword_27FED9CB8 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = sub_261CFF7A4();
  __swift_project_value_buffer(v2, qword_27FEDDD78);
  v3 = v1;
  v4 = sub_261CFF784();
  v5 = sub_261CFFE64();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_261D00674();
    v12 = sub_261B879C8(v10, v11, &v17);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_261AE2000, v4, v5, "[CreateReminderAppIntent] Failed to fetch default list entity with error: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x26671D560](v9, -1, -1);
    MEMORY[0x26671D560](v8, -1, -1);
  }

  else
  {
  }

  v13 = v0[6];
  v14 = type metadata accessor for ListEntity(0);
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = v0[1];

  return v15();
}

uint64_t sub_261C9C04C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261AF43A8;

  return sub_261C9BA5C(a1);
}

uint64_t sub_261C9C0E4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261AF4BDC;

  return sub_261C9BBB0(a1);
}

uint64_t sub_261C9C17C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD940, &qword_261D04B70);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAE40, qword_261D10370);
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0);
  v3[12] = swift_task_alloc();
  v3[13] = type metadata accessor for ListEntity(0);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C9C328, 0, 0);
}

uint64_t sub_261C9C328(uint64_t a1)
{
  if (!sub_261CFD1F4())
  {
    type metadata accessor for SectionEntity(0);
    sub_261CA001C(&qword_280D224D0, type metadata accessor for SectionEntity, &protocol conformance descriptor for SectionEntity);
    sub_261CFCFD4();
    goto LABEL_5;
  }

  v3 = *(v1 + 112);
  v2 = *(v1 + 120);
  swift_getKeyPath();
  sub_261C0F51C();
  sub_261CFCD54();

  sub_261B01E2C(v3, v2);
  if (sub_261CFD1F4())
  {
    v4 = *(v1 + 120);
    v5 = *(v1 + 96);
    swift_getKeyPath();
    sub_261C0F684();
    sub_261CFCD54();

    v6 = type metadata accessor for ReminderEntity(0);
    (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
    sub_261AE6A40(v5, &unk_27FEDE110, &unk_261D035B0);
    type metadata accessor for SectionEntity(0);
    sub_261CA001C(&qword_280D224D0, type metadata accessor for SectionEntity, &protocol conformance descriptor for SectionEntity);
    sub_261CFCFD4();
    sub_261B0A1F0(v4);
LABEL_5:

    v7 = *(v1 + 8);

    return v7();
  }

  v9 = *(v1 + 96);
  v10 = *(v1 + 64);
  v11 = type metadata accessor for ReminderEntity(0);
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  sub_261AE6A40(v9, &unk_27FEDE110, &unk_261D035B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAE18, &qword_261D04970);
  *(v1 + 168) = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  v12 = sub_261CFC684();
  *(v1 + 128) = v12;
  v13 = AppEntityID.entityIdentifierString.getter();
  v15 = v14;
  v16 = swift_task_alloc();
  *(v1 + 136) = v16;
  *(v16 + 16) = v13;
  *(v16 + 24) = v15;
  *(v1 + 16) = type metadata accessor for SectionEntity(0);
  sub_261CFDAE4();

  v17 = swift_task_alloc();
  *(v1 + 144) = v17;
  *(v17 + 16) = v12;
  *(v17 + 24) = v10;
  *(v17 + 32) = 1;
  v18 = swift_task_alloc();
  *(v1 + 152) = v18;
  *v18 = v1;
  v18[1] = sub_261C9C770;
  v19 = *(v1 + 88);

  return sub_261CC1B58(v19, &unk_261D10938, v17, "SectionEntityQuery.entitiesInList", 33, 2);
}

uint64_t sub_261C9C770()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_261C9C99C;
  }

  else
  {
    v2 = sub_261C9C884;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261C9C884()
{
  v1 = v0[15];
  v3 = v0[10];
  v2 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[3];

  (*(v6 + 8))(v5, v7);
  sub_261B0A1F0(v1);
  (*(v3 + 32))(v8, v2, v4);

  v9 = v0[1];

  return v9();
}

uint64_t sub_261C9C99C()
{
  v1 = v0[15];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];

  (*(v3 + 8))(v2, v4);
  sub_261B0A1F0(v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_261C9CA8C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_261AF4BDC;

  return sub_261C9C17C(a1, v5, v4);
}

uint64_t sub_261C9CB38(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_261BA64E4;

  return sub_261C9E58C();
}

uint64_t sub_261C9CBC8(uint64_t a1)
{
  v1[3] = a1;
  v1[4] = type metadata accessor for ListEntity(0);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C9CC68, 0, 0);
}

uint64_t sub_261C9CC68(uint64_t a1)
{
  v2 = sub_261CFD1F4();
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v5 = v1[5];
    v4 = v1[6];
    swift_getKeyPath();
    sub_261C0F51C();
    sub_261CFCD54();

    sub_261B01E2C(v5, v4);
    sub_261CFCA04();
    if (v1[2])
    {
      v3 = v1[2];
    }

    sub_261B0A1F0(v4);
  }

  v6 = v1[1];

  return v6(v3);
}

uint64_t sub_261C9CD6C(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_261BA6EA0;

  return sub_261C9CBC8(v3);
}

uint64_t sub_261C9CE04(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_261BA6EA0;

  return sub_261C9E958();
}

uint64_t sub_261C9CE94(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_261BA6EA0;

  return sub_261C9F908();
}

uint64_t sub_261C9CF24@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9CC0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDDD90);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261C9CFD0(uint64_t a1)
{
  *(v2 + 448) = a1;
  v3 = *(v1 + 176);
  *(v2 + 176) = *(v1 + 160);
  *(v2 + 192) = v3;
  *(v2 + 208) = *(v1 + 192);
  *(v2 + 224) = *(v1 + 208);
  v4 = *(v1 + 112);
  *(v2 + 112) = *(v1 + 96);
  *(v2 + 128) = v4;
  v5 = *(v1 + 144);
  *(v2 + 144) = *(v1 + 128);
  *(v2 + 160) = v5;
  v6 = *(v1 + 48);
  *(v2 + 48) = *(v1 + 32);
  *(v2 + 64) = v6;
  v7 = *(v1 + 80);
  *(v2 + 80) = *(v1 + 64);
  *(v2 + 96) = v7;
  v8 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v8;
  sub_261CFFD24();
  *(v2 + 456) = sub_261CFFD14();
  v10 = sub_261CFFCF4();
  *(v2 + 464) = v10;
  *(v2 + 472) = v9;

  return MEMORY[0x2822009F8](sub_261C9D0A8, v10, v9);
}

uint64_t sub_261C9D0A8()
{
  sub_261B49630(v0 + 16, v0 + 232);
  v1 = swift_task_alloc();
  *(v0 + 480) = v1;
  *v1 = v0;
  v1[1] = sub_261C9D170;
  v2 = *(v0 + 448);

  return sub_261C55A68(v2, "CreateReminderAppIntent", 23, 2, v0 + 16);
}

uint64_t sub_261C9D170()
{
  v2 = *v1;
  *(*v1 + 488) = v0;

  v3 = *(v2 + 472);
  v4 = *(v2 + 464);
  if (v0)
  {
    v5 = sub_261C9D310;
  }

  else
  {
    v5 = sub_261C9D2AC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_261C9D2AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261C9D310()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261C9D378@<X0>(uint64_t *a2@<X8>)
{
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

unint64_t sub_261C9D3A4()
{
  result = qword_27FEDDDC8;
  if (!qword_27FEDDDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDDC8);
  }

  return result;
}

unint64_t sub_261C9D3F8()
{
  result = qword_27FEDDDD0;
  if (!qword_27FEDDDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDDD0);
  }

  return result;
}

unint64_t sub_261C9D44C()
{
  result = qword_27FEDDDD8;
  if (!qword_27FEDDDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDDD8);
  }

  return result;
}

unint64_t sub_261C9D4A0()
{
  result = qword_27FEDDDE8;
  if (!qword_27FEDDDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDDE8);
  }

  return result;
}

unint64_t sub_261C9D4F8()
{
  result = qword_27FEDDE00;
  if (!qword_27FEDDE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDE00);
  }

  return result;
}

unint64_t sub_261C9D598()
{
  result = qword_27FEDDE08;
  if (!qword_27FEDDE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDE08);
  }

  return result;
}

unint64_t sub_261C9D638()
{
  result = qword_27FEDDE10;
  if (!qword_27FEDDE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDE10);
  }

  return result;
}

unint64_t sub_261C9D6D8()
{
  result = qword_27FEDDE20;
  if (!qword_27FEDDE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDE20);
  }

  return result;
}

unint64_t sub_261C9D778()
{
  result = qword_27FEDDE28;
  if (!qword_27FEDDE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDDE30, qword_261D104A0);
    sub_261CA001C(&qword_280D22DC8, MEMORY[0x277CB9DB8], MEMORY[0x277CB9DB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDE28);
  }

  return result;
}

unint64_t sub_261C9D830()
{
  result = qword_27FEDDE38;
  if (!qword_27FEDDE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDE38);
  }

  return result;
}

unint64_t sub_261C9D8D0()
{
  result = qword_27FEDDE40;
  if (!qword_27FEDDE40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDDE48, qword_261D10538);
    sub_261CA001C(&qword_280D22D98, MEMORY[0x277CC98D8], MEMORY[0x277CBA500]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDE40);
  }

  return result;
}

unint64_t sub_261C9D988()
{
  result = qword_27FEDDE50;
  if (!qword_27FEDDE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDE50);
  }

  return result;
}

uint64_t sub_261C9DA24(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_261C9DAA4()
{
  result = qword_27FEDDE68;
  if (!qword_27FEDDE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDE68);
  }

  return result;
}

unint64_t sub_261C9DAFC()
{
  result = qword_27FEDDE70;
  if (!qword_27FEDDE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDE70);
  }

  return result;
}

unint64_t sub_261C9DB54()
{
  result = qword_27FEDDE78;
  if (!qword_27FEDDE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDE78);
  }

  return result;
}

uint64_t destroy for CreateReminderAppIntent(void *a1)
{
}

uint64_t *initializeWithCopy for CreateReminderAppIntent(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[5];
  a1[4] = a2[4];
  a1[5] = v5;
  v6 = a2[7];
  a1[6] = a2[6];
  a1[7] = v6;
  v7 = a2[9];
  a1[8] = a2[8];
  a1[9] = v7;
  v10 = a2[11];
  a1[10] = a2[10];
  a1[11] = v10;
  v11 = a2[13];
  a1[12] = a2[12];
  a1[13] = v11;
  v12 = a2[15];
  a1[14] = a2[14];
  a1[15] = v12;
  v13 = a2[17];
  a1[16] = a2[16];
  a1[17] = v13;
  v14 = a2[19];
  a1[18] = a2[18];
  a1[19] = v14;
  v15 = a2[21];
  a1[20] = a2[20];
  a1[21] = v15;
  v16 = a2[23];
  a1[22] = a2[22];
  a1[23] = v16;
  v8 = a2[25];
  a1[24] = a2[24];
  a1[25] = v8;
  a1[26] = a2[26];
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFD104();
  sub_261CFCDA4();
  return a1;
}

uint64_t *assignWithCopy for CreateReminderAppIntent(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  sub_261CFCDA4();

  a1[1] = a2[1];
  sub_261CFCDA4();

  a1[2] = a2[2];
  sub_261CFCDA4();

  a1[3] = a2[3];
  sub_261CFCDA4();

  a1[4] = a2[4];
  sub_261CFCDA4();

  a1[5] = a2[5];
  sub_261CFCDA4();

  a1[6] = a2[6];
  sub_261CFCDA4();

  a1[7] = a2[7];
  sub_261CFCDA4();

  a1[8] = a2[8];
  sub_261CFCDA4();

  a1[9] = a2[9];
  sub_261CFCDA4();

  a1[10] = a2[10];
  sub_261CFCDA4();

  a1[11] = a2[11];
  sub_261CFCDA4();

  a1[12] = a2[12];
  sub_261CFCDA4();

  a1[13] = a2[13];
  sub_261CFCDA4();

  a1[14] = a2[14];
  sub_261CFCDA4();

  a1[15] = a2[15];
  sub_261CFCDA4();

  a1[16] = a2[16];
  sub_261CFCDA4();

  a1[17] = a2[17];
  sub_261CFCDA4();

  a1[18] = a2[18];
  sub_261CFCDA4();

  a1[19] = a2[19];
  sub_261CFCDA4();

  a1[20] = a2[20];
  sub_261CFCDA4();

  a1[21] = a2[21];
  sub_261CFCDA4();

  a1[22] = a2[22];
  sub_261CFCDA4();

  a1[23] = a2[23];
  sub_261CFCDA4();

  a1[24] = a2[24];
  a1[25] = a2[25];
  sub_261CFD104();

  a1[26] = a2[26];
  sub_261CFCDA4();

  return a1;
}

__n128 __swift_memcpy216_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

void *assignWithTake for CreateReminderAppIntent(void *a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 1) = *(a2 + 16);

  *(a1 + 2) = *(a2 + 32);

  *(a1 + 3) = *(a2 + 48);

  *(a1 + 4) = *(a2 + 64);

  *(a1 + 5) = *(a2 + 80);

  *(a1 + 6) = *(a2 + 96);

  *(a1 + 7) = *(a2 + 112);

  *(a1 + 8) = *(a2 + 128);

  *(a1 + 9) = *(a2 + 144);

  *(a1 + 10) = *(a2 + 160);

  *(a1 + 11) = *(a2 + 176);

  a1[24] = *(a2 + 192);

  *(a1 + 25) = *(a2 + 200);

  return a1;
}

uint64_t getEnumTagSinglePayload for CreateReminderAppIntent(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
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

uint64_t storeEnumTagSinglePayload for CreateReminderAppIntent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
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
      *(result + 216) = 1;
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

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of CreateReminderIntentPerforming.perform(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_261AF4BDC;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_261C9E5A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBD10, &qword_261D083B0);
  swift_getKeyPath();
  v1 = sub_261CFD204();
  *(v0 + 16) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDDE90, &qword_261D11470);
  *(v0 + 56) = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  v2 = sub_261CFC684();
  *(v0 + 24) = v2;
  sub_261CFCDA4();
  sub_261CFCDA4();
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_261C9E714;

  return sub_261C60A58("ReminderEntityQuery.suggestedHashtagLabels", 42, 2, v1, v2);
}

uint64_t sub_261C9E714(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_261C9E8EC;
  }

  else
  {
    *(v4 + 48) = a1;
    v5 = sub_261C9E87C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_261C9E87C()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 48);

  return v1(v2);
}

uint64_t sub_261C9E8EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261C9E958()
{
  v1 = sub_261CFDA64();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = sub_261CFD8B4();
  v0[5] = v2;
  v0[6] = *(v2 - 8);
  v0[7] = swift_task_alloc();
  v3 = sub_261CFD944();
  v0[8] = v3;
  v0[9] = *(v3 - 8);
  v0[10] = swift_task_alloc();
  v4 = sub_261CFDA84();
  v0[11] = v4;
  v0[12] = *(v4 - 8);
  v0[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C9EB28, 0, 0);
}

uint64_t sub_261C9EB28()
{
  v1 = v0[13];
  v46 = v0[12];
  v2 = v0[10];
  v3 = v0[11];
  v35 = v3;
  v47 = v0[9];
  v40 = v0[8];
  v4 = v0[6];
  v5 = v0[7];
  v7 = v0[4];
  v6 = v0[5];
  v8 = v0[3];
  v44 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDE88, &unk_261D108E0);
  sub_261CFDA54();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_261D0A040;
  sub_261CFDA74();
  sub_261CFD924();
  v42 = *MEMORY[0x277CC9868];
  v36 = *(v4 + 104);
  v36(v5);
  v45 = *MEMORY[0x277CC9900];
  v39 = *(v8 + 104);
  v39(v7);
  v30 = v2;
  v31 = v5;
  v33 = v7;
  sub_261CFD994();
  v43 = *(v8 + 8);
  v43(v7, v44);
  v38 = *(v4 + 8);
  v34 = v6;
  v38(v5, v6);
  v41 = *(v47 + 8);
  v41(v2, v40);
  v37 = *(v46 + 8);
  v32 = v1;
  v37(v1, v3);
  sub_261CFDA74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA7C8, &qword_261D03348);
  v9 = sub_261CFD9E4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 72);
  v26 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_261D01400;
  v13 = v12 + v26;
  v14 = *MEMORY[0x277CC96E0];
  v15 = sub_261CFD864();
  v16 = *(*(v15 - 8) + 104);
  v16(v13, v14, v15);
  v25 = v16;
  v17 = *MEMORY[0x277CC9898];
  v18 = *(v10 + 104);
  v24 = *MEMORY[0x277CC9898];
  v18(v13, v17, v9);
  v16(v13 + v11, *MEMORY[0x277CC96F0], v15);
  v18(v13 + v11, v17, v9);
  sub_261CFD924();
  (v36)(v31, v42, v34);
  (v39)(v33, v45, v44);
  sub_261CFD9C4();

  v43(v33, v44);
  v38(v31, v34);
  v41(v30, v40);
  v37(v32, v35);
  sub_261CFDA74();
  v19 = v11;
  v23 = 4 * v11;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_261D06F90;
  v25(v27 + v26, *MEMORY[0x277CC96D8], v15);
  v18(v27 + v26, v24, v9);
  v25(v27 + v26 + v11, *MEMORY[0x277CC96E8], v15);
  v18(v27 + v26 + v11, v24, v9);
  v11 *= 2;
  v25(v27 + v26 + v11, *MEMORY[0x277CC9700], v15);
  v18(v27 + v26 + v11, v24, v9);
  v20 = v11 + v19;
  v25(v27 + v26 + v20, *MEMORY[0x277CC96F8], v15);
  v18(v27 + v26 + v20, v24, v9);
  v25(v27 + v26 + v23, *MEMORY[0x277CC96D0], v15);
  v18(v27 + v26 + v23, v24, v9);
  sub_261CFD924();
  (v36)(v31, v42, v34);
  (v39)(v33, v45, v44);
  sub_261CFD9C4();

  v43(v33, v44);
  v38(v31, v34);
  v41(v30, v40);
  v37(v32, v35);
  sub_261CFDA74();
  sub_261CFD924();
  (v36)(v31, v42, v34);
  (v39)(v33, v45, v44);
  sub_261CFD9C4();
  v43(v33, v44);
  v38(v31, v34);
  v41(v30, v40);
  v37(v32, v35);
  sub_261CFDA74();
  sub_261CFD924();
  (v36)(v31, v42, v34);
  (v39)(v33, v45, v44);
  sub_261CFD9C4();
  v43(v33, v44);
  v38(v31, v34);
  v41(v30, v40);
  v37(v32, v35);
  sub_261CFDA74();
  sub_261CFD924();
  (v36)(v31, v42, v34);
  (v39)(v33, v45, v44);
  sub_261CFD9F4();
  v43(v33, v44);
  v38(v31, v34);
  v41(v30, v40);
  v37(v32, v35);
  sub_261CFDA74();
  sub_261CFD924();
  (v36)(v31, v42, v34);
  (v39)(v33, v45, v44);
  sub_261CFD9F4();
  v43(v33, v44);
  v38(v31, v34);
  v41(v30, v40);
  v37(v32, v35);
  sub_261CFDA74();
  sub_261CFD924();
  (v36)(v31, v42, v34);
  (v39)(v33, v45, v44);
  sub_261CFD9F4();
  v43(v33, v44);
  v38(v31, v34);
  v41(v30, v40);
  v37(v32, v35);
  sub_261CFDA74();
  sub_261CFD924();
  (v36)(v31, v42, v34);
  (v39)(v33, v45, v44);
  sub_261CFD9D4();
  v43(v33, v44);
  v38(v31, v34);
  v41(v30, v40);
  v37(v32, v35);

  v21 = *(v29 + 8);

  return v21(v28);
}

uint64_t sub_261C9F908()
{
  v1 = sub_261CFD674();
  v0[4] = v1;
  v0[5] = *(v1 - 8);
  v0[6] = swift_task_alloc();
  sub_261CFD884();
  v0[7] = swift_task_alloc();
  sub_261CFFA44();
  v0[8] = swift_task_alloc();
  sub_261CFD6A4();
  v0[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C9FA48, 0, 0);
}

uint64_t sub_261C9FA48()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);
  v9 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDE80, &qword_261D108B8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_261D01400;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB28, &unk_261D108C0);
  sub_261CFF9B4();
  sub_261CFD874();
  v8 = *MEMORY[0x277CC9110];
  v5 = *(v2 + 104);
  v5(v1);
  sub_261CFD6C4();
  sub_261B54038();
  v4[4] = sub_261CFCA34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB38, &unk_261D08660);
  sub_261CFF9B4();
  sub_261CFD874();
  (v5)(v1, v8, v9);
  sub_261CFD6C4();
  sub_261B5408C();
  v4[5] = sub_261CFCA34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB48, &qword_261D108D0);
  sub_261CFF9B4();
  sub_261CFD874();
  (v5)(v1, v8, v9);
  sub_261CFD6C4();
  v4[6] = sub_261CFCB64();
  *(v0 + 80) = 1;
  sub_261CFCA14();
  *(v0 + 81) = 1;
  sub_261CFCA14();
  *(v0 + 16) = 0;
  sub_261CFCA14();
  sub_261CFF9B4();
  sub_261CFD874();
  (v5)(v1, v8, v9);
  sub_261CFD6C4();
  v4[7] = sub_261CFCA34();
  sub_261CFF9B4();
  sub_261CFD874();
  (v5)(v1, v8, v9);
  sub_261CFD6C4();
  v4[8] = sub_261CFCA34();
  sub_261CFF9B4();
  sub_261CFD874();
  (v5)(v1, v8, v9);
  sub_261CFD6C4();
  v4[9] = sub_261CFCB64();
  *(v0 + 82) = 1;
  sub_261CFCA14();
  *(v0 + 83) = 2;
  sub_261CFCA14();
  *(v0 + 24) = 0;
  sub_261CFCA14();

  v6 = *(v0 + 8);

  return v6(v4);
}

uint64_t sub_261C9FF68(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_261AF43A8;

  return sub_261B6DC04(a1, v4, v5, v6);
}

uint64_t sub_261CA001C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_261CA0074()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDDEA0);
  v1 = __swift_project_value_buffer(v0, qword_27FEDDEA0);
  if (qword_280D22880 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D26FF8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t RemindersInCalendarUtilities.SetReminderCompletedRequest.reminderIDs.getter()
{
  sub_261CFD104();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDDEB8, &qword_261D10990);
  sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
  sub_261CA04A0(&unk_27FEDDEC8, &unk_27FEDDEB8, &qword_261D10990);
  sub_261B3B918();
  v0 = sub_261CFFC24();

  return v0;
}

uint64_t sub_261CA021C@<X0>(uint64_t *a2@<X8>)
{
  sub_261CFD104();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDDEB8, &qword_261D10990);
  sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
  sub_261CA04A0(&unk_27FEDDEC8, &unk_27FEDDEB8, &qword_261D10990);
  sub_261B3B918();
  v3 = sub_261CFFC24();

  *a2 = v3;
  return result;
}

uint64_t sub_261CA0300(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDED8, &qword_261D10998);
  type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier(0);
  sub_261CA04A0(&qword_27FEDDEE0, &qword_27FEDDED8, &qword_261D10998);
  sub_261CA04F4();
  v3 = sub_261CFFC24();

  *a2 = v3;
  return result;
}

uint64_t RemindersInCalendarUtilities.SetReminderCompletedRequest.reminderIDs.setter(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDED8, &qword_261D10998);
  type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier(0);
  sub_261CA04A0(&qword_27FEDDEE0, &qword_27FEDDED8, &qword_261D10998);
  sub_261CA04F4();
  v3 = sub_261CFFC24();

  *v2 = v3;
  return result;
}

uint64_t sub_261CA04A0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_261CA04F4()
{
  result = qword_27FEDDEE8;
  if (!qword_27FEDDEE8)
  {
    type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDDEE8);
  }

  return result;
}

void (*RemindersInCalendarUtilities.SetReminderCompletedRequest.reminderIDs.modify(uint64_t **a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[2] = v1;
  v5 = *v1;
  v3[3] = *v1;
  v3[1] = v5;
  sub_261CFD104();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDDEB8, &qword_261D10990);
  sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
  sub_261CA04A0(&unk_27FEDDEC8, &unk_27FEDDEB8, &qword_261D10990);
  sub_261B3B918();
  v6 = sub_261CFFC24();
  v4[4] = 0;

  *v4 = v6;
  return sub_261CA0688;
}

void sub_261CA0688(uint64_t **a1, char a2)
{
  v2 = *a1;
  (*a1)[1] = **a1;
  v3 = v2[2];
  if (a2)
  {
    sub_261CFD104();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDED8, &qword_261D10998);
    type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier(0);
    sub_261CA04A0(&qword_27FEDDEE0, &qword_27FEDDED8, &qword_261D10998);
    sub_261CA04F4();
    v4 = sub_261CFFC24();

    *v3 = v4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDED8, &qword_261D10998);
    type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier(0);
    sub_261CA04A0(&qword_27FEDDEE0, &qword_27FEDDED8, &qword_261D10998);
    sub_261CA04F4();
    v5 = sub_261CFFC24();

    *v3 = v5;
  }

  free(v2);
}

uint64_t RemindersInCalendarUtilities.SetReminderCompletedRequest.reminderSpecifiers.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

void *RemindersInCalendarUtilities.SetReminderCompletedRequest.undoManager.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t RemindersInCalendarUtilities.SetReminderCompletedRequest.init(reminderIDs:isCompleted:)@<X0>(char a2@<W1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDED8, &qword_261D10998);
  type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier(0);
  sub_261CA04A0(&qword_27FEDDEE0, &qword_27FEDDED8, &qword_261D10998);
  sub_261CA04F4();
  v5 = sub_261CFFC24();

  *a3 = v5;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  return result;
}

id sub_261CA0A00@<X0>(void **a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = *(type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier(0) + 20);
  v5 = sub_261CFD4E4();
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  *a2 = v3;
  return v3;
}

uint64_t RemindersInCalendarUtilities.SetReminderCompletedRequest.init(reminderSpecifiers:isCompleted:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = 0;
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t RemindersInCalendarUtilities.SetReminderCompletedResult.SuccessResult.optimisticallyUpdatedReminders.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t RemindersInCalendarUtilities.RequestPerformer.perform(_:)(uint64_t a1, uint64_t *a2)
{
  *(v3 + 192) = a1;
  *(v3 + 200) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDDEF0, &qword_261D109A8);
  *(v3 + 208) = swift_task_alloc();
  v5 = sub_261CFE724();
  *(v3 + 216) = v5;
  v6 = *(v5 - 8);
  *(v3 + 224) = v6;
  *(v3 + 232) = *(v6 + 64);
  *(v3 + 240) = swift_task_alloc();
  *(v3 + 248) = swift_task_alloc();
  v7 = sub_261CFE664();
  *(v3 + 256) = v7;
  *(v3 + 264) = *(v7 - 8);
  *(v3 + 272) = swift_task_alloc();
  v8 = sub_261CFED34();
  *(v3 + 280) = v8;
  *(v3 + 288) = *(v8 - 8);
  v9 = swift_task_alloc();
  v10 = *a2;
  *(v3 + 296) = v9;
  *(v3 + 304) = v10;
  *(v3 + 440) = *(a2 + 8);
  *(v3 + 312) = a2[2];
  sub_261CFFD24();
  *(v3 + 320) = sub_261CFFD14();
  v12 = sub_261CFFCF4();
  *(v3 + 328) = v12;
  *(v3 + 336) = v11;

  return MEMORY[0x2822009F8](sub_261CA0CFC, v12, v11);
}

{
  v3[8] = a1;
  v3[9] = v2;
  v5 = sub_261CFED34();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *a2;
  v8 = a2[1];
  v3[12] = v6;
  v3[13] = v7;
  v3[14] = v8;
  sub_261CFFD24();
  v3[15] = sub_261CFFD14();
  v10 = sub_261CFFCF4();
  v3[16] = v10;
  v3[17] = v9;

  return MEMORY[0x2822009F8](sub_261CC5018, v10, v9);
}

uint64_t sub_261CA0CFC()
{
  v45 = v0;
  if (qword_27FED9CC8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 312);
  v2 = sub_261CFF7A4();
  *(v0 + 344) = __swift_project_value_buffer(v2, qword_27FEDDEA0);
  v3 = v1;
  sub_261CFD104();
  v4 = sub_261CFF784();
  v5 = sub_261CFFE84();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 440);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v44 = v8;
    *v7 = 136315394;
    type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier(0);
    sub_261CA04F4();
    sub_261CFD104();
    v9 = sub_261CFFD74();
    v11 = v10;

    v12 = sub_261B879C8(v9, v11, &v44);

    *(v7 + 4) = v12;
    *(v7 + 12) = 1024;
    *(v7 + 14) = v6;
    _os_log_impl(&dword_261AE2000, v4, v5, "RemindersInCalendar: set reminder completed {specifiers: %s, isCompleted: %{BOOL}d}", v7, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x26671D560](v8, -1, -1);
    MEMORY[0x26671D560](v7, -1, -1);
  }

  v13 = *(v0 + 440);
  v14 = *(v0 + 296);
  v15 = *(v0 + 304);
  v16 = *(v0 + 280);
  v17 = *(v0 + 288);
  v18 = sub_261CFF644();
  v19 = MEMORY[0x277D45938];
  if (!v13)
  {
    v19 = MEMORY[0x277D45900];
  }

  (*(*(v18 - 8) + 104))(v14, *v19, v18);
  sub_261CFF674();
  (*(v17 + 104))(v14, *MEMORY[0x277D44EA8], v16);
  MEMORY[0x26671BD30](v14);
  (*(v17 + 8))(v14, v16);
  if (*(v15 + 16))
  {
    sub_261CFD104();
    v20 = sub_261CFF784();
    v21 = sub_261CFFE54();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_261AE2000, v20, v21, "RemindersInCalendar: fetching reminders for setting completed", v22, 2u);
      MEMORY[0x26671D560](v22, -1, -1);
    }

    v23 = *(v0 + 304);

    *(v0 + 184) = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDDEB8, &qword_261D10990);
    *(v0 + 352) = sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
    sub_261CA04A0(&unk_27FEDDEC8, &unk_27FEDDEB8, &qword_261D10990);
    sub_261B3B918();
    v24 = sub_261CFFC24();

    v25 = sub_261BC6FC4(v24);
    *(v0 + 360) = v25;
    v32 = v25;

    if (qword_280D21E90 != -1)
    {
      swift_once();
    }

    v34 = *(v0 + 264);
    v33 = *(v0 + 272);
    v35 = *(v0 + 256);
    v36 = qword_280D21E98;
    _s29RemindersListInteractorHelperCMa();
    *(v0 + 368) = swift_initStackObject();
    v37 = sub_261CC1500(v36);
    *(v0 + 376) = v37;
    *(v0 + 384) = *(v37 + 16);
    *(v0 + 392) = *(v37 + 24);
    *(v0 + 400) = swift_getObjectType();
    sub_261CFE774();
    swift_allocObject();
    swift_unknownObjectRetain_n();
    *(v0 + 408) = sub_261CFE754();
    (*(v34 + 104))(v33, *MEMORY[0x277D45E48], v35);
    v38 = sub_261BC53A8();
    v40 = v39;
    *(v0 + 416) = v38;
    v41 = swift_task_alloc();
    *(v0 + 424) = v41;
    *v41 = v0;
    v41[1] = sub_261CA137C;
    v42 = *(v0 + 440);
    v43 = *(v0 + 272);

    return MEMORY[0x2821A86D8](v42, v32, v43, v38, v40);
  }

  else
  {

    v26 = sub_261CFF784();
    v27 = sub_261CFFE84();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_261AE2000, v26, v27, "RemindersInCalendar: input reminderSpecifiers is empty", v28, 2u);
      MEMORY[0x26671D560](v28, -1, -1);
    }

    v29 = *(v0 + 192);

    *v29 = 0;

    v30 = *(v0 + 8);

    return v30();
  }
}

uint64_t sub_261CA137C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 264);
  *(*v2 + 432) = v1;

  v6 = (v5 + 8);
  if (v1)
  {
    (*v6)(*(v4 + 272), *(v4 + 256));
    swift_unknownObjectRelease();

    v7 = *(v4 + 328);
    v8 = *(v4 + 336);
    v9 = sub_261CA1E28;
  }

  else
  {
    v10 = *(v4 + 272);
    v11 = *(v4 + 256);
    *(v4 + 441) = a1 & 1;
    (*v6)(v10, v11);
    swift_unknownObjectRelease();
    v7 = *(v4 + 328);
    v8 = *(v4 + 336);
    v9 = sub_261CA1524;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_261CA1524()
{
  v1 = *(v0 + 441);

  if (v1 != 1)
  {

    v9 = sub_261CFF784();
    v10 = sub_261CFFE84();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_261AE2000, v9, v10, "RemindersInCalendar: user chose cancel", v11, 2u);
      MEMORY[0x26671D560](v11, -1, -1);
    }

    v12 = *(v0 + 192);

    swift_unknownObjectRelease();

    *v12 = 0;
    goto LABEL_62;
  }

  v2 = *(v0 + 440);
  sub_261CFE524();
  v3 = MEMORY[0x277D84F90];
  if (v2 != 1)
  {
    goto LABEL_20;
  }

  aBlock = v0;
  v71 = MEMORY[0x277D84F90];
  isEscapingClosureAtFileLocation = *(v0 + 360);
  if (isEscapingClosureAtFileLocation >> 62)
  {
    goto LABEL_66;
  }

  v0 = *((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v0)
  {
    goto LABEL_5;
  }

LABEL_19:
  v0 = aBlock;
LABEL_20:
  if (v3 >> 62)
  {
    goto LABEL_57;
  }

  v13 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
LABEL_58:
    while (1)
    {
      v38 = *(v0 + 440);
      v39 = *(v0 + 304);
      v40 = *(v0 + 248);
      v66 = *(v0 + 240);
      v41 = *(v0 + 224);
      aBlock = (v0 + 16);
      v43 = *(v0 + 208);
      v42 = *(v0 + 216);
      v64 = *(v0 + 384);

      v44 = sub_261B045AC(v3, v39);
      *(swift_allocObject() + 16) = v44;
      *(swift_allocObject() + 16) = v38;
      v45 = swift_allocObject();
      *(v45 + 16) = v64;
      *(v45 + 32) = v3;
      swift_unknownObjectRetain();
      sub_261CFE714();
      v46 = sub_261CFE6D4();
      (*(*(v46 - 8) + 56))(v43, 1, 1, v46);
      v47 = objc_opt_self();
      sub_261CFE2D4();
      v48 = sub_261CFFA54();

      sub_261AE498C(v0 + 104, v0 + 144);
      v3 = v66;
      (*(v41 + 16))(v66, v40, v42);
      v49 = (*(v41 + 80) + 65) & ~*(v41 + 80);
      v50 = swift_allocObject();
      *(v50 + 16) = v43;
      sub_261AE49F0((v0 + 144), v50 + 24);
      *(v50 + 64) = v38;
      (*(v41 + 32))(v50 + v49, v66, v42);
      v51 = swift_allocObject();
      *(v51 + 16) = sub_261CA5524;
      *(v51 + 24) = v50;
      *(v0 + 48) = sub_261C78038;
      *(v0 + 56) = v51;
      *(v0 + 16) = MEMORY[0x277D85DD0];
      *(v0 + 24) = 1107296256;
      *(v0 + 32) = sub_261C92E40;
      *(v0 + 40) = &block_descriptor_4;
      v52 = _Block_copy((v0 + 16));
      sub_261CFCDA4();

      [v47 withActionName:v48 block:{v52, 0, 0}];

      _Block_release(v52);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        break;
      }

      __break(1u);
LABEL_66:
      v0 = sub_261D00274();
      if (!v0)
      {
        goto LABEL_19;
      }

LABEL_5:
      v5 = 0;
      v6 = aBlock[45] + 32;
      while (1)
      {
        if ((isEscapingClosureAtFileLocation & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x26671CA10](v5, aBlock[45]);
        }

        else
        {
          if (v5 >= *((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_54;
          }

          v7 = *(v6 + 8 * v5);
        }

        v8 = v7;
        v3 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        if ([v7 isRecurrent])
        {
          sub_261D00374();
          sub_261D003B4();
          sub_261D003C4();
          sub_261D00384();
        }

        else
        {
        }

        ++v5;
        if (v3 == v0)
        {
          v3 = v71;
          goto LABEL_19;
        }
      }

LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      v13 = sub_261D00274();
      if (v13)
      {
        goto LABEL_22;
      }
    }

    v53 = *(v0 + 360);
    v54 = *(v0 + 208);
    sub_261CC11F4(*(v0 + 312));
    sub_261CFCDA4();
    aBlockb = sub_261CA5328(v53, v54);

    v55 = sub_261CFF784();
    v56 = sub_261CFFE84();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_261AE2000, v55, v56, "RemindersInCalendar: set reminder completed request finished", v57, 2u);
      MEMORY[0x26671D560](v57, -1, -1);
    }

    v58 = *(v0 + 248);
    v59 = *(v0 + 216);
    v60 = *(v0 + 224);
    v61 = *(v0 + 208);
    v62 = *(v0 + 192);

    swift_unknownObjectRelease();
    (*(v60 + 8))(v58, v59);
    __swift_destroy_boxed_opaque_existential_0((v0 + 104));
    *v62 = aBlockb;
    sub_261CA55A8(v61);

LABEL_62:

    v63 = *(v0 + 8);

    return v63();
  }

LABEL_22:
  v14 = 0;
  v67 = v3 & 0xFFFFFFFFFFFFFF8;
  aBlocka = (v3 & 0xC000000000000001);
  v15 = MEMORY[0x277D84F98];
  v65 = v13;
  while (1)
  {
    if (aBlocka)
    {
      v18 = v3;
      v19 = MEMORY[0x26671CA10](v14, v3);
    }

    else
    {
      if (v14 >= *(v67 + 16))
      {
        goto LABEL_51;
      }

      v18 = v3;
      v19 = *(v3 + 8 * v14 + 32);
    }

    v3 = v19;
    v20 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v21 = [v19 objectID];
    if ((v15 & 0xC000000000000001) != 0)
    {
      if (v15 >= 0)
      {
        v15 &= 0xFFFFFFFFFFFFFF8uLL;
      }

      v22 = v3;
      v23 = sub_261D00274();
      if (__OFADD__(v23, 1))
      {
        goto LABEL_55;
      }

      v15 = sub_261CA26E4(v15, v23 + 1, &qword_27FEDB268, &qword_261D05760, &qword_27FEDDF20, 0x277D44750);
    }

    else
    {
      v24 = v3;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v71 = v15;
    v27 = sub_261B37CA4(v21);
    v28 = *(v15 + 16);
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_52;
    }

    v31 = v26;
    if (*(v15 + 24) < v30)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v26)
      {
        goto LABEL_23;
      }
    }

    else
    {
      sub_261CA4DE0(&qword_27FEDB268, &qword_261D05760);
      if (v31)
      {
LABEL_23:
        v16 = *(v15 + 56);
        v17 = *(v16 + 8 * v27);
        *(v16 + 8 * v27) = v3;

        goto LABEL_24;
      }
    }

LABEL_42:
    *(v15 + 8 * (v27 >> 6) + 64) |= 1 << v27;
    *(*(v15 + 48) + 8 * v27) = v21;
    *(*(v15 + 56) + 8 * v27) = v3;

    v34 = *(v15 + 16);
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (v35)
    {
      goto LABEL_56;
    }

    *(v15 + 16) = v36;
LABEL_24:
    ++v14;
    v3 = v18;
    if (v20 == v65)
    {
      goto LABEL_58;
    }
  }

  sub_261CA3AAC(v30, isUniquelyReferenced_nonNull_native, &qword_27FEDB268, &qword_261D05760);
  v32 = sub_261B37CA4(v21);
  if ((v31 & 1) == (v33 & 1))
  {
    v27 = v32;
    if (v31)
    {
      goto LABEL_23;
    }

    goto LABEL_42;
  }

  return sub_261D00654();
}

uint64_t sub_261CA1E28()
{

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261CA1EF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_261B37CA4(a1), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(a2 + 56);
    v9 = sub_261CFD7E4();
    v16 = *(v9 - 8);
    (*(v16 + 16))(a3, v8 + *(v16 + 72) * v7, v9);
    v10 = *(v16 + 56);
    v11 = a3;
    v12 = 0;
    v13 = v9;
  }

  else
  {
    v14 = sub_261CFD7E4();
    v10 = *(*(v14 - 8) + 56);
    v13 = v14;
    v11 = a3;
    v12 = 1;
  }

  return v10(v11, v12, 1, v13);
}

void sub_261CA2028(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = sub_261CFDF94();
    v3 = [v2 isCompleted];

    if (v3)
    {
      sub_261CFDF74();
    }
  }
}

uint64_t sub_261CA2078(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDDEF0, &qword_261D109A8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_261CFE5C4();
  v9 = sub_261CFE6D4();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  return sub_261CA5844(v8, a1);
}

id sub_261CA2188@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_261CFE6D4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  if ((*(v7 + 48))(a2, 1, v6) || ((*(v7 + 16))(v9, a2, v6), v12 = sub_261CFE6C4(), (*(v7 + 8))(v9, v6), v13 = [v10 objectID], v14 = sub_261CAE018(v13, v12), v13, , !v14))
  {
    if (qword_280D21E90 != -1)
    {
      swift_once();
    }

    result = [qword_280D21E98 refreshReminder_];
  }

  else
  {
    if (qword_280D21E90 != -1)
    {
      swift_once();
    }

    v15 = [qword_280D21E98 optimisticallyMaterializeReminderChangeItem_];
    if (v15)
    {
      v16 = v15;

      result = v16;
    }

    else
    {
      if (qword_27FED9CC8 != -1)
      {
        swift_once();
      }

      v17 = sub_261CFF7A4();
      __swift_project_value_buffer(v17, qword_27FEDDEA0);
      v18 = sub_261CFF784();
      v19 = sub_261CFFE64();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_261AE2000, v18, v19, "RemindersInCalendar: failed to materialize cloned reminder change item", v20, 2u);
        MEMORY[0x26671D560](v20, -1, -1);
      }

      result = 0;
    }
  }

  *a3 = result;
  return result;
}

uint64_t sub_261CA248C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDF60, &qword_261D10A80);
    v2 = sub_261D00534();
    v19 = v2;
    sub_261D00424();
    v3 = sub_261D004B4();
    if (v3)
    {
      v4 = v3;
      sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_261CFDD24();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_261CA296C(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_261D000E4();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_261D004B4();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_261CA26E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, void *a6)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = sub_261D00534();
    v28 = v10;
    sub_261D00424();
    v11 = sub_261D004B4();
    if (v11)
    {
      v25 = a4;
      v12 = v11;
      sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
      v13 = v12;
      do
      {
        v26 = v13;
        swift_dynamicCast();
        sub_261B05020(0, a5, a6);
        swift_dynamicCast();
        v20 = *(v10 + 16);
        if (*(v10 + 24) <= v20)
        {
          sub_261CA3AAC(v20 + 1, 1, a3, v25);
        }

        v10 = v28;
        result = sub_261D000E4();
        v15 = v28 + 64;
        v16 = -1 << *(v28 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v28 + 64 + 8 * (v17 >> 6))) != 0)
        {
          v19 = __clz(__rbit64((-1 << v17) & ~*(v28 + 64 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v21 = 0;
          v22 = (63 - v16) >> 6;
          do
          {
            if (++v18 == v22 && (v21 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v23 = v18 == v22;
            if (v18 == v22)
            {
              v18 = 0;
            }

            v21 |= v23;
            v24 = *(v15 + 8 * v18);
          }

          while (v24 == -1);
          v19 = __clz(__rbit64(~v24)) + (v18 << 6);
        }

        *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v28 + 48) + 8 * v19) = v27;
        *(*(v28 + 56) + 8 * v19) = v26;
        ++*(v28 + 16);
        v13 = sub_261D004B4();
      }

      while (v13);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v10;
}

uint64_t sub_261CA296C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDF60, &qword_261D10A80);
  result = sub_261D00524();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        sub_261CFCDA4();
      }

      result = sub_261D000E4();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_261CA2C08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDF00, &qword_261D10A20);
  result = sub_261D00524();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        sub_261CFD104();
      }

      result = sub_261D000E4();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}