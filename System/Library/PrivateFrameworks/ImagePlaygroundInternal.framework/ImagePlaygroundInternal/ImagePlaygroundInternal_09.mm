void sub_1D2394404(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v104 = a1;
  v9 = type metadata accessor for Prompt(0);
  v112 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v107 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v115 = &v100 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v116 = &v100 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v100 - v16;
  v114 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_95:
    v5 = *v104;
    if (!*v104)
    {
      goto LABEL_134;
    }

    a4 = v20;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v95 = a4;
    }

    else
    {
LABEL_128:
      v95 = sub_1D269163C(a4);
    }

    v118 = v95;
    a4 = *(v95 + 2);
    if (a4 >= 2)
    {
      while (*v114)
      {
        v96 = *&v95[16 * a4];
        v97 = v95;
        v98 = *&v95[16 * a4 + 24];
        sub_1D2395BF8(*v114 + *(v112 + 72) * v96, *v114 + *(v112 + 72) * *&v95[16 * a4 + 16], *v114 + *(v112 + 72) * v98, v5);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v98 < v96)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_1D269163C(v97);
        }

        if (a4 - 2 >= *(v97 + 2))
        {
          goto LABEL_122;
        }

        v99 = &v97[16 * a4];
        *v99 = v96;
        *(v99 + 1) = v98;
        v118 = v97;
        sub_1D26915B0(a4 - 1);
        v95 = v118;
        a4 = *(v118 + 2);
        if (a4 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v19 = 0;
  v20 = MEMORY[0x1E69E7CC0];
  v103 = a4;
  v117 = v9;
  while (1)
  {
    v21 = v19;
    v22 = v19 + 1;
    v108 = v20;
    if (v19 + 1 >= v18)
    {
      v18 = v19 + 1;
    }

    else
    {
      v23 = *(v112 + 72);
      v5 = *v114 + v23 * v22;
      v110 = *v114;
      v24 = v110;
      sub_1D2398BB0(v110 + v23 * v22, v17, type metadata accessor for Prompt);
      v25 = v24 + v23 * v21;
      v26 = v21;
      v27 = v116;
      sub_1D2398BB0(v25, v116, type metadata accessor for Prompt);
      LODWORD(v111) = sub_1D2871748();
      sub_1D2398B50(v27, type metadata accessor for Prompt);
      sub_1D2398B50(v17, type metadata accessor for Prompt);
      v102 = v26;
      v28 = v26 + 2;
      v113 = v23;
      v29 = v110 + v23 * (v26 + 2);
      while (v18 != v28)
      {
        sub_1D2398BB0(v29, v17, type metadata accessor for Prompt);
        v30 = v116;
        sub_1D2398BB0(v5, v116, type metadata accessor for Prompt);
        v31 = sub_1D2871748() & 1;
        sub_1D2398B50(v30, type metadata accessor for Prompt);
        sub_1D2398B50(v17, type metadata accessor for Prompt);
        ++v28;
        v29 += v113;
        v5 += v113;
        if ((v111 & 1) != v31)
        {
          v18 = v28 - 1;
          break;
        }
      }

      v21 = v102;
      a4 = v103;
      if (v111)
      {
        if (v18 < v102)
        {
          goto LABEL_125;
        }

        if (v102 < v18)
        {
          v101 = v6;
          v32 = v113 * (v18 - 1);
          v33 = v18;
          v34 = v18 * v113;
          v111 = v18;
          v35 = v102;
          v36 = v102;
          v37 = v102 * v113;
          do
          {
            if (v35 != --v33)
            {
              v38 = *v114;
              if (!*v114)
              {
                goto LABEL_131;
              }

              v5 = v38 + v37;
              sub_1D2398AE8(v38 + v37, v107, type metadata accessor for Prompt);
              if (v37 < v32 || v5 >= v38 + v34)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v37 != v32)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1D2398AE8(v107, v38 + v32, type metadata accessor for Prompt);
            }

            ++v35;
            v32 -= v113;
            v34 -= v113;
            v37 += v113;
          }

          while (v35 < v33);
          v6 = v101;
          a4 = v103;
          v21 = v36;
          v18 = v111;
        }
      }
    }

    v39 = v114[1];
    if (v18 < v39)
    {
      if (__OFSUB__(v18, v21))
      {
        goto LABEL_124;
      }

      if (v18 - v21 < a4)
      {
        if (__OFADD__(v21, a4))
        {
          goto LABEL_126;
        }

        if ((v21 + a4) >= v39)
        {
          v40 = v114[1];
        }

        else
        {
          v40 = v21 + a4;
        }

        if (v40 < v21)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v18 != v40)
        {
          break;
        }
      }
    }

    v19 = v18;
    if (v18 < v21)
    {
      goto LABEL_123;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v20 = v108;
    }

    else
    {
      v20 = sub_1D2691650(0, *(v108 + 2) + 1, 1, v108);
    }

    a4 = *(v20 + 2);
    v41 = *(v20 + 3);
    v5 = a4 + 1;
    if (a4 >= v41 >> 1)
    {
      v20 = sub_1D2691650((v41 > 1), a4 + 1, 1, v20);
    }

    *(v20 + 2) = v5;
    v42 = &v20[16 * a4];
    *(v42 + 4) = v21;
    *(v42 + 5) = v19;
    v43 = *v104;
    if (!*v104)
    {
      goto LABEL_133;
    }

    if (a4)
    {
      while (1)
      {
        v44 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v45 = *(v20 + 4);
          v46 = *(v20 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_52:
          if (v48)
          {
            goto LABEL_112;
          }

          v61 = &v20[16 * v5];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_115;
          }

          v67 = &v20[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_119;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v71 = &v20[16 * v5];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_66:
        if (v66)
        {
          goto LABEL_114;
        }

        v74 = &v20[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_117;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v44 - 1;
        if (v44 - 1 >= v5)
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

        v82 = v20;
        v83 = *&v20[16 * a4 + 32];
        v5 = *&v20[16 * v44 + 40];
        sub_1D2395BF8(*v114 + *(v112 + 72) * v83, *v114 + *(v112 + 72) * *&v20[16 * v44 + 32], *v114 + *(v112 + 72) * v5, v43);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v5 < v83)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v82 = sub_1D269163C(v82);
        }

        if (a4 >= *(v82 + 2))
        {
          goto LABEL_109;
        }

        v84 = &v82[16 * a4];
        *(v84 + 4) = v83;
        *(v84 + 5) = v5;
        v118 = v82;
        sub_1D26915B0(v44);
        v20 = v118;
        v5 = *(v118 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v20[16 * v5 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_110;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_111;
      }

      v56 = &v20[16 * v5];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_113;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_116;
      }

      if (v60 >= v52)
      {
        v78 = &v20[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_120;
        }

        if (v47 < v81)
        {
          v44 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = v114[1];
    a4 = v103;
    if (v19 >= v18)
    {
      goto LABEL_95;
    }
  }

  v101 = v6;
  v85 = v18;
  v86 = v21;
  v87 = *v114;
  v88 = *(v112 + 72);
  v89 = *v114 + v88 * (v18 - 1);
  v90 = -v88;
  v102 = v86;
  v91 = v86 - v18;
  v111 = v85;
  v105 = v88;
  v106 = v40;
  v5 = v87 + v85 * v88;
LABEL_85:
  v109 = v5;
  v110 = v91;
  v113 = v89;
  while (1)
  {
    sub_1D2398BB0(v5, v17, type metadata accessor for Prompt);
    v92 = v116;
    sub_1D2398BB0(v89, v116, type metadata accessor for Prompt);
    a4 = sub_1D2871748();
    sub_1D2398B50(v92, type metadata accessor for Prompt);
    sub_1D2398B50(v17, type metadata accessor for Prompt);
    if ((a4 & 1) == 0)
    {
LABEL_84:
      v19 = v106;
      v89 = v113 + v105;
      v91 = v110 - 1;
      v5 = v109 + v105;
      if (++v111 != v106)
      {
        goto LABEL_85;
      }

      v6 = v101;
      v21 = v102;
      if (v106 < v102)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v87)
    {
      break;
    }

    a4 = type metadata accessor for Prompt;
    v93 = v115;
    sub_1D2398AE8(v5, v115, type metadata accessor for Prompt);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D2398AE8(v93, v89, type metadata accessor for Prompt);
    v89 += v90;
    v5 += v90;
    if (__CFADD__(v91++, 1))
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
}

void sub_1D2394D68(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v112 = a1;
  v126 = type metadata accessor for IdentifiedEntity(0);
  v9 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v115 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v123 = &v107 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v125 = &v107 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v124 = &v107 - v16;
  v17 = a3[1];
  if (v17 < 1)
  {
    v19 = MEMORY[0x1E69E7CC0];
LABEL_96:
    v5 = *v112;
    if (!*v112)
    {
      goto LABEL_136;
    }

    a4 = v19;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v102 = a4;
LABEL_99:
      v127 = v102;
      a4 = *(v102 + 2);
      if (a4 >= 2)
      {
        v103 = v9;
        while (*a3)
        {
          v104 = *&v102[16 * a4];
          v105 = v102;
          v9 = *&v102[16 * a4 + 24];
          sub_1D239613C(*a3 + *(v103 + 72) * v104, *a3 + *(v103 + 72) * *&v102[16 * a4 + 16], *a3 + *(v103 + 72) * v9, v5);
          if (v6)
          {
            goto LABEL_108;
          }

          if (v9 < v104)
          {
            goto LABEL_123;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v105 = sub_1D269163C(v105);
          }

          if (a4 - 2 >= *(v105 + 2))
          {
            goto LABEL_124;
          }

          v106 = &v105[16 * a4];
          *v106 = v104;
          *(v106 + 1) = v9;
          v127 = v105;
          sub_1D26915B0(a4 - 1);
          v102 = v127;
          a4 = *(v127 + 2);
          if (a4 <= 1)
          {
            goto LABEL_108;
          }
        }

        goto LABEL_134;
      }

LABEL_108:

      return;
    }

LABEL_130:
    v102 = sub_1D269163C(a4);
    goto LABEL_99;
  }

  v18 = 0;
  v19 = MEMORY[0x1E69E7CC0];
  v111 = a4;
  v113 = a3;
  v108 = v9;
  while (1)
  {
    v20 = v18;
    v21 = v18 + 1;
    v116 = v19;
    if (v21 >= v17)
    {
      v17 = v21;
    }

    else
    {
      v109 = v6;
      v22 = *a3;
      v23 = *(v9 + 72);
      v5 = *a3 + v23 * v21;
      v24 = v124;
      sub_1D2398BB0(v5, v124, type metadata accessor for IdentifiedEntity);
      v25 = v125;
      sub_1D2398BB0(v22 + v23 * v20, v125, type metadata accessor for IdentifiedEntity);
      v26 = *(v126 + 24);
      v27 = *(v25 + v26) >> 14;
      v119 = *(v24 + v26) >> 14;
      v120 = v27;
      sub_1D2398B50(v25, type metadata accessor for IdentifiedEntity);
      sub_1D2398B50(v24, type metadata accessor for IdentifiedEntity);
      v110 = v20;
      v28 = v20 + 2;
      v121 = v23;
      v29 = v22 + v23 * v28;
      while (v17 != v28)
      {
        LODWORD(v122) = v120 < v119;
        v30 = v124;
        sub_1D2398BB0(v29, v124, type metadata accessor for IdentifiedEntity);
        v31 = v125;
        sub_1D2398BB0(v5, v125, type metadata accessor for IdentifiedEntity);
        v32 = *(v126 + 24);
        v33 = *(v30 + v32);
        v34 = *(v31 + v32) >> 14;
        sub_1D2398B50(v31, type metadata accessor for IdentifiedEntity);
        sub_1D2398B50(v30, type metadata accessor for IdentifiedEntity);
        ++v28;
        v29 += v121;
        v5 += v121;
        if (((v122 ^ (v34 >= v33 >> 14)) & 1) == 0)
        {
          v17 = v28 - 1;
          break;
        }
      }

      a3 = v113;
      v9 = v108;
      v6 = v109;
      v20 = v110;
      a4 = v111;
      if (v120 < v119)
      {
        if (v17 < v110)
        {
          goto LABEL_127;
        }

        if (v110 < v17)
        {
          v35 = v121 * (v17 - 1);
          v36 = v17 * v121;
          v120 = v17;
          v37 = v17;
          v38 = v110;
          v39 = v110 * v121;
          do
          {
            if (v38 != --v37)
            {
              v40 = *v113;
              if (!*v113)
              {
                goto LABEL_133;
              }

              v5 = v40 + v39;
              sub_1D2398AE8(v40 + v39, v115, type metadata accessor for IdentifiedEntity);
              if (v39 < v35 || v5 >= v40 + v36)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v39 != v35)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1D2398AE8(v115, v40 + v35, type metadata accessor for IdentifiedEntity);
            }

            ++v38;
            v35 -= v121;
            v36 -= v121;
            v39 += v121;
          }

          while (v38 < v37);
          a3 = v113;
          v9 = v108;
          v20 = v110;
          a4 = v111;
          v17 = v120;
        }
      }
    }

    v41 = a3[1];
    if (v17 >= v41)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v17, v20))
    {
      goto LABEL_126;
    }

    if (v17 - v20 >= a4)
    {
LABEL_32:
      v43 = v17;
      if (v17 < v20)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v20, a4))
    {
      goto LABEL_128;
    }

    if ((v20 + a4) >= v41)
    {
      v42 = a3[1];
    }

    else
    {
      v42 = v20 + a4;
    }

    if (v42 < v20)
    {
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    if (v17 == v42)
    {
      goto LABEL_32;
    }

    v88 = *a3;
    v89 = *(v9 + 72);
    v90 = *a3 + v89 * (v17 - 1);
    v91 = v20;
    v92 = -v89;
    v109 = v6;
    v110 = v91;
    v93 = v91 - v17;
    v122 = v88;
    v114 = v89;
    v5 = v88 + v17 * v89;
    v94 = v126;
    v117 = v42;
LABEL_86:
    v119 = v93;
    v120 = v17;
    v118 = v5;
    v121 = v90;
    v95 = v90;
LABEL_87:
    a4 = v124;
    sub_1D2398BB0(v5, v124, type metadata accessor for IdentifiedEntity);
    v96 = v125;
    sub_1D2398BB0(v95, v125, type metadata accessor for IdentifiedEntity);
    v97 = *(v94 + 24);
    v98 = *(a4 + v97);
    v99 = *(v96 + v97) >> 14;
    sub_1D2398B50(v96, type metadata accessor for IdentifiedEntity);
    sub_1D2398B50(a4, type metadata accessor for IdentifiedEntity);
    if (v99 < v98 >> 14)
    {
      break;
    }

    v94 = v126;
LABEL_85:
    v17 = v120 + 1;
    v90 = v121 + v114;
    v93 = v119 - 1;
    v5 = v118 + v114;
    v43 = v117;
    if (v120 + 1 != v117)
    {
      goto LABEL_86;
    }

    v9 = v108;
    v6 = v109;
    a3 = v113;
    v20 = v110;
    if (v117 < v110)
    {
      goto LABEL_125;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v19 = v116;
    }

    else
    {
      v19 = sub_1D2691650(0, *(v116 + 2) + 1, 1, v116);
    }

    a4 = *(v19 + 2);
    v44 = *(v19 + 3);
    v5 = a4 + 1;
    if (a4 >= v44 >> 1)
    {
      v19 = sub_1D2691650((v44 > 1), a4 + 1, 1, v19);
    }

    *(v19 + 2) = v5;
    v45 = &v19[16 * a4];
    *(v45 + 4) = v20;
    *(v45 + 5) = v43;
    v46 = *v112;
    if (!*v112)
    {
      goto LABEL_135;
    }

    v117 = v43;
    if (a4)
    {
      while (2)
      {
        v47 = v5 - 1;
        if (v5 >= 4)
        {
          v52 = &v19[16 * v5 + 32];
          v53 = *(v52 - 64);
          v54 = *(v52 - 56);
          v58 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          if (v58)
          {
            goto LABEL_112;
          }

          v57 = *(v52 - 48);
          v56 = *(v52 - 40);
          v58 = __OFSUB__(v56, v57);
          v50 = v56 - v57;
          v51 = v58;
          if (v58)
          {
            goto LABEL_113;
          }

          v59 = &v19[16 * v5];
          v61 = *v59;
          v60 = *(v59 + 1);
          v58 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v58)
          {
            goto LABEL_115;
          }

          v58 = __OFADD__(v50, v62);
          v63 = v50 + v62;
          if (v58)
          {
            goto LABEL_118;
          }

          if (v63 >= v55)
          {
            v81 = &v19[16 * v47 + 32];
            v83 = *v81;
            v82 = *(v81 + 1);
            v58 = __OFSUB__(v82, v83);
            v84 = v82 - v83;
            if (v58)
            {
              goto LABEL_122;
            }

            if (v50 < v84)
            {
              v47 = v5 - 2;
            }
          }

          else
          {
LABEL_52:
            if (v51)
            {
              goto LABEL_114;
            }

            v64 = &v19[16 * v5];
            v66 = *v64;
            v65 = *(v64 + 1);
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_117;
            }

            v70 = &v19[16 * v47 + 32];
            v72 = *v70;
            v71 = *(v70 + 1);
            v58 = __OFSUB__(v71, v72);
            v73 = v71 - v72;
            if (v58)
            {
              goto LABEL_120;
            }

            if (__OFADD__(v68, v73))
            {
              goto LABEL_121;
            }

            if (v68 + v73 < v50)
            {
              goto LABEL_66;
            }

            if (v50 < v73)
            {
              v47 = v5 - 2;
            }
          }
        }

        else
        {
          if (v5 == 3)
          {
            v48 = *(v19 + 4);
            v49 = *(v19 + 5);
            v58 = __OFSUB__(v49, v48);
            v50 = v49 - v48;
            v51 = v58;
            goto LABEL_52;
          }

          v74 = &v19[16 * v5];
          v76 = *v74;
          v75 = *(v74 + 1);
          v58 = __OFSUB__(v75, v76);
          v68 = v75 - v76;
          v69 = v58;
LABEL_66:
          if (v69)
          {
            goto LABEL_116;
          }

          v77 = &v19[16 * v47];
          v79 = *(v77 + 4);
          v78 = *(v77 + 5);
          v58 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v58)
          {
            goto LABEL_119;
          }

          if (v80 < v68)
          {
            break;
          }
        }

        a4 = v47 - 1;
        if (v47 - 1 >= v5)
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

        v85 = v19;
        v86 = *&v19[16 * a4 + 32];
        v5 = *&v19[16 * v47 + 40];
        sub_1D239613C(*a3 + *(v9 + 72) * v86, *a3 + *(v9 + 72) * *&v19[16 * v47 + 32], *a3 + *(v9 + 72) * v5, v46);
        if (v6)
        {
          goto LABEL_108;
        }

        if (v5 < v86)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v85 = sub_1D269163C(v85);
        }

        if (a4 >= *(v85 + 2))
        {
          goto LABEL_111;
        }

        v87 = &v85[16 * a4];
        *(v87 + 4) = v86;
        *(v87 + 5) = v5;
        v127 = v85;
        sub_1D26915B0(v47);
        v19 = v127;
        v5 = *(v127 + 2);
        if (v5 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v17 = a3[1];
    v18 = v117;
    a4 = v111;
    if (v117 >= v17)
    {
      goto LABEL_96;
    }
  }

  if (v122)
  {
    v100 = v123;
    sub_1D2398AE8(v5, v123, type metadata accessor for IdentifiedEntity);
    v94 = v126;
    swift_arrayInitWithTakeFrontToBack();
    sub_1D2398AE8(v100, v95, type metadata accessor for IdentifiedEntity);
    v95 += v92;
    v5 += v92;
    if (__CFADD__(v93++, 1))
    {
      goto LABEL_85;
    }

    goto LABEL_87;
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

void sub_1D23956D8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v44 = type metadata accessor for CuratedPrompt(0);
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v36 - v10;
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_58;
  }

  v13 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_59;
  }

  v14 = (a2 - a1) / v12;
  v49 = a1;
  v48 = a4;
  if (v14 >= v13 / v12)
  {
    v16 = v13 / v12 * v12;
    if (a4 < a2 || a2 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v24 = a4 + v16;
    if (v16 >= 1)
    {
      v25 = -v12;
      v26 = v24;
      v40 = a1;
      v41 = a4;
      v39 = -v12;
      do
      {
        v37 = v24;
        v27 = a2 + v25;
        v42 = a2;
        v43 = a2 + v25;
        while (1)
        {
          if (a2 <= a1)
          {
            v49 = a2;
            v47 = v37;
            goto LABEL_56;
          }

          v28 = a3;
          v38 = v24;
          a3 += v25;
          v29 = v26 + v25;
          v30 = v26 + v25;
          v31 = v45;
          v32 = v26;
          sub_1D2398BB0(v30, v45, type metadata accessor for CuratedPrompt);
          v33 = v46;
          sub_1D2398BB0(v27, v46, type metadata accessor for CuratedPrompt);
          v34 = *(*(v31 + 48) + 56);
          v35 = *(*(v33 + 48) + 56);
          sub_1D2398B50(v33, type metadata accessor for CuratedPrompt);
          sub_1D2398B50(v31, type metadata accessor for CuratedPrompt);
          if (v34 < v35)
          {
            break;
          }

          v24 = v29;
          if (v28 < v32 || a3 >= v32)
          {
            swift_arrayInitWithTakeFrontToBack();
            v27 = v43;
            v25 = v39;
            a1 = v40;
          }

          else
          {
            v27 = v43;
            v25 = v39;
            a1 = v40;
            if (v28 != v32)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v26 = v29;
          a2 = v42;
          if (v29 <= v41)
          {
            goto LABEL_54;
          }
        }

        if (v28 < v42 || a3 >= v42)
        {
          a2 = v43;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v39;
          a1 = v40;
          v24 = v38;
        }

        else
        {
          a2 = v43;
          v25 = v39;
          a1 = v40;
          v24 = v38;
          if (v28 != v42)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v26 = v32;
      }

      while (v32 > v41);
    }

LABEL_54:
    v49 = a2;
    v47 = v24;
  }

  else
  {
    v15 = v14 * v12;
    if (a4 < a1 || a1 + v15 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v43 = a4 + v15;
    v47 = a4 + v15;
    if (v15 >= 1 && a2 < a3)
    {
      v42 = a3;
      do
      {
        v18 = v45;
        sub_1D2398BB0(a2, v45, type metadata accessor for CuratedPrompt);
        v19 = a2;
        v20 = v46;
        sub_1D2398BB0(a4, v46, type metadata accessor for CuratedPrompt);
        v21 = *(*(v18 + 48) + 56);
        v22 = *(*(v20 + 48) + 56);
        sub_1D2398B50(v20, type metadata accessor for CuratedPrompt);
        sub_1D2398B50(v18, type metadata accessor for CuratedPrompt);
        if (v21 >= v22)
        {
          if (a1 < a4 || a1 >= a4 + v12)
          {
            swift_arrayInitWithTakeFrontToBack();
            v23 = v42;
            a2 = v19;
          }

          else
          {
            v23 = v42;
            a2 = v19;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v48 = a4 + v12;
          a4 += v12;
        }

        else
        {
          a2 = v19 + v12;
          if (a1 < v19 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            v23 = v42;
          }

          else
          {
            v23 = v42;
            if (a1 != v19)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }
        }

        a1 += v12;
        v49 = a1;
      }

      while (a4 < v43 && a2 < v23);
    }
  }

LABEL_56:
  sub_1D239669C(&v49, &v48, &v47, type metadata accessor for CuratedPrompt);
}

void sub_1D2395BF8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v44 = type metadata accessor for Prompt(0);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v34 - v10;
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_61;
  }

  v13 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_62;
  }

  v14 = (a2 - a1) / v12;
  v47 = a1;
  v46 = a4;
  if (v14 >= v13 / v12)
  {
    v16 = v13 / v12 * v12;
    if (a4 < a2 || a2 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v22 = a4 + v16;
    if (v16 >= 1)
    {
      v23 = -v12;
      v24 = a4 + v16;
      v38 = a1;
      v39 = a4;
      v37 = -v12;
      do
      {
        v35 = v22;
        v25 = a2;
        v26 = a2 + v23;
        v40 = v25;
        v41 = v26;
        while (1)
        {
          if (v25 <= a1)
          {
            v47 = v25;
            v45 = v35;
            goto LABEL_59;
          }

          v36 = v22;
          v28 = a3 + v23;
          v29 = v24 + v23;
          v30 = v42;
          sub_1D2398BB0(v29, v42, type metadata accessor for Prompt);
          v31 = v43;
          sub_1D2398BB0(v26, v43, type metadata accessor for Prompt);
          v32 = sub_1D2871748();
          sub_1D2398B50(v31, type metadata accessor for Prompt);
          sub_1D2398B50(v30, type metadata accessor for Prompt);
          if (v32)
          {
            break;
          }

          v22 = v29;
          if (a3 < v24 || v28 >= v24)
          {
            a3 = v28;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v38;
          }

          else
          {
            v33 = a3 == v24;
            a3 = v28;
            a1 = v38;
            if (!v33)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v24 = v29;
          v25 = v40;
          v27 = v29 > v39;
          v26 = v41;
          v23 = v37;
          if (!v27)
          {
            a2 = v40;
            goto LABEL_58;
          }
        }

        if (a3 < v40 || v28 >= v40)
        {
          a3 = v28;
          a2 = v41;
          swift_arrayInitWithTakeFrontToBack();
          v23 = v37;
          a1 = v38;
          v22 = v36;
        }

        else
        {
          v33 = a3 == v40;
          a3 = v28;
          a2 = v41;
          v23 = v37;
          a1 = v38;
          v22 = v36;
          if (!v33)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v24 > v39);
    }

LABEL_58:
    v47 = a2;
    v45 = v22;
  }

  else
  {
    v15 = v14 * v12;
    if (a4 < a1 || a1 + v15 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41 = a4 + v15;
    v45 = a4 + v15;
    if (v15 >= 1 && a2 < a3)
    {
      do
      {
        v18 = a3;
        v19 = v42;
        sub_1D2398BB0(a2, v42, type metadata accessor for Prompt);
        v20 = v43;
        sub_1D2398BB0(a4, v43, type metadata accessor for Prompt);
        v21 = sub_1D2871748();
        sub_1D2398B50(v20, type metadata accessor for Prompt);
        sub_1D2398B50(v19, type metadata accessor for Prompt);
        if (v21)
        {
          if (a1 < a2 || a1 >= a2 + v12)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v12;
            a3 = v18;
          }

          else
          {
            a3 = v18;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v12;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v12)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v18;
          }

          else
          {
            a3 = v18;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v46 = a4 + v12;
          a4 += v12;
        }

        a1 += v12;
        v47 = a1;
      }

      while (a4 < v41 && a2 < a3);
    }
  }

LABEL_59:
  sub_1D239669C(&v47, &v46, &v45, type metadata accessor for Prompt);
}

void sub_1D239613C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for IdentifiedEntity(0);
  MEMORY[0x1EEE9AC00](v8);
  v50 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v49 = &v40 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_63;
  }

  v15 = (a2 - a1) / v13;
  v53 = a1;
  v52 = a4;
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

    v25 = a4 + v17;
    if (v17 >= 1)
    {
      v26 = -v13;
      v27 = v25;
      v44 = a4;
      v45 = a1;
      v48 = v8;
      v43 = -v13;
      do
      {
        v41 = v25;
        v28 = a2;
        v29 = a2 + v26;
        v46 = a2;
        v47 = a2 + v26;
        while (1)
        {
          if (v28 <= a1)
          {
            v53 = v28;
            v51 = v41;
            goto LABEL_60;
          }

          v31 = a3;
          v42 = v25;
          a3 += v26;
          v32 = v27 + v26;
          v33 = v49;
          sub_1D2398BB0(v27 + v26, v49, type metadata accessor for IdentifiedEntity);
          v34 = v50;
          sub_1D2398BB0(v29, v50, type metadata accessor for IdentifiedEntity);
          v35 = *(v8 + 24);
          v36 = *(v33 + v35);
          v37 = *(v34 + v35) >> 14;
          sub_1D2398B50(v34, type metadata accessor for IdentifiedEntity);
          sub_1D2398B50(v33, type metadata accessor for IdentifiedEntity);
          if (v37 < v36 >> 14)
          {
            break;
          }

          v25 = v32;
          if (v31 < v27 || a3 >= v27)
          {
            v30 = v48;
            swift_arrayInitWithTakeFrontToBack();
            v29 = v47;
            v8 = v30;
            v26 = v43;
          }

          else
          {
            v29 = v47;
            v8 = v48;
            v26 = v43;
            if (v31 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v32;
          a1 = v45;
          v28 = v46;
          if (v32 <= v44)
          {
            a2 = v46;
            goto LABEL_59;
          }
        }

        v38 = v44;
        if (v31 < v46 || a3 >= v46)
        {
          a2 = v47;
          v8 = v48;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v42;
          v26 = v43;
        }

        else
        {
          v39 = v31 == v46;
          a2 = v47;
          v8 = v48;
          v25 = v42;
          v26 = v43;
          if (!v39)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v45;
      }

      while (v27 > v38);
    }

LABEL_59:
    v53 = a2;
    v51 = v25;
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

    v47 = a4 + v16;
    v51 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      v46 = a3;
      v48 = v8;
      do
      {
        v19 = v49;
        sub_1D2398BB0(a2, v49, type metadata accessor for IdentifiedEntity);
        v20 = v50;
        sub_1D2398BB0(a4, v50, type metadata accessor for IdentifiedEntity);
        v21 = *(v8 + 24);
        v22 = *(v19 + v21);
        v23 = *(v20 + v21) >> 14;
        sub_1D2398B50(v20, type metadata accessor for IdentifiedEntity);
        sub_1D2398B50(v19, type metadata accessor for IdentifiedEntity);
        if (v23 >= v22 >> 14)
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            v8 = v48;
            swift_arrayInitWithTakeFrontToBack();
            v24 = v46;
          }

          else
          {
            v24 = v46;
            v8 = v48;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v52 = a4 + v13;
          a4 += v13;
        }

        else if (a1 < a2 || a1 >= a2 + v13)
        {
          v8 = v48;
          swift_arrayInitWithTakeFrontToBack();
          a2 += v13;
          v24 = v46;
        }

        else
        {
          v24 = v46;
          v8 = v48;
          if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v13;
        }

        a1 += v13;
        v53 = a1;
      }

      while (a4 < v47 && a2 < v24);
    }
  }

LABEL_60:
  sub_1D239669C(&v53, &v52, &v51, type metadata accessor for IdentifiedEntity);
}

uint64_t sub_1D239669C(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1D2396784(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    sub_1D2870F68();

    return sub_1D2870F68();
  }

  return result;
}

uint64_t sub_1D2396824(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = 0;
    v6 = a2 & 0xFFFFFFFFFFFFFFLL;
    v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v10 = sub_1D2879158();
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v16[0] = a1;
          v16[1] = v6;
          v9 = v16 + v5;
        }

        else
        {
          v8 = v7;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v8 = sub_1D2879208();
          }

          v9 = (v8 + v5);
        }

        v10 = *v9;
        if ((*v9 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        v14 = (__clz(v10 ^ 0xFF) - 24);
        if (v14 <= 2)
        {
          if (v14 != 1)
          {
            v10 = v9[1] & 0x3F | ((v10 & 0x1F) << 6);
            v11 = 2;
            goto LABEL_15;
          }

LABEL_14:
          v11 = 1;
          goto LABEL_15;
        }

        if (v14 == 3)
        {
          v10 = ((v10 & 0xF) << 12) | ((v9[1] & 0x3F) << 6) | v9[2] & 0x3F;
          v11 = 3;
        }

        else
        {
          v10 = ((v10 & 0xF) << 18) | ((v9[1] & 0x3F) << 12) | ((v9[2] & 0x3F) << 6) | v9[3] & 0x3F;
          v11 = 4;
        }
      }

LABEL_15:
      if ((v10 - 12448) <= 0xFFFFFF9F && v10 != 12540 && v10 != 12316)
      {
        return 0;
      }

      v5 += v11;
      if (v5 >= v2)
      {
        return 1;
      }
    }
  }

  return 1;
}

