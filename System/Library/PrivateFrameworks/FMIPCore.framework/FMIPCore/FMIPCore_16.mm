BOOL FMIPDevice.isLostModeActive.getter()
{
  v1 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  MEMORY[0x28223BE20](v1 - 8);
  v26 = &v25 - v2;
  v3 = type metadata accessor for FMIPDeviceLostModeMetadata(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v25 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A6BBA94(&unk_27EF5E0A0, &unk_24A8367D0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = type metadata accessor for FMIPDevice(0);
  v13 = *(v12 + 116);
  sub_24A67E964(v0 + v13, v11, &unk_27EF5E0A0, &unk_24A8367D0);
  v14 = *(v4 + 48);
  v15 = v14(v11, 1, v3);
  v16 = v11;
  v17 = v12;
  v18 = v0;
  sub_24A67F378(v16, &unk_27EF5E0A0, &unk_24A8367D0);
  if (v15 != 1 && *(v0 + *(v17 + 136)) == 5)
  {
    return 1;
  }

  sub_24A67E964(v0 + v13, v9, &unk_27EF5E0A0, &unk_24A8367D0);
  if (v14(v9, 1, v3) == 1)
  {
    sub_24A67F378(v9, &unk_27EF5E0A0, &unk_24A8367D0);
LABEL_7:
    v21 = v26;
    sub_24A67E964(v18 + *(v17 + 128), v26, &unk_27EF5E0B0, &qword_24A8338B0);
    v22 = type metadata accessor for FMIPItemGroup(0);
    if ((*(*(v22 - 8) + 48))(v21, 1, v22) == 1)
    {
      sub_24A67F378(v21, &unk_27EF5E0B0, &qword_24A8338B0);
      return 0;
    }

    v23 = *(v21 + 64);
    sub_24A692298(v21, type metadata accessor for FMIPItemGroup);
    return (v23 & 8) != 0;
  }

  v19 = v25;
  sub_24A7E11A4(v9, v25, type metadata accessor for FMIPDeviceLostModeMetadata);
  v20 = *(v19 + 56);
  if (((1 << v20) & 0x1FFB) == 0 && (*(v18 + 216) & 2) != 0)
  {
    sub_24A692298(v19, type metadata accessor for FMIPDeviceLostModeMetadata);
    return 1;
  }

  sub_24A692298(v19, type metadata accessor for FMIPDeviceLostModeMetadata);
  if (v20 != 4)
  {
    goto LABEL_7;
  }

  return 1;
}

BOOL FMIPDevice.deviceIsPendingRemoval.getter()
{
  v1 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  if ((*(v0 + 218) & 2) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for FMIPDevice(0);
  sub_24A67E964(v0 + *(v5 + 168), v3, &qword_27EF5E0E0, &qword_24A836D90);
  v6 = sub_24A82CA34();
  v4 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_24A67F378(v3, &qword_27EF5E0E0, &qword_24A836D90);
  return v4;
}

uint64_t sub_24A7DF860(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v107 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_106:
    v107 = *v107;
    if (!v107)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_24A7E016C(v9);
      v9 = result;
    }

    v97 = v9 + 16;
    v98 = *(v9 + 2);
    if (v98 >= 2)
    {
      while (1)
      {
        v99 = *v6;
        if (!*v6)
        {
          goto LABEL_142;
        }

        v100 = &v9[16 * v98];
        v6 = *v100;
        v101 = &v97[2 * v98];
        v102 = v101[1];
        sub_24A7DFE90((v99 + 24 * *v100), (v99 + 24 * *v101), v99 + 24 * v102, v107);
        if (v5)
        {
        }

        if (v102 < v6)
        {
          goto LABEL_130;
        }

        if (v98 - 2 >= *v97)
        {
          goto LABEL_131;
        }

        *v100 = v6;
        *(v100 + 1) = v102;
        v103 = *v97 - v98;
        if (*v97 < v98)
        {
          goto LABEL_132;
        }

        v98 = *v97 - 1;
        result = memmove(v101, v101 + 2, 16 * v103);
        *v97 = v98;
        v6 = a3;
        if (v98 <= 1)
        {
        }
      }
    }
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v11 = *v6;
      v12 = (*v6 + 24 * v8);
      v13 = *v12;
      v14 = v12[1];
      v15 = (*v6 + 24 * v10);
      result = *v15;
      if (*v15 == v13 && v15[1] == v14)
      {
        v17 = 0;
      }

      else
      {
        result = sub_24A82DC04();
        v17 = result;
      }

      v8 = v10 + 2;
      if (v10 + 2 < v7)
      {
        v18 = (v11 + 24 * v10 + 32);
        v19 = v18;
        do
        {
          v21 = v19[3];
          v19 += 3;
          v20 = v21;
          result = *(v18 - 1);
          if (result == v18[2] && *v18 == v20)
          {
            if (v17)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_24A82DC04();
            if ((v17 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v8;
          v18 = v19;
        }

        while (v7 != v8);
        v8 = v7;
      }

LABEL_23:
      if (v17)
      {
LABEL_24:
        if (v8 < v10)
        {
          goto LABEL_135;
        }

        if (v10 < v8)
        {
          v23 = 24 * v8;
          v24 = 24 * v10 + 18;
          v25 = v8;
          v26 = v10;
          do
          {
            if (v26 != --v25)
            {
              v34 = *v6;
              if (!*v6)
              {
                goto LABEL_141;
              }

              v27 = (v34 + v24);
              v28 = *(v34 + v24 - 18);
              v29 = v34 + v23;
              v30 = *(v27 - 10);
              v31 = *(v27 - 2);
              v32 = *(v27 - 1);
              v33 = *v27;
              result = *(v29 - 8);
              *(v27 - 18) = *(v29 - 24);
              *(v27 - 2) = result;
              *(v29 - 24) = v28;
              *(v29 - 16) = v30;
              *(v29 - 8) = v31;
              *(v29 - 7) = v32;
              *(v29 - 6) = v33;
            }

            ++v26;
            v23 -= 24;
            v24 += 24;
          }

          while (v26 < v25);
        }
      }
    }

    v35 = v6[1];
    if (v8 < v35)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_134;
      }

      if (v8 - v10 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v8 < v10)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24A78056C(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v51 = *(v9 + 2);
    v50 = *(v9 + 3);
    v52 = v51 + 1;
    if (v51 >= v50 >> 1)
    {
      result = sub_24A78056C((v50 > 1), v51 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v52;
    v53 = &v9[16 * v51];
    *(v53 + 4) = v10;
    *(v53 + 5) = v8;
    v54 = *v107;
    if (!*v107)
    {
      goto LABEL_143;
    }

    if (v51)
    {
      while (1)
      {
        v55 = v52 - 1;
        if (v52 >= 4)
        {
          break;
        }

        if (v52 == 3)
        {
          v56 = *(v9 + 4);
          v57 = *(v9 + 5);
          v66 = __OFSUB__(v57, v56);
          v58 = v57 - v56;
          v59 = v66;
LABEL_75:
          if (v59)
          {
            goto LABEL_121;
          }

          v72 = &v9[16 * v52];
          v74 = *v72;
          v73 = *(v72 + 1);
          v75 = __OFSUB__(v73, v74);
          v76 = v73 - v74;
          v77 = v75;
          if (v75)
          {
            goto LABEL_124;
          }

          v78 = &v9[16 * v55 + 32];
          v80 = *v78;
          v79 = *(v78 + 1);
          v66 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v66)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v76, v81))
          {
            goto LABEL_128;
          }

          if (v76 + v81 >= v58)
          {
            if (v58 < v81)
            {
              v55 = v52 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v82 = &v9[16 * v52];
        v84 = *v82;
        v83 = *(v82 + 1);
        v66 = __OFSUB__(v83, v84);
        v76 = v83 - v84;
        v77 = v66;
LABEL_89:
        if (v77)
        {
          goto LABEL_123;
        }

        v85 = &v9[16 * v55];
        v87 = *(v85 + 4);
        v86 = *(v85 + 5);
        v66 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v66)
        {
          goto LABEL_126;
        }

        if (v88 < v76)
        {
          goto LABEL_3;
        }

LABEL_96:
        v93 = v55 - 1;
        if (v55 - 1 >= v52)
        {
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
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*v6)
        {
          goto LABEL_140;
        }

        v94 = *&v9[16 * v93 + 32];
        v95 = *&v9[16 * v55 + 40];
        sub_24A7DFE90((*v6 + 24 * v94), (*v6 + 24 * *&v9[16 * v55 + 32]), *v6 + 24 * v95, v54);
        if (v5)
        {
        }

        if (v95 < v94)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_24A7E016C(v9);
        }

        if (v93 >= *(v9 + 2))
        {
          goto LABEL_118;
        }

        v96 = &v9[16 * v93];
        *(v96 + 4) = v94;
        *(v96 + 5) = v95;
        result = sub_24A7E00E0(v55);
        v52 = *(v9 + 2);
        if (v52 <= 1)
        {
          goto LABEL_3;
        }
      }

      v60 = &v9[16 * v52 + 32];
      v61 = *(v60 - 64);
      v62 = *(v60 - 56);
      v66 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      if (v66)
      {
        goto LABEL_119;
      }

      v65 = *(v60 - 48);
      v64 = *(v60 - 40);
      v66 = __OFSUB__(v64, v65);
      v58 = v64 - v65;
      v59 = v66;
      if (v66)
      {
        goto LABEL_120;
      }

      v67 = &v9[16 * v52];
      v69 = *v67;
      v68 = *(v67 + 1);
      v66 = __OFSUB__(v68, v69);
      v70 = v68 - v69;
      if (v66)
      {
        goto LABEL_122;
      }

      v66 = __OFADD__(v58, v70);
      v71 = v58 + v70;
      if (v66)
      {
        goto LABEL_125;
      }

      if (v71 >= v63)
      {
        v89 = &v9[16 * v55 + 32];
        v91 = *v89;
        v90 = *(v89 + 1);
        v66 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v66)
        {
          goto LABEL_129;
        }

        if (v58 < v92)
        {
          v55 = v52 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v10, a4))
  {
    goto LABEL_136;
  }

  v105 = v5;
  if (v10 + a4 >= v35)
  {
    v5 = v6[1];
  }

  else
  {
    v5 = v10 + a4;
  }

  if (v5 < v10)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v8 == v5)
  {
LABEL_54:
    v5 = v105;
    goto LABEL_55;
  }

  v36 = *v6;
  v37 = *v6 + 24 * v8 - 24;
  v104 = v10;
  v38 = v10 - v8;
LABEL_43:
  v39 = v38;
  v40 = v37;
  while (1)
  {
    v41 = v40 + 24;
    v42 = *v40 == *(v40 + 24) && *(v40 + 8) == *(v40 + 32);
    if (v42 || (result = sub_24A82DC04(), (result & 1) == 0))
    {
LABEL_42:
      ++v8;
      v37 += 24;
      --v38;
      if (v8 != v5)
      {
        goto LABEL_43;
      }

      v8 = v5;
      v6 = a3;
      v10 = v104;
      goto LABEL_54;
    }

    if (!v36)
    {
      break;
    }

    v44 = *(v40 + 24);
    v43 = *(v40 + 32);
    v45 = *(v40 + 40);
    v46 = *(v40 + 41);
    v47 = *(v40 + 42);
    v48 = *(v40 + 16);
    *v41 = *v40;
    *v40 = v44;
    *(v40 + 8) = v43;
    *(v40 + 16) = v45;
    *(v40 + 17) = v46;
    *(v40 + 18) = v47;
    v40 -= 24;
    *(v41 + 16) = v48;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_24A7DFE90(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    v12 = 24 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v16 = *v4 == *v6 && *(v4 + 1) == *(v6 + 1);
      if (!v16 && (sub_24A82DC04() & 1) != 0)
      {
        break;
      }

      v14 = v4;
      v16 = v7 == v4;
      v4 += 24;
      if (!v16)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v16 = v7 == v6;
    v6 += 24;
    if (v16)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v14;
    *(v7 + 2) = *(v14 + 2);
    *v7 = v15;
    goto LABEL_9;
  }

  v17 = 24 * v11;
  if (a4 != __src || &__src[v17] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v13 = &v4[v17];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_24:
    v18 = v6 - 24;
    v5 -= 24;
    v19 = v13;
    do
    {
      v20 = *(v19 - 24);
      v21 = *(v19 - 16);
      v19 -= 24;
      v22 = *(v6 - 3) == v20 && *(v6 - 2) == v21;
      if (!v22 && (sub_24A82DC04() & 1) != 0)
      {
        if ((v5 + 24) != v6)
        {
          v24 = *v18;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v24;
        }

        if (v13 <= v4 || (v6 -= 24, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_39;
        }

        goto LABEL_24;
      }

      if ((v5 + 24) != v13)
      {
        v23 = *v19;
        *(v5 + 16) = *(v19 + 16);
        *v5 = v23;
      }

      v5 -= 24;
      v13 = v19;
    }

    while (v19 > v4);
    v13 = v19;
  }

LABEL_39:
  v25 = 24 * ((v13 - v4) / 24);
  if (v6 != v4 || v6 >= &v4[v25])
  {
    memmove(v6, v4, v25);
  }

  return 1;
}

uint64_t sub_24A7E00E0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_24A7E016C(v3);
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

uint64_t sub_24A7E0180(double a1, double a2)
{
  if (a1 == a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = a2 - a1;
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = 0;
  result = MEMORY[0x24C21E1F0](&v6, 8);
  if (v4 * vcvtd_n_f64_u64(v6 & 0x1FFFFFFFFFFFFFLL, 0x35uLL) + a1 == a2)
  {
    return sub_24A7E0180(a1, a2);
  }

  return result;
}

uint64_t sub_24A7E0238(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_24A7E0270()
{
  result = qword_27EF5F1E0;
  if (!qword_27EF5F1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F1E0);
  }

  return result;
}

unint64_t sub_24A7E02C4()
{
  result = qword_27EF5F1E8;
  if (!qword_27EF5F1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F1E8);
  }

  return result;
}

unint64_t sub_24A7E0318()
{
  result = qword_27EF5F1F0;
  if (!qword_27EF5F1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F1F0);
  }

  return result;
}

unint64_t sub_24A7E036C()
{
  result = qword_27EF5F1F8;
  if (!qword_27EF5F1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F1F8);
  }

  return result;
}

unint64_t sub_24A7E03C0()
{
  result = qword_27EF5F200;
  if (!qword_27EF5F200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F200);
  }

  return result;
}

unint64_t sub_24A7E0414()
{
  result = qword_27EF5F208;
  if (!qword_27EF5F208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F208);
  }

  return result;
}

unint64_t sub_24A7E0468()
{
  result = qword_27EF5F260;
  if (!qword_27EF5F260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F260);
  }

  return result;
}

unint64_t sub_24A7E04BC()
{
  result = qword_281512BB0;
  if (!qword_281512BB0)
  {
    sub_24A6CCDC0(&qword_27EF5F270, &qword_24A83DF10);
    sub_24A6842C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281512BB0);
  }

  return result;
}

unint64_t sub_24A7E0540()
{
  result = qword_281512BA0;
  if (!qword_281512BA0)
  {
    sub_24A6CCDC0(&qword_27EF5F278, &qword_24A83DF18);
    sub_24A687E9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281512BA0);
  }

  return result;
}

unint64_t sub_24A7E05C4()
{
  result = qword_281512BB8;
  if (!qword_281512BB8)
  {
    sub_24A6CCDC0(&qword_27EF5F270, &qword_24A83DF10);
    sub_24A7E0648();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281512BB8);
  }

  return result;
}

unint64_t sub_24A7E0648()
{
  result = qword_281514268[0];
  if (!qword_281514268[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281514268);
  }

  return result;
}

unint64_t sub_24A7E069C()
{
  result = qword_281512B98;
  if (!qword_281512B98)
  {
    sub_24A6CCDC0(&qword_27EF5F2A0, &qword_24A83DF30);
    sub_24A7E0720();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281512B98);
  }

  return result;
}

unint64_t sub_24A7E0720()
{
  result = qword_281512BA8;
  if (!qword_281512BA8)
  {
    sub_24A6CCDC0(&qword_27EF5F278, &qword_24A83DF18);
    sub_24A7E07A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281512BA8);
  }

  return result;
}

unint64_t sub_24A7E07A4()
{
  result = qword_281513F50;
  if (!qword_281513F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281513F50);
  }

  return result;
}

unint64_t sub_24A7E07F8()
{
  result = qword_2815144F0;
  if (!qword_2815144F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815144F0);
  }

  return result;
}

unint64_t sub_24A7E084C()
{
  result = qword_281513F58;
  if (!qword_281513F58)
  {
    sub_24A6CCDC0(&qword_27EF5D5F8, &qword_24A83DE60);
    sub_24A7E0BD0(&qword_281513F68, type metadata accessor for FMIPPlaySoundMetadata, &protocol conformance descriptor for FMIPPlaySoundMetadata);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281513F58);
  }

  return result;
}

unint64_t sub_24A7E0900()
{
  result = qword_281513590;
  if (!qword_281513590)
  {
    sub_24A6CCDC0(&unk_27EF5E0A0, &unk_24A8367D0);
    sub_24A7E0BD0(&qword_2815135A0, type metadata accessor for FMIPDeviceLostModeMetadata, &protocol conformance descriptor for FMIPDeviceLostModeMetadata);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281513590);
  }

  return result;
}

unint64_t sub_24A7E09B4()
{
  result = qword_281514150;
  if (!qword_281514150)
  {
    sub_24A6CCDC0(&qword_27EF5DE50, &qword_24A83DE40);
    sub_24A7E0BD0(&qword_281514160, type metadata accessor for FMIPLockMetadata, &protocol conformance descriptor for FMIPLockMetadata);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514150);
  }

  return result;
}

unint64_t sub_24A7E0A68()
{
  result = qword_281514120;
  if (!qword_281514120)
  {
    sub_24A6CCDC0(&qword_27EF5DE48, &unk_24A8367C0);
    sub_24A7E0BD0(&qword_281514130, type metadata accessor for FMIPEraseMetadata, &protocol conformance descriptor for FMIPEraseMetadata);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514120);
  }

  return result;
}

unint64_t sub_24A7E0B1C()
{
  result = qword_27EF5F2A8;
  if (!qword_27EF5F2A8)
  {
    sub_24A6CCDC0(&unk_27EF5E0B0, &qword_24A8338B0);
    sub_24A7E0BD0(&qword_27EF5E180, type metadata accessor for FMIPItemGroup, &protocol conformance descriptor for FMIPItemGroup);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F2A8);
  }

  return result;
}

uint64_t sub_24A7E0BD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24A7E0C18()
{
  result = qword_27EF5F2B0;
  if (!qword_27EF5F2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F2B0);
  }

  return result;
}

unint64_t sub_24A7E0C6C()
{
  result = qword_27EF5F2B8;
  if (!qword_27EF5F2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F2B8);
  }

  return result;
}

unint64_t sub_24A7E0CC0()
{
  result = qword_27EF5F2C0;
  if (!qword_27EF5F2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F2C0);
  }

  return result;
}

unint64_t sub_24A7E0D18()
{
  result = qword_27EF5F2C8;
  if (!qword_27EF5F2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F2C8);
  }

  return result;
}

unint64_t sub_24A7E0D70()
{
  result = qword_27EF5F2D0;
  if (!qword_27EF5F2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F2D0);
  }

  return result;
}

unint64_t sub_24A7E0DC8()
{
  result = qword_27EF5F2D8;
  if (!qword_27EF5F2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F2D8);
  }

  return result;
}

unint64_t sub_24A7E0E20()
{
  result = qword_27EF5F2E0;
  if (!qword_27EF5F2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F2E0);
  }

  return result;
}

unint64_t sub_24A7E0E78()
{
  result = qword_27EF5F2E8;
  if (!qword_27EF5F2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F2E8);
  }

  return result;
}

unint64_t sub_24A7E0ED0()
{
  result = qword_27EF5F2F0;
  if (!qword_27EF5F2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F2F0);
  }

  return result;
}

unint64_t sub_24A7E0F28()
{
  result = qword_27EF5F2F8;
  if (!qword_27EF5F2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F2F8);
  }

  return result;
}

unint64_t sub_24A7E0F80()
{
  result = qword_27EF5F300;
  if (!qword_27EF5F300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F300);
  }

  return result;
}

unint64_t sub_24A7E104C()
{
  result = qword_27EF5F318;
  if (!qword_27EF5F318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F318);
  }

  return result;
}

unint64_t sub_24A7E10A4()
{
  result = qword_27EF5F320;
  if (!qword_27EF5F320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F320);
  }

  return result;
}

unint64_t sub_24A7E10FC()
{
  result = qword_27EF5F328;
  if (!qword_27EF5F328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F328);
  }

  return result;
}

unint64_t sub_24A7E1150(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A82DC24();

  if (v2 >= 0x3B)
  {
    return 59;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24A7E11A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A7E121C()
{
  sub_24A82DCC4();
  sub_24A82D094();
  return sub_24A82DD24();
}

uint64_t sub_24A7E1298(uint64_t a1)
{
  sub_24A82DCC4();
  sub_24A82D094();
  return sub_24A82DD24();
}

uint64_t sub_24A7E12F0@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_24A82D9C4();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_24A7E1388@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_24A82D9C4();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_24A7E13E0(uint64_t a1)
{
  v2 = sub_24A7E1BC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A7E141C(uint64_t a1)
{
  v2 = sub_24A7E1BC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A7E1458(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_24A6BBA94(&qword_27EF5F3B8, &qword_24A83EF48);
  v66 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v47 - v7;
  if (qword_281515DC8 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v9 = sub_24A82CDC4();
    sub_24A6797D0(v9, qword_281518F88);
    v10 = sub_24A82CD94();
    v11 = sub_24A82D504();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_24A675000, v10, v11, "FMIPUserInfoResponseFragment: initialized with coder", v12, 2u);
      MEMORY[0x24C21E1D0](v12, -1, -1);
    }

    sub_24A67DF6C(a1, a1[3]);
    sub_24A7E1BC4();
    sub_24A82DD64();
    if (v3)
    {
      break;
    }

    sub_24A698230(a1, v73);
    FMIPPerson.init(from:)(v73, v74);
    v69 = v74[2];
    v70 = v74[3];
    v71 = v74[4];
    v72 = v75;
    v67 = v74[0];
    v68 = v74[1];
    v14 = sub_24A82CD94();
    v15 = sub_24A82D504();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_24A675000, v14, v15, "FMIPUserInfoResponseFragment: parsing family members", v16, 2u);
      MEMORY[0x24C21E1D0](v16, -1, -1);
    }

    sub_24A6BBA94(&qword_27EF5F3C0, &qword_24A83EF50);
    sub_24A7E1C18();
    sub_24A82DA84();
    v17 = 0;
    v19 = v76 + 64;
    v18 = *(v76 + 64);
    v51 = v76;
    v20 = 1 << *(v76 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & v18;
    v23 = (v20 + 63) >> 6;
    v24 = MEMORY[0x277D84F90];
    v50 = v4;
    v49 = v6;
    v48 = v8;
    v47 = v76 + 64;
    if ((v21 & v18) != 0)
    {
      do
      {
LABEL_17:
        v26 = __clz(__rbit64(v22)) | (v17 << 6);
        v27 = *(v51 + 56);
        v28 = (*(v51 + 48) + 16 * v26);
        v29 = v28[1];
        v64 = *v28;
        v30 = (v27 + 88 * v26);
        v31 = v30[1];
        v58 = *v30;
        v32 = v30[3];
        v57 = v30[2];
        v56 = *(v30 + 32);
        v55 = *(v30 + 33);
        v54 = *(v30 + 34);
        v53 = *(v30 + 35);
        v33 = v30[6];
        v52 = v30[5];
        v34 = v30[10];
        v62 = v30[9];
        v63 = v34;

        v61 = v31;

        v60 = v32;

        v59 = v33;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v65 = v29;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v24 = sub_24A780A88(0, *(v24 + 2) + 1, 1, v24);
        }

        v37 = *(v24 + 2);
        v36 = *(v24 + 3);
        v8 = v48;
        v19 = v47;
        if (v37 >= v36 >> 1)
        {
          v24 = sub_24A780A88((v36 > 1), v37 + 1, 1, v24);
        }

        *(v24 + 2) = v37 + 1;
        v22 &= v22 - 1;
        v38 = &v24[88 * v37];
        v39 = v61;
        *(v38 + 4) = v58;
        *(v38 + 5) = v39;
        v40 = v60;
        *(v38 + 6) = v57;
        *(v38 + 7) = v40;
        v38[64] = v56;
        v38[65] = v55;
        v38[66] = v54;
        v38[67] = v53;
        v41 = v59;
        *(v38 + 9) = v52;
        *(v38 + 10) = v41;
        v42 = v65;
        *(v38 + 11) = v64;
        *(v38 + 12) = v42;
        v43 = v63;
        *(v38 + 13) = v62;
        *(v38 + 14) = v43;
        v4 = v50;
        v6 = v49;
      }

      while (v22);
    }

    while (1)
    {
      v25 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v25 >= v23)
      {

        (*(v66 + 8))(v8, v6);
        v44 = v70;
        *(v4 + 48) = v69;
        *(v4 + 64) = v44;
        *(v4 + 80) = v71;
        v45 = v72;
        v46 = v68;
        *(v4 + 16) = v67;
        *(v4 + 32) = v46;
        *(v4 + 96) = v45;
        *(v4 + 104) = v24;
        goto LABEL_7;
      }

      v22 = *(v19 + 8 * v25);
      ++v17;
      if (v22)
      {
        v17 = v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  type metadata accessor for FMIPUserInfoResponseFragment();
  swift_deallocPartialClassInstance();
LABEL_7:
  sub_24A6876E8(a1);
  return v4;
}

uint64_t sub_24A7E1AC0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24A7E1B6C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for FMIPUserInfoResponseFragment();
  v5 = swift_allocObject();
  result = sub_24A7E1458(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_24A7E1BC4()
{
  result = qword_2815131D0;
  if (!qword_2815131D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815131D0);
  }

  return result;
}

unint64_t sub_24A7E1C18()
{
  result = qword_281512BD8;
  if (!qword_281512BD8)
  {
    sub_24A6CCDC0(&qword_27EF5F3C0, &qword_24A83EF50);
    sub_24A693350();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281512BD8);
  }

  return result;
}

unint64_t sub_24A7E1CB8()
{
  result = qword_27EF5F3C8;
  if (!qword_27EF5F3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F3C8);
  }

  return result;
}

unint64_t sub_24A7E1D10()
{
  result = qword_2815131C0;
  if (!qword_2815131C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815131C0);
  }

  return result;
}

unint64_t sub_24A7E1D68()
{
  result = qword_2815131C8;
  if (!qword_2815131C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815131C8);
  }

  return result;
}

