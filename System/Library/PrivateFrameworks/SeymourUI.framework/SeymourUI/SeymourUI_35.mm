uint64_t sub_20B901B88(uint64_t a1, char *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629C0, qword_20C1510D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24[-v11];
  v13 = sub_20C133244();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v24[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1 < 1)
  {
    return MEMORY[0x277D84FA0];
  }

  v17 = sub_20B6D2924(a5, a4);

  v18 = sub_20B904724(v17, a2, a3, a4, a5);

  if (a1 == 1)
  {
    sub_20B903448(a5);
    v20 = v19;
    sub_20BEDD608(v19, v12);
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {

      sub_20B520158(v12, &unk_27C7629C0, qword_20C1510D0);
    }

    else
    {
      v21 = (*(v14 + 32))(v16, v12, v13);
      if (*(v20 + 16) == 1)
      {
        v22 = MEMORY[0x28223BE20](v21);
        *&v24[-16] = v16;
        v18 = sub_20BEE12E0(sub_20B904EA4, v22, &v24[-32], v18);
      }

      (*(v14 + 8))(v16, v13);
    }
  }

  return v18;
}

void sub_20B901E20(uint64_t *a1)
{
  v2 = *(sub_20C133244() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20B6A0FD8(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_20B901F2C(v5);
  *a1 = v3;
}

unint64_t sub_20B901EC8()
{
  result = qword_27C7679F8;
  if (!qword_27C7679F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7679F0, ":P\t");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7679F8);
  }

  return result;
}

void sub_20B901F2C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_20C13DF84();
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
        sub_20C133244();
        v6 = sub_20C13CCD4();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_20C133244() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_20B9022DC(v8, v9, a1, v4);
      *(v6 + 16) = 0;

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
    sub_20B902058(0, v2, 1, a1);
  }
}

void sub_20B902058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_20C133244();
  MEMORY[0x28223BE20](v8);
  v40 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v44 = &v30 - v11;
  v14.n128_f64[0] = MEMORY[0x28223BE20](v12);
  v43 = &v30 - v15;
  v32 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v41 = *(v13 + 16);
    v42 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v19 = (v16 + v17 * (a3 - 1));
    v37 = -v17;
    v38 = (v13 + 32);
    v20 = a1 - a3;
    v39 = v16;
    v31 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v35 = v19;
    v36 = a3;
    v33 = v21;
    v34 = v20;
    while (1)
    {
      v22 = v43;
      v23 = v41;
      (v41)(v43, v21, v8, v14);
      v24 = v44;
      v23(v44, v19, v8);
      v25 = sub_20C1331C4();
      v26 = *v18;
      (*v18)(v24, v8);
      v26(v22, v8);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v36 + 1;
        v19 = &v35[v31];
        v20 = v34 - 1;
        v21 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v39)
      {
        break;
      }

      v27 = *v38;
      v28 = v40;
      (*v38)(v40, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v27(v19, v28, v8);
      v19 += v37;
      v21 += v37;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_20B9022DC(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v122 = a1;
  v9 = sub_20C133244();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v125 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v133 = &v118 - v13;
  MEMORY[0x28223BE20](v14);
  v139 = &v118 - v15;
  v17.n128_f64[0] = MEMORY[0x28223BE20](v16);
  v138 = &v118 - v18;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_95:
    v5 = *v122;
    if (!*v122)
    {
      goto LABEL_136;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v112 = a4;
    }

    else
    {
LABEL_130:
      v112 = sub_20B6A07A0(a4);
    }

    v113 = v6;
    v141 = v112;
    a4 = *(v112 + 2);
    if (a4 >= 2)
    {
      v114 = v10;
      v10 = a3;
      a3 = v114;
      while (*v10)
      {
        v115 = *&v112[16 * a4];
        v116 = v112;
        v6 = *&v112[16 * a4 + 24];
        sub_20B902CC8(*v10 + a3[9] * v115, (*v10 + a3[9] * *&v112[16 * a4 + 16]), *v10 + a3[9] * v6, v5);
        if (v113)
        {
          goto LABEL_107;
        }

        if (v6 < v115)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v116 = sub_20B6A07A0(v116);
        }

        if (a4 - 2 >= *(v116 + 2))
        {
          goto LABEL_124;
        }

        v117 = &v116[16 * a4];
        *v117 = v115;
        *(v117 + 1) = v6;
        v141 = v116;
        sub_20B6A0714(a4 - 1);
        v112 = v141;
        a4 = *(v141 + 2);
        if (a4 <= 1)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_134;
    }

LABEL_107:

    return;
  }

  v20 = 0;
  v136 = (v10 + 1);
  v137 = v10 + 2;
  v135 = (v10 + 4);
  v21 = MEMORY[0x277D84F90];
  v123 = a3;
  v121 = a4;
  v140 = v9;
  while (1)
  {
    v22 = v20;
    v126 = v21;
    if (v20 + 1 >= v19)
    {
      v33 = v20 + 1;
    }

    else
    {
      v131 = v19;
      v120 = v6;
      v128 = *a3;
      v23 = v128;
      v24 = v10[9];
      v5 = v128 + v24 * (v20 + 1);
      v25 = v10[2];
      v26 = v138;
      v25(v138, v5, v9, v17);
      v27 = v23 + v24 * v22;
      v28 = v139;
      v130 = v25;
      (v25)(v139, v27, v9);
      LODWORD(v132) = sub_20C1331C4();
      v29 = v9;
      v30 = v10[1];
      v30(v28, v29);
      v129 = v30;
      v30(v26, v29);
      v119 = v22;
      v31 = v22 + 2;
      v134 = v24;
      v32 = v128 + v24 * (v22 + 2);
      while (1)
      {
        v33 = v131;
        if (v131 == v31)
        {
          break;
        }

        v34 = v10;
        v35 = v138;
        v36 = v140;
        v37 = v130;
        (v130)(v138, v32, v140);
        v38 = v139;
        v37(v139, v5, v36);
        v39 = sub_20C1331C4() & 1;
        v40 = v129;
        (v129)(v38, v36);
        v41 = v35;
        v10 = v34;
        v40(v41, v36);
        ++v31;
        v32 += v134;
        v5 += v134;
        if ((v132 & 1) != v39)
        {
          v33 = v31 - 1;
          break;
        }
      }

      a3 = v123;
      v21 = v126;
      v6 = v120;
      a4 = v121;
      v9 = v140;
      v22 = v119;
      if (v132)
      {
        if (v33 < v119)
        {
          goto LABEL_127;
        }

        if (v119 < v33)
        {
          v118 = v10;
          v42 = v134 * (v33 - 1);
          v43 = v33 * v134;
          v44 = v33;
          v45 = v119;
          v46 = v119 * v134;
          do
          {
            if (v45 != --v44)
            {
              v48 = *a3;
              if (!*a3)
              {
                goto LABEL_133;
              }

              v49 = v33;
              v5 = &v48[v46];
              v132 = *v135;
              (v132)(v125, &v48[v46], v140, v21);
              if (v46 < v42 || v5 >= &v48[v43])
              {
                v47 = v140;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v47 = v140;
                if (v46 != v42)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v132(&v48[v42], v125, v47);
              a3 = v123;
              v21 = v126;
              v33 = v49;
            }

            ++v45;
            v42 -= v134;
            v43 -= v134;
            v46 += v134;
          }

          while (v45 < v44);
          v6 = v120;
          a4 = v121;
          v10 = v118;
          v9 = v140;
          v22 = v119;
        }
      }
    }

    v50 = a3[1];
    if (v33 < v50)
    {
      if (__OFSUB__(v33, v22))
      {
        goto LABEL_126;
      }

      if (v33 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_128;
        }

        if ((v22 + a4) >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v22 + a4;
        }

        if (v51 < v22)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v33 != v51)
        {
          break;
        }
      }
    }

    v52 = v33;
    if (v33 < v22)
    {
      goto LABEL_125;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v21 = v126;
    }

    else
    {
      v21 = sub_20BC05740(0, *(v126 + 2) + 1, 1, v126);
    }

    a4 = *(v21 + 2);
    v53 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v53 >> 1)
    {
      v21 = sub_20BC05740((v53 > 1), a4 + 1, 1, v21);
    }

    *(v21 + 2) = v5;
    v54 = &v21[16 * a4];
    *(v54 + 4) = v22;
    *(v54 + 5) = v52;
    v55 = *v122;
    if (!*v122)
    {
      goto LABEL_135;
    }

    v127 = v52;
    if (a4)
    {
      while (1)
      {
        v56 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v57 = *(v21 + 4);
          v58 = *(v21 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_52:
          if (v60)
          {
            goto LABEL_114;
          }

          v73 = &v21[16 * v5];
          v75 = *v73;
          v74 = *(v73 + 1);
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_117;
          }

          v79 = &v21[16 * v56 + 32];
          v81 = *v79;
          v80 = *(v79 + 1);
          v67 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v67)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v77, v82))
          {
            goto LABEL_121;
          }

          if (v77 + v82 >= v59)
          {
            if (v59 < v82)
            {
              v56 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v83 = &v21[16 * v5];
        v85 = *v83;
        v84 = *(v83 + 1);
        v67 = __OFSUB__(v84, v85);
        v77 = v84 - v85;
        v78 = v67;
LABEL_66:
        if (v78)
        {
          goto LABEL_116;
        }

        v86 = &v21[16 * v56];
        v88 = *(v86 + 4);
        v87 = *(v86 + 5);
        v67 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v67)
        {
          goto LABEL_119;
        }

        if (v89 < v77)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v56 - 1;
        if (v56 - 1 >= v5)
        {
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
LABEL_120:
          __break(1u);
LABEL_121:
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
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v94 = v21;
        v95 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v56 + 40];
        sub_20B902CC8(*a3 + v10[9] * v95, (*a3 + v10[9] * *&v21[16 * v56 + 32]), *a3 + v10[9] * v5, v55);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v5 < v95)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_20B6A07A0(v94);
        }

        if (a4 >= *(v94 + 2))
        {
          goto LABEL_111;
        }

        v96 = &v94[16 * a4];
        *(v96 + 4) = v95;
        *(v96 + 5) = v5;
        v141 = v94;
        sub_20B6A0714(v56);
        v21 = v141;
        v5 = *(v141 + 2);
        v9 = v140;
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v61 = &v21[16 * v5 + 32];
      v62 = *(v61 - 64);
      v63 = *(v61 - 56);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_112;
      }

      v66 = *(v61 - 48);
      v65 = *(v61 - 40);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_113;
      }

      v68 = &v21[16 * v5];
      v70 = *v68;
      v69 = *(v68 + 1);
      v67 = __OFSUB__(v69, v70);
      v71 = v69 - v70;
      if (v67)
      {
        goto LABEL_115;
      }

      v67 = __OFADD__(v59, v71);
      v72 = v59 + v71;
      if (v67)
      {
        goto LABEL_118;
      }

      if (v72 >= v64)
      {
        v90 = &v21[16 * v56 + 32];
        v92 = *v90;
        v91 = *(v90 + 1);
        v67 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v67)
        {
          goto LABEL_122;
        }

        if (v59 < v93)
        {
          v56 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v127;
    a4 = v121;
    if (v127 >= v19)
    {
      goto LABEL_95;
    }
  }

  v120 = v6;
  v97 = *a3;
  v98 = v10[9];
  v118 = v10;
  v134 = v10[2];
  v99 = v97 + v98 * (v33 - 1);
  v100 = -v98;
  v119 = v22;
  v101 = (v22 - v33);
  v132 = v97;
  v124 = v98;
  v5 = v97 + v33 * v98;
  v127 = v51;
LABEL_85:
  v130 = v99;
  v131 = v33;
  v128 = v5;
  v129 = v101;
  v102 = v99;
  while (1)
  {
    v103 = v138;
    v104 = v134;
    (v134)(v138, v5, v9, v21);
    v105 = v139;
    v104(v139, v102, v140);
    v106 = sub_20C1331C4();
    a4 = v136;
    v107 = *v136;
    v108 = v105;
    v9 = v140;
    (*v136)(v108, v140);
    v107(v103, v9);
    if ((v106 & 1) == 0)
    {
LABEL_84:
      v33 = v131 + 1;
      v99 = &v130[v124];
      v101 = v129 - 1;
      v5 = v128 + v124;
      v52 = v127;
      if (v131 + 1 != v127)
      {
        goto LABEL_85;
      }

      v6 = v120;
      a3 = v123;
      v10 = v118;
      v22 = v119;
      if (v127 < v119)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (!v132)
    {
      break;
    }

    a4 = v135;
    v109 = *v135;
    v110 = v133;
    (*v135)(v133, v5, v9);
    swift_arrayInitWithTakeFrontToBack();
    v109(v102, v110, v9);
    v102 += v100;
    v5 += v100;
    if (__CFADD__(v101++, 1))
    {
      goto LABEL_84;
    }
  }

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
}

void sub_20B902CC8(unint64_t a1, char *a2, unint64_t a3, char *a4)
{
  v56 = sub_20C133244();
  v8 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v54 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v53 = &v44 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (&a2[-a1] == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v55 = a3;
  v15 = &a2[-a1] / v13;
  v59 = a1;
  v58 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || &a2[v17] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v28 = &a4[v17];
    if (v17 < 1)
    {
      v32 = &a4[v17];
    }

    else
    {
      v29 = -v13;
      v48 = (v8 + 8);
      v49 = (v8 + 16);
      v30 = &a4[v17];
      v31 = v55;
      v32 = v28;
      v46 = a1;
      v47 = a4;
      v50 = -v13;
      do
      {
        v44 = v32;
        v33 = a2;
        v34 = &a2[v29];
        v51 = v33;
        v52 = v34;
        while (1)
        {
          if (v33 <= a1)
          {
            v59 = v33;
            v57 = v44;
            goto LABEL_59;
          }

          v36 = v31;
          v45 = v32;
          v55 = v31 + v29;
          v37 = &v30[v29];
          v38 = *v49;
          v39 = v53;
          v40 = v56;
          v41 = v30;
          (*v49)(v53, v37, v56);
          v42 = v54;
          (v38)(v54, v34, v40);
          LOBYTE(v38) = sub_20C1331C4();
          v43 = *v48;
          (*v48)(v42, v40);
          v43(v39, v40);
          if (v38)
          {
            break;
          }

          v32 = v37;
          v31 = v55;
          if (v36 < v41 || v55 >= v41)
          {
            swift_arrayInitWithTakeFrontToBack();
            v34 = v52;
            a1 = v46;
          }

          else
          {
            v34 = v52;
            a1 = v46;
            if (v36 != v41)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v30 = v37;
          v35 = v37 > v47;
          v29 = v50;
          v33 = v51;
          if (!v35)
          {
            a2 = v51;
            goto LABEL_58;
          }
        }

        v44 = v41;
        v31 = v55;
        if (v36 < v51 || v55 >= v51)
        {
          a2 = v52;
          swift_arrayInitWithTakeFrontToBack();
          v32 = v45;
          a1 = v46;
          v29 = v50;
        }

        else
        {
          a2 = v52;
          v32 = v45;
          a1 = v46;
          v29 = v50;
          if (v36 != v51)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v30 = v44;
      }

      while (v44 > v47);
    }

LABEL_58:
    v59 = a2;
    v57 = v32;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v52 = &a4[v16];
    v57 = &a4[v16];
    if (v16 >= 1 && a2 < v55)
    {
      v50 = *(v8 + 16);
      v51 = (v8 + 16);
      v48 = v13;
      v49 = (v8 + 8);
      do
      {
        v19 = v53;
        v20 = v56;
        v21 = v50;
        (v50)(v53, a2, v56);
        v22 = a2;
        v23 = v54;
        v21(v54, a4, v20);
        v24 = sub_20C1331C4();
        v25 = *v49;
        (*v49)(v23, v20);
        v25(v19, v20);
        if (v24)
        {
          v26 = v48;
          a2 = &v48[v22];
          if (a1 < v22 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v22)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          v26 = v48;
          v27 = &v48[a4];
          if (a1 < a4 || a1 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v22;
          }

          else
          {
            a2 = v22;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v58 = v27;
          a4 = &v26[a4];
        }

        a1 += v26;
        v59 = a1;
      }

      while (a4 < v52 && a2 < v55);
    }
  }

LABEL_59:
  sub_20B6A0AA4(&v59, &v58, &v57);
}

unint64_t *sub_20B903258(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v10 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_20B9044B4(v10, a2, a3, a7);
    v12 = v11;
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    return v12;
  }

  return result;
}

unint64_t *sub_20B90330C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = a8;
    v12 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_20B903D18(v12, a2, a3, a7, v8);
    v14 = v13;
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    return v14;
  }

  return result;
}

void *sub_20B9033D0(void *result, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    sub_20B9035A8(result, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

void sub_20B903448(uint64_t a1)
{
  v2 = a1;
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v7 = swift_slowAlloc();
      sub_20B9033D0(v7, v4, v2);
      MEMORY[0x20F2F6A40](v7, -1, -1);
      return;
    }
  }

  MEMORY[0x28223BE20](a1);
  v6 = v8 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v6, v5);
  sub_20B9035A8(v6, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }
}

void sub_20B9035A8(unint64_t *a1, uint64_t a2, void *a3)
{
  v27 = a2;
  v28 = a1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767A18, &unk_20C171320);
  MEMORY[0x28223BE20](v38);
  v37 = &v27 - v4;
  v36 = sub_20C133244();
  v6.n128_f64[0] = MEMORY[0x28223BE20](v36);
  v34 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v5;
  v8 = 0;
  v39 = a3;
  v11 = a3[8];
  v10 = a3 + 8;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v29 = 0;
  v30 = (v12 + 63) >> 6;
  v33 = v5 + 16;
  v31 = v10;
  v32 = v5 + 8;
  while (v14)
  {
    v15 = __clz(__rbit64(v14));
    v40 = (v14 - 1) & v14;
LABEL_11:
    v18 = v15 | (v8 << 6);
    v19 = v39;
    v20 = v34;
    v21 = v35;
    v22 = *(v35 + 16);
    v23 = v36;
    v22(v34, v39[6] + *(v35 + 72) * v18, v36, v6);
    v24 = v18;
    LODWORD(v19) = *(v19[7] + v18);
    v25 = v37;
    (v22)(v37, v20, v23);
    *(v25 + *(v38 + 48)) = v19;
    sub_20B520158(v25, &qword_27C767A18, &unk_20C171320);
    (*(v21 + 8))(v20, v23);
    v14 = v40;
    if (!v19)
    {
      *(v28 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      if (__OFADD__(v29++, 1))
      {
        __break(1u);
LABEL_15:
        sub_20B6CE26C(v28, v27, v29, v39);
        return;
      }
    }
  }

  v16 = v8;
  while (1)
  {
    v8 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v8 >= v30)
    {
      goto LABEL_15;
    }

    v17 = v31[v8];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v40 = (v17 - 1) & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_20B90385C(_BYTE *a1, uint64_t a2)
{
  v4 = sub_20C133244();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v45[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v45[-v9];
  MEMORY[0x28223BE20](v11);
  v13 = &v45[-v12];
  MEMORY[0x28223BE20](v14);
  v16 = &v45[-v15];
  v17 = a1;
  v18 = sub_20C133224();
  v19 = sub_20C133234();
  if (__OFSUB__(v19, 1))
  {
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    v4 = sub_20BC07640((v20 > 1), v17, 1, v4);
    goto LABEL_26;
  }

  MEMORY[0x20F2EA980](v18, v19 - 1);
  if (*(a2 + 16) && (v21 = sub_20B65A98C(v16), (v22 & 1) != 0))
  {
    v23 = *(*(a2 + 56) + v21);
  }

  else
  {
    v23 = 6;
  }

  v46 = v23;
  v24 = *(v5 + 8);
  v24(v16, v4);
  v17 = a1;
  v16 = sub_20C133224();
  v25 = sub_20C133234();
  if (__OFADD__(v25, 1))
  {
    goto LABEL_47;
  }

  MEMORY[0x20F2EA980](v16, v25 + 1);
  if (*(a2 + 16) && (v26 = sub_20B65A98C(v13), (v27 & 1) != 0))
  {
    LODWORD(v16) = *(*(a2 + 56) + v26);
  }

  else
  {
    LODWORD(v16) = 6;
  }

  v24(v13, v4);
  v17 = a1;
  v28 = sub_20C133224();
  v13 = (v28 - 1);
  if (__OFSUB__(v28, 1))
  {
    goto LABEL_48;
  }

  v29 = sub_20C133234();
  MEMORY[0x20F2EA980](v13, v29);
  if (*(a2 + 16) && (v30 = sub_20B65A98C(v10), (v31 & 1) != 0))
  {
    LODWORD(v13) = *(*(a2 + 56) + v30);
  }

  else
  {
    LODWORD(v13) = 6;
  }

  v24(v10, v4);
  v17 = a1;
  v32 = sub_20C133224();
  v33 = v32 + 1;
  if (__OFADD__(v32, 1))
  {
    goto LABEL_49;
  }

  v34 = sub_20C133234();
  MEMORY[0x20F2EA980](v33, v34);
  if (*(a2 + 16))
  {
    v35 = sub_20B65A98C(v7);
    LODWORD(a1) = v46;
    if (v36)
    {
      LODWORD(a2) = *(*(a2 + 56) + v35);
    }

    else
    {
      LODWORD(a2) = 6;
    }
  }

  else
  {
    LODWORD(a2) = 6;
    LODWORD(a1) = v46;
  }

  v24(v7, v4);
  if (a1 == 6)
  {
    v4 = MEMORY[0x277D84F90];
    if (v16 == 6)
    {
      goto LABEL_32;
    }

    goto LABEL_27;
  }

  v4 = sub_20BC07640(0, 1, 1, MEMORY[0x277D84F90]);
  v7 = *(v4 + 16);
  v20 = *(v4 + 24);
  v17 = v7 + 1;
  if (v7 >= v20 >> 1)
  {
    goto LABEL_50;
  }

LABEL_26:
  *(v4 + 16) = v17;
  v7[v4 + 32] = a1;
  if (v16 == 6)
  {
    goto LABEL_32;
  }

LABEL_27:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_20BC07640(0, *(v4 + 16) + 1, 1, v4);
  }

  v38 = *(v4 + 16);
  v37 = *(v4 + 24);
  if (v38 >= v37 >> 1)
  {
    v4 = sub_20BC07640((v37 > 1), v38 + 1, 1, v4);
  }

  *(v4 + 16) = v38 + 1;
  *(v4 + v38 + 32) = v16;
LABEL_32:
  if (v13 == 6)
  {
    if (a2 == 6)
    {
      goto LABEL_45;
    }

    goto LABEL_40;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_20BC07640(0, *(v4 + 16) + 1, 1, v4);
  }

  v40 = *(v4 + 16);
  v39 = *(v4 + 24);
  if (v40 >= v39 >> 1)
  {
    v4 = sub_20BC07640((v39 > 1), v40 + 1, 1, v4);
  }

  *(v4 + 16) = v40 + 1;
  *(v4 + v40 + 32) = v13;
  if (a2 != 6)
  {
LABEL_40:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_20BC07640(0, *(v4 + 16) + 1, 1, v4);
    }

    v42 = *(v4 + 16);
    v41 = *(v4 + 24);
    if (v42 >= v41 >> 1)
    {
      v4 = sub_20BC07640((v41 > 1), v42 + 1, 1, v4);
    }

    *(v4 + 16) = v42 + 1;
    *(v4 + v42 + 32) = a2;
  }

LABEL_45:
  v43 = sub_20B717760(v4);

  return v43;
}

