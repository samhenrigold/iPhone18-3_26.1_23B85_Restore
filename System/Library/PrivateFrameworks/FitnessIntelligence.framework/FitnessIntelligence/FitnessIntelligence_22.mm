void sub_1B4B91110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB7C0, &unk_1B4D47180);
  v8 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  v26 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
    v17 = *(v8 + 72);
    v18 = v16 + v17 * (a3 - 1);
    v31 = -v17;
    v32 = v16;
    v19 = a1 - a3;
    v25 = v17;
    v20 = v16 + v17 * a3;
LABEL_5:
    v29 = v18;
    v30 = a3;
    v27 = v20;
    v28 = v19;
    while (1)
    {
      sub_1B4974FBC(v20, v15, &qword_1EB8AB7C0, &unk_1B4D47180);
      sub_1B4974FBC(v18, v12, &qword_1EB8AB7C0, &unk_1B4D47180);
      sub_1B4B9474C(&qword_1EDC37878, &qword_1EB8A6830, &unk_1B4D1AB40);
      v21 = sub_1B4D180EC();
      sub_1B4975024(v12, &qword_1EB8AB7C0, &unk_1B4D47180);
      sub_1B4975024(v15, &qword_1EB8AB7C0, &unk_1B4D47180);
      if ((v21 & 1) == 0)
      {
LABEL_4:
        a3 = v30 + 1;
        v18 = v29 + v25;
        v19 = v28 - 1;
        v20 = v27 + v25;
        if (v30 + 1 == v26)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v32)
      {
        break;
      }

      v22 = v33;
      sub_1B498B270(v20, v33, &qword_1EB8AB7C0, &unk_1B4D47180);
      swift_arrayInitWithTakeFrontToBack();
      sub_1B498B270(v22, v18, &qword_1EB8AB7C0, &unk_1B4D47180);
      v18 += v31;
      v20 += v31;
      if (__CFADD__(v19++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1B4B913A0(unint64_t *a1, uint64_t a2, uint64_t a3, int64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, unint64_t *a9, void (*a10)(uint64_t, uint64_t, uint64_t, unint64_t))
{
  v139 = a7;
  v140 = a8;
  v12 = a6;
  v14 = v11;
  v122 = a1;
  v130 = a10;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v133 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v125 = &v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v136 = &v119 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v142 = &v119 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v141 = &v119 - v23;
  v24 = *(a3 + 8);
  v127 = a3;
  if (v24 < 1)
  {
    v26 = MEMORY[0x1E69E7CC0];
LABEL_97:
    a4 = *v122;
    if (!*v122)
    {
      goto LABEL_137;
    }

    v10 = v26;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v113 = v10;
    }

    else
    {
LABEL_131:
      v113 = sub_1B4CDDE84(v10);
    }

    v144 = v113;
    v10 = *(v113 + 2);
    if (v10 >= 2)
    {
      v114 = v130;
      do
      {
        v115 = *a3;
        if (!*a3)
        {
          goto LABEL_135;
        }

        v116 = *&v113[16 * v10];
        v117 = v113;
        a3 = *&v113[16 * v10 + 24];
        v114(v115 + *(v133 + 72) * v116, v115 + *(v133 + 72) * *&v113[16 * v10 + 16], v115 + *(v133 + 72) * a3, a4);
        if (v14)
        {
          break;
        }

        if (a3 < v116)
        {
          goto LABEL_124;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v117 = sub_1B4CDDE84(v117);
        }

        if (v10 - 2 >= *(v117 + 2))
        {
          goto LABEL_125;
        }

        v118 = &v117[16 * v10];
        *v118 = v116;
        v118[1] = a3;
        v144 = v117;
        sub_1B4CDDDF8(v10 - 1);
        v113 = v144;
        v10 = *(v144 + 2);
        a3 = v127;
      }

      while (v10 > 1);
    }

LABEL_109:

    return;
  }

  v25 = 0;
  v138 = a9;
  v26 = MEMORY[0x1E69E7CC0];
  v121 = a4;
  v143 = v12;
  while (1)
  {
    v126 = v26;
    if (v25 + 1 >= v24)
    {
      v37 = v25 + 1;
    }

    else
    {
      v134 = v24;
      v120 = v14;
      v129 = *a3;
      v27 = v129;
      v28 = *(v133 + 72);
      v29 = v129 + v28 * (v25 + 1);
      v30 = v12;
      v31 = v141;
      sub_1B4974FBC(v29, v141, a5, v30);
      v32 = v142;
      sub_1B4974FBC(v27 + v28 * v25, v142, a5, v30);
      v123 = v25;
      v34 = v139;
      v33 = v140;
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v139, v140);
      v131 = sub_1B4B9474C(v138, v34, v33);
      LODWORD(v132) = sub_1B4D180EC();
      sub_1B4975024(v32, a5, v30);
      sub_1B4975024(v31, a5, v30);
      v35 = v123 + 2;
      v135 = v28;
      v36 = v129 + v28 * (v123 + 2);
      while (1)
      {
        v37 = v134;
        if (v134 == v35)
        {
          break;
        }

        v38 = v141;
        v39 = v143;
        sub_1B4974FBC(v36, v141, a5, v143);
        v40 = v142;
        sub_1B4974FBC(v29, v142, a5, v39);
        v41 = sub_1B4D180EC() & 1;
        sub_1B4975024(v40, a5, v39);
        sub_1B4975024(v38, a5, v39);
        ++v35;
        v36 += v135;
        v29 += v135;
        if ((v132 & 1) != v41)
        {
          v37 = v35 - 1;
          goto LABEL_9;
        }
      }

      v14 = v120;
      a3 = v127;
      a4 = v121;
      v25 = v123;
      if ((v132 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_9:
      if (v37 < v123)
      {
        goto LABEL_128;
      }

      if (v123 < v37)
      {
        v42 = v135 * (v37 - 1);
        v43 = v37 * v135;
        v44 = v37;
        v45 = v123 * v135;
        do
        {
          if (v25 != --v44)
          {
            v46 = *a3;
            if (!v46)
            {
              goto LABEL_134;
            }

            v47 = v37;
            v10 = v46 + v45;
            sub_1B498B270(v46 + v45, v125, a5, v143);
            if (v45 < v42 || v10 >= v46 + v43)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v45 != v42)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1B498B270(v125, v46 + v42, a5, v143);
            a3 = v127;
            v37 = v47;
          }

          ++v25;
          v42 -= v135;
          v43 -= v135;
          v45 += v135;
        }

        while (v25 < v44);
        v14 = v120;
        a4 = v121;
        v12 = v143;
        v25 = v123;
      }

      else
      {
LABEL_23:
        v12 = v143;
      }
    }

    v48 = *(a3 + 8);
    if (v37 < v48)
    {
      if (__OFSUB__(v37, v25))
      {
        goto LABEL_127;
      }

      if (v37 - v25 < a4)
      {
        if (__OFADD__(v25, a4))
        {
          goto LABEL_129;
        }

        if (v25 + a4 >= v48)
        {
          v49 = *(a3 + 8);
        }

        else
        {
          v49 = v25 + a4;
        }

        if (v49 < v25)
        {
LABEL_130:
          __break(1u);
          goto LABEL_131;
        }

        if (v37 != v49)
        {
          break;
        }
      }
    }

    v50 = v37;
    if (v37 < v25)
    {
      goto LABEL_126;
    }

LABEL_35:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v26 = v126;
    }

    else
    {
      v26 = sub_1B4A1D58C(0, *(v126 + 2) + 1, 1, v126);
    }

    a4 = *(v26 + 2);
    v51 = *(v26 + 3);
    v10 = a4 + 1;
    if (a4 >= v51 >> 1)
    {
      v26 = sub_1B4A1D58C((v51 > 1), a4 + 1, 1, v26);
    }

    *(v26 + 2) = v10;
    v52 = &v26[16 * a4];
    *(v52 + 4) = v25;
    *(v52 + 5) = v50;
    v53 = *v122;
    if (!*v122)
    {
      goto LABEL_136;
    }

    v128 = v50;
    if (a4)
    {
      v54 = v53;
      while (1)
      {
        v55 = v10 - 1;
        if (v10 >= 4)
        {
          break;
        }

        if (v10 == 3)
        {
          v56 = *(v26 + 4);
          v57 = *(v26 + 5);
          v66 = __OFSUB__(v57, v56);
          v58 = v57 - v56;
          v59 = v66;
LABEL_55:
          if (v59)
          {
            goto LABEL_115;
          }

          v72 = &v26[16 * v10];
          v74 = *v72;
          v73 = *(v72 + 1);
          v75 = __OFSUB__(v73, v74);
          v76 = v73 - v74;
          v77 = v75;
          if (v75)
          {
            goto LABEL_118;
          }

          v78 = &v26[16 * v55 + 32];
          v80 = *v78;
          v79 = *(v78 + 1);
          v66 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v66)
          {
            goto LABEL_121;
          }

          if (__OFADD__(v76, v81))
          {
            goto LABEL_122;
          }

          if (v76 + v81 >= v58)
          {
            if (v58 < v81)
            {
              v55 = v10 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v82 = &v26[16 * v10];
        v84 = *v82;
        v83 = *(v82 + 1);
        v66 = __OFSUB__(v83, v84);
        v76 = v83 - v84;
        v77 = v66;
LABEL_69:
        if (v77)
        {
          goto LABEL_117;
        }

        v85 = &v26[16 * v55];
        v87 = *(v85 + 4);
        v86 = *(v85 + 5);
        v66 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v66)
        {
          goto LABEL_120;
        }

        if (v88 < v76)
        {
          goto LABEL_3;
        }

LABEL_76:
        a4 = v55 - 1;
        if (v55 - 1 >= v10)
        {
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
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (!*a3)
        {
          goto LABEL_133;
        }

        v93 = v26;
        v10 = *&v26[16 * a4 + 32];
        v94 = *&v26[16 * v55 + 40];
        v130(*a3 + *(v133 + 72) * v10, *a3 + *(v133 + 72) * *&v26[16 * v55 + 32], *a3 + *(v133 + 72) * v94, v54);
        if (v14)
        {
          goto LABEL_109;
        }

        if (v94 < v10)
        {
          goto LABEL_111;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v93 = sub_1B4CDDE84(v93);
        }

        if (a4 >= *(v93 + 2))
        {
          goto LABEL_112;
        }

        v95 = &v93[16 * a4];
        *(v95 + 4) = v10;
        *(v95 + 5) = v94;
        v144 = v93;
        sub_1B4CDDDF8(v55);
        v26 = v144;
        v10 = *(v144 + 2);
        v12 = v143;
        if (v10 <= 1)
        {
          goto LABEL_3;
        }
      }

      v60 = &v26[16 * v10 + 32];
      v61 = *(v60 - 64);
      v62 = *(v60 - 56);
      v66 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      if (v66)
      {
        goto LABEL_113;
      }

      v65 = *(v60 - 48);
      v64 = *(v60 - 40);
      v66 = __OFSUB__(v64, v65);
      v58 = v64 - v65;
      v59 = v66;
      if (v66)
      {
        goto LABEL_114;
      }

      v67 = &v26[16 * v10];
      v69 = *v67;
      v68 = *(v67 + 1);
      v66 = __OFSUB__(v68, v69);
      v70 = v68 - v69;
      if (v66)
      {
        goto LABEL_116;
      }

      v66 = __OFADD__(v58, v70);
      v71 = v58 + v70;
      if (v66)
      {
        goto LABEL_119;
      }

      if (v71 >= v63)
      {
        v89 = &v26[16 * v55 + 32];
        v91 = *v89;
        v90 = *(v89 + 1);
        v66 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v66)
        {
          goto LABEL_123;
        }

        if (v58 < v92)
        {
          v55 = v10 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v24 = *(a3 + 8);
    v25 = v128;
    a4 = v121;
    if (v128 >= v24)
    {
      goto LABEL_97;
    }
  }

  v120 = v14;
  v96 = *a3;
  v97 = v37;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(v139, v140);
  v99 = v97;
  v10 = v98;
  v100 = *(v133 + 72);
  v101 = v96 + v100 * (v97 - 1);
  a4 = -v100;
  v123 = v25;
  v124 = v100;
  v102 = v25 - v99;
  v135 = v96;
  v103 = v96 + v99 * v100;
  v128 = v49;
LABEL_87:
  v134 = v99;
  v129 = v103;
  v104 = v103;
  v131 = v102;
  v132 = v101;
  v105 = v102;
  v106 = v101;
  while (1)
  {
    v107 = v141;
    sub_1B4974FBC(v104, v141, a5, v12);
    v108 = v142;
    sub_1B4974FBC(v106, v142, a5, v143);
    sub_1B4B9474C(v138, v139, v140);
    v109 = sub_1B4D180EC();
    v110 = v108;
    v12 = v143;
    sub_1B4975024(v110, a5, v143);
    sub_1B4975024(v107, a5, v12);
    if ((v109 & 1) == 0)
    {
LABEL_86:
      v99 = v134 + 1;
      v101 = v132 + v124;
      v102 = v131 - 1;
      v50 = v128;
      v103 = v129 + v124;
      if (v134 + 1 != v128)
      {
        goto LABEL_87;
      }

      v14 = v120;
      a3 = v127;
      v25 = v123;
      if (v128 < v123)
      {
        goto LABEL_126;
      }

      goto LABEL_35;
    }

    if (!v135)
    {
      break;
    }

    v111 = v136;
    sub_1B498B270(v104, v136, a5, v12);
    swift_arrayInitWithTakeFrontToBack();
    sub_1B498B270(v111, v106, a5, v12);
    v106 += a4;
    v104 += a4;
    if (__CFADD__(v105++, 1))
    {
      goto LABEL_86;
    }
  }

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
}

void sub_1B4B91D58(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB7D8, &qword_1B4D3B8B0);
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v47 = &v39 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_60;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v15 = (a2 - a1) / v13;
  v52 = a1;
  v51 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v17;
    if (v17 >= 1)
    {
      v27 = -v13;
      v28 = v26;
      v42 = a4;
      v43 = v27;
      v46 = v8;
      v49 = a1;
      do
      {
        v40 = v26;
        v29 = a2;
        v30 = a2 + v27;
        v44 = v29;
        v45 = v30;
        while (1)
        {
          if (v29 <= a1)
          {
            v52 = v29;
            v50 = v40;
            goto LABEL_58;
          }

          v32 = a3;
          v41 = v26;
          v33 = a3 + v27;
          v34 = v28 + v27;
          v35 = v47;
          sub_1B4974FBC(v34, v47, &qword_1EB8AB7D8, &qword_1B4D3B8B0);
          v36 = v30;
          v37 = v48;
          sub_1B4974FBC(v36, v48, &qword_1EB8AB7D8, &qword_1B4D3B8B0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
          sub_1B4B9474C(&qword_1EDC37870, &qword_1EB8A6850, &unk_1B4D1BC10);
          v38 = sub_1B4D180EC();
          sub_1B4975024(v37, &qword_1EB8AB7D8, &qword_1B4D3B8B0);
          sub_1B4975024(v35, &qword_1EB8AB7D8, &qword_1B4D3B8B0);
          if (v38)
          {
            break;
          }

          v26 = v34;
          a3 = v33;
          if (v32 < v28 || v33 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v45;
            a1 = v49;
          }

          else
          {
            v30 = v45;
            a1 = v49;
            if (v32 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v28 = v34;
          v31 = v34 > v42;
          v27 = v43;
          v29 = v44;
          if (!v31)
          {
            a2 = v44;
            goto LABEL_57;
          }
        }

        a3 = v33;
        if (v32 < v44 || v33 >= v44)
        {
          a2 = v45;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v41;
          a1 = v49;
          v27 = v43;
        }

        else
        {
          a2 = v45;
          v26 = v41;
          a1 = v49;
          v27 = v43;
          if (v32 != v44)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v28 > v42);
    }

LABEL_57:
    v52 = a2;
    v50 = v26;
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

    v45 = a4 + v16;
    v50 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      v46 = v8;
      v43 = v13;
      v44 = a3;
      v19 = v48;
      do
      {
        v49 = a1;
        v20 = v47;
        v21 = a2;
        sub_1B4974FBC(a2, v47, &qword_1EB8AB7D8, &qword_1B4D3B8B0);
        sub_1B4974FBC(a4, v19, &qword_1EB8AB7D8, &qword_1B4D3B8B0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
        sub_1B4B9474C(&qword_1EDC37870, &qword_1EB8A6850, &unk_1B4D1BC10);
        v22 = sub_1B4D180EC();
        sub_1B4975024(v19, &qword_1EB8AB7D8, &qword_1B4D3B8B0);
        sub_1B4975024(v20, &qword_1EB8AB7D8, &qword_1B4D3B8B0);
        if (v22)
        {
          v23 = v43;
          a2 += v43;
          v24 = v49;
          if (v49 < v21 || v49 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v49 != v21)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          v23 = v43;
          v25 = a4 + v43;
          v24 = v49;
          if (v49 < a4 || v49 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v49 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v51 = v25;
          a4 += v23;
        }

        a1 = v24 + v23;
        v52 = a1;
      }

      while (a4 < v45 && a2 < v44);
    }
  }

LABEL_58:
  sub_1B4CDDE98(&v52, &v51, &v50);
}

void sub_1B4B9230C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB7C0, &unk_1B4D47180);
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v47 = &v39 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_60;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v15 = (a2 - a1) / v13;
  v52 = a1;
  v51 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v17;
    if (v17 >= 1)
    {
      v27 = -v13;
      v28 = v26;
      v42 = a4;
      v43 = v27;
      v46 = v8;
      v49 = a1;
      do
      {
        v40 = v26;
        v29 = a2;
        v30 = a2 + v27;
        v44 = v29;
        v45 = v30;
        while (1)
        {
          if (v29 <= a1)
          {
            v52 = v29;
            v50 = v40;
            goto LABEL_58;
          }

          v32 = a3;
          v41 = v26;
          v33 = a3 + v27;
          v34 = v28 + v27;
          v35 = v47;
          sub_1B4974FBC(v34, v47, &qword_1EB8AB7C0, &unk_1B4D47180);
          v36 = v30;
          v37 = v48;
          sub_1B4974FBC(v36, v48, &qword_1EB8AB7C0, &unk_1B4D47180);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
          sub_1B4B9474C(&qword_1EDC37878, &qword_1EB8A6830, &unk_1B4D1AB40);
          v38 = sub_1B4D180EC();
          sub_1B4975024(v37, &qword_1EB8AB7C0, &unk_1B4D47180);
          sub_1B4975024(v35, &qword_1EB8AB7C0, &unk_1B4D47180);
          if (v38)
          {
            break;
          }

          v26 = v34;
          a3 = v33;
          if (v32 < v28 || v33 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v45;
            a1 = v49;
          }

          else
          {
            v30 = v45;
            a1 = v49;
            if (v32 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v28 = v34;
          v31 = v34 > v42;
          v27 = v43;
          v29 = v44;
          if (!v31)
          {
            a2 = v44;
            goto LABEL_57;
          }
        }

        a3 = v33;
        if (v32 < v44 || v33 >= v44)
        {
          a2 = v45;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v41;
          a1 = v49;
          v27 = v43;
        }

        else
        {
          a2 = v45;
          v26 = v41;
          a1 = v49;
          v27 = v43;
          if (v32 != v44)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v28 > v42);
    }

LABEL_57:
    v52 = a2;
    v50 = v26;
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

    v45 = a4 + v16;
    v50 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      v46 = v8;
      v43 = v13;
      v44 = a3;
      v19 = v48;
      do
      {
        v49 = a1;
        v20 = v47;
        v21 = a2;
        sub_1B4974FBC(a2, v47, &qword_1EB8AB7C0, &unk_1B4D47180);
        sub_1B4974FBC(a4, v19, &qword_1EB8AB7C0, &unk_1B4D47180);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
        sub_1B4B9474C(&qword_1EDC37878, &qword_1EB8A6830, &unk_1B4D1AB40);
        v22 = sub_1B4D180EC();
        sub_1B4975024(v19, &qword_1EB8AB7C0, &unk_1B4D47180);
        sub_1B4975024(v20, &qword_1EB8AB7C0, &unk_1B4D47180);
        if (v22)
        {
          v23 = v43;
          a2 += v43;
          v24 = v49;
          if (v49 < v21 || v49 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v49 != v21)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          v23 = v43;
          v25 = a4 + v43;
          v24 = v49;
          if (v49 < a4 || v49 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v49 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v51 = v25;
          a4 += v23;
        }

        a1 = v24 + v23;
        v52 = a1;
      }

      while (a4 < v45 && a2 < v44);
    }
  }

LABEL_58:
  sub_1B4CDDEAC(&v52, &v51, &v50);
}

unint64_t sub_1B4B928C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DateRangeDescriptor(0);
  v7 = *(v6 - 8);
  v110 = v6;
  v111 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v106 = &v88 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67A8, &qword_1B4D1E060);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v107 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v88 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v105 = &v88 - v18;
  MEMORY[0x1EEE9AC00](v19);
  Descriptor = &v88 - v20;
  v21 = type metadata accessor for WorkoutPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_1B4D1777C();
  v24 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v112 = &v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a2 - 8);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v88 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v30, a1, a2, v28);
  v31 = sub_1B498AFB8(0, &qword_1EB8A6C80, 0x1E699C9F8);
  sub_1B49A79FC(v30, v31, a2, a3);
  v33 = *(v32 + 16);
  v34 = 32;
  while (v33)
  {
    v35 = *(v32 + v34);
    v34 += 8;
    --v33;
    if (v35 == 1)
    {
      v104 = v16;
      v97 = v9;

      v36 = v21;
      v37 = v112;
      (*(a3 + 80))(a2, a3);
      v96 = v24;
      v102 = *(v24 + 16);
      v102(v23, v37, v113);
      v38 = v110;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B50, &qword_1B4D1D580);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_1B4D1A800;
      v40 = *(a3 + 56);
      v98 = v30;
      v100 = a2;
      v41 = v40(a2, a3);
      v42 = [v41 effectiveTypeIdentifier];

      *(v39 + 32) = v42;
      v43 = MEMORY[0x1E69E7CC0];
      v44 = &v23[v36[5]];
      *v44 = MEMORY[0x1E69E7CC0];
      *(v44 + 1) = v43;
      *(v44 + 2) = v43;
      *(v44 + 3) = v39;
      *(v44 + 4) = v43;
      *(v44 + 5) = v43;
      *&v23[v36[6]] = &unk_1F2CBB050;
      v95 = v36;
      *&v23[v36[7]] = &unk_1F2CBB078;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAF58, &qword_1B4D325E8);
      v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAF60, &qword_1B4D325F0);
      v45 = (*(*(v108 - 8) + 80) + 32) & ~*(*(v108 - 8) + 80);
      v92 = *(*(v108 - 8) + 72);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_1B4D1AA70;
      v94 = v46;
      v103 = v46 + v45;
      *(v46 + v45) = 2;
      v47 = Descriptor;
      v93 = v24 + 16;
      v102(Descriptor, v112, v113);
      swift_storeEnumTagMultiPayload();
      v48 = v23;
      v49 = v38;
      v50 = v111;
      v51 = *(v111 + 56);
      v90 = v111 + 56;
      v89 = v51;
      v51(v47, 0, 1, v38);
      v52 = v47;
      v53 = v105;
      sub_1B4974FBC(v52, v105, &qword_1EB8A67A8, &qword_1B4D1E060);
      v54 = *(v50 + 48);
      v55 = v54(v53, 1, v38);
      v99 = v26;
      v101 = v48;
      v111 = v50 + 48;
      v91 = v54;
      if (v55 == 1)
      {
        v56 = v106;
        sub_1B4B94680(v48, v106);
        if (v54(v53, 1, v49) != 1)
        {
          sub_1B4975024(v53, &qword_1EB8A67A8, &qword_1B4D1E060);
        }
      }

      else
      {
        v56 = v106;
        sub_1B4B946E4(v53, v106, type metadata accessor for DateRangeDescriptor);
      }

      v63 = v103;
      v64 = v103 + *(v108 + 48);
      v65 = *v44;
      v66 = *(v44 + 1);
      v68 = *(v44 + 2);
      v67 = *(v44 + 3);
      v69 = *(v44 + 4);
      v70 = *(v44 + 5);
      sub_1B4B94680(v56, v64);

      sub_1B49BFEC0(v56, type metadata accessor for DateRangeDescriptor);
      v71 = v95;
      v72 = (v64 + v95[5]);
      *v72 = v65;
      v72[1] = v66;
      v72[2] = v68;
      v72[3] = v67;
      v72[4] = v69;
      v72[5] = v70;
      *(v64 + v71[6]) = &unk_1F2CBB050;
      *(v64 + v71[7]) = &unk_1F2CBB078;
      sub_1B4975024(Descriptor, &qword_1EB8A67A8, &qword_1B4D1E060);
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
      swift_storeEnumTagMultiPayload();
      v73 = v63 + v92;
      *(v63 + v92) = 3;
      v74 = v104;
      v102(v104, v112, v113);
      v75 = v110;
      swift_storeEnumTagMultiPayload();
      v89(v74, 0, 1, v75);
      v76 = v107;
      sub_1B4974FBC(v74, v107, &qword_1EB8A67A8, &qword_1B4D1E060);
      v77 = v91;
      if (v91(v76, 1, v75) == 1)
      {
        v78 = v97;
        sub_1B4B94680(v101, v97);
        if (v77(v76, 1, v75) != 1)
        {
          sub_1B4975024(v76, &qword_1EB8A67A8, &qword_1B4D1E060);
        }
      }

      else
      {
        v78 = v97;
        sub_1B4B946E4(v76, v97, type metadata accessor for DateRangeDescriptor);
      }

      v79 = v73 + *(v108 + 48);
      v80 = *v44;
      v81 = *(v44 + 1);
      v82 = *(v44 + 2);
      v83 = *(v44 + 3);
      v84 = *(v44 + 4);
      v85 = *(v44 + 5);
      sub_1B4B94680(v78, v79);

      sub_1B49BFEC0(v78, type metadata accessor for DateRangeDescriptor);
      v86 = (v79 + v71[5]);
      *v86 = v80;
      v86[1] = v81;
      v86[2] = v82;
      v86[3] = v83;
      v86[4] = v84;
      v86[5] = v85;
      *(v79 + v71[6]) = &unk_1F2CBB050;
      *(v79 + v71[7]) = &unk_1F2CBB078;
      sub_1B4975024(v104, &qword_1EB8A67A8, &qword_1B4D1E060);
      swift_storeEnumTagMultiPayload();
      v62 = sub_1B4C95FE8(v94);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_1B49BFEC0(v101, type metadata accessor for WorkoutPropertiesQuery);
      (*(v96 + 8))(v112, v113);
      v26 = v99;
      a2 = v100;
      v30 = v98;
      goto LABEL_18;
    }
  }

  if (qword_1EDC36EF8 != -1)
  {
    swift_once();
  }

  v57 = sub_1B4D17F6C();
  __swift_project_value_buffer(v57, qword_1EDC36F00);
  v58 = sub_1B4D17F5C();
  v59 = sub_1B4D1873C();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v114 = v61;
    *v60 = 136315138;
    *(v60 + 4) = sub_1B49558AC(0xD000000000000028, 0x80000001B4D62220, &v114);
    _os_log_impl(&dword_1B4953000, v58, v59, "%s does not support this workout state", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v61);
    MEMORY[0x1B8C7DDA0](v61, -1, -1);
    MEMORY[0x1B8C7DDA0](v60, -1, -1);
  }

  v62 = sub_1B4C95FE8(MEMORY[0x1E69E7CC0]);
LABEL_18:
  (*(v26 + 8))(v30, a2);
  return v62;
}