uint64_t FMIPShareItemAction.__allocating_init(item:handles:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + OBJC_IVAR____TtC8FMIPCore19FMIPShareItemAction_handles) = a2;
  sub_24A6CB364(a1, v4 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item);
  return v4;
}

uint64_t FMIPShareItemAction.init(item:handles:)(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC8FMIPCore19FMIPShareItemAction_handles) = a2;
  sub_24A6CB364(a1, v2 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item);
  return v2;
}

uint64_t sub_24A7E1E5C()
{
  v1 = sub_24A82DDB4();
  MEMORY[0x24C21C9E0](v1);

  MEMORY[0x24C21C9E0](2016419898, 0xE400000000000000);
  sub_24A6CB660();
  v2 = sub_24A82D174();
  MEMORY[0x24C21C9E0](v2);

  MEMORY[0x24C21C9E0](32, 0xE100000000000000);
  sub_24A82D854();

  MEMORY[0x24C21C9E0](*(v0 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item + 352), *(v0 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item + 360));
  MEMORY[0x24C21C9E0](0x73656C646E616820, 0xEB0000000027203ALL);
  v3 = MEMORY[0x24C21CB60](*(v0 + OBJC_IVAR____TtC8FMIPCore19FMIPShareItemAction_handles), MEMORY[0x277D837D0]);
  MEMORY[0x24C21C9E0](v3);

  MEMORY[0x24C21C9E0](15911, 0xE200000000000000);

  MEMORY[0x24C21C9E0](0x203A6D657469, 0xE600000000000000);

  return 60;
}

uint64_t FMIPShareItemAction.deinit()
{
  sub_24A69F324(v0 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item, type metadata accessor for FMIPItem);

  return v0;
}

uint64_t FMIPShareItemAction.__deallocating_deinit()
{
  sub_24A69F324(v0 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item, type metadata accessor for FMIPItem);

  return swift_deallocClassInstance();
}

unint64_t sub_24A7E2164()
{
  v0 = sub_24A82DDB4();
  MEMORY[0x24C21C9E0](v0);

  MEMORY[0x24C21C9E0](2016419898, 0xE400000000000000);
  sub_24A6CB660();
  v1 = sub_24A82D174();
  MEMORY[0x24C21C9E0](v1);

  MEMORY[0x24C21C9E0](32, 0xE100000000000000);
  sub_24A82D854();

  sub_24A82CAA4();
  sub_24A7E2304();
  v2 = sub_24A82DB84();
  MEMORY[0x24C21C9E0](v2);

  MEMORY[0x24C21C9E0](15911, 0xE200000000000000);

  MEMORY[0x24C21C9E0](0xD000000000000011, 0x800000024A849FB0);

  return 60;
}

unint64_t sub_24A7E2304()
{
  result = qword_27EF5CEF0;
  if (!qword_27EF5CEF0)
  {
    sub_24A82CAA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5CEF0);
  }

  return result;
}

uint64_t FMIPStopSharingAction.__allocating_init(unknownItem:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC8FMIPCore21FMIPStopSharingAction_beaconIdentifier;
  v4 = sub_24A82CAA4();
  (*(*(v4 - 8) + 16))(v2 + v3, a1, v4);
  sub_24A69F324(a1, type metadata accessor for FMIPUnknownItem);
  *(v2 + OBJC_IVAR____TtC8FMIPCore21FMIPStopSharingAction_force) = 0;
  *(v2 + OBJC_IVAR____TtC8FMIPCore21FMIPStopSharingAction_isDelegated) = 0;
  return v2;
}

uint64_t FMIPStopSharingAction.init(unknownItem:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8FMIPCore21FMIPStopSharingAction_beaconIdentifier;
  v4 = sub_24A82CAA4();
  (*(*(v4 - 8) + 16))(v1 + v3, a1, v4);
  sub_24A69F324(a1, type metadata accessor for FMIPUnknownItem);
  *(v1 + OBJC_IVAR____TtC8FMIPCore21FMIPStopSharingAction_force) = 0;
  *(v1 + OBJC_IVAR____TtC8FMIPCore21FMIPStopSharingAction_isDelegated) = 0;
  return v1;
}

uint64_t FMIPStopSharingAction.__allocating_init(beaconIdentifier:force:)(uint64_t a1, char a2)
{
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC8FMIPCore21FMIPStopSharingAction_beaconIdentifier;
  v6 = sub_24A82CAA4();
  (*(*(v6 - 8) + 32))(v4 + v5, a1, v6);
  *(v4 + OBJC_IVAR____TtC8FMIPCore21FMIPStopSharingAction_force) = a2;
  *(v4 + OBJC_IVAR____TtC8FMIPCore21FMIPStopSharingAction_isDelegated) = 0;
  return v4;
}

uint64_t FMIPStopSharingAction.init(beaconIdentifier:force:)(uint64_t a1, char a2)
{
  v5 = OBJC_IVAR____TtC8FMIPCore21FMIPStopSharingAction_beaconIdentifier;
  v6 = sub_24A82CAA4();
  (*(*(v6 - 8) + 32))(v2 + v5, a1, v6);
  *(v2 + OBJC_IVAR____TtC8FMIPCore21FMIPStopSharingAction_force) = a2;
  *(v2 + OBJC_IVAR____TtC8FMIPCore21FMIPStopSharingAction_isDelegated) = 0;
  return v2;
}

uint64_t FMIPStopSharingAction.__allocating_init(beaconIdentifier:force:isDelegated:)(uint64_t a1, char a2, char a3)
{
  v6 = swift_allocObject();
  v7 = OBJC_IVAR____TtC8FMIPCore21FMIPStopSharingAction_beaconIdentifier;
  v8 = sub_24A82CAA4();
  (*(*(v8 - 8) + 32))(v6 + v7, a1, v8);
  *(v6 + OBJC_IVAR____TtC8FMIPCore21FMIPStopSharingAction_force) = a2;
  *(v6 + OBJC_IVAR____TtC8FMIPCore21FMIPStopSharingAction_isDelegated) = a3;
  return v6;
}

uint64_t FMIPStopSharingAction.init(beaconIdentifier:force:isDelegated:)(uint64_t a1, char a2, char a3)
{
  v7 = OBJC_IVAR____TtC8FMIPCore21FMIPStopSharingAction_beaconIdentifier;
  v8 = sub_24A82CAA4();
  (*(*(v8 - 8) + 32))(v3 + v7, a1, v8);
  *(v3 + OBJC_IVAR____TtC8FMIPCore21FMIPStopSharingAction_force) = a2;
  *(v3 + OBJC_IVAR____TtC8FMIPCore21FMIPStopSharingAction_isDelegated) = a3;
  return v3;
}

unint64_t FMIPStopSharingAction.description.getter()
{
  v1 = sub_24A82DDB4();
  MEMORY[0x24C21C9E0](v1);

  MEMORY[0x24C21C9E0](2016419898, 0xE400000000000000);
  sub_24A6CB660();
  v2 = sub_24A82D174();
  MEMORY[0x24C21C9E0](v2);

  MEMORY[0x24C21C9E0](32, 0xE100000000000000);
  sub_24A82D854();

  sub_24A82CAA4();
  sub_24A7E2304();
  v3 = sub_24A82DB84();
  MEMORY[0x24C21C9E0](v3);

  MEMORY[0x24C21C9E0](0x67656C6544736920, 0xED00003A64657461);
  if (*(v0 + OBJC_IVAR____TtC8FMIPCore21FMIPStopSharingAction_isDelegated))
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC8FMIPCore21FMIPStopSharingAction_isDelegated))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x24C21C9E0](v4, v5);

  MEMORY[0x24C21C9E0](15911, 0xE200000000000000);

  MEMORY[0x24C21C9E0](0xD000000000000012, 0x800000024A849FD0);

  return 60;
}

uint64_t sub_24A7E2A4C(uint64_t a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  v5 = *a2;
  v6 = sub_24A82CAA4();
  (*(*(v6 - 8) + 16))(v4 + v5, a1, v6);
  sub_24A69F324(a1, type metadata accessor for FMIPUnknownItem);
  return v4;
}

uint64_t sub_24A7E2AF8(uint64_t a1, void *a2)
{
  v5 = sub_24A82CAA4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a1, v5);
  sub_24A69F324(a1, type metadata accessor for FMIPUnknownItem);
  (*(v6 + 32))(v2 + *a2, v8, v5);
  return v2;
}

uint64_t sub_24A7E2C8C(uint64_t a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  v5 = *a2;
  v6 = sub_24A82CAA4();
  (*(*(v6 - 8) + 32))(v4 + v5, a1, v6);
  return v4;
}

uint64_t sub_24A7E2D1C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = sub_24A82CAA4();
  (*(*(v5 - 8) + 32))(v2 + v4, a1, v5);
  return v2;
}

unint64_t sub_24A7E2D94()
{
  v0 = sub_24A82DDB4();
  MEMORY[0x24C21C9E0](v0);

  MEMORY[0x24C21C9E0](2016419898, 0xE400000000000000);
  sub_24A6CB660();
  v1 = sub_24A82D174();
  MEMORY[0x24C21C9E0](v1);

  MEMORY[0x24C21C9E0](32, 0xE100000000000000);
  sub_24A82D854();

  sub_24A82CAA4();
  sub_24A7E2304();
  v2 = sub_24A82DB84();
  MEMORY[0x24C21C9E0](v2);

  MEMORY[0x24C21C9E0](15911, 0xE200000000000000);

  MEMORY[0x24C21C9E0](0xD000000000000012, 0x800000024A849FD0);

  return 60;
}

uint64_t sub_24A7E2F40(uint64_t *a1)
{
  v2 = *a1;
  v3 = sub_24A82CAA4();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  return v1;
}

uint64_t sub_24A7E2FA8(uint64_t *a1)
{
  v2 = *a1;
  v3 = sub_24A82CAA4();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  return swift_deallocClassInstance();
}

uint64_t sub_24A7E322C(uint64_t a1)
{
  result = sub_24A82CAA4();
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

uint64_t sub_24A7E345C(uint64_t a1)
{
  result = sub_24A82CAA4();
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

void sub_24A7E3574(uint64_t a1)
{
  v3 = sub_24A6BBA94(&qword_27EF5F480, &qword_24A83F528);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v28 - v4;
  v35 = type metadata accessor for FMIPUnknownItem(0);
  v6 = *(v35 - 8);
  v7 = MEMORY[0x28223BE20](v35);
  v30 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v28 = &v28 - v9;
  v32 = v1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_24A82D704();
    sub_24A679170(0, &qword_27EF5DF78, 0x277D496E0);
    sub_24A7E4818();
    sub_24A82D414();
    a1 = v37;
    v10 = v38;
    v12 = v39;
    v11 = v40;
    v13 = v41;
  }

  else
  {
    v14 = -1 << *(a1 + 32);
    v10 = a1 + 56;
    v12 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(a1 + 56);

    v11 = 0;
  }

  v31 = v12;
  v34 = (v6 + 56);
  v29 = v6;
  v17 = (v6 + 48);
  v33 = MEMORY[0x277D84F90];
  while (a1 < 0)
  {
    v21 = sub_24A82D784();
    if (!v21 || (v36 = v21, sub_24A679170(0, &qword_27EF5DF78, 0x277D496E0), swift_dynamicCast(), (v20 = v42) == 0))
    {
LABEL_24:
      sub_24A6BAFBC(a1);
      return;
    }

LABEL_17:
    v22 = v20;
    FMIPUnknownItem.init(with:)(v22, v5);
    v23 = v35;
    (*v34)(v5, 0, 1, v35);

    if ((*v17)(v5, 1, v23) == 1)
    {
      sub_24A67F378(v5, &qword_27EF5F480, &qword_24A83F528);
    }

    else
    {
      v24 = v28;
      sub_24A7F0958(v5, v28, type metadata accessor for FMIPUnknownItem);
      sub_24A7F0958(v24, v30, type metadata accessor for FMIPUnknownItem);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_24A780670(0, v33[2] + 1, 1, v33);
      }

      v26 = v33[2];
      v25 = v33[3];
      if (v26 >= v25 >> 1)
      {
        v33 = sub_24A780670((v25 > 1), v26 + 1, 1, v33);
      }

      v27 = v33;
      v33[2] = v26 + 1;
      sub_24A7F0958(v30, v27 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v26, type metadata accessor for FMIPUnknownItem);
    }
  }

  v18 = v11;
  v19 = v13;
  if (v13)
  {
LABEL_13:
    v13 = (v19 - 1) & v19;
    v20 = *(*(a1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v19)))));
    if (!v20)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v11 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v11 >= ((v12 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v19 = *(v10 + 8 * v11);
    ++v18;
    if (v19)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_24A7E39A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = *(a1 + 32);
  if (a2)
  {
    sub_24A82C884();
    v8 = sub_24A82C8B4();
    (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  }

  else
  {
    v9 = sub_24A82C8B4();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  }

  v7(v6);

  return sub_24A67F378(v6, &unk_27EF5CCB8, &qword_24A82FDB0);
}

uint64_t sub_24A7E3B2C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A79D24C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_24A6A7314(v3, v4);
}

uint64_t sub_24A7E3BAC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A79D1CC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  v8 = a2[1];
  sub_24A6A7314(v3, v4);
  result = sub_24A6AFFE8(v7, v8);
  *a2 = v6;
  a2[1] = v5;
  return result;
}

uint64_t FMIPUnknownAccessoryDiscoveryController.Callbacks.discoveredAccessoriesCallback.getter()
{
  v1 = *v0;
  sub_24A6A7314(*v0, v0[1]);
  return v1;
}

uint64_t FMIPUnknownAccessoryDiscoveryController.Callbacks.discoveredAccessoriesCallback.setter(uint64_t a1, uint64_t a2)
{
  result = sub_24A6AFFE8(*v2, v2[1]);
  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_24A7E3CD4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A79D24C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_24A6A7314(v3, v4);
}

uint64_t sub_24A7E3D54(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A79D1CC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  sub_24A6A7314(v3, v4);
  result = sub_24A6AFFE8(v7, v8);
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  return result;
}

uint64_t FMIPUnknownAccessoryDiscoveryController.Callbacks.lostAccessoriesCallback.getter()
{
  v1 = *(v0 + 16);
  sub_24A6A7314(v1, *(v0 + 24));
  return v1;
}

uint64_t FMIPUnknownAccessoryDiscoveryController.Callbacks.lostAccessoriesCallback.setter(uint64_t a1, uint64_t a2)
{
  result = sub_24A6AFFE8(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_24A7E3E7C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A79D034;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_24A6A7314(v3, v4);
}

uint64_t sub_24A7E3EFC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A79CFFC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  sub_24A6A7314(v3, v4);
  result = sub_24A6AFFE8(v7, v8);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  return result;
}

uint64_t FMIPUnknownAccessoryDiscoveryController.Callbacks.accessoryDiscoveryFinished.getter()
{
  v1 = *(v0 + 32);
  sub_24A6A7314(v1, *(v0 + 40));
  return v1;
}

uint64_t FMIPUnknownAccessoryDiscoveryController.Callbacks.accessoryDiscoveryFinished.setter(uint64_t a1, uint64_t a2)
{
  result = sub_24A6AFFE8(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_24A7E4024@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A7E9D8C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_24A6A7314(v3, v4);
}

uint64_t sub_24A7E40A4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A7E9D64;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  sub_24A6A7314(v3, v4);
  result = sub_24A6AFFE8(v7, v8);
  *(a2 + 48) = v6;
  *(a2 + 56) = v5;
  return result;
}

uint64_t FMIPUnknownAccessoryDiscoveryController.Callbacks.errorHandler.getter()
{
  v1 = *(v0 + 48);
  sub_24A6A7314(v1, *(v0 + 56));
  return v1;
}