uint64_t sub_1D23969C0@<X0>(char *a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v229 = a1;
  v213 = a3;
  v5 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v210 = &v204 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = sub_1D28714D8();
  v207 = *(v209 - 8);
  MEMORY[0x1EEE9AC00](v209);
  v208 = &v204 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v211 = &v204 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D28714E8();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v206 = &v204 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D2872008();
  v215 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v219 = &v204 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v243 = &v204 - v15;
  v222 = type metadata accessor for CuratedPrompt(0);
  v225 = *(v222 - 8);
  MEMORY[0x1EEE9AC00](v222);
  v217 = &v204 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v247 = &v204 - v18;
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA5B0, &qword_1D2883928);
  v214 = *(v239 - 8);
  MEMORY[0x1EEE9AC00](v239);
  v224 = (&v204 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA5B8, &qword_1D2883930);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v245 = &v204 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v238 = (&v204 - v23);
  v24 = type metadata accessor for Prompt(0);
  v228 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v212 = &v204 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v221 = (&v204 - v27);
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA5C0, &unk_1D2883938);
  MEMORY[0x1EEE9AC00](v223);
  v220 = &v204 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v226 = &v204 - v30;
  MEMORY[0x1EEE9AC00](v31);
  *&v236 = &v204 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v230 = &v204 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v235 = &v204 - v36;
  v240 = a2;
  v37 = 8236;
  if ((a2 & 1) == 0)
  {
    v37 = 0;
  }

  v231 = v37;
  v38 = 0xE200000000000000;
  if ((a2 & 1) == 0)
  {
    v38 = 0xE000000000000000;
  }

  v233 = v38;
  v263 = 0;
  v264 = 0xE000000000000000;
  v261 = 0;
  v262 = 0xE000000000000000;
  v260 = MEMORY[0x1E69E7CC0];
  v39 = [objc_opt_self() _deviceLanguage];
  if (v39)
  {
    v40 = v39;
    v41 = sub_1D28780A8();
    v43 = v42;

    if (v41 == 24938 && v43 == 0xE200000000000000)
    {

      v232 = 1;
    }

    else
    {
      v232 = sub_1D2879618();
    }
  }

  else
  {
    v232 = 0;
  }

  v258 = 0;
  v259 = 0xE000000000000000;
  v44 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_prompts;
  v45 = v229;
  swift_beginAccess();
  v252 = *&v45[v44];
  swift_bridgeObjectRetain_n();
  sub_1D2392F84(&v252);

  v46 = v252;
  v47 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_removedPrompts;
  swift_beginAccess();
  v252 = *&v45[v47];
  swift_bridgeObjectRetain_n();
  sub_1D2392F84(&v252);
  v234 = 0;
  v48 = v245;

  v216 = v252;
  v49 = *(v46 + 16);
  v244 = v12;
  v241 = v49;
  if (!v49)
  {
LABEL_58:
    v218 = 1;
LABEL_60:
    v102 = v229;

    v51 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activePerson;
    swift_beginAccess();
    v3 = v102;
    sub_1D22BD1D0(v102 + v51, &v252, &qword_1EC6D9A58, &qword_1D287F000);
    v235 = v254;
    sub_1D22BD238(&v252, &qword_1EC6D9A58, &qword_1D287F000);
    if (qword_1ED8A4928 != -1)
    {
      goto LABEL_171;
    }

    goto LABEL_61;
  }

  v50 = 0;
  v242 = v46;
  v51 = v223;
  do
  {
    if (v50 >= *(v46 + 16))
    {
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      __break(1u);
      goto LABEL_170;
    }

    v246 = (v50 + 1);
    v227 = (*(v228 + 80) + 32) & ~*(v228 + 80);
    v237 = *(v228 + 72);
    v52 = *(v51 + 48);
    v53 = v235;
    sub_1D2398BB0(v46 + v227 + v237 * v50, v235 + v52, type metadata accessor for Prompt);
    v54 = *(v51 + 48);
    v55 = v230;
    *v230 = v50;
    sub_1D2398AE8(v53 + v52, v55 + v54, type metadata accessor for Prompt);
    v56 = v236;
    v3 = &unk_1D2883938;
    sub_1D22BD1D0(v55, v236, &qword_1EC6DA5C0, &unk_1D2883938);
    v57 = v56 + *(v51 + 48);
    v58 = *(v57 + 8);
    v59 = *(v57 + 16);
    sub_1D2870F68();
    sub_1D2398B50(v57, type metadata accessor for Prompt);

    v60 = HIBYTE(v59) & 0xF;
    if ((v59 & 0x2000000000000000) == 0)
    {
      v60 = v58 & 0xFFFFFFFFFFFFLL;
    }

    if (!v60)
    {
      sub_1D22BD238(v55, &qword_1EC6DA5C0, &unk_1D2883938);
      goto LABEL_14;
    }

    v61 = v226;
    if ((v232 & 1) == 0 || (sub_1D22BD1D0(v55, v226, &qword_1EC6DA5C0, &unk_1D2883938), v62 = v61 + *(v51 + 48), v63 = *(v62 + 40), sub_1D2870F68(), sub_1D2398B50(v62, type metadata accessor for Prompt), v64 = *(v63 + 16), , v64))
    {
      sub_1D22BD1D0(v55, v61, &qword_1EC6DA5C0, &unk_1D2883938);
      v65 = v61 + *(v51 + 48);
      v66 = *(v65 + 8);
      v67 = *(v65 + 16);
      sub_1D2870F68();
      sub_1D2398B50(v65, type metadata accessor for Prompt);
      v68 = 0;
      v252 = v66;
      v253 = v67;
      v69 = 0xE000000000000000;
      if (v240)
      {
        goto LABEL_23;
      }

LABEL_22:
      v256 = 2454565;
      v257 = 0xE300000000000000;
      MEMORY[0x1D38A0C50](v66, v67);

      v66 = v256;
      v67 = v257;
      v252 = v256;
      v253 = v257;
      goto LABEL_23;
    }

    v76 = v220;
    sub_1D22BD1D0(v55, v220, &qword_1EC6DA5C0, &unk_1D2883938);
    v77 = v76 + *(v51 + 48);
    v66 = *(v77 + 8);
    v67 = *(v77 + 16);
    sub_1D2870F68();
    sub_1D2398B50(v77, type metadata accessor for Prompt);
    v78 = HIBYTE(v67) & 0xF;
    if ((v67 & 0x2000000000000000) == 0)
    {
      v78 = v66 & 0xFFFFFFFFFFFFLL;
    }

    if (v78)
    {
      v79 = v234;
      v80 = sub_1D2396824(v66, v67);
      v234 = v79;
      if (v80)
      {
        type metadata accessor for MecabraHiraganaConverter();
        swift_initStaticObject();
        v81 = sub_1D2778C98(v66, v67);
        v61 = v226;
        if (v82)
        {
          v83 = v81;
          v84 = v82;

          v66 = v83;
          v67 = v84;
        }
      }

      else
      {
        v61 = v226;
      }
    }

    v252 = v66;
    v253 = v67;
    sub_1D22BD1D0(v55, v61, &qword_1EC6DA5C0, &unk_1D2883938);
    v85 = v61 + *(v51 + 48);
    v68 = *(v85 + 8);
    v69 = *(v85 + 16);
    sub_1D2870F68();
    sub_1D2398B50(v85, type metadata accessor for Prompt);
    if ((v240 & 1) == 0)
    {
      goto LABEL_22;
    }

LABEL_23:
    v70 = sub_1D2878248();
    if (v246 >= *(v242 + 16))
    {
      MEMORY[0x1D38A0C50](v66, v67);
      if ((v232 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v256 = v66;
      v257 = v67;
      sub_1D2870F68();
      MEMORY[0x1D38A0C50](v231, v233);
      MEMORY[0x1D38A0C50](v256, v257);

      if ((v232 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    if ((v68 || v69 != 0xE000000000000000) && (sub_1D2879618() & 1) == 0 && (v258 || v259 != 0xE000000000000000) && (sub_1D2879618() & 1) == 0)
    {
      v256 = v231;
      v257 = v233;
      sub_1D2870F68();
      MEMORY[0x1D38A0C50](v68, v69);

      v71 = v256;
      v69 = v257;
      goto LABEL_34;
    }

LABEL_33:
    v71 = v68;
LABEL_34:
    MEMORY[0x1D38A0C50](v71, v69);

    v3 = &qword_1EC6DA5C0;
    sub_1D22BD1D0(v55, v61, &qword_1EC6DA5C0, &unk_1D2883938);
    v51 = v223;
    v72 = v61 + *(v223 + 48);
    v73 = *(v72 + 40);
    sub_1D2870F68();
    sub_1D2398B50(v72, type metadata accessor for Prompt);
    v74 = v234;
    v75 = sub_1D238E0AC(v73, &v252, v70, &v263);
    v234 = v74;

    sub_1D274DDE8(v75);
    sub_1D22BD238(v55, &qword_1EC6DA5C0, &unk_1D2883938);

    v48 = v245;
    v46 = v242;
LABEL_14:
    v50 = v246;
  }

  while (v241 != v246);
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  v86 = sub_1D23CD3FC();
  v51 = v239;
  if ((v86 & 1) == 0)
  {
    v218 = 0;
    goto LABEL_60;
  }

  v87 = 0;
  v246 = *MEMORY[0x1E69779C8];
  v88 = v46 + v227;
  v236 = xmmword_1D287F500;
  while (v87 < *(v46 + 16))
  {
    v3 = v51;
    v89 = v221;
    sub_1D2398BB0(v88, v221, type metadata accessor for Prompt);
    v90 = v89;
    v91 = *(v89 + 8);
    v92 = *(v90 + 16);
    if ((v92 & 0x2000000000000000) != 0)
    {
      v93 = HIBYTE(v92) & 0xF;
    }

    else
    {
      v93 = v91 & 0xFFFFFFFFFFFFLL;
    }

    if (v93)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA5C8, &qword_1D2883948);
      v94 = swift_allocObject();
      *(v94 + 16) = v236;
      v95 = v246;
      *(v94 + 32) = v246;
      v96 = objc_allocWithZone(MEMORY[0x1E6977A80]);
      type metadata accessor for NLTagScheme(0);
      v3 = v95;
      v97 = sub_1D28783C8();

      v98 = [v96 initWithTagSchemes_];

      v99 = sub_1D2878068();
      [v98 setString_];

      LOBYTE(v252) = 0;
      MEMORY[0x1EEE9AC00](v100);
      sub_1D2878D48();

      v51 = v239;
      v48 = v245;
      v101 = v252;
      sub_1D2398B50(v221, type metadata accessor for Prompt);
      if (v101)
      {
        v218 = 0;
        goto LABEL_60;
      }
    }

    else
    {
      sub_1D2398B50(v90, type metadata accessor for Prompt);
      v51 = v3;
    }

    ++v87;
    v88 += v237;
    v46 = v242;
    if (v241 == v87)
    {
      goto LABEL_58;
    }
  }

LABEL_170:
  __break(1u);
LABEL_171:
  swift_once();
LABEL_61:
  v103 = sub_1D23CD504();
  v104 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activeCuratedPrompts;
  v205 = v51;
  if (v103)
  {
    swift_beginAccess();
    v252 = *(v3 + v104);
    swift_bridgeObjectRetain_n();
    v105 = v234;
    sub_1D2392EA0(&v252);
    v234 = v105;
    if (v105)
    {
      goto LABEL_173;
    }

    v106 = v252;
  }

  else
  {
    swift_beginAccess();
    v106 = sub_1D2870F68();
  }

  v227 = v106;
  v107 = *(v106 + 16);
  v108 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_style;
  swift_beginAccess();
  v109 = 0;
  v230 = (v247 + 48);
  v237 = (v214 + 56);
  *&v236 = v214 + 48;
  v110 = (v215 + 16);
  v241 = v108;
  v242 = v215 + 8;
  v51 = v239;
  v220 = v247 + 8;
  v221 = (v215 + 16);
  v223 = v107;
  while (2)
  {
    if (v109 == v107)
    {
      v113 = 1;
      v114 = v107;
    }

    else
    {
      if ((v109 & 0x8000000000000000) != 0)
      {
        goto LABEL_168;
      }

      if (v109 >= *(v227 + 16))
      {
        goto LABEL_169;
      }

      v115 = (v109 + 1);
      v116 = v224;
      v117 = v227 + ((*(v225 + 80) + 32) & ~*(v225 + 80)) + *(v225 + 72) * v109;
      v118 = *(v51 + 48);
      *v224 = v109;
      sub_1D2398BB0(v117, v116 + v118, type metadata accessor for CuratedPrompt);
      sub_1D22EC9BC(v116, v48, &qword_1EC6DA5B0, &qword_1D2883928);
      v113 = 0;
      v114 = v115;
    }

    (*v237)(v48, v113, 1, v51);
    v119 = v238;
    sub_1D22EC9BC(v48, v238, &qword_1EC6DA5B8, &qword_1D2883930);
    if ((*v236)(v119, 1, v51) != 1)
    {
      v246 = v114;
      v120 = *v119;
      sub_1D2398AE8(v119 + *(v51 + 48), v247, type metadata accessor for CuratedPrompt);
      v121 = *v110;
      v112 = v3;
      v122 = v3 + v108;
      v123 = v243;
      v124 = v244;
      (*v110)(v243, v122, v244);
      v125 = sub_1D2871F78();
      v126 = *v242;
      (*v242)(v123, v124);
      if ((v125 & 1) != 0 || !v235 || (*(*v230 + 66) & 1) == 0)
      {
        if (v240)
        {
          v226 = v120;
          v127 = v241;
          v128 = v243;
          v129 = v244;
          v121(v243, v112 + v241, v244);
          v130 = sub_1D2871F78();
          v126(v128, v129);
          if (v130)
          {
            v131 = *(v247 + 32);
            v132 = *(v247 + 40);
            v133 = v263 & 0xFFFFFFFFFFFFLL;
            if ((v264 & 0x2000000000000000) != 0)
            {
              v133 = HIBYTE(v264) & 0xF;
            }

            if (v133)
            {
              v252 = v231;
              v253 = v233;
              sub_1D2870F68();
              sub_1D2870F68();
              MEMORY[0x1D38A0C50](v131, v132);

              v131 = v252;
              v132 = v253;
            }

            else
            {
              sub_1D2870F68();
            }

            v107 = v223;
            v110 = v221;
            goto LABEL_66;
          }

          v135 = (v218 & sub_1D23CD60C()) == 1 && (v235 | v226) == 0;
          v121(v128, v112 + v127, v129);
          v226 = sub_1D284A4B0(v128, v135);
          v136 = v112;
          v132 = v137;
          v126(v128, v129);
          v121(v128, v136 + v127, v129);
          v138 = v219;
          sub_1D2871FC8();
          LOBYTE(v136) = MEMORY[0x1D389AA00](v128, v138);
          v126(v138, v129);
          v126(v128, v129);
          if (v136)
          {
            v139 = v263 & 0xFFFFFFFFFFFFLL;
            if ((v264 & 0x2000000000000000) != 0)
            {
              v139 = HIBYTE(v264) & 0xF;
            }

            v107 = v223;
            if (v139)
            {
              goto LABEL_95;
            }

            v110 = v221;
            v111 = v226;
          }

          else
          {
            v143 = v261 & 0xFFFFFFFFFFFFLL;
            if ((v262 & 0x2000000000000000) != 0)
            {
              v143 = HIBYTE(v262) & 0xF;
            }

            v107 = v223;
            if (v143)
            {
LABEL_95:
              v252 = v231;
              v253 = v233;
              sub_1D2870F68();
              MEMORY[0x1D38A0C50](v226, v132);

              v111 = v252;
              v132 = v253;
              v110 = v221;
            }

            else
            {
              v110 = v221;
              v111 = v226;
            }
          }
        }

        else
        {
          if (v230[*(v222 + 92)] == 255)
          {
            v134 = 101;
          }

          else if (*(v220 + *(v222 + 48)))
          {
            v134 = 109;
          }

          else
          {
            v134 = 103;
          }

          v252 = 37;
          v253 = 0xE100000000000000;
          MEMORY[0x1D38A0C50](v134, 0xE100000000000000);

          MEMORY[0x1D38A0C50](37, 0xE100000000000000);
          v140 = *(v247 + 16);
          v141 = *(v247 + 24);
          sub_1D2870F68();
          MEMORY[0x1D38A0C50](v140, v141);

          v131 = v252;
          v132 = v253;
          v142 = v261 & 0xFFFFFFFFFFFFLL;
          if ((v262 & 0x2000000000000000) != 0)
          {
            v142 = HIBYTE(v262) & 0xF;
          }

          if (v142)
          {
            v252 = v231;
            v253 = v233;
            sub_1D2870F68();
            MEMORY[0x1D38A0C50](v131, v132);

            v131 = v252;
            v132 = v253;
          }

LABEL_66:
          v111 = v131;
        }

        MEMORY[0x1D38A0C50](v111, v132);

        v112 = v229;
      }

      v3 = v112;
      sub_1D2398B50(v247, type metadata accessor for CuratedPrompt);
      v51 = v239;
      v48 = v245;
      v109 = v246;
      v108 = v241;
      continue;
    }

    break;
  }

  if ((v240 & 1) == 0)
  {

    goto LABEL_162;
  }

  v144 = v3;
  v145 = v243;
  v146 = v244;
  (*v110)(v243, v3 + v108, v244);
  v147 = sub_1D2871F78();
  (*v242)(v145, v146);
  if ((v147 & 1) == 0)
  {

    goto LABEL_153;
  }

  v148 = *(v216 + 16);
  if (!v148)
  {

LABEL_145:
    v169 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_removedCuratedPrompts;
    swift_beginAccess();
    v170 = *&v144[v169];
    v171 = *(v170 + 16);
    if (v171)
    {
      v172 = v170 + ((*(v225 + 80) + 32) & ~*(v225 + 80));
      v173 = *(v225 + 72);
      v247 = *&v144[v169];
      sub_1D2870F68();
      do
      {
        v174 = v217;
        sub_1D2398BB0(v172, v217, type metadata accessor for CuratedPrompt);
        v175 = *(v174 + 16);
        v176 = *(v174 + 24);
        v252 = 0x2065766F6D6572;
        v253 = 0xE700000000000000;
        MEMORY[0x1D38A0C50](v175, v176);
        v178 = v252;
        v177 = v253;
        sub_1D2398B50(v174, type metadata accessor for CuratedPrompt);
        v179 = v263 & 0xFFFFFFFFFFFFLL;
        if ((v264 & 0x2000000000000000) != 0)
        {
          v179 = HIBYTE(v264) & 0xF;
        }

        if (v179)
        {
          v252 = v231;
          v253 = v233;
          sub_1D2870F68();
          MEMORY[0x1D38A0C50](v178, v177);

          v178 = v252;
          v177 = v253;
        }

        MEMORY[0x1D38A0C50](v178, v177);

        v172 += v173;
        --v171;
      }

      while (v171);
    }

LABEL_153:

    if (v235)
    {
      sub_1D2877FE8();
      if (qword_1ED89E0F0 != -1)
      {
        swift_once();
      }

      v180 = v209;
      v181 = __swift_project_value_buffer(v209, qword_1ED8B0060);
      (*(v207 + 16))(v208, v181, v180);
      sub_1D28718C8();
      sub_1D2871508();
      v182 = sub_1D28780F8();
      v184 = v183;
      sub_1D22BD1D0(&v144[v205], &v252, &qword_1EC6D9A58, &qword_1D287F000);
      v185 = v254;
      if (v254)
      {
        v186 = v255;
        __swift_project_boxed_opaque_existential_1(&v252, v254);
        v187 = (*(*(v186 + 8) + 24))(v185);
        v189 = v188;
        __swift_destroy_boxed_opaque_existential_0(&v252);
        v190 = HIBYTE(v189) & 0xF;
        if ((v189 & 0x2000000000000000) == 0)
        {
          v190 = v187 & 0xFFFFFFFFFFFFLL;
        }

        if (v190 && !*(v260 + 16))
        {

          v246 = v189;
          v247 = v187;
          goto LABEL_165;
        }
      }

      else
      {
        sub_1D22BD238(&v252, &qword_1EC6D9A58, &qword_1D287F000);
      }

      v246 = v184;
      v247 = v182;
LABEL_165:
      v252 = v263;
      v253 = v264;
      v250 = 12369903;
      v251 = 0xA300000000000000;
      v248 = 0;
      v249 = 0xE000000000000000;
      sub_1D22BD06C();
      v191 = sub_1D2878FA8();
      v193 = v192;
      sub_1D2870F68();

      v252 = v258;
      v253 = v259;
      v250 = 12369903;
      v251 = 0xA300000000000000;
      v248 = 0;
      v249 = 0xE000000000000000;
      v194 = sub_1D2878FA8();
      v196 = v195;

      v198 = v261;
      v199 = v262;
      v200 = v260;
      v201 = v213;
      *v213 = v191;
      v201[1] = v193;
      v201[2] = v198;
      v201[3] = v199;
      v201[4] = v194;
      v201[5] = v196;
      v202 = v227;
      v201[6] = v200;
      v201[7] = v202;
      v203 = v246;
      v201[8] = v247;
      v201[9] = v203;
      return result;
    }

LABEL_162:
    v246 = 0;
    v247 = 0;
    goto LABEL_165;
  }

  v149 = v216 + ((*(v228 + 80) + 32) & ~*(v228 + 80));
  v247 = *(v228 + 72);
  v150 = v212;
  while (2)
  {
    sub_1D2398BB0(v149, v150, type metadata accessor for Prompt);
    v152 = v150[1];
    v151 = v150[2];
    v153 = HIBYTE(v151) & 0xF;
    if ((v151 & 0x2000000000000000) == 0)
    {
      v153 = v152 & 0xFFFFFFFFFFFFLL;
    }

    if (!v153)
    {
      goto LABEL_114;
    }

    if ((v232 & 1) == 0 || *(v150[5] + 16))
    {
      sub_1D2870F68();
      v154 = 0;
      v155 = 0xE000000000000000;
      goto LABEL_121;
    }

    if ((sub_1D2396824(v150[1], v150[2]) & 1) == 0)
    {
      sub_1D2870F68();
      v150 = v212;
      goto LABEL_137;
    }

    type metadata accessor for MecabraHiraganaConverter();
    swift_initStaticObject();
    v162 = sub_1D2396824(v152, v151);
    sub_1D2870F68();
    if ((v162 & 1) == 0)
    {
      sub_1D2870F68();
      v154 = v152;
      v155 = v151;
      v150 = v212;
LABEL_121:
      v252 = 0x2065766F6D6572;
      v253 = 0xE700000000000000;
      MEMORY[0x1D38A0C50](v152, v151);

      v157 = v252;
      v156 = v253;
      v158 = v263 & 0xFFFFFFFFFFFFLL;
      if ((v264 & 0x2000000000000000) != 0)
      {
        v158 = HIBYTE(v264) & 0xF;
      }

      if (v158)
      {
        v252 = v231;
        v253 = v233;
        sub_1D2870F68();
        MEMORY[0x1D38A0C50](v157, v156);

        v157 = v252;
        v156 = v253;
      }

      MEMORY[0x1D38A0C50](v157, v156);

      v252 = 0x2065766F6D6572;
      v253 = 0xE700000000000000;
      MEMORY[0x1D38A0C50](v154, v155);

      v160 = v252;
      v159 = v253;
      v161 = v258 & 0xFFFFFFFFFFFFLL;
      if ((v259 & 0x2000000000000000) != 0)
      {
        v161 = HIBYTE(v259) & 0xF;
      }

      if (v161)
      {
        v252 = v231;
        v253 = v233;
        sub_1D2870F68();
        MEMORY[0x1D38A0C50](v160, v159);

        v160 = v252;
        v159 = v253;
      }

      MEMORY[0x1D38A0C50](v160, v159);

LABEL_114:
      sub_1D2398B50(v150, type metadata accessor for Prompt);
      v149 += v247;
      if (!--v148)
      {

        v144 = v229;
        goto LABEL_145;
      }

      continue;
    }

    break;
  }

  v163 = sub_1D2778EAC();
  v150 = v212;
  if (!v163)
  {
LABEL_137:
    sub_1D2870F68();
    v154 = v152;
    v155 = v151;
    goto LABEL_121;
  }

  v164 = sub_1D2778DF4(v152, v151, 130);
  if (!v164)
  {
LABEL_140:

    goto LABEL_137;
  }

  if (!*(v164 + 16))
  {

    goto LABEL_140;
  }

  Surface = MecabraCandidateGetSurface();
  if (Surface)
  {
    v166 = Surface;
    v167 = sub_1D28780A8();
    v245 = v168;
    v246 = v167;

    v154 = v152;
    v155 = v151;
    v151 = v245;
    v152 = v246;
    v150 = v212;
    goto LABEL_121;
  }

  __break(1u);
LABEL_173:

  __break(1u);
  return result;
}

unint64_t sub_1D2398698()
{
  result = qword_1EC6DA5D8;
  if (!qword_1EC6DA5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DA5D8);
  }

  return result;
}

BOOL sub_1D23986EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E33D0, qword_1D28AB8F0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA4A8, &qword_1D2883670);
  v10 = *(v9 - 1);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  sub_1D22BD1D0(a1, v8, &qword_1EC6E33D0, qword_1D28AB8F0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1D22BD238(v8, &qword_1EC6E33D0, qword_1D28AB8F0);
    goto LABEL_3;
  }

  sub_1D22EC9BC(v8, v12, &qword_1EC6DA4A8, &qword_1D2883670);
  v16 = v9[24];
  v17 = type metadata accessor for ImageGenerationPerson.SkinTone(0);
  if ((*(*(v17 - 8) + 48))(&v12[v16], 1, v17) == 1 || (v18 = sub_1D2871818(), (*(*(v18 - 8) + 48))(v12, 1, v18) != 1) || (v19 = v9[12], v20 = type metadata accessor for PlaygroundImage(0), (*(*(v20 - 8) + 48))(&v12[v19], 1, v20) != 1) || v12[v9[20]] != 4)
  {
    sub_1D22BD238(v12, &qword_1EC6DA4A8, &qword_1D2883670);
    return 1;
  }

  v21 = &v12[v9[28]];
  v22 = *v21;
  v23 = v21[1];
  v24 = v21[2];
  sub_1D2396784(*v21, v23, v24);
  sub_1D22BD238(v12, &qword_1EC6DA4A8, &qword_1D2883670);
  if (v22)
  {
    sub_1D238D058(v22, v23, v24);
    return 1;
  }

LABEL_3:
  v13 = type metadata accessor for PlaygroundImage(0);
  v14 = 1;
  if ((*(*(v13 - 8) + 48))(a2, 1, v13) == 1)
  {
    v15 = *(sub_1D279F58C(a3) + 16);

    return v15 != 0;
  }

  return v14;
}

uint64_t sub_1D2398A30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D2398A78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E33D0, qword_1D28AB8F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2398AE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2398B50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D2398BB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1D2398C34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1D2398C7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D2398CE0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D2398D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = sub_1D2878068();
  v6 = [v4 objectForKey_];

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA498, &unk_1D2883A80);
    sub_1D28783D8();
  }

  return 0;
}

void sub_1D2398E1C(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  v5 = sub_1D2878068();
  v6 = [v4 objectForKey_];

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA468, &qword_1D2883628);
    v7 = sub_1D28783C8();
    v8 = [v6 arrayByAddingObject_];

    if (!v8)
    {
      __break(1u);
      return;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA5D0, &qword_1D2883950);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D287F500;
    *(v9 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA498, &unk_1D2883A80);
    *(v9 + 32) = a1;
    sub_1D2399058();
    sub_1D2870F68();
    v8 = MEMORY[0x1D38A1770](v9);
  }

  v11 = v8;
  v10 = sub_1D2878068();
  [v4 setObject:v11 forKey:v10 cost:{objc_msgSend(v11, sel_count)}];
}

uint64_t ImageGeneration.ImageFromRecipeCache.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1D2399058()
{
  result = qword_1ED89CC98;
  if (!qword_1ED89CC98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED89CC98);
  }

  return result;
}

id sub_1D23990B8()
{
  v0 = objc_allocWithZone(type metadata accessor for OBKFacePickerViewController());
  v1 = sub_1D2870F78();
  v2 = sub_1D24FF308(v1);
  v3 = [objc_allocWithZone(MEMORY[0x1E69B7D40]) initWithRootViewController_];

  return v3;
}

uint64_t sub_1D2399174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D2399264();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1D23991D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D2399264();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1D239923C(uint64_t a1)
{
  sub_1D2399264();
  sub_1D2876218();
  __break(1u);
}

unint64_t sub_1D2399264()
{
  result = qword_1EC6DA610;
  if (!qword_1EC6DA610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DA610);
  }

  return result;
}

uint64_t GeneratedImage.getPlaygroundImage(hasAlpha:)@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v22 = a1;
  v3 = sub_1D2873758();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21[-v8];
  sub_1D2872A38();
  v10 = sub_1D28729F8();
  v11 = type metadata accessor for PlaygroundImage(0);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v12 = (a2 + v11[9]);
  *v12 = 0u;
  v12[1] = 0u;
  v13 = a2 + v11[10];
  *v13 = xmmword_1D28809A0;
  v14 = v11[11];
  v15 = sub_1D2873AA8();
  (*(*(v15 - 8) + 56))(a2 + v14, 1, 1, v15);
  (*(v4 + 16))(v6, v9, v3);
  v16 = (*(v4 + 88))(v6, v3);
  if (v16 == *MEMORY[0x1E69E0110])
  {
    v17 = 0;
  }

  else if (v16 == *MEMORY[0x1E69E0118])
  {
    v17 = 1;
  }

  else
  {
    if (v16 != *MEMORY[0x1E69E0108])
    {

      sub_1D2399614();
      swift_allocError();
      *v19 = 0;
      *(v19 + 8) = 0;
      *(v19 + 16) = 2;
      swift_willThrow();
      v20 = *(v4 + 8);
      v20(v9, v3);
      v20(v6, v3);
      sub_1D22D6D4C(*v13, *(v13 + 8));
      return sub_1D22BD238(a2 + v14, &qword_1EC6DAE70, &qword_1D2881A90);
    }

    v17 = 3;
  }

  (*(v4 + 96))(v6, v3);
  *a2 = *v6;
  *(a2 + 8) = v17;
  *(a2 + 24) = 1;
  *(a2 + 16) = v10;
  *(a2 + v11[12]) = v22 & 1;
  sub_1D2871808();
  return (*(v4 + 8))(v9, v3);
}

unint64_t sub_1D2399614()
{
  result = qword_1EC6D8A30;
  if (!qword_1EC6D8A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D8A30);
  }

  return result;
}

uint64_t GeneratedImage.promptTokenCount.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA618, &qword_1D2883B98);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  sub_1D2872A18();
  v3 = sub_1D2873648();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1D22BD238(v2, &qword_1EC6DA618, &qword_1D2883B98);
    return 0;
  }

  else
  {
    v6 = sub_1D2873638();
    (*(v4 + 8))(v2, v3);
    return v6;
  }
}

uint64_t sub_1D23997DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA618, &qword_1D2883B98);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  sub_1D2872A18();
  v3 = sub_1D2873648();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1D22BD238(v2, &qword_1EC6DA618, &qword_1D2883B98);
    return 0;
  }

  else
  {
    v6 = sub_1D2873638();
    (*(v4 + 8))(v2, v3);
    return v6;
  }
}

uint64_t GenerativePlayground.PreviewRepresentation.getPlaygroundImage(hasAlpha:)@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1D2872A48();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2872E08();
  GeneratedImage.getPlaygroundImage(hasAlpha:)(a1, a2);
  return (*(v5 + 8))(v7, v4);
}

