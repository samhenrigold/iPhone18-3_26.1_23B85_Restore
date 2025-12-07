void sub_252AC9274(id *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_90:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_252934564(v8);
    }

    v91 = *(v8 + 2);
    if (v91 >= 2)
    {
      while (*a3)
      {
        v92 = v8;
        v8 = (v91 - 1);
        v93 = *&v92[16 * v91];
        v94 = *&v92[16 * v91 + 24];
        sub_252ACA6C8((*a3 + 8 * v93), (*a3 + 8 * *&v92[16 * v91 + 16]), (*a3 + 8 * v94), v7);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v94 < v93)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = sub_252934564(v92);
        }

        if (v91 - 2 >= *(v92 + 2))
        {
          goto LABEL_116;
        }

        v95 = &v92[16 * v91];
        *v95 = v93;
        *(v95 + 1) = v94;
        sub_2529344D8(v91 - 1);
        v8 = v92;
        v91 = *(v92 + 2);
        if (v91 <= 1)
        {
          goto LABEL_100;
        }
      }

      goto LABEL_126;
    }

LABEL_100:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    v7 = (v7 + 1);
    if (v7 < v6)
    {
      v101 = v5;
      v97 = 8 * v9;
      v10 = (*a3 + 8 * v9);
      v12 = *v10;
      v11 = v10 + 2;
      v13 = *(*a3 + 8 * v7);
      v14 = v12;
      v106 = [v13 type];
      v104 = [v14 type];

      v99 = v9;
      v15 = v9 + 2;
      while (v6 != v15)
      {
        v16 = *(v11 - 1);
        v17 = *v11;
        v18 = v16;
        v19 = v8;
        v20 = [v17 type];
        v7 = [v18 type];

        v21 = v20 < v7;
        v8 = v19;
        v22 = !v21;
        ++v15;
        ++v11;
        if ((((v106 < v104) ^ v22) & 1) == 0)
        {
          v6 = v15 - 1;
          break;
        }
      }

      v9 = v99;
      v5 = v101;
      v23 = v97;
      if (v106 < v104)
      {
        if (v6 < v99)
        {
          goto LABEL_119;
        }

        if (v99 < v6)
        {
          v24 = 8 * v6 - 8;
          v25 = v6;
          v26 = v99;
          do
          {
            if (v26 != --v25)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v27 = *(v28 + v23);
              *(v28 + v23) = *(v28 + v24);
              *(v28 + v24) = v27;
            }

            ++v26;
            v24 -= 8;
            v23 += 8;
          }

          while (v26 < v25);
        }
      }

      v7 = v6;
    }

    v29 = a3[1];
    if (v7 < v29)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        v30 = v9 + a4;
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v30 >= v29)
        {
          v30 = a3[1];
        }

        if (v30 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v30)
        {
          break;
        }
      }
    }

LABEL_39:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_252934578(0, *(v8 + 2) + 1, 1, v8);
    }

    v45 = *(v8 + 2);
    v44 = *(v8 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      v8 = sub_252934578((v44 > 1), v45 + 1, 1, v8);
    }

    *(v8 + 2) = v46;
    v47 = &v8[16 * v45];
    *(v47 + 4) = v9;
    *(v47 + 5) = v7;
    v48 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v8 + 4);
          v51 = *(v8 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_59:
          if (v53)
          {
            goto LABEL_106;
          }

          v66 = &v8[16 * v46];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_109;
          }

          v72 = &v8[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_113;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        v76 = &v8[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_73:
        if (v71)
        {
          goto LABEL_108;
        }

        v79 = &v8[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_111;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_80:
        v87 = v49 - 1;
        if (v49 - 1 >= v46)
        {
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v88 = *&v8[16 * v87 + 32];
        v89 = *&v8[16 * v49 + 40];
        sub_252ACA6C8((*a3 + 8 * v88), (*a3 + 8 * *&v8[16 * v49 + 32]), (*a3 + 8 * v89), v48);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v89 < v88)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_252934564(v8);
        }

        if (v87 >= *(v8 + 2))
        {
          goto LABEL_103;
        }

        v90 = &v8[16 * v87];
        *(v90 + 4) = v88;
        *(v90 + 5) = v89;
        sub_2529344D8(v49);
        v46 = *(v8 + 2);
        if (v46 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v8[16 * v46 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_104;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_105;
      }

      v61 = &v8[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_107;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_110;
      }

      if (v65 >= v57)
      {
        v83 = &v8[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_114;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_90;
    }
  }

  v98 = v8;
  v100 = v9;
  v102 = v5;
  v31 = *a3;
  v32 = *a3 + 8 * v7 - 8;
  v33 = v9 - v7;
  v105 = v30;
LABEL_32:
  v107 = v7;
  v34 = *(v31 + 8 * v7);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    v37 = *v36;
    v38 = v34;
    v39 = v37;
    v40 = [v38 type];
    v41 = [v39 type];

    if (v40 >= v41)
    {
LABEL_31:
      v7 = (v107 + 1);
      v32 += 8;
      --v33;
      if ((v107 + 1) != v105)
      {
        goto LABEL_32;
      }

      v7 = v105;
      v9 = v100;
      v5 = v102;
      v8 = v98;
      goto LABEL_39;
    }

    if (!v31)
    {
      break;
    }

    v42 = *v36;
    v34 = *(v36 + 8);
    *v36 = v34;
    *(v36 + 8) = v42;
    v36 -= 8;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_31;
    }
  }

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
}

