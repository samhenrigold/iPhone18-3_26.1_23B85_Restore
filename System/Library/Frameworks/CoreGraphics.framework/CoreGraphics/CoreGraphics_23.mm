unint64_t sub_183FA32C8()
{
  result = qword_1EA854608;
  if (!qword_1EA854608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854608);
  }

  return result;
}

uint64_t sub_183FA332C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = (~*v5 & 0x7FF0000000000000) != 0 || (*v5 & 0xFFFFFFFFFFFFFLL) == 0;
  if (!v6 || *(*(v5 + 32) + 16))
  {
    v7 = *(*(v5 + 48) + 16);
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = 2;
  if (a2 < 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  if (v7 >= a4)
  {
    v8 = *(v5 + 16);
    *(a5 + 32) = *v5;
    *(a5 + 48) = v8;
    *(a5 + 64) = *(v5 + 32);
    *(a5 + 80) = *(v5 + 48);
    *a5 = result;
    *(a5 + 8) = a2;
    *(a5 + 16) = a3;
    *(a5 + 24) = a4;
    return sub_183F70628(v5, v9);
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_183FA33C0()
{
  v1 = (~*v0 & 0x7FF0000000000000) != 0 || (*v0 & 0xFFFFFFFFFFFFFLL) == 0;
  if (v1 && !*(v0[4] + 16))
  {
    return 1;
  }

  else
  {
    return *(v0[6] + 16) >> 1;
  }
}

uint64_t sub_183FA3400(uint64_t a1, uint64_t a2, int a3, unint64_t a4, uint64_t a5, uint64_t a6, int a7, int64_t a8, double a9, double a10, double a11, double a12, char a13, unint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  v109 = a7;
  v119 = a3;
  v27 = a14;
  v132[2] = *MEMORY[0x1E69E9840];
  sub_183F70628(a15, v128);
  sub_183F70628(a15, v128);
  sub_183F70628(a15, v128);
  v28 = a14;
  v29 = sub_183FA5A00();
  v30 = *(a14 + 40);
  v118 = a14 + 40;
  v31 = *(v30 + 16);
  LODWORD(v32) = v31 == a2;
  if (a1)
  {
    v33 = a1 - 1;
    if (__OFSUB__(a1, 1))
    {
      goto LABEL_125;
    }

    if (v33 >= v31)
    {
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    v34 = *(v30 + 32 + 4 * v33);
    if (a1 > 1)
    {
      if (a1 - 2 >= v31)
      {
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
      }

      LODWORD(v32) = 0;
      v35 = *(v30 + 32 + 4 * (a1 - 2));
      if (!a2)
      {
        v36 = 0;
        goto LABEL_14;
      }

      goto LABEL_11;
    }

    LODWORD(v32) = 0;
  }

  else
  {
    v34 = 0;
  }

  v36 = 0;
  v35 = 0;
  if (!a2)
  {
    goto LABEL_14;
  }

LABEL_11:
  v37 = a2 - 1;
  if (__OFSUB__(a2, 1))
  {
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  if (v37 >= v31)
  {
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = *(v30 + 4 * v37 + 32);
LABEL_14:
  v107 = a6;
  v110 = a8;
  v122 = a1;
  v38 = a4 * a5;
  if ((a4 * a5) >> 64 != (a4 * a5) >> 63)
  {
    goto LABEL_113;
  }

  a8 = a4;
  if ((a4 & 0x8000000000000000) != 0)
  {
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  if (a4 >> 60)
  {
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  a1 = v35;
  v121 = v36;
  v125 = v34;
  v108 = v31;
  a4 = a16;
  v28 = a17;
  if (8 * a8 >= 1025)
  {
    goto LABEL_114;
  }

  while (1)
  {
    v117 = v28;
    isStackAllocationSafe = MEMORY[0x1EEE9AC00](v29);
    v124 = &v106 - v40;
    if (a8 >= 0x101)
    {
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      if ((isStackAllocationSafe & 1) == 0)
      {
        v94 = swift_slowAlloc();
        sub_183F70628(a15, v128);
        sub_183FA7704(v94, a8, v38, v124, a8, v27, a1, v125, a9, a10, a11, a12, v38, v119 & 1, v32, v121, v122, a2, v122, a15, a4, v117);
        MEMORY[0x1865EFCB0](v94, -1, -1);
        v38 = v122;
        a4 = v118;
        goto LABEL_67;
      }
    }

    v120 = v32;
    v41 = MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v123 = &v106 - v42;
    if ((v38 & 0x8000000000000000) != 0)
    {
      goto LABEL_134;
    }

    if (v38 >> 60)
    {
      goto LABEL_135;
    }

    if ((8 * v38) >= 1025)
    {
      v41 = swift_stdlib_isStackAllocationSafe();
      if ((v41 & 1) == 0)
      {
        break;
      }
    }

    v43 = MEMORY[0x1EEE9AC00](v41);
    v46 = &v106 - v45;
    v126 = 0;
    v127 = 0;
    v47 = v125 - a1;
    if (v125 < a1)
    {
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
      goto LABEL_126;
    }

    v48 = a1;
    v111 = v44;
    v112 = &v106;
    v113 = &v106;
    v114 = a2;
    v116 = &v106;
    v49 = v27 + 48;
    v50 = *(v27 + 48);
    v51 = *v27;
    v52 = *(v27 + 16);
    v53 = v27 + 32;
    v54 = *(v27 + 32);
    v115 = v27;
    v55 = *(v27 + 40);
    v132[0] = v50 + 8 * v48 + 32;
    v132[1] = v47;
    v128[0] = v51;
    v128[1] = v52;
    v129 = v54;
    v130 = v55;
    v131 = v50;
    MEMORY[0x1EEE9AC00](v43);
    *(&v106 - 12) = v46;
    *(&v106 - 11) = v38;
    v96 = &v126;
    v97 = v38;
    LOBYTE(v98) = v119 & 1;
    v99 = v132;
    v100 = v124;
    v101 = v56;
    v102 = &v127;
    v103 = v123;
    v104 = v56;
    v105 = v57;
    swift_retain_n();

    sub_183F99594(v128, sub_183FAB470, a9, a10, a11, a12, (&v106 - 14), a15, a4, v117);

    v58 = v126;
    if ((v126 & 0x8000000000000000) != 0)
    {
      goto LABEL_121;
    }

    v27 = v115;
    a2 = v114;
    a4 = v118;
    if (v120)
    {
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        if (v58)
        {
LABEL_32:
          v60 = sub_183EA76E4(v58, 0);
          memcpy(v60 + 4, v46, 8 * v58);
        }

        else
        {
          v60 = MEMORY[0x1E69E7CC0];
        }

        *v49 = v60;
        v32 = v127;
        if ((v127 & 0x8000000000000000) != 0)
        {
          goto LABEL_122;
        }

        goto LABEL_35;
      }

      if (v58 > *(*v49 + 24) >> 1)
      {
        goto LABEL_32;
      }
    }

    if (v121 < v125)
    {
      goto LABEL_129;
    }

    sub_183F7DC7C(v125, v121, v46, v58);
    v32 = v127;
    if ((v127 & 0x8000000000000000) != 0)
    {
      goto LABEL_122;
    }

    if (!v120)
    {
      v59 = v122;
      sub_183F7DC7C(v122, a2, v124, v127);
      goto LABEL_45;
    }

LABEL_35:
    if (!swift_isUniquelyReferenced_nonNull_native())
    {
      if (v32)
      {
LABEL_39:
        v61 = sub_183EA76E4(v32, 0);
        memcpy(v61 + 4, v124, 8 * v32);
      }

      else
      {
        v61 = MEMORY[0x1E69E7CC0];
      }

      *v53 = v61;
      goto LABEL_42;
    }

    if (v32 > *(*v53 + 24) >> 1)
    {
      goto LABEL_39;
    }

    sub_183F7DC7C(v122, a2, v124, v32);
LABEL_42:
    if (!swift_isUniquelyReferenced_nonNull_native())
    {
      if (v32)
      {
LABEL_47:
        v62 = sub_183F9BAB8(v32, 0);
        memcpy(v62 + 4, v123, 4 * v32);
      }

      else
      {
        v62 = MEMORY[0x1E69E7CC0];
      }

      *a4 = v62;
      goto LABEL_50;
    }

    if (v32 > *(*a4 + 24) >> 1)
    {
      goto LABEL_47;
    }

    v59 = v122;
LABEL_45:
    sub_183F7DCA8(v59, a2, v123, v32);
LABEL_50:
    v63 = v125 + v58;
    if (__OFADD__(v125, v58))
    {
      goto LABEL_123;
    }

    v28 = v63 - v121;
    if (__OFSUB__(v63, v121))
    {
      goto LABEL_124;
    }

    v38 = v122;
    if (!v28)
    {
      goto LABEL_67;
    }

    a1 = v122 + v32;
    if (__OFADD__(v122, v32))
    {
      goto LABEL_130;
    }

    v64 = *a4;
    a8 = *(*a4 + 16);
    if (a8 < a1)
    {
      goto LABEL_131;
    }

    if (a1 == a8)
    {
      goto LABEL_67;
    }

    if (a1 >= a8)
    {
      goto LABEL_137;
    }

    if (a1 < 0)
    {
      goto LABEL_138;
    }

    if (!a8)
    {
      goto LABEL_139;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v64 = sub_183F9C14C(v64);
    }

    while (a1 < *(v64 + 2))
    {
      v65 = &v64[4 * a1];
      v66 = *(v65 + 8);
      v67 = __OFADD__(v66, v28);
      v68 = v66 + v28;
      if (v67)
      {
        goto LABEL_110;
      }

      if ((v68 & 0x8000000000000000) != 0)
      {
        goto LABEL_111;
      }

      if (HIDWORD(v68))
      {
        goto LABEL_112;
      }

      ++a1;
      *(v65 + 8) = v68;
      if (a8 == a1)
      {
        *a4 = v64;
        goto LABEL_67;
      }
    }

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
    v29 = swift_stdlib_isStackAllocationSafe();
    if ((v29 & 1) == 0)
    {
      v93 = swift_slowAlloc();
      sub_183F70628(a15, v128);
      sub_183FA6180(v93, a8, a8, v38, v27, a1, v125, v38, a9, a10, a11, a12, v119 & 1, v32, v121, v122, a2, v122, a15, a4, v28);
      MEMORY[0x1865EFCB0](v93, -1, -1);
      v38 = v122;
      a4 = v118;
      goto LABEL_67;
    }
  }

  v95 = swift_slowAlloc();
  sub_183F70628(a15, v128);
  sub_183FA8920(v95, v38, v124, a8, v123, a8, v27, a1, a9, a10, a11, a12, v125, v38, v119 & 1, v120, v121, v122, a2, v122, a15, a4, v117);
  MEMORY[0x1865EFCB0](v95, -1, -1);
  v38 = v122;
  a4 = v118;
LABEL_67:
  v69 = *(v27 + 32);
  v70 = *(v69 + 16);
  if (v70)
  {
    if (v109)
    {
      if (a13)
      {
        v71 = *a4;
        v72 = *(*a4 + 16);
        if (v72)
        {
          v73 = *(v27 + 48);
          v74 = (v73 + 32);
          v75 = v73 + 24;
          v76 = *(v71 + 8);
          if (v76)
          {
            v77 = *v74;
            v78 = *(v75 + 8 * v76);
            v79 = NAN;
            if ((*v74 & 0xFFFFFFFFFFFFFLL) == 0)
            {
              v79 = *v74;
            }

            if ((~*v74 & 0x7FF0000000000000) == 0)
            {
              v77 = v79;
            }

            if ((~*&v78 & 0x7FF0000000000000) == 0 && (*(v75 + 8 * v76) & 0xFFFFFFFFFFFFFLL) != 0)
            {
              v78 = NAN;
            }
          }

          else
          {
            v78 = NAN;
            v77 = NAN;
          }

          v81 = v72 - 1;
          if (v81)
          {
            v87 = (v71 + 36);
            do
            {
              v89 = *v87++;
              v88 = v89;
              if (v76 != v89)
              {
                v90 = v74[v76];
                v91 = *(v75 + 8 * v88);
                if ((*&v90 & 0xFFFFFFFFFFFFFLL) != 0)
                {
                  v92 = v77;
                }

                else
                {
                  v92 = v90;
                }

                if ((~*&v90 & 0x7FF0000000000000) != 0)
                {
                  v92 = v90;
                }

                if (v77 > v90)
                {
                  v77 = v92;
                }

                if (v91 >= v78)
                {
                  if ((~*&v91 & 0x7FF0000000000000) != 0)
                  {
                    v78 = *(v75 + 8 * v88);
                  }

                  else if ((*(v75 + 8 * v88) & 0xFFFFFFFFFFFFFLL) == 0)
                  {
                    v78 = *(v75 + 8 * v88);
                  }
                }
              }

              v76 = v88;
              --v81;
            }

            while (v81);
          }

          v110 = *&v78;
        }

        else
        {
          v110 = 0x7FF8000000000000;
          v77 = NAN;
        }
      }

      else
      {
        v77 = *v27;
      }
    }

    else
    {
      v77 = *&v107;
      if (a13)
      {
        v110 = *(v27 + 8);
      }
    }

    v82 = (v27 + 16);
    if (!v38)
    {
      v82 = (v69 + 32);
    }

    v83 = *v82;
    v84 = (v69 + 8 * v70 + 24);
    if (v108 != a2)
    {
      v84 = (v27 + 24);
    }

    v85 = *v84;
    *v27 = v77;
    *(v27 + 8) = v110;
    *(v27 + 16) = v83;
    *(v27 + 24) = v85;
  }

  else
  {
    v80 = vdupq_n_s64(0x7FF8000000000000uLL);
    *v27 = v80;
    *(v27 + 16) = v80;
  }

  sub_183FA5EA0();
  sub_183F81130(a15);
  sub_183F81130(a15);
  sub_183F81130(a15);
  return sub_183F81130(a15);
}

uint64_t sub_183FA4058@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v4 = *(v1 + 48);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = v4;
  if ((~*v1 & 0x7FF0000000000000) == 0 && (*v1 & 0xFFFFFFFFFFFFFLL) != 0 || *(*(v1 + 32) + 16))
  {
    v5 = *(*(v1 + 40) + 16);
    v6 = *(*(v1 + 48) + 16);
  }

  else
  {
    v6 = 2;
    v5 = 2;
  }

  *(a1 + 72) = v5;
  *(a1 + 80) = v6;
  return sub_183F70628(v1, v8);
}

uint64_t sub_183FA40DC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  if (a3 < 0)
  {
LABEL_23:
    v14 = 0;
    v15 = a2 + 2 * a3;
    while (a2 != a4)
    {
      v8 = __OFSUB__(a2, 2);
      a2 -= 2;
      if (v8)
      {
        goto LABEL_49;
      }

      v16 = (~*v5 & 0x7FF0000000000000) != 0 || (*v5 & 0xFFFFFFFFFFFFFLL) == 0;
      if (!v16 || *(v5[4] + 16))
      {
        v17 = result & (result >> 63);
        while (1)
        {
          v18 = result - 1;
          if (result < 1)
          {
            result = v17;
            goto LABEL_25;
          }

          v19 = v5[5];
          if (result > *(v19 + 16))
          {
            break;
          }

          v20 = *(v19 + 4 * result-- + 28);
          if (a2 >= v20)
          {
            result = v18 + 1;
            goto LABEL_25;
          }
        }

        __break(1u);
        goto LABEL_47;
      }

      v8 = __OFSUB__(result, 2);
      result -= 2;
      if (v8)
      {
        __break(1u);
        break;
      }

LABEL_25:
      if (--v14 <= a3)
      {
        *a5 = result;
        *(a5 + 8) = v15;
        *(a5 + 16) = 0;
        return result;
      }
    }

LABEL_42:
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 1;
    return result;
  }

  if (a3)
  {
    v6 = 0;
    v7 = a2 + 2 * a3;
    while (a2 != a4)
    {
      v8 = __OFADD__(a2, 2);
      a2 += 2;
      if (v8)
      {
        goto LABEL_48;
      }

      v9 = (~*v5 & 0x7FF0000000000000) != 0 || (*v5 & 0xFFFFFFFFFFFFFLL) == 0;
      if (v9 && !*(v5[4] + 16))
      {
        v8 = __OFADD__(result, 2);
        result += 2;
        if (v8)
        {
          __break(1u);
          goto LABEL_23;
        }
      }

      else
      {
        v10 = v5[5];
        v11 = *(v10 + 16);
        if (result < v11)
        {
          v12 = v10 + 32;
          v13 = result;
          while ((result & 0x8000000000000000) == 0)
          {
            if (a2 < *(v12 + 4 * v13))
            {
              result = v13;
              goto LABEL_5;
            }

            if (v11 == ++v13)
            {
              result = v11;
              goto LABEL_5;
            }
          }

LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          return result;
        }
      }

LABEL_5:
      if (++v6 == a3)
      {
        a2 = v7;
        goto LABEL_44;
      }
    }

    goto LABEL_42;
  }

LABEL_44:
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = 0;
  return result;
}

uint64_t sub_183FA4254(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    if (__OFSUB__(result, 1))
    {
      __break(1u);
      return result;
    }

    v4 = *(a2 + 4 * (result - 1));
  }

  else
  {
    v4 = 0;
  }

  if (a4)
  {
    return a4 + 8 * v4;
  }

  else
  {
    return 0;
  }
}

void Region.init(x:y:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  v5 = MEMORY[0x1E69E7CC0];
  *(a1 + 32) = MEMORY[0x1E69E7CC0];
  *(a1 + 40) = v5;
  *(a1 + 48) = v5;
}

uint64_t sub_183FA42A4(uint64_t result, double a2, double a3)
{
  if (result)
  {
    v5 = *(v3 + 24);
    if (v5 < a2)
    {
      if (v5 > a3)
      {
        if (*(v3 + 16) <= a3)
        {
          return 1;
        }

        __break(1u);
        goto LABEL_15;
      }

      return 1;
    }

    return 0;
  }

  v6 = *(v3 + 32);
  v7 = *(v6 + 16);
  v8 = v6 + 32;
  result = sub_183F94060(v6 + 32, v7, a2);
  v9 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = result;
  if (v7 < result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = sub_183F94198(v8 + 8 * result, v7 - result, a3);
  v11 = result + v10;
  if (__OFADD__(result, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  result = v9 & ~(v9 >> 63);
  if (v11 < result)
  {
    __break(1u);
    return 0;
  }

  return result;
}

uint64_t sub_183FA4388(uint64_t result, uint64_t a2)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
  }

  else if (v5 < 1)
  {
    return 0;
  }

  else
  {
    v7[3] = v3;
    v7[4] = v4;
    v6 = (~*v2 & 0x7FF0000000000000) != 0 || (*v2 & 0xFFFFFFFFFFFFFLL) == 0;
    if (v6 && !*(v2[4] + 16))
    {
      return 2;
    }

    else
    {
      sub_183FA5FD4(v2[5] + 32, *(v2[5] + 16), v5, result, a2, v7);
      return v7[0];
    }
  }

  return result;
}

uint64_t *Region.index(before:)@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = result[1];
  v4 = __OFSUB__(v3, 2);
  v5 = v3 - 2;
  if (v4)
  {
LABEL_16:
    __break(1u);
  }

  else
  {
    v6 = *result;
    v7 = v2[5];
    v8 = (~*v2 & 0x7FF0000000000000) != 0 || (*v2 & 0xFFFFFFFFFFFFFLL) == 0;
    if (!v8 || *(v2[4] + 16))
    {
      v9 = v6 & (v6 >> 63);
      while (1)
      {
        v10 = v6 - 1;
        if (v6 < 1)
        {
          goto LABEL_14;
        }

        if (v6 > *(v7 + 16))
        {
          __break(1u);
          goto LABEL_16;
        }

        v11 = *(v7 + 28 + 4 * v6--);
        if (v5 >= v11)
        {
          *a2 = v10 + 1;
          a2[1] = v5;
          return result;
        }
      }
    }

    v9 = v6 - 2;
    if (!__OFSUB__(v6, 2))
    {
LABEL_14:
      *a2 = v9;
      a2[1] = v5;
      return result;
    }
  }

  __break(1u);
  return result;
}

Swift::Int __swiftcall Region.distance(from:to:)(CoreGraphics::Region::Index from, CoreGraphics::Region::Index to)
{
  v2 = *(from.spanIndex + 8);
  v3 = *(from.segmentIndex + 8);
  v4 = __OFSUB__(v3, v2);
  v5 = v3 - v2;
  if (!v4)
  {
    return v5 / 2;
  }

  __break(1u);
  return from.spanIndex;
}

unint64_t sub_183FA4504()
{
  result = qword_1EA854648;
  if (!qword_1EA854648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854648);
  }

  return result;
}

unint64_t sub_183FA45AC()
{
  result = qword_1EA854650;
  if (!qword_1EA854650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854650);
  }

  return result;
}

unint64_t sub_183FA4604()
{
  result = qword_1EA854658;
  if (!qword_1EA854658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA854660, &qword_1843999E0);
    sub_183FA4688();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854658);
  }

  return result;
}