uint64_t sub_1B4B933AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a3;
  v4[27] = a4;
  v4[24] = a1;
  v4[25] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  v4[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB7A8, &qword_1B4D35930);
  v4[32] = swift_task_alloc();
  v5 = type metadata accessor for WorkoutVoiceMilestoneWorkoutDistanceFact(0);
  v4[33] = v5;
  v4[34] = *(v5 - 8);
  v4[35] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v4[36] = v6;
  v4[37] = *(v6 - 8);
  v4[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7978, &unk_1B4D1F2F0);
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6840, &unk_1B4D20FA0);
  v4[41] = v7;
  v4[42] = *(v7 - 8);
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0);
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v8 = type metadata accessor for WorkoutState(0);
  v4[47] = v8;
  v4[48] = *(v8 - 8);
  v4[49] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4B936F0, 0, 0);
}

uint64_t sub_1B4B936F0()
{
  v101 = v0;
  v1 = v0[47];
  v2 = v0[48];
  v3 = v0[46];
  sub_1B4974FBC(v0[26], v3, &qword_1EB8A6A98, &unk_1B4D1CBE0);
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    sub_1B4975024(v0[46], &qword_1EB8A6A98, &unk_1B4D1CBE0);
LABEL_14:
    if (qword_1EDC36EF8 != -1)
    {
      swift_once();
    }

    v24 = sub_1B4D17F6C();
    __swift_project_value_buffer(v24, qword_1EDC36F00);
    v25 = sub_1B4D17F5C();
    v26 = sub_1B4D1873C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v99 = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_1B49558AC(0xD000000000000028, 0x80000001B4D62220, &v99);
      _os_log_impl(&dword_1B4953000, v25, v26, "Context or snapshots don't exist for %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x1B8C7DDA0](v28, -1, -1);
      MEMORY[0x1B8C7DDA0](v27, -1, -1);
    }

LABEL_19:
    v97 = MEMORY[0x1E69E7CC0];
    goto LABEL_20;
  }

  v5 = v0[49];
  sub_1B4B946E4(v0[46], v5, type metadata accessor for WorkoutState);
  v6 = sub_1B4CAC70C(v5);
  v7 = *(v6 + 2);
  v8 = 32;
  do
  {
    if (!v7)
    {
      v22 = v0[49];
LABEL_10:

      goto LABEL_11;
    }

    v9 = *&v6[v8];
    v8 += 8;
    --v7;
  }

  while (v9 != 1);
  v96 = v4;
  v10 = v0[24];

  v11 = v10[3];
  v12 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v0[22] = &type metadata for WorkoutVoiceMilestoneWorkoutDistanceFact.QueryIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6808, &unk_1B4D1AB20);
  v99 = sub_1B4D181CC();
  v100 = v13;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  v95 = v0;
  MEMORY[0x1B8C7C620](0xD00000000000001DLL, 0x80000001B4D4AAF0);

  (*(v12 + 8))(v99, v100, &type metadata for WorkoutProperties, &type metadata for WorkoutProperties, v11, v12);

  v14 = v0[18];
  if (!v14)
  {
    v23 = v0[49];
    goto LABEL_13;
  }

  v16 = v10[3];
  v15 = v10[4];
  __swift_project_boxed_opaque_existential_1(v0[24], v16);
  v0[23] = &type metadata for WorkoutVoiceMilestoneWorkoutDistanceFact.QueryIdentifier;
  v99 = sub_1B4D181CC();
  v100 = v17;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000019, 0x80000001B4D4AB10);

  (*(v15 + 8))(v99, v100, &type metadata for WorkoutProperties, &type metadata for WorkoutProperties, v16, v15);

  v18 = v0[21];
  if (!v18)
  {
    v22 = v0[49];
    goto LABEL_10;
  }

  v19 = v0[19];
  v20 = v0[20];
  v21 = v0[40];
  *(v0 + 5) = 0u;
  *(v0 + 6) = 0u;
  *(v0 + 7) = 0u;
  sub_1B4CE458C(v0 + 10, v14, v21);
  v32 = v0[41];
  v31 = v0[42];
  v33 = v0[40];

  v34 = *(v31 + 48);
  v35 = v34(v33, 1, v32);
  if (v35 == 1)
  {
    v22 = v0[49];
    v36 = v0[40];

    sub_1B4975024(v36, &qword_1EB8A7978, &unk_1B4D1F2F0);
LABEL_11:
    v23 = v22;
LABEL_13:
    sub_1B49BFEC0(v23, type metadata accessor for WorkoutState);
    goto LABEL_14;
  }

  v37 = v0[39];
  sub_1B498B270(v0[40], v0[44], &qword_1EB8A6840, &unk_1B4D20FA0);
  sub_1B4CE458C(v0 + 10, v18, v37);
  v38 = v0[41];
  v39 = v0[39];
  if (v34(v39, 1, v38) == 1)
  {
    v40 = v0[49];
    sub_1B4975024(v0[44], &qword_1EB8A6840, &unk_1B4D20FA0);

    sub_1B4975024(v39, &qword_1EB8A7978, &unk_1B4D1F2F0);
    v23 = v40;
    goto LABEL_13;
  }

  v41 = v0[44];
  sub_1B498B270(v39, v0[43], &qword_1EB8A6840, &unk_1B4D20FA0);
  if (*(v41 + *(v38 + 28)) >= 1)
  {
    sub_1B4D1742C();
  }

  v42 = v0[43];
  sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
  v43 = [swift_getObjCClassFromMetadata() baseUnit];
  sub_1B4D1741C();
  v44 = *(v42 + *(v38 + 28));
  v45 = v0[49];
  if (v44 < 1)
  {
    v60 = v0[43];
    v59 = v0[44];
    v61 = v0[37];
    v62 = v0[38];
    v63 = v0[36];

    (*(v61 + 8))(v62, v63);
    sub_1B4975024(v60, &qword_1EB8A6840, &unk_1B4D20FA0);
    sub_1B4975024(v59, &qword_1EB8A6840, &unk_1B4D20FA0);
    sub_1B49BFEC0(v45, type metadata accessor for WorkoutState);
    goto LABEL_19;
  }

  v94 = v44;
  v86 = v0[49];
  v46 = v0[47];
  v47 = v0[37];
  v48 = v18;
  v49 = v95[36];
  v50 = v95[31];
  v89 = v95[30];
  v87 = v95[38];
  v88 = v95[28];
  v90 = v95[27];
  v91 = v95[45];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7540, &qword_1B4D1E440);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B4D1A800;
  *(inited + 32) = 3;
  v52 = inited + 32;
  *(inited + 40) = v19;
  *(inited + 48) = v20;
  *(inited + 56) = v48;
  v93 = sub_1B4C95564(inited);
  swift_setDeallocating();
  sub_1B4975024(v52, &qword_1EB8A7548, &qword_1B4D1E448);
  v92 = [*(v86 + *(v46 + 24)) effectiveTypeIdentifier];
  (*(v47 + 16))(v50, v87, v49);
  v53 = *(v47 + 56);
  v53(v50, 0, 1, v49);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  (*(*(v54 - 8) + 56))(v88, 1, 1, v54);
  sub_1B4974FBC(v86 + *(v46 + 60), v89, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  sub_1B4974FBC(v90, v91, &qword_1EB8A6A98, &unk_1B4D1CBE0);
  v55 = v96(v91, 1, v46);
  v56 = v95[45];
  if (v55 == 1)
  {
    v57 = v95[36];
    v58 = v95[29];
    sub_1B4975024(v56, &qword_1EB8A6A98, &unk_1B4D1CBE0);
    v53(v58, 1, 1, v57);
  }

  else
  {
    v64 = v95[45];
    sub_1B4974FBC(v56 + *(v46 + 60), v95[29], &qword_1EB8A6CC0, &unk_1B4D1BC00);
    sub_1B49BFEC0(v64, type metadata accessor for WorkoutState);
  }

  v65 = v95[49];
  v66 = v95[34];
  v98 = v95[33];
  v68 = v95[31];
  v67 = v95[32];
  v70 = v95[29];
  v69 = v95[30];
  v71 = v95[28];
  v72 = v95[25];
  v73 = swift_task_alloc();
  *(v73 + 16) = v65;
  *(v73 + 24) = v94;
  sub_1B4B8B05C(1, v93, v92, v68, v71, v69, v70, 1, v67, v72, sub_1B4B94620, v73);

  sub_1B4975024(v70, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  sub_1B4975024(v69, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  v0 = v95;
  sub_1B4975024(v71, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  sub_1B4975024(v68, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  v74 = (*(v66 + 48))(v67, 1, v98);
  v75 = v95[49];
  v77 = v95[43];
  v76 = v95[44];
  v78 = v95[37];
  v79 = v95[38];
  v80 = v95[36];
  if (v74 == 1)
  {
    sub_1B4975024(v95[32], &qword_1EB8AB7A8, &qword_1B4D35930);
    (*(v78 + 8))(v79, v80);
    sub_1B4975024(v77, &qword_1EB8A6840, &unk_1B4D20FA0);
    sub_1B4975024(v76, &qword_1EB8A6840, &unk_1B4D20FA0);
    sub_1B49BFEC0(v75, type metadata accessor for WorkoutState);
    goto LABEL_19;
  }

  v82 = v95[34];
  v81 = v95[35];
  sub_1B4B946E4(v95[32], v81, type metadata accessor for WorkoutVoiceMilestoneWorkoutDistanceFact);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB7B0, &qword_1B4D35938);
  v83 = (*(v82 + 80) + 32) & ~*(v82 + 80);
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_1B4D1A800;
  v97 = v84;
  v85 = v84 + v83;
  v0 = v95;
  sub_1B4B946E4(v81, v85, type metadata accessor for WorkoutVoiceMilestoneWorkoutDistanceFact);
  (*(v78 + 8))(v79, v80);
  sub_1B4975024(v77, &qword_1EB8A6840, &unk_1B4D20FA0);
  sub_1B4975024(v76, &qword_1EB8A6840, &unk_1B4D20FA0);
  sub_1B49BFEC0(v75, type metadata accessor for WorkoutState);
LABEL_20:

  v29 = v0[1];

  return v29(v97);
}

unint64_t sub_1B4B94438()
{
  result = qword_1EB8AB780;
  if (!qword_1EB8AB780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB780);
  }

  return result;
}

unint64_t sub_1B4B9448C(uint64_t a1)
{
  *(a1 + 8) = sub_1B4B944BC();
  result = sub_1B4B94510();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4B944BC()
{
  result = qword_1EB8AB788;
  if (!qword_1EB8AB788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB788);
  }

  return result;
}

unint64_t sub_1B4B94510()
{
  result = qword_1EB8AB790;
  if (!qword_1EB8AB790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB790);
  }

  return result;
}

uint64_t sub_1B4B94564(uint64_t a1)
{
  *(a1 + 8) = sub_1B4B945CC(&qword_1EB8AB798, &protocol conformance descriptor for WorkoutVoiceMilestoneWorkoutDistanceFact);
  result = sub_1B4B945CC(&qword_1EB8AB7A0, &protocol conformance descriptor for WorkoutVoiceMilestoneWorkoutDistanceFact);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B4B945CC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WorkoutVoiceMilestoneWorkoutDistanceFact(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B4B9462C()
{
  result = qword_1EB8AB7C8;
  if (!qword_1EB8AB7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB7C8);
  }

  return result;
}

uint64_t sub_1B4B94680(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DateRangeDescriptor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4B946E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4B9474C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t WorkoutVoiceLongestDistanceFact.TemplateString.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1B4D18B1C();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

unint64_t WorkoutVoiceLongestDistanceFact.TemplateString.rawValue.getter()
{
  if (*v0)
  {
    return 0xD00000000000008ALL;
  }

  else
  {
    return 0xD000000000000072;
  }
}

uint64_t sub_1B4B9484C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD00000000000008ALL;
  }

  else
  {
    v3 = 0xD000000000000072;
  }

  if (v2)
  {
    v4 = "ringsPropertiesAllTime";
  }

  else
  {
    v4 = "stance_milestone>.";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD00000000000008ALL;
  }

  else
  {
    v6 = 0xD000000000000072;
  }

  if (*a2)
  {
    v7 = "stance_milestone>.";
  }

  else
  {
    v7 = "ringsPropertiesAllTime";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1B4D18DCC();
  }

  return v9 & 1;
}

uint64_t sub_1B4B948F8()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4B94978(uint64_t a1)
{
  sub_1B4D1820C();
}

uint64_t sub_1B4B949E4(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4B94A60@<X0>(char *a2@<X8>)
{
  v3 = sub_1B4D18B1C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1B4B94AC0(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD00000000000008ALL;
  }

  else
  {
    v2 = 0xD000000000000072;
  }

  if (*v1)
  {
    v3 = "stance_milestone>.";
  }

  else
  {
    v3 = "ringsPropertiesAllTime";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

id WorkoutVoiceLongestDistanceFact.placeholders()()
{
  v1 = type metadata accessor for WorkoutVoiceLongestDistanceFact(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B60, &qword_1B4D35490);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B4D1BE00;
  [*(v0 + *(v1 + 28)) effectiveTypeIdentifier];
  result = FILocalizedNameForIndoorAgnosticActivityType();
  if (result)
  {
    v7 = result;
    v8 = sub_1B4D1818C();
    v10 = v9;

    strcpy((v5 + 32), "activity_type");
    *(v5 + 46) = -4864;
    v11 = swift_allocObject();
    *(v11 + 16) = v8;
    *(v11 + 24) = v10;
    *(v5 + 48) = sub_1B4993DFC;
    *(v5 + 56) = v11;
    *(v5 + 64) = 0;
    *(v5 + 72) = 0;
    sub_1B4B94EA4(v0, &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    v12 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v13 = swift_allocObject();
    sub_1B4B94F08(v4, v13 + v12);
    *(v5 + 80) = 0xD000000000000012;
    *(v5 + 88) = 0x80000001B4D4F0E0;
    *(v5 + 96) = sub_1B4B94F6C;
    *(v5 + 104) = v13;
    *(v5 + 112) = 0;
    *(v5 + 120) = 0;
    v14 = *(v0 + *(v1 + 24));
    v15 = *&aThisDaythisWee_2[8 * v14];
    v16 = qword_1B4D35A90[v14];
    *(v5 + 128) = 0xD000000000000015;
    *(v5 + 136) = 0x80000001B4D4EFE0;
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    *(v17 + 24) = v16;
    *(v5 + 144) = sub_1B4994004;
    *(v5 + 152) = v17;
    *(v5 + 160) = 0;
    *(v5 + 168) = 0;
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t WorkoutVoiceLongestDistanceFact.selectTemplate(formatter:)@<X0>(BOOL *a1@<X8>)
{
  if (*(v1 + *(type metadata accessor for WorkoutVoiceLongestDistanceFact(0) + 24)) >= 4u)
  {

    v5 = 0;
  }

  else
  {
    v3 = sub_1B4D18DCC();

    v5 = (v3 & 1) == 0;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_1B4B94EA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutVoiceLongestDistanceFact(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4B94F08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutVoiceLongestDistanceFact(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4B94F6C(uint64_t a1)
{
  v3 = *(type metadata accessor for WorkoutVoiceLongestDistanceFact(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1B4B94D64(a1, v4);
}

unint64_t sub_1B4B94FE0()
{
  result = qword_1EB8AB7E0;
  if (!qword_1EB8AB7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB7E0);
  }

  return result;
}

unint64_t sub_1B4B95038()
{
  result = qword_1EB8AB7E8;
  if (!qword_1EB8AB7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AB7F0, &qword_1B4D359F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB7E8);
  }

  return result;
}

unint64_t sub_1B4B950A0()
{
  result = qword_1EB8AB7F8;
  if (!qword_1EB8AB7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB7F8);
  }

  return result;
}

unint64_t sub_1B4B950F8()
{
  result = qword_1EB8AB800;
  if (!qword_1EB8AB800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB800);
  }

  return result;
}

unint64_t sub_1B4B9514C(uint64_t a1)
{
  result = sub_1B4B95174();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4B95174()
{
  result = qword_1EB8AB808;
  if (!qword_1EB8AB808)
  {
    type metadata accessor for WorkoutVoiceLongestDistanceFact(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB808);
  }

  return result;
}

void VitalsContext.vitalsDay.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 4);
  *a1 = *v1;
  *(a1 + 4) = v2;
}

FitnessIntelligence::VitalsContext __swiftcall VitalsContext.init(vitalsDay:)(FitnessIntelligence::VitalsContext vitalsDay)
{
  v2 = *(*&vitalsDay.vitalsDay.heartRate + 4);
  *v1 = **&vitalsDay.vitalsDay.heartRate;
  *(v1 + 4) = v2;
  return vitalsDay;
}

uint64_t StreamingAudioComplete.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *(a1 + 4);

  result = sub_1B4B95270(a1);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_1B4B95270(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioComplete(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t StreamingAudioComplete.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioComplete(0);
  sub_1B4B9555C(&qword_1EB8A8AA0, &protocol conformance descriptor for Apple_Fitness_Intelligence_StreamingAudioComplete);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4B95388(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioComplete(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  v11[1] = *v1;
  v11[2] = v7;
  v12 = v8;
  v9 = sub_1B4B956FC();
  (*(v9 + 32))(a1, v9);
  if (!v2)
  {
    sub_1B4B9555C(&qword_1EB8A8AA0, &protocol conformance descriptor for Apple_Fitness_Intelligence_StreamingAudioComplete);
    v4 = sub_1B4D17D6C();
    sub_1B4B95270(v6);
  }

  return v4;
}

uint64_t sub_1B4B954B0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1B4B24BA4(a1, a2, v8);
  if (!v3)
  {
    v6 = v8[1];
    v7 = v9;
    *a3 = v8[0];
    *(a3 + 8) = v6;
    *(a3 + 16) = v7;
  }

  return result;
}

uint64_t sub_1B4B9555C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioComplete(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4B955A0()
{
  type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioComplete(0);
  sub_1B4B9555C(&qword_1EB8A8AA0, &protocol conformance descriptor for Apple_Fitness_Intelligence_StreamingAudioComplete);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4B95644@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *(a1 + 4);

  result = sub_1B4B95270(a1);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_1B4B956A0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);

  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  return result;
}

unint64_t sub_1B4B956FC()
{
  result = qword_1EB8AB810;
  if (!qword_1EB8AB810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB810);
  }

  return result;
}

uint64_t static InferenceAvailability.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      if (a1 != a3 || a2 != a4)
      {
        return sub_1B4D18DCC();
      }

      return 1;
    }

    return 0;
  }

  return !a4;
}

uint64_t sub_1B4B9579C(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      if (*a1 != *a2 || v3 != v4)
      {
        return sub_1B4D18DCC();
      }

      return 1;
    }

    return 0;
  }

  return !v4;
}

uint64_t sub_1B4B957E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1B4B95830(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *sub_1B4B95894(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7920, &unk_1B4D1F260);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v28 - v3;
  v33 = type metadata accessor for WorkoutSplit(0);
  v31 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v30 = &v28 - v7;
  WorkoutState.events.getter();
  sub_1B498AFB8(0, &qword_1EB8A7928, 0x1E696C5B8);
  v8 = sub_1B4D183EC();

  v9 = FICustomSplits();

  v10 = sub_1B4D183FC();
  if (v10 >> 62)
  {
    goto LABEL_23;
  }

  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:

    sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
    v11 = [objc_opt_self() miles];
    sub_1B4D187AC();

    WorkoutState.events.getter();
    v12 = sub_1B4D183EC();

    v13 = FISplitsForMeasuringSystemIdentifier();

    sub_1B4D183FC();
    goto LABEL_4;
  }

  while (1)
  {
LABEL_4:

    v34 = sub_1B49EE57C(v15, v14);
    sub_1B49ECF74(&v34);

    v16 = v34;
    if ((v34 & 0x8000000000000000) == 0 && (v34 & 0x4000000000000000) == 0)
    {
      v17 = *(v34 + 16);
      if (!v17)
      {
        break;
      }

      goto LABEL_7;
    }

    v17 = sub_1B4D18ABC();
    if (!v17)
    {
      break;
    }

LABEL_7:
    v18 = 0;
    v19 = (v31 + 48);
    v20 = MEMORY[0x1E69E7CC0];
    v29 = a1;
    while (1)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x1B8C7CD90](v18, v16);
      }

      else
      {
        if (v18 >= *(v16 + 16))
        {
          goto LABEL_22;
        }

        v21 = *(v16 + 8 * v18 + 32);
      }

      v22 = v21;
      v23 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      sub_1B49E8FF0(v18, v21, a1, v4);

      if ((*v19)(v4, 1, v33) == 1)
      {
        sub_1B4975024(v4, &qword_1EB8A7920, &unk_1B4D1F260);
      }

      else
      {
        v24 = v30;
        sub_1B4B998D0(v4, v30, type metadata accessor for WorkoutSplit);
        sub_1B4B998D0(v24, v32, type metadata accessor for WorkoutSplit);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1B4A1D79C(0, v20[2] + 1, 1, v20);
        }

        v26 = v20[2];
        v25 = v20[3];
        if (v26 >= v25 >> 1)
        {
          v20 = sub_1B4A1D79C((v25 > 1), v26 + 1, 1, v20);
        }

        v20[2] = v26 + 1;
        sub_1B4B998D0(v32, v20 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v26, type metadata accessor for WorkoutSplit);
        a1 = v29;
      }

      ++v18;
      if (v23 == v17)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    if (!sub_1B4D18ABC())
    {
      goto LABEL_3;
    }
  }

  v20 = MEMORY[0x1E69E7CC0];
LABEL_27:

  return v20;
}

