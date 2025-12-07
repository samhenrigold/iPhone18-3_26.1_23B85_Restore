uint64_t sub_1A7DA87CC(uint64_t *a1)
{
  v39 = sub_1A7E21B00();
  v3 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v40 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v38 = v30 - v6;
  v7 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_1A7D6035C(v7);
    *a1 = v7;
  }

  v9 = *(v7 + 16);
  v32 = v7 + 32;
  v43[0] = v7 + 32;
  v43[1] = v9;
  v10 = sub_1A7E23080();
  if (v10 >= v9)
  {
    if (v9 >= 2)
    {
      v30[1] = a1;
      v30[2] = v1;
      v36 = (v3 + 8);
      v37 = (v3 + 16);
      v13 = -1;
      v14 = 1;
      v15 = v32;
      v31 = v9;
      do
      {
        v34 = v14;
        v35 = v13;
        v16 = *(v32 + 8 * v14);
        v44 = v13;
        v33 = v15;
        do
        {
          v17 = *v15;
          v18 = OBJC_IVAR___IDSEventTracingOperation_start;
          swift_beginAccess();
          v19 = v38;
          v20 = *v37;
          v21 = v39;
          (*v37)(v38, &v16[v18], v39);
          v22 = OBJC_IVAR___IDSEventTracingOperation_start;
          swift_beginAccess();
          v23 = v40;
          v20(v40, &v17[v22], v21);
          v24 = v16;
          v25 = v17;
          LOBYTE(v22) = sub_1A7E21AB0();
          v26 = *v36;
          (*v36)(v23, v21);
          v26(v19, v21);

          if ((v22 & 1) == 0)
          {
            break;
          }

          v27 = *v15;
          v16 = v15[1];
          *v15 = v16;
          v15[1] = v27;
          --v15;
        }

        while (!__CFADD__(v44++, 1));
        v14 = v34 + 1;
        v15 = v33 + 1;
        v13 = v35 - 1;
      }

      while (v34 + 1 != v31);
    }
  }

  else
  {
    v11 = v10;
    if (v9 >= 2)
    {
      type metadata accessor for EventTracingOperation(0);
      v12 = sub_1A7E22580();
      *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) = v9 >> 1;
    }

    else
    {
      v12 = MEMORY[0x1E69E7CC0];
    }

    v42[0] = ((v12 & 0xFFFFFFFFFFFFFF8) + 32);
    v42[1] = (v9 >> 1);
    sub_1A7DA8AD0(v42, v41, v43, v11);
    *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  return sub_1A7E22C00();
}

void sub_1A7DA8AD0(void ***a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v123 = a1;
  v133 = sub_1A7E21B00();
  MEMORY[0x1EEE9AC00](v133);
  v135 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v134 = &v120 - v11;
  v129 = a3;
  v12 = *(a3 + 8);
  if (v12 < 1)
  {
    v14 = MEMORY[0x1E69E7CC0];
LABEL_87:
    v13 = *v123;
    if (!*v123)
    {
      goto LABEL_126;
    }

    a3 = v14;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v115 = a3;
    }

    else
    {
LABEL_120:
      v115 = sub_1A7CF0024(a3);
    }

    v137 = v115;
    a3 = *(v115 + 2);
    if (a3 >= 2)
    {
      while (*v129)
      {
        v116 = *&v115[16 * a3];
        v117 = v115;
        v118 = *&v115[16 * a3 + 24];
        sub_1A7DA94F0((*v129 + 8 * v116), (*v129 + 8 * *&v115[16 * a3 + 16]), (*v129 + 8 * v118), v13);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v118 < v116)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v117 = sub_1A7CF0024(v117);
        }

        if (a3 - 2 >= *(v117 + 2))
        {
          goto LABEL_114;
        }

        v119 = &v117[16 * a3];
        *v119 = v116;
        *(v119 + 1) = v118;
        v137 = v117;
        sub_1A7CEFF98(a3 - 1);
        v115 = v137;
        a3 = *(v137 + 2);
        if (a3 <= 1)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_124;
    }

LABEL_98:

    return;
  }

  v13 = 0;
  v132 = (v10 + 16);
  v131 = (v10 + 8);
  v14 = MEMORY[0x1E69E7CC0];
  v122 = a4;
  while (1)
  {
    v15 = v13++;
    v124 = v15;
    if (v13 < v12)
    {
      v128 = v12;
      v121 = v5;
      v120 = v14;
      v16 = *v129;
      v17 = *(*v129 + 8 * v13);
      v125 = 8 * v15;
      v18 = (v16 + 8 * v15);
      v20 = *v18;
      v19 = v18 + 2;
      v21 = OBJC_IVAR___IDSEventTracingOperation_start;
      swift_beginAccess();
      v22 = *v132;
      v23 = v134;
      v24 = v133;
      (*v132)(v134, &v17[v21], v133);
      v25 = OBJC_IVAR___IDSEventTracingOperation_start;
      swift_beginAccess();
      v26 = &v20[v25];
      v27 = v135;
      v127 = v22;
      v22(v135, v26, v24);
      v28 = v17;
      v29 = v20;
      LODWORD(v130) = sub_1A7E21AB0();
      v30 = *v131;
      (*v131)(v27, v24);
      v126 = v30;
      (v30)(v23, v24);

      a3 = v124 + 2;
      while (1)
      {
        v13 = v128;
        if (v128 == a3)
        {
          break;
        }

        v32 = *(v19 - 1);
        v31 = *v19;
        v33 = OBJC_IVAR___IDSEventTracingOperation_start;
        swift_beginAccess();
        v34 = v134;
        v35 = v133;
        v136 = v19;
        v36 = v127;
        v127(v134, &v31[v33], v133);
        v37 = OBJC_IVAR___IDSEventTracingOperation_start;
        swift_beginAccess();
        v38 = v135;
        v36(v135, &v32[v37], v35);
        v39 = v136;
        v40 = v31;
        v41 = v32;
        LODWORD(v31) = sub_1A7E21AB0() & 1;
        v42 = v38;
        v43 = v126;
        (v126)(v42, v35);
        v43(v34, v35);

        ++a3;
        v19 = v39 + 1;
        if ((v130 & 1) != v31)
        {
          v13 = a3 - 1;
          break;
        }
      }

      v14 = v120;
      a4 = v122;
      v5 = v121;
      v15 = v124;
      v44 = v125;
      if (v130)
      {
        if (v13 < v124)
        {
          goto LABEL_117;
        }

        if (v124 < v13)
        {
          v45 = 8 * v13 - 8;
          v46 = v13;
          v47 = v124;
          do
          {
            if (v47 != --v46)
            {
              v49 = *v129;
              if (!*v129)
              {
                goto LABEL_123;
              }

              v48 = *(v49 + v44);
              *(v49 + v44) = *(v49 + v45);
              *(v49 + v45) = v48;
            }

            ++v47;
            v45 -= 8;
            v44 += 8;
          }

          while (v47 < v46);
        }
      }
    }

    v50 = v129[1];
    if (v13 < v50)
    {
      if (__OFSUB__(v13, v15))
      {
        goto LABEL_116;
      }

      if (v13 - v15 < a4)
      {
        v51 = (v15 + a4);
        if (__OFADD__(v15, a4))
        {
          goto LABEL_118;
        }

        if (v51 >= v50)
        {
          v51 = v129[1];
        }

        if (v51 < v15)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v13 != v51)
        {
          break;
        }
      }
    }

LABEL_35:
    if (v13 < v15)
    {
      goto LABEL_115;
    }

    v68 = v14;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v14 = v68;
    }

    else
    {
      v14 = sub_1A7CCC08C(0, *(v68 + 2) + 1, 1, v68);
    }

    a3 = *(v14 + 2);
    v69 = *(v14 + 3);
    v70 = a3 + 1;
    if (a3 >= v69 >> 1)
    {
      v14 = sub_1A7CCC08C((v69 > 1), a3 + 1, 1, v14);
    }

    *(v14 + 2) = v70;
    v71 = &v14[16 * a3];
    *(v71 + 4) = v124;
    *(v71 + 5) = v13;
    v72 = *v123;
    if (!*v123)
    {
      goto LABEL_125;
    }

    if (a3)
    {
      while (1)
      {
        v73 = v70 - 1;
        if (v70 >= 4)
        {
          break;
        }

        if (v70 == 3)
        {
          v74 = *(v14 + 4);
          v75 = *(v14 + 5);
          v84 = __OFSUB__(v75, v74);
          v76 = v75 - v74;
          v77 = v84;
LABEL_55:
          if (v77)
          {
            goto LABEL_104;
          }

          v90 = &v14[16 * v70];
          v92 = *v90;
          v91 = *(v90 + 1);
          v93 = __OFSUB__(v91, v92);
          v94 = v91 - v92;
          v95 = v93;
          if (v93)
          {
            goto LABEL_107;
          }

          v96 = &v14[16 * v73 + 32];
          v98 = *v96;
          v97 = *(v96 + 1);
          v84 = __OFSUB__(v97, v98);
          v99 = v97 - v98;
          if (v84)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v94, v99))
          {
            goto LABEL_111;
          }

          if (v94 + v99 >= v76)
          {
            if (v76 < v99)
            {
              v73 = v70 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v100 = &v14[16 * v70];
        v102 = *v100;
        v101 = *(v100 + 1);
        v84 = __OFSUB__(v101, v102);
        v94 = v101 - v102;
        v95 = v84;
LABEL_69:
        if (v95)
        {
          goto LABEL_106;
        }

        v103 = &v14[16 * v73];
        v105 = *(v103 + 4);
        v104 = *(v103 + 5);
        v84 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v84)
        {
          goto LABEL_109;
        }

        if (v106 < v94)
        {
          goto LABEL_3;
        }

LABEL_76:
        a3 = v73 - 1;
        if (v73 - 1 >= v70)
        {
          __break(1u);
LABEL_100:
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
          goto LABEL_119;
        }

        if (!*v129)
        {
          goto LABEL_122;
        }

        v111 = v14;
        v112 = *&v14[16 * a3 + 32];
        v113 = *&v14[16 * v73 + 40];
        sub_1A7DA94F0((*v129 + 8 * v112), (*v129 + 8 * *&v14[16 * v73 + 32]), (*v129 + 8 * v113), v72);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v113 < v112)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v111 = sub_1A7CF0024(v111);
        }

        if (a3 >= *(v111 + 2))
        {
          goto LABEL_101;
        }

        v114 = &v111[16 * a3];
        *(v114 + 4) = v112;
        *(v114 + 5) = v113;
        v137 = v111;
        sub_1A7CEFF98(v73);
        v14 = v137;
        v70 = *(v137 + 2);
        if (v70 <= 1)
        {
          goto LABEL_3;
        }
      }

      v78 = &v14[16 * v70 + 32];
      v79 = *(v78 - 64);
      v80 = *(v78 - 56);
      v84 = __OFSUB__(v80, v79);
      v81 = v80 - v79;
      if (v84)
      {
        goto LABEL_102;
      }

      v83 = *(v78 - 48);
      v82 = *(v78 - 40);
      v84 = __OFSUB__(v82, v83);
      v76 = v82 - v83;
      v77 = v84;
      if (v84)
      {
        goto LABEL_103;
      }

      v85 = &v14[16 * v70];
      v87 = *v85;
      v86 = *(v85 + 1);
      v84 = __OFSUB__(v86, v87);
      v88 = v86 - v87;
      if (v84)
      {
        goto LABEL_105;
      }

      v84 = __OFADD__(v76, v88);
      v89 = v76 + v88;
      if (v84)
      {
        goto LABEL_108;
      }

      if (v89 >= v81)
      {
        v107 = &v14[16 * v73 + 32];
        v109 = *v107;
        v108 = *(v107 + 1);
        v84 = __OFSUB__(v108, v109);
        v110 = v108 - v109;
        if (v84)
        {
          goto LABEL_112;
        }

        if (v76 < v110)
        {
          v73 = v70 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v12 = v129[1];
    a4 = v122;
    if (v13 >= v12)
    {
      goto LABEL_87;
    }
  }

  v120 = v14;
  v121 = v5;
  v130 = *v129;
  a3 = v130 + 8 * v13 - 8;
  v52 = (v15 - v13);
  v125 = v51;
LABEL_28:
  v128 = v13;
  v53 = *(v130 + 8 * v13);
  v126 = v52;
  v54 = v52;
  v127 = a3;
  while (1)
  {
    v136 = v54;
    v55 = *a3;
    v56 = OBJC_IVAR___IDSEventTracingOperation_start;
    swift_beginAccess();
    v57 = *v132;
    v58 = v134;
    v59 = v133;
    (*v132)(v134, &v53[v56], v133);
    v60 = OBJC_IVAR___IDSEventTracingOperation_start;
    swift_beginAccess();
    v61 = v135;
    v57(v135, &v55[v60], v59);
    v62 = v53;
    v63 = v55;
    LOBYTE(v60) = sub_1A7E21AB0();
    v64 = *v131;
    (*v131)(v61, v59);
    v64(v58, v59);

    if ((v60 & 1) == 0)
    {
LABEL_27:
      v13 = v128 + 1;
      a3 = v127 + 8;
      v52 = v126 - 1;
      if ((v128 + 1) != v125)
      {
        goto LABEL_28;
      }

      v13 = v125;
      v5 = v121;
      v14 = v120;
      v15 = v124;
      goto LABEL_35;
    }

    v65 = v136;
    if (!v130)
    {
      break;
    }

    v66 = *a3;
    v53 = *(a3 + 8);
    *a3 = v53;
    *(a3 + 8) = v66;
    a3 -= 8;
    v67 = __CFADD__(v65, 1);
    v54 = (v65 + 1);
    if (v67)
    {
      goto LABEL_27;
    }
  }

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
}

uint64_t sub_1A7DA94F0(void **a1, void **a2, void **a3, void **a4)
{
  v55 = sub_1A7E21B00();
  v8 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v56 = &v49 - v11;
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
    if (a4 != a2 || &a2[v15] <= a4)
    {
      memmove(a4, a2, 8 * v15);
    }

    v60 = &a4[v15];
    if (a3 - a2 < 8 || a2 <= a1)
    {
      v31 = a2;
    }

    else
    {
      v50 = (v8 + 8);
      v51 = (v8 + 16);
      v59 = a4;
      v54 = a1;
      do
      {
        v49 = a2;
        v32 = a2 - 1;
        v33 = a3 - 1;
        v34 = v60;
        v52 = a2 - 1;
        while (1)
        {
          v58 = v33;
          v53 = v33 + 1;
          v35 = *--v34;
          v36 = *v32;
          v37 = OBJC_IVAR___IDSEventTracingOperation_start;
          swift_beginAccess();
          v38 = *v51;
          v39 = v55;
          v40 = v56;
          (*v51)(v56, &v35[v37], v55);
          v41 = OBJC_IVAR___IDSEventTracingOperation_start;
          swift_beginAccess();
          v42 = v57;
          v38(v57, &v36[v41], v39);
          v43 = v35;
          v44 = v36;
          LOBYTE(v41) = sub_1A7E21AB0();
          v45 = *v50;
          (*v50)(v42, v39);
          v45(v40, v39);

          if (v41)
          {
            break;
          }

          v46 = v58;
          if (v53 != v60)
          {
            *v58 = *v34;
          }

          v33 = v46 - 1;
          v60 = v34;
          v32 = v52;
          if (v34 <= v59)
          {
            v60 = v34;
            a4 = v59;
            v31 = v49;
            goto LABEL_39;
          }
        }

        v47 = v54;
        a3 = v58;
        v31 = v52;
        if (v53 != v49)
        {
          *v58 = *v52;
        }

        a4 = v59;
        if (v60 <= v59)
        {
          break;
        }

        a2 = v31;
      }

      while (v31 > v47);
    }
  }

  else
  {
    if (a4 != a1 || &a1[v13] <= a4)
    {
      memmove(a4, a1, 8 * v13);
    }

    v60 = &a4[v13];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v52 = (v8 + 8);
      v53 = (v8 + 16);
      v16 = a2;
      v58 = a3;
      while (1)
      {
        v59 = a4;
        v54 = a1;
        v17 = *v16;
        v18 = *a4;
        v19 = OBJC_IVAR___IDSEventTracingOperation_start;
        swift_beginAccess();
        v20 = *v53;
        v21 = v55;
        v22 = v56;
        (*v53)(v56, &v17[v19], v55);
        v23 = OBJC_IVAR___IDSEventTracingOperation_start;
        swift_beginAccess();
        v24 = v57;
        v20(v57, &v18[v23], v21);
        v25 = v17;
        v26 = v18;
        LOBYTE(v18) = sub_1A7E21AB0();
        v27 = *v52;
        (*v52)(v24, v21);
        v27(v22, v21);

        if ((v18 & 1) == 0)
        {
          break;
        }

        v28 = v16;
        v29 = v54;
        v30 = v54 == v16++;
        a4 = v59;
        if (!v30)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v29 + 1;
        if (a4 >= v60 || v16 >= v58)
        {
          goto LABEL_20;
        }
      }

      v28 = v59;
      a4 = v59 + 1;
      v29 = v54;
      if (v54 == v59)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v29 = *v28;
      goto LABEL_18;
    }

LABEL_20:
    v31 = a1;
  }