void sub_20B903D18(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v34 = a2;
  v35 = a1;
  v41 = sub_20C133244();
  v8 = *(v41 - 8);
  v9.n128_f64[0] = MEMORY[0x28223BE20](v41);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = 0;
  v12 = 0;
  v40 = a3;
  v15 = *(a3 + 56);
  v14 = a3 + 56;
  v13 = v15;
  v16 = 1 << *(v14 - 24);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v38 = (v8 + 8);
  v39 = v8 + 16;
  v37 = a5;
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
LABEL_12:
    v23 = v20 | (v12 << 6);
    (*(v8 + 16))(v11, *(v40 + 48) + *(v8 + 72) * v23, v41, v9);
    if (*(a4 + 16) && (sub_20B65A98C(v11), (v24 & 1) != 0))
    {
      (*v38)(v11, v41);
    }

    else
    {
      if ((v37 - 2) >= 4)
      {
        if (v37)
        {
          (*v38)(v11, v41);
          goto LABEL_21;
        }

        sub_20B90385C(v11, a4);
        v28 = sub_20B8DD120();
        v33 = a4;
        v29 = v28;

        v27 = v29 ^ 1;
        a4 = v33;
      }

      else
      {
        v25 = sub_20B90385C(v11, a4);
        if (qword_27C760D18 != -1)
        {
          swift_once();
        }

        v26 = *(sub_20B605150(qword_27C79D668, v25) + 2);

        v27 = v26 == 0;
      }

      (*v38)(v11, v41);
      if (v27)
      {
LABEL_21:
        *(v35 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        if (__OFADD__(v36++, 1))
        {
          goto LABEL_27;
        }
      }
    }
  }

  v21 = v12;
  while (1)
  {
    v12 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      v31 = v40;

      sub_20BC11130(v35, v34, v36, v31);
      return;
    }

    v22 = *(v14 + 8 * v12);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v18 = (v22 - 1) & v22;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

uint64_t sub_20B90402C(int64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v7 = v6;
  v40 = a6;
  v43 = a3;
  v45 = *MEMORY[0x277D85DE8];
  v44 = sub_20C133244();
  v12 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v13) = *(a1 + 32);
  v15 = v13 & 0x3F;
  v16 = ((1 << v13) + 63) >> 6;
  v17 = 8 * v16;

  if (v15 > 0xD)
  {
    goto LABEL_29;
  }

  while (2)
  {
    v34 = v16;
    v35 = a4;
    v36 = v7;
    v33[1] = v33;
    MEMORY[0x28223BE20](v18);
    v37 = v33 - ((v17 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v37, v17);
    v38 = 0;
    v39 = a5;
    a2 = 0;
    v43 = a1;
    a4 = a1 + 56;
    v19 = 1 << *(a1 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v7 = v20 & *(a1 + 56);
    a1 = (v19 + 63) >> 6;
    v41 = (v12 + 8);
    v42 = v12 + 16;
    v21 = v12;
    while (v7)
    {
      v22 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v17 = v22 | (a2 << 6);
      v16 = v21;
      (*(v21 + 16))(v14, *(v43 + 48) + *(v21 + 72) * v17, v44);
      if (*(a5 + 16) && (v12 = a5, sub_20B65A98C(v14), (v25 & 1) != 0))
      {
        (*v41)(v14, v44);
        v21 = v16;
      }

      else
      {
        if (v40 - 2 >= 4)
        {
          if (v40)
          {
            (*v41)(v14, v44);
            v21 = v16;
            goto LABEL_22;
          }

          sub_20B90385C(v14, a5);
          v28 = sub_20B8DD120();

          v12 = v28 ^ 1u;
        }

        else
        {
          v26 = sub_20B90385C(v14, a5);
          if (qword_27C760D18 != -1)
          {
            swift_once();
          }

          v27 = *(sub_20B605150(qword_27C79D668, v26) + 2);

          v12 = v27 == 0;
        }

        (*v41)(v14, v44);
        a5 = v39;
        v21 = v16;
        if (v12)
        {
LABEL_22:
          *&v37[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
          if (__OFADD__(v38++, 1))
          {
            __break(1u);
          }
        }
      }
    }

    v23 = a2;
    while (1)
    {
      a2 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (a2 >= a1)
      {
        v30 = sub_20BC11130(v37, v34, v38, v43);

        return v30;
      }

      v24 = *(a4 + 8 * a2);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v7 = (v24 - 1) & v24;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_29:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v32 = swift_slowAlloc();

  v30 = sub_20B90330C(v32, v16, a1, a2, v43, a4, a5, v40);

  MEMORY[0x20F2F6A40](v32, -1, -1);

  return v30;
}

void sub_20B9044B4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a2;
  v28 = a4;
  v23 = a1;
  v29 = sub_20C133244();
  v6.n128_f64[0] = MEMORY[0x28223BE20](v29);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  v26 = v5 + 16;
  v27 = v5;
  v24 = 0;
  v25 = (v5 + 8);
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v16 = v15 | (v9 << 6);
    v17 = v28;
LABEL_12:
    (*(v27 + 16))(v8, *(a3 + 48) + *(v27 + 72) * v16, v29, v6);
    if (*(v17 + 16) && (sub_20B65A98C(v8), (v20 & 1) != 0))
    {
      (*v25)(v8, v29);
    }

    else
    {
      sub_20B90385C(v8, v17);
      v14 = sub_20B8DD120();

      (*v25)(v8, v29);
      if ((v14 & 1) == 0)
      {
        *(v23 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        if (__OFADD__(v24++, 1))
        {
          __break(1u);
LABEL_18:

          sub_20BC11130(v23, v22, v24, a3);
          return;
        }
      }
    }
  }

  v18 = v9;
  v17 = v28;
  while (1)
  {
    v9 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v9 >= v13)
    {
      goto LABEL_18;
    }

    v19 = *(a3 + 56 + 8 * v9);
    ++v18;
    if (v19)
    {
      v12 = (v19 - 1) & v19;
      v16 = __clz(__rbit64(v19)) | (v9 << 6);
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_20B904724(char *a1, char *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v41 = *MEMORY[0x277D85DE8];
  v40 = sub_20C133244();
  v12 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v38 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v13) = a1[32];
  v14 = v13 & 0x3F;
  v32 = ((1 << v13) + 63) >> 6;
  v15 = 8 * v32;

  v39 = a5;

  if (v14 > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v31[2] = a4;
    v31[3] = v6;
    v31[1] = v31;
    MEMORY[0x28223BE20](v16);
    v33 = v31 - ((v15 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v33, v15);
    v34 = 0;
    v35 = v12;
    a3 = 0;
    a2 = a1 + 56;
    v17 = 1 << a1[32];
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    a4 = v18 & *(a1 + 7);
    v6 = (v17 + 63) >> 6;
    v36 = (v12 + 8);
    v37 = v12 + 16;
    v15 = a1;
    v19 = v12;
    while (a4)
    {
      v21 = __clz(__rbit64(a4));
      a4 &= a4 - 1;
      v12 = v21 | (a3 << 6);
      a1 = v38;
      v22 = v39;
LABEL_13:
      (*(v19 + 16))(a1, *(v15 + 48) + *(v19 + 72) * v12, v40);
      if (*(v22 + 16) && (sub_20B65A98C(a1), (v25 & 1) != 0))
      {
        (*v36)(a1, v40);
        v19 = v35;
      }

      else
      {
        sub_20B90385C(a1, v22);
        v20 = sub_20B8DD120();

        (*v36)(a1, v40);
        v19 = v35;
        if ((v20 & 1) == 0)
        {
          *&v33[(v12 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v12;
          if (__OFADD__(v34++, 1))
          {
            __break(1u);
LABEL_19:
            v27 = sub_20BC11130(v33, v32, v34, v15);

            return v27;
          }
        }
      }
    }

    v23 = a3;
    a1 = v38;
    v22 = v39;
    while (1)
    {
      a3 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (a3 >= v6)
      {
        goto LABEL_19;
      }

      v24 = *&a2[8 * a3];
      ++v23;
      if (v24)
      {
        a4 = (v24 - 1) & v24;
        v12 = __clz(__rbit64(v24)) | (a3 << 6);
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v29 = swift_slowAlloc();

  v30 = v39;

  v27 = sub_20B903258(v29, v32, a1, a2, a3, a4, v30);

  MEMORY[0x20F2F6A40](v29, -1, -1);

  return v27;
}

void sub_20B904B14(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v49 = a5;
  v41 = sub_20C133244();
  v9 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767A08, &qword_20C162180);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v38 - v13;
  v15 = -1 << *(a1 + 32);
  v16 = ~v15;
  v17 = *(a1 + 64);
  v18 = -v15;
  v42 = a1;
  v43 = a1 + 64;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v44 = v16;
  v45 = 0;
  v46 = v19 & v17;
  v47 = a2;
  v48 = a3;
  v20 = (v9 + 32);
  v39 = (v9 + 8);
  v40 = v9;

  v38 = a3;

  while (1)
  {
    sub_20BEF598C(v14);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763A18, &qword_20C16F260);
    if ((*(*(v21 - 8) + 48))(v14, 1, v21) == 1)
    {
      sub_20B583EDC(v42);

      return;
    }

    v22 = *(v21 + 48);
    v23 = *v20;
    (*v20)(v11, v14, v41);
    v24 = v14[v22];
    v25 = *v49;
    v27 = sub_20B65A98C(v11);
    v28 = v25[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      break;
    }

    v31 = v26;
    if (v25[3] >= v30)
    {
      if ((a4 & 1) == 0)
      {
        sub_20BA10A78();
      }
    }

    else
    {
      sub_20BA0AE6C(v30, a4 & 1);
      v32 = sub_20B65A98C(v11);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_19;
      }

      v27 = v32;
    }

    v34 = *v49;
    if (v31)
    {
      (*v39)(v11, v41);
      *(v34[7] + v27) = v24;
      a4 = 1;
    }

    else
    {
      v34[(v27 >> 6) + 8] |= 1 << v27;
      v23((v34[6] + *(v40 + 72) * v27), v11, v41);
      *(v34[7] + v27) = v24;
      v35 = v34[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_18;
      }

      v34[2] = v37;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  sub_20C13E054();
  __break(1u);
}

unint64_t sub_20B904E50()
{
  result = qword_27C767A10;
  if (!qword_27C767A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C767A10);
  }

  return result;
}

uint64_t sub_20B904EF0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_20B904F38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20B904F98()
{
  v1 = v0;
  sub_20C13E164();
  v2 = *v0;
  v3 = v0[1];
  v4 = v1[3];
  sub_20BDA7B8C(v6, v2);
  sub_20BDA7A9C(v6, v3);
  if (!v4)
  {
    sub_20C13E184();
    if (v1[5])
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_20C13E184();
    goto LABEL_6;
  }

  sub_20C13E184();
  sub_20C13CA64();
  if (!v1[5])
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_20C13E184();
  sub_20C13CA64();
LABEL_6:
  MEMORY[0x20F2F58E0](*(v1 + 48));
  return sub_20C13E1B4();
}

uint64_t sub_20B905070(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 24);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  sub_20BDA7B8C(a1, *v1);
  sub_20BDA7A9C(a1, v3);
  if (!v4)
  {
    sub_20C13E184();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_20C13E184();
    return MEMORY[0x20F2F58E0](v6);
  }

  sub_20C13E184();
  sub_20C13CA64();
  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_20C13E184();
  sub_20C13CA64();
  return MEMORY[0x20F2F58E0](v6);
}

uint64_t sub_20B905134(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 24);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  sub_20C13E164();
  sub_20BDA7B8C(v8, v2);
  sub_20BDA7A9C(v8, v3);
  if (!v4)
  {
    sub_20C13E184();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_20C13E184();
    goto LABEL_6;
  }

  sub_20C13E184();
  sub_20C13CA64();
  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_20C13E184();
  sub_20C13CA64();
LABEL_6:
  MEMORY[0x20F2F58E0](v6);
  return sub_20C13E1B4();
}

uint64_t sub_20B905210(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_20B9052C4(v5, v7) & 1;
}

unint64_t sub_20B905270()
{
  result = qword_27C767A20;
  if (!qword_27C767A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C767A20);
  }

  return result;
}

uint64_t sub_20B9052C4(uint64_t a1, uint64_t a2)
{
  if ((sub_20BB7FE40(*a1, *a2) & 1) == 0 || (sub_20BB800B0(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    goto LABEL_17;
  }

  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  if (v4)
  {
    if (!v5 || (*(a1 + 16) != *(a2 + 16) || v4 != v5) && (sub_20C13DFF4() & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (v5)
  {
    goto LABEL_17;
  }

  v6 = *(a1 + 40);
  v7 = *(a2 + 40);
  if (v6)
  {
    if (v7 && (*(a1 + 32) == *(a2 + 32) && v6 == v7 || (sub_20C13DFF4() & 1) != 0))
    {
      goto LABEL_15;
    }

LABEL_17:
    v8 = 0;
    return v8 & 1;
  }

  if (v7)
  {
    goto LABEL_17;
  }

LABEL_15:
  v8 = *(a1 + 48) ^ *(a2 + 48) ^ 1;
  return v8 & 1;
}

unint64_t sub_20B9053AC()
{
  result = qword_27C767A28;
  if (!qword_27C767A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C767A28);
  }

  return result;
}

void sub_20B905400(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763970, &qword_20C154C70);
    v1 = sub_20C13DE84();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v7 = 0;
  while (v4)
  {
LABEL_15:
    v10 = (v7 << 9) | (8 * __clz(__rbit64(v4)));
    v11 = *(*(a1 + 48) + v10);
    v25 = *(*(a1 + 56) + v10);
    v12 = v25;
    sub_20B908124();
    v13 = v11;
    v14 = v12;
    swift_dynamicCast();
    sub_20B6B3B74((v26 + 8), v24);
    sub_20B6B3B74(v24, v26);
    sub_20C13C954();
    sub_20C13E164();
    sub_20C13CA64();
    v15 = sub_20C13E1B4();

    v16 = -1 << *(v1 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v6 + 8 * (v17 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *(v6 + 8 * v18);
        if (v22 != -1)
        {
          v8 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v8 = __clz(__rbit64((-1 << v17) & ~*(v6 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v8) = v13;
    sub_20B6B3B74(v26, (*(v1 + 56) + 32 * v8));
    ++*(v1 + 16);
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return;
    }

    v4 = *(a1 + 64 + 8 * v9);
    ++v7;
    if (v4)
    {
      v7 = v9;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_20B9056A8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767A40, &qword_20C154CA8);
    v2 = sub_20C13DE84();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_20B51D968(*(a1 + 56) + 40 * v12, v41);
    v39 = v15;
    v40 = v14;
    v36 = v41[0];
    v37 = v41[1];
    v38 = v42;
    v26 = v15;
    v27 = v14;

    swift_dynamicCast();
    v24[0] = v36;
    v24[1] = v37;
    v25 = v38;
    swift_dynamicCast();
    v32 = v28;
    v33 = v29;
    v34 = v30;
    sub_20B6B3B74(&v31, v35);
    v28 = v32;
    v29 = v33;
    v30 = v34;
    sub_20B6B3B74(v35, v24);
    v16 = sub_20C13DBB4();
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v2 + 48) + 40 * v9;
    *v10 = v28;
    *(v10 + 16) = v29;
    *(v10 + 32) = v30;
    sub_20B6B3B74(v24, (*(v2 + 56) + 32 * v9));
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_20B905994(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767A40, &qword_20C154CA8);
    v2 = sub_20C13DE84();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_20B51F1D8(*(a1 + 56) + 32 * v12, v35);
    *&v34 = v15;
    *(&v34 + 1) = v14;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_20B6B3B74(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_20B6B3B74(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_20B6B3B74(v31, v32);
    v16 = sub_20C13DBB4();
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v2 + 48) + 40 * v9;
    *v10 = v24;
    *(v10 + 16) = v25;
    *(v10 + 32) = v26;
    sub_20B6B3B74(v32, (*(v2 + 56) + 32 * v9));
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_20B905C5C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767A68, &unk_20C1622C0);
    v1 = sub_20C13DE84();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v7 = 0;
  while (v4)
  {
LABEL_15:
    v10 = __clz(__rbit64(v4)) | (v7 << 6);
    v11 = *(*(a1 + 48) + 8 * v10);
    v23 = *(*(a1 + 56) + v10);
    v12 = v11;
    swift_dynamicCast();
    sub_20B6B3B74((v24 + 8), v22);
    sub_20B6B3B74(v22, v24);
    sub_20C13C954();
    sub_20C13E164();
    sub_20C13CA64();
    v13 = sub_20C13E1B4();

    v14 = -1 << *(v1 + 32);
    v15 = v13 & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~*(v6 + 8 * (v15 >> 6))) == 0)
    {
      v17 = 0;
      v18 = (63 - v14) >> 6;
      while (++v16 != v18 || (v17 & 1) == 0)
      {
        v19 = v16 == v18;
        if (v16 == v18)
        {
          v16 = 0;
        }

        v17 |= v19;
        v20 = *(v6 + 8 * v16);
        if (v20 != -1)
        {
          v8 = __clz(__rbit64(~v20)) + (v16 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v8 = __clz(__rbit64((-1 << v15) & ~*(v6 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v8) = v12;
    sub_20B6B3B74(v24, (*(v1 + 56) + 32 * v8));
    ++*(v1 + 16);
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return;
    }

    v4 = *(a1 + 64 + 8 * v9);
    ++v7;
    if (v4)
    {
      v7 = v9;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_20B905EF4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767A50, &qword_20C154DE8);
    v2 = sub_20C13DE84();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(a1 + 48) + 16 * v13);
        v16 = *v14;
        v15 = v14[1];
        sub_20B51D968(*(a1 + 56) + 40 * v13, &v29);
        v27 = v16;
        v28 = v15;

        swift_dynamicCast();
        sub_20B6B3B74(&v23, v25);
        sub_20B6B3B74(v25, v26);
        sub_20B6B3B74(v26, &v24);
        v17 = sub_20B65AA60(v16, v15);
        if (v18)
        {
          v8 = (v2[6] + 16 * v17);
          *v8 = v16;
          v8[1] = v15;
          v9 = v17;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_1(v10);
          sub_20B6B3B74(&v24, v10);
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v17;
          v19 = (v2[6] + 16 * v17);
          *v19 = v16;
          v19[1] = v15;
          sub_20B6B3B74(&v24, (v2[7] + 32 * v17));
          v20 = v2[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_21;
          }

          v2[2] = v22;
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_20B906164(char a1, void *a2, uint64_t a3)
{
  v6 = sub_20C132C14();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v43 - v11;
  v13 = sub_20C13BB84();
  MEMORY[0x28223BE20](v13);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v43 - v18;
  if (a1)
  {
    v45 = v17;
    sub_20C13B534();
    (*(v7 + 16))(v12, a3, v6);
    v20 = sub_20C13BB74();
    v21 = sub_20C13D1F4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v48 = v23;
      *v22 = 141558274;
      *(v22 + 4) = 1752392040;
      *(v22 + 12) = 2080;
      sub_20B9080CC();
      v24 = sub_20C13DFA4();
      v44 = v13;
      v26 = v25;
      (*(v7 + 8))(v12, v6);
      v27 = sub_20B51E694(v24, v26, &v48);

      *(v22 + 14) = v27;
      _os_log_impl(&dword_20B517000, v20, v21, "Successfully loaded %{mask.hash}s", v22, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x20F2F6A40](v23, -1, -1);
      MEMORY[0x20F2F6A40](v22, -1, -1);

      (*(v45 + 8))(v19, v44);
      return;
    }

    (*(v7 + 8))(v12, v6);
    v41 = *(v45 + 8);
    v42 = v19;
  }

  else
  {
    if (!a2)
    {
      return;
    }

    v45 = v17;
    v28 = a2;
    sub_20C13B534();
    (*(v7 + 16))(v9, a3, v6);
    v29 = a2;
    v30 = sub_20C13BB74();
    v31 = sub_20C13D1D4();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v48 = v43;
      *v32 = 141558530;
      *(v32 + 4) = 1752392040;
      *(v32 + 12) = 2080;
      sub_20B9080CC();
      v33 = sub_20C13DFA4();
      v44 = v13;
      v35 = v34;
      (*(v7 + 8))(v9, v6);
      v36 = sub_20B51E694(v33, v35, &v48);

      *(v32 + 14) = v36;
      *(v32 + 22) = 2082;
      swift_getErrorValue();
      v37 = MEMORY[0x20F2F5850](v46, v47);
      v39 = sub_20B51E694(v37, v38, &v48);

      *(v32 + 24) = v39;
      _os_log_impl(&dword_20B517000, v30, v31, "Unable to load marketingLink %{mask.hash}s: %{public}s", v32, 0x20u);
      v40 = v43;
      swift_arrayDestroy();
      MEMORY[0x20F2F6A40](v40, -1, -1);
      MEMORY[0x20F2F6A40](v32, -1, -1);

      (*(v45 + 8))(v15, v44);
      return;
    }

    (*(v7 + 8))(v9, v6);
    v41 = *(v45 + 8);
    v42 = v15;
  }

  v41(v42, v13);
}

void sub_20B906664(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

id sub_20B9066DC(double a1)
{
  v2 = v1;
  v221 = sub_20C132704();
  v224 = *(v221 - 8);
  MEMORY[0x28223BE20](v221);
  v206 = &v205 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v4 - 8);
  v222 = &v205 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7665D8, &unk_20C1896B0);
  MEMORY[0x28223BE20](v6 - 8);
  v223 = &v205 - v7;
  v8 = sub_20C138894();
  v232 = *(v8 - 8);
  v233 = v8;
  MEMORY[0x28223BE20](v8);
  v231 = (&v205 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for MarketingUserInterfaceConfiguration(0);
  MEMORY[0x28223BE20](v10);
  v227 = &v205 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v217 = &v205 - v13;
  MEMORY[0x28223BE20](v14);
  v215 = &v205 - v15;
  MEMORY[0x28223BE20](v16);
  v212 = &v205 - v17;
  MEMORY[0x28223BE20](v18);
  v216 = (&v205 - v19);
  MEMORY[0x28223BE20](v20);
  v214 = &v205 - v21;
  MEMORY[0x28223BE20](v22);
  v211 = &v205 - v23;
  MEMORY[0x28223BE20](v24);
  v208 = &v205 - v25;
  MEMORY[0x28223BE20](v26);
  v218 = &v205 - v27;
  MEMORY[0x28223BE20](v28);
  v213 = &v205 - v29;
  MEMORY[0x28223BE20](v30);
  v210 = &v205 - v31;
  MEMORY[0x28223BE20](v32);
  v34 = &v205 - v33;
  v35 = sub_20C13BB84();
  v235 = *(v35 - 8);
  v236 = v35;
  MEMORY[0x28223BE20](v35);
  v226 = &v205 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v225 = &v205 - v38;
  MEMORY[0x28223BE20](v39);
  v228 = &v205 - v40;
  v41 = sub_20C132C14();
  v42 = *(v41 - 8);
  v43 = *(v42 + 8);
  MEMORY[0x28223BE20](v41);
  v230 = &v205 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v220 = &v205 - v45;
  MEMORY[0x28223BE20](v46);
  v209 = &v205 - v47;
  MEMORY[0x28223BE20](v48);
  v237 = &v205 - v49;
  MEMORY[0x28223BE20](v50);
  v207 = &v205 - v51;
  MEMORY[0x28223BE20](v52);
  v229 = &v205 - v53;
  v54 = type metadata accessor for MarketingUserInterfaceResource(0);
  MEMORY[0x28223BE20](v54);
  v56 = &v205 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = objc_opt_self();
  v57 = [v219 currentProcess];
  sub_20C138E44();
  v239 = sub_20C13D244();

  v234 = v10;
  v58 = *(v10 + 32);
  v238 = v2;
  sub_20B907F88(v2 + v58, v56, type metadata accessor for MarketingUserInterfaceResource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v160 = v230;
      (*(v42 + 4))(v230, v56, v41);
      v161 = objc_allocWithZone(MEMORY[0x277CDD340]);
      v162 = sub_20C132B64();
      v163 = [v161 initWithAccountURL_];

      (*(v42 + 1))(v160, v41);
      v164 = v163;
LABEL_20:
      v173 = v164;
LABEL_26:
      v165 = v239;
      goto LABEL_27;
    }

    v233 = *&v56[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767A30, &unk_20C155DB0) + 48)];
    v95 = v42;
    v96 = v42 + 32;
    v97 = *(v42 + 4);
    v98 = v237;
    v99 = v41;
    v228 = v97;
    v229 = v96;
    (v97)(v237, v56, v41);
    v100 = v226;
    sub_20C13B544();
    v101 = v238;
    v102 = v212;
    sub_20B907F88(v238, v212, type metadata accessor for MarketingUserInterfaceConfiguration);
    v103 = v215;
    sub_20B907F88(v101, v215, type metadata accessor for MarketingUserInterfaceConfiguration);
    v104 = v217;
    sub_20B907F88(v101, v217, type metadata accessor for MarketingUserInterfaceConfiguration);
    v225 = v95;
    v105 = (v95 + 16);
    v106 = *(v95 + 2);
    v107 = v209;
    v231 = v106;
    v232 = v105;
    (v106)(v209, v98, v99);
    v108 = v227;
    sub_20B907F88(v101, v227, type metadata accessor for MarketingUserInterfaceConfiguration);
    v109 = sub_20C13BB74();
    LODWORD(v219) = sub_20C13D1B4();
    if (os_log_type_enabled(v109, v219))
    {
      v110 = swift_slowAlloc();
      v218 = swift_slowAlloc();
      v241 = v218;
      *v110 = 67110402;
      v111 = *(v234 + 36);
      v216 = v109;
      v112 = *(v102 + v111);
      sub_20B907FF0(v102);
      *(v110 + 4) = v112;
      *(v110 + 8) = 2048;
      aBlock = sub_20C136324();
      LOBYTE(v243) = v113 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767A38, &qword_20C1622B8);
      sub_20C133BB4();
      v114 = v240;
      sub_20B907FF0(v103);
      *(v110 + 10) = v114;
      *(v110 + 18) = 2082;
      v115 = sub_20C139344();
      v116 = v104;
      v118 = v117;
      sub_20B907FF0(v116);
      v119 = sub_20B51E694(v115, v118, &v241);

      *(v110 + 20) = v119;
      *(v110 + 28) = 2160;
      *(v110 + 30) = 1752392040;
      *(v110 + 38) = 2080;
      v120 = sub_20C132B24();
      v122 = v121;
      v123 = v225;
      v234 = *(v225 + 1);
      (v234)(v107, v99);
      v124 = sub_20B51E694(v120, v122, &v241);

      *(v110 + 40) = v124;
      *(v110 + 48) = 2080;
      v101 = v238;
      v125 = v227;
      v126 = sub_20C13C764();
      v128 = v127;
      sub_20B907FF0(v125);
      v129 = sub_20B51E694(v126, v128, &v241);

      *(v110 + 50) = v129;
      v130 = v216;
      _os_log_impl(&dword_20B517000, v216, v219, "[AMSUIWeb] Launching AMS web marketing controller: anon=%{BOOL}d, privacy=%ld sub=%{public}s for url=%{mask.hash}s with metrics=%s", v110, 0x3Au);
      v131 = v218;
      swift_arrayDestroy();
      MEMORY[0x20F2F6A40](v131, -1, -1);
      MEMORY[0x20F2F6A40](v110, -1, -1);

      (*(v235 + 8))(v226, v236);
      v132 = v239;
      v133 = v99;
      v134 = v123;
    }

    else
    {
      sub_20B907FF0(v103);
      sub_20B907FF0(v102);

      sub_20B907FF0(v108);
      v174 = v225;
      v234 = *(v225 + 1);
      (v234)(v107, v99);
      sub_20B907FF0(v104);
      (*(v235 + 8))(v100, v236);
      v132 = v239;
      v133 = v99;
      v134 = v174;
    }

    v175 = *v101;
    v176 = [objc_allocWithZone(MEMORY[0x277CEE940]) initWithBag:v101[1] account:*v101 clientInfo:0];
    [v176 setAccount_];
    [v176 setDelegate_];
    v177 = sub_20C13C744();
    [v176 setMetricsOverlay_];

    [v176 setClientInfo_];
    sub_20C132B24();
    v178 = v223;
    sub_20C1326E4();

    v179 = *(v224 + 48);
    v180 = v221;
    if (!v179(v178, 1, v221))
    {
      sub_20C1326D4();
    }

    if (v179(v178, 1, v180))
    {
      v181 = v222;
      (*(v134 + 7))(v222, 1, 1, v133);
    }

    else
    {
      v191 = v224;
      v192 = v206;
      (*(v224 + 16))(v206, v178, v180);
      v181 = v222;
      sub_20C132694();
      (*(v191 + 8))(v192, v180);
      if ((*(v134 + 6))(v181, 1, v133) != 1)
      {
        v194 = v134;
        v193 = v220;
        (v228)(v220, v181, v133);
LABEL_25:
        v195 = sub_20C132B64();
        v196 = [v176 loadURL_];

        v197 = v230;
        v198 = v237;
        (v231)(v230, v237, v133);
        v199 = (v194[80] + 16) & ~v194[80];
        v200 = swift_allocObject();
        (v228)(v200 + v199, v197, v133);
        v246 = sub_20B90804C;
        v247 = v200;
        aBlock = MEMORY[0x277D85DD0];
        v243 = 1107296256;
        v244 = sub_20B906664;
        v245 = &block_descriptor_47;
        v201 = _Block_copy(&aBlock);

        [v196 addFinishBlock_];
        _Block_release(v201);
        swift_unknownObjectRelease();

        v202 = v234;
        (v234)(v193, v133);
        v202(v198, v133);
        v173 = v176;
        sub_20B520158(v178, &qword_27C7665D8, &unk_20C1896B0);
        goto LABEL_26;
      }
    }

    v193 = v220;
    (v231)(v220, v237, v133);
    v194 = v134;
    if ((*(v134 + 6))(v181, 1, v133) != 1)
    {
      sub_20B520158(v181, &unk_27C7617F0, &unk_20C151A10);
    }

    goto LABEL_25;
  }

  if (EnumCaseMultiPayload)
  {
    v135 = *&v56[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764260, &unk_20C155DA0) + 48)];
    (*(v232 + 32))(v231, v56, v233);
    v136 = v225;
    sub_20C13B544();
    v137 = v238;
    v138 = v208;
    sub_20B907F88(v238, v208, type metadata accessor for MarketingUserInterfaceConfiguration);
    v139 = v211;
    sub_20B907F88(v137, v211, type metadata accessor for MarketingUserInterfaceConfiguration);
    v140 = v214;
    sub_20B907F88(v137, v214, type metadata accessor for MarketingUserInterfaceConfiguration);
    v141 = v216;
    sub_20B907F88(v137, v216, type metadata accessor for MarketingUserInterfaceConfiguration);
    v142 = sub_20C13BB74();
    v143 = sub_20C13D1B4();
    if (os_log_type_enabled(v142, v143))
    {
      v144 = swift_slowAlloc();
      v237 = swift_slowAlloc();
      v241 = v237;
      *v144 = 67109890;
      v145 = v138;
      v146 = v234;
      v147 = *(v145 + *(v234 + 36));
      sub_20B907FF0(v145);
      *(v144 + 4) = v147;
      *(v144 + 8) = 2048;
      aBlock = sub_20C136324();
      LOBYTE(v243) = v148 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767A38, &qword_20C1622B8);
      sub_20C133BB4();
      v149 = v240;
      sub_20B907FF0(v139);
      *(v144 + 10) = v149;
      *(v144 + 18) = 2082;
      v150 = sub_20C139344();
      v151 = v140;
      v153 = v152;
      sub_20B907FF0(v151);
      v154 = sub_20B51E694(v150, v153, &v241);

      *(v144 + 20) = v154;
      *(v144 + 28) = 2080;
      v155 = sub_20C13C764();
      v157 = v156;
      sub_20B907FF0(v141);
      v158 = sub_20B51E694(v155, v157, &v241);

      *(v144 + 30) = v158;
      _os_log_impl(&dword_20B517000, v142, v143, "[AMSUIMarketingItem] Launching AMS marketing item controller: anon=%{BOOL}d, privacy=%ld sub=%{public}s with metrics=%s", v144, 0x26u);
      v159 = v237;
      swift_arrayDestroy();
      MEMORY[0x20F2F6A40](v159, -1, -1);
      MEMORY[0x20F2F6A40](v144, -1, -1);

      (*(v235 + 8))(v225, v236);
    }

    else
    {
      sub_20B907FF0(v139);
      sub_20B907FF0(v138);

      sub_20B907FF0(v141);
      sub_20B907FF0(v140);
      (*(v235 + 8))(v136, v236);
      v146 = v234;
    }

    v182 = v231;
    v183 = sub_20C138814();
    v184 = [objc_allocWithZone(MEMORY[0x277CEE8E8]) initWithMarketingItem:v183 bag:v137[1]];

    [v184 setOfferHints_];
    v185 = *(v137 + *(v146 + 36));
    v186 = v184;
    [v186 setAnonymousMetrics_];
    sub_20B905994(v137[2]);
    v187 = sub_20C13C744();

    [v186 setMetricsOverlay_];

    [v186 setAccount_];
    sub_20C138E34();
    v188 = sub_20C13C914();

    [v186 setMediaClientIdentifier_];

    [v186 setDelegate_];
    v189 = [v219 currentProcess];
    sub_20C138E44();
    v190 = sub_20C13D244();

    [v186 setClientInfo_];
    swift_unknownObjectRelease();

    (*(v232 + 8))(v182, v233);
    v164 = v186;
    goto LABEL_20;
  }

  v237 = *&v56[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764258, &qword_20C155D98) + 48)];
  v60 = v42;
  v61 = *(v42 + 4);
  v62 = v229;
  v61(v229, v56, v41);
  sub_20C13B544();
  v63 = v238;
  sub_20B907F88(v238, v34, type metadata accessor for MarketingUserInterfaceConfiguration);
  v64 = v210;
  sub_20B907F88(v63, v210, type metadata accessor for MarketingUserInterfaceConfiguration);
  v65 = v213;
  sub_20B907F88(v63, v213, type metadata accessor for MarketingUserInterfaceConfiguration);
  v66 = *(v60 + 2);
  v67 = v207;
  v233 = v41;
  v66(v207, v62, v41);
  v68 = v218;
  sub_20B907F88(v63, v218, type metadata accessor for MarketingUserInterfaceConfiguration);
  v69 = sub_20C13BB74();
  v70 = sub_20C13D1B4();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = v65;
    v72 = swift_slowAlloc();
    v232 = swift_slowAlloc();
    v241 = v232;
    *v72 = 67110402;
    LODWORD(v230) = v70;
    v73 = *(v234 + 36);
    v231 = v69;
    v74 = v34[v73];
    sub_20B907FF0(v34);
    *(v72 + 4) = v74;
    *(v72 + 8) = 2048;
    aBlock = sub_20C136324();
    LOBYTE(v243) = v75 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767A38, &qword_20C1622B8);
    sub_20C133BB4();
    v76 = v240;
    sub_20B907FF0(v64);
    *(v72 + 10) = v76;
    *(v72 + 18) = 2082;
    v77 = sub_20C139344();
    v79 = v78;
    sub_20B907FF0(v71);
    v80 = sub_20B51E694(v77, v79, &v241);

    *(v72 + 20) = v80;
    *(v72 + 28) = 2160;
    *(v72 + 30) = 1752392040;
    *(v72 + 38) = 2080;
    v81 = sub_20C132B24();
    v83 = v82;
    v84 = *(v60 + 1);
    v85 = v233;
    v84(v67, v233);
    v86 = sub_20B51E694(v81, v83, &v241);

    *(v72 + 40) = v86;
    *(v72 + 48) = 2080;
    v87 = sub_20C13C764();
    v88 = v68;
    v90 = v89;
    sub_20B907FF0(v88);
    v91 = sub_20B51E694(v87, v90, &v241);

    *(v72 + 50) = v91;
    v92 = v231;
    _os_log_impl(&dword_20B517000, v231, v230, "[AMSUIDynamic] Launching AMS dynamic marketing controller: anon=%{BOOL}d, privacy=%ld sub=%{public}s for url=%{mask.hash}s with metrics=%s", v72, 0x3Au);
    v93 = v232;
    swift_arrayDestroy();
    v94 = v93;
    v63 = v238;
    MEMORY[0x20F2F6A40](v94, -1, -1);
    MEMORY[0x20F2F6A40](v72, -1, -1);
  }

  else
  {
    sub_20B907FF0(v64);
    sub_20B907FF0(v34);

    sub_20B907FF0(v68);
    v84 = *(v60 + 1);
    v85 = v233;
    v84(v67, v233);
    sub_20B907FF0(v65);
  }

  (*(v235 + 8))(v228, v236);
  v165 = v239;
  v166 = v63[1];
  v167 = objc_allocWithZone(MEMORY[0x277CEE8C8]);
  v168 = v229;
  v169 = sub_20C132B64();
  v170 = [v167 initWithBag:v166 URL:v169];

  [v170 setAccount_];
  [v170 setAnonymousMetrics_];
  [v170 setDelegate_];
  sub_20C138E34();
  v171 = sub_20C13C914();

  [v170 setMediaClientIdentifier_];

  sub_20B905994(v63[2]);
  v172 = sub_20C13C744();

  [v170 setMetricsOverlay_];

  [v170 setClientInfo_];
  swift_unknownObjectRelease();
  v84(v168, v85);
  v173 = v170;
LABEL_27:
  v203 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];

  return v203;
}

uint64_t sub_20B907F88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20B907FF0(uint64_t a1)
{
  v2 = type metadata accessor for MarketingUserInterfaceConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_20B90804C(char a1, void *a2)
{
  v5 = *(sub_20C132C14() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_20B906164(a1, a2, v6);
}

unint64_t sub_20B9080CC()
{
  result = qword_27C768AB0;
  if (!qword_27C768AB0)
  {
    sub_20C132C14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C768AB0);
  }

  return result;
}

unint64_t sub_20B908124()
{
  result = qword_27C767A60;
  if (!qword_27C767A60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C767A60);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContentInsetInitialBehavior(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  if (v5 + 1 >= 2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ContentInsetInitialBehavior(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_20B9081FC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20B908210(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
  }

  else if (a2)
  {
    *(result + 8) = a2 + 2;
  }

  return result;
}

uint64_t sub_20B908248(uint64_t a1, unsigned __int8 a2)
{
  v4 = a2;
  sub_20C13E164();
  if (v4 == 3)
  {
    v5 = 1;
  }

  else
  {
    MEMORY[0x20F2F58E0](0);
    if ((a1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = a1;
    }

    else
    {
      v6 = 0;
    }

    MEMORY[0x20F2F5910](v6);
    v5 = a2;
  }

  MEMORY[0x20F2F58E0](v5);
  return sub_20C13E1B4();
}

uint64_t sub_20B9082D8()
{
  v1 = *(v0 + 8);
  if (v1 == 3)
  {
    v1 = 1;
  }

  else
  {
    v2 = *v0;
    MEMORY[0x20F2F58E0](0);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x20F2F5910](v3);
  }

  return MEMORY[0x20F2F58E0](v1);
}

uint64_t sub_20B908338(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_20C13E164();
  if (v3 == 3)
  {
    v3 = 1;
  }

  else
  {
    MEMORY[0x20F2F58E0](0);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v2;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x20F2F5910](v4);
  }

  MEMORY[0x20F2F58E0](v3);
  return sub_20C13E1B4();
}

BOOL sub_20B9083B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == 3)
  {
    return v3 == 3;
  }

  return *a1 == *a2 && v3 != 3 && v2 == v3;
}

unint64_t sub_20B9083F0()
{
  result = qword_27C767A70;
  if (!qword_27C767A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C767A70);
  }

  return result;
}

char *sub_20B908444(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_commonConstraints] = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_standardConstraints] = v11;
  *&v4[OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_accessibilityConstraints] = v11;
  v12 = &v4[OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_standardLayout];
  *v12 = xmmword_20C162360;
  *(v12 + 2) = 0x4010000000000000;
  v13 = &v4[OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_accessibilityLayout];
  *v13 = xmmword_20C162360;
  *(v13 + 2) = 0x4030000000000000;
  v4[OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_showSeparator] = 1;
  v14 = &v4[OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_commonLayout];
  *v14 = xmmword_20C162370;
  *(v14 + 2) = 0xC000000000000000;
  v15 = [objc_allocWithZone(type metadata accessor for ArtworkView(0)) initWithFrame_];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  if (_UISolariumEnabled())
  {
    v16 = 16.0;
  }

  else
  {
    v16 = 2.0;
  }

  v17 = &v4[OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_artworkView];
  v18 = [v15 layer];
  [v18 setCornerRadius_];

  [v15 setClipsToBounds_];
  *v17 = v15;
  v17[1] = &off_2822B63E8;
  v19 = OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_titleLabel;
  v20 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v20 &selRef_count + 2];
  [v20 setAdjustsFontForContentSizeCategory_];
  v162 = objc_opt_self();
  v21 = [v162 preferredFontForTextStyle_];
  [v20 setFont_];

  [v20 setAllowsDefaultTighteningForTruncation_];
  v22 = objc_opt_self();
  v23 = [v22 whiteColor];
  [v20 setTextColor_];

  LODWORD(v24) = 1132068864;
  [v20 setContentCompressionResistancePriority:0 forAxis:v24];
  LODWORD(v25) = 1148846080;
  [v20 setContentCompressionResistancePriority:1 forAxis:v25];

  *&v4[v19] = v20;
  v26 = OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_subtitleLabel;
  v27 = [objc_allocWithZone(MEMORY[0x277D756B8]) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  [v27 setTranslatesAutoresizingMaskIntoConstraints_];
  [v27 setAdjustsFontForContentSizeCategory_];
  v28 = *MEMORY[0x277D76968];
  v29 = [v162 preferredFontForTextStyle_];
  [v27 setFont_];

  [v27 setAllowsDefaultTighteningForTruncation_];
  v30 = [v22 systemGrayColor];
  [v27 setTextColor_];

  LODWORD(v31) = 1132068864;
  [v27 setContentCompressionResistancePriority:0 forAxis:v31];
  LODWORD(v32) = 1148846080;
  [v27 setContentCompressionResistancePriority:1 forAxis:v32];

  *&v4[v26] = v27;
  v164 = OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_explicitIconLabel;
  v33 = [objc_allocWithZone(MEMORY[0x277D756B8]) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  [v33 setTranslatesAutoresizingMaskIntoConstraints_];
  [v33 setAdjustsFontForContentSizeCategory_];
  v34 = *MEMORY[0x277D74410];
  v35 = [objc_opt_self() preferredFontDescriptorWithTextStyle:v28 compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0, &unk_20C159850);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v37 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970, &unk_20C1500C0);
  v38 = swift_initStackObject();
  v39 = MEMORY[0x277D74430];
  *(v38 + 16) = xmmword_20C14F980;
  v40 = *v39;
  *(v38 + 32) = *v39;
  *(v38 + 40) = v34;
  v41 = v37;
  v42 = v40;
  v43 = sub_20B6B134C(v38);
  swift_setDeallocating();
  sub_20B520158(v38 + 32, &unk_27C773200, qword_20C158A40);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980, &qword_20C1500D0);
  *(inited + 40) = v43;
  sub_20B6B143C(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &qword_27C773210, &qword_20C159860);
  type metadata accessor for AttributeName(0);
  sub_20B5E5BD0();
  v44 = sub_20C13C744();

  v45 = [v35 fontDescriptorByAddingAttributes_];

  v46 = [v162 fontWithDescriptor:v45 size:0.0];
  [v33 setFont_];

  [v33 setAllowsDefaultTighteningForTruncation_];
  v47 = [v22 secondaryLabelColor];
  [v33 setTextColor_];

  LODWORD(v48) = 1144750080;
  [v33 setContentCompressionResistancePriority:0 forAxis:v48];
  LODWORD(v49) = 1148846080;
  [v33 setContentCompressionResistancePriority:1 forAxis:v49];

  *&v4[v164] = v33;
  v50 = OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_separator;
  v51 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v51 setTranslatesAutoresizingMaskIntoConstraints_];
  v52 = [v22 separatorColor];
  [v51 setBackgroundColor_];

  *&v4[v50] = v51;
  v166.receiver = v4;
  v166.super_class = type metadata accessor for MusicTrackCell(0);
  v53 = objc_msgSendSuper2(&v166, sel_initWithFrame_, a1, a2, a3, a4);
  v54 = *&v53[OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_artworkView];
  v55 = *&v53[OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_artworkView + 8];
  v56 = &v53[OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_artworkView];
  ObjectType = swift_getObjectType();
  v58 = *(v55 + 288);
  v59 = v53;
  v60 = v54;
  v58(0, ObjectType, v55);

  v61 = [v59 contentView];
  [v61 addSubview_];

  v62 = [v59 &selRef_setMaximumFractionDigits_];
  v161 = OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_titleLabel;
  [v62 addSubview_];

  v63 = [v59 &selRef_setMaximumFractionDigits_];
  v165 = OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_subtitleLabel;
  [v63 addSubview_];

  v64 = [v59 &selRef_setMaximumFractionDigits_];
  v65 = OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_explicitIconLabel;
  [v64 addSubview_];

  v66 = [v59 &selRef_setMaximumFractionDigits_];
  v160 = OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_separator;
  [v66 addSubview_];

  v163 = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  v67 = [v59 &selRef_setMaximumFractionDigits_];
  [v67 addLayoutGuide_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_20C150930;
  v69 = v68;
  v70 = [*v56 leadingAnchor];
  v71 = [v59 &selRef_setMaximumFractionDigits_];
  v72 = [v71 leadingAnchor];

  v73 = [v70 constraintEqualToAnchor_];
  v74 = v69;
  v69[4] = v73;
  v75 = [*v56 widthAnchor];
  v76 = &v59[OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_commonLayout];
  v77 = [v75 constraintEqualToConstant_];

  v74[5] = v77;
  v78 = [*v56 heightAnchor];
  v79 = [v78 &selRef_visibleCells + 1];

  v74[6] = v79;
  v80 = [*&v59[v65] leadingAnchor];
  v81 = [*&v59[v161] trailingAnchor];
  v82 = [v80 constraintEqualToAnchor:v81 constant:v76[1]];

  v74[7] = v82;
  v83 = [*&v59[v65] trailingAnchor];
  v84 = [v59 contentView];
  v85 = [v84 trailingAnchor];

  v86 = [v83 constraintLessThanOrEqualToAnchor_];
  v74[8] = v86;
  v87 = [*&v59[v65] bottomAnchor];
  v88 = [*&v59[v161] &selRef_secondaryLabel + 5];
  v89 = [v87 &selRef_passwordEntryCancelledHandler + 6];

  v74[9] = v89;
  v90 = [*&v59[v165] trailingAnchor];
  v91 = [v59 contentView];
  v92 = [v91 trailingAnchor];

  v93 = [v90 constraintEqualToAnchor_];
  v74[10] = v93;
  v94 = [*&v59[v165] topAnchor];
  v95 = [*&v59[v161] bottomAnchor];
  v96 = [v94 constraintEqualToAnchor:v95 constant:v76[1]];

  v74[11] = v96;
  v97 = [v163 leadingAnchor];
  v98 = [*&v59[v65] leadingAnchor];
  v99 = [v97 constraintEqualToAnchor_];

  v74[12] = v99;
  v100 = [v163 topAnchor];
  v101 = [*&v59[v161] topAnchor];
  v102 = [v100 &selRef:v101 alertControllerReleasedDictationButton:? + 5];

  v74[13] = v102;
  v103 = [v163 bottomAnchor];
  v104 = [*&v59[v165] bottomAnchor];
  v105 = [v103 &selRef:v104 alertControllerReleasedDictationButton:? + 5];

  v74[14] = v105;
  v106 = [*&v59[v160] leadingAnchor];
  v107 = [*&v59[v161] leadingAnchor];
  v108 = [v106 &selRef:v107 alertControllerReleasedDictationButton:? + 5];

  v74[15] = v108;
  v109 = [*&v59[v160] trailingAnchor];
  v110 = [v59 contentView];
  v111 = [v110 trailingAnchor];

  sub_20B90B824(v112);
  v113 = [v109 constraintEqualToAnchor:v111 constant:?];

  v74[16] = v113;
  v114 = [*&v59[v160] bottomAnchor];
  v115 = [v59 contentView];
  v116 = [v115 bottomAnchor];

  v117 = [v114 &selRef:v116 alertControllerReleasedDictationButton:? + 5];
  v74[17] = v117;
  v118 = [*&v59[v160] heightAnchor];
  sub_20C1387F4();
  v119 = [v118 constraintEqualToConstant_];

  v74[18] = v119;
  *&v59[OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_commonConstraints] = v74;

  v120 = swift_allocObject();
  *(v120 + 16) = xmmword_20C150050;
  v121 = [*v56 topAnchor];
  v122 = [v59 contentView];
  v123 = [v122 topAnchor];

  v124 = [v121 constraintEqualToAnchor:v123 constant:4.0];
  *(v120 + 32) = v124;
  v125 = [*v56 bottomAnchor];
  v126 = [v59 contentView];
  v127 = [v126 bottomAnchor];

  v128 = [v125 constraintEqualToAnchor:v127 constant:-4.0];
  *(v120 + 40) = v128;
  v129 = [*&v59[v161] leadingAnchor];
  v130 = [*v56 trailingAnchor];
  v131 = [v129 constraintEqualToAnchor:v130 constant:16.0];

  *(v120 + 48) = v131;
  v132 = [*&v59[v165] leadingAnchor];
  v133 = [*v56 trailingAnchor];
  v134 = [v132 constraintEqualToAnchor:v133 constant:16.0];

  *(v120 + 56) = v134;
  v135 = [v163 centerYAnchor];
  v136 = [v59 contentView];
  v137 = [v136 centerYAnchor];

  v138 = [v135 constraintEqualToAnchor_];
  *(v120 + 64) = v138;
  *&v59[OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_standardConstraints] = v120;

  v139 = swift_allocObject();
  *(v139 + 16) = xmmword_20C151850;
  v140 = [*v56 topAnchor];
  v141 = [v59 contentView];

  v142 = [v141 topAnchor];
  v143 = [v140 constraintEqualToAnchor:v142 constant:4.0];

  *(v139 + 32) = v143;
  v144 = [*&v59[v161] leadingAnchor];
  v145 = [*v56 leadingAnchor];
  v146 = [v144 constraintEqualToAnchor_];

  *(v139 + 40) = v146;
  v147 = [*&v59[v161] topAnchor];
  v148 = [*v56 bottomAnchor];
  v149 = [v147 constraintEqualToAnchor:v148 constant:16.0];

  *(v139 + 48) = v149;
  v150 = [*&v59[v165] leadingAnchor];
  v151 = [*v56 leadingAnchor];
  v152 = [v150 constraintEqualToAnchor_];

  *(v139 + 56) = v152;
  v153 = [*&v59[v165] topAnchor];
  v154 = [*&v59[v161] bottomAnchor];
  v155 = [v153 constraintEqualToAnchor_];

  *(v139 + 64) = v155;
  v156 = [*&v59[v160] topAnchor];
  v157 = [*&v59[v165] bottomAnchor];
  v158 = [v156 constraintEqualToAnchor:v157 constant:16.0];

  *(v139 + 72) = v158;
  *&v59[OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_accessibilityConstraints] = v139;

  sub_20B909B6C();
  sub_20B909CFC();

  return v59;
}

void sub_20B909B6C()
{
  v1 = objc_opt_self();
  sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);

  v2 = sub_20C13CC54();

  [v1 activateConstraints_];

  v3 = [v0 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  sub_20C13D424();

  v5 = sub_20C13CC54();

  [v1 deactivateConstraints_];

  v6 = sub_20C13CC54();

  [v1 activateConstraints_];
}

id sub_20B909CFC()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  LOBYTE(v1) = sub_20C13D424();
  v3 = *&v0[OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_titleLabel];
  v4 = (v1 & 1) == 0;
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = 4;
  }

  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (v4)
  {
    v7 = 1;
  }

  else
  {
    v7 = 3;
  }

  [*&v0[OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_titleLabel] setLineBreakMode_];
  [v3 setNumberOfLines_];
  v8 = *&v0[OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_subtitleLabel];
  [v8 setLineBreakMode_];

  return [v8 setNumberOfLines_];
}