uint64_t sub_252AC98DC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_252934564(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_252ACA9AC((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_252934578(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_252934578((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_252ACA9AC((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

void sub_252AC9E28(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_121:
      v8 = sub_252934564(v8);
    }

    v99 = v5;
    v100 = *(v8 + 2);
    if (v100 >= 2)
    {
      while (*a3)
      {
        v5 = v100 - 1;
        v101 = *&v8[16 * v100];
        v102 = *&v8[16 * v100 + 24];
        sub_252ACABA0((*a3 + 8 * v101), (*a3 + 8 * *&v8[16 * v100 + 16]), (*a3 + 8 * v102), v9);
        if (v99)
        {
          goto LABEL_98;
        }

        if (v102 < v101)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_252934564(v8);
        }

        if (v100 - 2 >= *(v8 + 2))
        {
          goto LABEL_115;
        }

        v103 = &v8[16 * v100];
        *v103 = v101;
        *(v103 + 1) = v102;
        sub_2529344D8(v100 - 1);
        v100 = *(v8 + 2);
        if (v100 <= 1)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_125;
    }

LABEL_98:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v105 = v5;
      v11 = *(*a3 + 8 * v10);
      v5 = 8 * v7;
      v12 = v7;
      v13 = (*a3 + 8 * v7);
      v15 = *v13;
      v14 = v13 + 2;
      v16 = v11;
      v17 = v15;
      [v16 mapID];
      v19 = v18;
      [v17 mapID];
      v21 = v20;

      v22 = v12 + 2;
      while (v6 != v22)
      {
        v23 = *(v14 - 1);
        v24 = *v14;
        v25 = v23;
        [v24 mapID];
        v27 = v26;
        [v25 mapID];
        v29 = v28;

        ++v22;
        ++v14;
        if (v19 < v21 == v27 >= v29)
        {
          v6 = (v22 - 1);
          break;
        }
      }

      v9 = v12;
      if (v19 < v21)
      {
        if (v6 < v12)
        {
          goto LABEL_118;
        }

        if (v12 < v6)
        {
          v30 = 8 * v6 - 8;
          v31 = v6;
          v32 = v12;
          do
          {
            if (v32 != --v31)
            {
              v34 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v33 = *(v34 + v5);
              *(v34 + v5) = *(v34 + v30);
              *(v34 + v30) = v33;
            }

            v32 = (v32 + 1);
            v30 -= 8;
            v5 += 8;
          }

          while (v32 < v31);
        }
      }

      v10 = v6;
      v5 = v105;
    }

    v35 = a3[1];
    if (v10 < v35)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_117;
      }

      if (v10 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_119;
        }

        if (v9 + a4 >= v35)
        {
          v36 = a3[1];
        }

        else
        {
          v36 = v9 + a4;
        }

        if (v36 < v9)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v10 != v36)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v10 < v9)
    {
      goto LABEL_116;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_252934578(0, *(v8 + 2) + 1, 1, v8);
    }

    v54 = *(v8 + 2);
    v53 = *(v8 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v8 = sub_252934578((v53 > 1), v54 + 1, 1, v8);
    }

    *(v8 + 2) = v55;
    v56 = &v8[16 * v54];
    *(v56 + 4) = v9;
    *(v56 + 5) = v10;
    v57 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    v111 = v10;
    if (v54)
    {
      while (1)
      {
        v58 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v59 = *(v8 + 4);
          v60 = *(v8 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_57:
          if (v62)
          {
            goto LABEL_105;
          }

          v75 = &v8[16 * v55];
          v77 = *v75;
          v76 = *(v75 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_108;
          }

          v81 = &v8[16 * v58 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v79, v84))
          {
            goto LABEL_112;
          }

          if (v79 + v84 >= v61)
          {
            if (v61 < v84)
            {
              v58 = v55 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v85 = &v8[16 * v55];
        v87 = *v85;
        v86 = *(v85 + 1);
        v69 = __OFSUB__(v86, v87);
        v79 = v86 - v87;
        v80 = v69;
LABEL_71:
        if (v80)
        {
          goto LABEL_107;
        }

        v88 = &v8[16 * v58];
        v90 = *(v88 + 4);
        v89 = *(v88 + 5);
        v69 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v69)
        {
          goto LABEL_110;
        }

        if (v91 < v79)
        {
          goto LABEL_3;
        }

LABEL_78:
        v96 = v58 - 1;
        if (v58 - 1 >= v55)
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

        v97 = *&v8[16 * v96 + 32];
        v9 = *&v8[16 * v58 + 40];
        sub_252ACABA0((*a3 + 8 * v97), (*a3 + 8 * *&v8[16 * v58 + 32]), (*a3 + 8 * v9), v57);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v9 < v97)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_252934564(v8);
        }

        if (v96 >= *(v8 + 2))
        {
          goto LABEL_102;
        }

        v98 = &v8[16 * v96];
        *(v98 + 4) = v97;
        *(v98 + 5) = v9;
        sub_2529344D8(v58);
        v55 = *(v8 + 2);
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v63 = &v8[16 * v55 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_103;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_104;
      }

      v70 = &v8[16 * v55];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_106;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_109;
      }

      if (v74 >= v66)
      {
        v92 = &v8[16 * v58 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_113;
        }

        if (v61 < v95)
        {
          v58 = v55 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = v111;
    v6 = a3[1];
    if (v111 >= v6)
    {
      goto LABEL_88;
    }
  }

  v106 = v5;
  v37 = v9;
  v38 = *a3;
  v39 = *a3 + 8 * v10 - 8;
  v107 = v37;
  v40 = v37 - v10;
  v109 = v36;
LABEL_30:
  v110 = v10;
  v41 = *(v38 + 8 * v10);
  v42 = v40;
  v43 = v39;
  while (1)
  {
    v44 = *v43;
    v45 = v41;
    v46 = v44;
    [v45 mapID];
    v48 = v47;
    [v46 mapID];
    v50 = v49;

    if (v48 >= v50)
    {
LABEL_29:
      v10 = v110 + 1;
      v39 += 8;
      --v40;
      if (v110 + 1 != v109)
      {
        goto LABEL_30;
      }

      v10 = v109;
      v5 = v106;
      v9 = v107;
      goto LABEL_37;
    }

    if (!v38)
    {
      break;
    }

    v51 = *v43;
    v41 = *(v43 + 8);
    *v43 = v41;
    *(v43 + 8) = v51;
    v43 -= 8;
    if (__CFADD__(v42++, 1))
    {
      goto LABEL_29;
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

uint64_t sub_252ACA4A0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_252E37DB4() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_252E37DB4() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_252ACA6C8(void **__dst, void **a2, id *a3, void **__src)
{
  v4 = a3;
  v5 = __dst;
  v6 = a2 - __dst;
  v7 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v7 = a2 - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    if (__src != a2 || &a2[v11] <= __src)
    {
      v23 = a2;
      v24 = __src;
      memmove(__src, a2, 8 * v11);
      __src = v24;
      a2 = v23;
    }

    v41 = __src;
    v14 = &__src[v11];
    if (v9 < 8)
    {
      v13 = __src;
    }

    else
    {
      v13 = __src;
      if (a2 > v5)
      {
        v38 = v5;
LABEL_27:
        v39 = a2;
        v25 = a2 - 1;
        --v4;
        v26 = v14;
        do
        {
          v27 = v14;
          v28 = v4 + 1;
          v29 = *(v26 - 1);
          v26 -= 8;
          v30 = v25;
          v31 = *v25;
          v32 = v29;
          v33 = v31;
          v34 = [v32 type];
          v35 = [v33 type];

          if (v34 < v35)
          {
            if (v28 != v39)
            {
              *v4 = *v30;
            }

            v13 = v41;
            v14 = v27;
            if (v27 <= v41 || (a2 = v30, v30 <= v38))
            {
              a2 = v30;
              goto LABEL_40;
            }

            goto LABEL_27;
          }

          if (v28 != v27)
          {
            *v4 = *v26;
          }

          --v4;
          v14 = v26;
          v13 = v41;
          v25 = v30;
        }

        while (v26 > v41);
        v14 = v26;
        a2 = v39;
      }
    }
  }

  else
  {
    v12 = a2;
    v13 = __src;
    if (__src != __dst || &__dst[v8] <= __src)
    {
      memmove(__src, __dst, 8 * v8);
    }

    v14 = &v13[v8];
    if (v6 < 8)
    {
      a2 = v5;
    }

    else
    {
      v40 = &v13[v8];
      if (v12 < v4)
      {
        v15 = v12;
        while (1)
        {
          v16 = *v13;
          v17 = *v15;
          v18 = v16;
          v19 = [v17 type];
          v20 = [v18 type];

          if (v19 >= v20)
          {
            break;
          }

          v21 = v15;
          v22 = v5 == v15++;
          if (!v22)
          {
            goto LABEL_17;
          }

LABEL_18:
          ++v5;
          if (v13 >= v40 || v15 >= v4)
          {
            goto LABEL_20;
          }
        }

        v21 = v13;
        v22 = v5 == v13++;
        if (v22)
        {
          goto LABEL_18;
        }

LABEL_17:
        *v5 = *v21;
        goto LABEL_18;
      }

LABEL_20:
      a2 = v5;
      v14 = v40;
    }
  }

LABEL_40:
  v36 = v14 - v13 + (v14 - v13 < 0 ? 7uLL : 0);
  if (a2 != v13 || a2 >= (v13 + (v36 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, v13, 8 * (v36 >> 3));
  }

  return 1;
}

uint64_t sub_252ACA9AC(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_252ACABA0(void **__src, void **a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != a2 || &a2[v12] <= a4)
    {
      v25 = a2;
      memmove(a4, a2, 8 * v12);
      a2 = v25;
    }

    v24 = a2;
    v14 = &v4[v12];
    if (v10 >= 8 && a2 > v6)
    {
      v41 = v4;
LABEL_26:
      __dst = v24;
      v26 = v24 - 1;
      --v5;
      v27 = v14;
      do
      {
        v28 = v5 + 1;
        v29 = *--v27;
        v30 = v26;
        v31 = *v26;
        v32 = v29;
        v33 = v31;
        [v32 mapID];
        v35 = v34;
        [v33 mapID];
        v37 = v36;

        if (v35 < v37)
        {
          v38 = v30;
          if (v28 != __dst)
          {
            *v5 = *v30;
          }

          v4 = v41;
          if (v14 <= v41 || (v24 = v38, v38 <= v6))
          {
            v24 = v38;
            goto LABEL_37;
          }

          goto LABEL_26;
        }

        if (v28 != v14)
        {
          *v5 = *v27;
        }

        --v5;
        v14 = v27;
        v26 = v30;
      }

      while (v27 > v41);
      v14 = v27;
      v24 = __dst;
      v4 = v41;
    }
  }

  else
  {
    v13 = a2;
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v14 = &v4[v9];
    if (v7 >= 8 && v13 < v5)
    {
      while (1)
      {
        v15 = *v4;
        v16 = *v13;
        v17 = v15;
        [v16 mapID];
        v19 = v18;
        [v17 mapID];
        v21 = v20;

        if (v19 >= v21)
        {
          break;
        }

        v22 = v13;
        v23 = v6 == v13++;
        if (!v23)
        {
          goto LABEL_16;
        }

LABEL_17:
        ++v6;
        if (v4 >= v14 || v13 >= v5)
        {
          goto LABEL_19;
        }
      }

      v22 = v4;
      v23 = v6 == v4++;
      if (v23)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v6 = *v22;
      goto LABEL_17;
    }

LABEL_19:
    v24 = v6;
  }

LABEL_37:
  if (v24 != v4 || v24 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v24, v4, 8 * (v14 - v4));
  }

  return 1;
}

uint64_t *sub_252ACAE60@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_252ACBA4C(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_252E32AF4();
      swift_allocObject();
      v8 = sub_252E32AA4();
      if (a3 >= 0x7FFFFFFF)
      {
        sub_252E32CE4();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

char *sub_252ACAF28(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v19[2] = *MEMORY[0x277D85DE8];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_25296464C(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_25296464C(v7, v6);
    *v4 = xmmword_252E49110;
    sub_25296464C(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_252E32AB4() && __OFSUB__(v7, sub_252E32AE4()))
      {
LABEL_26:
        __break(1u);
      }

      sub_252E32AF4();
      swift_allocObject();
      v14 = sub_252E32A94();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_252ACB3CC(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_25296464C(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_252E49110;
    sub_25296464C(0, 0xC000000000000000);
    sub_252E32CC4();
    result = sub_252ACB3CC(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

_BYTE *sub_252ACB2CC@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_252ACBA4C(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_252ACBC0C(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_252ACBC88(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_252ACB360(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_252ACB3CC(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_252E32AB4();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_252E32AE4();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_252E32AD4();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

unint64_t sub_252ACB5E0(unint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_252E378C4();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
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

uint64_t sub_252ACB684@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_252E37A04();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(uint64_t a1)
{
  if (qword_27F53F320 != -1)
  {
    swift_once();
  }

  sub_252E37604();
  if (qword_27F542D48)
  {
    v1 = qword_27F542D48;
  }

  else
  {
    v2 = [objc_allocWithZone(type metadata accessor for MatterAccessoryManager()) init];
    v3 = qword_27F542D48;
    qword_27F542D48 = v2;
    v1 = v2;
  }

  sub_252E37614();
  return v1;
}

char *sub_252ACB7B8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v2 = a1;
  v3 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v3)
  {
    v39 = MEMORY[0x277D84F90];
    sub_2529AA3A0(0, v3, 0);
    v38 = v39;
    v5 = v2 + 64;
    result = sub_252E37834();
    v6 = result;
    v7 = 0;
    v8 = *(v2 + 36);
    v32 = v2 + 72;
    v33 = v3;
    v34 = v8;
    v35 = v2 + 64;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v2 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_23;
      }

      if (v8 != *(v2 + 36))
      {
        goto LABEL_24;
      }

      v37 = v7;
      v11 = *(v2 + 56);
      v12 = (*(v2 + 48) + 16 * v6);
      v13 = v2;
      v14 = *v12;
      v15 = v12[1];
      v16 = *(v11 + 8 * v6);

      v17 = a2(v14, v15, v16);
      v19 = v18;

      v20 = v38;
      v22 = *(v38 + 16);
      v21 = *(v38 + 24);
      if (v22 >= v21 >> 1)
      {
        result = sub_2529AA3A0((v21 > 1), v22 + 1, 1);
        v20 = v38;
      }

      *(v20 + 16) = v22 + 1;
      v23 = v20 + 16 * v22;
      *(v23 + 32) = v17;
      *(v23 + 40) = v19;
      v9 = 1 << *(v13 + 32);
      if (v6 >= v9)
      {
        goto LABEL_25;
      }

      v5 = v35;
      v24 = *(v35 + 8 * v10);
      if ((v24 & (1 << v6)) == 0)
      {
        goto LABEL_26;
      }

      v2 = v13;
      v38 = v20;
      v25 = *(v13 + 36);
      v8 = v34;
      if (v34 != v25)
      {
        goto LABEL_27;
      }

      v26 = v24 & (-2 << (v6 & 0x3F));
      if (v26)
      {
        v9 = __clz(__rbit64(v26)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v27 = v10 << 6;
        v28 = v10 + 1;
        v29 = (v32 + 8 * v10);
        while (v28 < (v9 + 63) >> 6)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            result = sub_252ACBF38(v6, v34, 0);
            v9 = __clz(__rbit64(v30)) + v27;
            goto LABEL_4;
          }
        }

        result = sub_252ACBF38(v6, v34, 0);
      }

LABEL_4:
      v7 = v37 + 1;
      v6 = v9;
      if (v37 + 1 == v33)
      {
        return v38;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t sub_252ACBA4C(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_252ACBB04(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_252E32AF4();
      swift_allocObject();
      sub_252E32AC4();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_252E32CE4();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *sub_252ACBBA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_252ACB360(sub_252ACBD0C, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_252ACBC0C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_252E32AF4();
  swift_allocObject();
  result = sub_252E32AA4();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_252E32CE4();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_252ACBC88(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_252E32AF4();
  swift_allocObject();
  result = sub_252E32AA4();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_252ACBD80()
{
  result = qword_27F542DD0;
  if (!qword_27F542DD0)
  {
    result = swift_getWitnessTable(byte_252E4EE04, &type metadata for HomeIntentProducer.GetDeviceInfoIntent, v0, v1);
    atomic_store(result, &qword_27F542DD0);
  }

  return result;
}

unint64_t sub_252ACBDD4()
{
  result = qword_27F542DD8;
  if (!qword_27F542DD8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F542DE0, &qword_252E491A8);
    v4[0] = sub_252ACBE88(&qword_27F542DE8, type metadata accessor for DeviceInfoResult, byte_252E5F460);
    result = swift_getWitnessTable(MEMORY[0x277CEB148], v3, v4);
    atomic_store(result, &qword_27F542DD8);
  }

  return result;
}

uint64_t sub_252ACBE88(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252ACBF38(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_252ACBF44(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25293B808;

  return sub_252AC0624(a1, v4);
}

uint64_t sub_252ACBFF8(uint64_t a1)
{
  v1 = 0xD000000000000010;
  v2 = *(a1 + 16);
  v44 = v2;
  v45 = 0;
  v41 = a1;
  if (v2)
  {
    v3 = 0;
    v42 = a1 + 32;
    v46 = 0x8000000252E65390;
    v43 = MEMORY[0x277D84F90];
    v4 = 0x74614D7361696C61;
    do
    {
      if (v3 >= v2)
      {
        goto LABEL_59;
      }

      v5 = (v42 + 504 * v3);
      memcpy(v49, v5, sizeof(v49));
      if (__OFADD__(v3++, 1))
      {
        goto LABEL_60;
      }

      v7 = v49[51];
      v1 = *(v49[51] + 16);
      if (v1)
      {
        sub_2529353AC(v49, v48);
        v2 = (v7 + 56);
        v8 = -v1;
        v1 = -1;
        while (1)
        {
          if (v8 + v1 == -1)
          {
            goto LABEL_3;
          }

          if (++v1 >= *(v7 + 16))
          {
            break;
          }

          if (*v2 > 2u)
          {

            goto LABEL_19;
          }

          v2 += 32;
          v9 = sub_252E37DB4();

          if (v9)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      if (*(v49[19] + 16))
      {
        memcpy(v48, v5, sizeof(v48));
        sub_2529353AC(v49, v47);
        if (sub_252A13BEC())
        {
LABEL_3:
          sub_252935408(v49);
        }

        else
        {
LABEL_19:
          v10 = v43;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v50 = v43;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_2529AA480(0, *(v43 + 16) + 1, 1);
            v10 = v50;
          }

          v13 = *(v10 + 16);
          v12 = *(v10 + 24);
          if (v13 >= v12 >> 1)
          {
            sub_2529AA480((v12 > 1), v13 + 1, 1);
            v10 = v50;
          }

          *(v10 + 16) = v13 + 1;
          v43 = v10;
          memcpy((v10 + 504 * v13 + 32), v49, 0x1F8uLL);
        }

        v2 = v44;
      }
    }

    while (v3 != v2);
    v14 = 0;
    v1 = v41 + 32;
    v4 = MEMORY[0x277D84F90];
LABEL_25:
    v15 = (v1 + 504 * v14);
    v16 = v14;
    while (1)
    {
      if (v16 >= v2)
      {
        goto LABEL_61;
      }

      memcpy(v49, v15, sizeof(v49));
      v14 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_62;
      }

      if (*(v49[17] + 16))
      {
        v17 = memcpy(v48, v15, sizeof(v48));
        MEMORY[0x28223BE20](v17);
        v40 = v48;
        sub_2529353AC(v49, v47);
        v18 = v45;
        v19 = sub_2529EDA1C(sub_25295AD78, v39, v43);
        v45 = v18;
        if ((v19 & 1) == 0)
        {
          v20 = swift_isUniquelyReferenced_nonNull_native();
          v50 = v4;
          if ((v20 & 1) == 0)
          {
            sub_2529AA480(0, *(v4 + 16) + 1, 1);
            v4 = v50;
          }

          v22 = *(v4 + 16);
          v21 = *(v4 + 24);
          if (v22 >= v21 >> 1)
          {
            sub_2529AA480((v21 > 1), v22 + 1, 1);
            v4 = v50;
          }

          *(v4 + 16) = v22 + 1;
          memcpy((v4 + 504 * v22 + 32), v49, 0x1F8uLL);
          v2 = v44;
          if (v14 == v44)
          {
LABEL_37:
            v1 = 0xD000000000000010;
            if (*(v4 + 16))
            {
              goto LABEL_38;
            }

LABEL_54:

            return MEMORY[0x277D84F90];
          }

          goto LABEL_25;
        }

        sub_252935408(v49);
        v2 = v44;
      }

      ++v16;
      v15 += 504;
      if (v14 == v2)
      {
        goto LABEL_37;
      }
    }
  }

  v4 = MEMORY[0x277D84F90];
  v43 = MEMORY[0x277D84F90];
  if (!*(MEMORY[0x277D84F90] + 16))
  {
    goto LABEL_54;
  }

LABEL_38:
  if (qword_27F53F520 != -1)
  {
    goto LABEL_65;
  }

  while (1)
  {
    v23 = sub_252E36AD4();
    __swift_project_value_buffer(v23, qword_27F544E08);
    v49[0] = 0;
    v49[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](v1 + 42, 0x8000000252E78F30);
    v24 = MEMORY[0x2530AD730](v43, &type metadata for HomeAutomationIntent);
    MEMORY[0x2530AD570](v24);

    MEMORY[0x2530AD570](v1 + 13, 0x8000000252E78F70);
    v25 = MEMORY[0x2530AD730](v4, &type metadata for HomeAutomationIntent);
    v27 = v26;

    MEMORY[0x2530AD570](v25, v27);

    sub_252CC3D90(v49[0], v49[1], v1 + 148, 0x8000000252E78F90);

    if (!v2)
    {
      break;
    }

    v28 = 0;
    v1 = v41 + 32;
    v29 = MEMORY[0x277D84F90];
    v4 = 504;
LABEL_41:
    v30 = (v1 + 504 * v28);
    v31 = v28;
    while (v31 < v2)
    {
      memcpy(v49, v30, sizeof(v49));
      v28 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        goto LABEL_64;
      }

      v32 = memcpy(v48, v30, sizeof(v48));
      MEMORY[0x28223BE20](v32);
      v4 = v39;
      v40 = v48;
      sub_2529353AC(v49, v47);
      v33 = v45;
      v34 = sub_2529EDA1C(sub_25295AD98, v39, v43);
      v45 = v33;
      if ((v34 & 1) == 0)
      {
        v35 = swift_isUniquelyReferenced_nonNull_native();
        v50 = v29;
        if ((v35 & 1) == 0)
        {
          sub_2529AA480(0, *(v29 + 16) + 1, 1);
          v29 = v50;
        }

        v4 = 504;
        v37 = *(v29 + 16);
        v36 = *(v29 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_2529AA480((v36 > 1), v37 + 1, 1);
          v29 = v50;
        }

        *(v29 + 16) = v37 + 1;
        memcpy((v29 + 504 * v37 + 32), v49, 0x1F8uLL);
        v2 = v44;
        if (v28 != v44)
        {
          goto LABEL_41;
        }

        goto LABEL_56;
      }

      sub_252935408(v49);
      ++v31;
      v30 += 504;
      v2 = v44;
      if (v28 == v44)
      {
        goto LABEL_56;
      }
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    swift_once();
  }

  v29 = MEMORY[0x277D84F90];
LABEL_56:

  return v29;
}

uint64_t TemperatureSnippetModel.primaryText.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  sub_252E330E4();
  return v1;
}

void (*TemperatureSnippetModel.primaryText.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  *(v3 + 32) = sub_252E330D4();
  return sub_25292DC78;
}

uint64_t TemperatureSnippetModel.secondaryText.getter()
{
  type metadata accessor for TemperatureSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  sub_252E330E4();
  return v1;
}

uint64_t type metadata accessor for TemperatureSnippetModel(uint64_t a1)
{
  result = qword_27F542E50;
  if (!qword_27F542E50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_252ACC888@<D0>(_OWORD *a1@<X8>)
{
  type metadata accessor for TemperatureSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  sub_252E330E4();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_252ACC8F0(void *a1)
{
  type metadata accessor for TemperatureSnippetModel(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  return sub_252E330F4();
}

uint64_t TemperatureSnippetModel.secondaryText.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TemperatureSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  return sub_252E330F4();
}

void (*TemperatureSnippetModel.secondaryText.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for TemperatureSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  *(v3 + 32) = sub_252E330D4();
  return sub_252AA9630;
}

uint64_t TemperatureSnippetModel.temperature.getter()
{
  type metadata accessor for TemperatureSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  sub_252E330E4();
  return v1;
}

double sub_252ACCAA8@<D0>(_OWORD *a1@<X8>)
{
  type metadata accessor for TemperatureSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  sub_252E330E4();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_252ACCB10(void *a1)
{
  type metadata accessor for TemperatureSnippetModel(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  return sub_252E330F4();
}

uint64_t TemperatureSnippetModel.temperature.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TemperatureSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  return sub_252E330F4();
}

void (*TemperatureSnippetModel.temperature.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for TemperatureSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  *(v3 + 32) = sub_252E330D4();
  return sub_252AA9630;
}

uint64_t TemperatureSnippetModel.isHeating.getter()
{
  type metadata accessor for TemperatureSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B68, &qword_252E49240);
  sub_252E330E4();
  return v1;
}

void *sub_252ACCCC8@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for TemperatureSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B68, &qword_252E49240);
  result = sub_252E330E4();
  *a1 = v3;
  return result;
}

uint64_t sub_252ACCD30(char *a1)
{
  type metadata accessor for TemperatureSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B68, &qword_252E49240);
  return sub_252E330F4();
}

uint64_t TemperatureSnippetModel.isHeating.setter(char a1)
{
  type metadata accessor for TemperatureSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B68, &qword_252E49240);
  return sub_252E330F4();
}

void (*TemperatureSnippetModel.isHeating.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for TemperatureSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B68, &qword_252E49240);
  *(v3 + 32) = sub_252E330D4();
  return sub_252AA9630;
}

void *TemperatureSnippetModel.punchOut.getter()
{
  type metadata accessor for TemperatureSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B70, &qword_252E41BF8);
  return sub_252E330E4();
}

void *sub_252ACCED8()
{
  type metadata accessor for TemperatureSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B70, &qword_252E41BF8);
  return sub_252E330E4();
}

uint64_t sub_252ACCF30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  sub_252ACD0DC(a1, &v9 - v6);
  sub_252ACD0DC(v7, v5);
  type metadata accessor for TemperatureSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B70, &qword_252E41BF8);
  sub_252E330F4();
  return sub_25293EF40(v7);
}

uint64_t TemperatureSnippetModel.punchOut.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  MEMORY[0x28223BE20](v2 - 8);
  sub_252ACD0DC(a1, &v5 - v3);
  type metadata accessor for TemperatureSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B70, &qword_252E41BF8);
  sub_252E330F4();
  return sub_25293EF40(a1);
}

uint64_t sub_252ACD0DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void (*TemperatureSnippetModel.punchOut.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for TemperatureSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B70, &qword_252E41BF8);
  *(v3 + 32) = sub_252E330D4();
  return sub_252AA9630;
}

uint64_t sub_252ACD1F4()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252ACD2F8(uint64_t a1)
{
  sub_252E37044();
}

uint64_t sub_252ACD3E8(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

unint64_t sub_252ACD4E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_252ACF29C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_252ACD518(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000657275;
  v4 = 0x74617265706D6574;
  v5 = 0xED00007478655479;
  v6 = 0x7261646E6F636573;
  v7 = 0xE900000000000067;
  v8 = 0x6E69746165487369;
  if (v2 != 3)
  {
    v8 = 0x74754F68636E7570;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x547972616D697270;
    v3 = 0xEB00000000747865;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_252ACD5D8()
{
  v1 = *v0;
  v2 = 0x74617265706D6574;
  v3 = 0x7261646E6F636573;
  v4 = 0x6E69746165487369;
  if (v1 != 3)
  {
    v4 = 0x74754F68636E7570;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x547972616D697270;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_252ACD694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_252ACF29C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_252ACD6C8(uint64_t a1)
{
  v2 = sub_252ACE0DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252ACD704(uint64_t a1)
{
  v2 = sub_252ACE0DC();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::String __swiftcall TemperatureSnippetModel.responseViewId()()
{
  v0 = 0x8000000252E79040;
  v1 = 0xD000000000000019;
  result._object = v0;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t TemperatureSnippetModel.init(primaryText:temperature:secondaryText:isHeating:punchOut:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v29 = a8;
  v28 = a7;
  v26 = a5;
  v27 = a6;
  v22 = a3;
  v23 = a4;
  v24 = a1;
  v25 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - v14;
  v16 = type metadata accessor for TemperatureSnippetModel(0);
  v30 = 0;
  v31 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  sub_252E330C4();
  v17 = *(v16 + 24);
  v30 = 0;
  v31 = 0;
  sub_252E330C4();
  LOBYTE(v30) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5410E8, &qword_252E403C0);
  sub_252E330C4();
  v18 = sub_252E32CB4();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  sub_252ACD0DC(v15, v13);
  sub_252E330C4();
  sub_25293EF40(v15);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  (*(*(v19 - 8) + 8))(a9 + v17, v19);
  v30 = v22;
  v31 = v23;
  sub_252E330C4();
  v30 = v24;
  v31 = v25;
  sub_252E330C4();
  v30 = v26;
  v31 = v27;
  sub_252E330F4();
  LOBYTE(v30) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B68, &qword_252E49240);
  sub_252E330F4();
  v20 = v29;
  sub_252ACD0DC(v29, v15);
  sub_252ACD0DC(v15, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B70, &qword_252E41BF8);
  sub_252E330F4();
  sub_25293EF40(v20);
  return sub_25293EF40(v15);
}

uint64_t TemperatureSnippetModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542E08, &qword_252E49248);
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x28223BE20](v3);
  v55 = &v41 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  v6 = MEMORY[0x28223BE20](v5);
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v41 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v41 - v11;
  v13 = type metadata accessor for TemperatureSnippetModel(0);
  v14 = (v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v14[7];
  v53 = 0;
  v54 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  v49 = v17;
  sub_252E330C4();
  v18 = v14[8];
  v53 = 0;
  v54 = 0;
  v50 = v18;
  sub_252E330C4();
  v19 = v14[9];
  LOBYTE(v53) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5410E8, &qword_252E403C0);
  v52 = v19;
  sub_252E330C4();
  v20 = v14[10];
  v21 = sub_252E32CB4();
  v22 = *(v21 - 8);
  v23 = *(v22 + 56);
  v24 = v22 + 56;
  v23(v12, 1, 1, v21);
  sub_252ACD0DC(v12, v10);
  v51 = v20;
  sub_252E330C4();
  sub_25293EF40(v12);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252ACE0DC();
  v25 = v48;
  sub_252E37F74();
  if (v25)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
    v28 = *(*(v27 - 8) + 8);
    v28(&v16[v49], v27);
    v28(&v16[v50], v27);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B68, &qword_252E49240);
    (*(*(v29 - 8) + 8))(&v16[v52], v29);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B70, &qword_252E41BF8);
    return (*(*(v30 - 8) + 8))(&v16[v51], v30);
  }

  else
  {
    v41 = v24;
    v42 = v23;
    v48 = v21;
    v43 = v12;
    v26 = v45;
    LOBYTE(v53) = 1;
    v53 = sub_252E37C04();
    v54 = v31;
    sub_252E330C4();
    LOBYTE(v53) = 2;
    v32 = sub_252E37C04();
    v33 = v26;
    v34 = v43;
    v53 = v32;
    v54 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
    sub_252E330F4();
    LOBYTE(v53) = 0;
    v53 = sub_252E37C04();
    v54 = v36;
    sub_252E330F4();
    LOBYTE(v53) = 3;
    v37 = sub_252E37C14() & 1;
    v38 = v46;
    LOBYTE(v53) = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B68, &qword_252E49240);
    sub_252E330F4();
    LOBYTE(v53) = 4;
    sub_252ACEF98(&qword_27F542E18, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
    v39 = v47;
    sub_252E37C64();
    v42(v33, 0, 1, v48);
    sub_252ACD0DC(v33, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B70, &qword_252E41BF8);
    sub_252E330F4();
    sub_25293EF40(v33);
    (*(v38 + 8))(v55, v39);
    sub_252ACE130(0, v44);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_252ACE194(0);
  }
}

unint64_t sub_252ACE0DC()
{
  result = qword_27F542E10;
  if (!qword_27F542E10)
  {
    result = swift_getWitnessTable(a5P, &type metadata for TemperatureSnippetModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F542E10);
  }

  return result;
}

uint64_t sub_252ACE130(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TemperatureSnippetModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252ACE194(uint64_t a1)
{
  v2 = type metadata accessor for TemperatureSnippetModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TemperatureSnippetModel.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  MEMORY[0x28223BE20](v4);
  v6 = v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542E20, &qword_252E49250);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252ACE0DC();
  sub_252E37F84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  sub_252E330E4();
  LOBYTE(v19) = 1;
  v11 = v18;
  sub_252E37CF4();
  if (v11)
  {
    (*(v8 + 8))(v10, v7);
  }

  else
  {
    v15[2] = v4;
    v16 = v8;
    v17 = v6;

    v18 = type metadata accessor for TemperatureSnippetModel(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
    v15[1] = v2;
    sub_252E330E4();
    v20 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    sub_252ACE638(&qword_27F5400C8, &unk_27F541300, &qword_252E3C100, MEMORY[0x277D837D8]);
    sub_252E37D54();

    sub_252E330E4();
    v20 = 0;
    sub_252E37D54();
    v13 = v17;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B68, &qword_252E49240);
    sub_252E330E4();
    v20 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5410E8, &qword_252E403C0);
    sub_252ACE638(&qword_27F542E28, &qword_27F5410E8, &qword_252E403C0, MEMORY[0x277D839B8]);
    sub_252E37D54();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B70, &qword_252E41BF8);
    sub_252E330E4();
    LOBYTE(v19) = 4;
    sub_252ACE6A0();
    sub_252E37D54();
    v14 = v16;
    sub_25293EF40(v13);
    return (*(v14 + 8))(v10, v7);
  }
}

uint64_t sub_252ACE638(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    v8 = a4;
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_252ACE6A0()
{
  result = qword_27F542E30;
  if (!qword_27F542E30)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540370, &qword_252E3C450);
    v4[0] = sub_252ACEF98(&qword_27F542E38, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27F542E30);
  }

  return result;
}

unint64_t TemperatureSnippetModel.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v27 - v2;
  v4 = sub_252E32CB4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v27 - v9;
  v31 = 0xD000000000000018;
  v32 = 0x8000000252E79060;
  v30[0] = 0;
  v30[1] = 0xE000000000000000;
  sub_252E379F4();

  strcpy(v30, "primaryText: ");
  HIWORD(v30[1]) = -4864;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  sub_252E330E4();
  MEMORY[0x2530AD570](v28, v29);

  MEMORY[0x2530AD570](8236, 0xE200000000000000);
  MEMORY[0x2530AD570](v30[0], v30[1]);

  v30[0] = 0;
  v30[1] = 0xE000000000000000;
  MEMORY[0x2530AD570](0x6E69746165487369, 0xEB00000000203A67);
  type metadata accessor for TemperatureSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B68, &qword_252E49240);
  sub_252E330E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5410E8, &qword_252E403C0);
  sub_252E37AE4();
  MEMORY[0x2530AD570](8236, 0xE200000000000000);
  MEMORY[0x2530AD570](v30[0], v30[1]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  sub_252E330E4();
  v11 = v30[1];
  if (v30[1])
  {
    v27[1] = v0;
    v12 = v3;
    v13 = v5;
    v14 = v4;
    v15 = v8;
    v16 = v10;
    v17 = v30[0];
    v30[0] = 0;
    v30[1] = 0xE000000000000000;
    sub_252E379F4();

    v30[0] = 0xD000000000000011;
    v30[1] = 0x8000000252E77640;
    v18 = v17;
    v10 = v16;
    v8 = v15;
    v4 = v14;
    v5 = v13;
    v3 = v12;
    MEMORY[0x2530AD570](v18, v11);

    MEMORY[0x2530AD570](v30[0], v30[1]);
  }

  sub_252E330E4();
  v19 = v30[1];
  if (v30[1])
  {
    v20 = v30[0];
    v30[0] = 0;
    v30[1] = 0xE000000000000000;
    sub_252E379F4();

    v30[0] = 0x7265706D6574202CLL;
    v30[1] = 0xEF203A6572757461;
    MEMORY[0x2530AD570](v20, v19);

    MEMORY[0x2530AD570](v30[0], v30[1]);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B70, &qword_252E41BF8);
  sub_252E330E4();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_25293EF40(v3);
  }

  else
  {
    (*(v5 + 32))(v10, v3, v4);
    sub_252E32C84();
    v21 = sub_252E32C64();
    v23 = v22;
    v24 = *(v5 + 8);
    v24(v8, v4);
    v30[0] = v21;
    v30[1] = v23;

    LOBYTE(v21) = sub_252E37144();

    if (v21)
    {
      sub_252ACECB0(v25);
    }

    v28 = 0x74756F68636E7570;
    v29 = 0xEA0000000000203ALL;
    MEMORY[0x2530AD570](v30[0], v30[1]);

    MEMORY[0x2530AD570](8236, 0xE200000000000000);
    MEMORY[0x2530AD570](v28, v29);

    v24(v10, v4);
  }

  MEMORY[0x2530AD570](41, 0xE100000000000000);
  return v31;
}

uint64_t sub_252ACECB0(uint64_t a1)
{
  v2 = v1[1];
  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((*v1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if ((v2 & 0xF00000000000000) == 0)
  {
    __break(1u);
    return MEMORY[0x2821FBE70](a1);
  }

LABEL_5:
  a1 = sub_252E37074();

  return MEMORY[0x2821FBE70](a1);
}

uint64_t TemperatureSnippetModel.stringId.getter()
{
  sub_252E379F4();

  strcpy(v7, "#primaryText: ");
  HIBYTE(v7[1]) = -18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  sub_252E330E4();
  MEMORY[0x2530AD570](v6[0], v6[1]);

  sub_252E379F4();

  v6[0] = 0xD000000000000010;
  v6[1] = 0x8000000252E77680;
  type metadata accessor for TemperatureSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  sub_252E330E4();
  if (v5)
  {
    v0 = v4;
  }

  else
  {
    v0 = 7104878;
  }

  if (v5)
  {
    v1 = v5;
  }

  else
  {
    v1 = 0xE300000000000000;
  }

  MEMORY[0x2530AD570](v0, v1);

  MEMORY[0x2530AD570](v6[0], v6[1]);

  strcpy(v6, "#isHeating: ");
  BYTE5(v6[1]) = 0;
  HIWORD(v6[1]) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B68, &qword_252E49240);
  sub_252E330E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5410E8, &qword_252E403C0);
  v2 = sub_252E36F94();
  MEMORY[0x2530AD570](v2);

  MEMORY[0x2530AD570](v6[0], v6[1]);

  return v7[0];
}

uint64_t sub_252ACEF98(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void sub_252ACF038(uint64_t a1)
{
  sub_252ACF134();
  if (v1 <= 0x3F)
  {
    sub_25293017C(319, &qword_27F540120, &unk_27F541300, &qword_252E3C100);
    if (v2 <= 0x3F)
    {
      sub_25293017C(319, &qword_27F542E60, &qword_27F5410E8, &qword_252E403C0);
      if (v3 <= 0x3F)
      {
        sub_25293017C(319, &qword_27F542E68, &qword_27F540370, &qword_252E3C450);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_252ACF134()
{
  if (!qword_27F540118)
  {
    v0 = sub_252E33114();
    if (!v1)
    {
      atomic_store(v0, &qword_27F540118);
    }
  }
}

unint64_t sub_252ACF198()
{
  result = qword_27F542E70;
  if (!qword_27F542E70)
  {
    result = swift_getWitnessTable(byte_252E493CC, &type metadata for TemperatureSnippetModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F542E70);
  }

  return result;
}

unint64_t sub_252ACF1F0()
{
  result = qword_27F542E78;
  if (!qword_27F542E78)
  {
    result = swift_getWitnessTable(byte_252E49304, &type metadata for TemperatureSnippetModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F542E78);
  }

  return result;
}

unint64_t sub_252ACF248()
{
  result = qword_27F542E80;
  if (!qword_27F542E80)
  {
    result = swift_getWitnessTable(byte_252E4932C, &type metadata for TemperatureSnippetModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F542E80);
  }

  return result;
}

unint64_t sub_252ACF29C(uint64_t a1, uint64_t a2)
{
  v2 = sub_252E37B74();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_252ACF2E8(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = sub_252E34014();
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252ACF3B4, 0, 0);
}

uint64_t sub_252ACF3B4(uint64_t a1)
{
  v2 = v1[18];
  v3 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1);
  sub_252929E74((v3 + 288), (v1 + 2));

  v4 = v1[5];
  v5 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v4);
  v6 = (*(v5 + 120))(v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v1 + 2);
  if (v6)
  {
    sub_252929E74(v2 + 64, (v1 + 12));
    __swift_project_boxed_opaque_existential_1(v1 + 12, v1[15]);
    sub_252B03B94();
    v7 = swift_task_alloc();
    v1[23] = v7;
    *v7 = v1;
    v7[1] = sub_252ACF60C;
    v8 = v1[22];
    v9 = v1[17];
    v10 = v1[18];

    return sub_252A199A8(v9, &unk_252E49530, v10, &unk_252E49538, 0, v8, 0, 0);
  }

  else
  {
    sub_252929E74(v2 + 64, (v1 + 7));
    v12 = v1[10];
    __swift_project_boxed_opaque_existential_1(v1 + 7, v12);
    sub_252AD7CC4();
    v13 = swift_task_alloc();
    v1[25] = v13;
    *v13 = v1;
    v13[1] = sub_252ACF7F0;
    v14 = v1[21];
    v15 = v1[17];
    v16 = v1[18];

    return sub_252BDB88C(v15, &unk_252E49520, v16, v14, 0, 0, 0, v12);
  }
}

uint64_t sub_252ACF60C()
{
  v2 = *(*v1 + 176);
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 152);
  *(*v1 + 192) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_252ACF9D4;
  }

  else
  {
    v5 = sub_252ACF77C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252ACF77C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252ACF7F0()
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 152);
  *(*v1 + 208) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_252ACFA48;
  }

  else
  {
    v5 = sub_252ACF960;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252ACF960()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252ACF9D4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252ACFA48()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252ACFADC()
{
  v0[3] = *(v0[2] + 104);
  v4 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_252ACFBBC;
  v2 = MEMORY[0x277D84F90];

  return v4(0xD000000000000027, 0x8000000252E6DD70, v2);
}

uint64_t sub_252ACFBBC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252ACFD14, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_252ACFD14()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252ACFD98()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for HomeAutomationSnippetModels(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_252ACFE38(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for HomeAutomationUnsupportedOnDeviceErrorParameters(0);
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252ACFECC, 0, 0);
}

uint64_t sub_252ACFECC()
{
  v2 = v0[3];
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1((v0[2] + 16), *(v0[2] + 40));
  v3 = sub_252E36324();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  *(v1 + *(v2 + 20)) = 0;
  v4 = v1 + *(v2 + 24);
  *v4 = 0x4008000000000000;
  *(v4 + 8) = 0;
  v5 = sub_252C0B2D8();
  v0[5] = v5;
  v8 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_252AD0014;

  return v8(0xD000000000000027, 0x8000000252E6DD70, v5);
}

uint64_t sub_252AD0014(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_252AD01D4;
  }

  else
  {
    *(v4 + 64) = a1;
    v5 = sub_252AD0160;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252AD0160()
{
  sub_252AD078C(v0[4]);

  v1 = v0[1];
  v2 = v0[8];

  return v1(v2);
}

uint64_t sub_252AD01D4()
{
  sub_252AD078C(*(v0 + 32));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252AD0244()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_252AD02B8(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_252AD02E0, 0, 0);
}

uint64_t sub_252AD02E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542E88, &qword_252E49510);
  v0[5] = sub_252E34034();
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_252AD0398;
  v2 = v0[2];

  return sub_252ACF2E8(v2);
}

uint64_t sub_252AD0398()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_252AD04AC;
  }

  else
  {
    v2 = sub_252A8F3B0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252AD04AC()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252AD0530()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542E88, &qword_252E49510);
  v1 = sub_252E34024();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_252AD05A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for ShowHomeUnsupportedValueFlowStrategy();
  *v8 = v4;
  v8[1] = sub_25293B808;

  return MEMORY[0x2821B9E00](a1, a2, v9, a4);
}

uint64_t sub_252AD066C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B958;

  return sub_252ACFE38(v0);
}

uint64_t sub_252AD06FC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B7BC;

  return sub_252ACFABC(v0);
}

uint64_t sub_252AD078C(uint64_t a1)
{
  v2 = type metadata accessor for HomeAutomationUnsupportedOnDeviceErrorParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252AD07E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[38] = a6;
  v7[39] = a7;
  v7[36] = a4;
  v7[37] = a5;
  return MEMORY[0x2822009F8](sub_252AD080C, 0, 0);
}

char *sub_252AD080C()
{
  v118 = v0;
  v1 = type metadata accessor for HomeStore(0);
  v2 = static HomeStore.shared.getter(v1);
  v3 = v2[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v3 != 2 && (v3 & 1) == 0 || (v4 = [*(v0 + 288) filters]) == 0)
  {

    goto LABEL_7;
  }

  v5 = v4;
  v6 = *(v0 + 288);
  type metadata accessor for HomeFilter();
  v7 = sub_252E37264();

  v8 = [v6 userTask];
  v9 = HomeStore.accessories(matching:supporting:)(v7, v8);
  LOBYTE(v6) = v10;

  if (v6)
  {
    sub_252929F10(v9, 1);
LABEL_7:
    v11 = *(v0 + 296);
    v12 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
    v13 = OBJC_IVAR___ControlHomeIntentResponse_code;
    swift_beginAccess();
    *&v12[v13] = 102;
    [v12 setUserActivity_];
    type metadata accessor for HomeEntityResponse();
    v14 = sub_252E37254();
    [v12 setEntityResponses_];

    v11(v12);
    goto LABEL_8;
  }

  if (v9 >> 62)
  {
LABEL_95:
    v17 = sub_252E378C4();
  }

  else
  {
    v17 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = 0;
  v19 = v9 & 0xC000000000000001;
  do
  {
    v20 = v18;
    if (v17 == v18)
    {
      break;
    }

    if (v19)
    {
      v21 = MEMORY[0x2530ADF00](v18, v9);
      if (__OFADD__(v20, 1))
      {
LABEL_22:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v18 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
        goto LABEL_95;
      }

      v21 = *(v9 + 8 * v18 + 32);

      if (__OFADD__(v20, 1))
      {
        goto LABEL_22;
      }
    }

    v22 = (*(*v21 + 256))();

    v18 = v20 + 1;
  }

  while (v22 != 3);
  v23 = 0;
  do
  {
    v24 = v23;
    if (v17 == v23)
    {
      break;
    }

    if (v19)
    {
      v25 = MEMORY[0x2530ADF00](v23, v9);
      if (__OFADD__(v24, 1))
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v23 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_93;
      }

      v25 = *(v9 + 8 * v23 + 32);

      if (__OFADD__(v24, 1))
      {
LABEL_32:
        __break(1u);
        break;
      }
    }

    v26 = (*(*v25 + 256))();

    v23 = v24 + 1;
  }

  while (v26 != 29);
  if (!v17)
  {
LABEL_48:
    v114 = 1;
    goto LABEL_49;
  }

  v27 = 0;
  while (v19)
  {
    MEMORY[0x2530ADF00](v27, v9);
    v28 = __OFADD__(v27++, 1);
    if (v28)
    {
      goto LABEL_46;
    }

LABEL_38:
    v29 = sub_252D4F520();
    v30 = *(v29 + 2);
    v31 = 32;
    while (v30)
    {
      v32 = *&v29[v31];
      v31 += 8;
      --v30;
      if (v32 == 6)
      {
        goto LABEL_47;
      }
    }

    if (v27 == v17)
    {
      goto LABEL_48;
    }
  }

  if (v27 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_94;
  }

  v28 = __OFADD__(v27++, 1);
  if (!v28)
  {
    goto LABEL_38;
  }

LABEL_46:
  __break(1u);
LABEL_47:

  v114 = 0;
LABEL_49:
  sub_252929F10(v9, 0);
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v112 = *(v0 + 288);
  v33 = sub_252E36AD4();
  __swift_project_value_buffer(v33, qword_27F544C70);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000014, 0x8000000252E6D370);
  if (v17 == v20)
  {
    v34 = 0x65736C6166;
  }

  else
  {
    v34 = 1702195828;
  }

  if (v17 == v20)
  {
    v35 = 0xE500000000000000;
  }

  else
  {
    v35 = 0xE400000000000000;
  }

  MEMORY[0x2530AD570](v34, v35);

  MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E6D390);
  if (v17 == v24)
  {
    v36 = 0x65736C6166;
  }

  else
  {
    v36 = 1702195828;
  }

  if (v17 == v24)
  {
    v37 = 0xE500000000000000;
  }

  else
  {
    v37 = 0xE400000000000000;
  }

  MEMORY[0x2530AD570](v36, v37);

  MEMORY[0x2530AD570](0xD000000000000021, 0x8000000252E79130);
  if (v114)
  {
    v38 = 0x65736C6166;
  }

  else
  {
    v38 = 1702195828;
  }

  if (v114)
  {
    v39 = 0xE500000000000000;
  }

  else
  {
    v39 = 0xE400000000000000;
  }

  MEMORY[0x2530AD570](v38, v39);

  sub_252CC3D90(0, 0xE000000000000000, 0xD0000000000000A1, 0x8000000252E79160);

  v40 = sub_252C42B30(v112);
  if (!v40)
  {
    goto LABEL_98;
  }

  v41 = v40;
  v42 = v40 >> 62;
  if (v40 >> 62)
  {
    if (!sub_252E378C4())
    {
      goto LABEL_97;
    }

LABEL_72:
    v43 = sub_252A1F47C();
    if (!v43)
    {
      v53 = *(v0 + 296);

      sub_252CC4050(0xD00000000000003ELL, 0x8000000252E6F2A0, 0xD0000000000000A1, 0x8000000252E79160, 0xD000000000000021, 0x8000000252E68B10, 79);
      type metadata accessor for ControlHomeIntentResponse.Builder();
      v54 = swift_allocObject();
      v55 = MEMORY[0x277D84F90];
      *(v54 + 16) = 5;
      *(v54 + 24) = v55;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CC0, &unk_252E3E530);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_252E3C290;
      type metadata accessor for HomeEntity.Builder();
      swift_allocObject();
      v57.n128_f64[0] = HomeEntity.Builder.init()();
      v59 = (*(*v58 + 448))(v57);

      v60 = objc_allocWithZone(type metadata accessor for HomeEntityResponse());
      v61 = v59;
      v62 = sub_252E36F04();
      v63 = [v60 initWithIdentifier:0 displayString:v62];

      v64 = v63;
      [v64 setEntity_];
      type metadata accessor for HomeUserTaskResponse();
      v65 = sub_252E37254();
      [v64 setTaskResponses_];

      *(inited + 32) = v64;
      v66 = sub_25297D0C0(inited);

      swift_setDeallocating();
      v67 = sub_25298AB24(inited + 32);
      v12 = (*(*v66 + 176))(v67);

      v68 = v12;
      goto LABEL_99;
    }

    *(v0 + 248) = v43;
    sub_25297BC94(&unk_2864AC108);

    v44 = sub_252E36AC4();
    v45 = sub_252E374C4();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v117 = v113;
      *v46 = 136315394;
      swift_beginAccess();

      v48 = MEMORY[0x2530AD730](v47, &type metadata for AttributeKind);
      v50 = v49;

      v51 = sub_252BE2CE0(v48, v50, &v117);

      *(v46 + 4) = v51;
      *(v46 + 12) = 2080;
      if (v42)
      {
        v52 = sub_252E378C4();
      }

      else
      {
        v52 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v69 = MEMORY[0x277D84F90];
      if (v52)
      {
        v110 = v45;
        v111 = v46;
        v116 = MEMORY[0x277D84F90];
        result = sub_2529AA3A0(0, v52 & ~(v52 >> 63), 0);
        if (v52 < 0)
        {
          __break(1u);
          return result;
        }

        v70 = 0;
        v69 = v116;
        v115 = v41 & 0xC000000000000001;
        v71 = v41;
        do
        {
          if (v115)
          {
            MEMORY[0x2530ADF00](v70, v41);
          }

          else
          {
          }

          v72 = sub_252A96AFC();
          v74 = v73;

          v76 = *(v116 + 16);
          v75 = *(v116 + 24);
          if (v76 >= v75 >> 1)
          {
            sub_2529AA3A0((v75 > 1), v76 + 1, 1);
          }

          ++v70;
          *(v116 + 16) = v76 + 1;
          v77 = v116 + 16 * v76;
          *(v77 + 32) = v72;
          *(v77 + 40) = v74;
          v41 = v71;
        }

        while (v52 != v70);
        v46 = v111;
        v45 = v110;
      }

      v78 = MEMORY[0x2530AD730](v69, MEMORY[0x277D837D0]);
      v80 = v79;

      v81 = sub_252BE2CE0(v78, v80, &v117);

      *(v46 + 14) = v81;
      _os_log_impl(&dword_252917000, v44, v45, "Performing GetAttributeValueIntent with:\n   - attributeTypes: %s\n   - deviceEntities %s", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530AED00](v113, -1, -1);
      MEMORY[0x2530AED00](v46, -1, -1);
    }

    swift_beginAccess();
    v82 = *(v0 + 248);
    *(v0 + 320) = v82;

    v83 = sub_252C4E384();
    v85 = v84;
    v86 = ControlHomeIntent.roomNames()();
    v87 = sub_252C4D390();
    *(v0 + 256) = v82;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540D00, &unk_252E3E580);
    swift_allocObject();
    v88 = sub_252E36754();
    *(v0 + 328) = v88;
    *(v0 + 264) = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CE0, &unk_252E3E550);
    swift_allocObject();
    v89 = sub_252E36754();
    *(v0 + 336) = v89;
    *(v0 + 216) = v83;
    *(v0 + 224) = v85;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CE8, &unk_252E3F910);
    swift_allocObject();
    v90 = sub_252E36754();
    *(v0 + 344) = v90;
    *(v0 + 272) = v86;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CF0, &unk_252E3E560);
    swift_allocObject();
    v91 = sub_252E36754();
    *(v0 + 352) = v91;
    *(v0 + 280) = v87;
    swift_allocObject();
    v92 = sub_252E36754();
    *(v0 + 360) = v92;
    *(v0 + 232) = 0x401C000000000000;
    *(v0 + 240) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CF8, &qword_252E3F920);
    swift_allocObject();
    v93 = sub_252E36754();
    *(v0 + 368) = v93;
    *(v0 + 16) = v88;
    *(v0 + 24) = v89;
    *(v0 + 32) = v90;
    *(v0 + 40) = v91;
    *(v0 + 48) = v92;
    *(v0 + 56) = v93;
    v94 = swift_task_alloc();
    *(v0 + 376) = v94;
    *v94 = v0;
    v94[1] = sub_252AD16E0;
    v95 = *(v0 + 288);

    return sub_2529BC1C0((v0 + 16), v95, 0, 1);
  }

  else
  {
    if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_72;
    }

