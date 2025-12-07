uint64_t sub_228265310@<X0>(uint64_t a1@<X0>, void (*a2)(void *__return_ptr, uint64_t, uint64_t)@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  if (a2)
  {
    a2(a4, a1, a3);
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for Dosage(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a4, v5, 1, v6);
}

uint64_t sub_2282653A4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (a2)
  {
    return a2(a1);
  }

  return a1;
}

uint64_t sub_2282653D4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_228393410();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for Dosage(0);
        v6 = sub_228392220();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for Dosage(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_228265764(v8, v9, a1, v4);
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
    return sub_228265500(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_228265500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for Dosage(0);
  v9 = MEMORY[0x28223BE20](v8);
  v35 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  result = MEMORY[0x28223BE20](v11);
  v17 = &v27 - v16;
  v29 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v34 = v18;
    v28 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v32 = v20;
    v33 = a3;
    v30 = v23;
    v31 = v22;
    while (1)
    {
      sub_228267820(v23, v17, type metadata accessor for Dosage);
      sub_228267820(v20, v13, type metadata accessor for Dosage);
      v24 = sub_22838F3A0();
      sub_228267A54(v13, type metadata accessor for Dosage);
      result = sub_228267A54(v17, type metadata accessor for Dosage);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v20 = v32 + v28;
        v22 = v31 - 1;
        v23 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      v25 = v35;
      sub_2282679EC(v23, v35, type metadata accessor for Dosage);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_2282679EC(v25, v20, type metadata accessor for Dosage);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_228265764(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v104 = a1;
  v9 = type metadata accessor for Dosage(0);
  v112 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v107 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v115 = &v100 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v116 = &v100 - v15;
  result = MEMORY[0x28223BE20](v14);
  v18 = &v100 - v17;
  v114 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_95:
    v5 = *v104;
    if (!*v104)
    {
      goto LABEL_134;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_128:
      result = sub_2283406C0(a4);
    }

    v118 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v114)
      {
        v96 = *(result + 16 * a4);
        v97 = result;
        v98 = *(result + 16 * (a4 - 1) + 40);
        sub_2282660C8(*v114 + *(v112 + 72) * v96, *v114 + *(v112 + 72) * *(result + 16 * (a4 - 1) + 32), *v114 + *(v112 + 72) * v98, v5);
        if (v6)
        {
        }

        if (v98 < v96)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_2283406C0(v97);
        }

        if (a4 - 2 >= *(v97 + 2))
        {
          goto LABEL_122;
        }

        v99 = &v97[16 * a4];
        *v99 = v96;
        *(v99 + 1) = v98;
        v118 = v97;
        sub_228340634(a4 - 1);
        result = v118;
        a4 = *(v118 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v20 = 0;
  v21 = MEMORY[0x277D84F90];
  v103 = a4;
  v117 = v9;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v108 = v21;
    if (v20 + 1 >= v19)
    {
      v19 = v20 + 1;
    }

    else
    {
      v24 = *(v112 + 72);
      v5 = *v114 + v24 * v23;
      v110 = *v114;
      v25 = v110;
      sub_228267820(v110 + v24 * v23, v18, type metadata accessor for Dosage);
      v26 = v25 + v24 * v22;
      v27 = v22;
      v28 = v116;
      sub_228267820(v26, v116, type metadata accessor for Dosage);
      LODWORD(v111) = sub_22838F3A0();
      sub_228267A54(v28, type metadata accessor for Dosage);
      result = sub_228267A54(v18, type metadata accessor for Dosage);
      v102 = v27;
      v29 = v27 + 2;
      v113 = v24;
      v30 = v110 + v24 * (v27 + 2);
      while (v19 != v29)
      {
        sub_228267820(v30, v18, type metadata accessor for Dosage);
        v31 = v116;
        sub_228267820(v5, v116, type metadata accessor for Dosage);
        v32 = sub_22838F3A0() & 1;
        sub_228267A54(v31, type metadata accessor for Dosage);
        result = sub_228267A54(v18, type metadata accessor for Dosage);
        ++v29;
        v30 += v113;
        v5 += v113;
        if ((v111 & 1) != v32)
        {
          v19 = v29 - 1;
          break;
        }
      }

      v22 = v102;
      a4 = v103;
      if (v111)
      {
        if (v19 < v102)
        {
          goto LABEL_125;
        }

        if (v102 < v19)
        {
          v101 = v6;
          v33 = v113 * (v19 - 1);
          v34 = v19;
          v35 = v19 * v113;
          v111 = v19;
          v36 = v102;
          v37 = v102;
          v38 = v102 * v113;
          do
          {
            if (v36 != --v34)
            {
              v39 = *v114;
              if (!*v114)
              {
                goto LABEL_131;
              }

              v5 = v39 + v38;
              sub_2282679EC(v39 + v38, v107, type metadata accessor for Dosage);
              if (v38 < v33 || v5 >= v39 + v35)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v38 != v33)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_2282679EC(v107, v39 + v33, type metadata accessor for Dosage);
            }

            ++v36;
            v33 -= v113;
            v35 -= v113;
            v38 += v113;
          }

          while (v36 < v34);
          v6 = v101;
          a4 = v103;
          v22 = v37;
          v19 = v111;
        }
      }
    }

    v40 = v114[1];
    if (v19 < v40)
    {
      if (__OFSUB__(v19, v22))
      {
        goto LABEL_124;
      }

      if (v19 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_126;
        }

        if ((v22 + a4) >= v40)
        {
          v41 = v114[1];
        }

        else
        {
          v41 = v22 + a4;
        }

        if (v41 < v22)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v19 != v41)
        {
          break;
        }
      }
    }

    v20 = v19;
    if (v19 < v22)
    {
      goto LABEL_123;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v108;
    }

    else
    {
      result = sub_228198978(0, *(v108 + 2) + 1, 1, v108);
      v21 = result;
    }

    a4 = *(v21 + 2);
    v42 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v42 >> 1)
    {
      result = sub_228198978((v42 > 1), a4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v5;
    v43 = &v21[16 * a4];
    *(v43 + 4) = v22;
    *(v43 + 5) = v20;
    v44 = *v104;
    if (!*v104)
    {
      goto LABEL_133;
    }

    if (a4)
    {
      while (1)
      {
        v45 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v46 = *(v21 + 4);
          v47 = *(v21 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_52:
          if (v49)
          {
            goto LABEL_112;
          }

          v62 = &v21[16 * v5];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_115;
          }

          v68 = &v21[16 * v45 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_119;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v72 = &v21[16 * v5];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_66:
        if (v67)
        {
          goto LABEL_114;
        }

        v75 = &v21[16 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_117;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v45 - 1;
        if (v45 - 1 >= v5)
        {
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
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v114)
        {
          goto LABEL_130;
        }

        v83 = v21;
        v84 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v45 + 40];
        sub_2282660C8(*v114 + *(v112 + 72) * v84, *v114 + *(v112 + 72) * *&v21[16 * v45 + 32], *v114 + *(v112 + 72) * v5, v44);
        if (v6)
        {
        }

        if (v5 < v84)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = sub_2283406C0(v83);
        }

        if (a4 >= *(v83 + 2))
        {
          goto LABEL_109;
        }

        v85 = &v83[16 * a4];
        *(v85 + 4) = v84;
        *(v85 + 5) = v5;
        v118 = v83;
        result = sub_228340634(v45);
        v21 = v118;
        v5 = *(v118 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v50 = &v21[16 * v5 + 32];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_110;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_111;
      }

      v57 = &v21[16 * v5];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_113;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_116;
      }

      if (v61 >= v53)
      {
        v79 = &v21[16 * v45 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_120;
        }

        if (v48 < v82)
        {
          v45 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = v114[1];
    a4 = v103;
    if (v20 >= v19)
    {
      goto LABEL_95;
    }
  }

  v101 = v6;
  v86 = v19;
  v87 = v22;
  v88 = *v114;
  v89 = *(v112 + 72);
  v90 = *v114 + v89 * (v19 - 1);
  v91 = -v89;
  v102 = v87;
  v92 = v87 - v19;
  v111 = v86;
  v105 = v89;
  v106 = v41;
  v5 = v88 + v86 * v89;
LABEL_85:
  v109 = v5;
  v110 = v92;
  v113 = v90;
  while (1)
  {
    sub_228267820(v5, v18, type metadata accessor for Dosage);
    v93 = v116;
    sub_228267820(v90, v116, type metadata accessor for Dosage);
    a4 = sub_22838F3A0();
    sub_228267A54(v93, type metadata accessor for Dosage);
    result = sub_228267A54(v18, type metadata accessor for Dosage);
    if ((a4 & 1) == 0)
    {
LABEL_84:
      v20 = v106;
      v90 = v113 + v105;
      v92 = v110 - 1;
      v5 = v109 + v105;
      if (++v111 != v106)
      {
        goto LABEL_85;
      }

      v6 = v101;
      v22 = v102;
      if (v106 < v102)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v88)
    {
      break;
    }

    a4 = type metadata accessor for Dosage;
    v94 = v115;
    sub_2282679EC(v5, v115, type metadata accessor for Dosage);
    swift_arrayInitWithTakeFrontToBack();
    sub_2282679EC(v94, v90, type metadata accessor for Dosage);
    v90 += v91;
    v5 += v91;
    if (__CFADD__(v92++, 1))
    {
      goto LABEL_84;
    }
  }

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
  return result;
}

uint64_t sub_2282660C8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v45 = type metadata accessor for Dosage(0);
  v8 = MEMORY[0x28223BE20](v45);
  v44 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v43 = &v35 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v48 = a1;
  v47 = a4;
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

    v23 = a4 + v17;
    if (v17 >= 1)
    {
      v24 = -v13;
      v25 = a4 + v17;
      v39 = a1;
      v40 = a4;
      v38 = -v13;
      do
      {
        v36 = v23;
        v26 = a2;
        v27 = a2 + v24;
        v41 = v26;
        v42 = v27;
        while (1)
        {
          if (v26 <= a1)
          {
            v48 = v26;
            v46 = v36;
            goto LABEL_59;
          }

          v37 = v23;
          v29 = a3 + v24;
          v30 = v25 + v24;
          v31 = v43;
          sub_228267820(v30, v43, type metadata accessor for Dosage);
          v32 = v44;
          sub_228267820(v27, v44, type metadata accessor for Dosage);
          v33 = sub_22838F3A0();
          sub_228267A54(v32, type metadata accessor for Dosage);
          sub_228267A54(v31, type metadata accessor for Dosage);
          if (v33)
          {
            break;
          }

          v23 = v30;
          if (a3 < v25 || v29 >= v25)
          {
            a3 = v29;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v39;
          }

          else
          {
            v34 = a3 == v25;
            a3 = v29;
            a1 = v39;
            if (!v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v30;
          v26 = v41;
          v28 = v30 > v40;
          v27 = v42;
          v24 = v38;
          if (!v28)
          {
            a2 = v41;
            goto LABEL_58;
          }
        }

        if (a3 < v41 || v29 >= v41)
        {
          a3 = v29;
          a2 = v42;
          swift_arrayInitWithTakeFrontToBack();
          v24 = v38;
          a1 = v39;
          v23 = v37;
        }

        else
        {
          v34 = a3 == v41;
          a3 = v29;
          a2 = v42;
          v24 = v38;
          a1 = v39;
          v23 = v37;
          if (!v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v40);
    }

LABEL_58:
    v48 = a2;
    v46 = v23;
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

    v42 = a4 + v16;
    v46 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      do
      {
        v19 = a3;
        v20 = v43;
        sub_228267820(a2, v43, type metadata accessor for Dosage);
        v21 = v44;
        sub_228267820(a4, v44, type metadata accessor for Dosage);
        v22 = sub_22838F3A0();
        sub_228267A54(v21, type metadata accessor for Dosage);
        sub_228267A54(v20, type metadata accessor for Dosage);
        if (v22)
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v13;
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v13;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v47 = a4 + v13;
          a4 += v13;
        }

        a1 += v13;
        v48 = a1;
      }

      while (a4 < v42 && a2 < a3);
    }
  }

LABEL_59:
  sub_2283333D8(&v48, &v47, &v46);
  return 1;
}

uint64_t sub_2282665F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2281BC114(0);
  v40 = v8;
  v37 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v39 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v38 = &v34 - v12;
  v41 = a4;
  v15 = *(a4 + 64);
  v14 = a4 + 64;
  v13 = v15;
  v16 = -1 << *(v14 - 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v13;
  if (!a2)
  {
LABEL_18:
    v24 = 0;
    a3 = 0;
LABEL_25:
    *a1 = v41;
    *(a1 + 8) = v14;
    *(a1 + 16) = ~v16;
    *(a1 + 24) = v24;
    *(a1 + 32) = v18;
    return a3;
  }

  if (!a3)
  {
    v24 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(v14 - 32);
    v35 = a1;
    result = 0;
    v19 = 0;
    v20 = (63 - v16) >> 6;
    a1 = 1;
    v36 = a3;
    while (v18)
    {
LABEL_14:
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v24 = v19;
      v25 = v23 | (v19 << 6);
      v26 = v41;
      v27 = *(v41 + 48);
      v28 = sub_228391130();
      v29 = v39;
      (*(*(v28 - 8) + 16))(v39, v27 + *(*(v28 - 8) + 72) * v25, v28);
      *&v29[*(v40 + 48)] = *(*(v26 + 56) + 8 * v25);
      v30 = v29;
      v31 = v38;
      sub_2282679EC(v30, v38, sub_2281BC114);
      sub_2282679EC(v31, a2, sub_2281BC114);
      a3 = v36;
      if (a1 == v36)
      {

        goto LABEL_23;
      }

      a2 += *(v37 + 72);

      result = a1;
      v32 = __OFADD__(a1++, 1);
      v19 = v24;
      if (v32)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v21 = v19;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v22 >= v20)
      {
        break;
      }

      v18 = *(v14 + 8 * v22);
      ++v21;
      if (v18)
      {
        v19 = v22;
        goto LABEL_14;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v33 = v19 + 1;
    }

    else
    {
      v33 = v20;
    }

    v24 = v33 - 1;
    a3 = result;
LABEL_23:
    v16 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_2282668C4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v24 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + ((v12 << 11) | (32 * v17)));
      v19 = v18[1];
      v20 = v18[2];
      v21 = v18[3];
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      v11[3] = v21;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 4;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = v13;
    }

    v12 = v23 - 1;
    v10 = result;
LABEL_23:
    v7 = v24;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_228266A44(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Dosage(0);
  v33 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v32 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v31 = &v28 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v17 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v13;
    a1[2] = ~v14;
    a1[3] = v17;
    a1[4] = v16;
    return a3;
  }

  if (!a3)
  {
    v17 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v29 = a1;
    v30 = a3;
    result = 0;
    v17 = 0;
    v28 = v14;
    v18 = (63 - v14) >> 6;
    v19 = 1;
    while (v16)
    {
LABEL_14:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v32;
      a1 = *(v33 + 72);
      sub_228267820(*(a4 + 56) + a1 * (v22 | (v17 << 6)), v32, type metadata accessor for Dosage);
      v24 = v23;
      v25 = v31;
      sub_2282679EC(v24, v31, type metadata accessor for Dosage);
      sub_2282679EC(v25, a2, type metadata accessor for Dosage);
      if (v19 == v30)
      {
        a1 = v29;
        a3 = v30;
        goto LABEL_23;
      }

      a2 += a1;
      result = v19;
      if (__OFADD__(v19++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v17 = v21;
        goto LABEL_14;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v27 = v17 + 1;
    }

    else
    {
      v27 = v18;
    }

    v17 = v27 - 1;
    a3 = result;
    a1 = v29;
LABEL_23:
    v14 = v28;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t *sub_228266CC4(uint64_t *result, uint64_t **a2, void *a3, uint64_t a4, unint64_t *a5, void *a6, unint64_t *a7)
{
  v9 = a4;
  v11 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v15 = 0;
    v23 = -1 << *(v9 + 32);
    v13 = v9 + 56;
    v14 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v16 = v25 & *(v9 + 56);
    v17 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    a6 = 0;
    goto LABEL_32;
  }

  sub_228393080();
  sub_22817A958(0, a5, a6);
  sub_2281A89C4(a7, a5, a6);
  result = sub_2283924C0();
  v9 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = v36;
  v17 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v17)
  {
    a6 = 0;
    goto LABEL_32;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = a5;
  v29 = a6;
  a6 = 0;
  v27 = v14;
  a5 = ((v14 + 64) >> 6);
  v18 = 1;
  while (1)
  {
    if (v9 < 0)
    {
      if (!sub_228393100())
      {
        goto LABEL_30;
      }

      sub_22817A958(0, v28, v29);
      swift_dynamicCast();
      result = v31;
      v17 = a3;
      if (!v31)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v19 = v15;
    if (!v16)
    {
      break;
    }

    v20 = v15;
LABEL_13:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    result = *(*(v9 + 48) + ((v20 << 9) | (8 * v21)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v18 == v17)
    {
      a6 = v17;
      goto LABEL_30;
    }

    ++a2;
    a6 = v18;
    if (__OFADD__(v18++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v20 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v20 >= a5)
    {
      break;
    }

    v16 = *(v13 + 8 * v20);
    ++v19;
    if (v16)
    {
      v15 = v20;
      goto LABEL_13;
    }
  }

  v16 = 0;
  if (a5 <= (v15 + 1))
  {
    v26 = (v15 + 1);
  }

  else
  {
    v26 = a5;
  }

  v15 = v26 - 1;
LABEL_30:
  v14 = v27;
LABEL_32:
  *v11 = v9;
  v11[1] = v13;
  v11[2] = v14;
  v11[3] = v15;
  v11[4] = v16;
  return a6;
}

uint64_t sub_228266EF4(uint64_t a1, uint64_t a2)
{
  v39 = a1;
  v3 = sub_22838F6A0();
  v53 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_22838F6C0();
  v42 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for Dosage(0);
  v52 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277CC9578];
  sub_228267710(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v37 - v12;
  v14 = sub_22838F440();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a2;
  v20 = v19;
  sub_2282678FC(v18, v13, &qword_280DDCDB0, v10);
  if ((*(v15 + 48))(v13, 1, v20) != 1)
  {
    v48 = v3;
    v21 = *(v15 + 32);
    v38 = v20;
    v21(v17, v13, v20);
    result = sub_228391870();
    v23 = v57;
    if (!v57)
    {
      v23 = MEMORY[0x277D84F90];
    }

    v51 = v23;
    v47 = *(v23 + 16);
    if (!v47)
    {
LABEL_15:

      (*(v15 + 8))(v17, v38);
      return 1;
    }

    v24 = 0;
    v45 = v51 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
    v44 = *MEMORY[0x277CC9980];
    v54 = (v53 + 104);
    ++v42;
    v43 = (v53 + 8);
    v40 = *MEMORY[0x277CC99A0];
    v41 = v5;
    v46 = v15;
    v55 = v9;
    v25 = v48;
    while (1)
    {
      if (v24 >= *(v51 + 16))
      {
        __break(1u);
        return result;
      }

      v26 = *(v52 + 72);
      v56 = v24;
      sub_228267820(v45 + v26 * v24, v9, type metadata accessor for Dosage);
      v27 = *(v49 + 20);
      sub_22838F680();
      v28 = v17;
      v29 = *v54;
      v30 = v44;
      (*v54)(v5, v44, v25);
      v53 = v27;
      v31 = sub_22838F6B0();
      v32 = *v43;
      (*v43)(v5, v25);
      v29(v5, v30, v25);
      v17 = v28;
      v33 = sub_22838F6B0();
      v32(v5, v25);
      if (v31 != v33)
      {
        break;
      }

      v34 = v40;
      v29(v5, v40, v25);
      v53 = sub_22838F6B0();
      v32(v5, v25);
      v29(v5, v34, v25);
      v35 = sub_22838F6B0();
      v32(v5, v25);
      (*v42)(v7, v50);
      v15 = v46;
      if (v53 != v35)
      {
        goto LABEL_8;
      }

      sub_22838F4A0();
      sub_228264B30(&qword_27D826208, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v9 = v55;
      v36 = sub_228391FB0();
      result = sub_228267A54(v9, type metadata accessor for Dosage);
      if ((v36 & 1) == 0)
      {
        (*(v15 + 8))(v28, v38);

        return 0;
      }

LABEL_9:
      v24 = v56 + 1;
      v5 = v41;
      if (v47 == v56 + 1)
      {
        goto LABEL_15;
      }
    }

    (*v42)(v7, v50);
    v15 = v46;
LABEL_8:
    v9 = v55;
    result = sub_228267A54(v55, type metadata accessor for Dosage);
    goto LABEL_9;
  }

  sub_22826797C(v13, &qword_280DDCDB0, MEMORY[0x277CC9578]);
  return 1;
}

uint64_t sub_2282675B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Dosage(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_228267618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_22826767C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  if (sub_22838F470())
  {
    v6 = v5;
  }

  else
  {
    v6 = a1;
  }

  return sub_228267820(v6, a2, type metadata accessor for Dosage);
}

void sub_228267710(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_22826779C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for Dosage(0) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_228265310(a1, v6, v7, a2);
}

uint64_t sub_228267820(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_228267888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_2282678CC()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_2282678FC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_228267710(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22826797C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_228267710(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2282679EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_228267A54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_228267B30(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = a2[2];
  v29 = a2[3];
  sub_22819A064(0, &qword_27D827750, &qword_27D8238E8, MEMORY[0x277D10F28], 0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_228397F40;
  type metadata accessor for ScheduleTypePickerDataSource(0);
  *(swift_allocObject() + qword_27D826228) = a1;

  v7 = sub_228390390();

  sub_22826826C();

  v8 = MEMORY[0x277D10F80];
  *(v6 + 32) = v7;
  *(v6 + 40) = v8;
  sub_2283901F0();
  swift_allocObject();
  sub_228390210();
  v9 = sub_228390480();
  v10 = &off_2785F4000;
  v30 = [v9 navigationItem];
  if (qword_27D823300 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v11 = type metadata accessor for ScheduleTypePickerViewController(0);
  v31[3] = v11;
  v31[0] = v9;
  v12 = sub_228391FC0();

  if (v11)
  {
    v13 = __swift_project_boxed_opaque_existential_0(v31, v11);
    v28 = v9;
    v14 = v5;
    v15 = *(v11 - 8);
    MEMORY[0x28223BE20](v13);
    v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v17);
    v18 = sub_228393450();
    (*(v15 + 8))(v17, v11);
    v5 = v14;
    v10 = &off_2785F4000;
    v9 = v28;
    __swift_destroy_boxed_opaque_existential_0(v31);
  }

  else
  {
    v18 = 0;
  }

  v19 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithTitle:v12 style:2 target:v18 action:sel_doneButtonSelected];

  swift_unknownObjectRelease();
  v20 = v30;
  [v30 setRightBarButtonItem_];

  if (v3)
  {

    v21 = v29;

    v22 = [v9 v10[101]];
    sub_2283900F0();
    v23 = [objc_opt_self() labelColor];
    v24 = sub_2283900E0();
    [v22 setTitleView_];

    sub_228267618(v4, v3, v5, v21);
  }

  else
  {
    v25 = sub_228391FC0();
    [v9 setTitle_];
  }

  return v9;
}

id sub_228268060()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScheduleTypePickerViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_228268110()
{
  v0 = sub_2283900D0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = (v1 + 8);
  if (sub_2283901D0())
  {
    sub_228390010();
    sub_2283901C0();
    v5 = sub_2283900C0();
    swift_unknownObjectRelease();
    (*v4)(v3, v0);
  }

  else
  {
    sub_228390040();
    sub_2283901C0();
    v5 = sub_2283900C0();
    swift_unknownObjectRelease();
    (*v4)(v3, v0);
    [v5 setContentInsets_];
  }

  return v5;
}

uint64_t sub_22826826C()
{
  v0 = sub_22838FEF0();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v57 = &v52 - v5;
  sub_2282694D4(0, &qword_27D824EB0, MEMORY[0x277D10FE0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v52 - v7;
  v59 = sub_228390150();
  v56 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v11 = sub_228390130();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  sub_228390140();
  v12 = sub_2281F96C0();
  v13 = *(v12 + 16);
  v58 = v10;
  if (v13)
  {
    v53 = v4;
    v54 = v1;
    v55 = v0;
    v75 = MEMORY[0x277D84F90];
    sub_2281CA28C(0, v13, 0);
    v14 = sub_2283904F0();
    v15 = v75;
    v61 = *(v64 + qword_27D826228);
    v62 = v14;
    v60 = 0x80000002283AF590;
    v71 = v13 - 1;
    v16 = 32;
    for (i = v12; ; v12 = i)
    {
      v65 = v16;
      v17 = *(v12 + v16);
      v72 = 0;
      v73 = 0xE000000000000000;
      sub_2283931D0();

      v72 = 0xD000000000000019;
      v73 = v60;
      v74 = v17;
      v18 = sub_228393420();
      MEMORY[0x22AAB5C80](v18);

      v69 = v73;
      v70 = v72;
      v19 = sub_2281F8E98(v17);
      v67 = v20;
      v68 = v19;
      v66 = sub_2281F92A8(v17);
      v22 = v21;
      sub_228391870();
      v23 = v74;
      if (qword_27D8232B8 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v24 = off_27D8250A8;
      if (*(off_27D8250A8 + 2))
      {
        v25 = sub_2281A9BCC();
        if (v26)
        {
          v23 = *(v24[7] + 8 * v25);
        }
      }

      swift_endAccess();
      v27 = swift_allocObject();
      swift_weakInit();
      v28 = swift_allocObject();
      *(v28 + 16) = v27;
      *(v28 + 24) = v17;
      v29 = sub_22838FBB0();
      v31 = v30;
      v75 = v15;
      v33 = *(v15 + 16);
      v32 = *(v15 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_2281CA28C((v32 > 1), v33 + 1, 1);
        v15 = v75;
      }

      *(v15 + 16) = v33 + 1;
      v34 = v15 + 88 * v33;
      *(v34 + 32) = v29;
      *(v34 + 40) = v31;
      v35 = v69;
      *(v34 + 48) = v70;
      *(v34 + 56) = v35;
      v36 = v67;
      *(v34 + 64) = v68;
      *(v34 + 72) = v36;
      *(v34 + 80) = v66;
      *(v34 + 88) = v22;
      *(v34 + 96) = v23 == v17;
      v37 = *(&v72 + 3);
      *(v34 + 97) = v72;
      *(v34 + 100) = v37;
      *(v34 + 104) = sub_2282694CC;
      *(v34 + 112) = v28;
      if (!v71)
      {
        break;
      }

      --v71;
      v16 = v65 + 8;
    }

    v0 = v55;
    v1 = v54;
    v38 = v53;
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
    v38 = v4;
  }

  sub_22819A064(0, &qword_27D823918, &qword_27D827E00, MEMORY[0x277D10D40], 1);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_228397F40;
  v40 = v59;
  *(v39 + 56) = v59;
  *(v39 + 64) = sub_228269474();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v39 + 32));
  v42 = v56;
  (*(v56 + 16))(boxed_opaque_existential_1, v58, v40);
  v43 = v57;
  sub_22838FED0();
  sub_2281962E4(v15);

  sub_22838FED0();
  sub_2282694D4(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
  v44 = *(v1 + 72);
  v45 = v38;
  v46 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_228397F30;
  v48 = v47 + v46;
  v49 = *(v1 + 16);
  v49(v48, v43, v0);
  v49(v48 + v44, v45, v0);
  sub_22838FF50();

  v50 = *(v1 + 8);
  v50(v45, v0);
  v50(v43, v0);
  return (*(v42 + 8))(v58, v59);
}

uint64_t sub_2282689F8(uint64_t a1)
{
  sub_228391520();
  sub_22823C530();
  sub_228392AD0();
  v1 = sub_228391450();
  sub_228391410();
  v1(v5, 0);
  v2 = [objc_opt_self() labelColor];
  v3 = sub_228391450();
  sub_228391420();
  return v3(v5, 0);
}

uint64_t sub_228268AFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_228391850();
    sub_22826826C();
  }

  return result;
}

uint64_t sub_228268BE4()
{
  sub_2283903B0();

  return swift_deallocClassInstance();
}

uint64_t sub_228268C74@<X0>(uint64_t *a1@<X8>)
{
  sub_2282694D4(0, &qword_27D824EB0, MEMORY[0x277D10FE0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - v3;
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v5 = sub_228390130();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  a1[3] = sub_228390150();
  a1[4] = sub_228269474();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_228390140();
}

uint64_t sub_228268E28()
{
  sub_228390120();
  sub_2283926D0();
  return sub_2283926B0();
}

uint64_t sub_228268E80(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v10 = *(a2 + 48);
  v9 = *(a2 + 56);
  v11 = *(a2 + 64);
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24) || (sub_228393460()) && (v2 == v7 && v4 == v8 || (sub_228393460()))
  {
    if (v5)
    {
      if (v9 && (v3 == v10 && v5 == v9 || (sub_228393460() & 1) != 0))
      {
        return v6 ^ v11 ^ 1u;
      }
    }

    else if (!v9)
    {
      return v6 ^ v11 ^ 1u;
    }
  }

  return 0;
}

uint64_t sub_228268F78@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_228391590();
  v3 = MEMORY[0x277D74C30];
  a1[3] = v2;
  a1[4] = v3;
  __swift_allocate_boxed_opaque_existential_1(a1);
  sub_228391520();

  sub_228391540();

  sub_2283913D0();
  v4 = [objc_opt_self() secondaryLabelColor];
  v5 = sub_2283914A0();
  sub_228391420();
  return v5(&v7, 0);
}

uint64_t sub_228269060()
{
  v0 = sub_228391220();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2282694D4(0, &qword_280DDBCE8, MEMORY[0x277D74AC8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v14 = sub_228391250();
  v7 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2282694D4(0, &unk_280DDB890, MEMORY[0x277D74AE0], MEMORY[0x277D84560]);
  sub_2283912F0();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_228397F40;
  v11 = sub_228391230();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  sub_228391240();
  (*(v1 + 104))(v3, *MEMORY[0x277D74A98], v0);
  sub_2283912E0();
  (*(v1 + 8))(v3, v0);
  (*(v7 + 8))(v9, v14);
  return v10;
}

uint64_t sub_22826937C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 72);
  if (v3)
  {
    return v3(a2);
  }

  return result;
}

uint64_t sub_2282693B0@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  v2 = *MEMORY[0x277D10F90];
  v3 = sub_22838FFC0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_228269428(uint64_t a1)
{
  v2 = sub_228269620();

  return MEMORY[0x282169440](a1, v2);
}

unint64_t sub_228269474()
{
  result = qword_27D824EC8;
  if (!qword_27D824EC8)
  {
    sub_228390150();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D824EC8);
  }

  return result;
}

void sub_2282694D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t get_enum_tag_for_layout_string_So16UIViewControllerCIegg_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_228269574(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_2282695BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_228269620()
{
  result = qword_27D826240;
  if (!qword_27D826240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826240);
  }

  return result;
}

uint64_t MedicationDetailItem.reuseIdentifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t MedicationDetailItem.uniqueIdentifier.getter()
{
  v1 = [*v0 semanticIdentifier];
  v2 = [v1 description];
  v3 = sub_228392000();
  v5 = v4;

  MEMORY[0x22AAB5C80](v3, v5);

  return 0x74496C6961746544;
}

void MedicationDetailItem.hash(into:)(uint64_t a1)
{
  v2 = [*v1 semanticIdentifier];
  sub_228392C70();
}

uint64_t MedicationDetailItem.hashValue.getter()
{
  v1 = *v0;
  sub_228393520();
  v2 = [v1 semanticIdentifier];
  sub_228392C70();

  return sub_228393570();
}

uint64_t sub_22826987C()
{
  v1 = *v0;
  sub_228393520();
  v2 = [v1 semanticIdentifier];
  sub_228392C70();

  return sub_228393570();
}

void sub_2282698E0(uint64_t a1)
{
  v2 = [*v1 semanticIdentifier];
  sub_228392C70();
}

uint64_t sub_228269948(uint64_t a1)
{
  v2 = *v1;
  sub_228393520();
  v3 = [v2 semanticIdentifier];
  sub_228392C70();

  return sub_228393570();
}

unint64_t sub_2282699AC()
{
  result = qword_27D826248;
  if (!qword_27D826248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826248);
  }

  return result;
}

unint64_t sub_228269A58()
{
  result = qword_27D826250;
  if (!qword_27D826250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826250);
  }

  return result;
}

uint64_t sub_228269AAC()
{
  v1 = [*v0 semanticIdentifier];
  v2 = [v1 description];
  v3 = sub_228392000();
  v5 = v4;

  MEMORY[0x22AAB5C80](v3, v5);

  return 0x74496C6961746544;
}

uint64_t sub_228269B5C(uint64_t a1)
{
  v2 = sub_22826AD04();

  return MEMORY[0x282169440](a1, v2);
}

id sub_228269BB8()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI20MedicationDetailCell____lazy_storage___nickNameLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationDetailCell____lazy_storage___nickNameLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationDetailCell____lazy_storage___nickNameLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    [v5 setNumberOfLines_];
    [v5 setTextAlignment_];
    v6 = [objc_opt_self() labelColor];
    [v5 setTextColor_];

    [v5 setAdjustsFontForContentSizeCategory_];
    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v7 = sub_228392AD0();
    [v5 setFont_];

    v8 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_228269D28(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = v1;
    v6 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    [v6 setNumberOfLines_];
    [v6 setTextAlignment_];
    v7 = [objc_opt_self() labelColor];
    [v6 setTextColor_];

    [v6 setAdjustsFontForContentSizeCategory_];
    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v8 = sub_228392AD0();
    [v6 setFont_];

    v9 = *(v5 + v2);
    *(v5 + v2) = v6;
    v4 = v6;

    v3 = 0;
  }

  v10 = v3;
  return v4;
}

void sub_228269FD0()
{
  sub_22817A7F0(0, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v30 - v2;
  sub_228391380();
  v4 = sub_2283913A0();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  MEMORY[0x22AAB6420](v3);
  sub_228180ED0();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_228399D40;
  *(v5 + 32) = sub_228269BB8();
  *(v5 + 40) = sub_228269D10();
  *(v5 + 48) = sub_228269D1C();
  v6 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_22817A958(0, &qword_280DDB9B0, 0x277D75D18);
  v7 = sub_228392190();

  v8 = [v6 initWithArrangedSubviews_];

  [v8 setAxis_];
  [v8 setAlignment_];
  [v8 setDistribution_];
  [v8 setSpacing_];
  v9 = [v0 contentView];
  v10 = v8;
  [v9 addSubview_];

  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  v11 = objc_opt_self();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_228397F00;
  v13 = [v10 leadingAnchor];

  v14 = [v0 contentView];
  v15 = [v14 leadingAnchor];

  v16 = [v13 constraintEqualToAnchor:v15 constant:16.0];
  *(v12 + 32) = v16;
  v17 = [v10 trailingAnchor];

  v18 = [v0 contentView];
  v19 = [v18 trailingAnchor];

  v20 = [v17 constraintEqualToAnchor:v19 constant:-16.0];
  *(v12 + 40) = v20;
  v21 = [v10 topAnchor];

  v22 = [v0 contentView];
  v23 = [v22 topAnchor];

  v24 = [v21 constraintEqualToAnchor_];
  *(v12 + 48) = v24;
  v25 = [v10 bottomAnchor];

  v26 = [v0 contentView];
  v27 = [v26 bottomAnchor];

  v28 = [v25 constraintEqualToAnchor_];
  *(v12 + 56) = v28;
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v29 = sub_228392190();

  [v11 activateConstraints_];
}

void sub_22826A478()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v57 - v7;
  v9 = OBJC_IVAR____TtC19HealthMedicationsUI20MedicationDetailCell_item;
  swift_beginAccess();
  sub_22817E6C8(&v1[v9], &v63);
  if (!v65)
  {
    sub_22819482C(&v63);
LABEL_6:
    sub_228391150();
    v14 = v1;
    v15 = sub_2283911A0();
    v16 = sub_2283925C0();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v60 = v2;
      v19 = v18;
      v62[0] = v18;
      *v17 = 136446466;
      v20 = sub_228393600();
      v22 = sub_2281C96FC(v20, v21, v62);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2080;
      sub_22817E6C8(&v1[v9], &v63);
      sub_22817A7F0(0, &qword_280DDCD50, sub_22817A700);
      v23 = sub_228392040();
      v25 = sub_2281C96FC(v23, v24, v62);

      *(v17 + 14) = v25;
      _os_log_impl(&dword_22816B000, v15, v16, "%{public}s Incorrect view model for MedicationDetailCell: %s Expecting MedicationDetailItem", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAB7B80](v19, -1, -1);
      MEMORY[0x22AAB7B80](v17, -1, -1);

      (*(v3 + 8))(v6, v60);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }

    return;
  }

  sub_22817A700();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  v10 = v62[0];
  v59 = v62[2];
  v60 = v2;
  v11 = [v62[0] userSpecifiedName];
  v12 = sub_228269BB8();
  v13 = v12;
  if (v11)
  {
    [v12 setText_];

    v13 = v11;
  }

  else
  {
    [v12 setText_];
  }

  [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI20MedicationDetailCell____lazy_storage___nickNameLabel] setHidden_];
  v63 = v10;
  sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  v26 = sub_228390F00();
  if (v27)
  {
    v28 = v26;
    v29 = v27;
  }

  else
  {
    v30 = [v10 freeTextMedicationName];
    if (!v30)
    {
      sub_228391150();
      v46 = v1;
      v47 = sub_2283911A0();
      v48 = sub_2283925C0();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v61 = v58;
        *v49 = 136446466;
        v50 = sub_228393600();
        v52 = sub_2281C96FC(v50, v51, &v61);

        *(v49 + 4) = v52;
        *(v49 + 12) = 2080;
        sub_22817E6C8(&v1[v9], &v63);
        sub_22817A7F0(0, &qword_280DDCD50, sub_22817A700);
        v53 = sub_228392040();
        v55 = sub_2281C96FC(v53, v54, &v61);

        *(v49 + 14) = v55;
        _os_log_impl(&dword_22816B000, v47, v48, "%{public}s Failed to retrieve medication name: %s", v49, 0x16u);
        v56 = v58;
        swift_arrayDestroy();
        MEMORY[0x22AAB7B80](v56, -1, -1);
        MEMORY[0x22AAB7B80](v49, -1, -1);
      }

      else
      {
      }

      (*(v3 + 8))(v8, v60);
      return;
    }

    v31 = v30;
    v28 = sub_228392000();
    v29 = v32;
  }

  v62[0] = v28;
  v62[1] = v29;
  v33 = _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE8doseFormSSSgvg_0();
  if (v34)
  {
    v63 = 8236;
    v64 = 0xE200000000000000;
    MEMORY[0x22AAB5C80](v33);

    MEMORY[0x22AAB5C80](v63, v64);
  }

  v35 = sub_228269D10();
  v36 = sub_228391FC0();
  [v35 setText_];

  v37 = _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE8strengthSSSgvg_0();
  v39 = v38;

  if (v39)
  {
    v40 = v39;
  }

  else
  {
    v37 = 0;
    v40 = 0xE000000000000000;
  }

  v41 = sub_228269D1C();
  v42 = v41;
  v43 = HIBYTE(v40) & 0xF;
  if ((v40 & 0x2000000000000000) == 0)
  {
    v43 = v37 & 0xFFFFFFFFFFFFLL;
  }

  [v41 setHidden_];

  v44 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI20MedicationDetailCell____lazy_storage___strengthLabel];
  v45 = sub_228391FC0();

  [v44 setText_];
}

id sub_22826AAE4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationDetailCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22826ABA8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI20MedicationDetailCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_22826AC00(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI20MedicationDetailCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_22826A478();
  return sub_22819482C(a1);
}

void (*sub_22826AC6C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_22826ACD0;
}

void sub_22826ACD0(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_22826A478();
  }
}

unint64_t sub_22826AD04()
{
  result = qword_27D826278;
  if (!qword_27D826278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826278);
  }

  return result;
}

uint64_t TextViewItem.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22838F4A0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TextViewItem.text.getter()
{
  v1 = *(v0 + *(type metadata accessor for TextViewItem(0) + 20));

  return v1;
}

uint64_t type metadata accessor for TextViewItem(uint64_t a1)
{
  result = qword_27D8262A0;
  if (!qword_27D8262A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TextViewItem.text.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TextViewItem(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TextViewItem.placeholder.getter()
{
  v1 = *(v0 + *(type metadata accessor for TextViewItem(0) + 24));

  return v1;
}

uint64_t TextViewItem.placeholder.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TextViewItem(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TextViewItem.characterLimit.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for TextViewItem(0);
  v6 = v2 + *(result + 28);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t TextViewItem.height.setter(double a1)
{
  result = type metadata accessor for TextViewItem(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t TextViewItem.isEnabled.setter(char a1)
{
  result = type metadata accessor for TextViewItem(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t TextViewItem.reuseIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for TextViewItem(0) + 44));

  return v1;
}

uint64_t TextViewItem.uniqueIdentifier.getter(uint64_t a1)
{
  strcpy(v3, "TextViewItem.");
  v1 = sub_22838F450();
  MEMORY[0x22AAB5C80](v1);

  return v3[0];
}

uint64_t TextViewItem.init(text:height:placeholder:characterLimit:isEnabled:updateHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11)
{
  sub_22838F490();
  v16 = type metadata accessor for TextViewItem(0);
  v17 = (a9 + v16[5]);
  v18 = (a9 + v16[6]);
  v19 = a9 + v16[7];
  v20 = (a9 + v16[11]);
  type metadata accessor for TextItemCell();
  sub_22826D888(&qword_27D826280, v21, type metadata accessor for TextItemCell, &unk_22839F838);
  result = sub_22838FBB0();
  *v20 = result;
  v20[1] = v23;
  *v17 = a1;
  v17[1] = a2;
  *(a9 + v16[8]) = a10;
  *v18 = a3;
  v18[1] = a4;
  *v19 = a5;
  *(v19 + 8) = a6 & 1;
  *(a9 + v16[9]) = a7;
  v24 = (a9 + v16[10]);
  *v24 = a8;
  v24[1] = a11;
  return result;
}

uint64_t TextViewItem.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for TextViewItem(0);
  if (*(v1 + *(v2 + 20) + 8))
  {
    sub_228393540();
    sub_2283920B0();
  }

  else
  {
    sub_228393540();
  }

  v3 = *(v1 + *(v2 + 32));
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x22AAB7100](*&v3);
  return sub_228393540();
}

uint64_t TextViewItem.hashValue.getter()
{
  sub_228393520();
  v1 = type metadata accessor for TextViewItem(0);
  if (*(v0 + *(v1 + 20) + 8))
  {
    sub_228393540();
    sub_2283920B0();
  }

  else
  {
    sub_228393540();
  }

  v2 = *(v0 + *(v1 + 32));
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x22AAB7100](*&v2);
  sub_228393540();
  return sub_228393570();
}

uint64_t sub_22826B50C(uint64_t a1, int *a2)
{
  sub_228393520();
  if (*(v2 + a2[5] + 8))
  {
    sub_228393540();
    sub_2283920B0();
  }

  else
  {
    sub_228393540();
  }

  v4 = *(v2 + a2[8]);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x22AAB7100](*&v4);
  sub_228393540();
  return sub_228393570();
}

uint64_t sub_22826B5E0(uint64_t a1)
{
  strcpy(v3, "TextViewItem.");
  v1 = sub_22838F450();
  MEMORY[0x22AAB5C80](v1);

  return v3[0];
}

uint64_t sub_22826B644(uint64_t a1)
{
  v2 = sub_22826D888(&unk_27D826360, 255, type metadata accessor for TextViewItem, &protocol conformance descriptor for TextViewItem);

  return MEMORY[0x282169440](a1, v2);
}

id sub_22826B6C4()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI12TextItemCell____lazy_storage___textView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI12TextItemCell____lazy_storage___textView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI12TextItemCell____lazy_storage___textView);
  }

  else
  {
    v4 = v0;
    type metadata accessor for UITextViewWithPlaceholder();
    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    sub_228392560();
    [v5 setTextContainerInset_];
    v6 = [objc_opt_self() secondarySystemBackgroundColor];
    [v5 setBackgroundColor_];

    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v7 = sub_228392AD0();
    [v5 setFont_];

    [v5 setDelegate_];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    v13 = sub_228392000();
    v14 = v8;

    MEMORY[0x22AAB5C80](0xD000000000000025, 0x80000002283AF770);

    v9 = sub_228391FC0();

    [v5 setAccessibilityIdentifier_];

    v10 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

char *sub_22826B8C8(double a1, double a2, double a3, double a4)
{
  sub_22826D658(0, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v24 - v10;
  v12 = sub_2283913A0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI12TextItemCell____lazy_storage___textView] = 0;
  v16 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI12TextItemCell_item];
  v17 = type metadata accessor for TextItemCell();
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *(v16 + 4) = 0;
  v24.receiver = v4;
  v24.super_class = v17;
  v18 = objc_msgSendSuper2(&v24, sel_initWithFrame_, a1, a2, a3, a4);
  v19 = [v18 contentView];
  v20 = sub_22826B6C4();
  [v19 addSubview_];

  v21 = *&v18[OBJC_IVAR____TtC19HealthMedicationsUI12TextItemCell____lazy_storage___textView];
  sub_22838F7B0();
  sub_228392B00();

  sub_228391390();
  v22 = [objc_opt_self() tertiarySystemBackgroundColor];
  sub_228391370();
  (*(v13 + 16))(v11, v15, v12);
  (*(v13 + 56))(v11, 0, 1, v12);
  MEMORY[0x22AAB6420](v11);

  (*(v13 + 8))(v15, v12);
  return v18;
}

void sub_22826BB88()
{
  v1 = v0;
  sub_22826D658(0, &qword_27D826340, type metadata accessor for TextViewItem);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v36 - v3 + 22;
  v5 = sub_22826B6C4();
  v6 = OBJC_IVAR____TtC19HealthMedicationsUI12TextItemCell____lazy_storage___textView;
  v7 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI12TextItemCell____lazy_storage___textView] constraints];
  if (!v7)
  {
    sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
    sub_2283921A0();
    v7 = sub_228392190();
  }

  [v5 removeConstraints_];

  sub_22826D838(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22839CC40;
  v9 = [*&v1[v6] leadingAnchor];
  v10 = [v1 contentView];
  v11 = [v10 leadingAnchor];

  v12 = [v9 constraintEqualToAnchor_];
  *(v8 + 32) = v12;
  v13 = [*&v1[v6] trailingAnchor];
  v14 = [v1 contentView];
  v15 = [v14 trailingAnchor];

  v16 = [v13 constraintEqualToAnchor_];
  *(v8 + 40) = v16;
  v17 = [*&v1[v6] topAnchor];
  v18 = [v1 contentView];
  v19 = [v18 topAnchor];

  v20 = [v17 constraintEqualToAnchor_];
  *(v8 + 48) = v20;
  v21 = [*&v1[v6] bottomAnchor];
  v22 = [v1 contentView];
  v23 = [v22 bottomAnchor];

  v24 = [v21 constraintEqualToAnchor_];
  *(v8 + 56) = v24;
  v25 = [*&v1[v6] heightAnchor];
  v26 = OBJC_IVAR____TtC19HealthMedicationsUI12TextItemCell_item;
  swift_beginAccess();
  sub_22817E6C8(&v1[v26], v36);
  if (!v37)
  {
    sub_228181138(v36, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48]);
    v31 = type metadata accessor for TextViewItem(0);
    (*(*(v31 - 8) + 56))(v4, 1, 1, v31);
    goto LABEL_7;
  }

  sub_2281810DC(0, &qword_280DDCD60, MEMORY[0x277D10D48]);
  v27 = type metadata accessor for TextViewItem(0);
  v28 = swift_dynamicCast();
  v29 = *(v27 - 8);
  (*(v29 + 56))(v4, v28 ^ 1u, 1, v27);
  if ((*(v29 + 48))(v4, 1, v27) == 1)
  {
LABEL_7:
    sub_22826D6AC(v4);
    v30 = 60.0;
    goto LABEL_8;
  }

  v30 = *&v4[*(v27 + 32)];
  sub_22826D788(v4);