id sub_20B909E00()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MusicTrackCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for MusicTrackCell(uint64_t a1)
{
  result = qword_281103840;
  if (!qword_281103840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B909F68(uint64_t a1)
{
  sub_20B5E238C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_20B90A078(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20B90A0C4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20B90A11C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

id sub_20B90A180(char a1)
{
  v2 = *v1;
  *(v2 + OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_showSeparator) = a1;
  return [*(v2 + OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_separator) setHidden_];
}

uint64_t sub_20B90A1D0(unint64_t a1)
{
  v2 = sub_20C13BB84();
  v203 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v165 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v186 = &v165 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v187 = &v165 - v9;
  v185 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v165 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670, &unk_20C151580);
  MEMORY[0x28223BE20](v14 - 8);
  v193 = &v165 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v184 = &v165 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = v18;
  MEMORY[0x28223BE20](v19);
  v197 = &v165 - v20;
  v192 = sub_20C1391C4();
  v190 = *(v192 - 8);
  MEMORY[0x28223BE20](v192);
  v191 = &v165 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_20C138A64();
  v194 = *(v22 - 8);
  v195 = v22;
  MEMORY[0x28223BE20](v22);
  v196 = &v165 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v24 - 8);
  v189 = &v165 - v25;
  v26 = sub_20C13C554();
  v201 = *(v26 - 8);
  v202 = v26;
  MEMORY[0x28223BE20](v26);
  v28 = (&v165 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = *(sub_20C137C24() - 8);
  MEMORY[0x28223BE20](*(v29 + 64));
  MEMORY[0x28223BE20](v30);
  v36 = &v165 - v35;
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x29)
  {
    v178 = v31;
    v188 = v34;
    v176 = v17;
    v177 = v16;
    v172 = v13;
    v173 = v6;
    v174 = v5;
    v37 = v32;
    v38 = v33;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767A80, &unk_20C1624A0);
    v40 = swift_projectBox();
    v181 = *v40;
    v182 = v40[2];
    v41 = *(v39 + 64);
    v42 = v40 + *(v39 + 80);
    v43 = *v42;
    v44 = *(v42 + 1);
    v45 = v42[16];
    v198 = v38;
    v199 = v36;
    v46 = *(v38 + 16);
    v200 = v37;
    v180 = v38 + 16;
    v179 = v46;
    v46(v36, v40 + v41, v37);

    sub_20B6A6418(v43, v44, v45);
    v47 = sub_20C13C914();
    v48 = [objc_opt_self() systemImageNamed_];

    v49 = &unk_281103000;
    v50 = v204;
    v203 = v48;
    if (v48)
    {
      v51 = [v203 imageWithRenderingMode_];
      if (v51)
      {
        v52 = v51;
        v53 = [objc_opt_self() textAttachmentWithImage_];
        v54 = [objc_opt_self() attributedStringWithAttachment_];
        [*&v50[OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_explicitIconLabel] setAttributedText_];

        v49 = &unk_281103000;
      }
    }

    v55 = *&v50[v49[268]];
    v207[0] = v43;
    v207[1] = v44;
    v208 = v45;
    v205 = xmmword_20C152300;
    v206 = 1;
    sub_20B654378();
    sub_20B652F70();
    v56 = sub_20C133BF4();
    sub_20B583F4C(v43, v44, v45);
    [v55 setHidden_];
    v57 = sub_20C13C914();
    [v55 setAccessibilityIdentifier_];

    v58 = *&v50[OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_titleLabel];
    v59 = sub_20C13C914();

    [v58 setText_];

    v60 = *&v50[OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_subtitleLabel];
    v61 = sub_20C13C914();

    [v60 setText_];

    v62 = sub_20C138044();
    v64 = v63;
    v65 = sub_20C138054();
    v67 = v66;
    sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
    *v28 = sub_20C13D374();
    v69 = v201;
    v68 = v202;
    (*(v201 + 104))(v28, *MEMORY[0x277D85200], v202);
    v70 = sub_20C13C584();
    result = (*(v69 + 8))(v28, v68);
    if (v70)
    {
      v73 = *&v50[OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_artworkView];
      v72 = *&v50[OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_artworkView + 8];
      ObjectType = swift_getObjectType();
      [v73 setContentMode_];
      v75 = v199;
      if (sub_20BA66C54())
      {
        v76 = swift_allocObject();
        v175 = v65;
        v202 = v62;
        v77 = v76;
        swift_unknownObjectWeakInit();
        v201 = ObjectType;
        v78 = v200;
        v179(v188, v75, v200);
        v79 = v198;
        v80 = *(v198 + 80);
        v171 = v72;
        v81 = (v80 + 24) & ~v80;
        v166 = v178 + 7;
        v182 = v67;
        v181 = v64;
        v82 = (v178 + 7 + v81) & 0xFFFFFFFFFFFFFFF8;
        v83 = (v82 + 23) & 0xFFFFFFFFFFFFFFF8;
        v84 = (v83 + 23) & 0xFFFFFFFFFFFFFFF8;
        v170 = (v84 + 15) & 0xFFFFFFFFFFFFFFF8;
        v169 = v80;
        v85 = swift_allocObject();
        *(v85 + 16) = v77;
        v86 = *(v79 + 32);
        v168 = v79 + 32;
        v167 = v86;
        v86(v85 + v81, v188, v78);
        v87 = (v85 + v82);
        v88 = v181;
        v89 = v182;
        *v87 = v202;
        v87[1] = v88;
        v90 = (v85 + v83);
        *v90 = v175;
        v90[1] = v89;
        *(v85 + v84) = 2;
        v91 = v85 + v170;
        *v91 = MEMORY[0x277D84F90];
        *(v91 + 8) = 0;
        v92 = (v85 + ((v84 + 31) & 0xFFFFFFFFFFFFFFF8));
        *v92 = 0;
        v92[1] = 0;
        v93 = v171;
        v94 = *(v171 + 152);

        v95 = v201;
        v94(sub_20B90B5DC, v85, v201, v93);

        [v73 bounds];
        if (v96 <= 0.0 || (v98 = v97, v97 <= 0.0))
        {
        }

        else
        {
          v99 = v96;
          v100 = v93;
          v170 = ~v169;
          (*(v93 + 120))(0, v95, v93);
          v101 = v189;
          v102 = v199;
          v103 = v200;
          v179(v189, v199, v200);
          (*(v198 + 56))(v101, 0, 1, v103);
          (*(v100 + 16))(v101, v95, v100);
          sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
          sub_20C137BC4();
          v104 = sub_20C13D5A4();
          [v73 setBackgroundColor_];

          (*(v100 + 176))(COERCE_DOUBLE(*&v99), COERCE_DOUBLE(*&v98), 0, v95, v100);
          v105 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v106 = v188;
          v107 = v103;
          v108 = v179;
          v179(v188, v102, v107);
          v109 = (v169 + 16) & v170;
          v110 = (v166 + v109) & 0xFFFFFFFFFFFFFFF8;
          v111 = (v110 + 15) & 0xFFFFFFFFFFFFFFF8;
          v112 = swift_allocObject();
          v113 = v112 + v109;
          v114 = v200;
          v167(v113, v106, v200);
          *(v112 + v110) = v105;
          v115 = (v112 + v111);
          *v115 = v99;
          v115[1] = v98;
          v201 = v112;
          v116 = (v112 + ((v111 + 23) & 0xFFFFFFFFFFFFFFF8));
          *v116 = 0;
          v116[1] = 0;
          v108(v106, v199, v114);
          (*(v190 + 104))(v191, *MEMORY[0x277D542A8], v192);
          v117 = v196;
          sub_20C138A54();
          v118 = v193;
          sub_20B5F17F8(v117, v193);
          v119 = v176;
          v120 = v177;
          if ((*(v176 + 48))(v118, 1, v177) == 1)
          {
            sub_20B520158(v118, &unk_27C766670, &unk_20C151580);
            sub_20BA1D95C();

            (*(v194 + 8))(v117, v195);
          }

          else
          {
            v134 = *(v119 + 32);
            v134(v197, v118, v120);
            v135 = v134;
            v136 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v137 = v200;
            v108(v106, v199, v200);
            v138 = (v169 + 40) & v170;
            v139 = v138 + v178;
            v140 = (v138 + v178) & 0xFFFFFFFFFFFFFFF8;
            v141 = swift_allocObject();
            *(v141 + 2) = v136;
            v141[3] = v99;
            v141[4] = v98;
            v167(v141 + v138, v106, v137);
            *(v141 + v139) = 0;
            v142 = v141 + v140;
            *(v142 + 1) = 0;
            *(v142 + 2) = 0;
            v143 = swift_allocObject();
            *(v143 + 16) = sub_20B90B770;
            *(v143 + 24) = v141;
            v144 = v184;
            v145 = v177;
            (*(v119 + 16))(v184, v197, v177);
            v146 = (*(v119 + 80) + 16) & ~*(v119 + 80);
            v147 = (v183 + v146 + 7) & 0xFFFFFFFFFFFFFFF8;
            v148 = swift_allocObject();
            v135(v148 + v146, v144, v145);
            v149 = (v148 + v147);
            *v149 = sub_20B5F67A4;
            v149[1] = v143;
            v150 = v187;
            sub_20C137C94();
            v151 = swift_allocObject();
            v152 = v201;
            *(v151 + 16) = sub_20B90B6B4;
            *(v151 + 24) = v152;
            v153 = swift_allocObject();
            *(v153 + 16) = sub_20B5F67D4;
            *(v153 + 24) = v151;
            v154 = v173;
            v155 = v186;
            v156 = v174;
            (*(v173 + 16))(v186, v150, v174);
            v157 = (*(v154 + 80) + 16) & ~*(v154 + 80);
            v158 = (v185 + v157 + 7) & 0xFFFFFFFFFFFFFFF8;
            v159 = swift_allocObject();
            (*(v154 + 32))(v159 + v157, v155, v156);
            v160 = (v159 + v158);
            *v160 = sub_20B5DF204;
            v160[1] = v153;

            v161 = v172;
            sub_20C137C94();
            v162 = *(v154 + 8);
            v162(v150, v156);
            v163 = sub_20C137CB4();
            v164 = swift_allocObject();
            *(v164 + 16) = 0;
            *(v164 + 24) = 0;
            v163(sub_20B52347C, v164);

            v162(v161, v156);
            (*(v119 + 8))(v197, v177);
            (*(v194 + 8))(v196, v195);
          }
        }

        v133 = v199;
        v132 = *(v198 + 8);
      }

      else
      {

        v132 = *(v198 + 8);
        v133 = v75;
      }

      return v132(v133, v200);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_20C13B534();

    v121 = v204;
    v122 = sub_20C13BB74();
    v123 = sub_20C13D1D4();

    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      v207[0] = v126;
      *v124 = 138543618;
      *(v124 + 4) = v121;
      *v125 = v121;
      *(v124 + 12) = 2082;
      *&v205 = a1;
      v127 = sub_20B5F66D0();
      v128 = v121;
      v129 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v127);
      v131 = sub_20B51E694(v129, v130, v207);

      *(v124 + 14) = v131;
      _os_log_impl(&dword_20B517000, v122, v123, "Attempted to configure %{public}@ with item: %{public}s", v124, 0x16u);
      sub_20B520158(v125, &unk_27C762E30, &unk_20C150580);
      MEMORY[0x20F2F6A40](v125, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v126);
      MEMORY[0x20F2F6A40](v126, -1, -1);
      MEMORY[0x20F2F6A40](v124, -1, -1);
    }

    return (*(v203 + 1))(v4, v2);
  }

  return result;
}