unint64_t sub_183FA4688()
{
  result = qword_1EA854668;
  if (!qword_1EA854668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854668);
  }

  return result;
}

unint64_t sub_183FA46E0()
{
  result = qword_1EA854670;
  if (!qword_1EA854670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA854678, &qword_1843999E8);
    sub_183FA4688();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854670);
  }

  return result;
}

uint64_t sub_183FA47A8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (a3 < 0)
  {
LABEL_20:
    v14 = 0;
    v15 = (~*v4 & 0x7FF0000000000000) != 0;
    if ((*v4 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      v15 = 1;
    }

    while (1)
    {
      v9 = __OFSUB__(a2, 2);
      a2 -= 2;
      if (v9)
      {
        break;
      }

      if (v15 && !*(v4[4] + 16))
      {
        v7 = result - 2;
        if (__OFSUB__(result, 2))
        {
          goto LABEL_38;
        }
      }

      else
      {
        v7 = result & (result >> 63);
        while (1)
        {
          v16 = result - 1;
          if (result < 1)
          {
            break;
          }

          v17 = v4[5];
          if (result > *(v17 + 16))
          {
            __break(1u);
            goto LABEL_35;
          }

          v18 = *(v17 + 4 * result-- + 28);
          if (a2 >= v18)
          {
            v7 = v16 + 1;
            break;
          }
        }
      }

      --v14;
      result = v7;
      if (v14 <= a3)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    return result;
  }

  if (a3)
  {
    v5 = 0;
    v6 = (~*v4 & 0x7FF0000000000000) != 0;
    if ((*v4 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      v6 = 1;
    }

    v7 = result;
    while (1)
    {
      v9 = __OFADD__(a2, 2);
      a2 += 2;
      if (v9)
      {
        break;
      }

      if (v6 && !*(v4[4] + 16))
      {
        v9 = __OFADD__(v7, 2);
        v7 += 2;
        if (v9)
        {
          __break(1u);
          goto LABEL_20;
        }
      }

      else
      {
        v10 = v4[5];
        v11 = *(v10 + 16);
        if (v7 < v11)
        {
          v12 = v10 + 32;
          v13 = v7;
          while ((v7 & 0x8000000000000000) == 0)
          {
            if (a2 < *(v12 + 4 * v13))
            {
              v7 = v13;
              goto LABEL_7;
            }

            if (v11 == ++v13)
            {
              v7 = v11;
              goto LABEL_7;
            }
          }

LABEL_35:
          __break(1u);
          break;
        }
      }

LABEL_7:
      if (v5++ == a3 - 1)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

  v7 = result;
LABEL_33:
  *a4 = v7;
  a4[1] = a2;
  return result;
}

unint64_t sub_183FA48F8()
{
  result = qword_1EA853EC8;
  if (!qword_1EA853EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA853EC8);
  }

  return result;
}

unint64_t sub_183FA4950()
{
  result = qword_1EA854680;
  if (!qword_1EA854680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854680);
  }

  return result;
}

uint64_t sub_183FA4B20(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  v3 = *(a2 + 8);
  v4 = __OFSUB__(v3, v2);
  v5 = v3 - v2;
  if (!v4)
  {
    return v5 / 2;
  }

  __break(1u);
  return result;
}

uint64_t sub_183FA4B40(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  v3 = *(a2 + 24);
  if (v2 >= *(a2 + 8))
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_183FA4B60(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 < *(a2 + 8) || *(a2 + 24) < v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_183FA4B80(uint64_t result, uint64_t a2)
{
  if (*(result + 8) < *(a2 + 8) || *(a2 + 24) < *(result + 24))
  {
    __break(1u);
  }

  return result;
}

void *sub_183FA4C14()
{
  v1 = *(v0 + 16);
  v4[0] = *v0;
  v4[1] = v1;
  v4[2] = *(v0 + 32);
  v5 = *(v0 + 48);
  v2 = sub_183FA9564(v4);
  sub_183F81130(v4);
  return v2;
}

uint64_t sub_183FA4CBC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_183FA4D04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_183FA4D98@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < *(v2 + 8))
  {
    *a2 = v3;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t *sub_183FA4DC4(uint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if ((v2 & 0x8000000000000000) == 0 && v2 < *(v1 + 8))
  {
    *result = v2;
    return result;
  }

  __break(1u);
  return result;
}

void (*sub_183FA4DFC(void (*result)(), uint64_t *a2))()
{
  v3 = *a2;
  v4 = *v2;
  if (!*a2)
  {
    v5 = 0;
    goto LABEL_5;
  }

  if (!__OFSUB__(v3, 1))
  {
    v5 = *(v4 + 4 * (v3 - 1));
LABEL_5:
    v6 = *(v4 + 4 * v3);
    *result = v5;
    *(result + 1) = v6;
    return CGBitmapPixelInfoGetBitsPerComponent;
  }

  __break(1u);
  return result;
}

int64x2_t *sub_183FA4E4C@<X0>(int64x2_t *result@<X0>, int64x2_t *a2@<X8>)
{
  v3 = *v2;
  if (v2->i64[1] < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = *result;
  if (result->i64[0] < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if ((vmovn_s64(vcgtq_s64(v4, v3)).i32[1] & 1) == 0)
  {
    *a2 = v4;
    a2[1] = v3;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_183FA4E88(void *a1@<X8>)
{
  v2 = *(v1 + 8);
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = 0;
    a1[1] = v2;
  }
}

void *sub_183FA4EAC@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else if ((v4 & 0x8000000000000000) == 0 && *(v3 + 8) >= v4)
  {
    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_183FA4ED8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_183F77F0C(*a1, a2, *a3, *v4, v4[1]);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

uint64_t *sub_183FA4F14(uint64_t *result, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(v2 + 8);
  if (v4 >= *a2)
  {
    v5 = *result;
    if (((v3 | *result) & 0x8000000000000000) == 0 && v4 >= v5)
    {
      return (v3 - v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_183FA4F44@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*result < 0 || v3 >= *(v2 + 8))
  {
    __break(1u);
  }

  else
  {
    *a2 = v3 + 1;
  }

  return result;
}

uint64_t *sub_183FA4F68(uint64_t *result)
{
  v2 = *result;
  if (*result < 0 || v2 >= *(v1 + 8))
  {
    __break(1u);
  }

  else
  {
    *result = v2 + 1;
  }

  return result;
}

__n128 sub_183FA4F8C@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = 0;
  return result;
}

void sub_183FA4F9C()
{
  v1 = *(v0 + 8);
  if (v1 < 0)
  {
    __break(1u);
  }

  else if (v1)
  {
    v2 = *v0;
    v3 = sub_183F9BC78(*(v0 + 8), 0);
    if (sub_183FA9EC0(v4, v3 + 4, v1, v2, v1) != v1)
    {
      __break(1u);
    }
  }
}

void (*sub_183FA5044(void (*result)(), void *a2))()
{
  v3 = v2[2];
  v4 = __OFADD__(*a2, v3);
  v5 = *a2 + v3;
  if (v4)
  {
    __break(1u);
    goto LABEL_6;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (!HIDWORD(v5))
  {
    *result = *(*v2 + 8 * *a2);
    *(result + 2) = v5;
    return CGBitmapPixelInfoGetBitsPerComponent;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t *sub_183FA50A0@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result;
  if (*v2)
  {
    v4 = *v2 + 8 * *result;
  }

  else
  {
    v4 = 0;
  }

  v5 = result[1] - v3;
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v3;
  return result;
}

void *sub_183FA50C4@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3 - *result;
  if (a2 < 1)
  {
    if (v4 <= 0 && v4 > a2)
    {
      goto LABEL_4;
    }

LABEL_10:
    v6 = 0;
    v5 = *result + a2;
    goto LABEL_11;
  }

  if (v4 < 0 || v4 >= a2)
  {
    goto LABEL_10;
  }

LABEL_4:
  v5 = 0;
  v6 = 1;
LABEL_11:
  *a4 = v5;
  *(a4 + 8) = v6;
  return result;
}

__n128 sub_183FA5130@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  result = *v1;
  *a1 = *v1;
  a1[1] = v2;
  return result;
}

void *sub_183FA5144()
{
  v1 = v0[1];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v0[2];
  v3 = *v0;
  v4 = sub_183F9BC64(v0[1], 0);
  if (sub_183F780D8(v6, (v4 + 4), v1, v3, v1, v2) != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v4;
}

void *sub_183FA51D0@<X0>(void *result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v3 < *(*v2 + 16))
  {
    *a2 = v3;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t *sub_183FA51FC(unint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v2 < *(*v1 + 16))
  {
    *result = v2;
    return result;
  }

  __break(1u);
  return result;
}

void (*sub_183FA5238(void *a1, unint64_t *a2))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  *a1 = v5;
  sub_183FAAC50(*a2, *v2, v2[1], v2[2], v5);
  return sub_183FA52BC;
}

void sub_183FA52C4(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1 < 0 || (v4 = a1[1], v5 = *v2, *(*v2 + 16) < v4))
  {
    __break(1u);
  }

  else
  {
    v8 = v2 + 1;
    v7 = v2[1];
    v6 = v8[1];
    *a2 = v3;
    a2[1] = v4;
    a2[2] = v5;
    a2[3] = v7;
    a2[4] = v6;
  }
}

void sub_183FA5330(void *a1@<X8>)
{
  v2 = *(*v1 + 16);
  *a1 = 0;
  a1[1] = v2;
}

void *sub_183FA5354@<X0>(void *result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else if (v4 <= *(*v3 + 16))
  {
    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_183FA5380@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_183F8087C(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

unint64_t *sub_183FA53BC(unint64_t *result, unint64_t *a2)
{
  v3 = *a2;
  v4 = *(*v2 + 16);
  if (*result <= v4 && v3 <= v4)
  {
    return (v3 - *result);
  }

  __break(1u);
  return result;
}

void *sub_183FA53E4@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (*result >= *(*v2 + 16))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_183FA5408(void *result)
{
  if (*result >= *(*v1 + 16))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

void *sub_183FA542C()
{
  v1 = sub_183FA9640(*v0, *(v0 + 8), *(v0 + 16));

  return v1;
}

unint64_t sub_183FA5498()
{
  result = qword_1ED4DFB88;
  if (!qword_1ED4DFB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED4DFB88);
  }

  return result;
}

unint64_t sub_183FA5534()
{
  result = qword_1EA8546C0;
  if (!qword_1EA8546C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8546C0);
  }

  return result;
}

unint64_t sub_183FA558C()
{
  result = qword_1EA8546C8;
  if (!qword_1EA8546C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA8546B8, &qword_184399CC8);
    sub_183FA5610();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8546C8);
  }

  return result;
}

unint64_t sub_183FA5610()
{
  result = qword_1EA8546D0;
  if (!qword_1EA8546D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8546D0);
  }

  return result;
}

unint64_t sub_183FA566C()
{
  result = qword_1EA8546D8;
  if (!qword_1EA8546D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA8546B8, &qword_184399CC8);
    sub_183FA56F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8546D8);
  }

  return result;
}

unint64_t sub_183FA56F0()
{
  result = qword_1EA8546E0;
  if (!qword_1EA8546E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8546E0);
  }

  return result;
}

void sub_183FA5744()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = *v0 & 0x7FF0000000000000;
  v4 = v3 != 0x7FF0000000000000 || (*v0 & 0xFFFFFFFFFFFFFLL) == 0;
  if (v4 && !*(v0[4] + 16))
  {
    return;
  }

  v5 = *(v2 + 16);
  if (!v5)
  {
    return;
  }

  v6 = (v1 + 32);
  v7 = v1 + 24;
  v8 = *(v2 + 32);
  if (!v8)
  {
    v10 = NAN;
    v9 = NAN;
    v12 = v5 - 1;
    if (!v12)
    {
      return;
    }

    goto LABEL_20;
  }

  v9 = *v6;
  v10 = *(v7 + 8 * v8);
  v11 = NAN;
  if ((*v6 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v11 = *v6;
  }

  if ((~*v6 & 0x7FF0000000000000) == 0)
  {
    v9 = v11;
  }

  if ((~*&v10 & 0x7FF0000000000000) == 0 && (*(v7 + 8 * v8) & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v10 = NAN;
  }

  v12 = v5 - 1;
  if (v12)
  {
LABEL_20:
    v13 = (v2 + 36);
    do
    {
      v15 = *v13++;
      v14 = v15;
      if (v8 != v15)
      {
        v16 = v6[v8];
        v17 = *(v7 + 8 * v14);
        if ((*&v16 & 0xFFFFFFFFFFFFFLL) != 0)
        {
          v18 = v9;
        }

        else
        {
          v18 = v16;
        }

        if ((~*&v16 & 0x7FF0000000000000) != 0)
        {
          v18 = v16;
        }

        if (v9 > v16)
        {
          v9 = v18;
        }

        if (v17 >= v10)
        {
          if ((~*&v17 & 0x7FF0000000000000) != 0)
          {
            v10 = *(v7 + 8 * v14);
          }

          else if ((*(v7 + 8 * v14) & 0xFFFFFFFFFFFFFLL) == 0)
          {
            v10 = *(v7 + 8 * v14);
          }
        }
      }

      v8 = v14;
      --v12;
    }

    while (v12);
  }
}

void sub_183FA58E8(unsigned int *a1@<X3>, uint64_t a2@<X4>, double *a3@<X5>, double *a4@<X8>)
{
  if (a2)
  {
    if (a2 >= 1)
    {
      v4 = *a1;
      if (v4)
      {
        v5 = *a3;
        v6 = a3[v4 - 1];
        v7 = NAN;
        if ((*a3 & 0xFFFFFFFFFFFFFLL) == 0)
        {
          v7 = *a3;
        }

        if ((~*a3 & 0x7FF0000000000000) == 0)
        {
          v5 = v7;
        }

        if ((~*&v6 & 0x7FF0000000000000) == 0 && (*&a3[v4 - 1] & 0xFFFFFFFFFFFFFLL) != 0)
        {
          v6 = NAN;
        }

        v8 = a2 - 1;
        if (a2 == 1)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v6 = NAN;
        v5 = NAN;
        v8 = a2 - 1;
        if (a2 == 1)
        {
LABEL_12:
          *a4 = v5;
          a4[1] = v6;
          return;
        }
      }

      v9 = a1 + 1;
      do
      {
        v11 = *v9++;
        v10 = v11;
        if (v4 != v11)
        {
          v12 = &a3[v4];
          if (!a3)
          {
            v12 = 0;
          }

          v13 = v12[~v4 + v10];
          if ((*v12 & 0xFFFFFFFFFFFFFLL) != 0)
          {
            v14 = v5;
          }

          else
          {
            v14 = *v12;
          }

          if ((~*v12 & 0x7FF0000000000000) != 0)
          {
            v14 = *v12;
          }

          if (v5 > *v12)
          {
            v5 = v14;
          }

          if (v13 >= v6)
          {
            v15 = v12[~v4 + v10];
            if ((~*&v13 & 0x7FF0000000000000) != 0)
            {
              v6 = v13;
            }

            else if ((*&v15 & 0xFFFFFFFFFFFFFLL) == 0)
            {
              v6 = v13;
            }
          }
        }

        v4 = v10;
        --v8;
      }

      while (v8);
      goto LABEL_12;
    }

    __break(1u);
  }

  else
  {
    *a4 = NAN;
    a4[1] = NAN;
  }
}

char *sub_183FA5A00()
{
  v7 = *MEMORY[0x1E69E9840];
  if (((~*v0 & 0x7FF0000000000000) != 0 || (*v0 & 0xFFFFFFFFFFFFFLL) == 0) && !*(v0[4] + 16))
  {
    v2 = v0[3];
    v4 = *v0;
    v5 = *(v0 + 1);
    v6 = v2;
    sub_183FA5D1C(&v5 + 8, 2);
    sub_183FA5D1C(&v4, 2);
    return sub_183FA5ACC(2, 2u);
  }

  return result;
}

char *sub_183FA5ACC(char *result, unsigned int a2)
{
  v3 = *v2;
  v4 = *(*v2 + 16);
  v5 = &result[v4];
  if (__OFADD__(v4, result))
  {
    goto LABEL_53;
  }

  v7 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v3;
  if (result)
  {
    v8 = *(v3 + 24) >> 1;
    if (v8 >= v5)
    {
      goto LABEL_11;
    }

    if (v4 <= v5)
    {
      v9 = v5;
    }

    else
    {
      v9 = v4;
    }
  }

  else if (v4 <= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v4;
  }

  result = sub_183F7FF54(result, v9, 1);
  v3 = *v2;
  v8 = *(*v2 + 24) >> 1;
LABEL_11:
  v10 = *(v3 + 16);
  v11 = v8 - v10;
  if (v8 == v10)
  {
    if (v7 > 0)
    {
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v12 = 0;
    goto LABEL_34;
  }

  if (v11 < 1)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v12 = v7;
  if (v7)
  {
    v13 = (v3 + 4 * v10);
    v14 = v13 + 2;
    v15 = v7 & ~(v7 >> 63);
    v16 = v8 + ~v10;
    if (v15 < v16)
    {
      v16 = v7 & ~(v7 >> 63);
    }

    if (v16 >= v7 - 1)
    {
      v16 = v7 - 1;
    }

    if (v16 > 7)
    {
      v19 = v16 + 1;
      v20 = v19 & 7;
      if ((v19 & 7) == 0)
      {
        v20 = 8;
      }

      v17 = v19 - v20;
      v18 = v17 + 1;
      v14 = (v14 + 4 * v17);
      v21 = vdupq_n_s32(a2);
      v22 = v13 + 3;
      v23 = v17;
      do
      {
        v22[-1] = v21;
        *v22 = v21;
        v22 += 2;
        v23 -= 8;
      }

      while (v23);
    }

    else
    {
      v17 = 0;
      v18 = 1;
    }

    while (v17 != v15)
    {
      v17 = v18;
      v14->i32[0] = a2;
      if (v11 == v18)
      {
        v12 = v11;
        if (v11 < v7)
        {
          goto LABEL_54;
        }

        goto LABEL_31;
      }

      v14 = (v14 + 4);
      ++v18;
      if (v7 + 1 == v17 + 1)
      {
        v12 = v7;
        goto LABEL_31;
      }
    }

    goto LABEL_52;
  }

LABEL_31:
  if (v12 <= 0)
  {
LABEL_34:
    if (v12 != v11 || v12 == v7)
    {
LABEL_49:
      *v2 = v3;
      return result;
    }

    if (v11 >= v7)
    {
      goto LABEL_55;
    }

    v25 = v11 + 1;
    while (1)
    {
      v26 = *(v3 + 24);
      if (v10 + 1 > (v26 >> 1))
      {
        result = sub_183F7FF54((v26 > 1), v10 + 1, 1);
      }

      v3 = *v2;
      v27 = *(*v2 + 24) >> 1;
      if (v10 < v27)
      {
        break;
      }

LABEL_38:
      *(v3 + 16) = v10;
    }

    v28 = v25 + v27 - v10;
    v29 = v10 + 8;
    v30 = v25;
    while (1)
    {
      *(v3 + 4 * v29) = a2;
      if (v7 == v30)
      {
        *(v3 + 16) = v29 - 7;
        goto LABEL_49;
      }

      if (v25 < 0 || v30 >= v7)
      {
        break;
      }

      ++v30;
      if (++v29 - v27 == 8)
      {
        v10 = v27;
        v25 = v28;
        goto LABEL_38;
      }
    }

    __break(1u);
    goto LABEL_51;
  }

  v24 = __OFADD__(v10, v12);
  v10 += v12;
  if (!v24)
  {
    *(v3 + 16) = v10;
    goto LABEL_34;
  }

LABEL_56:
  __break(1u);
  return result;
}

char *sub_183FA5D1C(char *result, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 16);
  v5 = v4 + a2;
  if (__OFADD__(v4, a2))
  {
    __break(1u);
    goto LABEL_34;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v3;
  if (isUniquelyReferenced_nonNull_native)
  {
    v9 = *(v3 + 24) >> 1;
    if (v9 >= v5)
    {
      goto LABEL_11;
    }

    if (v4 <= v5)
    {
      v10 = v5;
    }

    else
    {
      v10 = v4;
    }
  }

  else if (v4 <= v5)
  {
    v10 = v5;
  }

  else
  {
    v10 = v4;
  }

  sub_183F7FF74(isUniquelyReferenced_nonNull_native, v10, 1);
  v3 = *v2;
  v9 = *(*v2 + 24) >> 1;
LABEL_11:
  v11 = *(v3 + 16);
  v12 = v9 - v11;
  result = sub_183EA81DC((v3 + 8 * v11 + 32), v9 - v11, v7, a2);
  if (v14 < a2)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v14 >= 1)
  {
    v15 = *(v3 + 16);
    v16 = __OFADD__(v15, v14);
    v17 = v15 + v14;
    if (!v16)
    {
      *(v3 + 16) = v17;
      goto LABEL_15;
    }

LABEL_35:
    __break(1u);
    return result;
  }

LABEL_15:
  if (v14 == v12 && result != 0 && result != v13)
  {
    v20 = *(v3 + 16);
    v22 = *result;
    result += 8;
    v21 = v22;
    while (1)
    {
      v23 = *(v3 + 24);
      if (v20 + 1 > (v23 >> 1))
      {
        v27 = result;
        v28 = v13;
        sub_183F7FF74((v23 > 1), v20 + 1, 1);
        v13 = v28;
        result = v27;
      }

      v3 = *v2;
      v24 = *(*v2 + 24) >> 1;
      if (v20 < v24)
      {
        break;
      }

LABEL_23:
      *(v3 + 16) = v20;
    }

    v25 = v20 + 4;
    while (1)
    {
      *(v3 + 8 * v25) = v21;
      if (result == v13)
      {
        break;
      }

      v26 = *result;
      result += 8;
      v21 = v26;
      if (++v25 - v24 == 4)
      {
        v20 = v24;
        goto LABEL_23;
      }
    }

    *(v3 + 16) = v25 - 3;
  }

  *v2 = v3;
  return result;
}

void sub_183FA5EA0()
{
  v2 = v0 + 5;
  v1 = v0[5];
  if (*(v1 + 16) == 2 && *(v1 + 32) == 2 && *(v1 + 36) == 2)
  {
    v3 = v0 + 6;
    if (*(v0[6] + 16) == 2)
    {
      v4 = v0 + 4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v6 = *v4;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_183F80A50(0, *(v6 + 16));
      }

      else
      {
        v7 = sub_183EA76E4(0, *(v6 + 24) >> 1);

        *v4 = v7;
      }

      v8 = swift_isUniquelyReferenced_nonNull_native();
      v9 = *v2;
      if (v8)
      {
        sub_183F80BB4(0, *(v9 + 16));
      }

      else
      {
        v10 = sub_183F9BAB8(0, *(v9 + 24) >> 1);

        *v2 = v10;
      }

      v11 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v3;
      if (v11)
      {
        sub_183F80A50(0, *(v12 + 16));
      }

      else
      {
        v13 = sub_183EA76E4(0, *(v12 + 24) >> 1);

        *v3 = v13;
      }
    }
  }
}

uint64_t sub_183FA5FD4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  if (a3 <= 32)
  {
    goto LABEL_10;
  }

  if (__OFSUB__(a5, 1))
  {
    goto LABEL_32;
  }

  if (!a4)
  {
    v6 = 0;
    v7 = a5;
    goto LABEL_6;
  }

  if (!__OFSUB__(a4, 1))
  {
    v6 = *(result + 4 * (a4 - 1));
    v7 = a5 - a4;
    if (!__OFSUB__(a5, a4))
    {
LABEL_6:
      v8 = __OFSUB__(v7, 1);
      v9 = v7 - 1;
      if (v8)
      {
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v10 = *(result + 4 * (a5 - 1)) - v6;
      v11 = (v9 + (v9 >> 63)) & 0xFFFFFFFFFFFFFFFELL;
      v8 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v8)
      {
LABEL_27:
        *a6 = v12;
        return result;
      }

      __break(1u);
LABEL_10:
      if ((a2 & 0x8000000000000000) == 0)
      {
        if ((a4 & 0x8000000000000000) == 0)
        {
          if (a2 >= a5)
          {
            if (a4 == a5)
            {
              *a6 = 0;
              return result;
            }

            if (a4 < a5)
            {
              v12 = 0;
              if (a4 <= a2)
              {
                v13 = a2;
              }

              else
              {
                v13 = a4;
              }

              while (1)
              {
                if (a4)
                {
                  if (__OFSUB__(a4, 1))
                  {
                    goto LABEL_31;
                  }

                  v14 = *(result + 4 * (a4 - 1));
                  if (v13 == a4)
                  {
                    goto LABEL_30;
                  }
                }

                else
                {
                  v14 = 0;
                  if (!v13)
                  {
                    goto LABEL_30;
                  }
                }

                v15 = *(result + 4 * a4) - v14;
                if (v15 > v12)
                {
                  v12 = v15;
                }

                if (a5 == ++a4)
                {
                  goto LABEL_27;
                }
              }
            }

            goto LABEL_38;
          }

          goto LABEL_35;
        }

LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_183FA6180(char *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, int64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, unsigned __int8 a13, unsigned __int8 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v22 = v21;
  v97 = a6;
  v99 = a1;
  v33 = a19;
  v108[2] = *MEMORY[0x1E69E9840];
  sub_183F70628(a19, v104);
  if (a3 < 0)
  {
    goto LABEL_74;
  }

  if (a3 >> 61)
  {
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
  }

  v95 = a8;
  v96 = a2;
  v93 = a21;
  v94 = a20;
  v81 = a18;
  v88 = a17;
  v91 = a16;
  v90 = a14;
  v92 = a13;
  v35 = v104;
  isUniquelyReferenced_nonNull_native = a19;
  if (4 * a3 >= 1025)
  {
    goto LABEL_61;
  }

  sub_183F70628(a19, v104);
  v37 = sub_183F70628(a19, v104);
  while (1)
  {
    v89 = a3;
    isStackAllocationSafe = MEMORY[0x1EEE9AC00](v37);
    v98 = &v80 - v39;
    if ((a4 & 0x8000000000000000) != 0)
    {
      goto LABEL_76;
    }

    if (a4 >> 60)
    {
      goto LABEL_77;
    }

    if ((8 * a4) >= 1025)
    {
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      if ((isStackAllocationSafe & 1) == 0)
      {
        break;
      }
    }

    v100 = v33;
    v40 = MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v43 = &v80 - v42;
    v102 = 0;
    v103 = 0;
    if (a7 < v97)
    {
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    v82 = v41;
    v86 = a15;
    v83 = &v80;
    v84 = v22;
    v87 = &v80;
    v45 = a5 + 6;
    v44 = a5[6];
    v46 = a5[4];
    v85 = a5 + 4;
    v47 = *a5;
    v48 = *(a5 + 1);
    v49 = a5[5];
    a5 += 5;
    v108[0] = v44 + 8 * v97 + 32;
    v108[1] = a7 - v97;
    v104[0] = v47;
    v104[1] = v48;
    v105 = v46;
    v106 = v49;
    v107 = v44;
    MEMORY[0x1EEE9AC00](v40);
    *(&v80 - 12) = v43;
    *(&v80 - 11) = a4;
    v70 = &v102;
    v71 = v95;
    LOBYTE(v72) = v92 & 1;
    v73 = v108;
    v74 = v99;
    v75 = v96;
    v76 = &v103;
    v77 = v98;
    v78 = v89;
    v51 = v50;
    v79 = v50;
    v52 = v100;
    sub_183F70628(v100, v101);
    swift_retain_n();

    sub_183F99594(v104, sub_183FAB470, a9, a10, a11, a12, (&v80 - 14), v52, v94, v93);

    a4 = v102;
    if ((v102 & 0x8000000000000000) != 0)
    {
      goto LABEL_67;
    }

    v53 = v51;
    a3 = v86;
    a15 = v91;
    v54 = v90;
    if (v90)
    {
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        if (a4)
        {
LABEL_18:
          v57 = sub_183EA76E4(a4, 0);
          memcpy(v57 + 4, v43, 8 * a4);
        }

        else
        {
          v57 = MEMORY[0x1E69E7CC0];
        }

        v55 = v88;
        *v45 = v57;

        a7 = v103;
        v56 = v85;
        if (v103 < 0)
        {
          goto LABEL_68;
        }

        goto LABEL_21;
      }

      if (a4 > *(*v45 + 24) >> 1)
      {
        goto LABEL_18;
      }
    }

    if (a3 < v53)
    {
      goto LABEL_71;
    }

    sub_183F7DC7C(v53, a3, v43, a4);
    a7 = v103;
    v55 = v88;
    v56 = v85;
    if (v103 < 0)
    {
      goto LABEL_68;
    }

    if ((v54 & 1) == 0)
    {
      sub_183F7DC7C(a15, v88, v99, v103);
LABEL_31:
      sub_183F7DCA8(a15, v55, v98, a7);
      goto LABEL_36;
    }

LABEL_21:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if (a7 <= *(*v56 + 24) >> 1)
      {
        sub_183F7DC7C(a15, v55, v99, a7);
        goto LABEL_29;
      }
    }

    else if (!a7)
    {
      goto LABEL_27;
    }

    v58 = sub_183EA76E4(a7, 0);
    sub_183EA81DC(v58 + 4, a7, v99, a7);
    if (v59 != a7)
    {
      __break(1u);
LABEL_27:
      v58 = MEMORY[0x1E69E7CC0];
    }

    *v56 = v58;

LABEL_29:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if (a7 <= *(*a5 + 24) >> 1)
      {
        goto LABEL_31;
      }
    }

    else if (!a7)
    {
      v60 = MEMORY[0x1E69E7CC0];
      goto LABEL_35;
    }

    v60 = sub_183F9BAB8(a7, 0);
    memcpy(v60 + 4, v98, 4 * a7);
LABEL_35:
    *a5 = v60;

LABEL_36:
    v61 = v53 + a4;
    if (__OFADD__(v53, a4))
    {
      goto LABEL_69;
    }

    v62 = v61 - a3;
    if (__OFSUB__(v61, a3))
    {
      goto LABEL_70;
    }

    if (!v62)
    {
      goto LABEL_42;
    }

    v63 = v81 + a7;
    if (__OFADD__(v81, a7))
    {
      goto LABEL_72;
    }

    v64 = *a5;
    v65 = *(*a5 + 16);
    if (v65 < v63)
    {
      goto LABEL_73;
    }

    if (v65 == v63)
    {
LABEL_42:
      v33 = v100;
      sub_183F81130(v100);
      goto LABEL_43;
    }

    v22 = v65 - v63;
    if (v65 <= v63)
    {
      goto LABEL_78;
    }

    if (v63 < 0)
    {
      goto LABEL_79;
    }

    if (!v65)
    {
      goto LABEL_80;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a5 = v64;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_183F9C14C(v64);
      v64 = isUniquelyReferenced_nonNull_native;
    }

    *a5 = v64;
    v33 = a7 + v81 + 8;
    while ((v33 - 8) < *(v64 + 16))
    {
      v67 = *(v64 + 4 * v33);
      a3 = v67 + v62;
      if (__OFADD__(v67, v62))
      {
        goto LABEL_58;
      }

      if (a3 < 0)
      {
        goto LABEL_59;
      }

      if (HIDWORD(a3))
      {
        goto LABEL_60;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a5 = v64;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_183F9C14C(v64);
        v64 = isUniquelyReferenced_nonNull_native;
        *a5 = isUniquelyReferenced_nonNull_native;
      }

      *(v64 + 4 * v33) = a3;
      v64 = *a5;
      ++v33;
      if (!--v22)
      {
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    sub_183F70628(isUniquelyReferenced_nonNull_native, v35);
    sub_183F70628(v33, v104);
    v37 = swift_stdlib_isStackAllocationSafe();
    if ((v37 & 1) == 0)
    {
      v68 = swift_slowAlloc();
      sub_183F70628(v33, v104);
      sub_183FA7704(v68, a3, a4, v99, v96, a5, v97, a7, a9, a10, a11, a12, v95, v92 & 1, v90 & 1, a15, v91, v88, v81, v33, v94, v93);
      MEMORY[0x1865EFCB0](v68, -1, -1);
      goto LABEL_43;
    }
  }

  v69 = swift_slowAlloc();
  sub_183F70628(v33, v104);
  sub_183FA8920(v69, a4, v99, v96, v98, v89, a5, v97, a9, a10, a11, a12, a7, v95, v92 & 1, v90 & 1, a15, v91, v88, v81, v33, v94, v93);
  MEMORY[0x1865EFCB0](v69, -1, -1);
  if (v22)
  {
    swift_willThrow();
  }

LABEL_43:
  sub_183F81130(v33);
  sub_183F81130(v33);
  sub_183F81130(v33);
  return sub_183F81130(v33);
}

uint64_t sub_183FA6EC0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t i@<X3>, char **a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, void (*a8)(_OWORD *, uint64_t, uint64_t *, __n128)@<X7>, unint64_t x8_0@<X8>, uint64_t a9, uint64_t a10, unsigned __int8 a11, unsigned __int8 a12, char **a13, uint64_t a14, char **a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v94 = a1;
  v102[2] = *MEMORY[0x1E69E9840];
  v95 = a3;
  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_72;
  }

  if (v95 >> 61)
  {
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
  }

  v21 = v20;
  v90 = a2;
  v91 = a8;
  v79 = a16;
  v86 = a15;
  v92 = a12;
  v87 = a11;
  v88 = a10;
  v89 = a9;
  if ((4 * v95) >= 1025)
  {
    goto LABEL_59;
  }

  while (1)
  {
    isStackAllocationSafe = MEMORY[0x1EEE9AC00](a1);
    v93 = &v78 - v30;
    if ((i & 0x8000000000000000) != 0)
    {
      goto LABEL_74;
    }

    if (i >> 60)
    {
      goto LABEL_75;
    }

    if ((8 * i) >= 1025)
    {
      v85 = v29;
      v64 = v28;
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      v65 = v64;
      if ((isStackAllocationSafe & 1) == 0)
      {
        break;
      }
    }

    v84 = a14;
    v31 = MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v36 = &v78 - v35;
    v100 = 0;
    v101 = 0;
    if (v33 < v32)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    v83 = a13;
    v80 = v34;
    v81 = &v78;
    v82 = v21;
    v85 = &v78;
    v37 = a5 + 6;
    v38 = a5[6];
    v40 = a5 + 4;
    v39 = a5[4];
    v41 = *a5;
    v42 = *(a5 + 1);
    v43 = a5[5];
    a5 += 5;
    v102[0] = &v38[8 * v32 + 32];
    v102[1] = v33 - v32;
    v96[0] = v41;
    v96[1] = v42;
    v97 = v39;
    v98 = v43;
    v99 = v38;
    MEMORY[0x1EEE9AC00](v31);
    *(&v78 - 12) = v36;
    *(&v78 - 11) = i;
    v68 = &v100;
    v69 = v88;
    LOBYTE(v70) = v87 & 1;
    v71 = v102;
    v72 = v94;
    v73 = v90;
    v74 = &v101;
    v75 = v93;
    v76 = v95;
    v45 = v44;
    v77 = v44;
    swift_retain_n();

    (v91)(v96, a19, &v78 - 14);

    v46 = v100;
    if ((v100 & 0x8000000000000000) != 0)
    {
      goto LABEL_65;
    }

    v47 = v83;
    a13 = v86;
    if (v92)
    {
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        if (v46)
        {
LABEL_17:
          v48 = sub_183EA76E4(v46, 0);
          memcpy(v48 + 4, v36, 8 * v46);
        }

        else
        {
          v48 = MEMORY[0x1E69E7CC0];
        }

        a14 = v84;
        *v37 = v48;

        v21 = v101;
        if ((v101 & 0x8000000000000000) != 0)
        {
          goto LABEL_66;
        }

        goto LABEL_20;
      }

      if (v46 > *(*v37 + 24) >> 1)
      {
        goto LABEL_17;
      }
    }

    if (v47 < v45)
    {
      goto LABEL_69;
    }

    sub_183F7DC7C(v45, v47, v36, v46);
    v21 = v101;
    a14 = v84;
    if ((v101 & 0x8000000000000000) != 0)
    {
      goto LABEL_66;
    }

    if ((v92 & 1) == 0)
    {
      sub_183F7DC7C(v84, a13, v94, v101);
      goto LABEL_30;
    }

LABEL_20:
    if (!swift_isUniquelyReferenced_nonNull_native())
    {
      if (!v21)
      {
        goto LABEL_26;
      }

LABEL_24:
      v49 = sub_183EA76E4(v21, 0);
      sub_183EA81DC(v49 + 4, v21, v94, v21);
      if (v50 != v21)
      {
        __break(1u);
LABEL_26:
        v49 = MEMORY[0x1E69E7CC0];
      }

      *v40 = v49;

      goto LABEL_28;
    }

    if (v21 > *(*v40 + 24) >> 1)
    {
      goto LABEL_24;
    }

    sub_183F7DC7C(a14, a13, v94, v21);
LABEL_28:
    if (!swift_isUniquelyReferenced_nonNull_native())
    {
      if (v21)
      {
LABEL_32:
        v52 = sub_183F9BAB8(v21, 0);
        memcpy(v52 + 32, v93, 4 * v21);
      }

      else
      {
        v52 = MEMORY[0x1E69E7CC0];
      }

      *a5 = v52;

      goto LABEL_35;
    }

    if (v21 > *(*a5 + 3) >> 1)
    {
      goto LABEL_32;
    }

LABEL_30:
    result = sub_183F7DCA8(a14, a13, v93, v21);
LABEL_35:
    v53 = v45 + v46;
    if (__OFADD__(v45, v46))
    {
      goto LABEL_67;
    }

    a17 = v53 - v47;
    if (__OFSUB__(v53, v47))
    {
      goto LABEL_68;
    }

    if (!a17)
    {
      return result;
    }

    v54 = v79 + v21;
    if (__OFADD__(v79, v21))
    {
      goto LABEL_70;
    }

    v55 = *a5;
    v56 = *(*a5 + 2);
    if (v56 < v54)
    {
      goto LABEL_71;
    }

    if (v56 == v54)
    {
      return result;
    }

    v57 = v56 - v54;
    if (v56 <= v54)
    {
      goto LABEL_76;
    }

    if (v54 < 0)
    {
      goto LABEL_77;
    }

    if (!v56)
    {
      goto LABEL_78;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a5 = v55;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v55 = sub_183F9C14C(v55);
    }

    *a5 = v55;
    for (i = v21 + v79 + 8; ; ++i)
    {
      x8_0 = i - 8;
      if (i - 8 >= *(v55 + 2))
      {
        break;
      }

      x8_0 = *&v55[4 * i];
      v59 = x8_0 + a17;
      if (__OFADD__(x8_0, a17))
      {
        goto LABEL_56;
      }

      if ((v59 & 0x8000000000000000) != 0)
      {
        goto LABEL_57;
      }

      x8_0 = HIDWORD(v59);
      if (HIDWORD(v59))
      {
        goto LABEL_58;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      *a5 = v55;
      if ((result & 1) == 0)
      {
        result = sub_183F9C14C(v55);
        v55 = result;
        *a5 = result;
      }

      *&v55[4 * i] = v59;
      v55 = *a5;
      if (!--v57)
      {
        return result;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v60 = x8_0;
    v61 = a7;
    v78 = a6;
    a1 = swift_stdlib_isStackAllocationSafe();
    if ((a1 & 1) == 0)
    {
      v62 = v60;
      v85 = v61;
      v63 = swift_slowAlloc();
      sub_183FA7F34(v63, v95, i, v94, v90, a5, v78, v85, v62, v91, v89, v88, v87 & 1, v92 & 1, a13, a14, v86, v79, a17, a18);
      return MEMORY[0x1865EFCB0](v63, -1, -1);
    }
  }

  v66 = v85;
  v78 = v65;
  v67 = swift_slowAlloc();
  sub_183FA907C(v67, i, v94, v90, v93, v95, a5, v78, v66, v91, v89, v88, v87 & 1, v92 & 1, a13, a14, v86, v79, a17);
  result = MEMORY[0x1865EFCB0](v67, -1, -1);
  if (v21)
  {
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_183FA7704(char *a1, uint64_t a2, unint64_t a3, char *a4, uint64_t a5, char **a6, unint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, uint64_t a13, unsigned __int8 a14, unsigned __int8 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v91 = a4;
  v89 = a2;
  v90 = a1;
  v99[2] = *MEMORY[0x1E69E9840];
  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
  }

  v23 = a3;
  if (a3 >> 60)
  {
    goto LABEL_70;
  }

  v24 = v22;
  v88 = a5;
  v87 = a22;
  v86 = a21;
  v32 = a20;
  v77[0] = a19;
  v82 = a17;
  v83 = a16;
  v81 = a15;
  v84 = a14;
  v85 = a13;
  if ((8 * a3) >= 1025)
  {
    goto LABEL_59;
  }

  sub_183F70628(a20, v95);
  isStackAllocationSafe = sub_183F70628(a20, v95);
  while (1)
  {
    v79 = a18;
    v35 = MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v38 = v77 - v37;
    v93 = 0;
    v94 = 0;
    v39 = a8 - a7;
    if (a8 < a7)
    {
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v77[1] = v36;
    v77[2] = v24;
    v80 = v77;
    v41 = a6 + 6;
    v40 = a6[6];
    v42 = a6[4];
    v78 = a6 + 4;
    v43 = *a6;
    v44 = *(a6 + 1);
    v45 = a6[5];
    a6 += 5;
    v99[0] = &v40[8 * a7 + 32];
    v99[1] = v39;
    v95[0] = v43;
    v95[1] = v44;
    v96 = v42;
    v97 = v45;
    v98 = v40;
    MEMORY[0x1EEE9AC00](v35);
    v77[-12] = v38;
    v77[-11] = v23;
    v67 = &v93;
    v68 = v85;
    v69 = v84 & 1;
    v70 = v99;
    v71 = v91;
    v72 = v88;
    v73 = &v94;
    v74 = v90;
    v75 = v89;
    v47 = v46;
    v76 = v46;
    sub_183F70628(v32, v92);
    swift_retain_n();

    v89 = v32;
    sub_183F99594(v95, sub_183FAB470, a9, a10, a11, a12, &v77[-14], v32, v86, v87);

    v48 = v93;
    if ((v93 & 0x8000000000000000) != 0)
    {
      goto LABEL_62;
    }

    v49 = v47;
    a8 = v83;
    v23 = v82;
    v50 = v81;
    if (v81)
    {
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        if (v48)
        {
LABEL_15:
          v52 = sub_183EA76E4(v48, 0);
          memcpy(v52 + 32, v38, 8 * v48);
        }

        else
        {
          v52 = MEMORY[0x1E69E7CC0];
        }

        a18 = v79;
        *v41 = v52;

        a7 = v94;
        v51 = v78;
        if (v94 < 0)
        {
          goto LABEL_63;
        }

        goto LABEL_18;
      }

      if (v48 > *(*v41 + 3) >> 1)
      {
        goto LABEL_15;
      }
    }

    if (a8 < v49)
    {
      goto LABEL_66;
    }

    sub_183F7DC7C(v49, a8, v38, v48);
    a7 = v94;
    a18 = v79;
    v51 = v78;
    if (v94 < 0)
    {
      goto LABEL_63;
    }

    if ((v50 & 1) == 0)
    {
      sub_183F7DC7C(v23, v79, v91, v94);
LABEL_28:
      sub_183F7DCA8(v23, a18, v90, a7);
      goto LABEL_34;
    }

LABEL_18:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if (a7 <= *(*v51 + 3) >> 1)
      {
        sub_183F7DC7C(v23, a18, v91, a7);
        goto LABEL_26;
      }
    }

    else if (!a7)
    {
      goto LABEL_24;
    }

    v53 = sub_183EA76E4(a7, 0);
    sub_183EA81DC(v53 + 32, a7, v91, a7);
    if (v54 != a7)
    {
      __break(1u);
LABEL_24:
      v53 = MEMORY[0x1E69E7CC0];
    }

    *v51 = v53;

LABEL_26:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if (a7 <= *(*a6 + 3) >> 1)
      {
        goto LABEL_28;
      }
    }

    else if (!a7)
    {
      goto LABEL_32;
    }

    v55 = sub_183F9BAB8(a7, 0);
    sub_183F9C174(v55 + 32, a7, v90, a7);
    if (v56 != a7)
    {
      __break(1u);
LABEL_32:
      v55 = MEMORY[0x1E69E7CC0];
    }

    *a6 = v55;

LABEL_34:
    v57 = v49 + v48;
    if (__OFADD__(v49, v48))
    {
      goto LABEL_64;
    }

    v58 = v57 - a8;
    if (__OFSUB__(v57, a8))
    {
      goto LABEL_65;
    }

    if (!v58)
    {
      break;
    }

    v59 = v77[0] + a7;
    if (__OFADD__(v77[0], a7))
    {
      goto LABEL_67;
    }

    v60 = *a6;
    v61 = *(*a6 + 2);
    if (v61 < v59)
    {
      goto LABEL_68;
    }

    if (v61 == v59)
    {
      break;
    }

    v24 = v61 - v59;
    if (v61 <= v59)
    {
      goto LABEL_71;
    }

    if (v59 < 0)
    {
      goto LABEL_72;
    }

    if (!v61)
    {
      goto LABEL_73;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a6 = v60;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v60 = sub_183F9C14C(v60);
    }

    *a6 = v60;
    v32 = a7 + v77[0] + 8;
    while ((v32 - 8) < *(v60 + 2))
    {
      v64 = *&v60[4 * v32];
      a7 = v64 + v58;
      if (__OFADD__(v64, v58))
      {
        goto LABEL_56;
      }

      if ((a7 & 0x8000000000000000) != 0)
      {
        goto LABEL_57;
      }

      if (HIDWORD(a7))
      {
        goto LABEL_58;
      }

      v65 = swift_isUniquelyReferenced_nonNull_native();
      *a6 = v60;
      if ((v65 & 1) == 0)
      {
        v60 = sub_183F9C14C(v60);
        *a6 = v60;
      }

      *&v60[4 * v32] = a7;
      v60 = *a6;
      ++v32;
      if (!--v24)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    sub_183F70628(v32, v95);
    sub_183F70628(v32, v95);
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v66 = swift_slowAlloc();
      sub_183F70628(v32, v95);
      sub_183FA8920(v66, v23, v91, v88, v90, v89, a6, a7, a9, a10, a11, a12, a8, v85, v84 & 1, v81 & 1, v83, v82, a18, v77[0], v32, v86, v87);
      MEMORY[0x1865EFCB0](v66, -1, -1);
      goto LABEL_41;
    }
  }

LABEL_40:
  v32 = v89;
  sub_183F81130(v89);
LABEL_41:
  sub_183F81130(v32);
  sub_183F81130(v32);
  return sub_183F81130(v32);
}

uint64_t sub_183FA7F34@<X0>(char *isStackAllocationSafe@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, char **a6@<X5>, int64_t a7@<X6>, void *a8@<X7>, unint64_t a9@<X8>, void (*a10)(_OWORD *, uint64_t, uint64_t *, __n128), uint64_t a11, uint64_t a12, char a13, unsigned __int8 a14, uint64_t a15, uint64_t a16, char **a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v93 = isStackAllocationSafe;
  v94 = a4;
  v101[2] = *MEMORY[0x1E69E9840];
  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
  }

  v21 = a3;
  if (a3 >> 60)
  {
    goto LABEL_68;
  }

  v22 = v20;
  v91 = a5;
  v82 = a18;
  v87 = a17;
  v86 = a16;
  v92 = a14;
  v26 = a13;
  v27 = a12;
  v89 = a11;
  v90 = a10;
  v88 = a15;
  if ((8 * a3) >= 1025)
  {
    goto LABEL_57;
  }

  do
  {
    v28 = MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v32 = &v81 - v31;
    v99 = 0;
    v100 = 0;
    if (v29 < a7)
    {
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v83 = v30;
    v84 = v22;
    v85 = &v81;
    v34 = a6 + 6;
    v33 = a6[6];
    v22 = a6 + 4;
    v35 = a6[4];
    v36 = *a6;
    v37 = *(a6 + 1);
    v38 = a6[5];
    a6 += 5;
    v101[0] = &v33[8 * a7 + 32];
    v101[1] = v29 - a7;
    v95[0] = v36;
    v95[1] = v37;
    v96 = v35;
    v97 = v38;
    v98 = v33;
    MEMORY[0x1EEE9AC00](v28);
    *(&v81 - 12) = v32;
    *(&v81 - 11) = v21;
    v71 = &v99;
    v72 = v39;
    LOBYTE(v73) = v40 & 1;
    v74 = v101;
    v75 = v94;
    v76 = v91;
    v77 = &v100;
    v78 = v93;
    v79 = v41;
    v21 = v42;
    v80 = v42;
    swift_retain_n();

    v90(v95, a20, &v81 - 14);

    v43 = v99;
    if ((v99 & 0x8000000000000000) != 0)
    {
      goto LABEL_60;
    }

    v44 = v88;
    if (v92)
    {
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        if (v43)
        {
LABEL_14:
          v47 = sub_183EA76E4(v43, 0);
          memcpy(v47 + 4, v32, 8 * v43);
        }

        else
        {
          v47 = MEMORY[0x1E69E7CC0];
        }

        v45 = v87;
        v46 = v86;
        *v34 = v47;

        a2 = v100;
        if (v100 < 0)
        {
          goto LABEL_61;
        }

        goto LABEL_17;
      }

      if (v43 > *(*v34 + 24) >> 1)
      {
        goto LABEL_14;
      }
    }

    if (v44 < v21)
    {
      goto LABEL_64;
    }

    sub_183F7DC7C(v21, v44, v32, v43);
    a2 = v100;
    v45 = v87;
    v46 = v86;
    if (v100 < 0)
    {
      goto LABEL_61;
    }

    if ((v92 & 1) == 0)
    {
      sub_183F7DC7C(v86, v87, v94, v100);
LABEL_27:
      result = sub_183F7DCA8(v46, v45, v93, a2);
      goto LABEL_33;
    }

LABEL_17:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if (a2 <= *(*v22 + 24) >> 1)
      {
        sub_183F7DC7C(v46, v45, v94, a2);
        goto LABEL_25;
      }
    }

    else if (!a2)
    {
      goto LABEL_23;
    }

    v48 = sub_183EA76E4(a2, 0);
    sub_183EA81DC(v48 + 4, a2, v94, a2);
    if (v49 != a2)
    {
      __break(1u);
LABEL_23:
      v48 = MEMORY[0x1E69E7CC0];
    }

    *v22 = v48;

LABEL_25:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if (a2 <= *(*a6 + 3) >> 1)
      {
        goto LABEL_27;
      }
    }

    else if (!a2)
    {
      goto LABEL_31;
    }

    v51 = sub_183F9BAB8(a2, 0);
    sub_183F9C174(v51 + 32, a2, v93, a2);
    if (v52 != a2)
    {
      __break(1u);
LABEL_31:
      v51 = MEMORY[0x1E69E7CC0];
    }

    *a6 = v51;

LABEL_33:
    v53 = v21 + v43;
    if (__OFADD__(v21, v43))
    {
      goto LABEL_62;
    }

    a7 = v53 - v44;
    if (__OFSUB__(v53, v44))
    {
      goto LABEL_63;
    }

    if (!a7)
    {
      return result;
    }

    v54 = v82 + a2;
    if (__OFADD__(v82, a2))
    {
      goto LABEL_65;
    }

    v55 = *a6;
    v56 = *(*a6 + 2);
    if (v56 < v54)
    {
      goto LABEL_66;
    }

    if (v56 == v54)
    {
      return result;
    }

    v57 = v56 - v54;
    if (v56 <= v54)
    {
      goto LABEL_69;
    }

    if (v54 < 0)
    {
      goto LABEL_70;
    }

    if (!v56)
    {
      goto LABEL_71;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a6 = v55;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v55 = sub_183F9C14C(v55);
    }

    *a6 = v55;
    for (i = a2 + v82 + 8; ; ++i)
    {
      a9 = i - 8;
      if (i - 8 >= *(v55 + 2))
      {
        break;
      }

      a9 = *&v55[4 * i];
      v60 = a9 + a7;
      if (__OFADD__(a9, a7))
      {
        goto LABEL_54;
      }

      if ((v60 & 0x8000000000000000) != 0)
      {
        goto LABEL_55;
      }

      a9 = HIDWORD(v60);
      if (HIDWORD(v60))
      {
        goto LABEL_56;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      *a6 = v55;
      if ((result & 1) == 0)
      {
        result = sub_183F9C14C(v55);
        v55 = result;
        *a6 = result;
      }

      *&v55[4 * i] = v60;
      v55 = *a6;
      if (!--v57)
      {
        return result;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v85 = a9;
    v61 = a8;
    v62 = v27;
    v63 = v26;
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    v64 = v63;
    v65 = v88;
  }

  while ((isStackAllocationSafe & 1) != 0);
  v84 = v61;
  v66 = v62;
  v67 = v64;
  v68 = swift_slowAlloc();
  v69 = v65;
  v70 = v68;
  sub_183FA907C(v68, v21, v94, v91, v93, a2, a6, a7, v84, v90, v89, v66, v67 & 1, v92 & 1, v69, v86, v87, v82, a19);
  return MEMORY[0x1865EFCB0](v70, -1, -1);
}

uint64_t sub_183FA8920(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, double d0_0, double d1_0, double d2_0, double d3_0, uint64_t a9, uint64_t a10, char a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v77 = result;
  v85 = 0;
  v84 = 0;
  if (a9 < a8)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v75 = &v70;
  v74 = a19;
  v28 = a7 + 3;
  v27 = *(a7 + 6);
  v29 = a7 + 2;
  v30 = *(a7 + 4);
  v31 = *a7;
  v32 = a7[1];
  v33 = a7 + 40;
  v34 = *(a7 + 5);
  v83[0] = v27 + 8 * a8 + 32;
  v83[1] = a9 - a8;
  v79[0] = v31;
  v79[1] = v32;
  v80 = v30;
  v81 = v34;
  v82 = v27;
  MEMORY[0x1EEE9AC00](result);
  v61[2] = v77;
  v61[3] = v35;
  v61[4] = &v84;
  v61[5] = v36;
  v62 = v37 & 1;
  v63 = v83;
  v64 = v38;
  v72 = v38;
  v65 = v39;
  v66 = &v85;
  v71 = v40;
  v67 = v40;
  v68 = v41;
  v76 = v42;
  v69 = v42;

  sub_183F70628(a17, v78);

  v73 = a17;
  sub_183F99594(v79, sub_183FAB470, d0_0, d1_0, d2_0, d3_0, v61, a17, a18, v74);

  v43 = v84;
  if ((v84 & 0x8000000000000000) != 0)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (a12)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if (v43 <= *(*v28 + 24) >> 1)
      {
        goto LABEL_6;
      }
    }

    else if (!v43)
    {
      goto LABEL_13;
    }

    v45 = sub_183EA76E4(v43, 0);
    sub_183EA81DC(v45 + 4, v43, v77, v43);
    if (v46 == v43)
    {
      goto LABEL_14;
    }

    __break(1u);
LABEL_13:
    v45 = MEMORY[0x1E69E7CC0];
LABEL_14:
    *v28 = v45;

    v44 = v85;
    if ((v85 & 0x8000000000000000) != 0)
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    goto LABEL_15;
  }

LABEL_6:
  result = v76;
  if (a13 < v76)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  result = sub_183F7DC7C(v76, a13, v77, v43);
  v44 = v85;
  if ((v85 & 0x8000000000000000) != 0)
  {
    goto LABEL_57;
  }

  if ((a12 & 1) == 0)
  {
    sub_183F7DC7C(a14, a15, v72, v85);
LABEL_25:
    result = sub_183F7DCA8(a14, a15, v71, v44);
    goto LABEL_31;
  }

LABEL_15:
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if (v44 <= *(*v29 + 24) >> 1)
    {
      sub_183F7DC7C(a14, a15, v72, v44);
      goto LABEL_23;
    }
  }

  else if (!v44)
  {
LABEL_21:
    v47 = MEMORY[0x1E69E7CC0];
    goto LABEL_22;
  }

  v47 = sub_183EA76E4(v44, 0);
  sub_183EA81DC(v47 + 4, v44, v72, v44);
  if (v48 != v44)
  {
    __break(1u);
    goto LABEL_21;
  }

LABEL_22:
  *v29 = v47;

LABEL_23:
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if (v44 <= *(*v33 + 24) >> 1)
    {
      goto LABEL_25;
    }
  }

  else if (!v44)
  {
LABEL_29:
    v49 = MEMORY[0x1E69E7CC0];
    goto LABEL_30;
  }

  v49 = sub_183F9BAB8(v44, 0);
  sub_183F9C174(v49 + 4, v44, v71, v44);
  if (v50 != v44)
  {
    __break(1u);
    goto LABEL_29;
  }

LABEL_30:
  *v33 = v49;

LABEL_31:
  v51 = v76 + v43;
  if (__OFADD__(v76, v43))
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v52 = v51 - a13;
  if (__OFSUB__(v51, a13))
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (!v52)
  {
LABEL_37:
    v56 = v73;
    sub_183F81130(v73);
    return sub_183F81130(v56);
  }

  v53 = a16 + v44;
  if (__OFADD__(a16, v44))
  {
    goto LABEL_61;
  }

  v54 = *v33;
  v55 = *(*v33 + 16);
  if (v55 < v53)
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v55 == v53)
  {
    goto LABEL_37;
  }

  v57 = v55 - v53;
  if (v55 <= v53)
  {
    goto LABEL_63;
  }

  if (v53 < 0)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (v55)
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    *v33 = v54;
    if ((result & 1) == 0)
    {
      result = sub_183F9C14C(v54);
      v54 = result;
    }

    *v33 = v54;
    v58 = v44 + a16 + 8;
    while ((v58 - 8) < *(v54 + 16))
    {
      v59 = *(v54 + 4 * v58);
      v60 = v59 + v52;
      if (__OFADD__(v59, v52))
      {
        goto LABEL_52;
      }

      if ((v60 & 0x8000000000000000) != 0)
      {
        goto LABEL_53;
      }

      if (HIDWORD(v60))
      {
        goto LABEL_54;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      *v33 = v54;
      if ((result & 1) == 0)
      {
        result = sub_183F9C14C(v54);
        v54 = result;
        *v33 = result;
      }

      *(v54 + 4 * v58) = v60;
      v54 = *v33;
      ++v58;
      if (!--v57)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

LABEL_65:
  __break(1u);
  return result;
}

uint64_t sub_183FA907C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, uint64_t a9, void (*a10)(_OWORD *, uint64_t, void *, __n128), uint64_t a11, uint64_t a12, char a13, char a14, uint64_t a15, uint64_t a16, char **a17, uint64_t a18, uint64_t a19)
{
  v76 = 0;
  v75 = 0;
  if (a9 < a8)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v67 = v19;
  v68 = &v64;
  v20 = a7 + 3;
  v21 = *(a7 + 6);
  v22 = a7 + 2;
  v23 = *(a7 + 4);
  v24 = *a7;
  v25 = a7[1];
  v26 = a7 + 40;
  v27 = *(a7 + 5);
  v74[0] = v21 + 8 * a8 + 32;
  v74[1] = a9 - a8;
  v70[0] = v24;
  v70[1] = v25;
  v71 = v23;
  v72 = v27;
  v73 = v21;
  v28 = MEMORY[0x1EEE9AC00](result);
  v65 = v29;
  v66 = v28;
  v55[2] = v28;
  v55[3] = v30;
  v55[4] = &v75;
  v55[5] = v31;
  v56 = v32 & 1;
  v57 = v74;
  v58 = v29;
  v59 = v33;
  v60 = &v76;
  v64 = v34;
  v61 = v34;
  v62 = v35;
  v69 = v36;
  v63 = v36;
  swift_retain_n();

  (a10)(v70, a19, v55);

  v37 = v75;
  if ((v75 & 0x8000000000000000) != 0)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v68 = a17;
  if (a14)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if (v37 <= *(*v20 + 24) >> 1)
      {
        goto LABEL_6;
      }
    }

    else if (!v37)
    {
      goto LABEL_13;
    }

    v40 = sub_183EA76E4(v37, 0);
    sub_183EA81DC(v40 + 4, v37, v66, v37);
    if (v41 == v37)
    {
      goto LABEL_14;
    }

    __break(1u);
LABEL_13:
    v40 = MEMORY[0x1E69E7CC0];
LABEL_14:
    *v20 = v40;

    v38 = v76;
    if ((v76 & 0x8000000000000000) != 0)
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    goto LABEL_15;
  }

LABEL_6:
  result = v69;
  if (a15 < v69)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  result = sub_183F7DC7C(v69, a15, v66, v37);
  v38 = v76;
  if ((v76 & 0x8000000000000000) != 0)
  {
    goto LABEL_57;
  }

  if ((a14 & 1) == 0)
  {
    v39 = v68;
    sub_183F7DC7C(a16, v68, v65, v76);
LABEL_25:
    result = sub_183F7DCA8(a16, v39, v64, v38);
    goto LABEL_31;
  }

LABEL_15:
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if (v38 <= *(*v22 + 24) >> 1)
    {
      v39 = v68;
      sub_183F7DC7C(a16, v68, v65, v38);
      goto LABEL_23;
    }
  }

  else if (!v38)
  {
LABEL_21:
    v42 = MEMORY[0x1E69E7CC0];
    v39 = v68;
    goto LABEL_22;
  }

  v42 = sub_183EA76E4(v38, 0);
  sub_183EA81DC(v42 + 4, v38, v65, v38);
  v39 = v68;
  if (v43 != v38)
  {
    __break(1u);
    goto LABEL_21;
  }