uint64_t GenerativePlayground.PreviewRepresentation.diffusionModelSpecification.getter()
{
  v0 = sub_1D2872A48();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2872E08();
  v4 = sub_1D2872A28();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t GenerativePlayground.PreviewRepresentation.prompt.getter()
{
  v0 = sub_1D2872A48();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2872E08();
  v4 = _s16VisualGeneration14GeneratedImageV0D18PlaygroundInternalE6promptSSSgvg_0();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t GenerativePlayground.PreviewRepresentation.promptTokenCount.getter()
{
  v0 = sub_1D2872A48();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA618, &qword_1D2883B98);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  sub_1D2872E08();
  sub_1D2872A18();
  (*(v1 + 8))(v3, v0);
  v7 = sub_1D2873648();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D22BD238(v6, &qword_1EC6DA618, &qword_1D2883B98);
    return 0;
  }

  else
  {
    v10 = sub_1D2873638();
    (*(v8 + 8))(v6, v7);
    return v10;
  }
}

uint64_t sub_1D2399D88@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D2872A48();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2872E08();
  GeneratedImage.getPlaygroundImage(hasAlpha:)(0, a1);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1D2399E78@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1D2872A48();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2872E08();
  GeneratedImage.getPlaygroundImage(hasAlpha:)(a1, a2);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1D2399F74()
{
  v0 = sub_1D2872A48();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2872E08();
  v4 = sub_1D2872A28();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_1D239A048()
{
  v0 = sub_1D2872A48();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2872E08();
  v4 = _s16VisualGeneration14GeneratedImageV0D18PlaygroundInternalE6promptSSSgvg_0();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_1D239A12C()
{
  v0 = sub_1D2872A48();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA618, &qword_1D2883B98);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  sub_1D2872E08();
  sub_1D2872A18();
  (*(v1 + 8))(v3, v0);
  v7 = sub_1D2873648();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D22BD238(v6, &qword_1EC6DA618, &qword_1D2883B98);
    return 0;
  }

  else
  {
    v10 = sub_1D2873638();
    (*(v8 + 8))(v6, v7);
    return v10;
  }
}

uint64_t sub_1D239A330(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaygroundImage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ArchivedGeneratedImage(uint64_t a1)
{
  result = qword_1EC6DA620;
  if (!qword_1EC6DA620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D239A4DC(uint64_t a1)
{
  type metadata accessor for PlaygroundImage(319);
  if (v1 <= 0x3F)
  {
    sub_1D239A560(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D239A560(uint64_t a1)
{
  if (!qword_1ED89CF80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA630, &qword_1D2886B80);
    v1 = sub_1D2878F18();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED89CF80);
    }
  }
}

uint64_t sub_1D239A5E8()
{
  sub_1D239AFB8(v0 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration18RESTImageGenerator_parameters);

  return swift_deallocClassInstance();
}

uint64_t _s18RESTImageGeneratorCMa(uint64_t a1)
{
  result = qword_1EC6DA638;
  if (!qword_1EC6DA638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D239A6A0(uint64_t a1)
{
  sub_1D239A73C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1D239A73C(uint64_t a1)
{
  if (!qword_1ED8A5E40)
  {
    type metadata accessor for ImageGeneration.GenerationParameters(255);
    v1 = sub_1D2878F18();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED8A5E40);
    }
  }
}

uint64_t sub_1D239A798()
{
  sub_1D2878568();
  *(v0 + 16) = sub_1D2878558();
  v2 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D239B020, v2, v1);
}

uint64_t sub_1D239A82C()
{
  sub_1D2878568();
  *(v0 + 16) = sub_1D2878558();
  v2 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D239A8C0, v2, v1);
}

uint64_t sub_1D239A8C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D239A924(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA490, &qword_1D2883648);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = *v1;
  sub_1D239AEE0(a1, &v10 - v4, type metadata accessor for ImageGeneration.GenerationParameters);
  v7 = type metadata accessor for ImageGeneration.GenerationParameters(0);
  (*(*(v7 - 8) + 56))(v5, 0, 1, v7);
  v8 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration18RESTImageGenerator_parameters;
  swift_beginAccess();
  sub_1D239AF48(v5, v6 + v8);
  return swift_endAccess();
}

uint64_t sub_1D239AA3C()
{
  sub_1D2878568();
  *(v0 + 16) = sub_1D2878558();
  v2 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D239AAD0, v2, v1);
}

uint64_t sub_1D239AAD0()
{

  v1 = *(v0 + 8);
  v2 = MEMORY[0x1E69E7CC0];

  return v1(v2);
}

uint64_t sub_1D239AB3C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_1D2878568();
  v2[4] = sub_1D2878558();
  v4 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D239ABD4, v4, v3);
}

uint64_t sub_1D239ABD4()
{
  v1 = v0[3];

  v2 = *(v1 + *(type metadata accessor for ImageGeneration.PreviewImage(0) + 28));
  if (*(v2 + 16))
  {
    v3 = v0[2];
    v4 = *(type metadata accessor for PlaygroundImage(0) - 8);
    sub_1D239AEE0(v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v3, type metadata accessor for PlaygroundImage);
  }

  else
  {
    sub_1D239AE8C();
    swift_allocError();
    swift_willThrow();
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D239AD04()
{
  sub_1D2878568();
  *(v0 + 16) = sub_1D2878558();
  v2 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D239B024, v2, v1);
}

uint64_t sub_1D239AD98()
{
  sub_1D2878568();
  *(v0 + 16) = sub_1D2878558();
  v2 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D239AE2C, v2, v1);
}

uint64_t sub_1D239AE2C()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1D239AE8C()
{
  result = qword_1EC6DA648;
  if (!qword_1EC6DA648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DA648);
  }

  return result;
}

uint64_t sub_1D239AEE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D239AF48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA490, &qword_1D2883648);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D239AFB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA490, &qword_1D2883648);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1D239B028(uint64_t a1, uint64_t a2)
{
  v15 = *(a2 + 32);
  v12 = *(a2 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA708, &qword_1D2883E40);
  sub_1D2877308();
  sub_1D2874CA8();
  v13 = *(a2 + 112);
  v12 = *(a2 + 96);
  v14 = *(&v13 + 1);
  sub_1D22BD1D0(&v14, &v10, &qword_1EC6DA720, &qword_1D2883E58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA710, &qword_1D2883E48);
  sub_1D2877308();
  if (v11)
  {
    sub_1D2874CB8();
    v4 = floor(v3);
    sub_1D2874CB8();
    *&v10 = v4;
    *(&v10 + 1) = floor(v5);
    LOBYTE(v11) = 0;
    sub_1D2877318();
  }

  sub_1D22BD238(&v12, &qword_1EC6DA710, &qword_1D2883E48);
  v10 = *(a2 + 128);
  v11 = *(a2 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA700, &qword_1D289C960);
  sub_1D2877308();
  sub_1D2877308();
  sub_1D2877308();
  result = sub_1D2877308();
  if (v9)
  {
    __break(1u);
    __break(1u);
  }

  else
  {
    sub_1D2877308();
    sub_1D2877308();
    sub_1D2877308();
    sub_1D2877308();
    v7 = sub_1D239B3F0(0, 1);
    v8 = MEMORY[0x1D38A0390](v7, *(a2 + 176), 0.85, 0.25);
    MEMORY[0x1EEE9AC00](v8);
    sub_1D2874BE8();
  }

  return result;
}

void *sub_1D239B3F0(uint64_t a1, char a2)
{
  if (a2)
  {
    v6 = *v2;
    v7 = *(v2 + 2);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA6B0, &qword_1D2883E10);
    return MEMORY[0x1D389FF60](&v5, v3);
  }

  return result;
}

void *sub_1D239B530(uint64_t a1, __int128 *a2)
{
  v3 = a2[7];
  v15 = a2[6];
  v16 = v3;
  v18 = 0uLL;
  LOBYTE(v19) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA710, &qword_1D2883E48);
  sub_1D2877318();
  v18 = *a2;
  v19 = *(a2 + 2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA6B0, &qword_1D2883E10);
  MEMORY[0x1D389FF60](v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA708, &qword_1D2883E40);
  sub_1D2877318();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA700, &qword_1D289C960);
  sub_1D2877308();
  sub_1D2877318();
  v15 = v18;
  *&v16 = v19;
  result = MEMORY[0x1D389FF60](v17, v4);
  if (v17[0] <= *(a2 + 19))
  {
    v6 = swift_allocObject();
    v7 = a2[9];
    *(v6 + 144) = a2[8];
    *(v6 + 160) = v7;
    *(v6 + 176) = a2[10];
    *(v6 + 192) = *(a2 + 22);
    v8 = a2[5];
    *(v6 + 80) = a2[4];
    *(v6 + 96) = v8;
    v9 = a2[7];
    *(v6 + 112) = a2[6];
    *(v6 + 128) = v9;
    v10 = a2[1];
    *(v6 + 16) = *a2;
    *(v6 + 32) = v10;
    v11 = a2[3];
    *(v6 + 48) = a2[2];
    *(v6 + 64) = v11;
    v12 = *(a2 + 22);
    v13 = sub_1D239D6C0(a2, &v15);
    v14 = MEMORY[0x1D38A0390](v13, v12, 0.85, 0.0);
    MEMORY[0x1EEE9AC00](v14);
    sub_1D2874BE8();
  }

  return result;
}

uint64_t sub_1D239B7B4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA700, &qword_1D289C960);
  sub_1D2877308();
  sub_1D2874468();
  sub_1D2877308();
  sub_1D2874468();
  sub_1D2877308();
  sub_1D239B3F0(0, 1);
  return sub_1D2877318();
}

uint64_t sub_1D239B8C4(uint64_t a1, uint64_t a2)
{
  sub_1D2874478();
  v4 = v3;
  v6 = v5;
  sub_1D2874488();
  v8 = (v4 - v7) * 4.0;
  sub_1D2874488();
  if (hypot(v8, (v6 - v9) * 4.0) <= 170.0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA700, &qword_1D289C960);
    sub_1D2877308();
    return sub_1D2877318();
  }

  else
  {
    v19 = *(a2 + 72);
    v20 = *(a2 + 88);
    v21 = v20;
    v17 = *(a2 + 72);
    v18 = *(a2 + 88);
    sub_1D22BD1D0(&v21, v16, &qword_1EC6DA718, &qword_1D2883E50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA700, &qword_1D289C960);
    sub_1D2877308();
    v17 = v19;
    v18 = v20;
    sub_1D2877308();
    v17 = *(a2 + 128);
    v18 = *(a2 + 144);
    sub_1D2877308();
    sub_1D239B3F0(0, 1);
    v11 = v10;
    v13 = v12;
    v14 = sub_1D2877888();
    MEMORY[0x1EEE9AC00](v14);
    sub_1D2874BE8();

    v17 = v19;
    v18 = v20;
    v16[0] = v11;
    v16[1] = v13;
    sub_1D2877318();
    return sub_1D22BD238(&v19, &qword_1EC6DA700, &qword_1D289C960);
  }
}

void sub_1D239BB54(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v109 = a1;
  v136 = a2;
  v141 = sub_1D2875B48();
  v135 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v140 = &v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D2874498();
  v120 = *(v5 - 8);
  v121 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v118 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA658, &qword_1D289CBA0);
  v130 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v128 = &v105 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA660, &unk_1D2883DC0);
  v133 = *(v8 - 8);
  v134 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v139 = &v105 - v9;
  v110 = sub_1D2874CC8();
  v108 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v107 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA668, &unk_1D288FA50);
  v113 = *(v11 - 8);
  v114 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v112 = &v105 - v12;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA670, &qword_1D2883DD0);
  v116 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v115 = &v105 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA678, &qword_1D2883DD8);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v105 - v16;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA680, &qword_1D2883DE0);
  MEMORY[0x1EEE9AC00](v106);
  v19 = &v105 - v18;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA688, &qword_1D2883DE8);
  MEMORY[0x1EEE9AC00](v142);
  v111 = &v105 - v20;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA690, &qword_1D2883DF0);
  v117 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v137 = &v105 - v21;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA698, &qword_1D2883DF8);
  v123 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v138 = &v105 - v22;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA6A0, &qword_1D2883E00);
  v129 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v127 = &v105 - v23;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA6A8, &qword_1D2883E08);
  MEMORY[0x1EEE9AC00](v124);
  v125 = &v105 - v24;
  v148 = *v2;
  v149 = *(v2 + 16);
  v145 = *v2;
  v146 = *(v2 + 16);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA6B0, &qword_1D2883E10);
  MEMORY[0x1D389FF60](&v143);
  v26 = 1.0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA6B8, &qword_1D2883E18);
  sub_1D22BB9D8(&qword_1EC6DA6C0, &qword_1EC6DA6B8, &qword_1D2883E18, MEMORY[0x1E697FDF8]);
  sub_1D2876D38();
  v27 = swift_allocObject();
  v28 = *(v3 + 144);
  *(v27 + 144) = *(v3 + 128);
  *(v27 + 160) = v28;
  *(v27 + 176) = *(v3 + 160);
  *(v27 + 192) = *(v3 + 176);
  v29 = *(v3 + 80);
  *(v27 + 80) = *(v3 + 64);
  *(v27 + 96) = v29;
  v30 = *(v3 + 112);
  *(v27 + 112) = *(v3 + 96);
  *(v27 + 128) = v30;
  v31 = *(v3 + 16);
  *(v27 + 16) = *v3;
  *(v27 + 32) = v31;
  v32 = *(v3 + 48);
  *(v27 + 48) = *(v3 + 32);
  *(v27 + 64) = v32;
  v33 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA6C8, &unk_1D2883E20) + 36)];
  *v33 = sub_1D22A585C;
  *(v33 + 1) = 0;
  *(v33 + 2) = sub_1D239D6B8;
  *(v33 + 3) = v27;
  v17[*(v15 + 44)] = 0;
  v34 = *(v3 + 24);
  if (v34)
  {
    v143 = v148;
    v144 = v149;
    sub_1D239D6C0(v3, &v145);
    MEMORY[0x1D389FF60](&v145, v25);
    v26 = *&v145;
  }

  else
  {
    sub_1D239D6C0(v3, &v145);
  }

  v105 = v25;
  sub_1D2877AE8();
  v36 = v35;
  v38 = v37;
  sub_1D22EC9BC(v17, v19, &qword_1EC6DA678, &qword_1D2883DD8);
  v39 = &v19[*(v106 + 36)];
  *v39 = v26;
  v39[1] = v26;
  *(v39 + 2) = v36;
  *(v39 + 3) = v38;
  v40 = 0;
  v41 = 0;
  v42 = v115;
  if (v34)
  {
    v145 = *(v3 + 48);
    v146 = *(v3 + 64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA700, &qword_1D289C960);
    sub_1D2877308();
    v41 = *(&v143 + 1);
    v40 = v143;
  }

  v43 = v111;
  sub_1D22EC9BC(v19, v111, &qword_1EC6DA680, &qword_1D2883DE0);
  v44 = (v43 + *(v142 + 36));
  *v44 = v40;
  v44[1] = v41;
  v45 = v107;
  sub_1D2874C98();
  v46 = swift_allocObject();
  v47 = *(v3 + 144);
  *(v46 + 144) = *(v3 + 128);
  *(v46 + 160) = v47;
  *(v46 + 176) = *(v3 + 160);
  *(v46 + 192) = *(v3 + 176);
  v48 = *(v3 + 80);
  *(v46 + 80) = *(v3 + 64);
  *(v46 + 96) = v48;
  v49 = *(v3 + 112);
  *(v46 + 112) = *(v3 + 96);
  *(v46 + 128) = v49;
  v50 = *(v3 + 16);
  *(v46 + 16) = *v3;
  *(v46 + 32) = v50;
  v51 = *(v3 + 48);
  *(v46 + 48) = *(v3 + 32);
  *(v46 + 64) = v51;
  sub_1D239D6C0(v3, &v145);
  sub_1D239DA08(&qword_1ED89DE90, MEMORY[0x1E697C080], MEMORY[0x1E697C078]);
  sub_1D239DA08(&qword_1ED89DE98, MEMORY[0x1E697C068], MEMORY[0x1E697C070]);
  v52 = v112;
  v53 = v110;
  sub_1D28775B8();

  (*(v108 + 8))(v45, v53);
  v54 = swift_allocObject();
  v55 = *(v3 + 144);
  *(v54 + 144) = *(v3 + 128);
  *(v54 + 160) = v55;
  *(v54 + 176) = *(v3 + 160);
  *(v54 + 192) = *(v3 + 176);
  v56 = *(v3 + 80);
  *(v54 + 80) = *(v3 + 64);
  *(v54 + 96) = v56;
  v57 = *(v3 + 112);
  *(v54 + 112) = *(v3 + 96);
  *(v54 + 128) = v57;
  v58 = *(v3 + 16);
  *(v54 + 16) = *v3;
  *(v54 + 32) = v58;
  v59 = *(v3 + 48);
  *(v54 + 48) = *(v3 + 32);
  *(v54 + 64) = v59;
  sub_1D239D6C0(v3, &v145);
  sub_1D22BB9D8(&qword_1ED89D758, &qword_1EC6DA668, &unk_1D288FA50, MEMORY[0x1E697E8D0]);
  v60 = v114;
  sub_1D28775A8();

  (*(v113 + 8))(v52, v60);
  v61 = v119;
  LODWORD(v109) = v34;
  if (v34)
  {
    sub_1D28744D8();
  }

  else
  {
    sub_1D28744E8();
  }

  v62 = sub_1D239D708();
  v63 = sub_1D22BB9D8(&qword_1ED89DED8, &qword_1EC6DA670, &qword_1D2883DD0, MEMORY[0x1E697E238]);
  sub_1D2876B88();
  (*(v116 + 8))(v42, v61);
  sub_1D227A690(v43);
  sub_1D2875E68();
  v64 = v118;
  sub_1D2874458();
  v65 = swift_allocObject();
  v66 = *(v3 + 144);
  *(v65 + 144) = *(v3 + 128);
  *(v65 + 160) = v66;
  *(v65 + 176) = *(v3 + 160);
  *(v65 + 192) = *(v3 + 176);
  v67 = *(v3 + 80);
  *(v65 + 80) = *(v3 + 64);
  *(v65 + 96) = v67;
  v68 = *(v3 + 112);
  *(v65 + 112) = *(v3 + 96);
  *(v65 + 128) = v68;
  v69 = *(v3 + 16);
  *(v65 + 16) = *v3;
  *(v65 + 32) = v69;
  v70 = *(v3 + 48);
  *(v65 + 48) = *(v3 + 32);
  *(v65 + 64) = v70;
  sub_1D239D6C0(v3, &v145);
  sub_1D239DA08(&qword_1ED89E068, MEMORY[0x1E697BEA8], MEMORY[0x1E697BEA0]);
  sub_1D239DA08(&qword_1ED89E070, MEMORY[0x1E697BE90], MEMORY[0x1E697BE98]);
  v71 = v128;
  v72 = v121;
  sub_1D28775B8();

  (*(v120 + 8))(v64, v72);
  v73 = swift_allocObject();
  v74 = *(v3 + 144);
  *(v73 + 144) = *(v3 + 128);
  *(v73 + 160) = v74;
  *(v73 + 176) = *(v3 + 160);
  *(v73 + 192) = *(v3 + 176);
  v75 = *(v3 + 80);
  *(v73 + 80) = *(v3 + 64);
  *(v73 + 96) = v75;
  v76 = *(v3 + 112);
  *(v73 + 112) = *(v3 + 96);
  *(v73 + 128) = v76;
  v77 = *(v3 + 16);
  *(v73 + 16) = *v3;
  *(v73 + 32) = v77;
  v78 = *(v3 + 48);
  *(v73 + 48) = *(v3 + 32);
  *(v73 + 64) = v78;
  sub_1D239D6C0(v3, &v145);
  sub_1D22BB9D8(&qword_1ED89D760, &qword_1EC6DA658, &qword_1D289CBA0, MEMORY[0x1E697E8D0]);
  v79 = v132;
  sub_1D28775A8();

  (*(v130 + 8))(v71, v79);
  if ((v109 & 1) != 0 && (v145 = v148, v146 = v149, MEMORY[0x1D389FF60](&v143, v105), *&v143 > 1.0))
  {
    sub_1D28744D8();
  }

  else
  {
    sub_1D28744E8();
  }

  *&v145 = v142;
  *(&v145 + 1) = v61;
  v146 = v62;
  v147 = v63;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v81 = sub_1D22BB9D8(&qword_1ED89DEE0, &qword_1EC6DA660, &unk_1D2883DC0, MEMORY[0x1E697E238]);
  v82 = v139;
  v83 = v122;
  v84 = v134;
  v85 = v137;
  sub_1D2876B88();
  (*(v133 + 8))(v82, v84);
  (*(v117 + 8))(v85, v83);
  v86 = swift_allocObject();
  v87 = *(v3 + 144);
  *(v86 + 144) = *(v3 + 128);
  *(v86 + 160) = v87;
  *(v86 + 176) = *(v3 + 160);
  *(v86 + 192) = *(v3 + 176);
  v88 = *(v3 + 80);
  *(v86 + 80) = *(v3 + 64);
  *(v86 + 96) = v88;
  v89 = *(v3 + 112);
  *(v86 + 112) = *(v3 + 96);
  *(v86 + 128) = v89;
  v90 = *(v3 + 16);
  *(v86 + 16) = *v3;
  *(v86 + 32) = v90;
  v91 = *(v3 + 48);
  *(v86 + 48) = *(v3 + 32);
  *(v86 + 64) = v91;
  sub_1D239D6C0(v3, &v145);
  v92 = v140;
  sub_1D2875E68();
  *&v145 = v83;
  *(&v145 + 1) = v84;
  v146 = OpaqueTypeConformance2;
  v147 = v81;
  swift_getOpaqueTypeConformance2();
  v94 = v126;
  v93 = v127;
  v95 = v141;
  v96 = v138;
  sub_1D28768F8();

  (*(v135 + 8))(v92, v95);
  (*(v123 + 8))(v96, v94);
  v97 = swift_allocObject();
  v98 = *(v3 + 144);
  *(v97 + 144) = *(v3 + 128);
  *(v97 + 160) = v98;
  *(v97 + 176) = *(v3 + 160);
  *(v97 + 192) = *(v3 + 176);
  v99 = *(v3 + 80);
  *(v97 + 80) = *(v3 + 64);
  *(v97 + 96) = v99;
  v100 = *(v3 + 112);
  *(v97 + 112) = *(v3 + 96);
  *(v97 + 128) = v100;
  v101 = *(v3 + 16);
  *(v97 + 16) = *v3;
  *(v97 + 32) = v101;
  v102 = *(v3 + 48);
  *(v97 + 48) = *(v3 + 32);
  *(v97 + 64) = v102;
  v103 = v125;
  (*(v129 + 32))(v125, v93, v131);
  v104 = (v103 + *(v124 + 36));
  *v104 = 0;
  v104[1] = 0;
  v104[2] = sub_1D239DA60;
  v104[3] = v97;
  sub_1D22EC9BC(v103, v136, &qword_1EC6DA6A8, &qword_1D2883E08);
  sub_1D239D6C0(v3, &v145);
}

uint64_t sub_1D239CC80(uint64_t result, double a2, double a3)
{
  if (*(result + 24))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA700, &qword_1D289C960);
    sub_1D2877308();
    return sub_1D239CD0C(a2, a3, v5, v6);
  }

  return result;
}

uint64_t sub_1D239CD0C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v28 = *v4;
  v29 = *(v4 + 16);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA6B0, &qword_1D2883E10);
  MEMORY[0x1D389FF60](v27, v10);
  if (v27[0] == *(v4 + 152))
  {
    v11 = *(v4 + 168);
    sub_1D239D1F8(a1, a2, a3, a4, v11);
    v13 = v12;
    v15 = v14;
    v16 = sub_1D2877968();
    MEMORY[0x1EEE9AC00](v16);
    sub_1D2874BE8();

    v28 = *(v4 + 32);
    v27[0] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA708, &qword_1D2883E40);
    sub_1D2877318();
    v28 = *(v4 + 72);
    v29 = *(v4 + 88);
    v27[0] = v13;
    v27[1] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA700, &qword_1D289C960);
    return sub_1D2877318();
  }

  else
  {
    v18 = swift_allocObject();
    v19 = *(v5 + 144);
    *(v18 + 144) = *(v5 + 128);
    *(v18 + 160) = v19;
    *(v18 + 176) = *(v5 + 160);
    *(v18 + 192) = *(v5 + 176);
    v20 = *(v5 + 80);
    *(v18 + 80) = *(v5 + 64);
    *(v18 + 96) = v20;
    v21 = *(v5 + 112);
    *(v18 + 112) = *(v5 + 96);
    *(v18 + 128) = v21;
    v22 = *(v5 + 16);
    *(v18 + 16) = *v5;
    *(v18 + 32) = v22;
    v23 = *(v5 + 48);
    *(v18 + 48) = *(v5 + 32);
    *(v18 + 64) = v23;
    v24 = *(v5 + 176);
    v25 = sub_1D239D6C0(v5, &v28);
    v26 = MEMORY[0x1D38A0390](v25, v24, 0.85, 0.0);
    MEMORY[0x1EEE9AC00](v26);
    sub_1D2874BE8();
  }
}

uint64_t sub_1D239CFC4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA6B0, &qword_1D2883E10);
  sub_1D28774F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA708, &qword_1D2883E40);
  sub_1D2877318();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA700, &qword_1D289C960);
  sub_1D2877318();
  sub_1D2877318();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA710, &qword_1D2883E48);
  sub_1D2877318();
  return sub_1D2877318();
}

uint64_t sub_1D239D124(__int128 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA708, &qword_1D2883E40);
  sub_1D2877318();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA6B0, &qword_1D2883E10);
  sub_1D28774F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA700, &qword_1D289C960);
  return sub_1D2877318();
}

void *sub_1D239D1F8(double a1, double a2, double a3, double a4, double a5)
{
  v10 = *v5;
  v11 = *(v5 + 2);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA6B0, &qword_1D2883E10);
  MEMORY[0x1D389FF60](&v9);
  v10 = *v5;
  v11 = *(v5 + 2);
  MEMORY[0x1D389FF60](&v9, v7);
  return sub_1D239B3F0(*&a5, 0);
}

uint64_t sub_1D239D2EC(__int128 *a1, double a2, double a3, double a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA6B0, &qword_1D2883E10);
  sub_1D28774F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA700, &qword_1D289C960);
  return sub_1D2877318();
}

double sub_1D239D408@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  sub_1D28772F8();
  type metadata accessor for CGSize(0);
  sub_1D28772F8();
  sub_1D28772F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA650, &qword_1D2883CF0);
  sub_1D28772F8();
  sub_1D28772F8();
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a5;
  *(a4 + 24) = a3;
  *(a4 + 32) = v13;
  *(a4 + 48) = v13;
  *(a4 + 64) = v14;
  *(a4 + 72) = v13;
  *(a4 + 88) = v14;
  *(a4 + 96) = v13;
  *(a4 + 112) = v14;
  *(a4 + 120) = v15;
  *(a4 + 128) = v13;
  *(a4 + 144) = v14;
  *(a4 + 152) = 0x3FF0000000000000;
  *(a4 + 160) = a6;
  result = 2.0;
  *(a4 + 168) = xmmword_1D2883CE0;
  return result;
}

__n128 __swift_memcpy184_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_1D239D5D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
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

uint64_t sub_1D239D620(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 184) = 1;
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

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D239D708()
{
  result = qword_1EC6DA6D0;
  if (!qword_1EC6DA6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA688, &qword_1D2883DE8);
    sub_1D239D794();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DA6D0);
  }

  return result;
}

unint64_t sub_1D239D794()
{
  result = qword_1EC6DA6D8;
  if (!qword_1EC6DA6D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA680, &qword_1D2883DE0);
    sub_1D239D820();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DA6D8);
  }

  return result;
}

unint64_t sub_1D239D820()
{
  result = qword_1EC6DA6E0;
  if (!qword_1EC6DA6E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA678, &qword_1D2883DD8);
    sub_1D239D8D8();
    sub_1D22BB9D8(&qword_1ED89D4A8, &qword_1EC6DA6F8, &unk_1D2883E30, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DA6E0);
  }

  return result;
}

unint64_t sub_1D239D8D8()
{
  result = qword_1EC6DA6E8;
  if (!qword_1EC6DA6E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA6C8, &unk_1D2883E20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA6B8, &qword_1D2883E18);
    sub_1D22BB9D8(&qword_1EC6DA6C0, &qword_1EC6DA6B8, &qword_1D2883E18, MEMORY[0x1E697FDF8]);
    swift_getOpaqueTypeConformance2();
    sub_1D22BB9D8(&qword_1ED89D3A0, &qword_1EC6DA6F0, &qword_1D288A8E0, MEMORY[0x1E69802E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DA6E8);
  }

  return result;
}

uint64_t sub_1D239DA08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm_0()
{

  return swift_deallocObject();
}

unint64_t sub_1D239DBB0()
{
  result = qword_1EC6DA728;
  if (!qword_1EC6DA728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA6A8, &qword_1D2883E08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA698, &qword_1D2883DF8);
    sub_1D2875B48();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA690, &qword_1D2883DF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA660, &unk_1D2883DC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA688, &qword_1D2883DE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA670, &qword_1D2883DD0);
    sub_1D239D708();
    v1 = MEMORY[0x1E697E238];
    sub_1D22BB9D8(&qword_1ED89DED8, &qword_1EC6DA670, &qword_1D2883DD0, MEMORY[0x1E697E238]);
    swift_getOpaqueTypeConformance2();
    sub_1D22BB9D8(&qword_1ED89DEE0, &qword_1EC6DA660, &unk_1D2883DC0, v1);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DA728);
  }

  return result;
}

uint64_t sub_1D239DDE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  sub_1D2878558();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1D23B7898();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_1D2879168();
    MEMORY[0x1D38A0C50](0xD00000000000003FLL, 0x80000001D28B2AB0);
    v12 = sub_1D2879978();
    MEMORY[0x1D38A0C50](v12);

    MEMORY[0x1D38A0C50](46, 0xE100000000000000);
    result = sub_1D2879398();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D239DF70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  sub_1D2878558();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1D23B7898();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_1D2879168();
    MEMORY[0x1D38A0C50](0xD00000000000003FLL, 0x80000001D28B2AB0);
    v12 = sub_1D2879978();
    MEMORY[0x1D38A0C50](v12);

    MEMORY[0x1D38A0C50](46, 0xE100000000000000);
    result = sub_1D2879398();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D239E0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1D2878558();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    *(v10 + 24) = a2;
    sub_1D23B8230(v15);
    if (v6)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return a4;
      }

      __break(1u);
    }

    a4 = v15[0];
    v12 = swift_isEscapingClosureAtFileLocation();

    if ((v12 & 1) == 0)
    {
      return a4;
    }

    __break(1u);
  }

  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  sub_1D2879168();
  MEMORY[0x1D38A0C50](0xD00000000000003FLL, 0x80000001D28B2AB0);
  v14 = sub_1D2879978();
  MEMORY[0x1D38A0C50](v14);

  MEMORY[0x1D38A0C50](46, 0xE100000000000000);
  result = sub_1D2879398();
  __break(1u);
  return result;
}

uint64_t sub_1D239E2B0(uint64_t a1, char a2)
{
  type metadata accessor for ImageGeneration.ImageFromRecipeCache();
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  v5 = swift_allocObject();
  v6 = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  *(v5 + 16) = v6;
  v7 = v6;
  [v7 setTotalCostLimit_];
  [v7 setEvictsObjectsWhenApplicationEntersBackground_];

  *(v2 + 48) = v5;
  *(v2 + 64) = MEMORY[0x1E69E7CD0];
  sub_1D2871808();
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  v8 = sub_1D23CCC6C();
  v10 = sub_1D23B9618(v8, v9);
  if (v10 == 6)
  {
    if (sub_1D27D8C8C())
    {
      v11 = &unk_1F4DBCC10;
    }

    else
    {
      v11 = &unk_1F4DBCBE8;
    }
  }

  else
  {
    v12 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA798, &qword_1D2883FB8);
    v11 = swift_allocObject();
    v11[1] = xmmword_1D287F500;
    *(v11 + 32) = v12;
  }

  *(v2 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager_generatorSources) = v11;
  v13 = MEMORY[0x1E69E7CC0];
  *(v2 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__testGenerators) = MEMORY[0x1E69E7CC0];
  *(v2 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__generators) = v13;
  v14 = v2 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__selectedGenerator;
  *v14 = 0u;
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0;
  v15 = (v2 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__staleParameterContextIdForConfiguration);
  *v15 = 0;
  v15[1] = 0;
  *(v2 + 16) = a1;
  *(v2 + 24) = 0;
  v16 = *(v2 + 32);
  v17 = *(v2 + 40);
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  sub_1D22A576C(v16, v17);
  *(v2 + 56) = a2;
  return v2;
}