LABEL_97:

LABEL_98:
    v53 = *(v0 + 296);
    sub_252CC4050(0xD000000000000024, 0x8000000252E6F1F0, 0xD0000000000000A1, 0x8000000252E79160, 0xD000000000000021, 0x8000000252E68B10, 69);
    type metadata accessor for ControlHomeIntentResponse.Builder();
    v96 = swift_allocObject();
    v97 = MEMORY[0x277D84F90];
    *(v96 + 16) = 102;
    *(v96 + 24) = v97;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CC0, &unk_252E3E530);
    v98 = swift_initStackObject();
    *(v98 + 16) = xmmword_252E3C290;
    type metadata accessor for HomeEntity.Builder();
    swift_allocObject();
    v99.n128_f64[0] = HomeEntity.Builder.init()();
    v101 = (*(*v100 + 448))(v99);

    v102 = objc_allocWithZone(type metadata accessor for HomeEntityResponse());
    v103 = v101;
    v104 = sub_252E36F04();
    v105 = [v102 initWithIdentifier:0 displayString:v104];

    v106 = v105;
    [v106 setEntity_];
    type metadata accessor for HomeUserTaskResponse();
    v107 = sub_252E37254();
    [v106 setTaskResponses_];

    *(v98 + 32) = v106;
    v108 = sub_25297D0C0(v98);

    swift_setDeallocating();
    v109 = sub_25298AB24(v98 + 32);
    v12 = (*(*v108 + 176))(v109);

    v68 = v12;
