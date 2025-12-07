void sub_1DD466978(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v116 = a1;
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  v124 = *(matched - 8);
  MEMORY[0x1EEE9AC00](matched);
  v120 = &v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v127 = &v113 - v10;
  MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v15 = *(a3 + 8);
  v121 = a3;
  if (v15 < 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
LABEL_102:
    v4 = *v116;
    if (!*v116)
    {
      goto LABEL_143;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_104:
      v104 = v17 + 16;
      v105 = *(v17 + 2);
      while (v105 >= 2)
      {
        v106 = *a3;
        if (!*a3)
        {
          goto LABEL_140;
        }

        v107 = v17;
        v108 = &v17[16 * v105];
        v109 = *v108;
        a3 = &v104[2 * v105];
        v110 = *(a3 + 8);
        v111 = v126;
        sub_1DD467680(v106 + *(v124 + 72) * *v108, v106 + *(v124 + 72) * *a3, v106 + *(v124 + 72) * v110, v4);
        v126 = v111;
        if (v111)
        {
          break;
        }

        if (v110 < v109)
        {
          goto LABEL_128;
        }

        if (v105 - 2 >= *v104)
        {
          goto LABEL_129;
        }

        *v108 = v109;
        *(v108 + 1) = v110;
        v112 = *v104 - v105;
        if (*v104 < v105)
        {
          goto LABEL_130;
        }

        v105 = *v104 - 1;
        sub_1DD4EC4E4((a3 + 16), v112, a3);
        *v104 = v105;
        a3 = v121;
        v17 = v107;
      }

LABEL_112:

      return;
    }

LABEL_137:
    v17 = sub_1DD4EC2B8();
    goto LABEL_104;
  }

  v115 = a4;
  v16 = 0;
  v131 = &v113 - v13;
  v129 = v14 + 344;
  v130 = &v113 - v13 + 344;
  v17 = MEMORY[0x1E69E7CC0];
  v132 = matched;
  v128 = v14;
  while (1)
  {
    v18 = v16;
    v19 = v16 + 1;
    v117 = v16;
    if (v16 + 1 < v15)
    {
      v20 = *a3;
      v4 = *(v124 + 72);
      v21 = v16 + 1;
      v22 = *a3 + v4 * v19;
      a3 = v131;
      v123 = v15;
      sub_1DD3CD140(v22, v131);
      v23 = v128;
      sub_1DD3CD140(v20 + v4 * v18, v128);
      v24 = *(matched + 20);
      v25 = *&v130[v24];
      v26 = *(v129 + v24);
      sub_1DD467AE8(v23, type metadata accessor for ContactMatchRuntimeData);
      sub_1DD467AE8(a3, type metadata accessor for ContactMatchRuntimeData);
      v27 = v123;
      v28 = v18 + 2;
      v125 = v4;
      v29 = v20 + v4 * (v18 + 2);
      while (1)
      {
        v30 = v28;
        if (v21 + 1 >= v27)
        {
          break;
        }

        ++v21;
        a3 = v26 < v25;
        v4 = v131;
        sub_1DD3CD140(v29, v131);
        sub_1DD3CD140(v22, v23);
        v31 = *(v132 + 20);
        v32 = *&v130[v31];
        v33 = *(v129 + v31);
        sub_1DD467AE8(v23, type metadata accessor for ContactMatchRuntimeData);
        sub_1DD467AE8(v4, type metadata accessor for ContactMatchRuntimeData);
        v27 = v123;
        v29 += v125;
        v22 += v125;
        v28 = v30 + 1;
        if (v26 < v25 == v33 >= v32)
        {
          goto LABEL_9;
        }
      }

      v21 = v27;
LABEL_9:
      if (v26 >= v25)
      {
        matched = v132;
        v19 = v21;
        a3 = v121;
      }

      else
      {
        v18 = v117;
        if (v21 < v117)
        {
          goto LABEL_134;
        }

        v19 = v21;
        a3 = v121;
        if (v117 >= v21)
        {
          matched = v132;
          goto LABEL_32;
        }

        v114 = v17;
        if (v27 >= v30)
        {
          v34 = v30;
        }

        else
        {
          v34 = v27;
        }

        v35 = v125 * (v34 - 1);
        v36 = v125 * v34;
        v37 = v117 * v125;
        matched = v132;
        do
        {
          if (v18 != --v19)
          {
            v38 = *v121;
            if (!*v121)
            {
              goto LABEL_141;
            }

            sub_1DD3CD200(v38 + v37, v120);
            v39 = v37 < v35 || v38 + v37 >= (v38 + v36);
            if (v39)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v37 != v35)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1DD3CD200(v120, v38 + v35);
            matched = v132;
          }

          ++v18;
          v35 -= v125;
          v36 -= v125;
          v37 += v125;
        }

        while (v18 < v19);
        a3 = v121;
        v17 = v114;
        v19 = v21;
      }

      v18 = v117;
    }

LABEL_32:
    v40 = *(a3 + 8);
    if (v19 < v40)
    {
      if (__OFSUB__(v19, v18))
      {
        goto LABEL_133;
      }

      if (v19 - v18 < v115)
      {
        break;
      }
    }

LABEL_50:
    if (v19 < v18)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1DD3BEB7C();
      v17 = v102;
    }

    v57 = *(v17 + 2);
    v56 = *(v17 + 3);
    v58 = v57 + 1;
    v125 = v19;
    if (v57 >= v56 >> 1)
    {
      sub_1DD3BEB7C();
      v17 = v103;
    }

    *(v17 + 2) = v58;
    v59 = v17 + 32;
    v60 = &v17[16 * v57 + 32];
    v61 = v125;
    *v60 = v117;
    *(v60 + 1) = v61;
    v123 = *v116;
    if (!v123)
    {
      goto LABEL_142;
    }

    if (v57)
    {
      while (1)
      {
        v62 = v58 - 1;
        v63 = &v59[16 * v58 - 16];
        v64 = &v17[16 * v58];
        if (v58 >= 4)
        {
          break;
        }

        if (v58 == 3)
        {
          v65 = *(v17 + 4);
          v66 = *(v17 + 5);
          v75 = __OFSUB__(v66, v65);
          v67 = v66 - v65;
          v68 = v75;
LABEL_70:
          if (v68)
          {
            goto LABEL_119;
          }

          v80 = *v64;
          v79 = *(v64 + 1);
          v81 = __OFSUB__(v79, v80);
          v82 = v79 - v80;
          v83 = v81;
          if (v81)
          {
            goto LABEL_122;
          }

          v84 = *(v63 + 1);
          v85 = v84 - *v63;
          if (__OFSUB__(v84, *v63))
          {
            goto LABEL_125;
          }

          if (__OFADD__(v82, v85))
          {
            goto LABEL_127;
          }

          if (v82 + v85 >= v67)
          {
            if (v67 < v85)
            {
              v62 = v58 - 2;
            }

            goto LABEL_92;
          }

          goto LABEL_85;
        }

        if (v58 < 2)
        {
          goto LABEL_121;
        }

        v87 = *v64;
        v86 = *(v64 + 1);
        v75 = __OFSUB__(v86, v87);
        v82 = v86 - v87;
        v83 = v75;
LABEL_85:
        if (v83)
        {
          goto LABEL_124;
        }

        v89 = *v63;
        v88 = *(v63 + 1);
        v75 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v75)
        {
          goto LABEL_126;
        }

        if (v90 < v82)
        {
          goto LABEL_99;
        }

LABEL_92:
        if (v62 - 1 >= v58)
        {
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
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        v94 = *a3;
        if (!*a3)
        {
          goto LABEL_139;
        }

        v4 = a3;
        v95 = &v59[16 * v62 - 16];
        v96 = *v95;
        v97 = &v59[16 * v62];
        a3 = *(v97 + 1);
        v98 = v126;
        sub_1DD467680(v94 + *(v124 + 72) * *v95, v94 + *(v124 + 72) * *v97, v94 + *(v124 + 72) * a3, v123);
        v126 = v98;
        if (v98)
        {
          goto LABEL_112;
        }

        if (a3 < v96)
        {
          goto LABEL_114;
        }

        v99 = v17;
        v100 = *(v17 + 2);
        if (v62 > v100)
        {
          goto LABEL_115;
        }

        *v95 = v96;
        v95[1] = a3;
        if (v62 >= v100)
        {
          goto LABEL_116;
        }

        v58 = v100 - 1;
        sub_1DD4EC4E4(v97 + 16, v100 - 1 - v62, &v59[16 * v62]);
        *(v99 + 2) = v100 - 1;
        v101 = v100 > 2;
        v17 = v99;
        matched = v132;
        a3 = v4;
        if (!v101)
        {
          goto LABEL_99;
        }
      }

      v69 = &v59[16 * v58];
      v70 = *(v69 - 8);
      v71 = *(v69 - 7);
      v75 = __OFSUB__(v71, v70);
      v72 = v71 - v70;
      if (v75)
      {
        goto LABEL_117;
      }

      v74 = *(v69 - 6);
      v73 = *(v69 - 5);
      v75 = __OFSUB__(v73, v74);
      v67 = v73 - v74;
      v68 = v75;
      if (v75)
      {
        goto LABEL_118;
      }

      v76 = *(v64 + 1);
      v77 = v76 - *v64;
      if (__OFSUB__(v76, *v64))
      {
        goto LABEL_120;
      }

      v75 = __OFADD__(v67, v77);
      v78 = v67 + v77;
      if (v75)
      {
        goto LABEL_123;
      }

      if (v78 >= v72)
      {
        v92 = *v63;
        v91 = *(v63 + 1);
        v75 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v75)
        {
          goto LABEL_131;
        }

        if (v67 < v93)
        {
          v62 = v58 - 2;
        }

        goto LABEL_92;
      }

      goto LABEL_70;
    }

LABEL_99:
    v15 = *(a3 + 8);
    v16 = v125;
    if (v125 >= v15)
    {
      goto LABEL_102;
    }
  }

  v41 = v18 + v115;
  if (__OFADD__(v18, v115))
  {
    goto LABEL_135;
  }

  if (v41 >= v40)
  {
    v41 = *(a3 + 8);
  }

  if (v41 < v18)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v19 == v41)
  {
    goto LABEL_50;
  }

  v114 = v17;
  v42 = *a3;
  v43 = *(v124 + 72);
  v44 = *a3 + v43 * (v19 - 1);
  v4 = -v43;
  v45 = v18 - v19;
  v118 = v43;
  v119 = v41;
  v46 = v42 + v19 * v43;
LABEL_41:
  v125 = v19;
  v47 = v46;
  v122 = v45;
  v123 = v44;
  v48 = v45;
  v49 = v44;
  while (1)
  {
    v50 = v131;
    sub_1DD3CD140(v47, v131);
    v51 = v128;
    sub_1DD3CD140(v49, v128);
    v52 = *(matched + 20);
    v53 = *&v130[v52];
    v54 = *(v129 + v52);
    sub_1DD467AE8(v51, type metadata accessor for ContactMatchRuntimeData);
    sub_1DD467AE8(v50, type metadata accessor for ContactMatchRuntimeData);
    if (v54 >= v53)
    {
      matched = v132;
LABEL_48:
      v19 = v125 + 1;
      v44 = v123 + v118;
      v45 = v122 - 1;
      v46 += v118;
      if (v125 + 1 == v119)
      {
        v19 = v119;
        a3 = v121;
        v17 = v114;
        v18 = v117;
        goto LABEL_50;
      }

      goto LABEL_41;
    }

    if (!v42)
    {
      break;
    }

    v55 = v127;
    sub_1DD3CD200(v47, v127);
    matched = v132;
    swift_arrayInitWithTakeFrontToBack();
    sub_1DD3CD200(v55, v49);
    v49 += v4;
    v47 += v4;
    v39 = __CFADD__(v48++, 1);
    if (v39)
    {
      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
}

void sub_1DD46722C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  MEMORY[0x1EEE9AC00](matched);
  v10 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v46 - v12;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  v16 = a2 - a1 == 0x8000000000000000 && v15 == -1;
  if (v16)
  {
    goto LABEL_61;
  }

  v17 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v55 = a1;
  v54 = a4;
  v19 = v17 / v15;
  v46[1] = v4;
  if ((a2 - a1) / v15 >= v17 / v15)
  {
    v49 = v10;
    sub_1DD3C1C14(a2, v17 / v15, a4);
    v27 = a4 + v19 * v15;
    v28 = -v15;
    v29 = v27;
    v30 = a3;
    v50 = -v15;
    v48 = a1;
LABEL_37:
    v51 = a2 + v28;
    v31 = v30;
    v46[0] = v29;
    while (1)
    {
      if (v27 <= a4)
      {
        v55 = a2;
        v53 = v29;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v47 = v29;
      v32 = a2;
      v33 = a4;
      v30 = v31 + v50;
      v34 = v27 + v50;
      v35 = v27;
      sub_1DD3CD140(v27 + v50, v13);
      v36 = v13;
      v37 = v49;
      sub_1DD3CD140(v51, v49);
      v38 = *(matched + 32);
      v39 = *(v36 + v38);
      v40 = *(v37 + v38);
      v41 = v37;
      v13 = v36;
      sub_1DD467AE8(v41, type metadata accessor for ContactMatchRuntimeData);
      sub_1DD467AE8(v36, type metadata accessor for ContactMatchRuntimeData);
      if (v40 < v39)
      {
        v43 = v31 < v32 || v30 >= v32;
        a4 = v33;
        if (v43)
        {
          a2 = v51;
          swift_arrayInitWithTakeFrontToBack();
          v29 = v47;
          a1 = v48;
          v28 = v50;
          v27 = v35;
        }

        else
        {
          a1 = v48;
          v29 = v47;
          v16 = v31 == v32;
          v28 = v50;
          v44 = v51;
          a2 = v51;
          v27 = v35;
          if (!v16)
          {
            v45 = v47;
            swift_arrayInitWithTakeBackToFront();
            v27 = v35;
            a2 = v44;
            v29 = v45;
          }
        }

        goto LABEL_37;
      }

      v42 = v31 < v35 || v30 >= v35;
      a4 = v33;
      if (v42)
      {
        swift_arrayInitWithTakeFrontToBack();
        v31 = v30;
        v27 = v34;
        v29 = v34;
        a2 = v32;
        a1 = v48;
      }

      else
      {
        v29 = v34;
        v16 = v35 == v31;
        v31 = v30;
        v27 = v34;
        a2 = v32;
        a1 = v48;
        if (!v16)
        {
          swift_arrayInitWithTakeBackToFront();
          v31 = v30;
          v27 = v34;
          v29 = v34;
        }
      }
    }

    v55 = a2;
    v53 = v46[0];
  }

  else
  {
    sub_1DD3C1C14(a1, (a2 - a1) / v15, a4);
    v20 = a4 + (a2 - a1) / v15 * v15;
    v53 = v20;
    while (a4 < v20 && a2 < a3)
    {
      sub_1DD3CD140(a2, v13);
      sub_1DD3CD140(a4, v10);
      v22 = *(matched + 32);
      v23 = *&v13[v22];
      v24 = *&v10[v22];
      sub_1DD467AE8(v10, type metadata accessor for ContactMatchRuntimeData);
      sub_1DD467AE8(v13, type metadata accessor for ContactMatchRuntimeData);
      if (v24 >= v23)
      {
        if (a1 < a4 || a1 >= a4 + v15)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v54 = a4 + v15;
        a4 += v15;
      }

      else
      {
        if (a1 < a2 || a1 >= a2 + v15)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v15;
      }

      a1 += v15;
      v55 = a1;
    }
  }

LABEL_59:
  sub_1DD4EC2D0(&v55, &v54, &v53);
}

void sub_1DD467680(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  MEMORY[0x1EEE9AC00](matched);
  v54 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v47 - v11;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  v15 = a2 - a1;
  v16 = a2 - a1 == 0x8000000000000000 && v14 == -1;
  if (v16)
  {
    goto LABEL_62;
  }

  v17 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_63;
  }

  v19 = v15 / v14;
  v58 = a1;
  v57 = a4;
  v20 = v17 / v14;
  v47[1] = v4;
  if (v15 / v14 >= v17 / v14)
  {
    sub_1DD3C1C14(a2, v17 / v14, a4);
    v29 = a4 + v20 * v14;
    v51 = v54 + 344;
    v52 = v12 + 344;
    v30 = -v14;
    v31 = v29;
    v49 = a1;
    v50 = -v14;
LABEL_37:
    v32 = a2 + v30;
    v33 = a3;
    v47[0] = v31;
    v53 = a2 + v30;
    while (1)
    {
      if (v29 <= a4)
      {
        v58 = a2;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v48 = v31;
      a3 = v33 + v30;
      v34 = v29 + v30;
      v35 = v29;
      v36 = v33;
      sub_1DD3CD140(v29 + v30, v12);
      v37 = v12;
      v38 = v54;
      sub_1DD3CD140(v32, v54);
      v39 = *(matched + 20);
      v40 = *&v52[v39];
      v41 = *(v51 + v39);
      v42 = v38;
      v12 = v37;
      sub_1DD467AE8(v42, type metadata accessor for ContactMatchRuntimeData);
      sub_1DD467AE8(v37, type metadata accessor for ContactMatchRuntimeData);
      if (v41 < v40)
      {
        if (v36 < a2 || a3 >= a2)
        {
          a2 = v53;
          swift_arrayInitWithTakeFrontToBack();
          v31 = v48;
          a1 = v49;
          v30 = v50;
          v29 = v35;
        }

        else
        {
          v31 = v48;
          v16 = v36 == a2;
          v45 = v53;
          a2 = v53;
          a1 = v49;
          v30 = v50;
          v29 = v35;
          if (!v16)
          {
            v46 = v48;
            swift_arrayInitWithTakeBackToFront();
            v29 = v35;
            a2 = v45;
            v31 = v46;
          }
        }

        goto LABEL_37;
      }

      if (v36 < v35 || a3 >= v35)
      {
        swift_arrayInitWithTakeFrontToBack();
        v33 = a3;
        v29 = v34;
        v31 = v34;
        a1 = v49;
        v30 = v50;
        v32 = v53;
      }

      else
      {
        v31 = v34;
        v16 = v35 == v36;
        v33 = a3;
        v29 = v34;
        a1 = v49;
        v30 = v50;
        v32 = v53;
        if (!v16)
        {
          swift_arrayInitWithTakeBackToFront();
          v33 = a3;
          v29 = v34;
          v31 = v34;
        }
      }
    }

    v58 = a2;
    v31 = v47[0];
LABEL_59:
    v56 = v31;
  }

  else
  {
    sub_1DD3C1C14(a1, v15 / v14, a4);
    v21 = a4 + v19 * v14;
    v56 = v21;
    v52 = (v54 + 344);
    v53 = (v12 + 344);
    while (a4 < v21 && a2 < a3)
    {
      sub_1DD3CD140(a2, v12);
      v23 = v54;
      sub_1DD3CD140(a4, v54);
      v24 = *(matched + 20);
      v25 = *(v53 + v24);
      v26 = *&v52[v24];
      sub_1DD467AE8(v23, type metadata accessor for ContactMatchRuntimeData);
      sub_1DD467AE8(v12, type metadata accessor for ContactMatchRuntimeData);
      if (v26 >= v25)
      {
        if (a1 < a4 || a1 >= a4 + v14)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v57 = a4 + v14;
        a4 += v14;
      }

      else
      {
        if (a1 < a2 || a1 >= a2 + v14)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v14;
      }

      a1 += v14;
      v58 = a1;
    }
  }

  sub_1DD4EC2D0(&v58, &v57, &v56);
}

uint64_t sub_1DD467AE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_1DD467B48(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return sub_1DD586734(v4, __dst);
}

_BYTE *storeEnumTagSinglePayload for ContactResolverSearchMetricsError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1DD467C74(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 88))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 10);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD467CC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 10) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1DD467D28(uint64_t a1)
{
  result = sub_1DD467D50();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DD467D50()
{
  result = qword_1ECCDCF00;
  if (!qword_1ECCDCF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCF00);
  }

  return result;
}

unint64_t sub_1DD467DA8()
{
  result = qword_1ECCDCF08;
  if (!qword_1ECCDCF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCF08);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_13_19(uint64_t a1, uint64_t a2)
{

  return sub_1DD6406D8();
}

void OUTLINED_FUNCTION_14_21()
{
  v2 = *(v0 + 16) + 1;

  sub_1DD42B564(0, v2, 1);
}

uint64_t OUTLINED_FUNCTION_19_15()
{
  v3 = *(v2 + 72);
  *(v1 + 160) = v0;
  return *(v1 + 104) + v3 * v0;
}

uint64_t OUTLINED_FUNCTION_22_11()
{
}

void sub_1DD467EC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCF10, &qword_1DD64C7E0);
  v3 = OUTLINED_FUNCTION_3(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_1();
  v137 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v140 = (&v123 - v6);
  v7 = OUTLINED_FUNCTION_6_2();
  v8 = type metadata accessor for StitchedContactResolverRecommendation(v7);
  OUTLINED_FUNCTION_0();
  v124 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  v154 = v11;
  v12 = OUTLINED_FUNCTION_6_2();
  v13 = type metadata accessor for StitchedContactResolverRequest(v12);
  OUTLINED_FUNCTION_0();
  v131 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1();
  v130 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1B0, &unk_1DD6454F0);
  OUTLINED_FUNCTION_3(v17);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v18);
  v147 = &v123 - v19;
  v20 = OUTLINED_FUNCTION_6_2();
  v151 = type metadata accessor for ContactResolverRunTimeData(v20);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v123 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCD80, &qword_1DD64B998);
  OUTLINED_FUNCTION_3(v24);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v123 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCD78, &qword_1DD64B990);
  OUTLINED_FUNCTION_3(v28);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v123 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  OUTLINED_FUNCTION_3(v32);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v123 - v34;
  v139 = sub_1DD63D0F8();
  OUTLINED_FUNCTION_0();
  v123 = v36;
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_2_1();
  v149 = v38;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v123 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v150 = &v123 - v43;
  *&v153 = a1;
  v132 = *(a1 + 32);
  sub_1DD558CD0(v132, v27);
  if (__swift_getEnumTagSinglePayload(v27, 1, v13) == 1)
  {
    v44 = &qword_1ECCDCD80;
    v45 = &qword_1DD64B998;
    v46 = v27;
LABEL_5:
    sub_1DD390754(v46, v44, v45);
    __swift_storeEnumTagSinglePayload(v35, 1, 1, v139);
    goto LABEL_6;
  }

  v148 = v41;
  v47 = *&v27[*(v13 + 24)];

  OUTLINED_FUNCTION_0_47();
  sub_1DD4694E4(v27, v48);
  sub_1DD558DAC(v47, v31);

  if (__swift_getEnumTagSinglePayload(v31, 1, v8) == 1)
  {
    v44 = &qword_1ECCDCD78;
    v45 = &qword_1DD64B990;
    v46 = v31;
    goto LABEL_5;
  }

  sub_1DD469484(v31, v23, type metadata accessor for ContactResolverRunTimeData);
  OUTLINED_FUNCTION_2_26();
  sub_1DD4694E4(v31, v53);
  sub_1DD3DD9B4(&v23[v151[19]], v35, &qword_1ECCDBAC8, &qword_1DD643E60);
  sub_1DD4694E4(v23, type metadata accessor for ContactResolverRunTimeData);
  v54 = v139;
  if (__swift_getEnumTagSinglePayload(v35, 1, v139) == 1)
  {
LABEL_6:
    sub_1DD390754(v35, &qword_1ECCDBAC8, &qword_1DD643E60);
    if (qword_1EE160508 == -1)
    {
LABEL_7:
      v49 = sub_1DD63F9F8();
      __swift_project_value_buffer(v49, qword_1EE16EED0);
      v50 = sub_1DD63F9D8();
      v51 = sub_1DD640368();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_1DD38D000, v50, v51, "skipping logging metrics since resolutionId is missing", v52, 2u);
        MEMORY[0x1E12B3DA0](v52, -1, -1);
      }

      return;
    }