LABEL_22:
  *v22 = v42;

LABEL_23:
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if (v38 <= *(*v26 + 24) >> 1)
    {
      goto LABEL_25;
    }
  }

  else if (!v38)
  {
LABEL_29:
    v44 = MEMORY[0x1E69E7CC0];
    goto LABEL_30;
  }

  v44 = sub_183F9BAB8(v38, 0);
  sub_183F9C174(v44 + 4, v38, v64, v38);
  if (v45 != v38)
  {
    __break(1u);
    goto LABEL_29;
  }

LABEL_30:
  *v26 = v44;

LABEL_31:
  v46 = v69 + v37;
  if (__OFADD__(v69, v37))
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v47 = v46 - a15;
  if (__OFSUB__(v46, a15))
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (!v47)
  {
    return result;
  }

  v48 = a18 + v38;
  if (__OFADD__(a18, v38))
  {
    goto LABEL_61;
  }

  v49 = *v26;
  v50 = *(*v26 + 16);
  if (v50 < v48)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (v50 != v48)
  {
    v51 = v50 - v48;
    if (v50 <= v48)
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    if (v48 < 0)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (!v50)
    {
LABEL_65:
      __break(1u);
      return result;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    *v26 = v49;
    if ((result & 1) == 0)
    {
      result = sub_183F9C14C(v49);
      v49 = result;
    }

    *v26 = v49;
    for (i = v38 + a18 + 8; (i - 8) < *(v49 + 16); ++i)
    {
      v53 = *(v49 + 4 * i);
      v54 = v53 + v47;
      if (__OFADD__(v53, v47))
      {
        goto LABEL_52;
      }

      if ((v54 & 0x8000000000000000) != 0)
      {
        goto LABEL_53;
      }

      if (HIDWORD(v54))
      {
        goto LABEL_54;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      *v26 = v49;
      if ((result & 1) == 0)
      {
        result = sub_183F9C14C(v49);
        v49 = result;
        *v26 = result;
      }

      *(v49 + 4 * i) = v54;
      v49 = *v26;
      if (!--v51)
      {
        return result;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  return result;
}

int64_t sub_183FA94C4(CGPDFArray *a1)
{
  Count = CGPDFArrayGetCount(a1);
  result = CGPDFArrayGetCount(a1);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    result = CGPDFArrayGetCount(a1);
    if ((Count & 0x8000000000000000) == 0 && result >= Count)
    {
      if (Count)
      {
        v4 = sub_183F9BB3C(Count, 0);
        if (sub_183FA9AF4(&v5, (v4 + 4), Count, a1) == Count)
        {
          return v4;
        }

        __break(1u);
      }

      return MEMORY[0x1E69E7CC0];
    }
  }

  __break(1u);
  return result;
}

void *sub_183FA9564(void *a1)
{
  v2 = (~*a1 & 0x7FF0000000000000) != 0 || (*a1 & 0xFFFFFFFFFFFFFLL) == 0;
  if (v2 && !*(a1[4] + 16))
  {
    v5 = 1;
  }

  else
  {
    v3 = *(a1[6] + 16);
    if (v3 <= 1)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v5 = v3 >> 1;
  }

  v6 = sub_183F9BBE0(v5, 0);
  v7 = sub_183FA9BD0(v9, (v6 + 4), v5);
  sub_183F70628(a1, &v8);
  result = sub_183F814B4(v9, &qword_1EA8546A0, &qword_184399B30);
  if (v7 == v5)
  {
    return v6;
  }

  __break(1u);
  return result;
}

void *sub_183FA9640(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[2];
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v7 = sub_183F9BD08(a1[2], 0);
  sub_183FA9F90(&v11, v7 + 4, v3, a1, a2, a3);
  v9 = v8;

  if (v9 != v3)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v7;
}

uint64_t sub_183FA970C(uint64_t result, double *a2, uint64_t a3)
{
  v5 = *v3;
  v4 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  v8 = *(v3 + 32);
  v9 = *(v3 + 5);
  v10 = *(v3 + 48);
  LOBYTE(v11) = *(v3 + 49);
  v12 = *(v3 + 50);
  if (!a2)
  {
    goto LABEL_42;
  }

  if (!a3)
  {
    v13 = 0;
    v14 = 0;
LABEL_46:
    *result = v5;
    *(result + 8) = v4;
    *(result + 16) = v7;
    *(result + 24) = v6;
    goto LABEL_47;
  }

  if (a3 < 0)
  {
    __break(1u);
    return result;
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 1;
  v19 = *(v3 + 49);
  while (1)
  {
    if (v17 != v4)
    {
      v9 = *(*&v5 + 8 * v17);
      if (v16 == v6)
      {
        v13 = v17 + 1;
        v20 = 1;
        v16 = v6;
      }

      else
      {
        v21 = *(v7 + 8 * v16);
        if (v9 >= v21)
        {
          if (v21 < v9)
          {
            v14 = v16 + 1;
            v20 = 2;
            v9 = *(v7 + 8 * v16++);
            goto LABEL_16;
          }

          v13 = v17 + 1;
          v14 = v16 + 1;
          v20 = 3;
          ++v16;
        }

        else
        {
          v13 = v17 + 1;
          v20 = 1;
        }
      }

      v17 = v13;
      goto LABEL_16;
    }

    if (v16 == v6)
    {
      goto LABEL_44;
    }

    v9 = *(v7 + 8 * v16);
    v14 = v16 + 1;
    v20 = 2;
    ++v16;
    v17 = v4;
LABEL_16:
    v22 = v20 ^ v10;
    if (v10 > 7 || v22 >= 9)
    {
      break;
    }

    v23 = v8 >> v22;
    v11 = (v8 >> v22) & 1;
    if (((v19 ^ (v8 >> v22)) & 1) == 0)
    {
      goto LABEL_22;
    }

    v10 = v22;
    v19 = v8 >> v22;
LABEL_38:
    *a2 = v9;
    if (v18 == a3)
    {
      v12 = 1;
      goto LABEL_46;
    }

    ++a2;
    v12 = 1;
    v15 = v18;
    if (__OFADD__(v18++, 1))
    {
      __break(1u);
LABEL_42:
      a3 = 0;
      *result = v5;
      *(result + 8) = v4;
      *(result + 16) = v7;
      *(result + 24) = v6;
      *(result + 32) = 0;
      *(result + 40) = 0;
      goto LABEL_48;
    }
  }

  LOBYTE(v11) = 0;
  v23 = 0;
  if (v19)
  {
    v10 = v22;
    v19 = 0;
    goto LABEL_38;
  }

LABEL_22:
  v24 = v11;
  while (2)
  {
    v25 = v23;
    if (v17 != v4)
    {
      v9 = *(*&v5 + 8 * v17);
      if (v16 == v6)
      {
        v13 = v17 + 1;
        v26 = 1;
        v16 = v6;
      }

      else
      {
        v27 = *(v7 + 8 * v16);
        if (v9 >= v27)
        {
          if (v27 < v9)
          {
            v14 = v16 + 1;
            v26 = 2;
            v9 = *(v7 + 8 * v16++);
            goto LABEL_35;
          }

          v13 = v17 + 1;
          v14 = v16 + 1;
          v26 = 3;
          ++v16;
        }

        else
        {
          v13 = v17 + 1;
          v26 = 1;
        }
      }

      v17 = v13;
      goto LABEL_35;
    }

    if (v16 != v6)
    {
      v9 = *(v7 + 8 * v16);
      v14 = v16 + 1;
      v26 = 2;
      ++v16;
      v17 = v4;
LABEL_35:
      v10 = v26 ^ v22;
      if (v22 > 7 || v10 >= 9)
      {
        v24 = 0;
        v23 = 0;
        LOBYTE(v11) = 0;
        v19 = 0;
        v22 = v10;
        if (v25)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v23 = v8 >> v10;
        v24 = (v8 >> v10) & 1;
        v22 = v10;
        LOBYTE(v11) = v24;
        v19 = v8 >> v10;
        if ((v25 ^ (v8 >> v10)))
        {
          goto LABEL_38;
        }
      }

      continue;
    }

    break;
  }

  v12 = 0;
  LOBYTE(v10) = v22;
  LOBYTE(v11) = v24;
LABEL_44:
  *result = v5;
  *(result + 8) = v4;
  *(result + 16) = v7;
  *(result + 24) = v6;
  a3 = v15;
LABEL_47:
  *(result + 32) = v13;
  *(result + 40) = v14;
LABEL_48:
  *(result + 48) = v8;
  *(result + 56) = v9;
  *(result + 64) = v10;
  *(result + 65) = v11;
  *(result + 66) = v12;
  return a3;
}

uint64_t sub_183FA99A4(uint64_t result, void *a2, uint64_t a3)
{
  v4 = v3[6];
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
LABEL_6:
    v7 = *(v3 + 1);
    *result = *v3;
    *(result + 16) = v7;
    v8 = *(v3 + 3);
    *(result + 32) = *(v3 + 2);
    *(result + 48) = v8;
    *(result + 64) = v4;
    return a3;
  }

  if (a3 < 0)
  {
    goto LABEL_48;
  }

  v5 = v3[7];
  v6 = v5 - v4;
  if (v5 == v4)
  {
LABEL_5:
    a3 = 0;
    goto LABEL_6;
  }

  v10 = v3[4];
  v9 = v3[5];
  v12 = v3[2];
  v11 = v3[3];
  v13 = *v3;
  v14 = v10 - v4;
  v15 = __OFSUB__(v10, v4);
  v16 = v14 & 1;
  if (v14 < 0)
  {
    v16 = -v16;
  }

  v17 = 1;
  v18 = 1 - v16;
  v19 = v10 + v18;
  v20 = __OFADD__(v10, v18);
  v21 = v9 - v4;
  v22 = __OFSUB__(v9, v4);
  if (v21 >= 0)
  {
    v23 = v21 & 1;
  }

  else
  {
    v23 = -(v21 & 1);
  }

  v24 = 1 - v23;
  v25 = __OFADD__(v19, v24);
  while (1)
  {
    v26 = v4;
    if (v4 < v10)
    {
      goto LABEL_25;
    }

    if (v15)
    {
      goto LABEL_44;
    }

    if (v20)
    {
      goto LABEL_45;
    }

    v27 = v12;
    if (v4 >= v19)
    {
      if (v22)
      {
        goto LABEL_46;
      }

      if (v25)
      {
        goto LABEL_47;
      }

      v27 = v11;
      if (v4 >= v19 + v24)
      {
        v28 = v9 + v4;
        if (__OFADD__(v9, v4))
        {
          goto LABEL_49;
        }

        v29 = __OFSUB__(v28, v18);
        v30 = v28 - v18;
        if (v29)
        {
          goto LABEL_50;
        }

        v29 = __OFSUB__(v30, v24);
        v31 = v30 - v24;
        if (v29)
        {
          goto LABEL_51;
        }

        v29 = __OFSUB__(v31, v10);
        v26 = v31 - v10;
        if (v29)
        {
          __break(1u);
LABEL_42:
          v4 = v5;
          a3 = v6;
          goto LABEL_6;
        }

LABEL_25:
        v27 = *(v13 + 8 * v26);
      }
    }

    ++v4;
    *a2 = v27;
    if (a3 == v17)
    {
      goto LABEL_6;
    }

    if (__OFADD__(v17, 1))
    {
      break;
    }

    ++a2;
    ++v17;
    if (v5 == v4)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

void *sub_183FA9AF4(void *result, uint64_t a2, uint64_t a3, CGPDFArrayRef array)
{
  v5 = result;
  if (!a2)
  {
LABEL_11:
    v6 = 0;
    goto LABEL_13;
  }

  v6 = a3;
  if (!a3)
  {
LABEL_13:
    *v5 = array;
    v5[1] = v6;
    return v6;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = a2;
    v8 = 1;
    while (1)
    {
      if (v8 - 1 == CGPDFArrayGetCount(array))
      {
        v6 = v8 - 1;
        goto LABEL_13;
      }

      CGPDFArrayRef.subscript.getter(&v12, v8 - 1, array);
      result = CGPDFArrayGetCount(array);
      if (v8 - 1 >= result)
      {
        break;
      }

      v9 = v13;
      v15 = v12;
      v16 = v13;
      v10 = v14;
      v17 = v14;
      *v7 = v12;
      *(v7 + 16) = v9;
      *(v7 + 32) = v10;
      if (v6 == v8)
      {
        goto LABEL_13;
      }

      v7 += 40;
      if (__OFADD__(v8++, 1))
      {
        __break(1u);
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_183FA9BD0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v6 = 0;
    v24 = *(v3 + 1);
    *result = *v3;
    *(result + 16) = v24;
    *(result + 32) = *(v3 + 2);
    v25 = v3[6];
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 48) = v25;
    return v6;
  }

  if (!a3)
  {
    v4 = 0;
    v5 = 0;
LABEL_32:
    v26 = *(v3 + 1);
    *result = *v3;
    *(result + 16) = v26;
    *(result + 32) = *(v3 + 2);
    *(result + 48) = v3[6];
    *(result + 56) = v5;
    *(result + 64) = v4;
    return a3;
  }

  if (a3 < 0)
  {
    goto LABEL_44;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 1);
  v11 = v3[5];
  v10 = v3[6];
  v12 = (~*v3 & 0x7FF0000000000000) != 0;
  if ((*v3 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v12 = 1;
  }

  v13 = v3[4];
  v14 = v10 + 32;
  while (1)
  {
    if (v12 && !*(v13 + 16))
    {
      if (v4 == 2)
      {
LABEL_33:
        v27 = *(v3 + 1);
        *result = *v3;
        *(result + 16) = v27;
        *(result + 32) = *(v3 + 2);
        *(result + 48) = v3[6];
        *(result + 56) = v5;
        *(result + 64) = v4;
        return v6;
      }

      if (v4 | v5)
      {
        goto LABEL_43;
      }

      v18 = 1;
      v19 = v7;
      v20 = v8;
      v21 = v9;
      if (v6 == 0x3FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v16 = *(v10 + 16);
      if (v4 == v16)
      {
        goto LABEL_33;
      }

      if (v4 >= v16)
      {
        goto LABEL_37;
      }

      if ((v4 | 1uLL) >= v16)
      {
        goto LABEL_38;
      }

      if ((v5 & 0x8000000000000000) != 0)
      {
        goto LABEL_39;
      }

      v17 = *(v13 + 16);
      if (v5 >= v17)
      {
        goto LABEL_40;
      }

      if (v5 + 1 >= v17)
      {
        goto LABEL_41;
      }

      v18 = 0;
      v19 = *(v14 + 8 * v4);
      v20 = *(v14 + 8 * (v4 | 1));
      v21 = *(v13 + 32 + 8 * v5);
      if (v6 == 0x3FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_36;
      }
    }

    v4 += 2;
    if ((v12 & v18) != 1)
    {
      break;
    }

    v15 = __OFADD__(v5, 2);
    v5 += 2;
    if (v15)
    {
      goto LABEL_42;
    }

LABEL_8:
    ++v6;
    *a2 = v19;
    *(a2 + 8) = v20;
    *(a2 + 16) = v21;
    a2 += 32;
    if (v6 == a3)
    {
      goto LABEL_32;
    }
  }

  v22 = *(v11 + 16);
  if (v5 >= v22)
  {
    goto LABEL_8;
  }

  v23 = v5;
  while ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 < *(v11 + 32 + 4 * v23))
    {
      v5 = v23;
      goto LABEL_8;
    }

    if (v22 == ++v23)
    {
      v5 = *(v11 + 16);
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_183FA9DC8(uint64_t result, void *a2, uint64_t a3, void *a4, unsigned __int8 a5)
{
  if (!a2)
  {
    a3 = 0;
    goto LABEL_27;
  }

  if (!a3)
  {
LABEL_27:
    *result = a4;
    *(result + 8) = a5 & 1;
    *(result + 16) = a3;
    return a3;
  }

  if (a3 < 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v5 = a4[3];
  v6 = v5 - 1;
  if (!__OFSUB__(v5, 1))
  {
    if (v5 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = a4[3];
    }

    if (v5 != 1)
    {
      v8 = 0;
      v9 = a4 + 5;
      v10 = v7 - 1;
      v11 = v5 & ~(v5 >> 63);
      while (v11 != v8)
      {
        v12 = a4[4];
        v13 = a4[2];
        if (v8 + v12 >= v13)
        {
          v14 = a4[2];
        }

        else
        {
          v14 = 0;
        }

        if (v10 == v8)
        {
          goto LABEL_29;
        }

        if ((v6 & ~(v6 >> 63)) == v8)
        {
          goto LABEL_30;
        }

        v15 = v9[v8 + v12 - v14];
        if (v8 + v12 + 1 < v13)
        {
          v13 = 0;
        }

        if ((v8 ^ a5))
        {
          v16 = v9[v8 + 1 + v12 - v13];
        }

        else
        {
          v16 = v9[v8 + v12 - v14];
        }

        if (((v8 ^ a5) & 1) == 0)
        {
          v15 = v9[v8 + 1 + v12 - v13];
        }

        *a2 = v15;
        a2[1] = v16;
        if (a3 - 1 == v8)
        {
          goto LABEL_27;
        }

        a2 += 2;
        if (v6 == ++v8)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

LABEL_25:
    a3 = v6;
    goto LABEL_27;
  }

LABEL_32:
  __break(1u);
  return result;
}

void *sub_183FA9EC0(void *result, void *a2, uint64_t a3, unsigned int *a4, uint64_t a5)
{
  if (!a2)
  {
    goto LABEL_8;
  }

  if (!a3)
  {
    v6 = 0;
    goto LABEL_19;
  }

  if (a3 < 0)
  {
    goto LABEL_22;
  }

  if (!a5)
  {
LABEL_8:
    v6 = 0;
    a3 = 0;
    goto LABEL_19;
  }

  if (a5 >= 1)
  {
    v5 = *a4;
    *a2 = 0;
    a2[1] = v5;
    if (a3 == 1)
    {
      v6 = 1;
LABEL_19:
      *result = a4;
      result[1] = a5;
      result[2] = v6;
      return a3;
    }

    if (a5 == 1)
    {
      v6 = 1;
      a3 = 1;
      goto LABEL_19;
    }

    v7 = 0;
    v8 = a4;
    while (v7 + 1 < a5)
    {
      *&v9 = *v8;
      *(&v9 + 1) = HIDWORD(*v8);
      *&a2[2 * v7 + 2] = v9;
      if (a3 - 2 == v7)
      {
        v6 = a3;
        goto LABEL_19;
      }

      if (__OFADD__(v7 + 2, 1))
      {
        goto LABEL_21;
      }

      ++v7;
      ++v8;
      if (a5 - 1 == v7)
      {
        v6 = a5;
        a3 = a5;
        goto LABEL_19;
      }
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

void sub_183FA9F90(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (!a2)
  {
    v10 = 0;
    goto LABEL_27;
  }

  v10 = a3;
  if (!a3)
  {
LABEL_27:
    *a1 = a4;
    a1[1] = a5;
    a1[2] = a6;
    a1[3] = v10;
    return;
  }

  if (a3 < 0)
  {
    goto LABEL_33;
  }

  if (!a4[2])
  {
    v10 = 0;
    goto LABEL_27;
  }

  v23 = a4[2];
  if (*(a5 + 16))
  {
    v11 = *(a5 + 32);
    if (v23 == 1)
    {
      v12 = 0x7FF8000000000000;
    }

    else
    {
      v12 = a4[5];
    }

    if (*(a6 + 16) >= v11)
    {
      *a2 = a4[4];
      a2[1] = v12;
      a2[2] = a6;
      a2[3] = a6 + 32;
      a2[4] = 0;
      a2[5] = (2 * v11) | 1;
      v24 = a3 - 1;
      if (a3 == 1)
      {
LABEL_25:
      }

      else
      {
        v13 = 0;
        v14 = a2 + 11;
        v15 = a4 + 6;
        v16 = (a5 + 36);
        while (1)
        {

          if (v23 - 1 == v13)
          {
            break;
          }

          v17 = *(a5 + 16);
          if (v13 + 1 > v17)
          {
            goto LABEL_30;
          }

          if (v13 + 1 >= v17)
          {
            goto LABEL_28;
          }

          v18 = a4[2];
          if (v13 + 1 >= v18)
          {
            goto LABEL_31;
          }

          v19 = *(v16 - 1);
          v20 = *v16;
          if (v13 + 2 == v18)
          {
            v21 = 0x7FF8000000000000;
          }

          else
          {
            if (v13 + 2 >= v18)
            {
              goto LABEL_32;
            }

            v21 = *v15;
          }

          v22 = *(a6 + 16);
          if (v22 < v19 || v22 < v20)
          {
            goto LABEL_29;
          }

          *(v14 - 5) = *(v15 - 1);
          *(v14 - 4) = v21;
          *(v14 - 3) = a6;
          *(v14 - 2) = a6 + 32;
          ++v13;
          *(v14 - 1) = v19;
          *v14 = (2 * v20) | 1;
          v14 += 6;
          ++v15;
          ++v16;
          if (v24 == v13)
          {
            goto LABEL_25;
          }
        }

        v10 = v23;
      }

      goto LABEL_27;
    }
  }

  else
  {
LABEL_28:
    __break(1u);
  }

LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
}

uint64_t sub_183FAA154(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = v3[1];
  v51 = *v3;
  v52 = v5;
  v6 = v3[3];
  v53 = v3[2];
  v7 = *(v3 + 12);
  v8 = *(v3 + 13);
  v54 = v6;
  v55 = v3[4];
  v9 = v51;
  v10 = v52;
  v11 = v53;
  v48 = v51;
  v49 = v52;
  v50 = v53;

  v12 = sub_183F807CC(v51, *(&v51 + 1));
  v14 = sub_183F7DDD8(v12, v13);
  v16 = v15;
  v28 = v18;
  v29 = v17;
  sub_183F814B4(&v51, &qword_1EA854280, &qword_184399E60);
  v56 = v16 & 1;
  v35 = v9;
  v36 = v10;
  *&v37 = v11;
  *(&v37 + 1) = v14;
  LOBYTE(v38) = v16 & 1;
  *(&v38 + 1) = v29;
  *&v39 = v28;
  *(&v39 + 1) = *(&v53 + 1);
  v40 = v54;
  v41 = v55;
  v42 = v4[5];
  *&v43 = v7;
  *(&v43 + 1) = v8;
  if (!a2)
  {
LABEL_10:
    result = 0;
    goto LABEL_12;
  }

  result = a3;
  if (!a3)
  {
LABEL_12:
    v21 = a1;
LABEL_13:
    v22 = v42;
    v21[6] = v41;
    v21[7] = v22;
    v21[8] = v43;
    v23 = v38;
    v21[2] = v37;
    v21[3] = v23;
    v24 = v40;
    v21[4] = v39;
    v21[5] = v24;
    v25 = v36;
    *v21 = v35;
    v21[1] = v25;
    return result;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v20 = 0;
    while (1)
    {
      sub_183F80564(&v44);
      if (v47)
      {
        result = v20;
        goto LABEL_12;
      }

      v32 = v44;
      v33 = v45;
      v34 = v46;
      v7(&v31, &v32);
      *(a2 + 8 * v20) = v31;
      if (a3 - 1 == v20)
      {
        break;
      }

      if (__OFADD__(++v20, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    v21 = a1;
    result = a3;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_183FAA358(uint64_t result, void *a2, uint64_t a3)
{
  v4 = *&v3;
  v5 = *&result;
  v6 = v3[1];
  v45 = *v3;
  v46 = v6;
  v8 = *(v3 + 4);
  v7 = *(v3 + 5);
  v33 = *(v3 + 6);
  v34 = *(v3 + 7);
  v47[0] = v45;
  v47[1] = v6;
  v9 = v6;
  v10 = v45;
  v11 = *(&v45 + 1) == 0;
  v29 = a3;
  v35 = v8;
  v36 = v7;
  if (!*(&v45 + 1))
  {
    v13 = 0;
    v12 = 0.0;
    goto LABEL_10;
  }

  v30 = a2;
  sub_183FAAD6C(v47, v37);

  v41 = *v10;
  (v9)(&v42, &v41);
  v41 = v42;
  v8(v37, &v41);
  v12 = v37[0];
  if (*(&v10 + 1) == 1)
  {
LABEL_6:
    sub_183F814B4(v47, &qword_1EA8546E8, &qword_184399E68);
    *&result = COERCE_DOUBLE();
    v13 = *(&v10 + 1);
    a3 = v29;
    a2 = v30;
    if ((*(&v10 + 1) & 0x8000000000000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v13 = 1;
  while (1)
  {
    v41 = *(v10 + 8 * v13);
    (v9)(&v42, &v41);
    v41 = v42;
    v35(v37, &v41);
    if (v37[0] != v12)
    {
      break;
    }

    if (*(&v10 + 1) == ++v13)
    {
      goto LABEL_6;
    }
  }

  sub_183F814B4(v47, &qword_1EA8546E8, &qword_184399E68);
  *&result = COERCE_DOUBLE();
  a3 = v29;
  a2 = v30;
  if (v13 < 0)
  {
    goto LABEL_40;
  }

LABEL_10:
  v15 = *(v3 + 8);
  v14 = *(v3 + 9);
  v44 = *(&v10 + 1) == 0;
  if (!a2)
  {
LABEL_32:
    a3 = 0;
    v21 = *(*&v4 + 16);
    v22 = v44;
    **&v5 = **&v4;
    *(*&v5 + 16) = v21;
    *(*&v5 + 32) = v35;
    *(*&v5 + 40) = v36;
    *(*&v5 + 48) = v12;
    *(*&v5 + 56) = v22;
    *(*&v5 + 64) = 0;
LABEL_36:
    *(*&v5 + 72) = v13;
    *(*&v5 + 80) = v33;
    *(*&v5 + 88) = v34;
    *(*&v5 + 96) = v15;
    *(*&v5 + 104) = v14;
    return a3;
  }

  if (!a3)
  {
    v4 = 0.0;
LABEL_35:
    v24 = v44;
    v25 = v46;
    **&v5 = v45;
    *(*&v5 + 16) = v25;
    *(*&v5 + 32) = v35;
    *(*&v5 + 40) = v36;
    *(*&v5 + 48) = v12;
    *(*&v5 + 56) = v24;
    *(*&v5 + 57) = *v43;
    *(*&v5 + 60) = *&v43[3];
    *(*&v5 + 64) = v4;
    goto LABEL_36;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v26 = v5;
    v4 = 0.0;
    v16 = 0;
    v17 = 1;
    v32 = v14;
LABEL_14:
    v27 = v17;
    v28 = v16;
    v18 = v13 == *(&v10 + 1);
    v31 = a2;
    if (*&v4 != *(&v10 + 1))
    {
      v5 = v4;
      v19 = v12;
      goto LABEL_17;
    }

LABEL_16:
    v5 = v4;
    v19 = v12;
    if (v13 != *(&v10 + 1))
    {
LABEL_17:
      while (!v11)
      {
        v4 = *&v13;
        v11 = v18;

        v12 = 0.0;
        if (!v11)
        {
          v40 = *(v10 + 8 * v13);
          (v9)(&v41, &v40);
          v40 = v41;
          *&result = COERCE_DOUBLE((v35)(v37, &v40));
          v12 = v37[0];
          v13 = *(&v10 + 1);
          if (*&v4 + 1 != *(&v10 + 1))
          {
            v13 = *&v4 + 1;
            while (1)
            {
              v40 = *(v10 + 8 * v13);
              (v9)(&v41, &v40);
              v40 = v41;
              *&result = COERCE_DOUBLE((v35)(v37, &v40));
              if (v37[0] != v12)
              {
                break;
              }

              if (*(&v10 + 1) == ++v13)
              {
                v13 = *(&v10 + 1);
                break;
              }
            }
          }

          if (v13 < *&v4)
          {
            __break(1u);
            goto LABEL_40;
          }
        }

        v37[0] = v19;
        v37[1] = v5;
        v37[2] = v4;
        v38 = v10;
        v39 = v9;
        v33(&v41, v37);
        sub_183F814B4(v47, &qword_1EA8546E8, &qword_184399E68);
        v20 = v41;
        v42 = v41;
        *&result = COERCE_DOUBLE(v15(&v42));
        if (result)
        {
          a3 = v29;
          *v31 = v20;
          if (v27 == v29)
          {
            v44 = v11;
            v5 = v26;
            v14 = v32;
            goto LABEL_35;
          }

          a2 = v31 + 1;
          v16 = v27;
          v17 = v27 + 1;
          if (!__OFADD__(v27, 1))
          {
            goto LABEL_14;
          }

          __break(1u);
          goto LABEL_32;
        }

        v18 = v13 == *(&v10 + 1);
        v5 = v4;
        v19 = v12;
        if (*&v4 == *(&v10 + 1))
        {
          goto LABEL_16;
        }
      }

      goto LABEL_42;
    }

    v44 = v11;
    v23 = v46;
    **&v26 = v45;
    *(*&v26 + 16) = v23;
    *(*&v26 + 32) = v35;
    *(*&v26 + 40) = v36;
    *(*&v26 + 48) = v12;
    *(*&v26 + 56) = v11;
    *(*&v26 + 57) = *v43;
    *(*&v26 + 60) = *&v43[3];
    *(*&v26 + 64) = *(&v10 + 1);
    *(*&v26 + 72) = *(&v10 + 1);
    *(*&v26 + 80) = v33;
    *(*&v26 + 88) = v34;
    a3 = v28;
    *(*&v26 + 96) = v15;
    *(*&v26 + 104) = v32;
    return a3;
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_183FAA7A0(uint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = 0;
  v15 = 0;
  v58 = *(result + 16);
  v59 = *result;
  v60 = *(result + 24);
  v68 = *(result + 32);
  v69 = *(result + 8);
  v61 = *(result + 40);
  v16 = *(result + 56);
  v17 = *(result + 60);
  v18 = *(result + 64);
  v19 = *(result + 68);
  v56 = *(result + 88);
  v57 = *(result + 72);
  v20 = *(result + 104);
  v21 = *(result + 112);
  v22 = *(result + 120);
  v23 = *(result + 128);
  v67 = *(result + 136);
  while (1)
  {
LABEL_2:
    if (v15 == v69)
    {
      if (v14 == v68)
      {
        return result;
      }

      v24 = v14 + v61;
      if (__OFADD__(v14, v61))
      {
        goto LABEL_111;
      }

      if ((v24 & 0x8000000000000000) != 0)
      {
        goto LABEL_112;
      }

      v25 = HIDWORD(v24);
      if (HIDWORD(v24))
      {
        goto LABEL_113;
      }

      v26 = *(v60 + 8 * v14++);
      v70[0] = 1;
      v15 = v69;
      goto LABEL_8;
    }

    v26 = *(v59 + 8 * v15);
    v25 = v15 + v58;
    v27 = __OFADD__(v15, v58);
    if (v14 == v68)
    {
      if (v27)
      {
        goto LABEL_114;
      }

      if ((v25 & 0x8000000000000000) != 0)
      {
        goto LABEL_116;
      }

      v24 = HIDWORD(v25);
      if (HIDWORD(v25))
      {
        goto LABEL_119;
      }

      ++v15;
      v70[0] = 0;
      v71 = 1;
      v14 = v68;
    }

    else
    {
      if (v27)
      {
        goto LABEL_115;
      }

      if ((v25 & 0x8000000000000000) != 0)
      {
        goto LABEL_117;
      }

      if (HIDWORD(v25))
      {
        goto LABEL_118;
      }

      v24 = v14 + v61;
      if (__OFADD__(v14, v61))
      {
        goto LABEL_120;
      }

      if ((v24 & 0x8000000000000000) != 0)
      {
        goto LABEL_121;
      }

      if (HIDWORD(v24))
      {
        goto LABEL_122;
      }

      v28 = *(v60 + 8 * v14);
      if (v26 >= v28)
      {
        if (v28 >= v26)
        {
          ++v15;
          ++v14;
          v70[0] = 0;
LABEL_8:
          v71 = 0;
          goto LABEL_27;
        }

        LODWORD(v25) = 0;
        ++v14;
        v70[0] = 1;
        v71 = 0;
        v26 = v28;
      }

      else
      {
        LODWORD(v24) = 0;
        ++v15;
        v70[0] = 0;
        v71 = 1;
      }
    }

LABEL_27:
    if ((v70[0] & 1) == 0)
    {
      v16 = v25;
    }

    v17 &= v70[0];
    if ((v71 & 1) == 0)
    {
      v18 = v24;
    }

    v19 &= v71;
    v29 = v67 ? v17 : v19;
    if (v29)
    {
      v30 = 0;
      v31 = 0;
      v32 = 0;
      if (v22 > v26 || v26 >= v23)
      {
        goto LABEL_75;
      }
    }

    else
    {
      if (v67)
      {
        v47 = v16;
      }

      else
      {
        v47 = v18;
      }

      if (v47)
      {
        v48 = *(v57 - 4 + 4 * v47);
      }

      else
      {
        v48 = 0;
      }

      v49 = *(v57 + 4 * v47);
      v31 = v56 + 8 * v48;
      if (!v56)
      {
        v31 = 0;
      }

      v30 = v49 - v48;
      if (v22 > v26 || v26 >= v23)
      {
LABEL_75:
        v35 = v30 + 1;
        v46 = v30;
        v32 = v30 + 1;
        goto LABEL_76;
      }

      if (v30 > 1)
      {
        v32 = 0;
        for (i = v30; i > 1; i -= i >> 1)
        {
          if (*(v31 + 8 * (v32 + (i >> 1))) < v20)
          {
            v32 += i >> 1;
          }
        }

        if (v32 >= v30)
        {
          goto LABEL_40;
        }

LABEL_96:
        if (*(v31 + 8 * v32) < v20)
        {
          ++v32;
        }

        goto LABEL_40;
      }

      v32 = 0;
      if (v30 == 1)
      {
        goto LABEL_96;
      }
    }

LABEL_40:
    v34 = v30 - v32;
    v35 = v32;
    if (v30 - v32 >= 2)
    {
      v35 = v32;
      do
      {
        v36 = v34 >> 1;
        v34 -= v34 >> 1;
        v37 = v35 + v36;
        if (*(v31 + 8 * v37) <= v21)
        {
          v35 = v37;
        }
      }

      while (v34 > 1);
    }

    if (v35 < v30 && *(v31 + 8 * v35) <= v21)
    {
      ++v35;
    }

    v38 = v30 + v32;
    if (__OFADD__(v30, v32))
    {
      goto LABEL_106;
    }

    v39 = __OFSUB__(v38, v35);
    v40 = v38 - v35;
    if (v39)
    {
      goto LABEL_107;
    }

    v41 = v32 & 1;
    if (v32 < 0)
    {
      v41 = -v41;
    }

    v42 = 1 - v41;
    v39 = __OFADD__(v40, v42);
    v43 = v40 + v42;
    if (v39)
    {
      goto LABEL_108;
    }

    v44 = v35 & 1;
    if (v35 < 0)
    {
      v44 = -v44;
    }

    v45 = 1 - v44;
    v39 = __OFADD__(v43, v45);
    v46 = v43 + v45;
    if (v39)
    {
      goto LABEL_110;
    }

LABEL_76:
    v72 = v31;
    v73 = v30;
    v74 = v20;
    v75 = v21;
    v76 = v32;
    v77 = v35;
    v78 = 0;
    v79 = v46;
    if (a5 < *a4)
    {
      break;
    }

    if (a2)
    {
      v51 = (a2 + 8 * *a4);
    }

    else
    {
      v51 = 0;
    }

    result = sub_183FA99A4(v70, v51, a5 - *a4);
    if (a6)
    {
      if (result < 0)
      {
        goto LABEL_109;
      }

      if (*(a7 + 8) != result)
      {
        goto LABEL_88;
      }

      if (result)
      {
        v52 = *a7;
        v53 = result;
        v54 = v51;
        while (*v52 == *v54)
        {
          ++v54;
          ++v52;
          if (!--v53)
          {
            goto LABEL_2;
          }
        }

LABEL_88:
        *a7 = v51;
        *(a7 + 8) = result;
        goto LABEL_89;
      }
    }

    else
    {
LABEL_89:
      if (__OFADD__(*a4, result))
      {
        goto LABEL_101;
      }

      *a4 += result;
      *(a8 + 8 * *a10) = v26;
      v55 = a13 + *a4;
      if (__OFADD__(a13, *a4))
      {
        goto LABEL_102;
      }

      if ((v55 & 0x8000000000000000) != 0)
      {
        goto LABEL_103;
      }

      if (HIDWORD(v55))
      {
        goto LABEL_104;
      }

      *(a11 + 4 * *a10) = v55;
      if (__OFADD__(*a10, 1))
      {
        goto LABEL_105;
      }

      ++*a10;
    }
  }

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
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
  return result;
}

unint64_t sub_183FAAC50@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v5 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_18;
  }

  if (result)
  {
    v6 = result - 1;
    if (__OFSUB__(result, 1))
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if ((v6 & 0x8000000000000000) != 0)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v7 = *(a3 + 16);
    if (v6 >= v7)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if ((result & 0x8000000000000000) != 0)
    {
      goto LABEL_19;
    }

    v8 = *(a3 + 4 * v6 + 32);
    if (v7 > result)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

  v8 = 0;
  if (!*(a3 + 16))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_8:
  v9 = *(a2 + 16);
  if (v9 <= result)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v10 = *(a3 + 4 * result + 32);
  if (v5 == v9)
  {
    v11 = 0x7FF8000000000000;
LABEL_13:
    v12 = *(a4 + 16);
    if (v12 >= v8 && v12 >= v10)
    {
      *a5 = *(a2 + 32 + 8 * result);
      a5[1] = v11;
      a5[2] = a4;
      a5[3] = a4 + 32;
      a5[4] = v8;
      a5[5] = (2 * v10) | 1;
      return result;
    }

    goto LABEL_21;
  }

  if (v5 < v9)
  {
    v11 = *(a2 + 32 + 8 * v5);
    goto LABEL_13;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_183FAAD6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8546E8, &qword_184399E68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_183FAAFA0()
{
  result = qword_1EA854700;
  if (!qword_1EA854700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854700);
  }

  return result;
}

unint64_t sub_183FAAFF4()
{
  result = qword_1EA854708;
  if (!qword_1EA854708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854708);
  }

  return result;
}

unint64_t sub_183FAB048()
{
  result = qword_1EA854710;
  if (!qword_1EA854710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854710);
  }

  return result;
}

unint64_t sub_183FAB0A0()
{
  result = qword_1EA854718;
  if (!qword_1EA854718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854718);
  }

  return result;
}

unint64_t sub_183FAB14C()
{
  result = qword_1EA854730;
  if (!qword_1EA854730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854730);
  }

  return result;
}

unint64_t sub_183FAB1E8()
{
  result = qword_1EA854748;
  if (!qword_1EA854748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854748);
  }

  return result;
}

unint64_t sub_183FAB240()
{
  result = qword_1EA854750;
  if (!qword_1EA854750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA854740, &qword_18439A148);
    sub_183FAB2C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854750);
  }

  return result;
}

unint64_t sub_183FAB2C4()
{
  result = qword_1EA854758;
  if (!qword_1EA854758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854758);
  }

  return result;
}

unint64_t sub_183FAB320()
{
  result = qword_1EA854760;
  if (!qword_1EA854760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA854740, &qword_18439A148);
    sub_183FAB3A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854760);
  }

  return result;
}

unint64_t sub_183FAB3A4()
{
  result = qword_1EA854768;
  if (!qword_1EA854768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854768);
  }

  return result;
}

double sub_183FAB4FC(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

uint64_t sub_183FAB590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v27 = a2;
  v5 = *(a1 + 24);
  v26 = *(v5 - 8);
  v7 = *(MEMORY[0x1EEE9AC00](a1) + 40);
  v24 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v22 - v10;
  v12 = *(a1 + 16);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 32);
  v17 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v22 - v18;
  (*(v13 + 16))(v15, v3, v12);
  sub_18438FD38();
  (*(v8 + 16))(v11, v3 + *(a1 + 52), AssociatedTypeWitness);
  v20 = v24;
  (*(v26 + 16))(v24, v3 + *(a1 + 56), v5);
  return sub_183FAB844(v19, v11, v20, v12, v5, v16, v25, v27);
}

uint64_t sub_183FAB844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a8, a1, AssociatedTypeWitness);
  v21[0] = a4;
  v21[1] = a5;
  v21[2] = a6;
  v21[3] = a7;
  v17 = type metadata accessor for AccumulateSequence.Iterator(0, v21);
  v18 = *(v17 + 52);
  v19 = swift_getAssociatedTypeWitness();
  (*(*(v19 - 8) + 32))(a8 + v18, a2, v19);
  return (*(*(a5 - 8) + 32))(a8 + *(v17 + 56), a3, a5);
}

uint64_t sub_183FAB99C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = *(a1 + 24);
  v34 = a2;
  v4 = *(v33 - 8);
  v31 = v2;
  v32 = v4;
  MEMORY[0x1EEE9AC00](a1);
  v30 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = sub_18438FF18();
  v7 = *(v29 - 8);
  v8 = MEMORY[0x1EEE9AC00](v29);
  v10 = &v29 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v29 - v12;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v14 = v31;
  sub_18438FF58();
  if ((*(v11 + 48))(v10, 1, AssociatedTypeWitness) == 1)
  {
    (*(v7 + 8))(v10, v29);
    v15 = 1;
    v17 = v33;
    v16 = v34;
    v18 = v32;
  }

  else
  {
    (*(v11 + 32))(v13, v10, AssociatedTypeWitness);
    v19 = *(a1 + 56);
    v20 = *(*(a1 + 40) + 32);
    v21 = v14;
    v22 = v14 + *(a1 + 52);
    v23 = v30;
    v24 = v33;
    v20(v13, v22, v33);
    (*(v11 + 8))(v13, AssociatedTypeWitness);
    v25 = v32;
    (*(v32 + 40))(v21 + v19, v23, v24);
    v26 = v21 + v19;
    v27 = v34;
    (*(v25 + 16))(v34, v26, v24);
    v15 = 0;
    v17 = v24;
    v16 = v27;
    v18 = v25;
  }

  return (*(v18 + 56))(v16, v15, 1, v17);
}

uint64_t sub_183FABCEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_183FAB590(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_183FABD4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a3;
  v6 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = *(AssociatedTypeWitness - 8);
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v35 = &v33 - v8;
  v39 = *(a1 + 24);
  v34 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v33 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v33 - v18;
  sub_18438FE08();
  v20 = *(v11 + 16);
  v37 = v17;
  v20(v17, v19, v10);
  v21 = v3;
  sub_18438FE48();
  v41 = a2;
  swift_getAssociatedConformanceWitness();
  v22 = sub_18438FCC8();
  v23 = *(v11 + 8);
  v23(v14, v10);
  if (v22)
  {
    v23(v19, v10);
    v24 = v21 + *(a1 + 56);
    v25 = v39;
    (*(v34 + 16))(v42, v24, v39);
    v26 = *(a1 + 40);
  }

  else
  {
    v34 = *(a1 + 56);
    v27 = v21;
    v28 = sub_18438FEE8();
    v29 = v35;
    v30 = v36;
    (*(v36 + 16))(v35);
    v28(v43, 0);
    v31 = *(a1 + 52);
    v26 = *(a1 + 40);
    v25 = v39;
    (*(v26 + 32))(v29, v27 + v31, v39, v26);
    (*(v30 + 8))(v29, AssociatedTypeWitness);
    v23(v19, v10);
  }

  return sub_183FAC13C(v37, v42, v6, v25, v41, v26, v40);
}

uint64_t sub_183FAC13C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a7, a1, AssociatedTypeWitness);
  v17[0] = a3;
  v17[1] = a4;
  v17[2] = a5;
  v17[3] = a6;
  v15 = _s5IndexVMa_0(0, v17);
  return (*(*(a4 - 8) + 32))(a7 + *(v15 + 52), a2, a4);
}

uint64_t sub_183FAC230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a1 + 24);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v15 = &v17 - v14;
  sub_18438FE48();
  (*(v8 + 16))(v11, v3 + *(a1 + 56), v7);
  return sub_183FAC13C(v15, v11, v12, v7, a2, *(a1 + 40), a3);
}

uint64_t sub_183FAC394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a4;
  v8 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v43 = *(AssociatedTypeWitness - 8);
  v44 = AssociatedTypeWitness;
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v42 = &v38 - v11;
  v48 = *(a2 + 24);
  v41 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v49 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_getAssociatedTypeWitness();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v38 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v38 - v21;
  v45 = a1;
  v23 = a3;
  sub_18438FE18();
  v24 = *(v14 + 16);
  v46 = v20;
  v24(v20, v22, v13);
  v25 = v4;
  sub_18438FE48();
  swift_getAssociatedConformanceWitness();
  v26 = sub_18438FCC8();
  v27 = *(v14 + 8);
  v27(v17, v13);
  if (v26)
  {
    v27(v22, v13);
    v28 = v25 + *(a2 + 56);
    v29 = v48;
    (*(v41 + 16))(v49, v28, v48);
    v30 = *(a2 + 40);
  }

  else
  {
    v30 = *(a2 + 40);
    v40 = a2;
    v50[0] = v8;
    v50[1] = v48;
    v50[2] = v23;
    v50[3] = v30;
    v38 = *(_s5IndexVMa_0(0, v50) + 52);
    v31 = v25;
    v32 = sub_18438FEE8();
    v41 = v23;
    v33 = v43;
    v34 = v44;
    v35 = *(v43 + 16);
    v39 = v27;
    v36 = v42;
    v35(v42);
    v32(v50, 0);
    v29 = v48;
    (*(v30 + 32))(v36, v31 + *(v40 + 52), v48, v30);
    (*(v33 + 8))(v36, v34);
    v23 = v41;
    v39(v22, v13);
  }

  return sub_183FAC13C(v46, v49, v8, v29, v23, v30, v47);
}

uint64_t sub_183FAC7C4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a2[3];
  v7 = a2[5];
  v10[0] = a2[2];
  v10[1] = v6;
  v10[2] = a3;
  v10[3] = v7;
  v8 = _s5IndexVMa_0(0, v10);
  return (*(*(v6 - 8) + 16))(a4, a1 + *(v8 + 52), v6);
}

uint64_t sub_183FAC84C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_18438FCC8() & 1;
}

uint64_t sub_183FAC8E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_18438FC68() & 1;
}

void (*sub_183FAC9AC(void *a1, uint64_t a2, void *a3, uint64_t a4))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = sub_183FACA3C(v8, a2, a3, *(a4 - 8));
  return sub_183F840C4;
}

void (*sub_183FACA3C(void *a1, uint64_t a2, void *a3, uint64_t a4))(void *a1)
{
  v8 = a3[3];
  *a1 = v8;
  v9 = *(v8 - 8);
  a1[1] = v9;
  v10 = *(v9 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(v10);
  }

  a1[2] = v11;
  sub_183FAC7C4(a2, a3, a4, v11);
  return sub_183F84210;
}

uint64_t sub_183FACB14@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a2 - 8);
  v5 = *(a1 + 40);
  v8 = *(a1 + 16);
  v9 = v4;
  v10 = v5;
  _s5IndexVMa_0(255, &v8);
  v6 = sub_18438FF18();
  return (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
}