LABEL_99:
    v53(v68);
LABEL_8:

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_252AD16E0(uint64_t a1)
{
  *(*v1 + 384) = a1;

  return MEMORY[0x2822009F8](sub_252AD189C, 0, 0);
}

uint64_t sub_252AD189C()
{
  v1 = *(v0 + 384);
  (*(v0 + 296))(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252AD1944(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CB8, &qword_252E3F8D0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v14 - v8;
  v10 = sub_252E37344();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a1;
  v11[5] = a2;
  v11[6] = a3;
  v11[7] = v3;
  v12 = a1;

  sub_2529D89C4(0, 0, v9, &unk_252E49590, v11);
}

uint64_t sub_252AD1A70()
{
  type metadata accessor for GetClimateControlAppIntentHandleDelegate();

  return swift_allocObject();
}

uint64_t sub_252AD1AA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_25293B808;

  return sub_252AD07E8(a1, v4, v5, v6, v7, v9, v8);
}

void *sub_252AD1B74(void *key, uint64_t a2, char a3, unint64_t a4, char a5)
{
  v6 = v5;
  v10 = key;
  if (objc_getAssociatedObject(v6, key))
  {
    sub_252E377F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
  }

  v36[0] = v34;
  v36[1] = v35;
  if (*(&v35 + 1))
  {
    type metadata accessor for HomeAutomationHumidityResponses();
    if (swift_dynamicCast())
    {
      return v33;
    }
  }

  else
  {
    sub_252982F10(v36);
  }

  v12 = v6[3];
  *&v36[0] = MEMORY[0x277D84F90];
  if (v12 >> 62)
  {
    goto LABEL_43;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v13)
  {
LABEL_10:
    v27 = v10;
    v28 = v6;
    v14 = 0;
    v30 = v12 & 0xFFFFFFFFFFFFFF8;
    v31 = v12 & 0xC000000000000001;
    v26 = v12;
    v29 = v12 + 32;
    v15 = *&a2;
    v16 = *&a4;
    do
    {
      if (v31)
      {
        a2 = MEMORY[0x2530ADF00](v14, v26);
        v17 = __OFADD__(v14++, 1);
        if (v17)
        {
          goto LABEL_41;
        }
      }

      else
      {
        if (v14 >= *(v30 + 16))
        {
          goto LABEL_42;
        }

        a2 = *(v29 + 8 * v14);

        v17 = __OFADD__(v14++, 1);
        if (v17)
        {
          goto LABEL_41;
        }
      }

      v10 = v13;
      a4 = *(a2 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
      if (a4 >> 62)
      {
        v18 = sub_252E378C4();
      }

      else
      {
        v18 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v18)
      {
        v19 = 0;
        v6 = (a4 & 0xFFFFFFFFFFFFFF8);
        do
        {
          if ((a4 & 0xC000000000000001) != 0)
          {
            v20 = MEMORY[0x2530ADF00](v19, a4);
            v12 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              goto LABEL_39;
            }
          }

          else
          {
            if (v19 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_40;
            }

            v12 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
LABEL_39:
              __break(1u);
LABEL_40:
              __break(1u);
LABEL_41:
              __break(1u);
LABEL_42:
              __break(1u);
LABEL_43:
              v13 = sub_252E378C4();
              if (!v13)
              {
                goto LABEL_44;
              }

              goto LABEL_10;
            }
          }

          v21 = *(v20 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
          if (!v21 || (v22 = *(v21 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue)) == 0 || (*(v22 + 32) & 1) != 0 || (v23 = *(v22 + 24), a3 & 1 | (v23 >= v15)) && a5 & 1 | (v23 < v16))
          {

            sub_252E37A94();
            sub_252E37AC4();
            sub_252E37AD4();
            a4 = v36;
            sub_252E37AA4();
            goto LABEL_12;
          }

          ++v19;
        }

        while (v12 != v18);
      }

LABEL_12:
      v13 = v10;
    }

    while (v14 != v10);
    v24 = *&v36[0];
    v10 = v27;
    v6 = v28;
  }

  else
  {
LABEL_44:
    v24 = MEMORY[0x277D84F90];
  }

  type metadata accessor for HomeAutomationHumidityResponses();
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = v24;
  objc_setAssociatedObject(v6, v10, v11, 1);
  return v11;
}

uint64_t sub_252AD1EC8(uint64_t a1, unint64_t a2)
{
  v4 = sub_252E32A64();
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = 0;
    v18 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v19 = a2 & 0xFFFFFFFFFFFFFFLL;
    v10 = (v5 + 8);
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        sub_252E379E4();
        v14 = v13;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v20[0] = a1;
          v20[1] = v19;
          v12 = v20 + v9;
        }

        else
        {
          v11 = v18;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v11 = sub_252E37A84();
          }

          v12 = (v11 + v9);
        }

        if ((*v12 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        v16 = (__clz(*v12 ^ 0xFF) - 24);
        if (v16 > 2)
        {
          if (v16 == 3)
          {
            v14 = 3;
          }

          else
          {
            v14 = 4;
          }

          goto LABEL_15;
        }

        if (v16 == 1)
        {
LABEL_14:
          v14 = 1;
        }

        else
        {
          v14 = 2;
        }
      }

LABEL_15:
      sub_252E32A24();
      v15 = sub_252E32A54();
      (*v10)(v7, v4);
      if ((v15 & 1) == 0)
      {
        v9 += v14;
        if (v9 < v8)
        {
          continue;
        }
      }

      return v15 & 1;
    }
  }

  v15 = 0;
  return v15 & 1;
}