LABEL_83:
    OUTLINED_FUNCTION_3_5(&qword_1EE160508);
    goto LABEL_7;
  }

  v146 = v13;
  v55 = v150;
  (*(v123 + 32))(v150, v35, v54);
  v56 = v148;
  sub_1DD63D0E8();
  v57 = type metadata accessor for StitchedContactData(0);
  v58 = v153;
  v59 = v147;
  sub_1DD3DD9B4(v153 + *(v57 + 28), v147, &qword_1ECCDC1B0, &unk_1DD6454F0);
  v60 = type metadata accessor for StitchableInteraction(0);
  if (__swift_getEnumTagSinglePayload(v59, 1, v60) == 1)
  {
    sub_1DD390754(v59, &qword_1ECCDC1B0, &unk_1DD6454F0);
    v61 = 0.0;
  }

  else
  {
    v62 = *(v59 + *(v60 + 28));
    OUTLINED_FUNCTION_1_36();
    sub_1DD4694E4(v59, v63);
    v61 = v62 * 1000.0;
  }

  v65 = *(v58 + 16);
  v64 = *(v58 + 24);
  v66 = v65 == 0xD000000000000013 && 0x80000001DD66CB70 == v64;
  v136 = v8;
  if (v66 || (sub_1DD640CD8() & 1) != 0)
  {
    v67 = 1;
    v68 = 2;
LABEL_20:
    v155[0] = v68;
    LOBYTE(v155[1]) = v67;
    sub_1DD5A0898();

    v155[0] = v68;
    LOBYTE(v155[1]) = v67;
    sub_1DD5A0898();
    v71 = v70;
    v56 = v148;
    goto LABEL_21;
  }

  v121 = v65 == 0xD000000000000011 && 0x80000001DD66A780 == v64;
  if (v121 || (sub_1DD640CD8() & 1) != 0)
  {
    sub_1DD55D704(v61);
    if ((*&v122 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v122 > -9.22337204e18)
    {
      if (v122 < 9.22337204e18)
      {
        v67 = 0;
        v68 = v122;
        goto LABEL_20;
      }

LABEL_86:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_86;
  }

  v71 = 0;
LABEL_21:
  v72 = v149;
  sub_1DD5A5AB4();

  v73 = v132;
  v127 = *(v132 + 16);
  if (v127)
  {
    v74 = 0;
    v126 = v132 + ((*(v131 + 80) + 32) & ~*(v131 + 80));
    v125 = *(v146 + 24);
    v134 = (v123 + 8);
    v135 = (v123 + 16);
    v133 = xmmword_1DD643F90;
    v75 = v139;
    v76 = v154;
    while (v74 < *(v73 + 16))
    {
      v77 = v130;
      OUTLINED_FUNCTION_8_19();
      sub_1DD469484(v78, v77, v79);
      v80 = *(v77 + v125);

      OUTLINED_FUNCTION_0_47();
      sub_1DD4694E4(v77, v81);
      v82 = *(v80 + 16);
      if (v82)
      {
        v128 = v80;
        v129 = v74;
        v83 = v80 + ((*(v124 + 80) + 32) & ~*(v124 + 80));
        v138 = *(v124 + 72);
        v84 = v140;
        do
        {
          v146 = v83;
          v147 = v82;
          OUTLINED_FUNCTION_7_23();
          sub_1DD469484(v85, v76, v86);
          (*v135)(v72, &v154[v151[18]], v75);
          memcpy(v155, v154, 0xB0uLL);
          v87 = *(v154 + 22);
          v88 = *(v154 + 25);
          v89 = *(v154 + 28);
          v90 = *(v154 + 29);
          v161 = *(v154 + 15);
          v162 = *(v154 + 32);
          v155[22] = v87;
          v145 = *(v154 + 184);
          v156 = v145;
          v157 = v88;
          v153 = *(v154 + 13);
          v158 = v153;
          v159 = v89;
          v160 = v90;
          v91 = sub_1DD41E198();
          v92 = v91;
          v93 = BYTE7(v145) & 0xF;
          if ((v145 & 0x2000000000000000) == 0)
          {
            v93 = v87 & 0xFFFFFFFFFFFFLL;
          }

          if (v93)
          {
            v94 = v92 | 2;
          }

          else
          {
            v94 = v91;
          }

          if (v145)
          {
            v92 = v94;
          }

          v95 = BYTE7(v153) & 0xF;
          if ((v153 & 0x2000000000000000) == 0)
          {
            v95 = v88 & 0xFFFFFFFFFFFFLL;
          }

          if (v95)
          {
            v96 = v92 | 4;
          }

          else
          {
            v96 = v92;
          }

          v97 = HIBYTE(v90) & 0xF;
          if ((v90 & 0x2000000000000000) == 0)
          {
            v97 = v89 & 0xFFFFFFFFFFFFLL;
          }

          if (v97)
          {
            v96 |= 8u;
          }

          if (v153)
          {
            v98 = v96;
          }

          else
          {
            v98 = v92;
          }

          v99 = *(v154 + 37);
          v100 = sub_1DD5A0774(v98);
          sub_1DD5A3128(v99);
          v101 = v154;
          sub_1DD5A646C();

          v102 = v152;
          sub_1DD5AD434(v84);
          if (v102)
          {

            v152 = 0;
            v103 = 1;
          }

          else
          {
            v152 = 0;
            v103 = 0;
          }

          v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE08, &qword_1DD644158);
          __swift_storeEnumTagSinglePayload(v84, v103, 1, v104);
          v105 = v101[v151[13]];
          v106 = *(v101 + 35);
          v144 = *(v101 + 34);
          v142 = v105;
          v143 = v106;
          v107 = v137;
          v108 = &v101[*(v136 + 20)];
          v109 = *v108;
          v110 = *(v108 + 1);
          *&v153 = *(v108 + 2);
          v111 = v108[24];
          v141 = v109;
          if (v111 != 255)
          {
            if (v111)
            {
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
              v112 = swift_allocObject();
              *(v112 + 16) = v133;
              *(v112 + 32) = v141;
              *(v112 + 40) = v110;
              sub_1DD3E7AA0(v141, v110, v153, 0);
            }
          }

          *&v145 = v110;
          sub_1DD3DD9B4(v84, v107, &qword_1ECCDCF10, &qword_1DD64C7E0);
          v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE08, &qword_1DD644158);
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v107, 1, v113);
          if (EnumTagSinglePayload == 1)
          {
            sub_1DD390754(v107, &qword_1ECCDCF10, &qword_1DD64C7E0);
          }

          else
          {
            sub_1DD5AE450();
            sub_1DD390754(v107, &qword_1ECCDBE08, &qword_1DD644158);
          }

          LOBYTE(v155[0]) = EnumTagSinglePayload == 1;
          v56 = v148;
          v72 = v149;
          sub_1DD5A5DDC();

          if (v111 == 255)
          {
            v115 = 1;
            v116 = v140;
            v76 = v154;
            v55 = v150;
          }

          else
          {
            v116 = v140;
            if (v111)
            {
              v76 = v154;
              if (v153)
              {
                sub_1DD52823C();
              }

              v55 = v150;

              v115 = 1;
            }

            else
            {
              v117 = v153;
              sub_1DD3E7AA0(v141, v145, v153, 0);
              v118 = v117;
              v76 = v154;
              v115 = 0;
              v55 = v150;
              switch(v118)
              {
                case 1:
                  v115 = 0;
                  break;
                case 2:
                  v115 = 0;
                  break;
                case 3:
                  v115 = 0;
                  break;
                default:
                  break;
              }
            }
          }

          LOBYTE(v155[0]) = v115;
          sub_1DD5A6114();

          sub_1DD390754(v116, &qword_1ECCDCF10, &qword_1DD64C7E0);
          v75 = v139;
          (*v134)(v72, v139);
          OUTLINED_FUNCTION_2_26();
          sub_1DD4694E4(v76, v119);
          v83 = v146 + v138;
          v82 = v147 - 1;
          v84 = v116;
        }

        while (v147 != 1);

        v73 = v132;
        v74 = v129;
      }

      else
      {

        v73 = v132;
      }

      if (++v74 == v127)
      {
        goto LABEL_71;
      }
    }

    __break(1u);
    goto LABEL_83;
  }

  v75 = v139;
LABEL_71:
  v120 = *(v123 + 8);
  v120(v56, v75);
  v120(v55, v75);
}

uint64_t sub_1DD468D30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1B0, &unk_1DD6454F0);
  v3 = OUTLINED_FUNCTION_3(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_1();
  v80 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v79 = &v72 - v6;
  v7 = OUTLINED_FUNCTION_6_2();
  v8 = type metadata accessor for PrivatizedContactResolverConfig(v7);
  v9 = OUTLINED_FUNCTION_3(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v78 = v10;
  OUTLINED_FUNCTION_6_2();
  sub_1DD63D0F8();
  OUTLINED_FUNCTION_0();
  v75 = v12;
  v76 = v11;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  v77 = v13;
  v14 = OUTLINED_FUNCTION_6_2();
  v15 = type metadata accessor for StitchedContactResolverRecommendation(v14) - 8;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1();
  v17 = v16;
  v18 = OUTLINED_FUNCTION_6_2();
  v19 = type metadata accessor for StitchedContactResolverRequest(v18);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1DD4589E4();
  v82[3] = &type metadata for ContactFeatures;
  v82[4] = sub_1DD3E6184();
  LOBYTE(v82[0]) = 1;
  v24 = sub_1DD63DA48();
  __swift_destroy_boxed_opaque_existential_1(v82);
  v25 = 0;
  v81 = a1;
  v26 = *(a1 + 32);
  v27 = *(v26 + 16);
  while (1)
  {
    if (v27 == v25)
    {
      return 0;
    }

    if (v25 >= *(v26 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_8_19();
    sub_1DD469484(v28, v22, v29);
    if (*(*&v22[*(v19 + 24)] + 16))
    {
      OUTLINED_FUNCTION_7_23();
      v26 = v17;
      sub_1DD469484(v32 + v33, v17, v34);
      v35 = type metadata accessor for ContactResolverRunTimeData(0);
      if (sub_1DD458AD4(*(v17 + *(v35 + 48)), v24 & 1, v23))
      {
        if (qword_1ECCDB118 == -1)
        {
          goto LABEL_9;
        }

        goto LABEL_39;
      }

      if (qword_1EE160508 != -1)
      {
        OUTLINED_FUNCTION_3_5(&qword_1EE160508);
      }

      v41 = sub_1DD63F9F8();
      __swift_project_value_buffer(v41, qword_1EE16EED0);
      v42 = sub_1DD63F9D8();
      v43 = sub_1DD640368();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        v45 = "skipping logging training sample for non-force prompt";
        goto LABEL_20;
      }

      goto LABEL_21;
    }

    ++v25;
    OUTLINED_FUNCTION_0_47();
    sub_1DD4694E4(v22, v30);
  }

  __break(1u);
LABEL_39:
  swift_once();
LABEL_9:
  v37 = v80;
  v36 = v81;
  v38 = v79;
  if (byte_1ECD0DE38 != 1)
  {
    if (qword_1EE160508 != -1)
    {
      OUTLINED_FUNCTION_3_5(&qword_1EE160508);
    }

    v46 = sub_1DD63F9F8();
    __swift_project_value_buffer(v46, qword_1EE16EED0);
    v42 = sub_1DD63F9D8();
    v43 = sub_1DD640368();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      v45 = "skipping logging training sample because D&U not allowed";
LABEL_20:
      _os_log_impl(&dword_1DD38D000, v42, v43, v45, v44, 2u);
      MEMORY[0x1E12B3DA0](v44, -1, -1);
    }

LABEL_21:

    v31 = 0;
LABEL_36:
    OUTLINED_FUNCTION_2_26();
    sub_1DD4694E4(v26, v70);
    OUTLINED_FUNCTION_0_47();
    sub_1DD4694E4(v22, v71);
    return v31;
  }

  sub_1DD63D0E8();
  sub_1DD469484(v22, v78, type metadata accessor for PrivatizedContactResolverConfig);
  v39 = type metadata accessor for StitchedContactData(0);
  v74 = *(v39 + 28);
  sub_1DD3DD9B4(v36 + v74, v38, &qword_1ECCDC1B0, &unk_1DD6454F0);
  v40 = type metadata accessor for StitchableInteraction(0);
  if (__swift_getEnumTagSinglePayload(v38, 1, v40) == 1)
  {
    sub_1DD390754(v38, &qword_1ECCDC1B0, &unk_1DD6454F0);
  }

  else
  {
    v47 = *(v38 + *(v40 + 36));

    OUTLINED_FUNCTION_1_36();
    sub_1DD4694E4(v38, v48);
    v53 = *(v47 + 16);
    if (v53)
    {
      v73 = v40;
      v79 = v39;
      v82[0] = MEMORY[0x1E69E7CC0];
      sub_1DD42A2D4(0, v53, 0, v49, v50, v51, v52);
      v54 = v82[0];
      v72 = v47;
      v55 = (v47 + 40);
      do
      {
        v56 = *(v55 - 1);
        v57 = *v55;
        v82[0] = v54;
        v59 = *(v54 + 16);
        v58 = *(v54 + 24);

        if (v59 >= v58 >> 1)
        {
          sub_1DD42A2D4(v58 > 1, v59 + 1, 1, v60, v61, v62, v63);
          v54 = v82[0];
        }

        *(v54 + 16) = v59 + 1;
        v64 = v54 + 16 * v59;
        *(v64 + 32) = v56;
        *(v64 + 40) = v57;
        v55 += 10;
        --v53;
      }

      while (v53);

      v37 = v80;
      v36 = v81;
      v40 = v73;
    }

    else
    {
    }
  }

  sub_1DD3DD9B4(v36 + v74, v37, &qword_1ECCDC1B0, &unk_1DD6454F0);
  if (__swift_getEnumTagSinglePayload(v37, 1, v40) == 1)
  {
    result = sub_1DD390754(v37, &qword_1ECCDC1B0, &unk_1DD6454F0);
    v66 = 0.0;
  }

  else
  {
    v66 = *(v37 + *(v40 + 28));
    OUTLINED_FUNCTION_1_36();
    result = sub_1DD4694E4(v37, v67);
  }

  if ((*&v66 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_41;
  }

  if (v66 <= -9.22337204e18)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v66 < 9.22337204e18)
  {
    sub_1DD55D7D8(v66);
    v69 = v77;
    v68 = v78;
    sub_1DD5ADCC0();

    sub_1DD4694E4(v68, type metadata accessor for PrivatizedContactResolverConfig);
    (*(v75 + 8))(v69, v76);
    v31 = 1;
    goto LABEL_36;
  }

LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_1DD469484(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DD4694E4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DD46953C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v77[1] = a4;
  v78 = a3;
  v89 = type metadata accessor for StitchedContactResolverRecommendation(0);
  OUTLINED_FUNCTION_0();
  v82 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StitchedContactResolverRequest(0);
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v86 = v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 32);
  v15 = MEMORY[0x1E69E7CC0];
  v85 = *(v14 + 16);
  v79 = a1;
  if (v85)
  {
    v16 = 0;
    a1 = 0;
    v17 = 0;
    v84 = *(v12 + 24);
    v83 = v14 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v18 = v8 + 24;
    v19 = MEMORY[0x1E69E7CC0];
    v15 = v14;
    v80 = v14;
    v81 = v10;
    while (1)
    {
      if (v17 >= *(v15 + 16))
      {
        goto LABEL_66;
      }

      v20 = *(v10 + 72);
      v88 = v17;
      v21 = v86;
      sub_1DD469DEC(v83 + v20 * v17, v86, type metadata accessor for StitchedContactResolverRequest);
      v22 = *(v21 + v84);

      sub_1DD469E54(v21, type metadata accessor for StitchedContactResolverRequest);
      v23 = v22;
      v24 = *(v22 + 16);
      if (v24)
      {
        break;
      }

LABEL_34:
      v17 = v88 + 1;
      if (v88 + 1 == v85)
      {
        v8 = v16;
        a1 = v79;
        v15 = MEMORY[0x1E69E7CC0];
        goto LABEL_37;
      }
    }

    v25 = *(v82 + 80);
    v87 = v23;
    v26 = v23 + ((v25 + 32) & ~v25);
    v15 = *(v82 + 72);
    while (1)
    {
      sub_1DD469DEC(v26, v8, type metadata accessor for StitchedContactResolverRecommendation);
      if (*(v8 + *(type metadata accessor for ContactResolverRunTimeData(0) + 48)))
      {
        v16 = (v16 & 0xFFFFFFFFFFFFFF00) + 1;
      }

      v27 = *(v18 + *(v89 + 20));
      if (*(v18 + *(v89 + 20)))
      {
        if (v27 == 1)
        {
          v28 = a1 + 1;
          if (__OFADD__(a1, 1))
          {
            goto LABEL_65;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_1_37();
            v19 = v33;
          }

          OUTLINED_FUNCTION_4_27();
          if (v30)
          {
            OUTLINED_FUNCTION_3_27(v31);
            v19 = v34;
          }

          *(v19 + 16) = a1;
          *(v19 + v21 + 32) = 0;
          OUTLINED_FUNCTION_0_48();
          v16 = v16 & 0xFFFFFFFFFF00FFFFLL | 0x10000;
        }

        else
        {
          if (v27 != 2)
          {
            OUTLINED_FUNCTION_0_48();
            goto LABEL_31;
          }

          v28 = a1 + 1;
          if (__OFADD__(a1, 1))
          {
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            OUTLINED_FUNCTION_1_37();
            v19 = v73;
LABEL_39:
            v44 = *(v19 + 16);
            v43 = *(v19 + 24);
            if (v44 >= v43 >> 1)
            {
              sub_1DD3BF4FC(v43 > 1, v44 + 1, 1, v19);
              v19 = v74;
            }

            *(v19 + 16) = v44 + 1;
            *(v19 + v44 + 32) = 3;
            goto LABEL_42;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_1_37();
            v19 = v37;
          }

          OUTLINED_FUNCTION_4_27();
          if (v30)
          {
            OUTLINED_FUNCTION_3_27(v29);
            v19 = v38;
          }

          *(v19 + 16) = a1;
          *(v19 + v21 + 32) = 1;
          OUTLINED_FUNCTION_0_48();
          v16 = v16 & 0xFFFFFFFF00FFFFFFLL | 0x1000000;
        }
      }

      else
      {
        v28 = a1 + 1;
        if (__OFADD__(a1, 1))
        {
          goto LABEL_64;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_1_37();
          v19 = v35;
        }

        OUTLINED_FUNCTION_4_27();
        if (v30)
        {
          OUTLINED_FUNCTION_3_27(v32);
          v19 = v36;
        }

        *(v19 + 16) = a1;
        *(v19 + v21 + 32) = 2;
        OUTLINED_FUNCTION_0_48();
        v16 = v16 & 0xFFFFFFFFFFFF00FFLL | 0x100;
      }

      a1 = v28;
LABEL_31:
      v26 += v15;
      if (!--v24)
      {

        v15 = v80;
        v10 = v81;
        goto LABEL_34;
      }
    }
  }

  v8 = 0;
  v19 = MEMORY[0x1E69E7CC0];
LABEL_37:
  v16 = type metadata accessor for StitchedContactData(0);
  LODWORD(v18) = *(a1 + *(v16 + 48));
  if (v18)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_39;
  }

LABEL_42:
  if (*(a1 + *(v16 + 44)) == 1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_1_37();
      v19 = v75;
    }

    v46 = *(v19 + 16);
    v45 = *(v19 + 24);
    v47 = v46 + 1;
    v88 = v16;
    v89 = v8;
    LODWORD(v87) = v18;
    if (v46 >= v45 >> 1)
    {
      sub_1DD3BF4FC(v45 > 1, v46 + 1, 1, v19);
      v19 = v76;
    }

    *(v19 + 16) = v47;
    *(v19 + v46 + 32) = 4;
  }

  else
  {
    v47 = *(v19 + 16);
    if (!v47)
    {
      OUTLINED_FUNCTION_2_27();
      sub_1DD469E54(a1, v72);

      return 0;
    }

    LODWORD(v87) = v18;
    v88 = v16;
    v89 = v8;
  }

  v90 = v15;
  sub_1DD42A2D4(0, v47, 0, v39, v40, v41, v42);
  v48 = v90;
  v49 = 32;
  OUTLINED_FUNCTION_8_20();
  OUTLINED_FUNCTION_7_24();
  v50 = OUTLINED_FUNCTION_5_30();
  do
  {
    v62 = v58;
    v63 = v59;
    switch(*(v19 + v49))
    {
      case 1:
        v63 = 0xD000000000000014;
        v62 = v56;
        break;
      case 2:
        break;
      case 3:
        v62 = 0xE90000000000006ELL;
        v63 = v60;
        break;
      case 4:
        v63 = v50;
        v62 = v61;
        break;
      default:
        v63 = v55 + 1;
        v62 = v57;
        break;
    }

    v90 = v48;
    v65 = *(v48 + 16);
    v64 = *(v48 + 24);
    if (v65 >= v64 >> 1)
    {
      v67 = v56;
      v86 = v57;
      sub_1DD42A2D4(v64 > 1, v65 + 1, 1, v51, v52, v53, v54);
      OUTLINED_FUNCTION_5_30();
      OUTLINED_FUNCTION_7_24();
      OUTLINED_FUNCTION_8_20();
      v58 = 0xEC0000006E6F6974;
      v57 = v86;
      v56 = v67;
      v55 = 0xD000000000000014;
      v48 = v90;
    }

    *(v48 + 16) = v65 + 1;
    v66 = v48 + 16 * v65;
    *(v66 + 32) = v63;
    *(v66 + 40) = v62;
    ++v49;
    --v47;
  }

  while (v47);
  v90 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
  sub_1DD4477A4();
  v68 = sub_1DD63FD58();

  OUTLINED_FUNCTION_2_27();
  sub_1DD469E54(v69, v70);

  if (v78)
  {
  }

  return v68;
}

uint64_t sub_1DD469C60(char a1)
{
  result = 0x616D7269666E6F63;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      return result;
    case 3:
      result = 0x6F69747563657865;
      break;
    case 4:
      result = OUTLINED_FUNCTION_5_30();
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

unint64_t sub_1DD469D20(uint64_t a1)
{
  v1 = sub_1DD640AA8();

  if (v1 >= 5)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1DD469D90@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DD469D20(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DD469DC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD469C60(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DD469DEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DD469E54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for ContactResolverTaskMetrics.Event(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD469FA4()
{
  result = qword_1ECCDCF18;
  if (!qword_1ECCDCF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCF18);
  }

  return result;
}

void OUTLINED_FUNCTION_3_27(unint64_t a1@<X8>)
{

  sub_1DD3BF4FC(a1 > 1, v1, 1, v2);
}

uint64_t sub_1DD46A01C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v31 = 1;
  v30 = 1;
  v29 = 1;
  v28 = 1;
  v32 = a3 & 1;
  v11 = (a1 + *(type metadata accessor for StitchedContactResolverRecommendation(0) + 20));
  v12 = v11[2];
  v13 = *(v11 + 24);
  if (!*(v11 + 24))
  {
    sub_1DD46A2FC(a1);
    v16 = 0;
    OUTLINED_FUNCTION_2_28();
    v15 = 0;
LABEL_12:
    OUTLINED_FUNCTION_0_49();
    v22 = 2;
    v18 = 5;
    v23 = 3;
    goto LABEL_21;
  }

  v14 = *v11;
  if (v13 == 1)
  {
    v6 = *(v14 + 16);
    v30 = 0;
    if (v12)
    {
      v5 = sub_1DD52823C();
      v25 = v24;
      sub_1DD46A2FC(a1);
      if (v25)
      {
        v16 = 0;
        v5 = 0;
        v15 = 0;
        LOBYTE(v12) = 4;
        OUTLINED_FUNCTION_0_49();
        v18 = 3;
        v23 = 2;
      }

      else
      {
        v16 = 0;
        v15 = 0;
        v31 = 0;
        LOBYTE(v12) = 4;
        OUTLINED_FUNCTION_0_49();
      }
    }

    else
    {
      sub_1DD46A2FC(a1);
      v16 = 0;
      v5 = 0;
      v15 = 0;
      OUTLINED_FUNCTION_0_49();
      LOBYTE(v12) = 4;
    }

    v26 = 2;
    goto LABEL_21;
  }

  if (v13 != 2)
  {
    sub_1DD46A2FC(a1);
    v16 = 0;
    OUTLINED_FUNCTION_2_28();
    v15 = 0;
    LOBYTE(v12) = 4;
    goto LABEL_12;
  }

  v15 = *(v14 + 16);
  v28 = 0;
  if (v12)
  {
    v16 = sub_1DD52823C();
    v5 = v17;
    sub_1DD46A2FC(a1);
    if (v5)
    {
      v16 = 0;
      OUTLINED_FUNCTION_2_28();
      LOBYTE(v12) = 4;
      v18 = 5;
      v19 = 2;
      v20 = 3;
      v21 = 1;
      v22 = 2;
      v23 = 3;
    }

    else
    {
      OUTLINED_FUNCTION_2_28();
      v29 = 0;
      LOBYTE(v12) = 4;
      OUTLINED_FUNCTION_3_28();
      if (v16 < 1)
      {
        v21 = 1;
      }
    }
  }

  else
  {
    sub_1DD46A2FC(a1);
    v16 = 0;
    OUTLINED_FUNCTION_2_28();
    OUTLINED_FUNCTION_3_28();
    v19 = 1;
    v20 = 4;
    LOBYTE(v12) = 4;
  }

  v26 = 3;
LABEL_21:
  result = v30;
  *a5 = v26;
  *(a5 + 8) = a2;
  *(a5 + 16) = v32;
  *(a5 + 17) = a4 & 1;
  *(a5 + 18) = v23;
  *(a5 + 19) = v18;
  *(a5 + 20) = v22;
  *(a5 + 24) = v5;
  *(a5 + 32) = v31;
  *(a5 + 40) = v6;
  *(a5 + 48) = v30;
  *(a5 + 49) = v19;
  *(a5 + 50) = v20;
  *(a5 + 51) = v21;
  *(a5 + 56) = v16;
  *(a5 + 64) = v29;
  *(a5 + 72) = v15;
  *(a5 + 80) = v28;
  *(a5 + 81) = v12;
  return result;
}

uint64_t sub_1DD46A2FC(uint64_t a1)
{
  v2 = type metadata accessor for StitchedContactResolverRecommendation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD46A360(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 82))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 17);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD46A3AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 82) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 82) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 1;
    }
  }

  return result;
}