LABEL_8:
  v32 = objc_opt_self();
  v33 = [v25 constraintEqualToConstant_];

  *(v8 + 64) = v33;
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v34 = sub_228392190();

  [v32 activateConstraints_];
}

uint64_t sub_22826C160()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22826D658(0, &qword_27D826340, type metadata accessor for TextViewItem);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v33 - v7;
  v9 = type metadata accessor for TextViewItem(0);
  v10 = *(v9 - 1);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC19HealthMedicationsUI12TextItemCell_item;
  swift_beginAccess();
  sub_22817E6C8(&v1[v13], v38);
  if (v39)
  {
    sub_2281810DC(0, &qword_280DDCD60, MEMORY[0x277D10D48]);
    v14 = swift_dynamicCast();
    (*(v10 + 56))(v8, v14 ^ 1u, 1, v9);
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      sub_22826D724(v8, v12);
      sub_22826BB88();
      v15 = sub_22826B6C4();
      if (*&v12[v9[5] + 8])
      {

        v16 = sub_228391FC0();
      }

      else
      {
        v16 = 0;
      }

      v26 = type metadata accessor for UITextViewWithPlaceholder();
      v36.receiver = v15;
      v36.super_class = v26;
      objc_msgSendSuper2(&v36, sel_setText_, v16);

      v35.receiver = v15;
      v35.super_class = v26;
      v27 = objc_msgSendSuper2(&v35, sel_text);
      v34.receiver = v15;
      v34.super_class = v26;
      objc_msgSendSuper2(&v34, sel_setText_, v27);

      sub_2283255A4();
      v28 = OBJC_IVAR____TtC19HealthMedicationsUI12TextItemCell____lazy_storage___textView;
      v29 = *&v12[v9[6] + 8];
      v30 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI12TextItemCell____lazy_storage___textView];
      v31 = sub_2283251B8();
      if (v29)
      {
        v32 = sub_228391FC0();
      }

      else
      {
        v32 = 0;
      }

      [v31 setText_];

      [*&v1[v28] setUserInteractionEnabled_];
      return sub_22826D788(v12);
    }
  }

  else
  {
    sub_228181138(v38, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48]);
    (*(v10 + 56))(v8, 1, 1, v9);
  }

  sub_22826D6AC(v8);
  sub_228391150();
  v17 = v1;
  v18 = sub_2283911A0();
  v19 = sub_2283925C0();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v37 = v21;
    *v20 = 136446210;
    sub_22817E6C8(&v1[v13], v38);
    sub_228181084(0, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48]);
    v22 = sub_228392040();
    v24 = sub_2281C96FC(v22, v23, &v37);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_22816B000, v18, v19, "Incorrect view model for TextItemCell: %{public}s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x22AAB7B80](v21, -1, -1);
    MEMORY[0x22AAB7B80](v20, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

BOOL sub_22826C6A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = OBJC_IVAR____TtC19HealthMedicationsUI12TextItemCell_item;
  swift_beginAccess();
  sub_22817E6C8(v5 + v9, v25);
  if (!v26)
  {
    sub_228181138(v25, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48]);
    v27 = 0u;
    v28 = 0u;
    v29 = 0;
    goto LABEL_9;
  }

  sub_2281810DC(0, &qword_280DDCD60, MEMORY[0x277D10D48]);
  sub_2281810DC(0, &qword_27D826350, &protocol descriptor for CharacterLimitProvider);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    goto LABEL_9;
  }

  v10 = *(&v28 + 1);
  if (!*(&v28 + 1))
  {
LABEL_9:
    sub_228181138(&v27, &qword_27D826348, &qword_27D826350, &protocol descriptor for CharacterLimitProvider);
    return 1;
  }

  v11 = v29;
  __swift_project_boxed_opaque_existential_0(&v27, *(&v28 + 1));
  v12 = (*(v11 + 8))(v10, v11);
  v14 = v13;
  __swift_destroy_boxed_opaque_existential_0(&v27);
  if (v14)
  {
    return 1;
  }

  v15 = [a1 text];
  if (v15)
  {
    v16 = v15;
    v17 = sub_228392000();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0xE000000000000000;
  }

  v21 = sub_228392540();
  if (v23)
  {

    return 0;
  }

  else
  {
    sub_22826C8CC(v21, v22, a4, a5, v17, v19);

    v24 = sub_2283920C0();

    return v12 >= v24;
  }
}