void sub_20B90B5DC()
{
  v1 = *(sub_20C137C24() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_20BA315A8(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_20B90B6B4(void *a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + v6 + 8);
  v10 = (v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  sub_20BA62EE0(a1, v1 + v4, v7, v11, v12, v8, v9);
}

void sub_20B90B770(void **a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  sub_20B5F25E8(*a1, *(v1 + 16), (v1 + v4), *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16), *(v1 + 24), *(v1 + 32));
}

uint64_t sub_20B90B824(uint64_t a1)
{
  result = sub_20C1380F4();
  if (result)
  {
    if (result != 1)
    {
      sub_20C13DC94();
      MEMORY[0x20F2F4230](0xD000000000000018, 0x800000020C1A0510);
      sub_20C1380F4();
      sub_20C13DDF4();
      result = sub_20C13DE24();
      __break(1u);
    }
  }

  else if (qword_27C7606D0 != -1)
  {
    return swift_once();
  }

  return result;
}

void sub_20B90B93C()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_commonConstraints) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_standardConstraints) = v3;
  *(v0 + OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_accessibilityConstraints) = v3;
  v4 = v0 + OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_standardLayout;
  *v4 = xmmword_20C162360;
  *(v4 + 16) = 0x4010000000000000;
  v5 = v0 + OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_accessibilityLayout;
  *v5 = xmmword_20C162360;
  *(v5 + 16) = 0x4030000000000000;
  *(v0 + OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_showSeparator) = 1;
  v6 = v0 + OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_commonLayout;
  *v6 = xmmword_20C162370;
  *(v6 + 16) = 0xC000000000000000;
  v7 = [objc_allocWithZone(type metadata accessor for ArtworkView(0)) initWithFrame_];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  if (_UISolariumEnabled())
  {
    v8 = 16.0;
  }

  else
  {
    v8 = 2.0;
  }

  v9 = (v0 + OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_artworkView);
  v10 = [v7 layer];
  [v10 setCornerRadius_];

  [v7 setClipsToBounds_];
  *v9 = v7;
  v9[1] = &off_2822B63E8;
  v11 = OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_titleLabel;
  v12 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v12 &selRef_count + 2];
  [v12 setAdjustsFontForContentSizeCategory_];
  v43 = objc_opt_self();
  v13 = [v43 preferredFontForTextStyle_];
  [v12 setFont_];

  [v12 setAllowsDefaultTighteningForTruncation_];
  v44 = objc_opt_self();
  v14 = [v44 whiteColor];
  [v12 setTextColor_];

  LODWORD(v15) = 1132068864;
  [v12 setContentCompressionResistancePriority:0 forAxis:v15];
  LODWORD(v16) = 1148846080;
  [v12 setContentCompressionResistancePriority:1 forAxis:v16];

  *(v0 + v11) = v12;
  v17 = OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_subtitleLabel;
  v18 = [objc_allocWithZone(MEMORY[0x277D756B8]) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  [v18 setAdjustsFontForContentSizeCategory_];
  v19 = *MEMORY[0x277D76968];
  v20 = [v43 preferredFontForTextStyle_];
  [v18 setFont_];

  [v18 setAllowsDefaultTighteningForTruncation_];
  v21 = [v44 systemGrayColor];
  [v18 setTextColor_];

  LODWORD(v22) = 1132068864;
  [v18 setContentCompressionResistancePriority:0 forAxis:v22];
  LODWORD(v23) = 1148846080;
  [v18 setContentCompressionResistancePriority:1 forAxis:v23];

  *(v0 + v17) = v18;
  v45 = OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_explicitIconLabel;
  v24 = [objc_allocWithZone(MEMORY[0x277D756B8]) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  [v24 setAdjustsFontForContentSizeCategory_];
  v25 = *MEMORY[0x277D74410];
  v26 = [objc_opt_self() preferredFontDescriptorWithTextStyle:v19 compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0, &unk_20C159850);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v28 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970, &unk_20C1500C0);
  v29 = swift_initStackObject();
  *(v29 + 16) = xmmword_20C14F980;
  v30 = *MEMORY[0x277D74430];
  *(v29 + 32) = *MEMORY[0x277D74430];
  *(v29 + 40) = v25;
  v31 = v28;
  v32 = v30;
  v33 = sub_20B6B134C(v29);

  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980, &qword_20C1500D0);
  *(inited + 40) = v33;
  sub_20B6B143C(inited);

  type metadata accessor for AttributeName(0);
  sub_20B5E5BD0();
  v34 = sub_20C13C744();

  v35 = [v26 fontDescriptorByAddingAttributes_];

  v36 = [v43 fontWithDescriptor:v35 size:0.0];
  [v24 setFont_];

  [v24 setAllowsDefaultTighteningForTruncation_];
  v37 = [v44 secondaryLabelColor];
  [v24 setTextColor_];

  LODWORD(v38) = 1144750080;
  [v24 &selRef:0 setBackgroundColor:v38 + 6];
  LODWORD(v39) = 1148846080;
  [v24 &selRef:1 setBackgroundColor:v39 + 6];

  *(v0 + v45) = v24;
  v40 = OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_separator;
  v41 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v41 setTranslatesAutoresizingMaskIntoConstraints_];
  v42 = [v44 separatorColor];
  [v41 setBackgroundColor_];

  *(v0 + v40) = v41;
  sub_20C13DE24();
  __break(1u);
}

double sub_20B90C090(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20B90C6DC(v2, v3, v4, v5);
  }

  return result;
}

void sub_20B90C118(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  MEMORY[0x28223BE20](v6 - 8);
  v39 = &v38 - v7;
  v8 = a1 + 56;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 56);
  v12 = (v9 + 63) >> 6;
  v40 = a2 & 1;
  v41 = a1;

  v13 = 0;
  while (v11)
  {
LABEL_11:
    v17 = (*(v41 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v11)))));
    v19 = *v17;
    v18 = v17[1];
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = *(v3 + 128);
    v21 = v42;
    *(v3 + 128) = 0x8000000000000000;
    v22 = sub_20B65AA60(v19, v18);
    v24 = v21[2];
    v25 = (v23 & 1) == 0;
    v26 = __OFADD__(v24, v25);
    v27 = v24 + v25;
    if (v26)
    {
      goto LABEL_23;
    }

    v28 = v23;
    if (v21[3] < v27)
    {
      sub_20BA09650(v27, isUniquelyReferenced_nonNull_native);
      v22 = sub_20B65AA60(v19, v18);
      if ((v28 & 1) != (v29 & 1))
      {
        goto LABEL_25;
      }

LABEL_16:
      if (v28)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v33 = v22;
    sub_20BA0FD80();
    v22 = v33;
    if (v28)
    {
LABEL_4:
      v14 = v22;

      v15 = v42;
      *(v42[7] + v14) = v40;
      goto LABEL_5;
    }

LABEL_17:
    v15 = v42;
    v42[(v22 >> 6) + 8] |= 1 << v22;
    v30 = (v15[6] + 16 * v22);
    *v30 = v19;
    v30[1] = v18;
    *(v15[7] + v22) = v40;
    v31 = v15[2];
    v26 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (v26)
    {
      goto LABEL_24;
    }

    v15[2] = v32;
LABEL_5:
    v11 &= v11 - 1;
    *(v3 + 128) = v15;
    swift_endAccess();
  }

  while (1)
  {
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v16 >= v12)
    {
      v34 = v41;

      v35 = sub_20C13CDF4();
      v36 = v39;
      (*(*(v35 - 8) + 56))(v39, 1, 1, v35);
      v37 = swift_allocObject();
      v37[2] = 0;
      v37[3] = 0;
      v37[4] = v3;
      v37[5] = v34;

      sub_20B6383D0(0, 0, v36, &unk_20C162538, v37);

      return;
    }

    v11 = *(v8 + 8 * v16);
    ++v13;
    if (v11)
    {
      v13 = v16;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  sub_20C13E054();
  __break(1u);
}

uint64_t sub_20B90C448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_20B90C468, 0, 0);
}

uint64_t sub_20B90C468()
{
  __swift_project_boxed_opaque_existential_1((v0[2] + 80), *(v0[2] + 104));
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_20B772B0C;
  v2 = v0[3];

  return sub_20C0A07BC(v2, 1);
}

uint64_t sub_20B90C514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_20B90C538, 0, 0);
}

uint64_t sub_20B90C538()
{
  __swift_project_boxed_opaque_existential_1((v0[2] + 80), *(v0[2] + 104));
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_20B90C5E8;
  v3 = v0[3];
  v2 = v0[4];

  return sub_20C0A1328(v3, v2, 0, 3);
}

uint64_t sub_20B90C5E8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_20B90C6DC(uint64_t a1, unint64_t a2, void *a3, int a4)
{
  v5 = v4;
  LODWORD(v66) = a4;
  v65 = a3;
  v8 = sub_20C13BB84();
  v67 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v61 - v12;
  v14 = sub_20C13C554();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = (&v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v17 = sub_20C13D374();
  (*(v15 + 104))(v17, *MEMORY[0x277D85200], v14);
  v18 = sub_20C13C584();
  (*(v15 + 8))(v17, v14);
  if (v18)
  {
    swift_beginAccess();
    v19 = v5[16];
    if (*(v19 + 16))
    {

      v20 = sub_20B65AA60(a1, a2);
      if ((v21 & 1) == 0)
      {

        return;
      }

      v63 = *(*(v19 + 56) + v20);

      swift_beginAccess();
      v22 = v5[15];
      if (*(v22 + 16))
      {

        v23 = sub_20B65AA60(a1, a2);
        if (v24)
        {
          v25 = *(v22 + 56) + 16 * v23;
          v26 = *v25;
          v62 = *(v25 + 8);
          v27 = v26;
        }

        else
        {
          v26 = 0;
          v62 = 0;
        }
      }

      else
      {
        v26 = 0;
        v62 = 0;
      }

      sub_20C13B424();

      v28 = sub_20C13BB74();
      v29 = sub_20C13D1F4();

      v30 = os_log_type_enabled(v28, v29);
      v64 = a1;
      if (v30)
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v33 = a1;
        v34 = v26;
        v35 = v32;
        aBlock = v32;
        *v31 = 141558274;
        *(v31 + 4) = 1752392040;
        *(v31 + 12) = 2080;
        *(v31 + 14) = sub_20B51E694(v33, a2, &aBlock);
        _os_log_impl(&dword_20B517000, v28, v29, "[UM] Placement for %{mask.hash}s", v31, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v35);
        v36 = v35;
        v26 = v34;
        MEMORY[0x20F2F6A40](v36, -1, -1);
        MEMORY[0x20F2F6A40](v31, -1, -1);
      }

      v37 = *(v67 + 8);
      v37(v13, v8);
      if (v66 == 1)
      {
        v38 = v65;
        v39 = v65;
        v40 = [v39 style];
        v41 = v64;
        if (v40 == 4 || [v39 style] == 8)
        {
          v42 = [objc_allocWithZone(MEMORY[0x277CEE8A0]) initWithRequest_];
          v43 = [v42 loadPromise];
          v44 = swift_allocObject();
          swift_weakInit();
          v45 = swift_allocObject();
          *(v45 + 16) = v41;
          *(v45 + 24) = a2;
          *(v45 + 32) = v44;
          *(v45 + 40) = v42;
          *(v45 + 48) = v63;
          v46 = v62;
          *(v45 + 56) = v26;
          *(v45 + 64) = v46;
          v72 = sub_20B90DF38;
          v73 = v45;
          aBlock = MEMORY[0x277D85DD0];
          v69 = 1107296256;
          v70 = sub_20B7B548C;
          v71 = &block_descriptor_48;
          v47 = _Block_copy(&aBlock);
          v48 = v26;

          v49 = v42;

          [v43 addSuccessBlock_];
          _Block_release(v47);
          v50 = swift_allocObject();
          *(v50 + 16) = v41;
          *(v50 + 24) = a2;
          v72 = sub_20B90DF50;
          v73 = v50;
          aBlock = MEMORY[0x277D85DD0];
          v69 = 1107296256;
          v70 = sub_20B90D6B8;
          v71 = &block_descriptor_37_0;
          v51 = _Block_copy(&aBlock);

          [v43 addErrorBlock_];

          _Block_release(v51);
          sub_20B8E0828(v38, 1u);
          return;
        }

        sub_20B8E0828(v38, 1u);
      }

      else
      {
        sub_20C13B424();

        v52 = sub_20C13BB74();
        v53 = sub_20C13D1F4();

        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v66 = v26;
          v56 = v55;
          aBlock = v55;
          *v54 = 141558274;
          *(v54 + 4) = 1752392040;
          *(v54 + 12) = 2080;
          v57 = v64;
          *(v54 + 14) = sub_20B51E694(v64, a2, &aBlock);
          _os_log_impl(&dword_20B517000, v52, v53, "[UM] Removing placement content for %{mask.hash}s)", v54, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v56);
          v58 = v56;
          v26 = v66;
          MEMORY[0x20F2F6A40](v58, -1, -1);
          MEMORY[0x20F2F6A40](v54, -1, -1);

          v37(v10, v8);
        }

        else
        {

          v37(v10, v8);
          v57 = v64;
        }

        swift_beginAccess();

        sub_20C0C0A08(0, 0, v57, a2);
        swift_endAccess();
        v59 = v5[17];
        if (v59)
        {
          v60 = v5[18];

          v59(v57, a2, v63, v26, v62, 0, 0);

          sub_20B583ECC(v59, v60);

          return;
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_20B90CE98(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, int a5, void *a6, uint64_t a7)
{
  v41 = a7;
  v42 = a6;
  v40 = a5;
  v43 = a3;
  v47 = a1;
  v9 = sub_20C13C4B4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v46 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C13C4F4();
  v44 = *(v12 - 8);
  v45 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20C13BB84();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B424();

  v19 = sub_20C13BB74();
  v20 = sub_20C13D1F4();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v38 = a4;
    v22 = v21;
    v23 = swift_slowAlloc();
    v39 = v10;
    v24 = v9;
    v25 = v23;
    aBlock[0] = v23;
    *v22 = 141558274;
    *(v22 + 4) = 1752392040;
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_20B51E694(v47, a2, aBlock);
    _os_log_impl(&dword_20B517000, v19, v20, "[UM] Successfully fetched assets for placement %{mask.hash}s", v22, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v25);
    v26 = v25;
    v9 = v24;
    v10 = v39;
    MEMORY[0x20F2F6A40](v26, -1, -1);
    v27 = v22;
    a4 = v38;
    MEMORY[0x20F2F6A40](v27, -1, -1);
  }

  (*(v16 + 8))(v18, v15);
  sub_20B5E2E18();
  v28 = sub_20C13D374();
  v29 = swift_allocObject();
  v30 = v42;
  v31 = v47;
  *(v29 + 16) = v43;
  *(v29 + 24) = v31;
  *(v29 + 32) = a2;
  *(v29 + 40) = a4;
  *(v29 + 48) = v40 & 1;
  v32 = v41;
  *(v29 + 56) = v30;
  *(v29 + 64) = v32;
  aBlock[4] = sub_20B90DF58;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_43;
  v33 = _Block_copy(aBlock);
  v34 = v30;

  v35 = a4;

  sub_20C13C4D4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_20B5267DC(&qword_281103AB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280, &qword_20C15A2D0);
  sub_20B682EA8();
  v36 = v46;
  sub_20C13DA94();
  MEMORY[0x20F2F4AF0](0, v14, v36, v33);
  _Block_release(v33);

  (*(v10 + 8))(v36, v9);
  return (*(v44 + 8))(v14, v45);
}

void sub_20B90D320(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    swift_beginAccess();

    v15 = a4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v14 + 120);
    *(v14 + 120) = 0x8000000000000000;
    sub_20B90DF8C(v15, a2, a3, isUniquelyReferenced_nonNull_native, &v20);

    *(v14 + 120) = v20;
    swift_endAccess();
  }

  swift_beginAccess();
  v17 = swift_weakLoadStrong();
  if (v17)
  {
    v18 = *(v17 + 136);
    v19 = *(v17 + 144);
    sub_20B584050(v18, v19);

    if (v18)
    {
      v18(a2, a3, a5 & 1, a6, a7, a4, &off_2822A4C78);
      sub_20B583ECC(v18, v19);
    }
  }
}

uint64_t sub_20B90D490(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B424();

  v10 = a1;
  v11 = sub_20C13BB74();
  v12 = sub_20C13D1D4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = a2;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 141558530;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_20B51E694(v13, a3, &v21);
    *(v14 + 22) = 2082;
    swift_getErrorValue();
    v16 = MEMORY[0x20F2F5850](v20[2], v20[3]);
    v18 = sub_20B51E694(v16, v17, &v21);

    *(v14 + 24) = v18;
    _os_log_impl(&dword_20B517000, v11, v12, "[UM] Error fetching assets for placement %{mask.hash}s): %{public}s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F2F6A40](v15, -1, -1);
    MEMORY[0x20F2F6A40](v14, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

void sub_20B90D6B8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_20B90D720(uint64_t a1)
{
  v53 = a1;
  v2 = sub_20C1391E4();
  v3 = *(v2 - 8);
  v57 = v2;
  v58 = v3;
  MEMORY[0x28223BE20](v2);
  v56 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C134C44();
  MEMORY[0x28223BE20](v5 - 8);
  v55 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C70, &unk_20C153C40);
  MEMORY[0x28223BE20](v7 - 8);
  v54 = &v45 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7678F0, &unk_20C157210);
  MEMORY[0x28223BE20](v9 - 8);
  v52 = &v45 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C80, &unk_20C153C50);
  MEMORY[0x28223BE20](v11 - 8);
  v49 = &v45 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767900, &unk_20C157220);
  MEMORY[0x28223BE20](v13 - 8);
  v45 = &v45 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C90, &unk_20C153C60);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v45 - v16;
  v18 = sub_20C135D24();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = (&v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = sub_20C134F74();
  v50 = *(v22 - 8);
  v51 = v22;
  MEMORY[0x28223BE20](v22);
  v48 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v47 = &v45 - v25;
  v26 = sub_20C132E94();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v1;
  __swift_project_boxed_opaque_existential_1((v1 + 40), *(v1 + 64));
  sub_20C132E64();
  v30 = sub_20C139204();
  (*(v27 + 8))(v29, v26);
  *v21 = v30;
  (*(v19 + 104))(v21, *MEMORY[0x277D52100], v18);
  v31 = sub_20C1333A4();
  v32 = *(v31 - 8);
  (*(v32 + 16))(v17, v53, v31);
  (*(v32 + 56))(v17, 0, 1, v31);
  v33 = sub_20C135664();
  (*(*(v33 - 8) + 56))(v45, 1, 1, v33);
  v34 = sub_20C135674();
  (*(*(v34 - 8) + 56))(v49, 1, 1, v34);
  v35 = v52;
  sub_20C134F94();
  v36 = sub_20C134FB4();
  (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766CA0, &qword_20C157230);
  (*(*(v37 - 8) + 56))(v54, 1, 1, v37);
  v38 = sub_20C135F14();
  (*(*(v38 - 8) + 56))(v55, 1, 1, v38);
  v39 = v47;
  sub_20C134F54();
  v41 = v50;
  v40 = v51;
  (*(v50 + 16))(v48, v39, v51);
  v42 = v56;
  sub_20C1391F4();
  swift_getObjectType();
  sub_20B5267DC(&qword_281103B30, MEMORY[0x277D542C0], MEMORY[0x277D542B8]);
  v43 = v57;
  sub_20C13A764();
  (*(v58 + 8))(v42, v43);
  return (*(v41 + 8))(v39, v40);
}