_BYTE *sub_1DD46A414(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1DD46A4EC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1DD46A5C4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD46A69C(uint64_t a1)
{
  v1 = sub_1DD640AA8();

  if (v1 >= 4)
  {
    return 4;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1DD46A6E8(char a1)
{
  result = 0x656C65736F747561;
  switch(a1)
  {
    case 1:
      result = 0x616D7269666E6F63;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1DD46A78C(uint64_t a1)
{
  v1 = sub_1DD640AA8();

  if (v1 >= 3)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1DD46A7D8(char a1)
{
  result = 0x64657463656C6573;
  if (a1 == 1)
  {
    return 0x656E6F646E616261;
  }

  return result;
}

unint64_t sub_1DD46A834(uint64_t a1)
{
  v1 = sub_1DD640AA8();

  if (v1 >= 5)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1DD46A880(char a1)
{
  result = 0x7473726966;
  switch(a1)
  {
    case 1:
      result = 0x327478656ELL;
      break;
    case 2:
      result = 0x337265766FLL;
      break;
    case 3:
      result = 0x64657463656C6573;
      break;
    case 4:
      result = 0x656E6F646E616261;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1DD46A93C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DD46A69C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1DD46A96C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1DD46A6E8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1DD46A9A4()
{
  result = qword_1ECCDCF20;
  if (!qword_1ECCDCF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCF20);
  }

  return result;
}

unint64_t sub_1DD46AA1C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DD46A78C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DD46AA4C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD46A7D8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1DD46AA84()
{
  result = qword_1ECCDCF28;
  if (!qword_1ECCDCF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCF28);
  }

  return result;
}

unint64_t sub_1DD46AAFC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DD46A834(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DD46AB2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD46A880(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1DD46AB64()
{
  result = qword_1ECCDCF30;
  if (!qword_1ECCDCF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCF30);
  }

  return result;
}

uint64_t ContactSearcher.init(config:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ContactSearcher(0);
  v3 = a1 + v2[5];
  *(v3 + 32) = 0;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  v4 = a1 + v2[6];
  *(v4 + 32) = 0;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(a1 + v2[7]) = 0;
  v5 = OUTLINED_FUNCTION_15_0();
  return sub_1DD46CD6C(v5, v6);
}

uint64_t type metadata accessor for ContactSearcher(uint64_t a1)
{
  result = qword_1ECCDCF58;
  if (!qword_1ECCDCF58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ContactSearcher.search(query:)(const void *a1)
{
  v2[441] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCF38, &unk_1DD664750);
  OUTLINED_FUNCTION_3(v4);
  v2[442] = OUTLINED_FUNCTION_10_23();
  v5 = sub_1DD63D168();
  v2[443] = v5;
  v2[444] = *(v5 - 8);
  v2[445] = swift_task_alloc();
  v2[446] = swift_task_alloc();
  v6 = type metadata accessor for ContactResolverConfig(0);
  v2[447] = v6;
  OUTLINED_FUNCTION_3(v6);
  v2[448] = OUTLINED_FUNCTION_10_23();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v2[449] = v7;
  v2[450] = *(v7 - 8);
  v2[451] = OUTLINED_FUNCTION_10_23();
  v8 = type metadata accessor for Contact(0);
  OUTLINED_FUNCTION_3(v8);
  v2[452] = OUTLINED_FUNCTION_10_23();
  v9 = type metadata accessor for ContactQuickResolver.ResolutionState(0);
  v2[453] = v9;
  OUTLINED_FUNCTION_3(v9);
  v2[454] = swift_task_alloc();
  v2[455] = swift_task_alloc();
  v10 = type metadata accessor for ContactQuickResolver(0);
  v2[456] = v10;
  OUTLINED_FUNCTION_3(v10);
  v2[457] = OUTLINED_FUNCTION_10_23();
  v11 = type metadata accessor for NLv4SpeechAlternativeFetcher(0);
  v2[458] = v11;
  OUTLINED_FUNCTION_3(v11);
  v2[459] = OUTLINED_FUNCTION_10_23();
  memcpy(v2 + 2, a1, 0x110uLL);

  return MEMORY[0x1EEE6DFA0](sub_1DD46AECC, 0, 0);
}

uint64_t sub_1DD46AECC()
{
  v157 = v0;
  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v1 = sub_1DD63F9F8();
  __swift_project_value_buffer(v1, qword_1EE16F068);
  sub_1DD46CD04(v0 + 16, v0 + 288);
  v2 = sub_1DD63F9D8();
  v3 = sub_1DD640368();
  sub_1DD46CD3C(v0 + 16);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v128[0] = v5;
    *v4 = 136315138;
    memcpy(__dst, (v0 + 16), 0x110uLL);
    sub_1DD46CD04(v0 + 16, v0 + 832);
    v6 = ContactSearcher.Query.description.getter();
    v8 = v7;
    memcpy((v0 + 560), __dst, 0x110uLL);
    sub_1DD46CD3C(v0 + 560);
    v9 = sub_1DD39565C(v6, v8, v128);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_1DD38D000, v2, v3, "[ContactSearcher] running query %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1E12B3DA0](v5, -1, -1);
    MEMORY[0x1E12B3DA0](v4, -1, -1);
  }

  v10 = *(v0 + 280);
  if (v10)
  {
    sub_1DD3C9478(v0 + 16, v0 + 2688);
    v11 = v10;
    v12 = sub_1DD63F9D8();
    v13 = sub_1DD640368();
    if (os_log_type_enabled(v12, v13))
    {
      *OUTLINED_FUNCTION_9() = 0;
      OUTLINED_FUNCTION_12_2(&dword_1DD38D000, v14, v15, "[ContactSearcher] fetching speech alternatives");
      OUTLINED_FUNCTION_4_6();
    }

    v16 = *(v0 + 3672);
    v17 = *(v0 + 3664);
    v18 = *(v0 + 3576);
    v19 = *(v0 + 3552);
    v20 = *(v0 + 3544);
    v21 = *(v0 + 3528);

    (*(v19 + 16))(v16, v21 + *(v18 + 32), v20);
    *(v16 + *(v17 + 20)) = v10;
    memcpy(__dst, (v0 + 16), 0x108uLL);
    sub_1DD53AD24(v128, __dst);
    memcpy((v0 + 2952), __dst, 0x108uLL);
    sub_1DD3C9580(v0 + 2952);
    sub_1DD46CE1C(v16, type metadata accessor for NLv4SpeechAlternativeFetcher);
    v23 = v128[0];
    v22 = v128[1];
    v24 = v129;
    v25 = v131;
    v101 = v133;
    v102 = v130;
    v103 = v135;
    v104 = v132;
    v105 = v137;
    v106 = v134;
    v107 = v139;
    v108 = v136;
    v109 = v141;
    v110 = v138;
    v111 = v143;
    v112 = v140;
    v113 = v145;
    v114 = v142;
    v115 = v147;
    v116 = v144;
    v117 = v148;
    v118 = v149;
    v122 = v150;
    v123 = v151;
    v121 = v152;
    v119 = v146;
    v120 = v153;
    v124 = v154;
    v125 = v155;
  }

  else
  {
    v125 = *(v0 + 272);
    v124 = *(v0 + 264);
    v122 = *(v0 + 216);
    v123 = *(v0 + 232);
    v120 = *(v0 + 256);
    v121 = *(v0 + 248);
    v117 = *(v0 + 184);
    v118 = *(v0 + 200);
    v119 = *(v0 + 168);
    v115 = *(v0 + 176);
    v116 = *(v0 + 152);
    v113 = *(v0 + 160);
    v114 = *(v0 + 136);
    v111 = *(v0 + 144);
    v112 = *(v0 + 120);
    v109 = *(v0 + 128);
    v110 = *(v0 + 104);
    v107 = *(v0 + 112);
    v108 = *(v0 + 88);
    v105 = *(v0 + 96);
    v106 = *(v0 + 72);
    v103 = *(v0 + 80);
    v104 = *(v0 + 56);
    v25 = *(v0 + 48);
    v101 = *(v0 + 64);
    v102 = *(v0 + 40);
    v24 = *(v0 + 32);
    v23 = *(v0 + 16);
    v22 = *(v0 + 24);
    sub_1DD3C9478(v0 + 16, v0 + 1104);
  }

  v26 = sub_1DD63F9D8();
  v27 = sub_1DD640368();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = OUTLINED_FUNCTION_9();
    *v28 = 0;
    _os_log_impl(&dword_1DD38D000, v26, v27, "[ContactSearcher] calling quick resolver", v28, 2u);
    OUTLINED_FUNCTION_4_6();
  }

  v29 = *(v0 + 3656);
  v30 = *(v0 + 3640);
  v31 = *(v0 + 3528);

  *(v0 + 1368) = v23;
  *(v0 + 1376) = v22;
  *(v0 + 1384) = v24;
  *(v0 + 1392) = v102;
  *(v0 + 1400) = v25;
  *(v0 + 1408) = v104;
  *(v0 + 1416) = v101;
  *(v0 + 1424) = v106;
  *(v0 + 1432) = v103;
  *(v0 + 1440) = v108;
  *(v0 + 1448) = v105;
  *(v0 + 1456) = v110;
  *(v0 + 1464) = v107;
  *(v0 + 1472) = v112;
  *(v0 + 1480) = v109;
  *(v0 + 1488) = v114;
  *(v0 + 1496) = v111;
  *(v0 + 1504) = v116;
  *(v0 + 1512) = v113;
  *(v0 + 1520) = v119;
  *(v0 + 1528) = v115;
  *(v0 + 1552) = v118;
  *(v0 + 1536) = v117;
  *(v0 + 1584) = v123;
  *(v0 + 1568) = v122;
  *(v0 + 1600) = v121;
  *(v0 + 1608) = v120;
  *(v0 + 1616) = v124;
  *(v0 + 1624) = v125;
  sub_1DD46BE64(v29);
  v32 = sub_1DD46C058();
  OUTLINED_FUNCTION_2_29();
  sub_1DD46CDC4(v31, v29 + v33);
  v29[5] = v32;
  memcpy(__dst, (v0 + 1368), 0x108uLL);
  sub_1DD3C9478(v0 + 1368, v0 + 1632);
  sub_1DD4250A0(__dst, v30);
  v34 = *(v0 + 3640);
  v35 = *(v0 + 3632);
  memcpy((v0 + 2160), __dst, 0x108uLL);
  sub_1DD3C9580(v0 + 2160);
  sub_1DD46CDC4(v34, v35);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v37 = *(v0 + 3632);
  if (EnumCaseMultiPayload == 1)
  {
    sub_1DD46CE1C(v37, type metadata accessor for ContactQuickResolver.ResolutionState);
    v38 = sub_1DD63F9D8();
    v39 = sub_1DD640368();
    if (os_log_type_enabled(v38, v39))
    {
      *OUTLINED_FUNCTION_9() = 0;
      OUTLINED_FUNCTION_12_2(&dword_1DD38D000, v40, v41, "[ContactSearcher] calling UCG");
      OUTLINED_FUNCTION_4_6();
    }

    v42 = (v0 + 3336);
    v126 = (v0 + 3376);
    v43 = *(v0 + 3584);
    v44 = *(v0 + 3576);
    v45 = *(v0 + 3568);
    v46 = *(v0 + 3560);
    v47 = *(v0 + 3552);
    v48 = *(v0 + 3544);
    v49 = *(v0 + 3528);

    sub_1DD46C300((v0 + 3216));
    OUTLINED_FUNCTION_2_29();
    sub_1DD46CDC4(v49, v43);
    v50 = *(v47 + 16);
    v50(v45, v49 + *(v44 + 32), v48);
    v51 = type metadata accessor for UCGStringTokenizer(0);
    *(v0 + 3280) = v51;
    *(v0 + 3288) = &off_1F58C4140;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 3256));
    v53 = (v50)(v46, v45, v48);
    if (sub_1DD4F9BB8(v53))
    {
      v54 = 1;
    }

    else
    {
      *(v0 + 3496) = sub_1DD63D118();
      *(v0 + 3504) = v71;
      *(v0 + 3512) = 24938;
      *(v0 + 3520) = 0xE200000000000000;
      sub_1DD3B52B8();
      sub_1DD3B530C();
      v54 = sub_1DD63FD48();
    }

    v72 = *(v0 + 3568);
    v73 = *(v0 + 3552);
    v74 = *(v0 + 3544);
    v75 = *(v0 + 3528);
    sub_1DD5E8D74(*(v0 + 3560), v54 & 1, boxed_opaque_existential_1);
    (*(v73 + 8))(v72, v74);
    sub_1DD46BE64((v0 + 3296));
    v76 = sub_1DD46C058();
    *(v0 + 3344) = 0;
    *(v0 + 3352) = 0;
    *v42 = 0;
    *(v0 + 3360) = xmmword_1DD644510;
    *v126 = 0u;
    *(v0 + 3392) = 0u;
    *(v0 + 3408) = 0;
    v77 = sub_1DD46C4B8();
    if (v77)
    {
      v78 = type metadata accessor for RelationshipLocalizer();
      v79 = &off_1F58C4130;
    }

    else
    {
      v78 = 0;
      v79 = 0;
      *(v0 + 3424) = 0u;
    }

    v80 = *(v0 + 3584);
    v81 = *(v0 + 3536);
    *(v0 + 3416) = v77;
    *(v0 + 3440) = v78;
    *(v0 + 3448) = v79;
    v82 = type metadata accessor for AsrPhoneticSequenceFetcher(0);
    __swift_storeEnumTagSinglePayload(v81, 1, 1, v82);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 3256, *(v0 + 3280));
    v83 = OUTLINED_FUNCTION_14();
    type metadata accessor for UnifiedContactGenerator(v83);
    v84 = swift_allocObject();
    *(v0 + 3480) = v51;
    *(v0 + 3488) = &off_1F58C4140;
    v85 = __swift_allocate_boxed_opaque_existential_1((v0 + 3456));
    sub_1DD46CDC4(v75, v85);
    v86 = OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_e3Orchestrator;
    *(v84 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_e3Orchestrator) = 0;
    *(v84 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator____lazy_storage___semanticRelationshipMapping) = 0;
    sub_1DD3C2388(v0 + 3216, v84 + 16);
    sub_1DD3EB3D0(v0 + 3296, v84 + 56, &qword_1ECCDCF48, &unk_1DD664BF0);
    *(v84 + 104) = v76;
    OUTLINED_FUNCTION_2_29();
    sub_1DD46CDC4(v80, v84 + v87);
    *(v84 + 96) = MEMORY[0x1E69E7CC0];
    *(v84 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_plusTrialFactors) = 0;
    sub_1DD390754(v0 + 3296, &qword_1ECCDCF48, &unk_1DD664BF0);
    OUTLINED_FUNCTION_5_31();
    sub_1DD46CE1C(v80, v88);
    __swift_destroy_boxed_opaque_existential_1((v0 + 3216));
    v89 = v84 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_e3TrialFactors;
    *v89 = 0;
    *(v89 + 8) = 1701736302;
    *(v89 + 16) = 0xE400000000000000;
    *(v89 + 24) = 0;
    *(v89 + 32) = 0;
    *(v89 + 40) = xmmword_1DD64CBD0;
    *(v89 + 56) = 0;
    v90 = v84 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_plusSuggestionHandler;
    v91 = *(v0 + 3352);
    *v90 = *v42;
    *(v90 + 16) = v91;
    *(v90 + 32) = *(v0 + 3368);
    sub_1DD3C2388(v0 + 3456, v84 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_tokenizer);
    v92 = v84 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_triggerLogger;
    v93 = *(v0 + 3392);
    *v92 = *v126;
    *(v92 + 16) = v93;
    *(v92 + 32) = *(v0 + 3408);
    sub_1DD3EB3D0(v0 + 3416, v84 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_relationshipLocalizer, &qword_1ECCDCF50, &qword_1DD664BD0);
    *(v84 + v86) = 0;
    sub_1DD390754(v0 + 3416, &qword_1ECCDCF50, &qword_1DD664BD0);
    __swift_destroy_boxed_opaque_existential_1((v0 + 3456));
    *(v84 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_asrE3VectorDbApi) = 0;
    *(v84 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_asrE3EmbedderApi) = 0;
    *(v84 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_ucgTrialFactors) = 0;
    sub_1DD3EB4B8(v81, v84 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_phoneSequenceFetcher, &qword_1ECCDCF38, &unk_1DD664750);
    __swift_destroy_boxed_opaque_existential_1((v0 + 3256));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBED8, &qword_1DD64A0A0);
    v94 = swift_allocObject();
    *(v94 + 16) = xmmword_1DD643F90;
    memcpy((v94 + 32), (v0 + 1368), 0x108uLL);
    sub_1DD3C9478(v0 + 1368, v0 + 2424);
    sub_1DD60FB88();
    v96 = v95;
    swift_setDeallocating();
    result = sub_1DD46CBB4();
    if (!*(v96 + 16))
    {
      __break(1u);
      return result;
    }

    v127 = *(v96 + 32);
    swift_bridgeObjectRetain_n();

    v97 = sub_1DD63F9D8();
    v98 = sub_1DD640368();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      *v99 = 134217984;
      *(v99 + 4) = *(v127 + 16);

      _os_log_impl(&dword_1DD38D000, v97, v98, "[ContactSearcher] UCG found %ld candidates", v99, 0xCu);
      OUTLINED_FUNCTION_4_6();
      swift_setDeallocating();
      sub_1DD621028();
      swift_deallocClassInstance();
    }

    else
    {
      swift_setDeallocating();
      sub_1DD621028();
      swift_deallocClassInstance();
    }

    v58 = *(v0 + 3656);
    v100 = *(v0 + 3640);

    sub_1DD3C9580(v0 + 1368);
    OUTLINED_FUNCTION_1_38();
    v67 = v100;
  }

  else
  {
    sub_1DD46CD6C(v37, *(v0 + 3616));
    v55 = sub_1DD63F9D8();
    v56 = sub_1DD640368();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = OUTLINED_FUNCTION_9();
      *v57 = 0;
      _os_log_impl(&dword_1DD38D000, v55, v56, "[ContactSearcher] resolved quickly", v57, 2u);
      MEMORY[0x1E12B3DA0](v57, -1, -1);
    }

    v58 = *(v0 + 3656);
    v59 = *(v0 + 3640);
    v60 = *(v0 + 3616);
    v61 = *(v0 + 3608);
    v62 = *(v0 + 3600);
    v63 = *(v0 + 3592);

    sub_1DD46CDC4(v60, v61);
    sub_1DD43038C(v61 + *(v63 + 36));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBF0, &qword_1DD644038);
    v64 = (*(v62 + 80) + 32) & ~*(v62 + 80);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_1DD643F90;
    v127 = v65;
    sub_1DD3EB4B8(v61, v65 + v64, &qword_1ECCDBBE8, &qword_1DD644470);
    sub_1DD3C9580(v0 + 1368);
    sub_1DD46CE1C(v60, type metadata accessor for Contact);
    OUTLINED_FUNCTION_1_38();
    v67 = v59;
  }

  sub_1DD46CE1C(v67, v66);
  OUTLINED_FUNCTION_0_50();
  sub_1DD46CE1C(v58, v68);
  OUTLINED_FUNCTION_6_25();

  v69 = *(v0 + 8);

  return v69(v127);
}

void sub_1DD46BE64(void *a1@<X8>)
{
  v2 = v1;
  v4 = *(type metadata accessor for ContactSearcher(0) + 20);
  sub_1DD3EB3D0(v1 + v4, &v13, &qword_1ECCDCF48, &unk_1DD664BF0);
  if (v14)
  {
    sub_1DD3AA4A8(&v13, &v15);
    sub_1DD3AA4A8(&v15, a1);
  }

  else
  {
    sub_1DD390754(&v13, &qword_1ECCDCF48, &unk_1DD664BF0);
    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v5 = sub_1DD63F9F8();
    __swift_project_value_buffer(v5, qword_1EE16F068);
    v6 = sub_1DD63F9D8();
    v7 = sub_1DD640368();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1DD38D000, v6, v7, "[ContactSearcher] initializing CNContactStore", v8, 2u);
      MEMORY[0x1E12B3DA0](v8, -1, -1);
    }

    v9 = [objc_allocWithZone(MEMORY[0x1E695CE28]) init];
    [v9 setUseOutOfProcessMapperExclusively_];
    v10 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];
    v11 = sub_1DD39638C(0, &qword_1EE1638B8, 0x1E695CE18);
    v16 = v11;
    v17 = &off_1F58B1EB8;
    *&v15 = v10;
    v12 = v10;
    sub_1DD46D108(&v15, v2 + v4);
    a1[3] = v11;
    a1[4] = &off_1F58B1EB8;

    *a1 = v12;
  }
}

uint64_t sub_1DD46C058()
{
  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v0 = sub_1DD63F9F8();
  __swift_project_value_buffer(v0, qword_1EE16F068);
  v1 = sub_1DD63F9D8();
  v2 = sub_1DD640368();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1DD38D000, v1, v2, "[ContactSearcher] finding MeCard", v3, 2u);
    MEMORY[0x1E12B3DA0](v3, -1, -1);
  }

  sub_1DD46BE64(v8);
  v4 = v9;
  v5 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  if (qword_1EE1660F0 != -1)
  {
    swift_once();
  }

  v6 = (*(v5 + 16))(qword_1EE16F080, v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

uint64_t sub_1DD46C300@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = *(type metadata accessor for ContactSearcher(0) + 24);
  sub_1DD3EB3D0(v1 + v4, &v11, &qword_1ECCDCFB8, &unk_1DD64CD60);
  if (v12)
  {
    return sub_1DD3AA4A8(&v11, a1);
  }

  sub_1DD390754(&v11, &qword_1ECCDCFB8, &unk_1DD64CD60);
  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v6 = sub_1DD63F9F8();
  __swift_project_value_buffer(v6, qword_1EE16F068);
  v7 = sub_1DD63F9D8();
  v8 = sub_1DD640368();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1DD38D000, v7, v8, "[ContactSearcher] initializing SEMSpanMatcher", v9, 2u);
    MEMORY[0x1E12B3DA0](v9, -1, -1);
  }

  v10 = [objc_opt_self() indexMatcher];
  a1[3] = sub_1DD39638C(0, &qword_1ECCDCFC0, 0x1E69CE410);
  a1[4] = &off_1F58C0818;
  *a1 = v10;
  sub_1DD390754(v2 + v4, &qword_1ECCDCFB8, &unk_1DD64CD60);
  return sub_1DD3C2388(a1, v2 + v4);
}

