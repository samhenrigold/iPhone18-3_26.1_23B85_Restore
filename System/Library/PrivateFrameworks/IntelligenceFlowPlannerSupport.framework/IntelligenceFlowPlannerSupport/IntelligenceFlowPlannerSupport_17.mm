void sub_22BF86F80(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22C273FC4();
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
        sub_22BE5CE4C(&unk_27D907700, &qword_22C290BA0);
        v6 = sub_22C273534();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_22BE5CE4C(&unk_27D907700, &qword_22C290BA0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22BF87314(v8, v9, a1, v4);
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
    sub_22BF870C8(0, v2, 1, a1);
  }
}

void sub_22BF870C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v36 = sub_22BE5CE4C(&unk_27D907700, &qword_22C290BA0);
  MEMORY[0x28223BE20](v36);
  v35 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v26 - v10);
  MEMORY[0x28223BE20](v12);
  v15 = (&v26 - v14);
  v28 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = *(v13 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v33 = -v17;
    v34 = v16;
    v19 = a1 - a3;
    v27 = v17;
    v20 = v16 + v17 * a3;
    while (2)
    {
      v31 = v18;
      v32 = a3;
      v29 = v20;
      v30 = v19;
      v21 = v19;
      do
      {
        sub_22BE2B984(v20, v15, &unk_27D907700, &qword_22C290BA0);
        sub_22BE2B984(v18, v11, &unk_27D907700, &qword_22C290BA0);
        v22 = *v15;
        v23 = *v11;
        sub_22BE33928(v11, &unk_27D907700, &qword_22C290BA0);
        sub_22BE33928(v15, &unk_27D907700, &qword_22C290BA0);
        if (v22 >= v23)
        {
          break;
        }

        if (!v34)
        {
          __break(1u);
          return;
        }

        v24 = v35;
        sub_22BE73F60(v20, v35, &unk_27D907700, &qword_22C290BA0);
        swift_arrayInitWithTakeFrontToBack();
        sub_22BE73F60(v24, v18, &unk_27D907700, &qword_22C290BA0);
        v18 += v33;
        v20 += v33;
      }

      while (!__CFADD__(v21++, 1));
      a3 = v32 + 1;
      v18 = v31 + v27;
      v19 = v30 - 1;
      v20 = v29 + v27;
      if (v32 + 1 != v28)
      {
        continue;
      }

      break;
    }
  }
}