unint64_t sub_22826C8CC(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{

  sub_228392F20();
  v13 = v12;

  if ((v13 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  sub_228392F20();
  v15 = v14;

  if ((v15 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  v17 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v17) = 1;
  }

  v18 = 4 << v17;
  v19 = a1;
  if ((a1 & 0xC) == 4 << v17)
  {
    result = sub_22826D348(a1, a5, a6);
    v19 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_7:
    v20 = v19 >> 16;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v21 = HIBYTE(a6) & 0xF;
    }

    else
    {
      v21 = a5 & 0xFFFFFFFFFFFFLL;
    }

    v22 = (v21 << 16) | 7;
    LOBYTE(v23) = 1;
    goto LABEL_11;
  }

  if ((a6 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v21 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (v21 < v19 >> 16)
  {
    goto LABEL_42;
  }

  v20 = sub_228392110();
  v27 = 11;
  if ((a5 & 0x800000000000000) != 0)
  {
    v27 = 7;
  }

  v22 = v27 | (v21 << 16);
  v23 = (a5 & 0x800000000000000) >> 59;
LABEL_11:
  result = a2;
  if ((a2 & 0xC) == 4 << v23)
  {
    v28 = v22;
    result = sub_22826D348(a2, a5, a6);
    v22 = v28;
  }

  if ((v22 & 0xC) == v18)
  {
    v29 = result;
    v22 = sub_22826D348(v22, a5, a6);
    result = v29;
    if ((a6 & 0x1000000000000000) == 0)
    {
LABEL_15:
      result = (v22 >> 16) - (result >> 16);
      if ((a4 & 0x1000000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_36;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
    goto LABEL_15;
  }

  if (v21 < result >> 16)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v21 >= v22 >> 16)
  {
    result = sub_228392110();
    if ((a4 & 0x1000000000000000) == 0)
    {
LABEL_16:
      if ((a4 & 0x2000000000000000) != 0)
      {
        v25 = HIBYTE(a4) & 0xF;
        v26 = __OFADD__(v20, v25);
        v24 = v20 + v25;
        if (!v26)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v24 = v20 + (a3 & 0xFFFFFFFFFFFFLL);
        if (!__OFADD__(v20, a3 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_21;
        }
      }

      goto LABEL_38;
    }

LABEL_36:
    v30 = result;
    v31 = sub_2283920F0();
    result = v30;
    v26 = __OFADD__(v20, v31);
    v24 = v20 + v31;
    if (!v26)
    {
LABEL_21:
      v26 = __OFADD__(v24, result);
      result += v24;
      if (!v26)
      {
        MEMORY[0x22AAB5C30](result);
LABEL_23:
        sub_228392140();
        sub_22826D7E4();
        sub_2283920D0();

        sub_2283920D0();
        sub_22826D2FC(a2, a5, a6);
        sub_2283920D0();

        return 0;
      }

      goto LABEL_39;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_22826CC70(void *a1)
{
  v2 = v1;
  v4 = sub_2283911B0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22826D658(0, &qword_27D826340, type metadata accessor for TextViewItem);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - v9;
  v11 = type metadata accessor for TextViewItem(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC19HealthMedicationsUI12TextItemCell_item;
  swift_beginAccess();
  sub_22817E6C8(v2 + v15, v34);
  if (v35)
  {
    sub_2281810DC(0, &qword_280DDCD60, MEMORY[0x277D10D48]);
    v16 = swift_dynamicCast();
    (*(v12 + 56))(v10, v16 ^ 1u, 1, v11);
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      sub_22826D724(v10, v14);
      v17 = *&v14[*(v11 + 40)];
      v18 = [a1 text];
      if (v18)
      {
        v19 = v18;
        v20 = sub_228392000();
        v22 = v21;
      }

      else
      {
        v20 = 0;
        v22 = 0xE000000000000000;
      }

      v17(v14, v20, v22);

      return sub_22826D788(v14);
    }
  }

  else
  {
    sub_228181138(v34, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48]);
    (*(v12 + 56))(v10, 1, 1, v11);
  }

  sub_22826D6AC(v10);
  sub_228391150();
  v23 = v2;
  v24 = sub_2283911A0();
  v25 = sub_2283925C0();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v33 = v27;
    *v26 = 136446210;
    sub_22817E6C8(v2 + v15, v34);
    sub_228181084(0, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48]);
    v28 = sub_228392040();
    v30 = sub_2281C96FC(v28, v29, &v33);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_22816B000, v24, v25, "Incorrect view model for TextItemCell: %{public}s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x22AAB7B80](v27, -1, -1);
    MEMORY[0x22AAB7B80](v26, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

id sub_22826D0FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TextItemCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22826D188@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI12TextItemCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_22826D1E0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI12TextItemCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_22826C160();
  return sub_228181138(a1, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48]);
}

uint64_t (*sub_22826D264(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_22826D2C8;
}

uint64_t sub_22826D2C8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_22826C160();
  }

  return result;
}

unint64_t sub_22826D2FC(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_228392140();
  }

  __break(1u);
  return result;
}

unint64_t sub_22826D348(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_228392120();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x22AAB5CA0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t _s19HealthMedicationsUI12TextViewItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextViewItem(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      goto LABEL_12;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_228393460();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        goto LABEL_12;
      }
    }
  }

  else if (v9)
  {
LABEL_12:
    v13 = 0;
    return v13 & 1;
  }

  if (*(a1 + v4[8]) != *(a2 + v4[8]))
  {
    goto LABEL_12;
  }

  v13 = *(a1 + v4[9]) ^ *(a2 + v4[9]) ^ 1;
  return v13 & 1;
}

void sub_22826D540(uint64_t a1)
{
  sub_22838F4A0();
  if (v1 <= 0x3F)
  {
    sub_22826D838(319, &qword_27D825070, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_22826D838(319, &unk_27D8262B8, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_2281C35D8();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22826D658(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_228392F00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22826D6AC(uint64_t a1)
{
  sub_22826D658(0, &qword_27D826340, type metadata accessor for TextViewItem);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22826D724(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextViewItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22826D788(uint64_t a1)
{
  v2 = type metadata accessor for TextViewItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22826D7E4()
{
  result = qword_27D826358;
  if (!qword_27D826358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826358);
  }

  return result;
}

void sub_22826D838(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_22826D888(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t InteractionResultItem.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_27D828D50;
  v4 = sub_22838F4A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InteractionResultItem.reuseIdentifier.getter()
{
  v0 = sub_22826DEB8();

  return v0;
}

uint64_t InteractionResultItem.__allocating_init(item:)(uint64_t a1)
{
  v2 = swift_allocObject();
  InteractionResultItem.init(item:)(a1);
  return v2;
}

uint64_t *InteractionResultItem.init(item:)(uint64_t a1)
{
  v3 = *v1;
  sub_22838F490();
  v4 = (v1 + qword_27D828D58);
  *v4 = sub_22838FBA0();
  v4[1] = v5;
  (*(*(*(v3 + 88) - 8) + 32))(v1 + *(*v1 + 120), a1);
  return v1;
}

uint64_t sub_22826DB00(uint64_t a1)
{
  v2 = *(v1 + qword_27D828D58);
  v3 = sub_22838F450();
  v5 = v4;

  MEMORY[0x22AAB5C80](v3, v5);

  return v2;
}

uint64_t *InteractionResultItem.deinit()
{
  v1 = *v0;
  v2 = qword_27D828D50;
  v3 = sub_22838F4A0();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 120));
  return v0;
}

uint64_t InteractionResultItem.__deallocating_deinit()
{
  InteractionResultItem.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_22826DCD8()
{
  sub_228393520();
  sub_2283920B0();
  return sub_228393570();
}

uint64_t sub_22826DD28()
{
  v0 = sub_22826DEB8();

  return v0;
}

uint64_t sub_22826DDCC(uint64_t a1)
{
  sub_228393520();
  sub_22826DB98(v2);
  return sub_228393570();
}

uint64_t sub_22826DE30(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282169440](a1, WitnessTable);
}

uint64_t sub_22826DF04(uint64_t a1)
{
  result = sub_22838F4A0();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22826E08C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_2283911B0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_228391590();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsDayHistoryEmptyCell_item;
  swift_beginAccess();
  sub_22817E6C8(v1 + v11, v23);
  if (v24)
  {
    sub_22817A700();
    type metadata accessor for MedicationsDayHistoryEmptyItem(0);
    if (swift_dynamicCast())
    {
      MEMORY[0x22AAB64A0]();

      sub_228391540();
      v24 = v7;
      v25 = MEMORY[0x277D74C30];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
      (*(v8 + 16))(boxed_opaque_existential_1, v10, v7);
      MEMORY[0x22AAB6400](v23);

      return (*(v8 + 8))(v10, v7);
    }
  }

  else
  {
    sub_22819482C(v23);
  }

  sub_228391150();
  v14 = sub_2283911A0();
  v15 = sub_2283925C0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v22 = v17;
    *v16 = 136446210;
    v23[0] = ObjectType;
    swift_getMetatypeMetadata();
    v18 = sub_228392020();
    v20 = sub_2281C96FC(v18, v19, &v22);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_22816B000, v14, v15, "[%{public}s]: Unexpected view model.", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x22AAB7B80](v17, -1, -1);
    MEMORY[0x22AAB7B80](v16, -1, -1);
  }

  return (*(v4 + 8))(v6, v3);
}

id sub_22826E4DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationsDayHistoryEmptyCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22826E544@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsDayHistoryEmptyCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_22826E59C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI30MedicationsDayHistoryEmptyCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_22826E08C();
  return sub_22819482C(a1);
}

uint64_t (*sub_22826E608(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_22826E66C;
}

uint64_t sub_22826E66C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_22826E08C();
  }

  return result;
}

uint64_t sub_22826E6A0()
{
  v1 = *v0;
  v2 = v0[1];
  v5 = v0[2];

  MEMORY[0x22AAB5C80](95, 0xE100000000000000);
  MEMORY[0x22AAB5CD0](v1, v2);
  v3 = sub_228393420();
  MEMORY[0x22AAB5C80](v3);

  return v5;
}

uint64_t sub_22826E72C(uint64_t a1)
{
  v2 = sub_22826EFC0();

  return MEMORY[0x282169440](a1, v2);
}

void sub_22826E8A8()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI41MedicationOnboardingSuggestionsHeaderCell_item;
  swift_beginAccess();
  sub_22817E6C8(v0 + v1, v8);
  if (v9)
  {
    sub_22817A700();
    if (swift_dynamicCast())
    {
      v2 = OBJC_IVAR____TtC19HealthMedicationsUI41MedicationOnboardingSuggestionsHeaderCell_headerView;
      [*(&v0->super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI41MedicationOnboardingSuggestionsHeaderCell_headerView) removeFromSuperview];
      v3 = sub_22826ECF0(v6, v7);

      v4 = *(&v0->super.super.isa + v2);
      *(&v0->super.super.isa + v2) = v3;
      v5 = v3;

      [(UIView *)v0 addSubview:v5];
      UIView.alignConstraints(to:)(v0);
    }
  }

  else
  {
    sub_22819482C(v8);
  }
}

id sub_22826E9B8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MedicationOnboardingSuggestionsHeaderCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_22826EA5C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI41MedicationOnboardingSuggestionsHeaderCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_22826EAB4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI41MedicationOnboardingSuggestionsHeaderCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_22826E8A8();
  return sub_22819482C(a1);
}

uint64_t (*sub_22826EB20(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_22826EB84;
}

uint64_t sub_22826EB88@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI41MedicationOnboardingSuggestionsHeaderCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v3 + v4, a1);
}

uint64_t sub_22826EBE4(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI41MedicationOnboardingSuggestionsHeaderCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v3 + v4);
  swift_endAccess();
  sub_22826E8A8();
  return sub_22819482C(a1);
}

uint64_t (*sub_22826EC54(uint64_t a1))()
{
  *(a1 + 24) = *v1;
  swift_beginAccess();
  return sub_22826F014;
}

void sub_22826ECBC(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_22826E8A8();
  }
}

id sub_22826ECF0(uint64_t a1, uint64_t a2)
{
  v2 = sub_2283900D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_228391590();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2283914F0();

  sub_228391540();
  sub_228390010();
  sub_2283900A0();
  (*(v3 + 8))(v5, v2);
  sub_2283914E0();
  v10 = sub_2283914C0();
  *(v11 + 16) = 0;
  v10(v17, 0);
  v12 = sub_2283913B0();
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 systemBackgroundColor];
  [v14 setBackgroundColor_];

  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  (*(v7 + 8))(v9, v6);
  return v14;
}

unint64_t sub_22826EF68()
{
  result = qword_27D826468;
  if (!qword_27D826468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826468);
  }

  return result;
}