uint64_t sub_252AD20F4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_252AD2138(char *a1)
{
  v2 = sub_252E34164();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_252E341A4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  if ((*(v3 + 88))(v5, v2) == *MEMORY[0x277D5C160])
  {
    (*(v3 + 96))(v5, v2);
    (*(v7 + 32))(v9, v5, v6);
    strcpy(v21, ".uso parse: ");
    BYTE5(v21[1]) = 0;
    HIWORD(v21[1]) = -5120;
    sub_252E344B4();
    v19 = sub_252E34284();
    v20 = sub_252AD6720(&qword_27F542FF8, MEMORY[0x277D5DB08], MEMORY[0x277D5DB00]);
    __swift_allocate_boxed_opaque_existential_0(&v17);
    sub_252E34184();
    v10 = sub_252E344A4();
    v12 = v11;
    __swift_destroy_boxed_opaque_existential_1(&v17);
    MEMORY[0x2530AD570](v10, v12);

    v17 = v21[0];
    v18 = v21[1];
    v13 = sub_252E37184();
    (*(v3 + 8))(a1, v2);
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    v14 = *(v3 + 8);
    v14(v5, v2);
    v17 = 0;
    v18 = 0xE000000000000000;
    sub_252E37AE4();
    v13 = sub_252E37184();
    v14(a1, v2);
  }

  return v13;
}

uint64_t sub_252AD24A4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v3 = sub_252E37164();
  v5 = v4;
  sub_252947DBC();
  v6 = sub_252E377D4();
  v7 = *(v6 + 16);
  if (v7)
  {
    v19 = MEMORY[0x277D84F90];
    sub_2529AA3A0(0, v7, 0);
    v8 = (v6 + 56);
    do
    {
      v9 = *(v8 - 3);
      v10 = *(v8 - 2);
      v11 = *(v8 - 1);
      v12 = *v8;

      v13 = MEMORY[0x2530AD4C0](v9, v10, v11, v12);
      MEMORY[0x2530AD570](v13);

      v15 = *(v19 + 16);
      v14 = *(v19 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_2529AA3A0((v14 > 1), v15 + 1, 1);
      }

      *(v19 + 16) = v15 + 1;
      v16 = v19 + 16 * v15;
      *(v16 + 32) = v3;
      *(v16 + 40) = v5;
      v8 += 4;
      --v7;
    }

    while (v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
  sub_2529E6488(&qword_27F541110, &qword_27F540480, &qword_252E3C910, MEMORY[0x277D83958]);
  v17 = sub_252E36EA4();

  return v17;
}

uint64_t sub_252AD26C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_252E32A64();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1;
  v17 = a2;
  sub_252E32A44();
  sub_252947DBC();
  v8 = sub_252E37784();
  v9 = *(v5 + 8);
  v9(v7, v4);
  v16 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
  sub_2529E6488(&qword_27F541110, &qword_27F540480, &qword_252E3C910, MEMORY[0x277D83958]);
  v10 = sub_252E36EA4();
  v12 = v11;

  v16 = v10;
  v17 = v12;
  sub_252E32A34();
  v13 = sub_252E37784();
  v9(v7, v4);

  v16 = v13;
  sub_252E36EA4();

  v14 = sub_252E36FA4();

  return v14;
}

BOOL sub_252AD28DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_252E36FA4();
  sub_252947DBC();
  v4 = sub_252E37794();

  v5 = sub_252C75848(v4);

  sub_252E36FA4();
  v6 = sub_252E37794();

  v7 = sub_252C75848(v6);

  v8 = sub_252DFABF8(v5, v7);

  v9 = v8[2];
  if (v9)
  {
    if (v9 <= *(v7 + 16) >> 3)
    {
      sub_2529AAA28(v8);
    }

    else
    {
      v7 = sub_2529AB8D0(v8, v7);
    }

    v11 = *(v7 + 16);

    return v11 == 0;
  }

  else
  {

    return 0;
  }
}

void *sub_252AD2A70(uint64_t a1, void *a2, uint64_t a3)
{
  v41 = sub_252E32A64();
  v6 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return MEMORY[0x277D84F90];
  }

  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v42 = a2;
    v43 = a3;
    v44 = 44;
    v45 = 0xE100000000000000;
    v40 = sub_252947DBC();
    v11 = sub_252E37794();
    v12 = *(v11 + 16);
    if (v12)
    {
      v38 = a1;
      v44 = v10;
      sub_2529AA3A0(0, v12, 0);
      v13 = v44;
      v39 = (v6 + 8);
      v37 = v11;
      v14 = (v11 + 40);
      do
      {
        v15 = *v14;
        v42 = *(v14 - 1);
        v43 = v15;

        sub_252E32A44();
        sub_252E377A4();
        (*v39)(v8, v41);
        v16 = sub_252E36FA4();
        v18 = v17;

        v44 = v13;
        v20 = *(v13 + 16);
        v19 = *(v13 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_2529AA3A0((v19 > 1), v20 + 1, 1);
          v13 = v44;
        }

        *(v13 + 16) = v20 + 1;
        v21 = v13 + 16 * v20;
        *(v21 + 32) = v16;
        *(v21 + 40) = v18;
        v14 += 2;
        --v12;
      }

      while (v12);

      a1 = v38;
      v10 = MEMORY[0x277D84F90];
    }

    else
    {

      v13 = MEMORY[0x277D84F90];
    }

    v22 = sub_252C75848(v13);

    v42 = v10;
    sub_2529AA3A0(0, v9, 0);
    v23 = v42;
    v24 = a1 + 40;
    do
    {
      v25 = sub_252E36FA4();
      v42 = v23;
      v28 = *(v23 + 16);
      v27 = *(v23 + 24);
      if (v28 >= v27 >> 1)
      {
        v30 = v25;
        v31 = v26;
        sub_2529AA3A0((v27 > 1), v28 + 1, 1);
        v26 = v31;
        v25 = v30;
        v23 = v42;
      }

      *(v23 + 16) = v28 + 1;
      v29 = v23 + 16 * v28;
      *(v29 + 32) = v25;
      *(v29 + 40) = v26;
      v24 += 16;
      --v9;
    }

    while (v9);
    v32 = sub_252C75848(v23);

    v33 = sub_252DFABF8(v32, v22);

    v34 = v33[2];
    if (!v34)
    {
      goto LABEL_17;
    }

    v10 = sub_252DFA3E0(v33[2], 0);
    v35 = sub_252E082D0(&v42, v10 + 4, v34, v33);
    sub_25297DEB0(v42);
    if (v35 != v34)
    {
      __break(1u);
LABEL_17:

      return MEMORY[0x277D84F90];
    }
  }

  return v10;
}

Swift::String __swiftcall String.capitalizeFirstLetter()()
{
  v2 = v1;
  v3 = v0;
  v4 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v4 = v0 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    sub_252E37174();
    v5 = sub_252E36FC4();
    v7 = v6;

    v3 = sub_252AD52A0(0xFuLL, 15, v5, v7, v3, v2);
    v2 = v8;
  }

  else
  {
  }

  v9 = v3;
  v10 = v2;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t parallelize(qos:tasks:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v40 = sub_252E36CA4();
  v33 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_252E36D04();
  v32 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = dispatch_group_create();
  sub_25293F638(0, &qword_2814B0218, 0x277D85C78);
  v38 = sub_252E375A4();
  v9 = *(a2 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v11 = (a2 + 32);
    v35 = (v33 + 8);
    v36 = &v45;
    v34 = (v32 + 8);
    do
    {
      v41 = v9;
      v12 = swift_allocObject();
      v13 = *v11++;
      *(v12 + 16) = v13;

      v14 = v39;
      dispatch_group_enter(v39);
      v15 = swift_allocObject();
      v15[2] = sub_252AD55C4;
      v15[3] = v12;
      v15[4] = v14;
      v47 = sub_252AD55CC;
      v48 = v15;
      aBlock = MEMORY[0x277D85DD0];
      v44 = 1107296256;
      v45 = sub_252AD686C;
      v46 = &block_descriptor_8;
      v16 = _Block_copy(&aBlock);

      v17 = v14;
      sub_252E36CD4();
      v42 = v10;
      sub_252AD6720(qword_2814B0298, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
      sub_2529E6488(&qword_2814B0280, &qword_27F5402F8, &qword_252E3E860, MEMORY[0x277D83970]);
      v18 = v6;
      v19 = v40;
      sub_252E37824();
      MEMORY[0x2530ADA30](0, v8, v18, v16);
      _Block_release(v16);

      v20 = v19;
      v6 = v18;
      v21 = v37;
      (*v35)(v18, v20);
      (*v34)(v8, v21);

      v9 = v41 - 1;
    }

    while (v41 != 1);
  }

  v22 = swift_allocObject();
  v23 = v31;
  *(v22 + 16) = v30;
  *(v22 + 24) = v23;
  v47 = sub_252AD55F0;
  v48 = v22;
  aBlock = MEMORY[0x277D85DD0];
  v44 = 1107296256;
  v45 = sub_252AD686C;
  v46 = &block_descriptor_9;
  v24 = _Block_copy(&aBlock);

  sub_252E36CD4();
  v42 = v10;
  sub_252AD6720(qword_2814B0298, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
  sub_2529E6488(&qword_2814B0280, &qword_27F5402F8, &qword_252E3E860, MEMORY[0x277D83970]);
  v25 = v8;
  v26 = v40;
  sub_252E37824();
  v28 = v38;
  v27 = v39;
  sub_252E37514();
  _Block_release(v24);

  (*(v33 + 8))(v6, v26);
  (*(v32 + 8))(v25, v37);
}

uint64_t sub_252AD33E4(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[0] = sub_252AD6770;
  v8[1] = v6;

  a3(v8);
}

uint64_t sub_252AD3480(void (*a1)(uint64_t (*)(), uint64_t), uint64_t a2, void *a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v6 = a3;
  a1(sub_252AD6768, v5);
}

uint64_t sub_252AD3504(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v22 = MEMORY[0x277D84F90];
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_43:
    v5 = sub_252E378C4();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (v5 != v6)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x2530ADF00](v6, v3);
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_39;
      }
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        goto LABEL_40;
      }

      v8 = *(v3 + 8 * v6 + 32);

      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }
    }

    v10 = (*(*v8 + 160))();

    ++v6;
    if (v10)
    {
      MEMORY[0x2530AD700](v11);
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      v7 = v22;
      v6 = v9;
    }
  }

  v3 = sub_252C7600C(v7);

  v22 = MEMORY[0x277D84F90];
  v4 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
    v12 = sub_252E378C4();
  }

  else
  {
    v12 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = 0;
  v14 = MEMORY[0x277D84F90];
  while (v12 != v13)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x2530ADF00](v13, a2);
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

      v15 = *(a2 + 8 * v13 + 32);

      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_41;
      }
    }

    v17 = (*(*v15 + 160))();

    ++v13;
    if (v17)
    {
      MEMORY[0x2530AD700](v18);
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      v14 = v22;
      v13 = v16;
    }
  }

  v19 = sub_252C7600C(v14);

  if ((v3 & 0xC000000000000001) != 0)
  {
    if (!sub_252E378C4())
    {
      goto LABEL_37;
    }
  }

  else if (!*(v3 + 16))
  {
    goto LABEL_37;
  }

  if ((v19 & 0xC000000000000001) == 0)
  {
    if (*(v19 + 16))
    {
      goto LABEL_35;
    }

LABEL_37:
    v20 = 0;
    goto LABEL_38;
  }

  if (!sub_252E378C4())
  {
    goto LABEL_37;
  }

LABEL_35:
  v20 = sub_2529A96F0(v3, v19);
LABEL_38:

  return v20 & 1;
}

uint64_t sub_252AD3840(unint64_t a1, unint64_t a2)
{
  v4 = sub_252E32A64();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

  sub_252E32A14();
  sub_252AD5CB4(0xFuLL, a1, a2);
  if ((a2 & 0x1000000000000000) != 0)
  {
    sub_252E379E4();
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    v13 = a1;
    v14 = a2 & 0xFFFFFFFFFFFFFFLL;
  }

  else if ((a1 & 0x1000000000000000) == 0)
  {
    sub_252E37A84();
  }

  v9 = sub_252E32A54();
  (*(v5 + 8))(v7, v4);
  if ((v9 & 1) != 0 && (v13 = a1, v14 = a2, v12[2] = 32, v12[3] = 0xE100000000000000, sub_252947DBC(), (sub_252E377C4() & 1) == 0))
  {
    v10 = sub_252AD1EC8(a1, a2);
  }

  else
  {
LABEL_11:
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_252AD3A74(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    v27 = a4 & 0xFFFFFFFFFFFFFFLL;
    v24 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;

    v9 = 0;
    while (1)
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        v12 = sub_252E379E4();
        v14 = v13;
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v25 = a3;
          v26 = v27;
          v11 = &v25 + v9;
        }

        else
        {
          v10 = v24;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v10 = sub_252E37A84();
          }

          v11 = (v10 + v9);
        }

        v12 = *v11;
        if ((*v11 & 0x80000000) == 0)
        {
          goto LABEL_16;
        }

        v19 = (__clz(v12 ^ 0xFF) - 24);
        if (v19 > 2)
        {
          if (v19 == 3)
          {
            v12 = ((v12 & 0xF) << 12) | ((v11[1] & 0x3F) << 6) | v11[2] & 0x3F;
            v14 = 3;
          }

          else
          {
            v12 = ((v12 & 0xF) << 18) | ((v11[1] & 0x3F) << 12) | ((v11[2] & 0x3F) << 6) | v11[3] & 0x3F;
            v14 = 4;
          }

          goto LABEL_17;
        }

        if (v19 == 1)
        {
LABEL_16:
          v14 = 1;
        }

        else
        {
          v12 = v11[1] & 0x3F | ((v12 & 0x1F) << 6);
          v14 = 2;
        }
      }

LABEL_17:
      if (v12 == 95)
      {
        v25 = a1;
        v26 = a2;

        MEMORY[0x2530AD570](32, 0xE100000000000000);
      }

      else
      {
        if (v12 >= 0x80)
        {
          v20 = (v12 & 0x3F) << 8;
          if (v12 >= 0x800)
          {
            v21 = (v20 | (v12 >> 6) & 0x3F) << 8;
            v22 = (((v21 | (v12 >> 12) & 0x3F) << 8) | (v12 >> 18)) - 2122219023;
            v15 = (v12 >> 12) + v21 + 8487393;
            if (HIWORD(v12))
            {
              v15 = v22;
            }
          }

          else
          {
            v15 = (v12 >> 6) + v20 + 33217;
          }
        }

        else
        {
          v15 = v12 + 1;
        }

        v25 = (v15 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v15) >> 3))));
        v16 = sub_252E37034();
        v18 = v17;
        v25 = a1;
        v26 = a2;

        MEMORY[0x2530AD570](v16, v18);
      }

      a1 = v25;
      a2 = v26;
      v9 += v14;
      if (v9 >= v6)
      {
        return a1;
      }
    }
  }

  return a1;
}

uint64_t sub_252AD3D1C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v22 = a2;
  v21 = a1;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v5 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v8 = a4 & 0xFFFFFFFFFFFFFFLL;
    v9 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;

    v10 = 0;
    while (1)
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        v13 = sub_252E379E4();
        v15 = v14;
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v19 = a3;
          v20 = v8;
          v12 = &v19 + v10;
        }

        else
        {
          v11 = v9;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v11 = sub_252E37A84();
          }

          v12 = (v11 + v10);
        }

        v13 = *v12;
        if ((*v12 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        v17 = (__clz(v13 ^ 0xFF) - 24);
        if (v17 > 2)
        {
          if (v17 == 3)
          {
            v13 = ((v13 & 0xF) << 12) | ((v12[1] & 0x3F) << 6) | v12[2] & 0x3F;
            v15 = 3;
          }

          else
          {
            v13 = ((v13 & 0xF) << 18) | ((v12[1] & 0x3F) << 12) | ((v12[2] & 0x3F) << 6) | v12[3] & 0x3F;
            v15 = 4;
          }

          goto LABEL_15;
        }

        if (v17 == 1)
        {
LABEL_14:
          v15 = 1;
        }

        else
        {
          v13 = v12[1] & 0x3F | ((v13 & 0x1F) << 6);
          v15 = 2;
        }
      }

LABEL_15:
      v23 = v13;
      sub_252AD3EE0(&v21, &v23, &v19);

      if (!v4)
      {
        v10 += v15;
        result = v19;
        v21 = v19;
        v22 = v20;
        if (v10 < v5)
        {
          continue;
        }
      }

      return result;
    }
  }

  return a1;
}