uint64_t sub_1DD46C4B8()
{
  v2 = v1;
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCCA0, &qword_1DD64AED0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v26 - v5);
  v7 = sub_1DD63CE68();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  v14 = *(type metadata accessor for ContactSearcher(0) + 28);
  v15 = *(v3 + v14);
  if (!v15)
  {
    v27 = v14;
    v28 = v8;
    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v16 = sub_1DD63F9F8();
    __swift_project_value_buffer(v16, qword_1EE16F068);
    v17 = sub_1DD63F9D8();
    v15 = sub_1DD640368();
    if (os_log_type_enabled(v17, v15))
    {
      v18 = swift_slowAlloc();
      v26 = v1;
      v19 = v3;
      v20 = v18;
      *v18 = 0;
      _os_log_impl(&dword_1DD38D000, v17, v15, "[ContactSearcher] initializing RelationshipDB", v18, 2u);
      v21 = v20;
      v3 = v19;
      v2 = v26;
      MEMORY[0x1E12B3DA0](v21, -1, -1);
    }

    if (qword_1EE1659B8 != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v4, qword_1EE16F038);
    sub_1DD3EB3D0(v22, v6, &qword_1ECCDCCA0, &qword_1DD64AED0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v24 = v28;
    if (EnumCaseMultiPayload == 1)
    {
      v29 = *v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
      swift_willThrowTypedImpl();
      return v15;
    }

    (*(v28 + 32))(v13, v6, v7);
    (*(v24 + 16))(v10, v13, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC258, &qword_1DD645B18);
    swift_allocObject();
    sub_1DD608CA4(v10);
    if (v2)
    {
      (*(v24 + 8))(v13, v7);
      return v15;
    }

    (*(v24 + 8))(v13, v7);
    sub_1DD58244C(&v30);

    if (!v30)
    {
      return 0;
    }

    type metadata accessor for RelationshipLocalizer();
    v15 = swift_allocObject();
    swift_allocObject();
    *(v15 + 16) = sub_1DD627AE8();
    *(v3 + v27) = v15;
  }

  return v15;
}

uint64_t ContactSearcher.Query.contactQuery.getter()
{
  memcpy(__dst, v0, 0x108uLL);
  v1 = OUTLINED_FUNCTION_15_0();
  memcpy(v1, v2, 0x108uLL);
  return sub_1DD3C9478(__dst, v4);
}

void *ContactSearcher.Query.speechPackage.getter()
{
  v1 = *(v0 + 264);
  v2 = v1;
  return v1;
}

void *ContactSearcher.Query.init(contactQuery:speechPackage:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = memcpy(a3, __src, 0x108uLL);
  a3[33] = a2;
  return result;
}

uint64_t ContactSearcher.Query.description.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = v0[33];
  v11 = 0;
  v12 = 0xE000000000000000;
  v2 = v1;
  sub_1DD6408D8();

  v11 = 0xD000000000000013;
  v12 = 0x80000001DD66CB90;
  v4 = ContactQuery.description.getter(v3);
  MEMORY[0x1E12B2260](v4);

  __dst[0] = v11;
  __dst[1] = v12;
  if (v1)
  {
    v11 = 0;
    v12 = 0xE000000000000000;
    sub_1DD6408D8();

    v11 = 0xD000000000000010;
    v12 = 0x80000001DD66CBB0;
    v5 = [v2 description];
    v6 = sub_1DD63FDD8();
    v8 = v7;

    MEMORY[0x1E12B2260](v6, v8);

    MEMORY[0x1E12B2260](v11, v12);
  }

  MEMORY[0x1E12B2260](41, 0xE100000000000000);
  return __dst[0];
}