uint64_t sub_183FACBB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  v6 = *(a2 + 40);
  v12 = *(a2 + 16);
  v13 = v5;
  v14 = v6;
  v7 = _s5IndexVMa_0(0, &v12);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  (*(v8 + 32))(&v12 - v9, a1, v7);
  sub_183FAC394(v10, a2, v5, a1);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_183FACD38(void *a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_183FACE0C(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v9 = a3[3];
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = v10;
  v12 = *(v10 + 84);
  if (v12 <= v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = *(v9 - 8);
  v15 = *(v10 + 80);
  v16 = *(v10 + 64);
  v17 = *(v14 + 80);
  if (*(v14 + 84) <= v13)
  {
    v18 = v13;
  }

  else
  {
    v18 = *(v14 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v19 = *(v7 + 64) + v15;
  if (a2 > v18)
  {
    v20 = ((v16 + v17 + (v19 & ~v15)) & ~v17) + *(*(v9 - 8) + 64);
    v21 = 8 * v20;
    if (v20 <= 3)
    {
      v23 = ((a2 - v18 + ~(-1 << v21)) >> v21) + 1;
      if (HIWORD(v23))
      {
        v22 = *(a1 + v20);
        if (!v22)
        {
          goto LABEL_30;
        }

        goto LABEL_17;
      }

      if (v23 > 0xFF)
      {
        v22 = *(a1 + v20);
        if (!*(a1 + v20))
        {
          goto LABEL_30;
        }

        goto LABEL_17;
      }

      if (v23 < 2)
      {
LABEL_30:
        if (v18)
        {
          goto LABEL_31;
        }

        return 0;
      }
    }

    v22 = *(a1 + v20);
    if (!*(a1 + v20))
    {
      goto LABEL_30;
    }

LABEL_17:
    v24 = (v22 - 1) << v21;
    if (v20 > 3)
    {
      v24 = 0;
    }

    if (v20)
    {
      if (v20 <= 3)
      {
        v25 = ((v16 + v17 + (v19 & ~v15)) & ~v17) + *(*(v9 - 8) + 64);
      }

      else
      {
        v25 = 4;
      }

      if (v25 > 2)
      {
        if (v25 == 3)
        {
          v26 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v26 = *a1;
        }
      }

      else if (v25 == 1)
      {
        v26 = *a1;
      }

      else
      {
        v26 = *a1;
      }
    }

    else
    {
      v26 = 0;
    }

    return v18 + (v26 | v24) + 1;
  }

LABEL_31:
  if (v8 == v18)
  {
    v27 = *(v7 + 48);
    v28 = a1;
    v29 = v8;
    v30 = AssociatedTypeWitness;
LABEL_39:

    return v27(v28, v29, v30);
  }

  v32 = (a1 + v19) & ~v15;
  if (v12 != v18)
  {
    v27 = *(v14 + 48);
    v28 = ((v32 + v16 + v17) & ~v17);
    v29 = *(v14 + 84);
    v30 = v9;
    goto LABEL_39;
  }

  v33 = *(v11 + 48);

  return v33(v32);
}

void sub_183FAD148(_BYTE *a1, uint64_t a2, unsigned int a3, void *a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v38 = v9;
  v10 = *(v9 + 84);
  v11 = a4[3];
  v12 = *(swift_getAssociatedTypeWitness() - 8);
  v13 = v12;
  v14 = *(v12 + 84);
  if (v14 <= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = *(v12 + 84);
  }

  v16 = *(v11 - 8);
  v17 = *(v16 + 84);
  v18 = *(v9 + 64);
  v19 = *(v12 + 80);
  v20 = *(v12 + 64);
  v21 = *(v16 + 80);
  if (v17 <= v15)
  {
    v22 = v15;
  }

  else
  {
    v22 = *(v16 + 84);
  }

  v23 = v18 + v19;
  v24 = ((v20 + v21 + ((v18 + v19) & ~v19)) & ~v21) + *(*(v11 - 8) + 64);
  if (a3 <= v22)
  {
    v25 = 0;
  }

  else if (v24 <= 3)
  {
    v28 = ((a3 - v22 + ~(-1 << (8 * v24))) >> (8 * v24)) + 1;
    if (HIWORD(v28))
    {
      v25 = 4;
    }

    else
    {
      if (v28 < 0x100)
      {
        v29 = 1;
      }

      else
      {
        v29 = 2;
      }

      if (v28 >= 2)
      {
        v25 = v29;
      }

      else
      {
        v25 = 0;
      }
    }
  }

  else
  {
    v25 = 1;
  }

  if (v22 < a2)
  {
    v26 = ~v22 + a2;
    if (v24 < 4)
    {
      v27 = (v26 >> (8 * v24)) + 1;
      if (v24)
      {
        v30 = v26 & ~(-1 << (8 * v24));
        bzero(a1, v24);
        if (v24 != 3)
        {
          if (v24 == 2)
          {
            *a1 = v30;
            if (v25 > 1)
            {
LABEL_52:
              if (v25 == 2)
              {
                *&a1[v24] = v27;
              }

              else
              {
                *&a1[v24] = v27;
              }

              return;
            }
          }

          else
          {
            *a1 = v26;
            if (v25 > 1)
            {
              goto LABEL_52;
            }
          }

          goto LABEL_49;
        }

        *a1 = v30;
        a1[2] = BYTE2(v30);
      }

      if (v25 > 1)
      {
        goto LABEL_52;
      }
    }

    else
    {
      bzero(a1, v24);
      *a1 = v26;
      v27 = 1;
      if (v25 > 1)
      {
        goto LABEL_52;
      }
    }

LABEL_49:
    if (v25)
    {
      a1[v24] = v27;
    }

    return;
  }

  if (v25 <= 1)
  {
    if (v25)
    {
      a1[v24] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

LABEL_33:
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (v25 == 2)
  {
    *&a1[v24] = 0;
    goto LABEL_33;
  }

  *&a1[v24] = 0;
  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v10 == v22)
  {
    v31 = *(v38 + 56);
    v32 = a1;
    v33 = a2;
    v34 = v10;
    v35 = AssociatedTypeWitness;
LABEL_44:

    v31(v32, v33, v34, v35);
    return;
  }

  v36 = &a1[v23] & ~v19;
  if (v14 != v22)
  {
    v31 = *(v16 + 56);
    v32 = ((v36 + v20 + v21) & ~v21);
    v33 = a2;
    v34 = v17;
    v35 = v11;
    goto LABEL_44;
  }

  v37 = *(v13 + 56);

  v37(v36, a2);
}

uint64_t sub_183FAD504(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_183FAD5C4(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = *(v5 - 8);
  v14 = *(v9 + 80);
  v15 = *(v9 + 64);
  v16 = *(v13 + 80);
  if (*(v13 + 84) <= v12)
  {
    v17 = v12;
  }

  else
  {
    v17 = *(v13 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v18 = *(v7 + 64) + v14;
  if (a2 > v17)
  {
    v19 = ((v15 + v16 + (v18 & ~v14)) & ~v16) + *(*(v5 - 8) + 64);
    v20 = 8 * v19;
    if (v19 <= 3)
    {
      v22 = ((a2 - v17 + ~(-1 << v20)) >> v20) + 1;
      if (HIWORD(v22))
      {
        v21 = *(a1 + v19);
        if (!v21)
        {
          goto LABEL_30;
        }

        goto LABEL_17;
      }

      if (v22 > 0xFF)
      {
        v21 = *(a1 + v19);
        if (!*(a1 + v19))
        {
          goto LABEL_30;
        }

        goto LABEL_17;
      }

      if (v22 < 2)
      {
LABEL_30:
        if (v17)
        {
          goto LABEL_31;
        }

        return 0;
      }
    }

    v21 = *(a1 + v19);
    if (!*(a1 + v19))
    {
      goto LABEL_30;
    }

LABEL_17:
    v23 = (v21 - 1) << v20;
    if (v19 > 3)
    {
      v23 = 0;
    }

    if (v19)
    {
      if (v19 <= 3)
      {
        v24 = ((v15 + v16 + (v18 & ~v14)) & ~v16) + *(*(v5 - 8) + 64);
      }

      else
      {
        v24 = 4;
      }

      if (v24 > 2)
      {
        if (v24 == 3)
        {
          v25 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v25 = *a1;
        }
      }

      else if (v24 == 1)
      {
        v25 = *a1;
      }

      else
      {
        v25 = *a1;
      }
    }

    else
    {
      v25 = 0;
    }

    return v17 + (v25 | v23) + 1;
  }

LABEL_31:
  if (v8 == v17)
  {
    v26 = *(v7 + 48);
    v27 = a1;
    v28 = v8;
    v29 = v6;
LABEL_39:

    return v26(v27, v28, v29);
  }

  v31 = (a1 + v18) & ~v14;
  if (v11 != v17)
  {
    v26 = *(v13 + 48);
    v27 = ((v31 + v15 + v16) & ~v16);
    v28 = *(v13 + 84);
    v29 = v5;
    goto LABEL_39;
  }

  v32 = *(v10 + 48);

  return v32(v31);
}

void sub_183FAD8D8(_BYTE *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v8 = a4[2];
  v7 = a4[3];
  v9 = *(v8 - 8);
  v37 = v9;
  v10 = *(v9 + 84);
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  if (v13 <= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = *(v11 + 84);
  }

  v15 = *(v7 - 8);
  v16 = *(v15 + 84);
  v17 = *(v9 + 64);
  v18 = *(v11 + 80);
  v19 = *(v11 + 64);
  v20 = *(v15 + 80);
  if (v16 <= v14)
  {
    v21 = v14;
  }

  else
  {
    v21 = *(v15 + 84);
  }

  v22 = v17 + v18;
  v23 = ((v19 + v20 + ((v17 + v18) & ~v18)) & ~v20) + *(*(v7 - 8) + 64);
  if (a3 <= v21)
  {
    v24 = 0;
  }

  else if (v23 <= 3)
  {
    v27 = ((a3 - v21 + ~(-1 << (8 * v23))) >> (8 * v23)) + 1;
    if (HIWORD(v27))
    {
      v24 = 4;
    }

    else
    {
      if (v27 < 0x100)
      {
        v28 = 1;
      }

      else
      {
        v28 = 2;
      }

      if (v27 >= 2)
      {
        v24 = v28;
      }

      else
      {
        v24 = 0;
      }
    }
  }

  else
  {
    v24 = 1;
  }

  if (v21 < a2)
  {
    v25 = ~v21 + a2;
    if (v23 < 4)
    {
      v26 = (v25 >> (8 * v23)) + 1;
      if (v23)
      {
        v29 = v25 & ~(-1 << (8 * v23));
        bzero(a1, v23);
        if (v23 != 3)
        {
          if (v23 == 2)
          {
            *a1 = v29;
            if (v24 > 1)
            {
LABEL_52:
              if (v24 == 2)
              {
                *&a1[v23] = v26;
              }

              else
              {
                *&a1[v23] = v26;
              }

              return;
            }
          }

          else
          {
            *a1 = v25;
            if (v24 > 1)
            {
              goto LABEL_52;
            }
          }

          goto LABEL_49;
        }

        *a1 = v29;
        a1[2] = BYTE2(v29);
      }

      if (v24 > 1)
      {
        goto LABEL_52;
      }
    }

    else
    {
      bzero(a1, v23);
      *a1 = v25;
      v26 = 1;
      if (v24 > 1)
      {
        goto LABEL_52;
      }
    }

LABEL_49:
    if (v24)
    {
      a1[v23] = v26;
    }

    return;
  }

  if (v24 <= 1)
  {
    if (v24)
    {
      a1[v23] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

LABEL_33:
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (v24 == 2)
  {
    *&a1[v23] = 0;
    goto LABEL_33;
  }

  *&a1[v23] = 0;
  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v10 == v21)
  {
    v30 = *(v37 + 56);
    v31 = a1;
    v32 = a2;
    v33 = v10;
    v34 = v8;
LABEL_44:

    v30(v31, v32, v33, v34);
    return;
  }

  v35 = &a1[v22] & ~v18;
  if (v13 != v21)
  {
    v30 = *(v15 + 56);
    v31 = ((v35 + v19 + v20) & ~v20);
    v32 = a2;
    v33 = v16;
    v34 = v7;
    goto LABEL_44;
  }

  v36 = *(v12 + 56);

  v36(v35, a2);
}

uint64_t sub_183FADC84(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_183FADD24(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 24) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(AssociatedTypeWitness - 8) + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(v9 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v8 >= v10)
        {
          v23 = *(v7 + 48);

          return v23(a1);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11, v10);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = (v13 & ~v11) + *(v9 + 64);
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_183FADF7C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 24) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v11 <= v9)
  {
    v14 = *(v8 + 84);
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = v12 + v13;
  v16 = ((v12 + v13) & ~v13) + *(v10 + 64);
  if (a3 <= v14)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v14 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v14 < a2)
  {
    v18 = ~v14 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_46:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v24 = *(v8 + 56);

    v24(a1, a2);
  }

  else
  {
    v23 = *(v10 + 56);

    v23(&a1[v15] & ~v13, a2, v11);
  }
}

unint64_t sub_183FAE278()
{
  result = qword_1EA8547F8;
  if (!qword_1EA8547F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA854800, &qword_18439A570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8547F8);
  }

  return result;
}

uint64_t sub_183FAE2EC(int a1)
{
  if (a1 > 3)
  {
    if (a1 > 5)
    {
      if (a1 != 6)
      {
        if (a1 == 7)
        {
          return 0x6C6E4F6168706C61;
        }

LABEL_18:
        sub_184390098();

        v2 = sub_1843901B8();
        MEMORY[0x1865EC630](v2);

        MEMORY[0x1865EC630](41, 0xE100000000000000);
        return 0x7761722874696E69;
      }
    }

    else if (a1 == 4)
    {
      return 0x7473726966;
    }

    return 0x70696B53656E6F6ELL;
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      return 1701736302;
    }

    if (a1 == 1)
    {
      return 0xD000000000000011;
    }

    goto LABEL_18;
  }

  if (a1 == 2)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 1953718636;
  }
}

Swift::Bool __swiftcall CGAffineTransformEqualToTransform(_:_:)(CGAffineTransform *a1, CGAffineTransform *a2)
{
  result = sub_184390118();
  __break(1u);
  return result;
}

CGColorRef_optional __swiftcall CGColorGetConstantColor(_:)(CFStringRef_optional a1)
{
  result.value = sub_184390118();
  __break(1u);
  return result;
}

Swift::Bool __swiftcall CGColorEqualToColor(_:_:)(CGColorRef_optional a1, CGColorRef_optional a2)
{
  result = sub_184390118();
  __break(1u);
  return result;
}

Swift::Int __swiftcall CGColorSpaceGetColorTableCount(_:)(CGColorSpaceRef_optional a1)
{
  result = sub_184390118();
  __break(1u);
  return result;
}

CGPoint __swiftcall CGContextGetTextPosition(_:)(CGContextRef_optional a1)
{
  sub_184390118();
  __break(1u);
  result.y = v2;
  result.x = v1;
  return result;
}

Swift::Bool __swiftcall CGPathEqualToPath(_:_:)(CGPathRef_optional a1, CGPathRef_optional a2)
{
  result = sub_184390118();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for Region.Operation(uint64_t a1)
{
  result = qword_1ED4E01C8;
  if (!qword_1ED4E01C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_183FAF55C(uint64_t a1)
{
  sub_183FAF5D0(319);
  if (v1 <= 0x3F)
  {
    sub_183FAF6CC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_183FAF5D0(uint64_t a1)
{
  if (!qword_1ED4DFF28[0])
  {
    MEMORY[0x1EEE9AC00](a1);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, qword_1ED4DFF28);
    }
  }
}

void sub_183FAF6CC(uint64_t a1)
{
  if (!qword_1ED4DFF20)
  {
    sub_184390218();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED4DFF20);
    }
  }
}

uint64_t sub_183FAF738@<X0>(double *a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  v6 = sub_184390218();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - v11;
  v13 = type metadata accessor for Region.Operation(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *a1;
  sub_183FAFA78(a2, v15);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    v18 = *(v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854808, &qword_18439ADB0) + 48));
    result = (*(v7 + 32))(v12, v15, v6);
    if (v18 > 0.0)
    {
      v19 = v16 * v18;
      v26 = v19;
      (*(v7 + 16))(v10, v12, v6);
      v20 = (*(v7 + 88))(v10, v6);
      if (v20 == *MEMORY[0x1E69E7038])
      {
        v21 = round(v19);
      }

      else if (v20 == *MEMORY[0x1E69E7030])
      {
        v21 = rint(v19);
      }

      else if (v20 == *MEMORY[0x1E69E7040])
      {
        v21 = ceil(v19);
      }

      else if (v20 == *MEMORY[0x1E69E7048])
      {
        v21 = floor(v19);
      }

      else
      {
        if (v20 != *MEMORY[0x1E69E7020])
        {
          if (v20 == *MEMORY[0x1E69E7028])
          {
            result = (*(v7 + 8))(v12, v6);
            if ((*&v19 & 0x8000000000000000) != 0)
            {
              v23 = floor(v19);
            }

            else
            {
              v23 = ceil(v19);
            }
          }

          else
          {
            sub_18438FDE8();
            v24 = *(v7 + 8);
            v24(v12, v6);
            result = (v24)(v10, v6);
            v23 = v26;
          }

          v22 = v23 / v18;
          goto LABEL_16;
        }

        v21 = trunc(v19);
      }

      result = (*(v7 + 8))(v12, v6);
      v22 = v21 / v18;
LABEL_16:
      *a3 = v22;
      return result;
    }

    __break(1u);
  }

  else if (*v15 >= 0.0)
  {
    v22 = v15[2] + v16 * *v15;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_183FAFA78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Region.Operation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_183FAFADC@<X0>(double *a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  v6 = sub_184390218();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - v11;
  v13 = type metadata accessor for Region.Operation(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *a1;
  sub_183FAFA78(a2, v15);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    v18 = *(v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854808, &qword_18439ADB0) + 48));
    result = (*(v7 + 32))(v12, v15, v6);
    if (v18 > 0.0)
    {
      v19 = v16 * v18;
      v27 = v19;
      (*(v7 + 16))(v10, v12, v6);
      v20 = (*(v7 + 88))(v10, v6);
      if (v20 == *MEMORY[0x1E69E7038])
      {
        v21 = round(v19);
      }

      else if (v20 == *MEMORY[0x1E69E7030])
      {
        v21 = rint(v19);
      }

      else if (v20 == *MEMORY[0x1E69E7040])
      {
        v21 = ceil(v19);
      }

      else if (v20 == *MEMORY[0x1E69E7048])
      {
        v21 = floor(v19);
      }

      else
      {
        if (v20 != *MEMORY[0x1E69E7020])
        {
          if (v20 == *MEMORY[0x1E69E7028])
          {
            result = (*(v7 + 8))(v12, v6);
            if ((*&v19 & 0x8000000000000000) != 0)
            {
              v24 = floor(v19);
            }

            else
            {
              v24 = ceil(v19);
            }
          }

          else
          {
            sub_18438FDE8();
            v25 = *(v7 + 8);
            v25(v12, v6);
            result = (v25)(v10, v6);
            v24 = v27;
          }

          v23 = v24 / v18;
          goto LABEL_16;
        }

        v21 = trunc(v19);
      }

      result = (*(v7 + 8))(v12, v6);
      v23 = v21 / v18;
LABEL_16:
      *a3 = v23;
      return result;
    }

    __break(1u);
  }

  else
  {
    v22 = v15[1];
    if (v22 >= 0.0)
    {
      v23 = v15[3] + v16 * v22;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_183FAFE28(uint64_t a1)
{
  v2 = sub_183F73434();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_183FAFE64(uint64_t a1)
{
  v2 = sub_183F73434();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_183FAFEA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 120 && a2 == 0xE100000000000000 || (sub_184390248() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 121 && a2 == 0xE100000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_184390248();

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

uint64_t sub_183FAFF68(uint64_t a1)
{
  v2 = sub_183F73B2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_183FAFFA4(uint64_t a1)
{
  v2 = sub_183F73B2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_183FAFFE0()
{
  result = qword_1EA854828;
  if (!qword_1EA854828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA854820, &qword_18439A698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854828);
  }

  return result;
}

unint64_t sub_183FB0068()
{
  result = qword_1EA854830;
  if (!qword_1EA854830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854830);
  }

  return result;
}

unint64_t sub_183FB00C0()
{
  result = qword_1EA854838;
  if (!qword_1EA854838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854838);
  }

  return result;
}

unint64_t sub_183FB0118()
{
  result = qword_1EA853EE0;
  if (!qword_1EA853EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA853EE0);
  }

  return result;
}

unint64_t sub_183FB0170()
{
  result = qword_1EA853EE8;
  if (!qword_1EA853EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA853EE8);
  }

  return result;
}

unint64_t sub_183FB01C8()
{
  result = qword_1EA853F28;
  if (!qword_1EA853F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA853F28);
  }

  return result;
}

unint64_t sub_183FB0220()
{
  result = qword_1EA853F20;
  if (!qword_1EA853F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA853F20);
  }

  return result;
}

uint64_t sub_183FB0294(double a1, double a2, double a3, double a4)
{
  sub_184390098();

  v4 = sub_18438FDD8();
  MEMORY[0x1865EC630](v4);

  MEMORY[0x1865EC630](0x203C2E2E20, 0xE500000000000000);
  v5 = sub_18438FDD8();
  MEMORY[0x1865EC630](v5);

  MEMORY[0x1865EC630](0x203A79202CLL, 0xE500000000000000);
  v6 = sub_18438FDD8();
  MEMORY[0x1865EC630](v6);

  MEMORY[0x1865EC630](0x203C2E2E20, 0xE500000000000000);
  v7 = sub_18438FDD8();
  MEMORY[0x1865EC630](v7);

  MEMORY[0x1865EC630](41, 0xE100000000000000);
  return 540702760;
}

uint64_t sub_183FB03E0(uint64_t a1)
{
  v2 = sub_184390378();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8542B8, &qword_1843985A8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v12 - v7;
  v9 = v1[1];
  v13 = *v1;
  v14 = v9;
  v12[1] = MEMORY[0x1E69E7CC0];
  v10 = sub_184390368();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  (*(v3 + 104))(v5, *MEMORY[0x1E69E75D8], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854860, &unk_18439AA00);
  sub_183FB0B00();
  return sub_184390388();
}

uint64_t Region.debugDescription.getter()
{
  v5 = *v0;
  v6 = v0[1];
  v7 = v0[2];
  *&v8 = *(v0 + 6);
  *(&v8 + 1) = sub_183FB06AC;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854840, &qword_18439A920);
  sub_183FB0710();
  v1 = sub_18438FC58();
  v3 = v2;
  v9[2] = v7;
  v9[3] = v8;
  v10 = 0;
  v9[0] = v5;
  v9[1] = v6;
  sub_183FB0794(v9);
  MEMORY[0x1865EC630](v1, v3);

  MEMORY[0x1865EC630](10589, 0xE200000000000000);
  return 0x5B286E6F69676552;
}

uint64_t sub_183FB06AC@<X0>(void *a2@<X8>)
{
  result = sub_1843900F8();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

unint64_t sub_183FB0710()
{
  result = qword_1EA854848;
  if (!qword_1EA854848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA854840, &qword_18439A920);
    sub_183FA4688();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854848);
  }

  return result;
}

uint64_t sub_183FB0794(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854840, &qword_18439A920);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Region.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v19[1] = a1;
  v2 = sub_184390378();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8542B8, &qword_1843985A8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v19 - v7;
  v9 = v1[1];
  v10 = v1[2];
  v11 = v1[3];
  v13 = v1[4];
  v12 = v1[5];
  v14 = v1[6];
  v20 = *v1;
  v21 = v9;
  v22 = v10;
  v23 = v11;
  v24 = v13;
  v25 = v12;
  v26 = v14;
  v19[2] = v20;
  v19[3] = v9;
  v19[4] = v10;
  v19[5] = v11;
  v19[6] = v13;
  v19[7] = v12;
  v19[8] = v14;
  v19[9] = sub_183FB0A58;
  v19[10] = 0;
  v15 = *MEMORY[0x1E69E75A0];
  v16 = sub_184390368();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v8, v15, v16);
  (*(v17 + 56))(v8, 0, 1, v16);
  (*(v3 + 104))(v5, *MEMORY[0x1E69E75D8], v2);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854850, &qword_18439A928);
  sub_183FB0A64();
  return sub_184390388();
}