uint64_t sub_1D239E478()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA758, &qword_1D2883F60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D28838F0;
  *(inited + 32) = sub_1D28780A8();
  *(inited + 72) = MEMORY[0x1E69E6530];
  *(inited + 40) = v1;
  *(inited + 48) = 801;
  *(inited + 80) = sub_1D28780A8();
  *(inited + 88) = v2;
  sub_1D2879168();

  v3 = objc_opt_self();
  v4 = [v3 processInfo];
  v5 = [v4 processName];

  v6 = sub_1D28780A8();
  v8 = v7;

  MEMORY[0x1D38A0C50](v6, v8);

  *(inited + 120) = MEMORY[0x1E69E6158];
  *(inited + 96) = 0xD00000000000002ALL;
  *(inited + 104) = 0x80000001D28B2A20;
  *(inited + 128) = sub_1D28780A8();
  *(inited + 136) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE60, &unk_1D28897D0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D28838F0;
  strcpy((v10 + 32), "modelmanagerd");
  *(v10 + 46) = -4864;
  *(v10 + 48) = 0xD000000000000018;
  *(v10 + 56) = 0x80000001D28B2A50;
  v11 = [v3 processInfo];
  v12 = [v11 processName];

  v13 = sub_1D28780A8();
  v15 = v14;

  *(v10 + 64) = v13;
  *(v10 + 72) = v15;
  *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA358, &qword_1D2883920);
  *(inited + 144) = v10;
  v16 = sub_1D25D7270(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA760, &qword_1D28883F0);
  result = swift_arrayDestroy();
  qword_1ED8B0288 = v16;
  return result;
}

uint64_t sub_1D239E708(uint64_t a1)
{
  v2 = v1;
  v70[3] = *MEMORY[0x1E69E9840];
  v4 = sub_1D2873CB8();
  v67 = *(v4 - 8);
  v68 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v66 = (&v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v61 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v61 - v10;
  v12 = sub_1D2871818();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v61 - v18;
  v20 = *(v13 + 16);
  v20(v15, a1, v12, v17);
  swift_beginAccess();
  sub_1D25B59C8(v19, v15);
  swift_endAccess();
  v21 = *(v13 + 8);
  v21(v19, v12);
  if (*(*(v2 + 64) + 16) == 1)
  {
    v65 = v21;
    v22 = [objc_opt_self() sharedScheduler];
    if (qword_1ED8A5CF8 != -1)
    {
      swift_once();
    }

    v23 = sub_1D2877E78();
    v70[0] = 0;
    v24 = [v22 taskStartedWithParameters:v23 error:v70];

    if (v24)
    {
      v25 = v70[0];
      sub_1D2872688();
      sub_1D2870F78();
      v26 = sub_1D2873CA8();
      v27 = sub_1D2878A38();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v69 = v66;
        *v28 = 136315138;
        LODWORD(v64) = v27;
        v29 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager_generationBatchIdentifier;
        swift_beginAccess();
        (v20)(v19, v2 + v29, v12);
        sub_1D23B75AC(&qword_1ED8A6C90, MEMORY[0x1E69695E0]);
        v30 = sub_1D28795C8();
        v32 = v31;
        v65(v19, v12);
        v33 = sub_1D23D7C84(v30, v32, &v69);

        *(v28 + 4) = v33;
        _os_log_impl(&dword_1D226E000, v26, v64, "Signalled generation %s started to BGSystemTaskScheduler", v28, 0xCu);
        v34 = v66;
        __swift_destroy_boxed_opaque_existential_0(v66);
        MEMORY[0x1D38A3520](v34, -1, -1);
        MEMORY[0x1D38A3520](v28, -1, -1);
      }

      return (*(v67 + 8))(v11, v68);
    }

    else
    {
      v44 = v70[0];
      v45 = sub_1D28714B8();

      swift_willThrow();
      v46 = v66;
      sub_1D2872688();
      sub_1D2870F78();
      v47 = v45;
      v48 = sub_1D2873CA8();
      v49 = sub_1D2878A18();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v63 = v49;
        v51 = v50;
        v62 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v69 = v64;
        *v51 = 136315394;
        v52 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager_generationBatchIdentifier;
        swift_beginAccess();
        (v20)(v19, v2 + v52, v12);
        sub_1D23B75AC(&qword_1ED8A6C90, MEMORY[0x1E69695E0]);
        v53 = sub_1D28795C8();
        v55 = v54;
        v65(v19, v12);
        v56 = sub_1D23D7C84(v53, v55, &v69);

        *(v51 + 4) = v56;
        *(v51 + 12) = 2112;
        v57 = v45;
        v58 = _swift_stdlib_bridgeErrorToNSError();
        *(v51 + 14) = v58;
        v59 = v62;
        *v62 = v58;
        _os_log_impl(&dword_1D226E000, v48, v63, "Failed to signal generation %s started to BGSystemTaskScheduler: %@", v51, 0x16u);
        sub_1D22BD238(v59, qword_1EC6DA930, &qword_1D287E870);
        MEMORY[0x1D38A3520](v59, -1, -1);
        v60 = v64;
        __swift_destroy_boxed_opaque_existential_0(v64);
        MEMORY[0x1D38A3520](v60, -1, -1);
        MEMORY[0x1D38A3520](v51, -1, -1);

        return (*(v67 + 8))(v66, v68);
      }

      else
      {

        return (*(v67 + 8))(v46, v68);
      }
    }
  }

  else
  {
    sub_1D2872688();
    sub_1D2870F78();
    v36 = sub_1D2873CA8();
    v37 = sub_1D2878A38();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v70[0] = v39;
      *v38 = 136315138;
      sub_1D23B75AC(&qword_1ED8A6CB0, MEMORY[0x1E69695B8]);
      sub_1D2870F68();
      v40 = sub_1D28787D8();
      v42 = v41;

      v43 = sub_1D23D7C84(v40, v42, v70);

      *(v38 + 4) = v43;
      _os_log_impl(&dword_1D226E000, v36, v37, "Not signalling new task to BGSystemTaskScheduler because batches %s are still in progress", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x1D38A3520](v39, -1, -1);
      MEMORY[0x1D38A3520](v38, -1, -1);
    }

    return (*(v67 + 8))(v8, v68);
  }
}

uint64_t sub_1D239EEE4(uint64_t a1)
{
  v2 = v1;
  v71[3] = *MEMORY[0x1E69E9840];
  v4 = sub_1D2871818();
  v66 = *(v4 - 8);
  v67 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v62[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1D2873CB8();
  v68 = *(v7 - 8);
  v69 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v62[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v62[-v11];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v62[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70, &qword_1D2881410);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v62[-v17];
  swift_beginAccess();
  sub_1D23B6D88(a1, v18);
  swift_endAccess();
  sub_1D22BD238(v18, &qword_1EC6D8F70, &qword_1D2881410);
  if (*(*(v1 + 64) + 16))
  {
    sub_1D2872688();
    sub_1D2870F78();
    v19 = sub_1D2873CA8();
    v20 = sub_1D2878A38();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v71[0] = v22;
      *v21 = 136315138;
      sub_1D23B75AC(&qword_1ED8A6CB0, MEMORY[0x1E69695B8]);
      sub_1D2870F68();
      v23 = sub_1D28787D8();
      v25 = v24;

      v26 = sub_1D23D7C84(v23, v25, v71);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_1D226E000, v19, v20, "Not signalling task end to BGSystemTaskScheduler because batches %s are still in progress", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x1D38A3520](v22, -1, -1);
      MEMORY[0x1D38A3520](v21, -1, -1);
    }

    return (*(v68 + 8))(v12, v69);
  }

  else
  {
    v28 = v66;
    v29 = [objc_opt_self() sharedScheduler];
    if (qword_1ED8A5CF8 != -1)
    {
      swift_once();
    }

    v30 = sub_1D2877E78();
    v71[0] = 0;
    v31 = [v29 taskStoppedWithParameters:v30 error:v71];

    v32 = v6;
    if (v31)
    {
      v33 = v71[0];
      v34 = v15;
      sub_1D2872688();
      sub_1D2870F78();
      v35 = sub_1D2873CA8();
      v36 = sub_1D2878A38();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v70 = v38;
        *v37 = 136315138;
        v65 = v34;
        v39 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager_generationBatchIdentifier;
        swift_beginAccess();
        v40 = v67;
        (*(v28 + 16))(v32, v2 + v39, v67);
        sub_1D23B75AC(&qword_1ED8A6C90, MEMORY[0x1E69695E0]);
        v41 = sub_1D28795C8();
        v43 = v42;
        (*(v28 + 8))(v32, v40);
        v44 = sub_1D23D7C84(v41, v43, &v70);

        *(v37 + 4) = v44;
        _os_log_impl(&dword_1D226E000, v35, v36, "Signalled generation %s stopped to BGSystemTaskScheduler", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v38);
        MEMORY[0x1D38A3520](v38, -1, -1);
        MEMORY[0x1D38A3520](v37, -1, -1);

        return (*(v68 + 8))(v65, v69);
      }

      else
      {

        return (*(v68 + 8))(v15, v69);
      }
    }

    else
    {
      v45 = v71[0];
      v46 = sub_1D28714B8();

      swift_willThrow();
      v47 = v9;
      sub_1D2872688();
      sub_1D2870F78();
      v48 = v46;
      v49 = sub_1D2873CA8();
      v50 = sub_1D2878A18();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v70 = v65;
        *v51 = 136315394;
        v63 = v50;
        v52 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager_generationBatchIdentifier;
        swift_beginAccess();
        v53 = v67;
        (*(v28 + 16))(v32, v2 + v52, v67);
        sub_1D23B75AC(&qword_1ED8A6C90, MEMORY[0x1E69695E0]);
        v54 = sub_1D28795C8();
        v56 = v55;
        (*(v28 + 8))(v32, v53);
        v57 = sub_1D23D7C84(v54, v56, &v70);

        *(v51 + 4) = v57;
        *(v51 + 12) = 2112;
        v58 = v46;
        v59 = _swift_stdlib_bridgeErrorToNSError();
        *(v51 + 14) = v59;
        v60 = v64;
        *v64 = v59;
        _os_log_impl(&dword_1D226E000, v49, v63, "Failed to signal generation %s stopped to BGSystemTaskScheduler: %@", v51, 0x16u);
        sub_1D22BD238(v60, qword_1EC6DA930, &qword_1D287E870);
        MEMORY[0x1D38A3520](v60, -1, -1);
        v61 = v65;
        __swift_destroy_boxed_opaque_existential_0(v65);
        MEMORY[0x1D38A3520](v61, -1, -1);
        MEMORY[0x1D38A3520](v51, -1, -1);
      }

      else
      {
      }

      return (*(v68 + 8))(v47, v69);
    }
  }
}

uint64_t sub_1D239F6E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = a6;
  v40 = a4;
  v41 = a5;
  v37 = a1;
  v38 = a3;
  v36 = a2;
  v7 = sub_1D2871818();
  v34 = v7;
  v8 = *(v7 - 8);
  v39 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA738, &qword_1D2883F30);
  v33 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v32 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v32 - v17;
  v19 = sub_1D28785F8();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v12 + 16))(v15, a1, v11);
  (*(v8 + 16))(v10, v36, v7);
  sub_1D2878568();
  v20 = v38;
  sub_1D2870F78();
  sub_1D2870F68();
  v21 = sub_1D2878558();
  v22 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v23 = (v13 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (*(v8 + 80) + v23 + 24) & ~*(v8 + 80);
  v25 = swift_allocObject();
  v26 = MEMORY[0x1E69E85E0];
  *(v25 + 2) = v21;
  *(v25 + 3) = v26;
  *(v25 + 4) = v20;
  (*(v12 + 32))(&v25[v22], v15, v33);
  v27 = &v25[v23];
  v28 = v41;
  *v27 = v40;
  v27[1] = v28;
  v27[2] = v32;
  (*(v8 + 32))(&v25[v24], v35, v34);
  v29 = sub_1D22AE01C(0, 0, v18, &unk_1D2883F70, v25);
  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  *(v30 + 24) = v20;
  sub_1D2870F78();
  return sub_1D2878728();
}

uint64_t sub_1D239FA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[86] = v25;
  v8[85] = a8;
  v8[84] = a7;
  v8[83] = a6;
  v8[82] = a5;
  v8[81] = a4;
  v9 = sub_1D2878538();
  v8[87] = v9;
  v8[88] = *(v9 - 8);
  v8[89] = swift_task_alloc();
  v8[90] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA738, &qword_1D2883F30);
  v8[91] = v10;
  v11 = *(v10 - 8);
  v8[92] = v11;
  v8[93] = *(v11 + 64);
  v8[94] = swift_task_alloc();
  v8[95] = swift_task_alloc();
  v12 = type metadata accessor for CuratedPrompt(0);
  v8[96] = v12;
  v8[97] = *(v12 - 8);
  v8[98] = swift_task_alloc();
  v8[99] = swift_task_alloc();
  v8[100] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA748, &qword_1D2883F50);
  v8[101] = v13;
  v8[102] = *(v13 - 8);
  v8[103] = swift_task_alloc();
  v8[104] = type metadata accessor for ImageGeneration.PreviewStatus(0);
  v8[105] = swift_task_alloc();
  v8[106] = swift_task_alloc();
  v14 = sub_1D2872008();
  v8[107] = v14;
  v8[108] = *(v14 - 8);
  v8[109] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9490, &qword_1D287D3F0);
  v8[110] = swift_task_alloc();
  v8[111] = swift_task_alloc();
  v8[112] = swift_task_alloc();
  v15 = type metadata accessor for ImageGeneration.PreviewImage(0);
  v8[113] = v15;
  v8[114] = *(v15 - 8);
  v8[115] = swift_task_alloc();
  v8[116] = swift_task_alloc();
  v8[117] = swift_task_alloc();
  v16 = sub_1D2871818();
  v8[118] = v16;
  v17 = *(v16 - 8);
  v8[119] = v17;
  v8[120] = *(v17 + 64);
  v8[121] = swift_task_alloc();
  v8[122] = swift_task_alloc();
  v8[123] = swift_task_alloc();
  v8[124] = swift_task_alloc();
  v8[125] = swift_task_alloc();
  v8[126] = swift_task_alloc();
  v8[127] = swift_task_alloc();
  v8[128] = swift_task_alloc();
  v8[129] = swift_task_alloc();
  v8[130] = swift_task_alloc();
  v8[131] = swift_task_alloc();
  v8[132] = swift_task_alloc();
  v8[133] = swift_task_alloc();
  v8[134] = swift_task_alloc();
  v8[135] = swift_task_alloc();
  v8[136] = swift_task_alloc();
  v8[137] = swift_task_alloc();
  v8[138] = swift_task_alloc();
  v8[139] = swift_task_alloc();
  v18 = sub_1D2871988();
  v8[140] = v18;
  v8[141] = *(v18 - 8);
  v8[142] = swift_task_alloc();
  v19 = type metadata accessor for ImageGeneration.GenerationParameters(0);
  v8[143] = v19;
  v8[144] = *(v19 - 8);
  v8[145] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA490, &qword_1D2883648);
  v8[146] = swift_task_alloc();
  v8[147] = swift_task_alloc();
  v8[148] = swift_task_alloc();
  v20 = sub_1D2873CB8();
  v8[149] = v20;
  v8[150] = *(v20 - 8);
  v8[151] = swift_task_alloc();
  v8[152] = swift_task_alloc();
  v8[153] = swift_task_alloc();
  v8[154] = swift_task_alloc();
  v8[155] = swift_task_alloc();
  v8[156] = swift_task_alloc();
  v8[157] = swift_task_alloc();
  v8[158] = swift_task_alloc();
  v8[159] = swift_task_alloc();
  v8[160] = swift_task_alloc();
  v8[161] = swift_task_alloc();
  v8[162] = swift_task_alloc();
  v8[163] = swift_task_alloc();
  v8[164] = swift_task_alloc();
  v8[165] = swift_task_alloc();
  v8[166] = swift_task_alloc();
  v8[167] = swift_task_alloc();
  v8[168] = sub_1D2878568();
  v8[169] = sub_1D2878558();
  v22 = sub_1D28784F8();
  v8[170] = v22;
  v8[171] = v21;

  return MEMORY[0x1EEE6DFA0](sub_1D23A0190, v22, v21);
}

uint64_t sub_1D23A0190()
{
  v1 = v0[81];
  v2 = *(v1 + 32);
  v0[172] = v2;
  v0[173] = *(v1 + 40);
  if (v2)
  {
    sub_1D2870F78();
    v15 = (v2 + *v2);
    v3 = swift_task_alloc();
    v0[174] = v3;
    *v3 = v0;
    v3[1] = sub_1D23A06EC;
    v4 = v0[147];

    return v15(v4);
  }

  else
  {

    sub_1D2872648();
    v6 = sub_1D2873CA8();
    v7 = sub_1D2878A18();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1D226E000, v6, v7, "parametersProvider is nil in buildRequest function", v8, 2u);
      MEMORY[0x1D38A3520](v8, -1, -1);
    }

    v9 = v0[167];
    v10 = v0[150];
    v11 = v0[149];

    (*(v10 + 8))(v9, v11);
    sub_1D23B78C0();
    v12 = swift_allocError();
    *v13 = 0;
    v0[63] = v12;
    sub_1D2878748();

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_1D23A06EC()
{
  v2 = *v1;
  *(*v1 + 1400) = v0;

  v3 = *(v2 + 1368);
  v4 = *(v2 + 1360);
  if (v0)
  {
    v5 = sub_1D23AF690;
  }

  else
  {
    v5 = sub_1D23A0828;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D23A0828()
{
  v357 = v0;
  v5 = *(v0 + 1184);
  v6 = *(v0 + 1168);
  v7 = *(v0 + 1152);
  v8 = *(v0 + 1144);
  sub_1D23B7914(*(v0 + 1176), v5);
  sub_1D22BD1D0(v5, v6, &qword_1EC6DA490, &qword_1D2883648);
  v9 = 1;
  if ((*(v7 + 48))(v6, 1, v8) == 1)
  {
    v10 = *(v0 + 1384);
    v11 = *(v0 + 1376);
    v12 = *(v0 + 1184);
    v13 = *(v0 + 1168);

    sub_1D22BD238(v13, &qword_1EC6DA490, &qword_1D2883648);
    sub_1D23B78C0();
    v14 = swift_allocError();
    *v15 = 1;
    *(v0 + 576) = v14;
    sub_1D2878748();
    sub_1D22A576C(v11, v10);
    sub_1D22BD238(v12, &qword_1EC6DA490, &qword_1D2883648);
    goto LABEL_50;
  }

  v16 = *(v0 + 1400);
  v17 = *(v0 + 1160);
  v18 = *(v0 + 648);
  sub_1D23B81C8(*(v0 + 1168), v17, type metadata accessor for ImageGeneration.GenerationParameters);
  v19 = sub_1D23B7984();
  v20 = swift_task_alloc();
  *(v20 + 16) = v17;
  sub_1D2870F68();
  sub_1D274B7E8(sub_1D23B7AD4, v19, v0 + 144);
  *(v0 + 1408) = v16;

  v21 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__selectedGenerator;
  swift_beginAccess();
  sub_1D23B7AF4(v0 + 144, v18 + v21);
  swift_endAccess();
  sub_1D22BD1D0(v18 + v21, v0 + 224, &qword_1EC6D9A08, &qword_1D287EC40);
  if (!*(v0 + 248))
  {
    v30 = *(v0 + 1384);
    v31 = *(v0 + 1376);
    v32 = *(v0 + 1184);
    v33 = *(v0 + 1160);

    sub_1D22BD238(v0 + 224, &qword_1EC6D9A08, &qword_1D287EC40);
    sub_1D23B7B64();
    *(v0 + 560) = swift_allocError();
    sub_1D2878748();
    sub_1D22A576C(v31, v30);
    sub_1D22BD238(v32, &qword_1EC6DA490, &qword_1D2883648);
    v34 = v33;
    goto LABEL_49;
  }

  v22 = *(v0 + 1160);
  sub_1D227268C((v0 + 224), v0 + 184);
  v23 = *(v22 + 32);
  *(v0 + 1416) = v23;
  v24 = *(v22 + 40);
  *(v0 + 1424) = v24;
  if ((v23 || v24 != 0xE000000000000000) && (sub_1D2879618() & 1) == 0)
  {
    v25 = [objc_opt_self() _deviceLanguage];
    if (v25)
    {
      v26 = v25;
      v27 = sub_1D28780A8();
      v29 = v28;

      if (v27 == 24938 && v29 == 0xE200000000000000)
      {

LABEL_13:
        *(v0 + 1432) = *(*(v0 + 648) + 16);
        *(v0 + 1440) = sub_1D2878558();
        v35 = sub_1D28784F8();
        v37 = v36;
        *(v0 + 1448) = v35;
        *(v0 + 1456) = v36;
        v38 = sub_1D23A381C;
        v39 = v35;

        return MEMORY[0x1EEE6DFA0](v38, v39, v37);
      }

      v21 = sub_1D2879618();

      if (v21)
      {
        goto LABEL_13;
      }
    }
  }

  v40 = *(v0 + 664);
  sub_1D2871978();
  if (v40 < 0)
  {
    __break(1u);
LABEL_153:

    (v3)(v40, v20);
    v300(v9, v339);
    goto LABEL_154;
  }

  v41 = *(v0 + 664);
  v42 = *(v0 + 648);
  v43 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager_generationBatchIdentifier;
  *(v0 + 1504) = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager_generationBatchIdentifier;
  swift_beginAccess();
  v298 = v41;
  if (v41)
  {
    v44 = 0;
    v45 = *(v0 + 952);
    v9 = v45 + 16;
    v46 = (v45 + 8);
    v333 = v42;
    v340 = *(v0 + 1144);
    while (1)
    {
      v47 = *(v0 + 672);
      v3 = v44 + v47;
      if (__OFADD__(v44, v47))
      {
        break;
      }

      v48 = *(v0 + 1112);
      v49 = *(v0 + 944);
      (*v9)(v48, v42 + v43, v49);
      sub_1D23B75AC(&unk_1ED8A6CA0, MEMORY[0x1E69695C8]);
      v2 = sub_1D2877F98();
      (*v46)(v48, v49);
      if ((v2 & 1) == 0)
      {
        v76 = *(v0 + 1384);
        v77 = *(v0 + 1376);
        v78 = *(v0 + 1184);
        v54 = *(v0 + 1160);
        v79 = *(v0 + 1136);
        v80 = *(v0 + 1128);
        v81 = *(v0 + 1120);

        sub_1D22BCEB8();
        v82 = swift_allocError();
        *v83 = 3;
        *(v0 + 552) = v82;
        sub_1D2878748();
        sub_1D22A576C(v77, v76);
        (*(v80 + 8))(v79, v81);
        sub_1D22BD238(v78, &qword_1EC6DA490, &qword_1D2883648);
        goto LABEL_48;
      }

      v50 = *(*(v42 + 6) + 16);
      v1 = sub_1D2878068();
      v41 = [v50 objectForKey_];

      if (v41)
      {
        v356[0] = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA498, &unk_1D2883A80);
        sub_1D28783D8();
      }

      if (++v44 == *(v0 + 664))
      {
        goto LABEL_25;
      }
    }

    __break(1u);
    goto LABEL_131;
  }

  v44 = *(v0 + 664);
LABEL_25:
  if (sub_1D2871938() == v44)
  {
    v51 = *(v0 + 1384);
    v52 = *(v0 + 1376);
    v53 = *(v0 + 1184);
    v54 = *(v0 + 1160);
    v55 = *(v0 + 1136);
    v56 = *(v0 + 1128);
    v57 = *(v0 + 1120);
    v334 = *(v0 + 648);
    v341 = *(v0 + 1144);

    *(v0 + 632) = 0;
    sub_1D2878748();
    sub_1D22A576C(v52, v51);
    (*(v56 + 8))(v55, v57);
    sub_1D22BD238(v53, &qword_1EC6DA490, &qword_1D2883648);
    v58 = (v54 + *(v341 + 24));
    v60 = *v58;
    v59 = v58[1];
    v61 = (v334 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__staleParameterContextIdForConfiguration);
    *v61 = v60;
    v61[1] = v59;
    sub_1D2870F68();

LABEL_48:
    __swift_destroy_boxed_opaque_existential_0((v0 + 184));
    v34 = v54;
    goto LABEL_49;
  }

  v21 = &unk_1ED8A5000;
  v62 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__staleParameterContextIdForConfiguration;
  v63 = *(v0 + 1160);
  v64 = *(v0 + 648);
  if (!*(v0 + 672))
  {
    goto LABEL_35;
  }

  v65 = *(v64 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__staleParameterContextIdForConfiguration + 8);
  if (!v65)
  {
    goto LABEL_53;
  }

  v66 = (v63 + *(*(v0 + 1144) + 96));
  if (*v66 == *(v64 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__staleParameterContextIdForConfiguration) && v65 == v66[1])
  {
LABEL_35:
    v68 = (v64 + v62);
    *v68 = 0;
    v68[1] = 0;

    sub_1D2392B2C();
    if (v69)
    {
      v70 = *(*(v0 + 1160) + 104);
      v71 = *(v70 + 16);
      if (v71)
      {
        v43 = 0;
        v2 = *(v0 + 776);
        v333 = *(v0 + 768);
        v342 = (*(v0 + 800) + 48);
        v72 = MEMORY[0x1E69E7CC0];
        do
        {
          if (v43 >= *(v70 + 16))
          {
            __break(1u);
            goto LABEL_139;
          }

          v9 = (*(v2 + 80) + 32) & ~*(v2 + 80);
          v1 = *(v2 + 72);
          sub_1D23B8100(v70 + v9 + v1 * v43, *(v0 + 800), type metadata accessor for CuratedPrompt);
          v73 = *(v0 + 800);
          if (v342[v333[23]] == 255)
          {
            sub_1D23B8168(v73, type metadata accessor for CuratedPrompt);
          }

          else
          {
            sub_1D23B81C8(v73, *(v0 + 784), type metadata accessor for CuratedPrompt);
            v356[0] = v72;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1D23D838C(0, *(v72 + 16) + 1, 1);
              v72 = v356[0];
            }

            v3 = *(v72 + 16);
            v74 = *(v72 + 24);
            v21 = v3 + 1;
            if (v3 >= v74 >> 1)
            {
              sub_1D23D838C((v74 > 1), v3 + 1, 1);
              v72 = v356[0];
            }

            v75 = *(v0 + 784);
            *(v72 + 16) = v21;
            sub_1D23B81C8(v75, v72 + v9 + v3 * v1, type metadata accessor for CuratedPrompt);
          }

          ++v43;
        }

        while (v71 != v43);
      }

      else
      {
        v72 = MEMORY[0x1E69E7CC0];
      }

      v327 = *(v72 + 16);
      v333 = v72;
      if (v327)
      {
        v98 = 0;
        v99 = *(v0 + 792) + *(*(v0 + 768) + 92);
        v316 = (v333 + ((*(*(v0 + 776) + 80) + 32) & ~*(*(v0 + 776) + 80)));
        v323 = *(v0 + 776);
        do
        {
          if (v98 >= *(v333 + 2))
          {
            __break(1u);
LABEL_150:

            (v333)(v98, v2);
            v300(v1, v9);
            v1 = v316;
            goto LABEL_151;
          }

          v9 = *(v0 + 792);
          sub_1D23B8100(v316 + *(v323 + 72) * v98, v9, type metadata accessor for CuratedPrompt);
          v21 = *(v99 + 8);
          v2 = *(v99 + 16);
          v100 = *(v99 + 24);
          v101 = *(v99 + 32);
          v43 = *(v99 + 40);
          v1 = *(v99 + 48);
          v344 = *v99;
          sub_1D23B7D24(*v99, v21, v2, v100, v101, v43, *(v99 + 48));
          sub_1D23B8168(v9, type metadata accessor for CuratedPrompt);
          if (v1 != 255)
          {
            if (v1)
            {

              if (!v21)
              {
                goto LABEL_79;
              }

              v102 = HIBYTE(v21) & 0xF;
              if ((v21 & 0x2000000000000000) == 0)
              {
                v102 = v344 & 0xFFFFFFFFFFFFLL;
              }

              if (!v102)
              {
LABEL_79:
                v103 = *(v0 + 1384);
                v104 = *(v0 + 1376);
                v328 = *(v0 + 1184);
                v345 = *(v0 + 1160);
                v105 = *(v0 + 1136);
                v106 = *(v0 + 1128);
                v107 = *(v0 + 1120);

                sub_1D22BCE64();
                v108 = swift_allocError();
                *v109 = xmmword_1D2883E60;
                *(v109 + 16) = -96;
                *(v0 + 624) = v108;
                sub_1D2878748();
                sub_1D22A576C(v104, v103);
                (*(v106 + 8))(v105, v107);
                sub_1D22BD238(v328, &qword_1EC6DA490, &qword_1D2883648);
                __swift_destroy_boxed_opaque_existential_0((v0 + 184));
                v34 = v345;
                goto LABEL_49;
              }
            }

            else
            {
              sub_1D23B7D88(v344, v21, v2, v100, v101, v43, v1);
            }
          }

          ++v98;
        }

        while (v327 != v98);
      }
    }

    sub_1D23929C8();
    v110 = *(v0 + 1160);
    if (v111)
    {
      v112 = v110[9];
      if (v112)
      {
        v113 = v110[8];
        v114 = *(v0 + 208);
        v115 = *(v0 + 216);
        __swift_project_boxed_opaque_existential_1((v0 + 184), v114);
        v346 = (*(v115 + 40) + **(v115 + 40));
        v116 = swift_task_alloc();
        *(v0 + 1512) = v116;
        *v116 = v0;
        v116[1] = sub_1D23A67D8;
        v117 = *(v0 + 1160);

        return (v346)(v113, v112, v117, v114, v115);
      }
    }

    v118 = v110[7];
    if (v118)
    {
      v119 = v110[6];
      v120 = *(v0 + 208);
      v121 = *(v0 + 216);
      __swift_project_boxed_opaque_existential_1((v0 + 184), v120);
      v347 = (*(v121 + 32) + **(v121 + 32));
      v122 = swift_task_alloc();
      *(v0 + 1528) = v122;
      *v122 = v0;
      v122[1] = sub_1D23A8AB0;

      return (v347)(v119, v118, v120, v121);
    }

    v46 = *(v0 + 1408);
    v123 = *(v0 + 208);
    v124 = *(v0 + 216);
    __swift_project_boxed_opaque_existential_1((v0 + 184), v123);
    (*(v124 + 48))(v110, v123, v124);
    if (v46)
    {

      *(v0 + 584) = v46;
      v125 = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0, &unk_1D287D430);
      if (swift_dynamicCast())
      {
        v43 = *(v0 + 480);
        v126 = *(v0 + 488);
        LODWORD(v44) = *(v0 + 496);
        if (v44 < 0x50)
        {
          *(v0 + 608) = v43;
          sub_1D233E72C(v43, v126, v44);
          if (swift_dynamicCast())
          {
            v340 = v126;
            v127 = *(v0 + 992);
            v128 = *(v0 + 952);
            v129 = *(v0 + 944);
            v130 = *(v0 + 688);
            (*(*(v0 + 704) + 8))(*(v0 + 720), *(v0 + 696));
            sub_1D2872648();
            (*(v128 + 16))(v127, v130, v129);
            v131 = v46;
            v2 = sub_1D2873CA8();
            v132 = sub_1D28789F8();

            v329 = v132;
            v133 = os_log_type_enabled(v2, v132);
            v9 = *(v0 + 1240);
            v1 = *(v0 + 1200);
            v333 = *(v0 + 1192);
            v41 = *(v0 + 992);
            v42 = *(v0 + 952);
            v3 = *(v0 + 944);
            if (v133)
            {
              v303 = v2;
              v134 = swift_slowAlloc();
              v302 = swift_slowAlloc();
              v317 = swift_slowAlloc();
              v356[0] = v317;
              *v134 = 136315394;
              sub_1D23B75AC(&qword_1ED8A6C90, MEMORY[0x1E69695E0]);
              v324 = v9;
              v135 = sub_1D28795C8();
              v309 = v1;
              v137 = v136;
              (*(v42 + 1))(v41, v3);
              v138 = sub_1D23D7C84(v135, v137, v356);

              *(v134 + 4) = v138;
              *(v134 + 12) = 2112;
              v139 = v46;
              v140 = _swift_stdlib_bridgeErrorToNSError();
              *(v134 + 14) = v140;
              *v302 = v140;
              _os_log_impl(&dword_1D226E000, v303, v329, "startGeneratingPreviewsStream - %s - configuration did cancel with error %@", v134, 0x16u);
              sub_1D22BD238(v302, qword_1EC6DA930, &qword_1D287E870);
              MEMORY[0x1D38A3520](v302, -1, -1);
              __swift_destroy_boxed_opaque_existential_0(v317);
              MEMORY[0x1D38A3520](v317, -1, -1);
              MEMORY[0x1D38A3520](v134, -1, -1);

              (*(v309 + 8))(v324, v333);
LABEL_132:
              v241 = *(v0 + 1384);
              v242 = *(v0 + 1376);
              v185 = *(v0 + 1184);
              v338 = *(v0 + 1136);
              v243 = *(v0 + 1128);
              v244 = *(v0 + 1120);
              *(v0 + 616) = 0;
              sub_1D2878748();
              sub_1D22A576C(v242, v241);
              sub_1D22BCDC4(v43, v340, v44);

              (*(v243 + 8))(v338, v244);
              goto LABEL_106;
            }

LABEL_131:

            (*(v42 + 1))(v41, v3);
            (*(v1 + 8))(v9, v333);
            goto LABEL_132;
          }
        }

        sub_1D22BCDC4(v43, v126, v44);
      }

      v162 = *(v0 + 984);
      v163 = *(v0 + 952);
      v164 = *(v0 + 944);
      v165 = *(v0 + 688);
      sub_1D2872648();
      (*(v163 + 16))(v162, v165, v164);
      v166 = v46;
      v167 = sub_1D2873CA8();
      v168 = sub_1D28789F8();

      v169 = os_log_type_enabled(v167, v168);
      v170 = *(v0 + 1232);
      v171 = *(v0 + 1200);
      v172 = *(v0 + 1192);
      v173 = *(v0 + 984);
      v174 = *(v0 + 952);
      v175 = *(v0 + 944);
      if (v169)
      {
        v349 = *(v0 + 1192);
        v176 = swift_slowAlloc();
        v326 = swift_slowAlloc();
        v331 = swift_slowAlloc();
        v356[0] = v331;
        *v176 = 136315394;
        sub_1D23B75AC(&qword_1ED8A6C90, MEMORY[0x1E69695E0]);
        v336 = v170;
        v177 = sub_1D28795C8();
        v318 = v168;
        v179 = v178;
        (*(v174 + 8))(v173, v175);
        v180 = sub_1D23D7C84(v177, v179, v356);

        *(v176 + 4) = v180;
        *(v176 + 12) = 2112;
        v181 = v46;
        v182 = _swift_stdlib_bridgeErrorToNSError();
        *(v176 + 14) = v182;
        *v326 = v182;
        _os_log_impl(&dword_1D226E000, v167, v318, "startGeneratingPreviewsStream - %s - configuration did receive error %@", v176, 0x16u);
        sub_1D22BD238(v326, qword_1EC6DA930, &qword_1D287E870);
        MEMORY[0x1D38A3520](v326, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v331);
        MEMORY[0x1D38A3520](v331, -1, -1);
        MEMORY[0x1D38A3520](v176, -1, -1);

        (*(v171 + 8))(v336, v349);
      }

      else
      {

        (*(v174 + 8))(v173, v175);
        (*(v171 + 8))(v170, v172);
      }

      v183 = *(v0 + 1384);
      v184 = *(v0 + 1376);
      v185 = *(v0 + 1184);
      v186 = *(v0 + 1136);
      v187 = *(v0 + 1128);
      v188 = *(v0 + 1120);
      *(v0 + 600) = v46;
      v189 = v46;
      sub_1D2878748();
      sub_1D22A576C(v184, v183);

      (*(v187 + 8))(v186, v188);
LABEL_106:
      sub_1D22BD238(v185, &qword_1EC6DA490, &qword_1D2883648);
      v190 = *(v0 + 1160);
      __swift_destroy_boxed_opaque_existential_0((v0 + 184));
      v34 = v190;
LABEL_49:
      sub_1D23B8168(v34, type metadata accessor for ImageGeneration.GenerationParameters);
LABEL_50:

      v84 = *(v0 + 8);

      return v84();
    }

    v21 = *(v0 + 824);
    v160 = *(v0 + 816);
    v161 = *(v0 + 808);
    v2 = *(v0 + 664);
    v63 = *(v0 + 656);
    swift_storeEnumTagMultiPayload();
    sub_1D2878738();
    (*(v160 + 8))(v21, v161);
    if (v2 > 1)
    {
      v86 = 1;
      goto LABEL_55;
    }

    if (*(v0 + 664))
    {
      v90 = 1;
      goto LABEL_60;
    }

LABEL_112:
    v207 = *(v0 + 208);
    v208 = *(v0 + 216);
    __swift_project_boxed_opaque_existential_1((v0 + 184), v207);
    v351 = (*(v208 + 136) + **(v208 + 136));
    v209 = swift_task_alloc();
    *(v0 + 1688) = v209;
    *v209 = v0;
    v210 = sub_1D23AEFA0;
LABEL_113:
    v209[1] = v210;
    v211 = v207;
    v212 = v208;
    v213 = v351;

    return (v213)(v211, v212);
  }

  if (sub_1D2879618())
  {
    v62 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__staleParameterContextIdForConfiguration;
    v64 = *(v0 + 648);
    goto LABEL_35;
  }