uint64_t sub_20B90DEA0()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  __swift_destroy_boxed_opaque_existential_1(v0 + 10);

  sub_20B583ECC(v0[17], v0[18]);

  return swift_deallocClassInstance();
}

void sub_20B90DF8C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = *a5;
  v11 = sub_20B65AA60(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_20BA0B4FC(v16, a4 & 1);
      v11 = sub_20B65AA60(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_20C13E054();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_20BA10EA0();
      v11 = v19;
    }
  }

  v21 = *a5;
  if (v17)
  {
    v22 = v21[7] + 16 * v11;
    v23 = *v22;
    *v22 = a1;
    *(v22 + 8) = &off_2822A4C78;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = (v21[7] + 16 * v11);
  *v25 = a1;
  v25[1] = &off_2822A4C78;
  v26 = v21[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v27;
}

uint64_t sub_20B90E120(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20B52A9D4;

  return sub_20B90C448(a1, v4, v5, v7, v6);
}

uint64_t type metadata accessor for WorkoutPlanScheduledItemUpdated(uint64_t a1)
{
  result = qword_27C767A88;
  if (!qword_27C767A88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20B90E264(uint64_t a1)
{
  result = type metadata accessor for WorkoutPlanScheduledItemUpdate(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_20B90E2DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629C0, qword_20C1510D0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_20C133244();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;
  swift_beginAccess();
  sub_20B52F9E8(v3 + v14, v9, &unk_27C7629C0, qword_20C1510D0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_20B520158(v9, &unk_27C7629C0, qword_20C1510D0);
    return (*(v11 + 56))(a3, 1, 1, v10);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    sub_20B90E778(v13, a1, a3);
    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_20B90E4D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629C0, qword_20C1510D0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  v12 = sub_20C133244();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a4 + 16))(a2, a4, v14);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_20B520158(v11, &unk_27C7629C0, qword_20C1510D0);
    return (*(v13 + 56))(a5, 1, 1, v12);
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    sub_20B90E9C4(v16, a1, a5);
    return (*(v13 + 8))(v16, v12);
  }
}

char *sub_20B90E778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
  v6 = [v5 numberOfSections];
  result = sub_20C133234();
  if (result >= v6)
  {
    goto LABEL_9;
  }

  v8 = [v5 numberOfItemsInSection_];
  if (sub_20C133224() >= v8)
  {
    result = sub_20C133234();
    if (v6 < result)
    {
      goto LABEL_24;
    }

    v14 = result;
    while (v6 != v14)
    {
      v15 = v14 + 1;
      result = [v5 numberOfItemsInSection_];
      v14 = v15;
      if (result > 0)
      {
        v16 = (v15 - 1);
        result = 0;
        goto LABEL_17;
      }
    }

LABEL_9:
    if ((v6 & 0x8000000000000000) == 0)
    {
      do
      {
        if (!v6)
        {
          v20 = sub_20C133244();
          v10 = *(*(v20 - 8) + 56);
          v13 = v20;
          v11 = a3;
          v12 = 1;
          goto LABEL_18;
        }

        --v6;
      }

      while ([v5 numberOfItemsInSection_] < 1);
      if (sub_20C133234() == v6)
      {
        v17 = [v5 numberOfItemsInSection_];
        v18 = __OFSUB__(v17, 1);
        result = v17 - 1;
        if (v18)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = 0;
      }

      v16 = v6;
LABEL_17:
      MEMORY[0x20F2EA980](result, v16, v14);
      v19 = sub_20C133244();
      v10 = *(*(v19 - 8) + 56);
      v13 = v19;
      v11 = a3;
      v12 = 0;
      goto LABEL_18;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    return result;
  }

  v9 = sub_20C133244();
  v21 = *(v9 - 8);
  (*(v21 + 16))(a3, a1, v9);
  v10 = *(v21 + 56);
  v11 = a3;
  v12 = 0;
  v13 = v9;
LABEL_18:

  return v10(v11, v12, 1, v13);
}

uint64_t sub_20B90E9C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
  v6 = [v5 numberOfSections];
  result = sub_20C133234();
  if (result >= v6)
  {
    goto LABEL_9;
  }

  v8 = [v5 numberOfItemsInSection_];
  if (sub_20C133224() >= v8)
  {
    result = sub_20C133234();
    if (v6 < result)
    {
      goto LABEL_24;
    }

    v14 = result;
    while (v6 != v14)
    {
      v15 = v14 + 1;
      result = [v5 numberOfItemsInSection_];
      v14 = v15;
      if (result >= 1)
      {
        v16 = v15 - 1;
        result = 0;
        goto LABEL_17;
      }
    }

LABEL_9:
    if ((v6 & 0x8000000000000000) == 0)
    {
      do
      {
        if (!v6)
        {
          v20 = sub_20C133244();
          v10 = *(*(v20 - 8) + 56);
          v13 = v20;
          v11 = a3;
          v12 = 1;
          goto LABEL_18;
        }

        --v6;
      }

      while ([v5 numberOfItemsInSection_] <= 0);
      if (sub_20C133234() == v6)
      {
        v17 = [v5 numberOfItemsInSection_];
        v18 = __OFSUB__(v17, 1);
        result = v17 - 1;
        if (v18)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = 0;
      }

      v16 = v6;
LABEL_17:
      MEMORY[0x20F2EA980](result, v16, v14);
      v19 = sub_20C133244();
      v10 = *(*(v19 - 8) + 56);
      v13 = v19;
      v11 = a3;
      v12 = 0;
      goto LABEL_18;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    return result;
  }

  v9 = sub_20C133244();
  v21 = *(v9 - 8);
  (*(v21 + 16))(a3, a1, v9);
  v10 = *(v21 + 56);
  v11 = a3;
  v12 = 0;
  v13 = v9;
LABEL_18:

  return v10(v11, v12, 1, v13);
}

double sub_20B90EC10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  v5 = swift_conformsToProtocol2();
  if (v5 && a3)
  {
    v7 = v5;
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    v9 = sub_20C133224();
    (*(v7 + 24))(a2, v9, ObjectType, v7);

    swift_unknownObjectRelease();
  }

  return result;
}

double sub_20B90ECDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  (*(a8 + 80))(a2, a6, a8, a4);
  swift_getObjectType();
  v10 = swift_conformsToProtocol2();
  if (v10 && a3)
  {
    v12 = v10;
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    v14 = sub_20C133224();
    (*(v12 + 24))(a2, v14, ObjectType, v12);

    swift_unknownObjectRelease();
  }

  return result;
}

void sub_20B90EEF0(uint64_t a1, void (*a2)(void, void, void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v63 = a4;
  *&v69 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AB0, &unk_20C1502A0);
  v65 = *(v10 - 8);
  v66 = v10;
  MEMORY[0x28223BE20](v10);
  v64 = v56 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629C0, qword_20C1510D0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v56 - v13;
  v71 = sub_20C133244();
  v15 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v62 = v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v56 - v18;
  v61 = v20;
  v22 = MEMORY[0x28223BE20](v21);
  v70 = v56 - v23;
  v24 = *(a5 + 48);
  v72 = a5;
  if (v24(a3, a5, v22))
  {
    (*(v72 + 72))(&v78, a3);
    v67 = a2;
    v68 = v15;
    __swift_project_boxed_opaque_existential_1(&v78, *(&v79 + 1));
    a2 = v67;
    v15 = v68;
    sub_20C13AE44();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&v78);
  }

  v25 = [a2 nextFocusedIndexPath];
  if (v25)
  {
    v26 = v25;
    sub_20C1331E4();

    v28 = v70;
    v27 = v71;
    v67 = *(v15 + 32);
    v67(v70, v19, v71);
    v60 = *(v15 + 16);
    v60(v14, v28, v27);
    (*(v15 + 56))(v14, 0, 1, v27);
    (*(v72 + 24))(v14, a3);
    v29 = [*(v69 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) dataSource];
    if (v29)
    {
      v30 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AA0, &unk_20C1502B0);
      if (swift_dynamicCastClass())
      {
        v58 = v30;
        v59 = v15 + 16;
        v56[3] = v15 + 32;
        v31 = v64;
        sub_20C13BFA4();
        v32 = v66;
        v33 = sub_20C13BE74();
        (*(v65 + 8))(v31, v32);
        v34 = sub_20C133234();
        if ((v34 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v34 < *(v33 + 16))
        {
          v35 = *(v33 + 24 * v34 + 32);

          if ((v35 & 0x8000000000000000) == 0)
          {
            v66 = v6;
            v68 = v15;
            v57 = a3;
            v36 = *(v69 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves);
            if (v35 < *(v36 + 16))
            {
              v69 = *(v36 + 16 * v35 + 32);
              v37 = v69;
              ObjectType = swift_getObjectType();
              v39 = *(&v69 + 1);
              v40 = *(*(&v69 + 1) + 40);
              swift_unknownObjectRetain();
              v40(v76, ObjectType, v39);
              v86 = v76[8];
              v87 = v76[9];
              v88 = v77;
              v82 = v76[4];
              v83 = v76[5];
              v84 = v76[6];
              v85 = v76[7];
              v78 = v76[0];
              v79 = v76[1];
              v80 = v76[2];
              v81 = v76[3];
              if (sub_20B5EAF8C(&v78) == 1)
              {
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                (*(v68 + 8))(v70, v71);
                return;
              }

              v65 = v37;
              v41 = *(&v84 + 1);
              v89[0] = *(&v84 + 1);
              sub_20B52F9E8(v89, v73, &qword_27C763188, &unk_20C1538A0);
              sub_20B520158(v76, &qword_27C762340, &unk_20C150290);
              v42 = v70;
              v43 = sub_20C133224();
              if ((v43 & 0x8000000000000000) == 0)
              {
                v44 = v57;
                v45 = v66;
                if (v43 < *(v41 + 16))
                {
                  v56[0] = *(v41 + 8 * v43 + 32);

                  sub_20B520158(v89, &qword_27C763188, &unk_20C1538A0);
                  v46 = v72;
                  (*(v72 + 72))(v73, v44, v72);
                  v56[2] = v74;
                  v64 = v75;
                  v56[1] = __swift_project_boxed_opaque_existential_1(v73, v74);
                  (*(v46 + 40))(v44, v46);
                  sub_20B5E2E18();
                  v47 = sub_20C13D374();
                  v48 = v62;
                  v49 = v71;
                  v60(v62, v42, v71);
                  v50 = v68;
                  v51 = (*(v68 + 80) + 72) & ~*(v68 + 80);
                  v52 = swift_allocObject();
                  v53 = v63;
                  *(v52 + 16) = v44;
                  *(v52 + 24) = v53;
                  *(v52 + 32) = v46;
                  *(v52 + 40) = v45;
                  *(v52 + 48) = v56[0];
                  *(v52 + 56) = v69;
                  v67(v52 + v51, v48, v49);
                  swift_unknownObjectRetain();

                  v54 = v45;
                  v55 = sub_20C13AE34();

                  (*(v46 + 56))(v55, v57, v46);

                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  (*(v50 + 8))(v70, v49);
                  __swift_destroy_boxed_opaque_existential_1(v73);
                  return;
                }

LABEL_23:
                __break(1u);
                return;
              }

LABEL_22:
              __break(1u);
              goto LABEL_23;
            }

LABEL_21:
            __break(1u);
            goto LABEL_22;
          }

LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

        __break(1u);
        goto LABEL_20;
      }

      swift_unknownObjectRelease();
    }

    (*(v15 + 8))(v28, v71);
  }
}

double sub_20B90F698()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(sub_20C133244() - 8);
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = v0 + ((*(v4 + 80) + 72) & ~*(v4 + 80));

  return sub_20B90ECDC(v5, v6, v7, v8, v9, v1, v2, v3);
}

void sub_20B90F724(uint64_t a1, void *a2)
{
  v3 = v2;
  *&v59 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AB0, &unk_20C1502A0);
  v56 = *(v5 - 8);
  v57 = v5;
  MEMORY[0x28223BE20](v5);
  v55 = &v45 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629C0, qword_20C1510D0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v45 - v8;
  v10 = sub_20C133244();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v52 = v12;
  v53 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v16 = &v45 - v14;
  v54 = OBJC_IVAR____TtC9SeymourUI39TVWorkoutPlanAlternativesViewController_settlingTimer;
  if (*&v2[OBJC_IVAR____TtC9SeymourUI39TVWorkoutPlanAlternativesViewController_settlingTimer])
  {
    v58 = &v45 - v14;
    __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC9SeymourUI39TVWorkoutPlanAlternativesViewController_timerProvider], *&v2[OBJC_IVAR____TtC9SeymourUI39TVWorkoutPlanAlternativesViewController_timerProvider + 24]);
    swift_unknownObjectRetain();
    v3 = v2;
    v16 = v58;
    sub_20C13AE44();
    swift_unknownObjectRelease();
  }

  v17 = [a2 nextFocusedIndexPath];
  if (v17)
  {
    v18 = v17;
    sub_20C1331E4();

    v19 = *(v11 + 16);
    v19(v9, v16, v10);
    (*(v11 + 56))(v9, 0, 1, v10);
    v20 = OBJC_IVAR____TtC9SeymourUI39TVWorkoutPlanAlternativesViewController_lastFocusedIndexPath;
    swift_beginAccess();
    sub_20B59784C(v9, &v3[v20]);
    swift_endAccess();
    v21 = [*(v59 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) dataSource];
    if (v21)
    {
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AA0, &unk_20C1502B0);
      if (swift_dynamicCastClass())
      {
        v50 = v11 + 16;
        v51 = v22;
        v23 = v55;
        sub_20C13BFA4();
        v24 = v57;
        v25 = sub_20C13BE74();
        v56[1](v23, v24);
        v26 = sub_20C133234();
        if ((v26 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v26 < *(v25 + 16))
        {
          v27 = *(v25 + 24 * v26 + 32);

          if ((v27 & 0x8000000000000000) == 0)
          {
            v55 = v19;
            v56 = v3;
            v57 = v10;
            v58 = v16;
            v28 = *(v59 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves);
            if (v27 < *(v28 + 16))
            {
              v59 = *(v28 + 16 * v27 + 32);
              ObjectType = swift_getObjectType();
              v30 = *(&v59 + 1);
              v31 = *(*(&v59 + 1) + 40);
              swift_unknownObjectRetain();
              v31(v61, ObjectType, v30);
              v66 = v61[8];
              v67 = v61[9];
              v68 = v62;
              v63[4] = v61[4];
              v63[5] = v61[5];
              v64 = v61[6];
              v65 = v61[7];
              v63[0] = v61[0];
              v63[1] = v61[1];
              v63[2] = v61[2];
              v63[3] = v61[3];
              if (sub_20B5EAF8C(v63) == 1)
              {
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                (*(v11 + 8))(v58, v57);
                return;
              }

              v32 = *(&v64 + 1);
              v69[0] = *(&v64 + 1);
              sub_20B52F9E8(v69, &v60, &qword_27C763188, &unk_20C1538A0);
              sub_20B520158(v61, &qword_27C762340, &unk_20C150290);
              v33 = sub_20C133224();
              if ((v33 & 0x8000000000000000) == 0)
              {
                if (v33 < *(v32 + 16))
                {
                  v34 = *(v32 + 8 * v33 + 32);

                  sub_20B520158(v69, &qword_27C763188, &unk_20C1538A0);
                  v35 = v56;
                  v36 = *(v56 + OBJC_IVAR____TtC9SeymourUI39TVWorkoutPlanAlternativesViewController_timerProvider + 32);
                  v48 = *(v56 + OBJC_IVAR____TtC9SeymourUI39TVWorkoutPlanAlternativesViewController_timerProvider + 24);
                  v49 = v36;
                  v47 = __swift_project_boxed_opaque_existential_1((v56 + OBJC_IVAR____TtC9SeymourUI39TVWorkoutPlanAlternativesViewController_timerProvider), v48);
                  sub_20B5E2E18();
                  v46 = sub_20C13D374();
                  v37 = v53;
                  v39 = v57;
                  v38 = v58;
                  (v55)(v53, v58, v57);
                  v40 = (*(v11 + 80) + 48) & ~*(v11 + 80);
                  v41 = swift_allocObject();
                  *(v41 + 16) = v35;
                  *(v41 + 24) = v34;
                  *(v41 + 32) = v59;
                  (*(v11 + 32))(v41 + v40, v37, v39);
                  swift_unknownObjectRetain();

                  v42 = v35;
                  v43 = v46;
                  v44 = sub_20C13AE34();

                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();

                  (*(v11 + 8))(v38, v39);
                  *(v35 + v54) = v44;
                  swift_unknownObjectRelease();
                  return;
                }

                goto LABEL_23;
              }

LABEL_22:
              __break(1u);
LABEL_23:
              __break(1u);
              return;
            }

LABEL_21:
            __break(1u);
            goto LABEL_22;
          }

LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

        __break(1u);
        goto LABEL_20;
      }

      swift_unknownObjectRelease();
    }

    (*(v11 + 8))(v16, v10);
  }
}

void sub_20B90FDB4(uint64_t a1, void *a2)
{
  v3 = v2;
  *&v59 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AB0, &unk_20C1502A0);
  v56 = *(v5 - 8);
  v57 = v5;
  MEMORY[0x28223BE20](v5);
  v55 = &v45 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629C0, qword_20C1510D0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v45 - v8;
  v10 = sub_20C133244();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v52 = v12;
  v53 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v16 = &v45 - v14;
  v54 = OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_settlingTimer;
  if (*&v2[OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_settlingTimer])
  {
    v58 = &v45 - v14;
    __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_timerProvider], *&v2[OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_timerProvider + 24]);
    swift_unknownObjectRetain();
    v3 = v2;
    v16 = v58;
    sub_20C13AE44();
    swift_unknownObjectRelease();
  }

  v17 = [a2 nextFocusedIndexPath];
  if (v17)
  {
    v18 = v17;
    sub_20C1331E4();

    v19 = *(v11 + 16);
    v19(v9, v16, v10);
    (*(v11 + 56))(v9, 0, 1, v10);
    v20 = OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_lastFocusedIndexPath;
    swift_beginAccess();
    sub_20B59784C(v9, &v3[v20]);
    swift_endAccess();
    v21 = [*(v59 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) dataSource];
    if (v21)
    {
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AA0, &unk_20C1502B0);
      if (swift_dynamicCastClass())
      {
        v50 = v11 + 16;
        v51 = v22;
        v23 = v55;
        sub_20C13BFA4();
        v24 = v57;
        v25 = sub_20C13BE74();
        v56[1](v23, v24);
        v26 = sub_20C133234();
        if ((v26 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v26 < *(v25 + 16))
        {
          v27 = *(v25 + 24 * v26 + 32);

          if ((v27 & 0x8000000000000000) == 0)
          {
            v55 = v19;
            v56 = v3;
            v57 = v10;
            v58 = v16;
            v28 = *(v59 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves);
            if (v27 < *(v28 + 16))
            {
              v59 = *(v28 + 16 * v27 + 32);
              ObjectType = swift_getObjectType();
              v30 = *(&v59 + 1);
              v31 = *(*(&v59 + 1) + 40);
              swift_unknownObjectRetain();
              v31(v61, ObjectType, v30);
              v66 = v61[8];
              v67 = v61[9];
              v68 = v62;
              v63[4] = v61[4];
              v63[5] = v61[5];
              v64 = v61[6];
              v65 = v61[7];
              v63[0] = v61[0];
              v63[1] = v61[1];
              v63[2] = v61[2];
              v63[3] = v61[3];
              if (sub_20B5EAF8C(v63) == 1)
              {
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                (*(v11 + 8))(v58, v57);
                return;
              }

              v32 = *(&v64 + 1);
              v69[0] = *(&v64 + 1);
              sub_20B52F9E8(v69, &v60, &qword_27C763188, &unk_20C1538A0);
              sub_20B520158(v61, &qword_27C762340, &unk_20C150290);
              v33 = sub_20C133224();
              if ((v33 & 0x8000000000000000) == 0)
              {
                if (v33 < *(v32 + 16))
                {
                  v34 = *(v32 + 8 * v33 + 32);

                  sub_20B520158(v69, &qword_27C763188, &unk_20C1538A0);
                  v35 = v56;
                  v36 = *(v56 + OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_timerProvider + 32);
                  v48 = *(v56 + OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_timerProvider + 24);
                  v49 = v36;
                  v47 = __swift_project_boxed_opaque_existential_1((v56 + OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_timerProvider), v48);
                  sub_20B5E2E18();
                  v46 = sub_20C13D374();
                  v37 = v53;
                  v39 = v57;
                  v38 = v58;
                  (v55)(v53, v58, v57);
                  v40 = (*(v11 + 80) + 48) & ~*(v11 + 80);
                  v41 = swift_allocObject();
                  *(v41 + 16) = v35;
                  *(v41 + 24) = v34;
                  *(v41 + 32) = v59;
                  (*(v11 + 32))(v41 + v40, v37, v39);
                  swift_unknownObjectRetain();

                  v42 = v35;
                  v43 = v46;
                  v44 = sub_20C13AE34();

                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();

                  (*(v11 + 8))(v38, v39);
                  *(v35 + v54) = v44;
                  swift_unknownObjectRelease();
                  return;
                }

                goto LABEL_23;
              }

LABEL_22:
              __break(1u);
LABEL_23:
              __break(1u);
              return;
            }

LABEL_21:
            __break(1u);
            goto LABEL_22;
          }

LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

        __break(1u);
        goto LABEL_20;
      }

      swift_unknownObjectRelease();
    }

    (*(v11 + 8))(v16, v10);
  }
}

uint64_t objectdestroy_2Tm_1()
{
  v1 = sub_20C133244();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_20B9105A8()
{
  v1 = sub_20C13C554();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = swift_allocObject();
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_title + 8);
  *(v5 + 16) = *(v0 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_title);
  *(v5 + 24) = v6;
  v7 = v5 | 0x3000000000000001;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90, &unk_20C14FD30);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_20C14F980;
  *(v8 + 32) = v7;
  v30 = 0uLL;
  LOBYTE(v31) = 1;
  *(&v31 + 1) = 0;
  *&v32 = 0;
  WORD4(v32) = 128;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  LOBYTE(v36) = 0;
  *(&v36 + 1) = v8;
  *&v37[0] = MEMORY[0x277D84F90];
  *(v37 + 8) = 0u;
  *(&v37[1] + 8) = 0u;
  *(&v37[2] + 1) = 0;
  v38 = 2;
  nullsub_1();
  v9 = v0 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row + 144);
  v39[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row + 128);
  v39[9] = v10;
  v40 = *(v0 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row + 160);
  v11 = *(v0 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row + 80);
  v39[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row + 64);
  v39[5] = v11;
  v12 = *(v0 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row + 112);
  v39[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row + 96);
  v39[7] = v12;
  v13 = *(v0 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row + 16);
  v39[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row);
  v39[1] = v13;
  v14 = *(v0 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row + 48);
  v39[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row + 32);
  v39[3] = v14;
  v15 = v37[2];
  *(v9 + 128) = v37[1];
  *(v9 + 144) = v15;
  *(v9 + 160) = v38;
  v16 = v35;
  *(v9 + 64) = v34;
  *(v9 + 80) = v16;
  v17 = v37[0];
  *(v9 + 96) = v36;
  *(v9 + 112) = v17;
  v18 = v31;
  *v9 = v30;
  *(v9 + 16) = v18;
  v19 = v33;
  *(v9 + 32) = v32;
  *(v9 + 48) = v19;

  sub_20B634408(v39);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    return;
  }

  v21 = Strong;
  if (!*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
  {
    sub_20B61CF88(v0, Strong);
    if (v23)
    {
      v25 = v22;
      v26 = v23;
      v27 = v24;
      v29 = v0;
      sub_20B5E2E18();
      *v4 = sub_20C13D374();
      (*(v2 + 104))(v4, *MEMORY[0x277D85200], v1);
      v28 = sub_20C13C584();
      (*(v2 + 8))(v4, v1);
      if ((v28 & 1) == 0)
      {
        __break(1u);
        return;
      }

      sub_20B620584(v25, v26, v27, v29, 0, v21);
    }

    else
    {
      sub_20C0C2D50(0);
    }
  }

  swift_unknownObjectRelease();
}