__n128 sub_183FB0A58@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

unint64_t sub_183FB0A64()
{
  result = qword_1EA854858;
  if (!qword_1EA854858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA854850, &qword_18439A928);
    sub_183FA45AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854858);
  }

  return result;
}

unint64_t sub_183FB0B00()
{
  result = qword_1EA854868;
  if (!qword_1EA854868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA854860, &unk_18439AA00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854868);
  }

  return result;
}

double Region.init(dataRepresentation:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      memset(v39, 0, 14);
      sub_183FB0E98(v39, v39, v40);
      v18 = a1;
      v19 = a2;
      goto LABEL_37;
    }

    v6 = *(a1 + 16);
    v5 = *(a1 + 24);
    v7 = __OFSUB__(v5, v6);
    LOBYTE(v5) = v5 - v6;
    if (!v7)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v5 = HIWORD(a2);
    goto LABEL_9;
  }

  LOBYTE(v5) = BYTE4(a1) - a1;
  if (__OFSUB__(HIDWORD(a1), a1))
  {
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_9:
  if ((v5 & 0x1F) != 0)
  {
    sub_183FB0E44(a1, a2);
LABEL_39:
    *(a3 + 48) = 0;
    *&v35 = 0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    return *&v35;
  }

  if (v4 != 2)
  {
    if (v4 != 1)
    {
      v39[0] = a1;
      LOWORD(v39[1]) = a2;
      BYTE2(v39[1]) = BYTE2(a2);
      BYTE3(v39[1]) = BYTE3(a2);
      BYTE4(v39[1]) = BYTE4(a2);
      BYTE5(v39[1]) = BYTE5(a2);
      sub_183FB0E98(v39, v39 + BYTE6(a2), v40);
      v18 = a1;
      v19 = a2;
      goto LABEL_37;
    }

    v8 = a1;
    v9 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v12 = sub_18438FB68();
      if (!v12)
      {
LABEL_17:
        v14 = sub_18438FB78();
        if (v14 >= v9)
        {
          v15 = v9;
        }

        else
        {
          v15 = v14;
        }

        v16 = v15 + v12;
        if (v12)
        {
          v17 = v16;
        }

        else
        {
          v17 = 0;
        }

        sub_183FB0E98(v12, v17, v40);
        v18 = a1;
        v19 = a2;
        goto LABEL_37;
      }

      v13 = sub_18438FB88();
      if (!__OFSUB__(v8, v13))
      {
        v12 += v8 - v13;
        goto LABEL_17;
      }

LABEL_45:
      __break(1u);
    }

    goto LABEL_42;
  }

  v22 = *(a1 + 16);
  v23 = *(a1 + 24);
  v26 = sub_18438FB68();
  if (v26)
  {
    v27 = sub_18438FB88();
    if (__OFSUB__(v22, v27))
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v26 += v22 - v27;
  }

  v7 = __OFSUB__(v23, v22);
  v28 = v23 - v22;
  if (v7)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v29 = sub_18438FB78();
  if (v29 >= v28)
  {
    v30 = v28;
  }

  else
  {
    v30 = v29;
  }

  v31 = v30 + v26;
  if (v26)
  {
    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  sub_183FB0E98(v26, v32, v40);
  v18 = a1;
  v19 = a2;
LABEL_37:
  sub_183FB0E44(v18, v19);
  v35 = v41;
  if (!v41)
  {
    goto LABEL_39;
  }

  v36 = v40[1];
  v37 = v42;
  *a3 = v40[0];
  *(a3 + 16) = v36;
  *(a3 + 32) = v35;
  *(a3 + 48) = v37;
  return *&v35;
}