LABEL_53:
  if (*(v0 + 664) > 1)
  {
    v86 = 0;
LABEL_55:
    *(v0 + 474) = v86;
    v87 = *(v0 + 208);
    v88 = *(v0 + 216);
    __swift_project_boxed_opaque_existential_1((v0 + 184), v87);
    v343 = (*(v88 + 128) + **(v88 + 128));
    v89 = swift_task_alloc();
    *(v0 + 1544) = v89;
    *v89 = v0;
    v89[1] = sub_1D23AAC6C;

    return (v343)(v87, v88);
  }

  if (!v298)
  {
    goto LABEL_112;
  }

  v90 = 0;
LABEL_60:
  *(v0 + 475) = v90;
  swift_beginAccess();
  v91 = 0;
  v92 = "ion; Expected same executor as ";
  v93 = "PreviewGenerationStarted";
  v94 = "predictable-seed-loading";
  v95 = *(v0 + 664);
  v96 = "predictable-seed-storing";
  while (1)
  {
    *(v0 + 1552) = v91;
    if (v91 >= v95)
    {
      __break(1u);
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
      goto LABEL_171;
    }

    *(v0 + 1560) = v91 + 1;
    if (__OFADD__(v91, 1))
    {
      goto LABEL_169;
    }

    v97 = *(v0 + 672);
    v21 = v91 + v97;
    *(v0 + 1568) = v91 + v97;
    if (__OFADD__(v91, v97))
    {
      goto LABEL_170;
    }

    v63 = *(v0 + 1136);
    if ((sub_1D2871968() & 1) == 0)
    {
      break;
    }

    v91 = *(v0 + 1560);
    v95 = *(v0 + 664);
    if (v91 == v95)
    {
      goto LABEL_112;
    }
  }

  v141 = sub_1D28786D8();
  v142 = *(v0 + 944);
  v143 = *(v0 + 688);
  v144 = *(v0 + 952) + 16;
  if (v141)
  {
    v145 = *(v0 + 1096);
    sub_1D2872648();
    (*v144)(v145, v143, v142);
    v146 = sub_1D2873CA8();
    v147 = sub_1D28789F8();
    v148 = os_log_type_enabled(v146, v147);
    v149 = *(v0 + 1328);
    v150 = *(v0 + 1200);
    v151 = *(v0 + 1192);
    v152 = *(v0 + 1096);
    v153 = *(v0 + 952);
    v154 = *(v0 + 944);
    if (v148)
    {
      v330 = v147;
      v155 = swift_slowAlloc();
      v325 = swift_slowAlloc();
      v356[0] = v325;
      *v155 = 136315394;
      sub_1D23B75AC(&qword_1ED8A6C90, MEMORY[0x1E69695E0]);
      v335 = v151;
      v348 = v149;
      v156 = sub_1D28795C8();
      v158 = v157;
      (*(v153 + 8))(v152, v154);
      v159 = sub_1D23D7C84(v156, v158, v356);

      *(v155 + 4) = v159;
      *(v155 + 12) = 2048;
      *(v155 + 14) = v91;
      _os_log_impl(&dword_1D226E000, v146, v330, "startGeneratingPreviewsStream - %s - image index %ld - _selectedGenerator.isCancelled", v155, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v325);
      MEMORY[0x1D38A3520](v325, -1, -1);
      MEMORY[0x1D38A3520](v155, -1, -1);

      (*(v150 + 8))(v348, v335);
    }

    else
    {

      (*(v153 + 8))(v152, v154);
      (*(v150 + 8))(v149, v151);
    }

    goto LABEL_112;
  }

  v191 = *(v0 + 1088);
  sub_1D2872648();
  v192 = *v144;
  *(v0 + 1576) = *v144;
  *(v0 + 1584) = v144 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v350 = v192;
  (v192)(v191, v143, v142);
  v193 = sub_1D2873CA8();
  v319 = sub_1D28789F8();
  v194 = os_log_type_enabled(v193, v319);
  v195 = *(v0 + 1320);
  v196 = *(v0 + 1200);
  v337 = *(v0 + 1192);
  v197 = *(v0 + 1088);
  v198 = *(v0 + 952);
  v199 = *(v0 + 944);
  if (v194)
  {
    v200 = swift_slowAlloc();
    v304 = swift_slowAlloc();
    v356[0] = v304;
    *v200 = 136315394;
    sub_1D23B75AC(&qword_1ED8A6C90, MEMORY[0x1E69695E0]);
    v299 = v193;
    v201 = sub_1D28795C8();
    v310 = v195;
    v203 = v202;
    v301 = v196;
    v204 = *(v198 + 8);
    v204(v197, v199);
    v205 = sub_1D23D7C84(v201, v203, v356);

    *(v200 + 4) = v205;
    *(v200 + 12) = 2048;
    *(v200 + 14) = v91;
    _os_log_impl(&dword_1D226E000, v299, v319, " %s - image index %ld - will generate", v200, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v304);
    MEMORY[0x1D38A3520](v304, -1, -1);
    v206 = v204;
    MEMORY[0x1D38A3520](v200, -1, -1);

    v300 = *(v301 + 8);
    v300(v310, v337);
  }

  else
  {

    v206 = *(v198 + 8);
    v206(v197, v199);
    v300 = *(v196 + 8);
    v300(v195, v337);
  }

  v333 = v206;
  *(v0 + 1592) = v206;
  v214 = *(v0 + 1112);
  v215 = *(v0 + 944);
  v311 = *(v0 + 1504);
  v305 = *(v0 + 648);
  v216 = *(v0 + 952) + 8;
  sub_1D23C7CA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA190, &unk_1D28836B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D287F500;
  *(inited + 32) = 0x646E496567616D49;
  *(inited + 40) = 0xEA00000000007865;
  *(inited + 48) = sub_1D2878808();
  v218 = sub_1D25D6F4C(inited);
  swift_setDeallocating();
  v3 = v333;
  sub_1D22BD238(inited + 32, &qword_1EC6DA198, &qword_1D28816A0);
  sub_1D24165B4(0x6E65476567616D49, 0xEF6E6F6974617265, 0xD000000000000018, 0x80000001D28B2AF0, v218, 1);

  (v350)(v214, v305 + v311, v215);
  *(v0 + 1600) = sub_1D23B75AC(&unk_1ED8A6CA0, MEMORY[0x1E69695C8]);
  v219 = sub_1D2877F98();
  *(v0 + 1608) = v216 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  (v333)(v214, v215);
  if ((v219 & 1) == 0)
  {
    sub_1D22BCEB8();
    v239 = swift_allocError();
    *v240 = 3;
    swift_willThrow();
    *(v0 + 1696) = v239;
    v207 = *(v0 + 208);
    v208 = *(v0 + 216);
    __swift_project_boxed_opaque_existential_1((v0 + 184), v207);
    v351 = (*(v208 + 136) + **(v208 + 136));
    v209 = swift_task_alloc();
    *(v0 + 1704) = v209;
    *v209 = v0;
    v210 = sub_1D23B0E18;
    goto LABEL_113;
  }

  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  sub_1D23B7BB8();
  v220 = sub_1D2878A58();
  v221 = sub_1D2878068();
  v222 = [v220 BOOLForKey_];

  if (v222)
  {
    if (qword_1EC6D8C10 != -1)
    {
      swift_once();
    }

    v223 = sub_1D23B9E90((*(v0 + 1160) + *(*(v0 + 1144) + 92)), v91);
    if ((v224 & 1) == 0)
    {
      v316 = v223;
      v258 = *(v0 + 1080);
      v259 = *(v0 + 944);
      v260 = *(v0 + 688);
      sub_1D2872648();
      (v350)(v258, v260, v259);
      v43 = sub_1D2873CA8();
      v261 = sub_1D28789F8();
      v262 = os_log_type_enabled(v43, v261);
      v1 = *(v0 + 1312);
      v9 = *(v0 + 1192);
      v98 = *(v0 + 1080);
      v2 = *(v0 + 944);
      if (!v262)
      {
        goto LABEL_150;
      }

      v332 = *(v0 + 1192);
      v263 = swift_slowAlloc();
      v314 = swift_slowAlloc();
      v356[0] = v314;
      *v263 = 136315650;
      sub_1D23B75AC(&qword_1ED8A6C90, MEMORY[0x1E69695E0]);
      v264 = sub_1D28795C8();
      v307 = v1;
      v266 = v265;
      (v333)(v98, v2);
      v267 = sub_1D23D7C84(v264, v266, v356);

      *(v263 + 4) = v267;
      *(v263 + 12) = 2048;
      *(v263 + 14) = v91;
      *(v263 + 22) = 2048;
      v1 = v316;
      *(v263 + 24) = v316;
      _os_log_impl(&dword_1D226E000, v43, v261, "startGeneratingPreviewsStream - %s - image index %ld - setting seed (cached) %ld", v263, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v314);
      MEMORY[0x1D38A3520](v314, -1, -1);
      MEMORY[0x1D38A3520](v263, -1, -1);

      v300(v307, v332);
      goto LABEL_151;
    }
  }

  v225 = sub_1D2878A58();
  v226 = sub_1D2878068();
  v227 = [v225 BOOLForKey_];

  if (!v227)
  {
    v245 = sub_1D2878A58();
    v246 = sub_1D2878068();
    v247 = [v245 BOOLForKey_];

    if (v247)
    {
      v248 = *(v0 + 1064);
      v249 = *(v0 + 944);
      v250 = *(v0 + 688);
      sub_1D2872648();
      (v350)(v248, v250, v249);
      v19 = sub_1D2873CA8();
      v251 = sub_1D28789F8();
      v252 = os_log_type_enabled(v19, v251);
      v9 = *(v0 + 1296);
      v339 = *(v0 + 1192);
      v40 = *(v0 + 1064);
      v20 = *(v0 + 944);
      if (!v252)
      {
        goto LABEL_153;
      }

      v253 = swift_slowAlloc();
      v321 = swift_slowAlloc();
      v356[0] = v321;
      *v253 = 136315650;
      sub_1D23B75AC(&qword_1ED8A6C90, MEMORY[0x1E69695E0]);
      v254 = sub_1D28795C8();
      v313 = v9;
      v256 = v255;
      (v333)(v40, v20);
      v257 = sub_1D23D7C84(v254, v256, v356);

      *(v253 + 4) = v257;
      *(v253 + 12) = 2048;
      *(v253 + 14) = v91;
      *(v253 + 22) = 2048;
      *(v253 + 24) = 0;
      _os_log_impl(&dword_1D226E000, v19, v251, "startGeneratingPreviewsStream - %s - image index %ld - setting seed (fixed) %ld", v253, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v321);
      MEMORY[0x1D38A3520](v321, -1, -1);
      MEMORY[0x1D38A3520](v253, -1, -1);

      v300(v313, v339);
LABEL_154:
      v283 = *(v0 + 208);
      v284 = *(v0 + 216);
      __swift_project_boxed_opaque_existential_1((v0 + 184), v283);
      (*(v284 + 72))(0, v283, v284);
      goto LABEL_155;
    }

    if (v21 >= *(*(v0 + 680) + 16))
    {
      goto LABEL_155;
    }

    v38 = sub_1D23CE790();
    if (!v38)
    {
      v38 = &unk_1F4DBDC68;
    }

    if ((v21 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v268 = *(v38 + 2);
      if (v268)
      {
        v2 = *(*(v0 + 680) + 8 * v21 + 32);
        v269 = *(v0 + 1056);
        v270 = *(v0 + 944);
        v271 = *(v0 + 688);
        v272 = v268 - 1;
        if (v272 >= v21)
        {
          v272 = v21;
        }

        v4 = v38[v272 + 8];

        sub_1D2872648();
        (v350)(v269, v271, v270);
        v94 = sub_1D2873CA8();
        v353 = sub_1D28789F8();
        v273 = os_log_type_enabled(v94, v353);
        v96 = *(v0 + 1288);
        v92 = *(v0 + 1192);
        v63 = *(v0 + 1056);
        v93 = *(v0 + 944);
        if (v273)
        {
          v322 = *(v0 + 1192);
          v274 = swift_slowAlloc();
          v315 = swift_slowAlloc();
          v356[0] = v315;
          *v274 = 136315906;
          sub_1D23B75AC(&qword_1ED8A6C90, MEMORY[0x1E69695E0]);
          v308 = v96;
          v275 = v2;
          v276 = sub_1D28795C8();
          v278 = v277;
          (v333)(v63, v93);
          v279 = v276;
          v2 = v275;
          v280 = sub_1D23D7C84(v279, v278, v356);

          *(v274 + 4) = v280;
          *(v274 + 12) = 2048;
          *(v274 + 14) = v91;
          *(v274 + 22) = 2048;
          *(v274 + 24) = v275;
          *(v274 + 32) = 2048;
          *(v274 + 34) = v4;
          _os_log_impl(&dword_1D226E000, v94, v353, "startGeneratingPreviewsStream - %s - image index %ld - setting seed (precomputed) %ld - scribble strength %f", v274, 0x2Au);
          __swift_destroy_boxed_opaque_existential_0(v315);
          MEMORY[0x1D38A3520](v315, -1, -1);
          MEMORY[0x1D38A3520](v274, -1, -1);

          v300(v308, v322);
          goto LABEL_172;
        }

LABEL_171:

        (v333)(v63, v93);
        v300(v96, v92);
LABEL_172:
        v294 = *(v0 + 208);
        v295 = *(v0 + 216);
        __swift_project_boxed_opaque_existential_1((v0 + 184), v294);
        (*(v295 + 72))(v2, v294, v295);
        v296 = *(v0 + 208);
        v297 = *(v0 + 216);
        __swift_project_boxed_opaque_existential_1((v0 + 184), v296);
        (*(v297 + 80))(v296, v297, v4);
        if ((_s23ImagePlaygroundInternal13DebugSettingsC40shouldEnablePromptRewriteForPersonalizedSbvg_0() & 1) == 0)
        {
          goto LABEL_156;
        }

        goto LABEL_157;
      }
    }

    __break(1u);
    return MEMORY[0x1EEE6DFA0](v38, v39, v37);
  }

  v228 = sub_1D23B6AAC(0x8000000000000000);
  if (qword_1EC6D8C10 != -1)
  {
    swift_once();
  }

  v229 = *(v0 + 1072);
  v230 = *(v0 + 944);
  v231 = *(v0 + 688);
  sub_1D23BA074(v228, *(v0 + 1160) + *(*(v0 + 1144) + 92), v91);
  sub_1D2872648();
  (v350)(v229, v231, v230);
  v43 = sub_1D2873CA8();
  v352 = sub_1D28789F8();
  v232 = os_log_type_enabled(v43, v352);
  v3 = *(v0 + 1304);
  v1 = v228;
  v9 = *(v0 + 1192);
  v72 = *(v0 + 1072);
  v2 = *(v0 + 944);
  if (v232)
  {
    v320 = *(v0 + 1192);
    v233 = swift_slowAlloc();
    v312 = swift_slowAlloc();
    v356[0] = v312;
    *v233 = 136315650;
    sub_1D23B75AC(&qword_1ED8A6C90, MEMORY[0x1E69695E0]);
    v234 = sub_1D28795C8();
    v306 = v3;
    v235 = v1;
    v237 = v236;
    (v333)(v72, v2);
    v238 = sub_1D23D7C84(v234, v237, v356);
    v1 = v235;

    *(v233 + 4) = v238;
    *(v233 + 12) = 2048;
    *(v233 + 14) = v91;
    *(v233 + 22) = 2048;
    *(v233 + 24) = v235;
    _os_log_impl(&dword_1D226E000, v43, v352, "startGeneratingPreviewsStream - %s - image index %ld - setting seed (random) %ld", v233, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v312);
    MEMORY[0x1D38A3520](v312, -1, -1);
    MEMORY[0x1D38A3520](v233, -1, -1);

    v300(v306, v320);
    goto LABEL_151;
  }

LABEL_139:

  (v333)(v72, v2);
  v300(v3, v9);
LABEL_151:
  v281 = *(v0 + 208);
  v282 = *(v0 + 216);
  __swift_project_boxed_opaque_existential_1((v0 + 184), v281);
  (*(v282 + 72))(v1, v281, v282);
LABEL_155:
  if ((_s23ImagePlaygroundInternal13DebugSettingsC40shouldEnablePromptRewriteForPersonalizedSbvg_0() & 1) == 0)
  {
LABEL_156:
    if (!sub_1D2391DAC())
    {
      goto LABEL_157;
    }

LABEL_164:
    v287 = 0;
    goto LABEL_165;
  }

LABEL_157:
  if ((_s23ImagePlaygroundInternal13DebugSettingsC43shouldEnablePromptRewriteForNonPersonalizedSbvg_0() & 1) == 0 && !sub_1D2391DAC())
  {
    goto LABEL_164;
  }

  v285 = *(v0 + 475);
  v286 = sub_1D23920F8(1, v21, 0);
  v287 = v285 & v286;
  if ((v285 & 1) != 0 || (v286 & 1) == 0)
  {
LABEL_165:
    *(v0 + 476) = v287;
    v291 = *(v0 + 208);
    v292 = *(v0 + 216);
    __swift_project_boxed_opaque_existential_1((v0 + 184), v291);
    v355 = (*(v292 + 56) + **(v292 + 56));
    v293 = swift_task_alloc();
    *(v0 + 1616) = v293;
    *v293 = v0;
    v293[1] = sub_1D23AC2D8;
    v211 = v291;
    v212 = v292;
    v213 = v355;
  }

  else
  {
    *(v0 + 477) = 1;
    v288 = *(v0 + 208);
    v289 = *(v0 + 216);
    __swift_project_boxed_opaque_existential_1((v0 + 184), v288);
    v354 = (*(v289 + 64) + **(v289 + 64));
    v290 = swift_task_alloc();
    *(v0 + 1632) = v290;
    *v290 = v0;
    v290[1] = sub_1D23AC860;
    v211 = v288;
    v212 = v289;
    v213 = v354;
  }

  return (v213)(v211, v212);
}

uint64_t sub_1D23A381C()
{
  v1 = v0[179];
  type metadata accessor for PromptConceptAnalyzer();
  v2 = swift_allocObject();
  v0[183] = v2;
  *(v2 + 16) = 0;
  *(v2 + 24) = v1;
  sub_1D2870F78();
  v3 = swift_task_alloc();
  v0[184] = v3;
  *v3 = v0;
  v3[1] = sub_1D23A38FC;
  v4 = v0[178];
  v5 = v0[177];
  v6 = MEMORY[0x1E69E7CC0];

  return sub_1D2783DE8(v5, v4, 1, v6);
}

uint64_t sub_1D23A38FC(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *v4;
  *(v6 + 473) = a1;
  *(v6 + 1480) = a2;
  *(v6 + 1488) = a3;
  *(v6 + 1496) = a4;

  v7 = *(v5 + 1456);
  v8 = *(v5 + 1448);

  return MEMORY[0x1EEE6DFA0](sub_1D23A3A30, v8, v7);
}

uint64_t sub_1D23A3A30()
{

  v1 = *(v0 + 1368);
  v2 = *(v0 + 1360);

  return MEMORY[0x1EEE6DFA0](sub_1D23A3AC4, v2, v1);
}