uint64_t static WorkoutSplitFact.analyze(_:unitManager:currentWorkoutState:previousWorkoutState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0);
  v4[6] = swift_task_alloc();
  v5 = type metadata accessor for WorkoutState(0);
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4B95E28, 0, 0);
}

uint64_t sub_1B4B95E28()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  sub_1B4974FBC(v0[4], v3, &qword_1EB8A6A98, &unk_1B4D1CBE0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1B4975024(v0[6], &qword_1EB8A6A98, &unk_1B4D1CBE0);

    v4 = v0[1];
    v5 = MEMORY[0x1E69E7CC0];

    return v4(v5);
  }

  else
  {
    v7 = v0[9];
    v8 = v0[7];
    sub_1B4B998D0(v0[6], v7, type metadata accessor for WorkoutState);
    if (*(v7 + *(v8 + 20)) == 3)
    {
      v9 = swift_task_alloc();
      v0[10] = v9;
      *v9 = v0;
      v9[1] = sub_1B4B96028;
      v10 = v0[9];
      v12 = v0[2];
      v11 = v0[3];

      return sub_1B4B9685C(v12, v11, v10);
    }

    else
    {
      v13 = swift_task_alloc();
      v0[12] = v13;
      *v13 = v0;
      v13[1] = sub_1B4B961B8;
      v14 = v0[9];
      v15 = v0[5];
      v17 = v0[2];
      v16 = v0[3];

      return sub_1B4B9811C(v17, v16, v14, v15);
    }
  }
}

uint64_t sub_1B4B96028(uint64_t a1)
{
  *(*v1 + 88) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B4B96128, 0, 0);
}

uint64_t sub_1B4B96128()
{
  sub_1B4B99808(v0[9], type metadata accessor for WorkoutState);
  v1 = v0[11];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_1B4B961B8(uint64_t a1)
{
  *(*v1 + 104) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B4B962B8, 0, 0);
}

uint64_t sub_1B4B962B8()
{
  sub_1B4B99808(v0[9], type metadata accessor for WorkoutState);
  v1 = v0[13];

  v2 = v0[1];

  return v2(v1);
}

uint64_t WorkoutSplitFact.QueryIdentifier.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1B4D18B1C();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1B4B963BC@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1B4D18B1C();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_1B4B96410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WorkoutSplit(0);
  MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v34 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v9);
  v16 = &v34 - v15;
  v17 = *(a1 + 16);
  if (v17 >= 4)
  {
    v35 = v13;
    v36 = v11;
    v38 = v10;
    v39 = v12;
    v37 = a2;
    v20 = *(v10 + 44);
    v21 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v22 = a1 + v21;
    v23 = *(v11 + 72);
    v24 = MEMORY[0x1E69E7CC0];
    v25 = v21;
    do
    {
      sub_1B4B99868(v22, v16, type metadata accessor for WorkoutSplit);
      if (v16[v20] == 1)
      {
        sub_1B4B99808(v16, type metadata accessor for WorkoutSplit);
      }

      else
      {
        sub_1B4B998D0(v16, v7, type metadata accessor for WorkoutSplit);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1B4A1D79C(0, v24[2] + 1, 1, v24);
        }

        v27 = v24[2];
        v26 = v24[3];
        if (v27 >= v26 >> 1)
        {
          v24 = sub_1B4A1D79C((v26 > 1), v27 + 1, 1, v24);
        }

        v24[2] = v27 + 1;
        v21 = v25;
        sub_1B4B998D0(v7, v24 + v25 + v27 * v23, type metadata accessor for WorkoutSplit);
      }

      v22 += v23;
      --v17;
    }

    while (v17);
    v28 = v24[2];
    if (v28)
    {
      result = sub_1B4B99868(v24 + v21, v39, type metadata accessor for WorkoutSplit);
      v29 = v35;
      if (v28 == 1)
      {
LABEL_16:

        v30 = v37;
        sub_1B4B998D0(v39, v37, type metadata accessor for WorkoutSplit);
        return (*(v36 + 56))(v30, 0, 1, v38);
      }

      else
      {
        v31 = v24 + v23 + v21;
        v32 = 1;
        while (v32 < v24[2])
        {
          sub_1B4B99868(v31, v29, type metadata accessor for WorkoutSplit);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
          sub_1B4B9474C(&qword_1EB8AB848, &qword_1EB8A6CD8, &unk_1B4D1D2C0);
          v33 = v39;
          if (sub_1B4D180FC())
          {
            sub_1B4B99808(v33, type metadata accessor for WorkoutSplit);
            result = sub_1B4B998D0(v29, v33, type metadata accessor for WorkoutSplit);
          }

          else
          {
            result = sub_1B4B99808(v29, type metadata accessor for WorkoutSplit);
          }

          ++v32;
          v31 += v23;
          if (v28 == v32)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
      }
    }

    else
    {

      return (*(v36 + 56))(v37, 1, 1, v38);
    }
  }

  else
  {
    v18 = *(v11 + 56);

    return v18(a2, 1, 1, v14);
  }

  return result;
}

uint64_t sub_1B4B9685C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v4 = type metadata accessor for WorkoutSplit(0);
  v3[4] = v4;
  v3[5] = *(v4 - 8);
  v3[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7920, &unk_1B4D1F260);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = type metadata accessor for WorkoutState(0);
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4B96990, 0, 0);
}

uint64_t sub_1B4B96990(__n128 a1)
{
  v2 = v1[9];
  v3 = v1[10];
  v4 = v1[2];
  sub_1B4B99868(v1[3], v3, type metadata accessor for WorkoutState);
  v5 = *(v3 + *(v2 + 24));
  v6 = [v4 userDistanceHKUnitForActivityType_];
  sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
  v7 = [objc_opt_self() mileUnit];
  LOBYTE(v4) = sub_1B4D187AC();

  v8 = objc_opt_self();
  v9 = &selRef_miles;
  if ((v4 & 1) == 0)
  {
    v9 = &selRef_kilometers;
  }

  v10 = [v8 *v9];

  v11 = sub_1B4B95894(v10);
  if (!v11[2])
  {

    if (qword_1EDC36EF8 != -1)
    {
      swift_once();
    }

    v23 = sub_1B4D17F6C();
    __swift_project_value_buffer(v23, qword_1EDC36F00);
    v24 = sub_1B4D17F5C();
    v25 = sub_1B4D1873C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1B4953000, v24, v25, "No Split Events found", v26, 2u);
      MEMORY[0x1B8C7DDA0](v26, -1, -1);
    }

    goto LABEL_15;
  }

  v13 = v1[7];
  v12 = v1[8];
  v15 = v1[4];
  v14 = v1[5];
  sub_1B4B96410(v11, v12);

  sub_1B4974FBC(v12, v13, &qword_1EB8A7920, &unk_1B4D1F260);
  v16 = (*(v14 + 48))(v13, 1, v15);
  v17 = v1[7];
  if (v16 == 1)
  {
    sub_1B4975024(v17, &qword_1EB8A7920, &unk_1B4D1F260);
    if (qword_1EDC36EF8 != -1)
    {
      swift_once();
    }

    v18 = sub_1B4D17F6C();
    __swift_project_value_buffer(v18, qword_1EDC36F00);
    v19 = sub_1B4D17F5C();
    v20 = sub_1B4D1871C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1B4953000, v19, v20, "No fastest split", v21, 2u);
      MEMORY[0x1B8C7DDA0](v21, -1, -1);
    }

    v22 = v1[8];

    sub_1B4975024(v22, &qword_1EB8A7920, &unk_1B4D1F260);
LABEL_15:
    v27 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  v28 = v1[6];
  sub_1B4B998D0(v17, v28, type metadata accessor for WorkoutSplit);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB840, &unk_1B4D35CD0);
  v29 = type metadata accessor for WorkoutSplitFact(0);
  v30 = (*(*(v29 - 1) + 80) + 32) & ~*(*(v29 - 1) + 80);
  result = swift_allocObject();
  *(result + 16) = xmmword_1B4D1A800;
  if (__OFADD__(*v28, 1))
  {
    __break(1u);
    return result;
  }

  v65 = v5;
  v66 = *v28 + 1;
  v67 = v1[8];
  v68 = result;
  v32 = v1[6];
  v33 = v1[4];
  v34 = (result + v30);
  v35 = result + v30 + v29[6];
  v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9D28, &qword_1B4D2BDB8) + 48);
  v36 = *(v33 + 32);
  v60 = v36;
  v63 = v33;
  v64 = v10;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v61 = *(v37 - 8);
  v59 = *(v61 + 16);
  v59(v35, v32 + v36, v37);
  v38 = *(v32 + *(v33 + 48));
  v39 = v32;
  *(v35 + v58) = v38;
  type metadata accessor for WorkoutSplitFact.SplitFactType(0);
  swift_storeEnumTagMultiPayload();
  v40 = v29[7];
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v42 = *(*(v41 - 8) + 56);
  v42(&v34[v40], 1, 1, v41);
  v42(&v34[v29[8]], 1, 1, v41);
  v43 = v29[9];
  v59(&v34[v43], v39 + v60, v37);
  v62 = *(v61 + 56);
  v62(&v34[v43], 0, 1, v37);
  v62(&v34[v29[10]], 1, 1, v37);
  v44 = v29[11];
  v45 = *(v63 + 36);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v47 = *(v46 - 8);
  (*(v47 + 16))(&v34[v44], v39 + v45, v46);
  (*(v47 + 56))(&v34[v44], 0, 1, v46);
  v48 = v29[12];
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE0, &unk_1B4D1EF00);
  (*(*(v49 - 8) + 56))(&v34[v48], 1, 1, v49);
  v62(&v34[v29[13]], 1, 1, v37);
  v50 = v29[14];
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  (*(*(v51 - 8) + 56))(&v34[v50], 1, 1, v51);
  v52 = v29[15];
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
  v54 = *(*(v53 - 8) + 56);
  v55 = &v34[v52];
  v27 = v68;
  v54(v55, 1, 1, v53);
  v54(&v34[v29[16]], 1, 1, v53);
  *v34 = v65;
  *(v34 + 1) = v66;
  v34[v29[17]] = 1;
  v34[v29[18]] = 1;
  v34[v29[19]] = 2;
  v34[v29[20]] = 2;
  v56 = v65;

  sub_1B4B99808(v39, type metadata accessor for WorkoutSplit);
  sub_1B4975024(v67, &qword_1EB8A7920, &unk_1B4D1F260);
LABEL_18:
  sub_1B4B99808(v1[10], type metadata accessor for WorkoutState);

  v57 = v1[1];

  return v57(v27);
}

uint64_t sub_1B4B97220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B49C0344;

  return static WorkoutSplitFact.analyze(_:unitManager:currentWorkoutState:previousWorkoutState:)(a1, a2, a3, a4);
}