uint64_t sub_1DD46CABC()
{
  swift_arrayDestroy();
  OUTLINED_FUNCTION_20();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD46CAFC()
{
  swift_arrayDestroy();
  OUTLINED_FUNCTION_20();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD46CBB4()
{
  swift_arrayDestroy();
  OUTLINED_FUNCTION_20();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD46CC1C(uint64_t (*a1)(void))
{
  a1(0);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_20();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD46CCBC(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_20();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD46CD6C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_14();
  v4(v3);
  OUTLINED_FUNCTION_7();
  v5 = OUTLINED_FUNCTION_15_0();
  v6(v5);
  return a2;
}

uint64_t sub_1DD46CDC4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_14();
  v4(v3);
  OUTLINED_FUNCTION_7();
  v5 = OUTLINED_FUNCTION_15_0();
  v6(v5);
  return a2;
}

uint64_t sub_1DD46CE1C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1DD46CE9C(uint64_t a1)
{
  type metadata accessor for ContactResolverConfig(319);
  if (v1 <= 0x3F)
  {
    sub_1DD46CF80(319, &qword_1ECCDCF68, &qword_1ECCDCF70, &qword_1DD64CC48);
    if (v2 <= 0x3F)
    {
      sub_1DD46CF80(319, &qword_1ECCDCF78, &qword_1ECCDCF80, &qword_1DD64CC50);
      if (v3 <= 0x3F)
      {
        sub_1DD46CFD4(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1DD46CF80(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1DD6405F8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1DD46CFD4(uint64_t a1)
{
  if (!qword_1ECCDCF88)
  {
    type metadata accessor for RelationshipLocalizer();
    v1 = sub_1DD6405F8();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECCDCF88);
    }
  }
}

uint64_t sub_1DD46D034(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 272))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD46D074(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 264) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
      *(result + 272) = 1;
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

    *(result + 272) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DD46D108(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCF48, &unk_1DD664BF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_10_23()
{

  return swift_task_alloc();
}

uint64_t type metadata accessor for ContactsFrameworkMatcher(uint64_t a1)
{
  result = qword_1EE164068;
  if (!qword_1EE164068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1DD46D204(uint64_t a1)
{
  result = sub_1DD3C6C14();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for StringTokenizer(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DD46D298(uint64_t a1, void (*a2)(uint64_t *, _OWORD *))
{
  v7 = a1;
  sub_1DD6409E8();
  while (1)
  {
    sub_1DD640A88();
    if (!*(&v6 + 1))
    {

      return v7;
    }

    v5[0] = v5[3];
    v5[1] = v5[4];
    v5[2] = v6;
    a2(&v7, v5);
    if (v2)
    {
      break;
    }

    sub_1DD390754(v5, &qword_1ECCDCFE0, &unk_1DD64CDB0);
  }

  sub_1DD390754(v5, &qword_1ECCDCFE0, &unk_1DD64CDB0);
}

uint64_t sub_1DD46D394(uint64_t a1, void (*a2)(uint64_t *, unint64_t), uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v11 = a1;
  v8 = *(a4 + 16);
  while (v8 != v7)
  {
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0) - 8);
    a2(&v11, a4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7++);
    if (v4)
    {
    }
  }

  return v11;
}

uint64_t sub_1DD46D494(uint64_t a1, void (*a2)(uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v6 = *(a4 + 16);
  v7 = (a4 + 40);
  if (!v6)
  {
    return v11;
  }

  while (1)
  {
    v8 = *v7;
    v10[0] = *(v7 - 1);
    v10[1] = v8;

    a2(&v11, v10);
    if (v4)
    {
      break;
    }

    v7 += 2;
    if (!--v6)
    {
      return v11;
    }
  }
}

uint64_t sub_1DD46D53C(uint64_t a1, void (*a2)(uint64_t *, _BYTE *), uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v6 = *(a4 + 16);
  v7 = (a4 + 32);
  if (!v6)
  {
    return v12;
  }

  while (1)
  {
    memcpy(__dst, v7, sizeof(__dst));
    memcpy(__src, v7, sizeof(__src));
    sub_1DD3EB3D0(__dst, v9, &qword_1ECCDBCA8, qword_1DD649E40);
    a2(&v12, __src);
    if (v4)
    {
      break;
    }

    memcpy(v9, __src, sizeof(v9));
    sub_1DD390754(v9, &qword_1ECCDBCA8, qword_1DD649E40);
    v7 += 104;
    if (!--v6)
    {
      return v12;
    }
  }

  memcpy(v9, __src, sizeof(v9));
  sub_1DD390754(v9, &qword_1ECCDBCA8, qword_1DD649E40);
}

uint64_t sub_1DD46D650(uint64_t *a1)
{
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  OUTLINED_FUNCTION_0();
  v143 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_1();
  v146 = v5;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_18_0();
  v138 = v7;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_18_0();
  v136 = v9;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_37_12();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_36_9();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_16_3();
  v139 = v14;
  v134 = type metadata accessor for Contact(0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2();
  v133 = v17 - v16;
  v18 = type metadata accessor for Signpost(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2();
  v22 = v21 - v20;
  if (qword_1EE166460 != -1)
  {
    goto LABEL_70;
  }

  while (1)
  {
    v23 = qword_1EE16F0C0;
    v24 = v22 + *(v18 + 5);
    *v24 = "ContactResolver.1PMatcher";
    *(v24 + 8) = 25;
    *(v24 + 16) = 2;
    v25 = v23;
    sub_1DD63F9B8();
    *(v22 + *(v18 + 6)) = v25;
    v25;
    sub_1DD6404D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1DD643F90;
    v27 = sub_1DD6408F8();
    v29 = v28;
    *(v26 + 56) = MEMORY[0x1E69E6158];
    *(v26 + 64) = sub_1DD392BD8();
    *(v26 + 32) = v27;
    *(v26 + 40) = v29;
    v135 = v22;
    sub_1DD63F998();

    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v30 = sub_1DD63F9F8();
    v31 = __swift_project_value_buffer(v30, qword_1EE16F068);
    v32 = sub_1DD63F9D8();
    sub_1DD640368();
    v33 = OUTLINED_FUNCTION_5_32();
    v22 = v139;
    if (os_log_type_enabled(v33, v34))
    {
      v35 = v31;
      v36 = swift_slowAlloc();
      *v36 = 0;
      OUTLINED_FUNCTION_38_8();
      _os_log_impl(v37, v38, v39, v40, v36, 2u);
      v31 = v35;
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    sub_1DD46E2B4(a1);
    v41 = v141;
    if (v144)
    {
      break;
    }

    v18 = a1;
    v55 = sub_1DD63F9D8();
    v56 = sub_1DD640368();

    v132 = v56;
    if (os_log_type_enabled(v55, v56))
    {
      v131 = v55;
      OUTLINED_FUNCTION_18_1();
      swift_slowAlloc();
      v57 = OUTLINED_FUNCTION_24_9();
      v56 = v57;
      v151 = v57;
      *v31 = 136315138;
      v58 = a1[2];
      v59 = MEMORY[0x1E69E7CC0];
      if (v58)
      {
        v130 = v57;
        v150 = MEMORY[0x1E69E7CC0];
        sub_1DD42B5EC(0, v58, 0);
        v59 = v150;
        OUTLINED_FUNCTION_18_3();
        v61 = a1 + v60;
        v145 = *(v62 + 72);
        do
        {
          sub_1DD3EB3D0(v61, v139, &qword_1ECCDBBE8, &qword_1DD644470);
          OUTLINED_FUNCTION_3_29();
          sub_1DD470F08(v139, v133, v63);
          sub_1DD390754(v139, &qword_1ECCDBBE8, &qword_1DD644470);
          v65 = *(v150 + 16);
          v64 = *(v150 + 24);
          if (v65 >= v64 >> 1)
          {
            v68 = OUTLINED_FUNCTION_1_0(v64);
            sub_1DD42B5EC(v68, v65 + 1, 1);
          }

          *(v150 + 16) = v65 + 1;
          OUTLINED_FUNCTION_18_3();
          sub_1DD3C95D4(v133, v150 + v66 + *(v67 + 72) * v65);
          v61 += v145;
          --v58;
        }

        while (v58);
        v56 = v130;
      }

      v69 = MEMORY[0x1E12B2430](v59, v134);
      v71 = v70;

      v72 = sub_1DD39565C(v69, v71, &v151);

      *(v31 + 4) = v72;
      OUTLINED_FUNCTION_44_9(&dword_1DD38D000, v131, v132, "raw matches: %s", v129);
      __swift_destroy_boxed_opaque_existential_1(v56);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();

      v41 = v141;
      v18 = a1;
    }

    else
    {
    }

    v73 = 0;
    v144 = v18[2];
    v147 = MEMORY[0x1E69E7CC0];
    while (v144 != v73)
    {
      if (v73 >= v18[2])
      {
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      OUTLINED_FUNCTION_34_10();
      v22 = *(v74 + 72);
      OUTLINED_FUNCTION_23_14();
      sub_1DD3EB3D0(v75, v76, v77, v78);
      v79 = v1 + *(v41 + 36);
      if (v79[*(type metadata accessor for ContactResolver.SignalSet(0) + 204)])
      {
        sub_1DD390754(v1, &qword_1ECCDBBE8, &qword_1DD644470);
        ++v73;
        v18 = a1;
      }

      else
      {
        OUTLINED_FUNCTION_23_14();
        sub_1DD3EB4B8(v80, v81, v82, v83);
        v84 = v147;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v151 = v147;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v86 = OUTLINED_FUNCTION_26_2();
          sub_1DD42B4F8(v86, v87, v88);
          v84 = v151;
        }

        v18 = a1;
        v89 = v84;
        v90 = *(v84 + 16);
        v91 = *(v89 + 24);
        v92 = v90 + 1;
        if (v90 >= v91 >> 1)
        {
          v97 = OUTLINED_FUNCTION_1_0(v91);
          v148 = v98;
          sub_1DD42B4F8(v97, v98, 1);
          v92 = v148;
          v18 = a1;
          v89 = v151;
        }

        ++v73;
        *(v89 + 16) = v92;
        v147 = v89;
        OUTLINED_FUNCTION_23_14();
        sub_1DD3EB4B8(v93, v94, v95, v96);
        v41 = v141;
      }
    }

    v99 = 0;
    v100 = MEMORY[0x1E69E7CC0];
    v1 = &qword_1ECCDBBE8;
    while (v144 != v99)
    {
      if (v99 >= v18[2])
      {
        goto LABEL_67;
      }

      OUTLINED_FUNCTION_34_10();
      v22 = *(v101 + 72);
      sub_1DD3EB3D0(v56 + v18 + v22 * v99, v2, &qword_1ECCDBBE8, &qword_1DD644470);
      v102 = v2 + *(v41 + 36);
      if (*(v102 + *(type metadata accessor for ContactResolver.SignalSet(0) + 204)) == 1)
      {
        sub_1DD3EB4B8(v2, v136, &qword_1ECCDBBE8, &qword_1DD644470);
        v103 = swift_isUniquelyReferenced_nonNull_native();
        v151 = v100;
        if ((v103 & 1) == 0)
        {
          v104 = OUTLINED_FUNCTION_26_2();
          sub_1DD42B4F8(v104, v105, v106);
          v100 = v151;
        }

        v18 = a1;
        v108 = *(v100 + 16);
        v107 = *(v100 + 24);
        v109 = v108 + 1;
        if (v108 >= v107 >> 1)
        {
          v110 = OUTLINED_FUNCTION_1_0(v107);
          v112 = v111;
          sub_1DD42B4F8(v110, v111, 1);
          v109 = v112;
          v18 = a1;
          v100 = v151;
        }

        ++v99;
        *(v100 + 16) = v109;
        sub_1DD3EB4B8(v136, v56 + v100 + v108 * v22, &qword_1ECCDBBE8, &qword_1DD644470);
        v41 = v141;
      }

      else
      {
        sub_1DD390754(v2, &qword_1ECCDBBE8, &qword_1DD644470);
        ++v99;
        v18 = a1;
      }
    }

    LOBYTE(v113) = v147;
    v114 = sub_1DD46FACC(v147);

    v151 = v114;
    sub_1DD60782C();
    v115 = sub_1DD3C67E4(v151);

    v54 = sub_1DD3C6AF8(v115);

    if (!v144)
    {
LABEL_61:

      v125 = sub_1DD63F9D8();
      v126 = sub_1DD640368();
      if (OUTLINED_FUNCTION_2_4(v126))
      {
        OUTLINED_FUNCTION_18_1();
        v127 = swift_slowAlloc();
        *v127 = 134217984;
        *(v127 + 4) = *(v54 + 16);
        _os_log_impl(&dword_1DD38D000, v125, v113, "found %ld matches after deduping", v127, 0xCu);
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
      }

      goto LABEL_64;
    }

    v113 = 0;
    v18 = a1;
    v22 = a1 + ((*(v143 + 80) + 32) & ~*(v143 + 80));
    v116 = v138;
    v136 = v22;
    v137 = (*(v143 + 80) + 32) & ~*(v143 + 80);
    while (v113 < v18[2])
    {
      v149 = *(v143 + 72);
      sub_1DD3EB3D0(v22 + v149 * v113, v116, &qword_1ECCDBBE8, &qword_1DD644470);
      v117 = v116 + *(v41 + 36);
      v118 = type metadata accessor for ContactResolver.SignalSet(0);
      if (v117[*(v118 + 140)] == 1)
      {
        v139 = v118;
        v140 = v113;
        v119 = *v116;
        v2 = v116[1];
        v1 = *(v54 + 16);

        v22 = 0;
        v120 = v137;
        while (1)
        {
          if (v1 == v22)
          {

            v41 = v141;
            v18 = a1;
LABEL_59:
            v116 = v138;
            v113 = v140;
            v22 = v136;
            goto LABEL_60;
          }

          if (v22 >= *(v54 + 16))
          {
            __break(1u);
            goto LABEL_66;
          }

          v121 = v54;
          v18 = &qword_1DD644470;
          sub_1DD3EB3D0(v54 + v120, v146, &qword_1ECCDBBE8, &qword_1DD644470);
          if (*v146 == v119 && v146[1] == v2)
          {
            break;
          }

          v123 = sub_1DD640CD8();
          sub_1DD390754(v146, &qword_1ECCDBBE8, &qword_1DD644470);
          if (v123)
          {
            goto LABEL_55;
          }

          ++v22;
          v120 += v149;
          v54 = v121;
        }

        sub_1DD390754(v146, &qword_1ECCDBBE8, &qword_1DD644470);
LABEL_55:
        v54 = v121;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1DD586A18();
          v54 = v124;
        }

        v41 = v141;
        v18 = a1;
        if (v22 < *(v54 + 16))
        {
          *(v54 + *(v139 + 140) + *(v141 + 36) + v120) = 1;
          goto LABEL_59;
        }

        goto LABEL_69;
      }

      v41 = v141;
      v18 = a1;
LABEL_60:
      ++v113;
      sub_1DD390754(v116, &qword_1ECCDBBE8, &qword_1DD644470);
      if (v113 == v144)
      {
        goto LABEL_61;
      }
    }

LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    swift_once();
  }

  v42 = v144;
  v43 = sub_1DD63F9D8();
  v44 = sub_1DD640378();

  if (os_log_type_enabled(v43, v44))
  {
    OUTLINED_FUNCTION_18_1();
    swift_slowAlloc();
    v45 = OUTLINED_FUNCTION_24_9();
    v151 = v45;
    *v31 = 136315138;
    v46 = v144;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
    v47 = sub_1DD63FE38();
    v49 = sub_1DD39565C(v47, v48, &v151);

    *(v31 + 4) = v49;
    OUTLINED_FUNCTION_38_8();
    OUTLINED_FUNCTION_44_9(v50, v51, v52, v53);
    __swift_destroy_boxed_opaque_existential_1(v45);
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

  v54 = MEMORY[0x1E69E7CC0];
LABEL_64:
  sub_1DD6404C8();
  sub_1DD63F9A8();
  sub_1DD470F64(v135, type metadata accessor for Signpost);
  return v54;
}

unint64_t sub_1DD46E2B4(uint64_t a1)
{
  v264 = type metadata accessor for ContactResolver.SignalSet(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2();
  v238 = v4 - v3;
  i = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCFC8, &qword_1DD64CD98);
  OUTLINED_FUNCTION_0();
  v227 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v230 = (&v226 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCFD0, &qword_1DD64CDA0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  OUTLINED_FUNCTION_2_1();
  v231 = v10;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_18_0();
  v232 = v12;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_16_3();
  v267 = v14;
  v270 = type metadata accessor for Contact(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_1();
  v233 = v16;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_18_0();
  v236 = v18;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v226 - v20;
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  OUTLINED_FUNCTION_0();
  v261 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2_1();
  v235 = v24;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_18_0();
  v234 = v26;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_18_0();
  v266 = v28;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_18_0();
  v273 = v30;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_16_3();
  v248 = v32;
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
  OUTLINED_FUNCTION_0();
  v34 = v33;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_2_1();
  v237 = v36;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_16_3();
  v260 = v38;
  v39 = *(a1 + 16);
  sub_1DD3BEC44(0, v39, 0, MEMORY[0x1E69E7CC0]);
  v272 = v40;
  v41 = MEMORY[0x1E69E6168];
  v282 = MEMORY[0x1E12B2590](v39, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  OUTLINED_FUNCTION_57_3();
  v256 = i;
  v42 = sub_1DD63FC88();
  v274[2] = v268;
  v43 = v271;
  sub_1DD46D394(v42, sub_1DD470EEC, v274, a1);
  v251 = v43;

  v44 = sub_1DD41B630();
  v281 = v44;
  v244 = v39;
  if (v39)
  {
    v45 = type metadata accessor for ContactsFrameworkMatcher(0);
    v46 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    v250 = v45;
    v47 = *(v45 + 20);
    v242 = a1 + v46;
    v243 = v47;
    v241 = *(v34 + 72);
    *&v48 = 136315138;
    v239 = v48;
    *&v48 = 134217984;
    v228 = v48;
    OUTLINED_FUNCTION_32_10();
    v263 = v21;
    v50 = v260;
    while (1)
    {
      v246 = v49;
      sub_1DD3EB3D0(v242 + v241 * v49, v50, &qword_1ECCDBC18, &unk_1DD6459A0);
      memcpy(v275, v50, 0xF0uLL);
      v51 = *(v50 + 240);
      v276 = *(v50 + 248);
      v279 = type metadata accessor for StringTokenizer(0);
      v280 = &off_1F58C2FE8;
      __swift_allocate_boxed_opaque_existential_1(&v277);
      OUTLINED_FUNCTION_16_19();
      sub_1DD470F08(v268 + v243, v52, v53);
      v275[30] = v51;
      sub_1DD41E258();
      MEMORY[0x1EEE9AC00](v54);
      v55 = v251;
      sub_1DD582E38();
      v57 = v56;
      v251 = v55;

      __swift_destroy_boxed_opaque_existential_1(&v277);
      v265 = v57;
      v275[0] = v57;
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
      sub_1DD4477A4();
      sub_1DD63FD58();
      v60 = v59;
      OUTLINED_FUNCTION_1_25();
      v262 = v62;
      if (!v62 || (v269 = v61, sub_1DD47EEBC(v61, v60, v282)))
      {

        OUTLINED_FUNCTION_27_12();
        if (v64 == 1 && *(v51 + 16))
        {
          v265 = v63;
          LODWORD(v262) = *(v51 + 32);
          v65 = *(v51 + 48);
          v259 = *(v51 + 40);
          v67 = *(v51 + 56);
          v66 = *(v51 + 64);
          v68 = *(v51 + 72);
          v271 = *(i + 16);
          v272 = i;
          v269 = v65;

          for (i = 0; ; ++i)
          {
            v69 = v248;
            if (v271 == i)
            {

              goto LABEL_80;
            }

            if (i >= *(v272 + 16))
            {
              goto LABEL_129;
            }

            v58 = v21;
            v70 = v272 + ((*(v261 + 80) + 32) & ~*(v261 + 80)) + *(v261 + 72) * i;
            v41 = &qword_1ECCDBBE8;
            sub_1DD3EB3D0(v70, v248, &qword_1ECCDBBE8, &qword_1DD644470);
            v71 = *v69 == v67 && v69[1] == v66;
            if (v71)
            {
              break;
            }

            v72 = sub_1DD640CD8();
            v73 = v69;
            v74 = v72;
            v75 = sub_1DD390754(v73, &qword_1ECCDBBE8, &qword_1DD644470);
            if (v74)
            {
              goto LABEL_79;
            }
          }

          v75 = sub_1DD390754(v69, &qword_1ECCDBBE8, &qword_1DD644470);
LABEL_79:
          LOBYTE(v275[0]) = v262;
          v41 = v269;
          v275[1] = v259;
          v275[2] = v269;
          v275[3] = v67;
          v275[4] = v66;
          v275[5] = v68;
          MEMORY[0x1EEE9AC00](v75);
          v153 = v251;
          v154 = sub_1DD450728();
          v251 = v153;

          if (v154)
          {
LABEL_80:
            v50 = v260;
            sub_1DD390754(v260, &qword_1ECCDBC18, &unk_1DD6459A0);
            OUTLINED_FUNCTION_32_10();
            goto LABEL_85;
          }

          v155 = v272;
          if (i >= *(v272 + 16))
          {
            goto LABEL_131;
          }

          v156 = v257;
          v58 = v264;
          v157 = v265;
          *(v70 + *(v257 + 36) + *(v264 + 204)) = 1;
          *(v70 + *(v156 + 36) + *(v58 + 208)) = *(v157 + *(v58 + 208));

          if (i >= *(v155 + 16))
          {
            goto LABEL_132;
          }

          v158 = *(v58 + 212);
          v58 = *(v157 + v158);
          *(v70 + *(v156 + 36) + v158) = v58;
          sub_1DD390754(v260, &qword_1ECCDBC18, &unk_1DD6459A0);
          if (i >= *(v155 + 16))
          {
            goto LABEL_133;
          }

          *(v70 + *(v270 + 92)) = v58 ^ 1;
          OUTLINED_FUNCTION_32_10();
          v50 = v260;
        }

        else
        {
          sub_1DD390754(v50, &qword_1ECCDBC18, &unk_1DD6459A0);
          v41 = v264;
        }

        goto LABEL_85;
      }

      v271 = v60;
      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v76 = sub_1DD63F9F8();
      v77 = __swift_project_value_buffer(v76, qword_1EE16F068);
      v78 = v271;

      v247 = v77;
      v79 = sub_1DD63F9D8();
      v80 = sub_1DD640368();

      if (os_log_type_enabled(v79, v80))
      {
        OUTLINED_FUNCTION_18_1();
        swift_slowAlloc();
        v81 = OUTLINED_FUNCTION_24_9();
        v82 = OUTLINED_FUNCTION_26_13(v81);
        *(v58 + 4) = sub_1DD39565C(v82, v78, v83);
        OUTLINED_FUNCTION_44_9(&dword_1DD38D000, v79, v80, "running standard fts search on %s", v226);
        __swift_destroy_boxed_opaque_existential_1(v81);
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
      }

      v58 = *(v268 + 3);
      __swift_project_boxed_opaque_existential_1(v268, v58);
      v84 = OUTLINED_FUNCTION_57_3();
      v85 = v251;
      v87 = v86(v84);
      v251 = v85;
      if (v85)
      {
        sub_1DD390754(v260, &qword_1ECCDBC18, &unk_1DD6459A0);

        i = v281;
        goto LABEL_98;
      }

      v88 = v87;
      v89 = sub_1DD63F9D8();
      v90 = sub_1DD640368();
      if (OUTLINED_FUNCTION_2_4(v90))
      {
        OUTLINED_FUNCTION_18_1();
        v91 = swift_slowAlloc();
        *v91 = v228;
        *(v91 + 4) = sub_1DD3CC020();
        _os_log_impl(&dword_1DD38D000, v89, v58, "found %ld contacts via standard search", v91, 0xCu);
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
      }

      v92 = v271;

      sub_1DD56CE00(v275, v269, v92, v93, v94, v95, v96, v97, v226, v227, v228, *(&v228 + 1), v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, *(&v239 + 1), v240, v241, v242, v243, v244, v245);

      v98 = sub_1DD3CC020();
      v50 = v260;
      v259 = v98;
      if (v98)
      {
        break;
      }

LABEL_76:

      sub_1DD390754(v50, &qword_1ECCDBC18, &unk_1DD6459A0);

LABEL_85:
      v49 = v246 + 1;
      if (v246 + 1 == v244)
      {
        v58 = v281;
        goto LABEL_88;
      }
    }

    OUTLINED_FUNCTION_27_12();
    v253 = v99;
    v255 = v88 & 0xC000000000000001;
    v249 = v88 + 32;
    OUTLINED_FUNCTION_31_11();
    if (!v71)
    {
      v100 = v101;
    }

    v252 = v100;

    v102 = 0;
    v254 = v88;
    while (1)
    {
      v103 = v255;
      sub_1DD408BFC();
      if (v103)
      {
        v104 = MEMORY[0x1E12B2C10](v102, v88);
      }

      else
      {
        v104 = *(v249 + 8 * v102);
      }

      v105 = v104;
      if (__OFADD__(v102++, 1))
      {
        __break(1u);
LABEL_129:
        __break(1u);
        goto LABEL_130;
      }

      v272 = i;
      sub_1DD470814(v104, v50, v21);
      OUTLINED_FUNCTION_3_29();
      v107 = v273;
      sub_1DD470F08(v21, v273, v108);
      v109 = v107 + *(v257 + 36);
      sub_1DD470F08(v253, v109, type metadata accessor for ContactResolver.SignalSet);
      *(v109 + 338) = 1;
      v110 = [v105 isSuggested];
      *(v107 + *(v270 + 84)) = v110;
      *(v109 + 332) = [v105 isSuggested];
      *(v109 + 337) = [v105 hasSuggestedProperties];

      v112 = sub_1DD41859C(v111);
      v113 = sub_1DD470954(v112, v107);
      v114 = v113;
      LODWORD(v107) = v113;

      *(v109 + 333) = v114 & 1;
      *(v109 + 334) = v107 > 0xFF;
      if (v107 < 0x100)
      {
        v115 = 0;
      }

      else
      {
        v115 = *(v109 + v41[35]);
      }

      v116 = v267;
      *(v109 + v41[36]) = v115;
      OUTLINED_FUNCTION_1_25();
      if (v117)
      {
        if (v269 == sub_1DD63FE58() && v271 == v118)
        {
          v120 = 1;
        }

        else
        {
          v120 = sub_1DD640CD8();
        }

        v116 = v267;
      }

      else
      {
        v120 = 0;
      }

      *(v109 + v41[33] + 15) = v120 & 1;
      v121 = *v273;
      v122 = *(v273 + 8);
      sub_1DD59B7D8();
      v123 = v256;
      if (__swift_getEnumTagSinglePayload(v116, 1, v256) == 1)
      {
        sub_1DD390754(v116, &qword_1ECCDCFD0, &qword_1DD64CDA0);
      }

      else
      {
        v124 = *v116;
        sub_1DD390754(v116 + *(v123 + 48), &qword_1ECCDBC18, &unk_1DD6459A0);
        *(v109 + 339) = 1;
        *(v109 + 344) = v124;
        sub_1DD581CB8(v121, v122);
      }

      v125 = v271;
      *(v273 + *(v270 + 92)) = v252;
      v277 = 0;
      v278 = 0xE000000000000000;
      v275[0] = v269;
      v275[1] = v125;
      v275[2] = 0;
      v275[3] = v262;
      swift_bridgeObjectRetain_n();
      v21 = v263;
      while (1)
      {
        v126 = sub_1DD63FF88();
        if (!v127)
        {
          break;
        }

        v128 = v126;
        v121 = v127;
        if ((sub_1DD63FD18() & 1) == 0)
        {
          MEMORY[0x1E12B2250](v128, v121);
        }
      }

      OUTLINED_FUNCTION_20_14();
      while (1)
      {
        v129 = sub_1DD63FF88();
        if (!v130)
        {
          break;
        }

        v131 = v129;
        v121 = v130;
        if ((sub_1DD63FD38() & 1) == 0)
        {
          MEMORY[0x1E12B2250](v131, v121);
        }
      }

      OUTLINED_FUNCTION_20_14();
      while (1)
      {
        v132 = sub_1DD63FF88();
        if (!v133)
        {
          break;
        }

        v134 = v132;
        v121 = v133;
        if ((sub_1DD63FD08() & 1) == 0)
        {
          MEMORY[0x1E12B2250](v134, v121);
        }
      }

      v135 = v277;
      v136 = v278;
      if (sub_1DD63FF08() >= 3)
      {

        v137 = *(sub_1DD4189F4(v135, v136) + 16);

        v41 = v264;
        if (v137 > 1)
        {
          goto LABEL_67;
        }
      }

      else
      {
        v41 = v264;
      }

      if ((v114 & 1) != 0 || *(v268 + *(v250 + 24)) == 1)
      {
LABEL_67:
        sub_1DD3EB3D0(v273, v266, &qword_1ECCDBBE8, &qword_1DD644470);
        i = v272;
        v139 = *(v272 + 16);
        v138 = *(v272 + 24);
        if (v139 >= v138 >> 1)
        {
          v151 = OUTLINED_FUNCTION_1_0(v138);
          sub_1DD3BEC44(v151, v139 + 1, 1, i);
          i = v152;
        }

        OUTLINED_FUNCTION_2_30();
        sub_1DD470F64(v21, v140);
        *(i + 16) = v139 + 1;
        OUTLINED_FUNCTION_18_3();
        v143 = i + v141 + *(v142 + 72) * v139;
        v58 = &qword_1DD644470;
        sub_1DD3EB4B8(v266, v143, &qword_1ECCDBBE8, &qword_1DD644470);
        goto LABEL_74;
      }

      v144 = v271;

      v145 = sub_1DD63F9D8();
      v146 = sub_1DD640368();

      if (os_log_type_enabled(v145, v146))
      {
        OUTLINED_FUNCTION_18_1();
        swift_slowAlloc();
        v147 = OUTLINED_FUNCTION_24_9();
        v148 = OUTLINED_FUNCTION_26_13(v147);
        *(v121 + 4) = sub_1DD39565C(v148, v144, v149);
        OUTLINED_FUNCTION_44_9(&dword_1DD38D000, v145, v146, "Match was not added because it was a short partial match: %s", v226);
        __swift_destroy_boxed_opaque_existential_1(v147);
        v41 = v264;
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
      }

      else
      {
      }

      OUTLINED_FUNCTION_2_30();
      v21 = v263;
      sub_1DD470F64(v263, v150);
      i = v272;
      v58 = &qword_1DD644470;
LABEL_74:
      sub_1DD390754(v273, &qword_1ECCDBBE8, &qword_1DD644470);
      v50 = v260;
      v88 = v254;
      if (v102 == v259)
      {

        goto LABEL_76;
      }
    }
  }

  v58 = v44;
  OUTLINED_FUNCTION_32_10();
LABEL_88:
  if (*(v58 + 16))
  {
    if (qword_1EE165FB0 != -1)
    {
      goto LABEL_134;
    }

    while (1)
    {
      v159 = sub_1DD63F9F8();
      __swift_project_value_buffer(v159, qword_1EE16F068);

      v160 = sub_1DD63F9D8();
      v161 = sub_1DD640368();
      if (os_log_type_enabled(v160, v161))
      {
        OUTLINED_FUNCTION_18_1();
        v162 = swift_slowAlloc();
        *v162 = 134217984;
        *(v162 + 4) = *(v58 + 16);
        _os_log_impl(&dword_1DD38D000, v160, v161, "running findContacts for %ld IDs", v162, 0xCu);
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
      }

      v163 = *(v268 + 3);
      v164 = *(v268 + 4);
      __swift_project_boxed_opaque_existential_1(v268, v163);

      v58 = sub_1DD594058(v58);
      v165 = v251;
      v166 = (*(v164 + 32))(v58, MEMORY[0x1E69E7CC0], v163, v164);
      v251 = v165;
      if (v165)
      {
        break;
      }

      v167 = v166;

      v168 = sub_1DD63F9D8();
      v169 = sub_1DD640368();
      if (OUTLINED_FUNCTION_2_4(v169))
      {
        OUTLINED_FUNCTION_18_1();
        v170 = swift_slowAlloc();
        *v170 = 134217984;
        *(v170 + 4) = sub_1DD3CC020();

        _os_log_impl(&dword_1DD38D000, v168, v58, "found %ld contacts from IDs", v170, 0xCu);
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
      }

      else
      {
      }

      v268 = sub_1DD3CC020();
      if (!v268)
      {
        goto LABEL_125;
      }

      v266 = v167;
      v267 = v167 & 0xC000000000000001;
      v263 = "ContactResolver.1PMatcher";
      v265 = "meworkMatcher.swift";
      v273 = 4;
      while (1)
      {
        v272 = i;
        v171 = v267;
        v172 = v273 - 4;
        sub_1DD408BFC();
        v173 = v171 ? MEMORY[0x1E12B2C10](v172, v167) : *(v167 + 8 * v273);
        if (__OFADD__(v172, 1))
        {
          break;
        }

        v269 = (v172 + 1);
        v271 = v173;
        v174 = [v173 identifier];
        sub_1DD63FDD8();

        if (*(v258 + 16))
        {
          v175 = v258;
          v176 = sub_1DD3978DC();
          v178 = v177;

          v179 = v232;
          if (v178)
          {
            sub_1DD3EB3D0(*(v175 + 56) + *(v227 + 72) * v176, v232, &qword_1ECCDCFC8, &qword_1DD64CD98);
            v180 = 0;
          }

          else
          {
            v180 = 1;
          }

          v181 = v256;
          v182 = v231;
        }

        else
        {

          v180 = 1;
          v181 = v256;
          v182 = v231;
          v179 = v232;
        }

        __swift_storeEnumTagSinglePayload(v179, v180, 1, v181);
        sub_1DD3EB3D0(v179, v182, &qword_1ECCDCFD0, &qword_1DD64CDA0);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v182, 1, v181);
        v184 = v233;
        v185 = MEMORY[0x1E69E7CC0];
        if (EnumTagSinglePayload == 1)
        {

          sub_1DD390754(v182, &qword_1ECCDCFD0, &qword_1DD64CDA0);
          type metadata accessor for InferenceError();
          swift_allocObject();
          v224 = sub_1DD4DE96C(66, 0, 0xE000000000000000, 0xD000000000000093, v263 | 0x8000000000000000, 0xD000000000000018, v265 | 0x8000000000000000, 181, v185, 2);
          *(v224 + 24) = 0;
          *(v224 + 32) = 0xE000000000000000;

          sub_1DD426968();
          swift_allocError();
          *v225 = v224;
          swift_willThrow();

          sub_1DD390754(v179, &qword_1ECCDCFD0, &qword_1DD64CDA0);
          i = v272;
          goto LABEL_98;
        }

        sub_1DD390754(v179, &qword_1ECCDCFD0, &qword_1DD64CDA0);
        v186 = v182;
        v187 = v230;
        sub_1DD3EB4B8(v186, v230, &qword_1ECCDCFC8, &qword_1DD64CD98);
        v188 = *v187;
        v189 = v187 + *(v181 + 48);
        v190 = v237;
        sub_1DD3EB4B8(v189, v237, &qword_1ECCDBC18, &unk_1DD6459A0);
        v191 = v271;
        sub_1DD40B108();
        v192 = *(v190 + 184);
        v193 = v238;
        if (v192)
        {
          v194 = v184;
          v195 = *(v190 + 176);
          v196 = *(v194 + 216);
          v197 = OUTLINED_FUNCTION_57_3();
          sub_1DD41D254(v197, v198, v192);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v217 = OUTLINED_FUNCTION_26_2();
            sub_1DD3BF940(v217, v218, v219, v196);
            v196 = v220;
          }

          v200 = *(v196 + 16);
          v199 = *(v196 + 24);
          if (v200 >= v199 >> 1)
          {
            v221 = OUTLINED_FUNCTION_1_0(v199);
            sub_1DD3BF940(v221, v200 + 1, 1, v196);
            v196 = v222;
          }

          v201 = OUTLINED_FUNCTION_57_3();
          sub_1DD4178B4(v201, v202, v192);
          *(v196 + 16) = v200 + 1;
          v203 = (v196 + 48 * v200);
          v203[4] = 0;
          v203[5] = 0xE000000000000000;
          v203[6] = v195;
          v203[7] = v192;
          v203[8] = 0;
          v203[9] = 0xE000000000000000;
          v184 = v233;
          *(v233 + 216) = v196;
          v41 = v264;
          v190 = v237;
          v193 = v238;
        }

        v204 = v190 + *(v245 + 36);
        if (*(v204 + v41[51]))
        {
          v205 = (*(v204 + v41[53]) & 1) == 0;
        }

        else
        {
          v205 = 2;
        }

        *(v184 + *(v270 + 92)) = v205;
        v206 = v236;
        sub_1DD3C95D4(v184, v236);
        sub_1DD470F08(v204, v193, type metadata accessor for ContactResolver.SignalSet);
        *(v193 + 339) = 1;
        *(v193 + 344) = v188;
        OUTLINED_FUNCTION_3_29();
        v207 = v234;
        sub_1DD470F08(v206, v234, v208);
        sub_1DD470F08(v193, v207 + *(v257 + 36), type metadata accessor for ContactResolver.SignalSet);
        sub_1DD3EB3D0(v207, v235, &qword_1ECCDBBE8, &qword_1DD644470);
        i = v272;
        v210 = *(v272 + 16);
        v209 = *(v272 + 24);
        v211 = v273;
        if (v210 >= v209 >> 1)
        {
          v215 = OUTLINED_FUNCTION_1_0(v209);
          sub_1DD3BEC44(v215, v210 + 1, 1, i);
          i = v216;
        }

        v167 = v266;

        v58 = &qword_1DD644470;
        sub_1DD390754(v234, &qword_1ECCDBBE8, &qword_1DD644470);
        sub_1DD470F64(v238, type metadata accessor for ContactResolver.SignalSet);
        OUTLINED_FUNCTION_2_30();
        sub_1DD470F64(v236, v212);
        sub_1DD390754(v237, &qword_1ECCDBC18, &unk_1DD6459A0);
        *(i + 16) = v210 + 1;
        OUTLINED_FUNCTION_18_3();
        sub_1DD3EB4B8(v235, i + v213 + *(v214 + 72) * v210, &qword_1ECCDBBE8, &qword_1DD644470);
        v273 = v211 + 1;
        if (v269 == v268)
        {
          goto LABEL_125;
        }
      }

LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

LABEL_98:
  }

  else
  {
LABEL_125:
  }

  return i;
}

uint64_t *sub_1DD46FACC(uint64_t *a1)
{
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v191 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_18_0();
  v197 = v11;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_36_9();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v191 - v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_18_0();
  v195 = v17;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v191 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v191 - v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_18_0();
  v193 = v25;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_18_0();
  v192 = v27;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_37_12();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_18_0();
  v194 = v30;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v31);
  v33 = (&v191 - v32);
  v34 = *(v1 + *(type metadata accessor for ContactsFrameworkMatcher(0) + 24));
  v198 = a1;
  if (v34 == 1)
  {
    v197 = v23;
    v35 = 0;
    v36 = a1[2];
    v196 = MEMORY[0x1E69E7CC0];
    v37 = a1;
    while (v36 != v35)
    {
      OUTLINED_FUNCTION_1_39();
      OUTLINED_FUNCTION_19_16();
      sub_1DD3EB3D0(v38, v39, v40, v41);
      OUTLINED_FUNCTION_21_13();
      v43 = v33 + v42;
      if (v43[333] == 1 && v43[334] == 1)
      {
        OUTLINED_FUNCTION_19_16();
        sub_1DD3EB4B8(v44, v45, v46, v47);
        v48 = OUTLINED_FUNCTION_43_10();
        v200 = v37;
        if ((v48 & 1) == 0)
        {
          OUTLINED_FUNCTION_10_24(v37[2]);
          v37 = v200;
        }

        v49 = v37[3];
        if (v37[2] >= v49 >> 1)
        {
          v54 = OUTLINED_FUNCTION_8_21(v49);
          v195 = v55;
          v196 = v56;
          sub_1DD42B4F8(v54, v56, 1);
        }

        ++v35;
        OUTLINED_FUNCTION_29_9();
        OUTLINED_FUNCTION_19_16();
        sub_1DD3EB4B8(v50, v51, v52, v53);
        v37 = v198;
      }

      else
      {
        sub_1DD390754(v33, &qword_1ECCDBBE8, &qword_1DD644470);
        ++v35;
      }
    }

    OUTLINED_FUNCTION_39_7();
    if (v71)
    {
      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v72 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_22_12(v72, qword_1EE16F068);
      v73 = sub_1DD63F9D8();
      sub_1DD640368();
      v74 = OUTLINED_FUNCTION_5_32();
      if (os_log_type_enabled(v74, v75))
      {
LABEL_99:
        OUTLINED_FUNCTION_18_1();
        v176 = swift_slowAlloc();
        OUTLINED_FUNCTION_9_20(v176, 3.852e-34);
        OUTLINED_FUNCTION_38_8();
        _os_log_impl(v177, v178, v179, v180, v176, 0xCu);
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();

        return v33;
      }

LABEL_100:

      return v33;
    }

    v80 = 0;
    v33 = MEMORY[0x1E69E7CC0];
    while (v36 != v80)
    {
      OUTLINED_FUNCTION_1_39();
      OUTLINED_FUNCTION_19_16();
      sub_1DD3EB3D0(v81, v82, v83, v84);
      OUTLINED_FUNCTION_21_13();
      if (*(v3 + v85 + 333) == 1 && (type metadata accessor for ContactResolver.SignalSet(0), OUTLINED_FUNCTION_41_7(), (v86 & 1) == 0))
      {
        OUTLINED_FUNCTION_19_16();
        sub_1DD3EB4B8(v87, v88, v89, v90);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v200 = v33;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_10_24(v33[2]);
          v33 = v200;
        }

        v92 = v33;
        v93 = v33[2];
        v94 = v92[3];
        v95 = v93 + 1;
        if (v93 >= v94 >> 1)
        {
          v100 = OUTLINED_FUNCTION_8_21(v94);
          v196 = v101;
          sub_1DD42B4F8(v100, v101, 1);
          v95 = v196;
          v92 = v200;
        }

        ++v80;
        v92[2] = v95;
        OUTLINED_FUNCTION_19_16();
        sub_1DD3EB4B8(v96, v97, v98, v99);
        v33 = v92;
      }

      else
      {
        sub_1DD390754(v3, &qword_1ECCDBBE8, &qword_1DD644470);
        ++v80;
      }
    }

    if (v33[2])
    {
      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v125 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_22_12(v125, qword_1EE16F068);
      v73 = sub_1DD63F9D8();
      sub_1DD640368();
      v126 = OUTLINED_FUNCTION_5_32();
      if (os_log_type_enabled(v126, v127))
      {
        goto LABEL_99;
      }

      goto LABEL_100;
    }

    v132 = 0;
    v33 = MEMORY[0x1E69E7CC0];
LABEL_66:
    v133 = v193;
    while (v36 != v132)
    {
      OUTLINED_FUNCTION_1_39();
      OUTLINED_FUNCTION_19_16();
      sub_1DD3EB3D0(v134, v135, v136, v137);
      OUTLINED_FUNCTION_21_13();
      if ((*(v133 + v138 + *(type metadata accessor for ContactResolver.SignalSet(0) + 140)) & 1) != 0 || (OUTLINED_FUNCTION_41_7(), (v139 & 1) == 0))
      {
        OUTLINED_FUNCTION_19_16();
        sub_1DD3EB4B8(v140, v141, v142, v143);
        v144 = swift_isUniquelyReferenced_nonNull_native();
        v200 = v33;
        if ((v144 & 1) == 0)
        {
          OUTLINED_FUNCTION_10_24(v33[2]);
          v33 = v200;
        }

        v146 = v33[2];
        v145 = v33[3];
        v147 = v33;
        if (v146 >= v145 >> 1)
        {
          v152 = OUTLINED_FUNCTION_8_21(v145);
          sub_1DD42B4F8(v152, v146 + 1, 1);
          v147 = v200;
        }

        ++v132;
        v147[2] = v146 + 1;
        OUTLINED_FUNCTION_19_16();
        sub_1DD3EB4B8(v148, v149, v150, v151);
        v33 = v147;
        goto LABEL_66;
      }

      sub_1DD390754(v133, &qword_1ECCDBBE8, &qword_1DD644470);
      ++v132;
    }

    if (v33[2])
    {
      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v169 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_22_12(v169, qword_1EE16F068);
      v73 = sub_1DD63F9D8();
      sub_1DD640368();
      v170 = OUTLINED_FUNCTION_5_32();
      if (os_log_type_enabled(v170, v171))
      {
        goto LABEL_99;
      }

      goto LABEL_100;
    }
  }

  else
  {
    v193 = v9;
    v194 = v2;
    v57 = 0;
    v58 = a1[2];
    v196 = MEMORY[0x1E69E7CC0];
    v33 = &qword_1ECCDBBE8;
    v59 = a1;
    while (v58 != v57)
    {
      OUTLINED_FUNCTION_1_39();
      sub_1DD3EB3D0(v60 + v9 * v57, v20, &qword_1ECCDBBE8, &qword_1DD644470);
      OUTLINED_FUNCTION_21_13();
      v62 = &v20[v61];
      if (v20[v61 + 333] == 1 && ((v62[334] & 1) != 0 || (type metadata accessor for ContactResolver.SignalSet(0), OUTLINED_FUNCTION_41_7(), (v64 & 1) == 0) && (v62[*(v63 + 148)] & 1) == 0))
      {
        sub_1DD3EB4B8(v20, v195, &qword_1ECCDBBE8, &qword_1DD644470);
        v65 = OUTLINED_FUNCTION_43_10();
        v200 = v62;
        if ((v65 & 1) == 0)
        {
          OUTLINED_FUNCTION_10_24(*(v62 + 2));
          v62 = v200;
        }

        v66 = *(v62 + 3);
        if (*(v62 + 2) >= v66 >> 1)
        {
          v68 = OUTLINED_FUNCTION_8_21(v66);
          v196 = v69;
          v192 = v70;
          sub_1DD42B4F8(v68, v69, 1);
        }

        ++v57;
        OUTLINED_FUNCTION_29_9();
        sub_1DD3EB4B8(v195, v67, &qword_1ECCDBBE8, &qword_1DD644470);
        v59 = v198;
      }

      else
      {
        sub_1DD390754(v20, &qword_1ECCDBBE8, &qword_1DD644470);
        ++v57;
        v59 = v198;
      }
    }

    OUTLINED_FUNCTION_39_7();
    if (v76)
    {
      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v77 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_22_12(v77, qword_1EE16F068);
      v73 = sub_1DD63F9D8();
      sub_1DD640368();
      v78 = OUTLINED_FUNCTION_5_32();
      if (os_log_type_enabled(v78, v79))
      {
        goto LABEL_99;
      }

      goto LABEL_100;
    }

    v102 = 0;
    v196 = MEMORY[0x1E69E7CC0];
    v33 = &qword_1DD644470;
    while (v58 != v102)
    {
      OUTLINED_FUNCTION_1_39();
      OUTLINED_FUNCTION_23_14();
      sub_1DD3EB3D0(v103, v104, v105, v106);
      OUTLINED_FUNCTION_21_13();
      v108 = &v15[v107];
      if (v15[v107 + *(type metadata accessor for ContactResolver.SignalSet(0) + 140)] & 1) == 0 && ((OUTLINED_FUNCTION_41_7(), (v110) || (v108[*(v109 + 148)]))
      {
        sub_1DD390754(v15, &qword_1ECCDBBE8, &qword_1DD644470);
        ++v102;
        v59 = v198;
      }

      else
      {
        OUTLINED_FUNCTION_23_14();
        sub_1DD3EB4B8(v111, v112, v113, v114);
        v115 = OUTLINED_FUNCTION_43_10();
        v200 = v108;
        if ((v115 & 1) == 0)
        {
          OUTLINED_FUNCTION_10_24(*(v108 + 2));
          v108 = v200;
        }

        v117 = *(v108 + 2);
        v116 = *(v108 + 3);
        v118 = v117 + 1;
        if (v117 >= v116 >> 1)
        {
          v123 = OUTLINED_FUNCTION_8_21(v116);
          v196 = v124;
          sub_1DD42B4F8(v123, v124, 1);
          v118 = v196;
          v108 = v200;
        }

        ++v102;
        *(v108 + 2) = v118;
        v196 = v108;
        OUTLINED_FUNCTION_23_14();
        sub_1DD3EB4B8(v119, v120, v121, v122);
        v59 = v198;
      }
    }

    OUTLINED_FUNCTION_39_7();
    if (v128)
    {
      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v129 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_22_12(v129, qword_1EE16F068);
      v73 = sub_1DD63F9D8();
      sub_1DD640368();
      v130 = OUTLINED_FUNCTION_5_32();
      if (os_log_type_enabled(v130, v131))
      {
        goto LABEL_99;
      }

      goto LABEL_100;
    }

    v153 = 0;
    v196 = MEMORY[0x1E69E7CC0];
    v154 = &qword_1ECCDBBE8;
    v33 = &qword_1DD644470;
    while (v58 != v153)
    {
      v155 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v156 = *(v6 + 72);
      v157 = v59 + v155 + v156 * v153;
      v158 = v197;
      v159 = v154;
      sub_1DD3EB3D0(v157, v197, v154, &qword_1DD644470);
      OUTLINED_FUNCTION_21_13();
      v161 = v158 + v160;
      switch(*(v158 + v160 + 256))
      {
        case 1:

          v59 = v198;
          goto LABEL_81;
        default:
          v162 = sub_1DD640CD8();

          v59 = v198;
          if ((v162 & 1) == 0)
          {
            goto LABEL_84;
          }

LABEL_81:
          if (*(v161 + 333) == 1 && (v163 = type metadata accessor for ContactResolver.SignalSet(0), *(v161 + *(v163 + 148)) == 1) && *(v161 + *(v163 + 132) + 15) == 1)
          {
            sub_1DD3EB4B8(v197, v193, v159, &qword_1DD644470);
            v164 = OUTLINED_FUNCTION_43_10();
            v200 = v59;
            if ((v164 & 1) == 0)
            {
              OUTLINED_FUNCTION_10_24(v59[2]);
              v59 = v200;
            }

            v166 = v59[2];
            v165 = v59[3];
            if (v166 >= v165 >> 1)
            {
              v168 = OUTLINED_FUNCTION_8_21(v165);
              sub_1DD42B4F8(v168, v166 + 1, 1);
              v59 = v200;
            }

            ++v153;
            v59[2] = v166 + 1;
            v196 = v59;
            v167 = v59 + v155 + v166 * v156;
            v154 = v159;
            sub_1DD3EB4B8(v193, v167, v159, &qword_1DD644470);
            v59 = v198;
          }

          else
          {
LABEL_84:
            v154 = v159;
            sub_1DD390754(v197, v159, &qword_1DD644470);
            ++v153;
          }

          break;
      }
    }

    OUTLINED_FUNCTION_39_7();
    if (v172)
    {
      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v173 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_22_12(v173, qword_1EE16F068);
      v73 = sub_1DD63F9D8();
      sub_1DD640368();
      v174 = OUTLINED_FUNCTION_5_32();
      if (os_log_type_enabled(v174, v175))
      {
        goto LABEL_99;
      }

      goto LABEL_100;
    }
  }

  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v182 = sub_1DD63F9F8();
  __swift_project_value_buffer(v182, qword_1EE16F068);
  v183 = sub_1DD63F9D8();
  sub_1DD640368();
  v184 = OUTLINED_FUNCTION_5_32();
  if (os_log_type_enabled(v184, v185))
  {
    v186 = swift_slowAlloc();
    *v186 = 0;
    OUTLINED_FUNCTION_38_8();
    _os_log_impl(v187, v188, v189, v190, v186, 2u);
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1DD470814@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1;
  sub_1DD40B108();
  v6 = a2[23];
  if (v6)
  {
    v8 = a2[21];
    v7 = a2[22];
    v9 = *(a3 + 216);
    sub_1DD41D254(v8, v7, a2[23]);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = OUTLINED_FUNCTION_26_2();
      sub_1DD3BF940(v18, v19, v20, v9);
      v9 = v21;
    }

    v11 = *(v9 + 16);
    v10 = *(v9 + 24);
    if (v11 >= v10 >> 1)
    {
      v22 = OUTLINED_FUNCTION_1_0(v10);
      sub_1DD3BF940(v22, v11 + 1, 1, v9);
      v9 = v23;
    }

    sub_1DD4178B4(v8, v7, v6);
    *(v9 + 16) = v11 + 1;
    v12 = (v9 + 48 * v11);
    v12[4] = 0;
    v12[5] = 0xE000000000000000;
    v12[6] = v7;
    v12[7] = v6;
    v12[8] = 0;
    v12[9] = 0xE000000000000000;
    *(a3 + 216) = v9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
  type metadata accessor for ContactResolver.SignalSet(0);
  OUTLINED_FUNCTION_31_11();
  if (v15)
  {
    v16 = v13;
  }

  else
  {
    v16 = v14;
  }

  result = type metadata accessor for Contact(0);
  *(a3 + *(result + 92)) = v16;
  return result;
}

uint64_t sub_1DD470954(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for ContactsFrameworkMatcher(0) + 20);
  v17[3] = type metadata accessor for StringTokenizer(0);
  v17[4] = &off_1F58C2FE8;
  __swift_allocate_boxed_opaque_existential_1(v17);
  OUTLINED_FUNCTION_16_19();
  sub_1DD470F08(v3 + v6, v7, v8);
  sub_1DD40FC64();
  sub_1DD582E38();
  v10 = v9;

  v11 = sub_1DD41859C(v10);
  __swift_destroy_boxed_opaque_existential_1(v17);
  sub_1DD586D00(v3 + v6, 1, a2);
  v12 = sub_1DD5839F8(v11, a1);

  v13 = OUTLINED_FUNCTION_15_0();
  LOBYTE(a1) = sub_1DD5839F8(v13, v14);

  if (a1)
  {
    v15 = 256;
  }

  else
  {
    v15 = 0;
  }

  return v15 & 0xFFFFFFFE | v12 & 1;
}

void sub_1DD470A74(void *a1, uint64_t a2, uint64_t a3)
{
  v46 = a3;
  v44 = a1;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCFC8, &qword_1DD64CD98);
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v41 = (&v39 - v6);
  v52 = sub_1DD63E428();
  v8 = MEMORY[0x1EEE9AC00](v52);
  v51 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a2;
  v53 = *(a2 + 240);
  v50 = *(v53 + 16);
  if (!v50)
  {
    return;
  }

  v10 = 0;
  v48 = (v7 + 8);
  v49 = (v7 + 104);
  v47 = *MEMORY[0x1E69D1AE8];
  v11 = (v53 + 72);
  while (v10 < *(v53 + 16))
  {
    v55 = *(v11 - 40);
    v12 = *(v11 - 4);
    v13 = *(v11 - 3);
    v14 = *(v11 - 1);
    v54 = *(v11 - 2);
    v15 = *v11;
    v17 = v51;
    v16 = v52;
    (*v49)(v51, v47, v52, v8);

    v18 = v14;

    v19 = sub_1DD63E418();
    v21 = v20;
    (*v48)(v17, v16);
    if (v12 == v19 && v13 == v21)
    {
    }

    else
    {
      v23 = sub_1DD640CD8();

      if ((v23 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    if (((*(v46 + *(type metadata accessor for ContactsFrameworkMatcher(0) + 28)) | v55) & 1) == 0)
    {
LABEL_18:

      goto LABEL_22;
    }

    v24 = v41;
    v25 = *(v42 + 48);
    *v41 = v15;
    sub_1DD3EB3D0(v43, v24 + v25, &qword_1ECCDBC18, &unk_1DD6459A0);
    sub_1DD3EB4B8(v24, v45, &qword_1ECCDCFC8, &qword_1DD64CD98);
    v26 = v44;
    swift_isUniquelyReferenced_nonNull_native();
    v56 = *v26;
    v27 = v56;
    v28 = sub_1DD3978DC();
    if (__OFADD__(v27[2], (v29 & 1) == 0))
    {
      goto LABEL_25;
    }

    v30 = v28;
    v31 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCFD8, &qword_1DD64CDA8);
    if (sub_1DD640A08())
    {
      v32 = sub_1DD3978DC();
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_27;
      }

      v30 = v32;
    }

    v34 = v56;
    if (v31)
    {
      sub_1DD471024(v45, v56[7] + *(v40 + 72) * v30);
    }

    else
    {
      v56[(v30 >> 6) + 8] |= 1 << v30;
      v35 = (v34[6] + 16 * v30);
      *v35 = v54;
      v35[1] = v18;
      sub_1DD3EB4B8(v45, v34[7] + *(v40 + 72) * v30, &qword_1ECCDCFC8, &qword_1DD64CD98);

      v36 = v34[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_26;
      }

      v34[2] = v38;
    }

    *v44 = v34;
LABEL_22:
    ++v10;
    v11 += 6;
    if (v50 == v10)
    {
      return;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1DD640D58();
  __break(1u);
}

uint64_t sub_1DD470F08(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7();
  v4 = OUTLINED_FUNCTION_15_0();
  v5(v4);
  return a2;
}

uint64_t sub_1DD470F64(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7();
  (*(v3 + 8))(a1);
  return a1;
}

BOOL sub_1DD470FBC(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_1DD5867DC(v7, v8);
}

uint64_t sub_1DD471024(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCFC8, &qword_1DD64CD98);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_10_24(uint64_t a1@<X8>)
{

  sub_1DD42B4F8(0, a1 + 1, 1);
}

double OUTLINED_FUNCTION_22_12(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return result;
}

uint64_t OUTLINED_FUNCTION_24_9()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_26_13(uint64_t a1)
{
  *(v1 + 424) = a1;
  *v2 = *(v1 + 112);
  return *(v1 + 360);
}

uint64_t OUTLINED_FUNCTION_43_10()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

void OUTLINED_FUNCTION_44_9(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t ContactSlotResolutionTask.init(queries:config:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[5] = a1;
  v5 = type metadata accessor for ContactSlotResolutionTask(0);
  sub_1DD472E74(a2, a3 + *(v5 + 24), type metadata accessor for ContactResolverConfig);
  v6 = type metadata accessor for ContactResolver(0);
  swift_allocObject();
  v7 = ContactResolver.init()();
  a3[3] = v6;
  a3[4] = &off_1F58B3CC8;
  *a3 = v7;
  return sub_1DD472F1C(a2, type metadata accessor for ContactResolverConfig);
}

uint64_t type metadata accessor for ContactSlotResolutionTask(uint64_t a1)
{
  result = qword_1EE1614E8;
  if (!qword_1EE1614E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

const char *ContactSlotResolutionTask.run(withAlreadyResolvedSlots:)()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBED0, &qword_1DD64A050);
  v94 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v95 = &v81 - v4;
  v5 = type metadata accessor for ContactSlotResolutionTask(0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v92 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ContactResolverRunTimeData(0);
  OUTLINED_FUNCTION_0();
  v96 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v81 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
  OUTLINED_FUNCTION_0();
  v91 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v81 - v19;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v21 = v2[5];
  sub_1DD43DA04(v21, v2 + *(v6 + 32), v22, v23, v24, v25, v26, v27, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92);
  if (!v1)
  {
    v29 = v28;
    v87 = 0;
    v88 = v21;
    v89 = v2;
    v90 = v16;
    v100 = v12;
    if (qword_1EE165FB0 != -1)
    {
      goto LABEL_30;
    }

    while (1)
    {
      v30 = sub_1DD63F9F8();
      v31 = __swift_project_value_buffer(v30, qword_1EE16F068);

      v32 = sub_1DD63F9D8();
      v33 = sub_1DD640368();

      v34 = os_log_type_enabled(v32, v33);
      v93 = v29;
      v35 = v90;
      if (v34)
      {
        HIDWORD(v86) = v33;
        v36 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v102 = v84;
        v85 = v36;
        *v36 = 136315138;
        v37 = *(v29 + 16);
        v38 = v29;
        v39 = MEMORY[0x1E69E7CC0];
        if (v37)
        {
          v97 = v15;
          v82 = v32;
          v83 = v31;
          v99 = v8;
          v101 = MEMORY[0x1E69E7CC0];
          v40 = OUTLINED_FUNCTION_3_30();
          sub_1DD42BA74(v40, v41, v42);
          v39 = v101;
          OUTLINED_FUNCTION_18_3();
          v44 = v38 + v43;
          v98 = *(v45 + 72);
          v46 = v91;
          do
          {
            v47 = v97;
            sub_1DD472E74(v44, v97, type metadata accessor for ContactResolverRunTimeData);
            sub_1DD472ED0(v47 + *(v99 + 40), v20, &qword_1ECCDBEE0, &unk_1DD645510);
            sub_1DD472F1C(v47, type metadata accessor for ContactResolverRunTimeData);
            v101 = v39;
            v49 = *(v39 + 16);
            v48 = *(v39 + 24);
            if (v49 >= v48 >> 1)
            {
              sub_1DD42BA74((v48 > 1), v49 + 1, 1);
              v46 = v91;
              v39 = v101;
            }

            *(v39 + 16) = v49 + 1;
            sub_1DD472F7C(v20, v39 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v49, &qword_1ECCDBEE0, &unk_1DD645510);
            v44 += v98;
            --v37;
          }

          while (v37);
          v51 = v93;
          v8 = v99;
          v32 = v82;
          v35 = v90;
        }

        else
        {
          v51 = v38;
        }

        v52 = MEMORY[0x1E12B2430](v39, v35);
        v54 = v53;

        v55 = sub_1DD39565C(v52, v54, &v102);

        v56 = v85;
        *(v85 + 1) = v55;
        _os_log_impl(&dword_1DD38D000, v32, BYTE4(v86), "Contact recommendations: %s", v56, 0xCu);
        v57 = v84;
        __swift_destroy_boxed_opaque_existential_1(v84);
        MEMORY[0x1E12B3DA0](v57, -1, -1);
        MEMORY[0x1E12B3DA0](v56, -1, -1);

        v50 = v88;
        v29 = v51;
      }

      else
      {

        v50 = v88;
      }

      v58 = MEMORY[0x1E69E7CC0];
      v15 = *(v50 + 16);
      if (v15 != *(v29 + 16))
      {
        break;
      }

      if (!v15)
      {

        return MEMORY[0x1E69E7CC0];
      }

      v59 = v87;
      v99 = v8;
      v102 = MEMORY[0x1E69E7CC0];
      sub_1DD42BBC8(0, v15, 0);
      v60 = 0;
      v16 = v102;
      OUTLINED_FUNCTION_18_3();
      v98 = v29 + v62;
      v8 = v100;
      while (v60 < *(v29 + 16))
      {
        sub_1DD472E74(v98 + *(v61 + 72) * v60, v8, type metadata accessor for ContactResolverRunTimeData);
        v63 = v99;
        v64 = sub_1DD45E2B8();
        sub_1DD45DC70();
        v65 = *(v63 + 52);
        v8 = v100;
        v20 = v95;
        sub_1DD471B60(v64, v66, v100[v65], v95);
        if (v59)
        {
          OUTLINED_FUNCTION_0_51();

          return v16;
        }

        OUTLINED_FUNCTION_0_51();

        v102 = v16;
        v68 = *(v16 + 2);
        v67 = *(v16 + 3);
        if (v68 >= v67 >> 1)
        {
          sub_1DD42BBC8((v67 > 1), v68 + 1, 1);
          v16 = v102;
        }

        ++v60;
        *(v16 + 2) = v68 + 1;
        OUTLINED_FUNCTION_18_3();
        sub_1DD472F7C(v20, &v16[v69 + *(v70 + 72) * v68], &qword_1ECCDBED0, &qword_1DD64A050);
        v29 = v93;
        v61 = v96;
        if (v15 == v60)
        {

          return v16;
        }
      }

      __break(1u);
LABEL_30:
      swift_once();
    }

    v71 = v92;
    sub_1DD472E74(v89, v92, type metadata accessor for ContactSlotResolutionTask);

    v72 = sub_1DD63F9D8();
    v73 = sub_1DD640378();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 134218240;
      v75 = v29;
      v76 = *(*(v71 + 40) + 16);
      OUTLINED_FUNCTION_1_40();
      *(v74 + 4) = v76;
      *(v74 + 12) = 2048;
      v77 = *(v75 + 16);

      *(v74 + 14) = v77;

      _os_log_impl(&dword_1DD38D000, v72, v73, "Original query count (%ld) doesn't match recommendations count (%ld). Results may be truncated.", v74, 0x16u);
      MEMORY[0x1E12B3DA0](v74, -1, -1);
    }

    else
    {

      OUTLINED_FUNCTION_1_40();
    }

    v16 = "findAllMatches(queries:)";
    type metadata accessor for InferenceError();
    swift_allocObject();
    v78 = sub_1DD4DE96C(30, 0, 0xE000000000000000, 0xD00000000000007FLL, 0x80000001DD66CCB0, 0xD00000000000001ELL, 0x80000001DD66CD30, 49, v58, 1);
    sub_1DD426968();
    swift_allocError();
    *v79 = v78;
    swift_willThrow();
  }

  return v16;
}

void sub_1DD471B60(int a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v86 = a2;
  v83 = a1;
  v84 = a3;
  v85 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC268, &qword_1DD64CE00);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v87 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v88 = &v78 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v81 = &v78 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v78 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v78 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v78 - v17;
  v19 = type metadata accessor for Contact(0);
  v91 = *(v19 - 8);
  v92 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v89 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v78 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v90 = &v78 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v79 = &v78 - v27;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE08, &qword_1DD644158);
  MEMORY[0x1EEE9AC00](v82);
  v78 = &v78 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v78 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v80 = (&v78 - v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v78 - v35;
  sub_1DD472ED0(v93, &v78 - v35, &qword_1ECCDBEE0, &unk_1DD645510);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v57 = v89;
      sub_1DD3C95D4(v36, v89);
      v58 = v88;
      sub_1DD472E74(v57, v88, type metadata accessor for Contact);
      v59 = v92;
      __swift_storeEnumTagSinglePayload(v58, 0, 1, v92);
      v60 = v87;
      sub_1DD472ED0(v58, v87, &qword_1ECCDC268, &qword_1DD64CE00);
      if (__swift_getEnumTagSinglePayload(v60, 1, v59) == 1)
      {
        sub_1DD425B4C(v60);
        type metadata accessor for InferenceError();
        swift_allocObject();
        v61 = sub_1DD4DE96C(66, 0, 0xE000000000000000, 0xD000000000000086, 0x80000001DD66CD50, 0xD000000000000023, 0x80000001DD66CDE0, 19, MEMORY[0x1E69E7CC0], 2);
        *(v61 + 24) = 0;
        *(v61 + 32) = 0xE000000000000000;

        sub_1DD426968();
        swift_allocError();
        *v62 = v61;
        swift_willThrow();
        sub_1DD425B4C(v58);
        v41 = v57;
        goto LABEL_15;
      }

      sub_1DD425B4C(v58);
      sub_1DD472F1C(v57, type metadata accessor for Contact);
      v69 = v60;
      v70 = v78;
      sub_1DD3C95D4(v69, v78);
      goto LABEL_21;
    case 2u:
      v42 = *v36;
      v43 = *(*v36 + 16);
      if (v43)
      {
        v94 = MEMORY[0x1E69E7CC0];
        sub_1DD42B5EC(0, v43, 0);
        v44 = 0;
        v45 = *(v91 + 80);
        v93 = v94;
        v87 = (v45 + 32) & ~v45;
        v88 = v42;
        v89 = v42 + v87;
        v78 = "run(withAlreadyResolvedSlots:)";
        v81 = "ResolutionResult.swift";
        v46 = v79;
        do
        {
          if (v44 >= *(v42 + 16))
          {
            __break(1u);
            return;
          }

          v47 = v90;
          v48 = *(v91 + 72);
          sub_1DD472E74(v89 + v48 * v44, v90, type metadata accessor for Contact);
          sub_1DD472E74(v47, v18, type metadata accessor for Contact);
          v49 = v92;
          __swift_storeEnumTagSinglePayload(v18, 0, 1, v92);
          sub_1DD472ED0(v18, v15, &qword_1ECCDC268, &qword_1DD64CE00);
          if (__swift_getEnumTagSinglePayload(v15, 1, v49) == 1)
          {

            sub_1DD425B4C(v15);
            type metadata accessor for InferenceError();
            swift_allocObject();
            v71 = sub_1DD4DE96C(66, 0, 0xE000000000000000, 0xD000000000000086, v78 | 0x8000000000000000, 0xD000000000000023, v81 | 0x8000000000000000, 22, MEMORY[0x1E69E7CC0], 2);
            *(v71 + 24) = 0;
            *(v71 + 32) = 0xE000000000000000;

            sub_1DD426968();
            swift_allocError();
            *v72 = v71;
            swift_willThrow();
            sub_1DD425B4C(v18);
            sub_1DD472F1C(v47, type metadata accessor for Contact);

            return;
          }

          sub_1DD425B4C(v18);
          sub_1DD472F1C(v47, type metadata accessor for Contact);
          sub_1DD3C95D4(v15, v46);
          v50 = v93;
          v94 = v93;
          v51 = v46;
          v53 = *(v93 + 16);
          v52 = *(v93 + 24);
          if (v53 >= v52 >> 1)
          {
            sub_1DD42B5EC(v52 > 1, v53 + 1, 1);
            v50 = v94;
          }

          ++v44;
          *(v50 + 16) = v53 + 1;
          v93 = v50;
          sub_1DD3C95D4(v51, v50 + v87 + v53 * v48);
          v46 = v51;
          v42 = v88;
        }

        while (v43 != v44);

        v73 = v93;
      }

      else
      {

        v73 = MEMORY[0x1E69E7CC0];
      }

      v70 = v80;
      *v80 = v73;
LABEL_21:
      swift_storeEnumTagMultiPayload();
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBED0, &qword_1DD64A050);
      v64 = v85;
      v75 = v86;
      v76 = v85 + *(v74 + 36);
      v77 = v84;
      *v76 = v83;
      *(v76 + 8) = v75;
      *(v76 + 16) = v77;
      v68 = v70;
      goto LABEL_22;
    case 3u:
      v54 = v85;
      swift_storeEnumTagMultiPayload();
      v55 = v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBED0, &qword_1DD64A050) + 36);
      v56 = v84;
      *v55 = v83;
      *(v55 + 8) = v86;
      *(v55 + 16) = v56;
      goto LABEL_23;
    default:
      sub_1DD3C95D4(v36, v23);
      sub_1DD472E74(v23, v12, type metadata accessor for Contact);
      v37 = v92;
      __swift_storeEnumTagSinglePayload(v12, 0, 1, v92);
      v38 = v81;
      sub_1DD472ED0(v12, v81, &qword_1ECCDC268, &qword_1DD64CE00);
      if (__swift_getEnumTagSinglePayload(v38, 1, v37) == 1)
      {
        sub_1DD425B4C(v38);
        type metadata accessor for InferenceError();
        swift_allocObject();
        v39 = sub_1DD4DE96C(66, 0, 0xE000000000000000, 0xD000000000000086, 0x80000001DD66CD50, 0xD000000000000023, 0x80000001DD66CDE0, 17, MEMORY[0x1E69E7CC0], 2);
        *(v39 + 24) = 0;
        *(v39 + 32) = 0xE000000000000000;

        sub_1DD426968();
        swift_allocError();
        *v40 = v39;
        swift_willThrow();
        sub_1DD425B4C(v12);
        v41 = v23;
LABEL_15:
        sub_1DD472F1C(v41, type metadata accessor for Contact);
      }

      else
      {
        sub_1DD425B4C(v12);
        sub_1DD472F1C(v23, type metadata accessor for Contact);
        sub_1DD3C95D4(v38, v31);
        swift_storeEnumTagMultiPayload();
        v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBED0, &qword_1DD64A050);
        v64 = v85;
        v65 = v86;
        v66 = v85 + *(v63 + 36);
        v67 = v84;
        *v66 = v83;
        *(v66 + 8) = v65;
        *(v66 + 16) = v67;
        v68 = v31;
LABEL_22:
        sub_1DD472F7C(v68, v64, &qword_1ECCDBE08, &qword_1DD644158);
LABEL_23:
      }

      return;
  }
}

void sub_1DD4725F4(unint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  switch(a2)
  {
    case 1:
      *a3 = a1;
      *(a3 + 8) = 1;
      goto LABEL_19;
    case 2:
      if (a1 >> 62)
      {
        goto LABEL_22;
      }

      v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      break;
    case 3:
      *a3 = 0;
      v8 = 3;
      goto LABEL_17;
    default:
      *a3 = a1;
      *(a3 + 8) = 0;
LABEL_19:

      return;
  }

  while (1)
  {
    v6 = MEMORY[0x1E69E7CC0];
    if (!v5)
    {
      break;
    }

    v9 = MEMORY[0x1E69E7CC0];
    sub_1DD640988();
    if (v5 < 0)
    {
      __break(1u);
      return;
    }

    v7 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E12B2C10](v7, a1);
        goto LABEL_13;
      }

      if ((v7 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

LABEL_13:
      ++v7;
      sub_1DD640958();
      sub_1DD640998();
      sub_1DD6409A8();
      sub_1DD640968();
      if (v5 == v7)
      {
        v6 = v9;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    v5 = sub_1DD6407B8();
  }

LABEL_15:
  *a3 = v6;
  v8 = 2;
LABEL_17:
  *(a3 + 8) = v8;
}

void *sub_1DD472784@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0x2C9uLL);
  switch(sub_1DD472DB0(__dst))
  {
    case 1u:
      nullsub_1();
      memcpy(v19, v1, 0x2C9uLL);
      nullsub_1();
      memcpy(__src, v17, 0x2C8uLL);
      sub_1DD472E60(__src);
      memcpy(a1, __src, 0x2C9uLL);
      OUTLINED_FUNCTION_6_26();
      nullsub_1();
      goto LABEL_12;
    case 2u:
      nullsub_1();
      OUTLINED_FUNCTION_6_26();
      nullsub_1();
      v6 = *v5;
      v7 = *(*v5 + 16);
      v8 = MEMORY[0x1E69E7CC0];
      if (v7)
      {
        v18[0] = MEMORY[0x1E69E7CC0];
        v9 = OUTLINED_FUNCTION_3_30();
        sub_1DD42BDE0(v9, v10, v11);
        v8 = v18[0];
        v12 = (v6 + 32);
        do
        {
          memcpy(__src, v12, 0x2C8uLL);
          sub_1DD472DF8(__src, v19);
          v18[0] = v8;
          v14 = *(v8 + 16);
          v13 = *(v8 + 24);
          if (v14 >= v13 >> 1)
          {
            sub_1DD42BDE0(v13 > 1, v14 + 1, 1);
            v8 = v18[0];
          }

          *(v8 + 16) = v14 + 1;
          memcpy((v8 + 712 * v14 + 32), __src, 0x2C8uLL);
          v12 += 712;
          --v7;
        }

        while (v7);
      }

      __src[0] = v8;
      sub_1DD472E54(__src);
      v15 = __src;
      goto LABEL_10;
    case 3u:
      sub_1DD472DC8(v21);
      v15 = v21;
LABEL_10:
      result = memcpy(a1, v15, 0x2C9uLL);
      break;
    default:
      nullsub_1();
      memcpy(v19, v1, 0x2C9uLL);
      nullsub_1();
      memcpy(__src, v3, 0x2C8uLL);
      sub_1DD472E6C(__src);
      memcpy(a1, __src, 0x2C9uLL);
      OUTLINED_FUNCTION_6_26();
      nullsub_1();
LABEL_12:
      result = sub_1DD472DF8(v4, v18);
      break;
  }

  return result;
}

uint64_t sub_1DD4729B0@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0x81uLL);
  switch(sub_1DD472D58(__dst))
  {
    case 1u:
      nullsub_1();
      memcpy(v58, v1, 0x81uLL);
      nullsub_1();
      memcpy(__src, v33, 0x80uLL);
      sub_1DD472D9C(__src);
      v34 = memcpy(a1, __src, 0x81uLL);
      OUTLINED_FUNCTION_5_33(v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58[0], v58[1], v58[2], v58[3], v58[4], v58[5], v58[6], v58[7], v58[8], v58[9], v58[10], v58[11], v58[12], v58[13], v58[14], v58[15], v58[16], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15], __src[16]);
      nullsub_1();
      goto LABEL_12;
    case 2u:
      nullsub_1();
      OUTLINED_FUNCTION_5_33(v13, v14, v15, v16, v17, v18, v19, v20, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58[0], v58[1], v58[2], v58[3], v58[4], v58[5], v58[6], v58[7], v58[8], v58[9], v58[10], v58[11], v58[12], v58[13], v58[14], v58[15], v58[16], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15], __src[16]);
      nullsub_1();
      v22 = *v21;
      v23 = *(*v21 + 16);
      v24 = MEMORY[0x1E69E7CC0];
      if (v23)
      {
        v42 = MEMORY[0x1E69E7CC0];
        v25 = OUTLINED_FUNCTION_3_30();
        sub_1DD42BEAC(v25, v26, v27);
        v24 = v42;
        v28 = (v22 + 32);
        do
        {
          memcpy(__src, v28, 0x80uLL);
          sub_1DD400BFC(__src, v58);
          v42 = v24;
          v30 = *(v24 + 16);
          v29 = *(v24 + 24);
          if (v30 >= v29 >> 1)
          {
            sub_1DD42BEAC(v29 > 1, v30 + 1, 1);
            v24 = v42;
          }

          *(v24 + 16) = v30 + 1;
          memcpy((v24 + (v30 << 7) + 32), __src, 0x80uLL);
          v28 += 128;
          --v23;
        }

        while (v23);
      }

      __src[0] = v24;
      sub_1DD472D90(__src);
      v31 = __src;
      goto LABEL_10;
    case 3u:
      sub_1DD472D70(v60);
      v31 = v60;
LABEL_10:
      result = memcpy(a1, v31, 0x81uLL);
      break;
    default:
      nullsub_1();
      memcpy(v58, v1, 0x81uLL);
      nullsub_1();
      memcpy(__src, v3, 0x80uLL);
      sub_1DD472DA8(__src);
      v4 = memcpy(a1, __src, 0x81uLL);
      OUTLINED_FUNCTION_5_33(v4, v5, v6, v7, v8, v9, v10, v11, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58[0], v58[1], v58[2], v58[3], v58[4], v58[5], v58[6], v58[7], v58[8], v58[9], v58[10], v58[11], v58[12], v58[13], v58[14], v58[15], v58[16], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15], __src[16]);
      nullsub_1();
LABEL_12:
      result = sub_1DD400BFC(v12, &v42);
      break;
  }

  return result;
}

void sub_1DD472C10(uint64_t a1)
{
  sub_1DD472CAC();
  if (v1 <= 0x3F)
  {
    sub_1DD472D08();
    if (v2 <= 0x3F)
    {
      type metadata accessor for ContactResolverConfig(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1DD472CAC()
{
  result = qword_1EE162920;
  if (!qword_1EE162920)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE162920);
  }

  return result;
}

void sub_1DD472D08()
{
  if (!qword_1EE160310)
  {
    v0 = sub_1DD640178();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE160310);
    }
  }
}

uint64_t sub_1DD472D58(uint64_t a1)
{
  if (*(a1 + 128) <= 2u)
  {
    return *(a1 + 128);
  }

  else
  {
    return (*a1 + 3);
  }
}

double sub_1DD472D70(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 3;
  return result;
}

uint64_t sub_1DD472DB0(uint64_t a1)
{
  if (*(a1 + 712) <= 2u)
  {
    return *(a1 + 712);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_1DD472E74(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2_31();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DD472ED0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_3_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2_31();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_1DD472F1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DD472F7C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_3_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2_31();
  (*(v6 + 32))(v4, v5);
  return v4;
}

SiriInference::ContinentName::Value_optional __swiftcall ContinentName.Value.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640AA8();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

SiriInference::ContinentName __swiftcall ContinentName.init(value:prefix:)(SiriInference::ContinentName::Value value, SiriInference::ContinentName::Prefix_optional prefix)
{
  v3 = *prefix.value;
  *v2 = *value;
  v2[1] = v3;
  result.value = value;
  return result;
}

uint64_t ContinentName.Value.rawValue.getter()
{
  result = 0x6D41206874726F4ELL;
  switch(*v0)
  {
    case 1:
      result = 0x6D41206874756F53;
      break;
    case 2:
      result = 0x6369747261746E41;
      break;
    case 3:
      result = 0x616369726641;
      break;
    case 4:
      result = 0x65706F727545;
      break;
    case 5:
      result = 1634300737;
      break;
    case 6:
      result = 0x61697361727545;
      break;
    case 7:
      result = 0x61696E6165634FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD473154@<X0>(uint64_t *a1@<X8>)
{
  result = ContinentName.Value.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriInference::ContinentName::Prefix_optional __swiftcall ContinentName.Prefix.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640AA8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ContinentName.Prefix.rawValue.getter()
{
  v1 = 28265;
  if (*v0 != 1)
  {
    v1 = 1918985582;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E656E69746E6F63;
  }
}

uint64_t sub_1DD473304@<X0>(uint64_t *a1@<X8>)
{
  result = ContinentName.Prefix.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static ContinentName.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1);
  v3 = *(a2 + 1);
  if ((sub_1DD3B1024() & 1) == 0)
  {
    return 0;
  }

  result = v3 == 3 && v2 == 3;
  if (v2 != 3 && v3 != 3)
  {

    return sub_1DD3B1204(v2, v3);
  }

  return result;
}

uint64_t sub_1DD473470(uint64_t a1)
{
  v2 = sub_1DD47385C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD4734AC(uint64_t a1)
{
  v2 = sub_1DD47385C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ContinentName.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCFE8, &qword_1DD64CE18);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  v10 = *v1;
  v13 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD47385C();
  sub_1DD640EF8();
  v17 = v10;
  v16 = 0;
  sub_1DD4738B0();
  sub_1DD640C68();
  if (!v2)
  {
    v15 = v13;
    v14 = 1;
    sub_1DD473904();
    sub_1DD640C08();
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t ContinentName.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD008, &qword_1DD64CE20);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD47385C();
  sub_1DD640ED8();
  if (!v2)
  {
    v17 = 0;
    sub_1DD473958();
    OUTLINED_FUNCTION_32_0();
    sub_1DD640B78();
    v11 = v18;
    v15 = 1;
    sub_1DD4739AC();
    OUTLINED_FUNCTION_32_0();
    sub_1DD640B18();
    (*(v7 + 8))(v10, v5);
    v12 = v16;
    *a2 = v11;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DD47385C()
{
  result = qword_1ECCDCFF0;
  if (!qword_1ECCDCFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCFF0);
  }

  return result;
}

unint64_t sub_1DD4738B0()
{
  result = qword_1ECCDCFF8;
  if (!qword_1ECCDCFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCFF8);
  }

  return result;
}

unint64_t sub_1DD473904()
{
  result = qword_1ECCDD000;
  if (!qword_1ECCDD000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD000);
  }

  return result;
}

unint64_t sub_1DD473958()
{
  result = qword_1ECCDD010;
  if (!qword_1ECCDD010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD010);
  }

  return result;
}

unint64_t sub_1DD4739AC()
{
  result = qword_1ECCDD018;
  if (!qword_1ECCDD018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD018);
  }

  return result;
}

unint64_t sub_1DD473A04()
{
  result = qword_1ECCDD020;
  if (!qword_1ECCDD020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD020);
  }

  return result;
}

unint64_t sub_1DD473A5C()
{
  result = qword_1ECCDD028;
  if (!qword_1ECCDD028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD028);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContinentName(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 65283 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65283 < 0xFF0000)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (v4)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v3 == 2)
      {
        v4 = a1[1];
        if (!a1[1])
        {
          goto LABEL_17;
        }

LABEL_15:
        v5 = (*a1 | (v4 << 16)) - 65284;
        return (v5 + 1);
      }

      v4 = *(a1 + 2);
      if (*(a1 + 2))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  if (v6 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = *(a1 + 1);
  }

  v8 = v7 - 4;
  if (v6 < 3)
  {
    v5 = -1;
  }

  else
  {
    v5 = v8;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ContinentName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65283 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65283 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 16) + 1;
    *result = a2 - 253;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          *(result + 1) = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContinentName.Value(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContinentName.Prefix(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContinentName.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD473EB4()
{
  result = qword_1ECCDD030;
  if (!qword_1ECCDD030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD030);
  }

  return result;
}

unint64_t sub_1DD473F0C()
{
  result = qword_1ECCDD038;
  if (!qword_1ECCDD038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD038);
  }

  return result;
}

unint64_t sub_1DD473F64()
{
  result = qword_1ECCDD040;
  if (!qword_1ECCDD040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD040);
  }

  return result;
}

unint64_t sub_1DD473FB8()
{
  result = qword_1ECCDD048;
  if (!qword_1ECCDD048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD048);
  }

  return result;
}

unint64_t sub_1DD47400C()
{
  result = qword_1ECCDD050;
  if (!qword_1ECCDD050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD050);
  }

  return result;
}

uint64_t sub_1DD474060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = sub_1DD63D328();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2();
  v10 = v9 - v8;
  v11 = sub_1DD63D2D8();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2();
  v17 = v16 - v15;
  v18 = sub_1DD63D078();
  OUTLINED_FUNCTION_0();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2();
  v24 = v23 - v22;
  v60 = *(a2 + 1);
  (*(v20 + 16))(v23 - v22, a3 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_date, v18);
  v25 = OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_calendar;
  swift_beginAccess();
  (*(v13 + 16))(v17, a3 + v25, v11);
  (*(v6 + 16))(v10, a3 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_timeZone, v61);
  v26 = sub_1DD4AC988(v24, v17, v10);
  (*(v6 + 8))(v10, v61);
  (*(v13 + 8))(v17, v11);
  result = (*(v20 + 8))(v24, v18);
  v28 = a1;
  v29 = 0;
  if (v60 == 1)
  {
    v30 = *(a1 + 16);
    v31 = MEMORY[0x1E69E7CC0];
LABEL_3:
    v32 = (a1 + 32 + 80 * v29);
    while (v30 != v29)
    {
      if (v29 >= v30)
      {
        __break(1u);
        goto LABEL_56;
      }

      result = memcpy(__dst, v32, 0x49uLL);
      if (__OFADD__(v29, 1))
      {
        goto LABEL_57;
      }

      v33 = __dst[0];
      type metadata accessor for DateTime();
      OUTLINED_FUNCTION_5_34();
      if (!static DateTime.<= infix(_:_:)(v33))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v64 = v31;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_0_52();
          v31 = v64;
        }

        v36 = *(v31 + 16);
        v35 = *(v31 + 24);
        if (v36 >= v35 >> 1)
        {
          v37 = OUTLINED_FUNCTION_2_32(v35);
          sub_1DD42BBE8(v37, v36 + 1, 1);
          v31 = v64;
        }

        *(v31 + 16) = v36 + 1;
        result = OUTLINED_FUNCTION_3_31(v31 + 80 * v36);
        ++v29;
        v28 = a1;
        goto LABEL_3;
      }

      result = sub_1DD474778(__dst);
      ++v29;
      v32 += 80;
      v28 = a1;
    }

    if (!*(v31 + 16))
    {

      v45 = 0;
      v31 = MEMORY[0x1E69E7CC0];
LABEL_28:
      v46 = (v28 + 32 + 80 * v45);
      while (v30 != v45)
      {
        if (v45 >= v30)
        {
          goto LABEL_59;
        }

        result = memcpy(__dst, v46, 0x49uLL);
        if (__OFADD__(v45, 1))
        {
          goto LABEL_61;
        }

        type metadata accessor for DateTime();
        v47 = __dst[0];
        OUTLINED_FUNCTION_5_34();
        if (static DateTime.<= infix(_:_:)(v47) && (__dst[3] & 1) != 0)
        {
          v48 = swift_isUniquelyReferenced_nonNull_native();
          v64 = v31;
          if ((v48 & 1) == 0)
          {
            OUTLINED_FUNCTION_0_52();
            v31 = v64;
          }

          v50 = *(v31 + 16);
          v49 = *(v31 + 24);
          if (v50 >= v49 >> 1)
          {
            v51 = OUTLINED_FUNCTION_2_32(v49);
            sub_1DD42BBE8(v51, v50 + 1, 1);
            v31 = v64;
          }

          *(v31 + 16) = v50 + 1;
          result = OUTLINED_FUNCTION_3_31(v31 + 80 * v50);
          ++v45;
          goto LABEL_28;
        }

        result = sub_1DD474778(__dst);
        ++v45;
        v46 += 80;
      }
    }
  }

  else
  {
    v38 = *(a1 + 16);
    v31 = MEMORY[0x1E69E7CC0];
LABEL_15:
    v39 = (a1 + 32 + 80 * v29);
    while (v38 != v29)
    {
      if (v29 >= v38)
      {
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        return result;
      }

      result = memcpy(__dst, v39, 0x49uLL);
      if (__OFADD__(v29, 1))
      {
        goto LABEL_58;
      }

      v40 = __dst[0];
      type metadata accessor for DateTime();
      OUTLINED_FUNCTION_5_34();
      if (static DateTime.< infix(_:_:)(v40, v26))
      {
        v41 = swift_isUniquelyReferenced_nonNull_native();
        v64 = v31;
        if ((v41 & 1) == 0)
        {
          OUTLINED_FUNCTION_0_52();
          v31 = v64;
        }

        v43 = *(v31 + 16);
        v42 = *(v31 + 24);
        if (v43 >= v42 >> 1)
        {
          v44 = OUTLINED_FUNCTION_2_32(v42);
          sub_1DD42BBE8(v44, v43 + 1, 1);
          v31 = v64;
        }

        *(v31 + 16) = v43 + 1;
        result = OUTLINED_FUNCTION_3_31(v31 + 80 * v43);
        ++v29;
        v28 = a1;
        goto LABEL_15;
      }

      result = sub_1DD474778(__dst);
      ++v29;
      v39 += 80;
      v28 = a1;
    }

    if (!*(v31 + 16))
    {

      v52 = 0;
      v53 = v28 + 32;
      v31 = MEMORY[0x1E69E7CC0];
LABEL_43:
      v54 = (v53 + 80 * v52);
      while (v38 != v52)
      {
        if (v52 >= v38)
        {
          goto LABEL_60;
        }

        result = memcpy(__dst, v54, 0x49uLL);
        if (__OFADD__(v52, 1))
        {
          goto LABEL_62;
        }

        v55 = __dst[0];
        type metadata accessor for DateTime();
        OUTLINED_FUNCTION_5_34();
        if (!static DateTime.< infix(_:_:)(v55, v26) && (__dst[3] & 1) != 0)
        {
          v56 = swift_isUniquelyReferenced_nonNull_native();
          v64 = v31;
          if ((v56 & 1) == 0)
          {
            OUTLINED_FUNCTION_0_52();
            v31 = v64;
          }

          v58 = *(v31 + 16);
          v57 = *(v31 + 24);
          if (v58 >= v57 >> 1)
          {
            v59 = OUTLINED_FUNCTION_2_32(v57);
            sub_1DD42BBE8(v59, v58 + 1, 1);
            v31 = v64;
          }

          *(v31 + 16) = v58 + 1;
          result = OUTLINED_FUNCTION_3_31(v31 + 80 * v58);
          ++v52;
          goto LABEL_43;
        }

        result = sub_1DD474778(__dst);
        ++v52;
        v54 += 80;
      }
    }
  }

  return v31;
}