float *sub_1D23A3AC4()
{
  v347 = v1;
  v8 = *(v1 + 1496);
  if (*(v1 + 473) == 3)
  {
    if (v8)
    {
      v9 = *(v1 + 1384);
      v10 = *(v1 + 1376);
      v11 = *(v1 + 1184);
      v12 = *(v1 + 1160);
      v13 = *(v1 + 1496);
      v14 = v8;

      sub_1D22BCE64();
      v15 = swift_allocError();
      *v16 = v13;
      *(v16 + 8) = 0;
      *(v16 + 16) = 16;
      *(v1 + 640) = v15;
      v17 = v13;
      sub_1D2878748();
      sub_1D22A576C(v10, v9);

      v18 = v11;
      goto LABEL_37;
    }
  }

  else
  {
  }

  v19 = *(v1 + 664);
  sub_1D2871978();
  if (v19 < 0)
  {
    __break(1u);
LABEL_142:

    (v6)(v19, v3);
    v299(v4, v331);
    goto LABEL_143;
  }

  v20 = *(v1 + 664);
  v21 = *(v1 + 648);
  v6 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager_generationBatchIdentifier;
  *(v1 + 1504) = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager_generationBatchIdentifier;
  swift_beginAccess();
  v340 = v1;
  v298 = v20;
  if (v20)
  {
    v0 = 0;
    v22 = *(v1 + 952);
    v3 = v22 + 16;
    v23 = (v22 + 8);
    v326 = v21;
    v331 = *(v1 + 1144);
    while (1)
    {
      v24 = *(v1 + 672);
      v25 = v0 + v24;
      if (__OFADD__(v0, v24))
      {
        break;
      }

      v26 = *(v1 + 1112);
      v27 = *(v1 + 944);
      (*v3)(v26, v21 + v6, v27);
      sub_1D23B75AC(&unk_1ED8A6CA0, MEMORY[0x1E69695C8]);
      v5 = sub_1D2877F98();
      (*v23)(v26, v27);
      if ((v5 & 1) == 0)
      {
        v58 = *(v1 + 1384);
        v59 = *(v1 + 1376);
        v60 = *(v1 + 1184);
        v12 = *(v1 + 1160);
        v61 = *(v1 + 1136);
        v62 = *(v1 + 1128);
        v63 = *(v340 + 1120);

        sub_1D22BCEB8();
        v64 = swift_allocError();
        *v65 = 3;
        *(v340 + 552) = v64;
        sub_1D2878748();
        sub_1D22A576C(v59, v58);
        (*(v62 + 8))(v61, v63);
        v1 = v340;
        v18 = v60;
        goto LABEL_37;
      }

      v28 = *(*(v21 + 48) + 16);
      v4 = sub_1D2878068();
      v20 = [v28 objectForKey_];

      if (v20)
      {
        v346[0] = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA498, &unk_1D2883A80);
        sub_1D28783D8();
      }

      if (++v0 == *(v1 + 664))
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_120;
  }

  v0 = *(v1 + 664);
LABEL_14:
  if (sub_1D2871938() == v0)
  {
    v29 = *(v1 + 1384);
    v30 = *(v1 + 1376);
    v31 = *(v1 + 1184);
    v32 = *(v1 + 1160);
    v332 = *(v340 + 1144);
    v33 = *(v340 + 1136);
    v34 = *(v340 + 1128);
    v35 = *(v340 + 1120);
    v36 = *(v340 + 648);

    *(v340 + 632) = 0;
    sub_1D2878748();
    sub_1D22A576C(v30, v29);
    (*(v34 + 8))(v33, v35);
    v12 = v32;
    sub_1D22BD238(v31, &qword_1EC6DA490, &qword_1D2883648);
    v1 = v340;
    v37 = (v12 + *(v332 + 96));
    v39 = *v37;
    v38 = v37[1];
    v40 = (v36 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__staleParameterContextIdForConfiguration);
    *v40 = v39;
    v40[1] = v38;
    sub_1D2870F68();

    goto LABEL_38;
  }

  v41 = &unk_1ED8A5000;
  v42 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__staleParameterContextIdForConfiguration;
  v43 = *(v1 + 648);
  if (!*(v1 + 672))
  {
    goto LABEL_24;
  }

  v44 = *(v43 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__staleParameterContextIdForConfiguration + 8);
  if (!v44)
  {
    goto LABEL_41;
  }

  v45 = (*(v1 + 1160) + *(*(v1 + 1144) + 96));
  if (*v45 == *(v43 + OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__staleParameterContextIdForConfiguration) && v44 == v45[1])
  {
LABEL_24:
    v47 = *(v1 + 1160);
    v48 = (v43 + v42);
    *v48 = 0;
    v48[1] = 0;

    sub_1D2392B2C();
    if (v49)
    {
      v50 = v1;
      v51 = *(*(v1 + 1160) + 104);
      v52 = *(v51 + 16);
      if (v52)
      {
        v53 = 0;
        v333 = v50[100] + 48;
        v4 = v50[97];
        v5 = v50[96];
        v0 = MEMORY[0x1E69E7CC0];
        do
        {
          if (v53 >= *(v51 + 16))
          {
            __break(1u);
            goto LABEL_128;
          }

          v47 = v340;
          v54 = (*(v4 + 80) + 32) & ~*(v4 + 80);
          v6 = *(v4 + 72);
          sub_1D23B8100(v51 + v54 + v6 * v53, *(v340 + 800), type metadata accessor for CuratedPrompt);
          v55 = *(v340 + 800);
          if (*(v333 + *(v5 + 92)) == 255)
          {
            sub_1D23B8168(v55, type metadata accessor for CuratedPrompt);
          }

          else
          {
            sub_1D23B81C8(v55, *(v340 + 784), type metadata accessor for CuratedPrompt);
            v346[0] = v0;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1D23D838C(0, *(v0 + 16) + 1, 1);
              v0 = v346[0];
            }

            v3 = *(v0 + 16);
            v56 = *(v0 + 24);
            v47 = v0;
            if (v3 >= v56 >> 1)
            {
              sub_1D23D838C((v56 > 1), v3 + 1, 1);
              v47 = v346[0];
            }

            v57 = *(v340 + 784);
            *(v47 + 16) = v3 + 1;
            sub_1D23B81C8(v57, v47 + v54 + v3 * v6, type metadata accessor for CuratedPrompt);
            v0 = v47;
          }

          ++v53;
        }

        while (v52 != v53);
      }

      else
      {
        v0 = MEMORY[0x1E69E7CC0];
      }

      v331 = *(v0 + 16);
      if (v331)
      {
        v78 = 0;
        v79 = *(v340 + 792) + *(*(v340 + 768) + 92);
        v80 = *(*(v340 + 776) + 80);
        v315 = (v0 + ((v80 + 32) & ~v80));
        v322 = *(v340 + 776);
        v327 = v0;
        do
        {
          if (v78 >= *(v0 + 16))
          {
            __break(1u);
LABEL_139:

            (v6)(v79, v5);
            v299(v4, v331);
            v4 = v315;
            goto LABEL_140;
          }

          v6 = *(v340 + 792);
          sub_1D23B8100(v315 + *(v322 + 9) * v78, v6, type metadata accessor for CuratedPrompt);
          v82 = *v79;
          v81 = *(v79 + 8);
          v5 = *(v79 + 16);
          v83 = *(v79 + 24);
          v84 = *(v79 + 32);
          v3 = *(v79 + 40);
          v4 = *(v79 + 48);
          sub_1D23B7D24(*v79, v81, v5, v83, v84, v3, *(v79 + 48));
          sub_1D23B8168(v6, type metadata accessor for CuratedPrompt);
          if (v4 != 255)
          {
            if (v4)
            {

              if (!v81)
              {
                goto LABEL_67;
              }

              v85 = HIBYTE(v81) & 0xF;
              if ((v81 & 0x2000000000000000) == 0)
              {
                v85 = v82 & 0xFFFFFFFFFFFFLL;
              }

              if (!v85)
              {
LABEL_67:
                v86 = *(v340 + 1384);
                v87 = *(v340 + 1376);
                v334 = *(v340 + 1184);
                v88 = *(v340 + 1160);
                v89 = *(v340 + 1136);
                v90 = *(v340 + 1128);
                v91 = *(v340 + 1120);

                sub_1D22BCE64();
                v92 = swift_allocError();
                *v93 = xmmword_1D2883E60;
                *(v93 + 16) = -96;
                *(v340 + 624) = v92;
                v12 = v88;
                sub_1D2878748();
                sub_1D22A576C(v87, v86);
                (*(v90 + 8))(v89, v91);
                v1 = v340;
                v18 = v334;
LABEL_37:
                sub_1D22BD238(v18, &qword_1EC6DA490, &qword_1D2883648);
LABEL_38:
                __swift_destroy_boxed_opaque_existential_0((v1 + 184));
                sub_1D23B8168(v12, type metadata accessor for ImageGeneration.GenerationParameters);

                v66 = *(v1 + 8);

                return v66();
              }
            }

            else
            {
              sub_1D23B7D88(v82, v81, v5, v83, v84, v3, v4);
            }
          }

          ++v78;
          v0 = v327;
        }

        while (v331 != v78);
      }

      v1 = v340;
    }

    sub_1D23929C8();
    v94 = *(v1 + 1160);
    if (v95)
    {
      v96 = v94[9];
      if (v96)
      {
        v97 = v94[8];
        v98 = *(v1 + 208);
        v99 = *(v1 + 216);
        __swift_project_boxed_opaque_existential_1((v1 + 184), v98);
        v342 = (*(v99 + 40) + **(v99 + 40));
        v100 = swift_task_alloc();
        *(v1 + 1512) = v100;
        *v100 = v1;
        v100[1] = sub_1D23A67D8;
        v101 = *(v1 + 1160);

        return v342(v97, v96, v101, v98, v99);
      }
    }

    v102 = v94[7];
    if (v102)
    {
      v103 = v94[6];
      v104 = *(v1 + 208);
      v105 = *(v1 + 216);
      __swift_project_boxed_opaque_existential_1((v1 + 184), v104);
      v343 = (*(v105 + 32) + **(v105 + 32));
      v106 = swift_task_alloc();
      *(v1 + 1528) = v106;
      *v106 = v1;
      v106[1] = sub_1D23A8AB0;

      return v343(v103, v102, v104, v105);
    }

    v23 = *(v1 + 1408);
    v107 = *(v1 + 208);
    v108 = *(v1 + 216);
    __swift_project_boxed_opaque_existential_1((v1 + 184), v107);
    (*(v108 + 48))(v94, v107, v108);
    if (v23)
    {

      *(v1 + 584) = v23;
      v109 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0, &unk_1D287D430);
      if (swift_dynamicCast())
      {
        v3 = *(v1 + 480);
        v110 = *(v1 + 488);
        LODWORD(v0) = *(v1 + 496);
        if (v0 < 0x50)
        {
          *(v1 + 608) = v3;
          sub_1D233E72C(v3, v110, v0);
          if (swift_dynamicCast())
          {
            v331 = v110;
            v111 = *(v1 + 992);
            v112 = v1;
            v113 = *(v1 + 952);
            v114 = v112[118];
            v115 = v112[86];
            (*(v112[88] + 8))(v112[90], v112[87]);
            sub_1D2872648();
            (*(v113 + 16))(v111, v115, v114);
            v116 = v23;
            v4 = sub_1D2873CA8();
            v117 = sub_1D28789F8();

            v323 = v117;
            v118 = os_log_type_enabled(v4, v117);
            v5 = v112[155];
            v1 = v112[150];
            v326 = v112[149];
            v20 = v112[124];
            v21 = v112[119];
            v25 = v112[118];
            if (v118)
            {
              v316 = v112[155];
              v119 = swift_slowAlloc();
              v304 = swift_slowAlloc();
              v310 = swift_slowAlloc();
              v346[0] = v310;
              *v119 = 136315394;
              sub_1D23B75AC(&qword_1ED8A6C90, MEMORY[0x1E69695E0]);
              v120 = sub_1D28795C8();
              v301 = v4;
              v122 = v121;
              (*(v21 + 8))(v20, v25);
              v123 = sub_1D23D7C84(v120, v122, v346);

              *(v119 + 4) = v123;
              *(v119 + 12) = 2112;
              v124 = v23;
              v125 = _swift_stdlib_bridgeErrorToNSError();
              *(v119 + 14) = v125;
              *v304 = v125;
              _os_log_impl(&dword_1D226E000, v301, v323, "startGeneratingPreviewsStream - %s - configuration did cancel with error %@", v119, 0x16u);
              sub_1D22BD238(v304, qword_1EC6DA930, &qword_1D287E870);
              MEMORY[0x1D38A3520](v304, -1, -1);
              __swift_destroy_boxed_opaque_existential_0(v310);
              MEMORY[0x1D38A3520](v310, -1, -1);
              MEMORY[0x1D38A3520](v119, -1, -1);

              (*(v1 + 8))(v316, v326);
LABEL_121:
              v1 = v340;
              v236 = *(v340 + 1384);
              v237 = *(v340 + 1376);
              v174 = *(v340 + 1184);
              v330 = *(v340 + 1136);
              v238 = *(v340 + 1128);
              v239 = *(v340 + 1120);
              *(v340 + 616) = 0;
              sub_1D2878748();
              sub_1D22A576C(v237, v236);
              sub_1D22BCDC4(v3, v331, v0);

              (*(v238 + 8))(v330, v239);
LABEL_94:
              sub_1D22BD238(v174, &qword_1EC6DA490, &qword_1D2883648);
              v12 = *(v1 + 1160);
              goto LABEL_38;
            }

LABEL_120:

            (*(v21 + 8))(v20, v25);
            (*(v1 + 8))(v5, v326);
            goto LABEL_121;
          }
        }

        sub_1D22BCDC4(v3, v110, v0);
      }

      v150 = *(v1 + 984);
      v151 = v1;
      v152 = *(v1 + 952);
      v153 = v151[118];
      v154 = v151[86];
      sub_1D2872648();
      (*(v152 + 16))(v150, v154, v153);
      v155 = v23;
      v156 = sub_1D2873CA8();
      v157 = sub_1D28789F8();

      v158 = os_log_type_enabled(v156, v157);
      v159 = v151[154];
      v160 = v151[150];
      v161 = v151[149];
      v162 = v151[123];
      v163 = v151[119];
      v164 = v151[118];
      if (v158)
      {
        v165 = swift_slowAlloc();
        v317 = swift_slowAlloc();
        v325 = swift_slowAlloc();
        v346[0] = v325;
        *v165 = 136315394;
        sub_1D23B75AC(&qword_1ED8A6C90, MEMORY[0x1E69695E0]);
        v329 = v161;
        v336 = v159;
        v166 = sub_1D28795C8();
        v168 = v167;
        (*(v163 + 8))(v162, v164);
        v169 = sub_1D23D7C84(v166, v168, v346);

        *(v165 + 4) = v169;
        *(v165 + 12) = 2112;
        v170 = v23;
        v171 = _swift_stdlib_bridgeErrorToNSError();
        *(v165 + 14) = v171;
        *v317 = v171;
        _os_log_impl(&dword_1D226E000, v156, v157, "startGeneratingPreviewsStream - %s - configuration did receive error %@", v165, 0x16u);
        sub_1D22BD238(v317, qword_1EC6DA930, &qword_1D287E870);
        MEMORY[0x1D38A3520](v317, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v325);
        MEMORY[0x1D38A3520](v325, -1, -1);
        MEMORY[0x1D38A3520](v165, -1, -1);

        (*(v160 + 8))(v336, v329);
      }

      else
      {

        (*(v163 + 8))(v162, v164);
        (*(v160 + 8))(v159, v161);
      }

      v1 = v340;
      v172 = *(v340 + 1384);
      v173 = *(v340 + 1376);
      v174 = *(v340 + 1184);
      v175 = *(v340 + 1136);
      v176 = *(v340 + 1128);
      v177 = *(v340 + 1120);
      *(v340 + 600) = v23;
      v178 = v23;
      sub_1D2878748();
      sub_1D22A576C(v173, v172);

      (*(v176 + 8))(v175, v177);
      goto LABEL_94;
    }

    v0 = *(v1 + 824);
    v5 = v1;
    v147 = *(v1 + 816);
    v148 = *(v5 + 808);
    v21 = *(v5 + 728);
    v149 = *(v5 + 664);
    v41 = *(v5 + 656);
    swift_storeEnumTagMultiPayload();
    sub_1D2878738();
    (*(v147 + 8))(v0, v148);
    if (v149 > 1)
    {
      v68 = 1;
      v1 = v5;
      goto LABEL_43;
    }

    v1 = v5;
    if (*(v5 + 664))
    {
      v72 = 1;
      goto LABEL_48;
    }

LABEL_101:
    v200 = *(v1 + 208);
    v201 = *(v1 + 216);
    __swift_project_boxed_opaque_existential_1((v1 + 184), v200);
    v344 = (*(v201 + 136) + **(v201 + 136));
    v202 = swift_task_alloc();
    *(v1 + 1688) = v202;
    *v202 = v1;
    v202[1] = sub_1D23AEFA0;
    v203 = v200;
    v204 = v201;
    v205 = v344;
LABEL_102:

    return v205(v203, v204);
  }

  if (sub_1D2879618())
  {
    v42 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__staleParameterContextIdForConfiguration;
    v43 = *(v1 + 648);
    goto LABEL_24;
  }

LABEL_41:
  if (*(v1 + 664) > 1)
  {
    v68 = 0;
LABEL_43:
    *(v1 + 474) = v68;
    v69 = *(v1 + 208);
    v70 = *(v1 + 216);
    __swift_project_boxed_opaque_existential_1((v1 + 184), v69);
    v341 = (*(v70 + 128) + **(v70 + 128));
    v71 = swift_task_alloc();
    *(v1 + 1544) = v71;
    *v71 = v1;
    v71[1] = sub_1D23AAC6C;

    return v341(v69, v70);
  }

  if (!v298)
  {
    goto LABEL_101;
  }

  v72 = 0;
LABEL_48:
  *(v1 + 475) = v72;
  swift_beginAccess();
  v73 = 0;
  v6 = "ion; Expected same executor as ";
  v74 = "PreviewGenerationStarted";
  v75 = "predictable-seed-loading";
  v76 = *(v1 + 664);
  while (1)
  {
    *(v1 + 1552) = v73;
    if (v73 >= v76)
    {
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
      goto LABEL_161;
    }

    *(v1 + 1560) = v73 + 1;
    if (__OFADD__(v73, 1))
    {
      goto LABEL_159;
    }

    v77 = *(v1 + 672);
    v0 = v73 + v77;
    *(v1 + 1568) = v73 + v77;
    if (__OFADD__(v73, v77))
    {
      goto LABEL_160;
    }

    v41 = *(v1 + 1136);
    if ((sub_1D2871968() & 1) == 0)
    {
      break;
    }

    v73 = *(v1 + 1560);
    v76 = *(v1 + 664);
    if (v73 == v76)
    {
      goto LABEL_101;
    }
  }

  v126 = sub_1D28786D8();
  v127 = *(v1 + 944);
  v128 = *(v1 + 688);
  v129 = *(v1 + 952) + 16;
  if (v126)
  {
    v130 = *(v1 + 1096);
    sub_1D2872648();
    (*v129)(v130, v128, v127);
    v131 = sub_1D2873CA8();
    v132 = sub_1D28789F8();
    v133 = os_log_type_enabled(v131, v132);
    v134 = *(v1 + 1328);
    v135 = v1;
    v136 = *(v1 + 1200);
    v137 = v135[149];
    v138 = v135[137];
    v139 = v135[119];
    v140 = v135[118];
    if (v133)
    {
      v324 = v132;
      v141 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      v346[0] = v142;
      *v141 = 136315394;
      sub_1D23B75AC(&qword_1ED8A6C90, MEMORY[0x1E69695E0]);
      v328 = v137;
      v335 = v134;
      v143 = sub_1D28795C8();
      v145 = v144;
      (*(v139 + 8))(v138, v140);
      v146 = sub_1D23D7C84(v143, v145, v346);

      *(v141 + 4) = v146;
      *(v141 + 12) = 2048;
      *(v141 + 14) = v73;
      _os_log_impl(&dword_1D226E000, v131, v324, "startGeneratingPreviewsStream - %s - image index %ld - _selectedGenerator.isCancelled", v141, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v142);
      MEMORY[0x1D38A3520](v142, -1, -1);
      MEMORY[0x1D38A3520](v141, -1, -1);

      (*(v136 + 8))(v335, v328);
    }

    else
    {

      (*(v139 + 8))(v138, v140);
      (*(v136 + 8))(v134, v137);
    }

    v1 = v340;
    goto LABEL_101;
  }

  v179 = *(v1 + 1088);
  sub_1D2872648();
  v180 = *v129;
  *(v1 + 1576) = *v129;
  *(v1 + 1584) = v129 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v337 = v180;
  v180(v179, v128, v127);
  v181 = sub_1D2873CA8();
  v318 = sub_1D28789F8();
  v182 = os_log_type_enabled(v181, v318);
  v183 = *(v1 + 1320);
  v184 = v1;
  v185 = *(v1 + 1200);
  v186 = v184[149];
  v187 = v184[136];
  v188 = v184[119];
  v189 = v184[118];
  if (v182)
  {
    v190 = swift_slowAlloc();
    v302 = swift_slowAlloc();
    v346[0] = v302;
    *v190 = 136315394;
    sub_1D23B75AC(&qword_1ED8A6C90, MEMORY[0x1E69695E0]);
    v305 = v186;
    v311 = v183;
    v191 = sub_1D28795C8();
    v193 = v192;
    v300 = v181;
    v194 = *(v188 + 8);
    v194(v187, v189);
    v195 = v194;
    v196 = sub_1D23D7C84(v191, v193, v346);

    *(v190 + 4) = v196;
    *(v190 + 12) = 2048;
    *(v190 + 14) = v73;
    _os_log_impl(&dword_1D226E000, v300, v318, " %s - image index %ld - will generate", v190, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v302);
    MEMORY[0x1D38A3520](v302, -1, -1);
    MEMORY[0x1D38A3520](v190, -1, -1);

    v197 = *(v185 + 8);
    v199 = v305;
    v198 = v311;
  }

  else
  {

    v206 = *(v188 + 8);
    v206(v187, v189);
    v195 = v206;
    v197 = *(v185 + 8);
    v198 = v183;
    v199 = v186;
  }

  v299 = v197;
  v197(v198, v199);
  *(v340 + 1592) = v195;
  v306 = *(v340 + 1112);
  v312 = *(v340 + 1504);
  v207 = *(v340 + 944);
  v303 = *(v340 + 648);
  v208 = *(v340 + 952) + 8;
  sub_1D23C7CA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA190, &unk_1D28836B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D287F500;
  *(inited + 32) = 0x646E496567616D49;
  *(inited + 40) = 0xEA00000000007865;
  *(inited + 48) = sub_1D2878808();
  v210 = sub_1D25D6F4C(inited);
  swift_setDeallocating();
  sub_1D22BD238(inited + 32, &qword_1EC6DA198, &qword_1D28816A0);
  sub_1D24165B4(0x6E65476567616D49, 0xEF6E6F6974617265, 0xD000000000000018, 0x80000001D28B2AF0, v210, 1);
  v6 = v195;

  v337(v306, v303 + v312, v207);
  *(v340 + 1600) = sub_1D23B75AC(&unk_1ED8A6CA0, MEMORY[0x1E69695C8]);
  v211 = sub_1D2877F98();
  *(v340 + 1608) = v208 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v195(v306, v207);
  if ((v211 & 1) == 0)
  {
    sub_1D22BCEB8();
    v231 = swift_allocError();
    *v232 = 3;
    swift_willThrow();
    *(v340 + 1696) = v231;
    v233 = *(v340 + 208);
    v234 = *(v340 + 216);
    __swift_project_boxed_opaque_existential_1((v340 + 184), v233);
    v338 = (*(v234 + 136) + **(v234 + 136));
    v235 = swift_task_alloc();
    *(v340 + 1704) = v235;
    *v235 = v340;
    v235[1] = sub_1D23B0E18;
    v203 = v233;
    v204 = v234;
    v205 = v338;
    goto LABEL_102;
  }

  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  sub_1D23B7BB8();
  v212 = sub_1D2878A58();
  v213 = sub_1D2878068();
  v214 = [v212 BOOLForKey_];

  if (v214)
  {
    if (qword_1EC6D8C10 != -1)
    {
      swift_once();
    }

    v215 = sub_1D23B9E90((*(v340 + 1160) + *(*(v340 + 1144) + 92)), v73);
    if ((v216 & 1) == 0)
    {
      v315 = v215;
      v255 = *(v340 + 1080);
      v256 = *(v340 + 944);
      v257 = *(v340 + 688);
      sub_1D2872648();
      v337(v255, v257, v256);
      v3 = sub_1D2873CA8();
      v258 = sub_1D28789F8();
      v259 = os_log_type_enabled(v3, v258);
      v4 = *(v340 + 1312);
      v331 = *(v340 + 1192);
      v79 = *(v340 + 1080);
      v5 = *(v340 + 944);
      if (!v259)
      {
        goto LABEL_139;
      }

      v260 = v6;
      v261 = swift_slowAlloc();
      v313 = swift_slowAlloc();
      v346[0] = v313;
      *v261 = 136315650;
      sub_1D23B75AC(&qword_1ED8A6C90, MEMORY[0x1E69695E0]);
      v262 = sub_1D28795C8();
      v308 = v4;
      v264 = v263;
      v260(v79, v5);
      v265 = sub_1D23D7C84(v262, v264, v346);

      *(v261 + 4) = v265;
      *(v261 + 12) = 2048;
      *(v261 + 14) = v73;
      *(v261 + 22) = 2048;
      v4 = v315;
      *(v261 + 24) = v315;
      _os_log_impl(&dword_1D226E000, v3, v258, "startGeneratingPreviewsStream - %s - image index %ld - setting seed (cached) %ld", v261, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v313);
      MEMORY[0x1D38A3520](v313, -1, -1);
      MEMORY[0x1D38A3520](v261, -1, -1);

      v299(v308, v331);
      goto LABEL_140;
    }
  }

  v217 = sub_1D2878A58();
  v218 = sub_1D2878068();
  v219 = [v217 BOOLForKey_];

  if (!v219)
  {
    v240 = sub_1D2878A58();
    v241 = sub_1D2878068();
    v242 = [v240 BOOLForKey_];

    if (v242)
    {
      v243 = *(v340 + 1064);
      v244 = *(v340 + 944);
      v245 = *(v340 + 688);
      sub_1D2872648();
      v337(v243, v245, v244);
      v2 = sub_1D2873CA8();
      v246 = sub_1D28789F8();
      v247 = os_log_type_enabled(v2, v246);
      v4 = *(v340 + 1296);
      v331 = *(v340 + 1192);
      v19 = *(v340 + 1064);
      v3 = *(v340 + 944);
      if (!v247)
      {
        goto LABEL_142;
      }

      v248 = swift_slowAlloc();
      v249 = swift_slowAlloc();
      v346[0] = v249;
      *v248 = 136315650;
      sub_1D23B75AC(&qword_1ED8A6C90, MEMORY[0x1E69695E0]);
      v320 = v4;
      v250 = sub_1D28795C8();
      v251 = v6;
      v253 = v252;
      v251(v19, v3);
      v254 = sub_1D23D7C84(v250, v253, v346);

      *(v248 + 4) = v254;
      *(v248 + 12) = 2048;
      *(v248 + 14) = v73;
      *(v248 + 22) = 2048;
      *(v248 + 24) = 0;
      _os_log_impl(&dword_1D226E000, v2, v246, "startGeneratingPreviewsStream - %s - image index %ld - setting seed (fixed) %ld", v248, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v249);
      MEMORY[0x1D38A3520](v249, -1, -1);
      MEMORY[0x1D38A3520](v248, -1, -1);

      v299(v320, v331);
LABEL_143:
      v266 = v340;
      v283 = *(v340 + 208);
      v284 = *(v340 + 216);
      __swift_project_boxed_opaque_existential_1((v340 + 184), v283);
      (*(v284 + 72))(0, v283, v284);
      goto LABEL_144;
    }

    v266 = v340;
    if (v0 >= *(*(v340 + 680) + 16))
    {
      goto LABEL_144;
    }

    result = sub_1D23CE790();
    if (!result)
    {
      result = &unk_1F4DBDC68;
    }

    if (v0 < 0)
    {
      __break(1u);
    }

    else
    {
      v267 = *(result + 2);
      if (v267)
      {
        v5 = *(*(v340 + 680) + 8 * v0 + 32);
        v268 = *(v340 + 1056);
        v269 = *(v340 + 944);
        v270 = *(v340 + 688);
        v271 = v267 - 1;
        if (v271 >= v0)
        {
          v271 = v0;
        }

        v7 = result[v271 + 8];

        sub_1D2872648();
        v337(v268, v270, v269);
        v75 = sub_1D2873CA8();
        v272 = sub_1D28789F8();
        v273 = os_log_type_enabled(v75, v272);
        v21 = *(v340 + 1288);
        v331 = *(v340 + 1192);
        v41 = *(v340 + 1056);
        v74 = *(v340 + 944);
        if (v273)
        {
          v321 = v6;
          v274 = swift_slowAlloc();
          v314 = swift_slowAlloc();
          v346[0] = v314;
          *v274 = 136315906;
          sub_1D23B75AC(&qword_1ED8A6C90, MEMORY[0x1E69695E0]);
          v275 = v5;
          v276 = sub_1D28795C8();
          v309 = v21;
          v278 = v277;
          (v321)(v41, v74);
          v279 = v276;
          v5 = v275;
          v280 = sub_1D23D7C84(v279, v278, v346);

          *(v274 + 4) = v280;
          *(v274 + 12) = 2048;
          *(v274 + 14) = v73;
          *(v274 + 22) = 2048;
          *(v274 + 24) = v275;
          *(v274 + 32) = 2048;
          *(v274 + 34) = v7;
          _os_log_impl(&dword_1D226E000, v75, v272, "startGeneratingPreviewsStream - %s - image index %ld - setting seed (precomputed) %ld - scribble strength %f", v274, 0x2Au);
          __swift_destroy_boxed_opaque_existential_0(v314);
          MEMORY[0x1D38A3520](v314, -1, -1);
          MEMORY[0x1D38A3520](v274, -1, -1);

          v299(v309, v331);
          goto LABEL_162;
        }

LABEL_161:

        (v6)(v41, v74);
        v299(v21, v331);
LABEL_162:
        v266 = v340;
        v294 = *(v340 + 208);
        v295 = *(v340 + 216);
        __swift_project_boxed_opaque_existential_1((v340 + 184), v294);
        (*(v295 + 72))(v5, v294, v295);
        v296 = *(v340 + 208);
        v297 = *(v340 + 216);
        __swift_project_boxed_opaque_existential_1((v266 + 184), *(v266 + 208));
        (*(v297 + 80))(v296, v297, v7);
        if ((_s23ImagePlaygroundInternal13DebugSettingsC40shouldEnablePromptRewriteForPersonalizedSbvg_0() & 1) == 0)
        {
          goto LABEL_145;
        }

        goto LABEL_146;
      }
    }

    __break(1u);
    return result;
  }

  v220 = sub_1D23B6AAC(0x8000000000000000);
  if (qword_1EC6D8C10 != -1)
  {
    swift_once();
  }

  v221 = *(v340 + 1072);
  v222 = *(v340 + 944);
  v223 = *(v340 + 688);
  sub_1D23BA074(v220, *(v340 + 1160) + *(*(v340 + 1144) + 92), v73);
  sub_1D2872648();
  v337(v221, v223, v222);
  v3 = sub_1D2873CA8();
  v224 = sub_1D28789F8();
  v225 = os_log_type_enabled(v3, v224);
  v4 = v220;
  v326 = *(v340 + 1192);
  v333 = *(v340 + 1304);
  v47 = *(v340 + 1072);
  v5 = *(v340 + 944);
  if (v225)
  {
    v319 = v6;
    v226 = swift_slowAlloc();
    v307 = swift_slowAlloc();
    v346[0] = v307;
    *v226 = 136315650;
    sub_1D23B75AC(&qword_1ED8A6C90, MEMORY[0x1E69695E0]);
    v227 = sub_1D28795C8();
    v229 = v228;
    (v319)(v47, v5);
    v230 = sub_1D23D7C84(v227, v229, v346);
    v4 = v220;

    *(v226 + 4) = v230;
    *(v226 + 12) = 2048;
    *(v226 + 14) = v73;
    *(v226 + 22) = 2048;
    *(v226 + 24) = v220;
    _os_log_impl(&dword_1D226E000, v3, v224, "startGeneratingPreviewsStream - %s - image index %ld - setting seed (random) %ld", v226, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v307);
    MEMORY[0x1D38A3520](v307, -1, -1);
    MEMORY[0x1D38A3520](v226, -1, -1);

    v299(v333, v326);
    goto LABEL_140;
  }

LABEL_128:

  (v6)(v47, v5);
  v299(v333, v326);
LABEL_140:
  v266 = v340;
  v281 = *(v340 + 208);
  v282 = *(v340 + 216);
  __swift_project_boxed_opaque_existential_1((v340 + 184), v281);
  (*(v282 + 72))(v4, v281, v282);
LABEL_144:
  if ((_s23ImagePlaygroundInternal13DebugSettingsC40shouldEnablePromptRewriteForPersonalizedSbvg_0() & 1) == 0)
  {
LABEL_145:
    if (!sub_1D2391DAC())
    {
      goto LABEL_146;
    }

LABEL_153:
    v287 = 0;
    goto LABEL_155;
  }

LABEL_146:
  if ((_s23ImagePlaygroundInternal13DebugSettingsC43shouldEnablePromptRewriteForNonPersonalizedSbvg_0() & 1) == 0 && !sub_1D2391DAC())
  {
    goto LABEL_153;
  }

  v285 = *(v266 + 475);
  v286 = sub_1D23920F8(1, v0, 0);
  v287 = v285 & v286;
  if (v285)
  {
    v266 = v340;
    goto LABEL_155;
  }

  v266 = v340;
  if (v286)
  {
    *(v340 + 477) = 1;
    v288 = *(v340 + 208);
    v289 = *(v340 + 216);
    __swift_project_boxed_opaque_existential_1((v340 + 184), v288);
    v339 = (*(v289 + 64) + **(v289 + 64));
    v290 = swift_task_alloc();
    *(v340 + 1632) = v290;
    *v290 = v340;
    v290[1] = sub_1D23AC860;
    v203 = v288;
    v204 = v289;
    v205 = v339;
  }

  else
  {
LABEL_155:
    *(v266 + 476) = v287;
    v291 = *(v266 + 208);
    v292 = *(v266 + 216);
    __swift_project_boxed_opaque_existential_1((v266 + 184), v291);
    v345 = (*(v292 + 56) + **(v292 + 56));
    v293 = swift_task_alloc();
    *(v266 + 1616) = v293;
    *v293 = v266;
    v293[1] = sub_1D23AC2D8;
    v203 = v291;
    v204 = v292;
    v205 = v345;
  }

  return v205(v203, v204);
}