uint64_t sub_1B4B972D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v113 = a5;
  v114 = a3;
  v115 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC8, &unk_1B4D464B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v118 = &v101 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v117 = &v101 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA0, &unk_1B4D1BBE0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v116 = &v101 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB0, &unk_1B4D1BBF0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v129 = &v101 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v128 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v126 = &v101 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v125 = &v101 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v124 = &v101 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v123 = &v101 - v27;
  v112 = type metadata accessor for WorkoutSplitFact.SplitFactType(0);
  MEMORY[0x1EEE9AC00](v112);
  v122 = &v101 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v119 = *(v29 - 8);
  v120 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v101 - v30;
  v130 = type metadata accessor for WorkoutSplit(0);
  v32 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v34 = &v101 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v101 - v36;
  v121 = type metadata accessor for WorkoutState(0);
  v111 = *(a2 + *(v121 + 24));
  v38 = [a1 userDistanceHKUnitForActivityType_];
  sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
  v39 = [objc_opt_self() mileUnit];
  v40 = sub_1B4D187AC();

  v41 = objc_opt_self();
  v42 = &selRef_miles;
  if ((v40 & 1) == 0)
  {
    v42 = &selRef_kilometers;
  }

  v43 = [v41 *v42];

  v127 = a2;
  v44 = sub_1B4B95894(v43);
  v45 = v44;
  v46 = v44[2];
  if (v46)
  {
    v110 = v9;
    v47 = v44 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
    v48 = *(v32 + 72);
    sub_1B4B99868(&v47[v48 * (v46 - 1)], v37, type metadata accessor for WorkoutSplit);
    v49 = v37;
    v109 = v43;
    v107 = v46;
    if (v46 == 1)
    {

      v108 = 0;
    }

    else
    {
      sub_1B4B99868(&v47[v48 * (v46 - 2)], v34, type metadata accessor for WorkoutSplit);

      type metadata accessor for UnitPace();
      sub_1B4D173EC();
      sub_1B4B9474C(&qword_1EB8AB848, &qword_1EB8A6CD8, &unk_1B4D1D2C0);
      v59 = v120;
      v60 = sub_1B4D180FC();
      (*(v119 + 8))(v31, v59);
      sub_1B4B99808(v34, type metadata accessor for WorkoutSplit);
      v108 = v60 & 1;
    }

    v61 = *(v113 + 16);
    v62 = (v113 + 32);
    do
    {
      v63 = v61;
      if (!v61)
      {
        break;
      }

      v64 = *v62++;
      --v61;
    }

    while (v64 != 5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB840, &unk_1B4D35CD0);
    v65 = type metadata accessor for WorkoutSplitFact(0);
    v66 = (*(*(v65 - 1) + 80) + 32) & ~*(*(v65 - 1) + 80);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_1B4D1A800;
    v113 = v67;
    v68 = (v67 + v66);
    v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9D28, &qword_1B4D2BDB8) + 48);
    v70 = *(v130 + 32);
    v105 = v70;
    v71 = v130;
    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
    v106 = *(v103 - 8);
    v104 = *(v106 + 16);
    v72 = &v37[v70];
    v73 = v122;
    v104(v122, v72, v103);
    *(v73 + v69) = v37[*(v71 + 48)];
    swift_storeEnumTagMultiPayload();
    v74 = *(v71 + 28);
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
    v76 = *(v75 - 8);
    v77 = v123;
    (*(v76 + 16))(v123, &v37[v74], v75);
    v102 = *(v76 + 56);
    v102(v77, 0, 1, v75);
    v78 = v121;
    v79 = objc_opt_self();
    v112 = v111;
    v80 = [v79 seconds];
    sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
    v81 = v124;
    sub_1B4D1741C();
    v102(v81, 0, 1, v75);
    v82 = v125;
    v83 = v103;
    v104(v125, &v37[v105], v103);
    (*(v106 + 56))(v82, 0, 1, v83);
    v84 = v127;
    sub_1B4974FBC(v127 + *(v78 + 60), v126, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    v85 = v129;
    v86 = v130;
    v88 = v119;
    v87 = v120;
    (*(v119 + 16))(v129, v49 + *(v130 + 36), v120);
    (*(v88 + 56))(v85, 0, 1, v87);
    v89 = *(v86 + 40);
    v130 = v49;
    v90 = v49 + v89;
    v91 = v116;
    sub_1B4974FBC(v90, v116, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
    sub_1B4974FBC(v114, v128, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    v92 = v117;
    sub_1B4974FBC(v115, v117, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    if (v63)
    {
      v93 = v121;
      v94 = v118;
      sub_1B4974FBC(v84 + *(v121 + 84), v118, &qword_1EB8A6CC8, &unk_1B4D464B0);
      v95 = v84 + *(v93 + 76);
      v96 = v110;
      sub_1B4974FBC(v95, v110, &qword_1EB8A6CC8, &unk_1B4D464B0);
    }

    else
    {
      v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
      v94 = v118;
      (*(*(v97 - 8) + 56))(v118, 1, 1, v97);
      v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
      v96 = v110;
      (*(*(v98 - 8) + 56))(v110, 1, 1, v98);
    }

    v99 = v107;
    *v68 = v112;
    v68[1] = v99;
    sub_1B4B998D0(v122, v68 + v65[6], type metadata accessor for WorkoutSplitFact.SplitFactType);
    sub_1B498B270(v123, v68 + v65[7], &qword_1EB8A6C90, &unk_1B4D1BBD0);
    sub_1B498B270(v124, v68 + v65[8], &qword_1EB8A6C90, &unk_1B4D1BBD0);
    sub_1B498B270(v125, v68 + v65[9], &qword_1EB8A6CC0, &unk_1B4D1BC00);
    sub_1B498B270(v126, v68 + v65[10], &qword_1EB8A6CC0, &unk_1B4D1BC00);
    sub_1B498B270(v129, v68 + v65[11], &qword_1EB8A6CB0, &unk_1B4D1BBF0);
    sub_1B498B270(v91, v68 + v65[12], &qword_1EB8A6CA0, &unk_1B4D1BBE0);
    sub_1B498B270(v128, v68 + v65[13], &qword_1EB8A6CC0, &unk_1B4D1BC00);
    sub_1B498B270(v92, v68 + v65[14], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    sub_1B498B270(v94, v68 + v65[15], &qword_1EB8A6CC8, &unk_1B4D464B0);
    sub_1B498B270(v96, v68 + v65[16], &qword_1EB8A6CC8, &unk_1B4D464B0);
    *(v68 + v65[17]) = 2;
    *(v68 + v65[18]) = 0;
    *(v68 + v65[19]) = v108;
    *(v68 + v65[20]) = 2;

    sub_1B4B99808(v130, type metadata accessor for WorkoutSplit);
    return v113;
  }

  else
  {
    if (qword_1EDC36EF8 != -1)
    {
      swift_once();
    }

    v50 = sub_1B4D17F6C();
    __swift_project_value_buffer(v50, qword_1EDC36F00);

    v51 = sub_1B4D17F5C();
    v52 = sub_1B4D1873C();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v131 = v54;
      *v53 = 136315138;
      v55 = MEMORY[0x1B8C7C800](v45, v130);
      v57 = v56;

      v58 = sub_1B49558AC(v55, v57, &v131);

      *(v53 + 4) = v58;
      _os_log_impl(&dword_1B4953000, v51, v52, "No Last Split Event in %s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v54);
      MEMORY[0x1B8C7DDA0](v54, -1, -1);
      MEMORY[0x1B8C7DDA0](v53, -1, -1);
    }

    else
    {
    }

    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1B4B9811C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA0, &unk_1B4D1BBE0);
  v4[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB0, &unk_1B4D1BBF0);
  v4[6] = swift_task_alloc();
  v4[7] = type metadata accessor for WorkoutSplitFact.SplitFactType(0);
  v4[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC8, &unk_1B4D464B0);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
  v4[23] = v6;
  v4[24] = *(v6 - 8);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v4[29] = v7;
  v4[30] = *(v7 - 8);
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v8 = type metadata accessor for WorkoutState(0);
  v4[41] = v8;
  v4[42] = *(v8 - 8);
  v4[43] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4B985A8, 0, 0);
}

uint64_t sub_1B4B985A8(__n128 a1)
{
  v2 = *(v1 + 344);
  sub_1B4B99868(*(v1 + 24), v2, type metadata accessor for WorkoutState);
  v3 = sub_1B4CAC70C(v2);
  v4 = v3;
  v5 = *(v3 + 2);
  v6 = 32;
  do
  {
    v7 = v5;
    if (!v5)
    {
      break;
    }

    v8 = *&v3[v6];
    v6 += 8;
    --v5;
  }

  while (v8 != 10);
  v9 = *(v1 + 328);
  v10 = *(v1 + 336);
  v11 = *(v1 + 224);
  sub_1B4974FBC(*(v1 + 32), v11, &qword_1EB8A6A98, &unk_1B4D1CBE0);
  v149 = *(v10 + 48);
  if (v149(v11, 1, v9) == 1)
  {
    v12 = (v1 + 312);
    v13 = *(v1 + 312);
    v14 = *(v1 + 232);
    v15 = *(v1 + 240);
    sub_1B4975024(*(v1 + 224), &qword_1EB8A6A98, &unk_1B4D1CBE0);
    (*(v15 + 56))(v13, 1, 1, v14);
LABEL_10:
    v25 = *(v1 + 344);
    v26 = *(v1 + 320);
    v27 = *(v1 + 328);
    sub_1B4975024(*v12, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    sub_1B4974FBC(v25 + *(v27 + 104), v26, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    goto LABEL_11;
  }

  v16 = *(v1 + 328);
  v17 = *(v1 + 312);
  v18 = *(v1 + 232);
  v19 = *(v1 + 240);
  v20 = *(v1 + 224);
  sub_1B4974FBC(v20 + *(v16 + 104), v17, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  sub_1B4B99808(v20, type metadata accessor for WorkoutState);
  v21 = *(v19 + 48);
  if (v21(v17, 1, v18) == 1)
  {
    v12 = (v1 + 312);
    goto LABEL_10;
  }

  v22 = *(v1 + 344);
  v23 = *(v1 + 304);
  v24 = *(v1 + 232);
  v147 = *(*(v1 + 240) + 32);
  v147(*(v1 + 256), *(v1 + 312), v24);
  sub_1B4974FBC(v22 + *(v16 + 104), v23, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if (v21(v23, 1, v24) == 1)
  {
    v12 = (v1 + 304);
    (*(*(v1 + 240) + 8))(*(v1 + 256), *(v1 + 232));
    goto LABEL_10;
  }

  v101 = *(v1 + 320);
  v103 = *(v1 + 248);
  v102 = *(v1 + 256);
  v104 = *(v1 + 232);
  v105 = *(v1 + 240);
  v147(v103, *(v1 + 304), v104);
  sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
  sub_1B4D1744C();
  v106 = *(v105 + 8);
  v106(v103, v104);
  v106(v102, v104);
  (*(v105 + 56))(v101, 0, 1, v104);
LABEL_11:
  v28 = *(v1 + 328);
  v29 = *(v1 + 184);
  v30 = *(v1 + 192);
  v31 = *(v1 + 176);
  sub_1B4974FBC(*(v1 + 344) + *(v28 + 80), v31, &qword_1EB8A6CC8, &unk_1B4D464B0);
  v32 = *(v30 + 48);
  if (v32(v31, 1, v29) == 1)
  {
    v33 = *(v1 + 176);
LABEL_18:
    sub_1B4975024(v33, &qword_1EB8A6CC8, &unk_1B4D464B0);
    v46 = 2;
    goto LABEL_19;
  }

  v34 = *(v1 + 328);
  v35 = *(v1 + 216);
  v36 = *(v1 + 32);
  v148 = *(*(v1 + 192) + 32);
  v148(*(v1 + 208), *(v1 + 176), *(v1 + 184));
  sub_1B4974FBC(v36, v35, &qword_1EB8A6A98, &unk_1B4D1CBE0);
  v37 = v149(v35, 1, v34);
  v38 = *(v1 + 216);
  if (v37 == 1)
  {
    v39 = *(v1 + 184);
    v40 = *(v1 + 192);
    v41 = *(v1 + 168);
    (*(v40 + 8))(*(v1 + 208), v39);
    sub_1B4975024(v38, &qword_1EB8A6A98, &unk_1B4D1CBE0);
    (*(v40 + 56))(v41, 1, 1, v39);
LABEL_17:
    v33 = *(v1 + 168);
    goto LABEL_18;
  }

  v42 = *(v1 + 184);
  v43 = *(v1 + 168);
  sub_1B4974FBC(v38 + *(v28 + 80), v43, &qword_1EB8A6CC8, &unk_1B4D464B0);
  sub_1B4B99808(v38, type metadata accessor for WorkoutState);
  v44 = v32(v43, 1, v42);
  v45 = *(v1 + 208);
  if (v44 == 1)
  {
    (*(*(v1 + 192) + 8))(*(v1 + 208), *(v1 + 184));
    goto LABEL_17;
  }

  v108 = *(v1 + 192);
  v107 = *(v1 + 200);
  v109 = *(v1 + 184);
  v148(v107, *(v1 + 168), v109);
  sub_1B4B9474C(&qword_1EB8AB850, &qword_1EB8A6CD0, &unk_1B4D1F270);
  v110 = sub_1B4D180EC();
  v111 = *(v108 + 8);
  v111(v107, v109);
  v111(v45, v109);
  v46 = v110 & 1;
LABEL_19:
  v47 = *(v4 + 16);
  v48 = 32;
  v49 = v47;
  do
  {
    v50 = v49;
    if (!v49)
    {
      break;
    }

    v51 = *(v4 + v48);
    v48 += 8;
    --v49;
  }

  while (v51 != 2);
  v52 = 32;
  do
  {
    if (!v47)
    {
      if (v7)
      {
        sub_1B4974FBC(*(v1 + 320), *(v1 + 288), &qword_1EB8A6CC0, &unk_1B4D1BC00);
        if (v50)
        {
LABEL_30:
          sub_1B4974FBC(*(v1 + 344) + *(*(v1 + 328) + 72), *(v1 + 136), &qword_1EB8A6CA8, &unk_1B4D1C2B0);
          goto LABEL_33;
        }
      }

      else
      {
        (*(*(v1 + 240) + 56))(*(v1 + 288), 1, 1, *(v1 + 232));
        if (v50)
        {
          goto LABEL_30;
        }
      }

      v54 = *(v1 + 136);
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
      (*(*(v55 - 8) + 56))(v54, 1, 1, v55);
LABEL_33:
      v56 = *(v1 + 96);
      v57 = *(v1 + 104);
      v58 = *(v1 + 88);
      sub_1B4974FBC(*(v1 + 344) + *(*(v1 + 328) + 88), v58, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      v59 = (*(v57 + 48))(v58, 1, v56);
      v60 = *(v1 + 344);
      if (v59 == 1)
      {
        v61 = *(v1 + 320);
        v62 = *(v1 + 288);
        v63 = *(v1 + 136);
        v64 = *(v1 + 88);

        sub_1B4975024(v64, &qword_1EB8A6C90, &unk_1B4D1BBD0);
        v151 = MEMORY[0x1E69E7CC0];
        goto LABEL_50;
      }

      v65 = *(v1 + 328);
      v66 = *(v1 + 112);
      v67 = *(v1 + 96);
      v68 = *(v1 + 104);
      (*(v68 + 32))(*(v1 + 120), *(v1 + 88), v67);
      v69 = *(v60 + *(v65 + 48));
      v70 = objc_opt_self();
      v71 = [v70 seconds];
      sub_1B4D1745C();

      sub_1B4D1742C();
      v73 = v72;
      v74 = *(v68 + 8);
      result = v74(v66, v67);
      v76 = v69 / v73;
      if (COERCE__INT64(fabs(v69 / v73)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v76 > -9.22337204e18)
      {
        if (v76 < 9.22337204e18)
        {
          v135 = v70;
          v146 = v74;
          v150 = v46;
          v145 = v76;
          v77 = *(v4 + 16);
          v78 = 32;
          do
          {
            v79 = v77;
            if (!v77)
            {
              break;
            }

            v80 = *(v4 + v78);
            v78 += 8;
            --v77;
          }

          while (v80 != 5);
          v81 = *(v1 + 344);
          v82 = *(v1 + 328);
          v125 = *(v1 + 280);
          v127 = *(v1 + 272);
          v137 = *(v1 + 264);
          v139 = *(v1 + 288);
          v121 = *(v1 + 240);
          v123 = *(v1 + 232);
          v141 = *(v1 + 128);
          v143 = *(v1 + 136);
          v83 = *(v1 + 120);
          v84 = *(v1 + 104);
          v120 = *(v1 + 72);
          v85 = *(v1 + 64);
          v119 = *(v1 + 96);
          v129 = *(v1 + 48);
          v131 = *(v1 + 40);
          v133 = *(v1 + 80);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB840, &unk_1B4D35CD0);
          v86 = type metadata accessor for WorkoutSplitFact(0);
          v87 = (*(*(v86 - 1) + 80) + 32) & ~*(*(v86 - 1) + 80);
          v88 = swift_allocObject();
          *(v88 + 16) = xmmword_1B4D1A800;
          v151 = v88;
          v89 = (v88 + v87);
          v118 = *(v81 + *(v82 + 24));
          v90 = *(v84 + 16);
          v90(v85, v83, v119);
          swift_storeEnumTagMultiPayload();
          v90(v133, v83, v119);
          v91 = *(v84 + 56);
          v91(v133, 0, 1, v119);
          v134 = v118;
          v92 = [v135 seconds];
          sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
          sub_1B4D1741C();
          v91(v120, 0, 1, v119);
          v93 = *(v121 + 56);
          v93(v125, 1, 1, v123);
          v93(v127, 1, 1, v123);
          v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
          (*(*(v94 - 8) + 56))(v129, 1, 1, v94);
          v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE0, &unk_1B4D1EF00);
          (*(*(v95 - 8) + 56))(v131, 1, 1, v95);
          sub_1B4974FBC(v139, v137, &qword_1EB8A6CC0, &unk_1B4D1BC00);
          sub_1B4974FBC(v143, v141, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
          v96 = *(v1 + 152);
          if (v79)
          {
            v97 = *(v1 + 344);
            v98 = *(v1 + 328);
            sub_1B4974FBC(v97 + *(v98 + 84), *(v1 + 160), &qword_1EB8A6CC8, &unk_1B4D464B0);
            sub_1B4974FBC(v97 + *(v98 + 76), v96, &qword_1EB8A6CC8, &unk_1B4D464B0);
          }

          else
          {
            v112 = *(v1 + 184);
            v113 = *(*(v1 + 192) + 56);
            v113(*(v1 + 160), 1, 1, v112);
            v113(v96, 1, 1, v112);
          }

          v60 = *(v1 + 344);
          v62 = *(v1 + 288);
          v130 = *(v1 + 264);
          v136 = *(v1 + 160);
          v138 = *(v1 + 152);
          v63 = *(v1 + 136);
          v132 = *(v1 + 128);
          v142 = *(v1 + 120);
          v144 = *(v1 + 320);
          v140 = *(v1 + 96);
          v114 = *(v1 + 72);
          v115 = *(v1 + 80);
          v116 = *(v1 + 64);
          v122 = *(v1 + 280);
          v124 = *(v1 + 48);
          v126 = *(v1 + 272);
          v128 = *(v1 + 40);
          *v89 = v134;
          v89[1] = v145;
          sub_1B4B998D0(v116, v89 + v86[6], type metadata accessor for WorkoutSplitFact.SplitFactType);
          sub_1B498B270(v115, v89 + v86[7], &qword_1EB8A6C90, &unk_1B4D1BBD0);
          sub_1B498B270(v114, v89 + v86[8], &qword_1EB8A6C90, &unk_1B4D1BBD0);
          sub_1B498B270(v122, v89 + v86[9], &qword_1EB8A6CC0, &unk_1B4D1BC00);
          sub_1B498B270(v126, v89 + v86[10], &qword_1EB8A6CC0, &unk_1B4D1BC00);
          sub_1B498B270(v124, v89 + v86[11], &qword_1EB8A6CB0, &unk_1B4D1BBF0);
          sub_1B498B270(v128, v89 + v86[12], &qword_1EB8A6CA0, &unk_1B4D1BBE0);
          sub_1B498B270(v130, v89 + v86[13], &qword_1EB8A6CC0, &unk_1B4D1BC00);
          sub_1B498B270(v132, v89 + v86[14], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
          sub_1B498B270(v136, v89 + v86[15], &qword_1EB8A6CC8, &unk_1B4D464B0);
          sub_1B498B270(v138, v89 + v86[16], &qword_1EB8A6CC8, &unk_1B4D464B0);
          *(v89 + v86[17]) = 2;
          *(v89 + v86[18]) = 0;
          *(v89 + v86[19]) = 2;
          *(v89 + v86[20]) = v150;
          v61 = v144;
          v146(v142, v140);
          goto LABEL_50;
        }

LABEL_55:
        __break(1u);
        return result;
      }

      __break(1u);
      goto LABEL_55;
    }

    v53 = *(v4 + v52);
    v52 += 8;
    --v47;
  }

  while (v53 != 35);
  if (v7)
  {
    sub_1B4974FBC(*(v1 + 320), *(v1 + 296), &qword_1EB8A6CC0, &unk_1B4D1BC00);
    if (v50)
    {
      goto LABEL_27;
    }

LABEL_44:
    v99 = *(v1 + 144);
    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
    (*(*(v100 - 8) + 56))(v99, 1, 1, v100);
  }

  else
  {
    (*(*(v1 + 240) + 56))(*(v1 + 296), 1, 1, *(v1 + 232));
    if (!v50)
    {
      goto LABEL_44;
    }

LABEL_27:
    sub_1B4974FBC(*(v1 + 344) + *(*(v1 + 328) + 72), *(v1 + 144), &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  }

  v60 = *(v1 + 344);
  v61 = *(v1 + 320);
  v62 = *(v1 + 296);
  v63 = *(v1 + 144);
  v151 = sub_1B4B972D4(*(v1 + 16), v60, v62, v63, v4);

LABEL_50:
  sub_1B4975024(v63, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  sub_1B4975024(v62, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  sub_1B4975024(v61, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  sub_1B4B99808(v60, type metadata accessor for WorkoutState);

  v117 = *(v1 + 8);

  return v117(v151);
}

unint64_t sub_1B4B99620()
{
  result = qword_1EB8AB818;
  if (!qword_1EB8AB818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB818);
  }

  return result;
}

unint64_t sub_1B4B99674(uint64_t a1)
{
  *(a1 + 8) = sub_1B4B996A4();
  result = sub_1B4B996F8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4B996A4()
{
  result = qword_1EB8AB820;
  if (!qword_1EB8AB820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB820);
  }

  return result;
}

unint64_t sub_1B4B996F8()
{
  result = qword_1EB8AB828;
  if (!qword_1EB8AB828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB828);
  }

  return result;
}

uint64_t sub_1B4B9974C(uint64_t a1)
{
  *(a1 + 8) = sub_1B4B997B4(&qword_1EB8AB830, &protocol conformance descriptor for WorkoutSplitFact);
  result = sub_1B4B997B4(&qword_1EB8AB838, &protocol conformance descriptor for WorkoutSplitFact);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B4B997B4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WorkoutSplitFact(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4B99808(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4B99868(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4B998D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t AnnounceClient.observeStreamingAudio(availableHandler:dataHandler:finishHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[6] = a5;
  v7[7] = a6;
  v7[4] = a3;
  v7[5] = a4;
  v7[2] = a1;
  v7[3] = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB858, &qword_1B4D35CE8);
  v7[8] = v8;
  v7[9] = *(v8 - 8);
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();
  v9 = swift_task_alloc();
  v10 = *v6;
  v7[12] = v9;
  v7[13] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1B4B99A34, 0, 0);
}

uint64_t sub_1B4B99A34()
{
  if (qword_1EDC3CEC8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4D17F6C();
  __swift_project_value_buffer(v1, qword_1EDC3CED0);
  v2._object = 0x80000001B4D62720;
  v3._countAndFlagsBits = 0xD000000000000042;
  v3._object = 0x80000001B4D62750;
  v2._countAndFlagsBits = 0xD000000000000028;
  Logger.trace(file:function:)(v2, v3);
  *(v0 + 268) = 29;
  v6 = (*MEMORY[0x1E699DD18] + MEMORY[0x1E699DD18]);
  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  *v4 = v0;
  v4[1] = sub_1B4B99B68;

  return v6(v0 + 268);
}

uint64_t sub_1B4B99B68()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_1B4B9A4C0;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB860, &qword_1B4D35CF0);
    sub_1B49B0578(&qword_1EDC377F0, &qword_1EB8AB860, &qword_1B4D35CF0, MEMORY[0x1E699DD28]);
    v6 = sub_1B4D184FC();
    v5 = v7;
    *(v2 + 128) = v6;
    *(v2 + 136) = v7;
    v3 = sub_1B4B99D00;
    v4 = v6;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B4B99D00()
{
  *(v0 + 144) = sub_1B4D17B3C();

  return MEMORY[0x1EEE6DFA0](sub_1B4B99D6C, 0, 0);
}

uint64_t sub_1B4B99D6C(uint64_t a1)
{
  v3 = *(v1 + 96);
  v2 = *(v1 + 104);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  *(v1 + 269) = 34;
  sub_1B4D1855C();
  v8 = *MEMORY[0x1E699DCC8];
  v9 = *(v5 + 104);
  *(v1 + 152) = v9;
  *(v1 + 160) = (v5 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v9(v3, v8, v4);
  v10 = swift_allocObject();
  *(v1 + 168) = v10;
  v10[2] = v2;
  v10[3] = v7;
  v10[4] = v6;

  *(v1 + 176) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB868, &qword_1B4D35D08);
  *(v1 + 184) = sub_1B49B0578(&qword_1EDC37800, &qword_1EB8AB868, &qword_1B4D35D08, MEMORY[0x1E699DCD8]);
  v12 = sub_1B4D184FC();

  return MEMORY[0x1EEE6DFA0](sub_1B4B99EC8, v12, v11);
}

uint64_t sub_1B4B99EC8()
{
  v1 = v0[15];
  sub_1B4B9AB94();
  sub_1B4D17AEC();
  v0[24] = v1;
  v2 = v0[12];
  v3 = v0[8];
  v4 = v0[9];
  v7 = *(v4 + 8);
  v5 = v4 + 8;
  v6 = v7;
  if (v1)
  {
    v6(v2, v3);

    v8 = sub_1B4B9A540;
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v0[25] = v6;
    v0[26] = v5 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v6(v2, v3);

    v9 = v0[16];
    v10 = v0[17];
    v8 = sub_1B4B99FF4;
  }

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1B4B99FF4()
{
  *(v0 + 216) = sub_1B4D17B3C();

  return MEMORY[0x1EEE6DFA0](sub_1B4B9A060, 0, 0);
}

uint64_t sub_1B4B9A060()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 88);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  *(v0 + 270) = 36;
  *(v0 + 264) = *MEMORY[0x1E699DCD0];
  v1(v2);
  v5 = swift_allocObject();
  *(v0 + 224) = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  v7 = sub_1B4D184FC();

  return MEMORY[0x1EEE6DFA0](sub_1B4B9A13C, v7, v6);
}

uint64_t sub_1B4B9A13C()
{
  v1 = *(v0 + 192);
  sub_1B4B9AD00();
  sub_1B4D17AEC();
  *(v0 + 232) = v1;
  (*(v0 + 200))(*(v0 + 88), *(v0 + 64));

  if (v1)
  {
    v2 = sub_1B4B9A5C0;
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v3 = *(v0 + 128);
    v4 = *(v0 + 136);
    v2 = sub_1B4B9A230;
  }

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1B4B9A230()
{
  *(v0 + 240) = sub_1B4D17B3C();

  return MEMORY[0x1EEE6DFA0](sub_1B4B9A29C, 0, 0);
}

uint64_t sub_1B4B9A29C()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 152);
  v3 = *(v0 + 80);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 48);
  *(v0 + 271) = 37;
  v2(v3, v1, v4);
  v7 = swift_allocObject();
  *(v0 + 248) = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;

  v9 = sub_1B4D184FC();

  return MEMORY[0x1EEE6DFA0](sub_1B4B9A36C, v9, v8);
}

uint64_t sub_1B4B9A36C()
{
  v1 = v0[29];
  sub_1B4B9AE08();
  sub_1B4D17AEC();
  v0[32] = v1;
  v2 = v0[25];
  if (v1)
  {
    v2(v0[10], v0[8]);

    return MEMORY[0x1EEE6DFA0](sub_1B4B9A640, 0, 0);
  }

  else
  {
    v2(v0[10], v0[8]);

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_1B4B9A4C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B4B9A540()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B4B9A5C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B4B9A640()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B4B9A6C0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 160) = a3;
  *(v4 + 168) = a4;
  v5 = *a1;
  v6 = a1[1];
  *(v4 + 176) = *a1;
  *(v4 + 184) = v6;
  v7 = *(a1 + 4);
  *(v4 + 48) = *(a1 + 3);
  *(v4 + 64) = v7;
  *(v4 + 80) = *(a1 + 5);
  *(v4 + 89) = *(a1 + 89);
  *(v4 + 105) = 35;
  v8 = *(a1 + 1);
  v9 = *(a1 + 2);
  *(v4 + 136) = v5;
  v10 = MEMORY[0x1E699DD08];
  *(v4 + 144) = v6;
  v14 = (v10 + *v10);
  *(v4 + 16) = v8;
  *(v4 + 32) = v9;
  v11 = swift_task_alloc();
  *(v4 + 192) = v11;
  v12 = sub_1B4B9B2B8();
  *v11 = v4;
  v11[1] = sub_1B4B9A7D0;

  return v14(v4 + 105, v4 + 136, &type metadata for StreamingAudioRequest, v12);
}

uint64_t sub_1B4B9A7D0()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_1B4B9A97C;
  }

  else
  {
    v2 = sub_1B4B9A8E4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4B9A8E4()
{
  v13 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);
  v7[0] = *(v0 + 176);
  v7[1] = v1;
  v3 = *(v0 + 64);
  v10 = *(v0 + 48);
  v11 = v3;
  v12[0] = *(v0 + 80);
  *(v12 + 9) = *(v0 + 89);
  v4 = *(v0 + 32);
  v8 = *(v0 + 16);
  v9 = v4;
  v2(v7);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1B4B9A97C()
{
  v16 = v0;
  v1 = *(v0 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB890, &qword_1B4D35DA0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B4D1A800;
  v9 = 0;
  v10 = 0xE000000000000000;
  sub_1B4D1896C();
  MEMORY[0x1B8C7C620](0xD000000000000023, 0x80000001B4D627A0);
  swift_getErrorValue();
  sub_1B4D18DBC();
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 32) = 0;
  *(v2 + 40) = 0xE000000000000000;
  sub_1B4D18E6C();

  v3 = *(v0 + 184);
  v4 = *(v0 + 160);
  v9 = *(v0 + 176);
  v10 = v3;
  v5 = *(v0 + 64);
  v13 = *(v0 + 48);
  v14 = v5;
  v15[0] = *(v0 + 80);
  *(v15 + 9) = *(v0 + 89);
  v6 = *(v0 + 32);
  v11 = *(v0 + 16);
  v12 = v6;
  v4(&v9);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1B4B9AAE4(uint64_t *a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B4983F3C;

  return sub_1B4B9A6C0(a1, v4, v5, v6);
}

unint64_t sub_1B4B9AB94()
{
  result = qword_1EB8AB870;
  if (!qword_1EB8AB870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB870);
  }

  return result;
}

uint64_t sub_1B4B9ABE8(uint64_t a1, void (*a2)(uint64_t))
{
  a2(a1);
  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_1B4B9AC4C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B49DA364;

  return sub_1B4B9ABE8(a1, v4);
}

unint64_t sub_1B4B9AD00()
{
  result = qword_1EB8AB878;
  if (!qword_1EB8AB878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB878);
  }

  return result;
}

uint64_t sub_1B4B9AD54(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B49DA364;

  return sub_1B4B9ABE8(a1, v4);
}

unint64_t sub_1B4B9AE08()
{
  result = qword_1EB8AB880;
  if (!qword_1EB8AB880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB880);
  }

  return result;
}

uint64_t AnnounceClient.synchronizeStreamingAudio(streamingAudioText:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = 38;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v7 = (*MEMORY[0x1E699DD08] + MEMORY[0x1E699DD08]);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  v4 = sub_1B4A30828();
  *v3 = v2;
  v3[1] = sub_1B4B9AF40;
  v5 = MEMORY[0x1E69E6158];

  return v7(v2 + 48, v2 + 16, v5, v4);
}

uint64_t sub_1B4B9AF40()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B49F12A0, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1B4B9B074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1B4983F3C;

  return AnnounceClient.observeStreamingAudio(availableHandler:dataHandler:finishHandler:)(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of AnnounceClientProtocol.observeStreamingAudio(availableHandler:dataHandler:finishHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (*(a8 + 8) + **(a8 + 8));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1B4983F3C;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8);
}

unint64_t sub_1B4B9B2B8()
{
  result = qword_1EB8AB888;
  if (!qword_1EB8AB888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB888);
  }

  return result;
}

uint64_t HighestDailyDistanceAnniversaryFact.init(distance:dateEarned:yearsAgoEarned:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for HighestDailyDistanceAnniversaryFact(0);
  v10 = *(v9 + 20);
  v11 = sub_1B4D1777C();
  result = (*(*(v11 - 8) + 32))(a4 + v10, a2, v11);
  *(a4 + *(v9 + 24)) = a3;
  return result;
}

uint64_t type metadata accessor for HighestDailyDistanceAnniversaryFact(uint64_t a1)
{
  result = qword_1EB8AB8B0;
  if (!qword_1EB8AB8B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL static HighestDailyDistanceAnniversaryFact.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  sub_1B4B5A0C0(&qword_1EDC3CB38, MEMORY[0x1E6968090]);
  if (sub_1B4D1816C() & 1) != 0 && (v4 = type metadata accessor for HighestDailyDistanceAnniversaryFact(0), (sub_1B4D1774C()))
  {
    return *(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B4B9B4E8()
{
  v1 = 0x6E72614565746164;
  if (*v0 != 1)
  {
    v1 = 0x6F67417372616579;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65636E6174736964;
  }
}

uint64_t sub_1B4B9B554@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B4B9BFE8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B4B9B57C(uint64_t a1)
{
  v2 = sub_1B4B9B808();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B9B5B8(uint64_t a1)
{
  v2 = sub_1B4B9B808();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HighestDailyDistanceAnniversaryFact.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB898, &qword_1B4D35DA8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4B9B808();
  sub_1B4D18EFC();
  v8[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  sub_1B4B5A0C0(&qword_1EB8A6EE8, MEMORY[0x1E6968078]);
  sub_1B4D18D0C();
  if (!v1)
  {
    type metadata accessor for HighestDailyDistanceAnniversaryFact(0);
    v8[14] = 1;
    sub_1B4D1777C();
    sub_1B49B1198(&qword_1EDC37820, MEMORY[0x1E6969538]);
    sub_1B4D18D0C();
    v8[13] = 2;
    sub_1B4D18CEC();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1B4B9B808()
{
  result = qword_1EB8AB8A0;
  if (!qword_1EB8AB8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB8A0);
  }

  return result;
}

uint64_t HighestDailyDistanceAnniversaryFact.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = sub_1B4D1777C();
  v5 = *(v4 - 8);
  v28 = v4;
  v29 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v26 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v31 = &v23 - v8;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB8A8, &qword_1B4D35DB0);
  v27 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v10 = &v23 - v9;
  v11 = type metadata accessor for HighestDailyDistanceAnniversaryFact(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4B9B808();
  sub_1B4D18EEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v23 = v11;
  v24 = a1;
  v14 = v13;
  v15 = v29;
  v17 = v27;
  v16 = v28;
  v35 = 0;
  sub_1B4B5A0C0(&qword_1EB8A6F28, MEMORY[0x1E6968098]);
  v18 = v30;
  sub_1B4D18C0C();
  (*(v26 + 32))(v14, v31, v18);
  v34 = 1;
  sub_1B49B1198(&qword_1EB8A6FB8, MEMORY[0x1E6969558]);
  sub_1B4D18C0C();
  (*(v15 + 32))(v14 + *(v23 + 20), v7, v16);
  v33 = 2;
  v19 = sub_1B4D18BEC();
  v20 = v24;
  v21 = v19;
  (*(v17 + 8))(v10, v32);
  *(v14 + *(v23 + 24)) = v21;
  sub_1B4AF86B0(v14, v25);
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  return sub_1B4B9BCE0(v14);
}

uint64_t sub_1B4B9BCE0(uint64_t a1)
{
  v2 = type metadata accessor for HighestDailyDistanceAnniversaryFact(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_1B4B9BD6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  sub_1B4B5A0C0(&qword_1EDC3CB38, MEMORY[0x1E6968090]);
  return (sub_1B4D1816C() & 1) != 0 && (sub_1B4D1774C() & 1) != 0 && *(a1 + *(a3 + 24)) == *(a2 + *(a3 + 24));
}

void sub_1B4B9BE44(uint64_t a1)
{
  sub_1B4B59D8C(319);
  if (v1 <= 0x3F)
  {
    sub_1B4D1777C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1B4B9BEE4()
{
  result = qword_1EB8AB8C0;
  if (!qword_1EB8AB8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB8C0);
  }

  return result;
}

unint64_t sub_1B4B9BF3C()
{
  result = qword_1EB8AB8C8;
  if (!qword_1EB8AB8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB8C8);
  }

  return result;
}

unint64_t sub_1B4B9BF94()
{
  result = qword_1EB8AB8D0;
  if (!qword_1EB8AB8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB8D0);
  }

  return result;
}

uint64_t sub_1B4B9BFE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65636E6174736964 && a2 == 0xE800000000000000;
  if (v4 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E72614565746164 && a2 == 0xEA00000000006465 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F67417372616579 && a2 == 0xEE0064656E726145)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B4D18DCC();

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

unint64_t sub_1B4B9C124()
{
  result = qword_1EB8AB8D8;
  if (!qword_1EB8AB8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB8D8);
  }

  return result;
}

unint64_t sub_1B4B9C17C()
{
  result = qword_1EB8AB8E0;
  if (!qword_1EB8AB8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB8E0);
  }

  return result;
}

uint64_t sub_1B4B9C1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0);
  v4[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4B9C27C, 0, 0);
}

uint64_t sub_1B4B9C27C()
{
  v1 = v0[5];
  sub_1B4992854(v0[3], v1);
  v2 = type metadata accessor for WorkoutState(0);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1B4AE0878;
  v4 = v0[5];
  v5 = v0[2];

  return sub_1B4BB50B4(v5, v4);
}

void *FitnessPlusProperties.init(startCacheIndex:endCacheIndex:records:)@<X0>(void *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = *a2;
  *a4 = *result;
  a4[1] = v4;
  a4[2] = a3;
  return result;
}

uint64_t FitnessPlusProperties.resolve<A>(_:filter:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v34 = a4;
  v35 = a3;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = sub_1B4D1880C();
  v32 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v31 = &v29 - v8;
  v9 = *(a1 + 16);
  v45[0] = *a1;
  v45[1] = v9;
  v46 = *(a1 + 32);
  v10 = *(v4 + 16);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = v10 + 32;
    v14 = MEMORY[0x1E69E7CC0];
    v15 = v35;
    v36 = a2;
    while (v12 < *(v10 + 16))
    {
      sub_1B4B9C8D4(v13, v43);
      v16 = sub_1B4B9C7CC(v43, v45, a2, v15);
      if (v5)
      {
        goto LABEL_16;
      }

      if (v16)
      {
        v39 = v43[2];
        v40 = v43[3];
        v41 = v43[4];
        v42 = v44;
        v37 = v43[0];
        v38 = v43[1];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v47 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B4BCED1C(0, *(v14 + 16) + 1, 1);
          v15 = v35;
          v14 = v47;
        }

        v19 = *(v14 + 16);
        v18 = *(v14 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1B4BCED1C((v18 > 1), v19 + 1, 1);
          v15 = v35;
          v14 = v47;
        }

        *(v14 + 16) = v19 + 1;
        v20 = v14 + 88 * v19;
        v21 = v38;
        *(v20 + 32) = v37;
        *(v20 + 48) = v21;
        v22 = v39;
        v23 = v40;
        v24 = v41;
        *(v20 + 112) = v42;
        *(v20 + 80) = v23;
        *(v20 + 96) = v24;
        *(v20 + 64) = v22;
        a2 = v36;
      }

      else
      {
        sub_1B4B9C930(v43);
      }

      ++v12;
      v13 += 88;
      if (v11 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:

    sub_1B4B9C930(v43);

    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
    v15 = v35;
LABEL_14:
    *&v43[0] = v14;
    v25 = v31;
    v26 = (*(*(AssociatedTypeWitness - 8) + 56))(v31, 1, 1);
    MEMORY[0x1EEE9AC00](v26);
    *(&v29 - 2) = a2;
    *(&v29 - 1) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB8E8, &qword_1B4D35FD0);
    sub_1B4BA09B4(&qword_1EB8AB8F0, &qword_1EB8AB8E8, &qword_1B4D35FD0);
    v27 = v33;
    sub_1B4D182DC();
    (*(v32 + 8))(v25, v27);
  }

  return result;
}

uint64_t sub_1B4B9C7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 33);
  v11 = *(a1 + 40);
  LOWORD(v20[0]) = v7;
  v20[1] = v8;
  v21 = v9;
  v22 = v10;
  v23 = v11;
  v12 = *(a2 + 16);
  *&v19.value.monthOfYear._rawValue = *a2;
  *&v19.value.hourOfDay._rawValue = v12;
  v19.value.trainerIdentifiers._rawValue = *(a2 + 32);

  v13 = FitnessPlusPropertyDimensions.matches(_:)(&v19);

  if (v13)
  {
    v14 = *(a1 + 72);
    v15 = *(a1 + 80);
    __swift_project_boxed_opaque_existential_1((a1 + 48), v14);
    sub_1B4B70700(v14, *(v15 + 8));
    rawValue = v19.value.monthOfYear._rawValue;
    (*(*(a4 + 8) + 56))(v20, a3);
    v17 = sub_1B4977FEC(rawValue, v20[0]);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_1B4B9C984@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v39 = a1;
  v48 = a5;
  v7 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v37 = swift_getAssociatedTypeWitness();
  v36 = sub_1B4D1880C();
  v35 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v10 = &v30 - v9;
  v38 = a3;
  v31 = sub_1B4D1880C();
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v40 = &v30 - v11;
  v13 = a2[9];
  v12 = a2[10];
  __swift_project_boxed_opaque_existential_1(a2 + 6, v13);
  v14 = *(v12 + 8);
  v15 = *(v14 + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v47[3] = swift_getAssociatedTypeWitness();
  v47[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v47);
  v16 = v14;
  v17 = v35;
  v18 = v36;
  v15(v13, v16);
  v19 = v37;
  (*(v17 + 16))(v10, v39, v18);
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v10, 1, v19) == 1)
  {
    (*(v17 + 8))(v10, v18);
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
  }

  else
  {
    *(&v45 + 1) = v19;
    v46 = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v44);
    (*(v20 + 32))(boxed_opaque_existential_1, v10, v19);
  }

  sub_1B497558C(v47, v43);
  v23 = v40;
  v22 = v41;
  v24 = v38;
  v25 = v42;
  static SnapshotProperty.add(_:_:)(&v44, v43, v38, v42, v40);
  sub_1B4975024(v43, &qword_1EB8AB2A0, &unk_1B4D360A0);
  sub_1B4975024(&v44, &qword_1EB8AB2A0, &unk_1B4D360A0);
  v26 = v48;
  if (!v22)
  {
    v27 = *(v24 - 8);
    v28 = 1;
    if ((*(v27 + 48))(v23, 1, v24) == 1)
    {
      v24 = v31;
      v27 = v32;
    }

    else
    {
      (*(v25 + 64))(v24, v25);
      v28 = 0;
    }

    (*(v27 + 8))(v23, v24);
    (*(v20 + 56))(v26, v28, 1, v19);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v47);
}

uint64_t FitnessPlusProperties.resolve(kind:filter:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v84 = a3;
  v5 = *a1;
  v6 = a2[1];
  v101 = *a2;
  v7 = a2[3];
  v85 = a2[2];
  v87 = v6;
  v88 = v7;
  v8 = a2[4];
  v94 = *(v3 + 16);
  result = _s19FitnessIntelligence0A14PlusPropertiesV16allPropertyTypesSayAA0acF0_pXpGvgZ_0();
  v10 = result;
  v11 = *(result + 16);
  if (!v11)
  {

LABEL_46:
    v26 = v84;
    *(v84 + 32) = 0;
    *v26 = 0u;
    v26[1] = 0u;
    return result;
  }

  v89 = v8;
  v86 = v4;
  v12 = 0;
  v120 = 0x80000001B4D48BA0;
  v102 = 0x80000001B4D48B80;
  v99 = 0x80000001B4D48B40;
  v13 = (result + 40);
  v100 = v5;
  while (1)
  {
    if (v12 >= *(v10 + 16))
    {
      goto LABEL_186;
    }

    v14 = *(v13 - 1);
    ++v12;
    v96 = *v13;
    v97 = v14;
    (*(*(v96 + 8) + 56))(&v114);
    v15 = 0x756F436C61746F74;
    if (v114 == 4)
    {
      v15 = 0x547942746E756F63;
    }

    v16 = 0xEE0072656E696172;
    if (v114 != 4)
    {
      v16 = 0xEA0000000000746ELL;
    }

    if (v114 == 3)
    {
      v15 = 0x6B726F5774736562;
      v16 = 0xEB0000000074756FLL;
    }

    v17 = 0xD00000000000001ALL;
    v18 = v120;
    if (v114 == 1)
    {
      v18 = v102;
    }

    if (v114)
    {
      v17 = 0xD000000000000012;
    }

    else
    {
      v18 = v99;
    }

    if (v114 <= 2u)
    {
      v19 = v17;
    }

    else
    {
      v19 = v15;
    }

    if (v114 <= 2u)
    {
      v20 = v18;
    }

    else
    {
      v20 = v16;
    }

    if (v5 > 2)
    {
      v22 = 0x756F436C61746F74;
      if (v5 == 4)
      {
        v22 = 0x547942746E756F63;
      }

      v23 = 0xEE0072656E696172;
      if (v5 != 4)
      {
        v23 = 0xEA0000000000746ELL;
      }

      if (v5 == 3)
      {
        v24 = 0x6B726F5774736562;
      }

      else
      {
        v24 = v22;
      }

      if (v5 == 3)
      {
        v21 = 0xEB0000000074756FLL;
      }

      else
      {
        v21 = v23;
      }

      if (v19 != v24)
      {
        goto LABEL_42;
      }

      goto LABEL_41;
    }

    if (v5)
    {
      break;
    }

    v21 = v99;
    if (v19 == 0xD00000000000001ALL)
    {
      goto LABEL_41;
    }

LABEL_42:
    v25 = sub_1B4D18DCC();

    if (v25)
    {
      goto LABEL_48;
    }

    v13 += 2;
    v5 = v100;
    if (v11 == v12)
    {

      goto LABEL_46;
    }
  }

  if (v5 == 1)
  {
    v21 = v102;
  }

  else
  {
    v21 = v120;
  }

  if (v19 != 0xD000000000000012)
  {
    goto LABEL_42;
  }

LABEL_41:
  if (v20 != v21)
  {
    goto LABEL_42;
  }

LABEL_48:

  v27 = v94;
  v92 = *(v94 + 16);
  if (v92)
  {
    v28 = 0;
    v91 = v94 + 32;
    v82 = (v85 + 32);
    v83 = (v87 + 32);
    v29 = MEMORY[0x1E69E7CC0];
    v30 = v100;
    while (1)
    {
      if (v28 >= *(v27 + 16))
      {
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
        return result;
      }

      sub_1B4B9C8D4(v91 + 88 * v28, &v114);
      if (v101)
      {
        v95 = v29;
        v31 = v115;
        v32 = BYTE1(v115);
        v33 = *(&v115 + 1);
        v93 = v116;
        v34 = BYTE1(v116);
        v98 = *(&v116 + 1);
        if (v115 == 12)
        {
        }

        else
        {
          v35 = *(v101 + 16);

          if (v35 && !sub_1B4978C4C(v31, v101))
          {
            goto LABEL_50;
          }
        }

        v90 = v34;
        if (v32 != 7)
        {
          v36 = *(v87 + 16);
          if (v36)
          {
            v37 = v83;
            do
            {
              if (!v36)
              {
                goto LABEL_50;
              }

              v39 = *v37;
              if (v39 <= 2)
              {
                v42 = 0x616473656E646577;
                if (v39 == 1)
                {
                  v42 = 0x79616473657574;
                }

                v43 = 0xE900000000000079;
                if (v39 == 1)
                {
                  v43 = 0xE700000000000000;
                }

                if (*v37)
                {
                  v40 = v42;
                }

                else
                {
                  v40 = 0x7961646E6F6DLL;
                }

                if (*v37)
                {
                  v41 = v43;
                }

                else
                {
                  v41 = 0xE600000000000000;
                }

                if (v32 > 2)
                {
LABEL_89:
                  v44 = 0x7961646E7573;
                  if (v32 == 5)
                  {
                    v44 = 0x7961647275746173;
                    v45 = 0xE800000000000000;
                  }

                  else
                  {
                    v45 = 0xE600000000000000;
                  }

                  v46 = 0x7961647372756874;
                  if (v32 == 3)
                  {
                    v47 = 0xE800000000000000;
                  }

                  else
                  {
                    v46 = 0x796164697266;
                    v47 = 0xE600000000000000;
                  }

                  if (v32 <= 4)
                  {
                    v48 = v46;
                  }

                  else
                  {
                    v48 = v44;
                  }

                  if (v32 <= 4)
                  {
                    v49 = v47;
                  }

                  else
                  {
                    v49 = v45;
                  }

                  if (v40 != v48)
                  {
                    goto LABEL_63;
                  }

                  goto LABEL_114;
                }
              }

              else if (*v37 > 4u)
              {
                if (v39 == 5)
                {
                  v41 = 0xE800000000000000;
                  v40 = 0x7961647275746173;
                  if (v32 > 2)
                  {
                    goto LABEL_89;
                  }
                }

                else
                {
                  v40 = 0x7961646E7573;
                  v41 = 0xE600000000000000;
                  if (v32 > 2)
                  {
                    goto LABEL_89;
                  }
                }
              }

              else
              {
                if (v39 == 3)
                {
                  v40 = 0x7961647372756874;
                }

                else
                {
                  v40 = 0x796164697266;
                }

                if (v39 == 3)
                {
                  v41 = 0xE800000000000000;
                }

                else
                {
                  v41 = 0xE600000000000000;
                }

                if (v32 > 2)
                {
                  goto LABEL_89;
                }
              }

              if (v32)
              {
                if (v32 == 1)
                {
                  v50 = 0x79616473657574;
                }

                else
                {
                  v50 = 0x616473656E646577;
                }

                if (v32 == 1)
                {
                  v49 = 0xE700000000000000;
                }

                else
                {
                  v49 = 0xE900000000000079;
                }

                if (v40 != v50)
                {
                  goto LABEL_63;
                }
              }

              else
              {
                v49 = 0xE600000000000000;
                if (v40 != 0x7961646E6F6DLL)
                {
                  goto LABEL_63;
                }
              }

LABEL_114:
              if (v41 == v49)
              {

                break;
              }

LABEL_63:
              v38 = sub_1B4D18DCC();

              ++v37;
              --v36;
            }

            while ((v38 & 1) == 0);
          }
        }

        v51 = v89;
        if (v93)
        {
          v52 = v90;
        }

        else
        {
          v53 = *(v85 + 16);
          v52 = v90;
          if (v53)
          {
            v54 = v82;
            while (v53)
            {
              v55 = *v54++;
              --v53;
              if (v55 == v33)
              {
                goto LABEL_122;
              }
            }

LABEL_50:
            v30 = v100;
            v29 = v95;
LABEL_51:

            goto LABEL_52;
          }
        }

LABEL_122:
        v30 = v100;
        v29 = v95;
        if (v52 != 15)
        {
          if (*(v88 + 16))
          {
            v52 = sub_1B4978F94(v52, v88);
            if ((v52 & 1) == 0)
            {
              goto LABEL_51;
            }
          }
        }

        if (v98 && *(v51 + 16))
        {
          *&v108 = v98;
          MEMORY[0x1EEE9AC00](v52);
          v81[2] = &v108;
          v56 = v86;
          v57 = sub_1B49B16A8(sub_1B4B9FA90, v81, v51);
          v86 = v56;

          if ((v57 & 1) == 0)
          {
            goto LABEL_52;
          }
        }

        else
        {
        }
      }

      v58 = *(&v118 + 1);
      v59 = v119;
      __swift_project_boxed_opaque_existential_1(&v117, *(&v118 + 1));
      sub_1B4B70700(v58, *(v59 + 8));
      if (v108 > 2u)
      {
        if (v108 == 3)
        {
          v61 = 0x6B726F5774736562;
          v62 = 0xEB0000000074756FLL;
          if (v30 > 2)
          {
            goto LABEL_156;
          }
        }

        else
        {
          if (v108 == 4)
          {
            v61 = 0x547942746E756F63;
          }

          else
          {
            v61 = 0x756F436C61746F74;
          }

          if (v108 == 4)
          {
            v62 = 0xEE0072656E696172;
          }

          else
          {
            v62 = 0xEA0000000000746ELL;
          }

          if (v30 > 2)
          {
            goto LABEL_156;
          }
        }
      }

      else
      {
        v60 = v120;
        if (v108 == 1)
        {
          v60 = v102;
        }

        if (v108)
        {
          v61 = 0xD000000000000012;
        }

        else
        {
          v61 = 0xD00000000000001ALL;
        }

        if (v108)
        {
          v62 = v60;
        }

        else
        {
          v62 = v99;
        }

        if (v30 > 2)
        {
LABEL_156:
          v64 = 0x756F436C61746F74;
          if (v30 == 4)
          {
            v64 = 0x547942746E756F63;
          }

          v65 = 0xEE0072656E696172;
          if (v30 != 4)
          {
            v65 = 0xEA0000000000746ELL;
          }

          if (v30 == 3)
          {
            v66 = 0x6B726F5774736562;
          }

          else
          {
            v66 = v64;
          }

          if (v30 == 3)
          {
            v63 = 0xEB0000000074756FLL;
          }

          else
          {
            v63 = v65;
          }

          if (v61 == v66)
          {
LABEL_169:
            if (v62 == v63)
            {

LABEL_172:
              v111 = v117;
              v112 = v118;
              v113 = v119;
              v108 = v114;
              v109 = v115;
              v110 = v116;
              result = swift_isUniquelyReferenced_nonNull_native();
              *&v105 = v29;
              if ((result & 1) == 0)
              {
                result = sub_1B4BCED1C(0, *(v29 + 16) + 1, 1);
                v29 = v105;
              }

              v27 = v94;
              v69 = *(v29 + 16);
              v68 = *(v29 + 24);
              if (v69 >= v68 >> 1)
              {
                result = sub_1B4BCED1C((v68 > 1), v69 + 1, 1);
                v29 = v105;
              }

              *(v29 + 16) = v69 + 1;
              v70 = v29 + 88 * v69;
              v71 = v109;
              *(v70 + 32) = v108;
              *(v70 + 48) = v71;
              v72 = v110;
              v73 = v111;
              v74 = v112;
              *(v70 + 112) = v113;
              *(v70 + 80) = v73;
              *(v70 + 96) = v74;
              *(v70 + 64) = v72;
              goto LABEL_53;
            }

            goto LABEL_171;
          }

          goto LABEL_171;
        }
      }

      if (v30)
      {
        if (v30 == 1)
        {
          v63 = v102;
        }

        else
        {
          v63 = v120;
        }

        if (v61 == 0xD000000000000012)
        {
          goto LABEL_169;
        }
      }

      else
      {
        v63 = v99;
        if (v61 == 0xD00000000000001ALL)
        {
          goto LABEL_169;
        }
      }

LABEL_171:
      v67 = sub_1B4D18DCC();

      if (v67)
      {
        goto LABEL_172;
      }

LABEL_52:
      result = sub_1B4B9C930(&v114);
      v27 = v94;
LABEL_53:
      if (++v28 == v92)
      {
        goto LABEL_178;
      }
    }
  }

  v29 = MEMORY[0x1E69E7CC0];
LABEL_178:
  *&v110 = 0;
  v108 = 0u;
  v109 = 0u;
  result = sub_1B4974FBC(&v108, &v105, &qword_1EB8AB8F8, &unk_1B4D35FD8);
  v75 = *(v29 + 16);
  if (v75)
  {
    v76 = 0;
    v77 = v29 + 32;
    v78 = v86;
    while (v76 < *(v29 + 16))
    {
      sub_1B4B9C8D4(v77, &v114);
      sub_1B4B9D9AC(&v105, &v114, v97, v96, v103);
      if (v78)
      {

        sub_1B4B9C930(&v114);
        sub_1B4975024(&v105, &qword_1EB8AB8F8, &unk_1B4D35FD8);
        return sub_1B4975024(&v108, &qword_1EB8AB8F8, &unk_1B4D35FD8);
      }

      ++v76;
      sub_1B4B9C930(&v114);
      result = sub_1B4975024(&v105, &qword_1EB8AB8F8, &unk_1B4D35FD8);
      v105 = v103[0];
      v106 = v103[1];
      v107 = v104;
      v77 += 88;
      if (v75 == v76)
      {
        goto LABEL_183;
      }
    }

    goto LABEL_187;
  }

LABEL_183:
  sub_1B4975024(&v108, &qword_1EB8AB8F8, &unk_1B4D35FD8);

  v79 = v106;
  v80 = v84;
  *v84 = v105;
  *(v80 + 16) = v79;
  *(v80 + 32) = v107;
  return result;
}

uint64_t sub_1B4B9D9AC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v45 = a4;
  v33 = a1;
  v32 = a5;
  v7 = a2[9];
  v6 = a2[10];
  v8 = __swift_project_boxed_opaque_existential_1(a2 + 6, v7);
  v42 = v7;
  v43 = *(v6 + 8);
  v9 = v43;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v41);
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, v8, v7);
  v11 = v42;
  v12 = v43;
  __swift_project_boxed_opaque_existential_1(v41, v42);
  v13 = *(v9 + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v44[3] = swift_getAssociatedTypeWitness();
  v44[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v44);
  v13(v11, v12);
  __swift_destroy_boxed_opaque_existential_1Tm(v41);
  sub_1B4974FBC(v33, v35, &qword_1EB8AB8F8, &unk_1B4D35FD8);
  v14 = v36;
  if (v36)
  {
    v15 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    v16 = *(v15 + 64);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    *(&v39 + 1) = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(&v38);
    v16(v14, v15);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
  }

  else
  {
    sub_1B4975024(v35, &qword_1EB8AB8F8, &unk_1B4D35FD8);
    v38 = 0u;
    v39 = 0u;
    AssociatedConformanceWitness = 0;
  }

  sub_1B497558C(v44, v35);
  v17 = sub_1B4D1880C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v32 - v19;
  v21 = v45;
  v22 = v34;
  static SnapshotProperty.add(_:_:)(&v38, v35, a3, *(v45 + 8), &v32 - v19);
  sub_1B4975024(v35, &qword_1EB8AB2A0, &unk_1B4D360A0);
  sub_1B4975024(&v38, &qword_1EB8AB2A0, &unk_1B4D360A0);
  if (!v22)
  {
    v23 = *(a3 - 8);
    if ((*(v23 + 48))(v20, 1, a3) == 1)
    {
      (*(v18 + 8))(v20, v17);
      v24 = v32;
      *(v32 + 32) = 0;
      *v24 = 0u;
      v24[1] = 0u;
    }

    else
    {
      v42 = a3;
      v43 = v21;
      v25 = __swift_allocate_boxed_opaque_existential_1(v41);
      (*(v23 + 32))(v25, v20, a3);
      v26 = v42;
      v27 = v43;
      v28 = __swift_project_boxed_opaque_existential_1(v41, v42);
      v29 = v32;
      *(v32 + 24) = v26;
      v29[4] = *(v27 + 8);
      v30 = __swift_allocate_boxed_opaque_existential_1(v29);
      (*(*(v26 - 8) + 16))(v30, v28, v26);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v44);
}

uint64_t static FitnessPlusProperties.from(_:cacheIndex:filters:groupBy:propertyKinds:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v63 = a5;
  v55 = a4;
  v8 = *a2;
  v10 = *a3;
  v9 = a3[1];
  v12 = a3[2];
  v11 = a3[3];
  v13 = a3[4];
  v54 = a1;
  sub_1B497558C(a1, v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9BB8, &unk_1B4D2B4C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB900, &qword_1B4D35FE8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v61 = 0;
    v59 = 0u;
    v60 = 0u;
    result = sub_1B4975024(&v59, &qword_1EB8AB908, &qword_1B4D35FF0);
LABEL_10:
    *a6 = v8;
    a6[1] = v8;
    a6[2] = MEMORY[0x1E69E7CC0];
    return result;
  }

  v52 = a6;
  sub_1B496F398(&v59, v62);
  sub_1B497558C(v62, v56);
  FitnessPlusPropertyDimensions.init(from:)(v56, &v59);
  v14 = *(&v60 + 1);
  if (*(&v60 + 1) == 1)
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(v62);
LABEL_9:
    a6 = v52;
    goto LABEL_10;
  }

  v51 = v6;
  v16 = v59;
  v17 = v60;
  v49 = v59 >> 8;
  v53 = *(&v59 + 1);
  v48 = v60 & 1;
  LOWORD(v60) = v60 & 0xFF01;
  v50 = v17 >> 8;
  *v56 = v10;
  *&v56[8] = v9;
  *&v56[16] = v12;
  *&v56[24] = v11;
  *&v56[32] = v13;

  v18 = FitnessPlusPropertyDimensions.matches(_:)(v56);
  sub_1B4B9FAB0(*v56, *&v56[8], *&v56[16], *&v56[24], *&v56[32]);
  if (!v18)
  {
    sub_1B4B9FB1C(v16, v53, v17, v14);
    result = __swift_destroy_boxed_opaque_existential_1Tm(v62);
    goto LABEL_9;
  }

  LOBYTE(v59) = v16;
  BYTE1(v59) = v49;
  *(&v59 + 1) = v53;
  LOBYTE(v60) = v48;
  BYTE1(v60) = v50;
  *(&v60 + 1) = v14;
  FitnessPlusPropertyDimensions.mask(with:)(v55, v56);
  sub_1B4B9FB1C(v16, v53, v17, v14);
  LODWORD(v50) = v56[0];
  v19 = v56[1];
  v55 = *&v56[8];
  v20 = v56[16];
  v21 = v56[17];
  v22 = *&v56[24];
  v23 = sub_1B4B9FB30(v63);
  MEMORY[0x1EEE9AC00](v23);
  v47[2] = v62;
  v24 = v51;
  v25 = sub_1B4AE126C(sub_1B4B9FE64, v47, v23);

  v51 = v24;
  if (v24)
  {
  }

  else
  {
    LODWORD(v53) = v21;
    LODWORD(v63) = v20;
    v26 = v25[2];
    v27 = v25;
    if (v26)
    {
      *&v59 = MEMORY[0x1E69E7CC0];
      sub_1B4BCED1C(0, v26, 0);
      v28 = v59;
      v49 = v27;
      v29 = (v27 + 4);
      v30 = v50;
      do
      {
        sub_1B497558C(v29, v57);
        *v56 = v8;
        *&v56[8] = v8;
        v56[16] = v30;
        v31 = v19;
        v56[17] = v19;
        *&v56[24] = v55;
        v56[32] = v63;
        v56[33] = v53;
        *&v56[40] = v22;
        *&v59 = v28;
        v33 = *(v28 + 16);
        v32 = *(v28 + 24);

        if (v33 >= v32 >> 1)
        {
          sub_1B4BCED1C((v32 > 1), v33 + 1, 1);
          v30 = v50;
          v28 = v59;
        }

        *(v28 + 16) = v33 + 1;
        v34 = v28 + 88 * v33;
        v35 = *&v56[16];
        *(v34 + 32) = *v56;
        *(v34 + 48) = v35;
        v36 = *&v56[32];
        v37 = v57[0];
        v38 = v57[1];
        *(v34 + 112) = v58;
        *(v34 + 80) = v37;
        *(v34 + 96) = v38;
        *(v34 + 64) = v36;
        v29 += 40;
        --v26;
        v19 = v31;
      }

      while (v26);
    }

    else
    {

      v28 = MEMORY[0x1E69E7CC0];
    }

    v39 = v54;
    v40 = v54[3];
    v41 = v54[4];
    __swift_project_boxed_opaque_existential_1(v54, v40);
    (*(v41 + 8))(v56, v40, v41);
    v42 = *v56;
    v43 = v39[3];
    v44 = v39[4];
    __swift_project_boxed_opaque_existential_1(v39, v43);
    (*(v44 + 8))(&v59, v43, v44);
    v45 = v59;
    v46 = v52;
    *v52 = v42;
    v46[1] = v45;
    v46[2] = v28;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v62);
}

uint64_t sub_1B4B9E3BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = sub_1B4D1880C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - v10;
  result = static SnapshotProperty.from(representable:)(a2, v6, *(v7 + 8), &v15 - v10);
  if (!v3)
  {
    v13 = *(v6 - 8);
    if ((*(v13 + 48))(v11, 1, v6) == 1)
    {
      result = (*(v9 + 8))(v11, v8);
      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }

    else
    {
      *(a3 + 24) = v6;
      *(a3 + 32) = v7;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
      return (*(v13 + 32))(boxed_opaque_existential_1, v11, v6);
    }
  }

  return result;
}

uint64_t sub_1B4B9E56C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = a1;
    v6 = a2 + 32;
    v7 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1B497558C(v6, &v14);
      __swift_project_boxed_opaque_existential_1(&v14, v15);
      if (swift_getDynamicType() == v5)
      {
        sub_1B496F398(&v14, v13);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v16 = v7;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B4BCF6BC(0, *(v7 + 16) + 1, 1);
          v7 = v16;
        }

        v10 = *(v7 + 16);
        v9 = *(v7 + 24);
        if (v10 >= v9 >> 1)
        {
          sub_1B4BCF6BC((v9 > 1), v10 + 1, 1);
          v7 = v16;
        }

        *(v7 + 16) = v10 + 1;
        a1 = sub_1B496F398(v13, v7 + 40 * v10 + 32);
      }

      else
      {
        a1 = __swift_destroy_boxed_opaque_existential_1Tm(&v14);
      }

      v6 += 40;
      --v4;
    }

    while (v4);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  *&v14 = v7;
  MEMORY[0x1EEE9AC00](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB910, &qword_1B4D36098);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1B4BA09B4(&qword_1EB8AB918, &qword_1EB8AB910, &qword_1B4D36098);
  v11 = sub_1B4D182BC();

  return v11;
}