uint64_t FMIPUnknownAccessoryDiscoveryController.Callbacks.errorHandler.setter(uint64_t a1, uint64_t a2)
{
  result = sub_24A6AFFE8(*(v2 + 48), *(v2 + 56));
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_24A7E41D4(__int128 *a1, void *a2)
{
  v2 = a1[1];
  v12 = *a1;
  v13 = v2;
  v3 = a1[3];
  v14 = a1[2];
  v15 = v3;
  v4 = *a2;
  swift_beginAccess();
  v6 = v4[2];
  v5 = v4[3];
  v7 = v4[5];
  v16[2] = v4[4];
  v16[3] = v7;
  v16[0] = v6;
  v16[1] = v5;
  v8 = v13;
  v9 = v15;
  v4[4] = v14;
  v4[5] = v9;
  v4[2] = v12;
  v4[3] = v8;
  sub_24A7E42C8(&v12, v11);
  return sub_24A7E4364(v16);
}

uint64_t sub_24A7E4268@<X0>(_OWORD *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[3];
  v8[0] = v1[2];
  v8[1] = v3;
  v5 = v1[5];
  v9 = v1[4];
  v4 = v9;
  v10 = v5;
  *a1 = v8[0];
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_24A7E42C8(v8, v7);
}

uint64_t sub_24A7E4300(_OWORD *a1)
{
  swift_beginAccess();
  v3 = v1[3];
  v8[0] = v1[2];
  v8[1] = v3;
  v4 = v1[5];
  v8[2] = v1[4];
  v8[3] = v4;
  v5 = a1[1];
  v1[2] = *a1;
  v1[3] = v5;
  v6 = a1[3];
  v1[4] = a1[2];
  v1[5] = v6;
  return sub_24A7E4364(v8);
}

uint64_t FMIPUnknownAccessoryDiscoveryController.__allocating_init()()
{
  v0 = swift_allocObject();
  FMIPUnknownAccessoryDiscoveryController.init()();
  return v0;
}

uint64_t FMIPUnknownAccessoryDiscoveryController.init()()
{
  v1 = v0;
  v2 = sub_24A82D554();
  v3 = *(v2 - 8);
  v18 = v2;
  v19 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A82D534();
  MEMORY[0x28223BE20](v6);
  v7 = sub_24A82CE54();
  MEMORY[0x28223BE20](v7 - 8);
  v17[1] = sub_24A679170(0, &qword_2815146C0, 0x277D85C78);
  v17[4] = "MIPStopDelegatedURLShareAction";
  sub_24A82CE24();
  v20 = MEMORY[0x277D84F90];
  v17[3] = sub_24A695740(&qword_2815146D0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v17[2] = sub_24A6BBA94(&unk_27EF5EF50, &unk_24A836510);
  sub_24A679544(&qword_2815146E0, &unk_27EF5EF50, &unk_24A836510);
  sub_24A82D6B4();
  v8 = *MEMORY[0x277D85260];
  v9 = *(v19 + 104);
  v19 += 104;
  v9(v5, v8, v18);
  *(v0 + 16) = sub_24A82D594();
  sub_24A82CE24();
  v20 = MEMORY[0x277D84F90];
  sub_24A82D6B4();
  v9(v5, v8, v18);
  *(v0 + 24) = sub_24A82D594();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = [objc_allocWithZone(MEMORY[0x277D496E8]) init];
  *(v0 + 104) = 0;
  *(v0 + 112) = MEMORY[0x277D84FA0];
  v10 = objc_allocWithZone(MEMORY[0x277D496F0]);
  sub_24A679170(0, &qword_27EF5DF78, 0x277D496E0);
  sub_24A7E4818();
  v11 = sub_24A82D394();
  v12 = [v10 initWithUnknownAccessories_];

  v13 = v12;
  v14 = sub_24A7E9194(v12);

  v15 = *(v1 + 96);
  *(v1 + 96) = v14;

  return v1;
}

unint64_t sub_24A7E4818()
{
  result = qword_27EF5F460;
  if (!qword_27EF5F460)
  {
    sub_24A679170(255, &qword_27EF5DF78, 0x277D496E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F460);
  }

  return result;
}

uint64_t FMIPUnknownAccessoryDiscoveryController.deinit()
{
  [*(v0 + 96) stop];

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  sub_24A6AFFE8(*(v0 + 32), *(v0 + 40));
  sub_24A6AFFE8(v1, v2);
  sub_24A6AFFE8(v3, v4);
  sub_24A6AFFE8(v5, v6);

  return v0;
}

uint64_t FMIPUnknownAccessoryDiscoveryController.__deallocating_deinit()
{
  [*(v0 + 96) stop];

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  sub_24A6AFFE8(*(v0 + 32), *(v0 + 40));
  sub_24A6AFFE8(v1, v2);
  sub_24A6AFFE8(v3, v4);
  sub_24A6AFFE8(v5, v6);

  return swift_deallocClassInstance();
}

void sub_24A7E4A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A82CDF4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v55 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A82CE54();
  v56 = *(v9 - 8);
  v57 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24A82CE74();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v49 - v17;
  swift_beginAccess();
  if (*(a1 + 104))
  {
    v19 = sub_24A82D504();
    if (qword_27EF5CB80 != -1)
    {
      swift_once();
    }

    v20 = sub_24A82CDC4();
    sub_24A6797D0(v20, qword_27EF78BE8);
    v21 = sub_24A82CD94();
    if (os_log_type_enabled(v21, v19))
    {
      v22 = a2;
      v23 = swift_slowAlloc();
      v24 = a3;
      v25 = swift_slowAlloc();
      aBlock = v25;
      *v23 = 136315138;
      *(v23 + 4) = sub_24A68761C(0xD000000000000048, 0x800000024A84A3D0, &aBlock);
      _os_log_impl(&dword_24A675000, v21, v19, "FMIPUnknownAccessoryDiscoveryController: %s", v23, 0xCu);
      sub_24A6876E8(v25);
      v26 = v25;
      a3 = v24;
      MEMORY[0x24C21E1D0](v26, -1, -1);
      v27 = v23;
      a2 = v22;
      MEMORY[0x24C21E1D0](v27, -1, -1);
    }

    v28 = swift_allocObject();
    *(v28 + 16) = a2;
    *(v28 + 24) = a3;
    v63 = sub_24A7F0A80;
    v64 = v28;
    aBlock = MEMORY[0x277D85DD0];
    v60 = 1107296256;
    v61 = sub_24A699BA0;
    v62 = &unk_285DCC068;
    v29 = _Block_copy(&aBlock);
    sub_24A6A7314(a2, a3);
    sub_24A82CE24();
    v58 = MEMORY[0x277D84F90];
    sub_24A695740(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    v30 = v11;
    sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
    v31 = v55;
    sub_24A82D6B4();
    MEMORY[0x24C21CE90](0, v11, v31, v29);
    _Block_release(v29);
    (*(v7 + 8))(v31, v6);
    goto LABEL_9;
  }

  v52 = v11;
  v53 = v7;
  v54 = v6;
  v32 = dispatch_group_create();
  dispatch_group_enter(v32);
  v33 = *(a1 + 96);
  v34 = swift_allocObject();
  v35 = a1;
  v36 = a2;
  v37 = v34;
  v49[2] = v35;
  swift_weakInit();
  v38 = swift_allocObject();
  v38[2] = v32;
  v38[3] = v37;
  v38[4] = v36;
  v38[5] = a3;
  v63 = sub_24A7E9EB4;
  v64 = v38;
  aBlock = MEMORY[0x277D85DD0];
  v60 = 1107296256;
  v49[1] = &v61;
  v61 = sub_24A7386AC;
  v62 = &unk_285DCBFC8;
  v39 = _Block_copy(&aBlock);
  v40 = v33;
  v41 = v32;
  v50 = v36;
  v51 = a3;
  sub_24A6A7314(v36, a3);

  [v40 startDiscoveryWithCompletion_];
  _Block_release(v39);

  sub_24A82CE64();
  sub_24A82CE94();
  v42 = *(v13 + 8);
  v42(v16, v12);
  sub_24A82D514();
  v42(v18, v12);
  if (sub_24A82CDD4())
  {
    v43 = swift_allocObject();
    v45 = v50;
    v44 = v51;
    *(v43 + 16) = v50;
    *(v43 + 24) = v44;
    v63 = sub_24A7F0A80;
    v64 = v43;
    aBlock = MEMORY[0x277D85DD0];
    v60 = 1107296256;
    v61 = sub_24A699BA0;
    v62 = &unk_285DCC018;
    v46 = _Block_copy(&aBlock);
    sub_24A6A7314(v45, v44);
    v30 = v52;
    sub_24A82CE24();
    v58 = MEMORY[0x277D84F90];
    sub_24A695740(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
    v47 = v54;
    v48 = v55;
    sub_24A82D6B4();
    MEMORY[0x24C21CE90](0, v30, v48, v46);
    _Block_release(v46);

    (*(v53 + 8))(v48, v47);
LABEL_9:
    (*(v56 + 8))(v30, v57);

    return;
  }
}

void sub_24A7E51B8(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v53 = a4;
  v54 = a5;
  v7 = sub_24A82CDF4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24A82CE54();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v51 = v8;
    v52 = v7;
    v50 = v11;
    v49 = v12;
    if (a1)
    {
      v47 = v10;
      v17 = a1;
      v18 = a1;
      v19 = sub_24A82D4E4();
      if (qword_27EF5CB80 != -1)
      {
        swift_once();
      }

      v20 = sub_24A82CDC4();
      sub_24A6797D0(v20, qword_27EF78BE8);
      v21 = sub_24A82CD94();
      v22 = os_log_type_enabled(v21, v19);
      v48 = a2;
      if (v22)
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v62 = v24;
        *v23 = 136315138;
        aBlock = 0;
        v57 = 0xE000000000000000;
        sub_24A82D854();
        MEMORY[0x24C21C9E0](0xD000000000000034, 0x800000024A848600);
        swift_getErrorValue();
        v25 = sub_24A82DC74();
        MEMORY[0x24C21C9E0](v25);

        v26 = sub_24A68761C(aBlock, v57, &v62);

        *(v23 + 4) = v26;
        _os_log_impl(&dword_24A675000, v21, v19, "FMIPUnknownAccessoryDiscoveryController: %s", v23, 0xCu);
        sub_24A6876E8(v24);
        MEMORY[0x24C21E1D0](v24, -1, -1);
        MEMORY[0x24C21E1D0](v23, -1, -1);
      }

      LOBYTE(v62) = 0;
      v27 = a1;
      FMIPAccessoryError.init(underlyingError:discoveryType:)(&aBlock, a1, &v62);
      v28 = aBlock;
      v29 = v57;
      v62 = aBlock;
      v63 = v57;
      sub_24A7E8768(&v62);
      sub_24A79CFB0(v28, v29);
      v30 = swift_allocObject();
      v32 = v53;
      v31 = v54;
      v30[2] = v53;
      v30[3] = v31;
      v30[4] = a1;
      v60 = sub_24A7F0AEC;
      v61 = v30;
      aBlock = MEMORY[0x277D85DD0];
      v57 = 1107296256;
      v58 = sub_24A699BA0;
      v59 = &unk_285DCC108;
      v33 = _Block_copy(&aBlock);
      sub_24A6A7314(v32, v31);
      v34 = a1;
      sub_24A82CE24();
      v62 = MEMORY[0x277D84F90];
      sub_24A695740(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
      sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
      v35 = v47;
      v36 = v52;
      sub_24A82D6B4();
      MEMORY[0x24C21CE90](0, v14, v35, v33);
      _Block_release(v33);

      (*(v51 + 8))(v35, v36);
      (*(v49 + 8))(v14, v50);

      a2 = v48;
    }

    else
    {
      v37 = sub_24A82D504();
      if (qword_27EF5CB80 != -1)
      {
        swift_once();
      }

      v38 = sub_24A82CDC4();
      sub_24A6797D0(v38, qword_27EF78BE8);
      v39 = sub_24A82CD94();
      if (os_log_type_enabled(v39, v37))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        aBlock = v41;
        *v40 = 136315138;
        *(v40 + 4) = sub_24A68761C(0xD000000000000028, 0x800000024A8485D0, &aBlock);
        _os_log_impl(&dword_24A675000, v39, v37, "FMIPUnknownAccessoryDiscoveryController: %s", v40, 0xCu);
        sub_24A6876E8(v41);
        MEMORY[0x24C21E1D0](v41, -1, -1);
        MEMORY[0x24C21E1D0](v40, -1, -1);
      }

      swift_beginAccess();
      *(v16 + 104) = 1;
      v42 = swift_allocObject();
      v44 = v53;
      v43 = v54;
      *(v42 + 16) = v53;
      *(v42 + 24) = v43;
      v60 = sub_24A7F0A84;
      v61 = v42;
      aBlock = MEMORY[0x277D85DD0];
      v57 = 1107296256;
      v58 = sub_24A699BA0;
      v59 = &unk_285DCC0B8;
      v45 = _Block_copy(&aBlock);
      sub_24A6A7314(v44, v43);
      sub_24A82CE24();
      v55 = MEMORY[0x277D84F90];
      sub_24A695740(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
      sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
      v46 = v52;
      sub_24A82D6B4();
      MEMORY[0x24C21CE90](0, v14, v10, v45);
      _Block_release(v45);
      (*(v51 + 8))(v10, v46);
      (*(v49 + 8))(v14, v50);
    }
  }

  dispatch_group_leave(a2);
}

uint64_t sub_24A7E59D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a4;
  v22 = a5;
  v6 = v5;
  v9 = *v6;
  v10 = sub_24A82CDF4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_24A82CE54();
  v14 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v6[2];
  v17 = swift_allocObject();
  v17[2] = v6;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = v9;
  aBlock[4] = v21;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = v22;
  v18 = _Block_copy(aBlock);

  sub_24A6A7314(a1, a2);
  sub_24A82CE24();
  v25 = MEMORY[0x277D84F90];
  sub_24A695740(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v16, v13, v18);
  _Block_release(v18);
  (*(v11 + 8))(v13, v10);
  (*(v14 + 8))(v16, v24);
}

void sub_24A7E5CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A82CDF4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v55 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A82CE54();
  v56 = *(v9 - 8);
  v57 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24A82CE74();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v49 - v17;
  swift_beginAccess();
  if (*(a1 + 104) != 1)
  {
    v37 = sub_24A82D504();
    if (qword_27EF5CB80 != -1)
    {
      swift_once();
    }

    v38 = sub_24A82CDC4();
    sub_24A6797D0(v38, qword_27EF78BE8);
    v39 = sub_24A82CD94();
    if (os_log_type_enabled(v39, v37))
    {
      v40 = a2;
      v41 = swift_slowAlloc();
      v42 = a3;
      v43 = swift_slowAlloc();
      aBlock = v43;
      *v41 = 136315138;
      *(v41 + 4) = sub_24A68761C(0xD00000000000002BLL, 0x800000024A84A3A0, &aBlock);
      _os_log_impl(&dword_24A675000, v39, v37, "FMIPUnknownAccessoryDiscoveryController: %s", v41, 0xCu);
      sub_24A6876E8(v43);
      v44 = v43;
      a3 = v42;
      MEMORY[0x24C21E1D0](v44, -1, -1);
      v45 = v41;
      a2 = v40;
      MEMORY[0x24C21E1D0](v45, -1, -1);
    }

    v46 = swift_allocObject();
    *(v46 + 16) = a2;
    *(v46 + 24) = a3;
    v63 = sub_24A7F0A80;
    v64 = v46;
    aBlock = MEMORY[0x277D85DD0];
    v60 = 1107296256;
    v61 = sub_24A699BA0;
    v62 = &unk_285DCBE10;
    v47 = _Block_copy(&aBlock);
    sub_24A6A7314(a2, a3);
    sub_24A82CE24();
    v58 = MEMORY[0x277D84F90];
    sub_24A695740(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    v34 = v11;
    sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
    v48 = v55;
    sub_24A82D6B4();
    MEMORY[0x24C21CE90](0, v11, v48, v47);
    _Block_release(v47);
    (*(v7 + 8))(v48, v6);
    goto LABEL_9;
  }

  v52 = v11;
  v53 = v7;
  v54 = v6;
  v19 = dispatch_group_create();
  dispatch_group_enter(v19);
  v20 = *(a1 + 96);
  v21 = swift_allocObject();
  v22 = a1;
  v23 = a2;
  v24 = v21;
  v49[2] = v22;
  swift_weakInit();
  v25 = swift_allocObject();
  v25[2] = v19;
  v25[3] = v24;
  v25[4] = v23;
  v25[5] = a3;
  v63 = sub_24A7E9E20;
  v64 = v25;
  aBlock = MEMORY[0x277D85DD0];
  v60 = 1107296256;
  v49[1] = &v61;
  v61 = sub_24A7386AC;
  v62 = &unk_285DCBE88;
  v26 = _Block_copy(&aBlock);
  v27 = v20;
  v28 = v19;
  v50 = v23;
  v51 = a3;
  sub_24A6A7314(v23, a3);

  [v27 stopDiscoveryWithCompletion_];
  _Block_release(v26);

  sub_24A82CE64();
  sub_24A82CE94();
  v29 = *(v13 + 8);
  v29(v16, v12);
  sub_24A82D514();
  v29(v18, v12);
  if (sub_24A82CDD4())
  {
    v30 = swift_allocObject();
    v32 = v50;
    v31 = v51;
    *(v30 + 16) = v50;
    *(v30 + 24) = v31;
    v63 = sub_24A7E9E2C;
    v64 = v30;
    aBlock = MEMORY[0x277D85DD0];
    v60 = 1107296256;
    v61 = sub_24A699BA0;
    v62 = &unk_285DCBED8;
    v33 = _Block_copy(&aBlock);
    sub_24A6A7314(v32, v31);
    v34 = v52;
    sub_24A82CE24();
    v58 = MEMORY[0x277D84F90];
    sub_24A695740(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
    v35 = v54;
    v36 = v55;
    sub_24A82D6B4();
    MEMORY[0x24C21CE90](0, v34, v36, v33);
    _Block_release(v33);

    (*(v53 + 8))(v36, v35);
LABEL_9:
    (*(v56 + 8))(v34, v57);

    return;
  }
}

void sub_24A7E646C(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_24A82CDF4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_24A82CE54();
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v59 = v10;
    v60 = v9;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v16 = a1;
    if (Strong)
    {

      v17 = a1;
      v18 = sub_24A82D4E4();
      if (qword_27EF5CB80 != -1)
      {
        swift_once();
      }

      v19 = sub_24A82CDC4();
      sub_24A6797D0(v19, qword_27EF78BE8);
      v20 = sub_24A82CD94();
      if (os_log_type_enabled(v20, v18))
      {
        v21 = swift_slowAlloc();
        v58 = a2;
        v22 = v21;
        v23 = swift_slowAlloc();
        v57 = a5;
        v56 = v23;
        v72[0] = v23;
        *v22 = 136315138;
        aBlock = 0;
        v67 = 0xE000000000000000;
        sub_24A82D854();
        MEMORY[0x24C21C9E0](0xD000000000000033, 0x800000024A848470);
        swift_getErrorValue();
        v24 = sub_24A82DC74();
        v25 = v18;
        v26 = v14;
        v27 = v12;
        v28 = a4;
        MEMORY[0x24C21C9E0](v24);

        v29 = sub_24A68761C(aBlock, v67, v72);

        *(v22 + 4) = v29;
        a4 = v28;
        v12 = v27;
        v14 = v26;
        _os_log_impl(&dword_24A675000, v20, v25, "FMIPUnknownAccessoryDiscoveryController: %s", v22, 0xCu);
        v30 = v56;
        sub_24A6876E8(v56);
        a5 = v57;
        MEMORY[0x24C21E1D0](v30, -1, -1);
        v31 = v22;
        a2 = v58;
        MEMORY[0x24C21E1D0](v31, -1, -1);
      }
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      LOBYTE(v64) = 0;
      v32 = a1;
      FMIPAccessoryError.init(underlyingError:discoveryType:)(&aBlock, a1, &v64);
      v33 = aBlock;
      v34 = a4;
      v35 = v67;
      v64 = aBlock;
      v65 = v67;
      sub_24A7E8768(&v64);

      v36 = v35;
      a4 = v34;
      sub_24A79CFB0(v33, v36);
    }

    swift_beginAccess();
    v37 = swift_weakLoadStrong();
    if (v37)
    {
      v38 = *(v37 + 24);

      v39 = swift_allocObject();
      v39[2] = a4;
      v39[3] = a5;
      v39[4] = a1;
      v70 = sub_24A7E9E44;
      v71 = v39;
      aBlock = MEMORY[0x277D85DD0];
      v67 = 1107296256;
      v68 = sub_24A699BA0;
      v69 = &unk_285DCBF78;
      v40 = _Block_copy(&aBlock);
      v41 = a1;
      sub_24A6A7314(a4, a5);
      sub_24A82CE24();
      v63 = MEMORY[0x277D84F90];
      sub_24A695740(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
      sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
      v42 = v60;
      sub_24A82D6B4();
      MEMORY[0x24C21CE90](0, v14, v12, v40);
      _Block_release(v40);

      (*(v59 + 8))(v12, v42);
      (*(v61 + 8))(v14, v62);
    }

    else
    {
    }
  }

  else
  {
    swift_beginAccess();
    v43 = swift_weakLoadStrong();
    if (v43)
    {
      v44 = v43;
      v59 = v10;
      v60 = v9;
      v45 = sub_24A82D504();
      if (qword_27EF5CB80 != -1)
      {
        swift_once();
      }

      v46 = sub_24A82CDC4();
      sub_24A6797D0(v46, qword_27EF78BE8);
      v47 = sub_24A82CD94();
      v48 = a2;
      if (os_log_type_enabled(v47, v45))
      {
        v49 = a4;
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        aBlock = v51;
        *v50 = 136315138;
        *(v50 + 4) = sub_24A68761C(0xD000000000000029, 0x800000024A848440, &aBlock);
        _os_log_impl(&dword_24A675000, v47, v45, "FMIPUnknownAccessoryDiscoveryController: %s", v50, 0xCu);
        sub_24A6876E8(v51);
        MEMORY[0x24C21E1D0](v51, -1, -1);
        v52 = v50;
        a4 = v49;
        MEMORY[0x24C21E1D0](v52, -1, -1);
      }

      swift_beginAccess();
      *(v44 + 104) = 0;
      v53 = swift_allocObject();
      *(v53 + 16) = a4;
      *(v53 + 24) = a5;
      v70 = sub_24A7E9E38;
      v71 = v53;
      aBlock = MEMORY[0x277D85DD0];
      v67 = 1107296256;
      v68 = sub_24A699BA0;
      v69 = &unk_285DCBF28;
      v54 = _Block_copy(&aBlock);
      sub_24A6A7314(a4, a5);
      sub_24A82CE24();
      v64 = MEMORY[0x277D84F90];
      sub_24A695740(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
      sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
      v55 = v60;
      sub_24A82D6B4();
      MEMORY[0x24C21CE90](0, v14, v12, v54);
      _Block_release(v54);
      (*(v59 + 8))(v12, v55);
      (*(v61 + 8))(v14, v62);

      a2 = v48;
    }
  }

  dispatch_group_leave(a2);
}

void sub_24A7E6D4C(void (*a1)(id *), int a2, id a3)
{
  if (a1)
  {
    LOBYTE(v6) = 0;
    v5 = a3;
    FMIPAccessoryError.init(underlyingError:discoveryType:)(&v9, a3, &v6);
    v6 = v9;
    v7 = v10;
    v8 = 1;
    a1(&v6);
    sub_24A79D060(v6, v7, v8);
  }
}

void sub_24A7E6DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 96);
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = a2;
  v8[4] = a3;
  v11[4] = sub_24A7E94D0;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_24A7E39A4;
  v11[3] = &unk_285DCBAE0;
  v9 = _Block_copy(v11);
  v10 = v7;

  [v10 fetchEncryptedPayloadForUnknownBeacon:a1 completion:v9];
  _Block_release(v9);
}

uint64_t sub_24A7E6EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a3;
  v58 = a4;
  v56 = a2;
  v5 = sub_24A82CDF4();
  v63 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v60 = &v48[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24A82CE54();
  v61 = *(v7 - 8);
  v62 = v7;
  MEMORY[0x28223BE20](v7);
  v59 = &v48[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v48[-v10];
  v12 = sub_24A82C8B4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v55 = &v48[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v48[-v17];
  MEMORY[0x28223BE20](v16);
  v20 = &v48[-v19];
  sub_24A67E964(a1, v11, &unk_27EF5CCB8, &qword_24A82FDB0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_24A67F378(v11, &unk_27EF5CCB8, &qword_24A82FDB0);
    v21 = sub_24A82D504();
    if (qword_27EF5CB80 != -1)
    {
      swift_once();
    }

    v22 = sub_24A82CDC4();
    sub_24A6797D0(v22, qword_27EF78BE8);
    v23 = sub_24A82CD94();
    if (os_log_type_enabled(v23, v21))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_24A68761C(0xD00000000000003ELL, 0x800000024A84A320, &aBlock);
      _os_log_impl(&dword_24A675000, v23, v21, "FMIPUnknownAccessoryDiscoveryController: %s", v24, 0xCu);
      sub_24A6876E8(v25);
      MEMORY[0x24C21E1D0](v25, -1, -1);
      MEMORY[0x24C21E1D0](v24, -1, -1);
    }

    v26 = swift_allocObject();
    v27 = v58;
    *(v26 + 16) = v57;
    *(v26 + 24) = v27;
    v69 = sub_24A7E9DB4;
    v70 = v26;
    aBlock = MEMORY[0x277D85DD0];
    v66 = 1107296256;
    v67 = sub_24A699BA0;
    v68 = &unk_285DCBD70;
    v28 = _Block_copy(&aBlock);

    v29 = v59;
    sub_24A82CE24();
    v64 = MEMORY[0x277D84F90];
    sub_24A695740(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
    v30 = v60;
    sub_24A82D6B4();
    MEMORY[0x24C21CE90](0, v29, v30, v28);
    _Block_release(v28);
    (*(v63 + 8))(v30, v5);
    (*(v61 + 8))(v29, v62);
  }

  else
  {
    v31 = *(v13 + 32);
    v53 = v13 + 32;
    v54 = v5;
    v52 = v31;
    v31(v20, v11, v12);
    v51 = *(v13 + 16);
    v51(v18, v20, v12);
    v32 = sub_24A82D504();
    if (qword_27EF5CB80 != -1)
    {
      swift_once();
    }

    v33 = sub_24A82CDC4();
    sub_24A6797D0(v33, qword_27EF78BE8);
    v34 = sub_24A82CD94();
    if (os_log_type_enabled(v34, v32))
    {
      v35 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v64 = v50;
      aBlock = 0;
      *v35 = 136315138;
      v66 = 0xE000000000000000;
      sub_24A82D854();
      MEMORY[0x24C21C9E0](0xD000000000000035, 0x800000024A84A360);
      v36 = sub_24A82C804();
      v49 = v32;
      MEMORY[0x24C21C9E0](v36);

      v37 = sub_24A68761C(aBlock, v66, &v64);

      *(v35 + 4) = v37;
      _os_log_impl(&dword_24A675000, v34, v49, "FMIPUnknownAccessoryDiscoveryController: %s", v35, 0xCu);
      v38 = v50;
      sub_24A6876E8(v50);
      MEMORY[0x24C21E1D0](v38, -1, -1);
      MEMORY[0x24C21E1D0](v35, -1, -1);
    }

    v50 = *(v13 + 8);
    (v50)(v18, v12);
    v39 = v55;
    v56 = *(v56 + 24);
    v51(v55, v20, v12);
    v40 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v41 = swift_allocObject();
    v42 = v58;
    *(v41 + 16) = v57;
    *(v41 + 24) = v42;
    v52(v41 + v40, v39, v12);
    v69 = sub_24A7E9DBC;
    v70 = v41;
    aBlock = MEMORY[0x277D85DD0];
    v66 = 1107296256;
    v67 = sub_24A699BA0;
    v68 = &unk_285DCBDC0;
    v43 = _Block_copy(&aBlock);

    v44 = v59;
    sub_24A82CE24();
    v64 = MEMORY[0x277D84F90];
    sub_24A695740(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
    v45 = v60;
    v46 = v54;
    sub_24A82D6B4();
    MEMORY[0x24C21CE90](0, v44, v45, v43);
    _Block_release(v43);
    (*(v63 + 8))(v45, v46);
    (*(v61 + 8))(v44, v62);
    (v50)(v20, v12);
  }
}

uint64_t sub_24A7E7800(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = sub_24A6BBA94(&qword_27EF5F470, &qword_24A83F508);
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - v6;
  v8 = sub_24A82C8B4();
  (*(*(v8 - 8) + 16))(v7, a3, v8);
  swift_storeEnumTagMultiPayload();
  a1(v7);
  return sub_24A67F378(v7, &qword_27EF5F470, &qword_24A83F508);
}

uint64_t sub_24A7E7908(void (*a1)(char *))
{
  v2 = sub_24A6BBA94(&qword_27EF5F470, &qword_24A83F508);
  MEMORY[0x28223BE20](v2);
  v4 = &v6 - v3;
  *v4 = 0;
  v4[8] = 0;
  swift_storeEnumTagMultiPayload();
  a1(v4);
  return sub_24A67F378(v4, &qword_27EF5F470, &qword_24A83F508);
}

uint64_t sub_24A7E79CC@<X0>(uint64_t x8_0@<X8>)
{
  swift_beginAccess();
  v4 = *(v2 + 112);

  sub_24A79F424(sub_24A7E94DC, v4, x8_0);
}

uint64_t sub_24A7E7A54(uint64_t a1)
{
  v2 = sub_24A82D4E4();
  if (qword_27EF5CB80 != -1)
  {
    swift_once();
  }

  v3 = sub_24A82CDC4();
  sub_24A6797D0(v3, qword_27EF78BE8);
  v4 = sub_24A82CD94();
  if (os_log_type_enabled(v4, v2))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_24A68761C(0xD000000000000018, 0x800000024A848370, v13);
    _os_log_impl(&dword_24A675000, v4, v2, "FMIPUnknownAccessoryDiscoveryController: %s", v5, 0xCu);
    sub_24A6876E8(v6);
    MEMORY[0x24C21E1D0](v6, -1, -1);
    MEMORY[0x24C21E1D0](v5, -1, -1);
  }

  result = swift_beginAccess();
  if (*(a1 + 104) == 1)
  {
    v8 = sub_24A82D504();
    v9 = sub_24A82CD94();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_24A68761C(0xD000000000000052, 0x800000024A84A420, &v12);
      _os_log_impl(&dword_24A675000, v9, v8, "FMIPUnknownAccessoryDiscoveryController: %s", v10, 0xCu);
      sub_24A6876E8(v11);
      MEMORY[0x24C21E1D0](v11, -1, -1);
      MEMORY[0x24C21E1D0](v10, -1, -1);
    }

    return sub_24A7E8C58();
  }

  return result;
}

uint64_t sub_24A7E7C80(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A82CDF4();
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x28223BE20](v4);
  v50 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_24A82CE54();
  v49 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v48 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  v7 = sub_24A82D504();
  if (qword_27EF5CB80 != -1)
  {
    swift_once();
  }

  v8 = sub_24A82CDC4();
  sub_24A6797D0(v8, qword_27EF78BE8);
  v9 = sub_24A82CD94();
  if (os_log_type_enabled(v9, v7))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v59[0] = v11;
    *v10 = 136315138;
    aBlock = 0;
    v54 = 0xE000000000000000;
    sub_24A82D854();

    aBlock = 0xD000000000000016;
    v54 = 0x800000024A848680;
    sub_24A679170(0, &qword_27EF5DF78, 0x277D496E0);
    sub_24A7E4818();
    v12 = sub_24A82D3B4();
    MEMORY[0x24C21C9E0](v12);

    v13 = sub_24A68761C(aBlock, v54, v59);

    *(v10 + 4) = v13;
    _os_log_impl(&dword_24A675000, v9, v7, "FMIPUnknownAccessoryDiscoveryController: %s", v10, 0xCu);
    sub_24A6876E8(v11);
    MEMORY[0x24C21E1D0](v11, -1, -1);
    MEMORY[0x24C21E1D0](v10, -1, -1);
  }

  sub_24A7E3574(a2);
  v15 = sub_24A71462C(v14);

  swift_beginAccess();
  v16 = *(a1 + 112);
  if (*(v16 + 16) <= *(v15 + 16) >> 3)
  {
    aBlock = v15;

    sub_24A7EAD88(v16);

    v17 = aBlock;
  }

  else
  {

    v17 = sub_24A7ECFEC(v16, v15);
  }

  v18 = *(a1 + 112);
  if (*(v15 + 16) <= *(v18 + 16) >> 3)
  {
    aBlock = *(a1 + 112);

    sub_24A7EAD88(v15);
    v19 = aBlock;
  }

  else
  {

    v19 = sub_24A7ECFEC(v15, v18);
  }

  *(a1 + 112) = v15;

  v20 = sub_24A82D504();
  v21 = sub_24A82CD94();
  if (os_log_type_enabled(v21, v20))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v52 = v23;
    aBlock = 0;
    *v22 = 136315138;
    v54 = 0xE000000000000000;
    sub_24A82D854();

    aBlock = 0xD00000000000001CLL;
    v54 = 0x800000024A848660;
    type metadata accessor for FMIPUnknownItem(0);
    sub_24A695740(&qword_27EF5DD80, type metadata accessor for FMIPUnknownItem, &protocol conformance descriptor for FMIPUnknownItem);
    v24 = sub_24A82D3B4();
    MEMORY[0x24C21C9E0](v24);

    v25 = sub_24A68761C(aBlock, v54, &v52);

    *(v22 + 4) = v25;
    _os_log_impl(&dword_24A675000, v21, v20, "FMIPUnknownAccessoryDiscoveryController: %s", v22, 0xCu);
    sub_24A6876E8(v23);
    MEMORY[0x24C21E1D0](v23, -1, -1);
    MEMORY[0x24C21E1D0](v22, -1, -1);
  }

  v26 = sub_24A82D504();
  v27 = sub_24A82CD94();
  if (os_log_type_enabled(v27, v26))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v52 = v29;
    aBlock = 0;
    *v28 = 136315138;
    v54 = 0xE000000000000000;
    sub_24A82D854();

    aBlock = 0xD000000000000012;
    v54 = 0x800000024A848640;
    type metadata accessor for FMIPUnknownItem(0);
    sub_24A695740(&qword_27EF5DD80, type metadata accessor for FMIPUnknownItem, &protocol conformance descriptor for FMIPUnknownItem);
    v30 = sub_24A82D3B4();
    MEMORY[0x24C21C9E0](v30);

    v31 = sub_24A68761C(aBlock, v54, &v52);

    *(v28 + 4) = v31;
    _os_log_impl(&dword_24A675000, v27, v26, "FMIPUnknownAccessoryDiscoveryController: %s", v28, 0xCu);
    sub_24A6876E8(v29);
    MEMORY[0x24C21E1D0](v29, -1, -1);
    MEMORY[0x24C21E1D0](v28, -1, -1);
  }

  v32 = MEMORY[0x277D84F90];
  if (*(v17 + 16))
  {
    v45 = v19;
    v33 = swift_allocObject();
    *(v33 + 16) = a1;
    *(v33 + 24) = v17;
    v57 = sub_24A7F08E0;
    v58 = v33;
    aBlock = MEMORY[0x277D85DD0];
    v54 = 1107296256;
    v55 = sub_24A699BA0;
    v56 = &unk_285DCC2C0;
    v34 = _Block_copy(&aBlock);

    v35 = v48;
    sub_24A82CE24();
    v36 = v32;
    v52 = v32;
    sub_24A695740(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
    v37 = v50;
    v38 = v47;
    sub_24A82D6B4();
    v19 = v45;
    MEMORY[0x24C21CE90](0, v35, v37, v34);
    _Block_release(v34);
    v39 = v46;
    (*(v46 + 8))(v37, v38);
    (*(v49 + 8))(v35, v51);

    if (*(v19 + 16))
    {
LABEL_17:
      v40 = swift_allocObject();
      *(v40 + 16) = a1;
      *(v40 + 24) = v19;
      v57 = sub_24A7F08E8;
      v58 = v40;
      aBlock = MEMORY[0x277D85DD0];
      v54 = 1107296256;
      v55 = sub_24A699BA0;
      v56 = &unk_285DCC310;
      v41 = _Block_copy(&aBlock);

      v42 = v48;
      sub_24A82CE24();
      v52 = v36;
      sub_24A695740(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
      sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
      v43 = v50;
      sub_24A82D6B4();
      MEMORY[0x24C21CE90](0, v42, v43, v41);
      _Block_release(v41);
      (*(v39 + 8))(v43, v38);
      (*(v49 + 8))(v42, v51);
    }
  }

  else
  {
    v36 = MEMORY[0x277D84F90];

    v39 = v46;
    v38 = v47;
    if (*(v19 + 16))
    {
      goto LABEL_17;
    }
  }
}

uint64_t sub_24A7E8680(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(a1 + 40);

    v5(a2);
    return sub_24A6AFFE8(v5, v6);
  }

  return result;
}

uint64_t sub_24A7E86F4(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = *(a1 + 56);

    v5(a2);
    return sub_24A6AFFE8(v5, v6);
  }

  return result;
}