uint64_t sub_1D23A67D8()
{
  v2 = *v1;
  *(*v1 + 1520) = v0;

  v3 = *(v2 + 1368);
  v4 = *(v2 + 1360);
  if (v0)
  {
    v5 = sub_1D23AFA68;
  }

  else
  {
    v5 = sub_1D23A6914;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

float *sub_1D23A6914()
{
  v272 = v0;
  v2 = *(v0 + 1160);
  v3 = *(v2 + 56);
  if (v3)
  {
    v4 = *(v2 + 48);
    v5 = *(v0 + 208);
    v6 = *(v0 + 216);
    __swift_project_boxed_opaque_existential_1((v0 + 184), v5);
    v259 = (*(v6 + 32) + **(v6 + 32));
    v7 = swift_task_alloc();
    *(v0 + 1528) = v7;
    *v7 = v0;
    v7[1] = sub_1D23A8AB0;

    return (v259)(v4, v3, v5, v6);
  }

  v9 = *(v0 + 1520);
  v10 = *(v0 + 208);
  v11 = *(v0 + 216);
  __swift_project_boxed_opaque_existential_1((v0 + 184), v10);
  (*(v11 + 48))(v2, v10, v11);
  if (v9)
  {

    *(v0 + 584) = v9;
    v12 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0, &unk_1D287D430);
    if (swift_dynamicCast())
    {
      v14 = *(v0 + 480);
      v13 = *(v0 + 488);
      v15 = *(v0 + 496);
      if (v15 < 0x50)
      {
        *(v0 + 608) = v14;
        sub_1D233E72C(v14, v13, v15);
        if (swift_dynamicCast())
        {
          v260 = v13;
          v16 = *(v0 + 992);
          v17 = *(v0 + 952);
          v18 = *(v0 + 944);
          v19 = *(v0 + 688);
          (*(*(v0 + 704) + 8))(*(v0 + 720), *(v0 + 696));
          sub_1D2872648();
          (*(v17 + 16))(v16, v19, v18);
          v20 = v9;
          v21 = sub_1D2873CA8();
          v22 = sub_1D28789F8();

          v249 = v22;
          v23 = os_log_type_enabled(v21, v22);
          v24 = *(v0 + 1240);
          v25 = *(v0 + 1200);
          v254 = *(v0 + 1192);
          v26 = *(v0 + 992);
          v27 = *(v0 + 952);
          v28 = *(v0 + 944);
          if (v23)
          {
            v226 = v21;
            v29 = swift_slowAlloc();
            v225 = swift_slowAlloc();
            v239 = swift_slowAlloc();
            v271[0] = v239;
            *v29 = 136315394;
            sub_1D23B75AC(&qword_1ED8A6C90, MEMORY[0x1E69695E0]);
            v246 = v24;
            v30 = sub_1D28795C8();
            v232 = v25;
            v32 = v31;
            (*(v27 + 8))(v26, v28);
            v33 = sub_1D23D7C84(v30, v32, v271);

            *(v29 + 4) = v33;
            *(v29 + 12) = 2112;
            v34 = v9;
            v35 = _swift_stdlib_bridgeErrorToNSError();
            *(v29 + 14) = v35;
            *v225 = v35;
            _os_log_impl(&dword_1D226E000, v226, v249, "startGeneratingPreviewsStream - %s - configuration did cancel with error %@", v29, 0x16u);
            sub_1D22BD238(v225, qword_1EC6DA930, &qword_1D287E870);
            MEMORY[0x1D38A3520](v225, -1, -1);
            __swift_destroy_boxed_opaque_existential_0(v239);
            MEMORY[0x1D38A3520](v239, -1, -1);
            MEMORY[0x1D38A3520](v29, -1, -1);

            (*(v232 + 8))(v246, v254);
          }

          else
          {

            (*(v27 + 8))(v26, v28);
            (*(v25 + 8))(v24, v254);
          }

          v100 = *(v0 + 1384);
          v101 = *(v0 + 1376);
          v67 = *(v0 + 1184);
          v257 = *(v0 + 1136);
          v102 = *(v0 + 1128);
          v103 = *(v0 + 1120);
          *(v0 + 616) = 0;
          sub_1D2878748();
          sub_1D22A576C(v101, v100);
          sub_1D22BCDC4(v14, v260, v15);

          (*(v102 + 8))(v257, v103);
LABEL_20:
          sub_1D22BD238(v67, &qword_1EC6DA490, &qword_1D2883648);
          v72 = *(v0 + 1160);
          __swift_destroy_boxed_opaque_existential_0((v0 + 184));
          sub_1D23B8168(v72, type metadata accessor for ImageGeneration.GenerationParameters);

          v73 = *(v0 + 8);

          return v73();
        }
      }

      sub_1D22BCDC4(v14, v13, v15);
    }

    v44 = *(v0 + 984);
    v45 = *(v0 + 952);
    v46 = *(v0 + 944);
    v47 = *(v0 + 688);
    sub_1D2872648();
    (*(v45 + 16))(v44, v47, v46);
    v48 = v9;
    v49 = sub_1D2873CA8();
    v50 = sub_1D28789F8();

    v51 = os_log_type_enabled(v49, v50);
    v52 = *(v0 + 1232);
    v53 = *(v0 + 1200);
    v54 = *(v0 + 1192);
    v55 = *(v0 + 984);
    v56 = *(v0 + 952);
    v57 = *(v0 + 944);
    if (v51)
    {
      v262 = *(v0 + 1192);
      v58 = swift_slowAlloc();
      v247 = swift_slowAlloc();
      v250 = swift_slowAlloc();
      v271[0] = v250;
      *v58 = 136315394;
      sub_1D23B75AC(&qword_1ED8A6C90, MEMORY[0x1E69695E0]);
      v255 = v52;
      v59 = sub_1D28795C8();
      v240 = v50;
      v61 = v60;
      (*(v56 + 8))(v55, v57);
      v62 = sub_1D23D7C84(v59, v61, v271);

      *(v58 + 4) = v62;
      *(v58 + 12) = 2112;
      v63 = v9;
      v64 = _swift_stdlib_bridgeErrorToNSError();
      *(v58 + 14) = v64;
      *v247 = v64;
      _os_log_impl(&dword_1D226E000, v49, v240, "startGeneratingPreviewsStream - %s - configuration did receive error %@", v58, 0x16u);
      sub_1D22BD238(v247, qword_1EC6DA930, &qword_1D287E870);
      MEMORY[0x1D38A3520](v247, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v250);
      MEMORY[0x1D38A3520](v250, -1, -1);
      MEMORY[0x1D38A3520](v58, -1, -1);

      (*(v53 + 8))(v255, v262);
    }

    else
    {

      (*(v56 + 8))(v55, v57);
      (*(v53 + 8))(v52, v54);
    }

    v65 = *(v0 + 1384);
    v66 = *(v0 + 1376);
    v67 = *(v0 + 1184);
    v68 = *(v0 + 1136);
    v69 = *(v0 + 1128);
    v70 = *(v0 + 1120);
    *(v0 + 600) = v9;
    v71 = v9;
    sub_1D2878748();
    sub_1D22A576C(v66, v65);

    (*(v69 + 8))(v68, v70);
    goto LABEL_20;
  }

  v36 = *(v0 + 824);
  v37 = *(v0 + 816);
  v38 = *(v0 + 808);
  v39 = *(v0 + 664);
  v40 = *(v0 + 656);
  swift_storeEnumTagMultiPayload();
  sub_1D2878738();
  (*(v37 + 8))(v36, v38);
  if (v39 > 1)
  {
    *(v0 + 474) = 1;
    v41 = *(v0 + 208);
    v42 = *(v0 + 216);
    __swift_project_boxed_opaque_existential_1((v0 + 184), v41);
    v261 = (*(v42 + 128) + **(v42 + 128));
    v43 = swift_task_alloc();
    *(v0 + 1544) = v43;
    *v43 = v0;
    v43[1] = sub_1D23AAC6C;

    return (v261)(v41, v42);
  }

  if (!*(v0 + 664))
  {
LABEL_39:
    v120 = *(v0 + 208);
    v121 = *(v0 + 216);
    __swift_project_boxed_opaque_existential_1((v0 + 184), v120);
    v265 = (*(v121 + 136) + **(v121 + 136));
    v122 = swift_task_alloc();
    *(v0 + 1688) = v122;
    *v122 = v0;
    v123 = sub_1D23AEFA0;
LABEL_40:
    v122[1] = v123;
    v124 = v120;
    v125 = v121;
    v126 = v265;

    return (v126)(v124, v125);
  }

  *(v0 + 475) = 1;
  swift_beginAccess();
  v74 = 0;
  v75 = "ion; Expected same executor as ";
  v76 = "PreviewGenerationStarted";
  v77 = "predictable-seed-loading";
  v78 = *(v0 + 664);
  v79 = "predictable-seed-storing";
  while (1)
  {
    *(v0 + 1552) = v74;
    if (v74 >= v78)
    {
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    *(v0 + 1560) = v74 + 1;
    if (__OFADD__(v74, 1))
    {
      goto LABEL_90;
    }

    v80 = *(v0 + 672);
    v36 = v74 + v80;
    *(v0 + 1568) = v74 + v80;
    if (__OFADD__(v74, v80))
    {
      goto LABEL_91;
    }

    v40 = *(v0 + 1136);
    if ((sub_1D2871968() & 1) == 0)
    {
      break;
    }

    v74 = *(v0 + 1560);
    v78 = *(v0 + 664);
    if (v74 == v78)
    {
      goto LABEL_39;
    }
  }

  v81 = sub_1D28786D8();
  v82 = *(v0 + 944);
  v83 = *(v0 + 688);
  v84 = *(v0 + 952) + 16;
  if (v81)
  {
    v85 = *(v0 + 1096);
    sub_1D2872648();
    (*v84)(v85, v83, v82);
    v86 = sub_1D2873CA8();
    v87 = sub_1D28789F8();
    v88 = os_log_type_enabled(v86, v87);
    v89 = *(v0 + 1328);
    v90 = *(v0 + 1200);
    v91 = *(v0 + 1192);
    v92 = *(v0 + 1096);
    v93 = *(v0 + 952);
    v94 = *(v0 + 944);
    if (v88)
    {
      v251 = v87;
      v95 = swift_slowAlloc();
      v248 = swift_slowAlloc();
      v271[0] = v248;
      *v95 = 136315394;
      sub_1D23B75AC(&qword_1ED8A6C90, MEMORY[0x1E69695E0]);
      v256 = v91;
      v263 = v89;
      v96 = sub_1D28795C8();
      v98 = v97;
      (*(v93 + 8))(v92, v94);
      v99 = sub_1D23D7C84(v96, v98, v271);

      *(v95 + 4) = v99;
      *(v95 + 12) = 2048;
      *(v95 + 14) = v74;
      _os_log_impl(&dword_1D226E000, v86, v251, "startGeneratingPreviewsStream - %s - image index %ld - _selectedGenerator.isCancelled", v95, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v248);
      MEMORY[0x1D38A3520](v248, -1, -1);
      MEMORY[0x1D38A3520](v95, -1, -1);

      (*(v90 + 8))(v263, v256);
    }

    else
    {

      (*(v93 + 8))(v92, v94);
      (*(v90 + 8))(v89, v91);
    }

    goto LABEL_39;
  }

  v104 = *(v0 + 1088);
  sub_1D2872648();
  v105 = *v84;
  *(v0 + 1576) = *v84;
  *(v0 + 1584) = v84 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v264 = v105;
  (v105)(v104, v83, v82);
  v106 = sub_1D2873CA8();
  v241 = sub_1D28789F8();
  v107 = os_log_type_enabled(v106, v241);
  v108 = *(v0 + 1320);
  v109 = *(v0 + 1200);
  v258 = *(v0 + 1192);
  v110 = *(v0 + 1088);
  v111 = *(v0 + 952);
  v112 = *(v0 + 944);
  if (v107)
  {
    v113 = swift_slowAlloc();
    v227 = swift_slowAlloc();
    v271[0] = v227;
    *v113 = 136315394;
    sub_1D23B75AC(&qword_1ED8A6C90, MEMORY[0x1E69695E0]);
    v222 = v106;
    v114 = sub_1D28795C8();
    v233 = v108;
    v116 = v115;
    v224 = v109;
    v117 = *(v111 + 8);
    v117(v110, v112);
    v118 = sub_1D23D7C84(v114, v116, v271);

    *(v113 + 4) = v118;
    *(v113 + 12) = 2048;
    *(v113 + 14) = v74;
    _os_log_impl(&dword_1D226E000, v222, v241, " %s - image index %ld - will generate", v113, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v227);
    MEMORY[0x1D38A3520](v227, -1, -1);
    v119 = v117;
    MEMORY[0x1D38A3520](v113, -1, -1);

    v223 = *(v224 + 8);
    v223(v233, v258);
  }

  else
  {

    v119 = *(v111 + 8);
    v119(v110, v112);
    v223 = *(v109 + 8);
    v223(v108, v258);
  }

  v253 = v119;
  *(v0 + 1592) = v119;
  v127 = *(v0 + 1112);
  v128 = *(v0 + 944);
  v234 = *(v0 + 1504);
  v228 = *(v0 + 648);
  v129 = *(v0 + 952) + 8;
  sub_1D23C7CA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA190, &unk_1D28836B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D287F500;
  *(inited + 32) = 0x646E496567616D49;
  *(inited + 40) = 0xEA00000000007865;
  *(inited + 48) = sub_1D2878808();
  v131 = sub_1D25D6F4C(inited);
  swift_setDeallocating();
  sub_1D22BD238(inited + 32, &qword_1EC6DA198, &qword_1D28816A0);
  sub_1D24165B4(0x6E65476567616D49, 0xEF6E6F6974617265, 0xD000000000000018, 0x80000001D28B2AF0, v131, 1);

  (v264)(v127, v228 + v234, v128);
  *(v0 + 1600) = sub_1D23B75AC(&unk_1ED8A6CA0, MEMORY[0x1E69695C8]);
  v132 = sub_1D2877F98();
  *(v0 + 1608) = v129 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v253(v127, v128);
  if ((v132 & 1) == 0)
  {
    sub_1D22BCEB8();
    v158 = swift_allocError();
    *v159 = 3;
    swift_willThrow();
    *(v0 + 1696) = v158;
    v120 = *(v0 + 208);
    v121 = *(v0 + 216);
    __swift_project_boxed_opaque_existential_1((v0 + 184), v120);
    v265 = (*(v121 + 136) + **(v121 + 136));
    v122 = swift_task_alloc();
    *(v0 + 1704) = v122;
    *v122 = v0;
    v123 = sub_1D23B0E18;
    goto LABEL_40;
  }

  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  sub_1D23B7BB8();
  v133 = sub_1D2878A58();
  v134 = sub_1D2878068();
  v135 = [v133 BOOLForKey_];

  if (v135)
  {
    if (qword_1EC6D8C10 != -1)
    {
      swift_once();
    }

    v136 = sub_1D23B9E90((*(v0 + 1160) + *(*(v0 + 1144) + 92)), v74);
    if ((v137 & 1) == 0)
    {
      v244 = v136;
      v177 = *(v0 + 1080);
      v178 = *(v0 + 944);
      v179 = *(v0 + 688);
      sub_1D2872648();
      (v264)(v177, v179, v178);
      v180 = sub_1D2873CA8();
      v181 = sub_1D28789F8();
      v182 = os_log_type_enabled(v180, v181);
      v183 = *(v0 + 1312);
      v184 = *(v0 + 1192);
      v185 = *(v0 + 1080);
      v186 = *(v0 + 944);
      if (v182)
      {
        v252 = *(v0 + 1192);
        v187 = swift_slowAlloc();
        v237 = swift_slowAlloc();
        v271[0] = v237;
        *v187 = 136315650;
        sub_1D23B75AC(&qword_1ED8A6C90, MEMORY[0x1E69695E0]);
        v188 = sub_1D28795C8();
        v230 = v183;
        v190 = v189;
        v253(v185, v186);
        v191 = sub_1D23D7C84(v188, v190, v271);

        *(v187 + 4) = v191;
        *(v187 + 12) = 2048;
        *(v187 + 14) = v74;
        *(v187 + 22) = 2048;
        v148 = v244;
        *(v187 + 24) = v244;
        _os_log_impl(&dword_1D226E000, v180, v181, "startGeneratingPreviewsStream - %s - image index %ld - setting seed (cached) %ld", v187, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v237);
        MEMORY[0x1D38A3520](v237, -1, -1);
        MEMORY[0x1D38A3520](v187, -1, -1);

        v223(v230, v252);
      }

      else
      {

        v253(v185, v186);
        v223(v183, v184);
        v148 = v244;
      }

      goto LABEL_73;
    }
  }

  v138 = sub_1D2878A58();
  v139 = sub_1D2878068();
  v140 = [v138 BOOLForKey_];

  if (!v140)
  {
    v160 = sub_1D2878A58();
    v161 = sub_1D2878068();
    v162 = [v160 BOOLForKey_];

    if (v162)
    {
      v163 = *(v0 + 1064);
      v164 = *(v0 + 944);
      v165 = *(v0 + 688);
      sub_1D2872648();
      (v264)(v163, v165, v164);
      v166 = sub_1D2873CA8();
      v167 = sub_1D28789F8();
      v168 = os_log_type_enabled(v166, v167);
      v169 = *(v0 + 1296);
      v267 = *(v0 + 1192);
      v170 = *(v0 + 1064);
      v171 = *(v0 + 944);
      if (v168)
      {
        v172 = swift_slowAlloc();
        v243 = swift_slowAlloc();
        v271[0] = v243;
        *v172 = 136315650;
        sub_1D23B75AC(&qword_1ED8A6C90, MEMORY[0x1E69695E0]);
        v173 = sub_1D28795C8();
        v236 = v169;
        v175 = v174;
        v253(v170, v171);
        v176 = sub_1D23D7C84(v173, v175, v271);

        *(v172 + 4) = v176;
        *(v172 + 12) = 2048;
        *(v172 + 14) = v74;
        *(v172 + 22) = 2048;
        *(v172 + 24) = 0;
        _os_log_impl(&dword_1D226E000, v166, v167, "startGeneratingPreviewsStream - %s - image index %ld - setting seed (fixed) %ld", v172, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v243);
        MEMORY[0x1D38A3520](v243, -1, -1);
        MEMORY[0x1D38A3520](v172, -1, -1);

        v223(v236, v267);
      }

      else
      {

        v253(v170, v171);
        v223(v169, v267);
      }

      v207 = *(v0 + 208);
      v208 = *(v0 + 216);
      __swift_project_boxed_opaque_existential_1((v0 + 184), v207);
      (*(v208 + 72))(0, v207, v208);
      goto LABEL_76;
    }

    if (v36 >= *(*(v0 + 680) + 16))
    {
      goto LABEL_76;
    }

    result = sub_1D23CE790();
    if (!result)
    {
      result = &unk_1F4DBDC68;
    }

    if (v36 < 0)
    {
      __break(1u);
    }

    else
    {
      v192 = *(result + 2);
      if (v192)
      {
        v39 = *(*(v0 + 680) + 8 * v36 + 32);
        v193 = *(v0 + 1056);
        v194 = *(v0 + 944);
        v195 = *(v0 + 688);
        v196 = v192 - 1;
        if (v196 >= v36)
        {
          v196 = v36;
        }

        v1 = result[v196 + 8];

        sub_1D2872648();
        (v264)(v193, v195, v194);
        v77 = sub_1D2873CA8();
        v268 = sub_1D28789F8();
        v197 = os_log_type_enabled(v77, v268);
        v79 = *(v0 + 1288);
        v75 = *(v0 + 1192);
        v40 = *(v0 + 1056);
        v76 = *(v0 + 944);
        if (v197)
        {
          v245 = *(v0 + 1192);
          v198 = swift_slowAlloc();
          v238 = swift_slowAlloc();
          v271[0] = v238;
          *v198 = 136315906;
          sub_1D23B75AC(&qword_1ED8A6C90, MEMORY[0x1E69695E0]);
          v231 = v79;
          v199 = v39;
          v200 = sub_1D28795C8();
          v202 = v201;
          v253(v40, v76);
          v203 = v200;
          v39 = v199;
          v204 = sub_1D23D7C84(v203, v202, v271);

          *(v198 + 4) = v204;
          *(v198 + 12) = 2048;
          *(v198 + 14) = v74;
          *(v198 + 22) = 2048;
          *(v198 + 24) = v199;
          *(v198 + 32) = 2048;
          *(v198 + 34) = v1;
          _os_log_impl(&dword_1D226E000, v77, v268, "startGeneratingPreviewsStream - %s - image index %ld - setting seed (precomputed) %ld - scribble strength %f", v198, 0x2Au);
          __swift_destroy_boxed_opaque_existential_0(v238);
          MEMORY[0x1D38A3520](v238, -1, -1);
          MEMORY[0x1D38A3520](v198, -1, -1);

          v223(v231, v245);
          goto LABEL_93;
        }

LABEL_92:

        v253(v40, v76);
        v223(v79, v75);
LABEL_93:
        v218 = *(v0 + 208);
        v219 = *(v0 + 216);
        __swift_project_boxed_opaque_existential_1((v0 + 184), v218);
        (*(v219 + 72))(v39, v218, v219);
        v220 = *(v0 + 208);
        v221 = *(v0 + 216);
        __swift_project_boxed_opaque_existential_1((v0 + 184), v220);
        (*(v221 + 80))(v220, v221, v1);
        if ((_s23ImagePlaygroundInternal13DebugSettingsC40shouldEnablePromptRewriteForPersonalizedSbvg_0() & 1) == 0)
        {
          goto LABEL_77;
        }

        goto LABEL_78;
      }
    }

    __break(1u);
    return result;
  }

  v141 = sub_1D23B6AAC(0x8000000000000000);
  if (qword_1EC6D8C10 != -1)
  {
    swift_once();
  }

  v142 = *(v0 + 1072);
  v143 = *(v0 + 944);
  v144 = *(v0 + 688);
  sub_1D23BA074(v141, *(v0 + 1160) + *(*(v0 + 1144) + 92), v74);
  sub_1D2872648();
  (v264)(v142, v144, v143);
  v145 = sub_1D2873CA8();
  v266 = sub_1D28789F8();
  v146 = os_log_type_enabled(v145, v266);
  v147 = *(v0 + 1304);
  v148 = v141;
  v149 = *(v0 + 1192);
  v150 = *(v0 + 1072);
  v151 = *(v0 + 944);
  if (v146)
  {
    v242 = *(v0 + 1192);
    v152 = swift_slowAlloc();
    v235 = swift_slowAlloc();
    v271[0] = v235;
    *v152 = 136315650;
    sub_1D23B75AC(&qword_1ED8A6C90, MEMORY[0x1E69695E0]);
    v153 = sub_1D28795C8();
    v229 = v147;
    v154 = v148;
    v156 = v155;
    v253(v150, v151);
    v157 = sub_1D23D7C84(v153, v156, v271);
    v148 = v154;

    *(v152 + 4) = v157;
    *(v152 + 12) = 2048;
    *(v152 + 14) = v74;
    *(v152 + 22) = 2048;
    *(v152 + 24) = v154;
    _os_log_impl(&dword_1D226E000, v145, v266, "startGeneratingPreviewsStream - %s - image index %ld - setting seed (random) %ld", v152, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v235);
    MEMORY[0x1D38A3520](v235, -1, -1);
    MEMORY[0x1D38A3520](v152, -1, -1);

    v223(v229, v242);
  }

  else
  {

    v253(v150, v151);
    v223(v147, v149);
  }

LABEL_73:
  v205 = *(v0 + 208);
  v206 = *(v0 + 216);
  __swift_project_boxed_opaque_existential_1((v0 + 184), v205);
  (*(v206 + 72))(v148, v205, v206);
LABEL_76:
  if ((_s23ImagePlaygroundInternal13DebugSettingsC40shouldEnablePromptRewriteForPersonalizedSbvg_0() & 1) == 0)
  {
LABEL_77:
    if (!sub_1D2391DAC())
    {
      goto LABEL_78;
    }

LABEL_85:
    v211 = 0;
    goto LABEL_86;
  }

LABEL_78:
  if ((_s23ImagePlaygroundInternal13DebugSettingsC43shouldEnablePromptRewriteForNonPersonalizedSbvg_0() & 1) == 0 && !sub_1D2391DAC())
  {
    goto LABEL_85;
  }

  v209 = *(v0 + 475);
  v210 = sub_1D23920F8(1, v36, 0);
  v211 = v209 & v210;
  if ((v209 & 1) != 0 || (v210 & 1) == 0)
  {
LABEL_86:
    *(v0 + 476) = v211;
    v215 = *(v0 + 208);
    v216 = *(v0 + 216);
    __swift_project_boxed_opaque_existential_1((v0 + 184), v215);
    v270 = (*(v216 + 56) + **(v216 + 56));
    v217 = swift_task_alloc();
    *(v0 + 1616) = v217;
    *v217 = v0;
    v217[1] = sub_1D23AC2D8;
    v124 = v215;
    v125 = v216;
    v126 = v270;
  }

  else
  {
    *(v0 + 477) = 1;
    v212 = *(v0 + 208);
    v213 = *(v0 + 216);
    __swift_project_boxed_opaque_existential_1((v0 + 184), v212);
    v269 = (*(v213 + 64) + **(v213 + 64));
    v214 = swift_task_alloc();
    *(v0 + 1632) = v214;
    *v214 = v0;
    v214[1] = sub_1D23AC860;
    v124 = v212;
    v125 = v213;
    v126 = v269;
  }

  return (v126)(v124, v125);
}

uint64_t sub_1D23A8AB0()
{
  v2 = *v1;
  *(*v1 + 1536) = v0;

  v3 = *(v2 + 1368);
  v4 = *(v2 + 1360);
  if (v0)
  {
    v5 = sub_1D23B0440;
  }

  else
  {
    v5 = sub_1D23A8BEC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

float *sub_1D23A8BEC()
{
  v266 = v0;
  v2 = *(v0 + 1536);
  v3 = *(v0 + 1160);
  v4 = *(v0 + 208);
  v5 = *(v0 + 216);
  __swift_project_boxed_opaque_existential_1((v0 + 184), v4);
  (*(v5 + 48))(v3, v4, v5);
  if (v2)
  {

    *(v0 + 584) = v2;
    v6 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0, &unk_1D287D430);
    if (swift_dynamicCast())
    {
      v8 = *(v0 + 480);
      v7 = *(v0 + 488);
      v9 = *(v0 + 496);
      if (v9 < 0x50)
      {
        *(v0 + 608) = v8;
        sub_1D233E72C(v8, v7, v9);
        if (swift_dynamicCast())
        {
          v254 = v7;
          v10 = *(v0 + 992);
          v11 = *(v0 + 952);
          v12 = *(v0 + 944);
          v13 = *(v0 + 688);
          (*(*(v0 + 704) + 8))(*(v0 + 720), *(v0 + 696));
          sub_1D2872648();
          (*(v11 + 16))(v10, v13, v12);
          v14 = v2;
          v15 = sub_1D2873CA8();
          v16 = sub_1D28789F8();

          v244 = v16;
          v17 = os_log_type_enabled(v15, v16);
          v18 = *(v0 + 1240);
          v19 = *(v0 + 1200);
          v249 = *(v0 + 1192);
          v20 = *(v0 + 992);
          v21 = *(v0 + 952);
          v22 = *(v0 + 944);
          if (v17)
          {
            v221 = v15;
            v23 = swift_slowAlloc();
            v220 = swift_slowAlloc();
            v234 = swift_slowAlloc();
            v265[0] = v234;
            *v23 = 136315394;
            sub_1D23B75AC(&qword_1ED8A6C90, MEMORY[0x1E69695E0]);
            v241 = v18;
            v24 = sub_1D28795C8();
            v227 = v19;
            v26 = v25;
            (*(v21 + 8))(v20, v22);
            v27 = sub_1D23D7C84(v24, v26, v265);

            *(v23 + 4) = v27;
            *(v23 + 12) = 2112;
            v28 = v2;
            v29 = _swift_stdlib_bridgeErrorToNSError();
            *(v23 + 14) = v29;
            *v220 = v29;
            _os_log_impl(&dword_1D226E000, v221, v244, "startGeneratingPreviewsStream - %s - configuration did cancel with error %@", v23, 0x16u);
            sub_1D22BD238(v220, qword_1EC6DA930, &qword_1D287E870);
            MEMORY[0x1D38A3520](v220, -1, -1);
            __swift_destroy_boxed_opaque_existential_0(v234);
            MEMORY[0x1D38A3520](v234, -1, -1);
            MEMORY[0x1D38A3520](v23, -1, -1);

            (*(v227 + 8))(v241, v249);
          }

          else
          {

            (*(v21 + 8))(v20, v22);
            (*(v19 + 8))(v18, v249);
          }

          v95 = *(v0 + 1384);
          v96 = *(v0 + 1376);
          v62 = *(v0 + 1184);
          v252 = *(v0 + 1136);
          v97 = *(v0 + 1128);
          v98 = *(v0 + 1120);
          *(v0 + 616) = 0;
          sub_1D2878748();
          sub_1D22A576C(v96, v95);
          sub_1D22BCDC4(v8, v254, v9);

          (*(v97 + 8))(v252, v98);
LABEL_16:
          sub_1D22BD238(v62, &qword_1EC6DA490, &qword_1D2883648);
          v67 = *(v0 + 1160);
          __swift_destroy_boxed_opaque_existential_0((v0 + 184));
          sub_1D23B8168(v67, type metadata accessor for ImageGeneration.GenerationParameters);

          v68 = *(v0 + 8);

          return v68();
        }
      }

      sub_1D22BCDC4(v8, v7, v9);
    }

    v39 = *(v0 + 984);
    v40 = *(v0 + 952);
    v41 = *(v0 + 944);
    v42 = *(v0 + 688);
    sub_1D2872648();
    (*(v40 + 16))(v39, v42, v41);
    v43 = v2;
    v44 = sub_1D2873CA8();
    v45 = sub_1D28789F8();

    v46 = os_log_type_enabled(v44, v45);
    v47 = *(v0 + 1232);
    v48 = *(v0 + 1200);
    v49 = *(v0 + 1192);
    v50 = *(v0 + 984);
    v51 = *(v0 + 952);
    v52 = *(v0 + 944);
    if (v46)
    {
      v256 = *(v0 + 1192);
      v53 = swift_slowAlloc();
      v242 = swift_slowAlloc();
      v245 = swift_slowAlloc();
      v265[0] = v245;
      *v53 = 136315394;
      sub_1D23B75AC(&qword_1ED8A6C90, MEMORY[0x1E69695E0]);
      v250 = v47;
      v54 = sub_1D28795C8();
      v235 = v45;
      v56 = v55;
      (*(v51 + 8))(v50, v52);
      v57 = sub_1D23D7C84(v54, v56, v265);

      *(v53 + 4) = v57;
      *(v53 + 12) = 2112;
      v58 = v2;
      v59 = _swift_stdlib_bridgeErrorToNSError();
      *(v53 + 14) = v59;
      *v242 = v59;
      _os_log_impl(&dword_1D226E000, v44, v235, "startGeneratingPreviewsStream - %s - configuration did receive error %@", v53, 0x16u);
      sub_1D22BD238(v242, qword_1EC6DA930, &qword_1D287E870);
      MEMORY[0x1D38A3520](v242, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v245);
      MEMORY[0x1D38A3520](v245, -1, -1);
      MEMORY[0x1D38A3520](v53, -1, -1);

      (*(v48 + 8))(v250, v256);
    }

    else
    {

      (*(v51 + 8))(v50, v52);
      (*(v48 + 8))(v47, v49);
    }

    v60 = *(v0 + 1384);
    v61 = *(v0 + 1376);
    v62 = *(v0 + 1184);
    v63 = *(v0 + 1136);
    v64 = *(v0 + 1128);
    v65 = *(v0 + 1120);
    *(v0 + 600) = v2;
    v66 = v2;
    sub_1D2878748();
    sub_1D22A576C(v61, v60);

    (*(v64 + 8))(v63, v65);
    goto LABEL_16;
  }

  v30 = *(v0 + 824);
  v31 = *(v0 + 816);
  v32 = *(v0 + 808);
  v33 = *(v0 + 664);
  v34 = *(v0 + 656);
  swift_storeEnumTagMultiPayload();
  sub_1D2878738();
  (*(v31 + 8))(v30, v32);
  if (v33 > 1)
  {
    *(v0 + 474) = 1;
    v35 = *(v0 + 208);
    v36 = *(v0 + 216);
    __swift_project_boxed_opaque_existential_1((v0 + 184), v35);
    v255 = (*(v36 + 128) + **(v36 + 128));
    v37 = swift_task_alloc();
    *(v0 + 1544) = v37;
    *v37 = v0;
    v37[1] = sub_1D23AAC6C;

    return (v255)(v35, v36);
  }

  if (!*(v0 + 664))
  {
LABEL_35:
    v115 = *(v0 + 208);
    v116 = *(v0 + 216);
    __swift_project_boxed_opaque_existential_1((v0 + 184), v115);
    v259 = (*(v116 + 136) + **(v116 + 136));
    v117 = swift_task_alloc();
    *(v0 + 1688) = v117;
    *v117 = v0;
    v118 = sub_1D23AEFA0;
LABEL_36:
    v117[1] = v118;
    v119 = v115;
    v120 = v116;
    v121 = v259;

    return (v121)(v119, v120);
  }

  *(v0 + 475) = 1;
  swift_beginAccess();
  v69 = 0;
  v70 = "ion; Expected same executor as ";
  v71 = "PreviewGenerationStarted";
  v72 = "predictable-seed-loading";
  v73 = *(v0 + 664);
  v74 = "predictable-seed-storing";
  while (1)
  {
    *(v0 + 1552) = v69;
    if (v69 >= v73)
    {
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    *(v0 + 1560) = v69 + 1;
    if (__OFADD__(v69, 1))
    {
      goto LABEL_86;
    }

    v75 = *(v0 + 672);
    v30 = v69 + v75;
    *(v0 + 1568) = v69 + v75;
    if (__OFADD__(v69, v75))
    {
      goto LABEL_87;
    }

    v34 = *(v0 + 1136);
    if ((sub_1D2871968() & 1) == 0)
    {
      break;
    }

    v69 = *(v0 + 1560);
    v73 = *(v0 + 664);
    if (v69 == v73)
    {
      goto LABEL_35;
    }
  }

  v76 = sub_1D28786D8();
  v77 = *(v0 + 944);
  v78 = *(v0 + 688);
  v79 = *(v0 + 952) + 16;
  if (v76)
  {
    v80 = *(v0 + 1096);
    sub_1D2872648();
    (*v79)(v80, v78, v77);
    v81 = sub_1D2873CA8();
    v82 = sub_1D28789F8();
    v83 = os_log_type_enabled(v81, v82);
    v84 = *(v0 + 1328);
    v85 = *(v0 + 1200);
    v86 = *(v0 + 1192);
    v87 = *(v0 + 1096);
    v88 = *(v0 + 952);
    v89 = *(v0 + 944);
    if (v83)
    {
      v246 = v82;
      v90 = swift_slowAlloc();
      v243 = swift_slowAlloc();
      v265[0] = v243;
      *v90 = 136315394;
      sub_1D23B75AC(&qword_1ED8A6C90, MEMORY[0x1E69695E0]);
      v251 = v86;
      v257 = v84;
      v91 = sub_1D28795C8();
      v93 = v92;
      (*(v88 + 8))(v87, v89);
      v94 = sub_1D23D7C84(v91, v93, v265);

      *(v90 + 4) = v94;
      *(v90 + 12) = 2048;
      *(v90 + 14) = v69;
      _os_log_impl(&dword_1D226E000, v81, v246, "startGeneratingPreviewsStream - %s - image index %ld - _selectedGenerator.isCancelled", v90, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v243);
      MEMORY[0x1D38A3520](v243, -1, -1);
      MEMORY[0x1D38A3520](v90, -1, -1);

      (*(v85 + 8))(v257, v251);
    }

    else
    {

      (*(v88 + 8))(v87, v89);
      (*(v85 + 8))(v84, v86);
    }

    goto LABEL_35;
  }

  v99 = *(v0 + 1088);
  sub_1D2872648();
  v100 = *v79;
  *(v0 + 1576) = *v79;
  *(v0 + 1584) = v79 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v258 = v100;
  (v100)(v99, v78, v77);
  v101 = sub_1D2873CA8();
  v236 = sub_1D28789F8();
  v102 = os_log_type_enabled(v101, v236);
  v103 = *(v0 + 1320);
  v104 = *(v0 + 1200);
  v253 = *(v0 + 1192);
  v105 = *(v0 + 1088);
  v106 = *(v0 + 952);
  v107 = *(v0 + 944);
  if (v102)
  {
    v108 = swift_slowAlloc();
    v222 = swift_slowAlloc();
    v265[0] = v222;
    *v108 = 136315394;
    sub_1D23B75AC(&qword_1ED8A6C90, MEMORY[0x1E69695E0]);
    v217 = v101;
    v109 = sub_1D28795C8();
    v228 = v103;
    v111 = v110;
    v219 = v104;
    v112 = *(v106 + 8);
    v112(v105, v107);
    v113 = sub_1D23D7C84(v109, v111, v265);

    *(v108 + 4) = v113;
    *(v108 + 12) = 2048;
    *(v108 + 14) = v69;
    _os_log_impl(&dword_1D226E000, v217, v236, " %s - image index %ld - will generate", v108, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v222);
    MEMORY[0x1D38A3520](v222, -1, -1);
    v114 = v112;
    MEMORY[0x1D38A3520](v108, -1, -1);

    v218 = *(v219 + 8);
    v218(v228, v253);
  }

  else
  {

    v114 = *(v106 + 8);
    v114(v105, v107);
    v218 = *(v104 + 8);
    v218(v103, v253);
  }

  v248 = v114;
  *(v0 + 1592) = v114;
  v122 = *(v0 + 1112);
  v123 = *(v0 + 944);
  v229 = *(v0 + 1504);
  v223 = *(v0 + 648);
  v124 = *(v0 + 952) + 8;
  sub_1D23C7CA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA190, &unk_1D28836B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D287F500;
  *(inited + 32) = 0x646E496567616D49;
  *(inited + 40) = 0xEA00000000007865;
  *(inited + 48) = sub_1D2878808();
  v126 = sub_1D25D6F4C(inited);
  swift_setDeallocating();
  sub_1D22BD238(inited + 32, &qword_1EC6DA198, &qword_1D28816A0);
  sub_1D24165B4(0x6E65476567616D49, 0xEF6E6F6974617265, 0xD000000000000018, 0x80000001D28B2AF0, v126, 1);

  (v258)(v122, v223 + v229, v123);
  *(v0 + 1600) = sub_1D23B75AC(&unk_1ED8A6CA0, MEMORY[0x1E69695C8]);
  v127 = sub_1D2877F98();
  *(v0 + 1608) = v124 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v248(v122, v123);
  if ((v127 & 1) == 0)
  {
    sub_1D22BCEB8();
    v153 = swift_allocError();
    *v154 = 3;
    swift_willThrow();
    *(v0 + 1696) = v153;
    v115 = *(v0 + 208);
    v116 = *(v0 + 216);
    __swift_project_boxed_opaque_existential_1((v0 + 184), v115);
    v259 = (*(v116 + 136) + **(v116 + 136));
    v117 = swift_task_alloc();
    *(v0 + 1704) = v117;
    *v117 = v0;
    v118 = sub_1D23B0E18;
    goto LABEL_36;
  }

  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  sub_1D23B7BB8();
  v128 = sub_1D2878A58();
  v129 = sub_1D2878068();
  v130 = [v128 BOOLForKey_];

  if (v130)
  {
    if (qword_1EC6D8C10 != -1)
    {
      swift_once();
    }

    v131 = sub_1D23B9E90((*(v0 + 1160) + *(*(v0 + 1144) + 92)), v69);
    if ((v132 & 1) == 0)
    {
      v239 = v131;
      v172 = *(v0 + 1080);
      v173 = *(v0 + 944);
      v174 = *(v0 + 688);
      sub_1D2872648();
      (v258)(v172, v174, v173);
      v175 = sub_1D2873CA8();
      v176 = sub_1D28789F8();
      v177 = os_log_type_enabled(v175, v176);
      v178 = *(v0 + 1312);
      v179 = *(v0 + 1192);
      v180 = *(v0 + 1080);
      v181 = *(v0 + 944);
      if (v177)
      {
        v247 = *(v0 + 1192);
        v182 = swift_slowAlloc();
        v232 = swift_slowAlloc();
        v265[0] = v232;
        *v182 = 136315650;
        sub_1D23B75AC(&qword_1ED8A6C90, MEMORY[0x1E69695E0]);
        v183 = sub_1D28795C8();
        v225 = v178;
        v185 = v184;
        v248(v180, v181);
        v186 = sub_1D23D7C84(v183, v185, v265);

        *(v182 + 4) = v186;
        *(v182 + 12) = 2048;
        *(v182 + 14) = v69;
        *(v182 + 22) = 2048;
        v143 = v239;
        *(v182 + 24) = v239;
        _os_log_impl(&dword_1D226E000, v175, v176, "startGeneratingPreviewsStream - %s - image index %ld - setting seed (cached) %ld", v182, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v232);
        MEMORY[0x1D38A3520](v232, -1, -1);
        MEMORY[0x1D38A3520](v182, -1, -1);

        v218(v225, v247);
      }

      else
      {

        v248(v180, v181);
        v218(v178, v179);
        v143 = v239;
      }

      goto LABEL_69;
    }
  }

  v133 = sub_1D2878A58();
  v134 = sub_1D2878068();
  v135 = [v133 BOOLForKey_];

  if (!v135)
  {
    v155 = sub_1D2878A58();
    v156 = sub_1D2878068();
    v157 = [v155 BOOLForKey_];

    if (v157)
    {
      v158 = *(v0 + 1064);
      v159 = *(v0 + 944);
      v160 = *(v0 + 688);
      sub_1D2872648();
      (v258)(v158, v160, v159);
      v161 = sub_1D2873CA8();
      v162 = sub_1D28789F8();
      v163 = os_log_type_enabled(v161, v162);
      v164 = *(v0 + 1296);
      v261 = *(v0 + 1192);
      v165 = *(v0 + 1064);
      v166 = *(v0 + 944);
      if (v163)
      {
        v167 = swift_slowAlloc();
        v238 = swift_slowAlloc();
        v265[0] = v238;
        *v167 = 136315650;
        sub_1D23B75AC(&qword_1ED8A6C90, MEMORY[0x1E69695E0]);
        v168 = sub_1D28795C8();
        v231 = v164;
        v170 = v169;
        v248(v165, v166);
        v171 = sub_1D23D7C84(v168, v170, v265);

        *(v167 + 4) = v171;
        *(v167 + 12) = 2048;
        *(v167 + 14) = v69;
        *(v167 + 22) = 2048;
        *(v167 + 24) = 0;
        _os_log_impl(&dword_1D226E000, v161, v162, "startGeneratingPreviewsStream - %s - image index %ld - setting seed (fixed) %ld", v167, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v238);
        MEMORY[0x1D38A3520](v238, -1, -1);
        MEMORY[0x1D38A3520](v167, -1, -1);

        v218(v231, v261);
      }

      else
      {

        v248(v165, v166);
        v218(v164, v261);
      }

      v202 = *(v0 + 208);
      v203 = *(v0 + 216);
      __swift_project_boxed_opaque_existential_1((v0 + 184), v202);
      (*(v203 + 72))(0, v202, v203);
      goto LABEL_72;
    }

    if (v30 >= *(*(v0 + 680) + 16))
    {
      goto LABEL_72;
    }

    result = sub_1D23CE790();
    if (!result)
    {
      result = &unk_1F4DBDC68;
    }

    if (v30 < 0)
    {
      __break(1u);
    }

    else
    {
      v187 = *(result + 2);
      if (v187)
      {
        v33 = *(*(v0 + 680) + 8 * v30 + 32);
        v188 = *(v0 + 1056);
        v189 = *(v0 + 944);
        v190 = *(v0 + 688);
        v191 = v187 - 1;
        if (v191 >= v30)
        {
          v191 = v30;
        }

        v1 = result[v191 + 8];

        sub_1D2872648();
        (v258)(v188, v190, v189);
        v72 = sub_1D2873CA8();
        v262 = sub_1D28789F8();
        v192 = os_log_type_enabled(v72, v262);
        v74 = *(v0 + 1288);
        v70 = *(v0 + 1192);
        v34 = *(v0 + 1056);
        v71 = *(v0 + 944);
        if (v192)
        {
          v240 = *(v0 + 1192);
          v193 = swift_slowAlloc();
          v233 = swift_slowAlloc();
          v265[0] = v233;
          *v193 = 136315906;
          sub_1D23B75AC(&qword_1ED8A6C90, MEMORY[0x1E69695E0]);
          v226 = v74;
          v194 = v33;
          v195 = sub_1D28795C8();
          v197 = v196;
          v248(v34, v71);
          v198 = v195;
          v33 = v194;
          v199 = sub_1D23D7C84(v198, v197, v265);

          *(v193 + 4) = v199;
          *(v193 + 12) = 2048;
          *(v193 + 14) = v69;
          *(v193 + 22) = 2048;
          *(v193 + 24) = v194;
          *(v193 + 32) = 2048;
          *(v193 + 34) = v1;
          _os_log_impl(&dword_1D226E000, v72, v262, "startGeneratingPreviewsStream - %s - image index %ld - setting seed (precomputed) %ld - scribble strength %f", v193, 0x2Au);
          __swift_destroy_boxed_opaque_existential_0(v233);
          MEMORY[0x1D38A3520](v233, -1, -1);
          MEMORY[0x1D38A3520](v193, -1, -1);

          v218(v226, v240);
          goto LABEL_89;
        }

LABEL_88:

        v248(v34, v71);
        v218(v74, v70);
LABEL_89:
        v213 = *(v0 + 208);
        v214 = *(v0 + 216);
        __swift_project_boxed_opaque_existential_1((v0 + 184), v213);
        (*(v214 + 72))(v33, v213, v214);
        v215 = *(v0 + 208);
        v216 = *(v0 + 216);
        __swift_project_boxed_opaque_existential_1((v0 + 184), v215);
        (*(v216 + 80))(v215, v216, v1);
        if ((_s23ImagePlaygroundInternal13DebugSettingsC40shouldEnablePromptRewriteForPersonalizedSbvg_0() & 1) == 0)
        {
          goto LABEL_73;
        }

        goto LABEL_74;
      }
    }

    __break(1u);
    return result;
  }

  v136 = sub_1D23B6AAC(0x8000000000000000);
  if (qword_1EC6D8C10 != -1)
  {
    swift_once();
  }

  v137 = *(v0 + 1072);
  v138 = *(v0 + 944);
  v139 = *(v0 + 688);
  sub_1D23BA074(v136, *(v0 + 1160) + *(*(v0 + 1144) + 92), v69);
  sub_1D2872648();
  (v258)(v137, v139, v138);
  v140 = sub_1D2873CA8();
  v260 = sub_1D28789F8();
  v141 = os_log_type_enabled(v140, v260);
  v142 = *(v0 + 1304);
  v143 = v136;
  v144 = *(v0 + 1192);
  v145 = *(v0 + 1072);
  v146 = *(v0 + 944);
  if (v141)
  {
    v237 = *(v0 + 1192);
    v147 = swift_slowAlloc();
    v230 = swift_slowAlloc();
    v265[0] = v230;
    *v147 = 136315650;
    sub_1D23B75AC(&qword_1ED8A6C90, MEMORY[0x1E69695E0]);
    v148 = sub_1D28795C8();
    v224 = v142;
    v149 = v143;
    v151 = v150;
    v248(v145, v146);
    v152 = sub_1D23D7C84(v148, v151, v265);
    v143 = v149;

    *(v147 + 4) = v152;
    *(v147 + 12) = 2048;
    *(v147 + 14) = v69;
    *(v147 + 22) = 2048;
    *(v147 + 24) = v149;
    _os_log_impl(&dword_1D226E000, v140, v260, "startGeneratingPreviewsStream - %s - image index %ld - setting seed (random) %ld", v147, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v230);
    MEMORY[0x1D38A3520](v230, -1, -1);
    MEMORY[0x1D38A3520](v147, -1, -1);

    v218(v224, v237);
  }

  else
  {

    v248(v145, v146);
    v218(v142, v144);
  }

LABEL_69:
  v200 = *(v0 + 208);
  v201 = *(v0 + 216);
  __swift_project_boxed_opaque_existential_1((v0 + 184), v200);
  (*(v201 + 72))(v143, v200, v201);
LABEL_72:
  if ((_s23ImagePlaygroundInternal13DebugSettingsC40shouldEnablePromptRewriteForPersonalizedSbvg_0() & 1) == 0)
  {
LABEL_73:
    if (!sub_1D2391DAC())
    {
      goto LABEL_74;
    }

LABEL_81:
    v206 = 0;
    goto LABEL_82;
  }

LABEL_74:
  if ((_s23ImagePlaygroundInternal13DebugSettingsC43shouldEnablePromptRewriteForNonPersonalizedSbvg_0() & 1) == 0 && !sub_1D2391DAC())
  {
    goto LABEL_81;
  }

  v204 = *(v0 + 475);
  v205 = sub_1D23920F8(1, v30, 0);
  v206 = v204 & v205;
  if ((v204 & 1) != 0 || (v205 & 1) == 0)
  {
LABEL_82:
    *(v0 + 476) = v206;
    v210 = *(v0 + 208);
    v211 = *(v0 + 216);
    __swift_project_boxed_opaque_existential_1((v0 + 184), v210);
    v264 = (*(v211 + 56) + **(v211 + 56));
    v212 = swift_task_alloc();
    *(v0 + 1616) = v212;
    *v212 = v0;
    v212[1] = sub_1D23AC2D8;
    v119 = v210;
    v120 = v211;
    v121 = v264;
  }

  else
  {
    *(v0 + 477) = 1;
    v207 = *(v0 + 208);
    v208 = *(v0 + 216);
    __swift_project_boxed_opaque_existential_1((v0 + 184), v207);
    v263 = (*(v208 + 64) + **(v208 + 64));
    v209 = swift_task_alloc();
    *(v0 + 1632) = v209;
    *v209 = v0;
    v209[1] = sub_1D23AC860;
    v119 = v207;
    v120 = v208;
    v121 = v263;
  }

  return (v121)(v119, v120);
}

uint64_t sub_1D23AAC6C()
{
  v1 = *v0;

  v2 = *(v1 + 1368);
  v3 = *(v1 + 1360);

  return MEMORY[0x1EEE6DFA0](sub_1D23AAD8C, v3, v2);
}

float *sub_1D23AAD8C()
{
  v184 = v2;
  *(v2 + 475) = *(v2 + 474);
  swift_beginAccess();
  v5 = 0;
  v6 = "ion; Expected same executor as ";
  v7 = "PreviewGenerationStarted";
  v8 = "predictable-seed-loading";
  v9 = *(v2 + 664);
  v10 = "predictable-seed-storing";
  while (1)
  {
    *(v2 + 1552) = v5;
    if (v5 >= v9)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    *(v2 + 1560) = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_65;
    }

    v11 = *(v2 + 672);
    v0 = v5 + v11;
    *(v2 + 1568) = v5 + v11;
    if (__OFADD__(v5, v11))
    {
      goto LABEL_66;
    }

    v1 = *(v2 + 1136);
    if ((sub_1D2871968() & 1) == 0)
    {
      break;
    }

    v5 = *(v2 + 1560);
    v9 = *(v2 + 664);
    if (v5 == v9)
    {
      goto LABEL_14;
    }
  }

  v12 = sub_1D28786D8();
  v13 = *(v2 + 944);
  v14 = *(v2 + 688);
  v15 = *(v2 + 952) + 16;
  if (v12)
  {
    v16 = *(v2 + 1096);
    sub_1D2872648();
    (*v15)(v16, v14, v13);
    v17 = sub_1D2873CA8();
    v18 = sub_1D28789F8();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v2 + 1328);
    v21 = *(v2 + 1200);
    v22 = *(v2 + 1192);
    v23 = *(v2 + 1096);
    v24 = *(v2 + 952);
    v25 = *(v2 + 944);
    if (v19)
    {
      v170 = v18;
      v26 = swift_slowAlloc();
      v169 = swift_slowAlloc();
      v183[0] = v169;
      *v26 = 136315394;
      sub_1D23B75AC(&qword_1ED8A6C90, MEMORY[0x1E69695E0]);
      v173 = v22;
      v175 = v20;
      v27 = sub_1D28795C8();
      v29 = v28;
      (*(v24 + 8))(v23, v25);
      v30 = sub_1D23D7C84(v27, v29, v183);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2048;
      *(v26 + 14) = v5;
      _os_log_impl(&dword_1D226E000, v17, v170, "startGeneratingPreviewsStream - %s - image index %ld - _selectedGenerator.isCancelled", v26, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v169);
      MEMORY[0x1D38A3520](v169, -1, -1);
      MEMORY[0x1D38A3520](v26, -1, -1);

      (*(v21 + 8))(v175, v173);
    }

    else
    {

      (*(v24 + 8))(v23, v25);
      (*(v21 + 8))(v20, v22);
    }

LABEL_14:
    v47 = *(v2 + 208);
    v48 = *(v2 + 216);
    __swift_project_boxed_opaque_existential_1((v2 + 184), v47);
    v177 = (*(v48 + 136) + **(v48 + 136));
    v49 = swift_task_alloc();
    *(v2 + 1688) = v49;
    *v49 = v2;
    v50 = sub_1D23AEFA0;
LABEL_15:
    v49[1] = v50;
    v51 = v47;
    v52 = v48;
    v53 = v177;

    return v53(v51, v52);
  }

  v31 = *(v2 + 1088);
  sub_1D2872648();
  v32 = *v15;
  *(v2 + 1576) = *v15;
  *(v2 + 1584) = v15 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v176 = v32;
  v32(v31, v14, v13);
  v33 = sub_1D2873CA8();
  v164 = sub_1D28789F8();
  v34 = os_log_type_enabled(v33, v164);
  v35 = *(v2 + 1320);
  v36 = *(v2 + 1200);
  v174 = *(v2 + 1192);
  v37 = *(v2 + 1088);
  v38 = *(v2 + 952);
  v39 = *(v2 + 944);
  if (v34)
  {
    v40 = swift_slowAlloc();
    v153 = swift_slowAlloc();
    v183[0] = v153;
    *v40 = 136315394;
    sub_1D23B75AC(&qword_1ED8A6C90, MEMORY[0x1E69695E0]);
    log = v33;
    v41 = sub_1D28795C8();
    v158 = v35;
    v43 = v42;
    v152 = v36;
    v44 = *(v38 + 8);
    v44(v37, v39);
    v45 = sub_1D23D7C84(v41, v43, v183);

    *(v40 + 4) = v45;
    *(v40 + 12) = 2048;
    *(v40 + 14) = v5;
    _os_log_impl(&dword_1D226E000, log, v164, " %s - image index %ld - will generate", v40, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v153);
    MEMORY[0x1D38A3520](v153, -1, -1);
    v46 = v44;
    MEMORY[0x1D38A3520](v40, -1, -1);

    v151 = *(v152 + 8);
    v151(v158, v174);
  }

  else
  {

    v46 = *(v38 + 8);
    v46(v37, v39);
    v151 = *(v36 + 8);
    v151(v35, v174);
  }

  v172 = v46;
  *(v2 + 1592) = v46;
  v54 = *(v2 + 1112);
  v55 = *(v2 + 944);
  v159 = *(v2 + 1504);
  v154 = *(v2 + 648);
  v56 = *(v2 + 952) + 8;
  sub_1D23C7CA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA190, &unk_1D28836B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D287F500;
  *(inited + 32) = 0x646E496567616D49;
  *(inited + 40) = 0xEA00000000007865;
  *(inited + 48) = sub_1D2878808();
  v58 = sub_1D25D6F4C(inited);
  swift_setDeallocating();
  sub_1D22BD238(inited + 32, &qword_1EC6DA198, &qword_1D28816A0);
  sub_1D24165B4(0x6E65476567616D49, 0xEF6E6F6974617265, 0xD000000000000018, 0x80000001D28B2AF0, v58, 1);

  v176(v54, v154 + v159, v55);
  *(v2 + 1600) = sub_1D23B75AC(&unk_1ED8A6CA0, MEMORY[0x1E69695C8]);
  v59 = sub_1D2877F98();
  *(v2 + 1608) = v56 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v172(v54, v55);
  if ((v59 & 1) == 0)
  {
    sub_1D22BCEB8();
    v85 = swift_allocError();
    *v86 = 3;
    swift_willThrow();
    *(v2 + 1696) = v85;
    v47 = *(v2 + 208);
    v48 = *(v2 + 216);
    __swift_project_boxed_opaque_existential_1((v2 + 184), v47);
    v177 = (*(v48 + 136) + **(v48 + 136));
    v49 = swift_task_alloc();
    *(v2 + 1704) = v49;
    *v49 = v2;
    v50 = sub_1D23B0E18;
    goto LABEL_15;
  }

  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  sub_1D23B7BB8();
  v60 = sub_1D2878A58();
  v61 = sub_1D2878068();
  v62 = [v60 BOOLForKey_];

  if (v62)
  {
    if (qword_1EC6D8C10 != -1)
    {
      swift_once();
    }

    v63 = sub_1D23B9E90((*(v2 + 1160) + *(*(v2 + 1144) + 92)), v5);
    if ((v64 & 1) == 0)
    {
      v167 = v63;
      v104 = *(v2 + 1080);
      v105 = *(v2 + 944);
      v106 = *(v2 + 688);
      sub_1D2872648();
      v176(v104, v106, v105);
      v107 = sub_1D2873CA8();
      v108 = sub_1D28789F8();
      v109 = os_log_type_enabled(v107, v108);
      v110 = *(v2 + 1312);
      v111 = *(v2 + 1192);
      v112 = *(v2 + 1080);
      v113 = *(v2 + 944);
      if (v109)
      {
        v171 = *(v2 + 1192);
        v114 = swift_slowAlloc();
        v162 = swift_slowAlloc();
        v183[0] = v162;
        *v114 = 136315650;
        sub_1D23B75AC(&qword_1ED8A6C90, MEMORY[0x1E69695E0]);
        v115 = sub_1D28795C8();
        v156 = v110;
        v117 = v116;
        v172(v112, v113);
        v118 = sub_1D23D7C84(v115, v117, v183);

        *(v114 + 4) = v118;
        *(v114 + 12) = 2048;
        *(v114 + 14) = v5;
        *(v114 + 22) = 2048;
        v75 = v167;
        *(v114 + 24) = v167;
        _os_log_impl(&dword_1D226E000, v107, v108, "startGeneratingPreviewsStream - %s - image index %ld - setting seed (cached) %ld", v114, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v162);
        MEMORY[0x1D38A3520](v162, -1, -1);
        MEMORY[0x1D38A3520](v114, -1, -1);

        v151(v156, v171);
      }

      else
      {

        v172(v112, v113);
        v151(v110, v111);
        v75 = v167;
      }

      goto LABEL_48;
    }
  }

  v65 = sub_1D2878A58();
  v66 = sub_1D2878068();
  v67 = [v65 BOOLForKey_];

  if (v67)
  {
    v68 = sub_1D23B6AAC(0x8000000000000000);
    if (qword_1EC6D8C10 != -1)
    {
      swift_once();
    }

    v69 = *(v2 + 1072);
    v70 = *(v2 + 944);
    v71 = *(v2 + 688);
    sub_1D23BA074(v68, *(v2 + 1160) + *(*(v2 + 1144) + 92), v5);
    sub_1D2872648();
    v176(v69, v71, v70);
    v72 = sub_1D2873CA8();
    v178 = sub_1D28789F8();
    v73 = os_log_type_enabled(v72, v178);
    v74 = *(v2 + 1304);
    v75 = v68;
    v76 = *(v2 + 1192);
    v77 = *(v2 + 1072);
    v78 = *(v2 + 944);
    if (v73)
    {
      v165 = *(v2 + 1192);
      v79 = swift_slowAlloc();
      v160 = swift_slowAlloc();
      v183[0] = v160;
      *v79 = 136315650;
      sub_1D23B75AC(&qword_1ED8A6C90, MEMORY[0x1E69695E0]);
      v80 = sub_1D28795C8();
      v155 = v74;
      v81 = v75;
      v83 = v82;
      v172(v77, v78);
      v84 = sub_1D23D7C84(v80, v83, v183);
      v75 = v81;

      *(v79 + 4) = v84;
      *(v79 + 12) = 2048;
      *(v79 + 14) = v5;
      *(v79 + 22) = 2048;
      *(v79 + 24) = v81;
      _os_log_impl(&dword_1D226E000, v72, v178, "startGeneratingPreviewsStream - %s - image index %ld - setting seed (random) %ld", v79, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v160);
      MEMORY[0x1D38A3520](v160, -1, -1);
      MEMORY[0x1D38A3520](v79, -1, -1);

      v151(v155, v165);
    }

    else
    {

      v172(v77, v78);
      v151(v74, v76);
    }

LABEL_48:
    v133 = *(v2 + 208);
    v134 = *(v2 + 216);
    __swift_project_boxed_opaque_existential_1((v2 + 184), v133);
    (*(v134 + 72))(v75, v133, v134);
LABEL_51:
    if ((_s23ImagePlaygroundInternal13DebugSettingsC40shouldEnablePromptRewriteForPersonalizedSbvg_0() & 1) == 0)
    {
LABEL_52:
      if (!sub_1D2391DAC())
      {
        goto LABEL_53;
      }

LABEL_60:
      v139 = 0;
      goto LABEL_61;
    }

LABEL_53:
    if ((_s23ImagePlaygroundInternal13DebugSettingsC43shouldEnablePromptRewriteForNonPersonalizedSbvg_0() & 1) == 0 && !sub_1D2391DAC())
    {
      goto LABEL_60;
    }

    v137 = *(v2 + 475);
    v138 = sub_1D23920F8(1, v0, 0);
    v139 = v137 & v138;
    if (v137 & 1) == 0 && (v138)
    {
      *(v2 + 477) = 1;
      v140 = *(v2 + 208);
      v141 = *(v2 + 216);
      __swift_project_boxed_opaque_existential_1((v2 + 184), v140);
      v181 = (*(v141 + 64) + **(v141 + 64));
      v142 = swift_task_alloc();
      *(v2 + 1632) = v142;
      *v142 = v2;
      v142[1] = sub_1D23AC860;
      v51 = v140;
      v52 = v141;
      v53 = v181;

      return v53(v51, v52);
    }

LABEL_61:
    *(v2 + 476) = v139;
    v143 = *(v2 + 208);
    v144 = *(v2 + 216);
    __swift_project_boxed_opaque_existential_1((v2 + 184), v143);
    v182 = (*(v144 + 56) + **(v144 + 56));
    v145 = swift_task_alloc();
    *(v2 + 1616) = v145;
    *v145 = v2;
    v145[1] = sub_1D23AC2D8;
    v51 = v143;
    v52 = v144;
    v53 = v182;

    return v53(v51, v52);
  }

  v87 = sub_1D2878A58();
  v88 = sub_1D2878068();
  v89 = [v87 BOOLForKey_];

  if (v89)
  {
    v90 = *(v2 + 1064);
    v91 = *(v2 + 944);
    v92 = *(v2 + 688);
    sub_1D2872648();
    v176(v90, v92, v91);
    v93 = sub_1D2873CA8();
    v94 = sub_1D28789F8();
    v95 = os_log_type_enabled(v93, v94);
    v96 = *(v2 + 1296);
    v179 = *(v2 + 1192);
    v97 = *(v2 + 1064);
    v98 = *(v2 + 944);
    if (v95)
    {
      v99 = swift_slowAlloc();
      v166 = swift_slowAlloc();
      v183[0] = v166;
      *v99 = 136315650;
      sub_1D23B75AC(&qword_1ED8A6C90, MEMORY[0x1E69695E0]);
      v100 = sub_1D28795C8();
      v161 = v96;
      v102 = v101;
      v172(v97, v98);
      v103 = sub_1D23D7C84(v100, v102, v183);

      *(v99 + 4) = v103;
      *(v99 + 12) = 2048;
      *(v99 + 14) = v5;
      *(v99 + 22) = 2048;
      *(v99 + 24) = 0;
      _os_log_impl(&dword_1D226E000, v93, v94, "startGeneratingPreviewsStream - %s - image index %ld - setting seed (fixed) %ld", v99, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v166);
      MEMORY[0x1D38A3520](v166, -1, -1);
      MEMORY[0x1D38A3520](v99, -1, -1);

      v151(v161, v179);
    }

    else
    {

      v172(v97, v98);
      v151(v96, v179);
    }

    v135 = *(v2 + 208);
    v136 = *(v2 + 216);
    __swift_project_boxed_opaque_existential_1((v2 + 184), v135);
    (*(v136 + 72))(0, v135, v136);
    goto LABEL_51;
  }

  if (v0 >= *(*(v2 + 680) + 16))
  {
    goto LABEL_51;
  }

  result = sub_1D23CE790();
  if (!result)
  {
    result = &unk_1F4DBDC68;
  }

  if (v0 < 0)
  {
    __break(1u);
  }

  else
  {
    v120 = *(result + 2);
    if (v120)
    {
      v3 = *(*(v2 + 680) + 8 * v0 + 32);
      v121 = *(v2 + 1056);
      v122 = *(v2 + 944);
      v123 = *(v2 + 688);
      v124 = v120 - 1;
      if (v124 >= v0)
      {
        v124 = v0;
      }

      v4 = result[v124 + 8];

      sub_1D2872648();
      v176(v121, v123, v122);
      v8 = sub_1D2873CA8();
      v180 = sub_1D28789F8();
      v125 = os_log_type_enabled(v8, v180);
      v10 = *(v2 + 1288);
      v6 = *(v2 + 1192);
      v1 = *(v2 + 1056);
      v7 = *(v2 + 944);
      if (v125)
      {
        v168 = *(v2 + 1192);
        v126 = swift_slowAlloc();
        v163 = swift_slowAlloc();
        v183[0] = v163;
        *v126 = 136315906;
        sub_1D23B75AC(&qword_1ED8A6C90, MEMORY[0x1E69695E0]);
        v157 = v10;
        v127 = v3;
        v128 = sub_1D28795C8();
        v130 = v129;
        v172(v1, v7);
        v131 = v128;
        v3 = v127;
        v132 = sub_1D23D7C84(v131, v130, v183);

        *(v126 + 4) = v132;
        *(v126 + 12) = 2048;
        *(v126 + 14) = v5;
        *(v126 + 22) = 2048;
        *(v126 + 24) = v127;
        *(v126 + 32) = 2048;
        *(v126 + 34) = v4;
        _os_log_impl(&dword_1D226E000, v8, v180, "startGeneratingPreviewsStream - %s - image index %ld - setting seed (precomputed) %ld - scribble strength %f", v126, 0x2Au);
        __swift_destroy_boxed_opaque_existential_0(v163);
        MEMORY[0x1D38A3520](v163, -1, -1);
        MEMORY[0x1D38A3520](v126, -1, -1);

        v151(v157, v168);
        goto LABEL_68;
      }

LABEL_67:

      v172(v1, v7);
      v151(v10, v6);
LABEL_68:
      v146 = *(v2 + 208);
      v147 = *(v2 + 216);
      __swift_project_boxed_opaque_existential_1((v2 + 184), v146);
      (*(v147 + 72))(v3, v146, v147);
      v148 = *(v2 + 208);
      v149 = *(v2 + 216);
      __swift_project_boxed_opaque_existential_1((v2 + 184), v148);
      (*(v149 + 80))(v148, v149, v4);
      if ((_s23ImagePlaygroundInternal13DebugSettingsC40shouldEnablePromptRewriteForPersonalizedSbvg_0() & 1) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_53;
    }
  }

  __break(1u);
  return result;
}