LABEL_39:
  if (v31 != a4 || v31 >= (a4 + ((v60 - a4 + (v60 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v31, a4, 8 * (v60 - a4));
  }

  return 1;
}

uint64_t sub_1A7DA99D0(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = sub_1A7CD162C(a1);
    if (v14)
    {
      v3 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      v17 = *v1;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_1A7DFCDAC(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_1A7DC8BA0();
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_1A7E22DB0();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_1A7E22DA0();
  v8 = sub_1A7DA9B1C(v4, v7);

  v9 = sub_1A7CD162C(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_1A7DFCDAC(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_1A7DA9B1C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1A7CC7FFC(&qword_1EB2B50D8, &qword_1A7E4F800);
    v2 = sub_1A7E22E10();
    v19 = v2;
    sub_1A7E22D90();
    v3 = sub_1A7E22DC0();
    if (v3)
    {
      v4 = v3;
      sub_1A7CD1EB4();
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for EventTracingOperation(0);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1A7DC2C60(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_1A7E22960();
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
        v5 = sub_1A7E22DC0();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_1A7DA9D40(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a3 ^ a4;

  if (v7 >= 0x4000)
  {
    while (1)
    {
      v12 = sub_1A7E229E0();
      v14 = v13;
      v15 = sub_1A7E229B0();
      v16 = sub_1A7E223C0();
      if (!v17)
      {
        break;
      }

      if (v12 == v16 && v17 == v14)
      {
      }

      else
      {
        v11 = sub_1A7E230D0();

        if ((v11 & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      if ((v15 ^ a4) < 0x4000)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
LABEL_2:
    sub_1A7E223C0();
    v9 = v8;

    if (v9)
    {
LABEL_3:

      return 0;
    }
  }

  return 1;
}

unint64_t sub_1A7DA9EB0(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for IDSRegistrationEventTracing(uint64_t a1)
{
  result = qword_1EB2B3140;
  if (!qword_1EB2B3140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A7DA9FC4()
{
  result = qword_1EB2B71C8;
  if (!qword_1EB2B71C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B71C8);
  }

  return result;
}

uint64_t sub_1A7DAA018@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;
}

uint64_t sub_1A7DAA6C8(uint64_t a1)
{
  result = sub_1A7E22060();
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

uint64_t sub_1A7DAA790(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1A7E230D0() & 1;
  }
}

unint64_t sub_1A7DAA7E8()
{
  result = qword_1EB2B2890;
  if (!qword_1EB2B2890)
  {
    sub_1A7CD1EB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B2890);
  }

  return result;
}

__n128 IDSLinkSelectionStrategy.strategy.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR___IDSLinkSelectionStrategy_strategy);
  swift_beginAccess();
  v4 = v3[1].n128_u8[0];
  v5 = v3[1].n128_u8[1];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u8[0] = v4;
  a1[1].n128_u8[1] = v5;
  return result;
}

void IDSLinkSelectionStrategy.strategy.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  v6 = v1 + OBJC_IVAR___IDSLinkSelectionStrategy_strategy;
  swift_beginAccess();
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 16) = v4;
  *(v6 + 17) = v5;
}

char *static IDSLinkSelectionStrategy.default.getter()
{
  v0 = [objc_allocWithZone(IDSLinkSelectionStrategy) init];
  v1 = &v0[OBJC_IVAR___IDSLinkSelectionStrategy_strategy];
  swift_beginAccess();
  *v1 = xmmword_1A7E43F70;
  *(v1 + 8) = 1;
  return v0;
}

char *IDSLinkSelectionStrategy.init(strategy:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = &v4[OBJC_IVAR___IDSLinkSelectionStrategy_strategy];
  swift_beginAccess();
  *v5 = v1;
  *(v5 + 1) = v2;
  v5[16] = v3;
  v5[17] = 0;
  return v4;
}

char *static IDSLinkSelectionStrategy.create(withJSON:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1EB2B4870 != -1)
  {
    swift_once();
  }

  sub_1A7DAAC88();
  sub_1A7E21590();
  if (!v2)
  {
    v3 = [objc_allocWithZone(IDSLinkSelectionStrategy) init];
    v4 = &v3[OBJC_IVAR___IDSLinkSelectionStrategy_strategy];
    swift_beginAccess();
    *v4 = v6;
    *(v4 + 1) = v7;
    v4[16] = v8;
    v4[17] = 0;
  }

  return v3;
}

unint64_t sub_1A7DAAC88()
{
  result = qword_1EB2B7250;
  if (!qword_1EB2B7250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7250);
  }

  return result;
}

char *static IDSLinkSelectionStrategy.adaptive(withAllowedOverheadPerPacket:allowedPacketsPerSecond:)(uint64_t a1, double a2)
{
  v4 = [objc_allocWithZone(IDSLinkSelectionStrategy) init];
  v5 = &v4[OBJC_IVAR___IDSLinkSelectionStrategy_strategy];
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  *(v5 + 8) = 0;
  return v4;
}

void IDSLinkSelectionStrategy.description.getter()
{
  v1 = v0 + OBJC_IVAR___IDSLinkSelectionStrategy_strategy;
  swift_beginAccess();
  if (*(v1 + 17))
  {
    __break(1u);
  }

  else
  {
    LinkSelectionStrategy.description.getter();
  }
}

void __swiftcall IDSLinkSelectionStrategy.init()(IDSLinkSelectionStrategy *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id IDSLinkSelectionStrategy.init()()
{
  v1 = v0 + OBJC_IVAR___IDSLinkSelectionStrategy_strategy;
  *(v1 + 16) = 256;
  *v1 = 0;
  *(v1 + 8) = 0;
  v3.super_class = IDSLinkSelectionStrategy;
  return objc_msgSendSuper2(&v3, sel_init);
}

unint64_t type metadata accessor for IDSLinkSelectionStrategy()
{
  result = qword_1EB2B7258;
  if (!qword_1EB2B7258)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB2B7258);
  }

  return result;
}

unint64_t sub_1A7DAB35C()
{
  result = qword_1EB2B7268;
  if (!qword_1EB2B7268)
  {
    sub_1A7CC9830(&qword_1EB2B7260, &qword_1A7E4F818);
    sub_1A7DAB3E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7268);
  }

  return result;
}

unint64_t sub_1A7DAB3E0()
{
  result = qword_1EB2B7270;
  if (!qword_1EB2B7270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7270);
  }

  return result;
}

uint64_t sub_1A7DAB434(__int16 a1)
{
  if (a1)
  {
    v1 = 0x6C6C65436E6F4ELL;
    if (a1 == 1)
    {
      v2 = 0xE700000000000000;
    }

    else
    {
      v1 = 7958081;
      v2 = 0xE300000000000000;
    }
  }

  else
  {
    v2 = 0xE400000000000000;
    v1 = 1819043139;
  }

  v3 = HIBYTE(a1);
  MEMORY[0x1AC561C90](v1, v2);

  MEMORY[0x1AC561C90](45, 0xE100000000000000);
  v4 = 0xE700000000000000;
  v5 = 0x6C6C65436E6F4ELL;
  if (v3 != 1)
  {
    v5 = 7958081;
    v4 = 0xE300000000000000;
  }

  if (v3)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1819043139;
  }

  if (v3)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  MEMORY[0x1AC561C90](v6, v7);

  MEMORY[0x1AC561C90](0, 0xE000000000000000);
}

uint64_t sub_1A7DAB560(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = (a1 | a2) == 0;
    if (a1 | a2)
    {
      v4 = 0x726576656ELL;
    }

    else
    {
      v4 = 0x737961776C61;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    sub_1A7E22B70();
    MEMORY[0x1AC561C90](0xD000000000000021, 0x80000001A7EB1080);
    sub_1A7DAB658(a1, *&a2);
    MEMORY[0x1AC561C90](41, 0xE100000000000000);
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  MEMORY[0x1AC561C90](v4, v5);
}

uint64_t sub_1A7DAB658(uint64_t a1, double a2)
{
  sub_1A7E22B70();

  sub_1A7E22B70();
  MEMORY[0x1AC561C90](0xD000000000000011, 0x80000001A7EB1040);
  sub_1A7DAB778(a2);
  MEMORY[0x1AC561C90](41, 0xE100000000000000);
  MEMORY[0x1AC561C90](0, 0xE000000000000000);

  MEMORY[0x1AC561C90](41, 0xE100000000000000);
  MEMORY[0x1AC561C90](0xD000000000000015, 0x80000001A7EB1060);
}

uint64_t sub_1A7DAB778(double a1)
{
  sub_1A7E22B70();
  MEMORY[0x1AC561C90](0xD000000000000021, 0x80000001A7EB0FE0);
  v1 = sub_1A7E23090();
  MEMORY[0x1AC561C90](v1);

  MEMORY[0x1AC561C90](0xD000000000000024, 0x80000001A7EB1010);
  sub_1A7E227A0();
  MEMORY[0x1AC561C90](0, 0xE000000000000000);
}

void *static LinkSelectionStrategy.adaptive(allowedOverheadPerPacket:allowedPacketsPerSecond:)@<X0>(void *result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = *result;
  *(a2 + 8) = a3;
  *(a2 + 16) = 0;
  return result;
}

unint64_t LinkSelectionStrategy.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1A7E22B70();

  MEMORY[0x1AC561C90](0x746163696C707564, 0xEC0000003D6E6F69);
  sub_1A7DAB560(v1, v2, v3);
  MEMORY[0x1AC561C90](0, 0xE000000000000000);

  MEMORY[0x1AC561C90](41, 0xE100000000000000);
  return 0xD000000000000012;
}

uint64_t sub_1A7DAB9CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7365747962 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A7E230D0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A7DABA50(uint64_t a1)
{
  v2 = sub_1A7DAEAE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DABA8C(uint64_t a1)
{
  v2 = sub_1A7DAEAE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LinkSelectionStrategy.QualityOverhead.ByteOverhead.encode(to:)(void *a1)
{
  v2 = sub_1A7CC7FFC(&qword_1EB2B7278, &qword_1A7E4F820);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DAEAE4();
  sub_1A7E23260();
  sub_1A7E23020();
  return (*(v3 + 8))(v5, v2);
}

uint64_t LinkSelectionStrategy.QualityOverhead.ByteOverhead.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1A7CC7FFC(&qword_1EB2B7288, &qword_1A7E4F828);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DAEAE4();
  sub_1A7E23250();
  if (!v2)
  {
    v9 = sub_1A7E22F20();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
  }

  return sub_1A7B0CD6C(a1);
}

uint64_t sub_1A7DABD6C(void *a1)
{
  v2 = sub_1A7CC7FFC(&qword_1EB2B7278, &qword_1A7E4F820);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DAEAE4();
  sub_1A7E23260();
  sub_1A7E23020();
  return (*(v3 + 8))(v5, v2);
}

IDSFoundation::LinkSelectionStrategy::QualityOverhead __swiftcall LinkSelectionStrategy.QualityOverhead.init(allowedOverheadPerExistingPacket:allowedAdditionalPacketsPerSecond:)(IDSFoundation::LinkSelectionStrategy::QualityOverhead::ByteOverhead allowedOverheadPerExistingPacket, Swift::Double allowedAdditionalPacketsPerSecond)
{
  *v2 = *allowedOverheadPerExistingPacket.bytes;
  *(v2 + 8) = allowedAdditionalPacketsPerSecond;
  result.allowedAdditionalPacketsPerSecond = allowedAdditionalPacketsPerSecond;
  result.allowedOverheadPerExistingPacket = allowedOverheadPerExistingPacket;
  return result;
}

uint64_t LinkSelectionStrategy.QualityOverhead.description.getter()
{
  sub_1A7E22B70();
  MEMORY[0x1AC561C90](0xD000000000000021, 0x80000001A7EB0FE0);
  v0 = sub_1A7E23090();
  MEMORY[0x1AC561C90](v0);

  MEMORY[0x1AC561C90](0xD000000000000024, 0x80000001A7EB1010);
  sub_1A7E227A0();
  return 0;
}

unint64_t sub_1A7DAC008()
{
  if (*v0)
  {
    return 0xD000000000000021;
  }

  else
  {
    return 0xD000000000000020;
  }
}

uint64_t sub_1A7DAC040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000020 && 0x80000001A7EB0A40 == a2 || (sub_1A7E230D0() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001A7EB0A70 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1A7E230D0();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1A7DAC124(uint64_t a1)
{
  v2 = sub_1A7DAEB38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DAC160(uint64_t a1)
{
  v2 = sub_1A7DAEB38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LinkSelectionStrategy.QualityOverhead.encode(to:)(void *a1)
{
  v4 = sub_1A7CC7FFC(&qword_1EB2B7290, &qword_1A7E4F830);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-v6];
  v8 = *v1;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DAEB38();
  sub_1A7E23260();
  v11 = v8;
  v10[7] = 0;
  sub_1A7DAEB8C();
  sub_1A7E23030();
  if (!v2)
  {
    v10[6] = 1;
    sub_1A7E23010();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t LinkSelectionStrategy.QualityOverhead.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = sub_1A7CC7FFC(&qword_1EB2B72A8, &qword_1A7E4F838);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-v7];
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DAEB38();
  sub_1A7E23250();
  if (!v2)
  {
    v13[7] = 0;
    sub_1A7DAEBE0();
    sub_1A7E22F30();
    v9 = v14;
    v13[6] = 1;
    sub_1A7E22F10();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 1) = v11;
  }

  return sub_1A7B0CD6C(a1);
}

uint64_t LinkSelectionStrategy.QualityStrategy.description.getter()
{
  v1 = *(v0 + 8);
  sub_1A7E22B70();
  MEMORY[0x1AC561C90](0xD000000000000011, 0x80000001A7EB1040);
  sub_1A7DAB778(v1);
  MEMORY[0x1AC561C90](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1A7DAC5E4(uint64_t a1)
{
  v2 = sub_1A7DAEC88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DAC620(uint64_t a1)
{
  v2 = sub_1A7DAEC88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7DAC678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001A7EB10B0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1A7E230D0();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1A7DAC70C(uint64_t a1)
{
  v2 = sub_1A7DAEC34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DAC748(uint64_t a1)
{
  v2 = sub_1A7DAEC34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LinkSelectionStrategy.QualityStrategy.encode(to:)(void *a1)
{
  v3 = sub_1A7CC7FFC(&qword_1EB2B72B8, &qword_1A7E4F840);
  v4 = *(v3 - 8);
  v16 = v3;
  v17 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - v5;
  v7 = sub_1A7CC7FFC(&qword_1EB2B72C0, &qword_1A7E4F848);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - v9;
  v11 = *v1;
  v12 = v1[1];
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DAEC34();
  sub_1A7E23260();
  sub_1A7DAEC88();
  sub_1A7E22F80();
  v18 = v11;
  v19 = v12;
  sub_1A7DAECDC();
  v13 = v16;
  sub_1A7E23030();
  (*(v17 + 8))(v6, v13);
  return (*(v8 + 8))(v10, v7);
}

uint64_t LinkSelectionStrategy.QualityStrategy.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v24 = a2;
  v4 = sub_1A7CC7FFC(&qword_1EB2B72E0, &qword_1A7E4F850);
  v32 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - v5;
  v7 = sub_1A7CC7FFC(&qword_1EB2B72E8, &unk_1A7E4F858);
  v25 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DAEC34();
  sub_1A7E23250();
  if (v2)
  {
    goto LABEL_6;
  }

  v23 = a1;
  v10 = v32;
  v11 = v25;
  v12 = sub_1A7E22F70();
  v13 = (2 * *(v12 + 16)) | 1;
  v28 = v12;
  v29 = v12 + 32;
  v30 = 0;
  v31 = v13;
  if ((sub_1A7CDB53C() & 1) != 0 || v30 != v31 >> 1)
  {
    v14 = sub_1A7E22BD0();
    swift_allocError();
    v15 = v7;
    v17 = v16;
    sub_1A7CC7FFC(&qword_1EB2B4EC8, &qword_1A7E42100);
    *v17 = &type metadata for LinkSelectionStrategy.QualityStrategy;
    sub_1A7E22E90();
    sub_1A7E22BC0();
    (*(*(v14 - 8) + 104))(v17, *MEMORY[0x1E69E6AF8], v14);
    swift_willThrow();
    (*(v11 + 8))(v9, v15);
    swift_unknownObjectRelease();
    a1 = v23;
LABEL_6:
    v20 = a1;
    return sub_1A7B0CD6C(v20);
  }

  sub_1A7DAEC88();
  sub_1A7E22E70();
  sub_1A7DAED30();
  sub_1A7E22F30();
  (*(v10 + 8))(v6, v4);
  (*(v11 + 8))(v9, v7);
  swift_unknownObjectRelease();
  v19 = v27;
  v20 = v23;
  v21 = v24;
  *v24 = v26;
  v21[1] = v19;
  return sub_1A7B0CD6C(v20);
}

uint64_t sub_1A7DACD68()
{
  v1 = *(v0 + 8);
  sub_1A7E22B70();
  MEMORY[0x1AC561C90](0xD000000000000011, 0x80000001A7EB1040);
  sub_1A7DAB778(v1);
  MEMORY[0x1AC561C90](41, 0xE100000000000000);
  return 0;
}

unint64_t LinkSelectionStrategy.QualityThreshold.description.getter()
{
  v1 = *(v0 + 8);
  sub_1A7E22B70();

  sub_1A7E22B70();
  MEMORY[0x1AC561C90](0xD000000000000011, 0x80000001A7EB1040);
  sub_1A7DAB778(v1);
  MEMORY[0x1AC561C90](41, 0xE100000000000000);
  MEMORY[0x1AC561C90](0, 0xE000000000000000);

  MEMORY[0x1AC561C90](41, 0xE100000000000000);
  return 0xD000000000000015;
}

uint64_t sub_1A7DACF1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x537974696C617571 && a2 == 0xEF79676574617274)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A7E230D0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A7DACFAC(uint64_t a1)
{
  v2 = sub_1A7DAEDD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DACFE8(uint64_t a1)
{
  v2 = sub_1A7DAEDD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7DAD034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1869903201 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A7E230D0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A7DAD0BC(uint64_t a1)
{
  v2 = sub_1A7DAED84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DAD0F8(uint64_t a1)
{
  v2 = sub_1A7DAED84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LinkSelectionStrategy.QualityThreshold.encode(to:)(void *a1)
{
  v3 = sub_1A7CC7FFC(&qword_1EB2B72F8, &qword_1A7E4F868);
  v4 = *(v3 - 8);
  v16 = v3;
  v17 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - v5;
  v7 = sub_1A7CC7FFC(&qword_1EB2B7300, &qword_1A7E4F870);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - v9;
  v11 = *v1;
  v12 = v1[1];
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DAED84();
  sub_1A7E23260();
  sub_1A7DAEDD8();
  sub_1A7E22F80();
  v18 = v11;
  v19 = v12;
  sub_1A7DAEE2C();
  v13 = v16;
  sub_1A7E23030();
  (*(v17 + 8))(v6, v13);
  return (*(v8 + 8))(v10, v7);
}

uint64_t LinkSelectionStrategy.QualityThreshold.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v24 = a2;
  v4 = sub_1A7CC7FFC(&qword_1EB2B7320, &qword_1A7E4F878);
  v32 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - v5;
  v7 = sub_1A7CC7FFC(&qword_1EB2B7328, &qword_1A7E4F880);
  v25 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DAED84();
  sub_1A7E23250();
  if (v2)
  {
    goto LABEL_6;
  }

  v23 = a1;
  v10 = v32;
  v11 = v25;
  v12 = sub_1A7E22F70();
  v13 = (2 * *(v12 + 16)) | 1;
  v28 = v12;
  v29 = v12 + 32;
  v30 = 0;
  v31 = v13;
  if ((sub_1A7CDB53C() & 1) != 0 || v30 != v31 >> 1)
  {
    v14 = sub_1A7E22BD0();
    swift_allocError();
    v15 = v7;
    v17 = v16;
    sub_1A7CC7FFC(&qword_1EB2B4EC8, &qword_1A7E42100);
    *v17 = &type metadata for LinkSelectionStrategy.QualityThreshold;
    sub_1A7E22E90();
    sub_1A7E22BC0();
    (*(*(v14 - 8) + 104))(v17, *MEMORY[0x1E69E6AF8], v14);
    swift_willThrow();
    (*(v11 + 8))(v9, v15);
    swift_unknownObjectRelease();
    a1 = v23;
LABEL_6:
    v20 = a1;
    return sub_1A7B0CD6C(v20);
  }

  sub_1A7DAEDD8();
  sub_1A7E22E70();
  sub_1A7DAEE80();
  sub_1A7E22F30();
  (*(v10 + 8))(v6, v4);
  (*(v11 + 8))(v9, v7);
  swift_unknownObjectRelease();
  v19 = v27;
  v20 = v23;
  v21 = v24;
  *v24 = v26;
  v21[1] = v19;
  return sub_1A7B0CD6C(v20);
}

uint64_t LinkSelectionStrategy.PrimarySecondary.DuplicationStrategy.description.getter()
{
  v1 = *v0;
  if (*(v0 + 16) == 1)
  {
    if (*v0 == 0)
    {
      return 0x737961776C61;
    }

    else
    {
      return 0x726576656ELL;
    }
  }

  else
  {
    v3 = *(v0 + 8);
    sub_1A7E22B70();
    MEMORY[0x1AC561C90](0xD000000000000021, 0x80000001A7EB1080);
    sub_1A7DAB658(v1, v3);
    MEMORY[0x1AC561C90](41, 0xE100000000000000);
    return 0;
  }
}

uint64_t sub_1A7DAD7F0(uint64_t a1)
{
  v2 = sub_1A7DAF024();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DAD82C(uint64_t a1)
{
  v2 = sub_1A7DAF024();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1A7DAD868()
{
  v1 = 0xD000000000000016;
  if (*v0 != 1)
  {
    v1 = 0x726576656ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x737961776C61;
  }
}

uint64_t sub_1A7DAD8C0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A7DB0924(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A7DAD8E8(uint64_t a1)
{
  v2 = sub_1A7DAEED4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DAD924(uint64_t a1)
{
  v2 = sub_1A7DAEED4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7DAD960(uint64_t a1)
{
  v2 = sub_1A7DAEF28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DAD99C(uint64_t a1)
{
  v2 = sub_1A7DAEF28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7DAD9F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C6F687365726874 && a2 == 0xE900000000000064)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A7E230D0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A7DADA84(uint64_t a1)
{
  v2 = sub_1A7DAEF7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DADAC0(uint64_t a1)
{
  v2 = sub_1A7DAEF7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LinkSelectionStrategy.PrimarySecondary.DuplicationStrategy.encode(to:)(void *a1)
{
  v3 = sub_1A7CC7FFC(&qword_1EB2B7338, &qword_1A7E4F888);
  v26 = *(v3 - 8);
  v27 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v25 = &v22 - v4;
  v5 = sub_1A7CC7FFC(&qword_1EB2B7340, &qword_1A7E4F890);
  v29 = *(v5 - 8);
  v30 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v28 = &v22 - v6;
  v7 = sub_1A7CC7FFC(&qword_1EB2B7348, &qword_1A7E4F898);
  v23 = *(v7 - 8);
  v24 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v22 = &v22 - v8;
  v9 = sub_1A7CC7FFC(&qword_1EB2B7350, &qword_1A7E4F8A0);
  v31 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = *v1;
  v13 = v1[1];
  v14 = *(v1 + 16);
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DAEED4();
  sub_1A7E23260();
  if (v14 == 1)
  {
    v15 = (v31 + 8);
    if (v12 | v13)
    {
      LOBYTE(v32) = 2;
      sub_1A7DAEF28();
      v16 = v25;
      sub_1A7E22F80();
      v18 = v26;
      v17 = v27;
    }

    else
    {
      LOBYTE(v32) = 0;
      sub_1A7DAF024();
      v16 = v22;
      sub_1A7E22F80();
      v18 = v23;
      v17 = v24;
    }

    (*(v18 + 8))(v16, v17);
    return (*v15)(v11, v9);
  }

  else
  {
    LOBYTE(v32) = 1;
    sub_1A7DAEF7C();
    v19 = v28;
    sub_1A7E22F80();
    v32 = v12;
    v33 = v13;
    sub_1A7DAEFD0();
    v20 = v30;
    sub_1A7E23030();
    (*(v29 + 8))(v19, v20);
    return (*(v31 + 8))(v11, v9);
  }
}

uint64_t LinkSelectionStrategy.PrimarySecondary.DuplicationStrategy.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v39 = sub_1A7CC7FFC(&qword_1EB2B7380, &qword_1A7E4F8A8);
  v44 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v43 = &v37 - v3;
  v4 = sub_1A7CC7FFC(&qword_1EB2B7388, &qword_1A7E4F8B0);
  v5 = *(v4 - 8);
  v41 = v4;
  v42 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v37 - v6;
  v8 = sub_1A7CC7FFC(&qword_1EB2B7390, &qword_1A7E4F8B8);
  v40 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - v9;
  v11 = sub_1A7CC7FFC(&qword_1EB2B7398, &qword_1A7E4F8C0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v37 - v13;
  v15 = a1[3];
  v52 = a1;
  sub_1A7CC9878(a1, v15);
  sub_1A7DAEED4();
  v16 = v46;
  sub_1A7E23250();
  if (v16)
  {
    return sub_1A7B0CD6C(v52);
  }

  v37 = v8;
  v38 = 0;
  v18 = v43;
  v17 = v44;
  v46 = v12;
  v19 = v45;
  v20 = sub_1A7E22F70();
  v21 = (2 * *(v20 + 16)) | 1;
  v48 = v20;
  v49 = v20 + 32;
  v50 = 0;
  v51 = v21;
  v22 = sub_1A7CDB540();
  if (v22 == 3 || v50 != v51 >> 1)
  {
    v25 = sub_1A7E22BD0();
    swift_allocError();
    v27 = v26;
    sub_1A7CC7FFC(&qword_1EB2B4EC8, &qword_1A7E42100);
    *v27 = &type metadata for LinkSelectionStrategy.PrimarySecondary.DuplicationStrategy;
    v28 = v14;
    sub_1A7E22E90();
    sub_1A7E22BC0();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
    swift_willThrow();
    goto LABEL_9;
  }

  if (!v22)
  {
    LOBYTE(v47) = 0;
    sub_1A7DAF024();
    v28 = v14;
    v30 = v38;
    sub_1A7E22E70();
    if (!v30)
    {
      (*(v40 + 8))(v10, v37);
      (*(v46 + 8))(v14, v11);
      swift_unknownObjectRelease();
      v31 = 0uLL;
      goto LABEL_17;
    }

LABEL_9:
    (*(v46 + 8))(v28, v11);
    swift_unknownObjectRelease();
    return sub_1A7B0CD6C(v52);
  }

  if (v22 != 1)
  {
    LOBYTE(v47) = 2;
    sub_1A7DAEF28();
    v28 = v14;
    v32 = v38;
    sub_1A7E22E70();
    v33 = v46;
    if (v32)
    {
      goto LABEL_9;
    }

    (*(v17 + 8))(v18, v39);
    (*(v33 + 8))(v14, v11);
    swift_unknownObjectRelease();
    v31 = xmmword_1A7E43F70;
LABEL_17:
    v36 = 1;
    v34 = v19;
    goto LABEL_18;
  }

  LOBYTE(v47) = 1;
  sub_1A7DAEF7C();
  v23 = v38;
  sub_1A7E22E70();
  v24 = v46;
  if (v23)
  {
    (*(v46 + 8))(v14, v11);
    swift_unknownObjectRelease();
    return sub_1A7B0CD6C(v52);
  }

  v34 = v19;
  sub_1A7DAF078();
  v35 = v41;
  sub_1A7E22F30();
  (*(v42 + 8))(v7, v35);
  (*(v24 + 8))(v14, v11);
  swift_unknownObjectRelease();
  v36 = 0;
  v31 = v47;
LABEL_18:
  *v34 = v31;
  *(v34 + 16) = v36;
  return sub_1A7B0CD6C(v52);
}

__n128 LinkSelectionStrategy.PrimarySecondary.duplication.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u8[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 LinkSelectionStrategy.PrimarySecondary.duplication.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u8[0] = v2;
  return result;
}

__n128 LinkSelectionStrategy.PrimarySecondary.init(duplication:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u8[0] = v2;
  return result;
}

uint64_t LinkSelectionStrategy.PrimarySecondary.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  MEMORY[0x1AC561C90](0x746163696C707564, 0xEC0000003D6E6F69);
  sub_1A7DAB560(v1, v2, v3);
  return 0;
}

uint64_t sub_1A7DAE660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746163696C707564 && a2 == 0xEB000000006E6F69)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A7E230D0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A7DAE6EC(uint64_t a1)
{
  v2 = sub_1A7DAF0CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DAE728(uint64_t a1)
{
  v2 = sub_1A7DAF0CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LinkSelectionStrategy.PrimarySecondary.encode(to:)(void *a1)
{
  v3 = sub_1A7CC7FFC(&qword_1EB2B73A8, &qword_1A7E4F8C8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - v5;
  v8 = *v1;
  v7 = v1[1];
  HIDWORD(v10) = *(v1 + 16);
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DAF0CC();
  sub_1A7E23260();
  v11 = v8;
  v12 = v7;
  v13 = BYTE4(v10);
  sub_1A7DAF120();
  sub_1A7E23030();
  return (*(v4 + 8))(v6, v3);
}

uint64_t LinkSelectionStrategy.PrimarySecondary.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A7CC7FFC(&qword_1EB2B73C0, &qword_1A7E4F8D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DAF0CC();
  sub_1A7E23250();
  if (!v2)
  {
    sub_1A7DAF174();
    sub_1A7E22F30();
    (*(v6 + 8))(v8, v5);
    v9 = v12;
    *a2 = v11;
    *(a2 + 16) = v9;
  }

  return sub_1A7B0CD6C(a1);
}

uint64_t sub_1A7DAEA6C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  MEMORY[0x1AC561C90](0x746163696C707564, 0xEC0000003D6E6F69);
  sub_1A7DAB560(v1, v2, v3);
  return 0;
}

unint64_t sub_1A7DAEAE4()
{
  result = qword_1EB2B7280;
  if (!qword_1EB2B7280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7280);
  }

  return result;
}

unint64_t sub_1A7DAEB38()
{
  result = qword_1EB2B7298;
  if (!qword_1EB2B7298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7298);
  }

  return result;
}

unint64_t sub_1A7DAEB8C()
{
  result = qword_1EB2B72A0;
  if (!qword_1EB2B72A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B72A0);
  }

  return result;
}

unint64_t sub_1A7DAEBE0()
{
  result = qword_1EB2B72B0;
  if (!qword_1EB2B72B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B72B0);
  }

  return result;
}

unint64_t sub_1A7DAEC34()
{
  result = qword_1EB2B72C8;
  if (!qword_1EB2B72C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B72C8);
  }

  return result;
}

unint64_t sub_1A7DAEC88()
{
  result = qword_1EB2B72D0;
  if (!qword_1EB2B72D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B72D0);
  }

  return result;
}

unint64_t sub_1A7DAECDC()
{
  result = qword_1EB2B72D8;
  if (!qword_1EB2B72D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B72D8);
  }

  return result;
}

unint64_t sub_1A7DAED30()
{
  result = qword_1EB2B72F0;
  if (!qword_1EB2B72F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B72F0);
  }

  return result;
}

unint64_t sub_1A7DAED84()
{
  result = qword_1EB2B7308;
  if (!qword_1EB2B7308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7308);
  }

  return result;
}

unint64_t sub_1A7DAEDD8()
{
  result = qword_1EB2B7310;
  if (!qword_1EB2B7310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7310);
  }

  return result;
}

unint64_t sub_1A7DAEE2C()
{
  result = qword_1EB2B7318;
  if (!qword_1EB2B7318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7318);
  }

  return result;
}

unint64_t sub_1A7DAEE80()
{
  result = qword_1EB2B7330;
  if (!qword_1EB2B7330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7330);
  }

  return result;
}

unint64_t sub_1A7DAEED4()
{
  result = qword_1EB2B7358;
  if (!qword_1EB2B7358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7358);
  }

  return result;
}

unint64_t sub_1A7DAEF28()
{
  result = qword_1EB2B7360;
  if (!qword_1EB2B7360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7360);
  }

  return result;
}

unint64_t sub_1A7DAEF7C()
{
  result = qword_1EB2B7368;
  if (!qword_1EB2B7368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7368);
  }

  return result;
}

unint64_t sub_1A7DAEFD0()
{
  result = qword_1EB2B7370;
  if (!qword_1EB2B7370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7370);
  }

  return result;
}

unint64_t sub_1A7DAF024()
{
  result = qword_1EB2B7378;
  if (!qword_1EB2B7378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7378);
  }

  return result;
}

unint64_t sub_1A7DAF078()
{
  result = qword_1EB2B73A0;
  if (!qword_1EB2B73A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B73A0);
  }

  return result;
}

unint64_t sub_1A7DAF0CC()
{
  result = qword_1EB2B73B0;
  if (!qword_1EB2B73B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B73B0);
  }

  return result;
}

unint64_t sub_1A7DAF120()
{
  result = qword_1EB2B73B8;
  if (!qword_1EB2B73B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B73B8);
  }

  return result;
}