uint64_t sub_20B9108BC()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row + 32);
  v9[3] = v7;
  sub_20B634408(v9);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TVLibraryGalleryHeaderShelf(uint64_t a1)
{
  result = qword_27C767A98;
  if (!qword_27C767A98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20B910A08(uint64_t a1)
{
  result = sub_20C132EE4();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_20B910AB8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20B910B30@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI27TVLibraryGalleryHeaderShelf_row + 32);
  v17 = v7;
  sub_20B5EAED4(&v14, v13);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

char *sub_20B910BE0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC9SeymourUI21TVShelfLargeTitleView_indexPath;
  v11 = sub_20C133244();
  (*(*(v11 - 8) + 56))(&v5[v10], 1, 1, v11);
  *&v5[OBJC_IVAR____TtC9SeymourUI21TVShelfLargeTitleView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v12 = &v5[OBJC_IVAR____TtC9SeymourUI21TVShelfLargeTitleView_shelf];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = OBJC_IVAR____TtC9SeymourUI21TVShelfLargeTitleView_titleLabel;
  v14 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v14 setLineBreakMode_];
  [v14 setNumberOfLines_];
  v15 = objc_opt_self();
  v16 = [v15 preferredFontForTextStyle_];
  [v16 pointSize];
  v18 = v17;

  v19 = [v15 systemFontOfSize:v18 weight:*MEMORY[0x277D743F8]];
  [v14 setFont_];

  [v14 setAllowsDefaultTighteningForTruncation_];
  v20 = sub_20BD518BC();

  v21 = v20;
  [v21 setAlpha_];
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];

  [v21 setAdjustsFontForContentSizeCategory_];
  *&v5[v13] = v21;
  v22 = OBJC_IVAR____TtC9SeymourUI21TVShelfLargeTitleView_subtitleLabel;
  v23 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v23 setLineBreakMode_];
  [v23 setNumberOfLines_];
  v24 = [v15 preferredFontForTextStyle_];
  [v23 setFont_];

  [v23 setAllowsDefaultTighteningForTruncation_];
  v25 = sub_20BD518BC();

  v26 = v25;
  [v26 setAlpha_];
  [v26 setTranslatesAutoresizingMaskIntoConstraints_];

  [v26 setAdjustsFontForContentSizeCategory_];
  *&v5[v22] = v26;
  v27 = OBJC_IVAR____TtC9SeymourUI21TVShelfLargeTitleView_textStackView;
  v28 = [objc_allocWithZone(MEMORY[0x277D75A68]) initWithFrame_];
  [v28 setDistribution_];
  [v28 setAxis_];
  [v28 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[v27] = v28;
  v49.receiver = v5;
  v49.super_class = type metadata accessor for TVShelfLargeTitleView(0);
  v29 = objc_msgSendSuper2(&v49, sel_initWithFrame_, a1, a2, a3, a4);
  v30 = OBJC_IVAR____TtC9SeymourUI21TVShelfLargeTitleView_textStackView;
  v31 = *&v29[OBJC_IVAR____TtC9SeymourUI21TVShelfLargeTitleView_textStackView];
  v32 = v29;
  [v32 addSubview_];
  [*&v29[v30] addArrangedSubview_];
  [*&v29[v30] addArrangedSubview_];
  v33 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_20C14FE90;
  v35 = [*&v29[v30] topAnchor];
  v36 = [v32 topAnchor];
  v37 = [v35 constraintEqualToAnchor_];

  *(v34 + 32) = v37;
  v38 = [*&v29[v30] leadingAnchor];
  v39 = [v32 leadingAnchor];

  v40 = [v38 constraintEqualToAnchor_];
  *(v34 + 40) = v40;
  v41 = [*&v29[v30] trailingAnchor];
  v42 = [v32 trailingAnchor];

  v43 = [v41 constraintEqualToAnchor_];
  *(v34 + 48) = v43;
  v44 = [*&v29[v30] bottomAnchor];
  v45 = [v32 bottomAnchor];

  v46 = [v44 constraintEqualToAnchor_];
  *(v34 + 56) = v46;
  sub_20B5E29D0();
  v47 = sub_20C13CC54();

  [v33 activateConstraints_];

  return v32;
}

void sub_20B91141C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + OBJC_IVAR____TtC9SeymourUI21TVShelfLargeTitleView_titleLabel);
  if (a2)
  {
    v7 = sub_20C13C914();
  }

  else
  {
    v7 = 0;
  }

  [v6 setText_];

  v8 = *(v4 + OBJC_IVAR____TtC9SeymourUI21TVShelfLargeTitleView_subtitleLabel);
  if (a4)
  {
    v9 = sub_20C13C914();
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  [v8 setText_];
}

id sub_20B9114FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVShelfLargeTitleView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TVShelfLargeTitleView(uint64_t a1)
{
  result = qword_27C767AA8;
  if (!qword_27C767AA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B911624(uint64_t a1)
{
  sub_20B595A38(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20B911708@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI21TVShelfLargeTitleView_indexPath;
  swift_beginAccess();
  return sub_20B800360(v1 + v3, a1);
}

double sub_20B911760(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI21TVShelfLargeTitleView_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

void sub_20B9117B0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9SeymourUI21TVShelfLargeTitleView_indexPath;
  v3 = sub_20C133244();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  *(v1 + OBJC_IVAR____TtC9SeymourUI21TVShelfLargeTitleView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v4 = (v1 + OBJC_IVAR____TtC9SeymourUI21TVShelfLargeTitleView_shelf);
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC9SeymourUI21TVShelfLargeTitleView_titleLabel;
  v6 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v6 setLineBreakMode_];
  [v6 setNumberOfLines_];
  v7 = objc_opt_self();
  v8 = [v7 preferredFontForTextStyle_];
  [v8 pointSize];
  v10 = v9;

  v11 = [v7 systemFontOfSize:v10 weight:*MEMORY[0x277D743F8]];
  [v6 setFont_];

  [v6 setAllowsDefaultTighteningForTruncation_];
  v12 = sub_20BD518BC();

  v13 = v12;
  [v13 setAlpha_];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];

  [v13 setAdjustsFontForContentSizeCategory_];
  *(v1 + v5) = v13;
  v14 = OBJC_IVAR____TtC9SeymourUI21TVShelfLargeTitleView_subtitleLabel;
  v15 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v15 setLineBreakMode_];
  [v15 setNumberOfLines_];
  v16 = [v7 preferredFontForTextStyle_];
  [v15 setFont_];

  [v15 setAllowsDefaultTighteningForTruncation_];
  v17 = sub_20BD518BC();

  v18 = v17;
  [v18 setAlpha_];
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];

  [v18 setAdjustsFontForContentSizeCategory_];
  *(v1 + v14) = v18;
  v19 = OBJC_IVAR____TtC9SeymourUI21TVShelfLargeTitleView_textStackView;
  v20 = [objc_allocWithZone(MEMORY[0x277D75A68]) initWithFrame_];
  [v20 setDistribution_];
  [v20 setAxis_];
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v19) = v20;
  sub_20C13DE24();
  __break(1u);
}

id sub_20B911B50(uint64_t *a1, void *a2)
{
  v4 = [objc_allocWithZone(type metadata accessor for TVShelfLargeTitleView(0)) initWithFrame_];
  sub_20B91141C(a1[17], a1[18], a1[15], a1[16]);
  [objc_msgSend(a2 container)];
  v6 = v5;
  swift_unknownObjectRelease();
  LODWORD(v7) = 1112014848;
  LODWORD(v8) = 1112014848;
  [v4 systemLayoutSizeFittingSize:v6 withHorizontalFittingPriority:COERCE_DOUBLE(1) verticalFittingPriority:{v7, v8}];
  v10 = v9;
  v12 = v11;
  v13 = objc_opt_self();
  v14 = [v13 estimatedDimension_];
  v15 = [v13 estimatedDimension_];
  v16 = [objc_opt_self() sizeWithWidthDimension:v14 heightDimension:v15];

  v17 = sub_20C13C914();
  v18 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v16 elementKind:v17 alignment:2 absoluteOffset:{0.0, -10.0}];

  return v18;
}

double sub_20B911D04(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtC9SeymourUI21TVShelfLargeTitleView_shelf);
  *v4 = a1;
  v4[1] = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();
  v6 = *(a2 + 40);
  v6(v12, ObjectType, a2);
  v22 = v12[8];
  v23 = v12[9];
  v24 = v13;
  v21[4] = v12[4];
  v21[5] = v12[5];
  v21[6] = v12[6];
  v21[7] = v12[7];
  v21[0] = v12[0];
  v21[1] = v12[1];
  v21[2] = v12[2];
  v21[3] = v12[3];
  if (sub_20B5EAF8C(v21) == 1)
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v7 = *(&v22 + 1);
    v8 = v23;

    sub_20B520158(v12, &qword_27C762340, &unk_20C150290);
  }

  v6(v14, ObjectType, a2);
  v18 = v14[8];
  v19 = v14[9];
  v20 = v15;
  v16[4] = v14[4];
  v16[5] = v14[5];
  v16[6] = v14[6];
  v17 = v14[7];
  v16[0] = v14[0];
  v16[1] = v14[1];
  v16[2] = v14[2];
  v16[3] = v14[3];
  if (sub_20B5EAF8C(v16) == 1)
  {
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v9 = *(&v17 + 1);
    v10 = v18;

    sub_20B520158(v14, &qword_27C762340, &unk_20C150290);
  }

  sub_20B91141C(v7, v8, v9, v10);

  return result;
}

double sub_20B911EC0@<D0>(uint64_t a1@<X8>)
{
  *&v78 = sub_20C137884();
  v76 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v3 = &v68 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for WorkoutPlanBannerContent(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767AE8, &unk_20C162838);
  MEMORY[0x28223BE20](v8 - 8);
  v72 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v68 - v11;
  v13 = sub_20C13BB84();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B454();
  sub_20C13BB64();
  (*(v14 + 8))(v16, v13);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767B00, &unk_20C15F3C0);
  v77 = swift_allocBox();
  v71 = v17;
  v18 = OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_content;
  sub_20B52F9E8(v79 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_content, v12, &qword_27C767AE8, &unk_20C162838);
  v19 = *(v5 + 48);
  v73 = v5 + 48;
  v74 = v4;
  v20 = v19(v12, 1, v4);
  v21 = &OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_rootModality;
  v69 = v7;
  v70 = v3;
  if (v20 == 1)
  {
    sub_20B520158(v12, &qword_27C767AE8, &unk_20C162838);
  }

  else
  {
    sub_20B914C60(v12, v7, type metadata accessor for WorkoutPlanBannerContent);
    v22 = v3;
    v23 = v18;
    v24 = v19;
    v25 = v76;
    v26 = v78;
    (*(v76 + 32))(v22, v7, v78);
    v27 = sub_20C137864();
    v29 = v28;
    v30 = v25;
    v19 = v24;
    v18 = v23;
    v31 = v26;
    v21 = &OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_rootModality;
    (*(v30 + 8))(v22, v31);
    sub_20B914CC8(v12, type metadata accessor for WorkoutPlanBannerContent);
    if (v29)
    {
      goto LABEL_5;
    }
  }

  v32 = *(v79 + v21[386]);
  v33 = v32[9];
  v34 = v32[10];
  __swift_project_boxed_opaque_existential_1(v32 + 6, v33);
  v27 = sub_20B5E107C(0xD000000000000018, 0x800000020C1A07C0, v33, v34);
  v29 = v35;

LABEL_5:
  v36 = v71;
  *v71 = v27;
  v36[1] = v29;
  v37 = v36;
  v38 = v79 + v18;
  v39 = v72;
  sub_20B52F9E8(v38, v72, &qword_27C767AE8, &unk_20C162838);
  v40 = v19(v39, 1, v74);
  v41 = v78;
  if (v40 == 1)
  {
    sub_20B520158(v39, &qword_27C767AE8, &unk_20C162838);
  }

  else
  {
    v42 = v69;
    sub_20B914C60(v39, v69, type metadata accessor for WorkoutPlanBannerContent);
    v43 = v76;
    v44 = v70;
    (*(v76 + 32))(v70, v42, v41);
    v45 = sub_20C137874();
    v46 = v41;
    v48 = v47;
    (*(v43 + 8))(v44, v46);
    sub_20B914CC8(v39, type metadata accessor for WorkoutPlanBannerContent);
    if (v48)
    {
      goto LABEL_12;
    }
  }

  v49 = *(v79 + v21[386]);
  v50 = *(v49 + 40);
  v51 = *(v49 + 72);
  v52 = *(v49 + 80);
  __swift_project_boxed_opaque_existential_1((v49 + 48), v51);
  v53 = "TV_CREATE_WORKOUT_PLAN_TITLE";
  if (v50 >= 3)
  {
    v54 = 0xD000000000000022;
  }

  else
  {
    v53 = "T_PLAN_DESCRIPTION";
    v54 = 0xD00000000000001FLL;
  }

  v45 = sub_20B5E107C(v54, v53 | 0x8000000000000000, v51, v52);
  v48 = v55;

LABEL_12:
  v37[2] = v45;
  v37[3] = v48;
  v56 = v75[16];
  v57 = (v37 + v75[20]);
  v58 = v75[24];
  v59 = sub_20C137C24();
  (*(*(v59 - 8) + 56))(v37 + v56, 1, 1, v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7623B0, &unk_20C14FE40);
  v60 = *(type metadata accessor for ButtonAction(0) - 8);
  v61 = (*(v60 + 80) + 32) & ~*(v60 + 80);
  v62 = swift_allocObject();
  v78 = xmmword_20C14F980;
  *(v62 + 16) = xmmword_20C14F980;
  sub_20B914C60(v79 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_bannerAction, v62 + v61, type metadata accessor for ButtonAction);
  *(v37 + v58) = v62;
  *v57 = sub_20C138044();
  v57[1] = v63;
  v64 = v77 | 0x8000000000000005;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90, &unk_20C14FD30);
  v65 = swift_allocObject();
  *(v65 + 16) = v78;
  *(v65 + 32) = v64;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 17) = *v82;
  *(a1 + 20) = *&v82[3];
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 128;
  *(a1 + 42) = *&v80[7];
  *(a1 + 46) = v81;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = xmmword_20C162710;
  *(a1 + 80) = xmmword_20C162720;
  *(a1 + 96) = 1;
  *(a1 + 97) = *v80;
  *(a1 + 100) = *&v80[3];
  v66 = MEMORY[0x277D84F90];
  *(a1 + 104) = v65;
  *(a1 + 112) = v66;
  result = 0.0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 160) = 2;
  return result;
}

void sub_20B912624(uint64_t a1)
{
  v3 = sub_20C13C554();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = v1 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row;
  v8 = *(v1 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row + 144);
  v30[8] = *(v1 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row + 128);
  v30[9] = v8;
  v31 = *(v1 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row + 160);
  v9 = *(v1 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row + 80);
  v30[4] = *(v1 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row + 64);
  v30[5] = v9;
  v10 = *(v1 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row + 112);
  v30[6] = *(v1 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row + 96);
  v30[7] = v10;
  v11 = *(v1 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row + 16);
  v30[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row);
  v30[1] = v11;
  v12 = *(v1 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row + 48);
  v30[2] = *(v1 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row + 32);
  v30[3] = v12;
  v13 = *(a1 + 144);
  *(v7 + 128) = *(a1 + 128);
  *(v7 + 144) = v13;
  *(v7 + 160) = *(a1 + 160);
  v14 = *(a1 + 80);
  *(v7 + 64) = *(a1 + 64);
  *(v7 + 80) = v14;
  v15 = *(a1 + 112);
  *(v7 + 96) = *(a1 + 96);
  *(v7 + 112) = v15;
  v16 = *(a1 + 16);
  *v7 = *a1;
  *(v7 + 16) = v16;
  v17 = *(a1 + 48);
  *(v7 + 32) = *(a1 + 32);
  *(v7 + 48) = v17;
  sub_20B52F9E8(a1, &v29, &qword_27C762340, &unk_20C150290);
  sub_20B520158(v30, &qword_27C762340, &unk_20C150290);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    if (!*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      sub_20B61DAB8(v1, Strong);
      if (v21)
      {
        v23 = v20;
        v24 = v21;
        v25 = v22;
        v26 = v1;
        sub_20B5E2E18();
        *v6 = sub_20C13D374();
        (*(v4 + 104))(v6, *MEMORY[0x277D85200], v3);
        v27 = sub_20C13C584();
        (*(v4 + 8))(v6, v3);
        if ((v27 & 1) == 0)
        {
          __break(1u);
          return;
        }

        sub_20B621024(v23, v24, v25, v26, 1, v19);
      }

      else
      {
        sub_20C0C2D50(0);
      }
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_20B912878()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_bookmarkClient));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_catalogClient));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_remoteBrowsingSource));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_workoutPlanClient));
  swift_unknownObjectRelease();

  sub_20B914CC8(v0 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_bannerAction, type metadata accessor for ButtonAction);

  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row + 32);
  v9[3] = v7;
  sub_20B520158(v9, &qword_27C762340, &unk_20C150290);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_content, &qword_27C767AE8, &unk_20C162838);
  return v0;
}

uint64_t sub_20B912A00()
{
  sub_20B912878();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutPlanBannerShelf(uint64_t a1)
{
  result = qword_27C767AD0;
  if (!qword_27C767AD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B912AAC(uint64_t a1)
{
  sub_20C132EE4();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ButtonAction(319);
    if (v3 <= 0x3F)
    {
      sub_20B912C0C(319, v2);
      if (v4 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_20B912C0C(uint64_t a1, double a2)
{
  if (!qword_27C767AE0)
  {
    type metadata accessor for WorkoutPlanBannerContent(255);
    v2 = sub_20C13D914();
    if (!v3)
    {
      atomic_store(v2, &qword_27C767AE0);
    }
  }
}

void sub_20B912C64()
{
  swift_getObjectType();
  sub_20C13AB84();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v0);

  swift_allocObject();
  swift_weakInit();
  sub_20B621B88();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v0);

  sub_20B912DE8();
}

void sub_20B912DE8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v25 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - v5;
  v7 = sub_20C136F94();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - v15;
  v17 = sub_20C138104();
  if (v17 != sub_20C138104())
  {
    goto LABEL_6;
  }

  v26 = v0;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_remoteBrowsingSource), *(v0 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_remoteBrowsingSource + 24));
  sub_20C13B174();
  v18 = sub_20C136C64();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v6, 1, v18) == 1)
  {
    sub_20B520158(v6, &qword_27C768690, &unk_20C14FD90);
    return;
  }

  sub_20C1369E4();
  (*(v19 + 8))(v6, v18);
  (*(v8 + 32))(v16, v13, v7);
  sub_20C136F54();
  sub_20B914C18(&qword_27C767AF0, MEMORY[0x277D53030], MEMORY[0x277D53040]);
  v20 = sub_20C13DA74();
  v21 = *(v8 + 8);
  v21(v10, v7);
  if ((v20 & 1) == 0)
  {
    v21(v16, v7);
    return;
  }

  sub_20C136F44();
  v22 = sub_20C13DA74();
  v21(v10, v7);
  v21(v16, v7);
  v0 = v26;
  if (v22)
  {
LABEL_6:
    v23 = sub_20C13CDF4();
    (*(*(v23 - 8) + 56))(v3, 1, 1, v23);
    v24 = swift_allocObject();
    v24[2] = 0;
    v24[3] = 0;
    v24[4] = v0;

    sub_20B6383D0(0, 0, v3, &unk_20C162850, v24);
  }
}

double sub_20B9131FC(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20B912DE8();
  }

  return result;
}

uint64_t sub_20B913254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[128] = a4;
  v5 = sub_20C132EE4();
  v4[129] = v5;
  v4[130] = *(v5 - 8);
  v4[131] = swift_task_alloc();
  v6 = sub_20C133954();
  v4[132] = v6;
  v4[133] = *(v6 - 8);
  v4[134] = swift_task_alloc();
  v4[135] = swift_task_alloc();
  v7 = sub_20C13BB84();
  v4[136] = v7;
  v4[137] = *(v7 - 8);
  v4[138] = swift_task_alloc();
  v4[139] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B9133E4, 0, 0);
}

uint64_t sub_20B9133E4(uint64_t a1)
{
  v2 = v1[139];
  v3 = v1[137];
  v4 = v1[136];
  v5 = v1[128];
  sub_20C13B454();
  sub_20C13BB64();
  v6 = *(v3 + 8);
  v1[140] = v6;
  v1[141] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v4);
  v7 = *(v5 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_workoutPlanClient + 24);
  v8 = *(v5 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_workoutPlanClient + 32);
  __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_workoutPlanClient), v7);
  v9 = swift_task_alloc();
  v1[142] = v9;
  *v9 = v1;
  v9[1] = sub_20B913520;
  v10 = v1[135];

  return MEMORY[0x2821ADE88](v10, v7, v8);
}

uint64_t sub_20B913520()
{
  *(*v1 + 1144) = v0;

  if (v0)
  {
    v2 = sub_20B913AE8;
  }

  else
  {
    v2 = sub_20B913634;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B913634(uint64_t a1)
{
  v51 = v1;
  v2 = *(v1 + 1080);
  v3 = *(v1 + 1072);
  v4 = *(v1 + 1064);
  v5 = *(v1 + 1056);
  sub_20C13B454();
  (*(v4 + 16))(v3, v2, v5);
  v6 = sub_20C13BB74();
  v7 = sub_20C13D1F4();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v1 + 1120);
  v10 = *(v1 + 1104);
  v11 = *(v1 + 1088);
  v12 = *(v1 + 1072);
  v13 = *(v1 + 1064);
  v14 = *(v1 + 1056);
  if (v8)
  {
    v47 = v7;
    v15 = *(v1 + 1048);
    v44 = *(v1 + 1056);
    v16 = *(v1 + 1040);
    v49 = *(v1 + 1120);
    v17 = *(v1 + 1032);
    v48 = *(v1 + 1088);
    v18 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v50 = v46;
    *v18 = 136315138;
    sub_20C133804();
    sub_20B914C18(&qword_27C763EF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v19 = sub_20C13DFA4();
    v45 = v10;
    v21 = v20;
    (*(v16 + 8))(v15, v17);
    v24 = *(v13 + 8);
    v23 = v13 + 8;
    v22 = v24;
    v24(v12, v44);
    v25 = sub_20B51E694(v19, v21, &v50);

    *(v18 + 4) = v25;
    _os_log_impl(&dword_20B517000, v6, v47, "Found active workout plan: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v46);
    MEMORY[0x20F2F6A40](v46, -1, -1);
    MEMORY[0x20F2F6A40](v18, -1, -1);

    v49(v45, v48);
  }

  else
  {

    v26 = *(v13 + 8);
    v23 = v13 + 8;
    v22 = v26;
    v26(v12, v14);
    v9(v10, v11);
  }

  *(v1 + 1160) = v22;
  *(v1 + 1152) = v23;
  *(v1 + 856) = 0u;
  *(v1 + 872) = 1;
  *(v1 + 880) = 0u;
  *(v1 + 896) = 128;
  *(v1 + 952) = 0;
  *(v1 + 904) = 0u;
  *(v1 + 920) = 0u;
  *(v1 + 936) = 0u;
  v27 = MEMORY[0x277D84F90];
  *(v1 + 960) = MEMORY[0x277D84F90];
  *(v1 + 968) = v27;
  *(v1 + 976) = 0u;
  *(v1 + 992) = 0u;
  *(v1 + 1008) = 0;
  *(v1 + 1016) = 2;
  v28 = *(v1 + 984);
  v29 = *(v1 + 1000);
  *(v1 + 848) = 2;
  *(v1 + 816) = v28;
  *(v1 + 832) = v29;
  v30 = *(v1 + 872);
  *(v1 + 688) = *(v1 + 856);
  *(v1 + 704) = v30;
  v31 = *(v1 + 888);
  v32 = *(v1 + 904);
  v33 = *(v1 + 968);
  *(v1 + 784) = *(v1 + 952);
  *(v1 + 800) = v33;
  v34 = *(v1 + 936);
  *(v1 + 752) = *(v1 + 920);
  *(v1 + 768) = v34;
  *(v1 + 720) = v31;
  *(v1 + 736) = v32;
  nullsub_1();
  v35 = *(v1 + 816);
  v36 = *(v1 + 832);
  v37 = *(v1 + 784);
  *(v1 + 296) = *(v1 + 800);
  *(v1 + 312) = v35;
  *(v1 + 328) = v36;
  v38 = *(v1 + 720);
  *(v1 + 232) = *(v1 + 736);
  v39 = *(v1 + 768);
  *(v1 + 248) = *(v1 + 752);
  *(v1 + 264) = v39;
  *(v1 + 280) = v37;
  v40 = *(v1 + 704);
  *(v1 + 184) = *(v1 + 688);
  *(v1 + 200) = v40;
  *(v1 + 344) = *(v1 + 848);
  *(v1 + 216) = v38;
  sub_20C13CDA4();
  *(v1 + 1168) = sub_20C13CD94();
  v42 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20B9139B8, v42, v41);
}

uint64_t sub_20B9139B8()
{

  sub_20B912624(v0 + 184);
  sub_20B621D00(v0 + 856);

  return MEMORY[0x2822009F8](sub_20B913A34, 0, 0);
}

uint64_t sub_20B913A34()
{
  (*(v0 + 1160))(*(v0 + 1080), *(v0 + 1056));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B913AE8()
{
  sub_20B911EC0(v0 + 352);
  v1 = *(v0 + 496);
  *(v0 + 648) = *(v0 + 480);
  *(v0 + 664) = v1;
  *(v0 + 680) = *(v0 + 512);
  v2 = *(v0 + 432);
  *(v0 + 584) = *(v0 + 416);
  *(v0 + 600) = v2;
  v3 = *(v0 + 464);
  *(v0 + 616) = *(v0 + 448);
  *(v0 + 632) = v3;
  v4 = *(v0 + 368);
  *(v0 + 520) = *(v0 + 352);
  *(v0 + 536) = v4;
  v5 = *(v0 + 400);
  *(v0 + 552) = *(v0 + 384);
  *(v0 + 568) = v5;
  nullsub_1();
  v6 = *(v0 + 664);
  *(v0 + 144) = *(v0 + 648);
  *(v0 + 160) = v6;
  *(v0 + 176) = *(v0 + 680);
  v7 = *(v0 + 600);
  *(v0 + 80) = *(v0 + 584);
  *(v0 + 96) = v7;
  v8 = *(v0 + 632);
  *(v0 + 112) = *(v0 + 616);
  *(v0 + 128) = v8;
  v9 = *(v0 + 536);
  *(v0 + 16) = *(v0 + 520);
  *(v0 + 32) = v9;
  v10 = *(v0 + 568);
  *(v0 + 48) = *(v0 + 552);
  *(v0 + 64) = v10;
  sub_20C13CDA4();
  *(v0 + 1176) = sub_20C13CD94();
  v12 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20B913BF4, v12, v11);
}

uint64_t sub_20B913BF4()
{

  sub_20B912624(v0 + 16);
  sub_20B621D00(v0 + 352);

  return MEMORY[0x2822009F8](sub_20B913C70, 0, 0);
}

uint64_t sub_20B913C70()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B913D10@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20B913D88@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row + 32);
  v17 = v7;
  sub_20B52F9E8(&v14, v13, &qword_27C762340, &unk_20C150290);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_20B913E98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  *(v2 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_canCreateWorkoutPlan) = 0;
  v5 = v2 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_row;
  sub_20B5D8060(v25);
  v6 = v25[9];
  *(v5 + 128) = v25[8];
  *(v5 + 144) = v6;
  *(v5 + 160) = v26;
  v7 = v25[5];
  *(v5 + 64) = v25[4];
  *(v5 + 80) = v7;
  v8 = v25[7];
  *(v5 + 96) = v25[6];
  *(v5 + 112) = v8;
  v9 = v25[1];
  *v5 = v25[0];
  *(v5 + 16) = v9;
  v10 = v25[3];
  *(v5 + 32) = v25[2];
  *(v5 + 48) = v10;
  sub_20C133AA4();
  *(v2 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_platform) = v24[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762080, &unk_20C14F930);
  sub_20C133AA4();
  *(v2 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_bag) = *&v24[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A50, &unk_20C14D9F0);
  sub_20C133AA4();
  sub_20B51C710(v24, v2 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_bookmarkClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0, &unk_20C151230);
  sub_20C133AA4();
  sub_20B51C710(v24, v2 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_catalogClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A70, &unk_20C14DA10);
  sub_20C133AA4();
  sub_20B51C710(v24, v2 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_remoteBrowsingSource);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621C0, &unk_20C151240);
  sub_20C133AA4();
  sub_20B51C710(v24, v2 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_workoutPlanClient);
  type metadata accessor for WorkoutPlanStringBuilder(0);
  sub_20C133AA4();
  v11 = OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_workoutPlanStringBuilder;
  *(v2 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_workoutPlanStringBuilder) = *&v24[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *(v2 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_eventHub) = v24[0];
  sub_20B52F9E8(a2, v2 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_content, &qword_27C767AE8, &unk_20C162838);
  v12 = *(v2 + v11);
  v13 = *(v12 + 40);
  v14 = *(v12 + 72);
  v15 = *(v12 + 80);
  __swift_project_boxed_opaque_existential_1((v12 + 48), v14);

  v16 = "makeCreatePlanRow()";
  if (v13 >= 3)
  {
    v17 = 0xD000000000000015;
  }

  else
  {
    v16 = "CREATE_WORKOUT_PLAN_TITLE";
    v17 = 0xD000000000000012;
  }

  v18 = sub_20B5E107C(v17, v16 | 0x8000000000000000, v14, v15);
  v20 = v19;

  v21 = v3 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_bannerAction;
  type metadata accessor for ButtonAction(0);
  type metadata accessor for ButtonAction.ActionType(0);
  swift_storeEnumTagMultiPayload();
  *v21 = 0u;
  *(v21 + 16) = 0u;
  *(v21 + 32) = v18;
  *(v21 + 40) = v20;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  v22 = sub_20C13A914();
  sub_20B520158(a2, &qword_27C767AE8, &unk_20C162838);
  *(v3 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_subscriptionToken) = v22;
  return v3;
}