unint64_t sub_22826EFC0()
{
  result = qword_27D826470;
  if (!qword_27D826470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826470);
  }

  return result;
}

uint64_t MedicationSearchItem.init(source:axIndex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22838F4A0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MedicationSearchItem(0);
  v11 = (a3 + v10[6]);
  sub_22838F490();
  v12 = sub_22838F450();
  v14 = v13;
  (*(v7 + 8))(v9, v6);
  *v11 = v12;
  v11[1] = v14;
  v15 = (a3 + v10[7]);
  type metadata accessor for MedicationSearchCell();
  sub_228272CE8(&qword_27D8239E8, v16, type metadata accessor for MedicationSearchCell, &unk_22839FE90);
  *v15 = sub_22838FBB0();
  v15[1] = v17;
  result = sub_228273478(a1, a3, type metadata accessor for MedicationSearchItem.Source);
  *(a3 + v10[5]) = a2;
  return result;
}

uint64_t sub_22826F200(uint64_t a1)
{
  v13[0] = a1;
  v2 = sub_228390C30();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D116A0];
  v7 = MEMORY[0x277D83D88];
  sub_2282733B4(0, &qword_27D8264E8, MEMORY[0x277D116A0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v13 - v9;
  sub_228273898(v1, v13 - v9, &qword_27D8264E8, v6, v7, sub_2282733B4);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    return 0;
  }

  (*(v3 + 32))(v5, v10, v2);
  v12 = v13[1];
  (v13[0])(&v14, v5);
  if (v12)
  {
    result = (*(v3 + 8))(v5, v2);
    __break(1u);
  }

  else
  {
    (*(v3 + 8))(v5, v2);
    return v14;
  }

  return result;
}

uint64_t MedicationSearchItem.Source.hash(into:)(uint64_t a1)
{
  v2 = sub_228390B70();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_228390C30();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MedicationSearchItem.Source(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_228272C84(v1, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v12, v2);
    MEMORY[0x22AAB70D0](1);
    sub_228272CE8(&qword_27D826478, 255, MEMORY[0x277D11678], MEMORY[0x277D11680]);
    sub_228391F70();
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    v14 = *v12;
    sub_22818DE38(0);
    (*(v7 + 32))(v9, v12 + *(v15 + 48), v6);
    MEMORY[0x22AAB70D0](0);
    sub_228392C70();
    sub_228272CE8(&unk_27D825AB0, 255, MEMORY[0x277D116A0], MEMORY[0x277D116A8]);
    sub_228391F70();

    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t MedicationSearchItem.Source.hashValue.getter()
{
  sub_228393520();
  MedicationSearchItem.Source.hash(into:)(v1);
  return sub_228393570();
}

uint64_t sub_22826F748()
{
  sub_228393520();
  MedicationSearchItem.Source.hash(into:)(v1);
  return sub_228393570();
}

uint64_t sub_22826F78C(uint64_t a1)
{
  sub_228393520();
  MedicationSearchItem.Source.hash(into:)(v2);
  return sub_228393570();
}

uint64_t sub_22826F7C8()
{
  v1 = v0;
  v2 = sub_228390FB0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_228390B70();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - v11;
  v13 = type metadata accessor for MedicationSearchItem.Source(0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_228272C84(v1, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 32))(v12, v15, v6);
    (*(v7 + 16))(v10, v12, v6);
    sub_228390FC0();
    v16 = sub_228390F70();
    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v12, v6);
  }

  else
  {

    sub_22818DE38(0);
    v18 = *(v17 + 48);
    v19 = sub_228390C30();
    (*(*(v19 - 8) + 8))(v15 + v18, v19);
    v16 = 1;
  }

  return v16 & 1;
}

uint64_t sub_22826FA64()
{
  v1 = v0;
  v2 = sub_228390FB0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_228390B70();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - v11;
  v13 = type metadata accessor for MedicationSearchItem.Source(0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_228272C84(v1, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 32))(v12, v15, v6);
    (*(v7 + 16))(v10, v12, v6);
    sub_228390FC0();
    v16 = sub_228390FA0();
    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v12, v6);
  }

  else
  {
    v16 = *v15;
    sub_22818DE38(0);
    v18 = *(v17 + 48);
    v19 = sub_228390C30();
    (*(*(v19 - 8) + 8))(v15 + v18, v19);
  }

  return v16;
}

uint64_t sub_22826FCF8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v28 = sub_228390FB0();
  v4 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_228390B70();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  v14 = type metadata accessor for MedicationSearchItem.Source(0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_228272C84(v2, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v13, v16, v7);
    (*(v8 + 16))(v11, v13, v7);
    sub_228390FC0();
    if (sub_228390F70())
    {
      v17 = sub_228390F80();
      if (*(v17 + 16))
      {
        v18 = v17;
        v19 = sub_228390C30();
        v20 = *(v19 - 8);
        (*(v20 + 16))(a1, v18 + ((*(v20 + 80) + 32) & ~*(v20 + 80)), v19);

        (*(v4 + 8))(v6, v28);
        (*(v8 + 8))(v13, v7);
        return (*(v20 + 56))(a1, 0, 1, v19);
      }
    }

    (*(v4 + 8))(v6, v28);
    (*(v8 + 8))(v13, v7);
    v26 = sub_228390C30();
    return (*(*(v26 - 8) + 56))(a1, 1, 1, v26);
  }

  else
  {

    sub_22818DE38(0);
    v23 = *(v22 + 48);
    v24 = sub_228390C30();
    v25 = *(v24 - 8);
    (*(v25 + 32))(a1, v16 + v23, v24);
    return (*(v25 + 56))(a1, 0, 1, v24);
  }
}

uint64_t sub_2282700F8()
{
  v1 = v0;
  v2 = sub_228390B70();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_228390C30();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MedicationSearchItem.Source(0);
  MEMORY[0x28223BE20](v10);
  v12 = (v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_228272C84(v1, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v12, v2);
    v13 = sub_228390B40();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v14 = *v12;
    sub_22818DE38(0);
    (*(v7 + 32))(v9, v12 + *(v15 + 48), v6);
    v16 = MEMORY[0x277D837D0];
    sub_2281FE610(0, &qword_27D823EE0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_228397F30;
    *(v17 + 32) = sub_228390C00();
    *(v17 + 40) = v18;
    *(v17 + 48) = sub_228392E80();
    *(v17 + 56) = v19;
    v21[1] = v17;
    sub_2281FE610(0, &qword_27D827E10, v16, MEMORY[0x277D83940]);
    sub_2281BF13C();
    v13 = sub_228391F90();

    (*(v7 + 8))(v9, v6);
  }

  return v13;
}

uint64_t sub_2282703FC()
{
  v1 = sub_228390B70();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for MedicationSearchItem.Source(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_228272C84(v0, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = (*(v2 + 32))(v4, v7, v1);
    MEMORY[0x28223BE20](v8);
    *&v15[-16] = v4;
    v9 = sub_22826F200(sub_228273878);
    (*(v2 + 8))(v4, v1);
  }

  else
  {
    v10 = *v7;
    sub_22818DE38(0);
    v12 = *(v11 + 48);
    sub_2281FE610(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_228396260;
    *(v9 + 32) = v10;
    v13 = sub_228390C30();
    (*(*(v13 - 8) + 8))(&v7[v12], v13);
  }

  return v9;
}

uint64_t sub_228270648@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = sub_228390B70();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_228390FB0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a2, v5);
  sub_228390FC0();
  v13 = sub_228390F90();
  result = (*(v10 + 8))(v12, v9);
  *a3 = v13;
  return result;
}

uint64_t MedicationSearchItem.uniqueIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for MedicationSearchItem(0) + 24));

  return v1;
}

uint64_t MedicationSearchItem.reuseIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for MedicationSearchItem(0) + 28));

  return v1;
}

id MedicationSearchItem.searchItemDisplayString.getter()
{
  v1 = v0;
  v2 = sub_228390B70();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MedicationSearchItem.Source(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_228272C84(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_228390B30();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v9 = *v8;
    sub_22818DE38(0);
    v11 = *(v10 + 48);
    sub_228392E30();

    v12 = sub_228390C30();
    (*(*(v12 - 8) + 8))(v8 + v11, v12);
  }

  v13 = type metadata accessor for MedicationSearchItem(0);
  v14 = sub_228272CE8(&qword_27D826480, 255, type metadata accessor for MedicationSearchItem, &protocol conformance descriptor for MedicationSearchItem);
  MEMORY[0x22AAB45F0](v13, v14);
  v15 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v16 = sub_228391FC0();

  type metadata accessor for Key(0);
  sub_228272CE8(&qword_280DDBA40, 255, type metadata accessor for Key, &unk_22839759C);
  v17 = sub_228391F10();

  v18 = [v15 initWithString:v16 attributes:v17];

  return v18;
}

uint64_t MedicationSearchItem.hash(into:)(uint64_t a1)
{
  MedicationSearchItem.Source.hash(into:)(a1);
  v2 = type metadata accessor for MedicationSearchItem(0);
  MEMORY[0x22AAB70D0](*(v1 + *(v2 + 20)));
  sub_2283920B0();

  return sub_2283920B0();
}

uint64_t MedicationSearchItem.hashValue.getter()
{
  sub_228393520();
  MedicationSearchItem.Source.hash(into:)(v3);
  v1 = type metadata accessor for MedicationSearchItem(0);
  MEMORY[0x22AAB70D0](*(v0 + *(v1 + 20)));
  sub_2283920B0();
  sub_2283920B0();
  return sub_228393570();
}

uint64_t sub_228270C48(int *a1)
{
  sub_228393520();
  MedicationSearchItem.Source.hash(into:)(v4);
  MEMORY[0x22AAB70D0](*(v1 + a1[5]));
  sub_2283920B0();
  sub_2283920B0();
  return sub_228393570();
}

uint64_t sub_228270CD0(uint64_t a1, int *a2)
{
  MedicationSearchItem.Source.hash(into:)(a1);
  MEMORY[0x22AAB70D0](*(v2 + a2[5]));
  sub_2283920B0();

  return sub_2283920B0();
}

uint64_t sub_228270D48(uint64_t a1, int *a2)
{
  sub_228393520();
  MedicationSearchItem.Source.hash(into:)(v5);
  MEMORY[0x22AAB70D0](*(v2 + a2[5]));
  sub_2283920B0();
  sub_2283920B0();
  return sub_228393570();
}

uint64_t sub_228270DDC(uint64_t a1)
{
  v2 = sub_228272CE8(&qword_27D823E90, 255, type metadata accessor for MedicationSearchItem, &protocol conformance descriptor for MedicationSearchItem);

  return MEMORY[0x282169440](a1, v2);
}

id sub_228270E5C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI20MedicationSearchCell_baseIdentifier];
  v18 = sub_228392000();
  v19 = v11;

  MEMORY[0x22AAB5C80](0xD000000000000015, 0x80000002283AF8A0);

  v12 = v19;
  *v10 = v18;
  v10[1] = v12;
  v13 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI20MedicationSearchCell_item];
  v14 = type metadata accessor for MedicationSearchCell();
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 4) = 0;
  v17.receiver = v5;
  v17.super_class = v14;
  v15 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
  sub_22838F7B0();
  sub_228392B00();

  return v15;
}

uint64_t sub_22827107C()
{
  ObjectType = swift_getObjectType();
  v1 = sub_2283911B0();
  v80 = *(v1 - 8);
  v81 = v1;
  MEMORY[0x28223BE20](v1);
  v79 = &v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x277D83D88];
  sub_2282733B4(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v75 = &v63 - v5;
  v76 = sub_2283913A0();
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v73 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2282733B4(0, &qword_280DDBCE8, MEMORY[0x277D74AC8], v3);
  MEMORY[0x28223BE20](v7 - 8);
  v70 = &v63 - v8;
  v72 = sub_2283912A0();
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v68 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_228391220();
  v66 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v65 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_228390B70();
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MedicationSearchItem.Source(0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78 = sub_228391590();
  v67 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2282733B4(0, &qword_27D8238D0, type metadata accessor for MedicationSearchItem, v3);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v63 - v19;
  v21 = type metadata accessor for MedicationSearchItem(0);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v82 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = OBJC_IVAR____TtC19HealthMedicationsUI20MedicationSearchCell_item;
  swift_beginAccess();
  sub_228273898(v0 + v24, v84, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], sub_228181084);
  if (v85)
  {
    sub_2281810DC(0, &qword_280DDCD60, MEMORY[0x277D10D48]);
    v25 = swift_dynamicCast();
    (*(v22 + 56))(v20, v25 ^ 1u, 1, v21);
    if ((*(v22 + 48))(v20, 1, v21) != 1)
    {
      v26 = v82;
      sub_228273478(v20, v82, type metadata accessor for MedicationSearchItem);
      sub_2283913C0();
      sub_228272C84(v26, v15);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v27 = v63;
        v28 = v64;
        (*(v63 + 32))(v12, v15, v64);
        sub_228390B20();
        (*(v27 + 8))(v12, v28);
      }

      else
      {

        sub_22818DE38(0);
        v45 = *(v44 + 48);
        v46 = sub_228390C30();
        (*(*(v46 - 8) + 8))(v15 + v45, v46);
      }

      sub_2283914D0();
      sub_2283928D0();
      sub_2283914E0();
      v47 = v82;
      MedicationSearchItem.searchItemDisplayString.getter();
      sub_228391440();
      v48 = sub_228391450();
      sub_2283913F0();
      v48(v84, 0);
      sub_2282734E0(v47);
      sub_228391490();
      v49 = sub_2283914A0();
      sub_2283913F0();
      v49(v84, 0);
      v50 = v78;
      v85 = v78;
      v86 = MEMORY[0x277D74C30];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v84);
      v52 = v67;
      (*(v67 + 16))(boxed_opaque_existential_1, v17, v50);
      MEMORY[0x22AAB6400](v84);
      sub_2282733B4(0, &unk_280DDB890, MEMORY[0x277D74AE0], MEMORY[0x277D84560]);
      sub_2283912F0();
      *(swift_allocObject() + 16) = xmmword_228397F40;
      v53 = v66;
      v54 = v65;
      v55 = v69;
      (*(v66 + 104))(v65, *MEMORY[0x277D74A98], v69);
      v56 = sub_228391230();
      (*(*(v56 - 8) + 56))(v70, 1, 1, v56);
      v57 = v68;
      sub_228391290();
      sub_228391260();
      (*(v71 + 8))(v57, v72);
      (*(v53 + 8))(v54, v55);
      sub_2283928F0();
      v58 = v73;
      sub_228391390();
      v59 = [objc_opt_self() secondarySystemBackgroundColor];
      sub_228391370();
      v61 = v74;
      v60 = v75;
      v62 = v76;
      (*(v74 + 16))(v75, v58, v76);
      (*(v61 + 56))(v60, 0, 1, v62);
      MEMORY[0x22AAB6420](v60);
      (*(v61 + 8))(v58, v62);
      (*(v52 + 8))(v17, v78);
      return sub_228273818(v82, type metadata accessor for MedicationSearchItem);
    }
  }

  else
  {
    sub_228273418(v84, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], sub_228181084);
    (*(v22 + 56))(v20, 1, 1, v21);
  }

  sub_228273418(v20, &qword_27D8238D0, type metadata accessor for MedicationSearchItem, MEMORY[0x277D83D88], sub_2282733B4);
  v29 = v79;
  sub_228391150();
  v30 = v0;
  v31 = v0;
  v32 = sub_2283911A0();
  v33 = sub_2283925C0();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v83 = v35;
    *v34 = 136315394;
    v36 = sub_228393600();
    v38 = sub_2281C96FC(v36, v37, &v83);

    *(v34 + 4) = v38;
    *(v34 + 12) = 2080;
    v39 = MEMORY[0x277D10D48];
    sub_228273898(v30 + v24, v84, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], sub_228181084);
    sub_228181084(0, &qword_280DDCD50, &qword_280DDCD60, v39);
    v40 = sub_228392020();
    v42 = sub_2281C96FC(v40, v41, &v83);

    *(v34 + 14) = v42;
    _os_log_impl(&dword_22816B000, v32, v33, "[%s] Expected a MedicationSearchItem, but received a %s", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAB7B80](v35, -1, -1);
    MEMORY[0x22AAB7B80](v34, -1, -1);
  }

  return (*(v80 + 8))(v29, v81);
}

uint64_t sub_228271D58(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = sub_2283911B0();
  v42 = *(v6 - 8);
  v43 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &ObjectType - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &ObjectType - v10;
  sub_2282733B4(0, &qword_27D8238D0, type metadata accessor for MedicationSearchItem, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &ObjectType - v13;
  v15 = type metadata accessor for MedicationSearchItem(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &ObjectType - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC19HealthMedicationsUI20MedicationSearchCell_item;
  swift_beginAccess();
  sub_228273898(v3 + v19, &v45, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], sub_228181084);
  if (v47)
  {
    sub_2281810DC(0, &qword_280DDCD60, MEMORY[0x277D10D48]);
    v20 = swift_dynamicCast();
    (*(v16 + 56))(v14, v20 ^ 1u, 1, v15);
    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {
      sub_228273478(v14, v18, type metadata accessor for MedicationSearchItem);
      if (a2)
      {
        v45 = 46;
        v46 = 0xE100000000000000;
        v44 = *&v18[*(v15 + 20)];
        v21 = sub_228393420();
        MEMORY[0x22AAB5C80](v21);

        v22 = v45;
        v23 = v46;
        v45 = a1;
        v46 = a2;

        MEMORY[0x22AAB5C80](v22, v23);

        v24 = sub_228391FC0();

        [v3 setAccessibilityIdentifier_];
      }

      else
      {
        sub_228391150();
        v38 = sub_2283911A0();
        v39 = sub_2283925C0();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 0;
          _os_log_impl(&dword_22816B000, v38, v39, "Unable to set automation identifiers as there is no base identifier.", v40, 2u);
          MEMORY[0x22AAB7B80](v40, -1, -1);
        }

        (*(v42 + 8))(v11, v43);
      }

      return sub_228273818(v18, type metadata accessor for MedicationSearchItem);
    }
  }

  else
  {
    sub_228273418(&v45, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], sub_228181084);
    (*(v16 + 56))(v14, 1, 1, v15);
  }

  sub_228273418(v14, &qword_27D8238D0, type metadata accessor for MedicationSearchItem, MEMORY[0x277D83D88], sub_2282733B4);
  sub_228391150();
  v25 = v3;
  v26 = sub_2283911A0();
  v27 = sub_2283925C0();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v44 = v29;
    *v28 = 136315394;
    v30 = sub_228393600();
    v32 = sub_2281C96FC(v30, v31, &v44);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2080;
    v33 = MEMORY[0x277D10D48];
    sub_228273898(v3 + v19, &v45, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], sub_228181084);
    sub_228181084(0, &qword_280DDCD50, &qword_280DDCD60, v33);
    v34 = sub_228392020();
    v36 = sub_2281C96FC(v34, v35, &v44);

    *(v28 + 14) = v36;
    _os_log_impl(&dword_22816B000, v26, v27, "[%s] Expected a MedicationSearchItem, but received a %s", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAB7B80](v29, -1, -1);
    MEMORY[0x22AAB7B80](v28, -1, -1);
  }

  return (*(v42 + 8))(v9, v43);
}