uint64_t sub_183FB0E44(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_183FB0E98@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = vdupq_n_s64(0x7FF8000000000000uLL);
  v5 = MEMORY[0x1E69E7CC0];
  v18 = v4;
  v19 = v4;
  v20.i64[0] = MEMORY[0x1E69E7CC0];
  v20.i64[1] = MEMORY[0x1E69E7CC0];
  v21 = MEMORY[0x1E69E7CC0];
  v6 = vdupq_n_s64(MEMORY[0x1E69E7CC0]);
  if (result && (v7 = result, v8 = a2 - result, a2 - result >= 1))
  {
    v9 = 0;
    do
    {
      if (__OFADD__(v9, 32))
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9 + 32;
      }

      v11 = (v7 + v9);
      v12 = v11[1];
      v13 = v11[2];
      v14 = v11[3];
      if (*v11 >= v12 || v13 >= v14)
      {

        *(a3 + 48) = 0;
        *(a3 + 16) = 0u;
        *(a3 + 32) = 0u;
        *a3 = 0u;
        return result;
      }

      *v17 = *v11;
      *&v17[1] = v12;
      *&v17[2] = v13;
      *&v17[3] = v14;
      v17[4] = v5;
      v17[5] = v5;
      v17[6] = v5;
      if ((Region.isSuperset(of:)(v17) & 1) == 0)
      {
        Region.formUnion(_:)(v17);
      }

      v9 = v10;
    }

    while (v10 < v8);
    v4 = v18;
    v16 = v19;
    v6 = v20;
    v5 = v21;
  }

  else
  {
    v16 = v4;
  }

  *a3 = v4;
  *(a3 + 16) = v16;
  *(a3 + 32) = v6;
  *(a3 + 48) = v5;
  return result;
}