uint64_t sub_1DD474708(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBCF0, &qword_1DD649E60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD474778(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBCF0, &qword_1DD649E60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *OUTLINED_FUNCTION_3_31@<X0>(uint64_t a1@<X8>)
{

  return memcpy((a1 + 32), (v1 - 200), 0x49uLL);
}

void sub_1DD4747FC(void *a1, void *a2)
{
  if (a1 != a2 && a1[2] == a2[2])
  {
    v4 = 0;
    OUTLINED_FUNCTION_4_1();
    v7 = v6 & v5;
    v9 = (v8 + 63) >> 6;
    while (v7)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_11:
      v13 = v10 | (v4 << 6);
      v14 = *(a1[7] + 8 * v13);
      v15 = sub_1DD3FE6CC(*(a1[6] + v13));
      if ((v16 & 1) == 0 || *(a2[7] + 8 * v15) != v14)
      {
        return;
      }
    }

    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v9)
      {
        return;
      }

      v12 = a1[v4 + 8];
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v7 = (v12 - 1) & v12;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

BOOL sub_1DD4748F0(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v44 = a1;
  while (2)
  {
    if (v7)
    {
      v9 = __clz(__rbit64(v7));
      v46 = (v7 - 1) & v7;
    }

    else
    {
      v10 = v3;
      do
      {
        v3 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
        }

        if (v3 >= v8)
        {
          return 1;
        }

        v11 = *(v4 + 8 * v3);
        ++v10;
      }

      while (!v11);
      v9 = __clz(__rbit64(v11));
      v46 = (v11 - 1) & v11;
    }

    v12 = v9 | (v3 << 6);
    v13 = *(*(a1 + 48) + 16 * v12 + 8);
    v14 = *(a1 + 56) + 24 * v12;
    v16 = *v14;
    v15 = *(v14 + 8);
    v17 = *(v14 + 16);

    v47 = v15;
    sub_1DD475D2C(v16, v15, v17);
    v18 = v13 == 0;
    if (!v13)
    {
      return v18;
    }

    v19 = sub_1DD3978DC();
    v21 = v20;

    if ((v21 & 1) == 0)
    {
      goto LABEL_65;
    }

    v22 = *(v2 + 56) + 24 * v19;
    v24 = *v22;
    v23 = *(v22 + 8);
    v25 = *(v22 + 16);
    switch(v25)
    {
      case 1:
        if (v17 != 1)
        {
          goto LABEL_64;
        }

        sub_1DD475D50(*v22, *(v22 + 8), 1);
        sub_1DD475D50(v16, v47, 1);
        v26 = *&v24 == *&v16;
        v2 = a2;
        goto LABEL_45;
      case 2:
        sub_1DD475D50(*v22, *(v22 + 8), 2);
        v2 = a2;
        if (v17 != 2)
        {
          goto LABEL_65;
        }

        sub_1DD475D50(v16, v47, 2);
        a1 = v44;
        v7 = v46;
        v18 = 0;
        if ((v24 ^ v16))
        {
          return v18;
        }

        continue;
      case 3:
        if (v17 == 3)
        {
          if (v24 == v16 && v23 == v47)
          {

            sub_1DD475D50(v16, v47, 3);
            v34 = v16;
            v35 = v47;
            v33 = 3;
LABEL_58:
            sub_1DD475D50(v34, v35, v33);
            a1 = v44;
            v2 = a2;
            v7 = v46;
          }

          else
          {
            v31 = *(v22 + 8);
            v32 = sub_1DD640CD8();

            sub_1DD475D50(v24, v31, 3);
            sub_1DD475D50(v16, v47, 3);
            a1 = v44;
            v2 = a2;
            v7 = v46;
            v18 = 0;
            if ((v32 & 1) == 0)
            {
              return v18;
            }
          }

          continue;
        }

        v41 = *(v22 + 8);

LABEL_62:
        v23 = v41;
LABEL_64:
        sub_1DD475D50(v24, v23, v25);
LABEL_65:
        sub_1DD475D50(v16, v47, v17);
        return 0;
      case 4:
        if (v17 != 4)
        {
          v41 = *(v22 + 8);
          sub_1DD3D01B4(*v22, v41);
          goto LABEL_62;
        }

        v28 = *&v24 == 0.0 && v23 == 0xC000000000000000 && v47 >> 62 == 3;
        if (v28 && (*&v16 == 0.0 ? (v29 = v47 == 0xC000000000000000) : (v29 = 0), v29))
        {
          sub_1DD3D01B4(0, 0xC000000000000000);
          sub_1DD475D50(0, 0xC000000000000000, 4);
          v34 = 0;
          v35 = 0xC000000000000000;
        }

        else
        {
          switch(v47 >> 62)
          {
            case 1uLL:
              LODWORD(v36) = HIDWORD(v16) - v16;
              if (__OFSUB__(HIDWORD(v16), v16))
              {
                goto LABEL_69;
              }

              v36 = v36;
LABEL_55:
              if (v36)
              {
                v42 = *(v22 + 8);
                sub_1DD3D01B4(v24, v23);
                v23 = v42;
                LOBYTE(v17) = 4;
                goto LABEL_64;
              }

LABEL_56:
              v40 = *(v22 + 8);
              sub_1DD3D01B4(v24, v23);
              sub_1DD475D50(v24, v40, 4);
              v34 = v16;
              v35 = v47;
              break;
            case 2uLL:
              v38 = *(v16 + 16);
              v37 = *(v16 + 24);
              v39 = __OFSUB__(v37, v38);
              v36 = v37 - v38;
              if (!v39)
              {
                goto LABEL_55;
              }

              goto LABEL_70;
            case 3uLL:
              goto LABEL_56;
            default:
              v36 = BYTE6(v47);
              goto LABEL_55;
          }
        }

        v33 = 4;
        goto LABEL_58;
      default:
        sub_1DD475D50(*v22, *(v22 + 8), 0);
        v2 = a2;
        if (v17)
        {
          goto LABEL_65;
        }

        sub_1DD475D50(v16, v47, 0);
        v26 = v24 == v16;
LABEL_45:
        a1 = v44;
        v7 = v46;
        v18 = 0;
        if (!v26)
        {
          return v18;
        }

        continue;
    }
  }
}

void sub_1DD475668(uint64_t a1, uint64_t a2)
{
  v56 = sub_1DD63D2B8();
  OUTLINED_FUNCTION_0();
  v51 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v52 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v50 = &v43 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD0B0, &qword_1DD64D458);
  MEMORY[0x1EEE9AC00](v9 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - v11;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v13 = 0;
    v48 = a1;
    OUTLINED_FUNCTION_4_1();
    v16 = v15 & v14;
    v44 = (v17 + 63) >> 6;
    v45 = a1 + 64;
    v46 = v51 + 16;
    v47 = v12;
    v53 = v18;
    v54 = (v51 + 32);
    v49 = (v51 + 8);
    while (v16)
    {
      v55 = (v16 - 1) & v16;
      v19 = __clz(__rbit64(v16)) | (v13 << 6);
LABEL_11:
      v23 = v48;
      v25 = v50;
      v24 = v51;
      v26 = v56;
      (*(v51 + 16))(v50, *(v48 + 48) + *(v51 + 72) * v19, v56);
      v27 = *(v23 + 56) + 16 * v19;
      v28 = *v27;
      LOBYTE(v23) = *(v27 + 8);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD0B8, qword_1DD64D460);
      v20 = v53;
      v30 = v53 + *(v29 + 48);
      (*(v24 + 32))(v53, v25, v26);
      *v30 = v28;
      *(v30 + 8) = v23;
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v29);
      v12 = v47;
LABEL_12:
      sub_1DD476984(v20, v12);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD0B8, qword_1DD64D460);
      if (__swift_getEnumTagSinglePayload(v12, 1, v31) == 1)
      {
        return;
      }

      v32 = &v12[*(v31 + 48)];
      v33 = v52;
      v34 = v56;
      (*v54)(v52, v12, v56);
      v35 = *v32;
      v36 = v32[8];
      sub_1DD3FE7FC();
      v38 = v37;
      LOBYTE(v32) = v39;
      (*v49)(v33, v34);
      if ((v32 & 1) == 0)
      {
        return;
      }

      v40 = *(a2 + 56) + 16 * v38;
      if (*(v40 + 8))
      {
        v16 = v55;
        if ((v36 & 1) == 0)
        {
          return;
        }
      }

      else
      {
        if (*v40 == v35)
        {
          v41 = v36;
        }

        else
        {
          v41 = 1;
        }

        v16 = v55;
        if (v41)
        {
          return;
        }
      }
    }

    v20 = v53;
    while (1)
    {
      v21 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v21 >= v44)
      {
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD0B8, qword_1DD64D460);
        __swift_storeEnumTagSinglePayload(v20, 1, 1, v42);
        v55 = 0;
        goto LABEL_12;
      }

      v22 = *(v45 + 8 * v21);
      ++v13;
      if (v22)
      {
        v55 = (v22 - 1) & v22;
        v19 = __clz(__rbit64(v22)) | (v21 << 6);
        v13 = v21;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

SiriInference::CoreAnalyticsMetric __swiftcall CoreAnalyticsMetric.init(eventName:properties:)(Swift::String eventName, Swift::OpaquePointer properties)
{
  *v2 = eventName;
  *(v2 + 16) = properties;
  result.eventName = eventName;
  result.properties = properties;
  return result;
}

void CoreAnalyticsMetric.eventPayload()()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCE10, &qword_1DD64D240);
  v2 = sub_1DD640A58();
  v3 = 0;
  v4 = v1 + 64;
  OUTLINED_FUNCTION_4_1();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;
  v36 = v10 + 64;
  v37 = v1;
  if ((v6 & v5) != 0)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_8:
      v14 = v11 | (v3 << 6);
      v15 = (*(v37 + 48) + 16 * v14);
      v16 = v15[1];
      v38 = *v15;
      v17 = *(v37 + 56) + 24 * v14;
      v18 = *v17;
      switch(*(v17 + 16))
      {
        case 1:
          v30 = *v17;
          v31 = objc_allocWithZone(MEMORY[0x1E696AD98]);

          v20 = [v31 initWithDouble_];
          goto LABEL_15;
        case 2:
          v27 = objc_allocWithZone(MEMORY[0x1E696AD98]);

          v20 = [v27 initWithBool_];
          goto LABEL_15;
        case 3:

          v28 = OUTLINED_FUNCTION_25_3();
          sub_1DD475D2C(v28, v29, 3);
          OUTLINED_FUNCTION_25_3();
          v23 = sub_1DD63FDA8();
          v24 = OUTLINED_FUNCTION_25_3();
          v26 = 3;
          goto LABEL_13;
        case 4:

          v21 = OUTLINED_FUNCTION_25_3();
          sub_1DD475D2C(v21, v22, 4);
          OUTLINED_FUNCTION_25_3();
          v23 = sub_1DD63CF08();
          v24 = OUTLINED_FUNCTION_25_3();
          v26 = 4;
LABEL_13:
          sub_1DD475D50(v24, v25, v26);
          break;
        default:
          v19 = objc_allocWithZone(MEMORY[0x1E696AD98]);

          v20 = [v19 initWithInteger_];
LABEL_15:
          v23 = v20;
          break;
      }

      *(v36 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v32 = (v2[6] + 16 * v14);
      *v32 = v38;
      v32[1] = v16;
      *(v2[7] + 8 * v14) = v23;
      v33 = v2[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        break;
      }

      v2[2] = v35;
      if (!v7)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v12 = v3;
    while (1)
    {
      v3 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v3 >= v9)
      {
        return;
      }

      v13 = *(v4 + 8 * v3);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v7 = (v13 - 1) & v13;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

double sub_1DD475D2C(uint64_t a1, unint64_t a2, char a3)
{
  if (a3 == 4)
  {
    return sub_1DD3D01B4(a1, a2);
  }

  if (a3 == 3)
  {
  }

  return result;
}

uint64_t sub_1DD475D50(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 4)
  {
    return sub_1DD3AD790(result, a2);
  }

  if (a3 == 3)
  {
  }

  return result;
}