uint64_t sub_20B914254()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D50, &unk_20C14FB70);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = (&v24 - v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v24 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_platform);
  v24 = v12;
  v25 = v11;
  if (v10 < 2)
  {
    v13 = 0xED00006E616C5072;
    v14 = 0x756F59646C697542;
LABEL_5:
    v15 = OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_bannerAction;
    v16 = sub_20C135ED4();
    (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
    v17 = *MEMORY[0x277D51768];
    v18 = sub_20C1352E4();
    v19 = *(v18 - 8);
    (*(v19 + 104))(v3, v17, v18);
    (*(v19 + 56))(v3, 0, 1, v18);
    sub_20B5A7248((v0 + v15), v14, v13, v6, 0, 0, v3, v9);

    sub_20B520158(v3, &unk_27C765D50, &unk_20C14FB70);
    sub_20B520158(v6, &unk_27C7621D0, &unk_20C14D9B0);
    v20 = v25;
    v21 = sub_20C137CB4();
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    *(v22 + 24) = 0;
    v21(sub_20B52347C, v22);

    return (*(v24 + 8))(v9, v20);
  }

  if (v10 == 3)
  {
    v13 = 0xEE00656E6F685069;
    v14 = 0x6E4F657461657243;
    goto LABEL_5;
  }

  result = sub_20C13DE24();
  __break(1u);
  return result;
}

uint64_t sub_20B914608(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D50, &unk_20C14FB70);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v33 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v33 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v35 = *(v9 - 8);
  v36 = v9;
  MEMORY[0x28223BE20](v9);
  v34 = &v33 - v10;
  v11 = sub_20C1352E4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ShelfItemAction(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ButtonAction(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B914C60(a1, v17, type metadata accessor for ShelfItemAction);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v25 = type metadata accessor for ShelfItemAction;
    v26 = v17;
    return sub_20B914CC8(v26, v25);
  }

  sub_20B5F6860(v17, v20);
  v21 = *(v1 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_platform);
  if (v21 < 2)
  {
    v22 = 0xED00006E616C5072;
    v23 = 0x756F59646C697542;
    v24 = MEMORY[0x277D51748];
LABEL_7:
    (*(v12 + 104))(v14, *v24, v11);
    v27 = sub_20C135ED4();
    (*(*(v27 - 8) + 56))(v8, 1, 1, v27);
    (*(v12 + 16))(v5, v14, v11);
    (*(v12 + 56))(v5, 0, 1, v11);
    v28 = v34;
    sub_20B5A7248(v20, v23, v22, v8, 0, 0, v5, v34);

    sub_20B520158(v5, &unk_27C765D50, &unk_20C14FB70);
    sub_20B520158(v8, &unk_27C7621D0, &unk_20C14D9B0);
    v29 = v36;
    v30 = sub_20C137CB4();
    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    *(v31 + 24) = 0;
    v30(sub_20B5DF6DC, v31);

    (*(v35 + 8))(v28, v29);
    (*(v12 + 8))(v14, v11);
    v25 = type metadata accessor for ButtonAction;
    v26 = v20;
    return sub_20B914CC8(v26, v25);
  }

  if (v21 == 3)
  {
    v22 = 0xEE00656E6F685069;
    v23 = 0x6E4F657461657243;
    v24 = MEMORY[0x277D51768];
    goto LABEL_7;
  }

  result = sub_20C13DE24();
  __break(1u);
  return result;
}

uint64_t sub_20B914B64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52A9D4;

  return sub_20B913254(a1, v4, v5, v6);
}

uint64_t sub_20B914C18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20B914C60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20B914CC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_20B914D2C(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v43 = a2;
  v8 = sub_20C1325D4();
  v45 = *(v8 - 8);
  v46 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a1;
  v42 = v4;
  v11 = sub_20B915158(a1);
  v12 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];

  sub_20C132594();
  v13 = [v12 string];
  v14 = sub_20C13C954();
  v16 = v15;

  v44 = v10;
  v17 = sub_20BC233E0(v10, v14, v16);

  v18 = *(v17 + 2);
  if (v18)
  {
    v48 = MEMORY[0x277D84F90];
    sub_20C13DD64();
    v19 = v17 + 40;
    do
    {
      v20 = [v12 attributedSubstringFromRange_];
      sub_20C13DD34();
      sub_20C13DD74();
      sub_20C13DD84();
      sub_20C13DD44();
      v19 += 2;
      --v18;
    }

    while (v18);

    v21 = v48;
  }

  else
  {

    v21 = MEMORY[0x277D84F90];
  }

  if (v21 >> 62)
  {
LABEL_22:
    v22 = sub_20C13DB34();
    if (v22)
    {
      goto LABEL_8;
    }

LABEL_23:
    v27 = 0;
    goto LABEL_24;
  }

  v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v22)
  {
    goto LABEL_23;
  }

LABEL_8:
  v23 = 0;
  v24 = 0;
  v25 = 0.0;
  while (2)
  {
    v47 = v23;
    while (1)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x20F2F5430](v24, v21);
      }

      else
      {
        if (v24 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v26 = *(v21 + 8 * v24 + 32);
      }

      v27 = v26;
      v28 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      [v26 boundingRectWithSize:0 options:0 context:{1.79769313e308, 1.79769313e308}];
      Width = CGRectGetWidth(v49);
      if (v25 < Width)
      {
        break;
      }

      ++v24;
      if (v28 == v22)
      {
        v27 = v47;
        goto LABEL_24;
      }
    }

    v25 = Width;

    v23 = v27;
    ++v24;
    if (v28 != v22)
    {
      continue;
    }

    break;
  }

LABEL_24:

  (*(v45 + 8))(v44, v46);
  if (v27)
  {
    v30 = floor(a3);
    v31 = floor(a4);
    if (sub_20B9152AC(1, 0, v30, v31))
    {
      v32 = sub_20B915158(v41);
      v33 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
      v34 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
      [v34 setLineBreakMode_];
      v35 = v33;
      v36 = [v35 length];
      v37 = *MEMORY[0x277D74118];
      v38 = v34;
      [v35 addAttribute:v37 value:v38 range:{0, v36}];

      v39 = sub_20B9152AC(v43, 0, v30, v31);
      v27 = v35;
    }

    else
    {
      v39 = 0;
    }
  }

  else
  {
    return 1;
  }

  return v39;
}

id sub_20B915158(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
  v3 = [v2 length];
  [v2 addAttribute:*MEMORY[0x277D740A8] value:a1 range:{0, v3}];
  v4 = sub_20C13C914();
  [v2 removeAttribute:v4 range:{0, v3}];

  [v2 copy];
  sub_20C13DA64();

  swift_unknownObjectRelease();
  sub_20B76EC8C();
  if (swift_dynamicCast())
  {
    return v7;
  }

  return v6;
}

BOOL sub_20B9152AC(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v5 = v4;
  v10 = [objc_allocWithZone(MEMORY[0x277D74278]) initWithSize_];
  [v10 setLineBreakMode_];
  [v10 setMaximumNumberOfLines_];
  v11 = [objc_allocWithZone(MEMORY[0x277D742A8]) init];
  [v11 setTextContainer_];
  v12 = [objc_allocWithZone(MEMORY[0x277D74280]) init];
  v13 = [objc_allocWithZone(MEMORY[0x277D742D8]) initWithAttributedString_];
  [v12 setTextStorage_];

  [v12 addTextLayoutManager_];
  v14 = [v11 documentRange];
  [v11 ensureLayoutForRange_];

  [v11 usageBoundsForTextContainer];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [v10 setMaximumNumberOfLines_];
  v23 = [v11 documentRange];
  [v11 invalidateLayoutForRange_];

  v24 = [v11 documentRange];
  [v11 ensureLayoutForRange_];

  [v11 usageBoundsForTextContainer];
  v26 = v25;
  v28 = v27;
  v32.origin.x = v16;
  v32.origin.y = v18;
  v32.size.width = v20;
  v32.size.height = v22;
  if (v26 <= CGRectGetWidth(v32))
  {
    v33.origin.x = v16;
    v33.origin.y = v18;
    v33.size.width = v20;
    v33.size.height = v22;
    Height = CGRectGetHeight(v33);

    v31 = v28 <= Height;
    if (v26 > a3)
    {
      v31 = 0;
    }

    return v28 <= a4 && v31;
  }

  else
  {

    return 0;
  }
}

UIColor __swiftcall UIColor.elevated(using:)(UITraitCollection using)
{
  v2 = v1;
  v3 = sub_20C13D3B4();
  v4 = [v2 resolvedColorWithTraitCollection_];

  return v4;
}

UIColor __swiftcall UIColor.dark(using:)(UITraitCollection using)
{
  v2 = v1;
  v3 = sub_20C13D3B4();
  v4 = [v2 resolvedColorWithTraitCollection_];

  return v4;
}

uint64_t sub_20B915640(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  return a3(a2, v5, v6);
}

uint64_t URL.withQueryItems(_:)@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_20C132704();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7665D8, &unk_20C1896B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  sub_20C132684();
  v11 = *(v5 + 48);
  if (!v11(v10, 1, v4))
  {

    sub_20C132674();
  }

  if (v11(v10, 1, v4))
  {
    v12 = sub_20C132C14();
    (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
  }

  else
  {
    (*(v5 + 16))(v7, v10, v4);
    sub_20C132694();
    (*(v5 + 8))(v7, v4);
  }

  return sub_20B91588C(v10);
}

uint64_t sub_20B91588C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7665D8, &unk_20C1896B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t URL.queryItems.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7665D8, &unk_20C1896B0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  sub_20C132684();
  v3 = sub_20C132704();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_20B91588C(v2);
  }

  else
  {
    v5 = sub_20C132664();
    (*(v4 + 8))(v2, v3);
    if (v5)
    {
      return v5;
    }
  }

  return MEMORY[0x277D84F90];
}

void sub_20B915A20(uint64_t a1, uint64_t a2, double a3)
{
  if (a2)
  {
    v4 = sub_20C13C914();
  }

  else
  {
    v4 = 0;
  }

  [v3 setCategory_];
}

uint64_t sub_20B915AA0()
{
  v1 = [v0 availableRoutes];
  sub_20B915C3C();
  v2 = sub_20C13CC74();

  return v2;
}

void sub_20B915AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  if (a3)
  {
    v9[4] = a3;
    v9[5] = a4;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_20B915BD0;
    v9[3] = &block_descriptor_49;
    v8 = _Block_copy(v9);
  }

  else
  {
    v8 = 0;
  }

  [v5 selectRoute:a1 operation:a2 completion:v8];
  _Block_release(v8);
}

void sub_20B915BD0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

unint64_t sub_20B915C3C()
{
  result = qword_27C762500;
  if (!qword_27C762500)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C762500);
  }

  return result;
}

id sub_20B915D04(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for TVSlideTransitionAnimationCoordinator();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_20B915D5C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7646D8, &unk_20C17C950);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - v9;
  MEMORY[0x28223BE20](v11);
  v36 = &v35 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v14 = *(v13 - 8);
  v38 = v13;
  v39 = v14;
  MEMORY[0x28223BE20](v13);
  v37 = &v35 - v15;
  v40 = v0;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI26TVPlaylistListDataProvider_bookmarkClient), *(v0 + OBJC_IVAR____TtC9SeymourUI26TVPlaylistListDataProvider_bookmarkClient + 24));
  sub_20C13A184();
  v16 = *(v2 + 16);
  v41 = v2 + 16;
  v44 = v16;
  v16(v4, v7, v1);
  v17 = *(v2 + 80);
  v43 = (v17 + 16) & ~v17;
  v18 = (v3 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v42 = *(v2 + 32);
  v42(v19 + ((v17 + 16) & ~v17), v4, v1);
  v20 = (v19 + v18);
  v21 = v40;
  *v20 = sub_20B917CE8;
  v20[1] = v21;
  v35 = sub_20C138204();

  sub_20C137C94();
  v22 = *(v2 + 8);
  v22(v7, v1);
  sub_20B5E2E18();
  v23 = sub_20C13D374();
  v44(v7, v10, v1);
  v24 = swift_allocObject();
  v42(v24 + v43, v7, v1);
  *(v24 + v18) = v23;
  v25 = v36;
  sub_20C137C94();
  v22(v10, v1);
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = swift_allocObject();
  *(v27 + 16) = sub_20B917D08;
  *(v27 + 24) = v26;
  v44(v10, v25, v1);
  v28 = swift_allocObject();
  v42(v28 + v43, v10, v1);
  v29 = (v28 + v18);
  *v29 = sub_20B7DB940;
  v29[1] = v27;
  v30 = v37;
  sub_20C137C94();
  v22(v25, v1);
  v31 = v38;
  v32 = sub_20C137CB4();
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  v32(sub_20B52347C, v33);

  return (*(v39 + 8))(v30, v31);
}

uint64_t sub_20B91626C(uint64_t a1, uint64_t a2)
{
  v3 = sub_20C138204();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = swift_allocObject();
  swift_weakInit();
  (*(v4 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  (*(v4 + 32))(v8 + v7, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v9 = swift_allocObject();
  *(v9 + 16) = "SeymourUI/TVPlaylistListDataProvider.swift";
  *(v9 + 24) = 42;
  *(v9 + 32) = 2;
  *(v9 + 40) = 71;
  *(v9 + 48) = &unk_20C162978;
  *(v9 + 56) = v8;
  return sub_20C137C94();
}

void sub_20B91641C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7643F0, &qword_20C1536C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11[-v4];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + OBJC_IVAR____TtC9SeymourUI26TVPlaylistListDataProvider_headerShelf);

    v8 = sub_20C138204();
    v9 = *(v8 - 8);
    (*(v9 + 16))(v5, a1, v8);
    (*(v9 + 56))(v5, 0, 1, v8);
    v10 = OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_playlist;
    swift_beginAccess();
    sub_20B66A790(v5, v7 + v10);
    swift_endAccess();
    sub_20BB89E38();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_20B6676EC(a1);
  }
}

uint64_t sub_20B9165F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[16] = a2;
  v3[17] = a3;
  v3[15] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AC0, &qword_20C14FC90);
  v3[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B916698, 0, 0);
}

uint64_t sub_20B916698()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_20B51CC64(Strong + OBJC_IVAR____TtC9SeymourUI26TVPlaylistListDataProvider_contentAvailabilityFilter, (v0 + 2));

    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v2 = sub_20C1381E4();
    v0[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763320, &unk_20C15A2F0);
    v0[11] = sub_20B917F9C();
    v0[7] = v2;
    v3 = swift_task_alloc();
    v0[19] = v3;
    *v3 = v0;
    v3[1] = sub_20B9168A8;

    return sub_20C0A6C2C((v0 + 7));
  }

  else
  {
    v5 = sub_20C133D94();
    sub_20B918068(&qword_27C765B10, MEMORY[0x277D50470], MEMORY[0x277D50478]);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, *MEMORY[0x277D50460], v5);
    swift_willThrow();

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_20B9168A8(uint64_t a1)
{
  v3 = *v2;
  v3[20] = a1;
  v3[21] = v1;

  if (v1)
  {
    v4 = sub_20B916B98;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v3 + 7);
    v4 = sub_20B9169C4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20B9169C4()
{
  v1 = v0[20];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (*(v1 + 16))
  {
    v2 = v0[18];
    sub_20B717280(v0[20]);

    v3 = sub_20C132E94();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    sub_20C1381F4();

    sub_20B918000(v2);
  }

  else
  {

    v5 = sub_20C133D94();
    sub_20B918068(&qword_27C765B10, MEMORY[0x277D50470], MEMORY[0x277D50478]);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, *MEMORY[0x277D50460], v5);
    swift_willThrow();
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_20B916B98()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20B916C0C()
{
  sub_20B5E0F50(*(v0 + 16), *(v0 + 24));

  v1 = OBJC_IVAR____TtC9SeymourUI26TVPlaylistListDataProvider_metricPage;
  v2 = sub_20C1333A4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI26TVPlaylistListDataProvider_bookmarkClient));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI26TVPlaylistListDataProvider_contentAvailabilityFilter));
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_20B916D14()
{
  sub_20B916C0C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TVPlaylistListDataProvider(uint64_t a1)
{
  result = qword_27C767B50;
  if (!qword_27C767B50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20B916DC0(uint64_t a1)
{
  result = sub_20C1333A4();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

double sub_20B916E94()
{
  sub_20B915D5C();
  swift_getObjectType();
  sub_20C13A714();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  return result;
}

double sub_20B916F8C(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20B915D5C();
  }

  return result;
}

uint64_t sub_20B916FE4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9SeymourUI26TVPlaylistListDataProvider_metricPage;
  v5 = sub_20C1333A4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_20B917084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v99 = a3;
  v97 = a2;
  v10 = sub_20C13C6C4();
  MEMORY[0x28223BE20](v10 - 8);
  *&v98 = v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0, &unk_20C151A00);
  MEMORY[0x28223BE20](v12 - 8);
  v96 = v91 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v14 - 8);
  v94 = v91 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v16 - 8);
  v92 = v91 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0, &unk_20C14D9C0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v91 - v19;
  v95 = sub_20C1333A4();
  v93 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v22 = v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  v23 = (v6 + OBJC_IVAR____TtC9SeymourUI26TVPlaylistListDataProvider_pageIdentifier);
  *v23 = 0x7465446B63617453;
  v23[1] = 0xEB000000006C6961;
  v24 = (v6 + OBJC_IVAR____TtC9SeymourUI26TVPlaylistListDataProvider_playlistIdentifier);
  *v24 = a4;
  v24[1] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A980, &qword_20C153E20);
  sub_20C133AA4();
  sub_20B51C710(&v110, v6 + OBJC_IVAR____TtC9SeymourUI26TVPlaylistListDataProvider_contentAvailabilityFilter);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A50, &unk_20C14D9F0);
  sub_20C133AA4();
  sub_20B51C710(&v110, v6 + OBJC_IVAR____TtC9SeymourUI26TVPlaylistListDataProvider_bookmarkClient);
  *(v6 + OBJC_IVAR____TtC9SeymourUI26TVPlaylistListDataProvider_dependencies) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  v25 = *(&v110 + 1);
  v26 = (v6 + OBJC_IVAR____TtC9SeymourUI26TVPlaylistListDataProvider_eventHub);
  *v26 = v110;
  v26[1] = v25;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v6 + OBJC_IVAR____TtC9SeymourUI26TVPlaylistListDataProvider_subscriptionToken) = sub_20C13A914();
  v91[1] = *v23;
  v27 = *MEMORY[0x277D51838];
  v28 = sub_20C1352F4();
  v29 = *(v28 - 8);
  (*(v29 + 104))(v20, v27, v28);
  (*(v29 + 56))(v20, 0, 1, v28);
  v30 = sub_20C132C14();
  (*(*(v30 - 8) + 56))(v92, 1, 1, v30);
  v31 = sub_20C135ED4();
  (*(*(v31 - 8) + 56))(v94, 1, 1, v31);
  v32 = sub_20C136914();
  (*(*(v32 - 8) + 56))(v96, 1, 1, v32);

  sub_20C133384();
  v33 = OBJC_IVAR____TtC9SeymourUI26TVPlaylistListDataProvider_metricPage;
  v34 = v93;
  v35 = v95;
  (*(v93 + 32))(v6 + OBJC_IVAR____TtC9SeymourUI26TVPlaylistListDataProvider_metricPage, v22, v95);
  (*(v34 + 16))(v22, v6 + v33, v35);
  type metadata accessor for TVPlaylistHeaderShelf(0);
  swift_allocObject();

  v37 = sub_20BB8F3A4(v36, v22);

  v38 = OBJC_IVAR____TtC9SeymourUI26TVPlaylistListDataProvider_headerShelf;
  *(v6 + OBJC_IVAR____TtC9SeymourUI26TVPlaylistListDataProvider_headerShelf) = v37;
  type metadata accessor for TVPlaylistGalleryShelf(0);
  swift_allocObject();

  v40 = sub_20B669E68(v39);

  *(v6 + OBJC_IVAR____TtC9SeymourUI26TVPlaylistListDataProvider_galleryShelf) = v40;
  v41 = v23[1];
  v97 = *v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766A00, &qword_20C1538C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F320;
  v99 = v6;
  *(inited + 32) = *(v6 + v38);
  *(inited + 40) = &off_2822D06A8;
  *(inited + 48) = v40;
  *(inited + 56) = &off_28229B5E8;
  v96 = v41;

  LODWORD(v95) = sub_20C1380F4();
  v43 = [objc_allocWithZone(MEMORY[0x277D75300]) init];
  v94 = [objc_allocWithZone(type metadata accessor for CollectionView()) initWithFrame:v43 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  sub_20C13C734();
  v44 = sub_20C13C724();
  v45 = type metadata accessor for CatalogPageImpressionTracker();
  v46 = swift_allocObject();
  sub_20C13C714();

  sub_20C13C6B4();
  v47 = MEMORY[0x277D221C0];
  v46[2] = sub_20C13C6D4();
  v46[3] = v44;
  v46[4] = v47;
  v111 = v45;
  v48 = sub_20B918068(&qword_27C761A90, type metadata accessor for CatalogPageImpressionTracker, &unk_20C167088);
  v112 = v48;
  *&v110 = v46;
  v49 = type metadata accessor for MetricLocationStore();
  v50 = swift_allocObject();
  v51 = MEMORY[0x277D84F90];
  v52 = MEMORY[0x277D84F98];
  *(v50 + 16) = MEMORY[0x277D84F90];
  *(v50 + 24) = v52;
  v53 = __swift_mutable_project_boxed_opaque_existential_1(&v110, v45);
  v54 = MEMORY[0x28223BE20](v53);
  v56 = (v91 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v57 + 16))(v56, v54);
  v58 = *v56;
  v109[3] = v45;
  v109[4] = v48;
  v109[0] = v58;
  v108[3] = v49;
  v108[4] = &off_2822B6968;
  v108[0] = v50;
  v107[0] = v51;
  sub_20BB5D394(0, 2, 0);
  v59 = v107[0];
  v60 = *(v107[0] + 16);
  v61 = *(v107[0] + 24);
  v98 = *(inited + 32);
  swift_unknownObjectRetain();
  if (v60 >= v61 >> 1)
  {
    sub_20BB5D394((v61 > 1), v60 + 1, 1);
    v59 = v107[0];
  }

  *(v59 + 16) = v60 + 1;
  v62 = v59 + 24 * v60;
  *(v62 + 32) = v98;
  *(v62 + 48) = 0;
  swift_unknownObjectRetain();

  v64 = *(v59 + 16);
  v63 = *(v59 + 24);
  if (v64 >= v63 >> 1)
  {
    sub_20BB5D394((v63 > 1), v64 + 1, 1);
    v59 = v107[0];
  }

  *(v59 + 16) = v64 + 1;
  v65 = v59 + 24 * v64;
  *(v65 + 32) = v40;
  *(v65 + 40) = &off_28229B5E8;
  *(v65 + 48) = 0;
  sub_20B51CC64(v109, v107);
  sub_20B51CC64(v108, v106);
  v66 = __swift_mutable_project_boxed_opaque_existential_1(v107, v107[3]);
  v67 = MEMORY[0x28223BE20](v66);
  v69 = (v91 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v70 + 16))(v69, v67);
  v71 = __swift_mutable_project_boxed_opaque_existential_1(v106, v106[3]);
  v72 = MEMORY[0x28223BE20](v71);
  v74 = (v91 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v75 + 16))(v74, v72);
  v76 = *v69;
  v77 = *v74;
  v104 = v45;
  v105 = v48;
  v103[0] = v76;
  v101 = v49;
  v102 = &off_2822B6968;
  v100[0] = v77;
  v78 = objc_allocWithZone(type metadata accessor for CatalogPage());
  v79 = __swift_mutable_project_boxed_opaque_existential_1(v103, v104);
  v80 = MEMORY[0x28223BE20](v79);
  v82 = (v91 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v83 + 16))(v82, v80);
  v84 = __swift_mutable_project_boxed_opaque_existential_1(v100, v101);
  v85 = MEMORY[0x28223BE20](v84);
  v87 = (v91 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v88 + 16))(v87, v85);
  v89 = sub_20BE3AA74(v97, v96, v59, v95, v94, *v82, *v87, 2, v78);
  __swift_destroy_boxed_opaque_existential_1(v108);
  __swift_destroy_boxed_opaque_existential_1(v109);
  __swift_destroy_boxed_opaque_existential_1(v100);
  __swift_destroy_boxed_opaque_existential_1(v103);
  __swift_destroy_boxed_opaque_existential_1(v106);
  __swift_destroy_boxed_opaque_existential_1(v107);
  __swift_destroy_boxed_opaque_existential_1(&v110);
  result = v99;
  *(v99 + 32) = v89;
  return result;
}

uint64_t objectdestroy_10Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7646D8, &unk_20C17C950);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B917DE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7646D8, &unk_20C17C950) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (v3 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return a3(a1, a2, v3 + v7, v9, v10);
}