uint64_t Region.dataRepresentation.getter()
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v14 = xmmword_18439AA70;
  v4 = *v0;
  v5 = (~*v0 & 0x7FF0000000000000) != 0;
  v12 = 0;
  v13 = 0;
  v6 = (v4 & 0xFFFFFFFFFFFFFLL) == 0 || v5;

  v7 = 0;
  while (1)
  {
    if (v6 && !*(v1 + 16))
    {
      if (v7 == 2)
      {
        goto LABEL_24;
      }
    }

    else if (v7 == *(v3 + 16))
    {
      goto LABEL_24;
    }

    Region.subscript.getter(&v12);
    v7 = v13 + 2;
    if (__OFADD__(v13, 2))
    {
      goto LABEL_26;
    }

    v8 = v12;
    if (!v6 || *(v1 + 16))
    {
      v9 = *(v2 + 16);
      if (v12 >= v9)
      {
        goto LABEL_6;
      }

      v10 = v12;
      while ((v12 & 0x8000000000000000) == 0)
      {
        if (v7 < *(v2 + 32 + 4 * v10))
        {
          v8 = v10;
          goto LABEL_6;
        }

        if (v9 == ++v10)
        {
          v8 = *(v2 + 16);
          goto LABEL_6;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
    }

    v8 = v12 + 2;
    if (__OFADD__(v12, 2))
    {
      break;
    }

LABEL_6:
    v12 = v8;
    v13 += 2;
    sub_18438FBA8();
  }

  __break(1u);
LABEL_24:

  return v14;
}

void CGRect.__divided(slice:remainder:atDistance:from:)(CGRect *a1, CGRect *a2, CGRectEdge a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v9.origin.x = a5;
  v9.origin.y = a6;
  v9.size.width = a7;
  v9.size.height = a8;
  CGRectDivide(v9, a1, a2, a4, a3);
}

unint64_t sub_183FB11D0()
{
  result = qword_1EA854870;
  if (!qword_1EA854870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA854878, &qword_18439AA88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854870);
  }

  return result;
}