uint64_t sub_252AD3EE0@<X0>(uint64_t *a1@<X0>, unsigned int *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_252E32A64();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v10 = a1[1];
  v12 = *a2;
  sub_252E32A24();
  LOBYTE(a2) = sub_252E32A54();
  (*(v7 + 8))(v9, v6);
  if (a2)
  {
    v31 = v11;
    v32 = v10;

    MEMORY[0x2530AD570](32, 0xE100000000000000);
    v13 = v31;
    v14 = v32;
    if (v12 > 0x7F)
    {
      v25 = (v12 & 0x3F) << 8;
      if (v12 >= 0x800)
      {
        v27 = (v25 | (v12 >> 6) & 0x3F) << 8;
        v28 = (((v27 | (v12 >> 12) & 0x3F) << 8) | (v12 >> 18)) - 2122219023;
        v15 = (v12 >> 12) + v27 + 8487393;
        if (HIWORD(v12))
        {
          v15 = v28;
        }
      }

      else
      {
        v15 = (v12 >> 6) + v25 + 33217;
      }
    }

    else
    {
      v15 = v12 + 1;
    }

    v31 = (v15 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v15) >> 3))));
    v16 = sub_252E37034();
    v18 = v17;
    v31 = v13;
    v32 = v14;

    MEMORY[0x2530AD570](v16, v18);
  }

  else
  {
    if (v12 > 0x7F)
    {
      v26 = (v12 & 0x3F) << 8;
      if (v12 >= 0x800)
      {
        v29 = (v26 | (v12 >> 6) & 0x3F) << 8;
        v30 = (((v29 | (v12 >> 12) & 0x3F) << 8) | (v12 >> 18)) - 2122219023;
        v19 = (v12 >> 12) + v29 + 8487393;
        if (HIWORD(v12))
        {
          v19 = v30;
        }
      }

      else
      {
        v19 = (v12 >> 6) + v26 + 33217;
      }
    }

    else
    {
      v19 = v12 + 1;
    }

    v31 = (v19 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v19) >> 3))));
    v20 = sub_252E37034();
    v22 = v21;
    v31 = v11;
    v32 = v10;

    MEMORY[0x2530AD570](v20, v22);
  }

  v24 = v32;
  *a3 = v31;
  a3[1] = v24;
  return result;
}

unint64_t sub_252AD41C0(unint64_t a1, unint64_t a2)
{
  sub_252947DBC();
  if (sub_252E377C4())
  {
    sub_252AD3A74(0, 0xE000000000000000, a1, a2);
  }

  else if (sub_252AD3840(a1, a2))
  {
    sub_252AD3D1C(0, 0xE000000000000000, a1, a2);
  }

  else
  {
  }

  v4 = sub_252E36FA4();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    sub_252E37174();
    v8 = sub_252E36FC4();
    v10 = v9;

    v4 = sub_252AD52A0(0xFuLL, 15, v8, v10, v4, v6);
  }

  return v4;
}

uint64_t sub_252AD4324(uint64_t a1, uint64_t a2)
{

  v2 = sub_252E370D4();
  v8 = v7;
  if (v7)
  {
    do
    {
      if (v2 == 32 && v8 == 0xE100000000000000 || (v10 = v2, v11 = sub_252E37DB4(), v2 = v10, (v11 & 1) != 0))
      {
        MEMORY[0x2530AD560](v2, v8, v3, v4, v5, v6);
      }

      v2 = sub_252E370D4();
      v8 = v9;
    }

    while (v9);
  }

  v12 = sub_252E37054();

  return v12;
}

char *sub_252AD4414(uint64_t a1)
{
  v29 = sub_252E32A64();
  MEMORY[0x28223BE20](v29);
  v30 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(a1 + 16);
  if (v4)
  {
    v28 = (v2 + 8);
    v31 = sub_252947DBC();
    v5 = (a1 + 40);
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      v8 = *(v5 - 1);
      v7 = *v5;
      v34 = v8;
      v35 = v7;
      v32 = 95;
      v33 = 0xE100000000000000;

      if (sub_252E377C4())
      {

        sub_252AD3A74(0, 0xE000000000000000, v8, v7);
      }

      else
      {
        v9 = HIBYTE(v7) & 0xF;
        if ((v7 & 0x2000000000000000) == 0)
        {
          v9 = v8 & 0xFFFFFFFFFFFFLL;
        }

        if (!v9)
        {
          goto LABEL_17;
        }

        sub_252E32A14();
        if ((v7 & 0x1000000000000000) != 0)
        {
          sub_252E379E4();
        }

        else if ((v7 & 0x2000000000000000) == 0 && (v8 & 0x1000000000000000) == 0)
        {
          sub_252E37A84();
        }

        v10 = v30;
        v11 = sub_252E32A54();
        (*v28)(v10, v29);
        if (v11 & 1) == 0 || (v34 = v8, v35 = v7, v32 = 32, v33 = 0xE100000000000000, (sub_252E377C4()) || (, v12 = sub_252AD1EC8(v8, v7), , (v12 & 1) == 0))
        {
LABEL_17:

          goto LABEL_18;
        }

        sub_252AD3D1C(0, 0xE000000000000000, v8, v7);
      }

LABEL_18:
      v13 = sub_252E36FA4();
      v15 = v14;

      v16 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v16 = v13 & 0xFFFFFFFFFFFFLL;
      }

      if (v16)
      {
        sub_252E37174();
        v17 = sub_252E36FC4();
        v19 = v18;

        v13 = sub_252AD52A0(0xFuLL, 15, v17, v19, v13, v15);
        v21 = v20;

        v15 = v21;
      }

      else
      {
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_2529F7A80(0, *(v6 + 2) + 1, 1, v6);
      }

      v23 = *(v6 + 2);
      v22 = *(v6 + 3);
      if (v23 >= v22 >> 1)
      {
        v6 = sub_2529F7A80((v22 > 1), v23 + 1, 1, v6);
      }

      *(v6 + 2) = v23 + 1;
      v24 = &v6[16 * v23];
      *(v24 + 4) = v13;
      *(v24 + 5) = v15;
      v5 += 2;
      if (!--v4)
      {
        goto LABEL_31;
      }
    }
  }

  v6 = MEMORY[0x277D84F90];
LABEL_31:
  v25 = sub_252DF88E4(v6);

  v34 = v25;

  sub_252AC841C(&v34);

  return v34;
}

BOOL sub_252AD492C(id *a1, void **a2)
{
  v2 = *a2;
  v3 = [*a1 hash];
  return v3 < [v2 hash];
}

uint64_t sub_252AD4A70(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1953066613;
  }

  else
  {
    v3 = 0x65756C6176;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1953066613;
  }

  else
  {
    v5 = 0x65756C6176;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_252E37DB4();
  }

  return v8 & 1;
}

uint64_t sub_252AD4B0C()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252AD4B84(uint64_t a1)
{
  sub_252E37044();
}