void sub_22BF87314(uint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v107 = a1;
  v122 = sub_22BE5CE4C(&unk_27D907700, &qword_22C290BA0);
  v114 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v111 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v121 = &v106 - v9;
  MEMORY[0x28223BE20](v10);
  v124 = (&v106 - v11);
  MEMORY[0x28223BE20](v12);
  v123 = (&v106 - v16);
  v17 = a3[1];
  v116 = a3;
  if (v17 < 1)
  {
    v19 = MEMORY[0x277D84F90];
LABEL_101:
    v118 = v19;
    v19 = *v107;
    if (!*v107)
    {
      goto LABEL_141;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = v117;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_103:
      v100 = (v118 + 16);
      for (i = *(v118 + 2); i >= 2; *v100 = i)
      {
        if (!*v116)
        {
          goto LABEL_138;
        }

        v102 = &v118[16 * i];
        v103 = *v102;
        v104 = &v100[2 * i];
        v105 = *(v104 + 1);
        sub_22BF87C58(*v116 + *(v114 + 72) * *v102, *v116 + *(v114 + 72) * *v104, *v116 + *(v114 + 72) * v105, v19);
        if (v4)
        {
          break;
        }

        if (v105 < v103)
        {
          goto LABEL_126;
        }

        if (i - 2 >= *v100)
        {
          goto LABEL_127;
        }

        *v102 = v103;
        *(v102 + 1) = v105;
        v13 = *v100 - i;
        if (*v100 < i)
        {
          goto LABEL_128;
        }

        i = *v100 - 1;
        sub_22C115E84(v104 + 16, v13, v104);
      }

LABEL_99:

      return;
    }

LABEL_135:
    v118 = sub_22C115CA4(v118, v13, v14, v15);
    goto LABEL_103;
  }

  v106 = a4;
  v18 = 0;
  v19 = MEMORY[0x277D84F90];
  while (1)
  {
    v20 = v18;
    v21 = v18 + 1;
    v108 = v18;
    if (v18 + 1 < v17)
    {
      v118 = v19;
      v119 = v18 + 1;
      v22 = *v116;
      v23 = *(v114 + 72);
      v19 = *v116 + v23 * v21;
      v24 = v123;
      sub_22BE2B984(v19, v123, &unk_27D907700, &qword_22C290BA0);
      v25 = v124;
      sub_22BE2B984(v22 + v23 * v20, v124, &unk_27D907700, &qword_22C290BA0);
      v26 = *v24;
      v112 = *v25;
      v113 = v26;
      sub_22BE33928(v25, &unk_27D907700, &qword_22C290BA0);
      sub_22BE33928(v24, &unk_27D907700, &qword_22C290BA0);
      v27 = v20 + 2;
      v115 = v23;
      v28 = v22 + v23 * (v20 + 2);
      while (1)
      {
        v29 = v27;
        if (++v119 >= v17)
        {
          break;
        }

        LODWORD(v120) = v113 < v112;
        v30 = v123;
        sub_22BE2B984(v28, v123, &unk_27D907700, &qword_22C290BA0);
        v31 = v17;
        v32 = v124;
        sub_22BE2B984(v19, v124, &unk_27D907700, &qword_22C290BA0);
        v4 = *v30;
        v33 = *v32;
        v34 = v32;
        v17 = v31;
        sub_22BE33928(v34, &unk_27D907700, &qword_22C290BA0);
        sub_22BE33928(v30, &unk_27D907700, &qword_22C290BA0);
        v28 += v115;
        v19 += v115;
        v27 = v29 + 1;
        if (((v120 ^ (v4 >= v33)) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v119 = v17;
LABEL_9:
      if (v113 >= v112)
      {
        v19 = v118;
        v21 = v119;
        v20 = v108;
      }

      else
      {
        v21 = v119;
        if (v119 < v108)
        {
          goto LABEL_132;
        }

        if (v108 >= v119)
        {
          v19 = v118;
          v20 = v108;
        }

        else
        {
          if (v17 >= v29)
          {
            v35 = v29;
          }

          else
          {
            v35 = v17;
          }

          v36 = v115 * (v35 - 1);
          v37 = v115 * v35;
          v4 = v108 * v115;
          v38 = v108;
          v20 = v108;
          do
          {
            if (v38 != --v21)
            {
              v39 = *v116;
              if (!*v116)
              {
                goto LABEL_139;
              }

              sub_22BE73F60(v39 + v4, v111, &unk_27D907700, &qword_22C290BA0);
              v40 = v4 < v36 || v39 + v4 >= v39 + v37;
              if (v40)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v4 != v36)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_22BE73F60(v111, v39 + v36, &unk_27D907700, &qword_22C290BA0);
              v20 = v108;
            }

            ++v38;
            v36 -= v115;
            v37 -= v115;
            v4 += v115;
          }

          while (v38 < v21);
          v19 = v118;
          v21 = v119;
        }
      }
    }

    v41 = v116[1];
    if (v21 < v41)
    {
      if (__OFSUB__(v21, v20))
      {
        goto LABEL_131;
      }

      if (v21 - v20 < v106)
      {
        break;
      }
    }

LABEL_47:
    if (v21 < v20)
    {
      goto LABEL_130;
    }

    v53 = swift_isUniquelyReferenced_nonNull_native();
    v119 = v21;
    if ((v53 & 1) == 0)
    {
      sub_22BE6614C();
      v19 = v97;
    }

    v54 = *(v19 + 16);
    v55 = v54 + 1;
    if (v54 >= *(v19 + 24) >> 1)
    {
      sub_22BE6614C();
      v19 = v98;
    }

    *(v19 + 16) = v55;
    v56 = v19 + 32;
    v57 = (v19 + 32 + 16 * v54);
    v58 = v119;
    *v57 = v20;
    v57[1] = v58;
    v120 = *v107;
    if (!v120)
    {
      goto LABEL_140;
    }

    if (v54)
    {
      v118 = v19;
      while (1)
      {
        v59 = v55 - 1;
        v60 = (v56 + 16 * (v55 - 1));
        v61 = (v19 + 16 * v55);
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v62 = *(v19 + 32);
          v63 = *(v19 + 40);
          v72 = __OFSUB__(v63, v62);
          v64 = v63 - v62;
          v65 = v72;
LABEL_68:
          if (v65)
          {
            goto LABEL_117;
          }

          v77 = *v61;
          v76 = v61[1];
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_120;
          }

          v81 = v60[1];
          v82 = v81 - *v60;
          if (__OFSUB__(v81, *v60))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v79, v82))
          {
            goto LABEL_125;
          }

          if (v79 + v82 >= v64)
          {
            if (v64 < v82)
            {
              v59 = v55 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v55 < 2)
        {
          goto LABEL_119;
        }

        v84 = *v61;
        v83 = v61[1];
        v72 = __OFSUB__(v83, v84);
        v79 = v83 - v84;
        v80 = v72;
LABEL_83:
        if (v80)
        {
          goto LABEL_122;
        }

        v86 = *v60;
        v85 = v60[1];
        v72 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v72)
        {
          goto LABEL_124;
        }

        if (v87 < v79)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v59 - 1 >= v55)
        {
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
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        if (!*v116)
        {
          goto LABEL_137;
        }

        v91 = (v56 + 16 * (v59 - 1));
        v92 = *v91;
        v93 = v56;
        v94 = v59;
        v19 = v56 + 16 * v59;
        v4 = *(v19 + 8);
        v95 = v117;
        sub_22BF87C58(*v116 + *(v114 + 72) * *v91, *v116 + *(v114 + 72) * *v19, *v116 + *(v114 + 72) * v4, v120);
        v117 = v95;
        if (v95)
        {
          goto LABEL_99;
        }

        if (v4 < v92)
        {
          goto LABEL_112;
        }

        v96 = *(v118 + 2);
        if (v94 > v96)
        {
          goto LABEL_113;
        }

        *v91 = v92;
        v91[1] = v4;
        if (v94 >= v96)
        {
          goto LABEL_114;
        }

        v55 = v96 - 1;
        sub_22C115E84((v19 + 16), v96 - 1 - v94, v19);
        v19 = v118;
        *(v118 + 2) = v96 - 1;
        v56 = v93;
        if (v96 <= 2)
        {
          goto LABEL_97;
        }
      }

      v66 = v56 + 16 * v55;
      v67 = *(v66 - 64);
      v68 = *(v66 - 56);
      v72 = __OFSUB__(v68, v67);
      v69 = v68 - v67;
      if (v72)
      {
        goto LABEL_115;
      }

      v71 = *(v66 - 48);
      v70 = *(v66 - 40);
      v72 = __OFSUB__(v70, v71);
      v64 = v70 - v71;
      v65 = v72;
      if (v72)
      {
        goto LABEL_116;
      }

      v73 = v61[1];
      v74 = v73 - *v61;
      if (__OFSUB__(v73, *v61))
      {
        goto LABEL_118;
      }

      v72 = __OFADD__(v64, v74);
      v75 = v64 + v74;
      if (v72)
      {
        goto LABEL_121;
      }

      if (v75 >= v69)
      {
        v89 = *v60;
        v88 = v60[1];
        v72 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v72)
        {
          goto LABEL_129;
        }

        if (v64 < v90)
        {
          v59 = v55 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v17 = v116[1];
    v18 = v119;
    if (v119 >= v17)
    {
      goto LABEL_101;
    }
  }

  v42 = v20 + v106;
  if (__OFADD__(v20, v106))
  {
    goto LABEL_133;
  }

  if (v42 >= v41)
  {
    v42 = v116[1];
  }

  if (v42 < v20)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v21 == v42)
  {
    goto LABEL_47;
  }

  v118 = v19;
  v43 = *(v114 + 72);
  v44 = *v116 + v43 * (v21 - 1);
  v4 = -v43;
  v45 = v20 - v21;
  v120 = *v116;
  v109 = v43;
  v110 = v42;
  v46 = v120 + v21 * v43;
LABEL_40:
  v119 = v21;
  v112 = v46;
  v113 = v45;
  v115 = v44;
  v47 = v44;
  while (1)
  {
    v48 = v123;
    sub_22BE2B984(v46, v123, &unk_27D907700, &qword_22C290BA0);
    v49 = v124;
    sub_22BE2B984(v47, v124, &unk_27D907700, &qword_22C290BA0);
    v50 = *v48;
    v51 = *v49;
    sub_22BE33928(v49, &unk_27D907700, &qword_22C290BA0);
    sub_22BE33928(v48, &unk_27D907700, &qword_22C290BA0);
    if (v50 >= v51)
    {
LABEL_45:
      v21 = v119 + 1;
      v44 = v115 + v109;
      v45 = v113 - 1;
      v46 = v112 + v109;
      if (v119 + 1 == v110)
      {
        v21 = v110;
        v19 = v118;
        v20 = v108;
        goto LABEL_47;
      }

      goto LABEL_40;
    }

    if (!v120)
    {
      break;
    }

    v52 = v121;
    sub_22BE73F60(v46, v121, &unk_27D907700, &qword_22C290BA0);
    swift_arrayInitWithTakeFrontToBack();
    sub_22BE73F60(v52, v47, &unk_27D907700, &qword_22C290BA0);
    v47 += v4;
    v46 += v4;
    v40 = __CFADD__(v45++, 1);
    if (v40)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
}

void sub_22BF87C58(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v58 = sub_22BE5CE4C(&unk_27D907700, &qword_22C290BA0);
  MEMORY[0x28223BE20](v58);
  v59 = (&v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v60 = (&v51 - v10);
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  v13 = a2 - a1;
  v14 = a2 - a1 == 0x8000000000000000 && v12 == -1;
  if (v14)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_61;
  }

  v17 = v13 / v12;
  v64 = a1;
  v63 = a4;
  v18 = v15 / v12;
  if (v13 / v12 >= v15 / v12)
  {
    sub_22BE682E8(a2, v15 / v12, a4);
    v33 = a4 + v18 * v12;
    v34 = -v12;
    v35 = v33;
    v54 = -v12;
    v55 = a4;
    v61 = a1;
LABEL_36:
    v36 = a2 + v34;
    v52 = v35;
    v56 = a2 + v34;
    while (1)
    {
      if (v33 <= a4)
      {
        v64 = a2;
        v62 = v35;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v53 = v35;
      v37 = a2;
      v38 = a3 + v34;
      v39 = v33 + v34;
      v40 = v60;
      v41 = v36;
      v42 = v33;
      sub_22BE2B984(v33 + v34, v60, &unk_27D907700, &qword_22C290BA0);
      v43 = v41;
      v44 = v59;
      sub_22BE2B984(v43, v59, &unk_27D907700, &qword_22C290BA0);
      v57 = *v40;
      v45 = v44;
      v46 = *v44;
      sub_22BE33928(v45, &unk_27D907700, &qword_22C290BA0);
      sub_22BE33928(v40, &unk_27D907700, &qword_22C290BA0);
      if (v57 < v46)
      {
        if (a3 < v37 || v38 >= v37)
        {
          a2 = v56;
          swift_arrayInitWithTakeFrontToBack();
          v35 = v53;
          v34 = v54;
          a4 = v55;
          a3 = v38;
          a1 = v61;
          v33 = v42;
        }

        else
        {
          v34 = v54;
          v35 = v53;
          v14 = a3 == v37;
          a4 = v55;
          v49 = v56;
          a2 = v56;
          a3 = v38;
          a1 = v61;
          v33 = v42;
          if (!v14)
          {
            v50 = v53;
            swift_arrayInitWithTakeBackToFront();
            v33 = v42;
            a2 = v49;
            v35 = v50;
          }
        }

        goto LABEL_36;
      }

      v47 = a3 < v42 || v38 >= v42;
      a2 = v37;
      if (v47)
      {
        swift_arrayInitWithTakeFrontToBack();
        a3 += v34;
        v33 = v39;
        v35 = v39;
        v34 = v54;
        a4 = v55;
        a1 = v61;
        v36 = v56;
      }

      else
      {
        v35 = v39;
        v14 = v42 == a3;
        a3 += v34;
        v33 = v39;
        v34 = v54;
        a4 = v55;
        a1 = v61;
        v36 = v56;
        if (!v14)
        {
          swift_arrayInitWithTakeBackToFront();
          a3 = v38;
          v33 = v39;
          v35 = v39;
        }
      }
    }

    v64 = a2;
    v62 = v52;
  }

  else
  {
    sub_22BE682E8(a1, v13 / v12, a4);
    v56 = a3;
    v57 = a4 + v17 * v12;
    v62 = v57;
    v19 = a1;
    while (a4 < v57 && a2 < a3)
    {
      v61 = v19;
      v21 = v12;
      v22 = a2;
      v23 = a2;
      v24 = v60;
      sub_22BE2B984(v22, v60, &unk_27D907700, &qword_22C290BA0);
      v25 = a4;
      v26 = a4;
      v27 = v59;
      sub_22BE2B984(v25, v59, &unk_27D907700, &qword_22C290BA0);
      v28 = *v24;
      v29 = *v27;
      sub_22BE33928(v27, &unk_27D907700, &qword_22C290BA0);
      sub_22BE33928(v24, &unk_27D907700, &qword_22C290BA0);
      if (v28 >= v29)
      {
        v12 = v21;
        a4 = v26 + v21;
        v30 = v61;
        if (v61 < v26 || v61 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 = v23;
        }

        else
        {
          a2 = v23;
          if (v61 != v26)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v63 = v26 + v21;
      }

      else
      {
        v12 = v21;
        a2 = v23 + v21;
        v30 = v61;
        v31 = v61 < v23 || v61 >= a2;
        a4 = v26;
        if (v31)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v61 != v23)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v19 = v30 + v12;
      v64 = v19;
      a3 = v56;
    }
  }

LABEL_58:
  sub_22C115DA8(&v64, &v63, &v62);
}

uint64_t sub_22BF88114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  *(v5 + 16) = a1;
  v9 = *a4;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_22BF881CC;

  return sub_22BF81A68(a2, a3, v9, a5);
}

uint64_t sub_22BF881CC()
{
  sub_22BE183FC();
  v3 = v2;
  sub_22BE190F0();
  v5 = v4;
  sub_22BE18800();
  *v6 = v5;
  v7 = *v1;
  sub_22BE18C2C();
  *v8 = v7;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_22BF882C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, char a6, uint64_t a7)
{
  v14 = *a5;
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_22BE40CC8;

  return sub_22BF8389C(a1, a2, a3, a4, v14, a6, a7);
}

uint64_t sub_22BF883E4(uint64_t a1, uint64_t a2)
{
  sub_22BF88D00();
  sub_22BE201F0();
  sub_22BE1A8A8();
  v2 = swift_task_alloc();
  v3 = sub_22BE23AE4(v2);
  *v3 = v4;
  v3[1] = sub_22BE40CC8;
  sub_22BE252DC();

  return v10(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_22BF8849C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BE26858();
  sub_22BE1C1B4();
  v13 = sub_22C272874();
  sub_22BE17A18(v13);
  v14 = swift_task_alloc();
  *(v12 + 16) = v14;
  *v14 = v12;
  v14[1] = sub_22BE40CC8;
  sub_22BE25494();

  return v22(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

unint64_t sub_22BF885D0()
{
  result = qword_27D90BA28;
  if (!qword_27D90BA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90BA28);
  }

  return result;
}

uint64_t sub_22BF88624()
{
  sub_22BE1C1B4();
  v1 = sub_22C272874();
  sub_22BE17A18(v1);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_22BE40CC8;
  sub_22BE2B734();
  sub_22BE25494();

  return sub_22BF83F60(v3, v4, v5, v6, v7, v8, v9, v10);
}

_BYTE *storeEnumTagSinglePayload for ExecutionSessionError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22BF8888C()
{
  result = qword_27D90BA30;
  if (!qword_27D90BA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90BA30);
  }

  return result;
}

unint64_t sub_22BF888E0()
{
  result = qword_27D90BA38;
  if (!qword_27D90BA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90BA38);
  }

  return result;
}

void sub_22BF889B8(void *a1@<X8>)
{
  v2[22] = *a1;
  v2[23] = a1[1];
  v2[24] = *(v1 + 32);
  v2[25] = (v1 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
}

void sub_22BF889E8()
{
}

void sub_22BF88A14(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_22BF88A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
}

uint64_t sub_22BF88A8C(uint64_t a1)
{

  return sub_22C270B54();
}

uint64_t sub_22BF88AA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;

  return sub_22C271FF4();
}

uint64_t sub_22BF88ACC()
{

  return swift_slowAlloc();
}

char *sub_22BF88AE8(uint64_t a1)
{
  v4 = *(a1 + 48);
  *v2 = v1;
  v2[1] = v3;
  return v2 + v4;
}

uint64_t sub_22BF88B08()
{

  return swift_slowAlloc();
}

uint64_t sub_22BF88B28()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_22BF88B44(uint64_t a1)
{

  return sub_22C270B54();
}

uint64_t sub_22BF88B60(uint64_t a1)
{

  return sub_22C273824();
}

uint64_t sub_22BF88B78(_WORD *a1, __n128 a2)
{
  *a1 = 0;

  return sub_22C271FD4();
}

uint64_t sub_22BF88BC4(uint64_t result)
{
  *(v1 + 14) = result;
  *(v1 + 22) = 2048;
  *(v1 + 24) = 328;
  return result;
}

uint64_t sub_22BF88C00(__n128 a1)
{

  return sub_22C271AD4();
}

unint64_t sub_22BF88C18(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *v10 = a1;

  return sub_22BE61C88(0xD000000000000016, v11 | 0x8000000000000000, &a10);
}

uint64_t sub_22BF88C7C(uint64_t a1)
{
  *(v1 + 72) = a1;

  return sub_22C272024();
}

uint64_t sub_22BF88C94(uint64_t a1)
{
  *(v1 + 64) = a1;

  return swift_task_alloc();
}

void sub_22BF88D14()
{
}

void sub_22BF88D34(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t sub_22BF88D54(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_task_create();
}

id sub_22BF88D90(float a1)
{
  *v2 = a1;

  return v1;
}

uint64_t sub_22BF88DA8(uint64_t a1)
{
  *(v1 + 56) = a1;

  return swift_task_alloc();
}

uint64_t sub_22BF88DC0()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BA40);
  sub_22BE199F4(v0, qword_27D90BA40);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D20;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "onScreen";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "conversational";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "announcement";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "notification";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "visual";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "unknownSource";
  *(v18 + 1) = 13;
  v18[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22BF890B0()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BA58);
  sub_22BE199F4(v0, qword_27D90BA58);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_22C290D30;
  v4 = v72 + v3 + v1[14];
  *(v72 + v3) = 0;
  *v4 = "APP_IN_FOCUS_BUNDLE_ID";
  *(v4 + 8) = 22;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_22C270894();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v72 + v3 + v2 + v1[14];
  *(v72 + v3 + v2) = 1;
  *v8 = "BLUETOOTH_DEVICE_TYPE";
  *(v8 + 8) = 21;
  *(v8 + 16) = 2;
  v7();
  v9 = (v72 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "CALENDAR_EVENTS";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v7();
  v11 = (v72 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "MOTION_STATE";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v7();
  v13 = (v72 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "NOW_PLAYING_PLAYBACK_STATE";
  *(v14 + 1) = 26;
  v14[16] = 2;
  v7();
  v15 = (v72 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "POINT_OF_INTEREST";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v7();
  v17 = (v72 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "RECENT_TRANSCRIPT";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v7();
  v19 = (v72 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "SEMANTIC_LOCATION";
  *(v20 + 1) = 17;
  v20[16] = 2;
  v7();
  v21 = (v72 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "ON_SCREEN_CONTENT_EMAIL_ADDRESS";
  *(v22 + 1) = 31;
  v22[16] = 2;
  v7();
  v23 = (v72 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "ON_SCREEN_CONTENT_PHONE_NUMBER";
  *(v24 + 1) = 30;
  v24[16] = 2;
  v7();
  v25 = (v72 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "ON_SCREEN_CONTENT_POSTAL_ADDRESS";
  *(v26 + 1) = 32;
  v26[16] = 2;
  v7();
  v27 = (v72 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "ON_SCREEN_CONTENT_URI_LINK";
  *(v28 + 1) = 26;
  v28[16] = 2;
  v7();
  v29 = (v72 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "ON_SCREEN_PERSON";
  *(v30 + 1) = 16;
  v30[16] = 2;
  v7();
  v31 = (v72 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "ON_SCREEN_HOME";
  *(v32 + 1) = 14;
  v32[16] = 2;
  v7();
  v33 = (v72 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "ON_SCREEN_NOTIFICATION";
  *(v34 + 1) = 22;
  v34[16] = 2;
  v7();
  v35 = (v72 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "ON_SCREEN_DATE_TIME";
  *(v36 + 1) = 19;
  v36[16] = 2;
  v7();
  v37 = (v72 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "CONVERSATIONAL_REMINDER";
  *(v38 + 1) = 23;
  v38[16] = 2;
  v7();
  v39 = (v72 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 17;
  *v40 = "CONVERSATIONAL_CALENDAR_EVENT";
  *(v40 + 1) = 29;
  v40[16] = 2;
  v7();
  v41 = (v72 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 18;
  *v42 = "CONVERSATIONAL_PEOPLE";
  *(v42 + 1) = 21;
  v42[16] = 2;
  v7();
  v43 = (v72 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 19;
  *v44 = "CONVERSATIONAL_PLACES";
  *(v44 + 1) = 21;
  v44[16] = 2;
  v7();
  v45 = (v72 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 20;
  *v46 = "CONVERSATIONAL_ALARM";
  *(v46 + 1) = 20;
  v46[16] = 2;
  v7();
  v47 = (v72 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 21;
  *v48 = "CONVERSATIONAL_TIMER";
  *(v48 + 1) = 20;
  v48[16] = 2;
  v7();
  v49 = (v72 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 22;
  *v50 = "NOW_PLAYING_MEDIA_ITEM";
  *(v50 + 1) = 22;
  v50[16] = 2;
  v7();
  v51 = (v72 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 23;
  *v52 = "ON_SCREEN_CONTENT_APP_ENTITY";
  *(v52 + 1) = 28;
  v52[16] = 2;
  v7();
  v53 = (v72 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 24;
  *v54 = "SIRI_REQUEST_CONTEXT";
  *(v54 + 1) = 20;
  v54[16] = 2;
  v7();
  v55 = (v72 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 25;
  *v56 = "CURRENT_LOCATION";
  *(v56 + 1) = 16;
  v56[16] = 2;
  v7();
  v57 = (v72 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 26;
  *v58 = "INTELLIGENCE_COMMAND";
  *(v58 + 1) = 20;
  v58[16] = 2;
  v7();
  v59 = (v72 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 27;
  *v60 = "HAS_FOCUSED_ON_SCREEN_DOCUMENT";
  *(v60 + 1) = 30;
  v60[16] = 2;
  v7();
  v61 = (v72 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 28;
  *v62 = "HAS_FOCUSED_ON_SCREEN_IMAGE";
  *(v62 + 1) = 27;
  v62[16] = 2;
  v7();
  v63 = (v72 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 29;
  *v64 = "ON_SCREEN_UI_TEXT";
  *(v64 + 1) = 17;
  v64[16] = 2;
  v7();
  v65 = (v72 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 30;
  *v66 = "ON_SCREEN_APP";
  *(v66 + 1) = 13;
  v66[16] = 2;
  v7();
  v67 = (v72 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 31;
  *v68 = "ON_SCREEN_CONTENT_DOCUMENT_IMAGE";
  *(v68 + 1) = 32;
  v68[16] = 2;
  v7();
  v69 = (v72 + v3 + 32 * v2);
  v70 = v69 + v1[14];
  *v69 = 32;
  *v70 = "LIVE_CALL";
  *(v70 + 1) = 9;
  v70[16] = 2;
  v7();
  return sub_22C2708A4();
}

uint64_t sub_22BF899E8()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BA70);
  sub_22BE199F4(v0, qword_27D90BA70);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D40;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "PlaybackStateUnknown";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PlaybackStatePlaying";
  *(v10 + 8) = 20;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "PlaybackStatePaused";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "PlaybackStateStopped";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "PlaybackStateInterrupted";
  *(v16 + 1) = 24;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "PlaybackStateSeeking";
  *(v18 + 1) = 20;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "PlaybackStateUnsupported";
  *(v20 + 1) = 24;
  v20[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22BF89D10()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BA88);
  sub_22BE199F4(v0, qword_27D90BA88);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "MediaTypeNone";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "MediaTypeAudio";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "MediaTypeVideo";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "MediaTypeUnsupported";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22BF89F80()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BAA0);
  sub_22BE199F4(v0, qword_27D90BAA0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_22C28E690;
  v4 = v24 + v3 + v1[14];
  *(v24 + v3) = 0;
  *v4 = "MediaSubTypeMusic";
  *(v4 + 8) = 17;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_22C270894();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v24 + v3 + v2 + v1[14];
  *(v24 + v3 + v2) = 1;
  *v8 = "MediaSubTypeTVShow";
  *(v8 + 8) = 18;
  *(v8 + 16) = 2;
  v7();
  v9 = (v24 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "MediaSubTypeMovie";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v7();
  v11 = (v24 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "MediaSubTypePodcast";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v7();
  v13 = (v24 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "MediaSubTypeAudiobook";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v7();
  v15 = (v24 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "MediaSubTypeITunesU";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v7();
  v17 = (v24 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "MediaSubTypeHomeMedia";
  *(v18 + 1) = 21;
  v18[16] = 2;
  v7();
  v19 = (v24 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "MediaSubTypeUnsupported";
  *(v20 + 1) = 23;
  v20[16] = 2;
  v7();
  v21 = (v24 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "MediaSubTypeNone";
  *(v22 + 1) = 16;
  v22[16] = 2;
  v7();
  return sub_22C2708A4();
}

uint64_t sub_22BF8A320()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BAB8);
  sub_22BE199F4(v0, qword_27D90BAB8);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "Unknown";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Unsure1";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "UnsureN";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "Known";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "Confident";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22BF8A5D0()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BAD0);
  sub_22BE199F4(v0, qword_27D90BAD0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_22C290D60;
  v4 = v30 + v3 + v1[14];
  *(v30 + v3) = 0;
  *v4 = "DeviceIdiomUnknown";
  *(v4 + 8) = 18;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_22C270894();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v30 + v3 + v2 + v1[14];
  *(v30 + v3 + v2) = 1;
  *v8 = "CarPlay";
  *(v8 + 8) = 7;
  *(v8 + 16) = 2;
  v7();
  v9 = (v30 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "EyesFree";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v7();
  v11 = (v30 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "HomePod";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v7();
  v13 = (v30 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "Mac";
  *(v14 + 1) = 3;
  v14[16] = 2;
  v7();
  v15 = (v30 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "AirPods";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v7();
  v17 = (v30 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "IPhone";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v7();
  v19 = (v30 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "IPad";
  *(v20 + 1) = 4;
  v20[16] = 2;
  v7();
  v21 = (v30 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "Watch";
  *(v22 + 1) = 5;
  v22[16] = 2;
  v7();
  v23 = (v30 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "TV";
  *(v24 + 1) = 2;
  v24[16] = 2;
  v7();
  v25 = (v30 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "Vision";
  *(v26 + 1) = 6;
  v26[16] = 2;
  v7();
  v27 = (v30 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "ELEVEN";
  *(v28 + 1) = 6;
  v28[16] = 2;
  v7();
  return sub_22C2708A4();
}

uint64_t sub_22BF8AA14()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BAE8);
  sub_22BE199F4(v0, qword_27D90BAE8);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "LOW";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "MEDIUM";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "HIGH";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22BF8AC4C()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BB00);
  sub_22BE199F4(v0, qword_27D90BB00);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D20;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "spanMatching";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "contextRetrieval";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "toolRetrieval";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "toolContextRetrieval";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "jointResolver";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "screenContentRetrieval";
  *(v18 + 1) = 22;
  v18[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22BF8AF3C()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BB18);
  sub_22BE199F4(v0, qword_27D90BB18);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "unset";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "prePlanner";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "fullPlanner";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22BF8B174()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BB30);
  sub_22BE199F4(v0, qword_27D90BB30);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "unknown";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "siriEntityMatcher";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "globalEntityMatcher";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22BF8B3AC()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BB48);
  sub_22BE199F4(v0, qword_27D90BB48);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D40;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "homeEntity";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "synonym";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "transliteration";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "expandedEmoji";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "contactRelationship";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "contactHypocorism";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "contactHandle";
  *(v20 + 1) = 13;
  v20[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22BF8B6F0()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BB60);
  sub_22BE199F4(v0, qword_27D90BB60);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D40;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "relevance";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "type";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "metadata";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "typedValue";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "structuredContext";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "identifier";
  *(v20 + 1) = 10;
  v20[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t ContextProtoRetrievedContext.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    result = sub_22BE3A218();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = sub_22BE18E2C();
        sub_22BF8BAE0(v3, v4, v5, v6);
        break;
      case 2:
        v19 = sub_22BE18E2C();
        sub_22BF8BB94(v19, v20, v21, v22);
        break;
      case 3:
        v11 = sub_22BE18E2C();
        sub_22BF8BC48(v11, v12, v13, v14);
        break;
      case 4:
        v15 = sub_22BE18E2C();
        sub_22BF8BCB0(v15, v16, v17, v18);
        break;
      case 5:
        v7 = sub_22BE18E2C();
        sub_22BF8BD64(v7, v8, v9, v10);
        break;
      case 6:
        v23 = sub_22BE18E2C();
        sub_22BF8BE18(v23, v24, v25, v26);
        break;
      case 7:
        sub_22BE29EBC();
        sub_22BE18E2C();
        sub_22BF8DDEC();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22BF8BAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ContextProtoRetrievedContext(0);
  sub_22C272594();
  sub_22BE2C940(&qword_28106DF50, MEMORY[0x277D727E0], MEMORY[0x277D727D8]);
  return sub_22C2706F4();
}

uint64_t sub_22BF8BB94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ContextProtoRetrievedContext(0);
  type metadata accessor for ContextProtoConfidence(0);
  sub_22BE2C940(&qword_27D90C338, type metadata accessor for ContextProtoConfidence, &protocol conformance descriptor for ContextProtoConfidence);
  return sub_22C2706F4();
}

uint64_t sub_22BF8BCB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ContextProtoRetrievedContext(0);
  type metadata accessor for ContextProtoContextMetadata(0);
  sub_22BE2C940(&qword_27D90C2E0, type metadata accessor for ContextProtoContextMetadata, &protocol conformance descriptor for ContextProtoContextMetadata);
  return sub_22C2706F4();
}

uint64_t sub_22BF8BD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ContextProtoRetrievedContext(0);
  sub_22C272594();
  sub_22BE2C940(&qword_28106DF50, MEMORY[0x277D727E0], MEMORY[0x277D727D8]);
  return sub_22C2706F4();
}

uint64_t sub_22BF8BE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ContextProtoRetrievedContext(0);
  type metadata accessor for ContextProtoStructuredContext(0);
  sub_22BE2C940(&qword_27D90C350, type metadata accessor for ContextProtoStructuredContext, &protocol conformance descriptor for ContextProtoStructuredContext);
  return sub_22C2706F4();
}

void ContextProtoRetrievedContext.traverse<A>(visitor:)()
{
  sub_22BE3B090();
  sub_22BE3C860();
  sub_22BFAB6A8();
  if (!v0)
  {
    v2 = sub_22BE17D60();
    sub_22BF8BFD0(v2, v3, v4, v5);
    if (*v1)
    {
      sub_22BFADEF8();
      sub_22BE23CE4();
      sub_22C2707D4();
    }

    v6 = sub_22BE17D60();
    sub_22BF8C1A4(v6, v7, v8, v9);
    v10 = sub_22BE17D60();
    sub_22BF8C378(v10, v11, v12, v13);
    v14 = sub_22BE17D60();
    sub_22BF8C584(v14, v15, v16, v17);
    sub_22BE29EBC();
    sub_22BE17D60();
    sub_22BF8E8E8();
    type metadata accessor for ContextProtoRetrievedContext(0);
    sub_22BE1AC30();
  }
}

uint64_t sub_22BF8BFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90BF70, &qword_22C290DC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ContextProtoConfidence(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContextProtoRetrievedContext(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90BF70, &qword_22C290DC0);
  }

  sub_22BFB18A0();
  sub_22BE2C940(&qword_27D90C338, type metadata accessor for ContextProtoConfidence, &protocol conformance descriptor for ContextProtoConfidence);
  sub_22C270884();
  return sub_22BFB18F4(v9, type metadata accessor for ContextProtoConfidence);
}

uint64_t sub_22BF8C1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90BF60, &unk_22C294AB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ContextProtoContextMetadata(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContextProtoRetrievedContext(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90BF60, &unk_22C294AB0);
  }

  sub_22BFB18A0();
  sub_22BE2C940(&qword_27D90C2E0, type metadata accessor for ContextProtoContextMetadata, &protocol conformance descriptor for ContextProtoContextMetadata);
  sub_22C270884();
  return sub_22BFB18F4(v9, type metadata accessor for ContextProtoContextMetadata);
}

uint64_t sub_22BF8C378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[3] = a4;
  v12[1] = a3;
  v4 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v12 - v5;
  v7 = sub_22C272594();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContextProtoRetrievedContext(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D909128, &qword_22C294AA0);
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_22BE2C940(&qword_28106DF50, MEMORY[0x277D727E0], MEMORY[0x277D727D8]);
  sub_22C270884();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_22BF8C584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90BF50, &unk_22C2B5ED0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ContextProtoStructuredContext(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContextProtoRetrievedContext(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90BF50, &unk_22C2B5ED0);
  }

  sub_22BFB18A0();
  sub_22BE2C940(&qword_27D90C350, type metadata accessor for ContextProtoStructuredContext, &protocol conformance descriptor for ContextProtoStructuredContext);
  sub_22C270884();
  return sub_22BFB18F4(v9, type metadata accessor for ContextProtoStructuredContext);
}

void static ContextProtoRetrievedContext.== infix(_:_:)()
{
  sub_22BE19460();
  v2 = v1;
  v4 = v3;
  v112 = type metadata accessor for ContextProtoStructuredContext(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v5);
  sub_22BE17A44();
  v109 = v6;
  v7 = sub_22BE5CE4C(&qword_27D90BF50, &unk_22C2B5ED0);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE1A174();
  v110 = v9;
  v111 = sub_22BE5CE4C(&qword_27D90BF58, &qword_22C290DB0);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE1A174();
  v113 = v11;
  v12 = sub_22BE183BC();
  v120 = type metadata accessor for ContextProtoContextMetadata(v12);
  sub_22BE18000();
  MEMORY[0x28223BE20](v13);
  sub_22BE17A44();
  v115 = v14;
  v15 = sub_22BE5CE4C(&qword_27D90BF60, &unk_22C294AB0);
  sub_22BE19448(v15);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE1A174();
  v118 = v17;
  v119 = sub_22BE5CE4C(&qword_27D90BF68, &qword_22C290DB8);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  sub_22BE1A174();
  v121 = v19;
  v20 = sub_22BE183BC();
  v126 = type metadata accessor for ContextProtoConfidence(v20);
  sub_22BE18000();
  MEMORY[0x28223BE20](v21);
  sub_22BE17A44();
  v122 = v22;
  v23 = sub_22BE5CE4C(&qword_27D90BF70, &qword_22C290DC0);
  sub_22BE19448(v23);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v24);
  sub_22BE1A174();
  v123 = v25;
  v125 = sub_22BE5CE4C(&qword_27D90BF78, &qword_22C290DC8);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v26);
  sub_22BE28738();
  v27 = sub_22C272594();
  sub_22BE179D8();
  v129 = v28;
  MEMORY[0x28223BE20](v29);
  sub_22BE17A44();
  v124 = v30;
  v31 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  v32 = sub_22BE19448(v31);
  MEMORY[0x28223BE20](v32);
  sub_22BE17B98();
  v114 = v33;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v34);
  v35 = sub_22BE5CE4C(&qword_27D909130, &unk_22C27FD30);
  sub_22BE18000();
  MEMORY[0x28223BE20](v36);
  sub_22BE17B98();
  v117 = v37;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v38);
  v40 = &v109 - v39;
  v127 = type metadata accessor for ContextProtoRetrievedContext(0);
  v128 = v4;
  v116 = v35;
  v41 = *(v35 + 48);
  sub_22BE22868();
  v42 = v2;
  sub_22BE22868();
  sub_22BE23B00(v40);
  if (v43)
  {
    sub_22BE23B00(&v40[v41]);
    if (v43)
    {
      sub_22BE33928(v40, &qword_27D909128, &qword_22C294AA0);
      goto LABEL_12;
    }

LABEL_9:
    v46 = &qword_27D909130;
    v47 = &unk_22C27FD30;
LABEL_10:
    v48 = v40;
LABEL_33:
    sub_22BE33928(v48, v46, v47);
    goto LABEL_34;
  }

  sub_22BE194F8();
  sub_22BE22868();
  sub_22BE23B00(&v40[v41]);
  if (v43)
  {
    v44 = sub_22BE36318();
    v45(v44);
    goto LABEL_9;
  }

  v49 = v129;
  v50 = v124;
  (*(v129 + 32))(v124, &v40[v41], v27);
  sub_22BE231A8();
  sub_22BE2C940(v51, v52, MEMORY[0x277D727F0]);
  v53 = sub_22C272FD4();
  v54 = *(v49 + 8);
  v54(v50, v27);
  v55 = sub_22BE36318();
  (v54)(v55);
  sub_22BE33928(v40, &qword_27D909128, &qword_22C294AA0);
  if ((v53 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_12:
  v57 = v127;
  v56 = v128;
  v58 = *(v125 + 48);
  sub_22BE3A518();
  sub_22BE3A518();
  sub_22BE36144(v0, 1);
  if (v43)
  {
    sub_22BE18190(v0 + v58);
    if (v43)
    {
      sub_22BE33928(v0, &qword_27D90BF70, &qword_22C290DC0);
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v64 = v123;
  sub_22BE22868();
  sub_22BE18190(v0 + v58);
  if (v65)
  {
    sub_22BE30F78();
    sub_22BFB18F4(v64, v66);
LABEL_26:
    v46 = &qword_27D90BF78;
    v47 = &qword_22C290DC8;
LABEL_32:
    v48 = v0;
    goto LABEL_33;
  }

  sub_22BE2861C();
  v67 = v122;
  sub_22BFB18A0();
  if (*v64 != *v67 || *(v64 + 4) != *(v67 + 4))
  {
    sub_22BE375C0();
    sub_22BFB18F4(v67, v72);
    v73 = sub_22BE200D4();
    sub_22BFB18F4(v73, v74);
    v46 = &qword_27D90BF70;
    v47 = &qword_22C290DC0;
    goto LABEL_32;
  }

  sub_22C2704B4();
  sub_22BE18E14();
  v70 = sub_22BE2C940(v68, v69, MEMORY[0x277D216D0]);
  v71 = sub_22BE3605C(v70);
  sub_22BFB18F4(v67, type metadata accessor for ContextProtoConfidence);
  sub_22BFB18F4(v64, type metadata accessor for ContextProtoConfidence);
  sub_22BE33928(v0, &qword_27D90BF70, &qword_22C290DC0);
  if ((v71 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_17:
  if (*v56 != *v42)
  {
    goto LABEL_34;
  }

  v59 = v57[7];
  v60 = *(v119 + 48);
  v61 = v121;
  sub_22BE390A0();
  sub_22BE1B0AC(&v42[v59]);
  v62 = sub_22BE26188();
  sub_22BE36144(v62, v63);
  if (v43)
  {
    sub_22BE18190(v61 + v60);
    if (v43)
    {
      sub_22BE33928(v61, &qword_27D90BF60, &unk_22C294AB0);
      goto LABEL_41;
    }

LABEL_39:
    v46 = &qword_27D90BF68;
    v47 = &qword_22C290DB8;
LABEL_50:
    v48 = v61;
    goto LABEL_33;
  }

  v76 = v118;
  sub_22BE22868();
  sub_22BE18190(v61 + v60);
  if (v77)
  {
    sub_22BFB18F4(v76, type metadata accessor for ContextProtoContextMetadata);
    goto LABEL_39;
  }

  sub_22BFB18A0();
  static ContextProtoContextMetadata.== infix(_:_:)();
  sub_22BE1AF5C();
  sub_22BFB18F4(v76, type metadata accessor for ContextProtoContextMetadata);
  sub_22BE33928(v61, &qword_27D90BF60, &unk_22C294AB0);
  if ((&unk_22C294AB0 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_41:
  v78 = v57[8];
  v61 = v117;
  v79 = *(v116 + 48);
  sub_22BE390A0();
  sub_22BE1B0AC(&v42[v78]);
  sub_22BE23B00(v61);
  if (v43)
  {
    sub_22BE23B00(v61 + v79);
    if (v43)
    {
      sub_22BE33928(v61, &qword_27D909128, &qword_22C294AA0);
      goto LABEL_52;
    }

    goto LABEL_49;
  }

  sub_22BE22868();
  sub_22BE23B00(v61 + v79);
  if (v80)
  {
    v81 = sub_22BE36318();
    v82(v81);
LABEL_49:
    v46 = &qword_27D909130;
    v47 = &unk_22C27FD30;
    goto LABEL_50;
  }

  v83 = v129;
  v84 = v61 + v79;
  v85 = v124;
  (*(v129 + 32))(v124, v84, v27);
  sub_22BE231A8();
  sub_22BE2C940(v86, v87, MEMORY[0x277D727F0]);
  sub_22BE38970();
  v88 = sub_22C272FD4();
  v89 = *(v83 + 8);
  v89(v85, v27);
  v90 = sub_22BE36318();
  (v89)(v90);
  sub_22BE33928(v61, &qword_27D909128, &qword_22C294AA0);
  if ((v88 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_52:
  v91 = v57[9];
  v92 = *(v111 + 48);
  v93 = v113;
  sub_22BE390A0();
  v94 = &v42[v91];
  v40 = v93;
  sub_22BE1B0AC(v94);
  v95 = sub_22BE26188();
  sub_22BE36144(v95, v96);
  if (!v43)
  {
    v97 = v110;
    sub_22BE22868();
    sub_22BE18190(&v40[v92]);
    if (!v98)
    {
      sub_22BFB18A0();
      v99 = sub_22BE232C8();
      static ContextProtoStructuredContext.== infix(_:_:)(v99);
      sub_22BE1AF5C();
      v100 = sub_22BE200D4();
      sub_22BFB18F4(v100, v101);
      sub_22BE33928(v40, &qword_27D90BF50, &unk_22C2B5ED0);
      if ((&unk_22C2B5ED0 & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_62;
    }

    sub_22BFB18F4(v97, type metadata accessor for ContextProtoStructuredContext);
    goto LABEL_60;
  }

  sub_22BE18190(v93 + v92);
  if (!v43)
  {
LABEL_60:
    v46 = &qword_27D90BF58;
    v47 = &qword_22C290DB0;
    goto LABEL_10;
  }

  sub_22BE33928(v93, &qword_27D90BF50, &unk_22C2B5ED0);
LABEL_62:
  v102 = v57[10];
  v103 = *&v42[v102 + 8];
  if (*&v56[v102 + 8])
  {
    if (!v103)
    {
      goto LABEL_34;
    }

    sub_22BE3A508(&v56[v102]);
    v106 = v43 && v104 == v105;
    if (!v106 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_34;
    }

LABEL_71:
    sub_22C2704B4();
    sub_22BE18E14();
    sub_22BE2C940(v107, v108, MEMORY[0x277D216D0]);
    v75 = sub_22C272FD4();
    goto LABEL_35;
  }

  if (!v103)
  {
    goto LABEL_71;
  }

LABEL_34:
  v75 = 0;
LABEL_35:
  sub_22BE1C1DC(v75);
  sub_22BE1AABC();
}

uint64_t sub_22BF8D340(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C768, type metadata accessor for ContextProtoRetrievedContext, &protocol conformance descriptor for ContextProtoRetrievedContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BF8D3C0(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C0F8, type metadata accessor for ContextProtoRetrievedContext, &protocol conformance descriptor for ContextProtoRetrievedContext);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BF8D430(uint64_t a1, uint64_t a2)
{
  sub_22BE2C940(&qword_27D90C0F8, type metadata accessor for ContextProtoRetrievedContext, &protocol conformance descriptor for ContextProtoRetrievedContext);

  return sub_22C270774();
}

uint64_t sub_22BF8D4BC()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BB78);
  sub_22BE199F4(v0, qword_27D90BB78);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_22C290D70;
  v4 = v40 + v3 + v1[14];
  *(v40 + v3) = 1;
  *v4 = "entity_id";
  *(v4 + 8) = 9;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21888];
  v6 = sub_22C270894();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v40 + v3 + v2 + v1[14];
  *(v40 + v3 + v2) = 2;
  *v8 = "app_bundle_id";
  *(v8 + 8) = 13;
  *(v8 + 16) = 2;
  v7();
  v9 = (v40 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "saliency";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v7();
  v11 = (v40 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "on_screen_surrounding_text";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v7();
  v13 = (v40 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "on_screen_bounding_box";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v7();
  v15 = (v40 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "seq";
  *(v16 + 1) = 3;
  v16[16] = 2;
  v7();
  v17 = (v40 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "group_id";
  *(v18 + 1) = 8;
  v18[16] = 2;
  v7();
  v19 = (v40 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "isSelected";
  *(v20 + 1) = 10;
  v20[16] = 2;
  v7();
  v21 = (v40 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "isPrimary";
  *(v22 + 1) = 9;
  v22[16] = 2;
  v7();
  v23 = (v40 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "screenDimensions";
  *(v24 + 1) = 16;
  v24[16] = 2;
  v7();
  v25 = (v40 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "dataSource";
  *(v26 + 1) = 10;
  v26[16] = 2;
  v7();
  v27 = (v40 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "displayRepresentation";
  *(v28 + 1) = 21;
  v28[16] = 2;
  v7();
  v29 = (v40 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "appBundleIdentifier";
  *(v30 + 1) = 19;
  v30[16] = 2;
  v7();
  v31 = (v40 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "screenSize";
  *(v32 + 1) = 10;
  v32[16] = 2;
  v7();
  v33 = (v40 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "frame";
  *(v34 + 1) = 5;
  v34[16] = 2;
  v7();
  v35 = (v40 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "elementVisibility";
  *(v36 + 1) = 17;
  v36[16] = 2;
  v7();
  v37 = (v40 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 17;
  *v38 = "processInstanceIdentifier";
  *(v38 + 1) = 25;
  v38[16] = 2;
  v7();
  return sub_22C2708A4();
}

void ContextProtoContextMetadata.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    v1 = sub_22BE3A218();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
      case 2:
        sub_22BE2037C();
        sub_22C270694();
        break;
      case 3:
        v29 = sub_22BE18E2C();
        sub_22BF8DC20(v29, v30, v31, v32);
        break;
      case 4:
        sub_22BE18E2C();
        sub_22BF9A07C();
        break;
      case 5:
        v15 = sub_22BE18E2C();
        sub_22BF8DCD4(v15, v16, v17, v18);
        break;
      case 6:
        v41 = sub_22BE18E2C();
        sub_22BF8DD88(v41, v42, v43, v44);
        break;
      case 7:
        sub_22BE294B0();
        sub_22BE18E2C();
        sub_22BF8DDEC();
        break;
      case 8:
        v37 = sub_22BE18E2C();
        sub_22BF8DE3C(v37, v38, v39, v40);
        break;
      case 9:
        v53 = sub_22BE18E2C();
        sub_22BF8DEA0(v53, v54, v55, v56);
        break;
      case 10:
        v25 = sub_22BE18E2C();
        sub_22BF8DF04(v25, v26, v27, v28);
        break;
      case 11:
        v49 = sub_22BE18E2C();
        sub_22BF8DFB8(v49, v50, v51, v52);
        break;
      case 12:
        v11 = sub_22BE18E2C();
        sub_22BF8E02C(v11, v12, v13, v14);
        break;
      case 13:
        v19 = sub_22BE18E2C();
        sub_22BF96E98(v19, v20, v21, v22, v23, v24);
        break;
      case 14:
        v45 = sub_22BE18E2C();
        sub_22BF8E0E0(v45, v46, v47, v48);
        break;
      case 15:
        v7 = sub_22BE18E2C();
        sub_22BF8E194(v7, v8, v9, v10);
        break;
      case 16:
        v33 = sub_22BE18E2C();
        sub_22BF8E248(v33, v34, v35, v36);
        break;
      case 17:
        v3 = sub_22BE18E2C();
        sub_22BF8E2AC(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22BF8DC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ContextProtoContextMetadata(0);
  type metadata accessor for ContextProtoConfidence(0);
  sub_22BE2C940(&qword_27D90C338, type metadata accessor for ContextProtoConfidence, &protocol conformance descriptor for ContextProtoConfidence);
  return sub_22C2706F4();
}

uint64_t sub_22BF8DCD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ContextProtoContextMetadata(0);
  type metadata accessor for ContextProtoBoundingBox(0);
  sub_22BE2C940(&qword_27D90C310, type metadata accessor for ContextProtoBoundingBox, &protocol conformance descriptor for ContextProtoBoundingBox);
  return sub_22C2706F4();
}

uint64_t sub_22BF8DDEC()
{
  v0 = sub_22BE378F4();
  v1(v0);
  sub_22BE2037C();
  return sub_22C270694();
}

uint64_t sub_22BF8DF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ContextProtoContextMetadata(0);
  type metadata accessor for ContextProtoBoundingBox(0);
  sub_22BE2C940(&qword_27D90C310, type metadata accessor for ContextProtoBoundingBox, &protocol conformance descriptor for ContextProtoBoundingBox);
  return sub_22C2706F4();
}

uint64_t sub_22BF8DFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ContextProtoContextMetadata(0);
  sub_22BFB194C();
  return sub_22C2705D4();
}

uint64_t sub_22BF8E02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ContextProtoContextMetadata(0);
  type metadata accessor for ContextProtoContextualEntityDisplayRepresentation(0);
  sub_22BE2C940(&qword_27D90C2F8, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation, &protocol conformance descriptor for ContextProtoContextualEntityDisplayRepresentation);
  return sub_22C2706F4();
}

uint64_t sub_22BF8E0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ContextProtoContextMetadata(0);
  type metadata accessor for ContextProtoCGRect(0);
  sub_22BE2C940(&qword_27D90C480, type metadata accessor for ContextProtoCGRect, &protocol conformance descriptor for ContextProtoCGRect);
  return sub_22C2706F4();
}

uint64_t sub_22BF8E194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ContextProtoContextMetadata(0);
  type metadata accessor for ContextProtoCGRect(0);
  sub_22BE2C940(&qword_27D90C480, type metadata accessor for ContextProtoCGRect, &protocol conformance descriptor for ContextProtoCGRect);
  return sub_22C2706F4();
}

void ContextProtoContextMetadata.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE3B090();
  sub_22BE3C860();
  sub_22BE4E190(v1);
  if (!v0)
  {
    v2 = sub_22BE17D60();
    sub_22BE4E1C8(v2);
    v3 = sub_22BE17D60();
    sub_22BF8E4C8(v3, v4, v5, v6);
    sub_22BE41DF4();
    if (v7)
    {
      type metadata accessor for ContextProtoSurroundingText(0);
      sub_22BE2C940(&qword_27D90BF88, type metadata accessor for ContextProtoSurroundingText, &protocol conformance descriptor for ContextProtoSurroundingText);
      sub_22BE238E8();
      sub_22BE23CE4();
      sub_22C270874();
    }

    v8 = sub_22BE17D60();
    sub_22BF8E69C(v8, v9, v10, v11);
    v12 = sub_22BE17D60();
    sub_22BF8E870(v12, v13, v14, v15);
    sub_22BE294B0();
    sub_22BE17D60();
    sub_22BF8E8E8();
    v16 = sub_22BE17D60();
    sub_22BF8E948(v16, v17, v18, v19);
    v20 = sub_22BE17D60();
    sub_22BF8E9C0(v20, v21, v22, v23);
    v24 = sub_22BE17D60();
    sub_22BF8EA38(v24, v25, v26, v27);
    v28 = sub_22BE17D60();
    sub_22BF8EC0C(v28, v29, v30, v31);
    v32 = sub_22BE17D60();
    sub_22BF8EC98(v32, v33, v34, v35);
    v36 = sub_22BE17D60();
    sub_22BF8EE6C(v36);
    v37 = sub_22BE17D60();
    sub_22BF8EEE4(v37, v38, v39, v40);
    v41 = sub_22BE17D60();
    sub_22BF8F0B8(v41, v42, v43, v44);
    v45 = sub_22BE17D60();
    sub_22BF8F28C(v45, v46, v47, v48);
    v49 = sub_22BE17D60();
    sub_22BF8F304(v49);
    type metadata accessor for ContextProtoContextMetadata(0);
    sub_22BE1AC30();
  }

  sub_22BE25C6C();
}

uint64_t sub_22BF8E4C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90BF70, &qword_22C290DC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ContextProtoConfidence(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContextProtoContextMetadata(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90BF70, &qword_22C290DC0);
  }

  sub_22BFB18A0();
  sub_22BE2C940(&qword_27D90C338, type metadata accessor for ContextProtoConfidence, &protocol conformance descriptor for ContextProtoConfidence);
  sub_22C270884();
  return sub_22BFB18F4(v9, type metadata accessor for ContextProtoConfidence);
}

uint64_t sub_22BF8E69C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9092A0, &unk_22C294AC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ContextProtoBoundingBox(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContextProtoContextMetadata(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D9092A0, &unk_22C294AC0);
  }

  sub_22BFB18A0();
  sub_22BE2C940(&qword_27D90C310, type metadata accessor for ContextProtoBoundingBox, &protocol conformance descriptor for ContextProtoBoundingBox);
  sub_22C270884();
  return sub_22BFB18F4(v9, type metadata accessor for ContextProtoBoundingBox);
}

uint64_t sub_22BF8E870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ContextProtoContextMetadata(0);
  if ((*(a1 + *(result + 36) + 8) & 1) == 0)
  {
    return sub_22C270834();
  }

  return result;
}

uint64_t sub_22BF8E8E8()
{
  v1 = sub_22BE378F4();
  result = v2(v1);
  if (*(v0 + *(result + 40) + 8))
  {
    sub_22BE25B10();
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BF8E948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ContextProtoContextMetadata(0);
  if (*(a1 + *(result + 44)) != 2)
  {
    return sub_22C2707C4();
  }

  return result;
}

uint64_t sub_22BF8E9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ContextProtoContextMetadata(0);
  if (*(a1 + *(result + 48)) != 2)
  {
    return sub_22C2707C4();
  }

  return result;
}

uint64_t sub_22BF8EA38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9092A0, &unk_22C294AC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ContextProtoBoundingBox(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContextProtoContextMetadata(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D9092A0, &unk_22C294AC0);
  }

  sub_22BFB18A0();
  sub_22BE2C940(&qword_27D90C310, type metadata accessor for ContextProtoBoundingBox, &protocol conformance descriptor for ContextProtoBoundingBox);
  sub_22C270884();
  return sub_22BFB18F4(v9, type metadata accessor for ContextProtoBoundingBox);
}

uint64_t sub_22BF8EC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ContextProtoContextMetadata(0);
  if (*(a1 + *(result + 56)) != 6)
  {
    sub_22BFB194C();
    return sub_22C2707D4();
  }

  return result;
}

uint64_t sub_22BF8EC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90BFA0, &qword_22C2CB790);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ContextProtoContextualEntityDisplayRepresentation(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContextProtoContextMetadata(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90BFA0, &qword_22C2CB790);
  }

  sub_22BFB18A0();
  sub_22BE2C940(&qword_27D90C2F8, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation, &protocol conformance descriptor for ContextProtoContextualEntityDisplayRepresentation);
  sub_22C270884();
  return sub_22BFB18F4(v9, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation);
}

uint64_t sub_22BF8EE6C(uint64_t a1)
{
  result = type metadata accessor for ContextProtoContextMetadata(0);
  if (*(a1 + *(result + 64) + 8))
  {
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BF8EEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90BF90, &unk_22C294AD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ContextProtoCGRect(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContextProtoContextMetadata(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90BF90, &unk_22C294AD0);
  }

  sub_22BFB18A0();
  sub_22BE2C940(&qword_27D90C480, type metadata accessor for ContextProtoCGRect, &protocol conformance descriptor for ContextProtoCGRect);
  sub_22C270884();
  return sub_22BFB18F4(v9, type metadata accessor for ContextProtoCGRect);
}

uint64_t sub_22BF8F0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90BF90, &unk_22C294AD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ContextProtoCGRect(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContextProtoContextMetadata(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90BF90, &unk_22C294AD0);
  }

  sub_22BFB18A0();
  sub_22BE2C940(&qword_27D90C480, type metadata accessor for ContextProtoCGRect, &protocol conformance descriptor for ContextProtoCGRect);
  sub_22C270884();
  return sub_22BFB18F4(v9, type metadata accessor for ContextProtoCGRect);
}

uint64_t sub_22BF8F28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ContextProtoContextMetadata(0);
  if ((*(a1 + *(result + 76) + 8) & 1) == 0)
  {
    return sub_22C270834();
  }

  return result;
}

uint64_t sub_22BF8F304(uint64_t a1)
{
  result = type metadata accessor for ContextProtoContextMetadata(0);
  if (*(a1 + *(result + 80) + 8))
  {
    return sub_22C270844();
  }

  return result;
}

void static ContextProtoContextMetadata.== infix(_:_:)()
{
  sub_22BE19460();
  v3 = v2;
  v5 = v4;
  v164 = type metadata accessor for ContextProtoCGRect(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v6);
  sub_22BE179EC();
  v9 = v8 - v7;
  v10 = sub_22BE5CE4C(&qword_27D90BF90, &unk_22C294AD0);
  v11 = sub_22BE19448(v10);
  MEMORY[0x28223BE20](v11);
  sub_22BE17B98();
  v159 = v12;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v13);
  v160 = v155 - v14;
  v162 = sub_22BE5CE4C(&qword_27D90BF98, &qword_22C290DD0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v15);
  sub_22BE17B98();
  v161 = v16;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v17);
  v165 = v155 - v18;
  v19 = sub_22BE183BC();
  v168 = type metadata accessor for ContextProtoContextualEntityDisplayRepresentation(v19);
  sub_22BE18000();
  MEMORY[0x28223BE20](v20);
  sub_22BE17A44();
  v163 = v21;
  v22 = sub_22BE5CE4C(&qword_27D90BFA0, &qword_22C2CB790);
  sub_22BE19448(v22);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v23);
  sub_22BE1A174();
  v166 = v24;
  v167 = sub_22BE5CE4C(&qword_27D90BFA8, &qword_22C290DD8);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v25);
  sub_22BE1A174();
  v170 = v26;
  v27 = sub_22BE183BC();
  v173 = type metadata accessor for ContextProtoBoundingBox(v27);
  sub_22BE18000();
  MEMORY[0x28223BE20](v28);
  sub_22BE17A44();
  v172 = v29;
  v30 = sub_22BE5CE4C(&qword_27D9092A0, &unk_22C294AC0);
  v31 = sub_22BE19448(v30);
  MEMORY[0x28223BE20](v31);
  sub_22BE17B98();
  v169 = v32;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v33);
  v35 = (v155 - v34);
  v174 = sub_22BE5CE4C(&qword_27D9092A8, &unk_22C27FE80);
  sub_22BE18000();
  MEMORY[0x28223BE20](v36);
  sub_22BE17B98();
  v171 = v37;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v38);
  v40 = v155 - v39;
  type metadata accessor for ContextProtoConfidence(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v41);
  sub_22BE179EC();
  v44 = v43 - v42;
  v45 = sub_22BE5CE4C(&qword_27D90BF70, &qword_22C290DC0);
  sub_22BE19448(v45);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v46);
  sub_22BE1B1C4();
  v47 = sub_22BE5CE4C(&qword_27D90BF78, &qword_22C290DC8);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v48);
  sub_22BE28738();
  v49 = v5[2];
  v50 = v3[2];
  if (v49)
  {
    if (!v50)
    {
      goto LABEL_41;
    }

    v51 = v5[1] == v3[1] && v49 == v50;
    if (!v51 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  else if (v50)
  {
    goto LABEL_41;
  }

  v52 = v5[4];
  v53 = v3[4];
  if (v52)
  {
    if (!v53)
    {
      goto LABEL_41;
    }

    v54 = v5[3] == v3[3] && v52 == v53;
    if (!v54 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  else if (v53)
  {
    goto LABEL_41;
  }

  v155[1] = v9;
  v55 = type metadata accessor for ContextProtoContextMetadata(0);
  v158 = v3;
  v56 = *(v47 + 48);
  v156 = v55;
  v157 = v5;
  sub_22BE22868();
  v57 = v158;
  sub_22BE22868();
  sub_22BE181B0(v0);
  if (v51)
  {
    sub_22BE181B0(v0 + v56);
    if (v51)
    {
      sub_22BE33928(v0, &qword_27D90BF70, &qword_22C290DC0);
      goto LABEL_24;
    }

    goto LABEL_33;
  }

  sub_22BE22868();
  sub_22BE181B0(v0 + v56);
  if (v64)
  {
    sub_22BE30F78();
    sub_22BFB18F4(v1, v65);
LABEL_33:
    v66 = &qword_27D90BF78;
    v67 = &qword_22C290DC8;
LABEL_39:
    v72 = v0;
LABEL_40:
    sub_22BE33928(v72, v66, v67);
    goto LABEL_41;
  }

  sub_22BE2861C();
  sub_22BFB18A0();
  if (*v1 != *v44 || *(v1 + 4) != *(v44 + 4))
  {
    sub_22BE375C0();
    sub_22BFB18F4(v44, v71);
    sub_22BFB18F4(v1, v35);
    v66 = &qword_27D90BF70;
    v67 = &qword_22C290DC0;
    goto LABEL_39;
  }

  sub_22C2704B4();
  sub_22BE18E14();
  sub_22BE2C940(v68, v69, MEMORY[0x277D216D0]);
  v70 = sub_22C272FD4();
  sub_22BFB18F4(v44, type metadata accessor for ContextProtoConfidence);
  sub_22BFB18F4(v1, type metadata accessor for ContextProtoConfidence);
  sub_22BE33928(v0, &qword_27D90BF70, &qword_22C290DC0);
  if ((v70 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_24:
  sub_22BEA1A5C();
  if ((v58 & 1) == 0)
  {
    goto LABEL_41;
  }

  v59 = v156;
  v60 = *(v174 + 48);
  sub_22BFB1AC4();
  sub_22BFB1AC4();
  v61 = sub_22BFB1A7C();
  v62 = v173;
  sub_22BE1AB5C(v61, v63, v173);
  if (v51)
  {
    sub_22BE1AB5C(&v40[v60], 1, v62);
    if (v51)
    {
      sub_22BE33928(v40, &qword_27D9092A0, &unk_22C294AC0);
      goto LABEL_48;
    }

    goto LABEL_46;
  }

  sub_22BE22868();
  sub_22BE1AB5C(&v40[v60], 1, v62);
  if (v74)
  {
    sub_22BE25964();
    sub_22BFB18F4(v35, v75);
LABEL_46:
    v66 = &qword_27D9092A8;
    v67 = &unk_22C27FE80;
    v72 = v40;
    goto LABEL_40;
  }

  sub_22BFB18A0();
  v76 = static ContextProtoBoundingBox.== infix(_:_:)();
  v77 = sub_22BE3C5E4();
  sub_22BFB18F4(v77, v78);
  v79 = sub_22BE19454();
  sub_22BFB18F4(v79, v80);
  sub_22BE33928(v40, &qword_27D9092A0, &unk_22C294AC0);
  if ((v76 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_48:
  v81 = v59[9];
  v82 = v157;
  v83 = *(v157 + v81 + 8);
  v84 = *(v57 + v81 + 8);
  if (v83)
  {
    if (!v84)
    {
      goto LABEL_41;
    }
  }

  else
  {
    sub_22BE20208();
    if (v85)
    {
      goto LABEL_41;
    }
  }

  v86 = v59[10];
  v87 = *(v57 + v86 + 8);
  if (*(v82 + v86 + 8))
  {
    if (!v87)
    {
      goto LABEL_41;
    }

    sub_22BE3A508(v82 + v86);
    v90 = v51 && v88 == v89;
    if (!v90 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  else if (v87)
  {
    goto LABEL_41;
  }

  v91 = v59[11];
  v92 = *(v82 + v91);
  v93 = *(v57 + v91);
  if (v92 == 2)
  {
    if (v93 != 2)
    {
      goto LABEL_41;
    }
  }

  else if (v93 == 2 || ((v92 ^ v93) & 1) != 0)
  {
    goto LABEL_41;
  }

  v94 = v59[12];
  v95 = *(v82 + v94);
  v96 = *(v57 + v94);
  if (v95 == 2)
  {
    if (v96 != 2)
    {
      goto LABEL_41;
    }
  }

  else if (v96 == 2 || ((v95 ^ v96) & 1) != 0)
  {
    goto LABEL_41;
  }

  v97 = *(v174 + 48);
  v98 = v171;
  sub_22BE36540();
  v99 = v98;
  sub_22BE36540();
  v100 = sub_22BFB1A7C();
  sub_22BE1AB5C(v100, v101, v62);
  if (v51)
  {
    sub_22BE1AB5C(v98 + v97, 1, v62);
    if (v51)
    {
      sub_22BE33928(v98, &qword_27D9092A0, &unk_22C294AC0);
      goto LABEL_81;
    }

    goto LABEL_79;
  }

  v102 = v169;
  sub_22BE22868();
  sub_22BE1AB5C(v99 + v97, 1, v62);
  if (v103)
  {
    sub_22BE25964();
    sub_22BFB18F4(v102, v104);
LABEL_79:
    v66 = &qword_27D9092A8;
    v67 = &unk_22C27FE80;
    v72 = v99;
    goto LABEL_40;
  }

  sub_22BFB18A0();
  static ContextProtoBoundingBox.== infix(_:_:)();
  sub_22BE1AF5C();
  sub_22BFB18F4(v102, type metadata accessor for ContextProtoBoundingBox);
  sub_22BE33928(v99, &qword_27D9092A0, &unk_22C294AC0);
  if ((&unk_22C294AC0 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_81:
  v105 = v59[14];
  v106 = *(v82 + v105);
  v107 = *(v57 + v105);
  if (v106 == 6)
  {
    if (v107 != 6)
    {
      goto LABEL_41;
    }
  }

  else if (v106 != v107)
  {
    goto LABEL_41;
  }

  v108 = v156[15];
  v109 = *(v167 + 48);
  sub_22BE390A0();
  sub_22BE1B0AC(v158 + v108);
  v110 = sub_22BE26188();
  sub_22BE1AB5C(v110, v111, v168);
  if (v51)
  {
    sub_22BE1AB5C(v170 + v109, 1, v168);
    if (v51)
    {
      sub_22BE33928(v170, &qword_27D90BFA0, &qword_22C2CB790);
      goto LABEL_95;
    }

    goto LABEL_93;
  }

  v112 = v170;
  sub_22BE22868();
  sub_22BE1AB5C(v112 + v109, 1, v168);
  if (v113)
  {
    sub_22BFB18F4(v166, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation);
LABEL_93:
    v66 = &qword_27D90BFA8;
    v67 = &qword_22C290DD8;
    v72 = v170;
    goto LABEL_40;
  }

  v114 = v170;
  sub_22BFB18A0();
  sub_22BE232C8();
  static ContextProtoContextualEntityDisplayRepresentation.== infix(_:_:)();
  sub_22BE1AF5C();
  v115 = sub_22BE200D4();
  sub_22BFB18F4(v115, v116);
  sub_22BE33928(v114, &qword_27D90BFA0, &qword_22C2CB790);
  if ((&qword_22C2CB790 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_95:
  sub_22BFB1A94();
  if (v119)
  {
    if (!v117)
    {
      goto LABEL_41;
    }

    sub_22BE3A508(v118);
    v122 = v51 && v120 == v121;
    if (!v122 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  else if (v117)
  {
    goto LABEL_41;
  }

  v123 = v156[17];
  v124 = *(v162 + 48);
  sub_22BE390A0();
  sub_22BE1B0AC(v158 + v123);
  v125 = sub_22BE26188();
  sub_22BE1AB5C(v125, v126, v164);
  if (v51)
  {
    sub_22BE1AB5C(v165 + v124, 1, v164);
    if (v51)
    {
      sub_22BE33928(v165, &qword_27D90BF90, &unk_22C294AD0);
      goto LABEL_114;
    }

    goto LABEL_112;
  }

  v127 = v165;
  sub_22BE22868();
  sub_22BE1AB5C(v127 + v124, 1, v164);
  if (v128)
  {
    sub_22BE2574C();
    sub_22BFB18F4(v160, v129);
LABEL_112:
    v66 = &qword_27D90BF98;
    v67 = &qword_22C290DD0;
    v72 = v165;
    goto LABEL_40;
  }

  sub_22BE2729C();
  v130 = v165;
  sub_22BFB18A0();
  sub_22BE232C8();
  static ContextProtoCGRect.== infix(_:_:)();
  sub_22BE1AF5C();
  v131 = sub_22BE200D4();
  sub_22BFB18F4(v131, v132);
  sub_22BE33928(v130, &qword_27D90BF90, &unk_22C294AD0);
  if ((&unk_22C294AD0 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_114:
  v133 = v156[18];
  v134 = *(v162 + 48);
  sub_22BE390A0();
  sub_22BE1B0AC(v158 + v133);
  v135 = sub_22BE26188();
  sub_22BE1AB5C(v135, v136, v164);
  if (!v51)
  {
    v137 = v161;
    sub_22BE22868();
    sub_22BE1AB5C(v137 + v134, 1, v164);
    if (!v138)
    {
      sub_22BE2729C();
      v140 = v161;
      sub_22BFB18A0();
      sub_22BE232C8();
      static ContextProtoCGRect.== infix(_:_:)();
      sub_22BE1AF5C();
      v141 = sub_22BE200D4();
      sub_22BFB18F4(v141, v142);
      sub_22BE33928(v140, &qword_27D90BF90, &unk_22C294AD0);
      if ((&unk_22C294AD0 & 1) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_124;
    }

    sub_22BE2574C();
    sub_22BFB18F4(v159, v139);
    goto LABEL_122;
  }

  sub_22BE1AB5C(v161 + v134, 1, v164);
  if (!v51)
  {
LABEL_122:
    v66 = &qword_27D90BF98;
    v67 = &qword_22C290DD0;
    v72 = v161;
    goto LABEL_40;
  }

  sub_22BE33928(v161, &qword_27D90BF90, &unk_22C294AD0);
LABEL_124:
  v143 = v156[19];
  v144 = *(v157 + v143 + 8);
  v145 = *(v158 + v143 + 8);
  if (v144)
  {
    if (!v145)
    {
      goto LABEL_41;
    }
  }

  else
  {
    sub_22BE20208();
    if (v146)
    {
      goto LABEL_41;
    }
  }

  sub_22BFB1A94();
  if (v149)
  {
    if (!v147)
    {
      goto LABEL_41;
    }

    sub_22BE3A508(v148);
    v152 = v51 && v150 == v151;
    if (!v152 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_41;
    }

LABEL_137:
    sub_22C2704B4();
    sub_22BE18E14();
    sub_22BE2C940(v153, v154, MEMORY[0x277D216D0]);
    v73 = sub_22C272FD4();
    goto LABEL_42;
  }

  if (!v147)
  {
    goto LABEL_137;
  }

LABEL_41:
  v73 = 0;
LABEL_42:
  sub_22BE1C1DC(v73);
  sub_22BE1AABC();
}

uint64_t sub_22BF901BC(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_22C274154();
  a1(0);
  sub_22BE2C940(a2, a3, a4);
  sub_22C272EE4();
  return sub_22C2741A4();
}

uint64_t sub_22BF902C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C760, type metadata accessor for ContextProtoContextMetadata, &protocol conformance descriptor for ContextProtoContextMetadata);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BF90344(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C2E0, type metadata accessor for ContextProtoContextMetadata, &protocol conformance descriptor for ContextProtoContextMetadata);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BF903B4(uint64_t a1, uint64_t a2)
{
  sub_22BE2C940(&qword_27D90C2E0, type metadata accessor for ContextProtoContextMetadata, &protocol conformance descriptor for ContextProtoContextMetadata);

  return sub_22C270774();
}

uint64_t sub_22BF9044C()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BB90);
  sub_22BE199F4(v0, qword_27D90BB90);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "subtitle";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t ContextProtoContextualEntityDisplayRepresentation.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    result = sub_22BE3A218();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      sub_22BE2037C();
      sub_22C270694();
    }
  }

  return result;
}

uint64_t static ContextProtoContextualEntityDisplayRepresentation.== infix(_:_:)()
{
  sub_22BE18378();
  v2 = *(v0 + 8);
  if (*(v1 + 8))
  {
    if (!v2)
    {
      return 0;
    }

    sub_22BE27BD8();
    v5 = v5 && v3 == v4;
    if (!v5 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v2)
  {
    return 0;
  }

  sub_22BFB1A88();
  if (v7)
  {
    if (v6)
    {
      sub_22BFB1A50();
      v10 = v5 && v8 == v9;
      if (v10 || (sub_22C274014() & 1) != 0)
      {
        goto LABEL_17;
      }
    }
  }

  else if (!v6)
  {
LABEL_17:
    type metadata accessor for ContextProtoContextualEntityDisplayRepresentation(0);
    sub_22BE23A04();
    sub_22BE18E14();
    v13 = sub_22BE2C940(v11, v12, MEMORY[0x277D216D0]);
    return sub_22BE2B85C(v13) & 1;
  }

  return 0;
}

uint64_t sub_22BF90874(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C758, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation, &protocol conformance descriptor for ContextProtoContextualEntityDisplayRepresentation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BF908F4(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C2F8, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation, &protocol conformance descriptor for ContextProtoContextualEntityDisplayRepresentation);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BF90964(uint64_t a1, uint64_t a2)
{
  sub_22BE2C940(&qword_27D90C2F8, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation, &protocol conformance descriptor for ContextProtoContextualEntityDisplayRepresentation);

  return sub_22C270774();
}

uint64_t sub_22BF909FC()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BBA8);
  sub_22BE199F4(v0, qword_27D90BBA8);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "x_coordinate";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "y_coordinate";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "width";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "height";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t ContextProtoBoundingBox.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    result = sub_22BE3A218();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
        sub_22BE2037C();
        sub_22C270604();
        break;
      default:
        continue;
    }
  }
}

uint64_t ContextProtoBoundingBox.traverse<A>(visitor:)()
{
  sub_22BE33A5C();
  v1 = sub_22BE192B4();
  result = sub_22BF90D80(v1, v2, v3, v4);
  if (!v0)
  {
    v6 = sub_22BE17D78();
    sub_22BF90DC0(v6, v7, v8, v9);
    v10 = sub_22BE17D78();
    sub_22BF90E00(v10, v11, v12, v13);
    v14 = sub_22BE17D78();
    sub_22BF90E40(v14, v15, v16, v17);
    type metadata accessor for ContextProtoBoundingBox(0);
    return sub_22BE19514();
  }

  return result;
}

uint64_t sub_22BF90D80(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(result + 4) & 1) == 0)
  {
    return sub_22C2707F4();
  }

  return result;
}

uint64_t sub_22BF90DC0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(result + 12) & 1) == 0)
  {
    return sub_22C2707F4();
  }

  return result;
}

uint64_t sub_22BF90E00(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(result + 20) & 1) == 0)
  {
    return sub_22C2707F4();
  }

  return result;
}

uint64_t sub_22BF90E40(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(result + 28) & 1) == 0)
  {
    return sub_22C2707F4();
  }

  return result;
}

uint64_t static ContextProtoBoundingBox.== infix(_:_:)()
{
  sub_22BE18378();
  if (*(v3 + 4))
  {
    if (!*(v2 + 4))
    {
      return 0;
    }
  }

  else
  {
    sub_22BE20498();
    if (v4)
    {
      return 0;
    }
  }

  if (v1[12])
  {
    if (!v0[12])
    {
      return 0;
    }
  }

  else
  {
    sub_22BE20498();
    if (v5)
    {
      return 0;
    }
  }

  if ((v1[20] & 1) == 0)
  {
    sub_22BE20498();
    if ((v6 & 1) == 0)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (!v0[20])
  {
    return 0;
  }

LABEL_13:
  if (v1[28])
  {
    if (!v0[28])
    {
      return 0;
    }
  }

  else
  {
    sub_22BE20498();
    if (v8)
    {
      return 0;
    }
  }

  type metadata accessor for ContextProtoBoundingBox(0);
  sub_22C2704B4();
  sub_22BE18E14();
  v11 = sub_22BE2C940(v9, v10, MEMORY[0x277D216D0]);
  return sub_22BE2B85C(v11) & 1;
}

uint64_t sub_22BF91048(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C750, type metadata accessor for ContextProtoBoundingBox, &protocol conformance descriptor for ContextProtoBoundingBox);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BF910C8(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C310, type metadata accessor for ContextProtoBoundingBox, &protocol conformance descriptor for ContextProtoBoundingBox);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BF91138(uint64_t a1, uint64_t a2)
{
  sub_22BE2C940(&qword_27D90C310, type metadata accessor for ContextProtoBoundingBox, &protocol conformance descriptor for ContextProtoBoundingBox);

  return sub_22C270774();
}

uint64_t sub_22BF911C4()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BBC0);
  sub_22BE199F4(v0, qword_27D90BBC0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "on_screen_bounding_box";
  *(v10 + 1) = 22;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t ContextProtoSurroundingText.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    result = sub_22BE3A218();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v3 = sub_22BE18E2C();
      sub_22BF91418(v3, v4, v5, v6);
    }

    else if (result == 1)
    {
      sub_22BE239F4();
      sub_22C270694();
    }
  }

  return result;
}

uint64_t sub_22BF91418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ContextProtoSurroundingText(0);
  type metadata accessor for ContextProtoBoundingBox(0);
  sub_22BE2C940(&qword_27D90C310, type metadata accessor for ContextProtoBoundingBox, &protocol conformance descriptor for ContextProtoBoundingBox);
  return sub_22C2706F4();
}

void sub_22BF91520()
{
  sub_22BE1B214();
  v2 = v1;
  v4 = v3;
  sub_22BE33A5C();
  v5 = sub_22BE192B4();
  v6(v5);
  if (!v0)
  {
    v7 = sub_22BE17D78();
    v4(v7);
    v2(0);
    sub_22BE19514();
  }

  sub_22BE25C6C();
}

uint64_t sub_22BF915A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9092A0, &unk_22C294AC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ContextProtoBoundingBox(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContextProtoSurroundingText(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D9092A0, &unk_22C294AC0);
  }

  sub_22BFB18A0();
  sub_22BE2C940(&qword_27D90C310, type metadata accessor for ContextProtoBoundingBox, &protocol conformance descriptor for ContextProtoBoundingBox);
  sub_22C270884();
  return sub_22BFB18F4(v9, type metadata accessor for ContextProtoBoundingBox);
}

void static ContextProtoSurroundingText.== infix(_:_:)()
{
  sub_22BE19460();
  v4 = sub_22BE1B2D4();
  type metadata accessor for ContextProtoBoundingBox(v4);
  sub_22BE18000();
  MEMORY[0x28223BE20](v5);
  sub_22BE179EC();
  sub_22BE28738();
  v6 = sub_22BE5CE4C(&qword_27D9092A0, &unk_22C294AC0);
  sub_22BE19448(v6);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE1B01C();
  v8 = sub_22BE5CE4C(&qword_27D9092A8, &unk_22C27FE80);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE19E64();
  v10 = *(v0 + 8);
  if (*(v1 + 8))
  {
    if (!v10)
    {
      goto LABEL_19;
    }

    sub_22BE27BD8();
    v13 = v13 && v11 == v12;
    if (!v13 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (v10)
  {
    goto LABEL_19;
  }

  type metadata accessor for ContextProtoSurroundingText(0);
  v14 = *(v8 + 48);
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22BE1972C(v2);
  if (v13)
  {
    sub_22BE1972C(v2 + v14);
    if (v13)
    {
      sub_22BE33928(v2, &qword_27D9092A0, &unk_22C294AC0);
LABEL_22:
      sub_22C2704B4();
      sub_22BE18E14();
      v25 = sub_22BE2C940(v23, v24, MEMORY[0x277D216D0]);
      v17 = sub_22BE2B85C(v25);
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  sub_22BE194F8();
  sub_22BE22868();
  sub_22BE1972C(v2 + v14);
  if (v15)
  {
    sub_22BE25964();
    sub_22BFB18F4(v3, v16);
LABEL_18:
    sub_22BE33928(v2, &qword_27D9092A8, &unk_22C27FE80);
    goto LABEL_19;
  }

  sub_22BFB18A0();
  sub_22BE38970();
  v18 = static ContextProtoBoundingBox.== infix(_:_:)();
  v19 = sub_22BE324FC();
  sub_22BFB18F4(v19, v20);
  v21 = sub_22BE1AB1C();
  sub_22BFB18F4(v21, v22);
  sub_22BE33928(v2, &qword_27D9092A0, &unk_22C294AC0);
  if (v18)
  {
    goto LABEL_22;
  }

LABEL_19:
  v17 = 0;
LABEL_20:
  sub_22BE1C1DC(v17);
  sub_22BE1AABC();
}

uint64_t sub_22BF91A90(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C748, type metadata accessor for ContextProtoSurroundingText, &protocol conformance descriptor for ContextProtoSurroundingText);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BF91B10(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90BF88, type metadata accessor for ContextProtoSurroundingText, &protocol conformance descriptor for ContextProtoSurroundingText);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BF91B80(uint64_t a1, uint64_t a2)
{
  sub_22BE2C940(&qword_27D90BF88, type metadata accessor for ContextProtoSurroundingText, &protocol conformance descriptor for ContextProtoSurroundingText);

  return sub_22C270774();
}

uint64_t sub_22BF91C18()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BBD8);
  sub_22BE199F4(v0, qword_27D90BBD8);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "score";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bucket";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t ContextProtoConfidence.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    result = sub_22BE3A218();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v3 = sub_22BE18E2C();
      sub_22BF91E64(v3, v4, v5, v6);
    }

    else if (result == 1)
    {
      sub_22BE239F4();
      sub_22C270614();
    }
  }

  return result;
}

uint64_t ContextProtoConfidence.traverse<A>(visitor:)()
{
  sub_22BE18648();
  if (*v0 == 0.0 || (sub_22BE254E4(), result = sub_22C2707F4(), !v1))
  {
    if (!*(v2 + 4) || (sub_22BFADF4C(), sub_22BE23CE4(), result = sub_22C2707D4(), !v1))
    {
      type metadata accessor for ContextProtoConfidence(0);
      return sub_22BE1AC30();
    }
  }

  return result;
}

uint64_t static ContextProtoConfidence.== infix(_:_:)(float *a1, float *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_22BE18378();
  if (*(v2 + 4) != *(v3 + 4))
  {
    return 0;
  }

  type metadata accessor for ContextProtoConfidence(0);
  sub_22BE23A04();
  sub_22BE18E14();
  v6 = sub_22BE2C940(v4, v5, MEMORY[0x277D216D0]);
  return sub_22BE2B85C(v6) & 1;
}

uint64_t sub_22BF920A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C740, type metadata accessor for ContextProtoConfidence, &protocol conformance descriptor for ContextProtoConfidence);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BF92124(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C338, type metadata accessor for ContextProtoConfidence, &protocol conformance descriptor for ContextProtoConfidence);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BF92194(uint64_t a1, uint64_t a2)
{
  sub_22BE2C940(&qword_27D90C338, type metadata accessor for ContextProtoConfidence, &protocol conformance descriptor for ContextProtoConfidence);

  return sub_22C270774();
}

uint64_t sub_22BF9222C()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BBF0);
  sub_22BE199F4(v0, qword_27D90BBF0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D20;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "siriRequestContext";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "intelligenceCommand";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "appInFocusContext";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "onScreenUIText";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "appContext";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "nowPlayingMediaItem";
  *(v18 + 1) = 19;
  v18[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t ContextProtoStructuredContext.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    result = sub_22BE3A218();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = sub_22BE236F4();
        sub_22BF925CC(v3, v4, v5, v6);
        break;
      case 2:
        v19 = sub_22BE236F4();
        sub_22BF92AC4(v19, v20, v21, v22);
        break;
      case 3:
        v11 = sub_22BE236F4();
        sub_22BF92FBC(v11, v12, v13, v14);
        break;
      case 4:
        v15 = sub_22BE236F4();
        sub_22BF934B4(v15, v16, v17, v18);
        break;
      case 5:
        v7 = sub_22BE236F4();
        sub_22BF939AC(v7, v8, v9, v10);
        break;
      case 6:
        v23 = sub_22BE236F4();
        sub_22BF93EA4(v23, v24, v25, v26);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22BF925CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  MEMORY[0x28223BE20](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90BFE0, &qword_22C2CB7B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ContextProtoStructuredContextKind(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v15 = sub_22BE5CE4C(&qword_27D90C7E8, &unk_22C2AE4B0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v26 - v19;
  sub_22BE19DC4(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_22BE22868();
  v28 = sub_22BE1AEA8(v10, 1, v11);
  v29 = v11;
  if (v28 == 1)
  {
    sub_22BE33928(v10, &qword_27D90BFE0, &qword_22C2CB7B0);
  }

  else
  {
    sub_22BFB18A0();
    sub_22BFB18A0();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_22BFB18F4(v13, type metadata accessor for ContextProtoStructuredContextKind);
    }

    else
    {
      sub_22BE33928(v20, &qword_27D90C7E8, &unk_22C2AE4B0);
      sub_22BFB18A0();
      sub_22BFB18A0();
      sub_22BE19DC4(v20, 0, 1, v5);
    }
  }

  sub_22BE2C940(&qword_27D90C380, type metadata accessor for ContextProtoStructuredContextSiriRequestContext, &protocol conformance descriptor for ContextProtoStructuredContextSiriRequestContext);
  v21 = v31;
  sub_22C2706F4();
  if (v21)
  {
    v22 = v20;
    return sub_22BE33928(v22, &qword_27D90C7E8, &unk_22C2AE4B0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v17, 1, v5) == 1)
  {
    sub_22BE33928(v20, &qword_27D90C7E8, &unk_22C2AE4B0);
    v22 = v17;
    return sub_22BE33928(v22, &qword_27D90C7E8, &unk_22C2AE4B0);
  }

  sub_22BFB18A0();
  if (v28 != 1)
  {
    sub_22C270594();
  }

  v24 = v29;
  sub_22BE33928(v20, &qword_27D90C7E8, &unk_22C2AE4B0);
  v25 = v27;
  sub_22BE33928(v27, &qword_27D90BFE0, &qword_22C2CB7B0);
  sub_22BFB18A0();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v25, 0, 1, v24);
}

uint64_t sub_22BF92AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext(0);
  MEMORY[0x28223BE20](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90BFE0, &qword_22C2CB7B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ContextProtoStructuredContextKind(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v15 = sub_22BE5CE4C(&qword_27D90C7F0, &qword_22C294A78);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v26 - v19;
  sub_22BE19DC4(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_22BE22868();
  v28 = sub_22BE1AEA8(v10, 1, v11);
  v29 = v11;
  if (v28 == 1)
  {
    sub_22BE33928(v10, &qword_27D90BFE0, &qword_22C2CB7B0);
  }

  else
  {
    sub_22BFB18A0();
    sub_22BFB18A0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22BE33928(v20, &qword_27D90C7F0, &qword_22C294A78);
      sub_22BFB18A0();
      sub_22BFB18A0();
      sub_22BE19DC4(v20, 0, 1, v5);
    }

    else
    {
      sub_22BFB18F4(v13, type metadata accessor for ContextProtoStructuredContextKind);
    }
  }

  sub_22BE2C940(&qword_27D90C3F0, type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext, &protocol conformance descriptor for ContextProtoStructuredContextIntelligenceCommandContext);
  v21 = v31;
  sub_22C2706F4();
  if (v21)
  {
    v22 = v20;
    return sub_22BE33928(v22, &qword_27D90C7F0, &qword_22C294A78);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v17, 1, v5) == 1)
  {
    sub_22BE33928(v20, &qword_27D90C7F0, &qword_22C294A78);
    v22 = v17;
    return sub_22BE33928(v22, &qword_27D90C7F0, &qword_22C294A78);
  }

  sub_22BFB18A0();
  if (v28 != 1)
  {
    sub_22C270594();
  }

  v24 = v29;
  sub_22BE33928(v20, &qword_27D90C7F0, &qword_22C294A78);
  v25 = v27;
  sub_22BE33928(v27, &qword_27D90BFE0, &qword_22C2CB7B0);
  sub_22BFB18A0();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v25, 0, 1, v24);
}

uint64_t sub_22BF92FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ContextProtoStructedContextAppInFocusContext(0);
  MEMORY[0x28223BE20](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90BFE0, &qword_22C2CB7B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ContextProtoStructuredContextKind(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v15 = sub_22BE5CE4C(&qword_27D90C7F8, &qword_22C294A80);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v26 - v19;
  sub_22BE19DC4(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_22BE22868();
  v28 = sub_22BE1AEA8(v10, 1, v11);
  v29 = v11;
  if (v28 == 1)
  {
    sub_22BE33928(v10, &qword_27D90BFE0, &qword_22C2CB7B0);
  }

  else
  {
    sub_22BFB18A0();
    sub_22BFB18A0();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22BE33928(v20, &qword_27D90C7F8, &qword_22C294A80);
      sub_22BFB18A0();
      sub_22BFB18A0();
      sub_22BE19DC4(v20, 0, 1, v5);
    }

    else
    {
      sub_22BFB18F4(v13, type metadata accessor for ContextProtoStructuredContextKind);
    }
  }

  sub_22BE2C940(&qword_27D90C408, type metadata accessor for ContextProtoStructedContextAppInFocusContext, &protocol conformance descriptor for ContextProtoStructedContextAppInFocusContext);
  v21 = v31;
  sub_22C2706F4();
  if (v21)
  {
    v22 = v20;
    return sub_22BE33928(v22, &qword_27D90C7F8, &qword_22C294A80);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v17, 1, v5) == 1)
  {
    sub_22BE33928(v20, &qword_27D90C7F8, &qword_22C294A80);
    v22 = v17;
    return sub_22BE33928(v22, &qword_27D90C7F8, &qword_22C294A80);
  }

  sub_22BFB18A0();
  if (v28 != 1)
  {
    sub_22C270594();
  }

  v24 = v29;
  sub_22BE33928(v20, &qword_27D90C7F8, &qword_22C294A80);
  v25 = v27;
  sub_22BE33928(v27, &qword_27D90BFE0, &qword_22C2CB7B0);
  sub_22BFB18A0();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v25, 0, 1, v24);
}

uint64_t sub_22BF934B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ContextProtoStructuredContextOnScreenUIText(0);
  MEMORY[0x28223BE20](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90BFE0, &qword_22C2CB7B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ContextProtoStructuredContextKind(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v15 = sub_22BE5CE4C(&qword_27D90C800, &qword_22C294A88);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v26 - v19;
  sub_22BE19DC4(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_22BE22868();
  v28 = sub_22BE1AEA8(v10, 1, v11);
  v29 = v11;
  if (v28 == 1)
  {
    sub_22BE33928(v10, &qword_27D90BFE0, &qword_22C2CB7B0);
  }

  else
  {
    sub_22BFB18A0();
    sub_22BFB18A0();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_22BE33928(v20, &qword_27D90C800, &qword_22C294A88);
      sub_22BFB18A0();
      sub_22BFB18A0();
      sub_22BE19DC4(v20, 0, 1, v5);
    }

    else
    {
      sub_22BFB18F4(v13, type metadata accessor for ContextProtoStructuredContextKind);
    }
  }

  sub_22BE2C940(&qword_27D90C438, type metadata accessor for ContextProtoStructuredContextOnScreenUIText, &protocol conformance descriptor for ContextProtoStructuredContextOnScreenUIText);
  v21 = v31;
  sub_22C2706F4();
  if (v21)
  {
    v22 = v20;
    return sub_22BE33928(v22, &qword_27D90C800, &qword_22C294A88);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v17, 1, v5) == 1)
  {
    sub_22BE33928(v20, &qword_27D90C800, &qword_22C294A88);
    v22 = v17;
    return sub_22BE33928(v22, &qword_27D90C800, &qword_22C294A88);
  }

  sub_22BFB18A0();
  if (v28 != 1)
  {
    sub_22C270594();
  }

  v24 = v29;
  sub_22BE33928(v20, &qword_27D90C800, &qword_22C294A88);
  v25 = v27;
  sub_22BE33928(v27, &qword_27D90BFE0, &qword_22C2CB7B0);
  sub_22BFB18A0();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v25, 0, 1, v24);
}

uint64_t sub_22BF939AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ContextProtoStructedContextAppContext(0);
  MEMORY[0x28223BE20](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90BFE0, &qword_22C2CB7B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ContextProtoStructuredContextKind(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v15 = sub_22BE5CE4C(&qword_27D90C808, &qword_22C294A90);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v26 - v19;
  sub_22BE19DC4(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_22BE22868();
  v28 = sub_22BE1AEA8(v10, 1, v11);
  v29 = v11;
  if (v28 == 1)
  {
    sub_22BE33928(v10, &qword_27D90BFE0, &qword_22C2CB7B0);
  }

  else
  {
    sub_22BFB18A0();
    sub_22BFB18A0();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_22BE33928(v20, &qword_27D90C808, &qword_22C294A90);
      sub_22BFB18A0();
      sub_22BFB18A0();
      sub_22BE19DC4(v20, 0, 1, v5);
    }

    else
    {
      sub_22BFB18F4(v13, type metadata accessor for ContextProtoStructuredContextKind);
    }
  }

  sub_22BE2C940(&qword_27D90C420, type metadata accessor for ContextProtoStructedContextAppContext, &protocol conformance descriptor for ContextProtoStructedContextAppContext);
  v21 = v31;
  sub_22C2706F4();
  if (v21)
  {
    v22 = v20;
    return sub_22BE33928(v22, &qword_27D90C808, &qword_22C294A90);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v17, 1, v5) == 1)
  {
    sub_22BE33928(v20, &qword_27D90C808, &qword_22C294A90);
    v22 = v17;
    return sub_22BE33928(v22, &qword_27D90C808, &qword_22C294A90);
  }

  sub_22BFB18A0();
  if (v28 != 1)
  {
    sub_22C270594();
  }

  v24 = v29;
  sub_22BE33928(v20, &qword_27D90C808, &qword_22C294A90);
  v25 = v27;
  sub_22BE33928(v27, &qword_27D90BFE0, &qword_22C2CB7B0);
  sub_22BFB18A0();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v25, 0, 1, v24);
}

uint64_t sub_22BF93EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem(0);
  MEMORY[0x28223BE20](v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BE5CE4C(&qword_27D90BFE0, &qword_22C2CB7B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ContextProtoStructuredContextKind(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v15 = sub_22BE5CE4C(&qword_27D90C810, &qword_22C294A98);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v26 - v19;
  sub_22BE19DC4(&v26 - v19, 1, 1, v5);
  v27 = a1;
  sub_22BE22868();
  v28 = sub_22BE1AEA8(v10, 1, v11);
  v29 = v11;
  if (v28 == 1)
  {
    sub_22BE33928(v10, &qword_27D90BFE0, &qword_22C2CB7B0);
  }

  else
  {
    sub_22BFB18A0();
    sub_22BFB18A0();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_22BE33928(v20, &qword_27D90C810, &qword_22C294A98);
      sub_22BFB18A0();
      sub_22BFB18A0();
      sub_22BE19DC4(v20, 0, 1, v5);
    }

    else
    {
      sub_22BFB18F4(v13, type metadata accessor for ContextProtoStructuredContextKind);
    }
  }

  sub_22BE2C940(&qword_27D90C368, type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem, &protocol conformance descriptor for ContextProtoStructedContextNowPlayingMediaItem);
  v21 = v31;
  sub_22C2706F4();
  if (v21)
  {
    v22 = v20;
    return sub_22BE33928(v22, &qword_27D90C810, &qword_22C294A98);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v17, 1, v5) == 1)
  {
    sub_22BE33928(v20, &qword_27D90C810, &qword_22C294A98);
    v22 = v17;
    return sub_22BE33928(v22, &qword_27D90C810, &qword_22C294A98);
  }

  sub_22BFB18A0();
  if (v28 != 1)
  {
    sub_22C270594();
  }

  v24 = v29;
  sub_22BE33928(v20, &qword_27D90C810, &qword_22C294A98);
  v25 = v27;
  sub_22BE33928(v27, &qword_27D90BFE0, &qword_22C2CB7B0);
  sub_22BFB18A0();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v25, 0, 1, v24);
}

uint64_t ContextProtoStructuredContext.traverse<A>(visitor:)()
{
  sub_22BE33A5C();
  v2 = sub_22BE289D8();
  v4 = sub_22BE5CE4C(v2, v3);
  sub_22BE19448(v4);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE234F4();
  sub_22BE36CB8();
  sub_22BE22868();
  v6 = type metadata accessor for ContextProtoStructuredContextKind(0);
  v7 = sub_22BFB1A7C();
  if (sub_22BE1AEA8(v7, v8, v6) == 1)
  {
    goto LABEL_10;
  }

  sub_22BE1AEE4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v25 = sub_22BE17D78();
      sub_22BF946EC(v25, v26, v27, v28);
      break;
    case 2u:
      v17 = sub_22BE17D78();
      sub_22BF948F4(v17, v18, v19, v20);
      break;
    case 3u:
      v21 = sub_22BE17D78();
      sub_22BF94AFC(v21, v22, v23, v24);
      break;
    case 4u:
      v13 = sub_22BE17D78();
      sub_22BF94D04(v13, v14, v15, v16);
      break;
    case 5u:
      v29 = sub_22BE17D78();
      sub_22BF94F0C(v29, v30, v31, v32);
      break;
    default:
      v9 = sub_22BE17D78();
      sub_22BF944E8(v9, v10, v11, v12);
      break;
  }

  sub_22BE40C40();
  result = sub_22BFB18F4(v1, v33);
  if (!v0)
  {
LABEL_10:
    type metadata accessor for ContextProtoStructuredContext(0);
    return sub_22BE19514();
  }

  return result;
}

uint64_t sub_22BF944E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90BFE0, &qword_22C2CB7B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  MEMORY[0x28223BE20](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE22868();
  v10 = type metadata accessor for ContextProtoStructuredContextKind(0);
  if (sub_22BE1AEA8(v6, 1, v10) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90BFE0, &qword_22C2CB7B0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_22BFB18A0();
      sub_22BE2C940(&qword_27D90C380, type metadata accessor for ContextProtoStructuredContextSiriRequestContext, &protocol conformance descriptor for ContextProtoStructuredContextSiriRequestContext);
      sub_22C270884();
      return sub_22BFB18F4(v9, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);
    }

    result = sub_22BFB18F4(v6, type metadata accessor for ContextProtoStructuredContextKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_22BF946EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90BFE0, &qword_22C2CB7B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext(0);
  MEMORY[0x28223BE20](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE22868();
  v10 = type metadata accessor for ContextProtoStructuredContextKind(0);
  if (sub_22BE1AEA8(v6, 1, v10) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90BFE0, &qword_22C2CB7B0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22BFB18A0();
      sub_22BE2C940(&qword_27D90C3F0, type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext, &protocol conformance descriptor for ContextProtoStructuredContextIntelligenceCommandContext);
      sub_22C270884();
      return sub_22BFB18F4(v9, type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext);
    }

    result = sub_22BFB18F4(v6, type metadata accessor for ContextProtoStructuredContextKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_22BF948F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90BFE0, &qword_22C2CB7B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ContextProtoStructedContextAppInFocusContext(0);
  MEMORY[0x28223BE20](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE22868();
  v10 = type metadata accessor for ContextProtoStructuredContextKind(0);
  if (sub_22BE1AEA8(v6, 1, v10) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90BFE0, &qword_22C2CB7B0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22BFB18A0();
      sub_22BE2C940(&qword_27D90C408, type metadata accessor for ContextProtoStructedContextAppInFocusContext, &protocol conformance descriptor for ContextProtoStructedContextAppInFocusContext);
      sub_22C270884();
      return sub_22BFB18F4(v9, type metadata accessor for ContextProtoStructedContextAppInFocusContext);
    }

    result = sub_22BFB18F4(v6, type metadata accessor for ContextProtoStructuredContextKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_22BF94AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90BFE0, &qword_22C2CB7B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ContextProtoStructuredContextOnScreenUIText(0);
  MEMORY[0x28223BE20](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE22868();
  v10 = type metadata accessor for ContextProtoStructuredContextKind(0);
  if (sub_22BE1AEA8(v6, 1, v10) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90BFE0, &qword_22C2CB7B0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_22BFB18A0();
      sub_22BE2C940(&qword_27D90C438, type metadata accessor for ContextProtoStructuredContextOnScreenUIText, &protocol conformance descriptor for ContextProtoStructuredContextOnScreenUIText);
      sub_22C270884();
      return sub_22BFB18F4(v9, type metadata accessor for ContextProtoStructuredContextOnScreenUIText);
    }

    result = sub_22BFB18F4(v6, type metadata accessor for ContextProtoStructuredContextKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_22BF94D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90BFE0, &qword_22C2CB7B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ContextProtoStructedContextAppContext(0);
  MEMORY[0x28223BE20](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE22868();
  v10 = type metadata accessor for ContextProtoStructuredContextKind(0);
  if (sub_22BE1AEA8(v6, 1, v10) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90BFE0, &qword_22C2CB7B0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_22BFB18A0();
      sub_22BE2C940(&qword_27D90C420, type metadata accessor for ContextProtoStructedContextAppContext, &protocol conformance descriptor for ContextProtoStructedContextAppContext);
      sub_22C270884();
      return sub_22BFB18F4(v9, type metadata accessor for ContextProtoStructedContextAppContext);
    }

    result = sub_22BFB18F4(v6, type metadata accessor for ContextProtoStructuredContextKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_22BF94F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90BFE0, &qword_22C2CB7B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v12 - v5;
  v7 = type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem(0);
  MEMORY[0x28223BE20](v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE22868();
  v10 = type metadata accessor for ContextProtoStructuredContextKind(0);
  if (sub_22BE1AEA8(v6, 1, v10) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90BFE0, &qword_22C2CB7B0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_22BFB18A0();
      sub_22BE2C940(&qword_27D90C368, type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem, &protocol conformance descriptor for ContextProtoStructedContextNowPlayingMediaItem);
      sub_22C270884();
      return sub_22BFB18F4(v9, type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem);
    }

    result = sub_22BFB18F4(v6, type metadata accessor for ContextProtoStructuredContextKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_22BF953DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C738, type metadata accessor for ContextProtoStructuredContext, &protocol conformance descriptor for ContextProtoStructuredContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BF9545C(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C350, type metadata accessor for ContextProtoStructuredContext, &protocol conformance descriptor for ContextProtoStructuredContext);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BF954CC(uint64_t a1, uint64_t a2)
{
  sub_22BE2C940(&qword_27D90C350, type metadata accessor for ContextProtoStructuredContext, &protocol conformance descriptor for ContextProtoStructuredContext);

  return sub_22C270774();
}

uint64_t sub_22BF95564()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BC08);
  sub_22BE199F4(v0, qword_27D90BC08);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_22C290D80;
  v4 = v33 + v3;
  v5 = v33 + v3 + v1[14];
  *(v33 + v3) = 1;
  *v5 = "appBundleId";
  *(v5 + 8) = 11;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_22C270894();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "contentIdentifier";
  *(v9 + 8) = 17;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "brandIdentifier";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "iTunesStoreIdentifier";
  *(v13 + 1) = 21;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "iTunesStoreAlbumIdentifier";
  *(v15 + 1) = 26;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "iTunesStoreArtistIdentifier";
  *(v17 + 1) = 27;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "playbackState";
  *(v19 + 1) = 13;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "mediaType";
  *(v21 + 1) = 9;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "mediaSubType";
  *(v23 + 1) = 12;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "title";
  *(v25 + 1) = 5;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "albumName";
  *(v27 + 1) = 9;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "trackArtistName";
  *(v29 + 1) = 15;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "currentlyPlayingSongAdamId";
  *(v31 + 1) = 26;
  v31[16] = 2;
  v8();
  return sub_22C2708A4();
}

uint64_t ContextProtoStructedContextNowPlayingMediaItem.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    result = sub_22BE3A218();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_22BE239F4();
        sub_22C2706A4();
        break;
      case 2:
      case 3:
      case 10:
      case 11:
      case 12:
      case 13:
        sub_22BE2037C();
        sub_22C270694();
        break;
      case 4:
      case 5:
      case 6:
        sub_22BE2037C();
        sub_22C270644();
        break;
      case 7:
        v7 = sub_22BE18E2C();
        sub_22BF95AEC(v7, v8, v9, v10);
        break;
      case 8:
        v3 = sub_22BE18E2C();
        sub_22BF95B54(v3, v4, v5, v6);
        break;
      case 9:
        v11 = sub_22BE18E2C();
        sub_22BF95BBC(v11, v12, v13, v14);
        break;
      default:
        continue;
    }
  }
}

uint64_t ContextProtoStructedContextNowPlayingMediaItem.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22BE1B448();
  if (!v4 || (result = sub_22C270844(), !v3))
  {
    v6 = sub_22BE23CF8();
    result = sub_22BE4E2BC(v6);
    if (!v3)
    {
      v7 = sub_22BE23CF8();
      sub_22BE4E2F4(v7);
      v8 = sub_22BE23CF8();
      sub_22BF95D44(v8);
      v9 = sub_22BE23CF8();
      sub_22BF95D7C(v9);
      v10 = sub_22BE23CF8();
      sub_22BF95DB4(v10);
      v11 = sub_22BE23CF8();
      sub_22BF95DEC(v11, v12, v13, v14);
      v15 = sub_22BE23CF8();
      sub_22BF95E68(v15, v16, v17, v18);
      v19 = sub_22BE23CF8();
      sub_22BF95EE4(v19, v20, v21, v22);
      v23 = sub_22BE23CF8();
      sub_22BF95F60(v23);
      v24 = sub_22BE23CF8();
      sub_22BF95F9C(v24);
      v25 = sub_22BE23CF8();
      sub_22BF95FD8(v25);
      v26 = sub_22BE23CF8();
      sub_22BF96014(v26);
      type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem(0);
      return sub_22C270494();
    }
  }

  return result;
}

uint64_t sub_22BF95D44(uint64_t result)
{
  if ((*(result + 56) & 1) == 0)
  {
    return sub_22C270814();
  }

  return result;
}

uint64_t sub_22BF95D7C(uint64_t result)
{
  if ((*(result + 72) & 1) == 0)
  {
    return sub_22C270814();
  }

  return result;
}

uint64_t sub_22BF95DB4(uint64_t result)
{
  if ((*(result + 88) & 1) == 0)
  {
    return sub_22C270814();
  }

  return result;
}

uint64_t sub_22BF95DEC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 89) != 7)
  {
    sub_22BFB184C();
    return sub_22C2707D4();
  }

  return result;
}

uint64_t sub_22BF95E68(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 90) != 4)
  {
    sub_22BFB17F8();
    return sub_22C2707D4();
  }

  return result;
}

uint64_t sub_22BF95EE4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 91) != 9)
  {
    sub_22BFB17A4();
    return sub_22C2707D4();
  }

  return result;
}

uint64_t sub_22BF95F60(uint64_t result)
{
  if (*(result + 104))
  {
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BF95F9C(uint64_t result)
{
  if (*(result + 120))
  {
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BF95FD8(uint64_t result)
{
  if (*(result + 136))
  {
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BF96014(uint64_t result)
{
  if (*(result + 152))
  {
    return sub_22C270844();
  }

  return result;
}

uint64_t static ContextProtoStructedContextNowPlayingMediaItem.== infix(_:_:)(uint64_t a1)
{
  sub_22BE19FC4(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  sub_22BFB1A88();
  if (v7)
  {
    if (!v6)
    {
      return 0;
    }

    sub_22BFB1A50();
    v10 = v5 && v8 == v9;
    if (!v10 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  sub_22BE46B5C();
  if (v12)
  {
    if (!v11)
    {
      return 0;
    }

    sub_22BFB1A40();
    v15 = v5 && v13 == v14;
    if (!v15 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (*(v2 + 56))
  {
    if (!*(v1 + 56))
    {
      return 0;
    }
  }

  else
  {
    sub_22BEC02E4();
    if (v16)
    {
      return 0;
    }
  }

  if (*(v2 + 72))
  {
    if (!*(v1 + 72))
    {
      return 0;
    }
  }

  else
  {
    sub_22BEC02E4();
    if (v17)
    {
      return 0;
    }
  }

  if (*(v2 + 88))
  {
    if (!*(v1 + 88))
    {
      return 0;
    }
  }

  else
  {
    sub_22BEC02E4();
    if (v18)
    {
      return 0;
    }
  }

  v19 = *(v2 + 89);
  v20 = *(v1 + 89);
  if (v19 == 7)
  {
    if (v20 != 7)
    {
      return 0;
    }
  }

  else if (v19 != v20)
  {
    return 0;
  }

  v21 = *(v2 + 90);
  v22 = *(v1 + 90);
  if (v21 == 4)
  {
    if (v22 != 4)
    {
      return 0;
    }
  }

  else if (v21 != v22)
  {
    return 0;
  }

  v23 = *(v2 + 91);
  v24 = *(v1 + 91);
  if (v23 == 9)
  {
    if (v24 != 9)
    {
      return 0;
    }
  }

  else if (v23 != v24)
  {
    return 0;
  }

  v25 = *(v2 + 104);
  v26 = *(v1 + 104);
  if (v25)
  {
    if (!v26)
    {
      return 0;
    }

    v27 = *(v2 + 96) == *(v1 + 96) && v25 == v26;
    if (!v27 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v26)
  {
    return 0;
  }

  v28 = *(v2 + 120);
  v29 = *(v1 + 120);
  if (v28)
  {
    if (!v29)
    {
      return 0;
    }

    v30 = *(v2 + 112) == *(v1 + 112) && v28 == v29;
    if (!v30 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v29)
  {
    return 0;
  }

  v31 = *(v2 + 136);
  v32 = *(v1 + 136);
  if (v31)
  {
    if (!v32)
    {
      return 0;
    }

    v33 = *(v2 + 128) == *(v1 + 128) && v31 == v32;
    if (!v33 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v32)
  {
    return 0;
  }

  v34 = *(v2 + 152);
  v35 = *(v1 + 152);
  if (v34)
  {
    if (!v35)
    {
      return 0;
    }

    v36 = *(v2 + 144) == *(v1 + 144) && v34 == v35;
    if (!v36 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }

LABEL_82:
    type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem(0);
    sub_22C2704B4();
    sub_22BE18E14();
    v39 = sub_22BE2C940(v37, v38, MEMORY[0x277D216D0]);
    return sub_22BE2B85C(v39) & 1;
  }

  if (!v35)
  {
    goto LABEL_82;
  }

  return 0;
}

uint64_t sub_22BF963AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C730, type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem, &protocol conformance descriptor for ContextProtoStructedContextNowPlayingMediaItem);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BF9642C(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C368, type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem, &protocol conformance descriptor for ContextProtoStructedContextNowPlayingMediaItem);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BF9649C(uint64_t a1, uint64_t a2)
{
  sub_22BE2C940(&qword_27D90C368, type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem, &protocol conformance descriptor for ContextProtoStructedContextNowPlayingMediaItem);

  return sub_22C270774();
}

uint64_t sub_22BF96534()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BC20);
  sub_22BE199F4(v0, qword_27D90BC20);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_22C290D90;
  v4 = v52 + v3 + v1[14];
  *(v52 + v3) = 1;
  *v4 = "sessionID";
  *(v4 + 8) = 9;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_22C270894();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v52 + v3 + v2 + v1[14];
  *(v52 + v3 + v2) = 2;
  *v8 = "requestID";
  *(v8 + 8) = 9;
  *(v8 + 16) = 2;
  v7();
  v9 = (v52 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "inputOrigin";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v7();
  v11 = (v52 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "responseMode";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v7();
  v13 = (v52 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "isEyesFree";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v7();
  v15 = (v52 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "isMultiUser";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v7();
  v17 = (v52 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "isVoiceTriggerEnabled";
  *(v18 + 1) = 21;
  v18[16] = 2;
  v7();
  v19 = (v52 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "isTextToSpeechEnabled";
  *(v20 + 1) = 21;
  v20[16] = 2;
  v7();
  v21 = (v52 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "isTriggerlessFollowup";
  *(v22 + 1) = 21;
  v22[16] = 2;
  v7();
  v23 = (v52 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "deviceRestrictions";
  *(v24 + 1) = 18;
  v24[16] = 2;
  v7();
  v25 = (v52 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "bargeInModes";
  *(v26 + 1) = 12;
  v26[16] = 2;
  v7();
  v27 = (v52 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "identifiedUser";
  *(v28 + 1) = 14;
  v28[16] = 2;
  v7();
  v29 = (v52 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "encodedLocation";
  *(v30 + 1) = 15;
  v30[16] = 2;
  v7();
  v31 = (v52 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "countryCode";
  *(v32 + 1) = 11;
  v32[16] = 2;
  v7();
  v33 = (v52 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "siriLocale";
  *(v34 + 1) = 10;
  v34[16] = 2;
  v7();
  v35 = (v52 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "contentRestrictions";
  *(v36 + 1) = 19;
  v36[16] = 2;
  v7();
  v37 = (v52 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 17;
  *v38 = "uiScale";
  *(v38 + 1) = 7;
  v38[16] = 2;
  v7();
  v39 = (v52 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 18;
  *v40 = "temperatureUnit";
  *(v40 + 1) = 15;
  v40[16] = 2;
  v7();
  v41 = (v52 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 19;
  *v42 = "allowUserGeneratedContent";
  *(v42 + 1) = 25;
  v42[16] = 2;
  v7();
  v43 = (v52 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 20;
  *v44 = "censorSpeech";
  *(v44 + 1) = 12;
  v44[16] = 2;
  v7();
  v45 = (v52 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 21;
  *v46 = "meCard";
  *(v46 + 1) = 6;
  v46[16] = 2;
  v7();
  v47 = (v52 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 22;
  *v48 = "deviceIdiom";
  *(v48 + 1) = 11;
  v48[16] = 2;
  v7();
  v49 = (v52 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 23;
  *v50 = "didPSCFire";
  *(v50 + 1) = 10;
  v50[16] = 2;
  v7();
  return sub_22C2708A4();
}

uint64_t ContextProtoStructuredContextSiriRequestContext.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    result = sub_22BE3A218();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
        sub_22BE2037C();
        sub_22C270694();
        break;
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
        sub_22BE2037C();
        sub_22C2705B4();
        break;
      case 10:
      case 11:
        sub_22BE2037C();
        sub_22C270664();
        break;
      case 12:
        v11 = sub_22BE18E2C();
        sub_22BF96DE4(v11, v12, v13, v14);
        break;
      case 13:
        v15 = sub_22BE18E2C();
        sub_22BF96E98(v15, v16, v17, v18, v19, v20);
        break;
      case 14:
        v37 = sub_22BE18E2C();
        sub_22BF96F08(v37, v38, v39, v40);
        break;
      case 15:
        v7 = sub_22BE18E2C();
        sub_22BF96F6C(v7, v8, v9, v10);
        break;
      case 16:
        v21 = sub_22BE18E2C();
        sub_22BF96FD0(v21, v22, v23, v24);
        break;
      case 17:
        v3 = sub_22BE18E2C();
        sub_22BF97084(v3, v4, v5, v6);
        break;
      case 18:
        v25 = sub_22BE18E2C();
        sub_22BF970E8(v25, v26, v27, v28);
        break;
      case 19:
        v41 = sub_22BE18E2C();
        sub_22BF9714C(v41, v42, v43, v44);
        break;
      case 20:
        v49 = sub_22BE18E2C();
        sub_22BF971B0(v49, v50, v51, v52);
        break;
      case 21:
        v29 = sub_22BE18E2C();
        sub_22BF97214(v29, v30, v31, v32);
        break;
      case 22:
        v33 = sub_22BE18E2C();
        sub_22BF972C8(v33, v34, v35, v36);
        break;
      case 23:
        v45 = sub_22BE18E2C();
        sub_22BF9733C(v45, v46, v47, v48);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22BF96DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser(0);
  sub_22BE2C940(&qword_27D90C3B0, type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser, &protocol conformance descriptor for ContextProtoStructuredContextSiriRequestContextUser);
  return sub_22C2706F4();
}

uint64_t sub_22BF96FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction(0);
  sub_22BE2C940(&qword_27D90C398, type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction, &protocol conformance descriptor for ContextProtoStructuredContextSiriRequestContextContentRestriction);
  return sub_22C2706F4();
}

uint64_t sub_22BF97214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard(0);
  sub_22BE2C940(&qword_27D90C3C8, type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard, &protocol conformance descriptor for ContextProtoStructuredContextSiriRequestContextMeCard);
  return sub_22C2706F4();
}

uint64_t sub_22BF972C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  sub_22BFB1750();
  return sub_22C2705D4();
}

uint64_t ContextProtoStructuredContextSiriRequestContext.traverse<A>(visitor:)()
{
  sub_22BE3B090();
  sub_22BE3C860();
  result = sub_22BF97580(v2);
  if (!v0)
  {
    v4 = sub_22BE17D60();
    sub_22BE4E388(v4);
    v5 = sub_22BE17D60();
    sub_22BE4E3C0(v5);
    v6 = sub_22BE17D60();
    sub_22BE4E3F8(v6);
    v7 = sub_22BE17D60();
    sub_22BF975BC(v7, v8, v9, v10);
    v11 = sub_22BE17D60();
    sub_22BF975F8(v11, v12, v13, v14);
    v15 = sub_22BE17D60();
    sub_22BF97634(v15, v16, v17, v18);
    v19 = sub_22BE17D60();
    sub_22BF97670(v19, v20, v21, v22);
    v23 = sub_22BE17D60();
    sub_22BF976AC(v23, v24, v25, v26);
    if (*(*v1 + 16))
    {
      sub_22BE1BAB8();
      sub_22C270824();
    }

    if (*(v1[1] + 16))
    {
      sub_22BE1BAB8();
      sub_22C270824();
    }

    v27 = sub_22BE17D60();
    sub_22BF976E8(v27, v28, v29, v30);
    v31 = sub_22BE17D60();
    sub_22BF978BC(v31, v32, v33, v34);
    v35 = sub_22BE17D60();
    sub_22BF9795C(v35);
    v36 = sub_22BE17D60();
    sub_22BF979D4(v36);
    v37 = sub_22BE17D60();
    sub_22BF97A4C(v37, v38, v39, v40);
    v41 = sub_22BE17D60();
    sub_22BF97C20(v41, v42, v43, v44);
    v45 = sub_22BE17D60();
    sub_22BF97C98(v45);
    v46 = sub_22BE17D60();
    sub_22BF97D10(v46, v47, v48, v49);
    v50 = sub_22BE17D60();
    sub_22BF97D88(v50, v51, v52, v53);
    v54 = sub_22BE17D60();
    sub_22BF97E00(v54, v55, v56, v57);
    v58 = sub_22BE17D60();
    sub_22BF97FD4(v58, v59, v60, v61);
    v62 = sub_22BE17D60();
    sub_22BF98060(v62, v63, v64, v65);
    type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
    return sub_22BE1AC30();
  }

  return result;
}

uint64_t sub_22BF97580(uint64_t result)
{
  if (*(result + 24))
  {
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BF975BC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 80) != 2)
  {
    return sub_22C2707C4();
  }

  return result;
}

uint64_t sub_22BF975F8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 81) != 2)
  {
    return sub_22C2707C4();
  }

  return result;
}

uint64_t sub_22BF97634(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 82) != 2)
  {
    return sub_22C2707C4();
  }

  return result;
}

uint64_t sub_22BF97670(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 83) != 2)
  {
    return sub_22C2707C4();
  }

  return result;
}

uint64_t sub_22BF976AC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 84) != 2)
  {
    return sub_22C2707C4();
  }

  return result;
}

uint64_t sub_22BF976E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90C020, &qword_22C290DF8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90C020, &qword_22C290DF8);
  }

  sub_22BFB18A0();
  sub_22BE2C940(&qword_27D90C3B0, type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser, &protocol conformance descriptor for ContextProtoStructuredContextSiriRequestContextUser);
  sub_22C270884();
  return sub_22BFB18F4(v9, type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser);
}

uint64_t sub_22BF978BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  v6 = a1 + *(result + 64);
  v7 = *(v6 + 8);
  if (v7 >> 60 != 15)
  {
    v8 = *v6;
    sub_22BE29D7C(*v6, *(v6 + 8));
    sub_22C2707E4();
    return sub_22BF158B4(v8, v7);
  }

  return result;
}

uint64_t sub_22BF9795C(uint64_t a1)
{
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  if (*(a1 + *(result + 68) + 8))
  {
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BF979D4(uint64_t a1)
{
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  if (*(a1 + *(result + 72) + 8))
  {
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BF97A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90C010, &dword_22C294AF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90C010, &dword_22C294AF0);
  }

  sub_22BFB18A0();
  sub_22BE2C940(&qword_27D90C398, type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction, &protocol conformance descriptor for ContextProtoStructuredContextSiriRequestContextContentRestriction);
  sub_22C270884();
  return sub_22BFB18F4(v9, type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction);
}

uint64_t sub_22BF97C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  if ((*(a1 + *(result + 80) + 8) & 1) == 0)
  {
    return sub_22C270834();
  }

  return result;
}

uint64_t sub_22BF97C98(uint64_t a1)
{
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  if (*(a1 + *(result + 84) + 8))
  {
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BF97D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  if (*(a1 + *(result + 88)) != 2)
  {
    return sub_22C2707C4();
  }

  return result;
}

uint64_t sub_22BF97D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  if (*(a1 + *(result + 92)) != 2)
  {
    return sub_22C2707C4();
  }

  return result;
}

uint64_t sub_22BF97E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90C000, &qword_22C2CB7C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90C000, &qword_22C2CB7C0);
  }

  sub_22BFB18A0();
  sub_22BE2C940(&qword_27D90C3C8, type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard, &protocol conformance descriptor for ContextProtoStructuredContextSiriRequestContextMeCard);
  sub_22C270884();
  return sub_22BFB18F4(v9, type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard);
}

uint64_t sub_22BF97FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  if (*(a1 + *(result + 100)) != 12)
  {
    sub_22BFB1750();
    return sub_22C2707D4();
  }

  return result;
}

uint64_t sub_22BF98060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  if (*(a1 + *(result + 104)) != 2)
  {
    return sub_22C2707C4();
  }

  return result;
}

void static ContextProtoStructuredContextSiriRequestContext.== infix(_:_:)()
{
  sub_22BE19460();
  v4 = sub_22BE1B2D4();
  v155 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard(v4);
  sub_22BE18000();
  MEMORY[0x28223BE20](v5);
  sub_22BE17A44();
  v157 = v6;
  v7 = sub_22BE5CE4C(&qword_27D90C000, &qword_22C2CB7C0);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE1A174();
  v154 = v9;
  v153 = sub_22BE5CE4C(&qword_27D90C008, &qword_22C290DE8);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE1A174();
  v156 = v11;
  v12 = sub_22BE183BC();
  type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction(v12);
  sub_22BE18000();
  MEMORY[0x28223BE20](v13);
  sub_22BE17A44();
  v158 = v14;
  v15 = sub_22BE5CE4C(&qword_27D90C010, &dword_22C294AF0);
  sub_22BE19448(v15);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE28738();
  v17 = sub_22BE5CE4C(&qword_27D90C018, &qword_22C290DF0);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  sub_22BE1A174();
  v159 = v19;
  v20 = sub_22BE183BC();
  v21 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser(v20);
  sub_22BE18000();
  MEMORY[0x28223BE20](v22);
  sub_22BE179EC();
  v23 = sub_22BE5CE4C(&qword_27D90C020, &qword_22C290DF8);
  sub_22BE19448(v23);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v24);
  v26 = &v150 - v25;
  v27 = sub_22BE5CE4C(&qword_27D90C028, &qword_22C290E00);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v28);
  sub_22BE1B01C();
  sub_22BFB1A88();
  if (v30)
  {
    if (!v29)
    {
      goto LABEL_80;
    }

    sub_22BFB1A50();
    v33 = v33 && v31 == v32;
    if (!v33 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  else if (v29)
  {
    goto LABEL_80;
  }

  sub_22BE46B5C();
  if (v35)
  {
    if (!v34)
    {
      goto LABEL_80;
    }

    sub_22BFB1A40();
    v38 = v33 && v36 == v37;
    if (!v38 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  else if (v34)
  {
    goto LABEL_80;
  }

  sub_22BE292F4();
  if (v40)
  {
    if (!v39)
    {
      goto LABEL_80;
    }

    sub_22BE2BBDC();
    v43 = v33 && v41 == v42;
    if (!v43 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  else if (v39)
  {
    goto LABEL_80;
  }

  sub_22BE2BA8C();
  if (v45)
  {
    if (!v44)
    {
      goto LABEL_80;
    }

    sub_22BFB1A60();
    v48 = v33 && v46 == v47;
    if (!v48 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  else if (v44)
  {
    goto LABEL_80;
  }

  v49 = *(v1 + 80);
  v50 = *(v0 + 80);
  if (v49 == 2)
  {
    if (v50 != 2)
    {
      goto LABEL_80;
    }
  }

  else if (v50 == 2 || ((v49 ^ v50) & 1) != 0)
  {
    goto LABEL_80;
  }

  v51 = *(v1 + 81);
  v52 = *(v0 + 81);
  if (v51 == 2)
  {
    if (v52 != 2)
    {
      goto LABEL_80;
    }
  }

  else if (v52 == 2 || ((v51 ^ v52) & 1) != 0)
  {
    goto LABEL_80;
  }

  v53 = *(v1 + 82);
  v54 = *(v0 + 82);
  if (v53 == 2)
  {
    if (v54 != 2)
    {
      goto LABEL_80;
    }
  }

  else if (v54 == 2 || ((v53 ^ v54) & 1) != 0)
  {
    goto LABEL_80;
  }

  v55 = *(v1 + 83);
  v56 = *(v0 + 83);
  if (v55 == 2)
  {
    if (v56 != 2)
    {
      goto LABEL_80;
    }
  }

  else if (v56 == 2 || ((v55 ^ v56) & 1) != 0)
  {
    goto LABEL_80;
  }

  v57 = *(v1 + 84);
  v58 = *(v0 + 84);
  if (v57 == 2)
  {
    if (v58 != 2)
    {
      goto LABEL_80;
    }
  }

  else if (v58 == 2 || ((v57 ^ v58) & 1) != 0)
  {
    goto LABEL_80;
  }

  v59 = sub_22BE1BC88();
  if ((sub_22BE9693C(v59, v60) & 1) == 0 || (sub_22BE9693C(*(v1 + 8), *(v0 + 8)) & 1) == 0)
  {
    goto LABEL_80;
  }

  v61 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  v62 = *(v61 + 60);
  v151 = v61;
  v152 = v62;
  v63 = *(v27 + 48);
  sub_22BE22868();
  v152 = v63;
  sub_22BE22868();
  sub_22BE1AB5C(v3, 1, v21);
  if (v33)
  {
    sub_22BE1AB5C(v3 + v152, 1, v21);
    if (v33)
    {
      sub_22BE33928(v3, &qword_27D90C020, &qword_22C290DF8);
      goto LABEL_75;
    }

LABEL_72:
    v65 = &qword_27D90C028;
    v66 = &qword_22C290E00;
    v67 = v3;
LABEL_73:
    sub_22BE33928(v67, v65, v66);
    goto LABEL_80;
  }

  sub_22BE22868();
  sub_22BE1AB5C(v3 + v152, 1, v21);
  if (v64)
  {
    sub_22BFB18F4(v26, type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser);
    goto LABEL_72;
  }

  sub_22BFB18A0();
  v68 = static ContextProtoStructuredContextSiriRequestContextUser.== infix(_:_:)();
  v69 = sub_22BE3AF28();
  sub_22BFB18F4(v69, v70);
  v71 = sub_22BE196A8();
  sub_22BFB18F4(v71, v72);
  sub_22BE33928(v3, &qword_27D90C020, &qword_22C290DF8);
  if ((v68 & 1) == 0)
  {
    goto LABEL_80;
  }

LABEL_75:
  v73 = *(v151 + 64);
  v74 = *(v0 + v73 + 8);
  if (*(v1 + v73 + 8) >> 60 == 15)
  {
    if (v74 >> 60 == 15)
    {
      v75 = sub_22BE1AB1C();
      sub_22BF1C1E4(v75, v76);
      v77 = sub_22BE196A8();
      sub_22BF1C1E4(v77, v78);
      v79 = sub_22BE1AB1C();
      sub_22BF158B4(v79, v80);
      goto LABEL_83;
    }

LABEL_79:
    v81 = sub_22BE1AB1C();
    sub_22BF1C1E4(v81, v82);
    v83 = sub_22BE196A8();
    sub_22BF1C1E4(v83, v84);
    v85 = sub_22BE1AB1C();
    sub_22BF158B4(v85, v86);
    v87 = sub_22BE196A8();
    sub_22BF158B4(v87, v88);
    goto LABEL_80;
  }

  if (v74 >> 60 == 15)
  {
    goto LABEL_79;
  }

  v90 = sub_22BE1AB1C();
  sub_22BF1C1E4(v90, v91);
  v92 = sub_22BE196A8();
  sub_22BF1C1E4(v92, v93);
  v94 = sub_22BE1AB1C();
  v95 = MEMORY[0x2318A6720](v94);
  v96 = sub_22BE196A8();
  sub_22BF158B4(v96, v97);
  v98 = sub_22BE1AB1C();
  sub_22BF158B4(v98, v99);
  if ((v95 & 1) == 0)
  {
    goto LABEL_80;
  }

LABEL_83:
  sub_22BE2F1A0();
  if (v102)
  {
    if (!v100)
    {
      goto LABEL_80;
    }

    sub_22BE3A508(v101);
    v105 = v33 && v103 == v104;
    if (!v105 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  else if (v100)
  {
    goto LABEL_80;
  }

  sub_22BE2F1A0();
  if (v108)
  {
    if (!v106)
    {
      goto LABEL_80;
    }

    sub_22BE3A508(v107);
    v111 = v33 && v109 == v110;
    if (!v111 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  else if (v106)
  {
    goto LABEL_80;
  }

  v112 = *(v17 + 48);
  v113 = v159;
  sub_22BE22868();
  sub_22BE22868();
  sub_22BE23B00(v113);
  if (v33)
  {
    sub_22BE23B00(v159 + v112);
    if (v33)
    {
      sub_22BE33928(v159, &qword_27D90C010, &dword_22C294AF0);
      goto LABEL_111;
    }

    goto LABEL_109;
  }

  v114 = v159;
  sub_22BE22868();
  sub_22BE23B00(v114 + v112);
  if (v115)
  {
    sub_22BFB18F4(v2, type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction);
LABEL_109:
    v65 = &qword_27D90C018;
    v66 = &qword_22C290DF0;
    v67 = v159;
    goto LABEL_73;
  }

  v116 = v159;
  v117 = v158;
  sub_22BFB18A0();
  v118 = static ContextProtoStructuredContextSiriRequestContextContentRestriction.== infix(_:_:)();
  sub_22BFB18F4(v117, type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction);
  sub_22BFB18F4(v2, type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction);
  sub_22BE33928(v116, &qword_27D90C010, &dword_22C294AF0);
  if ((v118 & 1) == 0)
  {
    goto LABEL_80;
  }

LABEL_111:
  sub_22BE3FE0C();
  if (v120)
  {
    if (!v119)
    {
      goto LABEL_80;
    }
  }

  else
  {
    sub_22BE20208();
    if (v121)
    {
      goto LABEL_80;
    }
  }

  sub_22BE2F1A0();
  if (v124)
  {
    if (!v122)
    {
      goto LABEL_80;
    }

    sub_22BE3A508(v123);
    v127 = v33 && v125 == v126;
    if (!v127 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  else if (v122)
  {
    goto LABEL_80;
  }

  sub_22BE41FCC();
  if (v33)
  {
    if (v128 != 2)
    {
      goto LABEL_80;
    }
  }

  else if (v128 == 2 || ((v129 ^ v128) & 1) != 0)
  {
    goto LABEL_80;
  }

  sub_22BE41FCC();
  if (v33)
  {
    if (v130 != 2)
    {
      goto LABEL_80;
    }
  }

  else if (v130 == 2 || ((v131 ^ v130) & 1) != 0)
  {
    goto LABEL_80;
  }

  v132 = *(v153 + 48);
  sub_22BE22868();
  sub_22BE22868();
  v133 = sub_22BFB1A7C();
  sub_22BE1AB5C(v133, v134, v155);
  if (!v33)
  {
    v135 = v156;
    sub_22BE22868();
    sub_22BE1AB5C(v135 + v132, 1, v155);
    if (!v136)
    {
      v137 = v156;
      sub_22BFB18A0();
      v138 = v154;
      v139 = static ContextProtoStructuredContextSiriRequestContextMeCard.== infix(_:_:)();
      v140 = sub_22BE232C8();
      sub_22BFB18F4(v140, v141);
      sub_22BFB18F4(v138, type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard);
      sub_22BE33928(v137, &qword_27D90C000, &qword_22C2CB7C0);
      if ((v139 & 1) == 0)
      {
        goto LABEL_80;
      }

      goto LABEL_146;
    }

    sub_22BFB18F4(v154, type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard);
    goto LABEL_144;
  }

  sub_22BE1AB5C(v156 + v132, 1, v155);
  if (!v33)
  {
LABEL_144:
    v65 = &qword_27D90C008;
    v66 = &qword_22C290DE8;
    v67 = v156;
    goto LABEL_73;
  }

  sub_22BE33928(v156, &qword_27D90C000, &qword_22C2CB7C0);
LABEL_146:
  v142 = *(v151 + 100);
  v143 = *(v1 + v142);
  v144 = *(v0 + v142);
  if (v143 == 12)
  {
    if (v144 != 12)
    {
      goto LABEL_80;
    }
  }

  else if (v143 != v144)
  {
    goto LABEL_80;
  }

  sub_22BE41FCC();
  if (!v33)
  {
    if (v145 == 2 || ((v146 ^ v145) & 1) != 0)
    {
      goto LABEL_80;
    }

LABEL_156:
    sub_22C2704B4();
    sub_22BE18E14();
    v149 = sub_22BE2C940(v147, v148, MEMORY[0x277D216D0]);
    v89 = sub_22BE2B85C(v149);
    goto LABEL_81;
  }

  if (v145 == 2)
  {
    goto LABEL_156;
  }

LABEL_80:
  v89 = 0;
LABEL_81:
  sub_22BE1C1DC(v89);
  sub_22BE1AABC();
}

uint64_t sub_22BF98C3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C728, type metadata accessor for ContextProtoStructuredContextSiriRequestContext, &protocol conformance descriptor for ContextProtoStructuredContextSiriRequestContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BF98CBC(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C380, type metadata accessor for ContextProtoStructuredContextSiriRequestContext, &protocol conformance descriptor for ContextProtoStructuredContextSiriRequestContext);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BF98D2C(uint64_t a1, uint64_t a2)
{
  sub_22BE2C940(&qword_27D90C380, type metadata accessor for ContextProtoStructuredContextSiriRequestContext, &protocol conformance descriptor for ContextProtoStructuredContextSiriRequestContext);

  return sub_22C270774();
}

uint64_t sub_22BF98DC4()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BC38);
  sub_22BE199F4(v0, qword_27D90BC38);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "appRestriction";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "countryCode";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "movieRestriction";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "tvRestriction";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t ContextProtoStructuredContextSiriRequestContextContentRestriction.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    result = sub_22BE3A218();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
      case 4:
        sub_22BE2037C();
        sub_22C270624();
        break;
      case 2:
        sub_22BE2037C();
        sub_22C270694();
        break;
      default:
        continue;
    }
  }
}

unsigned int *ContextProtoStructuredContextSiriRequestContextContentRestriction.traverse<A>(visitor:)()
{
  sub_22BE33A5C();
  v1 = sub_22BE192B4();
  result = sub_22BF99148(v1);
  if (!v0)
  {
    v3 = sub_22BE17D78();
    sub_22BE3D82C(v3);
    v4 = sub_22BE17D78();
    sub_22BF99180(v4);
    v5 = sub_22BE17D78();
    sub_22BF991B8(v5);
    type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction(0);
    return sub_22BE19514();
  }

  return result;
}

unsigned int *sub_22BF99148(unsigned int *result)
{
  if ((result[1] & 1) == 0)
  {
    return sub_22C270804();
  }

  return result;
}

uint64_t sub_22BF99180(uint64_t result)
{
  if ((*(result + 28) & 1) == 0)
  {
    return sub_22C270804();
  }

  return result;
}

uint64_t sub_22BF991B8(uint64_t result)
{
  if ((*(result + 36) & 1) == 0)
  {
    return sub_22C270804();
  }

  return result;
}

uint64_t static ContextProtoStructuredContextSiriRequestContextContentRestriction.== infix(_:_:)()
{
  sub_22BE18378();
  v4 = *(v2 + 4);
  if (*(v3 + 4))
  {
    if (!*(v2 + 4))
    {
      return 0;
    }
  }

  else
  {
    if (*v1 != *v0)
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = *(v1 + 16);
  v6 = *(v0 + 16);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = *(v1 + 8) == *(v0 + 8) && v5 == v6;
    if (!v7 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = *(v0 + 28);
  if (*(v1 + 28))
  {
    if (!*(v0 + 28))
    {
      return 0;
    }
  }

  else
  {
    if (*(v1 + 24) != *(v0 + 24))
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  v9 = *(v0 + 36);
  if (*(v1 + 36))
  {
    if (!*(v0 + 36))
    {
      return 0;
    }
  }

  else
  {
    if (*(v1 + 32) != *(v0 + 32))
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction(0);
  sub_22C2704B4();
  sub_22BE18E14();
  v13 = sub_22BE2C940(v11, v12, MEMORY[0x277D216D0]);
  return sub_22BE2B85C(v13) & 1;
}

uint64_t sub_22BF993B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C720, type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction, &protocol conformance descriptor for ContextProtoStructuredContextSiriRequestContextContentRestriction);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BF99434(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C398, type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction, &protocol conformance descriptor for ContextProtoStructuredContextSiriRequestContextContentRestriction);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BF994A4(uint64_t a1, uint64_t a2)
{
  sub_22BE2C940(&qword_27D90C398, type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction, &protocol conformance descriptor for ContextProtoStructuredContextSiriRequestContextContentRestriction);

  return sub_22C270774();
}

uint64_t sub_22BF9953C()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BC50);
  sub_22BE199F4(v0, qword_27D90BC50);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "userID";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isOnlyUserInHome";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "classification";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t ContextProtoStructuredContextSiriRequestContextUser.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    result = sub_22BE3A218();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v3 = sub_22BE18E2C();
        sub_22BF997E4(v3, v4, v5, v6);
        break;
      case 2:
        sub_22BE2037C();
        sub_22C2705B4();
        break;
      case 1:
        sub_22BE239F4();
        sub_22C270694();
        break;
    }
  }

  return result;
}

uint64_t sub_22BF998B4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 16) != 2)
  {
    return sub_22C2707C4();
  }

  return result;
}

uint64_t sub_22BF998F0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 17) != 5)
  {
    sub_22BFB16FC();
    return sub_22C2707D4();
  }

  return result;
}

uint64_t static ContextProtoStructuredContextSiriRequestContextUser.== infix(_:_:)()
{
  sub_22BE18378();
  v3 = *(v0 + 8);
  if (*(v2 + 8))
  {
    if (!v3)
    {
      return 0;
    }

    sub_22BE27BD8();
    v6 = v6 && v4 == v5;
    if (!v6 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  v7 = *(v1 + 16);
  v8 = *(v0 + 16);
  if (v7 == 2)
  {
    if (v8 != 2)
    {
      return 0;
    }
  }

  else if (v8 == 2 || ((v7 ^ v8) & 1) != 0)
  {
    return 0;
  }

  v9 = *(v1 + 17);
  v10 = *(v0 + 17);
  if (v9 == 5)
  {
    if (v10 != 5)
    {
      return 0;
    }
  }

  else if (v9 != v10)
  {
    return 0;
  }

  type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser(0);
  sub_22C2704B4();
  sub_22BE18E14();
  v14 = sub_22BE2C940(v12, v13, MEMORY[0x277D216D0]);
  return sub_22BE2B85C(v14) & 1;
}

uint64_t sub_22BF99B24(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C718, type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser, &protocol conformance descriptor for ContextProtoStructuredContextSiriRequestContextUser);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BF99BA4(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C3B0, type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser, &protocol conformance descriptor for ContextProtoStructuredContextSiriRequestContextUser);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BF99C14(uint64_t a1, uint64_t a2)
{
  sub_22BE2C940(&qword_27D90C3B0, type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser, &protocol conformance descriptor for ContextProtoStructuredContextSiriRequestContextUser);

  return sub_22C270774();
}

uint64_t sub_22BF99CAC()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BC68);
  sub_22BE199F4(v0, qword_27D90BC68);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D20;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "givenName";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "middleName";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "familyName";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "nickName";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "fullName";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "addresses";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v9();
  return sub_22C2708A4();
}

void ContextProtoStructuredContextSiriRequestContextMeCard.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    v1 = sub_22BE3A218();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
        sub_22BE2037C();
        sub_22C270694();
        break;
      case 6:
        sub_22BE18E2C();
        sub_22BF9A07C();
        break;
      default:
        continue;
    }
  }
}

void sub_22BF9A07C()
{
  sub_22BE19130();
  v1 = sub_22BE37708();
  v2(v1);
  v3 = sub_22BE3C5E4();
  sub_22BE2C940(v3, v4, v0);
  sub_22BE48DD8();
  sub_22C2706E4();
  sub_22BE18478();
}

void ContextProtoStructuredContextSiriRequestContextMeCard.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE3B090();
  sub_22BE3C860();
  sub_22BE4E190(v1);
  if (!v0)
  {
    v2 = sub_22BE17D60();
    sub_22BE4E1C8(v2);
    v3 = sub_22BE17D60();
    sub_22BE4E498(v3);
    v4 = sub_22BE17D60();
    sub_22BF9A1CC(v4);
    v5 = sub_22BE17D60();
    sub_22BF9A208(v5);
    sub_22BE41DF4();
    if (v6)
    {
      type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress(0);
      sub_22BE2C940(&qword_27D90C048, type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress, &protocol conformance descriptor for ContextProtoStructuredContextSiriRequestContextAddress);
      sub_22BE238E8();
      sub_22BE23CE4();
      sub_22C270874();
    }

    type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard(0);
    sub_22BE1AC30();
  }

  sub_22BE25C6C();
}

uint64_t sub_22BF9A1CC(uint64_t result)
{
  if (*(result + 64))
  {
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BF9A208(uint64_t result)
{
  if (*(result + 80))
  {
    return sub_22C270844();
  }

  return result;
}

uint64_t static ContextProtoStructuredContextSiriRequestContextMeCard.== infix(_:_:)()
{
  sub_22BE18378();
  v3 = *(v2 + 16);
  v4 = v0[2];
  if (v3)
  {
    if (!v4)
    {
      return 0;
    }

    v5 = v1[1] == v0[1] && v3 == v4;
    if (!v5 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  v6 = v1[4];
  v7 = v0[4];
  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    v8 = v1[3] == v0[3] && v6 == v7;
    if (!v8 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v9 = v1[6];
  v10 = v0[6];
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    v11 = v1[5] == v0[5] && v9 == v10;
    if (!v11 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v12 = v1[8];
  v13 = v0[8];
  if (v12)
  {
    if (!v13)
    {
      return 0;
    }

    v14 = v1[7] == v0[7] && v12 == v13;
    if (!v14 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  v15 = v1[10];
  v16 = v0[10];
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    v17 = v1[9] == v0[9] && v15 == v16;
    if (!v17 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  sub_22BE1BC88();
  sub_22BEA1918();
  if (v18)
  {
    type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard(0);
    sub_22C2704B4();
    sub_22BE18E14();
    v21 = sub_22BE2C940(v19, v20, MEMORY[0x277D216D0]);
    return sub_22BE2B85C(v21) & 1;
  }

  return 0;
}

uint64_t sub_22BF9A4A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C710, type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard, &protocol conformance descriptor for ContextProtoStructuredContextSiriRequestContextMeCard);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BF9A524(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C3C8, type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard, &protocol conformance descriptor for ContextProtoStructuredContextSiriRequestContextMeCard);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BF9A594(uint64_t a1, uint64_t a2)
{
  sub_22BE2C940(&qword_27D90C3C8, type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard, &protocol conformance descriptor for ContextProtoStructuredContextSiriRequestContextMeCard);

  return sub_22C270774();
}

uint64_t sub_22BF9A62C()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BC80);
  sub_22BE199F4(v0, qword_27D90BC80);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D20;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "label";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "street";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "city";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "state";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "postalCode";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "countryCode";
  *(v18 + 1) = 11;
  v18[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t ContextProtoStructuredContextSiriRequestContextAddress.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    result = sub_22BE3A218();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
        sub_22BE2037C();
        sub_22C270694();
        break;
      default:
        continue;
    }
  }
}

uint64_t ContextProtoStructuredContextSiriRequestContextAddress.traverse<A>(visitor:)()
{
  sub_22BE33A5C();
  v1 = sub_22BE192B4();
  result = sub_22BE4E220(v1);
  if (!v0)
  {
    v3 = sub_22BE17D78();
    sub_22BE4E2BC(v3);
    v4 = sub_22BE17D78();
    sub_22BE4E2F4(v4);
    v5 = sub_22BE17D78();
    sub_22BF9AA4C(v5);
    v6 = sub_22BE17D78();
    sub_22BF9AA88(v6);
    v7 = sub_22BE17D78();
    sub_22BF9AAC4(v7);
    type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress(0);
    return sub_22BE19514();
  }

  return result;
}

uint64_t sub_22BF9AA4C(uint64_t result)
{
  if (*(result + 56))
  {
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BF9AA88(uint64_t result)
{
  if (*(result + 72))
  {
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BF9AAC4(uint64_t result)
{
  if (*(result + 88))
  {
    return sub_22C270844();
  }

  return result;
}

uint64_t static ContextProtoStructuredContextSiriRequestContextAddress.== infix(_:_:)()
{
  sub_22BE18378();
  v3 = v0[1];
  if (*(v2 + 8))
  {
    if (!v3)
    {
      return 0;
    }

    sub_22BE27BD8();
    v6 = v6 && v4 == v5;
    if (!v6 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  sub_22BFB1A88();
  if (v8)
  {
    if (!v7)
    {
      return 0;
    }

    sub_22BFB1A50();
    v11 = v6 && v9 == v10;
    if (!v11 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  sub_22BE46B5C();
  if (v13)
  {
    if (!v12)
    {
      return 0;
    }

    sub_22BFB1A40();
    v16 = v6 && v14 == v15;
    if (!v16 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  sub_22BE292F4();
  if (v18)
  {
    if (!v17)
    {
      return 0;
    }

    sub_22BE2BBDC();
    v21 = v6 && v19 == v20;
    if (!v21 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  sub_22BE2BA8C();
  if (v23)
  {
    if (!v22)
    {
      return 0;
    }

    sub_22BFB1A60();
    v26 = v6 && v24 == v25;
    if (!v26 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v22)
  {
    return 0;
  }

  v27 = *(v1 + 88);
  v28 = v0[11];
  if (v27)
  {
    if (v28)
    {
      v29 = *(v1 + 80) == v0[10] && v27 == v28;
      if (v29 || (sub_22C274014() & 1) != 0)
      {
        goto LABEL_53;
      }
    }
  }

  else if (!v28)
  {
LABEL_53:
    type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress(0);
    sub_22C2704B4();
    sub_22BE18E14();
    v32 = sub_22BE2C940(v30, v31, MEMORY[0x277D216D0]);
    return sub_22BE2B85C(v32) & 1;
  }

  return 0;
}

uint64_t sub_22BF9AD2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C708, type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress, &protocol conformance descriptor for ContextProtoStructuredContextSiriRequestContextAddress);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BF9ADAC(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C048, type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress, &protocol conformance descriptor for ContextProtoStructuredContextSiriRequestContextAddress);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BF9AE1C(uint64_t a1, uint64_t a2)
{
  sub_22BE2C940(&qword_27D90C048, type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress, &protocol conformance descriptor for ContextProtoStructuredContextSiriRequestContextAddress);

  return sub_22C270774();
}

uint64_t sub_22BF9AEB4()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BC98);
  sub_22BE199F4(v0, qword_27D90BC98);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D20;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "title";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "standaloneTitle";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "embeddingDescription";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "isDisabled";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "menuHierarchyComponents";
  *(v18 + 1) = 23;
  v18[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t ContextProtoStructuredContextIntelligenceCommandContext.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    result = sub_22BE3A218();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_22BE239F4();
        sub_22C2706A4();
        break;
      case 2:
      case 3:
      case 4:
        sub_22BE2037C();
        sub_22C270694();
        break;
      case 5:
        sub_22BE2037C();
        sub_22C2705C4();
        break;
      case 6:
        sub_22BE2037C();
        sub_22C270664();
        break;
      default:
        continue;
    }
  }
}

uint64_t ContextProtoStructuredContextIntelligenceCommandContext.traverse<A>(visitor:)()
{
  sub_22BE1A730();
  if (!v2 || (sub_22BE25B10(), result = sub_22C270844(), !v0))
  {
    v4 = sub_22BE17D60();
    result = sub_22BE4E388(v4);
    if (!v0)
    {
      v5 = sub_22BE17D60();
      sub_22BE4E3C0(v5);
      v6 = sub_22BE17D60();
      sub_22BE4E3F8(v6);
      if (*(v1 + 16) == 1)
      {
        sub_22BE1BAB8();
        sub_22C2707C4();
      }

      if (*(*(v1 + 24) + 16))
      {
        sub_22BE1BAB8();
        sub_22C270824();
      }

      type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext(0);
      return sub_22BE1AC30();
    }
  }

  return result;
}

uint64_t static ContextProtoStructuredContextIntelligenceCommandContext.== infix(_:_:)(uint64_t a1)
{
  sub_22BE19FC4(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  sub_22BE46B5C();
  if (v7)
  {
    if (!v6)
    {
      return 0;
    }

    sub_22BFB1A40();
    v10 = v5 && v8 == v9;
    if (!v10 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  sub_22BE292F4();
  if (v12)
  {
    if (!v11)
    {
      return 0;
    }

    sub_22BE2BBDC();
    v15 = v5 && v13 == v14;
    if (!v15 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  sub_22BE2BA8C();
  if (v17)
  {
    if (!v16)
    {
      return 0;
    }

    sub_22BFB1A60();
    v20 = v5 && v18 == v19;
    if (!v20 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  sub_22BE36248();
  if (v5 && (sub_22BE9693C(*(v2 + 24), *(v1 + 24)) & 1) != 0)
  {
    type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext(0);
    sub_22C2704B4();
    sub_22BE18E14();
    v23 = sub_22BE2C940(v21, v22, MEMORY[0x277D216D0]);
    return sub_22BE2B85C(v23) & 1;
  }

  return 0;
}

uint64_t sub_22BF9B4F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C700, type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext, &protocol conformance descriptor for ContextProtoStructuredContextIntelligenceCommandContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BF9B570(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C3F0, type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext, &protocol conformance descriptor for ContextProtoStructuredContextIntelligenceCommandContext);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BF9B5E0(uint64_t a1, uint64_t a2)
{
  sub_22BE2C940(&qword_27D90C3F0, type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext, &protocol conformance descriptor for ContextProtoStructuredContextIntelligenceCommandContext);

  return sub_22C270774();
}

uint64_t sub_22BF9B678()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BCB0);
  sub_22BE199F4(v0, qword_27D90BCB0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "bundleID";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "appName";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "category";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t ContextProtoStructedContextAppInFocusContext.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    result = sub_22BE3A218();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      sub_22BE2037C();
      sub_22C270694();
    }

    else if (result == 1)
    {
      sub_22BE239F4();
      sub_22C2706A4();
    }
  }

  return result;
}

uint64_t static ContextProtoStructedContextAppInFocusContext.== infix(_:_:)(uint64_t a1)
{
  sub_22BE19FC4(a1);
  v3 = v3 && v1 == v2;
  if (!v3 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  sub_22BFB1A88();
  if (v5)
  {
    if (!v4)
    {
      return 0;
    }

    sub_22BFB1A50();
    v8 = v3 && v6 == v7;
    if (!v8 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  sub_22BE46B5C();
  if (v10)
  {
    if (v9)
    {
      sub_22BFB1A40();
      v13 = v3 && v11 == v12;
      if (v13 || (sub_22C274014() & 1) != 0)
      {
        goto LABEL_22;
      }
    }
  }

  else if (!v9)
  {
LABEL_22:
    type metadata accessor for ContextProtoStructedContextAppInFocusContext(0);
    sub_22C2704B4();
    sub_22BE18E14();
    v16 = sub_22BE2C940(v14, v15, MEMORY[0x277D216D0]);
    return sub_22BE2B85C(v16) & 1;
  }

  return 0;
}

uint64_t sub_22BF9BAEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C6F8, type metadata accessor for ContextProtoStructedContextAppInFocusContext, &protocol conformance descriptor for ContextProtoStructedContextAppInFocusContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BF9BB6C(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C408, type metadata accessor for ContextProtoStructedContextAppInFocusContext, &protocol conformance descriptor for ContextProtoStructedContextAppInFocusContext);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BF9BBDC(uint64_t a1, uint64_t a2)
{
  sub_22BE2C940(&qword_27D90C408, type metadata accessor for ContextProtoStructedContextAppInFocusContext, &protocol conformance descriptor for ContextProtoStructedContextAppInFocusContext);

  return sub_22C270774();
}

uint64_t sub_22BF9BC74()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BCC8);
  sub_22BE199F4(v0, qword_27D90BCC8);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "bundleID";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "appName";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "category";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "isActive";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t ContextProtoStructedContextAppContext.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    result = sub_22BE3A218();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_22BE239F4();
        sub_22C2706A4();
        break;
      case 2:
      case 3:
        sub_22BE2037C();
        sub_22C270694();
        break;
      case 4:
        sub_22BE2037C();
        sub_22C2705C4();
        break;
      default:
        continue;
    }
  }
}

uint64_t ContextProtoStructedContextAppContext.traverse<A>(visitor:)()
{
  sub_22BE1A730();
  if (!v2 || (sub_22BE25B10(), result = sub_22C270844(), !v0))
  {
    v4 = sub_22BE17D60();
    result = sub_22BE4E1C8(v4);
    if (!v0)
    {
      v5 = sub_22BE17D60();
      sub_22BE4E498(v5);
      if (*(v1 + 16) == 1)
      {
        sub_22BE1BAB8();
        sub_22C2707C4();
      }

      type metadata accessor for ContextProtoStructedContextAppContext(0);
      return sub_22BE1AC30();
    }
  }

  return result;
}

uint64_t static ContextProtoStructedContextAppContext.== infix(_:_:)(uint64_t a1)
{
  sub_22BE19FC4(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  v6 = v2[4];
  v7 = v1[4];
  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    v8 = v2[3] == v1[3] && v6 == v7;
    if (!v8 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v9 = v2[6];
  v10 = v1[6];
  if (!v9)
  {
    if (!v10)
    {
      goto LABEL_24;
    }

    return 0;
  }

  if (!v10)
  {
    return 0;
  }

  v11 = v2[5] == v1[5] && v9 == v10;
  if (!v11 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

LABEL_24:
  sub_22BE36248();
  if (!v5)
  {
    return 0;
  }

  type metadata accessor for ContextProtoStructedContextAppContext(0);
  sub_22C2704B4();
  sub_22BE18E14();
  v15 = sub_22BE2C940(v13, v14, MEMORY[0x277D216D0]);
  return sub_22BE2B85C(v15) & 1;
}

uint64_t sub_22BF9C1C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C6F0, type metadata accessor for ContextProtoStructedContextAppContext, &protocol conformance descriptor for ContextProtoStructedContextAppContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BF9C240(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C420, type metadata accessor for ContextProtoStructedContextAppContext, &protocol conformance descriptor for ContextProtoStructedContextAppContext);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BF9C2B0(uint64_t a1, uint64_t a2)
{
  sub_22BE2C940(&qword_27D90C420, type metadata accessor for ContextProtoStructedContextAppContext, &protocol conformance descriptor for ContextProtoStructedContextAppContext);

  return sub_22C270774();
}

uint64_t sub_22BF9C348()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BCE0);
  sub_22BE199F4(v0, qword_27D90BCE0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "boundingBox";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "uiMetadata";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "fractionVisible";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t ContextProtoStructuredContextOnScreenUIText.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    result = sub_22BE3A218();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_22BE239F4();
        sub_22C2706A4();
        break;
      case 2:
        v11 = sub_22BE18E2C();
        sub_22BF9C64C(v11, v12, v13, v14);
        break;
      case 3:
        v3 = sub_22BE18E2C();
        sub_22BF9C700(v3, v4, v5, v6);
        break;
      case 4:
        v7 = sub_22BE18E2C();
        sub_22BF9C7B4(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22BF9C64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ContextProtoStructuredContextOnScreenUIText(0);
  type metadata accessor for ContextProtoCGRect(0);
  sub_22BE2C940(&qword_27D90C480, type metadata accessor for ContextProtoCGRect, &protocol conformance descriptor for ContextProtoCGRect);
  return sub_22C2706F4();
}

uint64_t sub_22BF9C700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ContextProtoStructuredContextOnScreenUIText(0);
  type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata(0);
  sub_22BE2C940(&qword_27D90C450, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata, &protocol conformance descriptor for ContextProtoStructuredContextOnScreenUITextUIMetadata);
  return sub_22C2706F4();
}

uint64_t ContextProtoStructuredContextOnScreenUIText.traverse<A>(visitor:)()
{
  sub_22BE1A730();
  if (!v1 || (sub_22BE25B10(), result = sub_22C270844(), !v0))
  {
    v3 = sub_22BE17D60();
    result = sub_22BF9C8AC(v3, v4, v5, v6);
    if (!v0)
    {
      v7 = sub_22BE17D60();
      sub_22BF9CA80(v7, v8, v9, v10);
      v11 = sub_22BE17D60();
      sub_22BF9CC54(v11, v12, v13, v14);
      type metadata accessor for ContextProtoStructuredContextOnScreenUIText(0);
      return sub_22BE1AC30();
    }
  }

  return result;
}

uint64_t sub_22BF9C8AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90BF90, &unk_22C294AD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ContextProtoCGRect(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContextProtoStructuredContextOnScreenUIText(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90BF90, &unk_22C294AD0);
  }

  sub_22BFB18A0();
  sub_22BE2C940(&qword_27D90C480, type metadata accessor for ContextProtoCGRect, &protocol conformance descriptor for ContextProtoCGRect);
  sub_22C270884();
  return sub_22BFB18F4(v9, type metadata accessor for ContextProtoCGRect);
}

uint64_t sub_22BF9CA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90C078, &unk_22C294B00);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContextProtoStructuredContextOnScreenUIText(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90C078, &unk_22C294B00);
  }

  sub_22BFB18A0();
  sub_22BE2C940(&qword_27D90C450, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata, &protocol conformance descriptor for ContextProtoStructuredContextOnScreenUITextUIMetadata);
  sub_22C270884();
  return sub_22BFB18F4(v9, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata);
}

uint64_t sub_22BF9CC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ContextProtoStructuredContextOnScreenUIText(0);
  if ((*(a1 + *(result + 28) + 8) & 1) == 0)
  {
    return sub_22C270834();
  }

  return result;
}

void static ContextProtoStructuredContextOnScreenUIText.== infix(_:_:)()
{
  sub_22BE19460();
  v6 = sub_22BE1B2D4();
  type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata(v6);
  sub_22BE18000();
  MEMORY[0x28223BE20](v7);
  sub_22BE179EC();
  v10 = v9 - v8;
  v11 = sub_22BE5CE4C(&qword_27D90C078, &unk_22C294B00);
  sub_22BE19448(v11);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE1A174();
  v44 = v13;
  v45 = sub_22BE5CE4C(&qword_27D90C080, &qword_22C290E08);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE19E64();
  v15 = type metadata accessor for ContextProtoCGRect(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v16);
  sub_22BE179EC();
  sub_22BE1B1C4();
  v17 = sub_22BE5CE4C(&qword_27D90BF90, &unk_22C294AD0);
  sub_22BE19448(v17);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  sub_22BE1B01C();
  v19 = sub_22BE5CE4C(&qword_27D90BF98, &qword_22C290DD0);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE2BB64();
  v21 = *v1 == *v0 && v1[1] == v0[1];
  if (!v21 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_26;
  }

  v42 = v10;
  v43 = type metadata accessor for ContextProtoStructuredContextOnScreenUIText(0);
  v22 = *(v19 + 48);
  sub_22BE22868();
  sub_22BE22868();
  sub_22BE1AB5C(v5, 1, v15);
  if (v21)
  {
    sub_22BE1AB5C(v5 + v22, 1, v15);
    if (v21)
    {
      sub_22BE33928(v5, &qword_27D90BF90, &unk_22C294AD0);
      goto LABEL_16;
    }

LABEL_14:
    v25 = &qword_27D90BF98;
    v26 = &qword_22C290DD0;
    v27 = v5;
LABEL_25:
    sub_22BE33928(v27, v25, v26);
    goto LABEL_26;
  }

  sub_22BE22868();
  sub_22BE1AB5C(v5 + v22, 1, v15);
  if (v23)
  {
    sub_22BE2574C();
    sub_22BFB18F4(v3, v24);
    goto LABEL_14;
  }

  sub_22BFB18A0();
  static ContextProtoCGRect.== infix(_:_:)();
  v29 = v28;
  sub_22BFB18F4(v4, type metadata accessor for ContextProtoCGRect);
  v30 = sub_22BE38970();
  sub_22BFB18F4(v30, v31);
  sub_22BE33928(v5, &qword_27D90BF90, &unk_22C294AD0);
  if ((v29 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_16:
  v32 = *(v45 + 48);
  sub_22BFB1AAC();
  sub_22BFB1AAC();
  sub_22BE36144(v2, 1);
  if (!v21)
  {
    sub_22BE22868();
    sub_22BE18190(v2 + v32);
    if (!v33)
    {
      sub_22BFB18A0();
      v35 = static ContextProtoStructuredContextOnScreenUITextUIMetadata.== infix(_:_:)(v44, v42);
      sub_22BFB18F4(v42, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata);
      sub_22BFB18F4(v44, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata);
      sub_22BE33928(v2, &qword_27D90C078, &unk_22C294B00);
      if ((v35 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    sub_22BFB18F4(v44, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata);
    goto LABEL_24;
  }

  sub_22BE18190(v2 + v32);
  if (!v21)
  {
LABEL_24:
    v25 = &qword_27D90C080;
    v26 = &qword_22C290E08;
    v27 = v2;
    goto LABEL_25;
  }

  sub_22BE33928(v2, &qword_27D90C078, &unk_22C294B00);
LABEL_29:
  v36 = *(v43 + 28);
  v37 = *(v1 + v36 + 8);
  v38 = *(v0 + v36 + 8);
  if (v37)
  {
    if (v38)
    {
      goto LABEL_33;
    }
  }

  else
  {
    sub_22BE20208();
    if ((v39 & 1) == 0)
    {
LABEL_33:
      sub_22C2704B4();
      sub_22BE18E14();
      sub_22BE2C940(v40, v41, MEMORY[0x277D216D0]);
      v34 = sub_22C272FD4();
      goto LABEL_27;
    }
  }

LABEL_26:
  v34 = 0;
LABEL_27:
  sub_22BE1C1DC(v34);
  sub_22BE1AABC();
}

uint64_t sub_22BF9D25C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C6E8, type metadata accessor for ContextProtoStructuredContextOnScreenUIText, &protocol conformance descriptor for ContextProtoStructuredContextOnScreenUIText);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BF9D2DC(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C438, type metadata accessor for ContextProtoStructuredContextOnScreenUIText, &protocol conformance descriptor for ContextProtoStructuredContextOnScreenUIText);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BF9D34C(uint64_t a1, uint64_t a2)
{
  sub_22BE2C940(&qword_27D90C438, type metadata accessor for ContextProtoStructuredContextOnScreenUIText, &protocol conformance descriptor for ContextProtoStructuredContextOnScreenUIText);

  return sub_22C270774();
}

uint64_t sub_22BF9D4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90C090, &qword_22C290E10);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90C090, &qword_22C290E10);
  }

  sub_22BFB18A0();
  sub_22BE2C940(&qword_27D90C468, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow, &protocol conformance descriptor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow);
  sub_22C270884();
  return sub_22BFB18F4(v9, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow);
}

uint64_t sub_22BF9D93C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C6E0, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata, &protocol conformance descriptor for ContextProtoStructuredContextOnScreenUITextUIMetadata);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BF9D9BC(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C450, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata, &protocol conformance descriptor for ContextProtoStructuredContextOnScreenUITextUIMetadata);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BF9DA2C(uint64_t a1, uint64_t a2)
{
  sub_22BE2C940(&qword_27D90C450, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata, &protocol conformance descriptor for ContextProtoStructuredContextOnScreenUITextUIMetadata);

  return sub_22C270774();
}

uint64_t sub_22BF9DAC4()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BD10);
  sub_22BE199F4(v0, qword_27D90BD10);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "isActive";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "boundingBox";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "fractionVisible";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "appBundleId";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t ContextProtoStructuredContextOnScreenUITextUIMetadataWindow.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    result = sub_22BE3A218();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_22BE239F4();
        sub_22C2705C4();
        break;
      case 2:
        v11 = sub_22BE18E2C();
        sub_22BF9DDC4(v11, v12, v13, v14);
        break;
      case 3:
        v3 = sub_22BE18E2C();
        sub_22BF9DE78(v3, v4, v5, v6);
        break;
      case 4:
        v7 = sub_22BE18E2C();
        sub_22BF9DEDC(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22BF9DDC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0);
  type metadata accessor for ContextProtoCGRect(0);
  sub_22BE2C940(&qword_27D90C480, type metadata accessor for ContextProtoCGRect, &protocol conformance descriptor for ContextProtoCGRect);
  return sub_22C2706F4();
}

uint64_t ContextProtoStructuredContextOnScreenUITextUIMetadataWindow.traverse<A>(visitor:)()
{
  sub_22BE18648();
  if (*v0 != 1 || (sub_22BE1BAB8(), result = sub_22C2707C4(), !v1))
  {
    v3 = sub_22BE17D60();
    result = sub_22BF9DFDC(v3, v4, v5, v6);
    if (!v1)
    {
      v7 = sub_22BE17D60();
      sub_22BF9E1B0(v7, v8, v9, v10);
      v11 = sub_22BE17D60();
      sub_22BF9E228(v11);
      type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0);
      return sub_22BE1AC30();
    }
  }

  return result;
}

uint64_t sub_22BF9DFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90BF90, &unk_22C294AD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ContextProtoCGRect(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90BF90, &unk_22C294AD0);
  }

  sub_22BFB18A0();
  sub_22BE2C940(&qword_27D90C480, type metadata accessor for ContextProtoCGRect, &protocol conformance descriptor for ContextProtoCGRect);
  sub_22C270884();
  return sub_22BFB18F4(v9, type metadata accessor for ContextProtoCGRect);
}

uint64_t sub_22BF9E1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0);
  if ((*(a1 + *(result + 24) + 8) & 1) == 0)
  {
    return sub_22C270834();
  }

  return result;
}

uint64_t sub_22BF9E228(uint64_t a1)
{
  result = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0);
  if (*(a1 + *(result + 28) + 8))
  {
    return sub_22C270844();
  }

  return result;
}

void static ContextProtoStructuredContextOnScreenUITextUIMetadataWindow.== infix(_:_:)()
{
  sub_22BE19460();
  v4 = sub_22BE1B2D4();
  type metadata accessor for ContextProtoCGRect(v4);
  sub_22BE18000();
  MEMORY[0x28223BE20](v5);
  sub_22BE17CBC();
  v6 = sub_22BE5CE4C(&qword_27D90BF90, &unk_22C294AD0);
  sub_22BE19448(v6);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE234F4();
  v8 = sub_22BE5CE4C(&qword_27D90BF98, &qword_22C290DD0);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE25CD0();
  if (*v1 != *v0)
  {
    goto LABEL_11;
  }

  type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0);
  v10 = *(v8 + 48);
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22BE19FE0(v2);
  if (!v11)
  {
    sub_22BE3AF28();
    sub_22BE22868();
    sub_22BE19FE0(v2 + v10);
    if (!v11)
    {
      sub_22BFB18A0();
      sub_22BE1B5E0();
      static ContextProtoCGRect.== infix(_:_:)();
      v15 = v14;
      v16 = sub_22BE194F8();
      sub_22BFB18F4(v16, v17);
      v18 = sub_22BE18240();
      sub_22BFB18F4(v18, v19);
      sub_22BE33928(v2, &qword_27D90BF90, &unk_22C294AD0);
      if ((v15 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_14;
    }

    sub_22BE2574C();
    sub_22BFB18F4(v3, v12);
LABEL_10:
    sub_22BE33928(v2, &qword_27D90BF98, &qword_22C290DD0);
    goto LABEL_11;
  }

  sub_22BE19FE0(v2 + v10);
  if (!v11)
  {
    goto LABEL_10;
  }

  sub_22BE33928(v2, &qword_27D90BF90, &unk_22C294AD0);
LABEL_14:
  sub_22BE3FE0C();
  if (v21)
  {
    if (!v20)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_22BE20208();
    if (v22)
    {
      goto LABEL_11;
    }
  }

  sub_22BE2F1A0();
  if (v25)
  {
    if (v23)
    {
      sub_22BE3A508(v24);
      v28 = v11 && v26 == v27;
      if (v28 || (sub_22C274014() & 1) != 0)
      {
        goto LABEL_27;
      }
    }
  }

  else if (!v23)
  {
LABEL_27:
    sub_22C2704B4();
    sub_22BE18E14();
    v31 = sub_22BE2C940(v29, v30, MEMORY[0x277D216D0]);
    v13 = sub_22BE2B85C(v31);
    goto LABEL_12;
  }

LABEL_11:
  v13 = 0;
LABEL_12:
  sub_22BE1C1DC(v13);
  sub_22BE1AABC();
}

uint64_t sub_22BF9E5E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C6D8, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow, &protocol conformance descriptor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BF9E664(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C468, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow, &protocol conformance descriptor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BF9E6D4(uint64_t a1, uint64_t a2)
{
  sub_22BE2C940(&qword_27D90C468, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow, &protocol conformance descriptor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow);

  return sub_22C270774();
}

uint64_t sub_22BF9E778()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BD28);
  sub_22BE199F4(v0, qword_27D90BD28);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "origin";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "size";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

void ContextProtoCGRect.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    v1 = sub_22BE3A218();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      v3 = sub_22BE18E2C();
      sub_22BF9EA64(v3, v4, v5, v6);
    }

    else if (v1 == 1)
    {
      sub_22BE18E2C();
      sub_22BF9EA14();
    }
  }
}

void sub_22BF9EA14()
{
  sub_22BE19130();
  v1 = sub_22BE37708();
  v2(v1);
  v3 = sub_22BE3C5E4();
  sub_22BE2C940(v3, v4, v0);
  sub_22BE48DD8();
  sub_22C2706F4();
  sub_22BE18478();
}

uint64_t sub_22BF9EA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ContextProtoCGRect(0);
  type metadata accessor for ContextProtoCGSize(0);
  sub_22BE2C940(&qword_27D90C4B0, type metadata accessor for ContextProtoCGSize, &protocol conformance descriptor for ContextProtoCGSize);
  return sub_22C2706F4();
}

uint64_t sub_22BF9EB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90C0C0, &unk_22C294B10);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ContextProtoCGPoint(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90C0C0, &unk_22C294B10);
  }

  sub_22BFB18A0();
  sub_22BE2C940(&qword_27D90C498, type metadata accessor for ContextProtoCGPoint, &protocol conformance descriptor for ContextProtoCGPoint);
  sub_22C270884();
  return sub_22BFB18F4(v9, type metadata accessor for ContextProtoCGPoint);
}

uint64_t sub_22BF9ED34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90C0B0, &qword_22C290E20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for ContextProtoCGSize(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContextProtoCGRect(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90C0B0, &qword_22C290E20);
  }

  sub_22BFB18A0();
  sub_22BE2C940(&qword_27D90C4B0, type metadata accessor for ContextProtoCGSize, &protocol conformance descriptor for ContextProtoCGSize);
  sub_22C270884();
  return sub_22BFB18F4(v9, type metadata accessor for ContextProtoCGSize);
}

void static ContextProtoCGRect.== infix(_:_:)()
{
  sub_22BE19460();
  v4 = v3;
  v6 = v5;
  v46 = type metadata accessor for ContextProtoCGSize(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v7);
  sub_22BE17A44();
  v43 = v8;
  v9 = sub_22BE5CE4C(&qword_27D90C0B0, &qword_22C290E20);
  sub_22BE19448(v9);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE1A174();
  v44 = v11;
  v45 = sub_22BE5CE4C(&qword_27D90C0B8, &qword_22C290E28);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE19E64();
  type metadata accessor for ContextProtoCGPoint(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v13);
  sub_22BE179EC();
  sub_22BE2BB64();
  v14 = sub_22BE324FC();
  v16 = sub_22BE5CE4C(v14, v15);
  sub_22BE19448(v16);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  v19 = (&v43 - v18);
  v20 = sub_22BE5CE4C(&qword_27D90C0C8, &qword_22C290E30);
  sub_22BE19448(v20);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v21);
  sub_22BE1B1C4();
  v23 = *(v22 + 56);
  v47 = v6;
  sub_22BE289D8();
  sub_22BFB1AAC();
  v48 = v4;
  sub_22BFB1AAC();
  sub_22BE181B0(v1);
  if (v28)
  {
    sub_22BE181B0(v1 + v23);
    if (v28)
    {
      sub_22BE33928(v1, &qword_27D90C0C0, &unk_22C294B10);
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  sub_22BE22868();
  sub_22BE181B0(v1 + v23);
  if (v28)
  {
    sub_22BFB18F4(v19, type metadata accessor for ContextProtoCGPoint);
LABEL_15:
    v29 = &qword_27D90C0C8;
    v30 = &qword_22C290E30;
LABEL_21:
    v36 = v1;
LABEL_32:
    sub_22BE33928(v36, v29, v30);
LABEL_33:
    v27 = 0;
    goto LABEL_34;
  }

  sub_22BFB18A0();
  if (*v19 != *v2 || v19[1] != v2[1])
  {
    sub_22BFB18F4(v2, type metadata accessor for ContextProtoCGPoint);
    v34 = sub_22BE19454();
    sub_22BFB18F4(v34, v35);
    v29 = &qword_27D90C0C0;
    v30 = &unk_22C294B10;
    goto LABEL_21;
  }

  sub_22C2704B4();
  sub_22BE18E14();
  sub_22BE2C940(v31, v32, MEMORY[0x277D216D0]);
  v33 = sub_22C272FD4();
  sub_22BFB18F4(v2, type metadata accessor for ContextProtoCGPoint);
  sub_22BFB18F4(v19, type metadata accessor for ContextProtoCGPoint);
  sub_22BE33928(v1, &qword_27D90C0C0, &unk_22C294B10);
  if ((v33 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_6:
  type metadata accessor for ContextProtoCGRect(0);
  v24 = *(v45 + 48);
  sub_22BFB1AC4();
  sub_22BFB1AC4();
  sub_22BE1AB5C(v0, 1, v46);
  if (v28)
  {
    sub_22BE181B0(v0 + v24);
    if (v28)
    {
      sub_22BE33928(v0, &qword_27D90C0B0, &qword_22C290E20);
      goto LABEL_11;
    }

    goto LABEL_25;
  }

  v37 = v44;
  sub_22BE22868();
  sub_22BE181B0(v0 + v24);
  if (v38)
  {
    sub_22BFB18F4(v37, type metadata accessor for ContextProtoCGSize);
LABEL_25:
    v29 = &qword_27D90C0B8;
    v30 = &qword_22C290E28;
LABEL_31:
    v36 = v0;
    goto LABEL_32;
  }

  v39 = v43;
  sub_22BFB18A0();
  if (*v37 != *v39 || v37[1] != v39[1])
  {
    sub_22BFB18F4(v39, type metadata accessor for ContextProtoCGSize);
    sub_22BFB18F4(v37, type metadata accessor for ContextProtoCGSize);
    v29 = &qword_27D90C0B0;
    v30 = &qword_22C290E20;
    goto LABEL_31;
  }

  sub_22C2704B4();
  sub_22BE18E14();
  sub_22BE2C940(v40, v41, MEMORY[0x277D216D0]);
  v42 = sub_22C272FD4();
  sub_22BFB18F4(v39, type metadata accessor for ContextProtoCGSize);
  sub_22BFB18F4(v37, type metadata accessor for ContextProtoCGSize);
  sub_22BE33928(v0, &qword_27D90C0B0, &qword_22C290E20);
  if ((v42 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_11:
  sub_22C2704B4();
  sub_22BE18E14();
  sub_22BE2C940(v25, v26, MEMORY[0x277D216D0]);
  v27 = sub_22C272FD4();
LABEL_34:
  sub_22BE1C1DC(v27);
  sub_22BE1AABC();
}