uint64_t sub_183FB1244(int a1)
{
  HIDWORD(v2) = a1;
  LODWORD(v2) = a1;
  v1 = v2 >> 12;
  if (v1 <= 1)
  {
    if (!v1)
    {
      return 0x666544726564726FLL;
    }

    if (v1 == 1)
    {
      return 0x4C3631726564726FLL;
    }

    goto LABEL_14;
  }

  if (v1 == 2)
  {
    return 0x4C3233726564726FLL;
  }

  if (v1 != 3)
  {
    if (v1 == 4)
    {
      return 0x423233726564726FLL;
    }

LABEL_14:
    sub_184390098();

    v4 = sub_1843901B8();
    MEMORY[0x1865EC630](v4);

    MEMORY[0x1865EC630](41, 0xE100000000000000);
    return 0x7761722874696E69;
  }

  return 0x423631726564726FLL;
}

uint64_t ilogb(_:)(double a1)
{
  v1 = (*&a1 >> 52) & 0x7FFLL;
  if (v1 == 2047)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v3 = *&a1 & 0xFFFFFFFFFFFFFLL;
  if (!(v1 | *&a1 & 0xFFFFFFFFFFFFFLL))
  {
    return 0x8000000000000000;
  }

  if (v1)
  {
    return v1 - 1023;
  }

  if (v3)
  {
    return -1011 - __clz(v3);
  }

  __break(1u);
  return result;
}

uint64_t lgamma(_:)(double a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = 0;
  lgamma_r(a1, &v2);
  return v2;
}

uint64_t remquo(_:_:)(long double a1, long double a2)
{
  v4 = *MEMORY[0x1E69E9840];
  __z = 0;
  remquo(a1, a2, &__z);
  return __z;
}

double nan(_:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_18438FD08();
  v3 = nan((v2 + 32));

  return v3;
}

uint64_t sub_183FB18E8(uint64_t result, uint64_t (*a2)(void))
{
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    return a2();
  }

  __break(1u);
  return result;
}

BOOL CGFloat.isNearlyEqual(to:tolerance:)(double a1, double a2, double a3)
{
  if (a3 == a1)
  {
    return 1;
  }

  if (COERCE__INT64(fabs(a3 - a1)) >= 0x7FF0000000000000)
  {
    return 0;
  }

  v4 = vabdd_f64(a3, a1);
  v5 = fabs(a3);
  v6 = fabs(a1);
  if (v5 > v6)
  {
    v6 = v5;
  }

  if (v6 <= 1.0)
  {
    v6 = 1.0;
  }

  return v4 <= v6 * a2;
}

BOOL CGFloatNearlyEqualToFloat(_:_:)(double a1, double a2)
{
  if (qword_1EA853EA8 == -1)
  {
    if (a1 == a2)
    {
      return 1;
    }
  }

  else
  {
    v3 = a2;
    v4 = a1;
    swift_once();
    a1 = v4;
    a2 = v3;
    if (v4 == v3)
    {
      return 1;
    }
  }

  if (COERCE__INT64(fabs(a1 - a2)) >= 0x7FF0000000000000)
  {
    return 0;
  }

  v5 = vabdd_f64(a1, a2);
  v6 = fabs(a1);
  v7 = fabs(a2);
  if (v6 <= v7)
  {
    v6 = v7;
  }

  if (v6 <= 1.0)
  {
    v6 = 1.0;
  }

  return v5 <= v6 * *&qword_1EA853EB0;
}

BOOL CGFloatNearlyEqualToFloatWithTolerance(_:_:_:)(double a1, double a2, double a3)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (COERCE__INT64(fabs(a1 - a2)) >= 0x7FF0000000000000)
  {
    return 0;
  }

  v4 = vabdd_f64(a1, a2);
  v5 = fabs(a1);
  v6 = fabs(a2);
  if (v5 <= v6)
  {
    v5 = v6;
  }

  if (v5 <= 1.0)
  {
    v5 = 1.0;
  }

  return v4 <= v5 * a3;
}