unint64_t sub_1A7DAF174()
{
  result = qword_1EB2B73C8;
  if (!qword_1EB2B73C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B73C8);
  }

  return result;
}

double static LinkSelectionStrategy.default.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 1;
  *a1 = xmmword_1A7E43F70;
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_1A7DAF1FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001A7EB10F0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1A7E230D0();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1A7DAF290(uint64_t a1)
{
  v2 = sub_1A7DAF5A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DAF2CC(uint64_t a1)
{
  v2 = sub_1A7DAF5A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7DAF308(uint64_t a1)
{
  v2 = sub_1A7DAF5FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DAF344(uint64_t a1)
{
  v2 = sub_1A7DAF5FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LinkSelectionStrategy.encode(to:)(void *a1)
{
  v3 = sub_1A7CC7FFC(&qword_1EB2B73D0, &qword_1A7E4F8D8);
  v4 = *(v3 - 8);
  v17 = v3;
  v18 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14[-v5];
  v7 = sub_1A7CC7FFC(&qword_1EB2B73D8, &qword_1A7E4F8E0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14[-v9];
  v11 = *v1;
  v16 = v1[1];
  v15 = *(v1 + 16);
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DAF5A8();
  sub_1A7E23260();
  sub_1A7DAF5FC();
  sub_1A7E22F80();
  v19 = v11;
  v20 = v16;
  v21 = v15;
  sub_1A7DAF650();
  v12 = v17;
  sub_1A7E23030();
  (*(v18 + 8))(v6, v12);
  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_1A7DAF5A8()
{
  result = qword_1EB2B73E0;
  if (!qword_1EB2B73E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B73E0);
  }

  return result;
}

unint64_t sub_1A7DAF5FC()
{
  result = qword_1EB2B73E8;
  if (!qword_1EB2B73E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B73E8);
  }

  return result;
}

unint64_t sub_1A7DAF650()
{
  result = qword_1EB2B73F0;
  if (!qword_1EB2B73F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B73F0);
  }

  return result;
}

uint64_t LinkSelectionStrategy.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v24 = a2;
  v4 = sub_1A7CC7FFC(&qword_1EB2B73F8, &qword_1A7E4F8E8);
  v32 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - v5;
  v7 = sub_1A7CC7FFC(&qword_1EB2B7400, &qword_1A7E4F8F0);
  v25 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DAF5A8();
  sub_1A7E23250();
  if (v2)
  {
    goto LABEL_6;
  }

  v23 = a1;
  v10 = v32;
  v11 = v25;
  v12 = sub_1A7E22F70();
  v13 = (2 * *(v12 + 16)) | 1;
  v28 = v12;
  v29 = v12 + 32;
  v30 = 0;
  v31 = v13;
  if ((sub_1A7CDB53C() & 1) != 0 || v30 != v31 >> 1)
  {
    v14 = sub_1A7E22BD0();
    swift_allocError();
    v15 = v7;
    v17 = v16;
    sub_1A7CC7FFC(&qword_1EB2B4EC8, &qword_1A7E42100);
    *v17 = &type metadata for LinkSelectionStrategy;
    sub_1A7E22E90();
    sub_1A7E22BC0();
    (*(*(v14 - 8) + 104))(v17, *MEMORY[0x1E69E6AF8], v14);
    swift_willThrow();
    (*(v11 + 8))(v9, v15);
    swift_unknownObjectRelease();
    a1 = v23;
LABEL_6:
    v20 = a1;
    return sub_1A7B0CD6C(v20);
  }

  sub_1A7DAF5FC();
  sub_1A7E22E70();
  sub_1A7DAFA38();
  sub_1A7E22F30();
  (*(v10 + 8))(v6, v4);
  (*(v11 + 8))(v9, v7);
  swift_unknownObjectRelease();
  v19 = v27;
  v20 = v23;
  v21 = v24;
  *v24 = v26;
  *(v21 + 16) = v19;
  return sub_1A7B0CD6C(v20);
}

unint64_t sub_1A7DAFA38()
{
  result = qword_1EB2B7408;
  if (!qword_1EB2B7408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7408);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for LinkSelectionStrategy.PrimarySecondary.DuplicationStrategy(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 17) = v3;
  return result;
}

uint64_t sub_1A7DAFB50(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A7DAFB6C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

unint64_t sub_1A7DAFC70()
{
  result = qword_1EB2B7410;
  if (!qword_1EB2B7410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7410);
  }

  return result;
}

unint64_t sub_1A7DAFCC8()
{
  result = qword_1EB2B7418;
  if (!qword_1EB2B7418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7418);
  }

  return result;
}

unint64_t sub_1A7DAFD20()
{
  result = qword_1EB2B7420;
  if (!qword_1EB2B7420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7420);
  }

  return result;
}

unint64_t sub_1A7DAFD78()
{
  result = qword_1EB2B7428;
  if (!qword_1EB2B7428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7428);
  }

  return result;
}

unint64_t sub_1A7DAFDD0()
{
  result = qword_1EB2B7430;
  if (!qword_1EB2B7430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7430);
  }

  return result;
}

unint64_t sub_1A7DAFE28()
{
  result = qword_1EB2B7438;
  if (!qword_1EB2B7438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7438);
  }

  return result;
}

unint64_t sub_1A7DAFE80()
{
  result = qword_1EB2B7440;
  if (!qword_1EB2B7440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7440);
  }

  return result;
}

unint64_t sub_1A7DAFED8()
{
  result = qword_1EB2B7448;
  if (!qword_1EB2B7448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7448);
  }

  return result;
}

unint64_t sub_1A7DAFF30()
{
  result = qword_1EB2B7450;
  if (!qword_1EB2B7450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7450);
  }

  return result;
}

unint64_t sub_1A7DAFF88()
{
  result = qword_1EB2B7458;
  if (!qword_1EB2B7458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7458);
  }

  return result;
}

unint64_t sub_1A7DAFFE0()
{
  result = qword_1EB2B7460;
  if (!qword_1EB2B7460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7460);
  }

  return result;
}

unint64_t sub_1A7DB0038()
{
  result = qword_1EB2B7468;
  if (!qword_1EB2B7468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7468);
  }

  return result;
}

unint64_t sub_1A7DB0090()
{
  result = qword_1EB2B7470;
  if (!qword_1EB2B7470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7470);
  }

  return result;
}

unint64_t sub_1A7DB00E8()
{
  result = qword_1EB2B7478;
  if (!qword_1EB2B7478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7478);
  }

  return result;
}

unint64_t sub_1A7DB0140()
{
  result = qword_1EB2B7480;
  if (!qword_1EB2B7480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7480);
  }

  return result;
}

unint64_t sub_1A7DB0198()
{
  result = qword_1EB2B7488;
  if (!qword_1EB2B7488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7488);
  }

  return result;
}

unint64_t sub_1A7DB01F0()
{
  result = qword_1EB2B7490;
  if (!qword_1EB2B7490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7490);
  }

  return result;
}

unint64_t sub_1A7DB0248()
{
  result = qword_1EB2B7498;
  if (!qword_1EB2B7498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7498);
  }

  return result;
}

unint64_t sub_1A7DB02A0()
{
  result = qword_1EB2B74A0;
  if (!qword_1EB2B74A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B74A0);
  }

  return result;
}

unint64_t sub_1A7DB02F8()
{
  result = qword_1EB2B74A8;
  if (!qword_1EB2B74A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B74A8);
  }

  return result;
}

unint64_t sub_1A7DB0350()
{
  result = qword_1EB2B74B0;
  if (!qword_1EB2B74B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B74B0);
  }

  return result;
}

unint64_t sub_1A7DB03A8()
{
  result = qword_1EB2B74B8;
  if (!qword_1EB2B74B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B74B8);
  }

  return result;
}

unint64_t sub_1A7DB0400()
{
  result = qword_1EB2B74C0;
  if (!qword_1EB2B74C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B74C0);
  }

  return result;
}

unint64_t sub_1A7DB0458()
{
  result = qword_1EB2B74C8;
  if (!qword_1EB2B74C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B74C8);
  }

  return result;
}

unint64_t sub_1A7DB04B0()
{
  result = qword_1EB2B74D0;
  if (!qword_1EB2B74D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B74D0);
  }

  return result;
}

unint64_t sub_1A7DB0508()
{
  result = qword_1EB2B74D8;
  if (!qword_1EB2B74D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B74D8);
  }

  return result;
}

unint64_t sub_1A7DB0560()
{
  result = qword_1EB2B74E0;
  if (!qword_1EB2B74E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B74E0);
  }

  return result;
}

unint64_t sub_1A7DB05B8()
{
  result = qword_1EB2B74E8;
  if (!qword_1EB2B74E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B74E8);
  }

  return result;
}

unint64_t sub_1A7DB0610()
{
  result = qword_1EB2B74F0;
  if (!qword_1EB2B74F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B74F0);
  }

  return result;
}

unint64_t sub_1A7DB0668()
{
  result = qword_1EB2B74F8;
  if (!qword_1EB2B74F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B74F8);
  }

  return result;
}

unint64_t sub_1A7DB06C0()
{
  result = qword_1EB2B7500;
  if (!qword_1EB2B7500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7500);
  }

  return result;
}

unint64_t sub_1A7DB0718()
{
  result = qword_1EB2B7508;
  if (!qword_1EB2B7508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7508);
  }

  return result;
}

unint64_t sub_1A7DB0770()
{
  result = qword_1EB2B7510;
  if (!qword_1EB2B7510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7510);
  }

  return result;
}

unint64_t sub_1A7DB07C8()
{
  result = qword_1EB2B7518;
  if (!qword_1EB2B7518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7518);
  }

  return result;
}

unint64_t sub_1A7DB0820()
{
  result = qword_1EB2B7520;
  if (!qword_1EB2B7520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7520);
  }

  return result;
}

unint64_t sub_1A7DB0878()
{
  result = qword_1EB2B7528;
  if (!qword_1EB2B7528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7528);
  }

  return result;
}

unint64_t sub_1A7DB08D0()
{
  result = qword_1EB2B7530;
  if (!qword_1EB2B7530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7530);
  }

  return result;
}

uint64_t sub_1A7DB0924(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737961776C61 && a2 == 0xE600000000000000;
  if (v4 || (sub_1A7E230D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A7EB10D0 == a2 || (sub_1A7E230D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726576656ELL && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A7E230D0();

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

uint64_t IDSGLLinkEngineGFTConnectionStrategy.connectionBehavior.getter()
{
  v1 = *(v0 + 40);
  os_unfair_lock_lock((v1 + 32));
  v2 = *(v1 + 40);
  os_unfair_lock_unlock((v1 + 32));
  return v2 + 1;
}

void sub_1A7DB0AFC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 40);
  os_unfair_lock_lock((v3 + 32));
  v4 = *(v3 + 40);
  os_unfair_lock_unlock((v3 + 32));
  *a2 = v4 + 1;
}

void IDSGLLinkEngineGFTConnectionStrategy.connectionBehavior.setter(uint64_t a1)
{
  v2 = a1 - 1;
  if ((a1 - 1) <= 2)
  {
    v3 = *(v1 + 40);
    os_unfair_lock_lock((v3 + 32));
    *(v3 + 40) = v2;

    os_unfair_lock_unlock((v3 + 32));
  }
}

void (*IDSGLLinkEngineGFTConnectionStrategy.connectionBehavior.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *(v1 + 40);
  os_unfair_lock_lock((v3 + 32));
  v4 = *(v3 + 40);
  os_unfair_lock_unlock((v3 + 32));
  *a1 = v4 + 1;
  return sub_1A7DB0C08;
}

uint64_t IDSGLLinkEngineGFTConnectionStrategy.deinit()
{

  return v0;
}

uint64_t IDSGLLinkEngineGFTConnectionStrategy.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A7DB0CF0()
{
  v1 = *(v0 + 40);
  os_unfair_lock_lock((v1 + 32));
  v2 = *(v1 + 40);
  os_unfair_lock_unlock((v1 + 32));
  return v2 + 1;
}

void (*sub_1A7DB0D2C(void *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = IDSGLLinkEngineGFTConnectionStrategy.connectionBehavior.modify(v2);
  return sub_1A7D918AC;
}

void LEToolResponse.print(to:style:)(void *a1, uint64_t a2)
{
  v3 = *(a2 + 1);
  v4 = *v2;
  v5 = v2[1];
  v7 = v2[2];
  v6 = v2[3];
  v8 = (v6 >> 60) & 7;
  if (((v6 >> 60) & 7) <= 1)
  {
    v15 = a1[3];
    v16 = a1[4];
    if (v8)
    {
      sub_1A7CC9878(a1, a1[3]);
      CLIPrinter.print(_:)(sub_1A7DB1300, 0, v15, v16);
      sub_1A7CC9878(a1, a1[3]);
      v27._countAndFlagsBits = 0;
      v27._object = 0xE000000000000000;
      CLIPrinter.print(_:)(v27);
      LEToolQualityMeasurerResponse.print(to:style:)(a1);
    }

    else
    {
      sub_1A7CC9878(a1, a1[3]);
      CLIPrinter.print(_:)(sub_1A7DB11A8, 0, v15, v16);
      sub_1A7CC9878(a1, a1[3]);
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      CLIPrinter.print(_:)(v18);
      v28 = v3;
      v29._countAndFlagsBits = v4;
      sub_1A7DD21BC(a1, &v28);
    }
  }

  else if (v8 == 2)
  {
    v19 = v2[4];
    v20 = v6 & 0x8FFFFFFFFFFFFFFFLL;
    v21 = a1[3];
    v22 = a1[4];
    sub_1A7CC9878(a1, v21);
    CLIPrinter.print(_:)(sub_1A7DB1210, 0, v21, v22);
    sub_1A7CC9878(a1, a1[3]);
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    CLIPrinter.print(_:)(v24);
    v29._countAndFlagsBits = v4;
    v29._object = v5;
    v30 = v7;
    v31 = v20;
    v32 = v19;
    v28 = v3;
    sub_1A7CF6828(a1, &v28);
  }

  else if (v8 == 3)
  {
    v9 = a1[3];
    v10 = a1[4];
    sub_1A7CC9878(a1, v9);
    CLIPrinter.print(_:)(sub_1A7DB1288, 0, v9, v10);
    sub_1A7CC9878(a1, a1[3]);
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    CLIPrinter.print(_:)(v12);
    sub_1A7CC9878(a1, a1[3]);
    sub_1A7E22B70();

    v29._countAndFlagsBits = 0xD000000000000011;
    v29._object = 0x80000001A7EB11C0;
    if (v4)
    {
      v13 = 1702195828;
    }

    else
    {
      v13 = 0x65736C6166;
    }

    if (v4)
    {
      v14 = 0xE400000000000000;
    }

    else
    {
      v14 = 0xE500000000000000;
    }

    MEMORY[0x1AC561C90](v13, v14);

    CLIPrinter.print(_:)(v29);
  }

  else
  {
    v25 = a1[3];
    v26 = a1[4];
    sub_1A7CC9878(a1, v25);
    v29._countAndFlagsBits = 0x757074756F206F4ELL;
    v29._object = 0xEA00000000002E74;
    LOWORD(v30) = 257;
    v31 = 0;
    v32 = 0;
    v33 = 2;
    CLIPrinter.print(_:)(&v29._countAndFlagsBits, v25, v26);
  }
}

double sub_1A7DB11A8()
{
  sub_1A7CC7FFC(&qword_1EB2B4D10, &qword_1A7E41C60);
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_1A7E418C0;
  *(v0 + 32) = 0x736B6E694CLL;
  *(v0 + 40) = 0xE500000000000000;
  *(v0 + 48) = 1537;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 2;
  return result;
}

double sub_1A7DB1210()
{
  sub_1A7CC7FFC(&qword_1EB2B4D10, &qword_1A7E41C60);
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_1A7E418C0;
  *(v0 + 32) = 0xD000000000000018;
  *(v0 + 40) = 0x80000001A7EB11E0;
  *(v0 + 48) = 1537;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 2;
  return result;
}

double sub_1A7DB1288()
{
  sub_1A7CC7FFC(&qword_1EB2B4D10, &qword_1A7E41C60);
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_1A7E418C0;
  *(v0 + 32) = 0xD000000000000015;
  *(v0 + 40) = 0x80000001A7EB1200;
  *(v0 + 48) = 1537;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 2;
  return result;
}

double sub_1A7DB1300()
{
  sub_1A7CC7FFC(&qword_1EB2B4D10, &qword_1A7E41C60);
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_1A7E418C0;
  *(v0 + 32) = 0xD000000000000014;
  *(v0 + 40) = 0x80000001A7EB1220;
  *(v0 + 48) = 1537;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 2;
  return result;
}

IDSFoundation::IDSLinkQualityReportSignalStrengthMeasurement __swiftcall IDSLinkQualityReportSignalStrengthMeasurement.init(time:signalStrength:)(Swift::Double time, Swift::Double signalStrength)
{
  *v2 = time;
  v2[1] = signalStrength;
  result.signalStrength = signalStrength;
  result.time = time;
  return result;
}

uint64_t sub_1A7DB13E4()
{
  if (*v0)
  {
    return 0x74536C616E676973;
  }

  else
  {
    return 1701669236;
  }
}

uint64_t sub_1A7DB1424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701669236 && a2 == 0xE400000000000000;
  if (v5 || (sub_1A7E230D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74536C616E676973 && a2 == 0xEE006874676E6572)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A7E230D0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1A7DB1508(uint64_t a1)
{
  v2 = sub_1A7DB1708();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DB1544(uint64_t a1)
{
  v2 = sub_1A7DB1708();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IDSLinkQualityReportSignalStrengthMeasurement.encode(to:)(void *a1)
{
  v3 = sub_1A7CC7FFC(&qword_1EB2B7538, &qword_1A7E50B00);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DB1708();
  sub_1A7E23260();
  v8[15] = 0;
  sub_1A7E23010();
  if (!v1)
  {
    v8[14] = 1;
    sub_1A7E23010();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1A7DB1708()
{
  result = qword_1EB2B7540;
  if (!qword_1EB2B7540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7540);
  }

  return result;
}

uint64_t IDSLinkQualityReportSignalStrengthMeasurement.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = sub_1A7CC7FFC(&qword_1EB2B7548, &qword_1A7E50B08);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DB1708();
  sub_1A7E23250();
  if (!v2)
  {
    v16 = 0;
    sub_1A7E22F10();
    v10 = v9;
    v15 = 1;
    sub_1A7E22F10();
    v12 = v11;
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
    *(a2 + 1) = v12;
  }

  return sub_1A7B0CD6C(a1);
}

unint64_t sub_1A7DB1958()
{
  result = qword_1EB2B7550;
  if (!qword_1EB2B7550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7550);
  }

  return result;
}

unint64_t sub_1A7DB19B0()
{
  result = qword_1EB2B7558;
  if (!qword_1EB2B7558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7558);
  }

  return result;
}

unint64_t sub_1A7DB1A08()
{
  result = qword_1EB2B7560;
  if (!qword_1EB2B7560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7560);
  }

  return result;
}

uint64_t sub_1A7DB1A5C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = v6;
      v9 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v9;

      v10 = a1(v12);

      LOBYTE(v4) = (v3 != 0) | v10;
      if ((v3 != 0) | v10 & 1)
      {
        break;
      }

      v6 = v8 - 1;
      v7 += 2;
    }

    while (v8);
  }

  return v4 & 1;
}