id sub_2282723A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationSearchCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_228272444@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI20MedicationSearchCell_item;
  swift_beginAccess();
  return sub_228273898(v1 + v3, a1, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], sub_228181084);
}

uint64_t sub_2282724C8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI20MedicationSearchCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_22827107C();
  v4 = (v1 + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationSearchCell_baseIdentifier);
  swift_beginAccess();
  v6 = *v4;
  v5 = v4[1];

  sub_228271D58(v6, v5);

  return sub_228273418(a1, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], sub_228181084);
}

uint64_t (*sub_2282725A0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_228272604;
}

uint64_t sub_228272604(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    sub_22827107C();
    v6 = (v5 + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationSearchCell_baseIdentifier);
    swift_beginAccess();
    v7 = *v6;
    v8 = v6[1];

    sub_228271D58(v7, v8);
  }

  return result;
}

uint64_t sub_2282726C4()
{
  v1 = (*v0 + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationSearchCell_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_228272720(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationSearchCell_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t _s19HealthMedicationsUI20MedicationSearchItemV6SourceO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_228390B70();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_228390C30();
  v45 = *(v8 - 8);
  v46 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v43 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v44 = &v43 - v11;
  v12 = type metadata accessor for MedicationSearchItem.Source(0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = (&v43 - v16);
  sub_2282737B4(0);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = &v21[*(v19 + 56)];
  sub_228272C84(a1, v21);
  sub_228272C84(a2, v22);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_228272C84(v21, v15);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v5 + 32))(v7, v22, v4);
      v23 = sub_228390B60();
      v24 = *(v5 + 8);
      v24(v7, v4);
      v24(v15, v4);
      v25 = type metadata accessor for MedicationSearchItem.Source;
      goto LABEL_8;
    }

    (*(v5 + 8))(v15, v4);
LABEL_7:
    v23 = 0;
    v25 = sub_2282737B4;
    goto LABEL_8;
  }

  sub_228272C84(v21, v17);
  v26 = *v17;
  sub_22818DE38(0);
  v28 = *(v27 + 48);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v45 + 8))(v17 + v28, v46);

    goto LABEL_7;
  }

  v30 = *v22;
  v32 = v44;
  v31 = v45;
  v33 = *(v45 + 32);
  v34 = v17 + v28;
  v35 = v46;
  v33(v44, v34, v46);
  v36 = v22 + v28;
  v37 = v43;
  v33(v43, v36, v35);
  sub_22817A958(0, &qword_27D825620, 0x277D82BB8);
  v38 = sub_228392C60();

  if (v38)
  {
    v39 = sub_228390C20();
    v40 = v37;
    v23 = v39;
    v41 = *(v31 + 8);
    v41(v40, v35);
    v41(v32, v35);
  }

  else
  {
    v42 = *(v31 + 8);
    v42(v37, v35);
    v42(v32, v35);
    v23 = 0;
  }

  v25 = type metadata accessor for MedicationSearchItem.Source;
LABEL_8:
  sub_228273818(v21, v25);
  return v23 & 1;
}

uint64_t sub_228272C84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicationSearchItem.Source(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_228272CE8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t _s19HealthMedicationsUI20MedicationSearchItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s19HealthMedicationsUI20MedicationSearchItemV6SourceO2eeoiySbAE_AEtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for MedicationSearchItem(0);
  if (*(a1 + v4[5]) != *(a2 + v4[5]))
  {
    return 0;
  }

  v5 = v4[6];
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  if (v7 != *v8 || v6 != v8[1])
  {
    v10 = v4;
    v11 = sub_228393460();
    v4 = v10;
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  v12 = v4[7];
  v13 = *(a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  if (v13 == *v15 && v14 == v15[1])
  {
    return 1;
  }

  return sub_228393460();
}

uint64_t sub_228272F18(uint64_t a1)
{
  result = type metadata accessor for MedicationSearchItem.Source(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_228272F98(uint64_t a1)
{
  sub_22818DE38(319);
  if (v1 <= 0x3F)
  {
    sub_228390B70();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_22827300C(void *a1)
{
  sub_2282733B4(0, &qword_27D8238D0, type metadata accessor for MedicationSearchItem, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v14 - v4;
  v6 = type metadata accessor for MedicationSearchItem(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = a1;
  sub_22817A958(0, &qword_27D8264C8, 0x277D75D28);
  sub_2281810DC(0, &qword_27D8264D0, &protocol descriptor for MedicationSelectionHandler);
  v10 = a1;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    return sub_228273418(&v15, &unk_27D8264D8, &qword_27D8264D0, &protocol descriptor for MedicationSelectionHandler, sub_228181084);
  }

  sub_22816DFFC(&v15, v18);
  v11 = OBJC_IVAR____TtC19HealthMedicationsUI20MedicationSearchCell_item;
  swift_beginAccess();
  sub_228273898(v1 + v11, &v15, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], sub_228181084);
  if (!*(&v16 + 1))
  {
    sub_228273418(&v15, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], sub_228181084);
    (*(v7 + 56))(v5, 1, 1, v6);
    goto LABEL_7;
  }

  sub_2281810DC(0, &qword_280DDCD60, MEMORY[0x277D10D48]);
  v12 = swift_dynamicCast();
  (*(v7 + 56))(v5, v12 ^ 1u, 1, v6);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
LABEL_7:
    sub_228273418(v5, &qword_27D8238D0, type metadata accessor for MedicationSearchItem, MEMORY[0x277D83D88], sub_2282733B4);
    return __swift_destroy_boxed_opaque_existential_0(v18);
  }

  sub_228273478(v5, v9, type metadata accessor for MedicationSearchItem);
  __swift_project_boxed_opaque_existential_0(v18, v18[3]);
  sub_2282F9010(v9);
  sub_228273818(v9, type metadata accessor for MedicationSearchItem);
  return __swift_destroy_boxed_opaque_existential_0(v18);
}

void sub_2282733B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_228273418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_228273478(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_2282734E0(uint64_t a1)
{
  v2 = sub_228390B70();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MedicationSearchItem.Source(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_228272C84(a1, v8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    sub_22818DE38(0);
    v12 = *(v11 + 48);
    v13 = sub_228390C30();
    (*(*(v13 - 8) + 8))(v8 + v12, v13);
    goto LABEL_5;
  }

  (*(v3 + 32))(v5, v8, v2);
  v9 = sub_228390B20();
  (*(v3 + 8))(v5, v2);
  if (v9)
  {
LABEL_5:
    sub_2282700F8();
    v14 = type metadata accessor for MedicationSearchItem(0);
    v15 = sub_228272CE8(&qword_27D826480, 255, type metadata accessor for MedicationSearchItem, &protocol conformance descriptor for MedicationSearchItem);
    MEMORY[0x22AAB4600](v14, v15);
    v16 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v17 = sub_228391FC0();

    type metadata accessor for Key(0);
    sub_228272CE8(&qword_280DDBA40, 255, type metadata accessor for Key, &unk_22839759C);
    v18 = sub_228391F10();

    v10 = [v16 initWithString:v17 attributes:v18];

    return v10;
  }

  return 0;
}

void sub_2282737B4(uint64_t a1)
{
  if (!qword_27D8264E0)
  {
    type metadata accessor for MedicationSearchItem.Source(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D8264E0);
    }
  }
}

uint64_t sub_228273818(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_228273898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

id InteractionSummaryOverviewViewController.__allocating_init(filteringMedication:listManager:healthStore:analyticsManager:roomType:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  *&v11[qword_27D8264F0] = 0;
  *&v11[qword_27D8264F8] = 0;
  *&v11[qword_27D826500] = 0;
  v12 = &v11[qword_27D826508];
  v20 = sub_228392000();
  v21 = v13;

  MEMORY[0x22AAB5C80](0xD000000000000025, 0x80000002283AE9C0);

  v14 = v21;
  *v12 = v20;
  v12[1] = v14;
  *&v11[qword_27D826510] = a1;
  *&v11[qword_27D826518] = a2;
  *&v11[qword_27D826520] = a3;
  *&v11[qword_27D826528] = a4;
  *&v11[qword_27D826530] = a5;
  v19.receiver = v11;
  v19.super_class = v5;
  v15 = a1;

  v16 = a3;

  v17 = objc_msgSendSuper2(&v19, sel_initWithCollectionViewLayout_, 0);
  [v17 setModalPresentationStyle_];
  sub_228274A00();

  return v17;
}

id sub_228273AAC()
{
  v1 = qword_27D8264F0;
  v2 = *(v0 + qword_27D8264F0);
  if (v2)
  {
    v3 = *(v0 + qword_27D8264F0);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D10388]) initWithHealthStore_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_228273B30()
{
  v1 = qword_27D826500;
  v2 = *(v0 + qword_27D826500);
  if (v2)
  {
    v3 = *(v0 + qword_27D826500);
  }

  else
  {
    v4 = sub_228273B94(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_228273B94(uint64_t a1)
{
  v2 = sub_228392DE0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v25 - v7;
  sub_228392DA0();
  v9 = [objc_opt_self() configurationWithScale_];
  sub_22817A958(0, &qword_27D826550, 0x277D755D0);
  v10 = sub_228392890();
  v11 = [v9 configurationByApplyingConfiguration_];

  v12 = sub_228391FC0();
  v13 = [objc_opt_self() systemImageNamed:v12 withConfiguration:v11];

  v14 = v13;
  sub_228392D90();
  sub_22817A958(0, &unk_280DDB940, 0x277D75220);
  (*(v3 + 16))(v6, v8, v2);
  sub_22817A958(0, &qword_27D827890, 0x277D750C8);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228392C90();
  v15 = sub_228392DF0();
  [v15 setRole_];
  v16 = (a1 + qword_27D826508);
  swift_beginAccess();
  v17 = *v16;
  v18 = v16[1];
  v25[1] = v17;
  v25[2] = v18;
  v19 = v15;

  MEMORY[0x22AAB5C80](0x7475426F666E492ELL, 0xEB000000006E6F74);
  v20 = sub_228391FC0();

  [v19 setAccessibilityIdentifier_];

  v21 = qword_280DDCF18;
  v22 = v19;
  if (v21 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v23 = sub_228391FC0();

  [v22 setAccessibilityLabel_];

  (*(v3 + 8))(v8, v2);
  return v22;
}

void sub_228273F9C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_228273FF0();
  }
}

void sub_228273FF0()
{
  v1 = v0;
  v2 = type metadata accessor for InteractionFactorsInfoViewController(0);
  v27.receiver = objc_allocWithZone(v2);
  v27.super_class = v2;
  v3 = objc_msgSendSuper2(&v27, sel_initWithCollectionViewLayout_, 0);
  v4 = [objc_allocWithZone(MEMORY[0x277D12978]) initWithRootViewController_];
  [v3 setModalPresentationStyle_];
  v5 = v4;
  [v5 setModalPresentationStyle_];
  v6 = v5;
  if ((sub_2283904C0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v7 = [v1 traitCollection];
  sub_2283927D0();

  sub_2283928E0();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [v5 navigationItem];
  v17 = [v1 view];
  if (v17)
  {
    v18 = v17;
    [v17 hk:v9 safeAreaAdjustedEdgeInsets:{v11, v13, v15}];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    [v16 setLargeTitleInsets_];
    v6 = [v5 view];

    if (v6)
    {
      [v6 setDirectionalLayoutMargins_];
LABEL_5:

      [v1 presentViewController:v5 animated:1 completion:0];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_22827420C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + qword_27D826508);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_228274278()
{
  v1 = (v0 + qword_27D826508);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_2282742D0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_27D826508);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

id InteractionSummaryOverviewViewController.init(filteringMedication:listManager:healthStore:analyticsManager:roomType:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  *&v5[qword_27D8264F0] = 0;
  *&v5[qword_27D8264F8] = 0;
  *&v5[qword_27D826500] = 0;
  v11 = &v5[qword_27D826508];
  v19 = sub_228392000();
  v20 = v12;

  MEMORY[0x22AAB5C80](0xD000000000000025, 0x80000002283AE9C0);

  v13 = v20;
  *v11 = v19;
  v11[1] = v13;
  *&v5[qword_27D826510] = a1;
  *&v5[qword_27D826518] = a2;
  *&v5[qword_27D826520] = a3;
  *&v5[qword_27D826528] = a4;
  *&v5[qword_27D826530] = a5;
  v18.receiver = v5;
  v18.super_class = type metadata accessor for InteractionSummaryOverviewViewController(0);
  v14 = a1;

  v15 = a3;

  v16 = objc_msgSendSuper2(&v18, sel_initWithCollectionViewLayout_, 0);
  [v16 setModalPresentationStyle_];
  sub_228274A00();

  return v16;
}

uint64_t sub_228274554()
{
  sub_228206298(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *&v0[qword_27D826510];
  v5 = *&v0[qword_27D826518];
  v6 = *&v0[qword_27D826520];
  v7 = *&v0[qword_27D826528];
  v20 = *&v0[qword_27D826530];
  v8 = type metadata accessor for InteractionSummaryOverviewDataSourceProvider();
  v9 = swift_allocObject();
  sub_228390890();
  v10 = v4;

  v11 = v6;

  sub_228390880();
  sub_228390830();

  sub_22817A958(0, &qword_280DDBAF0, 0x277CBEBD0);
  sub_2283925F0();
  sub_2283907E0();
  swift_allocObject();
  v12 = sub_228390700();
  v9[2] = v4;
  v9[3] = v5;
  v9[4] = v11;
  v9[5] = v7;
  v9[6] = v20;
  v9[7] = v12;
  v23 = v8;
  v24 = sub_228274C40();
  v22 = v9;
  sub_2283904B0();
  v13 = type metadata accessor for InteractionSummaryOverviewViewController(0);
  v21.receiver = v0;
  v21.super_class = v13;
  objc_msgSendSuper2(&v21, sel_viewDidLoad);
  v14 = sub_2283922D0();
  (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
  sub_2283922A0();
  v15 = v0;
  v16 = sub_228392290();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = v15;
  sub_2281DC568(0, 0, v3, &unk_22839FEC8, v17);
}

void sub_2282747C0(void *a1)
{
  v1 = a1;
  sub_228274554();
}

void sub_228274808(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_228391310();
  MEMORY[0x28223BE20](v5);
  v6 = sub_22838FB90();
  MEMORY[0x28223BE20](v6);
  (*(v8 + 104))(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D10E68]);
  v9 = a1;
  sub_2283926F0();
  sub_228391300();
  sub_228392700();
  v10 = type metadata accessor for InteractionSummaryOverviewViewController(0);
  v11.receiver = v9;
  v11.super_class = v10;
  objc_msgSendSuper2(&v11, sel_viewIsAppearing_, a3);
}

uint64_t sub_228274984(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    sub_228392F90();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    v5 = a1;
  }

  sub_22838F900();
  sub_22838F8F0();

  return sub_2281AC998(v7);
}

void sub_228274A00()
{
  v1 = [v0 navigationItem];
  [v1 setLargeTitleDisplayMode_];

  v2 = [v0 navigationItem];
  v3 = sub_228273B30();
  [v2 _setLargeTitleAccessoryView_alignToBaseline_];

  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v4 = sub_228391FC0();

  [v0 setTitle_];

  v5 = [v0 navigationItem];
  v6 = [v5 backBarButtonItem];

  if (v6)
  {
    swift_beginAccess();

    MEMORY[0x22AAB5C80](0x7475426B6361422ELL, 0xEB000000006E6F74);
    v7 = sub_228391FC0();

    [v6 setAccessibilityIdentifier_];
  }
}

uint64_t type metadata accessor for InteractionSummaryOverviewViewController(uint64_t a1)
{
  result = qword_27D826540;
  if (!qword_27D826540)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_228274C40()
{
  result = qword_27D826538;
  if (!qword_27D826538)
  {
    type metadata accessor for InteractionSummaryOverviewDataSourceProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826538);
  }

  return result;
}

uint64_t sub_228274C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a4;
  v5 = sub_2283911B0();
  v4[22] = v5;
  v4[23] = *(v5 - 8);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  sub_2283922A0();
  v4[26] = sub_228392290();
  v7 = sub_228392250();
  v4[27] = v7;
  v4[28] = v6;

  return MEMORY[0x2822009F8](sub_228274D98, v7, v6);
}

uint64_t sub_228274D98(uint64_t a1)
{
  v25 = v1;
  v2 = v1[21];
  sub_228391150();
  v3 = v2;
  v4 = sub_2283911A0();
  v5 = sub_2283925A0();

  if (os_log_type_enabled(v4, v5))
  {
    v23 = v1[25];
    v6 = v1[22];
    v7 = v1[23];
    v8 = v1[21];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136446210;
    v1[20] = v8;
    type metadata accessor for InteractionSummaryOverviewViewController(0);
    v11 = v8;
    v12 = sub_228392040();
    v14 = sub_2281C96FC(v12, v13, &v24);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_22816B000, v4, v5, "[%{public}s] Marking interaction shard as required during viewing DDI overview", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AAB7B80](v10, -1, -1);
    MEMORY[0x22AAB7B80](v9, -1, -1);

    v15 = *(v7 + 8);
    v15(v23, v6);
  }

  else
  {
    v16 = v1[25];
    v17 = v1[22];
    v18 = v1[23];

    v15 = *(v18 + 8);
    v15(v16, v17);
  }

  v1[29] = v15;
  v19 = sub_228273AAC();
  v1[30] = v19;
  v1[2] = v1;
  v1[3] = sub_228275010;
  v20 = swift_continuation_init();
  sub_2281E0600(0);
  v1[17] = v21;
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_2282B4368;
  v1[13] = &block_descriptor_13;
  v1[14] = v20;
  [v19 markInteractionsShardAsRequiredWithCompletion_];

  return MEMORY[0x282200938](v1 + 2);
}

uint64_t sub_228275010()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 248) = v2;
  v3 = *(v1 + 224);
  v4 = *(v1 + 216);
  if (v2)
  {
    v5 = sub_228275140;
  }

  else
  {
    v5 = sub_2281DED84;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_228275140()
{
  v29 = v0;
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 168);

  swift_willThrow();

  sub_228391150();
  v4 = v3;
  v5 = v1;
  v6 = sub_2283911A0();
  v7 = sub_2283925C0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 248);
    v26 = *(v0 + 192);
    v27 = *(v0 + 232);
    v9 = *(v0 + 168);
    v25 = *(v0 + 176);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v28[0] = v11;
    *v10 = 136446466;
    *(v0 + 144) = v9;
    type metadata accessor for InteractionSummaryOverviewViewController(0);
    v12 = v9;
    v13 = sub_228392040();
    v15 = sub_2281C96FC(v13, v14, v28);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2082;
    *(v0 + 152) = v8;
    v16 = v8;
    sub_22818217C(0, &qword_280DDB860, MEMORY[0x277D84948], 1);
    v17 = sub_228392020();
    v19 = sub_2281C96FC(v17, v18, v28);

    *(v10 + 14) = v19;
    _os_log_impl(&dword_22816B000, v6, v7, "[%{public}s] Could not mark medication education/interaction shards as required: %{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAB7B80](v11, -1, -1);
    MEMORY[0x22AAB7B80](v10, -1, -1);

    v27(v26, v25);
  }

  else
  {
    v20 = *(v0 + 232);
    v21 = *(v0 + 192);
    v22 = *(v0 + 176);

    v20(v21, v22);
  }

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_2282753C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22819D87C;

  return sub_228274C98(a1, v4, v5, v6);
}

uint64_t sub_228275478(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_22838F760();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838F720();
  v10 = a3;
  v11 = a1;
  sub_2281ABE84(v10, v9);

  return (*(v7 + 8))(v9, v6);
}

id InteractionSummaryOverviewViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

uint64_t sub_228275648()
{
}

id InteractionSummaryOverviewViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InteractionSummaryOverviewViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_228275724(uint64_t a1)
{
}

uint64_t sub_2282757D4(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v4 = a1;
  sub_228392F90();
  swift_unknownObjectRelease();
  _s19HealthMedicationsUI0B10TapToRadarC16drugInteractions14viewControllerySo06UIViewJ0C_tFZ_0(v4);

  return __swift_destroy_boxed_opaque_existential_0(v6);
}

Swift::Void __swiftcall InteractionSummaryOverviewViewController.viewControllerWillEnterAdaptiveModal()()
{
  v1 = v0;
  v2 = sub_2283902A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 navigationItem];
  sub_22817A958(0, &qword_27D824138, 0x277D751E0);
  sub_22817A958(0, &qword_27D827890, 0x277D750C8);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228392C90();
  v7 = sub_228392640();
  [v6 setRightBarButtonItem_];

  sub_228390290();
  LOBYTE(v7) = sub_228390280();
  (*(v3 + 8))(v5, v2);
  if (v7)
  {
    v8 = [v1 navigationItem];
    v9 = sub_228391FC0();
    v10 = [objc_opt_self() systemImageNamed_];

    v11 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithImage:v10 style:0 target:v1 action:sel_tapToRadarButtonTappedWithSender_];
    [v8 setLeftBarButtonItem_];
  }

  v12 = [v1 navigationController];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 navigationBar];

    [v14 setPrefersLargeTitles_];
  }

  v15 = [v1 navigationController];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 navigationBar];

    sub_2283928D0();
    [v17 setDirectionalLayoutMargins_];
  }
}

void sub_228275B6C(void *a1)
{
  v1 = a1;
  InteractionSummaryOverviewViewController.viewControllerWillEnterAdaptiveModal()();
}

Swift::Void __swiftcall InteractionSummaryOverviewViewController.viewControllerDidLeaveAdaptiveModal()()
{
  v1 = [v0 navigationItem];
  [v1 setRightBarButtonItem_];

  v2 = [v0 navigationItem];
  [v2 setLeftBarButtonItem_];
}

void sub_228275E50(void *a1)
{
  v3 = a1;
  v1 = [v3 navigationItem];
  [v1 setRightBarButtonItem_];

  v2 = [v3 navigationItem];
  [v2 setLeftBarButtonItem_];
}

void sub_228275EE8()
{
  *(v0 + qword_27D8264F0) = 0;
  *(v0 + qword_27D8264F8) = 0;
  *(v0 + qword_27D826500) = 0;
  v1 = (v0 + qword_27D826508);
  v3 = sub_228392000();
  v4 = v2;

  MEMORY[0x22AAB5C80](0xD000000000000025, 0x80000002283AE9C0);

  *v1 = v3;
  v1[1] = v4;
  sub_228393300();
  __break(1u);
}

uint64_t sub_228276010(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_22817A958(0, &qword_280DDB9F0, 0x277D11550);
    sub_22818C470(&qword_280DDB9E8, &qword_280DDB9F0, 0x277D11550, MEMORY[0x277D85378]);
    v4 = sub_228392480();
  }

  v6 = a3;
  v5(v4, a3);
}

unint64_t sub_2282760F4(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_2283930D0();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_2281DB0C4();
  sub_2281D9D24(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

id sub_228276188()
{
  v1 = qword_27D826578;
  v2 = *(v0 + qword_27D826578);
  if (v2)
  {
    v3 = *(v0 + qword_27D826578);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D11510]) initWithHealthStore_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void *sub_22827620C()
{
  v1 = qword_27D826580;
  if (*(v0 + qword_27D826580))
  {
    v2 = *(v0 + qword_27D826580);
  }

  else
  {
    v3 = *(v0 + qword_27D826568);
    sub_228390890();
    v4 = v3;
    v5 = v0;
    sub_228390880();
    sub_228390830();

    sub_22817A958(0, &qword_280DDBAF0, 0x277CBEBD0);
    sub_2283925F0();
    sub_2283907E0();
    swift_allocObject();
    v6 = sub_228390700();
    type metadata accessor for MedicationsInteractionEngine();
    swift_allocObject();
    v2 = sub_228191FE8(v4, v6);

    *(v5 + v1) = v2;
  }

  return v2;
}

uint64_t sub_228276338(uint64_t a1, uint64_t a2)
{
  v3 = sub_2283900D0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    sub_228390040();
  }

  else
  {
    sub_228390010();
  }

  v7 = sub_228390090();
  *(v8 + 16) = 0x4024000000000000;
  v7(v11, 0);
  v9 = sub_2283900C0();
  (*(v4 + 8))(v6, v3);
  return v9;
}

uint64_t sub_228276454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v9 = MEMORY[0x277CBCEA8];
  sub_22827C15C(0, &qword_280DDBC28, MEMORY[0x277CBCEA8]);
  swift_allocObject();

  sub_2283918F0();
  sub_22827A238(&qword_280DDBC30, &qword_280DDBC28, v9, MEMORY[0x277CBCEB0]);
  v10 = sub_228391990();

  *a4 = v10;
  return result;
}

void sub_228276590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  v9 = sub_228276188();

  sub_2282B96E4(v10);

  sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  sub_22818C470(&qword_280DDB9D8, &qword_280DDB9E0, 0x277D115B8, MEMORY[0x277D85378]);
  v11 = sub_228392470();

  if (a5)
  {
    sub_22817A958(0, &qword_280DDB960, 0x277CCABB0);
    sub_22818C470(&qword_280DDB958, &qword_280DDB960, 0x277CCABB0, MEMORY[0x277D85378]);
    a5 = sub_228392470();
  }

  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = sub_22818DEBC;
  v13[4] = v8;
  v15[4] = sub_22827C1E4;
  v15[5] = v13;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_228276010;
  v15[3] = &block_descriptor_14;
  v14 = _Block_copy(v15);

  [v9 interactionResultsForMedications:v11 lifestyleFactors:a5 completion:v14];
  _Block_release(v14);
}