uint64_t sub_24A7E8768(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24A82CDF4();
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24A82CE54();
  v26 = *(v7 - 8);
  v27 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *a1;
  v11 = *(a1 + 8);
  sub_24A79CF9C(*a1, v11);
  v12 = sub_24A82D504();
  if (qword_27EF5CB80 != -1)
  {
    swift_once();
  }

  v13 = sub_24A82CDC4();
  sub_24A6797D0(v13, qword_27EF78BE8);
  v14 = sub_24A82CD94();
  if (os_log_type_enabled(v14, v12))
  {
    v15 = swift_slowAlloc();
    v25 = v12;
    v16 = v15;
    v17 = swift_slowAlloc();
    v32 = v17;
    aBlock = 0;
    *v16 = 136315138;
    v34 = 0xE000000000000000;
    sub_24A82D854();
    MEMORY[0x24C21C9E0](0xD000000000000039, 0x800000024A848290);
    v30 = v10;
    v31 = v11;
    v18 = FMIPAccessoryError.localizedDescription.getter();
    MEMORY[0x24C21C9E0](v18);

    v19 = sub_24A68761C(aBlock, v34, &v32);

    *(v16 + 4) = v19;
    _os_log_impl(&dword_24A675000, v14, v25, "FMIPUnknownAccessoryDiscoveryController: %s", v16, 0xCu);
    sub_24A6876E8(v17);
    MEMORY[0x24C21E1D0](v17, -1, -1);
    MEMORY[0x24C21E1D0](v16, -1, -1);
  }

  sub_24A79CFB0(v10, v11);

  v20 = swift_allocObject();
  *(v20 + 16) = v2;
  *(v20 + 24) = v10;
  *(v20 + 32) = v11;
  v37 = sub_24A7E9D58;
  v38 = v20;
  aBlock = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v35 = sub_24A699BA0;
  v36 = &unk_285DCBBE0;
  v21 = _Block_copy(&aBlock);
  sub_24A79CF9C(v10, v11);

  sub_24A82CE24();
  v30 = MEMORY[0x277D84F90];
  sub_24A695740(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  v22 = v29;
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v9, v6, v21);
  _Block_release(v21);
  (*(v28 + 8))(v6, v22);
  (*(v26 + 8))(v9, v27);
}

uint64_t sub_24A7E8BD4(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  v7 = *(a1 + 80);
  if (v7)
  {
    v8 = *(a1 + 88);
    v9 = a2;
    v10 = a3;

    v7(&v9);
    return sub_24A6AFFE8(v7, v8);
  }

  return result;
}

uint64_t sub_24A7E8C58()
{
  v1 = v0;
  v2 = sub_24A82CDF4();
  v26 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24A82CE54();
  v24 = *(v5 - 8);
  v25 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A82CE84();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_24A82D504();
  if (qword_27EF5CB80 != -1)
  {
    swift_once();
  }

  v13 = sub_24A82CDC4();
  sub_24A6797D0(v13, qword_27EF78BE8);
  v14 = sub_24A82CD94();
  if (os_log_type_enabled(v14, v12))
  {
    v15 = swift_slowAlloc();
    v23 = v2;
    v16 = v15;
    v17 = swift_slowAlloc();
    aBlock[0] = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_24A68761C(0xD000000000000039, 0x800000024A84A2E0, aBlock);
    _os_log_impl(&dword_24A675000, v14, v12, "FMIPUnknownAccessoryDiscoveryController: %s", v16, 0xCu);
    sub_24A6876E8(v17);
    MEMORY[0x24C21E1D0](v17, -1, -1);
    v18 = v16;
    v2 = v23;
    MEMORY[0x24C21E1D0](v18, -1, -1);
  }

  v19 = *(v1 + 16);
  *v11 = v19;
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v20 = v19;
  LOBYTE(v19) = sub_24A82CEA4();
  result = (*(v9 + 8))(v11, v8);
  if (v19)
  {
    swift_beginAccess();
    *(v1 + 104) = 0;
    aBlock[4] = sub_24A7E9D50;
    aBlock[5] = v1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A699BA0;
    aBlock[3] = &unk_285DCBB90;
    v22 = _Block_copy(aBlock);

    sub_24A82CE24();
    v27 = MEMORY[0x277D84F90];
    sub_24A695740(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
    sub_24A82D6B4();
    MEMORY[0x24C21CE90](0, v7, v4, v22);
    _Block_release(v22);
    (*(v26 + 8))(v4, v2);
    (*(v24 + 8))(v7, v25);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24A7E90F8(void *a1)
{
  result = swift_beginAccess();
  v3 = a1[8];
  if (v3)
  {
    v4 = a1[9];
    swift_beginAccess();
    sub_24A6A7314(v3, v4);

    v3(v5);
    sub_24A6AFFE8(v3, v4);
  }

  return result;
}

id sub_24A7E9194(uint64_t a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x277D496E8]) initWithPreviousState_];
  v2 = swift_allocObject();
  swift_weakInit();
  v15 = sub_24A7E9F94;
  v16 = v2;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_24A7E9744;
  v14 = &unk_285DCC130;
  v3 = _Block_copy(&v11);

  [v1 setAccessoryDiscoveredCallback_];
  _Block_release(v3);
  v4 = swift_allocObject();
  swift_weakInit();
  v15 = sub_24A7E9F9C;
  v16 = v4;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_24A699BA0;
  v14 = &unk_285DCC158;
  v5 = _Block_copy(&v11);

  [v1 setSessionInvalidatedCallback_];
  _Block_release(v5);
  v6 = swift_allocObject();
  swift_weakInit();
  v15 = sub_24A7E9FA4;
  v16 = v6;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_24A720114;
  v14 = &unk_285DCC180;
  v7 = _Block_copy(&v11);

  [v1 setAccessoryDiscoveryErrorCallback_];
  _Block_release(v7);
  v8 = swift_allocObject();
  swift_weakInit();
  v15 = sub_24A7E9FAC;
  v16 = v8;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_24A699BA0;
  v14 = &unk_285DCC1A8;
  v9 = _Block_copy(&v11);

  [v1 setAccessoryDiscoveryFinishedCallback_];
  _Block_release(v9);
  return v1;
}

uint64_t sub_24A7E947C()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_24A7E9558()
{
  result = qword_27EF5F468;
  if (!qword_27EF5F468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F468);
  }

  return result;
}

uint64_t sub_24A7E95AC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 16);
    v5 = result;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = a1;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_24A7E9FD8;
    *(v7 + 24) = v6;
    aBlock[4] = sub_24A680674;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A6805E4;
    aBlock[3] = &unk_285DCC270;
    v8 = _Block_copy(aBlock);

    dispatch_sync(v4, v8);
    _Block_release(v8);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_24A7E9744(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_24A679170(0, &qword_27EF5DF78, 0x277D496E0);
  sub_24A7E4818();
  v3 = sub_24A82D3A4();

  v2(v3);
}

uint64_t sub_24A7E97D4(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + 16);
    v3 = result;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_24A7E9FD0;
    *(v4 + 24) = v3;
    aBlock[4] = sub_24A6806A0;
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A6805E4;
    aBlock[3] = &unk_285DCC1F8;
    v5 = _Block_copy(aBlock);

    dispatch_sync(v2, v5);
    _Block_release(v5);
    LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

    if (v2)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_24A7E9938(void *a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    LOBYTE(v6) = 0;
    v3 = a1;
    FMIPAccessoryError.init(underlyingError:discoveryType:)(&v8, a1, &v6);
    v4 = v8;
    v5 = v9;
    v6 = v8;
    v7 = v9;
    sub_24A7E8768(&v6);

    sub_24A79CFB0(v4, v5);
  }
}

void sub_24A7E99D8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 16);

    sub_24A6BBA94(&qword_27EF5F478, &unk_24A83F510);
    sub_24A82D574();
  }
}

uint64_t sub_24A7E9A84@<X0>(BOOL *a2@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v4 = result;
  if (result)
  {
    sub_24A7E8C58();
  }

  *a2 = v4 == 0;
  return result;
}

uint64_t sub_24A7E9DBC()
{
  v1 = *(sub_24A82C8B4() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_24A7E7800(v2, v3, v4);
}

uint64_t sub_24A7E9E64()
{

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A7E9EC0()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A7E9F00(uint64_t result, char a2)
{
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = result;
    v6 = a2 & 1;
    return v3(&v4);
  }

  return result;
}

uint64_t sub_24A7E9F4C()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A7E9FE0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for FMIPDiscoveredAccessory(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *v2;
  sub_24A82DCC4();
  FMIPDiscoveredAccessory.hash(into:)(v24);
  v10 = sub_24A82DD24();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v21 = v2;
    v22 = v5;
    v23 = a2;
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_24A7F08F0(*(v9 + 48) + v14 * v12, v8, type metadata accessor for FMIPDiscoveredAccessory);
      v15 = _s8FMIPCore23FMIPDiscoveredAccessoryV2eeoiySbAC_ACtFZ_0(v8, a1);
      sub_24A7F09C0(v8, type metadata accessor for FMIPDiscoveredAccessory);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        v16 = 1;
        a2 = v23;
        goto LABEL_10;
      }
    }

    v17 = v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v17;
    v24[0] = *v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_24A711160();
      v19 = v24[0];
    }

    a2 = v23;
    sub_24A7F0958(*(v19 + 48) + v14 * v12, v23, type metadata accessor for FMIPDiscoveredAccessory);
    sub_24A7EA448(v12);
    v16 = 0;
    *v17 = v24[0];
LABEL_10:
    v5 = v22;
  }

  else
  {
    v16 = 1;
  }

  return (*(v6 + 56))(a2, v16, 1, v5);
}

uint64_t sub_24A7EA214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for FMIPUnknownItem(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_24A82DCC4();
  FMIPUnknownItem.hash(into:)(v24);
  v10 = sub_24A82DD24();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v21 = v2;
    v22 = v5;
    v23 = a2;
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_24A7F08F0(*(v9 + 48) + v14 * v12, v8, type metadata accessor for FMIPUnknownItem);
      v15 = _s8FMIPCore15FMIPUnknownItemV2eeoiySbAC_ACtFZ_0(v8, a1);
      sub_24A7F09C0(v8, type metadata accessor for FMIPUnknownItem);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        v16 = 1;
        a2 = v23;
        goto LABEL_10;
      }
    }

    v17 = v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v17;
    v24[0] = *v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_24A71136C();
      v19 = v24[0];
    }

    a2 = v23;
    sub_24A7F0958(*(v19 + 48) + v14 * v12, v23, type metadata accessor for FMIPUnknownItem);
    sub_24A7EA8F0(v12);
    v16 = 0;
    *v17 = v24[0];
LABEL_10:
    v5 = v22;
  }

  else
  {
    v16 = 1;
  }

  return (*(v6 + 56))(a2, v16, 1, v5);
}