uint64_t sub_1A7DB1B08(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t IDSDefaultRelayLinkSorter.__allocating_init(shouldFallbackToTCPFirst:shouldPreferIPv6:)(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = swift_allocObject();
  IDSDefaultRelayLinkSorter.init(shouldFallbackToTCPFirst:shouldPreferIPv6:)(v3, v2);
  return v4;
}

uint64_t IDSDefaultRelayLinkSorter.init(shouldFallbackToTCPFirst:shouldPreferIPv6:)(char a1, char a2)
{
  *(v2 + 16) = xmmword_1A7E50CD0;
  *(v2 + 32) = xmmword_1A7E50CE0;
  *(v2 + 48) = xmmword_1A7E50CF0;
  *(v2 + 64) = xmmword_1A7E50D00;
  *(v2 + 80) = xmmword_1A7E50D10;
  *(v2 + 96) = xmmword_1A7E50D20;
  *(v2 + 112) = xmmword_1A7E50D30;
  *(v2 + 128) = xmmword_1A7E50D40;
  *(v2 + 144) = xmmword_1A7E50D50;
  *(v2 + 160) = xmmword_1A7E50D60;
  *(v2 + 176) = xmmword_1A7E50D70;
  *(v2 + 192) = xmmword_1A7E50D80;
  *(v2 + 208) = 0;
  *(v2 + 212) = a1;
  *(v2 + 213) = a2;
  *(v2 + 214) = 0;
  return v2;
}

double IDSDefaultRelayLinkSorter.score(link:)()
{
  v1 = v0;
  LinkEngineLink.definition.getter(&v85);
  v2 = v85;
  if (v85)
  {
    v4 = *(&v85 + 1);
    v3 = v86;
    if (LinkEngineLink.isPendingRemoval.getter())
    {
      v5 = *(v0 + 24);
    }

    else
    {
      sub_1A7CE05CC(v2, &v85);
      v5 = 1.0;
      if (v85 != 2 && (v85 & 1) != 0)
      {
        v5 = *(v0 + 16);
      }
    }

    sub_1A7CE03D4(v4, &v80);
    v88 = v83;
    v89 = v84;
    v86 = v81;
    v87 = v82;
    v85 = v80;
    if (*(&v84 + 1) && (v7 = *(&v87 + 1), , sub_1A7D5C958(&v85), v7))
    {

      v9 = *(v1 + 32);
      v8 = *(v1 + 40);
      v10 = *(v1 + 48);
      v11 = *(v1 + 56);
      v12 = &type metadata for IDSDefaultRelayLinkSorter.Scores.Delegated;
      v13 = &off_1F1AB7038;
    }

    else
    {
      v9 = *(v1 + 64);
      v8 = *(v1 + 72);
      v10 = *(v1 + 80);
      v11 = *(v1 + 88);
      v12 = &type metadata for IDSDefaultRelayLinkSorter.Scores.NonDelegated;
      v13 = &off_1F1AB70F0;
    }

    *(&v81 + 1) = v12;
    *&v82 = v13;
    v14 = swift_allocObject();
    *&v80 = v14;
    v14[2] = v9;
    v14[3] = v8;
    v14[4] = v10;
    v14[5] = v11;
    sub_1A7CE072C(v4, v79);
    v73 = v3;
    if (BYTE4(v79[0]) != 1)
    {
      if (!LODWORD(v79[0]))
      {
        v22 = *(&v81 + 1);
        v23 = v82;
        sub_1A7CC9878(&v80, *(&v81 + 1));
        v17 = (*(v23 + 16))(v22, v23);
        goto LABEL_21;
      }

      if (LODWORD(v79[0]) == 9)
      {
        v15 = *(&v81 + 1);
        v16 = v82;
        sub_1A7CC9878(&v80, *(&v81 + 1));
        (*(v16 + 8))(v15, v16);
        goto LABEL_21;
      }
    }

    sub_1A7CE0928(v4, v79);
    if (LOBYTE(v79[0]) == 2 || (v79[0] & 1) == 0)
    {
      v20 = *(&v81 + 1);
      v21 = v82;
      sub_1A7CC9878(&v80, *(&v81 + 1));
      (*(v21 + 32))(v20, v21);
    }

    else
    {
      v18 = *(&v81 + 1);
      v19 = v82;
      sub_1A7CC9878(&v80, *(&v81 + 1));
      (*(v19 + 24))(v18, v19);
    }

LABEL_21:
    v24 = v17;
    os_unfair_lock_lock((v1 + 208));
    v25 = *(v1 + 213);
    os_unfair_lock_unlock((v1 + 208));
    v26 = 112;
    if (v25)
    {
      v26 = 96;
    }

    v27 = 120;
    if (v25)
    {
      v27 = 104;
      v28 = &type metadata for IDSDefaultRelayLinkSorter.Scores.PreferIPv6;
    }

    else
    {
      v28 = &type metadata for IDSDefaultRelayLinkSorter.Scores.PreferIPv4;
    }

    v29 = *(v1 + v27);
    v30 = *(v1 + v26);
    if (v25)
    {
      v31 = &off_1F1AB7060;
    }

    else
    {
      v31 = &off_1F1AB70D8;
    }

    v79[3] = v28;
    v79[4] = v31;
    v79[0] = v30;
    v79[1] = v29;
    v76[0] = v4;
    LinkEndpoint.family.getter(&v74);
    v32 = v74;
    sub_1A7CC9878(v79, v28);
    if (v32 == 1)
    {
      if (v25)
      {
        v33 = &off_1F1AB7060;
      }

      else
      {
        v33 = &off_1F1AB70D8;
      }

      (v33[1])(v28, v31);
    }

    else
    {
      if (v25)
      {
        v35 = &off_1F1AB7060;
      }

      else
      {
        v35 = &off_1F1AB70D8;
      }

      v34 = (v35[2])(v28, v31);
    }

    v36 = v34;
    v37 = v5 * v24;
    os_unfair_lock_lock((v1 + 208));
    v38 = *(v1 + 212);
    os_unfair_lock_unlock((v1 + 208));
    v39 = 168;
    if (v38)
    {
      v39 = 128;
    }

    v40 = 176;
    if (v38)
    {
      v40 = 136;
    }

    v41 = 184;
    if (v38)
    {
      v41 = 144;
    }

    v42 = &type metadata for IDSDefaultRelayLinkSorter.Scores.SSLFirst;
    if (v38)
    {
      v42 = &type metadata for IDSDefaultRelayLinkSorter.Scores.TCPFirst;
    }

    v43 = &off_1F1AB70A8;
    if (v38)
    {
      v43 = &off_1F1AB7078;
    }

    v77 = v42;
    v78 = v43;
    v44 = 192;
    if (v38)
    {
      v44 = 152;
    }

    v45 = 200;
    if (v38)
    {
      v45 = 160;
    }

    v46 = *(v1 + v39);
    v47 = *(v1 + v40);
    v48 = *(v1 + v41);
    v49 = *(v1 + v44);
    v50 = *(v1 + v45);
    v51 = swift_allocObject();
    v51[2] = v46;
    v51[3] = v47;
    v51[4] = v48;
    v51[5] = v49;
    v51[6] = v50;
    v76[0] = v51;
    sub_1A7CE0528(v2, &v74);
    v52 = v74;
    if (v74)
    {
      v53 = sub_1A7CDB84C(v2, v4, v73);
    }

    else
    {
      v53 = sub_1A7CDB84C(v2, v4, v73);
      v52 = MEMORY[0x1E69E7CC0];
    }

    v6 = v37 * v36;
    v74 = 13160;
    v75 = 0xE200000000000000;
    MEMORY[0x1EEE9AC00](v53);
    v72 = &v74;
    v54 = sub_1A7DB1A5C(sub_1A7DB2D3C, v71, v52);
    if (v54)
    {

      v55 = v77;
      v56 = v78;
      sub_1A7CC9878(v76, v77);
      (v56[1])(v55, v56);
    }

    else
    {
      v74 = 7365749;
      v75 = 0xE300000000000000;
      MEMORY[0x1EEE9AC00](v54);
      v72 = &v74;
      v58 = sub_1A7DB1A5C(sub_1A7DB3F08, v71, v52);
      if (v58)
      {

        v59 = v77;
        v60 = v78;
        sub_1A7CC9878(v76, v77);
        (v60[3])(v59, v60);
      }

      else
      {
        v74 = 12904;
        v75 = 0xE200000000000000;
        MEMORY[0x1EEE9AC00](v58);
        v72 = &v74;
        v61 = sub_1A7DB1A5C(sub_1A7DB3F08, v71, v52);
        if (v61)
        {

          v62 = v77;
          v63 = v78;
          sub_1A7CC9878(v76, v77);
          (v63[2])(v62, v63);
        }

        else
        {
          v74 = 7365492;
          v75 = 0xE300000000000000;
          MEMORY[0x1EEE9AC00](v61);
          v72 = &v74;
          v64 = sub_1A7DB1A5C(sub_1A7DB3F08, v71, v52);
          if (v64)
          {

            v65 = v77;
            v66 = v78;
            sub_1A7CC9878(v76, v77);
            (v66[4])(v65, v66);
          }

          else
          {
            v74 = 0x736C742D656B6166;
            v75 = 0xE800000000000000;
            MEMORY[0x1EEE9AC00](v64);
            v72 = &v74;
            v67 = sub_1A7DB1A5C(sub_1A7DB3F08, v71, v52);

            if ((v67 & 1) == 0)
            {
LABEL_66:
              sub_1A7B0CD6C(v76);
              sub_1A7B0CD6C(v79);
              sub_1A7B0CD6C(&v80);
              return v6;
            }

            v68 = v77;
            v69 = v78;
            sub_1A7CC9878(v76, v77);
            v57 = (v69[5])(v68, v69);
          }
        }
      }
    }

    v6 = v6 * v57;
    goto LABEL_66;
  }

  return 0.0;
}

unint64_t IDSDefaultRelayLinkSorter.sort(_:)(uint64_t a1)
{

  v4 = sub_1A7DB2600(v2, sub_1A7CE50F8, sub_1A7DB29C4);
  sub_1A7DB3B3C(&v4, v1);

  return v4;
}

unint64_t sub_1A7DB2500(uint64_t a1)
{
  v2 = *v1;

  v5 = sub_1A7DB2600(v3, sub_1A7CE50F8, sub_1A7DB29C4);
  sub_1A7DB3B3C(&v5, v2);

  return v5;
}

unint64_t sub_1A7DB2600(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_1A7E22DA0();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1A7DB26A4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1A7E22DA0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1A7E22DA0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1A7DB3E9C(&qword_1EB2B7590, &qword_1EB2B7588, &qword_1A7E50F88);
          for (i = 0; i != v6; ++i)
          {
            sub_1A7CC7FFC(&qword_1EB2B7588, &qword_1A7E50F88);
            v9 = sub_1A7CCBE7C(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for IDSPacketLog.SimpleBatch();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A7DB2834(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1A7E22DA0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1A7E22DA0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1A7DB3E9C(&qword_1EB2B7580, &qword_1EB2B7578, &qword_1A7E50F80);
          for (i = 0; i != v6; ++i)
          {
            sub_1A7CC7FFC(&qword_1EB2B7578, &qword_1A7E50F80);
            v9 = sub_1A7CCBF84(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for IDSSendReason(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A7DB29C4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1A7E22DA0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1A7E22DA0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1A7DB3E9C(&qword_1EB2B7598, &qword_1EB2B5B70, &qword_1A7E50F90);
          for (i = 0; i != v6; ++i)
          {
            sub_1A7CC7FFC(&qword_1EB2B5B70, &qword_1A7E50F90);
            v9 = sub_1A7CCBEFC(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for LinkEngineLink();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A7DB2B54(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1A7E22DA0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1A7E22DA0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1A7DB3E9C(&qword_1EB2B7570, &qword_1EB2B6D70, &qword_1A7E4C6F0);
          for (i = 0; i != v6; ++i)
          {
            sub_1A7CC7FFC(&qword_1EB2B6D70, &qword_1A7E4C6F0);
            v9 = sub_1A7CCC004(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for EventTracingOperation(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A7DB2CE4(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1A7E230D0() & 1;
  }
}

uint64_t sub_1A7DB2D58(char *__dst, char *__src, char *a3, char *a4, uint64_t a5)
{
  v6 = a4;
  v7 = a3;
  v8 = __src;
  v9 = __dst;
  v10 = __src - __dst;
  v11 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v11 = __src - __dst;
  }

  v12 = v11 >> 3;
  v13 = a3 - __src;
  v14 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v14 = a3 - __src;
  }

  v15 = v14 >> 3;
  if (v12 < v14 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v12] <= a4)
    {
      memmove(a4, __dst, 8 * v12);
    }

    v16 = &v6[8 * v12];
    if (v10 < 8)
    {
LABEL_10:
      v8 = v9;
      goto LABEL_42;
    }

    while (1)
    {
      if (v8 >= v7)
      {
        goto LABEL_10;
      }

      os_unfair_lock_lock((a5 + 208));
      v19 = *(a5 + 214);
      os_unfair_lock_unlock((a5 + 208));
      v20 = IDSDefaultRelayLinkSorter.score(link:)();
      v21 = IDSDefaultRelayLinkSorter.score(link:)();

      if (v19)
      {
        if (v20 >= v21)
        {
          goto LABEL_19;
        }
      }

      else if (v21 >= v20)
      {
LABEL_19:
        v17 = v6;
        v18 = v9 == v6;
        v6 += 8;
        if (v18)
        {
          goto LABEL_13;
        }

LABEL_12:
        *v9 = *v17;
        goto LABEL_13;
      }

      v17 = v8;
      v18 = v9 == v8;
      v8 += 8;
      if (!v18)
      {
        goto LABEL_12;
      }

LABEL_13:
      v9 += 8;
      if (v6 >= v16)
      {
        goto LABEL_10;
      }
    }
  }

  if (a4 != __src || &__src[8 * v15] <= a4)
  {
    memmove(a4, __src, 8 * v15);
  }

  v16 = &v6[8 * v15];
  if (v13 >= 8 && v8 > v9)
  {
    v30 = v6;
LABEL_28:
    v22 = v8 - 8;
    v7 -= 8;
    v23 = v16;
    v31 = v8;
    do
    {
      v23 -= 8;
      v24 = v22;

      os_unfair_lock_lock((a5 + 208));
      v25 = *(a5 + 214);
      os_unfair_lock_unlock((a5 + 208));
      v26 = IDSDefaultRelayLinkSorter.score(link:)();
      v27 = IDSDefaultRelayLinkSorter.score(link:)();

      if (v25)
      {
        if (v26 < v27)
        {
          goto LABEL_36;
        }
      }

      else if (v27 < v26)
      {
LABEL_36:
        v28 = v24;
        if (v7 + 8 != v31)
        {
          *v7 = *v24;
        }

        v6 = v30;
        if (v16 <= v30 || (v8 = v28, v28 <= v9))
        {
          v8 = v28;
          goto LABEL_42;
        }

        goto LABEL_28;
      }

      v8 = v31;
      v22 = v24;
      if (v7 + 8 != v16)
      {
        *v7 = *v23;
      }

      v7 -= 8;
      v16 = v23;
      v6 = v30;
    }

    while (v23 > v30);
    v16 = v23;
  }

LABEL_42:
  if (v8 != v6 || v8 >= &v6[(v16 - v6 + (v16 - v6 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v8, v6, 8 * ((v16 - v6) / 8));
  }

  return 1;
}

void sub_1A7DB3050(char **a1, char *a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v23 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_14:
    v23 = sub_1A7CF0024(v23);
  }

  v19 = v6;
  *v6 = v23;
  v8 = (v23 + 16);
  v9 = *(v23 + 2);
  if (v9 < 2)
  {
LABEL_9:

    *v19 = v23;
  }

  else
  {
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = v5;
      v12 = &v23[16 * v9];
      v6 = *v12;
      v13 = &v8[2 * v9];
      v14 = v13[1];
      __dst = (v10 + 8 * *v12);
      v15 = (v10 + 8 * *v13);
      v16 = (v10 + 8 * v14);

      sub_1A7DB2D58(__dst, v15, v16, a2, a4);
      v5 = v11;

      if (v11)
      {
        *v19 = v23;

        return;
      }

      if (v14 < v6)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      v17 = *v8;
      if (v9 - 2 >= *v8)
      {
        goto LABEL_12;
      }

      *v12 = v6;
      *(v12 + 1) = v14;
      v18 = v17 - v9;
      if (v17 < v9)
      {
        goto LABEL_13;
      }

      v9 = v17 - 1;
      memmove(v13, v13 + 2, 16 * v18);
      *v8 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v19 = v23;
    __break(1u);
  }
}

uint64_t sub_1A7DB31F8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = a3[1];
  v107 = MEMORY[0x1E69E7CC0];
  if (v6 >= 1)
  {
    swift_retain_n();
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v99 = v7;
        v96 = v8;
        v11 = 8 * v7;
        v12 = *a3 + 8 * v7 + 16;

        os_unfair_lock_lock((a5 + 208));
        v13 = *(a5 + 214);
        os_unfair_lock_unlock((a5 + 208));
        v14 = IDSDefaultRelayLinkSorter.score(link:)();
        v15 = IDSDefaultRelayLinkSorter.score(link:)();

        v16 = v15 < v14;
        if (v13)
        {
          v16 = v14 < v15;
        }

        v102 = v16;
        v17 = v11 + 8;
        do
        {
          v18 = v10;
          v19 = v17;
          if (++v10 >= v6)
          {
            break;
          }

          os_unfair_lock_lock((a5 + 208));
          v20 = *(a5 + 214);
          os_unfair_lock_unlock((a5 + 208));
          v21 = IDSDefaultRelayLinkSorter.score(link:)();
          v22 = IDSDefaultRelayLinkSorter.score(link:)();

          v23 = v21 < v22;
          if (!v20)
          {
            v23 = v22 < v21;
          }

          v12 += 8;
          v17 = v19 + 8;
        }

        while (v102 == v23);
        if (v102)
        {
          v9 = v99;
          if (v10 < v99)
          {
            goto LABEL_118;
          }

          if (v99 < v10)
          {
            v24 = v99;
            do
            {
              if (v24 != v18)
              {
                v27 = *a3;
                if (!*a3)
                {
                  goto LABEL_123;
                }

                v25 = *(v27 + v11);
                *(v27 + v11) = *(v27 + v19);
                *(v27 + v19) = v25;
              }

              ++v24;
              v19 -= 8;
              v11 += 8;
            }

            while (v24 < v18--);
          }

          v8 = v96;
        }

        else
        {
          v8 = v96;
          v9 = v99;
        }
      }

      v28 = a3[1];
      if (v10 < v28)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_117;
        }

        if (v10 - v9 < a4)
        {
          v29 = v9 + a4;
          if (__OFADD__(v9, a4))
          {
            goto LABEL_119;
          }

          if (v29 >= v28)
          {
            v29 = a3[1];
          }

          if (v29 < v9)
          {
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
            return result;
          }

          if (v10 != v29)
          {
            v97 = v8;
            v30 = *a3;
            v31 = *a3 + 8 * v10 - 8;
            v100 = v29;
            v32 = v9 - v10;
            do
            {
              v103 = v10;
              v33 = v32;
              v34 = v31;
              do
              {

                os_unfair_lock_lock((a5 + 208));
                v35 = *(a5 + 214);
                os_unfair_lock_unlock((a5 + 208));
                v36 = IDSDefaultRelayLinkSorter.score(link:)();
                v37 = IDSDefaultRelayLinkSorter.score(link:)();

                if (v35)
                {
                  if (v36 >= v37)
                  {
                    break;
                  }
                }

                else if (v37 >= v36)
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_121;
                }

                v38 = *v34;
                *v34 = v34[1];
                v34[1] = v38;
                --v34;
              }

              while (!__CFADD__(v33++, 1));
              ++v10;
              v31 += 8;
              --v32;
            }

            while ((v103 + 1) != v100);
            v10 = v100;
            v8 = v97;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1A7CCC08C(0, *(v8 + 2) + 1, 1, v8);
      }

      v41 = *(v8 + 2);
      v40 = *(v8 + 3);
      v42 = v41 + 1;
      if (v41 >= v40 >> 1)
      {
        v8 = sub_1A7CCC08C((v40 > 1), v41 + 1, 1, v8);
      }

      *(v8 + 2) = v42;
      v43 = v8 + 32;
      v44 = &v8[16 * v41 + 32];
      *v44 = v9;
      *(v44 + 1) = v10;
      v101 = *a1;
      if (!*a1)
      {
        goto LABEL_124;
      }

      v104 = v10;
      if (v41)
      {
        while (1)
        {
          v45 = v42 - 1;
          if (v42 >= 4)
          {
            break;
          }

          if (v42 == 3)
          {
            v46 = *(v8 + 4);
            v47 = *(v8 + 5);
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_64:
            if (v49)
            {
              goto LABEL_106;
            }

            v62 = &v8[16 * v42];
            v64 = *v62;
            v63 = *(v62 + 1);
            v65 = __OFSUB__(v63, v64);
            v66 = v63 - v64;
            v67 = v65;
            if (v65)
            {
              goto LABEL_108;
            }

            v68 = &v43[16 * v45];
            v70 = *v68;
            v69 = *(v68 + 1);
            v56 = __OFSUB__(v69, v70);
            v71 = v69 - v70;
            if (v56)
            {
              goto LABEL_111;
            }

            if (__OFADD__(v66, v71))
            {
              goto LABEL_113;
            }

            if (v66 + v71 >= v48)
            {
              if (v48 < v71)
              {
                v45 = v42 - 2;
              }

              goto LABEL_86;
            }

            goto LABEL_79;
          }

          if (v42 < 2)
          {
            goto LABEL_114;
          }

          v72 = &v8[16 * v42];
          v74 = *v72;
          v73 = *(v72 + 1);
          v56 = __OFSUB__(v73, v74);
          v66 = v73 - v74;
          v67 = v56;
LABEL_79:
          if (v67)
          {
            goto LABEL_110;
          }

          v75 = &v43[16 * v45];
          v77 = *v75;
          v76 = *(v75 + 1);
          v56 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v56)
          {
            goto LABEL_112;
          }

          if (v78 < v66)
          {
            goto LABEL_3;
          }

LABEL_86:
          if (v45 - 1 >= v42)
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

          v83 = *a3;
          if (!*a3)
          {
            goto LABEL_122;
          }

          v84 = &v43[16 * v45 - 16];
          v85 = *v84;
          v86 = v45;
          v87 = &v43[16 * v45];
          v88 = *(v87 + 1);
          v89 = (v83 + 8 * *v84);
          v90 = (v83 + 8 * *v87);
          v91 = (v83 + 8 * v88);

          sub_1A7DB2D58(v89, v90, v91, v101, a5);
          if (v106)
          {

            goto LABEL_98;
          }

          if (v88 < v85)
          {
            goto LABEL_101;
          }

          v92 = *(v8 + 2);
          if (v86 > v92)
          {
            goto LABEL_102;
          }

          *v84 = v85;
          *(v84 + 1) = v88;
          if (v86 >= v92)
          {
            goto LABEL_103;
          }

          v42 = v92 - 1;
          memmove(v87, v87 + 16, 16 * (v92 - 1 - v86));
          *(v8 + 2) = v92 - 1;
          v43 = v8 + 32;
          if (v92 <= 2)
          {
            goto LABEL_3;
          }
        }

        v50 = &v43[16 * v42];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_104;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_105;
        }

        v57 = &v8[16 * v42];
        v59 = *v57;
        v58 = *(v57 + 1);
        v56 = __OFSUB__(v58, v59);
        v60 = v58 - v59;
        if (v56)
        {
          goto LABEL_107;
        }

        v56 = __OFADD__(v48, v60);
        v61 = v48 + v60;
        if (v56)
        {
          goto LABEL_109;
        }

        if (v61 >= v53)
        {
          v79 = &v43[16 * v45];
          v81 = *v79;
          v80 = *(v79 + 1);
          v56 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v56)
          {
            goto LABEL_115;
          }

          if (v48 < v82)
          {
            v45 = v42 - 2;
          }

          goto LABEL_86;
        }

        goto LABEL_64;
      }

LABEL_3:
      v7 = v104;
      v6 = a3[1];
      if (v104 >= v6)
      {
        v107 = v8;
        goto LABEL_96;
      }
    }
  }

  swift_retain_n();
LABEL_96:
  v93 = *a1;
  if (!*a1)
  {
    goto LABEL_125;
  }

  sub_1A7DB3050(&v107, v93, a3, a5);

LABEL_98:
}

void sub_1A7DB38BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v6 = a3;
    v7 = *a4;
    v8 = (*a4 + 8 * a3 - 8);
    v9 = a1 - a3;
LABEL_5:
    v10 = v9;
    v17 = v8;
    while (1)
    {

      os_unfair_lock_lock((a5 + 208));
      v11 = *(a5 + 214);
      os_unfair_lock_unlock((a5 + 208));
      v12 = IDSDefaultRelayLinkSorter.score(link:)();
      v13 = IDSDefaultRelayLinkSorter.score(link:)();

      if (v11)
      {
        if (v12 >= v13)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v12)
      {
        goto LABEL_4;
      }

      if (!v7)
      {
        break;
      }

      v14 = *v8;
      *v8 = v8[1];
      v8[1] = v14;
      --v8;
      if (__CFADD__(v10++, 1))
      {
LABEL_4:
        ++v6;
        v8 = v17 + 1;
        --v9;
        if (v6 == a2)
        {
          return;
        }

        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1A7DB39E0(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_retain_n();
  result = sub_1A7E23080();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for LinkEngineLink();
        v8 = sub_1A7E22580();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9[0] = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
      v9[1] = v7;

      sub_1A7DB31F8(v9, v10, a1, v6, a2);

      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_1A7DB38BC(0, v4, 1, a1, a2);
  }
}

uint64_t sub_1A7DB3B3C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1A7D6035C(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;

  sub_1A7DB39E0(v8, a2);

  sub_1A7E22C00();
}

uint64_t initializeBufferWithCopyOfBuffer for IDSDefaultRelayLinkSorter.State(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for IDSDefaultRelayLinkSorter.State(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for IDSDefaultRelayLinkSorter.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

__n128 sub_1A7DB3D7C(uint64_t a1, __int128 *a2)
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
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_1A7DB3DB0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 192))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A7DB3DD0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 184) = 0;
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
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 192) = v3;
  return result;
}

uint64_t sub_1A7DB3E9C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A7CC9830(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t IDSConnectRelayLinksByInterfaceTypePlugin.__allocating_init(interfaceTypes:sorter:fallbackDelay:disconnectDelay:nowProvider:behavior:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9)
{
  v17 = a2[3];
  v16 = a2[4];
  v18 = sub_1A7CC9920(a2, v17);
  v19 = sub_1A7DB9500(a1, v18, a3, a4, a5, a6, a7, a8, a9, v9, v17, v16);

  sub_1A7B0CD6C(a2);
  return v19;
}

void IDSConnectRelayLinksByInterfaceTypePlugin.behavior.getter(_BYTE *a1@<X8>)
{
  os_unfair_lock_lock((v1 + 32));
  *a1 = *(v1 + 40);

  os_unfair_lock_unlock((v1 + 32));
}

void IDSConnectRelayLinksByInterfaceTypePlugin.behavior.setter(char *a1)
{
  v2 = *a1;
  os_unfair_lock_lock((v1 + 32));
  *(v1 + 40) = v2;

  os_unfair_lock_unlock((v1 + 32));
}

void IDSConnectRelayLinksByInterfaceTypePlugin.toolState(engine:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  os_unfair_lock_lock((a1 + 16));
  v3 = *(a1 + 24);

  os_unfair_lock_unlock((a1 + 16));
  v4 = 0;
  v33 = MEMORY[0x1E69E7CC0];
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
LABEL_9:
    v10 = *(*(v3 + 56) + ((v4 << 9) | (8 * __clz(__rbit64(v7)))));

    os_unfair_lock_lock((v10 + 40));
    v11 = *(v10 + 48);
    if (*(v11 + 16) && (v12 = sub_1A7CD0DFC(&type metadata for LinkDefinitionComponent), (v13 & 1) != 0))
    {
      sub_1A7B0CD10(*(v11 + 56) + 32 * v12, &v27);
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
    }

    v7 &= v7 - 1;
    os_unfair_lock_unlock((v10 + 40));
    sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v16 = 0;
      v15 = 0;
      v30 = 1;
      v31 = 0;
      v32 = 0;
LABEL_19:
      sub_1A7CDBC48(1, v15, v16);
      goto LABEL_20;
    }

    v14 = v30;
    v15 = v31;
    v16 = v32;
    if (v30 == 1)
    {
      goto LABEL_19;
    }

    sub_1A7CDB7B8(v30, v31, v32);
    sub_1A7CDBC48(v14, v15, v16);
    if (v14 && (*&v27 = v14, *(&v27 + 1) = v15, *&v28 = v16, LinkDefinition.idsLinkType.getter(&v30), sub_1A7CDB84C(v14, v15, v16), !v30))
    {
      sub_1A7E22BF0();
      sub_1A7E22C40();
      sub_1A7E22C50();
      sub_1A7E22C00();
    }

    else
    {
LABEL_20:
    }
  }

  while (1)
  {
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      v17 = v33;
      os_unfair_lock_lock((v26 + 32));
      sub_1A7CC99E0(v26 + 56, &v27);
      os_unfair_lock_unlock((v26 + 32));
      v18 = *(&v28 + 1);
      v19 = v29;
      sub_1A7CC9878(&v27, *(&v28 + 1));
      v20 = (*(v19 + 8))(v17, v18, v19);

      sub_1A7B0CD6C(&v27);
      os_unfair_lock_lock((v26 + 32));
      v21 = *(v26 + 40);

      sub_1A7DB8FA0(v22, v20);
      v24 = v23;

      swift_bridgeObjectRelease_n();
      *a2 = v21;
      a2[1] = v24;
      a2[3] = 0;
      a2[4] = 0;
      a2[2] = 0;
      os_unfair_lock_unlock((v26 + 32));
      return;
    }

    v7 = *(v3 + 64 + 8 * v9);
    ++v4;
    if (v7)
    {
      v4 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1A7DB436C()
{
  v0 = sub_1A7E22060();
  sub_1A7CC7A10(v0, qword_1EB2B75A0);
  sub_1A7B0CB00(v0, qword_1EB2B75A0);
  return sub_1A7E22050();
}

uint64_t IDSConnectRelayLinksByInterfaceTypePlugin.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t IDSConnectRelayLinksByInterfaceTypePlugin.Behavior.description.getter()
{
  v1 = 0x1000000000000019;
  if (*v0 != 1)
  {
    v1 = 0x656E6E6F63736944;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7463656E6E6F43;
  }
}

unint64_t sub_1A7DB449C()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0x656E6E6F63736964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7463656E6E6F63;
  }
}