BOOL static CoreAnalyticsMetric.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  return sub_1DD4748F0(v2, v3);
}

uint64_t sub_1DD475DE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E746E657665 && a2 == 0xE900000000000065;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD640CD8();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DD475EC0(char a1)
{
  if (a1)
  {
    return 0x69747265706F7270;
  }

  else
  {
    return 0x6D614E746E657665;
  }
}

uint64_t sub_1DD475F08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD475DE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD475F30(uint64_t a1)
{
  v2 = sub_1DD47617C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD475F6C(uint64_t a1)
{
  v2 = sub_1DD47617C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CoreAnalyticsMetric.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD058, &qword_1DD64D248);
  OUTLINED_FUNCTION_0();
  v12 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  v11 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD47617C();
  sub_1DD640EF8();
  v15 = 0;
  sub_1DD640C18();
  if (!v2)
  {
    v13 = v11;
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD068, &qword_1DD64D250);
    sub_1DD47645C(&qword_1ECCDD070, sub_1DD4761D0, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    sub_1DD640C68();
  }

  return (*(v12 + 8))(v8, v4);
}

unint64_t sub_1DD47617C()
{
  result = qword_1ECCDD060;
  if (!qword_1ECCDD060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD060);
  }

  return result;
}

unint64_t sub_1DD4761D0()
{
  result = qword_1ECCDD078;
  if (!qword_1ECCDD078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD078);
  }

  return result;
}