void *sub_1B4B9E81C@<X0>(void *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = *a2;
  *a4 = *result;
  a4[1] = v4;
  a4[2] = a3;
  return result;
}

uint64_t sub_1B4B9E830(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 2);
  v10 = *v1;
  v11 = v7;
  v8 = sub_1B4BA08D8();
  (*(v8 + 32))(a1, v8);
  if (!v2)
  {
    sub_1B4BA0A08(qword_1EDC3A2F8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusProperties);
    v4 = sub_1B4D17D6C();
    sub_1B4BA093C(v6);
  }

  return v4;
}

double sub_1B4B9E96C@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B4B24DD8(a1, a2, &v7);
  if (!v3)
  {
    v6 = v8;
    result = *&v7;
    *a3 = v7;
    *(a3 + 16) = v6;
  }

  return result;
}

uint64_t sub_1B4B9E9B8@<X0>(void *a1@<X0>, uint64_t a4@<X8>)
{
  v6 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v7 = *(v5 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v7 + 64))(v6, v7, v9);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedTypeWitness();
  v11 = swift_dynamicCast();
  return (*(*(v10 - 8) + 56))(a4, v11 ^ 1u, 1, v10);
}

uint64_t sub_1B4B9EBB4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B4CDE600(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1B4B9EC20(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1B4B9EC20(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B4D18D4C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1B4D1844C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1B4B9EE80(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1B4B9ED18(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1B4B9ED18(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 88 * a3;
    v6 = result - a3;
LABEL_5:
    v23 = a3;
    v7 = v6;
    v8 = v5;
    while (1)
    {
      sub_1B4B9C8D4(v8, &v17);
      v9 = (v8 - 88);
      sub_1B4B9C8D4(v8 - 88, v16);
      v10 = v17;
      v11 = v16[0];
      sub_1B4B9C930(v16);
      result = sub_1B4B9C930(&v17);
      if (v10 >= v11)
      {
LABEL_4:
        a3 = v23 + 1;
        v5 += 88;
        --v6;
        if (v23 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v19 = *(v8 + 32);
      v20 = *(v8 + 48);
      v21 = *(v8 + 64);
      v22 = *(v8 + 80);
      v17 = *v8;
      v18 = *(v8 + 16);
      v12 = *(v8 - 40);
      *(v8 + 32) = *(v8 - 56);
      *(v8 + 48) = v12;
      *(v8 + 64) = *(v8 - 24);
      *(v8 + 80) = *(v8 - 8);
      v13 = *(v8 - 72);
      *v8 = *v9;
      *(v8 + 16) = v13;
      *(v8 - 56) = v19;
      *(v8 - 40) = v20;
      *(v8 - 24) = v21;
      *(v8 - 8) = v22;
      *v9 = v17;
      *(v8 - 72) = v18;
      v8 -= 88;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B4B9EE80(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v91 = result;
  v106 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_93:
    v5 = *v91;
    if (!*v91)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_1B4CDDE84(v9);
      v9 = result;
    }

    v82 = v6;
    v105 = v9;
    v83 = *(v9 + 2);
    if (v83 >= 2)
    {
      while (*v106)
      {
        v6 = (v83 - 1);
        v84 = *&v9[16 * v83];
        v85 = *&v9[16 * v83 + 24];
        sub_1B4B9F5FC((*v106 + 88 * v84), (*v106 + 88 * *&v9[16 * v83 + 16]), (*v106 + 88 * v85), v5);
        if (v82)
        {
        }

        if (v85 < v84)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1B4CDDE84(v9);
        }

        if (v83 - 2 >= *(v9 + 2))
        {
          goto LABEL_120;
        }

        v86 = &v9[16 * v83];
        *v86 = v84;
        *(v86 + 1) = v85;
        v105 = v9;
        result = sub_1B4CDDDF8(v83 - 1);
        v9 = v105;
        v83 = *(v105 + 2);
        if (v83 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    v92 = v10;
    if (v11 >= v7)
    {
      v18 = v11;
      goto LABEL_23;
    }

    v12 = v10;
    v89 = v9;
    v9 = v6;
    v13 = *v106;
    sub_1B4B9C8D4(*v106 + 88 * v11, &v99);
    v5 = 88 * v12;
    sub_1B4B9C8D4(v13 + 88 * v12, v98);
    v93 = v98[0];
    v96 = v99;
    sub_1B4B9C930(v98);
    result = sub_1B4B9C930(&v99);
    v14 = v12 + 2;
    v15 = v13 + 88 * v12 + 176;
    while (v7 != v14)
    {
      sub_1B4B9C8D4(v15, &v99);
      sub_1B4B9C8D4(v15 - 88, v98);
      v16 = v99;
      v17 = v98[0];
      sub_1B4B9C930(v98);
      result = sub_1B4B9C930(&v99);
      ++v14;
      v15 += 88;
      if (v96 < v93 == v16 >= v17)
      {
        v18 = v14 - 1;
        goto LABEL_11;
      }
    }

    v18 = v7;
LABEL_11:
    v6 = v9;
    if (v96 < v93)
    {
      v10 = v92;
      if (v18 < v92)
      {
        goto LABEL_123;
      }

      if (v92 >= v18)
      {
        v9 = v89;
        goto LABEL_23;
      }

      v19 = 88 * v18 - 88;
      v20 = v18;
      v21 = v92;
      do
      {
        if (v21 != --v20)
        {
          v23 = *v106;
          if (!*v106)
          {
            goto LABEL_129;
          }

          v22 = v23 + v19;
          v101 = *(v23 + v5 + 32);
          v102 = *(v23 + v5 + 48);
          v103 = *(v23 + v5 + 64);
          v104 = *(v23 + v5 + 80);
          v99 = *(v23 + v5);
          v100 = *(v23 + v5 + 16);
          result = memmove((v23 + v5), (v23 + v19), 0x58uLL);
          *(v22 + 32) = v101;
          *(v22 + 48) = v102;
          *(v22 + 64) = v103;
          *(v22 + 80) = v104;
          *v22 = v99;
          *(v22 + 16) = v100;
        }

        ++v21;
        v19 -= 88;
        v5 += 88;
      }

      while (v21 < v20);
      v6 = v9;
    }

    v9 = v89;
    v10 = v92;
LABEL_23:
    v24 = v106[1];
    if (v18 < v24)
    {
      if (__OFSUB__(v18, v10))
      {
        goto LABEL_122;
      }

      if (v18 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_124;
        }

        if (v10 + a4 >= v24)
        {
          v5 = v106[1];
        }

        else
        {
          v5 = v10 + a4;
        }

        if (v5 < v10)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v18 != v5)
        {
          break;
        }
      }
    }

    v5 = v18;
    if (v18 < v10)
    {
      goto LABEL_121;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B4A1D58C(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v26 = *(v9 + 2);
    v25 = *(v9 + 3);
    v27 = v26 + 1;
    if (v26 >= v25 >> 1)
    {
      result = sub_1B4A1D58C((v25 > 1), v26 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v27;
    v28 = &v9[16 * v26];
    *(v28 + 4) = v92;
    *(v28 + 5) = v5;
    v29 = *v91;
    if (!*v91)
    {
      goto LABEL_131;
    }

    v94 = v5;
    if (v26)
    {
      while (1)
      {
        v30 = v27 - 1;
        if (v27 >= 4)
        {
          break;
        }

        if (v27 == 3)
        {
          v31 = *(v9 + 4);
          v32 = *(v9 + 5);
          v41 = __OFSUB__(v32, v31);
          v33 = v32 - v31;
          v34 = v41;
LABEL_52:
          if (v34)
          {
            goto LABEL_110;
          }

          v47 = &v9[16 * v27];
          v49 = *v47;
          v48 = *(v47 + 1);
          v50 = __OFSUB__(v48, v49);
          v51 = v48 - v49;
          v52 = v50;
          if (v50)
          {
            goto LABEL_113;
          }

          v53 = &v9[16 * v30 + 32];
          v55 = *v53;
          v54 = *(v53 + 1);
          v41 = __OFSUB__(v54, v55);
          v56 = v54 - v55;
          if (v41)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v51, v56))
          {
            goto LABEL_117;
          }

          if (v51 + v56 >= v33)
          {
            if (v33 < v56)
            {
              v30 = v27 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v57 = &v9[16 * v27];
        v59 = *v57;
        v58 = *(v57 + 1);
        v41 = __OFSUB__(v58, v59);
        v51 = v58 - v59;
        v52 = v41;
LABEL_66:
        if (v52)
        {
          goto LABEL_112;
        }

        v60 = &v9[16 * v30];
        v62 = *(v60 + 4);
        v61 = *(v60 + 5);
        v41 = __OFSUB__(v61, v62);
        v63 = v61 - v62;
        if (v41)
        {
          goto LABEL_115;
        }

        if (v63 < v51)
        {
          goto LABEL_3;
        }

LABEL_73:
        v68 = v30 - 1;
        if (v30 - 1 >= v27)
        {
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
          goto LABEL_125;
        }

        if (!*v106)
        {
          goto LABEL_128;
        }

        v69 = *&v9[16 * v68 + 32];
        v5 = *&v9[16 * v30 + 40];
        sub_1B4B9F5FC((*v106 + 88 * v69), (*v106 + 88 * *&v9[16 * v30 + 32]), (*v106 + 88 * v5), v29);
        if (v6)
        {
        }

        if (v5 < v69)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1B4CDDE84(v9);
        }

        if (v68 >= *(v9 + 2))
        {
          goto LABEL_107;
        }

        v70 = &v9[16 * v68];
        *(v70 + 4) = v69;
        *(v70 + 5) = v5;
        v105 = v9;
        result = sub_1B4CDDDF8(v30);
        v9 = v105;
        v27 = *(v105 + 2);
        if (v27 <= 1)
        {
          goto LABEL_3;
        }
      }

      v35 = &v9[16 * v27 + 32];
      v36 = *(v35 - 64);
      v37 = *(v35 - 56);
      v41 = __OFSUB__(v37, v36);
      v38 = v37 - v36;
      if (v41)
      {
        goto LABEL_108;
      }

      v40 = *(v35 - 48);
      v39 = *(v35 - 40);
      v41 = __OFSUB__(v39, v40);
      v33 = v39 - v40;
      v34 = v41;
      if (v41)
      {
        goto LABEL_109;
      }

      v42 = &v9[16 * v27];
      v44 = *v42;
      v43 = *(v42 + 1);
      v41 = __OFSUB__(v43, v44);
      v45 = v43 - v44;
      if (v41)
      {
        goto LABEL_111;
      }

      v41 = __OFADD__(v33, v45);
      v46 = v33 + v45;
      if (v41)
      {
        goto LABEL_114;
      }

      if (v46 >= v38)
      {
        v64 = &v9[16 * v30 + 32];
        v66 = *v64;
        v65 = *(v64 + 1);
        v41 = __OFSUB__(v65, v66);
        v67 = v65 - v66;
        if (v41)
        {
          goto LABEL_118;
        }

        if (v33 < v67)
        {
          v30 = v27 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v7 = v106[1];
    v8 = v94;
    if (v94 >= v7)
    {
      goto LABEL_93;
    }
  }

  v90 = v9;
  v87 = v6;
  v71 = *v106;
  v72 = *v106 + 88 * v18;
  v73 = v10 - v18;
  v95 = v5;
LABEL_84:
  v97 = v18;
  v74 = v73;
  v75 = v72;
  while (1)
  {
    sub_1B4B9C8D4(v75, &v99);
    v76 = (v75 - 88);
    sub_1B4B9C8D4(v75 - 88, v98);
    v77 = v99;
    v78 = v98[0];
    sub_1B4B9C930(v98);
    result = sub_1B4B9C930(&v99);
    if (v77 >= v78)
    {
LABEL_83:
      v5 = v95;
      v18 = v97 + 1;
      v72 += 88;
      --v73;
      if ((v97 + 1) != v95)
      {
        goto LABEL_84;
      }

      v6 = v87;
      v9 = v90;
      if (v95 < v92)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v71)
    {
      break;
    }

    v101 = *(v75 + 32);
    v102 = *(v75 + 48);
    v103 = *(v75 + 64);
    v104 = *(v75 + 80);
    v99 = *v75;
    v100 = *(v75 + 16);
    v79 = *(v75 - 40);
    *(v75 + 32) = *(v75 - 56);
    *(v75 + 48) = v79;
    *(v75 + 64) = *(v75 - 24);
    *(v75 + 80) = *(v75 - 8);
    v80 = *(v75 - 72);
    *v75 = *v76;
    *(v75 + 16) = v80;
    *(v75 - 56) = v101;
    *(v75 - 40) = v102;
    *(v75 - 24) = v103;
    *(v75 - 8) = v104;
    *v76 = v99;
    *(v75 - 72) = v100;
    v75 -= 88;
    if (__CFADD__(v74++, 1))
    {
      goto LABEL_83;
    }
  }

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
  return result;
}

uint64_t sub_1B4B9F5FC(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 88;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 88;
  if (v9 >= v11)
  {
    if (__dst != a2 || &a2[88 * v11] <= __dst)
    {
      memmove(__dst, a2, 88 * v11);
    }

    v12 = &v4[88 * v11];
    if (v10 < 88 || v6 <= v7)
    {
      v17 = v6;
      goto LABEL_35;
    }

    v30 = v4;
    while (1)
    {
      v18 = (v6 - 88);
      v19 = v12 - 88;
      v5 -= 88;
      while (1)
      {
        v12 = v19 + 88;
        v22 = v5 + 88;
        sub_1B4B9C8D4(v19, v29);
        v23 = v18;
        sub_1B4B9C8D4(v18, v28);
        v24 = v29[0];
        v25 = v28[0];
        sub_1B4B9C930(v28);
        sub_1B4B9C930(v29);
        if (v24 < v25)
        {
          break;
        }

        if (v22 != v12)
        {
          memmove(v5, v19, 0x58uLL);
        }

        v20 = v19 - 88;
        v5 -= 88;
        v21 = v19 > v30;
        v19 -= 88;
        v18 = v23;
        if (!v21)
        {
          v12 = v20 + 88;
          v17 = v6;
          v4 = v30;
          goto LABEL_35;
        }
      }

      v16 = v22 == v6;
      v17 = v23;
      if (!v16)
      {
        memmove(v5, v23, 0x58uLL);
      }

      v4 = v30;
      if (v12 > v30)
      {
        v6 = v17;
        if (v17 > v7)
        {
          continue;
        }
      }

      v12 = v19 + 88;
      goto LABEL_35;
    }
  }

  if (__dst != __src || &__src[88 * v9] <= __dst)
  {
    memmove(__dst, __src, 88 * v9);
  }

  v12 = &v4[88 * v9];
  if (v8 < 88 || v6 >= v5)
  {
    v17 = v7;
    goto LABEL_35;
  }

  do
  {
    sub_1B4B9C8D4(v6, v29);
    sub_1B4B9C8D4(v4, v28);
    v13 = v29[0];
    v14 = v28[0];
    sub_1B4B9C930(v28);
    sub_1B4B9C930(v29);
    if (v13 < v14)
    {
      v15 = v6;
      v16 = v7 == v6;
      v6 += 88;
      if (v16)
      {
        goto LABEL_13;
      }

LABEL_12:
      memmove(v7, v15, 0x58uLL);
      goto LABEL_13;
    }

    v15 = v4;
    v16 = v7 == v4;
    v4 += 88;
    if (!v16)
    {
      goto LABEL_12;
    }

LABEL_13:
    v7 += 88;
  }

  while (v4 < v12 && v6 < v5);
  v17 = v7;
LABEL_35:
  v26 = (v12 - v4) / 88;
  if (v17 != v4 || v17 >= &v4[88 * v26])
  {
    memmove(v17, v4, 88 * v26);
  }

  return 1;
}

uint64_t _s19FitnessIntelligence0A14PlusPropertiesV16allPropertyTypesSayAA0acF0_pXpGvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB920, &qword_1B4D47130);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B4D223E0;
  v1 = type metadata accessor for FitnessPlusBestWorkoutProperty(0);
  v2 = sub_1B4BA0A08(&qword_1EB8A6D80, type metadata accessor for FitnessPlusBestWorkoutProperty, &protocol conformance descriptor for FitnessPlusBestWorkoutProperty);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for FitnessPlusAverageHeartRateProperty(0);
  v4 = sub_1B4BA0A08(&qword_1EB8A6D70, type metadata accessor for FitnessPlusAverageHeartRateProperty, &protocol conformance descriptor for FitnessPlusAverageHeartRateProperty);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = type metadata accessor for FitnessPlusCaloriesProperty(0);
  v6 = sub_1B4BA0A08(&qword_1EB8A6D60, type metadata accessor for FitnessPlusCaloriesProperty, &protocol conformance descriptor for FitnessPlusCaloriesProperty);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = type metadata accessor for FitnessPlusDurationProperty(0);
  v8 = sub_1B4BA0A08(&qword_1EB8A6D58, type metadata accessor for FitnessPlusDurationProperty, &protocol conformance descriptor for FitnessPlusDurationProperty);
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  v9 = sub_1B49A50D0();
  *(v0 + 96) = &type metadata for FitnessPlusCountByTrainerProperty;
  *(v0 + 104) = v9;
  v10 = sub_1B49A507C();
  *(v0 + 112) = &type metadata for FitnessPlusWorkoutCountProperty;
  *(v0 + 120) = v10;
  return v0;
}

uint64_t sub_1B4B9FAB0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B4B9FB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
  }

  return result;
}

uint64_t sub_1B4B9FB30(uint64_t a1)
{
  result = _s19FitnessIntelligence0A14PlusPropertiesV16allPropertyTypesSayAA0acF0_pXpGvgZ_0();
  if (a1)
  {
    v27 = *(result + 16);
    if (v27)
    {
      v3 = 0;
      v25 = *(a1 + 16);
      v26 = result + 32;
      v24 = (a1 + 32);
      v4 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v29 = v4;
        v30 = v3;
        v28 = *(v26 + 16 * v3);
        (*(*(*(v26 + 16 * v3 + 8) + 8) + 56))(&v31);
        v6 = v31;
        v8 = v24;
        v7 = v25;
        while (1)
        {
          if (!v7)
          {
            v4 = v29;
            v5 = v30;
            goto LABEL_5;
          }

          v10 = *v8;
          v11 = 0x756F436C61746F74;
          if (v10 == 4)
          {
            v11 = 0x547942746E756F63;
          }

          v12 = 0xEE0072656E696172;
          if (v10 != 4)
          {
            v12 = 0xEA0000000000746ELL;
          }

          if (v10 == 3)
          {
            v11 = 0x6B726F5774736562;
            v12 = 0xEB0000000074756FLL;
          }

          v13 = 0xD00000000000001ALL;
          if (v10 == 1)
          {
            v14 = 0x80000001B4D48B80;
          }

          else
          {
            v14 = 0x80000001B4D48BA0;
          }

          if (*v8)
          {
            v13 = 0xD000000000000012;
          }

          else
          {
            v14 = 0x80000001B4D48B40;
          }

          if (*v8 <= 2u)
          {
            v15 = v13;
          }

          else
          {
            v15 = v11;
          }

          if (*v8 <= 2u)
          {
            v16 = v14;
          }

          else
          {
            v16 = v12;
          }

          if (v6 > 2)
          {
            v18 = 0x756F436C61746F74;
            if (v6 == 4)
            {
              v18 = 0x547942746E756F63;
            }

            v19 = 0xEE0072656E696172;
            if (v6 != 4)
            {
              v19 = 0xEA0000000000746ELL;
            }

            if (v6 == 3)
            {
              v20 = 0x6B726F5774736562;
            }

            else
            {
              v20 = v18;
            }

            if (v6 == 3)
            {
              v17 = 0xEB0000000074756FLL;
            }

            else
            {
              v17 = v19;
            }

            if (v15 != v20)
            {
              goto LABEL_7;
            }

            goto LABEL_47;
          }

          if (v6)
          {
            break;
          }

          v17 = 0x80000001B4D48B40;
          if (v15 == 0xD00000000000001ALL)
          {
            goto LABEL_47;
          }

LABEL_7:
          v9 = sub_1B4D18DCC();

          ++v8;
          --v7;
          if (v9)
          {
            goto LABEL_49;
          }
        }

        if (v6 == 1)
        {
          v17 = 0x80000001B4D48B80;
        }

        else
        {
          v17 = 0x80000001B4D48BA0;
        }

        if (v15 != 0xD000000000000012)
        {
          goto LABEL_7;
        }

LABEL_47:
        if (v16 != v17)
        {
          goto LABEL_7;
        }

LABEL_49:
        v4 = v29;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v32 = v29;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B4BCF2FC(0, *(v29 + 16) + 1, 1);
          v4 = v32;
        }

        v23 = *(v4 + 16);
        v22 = *(v4 + 24);
        v5 = v30;
        if (v23 >= v22 >> 1)
        {
          sub_1B4BCF2FC((v22 > 1), v23 + 1, 1);
          v4 = v32;
        }

        *(v4 + 16) = v23 + 1;
        *(v4 + 16 * v23 + 32) = v28;
LABEL_5:
        v3 = v5 + 1;
        if (v3 == v27)
        {

          return v4;
        }
      }
    }

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t *sub_1B4B9FE80(uint64_t *a1, uint64_t *a2, unsigned __int8 *a3, uint64_t a4)
{
  v5 = *a1;
  v62 = *a2;
  v63 = v5;
  LODWORD(v5) = *a3;
  v60 = a3[1];
  v61 = v5;
  v59 = *(a3 + 1);
  LODWORD(v5) = a3[16];
  v57 = a3[17];
  v58 = v5;
  v56 = *(a3 + 3);
  *&v84 = a4;

  sub_1B4B9EBB4(&v84);
  if (!v4)
  {
    v6 = v84;
    v7 = *(v84 + 16);
    v91 = 0;
    if (v7)
    {
      v83[0] = MEMORY[0x1E69E7CC0];
      sub_1B4BCF6BC(0, v7, 0);
      v8 = v83[0];
      v9 = v6 + 32;
      do
      {
        sub_1B4B9C8D4(v9, &v84);
        sub_1B497558C(v87, v89);
        sub_1B4B9C930(&v84);
        v83[0] = v8;
        v11 = *(v8 + 16);
        v10 = *(v8 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1B4BCF6BC((v10 > 1), v11 + 1, 1);
          v8 = v83[0];
        }

        *(v8 + 16) = v11 + 1;
        sub_1B496F398(v89, v8 + 40 * v11 + 32);
        v9 += 88;
        --v7;
      }

      while (v7);
      v55 = v8;

      v12 = v91;
    }

    else
    {
      v12 = 0;

      v55 = MEMORY[0x1E69E7CC0];
    }

    v13 = _s19FitnessIntelligence0A14PlusPropertiesV16allPropertyTypesSayAA0acF0_pXpGvgZ_0();
    v14 = v13;
    v50 = *(v13 + 16);
    if (v50)
    {
      v15 = 0;
      v52 = v13 + 32;
      v16 = MEMORY[0x1E69E7CC0];
      v17 = v55;
      v51 = v13;
      do
      {
        if (v15 >= *(v14 + 16))
        {
          goto LABEL_43;
        }

        v53 = v15;
        v54 = v16;
        v64 = *(v52 + 16 * v15);
        v18 = v64;
        sub_1B4B9E56C(v64, v17, v64, *(&v64 + 1));
        v19 = *(*(&v18 + 1) + 8);
        swift_getAssociatedTypeWitness();
        v69 = v19;
        swift_getAssociatedConformanceWitness();
        swift_getAssociatedTypeWitness();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7940, &qword_1B4D33720);
        v20 = sub_1B4D18A7C();

        memset(v83, 0, sizeof(v83));
        sub_1B4974FBC(v83, &v80, &qword_1EB8A9BE0, &qword_1B4D2B598);
        v68 = *(v20 + 16);
        if (v68)
        {
          v21 = 0;
          v22 = v20 + 32;
          v66 = v20;
          v67 = v18;
          v65 = v18 - 8;
          while (v21 < *(v20 + 16))
          {
            sub_1B497558C(v22, v79);
            sub_1B4974FBC(&v80, v72, &qword_1EB8A9BE0, &qword_1B4D2B598);
            v23 = v73;
            if (v73)
            {
              v24 = v74;
              v25 = __swift_project_boxed_opaque_existential_1(v72, v73);
              v26 = *(v24 + 8);
              v70 = *(v26 + 64);
              v71 = v25;
              swift_getAssociatedTypeWitness();
              swift_getAssociatedConformanceWitness();
              *(&v76 + 1) = swift_getAssociatedTypeWitness();
              AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
              __swift_allocate_boxed_opaque_existential_1(&v75);
              v70(v23, v26);
              v27 = v91;
              __swift_destroy_boxed_opaque_existential_1Tm(v72);
            }

            else
            {
              sub_1B4975024(v72, &qword_1EB8A9BE0, &qword_1B4D2B598);
              v75 = 0u;
              v76 = 0u;
              AssociatedConformanceWitness = 0;
              v27 = v91;
            }

            sub_1B497558C(v79, v72);
            v28 = v67;
            v29 = sub_1B4D1880C();
            v71 = &v50;
            v30 = *(v29 - 8);
            MEMORY[0x1EEE9AC00](v29);
            v32 = &v50 - v31;
            v4 = v27;
            static SnapshotProperty.add(_:_:)(&v75, v72, v28, v69, &v50 - v31);
            if (v27)
            {

              v39 = &qword_1EB8AB2A0;
              sub_1B4975024(v72, &qword_1EB8AB2A0, &unk_1B4D360A0);
              __swift_destroy_boxed_opaque_existential_1Tm(v79);
              sub_1B4975024(&v80, &qword_1EB8A9BE0, &qword_1B4D2B598);
              sub_1B4975024(v83, &qword_1EB8A9BE0, &qword_1B4D2B598);
              sub_1B4975024(&v75, &qword_1EB8AB2A0, &unk_1B4D360A0);

              return v39;
            }

            v91 = 0;
            sub_1B4975024(v72, &qword_1EB8AB2A0, &unk_1B4D360A0);
            sub_1B4975024(&v75, &qword_1EB8AB2A0, &unk_1B4D360A0);
            v33 = *(v28 - 8);
            if ((*(v33 + 48))(v32, 1, v28) == 1)
            {
              __swift_destroy_boxed_opaque_existential_1Tm(v79);
              sub_1B4975024(&v80, &qword_1EB8A9BE0, &qword_1B4D2B598);
              (*(v30 + 8))(v32, v29);
              memset(v78, 0, sizeof(v78));
            }

            else
            {
              *&v78[24] = v64;
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v78);
              (*(v33 + 32))(boxed_opaque_existential_1, v32, v28);
              __swift_destroy_boxed_opaque_existential_1Tm(v79);
              sub_1B4975024(&v80, &qword_1EB8A9BE0, &qword_1B4D2B598);
            }

            ++v21;
            v80 = *v78;
            v81 = *&v78[16];
            v82 = *&v78[32];
            v22 += 40;
            v20 = v66;
            if (v68 == v21)
            {
              goto LABEL_23;
            }
          }

          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

LABEL_23:

        sub_1B4975024(v83, &qword_1EB8A9BE0, &qword_1B4D2B598);
        v89[0] = v80;
        v89[1] = v81;
        v90 = v82;
        if (*(&v81 + 1))
        {
          sub_1B496F398(v89, &v84);
          sub_1B496F398(&v84, v89);
          v16 = v54;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v14 = v51;
          v36 = v53;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v16 = sub_1B4A1DBDC(0, v16[2] + 1, 1, v16);
          }

          v38 = v16[2];
          v37 = v16[3];
          if (v38 >= v37 >> 1)
          {
            v16 = sub_1B4A1DBDC((v37 > 1), v38 + 1, 1, v16);
          }

          v16[2] = v38 + 1;
          sub_1B496F398(v89, &v16[5 * v38 + 4]);
        }

        else
        {
          sub_1B4975024(v89, &qword_1EB8A9BE0, &qword_1B4D2B598);
          v36 = v53;
          v16 = v54;
          v14 = v51;
        }

        v15 = v36 + 1;
        v17 = v55;
      }

      while (v15 != v50);

      v12 = v91;
      v40 = v16[2];
      if (!v40)
      {
        goto LABEL_40;
      }
    }

    else
    {

      v16 = MEMORY[0x1E69E7CC0];
      v40 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v40)
      {
LABEL_40:

        return MEMORY[0x1E69E7CC0];
      }
    }

    v91 = v12;
    *&v89[0] = MEMORY[0x1E69E7CC0];
    sub_1B4BCED1C(0, v40, 0);
    v39 = *&v89[0];
    v41 = (v16 + 4);
    do
    {
      sub_1B497558C(v41, v87);
      *&v84 = v63;
      *(&v84 + 1) = v62;
      LOBYTE(v85) = v61;
      BYTE1(v85) = v60;
      *(&v85 + 1) = v59;
      LOBYTE(v86) = v58;
      BYTE1(v86) = v57;
      *(&v86 + 1) = v56;
      *&v89[0] = v39;
      v43 = v39[2];
      v42 = v39[3];

      if (v43 >= v42 >> 1)
      {
        sub_1B4BCED1C((v42 > 1), v43 + 1, 1);
        v39 = *&v89[0];
      }

      v39[2] = v43 + 1;
      v44 = &v39[11 * v43];
      v45 = v85;
      *(v44 + 2) = v84;
      *(v44 + 3) = v45;
      v46 = v86;
      v47 = v87[0];
      v48 = v87[1];
      v44[14] = v88;
      *(v44 + 5) = v47;
      *(v44 + 6) = v48;
      *(v44 + 4) = v46;
      v41 += 40;
      --v40;
    }

    while (v40);

    return v39;
  }

LABEL_44:

  __break(1u);
  return result;
}

unint64_t sub_1B4BA0800()
{
  result = qword_1EDC39AB0;
  if (!qword_1EDC39AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC39AB0);
  }

  return result;
}

unint64_t sub_1B4BA0854(uint64_t a1)
{
  *(a1 + 8) = sub_1B4BA0884();
  result = sub_1B4BA08D8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4BA0884()
{
  result = qword_1EDC39AC8[0];
  if (!qword_1EDC39AC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC39AC8);
  }

  return result;
}

unint64_t sub_1B4BA08D8()
{
  result = qword_1EDC39AC0;
  if (!qword_1EDC39AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC39AC0);
  }

  return result;
}

uint64_t sub_1B4BA093C(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4BA09B4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1B4BA0A08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

FitnessIntelligence::AudioSynthesisIntensity_optional __swiftcall AudioSynthesisIntensity.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1B4BA0A70()
{
  result = qword_1EB8AB928;
  if (!qword_1EB8AB928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB928);
  }

  return result;
}

uint64_t AnnounceCancellationRequest.init(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];

  result = sub_1B4BA0B28(a1);
  *a2 = v5;
  a2[1] = v4;
  return result;
}

uint64_t sub_1B4BA0B28(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceCancellationRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AnnounceCancellationRequest.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_AnnounceCancellationRequest(0);
  sub_1B4BA0DE4(&qword_1EB8A8A28, &protocol conformance descriptor for Apple_Fitness_Intelligence_AnnounceCancellationRequest);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BA0C20(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceCancellationRequest(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[1];
  v10[0] = *v1;
  v10[1] = v7;
  v8 = sub_1B4BA0F10();
  (*(v8 + 32))(a1, v8);
  if (!v2)
  {
    sub_1B4BA0DE4(&qword_1EB8A8A28, &protocol conformance descriptor for Apple_Fitness_Intelligence_AnnounceCancellationRequest);
    v4 = sub_1B4D17D6C();
    sub_1B4BA0B28(v6);
  }

  return v4;
}

uint64_t sub_1B4BA0D40@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_1B4B2502C(a1, a2, v7);
  if (!v3)
  {
    v6 = v7[1];
    *a3 = v7[0];
    a3[1] = v6;
  }

  return result;
}

uint64_t sub_1B4BA0DE4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Apple_Fitness_Intelligence_AnnounceCancellationRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4BA0E28()
{
  type metadata accessor for Apple_Fitness_Intelligence_AnnounceCancellationRequest(0);
  sub_1B4BA0DE4(&qword_1EB8A8A28, &protocol conformance descriptor for Apple_Fitness_Intelligence_AnnounceCancellationRequest);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BA0EC4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];

  result = sub_1B4BA0B28(a1);
  *a2 = v5;
  a2[1] = v4;
  return result;
}

unint64_t sub_1B4BA0F10()
{
  result = qword_1EB8AB930;
  if (!qword_1EB8AB930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB930);
  }

  return result;
}

const char *FitnessIntelligenceFeatures.feature.getter()
{
  if (*v0)
  {
    return "StreamCoachingAudio";
  }

  else
  {
    return "WorkoutVoice";
  }
}

uint64_t FitnessIntelligenceFeatures.hashValue.getter()
{
  v1 = *v0;
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D290](v1);
  return sub_1B4D18EDC();
}

unint64_t sub_1B4BA1038()
{
  result = qword_1EB8AB938;
  if (!qword_1EB8AB938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB938);
  }

  return result;
}

const char *sub_1B4BA10A0()
{
  if (*v0)
  {
    return "StreamCoachingAudio";
  }

  else
  {
    return "WorkoutVoice";
  }
}

uint64_t StreamingAudioComplete.init(identifier:chunkCount:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t StreamingAudioComplete.identifier.getter()
{
  v1 = *v0;

  return v1;
}

__n128 __swift_memcpy20_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B4BA1138(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 20))
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

uint64_t sub_1B4BA1180(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B4BA11D0(unsigned __int8 a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4BA12F8(unsigned __int8 a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4BA1420(unsigned __int8 a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4BA1550(unsigned __int8 a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4BA166C(uint64_t a1, unsigned __int8 a2)
{
  sub_1B4D1820C();
}

uint64_t sub_1B4BA1780(uint64_t a1, unsigned __int8 a2)
{
  sub_1B4D1820C();
}

uint64_t sub_1B4BA1894(uint64_t a1, unsigned __int8 a2)
{
  sub_1B4D1820C();
}

uint64_t sub_1B4BA19A8(uint64_t a1, unsigned __int8 a2)
{
  sub_1B4D1820C();
}

uint64_t sub_1B4BA1AC0(uint64_t a1, unsigned __int8 a2)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4BA1BEC(uint64_t a1, unsigned __int8 a2)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4BA1D24(uint64_t a1, unsigned __int8 a2)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4BA1E50(uint64_t a1, unsigned __int8 a2)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4BA1F78(uint64_t a1, unsigned __int8 a2)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4BA20A0(uint64_t a1, unsigned __int8 a2)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4BA21B8(uint64_t a1, unsigned __int8 a2)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4BA22DC(uint64_t a1, unsigned __int8 a2)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4BA2400(uint64_t a1, unsigned __int8 a2)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4BA2528(uint64_t a1, unsigned __int8 a2)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

id sub_1B4BA263C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v35 = MEMORY[0x1E69E7CC0];
  sub_1B4BCF11C(0, v1, 0);
  v4 = a1;
  v5 = a1 + 64;
  result = sub_1B4D188DC();
  v2 = v35;
  v7 = result;
  v8 = 0;
  v34 = *(a1 + 36);
  v29 = a1 + 72;
  v30 = v1;
  v31 = a1 + 64;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v4 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_34;
    }

    if (v34 != *(v4 + 36))
    {
      goto LABEL_35;
    }

    v11 = *(*(v4 + 48) + v7);
    if (v11 > 2)
    {
      if (v11 == 3)
      {
        v33 = 0x44676E6974696177;
        v32 = 0xEF6E6F6974617275;
        goto LABEL_21;
      }

      if (v11 == 4)
      {
        v33 = 0x7275446C61746F74;
        v32 = 0xED00006E6F697461;
        goto LABEL_21;
      }

      v32 = 0xE600000000000000;
      v12 = 0x746E656D6F6DLL;
    }

    else
    {
      if (*(*(v4 + 48) + v7))
      {
        if (v11 == 1)
        {
          v33 = 0x687370616E537369;
          v32 = 0xEF7972657551746FLL;
        }

        else
        {
          v33 = 0xD000000000000012;
          v32 = 0x80000001B4D4E5A0;
        }

        goto LABEL_21;
      }

      v32 = 0xE500000000000000;
      v12 = 0x7972657571;
    }

    v33 = v12;
LABEL_21:
    v13 = *(*(v4 + 56) + 8 * v7);
    v36 = v2;
    v14 = v4;
    v15 = *(v2 + 16);
    v16 = *(v2 + 24);
    v17 = v2;
    result = v13;
    v2 = v17;
    if (v15 >= v16 >> 1)
    {
      v28 = result;
      sub_1B4BCF11C((v16 > 1), v15 + 1, 1);
      result = v28;
      v2 = v36;
    }

    *(v2 + 16) = v15 + 1;
    v18 = (v2 + 24 * v15);
    v18[4] = v33;
    v18[5] = v32;
    v18[6] = result;
    v9 = 1 << *(v14 + 32);
    v5 = v31;
    if (v7 >= v9)
    {
      goto LABEL_36;
    }

    v19 = *(v31 + 8 * v10);
    if ((v19 & (1 << v7)) == 0)
    {
      goto LABEL_37;
    }

    v4 = v14;
    if (v34 != *(v14 + 36))
    {
      goto LABEL_38;
    }

    v20 = v19 & (-2 << (v7 & 0x3F));
    if (v20)
    {
      v9 = __clz(__rbit64(v20)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v10 << 6;
      v22 = v10 + 1;
      v23 = (v29 + 8 * v10);
      while (v22 < (v9 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          v26 = v2;
          result = sub_1B497CD6C(v7, v34, 0);
          v2 = v26;
          v9 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      v27 = v2;
      result = sub_1B497CD6C(v7, v34, 0);
      v2 = v27;
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v30)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

void __swiftcall WorkoutVoiceQueryAnalyticsEvent.init(name:queryMetrics:momentType:)(FitnessIntelligence::WorkoutVoiceQueryAnalyticsEvent *__return_ptr retstr, Swift::String name, FitnessIntelligence::QueryMetrics queryMetrics, FitnessIntelligence::WorkoutVoiceMomentType momentType)
{
  v4 = *(*&queryMetrics.isSnapshotQuery + 16);
  v5 = *(*&queryMetrics.isSnapshotQuery + 24);
  v6 = *momentType;
  retstr->name = name;
  *&retstr->queryMetrics.processingDuration = **&queryMetrics.isSnapshotQuery;
  retstr->queryMetrics.isSnapshotQuery = v4;
  retstr->queryMetrics.totalDuration = v5;
  retstr->momentType = v6;
}

Swift::Void __swiftcall WorkoutVoiceQueryAnalyticsEvent.send()()
{
  v1 = v0[1];
  v22 = *v0;
  v23 = v1;
  v24 = v0[2];
  v25 = *(v0 + 48);
  if (qword_1EDC3CEC8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4D17F6C();
  __swift_project_value_buffer(v2, qword_1EDC3CED0);
  sub_1B4BA2CAC(&v22, v20);
  v3 = sub_1B4D17F5C();
  v4 = sub_1B4D1873C();
  sub_1B4BA2CE4(&v22);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    v20[0] = v22;
    v20[1] = v23;
    v20[2] = v24;
    v21 = v25;
    sub_1B4BA2CAC(&v22, v18);
    Analytics = WorkoutVoiceQueryAnalyticsEvent.description.getter();
    v9 = v8;

    v10 = sub_1B49558AC(Analytics, v9, &v19);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1B4953000, v3, v4, "[QueryResult] %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1B8C7DDA0](v6, -1, -1);
    MEMORY[0x1B8C7DDA0](v5, -1, -1);
  }

  v11 = [objc_opt_self() sharedConnection];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 isHealthDataSubmissionAllowed];

    if (v13)
    {
      v14 = sub_1B4D1817C();
      v15 = swift_allocObject();
      v16 = v23;
      *(v15 + 16) = v22;
      *(v15 + 32) = v16;
      *(v15 + 48) = v24;
      *(v15 + 64) = v25;
      v18[4] = sub_1B4BA338C;
      v18[5] = v15;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 1107296256;
      v18[2] = sub_1B4BA33D0;
      v18[3] = &block_descriptor;
      v17 = _Block_copy(v18);
      sub_1B4BA2CAC(&v22, v20);

      AnalyticsSendEventLazy();
      _Block_release(v17);
    }
  }
}

uint64_t WorkoutVoiceQueryAnalyticsEvent.name.getter()
{
  v1 = *v0;

  return v1;
}

double WorkoutVoiceQueryAnalyticsEvent.queryMetrics.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  result = *(v1 + 40);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v2;
  *(a1 + 24) = result;
  return result;
}

uint64_t WorkoutVoiceQueryAnalyticsEvent.description.getter()
{
  v0 = sub_1B4BA30B4();
  v1 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  do
  {
    v3 = byte_1F2CB8398[v1 + 32];
    v4 = 0x7275446C61746F74;
    if (v3 != 4)
    {
      v4 = 0x746E656D6F6DLL;
    }

    v5 = 0xED00006E6F697461;
    if (v3 != 4)
    {
      v5 = 0xE600000000000000;
    }

    if (v3 == 3)
    {
      v4 = 0x44676E6974696177;
      v5 = 0xEF6E6F6974617275;
    }

    v6 = 0x687370616E537369;
    if (v3 != 1)
    {
      v6 = 0xD000000000000012;
    }

    v7 = 0xEF7972657551746FLL;
    if (v3 != 1)
    {
      v7 = 0x80000001B4D4E5A0;
    }

    if (!byte_1F2CB8398[v1 + 32])
    {
      v6 = 0x7972657571;
      v7 = 0xE500000000000000;
    }

    if (byte_1F2CB8398[v1 + 32] <= 2u)
    {
      v8 = v6;
    }

    else
    {
      v8 = v4;
    }

    if (byte_1F2CB8398[v1 + 32] <= 2u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v5;
    }

    if (*(v0 + 16))
    {
      v10 = sub_1B49E9EC4(v8, v9);
      v12 = v11;

      if (v12)
      {
        v13 = *(*(v0 + 56) + 8 * v10);
        sub_1B4D18A8C();
        MEMORY[0x1B8C7C620](61, 0xE100000000000000);
        v14 = [v13 description];
        v15 = sub_1B4D1818C();
        v17 = v16;

        MEMORY[0x1B8C7C620](v15, v17);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_1B4A1D690(0, *(v2 + 2) + 1, 1, v2);
        }

        v19 = *(v2 + 2);
        v18 = *(v2 + 3);
        if (v19 >= v18 >> 1)
        {
          v2 = sub_1B4A1D690((v18 > 1), v19 + 1, 1, v2);
        }

        *(v2 + 2) = v19 + 1;
        v20 = &v2[16 * v19];
        *(v20 + 4) = 0;
        *(v20 + 5) = 0xE000000000000000;
      }
    }

    else
    {
    }

    ++v1;
  }

  while (v1 != 6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7B38, &qword_1B4D36300);
  sub_1B49B0578(&qword_1EDC378E8, &qword_1EB8A7B38, &qword_1B4D36300, MEMORY[0x1E69E6310]);
  v21 = sub_1B4D180DC();
  swift_bridgeObjectRelease_n();
  return v21;
}

unint64_t sub_1B4BA30B4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = sub_1B4C94C80(MEMORY[0x1E69E7CC0]);
  v6 = sub_1B4D1817C();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1B4BA3B20(v6, 0, isUniquelyReferenced_nonNull_native);
  v8 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_1B4BA3B20(v8, 1, v9);
  v10 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_1B4BA3B20(v10, 2, v11);
  v12 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_1B4BA3B20(v12, 3, v13);
  v14 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_1B4BA3B20(v14, 4, v15);
  v16 = sub_1B4D1817C();

  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = v5;
  sub_1B4BA3B20(v16, 5, v17);
  v18 = sub_1B4BA263C(v5);

  if (v18[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68C0, &qword_1B4D1ABD8);
    v19 = sub_1B4D18AEC();
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC8];
  }

  v22 = v19;

  sub_1B4BA4238(v20, 1, &v22);

  return v22;
}

id sub_1B4BA33D0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_1B49DF540();
    v4 = sub_1B4D17FAC();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B4BA3488(uint64_t a1)
{
  sub_1B4D1820C();
}

unint64_t sub_1B4BA35A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B4BA45C8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1B4BA35D0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x7972657571;
  v5 = 0xEF6E6F6974617275;
  v6 = 0x44676E6974696177;
  v7 = 0xED00006E6F697461;
  v8 = 0x7275446C61746F74;
  if (v2 != 4)
  {
    v8 = 0x746E656D6F6DLL;
    v7 = 0xE600000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEF7972657551746FLL;
  v10 = 0x687370616E537369;
  if (v2 != 1)
  {
    v10 = 0xD000000000000012;
    v9 = 0x80000001B4D4E5A0;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1B4BA36E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1B4BA3728(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1B4BA37E0()
{
  result = qword_1EB8AB950;
  if (!qword_1EB8AB950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB950);
  }

  return result;
}

uint64_t sub_1B4BA3834(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
  MEMORY[0x1EEE9AC00](Descriptor);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_1B49E9FEC(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_1B4989318();
      goto LABEL_7;
    }

    sub_1B49855D4(v16, a3 & 1);
    v21 = sub_1B49E9FEC(a2);
    if ((v17 & 1) == (v22 & 1))
    {
      v13 = v21;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1B49EEFF0(a2, v10);
      return sub_1B4BA3F30(v13, v10, a1, v19);
    }

LABEL_15:
    result = sub_1B4D18E1C();
    __break(1u);
    return result;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v19[7] + 8 * v13) = a1;
}

uint64_t sub_1B4BA39C4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1B49EA0C0(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
  }

  else
  {
    v14 = v9;
    v15 = v8[3];
    if (v15 >= v13 && (a3 & 1) != 0)
    {
LABEL_7:
      v16 = *v4;
      if (v14)
      {
LABEL_8:
        v17 = v16[7];
        Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
        return sub_1B4BA4614(a1, v17 + *(*(Descriptor - 8) + 72) * v10, type metadata accessor for FitnessContextQueryDescriptor);
      }

      return sub_1B4BA3FE4(v10, a2, a1, v16, type metadata accessor for FitnessContextQueryDescriptor, type metadata accessor for FitnessContextQueryDescriptor);
    }

    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1B49896A4();
      goto LABEL_7;
    }

    sub_1B4985BD8(v13, a3 & 1);
    v20 = sub_1B49EA0C0(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      return sub_1B4BA3FE4(v10, a2, a1, v16, type metadata accessor for FitnessContextQueryDescriptor, type metadata accessor for FitnessContextQueryDescriptor);
    }
  }

  result = sub_1B4D18E1C();
  __break(1u);
  return result;
}

unint64_t sub_1B4BA3B20(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1B49EA180(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;

      return MEMORY[0x1EEE66BB8]();
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_1B4989A44();
    result = v17;
    goto LABEL_8;
  }

  sub_1B4986240(v14, a3 & 1);
  result = sub_1B49EA180(a2);
  if ((v15 & 1) == (v18 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  sub_1B4D18E1C();
  __break(1u);
  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1B4BA3C68(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1B49EA4A8(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
  }

  else
  {
    v14 = v9;
    v15 = v8[3];
    if (v15 >= v13 && (a3 & 1) != 0)
    {
LABEL_7:
      v16 = *v4;
      if (v14)
      {
LABEL_8:
        v17 = v16[7];
        v18 = type metadata accessor for WorkoutState(0);
        return sub_1B4BA4614(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for WorkoutState);
      }

      return sub_1B4BA3FE4(v10, a2, a1, v16, type metadata accessor for WorkoutState, type metadata accessor for WorkoutState);
    }

    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1B4989D04();
      goto LABEL_7;
    }

    sub_1B4986848(v13, a3 & 1);
    v20 = sub_1B49EA4A8(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      return sub_1B4BA3FE4(v10, a2, a1, v16, type metadata accessor for WorkoutState, type metadata accessor for WorkoutState);
    }
  }

  result = sub_1B4D18E1C();
  __break(1u);
  return result;
}

void sub_1B4BA3DC4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1B49E9EC4(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for WorkoutMetadata(0);
      sub_1B4BA4614(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for WorkoutMetadata);
      return;
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1B498A3C8();
    goto LABEL_7;
  }

  sub_1B49877D0(v15, a4 & 1);
  v21 = sub_1B49E9EC4(a2, a3);
  if ((v16 & 1) != (v22 & 1))
  {
LABEL_15:
    sub_1B4D18E1C();
    __break(1u);
    return;
  }

  v12 = v21;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1B4BA418C(v12, a2, a3, a1, v18);
}

uint64_t sub_1B4BA3F30(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
  result = sub_1B4BA467C(a2, v8 + *(*(Descriptor - 8) + 72) * a1, type metadata accessor for FitnessContextQueryDescriptor);
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

uint64_t sub_1B4BA3FE4(unint64_t a1, char a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v10 = a4[7];
  v11 = a5(0);
  result = sub_1B4BA467C(a3, v10 + *(*(v11 - 8) + 72) * a1, a6);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

unint64_t sub_1B4BA408C(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
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

unint64_t sub_1B4BA40D0(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 56 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  *(v4 + 48) = *(a2 + 48);
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

unint64_t sub_1B4BA4130(unint64_t result, int a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 3 * result;
  *v4 = a2;
  *(v4 + 2) = BYTE2(a2);
  *(a4[7] + 8 * result) = a3;
  v5 = a4[2];
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v7;
  }

  return result;
}

uint64_t sub_1B4BA418C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for WorkoutMetadata(0);
  result = sub_1B4BA467C(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for WorkoutMetadata);
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

void sub_1B4BA4238(void *a1, char a2, void *a3)
{
  v39 = a1[2];
  if (!v39)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = v8;
  v11 = sub_1B49E9EC4(v7, v6);
  v13 = v9[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v9[3] < v16)
  {
    sub_1B4985F9C(v16, v5 & 1);
    v11 = sub_1B49E9EC4(v7, v6);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = sub_1B4D18E1C();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v11;
  sub_1B49898D8();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D00, &unk_1B4D1BDF0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v23 = (v22[6] + 16 * v11);
  *v23 = v7;
  v23[1] = v6;
  *(v22[7] + 8 * v11) = v10;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1B4D1896C();
    MEMORY[0x1B8C7C620](0xD00000000000001BLL, 0x80000001B4D4F0C0);
    sub_1B4D18A8C();
    MEMORY[0x1B8C7C620](39, 0xE100000000000000);
    sub_1B4D18A9C();
    __break(1u);
    return;
  }

  v22[2] = v25;
  if (v39 != 1)
  {
    v5 = (a1 + 9);
    v26 = 1;
    while (v26 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v27 = *v5;
      v28 = *a3;

      v10 = v27;
      v29 = sub_1B49E9EC4(v7, v6);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v15 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v30;
      if (v28[3] < v33)
      {
        sub_1B4985F9C(v33, 1);
        v29 = sub_1B49E9EC4(v7, v6);
        if ((v17 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v35 = *a3;
      *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      v36 = (v35[6] + 16 * v29);
      *v36 = v7;
      v36[1] = v6;
      *(v35[7] + 8 * v29) = v10;
      v37 = v35[2];
      v15 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v26;
      v35[2] = v38;
      v5 += 3;
      if (v39 == v26)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

unint64_t sub_1B4BA45C8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B4D18B1C();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B4BA4614(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4BA467C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B4BA46F8()
{
  result = qword_1EB8AB958;
  if (!qword_1EB8AB958)
  {
    type metadata accessor for WorkoutVoiceMostCaloriesFact(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB958);
  }

  return result;
}

uint64_t sub_1B4BA4758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0);
  v4[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4BA47F8, 0, 0);
}

uint64_t sub_1B4BA47F8()
{
  v1 = v0[5];
  sub_1B49BFE58(v0[3], v1, type metadata accessor for WorkoutState);
  v2 = type metadata accessor for WorkoutState(0);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1B4BA4908;
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[2];

  return sub_1B4B66D04(v6, v4, v5);
}

uint64_t sub_1B4BA4908(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 56) = v1;

  sub_1B4975024(*(v4 + 40), &qword_1EB8A6A98, &unk_1B4D1CBE0);
  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B49927F0, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6(a1);
  }
}

unint64_t sub_1B4BA4A88(uint64_t a1)
{
  v2 = type metadata accessor for DateRangeDescriptor(0);
  v69 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67A8, &qword_1B4D1E060);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v71 = &v59 - v9;
  v70 = type metadata accessor for WorkoutPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v70);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B4D1777C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for WorkoutState(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B49BFE58(a1, v18, type metadata accessor for WorkoutState);
  v19 = sub_1B4CAC70C(v18);
  v20 = *(v19 + 2);
  v21 = 32;
  do
  {
    if (!v20)
    {

      goto LABEL_9;
    }

    v22 = *&v19[v21];
    v21 += 8;
    --v20;
  }

  while (v22 != 2);

  if (FIActivityMoveModeUserDefault() == 1)
  {
    v64 = v4;
    v23 = *(v16 + 36);
    v66 = v13;
    v24 = *(v13 + 16);
    v60 = v24;
    v24(v15, &v18[v23], v12);
    v24(v11, v15, v12);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B50, &qword_1B4D1D580);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1B4D1A800;
    v26 = *&v18[*(v16 + 24)];
    sub_1B49BFEC0(v18, type metadata accessor for WorkoutState);
    v27 = [v26 effectiveTypeIdentifier];

    *(v25 + 32) = v27;
    v28 = v70;
    v29 = *(v70 + 20);
    v68 = v12;
    v30 = &v11[v29];
    v31 = MEMORY[0x1E69E7CC0];
    *v30 = MEMORY[0x1E69E7CC0];
    *(v30 + 1) = v31;
    *(v30 + 2) = v31;
    *(v30 + 3) = v25;
    *(v30 + 4) = v31;
    *(v30 + 5) = v31;
    *&v11[*(v28 + 24)] = v31;
    *&v11[*(v28 + 28)] = &unk_1F2CB9830;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB1A8, &qword_1B4D33248);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB1B0, &unk_1B4D364C0);
    v33 = *(*(v32 - 8) + 72);
    v34 = (*(*(v32 - 8) + 80) + 32) & ~*(*(v32 - 8) + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1B4D1AA70;
    v63 = v35;
    v36 = (v35 + v34);
    v67 = v32;
    v37 = *(v32 + 48);
    *v36 = 0;
    sub_1B49BFE58(v11, &v36[v37], type metadata accessor for WorkoutPropertiesQuery);
    Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
    swift_storeEnumTagMultiPayload();
    v62 = v36;
    v38 = &v36[v33];
    v36[v33] = 1;
    v39 = v71;
    v65 = v15;
    v60(v71, v15, v68);
    swift_storeEnumTagMultiPayload();
    v40 = v69;
    (*(v69 + 56))(v39, 0, 1, v2);
    sub_1B49BFDE8(v39, v7);
    v41 = *(v40 + 48);
    if (v41(v7, 1, v2) == 1)
    {
      v42 = v64;
      sub_1B49BFE58(v11, v64, type metadata accessor for DateRangeDescriptor);
      if (v41(v7, 1, v2) != 1)
      {
        sub_1B4975024(v7, &qword_1EB8A67A8, &qword_1B4D1E060);
      }
    }

    else
    {
      v42 = v64;
      sub_1B4993450(v7, v64);
    }

    v49 = &v38[*(v67 + 48)];
    v50 = *v30;
    v51 = *(v30 + 1);
    v53 = *(v30 + 2);
    v52 = *(v30 + 3);
    v54 = *(v30 + 4);
    v55 = *(v30 + 5);
    sub_1B49BFE58(v42, v49, type metadata accessor for DateRangeDescriptor);

    sub_1B49BFEC0(v42, type metadata accessor for DateRangeDescriptor);
    v56 = v70;
    v57 = (v49 + *(v70 + 20));
    *v57 = v50;
    v57[1] = v51;
    v57[2] = v53;
    v57[3] = v52;
    v57[4] = v54;
    v57[5] = v55;
    *(v49 + *(v56 + 24)) = MEMORY[0x1E69E7CC0];
    *(v49 + *(v56 + 28)) = &unk_1F2CB9830;
    sub_1B4975024(v71, &qword_1EB8A67A8, &qword_1B4D1E060);
    swift_storeEnumTagMultiPayload();
    v58 = sub_1B4C9779C(v63);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_1B49BFEC0(v11, type metadata accessor for WorkoutPropertiesQuery);
    (*(v66 + 8))(v65, v68);
    return v58;
  }

LABEL_9:
  sub_1B49BFEC0(v18, type metadata accessor for WorkoutState);
  if (qword_1EDC36EF8 != -1)
  {
    swift_once();
  }

  v43 = sub_1B4D17F6C();
  __swift_project_value_buffer(v43, qword_1EDC36F00);
  v44 = sub_1B4D17F5C();
  v45 = sub_1B4D1873C();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v72 = v47;
    *v46 = 136315138;
    *(v46 + 4) = sub_1B49558AC(0xD00000000000001CLL, 0x80000001B4D624D0, &v72);
    _os_log_impl(&dword_1B4953000, v44, v45, "%s does not support this workout state", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    MEMORY[0x1B8C7DDA0](v47, -1, -1);
    MEMORY[0x1B8C7DDA0](v46, -1, -1);
  }

  return sub_1B4C9779C(MEMORY[0x1E69E7CC0]);
}

double AudioStreamBasicDescription.init(_:)@<D0>(uint64_t a1@<X8>, uint64_t *a2@<X0>)
{
  *&result = sub_1B4BA5674(a2, v6).n128_u64[0];
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t AudioStreamBasicDescription.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription(0);
  sub_1B4BA5780(&qword_1EB8A76E8, type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioStreamDescription);
  return sub_1B4D17DAC();
}

__n128 sub_1B4BA53A4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1B4BA53C0(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v7;
  v11 = *(v1 + 32);
  v8 = sub_1B4BA5780(qword_1EB8AB960, type metadata accessor for AudioStreamBasicDescription, &protocol conformance descriptor for AudioStreamBasicDescription);
  (*(v8 + 32))(a1, v8);
  if (!v2)
  {
    sub_1B4BA5780(&qword_1EB8A76E8, type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioStreamDescription);
    v4 = sub_1B4D17D6C();
    sub_1B4BA57C8(v6);
  }

  return v4;
}

double sub_1B4BA552C@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B4B2943C(a1, a2, v7);
  if (!v3)
  {
    result = *v7;
    v6 = v7[1];
    *a3 = v7[0];
    *(a3 + 16) = v6;
    *(a3 + 32) = v8;
  }

  return result;
}

uint64_t sub_1B4BA5574()
{
  type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription(0);
  sub_1B4BA5780(&qword_1EB8A76E8, type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioStreamDescription);
  return sub_1B4D17DAC();
}

double sub_1B4BA562C@<D0>(uint64_t a1@<X8>, uint64_t *a2@<X0>)
{
  *&result = sub_1B4BA5674(a2, v6).n128_u64[0];
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

__n128 sub_1B4BA5674@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v5 = *(a1 + 3);
  v6 = *(a1 + 1);
  sub_1B4BA57C8(a1);
  *a2 = v3;
  result = v5;
  *(a2 + 8) = v6;
  *(a2 + 24) = v5;
  return result;
}

__n128 sub_1B4BA56D0(uint64_t a1)
{
  v2 = *(v1 + 16);
  *a1 = *v2;
  *(a1 + 8) = *(v2 + 8);
  result = *(v2 + 24);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1B4BA5780(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B4BA57C8(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void __swiftcall FIUnitManager.userMeasurementUnitForActiveEnergyBurned()(NSUnitEnergy *__return_ptr retstr)
{
  v2 = [v1 userActiveEnergyBurnedUnit];
  sub_1B49DF540();
  v3 = objc_opt_self();
  v4 = [v3 kilocalorieUnit];
  v5 = sub_1B4D187AC();

  if (v5)
  {
    v6 = [objc_opt_self() kilocalories];
LABEL_8:
    v10 = v6;
    goto LABEL_9;
  }

  v7 = [v3 largeCalorieUnit];
  v8 = sub_1B4D187AC();

  if ((v8 & 1) == 0)
  {
    v6 = [objc_opt_self() kilojoules];
    goto LABEL_8;
  }

  if (qword_1EDC36DF0 != -1)
  {
    swift_once();
  }

  v9 = qword_1EDC36DF8;
LABEL_9:
}

void __swiftcall FIUnitManager.userMeasurementUnitForWalkingRunningDistance()(NSUnitLength *__return_ptr retstr)
{
  v2 = [v1 userDistanceWalkingRunningHKUnit];
  sub_1B49DF540();
  v3 = [objc_opt_self() mileUnit];
  v4 = sub_1B4D187AC();

  v5 = objc_opt_self();
  v6 = &selRef_miles;
  if ((v4 & 1) == 0)
  {
    v6 = &selRef_kilometers;
  }

  v7 = [v5 *v6];
}

id FIUnitManager.userMeasurementUnitForPace(for:)(uint64_t a1)
{
  v2 = [v1 userDistanceHKUnitForActivityType_];
  sub_1B49DF540();
  v3 = [objc_opt_self() mileUnit];
  v4 = sub_1B4D187AC();

  if (v4)
  {
    if (qword_1EB8A6478 != -1)
    {
      swift_once();
    }

    v5 = &qword_1EB8AC490;
  }

  else
  {
    if (qword_1EB8A6480 != -1)
    {
      swift_once();
    }

    v5 = &qword_1EB8AC498;
  }

  v6 = *v5;

  return v6;
}

id sub_1B4BA5BA0(uint64_t a1, void *a2, SEL *a3, SEL *a4)
{
  v7 = [v4 userDistanceHKUnitForActivityType_];
  sub_1B49DF540();
  v8 = [objc_opt_self() mileUnit];
  v9 = sub_1B4D187AC();

  v10 = objc_opt_self();
  if (v9)
  {
    v11 = a3;
  }

  else
  {
    v11 = a4;
  }

  v12 = [v10 *v11];

  return v12;
}

void __swiftcall FIUnitManager.userMeasurementUnitForElevation()(NSUnitLength *__return_ptr retstr)
{
  v2 = [v1 userDistanceElevationUnit];
  v3 = objc_opt_self();
  if ((v2 - 1) > 4)
  {
    v4 = &selRef_miles;
  }

  else
  {
    v4 = off_1E7C118B8[(v2 - 1)];
  }

  v5 = [v3 *v4];

  v6 = v5;
}

uint64_t sub_1B4BA5CE4(uint64_t a1)
{
  sub_1B4D173DC();
  swift_allocObject();
  sub_1B4D173CC();
  sub_1B49B1198(&qword_1EDC37820, MEMORY[0x1E6969538]);
  v1 = sub_1B4D173BC();

  return v1;
}

uint64_t sub_1B4BA5D88(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_1B4D173AC();
  swift_allocObject();
  sub_1B4D1739C();
  sub_1B49B1198(&qword_1EB8A6FB8, MEMORY[0x1E6969558]);
  sub_1B4D1738C();
  sub_1B49DDD2C(a1, a2);
}

uint64_t sub_1B4BA5E50(void *a1)
{
  a1[1] = sub_1B49B1198(&qword_1EDC37828, &protocol conformance descriptor for Date);
  a1[2] = sub_1B49B1198(&qword_1EB8A6FB8, MEMORY[0x1E6969558]);
  result = sub_1B49B1198(&qword_1EDC37820, MEMORY[0x1E6969538]);
  a1[3] = result;
  return result;
}

uint64_t LegacySnapshotContainer.init(cacheIndex:ever:year:month:week:day:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  *a9 = *a1;
  v16 = type metadata accessor for LegacySnapshotContainer(0, a7, a8, a4);
  v19 = *(*(a7 - 8) + 32);
  v19(&a9[v16[9]], a2, a7);
  v19(&a9[v16[10]], a3, a7);
  v19(&a9[v16[11]], a4, a7);
  v19(&a9[v16[12]], a5, a7);
  v17 = &a9[v16[13]];

  return (v19)(v17, a6, a7);
}

uint64_t LegacySnapshotContainer.adding(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  v55 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v48 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v49 = &v44 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v51 = &v44 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v44 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v44 - v18;
  v20 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v47 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v50 = &v44 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v52 = &v44 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v53 = &v44 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v44 - v30;
  sub_1B4B05CF0(a1, &v57);
  if (v58)
  {
    v46 = v20;
    v45 = a3;
    sub_1B496F398(&v57, v59);
    v33 = v60;
    v32 = v61;
    __swift_project_boxed_opaque_existential_1(v59, v60);
    (*(v32 + 8))(&v57, v33, v32);
    sub_1B4B05518(v6, v7);
    v34 = v62;
    SnapshotProperties.adding(_:filters:groupBy:propertyKinds:)(v59, v19, 0, 0, v6, v7, v31);
    if (v34)
    {
      (*(v54 + 8))(v19, v55);
    }

    else
    {
      v44 = v31;
      v36 = v19;
      v37 = v55;
      v54 = *(v54 + 8);
      (v54)(v36, v55);
      sub_1B4B05518(v6, v7);
      SnapshotProperties.adding(_:filters:groupBy:propertyKinds:)(v59, v16, 0, 0, v6, v7, v53);
      (v54)(v16, v37);
      v38 = v51;
      sub_1B4B05518(v6, v7);
      SnapshotProperties.adding(_:filters:groupBy:propertyKinds:)(v59, v38, 0, 0, v6, v7, v52);
      (v54)(v38, v37);
      v39 = v49;
      sub_1B4B05518(v6, v7);
      SnapshotProperties.adding(_:filters:groupBy:propertyKinds:)(v59, v39, 0, 0, v6, v7, v50);
      v62 = 0;
      (v54)(v39, v37);
      v40 = v48;
      sub_1B4B05518(v6, v7);
      v41 = v47;
      v42 = v62;
      SnapshotProperties.adding(_:filters:groupBy:propertyKinds:)(v59, v40, 0, 0, v6, v7, v47);
      (v54)(v40, v37);
      if (v42)
      {
        v43 = *(v46 + 8);
        v43(v50, v6);
        v43(v52, v6);
        v43(v53, v6);
        v43(v44, v6);
      }

      else
      {
        LegacySnapshotContainer.init(cacheIndex:ever:year:month:week:day:)(&v57, v44, v53, v52, v50, v41, v6, v7, v45);
      }
    }

    return __swift_destroy_boxed_opaque_existential_1Tm(v59);
  }

  else
  {
    sub_1B4B05D60(&v57);
    return (*(*(a2 - 8) + 16))(a3, v56, a2);
  }
}

uint64_t LegacySnapshotContainer.init(properties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  (*(a3 + 96))(&v15, a2, a3);
  *a4 = v15;
  v9 = type metadata accessor for LegacySnapshotContainer(0, a2, a3, v8);
  v14 = *(a2 - 8);
  v10 = *(v14 + 16);
  v10(&a4[v9[9]], a1, a2);
  v10(&a4[v9[10]], a1, a2);
  v10(&a4[v9[11]], a1, a2);
  v10(&a4[v9[12]], a1, a2);
  v11 = *(v14 + 32);
  v12 = &a4[v9[13]];

  return v11(v12, a1, a2);
}

uint64_t sub_1B4BA68A8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B4BA6934(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  v9 = ((v7 + v6 + ((v7 + v6 + ((v7 + v6 + ((v7 + v6 + ((v6 + 8) & ~v6)) & ~v6)) & ~v6)) & ~v6)) & ~v6) + v7;
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      return 0;
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_22;
  }

LABEL_11:
  v13 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v13 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v5 + (v9 | v13) + 1;
}