uint64_t sub_252AD4BE8(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252AD4C5C@<X0>(char *a2@<X8>)
{
  v3 = sub_252E37B74();

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

void sub_252AD4CBC(uint64_t *a1@<X8>)
{
  v2 = 1953066613;
  if (!*v1)
  {
    v2 = 0x65756C6176;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_252AD4CF0()
{
  if (*v0)
  {
    return 1953066613;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_252AD4D20@<X0>(char *a3@<X8>)
{
  v4 = sub_252E37B74();

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

uint64_t sub_252AD4D84(uint64_t a1)
{
  v2 = sub_252AD6720(&qword_27F542EA8, sub_252AD611C, byte_252E49878);

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252AD4DF0(uint64_t a1)
{
  v2 = sub_252AD6720(&qword_27F542EA8, sub_252AD611C, byte_252E49878);

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Scalar<>.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542E98, &unk_252E49598);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252AD611C(0, v7, v8, v9);
  sub_252AD6720(&qword_27F542EA8, sub_252AD611C, byte_252E49878);
  sub_252E37F84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A28, &qword_252E3DF80);
  sub_252E35834();
  v15 = 0;
  sub_252E37CB4();
  if (!v1)
  {
    sub_252E35814();
    v13 = v14;
    v12 = 1;
    sub_25298514C();
    sub_252E37CD4();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t Scalar<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542EB0, &qword_252E495A8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252AD611C(0, v8, v9, v10);
  sub_252AD6720(&qword_27F542EA8, sub_252AD611C, byte_252E49878);
  sub_252E37F74();
  if (!v2)
  {
    v21 = 0;
    v11 = sub_252E37BC4();
    v13 = v12;
    v14 = v11;
    v19 = 1;
    sub_2529828BC();
    sub_252E37BE4();
    v16[2] = v14;
    v17 = v13 & 1;
    v18 = v20;
    sub_252AD617C();
    sub_252E35824();
    (*(v5 + 8))(v7, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_252AD52A0(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  v11 = sub_252E37064();

  sub_252E37774();
  v13 = v12;

  if ((v13 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  sub_252E37774();
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
    result = sub_252AD5C38(a1, a5, a6);
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

  v20 = sub_252E37114();
  v27 = 11;
  if ((a5 & 0x800000000000000) != 0)
  {
    v27 = 7;
  }

  v22 = v27 | (v21 << 16);
  v23 = (a5 & 0x800000000000000) >> 59;
LABEL_11:
  result = v11;
  if ((v11 & 0xC) == 4 << v23)
  {
    v28 = v22;
    result = sub_252AD5C38(v11, a5, a6);
    v22 = v28;
  }

  if ((v22 & 0xC) == v18)
  {
    v29 = result;
    v22 = sub_252AD5C38(v22, a5, a6);
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
    result = sub_252E37114();
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
    v31 = sub_252E370E4();
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
        MEMORY[0x2530AD4D0](result);
LABEL_23:
        sub_252E37194();
        sub_252AD6778();
        sub_252E37094();

        sub_252E37094();
        sub_252AD5BEC(v11, a5, a6);
        sub_252E37094();

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

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_252AD5618(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_252E37054();
  result = sub_252E37054();
  v9 = result;
  v49 = v7;
  if (v7 < 1 || result <= 0)
  {
    if (result <= v7)
    {
      return v7;
    }

    return result;
  }

  v10 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_78;
  }

  if (v10 < 0)
  {
    goto LABEL_79;
  }

  v11 = sub_252E372B4();
  *(v11 + 16) = v10;
  bzero((v11 + 32), 8 * v9 + 8);
  if (__OFADD__(v49, 1))
  {
    goto LABEL_80;
  }

  v4 = sub_252AD67CC(v11, v49 + 1);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_81;
  }

  while (1)
  {
    if (v4[2] < 2uLL)
    {
      __break(1u);
    }

    else
    {
      v10 = v4[5];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v4[5] = v10;
      if (isUniquelyReferenced_nonNull_native)
      {
        if (!*(v10 + 16))
        {
          goto LABEL_84;
        }

        goto LABEL_10;
      }
    }

    v10 = sub_252D57B60(v10);
    v4[5] = v10;
    if (!*(v10 + 16))
    {
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

LABEL_10:
    *(v10 + 32) = 1;
    v13 = v49 - 1;
    if (v49 != 1)
    {
      v38 = v4 + 6;
      v5 = 2;
      while (v5 < v4[2])
      {
        v10 = *v38;
        v39 = swift_isUniquelyReferenced_nonNull_native();
        *v38 = v10;
        if (v39)
        {
          if (!*(v10 + 16))
          {
            goto LABEL_51;
          }
        }

        else
        {
          v10 = sub_252D57B60(v10);
          *v38 = v10;
          if (!*(v10 + 16))
          {
LABEL_51:
            __break(1u);
            goto LABEL_52;
          }
        }

        *(v10 + 32) = v5++;
        ++v38;
        if (!--v13)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_76;
    }

LABEL_11:
    if (v4[2])
    {
      v5 = (v4 + 4);
      v10 = v4[4];
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v4[4] = v10;
      if (v14)
      {
        goto LABEL_13;
      }

      goto LABEL_86;
    }

LABEL_85:
    __break(1u);
LABEL_86:
    v10 = sub_252D57B60(v10);
LABEL_13:
    if (*(v10 + 16) < 2uLL)
    {
      __break(1u);
LABEL_88:
      swift_once();
      goto LABEL_63;
    }

    *(v10 + 40) = 1;
    *v5 = v10;
    v13 = v9 - 1;
    if (v9 == 1)
    {
      break;
    }

LABEL_52:
    v40 = 6;
    while (v4[2])
    {
      v10 = *v5;
      v41 = swift_isUniquelyReferenced_nonNull_native();
      *v5 = v10;
      if ((v41 & 1) == 0)
      {
        v10 = sub_252D57B60(v10);
        *v5 = v10;
      }

      if ((v40 - 4) >= *(v10 + 16))
      {
        goto LABEL_77;
      }

      *(v10 + 8 * v40) = v40 - 4;
      ++v40;
      if (!--v13)
      {
        goto LABEL_15;
      }
    }

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
LABEL_81:
    v4 = sub_252D57B74(v4);
  }

LABEL_15:
  v15 = 0;
  v16 = 1;
  while (2)
  {
    v17 = 0;
    do
    {
      sub_252E37084();
      v18 = sub_252E37174();
      v20 = v19;
      sub_252E37084();
      v22 = v18 == sub_252E37174() && v20 == v21;
      if (v22)
      {

        v24 = 0;
      }

      else
      {
        v23 = sub_252E37DB4();

        v24 = (v23 & 1) == 0;
      }

      v25 = v4[2];
      if (v15 >= v25)
      {
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

      v26 = *(v5 + 8 * v15);
      if (v17 + 1 >= *(v26 + 16))
      {
        goto LABEL_66;
      }

      v27 = v26 + 8 * v17;
      v28 = *(v27 + 40);
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_67;
      }

      if (v16 >= v25)
      {
        goto LABEL_68;
      }

      v31 = *(v5 + 8 * v16);
      if (v17 >= *(v31 + 2))
      {
        goto LABEL_69;
      }

      v32 = *&v31[8 * v17 + 32];
      v29 = __OFADD__(v32, 1);
      v33 = v32 + 1;
      if (v29)
      {
        goto LABEL_70;
      }

      v34 = *(v27 + 32);
      v29 = __OFADD__(v34, v24);
      v35 = v34 + v24;
      if (v29)
      {
        goto LABEL_71;
      }

      if (v33 < v30)
      {
        v30 = v33;
      }

      if (v35 >= v30)
      {
        v36 = v30;
      }

      else
      {
        v36 = v35;
      }

      v37 = swift_isUniquelyReferenced_nonNull_native();
      *(v5 + 8 * v16) = v31;
      if ((v37 & 1) == 0)
      {
        v31 = sub_252D57B60(v31);
        *(v5 + 8 * v16) = v31;
      }

      if (v17 + 1 >= *(v31 + 2))
      {
        goto LABEL_72;
      }

      *&v31[8 * v17++ + 40] = v36;
    }

    while (v9 != v17);
    v15 = v16;
    v22 = v16++ == v49;
    if (!v22)
    {
      continue;
    }

    break;
  }

  v10 = v4;
  v42 = v4[2];
  if (v42)
  {
    v43 = *(v5 + 8 * v42 - 8);
    v44 = *(v43 + 16);
    if (v44)
    {
      v45 = *(v43 + 8 * v44 + 24);
      goto LABEL_74;
    }
  }

  if (qword_27F53F4E8 != -1)
  {
    goto LABEL_88;
  }

LABEL_63:
  a1 = 0xD000000000000017;
  v46 = sub_252E36AD4();
  __swift_project_value_buffer(v46, qword_27F544D60);
  v50 = 0;
  v51 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E79210);
  if (*(v10 + 16))
  {
  }

LABEL_73:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543000, &unk_252E498D0);
  v47 = sub_252E36F94();
  MEMORY[0x2530AD570](v47);

  MEMORY[0x2530AD570](a1 + 18, 0x8000000252E79230);
  v45 = 99;
  v48 = sub_252E37D94();
  MEMORY[0x2530AD570](v48);

  sub_252CC3D90(v50, v51, a1 + 91, 0x8000000252E79260);

LABEL_74:

  return v45;
}

unint64_t sub_252AD5BEC(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_252E37194();
  }

  __break(1u);
  return result;
}

unint64_t sub_252AD5C38(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_252E37134();
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
    v5 = MEMORY[0x2530AD5C0](15, a1 >> 16);
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

unint64_t sub_252AD5CB4(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_252AD5D4C(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_252AD5DC0(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_252AD5D4C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_252AD5C38(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_252AD5DC0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_252E37A84();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

uint64_t _s12SiriOntology6ScalarV22HomeAutomationInternalSdRszAD12UnitSemanticORs_rlE1loiySbACySdAFG_AHtFZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A28, &qword_252E3DF80);
  sub_252E35834();
  if (v9)
  {
    v0 = 0;
    return v0 & 1;
  }

  sub_252E35834();
  sub_252E35814();
  if (v8 == 4 || (sub_252E35814(), (sub_252A0C79C(v8, v8) & 1) != 0))
  {
    v0 = 0;
    return v0 & 1;
  }

  v2 = 0x746E6563726570;
  if (v8 > 1u)
  {
    if (v8 == 2)
    {
      v4 = 0xD000000000000011;
      v3 = 0x8000000252E67E40;
      goto LABEL_16;
    }

    v4 = 0x4773656572676564;
    v5 = 0x636972656E65;
  }

  else
  {
    if (!v8)
    {
      v3 = 0xE700000000000000;
      v4 = 0x746E6563726570;
      goto LABEL_16;
    }

    v4 = 0x4373656572676564;
    v5 = 0x737569736C65;
  }

  v3 = v5 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
LABEL_16:
  if (v8 > 1u)
  {
    if (v8 == 2)
    {
      v2 = 0xD000000000000011;
      v6 = 0x8000000252E67E40;
      goto LABEL_24;
    }

    v2 = 0x4773656572676564;
    v7 = 0x636972656E65;
LABEL_23:
    v6 = v7 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
    goto LABEL_24;
  }

  if (v8)
  {
    v2 = 0x4373656572676564;
    v7 = 0x737569736C65;
    goto LABEL_23;
  }

  v6 = 0xE700000000000000;
LABEL_24:
  if (v4 == v2 && v3 == v6)
  {

    v0 = 0;
  }

  else
  {
    v0 = sub_252E37DB4();
  }

  return v0 & 1;
}

void sub_252AD611C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_27F542EA0)
  {
    v4 = _s16ScalarCodingKeysOMa(0, a2, a3, a4);
    if (!v5)
    {
      atomic_store(v4, &qword_27F542EA0);
    }
  }
}

unint64_t sub_252AD617C()
{
  result = qword_27F542EB8;
  if (!qword_27F542EB8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UnitSemantic, &type metadata for UnitSemantic, v0, v1);
    atomic_store(result, &qword_27F542EB8);
  }

  return result;
}

uint64_t sub_252AD62A0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_25293F638(319, qword_27F542F58, 0x277CCAAF8);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_252AD6338(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_252AD6474(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_252AD6720(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_252AD6778()
{
  result = qword_2814B0288;
  if (!qword_2814B0288)
  {
    result = swift_getWitnessTable(MEMORY[0x277D83E58], MEMORY[0x277D83E40], v0, v1);
    atomic_store(result, &qword_2814B0288);
  }

  return result;
}

uint64_t sub_252AD67CC(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5416D8, &qword_252E40998);
    v4 = sub_252E372B4();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;

        --v6;
      }

      while (v6);
    }

    return v5;
  }

  return result;
}

uint64_t sub_252AD6874()
{
  type metadata accessor for HomeAutomationEntityResponse.Builder(0);
  v1 = swift_allocObject();
  v2 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityName;
  v3 = sub_252E36324();
  v4 = *(*(v3 - 8) + 56);
  v4(v1 + v2, 1, 1, v3);
  v5 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityIdentifier;
  v4(v1 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityIdentifier, 1, 1, v3);
  v6 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_room;
  *(v1 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_room) = 0;
  v16 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_zones;
  v7 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_zones) = MEMORY[0x277D84F90];
  v17 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_home;
  *(v1 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_home) = 0;
  v8 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_type;
  v4(v1 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_type, 1, 1, v3);
  v9 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_types;
  *(v1 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_types) = v7;
  v10 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_states;
  *(v1 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_states) = v7;
  v11 = v10;
  v12 = OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_entityName;
  swift_beginAccess();
  sub_252956BAC(v0 + v12, v1 + v2);
  swift_endAccess();
  v13 = OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_entityIdentifier;
  swift_beginAccess();
  sub_252956BAC(v0 + v13, v1 + v5);
  swift_endAccess();
  *(v1 + v6) = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_room);
  *(v1 + v16) = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_zones);
  *(v1 + v17) = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_home);
  v14 = OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_type;
  swift_beginAccess();

  sub_252956BAC(v0 + v14, v1 + v8);
  swift_endAccess();
  *(v1 + v9) = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_types);
  *(v1 + v11) = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);

  return v1;
}

uint64_t sub_252AD6B10(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v23 - v5;
  v7 = sub_252E36324();
  MEMORY[0x28223BE20](v7);
  v27 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D84F90];
  v28 = MEMORY[0x277D84F90];
  v11 = *(a1 + 16);
  if (v11)
  {
    v13 = *(v8 + 16);
    v12 = v8 + 16;
    v14 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v25 = *(v12 + 56);
    v26 = v13;
    v15 = (v12 + 40);
    v24 = (v12 + 16);
    v23[0] = v2;
    v23[1] = v12;
    do
    {
      v16 = v27;
      v26(v27, v14, v7);
      type metadata accessor for HomeAutomationHomeLocation.Builder(0);
      v17 = swift_allocObject();
      v18 = OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name;
      v19 = *v15;
      (*v15)(v17 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, 1, 1, v7);
      (*v24)(v6, v16, v7);
      v19(v6, 0, 1, v7);
      swift_beginAccess();
      sub_252956BAC(v6, v17 + v18);
      swift_endAccess();
      sub_252938BBC(v6);
      type metadata accessor for HomeAutomationHomeLocation(0);
      v20 = swift_allocObject();
      *(v20 + 16) = 0;
      sub_252956C1C(v17 + v18, v20 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name);
      swift_setDeallocating();
      sub_252938BBC(v17 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name);
      v21 = swift_deallocClassInstance();
      MEMORY[0x2530AD700](v21);
      if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      v14 += v25;
      --v11;
    }

    while (v11);
    v10 = v28;
    v2 = v23[0];
  }

  *(v2 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_zones) = v10;

  return v2;
}

uint64_t sub_252AD6E3C(uint64_t a1, void *a2)
{
  type metadata accessor for HomeAutomationHomeLocation.Builder(0);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name;
  v7 = sub_252E36324();
  (*(*(v7 - 8) + 56))(v5 + v6, 1, 1, v7);
  swift_beginAccess();
  sub_252956BAC(a1, v5 + v6);
  swift_endAccess();
  type metadata accessor for HomeAutomationHomeLocation(0);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  sub_252956C1C(v5 + v6, v8 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name);
  swift_setDeallocating();
  sub_252938BBC(v5 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name);
  swift_deallocClassInstance();
  *(v2 + *a2) = v8;

  return v2;
}

uint64_t sub_252AD6F94()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12[-v3];
  if (qword_27F53F2A0 != -1)
  {
    swift_once();
  }

  v5 = off_27F541CD0;
  if (*(off_27F541CD0 + 2) && (v6 = sub_252A488EC(), (v7 & 1) != 0))
  {
    v12[8] = *(v5[7] + v6);
    AccessoryTypeSemantic.rawValue.getter();
    sub_252E362F4();
    v8 = sub_252E36324();
    (*(*(v8 - 8) + 56))(v4, 0, 1, v8);
  }

  else
  {
    v9 = sub_252E36324();
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  }

  v10 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_type;
  swift_beginAccess();
  sub_252956C98(v4, v1 + v10);
  swift_endAccess();
  return v1;
}

uint64_t sub_252AD7130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  type metadata accessor for HomeAutomationHomeLocation.Builder(0);
  v7 = swift_allocObject();
  v8 = OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name;
  v9 = sub_252E36324();
  v10 = *(*(v9 - 8) + 56);
  v10(v7 + v8, 1, 1, v9);

  sub_252E362F4();
  v10(v6, 0, 1, v9);
  swift_beginAccess();
  sub_252956BAC(v6, v7 + v8);
  swift_endAccess();
  sub_252938BBC(v6);
  type metadata accessor for HomeAutomationHomeLocation(0);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  sub_252956C1C(v7 + v8, v11 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name);
  swift_setDeallocating();
  sub_252938BBC(v7 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name);
  swift_deallocClassInstance();
  *(v3 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_room) = v11;

  return v3;
}

uint64_t sub_252AD734C()
{
  result = sub_2529FFA08(&unk_2864AC180);
  qword_27F5757E0 = result;
  return result;
}

uint64_t sub_252AD73B8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ModifyGetTaskTypeForClimateHandler();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_252AD73EC(void *a1, __int128 *a2)
{
  v3 = a2[7];
  v86 = a2[6];
  v87 = v3;
  v88 = *(a2 + 16);
  v4 = a2[3];
  v82 = a2[2];
  v83 = v4;
  v5 = a2[5];
  v84 = a2[4];
  v85 = v5;
  v6 = a2[1];
  v80 = *a2;
  v81 = v6;
  v73 = *(a2 + 152);
  v74 = *(a2 + 136);
  v7 = *(a2 + 21);
  v8 = a2[12];
  v78 = a2[11];
  v79 = v8;
  v9 = *(a2 + 208);
  memcpy(__dst, a2 + 209, sizeof(__dst));
  v10 = type metadata accessor for HomeStore(0);
  v11 = static HomeStore.shared.getter(v10);
  v12 = v11[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v12 != 2 && (v12 & 1) == 0 || (v13 = [a1 filters]) == 0)
  {

    goto LABEL_8;
  }

  v14 = v13;
  type metadata accessor for HomeFilter();
  v15 = sub_252E37264();

  v16 = [a1 userTask];
  v17 = HomeStore.accessories(matching:supporting:)(v15, v16);
  v19 = v18;

  if (v19)
  {
    v20 = v17;
    v21 = 1;
LABEL_6:
    sub_252929F10(v20, v21);
    goto LABEL_8;
  }

  if (!*(v74 + 16))
  {
    goto LABEL_15;
  }

  v25 = sub_252C7634C(v24);

  if (qword_27F53F328 != -1)
  {
    swift_once();
  }

  v26 = sub_252939028(qword_27F5757E0, v25);

  if ((v26 & 1) == 0)
  {
LABEL_15:
    if (!*(v73 + 16) && !*(v7 + 16))
    {
LABEL_66:
      v20 = v17;
LABEL_67:
      v21 = 0;
      goto LABEL_6;
    }
  }

  v71 = a1;
  v72 = v17;
  v70 = v9;
  v27 = v17 & 0xFFFFFFFFFFFFFF8;
  if (v17 >> 62)
  {
    goto LABEL_69;
  }

  v28 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v28)
  {
LABEL_18:
    v29 = 0;
    v30 = (v72 + 32);
    v75 = v28;
    while (1)
    {
      if ((v72 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x2530ADF00](v29, v72);
        v32 = __OFADD__(v29++, 1);
        if (v32)
        {
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }
      }

      else
      {
        if (v29 >= *(v27 + 16))
        {
          __break(1u);
LABEL_69:
          v28 = sub_252E378C4();
          if (!v28)
          {
            goto LABEL_70;
          }

          goto LABEL_18;
        }

        v31 = *&v30[8 * v29];

        v32 = __OFADD__(v29++, 1);
        if (v32)
        {
          goto LABEL_65;
        }
      }

      v33 = (*v31 + 256);
      v17 = *v33;
      if ((*v33)() == 3)
      {

        goto LABEL_20;
      }

      v34 = (*v31 + 272);
      v35 = *v34;
      v36 = (*v34)();
      if (*(v36 + 16))
      {
        v37 = v36;
        sub_252E37EC4();
        MEMORY[0x2530AE390](3);
        v38 = sub_252E37F14();
        v39 = -1 << *(v37 + 32);
        v40 = v38 & ~v39;
        if ((*(v37 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40))
        {
          v41 = ~v39;
          while (*(*(v37 + 48) + 8 * v40) != 3)
          {
            v40 = (v40 + 1) & v41;
            if (((*(v37 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
            {
              goto LABEL_30;
            }
          }

LABEL_50:

LABEL_51:

          goto LABEL_52;
        }
      }

LABEL_30:

      v43 = (v17)(v42);
      if (v43 == 38)
      {
        break;
      }

      v44 = v43;
      v45 = MEMORY[0x277D84FA0];
      if (v44 == 41)
      {
        v46 = &unk_2864AC1D0;
LABEL_34:
        v45 = sub_2529FC004(v46);
      }

      if (*(v45 + 16))
      {
        v47 = v45;
        sub_252E37EC4();
        MEMORY[0x2530AE390](3);
        v48 = sub_252E37F14();
        v49 = -1 << *(v47 + 32);
        v50 = v48 & ~v49;
        if ((*(v47 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50))
        {
          v51 = ~v49;
          while (*(*(v47 + 48) + 8 * v50) != 3)
          {
            v50 = (v50 + 1) & v51;
            if (((*(v47 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
            {
              goto LABEL_40;
            }
          }

          goto LABEL_50;
        }
      }

LABEL_40:

      if (sub_252D4FE78(3) || (v17)() == 29)
      {
        goto LABEL_51;
      }

      v52 = v35();
      if (*(v52 + 16))
      {
        sub_252E37EC4();
        MEMORY[0x2530AE390](29);
        v53 = sub_252E37F14();
        v54 = -1 << *(v52 + 32);
        v55 = v53 & ~v54;
        if ((*(v52 + 56 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55))
        {
          v56 = ~v54;
          while (*(*(v52 + 48) + 8 * v55) != 29)
          {
            v55 = (v55 + 1) & v56;
            if (((*(v52 + 56 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55) & 1) == 0)
            {
              goto LABEL_47;
            }
          }

LABEL_62:

LABEL_52:
          v30 = (v72 + 32);
          v28 = v75;
          goto LABEL_20;
        }
      }

LABEL_47:

      v58 = (v17)(v57);
      if (v58 == 38)
      {
        v60 = &unk_2864AC1F8;
      }

      else
      {
        v59 = MEMORY[0x277D84FA0];
        if (v58 != 41)
        {
          goto LABEL_55;
        }

        v60 = &unk_2864AC220;
      }

      v59 = sub_2529FC004(v60);
LABEL_55:
      if (*(v59 + 16))
      {
        sub_252E37EC4();
        MEMORY[0x2530AE390](29);
        v61 = sub_252E37F14();
        v62 = -1 << *(v59 + 32);
        v63 = v61 & ~v62;
        if ((*(v59 + 56 + ((v63 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v63))
        {
          v64 = ~v62;
          while (*(*(v59 + 48) + 8 * v63) != 29)
          {
            v63 = (v63 + 1) & v64;
            if (((*(v59 + 56 + ((v63 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v63) & 1) == 0)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_62;
        }
      }

LABEL_60:

      v65 = sub_252D4FE78(29);

      v30 = (v72 + 32);
      v28 = v75;
      if (!v65)
      {
        v20 = v72;
        goto LABEL_67;
      }

LABEL_20:
      if (v29 == v28)
      {
        goto LABEL_70;
      }
    }

    v46 = &unk_2864AC1A8;
    goto LABEL_34;
  }

LABEL_70:
  sub_252929F10(v72, 0);
  v66 = [v71 userTask];
  if (v66)
  {
    v67 = v66;
    v68 = [v66 attribute];

    v69 = v68 != 6 || v70 == 9;
    if (!v69 && (sub_252A0D524(v70, 1u) & 1) != 0)
    {
      memcpy(v76, __dst, sizeof(v76));
      v22 = sub_252A10CC8() ^ 1;
      return v22 & 1;
    }
  }

  else
  {
    sub_252C515AC();
  }

LABEL_8:
  v22 = 0;
  return v22 & 1;
}

id sub_252AD7B28(void *a1)
{
  v2 = [a1 userTask];
  if (v2)
  {
    type metadata accessor for MutableHomeUserTask();
    swift_allocObject();
    sub_252D6CA80(v2)[2] = 5;

    v2 = sub_252D6CB58();
  }

  v3 = [a1 filters];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for HomeFilter();
    v5 = sub_252E37264();
  }

  else
  {
    v5 = 0;
  }

  v6 = [a1 time];
  v7 = [objc_allocWithZone(type metadata accessor for ControlHomeIntent()) init];
  [v7 setUserTask_];
  if (v5)
  {
    type metadata accessor for HomeFilter();
    v8 = sub_252E37254();
  }

  else
  {
    v8 = 0;
  }

  [v7 setFilters_];

  [v7 setTime_];

  return v7;
}

uint64_t sub_252AD7CC4()
{
  v0 = sub_252E33944();
  MEMORY[0x28223BE20](v0 - 8);
  sub_252E33924();
  return sub_252E33F54();
}

uint64_t sub_252AD7D78()
{
  __swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v1 = swift_allocObject();
  *(v1 + 32) = 0xD000000000000017;
  *(v1 + 40) = 0x8000000252E6FE70;
  *(v1 + 72) = MEMORY[0x277D839B0];
  v4 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v0[3] = v1;
  *(v1 + 16) = xmmword_252E3C290;
  *(v1 + 48) = 0;
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_252AD7EB4;

  return v4(0xD00000000000001ELL, 0x8000000252E79370, v1);
}

uint64_t sub_252AD7EB4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252AD800C, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_252AD800C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252AD8094(uint64_t a1, void *a2)
{
  if (!a2)
  {
    LOBYTE(v4) = 0;
    return v4 & 1;
  }

  v2 = a2;
  v3 = sub_252C2F554();
  if (v3 >> 62)
  {
    v4 = sub_252E378C4();

    if (!v4)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v4)
  {
LABEL_4:
    LOBYTE(v4) = sub_252C2C2E4(0x11);
  }

LABEL_5:

  return v4 & 1;
}

uint64_t sub_252AD8128(uint64_t a1)
{
  v2[2] = a1;
  v3 = sub_252E34014();
  v2[3] = v3;
  v2[4] = *(v3 - 8);
  v4 = swift_task_alloc();
  v5 = *v1;
  v2[5] = v4;
  v2[6] = v5;

  return MEMORY[0x2822009F8](sub_252AD81EC, 0, 0);
}

uint64_t sub_252AD81EC()
{
  v1 = v0[6];
  v2 = *(v1 + 96);
  __swift_project_boxed_opaque_existential_1((v1 + 72), v2);
  sub_252AD7CC4();
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_252AD82DC;
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[2];

  return sub_252BDB88C(v6, &unk_252E49980, v4, v5, 0, 0, 0, v2);
}

uint64_t sub_252AD82DC()
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *v1;
  *(v5 + 64) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_252AD8484, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_252AD8484()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_252AD84E8@<X0>(const void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for SceneInProgressResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_252AD854C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B7BC;

  return sub_252AD7D58(v0);
}

uint64_t *sub_252AD85DC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v6 = a6;
  v31 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v29[-v11];
  v13 = sub_252E36324();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v29[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v19 = &v29[-v18];
  v32 = a3;
  v33 = a4;
  v34 = a5;
  v20 = sub_252D157C8(a3, a4, a5, v6);
  sub_252E376D4();
  v22 = v21;

  if (v22)
  {
    sub_252E37024();

    (*(v14 + 32))(v19, v17, v13);
    type metadata accessor for HomeAutomationTappableCommand.Builder(0);
    v23 = swift_allocObject();
    v30 = v6;
    v24 = OBJC_IVAR____TtCC22HomeAutomationInternal29HomeAutomationTappableCommand7Builder_label;
    v25 = *(v14 + 56);
    v25(v23 + OBJC_IVAR____TtCC22HomeAutomationInternal29HomeAutomationTappableCommand7Builder_label, 1, 1, v13);
    v26 = OBJC_IVAR____TtCC22HomeAutomationInternal29HomeAutomationTappableCommand7Builder_command;
    v25(v23 + OBJC_IVAR____TtCC22HomeAutomationInternal29HomeAutomationTappableCommand7Builder_command, 1, 1, v13);
    sub_252E37024();

    v25(v12, 0, 1, v13);
    swift_beginAccess();
    sub_252956BAC(v12, v23 + v24);
    swift_endAccess();
    sub_252938BBC(v12);
    (*(v14 + 16))(v12, v19, v13);
    v25(v12, 0, 1, v13);
    swift_beginAccess();
    sub_252956BAC(v12, v23 + v26);
    swift_endAccess();
    sub_252938BBC(v12);
    type metadata accessor for HomeAutomationTappableCommand(0);
    swift_allocObject();
    v27 = sub_252D1A938(v23);
    sub_252A71E74(v32, v33, v34, v30);
    (*(v14 + 8))(v19, v13);
  }

  else
  {
    sub_252A71E74(v32, v33, v34, v6);

    return 0;
  }

  return v27;
}

uint64_t sub_252AD8940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a1;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8);
  v4[5] = v5;
  v4[6] = *(v5 + 64);
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252AD8A20, 0, 0);
}

uint64_t sub_252AD8A20()
{
  v59 = v0;
  v1 = v0[3];
  if (!v1 || (v2 = [v1 entityResponses]) == 0)
  {
LABEL_17:
    v12 = v0[8];
    v13 = sub_252E36324();
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
    goto LABEL_18;
  }

  v3 = v2;
  type metadata accessor for HomeEntityResponse();
  v4 = sub_252E37264();

  v58 = MEMORY[0x277D84F90];
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_74:

    v11 = MEMORY[0x277D84F90];
    goto LABEL_75;
  }

  v5 = sub_252E378C4();
  if (!v5)
  {
    goto LABEL_74;
  }

LABEL_5:
  v54 = v0;
  v6 = 0;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x2530ADF00](v6, v4);
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_69;
      }

      v7 = *(v4 + 8 * v6 + 32);
    }

    v8 = v7;
    v0 = (v6 + 1);
    if (__OFADD__(v6, 1))
    {
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v9 = [v7 entity];
    if (v9 && (v3 = v9, v10 = [v9 type], v3, v10 == 5))
    {
      sub_252E37A94();
      sub_252E37AC4();
      sub_252E37AD4();
      v3 = &v58;
      sub_252E37AA4();
    }

    else
    {
    }

    ++v6;
  }

  while (v0 != v5);
  v11 = v58;

  v0 = v54;
  if (!v11)
  {
    goto LABEL_17;
  }

LABEL_75:
  if (!(v11 >> 62))
  {
    result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_77;
    }

LABEL_84:
    v46 = 1;
    goto LABEL_85;
  }

  result = sub_252E378C4();
  if (!result)
  {
    goto LABEL_84;
  }

LABEL_77:
  if ((v11 & 0xC000000000000001) == 0)
  {
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v43 = *(v11 + 32);
      goto LABEL_80;
    }

    __break(1u);
LABEL_98:
    __break(1u);
    return result;
  }

  v43 = MEMORY[0x2530ADF00](0, v11);

LABEL_80:
  v44 = [v43 entity];

  if (!v44)
  {
    goto LABEL_84;
  }

  v45 = [v44 homeEntityName];

  if (!v45)
  {
    goto LABEL_84;
  }

  sub_252E36F34();

  sub_252E37024();

  v46 = 0;
LABEL_85:
  v47 = v0[8];
  v48 = sub_252E36324();
  (*(*(v48 - 8) + 56))(v47, v46, 1, v48);
  if (!(v11 >> 62))
  {
    result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_87;
    }

LABEL_94:

    goto LABEL_18;
  }

  result = sub_252E378C4();
  if (!result)
  {
    goto LABEL_94;
  }

LABEL_87:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v49 = MEMORY[0x2530ADF00](0, v11);
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_98;
    }

    v49 = *(v11 + 32);
  }

  v50 = v49;

  v51 = [v50 entity];

  if (v51 && (v52 = [v51 entityIdentifier], v51, v52))
  {
    v6 = sub_252E36F34();
    v5 = v53;
  }

  else
  {
LABEL_18:
    v6 = 0;
    v5 = 0;
  }

  v14 = type metadata accessor for HomeStore(0);
  v15 = static HomeStore.shared.getter(v14);
  v3 = sub_2529DA828();

  if (!(v3 >> 62))
  {
    v16 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_21;
    }

LABEL_39:

    v57 = 0;
    goto LABEL_40;
  }

LABEL_71:
  v16 = sub_252E378C4();
  if (!v16)
  {
    goto LABEL_39;
  }

LABEL_21:
  v55 = v0;
  v17 = 0;
  v0 = (v3 & 0xC000000000000001);
  while (1)
  {
    if (v0)
    {
      v18 = MEMORY[0x2530ADF00](v17, v3);
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
LABEL_37:
        __break(1u);
LABEL_38:
        v0 = v55;
        goto LABEL_39;
      }
    }

    else
    {
      if (v17 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_68;
      }

      v18 = *(v3 + 8 * v17 + 32);

      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_37;
      }
    }

    v20 = *(v18 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);
    if (!v20)
    {
      if (!v5)
      {
        goto LABEL_44;
      }

      goto LABEL_23;
    }

    if (v5)
    {
      v21 = *(v18 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier) == v6 && v20 == v5;
      if (v21 || (sub_252E37DB4() & 1) != 0)
      {
        break;
      }
    }

LABEL_23:

    ++v17;
    if (v19 == v16)
    {
      goto LABEL_38;
    }
  }

LABEL_44:

  v34 = sub_252B2F8B4();

  v35 = v34;
  v36 = 0;
  v3 = *(v34 + 2);
  v0 = v55;
  do
  {
    v5 = v36;
    if (v3 == v36)
    {
      break;
    }

    ++v36;
  }

  while (*&v35[8 * v5 + 32] != 1);
  v37 = 0;
  while (1)
  {
    v6 = v37;
    if (v3 == v37)
    {
      break;
    }

    ++v37;
    if (*&v35[8 * v6 + 32] == 2)
    {
      goto LABEL_52;
    }
  }

  if (!v3)
  {

    v57 = 0;
    goto LABEL_40;
  }

LABEL_52:
  v38 = 32;
  v39 = v3;
  while (1)
  {
    if (!v39)
    {
      goto LABEL_70;
    }

    v40 = *&v35[v38] - 1;
    v41 = v40 < 2;
    if (v40 >= 2)
    {
      break;
    }

    v38 += 8;
    if (!--v39)
    {

      v42 = v3 == v6 && v3 != v5;
      if (v3 != v5 || v3 == v6)
      {
        LOBYTE(v57) = 0;
        BYTE4(v57) = v42;
        goto LABEL_40;
      }

      goto LABEL_64;
    }
  }

  if (v3 == v5 && v3 != v6)
  {
LABEL_64:
    v57 = v41;
    goto LABEL_40;
  }

  v57 = 0;
LABEL_40:
  v22 = v0[7];
  v23 = v0[8];
  v24 = v0[5];
  v25 = v0[6];
  v26 = v0[4];
  v27 = v26[12];
  v56 = v26[13];
  __swift_project_boxed_opaque_existential_1(v26 + 9, v27);
  sub_252956C1C(v23, v22);
  v28 = (*(v24 + 80) + 24) & ~*(v24 + 80);
  v29 = v28 + v25;
  v30 = swift_allocObject();
  *(v30 + 16) = v26;
  sub_2529439A0(v22, v30 + v28);
  v31 = (v30 + v29);
  *v31 = BYTE4(v57);
  v31[1] = v57;

  sub_252943BD0(sub_252AD9A0C, v30, 1, v27, v56);
  sub_25293847C(v23, &qword_27F540298, &unk_252E3C270);

  v32 = v0[1];

  return v32();
}

uint64_t sub_252AD9188(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_252E3C280;
  *(v10 + 32) = 0x6D614E656E656373;
  *(v10 + 40) = 0xE900000000000065;
  sub_252956C1C(a2, v9);
  v11 = sub_252E36324();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {

    sub_25293847C(v9, &qword_27F540298, &unk_252E3C270);
    *(v10 + 48) = 0u;
    *(v10 + 64) = 0u;
  }

  else
  {
    *(v10 + 72) = v11;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v10 + 48));
    (*(v12 + 32))(boxed_opaque_existential_0, v9, v11);
  }

  *(v10 + 80) = 0xD000000000000014;
  *(v10 + 88) = 0x8000000252E79400;
  v14 = MEMORY[0x277D839B0];
  *(v10 + 96) = a3 & 1;
  *(v10 + 120) = v14;
  *(v10 + 128) = 0xD000000000000013;
  *(v10 + 136) = 0x8000000252E79420;
  *(v10 + 168) = v14;
  *(v10 + 144) = a4 & 1;
  sub_252E362B4();
}

uint64_t sub_252AD93E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_252AD8940(a1, v6, a3);
}