uint64_t sub_24A7EA448(int64_t a1)
{
  v35 = type metadata accessor for FMIPHawkeyeProductInformation(0);
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v29 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24A6BBA94(&qword_27EF5D360, &unk_24A836200);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - v6;
  v8 = type metadata accessor for FMIPDiscoveredAccessory(0);
  result = MEMORY[0x28223BE20](v8);
  v12 = (&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *v1;
  v14 = *v1 + 56;
  v15 = -1 << *(*v1 + 32);
  v16 = (a1 + 1) & ~v15;
  if (((1 << v16) & *(v14 + 8 * (v16 >> 6))) != 0)
  {
    v37 = v10;
    v38 = v3;
    v17 = ~v15;

    v18 = sub_24A82D6D4();
    if ((*(v14 + 8 * (v16 >> 6)) & (1 << v16)) != 0)
    {
      v19 = *(v37 + 72);
      v30 = (v38 + 48);
      v31 = v19;
      v33 = v14;
      v34 = v13;
      v32 = (v18 + 1) & v17;
      while (1)
      {
        v20 = *(v13 + 48);
        v38 = v19 * v16;
        sub_24A7F08F0(v20 + v19 * v16, v12, type metadata accessor for FMIPDiscoveredAccessory);
        sub_24A82DCC4();
        sub_24A82D5F4();
        if (v12[3])
        {
          v36 = v12[5];
          v37 = a1;
          v21 = v12[1];
          sub_24A82DCE4();
          MEMORY[0x24C21D5E0](v21);
          sub_24A82D094();
          a1 = v37;
          sub_24A82D094();
        }

        else
        {
          sub_24A82DCE4();
        }

        sub_24A67E964(v12 + *(v8 + 24), v7, &qword_27EF5D360, &unk_24A836200);
        if ((*v30)(v7, 1, v35) == 1)
        {
          sub_24A82DCE4();
        }

        else
        {
          v22 = v29;
          sub_24A7F0958(v7, v29, type metadata accessor for FMIPHawkeyeProductInformation);
          sub_24A82DCE4();
          FMIPHawkeyeProductInformation.hash(into:)(v39);
          sub_24A7F09C0(v22, type metadata accessor for FMIPHawkeyeProductInformation);
        }

        v14 = v33;
        v13 = v34;
        v23 = sub_24A82DD24();
        sub_24A7F09C0(v12, type metadata accessor for FMIPDiscoveredAccessory);
        v24 = v23 & v17;
        if (a1 >= v32)
        {
          break;
        }

        v19 = v31;
        if (v24 < v32)
        {
          goto LABEL_17;
        }

LABEL_18:
        v25 = v19 * a1;
        if (v19 * a1 < v38 || *(v13 + 48) + v19 * a1 >= (*(v13 + 48) + v38 + v19))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v16;
          if (v25 == v38)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        a1 = v16;
LABEL_6:
        v16 = (v16 + 1) & v17;
        if (((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v19 = v31;
      if (v24 < v32)
      {
        goto LABEL_6;
      }

LABEL_17:
      if (a1 < v24)
      {
        goto LABEL_6;
      }

      goto LABEL_18;
    }

LABEL_22:

    *(v14 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v14 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v26 = *(v13 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v28;
    ++*(v13 + 36);
  }

  return result;
}

uint64_t sub_24A7EA8F0(int64_t a1)
{
  v22 = type metadata accessor for FMIPUnknownItem(0);
  v3 = *(v22 - 8);
  result = MEMORY[0x28223BE20](v22);
  v6 = &v23[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = sub_24A82D6D4();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v13 = (v12 + 1) & v11;
      v14 = *(v3 + 72);
      while (1)
      {
        v15 = v14 * v10;
        sub_24A7F08F0(*(v7 + 48) + v14 * v10, v6, type metadata accessor for FMIPUnknownItem);
        sub_24A82DCC4();
        FMIPUnknownItem.hash(into:)(v23);
        v16 = sub_24A82DD24();
        sub_24A7F09C0(v6, type metadata accessor for FMIPUnknownItem);
        v17 = v16 & v11;
        if (a1 >= v13)
        {
          break;
        }

        if (v17 < v13)
        {
          goto LABEL_11;
        }

LABEL_12:
        v18 = v14 * a1;
        if (v14 * a1 < v15 || *(v7 + 48) + v14 * a1 >= (*(v7 + 48) + v15 + v14))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v10;
          if (v18 == v15)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        a1 = v10;
LABEL_6:
        v10 = (v10 + 1) & v11;
        if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      if (v17 < v13)
      {
        goto LABEL_6;
      }

LABEL_11:
      if (a1 < v17)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }

LABEL_16:

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v19 = *(v7 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v21;
    ++*(v7 + 36);
  }

  return result;
}

void sub_24A7EAB80(uint64_t a1)
{
  v3 = sub_24A6BBA94(&qword_27EF5E9B0, &unk_24A839AD8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for FMIPDiscoveredAccessory(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      sub_24A7F08F0(*(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v9, type metadata accessor for FMIPDiscoveredAccessory);
      sub_24A7E9FE0(v9, v5);
      sub_24A7F09C0(v9, type metadata accessor for FMIPDiscoveredAccessory);
      sub_24A67F378(v5, &qword_27EF5E9B0, &unk_24A839AD8);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_24A7EAD88(uint64_t a1)
{
  v3 = sub_24A6BBA94(&qword_27EF5F480, &qword_24A83F528);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for FMIPUnknownItem(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      sub_24A7F08F0(*(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v9, type metadata accessor for FMIPUnknownItem);
      sub_24A7EA214(v9, v5);
      sub_24A7F09C0(v9, type metadata accessor for FMIPUnknownItem);
      sub_24A67F378(v5, &qword_27EF5F480, &qword_24A83F528);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_24A7EAF90(unint64_t a1, uint64_t a2)
{
  v271 = *MEMORY[0x277D85DE8];
  v237 = sub_24A6BBA94(&qword_27EF5D428, &qword_24A832720);
  v4 = MEMORY[0x28223BE20](v237);
  v6 = &v212 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v230 = &v212 - v7;
  v8 = type metadata accessor for FMIPHawkeyeProductInformation(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v214 = &v212 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v213 = &v212 - v13;
  MEMORY[0x28223BE20](v12);
  v217 = &v212 - v14;
  v15 = sub_24A6BBA94(&qword_27EF5D360, &unk_24A836200);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v232 = (&v212 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x28223BE20](v16);
  v218 = &v212 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v221 = &v212 - v21;
  MEMORY[0x28223BE20](v20);
  v216 = &v212 - v22;
  v23 = sub_24A6BBA94(&qword_27EF5E9B0, &unk_24A839AD8);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v219 = &v212 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v212 - v26;
  v242 = type metadata accessor for FMIPDiscoveredAccessory(0);
  v28 = MEMORY[0x28223BE20](v242);
  v30 = &v212 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28);
  v249 = (&v212 - v32);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v212 - v34;
  MEMORY[0x28223BE20](v33);
  v248 = (&v212 - v37);
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v215 = v27;
  v231 = v6;
  v212 = 0;
  v38 = *(a1 + 56);
  v234 = a1 + 56;
  v39 = -1 << *(a1 + 32);
  v229 = ~v39;
  if (-v39 < 64)
  {
    v40 = ~(-1 << -v39);
  }

  else
  {
    v40 = -1;
  }

  v41 = v40 & v38;
  v223 = (63 - v39) >> 6;
  v228 = (v36 + 7);
  v222 = v36;
  v227 = (v36 + 6);
  v241 = (v9 + 48);
  v42 = (a2 + 56);

  v44 = 0;
  v240 = v8;
  v244 = v30;
  v245 = v35;
  v251 = a2;
  v226 = a1;
  v250 = (a2 + 56);
  while (1)
  {
    v45 = v41;
    v46 = v44;
    if (v41)
    {
LABEL_15:
      v50 = (v45 - 1) & v45;
      v51 = v215;
      sub_24A7F08F0(*(a1 + 48) + v222[9] * (__clz(__rbit64(v45)) | (v46 << 6)), v215, type metadata accessor for FMIPDiscoveredAccessory);
      v52 = 0;
      v30 = v46;
    }

    else
    {
      v47 = v223 <= v44 + 1 ? v44 + 1 : v223;
      v48 = v47 - 1;
      v49 = v44;
      while (1)
      {
        v46 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
          goto LABEL_169;
        }

        if (v46 >= v223)
        {
          break;
        }

        v45 = *(v234 + 8 * v46);
        ++v49;
        if (v45)
        {
          goto LABEL_15;
        }
      }

      v50 = 0;
      v52 = 1;
      v30 = v48;
      v51 = v215;
    }

    v53 = v242;
    v225 = *v228;
    v225(v51, v52, 1, v242);
    v266 = a1;
    v267 = v234;
    v268 = v229;
    v269 = v30;
    v238 = v30;
    v235 = v50;
    v270 = v50;
    v224 = *v227;
    if (v224(v51, 1, v53) == 1)
    {
      sub_24A67F378(v51, &qword_27EF5E9B0, &unk_24A839AD8);
      v204 = a1;
      goto LABEL_166;
    }

    v54 = v248;
    sub_24A7F0958(v51, v248, type metadata accessor for FMIPDiscoveredAccessory);
    sub_24A82DCC4();
    v253 = *v54;
    sub_24A82D5F4();
    if (v54[3])
    {
      v30 = v54[1];
      sub_24A82DCE4();
      MEMORY[0x24C21D5E0](v30);
      v8 = v240;
      sub_24A82D094();
      sub_24A82D094();
    }

    else
    {
      sub_24A82DCE4();
    }

    v55 = v245;
    v233 = *(v242 + 24);
    v56 = v216;
    sub_24A67E964(v54 + v233, v216, &qword_27EF5D360, &unk_24A836200);
    v239 = *v241;
    if (v239(v56, 1, v8) == 1)
    {
      sub_24A82DCE4();
    }

    else
    {
      v57 = v56;
      v58 = v217;
      sub_24A7F0958(v57, v217, type metadata accessor for FMIPHawkeyeProductInformation);
      sub_24A82DCE4();
      FMIPHawkeyeProductInformation.hash(into:)(&v256);
      sub_24A7F09C0(v58, type metadata accessor for FMIPHawkeyeProductInformation);
    }

    v59 = sub_24A82DD24();
    v60 = -1 << *(a2 + 32);
    v27 = v59 & ~v60;
    v61 = v27 >> 6;
    v62 = 1 << v27;
    if (((1 << v27) & v42[v27 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_24A7F09C0(v248, type metadata accessor for FMIPDiscoveredAccessory);
    v44 = v238;
    v41 = v235;
    a1 = v226;
    v8 = v240;
  }

  v252 = ~v60;
  v254 = sub_24A679170(0, &qword_281512B68, 0x277D82BB8);
  v255 = v222[9];
  while (1)
  {
    sub_24A7F08F0(*(a2 + 48) + v255 * v27, v55, type metadata accessor for FMIPDiscoveredAccessory);
    if ((sub_24A82D5E4() & 1) == 0)
    {
      goto LABEL_27;
    }

    v243 = v62;
    v247 = v61;
    v68 = v55[1];
    v67 = v55[2];
    v70 = v55[3];
    v69 = v55[4];
    v71 = v55[5];
    v73 = v248[1];
    v72 = v248[2];
    v74 = v248[3];
    v75 = v248[4];
    v76 = v248[5];
    if (!v70)
    {
      v88 = v248[4];
      v246 = v68;
      v89 = v68;
      v30 = v67;
      v90 = v69;
      v91 = v74;
      v92 = v71;
      sub_24A715CBC(v89, v67, 0, v69, v71);
      if (!v91)
      {
        sub_24A715CBC(v73, v72, 0, v88, v76);
        v70 = 0;
        v87 = v90;
        v86 = v30;
        v85 = v92;
        v68 = v246;
        goto LABEL_43;
      }

      v247 = v91;
      sub_24A715CBC(v73, v72, v91, v88, v76);
      v93 = v246;
LABEL_41:
      v256 = v93;
      v257 = v30;
      v258 = v70;
      v259 = v90;
      v260 = v92;
      v261 = v73;
      v262 = v72;
      v263 = v247;
      v264 = v88;
      v265 = v76;
      sub_24A67F378(&v256, qword_27EF5F488, &unk_24A83F540);
      goto LABEL_26;
    }

    if (!v74)
    {
      v94 = v68;
      v93 = v68;
      v30 = v67;
      v88 = v248[4];
      v90 = v69;
      v247 = 0;
      v92 = v71;
      sub_24A715CBC(v94, v67, v70, v69, v71);
      sub_24A715CBC(v73, v72, 0, v88, v76);
      sub_24A715CBC(v93, v30, v70, v90, v92);

      goto LABEL_41;
    }

    if (v68 != v73 || (v69 != v75 || v71 != v76) && (v77 = v67, v78 = v69, v79 = v248[3], v80 = v71, v81 = sub_24A82DC04(), v74 = v79, v71 = v80, v67 = v77, v69 = v78, v73 = v68, (v81 & 1) == 0))
    {
      v246 = v68;
      v63 = v67;
      v236 = v69;
      v64 = v74;
      v65 = v71;
      sub_24A715CBC(v68, v67, v70, v69, v71);
      sub_24A715CBC(v73, v72, v64, v75, v76);
      v66 = v68;
      v30 = v236;
      sub_24A715CBC(v66, v63, v70, v236, v65);
      sub_24A7171DC(v73, v72, v64, v75, v76);

      sub_24A7171DC(v246, v63, v70, v30, v65);
LABEL_26:
      a2 = v251;
      v42 = v250;
      v55 = v245;
      goto LABEL_27;
    }

    if (v67 == v72 && v70 == v74)
    {
      v82 = v67;
      v83 = v69;
      v84 = v71;
      sub_24A715CBC(v68, v67, v70, v69, v71);
      sub_24A715CBC(v68, v82, v70, v75, v76);
      sub_24A715CBC(v68, v82, v70, v83, v84);
      sub_24A7171DC(v68, v82, v70, v75, v76);

      v85 = v84;
      v86 = v82;
      v87 = v83;
LABEL_43:
      sub_24A7171DC(v68, v86, v70, v87, v85);
      v55 = v245;
      v30 = v247;
      goto LABEL_44;
    }

    v100 = v68;
    v101 = v67;
    v102 = v75;
    v103 = v69;
    v104 = v74;
    v105 = v71;
    LODWORD(v220) = sub_24A82DC04();
    sub_24A715CBC(v100, v101, v70, v103, v105);
    sub_24A715CBC(v100, v72, v104, v102, v76);
    sub_24A715CBC(v100, v101, v70, v103, v105);
    sub_24A7171DC(v100, v72, v104, v102, v76);

    sub_24A7171DC(v100, v101, v70, v103, v105);
    a2 = v251;
    v42 = v250;
    v55 = v245;
    v30 = v247;
    if ((v220 & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_44:
    v95 = *(v237 + 48);
    v96 = v230;
    sub_24A67E964(v55 + *(v242 + 24), v230, &qword_27EF5D360, &unk_24A836200);
    sub_24A67E964(v248 + v233, v96 + v95, &qword_27EF5D360, &unk_24A836200);
    v97 = v240;
    v98 = v239;
    if (v239(v96, 1, v240) == 1)
    {
      break;
    }

    v30 = v221;
    sub_24A67E964(v96, v221, &qword_27EF5D360, &unk_24A836200);
    if (v98(v96 + v95, 1, v97) == 1)
    {
      sub_24A7F09C0(v30, type metadata accessor for FMIPHawkeyeProductInformation);
      a2 = v251;
      goto LABEL_49;
    }

    v106 = v96;
    v107 = v96 + v95;
    v108 = v213;
    sub_24A7F0958(v107, v213, type metadata accessor for FMIPHawkeyeProductInformation);
    a2 = v251;
    v42 = v250;
    if (*v30 != *v108 || *(v30 + 8) != *(v108 + 8) || (*(v30 + 16) != *(v108 + 16) || *(v30 + 24) != *(v108 + 24)) && (v109 = sub_24A82DC04(), v30 = v221, (v109 & 1) == 0) || (*(v30 + 32) != *(v108 + 32) || *(v30 + 40) != *(v108 + 40)) && (v110 = sub_24A82DC04(), v30 = v221, (v110 & 1) == 0))
    {
LABEL_77:
      sub_24A7F09C0(v108, type metadata accessor for FMIPHawkeyeProductInformation);
      sub_24A7F09C0(v30, type metadata accessor for FMIPHawkeyeProductInformation);
      sub_24A67F378(v106, &qword_27EF5D360, &unk_24A836200);
      goto LABEL_27;
    }

    v111 = *(v30 + 56);
    v112 = *(v108 + 56);
    if (v111)
    {
      if (!v112)
      {
        goto LABEL_77;
      }

      if (*(v30 + 48) != *(v108 + 48) || v111 != v112)
      {
        v113 = sub_24A82DC04();
        v30 = v221;
        if ((v113 & 1) == 0)
        {
          goto LABEL_77;
        }
      }
    }

    else if (v112)
    {
      goto LABEL_77;
    }

    if (*(v30 + 64) != *(v108 + 64))
    {
      goto LABEL_77;
    }

    if (*(v30 + 72) != *(v108 + 72))
    {
      goto LABEL_77;
    }

    if (*(v30 + 73) != *(v108 + 73))
    {
      goto LABEL_77;
    }

    v114 = sub_24A82C874();
    v30 = v221;
    if ((v114 & 1) == 0)
    {
      goto LABEL_77;
    }

    v115 = sub_24A82C874();
    v30 = v221;
    if ((v115 & 1) == 0)
    {
      goto LABEL_77;
    }

    v116 = sub_24A82C874();
    v30 = v221;
    if ((v116 & 1) == 0)
    {
      goto LABEL_77;
    }

    v117 = sub_24A82C874();
    v30 = v221;
    if ((v117 & 1) == 0)
    {
      goto LABEL_77;
    }

    v118 = sub_24A82C874();
    v30 = v221;
    if ((v118 & 1) == 0)
    {
      goto LABEL_77;
    }

    v119 = sub_24A82C874();
    v120 = v108;
    v121 = v119;
    sub_24A7F09C0(v120, type metadata accessor for FMIPHawkeyeProductInformation);
    sub_24A7F09C0(v30, type metadata accessor for FMIPHawkeyeProductInformation);
    sub_24A67F378(v106, &qword_27EF5D360, &unk_24A836200);
    v30 = v247;
    a1 = v243;
    if (v121)
    {
      goto LABEL_80;
    }

LABEL_27:
    sub_24A7F09C0(v55, type metadata accessor for FMIPDiscoveredAccessory);
    v27 = (v27 + 1) & v252;
    v61 = v27 >> 6;
    v62 = 1 << v27;
    if ((v42[v27 >> 6] & (1 << v27)) == 0)
    {
      goto LABEL_6;
    }
  }

  v99 = v98(v96 + v95, 1, v97);
  a2 = v251;
  if (v99 != 1)
  {
LABEL_49:
    sub_24A67F378(v96, &qword_27EF5D428, &qword_24A832720);
    v42 = v250;
    goto LABEL_27;
  }

  sub_24A67F378(v96, &qword_27EF5D360, &unk_24A836200);
  a1 = v243;
  v42 = v250;
LABEL_80:
  sub_24A7F09C0(v55, type metadata accessor for FMIPDiscoveredAccessory);
  v122 = sub_24A7F09C0(v248, type metadata accessor for FMIPDiscoveredAccessory);
  v123 = *(a2 + 32);
  v46 = ((1 << v123) + 63) >> 6;
  v43 = 8 * v46;
  if ((v123 & 0x3Fu) > 0xD)
  {
    goto LABEL_170;
  }

  while (2)
  {
    v216 = v46;
    v220 = &v212;
    MEMORY[0x28223BE20](v122);
    v125 = &v212 - ((v124 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v125, v42, v124);
    v126 = *&v125[8 * v30] & ~a1;
    v222 = v125;
    *&v125[8 * v30] = v126;
    v127 = *(a2 + 16) - 1;
    v128 = v226;
    v129 = v219;
    v27 = v244;
    v130 = v234;
    v131 = v223;
    v132 = v238;
    v133 = v235;
LABEL_82:
    v221 = v127;
    while (2)
    {
      if (v133)
      {
        v238 = v132;
        v134 = v132;
LABEL_94:
        v137 = (v133 - 1) & v133;
        sub_24A7F08F0(*(v128 + 48) + (__clz(__rbit64(v133)) | (v134 << 6)) * v255, v129, type metadata accessor for FMIPDiscoveredAccessory);
        v138 = 0;
LABEL_95:
        v139 = v242;
        v225(v129, v138, 1, v242);
        v266 = v128;
        v267 = v234;
        v268 = v229;
        v269 = v238;
        v235 = v137;
        v270 = v137;
        if (v224(v129, 1, v139) == 1)
        {
          sub_24A67F378(v129, &qword_27EF5E9B0, &unk_24A839AD8);
          a2 = sub_24A7EFFA8(v222, v216, v221, a2);
          goto LABEL_164;
        }

        v46 = v249;
        sub_24A7F0958(v129, v249, type metadata accessor for FMIPDiscoveredAccessory);
        sub_24A82DCC4();
        v253 = *v46;
        sub_24A82D5F4();
        if (*(v46 + 24))
        {
          v30 = v249[1];
          sub_24A82DCE4();
          MEMORY[0x24C21D5E0](v30);
          sub_24A82D094();
          v46 = v249;
          sub_24A82D094();
        }

        else
        {
          sub_24A82DCE4();
        }

        v236 = *(v242 + 24);
        v140 = v218;
        sub_24A67E964(v46 + v236, v218, &qword_27EF5D360, &unk_24A836200);
        if (v239(v140, 1, v240) == 1)
        {
          sub_24A82DCE4();
        }

        else
        {
          v141 = v140;
          v142 = v217;
          sub_24A7F0958(v141, v217, type metadata accessor for FMIPHawkeyeProductInformation);
          sub_24A82DCE4();
          FMIPHawkeyeProductInformation.hash(into:)(&v256);
          sub_24A7F09C0(v142, type metadata accessor for FMIPHawkeyeProductInformation);
        }

        v143 = sub_24A82DD24();
        v144 = -1 << *(a2 + 32);
        a1 = v143 & ~v144;
        v145 = a1 >> 6;
        v146 = 1 << a1;
        if (((1 << a1) & v42[a1 >> 6]) == 0)
        {
LABEL_83:
          sub_24A7F09C0(v249, type metadata accessor for FMIPDiscoveredAccessory);
          v128 = v226;
          v129 = v219;
          v130 = v234;
          v131 = v223;
          v132 = v238;
          v133 = v235;
          continue;
        }

        v252 = ~v144;
LABEL_108:
        sub_24A7F08F0(*(a2 + 48) + a1 * v255, v27, type metadata accessor for FMIPDiscoveredAccessory);
        if ((sub_24A82D5E4() & 1) == 0)
        {
          goto LABEL_107;
        }

        v152 = *(v27 + 8);
        v151 = *(v27 + 16);
        v153 = v27;
        v154 = *(v27 + 24);
        v155 = *(v153 + 32);
        v156 = *(v153 + 40);
        v158 = v249[1];
        v157 = v249[2];
        v159 = v249[3];
        v160 = v249[4];
        v46 = v249[5];
        if (v154)
        {
          if (v159)
          {
            if (v152 == v158)
            {
              if (v155 == v160 && v156 == v46 || (v246 = v151, v245 = v145, v161 = v155, v162 = v159, v163 = v152, v164 = v156, v165 = sub_24A82DC04(), v159 = v162, v156 = v164, v152 = v163, v151 = v246, v155 = v161, v145 = v245, v158 = v163, (v165 & 1) != 0))
              {
                v233 = v160;
                if (v151 == v157 && v154 == v159)
                {
                  v166 = v151;
                  v167 = v155;
                  v168 = v156;
                  sub_24A715CBC(v152, v151, v154, v155, v156);
                  v169 = v233;
                  sub_24A715CBC(v152, v166, v154, v233, v46);
                  sub_24A715CBC(v152, v166, v154, v167, v168);
                  sub_24A7171DC(v152, v166, v154, v169, v46);

                  v170 = v168;
                  v171 = v166;
                  v172 = v167;
                  goto LABEL_123;
                }

                v183 = v151;
                v230 = v157;
                v243 = v155;
                v184 = v159;
                v247 = v159;
                v30 = v152;
                v185 = v156;
                LODWORD(v246) = sub_24A82DC04();
                v186 = v152;
                v187 = v243;
                sub_24A715CBC(v186, v183, v154, v243, v185);
                v188 = v184;
                v189 = v233;
                sub_24A715CBC(v30, v230, v188, v233, v46);
                sub_24A715CBC(v30, v183, v154, v187, v185);
                sub_24A7171DC(v30, v230, v247, v189, v46);

                sub_24A7171DC(v30, v183, v154, v243, v185);
                a2 = v251;
                v27 = v244;
                v42 = v250;
                if ((v246 & 1) == 0)
                {
                  goto LABEL_107;
                }

LABEL_124:
                v179 = *(v237 + 48);
                v30 = v231;
                v46 = &unk_24A836200;
                sub_24A67E964(v27 + *(v242 + 24), v231, &qword_27EF5D360, &unk_24A836200);
                sub_24A67E964(v249 + v236, v30 + v179, &qword_27EF5D360, &unk_24A836200);
                v180 = v240;
                v181 = v239;
                if (v239(v30, 1, v240) == 1)
                {
                  v182 = v181(v30 + v179, 1, v180);
                  a2 = v251;
                  if (v182 == 1)
                  {
                    sub_24A67F378(v30, &qword_27EF5D360, &unk_24A836200);
                    v42 = v250;
LABEL_159:
                    sub_24A7F09C0(v27, type metadata accessor for FMIPDiscoveredAccessory);
                    sub_24A7F09C0(v249, type metadata accessor for FMIPDiscoveredAccessory);
                    v203 = v222[v145];
                    v222[v145] = v203 & ~v146;
                    v128 = v226;
                    v129 = v219;
                    v130 = v234;
                    v131 = v223;
                    v132 = v238;
                    v133 = v235;
                    if ((v203 & v146) != 0)
                    {
                      v127 = v221 - 1;
                      if (__OFSUB__(v221, 1))
                      {
                        __break(1u);
                      }

                      if (v221 == 1)
                      {

                        a2 = MEMORY[0x277D84FA0];
                        goto LABEL_164;
                      }

                      goto LABEL_82;
                    }

                    continue;
                  }

LABEL_129:
                  sub_24A67F378(v30, &qword_27EF5D428, &qword_24A832720);
LABEL_106:
                  v42 = v250;
LABEL_107:
                  sub_24A7F09C0(v27, type metadata accessor for FMIPDiscoveredAccessory);
                  a1 = (a1 + 1) & v252;
                  v145 = a1 >> 6;
                  v146 = 1 << a1;
                  if ((v42[a1 >> 6] & (1 << a1)) == 0)
                  {
                    goto LABEL_83;
                  }

                  goto LABEL_108;
                }

                sub_24A67E964(v30, v232, &qword_27EF5D360, &unk_24A836200);
                if (v181(v30 + v179, 1, v180) == 1)
                {
                  sub_24A7F09C0(v232, type metadata accessor for FMIPHawkeyeProductInformation);
                  a2 = v251;
                  goto LABEL_129;
                }

                v46 = v180;
                v190 = v30;
                v191 = v30 + v179;
                v192 = v214;
                sub_24A7F0958(v191, v214, type metadata accessor for FMIPHawkeyeProductInformation);
                v30 = v232;
                a2 = v251;
                v42 = v250;
                if (*v232 == *v192 && v232[1] == *(v192 + 8))
                {
                  if (v232[2] == *(v192 + 16) && v232[3] == *(v192 + 24) || (v193 = sub_24A82DC04(), v30 = v232, (v193 & 1) != 0))
                  {
                    if (*(v30 + 32) == *(v192 + 32) && *(v30 + 40) == *(v192 + 40) || (v194 = sub_24A82DC04(), v30 = v232, (v194 & 1) != 0))
                    {
                      v195 = *(v30 + 56);
                      v196 = *(v192 + 56);
                      if (v195)
                      {
                        if (!v196)
                        {
                          goto LABEL_157;
                        }

                        if (*(v30 + 48) != *(v192 + 48) || v195 != v196)
                        {
                          v197 = sub_24A82DC04();
                          v30 = v232;
                          if ((v197 & 1) == 0)
                          {
                            goto LABEL_157;
                          }
                        }

LABEL_147:
                        if (*(v30 + 64) == *(v192 + 64) && *(v30 + 72) == *(v192 + 72) && *(v30 + 73) == *(v192 + 73))
                        {
                          v198 = sub_24A82C874();
                          v30 = v232;
                          if (v198)
                          {
                            v199 = sub_24A82C874();
                            v30 = v232;
                            if (v199)
                            {
                              v200 = sub_24A82C874();
                              v30 = v232;
                              if (v200)
                              {
                                v201 = sub_24A82C874();
                                v30 = v232;
                                if (v201)
                                {
                                  v202 = sub_24A82C874();
                                  v30 = v232;
                                  if (v202)
                                  {
                                    v46 = sub_24A82C874();
                                    sub_24A7F09C0(v192, type metadata accessor for FMIPHawkeyeProductInformation);
                                    sub_24A7F09C0(v30, type metadata accessor for FMIPHawkeyeProductInformation);
                                    sub_24A67F378(v190, &qword_27EF5D360, &unk_24A836200);
                                    if (v46)
                                    {
                                      goto LABEL_159;
                                    }

                                    goto LABEL_107;
                                  }
                                }
                              }
                            }
                          }
                        }

                        goto LABEL_157;
                      }

                      if (!v196)
                      {
                        goto LABEL_147;
                      }
                    }
                  }
                }

LABEL_157:
                sub_24A7F09C0(v192, type metadata accessor for FMIPHawkeyeProductInformation);
                sub_24A7F09C0(v30, type metadata accessor for FMIPHawkeyeProductInformation);
                sub_24A67F378(v190, &qword_27EF5D360, &unk_24A836200);
                goto LABEL_107;
              }
            }

            v147 = v151;
            v243 = v155;
            v30 = v159;
            v248 = v152;
            v148 = v156;
            sub_24A715CBC(v152, v151, v154, v155, v156);
            sub_24A715CBC(v158, v157, v30, v160, v46);
            v149 = v152;
            v150 = v243;
            sub_24A715CBC(v149, v147, v154, v243, v148);
            sub_24A7171DC(v158, v157, v30, v160, v46);

            sub_24A7171DC(v248, v147, v154, v150, v148);
LABEL_105:
            a2 = v251;
            v27 = v244;
            goto LABEL_106;
          }

          v178 = v152;
          v177 = v151;
          v174 = *(v153 + 32);
          v247 = 0;
          v30 = v152;
          v176 = v156;
          sub_24A715CBC(v178, v151, v154, v155, v156);
          sub_24A715CBC(v158, v157, 0, v160, v46);
          sub_24A715CBC(v30, v177, v154, v174, v176);
        }

        else
        {
          v245 = v145;
          v248 = v152;
          v173 = v152;
          v246 = v151;
          v174 = v155;
          v175 = v159;
          v176 = v156;
          sub_24A715CBC(v173, v151, 0, v155, v156);
          if (!v175)
          {
            sub_24A715CBC(v158, v157, 0, v160, v46);
            v154 = 0;
            v172 = v174;
            v145 = v245;
            v171 = v246;
            v170 = v176;
            v152 = v248;
LABEL_123:
            sub_24A7171DC(v152, v171, v154, v172, v170);
            v27 = v244;
            goto LABEL_124;
          }

          v247 = v175;
          sub_24A715CBC(v158, v157, v175, v160, v46);
          v177 = v246;
          v30 = v248;
        }

        v256 = v30;
        v257 = v177;
        v258 = v154;
        v259 = v174;
        v260 = v176;
        v261 = v158;
        v262 = v157;
        v263 = v247;
        v264 = v160;
        v265 = v46;
        sub_24A67F378(&v256, qword_27EF5F488, &unk_24A83F540);
        goto LABEL_105;
      }

      break;
    }

    if (v131 <= v132 + 1)
    {
      v135 = v132 + 1;
    }

    else
    {
      v135 = v131;
    }

    v136 = v135 - 1;
    while (1)
    {
      v134 = v132 + 1;
      if (__OFADD__(v132, 1))
      {
        break;
      }

      if (v134 >= v131)
      {
        v137 = 0;
        v138 = 1;
        v238 = v136;
        goto LABEL_95;
      }

      v133 = *(v130 + 8 * v134);
      ++v132;
      if (v133)
      {
        v238 = v134;
        goto LABEL_94;
      }
    }

    __break(1u);
LABEL_169:
    __break(1u);
LABEL_170:
    v206 = v43;

    v207 = v206;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v208 = swift_slowAlloc();
  memcpy(v208, v42, v207);
  v209 = v46;
  v210 = v212;
  v211 = sub_24A7EE564(v208, v209, a2, v27, &v266);

  if (v210)
  {

    result = MEMORY[0x24C21E1D0](v208, -1, -1);
    __break(1u);
  }

  else
  {

    MEMORY[0x24C21E1D0](v208, -1, -1);
    a2 = v211;
LABEL_164:
    v204 = v266;
LABEL_166:
    sub_24A6BAFBC(v204);
    return a2;
  }

  return result;
}

unint64_t sub_24A7ECFEC(unint64_t a1, unint64_t a2)
{
  v173 = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for FMIPUnknownItemUTMetadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v150 = (&v136 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_24A6BBA94(&qword_27EF5E520, &qword_24A8384B0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v147 = (&v136 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v11 = (&v136 - v10);
  v151 = sub_24A6BBA94(&qword_27EF5E768, &qword_24A83F520);
  v12 = MEMORY[0x28223BE20](v151);
  v148 = &v136 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v136 - v14;
  v16 = sub_24A6BBA94(&qword_27EF5F480, &qword_24A83F528);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v149 = &v136 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v160 = (&v136 - v19);
  v20 = type metadata accessor for FMIPUnknownItem(0);
  v21 = MEMORY[0x28223BE20](v20);
  v22 = MEMORY[0x28223BE20](v21);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v136 - v24;
  MEMORY[0x28223BE20](v23);
  v30 = &v136 - v29;
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v145 = v15;
  v141 = v11;
  v143 = v27;
  v146 = v26;
  v142 = v4;
  v140 = 0;
  v32 = a1 + 56;
  v31 = *(a1 + 56);
  v33 = -1 << *(a1 + 32);
  v161 = ~v33;
  if (-v33 < 64)
  {
    v34 = ~(-1 << -v33);
  }

  else
  {
    v34 = -1;
  }

  v35 = v34 & v31;
  v152 = (63 - v33) >> 6;
  v159 = (v28 + 56);
  v162 = v28;
  v158 = (v28 + 48);
  v157 = a2;
  v166 = (a2 + 56);
  v144 = (v5 + 48);

  v36 = 0;
  v37 = a1;
  v156 = a1;
  v155 = a1 + 56;
LABEL_7:
  v38 = v35;
  v39 = v36;
  v40 = v160;
  v165 = v35;
  if (v35)
  {
LABEL_15:
    v44 = (v38 - 1) & v38;
    sub_24A7F08F0(*(v37 + 48) + *(v162 + 72) * (__clz(__rbit64(v38)) | (v39 << 6)), v160, type metadata accessor for FMIPUnknownItem);
    v45 = 0;
    v42 = v39;
    v46 = v44;
    goto LABEL_16;
  }

  if (v152 <= (v36 + 1))
  {
    v41 = v36 + 1;
  }

  else
  {
    v41 = v152;
  }

  v42 = v41 - 1;
  v43 = v36;
  while (1)
  {
    v39 = (v43 + 1);
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v39 >= v152)
    {
      v46 = 0;
      v45 = 1;
LABEL_16:
      v47 = *v159;
      (*v159)(v40, v45, 1, v20);
      v168 = v37;
      v169 = v32;
      v170 = v161;
      v171 = v42;
      v172 = v46;
      v154 = *v158;
      if (v154(v40, 1, v20) == 1)
      {
        sub_24A67F378(v40, &qword_27EF5F480, &qword_24A83F528);
        sub_24A6BAFBC(v37);
        return v157;
      }

      v153 = v47;
      v164 = v46;
      v163 = v42;
      sub_24A7F0958(v40, v30, type metadata accessor for FMIPUnknownItem);
      v48 = v157;
      sub_24A82DCC4();
      FMIPUnknownItem.hash(into:)(&v167);
      v49 = sub_24A82DD24();
      v32 = v48;
      v50 = -1 << *(v48 + 32);
      v37 = v49 & ~v50;
      v40 = v37 >> 6;
      v39 = 1 << v37;
      if (((1 << v37) & v166[v37 >> 6]) != 0)
      {
        v51 = ~v50;
        v52 = v30[v20[15]];
        v165 = *(v162 + 72);
        do
        {
          sub_24A7F08F0(*(v32 + 48) + v165 * v37, v25, type metadata accessor for FMIPUnknownItem);
          if (v25[v20[15]] != v52 || *&v25[v20[13]] != *&v30[v20[13]])
          {
            goto LABEL_54;
          }

          v53 = v20[6];
          v54 = &v25[v53];
          v55 = *&v25[v53 + 8];
          v56 = &v30[v53];
          v57 = *(v56 + 1);
          if (v55)
          {
            if (!v57)
            {
              goto LABEL_54;
            }

            v58 = *v54 == *v56 && v55 == v57;
            if (!v58 && (sub_24A82DC04() & 1) == 0)
            {
              goto LABEL_54;
            }
          }

          else if (v57)
          {
            goto LABEL_54;
          }

          if ((sub_24A82CA74() & 1) == 0 || v25[v20[16]] != v30[v20[16]] || v25[v20[7]] != v30[v20[7]] || (sub_24A7D8828(*&v25[v20[8]], *&v30[v20[8]]) & 1) == 0)
          {
            goto LABEL_54;
          }

          v59 = v20[5];
          v60 = *&v25[v59];
          v61 = *&v25[v59 + 8];
          v62 = &v30[v59];
          if ((v60 != *v62 || v61 != *(v62 + 1)) && (sub_24A82DC04() & 1) == 0)
          {
            goto LABEL_54;
          }

          if (!_s8FMIPCore15FMIPProductTypeO2eeoiySbAC_ACtFZ_0(&v25[v20[9]], &v30[v20[9]]) || v25[v20[10]] != v30[v20[10]] || *&v25[v20[14]] != *&v30[v20[14]])
          {
            goto LABEL_54;
          }

          v63 = v20[12];
          v64 = *&v30[v63];
          if (*&v25[v63])
          {
            if (!v64)
            {
              goto LABEL_54;
            }

            v138 = *&v25[v63];
            v139 = sub_24A679170(0, &qword_27EF5DF78, 0x277D496E0);
            v137 = v64;
            v138 = v138;
            v65 = sub_24A82D5E4();

            if ((v65 & 1) == 0)
            {
              goto LABEL_54;
            }
          }

          else if (v64)
          {
            goto LABEL_54;
          }

          v138 = v20[11];
          v139 = *(v151 + 48);
          v66 = v145;
          sub_24A67E964(v138 + v25, v145, &qword_27EF5E520, &qword_24A8384B0);
          sub_24A67E964(v138 + v30, v66 + v139, &qword_27EF5E520, &qword_24A8384B0);
          v67 = v66;
          v68 = v142;
          v138 = *v144;
          if ((v138)(v67, 1, v142) == 1)
          {
            if ((v138)(&v145[v139], 1, v68) != 1)
            {
              goto LABEL_50;
            }

            sub_24A67F378(v145, &qword_27EF5E520, &qword_24A8384B0);
          }

          else
          {
            v69 = v145;
            sub_24A67E964(v145, v141, &qword_27EF5E520, &qword_24A8384B0);
            v70 = v69 + v139;
            v71 = v139;
            if ((v138)(v70, 1, v142) == 1)
            {
              sub_24A7F09C0(v141, type metadata accessor for FMIPUnknownItemUTMetadata);
LABEL_50:
              sub_24A67F378(v145, &qword_27EF5E768, &qword_24A83F520);
LABEL_54:
              sub_24A7F09C0(v25, type metadata accessor for FMIPUnknownItem);
              goto LABEL_55;
            }

            v72 = &v145[v71];
            v73 = v150;
            sub_24A7F0958(v72, v150, type metadata accessor for FMIPUnknownItemUTMetadata);
            LODWORD(v139) = _s8FMIPCore25FMIPUnknownItemUTMetadataV2eeoiySbAC_ACtFZ_0(v141, v73);
            sub_24A7F09C0(v73, type metadata accessor for FMIPUnknownItemUTMetadata);
            sub_24A7F09C0(v141, type metadata accessor for FMIPUnknownItemUTMetadata);
            sub_24A67F378(v145, &qword_27EF5E520, &qword_24A8384B0);
            if ((v139 & 1) == 0)
            {
              goto LABEL_54;
            }
          }

          if (v25[v20[17]] != v30[v20[17]] || v25[v20[18]] != v30[v20[18]])
          {
            goto LABEL_54;
          }

          v74 = v20[19];
          v75 = *&v25[v74];
          v76 = *&v30[v74];
          sub_24A7F09C0(v25, type metadata accessor for FMIPUnknownItem);
          if (v75 == v76)
          {
            goto LABEL_64;
          }

LABEL_55:
          v37 = (v37 + 1) & v51;
          v40 = v37 >> 6;
          v39 = 1 << v37;
        }

        while ((v166[v37 >> 6] & (1 << v37)) != 0);
      }

      sub_24A7F09C0(v30, type metadata accessor for FMIPUnknownItem);
      v36 = v163;
      v35 = v164;
      v37 = v156;
      v32 = v155;
      goto LABEL_7;
    }

    v38 = *(v32 + 8 * v39);
    ++v43;
    if (v38)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_64:
  v79 = sub_24A7F09C0(v30, type metadata accessor for FMIPUnknownItem);
  v80 = v32;
  v81 = *(v32 + 32);
  v82 = v81 & 0x3F;
  v83 = ((1 << v81) + 63) >> 6;
  v162 = v83;
  if (v82 > 0xD)
  {
    v134 = 8 * v83;

    v135 = v134;
    if (!swift_stdlib_isStackAllocationSafe())
    {
      v90 = swift_slowAlloc();
      memcpy(v90, v166, v135);
      v97 = v140;
      v77 = sub_24A7EF590(v90, v162, v32, v37, &v168);

      if (v97)
      {
        goto LABEL_135;
      }

      MEMORY[0x24C21E1D0](v90, -1, -1);
LABEL_128:
      sub_24A6BAFBC(v168);
      return v77;
    }

    v80 = v32;
  }

  v141 = &v136;
  MEMORY[0x28223BE20](v79);
  v85 = &v136 - ((v84 + 15) & 0x3FFFFFFFFFFFFFF0);
  memcpy(v85, v166, v84);
  v86 = *&v85[8 * v40] & ~v39;
  v160 = v85;
  *&v85[8 * v40] = v86;
  v145 = (*(v80 + 16) - 1);
  v87 = v156;
  v88 = v155;
  v89 = v163;
  while (2)
  {
    v90 = v149;
    v91 = v152;
    do
    {
      while (1)
      {
        if (v164)
        {
          v92 = v89;
LABEL_78:
          v95 = (v164 - 1) & v164;
          sub_24A7F08F0(*(v87 + 48) + (__clz(__rbit64(v164)) | (v92 << 6)) * v165, v90, type metadata accessor for FMIPUnknownItem);
          v96 = 0;
        }

        else
        {
          if (v91 <= (v89 + 1))
          {
            v93 = v89 + 1;
          }

          else
          {
            v93 = v91;
          }

          v94 = v93 - 1;
          while (1)
          {
            v92 = (v89 + 1);
            if (__OFADD__(v89, 1))
            {
              __break(1u);
            }

            if (v92 >= v91)
            {
              break;
            }

            ++v89;
            if (*(v88 + 8 * v92))
            {
              v164 = *(v88 + 8 * v92);
              v89 = v92;
              goto LABEL_78;
            }
          }

          v95 = 0;
          v96 = 1;
          v89 = v94;
        }

        v153(v90, v96, 1, v20);
        v168 = v87;
        v169 = v88;
        v170 = v161;
        v171 = v89;
        v172 = v95;
        if (v154(v90, 1, v20) == 1)
        {
          sub_24A67F378(v90, &qword_27EF5F480, &qword_24A83F528);
          v77 = sub_24A7F048C(v160, v162, v145, v80);
          goto LABEL_128;
        }

        v164 = v95;
        v97 = v89;
        v98 = v143;
        sub_24A7F0958(v90, v143, type metadata accessor for FMIPUnknownItem);
        sub_24A82DCC4();
        FMIPUnknownItem.hash(into:)(&v167);
        v99 = sub_24A82DD24();
        v100 = -1 << *(v80 + 32);
        v101 = v99 & ~v100;
        v102 = v101 >> 6;
        v103 = 1 << v101;
        if (((1 << v101) & v166[v101 >> 6]) != 0)
        {
          break;
        }

LABEL_67:
        sub_24A7F09C0(v143, type metadata accessor for FMIPUnknownItem);
        v80 = v32;
        v87 = v156;
        v90 = v149;
        v88 = v155;
        v91 = v152;
        v89 = v97;
      }

      v104 = ~v100;
      v105 = *(v98 + v20[15]);
      v106 = v146;
      while (1)
      {
        sub_24A7F08F0(*(v32 + 48) + v101 * v165, v106, type metadata accessor for FMIPUnknownItem);
        v107 = v146;
        if (*(v146 + v20[15]) != v105 || *(v146 + v20[13]) != *(v143 + v20[13]))
        {
          goto LABEL_117;
        }

        v108 = v20[6];
        v109 = (v146 + v108);
        v110 = *(v146 + v108 + 8);
        v111 = (v143 + v108);
        v112 = v111[1];
        if (v110)
        {
          if (!v112)
          {
            goto LABEL_117;
          }

          if (*v109 != *v111 || v110 != v112)
          {
            v114 = sub_24A82DC04();
            v107 = v146;
            if ((v114 & 1) == 0)
            {
              goto LABEL_117;
            }
          }
        }

        else if (v112)
        {
          goto LABEL_117;
        }

        v115 = sub_24A82CA74();
        v107 = v146;
        if ((v115 & 1) == 0)
        {
          goto LABEL_117;
        }

        if (*(v146 + v20[16]) != *(v143 + v20[16]))
        {
          goto LABEL_117;
        }

        if (*(v146 + v20[7]) != *(v143 + v20[7]))
        {
          goto LABEL_117;
        }

        v116 = sub_24A7D8828(*(v146 + v20[8]), *(v143 + v20[8]));
        v107 = v146;
        if ((v116 & 1) == 0)
        {
          goto LABEL_117;
        }

        v117 = v20[5];
        v118 = *(v146 + v117);
        v119 = *(v146 + v117 + 8);
        v120 = (v143 + v117);
        if (v118 != *v120 || v119 != v120[1])
        {
          v121 = sub_24A82DC04();
          v107 = v146;
          if ((v121 & 1) == 0)
          {
            goto LABEL_117;
          }
        }

        v122 = _s8FMIPCore15FMIPProductTypeO2eeoiySbAC_ACtFZ_0(v107 + v20[9], v143 + v20[9]);
        v107 = v146;
        if (!v122 || *(v146 + v20[10]) != *(v143 + v20[10]) || *(v146 + v20[14]) != *(v143 + v20[14]))
        {
          goto LABEL_117;
        }

        v123 = v20[12];
        v124 = *(v143 + v123);
        v163 = *(v146 + v123);
        if (v163)
        {
          if (!v124)
          {
            goto LABEL_117;
          }

          v139 = sub_24A679170(0, &qword_27EF5DF78, 0x277D496E0);
          v137 = v124;
          v163 = v163;
          v125 = sub_24A82D5E4();

          v107 = v146;
          if ((v125 & 1) == 0)
          {
            goto LABEL_117;
          }
        }

        else if (v124)
        {
          goto LABEL_117;
        }

        v139 = v20[11];
        v163 = *(v151 + 48);
        v126 = v148;
        sub_24A67E964(v107 + v139, v148, &qword_27EF5E520, &qword_24A8384B0);
        sub_24A67E964(v143 + v139, v163 + v126, &qword_27EF5E520, &qword_24A8384B0);
        if ((v138)(v126, 1, v142) == 1)
        {
          break;
        }

        v127 = v148;
        sub_24A67E964(v148, v147, &qword_27EF5E520, &qword_24A8384B0);
        if ((v138)(v163 + v127, 1, v142) == 1)
        {
          sub_24A7F09C0(v147, type metadata accessor for FMIPUnknownItemUTMetadata);
          goto LABEL_113;
        }

        v128 = v150;
        sub_24A7F0958(v163 + v148, v150, type metadata accessor for FMIPUnknownItemUTMetadata);
        LODWORD(v163) = _s8FMIPCore25FMIPUnknownItemUTMetadataV2eeoiySbAC_ACtFZ_0(v147, v128);
        sub_24A7F09C0(v128, type metadata accessor for FMIPUnknownItemUTMetadata);
        sub_24A7F09C0(v147, type metadata accessor for FMIPUnknownItemUTMetadata);
        sub_24A67F378(v148, &qword_27EF5E520, &qword_24A8384B0);
        v107 = v146;
        if (v163)
        {
          goto LABEL_115;
        }

LABEL_117:
        sub_24A7F09C0(v107, type metadata accessor for FMIPUnknownItem);
LABEL_118:
        v101 = (v101 + 1) & v104;
        v102 = v101 >> 6;
        v103 = 1 << v101;
        v106 = v146;
        if ((v166[v101 >> 6] & (1 << v101)) == 0)
        {
          goto LABEL_67;
        }
      }

      if ((v138)(v163 + v148, 1, v142) != 1)
      {
LABEL_113:
        sub_24A67F378(v148, &qword_27EF5E768, &qword_24A83F520);
        v107 = v146;
        goto LABEL_117;
      }

      sub_24A67F378(v148, &qword_27EF5E520, &qword_24A8384B0);
      v107 = v146;
LABEL_115:
      if (*(v107 + v20[17]) != *(v143 + v20[17]) || *(v107 + v20[18]) != *(v143 + v20[18]))
      {
        goto LABEL_117;
      }

      v129 = v20[19];
      v130 = *(v107 + v129);
      v131 = *(v143 + v129);
      sub_24A7F09C0(v107, type metadata accessor for FMIPUnknownItem);
      if (v130 != v131)
      {
        goto LABEL_118;
      }

      sub_24A7F09C0(v143, type metadata accessor for FMIPUnknownItem);
      v132 = v160[v102];
      v160[v102] = v132 & ~v103;
      v58 = (v132 & v103) == 0;
      v80 = v32;
      v87 = v156;
      v90 = v149;
      v88 = v155;
      v91 = v152;
      v89 = v97;
    }

    while (v58);
    if (!__OFSUB__(v145--, 1))
    {
      v80 = v32;
      v87 = v156;
      v88 = v155;
      v89 = v97;
      if (!v145)
      {

        v77 = MEMORY[0x277D84FA0];
        goto LABEL_128;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_135:

  result = MEMORY[0x24C21E1D0](v90, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_24A7EE564(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v135[0] = a2;
  v148 = sub_24A6BBA94(&qword_27EF5D428, &qword_24A832720);
  MEMORY[0x28223BE20](v148);
  v147 = v135 - v9;
  v10 = type metadata accessor for FMIPHawkeyeProductInformation(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v139 = v135 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v138 = v135 - v14;
  v15 = sub_24A6BBA94(&qword_27EF5D360, &unk_24A836200);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v145 = v135 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v140 = v135 - v18;
  v19 = sub_24A6BBA94(&qword_27EF5E9B0, &unk_24A839AD8);
  MEMORY[0x28223BE20](v19 - 8);
  v144 = v135 - v20;
  v154 = type metadata accessor for FMIPDiscoveredAccessory(0);
  v21 = MEMORY[0x28223BE20](v154);
  v160 = v135 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v21);
  v164 = (v135 - v24);
  v25 = *(a3 + 16);
  v26 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v27 = *(a1 + v26) & ((-1 << a4) - 1);
  v137 = a1;
  *(a1 + v26) = v27;
  v28 = v25 - 1;
  v143 = (v29 + 56);
  v146 = v29;
  v142 = (v29 + 48);
  v152 = (v11 + 48);
  v169 = a3 + 56;
  v141 = a5;
  v153 = v10;
  v162 = a3;
LABEL_2:
  v136 = v28;
LABEL_4:
  while (2)
  {
    v30 = *a5;
    v31 = a5[1];
    v33 = a5[2];
    v32 = a5[3];
    v34 = a5[4];
    if (v34)
    {
      v35 = a5[3];
LABEL_13:
      v39 = (v34 - 1) & v34;
      v40 = v144;
      sub_24A7F08F0(*(v30 + 48) + *(v146 + 72) * (__clz(__rbit64(v34)) | (v35 << 6)), v144, type metadata accessor for FMIPDiscoveredAccessory);
      v41 = 0;
      v38 = v35;
LABEL_14:
      v42 = v154;
      (*v143)(v40, v41, 1, v154);
      *a5 = v30;
      a5[1] = v31;
      a5[2] = v33;
      a5[3] = v38;
      a5[4] = v39;
      if ((*v142)(v40, 1, v42) == 1)
      {
        sub_24A67F378(v40, &qword_27EF5E9B0, &unk_24A839AD8);
        v134 = v162;

        return sub_24A7EFFA8(v137, v135[0], v136, v134);
      }

      v43 = v164;
      sub_24A7F0958(v40, v164, type metadata accessor for FMIPDiscoveredAccessory);
      sub_24A82DCC4();
      v170[11] = *v43;
      sub_24A82D5F4();
      if (v43[3])
      {
        v44 = v43[1];
        sub_24A82DCE4();
        MEMORY[0x24C21D5E0](v44);
        sub_24A82D094();
        sub_24A82D094();
      }

      else
      {
        sub_24A82DCE4();
      }

      v45 = v140;
      v46 = v160;
      v151 = *(v154 + 24);
      sub_24A67E964(v43 + v151, v140, &qword_27EF5D360, &unk_24A836200);
      v150 = *v152;
      if (v150(v45, 1, v10) == 1)
      {
        sub_24A82DCE4();
      }

      else
      {
        v47 = v45;
        v48 = v138;
        sub_24A7F0958(v47, v138, type metadata accessor for FMIPHawkeyeProductInformation);
        sub_24A82DCE4();
        FMIPHawkeyeProductInformation.hash(into:)(v170);
        sub_24A7F09C0(v48, type metadata accessor for FMIPHawkeyeProductInformation);
      }

      v49 = v162;
      v50 = sub_24A82DD24();
      v51 = -1 << *(v49 + 32);
      v52 = v50 & ~v51;
      v53 = v52 >> 6;
      v54 = 1 << v52;
      if (((1 << v52) & *(v169 + 8 * (v52 >> 6))) == 0)
      {
LABEL_3:
        result = sub_24A7F09C0(v164, type metadata accessor for FMIPDiscoveredAccessory);
        a5 = v141;
        v10 = v153;
        continue;
      }

      v166 = ~v51;
      v168 = sub_24A679170(0, &qword_281512B68, 0x277D82BB8);
      v167 = *(v146 + 72);
      while (1)
      {
        sub_24A7F08F0(*(v49 + 48) + v167 * v52, v46, type metadata accessor for FMIPDiscoveredAccessory);
        if ((sub_24A82D5E4() & 1) == 0)
        {
          goto LABEL_25;
        }

        v58 = v46[1];
        v57 = v46[2];
        v60 = v46[3];
        v59 = v46[4];
        v61 = v46[5];
        v62 = v164[1];
        v63 = v164[2];
        v64 = v164[3];
        v65 = v164[4];
        v66 = v164[5];
        if (!v60)
        {
          break;
        }

        if (!v64)
        {
          v84 = v57;
          v163 = v164[5];
          v86 = v60;
          v81 = v59;
          v159 = 0;
          v83 = v61;
          v85 = v58;
          sub_24A715CBC(v58, v57, v60, v59, v61);
          sub_24A715CBC(v62, v63, 0, v65, v163);
          sub_24A715CBC(v85, v84, v86, v81, v83);

          goto LABEL_40;
        }

        v165 = v57;
        v157 = v65;
        if (v58 != v62 || (v59 != v65 || v61 != v66) && (v149 = v63, v158 = v60, v67 = v59, v68 = v64, v69 = v61, v70 = v58, v71 = sub_24A82DC04(), v64 = v68, v60 = v158, v63 = v149, v58 = v70, v61 = v69, v57 = v165, v59 = v67, v62 = v70, (v71 & 1) == 0))
        {
          v87 = v60;
          v156 = v59;
          v88 = v64;
          v89 = v61;
          v90 = v58;
          v161 = v58;
          sub_24A715CBC(v58, v57, v60, v59, v61);
          sub_24A715CBC(v62, v63, v88, v65, v66);
          v91 = v90;
          v92 = v165;
          v93 = v156;
          sub_24A715CBC(v91, v165, v87, v156, v89);
          sub_24A7171DC(v62, v63, v88, v157, v66);

          v94 = v161;
          v95 = v92;
          v96 = v87;
          v97 = v93;
          v98 = v89;
LABEL_41:
          sub_24A7171DC(v94, v95, v96, v97, v98);
          v49 = v162;
LABEL_42:
          v46 = v160;
          goto LABEL_25;
        }

        v163 = v66;
        if (v57 == v63 && v60 == v64)
        {
          v72 = v57;
          v73 = v60;
          v156 = v59;
          v74 = v61;
          v75 = v58;
          sub_24A715CBC(v58, v57, v60, v59, v61);
          v76 = v157;
          v77 = v163;
          sub_24A715CBC(v75, v72, v73, v157, v163);
          sub_24A715CBC(v75, v72, v73, v156, v74);
          sub_24A7171DC(v75, v72, v73, v76, v77);

          v78 = v73;
          v79 = v72;
          v80 = v156;
LABEL_44:
          sub_24A7171DC(v75, v79, v78, v80, v74);
          v46 = v160;
          goto LABEL_45;
        }

        v104 = v57;
        v105 = v63;
        v106 = v60;
        v149 = v63;
        v107 = v59;
        v108 = v64;
        v159 = v64;
        v155 = v61;
        v109 = v58;
        LODWORD(v158) = sub_24A82DC04();
        v110 = v104;
        v111 = v106;
        v112 = v106;
        v113 = v155;
        sub_24A715CBC(v109, v110, v112, v107, v155);
        v114 = v105;
        v115 = v108;
        v116 = v157;
        v117 = v163;
        sub_24A715CBC(v109, v114, v115, v157, v163);
        sub_24A715CBC(v109, v165, v111, v107, v113);
        sub_24A7171DC(v109, v149, v159, v116, v117);

        sub_24A7171DC(v109, v165, v111, v107, v113);
        v49 = v162;
        v46 = v160;
        if ((v158 & 1) == 0)
        {
          goto LABEL_25;
        }

LABEL_45:
        v99 = *(v148 + 48);
        v100 = v147;
        sub_24A67E964(v46 + *(v154 + 24), v147, &qword_27EF5D360, &unk_24A836200);
        sub_24A67E964(v164 + v151, v100 + v99, &qword_27EF5D360, &unk_24A836200);
        v101 = v153;
        v102 = v150;
        if (v150(v100, 1, v153) == 1)
        {
          v55 = v102(v100 + v99, 1, v101) == 1;
          v49 = v162;
          v56 = v100;
          if (v55)
          {
            sub_24A67F378(v100, &qword_27EF5D360, &unk_24A836200);
LABEL_78:
            sub_24A7F09C0(v46, type metadata accessor for FMIPDiscoveredAccessory);
            result = sub_24A7F09C0(v164, type metadata accessor for FMIPDiscoveredAccessory);
            v133 = v137[v53];
            v137[v53] = v133 & ~v54;
            v55 = (v133 & v54) == 0;
            a5 = v141;
            v10 = v153;
            if (!v55)
            {
              v28 = v136 - 1;
              if (__OFSUB__(v136, 1))
              {
                goto LABEL_85;
              }

              if (v136 == 1)
              {
                return MEMORY[0x277D84FA0];
              }

              goto LABEL_2;
            }

            goto LABEL_4;
          }

          goto LABEL_24;
        }

        v103 = v145;
        sub_24A67E964(v100, v145, &qword_27EF5D360, &unk_24A836200);
        if (v102(v100 + v99, 1, v101) == 1)
        {
          sub_24A7F09C0(v103, type metadata accessor for FMIPHawkeyeProductInformation);
          v46 = v160;
          v49 = v162;
          v56 = v100;
LABEL_24:
          sub_24A67F378(v56, &qword_27EF5D428, &qword_24A832720);
          goto LABEL_25;
        }

        v118 = v100 + v99;
        v119 = v139;
        sub_24A7F0958(v118, v139, type metadata accessor for FMIPHawkeyeProductInformation);
        v49 = v162;
        if (*v103 != *v119 || *(v103 + 8) != *(v119 + 8) || (*(v103 + 16) != *(v119 + 16) || *(v103 + 24) != *(v119 + 24)) && (v120 = sub_24A82DC04(), v103 = v145, (v120 & 1) == 0) || (*(v103 + 32) != *(v119 + 32) || *(v103 + 40) != *(v119 + 40)) && (v121 = sub_24A82DC04(), v103 = v145, (v121 & 1) == 0))
        {
LABEL_75:
          sub_24A7F09C0(v119, type metadata accessor for FMIPHawkeyeProductInformation);
          sub_24A7F09C0(v103, type metadata accessor for FMIPHawkeyeProductInformation);
          sub_24A67F378(v100, &qword_27EF5D360, &unk_24A836200);
          goto LABEL_42;
        }

        v122 = *(v103 + 56);
        v123 = *(v119 + 56);
        if (v122)
        {
          if (!v123)
          {
            goto LABEL_75;
          }

          if (*(v103 + 48) != *(v119 + 48) || v122 != v123)
          {
            v124 = sub_24A82DC04();
            v103 = v145;
            if ((v124 & 1) == 0)
            {
              goto LABEL_75;
            }
          }
        }

        else if (v123)
        {
          goto LABEL_75;
        }

        if (*(v103 + 64) != *(v119 + 64))
        {
          goto LABEL_75;
        }

        if (*(v103 + 72) != *(v119 + 72))
        {
          goto LABEL_75;
        }

        if (*(v103 + 73) != *(v119 + 73))
        {
          goto LABEL_75;
        }

        v125 = sub_24A82C874();
        v103 = v145;
        if ((v125 & 1) == 0)
        {
          goto LABEL_75;
        }

        v126 = sub_24A82C874();
        v103 = v145;
        if ((v126 & 1) == 0)
        {
          goto LABEL_75;
        }

        v127 = sub_24A82C874();
        v103 = v145;
        if ((v127 & 1) == 0)
        {
          goto LABEL_75;
        }

        v128 = sub_24A82C874();
        v103 = v145;
        if ((v128 & 1) == 0)
        {
          goto LABEL_75;
        }

        v129 = sub_24A82C874();
        v103 = v145;
        if ((v129 & 1) == 0)
        {
          goto LABEL_75;
        }

        v130 = sub_24A82C874();
        v131 = v119;
        v132 = v130;
        sub_24A7F09C0(v131, type metadata accessor for FMIPHawkeyeProductInformation);
        sub_24A7F09C0(v103, type metadata accessor for FMIPHawkeyeProductInformation);
        sub_24A67F378(v100, &qword_27EF5D360, &unk_24A836200);
        v46 = v160;
        if (v132)
        {
          goto LABEL_78;
        }

LABEL_25:
        sub_24A7F09C0(v46, type metadata accessor for FMIPDiscoveredAccessory);
        v52 = (v52 + 1) & v166;
        v53 = v52 >> 6;
        v54 = 1 << v52;
        if ((*(v169 + 8 * (v52 >> 6)) & (1 << v52)) == 0)
        {
          goto LABEL_3;
        }
      }

      v158 = 0;
      v155 = v53;
      v161 = v58;
      v165 = v57;
      v81 = v59;
      v82 = v64;
      v83 = v61;
      sub_24A715CBC(v58, v57, 0, v59, v61);
      if (v82)
      {
        v159 = v82;
        v163 = v66;
        sub_24A715CBC(v62, v63, v82, v65, v66);
        v84 = v165;
        v85 = v161;
        v86 = v158;
LABEL_40:
        sub_24A7171DC(v85, v84, v86, v81, v83);
        v94 = v62;
        v95 = v63;
        v96 = v159;
        v97 = v65;
        v98 = v163;
        goto LABEL_41;
      }

      sub_24A715CBC(v62, v63, 0, v65, v66);
      v78 = 0;
      v80 = v81;
      v53 = v155;
      v79 = v165;
      v74 = v83;
      v75 = v161;
      goto LABEL_44;
    }

    break;
  }

  v36 = (v33 + 64) >> 6;
  if (v36 <= v32 + 1)
  {
    v37 = v32 + 1;
  }

  else
  {
    v37 = (v33 + 64) >> 6;
  }

  v38 = v37 - 1;
  while (1)
  {
    v35 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v35 >= v36)
    {
      v39 = 0;
      v41 = 1;
      v40 = v144;
      goto LABEL_14;
    }

    v34 = *(v31 + 8 * v35);
    ++v32;
    if (v34)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_85:
  __break(1u);
  return result;
}

uint64_t sub_24A7EF590(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v81 = a2;
  v78 = type metadata accessor for FMIPUnknownItemUTMetadata(0);
  v9 = *(v78 - 8);
  MEMORY[0x28223BE20](v78 - 8);
  v75 = (&v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_24A6BBA94(&qword_27EF5E520, &qword_24A8384B0);
  MEMORY[0x28223BE20](v11 - 8);
  v77 = (&v73 - v12);
  v76 = sub_24A6BBA94(&qword_27EF5E768, &qword_24A83F520);
  MEMORY[0x28223BE20](v76);
  v80 = &v73 - v13;
  v14 = sub_24A6BBA94(&qword_27EF5F480, &qword_24A83F528);
  MEMORY[0x28223BE20](v14 - 8);
  v87 = &v73 - v15;
  v16 = type metadata accessor for FMIPUnknownItem(0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v93 = &v73 - v20;
  v21 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v82 = v21 - 1;
  v83 = a1;
  v88 = v22;
  v85 = (v22 + 48);
  v86 = (v22 + 56);
  v90 = a3 + 56;
  v91 = a3;
  v84 = a5;
  v79 = (v9 + 48);
  do
  {
    while (1)
    {
LABEL_3:
      v24 = *a5;
      v23 = a5[1];
      v26 = a5[2];
      v25 = a5[3];
      v27 = a5[4];
      v89 = v26;
      if (v27)
      {
        v28 = v25;
LABEL_12:
        v32 = (v27 - 1) & v27;
        v33 = v87;
        sub_24A7F08F0(*(v24 + 48) + *(v88 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v87, type metadata accessor for FMIPUnknownItem);
        v34 = 0;
        v31 = v28;
      }

      else
      {
        v29 = (v26 + 64) >> 6;
        v30 = v29 <= v25 + 1 ? v25 + 1 : (v26 + 64) >> 6;
        v31 = v30 - 1;
        while (1)
        {
          v28 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            __break(1u);
            return MEMORY[0x277D84FA0];
          }

          if (v28 >= v29)
          {
            break;
          }

          v27 = *(v23 + 8 * v28);
          ++v25;
          if (v27)
          {
            goto LABEL_12;
          }
        }

        v32 = 0;
        v34 = 1;
        v33 = v87;
      }

      (*v86)(v33, v34, 1, v16);
      *a5 = v24;
      a5[1] = v23;
      a5[2] = v89;
      a5[3] = v31;
      a5[4] = v32;
      if ((*v85)(v33, 1, v16) == 1)
      {
        sub_24A67F378(v33, &qword_27EF5F480, &qword_24A83F528);
        v72 = v91;

        return sub_24A7F048C(v83, v81, v82, v72);
      }

      v35 = v93;
      sub_24A7F0958(v33, v93, type metadata accessor for FMIPUnknownItem);
      v36 = v91;
      sub_24A82DCC4();
      FMIPUnknownItem.hash(into:)(v92);
      v37 = sub_24A82DD24();
      v38 = -1 << *(v36 + 32);
      v39 = v37 & ~v38;
      v40 = v39 >> 6;
      v41 = 1 << v39;
      if (((1 << v39) & *(v90 + 8 * (v39 >> 6))) != 0)
      {
        break;
      }

LABEL_2:
      sub_24A7F09C0(v93, type metadata accessor for FMIPUnknownItem);
      a5 = v84;
    }

    v42 = ~v38;
    v43 = *(v35 + v16[15]);
    v44 = *(v88 + 72);
    while (1)
    {
      sub_24A7F08F0(*(v91 + 48) + v44 * v39, v19, type metadata accessor for FMIPUnknownItem);
      if (v19[v16[15]] != v43 || *&v19[v16[13]] != *(v93 + v16[13]))
      {
        goto LABEL_51;
      }

      v45 = v16[6];
      v46 = &v19[v45];
      v47 = *&v19[v45 + 8];
      v48 = (v93 + v45);
      v49 = v48[1];
      if (v47)
      {
        if (!v49)
        {
          goto LABEL_51;
        }

        v50 = *v46 == *v48 && v47 == v49;
        if (!v50 && (sub_24A82DC04() & 1) == 0)
        {
          goto LABEL_51;
        }
      }

      else if (v49)
      {
        goto LABEL_51;
      }

      if ((sub_24A82CA74() & 1) == 0 || v19[v16[16]] != *(v93 + v16[16]) || v19[v16[7]] != *(v93 + v16[7]) || (sub_24A7D8828(*&v19[v16[8]], *(v93 + v16[8])) & 1) == 0)
      {
        goto LABEL_51;
      }

      v51 = v16[5];
      v52 = *&v19[v51];
      v53 = *&v19[v51 + 8];
      v54 = (v93 + v51);
      if ((v52 != *v54 || v53 != v54[1]) && (sub_24A82DC04() & 1) == 0)
      {
        goto LABEL_51;
      }

      if (!_s8FMIPCore15FMIPProductTypeO2eeoiySbAC_ACtFZ_0(&v19[v16[9]], v93 + v16[9]) || v19[v16[10]] != *(v93 + v16[10]) || *&v19[v16[14]] != *(v93 + v16[14]))
      {
        goto LABEL_51;
      }

      v55 = v16[12];
      v56 = *(v93 + v55);
      if (*&v19[v55])
      {
        if (!v56)
        {
          goto LABEL_51;
        }

        v74 = *&v19[v55];
        v89 = sub_24A679170(0, &qword_27EF5DF78, 0x277D496E0);
        v73 = v56;
        v74 = v74;
        v57 = sub_24A82D5E4();

        if ((v57 & 1) == 0)
        {
          goto LABEL_51;
        }
      }

      else if (v56)
      {
        goto LABEL_51;
      }

      v74 = v16[11];
      v89 = *(v76 + 48);
      v58 = v80;
      sub_24A67E964(v74 + v19, v80, &qword_27EF5E520, &qword_24A8384B0);
      sub_24A67E964(v74 + v93, v58 + v89, &qword_27EF5E520, &qword_24A8384B0);
      v59 = v58;
      v60 = v78;
      v74 = *v79;
      if ((v74)(v59, 1, v78) == 1)
      {
        break;
      }

      v61 = v80;
      sub_24A67E964(v80, v77, &qword_27EF5E520, &qword_24A8384B0);
      v62 = v61 + v89;
      v63 = v89;
      if ((v74)(v62, 1, v78) == 1)
      {
        sub_24A7F09C0(v77, type metadata accessor for FMIPUnknownItemUTMetadata);
        goto LABEL_47;
      }

      v64 = v80 + v63;
      v65 = v75;
      sub_24A7F0958(v64, v75, type metadata accessor for FMIPUnknownItemUTMetadata);
      LODWORD(v89) = _s8FMIPCore25FMIPUnknownItemUTMetadataV2eeoiySbAC_ACtFZ_0(v77, v65);
      sub_24A7F09C0(v65, type metadata accessor for FMIPUnknownItemUTMetadata);
      sub_24A7F09C0(v77, type metadata accessor for FMIPUnknownItemUTMetadata);
      sub_24A67F378(v80, &qword_27EF5E520, &qword_24A8384B0);
      if (v89)
      {
        goto LABEL_49;
      }

LABEL_51:
      sub_24A7F09C0(v19, type metadata accessor for FMIPUnknownItem);
LABEL_52:
      v39 = (v39 + 1) & v42;
      v40 = v39 >> 6;
      v41 = 1 << v39;
      if ((*(v90 + 8 * (v39 >> 6)) & (1 << v39)) == 0)
      {
        goto LABEL_2;
      }
    }

    if ((v74)(v80 + v89, 1, v60) != 1)
    {
LABEL_47:
      sub_24A67F378(v80, &qword_27EF5E768, &qword_24A83F520);
      goto LABEL_51;
    }

    sub_24A67F378(v80, &qword_27EF5E520, &qword_24A8384B0);
LABEL_49:
    if (v19[v16[17]] != *(v93 + v16[17]) || v19[v16[18]] != *(v93 + v16[18]))
    {
      goto LABEL_51;
    }

    v66 = v16[19];
    v67 = *&v19[v66];
    v68 = *(v93 + v66);
    sub_24A7F09C0(v19, type metadata accessor for FMIPUnknownItem);
    if (v67 != v68)
    {
      goto LABEL_52;
    }

    result = sub_24A7F09C0(v93, type metadata accessor for FMIPUnknownItem);
    a5 = v84;
    v70 = v83[v40];
    v83[v40] = v70 & ~v41;
  }

  while ((v70 & v41) == 0);
  if (!__OFSUB__(v82--, 1))
  {
    a5 = v84;
    if (!v82)
    {
      return MEMORY[0x277D84FA0];
    }

    goto LABEL_3;
  }

  __break(1u);
  return result;
}

uint64_t sub_24A7EFFA8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for FMIPHawkeyeProductInformation(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24A6BBA94(&qword_27EF5D360, &unk_24A836200);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v39 - v13;
  v15 = type metadata accessor for FMIPDiscoveredAccessory(0);
  v46 = *(v15 - 8);
  v47 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = (v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  v42 = v14;
  sub_24A6BBA94(&qword_27EF5DD88, &qword_24A836148);
  result = sub_24A82D814();
  v18 = result;
  v39[0] = v11;
  if (a2 < 1)
  {
    v20 = 0;
  }

  else
  {
    v20 = *a1;
  }

  v21 = 0;
  v40 = (v9 + 48);
  v41 = result;
  v22 = result + 56;
  v44 = a2;
  v45 = a4;
  v43 = a1;
  while (v20)
  {
    v23 = __clz(__rbit64(v20));
    v48 = (v20 - 1) & v20;
LABEL_16:
    v26 = *(a4 + 48);
    v49 = *(v46 + 72);
    sub_24A7F08F0(v26 + v49 * (v23 | (v21 << 6)), v17, type metadata accessor for FMIPDiscoveredAccessory);
    sub_24A82DCC4();
    sub_24A82D5F4();
    if (v17[3])
    {
      v39[1] = v17[5];
      v27 = v17[1];
      sub_24A82DCE4();
      MEMORY[0x24C21D5E0](v27);
      sub_24A82D094();
      sub_24A82D094();
    }

    else
    {
      sub_24A82DCE4();
    }

    v28 = v42;
    sub_24A67E964(v17 + *(v47 + 24), v42, &qword_27EF5D360, &unk_24A836200);
    if ((*v40)(v28, 1, v8) == 1)
    {
      sub_24A82DCE4();
    }

    else
    {
      v29 = v39[0];
      sub_24A7F0958(v28, v39[0], type metadata accessor for FMIPHawkeyeProductInformation);
      sub_24A82DCE4();
      FMIPHawkeyeProductInformation.hash(into:)(v50);
      sub_24A7F09C0(v29, type metadata accessor for FMIPHawkeyeProductInformation);
    }

    a2 = v44;
    a4 = v45;
    a1 = v43;
    result = sub_24A82DD24();
    v18 = v41;
    v30 = -1 << *(v41 + 32);
    v31 = result & ~v30;
    v32 = v31 >> 6;
    if (((-1 << v31) & ~*(v22 + 8 * (v31 >> 6))) == 0)
    {
      v34 = 0;
      v35 = (63 - v30) >> 6;
      while (++v32 != v35 || (v34 & 1) == 0)
      {
        v36 = v32 == v35;
        if (v32 == v35)
        {
          v32 = 0;
        }

        v34 |= v36;
        v37 = *(v22 + 8 * v32);
        if (v37 != -1)
        {
          v33 = __clz(__rbit64(~v37)) + (v32 << 6);
          goto LABEL_32;
        }
      }

      goto LABEL_37;
    }

    v33 = __clz(__rbit64((-1 << v31) & ~*(v22 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_32:
    *(v22 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
    result = sub_24A7F0958(v17, *(v18 + 48) + v33 * v49, type metadata accessor for FMIPDiscoveredAccessory);
    ++*(v18 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_38;
    }

    v20 = v48;
    if (!a3)
    {
LABEL_34:

      return v18;
    }
  }

  v24 = v21;
  while (1)
  {
    v21 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v21 >= a2)
    {
      goto LABEL_34;
    }

    v25 = a1[v21];
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v48 = (v25 - 1) & v25;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_24A7F048C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for FMIPUnknownItem(0);
  v26 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_24A6BBA94(&qword_27EF5DD78, &unk_24A83F530);
  result = sub_24A82D814();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v25 = result + 56;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_16:
    v18 = a4;
    v19 = *(a4 + 48);
    v20 = *(v26 + 72);
    sub_24A7F08F0(v19 + v20 * (v15 | (v14 << 6)), v10, type metadata accessor for FMIPUnknownItem);
    sub_24A82DCC4();
    FMIPUnknownItem.hash(into:)(v27);
    sub_24A82DD24();
    v21 = v25;
    v22 = sub_24A82D6E4();
    *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = sub_24A7F0958(v10, *(v11 + 48) + v22 * v20, type metadata accessor for FMIPUnknownItem);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_21;
    }

    a4 = v18;
    if (!a3)
    {
LABEL_18:

      return v11;
    }
  }

  v16 = v14;
  while (1)
  {
    v14 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_18;
    }

    v17 = a1[v14];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v13 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_24A7F06EC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_24A6BBA94(&qword_27EF5DDA0, &unk_24A83F550);
  result = sub_24A82D814();
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
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_24A82D5D4();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

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
      v10 = (v15 - 1) & v15;
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

uint64_t sub_24A7F08F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A7F0958(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A7F09C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A7F0AF0()
{
  v0 = sub_24A82C8B4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A6B24E4();
  sub_24A82C854();
  return (*(v1 + 8))(v3, v0);
}

void *FMIPItemImageCache.__allocating_init(converter:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_24A67ABB0(a1, a2);

  return v4;
}

uint64_t FMIPItemImageCache.__deallocating_deinit()
{
  FMImageCache.deinit();

  return swift_deallocClassInstance();
}

uint64_t FMIPSiriBaseResponseError.hashValue.getter()
{
  v1 = *v0;
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](v1);
  return sub_24A82DD24();
}

uint64_t FMIPSiriSyncDeviceData.pushToken.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FMIPSiriOwnerDevices.ownerFirstName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FMIPSiriOwnerDevices.ownerLastName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FMIPSiriController.__allocating_init()()
{
  v0 = sub_24A6BBA94(&qword_27EF5E458, &unk_24A83CCD0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_24A82CB94();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  type metadata accessor for FMIPSiriController();
  v4 = swift_allocObject();
  sub_24A7F0E88(v2);
  return v4;
}

void *sub_24A7F0E88(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24A6BBA94(&qword_27EF5E458, &unk_24A83CCD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  *(v1 + 16) = 0xD000000000000028;
  *(v1 + 24) = 0x800000024A84A520;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v7 = sub_24A82CDC4();
  sub_24A6797D0(v7, qword_281518F88);
  v8 = sub_24A82CD94();
  v9 = sub_24A82D504();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_24A675000, v8, v9, "FMIPSiriController: initialized", v10, 2u);
    MEMORY[0x24C21E1D0](v10, -1, -1);
  }

  sub_24A82CBB4();
  swift_allocObject();
  sub_24A82CBA4();
  sub_24A7F2310(a1, v6);
  sub_24A82CC34();
  swift_allocObject();
  *(v2 + 32) = sub_24A82CC24();
  v11 = sub_24A82CBD4();

  v12 = sub_24A82CBC4();
  v16 = v11;
  v17 = MEMORY[0x277D07D18];
  *&v15 = v12;
  sub_24A67F378(a1, &qword_27EF5E458, &unk_24A83CCD0);
  sub_24A696E80(&v15, v2 + 40);
  return v2;
}

uint64_t sub_24A7F10A0(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = v2;
  sub_24A67DF6C((v2 + 40), *(v2 + 64));

  sub_24A82CB84();
}

void sub_24A7F1154(void *a1, uint64_t a2, char a3, void (*a4)(void **), uint64_t a5)
{
  if (a3)
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v9 = sub_24A82CDC4();
    sub_24A6797D0(v9, qword_281518F88);
    v10 = a1;
    v11 = sub_24A82CD94();
    v12 = sub_24A82D4E4();
    sub_24A7F22B0(a1, a2, 1);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21 = v14;
      *v13 = 136315138;
      v15 = a1;
      sub_24A6BBA94(&qword_27EF5CF40, &unk_24A836A70);
      v16 = sub_24A82D024();
      v18 = sub_24A68761C(v16, v17, &v21);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_24A675000, v11, v12, "FMIPSiriController topic token resulted in a failure of %s", v13, 0xCu);
      sub_24A6876E8(v14);
      MEMORY[0x24C21E1D0](v14, -1, -1);
      MEMORY[0x24C21E1D0](v13, -1, -1);
    }

    v22 = 0;
    v23 = 0;
    v21 = a1;
    v24 = 1;
    v19 = a1;
    a4(&v21);
    sub_24A7F22C0(v21, v22, v23, v24);
  }

  else
  {
    v20 = swift_allocObject();
    v20[2] = a1;
    v20[3] = a2;
    v20[4] = a4;
    v20[5] = a5;
    sub_24A7F22A0(a1, a2, 0);

    sub_24A7F1694(a1, a2, sub_24A7F2294, v20);
  }
}

void sub_24A7F13CC(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void *, __n128))
{
  v4 = a4;
  v5 = *(a1 + 72);
  if (v5)
  {
    v6 = *a1;
    v7 = *a1;
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v8 = a3;
    v6 = a2;
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v12 = MEMORY[0x277D84F90];
    if (v11)
    {
      v29 = *(a1 + 72);
      v40[0] = MEMORY[0x277D84F90];
      sub_24A6FCC5C(0, v11, 0);
      v13 = 0;
      v9 = v40[0];
      v33 = v11;
      v34 = v10 + 32;
      v14 = v11;
      do
      {
        v15 = (v34 + 40 * v13);
        v16 = *v15;
        v38 = v15[2];
        v39 = v15[1];
        v17 = v15[4];
        v18 = *(v17 + 16);
        v37 = v15[3];
        if (v18)
        {
          v35 = *v15;
          v36 = v9;

          sub_24A6FC900(0, v18, 0);
          v19 = v12;
          v20 = (v17 + 40);
          do
          {
            v22 = *(v20 - 1);
            v21 = *v20;
            v24 = *(v19 + 16);
            v23 = *(v19 + 24);

            if (v24 >= v23 >> 1)
            {
              sub_24A6FC900((v23 > 1), v24 + 1, 1);
            }

            *(v19 + 16) = v24 + 1;
            v25 = v19 + 16 * v24;
            *(v25 + 32) = v22;
            *(v25 + 40) = v21;
            v20 += 2;
            --v18;
          }

          while (v18);

          v16 = v35;
          v9 = v36;
          v12 = MEMORY[0x277D84F90];
          v14 = v33;
        }

        else
        {

          v19 = v12;
        }

        v40[0] = v9;
        v27 = *(v9 + 16);
        v26 = *(v9 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_24A6FCC5C((v26 > 1), v27 + 1, 1);
          v9 = v40[0];
        }

        ++v13;
        *(v9 + 16) = v27 + 1;
        v28 = (v9 + 40 * v27);
        v28[4] = v38;
        v28[5] = v37;
        v28[6] = v16;
        v28[7] = v39;
        v28[8] = v19;
      }

      while (v13 != v14);
      v4 = a4;
      v8 = a3;
      v6 = a2;
      v5 = v29;
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
    }
  }

  v40[0] = v6;
  v40[1] = v8;
  v40[2] = v9;
  v41 = v5 & 1;
  v4(v40);

  sub_24A7F22C0(v6, v8, v9, v5 & 1);
}

uint64_t sub_24A7F1694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for FMIPSyncDeviceRequest(0);
  swift_allocObject();

  v11 = sub_24A7AD434(0x69766544636E7973, 0xEA00000000006563, a1, a2);
  v18[3] = v10;
  v18[4] = MEMORY[0x277D07D08];
  v18[0] = v11;
  v17[3] = v10;
  v17[4] = sub_24A7F2080();
  v12 = objc_opt_self();
  swift_retain_n();
  v13 = [v12 processInfo];
  v14 = [v13 processName];

  sub_24A82CFC4();
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = v5;

  sub_24A82CC14();

  sub_24A6876E8(v17);
  return sub_24A6876E8(v18);
}

__n128 sub_24A7F1844@<Q0>(id a1@<X2>, uint64_t a2@<X0>, unint64_t a3@<X1>, uint64_t a4@<X8>)
{
  if (a1)
  {
    v6 = a1;
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v7 = sub_24A82CDC4();
    sub_24A6797D0(v7, qword_281518F88);
    v8 = a1;
    v9 = sub_24A82CD94();
    v10 = sub_24A82D4E4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *&v47 = v12;
      *v11 = 136315138;
      swift_getErrorValue();
      v13 = sub_24A82DC74();
      v15 = sub_24A68761C(v13, v14, &v47);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_24A675000, v9, v10, "FMIPSiriController: didn't complete because of error: %s", v11, 0xCu);
      sub_24A6876E8(v12);
      MEMORY[0x24C21E1D0](v12, -1, -1);
      MEMORY[0x24C21E1D0](v11, -1, -1);
    }

    LOBYTE(v47) = 1;
    *a4 = a1;
LABEL_22:
    *(a4 + 72) = 1;
    return result;
  }

  if (a3 >> 60 == 15)
  {
    goto LABEL_17;
  }

  v17 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v17 != 2)
    {
LABEL_15:
      sub_24A67E8E8(a2, a3);
      goto LABEL_17;
    }

    if (*(a2 + 16) != *(a2 + 24))
    {
      goto LABEL_23;
    }

LABEL_17:
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v18 = sub_24A82CDC4();
    sub_24A6797D0(v18, qword_281518F88);
    v19 = sub_24A82CD94();
    v20 = sub_24A82D4E4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_24A675000, v19, v20, "FMIPSiriController: received empty data", v21, 2u);
      MEMORY[0x24C21E1D0](v21, -1, -1);
    }

    sub_24A7F213C();
    v22 = swift_allocError();
    *v23 = 1;
    *a4 = v22;
    goto LABEL_22;
  }

  if (v17)
  {
    if (a2 == a2 >> 32)
    {
      goto LABEL_17;
    }

LABEL_23:
    v24 = a2;
    v25 = a3;
    sub_24A7C6480(a2, a3);
    a2 = v24;
    a3 = v25;
    goto LABEL_24;
  }

  if ((a3 & 0xFF000000000000) == 0)
  {
    goto LABEL_15;
  }

LABEL_24:
  v26 = a2;
  v27 = a3;
  sub_24A82C574();
  swift_allocObject();
  sub_24A82C564();
  sub_24A7F2190();
  v28 = v26;
  v29 = v27;
  sub_24A82C554();

  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v30 = sub_24A82CDC4();
  sub_24A6797D0(v30, qword_281518F88);
  v43 = v48;
  v44 = v49;
  v45 = v50;
  v46 = v51;
  v42 = v47;
  sub_24A7F21E4(&v42, v40);
  sub_24A7F21E4(&v42, v40);
  v31 = sub_24A82CD94();
  v32 = sub_24A82D504();
  sub_24A7F2240(&v42);
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v39 = v34;
    *v33 = 136315138;
    v40[2] = v44;
    v40[3] = v45;
    v41 = v46;
    v40[0] = v42;
    v40[1] = v43;
    v35 = sub_24A82D024();
    v37 = sub_24A68761C(v35, v36, &v39);

    *(v33 + 4) = v37;
    _os_log_impl(&dword_24A675000, v31, v32, "FMIPSiriController: received response?: %s", v33, 0xCu);
    sub_24A6876E8(v34);
    MEMORY[0x24C21E1D0](v34, -1, -1);
    MEMORY[0x24C21E1D0](v33, -1, -1);
  }

  else
  {
    sub_24A7F2240(&v42);
  }

  sub_24A67E8E8(v28, v29);

  v38 = v50;
  *(a4 + 32) = v49;
  *(a4 + 48) = v38;
  *(a4 + 64) = v51;
  result = v48;
  *a4 = v47;
  *(a4 + 16) = result;
  *(a4 + 72) = 0;
  return result;
}

void *FMIPSiriController.deinit()
{

  sub_24A6876E8((v0 + 40));
  return v0;
}

uint64_t FMIPSiriController.__deallocating_deinit()
{

  sub_24A6876E8((v0 + 40));

  return swift_deallocClassInstance();
}

unint64_t sub_24A7F1F0C()
{
  result = qword_27EF5F510;
  if (!qword_27EF5F510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F510);
  }

  return result;
}

uint64_t sub_24A7F1F80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_24A7F1FC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24A7F2080()
{
  result = qword_281514E08[0];
  if (!qword_281514E08[0])
  {
    type metadata accessor for FMIPSyncDeviceRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_281514E08);
  }

  return result;
}

uint64_t sub_24A7F20D8(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = *(v3 + 16);
  v5 = sub_24A7F1844(a3, a1, a2, v7);
  v4(v7, v5);
  return sub_24A67F378(v7, &qword_27EF5F518, qword_24A83F768);
}

unint64_t sub_24A7F213C()
{
  result = qword_27EF5F520;
  if (!qword_27EF5F520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F520);
  }

  return result;
}

unint64_t sub_24A7F2190()
{
  result = qword_281514DB0;
  if (!qword_281514DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514DB0);
  }

  return result;
}

double sub_24A7F22A0(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = a1;
  }

  else
  {
  }

  return result;
}

void sub_24A7F22B0(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_24A7F22C0(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

uint64_t sub_24A7F2310(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&qword_27EF5E458, &unk_24A83CCD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for FMIPRemoveRequest(uint64_t a1)
{
  result = qword_27EF5F528;
  if (!qword_27EF5F528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A7F241C()
{
  v1 = v0;
  v2 = (*(v0 + qword_27EF78F98) + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device);
  v4 = *v2;
  v3 = v2[1];
  v12 = MEMORY[0x277D837D0];
  *&v11 = v4;
  *(&v11 + 1) = v3;
  v5 = qword_27EF5D920;
  v6 = *(v0 + qword_27EF5D920);

  os_unfair_lock_lock(v6 + 6);

  os_unfair_lock_unlock(v6 + 6);

  sub_24A6A50DC(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6A4F8C(v10, 0x656369766564, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  v8 = *(v1 + v5);

  os_unfair_lock_lock((v8 + 24));
  sub_24A6A3D28((v8 + 16));
  os_unfair_lock_unlock((v8 + 24));
}

uint64_t sub_24A7F2554()
{
  sub_24A6F8F90();

  return swift_deallocClassInstance();
}

void sub_24A7F26B4(char a1)
{
  v3 = sub_24A82CF94();
  [v1 willChangeValueForKey_];

  *(v1 + OBJC_IVAR____TtC8FMIPCore27FMIPItemImageCacheOperation__isFinished) = a1;
  v4 = sub_24A82CF94();
  [v1 didChangeValueForKey_];
}

id FMIPItemImageCacheOperation.__allocating_init(request:completion:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = *a1;
  v9 = a1[1];
  v10 = *(a1 + 16);
  v11 = a1[3];
  v12 = *(a1 + 2);
  v13 = a1[6];
  v7[OBJC_IVAR____TtC8FMIPCore27FMIPItemImageCacheOperation__isFinished] = 0;
  v14 = &v7[OBJC_IVAR____TtC8FMIPCore27FMIPItemImageCacheOperation_request];
  *v14 = v8;
  *(v14 + 1) = v9;
  v14[16] = v10;
  *(v14 + 3) = v11;
  *(v14 + 2) = v12;
  *(v14 + 6) = v13;
  v15 = &v7[OBJC_IVAR____TtC8FMIPCore27FMIPItemImageCacheOperation_completion];
  *v15 = a2;
  v15[1] = a3;
  v17.receiver = v7;
  v17.super_class = v3;
  return objc_msgSendSuper2(&v17, sel_init);
}

id FMIPItemImageCacheOperation.init(request:completion:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = a1[3];
  v8 = *(a1 + 2);
  v9 = a1[6];
  v3[OBJC_IVAR____TtC8FMIPCore27FMIPItemImageCacheOperation__isFinished] = 0;
  v10 = &v3[OBJC_IVAR____TtC8FMIPCore27FMIPItemImageCacheOperation_request];
  *v10 = v4;
  *(v10 + 1) = v5;
  v10[16] = v6;
  *(v10 + 3) = v7;
  *(v10 + 2) = v8;
  *(v10 + 6) = v9;
  v11 = &v3[OBJC_IVAR____TtC8FMIPCore27FMIPItemImageCacheOperation_completion];
  *v11 = a2;
  v11[1] = a3;
  v13.receiver = v3;
  v13.super_class = type metadata accessor for FMIPItemImageCacheOperation();
  return objc_msgSendSuper2(&v13, sel_init);
}

void sub_24A7F2898()
{
  if ([v0 isCancelled])
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v1 = sub_24A82CDC4();
    sub_24A6797D0(v1, qword_281518F88);
    oslog = sub_24A82CD94();
    v2 = sub_24A82D504();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_24A675000, oslog, v2, "FMItemImageCreationOperation: operation cancelled", v3, 2u);
      MEMORY[0x24C21E1D0](v3, -1, -1);
    }
  }
}

uint64_t sub_24A7F29EC()
{
  v1 = sub_24A82CDF4();
  v41 = *(v1 - 8);
  v42 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24A82CE54();
  v39 = *(v4 - 8);
  v40 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FMIPItemImageCacheOperation();
  v50.receiver = v0;
  v50.super_class = v7;
  objc_msgSendSuper2(&v50, sel_start);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v8 = sub_24A82CDC4();
  sub_24A6797D0(v8, qword_281518F88);
  v9 = v0;
  v10 = sub_24A82CD94();
  v11 = sub_24A82D504();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 136315138;
    v14 = *&v9[OBJC_IVAR____TtC8FMIPCore27FMIPItemImageCacheOperation_request];
    v15 = *&v9[OBJC_IVAR____TtC8FMIPCore27FMIPItemImageCacheOperation_request + 8];
    v16 = v9[OBJC_IVAR____TtC8FMIPCore27FMIPItemImageCacheOperation_request + 16];
    v17 = *&v9[OBJC_IVAR____TtC8FMIPCore27FMIPItemImageCacheOperation_request + 24];
    v18 = *&v9[OBJC_IVAR____TtC8FMIPCore27FMIPItemImageCacheOperation_request + 32];
    v19 = *&v9[OBJC_IVAR____TtC8FMIPCore27FMIPItemImageCacheOperation_request + 48];
    v43 = v13;
    aBlock = v14;
    v45 = v15;
    LOBYTE(v46) = v16;
    v47 = v17;
    v48 = v18;
    v49 = v19;
    v20 = FMIPItemImageCacheRequest.fileName.getter();
    v22 = sub_24A68761C(v20, v21, &v43);

    *(v12 + 4) = v22;
    _os_log_impl(&dword_24A675000, v10, v11, "FMItemImageCreationOperation: started for filename: %s", v12, 0xCu);
    sub_24A6876E8(v13);
    MEMORY[0x24C21E1D0](v13, -1, -1);
    MEMORY[0x24C21E1D0](v12, -1, -1);
  }

  v23 = *&v9[OBJC_IVAR____TtC8FMIPCore27FMIPItemImageCacheOperation_request + 8];
  v24 = v9[OBJC_IVAR____TtC8FMIPCore27FMIPItemImageCacheOperation_request + 16];
  v25 = *&v9[OBJC_IVAR____TtC8FMIPCore27FMIPItemImageCacheOperation_request + 24];
  v27 = *&v9[OBJC_IVAR____TtC8FMIPCore27FMIPItemImageCacheOperation_request + 32];
  v26 = *&v9[OBJC_IVAR____TtC8FMIPCore27FMIPItemImageCacheOperation_request + 40];
  v28 = *&v9[OBJC_IVAR____TtC8FMIPCore27FMIPItemImageCacheOperation_request + 48];
  aBlock = *&v9[OBJC_IVAR____TtC8FMIPCore27FMIPItemImageCacheOperation_request];
  v45 = v23;
  LOBYTE(v46) = v24;
  v47 = v25;
  *&v48 = v27;
  *(&v48 + 1) = v26;
  v49 = v28;

  v29 = v27;

  v30 = sub_24A7F3030(&aBlock);
  v32 = v31;

  sub_24A679170(0, &qword_2815146C0, 0x277D85C78);
  v33 = sub_24A82D564();
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v35 = swift_allocObject();
  v35[2] = v34;
  v35[3] = v30;
  v35[4] = v32;
  *&v48 = sub_24A7F3A00;
  *(&v48 + 1) = v35;
  aBlock = MEMORY[0x277D85DD0];
  v45 = 1107296256;
  v46 = sub_24A699BA0;
  v47 = &unk_285DCC650;
  v36 = _Block_copy(&aBlock);
  sub_24A7C6480(v30, v32);

  sub_24A82CE24();
  aBlock = MEMORY[0x277D84F90];
  sub_24A67A0FC(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A6F2828();
  v37 = v42;
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v6, v3, v36);
  _Block_release(v36);

  sub_24A67E8E8(v30, v32);
  (*(v41 + 8))(v3, v37);
  return (*(v39 + 8))(v6, v40);
}

void sub_24A7F2EC0(uint64_t a1, void *a2, unint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + OBJC_IVAR____TtC8FMIPCore27FMIPItemImageCacheOperation_completion);
    if (a3 >> 60 == 15)
    {
      sub_24A6D3FAC();
      v8 = swift_allocError();
      *v9 = 0;

      v7(v8, 0, 1);
    }

    else
    {
      sub_24A7C6480(a2, a3);

      v7(a2, a3, 0);

      sub_24A67E8E8(a2, a3);
    }

    [v6 setFinished_];
  }
}

size_t sub_24A7F3030(uint64_t *a1)
{
  v3 = sub_24A82CB34();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = 37.0;
  if (*(a1 + 16))
  {
    v9 = 66.0;
  }

  v10 = v9 * *(a1 + 3);
  if (COERCE_UNSIGNED_INT64(fabs(v10)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v29[1] = v1;
  v11 = *a1;
  v12 = a1[1];
  v13 = a1[4];
  v14 = v10;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v16 = sub_24A7F3A38(v14, v14, 0, DeviceRGB, 1u);

  if (!v16)
  {
    return 0;
  }

  v17 = v16;
  CGContextSetFillColorWithColor(v17, v13);
  v30.origin.x = 0.0;
  v30.origin.y = 0.0;
  v30.size.width = v14;
  v30.size.height = v14;
  CGContextAddEllipseInRect(v17, v30);
  (*(v4 + 104))(v7, *MEMORY[0x277CBF258], v3);
  sub_24A82D4A4();
  (*(v4 + 8))(v7, v3);
  v18 = 0.7;
  if (v8)
  {
    v18 = 0.6;
  }

  v19 = sub_24A7F3A58(v11, v12, v18 * v14);
  if (!v19)
  {
LABEL_20:

    return 0;
  }

  v20 = v19;
  result = CGImageGetWidth(v19);
  if (__OFSUB__(v14, result))
  {
    goto LABEL_26;
  }

  result = CGImageGetHeight(v20);
  if (!__OFSUB__(v14, result))
  {
    CGImageGetWidth(v20);
    CGImageGetHeight(v20);
    sub_24A82D494();
    Image = CGBitmapContextCreateImage(v17);
    if (Image)
    {
      v22 = Image;
      Mutable = CFDataCreateMutable(0, 0);
      if (Mutable)
      {
        v24 = Mutable;
        v25 = sub_24A82CF94();
        v26 = CGImageDestinationCreateWithData(v24, v25, 1uLL, 0);

        if (v26)
        {
          CGImageDestinationAddImage(v26, v22, 0);
          if (CGImageDestinationFinalize(v26))
          {
            v27 = v24;
            v28 = sub_24A82C904();

            return v28;
          }

          return 0;
        }
      }

      goto LABEL_20;
    }

    return 0;
  }

LABEL_27:
  __break(1u);
  return result;
}

CGImageRef sub_24A7F33D0()
{
  v1 = v0;
  v56 = *MEMORY[0x277D85DE8];
  Width = CGImageGetWidth(v0);
  Height = CGImageGetHeight(v1);
  v4 = CGImageGetWidth(v1);
  DeviceGray = CGColorSpaceCreateDeviceGray();
  v6 = sub_24A7F3A38(Width, Height, v4, DeviceGray, 7u);

  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  CGImageGetWidth(v1);
  CGImageGetHeight(v1);
  sub_24A82D494();

  Image = CGBitmapContextCreateImage(v7);
  if (!Image)
  {
    goto LABEL_49;
  }

  v9 = Image;
  v10 = CGImageGetDataProvider(Image);
  if (!v10)
  {
    goto LABEL_47;
  }

  v11 = v10;
  v12 = CGDataProviderCopyData(v10);
  if (!v12)
  {

    goto LABEL_49;
  }

  v13 = v12;
  v14 = sub_24A82C904();
  v16 = v15;

  v17 = CGImageGetWidth(v1);
  v18 = CGImageGetHeight(v1);
  v19 = CGImageGetHeight(v1);
  if ((v19 & 0x8000000000000000) != 0)
  {
    goto LABEL_65;
  }

  v46 = v18;
  v48 = v17;
  v40 = v11;
  v41 = v9;
  v42 = v7;
  if (!v19)
  {
    v45 = 0;
    v47 = 0;
LABEL_52:
    if (!__OFSUB__(v47, v48))
    {
      if (!__OFSUB__(v45, v46))
      {
        v57.origin.x = v48;
        v57.origin.y = v46;
        v57.size.width = &v47[-v48] + 1.0;
        v57.size.height = (v45 - v46) + 1.0;
        v39 = CGImageCreateWithImageInRect(v1, v57);

        sub_24A67E0F0(v14, v16);
        return v39;
      }

LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
    }

LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v43 = v19;
  v45 = 0;
  v47 = 0;
  v20 = 0;
  v21 = v16 >> 62;
  v49 = v1;
  while (1)
  {
    v22 = CGImageGetWidth(v1);
    if ((v22 & 0x8000000000000000) != 0)
    {
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v23 = v22;
    v24 = 0;
    v44 = v20 + 1;
    if (v22)
    {
      break;
    }

LABEL_8:
    ++v20;
    if (v44 == v43)
    {
      goto LABEL_52;
    }
  }

  while (1)
  {
    while (1)
    {
      if (v24 >= v23)
      {
        __break(1u);
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
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      v9 = (v24 + 1);
      if (__OFADD__(v24, 1))
      {
        goto LABEL_56;
      }

      v26 = CGImageGetWidth(v1);
      v27 = v26 * v20;
      if ((v26 * v20) >> 64 != (v26 * v20) >> 63)
      {
        goto LABEL_57;
      }

      v7 = v24 + v27;
      if (__OFADD__(v27, v24))
      {
        goto LABEL_58;
      }

      if (v21 <= 1)
      {
        break;
      }

      if (v21 != 2)
      {
        goto LABEL_68;
      }

      if (v7 < *(v14 + 16))
      {
        goto LABEL_60;
      }

      if (v7 >= *(v14 + 24))
      {
        goto LABEL_62;
      }

      v32 = sub_24A82C6D4();
      if (!v32)
      {
        goto LABEL_70;
      }

      v33 = v32;
      v34 = sub_24A82C6E4();
      v35 = v7 - v34;
      if (__OFSUB__(v7, v34))
      {
        goto LABEL_63;
      }

LABEL_12:
      v25 = *(v33 + v35);
      v1 = v49;
      v24 = (v24 + 1);
      if (!v25)
      {
        goto LABEL_13;
      }

LABEL_22:
      if (v24 - 1 >= v48)
      {
        v28 = v48;
      }

      else
      {
        v28 = v24 - 1;
      }

      v29 = v47;
      if (v47 <= (v24 - 1))
      {
        v29 = v24 - 1;
      }

      v47 = v29;
      v48 = v28;
      if (v20 >= v46)
      {
        v30 = v46;
      }

      else
      {
        v30 = v20;
      }

      v31 = v45;
      if (v45 <= v20)
      {
        v31 = v20;
      }

      v45 = v31;
      v46 = v30;
      v24 = v9;
      if (v23 == v9)
      {
        goto LABEL_8;
      }
    }

    if (v21)
    {
      break;
    }

    if (v7 >= BYTE6(v16))
    {
      goto LABEL_59;
    }

    v50 = v14;
    v51 = v16;
    v52 = BYTE2(v16);
    v53 = BYTE3(v16);
    v54 = BYTE4(v16);
    v55 = BYTE5(v16);
    v24 = (v24 + 1);
    if (*(&v50 + v7))
    {
      goto LABEL_22;
    }

LABEL_13:
    if (v23 == v24)
    {
      goto LABEL_8;
    }
  }

  if (v7 < v14 || v7 >= v14 >> 32)
  {
    goto LABEL_61;
  }

  v36 = sub_24A82C6D4();
  if (!v36)
  {
    goto LABEL_69;
  }

  v33 = v36;
  v37 = sub_24A82C6E4();
  v35 = v7 - v37;
  if (!__OFSUB__(v7, v37))
  {
    goto LABEL_12;
  }

  __break(1u);
LABEL_47:

LABEL_49:
  return 0;
}

id FMIPItemImageCacheOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FMIPItemImageCacheOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMIPItemImageCacheOperation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_24A7F3958(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FMIPItemImageCacheOperation();
  v7 = objc_allocWithZone(v6);
  v8 = *a1;
  v9 = a1[1];
  v10 = *(a1 + 16);
  v11 = a1[3];
  v12 = *(a1 + 2);
  v13 = a1[6];
  v7[OBJC_IVAR____TtC8FMIPCore27FMIPItemImageCacheOperation__isFinished] = 0;
  v14 = &v7[OBJC_IVAR____TtC8FMIPCore27FMIPItemImageCacheOperation_request];
  *v14 = v8;
  *(v14 + 1) = v9;
  v14[16] = v10;
  *(v14 + 3) = v11;
  *(v14 + 2) = v12;
  *(v14 + 6) = v13;
  v15 = &v7[OBJC_IVAR____TtC8FMIPCore27FMIPItemImageCacheOperation_completion];
  *v15 = a2;
  v15[1] = a3;
  v17.receiver = v7;
  v17.super_class = v6;
  return objc_msgSendSuper2(&v17, sel_init);
}

CGImageRef sub_24A7F3A58(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  sub_24A6BBA94(&qword_27EF5F558, &qword_24A83F810);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24A8356C0;
  v7 = *MEMORY[0x277CC48B8];
  type metadata accessor for CFString(0);
  *(v6 + 32) = v7;
  v8 = MEMORY[0x277D837D0];
  *(v6 + 56) = v9;
  *(v6 + 64) = 0x6C6F43656C707041;
  *(v6 + 72) = 0xEF696A6F6D45726FLL;
  v10 = *MEMORY[0x277CC4938];
  *(v6 + 120) = v9;
  *(v6 + 88) = v8;
  *(v6 + 96) = v10;
  *(v6 + 152) = MEMORY[0x277D85048];
  *(v6 + 128) = a3;
  sub_24A679170(0, &qword_27EF5F560, 0x277CBEAC0);
  v11 = v7;
  v12 = v10;
  v13 = sub_24A82D4B4();
  v14 = CTFontDescriptorCreateWithAttributes(v13);
  v15 = CTFontCreateWithFontDescriptor(v14, 0.0, 0);
  sub_24A6BBA94(&qword_27EF5F568, &qword_24A83F818);
  inited = swift_initStackObject();
  v17 = MEMORY[0x277CC4838];
  *(inited + 16) = xmmword_24A8327A0;
  v18 = *v17;
  *(inited + 32) = v18;
  *(inited + 40) = v15;
  v19 = v18;
  v20 = v15;
  sub_24A78AFB8(inited);
  swift_setDeallocating();
  sub_24A67F378(inited + 32, &qword_27EF5F570, qword_24A83F820);
  type metadata accessor for CTFont(0);
  sub_24A67A0FC(&qword_27EF5D110, type metadata accessor for CFString, &unk_24A831708);
  v21 = sub_24A82CED4();

  v22 = *MEMORY[0x277CBECE8];
  v23 = sub_24A82CF94();
  v24 = CFAttributedStringCreate(v22, v23, v21);

  if (v24)
  {
    v25 = CTFramesetterCreateWithAttributedString(v24);
    v54.width = INFINITY;
    v52.location = 0;
    v52.length = 0;
    v54.height = INFINITY;
    v26 = CTFramesetterSuggestFrameSizeWithConstraints(v25, v52, 0, v54, 0);
    v55.origin.x = 0.0;
    v55.origin.y = 0.0;
    v55.size.width = v26.width;
    v55.size.height = v26.height;
    v27 = CGPathCreateWithRect(v55, 0);
    v53.location = 0;
    v53.length = 0;
    Frame = CTFramesetterCreateFrame(v25, v53, v27, 0);

    v29 = v26.width + v26.width;
    if (v26.width + v26.width <= -9.22337204e18)
    {
      __break(1u);
    }

    else if (v29 < 9.22337204e18)
    {
      v30 = v26.height + v26.height;
      v31 = COERCE__INT64(fabs(v26.height + v26.height)) > 0x7FEFFFFFFFFFFFFFLL;
      if (COERCE__INT64(fabs(v26.width + v26.width)) <= 0x7FEFFFFFFFFFFFFFLL && !v31)
      {
        if (v30 > -9.22337204e18)
        {
          if (v30 < 9.22337204e18)
          {
            v51 = v13;
            v13 = Frame;
            Frame = v4;
            v32 = v29;
            v33 = v30;
            DeviceRGB = CGColorSpaceCreateDeviceRGB();
            v35 = sub_24A7F3A38(v32, v33, 0, DeviceRGB, 1u);

            if (v35)
            {
              v36 = v20;
              sub_24A82D474();
              sub_24A82D484();
              sub_24A82D474();
              sub_24A82D484();
              CTFrameDraw(v13, v35);
              Image = CGBitmapContextCreateImage(v35);
              if (Image)
              {
                v38 = Image;
                v39 = sub_24A7F33D0();
              }

              else
              {
                v39 = 0;
              }

              v47 = v14;
              v48 = v24;
              v42 = v25;
              v14 = v13;
              v25 = v21;
              v21 = v51;
LABEL_19:

              v13 = v35;
              v14 = v25;
              v20 = v36;
              goto LABEL_20;
            }

            if (qword_281515DC8 == -1)
            {
LABEL_13:
              v40 = sub_24A82CDC4();
              sub_24A6797D0(v40, qword_281518F88);
              v41 = Frame;
              v42 = sub_24A82CD94();
              v43 = sub_24A82D504();

              if (os_log_type_enabled(v42, v43))
              {
                v50 = v20;
                v44 = swift_slowAlloc();
                v45 = swift_slowAlloc();
                *v44 = 138412290;
                *(v44 + 4) = v41;
                *v45 = v41;
                v46 = v41;
                _os_log_impl(&dword_24A675000, v42, v43, "FMItemImageCreationOperation: Created an nil context for request %@", v44, 0xCu);
                sub_24A67F378(v45, &qword_27EF5D010, &qword_24A830E30);
                MEMORY[0x24C21E1D0](v45, -1, -1);
                MEMORY[0x24C21E1D0](v44, -1, -1);
                v39 = 0;
                v47 = v50;
              }

              else
              {
                v39 = 0;
                v47 = v20;
              }

              v48 = v51;
              v35 = v24;
              v36 = v13;
              goto LABEL_19;
            }

LABEL_26:
            swift_once();
            goto LABEL_13;
          }

LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    __break(1u);
    goto LABEL_23;
  }

  v39 = 0;
LABEL_20:

  return v39;
}

FMIPCore::FMIPActionStatus sub_24A7F3FD0@<W0>(_BYTE *a1@<X8>)
{
  v3 = sub_24A6BBA94(&qword_27EF5DE50, &qword_24A83DE40);
  result = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + 56);
  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = type metadata accessor for FMIPDevice(0);
    sub_24A7F4360(v7 + *(v9 + 120) + ((*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80)), v6);
    v10 = type metadata accessor for FMIPLockMetadata(0);
    if ((*(*(v10 - 8) + 48))(v6, 1, v10) == 1)
    {
      result = sub_24A7F43D0(v6);
LABEL_5:
      LOBYTE(v8) = 0;
      goto LABEL_8;
    }

    v11 = *v6;
    sub_24A7F4438(v6);
    result = FMIPActionStatus.init(rawValue:)(qword_24A83F858[v11]).value;
    LOBYTE(v8) = v13;
    if (v13 == 18)
    {
      LOBYTE(v8) = 0;
    }
  }

LABEL_8:
  *a1 = v8;
  return result;
}

unint64_t sub_24A7F4178(void *a1)
{
  sub_24A698230(a1, v15);
  v3 = sub_24A6F5EE8(v15);
  if (!v1)
  {
    v4 = qword_281515DC8;

    if (v4 != -1)
    {
      swift_once();
    }

    v5 = sub_24A82CDC4();
    sub_24A6797D0(v5, qword_281518F88);

    v6 = sub_24A82CD94();
    v7 = sub_24A82D504();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15[0] = v9;
      *v8 = 136315138;
      v10 = sub_24A6F6244();
      v12 = v11;

      v13 = sub_24A68761C(v10, v12, v15);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_24A675000, v6, v7, "FMIPLockResponse: initialized with coder %s", v8, 0xCu);
      sub_24A6876E8(v9);
      MEMORY[0x24C21E1D0](v9, -1, -1);
      MEMORY[0x24C21E1D0](v8, -1, -1);
    }

    else
    {
    }
  }

  sub_24A6876E8(a1);
  return v3;
}

uint64_t sub_24A7F4360(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&qword_27EF5DE50, &qword_24A83DE40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A7F43D0(uint64_t a1)
{
  v2 = sub_24A6BBA94(&qword_27EF5DE50, &qword_24A83DE40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A7F4438(uint64_t a1)
{
  v2 = type metadata accessor for FMIPLockMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24A7F4494(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0x65746E6F43706174;
    v6 = 0x64657463656C6573;
    v7 = 0x44656C6269736976;
    if (a1 != 3)
    {
      v7 = 0x6F4C646C756F6873;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (!a1)
    {
      v5 = 0xD000000000000016;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x3256616E6D66;
    if (a1 != 8)
    {
      v1 = 0x6E6D66656C707061;
    }

    v2 = 0x3156676174726961;
    v3 = 0x3256676174726961;
    if (a1 != 6)
    {
      v3 = 0x3156616E6D66;
    }

    if (a1 != 5)
    {
      v2 = v3;
    }

    if (a1 <= 7u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_24A7F4618()
{
  v1 = v0;
  v2 = sub_24A6BBA94(&qword_27EF5DF08, &qword_24A837770);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v30 - v3;
  v5 = type metadata accessor for FMIPDevice(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + qword_281518E70);
  if (v9)
  {
    v30 = v5;
    v10 = sub_24A6BBA94(&qword_27EF5F578, &unk_24A83F970);
    v35 = v10;
    *&v34 = v9;
    v11 = qword_27EF5D920;
    v12 = *(v1 + qword_27EF5D920);

    os_unfair_lock_lock((v12 + 24));
    v13 = *(v12 + 16);

    os_unfair_lock_unlock((v12 + 24));

    v33 = v13;
    if (v10)
    {
      sub_24A6A50DC(&v34, v32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = v13;
      v15 = sub_24A6A4F8C(v32, 0x65746E6F43706174, 0xEA00000000007478, isUniquelyReferenced_nonNull_native);
      v16 = v31;
    }

    else
    {
      sub_24A67F378(&v34, &qword_27EF5D898, qword_24A8354A0);
      sub_24A7C3F0C(0x65746E6F43706174, 0xEA00000000007478, v32);
      v15 = sub_24A67F378(v32, &qword_27EF5D898, qword_24A8354A0);
      v16 = v33;
    }

    v17 = *(v1 + v11);
    MEMORY[0x28223BE20](v15);
    *(&v30 - 2) = v16;

    os_unfair_lock_lock((v17 + 24));
    sub_24A6A3D28((v17 + 16));
    os_unfair_lock_unlock((v17 + 24));

    v5 = v30;
  }

  sub_24A7718EC(v1 + qword_281518E68, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_24A67F378(v4, &qword_27EF5DF08, &qword_24A837770);
    if (!v9 || !*(v9 + 16))
    {
      v35 = MEMORY[0x277D837D0];
      *&v34 = 7105633;
      *(&v34 + 1) = 0xE300000000000000;
      swift_beginAccess();
      sub_24A6A61DC(&v34, 0x64657463656C6573, 0xEE00656369766544);
      swift_endAccess();
      sub_24A6A5DF4();
    }
  }

  else
  {
    sub_24A6CAF68(v4, v8);
    v18 = *v8;
    v19 = v8[1];
    v35 = MEMORY[0x277D837D0];
    *&v34 = v18;
    *(&v34 + 1) = v19;
    swift_beginAccess();

    sub_24A6A61DC(&v34, 0x64657463656C6573, 0xEE00656369766544);
    swift_endAccess();
    sub_24A6A5DF4();
    v35 = MEMORY[0x277D839B0];
    LOBYTE(v34) = 1;
    swift_beginAccess();
    sub_24A6A61DC(&v34, 0x6F4C646C756F6873, 0xEC00000065746163);
    swift_endAccess();
    sub_24A6A5DF4();
    sub_24A6FE094(v8);
  }

  v20 = *(v1 + qword_281518E60);
  v21 = MEMORY[0x277D83B88];
  v35 = MEMORY[0x277D83B88];
  *&v34 = v20;
  swift_beginAccess();
  sub_24A6A61DC(&v34, 0xD000000000000016, 0x800000024A84A640);
  swift_endAccess();
  result = sub_24A6A5DF4();
  v23 = (v1 + qword_27EF78FB0);
  if ((*(v1 + qword_27EF78FB0 + 48) & 1) == 0)
  {
    v24 = v23[4];
    v25 = v23[5];
    v27 = v23[2];
    v26 = v23[3];
    v28 = *v23;
    v29 = *(v1 + qword_27EF78FB0 + 8);
    v35 = v21;
    *&v34 = v28;
    swift_beginAccess();
    sub_24A6A61DC(&v34, 0x3156676174726961, 0xE800000000000000);
    swift_endAccess();
    sub_24A6A5DF4();
    v35 = v21;
    *&v34 = v29;
    swift_beginAccess();
    sub_24A6A61DC(&v34, 0x3256676174726961, 0xE800000000000000);
    swift_endAccess();
    sub_24A6A5DF4();
    v35 = v21;
    *&v34 = v27;
    swift_beginAccess();
    sub_24A6A61DC(&v34, 0x3156616E6D66, 0xE600000000000000);
    swift_endAccess();
    sub_24A6A5DF4();
    v35 = v21;
    *&v34 = v26;
    swift_beginAccess();
    sub_24A6A61DC(&v34, 0x3256616E6D66, 0xE600000000000000);
    swift_endAccess();
    sub_24A6A5DF4();
    v35 = v21;
    *&v34 = v24;
    swift_beginAccess();
    sub_24A6A61DC(&v34, 0x6E6D66656C707061, 0xEB00000000315661);
    swift_endAccess();
    sub_24A6A5DF4();
    v35 = v21;
    *&v34 = v25;
    swift_beginAccess();
    sub_24A6A61DC(&v34, 0x6E6D66656C707061, 0xEB00000000325661);
    swift_endAccess();
    return sub_24A6A5DF4();
  }

  return result;
}

uint64_t sub_24A7F4CA8()
{
  sub_24A67F378(v0 + qword_281518E68, &qword_27EF5DF08, &qword_24A837770);
}

uint64_t sub_24A7F4CF8()
{
  sub_24A6F8F90();
  v0 = qword_281518E68;

  sub_24A67F378(v1 + v0, &qword_27EF5DF08, &qword_24A837770);

  return swift_deallocClassInstance();
}

FMIPCore::FMIPUTAlertCompletionType_optional __swiftcall FMIPUTAlertCompletionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A82D9C4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FMIPUTAlertCompletionType.rawValue.getter()
{
  v1 = 0x6F4665726F6E6769;
  if (*v0 != 1)
  {
    v1 = 0x68536465736F6C63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E5565726F6E6769;
  }
}

uint64_t sub_24A7F4E7C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6F4665726F6E6769;
  v4 = 0xED00007265766572;
  if (v2 != 1)
  {
    v3 = 0x68536465736F6C63;
    v4 = 0xEB00000000746565;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6E5565726F6E6769;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEE00444F456C6974;
  }

  v7 = 0x6F4665726F6E6769;
  v8 = 0xED00007265766572;
  if (*a2 != 1)
  {
    v7 = 0x68536465736F6C63;
    v8 = 0xEB00000000746565;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6E5565726F6E6769;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEE00444F456C6974;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24A82DC04();
  }

  return v11 & 1;
}

uint64_t sub_24A7F4FB0()
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7F5074(uint64_t a1)
{
  sub_24A82D094();
}

uint64_t sub_24A7F5124(uint64_t a1)
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

void sub_24A7F51F0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00444F456C6974;
  v4 = 0xED00007265766572;
  v5 = 0x6F4665726F6E6769;
  if (v2 != 1)
  {
    v5 = 0x68536465736F6C63;
    v4 = 0xEB00000000746565;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E5565726F6E6769;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t FMIPUTAlertSheetType.rawValue.getter()
{
  if (*v0)
  {
    return 0x796C696D6166;
  }

  else
  {
    return 1919251317;
  }
}

uint64_t sub_24A7F52AC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x796C696D6166;
  }

  else
  {
    v3 = 1919251317;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x796C696D6166;
  }

  else
  {
    v5 = 1919251317;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24A82DC04();
  }

  return v8 & 1;
}

uint64_t sub_24A7F5348()
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7F53C0(uint64_t a1)
{
  sub_24A82D094();
}

uint64_t sub_24A7F5424(uint64_t a1)
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

void sub_24A7F54A4(uint64_t *a1@<X8>)
{
  v2 = 1919251317;
  if (*v1)
  {
    v2 = 0x796C696D6166;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

FMIPCore::FMIPUTAlertProductType_optional __swiftcall FMIPUTAlertProductType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A82D9C4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FMIPUTAlertProductType.rawValue.getter()
{
  v1 = 0x73646F50726961;
  if (*v0 != 1)
  {
    v1 = 0x726F737365636361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676154726961;
  }
}

uint64_t sub_24A7F5590(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x73646F50726961;
  if (v2 != 1)
  {
    v4 = 0x726F737365636361;
    v3 = 0xE900000000000079;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x676154726961;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x73646F50726961;
  if (*a2 != 1)
  {
    v8 = 0x726F737365636361;
    v7 = 0xE900000000000079;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x676154726961;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24A82DC04();
  }

  return v11 & 1;
}