uint64_t sub_1A7DB4500@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A7DB9E80(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A7DB4528(uint64_t a1)
{
  v2 = sub_1A7DB9628();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DB4564(uint64_t a1)
{
  v2 = sub_1A7DB9628();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7DB45A0(uint64_t a1)
{
  v2 = sub_1A7DB9724();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DB45DC(uint64_t a1)
{
  v2 = sub_1A7DB9724();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7DB4618(uint64_t a1)
{
  v2 = sub_1A7DB967C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DB4654(uint64_t a1)
{
  v2 = sub_1A7DB967C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7DB4690(uint64_t a1)
{
  v2 = sub_1A7DB96D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DB46CC(uint64_t a1)
{
  v2 = sub_1A7DB96D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IDSConnectRelayLinksByInterfaceTypePlugin.Behavior.encode(to:)(void *a1)
{
  v3 = sub_1A7CC7FFC(&qword_1EB2B75B8, &qword_1A7E50F98);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = sub_1A7CC7FFC(&qword_1EB2B75C0, &qword_1A7E50FA0);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = sub_1A7CC7FFC(&qword_1EB2B75C8, &qword_1A7E50FA8);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = sub_1A7CC7FFC(&qword_1EB2B75D0, &qword_1A7E50FB0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DB9628();
  sub_1A7E23260();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1A7DB96D0();
      v9 = v21;
      sub_1A7E22F80();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1A7DB967C();
      v9 = v24;
      sub_1A7E22F80();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1A7DB9724();
    sub_1A7E22F80();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

uint64_t IDSConnectRelayLinksByInterfaceTypePlugin.Behavior.hashValue.getter()
{
  v1 = *v0;
  sub_1A7E23200();
  MEMORY[0x1AC562AF0](v1);
  return sub_1A7E23240();
}

uint64_t IDSConnectRelayLinksByInterfaceTypePlugin.Behavior.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = sub_1A7CC7FFC(&qword_1EB2B75F8, &qword_1A7E50FB8);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - v4;
  v33 = sub_1A7CC7FFC(&qword_1EB2B7600, &qword_1A7E50FC0);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - v5;
  v7 = sub_1A7CC7FFC(&qword_1EB2B7608, &qword_1A7E50FC8);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = sub_1A7CC7FFC(&qword_1EB2B7610, &unk_1A7E50FD0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  sub_1A7CC9878(a1, v14);
  sub_1A7DB9628();
  v15 = v36;
  sub_1A7E23250();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_1A7E22F70();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_1A7CDB540();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_1A7E22BD0();
      swift_allocError();
      v24 = v23;
      sub_1A7CC7FFC(&qword_1EB2B4EC8, &qword_1A7E42100);
      *v24 = &type metadata for IDSConnectRelayLinksByInterfaceTypePlugin.Behavior;
      sub_1A7E22E90();
      sub_1A7E22BC0();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_1A7DB96D0();
          sub_1A7E22E70();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_1A7DB967C();
          v26 = v17;
          sub_1A7E22E70();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_1A7DB9724();
        sub_1A7E22E70();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return sub_1A7B0CD6C(v37);
}

uint64_t sub_1A7DB5088()
{
  v1 = 0x1000000000000019;
  if (*v0 != 1)
  {
    v1 = 0x656E6E6F63736944;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7463656E6E6F43;
  }
}

void IDSConnectRelayLinksByInterfaceTypePlugin.sorter.getter(uint64_t a1@<X8>)
{
  os_unfair_lock_lock(v1 + 8);
  sub_1A7CC99E0(&v1[14], a1);

  os_unfair_lock_unlock(v1 + 8);
}

uint64_t sub_1A7DB5134(uint64_t a1, os_unfair_lock_s **a2)
{
  sub_1A7CC99E0(a1, v5);
  v3 = *a2;
  os_unfair_lock_lock((v3 + 32));
  sub_1A7DB9778((v3 + 56), v5);
  os_unfair_lock_unlock((v3 + 32));
  return sub_1A7B0CD6C(v5);
}

uint64_t IDSConnectRelayLinksByInterfaceTypePlugin.sorter.setter(uint64_t *a1)
{
  os_unfair_lock_lock((v1 + 32));
  sub_1A7DB9778((v1 + 56), a1);
  os_unfair_lock_unlock((v1 + 32));
  return sub_1A7B0CD6C(a1);
}

void (*IDSConnectRelayLinksByInterfaceTypePlugin.sorter.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  os_unfair_lock_lock(v1 + 8);
  sub_1A7CC99E0(&v1[14], v4);
  os_unfair_lock_unlock(v1 + 8);
  return sub_1A7DB525C;
}

void sub_1A7DB525C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[10];
  if (a2)
  {
    sub_1A7CC99E0(*a1, (v2 + 5));
    os_unfair_lock_lock((v3 + 32));
    sub_1A7DB9778((v3 + 56), v2 + 5);
    os_unfair_lock_unlock((v3 + 32));
    sub_1A7B0CD6C(v2 + 5);
  }

  else
  {
    os_unfair_lock_lock((v3 + 32));
    sub_1A7DB9778((v3 + 56), v2);
    os_unfair_lock_unlock((v3 + 32));
  }

  sub_1A7B0CD6C(v2);

  free(v2);
}

void (*IDSConnectRelayLinksByInterfaceTypePlugin.behavior.modify(uint64_t a1))(os_unfair_lock_s **a1)
{
  *a1 = v1;
  os_unfair_lock_lock((v1 + 32));
  *(a1 + 8) = *(v1 + 40);
  os_unfair_lock_unlock((v1 + 32));
  return sub_1A7DB5358;
}

void sub_1A7DB5358(os_unfair_lock_s **a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  os_unfair_lock_lock(*a1 + 8);
  *(v1 + 40) = v2;

  os_unfair_lock_unlock((v1 + 32));
}

uint64_t IDSConnectRelayLinksByInterfaceTypePlugin.logState(_:engine:)(int64_t a1, uint64_t a2)
{
  v5 = sub_1A7CC7FFC(&qword_1EB2B4A80, &unk_1A7E41910);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v87 - v6;
  v96 = type metadata accessor for LinkState(0);
  MEMORY[0x1EEE9AC00](v96);
  v95 = v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v98 = v87 - v10;
  *&v106 = 0x726F697661686542;
  *(&v106 + 1) = 0xEA0000000000203ALL;
  os_unfair_lock_lock((v2 + 32));
  v11 = *(v2 + 40);
  v101 = v2;
  os_unfair_lock_unlock((v2 + 32));
  v12 = 0x80000001A7EB1280;
  v13 = 0x1000000000000019;
  if (v11 != 1)
  {
    v13 = 0x656E6E6F63736944;
    v12 = 0xEA00000000007463;
  }

  if (v11)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0x7463656E6E6F43;
  }

  if (v11)
  {
    v15 = v12;
  }

  else
  {
    v15 = 0xE700000000000000;
  }

  MEMORY[0x1AC561C90](v14, v15);

  v17 = *(&v106 + 1);
  v16 = v106;
  v18 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_126;
  }

LABEL_10:
  v21 = *(v18 + 2);
  v20 = *(v18 + 3);
  v22 = v21 + 1;
  if (v21 >= v20 >> 1)
  {
    v18 = sub_1A7CCCAA4((v20 > 1), v21 + 1, 1, v18);
  }

  *(v18 + 2) = v22;
  v23 = &v18[v21];
  *(v23 + 4) = v16;
  *(v23 + 5) = v17;
  *a1 = v18;
  v24 = *(v18 + 3);
  if ((v21 + 2) > (v24 >> 1))
  {
    v18 = sub_1A7CCCAA4((v24 > 1), v21 + 2, 1, v18);
  }

  *(v18 + 2) = v21 + 2;
  v25 = &v18[v22];
  *(v25 + 4) = 0xD000000000000010;
  *(v25 + 5) = 0x80000001A7EB12A0;
  v91 = a1;
  *a1 = v18;
  os_unfair_lock_lock((a2 + 16));
  v26 = *(a2 + 24);

  os_unfair_lock_unlock((a2 + 16));
  v27 = 0;
  v109[0] = MEMORY[0x1E69E7CC0];
  v17 = v26 + 64;
  v28 = 1 << *(v26 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v16 = v29 & *(v26 + 64);
  a1 = (v28 + 63) >> 6;
  v102 = v7;
  while (v16)
  {
LABEL_22:
    v31 = *(*(v26 + 56) + ((v27 << 9) | (8 * __clz(__rbit64(v16)))));

    os_unfair_lock_lock((v31 + 40));
    v18 = *(v31 + 48);
    if (*(v18 + 2) && (v32 = sub_1A7CD0DFC(&type metadata for LinkDefinitionComponent), (v33 & 1) != 0))
    {
      sub_1A7B0CD10(*(v18 + 7) + 32 * v32, &v106);
    }

    else
    {
      v106 = 0u;
      v107 = 0u;
    }

    v16 &= v16 - 1;
    os_unfair_lock_unlock((v31 + 40));
    sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v35 = 0;
      a2 = 0;
      v103 = 1uLL;
      v104 = 0;
LABEL_32:
      sub_1A7CDBC48(1, a2, v35);
      goto LABEL_33;
    }

    a2 = *(&v103 + 1);
    v34 = v103;
    v35 = v104;
    if (v103 == 1)
    {
      goto LABEL_32;
    }

    sub_1A7CDB7B8(v103, *(&v103 + 1), v104);
    sub_1A7CDBC48(v34, a2, v35);
    if (v34 && (v106 = __PAIR128__(a2, v34), *&v107 = v35, v18 = &v106, LinkDefinition.idsLinkType.getter(&v103), sub_1A7CDB84C(v34, a2, v35), !v103))
    {
      v18 = v109;
      sub_1A7E22BF0();
      a2 = *(v109[0] + 16);
      sub_1A7E22C40();
      sub_1A7E22C50();
      sub_1A7E22C00();
      v7 = v102;
    }

    else
    {
LABEL_33:

      v7 = v102;
    }
  }

  while (1)
  {
    v30 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
      goto LABEL_125;
    }

    if (v30 >= a1)
    {
      break;
    }

    v16 = *(v17 + 8 * v30);
    ++v27;
    if (v16)
    {
      v27 = v30;
      goto LABEL_22;
    }
  }

  v36 = v109[0];
  v17 = v101;
  os_unfair_lock_lock((v101 + 32));
  sub_1A7CC99E0(v17 + 56, &v106);
  os_unfair_lock_unlock((v17 + 32));
  a2 = *(&v107 + 1);
  v37 = v108;
  v18 = sub_1A7CC9878(&v106, *(&v107 + 1));
  v38 = (*(v37 + 8))(v36, a2, v37);

  sub_1A7B0CD6C(&v106);
  os_unfair_lock_lock((v17 + 32));
  v39 = *(v17 + 48);

  os_unfair_lock_unlock((v17 + 32));
  v40 = 0;
  v42 = v39 + 64;
  v41 = *(v39 + 64);
  v90 = v39;
  v43 = 1 << *(v39 + 32);
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v16 = v44 & v41;
  v45 = (v43 + 63) >> 6;
  v46 = v38 & 0xFFFFFFFFFFFFFF8;
  v101 = v38 & 0xFFFFFFFFFFFFFF8;
  if (v38 < 0)
  {
    v46 = v38;
  }

  v87[1] = v46;
  v97 = v38 & 0xC000000000000001;
  v47 = v91;
  v94 = v38;
  v89 = v42;
  v88 = v45;
LABEL_42:
  if (v16)
  {
    goto LABEL_47;
  }

  while (1)
  {
    v50 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      goto LABEL_124;
    }

    if (v50 >= v45)
    {
      break;
    }

    v16 = *(v42 + 8 * v50);
    ++v40;
    if (v16)
    {
      v40 = v50;
LABEL_47:
      v17 = *(*(v90 + 48) + (__clz(__rbit64(v16)) | (v40 << 6)));
      *&v106 = 8237;
      *(&v106 + 1) = 0xE200000000000000;
      v93 = v40;
      v92 = v16;
      if (v17 > 1)
      {
        if (v17 == 2)
        {
          v51 = 0xE800000000000000;
          v52 = 0x72616C756C6C6543;
        }

        else
        {
          v51 = 0xE700000000000000;
          v52 = 0x6E776F6E6B6E55;
        }
      }

      else if (v17)
      {
        v51 = 0xE400000000000000;
        v52 = 1766222167;
      }

      else
      {
        v51 = 0xE500000000000000;
        v52 = 0x6465726957;
      }

      MEMORY[0x1AC561C90](v52, v51);

      MEMORY[0x1AC561C90](58, 0xE100000000000000);
      v53 = v106;
      v16 = *v47;
      v54 = swift_isUniquelyReferenced_nonNull_native();
      *v47 = v16;
      if ((v54 & 1) == 0)
      {
        v16 = sub_1A7CCCAA4(0, *(v16 + 16) + 1, 1, v16);
        *v47 = v16;
      }

      v56 = *(v16 + 16);
      v55 = *(v16 + 24);
      v18 = (v56 + 1);
      if (v56 >= v55 >> 1)
      {
        v16 = sub_1A7CCCAA4((v55 > 1), v56 + 1, 1, v16);
      }

      *(v16 + 16) = v18;
      *(v16 + 16 * v56 + 32) = v53;
      *v47 = v16;
      v109[0] = MEMORY[0x1E69E7CC0];
      if (!(v38 >> 62))
      {
        a2 = *(v101 + 16);
        if (a2)
        {
          goto LABEL_60;
        }

LABEL_97:
        a2 = MEMORY[0x1E69E7CC0];
        if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
        {
          goto LABEL_118;
        }

LABEL_98:
        if ((a2 & 0x4000000000000000) == 0)
        {
          a1 = *(a2 + 16);
          if (a1)
          {
            goto LABEL_100;
          }

LABEL_40:
          v48 = MEMORY[0x1E69E7CC0];
LABEL_41:
          v16 = (v92 - 1) & v92;

          *&v106 = v48;
          v49._countAndFlagsBits = 538976288;
          v49._object = 0xE400000000000000;
          v47 = v91;
          v18 = v91;
          LinkEngineStateLog.log(_:indentation:)(&v106, v49);

          v38 = v94;
          v42 = v89;
          v40 = v93;
          v45 = v88;
          goto LABEL_42;
        }

LABEL_118:
        a1 = sub_1A7E22DA0();
        if (!a1)
        {
          goto LABEL_40;
        }

LABEL_100:
        v68 = type metadata accessor for LinkStateComponent(0);
        if (a1 >= 1)
        {
          v69 = v68;
          v70 = 0;
          v99 = v68 - 8;
          v100 = a2 & 0xC000000000000001;
          v48 = MEMORY[0x1E69E7CC0];
          do
          {
            if (v100)
            {
              v71 = MEMORY[0x1AC562480](v70, a2);
            }

            else
            {
              v71 = *(a2 + 8 * v70 + 32);
            }

            *&v103 = 8237;
            *(&v103 + 1) = 0xE200000000000000;
            os_unfair_lock_lock((v71 + 40));
            v72 = *(v71 + 48);
            if (*(v72 + 16) && (v73 = sub_1A7CD0DFC(v69), (v74 & 1) != 0))
            {
              sub_1A7B0CD10(*(v72 + 56) + 32 * v73, &v106);
            }

            else
            {
              v106 = 0u;
              v107 = 0u;
            }

            os_unfair_lock_unlock((v71 + 40));
            sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
            v75 = swift_dynamicCast();
            v76 = *(v69 - 8);
            (*(v76 + 56))(v7, v75 ^ 1u, 1, v69);
            if ((*(v76 + 48))(v7, 1, v69))
            {
              sub_1A7CC9970(v7, &qword_1EB2B4A80, &unk_1A7E41910);
              v77 = v98;
              swift_storeEnumTagMultiPayload();
            }

            else
            {
              v78 = v95;
              sub_1A7CD0EC4(v7, v95);
              sub_1A7CC9970(v7, &qword_1EB2B4A80, &unk_1A7E41910);
              v77 = v98;
              sub_1A7DB9FA8(v78, v98, type metadata accessor for LinkState);
            }

            v79 = LinkState.description.getter();
            MEMORY[0x1AC561C90](v79);

            sub_1A7CD0E68(v77);
            MEMORY[0x1AC561C90](32, 0xE100000000000000);
            v81 = *(v71 + 16);
            v80 = *(v71 + 24);

            MEMORY[0x1AC561C90](v81, v80);

            v82 = *(&v103 + 1);
            v17 = v103;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v48 = sub_1A7CCCAA4(0, *(v48 + 2) + 1, 1, v48);
            }

            v84 = *(v48 + 2);
            v83 = *(v48 + 3);
            if (v84 >= v83 >> 1)
            {
              v48 = sub_1A7CCCAA4((v83 > 1), v84 + 1, 1, v48);
            }

            ++v70;

            *(v48 + 2) = v84 + 1;
            v85 = &v48[16 * v84];
            *(v85 + 4) = v17;
            *(v85 + 5) = v82;
            v7 = v102;
          }

          while (a1 != v70);
          goto LABEL_41;
        }

LABEL_125:
        __break(1u);
LABEL_126:
        v18 = sub_1A7CCCAA4(0, *(v18 + 2) + 1, 1, v18);
        *a1 = v18;
        goto LABEL_10;
      }

      a2 = sub_1A7E22DA0();
      if (!a2)
      {
        goto LABEL_97;
      }

LABEL_60:
      a1 = 0;
      while (2)
      {
        if (v97)
        {
          v16 = MEMORY[0x1AC562480](a1, v38);
          v57 = a1 + 1;
          if (__OFADD__(a1, 1))
          {
            goto LABEL_121;
          }
        }

        else
        {
          if (a1 >= *(v101 + 16))
          {
            goto LABEL_122;
          }

          v16 = *(v38 + 8 * a1 + 32);

          v57 = a1 + 1;
          if (__OFADD__(a1, 1))
          {
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }
        }

        os_unfair_lock_lock((v16 + 40));
        v58 = *(v16 + 48);
        if (*(v58 + 16) && (v59 = sub_1A7CD0DFC(&type metadata for LinkDefinitionComponent), (v60 & 1) != 0))
        {
          sub_1A7B0CD10(*(v58 + 56) + 32 * v59, &v106);
        }

        else
        {
          v106 = 0u;
          v107 = 0u;
        }

        os_unfair_lock_unlock((v16 + 40));
        sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
        if (swift_dynamicCast())
        {
          v18 = *(&v103 + 1);
          v61 = v103;
          v62 = v104;
          if (v103 != 1)
          {
            v63 = v104;
            sub_1A7CDB7B8(v103, *(&v103 + 1), v104);
            v64 = v63;
            v65 = v63;
            v38 = v94;
            sub_1A7CDBC48(v61, v18, v65);
            if (!v61)
            {
              goto LABEL_81;
            }

            sub_1A7CDB84C(v61, v18, v64);
            if (!*(v18 + 2) || (v66 = sub_1A7CD0DFC(&type metadata for LinkEndpointIDSRAT), (v67 & 1) == 0))
            {

              goto LABEL_81;
            }

            sub_1A7B0CD10(*(v18 + 7) + 32 * v66, &v106);

            sub_1A7B1503C(&v106, &v103);
            sub_1A7CC7FFC(&qword_1EB2B5040, &qword_1A7E44C60);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_81;
            }

            if (v105)
            {
              if (v105 != 9)
              {
                if (v105 == 10)
                {
                  if (v17 == 3)
                  {
                    goto LABEL_90;
                  }
                }

                else if (v17 == 2)
                {
                  goto LABEL_90;
                }

LABEL_81:

LABEL_82:
                ++a1;
                if (v57 == a2)
                {
                  a2 = v109[0];
                  if ((v109[0] & 0x8000000000000000) == 0)
                  {
                    goto LABEL_98;
                  }

                  goto LABEL_118;
                }

                continue;
              }

              if (v17)
              {
                goto LABEL_81;
              }
            }

            else if (v17 != 1)
            {
              goto LABEL_81;
            }

LABEL_90:
            v18 = v109;
            sub_1A7E22BF0();
            sub_1A7E22C40();
            sub_1A7E22C50();
            sub_1A7E22C00();
            goto LABEL_82;
          }
        }

        else
        {
          v62 = 0;
          v18 = 0;
          v103 = 1uLL;
          v104 = 0;
        }

        break;
      }

      sub_1A7CDBC48(1, v18, v62);
      goto LABEL_81;
    }
  }
}

uint64_t IDSConnectRelayLinksByInterfaceTypePlugin.init(interfaceTypes:sorter:fallbackDelay:disconnectDelay:nowProvider:behavior:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9)
{
  v26 = a6;
  v27 = a7;
  v25 = a5;
  v16 = a2[3];
  v15 = a2[4];
  v17 = sub_1A7CC9920(a2, v16);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v18);
  v22 = sub_1A7DB920C(a1, v20, a3, a4, v25, v26, v27, a8, a9, v9, v16, v15);

  sub_1A7B0CD6C(a2);
  return v22;
}

double IDSConnectRelayLinksByInterfaceTypePlugin.register(engine:)(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = swift_allocObject();
  *(v3 + 16) = &unk_1A7E4E9C0;
  *(v3 + 24) = v1;

  sub_1A7D219A8(v4, &unk_1A7E44460, v3, v2);

  return result;
}

uint64_t sub_1A7DB624C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A7CD22FC;

  return IDSConnectRelayLinksByInterfaceTypePlugin.update(engine:)(a1);
}

uint64_t IDSConnectRelayLinksByInterfaceTypePlugin.update(engine:)(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A7DB6304, 0, 0);
}

uint64_t sub_1A7DB6304()
{
  v37 = v0;
  v1 = LinkEngine.linkConnector.getter();
  if (!v1)
  {
    if (qword_1EB2B4878 != -1)
    {
      goto LABEL_32;
    }

    goto LABEL_25;
  }

  v31 = v2;
  v32 = v1;
  v3 = *(v0 + 80);
  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);

  os_unfair_lock_unlock((v3 + 16));
  v5 = 0;
  v33 = v4;
  v34 = MEMORY[0x1E69E7CC0];
  v6 = v4 + 64;
  v7 = -1;
  v8 = -1 << *(v4 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v4 + 64);
  v10 = (63 - v8) >> 6;
  while (v9)
  {
LABEL_10:
    v12 = *(*(v33 + 56) + ((v5 << 9) | (8 * __clz(__rbit64(v9)))));

    os_unfair_lock_lock((v12 + 40));
    v13 = *(v12 + 48);
    if (*(v13 + 16) && (v14 = sub_1A7CD0DFC(&type metadata for LinkDefinitionComponent), (v15 & 1) != 0))
    {
      sub_1A7B0CD10(*(v13 + 56) + 32 * v14, v0 + 16);
    }

    else
    {
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
    }

    v9 &= v9 - 1;
    os_unfair_lock_unlock((v12 + 40));
    sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v18 = 0;
      v16 = 0;
      *(v0 + 64) = 0;
      *(v0 + 72) = 0;
      *(v0 + 56) = 1;
LABEL_20:
      sub_1A7CDBC48(1, v16, v18);
      goto LABEL_21;
    }

    v17 = *(v0 + 56);
    v16 = *(v0 + 64);
    v18 = *(v0 + 72);
    if (v17 == 1)
    {
      goto LABEL_20;
    }

    sub_1A7CDB7B8(*(v0 + 56), *(v0 + 64), *(v0 + 72));
    sub_1A7CDBC48(v17, v16, v18);
    if (v17 && (v35[0] = v17, v35[1] = v16, v35[2] = v18, LinkDefinition.idsLinkType.getter(&v36), sub_1A7CDB84C(v17, v16, v18), !v36))
    {
      sub_1A7E22BF0();
      sub_1A7E22C40();
      sub_1A7E22C50();
      sub_1A7E22C00();
    }

    else
    {
LABEL_21:
    }
  }

  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v11 >= v10)
    {
      v19 = *(v0 + 80);
      v20 = *(v0 + 88);

      os_unfair_lock_lock((v20 + 32));
      sub_1A7CC99E0(v20 + 56, v0 + 16);
      os_unfair_lock_unlock((v20 + 32));
      v21 = *(v0 + 40);
      v22 = *(v0 + 48);
      sub_1A7CC9878((v0 + 16), v21);
      v23 = (*(v22 + 8))(v34, v21, v22);

      sub_1A7B0CD6C((v0 + 16));
      os_unfair_lock_lock((v20 + 32));
      sub_1A7DB6794((v20 + 40), v32, v31, v19, v23, v20);

      os_unfair_lock_unlock((v20 + 32));
      swift_unknownObjectRelease();
      goto LABEL_28;
    }

    v9 = *(v6 + 8 * v11);
    ++v5;
    if (v9)
    {
      v5 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_32:
  swift_once();
LABEL_25:
  v24 = sub_1A7E22060();
  sub_1A7B0CB00(v24, qword_1EB2B75A0);
  v25 = sub_1A7E22040();
  v26 = sub_1A7E228E0();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v35[0] = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_1A7B0CB38(0x6528657461647075, 0xEF293A656E69676ELL, v35);
    _os_log_impl(&dword_1A7AD9000, v25, v26, "%s: no link connector", v27, 0xCu);
    sub_1A7B0CD6C(v28);
    MEMORY[0x1AC5654B0](v28, -1, -1);
    MEMORY[0x1AC5654B0](v27, -1, -1);
  }