void *sub_252AD9494@<X0>(const void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for MediaSceneFailureResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

void *sub_252AD94F8(void *result)
{
  if (!result)
  {
    return result;
  }

  v54 = result;
  v1 = [v54 entityResponses];
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = v1;
    type metadata accessor for HomeEntityResponse();
    v4 = sub_252E37264();

    v55 = v2;
    if (v4 >> 62)
    {
      goto LABEL_70;
    }

    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_17:
  }

  if (v2 >> 62)
  {
    v4 = sub_252E378C4();
    if (v4)
    {
      goto LABEL_20;
    }

LABEL_64:

    v43 = v54;
LABEL_65:

    return 0;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_64;
  }

LABEL_20:
  v13 = 0;
  v14 = v2 & 0xC000000000000001;
  v15 = v2 & 0xFFFFFFFFFFFFFF8;
  v51 = v2;
  v2 += 32;
  v16 = &off_279711000;
  v48 = v14;
  v49 = v4;
  v46 = v2;
  v47 = v15;
  while (1)
  {
    if (v14)
    {
      v17 = MEMORY[0x2530ADF00](v13, v51);
      goto LABEL_24;
    }

    if (v13 >= *(v15 + 16))
    {
      break;
    }

    v17 = *(v2 + 8 * v13);
LABEL_24:
    v18 = v17;
    v19 = __OFADD__(v13, 1);
    v20 = v13 + 1;
    if (v19)
    {
      goto LABEL_69;
    }

    v21 = [v17 v16[220]];
    if (!v21)
    {

      goto LABEL_55;
    }

    v22 = v21;
    type metadata accessor for HomeUserTaskResponse();
    v23 = sub_252E37264();

    v24 = [v18 entity];
    if (!v24)
    {
      goto LABEL_52;
    }

    if (v23 >> 62)
    {
      v25 = sub_252E378C4();
      if (!v25)
      {
LABEL_52:

LABEL_55:

        return 0;
      }
    }

    else
    {
      v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v25)
      {
        goto LABEL_52;
      }
    }

    v52 = v18;
    v50 = v20;
    v26 = v23;
    v27 = 0;
    v28 = v26 & 0xC000000000000001;
    v29 = v26 & 0xFFFFFFFFFFFFFF8;
    v53 = v26;
    v30 = v26 + 32;
    while (1)
    {
      if (v28)
      {
        v31 = MEMORY[0x2530ADF00](v27, v53);
      }

      else
      {
        if (v27 >= *(v29 + 16))
        {
          goto LABEL_57;
        }

        v31 = *(v30 + 8 * v27);
      }

      v32 = v31;
      v19 = __OFADD__(v27++, 1);
      if (v19)
      {
        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      if (qword_27F53F730 != -1)
      {
        swift_once();
      }

      v33 = qword_27F575C40;
      v34 = [v32 taskOutcome];
      if (*(v33 + 16))
      {
        v35 = v34;
        sub_252E37EC4();
        MEMORY[0x2530AE390](v35);
        v36 = sub_252E37F14();
        v37 = -1 << *(v33 + 32);
        v38 = v36 & ~v37;
        if ((*(v33 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38))
        {
          v39 = ~v37;
          while (*(*(v33 + 48) + 8 * v38) != v35)
          {
            v38 = (v38 + 1) & v39;
            if (((*(v33 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
            {
              goto LABEL_30;
            }
          }

          v40 = [v32 userTask];
          if (v40)
          {
            break;
          }
        }
      }

LABEL_30:

LABEL_31:
      if (v27 == v25)
      {

        v43 = v52;
        goto LABEL_65;
      }
    }

    v41 = v40;
    v42 = [v40 attribute];

    if (v42 != 65)
    {
      goto LABEL_31;
    }

    v4 = v49;
    v13 = v50;
    v15 = v47;
    v14 = v48;
    v2 = v46;
    v16 = &off_279711000;
    if (v50 == v49)
    {
      goto LABEL_60;
    }
  }

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  v5 = sub_252E378C4();
  if (!v5)
  {
    goto LABEL_17;
  }

LABEL_5:
  v6 = 0;
  while (1)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x2530ADF00](v6, v4);
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_59;
      }

      v7 = *(v4 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    v10 = [v7 entity];
    if (v10 && (v11 = v10, v12 = [v10 type], v11, v12 == 5))
    {
    }

    else
    {
      sub_252E37A94();
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
    }

    ++v6;
    if (v9 == v5)
    {
      v2 = v55;
      goto LABEL_17;
    }
  }

LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:

  v44 = sub_252C2F554();
  if (v44 >> 62)
  {
    v45 = sub_252E378C4();
  }

  else
  {
    v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return (v45 != 0);
}

uint64_t sub_252AD9A0C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(v0 + 16);
  v5 = v0 + ((v2 + 24) & ~v2);
  v6 = *(v5 + v3);
  v7 = *(v5 + v3 + 1);

  return sub_252AD9188(v4, v5, v6, v7);
}

uint64_t sub_252AD9AC8(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  v3 = (a1 + 512);
  v4 = -1;
  while (v2 != ++v4)
  {
    if (!*(*(v3 - 10) + 16) && !*(*(v3 - 9) + 16) && !*(*(v3 - 8) + 16) && !*(*(v3 - 7) + 16) && !*(*(v3 - 6) + 16) && !*(*(v3 - 5) + 16) && !*(*(v3 - 4) + 16) && !*(*(v3 - 3) + 16) && !*(*(v3 - 2) + 16) && !*(*(v3 - 1) + 16))
    {
      v5 = *v3;
      v3 += 63;
      if (!*(v5 + 16))
      {
        continue;
      }
    }

    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      v8 = v1 + 504 * v6;
      v9 = v6;
      while (1)
      {
        if (v9 >= v2)
        {
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        memcpy(__dst, (v8 + 32), sizeof(__dst));
        v6 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_33;
        }

        v10 = *(v8 + 480);
        v22 = *(v8 + 464);
        v23 = v10;
        v24 = *(v8 + 496);
        v25 = *(v8 + 512);
        v11 = *(v8 + 448);
        v20 = *(v8 + 432);
        v21 = v11;
        sub_2529353AC(__dst, v17);
        if (sub_252C5E020())
        {
          break;
        }

        sub_252935408(__dst);
        ++v9;
        v8 += 504;
        if (v6 == v2)
        {
          goto LABEL_26;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2529AA480(0, *(v7 + 16) + 1, 1);
        v7 = v19;
      }

      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_2529AA480((v13 > 1), v14 + 1, 1);
        v7 = v19;
      }

      *(v7 + 16) = v14 + 1;
      memcpy((v7 + 504 * v14 + 32), __dst, 0x1F8uLL);
      if (v6 == v2)
      {
LABEL_26:
        if (*(v7 + 16))
        {
          return v7;
        }

        if (qword_27F53F520 == -1)
        {
LABEL_29:
          v15 = sub_252E36AD4();
          __swift_project_value_buffer(v15, qword_27F544E08);
          sub_252CC3D90(0xD000000000000027, 0x8000000252E79440, 0xD00000000000009CLL, 0x8000000252E79470);
          goto LABEL_30;
        }

LABEL_34:
        swift_once();
        goto LABEL_29;
      }
    }
  }

LABEL_30:

  return v1;
}