uint64_t CoreAnalyticsMetric.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD080, &qword_1DD64D258);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD47617C();
  sub_1DD640ED8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v6 = sub_1DD640B28();
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD068, &qword_1DD64D250);
  sub_1DD47645C(&qword_1ECCDD088, sub_1DD4764E0, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
  sub_1DD640B78();
  v9 = OUTLINED_FUNCTION_41();
  v10(v9);
  *a2 = v6;
  a2[1] = v8;
  a2[2] = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DD47645C(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDD068, &qword_1DD64D250);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DD4764E0()
{
  result = qword_1ECCDD090;
  if (!qword_1ECCDD090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD090);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CoreAnalyticsMetric.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD47665C()
{
  result = qword_1ECCDD098;
  if (!qword_1ECCDD098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD098);
  }

  return result;
}

unint64_t sub_1DD4766B4()
{
  result = qword_1ECCDD0A0;
  if (!qword_1ECCDD0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD0A0);
  }

  return result;
}

unint64_t sub_1DD47670C()
{
  result = qword_1ECCDD0A8;
  if (!qword_1ECCDD0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD0A8);
  }

  return result;
}

void sub_1DD476760(uint64_t *__return_ptr a1@<X8>, char *__s1@<X0>, uint64_t a4@<X2>, unint64_t a5@<X3>)
{
  v17 = *MEMORY[0x1E69E9840];
  switch(a5 >> 62)
  {
    case 1uLL:
      v10 = a4 >> 32;
      if (a4 >> 32 < a4)
      {
        __break(1u);
      }

      v9 = a4;
      goto LABEL_9;
    case 2uLL:
      v9 = *(a4 + 16);
      v10 = *(a4 + 24);
LABEL_9:
      v8 = sub_1DD4768CC(v9, v10, a5 & 0x3FFFFFFFFFFFFFFFLL, __s1);
      if (!v5)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    case 3uLL:
      if (__s1)
      {
        v8 = 1;
LABEL_10:
        *a1 = v8 & 1;
      }

      else
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:

        __break(1u);
      }

      return;
    default:
      __s2 = a4;
      v12 = a5;
      v13 = BYTE2(a5);
      v14 = BYTE3(a5);
      v15 = BYTE4(a5);
      v16 = BYTE5(a5);
      if (!__s1)
      {
        goto LABEL_13;
      }

      v8 = memcmp(__s1, &__s2, BYTE6(a5)) == 0;
      goto LABEL_10;
  }
}

char *sub_1DD4768CC(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = sub_1DD63C928();
  v8 = result;
  if (result)
  {
    result = sub_1DD63C948();
    if (__OFSUB__(a1, result))
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = sub_1DD63C938();
  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (v8 == a4)
  {
    return 1;
  }

  else
  {
    return (memcmp(a4, v8, v11) == 0);
  }
}

uint64_t sub_1DD476984(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD0B0, &qword_1DD64D458);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1DD4769F8(uint64_t a1, void (*a2)(unint64_t, unint64_t, uint64_t))
{
  type metadata accessor for AppRankEvent(0);
  type metadata accessor for AppRankSelectionEvent(0);
  v3 = sub_1DD52823C();
  if ((v4 & 1) == 0 && __OFADD__(v3, 1))
  {
    goto LABEL_10;
  }

  sub_1DD63CF88();
  v6 = round(v5 * 1000.0);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v6 > -9.22337204e18)
  {
    if (v6 < 9.22337204e18)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC230, &unk_1DD64AEC0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DD6444F0;
      strcpy((inited + 32), "numAppsShown");
      *(inited + 45) = 0;
      *(inited + 46) = -5120;
      *(inited + 48) = sub_1DD6402C8();
      *(inited + 56) = 0xD000000000000013;
      *(inited + 64) = 0x80000001DD66CE70;
      *(inited + 72) = sub_1DD6402C8();
      *(inited + 80) = 0xD00000000000001CLL;
      *(inited + 88) = 0x80000001DD66CE90;
      *(inited + 96) = sub_1DD6402C8();
      sub_1DD395950();
      v8 = sub_1DD63FC88();
      a2(0xD00000000000001FLL, 0x80000001DD66CEB0, v8);

      return;
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_9:
  __break(1u);
LABEL_10:
  __break(1u);
}

NSObject __swiftcall CoreAnalyticsValue.toNSObject()()
{
  v1 = *v0;
  switch(*(v0 + 16))
  {
    case 1:
      v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      v3 = sel_initWithDouble_;

      return [v2 v3];
    case 2:
      v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      v3 = sel_initWithBool_;
      v4 = v1 & 1;

      return [v2 v3];
    case 3:

      return sub_1DD63FDA8();
    case 4:

      return sub_1DD63CF08();
    default:
      v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      v3 = sel_initWithInteger_;
      v4 = v1;

      return [v2 v3];
  }
}

uint64_t sub_1DD476D30(uint64_t a1)
{
  v1 = sub_1DD640AA8();

  if (v1 == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD476D84(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 1701869940;
  }
}

unint64_t sub_1DD476DB0(uint64_t a1)
{
  v1 = sub_1DD640AA8();

  if (v1 >= 5)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1DD476E20@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DD476D30(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DD476E50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD476D84(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DD476E84@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DD476D30(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DD476EB8(uint64_t a1)
{
  v2 = sub_1DD4771E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD476EF4(uint64_t a1)
{
  v2 = sub_1DD4771E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CoreAnalyticsValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD0C0, &qword_1DD64D490);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD4771E8();
  sub_1DD640ED8();
  if (!v2)
  {
    LOBYTE(v28) = 0;
    v6 = sub_1DD640B28();
    v10 = sub_1DD476DB0(v6);
    v11 = v10;
    switch(v10)
    {
      case 1:
        OUTLINED_FUNCTION_0_53();
        sub_1DD640B48();
        v25 = v24;
        v26 = OUTLINED_FUNCTION_41();
        v27(v26);
        v15 = 0;
        v12 = v25;
        goto LABEL_10;
      case 2:
        OUTLINED_FUNCTION_0_53();
        v18 = sub_1DD640B38();
        v19 = OUTLINED_FUNCTION_41();
        v20(v19);
        v15 = 0;
        v12 = v18 & 1;
        goto LABEL_10;
      case 3:
        OUTLINED_FUNCTION_0_53();
        v12 = sub_1DD640B28();
        v15 = v21;
        v22 = OUTLINED_FUNCTION_41();
        v23(v22);
        goto LABEL_10;
      case 4:
        sub_1DD477290();
        sub_1DD640B78();
        v16 = OUTLINED_FUNCTION_41();
        v17(v16);
        v12 = v28;
        v15 = v29;
        goto LABEL_10;
      case 5:
        sub_1DD47723C();
        swift_allocError();
        swift_willThrow();
        v7 = OUTLINED_FUNCTION_41();
        v8(v7);
        return __swift_destroy_boxed_opaque_existential_1(a1);
      default:
        OUTLINED_FUNCTION_0_53();
        v12 = sub_1DD640B58();
        v13 = OUTLINED_FUNCTION_41();
        v14(v13);
        v15 = 0;
LABEL_10:
        *a2 = v12;
        *(a2 + 8) = v15;
        *(a2 + 16) = v11;
        break;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DD4771E8()
{
  result = qword_1ECCDD0C8;
  if (!qword_1ECCDD0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD0C8);
  }

  return result;
}

unint64_t sub_1DD47723C()
{
  result = qword_1ECCDD0D0;
  if (!qword_1ECCDD0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD0D0);
  }

  return result;
}

unint64_t sub_1DD477290()
{
  result = qword_1ECCDD0D8;
  if (!qword_1ECCDD0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD0D8);
  }

  return result;
}

uint64_t CoreAnalyticsValue.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD0E0, &qword_1DD64D498);
  OUTLINED_FUNCTION_0();
  v17 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = *(v1 + 16);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD4771E8();
  sub_1DD640EF8();
  switch(v11)
  {
    case 1:
      OUTLINED_FUNCTION_6_27();
      v12 = v4;
      v14 = v16;
      sub_1DD640C38();
      if (!v14)
      {
        LOBYTE(v18) = 0;
        goto LABEL_13;
      }

      break;
    case 2:
      OUTLINED_FUNCTION_6_27();
      OUTLINED_FUNCTION_5_35();
      sub_1DD640C28();
      if (!v2)
      {
        LOBYTE(v18) = 0;
        goto LABEL_13;
      }

      break;
    case 3:
      OUTLINED_FUNCTION_6_27();
      v12 = v4;
      v13 = v16;
      sub_1DD640C18();
      if (!v13)
      {
        LOBYTE(v18) = 0;
        goto LABEL_13;
      }

      break;
    case 4:
      v18 = v9;
      v19 = v10;
      v20 = 1;
      sub_1DD47756C();
      OUTLINED_FUNCTION_5_35();
      sub_1DD640C68();
      if (!v2)
      {
        LOBYTE(v18) = 0;
        goto LABEL_13;
      }

      break;
    default:
      OUTLINED_FUNCTION_6_27();
      OUTLINED_FUNCTION_5_35();
      sub_1DD640C48();
      if (!v2)
      {
        LOBYTE(v18) = 0;
LABEL_13:
        sub_1DD640C18();
      }

      break;
  }

  return (*(v17 + 8))(v8, v12);
}

unint64_t sub_1DD47756C()
{
  result = qword_1ECCDD0E8;
  if (!qword_1ECCDD0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD0E8);
  }

  return result;
}

uint64_t static CoreAnalyticsValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 16);
  switch(v4)
  {
    case 1:
      if (v6 != 1)
      {
        goto LABEL_19;
      }

      v38 = OUTLINED_FUNCTION_52();
      sub_1DD475D50(v38, v39, 1);
      v40 = OUTLINED_FUNCTION_4_28();
      sub_1DD475D50(v40, v41, 1);
      v11 = v2 == v5;
      return v11 & 1;
    case 2:
      if (v6 != 2)
      {
        goto LABEL_19;
      }

      v23 = OUTLINED_FUNCTION_52();
      sub_1DD475D50(v23, v24, 2);
      v25 = OUTLINED_FUNCTION_4_28();
      sub_1DD475D50(v25, v26, 2);
      v11 = LOBYTE(v5) ^ LOBYTE(v2) ^ 1;
      return v11 & 1;
    case 3:
      if (v6 != 3)
      {

        goto LABEL_19;
      }

      v27 = *a1;
      if (*&v2 != *&v5 || v3 != *(a2 + 8))
      {
        v17 = sub_1DD640CD8();
        v29 = OUTLINED_FUNCTION_4_28();
        sub_1DD475D2C(v29, v30, 3);
        v31 = OUTLINED_FUNCTION_2_33();
        sub_1DD475D2C(v31, v32, v33);
        v34 = OUTLINED_FUNCTION_2_33();
        sub_1DD475D50(v34, v35, v36);
        v20 = OUTLINED_FUNCTION_4_28();
        v22 = 3;
        goto LABEL_14;
      }

      sub_1DD475D2C(*&v27, v3, 3);
      v50 = OUTLINED_FUNCTION_2_33();
      sub_1DD475D2C(v50, v51, v52);
      v53 = OUTLINED_FUNCTION_2_33();
      sub_1DD475D50(v53, v54, v55);
      v56 = OUTLINED_FUNCTION_2_33();
      sub_1DD475D50(v56, v57, v58);
      v11 = 1;
      return v11 & 1;
    case 4:
      if (v6 == 4)
      {
        v12 = OUTLINED_FUNCTION_4_28();
        sub_1DD475D2C(v12, v13, 4);
        v14 = OUTLINED_FUNCTION_52();
        sub_1DD475D2C(v14, v15, 4);
        v16 = OUTLINED_FUNCTION_52();
        v17 = MEMORY[0x1E12AF220](v16);
        v18 = OUTLINED_FUNCTION_52();
        sub_1DD475D50(v18, v19, 4);
        v20 = OUTLINED_FUNCTION_4_28();
        v22 = 4;
LABEL_14:
        sub_1DD475D50(v20, v21, v22);
        return v17 & 1;
      }

      else
      {
        v42 = OUTLINED_FUNCTION_52();
        sub_1DD3D01B4(v42, v43);
LABEL_19:
        v44 = OUTLINED_FUNCTION_4_28();
        sub_1DD475D2C(v44, v45, v6);
        v46 = OUTLINED_FUNCTION_52();
        sub_1DD475D50(v46, v47, v4);
        v48 = OUTLINED_FUNCTION_4_28();
        sub_1DD475D50(v48, v49, v6);
        v11 = 0;
        return v11 & 1;
      }

    default:
      if (*(a2 + 16))
      {
        goto LABEL_19;
      }

      v7 = OUTLINED_FUNCTION_52();
      sub_1DD475D50(v7, v8, 0);
      v9 = OUTLINED_FUNCTION_4_28();
      sub_1DD475D50(v9, v10, 0);
      v11 = *&v2 == *&v5;
      return v11 & 1;
  }
}