LABEL_28:
  v29 = *(v0 + 8);

  return v29();
}

void sub_1A7DB6794(unsigned __int8 *a1, uint64_t a2, void (**a3)(void, void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v51 = a4;
  v52 = a6;
  v49 = a2;
  v50 = a3;
  v48 = sub_1A7E22CF0();
  MEMORY[0x1EEE9AC00](v48);
  v47 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 1);
  v12 = v10 + 64;
  v11 = *(v10 + 64);
  v13 = 1 << *(v10 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v45 = *a1;
  v15 = v14 & v11;
  v16 = (v13 + 63) >> 6;
  v17 = a5 & 0xFFFFFFFFFFFFFF8;
  v57 = a5 & 0xFFFFFFFFFFFFFF8;
  if (a5 < 0)
  {
    v17 = a5;
  }

  v42[1] = v17;
  v58 = a5;
  v55 = a5 & 0xC000000000000001;
  v43 = (v8 + 8);
  v53 = v10;

  v18 = 0;
  v46 = v12;
  for (i = v16; ; v16 = i)
  {
    if (!v15)
    {
      do
      {
        v21 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_58;
        }

        if (v21 >= v16)
        {

          return;
        }

        v15 = *(v12 + 8 * v21);
        ++v18;
      }

      while (!v15);
      v18 = v21;
    }

    v22 = __clz(__rbit64(v15)) | (v18 << 6);
    v23 = *(*(v53 + 48) + v22);
    v24 = *(*(v53 + 56) + 8 * v22);
    v63 = MEMORY[0x1E69E7CC0];
    if (v58 >> 62)
    {
      v41 = v24;
      v25 = sub_1A7E22DA0();
      v24 = v41;
    }

    else
    {
      v25 = *(v57 + 16);
    }

    v54 = v24;

    if (v25)
    {
      break;
    }

    v19 = MEMORY[0x1E69E7CC0];
LABEL_7:
    v15 &= v15 - 1;
    v20 = v47;
    (*(v52 + 96))();
    sub_1A7DB7758(v49, v50, v51, v19, v45, v20, v54);

    (*v43)(v20, v48);
    v12 = v46;
  }

  v26 = 0;
  v56 = v25;
  while (v55)
  {
    v27 = MEMORY[0x1AC562480](v26, v58);
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      goto LABEL_56;
    }

LABEL_22:
    os_unfair_lock_lock((v27 + 40));
    v29 = *(v27 + 48);
    if (*(v29 + 16) && (v30 = sub_1A7CD0DFC(&type metadata for LinkDefinitionComponent), (v31 & 1) != 0))
    {
      sub_1A7B0CD10(*(v29 + 56) + 32 * v30, v62);
    }

    else
    {
      memset(v62, 0, 32);
    }

    v32 = v23;
    os_unfair_lock_unlock((v27 + 40));
    sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v35 = 0;
      v33 = 0;
      v59 = 1uLL;
      v60 = 0;
LABEL_38:
      sub_1A7CDBC48(1, v33, v35);
LABEL_39:
      v23 = v32;
      v40 = v32 == 4;
      v38 = v56;
      if (v40)
      {
        goto LABEL_41;
      }

      goto LABEL_17;
    }

    v33 = *(&v59 + 1);
    v34 = v59;
    v35 = v60;
    if (v59 == 1)
    {
      goto LABEL_38;
    }

    sub_1A7CDB7B8(v59, *(&v59 + 1), v60);
    sub_1A7CDBC48(v34, v33, v35);
    if (!v34)
    {
      goto LABEL_39;
    }

    sub_1A7CDB84C(v34, v33, v35);
    if (!*(v33 + 16) || (v36 = sub_1A7CD0DFC(&type metadata for LinkEndpointIDSRAT), (v37 & 1) == 0))
    {

      goto LABEL_39;
    }

    sub_1A7B0CD10(*(v33 + 56) + 32 * v36, v62);

    sub_1A7B1503C(v62, &v59);
    sub_1A7CC7FFC(&qword_1EB2B5040, &qword_1A7E44C60);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_39;
    }

    if (v61)
    {
      v23 = v32;
      if (v61 != 9)
      {
        v38 = v56;
        if (v61 == 10)
        {
          v39 = 3;
          if (v23 == 4)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v39 = 2;
          if (v23 == 4)
          {
            goto LABEL_17;
          }
        }

        goto LABEL_48;
      }

      v39 = 0;
    }

    else
    {
      v39 = 1;
      v23 = v32;
    }

    v38 = v56;
    if (v23 == 4)
    {
      goto LABEL_17;
    }

LABEL_48:
    if (v39 == v23)
    {
LABEL_41:
      sub_1A7E22BF0();
      sub_1A7E22C40();
      sub_1A7E22C50();
      sub_1A7E22C00();
      goto LABEL_18;
    }

LABEL_17:

LABEL_18:
    ++v26;
    if (v28 == v38)
    {
      v19 = v63;
      goto LABEL_7;
    }
  }

  if (v26 >= *(v57 + 16))
  {
    goto LABEL_57;
  }

  v27 = *(v58 + 8 * v26 + 32);

  v28 = v26 + 1;
  if (!__OFADD__(v26, 1))
  {
    goto LABEL_22;
  }

LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
}

void sub_1A7DB6CC0(unsigned __int8 *a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v64 = a3;
  v5 = sub_1A7CC7FFC(&qword_1EB2B4A80, &unk_1A7E41910);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v63 - v6;
  v66 = type metadata accessor for LinkState(0);
  MEMORY[0x1EEE9AC00](v66);
  v65 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LEToolLink(0);
  v71 = *(v9 - 8);
  v72 = v9;
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v9);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  *&v93 = MEMORY[0x1E69E7CC0];
  if (a2 >> 62)
  {
    goto LABEL_76;
  }

  v14 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v15 = MEMORY[0x1E69E7CC0];
  v73 = v7;
  v74 = v13;
  if (!v14)
  {
    v30 = MEMORY[0x1E69E7CC0];
    if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
    {
      goto LABEL_77;
    }

LABEL_43:
    if ((v30 & 0x4000000000000000) != 0)
    {
      goto LABEL_77;
    }

    v31 = *(v30 + 16);
    if (v31)
    {
      goto LABEL_45;
    }

LABEL_78:

    v32 = MEMORY[0x1E69E7CC0];
LABEL_79:
    v62 = v64;
    *v64 = v13;
    *(v62 + 1) = v32;
    return;
  }

  v16 = 0;
  v128 = a2 & 0xC000000000000001;
  v76 = v14;
  v77 = a2 & 0xFFFFFFFFFFFFFF8;
  while (!v128)
  {
    if (v16 >= *(v77 + 16))
    {
      __break(1u);
LABEL_76:
      v14 = sub_1A7E22DA0();
      goto LABEL_3;
    }

    v17 = *(a2 + 8 * v16 + 32);

    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      goto LABEL_39;
    }

LABEL_10:
    os_unfair_lock_lock((v17 + 40));
    v19 = *(v17 + 48);
    if (*(v19 + 16) && (v20 = sub_1A7CD0DFC(&type metadata for LinkDefinitionComponent), (v21 & 1) != 0))
    {
      sub_1A7B0CD10(*(v19 + 56) + 32 * v20, &v109);
    }

    else
    {
      v109 = 0u;
      v110 = 0u;
    }

    v7 = a2;
    os_unfair_lock_unlock((v17 + 40));
    sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v24 = 0;
      v22 = 0;
      v78 = 1uLL;
      *&v79 = 0;
LABEL_26:
      sub_1A7CDBC48(1, v22, v24);
LABEL_27:
      a2 = v7;
      if (v13 == 4)
      {
        goto LABEL_28;
      }

      goto LABEL_5;
    }

    v22 = *(&v78 + 1);
    v23 = v78;
    v24 = v79;
    if (v78 == 1)
    {
      goto LABEL_26;
    }

    v25 = v79;
    sub_1A7CDB7B8(v78, *(&v78 + 1), v79);
    v75 = v25;
    v26 = v25;
    v13 = v74;
    sub_1A7CDBC48(v23, v22, v26);
    if (!v23)
    {
      goto LABEL_27;
    }

    sub_1A7CDB84C(v23, v22, v75);
    if (!*(v22 + 16) || (v27 = sub_1A7CD0DFC(&type metadata for LinkEndpointIDSRAT), (v28 & 1) == 0))
    {

      goto LABEL_27;
    }

    sub_1A7B0CD10(*(v22 + 56) + 32 * v27, &v109);

    sub_1A7B1503C(&v109, &v78);
    sub_1A7CC7FFC(&qword_1EB2B5040, &qword_1A7E44C60);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_27;
    }

    if (LODWORD(v107[0]))
    {
      a2 = v7;
      if (LODWORD(v107[0]) == 9)
      {
        v29 = 0;
        if (v13 == 4)
        {
          goto LABEL_5;
        }
      }

      else if (LODWORD(v107[0]) == 10)
      {
        v29 = 3;
        if (v13 == 4)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v29 = 2;
        if (v13 == 4)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
      v29 = 1;
      a2 = v7;
      if (v13 == 4)
      {
        goto LABEL_5;
      }
    }

    if (v29 == v13)
    {
LABEL_28:
      sub_1A7E22BF0();
      v7 = *(v93 + 16);
      sub_1A7E22C40();
      sub_1A7E22C50();
      sub_1A7E22C00();
      goto LABEL_6;
    }

LABEL_5:

LABEL_6:
    ++v16;
    if (v18 == v76)
    {
      goto LABEL_40;
    }
  }

  v17 = MEMORY[0x1AC562480](v16, a2, v10);
  v18 = v16 + 1;
  if (!__OFADD__(v16, 1))
  {
    goto LABEL_10;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  v30 = v93;
  v15 = MEMORY[0x1E69E7CC0];
  if ((v93 & 0x8000000000000000) == 0)
  {
    goto LABEL_43;
  }

LABEL_77:
  v31 = sub_1A7E22DA0();
  if (!v31)
  {
    goto LABEL_78;
  }

LABEL_45:
  v127 = v15;
  sub_1A7CCEB90(0, v31 & ~(v31 >> 63), 0);
  if ((v31 & 0x8000000000000000) == 0)
  {
    v32 = v127;
    v75 = type metadata accessor for LinkStateComponent(0);
    v68 = v75 - 8;
    v69 = v30 & 0xC000000000000001;
    v33 = 0;
    v67 = v31 - 1;
    for (i = v30; ; v30 = i)
    {
      v128 = v33;
      if (v69)
      {
        v34 = MEMORY[0x1AC562480]();
      }

      else
      {
        v34 = *(v30 + 8 * v33 + 32);
      }

      v35 = *(v34 + 24);
      v76 = *(v34 + 16);
      v77 = v35;

      os_unfair_lock_lock((v34 + 40));
      v36 = *(v34 + 48);
      if (*(v36 + 16) && (v37 = sub_1A7CD0DFC(&type metadata for LinkDefinitionComponent), (v38 & 1) != 0))
      {
        sub_1A7B0CD10(*(v36 + 56) + 32 * v37, v123);
      }

      else
      {
        memset(v123, 0, sizeof(v123));
      }

      os_unfair_lock_unlock((v34 + 40));
      sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v40 = v124;
      v39 = v125;
      v41 = v126;
      if (v124 == 1)
      {
        goto LABEL_61;
      }

      sub_1A7CDB7B8(v124, v125, v126);
      sub_1A7CDBC48(v40, v39, v41);
      if (!v40)
      {
        goto LABEL_62;
      }

      v92[2] = v39;
      LinkEndpoint.toolRepresentation.getter(&v100);
      v92[1] = v41;
      LinkEndpoint.toolRepresentation.getter(v107);
      sub_1A7CE0528(v40, v92);
      v42 = v92[0];
      sub_1A7CDB84C(v40, v39, v41);
      v43 = MEMORY[0x1E69E7CC0];
      if (v42)
      {
        v43 = v42;
      }

      v97 = v104;
      v98 = v105;
      LOWORD(v99[0]) = v106;
      v93 = v100;
      v94 = v101;
      v95 = v102;
      v96 = v103;
      *(v99 + 8) = v107[0];
      *(&v99[1] + 8) = v107[1];
      *(&v99[2] + 8) = v107[2];
      WORD4(v99[6]) = v108;
      *(&v99[5] + 8) = v107[5];
      *(&v99[4] + 8) = v107[4];
      *(&v99[3] + 8) = v107[3];
      v80 = v102;
      v81 = v103;
      v78 = v100;
      v79 = v101;
      v84 = v99[0];
      v85 = v99[1];
      v82 = v104;
      v83 = v105;
      v89 = v99[5];
      v90 = v99[6];
      v87 = v99[3];
      v88 = v99[4];
      v86 = v99[2];
      v91 = v43;
      nullsub_15();
      v119 = v88;
      v120 = v89;
      v121 = v90;
      v122 = v91;
      v115 = v84;
      v116 = v85;
      v117 = v86;
      v118 = v87;
      v111 = v80;
      v112 = v81;
      v113 = v82;
      v114 = v83;
      v109 = v78;
      v110 = v79;
LABEL_63:
      v44 = v73;
      LOBYTE(v13) = v74;
      os_unfair_lock_lock((v34 + 40));
      v45 = *(v34 + 48);
      if (*(v45 + 16) && (v46 = sub_1A7CD0DFC(v75), (v47 & 1) != 0))
      {
        sub_1A7B0CD10(*(v45 + 56) + 32 * v46, &v78);
      }

      else
      {
        v78 = 0u;
        v79 = 0u;
      }

      os_unfair_lock_unlock((v34 + 40));

      v48 = v75;
      v49 = swift_dynamicCast();
      v50 = *(v48 - 8);
      (*(v50 + 56))(v44, v49 ^ 1u, 1, v48);
      v51 = *(v72 + 24);
      if ((*(v50 + 48))(v44, 1, v48))
      {
        sub_1A7CC9970(v44, &qword_1EB2B4A80, &unk_1A7E41910);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v52 = v65;
        sub_1A7CD0EC4(v44, v65);
        sub_1A7CC9970(v44, &qword_1EB2B4A80, &unk_1A7E41910);
        sub_1A7DB9FA8(v52, &v12[v51], type metadata accessor for LinkState);
      }

      v53 = v77;
      *v12 = v76;
      *(v12 + 1) = v53;
      v54 = v114;
      *(v12 + 5) = v113;
      *(v12 + 6) = v54;
      v55 = v112;
      *(v12 + 3) = v111;
      *(v12 + 4) = v55;
      v56 = v118;
      *(v12 + 9) = v117;
      *(v12 + 10) = v56;
      v57 = v116;
      *(v12 + 7) = v115;
      *(v12 + 8) = v57;
      *(v12 + 28) = v122;
      v58 = v121;
      *(v12 + 12) = v120;
      *(v12 + 13) = v58;
      *(v12 + 11) = v119;
      v59 = v110;
      *(v12 + 1) = v109;
      *(v12 + 2) = v59;
      v61 = *(v32 + 16);
      v60 = *(v32 + 24);
      v127 = v32;
      if (v61 >= v60 >> 1)
      {
        sub_1A7CCEB90((v60 > 1), v61 + 1, 1);
        v32 = v127;
      }

      *(v32 + 16) = v61 + 1;
      sub_1A7DB9FA8(v12, v32 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v61, type metadata accessor for LEToolLink);
      if (v67 == v128)
      {

        goto LABEL_79;
      }

      v33 = v128 + 1;
    }

    v41 = 0;
    v39 = 0;
    v124 = 1;
    v125 = 0;
    v126 = 0;
LABEL_61:
    sub_1A7CDBC48(1, v39, v41);
LABEL_62:
    sub_1A7D21964(&v109);
    goto LABEL_63;
  }

  __break(1u);
}