uint64_t sub_2282767E0(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

uint64_t sub_228276820(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a2)
    {
      v8 = a2;
      (a4)(a2, 1);
    }

    v9 = *(result + qword_27D826558);
    if (!v9)
    {
      if (a1)
      {
        v16 = a1;
      }

      else if (MEMORY[0x277D84F90] >> 62 && sub_2283930D0())
      {
        sub_2281F01B4(MEMORY[0x277D84F90]);
        v16 = v19;
      }

      else
      {
        v16 = MEMORY[0x277D84FA0];
      }

      v18 = sub_2282B9214(v16);

      (a4)(v18, 0);
    }

    v10 = v9;
    v11 = [v10 firstConceptIdentifier];
    if (v11)
    {
      if (a1)
      {
        v12 = v11;

        v14 = sub_22827B68C(v13, v12);

        v15 = sub_2282B9214(v14);

        (a4)(v15, 0);
      }

      v17 = v11;
      sub_2282760F4(MEMORY[0x277D84F90]);
      a4();
    }

    else
    {
      sub_2282760F4(MEMORY[0x277D84F90]);
      a4();
    }
  }

  return result;
}

uint64_t sub_228276A44()
{
  sub_228279E50(0);
  MEMORY[0x28223BE20](v1 - 8);
  v66 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22824E8E4(0);
  v49 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228279EA8(0);
  v8 = *(v7 - 8);
  v52 = v7;
  v53 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228279FF0(0);
  v12 = *(v11 - 8);
  v55 = v11;
  v56 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22827A27C(0);
  v16 = *(v15 - 8);
  v57 = v15;
  v58 = v16;
  MEMORY[0x28223BE20](v15);
  v50 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22827A340(0);
  v19 = *(v18 - 8);
  v59 = v18;
  v60 = v19;
  MEMORY[0x28223BE20](v18);
  v51 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22827A3EC(0);
  v22 = *(v21 - 8);
  v62 = v21;
  v63 = v22;
  MEMORY[0x28223BE20](v21);
  v54 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22827A480(0);
  v25 = *(v24 - 8);
  v64 = v24;
  v65 = v25;
  MEMORY[0x28223BE20](v24);
  v61 = &v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_2283906C0();
  v27 = MEMORY[0x277D77BE8];
  sub_22824EB00(0, &qword_27D824108, MEMORY[0x277D77BE8]);
  sub_22818DF04(0, &qword_280DDBB50, &qword_280DDB9E0, 0x277D115B8);
  sub_228279FA0(&qword_27D827D00, &qword_27D824108, v27);
  sub_2283919A0();

  v28 = sub_22827620C()[5];

  v67 = v28;
  sub_22824EB00(0, &qword_27D825DC8, sub_2281930F4);
  v48 = MEMORY[0x277CBCB10];
  sub_22827993C(&qword_27D825DD0, sub_22824E8E4, MEMORY[0x277CBCB10]);
  sub_228279FA0(&qword_27D825DD8, &qword_27D825DC8, sub_2281930F4);
  v29 = v49;
  sub_2283919E0();

  (*(v4 + 8))(v6, v29);
  v30 = swift_allocObject();
  *(v30 + 16) = sub_22827A580;
  *(v30 + 24) = v0;

  sub_2283917E0();
  v31 = MEMORY[0x277CBCD88];
  sub_22827C15C(0, &qword_280DDBC70, MEMORY[0x277CBCD88]);
  sub_22827993C(&qword_27D8265D8, sub_228279EA8, MEMORY[0x277CBCAF0]);
  sub_22827A238(&qword_280DDBC78, &qword_280DDBC70, v31, MEMORY[0x277CBCD90]);
  v32 = v52;
  sub_228391AF0();

  (*(v53 + 8))(v10, v32);
  sub_22818DF04(0, &qword_280DDBB68, &qword_280DDB9F0, 0x277D11550);
  sub_22827993C(&qword_27D8265F0, sub_228279FF0, MEMORY[0x277CBCCE0]);
  v33 = v50;
  v34 = v55;
  sub_2283919A0();
  (*(v56 + 8))(v14, v34);
  v35 = swift_allocObject();
  *(v35 + 16) = sub_22827A5C0;
  *(v35 + 24) = v0;
  sub_22827A0FC(0);

  v36 = v51;
  v37 = v57;
  sub_2283916C0();

  (*(v58 + 8))(v33, v37);
  v67 = 0;
  sub_22827993C(&qword_27D826608, sub_22827A340, v48);
  v38 = v54;
  v39 = v59;
  sub_2283919B0();
  (*(v60 + 8))(v36, v39);
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v40 = sub_228392790();
  v67 = v40;
  v41 = sub_228392730();
  v42 = v66;
  (*(*(v41 - 8) + 56))(v66, 1, 1, v41);
  sub_22827993C(&qword_27D826618, sub_22827A3EC, MEMORY[0x277CBCB78]);
  sub_22818C470(&qword_280DDBAC0, &qword_280DDCEE0, 0x277D85C78, MEMORY[0x277D85228]);
  v44 = v61;
  v43 = v62;
  sub_228391A70();
  sub_22827B07C(v42, sub_228279E50);

  (*(v63 + 8))(v38, v43);
  swift_allocObject();
  swift_weakInit();
  sub_22827993C(&qword_27D826620, sub_22827A480, MEMORY[0x277CBCD60]);
  v45 = v64;
  sub_228391AC0();

  (*(v65 + 8))(v44, v45);
  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

uint64_t sub_2282774A8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v23 = a2;
  sub_22827C090(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2283930D0())
  {
    v19 = v8;
    v20 = v6;
    v21 = v5;
    v10 = 0;
    v8 = (a1 & 0xC000000000000001);
    v6 = &off_2785F4000;
    while (1)
    {
      if (v8)
      {
        v11 = MEMORY[0x22AAB6D80](v10, a1);
      }

      else
      {
        if (v10 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v11 = *(a1 + 8 * v10 + 32);
      }

      v12 = v11;
      v5 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v13 = [v11 firstOntologyCoding];
      if (v13)
      {

        sub_228393210();
        sub_228393250();
        sub_228393260();
        sub_228393220();
      }

      else
      {
      }

      ++v10;
      if (v5 == i)
      {
        v14 = v24;
        v6 = v20;
        v5 = v21;
        v8 = v19;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v14 = MEMORY[0x277D84F90];
LABEL_18:
  v15 = swift_allocObject();
  v15[2] = v22;
  v15[3] = v14;
  v15[4] = v23;
  v16 = MEMORY[0x277CBCD88];
  sub_22827C15C(0, &qword_280DDBC70, MEMORY[0x277CBCD88]);
  sub_22827A238(&qword_280DDBC78, &qword_280DDBC70, v16, MEMORY[0x277CBCD90]);

  sub_228391900();
  sub_22827993C(&qword_280DDBC10, sub_22827C090, MEMORY[0x277CBCEB8]);
  v17 = sub_228391990();
  (v6[1])(v8, v5);
  return v17;
}

uint64_t sub_228277790@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1, a1[1]);
  *a3 = result;
  return result;
}

uint64_t sub_2282777CC(unint64_t a1, uint64_t a2)
{
  v14 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2283930D0())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x22AAB6D80](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v5 = *(a1 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v8 = [v5 interactions];
      sub_22817A958(0, &qword_280DDBA10, 0x277D11518);
      sub_22818C470(&qword_280DDBA08, &qword_280DDBA10, 0x277D11518, MEMORY[0x277D85378]);
      v9 = sub_228392480();

      v10 = swift_allocObject();
      swift_weakInit();
      v11 = sub_22827BE18(v9, v10);

      if ((v11 & 0xC000000000000001) != 0)
      {
        v12 = sub_2283930D0();
      }

      else
      {
        v12 = *(v11 + 16);
      }

      if (v12)
      {
        sub_228393210();
        sub_228393250();
        sub_228393260();
        sub_228393220();
      }

      else
      {
      }

      if (v7 == i)
      {
        return v14;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2282779EC(unint64_t *a1, uint64_t a2)
{
  v55 = sub_22838F4A0();
  v3 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v53 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_22838FEF0();
  v56 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v49 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_228391590();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = sub_228390660();
    v13 = sub_2281BFC2C(v12);

    if (v13)
    {
      v51 = *(v11 + qword_27D826598);
      v14 = *(v11 + qword_27D826568);
      *&v52 = *(v11 + qword_27D826570);
      v50 = *(v11 + qword_27D8265A8);
      v15 = MEMORY[0x277D84F90];
      v58[0] = MEMORY[0x277D84F90];
      v48 = v11;
      if (v9)
      {
        v47 = v3;
        if (v9 >> 62)
        {
          goto LABEL_35;
        }

        for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2283930D0())
        {

          v17 = v14;

          if (!i)
          {
            break;
          }

          v46 = v8;
          v11 = 0;
          v14 = 0;
          v15 = v9 & 0xC000000000000001;
          while (1)
          {
            if (v15)
            {
              v18 = MEMORY[0x22AAB6D80](v11, v9);
            }

            else
            {
              if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_34;
              }

              v18 = *(v9 + 8 * v11 + 32);
            }

            v8 = v18;
            v19 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              break;
            }

            *&v62 = v18;
            sub_2282783C0(&v62, v51, v13, v17, v52, v50, v58);

            ++v11;
            if (v19 == i)
            {
              v21 = v58[0];
              v15 = MEMORY[0x277D84F90];
              v11 = v48;
              goto LABEL_20;
            }
          }

          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          ;
        }

        v21 = MEMORY[0x277D84F90];
LABEL_20:

        Array<A>.deduped()(v21);

        *&v62 = sub_2281D93B8(v23);
        sub_2281D7724(&v62);

        v24 = v62;

        sub_228321CC4(0xD000000000000015, 0x80000002283AFAD0, v51);
        if (qword_280DDCF18 != -1)
        {
          swift_once();
        }

        sub_22838F0C0();

        sub_228391500();
        v25 = sub_22838FB60();
        swift_allocObject();
        v26 = sub_22838FB50();
        *(&v63 + 1) = v25;
        v64 = sub_22827993C(&qword_27D826640, MEMORY[0x277D10E18], MEMORY[0x277D10E10]);
        *&v62 = v26;

        v22 = sub_22819643C(v24);

        v3 = v47;
      }

      else
      {

        v64 = 0;
        v62 = 0u;
        v63 = 0u;
        v22 = MEMORY[0x277D84F90];
      }

      v65 = v22;
      sub_22827B014(&v62, v58, sub_22827AE70);

      v27 = qword_27D826588;
      swift_beginAccess();
      sub_22817A680(v58, v11 + v27);
      swift_endAccess();
      sub_22827B014(&v62, v58, sub_22827AE70);
      v28 = v61;
      sub_22819482C(v58);
      v51 = v28;
      v29 = *(v28 + 2);
      if (!v29)
      {
        v30 = v3;

        sub_22827AF44(0, &qword_280DDB8D0, &qword_280DDCD60, MEMORY[0x277D10D48], MEMORY[0x277D84560]);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_228397F40;
        found = type metadata accessor for InteractionNoneFoundItem();
        v33 = swift_allocObject();
        type metadata accessor for InteractionNoneFoundCell();
        sub_22827993C(&qword_27D825630, type metadata accessor for InteractionNoneFoundCell, &protocol conformance descriptor for InteractionNoneFoundCell);
        *(v33 + 16) = sub_22838FBB0();
        *(v33 + 24) = v34;
        *(v31 + 56) = found;
        *(v31 + 64) = sub_22827993C(&qword_27D826638, type metadata accessor for InteractionNoneFoundItem, &protocol conformance descriptor for InteractionNoneFoundItem);
        *(v31 + 32) = v33;
        v51 = v31;
        v29 = *(v31 + 16);
        if (!v29)
        {
LABEL_30:

          sub_22838F910();

          sub_22838FCD0();

          sub_22838FF50();

          return sub_22827B07C(&v62, sub_22827AE70);
        }

        v3 = v30;
      }

      v57 = v15;
      sub_2281CA2AC(0, v29, 0);
      v35 = v57;
      v36 = v51 + 32;
      v52 = xmmword_228397F40;
      v37 = v49;
      do
      {
        sub_228180FB0(v36, v58);
        sub_22827AF44(0, &qword_27D823918, &qword_27D827E00, MEMORY[0x277D10D40], MEMORY[0x277D84560]);
        v38 = swift_allocObject();
        *(v38 + 16) = v52;
        v39 = v59;
        v40 = v60;
        v41 = __swift_project_boxed_opaque_existential_0(v58, v59);
        *(v38 + 56) = v39;
        *(v38 + 64) = *(v40 + 8);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v38 + 32));
        (*(*(v39 - 8) + 16))(boxed_opaque_existential_1, v41, v39);
        v43 = v53;
        sub_22838F490();
        sub_22838F450();
        (*(v3 + 8))(v43, v55);
        sub_22838FED0();
        __swift_destroy_boxed_opaque_existential_0(v58);
        v57 = v35;
        v45 = *(v35 + 16);
        v44 = *(v35 + 24);
        if (v45 >= v44 >> 1)
        {
          sub_2281CA2AC((v44 > 1), v45 + 1, 1);
          v35 = v57;
        }

        *(v35 + 16) = v45 + 1;
        (*(v56 + 32))(v35 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v45, v37, v54);
        v36 += 40;
        --v29;
      }

      while (v29);
      goto LABEL_30;
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22838F910();

    sub_22838FCD0();

    sub_22838FF50();
  }

  return result;
}