uint64_t sub_20B917EB8(uint64_t a1)
{
  v4 = *(sub_20C138204() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52A9D4;

  return sub_20B9165F8(a1, v6, v1 + v5);
}

unint64_t sub_20B917F9C()
{
  result = qword_27C763328;
  if (!qword_27C763328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C763320, &unk_20C15A2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C763328);
  }

  return result;
}

uint64_t sub_20B918000(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AC0, &qword_20C14FC90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20B918068(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_20B9180C4()
{
  result = qword_27C767B60;
  if (!qword_27C767B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C767B60);
  }

  return result;
}

void sub_20B918140(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

id sub_20B9181D0()
{
  v1 = v0 + OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_spriteSheet;
  v2 = *(v0 + OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_spriteSheet);
  if (v2)
  {
    v3 = *(v1 + 8);
    [v2 size];
    v4 = *(v1 + 16);
    result = [v2 size];
    if (v3)
    {
      if (v4 == 0x8000000000000000 && v3 == -1)
      {
        goto LABEL_12;
      }

      if (!__OFADD__(v4 / v3, v4 % v3 != 0))
      {
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  return result;
}

void sub_20B918360()
{
  v1 = v0;
  v2 = sub_20C13C4B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C13C4F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C13C4C4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *&v1[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_spriteSheet];
  if (v14)
  {
    v34 = v6;
    v35 = v7;
    v36 = v3;
    v37 = v14;
    v15 = [v37 renderingMode];
    v16 = [v1 layer];
    v17 = v16;
    if (v15 == 2)
    {
      [v16 contentsScale];
      v19 = v18;

      if ([objc_opt_self() smu_canDecodeOnRenderThread])
      {
        v20 = sub_20B918D84();
        v21 = [v1 layer];
        if (v20 && (v22 = [v20 CGImage]) != 0)
        {
          aBlock[0] = v22;
          type metadata accessor for CGImage(0);
          v23 = sub_20C13DFD4();
        }

        else
        {
          v23 = 0;
        }

        [v21 setContents_];

        swift_unknownObjectRelease();
        v31 = [v1 &selRef_setFragmentFunction_];
        if (v20)
        {
          [v20 scale];
          v19 = v32;
        }

        [v31 setContentsScale_];
      }

      else
      {
        sub_20B5E2E18();
        (*(v11 + 104))(v13, *MEMORY[0x277D851B8], v10);
        v27 = sub_20C13D3A4();
        (*(v11 + 8))(v13, v10);
        v28 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v29 = swift_allocObject();
        *(v29 + 2) = v28;
        v29[3] = v19;
        aBlock[4] = sub_20B91A620;
        aBlock[5] = v29;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_20B7B548C;
        aBlock[3] = &block_descriptor_21_0;
        v30 = _Block_copy(aBlock);

        sub_20C13C4D4();
        v38 = MEMORY[0x277D84F90];
        sub_20B7E9080();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280, &qword_20C15A2D0);
        sub_20B682EA8();
        sub_20C13DA94();
        MEMORY[0x20F2F4AF0](0, v9, v5, v30);

        _Block_release(v30);
        (*(v36 + 8))(v5, v2);
        (*(v35 + 8))(v9, v34);
      }
    }

    else
    {
      v24 = [v37 CGImage];
      [v17 setContents_];

      v25 = [v1 layer];
      [v37 scale];
      [v25 setContentsScale_];

      v26 = v37;
    }
  }
}

uint64_t sub_20B918908(uint64_t a1, double a2)
{
  v3 = sub_20C13C4B4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_20C13C4F4();
  v7 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = sub_20B918D84();
  }

  else
  {
    v12 = 0;
  }

  sub_20B5E2E18();
  v13 = sub_20C13D374();
  v14 = swift_allocObject();
  swift_beginAccess();
  v15 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v12;
  *(v16 + 32) = a2;
  aBlock[4] = sub_20B91A62C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_28_1;
  v17 = _Block_copy(aBlock);
  v18 = v12;

  sub_20C13C4D4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_20B7E9080();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280, &qword_20C15A2D0);
  sub_20B682EA8();
  sub_20C13DA94();
  MEMORY[0x20F2F4AF0](0, v9, v6, v17);
  _Block_release(v17);

  (*(v4 + 8))(v6, v3);
  return (*(v7 + 8))(v9, v21);
}

void sub_20B918C24(uint64_t a1, void *a2, double a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong layer];

    if (a2 && (v8 = [a2 CGImage]) != 0)
    {
      v14 = v8;
      type metadata accessor for CGImage(0);
      v9 = sub_20C13DFD4();
    }

    else
    {
      v9 = 0;
    }

    [v7 setContents_];

    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    v12 = [v10 layer];

    if (a2)
    {
      [a2 scale];
      a3 = v13;
    }

    [v12 setContentsScale_];
  }
}

id sub_20B918D84()
{
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_spriteSheet];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  [v2 size];
  v5 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = v0;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_20B91A5F0;
  *(v7 + 24) = v6;
  v13[4] = sub_20B91A5F8;
  v13[5] = v7;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_20B918140;
  v13[3] = &block_descriptor_50;
  v8 = _Block_copy(v13);
  v9 = v2;
  v10 = v0;

  v11 = [v5 imageWithActions_];

  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
    return 0;
  }

  return v11;
}

void sub_20B918F58(void *a1, void *a2, void *a3)
{
  c = [a1 CGContext];
  [a2 size];
  v6 = v5;
  [a2 size];
  v8 = v7;
  [a2 drawInRect:20 blendMode:0.0 alpha:{0.0, v6, v7, 1.0}];
  [a2 drawInRect_];
  CGContextSetBlendMode(c, kCGBlendModeSourceAtop);
  v9 = [a3 tintColor];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 CGColor];
    CGContextSetFillColorWithColor(c, v11);
  }

  v14.origin.x = 0.0;
  v14.origin.y = 0.0;
  v14.size.width = v6;
  v14.size.height = v8;
  CGContextFillRect(c, v14);
}

void sub_20B91909C()
{
  v1 = [v0 layer];
  v2 = sub_20C13C914();
  v11 = [v1 animationForKey_];

  v3 = v11;
  if (!v11)
  {
    v4 = sub_20C13C914();
    v5 = [objc_opt_self() animationWithKeyPath_];

    v6 = *&v0[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_spriteSheet + 16] / *&v0[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_frameRate];
    v7 = v5;
    [v7 setDuration_];
    sub_20BEF67DC(*&v0[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_offsets]);
    v8 = sub_20C13CC54();

    [v7 setValues_];

    LODWORD(v9) = 2139095039;
    [v7 setRepeatCount_];

    [v7 setCalculationMode_];
    v10 = [v0 layer];
    v12 = sub_20C13C914();
    [v10 addAnimation:v7 forKey:v12];

    v3 = v12;
  }
}

id sub_20B9193E4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SpriteSheetView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

objc_super *sub_20B9194AC(uint64_t a1)
{
  if (a1 <= 56)
  {
    if (a1 > 36)
    {
      if (a1 == 37)
      {
        v61 = sub_20B9C7D00(37);
        v2 = [v61 imageWithRenderingMode_];

        v3 = type metadata accessor for SpriteSheetView();
        v62 = objc_allocWithZone(v3);
        v63 = &v62[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_offsetAnimationKey];
        *v63 = 0xD00000000000001DLL;
        *(v63 + 1) = 0x800000020C1A0930;
        v64 = MEMORY[0x277D84F90];
        *&v62[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_animations] = MEMORY[0x277D84F90];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v64 = sub_20BC062A0(0, *(v64 + 2) + 1, 1, v64);
        }

        v65 = 0;
        v66 = *(v64 + 2);
        v67 = 16 * v66;
        while (1)
        {
          v68 = *(v64 + 3);
          if (v66 + v65 >= v68 >> 1)
          {
            v64 = sub_20BC062A0((v68 > 1), v66 + v65 + 1, 1, v64);
          }

          *(v64 + 2) = v66 + v65 + 1;
          v69 = &v64[v67];
          *(v69 + 4) = v65 / 10.0;
          *(v69 + 5) = 0;
          if (v66 + v65 == 18)
          {
            break;
          }

          ++v65;
          v67 += 16;
          if (v65 == 10)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v64 = sub_20BC062A0(0, *(v64 + 2) + 1, 1, v64);
            }

            v128 = 0;
            v129 = *(v64 + 2);
            v130 = 16 * v129;
            do
            {
              v131 = *(v64 + 3);
              if (v129 + v128 >= v131 >> 1)
              {
                v64 = sub_20BC062A0((v131 > 1), v129 + v128 + 1, 1, v64);
              }

              *(v64 + 2) = v129 + v128 + 1;
              v132 = &v64[v130];
              *(v132 + 4) = v128 / 10.0;
              *(v132 + 5) = 0x3FE0000000000000;
              if (v129 + v128 == 18)
              {
                break;
              }

              v130 += 16;
              v125 = v128++ == 9;
            }

            while (!v125);
            break;
          }
        }

        *&v62[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_offsets] = v64;
        v133 = &v62[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_spriteSheet];
        *v133 = v2;
        *(v133 + 8) = xmmword_20C162A50;
        *&v62[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_frameRate] = 0x404E000000000000;
        v153 = v62;
        v47 = &v153;
        goto LABEL_138;
      }

      if (a1 == 52)
      {
        v26 = sub_20B9C7D00(52);
        v2 = [v26 imageWithRenderingMode_];

        v3 = type metadata accessor for SpriteSheetView();
        v27 = objc_allocWithZone(v3);
        v28 = 0;
        v29 = &v27[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_offsetAnimationKey];
        *v29 = 0xD00000000000001DLL;
        *(v29 + 1) = 0x800000020C1A0930;
        v30 = MEMORY[0x277D84F90];
        *&v27[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_animations] = MEMORY[0x277D84F90];
LABEL_32:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_20BC062A0(0, *(v30 + 2) + 1, 1, v30);
        }

        v31 = 0;
        v32 = v28 + 1;
        v33 = *(v30 + 2);
        v34 = 16 * v33;
        while (1)
        {
          v35 = *(v30 + 3);
          if (v33 + v31 >= v35 >> 1)
          {
            v30 = sub_20BC062A0((v35 > 1), v33 + v31 + 1, 1, v30);
          }

          *(v30 + 2) = v33 + v31 + 1;
          v36 = &v30[v34];
          *(v36 + 4) = v31 / 10.0;
          *(v36 + 5) = v28 / 7.0;
          if (v33 + v31 == 63)
          {
            break;
          }

          ++v31;
          v34 += 16;
          if (v31 == 10)
          {
            ++v28;
            if (v32 != 7)
            {
              goto LABEL_32;
            }

            break;
          }
        }

        *&v27[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_offsets] = v30;
        v48 = &v27[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_spriteSheet];
        *v48 = v2;
        *(v48 + 8) = xmmword_20C162A40;
        *&v27[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_frameRate] = 0x404E000000000000;
        v154 = v27;
        v47 = &v154;
        goto LABEL_138;
      }
    }

    else
    {
      if (a1 == 13)
      {
        v49 = sub_20B9C7D00(13);
        v2 = [v49 imageWithRenderingMode_];

        v3 = type metadata accessor for SpriteSheetView();
        v50 = objc_allocWithZone(v3);
        v51 = 0;
        v52 = &v50[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_offsetAnimationKey];
        *v52 = 0xD00000000000001DLL;
        *(v52 + 1) = 0x800000020C1A0930;
        v53 = MEMORY[0x277D84F90];
        *&v50[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_animations] = MEMORY[0x277D84F90];
LABEL_54:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v53 = sub_20BC062A0(0, *(v53 + 2) + 1, 1, v53);
        }

        v54 = 0;
        v55 = v51 + 1;
        v56 = vcvtd_n_f64_u64(v51, 2uLL);
        v57 = *(v53 + 2);
        v58 = 16 * v57;
        while (1)
        {
          v59 = *(v53 + 3);
          if (v57 + v54 >= v59 >> 1)
          {
            v53 = sub_20BC062A0((v59 > 1), v57 + v54 + 1, 1, v53);
          }

          *(v53 + 2) = v57 + v54 + 1;
          v60 = &v53[v58];
          *(v60 + 4) = v54 / 10.0;
          *(v60 + 5) = v56;
          if (v57 + v54 == 37)
          {
            break;
          }

          ++v54;
          v58 += 16;
          if (v54 == 10)
          {
            ++v51;
            if (v55 != 4)
            {
              goto LABEL_54;
            }

            break;
          }
        }

        *&v50[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_offsets] = v53;
        v70 = &v50[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_spriteSheet];
        *v70 = v2;
        *(v70 + 8) = xmmword_20C162AC0;
        *&v50[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_frameRate] = 0x404E000000000000;
        v146 = v50;
        v47 = &v146;
        goto LABEL_138;
      }

      if (a1 == 35)
      {
        v14 = sub_20B9C7D00(35);
        v2 = [v14 imageWithRenderingMode_];

        v3 = type metadata accessor for SpriteSheetView();
        v15 = objc_allocWithZone(v3);
        v16 = 0;
        v17 = &v15[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_offsetAnimationKey];
        *v17 = 0xD00000000000001DLL;
        *(v17 + 1) = 0x800000020C1A0930;
        v18 = MEMORY[0x277D84F90];
        *&v15[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_animations] = MEMORY[0x277D84F90];
LABEL_20:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_20BC062A0(0, *(v18 + 2) + 1, 1, v18);
        }

        v19 = 0;
        v20 = v16 + 1;
        v21 = vcvtd_n_f64_u64(v16, 3uLL);
        v22 = *(v18 + 2);
        v23 = 16 * v22;
        while (1)
        {
          v24 = *(v18 + 3);
          if (v22 + v19 >= v24 >> 1)
          {
            v18 = sub_20BC062A0((v24 > 1), v22 + v19 + 1, 1, v18);
          }

          *(v18 + 2) = v22 + v19 + 1;
          v25 = &v18[v23];
          *(v25 + 4) = v19 / 10.0;
          *(v25 + 5) = v21;
          if (v22 + v19 == 72)
          {
            break;
          }

          ++v19;
          v23 += 16;
          if (v19 == 10)
          {
            ++v16;
            if (v20 != 8)
            {
              goto LABEL_20;
            }

            break;
          }
        }

        *&v15[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_offsets] = v18;
        v46 = &v15[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_spriteSheet];
        *v46 = v2;
        *(v46 + 8) = xmmword_20C162A80;
        *&v15[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_frameRate] = 0x404E000000000000;
        v150 = v15;
        v47 = &v150;
        goto LABEL_138;
      }
    }

LABEL_103:
    v110 = sub_20B9C7D00(37);
    v2 = [v110 imageWithRenderingMode_];

    v3 = type metadata accessor for SpriteSheetView();
    v111 = objc_allocWithZone(v3);
    v112 = &v111[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_offsetAnimationKey];
    *v112 = 0xD00000000000001DLL;
    *(v112 + 1) = 0x800000020C1A0930;
    v113 = MEMORY[0x277D84F90];
    *&v111[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_animations] = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v113 = sub_20BC062A0(0, *(v113 + 2) + 1, 1, v113);
    }

    v114 = 0;
    v115 = *(v113 + 2);
    v116 = 16 * v115;
    while (1)
    {
      v117 = *(v113 + 3);
      if (v115 + v114 >= v117 >> 1)
      {
        v113 = sub_20BC062A0((v117 > 1), v115 + v114 + 1, 1, v113);
      }

      *(v113 + 2) = v115 + v114 + 1;
      v118 = &v113[v116];
      *(v118 + 4) = v114 / 10.0;
      *(v118 + 5) = 0;
      if (v115 + v114 == 18)
      {
        break;
      }

      ++v114;
      v116 += 16;
      if (v114 == 10)
      {
        v134 = swift_isUniquelyReferenced_nonNull_native();
        if ((v134 & 1) == 0)
        {
          v113 = sub_20BC062A0(0, *(v113 + 2) + 1, 1, v113);
        }

        v135 = 0;
        v136 = *(v113 + 2);
        v137 = 16 * v136;
        do
        {
          v138 = *(v113 + 3);
          if (v136 + v135 >= v138 >> 1)
          {
            v113 = sub_20BC062A0((v138 > 1), v136 + v135 + 1, 1, v113);
          }

          *(v113 + 2) = v136 + v135 + 1;
          v139 = &v113[v137];
          *(v139 + 4) = v135 / 10.0;
          *(v139 + 5) = 0x3FE0000000000000;
          if (v136 + v135 == 18)
          {
            break;
          }

          v137 += 16;
          v125 = v135++ == 9;
        }

        while (!v125);
        break;
      }
    }

    *&v111[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_offsets] = v113;
    v140 = &v111[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_spriteSheet];
    *v140 = v2;
    *(v140 + 8) = xmmword_20C162A50;
    *&v111[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_frameRate] = 0x404E000000000000;
    v155 = v111;
    v47 = &v155;
    goto LABEL_138;
  }

  if (a1 <= 64)
  {
    if (a1 == 57)
    {
      v84 = sub_20B9C7D00(57);
      v2 = [v84 imageWithRenderingMode_];

      v3 = type metadata accessor for SpriteSheetView();
      v85 = objc_allocWithZone(v3);
      v86 = 0;
      v87 = &v85[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_offsetAnimationKey];
      *v87 = 0xD00000000000001DLL;
      *(v87 + 1) = 0x800000020C1A0930;
      v88 = MEMORY[0x277D84F90];
      *&v85[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_animations] = MEMORY[0x277D84F90];
LABEL_83:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v88 = sub_20BC062A0(0, *(v88 + 2) + 1, 1, v88);
      }

      v89 = 0;
      v90 = v86 + 1;
      v91 = vcvtd_n_f64_u64(v86, 4uLL);
      v92 = *(v88 + 2);
      v93 = 16 * v92;
      while (1)
      {
        v94 = *(v88 + 3);
        if (v92 + v89 >= v94 >> 1)
        {
          v88 = sub_20BC062A0((v94 > 1), v92 + v89 + 1, 1, v88);
        }

        *(v88 + 2) = v92 + v89 + 1;
        v95 = &v88[v93];
        *(v95 + 4) = v89 / 10.0;
        *(v95 + 5) = v91;
        if (v92 + v89 == 157)
        {
          break;
        }

        ++v89;
        v93 += 16;
        if (v89 == 10)
        {
          ++v86;
          if (v90 != 16)
          {
            goto LABEL_83;
          }

          break;
        }
      }

      *&v85[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_offsets] = v88;
      v96 = &v85[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_spriteSheet];
      *v96 = v2;
      *(v96 + 8) = xmmword_20C162A60;
      *&v85[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_frameRate] = 0x404E000000000000;
      v152 = v85;
      v47 = &v152;
      goto LABEL_138;
    }

    if (a1 == 63)
    {
      v37 = sub_20B9C7D00(63);
      v2 = [v37 imageWithRenderingMode_];

      v3 = type metadata accessor for SpriteSheetView();
      v38 = objc_allocWithZone(v3);
      v39 = &v38[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_offsetAnimationKey];
      *v39 = 0xD00000000000001DLL;
      *(v39 + 1) = 0x800000020C1A0930;
      v40 = MEMORY[0x277D84F90];
      *&v38[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_animations] = MEMORY[0x277D84F90];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_20BC062A0(0, *(v40 + 2) + 1, 1, v40);
      }

      v41 = 0;
      v42 = *(v40 + 2);
      v43 = 16 * v42;
      while (1)
      {
        v44 = *(v40 + 3);
        if (v42 + v41 >= v44 >> 1)
        {
          v40 = sub_20BC062A0((v44 > 1), v42 + v41 + 1, 1, v40);
        }

        *(v40 + 2) = v42 + v41 + 1;
        v45 = &v40[v43];
        *(v45 + 4) = v41 / 10.0;
        *(v45 + 5) = 0;
        if (v42 + v41 == 16)
        {
          break;
        }

        ++v41;
        v43 += 16;
        if (v41 == 10)
        {
          v119 = swift_isUniquelyReferenced_nonNull_native();
          if ((v119 & 1) == 0)
          {
            v40 = sub_20BC062A0(0, *(v40 + 2) + 1, 1, v40);
          }

          v120 = 0;
          v121 = *(v40 + 2);
          v122 = 16 * v121;
          do
          {
            v123 = *(v40 + 3);
            if (v121 + v120 >= v123 >> 1)
            {
              v40 = sub_20BC062A0((v123 > 1), v121 + v120 + 1, 1, v40);
            }

            *(v40 + 2) = v121 + v120 + 1;
            v124 = &v40[v122];
            *(v124 + 4) = v120 / 10.0;
            *(v124 + 5) = 0x3FE0000000000000;
            if (v121 + v120 == 16)
            {
              break;
            }

            v122 += 16;
            v125 = v120++ == 9;
          }

          while (!v125);
          break;
        }
      }

      *&v38[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_offsets] = v40;
      v126 = &v38[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_spriteSheet];
      *v126 = v2;
      *(v126 + 8) = xmmword_20C162AB0;
      *&v38[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_frameRate] = 0x404E000000000000;
      v147 = v38;
      v47 = &v147;
      goto LABEL_138;
    }

    goto LABEL_103;
  }

  switch(a1)
  {
    case 'A':
      v71 = sub_20B9C7D00(65);
      v2 = [v71 imageWithRenderingMode_];

      v3 = type metadata accessor for SpriteSheetView();
      v72 = objc_allocWithZone(v3);
      v73 = 0;
      v74 = &v72[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_offsetAnimationKey];
      *v74 = 0xD00000000000001DLL;
      *(v74 + 1) = 0x800000020C1A0930;
      v75 = MEMORY[0x277D84F90];
      *&v72[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_animations] = MEMORY[0x277D84F90];
LABEL_73:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v75 = sub_20BC062A0(0, *(v75 + 2) + 1, 1, v75);
      }

      v76 = 0;
      v77 = v73 + 1;
      v78 = vcvtd_n_f64_u64(v73, 2uLL);
      v79 = *(v75 + 2);
      v80 = 16 * v79;
      while (1)
      {
        v81 = *(v75 + 3);
        if (v79 + v76 >= v81 >> 1)
        {
          v75 = sub_20BC062A0((v81 > 1), v79 + v76 + 1, 1, v75);
        }

        *(v75 + 2) = v79 + v76 + 1;
        v82 = &v75[v80];
        *(v82 + 4) = v76 / 10.0;
        *(v82 + 5) = v78;
        if (v79 + v76 == 30)
        {
          break;
        }

        ++v76;
        v80 += 16;
        if (v76 == 10)
        {
          ++v73;
          if (v77 != 4)
          {
            goto LABEL_73;
          }

          break;
        }
      }

      *&v72[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_offsets] = v75;
      v83 = &v72[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_spriteSheet];
      *v83 = v2;
      *(v83 + 8) = xmmword_20C162AA0;
      *&v72[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_frameRate] = 0x404E000000000000;
      v148 = v72;
      v47 = &v148;
      break;
    case 'B':
      v98 = sub_20B9C7D00(66);
      v2 = [v98 imageWithRenderingMode_];

      v3 = type metadata accessor for SpriteSheetView();
      v99 = objc_allocWithZone(v3);
      v100 = 0;
      v101 = &v99[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_offsetAnimationKey];
      *v101 = 0xD00000000000001DLL;
      *(v101 + 1) = 0x800000020C1A0930;
      v102 = MEMORY[0x277D84F90];
      *&v99[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_animations] = MEMORY[0x277D84F90];
LABEL_94:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v102 = sub_20BC062A0(0, *(v102 + 2) + 1, 1, v102);
      }

      v103 = 0;
      v104 = v100 + 1;
      v105 = *(v102 + 2);
      v106 = 16 * v105;
      while (1)
      {
        v107 = *(v102 + 3);
        if (v105 + v103 >= v107 >> 1)
        {
          v102 = sub_20BC062A0((v107 > 1), v105 + v103 + 1, 1, v102);
        }

        *(v102 + 2) = v105 + v103 + 1;
        v108 = &v102[v106];
        *(v108 + 4) = v103 / 10.0;
        *(v108 + 5) = v100 / 11.0;
        if (v105 + v103 == 102)
        {
          break;
        }

        ++v103;
        v106 += 16;
        if (v103 == 10)
        {
          ++v100;
          if (v104 != 11)
          {
            goto LABEL_94;
          }

          break;
        }
      }

      *&v99[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_offsets] = v102;
      v109 = &v99[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_spriteSheet];
      *v109 = v2;
      *(v109 + 8) = xmmword_20C162A90;
      *&v99[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_frameRate] = 0x404E000000000000;
      v149 = v99;
      v47 = &v149;
      break;
    case 'H':
      v1 = sub_20B9C7D00(72);
      v2 = [v1 imageWithRenderingMode_];

      v3 = type metadata accessor for SpriteSheetView();
      v4 = objc_allocWithZone(v3);
      v5 = 0;
      v6 = &v4[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_offsetAnimationKey];
      *v6 = 0xD00000000000001DLL;
      *(v6 + 1) = 0x800000020C1A0930;
      v7 = MEMORY[0x277D84F90];
      *&v4[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_animations] = MEMORY[0x277D84F90];
LABEL_7:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_20BC062A0(0, *(v7 + 2) + 1, 1, v7);
      }

      v8 = 0;
      v9 = v5 + 1;
      v10 = *(v7 + 2);
      v11 = 16 * v10;
      while (1)
      {
        v12 = *(v7 + 3);
        if (v10 + v8 >= v12 >> 1)
        {
          v7 = sub_20BC062A0((v12 > 1), v10 + v8 + 1, 1, v7);
        }

        *(v7 + 2) = v10 + v8 + 1;
        v13 = &v7[v11];
        *(v13 + 4) = v8 / 10.0;
        *(v13 + 5) = v5 / 23.0;
        if (v10 + v8 == 223)
        {
          break;
        }

        ++v8;
        v11 += 16;
        if (v8 == 10)
        {
          ++v5;
          if (v9 != 23)
          {
            goto LABEL_7;
          }

          break;
        }
      }

      *&v4[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_offsets] = v7;
      v97 = &v4[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_spriteSheet];
      *v97 = v2;
      *(v97 + 8) = xmmword_20C162A70;
      *&v4[OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_frameRate] = 0x404E000000000000;
      v151 = v4;
      v47 = &v151;
      break;
    default:
      goto LABEL_103;
  }

LABEL_138:
  v47->super_class = v3;
  v141 = v2;
  v142 = [(objc_super *)v47 initWithFrame:0.0, 0.0, 0.0, 0.0];
  v143 = [(objc_super *)v142 layer];
  [v143 setContentsGravity_];

  v144 = [(objc_super *)v142 layer];
  [v144 setMasksToBounds_];

  sub_20B918360();
  *(&v142->receiver + OBJC_IVAR____TtC9SeymourUI15SpriteSheetView_frameRate) = 0x403E000000000000;
  return v142;
}