uint64_t IDSConnectRelayLinksByInterfaceTypePlugin.deinit()
{

  sub_1A7DB9994(v0 + 40);

  return v0;
}

uint64_t IDSConnectRelayLinksByInterfaceTypePlugin.__deallocating_deinit()
{

  sub_1A7DB9994(v0 + 40);

  return swift_deallocClassInstance();
}

double sub_1A7DB76A4(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = swift_allocObject();
  *(v3 + 16) = &unk_1A7E514F0;
  *(v3 + 24) = v1;

  sub_1A7D219A8(v4, &unk_1A7E514F8, v3, v2);

  return result;
}

_BYTE *sub_1A7DB7758(uint64_t a1, void (**a2)(void, void), uint64_t a3, unint64_t a4, unsigned __int8 a5, uint64_t a6, void *a7)
{
  v206 = a7;
  v223 = a6;
  v7 = a5;
  v215 = a1;
  v216 = a2;
  v10 = a5;
  v11 = sub_1A7CC7FFC(&qword_1EB2B4A80, &unk_1A7E41910);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v184 = &v174[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v183 = &v174[-v14];
  MEMORY[0x1EEE9AC00](v15);
  v198 = &v174[-v16];
  MEMORY[0x1EEE9AC00](v17);
  v212 = &v174[-v18];
  MEMORY[0x1EEE9AC00](v19);
  v197 = &v174[-v20];
  MEMORY[0x1EEE9AC00](v21);
  v196 = &v174[-v22];
  MEMORY[0x1EEE9AC00](v23);
  v213 = &v174[-v24];
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v174[-v26];
  v230 = type metadata accessor for LinkState(0);
  MEMORY[0x1EEE9AC00](v230);
  v189 = &v174[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v174[-v30];
  MEMORY[0x1EEE9AC00](v32);
  v211 = &v174[-v33];
  MEMORY[0x1EEE9AC00](v34);
  v210 = &v174[-v35];
  MEMORY[0x1EEE9AC00](v36);
  v209 = &v174[-v37];
  MEMORY[0x1EEE9AC00](v38);
  v191 = &v174[-v39];
  MEMORY[0x1EEE9AC00](v40);
  v208 = &v174[-v41];
  MEMORY[0x1EEE9AC00](v42);
  v195 = &v174[-v43];
  MEMORY[0x1EEE9AC00](v44);
  v207 = &v174[-v45];
  MEMORY[0x1EEE9AC00](v46);
  v204 = &v174[-v47];
  MEMORY[0x1EEE9AC00](v48);
  v225 = &v174[-v49];
  v50 = sub_1A7E22CF0();
  v51 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v188 = &v174[-((v52 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v53);
  v187 = &v174[-v54];
  MEMORY[0x1EEE9AC00](v55);
  v182 = &v174[-v56];
  v57 = sub_1A7CC7FFC(&qword_1EB2B5B78, &unk_1A7E488D0);
  MEMORY[0x1EEE9AC00](v57 - 8);
  v203 = &v174[-((v58 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v59);
  v186 = &v174[-v60];
  v63 = MEMORY[0x1EEE9AC00](v61);
  result = &v174[-v62];
  if (v10 != 1)
  {
    v65 = v206[5];
    v181 = v206[4];
    v180 = v65;
    v66 = *(v51 + 56);
    v202 = &v174[-v62];
    v224 = v50;
    v201 = v51 + 56;
    v200 = v66;
    v66(v63);
    v222 = v27;
    v178 = v31;
    v185 = v51;
    v177 = a3;
    if (a4 >> 62)
    {
      goto LABEL_81;
    }

    v67 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v225; v67; i = v225)
    {
      v69 = type metadata accessor for LinkStateComponent(0);
      v70 = 0;
      v220 = a4 & 0xC000000000000001;
      v199 = a4 & 0xFFFFFFFFFFFFFF8;
      v219 = v69 - 8;
      v214 = (v185 + 16);
      v176 = v216 + 2;
      v205 = (v185 + 8);
      v193 = v216 + 1;
      v179 = (v185 + 32);
      v192 = v216 + 3;
      *&v71 = 136315394;
      v194 = v71;
      v217 = v67;
      v218 = a4;
      while (v220)
      {
        v74 = MEMORY[0x1AC562480](v70, a4);
        v75 = v70 + 1;
        if (__OFADD__(v70, 1))
        {
          goto LABEL_79;
        }

LABEL_16:
        os_unfair_lock_lock((v74 + 40));
        v76 = *(v74 + 48);
        v229 = v74 + 48;
        v77 = *(v76 + 16);
        v226 = v70;
        if (v77 && (v78 = sub_1A7CD0DFC(v69), (v79 & 1) != 0))
        {
          sub_1A7B0CD10(*(v76 + 56) + 32 * v78, &v231);
        }

        else
        {
          v231 = 0u;
          v232 = 0u;
        }

        os_unfair_lock_unlock((v74 + 40));
        sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
        v80 = v222;
        v81 = swift_dynamicCast();
        v82 = *(v69 - 8);
        v227 = *(v82 + 56);
        v227(v80, v81 ^ 1u, 1, v69);
        v228 = *(v82 + 48);
        if (v228(v80, 1, v69))
        {
          sub_1A7CC9970(v80, &qword_1EB2B4A80, &unk_1A7E41910);
          swift_storeEnumTagMultiPayload();
          v83 = v7;
          if (v7)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v88 = v204;
          sub_1A7CD0EC4(v80, v204);
          sub_1A7CC9970(v80, &qword_1EB2B4A80, &unk_1A7E41910);
          v89 = v88;
          i = v225;
          sub_1A7DB9FA8(v89, v225, type metadata accessor for LinkState);
          v83 = v7;
          if (v7)
          {
LABEL_22:
            v84 = v213;
            if (v83 != 2)
            {
              sub_1A7CD0E68(i);

              goto LABEL_74;
            }

            os_unfair_lock_lock((v74 + 40));
            v85 = *v229;
            if (*(*v229 + 16) && (v86 = sub_1A7CD0DFC(v69), (v87 & 1) != 0))
            {
              sub_1A7B0CD10(*(v85 + 56) + 32 * v86, &v231);
            }

            else
            {
              v231 = 0u;
              v232 = 0u;
            }

            os_unfair_lock_unlock((v74 + 40));
            v97 = swift_dynamicCast();
            v227(v84, v97 ^ 1u, 1, v69);
            if (v228(v84, 1, v69))
            {
              sub_1A7CC9970(v84, &qword_1EB2B4A80, &unk_1A7E41910);
              v98 = v207;
              swift_storeEnumTagMultiPayload();
            }

            else
            {
              v112 = v195;
              sub_1A7CD0EC4(v84, v195);
              sub_1A7CC9970(v84, &qword_1EB2B4A80, &unk_1A7E41910);
              v98 = v207;
              sub_1A7DB9FA8(v112, v207, type metadata accessor for LinkState);
            }

            if (swift_getEnumCaseMultiPayload() < 2)
            {
              v221 = v75;
              (*v205)(v98, v224);
              if (qword_1EB2B2CC0 != -1)
              {
                swift_once();
              }

              v113 = sub_1A7E22060();
              sub_1A7B0CB00(v113, qword_1EB2B2CC8);

              v114 = sub_1A7E22040();
              v115 = sub_1A7E228F0();

              if (os_log_type_enabled(v114, v115))
              {
                v116 = swift_slowAlloc();
                v190 = swift_slowAlloc();
                *&v231 = v190;
                *v116 = v194;
                v117 = *(v74 + 16);
                v118 = *(v74 + 24);

                v119 = sub_1A7B0CB38(v117, v118, &v231);

                *(v116 + 4) = v119;
                *(v116 + 12) = 2080;
                v120 = v191;
                LinkEngineLink.state.getter(v191);
                v121 = LinkState.description.getter();
                v123 = v122;
                v124 = v120;
                i = v225;
                sub_1A7CD0E68(v124);
                v125 = sub_1A7B0CB38(v121, v123, &v231);

                *(v116 + 14) = v125;
                _os_log_impl(&dword_1A7AD9000, v114, v115, "%s: %s -> disconnecting", v116, 0x16u);
                v126 = v190;
                swift_arrayDestroy();
                MEMORY[0x1AC5654B0](v126, -1, -1);
                MEMORY[0x1AC5654B0](v116, -1, -1);
              }

              v127 = v197;
              v128 = v196;
              v129 = v209;
              (*v214)(v209, v223, v224);
              swift_storeEnumTagMultiPayload();
              sub_1A7CD0EC4(v129, v128);
              v227(v128, 0, 1, v69);
              os_unfair_lock_lock((v74 + 40));
              sub_1A7CD1F00(v128, v127, &qword_1EB2B4A80, &unk_1A7E41910);
              if (v228(v127, 1, v69) == 1)
              {
                sub_1A7CC9970(v127, &qword_1EB2B4A80, &unk_1A7E41910);
                v231 = 0u;
                v232 = 0u;
              }

              else
              {
                *(&v232 + 1) = v69;
                v131 = sub_1A7CC98BC(&v231);
                sub_1A7DB9FA8(v127, v131, type metadata accessor for LinkStateComponent);
              }

              v72 = v217;
              a4 = v218;
              v73 = v226;
              sub_1A7CC8D74(&v231, v69);
              os_unfair_lock_unlock((v74 + 40));
              sub_1A7CD0E68(v209);
              sub_1A7CC9970(v128, &qword_1EB2B4A80, &unk_1A7E41910);
              ObjectType = swift_getObjectType();
              v216[3](v74, ObjectType);

              sub_1A7CD0E68(i);
              v7 = 2;
              v75 = v221;
              goto LABEL_9;
            }

            sub_1A7CD0E68(i);

            v130 = v98;
            goto LABEL_51;
          }
        }

        v90 = v208;
        sub_1A7CD0EC4(i, v208);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload > 2)
        {
          v92 = v210;
          if ((EnumCaseMultiPayload - 4) < 2)
          {
            goto LABEL_57;
          }

          if (v90[9])
          {
            v221 = v75;
            i = v225;
            if (qword_1EB2B2CC0 != -1)
            {
              swift_once();
            }

            v99 = sub_1A7E22060();
            sub_1A7B0CB00(v99, qword_1EB2B2CC8);
            v100 = v178;
            sub_1A7CD0EC4(i, v178);

            v101 = sub_1A7E22040();
            v102 = sub_1A7E228F0();

            if (os_log_type_enabled(v101, v102))
            {
              v103 = swift_slowAlloc();
              v190 = swift_slowAlloc();
              *&v231 = v190;
              *v103 = v194;
              v175 = v102;
              v104 = *(v74 + 16);
              v105 = *(v74 + 24);

              v106 = sub_1A7B0CB38(v104, v105, &v231);

              *(v103 + 4) = v106;
              *(v103 + 12) = 2080;
              v107 = LinkState.description.getter();
              v109 = v108;
              sub_1A7CD0E68(v100);
              v110 = sub_1A7B0CB38(v107, v109, &v231);

              *(v103 + 14) = v110;
              _os_log_impl(&dword_1A7AD9000, v101, v175, "%s: %s -> connecting (reconnect)", v103, 0x16u);
              v111 = v190;
              swift_arrayDestroy();
              MEMORY[0x1AC5654B0](v111, -1, -1);
              MEMORY[0x1AC5654B0](v103, -1, -1);
            }

            else
            {

              sub_1A7CD0E68(v100);
            }

            v161 = v184;
            v162 = v183;
            v163 = v189;
            (*v214)(v189, v223, v224);
            swift_storeEnumTagMultiPayload();
            sub_1A7CD0EC4(v163, v162);
            v227(v162, 0, 1, v69);
            os_unfair_lock_lock((v74 + 40));
            sub_1A7CD1F00(v162, v161, &qword_1EB2B4A80, &unk_1A7E41910);
            v164 = v228(v161, 1, v69);
            v75 = v221;
            if (v164 == 1)
            {
              sub_1A7CC9970(v161, &qword_1EB2B4A80, &unk_1A7E41910);
              v231 = 0u;
              v232 = 0u;
            }

            else
            {
              *(&v232 + 1) = v69;
              v165 = sub_1A7CC98BC(&v231);
              sub_1A7DB9FA8(v161, v165, type metadata accessor for LinkStateComponent);
            }

            v72 = v217;
            a4 = v218;
            sub_1A7CC8D74(&v231, v69);
            os_unfair_lock_unlock((v74 + 40));
            sub_1A7CD0E68(v189);
            sub_1A7CC9970(v162, &qword_1EB2B4A80, &unk_1A7E41910);
            v166 = swift_getObjectType();
            v216[2](v74, v166);
            goto LABEL_66;
          }

          i = v225;
          sub_1A7CD0E68(v225);

LABEL_6:
          v7 = 0;
          goto LABEL_7;
        }

        v92 = v210;
        if (!EnumCaseMultiPayload)
        {
          v133 = v187;
          v134 = v224;
          (*v214)(v187, v90, v224);
          sub_1A7E22CE0();
          v135 = v90;
          if (sub_1A7E232A0())
          {
            v136 = v203;
            sub_1A7E22CD0();

            v137 = *v205;
            (*v205)(v133, v134);
            i = v225;
            sub_1A7CD0E68(v225);
            v138 = v202;
            sub_1A7CC9970(v202, &qword_1EB2B5B78, &unk_1A7E488D0);
            v7 = 1;
            (v200)(v136, 0, 1, v134);
            sub_1A7D25AEC(v136, v138);
            v137(v135, v134);
            goto LABEL_7;
          }

          v160 = *v205;
          (*v205)(v133, v134);
          i = v225;
          sub_1A7CD0E68(v225);
          v160(v90, v134);
          goto LABEL_6;
        }

        if (EnumCaseMultiPayload != 1)
        {
          (*v205)(v90, v224);
LABEL_57:
          v221 = v75;
          if (qword_1EB2B2CC0 != -1)
          {
            swift_once();
          }

          v139 = sub_1A7E22060();
          sub_1A7B0CB00(v139, qword_1EB2B2CC8);
          sub_1A7CD0EC4(v225, v92);

          v140 = sub_1A7E22040();
          v141 = sub_1A7E228F0();

          if (os_log_type_enabled(v140, v141))
          {
            v142 = swift_slowAlloc();
            v190 = swift_slowAlloc();
            *&v231 = v190;
            *v142 = v194;
            v143 = *(v74 + 16);
            v144 = *(v74 + 24);

            v145 = sub_1A7B0CB38(v143, v144, &v231);

            *(v142 + 4) = v145;
            *(v142 + 12) = 2080;
            v146 = LinkState.description.getter();
            v148 = v147;
            sub_1A7CD0E68(v92);
            v149 = sub_1A7B0CB38(v146, v148, &v231);

            *(v142 + 14) = v149;
            _os_log_impl(&dword_1A7AD9000, v140, v141, "%s: %s -> connecting", v142, 0x16u);
            v150 = v190;
            swift_arrayDestroy();
            MEMORY[0x1AC5654B0](v150, -1, -1);
            MEMORY[0x1AC5654B0](v142, -1, -1);
          }

          else
          {

            sub_1A7CD0E68(v92);
          }

          v151 = v198;
          v75 = v221;
          v152 = v211;
          (*v214)(v211, v223, v224);
          swift_storeEnumTagMultiPayload();
          v153 = v152;
          v154 = v212;
          sub_1A7CD0EC4(v153, v212);
          v227(v154, 0, 1, v69);
          os_unfair_lock_lock((v74 + 40));
          sub_1A7CD1F00(v154, v151, &qword_1EB2B4A80, &unk_1A7E41910);
          v155 = v228(v151, 1, v69);
          i = v225;
          if (v155 == 1)
          {
            sub_1A7CC9970(v151, &qword_1EB2B4A80, &unk_1A7E41910);
            v231 = 0u;
            v232 = 0u;
          }

          else
          {
            *(&v232 + 1) = v69;
            v156 = sub_1A7CC98BC(&v231);
            sub_1A7DB9FA8(v151, v156, type metadata accessor for LinkStateComponent);
          }

          v72 = v217;
          a4 = v218;
          sub_1A7CC8D74(&v231, v69);
          os_unfair_lock_unlock((v74 + 40));
          sub_1A7CD0E68(v211);
          sub_1A7CC9970(v212, &qword_1EB2B4A80, &unk_1A7E41910);
          v157 = swift_getObjectType();
          v216[1](v74, v157);
LABEL_66:
          v158 = v203;
          sub_1A7E22CD0();

          sub_1A7CD0E68(i);
          v159 = v202;
          sub_1A7CC9970(v202, &qword_1EB2B5B78, &unk_1A7E488D0);
          v7 = 1;
          (v200)(v158, 0, 1, v224);
          sub_1A7D25AEC(v158, v159);
          goto LABEL_8;
        }

        v93 = v188;
        v94 = v224;
        (*v179)(v188, v90, v224);
        sub_1A7E22CE0();
        if ((sub_1A7E232A0() & 1) == 0)
        {

          (*v205)(v93, v94);
          i = v225;
          v130 = v225;
LABEL_51:
          sub_1A7CD0E68(v130);
          v7 = 2;
          goto LABEL_7;
        }

        v95 = v203;
        sub_1A7E22CD0();

        (*v205)(v93, v94);
        i = v225;
        sub_1A7CD0E68(v225);
        v96 = v202;
        sub_1A7CC9970(v202, &qword_1EB2B5B78, &unk_1A7E488D0);
        v7 = 1;
        (v200)(v95, 0, 1, v94);
        sub_1A7D25AEC(v95, v96);
LABEL_7:
        v72 = v217;
        a4 = v218;
LABEL_8:
        v73 = v226;
LABEL_9:
        v70 = v73 + 1;
        if (v75 == v72)
        {
          goto LABEL_74;
        }
      }

      if (v70 >= *(v199 + 16))
      {
        goto LABEL_80;
      }

      v74 = *(a4 + 8 * v70 + 32);

      v75 = v70 + 1;
      if (!__OFADD__(v70, 1))
      {
        goto LABEL_16;
      }

LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      v67 = sub_1A7E22DA0();
    }

LABEL_74:
    v167 = v202;
    v168 = v186;
    sub_1A7CD1F00(v202, v186, &qword_1EB2B5B78, &unk_1A7E488D0);
    v169 = v185;
    v170 = v224;
    if ((*(v185 + 48))(v168, 1, v224) == 1)
    {
      sub_1A7CC9970(v167, &qword_1EB2B5B78, &unk_1A7E488D0);
      v171 = v168;
    }

    else
    {
      v172 = v182;
      (*(v169 + 32))(v182, v168, v170);
      v173 = LinkEngine.scheduleUpdate(for:)(v172);
      (*(v169 + 8))(v172, v170, v173);
      v171 = v167;
    }

    return sub_1A7CC9970(v171, &qword_1EB2B5B78, &unk_1A7E488D0);
  }

  return result;
}

void sub_1A7DB8FA0(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1;
    v37 = MEMORY[0x1E69E7CC0];
    sub_1A7CCECCC(0, v3, 0);
    v5 = v37;
    v6 = v4 + 64;
    v7 = sub_1A7E22AD0();
    v8 = 0;
    v30 = v4 + 72;
    v31 = v3;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v4 + 32))
    {
      v11 = v7 >> 6;
      if ((*(v6 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_22;
      }

      v33 = v8;
      v12 = v6;
      v13 = *(v4 + 36);
      v14 = v4;
      v34 = *(*(v4 + 48) + v7);
      sub_1A7DB6CC0(&v34, a2, v35);
      if (v2)
      {
        goto LABEL_26;
      }

      v15 = v35[0];
      v16 = v36;
      v37 = v5;
      v18 = *(v5 + 16);
      v17 = *(v5 + 24);
      if (v18 >= v17 >> 1)
      {
        v29 = v35[0];
        v28 = v36;
        sub_1A7CCECCC((v17 > 1), v18 + 1, 1);
        v16 = v28;
        v15 = v29;
        v5 = v37;
      }

      *(v5 + 16) = v18 + 1;
      v19 = v5 + 16 * v18;
      *(v19 + 32) = v15;
      *(v19 + 40) = v16;
      v9 = 1 << *(v14 + 32);
      if (v7 >= v9)
      {
        goto LABEL_23;
      }

      v20 = *(v12 + 8 * v11);
      if ((v20 & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      v4 = v14;
      v21 = v13;
      if (v13 != *(v14 + 36))
      {
        goto LABEL_25;
      }

      v6 = v12;
      v22 = v20 & (-2 << (v7 & 0x3F));
      if (v22)
      {
        v9 = __clz(__rbit64(v22)) | v7 & 0x7FFFFFFFFFFFFFC0;
        v10 = v31;
      }

      else
      {
        v23 = v11 << 6;
        v24 = v11 + 1;
        v10 = v31;
        v25 = (v30 + 8 * v11);
        while (v24 < (v9 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            sub_1A7CD29F0(v7, v21, 0);
            v9 = __clz(__rbit64(v26)) + v23;
            goto LABEL_4;
          }
        }

        sub_1A7CD29F0(v7, v21, 0);
      }

LABEL_4:
      v2 = 0;
      v8 = v33 + 1;
      v7 = v9;
      if (v33 + 1 == v10)
      {
        return;
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
LABEL_26:

    __break(1u);
  }
}

uint64_t sub_1A7DB920C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v51[3] = a11;
  v51[4] = a12;
  v16 = sub_1A7CC98BC(v51);
  (*(*(a11 - 8) + 32))(v16, a2, a11);
  LOBYTE(a2) = *a9;
  *(a10 + 16) = 0xD000000000000029;
  *(a10 + 24) = 0x80000001A7EB1340;
  *(a10 + 96) = a7;
  *(a10 + 104) = a8;
  v17 = a10;
  sub_1A7CC99E0(v51, v48);
  LOBYTE(v47) = 0;
  *(&v47 + 1) = sub_1A7CE4EEC(MEMORY[0x1E69E7CC0]);
  *&v50[20] = v48[0];
  *&v50[36] = v48[1];
  *&v50[52] = v49;
  *&v50[4] = v47;

  *(a10 + 32) = 0;
  v18 = *&v50[16];
  *(a10 + 36) = *v50;
  *(a10 + 52) = v18;
  *(a10 + 68) = *&v50[32];
  *(a10 + 80) = *&v50[44];
  os_unfair_lock_lock((a10 + 32));
  v19 = a1;
  *(a10 + 40) = a2;
  v20 = *(a1 + 16);
  if (!v20)
  {
LABEL_19:

    os_unfair_lock_unlock((a10 + 32));
    sub_1A7B0CD6C(v51);
    return v17;
  }

  v21 = 0;
  v22 = a1 + 32;
  v42 = v20;
  while (v21 < *(v19 + 16))
  {
    v23 = *(v22 + v21);
    if (v23 == 3)
    {
      goto LABEL_5;
    }

    v24 = v19;
    type metadata accessor for LinkEngineConnectBestController();
    v25 = swift_allocObject();
    v25[2] = a3;
    v25[3] = a4;
    v25[4] = a5;
    v25[5] = a6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v50 = *(v17 + 48);
    v27 = *v50;
    v28 = v17;
    *(v17 + 48) = 0x8000000000000000;
    v30 = sub_1A7CD1670(v23);
    v31 = *(v27 + 16);
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_21;
    }

    v34 = v29;
    if (*(v27 + 24) >= v33)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v37 = *v50;
        if ((v29 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        sub_1A7DC8FD8();
        v37 = *v50;
        if ((v34 & 1) == 0)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      sub_1A7DC33EC(v33, isUniquelyReferenced_nonNull_native);
      v35 = sub_1A7CD1670(v23);
      if ((v34 & 1) != (v36 & 1))
      {
        goto LABEL_23;
      }

      v30 = v35;
      v37 = *v50;
      if ((v34 & 1) == 0)
      {
LABEL_15:
        v37[(v30 >> 6) + 8] |= 1 << v30;
        *(v37[6] + v30) = v23;
        *(v37[7] + 8 * v30) = v25;
        v38 = v37[2];
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_22;
        }

        v37[2] = v40;
        goto LABEL_4;
      }
    }

    *(v37[7] + 8 * v30) = v25;

LABEL_4:
    v17 = v28;
    *(v28 + 48) = v37;

    v19 = v24;
    v20 = v42;
LABEL_5:
    if (v20 == ++v21)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_1A7E23140();
  __break(1u);
  return result;
}

uint64_t sub_1A7DB9500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v23 = a7;
  v24 = a8;
  v21 = a5;
  v22 = a6;
  v16 = *(a11 - 8);
  MEMORY[0x1EEE9AC00](a10);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  (*(v16 + 16))(v18, a2, a11);
  return sub_1A7DB920C(a1, v18, a3, a4, v21, v22, v23, v24, a9, v19, a11, a12);
}

unint64_t sub_1A7DB9628()
{
  result = qword_1EB2B75D8;
  if (!qword_1EB2B75D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B75D8);
  }

  return result;
}

unint64_t sub_1A7DB967C()
{
  result = qword_1EB2B75E0;
  if (!qword_1EB2B75E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B75E0);
  }

  return result;
}

unint64_t sub_1A7DB96D0()
{
  result = qword_1EB2B75E8;
  if (!qword_1EB2B75E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B75E8);
  }

  return result;
}

unint64_t sub_1A7DB9724()
{
  result = qword_1EB2B75F0;
  if (!qword_1EB2B75F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B75F0);
  }

  return result;
}

double sub_1A7DB9778(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v2 = a1[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v13 = *a2;

        *a1 = v13;
      }

      else
      {
        v11 = *(v10 + 24);

        v11();
      }
    }

    else
    {
      a1[3] = v3;
      a1[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *a1 = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        (*(v4 + 32))(v15);
        if ((v7 & 0x20000) != 0)
        {
          *a1 = *a2;
        }

        else
        {
          (*(v6 + 16))(a1, a2, v3);
        }

        (*(v4 + 8))(v15, v2);
      }
    }
  }

  return result;
}