uint64_t sub_2282783C0(id *a1, id a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = v7;
  v69 = a6;
  v70 = a7;
  v72 = a4;
  v73 = a5;
  v71 = a3;
  v85 = *MEMORY[0x277D85DE8];
  v10 = [*a1 interactions];
  v75 = sub_22817A958(0, &qword_280DDBA10, 0x277D11518);
  v67 = sub_22818C470(&qword_280DDBA08, &qword_280DDBA10, 0x277D11518, MEMORY[0x277D85378]);
  v11 = sub_228392480();

  v79 = a2;
  v74 = v7;
  if ((v11 & 0xC000000000000001) == 0)
  {
    v29 = *(v11 + 32);
    v16 = (((1 << v29) + 63) >> 6);
    if ((v29 & 0x3Fu) > 0xD)
    {
      goto LABEL_40;
    }

LABEL_23:
    v64 = v16;
    v63[1] = v63;
    MEMORY[0x28223BE20](v12);
    v65 = v63 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v65, v30);
    v66 = 0;
    v31 = 0;
    v68 = v11;
    v8 = (v11 + 56);
    v32 = 1 << *(v11 + 32);
    v33 = -1;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    v34 = v33 & *(v11 + 56);
    v16 = ((v32 + 63) >> 6);
    while (1)
    {
      if (!v34)
      {
        v36 = v31;
        while (1)
        {
          v31 = v36 + 1;
          if (__OFADD__(v36, 1))
          {
            goto LABEL_39;
          }

          if (v31 >= v16)
          {
            goto LABEL_37;
          }

          v37 = v8[v31];
          ++v36;
          if (v37)
          {
            v35 = __clz(__rbit64(v37));
            v34 = (v37 - 1) & v37;
            goto LABEL_33;
          }
        }
      }

      v35 = __clz(__rbit64(v34));
      v34 &= v34 - 1;
LABEL_33:
      v11 = v35 | (v31 << 6);
      v38 = *(*(v68 + 48) + 8 * v11);
      v39 = [v38 severity];
      v40 = [v39 severityLevel];

      if (v40 == a2)
      {
        *&v65[(v11 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v11;
        if (__OFADD__(v66++, 1))
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_37:
    v13 = sub_22827AC54(v65, v64, v66, v68, &qword_27D826648, &qword_280DDBA10, 0x277D11518, &qword_280DDBA08);
    if ((v13 & 0xC000000000000001) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_38;
  }

  v13 = MEMORY[0x277D84FA0];
  v80 = MEMORY[0x277D84FA0];
  sub_228393080();
  v14 = sub_228393100();
  if (!v14)
  {
LABEL_20:

    if ((v13 & 0xC000000000000001) != 0)
    {
      goto LABEL_38;
    }

LABEL_44:
    v50 = -1 << *(v13 + 32);
    v44 = v13 + 56;
    v45 = ~v50;
    v51 = -v50;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    else
    {
      v52 = -1;
    }

    v47 = v52 & *(v13 + 56);

    v53 = v72;

    v46 = 0;
    v43 = v13;
    goto LABEL_48;
  }

  v8 = &off_2785F4000;
  while (1)
  {
    v76 = v14;
    swift_dynamicCast();
    v15 = [v77 severity];
    v16 = [v15 severityLevel];

    v17 = v77;
    if (v16 == a2)
    {
      break;
    }

LABEL_5:
    v14 = sub_228393100();
    if (!v14)
    {
      goto LABEL_20;
    }
  }

  v18 = *(v13 + 16);
  if (*(v13 + 24) <= v18)
  {
    sub_2282D7554(v18 + 1);
  }

  v13 = v80;
  v11 = v77;
  v19 = sub_228392C50();
  v20 = v80 + 56;
  v21 = -1 << *(v80 + 32);
  v22 = v19 & ~v21;
  v23 = v22 >> 6;
  if (((-1 << v22) & ~*(v80 + 56 + 8 * (v22 >> 6))) != 0)
  {
    v24 = __clz(__rbit64((-1 << v22) & ~*(v80 + 56 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_19:
    *(v20 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    *(*(v13 + 48) + 8 * v24) = v17;
    ++*(v13 + 16);
    goto LABEL_5;
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v20 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_23;
  }

  v48 = swift_slowAlloc();
  v49 = sub_22827A904(v48, v16, v11, sub_22827AFAC, v78);
  v74 = v8;
  if (v8)
  {

    result = MEMORY[0x22AAB7B80](v48, -1, -1);
    __break(1u);
  }

  else
  {
    v13 = v49;

    MEMORY[0x22AAB7B80](v48, -1, -1);
    if ((v13 & 0xC000000000000001) == 0)
    {
      goto LABEL_44;
    }

LABEL_38:

    v42 = v72;

    sub_228393080();
    sub_2283924C0();
    v43 = v80;
    v44 = v81;
    v45 = v82;
    v46 = v83;
    v47 = v84;
LABEL_48:
    v68 = v45;
    v54 = (v45 + 64) >> 6;
    if (v43 < 0)
    {
      goto LABEL_55;
    }

    while (1)
    {
      v55 = v46;
      v56 = v47;
      v57 = v46;
      if (!v47)
      {
        break;
      }

LABEL_53:
      v58 = (v56 - 1) & v56;
      v59 = *(*(v43 + 48) + ((v57 << 9) | (8 * __clz(__rbit64(v56)))));
      if (!v59)
      {
        goto LABEL_59;
      }

      while (1)
      {
        v77 = v59;
        v61 = v74;
        sub_228278AB8(&v77, v71, v72, v73, v69, v70);
        v74 = v61;

        v46 = v57;
        v47 = v58;
        if ((v43 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_55:
        v60 = sub_228393100();
        if (v60)
        {
          v76 = v60;
          swift_dynamicCast();
          v59 = v77;
          v57 = v46;
          v58 = v47;
          if (v77)
          {
            continue;
          }
        }

        goto LABEL_59;
      }
    }

    while (1)
    {
      v57 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        __break(1u);
      }

      if (v57 >= v54)
      {
        break;
      }

      v56 = *(v44 + 8 * v57);
      ++v55;
      if (v56)
      {
        goto LABEL_53;
      }
    }

LABEL_59:
    sub_228176F04(v43);
  }

  return result;
}

void sub_228278AB8(id *a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v95 = a6;
  v92 = a5;
  v94 = a4;
  v93 = a3;
  v98 = type metadata accessor for InteractionStackedMedmojiDataProvider(0);
  MEMORY[0x28223BE20](v98);
  v100 = (&v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v97 = type metadata accessor for DrugInteractionVisualizationConfig(0);
  v11 = MEMORY[0x28223BE20](v97);
  v13 = (&v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v101 = (&v90 - v14);
  v103 = *a1;
  v110 = MEMORY[0x277D84F90];
  if (a2 >> 62)
  {
    goto LABEL_44;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2283930D0())
  {
    v99 = v13;
    v96 = v7;
    if (!i)
    {
      break;
    }

    v16 = 0;
    v113 = a2 & 0xC000000000000001;
    v13 = (a2 & 0xFFFFFFFFFFFFFF8);
    v102 = a2;
    do
    {
      if (v113)
      {
        v17 = MEMORY[0x22AAB6D80](v16, a2);
      }

      else
      {
        if (v16 >= v13[2])
        {
          goto LABEL_41;
        }

        v17 = *(a2 + 8 * v16 + 32);
      }

      v18 = v17;
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v20 = [v17 firstConceptIdentifier];
      if (v20)
      {
        v21 = v20;
        v7 = sub_22817A958(0, &qword_27D825620, 0x277D82BB8);
        v22 = [v103 firstInteractionClass];
        v23 = [v22 ancestorIdentifier];

        LOBYTE(v22) = sub_228392C60();
        if (v22)
        {
          v7 = &v110;
          sub_228393210();
          sub_228393250();
          sub_228393260();
          sub_228393220();
        }

        else
        {
        }

        a2 = v102;
      }

      else
      {
      }

      ++v16;
    }

    while (v19 != i);
    v24 = 0;
    v91 = v110;
    v110 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v113)
      {
        v25 = MEMORY[0x22AAB6D80](v24, a2);
      }

      else
      {
        if (v24 >= v13[2])
        {
          goto LABEL_43;
        }

        v25 = *(a2 + 8 * v24 + 32);
      }

      v26 = v25;
      v27 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      v28 = [v25 firstConceptIdentifier];
      if (v28)
      {
        v29 = v28;
        sub_22817A958(0, &qword_27D825620, 0x277D82BB8);
        v30 = [v103 secondInteractionClass];
        v31 = [v30 ancestorIdentifier];

        v7 = sub_228392C60();
        if (v7)
        {
          v7 = &v110;
          sub_228393210();
          sub_228393250();
          sub_228393260();
          sub_228393220();
        }

        else
        {
        }

        a2 = v102;
      }

      else
      {
      }

      ++v24;
      if (v27 == i)
      {
        v32 = v110;
        v33 = v91;
        goto LABEL_32;
      }
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    ;
  }

  v33 = MEMORY[0x277D84F90];
  v32 = MEMORY[0x277D84F90];
LABEL_32:
  if (v33 < 0 || (v33 & 0x4000000000000000) != 0)
  {
    if (sub_2283930D0())
    {
LABEL_35:
      if ((v33 & 0xC000000000000001) != 0)
      {
        v34 = MEMORY[0x22AAB6D80](0, v33);
      }

      else
      {
        if (!*(v33 + 16))
        {
          __break(1u);
          goto LABEL_71;
        }

        v34 = *(v33 + 32);
      }

      v35 = v34;

      _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE7medmoji0eF10Experience29MedicationVisualizationConfigVSgvg_0();
      swift_storeEnumTagMultiPayload();
      v110 = v35;
      v36 = sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
      v37 = sub_228390F30();
      v102 = v38;
      v111 = v36;
      v112 = &protocol witness table for HKMedicationUserDomainConcept;
      v110 = v35;
      if (v32 < 0)
      {
        goto LABEL_55;
      }

      goto LABEL_49;
    }
  }

  else if (*(v33 + 16))
  {
    goto LABEL_35;
  }

  v39 = [v103 firstInteractionClass];
  v40 = [v39 ancestorIdentifier];

  v41 = HKDrugInteractionLifestyleFactorForHKConceptIdentifier();
  v42 = v41;
  if (!v41)
  {
    sub_22817A958(0, &qword_280DDB960, 0x277CCABB0);
    v42 = sub_228392C40();
  }

  v43 = v41;
  v44 = sub_228392F30();

  *v101 = v44;
  swift_storeEnumTagMultiPayload();
  LOBYTE(v110) = 0;
  v37 = HKDrugInteractionLifestyleFactor.localizedString(variant:)(&v110, v44);
  v102 = v45;
  type metadata accessor for HKDrugInteractionLifestyleFactor(0);
  v111 = v46;
  v112 = &protocol witness table for HKDrugInteractionLifestyleFactor;

  v110 = v44;
  if (v32 < 0)
  {
LABEL_55:
    v54 = sub_2283930D0();
    v113 = v37;
    if (!v54)
    {
      goto LABEL_56;
    }

    goto LABEL_51;
  }

LABEL_49:
  if ((v32 & 0x4000000000000000) != 0)
  {
    goto LABEL_55;
  }

  v47 = *(v32 + 16);
  v113 = v37;
  if (!v47)
  {
LABEL_56:

    v55 = [v103 secondInteractionClass];
    v56 = [v55 ancestorIdentifier];

    v57 = HKDrugInteractionLifestyleFactorForHKConceptIdentifier();
    v58 = v57;
    if (!v57)
    {
      sub_22817A958(0, &qword_280DDB960, 0x277CCABB0);
      v58 = sub_228392C40();
    }

    v59 = v57;
    v49 = sub_228392F30();

    v50 = v99;
    *v99 = v49;
    swift_storeEnumTagMultiPayload();
    v107[0] = 0;
    v52 = HKDrugInteractionLifestyleFactor.localizedString(variant:)(v107, v49);
    v97 = v60;
    type metadata accessor for HKDrugInteractionLifestyleFactor(0);
    v108 = v61;
    v109 = &protocol witness table for HKDrugInteractionLifestyleFactor;

    goto LABEL_59;
  }

LABEL_51:
  if ((v32 & 0xC000000000000001) != 0)
  {
    v48 = MEMORY[0x22AAB6D80](0, v32);
    goto LABEL_54;
  }

  if (!*(v32 + 16))
  {
LABEL_71:
    __break(1u);
    return;
  }

  v48 = *(v32 + 32);
LABEL_54:
  v49 = v48;

  v50 = v99;
  _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE7medmoji0eF10Experience29MedicationVisualizationConfigVSgvg_0();
  swift_storeEnumTagMultiPayload();
  *v107 = v49;
  v51 = sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  v52 = sub_228390F30();
  v97 = v53;
  v108 = v51;
  v109 = &protocol witness table for HKMedicationUserDomainConcept;
LABEL_59:
  *v107 = v49;
  v62 = v103;
  v63 = [v103 severity];
  v64 = [v63 severityLevel];

  v65 = v98;
  v66 = v100;
  sub_22827B014(v101, v100 + *(v98 + 20), type metadata accessor for DrugInteractionVisualizationConfig);
  sub_22827B014(v50, v66 + *(v65 + 24), type metadata accessor for DrugInteractionVisualizationConfig);
  *v66 = v64;
  sub_228180ED0();
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_228396260;
  *(v67 + 32) = v62;
  type metadata accessor for HKDrugInteractionResultCollection();
  v68 = swift_allocObject();
  v68[2] = v67;
  sub_228180FB0(&v110, v106);
  sub_228180FB0(v107, v105);
  type metadata accessor for InteractionMedicationItem();
  v69 = swift_allocObject();
  v104[3] = v65;
  v70 = sub_22827993C(&qword_27D825730, type metadata accessor for InteractionStackedMedmojiDataProvider, &protocol conformance descriptor for InteractionStackedMedmojiDataProvider);
  v104[4] = v70;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v104);
  sub_22827B014(v66, boxed_opaque_existential_1, type metadata accessor for InteractionStackedMedmojiDataProvider);
  type metadata accessor for InteractionMedicationCell();
  sub_22827993C(&qword_27D824A80, type metadata accessor for InteractionMedicationCell, &protocol conformance descriptor for InteractionMedicationCell);
  v72 = v62;

  v69[22] = sub_22838FBB0();
  v69[23] = v73;
  v69[27] = MEMORY[0x277D84FA0];
  v69[28] = 0;
  v74 = v93;
  v75 = v94;
  v69[24] = v93;
  v69[25] = v75;
  v69[26] = v92;
  v103 = v68;
  v69[2] = v68;
  v76 = v113;
  v77 = v52;
  v78 = v52 == v113;
  v79 = v102;
  v80 = v97;
  if (v78 && v97 == v102 || (sub_228393460() & 1) == 0)
  {
    v69[8] = v76;
    v69[9] = v79;
    sub_22816DFFC(v106, (v69 + 10));
    v69[20] = v77;
    v69[21] = v80;
    sub_22816DFFC(v105, (v69 + 15));
    sub_228180FB0(v104, (v69 + 3));
    v87 = v74;
  }

  else
  {
    v69[8] = v77;
    v69[9] = v80;
    sub_228180FB0(v105, (v69 + 10));
    v69[20] = v76;
    v69[21] = v79;
    sub_228180FB0(v106, (v69 + 15));
    v81 = *boxed_opaque_existential_1;
    v82 = v98;
    v83 = *(v98 + 24);
    v69[6] = v98;
    v69[7] = v70;
    v84 = v74;
    v85 = __swift_allocate_boxed_opaque_existential_1(v69 + 3);
    sub_22827B014(boxed_opaque_existential_1 + v83, v85 + *(v82 + 20), type metadata accessor for DrugInteractionVisualizationConfig);
    sub_22827B014(boxed_opaque_existential_1 + *(v82 + 20), v85 + *(v82 + 24), type metadata accessor for DrugInteractionVisualizationConfig);
    *v85 = v81;
    v86 = v84;

    __swift_destroy_boxed_opaque_existential_0(v105);
    __swift_destroy_boxed_opaque_existential_0(v106);
  }

  __swift_destroy_boxed_opaque_existential_0(v104);

  v89 = v95;
  MEMORY[0x22AAB5D20](v88);
  if (*((*v89 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v89 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2283921E0();
  }

  sub_228392230();

  sub_22827B07C(v100, type metadata accessor for InteractionStackedMedmojiDataProvider);
  sub_22827B07C(v99, type metadata accessor for DrugInteractionVisualizationConfig);
  sub_22827B07C(v101, type metadata accessor for DrugInteractionVisualizationConfig);
  __swift_destroy_boxed_opaque_existential_0(v107);
  __swift_destroy_boxed_opaque_existential_0(&v110);
}

uint64_t sub_2282796A8()
{

  sub_22819482C(v0 + qword_27D826588);
}

uint64_t InteractionSeverityDataSource.deinit(uint64_t a1)
{
  v1 = _s19HealthMedicationsUI34InteractionSeperatorLineDataSourceCfd_0();

  sub_22819482C(v1 + qword_27D826588);

  return v1;
}

uint64_t InteractionSeverityDataSource.__deallocating_deinit(uint64_t a1)
{
  InteractionSeverityDataSource.deinit(a1);

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall InteractionSeverityDataSource.registerCells(for:)(UICollectionView *a1)
{
  type metadata accessor for InteractionMedicationCell();
  sub_22827993C(&qword_27D824A80, type metadata accessor for InteractionMedicationCell, &protocol conformance descriptor for InteractionMedicationCell);
  sub_2283926B0();
  type metadata accessor for InteractionNoneFoundCell();
  sub_22827993C(&qword_27D825630, type metadata accessor for InteractionNoneFoundCell, &protocol conformance descriptor for InteractionNoneFoundCell);
  sub_2283926B0();
}

uint64_t sub_22827993C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_228279984()
{
  type metadata accessor for InteractionMedicationCell();
  sub_22827993C(&qword_27D824A80, type metadata accessor for InteractionMedicationCell, &protocol conformance descriptor for InteractionMedicationCell);
  sub_2283926B0();
  type metadata accessor for InteractionNoneFoundCell();
  sub_22827993C(&qword_27D825630, type metadata accessor for InteractionNoneFoundCell, &protocol conformance descriptor for InteractionNoneFoundCell);
  return sub_2283926B0();
}

uint64_t InteractionSeverityDataSource.supplementaryItem(ofKind:at:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_228391590();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = qword_27D826588;
  swift_beginAccess();
  sub_22817E6C8(v1 + v4, &v12);
  if (v13)
  {
    sub_22816DFFC(&v12, v14);
    v5 = v15;
    v6 = v16;
    v7 = __swift_project_boxed_opaque_existential_0(v14, v15);
    a1[3] = v5;
    a1[4] = *(v6 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v7, v5);
    return __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    sub_22819482C(&v12);
    sub_228321CC4(0xD000000000000015, 0x80000002283AFAD0, *(v1 + qword_27D826598));
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();

    sub_228391500();
    v10 = sub_22838FB60();
    swift_allocObject();
    v11 = sub_22838FB50();
    a1[3] = v10;
    result = sub_22827993C(&qword_27D823960, MEMORY[0x277D10E18], MEMORY[0x277D10E08]);
    a1[4] = result;
    *a1 = v11;
  }

  return result;
}

uint64_t type metadata accessor for InteractionSeverityDataSource(uint64_t a1)
{
  result = qword_27D8265B0;
  if (!qword_27D8265B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_228279E50(uint64_t a1)
{
  if (!qword_280DDBAD0)
  {
    sub_228392730();
    v1 = sub_228392F00();
    if (!v2)
    {
      atomic_store(v1, &qword_280DDBAD0);
    }
  }
}

void sub_228279EA8(uint64_t a1)
{
  if (!qword_27D8265C0)
  {
    sub_22824E8E4(255);
    sub_22824EB00(255, &qword_27D825DC8, sub_2281930F4);
    sub_22827993C(&qword_27D825DD0, sub_22824E8E4, MEMORY[0x277CBCB10]);
    sub_228279FA0(&qword_27D825DD8, &qword_27D825DC8, sub_2281930F4);
    v1 = sub_228391670();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8265C0);
    }
  }
}

uint64_t sub_228279FA0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_22824EB00(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_228279FF0(uint64_t a1)
{
  if (!qword_27D8265C8)
  {
    v1 = MEMORY[0x277CBCD88];
    sub_22827C15C(255, &qword_280DDBC70, MEMORY[0x277CBCD88]);
    sub_22827A16C(255);
    sub_22827A238(&qword_280DDBC78, &qword_280DDBC70, v1, MEMORY[0x277CBCD90]);
    sub_22827993C(&qword_27D8265E0, sub_22827A16C, MEMORY[0x277CBCBA0]);
    v2 = sub_228391780();
    if (!v3)
    {
      atomic_store(v2, &qword_27D8265C8);
    }
  }
}

void sub_22827A0FC(uint64_t a1)
{
  if (!qword_280DDBB60)
  {
    sub_22818DF04(255, &qword_280DDBB68, &qword_280DDB9F0, 0x277D11550);
    v1 = sub_228392F00();
    if (!v2)
    {
      atomic_store(v1, &qword_280DDBB60);
    }
  }
}

void sub_22827A16C(uint64_t a1)
{
  if (!qword_27D8265D0)
  {
    sub_228279EA8(255);
    sub_2281810DC(255, &qword_280DDB860, MEMORY[0x277D84948]);
    sub_22827993C(&qword_27D8265D8, sub_228279EA8, MEMORY[0x277CBCAF0]);
    v1 = sub_228391710();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8265D0);
    }
  }
}

uint64_t sub_22827A238(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_22827C15C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22827A27C(uint64_t a1)
{
  if (!qword_27D8265E8)
  {
    sub_228279FF0(255);
    sub_22818DF04(255, &qword_280DDBB68, &qword_280DDB9F0, 0x277D11550);
    sub_22827993C(&qword_27D8265F0, sub_228279FF0, MEMORY[0x277CBCCE0]);
    v1 = sub_2283916D0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8265E8);
    }
  }
}

void sub_22827A340(uint64_t a1)
{
  if (!qword_27D8265F8)
  {
    sub_228279FF0(255);
    sub_22827A0FC(255);
    sub_22827993C(&qword_27D8265F0, sub_228279FF0, MEMORY[0x277CBCCE0]);
    v1 = sub_2283916D0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8265F8);
    }
  }
}

void sub_22827A3EC(uint64_t a1)
{
  if (!qword_27D826600)
  {
    sub_22827A340(255);
    sub_22827993C(&qword_27D826608, sub_22827A340, MEMORY[0x277CBCB10]);
    v1 = sub_228391700();
    if (!v2)
    {
      atomic_store(v1, &qword_27D826600);
    }
  }
}

void sub_22827A480(uint64_t a1)
{
  if (!qword_27D826610)
  {
    sub_22827A3EC(255);
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    sub_22827993C(&qword_27D826618, sub_22827A3EC, MEMORY[0x277CBCB78]);
    sub_22818C470(&qword_280DDBAC0, &qword_280DDCEE0, 0x277D85C78, MEMORY[0x277D85228]);
    v1 = sub_2283917D0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D826610);
    }
  }
}

uint64_t sub_22827A588@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_22827A5C8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

void sub_22827A648(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5, unint64_t *a6, unint64_t *a7, void *a8, unint64_t *a9)
{
  v28 = 0;
  v10 = 0;
  v11 = a3 + 56;
  v12 = 1 << *(a3 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a3 + 56);
  v15 = (v12 + 63) >> 6;
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_11:
    v19 = v16 | (v10 << 6);
    v31 = *(*(a3 + 48) + 8 * v19);
    v20 = v31;
    v21 = a4(&v31);

    if (v9)
    {
      return;
    }

    if (v21)
    {
      *(a1 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      if (__OFADD__(v28++, 1))
      {
        __break(1u);
LABEL_16:

        sub_22827AC54(a1, a2, v28, a3, a6, a7, a8, a9);
        return;
      }
    }
  }

  v17 = v10;
  while (1)
  {
    v10 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v10 >= v15)
    {
      goto LABEL_16;
    }

    v18 = *(v11 + 8 * v10);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v14 = (v18 - 1) & v18;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *sub_22827A7D0(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4;
    v9 = sub_22827B140(v7, a2, a3, v8);

    return v9;
  }

  return result;
}

unint64_t *sub_22827A868(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_22827B938(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_22827A904(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    sub_22827A648(result, a2, a3, a4, a5, &qword_27D826648, &qword_280DDBA10, 0x277D11518, &qword_280DDBA08);
    v11 = v10;

    return v11;
  }

  return result;
}

uint64_t sub_22827A9E4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_22827C32C(0);
  result = sub_2283931A0();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v32 = (v10 - 1) & v10;
LABEL_17:
    v16 = (*(v4 + 48) + 32 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[2];
    v20 = v16[3];
    sub_228393520();

    sub_2283920B0();
    sub_2283920B0();
    result = sub_228393570();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 32 * v24);
    *v29 = v17;
    v29[1] = v18;
    v29[2] = v19;
    v29[3] = v20;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
    v10 = v32;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v32 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22827AC54(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, unint64_t *a6, void *a7, unint64_t *a8)
{
  v8 = a4;
  if (!a3)
  {
    v13 = MEMORY[0x277D84FA0];
LABEL_6:

    return v13;
  }

  v9 = a3;
  if (*(a4 + 16) == a3)
  {
    return v8;
  }

  sub_22827C28C(0, a5, a6, a7, a8);
  result = sub_2283931A0();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 56;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_17:
    v20 = *(*(v8 + 48) + 8 * (v17 | (v15 << 6)));
    result = sub_228392C50();
    v21 = -1 << *(v13 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v16 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v16 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v16 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v16 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    *(*(v13 + 48) + 8 * v24) = v20;
    ++*(v13 + 16);
    if (__OFSUB__(v9--, 1))
    {
      goto LABEL_32;
    }

    if (!v9)
    {
      goto LABEL_6;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      goto LABEL_6;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v14 = (v19 - 1) & v19;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_22827AE70(uint64_t a1)
{
  if (!qword_27D826628)
  {
    v1 = MEMORY[0x277D10D48];
    sub_22827AF44(255, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], MEMORY[0x277D83D88]);
    sub_22827AF44(255, &qword_27D826630, &qword_280DDCD60, v1, MEMORY[0x277D83940]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D826628);
    }
  }
}

void sub_22827AF44(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2281810DC(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

BOOL sub_22827AFAC(id *a1)
{
  v2 = *(v1 + 16);
  v3 = [*a1 severity];
  v4 = [v3 severityLevel];

  return v4 == v2;
}

uint64_t sub_22827B014(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22827B07C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t *sub_22827B140(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v24 = 0;
  v25 = a4;
  v22 = a2;
  v23 = result;
  v4 = 0;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(*(v26 + 48) + 8 * v13);
    v15 = [v14 conceptIdentifiers];
    sub_22817A958(0, &qword_27D823BE0, 0x277CCD1D0);
    v16 = sub_2283921A0();

    v28 = v25;
    MEMORY[0x28223BE20](v17);
    v21[2] = &v28;
    v18 = v27;
    LOBYTE(v15) = sub_228309FEC(sub_22827C3EC, v21, v16);
    v27 = v18;

    if (v15)
    {
      *(v23 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
LABEL_15:
        v20 = v26;

        return sub_22827AC54(v23, v22, v24, v20, &qword_280DDB918, &qword_280DDB9F0, 0x277D11550, &qword_280DDB9E8);
      }
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
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22827B354(uint64_t a1, void *a2)
{
  v3 = v2;
  v4 = a1;
  v35[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = a2;
  v33 = v9;
  if (v6 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v34 = v3;
    v28[1] = v28;
    v29 = v7;
    MEMORY[0x28223BE20](v9);
    v30 = v28 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v30, v8);
    v31 = 0;
    v32 = v4;
    v10 = 0;
    v11 = v4 + 7;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & v4[7];
    v15 = (v12 + 63) >> 6;
    while (v14)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_12:
      v3 = v16 | (v10 << 6);
      v19 = *(v32[6] + 8 * v3);
      v20 = [v19 conceptIdentifiers];
      sub_22817A958(0, &qword_27D823BE0, 0x277CCD1D0);
      v8 = sub_2283921A0();

      v4 = v28;
      v35[0] = v33;
      MEMORY[0x28223BE20](v21);
      v28[-2] = v35;
      v22 = v34;
      v7 = sub_228309FEC(sub_22827C3EC, &v28[-4], v8);
      v34 = v22;

      if (v7)
      {
        *&v30[(v3 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v3;
        if (__OFADD__(v31++, 1))
        {
          __break(1u);
LABEL_16:
          v24 = sub_22827AC54(v30, v29, v31, v32, &qword_280DDB918, &qword_280DDB9F0, 0x277D11550, &qword_280DDB9E8);

          return v24;
        }
      }
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_16;
      }

      v18 = v11[v10];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v26 = swift_slowAlloc();
  v27 = v33;
  v24 = sub_22827A7D0(v26, v7, v4, v27);

  MEMORY[0x22AAB7B80](v26, -1, -1);

  return v24;
}

uint64_t sub_22827B68C(uint64_t a1, void *a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_22827B354(a1, a2);
  }

  v2 = MEMORY[0x277D84FA0];
  v25 = MEMORY[0x277D84FA0];
  v3 = a2;
  sub_228393080();
  v4 = sub_228393100();
  if (v4)
  {
    v5 = v4;
    sub_22817A958(0, &qword_280DDB9F0, 0x277D11550);
    v6 = v5;
    do
    {
      v23 = v6;
      swift_dynamicCast();
      v7 = [v24 conceptIdentifiers];
      sub_22817A958(0, &qword_27D823BE0, 0x277CCD1D0);
      v8 = sub_2283921A0();

      v23 = v3;
      MEMORY[0x28223BE20](v9);
      v22[2] = &v23;
      LOBYTE(v7) = sub_228309FEC(sub_22827C208, v22, v8);

      v10 = v24;
      if (v7)
      {
        v11 = *(v2 + 16);
        if (*(v2 + 24) <= v11)
        {
          sub_2282D7530(v11 + 1);
        }

        v2 = v25;
        result = sub_228392C50();
        v13 = v2 + 56;
        v14 = -1 << *(v2 + 32);
        v15 = result & ~v14;
        v16 = v15 >> 6;
        if (((-1 << v15) & ~*(v2 + 56 + 8 * (v15 >> 6))) != 0)
        {
          v17 = __clz(__rbit64((-1 << v15) & ~*(v2 + 56 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
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
        *(*(v2 + 48) + 8 * v17) = v10;
        ++*(v2 + 16);
      }

      else
      {
      }

      v6 = sub_228393100();
    }

    while (v6);
  }

  return v2;
}

unint64_t *sub_22827B938(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a2;
  v4 = a3;
  v23 = result;
  v24 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v25 = v11 | (v5 << 6);
    v14 = *(*(v4 + 48) + 8 * v25);
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v15 = result;
      v16 = v4;
      v17 = v14;
      v18 = [v17 severity];
      v19 = [v18 severityLevel];

      v20 = *(v15 + qword_27D826598);
      v4 = v16;

      if (v19 == v20)
      {
        *(v23 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
        if (__OFADD__(v24++, 1))
        {
          __break(1u);
LABEL_16:

          return sub_22827AC54(v23, v22, v24, v4, &qword_27D826648, &qword_280DDBA10, 0x277D11518, &qword_280DDBA08);
        }
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22827BB10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v39 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v33 = v8;
    v34 = v3;
    v32[1] = v32;
    MEMORY[0x28223BE20](v10);
    v35 = v32 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v35, v9);
    v36 = 0;
    v37 = a2;
    v9 = 0;
    v8 = v5 + 56;
    v11 = 1 << *(v5 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    while (v13)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_12:
      v18 = v15 | (v9 << 6);
      v19 = *(v5 + 48);
      v38 = v18;
      v20 = *(v19 + 8 * v18);
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v22 = Strong;
        v23 = v20;
        v3 = v5;
        v24 = [v23 severity];
        v25 = [v24 severityLevel];

        v26 = *(v22 + qword_27D826598);
        a2 = v37;

        v27 = v25 == v26;
        v5 = v3;
        if (v27)
        {
          *&v35[(v38 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v38;
          if (__OFADD__(v36++, 1))
          {
            __break(1u);
LABEL_18:
            v29 = sub_22827AC54(v35, v33, v36, v5, &qword_27D826648, &qword_280DDBA10, 0x277D11518, &qword_280DDBA08);

            return v29;
          }
        }
      }
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_18;
      }

      v17 = *(v8 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
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

  v31 = swift_slowAlloc();

  v29 = sub_22827A868(v31, v8, v5, a2);

  MEMORY[0x22AAB7B80](v31, -1, -1);

  return v29;
}

uint64_t sub_22827BE18(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_22827BB10(a1, a2);
  }

  v2 = MEMORY[0x277D84FA0];
  v20 = MEMORY[0x277D84FA0];

  sub_228393080();
  if (sub_228393100())
  {
    sub_22817A958(0, &qword_280DDBA10, 0x277D11518);
    do
    {
      swift_dynamicCast();
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong && (v4 = Strong, v5 = [v19 severity], v6 = objc_msgSend(v5, sel_severityLevel), v5, v7 = *(v4 + qword_27D826598), , v6 == v7))
      {
        v8 = *(v2 + 16);
        if (*(v2 + 24) <= v8)
        {
          sub_2282D7554(v8 + 1);
        }

        v2 = v20;
        result = sub_228392C50();
        v10 = v20 + 56;
        v11 = -1 << *(v20 + 32);
        v12 = result & ~v11;
        v13 = v12 >> 6;
        if (((-1 << v12) & ~*(v20 + 56 + 8 * (v12 >> 6))) != 0)
        {
          v14 = __clz(__rbit64((-1 << v12) & ~*(v20 + 56 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v15 = 0;
          v16 = (63 - v11) >> 6;
          do
          {
            if (++v13 == v16 && (v15 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v17 = v13 == v16;
            if (v13 == v16)
            {
              v13 = 0;
            }

            v15 |= v17;
            v18 = *(v10 + 8 * v13);
          }

          while (v18 == -1);
          v14 = __clz(__rbit64(~v18)) + (v13 << 6);
        }

        *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        *(*(v20 + 48) + 8 * v14) = v19;
        ++*(v20 + 16);
      }

      else
      {
      }
    }

    while (sub_228393100());
  }

  return v2;
}

void sub_22827C090(uint64_t a1)
{
  if (!qword_280DDBC08)
  {
    v1 = MEMORY[0x277CBCD88];
    sub_22827C15C(255, &qword_280DDBC70, MEMORY[0x277CBCD88]);
    sub_22827A238(&qword_280DDBC78, &qword_280DDBC70, v1, MEMORY[0x277CBCD90]);
    v2 = sub_228391910();
    if (!v3)
    {
      atomic_store(v2, &qword_280DDBC08);
    }
  }
}

void sub_22827C15C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    sub_22827A0FC(255);
    v7 = v6;
    v8 = sub_2281810DC(255, &qword_280DDB860, MEMORY[0x277D84948]);
    v9 = a3(a1, v7, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_22827C28C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_22817A958(255, a3, a4);
    sub_22818C470(a5, a3, a4, MEMORY[0x277D85378]);
    v9 = sub_2283931B0();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_22827C32C(uint64_t a1)
{
  if (!qword_27D826650)
  {
    sub_22827C388();
    v1 = sub_2283931B0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D826650);
    }
  }
}

unint64_t sub_22827C388()
{
  result = qword_27D826658;
  if (!qword_27D826658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826658);
  }

  return result;
}

UIImage __swiftcall Symbol.uiImage(configuration:)(UIImageConfiguration_optional configuration)
{
  isa = configuration.value.super.isa;
  v2 = sub_228391FC0();

  v3 = [objc_opt_self() systemImageNamed:v2 withConfiguration:isa];

  if (v3)
  {
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t Symbol.ImageConfiguration.init(style:weight:scale:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = result;
  *(a3 + 8) = a4;
  *(a3 + 16) = a2;
  return result;
}

uint64_t Symbol.systemName.getter()
{
  v1 = *v0;
  v2 = 1937075312;
  v3 = 0x69632E6B72616D78;
  v4 = 0x6B636F6C63;
  if (v1 != 4)
  {
    v4 = 0x69662E736C6C6970;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x2E6E6F7276656863;
  if (v1 != 1)
  {
    v5 = 0xD000000000000010;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void Symbol.uiImage.getter()
{
  v0 = sub_228391FC0();

  v1 = [objc_opt_self() systemImageNamed:v0 withConfiguration:0];

  if (!v1)
  {
    __break(1u);
  }
}

UIImage __swiftcall Symbol.uiImage(style:weight:scale:)(UIFontTextStyle style, UIFontWeight weight, UIImageSymbolScale scale)
{
  result.super.isa = [objc_opt_self() _preferredFontForTextStyle_weight_];
  if (result.super.isa)
  {
    isa = result.super.isa;
    v6 = [objc_opt_self() configurationWithFont:result.super.isa scale:scale];
    v7 = sub_228391FC0();

    v8 = [objc_opt_self() systemImageNamed:v7 withConfiguration:v6];

    if (v8)
    {

      return v8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Symbol.hashValue.getter()
{
  v1 = *v0;
  sub_228393520();
  MEMORY[0x22AAB70D0](v1);
  return sub_228393570();
}

void sub_22827CB34(double *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *MEMORY[0x277D76918];
  v6 = *a1;
  v7 = objc_opt_self();
  v8 = v5;
  v9 = [v7 _preferredFontForTextStyle_weight_];
  if (v9)
  {
    v10 = v9;
    v11 = [objc_opt_self() configurationWithFont:v9 scale:a2];
    v12 = sub_228391FC0();
    v13 = [objc_opt_self() systemImageNamed:v12 withConfiguration:v11];

    if (v13)
    {

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_22827CC58()
{
  result = qword_27D826660;
  if (!qword_27D826660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D826660);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Symbol(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Symbol(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_22827CE0C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
}

uint64_t sub_22827CE6C()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_22827CEB8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_22827CF5C()
{
  v1 = [*(v0 + 16) semanticIdentifier];
  v2 = [v1 stringValue];

  v3 = sub_228392000();
  return v3;
}

uint64_t sub_22827CFD4()
{
  sub_2282803BC(0, &unk_280DDBD10, MEMORY[0x277D11720], MEMORY[0x277D83D88]);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  if (*(v0 + 24))
  {
    if (*(v0 + 24) == 1)
    {
      sub_228392A10();
      v7 = sub_228390F60();
      v8 = *(v7 - 8);
      if ((*(v8 + 48))(v6, 1, v7) != 1)
      {
        v10 = sub_228390F40();
        (*(v8 + 8))(v6, v7);
        return v10 & 1;
      }

      v9 = v6;
    }

    else
    {
      sub_228392A10();
      v11 = sub_228390F60();
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(v4, 1, v11) != 1)
      {
        v10 = sub_228390F50();
        (*(v12 + 8))(v4, v11);
        return v10 & 1;
      }

      v9 = v4;
    }

    sub_228201554(v9);
    v10 = 0;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

BOOL sub_22827D248()
{
  sub_22827F81C(*(v0 + 16), *(v0 + 24));
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

uint64_t sub_22827D288()
{
  result = sub_22827F81C(*(v0 + 16), *(v0 + 24));
  if (!v2)
  {
    if (qword_27D823310 != -1)
    {
      swift_once();
    }

    return sub_22838F0C0();
  }

  return result;
}

uint64_t sub_22827D32C()
{
  v1 = *(v0 + 16);
  v2 = [v1 localizedOntologyEducationContent];
  if (v2 && (v3 = v2, v4 = [v2 primarySection], v3, v4))
  {
    sub_228392A90();

    sub_22828036C(0, &qword_27D827E10, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_2281BF13C();
    v5 = sub_228391F90();

    return v5;
  }

  else
  {

    return 0;
  }
}

uint64_t MedicationInformationOverviewItem.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22827D4D4()
{
  sub_228393520();
  sub_228392C70();
  MEMORY[0x22AAB70D0](*(v0 + 24));
  return sub_228393570();
}

uint64_t sub_22827D528()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 32);

  return v2;
}

uint64_t sub_22827D584()
{
  v1 = *v0;
  sub_228393520();
  sub_228392C70();
  MEMORY[0x22AAB70D0](*(v1 + 24));
  return sub_228393570();
}

uint64_t sub_22827D5D8(uint64_t a1)
{
  v2 = *v1;
  sub_228392C70();
  return MEMORY[0x22AAB70D0](*(v2 + 24));
}

uint64_t sub_22827D618(uint64_t a1)
{
  sub_228393520();
  v2 = *v1;
  sub_228392C70();
  MEMORY[0x22AAB70D0](*(v2 + 24));
  return sub_228393570();
}

uint64_t sub_22827D668()
{
  v1 = [*(*v0 + 16) semanticIdentifier];
  v2 = [v1 stringValue];

  v3 = sub_228392000();
  return v3;
}

uint64_t sub_22827D6E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282169440](a1, WitnessTable);
}

uint64_t MedicationInformationOverviewItem.deselectionBehavior(in:)(uint64_t a1)
{
  type metadata accessor for MedicationInformationOverviewItem();
  sub_22827FDA4(&qword_27D826668, &protocol conformance descriptor for MedicationInformationOverviewItem);
  return sub_22838FE80();
}

id sub_22827D84C()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___mainStackView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___mainStackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___mainStackView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
    [v4 setAxis_];
    [v4 setAlignment_];
    [v4 setDistribution_];
    [v4 setSpacing_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_22827D924()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___criticalButtonStackView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___criticalButtonStackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___criticalButtonStackView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
    [v4 setAxis_];
    [v4 setAlignment_];
    [v4 setDistribution_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_22827D9E8()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___criticalInformationButton;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___criticalInformationButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___criticalInformationButton);
  }

  else
  {
    if (qword_27D823310 != -1)
    {
      swift_once();
    }

    v4 = sub_22838F0C0();
    _sSo8UIButtonC19HealthMedicationsUIE21makeExclamationButton5title29accessibilityIdentifierSuffixABSS_SStFZ_0(v4, v5, 0x616369746972432ELL, 0xE90000000000006CLL);
    v7 = v6;

    LODWORD(v8) = 1148846080;
    [v7 setContentHuggingPriority:0 forAxis:{v8, 0xE000000000000000}];
    v9 = *(v0 + v1);
    *(v0 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_22827DB18()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiNameStackView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiNameStackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiNameStackView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
    [v4 setDistribution_];
    [v4 setSpacing_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_22827DBC8()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiChevronStack;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiChevronStack);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiChevronStack);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
    [v4 setAxis_];
    [v4 setDistribution_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_22827DC90(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = v1;
    sub_22817A958(0, &qword_280DDB9B0, 0x277D75D18);
    v6 = MEMORY[0x22AAB6680]();
    LODWORD(v7) = 1148846080;
    [v6 setContentHuggingPriority:0 forAxis:v7];
    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    v8 = *(v5 + v2);
    *(v5 + v2) = v6;
    v4 = v6;

    v3 = 0;
  }

  v9 = v3;
  return v4;
}

id sub_22827DD3C()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiChevronStackWidthConstraint;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiChevronStackWidthConstraint);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI33MedicationInformationOverviewCell____lazy_storage___medmojiChevronStackWidthConstraint);
  }

  else
  {
    v4 = sub_22827DBC8();
    v5 = [v4 widthAnchor];

    v6 = sub_22827DB18();
    v7 = [v6 widthAnchor];

    v8 = [v5 constraintEqualToAnchor_];
    v9 = *(v0 + v1);
    *(v0 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}