unint64_t sub_1A7DB99C8()
{
  result = qword_1EB2B7618;
  if (!qword_1EB2B7618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7618);
  }

  return result;
}

uint64_t sub_1A7DB9A84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1A7DB9ACC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A7DB9B6C()
{
  result = qword_1EB2B7628;
  if (!qword_1EB2B7628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7628);
  }

  return result;
}

unint64_t sub_1A7DB9BC4()
{
  result = qword_1EB2B7630;
  if (!qword_1EB2B7630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7630);
  }

  return result;
}

unint64_t sub_1A7DB9C1C()
{
  result = qword_1EB2B7638;
  if (!qword_1EB2B7638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7638);
  }

  return result;
}

unint64_t sub_1A7DB9C74()
{
  result = qword_1EB2B7640;
  if (!qword_1EB2B7640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7640);
  }

  return result;
}

unint64_t sub_1A7DB9CCC()
{
  result = qword_1EB2B7648;
  if (!qword_1EB2B7648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7648);
  }

  return result;
}

unint64_t sub_1A7DB9D24()
{
  result = qword_1EB2B7650;
  if (!qword_1EB2B7650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7650);
  }

  return result;
}

unint64_t sub_1A7DB9D7C()
{
  result = qword_1EB2B7658;
  if (!qword_1EB2B7658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7658);
  }

  return result;
}

unint64_t sub_1A7DB9DD4()
{
  result = qword_1EB2B7660;
  if (!qword_1EB2B7660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7660);
  }

  return result;
}

unint64_t sub_1A7DB9E2C()
{
  result = qword_1EB2B7668;
  if (!qword_1EB2B7668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7668);
  }

  return result;
}

uint64_t sub_1A7DB9E80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7463656E6E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_1A7E230D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A7EB1320 == a2 || (sub_1A7E230D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656E6E6F63736964 && a2 == 0xEA00000000007463)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A7E230D0();

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

uint64_t sub_1A7DB9FA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t LinkEngineLink.testableLink.getter()
{
  os_unfair_lock_lock((v0 + 40));
  sub_1A7CCBE1C((v0 + 48), &v4);
  os_unfair_lock_unlock((v0 + 40));
  sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v5 = xmmword_1A7E43F70;
    goto LABEL_5;
  }

  v1 = v5;
  if (v5 == 1)
  {
LABEL_5:
    sub_1A7CEB438(1);
    return 0;
  }

  v2 = swift_unknownObjectRetain();
  sub_1A7CEB438(v2);
  return v1;
}

uint64_t LinkEngineLink.testableLink.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_unknownObjectRetain();
  os_unfair_lock_lock(v3 + 10);
  v7[3] = &type metadata for LinkEngineLinkIDSTestableLinkComponent;
  v7[0] = a1;
  v7[1] = a2;
  swift_unknownObjectRetain();
  sub_1A7CC8D74(v7, &type metadata for LinkEngineLinkIDSTestableLinkComponent);
  os_unfair_lock_unlock(v3 + 10);
  return swift_unknownObjectRelease_n();
}

uint64_t LinkEngineLinkIDSTestableLinkComponent.init(testableLink:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1A7DBA168(uint64_t *a1, os_unfair_lock_s **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_unknownObjectRetain_n();
  os_unfair_lock_lock(v4 + 10);
  v6[3] = &type metadata for LinkEngineLinkIDSTestableLinkComponent;
  v6[0] = v2;
  v6[1] = v3;
  swift_unknownObjectRetain();
  sub_1A7CC8D74(v6, &type metadata for LinkEngineLinkIDSTestableLinkComponent);
  os_unfair_lock_unlock(v4 + 10);
  return swift_unknownObjectRelease_n();
}

uint64_t (*LinkEngineLink.testableLink.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = LinkEngineLink.testableLink.getter();
  a1[1] = v3;
  return sub_1A7DBA234;
}

uint64_t sub_1A7DBA234(uint64_t *a1, char a2)
{
  v4 = a1[1];
  v3 = a1[2];
  v5 = *a1;
  swift_unknownObjectRetain();
  if (a2)
  {
    swift_unknownObjectRetain();
    os_unfair_lock_lock(v3 + 10);
    v9 = &type metadata for LinkEngineLinkIDSTestableLinkComponent;
    v7 = v5;
    v8 = v4;
    swift_unknownObjectRetain();
    sub_1A7CC8D74(&v7, &type metadata for LinkEngineLinkIDSTestableLinkComponent);
    os_unfair_lock_unlock(v3 + 10);
    swift_unknownObjectRelease();
  }

  else
  {
    os_unfair_lock_lock(v3 + 10);
    v9 = &type metadata for LinkEngineLinkIDSTestableLinkComponent;
    v7 = v5;
    v8 = v4;
    swift_unknownObjectRetain();
    sub_1A7CC8D74(&v7, &type metadata for LinkEngineLinkIDSTestableLinkComponent);
    os_unfair_lock_unlock(v3 + 10);
  }

  return swift_unknownObjectRelease_n();
}

uint64_t sub_1A7DBA310(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1A7DBA36C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1A7DBA3CC()
{
  os_unfair_lock_lock((v0 + 200));
  sub_1A7CC95D0((v0 + 208), v7);
  os_unfair_lock_unlock((v0 + 200));
  sub_1A7CC7FFC(&qword_1EB2B66D0, &unk_1A7E41920);
  v1 = type metadata accessor for IDSLinkSelectionLifecycle();
  if ((swift_dynamicCast() & 1) == 0 || (v2 = v8) == 0)
  {
    v2 = swift_allocObject();
    sub_1A7CC7FFC(&qword_1EB2B7670, &unk_1A7E515A8);
    v3 = swift_allocObject();
    v4 = MEMORY[0x1E69E7CC0];
    v5 = sub_1A7CE2D90(MEMORY[0x1E69E7CC0]);
    *(v3 + 16) = 0;
    *(v3 + 24) = v5;
    *(v3 + 32) = v4;
    *(v3 + 48) = 0;
    *(v3 + 56) = 0;
    *(v3 + 40) = 0;
    *(v2 + 16) = v3;

    os_unfair_lock_lock((v0 + 200));
    v7[3] = v1;
    v7[0] = v2;

    sub_1A7CC8D74(v7, v1);
    os_unfair_lock_unlock((v0 + 200));
  }

  return v2;
}

uint64_t IDSLinkSelectionLifecycle.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t IDSLinkEndpointResolvedEndpoint.resolvedEndpoint.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

void LinkEndpoint.idsResolvedEndpoint.getter(void *a1@<X8>)
{
  v3 = *v1;
  if (*(v3 + 16) && (v4 = sub_1A7CD0DFC(&type metadata for IDSLinkEndpointResolvedEndpoint), (v5 & 1) != 0) && (sub_1A7B0CD10(*(v3 + 56) + 32 * v4, v7), sub_1A7B1503C(v7, &v6), sub_1A7CC7FFC(&qword_1EB2B5040, &qword_1A7E44C60), (swift_dynamicCast() & 1) != 0) && v8)
  {
    *a1 = v8;
  }

  else
  {
    *a1 = 0;
  }
}

_OWORD *LinkEndpoint.idsResolvedEndpoint.setter(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(&v4 + 1) = &type metadata for IDSLinkEndpointResolvedEndpoint;
    *&v3 = v1;
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  return sub_1A7CC8D74(&v3, &type metadata for IDSLinkEndpointResolvedEndpoint);
}

uint64_t (*LinkEndpoint.idsResolvedEndpoint.modify(void *a1))()
{
  a1[1] = v1;
  sub_1A7CE0478(*v1, &v4);
  *a1 = v4;
  return sub_1A7DBA74C;
}

_OWORD *sub_1A7DBA74C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    if (v2)
    {
      *(&v5 + 1) = &type metadata for IDSLinkEndpointResolvedEndpoint;
      *&v4 = v2;
    }

    else
    {
      v4 = 0u;
      v5 = 0u;
    }

    sub_1A7CC8D74(&v4, &type metadata for IDSLinkEndpointResolvedEndpoint);
  }

  else
  {
    if (v2)
    {
      *(&v5 + 1) = &type metadata for IDSLinkEndpointResolvedEndpoint;
      *&v4 = v2;
    }

    else
    {
      v4 = 0u;
      v5 = 0u;
    }

    return sub_1A7CC8D74(&v4, &type metadata for IDSLinkEndpointResolvedEndpoint);
  }
}

__n128 sub_1A7DBA828(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 30) = *(a2 + 30);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1A7DBA83C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 38))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A7DBA884(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 38) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 38) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int __swiftcall cliMaxWidth()()
{
  v2[1] = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  v0 = sub_1A7E22070();
  if (MEMORY[0x1AC561960](1, v0, v2))
  {
    return 80;
  }

  else
  {
    return WORD1(v2[0]);
  }
}

uint64_t sub_1A7DBA964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6465747265766E69 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A7E230D0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A7DBA9EC(uint64_t a1)
{
  v2 = sub_1A7DBAD74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DBAA28(uint64_t a1)
{
  v2 = sub_1A7DBAD74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7DBAA78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A7E230D0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A7DBAAFC(uint64_t a1)
{
  v2 = sub_1A7DBADC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DBAB38(uint64_t a1)
{
  v2 = sub_1A7DBADC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LEToolSorterResponse.encode(to:)(void *a1)
{
  v13 = sub_1A7CC7FFC(&qword_1EB2B7678, &qword_1A7E51650);
  v3 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v5 = v12 - v4;
  v6 = sub_1A7CC7FFC(&qword_1EB2B7680, &qword_1A7E51658);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v12 - v8;
  v12[1] = *v1;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DBAD74();
  sub_1A7E23260();
  sub_1A7DBADC8();
  sub_1A7E22F80();
  v10 = v13;
  sub_1A7E23000();
  (*(v3 + 8))(v5, v10);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1A7DBAD74()
{
  result = qword_1EB2B7688;
  if (!qword_1EB2B7688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7688);
  }

  return result;
}

unint64_t sub_1A7DBADC8()
{
  result = qword_1EB2B7690;
  if (!qword_1EB2B7690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7690);
  }

  return result;
}

uint64_t LEToolSorterResponse.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v21 = a2;
  v4 = sub_1A7CC7FFC(&qword_1EB2B7698, &qword_1A7E51660);
  v22 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - v5;
  v7 = sub_1A7CC7FFC(&qword_1EB2B76A0, &unk_1A7E51668);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - v9;
  v11 = a1[3];
  v27 = a1;
  sub_1A7CC9878(a1, v11);
  sub_1A7DBAD74();
  sub_1A7E23250();
  if (!v2)
  {
    v12 = v22;
    v13 = sub_1A7E22F70();
    v14 = (2 * *(v13 + 16)) | 1;
    v23 = v13;
    v24 = v13 + 32;
    v25 = 0;
    v26 = v14;
    if ((sub_1A7CDB53C() & 1) != 0 || v25 != v26 >> 1)
    {
      v15 = sub_1A7E22BD0();
      swift_allocError();
      v16 = v7;
      v18 = v17;
      sub_1A7CC7FFC(&qword_1EB2B4EC8, &qword_1A7E42100);
      *v18 = &type metadata for LEToolSorterResponse;
      sub_1A7E22E90();
      sub_1A7E22BC0();
      (*(*(v15 - 8) + 104))(v18, *MEMORY[0x1E69E6AF8], v15);
      swift_willThrow();
      (*(v8 + 8))(v10, v16);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1A7DBADC8();
      sub_1A7E22E70();
      v20 = sub_1A7E22F00();
      (*(v12 + 8))(v6, v4);
      (*(v8 + 8))(v10, v7);
      swift_unknownObjectRelease();
      *v21 = v20 & 1;
    }
  }

  return sub_1A7B0CD6C(v27);
}

unint64_t sub_1A7DBB1F0()
{
  result = qword_1EB2B76A8;
  if (!qword_1EB2B76A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B76A8);
  }

  return result;
}

unint64_t sub_1A7DBB248()
{
  result = qword_1EB2B76B0;
  if (!qword_1EB2B76B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B76B0);
  }

  return result;
}

unint64_t sub_1A7DBB2A0()
{
  result = qword_1EB2B76B8;
  if (!qword_1EB2B76B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B76B8);
  }

  return result;
}

unint64_t sub_1A7DBB2F8()
{
  result = qword_1EB2B76C0;
  if (!qword_1EB2B76C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B76C0);
  }

  return result;
}

unint64_t sub_1A7DBB350()
{
  result = qword_1EB2B76C8;
  if (!qword_1EB2B76C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B76C8);
  }

  return result;
}

unint64_t sub_1A7DBB3A8()
{
  result = qword_1EB2B76D0;
  if (!qword_1EB2B76D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B76D0);
  }

  return result;
}

void static IDSTransportThread.add(block:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v6[4] = sub_1A7DBB4FC;
  v6[5] = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1A7DBB524;
  v6[3] = &unk_1F1AB7738;
  v5 = _Block_copy(v6);

  IDSTransportThreadAddBlock(v5);
  _Block_release(v5);
}

double sub_1A7DBB524(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

uint64_t sub_1A7DBB578(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A7DBB5A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v50 = MEMORY[0x1E69E7CC0];
  sub_1A7CCEBD4(0, v1, 0);
  v2 = v50;
  v4 = v3 + 64;
  result = sub_1A7E22AD0();
  if (result < 0 || (v6 = result, result >= 1 << *(v3 + 32)))
  {
LABEL_23:
    __break(1u);
  }

  else
  {
    v37 = v3 + 72;
    v38 = v1;
    v7 = *(v3 + 36);
    v8 = 1;
    v39 = v3 + 64;
    while (1)
    {
      v9 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        break;
      }

      v40 = v8;
      v41 = v7;
      v10 = *(v3 + 56) + 104 * v6;
      v11 = *(v10 + 8);
      v51 = *v10;
      v12 = *(v10 + 40);
      v13 = *(v10 + 56);
      v14 = *(v10 + 24);
      *&v44[15] = *(v10 + 71);
      v43[1] = v12;
      *v44 = v13;
      v43[0] = v14;
      v15 = *(v10 + 80);
      v16 = *(v10 + 88);
      v17 = *(v10 + 96);
      v18 = *(v10 + 24);
      v19 = *(v10 + 40);
      v20 = *(v10 + 56);
      *&v49[15] = *(v10 + 71);
      v48 = v19;
      *v49 = v20;
      v47 = v18;

      sub_1A7CEB448(v43, v42);
      v50 = v2;
      v21 = v3;
      v23 = *(v2 + 16);
      v22 = *(v2 + 24);

      if (v23 >= v22 >> 1)
      {
        result = sub_1A7CCEBD4((v22 > 1), v23 + 1, 1);
        v2 = v50;
      }

      *(v2 + 16) = v23 + 1;
      v24 = v2 + 96 * v23;
      *(v24 + 32) = v51;
      *(v24 + 40) = v11;
      v25 = v47;
      v26 = v48;
      v27 = *v49;
      *(v24 + 95) = *&v49[15];
      *(v24 + 64) = v26;
      *(v24 + 80) = v27;
      *(v24 + 48) = v25;
      v28 = v46;
      *(v24 + 99) = v45;
      *(v24 + 103) = v28;
      *(v24 + 104) = v15;
      *(v24 + 112) = v16;
      *(v24 + 120) = v17;
      v29 = 1 << *(v21 + 32);
      if (v6 >= v29)
      {
        goto LABEL_25;
      }

      v3 = v21;
      v4 = v39;
      v30 = *(v39 + 8 * v9);
      if ((v30 & (1 << v6)) == 0)
      {
        goto LABEL_26;
      }

      if (v41 != *(v3 + 36))
      {
        goto LABEL_27;
      }

      v31 = v30 & (-2 << (v6 & 0x3F));
      if (v31)
      {
        v6 = __clz(__rbit64(v31)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v32 = v9 << 6;
        v33 = v9 + 1;
        v34 = (v37 + 8 * v9);
        while (v33 < (v29 + 63) >> 6)
        {
          v36 = *v34++;
          v35 = v36;
          v32 += 64;
          ++v33;
          if (v36)
          {
            result = sub_1A7CD29F0(v6, v41, 0);
            v6 = __clz(__rbit64(v35)) + v32;
            goto LABEL_18;
          }
        }

        result = sub_1A7CD29F0(v6, v41, 0);
        v6 = v29;
      }

LABEL_18:
      if (v40 == v38)
      {
        return v2;
      }

      if ((v6 & 0x8000000000000000) == 0)
      {
        v7 = *(v3 + 36);
        v8 = v40 + 1;
        if (v6 < 1 << *(v3 + 32))
        {
          continue;
        }
      }

      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}