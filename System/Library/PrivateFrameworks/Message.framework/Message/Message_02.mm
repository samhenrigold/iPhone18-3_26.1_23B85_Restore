uint64_t sub_1B03AD728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return 0;
  }

  v8 = 0;
  v9 = *(type metadata accessor for RunningTask(0) - 8);
  v10 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  while (1)
  {
    v12 = sub_1B0450F38(v10, a2, a3);
    if (v3 || (v12 & 1) != 0)
    {
      break;
    }

    ++v8;
    v10 += v11;
    if (v4 == v8)
    {
      return 0;
    }
  }

  return v8;
}

unint64_t sub_1B03AD844(unint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = sub_1B03AD91C(v8, a2, 0, a4);
  *v4 = v6;
  return result;
}

unint64_t sub_1B03AD91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  result = a4(0);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1B03ADA68(uint64_t a1)
{
  v2 = type metadata accessor for RunningTask(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  sub_1B03ADCA0(0, v6, 0);
  v7 = v24;
  v22 = a1;
  if (v6)
  {
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    v10 = v6;
    do
    {
      sub_1B0390720(v8, v5, type metadata accessor for RunningTask);
      sub_1B03D0A20((v5 + 64), v23);
      sub_1B0390574(v5, type metadata accessor for RunningTask);
      v24 = v7;
      v12 = *(v7 + 16);
      v11 = *(v7 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1B03ADCA0((v11 > 1), v12 + 1, 1);
        v7 = v24;
      }

      *(v7 + 16) = v12 + 1;
      v13 = (v7 + 48 * v12);
      v14 = v23[0];
      v15 = v23[2];
      v13[3] = v23[1];
      v13[4] = v15;
      v13[2] = v14;
      v8 += v9;
      --v10;
    }

    while (v10);
  }

  v16 = sub_1B03ADCC0(v7);

  v17 = 0;
  *&v23[0] = MEMORY[0x1E69E7CC8];
  v18 = v22;
  while (v6 != v17)
  {
    v19 = v17 + 1;
    sub_1B0B7CAB8(v23, v18 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v17);
    v17 = v19;
  }

  sub_1B03ADEC0(v18);
  return v16;
}

char *sub_1B03ADCA0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B03ADD4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B03ADCC0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1B03ADE6C();
  result = MEMORY[0x1B2727570](v2, &type metadata for TaskID, v3);
  v8 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      sub_1B03D0A20(v5, v6);
      sub_1B0451498(v7, v6);
      sub_1B03B04BC(v7);
      v5 += 48;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

char *sub_1B03ADD4C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FE8, &unk_1B0EC2790);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1B03ADE6C()
{
  result = qword_1EB6DD1E0;
  if (!qword_1EB6DD1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD1E0);
  }

  return result;
}

void *sub_1B03ADEC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v46 = &v39 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v45 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v40 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E51B0, &qword_1B0ECC598);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4598, &unk_1B0EC5908);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v47 = &v39 - v15;
  v16 = *(a1 + 16);
  if (!v16)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v49 = v9;
  v17 = *(type metadata accessor for RunningTask(0) - 8);
  v18 = (v14 + 56);
  v42 = (v3 + 16);
  v19 = a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v20 = *(v17 + 72);
  v50 = MEMORY[0x1E69E7CC8];
  v21 = v47;
  v43 = v18;
  v44 = v12;
  v48 = v20;
  v41 = v13;
  while (1)
  {
    sub_1B0450DB0(v19, v51);
    if (v52 != 1)
    {
      sub_1B0B7ABB4(v51);
      goto LABEL_4;
    }

    sub_1B0450C74(v51, v53);
    sub_1B03D2CA8(v53, v51);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4720, "̨\t");
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v53);
      (*v18)(v12, 1, 1, v13);
      sub_1B0398EFC(v12, &qword_1EB6E51B0, &qword_1B0ECC598);
      goto LABEL_4;
    }

    (*v18)(v12, 0, 1, v13);
    sub_1B03C60A4(v12, v21, &qword_1EB6E4598, &unk_1B0EC5908);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v22 = v49;
    sub_1B0B24198();
    if (sub_1B0E46E98())
    {
      sub_1B0398EFC(v22, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      __swift_destroy_boxed_opaque_existential_0Tm(v53);
      sub_1B0398EFC(v21, &qword_1EB6E4598, &unk_1B0EC5908);
      v20 = v48;
      goto LABEL_4;
    }

    v23 = v2;
    v24 = *(v21 + 88);
    v25 = *(v21 + 96);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v26 = v50;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v51[0] = v26;
    v29 = sub_1B03AB888(v24, v25);
    v30 = v26[2];
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      break;
    }

    v33 = v28;
    if (v26[3] >= v32)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1B0B8F434();
      }
    }

    else
    {
      sub_1B0B33EF4(v32, isUniquelyReferenced_nonNull_native);
      v34 = sub_1B03AB888(v24, v25);
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_23;
      }

      v29 = v34;
    }

    v2 = v23;
    v50 = *&v51[0];
    if (v33)
    {
    }

    else
    {
      sub_1B03D06F8();
      v36 = v40;
      sub_1B0E46EE8();
      sub_1B0A9BE10(v29, v24, v25, v36, v50);
    }

    v18 = v43;
    v37 = v49;
    (*v42)(v46, v49, v23);
    sub_1B0E46ED8();
    sub_1B0398EFC(v37, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    __swift_destroy_boxed_opaque_existential_0Tm(v53);
    v21 = v47;
    sub_1B0398EFC(v47, &qword_1EB6E4598, &unk_1B0EC5908);
    v12 = v44;
    v20 = v48;
    v13 = v41;
LABEL_4:
    v19 += v20;
    if (!--v16)
    {
      return v50;
    }
  }

  __break(1u);
LABEL_23:
  result = sub_1B0E46BA8();
  __break(1u);
  return result;
}

uint64_t sub_1B03AE4B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>, uint64_t a9)
{
  v148 = a6;
  sub_1B03AF23C(a1, &v166);
  if (v167[24] != 255)
  {
    v181 = v166;
    v182[0] = *v167;
    *(v182 + 9) = *&v167[9];
    sub_1B0B7ABE4(&v181, a8);
    sub_1B0B7AC40(&v181);

    *(a8 + 48) = MEMORY[0x1E69E7CD0];
    return result;
  }

  v143 = a1;
  v144 = a3;
  v149 = a2;
  v132 = a5;
  v133 = a4;
  v138 = a8;
  sub_1B0398EFC(&v166, &qword_1EB6E4CF0, &qword_1B0EC9BD0);
  v17 = *(a7 + 9);
  v18 = a7[9];
  v19 = a9;
  if (v17 == 2)
  {
    goto LABEL_4;
  }

  v21 = a7;
  v22 = *(a7 + 11);
  v23 = a7[13];
  v24 = *(a7 + 114);
  v25 = *(a7 + 56);
  v139 = a7[15];
  v26 = *(a7 + 137);
  v145 = a9;
  v142 = a7;
  if ((v26 & 1) == 0)
  {
    goto LABEL_19;
  }

  v154 = v22;
  v155 = v17;
  v27 = *(a7 + 24);
  v28 = *(a7 + 25);
  v29 = a7[4];
  v30 = a7[7];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v31 = sub_1B0397D14();
  v32 = v31;
  if ((v29 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {

    v19 = v145;
    v21 = v142;
    v22 = v154;
    v17 = v155;
    if ((v18 & 0xFF0000) == 0x20000)
    {
      goto LABEL_19;
    }

LABEL_4:
    v20 = v138;
    *(v138 + 32) = 0;
    *v20 = 0u;
    *(v20 + 16) = 0u;
    *(v20 + 40) = -1;

    *(v20 + 48) = MEMORY[0x1E69E7CD0];
    return result;
  }

  v33 = sub_1B0BAE1A4(v31);
  LODWORD(v153) = v28;
  if (v28)
  {
    goto LABEL_14;
  }

  if (v29 != 1)
  {
    if (!v29 && (v27 - 1) < 2)
    {
      v33 = 1;
      v19 = v145;
      goto LABEL_15;
    }

LABEL_14:
    v19 = v145;
    goto LABEL_15;
  }

  v19 = v145;
  if (v27)
  {
    v33 = v27 != 1;
  }

LABEL_15:
  v34 = v33;
  sub_1B0397E04(&unk_1F2710548, v30);
  sub_1B0BAE1A4(v32);
  v35 = sub_1B039109C(v30);

  if (v35 & 1) == 0 && (v153)
  {
    sub_1B0BAE1A4(v32);
  }

  v21 = v142;
  v22 = v154;
  v17 = v155;
  if (!(((v18 & 0xFF0000) == 0x20000) | v34 & 1))
  {
    goto LABEL_4;
  }

LABEL_19:
  v36 = MEMORY[0x1E69E7CD0];
  v176 = MEMORY[0x1E69E7CD0];
  v141 = *(v148 + 16);
  if (!v141)
  {
    goto LABEL_135;
  }

  v177[0] = v17;
  v177[1] = v22;
  v178 = v23;
  v179 = v25;
  v180 = (v25 | (v24 << 16)) >> 16;
  v37 = v132 + 32;
  v38 = v148 + 32;
  v39 = v21[21];
  v152 = *(v21 + 192);
  v153 = *(v132 + 16);
  v147 = v39;
  v146 = v39 + 32;

  v40 = 0;
  v41 = v141;
  v134 = v148 + 32;
  v135 = v132 + 32;
  while (2)
  {
    if (v40 == v153)
    {
      __break(1u);
      return result;
    }

    v42 = v37 + 16 * v40;
    v43 = *v42;
    v44 = v19;
    v45 = *(v42 + 8);
    LODWORD(v154) = *(v38 + 2 * v40);
    v46 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    *&v155 = v45;
    v47 = v45;
    v19 = v44;
    v48 = sub_1B03BBFB8(v46, v47, v44);
    if ((v152 & 1) == 0 || (v49 = *(v147 + 16)) == 0)
    {
LABEL_21:

      goto LABEL_22;
    }

    v50 = 0;
    while (1)
    {
      v51 = (v146 + 176 * v50);
      v52 = *v51;
      v53 = v51[2];
      v182[0] = v51[1];
      v182[1] = v53;
      v181 = v52;
      v54 = v51[3];
      v55 = v51[4];
      v56 = v51[6];
      v185 = v51[5];
      v186 = v56;
      v183 = v54;
      v184 = v55;
      v57 = v51[7];
      v58 = v51[8];
      v59 = v51[10];
      v189 = v51[9];
      v190 = v59;
      v187 = v57;
      v188 = v58;
      if ((DWORD2(v182[0]) | (DWORD2(v182[0]) << 32)) == (v155 | (v155 << 32)))
      {
        v60 = *(*&v182[0] + 16);
        if (v60 == *(v43 + 16))
        {
          break;
        }
      }

LABEL_27:
      if (++v50 == v49)
      {
        goto LABEL_21;
      }
    }

    if (v60 && *&v182[0] != v43)
    {
      v61 = (*&v182[0] + 32);
      v62 = (v43 + 32);
      while (*v61 == *v62)
      {
        ++v61;
        ++v62;
        if (!--v60)
        {
          goto LABEL_35;
        }
      }

      goto LABEL_27;
    }

LABEL_35:
    v63 = v139;
    v151 = v48;
    v150 = v43;
    if (v139 && *(v139 + 16) && (v64 = sub_1B03AB888(v43, v155), (v65 & 1) != 0))
    {
      v66 = *(v63 + 56) + 72 * v64;
      v160[0] = *v66;
      v68 = *(v66 + 32);
      v67 = *(v66 + 48);
      v69 = *(v66 + 64);
      v160[1] = *(v66 + 16);
      v160[2] = v68;
      v161 = v69;
      v160[3] = v67;
      *v167 = *(v66 + 16);
      *&v167[16] = *(v66 + 32);
      v168 = *(v66 + 48);
      v169 = *(v66 + 64);
      v166 = *v66;
      sub_1B03BB0B4(v160, &v156);
      v172 = *&v167[16];
      v173 = v168;
      v174 = v169;
      v170 = v166;
      v171 = *v167;
    }

    else
    {
      v174 = 0;
      v172 = 0u;
      v173 = 0u;
      v170 = 0u;
      v171 = 0u;
    }

    v191[2] = v172;
    v191[3] = v173;
    v192 = v174;
    v191[0] = v170;
    v191[1] = v171;
    v70 = v142;
    v72 = *v142;
    v71 = v142[1];
    sub_1B03A35B8(&v181, &v166);
    v137 = WindowOfInterestSizes.subscript.getter(v191, v72, v71);
    v136 = v73;
    sub_1B0398EFC(&v170, &qword_1EB6E4568, &qword_1B0EC55C0);
    v74 = *(v70 + 24);
    v75 = *(v70 + 25);
    v76 = v70[4];
    LODWORD(v140) = *(v70 + 40);
    LOBYTE(v72) = *(v70 + 18);
    v78 = v70[6];
    v77 = v70[7];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v79 = sub_1B0397D14();
    v80 = v79;
    v162 = v72;
    if (v76 == 3)
    {

      v82 = 0;
      v83 = 0;
      v84 = 0x100000000000000;
      v85 = 0x100000000;
      v86 = 1;
      v87 = 512;
      v88 = 0x1000000;
      v19 = v145;
      v90 = v149;
      v89 = v150;
      v91 = v143;
      v81 = v154;
    }

    else
    {
      v131 = v78;
      v19 = v145;
      v81 = v154;
      if (v76 == 2)
      {

        v82 = 0;
        v83 = 0;
        v84 = 0x100000000000000;
        v85 = 0x100000000;
        v86 = 1;
        v87 = 512;
        v88 = 0x1000000;
        v90 = v149;
        v89 = v150;
        v91 = v143;
        goto LABEL_112;
      }

      v92 = sub_1B0BAE1A4(v79);
      v93 = v75;
      if (v75)
      {
        goto LABEL_53;
      }

      v94 = v74;
      if (v76 == 1)
      {
        if (!v74)
        {
          goto LABEL_53;
        }

        if (v74 != 1)
        {
          goto LABEL_132;
        }

        v95 = 0;
        v130 = 0x100000000;
        v96 = 512;
LABEL_133:
        v127 = v96;
      }

      else
      {
        if (!v76 && v74)
        {
          if (v74 != 1)
          {
            v94 = 0;
            v127 = 0;
            v95 = 0;
            v130 = 0;
            goto LABEL_58;
          }

LABEL_132:
          v95 = 0;
          v130 = 0;
          v94 = 1;
          v96 = 256;
          goto LABEL_133;
        }

LABEL_53:
        v94 = (v92 & 1) == 0;
        v97 = 0x100000000;
        if (v92)
        {
          v97 = 0;
        }

        v130 = v97;
        v98 = 512;
        if (v92)
        {
          v98 = 0;
        }

        v127 = v98;
        v95 = (v92 & 1) == 0;
      }

LABEL_58:
      v89 = v150;
      v99 = sub_1B0397E04(&unk_1F2710548, v77);
      v100 = (v99 & 1) == 0 || v94;
      LODWORD(v128) = v100;
      v101 = (v99 & 1) == 0 || v95;
      v126 = v101;
      LODWORD(v129) = sub_1B0BAE1A4(v80);
      v102 = sub_1B039109C(v77);

      v103 = v102 ^ 1;
      if (v102)
      {
        v90 = v149;
      }

      else
      {
        v90 = v149;
        if (v93)
        {
          v103 = sub_1B0BAE1A4(v80);
          v102 = v103 ^ 1;
        }
      }

      v104 = *(v80 + 16);

      v105 = (v104 == 0) & v93;
      if (v140 > 1)
      {
        v19 = v145;
        v81 = v154;
        if (v140 == 2)
        {
          v82 = 0x10000;
          if ((v103 & 1) == 0)
          {
            v82 = 0;
          }

          if ((v102 & 1) == 0)
          {
            v82 = 0x20000;
          }

          v87 = v127;
          if (v131 >= 3989)
          {
            v87 = 512;
          }

          v106 = v105 == 0;
          v84 = 0x100000000000000;
          if (v106)
          {
            v84 = 0;
          }

          v83 = 0x10000000000;
          if ((v129 & 1) == 0)
          {
            v83 = 0;
          }

          if (v126)
          {
            v91 = v143;
            v85 = v130;
            LODWORD(v86) = v128;
            goto LABEL_110;
          }

          v88 = 0;
          v91 = v143;
          v85 = v130;
          LODWORD(v86) = v128;
        }

        else
        {
          v82 = 0x10000;
          if ((v103 & 1) == 0)
          {
            v82 = 0;
          }

          v85 = v130;
          v87 = v127;
          if (v131 >= 3989)
          {
            v87 = 512;
          }

          v106 = v105 == 0;
          v84 = 0x100000000000000;
          if (v106)
          {
            v84 = 0;
          }

          v83 = 0x10000000000;
          if ((v129 & 1) == 0)
          {
            v83 = 0;
          }

          LODWORD(v86) = v128;
          if (v126)
          {
            v91 = v143;
            goto LABEL_110;
          }

          v88 = 0;
          v91 = v143;
        }
      }

      else
      {
        v19 = v145;
        v81 = v154;
        if (!v140)
        {
          v82 = 0;
          v106 = v105 == 0;
          v84 = 0x100000000000000;
          if (v106)
          {
            v84 = 0;
          }

          v83 = 0x10000000000;
          if ((v129 & 1) == 0)
          {
            v83 = 0;
          }

          LODWORD(v86) = 1;
          v87 = 512;
          v91 = v143;
          v85 = v130;
          goto LABEL_110;
        }

        v82 = 0;
        v88 = 0;
        v85 = v130;
        v87 = v127;
        if (v131 >= 3989)
        {
          v87 = 512;
        }

        v106 = v105 == 0;
        v84 = 0x100000000000000;
        if (v106)
        {
          v84 = 0;
        }

        v83 = 0x10000000000;
        if ((v129 & 1) == 0)
        {
          v83 = 0;
        }

        v91 = v143;
        LODWORD(v86) = v128;
        if (v126)
        {
LABEL_110:
          v88 = 0x1000000;
        }
      }

      v86 = v86;
    }

LABEL_112:
    v107 = 0x1000000000000;
    if ((v162 & 1) == 0)
    {
      v107 = 0;
    }

    v108 = v82 | v87 | v86 | v88 | v85 | v83 | v84 | v107;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v109 = v144;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03BC640(v81, v108, &v181, v91, v90, v109, v151 & 1, v160);
    sub_1B03B5C80(v160, &v156, &qword_1EB6E4CF8, &qword_1B0EC9BD8);
    if (v159 == 255)
    {
      sub_1B0398EFC(v160, &qword_1EB6E4CF8, &qword_1B0EC9BD8);
LABEL_118:
      sub_1B03A3614(&v181);
      v163 = 0u;
      v164 = 0u;
      v165 = 0;
      v38 = v134;
      v37 = v135;
      goto LABEL_123;
    }

    if (v159)
    {
      sub_1B0398EFC(v160, &qword_1EB6E4CF8, &qword_1B0EC9BD8);
      sub_1B03A3614(&v181);
      sub_1B0450C74(&v156, &v163);
      goto LABEL_122;
    }

    if (v81 >> 14 > 2)
    {
LABEL_120:
      v131 = v158;
      v140 = v157;
      *&v154 = *(&v156 + 1);
      v110 = v156;
      v129 = sub_1B03C3BF4;
      goto LABEL_121;
    }

    if (v81 > 1u)
    {
      if (v81 == 2)
      {
        v131 = v158;
        v140 = v157;
        *&v154 = *(&v156 + 1);
        v110 = v156;
        v129 = sub_1B0B94D74;
        goto LABEL_121;
      }

      sub_1B0398EFC(v160, &qword_1EB6E4CF8, &qword_1B0EC9BD8);

      goto LABEL_118;
    }

    if (!v81)
    {
      goto LABEL_120;
    }

    v131 = v158;
    v140 = v157;
    *&v154 = *(&v156 + 1);
    v110 = v156;
    v129 = sub_1B0B94DCC;
LABEL_121:
    v111 = swift_allocObject();
    v130 = &v125;
    v112 = v189;
    v111[9] = v188;
    v111[10] = v112;
    v111[11] = v190;
    v113 = v185;
    v111[5] = v184;
    v111[6] = v113;
    v114 = v187;
    v111[7] = v186;
    v111[8] = v114;
    v115 = v182[0];
    v111[1] = v181;
    v111[2] = v115;
    v116 = v183;
    v111[3] = v182[1];
    v111[4] = v116;
    MEMORY[0x1EEE9AC00](v111);
    v128 = v123;
    MEMORY[0x1EEE9AC00](v117);
    MEMORY[0x1EEE9AC00](v118);
    v124 = v119;
    sub_1B03A35B8(&v181, &v166);
    v120 = v136 & 1;

    LOBYTE(v124) = v120;
    v123[3] = v108;
    v123[4] = v137;
    v123[1] = v123;
    v123[2] = v177;
    v123[0] = sub_1B03D9800;
    (v129)(&v163, v110, v154, v140, v131, sub_1B0B94D58, v128, sub_1B0B94D68, v123);

    sub_1B03A3614(&v181);

    sub_1B0398EFC(v160, &qword_1EB6E4CF8, &qword_1B0EC9BD8);
    v19 = v145;
    v89 = v150;
LABEL_122:
    v38 = v134;
    v37 = v135;
    if (*(&v164 + 1))
    {
      sub_1B0450C74(&v163, v175);

      v122 = v138;
      sub_1B0450C74(v175, v138);
      *(v122 + 40) = 1;

      *(v122 + 48) = v176;
    }

    else
    {
LABEL_123:
      sub_1B0398EFC(&v163, &qword_1EB6E45A8, &unk_1B0EC5920);
      sub_1B03AB2E0(&v166, v89, v155);

      v41 = v141;
LABEL_22:
      if (++v40 != v41)
      {
        continue;
      }

      v36 = v176;
LABEL_135:
      v121 = v138;
      *(v138 + 32) = 0;
      *v121 = 0u;
      *(v121 + 16) = 0u;
      *(v121 + 40) = -1;

      *(v121 + 48) = v36;
    }

    return result;
  }
}

uint64_t sub_1B03AF23C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1B03AD0B0(v2, &v33);
  sub_1B03AFCC0(v2, &v42);
  if (v42)
  {
    v49 = v44;
    *v50 = v45;
    *&v50[16] = v46;
    v47 = v42;
    v48 = v43;
    if ((sub_1B03D0AD8(&v47, a1) & 1) == 0)
    {
      *(a2 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4D60, &qword_1B0EC9C28);
      *(a2 + 32) = sub_1B039E3F8(&qword_1EB6DD2D0, &qword_1EB6E4D60, &qword_1B0EC9C28, &unk_1B0EC1070);
      v13 = swift_allocObject();
      *a2 = v13;
      sub_1B0B6351C(&v47, v13 + 16);
      v14 = MEMORY[0x1E69E7CC0];
      *(v13 + 88) = MEMORY[0x1E69E7CC0];
      *(v13 + 96) = v14;
      result = sub_1B0B63554(&v47);
      goto LABEL_19;
    }

    result = sub_1B0B63554(&v47);
  }

  else
  {
    result = sub_1B0398EFC(&v42, &qword_1EB6E4A18, &unk_1B0EC7400);
  }

  v7 = *(v2 + 72);
  if (v7 == 2)
  {
LABEL_6:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
LABEL_7:
    *(a2 + 40) = -1;
    return result;
  }

  v8 = *(v2 + 80);
  if (*(v2 + 120))
  {
    if ((*(v2 + 137) & 1) == 0)
    {
LABEL_14:
      v10 = *(v3 + 184);
      v11 = *(v3 + 216);
      v49 = *(v3 + 200);
      *v50 = v11;
      *&v50[12] = *(v3 + 228);
      v47 = *(v3 + 168);
      v48 = v10;
      sub_1B03BB844();
      sub_1B03BB96C(v12, &v42);
      if (!v42)
      {
        result = sub_1B0398EFC(&v42, &qword_1EB6E4D20, &qword_1B0EC9C00);
        if ((BYTE8(v48) & 1) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_26;
      }

      v34[1] = v44;
      v35 = v45;
      v36[0] = v46;
      v33 = v42;
      v34[0] = v43;
      if (sub_1B03D0AD8(&v33 + 1, a1))
      {
        result = sub_1B0B94E80(&v33);
        if ((BYTE8(v48) & 1) == 0)
        {
          goto LABEL_6;
        }

LABEL_26:
        v16 = sub_1B03BBCEC()[2];

        if (v16)
        {
          v36[0] = sub_1B03BBCEC();
          v36[1] = MEMORY[0x1E69E7CD0];
          *(&v35 + 1) = 0x80000001B0F2B630;
          LOBYTE(v42) = 1;
          *&v35 = 0xD000000000000010;
          *&v33 = &type metadata for CreateMailboxes;
          sub_1B0E461E8();
          if (sub_1B03D0AD8(&v33, a1))
          {
            result = sub_1B0A98DBC(&v33);
            goto LABEL_40;
          }

          *(a2 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4D28, &qword_1B0EC9C08);
          *(a2 + 32) = sub_1B039E3F8(&qword_1EB6E4D30, &qword_1EB6E4D28, &qword_1B0EC9C08, &unk_1B0EC1070);
          v26 = swift_allocObject();
          *a2 = v26;
          sub_1B0A98D84(&v33, v26 + 16);
          v27 = MEMORY[0x1E69E7CC0];
          *(v26 + 96) = MEMORY[0x1E69E7CC0];
          *(v26 + 104) = v27;
          result = sub_1B0A98DBC(&v33);
        }

        else
        {
          v19 = sub_1B03BBCF4()[2];

          if (v19)
          {
            v20 = *(v3 + 248);
            v21 = *(v20 + 16);
            v22 = (v20 + 32);
            while (v21)
            {
              v23 = *v22++;
              --v21;
              if (v23 == 3)
              {
                goto LABEL_34;
              }
            }

            v28 = sub_1B03BBCF4();
            sub_1B0A9A08C(v28, &v33);
            if (sub_1B03D0AD8(&v33, a1))
            {
              result = sub_1B0AA00C0(&v33);
              goto LABEL_40;
            }

            *(a2 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4D38, &qword_1B0EC9C10);
            *(a2 + 32) = sub_1B039E3F8(&qword_1EB6E4D40, &qword_1EB6E4D38, &qword_1B0EC9C10, &unk_1B0EC1070);
            v31 = swift_allocObject();
            *a2 = v31;
            sub_1B0AA0088(&v33, v31 + 16);
            v32 = MEMORY[0x1E69E7CC0];
            *(v31 + 96) = MEMORY[0x1E69E7CC0];
            *(v31 + 104) = v32;
            result = sub_1B0AA00C0(&v33);
          }

          else
          {
LABEL_34:
            v24 = sub_1B03BBCFC()[2];

            if (!v24)
            {
              goto LABEL_6;
            }

            v25 = sub_1B03BBCFC();
            *(&v35 + 1) = MEMORY[0x1E69E7CD0];
            v36[0] = MEMORY[0x1E69E7CD0];
            LOBYTE(v42) = 1;
            *&v35 = v25;
            *&v33 = &type metadata for RenameMailboxes;
            sub_1B0E461E8();
            if (sub_1B03D0AD8(&v33, a1))
            {
              result = sub_1B0B70830(&v33);
              goto LABEL_40;
            }

            *(a2 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4D48, &qword_1B0EC9C18);
            *(a2 + 32) = sub_1B039E3F8(&qword_1EB6E4D50, &qword_1EB6E4D48, &qword_1B0EC9C18, &unk_1B0EC1070);
            v29 = swift_allocObject();
            *a2 = v29;
            sub_1B0B707F8(&v33, v29 + 16);
            v30 = MEMORY[0x1E69E7CC0];
            *(v29 + 88) = MEMORY[0x1E69E7CC0];
            *(v29 + 96) = v30;
            result = sub_1B0B70830(&v33);
          }
        }

        goto LABEL_19;
      }

      *(a2 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4D58, &qword_1B0EC9C20);
      *(a2 + 32) = sub_1B039E3F8(&qword_1EB6DD2D8, &qword_1EB6E4D58, &qword_1B0EC9C20, &unk_1B0EC1070);
      v17 = swift_allocObject();
      *a2 = v17;
      sub_1B0B94E24(&v33, v17 + 16);
      v18 = MEMORY[0x1E69E7CC0];
      *(v17 + 88) = MEMORY[0x1E69E7CC0];
      *(v17 + 96) = v18;
      result = sub_1B0B94E80(&v33);
LABEL_19:
      *(a2 + 40) = 0;
      return result;
    }

    v51 = *(v2 + 144);
    v52 = *(v2 + 160);
    v9 = MEMORY[0x1E69E7CC0];
    *&v33 = sub_1B0BAB530(MEMORY[0x1E69E7CC0]);
    *(&v33 + 1) = sub_1B03C8E00(v9);
    sub_1B03B5C80(&v51, &v47, &qword_1EB6E3470, &qword_1B0E9BF70);
    if (qword_1EB6DD1F8 != -1)
    {
      swift_once();
    }

    sub_1B03D0A20(&qword_1EB737CF0, v34);
    strcpy(v36, "ListMailboxes");
    HIWORD(v36[1]) = -4864;
    v37 = BYTE6(v7) & 1;
    v38 = v51;
    v39 = v52;
    v40 = HIBYTE(v7);
    v41 = v8;
    if (sub_1B03D0AD8(v34, a1))
    {
      sub_1B0B11C28(&v33);
      goto LABEL_14;
    }
  }

  else
  {
    v47 = *(v2 + 144);
    *&v48 = *(v2 + 160);
    v9 = MEMORY[0x1E69E7CC0];
    *&v33 = sub_1B0BAB530(MEMORY[0x1E69E7CC0]);
    *(&v33 + 1) = sub_1B03C8E00(v9);
    sub_1B03B5C80(&v47, &v42, &qword_1EB6E3470, &qword_1B0E9BF70);
    if (qword_1EB6DD1F8 != -1)
    {
      swift_once();
    }

    sub_1B03D0A20(&qword_1EB737CF0, v34);
    strcpy(v36, "ListMailboxes");
    HIWORD(v36[1]) = -4864;
    v37 = BYTE6(v7) & 1;
    v38 = v47;
    v39 = v48;
    v40 = HIBYTE(v7);
    v41 = v8;
    if (sub_1B03D0AD8(v34, a1))
    {
      result = sub_1B0B11C28(&v33);
LABEL_40:
      *a2 = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0;
      goto LABEL_7;
    }
  }

  *(a2 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4D18, &qword_1B0EC9BF8);
  *(a2 + 32) = sub_1B039E3F8(qword_1EB6DD2E0, &qword_1EB6E4D18, &qword_1B0EC9BF8, &unk_1B0EC1070);
  v15 = swift_allocObject();
  *a2 = v15;
  sub_1B0B11BF0(&v33, v15 + 16);
  *(v15 + 136) = v9;
  *(v15 + 144) = v9;
  *(a2 + 40) = 0;
  return sub_1B0B11C28(&v33);
}

uint64_t sub_1B03AFA74()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 40);

  if (*(v0 + 104))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1B03AFAE8()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03AFB48()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03AFBB0()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B03AFC10()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1B03AFC68()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 24);

  return swift_deallocObject();
}

void sub_1B03AFCC0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 184);
  v4 = *(a1 + 216);
  v37 = *(a1 + 200);
  v38[0] = v4;
  *(v38 + 12) = *(a1 + 228);
  v35 = *(a1 + 168);
  v36 = v3;
  v5 = sub_1B03AFF44();
  v6 = v5;
  v28 = a1;
  v7 = *(a1 + 64);
  v8 = v7 + 64;
  v9 = 1 << *(v7 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v7 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v5 + 56;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v14 = 0;
  v15 = MEMORY[0x1E69E7CC0];
  v30 = v6;
  v31 = v7;
  while (1)
  {
    v16 = v14;
    if (!v11)
    {
      break;
    }

LABEL_9:
    v17 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v18 = *(*(v7 + 48) + ((v14 << 8) | (4 * v17)));
    if (*(v6 + 16) && (sub_1B0E46C28(), sub_1B0E46C88(), v19 = sub_1B0E46CB8(), v20 = -1 << *(v6 + 32), v21 = v19 & ~v20, ((*(v13 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) != 0))
    {
      v22 = ~v20;
      while (*(*(v6 + 48) + 4 * v21) != v18)
      {
        v21 = (v21 + 1) & v22;
        if (((*(v13 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
LABEL_14:
      v34 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B0B0A384(0, *(v15 + 16) + 1, 1);
        v15 = v34;
      }

      v24 = *(v15 + 16);
      v23 = *(v15 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1B0B0A384((v23 > 1), v24 + 1, 1);
        v15 = v34;
      }

      *(v15 + 16) = v24 + 1;
      *(v15 + 4 * v24 + 32) = v18;
      v6 = v30;
      v7 = v31;
    }
  }

  while (1)
  {
    v14 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      return;
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v14);
    ++v16;
    if (v11)
    {
      goto LABEL_9;
    }
  }

  sub_1B03B02F4(v28);

  v25 = sub_1B03B03C8(v15);

  sub_1B03B03FC(v25, v32);
  if (*&v32[0])
  {
    v26 = v32[3];
    *(a2 + 32) = v32[2];
    *(a2 + 48) = v26;
    *(a2 + 64) = v33;
    v27 = v32[1];
    *a2 = v32[0];
    *(a2 + 16) = v27;
  }

  else
  {
    sub_1B03B0510(v32);
    *(a2 + 64) = 0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }
}

uint64_t sub_1B03AFF44()
{
  v1 = *v0;
  if (v0[3])
  {
    v2 = MEMORY[0x1E69E7CD0];
    v17 = MEMORY[0x1E69E7CD0];
    v3 = *(v1 + 16);
    if (v3)
    {
      v4 = v1 + 168;
      do
      {
        v4 += 176;
        v5 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B03B00C8(v5);
        --v3;
      }

      while (v3);
      v6 = v17;
    }

    else
    {
      v6 = MEMORY[0x1E69E7CD0];
    }

    v9 = v0[4];
    v10 = 1 << *(v9 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v9 + 64);
    v13 = (v10 + 63) >> 6;
    result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v14 = 0;
    if (v12)
    {
      goto LABEL_18;
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return result;
      }

      if (v15 >= v13)
      {
        break;
      }

      v12 = *(v9 + 64 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        do
        {
LABEL_18:
          v12 &= v12 - 1;
          v16 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          result = sub_1B03B00C8(v16);
        }

        while (v12);
        continue;
      }
    }

    return sub_1B03B01EC(v2, v6);
  }

  else
  {
    v7 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    return sub_1B0B37DA8(v7);
  }
}

uint64_t sub_1B03B00E4(uint64_t result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v7 = result;
  v8 = 0;
  v9 = result + 56;
  v10 = 1 << *(result + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(result + 56);
  v13 = (v10 + 63) >> 6;
  if (v12)
  {
    while (1)
    {
      v14 = v8;
LABEL_9:
      v15 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      result = sub_1B03FF4C0(v16, *(*(v7 + 48) + ((v14 << 8) | (4 * v15))), a2, a3, a4);
      if (!v12)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v14 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return result;
    }

    if (v14 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v14);
    ++v8;
    if (v12)
    {
      v8 = v14;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1B03B0204(uint64_t result, uint64_t a2, uint64_t (*a3)(char *, void))
{
  v4 = result;
  v5 = 0;
  v14 = a2;
  v6 = result + 56;
  v7 = 1 << *(result + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(result + 56);
  for (i = (v7 + 63) >> 6; v9; result = a3(v13, *(*(v4 + 48) + ((v11 << 8) | (4 * v12)))))
  {
    v11 = v5;
LABEL_9:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
  }

  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v11 >= i)
    {

      return v14;
    }

    v9 = *(v6 + 8 * v11);
    ++v5;
    if (v9)
    {
      v5 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B03B0348(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(_BYTE *, void))
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x1B2727570](v7, a3, v8);
  v13 = result;
  if (v7)
  {
    v10 = (a1 + 32);
    do
    {
      v11 = *v10++;
      a4(v12, v11);
      --v7;
    }

    while (v7);
    return v13;
  }

  return result;
}

double sub_1B03B03FC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5[0] = &type metadata for NotifySyncRequestCompletion;
  sub_1B0E461E8();
  v5[6] = 0xD00000000000001BLL;
  v5[7] = 0x80000001B0EC73F0;
  if (*(a1 + 16))
  {
    v5[8] = a1;
    sub_1B0B6351C(v5, a2);
    sub_1B0B63554(v5);
  }

  else
  {

    sub_1B03B04BC(v5);
    *(a2 + 64) = 0;
    result = 0.0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1B03B0510(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4A18, &unk_1B0EC7400);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B03B0578(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1B03B05C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

void *sub_1B03B0648(char *a1, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a1 >= &a3[a2] || a3 >= &a1[a2])
    {
      return memcpy(a3, a1, a2);
    }

    sub_1B0E466C8();
    __break(1u);
  }

  result = sub_1B0E466C8();
  __break(1u);
  return result;
}

uint64_t OpaqueMailboxID.init(_:)(uint64_t a1, unint64_t a2)
{
  sub_1B03B2000(a1, a2);
  sub_1B03B207C(a1, a2);
  v5 = v4;
  sub_1B0E46CC8();
  sub_1B0E46C38();
  sub_1B0E46CA8();
  sub_1B0391D50(a1, a2);
  return v5;
}

unint64_t sub_1B03B08D4()
{
  v2 = qword_1EB6DB380;
  if (!qword_1EB6DB380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E33E8, &qword_1B0EA1CB8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB380);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B03B095C()
{
  v2 = qword_1EB6DB390;
  if (!qword_1EB6DB390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E33E8, &qword_1B0EA1CB8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB390);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B03B09E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B03B0A20(uint64_t a1, uint64_t a2)
{
  v14 = a2;
  v16 = a1;
  v21 = 0;
  v15 = 0;
  v19 = a1;
  v20 = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v17 = sub_1B0E452A8();

  if (v17 == 8)
  {
    v2 = v15;
    v21 = 0;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v12 = &v7;
    MEMORY[0x1EEE9AC00](&v7);
    v6[2] = v16;
    v6[3] = v3;
    sub_1B03B0BBC(&v21, sub_1B03B0D84, v6, MEMORY[0x1E69E7360], MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], v4, v18);
    v13 = v2;

    v8 = v21;

    v9 = v8;
    v10 = 0;
    v11 = v13;
  }

  else
  {

    v9 = 0;
    v10 = 1;
    v11 = v15;
  }

  return v9;
}

uint64_t sub_1B03B0BBC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v12[2] = a8;
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a5;
  v18 = a7;
  v19 = "Fatal error";
  v20 = "UnsafeMutableRawBufferPointer with negative count";
  v21 = "Swift/UnsafeRawBufferPointer.swift";
  v29 = a4;
  v28 = a5;
  v27 = a6;
  v22 = *(a5 - 8);
  v23 = a5 - 8;
  v24 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](a1);
  v25 = v12 - v24;
  v26 = *(*(v9 - 8) + 64);
  if (v26 < 0)
  {
    result = sub_1B0E466C8();
    __break(1u);
  }

  else
  {
    v10 = v17;
    result = (v14)(v13, v13 + v26, v25, v8);
    v12[1] = v10;
    if (v10)
    {
      return (*(v22 + 32))(v18, v25, v16);
    }
  }

  return result;
}

uint64_t sub_1B03B0DBC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1B03B0E24(uint64_t a1)
{
  v6[1] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3460, &qword_1B0EA1F70);
  v1 = sub_1B039D36C();
  v6[0] = sub_1B039CA88(sub_1B03B0F60, 0, v4, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v1, MEMORY[0x1E69E7410], v5);
  sub_1B0E44838();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B03B11C4();
  v3 = sub_1B0E448E8();

  sub_1B039E440(v6);
  return v3;
}

uint64_t sub_1B03B0F60@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v9 = 0;
  v9 = *a1;
  v8[0] = sub_1B0E46A28();
  v8[1] = v2;
  v3 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v3);

  sub_1B03B1E80();
  sub_1B0E469F8();
  v4 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v4);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v8);
  result = sub_1B0E44C88();
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t MailboxRowID.description.getter()
{
  v4[2] = 0;
  v4[0] = sub_1B0E46A28();
  v4[1] = v0;
  v1 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v1);

  sub_1B0E469F8();
  v2 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v2);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v4);
  return sub_1B0E44C88();
}

unint64_t sub_1B03B11C4()
{
  v2 = qword_1EB6DB070;
  if (!qword_1EB6DB070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB070);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B03B1258()
{
  v2 = qword_1EB6DCC08;
  if (!qword_1EB6DCC08)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DCC08);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B03B12D0(uint64_t *a1, uint64_t *a2)
{
  if (a1[1] == a2[1])
  {
    return sub_1B04520BC(*a1, *a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B03B12F4(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v2);
  return sub_1B0E46CB8();
}

uint64_t block_destroy_helper_14(uint64_t a1)
{
}

{
}

void *sub_1B03B1374(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B03B1738(MEMORY[0x1E69E7CC0]);
  v5 = 0;
  v6 = *(a2 + 16);
  v7 = a2 + 40;
LABEL_2:
  v8 = (v7 + 16 * v5);
  v9 = v5;
  while (v6 != v9)
  {
    v10 = v9;
    if (v9 >= v6)
    {
      goto LABEL_45;
    }

    v5 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_46;
    }

    v11 = *(v8 - 1);
    v12 = *v8;
    if (v4[2])
    {
      sub_1B03B8A9C(*(v8 - 1), *v8);
      v9 = v10 + 1;
      v8 += 2;
      if (v13)
      {
        continue;
      }
    }

    v14 = v10;
    if (v10 >= 0x3FFFu)
    {
      v14 = 0x3FFF;
    }

    v15 = v14 | 0x8000;
    if (v10 < 0x10000)
    {
      v16 = v15;
    }

    else
    {
      v16 = -16385;
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = sub_1B03B8A9C(v11, v12);
    v20 = v4[2];
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
      goto LABEL_49;
    }

    v24 = v19;
    if (v4[3] >= v23)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_18;
      }

      v27 = v18;
      sub_1B0B8DFD0();
      v18 = v27;
      if (v24)
      {
LABEL_19:
        v26 = v18;

        *(v4[7] + 2 * v26) = v16;
        goto LABEL_2;
      }
    }

    else
    {
      sub_1B03B1854(v23, isUniquelyReferenced_nonNull_native);
      v18 = sub_1B03B8A9C(v11, v12);
      if ((v24 & 1) != (v25 & 1))
      {
        goto LABEL_51;
      }

LABEL_18:
      if (v24)
      {
        goto LABEL_19;
      }
    }

    v4[(v18 >> 6) + 8] |= 1 << v18;
    v28 = (v4[6] + 16 * v18);
    *v28 = v11;
    v28[1] = v12;
    *(v4[7] + 2 * v18) = v16;
    v29 = v4[2];
    v22 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (v22)
    {
      goto LABEL_50;
    }

    v4[2] = v30;
    goto LABEL_2;
  }

  v31 = 1 << *(a1 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(a1 + 56);
  v34 = (v31 + 63) >> 6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v35 = 0;
  v36 = 0;
  while (v33)
  {
LABEL_33:
    v40 = (*(a1 + 48) + ((v36 << 10) | (16 * __clz(__rbit64(v33)))));
    v41 = *v40;
    v42 = v40[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03B1AF0(v35, 0);
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v38 = sub_1B03B8A9C(v41, v42);
    v45 = v4[2];
    v46 = (v44 & 1) == 0;
    v22 = __OFADD__(v45, v46);
    v47 = v45 + v46;
    if (v22)
    {
      goto LABEL_47;
    }

    v48 = v44;
    if (v4[3] < v47)
    {
      sub_1B03B1854(v47, v43);
      v38 = sub_1B03B8A9C(v41, v42);
      if ((v48 & 1) != (v49 & 1))
      {
        goto LABEL_51;
      }

LABEL_38:
      if (v48)
      {
        goto LABEL_26;
      }

      goto LABEL_39;
    }

    if (v43)
    {
      goto LABEL_38;
    }

    v53 = v38;
    sub_1B0B8DFD0();
    v38 = v53;
    if (v48)
    {
LABEL_26:
      v37 = v38;

      v38 = v37;
      goto LABEL_27;
    }

LABEL_39:
    v4[(v38 >> 6) + 8] |= 1 << v38;
    v50 = (v4[6] + 16 * v38);
    *v50 = v41;
    v50[1] = v42;
    *(v4[7] + 2 * v38) = -16385;
    v51 = v4[2];
    v22 = __OFADD__(v51, 1);
    v52 = v51 + 1;
    if (v22)
    {
      goto LABEL_48;
    }

    v4[2] = v52;
LABEL_27:
    v33 &= v33 - 1;
    *(v4[7] + 2 * v38) &= ~0x8000u;
    v35 = sub_1B0B245AC;
  }

  while (1)
  {
    v39 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v39 >= v34)
    {

      sub_1B03B1AF0(v35, 0);
      return v4;
    }

    v33 = *(a1 + 56 + 8 * v39);
    ++v36;
    if (v33)
    {
      v36 = v39;
      goto LABEL_33;
    }
  }

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
  result = sub_1B0E46BA8();
  __break(1u);
  return result;
}

void *sub_1B03B1738(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E47D0, &qword_1B0EC5EB0);
  v3 = sub_1B0E466A8();
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = sub_1B03B8A9C(v5, v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = (v3[6] + 16 * v9);
    *v12 = result;
    v12[1] = v4;
    *(v3[7] + 2 * v9) = v6;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 12;
    v17 = *(v11 - 2);
    v4 = *(v11 - 1);
    v6 = *v11;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v9 = sub_1B03B8A9C(v17, v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B03B1854(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E47D0, &qword_1B0EC5EB0);
  v34 = v4;
  result = sub_1B0E46698();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 2 * v20);
      if ((v34 & 1) == 0)
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }

      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v23);
      result = sub_1B0E46CB8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 2 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1B03B1AF0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B03B1B00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B03B1B68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B03B1BD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B03B1C38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B03B1CA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B03B1D00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B03B1D60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B03B1DC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B03B1E20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B03B1E80()
{
  v2 = qword_1EB6DBFF0;
  if (!qword_1EB6DBFF0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBFF0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B03B1F2C(uint64_t a1, uint64_t a2)
{

  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;

  return a1;
}

uint64_t sub_1B03B1F98@<X0>(uint64_t *a3@<X8>)
{
  result = sub_1B0E43008();
  *a3 = result;
  a3[1] = v4;
  return result;
}

uint64_t sub_1B03B2000(uint64_t result, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return v2;
}

void sub_1B03B207C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B0E42FC8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
LABEL_12:
      sub_1B0391D50(a1, a2);
      return;
    }

    v11 = *(a1 + 16);
    v10 = *(a1 + 24);
    v9 = v10 - v11;
    if (!__OFSUB__(v10, v11))
    {
      if (v9)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v8)
    {
      goto LABEL_10;
    }

    v9 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      sub_1B03B7A3C(v9, 0);
      v12 = sub_1B0E42EB8();
      sub_1B0391D50(a1, a2);
      v13 = *(v5 + 8);
      v5 += 8;
      v13(v7, v4);
      if (v12 == v9)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v14 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v9 = v14;
      if (!v14)
      {
        goto LABEL_12;
      }
    }
  }
}

void sub_1B03B21F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v429 = a1;
  v428 = a2;
  v426 = a3;
  v427 = a4;
  v355 = sub_1B03B59F8;
  v356 = sub_1B039BBE8;
  v357 = sub_1B0394C30;
  v358 = sub_1B0394C24;
  v359 = sub_1B039BA2C;
  v360 = sub_1B039BA88;
  v361 = sub_1B039BB94;
  v362 = sub_1B0394C24;
  v363 = sub_1B039BBA0;
  v364 = sub_1B039BC08;
  v365 = sub_1B03B0DB4;
  v366 = sub_1B03B0DF8;
  v367 = sub_1B03B0F58;
  v368 = sub_1B039BCF8;
  v369 = sub_1B0398F5C;
  v370 = sub_1B0398F5C;
  v371 = sub_1B0399178;
  v372 = sub_1B0398F5C;
  v373 = sub_1B0398F5C;
  v374 = sub_1B039BA94;
  v375 = sub_1B0398F5C;
  v376 = sub_1B0398F5C;
  v377 = sub_1B0399178;
  v378 = sub_1B0398F5C;
  v379 = sub_1B0398F5C;
  v380 = sub_1B03991EC;
  v381 = sub_1B0398F5C;
  v382 = sub_1B0398F5C;
  v383 = sub_1B0399260;
  v384 = sub_1B0398F5C;
  v385 = sub_1B0398F5C;
  v386 = sub_1B039BCEC;
  v387 = sub_1B03B59F8;
  v388 = sub_1B039BBE8;
  v389 = sub_1B0394C24;
  v390 = sub_1B039BA2C;
  v391 = sub_1B039BA88;
  v392 = sub_1B0394C24;
  v393 = sub_1B039BBA0;
  v394 = sub_1B039BC08;
  v395 = sub_1B03B0DB4;
  v396 = sub_1B03B0DF8;
  v397 = sub_1B03B0F58;
  v398 = sub_1B039BCF8;
  v399 = sub_1B0398F5C;
  v400 = sub_1B0398F5C;
  v401 = sub_1B0399178;
  v402 = sub_1B0398F5C;
  v403 = sub_1B0398F5C;
  v404 = sub_1B039BA94;
  v405 = sub_1B0398F5C;
  v406 = sub_1B0398F5C;
  v407 = sub_1B0399178;
  v408 = sub_1B0398F5C;
  v409 = sub_1B0398F5C;
  v410 = sub_1B03991EC;
  v411 = sub_1B0398F5C;
  v412 = sub_1B0398F5C;
  v413 = sub_1B0399260;
  v414 = sub_1B0398F5C;
  v415 = sub_1B0398F5C;
  v416 = sub_1B039BCEC;
  v470 = 0;
  v469 = 0;
  v467 = 0;
  v468 = 0;
  v466 = 0;
  v417 = 0;
  v462 = 0;
  v461 = 0;
  v456 = 0;
  v457 = 0;
  v443 = 0;
  v418 = 0;
  v419 = sub_1B0E439A8();
  v420 = *(v419 - 8);
  v421 = v419 - 8;
  v422 = (*(v420 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v423 = &v166 - v422;
  v424 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v425 = &v166 - v424;
  v430 = _s6LoggerVMa(v7);
  v431 = (*(*(v430 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v429);
  v432 = &v166 - v431;
  v433 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v434 = &v166 - v433;
  v435 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v436 = &v166 - v435;
  v470 = v12;
  v469 = v13;
  v467 = v14;
  v468 = v15;
  v466 = v4;
  v465 = v12;
  v437 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E33E8, &qword_1B0EA1CB8);
  sub_1B03B08D4();
  if (sub_1B0E45748())
  {
    v86 = v417;
    v270 = (v354 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_userVisibleMailboxes);
    v271 = &v464;
    v273 = 0;
    swift_beginAccess();
    v272 = *v270;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_endAccess();
    v463 = v272;
    sub_1B03B095C();
    v87 = sub_1B0E44F58();
    v274 = v86;
    v275 = v87;
    if (!v86)
    {
      v88 = v423;
      v230 = v275;
      sub_1B039E440(&v463);
      v462 = v230;
      v225 = &unk_1EB737000;
      sub_1B0394784(v354 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v432);
      (*(v420 + 16))(v88, v432, v419);
      sub_1B039480C(v432);

      sub_1B0394784(v354 + v225[314], v434);
      v89 = (v434 + *(v430 + 20));
      v226 = *v89;
      v227 = *(v89 + 1);
      sub_1B039480C(v434);

      v229 = 24;
      v244 = 7;
      v90 = swift_allocObject();
      v91 = v227;
      v232 = v90;
      *(v90 + 16) = v226;
      *(v90 + 20) = v91;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v92 = swift_allocObject();
      v93 = v227;
      v228 = v92;
      *(v92 + 16) = v226;
      *(v92 + 20) = v93;

      v243 = 32;
      v94 = swift_allocObject();
      v95 = v228;
      v237 = v94;
      *(v94 + 16) = v356;
      *(v94 + 24) = v95;
      sub_1B0394868();
      sub_1B0394868();

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v239 = swift_allocObject();
      *(v239 + 16) = v230;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v245 = swift_allocObject();
      *(v245 + 16) = v230;
      v268 = sub_1B0E43988();
      v269 = sub_1B0E45908();
      v241 = 17;
      v247 = swift_allocObject();
      v234 = 16;
      *(v247 + 16) = 16;
      v248 = swift_allocObject();
      v236 = 4;
      *(v248 + 16) = 4;
      v96 = swift_allocObject();
      v231 = v96;
      *(v96 + 16) = v357;
      *(v96 + 24) = 0;
      v97 = swift_allocObject();
      v98 = v231;
      v249 = v97;
      *(v97 + 16) = v358;
      *(v97 + 24) = v98;
      v250 = swift_allocObject();
      *(v250 + 16) = 0;
      v251 = swift_allocObject();
      *(v251 + 16) = 1;
      v99 = swift_allocObject();
      v100 = v232;
      v233 = v99;
      *(v99 + 16) = v359;
      *(v99 + 24) = v100;
      v101 = swift_allocObject();
      v102 = v233;
      v252 = v101;
      *(v101 + 16) = v360;
      *(v101 + 24) = v102;
      v253 = swift_allocObject();
      *(v253 + 16) = v234;
      v254 = swift_allocObject();
      *(v254 + 16) = v236;
      v103 = swift_allocObject();
      v235 = v103;
      *(v103 + 16) = v361;
      *(v103 + 24) = 0;
      v104 = swift_allocObject();
      v105 = v235;
      v255 = v104;
      *(v104 + 16) = v362;
      *(v104 + 24) = v105;
      v256 = swift_allocObject();
      *(v256 + 16) = 0;
      v257 = swift_allocObject();
      *(v257 + 16) = v236;
      v106 = swift_allocObject();
      v107 = v237;
      v238 = v106;
      *(v106 + 16) = v363;
      *(v106 + 24) = v107;
      v108 = swift_allocObject();
      v109 = v238;
      v258 = v108;
      *(v108 + 16) = v364;
      *(v108 + 24) = v109;
      v259 = swift_allocObject();
      *(v259 + 16) = 0;
      v260 = swift_allocObject();
      v242 = 8;
      *(v260 + 16) = 8;
      v110 = swift_allocObject();
      v111 = v239;
      v240 = v110;
      *(v110 + 16) = v365;
      *(v110 + 24) = v111;
      v112 = swift_allocObject();
      v113 = v240;
      v261 = v112;
      *(v112 + 16) = v366;
      *(v112 + 24) = v113;
      v262 = swift_allocObject();
      *(v262 + 16) = 32;
      v263 = swift_allocObject();
      *(v263 + 16) = v242;
      v114 = swift_allocObject();
      v115 = v245;
      v246 = v114;
      *(v114 + 16) = v367;
      *(v114 + 24) = v115;
      v116 = swift_allocObject();
      v117 = v246;
      v265 = v116;
      *(v116 + 16) = v368;
      *(v116 + 24) = v117;
      v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v264 = sub_1B0E46A48();
      v266 = v118;

      v119 = v247;
      v120 = v266;
      *v266 = v369;
      v120[1] = v119;

      v121 = v248;
      v122 = v266;
      v266[2] = v370;
      v122[3] = v121;

      v123 = v249;
      v124 = v266;
      v266[4] = v371;
      v124[5] = v123;

      v125 = v250;
      v126 = v266;
      v266[6] = v372;
      v126[7] = v125;

      v127 = v251;
      v128 = v266;
      v266[8] = v373;
      v128[9] = v127;

      v129 = v252;
      v130 = v266;
      v266[10] = v374;
      v130[11] = v129;

      v131 = v253;
      v132 = v266;
      v266[12] = v375;
      v132[13] = v131;

      v133 = v254;
      v134 = v266;
      v266[14] = v376;
      v134[15] = v133;

      v135 = v255;
      v136 = v266;
      v266[16] = v377;
      v136[17] = v135;

      v137 = v256;
      v138 = v266;
      v266[18] = v378;
      v138[19] = v137;

      v139 = v257;
      v140 = v266;
      v266[20] = v379;
      v140[21] = v139;

      v141 = v258;
      v142 = v266;
      v266[22] = v380;
      v142[23] = v141;

      v143 = v259;
      v144 = v266;
      v266[24] = v381;
      v144[25] = v143;

      v145 = v260;
      v146 = v266;
      v266[26] = v382;
      v146[27] = v145;

      v147 = v261;
      v148 = v266;
      v266[28] = v383;
      v148[29] = v147;

      v149 = v262;
      v150 = v266;
      v266[30] = v384;
      v150[31] = v149;

      v151 = v263;
      v152 = v266;
      v266[32] = v385;
      v152[33] = v151;

      v153 = v265;
      v154 = v266;
      v266[34] = v386;
      v154[35] = v153;
      sub_1B0394964();

      if (os_log_type_enabled(v268, v269))
      {
        v155 = v274;
        v218 = sub_1B0E45D78();
        v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v219 = sub_1B03949A8(0, v217, v217);
        v220 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v221 = &v451;
        v451 = v218;
        v222 = &v450;
        v450 = v219;
        v223 = &v449;
        v449 = v220;
        sub_1B0394A48(2, &v451);
        sub_1B0394A48(6, v221);
        v447 = v369;
        v448 = v247;
        sub_1B03949FC(&v447, v221, v222, v223);
        v224 = v155;
        if (v155)
        {

          __break(1u);
        }

        else
        {
          v447 = v370;
          v448 = v248;
          sub_1B03949FC(&v447, &v451, &v450, &v449);
          v216 = 0;
          v447 = v371;
          v448 = v249;
          sub_1B03949FC(&v447, &v451, &v450, &v449);
          v215 = 0;
          v447 = v372;
          v448 = v250;
          sub_1B03949FC(&v447, &v451, &v450, &v449);
          v214 = 0;
          v447 = v373;
          v448 = v251;
          sub_1B03949FC(&v447, &v451, &v450, &v449);
          v213 = 0;
          v447 = v374;
          v448 = v252;
          sub_1B03949FC(&v447, &v451, &v450, &v449);
          v212 = 0;
          v447 = v375;
          v448 = v253;
          sub_1B03949FC(&v447, &v451, &v450, &v449);
          v211 = 0;
          v447 = v376;
          v448 = v254;
          sub_1B03949FC(&v447, &v451, &v450, &v449);
          v210 = 0;
          v447 = v377;
          v448 = v255;
          sub_1B03949FC(&v447, &v451, &v450, &v449);
          v209 = 0;
          v447 = v378;
          v448 = v256;
          sub_1B03949FC(&v447, &v451, &v450, &v449);
          v208 = 0;
          v447 = v379;
          v448 = v257;
          sub_1B03949FC(&v447, &v451, &v450, &v449);
          v207 = 0;
          v447 = v380;
          v448 = v258;
          sub_1B03949FC(&v447, &v451, &v450, &v449);
          v206 = 0;
          v447 = v381;
          v448 = v259;
          sub_1B03949FC(&v447, &v451, &v450, &v449);
          v205 = 0;
          v447 = v382;
          v448 = v260;
          sub_1B03949FC(&v447, &v451, &v450, &v449);
          v204 = 0;
          v447 = v383;
          v448 = v261;
          sub_1B03949FC(&v447, &v451, &v450, &v449);
          v203 = 0;
          v447 = v384;
          v448 = v262;
          sub_1B03949FC(&v447, &v451, &v450, &v449);
          v202 = 0;
          v447 = v385;
          v448 = v263;
          sub_1B03949FC(&v447, &v451, &v450, &v449);
          v201 = 0;
          v447 = v386;
          v448 = v265;
          sub_1B03949FC(&v447, &v451, &v450, &v449);
          _os_log_impl(&dword_1B0389000, v268, v269, "[%.*hhx-%.*X] Got an empty list of user-visible mailbox row IDs. Keeping previous (%ld): [%s]", v218, 0x2Bu);
          sub_1B03998A8(v219, 0, v217);
          sub_1B03998A8(v220, 1, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v268);
      (*(v420 + 8))(v423, v419);

LABEL_16:
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if (v426)
      {
        v199 = v426;
        v200 = v427;
        v194 = v427;
        v195 = v426;
        v456 = v426;
        v457 = v427;
        v455[2] = v428;
        v197 = v455;
        v455[0] = v426;
        v455[1] = v427;
        v196 = sub_1B03B095C();
        v198 = sub_1B03B1258();
        v156 = sub_1B0E450A8();
        if ((v156 & 1) == 0)
        {
          v189 = (v354 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_userVisibleMailboxes);
          v190 = &v454;
          swift_beginAccess();
          v191 = *v189;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          swift_endAccess();
          v192 = &v453;
          v453 = v191;
          v452[3] = v195;
          v452[4] = v194;
          v193 = sub_1B0E450A8();
          sub_1B039E440(v192);
          if ((v193 & 1) == 0)
          {
            v179 = (v354 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_userVisibleMailboxes);
            v180 = v452;
            swift_beginAccess();
            v181 = *v179;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            swift_endAccess();
            v184 = &type metadata for OpaqueMailboxID;
            v186 = sub_1B0E45238();

            v182 = sub_1B0E46A48();
            v183 = v157;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v158 = v183;
            v159 = v194;
            *v183 = v195;
            v158[1] = v159;
            sub_1B0394964();
            v185 = v160;
            v187 = sub_1B0E45238();

            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v461 = v187;

            v188 = v187;
LABEL_24:
            v161 = v354;
            v172 = v188;
            v166 = 32;
            v173 = swift_allocObject();
            v167 = (v161 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_userVisibleMailboxes);
            v168 = &v459;
            swift_beginAccess();
            v169 = *v167;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            swift_endAccess();
            v171 = &v458;
            v458 = v169;
            v170 = sub_1B03B8BD8();
            sub_1B03B095C();
            sub_1B0E45598();
            MailboxPriorityInfo.init(userVisibleMailboxes:mailboxPriorityOrder:)();
            v163 = v162;
            v164 = v173;
            *(v173 + 16) = v163;
            *(v164 + 24) = v165;
            v174 = v164 | 0x2000000000000004;
            sub_1B039C1F8(v164 | 0x2000000000000004);

            sub_1B039E440(&v461);
            return;
          }
        }
      }

      v175 = (v354 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_userVisibleMailboxes);
      v176 = &v460;
      swift_beginAccess();
      v177 = *v175;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      swift_endAccess();
      v178 = sub_1B0E45238();

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v461 = v178;
      v188 = v178;
      goto LABEL_24;
    }
  }

  else
  {
    v16 = v417;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v347 = &unk_1EB737000;
    v345 = (v354 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_userVisibleMailboxes);
    v346 = &v446;
    v351 = 0;
    swift_beginAccess();
    *v345 = v429;

    swift_endAccess();
    v348 = (v354 + v347[318]);
    v349 = &v445;
    swift_beginAccess();
    v350 = *v348;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_endAccess();
    v444 = v350;
    sub_1B03B095C();
    v17 = sub_1B0E44F58();
    v352 = v16;
    v353 = v17;
    if (!v16)
    {
      v18 = v425;
      v305 = v353;
      sub_1B039E440(&v444);
      v443 = v305;
      v300 = &unk_1EB737000;
      sub_1B0394784(v354 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v436);
      (*(v420 + 16))(v18, v436, v419);
      sub_1B039480C(v436);

      sub_1B0394784(v354 + v300[314], v434);
      v19 = (v434 + *(v430 + 20));
      v301 = *v19;
      v302 = *(v19 + 1);
      sub_1B039480C(v434);

      v304 = 24;
      v319 = 7;
      v20 = swift_allocObject();
      v21 = v302;
      v307 = v20;
      *(v20 + 16) = v301;
      *(v20 + 20) = v21;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v22 = swift_allocObject();
      v23 = v302;
      v303 = v22;
      *(v22 + 16) = v301;
      *(v22 + 20) = v23;

      v318 = 32;
      v24 = swift_allocObject();
      v25 = v303;
      v312 = v24;
      *(v24 + 16) = v388;
      *(v24 + 24) = v25;
      sub_1B0394868();
      sub_1B0394868();

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v314 = swift_allocObject();
      *(v314 + 16) = v305;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v320 = swift_allocObject();
      *(v320 + 16) = v305;
      v343 = sub_1B0E43988();
      v344 = sub_1B0E45908();
      v316 = 17;
      v322 = swift_allocObject();
      v309 = 16;
      *(v322 + 16) = 16;
      v323 = swift_allocObject();
      v311 = 4;
      *(v323 + 16) = 4;
      v26 = swift_allocObject();
      v306 = v26;
      *(v26 + 16) = v357;
      *(v26 + 24) = 0;
      v27 = swift_allocObject();
      v28 = v306;
      v324 = v27;
      *(v27 + 16) = v389;
      *(v27 + 24) = v28;
      v325 = swift_allocObject();
      *(v325 + 16) = 0;
      v326 = swift_allocObject();
      *(v326 + 16) = 1;
      v29 = swift_allocObject();
      v30 = v307;
      v308 = v29;
      *(v29 + 16) = v390;
      *(v29 + 24) = v30;
      v31 = swift_allocObject();
      v32 = v308;
      v327 = v31;
      *(v31 + 16) = v391;
      *(v31 + 24) = v32;
      v328 = swift_allocObject();
      *(v328 + 16) = v309;
      v329 = swift_allocObject();
      *(v329 + 16) = v311;
      v33 = swift_allocObject();
      v310 = v33;
      *(v33 + 16) = v361;
      *(v33 + 24) = 0;
      v34 = swift_allocObject();
      v35 = v310;
      v330 = v34;
      *(v34 + 16) = v392;
      *(v34 + 24) = v35;
      v331 = swift_allocObject();
      *(v331 + 16) = 0;
      v332 = swift_allocObject();
      *(v332 + 16) = v311;
      v36 = swift_allocObject();
      v37 = v312;
      v313 = v36;
      *(v36 + 16) = v393;
      *(v36 + 24) = v37;
      v38 = swift_allocObject();
      v39 = v313;
      v333 = v38;
      *(v38 + 16) = v394;
      *(v38 + 24) = v39;
      v334 = swift_allocObject();
      *(v334 + 16) = 0;
      v335 = swift_allocObject();
      v317 = 8;
      *(v335 + 16) = 8;
      v40 = swift_allocObject();
      v41 = v314;
      v315 = v40;
      *(v40 + 16) = v395;
      *(v40 + 24) = v41;
      v42 = swift_allocObject();
      v43 = v315;
      v336 = v42;
      *(v42 + 16) = v396;
      *(v42 + 24) = v43;
      v337 = swift_allocObject();
      *(v337 + 16) = 32;
      v338 = swift_allocObject();
      *(v338 + 16) = v317;
      v44 = swift_allocObject();
      v45 = v320;
      v321 = v44;
      *(v44 + 16) = v397;
      *(v44 + 24) = v45;
      v46 = swift_allocObject();
      v47 = v321;
      v340 = v46;
      *(v46 + 16) = v398;
      *(v46 + 24) = v47;
      v342 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v339 = sub_1B0E46A48();
      v341 = v48;

      v49 = v322;
      v50 = v341;
      *v341 = v399;
      v50[1] = v49;

      v51 = v323;
      v52 = v341;
      v341[2] = v400;
      v52[3] = v51;

      v53 = v324;
      v54 = v341;
      v341[4] = v401;
      v54[5] = v53;

      v55 = v325;
      v56 = v341;
      v341[6] = v402;
      v56[7] = v55;

      v57 = v326;
      v58 = v341;
      v341[8] = v403;
      v58[9] = v57;

      v59 = v327;
      v60 = v341;
      v341[10] = v404;
      v60[11] = v59;

      v61 = v328;
      v62 = v341;
      v341[12] = v405;
      v62[13] = v61;

      v63 = v329;
      v64 = v341;
      v341[14] = v406;
      v64[15] = v63;

      v65 = v330;
      v66 = v341;
      v341[16] = v407;
      v66[17] = v65;

      v67 = v331;
      v68 = v341;
      v341[18] = v408;
      v68[19] = v67;

      v69 = v332;
      v70 = v341;
      v341[20] = v409;
      v70[21] = v69;

      v71 = v333;
      v72 = v341;
      v341[22] = v410;
      v72[23] = v71;

      v73 = v334;
      v74 = v341;
      v341[24] = v411;
      v74[25] = v73;

      v75 = v335;
      v76 = v341;
      v341[26] = v412;
      v76[27] = v75;

      v77 = v336;
      v78 = v341;
      v341[28] = v413;
      v78[29] = v77;

      v79 = v337;
      v80 = v341;
      v341[30] = v414;
      v80[31] = v79;

      v81 = v338;
      v82 = v341;
      v341[32] = v415;
      v82[33] = v81;

      v83 = v340;
      v84 = v341;
      v341[34] = v416;
      v84[35] = v83;
      sub_1B0394964();

      if (os_log_type_enabled(v343, v344))
      {
        v85 = v352;
        v293 = sub_1B0E45D78();
        v292 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v294 = sub_1B03949A8(0, v292, v292);
        v295 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v296 = &v442;
        v442 = v293;
        v297 = &v441;
        v441 = v294;
        v298 = &v440;
        v440 = v295;
        sub_1B0394A48(2, &v442);
        sub_1B0394A48(6, v296);
        v438 = v399;
        v439 = v322;
        sub_1B03949FC(&v438, v296, v297, v298);
        v299 = v85;
        if (v85)
        {

          __break(1u);
        }

        else
        {
          v438 = v400;
          v439 = v323;
          sub_1B03949FC(&v438, &v442, &v441, &v440);
          v291 = 0;
          v438 = v401;
          v439 = v324;
          sub_1B03949FC(&v438, &v442, &v441, &v440);
          v290 = 0;
          v438 = v402;
          v439 = v325;
          sub_1B03949FC(&v438, &v442, &v441, &v440);
          v289 = 0;
          v438 = v403;
          v439 = v326;
          sub_1B03949FC(&v438, &v442, &v441, &v440);
          v288 = 0;
          v438 = v404;
          v439 = v327;
          sub_1B03949FC(&v438, &v442, &v441, &v440);
          v287 = 0;
          v438 = v405;
          v439 = v328;
          sub_1B03949FC(&v438, &v442, &v441, &v440);
          v286 = 0;
          v438 = v406;
          v439 = v329;
          sub_1B03949FC(&v438, &v442, &v441, &v440);
          v285 = 0;
          v438 = v407;
          v439 = v330;
          sub_1B03949FC(&v438, &v442, &v441, &v440);
          v284 = 0;
          v438 = v408;
          v439 = v331;
          sub_1B03949FC(&v438, &v442, &v441, &v440);
          v283 = 0;
          v438 = v409;
          v439 = v332;
          sub_1B03949FC(&v438, &v442, &v441, &v440);
          v282 = 0;
          v438 = v410;
          v439 = v333;
          sub_1B03949FC(&v438, &v442, &v441, &v440);
          v281 = 0;
          v438 = v411;
          v439 = v334;
          sub_1B03949FC(&v438, &v442, &v441, &v440);
          v280 = 0;
          v438 = v412;
          v439 = v335;
          sub_1B03949FC(&v438, &v442, &v441, &v440);
          v279 = 0;
          v438 = v413;
          v439 = v336;
          sub_1B03949FC(&v438, &v442, &v441, &v440);
          v278 = 0;
          v438 = v414;
          v439 = v337;
          sub_1B03949FC(&v438, &v442, &v441, &v440);
          v277 = 0;
          v438 = v415;
          v439 = v338;
          sub_1B03949FC(&v438, &v442, &v441, &v440);
          v276 = 0;
          v438 = v416;
          v439 = v340;
          sub_1B03949FC(&v438, &v442, &v441, &v440);
          _os_log_impl(&dword_1B0389000, v343, v344, "[%.*hhx-%.*X] User-visible mailbox row IDs (%ld): [%s]", v293, 0x2Bu);
          sub_1B03998A8(v294, 0, v292);
          sub_1B03998A8(v295, 1, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v343);
      (*(v420 + 8))(v425, v419);

      goto LABEL_16;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1B03B5334()
{

  return swift_deallocObject();
}

uint64_t sub_1B03B59A4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1B03B59F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v5 = a1[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return sub_1B03B5A58(v3, v5, a2);
}

uint64_t sub_1B03B5A58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14 = 0;
  v11 = 0;
  v12 = a1;
  v13 = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v8 = sub_1B03B0A20(a1, a2);
  if (v3 & 1) != 0 || (v11 = v8, MailboxRowID.init(_:)(v8, &v9), (v10))
  {

    *a3 = 0;
    *(a3 + 8) = 1;
  }

  else
  {
    v14 = v9;
    *a3 = v9;
    *(a3 + 8) = 0;
  }

  return result;
}

uint64_t sub_1B03B5B44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9[3] = a1;
  v9[4] = a2;
  v9[1] = a3;
  v9[2] = a4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v9[0] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E21D0, &unk_1B0EA2E70);
  sub_1B03B78F8();
  v8 = sub_1B0E429B8();
  sub_1B039E440(v9);
  result = v8;
  *a5 = v8;
  return result;
}

uint64_t MailboxRowID.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result <= 0)
  {
    *a2 = 0;
    *(a2 + 8) = 1;
  }

  else
  {
    *a2 = result;
    *(a2 + 8) = 0;
  }

  return result;
}

uint64_t sub_1B03B5C80(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1B03B5CE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = a1 + 32;
  result = 1;
  while (v3 != v2)
  {
    v6 = (v4 + 16 * v3);
    v7 = a2 + 32 + 16 * v3;
    if ((*(v6 + 2) | (*(v6 + 2) << 32)) != (*(v7 + 8) | (*(v7 + 8) << 32)))
    {
      return 0;
    }

    v8 = *v6;
    v9 = *v7;
    v10 = *(v8 + 16);
    if (v10 != *(v9 + 16))
    {
      return 0;
    }

    if (v10)
    {
      v11 = v8 == v9;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      v12 = (v8 + 32);
      v13 = (v9 + 32);
      while (v10)
      {
        if (*v12 != *v13)
        {
          return 0;
        }

        ++v12;
        ++v13;
        if (!--v10)
        {
          goto LABEL_5;
        }
      }

      __break(1u);
      break;
    }

LABEL_5:
    if (++v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B03B5DDC(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    sub_1B0E46C28();
    MEMORY[0x1B2728D70](a2 | (a2 << 32));
    v6 = sub_1B0E46CB8();
    v7 = -1 << *(a3 + 32);
    v8 = v6 & ~v7;
    if ((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
    {
      v9 = ~v7;
      do
      {
        v10 = (*(a3 + 48) + 16 * v8);
        if ((v10[2] | (v10[2] << 32)) == (a2 | (a2 << 32)))
        {
          v11 = *v10;
          v12 = *(*v10 + 16);
          if (v12 == *(a1 + 16))
          {
            if (!v12 || v11 == a1)
            {
              return 1;
            }

            v13 = (v11 + 32);
            for (i = (a1 + 32); *v13 == *i; ++i)
            {
              ++v13;
              if (!--v12)
              {
                return 1;
              }
            }
          }
        }

        v8 = (v8 + 1) & v9;
      }

      while (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
    }
  }

  return 0;
}

uint64_t type metadata accessor for MailboxSyncState(uint64_t a1)
{
  result = qword_1EB6DDB08;
  if (!qword_1EB6DDB08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_1B03B5F54(uint64_t a1, uint64_t a2)
{
  v4 = _s13SelectedStateV7WrappedVMa(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28[-v8];
  v10 = *(a1 + 48);
  v31[2] = *(a1 + 32);
  v31[3] = v10;
  v32[0] = *(a1 + 64);
  *(v32 + 9) = *(a1 + 73);
  v11 = *(a1 + 16);
  v31[0] = *a1;
  v31[1] = v11;
  v12 = *(a2 + 48);
  v29[2] = *(a2 + 32);
  v29[3] = v12;
  v30[0] = *(a2 + 64);
  *(v30 + 9) = *(a2 + 73);
  v13 = *(a2 + 16);
  v29[0] = *a2;
  v29[1] = v13;
  if ((static MailboxOfInterest.__derived_struct_equals(_:_:)(v31, v29) & 1) == 0)
  {
    return 0;
  }

  v14 = *(a1 + 96);
  v15 = *(a2 + 96);
  if (v14)
  {
    if (!v15)
    {
      return 0;
    }

    v16 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
    swift_beginAccess();
    sub_1B03D0E68(v14 + v16, v9, _s13SelectedStateV7WrappedVMa);
    v17 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
    swift_beginAccess();
    sub_1B03D0E68(v15 + v17, v6, _s13SelectedStateV7WrappedVMa);
    if (*v9 != *v6 || (sub_1B03D0ED0(v9 + *(v4 + 20), v6 + *(v4 + 20)) & 1) == 0)
    {
LABEL_8:
      sub_1B03D44D0(v6, _s13SelectedStateV7WrappedVMa);
      sub_1B03D44D0(v9, _s13SelectedStateV7WrappedVMa);
      return 0;
    }

    v18 = *(v4 + 24);
    v19 = (v9 + v18);
    v20 = *(v9 + v18 + 4);
    v21 = (v6 + v18);
    v22 = *(v6 + v18 + 4);
    if (v20)
    {
      if (!v22)
      {
        goto LABEL_8;
      }
    }

    else
    {
      if (*v19 != *v21)
      {
        LOBYTE(v22) = 1;
      }

      if (v22)
      {
        goto LABEL_8;
      }
    }

    sub_1B03D44D0(v6, _s13SelectedStateV7WrappedVMa);
    sub_1B03D44D0(v9, _s13SelectedStateV7WrappedVMa);
  }

  else if (v15)
  {
    return 0;
  }

  v24 = *(a1 + 120);
  v25 = *(a2 + 120);
  if (*(a1 + 108))
  {
    if ((*(a2 + 108) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if ((*(a2 + 108) & 1) != 0 || *(a1 + 104) != *(a2 + 104))
    {
      return result;
    }
  }

  if (*(a1 + 128))
  {
    if ((*(a2 + 128) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if ((*(a2 + 128) & 1) != 0 || *(a1 + 112) != *(a2 + 112))
    {
      return result;
    }

    if ((v25 | v24) < 0)
    {
      __break(1u);
      return result;
    }

    if (v25 != v24)
    {
      return 0;
    }
  }

  if ((sub_1B03B6298(*(a1 + 136), *(a2 + 136)) & 1) == 0 || (sub_1B03B6CB4(*(a1 + 144), *(a2 + 144)) & 1) == 0 || (sub_1B03B6408(*(a1 + 152), *(a2 + 152)) & 1) == 0)
  {
    return 0;
  }

  v26 = *(a2 + 160);
  v27 = *(a2 + 168);
  if (!*(a1 + 168))
  {
    result = 0;
    if (*(a2 + 168))
    {
      return result;
    }

    goto LABEL_36;
  }

  if (*(a1 + 168) == 1)
  {
    result = 0;
    if (v27 != 1)
    {
      return result;
    }

LABEL_36:
    if (*(a1 + 160) != v26)
    {
      return result;
    }

    return *(a1 + 172) == *(a2 + 172);
  }

  result = 0;
  if (v27 == 2 && !v26)
  {
    return *(a1 + 172) == *(a2 + 172);
  }

  return result;
}

uint64_t sub_1B03B6298(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + 4 * (v10 | (v4 << 6)));
    sub_1B0E46C28();
    sub_1B0E46C88();
    result = sub_1B0E46CB8();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + 4 * v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
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

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B03B6408(uint64_t a1, uint64_t a2)
{
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v66 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v56 = &v50 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v50 - v6;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41F8, &unk_1B0EC4440);
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v50 - v8;
  MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
  MEMORY[0x1EEE9AC00](MessagesVMa);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s19UserInitiatedSearchV5StateOMa(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v59 = &v50 - v15;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4A38, &unk_1B0ECDE10);
  MEMORY[0x1EEE9AC00](v64);
  v17 = &v50 - v16;
  v63 = _s19UserInitiatedSearchVMa(0);
  MEMORY[0x1EEE9AC00](v63);
  v19 = (&v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v23 = (&v50 - v22);
  v24 = *(a1 + 16);
  if (v24 != *(a2 + 16))
  {
    return 0;
  }

  if (!v24 || a1 == a2)
  {
    return 1;
  }

  v25 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v26 = a1 + v25;
  v67 = a2 + v25;
  v50 = (v66 + 48);
  v51 = v17;
  v54 = *(v21 + 72);
  v55 = v13;
  v27 = v60;
  v52 = &v50 - v22;
  v53 = v19;
  v57 = v10;
  while (1)
  {
    result = sub_1B0B66A7C(v26, v23, _s19UserInitiatedSearchVMa);
    if (!v24)
    {
      break;
    }

    sub_1B0B66A7C(v67, v19, _s19UserInitiatedSearchVMa);
    if (*v23 != *v19)
    {
      goto LABEL_32;
    }

    v65 = v26;
    v66 = v24;
    v29 = v11;
    v30 = *(v63 + 20);
    v31 = &v17[*(v64 + 48)];
    sub_1B0B66A7C(v23 + v30, v17, _s19UserInitiatedSearchV5StateOMa);
    sub_1B0B66A7C(v19 + v30, v31, _s19UserInitiatedSearchV5StateOMa);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B0B66A7C(v17, v13, _s19UserInitiatedSearchV5StateOMa);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_1B0B66AE4(v13, _s19UserInitiatedSearchV13FetchMessagesVMa);
        goto LABEL_26;
      }

      v32 = v57;
      sub_1B0423B48(v31, v57, _s19UserInitiatedSearchV13FetchMessagesVMa);
      sub_1B03D06F8();
      if ((sub_1B0E46E08() & 1) == 0 || (sub_1B0E46E08() & 1) == 0)
      {
        goto LABEL_30;
      }

      v33 = *(MessagesVMa + 24);
      v34 = v13;
      v35 = *(v58 + 48);
      sub_1B0B66738(&v34[v33], v27);
      sub_1B0B66738(v32 + v33, v27 + v35);
      v36 = *v50;
      if ((*v50)(v27, 1, v61) == 1)
      {
        if (v36(v27 + v35, 1, v61) != 1)
        {
          goto LABEL_29;
        }

        sub_1B0398EFC(v27, &qword_1EB6E3920, &qword_1B0E9B070);
        v32 = v57;
        v13 = v55;
        v11 = v29;
      }

      else
      {
        sub_1B0B66738(v27, v7);
        if (v36(v27 + v35, 1, v61) == 1)
        {
          sub_1B0398EFC(v7, &unk_1EB6E1AF0, &unk_1B0E9AF40);
LABEL_29:
          sub_1B0398EFC(v27, &qword_1EB6E41F8, &unk_1B0EC4440);
          v32 = v57;
          v13 = v55;
LABEL_30:
          sub_1B0B66AE4(v32, _s19UserInitiatedSearchV13FetchMessagesVMa);
          sub_1B0B66AE4(v13, _s19UserInitiatedSearchV13FetchMessagesVMa);
LABEL_31:
          sub_1B0B66AE4(v17, _s19UserInitiatedSearchV5StateOMa);
LABEL_32:
          sub_1B0B66AE4(v19, _s19UserInitiatedSearchVMa);
          sub_1B0B66AE4(v23, _s19UserInitiatedSearchVMa);
          return 0;
        }

        v48 = v56;
        sub_1B074BA2C(v27 + v35, v56);
        v49 = sub_1B0E46E08();
        sub_1B0398EFC(v48, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        sub_1B0398EFC(v7, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        sub_1B0398EFC(v27, &qword_1EB6E3920, &qword_1B0E9B070);
        v32 = v57;
        v13 = v55;
        v11 = v29;
        if ((v49 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      sub_1B0B66AE4(v32, _s19UserInitiatedSearchV13FetchMessagesVMa);
      sub_1B0B66AE4(v13, _s19UserInitiatedSearchV13FetchMessagesVMa);
    }

    else
    {
      v37 = v59;
      sub_1B0B66A7C(v17, v59, _s19UserInitiatedSearchV5StateOMa);
      v39 = *v37;
      v38 = *(v37 + 8);
      v40 = *(v37 + 16);
      v41 = *(v37 + 24);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1B0B239C8(v39);

        v23 = v52;
        v19 = v53;
LABEL_26:
        sub_1B0398EFC(v17, &qword_1EB6E4A38, &unk_1B0ECDE10);
        goto LABEL_32;
      }

      v42 = v7;
      v43 = *v31;
      v44 = *(v31 + 8);
      v45 = *(v31 + 16);
      v46 = *(v31 + 24);
      if ((static SearchKey.__derived_enum_equals(_:_:)(v39, v43) & 1) == 0)
      {
        sub_1B0B239C8(v43);

        sub_1B0B239C8(v39);

        v17 = v51;
        v23 = v52;
        v19 = v53;
        goto LABEL_31;
      }

      v47 = static SearchRequest.RangesToExclude.__derived_struct_equals(_:_:)(v38, v40, v41, v44, v45, v46);
      sub_1B0B239C8(v43);

      sub_1B0B239C8(v39);

      v7 = v42;
      v17 = v51;
      v23 = v52;
      v19 = v53;
      v27 = v60;
      v13 = v55;
      v11 = v29;
      if (!v47)
      {
        goto LABEL_31;
      }
    }

    sub_1B0B66AE4(v17, _s19UserInitiatedSearchV5StateOMa);
    sub_1B0B66AE4(v19, _s19UserInitiatedSearchVMa);
    sub_1B0B66AE4(v23, _s19UserInitiatedSearchVMa);
    v67 += v54;
    v26 = v65 + v54;
    v24 = v66 - 1;
    if (v66 == 1)
    {
      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B03B6CB4(uint64_t a1, uint64_t a2)
{
  __s1[2] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2)
  {
    v3 = a2;
    v4 = a1;
    if (a1 != a2)
    {
      for (i = 0; ; i += 40)
      {
        v6 = v4 + i;
        v7 = v3 + i;
        if (*(v4 + i + 32) != *(v3 + i + 32))
        {
          return 0;
        }

        v9 = *(v6 + 40);
        v8 = *(v6 + 48);
        v11 = *(v7 + 40);
        v10 = *(v7 + 48);
        v77 = *(v6 + 56);
        v78 = *(v7 + 56);
        v12 = *(v7 + 64);
        v13 = v8 >> 62;
        v14 = v10 >> 62;
        v75 = v12;
        v76 = *(v6 + 64);
        if (v8 >> 62 == 3)
        {
          break;
        }

        if (v13 > 1)
        {
          if (v13 == 2)
          {
            v25 = *(v9 + 16);
            v24 = *(v9 + 24);
            v22 = __OFSUB__(v24, v25);
            v16 = v24 - v25;
            if (v22)
            {
              goto LABEL_151;
            }

            goto LABEL_27;
          }

          v16 = 0;
          if (v14 <= 1)
          {
            goto LABEL_28;
          }
        }

        else if (v13)
        {
          LODWORD(v16) = HIDWORD(v9) - v9;
          if (__OFSUB__(HIDWORD(v9), v9))
          {
            goto LABEL_152;
          }

          v16 = v16;
          if (v14 <= 1)
          {
LABEL_28:
            if (v14)
            {
              LODWORD(v23) = HIDWORD(v11) - v11;
              if (__OFSUB__(HIDWORD(v11), v11))
              {
                goto LABEL_150;
              }

              v23 = v23;
            }

            else
            {
              v23 = BYTE6(v10);
            }

            goto LABEL_34;
          }
        }

        else
        {
          v16 = BYTE6(v8);
          if (v14 <= 1)
          {
            goto LABEL_28;
          }
        }

LABEL_21:
        if (v14 != 2)
        {
          if (v16)
          {
            return 0;
          }

LABEL_45:
          sub_1B03B2000(v9, v8);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v18 = v11;
          v19 = v10;
LABEL_46:
          sub_1B03B2000(v18, v19);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          goto LABEL_140;
        }

        v21 = *(v11 + 16);
        v20 = *(v11 + 24);
        v22 = __OFSUB__(v20, v21);
        v23 = v20 - v21;
        if (v22)
        {
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
        }

LABEL_34:
        if (v16 != v23)
        {
          return 0;
        }

        if (v16 < 1)
        {
          goto LABEL_45;
        }

        if (v13 > 1)
        {
          if (v13 != 2)
          {
            memset(__s1, 0, 14);
            if (v14)
            {
              if (v14 == 2)
              {
                v38 = *(v11 + 16);
                v71 = *(v11 + 24);
                sub_1B03B2000(v9, v8);
                _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                sub_1B03B2000(v11, v10);
                _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                v39 = sub_1B0E42A98();
                if (v39)
                {
                  v40 = sub_1B0E42AC8();
                  if (__OFSUB__(v38, v40))
                  {
                    goto LABEL_167;
                  }

                  v39 += v38 - v40;
                }

                v41 = v71 - v38;
                if (__OFSUB__(v71, v38))
                {
                  goto LABEL_160;
                }

                result = sub_1B0E42AB8();
                if (!v39)
                {
                  goto LABEL_184;
                }

                goto LABEL_100;
              }

              v68 = ((v11 >> 32) - v11);
              if (v11 >> 32 < v11)
              {
                goto LABEL_156;
              }

              sub_1B03B2000(v9, v8);
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              sub_1B03B2000(v11, v10);
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              v54 = sub_1B0E42A98();
              if (!v54)
              {
                goto LABEL_182;
              }

              v55 = v54;
              v56 = sub_1B0E42AC8();
              if (__OFSUB__(v11, v56))
              {
                goto LABEL_161;
              }

              v29 = (v11 - v56 + v55);
              result = sub_1B0E42AB8();
              if (!v29)
              {
                goto LABEL_183;
              }

LABEL_108:
              if (result >= v68)
              {
                v57 = v68;
              }

              else
              {
                v57 = result;
              }

              v53 = memcmp(__s1, v29, v57);
              goto LABEL_112;
            }

            goto LABEL_68;
          }

          v31 = *(v9 + 16);
          sub_1B03B2000(v9, v8);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B03B2000(v11, v10);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v32 = sub_1B0E42A98();
          if (v32)
          {
            v33 = v32;
            v34 = sub_1B0E42AC8();
            if (__OFSUB__(v31, v34))
            {
              goto LABEL_154;
            }

            v69 = (v31 - v34 + v33);
          }

          else
          {
            v69 = 0;
          }

          sub_1B0E42AB8();
          if (v14 == 2)
          {
            v58 = *(v11 + 16);
            v59 = *(v11 + 24);
            v44 = sub_1B0E42A98();
            if (v44)
            {
              v60 = sub_1B0E42AC8();
              if (__OFSUB__(v58, v60))
              {
                goto LABEL_168;
              }

              v44 += v58 - v60;
            }

            v22 = __OFSUB__(v59, v58);
            v61 = v59 - v58;
            if (v22)
            {
              goto LABEL_163;
            }

            v62 = sub_1B0E42AB8();
            if (v62 >= v61)
            {
              v47 = v61;
            }

            else
            {
              v47 = v62;
            }

            result = v69;
            if (!v69)
            {
              goto LABEL_176;
            }

            v3 = a2;
            v4 = a1;
            if (!v44)
            {
              goto LABEL_175;
            }

            goto LABEL_135;
          }

          if (v14 == 1)
          {
            if (v11 >> 32 < v11)
            {
              goto LABEL_158;
            }

            v44 = sub_1B0E42A98();
            if (v44)
            {
              v45 = sub_1B0E42AC8();
              if (__OFSUB__(v11, v45))
              {
                goto LABEL_170;
              }

              v44 += v11 - v45;
            }

            v3 = a2;
            v46 = sub_1B0E42AB8();
            if (v46 >= (v11 >> 32) - v11)
            {
              v47 = (v11 >> 32) - v11;
            }

            else
            {
              v47 = v46;
            }

            result = v69;
            if (!v69)
            {
              goto LABEL_172;
            }

            v4 = a1;
            if (!v44)
            {
              __break(1u);
LABEL_172:
              __break(1u);
LABEL_173:
              __break(1u);
LABEL_174:
              sub_1B0E42AB8();
              __break(1u);
LABEL_175:
              __break(1u);
LABEL_176:
              __break(1u);
LABEL_177:
              __break(1u);
LABEL_178:
              __break(1u);
LABEL_179:
              __break(1u);
LABEL_180:
              __break(1u);
LABEL_181:
              __break(1u);
LABEL_182:
              result = sub_1B0E42AB8();
LABEL_183:
              __break(1u);
LABEL_184:
              __break(1u);
LABEL_185:
              __break(1u);
LABEL_186:
              __break(1u);
              return result;
            }

            goto LABEL_135;
          }

          v3 = a2;
          v4 = a1;
          result = v69;
          __s1[0] = v11;
          LOWORD(__s1[1]) = v10;
          BYTE2(__s1[1]) = BYTE2(v10);
          BYTE3(__s1[1]) = BYTE3(v10);
          BYTE4(__s1[1]) = BYTE4(v10);
          BYTE5(__s1[1]) = BYTE5(v10);
          if (!v69)
          {
            goto LABEL_185;
          }
        }

        else
        {
          if (!v13)
          {
            __s1[0] = v9;
            LOWORD(__s1[1]) = v8;
            BYTE2(__s1[1]) = BYTE2(v8);
            BYTE3(__s1[1]) = BYTE3(v8);
            BYTE4(__s1[1]) = BYTE4(v8);
            BYTE5(__s1[1]) = BYTE5(v8);
            if (v14)
            {
              if (v14 == 1)
              {
                v68 = ((v11 >> 32) - v11);
                if (v11 >> 32 < v11)
                {
                  goto LABEL_157;
                }

                sub_1B03B2000(v9, v8);
                _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                sub_1B03B2000(v11, v10);
                _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                v26 = sub_1B0E42A98();
                if (!v26)
                {
                  goto LABEL_174;
                }

                v27 = v26;
                v28 = sub_1B0E42AC8();
                if (__OFSUB__(v11, v28))
                {
                  goto LABEL_162;
                }

                v29 = (v11 - v28 + v27);
                result = sub_1B0E42AB8();
                if (!v29)
                {
                  goto LABEL_173;
                }

                goto LABEL_108;
              }

              v50 = *(v11 + 16);
              v72 = *(v11 + 24);
              sub_1B03B2000(v9, v8);
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              sub_1B03B2000(v11, v10);
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              v39 = sub_1B0E42A98();
              if (v39)
              {
                v51 = sub_1B0E42AC8();
                if (__OFSUB__(v50, v51))
                {
                  goto LABEL_166;
                }

                v39 += v50 - v51;
              }

              v41 = v72 - v50;
              if (__OFSUB__(v72, v50))
              {
                goto LABEL_159;
              }

              result = sub_1B0E42AB8();
              if (!v39)
              {
                goto LABEL_186;
              }

LABEL_100:
              if (result >= v41)
              {
                v52 = v41;
              }

              else
              {
                v52 = result;
              }

              v53 = memcmp(__s1, v39, v52);
              v3 = a2;
LABEL_112:
              v4 = a1;
              if (v53)
              {
                goto LABEL_148;
              }

              goto LABEL_140;
            }

LABEL_68:
            v79 = v11;
            v80 = v10;
            v81 = BYTE2(v10);
            v82 = BYTE3(v10);
            v83 = BYTE4(v10);
            v84 = BYTE5(v10);
            sub_1B03B2000(v9, v8);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B03B2000(v11, v10);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            result = __s1;
            v42 = &v79;
            v43 = BYTE6(v10);
            v4 = a1;
            goto LABEL_139;
          }

          if (v9 > v9 >> 32)
          {
            goto LABEL_153;
          }

          sub_1B03B2000(v9, v8);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B03B2000(v11, v10);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v35 = sub_1B0E42A98();
          if (v35)
          {
            v36 = v35;
            v37 = sub_1B0E42AC8();
            if (__OFSUB__(v9, v37))
            {
              goto LABEL_155;
            }

            v70 = (v9 - v37 + v36);
          }

          else
          {
            v70 = 0;
          }

          sub_1B0E42AB8();
          if (v14 == 2)
          {
            v63 = *(v11 + 16);
            v64 = *(v11 + 24);
            v44 = sub_1B0E42A98();
            if (v44)
            {
              v65 = sub_1B0E42AC8();
              if (__OFSUB__(v63, v65))
              {
                goto LABEL_169;
              }

              v44 += v63 - v65;
            }

            v22 = __OFSUB__(v64, v63);
            v66 = v64 - v63;
            if (v22)
            {
              goto LABEL_165;
            }

            v67 = sub_1B0E42AB8();
            if (v67 >= v66)
            {
              v47 = v66;
            }

            else
            {
              v47 = v67;
            }

            result = v70;
            if (!v70)
            {
              goto LABEL_181;
            }

            v3 = a2;
            v4 = a1;
            if (!v44)
            {
              goto LABEL_180;
            }

            goto LABEL_135;
          }

          if (v14 == 1)
          {
            if (v11 >> 32 < v11)
            {
              goto LABEL_164;
            }

            v44 = sub_1B0E42A98();
            if (v44)
            {
              v48 = sub_1B0E42AC8();
              if (__OFSUB__(v11, v48))
              {
                goto LABEL_171;
              }

              v44 += v11 - v48;
            }

            v3 = a2;
            v49 = sub_1B0E42AB8();
            if (v49 >= (v11 >> 32) - v11)
            {
              v47 = (v11 >> 32) - v11;
            }

            else
            {
              v47 = v49;
            }

            result = v70;
            if (!v70)
            {
              goto LABEL_179;
            }

            v4 = a1;
            if (!v44)
            {
              goto LABEL_178;
            }

LABEL_135:
            if (result == v44)
            {
              goto LABEL_140;
            }

            v43 = v47;
            v42 = v44;
            goto LABEL_139;
          }

          v3 = a2;
          v4 = a1;
          result = v70;
          __s1[0] = v11;
          LOWORD(__s1[1]) = v10;
          BYTE2(__s1[1]) = BYTE2(v10);
          BYTE3(__s1[1]) = BYTE3(v10);
          BYTE4(__s1[1]) = BYTE4(v10);
          BYTE5(__s1[1]) = BYTE5(v10);
          if (!v70)
          {
            goto LABEL_177;
          }
        }

        v43 = BYTE6(v10);
        v42 = __s1;
LABEL_139:
        if (memcmp(result, v42, v43))
        {
          goto LABEL_148;
        }

LABEL_140:
        if (v77)
        {
          if (!v78 || (static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v77, v78) & 1) == 0)
          {
LABEL_148:
            sub_1B0391D50(v11, v10);

            sub_1B0391D50(v9, v8);

            return 0;
          }
        }

        else if (v78)
        {
          goto LABEL_148;
        }

        sub_1B0391D50(v11, v10);

        sub_1B0391D50(v9, v8);

        if (v76 != v75)
        {
          return 0;
        }

        if (!--v2)
        {
          return 1;
        }
      }

      if (v9)
      {
        v15 = 0;
      }

      else
      {
        v15 = v8 == 0xC000000000000000;
      }

      v16 = 0;
      v17 = v15 && v10 >> 62 == 3;
      if (v17 && !v11 && v10 == 0xC000000000000000)
      {
        sub_1B03B2000(0, 0xC000000000000000);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v18 = 0;
        v19 = 0xC000000000000000;
        goto LABEL_46;
      }

LABEL_27:
      if (v14 <= 1)
      {
        goto LABEL_28;
      }

      goto LABEL_21;
    }
  }

  return 1;
}

void StateWithTasks.connectionLimitsAndUsage.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v24 = sub_1B0398D1C();
  v5 = v4;
  v7 = v6;
  memcpy(__dst, v1, sizeof(__dst));
  v8 = sub_1B03A7A88();
  v9 = LOBYTE(__dst[3]);
  v10 = BYTE1(__dst[3]);
  v11 = __dst[4];
  v12 = __dst[7];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v13 = sub_1B0397D14();
  v14 = v13;
  if (v11 == 3 || v11 == 2)
  {

    v15 = 1;
    goto LABEL_4;
  }

  v22 = sub_1B0BAE1A4(v13);
  if (v10)
  {
    goto LABEL_12;
  }

  if (v11 == 1)
  {
    if (v9)
    {
      v15 = v9 == 1;
      goto LABEL_13;
    }

LABEL_12:
    v15 = v22 ^ 1;
    goto LABEL_13;
  }

  if (v11 || (v9 - 1) >= 2)
  {
    goto LABEL_12;
  }

  v15 = 0;
LABEL_13:
  sub_1B0397E04(&unk_1F2710548, v12);
  sub_1B0BAE1A4(v14);
  v23 = sub_1B039109C(v12);

  if (v23 & 1) == 0 && (v10)
  {
    sub_1B0BAE1A4(v14);
  }

LABEL_4:

  sub_1B03A8380(__dst[21], __dst[22], __dst[23], __dst[24] & 1, __dst[15], v8, v15 & 1, __dst[26]);
  v17 = v16;
  v19 = v18;

  rawValue = sub_1B03AC81C(v17, v19).elements._rawValue;

  sub_1B03C8B98(*(v2 + 264), v2[34]);
  *a1 = v24;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = rawValue;
  *(a1 + 32) = v21;
}

unint64_t sub_1B03B78F8()
{
  v2 = qword_1EB6DAE10;
  if (!qword_1EB6DAE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E21D0, &unk_1B0EA2E70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAE10);
    return WitnessTable;
  }

  return v2;
}

void *sub_1B03B7980(uint64_t a1, uint64_t a2)
{
  v7 = sub_1B03B7B80(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5EE0, &qword_1B0E99B40);
  inited = swift_initStackObject();
  sub_1B03B1F2C(inited, 1);
  *v3 = 0;
  sub_1B03B1EF8();
  sub_1B03B8390(v4);

  v8 = sub_1B03B1F78(v7);

  result = v8;
  if (!__OFSUB__(v8, 1))
  {
    return v7;
  }

  __break(1u);
  return result;
}

void *sub_1B03B7A3C(uint64_t a1, uint64_t a2)
{
  if (a2 < a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = a2;
  }

  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5EE0, &qword_1B0E99B40);
    v6 = swift_allocObject();

    if (_swift_stdlib_has_malloc_size())
    {
      v4 = _swift_stdlib_malloc_size(v6) - 32;
      v6[2] = a1;
      v6[3] = 2 * v4;
    }

    else
    {
      v6[2] = a1;
      v6[3] = 2 * v7;
    }

    return v6;
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];

    return v3;
  }
}

void *sub_1B03B7B80(uint64_t a1, uint64_t a2)
{
  v17[2] = a2;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v13 = sub_1B0E44DC8();
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v12 = (a2 & 0xF00000000000000uLL) >> 56;
    }

    else
    {
      v12 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v13 = v12;
  }

  if (!v13)
  {
    return sub_1B0A188BC();
  }

  v10 = sub_1B03B7A3C(v13, 0);

  v11 = (v10 + 4);

  if (v13 < 0)
  {
LABEL_30:
    sub_1B0E466C8();
    __break(1u);
    return sub_1B0A188BC();
  }

  v16[12] = a2;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v16[0] = a1;
      v16[1] = a2 & (-bswap64(0xFFuLL) - 1);
      if (v13 >= ((a2 & 0xF00000000000000uLL) >> 56))
      {
        sub_1B03B0648(v16, (a2 & 0xF00000000000000uLL) >> 56, v11);
        v8 = (a2 & 0xF00000000000000uLL) >> 56;
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
      {
        v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v7 = a1 & 0xFFFFFFFFFFFFLL;
        goto LABEL_22;
      }

      __break(1u);
    }

    v6 = sub_1B0E46368();
    v7 = v3;
LABEL_22:
    if (v13 >= v7)
    {
      if (!v6)
      {
        __break(1u);
      }

      sub_1B03B0648(v6, v7, v11);
      v8 = v7;
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v9 = sub_1B0E46248();
  if (v2)
  {
LABEL_29:
    sub_1B0E465A8();
    __break(1u);
    goto LABEL_30;
  }

  v8 = v9;
LABEL_26:
  v16[11] = 0xE000000000000000;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  v16[10] = 0xE000000000000000;
  if (v8 != v13)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  sub_1B03B1198(v17);
  return v10;
}

void sub_1B03B8390(uint64_t a1)
{
  v18 = sub_1B03B1F78(a1);
  v2 = sub_1B03B1F78(*v1);
  v19 = v2 + v18;
  if (__OFADD__(v2, v18))
  {
    goto LABEL_31;
  }

  v14 = *v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v17 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v19 > *(*v17 + 24) >> 1)
  {
    if (*(*v17 + 16) < v19)
    {
      v13 = v19;
    }

    else
    {
      v13 = *(*v17 + 16);
    }

    v12 = *v17;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    *v17 = sub_1B0425174(isUniquelyReferenced_nonNull_native, v13, 1, v12);
  }

  v4 = *(*v17 + 16);
  v10 = (*v17 + 32 + v4);
  v5 = *(*v17 + 24) >> 1;
  v11 = v5 - v4;
  if (__OFSUB__(v5, v4))
  {
    goto LABEL_32;
  }

  if (v11 < 0)
  {
LABEL_30:
    sub_1B0E466C8();
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!sub_1B03B1F90(a1))
  {
LABEL_21:

    if (v18 <= 0)
    {
      goto LABEL_28;
    }

    sub_1B0E465A8();
    __break(1u);
    goto LABEL_30;
  }

  if (v11 < v18)
  {
    sub_1B0E465A8();
    __break(1u);
    goto LABEL_21;
  }

  sub_1B03B0648((a1 + 32), v18, v10);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  swift_unknownObjectRelease();
  if (v18 <= 0)
  {
    goto LABEL_28;
  }

  v7 = *(*v17 + 16);
  v9 = v7 + v18;
  if (!__OFADD__(v7, v18))
  {
    *(*v17 + 16) = v9;
LABEL_28:
    sub_1B0394A5C();
    return;
  }

LABEL_33:
  __break(1u);
}

uint64_t sub_1B03B8738(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }

  return v3;
}

uint64_t sub_1B03B8788(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for State.Logger(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B03B87EC(uint64_t result, unsigned int a2, _BYTE *a3)
{
  if ((a3[24] & 1) == 0)
  {
    return 0;
  }

  v3 = *(*a3 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  v5 = a2 | (a2 << 32);
  while (1)
  {
    v6 = *a3 + 32 + 176 * v4;
    if ((*(v6 + 24) | (*(v6 + 24) << 32)) == v5)
    {
      v7 = *(v6 + 16);
      v8 = *(v7 + 16);
      if (v8 == *(result + 16))
      {
        break;
      }
    }

LABEL_4:
    if (++v4 == v3)
    {
      return 0;
    }
  }

  if (v8)
  {
    v9 = v7 == result;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
LABEL_15:
    v12 = *(v6 + 172);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return v12;
  }

  else
  {
    v10 = (v7 + 32);
    v11 = (result + 32);
    while (v8)
    {
      if (*v10 != *v11)
      {
        goto LABEL_4;
      }

      ++v10;
      ++v11;
      if (!--v8)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B03B88DC(uint64_t a1)
{
  v2 = type metadata accessor for State.Logger(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B03B8944()
{
  v1 = *v0;
  v2 = 0x6E776F4472657375;
  v3 = 1668184435;
  v4 = 0x6E7953736465656ELL;
  v5 = 0x797469726F697270;
  if (v1 != 10)
  {
    v5 = 0x6E776F4472657375;
  }

  if (v1 != 9)
  {
    v4 = v5;
  }

  if (v1 != 8)
  {
    v3 = v4;
  }

  if (v1 == 7)
  {
    v2 = 1802723700;
  }

  if (v1 == 6)
  {
    v2 = 0x656C6269736976;
  }

  if (v1 == 5)
  {
    v2 = 0x7261655372657375;
  }

  if (*v0 <= 7u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B03B8A2C()
{
  v1 = 1668184435;
  v2 = 0x686372616573;
  if (*v0 != 2)
  {
    v2 = 45;
  }

  if (*v0)
  {
    v1 = 0x64616F6C6E776F64;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1B03B8A9C(uint64_t a1, uint64_t a2)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a2);
  v4 = sub_1B0E46CB8();

  return sub_1B03B8B10(a1, a2, v4);
}

unint64_t sub_1B03B8B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      if (v8[1] == a2)
      {
        v9 = *v8;
        v10 = *(*v8 + 16);
        if (v10 == *(a1 + 16))
        {
          if (!v10 || v9 == a1)
          {
            return result;
          }

          v11 = (v9 + 32);
          for (i = (a1 + 32); *v11 == *i; ++i)
          {
            ++v11;
            if (!--v10)
            {
              return result;
            }
          }
        }
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1B03B8BD8()
{
  v2 = qword_1EB6DCC10;
  if (!qword_1EB6DCC10)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DCC10);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B03B8C50()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E35A0, &qword_1B0E99850);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v30 - v3;
  v5 = type metadata accessor for StateWithTasks(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Activity(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B0E44468();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (&v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v1 + 16);
  *v16 = v17;
  (*(v13 + 104))(v16, *MEMORY[0x1E69E8020], v12, v14);
  v18 = v17;
  LOBYTE(v17) = sub_1B0E44488();
  result = (*(v13 + 8))(v16, v12);
  if (v17)
  {
    v20 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_connections);
    if (v20)
    {
      v21 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_state;
      swift_beginAccess();
      (*(v6 + 16))(v8, v1 + v21, v5);
      swift_retain_n();
      sub_1B03B90E0(v4);
      StateWithTasks.makeActivity(makeStatus:accountError:)(sub_1B03C5F9C, v20, v4, v11);

      sub_1B0398EFC(v4, &qword_1EB6E35A0, &qword_1B0E99850);
      (*(v6 + 8))(v8, v5);
    }

    else
    {
      v22 = type metadata accessor for ConnectionStatus.Error(0);
      (*(*(v22 - 8) + 56))(v4, 1, 1, v22);
      Activity.init(mailboxesWithPendingWork:accountError:)(MEMORY[0x1E69E7CD0], v4, v11);
    }

    v23 = OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_state;
    swift_beginAccess();
    (*(v6 + 16))(v8, v1 + v23, v5);
    v24 = StateWithTasks.selectedMailboxes.getter();
    (*(v6 + 8))(v8, v5);
    swift_beginAccess();
    v25 = sub_1B03DE5E0(v11, v24);
    swift_endAccess();

    result = sub_1B03C74B8(v11, type metadata accessor for Activity);
    v26 = *(v25 + 2);
    if (v26)
    {
      v27 = *(v1 + 32);
      v28 = (v25 + 32);
      do
      {
        v29 = *v28++;
        sub_1B03E14B4(v29);
        v27(v29);
        result = sub_1B03E1BE8(v29);
        --v26;
      }

      while (v26);
    }

    if (*(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_activityTimer))
    {

      RestartableTimer.stop()();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B03B90E0@<X0>(_BYTE *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E35A0, &qword_1B0E99850);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23[-v7];
  v9 = sub_1B0E44468();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_queue);
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x1E69E8020], v9, v11);
  v15 = v14;
  LOBYTE(v14) = sub_1B0E44488();
  result = (*(v10 + 8))(v13, v9);
  if (v14)
  {
    v17 = OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_lastError;
    swift_beginAccess();
    sub_1B03B5C80(v1 + v17, v5, &qword_1EB6E35A0, &qword_1B0E99850);
    v18 = type metadata accessor for ConnectionStatus.Error(0);
    v19 = *(v18 - 8);
    v20 = *(v19 + 48);
    if (v20(v5, 1, v18) == 1)
    {
      sub_1B03C3DEC(v8);
      if (v20(v5, 1, v18) != 1)
      {
        sub_1B0398EFC(v5, &qword_1EB6E35A0, &qword_1B0E99850);
      }
    }

    else
    {
      sub_1B038CBB4(v5, v8, type metadata accessor for ConnectionStatus.Error);
      (*(v19 + 56))(v8, 0, 1, v18);
    }

    if (v20(v8, 1, v18) == 1)
    {
      sub_1B0398EFC(v8, &qword_1EB6E35A0, &qword_1B0E99850);
      v21 = 1;
    }

    else
    {
      v22 = v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl14ConnectionPool_backoff;
      swift_beginAccess();
      sub_1B0C50218(*(v22 + 8), *(v22 + 16), a1);
      sub_1B038C824(v8, type metadata accessor for ConnectionStatus.Error);
      v21 = 0;
    }

    return (*(v19 + 56))(a1, v21, 1, v18);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1B03B9450(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4460, &qword_1B0EC51D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4468, &qword_1B0EC51E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t MailboxesSelectionUsage.subscript.getter(int a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = a2 + 16;
  v4 = v3 + 1;
  while (--v4)
  {
    v5 = *(v2 + 16);
    v2 += 40;
    if (v5 == a1)
    {
      return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    }
  }

  return 0;
}

uint64_t MailboxesSelectionUsage.subscript.setter(uint64_t result, int a2, uint64_t a3, char a4, int a5)
{
  v10 = result;
  v11 = *v5;
  v12 = *(*v5 + 2);
  if (v12)
  {
    v13 = 0;
    v14 = 0;
    while (*&v11[v13 + 32] != a5)
    {
      ++v14;
      v13 += 40;
      if (v12 == v14)
      {
        goto LABEL_5;
      }
    }

    if (result)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1B0C0E03C(v11);
      }

      if (v14 >= *(v11 + 2))
      {
        __break(1u);
      }

      else
      {
        v18 = &v11[v13];
        *(v18 + 7) = a3;
        v18[64] = a4 & 1;
        *v5 = v11;
      }
    }

    else
    {
      sub_1B0C0B618(v14, v19);
      return sub_1B0C0E158(v19);
    }
  }

  else
  {
LABEL_5:
    if (result)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1B03B979C(0, v12 + 1, 1, v11);
      }

      v16 = *(v11 + 2);
      v15 = *(v11 + 3);
      if (v16 >= v15 >> 1)
      {
        v11 = sub_1B03B979C((v15 > 1), v16 + 1, 1, v11);
      }

      *(v11 + 2) = v16 + 1;
      v17 = &v11[40 * v16];
      *(v17 + 8) = a5;
      *(v17 + 5) = v10;
      *(v17 + 12) = a2;
      *(v17 + 7) = a3;
      v17[64] = a4 & 1;
      *v5 = v11;
      return sub_1B03B98B8(v5);
    }
  }

  return result;
}

char *sub_1B03B979C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5620, &qword_1B0ED3858);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1B03B98B8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0C0E03C(v2);
  }

  v3 = *(v2 + 2);
  v23[0] = (v2 + 32);
  v23[1] = v3;
  result = sub_1B0E469A8();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 56;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12 + 16;
          v14 = *(v12 + 4);
          if (v14 >= *(v12 - 6))
          {
            break;
          }

          v15 = *(v12 + 3);
          v16 = *(v12 + 8);
          v17 = *(v12 + 5);
          result = v12[48];
          v18 = *(v12 - 8);
          *v13 = *(v12 - 24);
          *(v12 + 2) = v18;
          v19 = *(v12 + 1);
          *(v12 - 6) = v14;
          *(v12 - 2) = v15;
          *(v12 - 2) = v16;
          *v12 = v17;
          v12[8] = result;
          v12 -= 40;
          *(v13 + 4) = v19;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 40;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1B0E45278();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v21[0] = v7 + 32;
    v21[1] = v6;
    sub_1B0C0D358(v21, v22, v23, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1B03B9A2C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v4 = vars8;
  }

  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

uint64_t sub_1B03B9A74()
{
  v1 = *(v0 + 64);
  v12 = MEMORY[0x1E69E7CD0];
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;
  result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v7 = 0;
  while (v4)
  {
LABEL_9:
    v9 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v10 = v9 | (v7 << 6);
    if (*(*(v1 + 56) + 32 * v10) == 3)
    {
      result = sub_1B03FF318(v11, *(*(v1 + 48) + 4 * v10));
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      return v12;
    }

    v4 = *(v1 + 64 + 8 * v8);
    ++v7;
    if (v4)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B03B9B68()
{
  if ((v0[4] & 1) == 0)
  {
    v32 = *v0;
    v33 = v0[1];
    v73 = *(v0 + 16);
    v70 = v0;
    v34 = v0[3];
    v95 = MEMORY[0x1E69E7CD0];
    v96 = v34;
    v97 = v33;
    v98[0] = v32;
    v72 = v34;
    sub_1B03B5C80(v98, v77, &qword_1EB6E4858, &qword_1B0EC5FE0);
    sub_1B03B5C80(&v97, v77, &qword_1EB6E4860, &qword_1B0EC5FE8);
    result = sub_1B03B5C80(&v96, v77, &qword_1EB6E4868, &unk_1B0EC5FF0);
    v35 = *(v32 + 16);
    if (!v35)
    {
      goto LABEL_81;
    }

    v36 = 0;
    v75 = v32 + 32;
LABEL_35:
    if (v36 >= v35)
    {
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    while (1)
    {
      v37 = (v75 + 176 * v36);
      v38 = *v37;
      v39 = v37[2];
      v85 = v37[1];
      v86 = v39;
      v40 = v37[3];
      v41 = v37[4];
      v42 = v37[6];
      v89 = v37[5];
      v90 = v42;
      v87 = v40;
      v88 = v41;
      v43 = v37[7];
      v44 = v37[8];
      v45 = v37[10];
      v93 = v37[9];
      v94 = v45;
      v91 = v43;
      v92 = v44;
      v84 = v38;
      if (!*(v33 + 16))
      {
        goto LABEL_45;
      }

      v47 = *(&v84 + 1);
      v46 = v84;
      v48 = v85;
      v49 = DWORD2(v85);
      v50 = DWORD1(v89);
      v51 = BYTE8(v89);
      result = sub_1B03AB888(v85, DWORD2(v85));
      if ((v52 & 1) == 0)
      {
        goto LABEL_45;
      }

      v53 = *(v33 + 56) + 72 * result;
      v79 = *v53;
      v55 = *(v53 + 32);
      v54 = *(v53 + 48);
      v56 = *(v53 + 64);
      v80 = *(v53 + 16);
      v81 = v55;
      v83 = v56;
      v82 = v54;
      sub_1B03A35B8(&v84, v77);
      sub_1B03BB0B4(&v79, v77);
      v57 = *RemoteMailbox.Attributes.noSelect.unsafeMutableAddressor();
      result = RemoteMailbox.Attributes.nonExistent.unsafeMutableAddressor();
      v58 = *result;
      if (!v57)
      {
        break;
      }

      if ((v58 & ~v57) != 0)
      {
        goto LABEL_42;
      }

LABEL_43:
      if ((HIWORD(v79) & v57) != 0)
      {
        sub_1B039E440(&v79);
        result = sub_1B03A3614(&v84);
LABEL_45:
        v59 = __OFADD__(v36++, 1);
        if (v59)
        {
          goto LABEL_87;
        }

        goto LABEL_46;
      }

LABEL_49:
      v77[8] = v92;
      v77[9] = v93;
      v77[10] = v94;
      v77[4] = v88;
      v77[5] = v89;
      v77[6] = v90;
      v77[7] = v91;
      v77[0] = v84;
      v77[1] = v85;
      v77[2] = v86;
      v77[3] = v87;
      v77[13] = v81;
      v77[14] = v82;
      v78 = v83;
      v77[11] = v79;
      v77[12] = v80;
      if ((v73 & 1) == 0)
      {
        v59 = __OFADD__(v36++, 1);
        if (v59)
        {
          goto LABEL_94;
        }

        goto LABEL_72;
      }

      sub_1B03A35B8(&v84, v76);
      sub_1B03BB0B4(&v79, v76);
      v60 = MailboxName.isInbox.getter(v48, v49);
      sub_1B039E440(&v79);
      if ((v60 & 1) != 0 || v80 > 7u || ((1 << v80) & 0xDB) == 0 || (v51 & 1) == 0 && ((BYTE12(v90) & 1) != 0 || DWORD2(v90) < v50))
      {
        result = sub_1B03A3614(&v84);
        v59 = __OFADD__(v36++, 1);
        if (v59)
        {
          goto LABEL_93;
        }

        goto LABEL_72;
      }

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03A3614(&v84);
      if (*(v72 + 16))
      {
        v61 = sub_1B03B8A9C(v46, v47);
        v63 = v62;

        if ((v63 & 1) != 0 && (~*(*(v72 + 56) + 2 * v61) & 0x3FFF) != 0)
        {
          v59 = __OFADD__(v36++, 1);
          if (v59)
          {
            goto LABEL_95;
          }

LABEL_72:
          v64 = *(&v92 + 1);
          if (sub_1B0B8715C(*(&v92 + 1), v70[8]) & 1) == 0 || (*(v64 + 16) || (BYTE8(v89) & 1) == 0 && ((BYTE12(v90) & 1) != 0 || DWORD2(v90) < DWORD1(v89))) && (static MailboxOfInterest.LocalModification.__derived_enum_equals(_:_:)(*(&v88 + 1), v89, 0, 0))
          {
            v65 = v85;
            v66 = DWORD2(v85);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B03AB2E0(v76, v65, v66);
            sub_1B03BB144(v77);

            if (v36 == v35)
            {
LABEL_81:
              sub_1B0398EFC(v98, &qword_1EB6E4858, &qword_1B0EC5FE0);
              sub_1B0398EFC(&v97, &qword_1EB6E4860, &qword_1B0EC5FE8);
              sub_1B0398EFC(&v96, &qword_1EB6E4868, &unk_1B0EC5FF0);
              return v95;
            }
          }

          else
          {
            result = sub_1B03BB144(v77);
            if (v36 == v35)
            {
              goto LABEL_81;
            }
          }

          goto LABEL_35;
        }

        result = sub_1B03BB144(v77);
        v59 = __OFADD__(v36++, 1);
        if (v59)
        {
          goto LABEL_91;
        }
      }

      else
      {
        sub_1B03BB144(v77);

        v59 = __OFADD__(v36++, 1);
        if (v59)
        {
          goto LABEL_91;
        }
      }

LABEL_46:
      if (v36 == v35)
      {
        goto LABEL_81;
      }

      if (v36 >= v35)
      {
        goto LABEL_86;
      }
    }

    if (!*result)
    {
      goto LABEL_49;
    }

LABEL_42:
    LOWORD(v57) = v58 | v57;
    goto LABEL_43;
  }

  v1 = sub_1B03BA2CC();
  if (!v1)
  {
    v1 = sub_1B03BB174();
  }

  v2 = v1;
  v3 = v0[7];
  if (*(v1 + 16) < v3)
  {
    return v2;
  }

  result = (v0[5])();
  if ((v3 & 0x8000000000000000) == 0)
  {
    v7 = v5;
    v8 = v6;
    *&v84 = MEMORY[0x1E69E7CC0];

    v74 = v7;
    sub_1B03A8208(0, 0, 0);
    v9 = v84;

    if (!v3)
    {
LABEL_84:

      v67 = sub_1B0B38604(v9);

      return v67;
    }

    v10 = 0;
    v68 = v7 + 32;
    result = v8 + 32;
    v11 = v2 + 56;
    v12 = 0;
LABEL_8:
    v69 = v3;
    v71 = v9;
    v13 = *(v8 + 16);
    if (v10 >= v13)
    {
LABEL_83:
      v9 = v71;
      goto LABEL_84;
    }

    while ((v10 & 0x8000000000000000) == 0)
    {
      v14 = v12;
      if (v12 >= *(v7 + 16))
      {
        goto LABEL_89;
      }

      if (v12 >= *(v8 + 16))
      {
        goto LABEL_90;
      }

      v15 = *(result + 4 * v12++);
      if ((~v15 & 0x6FFFC000) != 0)
      {
        if (*(v2 + 16))
        {
          v16 = (v68 + 16 * v14);
          v17 = *v16;
          v18 = *(v16 + 2);
          sub_1B0E46C28();
          MEMORY[0x1B2728D70](v18 | (v18 << 32));
          v19 = sub_1B0E46CB8();
          v20 = -1 << *(v2 + 32);
          v21 = v19 & ~v20;
          result = v8 + 32;
          v7 = v74;
          if ((*(v11 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
          {
            v22 = ~v20;
            while (1)
            {
              v23 = (*(v2 + 48) + 16 * v21);
              if ((v23[2] | (v23[2] << 32)) == (v18 | (v18 << 32)))
              {
                v24 = *v23;
                v25 = *(*v23 + 16);
                if (v25 == *(v17 + 16))
                {
                  break;
                }
              }

LABEL_18:
              v21 = (v21 + 1) & v22;
              if (((*(v11 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
              {
                goto LABEL_10;
              }
            }

            if (v25)
            {
              v26 = v24 == v17;
            }

            else
            {
              v26 = 1;
            }

            if (!v26)
            {
              v27 = (v24 + 32);
              v28 = (v17 + 32);
              while (v25)
              {
                if (*v27 != *v28)
                {
                  goto LABEL_18;
                }

                ++v27;
                ++v28;
                if (!--v25)
                {
                  goto LABEL_29;
                }
              }

              __break(1u);
              goto LABEL_86;
            }

LABEL_29:
            v9 = v71;
            *&v84 = v71;
            v30 = *(v71 + 16);
            v29 = *(v71 + 24);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            if (v30 >= v29 >> 1)
            {
              sub_1B03A8208((v29 > 1), v30 + 1, 1);
              v9 = v84;
            }

            *(v9 + 16) = v30 + 1;
            v31 = v9 + 16 * v30;
            *(v31 + 32) = v17;
            *(v31 + 40) = v18;
            v10 = v12;
            v3 = v69 - 1;
            result = v8 + 32;
            v7 = v74;
            if (v69 != 1)
            {
              goto LABEL_8;
            }

            goto LABEL_84;
          }
        }
      }

LABEL_10:
      if (v12 == v13)
      {
        goto LABEL_83;
      }
    }

LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
  }

  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_1B03BA2CC()
{
  v1 = type metadata accessor for MessagesPendingDownload(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v102 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v113 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v115 = &v102 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4068, &unk_1B0EC2D20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v116 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v121 = &v102 - v11;
  v12 = type metadata accessor for NewestMessages(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v114 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v119 = &v102 - v16;
  v118 = type metadata accessor for MailboxSyncState(0);
  MEMORY[0x1EEE9AC00](v118);
  v117 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v120 = &v102 - v19;
  v21 = *v0;
  v20 = v0[1];
  v124 = *(v0 + 16);
  v22 = v0[3];
  v147 = MEMORY[0x1E69E7CD0];
  v148 = v22;
  v149 = v20;
  v150[0] = v21;
  v125 = v20;
  v123 = v22;
  sub_1B03B5C80(v150, v129, &qword_1EB6E4858, &qword_1B0EC5FE0);
  sub_1B03B5C80(&v149, v129, &qword_1EB6E4860, &qword_1B0EC5FE8);
  result = sub_1B03B5C80(&v148, v129, &qword_1EB6E4868, &unk_1B0EC5FF0);
  v127 = *(v21 + 16);
  if (!v127)
  {
    v122 = 0;
    goto LABEL_88;
  }

  v109 = 0;
  v110 = v3;
  v112 = v0;
  v24 = 0;
  v122 = 0;
  v126 = v21 + 32;
  v25 = v125;
  v111 = (v13 + 48);
  while (2)
  {
    if (v24 >= v127)
    {
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
      return result;
    }

    while (1)
    {
      v26 = v12;
      v27 = (v126 + 176 * v24);
      v28 = *v27;
      v29 = v27[2];
      v137 = v27[1];
      v138 = v29;
      v30 = v27[3];
      v31 = v27[4];
      v32 = v27[6];
      v141 = v27[5];
      v142 = v32;
      v139 = v30;
      v140 = v31;
      v33 = v27[7];
      v34 = v27[8];
      v35 = v27[10];
      v145 = v27[9];
      v146 = v35;
      v143 = v33;
      v144 = v34;
      v136 = v28;
      if (!*(v25 + 16))
      {
        goto LABEL_13;
      }

      v37 = *(&v136 + 1);
      v36 = v136;
      v38 = v137;
      v39 = DWORD2(v137);
      v40 = DWORD1(v141);
      v41 = BYTE8(v141);
      result = sub_1B03AB888(v137, DWORD2(v137));
      v25 = v125;
      if ((v42 & 1) == 0)
      {
        goto LABEL_13;
      }

      v43 = *(v125 + 56) + 72 * result;
      v131 = *v43;
      v45 = *(v43 + 32);
      v44 = *(v43 + 48);
      v46 = *(v43 + 64);
      v132 = *(v43 + 16);
      v133 = v45;
      v135 = v46;
      v134 = v44;
      sub_1B03A35B8(&v136, v129);
      sub_1B03BB0B4(&v131, v129);
      v47 = *RemoteMailbox.Attributes.noSelect.unsafeMutableAddressor();
      result = RemoteMailbox.Attributes.nonExistent.unsafeMutableAddressor();
      v48 = *result;
      if (!v47)
      {
        if (!*result)
        {
          break;
        }

LABEL_10:
        LOWORD(v47) = v48 | v47;
        goto LABEL_11;
      }

      if ((v48 & ~v47) != 0)
      {
        goto LABEL_10;
      }

LABEL_11:
      if ((HIWORD(v131) & v47) == 0)
      {
        break;
      }

      sub_1B039E440(&v131);
      result = sub_1B03A3614(&v136);
      v25 = v125;
LABEL_13:
      v49 = __OFADD__(v24++, 1);
      if (v49)
      {
        goto LABEL_92;
      }

      v12 = v26;
LABEL_15:
      if (v24 == v127)
      {
        goto LABEL_88;
      }

      if (v24 >= v127)
      {
        goto LABEL_91;
      }
    }

    v129[8] = v144;
    v129[9] = v145;
    v129[10] = v146;
    v129[4] = v140;
    v129[5] = v141;
    v129[6] = v142;
    v129[7] = v143;
    v129[0] = v136;
    v129[1] = v137;
    v129[2] = v138;
    v129[3] = v139;
    v129[13] = v133;
    v129[14] = v134;
    v130 = v135;
    v129[11] = v131;
    v129[12] = v132;
    if ((v124 & 1) == 0)
    {
      v49 = __OFADD__(v24++, 1);
      if (v49)
      {
        goto LABEL_95;
      }

      goto LABEL_39;
    }

    sub_1B03A35B8(&v136, v128);
    sub_1B03BB0B4(&v131, v128);
    v50 = MailboxName.isInbox.getter(v38, v39);
    sub_1B039E440(&v131);
    if ((v50 & 1) != 0 || v132 > 7u || ((1 << v132) & 0xDB) == 0 || (v41 & 1) == 0 && ((BYTE12(v142) & 1) != 0 || DWORD2(v142) < v40))
    {
      result = sub_1B03A3614(&v136);
      v49 = __OFADD__(v24++, 1);
      if (v49)
      {
        goto LABEL_94;
      }

LABEL_39:
      v12 = v26;
      goto LABEL_40;
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03A3614(&v136);
    v51 = v123;
    if (!*(v123 + 16))
    {
      sub_1B03BB144(v129);

LABEL_31:
      v12 = v26;
LABEL_32:
      v49 = __OFADD__(v24++, 1);
      v25 = v125;
      if (v49)
      {
        goto LABEL_93;
      }

      goto LABEL_15;
    }

    v52 = sub_1B03B8A9C(v36, v37);
    v54 = v53;

    if ((v54 & 1) == 0)
    {
      result = sub_1B03BB144(v129);
      goto LABEL_31;
    }

    v12 = v26;
    if ((~*(*(v51 + 56) + 2 * v52) & 0x3FFF) == 0)
    {
      result = sub_1B03BB144(v129);
      goto LABEL_32;
    }

    v49 = __OFADD__(v24++, 1);
    if (v49)
    {
      goto LABEL_96;
    }

LABEL_40:
    v55 = *(&v144 + 1);
    if (*(*(&v144 + 1) + 16) && (v135 & 0x100) == 0 && (v135 & 1) == 0)
    {
      v56 = *(&v134 + 1);
      v57 = DWORD1(v133);
      if (sub_1B0B8715C(*(&v144 + 1), v112[8]))
      {
        if ((v140 & 1) == 0)
        {
          v58 = DWORD1(v141);
          v59 = BYTE8(v141);
          v60 = v121;
          if (*(v55 + 16) || (BYTE8(v141) & 1) == 0 && ((BYTE12(v142) & 1) != 0 || DWORD2(v142) < DWORD1(v141)))
          {
            v122 = *(v112 + 33);
            if (static MailboxOfInterest.LocalModification.__derived_enum_equals(_:_:)(*(&v140 + 1), v141, 0, 0))
            {
              v108 = v59;
              if (v142)
              {
                v105 = v58;
                v61 = v142 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
                swift_beginAccess();
                v62 = v61 + *(_s13SelectedStateV7WrappedVMa(0) + 20);
                v63 = v117;
                sub_1B041C914(v62, v117, type metadata accessor for MailboxSyncState);
                v64 = v63;
                v65 = v120;
                sub_1B041CEFC(v64, v120, type metadata accessor for MailboxSyncState);
                v107 = *(v118 + 52);
                v66 = *(v118 + 64);
                v106 = *(type metadata accessor for PendingPersistenceUpdates(0) + 28);
                v104 = v66;
                sub_1B03B5C80(v65 + v66, v60, &qword_1EB6E4068, &unk_1B0EC2D20);
                v67 = *v111;
                if ((*v111)(v60, 1, v12) == 1)
                {
                  sub_1B03D06F8();
                  v68 = v115;
                  sub_1B0E46EE8();
                  v102 = *(v12 + 20);
                  v103 = v67;
                  v69 = *(v12 + 24);
                  v70 = v68;
                  v71 = v121;
                  v72 = v119;
                  sub_1B074BA2C(v70, v119);
                  *(v72 + v102) = 0;
                  *(v72 + v69) = 0;
                  v67 = v103;
                  v73 = v72;
                  v65 = v120;
                  sub_1B03BD59C(v73, type metadata accessor for NewestMessages);
                  if (v67(v71, 1, v12) != 1)
                  {
                    sub_1B0398EFC(v71, &qword_1EB6E4068, &unk_1B0EC2D20);
                  }
                }

                else
                {
                  v74 = v60;
                  v75 = v119;
                  sub_1B041CEFC(v74, v119, type metadata accessor for NewestMessages);
                  sub_1B03BD59C(v75, type metadata accessor for NewestMessages);
                }

                v76 = v65 + v107 + v106;
                v77 = v110;
                sub_1B041C914(v76, v110, type metadata accessor for MessagesPendingDownload);
                v78 = *(*v77 + 16);
                sub_1B03BD59C(v77, type metadata accessor for MessagesPendingDownload);
                if (v78)
                {
                  sub_1B03BD59C(v65, type metadata accessor for MailboxSyncState);
                  v12 = v26;
                  goto LABEL_64;
                }

                v107 = v76;
                v81 = v116;
                sub_1B03B5C80(v65 + v104, v116, &qword_1EB6E4068, &unk_1B0EC2D20);
                v12 = v26;
                if (v67(v81, 1, v26) == 1)
                {
                  sub_1B03D06F8();
                  v103 = v67;
                  v82 = v113;
                  sub_1B0E46EE8();
                  v106 = *(v26 + 20);
                  v83 = *(v26 + 24);
                  v84 = v82;
                  v85 = v116;
                  v86 = v114;
                  sub_1B074BA2C(v84, v114);
                  *(v86 + v106) = 0;
                  *(v86 + v83) = 0;
                  v12 = v26;
                  v87 = v103(v85, 1, v26);
                  v88 = v86;
                  v58 = v105;
                  if (v87 != 1)
                  {
                    sub_1B0398EFC(v85, &qword_1EB6E4068, &unk_1B0EC2D20);
                  }
                }

                else
                {
                  v88 = v114;
                  sub_1B041CEFC(v81, v114, type metadata accessor for NewestMessages);
                  v58 = v105;
                }

                if (v122)
                {
                  if (v122 == 1)
                  {
                    v89 = type metadata accessor for MessagesPendingDownloadPerPass(0);
                    v90 = v110;
                    sub_1B041C914(v107 + *(v89 + 20), v110, type metadata accessor for MessagesPendingDownload);
                    sub_1B03BD59C(v65, type metadata accessor for MailboxSyncState);
                    v91 = *(*v90 + 16);
                    sub_1B03BD59C(v90, type metadata accessor for MessagesPendingDownload);
                    sub_1B03BD59C(v88, type metadata accessor for NewestMessages);
                    if (v91)
                    {
                      goto LABEL_64;
                    }
                  }

                  else
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
                    v92 = sub_1B0E46E98();
                    v93 = type metadata accessor for MessagesPendingDownloadPerPass(0);
                    v94 = *(v93 + 20);
                    if (v92)
                    {
                      v95 = v110;
                      sub_1B041C914(v107 + v94, v110, type metadata accessor for MessagesPendingDownload);
                      sub_1B03BD59C(v120, type metadata accessor for MailboxSyncState);
                      v96 = *v95;
                      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                      sub_1B03BD59C(v95, type metadata accessor for MessagesPendingDownload);
                      v97 = *(v96 + 16);

                      sub_1B03BD59C(v88, type metadata accessor for NewestMessages);
                      if (v97)
                      {
                        goto LABEL_64;
                      }
                    }

                    else
                    {
                      v98 = *(v107 + v94);
                      MEMORY[0x1EEE9AC00](v93);
                      *(&v102 - 2) = v88;
                      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                      v99 = v109;
                      sub_1B03D0BFC(sub_1B0B23A0C, (&v102 - 4), v98);
                      v101 = v100;
                      v109 = v99;

                      v58 = v105;
                      sub_1B03BD59C(v120, type metadata accessor for MailboxSyncState);
                      sub_1B03BD59C(v88, type metadata accessor for NewestMessages);
                      if (v101)
                      {
                        goto LABEL_64;
                      }
                    }
                  }
                }

                else
                {
                  sub_1B03BD59C(v65, type metadata accessor for MailboxSyncState);
                  sub_1B03BD59C(v88, type metadata accessor for NewestMessages);
                }
              }

              if ((v108 & 1) == 0 && ((BYTE12(v142) & 1) != 0 || DWORD2(v142) < v58) || (v144 & 1) != 0 || v143 != v57 || *(&v143 + 1) < v56)
              {
                goto LABEL_64;
              }
            }
          }
        }

        result = sub_1B03BB144(v129);
        goto LABEL_81;
      }

LABEL_64:
      v79 = v137;
      v80 = DWORD2(v137);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03AB2E0(v128, v79, v80);
      sub_1B03BB144(v129);

LABEL_81:
      v122 = 1;
      goto LABEL_44;
    }

    result = sub_1B03BB144(v129);
LABEL_44:
    v25 = v125;
    if (v24 != v127)
    {
      continue;
    }

    break;
  }

LABEL_88:
  sub_1B0398EFC(v150, &qword_1EB6E4858, &qword_1B0EC5FE0);
  sub_1B0398EFC(&v149, &qword_1EB6E4860, &qword_1B0EC5FE8);
  sub_1B0398EFC(&v148, &qword_1EB6E4868, &unk_1B0EC5FF0);
  result = v147;
  if ((v122 & 1) == 0)
  {

    return 0;
  }

  return result;
}

uint64_t type metadata accessor for MessagesPendingDownload(uint64_t a1)
{
  result = qword_1EB6DD730;
  if (!qword_1EB6DD730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for NewestMessages(uint64_t a1)
{
  result = qword_1EB6DDEA8;
  if (!qword_1EB6DDEA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B03BB0B4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *a2 = v4;
  *(a2 + 8) = *(a1 + 2);
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 14) = *(a1 + 7);
  *(a2 + 16) = *(a1 + 16);
  memcpy((a2 + 24), a1 + 3, 0x2AuLL);
  return a2;
}

uint64_t sub_1B03BB174()
{
  v2 = *v0;
  v1 = v0[1];
  v38 = *(v0 + 16);
  v3 = v0[3];
  v59 = MEMORY[0x1E69E7CD0];
  v60 = v3;
  v61 = v1;
  v62[0] = v2;
  v37 = v3;
  sub_1B03B5C80(v62, v41, &qword_1EB6E4858, &qword_1B0EC5FE0);
  sub_1B03B5C80(&v61, v41, &qword_1EB6E4860, &qword_1B0EC5FE8);
  result = sub_1B03B5C80(&v60, v41, &qword_1EB6E4868, &unk_1B0EC5FF0);
  v5 = *(v2 + 16);
  if (!v5)
  {
    goto LABEL_55;
  }

  v6 = 0;
  v39 = v2 + 32;
  while (v6 < v5)
  {
    while (1)
    {
      v7 = (v39 + 176 * v6);
      v8 = *v7;
      v9 = v7[2];
      v49 = v7[1];
      v50 = v9;
      v10 = v7[3];
      v11 = v7[4];
      v12 = v7[6];
      v53 = v7[5];
      v54 = v12;
      v51 = v10;
      v52 = v11;
      v13 = v7[7];
      v14 = v7[8];
      v15 = v7[10];
      v57 = v7[9];
      v58 = v15;
      v55 = v13;
      v56 = v14;
      v48 = v8;
      if (*(v1 + 16))
      {
        v17 = *(&v48 + 1);
        v16 = v48;
        v18 = v49;
        v19 = DWORD2(v49);
        v20 = DWORD1(v53);
        v21 = BYTE8(v53);
        result = sub_1B03AB888(v49, DWORD2(v49));
        if (v22)
        {
          break;
        }
      }

LABEL_13:
      v29 = __OFADD__(v6++, 1);
      if (v29)
      {
        goto LABEL_57;
      }

LABEL_14:
      if (v6 == v5)
      {
        goto LABEL_55;
      }

      if (v6 >= v5)
      {
        goto LABEL_56;
      }
    }

    v23 = *(v1 + 56) + 72 * result;
    v43 = *v23;
    v25 = *(v23 + 32);
    v24 = *(v23 + 48);
    v26 = *(v23 + 64);
    v44 = *(v23 + 16);
    v45 = v25;
    v47 = v26;
    v46 = v24;
    sub_1B03A35B8(&v48, v41);
    sub_1B03BB0B4(&v43, v41);
    v27 = *RemoteMailbox.Attributes.noSelect.unsafeMutableAddressor();
    result = RemoteMailbox.Attributes.nonExistent.unsafeMutableAddressor();
    v28 = *result;
    if (!v27)
    {
      if (!*result)
      {
        goto LABEL_17;
      }

LABEL_10:
      LOWORD(v27) = v28 | v27;
      goto LABEL_11;
    }

    if ((v28 & ~v27) != 0)
    {
      goto LABEL_10;
    }

LABEL_11:
    if ((HIWORD(v43) & v27) != 0)
    {
      sub_1B039E440(&v43);
      result = sub_1B03A3614(&v48);
      goto LABEL_13;
    }

LABEL_17:
    v41[8] = v56;
    v41[9] = v57;
    v41[10] = v58;
    v41[4] = v52;
    v41[5] = v53;
    v41[6] = v54;
    v41[7] = v55;
    v41[0] = v48;
    v41[1] = v49;
    v41[2] = v50;
    v41[3] = v51;
    v41[13] = v45;
    v41[14] = v46;
    v42 = v47;
    v41[11] = v43;
    v41[12] = v44;
    if ((v38 & 1) == 0)
    {
      v29 = __OFADD__(v6++, 1);
      if (v29)
      {
        goto LABEL_60;
      }

      goto LABEL_40;
    }

    sub_1B03A35B8(&v48, v40);
    sub_1B03BB0B4(&v43, v40);
    v30 = MailboxName.isInbox.getter(v18, v19);
    sub_1B039E440(&v43);
    if ((v30 & 1) != 0 || v44 > 7u || ((1 << v44) & 0xDB) == 0 || (v21 & 1) == 0 && ((BYTE12(v54) & 1) != 0 || DWORD2(v54) < v20))
    {
      result = sub_1B03A3614(&v48);
      v29 = __OFADD__(v6++, 1);
      if (v29)
      {
        goto LABEL_59;
      }

      goto LABEL_40;
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03A3614(&v48);
    if (!*(v37 + 16))
    {
      sub_1B03BB144(v41);

      v29 = __OFADD__(v6++, 1);
      if (v29)
      {
        goto LABEL_58;
      }

      goto LABEL_14;
    }

    v31 = sub_1B03B8A9C(v16, v17);
    v33 = v32;

    if ((v33 & 1) == 0 || (~*(*(v37 + 56) + 2 * v31) & 0x3FFF) == 0)
    {
      result = sub_1B03BB144(v41);
      v29 = __OFADD__(v6++, 1);
      if (v29)
      {
        goto LABEL_58;
      }

      goto LABEL_14;
    }

    v29 = __OFADD__(v6++, 1);
    if (v29)
    {
      goto LABEL_61;
    }

LABEL_40:
    if (!*(*(&v56 + 1) + 16))
    {
      goto LABEL_54;
    }

    v34 = v49;
    v35 = DWORD2(v49);
    if ((static MailboxOfInterest.LocalModification.__derived_enum_equals(_:_:)(*(&v52 + 1), v53, 0, 0) & 1) == 0)
    {
      goto LABEL_54;
    }

    swift_bridgeObjectRetain_n();
    v36 = MailboxName.isInbox.getter(v34, v35);

    if (v36)
    {
      goto LABEL_43;
    }

    if (v44 > 3u)
    {
      if (v44 <= 5u && v44 != 4)
      {
        goto LABEL_43;
      }

LABEL_53:

LABEL_54:
      result = sub_1B03BB144(v41);
      if (v6 == v5)
      {
        goto LABEL_55;
      }

      continue;
    }

    if (v44 > 1u)
    {
      if (v44 != 2)
      {
        goto LABEL_53;
      }
    }

    else if (v44)
    {
      goto LABEL_53;
    }

LABEL_43:
    sub_1B03AB2E0(v40, v34, v35);
    sub_1B03BB144(v41);

    if (v6 == v5)
    {
LABEL_55:
      sub_1B0398EFC(v62, &qword_1EB6E4858, &qword_1B0EC5FE0);
      sub_1B0398EFC(&v61, &qword_1EB6E4860, &qword_1B0EC5FE8);
      sub_1B0398EFC(&v60, &qword_1EB6E4868, &unk_1B0EC5FF0);
      return v59;
    }
  }

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
  return result;
}

uint64_t sub_1B03BB638(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{

  if ((a4 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1B03BB69C(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v6 = a1;
  v7 = v3[1];
  v8 = *(v7 + 16);
  v9 = v7 + 32;
  if (*v3)
  {
    v10 = sub_1B0BA7CA4(a2, v4, v9, v8, (*v3 + 16), *v3 + 32);
    v12 = v11;
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = sub_1B03A912C(a2, v4, v9, v8);
    v12 = 0;
    if (v15)
    {
LABEL_3:
      if ((~v6 & 0xF8FC) != 0)
      {
        sub_1B03A5284(a2, v4, v12);

        v20 = v3[2];
        v19 = v3 + 2;
        v18 = v20;
        result = swift_isUniquelyReferenced_nonNull_native();
        *v19 = v20;
        if ((result & 1) == 0)
        {
          result = sub_1B03A4FB4(0, *(v18 + 16) + 1, 1);
          v18 = *v19;
        }

        v22 = *(v18 + 16);
        v21 = *(v18 + 24);
        if (v22 >= v21 >> 1)
        {
          result = sub_1B03A4FB4((v21 > 1), v22 + 1, 1);
          v18 = *v19;
        }

        *(v18 + 16) = v22 + 1;
        *(v18 + 2 * v22 + 32) = v6;
        *v19 = v18;
      }

      else
      {
      }

      return result;
    }
  }

  v16 = v10;

  if ((~v6 & 0xF8FC) == 0)
  {
    sub_1B0BCAE88(v16, v12, v17);

    return sub_1B0BCB3A0(v16);
  }

  v23 = v3[2];
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B0B94750(v23);
    v23 = result;
  }

  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v16 < *(v23 + 16))
  {
    *(v23 + 2 * v16 + 32) = v6;
    v3[2] = v23;
    return result;
  }

  __break(1u);
  return result;
}

void sub_1B03BB844()
{
  if (v0[24])
  {
    v1 = 0;
    v2 = *(*v0 + 16);
    v3 = *v0 - 144;
    v4 = MEMORY[0x1E69E7CC0];
LABEL_3:
    v5 = v3 + 176 * v1;
    while (v2 != v1)
    {
      if (v1 >= v2)
      {
        __break(1u);
LABEL_15:
        __break(1u);
        return;
      }

      v6 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        goto LABEL_15;
      }

      v7 = *(v5 + 344);
      ++v1;
      v5 += 176;
      if (!v7)
      {
        v8 = *v5;
        v9 = *(v5 + 8);
        v10 = *(v5 + 160);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_1B0B00800(0, *(v4 + 2) + 1, 1, v4);
        }

        v12 = *(v4 + 2);
        v11 = *(v4 + 3);
        if (v12 >= v11 >> 1)
        {
          v4 = sub_1B0B00800((v11 > 1), v12 + 1, 1, v4);
        }

        *(v4 + 2) = v12 + 1;
        v13 = &v4[24 * v12];
        *(v13 + 4) = v8;
        *(v13 + 5) = v9;
        *(v13 + 6) = v10;
        v1 = v6;
        goto LABEL_3;
      }
    }
  }
}

double sub_1B03BB96C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6[0] = &type metadata for UpdateServerUnreadCount;
  sub_1B0E461E8();
  v6[6] = 0xD000000000000017;
  v6[7] = 0x80000001B0ECD440;
  if (*(a1 + 16))
  {
    v5 = a1;
    sub_1B0B94E24(&v5, a2);
    sub_1B0B94E80(&v5);
  }

  else
  {

    sub_1B03B04BC(v6);
    *(a2 + 64) = 0;
    result = 0.0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

void *sub_1B03BBA34(unint64_t a1)
{
  if ((v1[24] & 1) == 0)
  {
    v38 = MEMORY[0x1E69E7CC0];

    return sub_1B0BAC648(v38);
  }

  v2 = *v1;
  v3 = *(*v1 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = 0;
  v5 = v2 + 32;
  v6 = MEMORY[0x1E69E7CC8];
  v40 = v2 + 32;
  while (2)
  {
    v41 = v6;
    v7 = (v5 + 176 * v4);
    for (i = v4; ; ++i)
    {
      if (i >= v3)
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v9 = *v7;
      v10 = v7[2];
      v45 = v7[1];
      v46 = v10;
      v44 = v9;
      v11 = v7[3];
      v12 = v7[4];
      v13 = v7[6];
      v49 = v7[5];
      v50 = v13;
      v47 = v11;
      v48 = v12;
      v14 = v7[7];
      v15 = v7[8];
      v16 = v7[10];
      v53 = v7[9];
      v54 = v16;
      v51 = v14;
      v52 = v15;
      v4 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_28;
      }

      v17 = DWORD2(v45);
      v19 = *(&v44 + 1);
      v18 = v45;
      v20 = v44;
      v21 = v49;
      v22 = *(&v48 + 1);
      sub_1B03A35B8(&v44, &v43);
      if (static MailboxOfInterest.LocalModification.__derived_enum_equals(_:_:)(v22, v21, a1, 0))
      {
        break;
      }

      sub_1B03A3614(&v44);
      v7 += 11;
      if (v4 == v3)
      {
        return v41;
      }
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = v41;
    v24 = sub_1B03B8A9C(v20, v19);
    v26 = v41[2];
    v27 = (v25 & 1) == 0;
    v28 = __OFADD__(v26, v27);
    v29 = v26 + v27;
    if (v28)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v30 = v25;
    if (v41[3] < v29)
    {
      sub_1B0B2F13C(v29, isUniquelyReferenced_nonNull_native);
      v24 = sub_1B03B8A9C(v20, v19);
      v5 = v40;
      if ((v30 & 1) != (v31 & 1))
      {
        goto LABEL_31;
      }

LABEL_15:
      v6 = v43;
      if (v30)
      {
        goto LABEL_16;
      }

LABEL_18:
      v6[(v24 >> 6) + 8] |= 1 << v24;
      v34 = (v6[6] + 16 * v24);
      *v34 = v20;
      v34[1] = v19;
      v35 = v6[7] + 16 * v24;
      *v35 = v18;
      *(v35 + 8) = v17;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03A3614(&v44);
      v36 = v6[2];
      v28 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (!v28)
      {
        v6[2] = v37;
        goto LABEL_20;
      }

LABEL_30:
      __break(1u);
LABEL_31:
      result = sub_1B0E46BA8();
      __break(1u);
      return result;
    }

    v5 = v40;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_15;
    }

    v33 = v24;
    sub_1B0B8D048();
    v24 = v33;
    v6 = v43;
    if ((v30 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_16:
    v32 = v6[7] + 16 * v24;
    *v32 = v18;
    *(v32 + 8) = v17;

    sub_1B03A3614(&v44);
LABEL_20:
    if (v4 != v3)
    {
      continue;
    }

    return v6;
  }
}

void *sub_1B03BBCFC()
{
  if ((v0[24] & 1) == 0)
  {
    v37 = MEMORY[0x1E69E7CC0];

    return sub_1B0BAC794(v37);
  }

  v1 = *(*v0 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v2 = 0;
  v3 = *v0 + 32;
  v4 = MEMORY[0x1E69E7CC8];
  while (2)
  {
    v5 = (v3 + 176 * v2);
    for (i = v2; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v7 = *v5;
      v8 = v5[2];
      v43 = v5[1];
      v44 = v8;
      v42 = v7;
      v9 = v5[3];
      v10 = v5[4];
      v11 = v5[6];
      v47 = v5[5];
      v48 = v11;
      v45 = v9;
      v46 = v10;
      v12 = v5[7];
      v13 = v5[8];
      v14 = v5[10];
      v51 = v5[9];
      v52 = v14;
      v49 = v12;
      v50 = v13;
      v2 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_28;
      }

      v15 = *(&v46 + 1);
      if (*(&v46 + 1) >= 3uLL)
      {
        break;
      }

      v5 += 11;
      if (v2 == v1)
      {
        return v4;
      }
    }

    v39 = v3;
    v16 = v47;
    v40 = DWORD2(v43);
    v17 = *(&v42 + 1);
    v18 = v43;
    v19 = v42;
    sub_1B03A35B8(&v42, &v41);
    v20 = v16;
    sub_1B07C9330(v15);
    v21 = v18;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = v4;
    v23 = sub_1B03B8A9C(v19, v17);
    v25 = v4[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v29 = v24;
    if (v4[3] >= v28)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v36 = v23;
        sub_1B0B8E2AC();
        v23 = v36;
      }
    }

    else
    {
      sub_1B0B31374(v28, isUniquelyReferenced_nonNull_native);
      v23 = sub_1B03B8A9C(v19, v17);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_31;
      }
    }

    v4 = v41;
    if ((v29 & 1) == 0)
    {
      v41[(v23 >> 6) + 8] |= 1 << v23;
      v32 = (v4[6] + 16 * v23);
      *v32 = v19;
      v32[1] = v17;
      v33 = v4[7] + 32 * v23;
      *v33 = v15;
      *(v33 + 8) = v20;
      *(v33 + 16) = v21;
      *(v33 + 24) = v40;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03A3614(&v42);
      v34 = v4[2];
      v27 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (!v27)
      {
        v4[2] = v35;
        goto LABEL_20;
      }

LABEL_30:
      __break(1u);
LABEL_31:
      result = sub_1B0E46BA8();
      __break(1u);
      return result;
    }

    v31 = v41[7] + 32 * v23;
    *v31 = v15;
    *(v31 + 8) = v20;
    *(v31 + 16) = v21;
    *(v31 + 24) = v40;

    sub_1B03A3614(&v42);
LABEL_20:
    v3 = v39;
    if (v2 != v1)
    {
      continue;
    }

    return v4;
  }
}

uint64_t sub_1B03BBFB8(uint64_t a1, int a2, uint64_t a3)
{
  v40 = a2;
  v38 = a1;
  v4 = type metadata accessor for ClientCommand(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37 - v8;
  v46 = type metadata accessor for TaskHistory.Running(0);
  v10 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - v14;
  v16 = type metadata accessor for RunningTask(0) - 8;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *(a3 + 16);
  if (v41)
  {
    v20 = 0;
    v21 = *(v17 + 80);
    v43 = *(v17 + 72);
    v44 = a3 + ((v21 + 32) & ~v21);
    v37 = v6 + 8;
    v39 = v4;
    v42 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    do
    {
      v45 = v20;
      sub_1B0390720(v44 + v43 * v20, v19, type metadata accessor for RunningTask);
      v22 = *(v19 + 6);
      v23 = *(v22 + 16);
      if (v23)
      {
        for (i = 0; i != v23; ++i)
        {
          if (i >= *(v22 + 16))
          {
            __break(1u);
LABEL_35:
            __break(1u);
            JUMPOUT(0x1B03BC5C8);
          }

          sub_1B0390720(v22 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * i, v15, type metadata accessor for TaskHistory.Running);
          sub_1B0390720(v15, v12, type metadata accessor for TaskHistory.Running);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v25 = type metadata accessor for TaskHistory.Running;
            v26 = v12;
          }

          else
          {
            v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
            sub_1B0423C80(&v12[*(v27 + 64)], v9, type metadata accessor for ClientCommand);
            sub_1B0390720(v9, v6, type metadata accessor for ClientCommand);
            switch(swift_getEnumCaseMultiPayload())
            {
              case 0xAu:
                sub_1B0390574(v9, type metadata accessor for ClientCommand);

                v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4BC0, &unk_1B0ED8640);
                v35 = *(v34 + 64);
                sub_1B0391D50(*&v6[*(v34 + 80)], *&v6[*(v34 + 80) + 8]);
                sub_1B0398EFC(&v6[v35], &unk_1EB6E2990, &qword_1B0E9B060);
                goto LABEL_25;
              case 0xFu:
                sub_1B0390574(v9, type metadata accessor for ClientCommand);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FE0, &unk_1B0EC26C0);
                goto LABEL_30;
              case 0x10u:
                sub_1B0390574(v9, type metadata accessor for ClientCommand);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4A00, &qword_1B0ECD770);
LABEL_30:

                sub_1B0398EFC(v6, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                goto LABEL_25;
              case 0x11u:
              case 0x12u:
                v28 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49F8, &qword_1B0EC7000) + 48)];
                v29 = *v28;
                v30 = *(v28 + 2);
                sub_1B0398EFC(v6, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                if (v30 != v40)
                {
                  goto LABEL_22;
                }

                v31 = *(v29 + 16);
                if (v31 != *(v38 + 16))
                {
                  goto LABEL_22;
                }

                if (v31)
                {
                  v32 = v29 == v38;
                }

                else
                {
                  v32 = 1;
                }

                if (v32)
                {
                  goto LABEL_33;
                }

                v33 = 32;
                break;
              case 0x13u:
              case 0x16u:
              case 0x17u:
              case 0x18u:
              case 0x19u:
              case 0x1Au:
              case 0x1Bu:
              case 0x1Cu:
              case 0x1Du:
                goto LABEL_23;
              default:
                sub_1B0390574(v9, type metadata accessor for ClientCommand);
                v26 = v6;
                v25 = type metadata accessor for ClientCommand;
                goto LABEL_24;
            }

            while (1)
            {
              if (!v31)
              {
                goto LABEL_35;
              }

              if (*(v29 + v33) != *(v38 + v33))
              {
                break;
              }

              ++v33;
              if (!--v31)
              {
LABEL_33:

                sub_1B0390574(v9, type metadata accessor for ClientCommand);
                sub_1B0390574(v15, type metadata accessor for TaskHistory.Running);
                sub_1B0390574(v42, type metadata accessor for RunningTask);
                return 0;
              }
            }

LABEL_22:

LABEL_23:
            v25 = type metadata accessor for ClientCommand;
            v26 = v9;
          }

LABEL_24:
          sub_1B0390574(v26, v25);
LABEL_25:
          sub_1B0390574(v15, type metadata accessor for TaskHistory.Running);
        }
      }

      v20 = v45 + 1;
      v19 = v42;
      sub_1B0390574(v42, type metadata accessor for RunningTask);
    }

    while (v20 != v41);
  }

  return 1;
}

uint64_t sub_1B03BC640@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t *a8@<X8>)
{
  v65 = a7;
  v67 = a8;
  v68 = a5;
  v13 = type metadata accessor for MailboxSyncState(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a3[12];
  if (v16)
  {
    HIDWORD(v63) = a1;
    v17 = v16 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
    swift_beginAccess();
    v18 = _s13SelectedStateV7WrappedVMa(0);
    sub_1B03BCDD0(v17 + *(v18 + 20), v15, type metadata accessor for MailboxSyncState);
    v64 = v16;

    v19 = sub_1B03BD1FC(a2 & 0x101010101FFFF01);
    v21 = v20;
    v23 = v22;
    sub_1B0B238BC(v15, type metadata accessor for MailboxSyncState);
    if ((sub_1B0A94670(0, v19) & 1) != 0 && (sub_1B0A94670(0, v21) & 1) == 0 && ((sub_1B03BE324(v19, v21) & 1) == 0 || (sub_1B0A94670(0, v23) & 1) == 0))
    {
      v62 = v67;
      *v67 = v64;
      v62[1] = v19;
      v62[2] = v21;
      v62[3] = v23;
      *(v62 + 40) = 0;
      goto LABEL_22;
    }

    v66 = a6;

    v24 = *(a3 + 43);
    v25 = *a3;
    v26 = a3[1];
    v27 = a3[2];
    v28 = a4;
    v29 = *(a3 + 6);
    swift_bridgeObjectRetain_n();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    *(&v75 + 1) = sub_1B0451E64(&unk_1F2710EF8);
    LOBYTE(v76) = 1;
    v80 = 0u;
    v81 = 0u;
    v82 = 256;
    *&v73 = v25;
    *(&v73 + 1) = v26;
    LOWORD(v74) = v24;
    *(&v74 + 1) = v27;
    LODWORD(v75) = v29;
    v69 = v27;
    v70 = v29;
    *(&v76 + 1) = &type metadata for ReSyncMailbox;
    sub_1B0451F2C();
    sub_1B0E461E8();
    DWORD2(v79) = *(a3 + 8);
    BYTE12(v79) = *(a3 + 36);
    *(&v79 + 13) = WORD2(v63);
    LOWORD(v92) = v82;
    v85 = v75;
    v86 = v76;
    v87 = v77;
    v88 = v78;
    v83 = v73;
    v84 = v74;
    v90 = v80;
    v91 = v81;
    v89 = v79;
    *(&v92 + 1) = MEMORY[0x1E69E7CC0];
    v93 = MEMORY[0x1E69E7CC0];
    sub_1B03B5C80(&v83, &v73, &qword_1EB6E4708, &qword_1B0EC5A88);
    if ((sub_1B03D0AD8(&v76 + 1, v28) & 1) == 0)
    {
      if (!*(v68 + 16) || (v36 = sub_1B03AB888(*(&v74 + 1), v75), (v37 & 1) == 0) || (v38 = *(*(v68 + 56) + 8 * v36), _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0(), v39 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0(), v40 = sub_1B0B872CC(v39, v38), , , (v40 & 1) != 0))
      {
        if ((v65 & 1) != 0 || (v76 & 1) == 0)
        {
          sub_1B0398EFC(&v73, &qword_1EB6E4708, &qword_1B0EC5A88);
          v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4708, &qword_1B0EC5A88);
          v42 = v67;
          v67[3] = v41;
          v42[4] = sub_1B0B23F6C(qword_1EB6DD408, &qword_1EB6E4708, &qword_1B0EC5A88);
          v43 = swift_allocObject();
          *v42 = v43;
          v44 = v92;
          *(v43 + 144) = v91;
          *(v43 + 160) = v44;
          *(v43 + 176) = v93;
          v45 = v88;
          *(v43 + 80) = v87;
          *(v43 + 96) = v45;
          v46 = v90;
          *(v43 + 112) = v89;
          *(v43 + 128) = v46;
          v47 = v84;
          *(v43 + 16) = v83;
          *(v43 + 32) = v47;
          v48 = v86;
          *(v43 + 48) = v85;
          *(v43 + 64) = v48;

LABEL_21:
          *(v42 + 40) = 1;
          goto LABEL_22;
        }
      }
    }

    sub_1B0398EFC(&v73, &qword_1EB6E4708, &qword_1B0EC5A88);
    sub_1B0398EFC(&v83, &qword_1EB6E4708, &qword_1B0EC5A88);

    v30 = v67;
    v67[4] = 0;
    *v30 = 0u;
    *(v30 + 1) = 0u;
  }

  else
  {
    v66 = a6;
    v31 = *(a3 + 43);
    v32 = *a3;
    v33 = a3[1];
    v34 = a3[2];
    v35 = *(a3 + 6);
    swift_bridgeObjectRetain_n();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    *(&v75 + 1) = sub_1B0451E64(&unk_1F2710F20);
    LOBYTE(v76) = 1;
    v80 = 0u;
    v81 = 0u;
    v82 = 256;
    *&v73 = v32;
    *(&v73 + 1) = v33;
    LOWORD(v74) = v31;
    *(&v74 + 1) = v34;
    LODWORD(v75) = v35;
    v71 = v34;
    v72 = v35;
    *(&v76 + 1) = &type metadata for ReSyncMailbox;
    sub_1B0451F2C();
    sub_1B0E461E8();
    DWORD2(v79) = *(a3 + 8);
    BYTE12(v79) = *(a3 + 36);
    *(&v79 + 13) = a1;
    LOWORD(v92) = v82;
    v85 = v75;
    v86 = v76;
    v87 = v77;
    v88 = v78;
    v83 = v73;
    v84 = v74;
    v90 = v80;
    v91 = v81;
    v89 = v79;
    *(&v92 + 1) = MEMORY[0x1E69E7CC0];
    v93 = MEMORY[0x1E69E7CC0];
    sub_1B03B5C80(&v83, &v73, &qword_1EB6E4708, &qword_1B0EC5A88);
    if ((sub_1B03D0AD8(&v76 + 1, a4) & 1) == 0)
    {
      if (!*(v68 + 16) || (v49 = sub_1B03AB888(*(&v74 + 1), v75), (v50 & 1) == 0) || (v51 = *(*(v68 + 56) + 8 * v49), _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0(), v52 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0(), v53 = sub_1B0B872CC(v52, v51), , , (v53 & 1) != 0))
      {
        if ((v65 & 1) != 0 || (v76 & 1) == 0)
        {
          sub_1B0398EFC(&v73, &qword_1EB6E4708, &qword_1B0EC5A88);
          v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4708, &qword_1B0EC5A88);
          v42 = v67;
          v67[3] = v54;
          v42[4] = sub_1B0B23F6C(qword_1EB6DD408, &qword_1EB6E4708, &qword_1B0EC5A88);
          v55 = swift_allocObject();
          *v42 = v55;
          v56 = v92;
          *(v55 + 144) = v91;
          *(v55 + 160) = v56;
          *(v55 + 176) = v93;
          v57 = v88;
          *(v55 + 80) = v87;
          *(v55 + 96) = v57;
          v58 = v90;
          *(v55 + 112) = v89;
          *(v55 + 128) = v58;
          v59 = v84;
          *(v55 + 16) = v83;
          *(v55 + 32) = v59;
          v60 = v86;
          *(v55 + 48) = v85;
          *(v55 + 64) = v60;
          goto LABEL_21;
        }
      }
    }

    sub_1B0398EFC(&v73, &qword_1EB6E4708, &qword_1B0EC5A88);
    sub_1B0398EFC(&v83, &qword_1EB6E4708, &qword_1B0EC5A88);
    v30 = v67;
    *v67 = 0u;
    *(v30 + 1) = 0u;
    v30[4] = 0;
  }

  *(v30 + 40) = -1;
LABEL_22:
}

uint64_t sub_1B03BCD08()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 80));

  return swift_deallocObject();
}

uint64_t sub_1B03BCD68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B03BCDD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B03BCE58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B03BCF14(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B03BCF40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for MessageIdentifierSet(0, *(a3 + 16), *(a3 + 24), a4);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t sub_1B03BD030(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B03BD0F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B03BD180(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B03BD1FC(unint64_t a1)
{
  v2 = v1;
  v25 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4010, &unk_1B0EC6220);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (&v24 - v4);
  v6 = type metadata accessor for PendingServerResponses(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v2[19];
  v9 = v2[20];
  v11 = v2[21];
  v12 = type metadata accessor for MailboxSyncState(0);
  sub_1B03BD4C8(v2 + *(v12 + 48), v8, type metadata accessor for PendingServerResponses);
  v13 = *v2;
  sub_1B03B5C80(v2 + *(v12 + 60), v5, &qword_1EB6E4010, &unk_1B0EC6220);
  v14 = type metadata accessor for MessageBatches(0);
  if ((*(*(v14 - 8) + 48))(v5, 1, v14) == 1)
  {
    sub_1B0398EFC(v5, &qword_1EB6E4010, &unk_1B0EC6220);
    v15 = 4507;
  }

  else
  {
    v15 = *v5;
    sub_1B03BD5FC(v5, type metadata accessor for MessageBatches);
  }

  v16 = v25;
  v17 = sub_1B03BD65C(v13, v15, HIBYTE(v25) & 1);
  sub_1B03BD5FC(v8, type metadata accessor for PendingServerResponses);
  *&v26 = v10;
  *(&v26 + 1) = v9;
  v27 = v11;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03BD8F4(v17);

  v18 = v27;
  v24 = v26;
  v19 = sub_1B03BD9F0();
  v26 = v24;
  v27 = v18;
  sub_1B03BD8F4(v19);

  v20 = v26;
  v21 = v27;
  sub_1B03BDA90(v16 & 0x101010101FFFF01, &v26);
  v22 = sub_1B03BDBF8(v26, v20, *(&v20 + 1), v21);

  return v22;
}

uint64_t sub_1B03BD4C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for PendingServerResponses(uint64_t a1)
{
  result = qword_1EB6DD7C0;
  if (!qword_1EB6DD7C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B03BD59C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B03BD5FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B03BD65C(_BOOL8 a1, uint64_t a2, int a3)
{
  v4 = v3;
  v35 = MEMORY[0x1E69E7CD0];
  v8 = v3[3];
  v9 = v3[4];
  __swift_project_boxed_opaque_existential_0(v3, v8);
  v10 = *((*(v9 + 24))(v8, v9) + 16);

  if (v10 && (a3 ^ 1) & 1 | (v10 > 0x52))
  {
    v11 = v4[3];
    v12 = v4[4];
    __swift_project_boxed_opaque_existential_0(v4, v11);
    v13 = (*(v12 + 24))(v11, v12);
    LOBYTE(v11) = sub_1B0AA5A24(a1, a2, v13);

    if (v11)
    {
      v14 = &v30;
      v15 = 5;
    }

    else
    {
      v14 = &v31;
      v15 = 4;
    }

    sub_1B03BDD7C(v14, v15);
  }

  v16 = v4[3];
  v17 = v4[4];
  __swift_project_boxed_opaque_existential_0(v4, v16);
  (*(v17 + 40))(v16, v17);
  v19 = *(v18 + 16);

  if (v19 || (v25 = v4[3], v26 = v4[4], __swift_project_boxed_opaque_existential_0(v4, v25), v27 = (*(v26 + 72))(v25, v26), (v28 & 1) == 0) || v27)
  {
    sub_1B03BDD7C(&v34, 11);
  }

  v20 = v4[5];
  v21 = v20;
  if ((v4[6] & 1) == 0)
  {
    v21 = *(v20 + 16);
  }

  v22 = 82;
  if ((a3 & 1) == 0)
  {
    v22 = 0;
  }

  if (v21 > v22)
  {
    if (sub_1B0AA59AC(a1, a2, v20, *(v4 + 48)))
    {
      v23 = &v32;
      v24 = 3;
    }

    else
    {
      v23 = &v33;
      v24 = 2;
    }

    sub_1B03BDD7C(v23, v24);
  }

  return v35;
}

uint64_t sub_1B03BD880()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_1B03BD8D0()
{
  if ((*(*(v0 + 32) + 16) != 0) | *(v0 + 48) & 1)
  {
    return 0;
  }

  else
  {
    return *(v0 + 40);
  }
}

uint64_t sub_1B03BD8F4(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  for (i = 0; v5; result = sub_1B03BDD7C(&v14, v13))
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v9 << 6);
    v12 = *(a1 + 48);
    v13 = *(v12 + v11);
    sub_1B03BDE74(*(v12 + v11));
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
    }

    v5 = *(v2 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B03BD9F0()
{
  v5 = MEMORY[0x1E69E7CD0];
  if (*v0 == 1)
  {
    sub_1B03BDD7C(&v2, 6);
  }

  if (v0[1] == 1)
  {
    sub_1B03BDD7C(&v3, 7);
  }

  if (v0[2] == 1)
  {
    sub_1B03BDD7C(&v4, 8);
  }

  return v5;
}

uint64_t sub_1B03BDA90@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v2 = result;
  if ((result & 0x1000000) == 0)
  {
    v4 = MEMORY[0x1E69E7CC0];
    if ((result & 0xFF0000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  result = sub_1B03BDA7C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v4 = result;
  v6 = *(result + 16);
  v5 = *(result + 24);
  v7 = v5 >> 1;
  v8 = v6 + 1;
  if (v5 >> 1 <= v6)
  {
    result = sub_1B03BDA7C((v5 > 1), v6 + 1, 1, result);
    v4 = result;
    v5 = *(result + 24);
    v7 = v5 >> 1;
  }

  *(v4 + 16) = v8;
  *(v4 + v6 + 32) = 2;
  v9 = v6 + 2;
  if (v7 < v9)
  {
    result = sub_1B03BDA7C((v5 > 1), v9, 1, v4);
    v4 = result;
  }

  *(v4 + 16) = v9;
  *(v4 + v8 + 32) = 4;
  if ((*&v2 & 0xFF0000) == 0)
  {
LABEL_9:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B03BDA7C(0, *(v4 + 16) + 1, 1, v4);
      v4 = result;
    }

    v11 = *(v4 + 16);
    v10 = *(v4 + 24);
    if (v11 >= v10 >> 1)
    {
      result = sub_1B03BDA7C((v10 > 1), v11 + 1, 1, v4);
      v4 = result;
    }

    *(v4 + 16) = v11 + 1;
    *(v4 + v11 + 32) = 10;
  }

LABEL_14:
  *a2 = v4;
  return result;
}

uint64_t sub_1B03BDBF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v13 = a3;
  v14 = a2;
  v12 = a4;
  v5 = *(a1 + 16);
  if (!v5)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return v4;
  }

  v6 = (a1 + 32);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  do
  {
    v8 = *v6++;
    v7 = v8;
    v9 = v13;
    if (sub_1B0A94670(v8, v13))
    {
      sub_1B03BDE74(v7);
      sub_1B03BDE74(v7);
      v9 = v13;
    }

    else if (sub_1B0A94670(v7, v14) & 1) != 0 && (sub_1B0A94670(v7, v12))
    {
      sub_1B03BDE74(v7);
    }

    else
    {
      sub_1B03BDD7C(&v11, v7);
    }

    if (sub_1B0A94670(v7, v9))
    {
      sub_1B03BDE74(v7);
    }

    else if ((sub_1B0A94670(v7, v14) & 1) == 0 || (sub_1B0A94670(v7, v12) & 1) == 0)
    {
      sub_1B03BDD7C(&v11, v7);
      goto LABEL_4;
    }

    sub_1B03BDE74(v7);
LABEL_4:
    --v5;
  }

  while (v5);
  return v14;
}

uint64_t sub_1B03BDD7C(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a2);
  v6 = sub_1B0E46CB8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1B0B05C0C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1B03BDE74(unsigned __int8 a1)
{
  v3 = *v1;
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1);
  v4 = sub_1B0E46CB8();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 15;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 15;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1B03BDF7C();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + v6);
  sub_1B03BE0BC(v6);
  result = v11;
  *v1 = v12;
  return result;
}

void *sub_1B03BDF7C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4360, &qword_1B0EC50A8);
  v2 = *v0;
  v3 = sub_1B0E461F8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_1B03BE0BC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1B0E460C8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + v6);
        sub_1B0E46C28();
        MEMORY[0x1B2728D70](v10);
        v11 = sub_1B0E46CB8() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + v2);
          v14 = (v12 + v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1B03BE264(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B03BE2C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B03BE324(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = a1 + 56;
  v6 = a2 + 56;
  while (*(a1 + 16))
  {
    v7 = byte_1F2710570[v4 + 32];
    sub_1B0E46C28();
    MEMORY[0x1B2728D70](v7);
    v8 = sub_1B0E46CB8();
    v9 = -1 << *(a1 + 32);
    v10 = v8 & ~v9;
    if (((*(v5 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      break;
    }

    ++v4;
    v11 = ~v9;
    while (*(*(a1 + 48) + v10) != v7)
    {
      v10 = (v10 + 1) & v11;
      if (((*(v5 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        return 0;
      }
    }

    if (*(a2 + 16))
    {
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v7);
      v12 = sub_1B0E46CB8();
      v13 = -1 << *(a2 + 32);
      v14 = v12 & ~v13;
      if ((*(v6 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
      {
        v15 = ~v13;
        while (*(*(a2 + 48) + v14) != v7)
        {
          v14 = (v14 + 1) & v15;
          if (((*(v6 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        return 0;
      }
    }

LABEL_13:
    if (v4 == 15)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1B03BE4A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

double sub_1B03BE4F4@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t (*a5)(uint64_t *)@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t (*a10)(void), uint64_t a11, char *a12, unint64_t a13, uint64_t a14, char a15)
{
  v739 = a8;
  v740 = a7;
  v771 = a6;
  v745 = a4;
  v750 = a3;
  v752 = a2;
  v847 = a13;
  v846 = BYTE3(a13);
  v844 = BYTE5(a13);
  v845 = BYTE4(a13);
  v842 = HIBYTE(a13);
  v843 = BYTE6(a13);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4618, &qword_1B0EC59A8);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v707 = v692 - v20;
  v708 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4620, &qword_1B0EC59B0);
  MEMORY[0x1EEE9AC00](v708);
  v704 = v692 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v705 = v692 - v23;
  v728 = _s29DetermineMessageBatchesResultOMa(0);
  MEMORY[0x1EEE9AC00](v728);
  v729 = (v692 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = type metadata accessor for MessageBatches(0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v732 = v692 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4068, &unk_1B0EC2D20);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v719 = v692 - v28;
  v742 = type metadata accessor for PendingPersistenceUpdates(0);
  MEMORY[0x1EEE9AC00](v742);
  v718 = v692 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v759 = type metadata accessor for SearchMailbox(0);
  MEMORY[0x1EEE9AC00](v759);
  v758 = (v692 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v760 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4590, &qword_1B0EC5900);
  MEMORY[0x1EEE9AC00](v760);
  v757 = v692 - v31;
  v773 = _s19UserInitiatedSearchV5StateOMa(0);
  MEMORY[0x1EEE9AC00](v773);
  v761 = v692 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v772 = _s19UserInitiatedSearchVMa(0);
  v767 = *(v772 - 8);
  MEMORY[0x1EEE9AC00](v772);
  v764 = (v692 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v734 = type metadata accessor for DownloadTask(0);
  MEMORY[0x1EEE9AC00](v734);
  v711 = (v692 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v35);
  v713 = (v692 - v36);
  MEMORY[0x1EEE9AC00](v37);
  v722 = (v692 - v38);
  MEMORY[0x1EEE9AC00](v39);
  v730 = (v692 - v40);
  v735 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4598, &unk_1B0EC5908);
  MEMORY[0x1EEE9AC00](v735);
  v710 = v692 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v712 = v692 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v723 = v692 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v731 = v692 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v48 - 8);
  v701 = v692 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v706 = v692 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v753 = v692 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v738 = v692 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v744 = v692 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v768 = v692 - v59;
  v724 = type metadata accessor for MessagesPendingDownloadPerPass(0);
  MEMORY[0x1EEE9AC00](v724);
  v702 = v692 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61);
  v727 = v692 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v736 = v692 - v64;
  v721 = type metadata accessor for MessagesPendingDownload(0);
  MEMORY[0x1EEE9AC00](v721);
  v700 = (v692 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v66);
  v703 = (v692 - v67);
  MEMORY[0x1EEE9AC00](v68);
  v709 = v692 - v69;
  MEMORY[0x1EEE9AC00](v70);
  v720 = (v692 - v71);
  MEMORY[0x1EEE9AC00](v72);
  v766 = (v692 - v73);
  MEMORY[0x1EEE9AC00](v74);
  v737 = (v692 - v75);
  MEMORY[0x1EEE9AC00](v76);
  v741 = v692 - v77;
  MEMORY[0x1EEE9AC00](v78);
  v769 = v692 - v79;
  v80 = _s29DetermineNewestMessagesResultOMa(0);
  MEMORY[0x1EEE9AC00](v80);
  v82 = v692 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for NewestMessages(0);
  v716 = *(v83 - 8);
  v717 = v83;
  MEMORY[0x1EEE9AC00](v83);
  v85 = v692 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v748 = 0;
  v749 = a1;
  v743 = a13;
  v714 = a13 & 0xFFFF00;
  v765 = a5;
  sub_1B03D6DD0(a1, a5, v771, v82);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v86 = *v82;
    v87 = *(v82 + 1);
    *a9 = *v82;
    *(a9 + 1) = v87;
    a9[4] = *(v82 + 4);
    return *&v86;
  }

  v725 = v85;
  v726 = a9;
  sub_1B0B24104(v82, v85, type metadata accessor for NewestMessages);
  v756 = *(v15 + 172);
  v88 = *v15;
  v755 = *(v15 + 8);
  v89 = *(v15 + 16);
  v754 = *(v15 + 24);
  v90 = *(v15 + 144);
  v91 = *(v90 + 16);
  v746 = v15;
  v747 = v90;
  v763 = v88;
  v762 = v89;
  v698 = v91;
  if (v91)
  {
    *&v799 = MEMORY[0x1E69E7CC0];
    v92 = v90;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B0A304(0, v91, 0);
    v93 = v799;
    v94 = (v92 + 48);
    do
    {
      v95 = *(v94 - 1);
      v96 = *v94;
      sub_1B03B2000(v95, *v94);
      *&v799 = v93;
      v98 = *(v93 + 16);
      v97 = *(v93 + 24);
      if (v98 >= v97 >> 1)
      {
        sub_1B0B0A304((v97 > 1), v98 + 1, 1);
        v93 = v799;
      }

      v94 += 5;
      *(v93 + 16) = v98 + 1;
      v99 = v93 + 16 * v98;
      *(v99 + 32) = v95;
      *(v99 + 40) = v96;
      --v91;
    }

    while (v91);
  }

  else
  {
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v93 = MEMORY[0x1E69E7CC0];
  }

  v100 = sub_1B03D74A0(v93);

  v101 = v749 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
  swift_beginAccess();
  v733 = _s13SelectedStateV7WrappedVMa(0);
  v102 = *(v733 + 20);
  v699 = v101;
  v103 = v101 + v102;
  v715 = type metadata accessor for MailboxSyncState(0);
  v104 = *(v103 + v715[14]);
  *&v805 = MEMORY[0x1E69E7CD0];
  BYTE8(v805) = 0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v105 = MEMORY[0x1E69E7CC0];
  v806 = sub_1B03D016C(MEMORY[0x1E69E7CC0]);
  v106 = sub_1B03D753C(v104, v100);

  if (*(v106 + 16))
  {
    *&v799 = v763;
    *(&v799 + 1) = v755;
    LOWORD(v800) = v756;
    *(&v800 + 1) = v762;
    LODWORD(v801) = v754;
    *&v833 = v762;
    DWORD2(v833) = v754;
    *(&v801 + 1) = v106;
    *&v802 = &type metadata for GetUIDsForDownloadRequests;
    sub_1B0451F2C();
    sub_1B0E461E8();
    v778 = v803;
    v779 = v804;
    v780 = v805;
    v781 = v806;
    v774 = v799;
    v775 = v800;
    v776 = v801;
    v777 = v802;
    sub_1B0B0E0FC(&v774, v782);
    *&v782[120] = v105;
    *&v782[128] = v105;
    sub_1B0B0E134(&v774);
    *&v783[96] = *&v782[96];
    *&v783[112] = *&v782[112];
    *&v783[128] = *&v782[128];
    *&v783[32] = *&v782[32];
    *&v783[48] = *&v782[48];
    *&v783[64] = *&v782[64];
    *&v783[80] = *&v782[80];
    *v783 = *v782;
    *&v783[16] = *&v782[16];
    v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E45A0, &qword_1B0EC5918);
    *&v782[24] = v107;
    v104 = sub_1B0B23F6C(&qword_1EB6DD398, &qword_1EB6E45A0, &qword_1B0EC5918);
    *&v782[32] = v104;
    *v782 = swift_allocObject();
    sub_1B03B5C80(v783, *v782 + 16, &qword_1EB6E45A0, &qword_1B0EC5918);
    v108 = v765(v782);
    __swift_destroy_boxed_opaque_existential_0(v782);
    if (v108)
    {
      swift_bridgeObjectRelease_n();
      v109 = v726;
      v726[3] = v107;
      v109[4] = v104;
      v110 = swift_allocObject();
      *v109 = v110;
      v111 = *&v783[112];
      *(v110 + 112) = *&v783[96];
      *(v110 + 128) = v111;
      *(v110 + 144) = *&v783[128];
      v112 = *&v783[48];
      *(v110 + 48) = *&v783[32];
      *(v110 + 64) = v112;
      v113 = *&v783[80];
      *(v110 + 80) = *&v783[64];
      *(v110 + 96) = v113;
      v114 = *&v783[16];
      *(v110 + 16) = *v783;
      *(v110 + 32) = v114;
      v115 = type metadata accessor for NewestMessages;
      v116 = v725;
      goto LABEL_174;
    }

    sub_1B0398EFC(v783, &qword_1EB6E45A0, &qword_1B0EC5918);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v117 = v750;
  v118 = v769;
  v119 = v746;
  if (qword_1EB6DDFC0 != -1)
  {
    swift_once();
  }

  v697 = qword_1EB737DC0;
  if ((sub_1B03D9200(qword_1EB737DC0, v752, v117) & 1) == 0)
  {

    v139 = v752;
    v121 = v699;
    v120 = v733;
LABEL_52:
    v835 = 0;
    v833 = 0u;
    v834 = 0u;
    goto LABEL_53;
  }

  v120 = v733;
  v104 = v715;
  v121 = v699;
  v122 = v736;
  sub_1B03BCDD0(v699 + *(v733 + 20) + v715[13] + *(v742 + 28), v736, type metadata accessor for MessagesPendingDownloadPerPass);
  sub_1B03BCDD0(v122, v118, type metadata accessor for MessagesPendingDownload);
  v123 = sub_1B0B238BC(v122, type metadata accessor for MessagesPendingDownloadPerPass);
  if (!*(*v118 + 16) && !*(*(v121 + *(v120 + 5) + *(v104 + 14)) + 16))
  {

    sub_1B0B238BC(v118, type metadata accessor for MessagesPendingDownload);
    v139 = v752;
    goto LABEL_52;
  }

  v124 = v768;
  v740(v123);
  v125 = v121;
  v126 = v741;
  sub_1B03BCDD0(v118, v741, type metadata accessor for MessagesPendingDownload);
  v127 = v124;
  v128 = v744;
  sub_1B03B5C80(v127, v744, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v129 = *(v120 + 5);
  v130 = v125;
  v131 = *(v125 + v129 + *(v104 + 14));
  v132 = v737;
  sub_1B03BCDD0(v126, v737, type metadata accessor for MessagesPendingDownload);
  v133 = v738;
  sub_1B03B5C80(v128, v738, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v134 = swift_allocObject();
  *(v134 + 16) = v131;
  *&v799 = v747;
  *(&v799 + 1) = sub_1B0B24174;
  *&v800 = v134;
  *(&v800 + 1) = sub_1B0B23460;
  *&v801 = 0;
  *(&v801 + 1) = sub_1B0B23474;
  *&v802 = 0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v135 = sub_1B0B20C24(v132, v133, &v799);
  v137 = v136;
  v696 = v138;
  sub_1B0398EFC(v128, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0B238BC(v126, type metadata accessor for MessagesPendingDownload);
  v139 = v752;
  v695 = v135;
  v694 = byte_1F2711260;
  if (byte_1F2711260)
  {
    v140 = v748;
    if (byte_1F2711260 == 1)
    {
      v141 = 11;
    }

    else
    {
      v141 = 13;
    }

    v121 = v130;
    v145 = v137 | ((HIDWORD(v137) & 1) << 32);
    v146 = v744;
    v104 = v696;
    v147 = sub_1B0B42388(v141, v135, v145, v744);
    MEMORY[0x1EEE9AC00](v147);
    v690 = v146;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v148 = sub_1B0B1578C(sub_1B0B24178, &v692[-4], v135);
    v748 = v140;
    v149 = sub_1B0B208F0(v148);
    sub_1B0398EFC(v146, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v144 = v149;
    v117 = v750;
    goto LABEL_28;
  }

  v104 = v696;
  v142 = *(v696 + 16);
  if (v142 > 7)
  {
    v143 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v144 = sub_1B0B20A30(v143, v104 + 32, v142 - 7, (2 * v142) | 1);
    v121 = v130;
LABEL_28:
    v120 = v733;
    goto LABEL_29;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v213 = v142 - 1;
  v121 = v130;
  v144 = v104;
  if (v142 <= 1)
  {
    goto LABEL_28;
  }

  v214 = *(v104 + 2);
  if (!v214)
  {
    goto LABEL_296;
  }

  if (v213 >= v214)
  {
    goto LABEL_297;
  }

  v215 = *(v104 + 8);
  v770 = *(v104 + 5);
  v216 = *(v104 + 48);
  LODWORD(v751) = *(v104 + 49);
  v217 = 24 * v213;
  v218 = v104 + 24 * v213 + 32;
  v219 = *v218;
  v220 = *(v218 + 8);
  v221 = *(v218 + 16);
  v222 = *(v218 + 17);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v144 = v104;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v144 = sub_1B0B8C98C(v696);
  }

  *(v144 + 32) = v219;
  *(v144 + 40) = v220;
  *(v144 + 48) = v221;
  *(v144 + 49) = v222;
  v224 = v144 + 32 + v217;
  *v224 = v215;
  *(v224 + 8) = v770;
  *(v224 + 16) = v216;
  *(v224 + 17) = v751;
  v117 = v750;
  v139 = v752;
  v121 = v699;
  v120 = v733;
  v104 = v696;
  if (v142 >> 1 != 1)
  {
    v225 = v142 - 2;
    if (v142 != 3)
    {
      v226 = *(v144 + 16);
      if (v226 < 2)
      {
        goto LABEL_296;
      }

      if (v225 >= v226)
      {
        goto LABEL_297;
      }

      v227 = *(v144 + 56);
      v770 = *(v144 + 64);
      LODWORD(v751) = *(v144 + 72);
      LODWORD(v693) = *(v144 + 73);
      v228 = 24 * v225;
      v229 = v144 + 24 * v225;
      v230 = *(v229 + 32);
      v231 = *(v229 + 40);
      v232 = *(v229 + 48);
      v233 = *(v229 + 49);
      v234 = v144;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v234 = sub_1B0B8C98C(v234);
      }

      v144 = v234;
      v235 = &v234[v228];
      *(v234 + 14) = v230;
      *(v234 + 8) = v231;
      v234[72] = v232;
      v234[73] = v233;
      *(v235 + 8) = v227;
      *(v235 + 5) = v770;
      v235[48] = v751;
      v235[49] = v693;
      v117 = v750;
      v139 = v752;
      v121 = v699;
      v120 = v733;
      v104 = v696;
    }

    if (v142 >> 1 == 2)
    {
      goto LABEL_29;
    }

    v236 = v142 - 3;
    if (v142 == 5)
    {
      goto LABEL_29;
    }

    v237 = *(v144 + 16);
    if (v237 >= 3)
    {
      if (v236 < v237)
      {
        v238 = *(v144 + 80);
        v770 = *(v144 + 88);
        v239 = *(v144 + 96);
        v240 = *(v144 + 97);
        v241 = 24 * v236;
        v242 = v144 + 24 * v236;
        v243 = *(v242 + 32);
        v244 = *(v242 + 40);
        v245 = *(v242 + 48);
        v246 = *(v242 + 49);
        v247 = v144;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v247 = sub_1B0B8C98C(v247);
        }

        v144 = v247;
        v248 = &v247[v241];
        *(v247 + 20) = v243;
        *(v247 + 11) = v244;
        v247[96] = v245;
        v247[97] = v246;
        *(v248 + 8) = v238;
        *(v248 + 5) = v770;
        v248[48] = v239;
        v248[49] = v240;
        v117 = v750;
        v139 = v752;
        v121 = v699;
        v120 = v733;
        v104 = v696;
        goto LABEL_29;
      }

LABEL_297:
      __break(1u);
      goto LABEL_298;
    }

LABEL_296:
    __break(1u);
    goto LABEL_297;
  }

LABEL_29:
  v150 = *(v144 + 16);
  if (!v150)
  {

    v119 = v746;
LABEL_51:
    sub_1B0398EFC(v768, &unk_1EB6E1AF0, &unk_1B0E9AF40);

    sub_1B0B238BC(v769, type metadata accessor for MessagesPendingDownload);
    goto LABEL_52;
  }

  v151 = *(v121 + *(v120 + 5) + v715[20]);
  v152 = v144 + 32;
  v153 = *(v151 + 16);
  v770 = (v151 + 32);
  v692[1] = v151;
  v751 = v150;
  v154 = v144;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v693 = v154;
  v155 = v751;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v156 = 0;
  v157 = MEMORY[0x1E69E7CC0];
  v158 = v152;
  do
  {
    if (v153)
    {
      v169 = *(v152 + 24 * v156);
      v170 = v770;
      v171 = v153;
      while (1)
      {
        v172 = *v170;
        v173 = v170[1];
        v174 = v170[3];
        *&v783[32] = v170[2];
        *&v783[48] = v174;
        *v783 = v172;
        *&v783[16] = v173;
        v175 = v170[4];
        v176 = v170[5];
        v177 = v170[7];
        *&v783[96] = v170[6];
        *&v783[112] = v177;
        *&v783[64] = v175;
        *&v783[80] = v176;
        v178 = v170[8];
        v179 = v170[9];
        v180 = v170[10];
        *&v783[169] = *(v170 + 169);
        *&v783[144] = v179;
        *&v783[160] = v180;
        *&v783[128] = v178;
        if (v169 == *v783)
        {
          break;
        }

        v170 += 12;
        if (!--v171)
        {
          goto LABEL_32;
        }
      }

      sub_1B0A912A8(v783, v782);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v157 = sub_1B0B00298(0, v157[2] + 1, 1, v157);
      }

      v182 = v157[2];
      v181 = v157[3];
      if (v182 >= v181 >> 1)
      {
        v157 = sub_1B0B00298((v181 > 1), v182 + 1, 1, v157);
      }

      *&v782[132] = *&v783[136];
      *&v782[148] = *&v783[152];
      *&v782[164] = *&v783[168];
      v782[180] = v783[184];
      *&v782[68] = *&v783[72];
      *&v782[84] = *&v783[88];
      *&v782[100] = *&v783[104];
      *&v782[116] = *&v783[120];
      *&v782[4] = *&v783[8];
      *&v782[20] = *&v783[24];
      *&v782[36] = *&v783[40];
      *&v782[52] = *&v783[56];
      v157[2] = v182 + 1;
      v159 = &v157[24 * v182];
      *(v159 + 8) = v169;
      v160 = *v782;
      v161 = *&v782[16];
      v162 = *&v782[32];
      *(v159 + 84) = *&v782[48];
      *(v159 + 68) = v162;
      *(v159 + 52) = v161;
      *(v159 + 36) = v160;
      v163 = *&v782[64];
      v164 = *&v782[80];
      v165 = *&v782[96];
      *(v159 + 148) = *&v782[112];
      *(v159 + 132) = v165;
      *(v159 + 116) = v164;
      *(v159 + 100) = v163;
      v166 = *&v782[128];
      v167 = *&v782[144];
      v168 = *&v782[160];
      *(v159 + 209) = *&v782[173];
      *(v159 + 196) = v168;
      *(v159 + 180) = v167;
      *(v159 + 164) = v166;
      v155 = v751;
      v152 = v158;
    }

LABEL_32:
    ++v156;
  }

  while (v156 != v155);
  if (v157[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E45C0, &unk_1B0EC5930);
    v183 = sub_1B0E466A8();
  }

  else
  {
    v183 = MEMORY[0x1E69E7CC8];
  }

  v184 = v763;
  v185 = v762;
  *v783 = v183;
  v186 = v748;
  sub_1B0B234B8(v157, 1, v783);
  if (v186)
  {
    goto LABEL_377;
  }

  v748 = 0;
  v187 = v693;

  v770 = *v783;
  v838[0] = v184;
  v838[1] = v755;
  v839 = v756;
  v840 = v185;
  v188 = v754;
  v841 = v754;
  swift_bridgeObjectRetain_n();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v189 = sub_1B0451E64(MEMORY[0x1E69E7CC0]);
  v190 = v730;
  *v730 = v189;
  *(v190 + 8) = 0;
  v191 = v694;
  sub_1B0ABD77C(v838, v187, v694, v807);
  v192 = *(&v808 + 1);
  v193 = v807[1];
  *(v190 + 64) = v807[0];
  *(v190 + 80) = v193;
  *(v190 + 96) = v808;
  *(v190 + 112) = v809;
  *(v190 + 9) = 0;
  *v783 = v185;
  *&v783[8] = v188;
  v783[12] = 0;
  v783[13] = v191;
  v194 = v734;
  *(v190 + 16) = v734;
  sub_1B03D06A4();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E461E8();
  v195 = *(v194 + 36);
  v751 = *(v194 + 40);
  v196 = v190 + v195;
  v197 = v185;
  v198 = _s18InProgressMessagesVMa(0);
  sub_1B03D06F8();
  sub_1B0E46EE8();
  sub_1B0E46EE8();
  sub_1B0E46EE8();
  v104 = MEMORY[0x1E69E7CC0];
  v199 = sub_1B0BABAA8(MEMORY[0x1E69E7CC0]);
  *v196 = v197;
  *(v196 + 8) = v188;
  *(v196 + 16) = v770;
  *(v196 + v198[7]) = v104;
  *(v196 + v198[8]) = v104;
  *(v196 + v198[11]) = v199;
  sub_1B0AC3330(&v751[v190]);
  sub_1B0AC39A4(v192);

  v200 = v731;
  sub_1B0B24104(v190, v731, type metadata accessor for DownloadTask);
  v201 = v735;
  v202 = (v200 + *(v735 + 36));
  *v202 = v104;
  v202[1] = v104;
  *&v783[24] = v201;
  v203 = sub_1B0B23F6C(&qword_1EB6DD400, &qword_1EB6E4598, &unk_1B0EC5908);
  *&v783[32] = v203;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v783);
  sub_1B03B5C80(v200, boxed_opaque_existential_1, &qword_1EB6E4598, &unk_1B0EC5908);
  LOBYTE(v196) = v765(v783);
  __swift_destroy_boxed_opaque_existential_0(v783);
  if ((v196 & 1) == 0)
  {
    sub_1B0398EFC(v200, &qword_1EB6E4598, &unk_1B0EC5908);
    v119 = v746;
    v117 = v750;
    v139 = v752;
    v121 = v699;
    v120 = v733;
    v104 = v696;
    goto LABEL_51;
  }

  *(&v834 + 1) = v201;
  v835 = v203;
  v205 = __swift_allocate_boxed_opaque_existential_1(&v833);
  sub_1B03C60A4(v200, v205, &qword_1EB6E4598, &unk_1B0EC5908);
  sub_1B0398EFC(v768, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0B238BC(v769, type metadata accessor for MessagesPendingDownload);
  v206 = v726;
  v119 = v746;
  v117 = v750;
  v139 = v752;
  v121 = v699;
  v120 = v733;
  if (*(&v834 + 1))
  {
    swift_bridgeObjectRelease_n();
    sub_1B0B238BC(v725, type metadata accessor for NewestMessages);
    v207 = &v833;
LABEL_115:
    sub_1B0450C74(v207, &v774);
    sub_1B0450C74(&v774, v206);
    return *&v86;
  }

LABEL_53:
  v208 = a10;
  v206 = a11;
  v731 = v743 >> 16;
  sub_1B0398EFC(&v833, &qword_1EB6E45A8, &unk_1B0EC5920);
  v696 = a11;
  v730 = a10;
  if (a10(0))
  {

    goto LABEL_120;
  }

  if (sub_1B03D9200(v697, v139, v117))
  {
    v104 = v727;
    sub_1B03BCDD0(v121 + *(v120 + 5) + v715[13] + *(v742 + 28), v727, type metadata accessor for MessagesPendingDownloadPerPass);
    if (v731)
    {
      v208 = v748;
      if (v731 == 1)
      {
        v209 = v766;
        sub_1B03BCDD0(v104 + *(v724 + 20), v766, type metadata accessor for MessagesPendingDownload);
        v210 = sub_1B0B238BC(v104, type metadata accessor for MessagesPendingDownloadPerPass);
      }

      else
      {
        v212 = v720;
        sub_1B03BCDD0(v104 + *(v724 + 20), v720, type metadata accessor for MessagesPendingDownload);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
        v206 = v725;
        if (sub_1B0E46E98())
        {
          sub_1B0B238BC(v104, type metadata accessor for MessagesPendingDownloadPerPass);
          sub_1B03BCDD0(v212, v766, type metadata accessor for MessagesPendingDownload);
        }

        else
        {
          v249 = v766;
          sub_1B03BCDD0(v212, v766, type metadata accessor for MessagesPendingDownload);
          MEMORY[0x1EEE9AC00](*v212);
          v690 = v206;
          v206 = sub_1B03DC144(v250, sub_1B0B24170, &v692[-4]);
          v117 = v750;
          sub_1B0B238BC(v104, type metadata accessor for MessagesPendingDownloadPerPass);

          *v249 = v206;
        }

        v210 = sub_1B0B238BC(v212, type metadata accessor for MessagesPendingDownload);
        v209 = v766;
      }
    }

    else
    {
      v211 = sub_1B03D985C(MEMORY[0x1E69E7CC0]);
      v209 = v766;
      *v766 = v211;
      v206 = *(v721 + 20);
      sub_1B03D06F8();
      sub_1B0E46EE8();
      v210 = sub_1B0B238BC(v104, type metadata accessor for MessagesPendingDownloadPerPass);
      v208 = v748;
    }

    v251 = *(*v209 + 16);
    v748 = v208;
    if (!v251 && !*(*(v121 + *(v120 + 5) + v715[14]) + 16))
    {

      sub_1B0B238BC(v209, type metadata accessor for MessagesPendingDownload);
      v119 = v746;
      goto LABEL_118;
    }

    v252 = v753;
    v740(v210);
    v253 = v121;
    v254 = v741;
    sub_1B03BCDD0(v209, v741, type metadata accessor for MessagesPendingDownload);
    v255 = v744;
    sub_1B03B5C80(v252, v744, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v256 = v253;
    v257 = *(v253 + *(v120 + 5) + v715[14]);
    v258 = v737;
    sub_1B03BCDD0(v254, v737, type metadata accessor for MessagesPendingDownload);
    v259 = v738;
    sub_1B03B5C80(v255, v738, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v260 = swift_allocObject();
    *(v260 + 16) = v257;
    *&v833 = v747;
    *(&v833 + 1) = sub_1B0B24174;
    *&v834 = v260;
    *(&v834 + 1) = sub_1B0B23460;
    v835 = 0;
    v836 = sub_1B0B23474;
    v837 = 0;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v261 = sub_1B0B20C24(v258, v259, &v833);
    v263 = v262;
    v768 = v264;
    sub_1B0398EFC(v255, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0B238BC(v254, type metadata accessor for MessagesPendingDownload);
    v751 = v261;
    LODWORD(v727) = byte_1F2711288;
    if (byte_1F2711288)
    {
      if (byte_1F2711288 == 1)
      {
        v265 = 11;
      }

      else
      {
        v265 = 13;
      }

      v269 = v256;
      v104 = v768;
      v270 = v744;
      v271 = sub_1B0B42388(v265, v261, v263 | ((HIDWORD(v263) & 1) << 32), v744);
      MEMORY[0x1EEE9AC00](v271);
      v690 = v270;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v272 = v748;
      v273 = sub_1B0B1578C(sub_1B0B24178, &v692[-4], v261);
      v748 = v272;
      v208 = sub_1B0B208F0(v273);
      sub_1B0398EFC(v270, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v119 = v746;
      v117 = v750;
      goto LABEL_94;
    }

    v104 = v768;
    v266 = *(v768 + 16);
    if (v266 > 7)
    {
      v267 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v268 = sub_1B0B20A30(v267, v104 + 32, v266 - 7, (2 * v266) | 1);
      v119 = v746;
      v117 = v750;
      v269 = v256;
      v208 = v268;
LABEL_94:
      v274 = *(v208 + 2);
      if (!v274)
      {

        v139 = v752;
        v206 = v766;
LABEL_117:
        sub_1B0398EFC(v753, &unk_1EB6E1AF0, &unk_1B0E9AF40);

        sub_1B0B238BC(v206, type metadata accessor for MessagesPendingDownload);
        goto LABEL_118;
      }

      v275 = *(v269 + *(v120 + 5) + v715[20]);
      v276 = v208 + 32;
      v277 = *(v275 + 16);
      v770 = (v275 + 32);
      v695 = v275;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v720 = v208;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v278 = 0;
      v279 = MEMORY[0x1E69E7CC0];
      v280 = v274;
      v769 = v276;
      do
      {
        if (v277)
        {
          v291 = *(v276 + 24 * v278);
          v292 = v770;
          v293 = v277;
          while (1)
          {
            v294 = *v292;
            v295 = v292[1];
            v296 = v292[3];
            *&v783[32] = v292[2];
            *&v783[48] = v296;
            *v783 = v294;
            *&v783[16] = v295;
            v297 = v292[4];
            v298 = v292[5];
            v299 = v292[7];
            *&v783[96] = v292[6];
            *&v783[112] = v299;
            *&v783[64] = v297;
            *&v783[80] = v298;
            v300 = v292[8];
            v301 = v292[9];
            v302 = v292[10];
            *&v783[169] = *(v292 + 169);
            *&v783[144] = v301;
            *&v783[160] = v302;
            *&v783[128] = v300;
            if (v291 == *v783)
            {
              break;
            }

            v292 += 12;
            if (!--v293)
            {
              goto LABEL_97;
            }
          }

          sub_1B0A912A8(v783, v782);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v279 = sub_1B0B00298(0, v279[2] + 1, 1, v279);
          }

          v304 = v279[2];
          v303 = v279[3];
          if (v304 >= v303 >> 1)
          {
            v279 = sub_1B0B00298((v303 > 1), v304 + 1, 1, v279);
          }

          *&v782[132] = *&v783[136];
          *&v782[148] = *&v783[152];
          *&v782[164] = *&v783[168];
          v782[180] = v783[184];
          *&v782[68] = *&v783[72];
          *&v782[84] = *&v783[88];
          *&v782[100] = *&v783[104];
          *&v782[116] = *&v783[120];
          *&v782[4] = *&v783[8];
          *&v782[20] = *&v783[24];
          *&v782[36] = *&v783[40];
          *&v782[52] = *&v783[56];
          v279[2] = v304 + 1;
          v281 = &v279[24 * v304];
          *(v281 + 8) = v291;
          v282 = *v782;
          v283 = *&v782[16];
          v284 = *&v782[32];
          *(v281 + 84) = *&v782[48];
          *(v281 + 68) = v284;
          *(v281 + 52) = v283;
          *(v281 + 36) = v282;
          v285 = *&v782[64];
          v286 = *&v782[80];
          v287 = *&v782[96];
          *(v281 + 148) = *&v782[112];
          *(v281 + 132) = v287;
          *(v281 + 116) = v286;
          *(v281 + 100) = v285;
          v288 = *&v782[128];
          v289 = *&v782[144];
          v290 = *&v782[160];
          *(v281 + 209) = *&v782[173];
          *(v281 + 196) = v290;
          *(v281 + 180) = v289;
          *(v281 + 164) = v288;
          v274 = v280;
          v276 = v769;
        }

LABEL_97:
        ++v278;
      }

      while (v278 != v274);
      if (v279[2])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E45C0, &unk_1B0EC5930);
        v305 = sub_1B0E466A8();
      }

      else
      {
        v305 = MEMORY[0x1E69E7CC8];
      }

      v306 = v762;
      v186 = v748;
      *v783 = v305;
      sub_1B0B234B8(v279, 1, v783);
      if (!v186)
      {
        v748 = 0;
        v307 = v720;

        v770 = *v783;
        v829[0] = v763;
        v829[1] = v755;
        v830 = v756;
        v831 = v306;
        v308 = v754;
        v832 = v754;
        swift_bridgeObjectRetain_n();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v309 = sub_1B0451E64(MEMORY[0x1E69E7CC0]);
        v120 = v722;
        *v722 = v309;
        *(v120 + 8) = 0;
        v310 = v307;
        LOBYTE(v307) = v727;
        sub_1B0ABD77C(v829, v310, v727, v810);
        v311 = *(&v811 + 1);
        v312 = v810[1];
        *(v120 + 4) = v810[0];
        *(v120 + 5) = v312;
        *(v120 + 6) = v811;
        *(v120 + 112) = v812;
        *(v120 + 9) = 1;
        *v783 = v306;
        *&v783[8] = v308;
        v783[12] = 1;
        v783[13] = v307;
        v313 = v734;
        v120[2] = v734;
        sub_1B03D06A4();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0E461E8();
        v314 = *(v313 + 36);
        v769 = *(v313 + 40);
        v315 = v120 + v314;
        v316 = _s18InProgressMessagesVMa(0);
        sub_1B03D06F8();
        v317 = v306;
        sub_1B0E46EE8();
        sub_1B0E46EE8();
        sub_1B0E46EE8();
        v318 = MEMORY[0x1E69E7CC0];
        v319 = sub_1B0BABAA8(MEMORY[0x1E69E7CC0]);
        *v315 = v317;
        *(v315 + 2) = v308;
        *(v315 + 2) = v770;
        *&v315[v316[7]] = v318;
        *&v315[v316[8]] = v318;
        v104 = v318;
        *&v315[v316[11]] = v319;
        sub_1B0AC3330(v120 + v769);
        sub_1B0AC39A4(v311);

        v320 = v723;
        sub_1B0B24104(v120, v723, type metadata accessor for DownloadTask);
        v321 = v735;
        v322 = (v320 + *(v735 + 36));
        *v322 = v104;
        v322[1] = v104;
        *&v783[24] = v321;
        v208 = sub_1B0B23F6C(&qword_1EB6DD400, &qword_1EB6E4598, &unk_1B0EC5908);
        *&v783[32] = v208;
        v323 = __swift_allocate_boxed_opaque_existential_1(v783);
        sub_1B03B5C80(v320, v323, &qword_1EB6E4598, &unk_1B0EC5908);
        LOBYTE(v315) = v765(v783);
        __swift_destroy_boxed_opaque_existential_0(v783);
        if (v315)
        {

          *(&v818 + 1) = v321;
          *&v819 = v208;
          v324 = __swift_allocate_boxed_opaque_existential_1(&v817);
          sub_1B03C60A4(v320, v324, &qword_1EB6E4598, &unk_1B0EC5908);
          sub_1B0398EFC(v753, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          sub_1B0B238BC(v766, type metadata accessor for MessagesPendingDownload);
          v206 = v726;
          v119 = v746;
          v117 = v750;
          v139 = v752;
          if (*(&v818 + 1))
          {
            swift_bridgeObjectRelease_n();
            sub_1B0B238BC(v725, type metadata accessor for NewestMessages);
            v207 = &v817;
            goto LABEL_115;
          }

          goto LABEL_119;
        }

        sub_1B0398EFC(v320, &qword_1EB6E4598, &unk_1B0EC5908);
        v119 = v746;
        v117 = v750;
        v139 = v752;
        v206 = v766;
        v104 = v768;
        goto LABEL_117;
      }

LABEL_377:

      for (i = v186; ; i = v748)
      {

        __break(1u);
LABEL_379:
      }
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v378 = v266 - 1;
    v119 = v746;
    v117 = v750;
    v269 = v256;
    v208 = v104;
    if (v266 <= 1)
    {
      goto LABEL_94;
    }

    v379 = *(v104 + 2);
    if (!v379)
    {
      goto LABEL_323;
    }

    if (v378 >= v379)
    {
      goto LABEL_324;
    }

    v380 = v104 + 32;
    v381 = *(v104 + 8);
    v770 = *(v104 + 5);
    LODWORD(v769) = *(v104 + 48);
    v208 = v104;
    v382 = *(v104 + 49);
    v383 = 24 * v378;
    v384 = &v380[24 * v378];
    v385 = *v384;
    v386 = *(v384 + 1);
    v387 = v384[16];
    v388 = v384[17];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v208 = sub_1B0B8C98C(v768);
    }

    *(v208 + 8) = v385;
    *(v208 + 5) = v386;
    *(v208 + 48) = v387;
    *(v208 + 49) = v388;
    v389 = v208 + v383 + 32;
    *v389 = v381;
    *(v389 + 1) = v770;
    v389[16] = v769;
    v389[17] = v382;
    v119 = v746;
    v117 = v750;
    v269 = v699;
    v120 = v733;
    v104 = v768;
    if (v266 >> 1 == 1)
    {
      goto LABEL_94;
    }

    v390 = v266 - 2;
    if (v266 != 3)
    {
      v391 = *(v208 + 2);
      if (v391 < 2)
      {
        goto LABEL_323;
      }

      if (v390 >= v391)
      {
        goto LABEL_324;
      }

      LODWORD(v770) = *(v208 + 14);
      v769 = *(v208 + 8);
      LODWORD(v720) = *(v208 + 72);
      v392 = *(v208 + 73);
      v393 = 24 * v390;
      v394 = v208 + 24 * v390;
      v395 = *(v394 + 8);
      v396 = *(v394 + 5);
      v397 = v394[48];
      v398 = v394[49];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v208 = sub_1B0B8C98C(v208);
      }

      v399 = v208 + v393;
      *(v208 + 14) = v395;
      *(v208 + 8) = v396;
      *(v208 + 72) = v397;
      *(v208 + 73) = v398;
      *(v399 + 8) = v770;
      *(v399 + 5) = v769;
      v399[48] = v720;
      v399[49] = v392;
      v119 = v746;
      v117 = v750;
      v269 = v699;
      v120 = v733;
      v104 = v768;
    }

    if (v266 >> 1 == 2)
    {
      goto LABEL_94;
    }

    v400 = v266 - 3;
    if (v266 == 5)
    {
      goto LABEL_94;
    }

    v401 = *(v208 + 2);
    if (v401 >= 3)
    {
      if (v400 < v401)
      {
        LODWORD(v770) = *(v208 + 20);
        v402 = v208;
        v403 = *(v208 + 11);
        v404 = v402[96];
        v405 = v402[97];
        v406 = 24 * v400;
        v407 = &v402[24 * v400];
        v408 = *(v407 + 8);
        v409 = *(v407 + 5);
        v410 = v407[48];
        v411 = v407[49];
        v412 = v402;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v412 = sub_1B0B8C98C(v412);
        }

        v413 = &v412[v406];
        *(v412 + 20) = v408;
        *(v412 + 11) = v409;
        v412[96] = v410;
        v412[97] = v411;
        *(v413 + 8) = v770;
        *(v413 + 5) = v403;
        v208 = v412;
        v413[48] = v404;
        v413[49] = v405;
        v119 = v746;
        v117 = v750;
        v269 = v699;
        v120 = v733;
        v104 = v768;
        goto LABEL_94;
      }

LABEL_324:
      __break(1u);
      goto LABEL_325;
    }

LABEL_323:
    __break(1u);
    goto LABEL_324;
  }

LABEL_118:
  *&v819 = 0;
  v817 = 0u;
  v818 = 0u;
LABEL_119:
  sub_1B0398EFC(&v817, &qword_1EB6E45A8, &unk_1B0EC5920);
LABEL_120:
  if (qword_1EB6DDF10 != -1)
  {
    swift_once();
  }

  if ((sub_1B03D9200(qword_1EB737DA8, v139, v117) & 1) == 0)
  {
    __break(1u);
    goto LABEL_229;
  }

  v325 = a12;
  v326 = v119[19];
  v327 = *(v326 + 16);
  v727 = v327;
  if (v327)
  {
    v328 = v326 + ((v767[80] + 32) & ~v767[80]);
    v329 = *(v767 + 9);
    v330 = v764;
    v331 = v761;
    v753 = a12;
    v751 = v329;
    do
    {
      sub_1B03BCDD0(v328, v330, _s19UserInitiatedSearchVMa);
      sub_1B03BCDD0(v330 + *(v772 + 20), v331, _s19UserInitiatedSearchV5StateOMa);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1B0B238BC(v330, _s19UserInitiatedSearchVMa);
        sub_1B0B238BC(v331, _s19UserInitiatedSearchV5StateOMa);
      }

      else
      {
        v332 = *(v331 + 8);
        v766 = *v331;
        v769 = *(v331 + 16);
        LODWORD(v768) = *(v331 + 24);
        v333 = *v330;
        LODWORD(v767) = *(v325 + 2);
        v334 = v758;
        *v758 = 223;
        *(v334 + 104) = MEMORY[0x1E69E7CD0];
        *(v334 + 112) = 0;
        v335 = v759;
        v336 = *(v759 + 52);
        v337 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
        (*(*(v337 - 8) + 56))(v334 + v336, 1, 1, v337);
        *(v334 + 8) = v333;
        v338 = v755;
        *(v334 + 16) = v763;
        *(v334 + 24) = v338;
        *(v334 + 32) = v756;
        v339 = v762;
        *(v334 + 40) = v762;
        LODWORD(v338) = v754;
        *(v334 + 48) = v754;
        LODWORD(v774) = v333;
        *(&v774 + 1) = v339;
        LODWORD(v775) = v338;
        *(v334 + 56) = v335;
        v340 = v757;
        swift_bridgeObjectRetain_n();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v341 = v766;
        sub_1B0B23938(v766);
        sub_1B0B23974();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0E461E8();
        *(v334 + 120) = v341;
        *(v334 + 128) = v332;
        v770 = v332;
        *(v334 + 136) = v769;
        *(v334 + 144) = v768;
        *(v334 + 145) = v767;
        sub_1B0B24104(v334, v340, type metadata accessor for SearchMailbox);
        v342 = v760;
        v343 = (v340 + *(v760 + 36));
        v344 = MEMORY[0x1E69E7CC0];
        *v343 = MEMORY[0x1E69E7CC0];
        v343[1] = v344;
        *(&v775 + 1) = v342;
        v345 = sub_1B0B23F6C(&qword_1EB6E45B8, &qword_1EB6E4590, &qword_1B0EC5900);
        *&v776 = v345;
        v346 = __swift_allocate_boxed_opaque_existential_1(&v774);
        sub_1B03B5C80(v340, v346, &qword_1EB6E4590, &qword_1B0EC5900);
        LOBYTE(v333) = v765(&v774);
        __swift_destroy_boxed_opaque_existential_0(&v774);
        if (v333)
        {
          swift_bridgeObjectRelease_n();
          *&v782[24] = v760;
          *&v782[32] = v345;
          v358 = __swift_allocate_boxed_opaque_existential_1(v782);
          sub_1B03C60A4(v340, v358, &qword_1EB6E4590, &qword_1B0EC5900);
          sub_1B0B239C8(v341);

          sub_1B0B238BC(v764, _s19UserInitiatedSearchVMa);
          sub_1B0B238BC(v725, type metadata accessor for NewestMessages);
          sub_1B0450C74(v782, v783);
          sub_1B0450C74(v783, v726);
          return *&v86;
        }

        sub_1B0B239C8(v341);

        sub_1B0398EFC(v340, &qword_1EB6E4590, &qword_1B0EC5900);
        v330 = v764;
        sub_1B0B238BC(v764, _s19UserInitiatedSearchVMa);
        v325 = v753;
        v331 = v761;
        v329 = v751;
      }

      v328 += v329;
      --v327;
    }

    while (v327);
  }

  v347 = v752;
  if (v752[2] == 15 && !v750[2] && !v745[2])
  {
    v348 = v718;
    sub_1B03BCDD0(v699 + *(v733 + 20) + v715[13], v718, type metadata accessor for PendingPersistenceUpdates);
    v349 = v719;
    sub_1B03BCDD0(v725, v719, type metadata accessor for NewestMessages);
    (*(v716 + 56))(v349, 0, 1, v717);
    v350 = sub_1B03D9964(v731, v349);
    sub_1B0398EFC(v349, &qword_1EB6E4068, &unk_1B0EC2D20);
    sub_1B0B238BC(v348, type metadata accessor for PendingPersistenceUpdates);
    if (!v350 && !(*(*(v699 + *(v733 + 20) + v715[14]) + 16) | v727))
    {
      swift_bridgeObjectRelease_n();
      sub_1B0B238BC(v725, type metadata accessor for NewestMessages);
      *&v86 = 0;
      v428 = v726;
      *v726 = 0u;
      *(v428 + 16) = 0u;
      *(v428 + 32) = 0;
      return *&v86;
    }
  }

  v351 = v746;
  sub_1B03A35B8(v746, v783);
  v352 = v749;

  v353 = v765;
  v354 = v771;
  sub_1B0B1AFC4(v347, v750, v745, v765, v771, v351, v352, &v774);
  v355 = v726;
  if (*(&v775 + 1))
  {
    swift_bridgeObjectRelease_n();
    sub_1B0B238BC(v725, type metadata accessor for NewestMessages);
    sub_1B0450C74(&v774, v782);
    sub_1B0450C74(v782, v355);
    return *&v86;
  }

  sub_1B0398EFC(&v774, &qword_1EB6E45A8, &unk_1B0EC5920);
  v356 = v729;
  sub_1B0B1B95C(v352, v353, v354, v325, a14, a15 & 1, v729);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    swift_bridgeObjectRelease_n();
    sub_1B0B238BC(v725, type metadata accessor for NewestMessages);
    v86 = *v356;
    v357 = *(v356 + 1);
    *v355 = *v356;
    *(v355 + 16) = v357;
    *(v355 + 32) = v356[4];
    return *&v86;
  }

  v753 = v325;
  v359 = v743 >> 8;
  v360 = v732;
  v361 = sub_1B0B24104(v356, v732, type metadata accessor for MessageBatches);
  v770 = v692;
  v362 = v847;
  v363 = v846;
  v364 = v845;
  v365 = v844;
  v366 = v842;
  MEMORY[0x1EEE9AC00](v361);
  v692[-4] = v367;
  v692[-3] = v360;
  LOBYTE(v690) = v362;
  v773 = v359;
  BYTE1(v690) = v359;
  BYTE2(v690) = v731;
  BYTE3(v690) = v363;
  BYTE4(v690) = v364;
  BYTE5(v690) = v365;
  LODWORD(v772) = v368;
  BYTE6(v690) = v368;
  HIBYTE(v690) = v366;
  v369 = v752;
  v370 = v750;
  sub_1B0B18C58(v752, v750, v765, sub_1B0B2419C, &v817, v745);
  v769 = v362;
  LODWORD(v766) = v363;
  LODWORD(v768) = v364;
  LODWORD(v767) = v365;
  LODWORD(v764) = v366;
  if (*(&v818 + 1))
  {
    sub_1B0450C74(&v817, &v774);
    sub_1B0450C74(&v774, v782);
    v371 = v725;
    v372 = v753;
    v373 = v772;
    v374 = v773;
    if (!*&v782[24])
    {
      goto LABEL_167;
    }

LABEL_145:
    swift_bridgeObjectRelease_n();
    v377 = v371;
LABEL_170:
    sub_1B0B238BC(v377, type metadata accessor for NewestMessages);
    sub_1B0450C74(v782, v783);
    v426 = v783;
    goto LABEL_171;
  }

  v375 = sub_1B0398EFC(&v817, &qword_1EB6E45A8, &unk_1B0EC5920);
  v770 = v692;
  MEMORY[0x1EEE9AC00](v375);
  v692[-6] = v746;
  v692[-5] = v360;
  v372 = v753;
  v692[-4] = v749;
  v692[-3] = v372;
  LOBYTE(v690) = v362;
  v376 = v773;
  BYTE1(v690) = v773;
  BYTE2(v690) = v731;
  BYTE3(v690) = v363;
  BYTE4(v690) = v364;
  BYTE5(v690) = v365;
  v373 = v772;
  BYTE6(v690) = v772;
  HIBYTE(v690) = v366;
  sub_1B0B1892C(v369, v370, v765, v354, sub_1B0B241A0, &v817, v745);
  v374 = v376;
  if (*(&v818 + 1))
  {
    sub_1B0450C74(&v817, &v774);
    sub_1B0450C74(&v774, v782);
    v370 = v750;
    v369 = v752;
    v371 = v725;
    if (*&v782[24])
    {
      goto LABEL_145;
    }
  }

  else
  {
    sub_1B0398EFC(&v817, &qword_1EB6E45A8, &unk_1B0EC5920);
    memset(v782, 0, 40);
    v370 = v750;
    v369 = v752;
  }

LABEL_167:
  v414 = sub_1B0398EFC(v782, &qword_1EB6E45A8, &unk_1B0EC5920);
  MEMORY[0x1EEE9AC00](v414);
  v415 = v732;
  v692[-6] = v746;
  v692[-5] = v415;
  v692[-4] = v749;
  LOBYTE(v692[-3]) = v769;
  BYTE1(v692[-3]) = v374;
  v416 = v731;
  BYTE2(v692[-3]) = v731;
  BYTE3(v692[-3]) = v766;
  BYTE4(v692[-3]) = v768;
  BYTE5(v692[-3]) = v767;
  BYTE6(v692[-3]) = v373;
  v417 = v764;
  HIBYTE(v692[-3]) = v764;
  v690 = v372;
  v418 = v370;
  v419 = v373;
  v420 = v745;
  v421 = v765;
  v422 = v771;
  sub_1B0B1AC98(v369, v418, v765, v771, sub_1B0B23BC0, v782, v745);
  if (*&v782[24] || (v423 = sub_1B0398EFC(v782, &qword_1EB6E45A8, &unk_1B0EC5920), MEMORY[0x1EEE9AC00](v423), v424 = v732, v692[-6] = v746, v692[-5] = v424, v692[-4] = v749, v692[-3] = v372, LOBYTE(v690) = v769, BYTE1(v690) = v773, BYTE2(v690) = v416, v425 = v766, BYTE3(v690) = v766, BYTE4(v690) = v768, BYTE5(v690) = v767, BYTE6(v690) = v419, HIBYTE(v690) = v417, sub_1B0B1A96C(v369, v750, v421, v422, sub_1B0B23C48, v782, v420), *&v782[24]))
  {
    swift_bridgeObjectRelease_n();
    v377 = v725;
    goto LABEL_170;
  }

  v429 = v425;
  sub_1B0398EFC(v782, &qword_1EB6E45A8, &unk_1B0EC5920);
  sub_1B03A35B8(v746, v783);
  v430 = qword_1EB6DDB00;

  if (v430 != -1)
  {
    swift_once();
  }

  v120 = v752;
  v117 = v750;
  v431 = sub_1B03D9200(qword_1EB737D98, v752, v750);
  v432 = v732;
  v433 = v698;
  v434 = v753;
  if ((v431 & 1) == 0)
  {
    goto LABEL_187;
  }

  sub_1B0B1D788(v746, v749, &v774);
  if (!v774)
  {
    sub_1B0398EFC(&v774, &qword_1EB6E4628, &qword_1B0EC59B8);
LABEL_187:
    *&v815 = 0;
    v813 = 0u;
    v814 = 0u;
    sub_1B03A3614(v746);

    goto LABEL_188;
  }

  sub_1B0B23CFC(&v774, v782);
  *&v782[136] = MEMORY[0x1E69E7CC0];
  *&v782[144] = MEMORY[0x1E69E7CC0];
  sub_1B0B23D58(&v774);
  *&v783[96] = *&v782[96];
  *&v783[112] = *&v782[112];
  *&v783[128] = *&v782[128];
  *&v783[144] = *&v782[144];
  *&v783[32] = *&v782[32];
  *&v783[48] = *&v782[48];
  *&v783[64] = *&v782[64];
  *&v783[80] = *&v782[80];
  *v783 = *v782;
  *&v783[16] = *&v782[16];
  if (!*(*v782 + 16) || (sub_1B0B1F36C(*v782, v120, v117, v745)) && (v435 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4630, &unk_1B0EC59C0), *&v782[24] = v435, v436 = sub_1B0B23F6C(&qword_1EB6DD3E8, &qword_1EB6E4630, &unk_1B0EC59C0), *&v782[32] = v436, *v782 = swift_allocObject(), sub_1B03B5C80(v783, *v782 + 16, &qword_1EB6E4630, &unk_1B0EC59C0), v437 = v765(v782), __swift_destroy_boxed_opaque_existential_0(v782), (v437))
  {
    *(&v814 + 1) = v435;
    *&v815 = v436;
    v438 = swift_allocObject();
    *&v813 = v438;
    v439 = *&v783[112];
    *(v438 + 112) = *&v783[96];
    *(v438 + 128) = v439;
    *(v438 + 144) = *&v783[128];
    *(v438 + 160) = *&v783[144];
    v440 = *&v783[48];
    *(v438 + 48) = *&v783[32];
    *(v438 + 64) = v440;
    v441 = *&v783[80];
    *(v438 + 80) = *&v783[64];
    *(v438 + 96) = v441;
    v442 = *&v783[16];
    *(v438 + 16) = *v783;
    *(v438 + 32) = v442;
  }

  else
  {
    sub_1B0398EFC(v783, &qword_1EB6E4630, &unk_1B0EC59C0);
    v813 = 0u;
    v814 = 0u;
    *&v815 = 0;
  }

  sub_1B03A3614(v746);

  v432 = v732;
LABEL_188:
  if (*(&v814 + 1))
  {
    swift_bridgeObjectRelease_n();
    sub_1B0B238BC(v725, type metadata accessor for NewestMessages);
    sub_1B0450C74(&v813, &v817);
    v443 = &v817;
    v444 = v726;
    goto LABEL_205;
  }

  sub_1B0398EFC(&v813, &qword_1EB6E45A8, &unk_1B0EC5920);
  if (v433 || v727)
  {
    swift_bridgeObjectRelease_n();
    goto LABEL_193;
  }

  sub_1B03A35B8(v746, v783);
  v451 = qword_1EB6DD9A0;

  if (v451 != -1)
  {
    swift_once();
  }

  if (sub_1B03D9200(qword_1EB737D70, v120, v117))
  {
    v452 = 0x100000000000000;
    if (!v764)
    {
      v452 = 0;
    }

    v453 = 0x1000000000000;
    if (!v772)
    {
      v453 = 0;
    }

    v454 = 0x10000000000;
    if (!v767)
    {
      v454 = 0;
    }

    v455 = 0x100000000;
    if (!v768)
    {
      v455 = 0;
    }

    v456 = 0x1000000;
    if (!v429)
    {
      v456 = 0;
    }

    v457 = v707;
    sub_1B0B1B414(v746, 0, v749, v456 | v769 | v455 | v454 | v453 | v452 | v714, v707);
    PendingDownload = type metadata accessor for FindPendingDownload(0);
    if ((*(*(PendingDownload - 8) + 48))(v457, 1, PendingDownload) != 1)
    {
      v586 = v704;
      sub_1B03BCDD0(v457, v704, type metadata accessor for FindPendingDownload);
      v587 = (v586 + *(v708 + 36));
      v588 = MEMORY[0x1E69E7CC0];
      *v587 = MEMORY[0x1E69E7CC0];
      v587[1] = v588;
      sub_1B0B238BC(v457, type metadata accessor for FindPendingDownload);
      v589 = v705;
      sub_1B03C60A4(v586, v705, &qword_1EB6E4620, &qword_1B0EC59B0);
      v590 = *(v589 + 48);
      if (!*(v590 + 16) || (sub_1B0B1F36C(v590, v752, v750, v745)) && (*&v783[24] = v708, v591 = sub_1B0B23F6C(&qword_1EB6DD3C8, &qword_1EB6E4620, &qword_1B0EC59B0), *&v783[32] = v591, v592 = __swift_allocate_boxed_opaque_existential_1(v783), sub_1B03B5C80(v589, v592, &qword_1EB6E4620, &qword_1B0EC59B0), v593 = v765(v783), __swift_destroy_boxed_opaque_existential_0(v783), (v593))
      {
        *(&v775 + 1) = v708;
        *&v776 = v591;
        v594 = __swift_allocate_boxed_opaque_existential_1(&v774);
        sub_1B03C60A4(v589, v594, &qword_1EB6E4620, &qword_1B0EC59B0);
      }

      else
      {
        sub_1B0398EFC(v589, &qword_1EB6E4620, &qword_1B0EC59B0);
        v774 = 0u;
        v775 = 0u;
        *&v776 = 0;
      }

      goto LABEL_224;
    }

    sub_1B0398EFC(v457, &qword_1EB6E4618, &qword_1B0EC59A8);
  }

  *&v776 = 0;
  v774 = 0u;
  v775 = 0u;
LABEL_224:
  sub_1B03A3614(v746);

  if (*(&v775 + 1))
  {

    sub_1B0450C74(&v774, v782);
    v459 = v782;
    goto LABEL_226;
  }

  sub_1B0398EFC(&v774, &qword_1EB6E45A8, &unk_1B0EC5920);
  if ((sub_1B03D9200(v697, v752, v750) & 1) == 0)
  {

LABEL_299:
    v792 = 0;
    v790 = 0u;
    v791 = 0u;
    goto LABEL_300;
  }

  v465 = v736;
  sub_1B03BCDD0(v699 + *(v733 + 20) + v715[13] + *(v742 + 28), v736, type metadata accessor for MessagesPendingDownloadPerPass);
  v466 = v709;
  sub_1B03BCDD0(v465, v709, type metadata accessor for MessagesPendingDownload);
  v467 = sub_1B0B238BC(v465, type metadata accessor for MessagesPendingDownloadPerPass);
  if (!*(*v466 + 16) && !*(*(v699 + *(v733 + 20) + v715[14]) + 16))
  {
LABEL_298:

    sub_1B0B238BC(v709, type metadata accessor for MessagesPendingDownload);
    goto LABEL_299;
  }

  v468 = v706;
  v740(v467);
  v469 = v741;
  sub_1B03BCDD0(v709, v741, type metadata accessor for MessagesPendingDownload);
  v470 = v744;
  sub_1B03B5C80(v468, v744, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v471 = v733;
  v472 = v699;
  v473 = v715;
  v474 = *(v699 + *(v733 + 20) + v715[14]);
  v475 = v469;
  v476 = v737;
  sub_1B03BCDD0(v475, v737, type metadata accessor for MessagesPendingDownload);
  v477 = v738;
  sub_1B03B5C80(v470, v738, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v478 = swift_allocObject();
  *(v478 + 16) = v474;
  *&v774 = v747;
  *(&v774 + 1) = sub_1B0B24174;
  *&v775 = v478;
  *(&v775 + 1) = sub_1B0B23460;
  *&v776 = 0;
  *(&v776 + 1) = sub_1B0B23474;
  *&v777 = 0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v767 = sub_1B0B20C24(v476, v477, &v774);
  v480 = v479;
  v481 = v470;
  v483 = v482;
  sub_1B0398EFC(v481, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0B238BC(v741, type metadata accessor for MessagesPendingDownload);
  v484 = 0;
  v485 = 0;
  v764 = (v483 + 32);
  v766 = (v480 | ((HIDWORD(v480) & 1) << 32));
  v486 = MEMORY[0x1E69E7CC0];
  v768 = v483;
  while (1)
  {
    v487 = v484;
    v488 = *(&unk_1F2711290 + v485 + 32);
    LODWORD(v773) = v487;
    LODWORD(v772) = v488;
    if (v488)
    {
      v489 = v488 == 1 ? 11 : 13;
      v490 = v744;
      v491 = v767;
      v492 = sub_1B0B42388(v489, v767, v766, v744);
      MEMORY[0x1EEE9AC00](v492);
      v690 = v490;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v493 = v491;
      v494 = v748;
      v495 = sub_1B0B1578C(sub_1B0B24178, &v692[-4], v493);
      v748 = v494;
      v496 = sub_1B0B208F0(v495);
      sub_1B0398EFC(v490, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    }

    else
    {
      v186 = *(v483 + 16);
      if (v186 > 7)
      {
        v529 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v496 = sub_1B0B20A30(v529, v764, v186 - 7, (2 * v186) | 1);
        goto LABEL_244;
      }

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v552 = v186 - 1;
      if (v186 <= 1)
      {
        v496 = v483;
LABEL_267:
        v472 = v699;
        v471 = v733;
        v473 = v715;
        v486 = MEMORY[0x1E69E7CC0];
        goto LABEL_244;
      }

      v553 = *(v768 + 16);
      if (!v553)
      {
        goto LABEL_373;
      }

      if (v552 >= v553)
      {
        goto LABEL_374;
      }

      v554 = v768;
      LODWORD(v770) = *(v768 + 32);
      v769 = *(v768 + 40);
      v555 = *(v768 + 48);
      v556 = *(v768 + 49);
      v557 = 24 * v552;
      v558 = &v764[6 * v552];
      v559 = *v558;
      v560 = *(v558 + 1);
      v561 = *(v558 + 16);
      v562 = *(v558 + 17);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v554 = sub_1B0B8C98C(v768);
      }

      *(v554 + 8) = v559;
      *(v554 + 5) = v560;
      v554[48] = v561;
      v554[49] = v562;
      v563 = &v554[v557 + 32];
      *v563 = v770;
      *(v563 + 1) = v769;
      v563[16] = v555;
      v563[17] = v556;
      if (v186 >> 1 != 1)
      {
        v564 = v186 - 2;
        if (v186 != 3)
        {
          v565 = *(v554 + 2);
          if (v565 < 2)
          {
            goto LABEL_373;
          }

          if (v564 >= v565)
          {
            goto LABEL_374;
          }

          LODWORD(v770) = *(v554 + 14);
          v769 = *(v554 + 8);
          LODWORD(v761) = v554[72];
          v566 = v554[73];
          v567 = 24 * v564;
          v568 = &v554[24 * v564];
          v569 = *(v568 + 8);
          v570 = *(v568 + 5);
          v571 = v568[48];
          v572 = v568[49];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v554 = sub_1B0B8C98C(v554);
          }

          v573 = &v554[v567];
          *(v554 + 14) = v569;
          *(v554 + 8) = v570;
          v554[72] = v571;
          v554[73] = v572;
          *(v573 + 8) = v770;
          *(v573 + 5) = v769;
          v573[48] = v761;
          v573[49] = v566;
        }

        if (v186 >> 1 != 2)
        {
          v574 = v186 - 3;
          if (v186 != 5)
          {
            v575 = *(v554 + 2);
            if (v575 < 3)
            {
LABEL_373:
              __break(1u);
LABEL_374:
              __break(1u);
LABEL_375:
              __break(1u);
LABEL_376:
              __break(1u);
              goto LABEL_377;
            }

            if (v574 >= v575)
            {
              goto LABEL_374;
            }

            LODWORD(v770) = *(v554 + 20);
            v576 = *(v554 + 11);
            v577 = v554[96];
            v578 = v554[97];
            v579 = 24 * v574;
            v580 = &v554[24 * v574];
            v581 = *(v580 + 8);
            v582 = *(v580 + 5);
            v583 = v580[48];
            v584 = v580[49];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v554 = sub_1B0B8C98C(v554);
            }

            v585 = &v554[v579];
            *(v554 + 20) = v581;
            *(v554 + 11) = v582;
            v554[96] = v583;
            v554[97] = v584;
            *(v585 + 8) = v770;
            *(v585 + 5) = v576;
            v496 = v554;
            v585[48] = v577;
            v585[49] = v578;
            goto LABEL_267;
          }
        }
      }

      v472 = v699;
      v471 = v733;
      v473 = v715;
      v486 = MEMORY[0x1E69E7CC0];
      v496 = v554;
    }

LABEL_244:
    v497 = *(v496 + 16);
    if (v497)
    {
      break;
    }

LABEL_238:
    v484 = 1;
    v485 = 1u;
    v483 = v768;
    if (v773)
    {
      sub_1B0398EFC(v706, &unk_1EB6E1AF0, &unk_1B0E9AF40);

      goto LABEL_298;
    }
  }

  v498 = *(v472 + *(v471 + 20) + v473[20]);
  v499 = v496 + 32;
  v500 = *(v498 + 16);
  v501 = (v498 + 32);
  v769 = v498;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v770 = v496;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v502 = v486;
  for (j = 0; j != v497; ++j)
  {
    if (v500)
    {
      v514 = *(v499 + 24 * j);
      v515 = v501;
      v516 = v500;
      while (1)
      {
        v517 = *v515;
        v518 = v515[1];
        v519 = v515[3];
        *&v783[32] = v515[2];
        *&v783[48] = v519;
        *v783 = v517;
        *&v783[16] = v518;
        v520 = v515[4];
        v521 = v515[5];
        v522 = v515[7];
        *&v783[96] = v515[6];
        *&v783[112] = v522;
        *&v783[64] = v520;
        *&v783[80] = v521;
        v523 = v515[8];
        v524 = v515[9];
        v525 = v515[10];
        *&v783[169] = *(v515 + 169);
        *&v783[144] = v524;
        *&v783[160] = v525;
        *&v783[128] = v523;
        if (v514 == *v783)
        {
          break;
        }

        v515 += 12;
        if (!--v516)
        {
          goto LABEL_247;
        }
      }

      sub_1B0A912A8(v783, v782);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v502 = sub_1B0B00298(0, v502[2] + 1, 1, v502);
      }

      v527 = v502[2];
      v526 = v502[3];
      if (v527 >= v526 >> 1)
      {
        v502 = sub_1B0B00298((v526 > 1), v527 + 1, 1, v502);
      }

      *&v782[132] = *&v783[136];
      *&v782[148] = *&v783[152];
      *&v782[164] = *&v783[168];
      v782[180] = v783[184];
      *&v782[68] = *&v783[72];
      *&v782[84] = *&v783[88];
      *&v782[100] = *&v783[104];
      *&v782[116] = *&v783[120];
      *&v782[4] = *&v783[8];
      *&v782[20] = *&v783[24];
      *&v782[36] = *&v783[40];
      *&v782[52] = *&v783[56];
      v502[2] = v527 + 1;
      v504 = &v502[24 * v527];
      *(v504 + 8) = v514;
      v505 = *v782;
      v506 = *&v782[16];
      v507 = *&v782[32];
      *(v504 + 84) = *&v782[48];
      *(v504 + 68) = v507;
      *(v504 + 52) = v506;
      *(v504 + 36) = v505;
      v508 = *&v782[64];
      v509 = *&v782[80];
      v510 = *&v782[96];
      *(v504 + 148) = *&v782[112];
      *(v504 + 132) = v510;
      *(v504 + 116) = v509;
      *(v504 + 100) = v508;
      v511 = *&v782[128];
      v512 = *&v782[144];
      v513 = *&v782[160];
      *(v504 + 209) = *&v782[173];
      *(v504 + 196) = v513;
      *(v504 + 180) = v512;
      *(v504 + 164) = v511;
      v499 = v496 + 32;
    }

LABEL_247:
    ;
  }

  if (v502[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E45C0, &unk_1B0EC5930);
    v528 = sub_1B0E466A8();
  }

  else
  {
    v528 = MEMORY[0x1E69E7CC8];
  }

  v530 = v748;
  *v783 = v528;
  sub_1B0B234B8(v502, 1, v783);
  v748 = v530;
  v531 = v763;
  if (v530)
  {
    goto LABEL_379;
  }

  v532 = v770;

  v769 = *v783;
  v825[0] = v531;
  v825[1] = v755;
  v826 = v756;
  v533 = v762;
  v827 = v762;
  v534 = v754;
  v828 = v754;
  swift_bridgeObjectRetain_n();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v535 = sub_1B0451E64(MEMORY[0x1E69E7CC0]);
  v536 = v713;
  *v713 = v535;
  *(v536 + 8) = 0;
  v537 = v772;
  sub_1B0ABD77C(v825, v532, v772, &v813);
  v538 = *(&v815 + 1);
  v539 = v814;
  *(v536 + 64) = v813;
  *(v536 + 80) = v539;
  *(v536 + 96) = v815;
  *(v536 + 112) = v816;
  *(v536 + 9) = 0;
  *v783 = v533;
  *&v783[8] = v534;
  v783[12] = 0;
  v783[13] = v537;
  v540 = v734;
  *(v536 + 16) = v734;
  sub_1B03D06A4();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E461E8();
  v541 = *(v540 + 36);
  v542 = *(v540 + 40);
  v543 = v536 + v541;
  v544 = _s18InProgressMessagesVMa(0);
  sub_1B03D06F8();
  sub_1B0E46EE8();
  sub_1B0E46EE8();
  sub_1B0E46EE8();
  v545 = MEMORY[0x1E69E7CC0];
  v546 = sub_1B0BABAA8(MEMORY[0x1E69E7CC0]);
  *v543 = v533;
  v486 = v545;
  *(v543 + 8) = v534;
  *(v543 + 16) = v769;
  *(v543 + v544[7]) = v545;
  *(v543 + v544[8]) = v545;
  *(v543 + v544[11]) = v546;
  sub_1B0AC3330(v536 + v542);
  sub_1B0AC39A4(v538);

  v547 = v712;
  sub_1B0B24104(v536, v712, type metadata accessor for DownloadTask);
  v548 = v735;
  v549 = (v547 + *(v735 + 36));
  *v549 = v545;
  v549[1] = v545;
  *&v783[24] = v548;
  v550 = sub_1B0B23F6C(&qword_1EB6DD400, &qword_1EB6E4598, &unk_1B0EC5908);
  *&v783[32] = v550;
  v551 = __swift_allocate_boxed_opaque_existential_1(v783);
  sub_1B03B5C80(v547, v551, &qword_1EB6E4598, &unk_1B0EC5908);
  LOBYTE(v543) = v765(v783);
  __swift_destroy_boxed_opaque_existential_0(v783);
  if ((v543 & 1) == 0)
  {
    sub_1B0398EFC(v547, &qword_1EB6E4598, &unk_1B0EC5908);
    v472 = v699;
    v471 = v733;
    v473 = v715;
    goto LABEL_238;
  }

  *(&v791 + 1) = v548;
  v792 = v550;
  v595 = __swift_allocate_boxed_opaque_existential_1(&v790);
  sub_1B03C60A4(v547, v595, &qword_1EB6E4598, &unk_1B0EC5908);
  sub_1B0398EFC(v706, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0B238BC(v709, type metadata accessor for MessagesPendingDownload);
  if (!*(&v791 + 1))
  {
LABEL_300:
    sub_1B0398EFC(&v790, &qword_1EB6E45A8, &unk_1B0EC5920);
    v796 = 0u;
    v797 = 0u;
    v798 = 0;
    goto LABEL_301;
  }

  sub_1B0450C74(&v790, &v793);
  v459 = &v793;
LABEL_226:
  sub_1B0450C74(v459, &v796);
  if (*(&v797 + 1))
  {

    sub_1B0B238BC(v725, type metadata accessor for NewestMessages);
    sub_1B0450C74(&v796, &v817);
    v426 = &v817;
    goto LABEL_171;
  }

LABEL_301:
  sub_1B0398EFC(&v796, &qword_1EB6E45A8, &unk_1B0EC5920);
  if (v730(0))
  {

    goto LABEL_372;
  }

  v596 = v746;
  sub_1B03A35B8(v746, v783);
  v597 = 0x100000000000000;
  if (!v842)
  {
    v597 = 0;
  }

  v598 = 0x1000000000000;
  if (!v843)
  {
    v598 = 0;
  }

  v599 = 0x10000000000;
  if (!v844)
  {
    v599 = 0;
  }

  v600 = 0x100000000;
  if (!v845)
  {
    v600 = 0;
  }

  v601 = 0x1000000;
  if (!v846)
  {
    v601 = 0;
  }

  v602 = v601 | v847 | v600 | v599 | v598 | v597 | v714;
  v603 = v749;

  sub_1B0B18EA4(v752, v750, v745, v765, v771, v596, 1, v603, &v817, v602);
  if (*(&v818 + 1))
  {

    sub_1B0450C74(&v817, v782);
    v604 = v782;
    goto LABEL_315;
  }

  sub_1B0398EFC(&v817, &qword_1EB6E45A8, &unk_1B0EC5920);
  if ((sub_1B03D9200(v697, v752, v750) & 1) == 0)
  {

LABEL_369:
    v792 = 0;
    v790 = 0u;
    v791 = 0u;
    goto LABEL_370;
  }

  sub_1B03BCDD0(v699 + *(v733 + 20) + v715[13] + *(v742 + 28), v702, type metadata accessor for MessagesPendingDownloadPerPass);
  if (!v731)
  {
LABEL_325:
    v608 = sub_1B03D985C(MEMORY[0x1E69E7CC0]);
    *v703 = v608;
    sub_1B03D06F8();
    sub_1B0E46EE8();
    v606 = type metadata accessor for MessagesPendingDownloadPerPass;
    v607 = v702;
    goto LABEL_330;
  }

  if (v731 == 1)
  {
    v605 = v702;
    sub_1B03BCDD0(v702 + *(v724 + 20), v703, type metadata accessor for MessagesPendingDownload);
    v606 = type metadata accessor for MessagesPendingDownloadPerPass;
    v607 = v605;
  }

  else
  {
    sub_1B03BCDD0(v702 + *(v724 + 20), v700, type metadata accessor for MessagesPendingDownload);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
    if (sub_1B0E46E98())
    {
      sub_1B0B238BC(v702, type metadata accessor for MessagesPendingDownloadPerPass);
      sub_1B03BCDD0(v700, v703, type metadata accessor for MessagesPendingDownload);
    }

    else
    {
      v609 = v700;
      v610 = v703;
      sub_1B03BCDD0(v700, v703, type metadata accessor for MessagesPendingDownload);
      MEMORY[0x1EEE9AC00](*v609);
      v690 = v725;
      v611 = v748;
      v613 = sub_1B03DC144(v612, sub_1B0B23CF8, &v692[-4]);
      v748 = v611;
      sub_1B0B238BC(v702, type metadata accessor for MessagesPendingDownloadPerPass);

      *v610 = v613;
    }

    v606 = type metadata accessor for MessagesPendingDownload;
    v607 = v700;
  }

LABEL_330:
  v614 = sub_1B0B238BC(v607, v606);
  if (!*(*v703 + 16) && !*(*(v699 + *(v733 + 20) + v715[14]) + 16))
  {
LABEL_368:

    sub_1B0B238BC(v703, type metadata accessor for MessagesPendingDownload);
    goto LABEL_369;
  }

  v615 = v701;
  v740(v614);
  v616 = v741;
  sub_1B03BCDD0(v703, v741, type metadata accessor for MessagesPendingDownload);
  v617 = v744;
  sub_1B03B5C80(v615, v744, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v618 = *(v699 + *(v733 + 20) + v715[14]);
  v619 = v737;
  sub_1B03BCDD0(v616, v737, type metadata accessor for MessagesPendingDownload);
  v620 = v738;
  sub_1B03B5C80(v617, v738, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v621 = swift_allocObject();
  *(v621 + 16) = v618;
  *v782 = v747;
  *&v782[8] = sub_1B0B24174;
  *&v782[16] = v621;
  *&v782[24] = sub_1B0B23460;
  *&v782[32] = 0;
  *&v782[40] = sub_1B0B23474;
  *&v782[48] = 0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v769 = sub_1B0B20C24(v619, v620, v782);
  v623 = v622;
  v625 = v624;
  sub_1B0398EFC(v617, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0B238BC(v616, type metadata accessor for MessagesPendingDownload);
  v626 = 0;
  v627 = 0;
  v772 = v625;
  v767 = (v625 + 32);
  v768 = v623 | ((HIDWORD(v623) & 1) << 32);
  while (1)
  {
    LODWORD(v773) = v626;
    if (*(&unk_1F27112B8 + v627 + 32))
    {
      v628 = *(&unk_1F27112B8 + v627 + 32);
      v629 = v628 == 1 ? 11 : 13;
      v630 = v744;
      v631 = v769;
      v632 = sub_1B0B42388(v629, v769, v768, v744);
      MEMORY[0x1EEE9AC00](v632);
      v690 = v630;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v633 = v631;
      v634 = v748;
      v635 = sub_1B0B1578C(sub_1B0B24178, &v692[-4], v633);
      v748 = v634;
      v636 = sub_1B0B208F0(v635);
      sub_1B0398EFC(v630, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    }

    else
    {
      v628 = *(&unk_1F27112B8 + v627 + 32);
      v186 = *(v772 + 16);
      if (v186 <= 7)
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v657 = v186 - 1;
        if (v186 > 1)
        {
          v658 = *(v772 + 16);
          if (!v658)
          {
            goto LABEL_375;
          }

          if (v657 >= v658)
          {
            goto LABEL_376;
          }

          v636 = v772;
          v659 = *(v772 + 32);
          v660 = *(v772 + 40);
          v661 = *(v772 + 48);
          LODWORD(v770) = *(v772 + 49);
          v662 = 24 * v657;
          v663 = &v767[24 * v657];
          v664 = *v663;
          v665 = *(v663 + 1);
          LODWORD(v766) = v663[16];
          LODWORD(v764) = v663[17];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v636 = sub_1B0B8C98C(v772);
          }

          *(v636 + 32) = v664;
          *(v636 + 40) = v665;
          *(v636 + 48) = v766;
          *(v636 + 49) = v764;
          v666 = v636 + 32 + v662;
          *v666 = v659;
          *(v666 + 8) = v660;
          *(v666 + 16) = v661;
          *(v666 + 17) = v770;
          if (v186 >> 1 != 1)
          {
            v667 = v186 - 2;
            if (v186 != 3)
            {
              v668 = *(v636 + 16);
              if (v668 < 2)
              {
                goto LABEL_375;
              }

              if (v667 >= v668)
              {
                goto LABEL_376;
              }

              v669 = *(v636 + 56);
              v670 = *(v636 + 64);
              v671 = *(v636 + 72);
              LODWORD(v770) = *(v636 + 73);
              v672 = 24 * v667;
              v673 = v636 + 24 * v667;
              v674 = *(v673 + 32);
              v766 = *(v673 + 40);
              LODWORD(v764) = *(v673 + 48);
              LODWORD(v761) = *(v673 + 49);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v636 = sub_1B0B8C98C(v636);
              }

              v675 = v636 + v672;
              *(v636 + 56) = v674;
              *(v636 + 64) = v766;
              *(v636 + 72) = v764;
              *(v636 + 73) = v761;
              *(v675 + 32) = v669;
              *(v675 + 40) = v670;
              *(v675 + 48) = v671;
              *(v675 + 49) = v770;
            }

            if (v186 >> 1 != 2)
            {
              v676 = v186 - 3;
              if (v186 != 5)
              {
                v677 = *(v636 + 16);
                if (v677 < 3)
                {
                  goto LABEL_375;
                }

                if (v676 >= v677)
                {
                  goto LABEL_376;
                }

                v678 = *(v636 + 80);
                v679 = *(v636 + 88);
                v680 = *(v636 + 96);
                LODWORD(v770) = *(v636 + 97);
                v681 = 24 * v676;
                v682 = v636 + 24 * v676;
                v683 = *(v682 + 32);
                v684 = *(v682 + 40);
                v685 = *(v682 + 48);
                LODWORD(v766) = *(v682 + 49);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v636 = sub_1B0B8C98C(v636);
                }

                v686 = v636 + v681;
                *(v636 + 80) = v683;
                *(v636 + 88) = v684;
                *(v636 + 96) = v685;
                *(v636 + 97) = v766;
                *(v686 + 32) = v678;
                *(v686 + 40) = v679;
                *(v686 + 48) = v680;
                *(v686 + 49) = v770;
              }
            }
          }
        }

        else
        {
          v636 = v772;
        }
      }

      else
      {
        v656 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v636 = sub_1B0B20A30(v656, v767, v186 - 7, (2 * v186) | 1);
      }
    }

    if (*(v636 + 16))
    {
      break;
    }

LABEL_334:
    v626 = 1;
    v627 = 1u;
    if (v773)
    {
      sub_1B0398EFC(v701, &unk_1EB6E1AF0, &unk_1B0E9AF40);

      goto LABEL_368;
    }
  }

  v637 = *(v699 + *(v733 + 20) + v715[20]);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v638 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v770 = sub_1B0B15B88(v638, sub_1B0B203C0, 0, v637);

  v821[0] = v763;
  v821[1] = v755;
  v822 = v756;
  v639 = v762;
  v823 = v762;
  v640 = v754;
  v824 = v754;
  swift_bridgeObjectRetain_n();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v641 = sub_1B0451E64(MEMORY[0x1E69E7CC0]);
  v642 = v711;
  *v711 = v641;
  *(v642 + 8) = 0;
  sub_1B0ABD77C(v821, v636, v628, &v817);
  v643 = *(&v819 + 1);
  v644 = v818;
  *(v642 + 64) = v817;
  *(v642 + 80) = v644;
  *(v642 + 96) = v819;
  *(v642 + 112) = v820;
  *(v642 + 9) = 1;
  v784 = v639;
  v785 = v640;
  v786 = 1;
  v787 = v628;
  v645 = v734;
  *(v642 + 16) = v734;
  sub_1B03D06A4();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E461E8();
  v646 = *(v645 + 40);
  v647 = v642 + *(v645 + 36);
  v648 = _s18InProgressMessagesVMa(0);
  sub_1B03D06F8();
  sub_1B0E46EE8();
  sub_1B0E46EE8();
  sub_1B0E46EE8();
  v649 = MEMORY[0x1E69E7CC0];
  v650 = sub_1B0BABAA8(MEMORY[0x1E69E7CC0]);
  *v647 = v639;
  *(v647 + 8) = v640;
  *(v647 + 16) = v770;
  *(v647 + v648[7]) = v649;
  *(v647 + v648[8]) = v649;
  *(v647 + v648[11]) = v650;
  sub_1B0AC3330(v642 + v646);
  sub_1B0AC39A4(v643);

  v651 = v710;
  sub_1B0B24104(v642, v710, type metadata accessor for DownloadTask);
  v652 = v735;
  v653 = (v651 + *(v735 + 36));
  *v653 = v649;
  v653[1] = v649;
  v788 = v652;
  v654 = sub_1B0B23F6C(&qword_1EB6DD400, &qword_1EB6E4598, &unk_1B0EC5908);
  v789 = v654;
  v655 = __swift_allocate_boxed_opaque_existential_1(&v784);
  sub_1B03B5C80(v651, v655, &qword_1EB6E4598, &unk_1B0EC5908);
  LOBYTE(v647) = v765(&v784);
  __swift_destroy_boxed_opaque_existential_0(&v784);
  if ((v647 & 1) == 0)
  {
    sub_1B0398EFC(v651, &qword_1EB6E4598, &unk_1B0EC5908);
    goto LABEL_334;
  }

  *(&v791 + 1) = v735;
  v792 = v654;
  v687 = __swift_allocate_boxed_opaque_existential_1(&v790);
  sub_1B03C60A4(v651, v687, &qword_1EB6E4598, &unk_1B0EC5908);
  sub_1B0398EFC(v701, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0B238BC(v703, type metadata accessor for MessagesPendingDownload);
  if (!*(&v791 + 1))
  {
LABEL_370:
    sub_1B0398EFC(&v790, &qword_1EB6E45A8, &unk_1B0EC5920);
    v793 = 0u;
    v794 = 0u;
    v795 = 0;
    goto LABEL_371;
  }

  sub_1B0450C74(&v790, v783);
  v604 = v783;
LABEL_315:
  sub_1B0450C74(v604, &v793);
  if (*(&v794 + 1))
  {
LABEL_316:
    sub_1B0B238BC(v725, type metadata accessor for NewestMessages);
    goto LABEL_317;
  }

LABEL_371:
  sub_1B0398EFC(&v793, &qword_1EB6E45A8, &unk_1B0EC5920);
LABEL_372:
  v432 = v732;
  v117 = v750;
  v120 = v752;
  v434 = v753;
LABEL_193:
  v445 = 0x100000000000000;
  if (!v842)
  {
    v445 = 0;
  }

  v446 = 0x1000000000000;
  if (!v843)
  {
    v446 = 0;
  }

  v447 = 0x10000000000;
  if (!v844)
  {
    v447 = 0;
  }

  v448 = 0x100000000;
  if (!v845)
  {
    v448 = 0;
  }

  v449 = 0x1000000;
  if (!v846)
  {
    v449 = 0;
  }

  v690 = v449 | v847 | v448 | v447 | v446 | v445 | v714;
  v119 = v745;
  v206 = v746;
  v104 = v765;
  v450 = v771;
  sub_1B0B1D8A8(v749, v120, v117, v745, v432, v765, v771, v434, &v796);
  v208 = v726;
  if (!*(&v797 + 1))
  {
    sub_1B0398EFC(&v796, &qword_1EB6E45A8, &unk_1B0EC5920);
    sub_1B03A35B8(v206, v783);
    sub_1B0B1A630(v120, v117, v119, v104, v450, v206, v434, &v793);
    if (*(&v794 + 1))
    {
      sub_1B0B238BC(v725, type metadata accessor for NewestMessages);
      sub_1B0450C74(&v793, &v796);
      v426 = &v796;
      v427 = v208;
      goto LABEL_172;
    }

LABEL_229:
    v460 = sub_1B0398EFC(&v793, &qword_1EB6E45A8, &unk_1B0EC5920);
    MEMORY[0x1EEE9AC00](v460);
    v432 = v732;
    v692[-4] = v206;
    v692[-3] = v432;
    v461 = v749;
    v690 = v462;
    v691 = v749;
    sub_1B0B1A3E4(v120, v117, v104, sub_1B0B23CEC, &v796, v119);
    if (*(&v797 + 1))
    {
      goto LABEL_204;
    }

    sub_1B0398EFC(&v796, &qword_1EB6E45A8, &unk_1B0EC5920);
    sub_1B03A35B8(v206, v783);

    sub_1B0B1A09C(v120, v117, v119, v104, v771, v206, v753, v461, &v793);
    if (*(&v794 + 1))
    {
      goto LABEL_316;
    }

    sub_1B0398EFC(&v793, &qword_1EB6E45A8, &unk_1B0EC5920);
    v463 = v746;
    sub_1B03A35B8(v746, v783);
    sub_1B0B19DE8(v752, v750, v765, v463, v753, &v793, v745);
    sub_1B0B238BC(v725, type metadata accessor for NewestMessages);
    if (!*(&v794 + 1))
    {
      sub_1B0398EFC(&v793, &qword_1EB6E45A8, &unk_1B0EC5920);
      v464 = v726;
      v726[4] = 0;
      *v464 = 0u;
      *(v464 + 1) = 0u;
      goto LABEL_173;
    }

LABEL_317:
    sub_1B0450C74(&v793, &v796);
    v426 = &v796;
LABEL_171:
    v427 = v726;
LABEL_172:
    sub_1B0450C74(v426, v427);
LABEL_173:
    v115 = type metadata accessor for MessageBatches;
    v116 = v732;
    goto LABEL_174;
  }

LABEL_204:
  sub_1B0B238BC(v725, type metadata accessor for NewestMessages);
  sub_1B0450C74(&v796, v783);
  v443 = v783;
  v444 = v208;
LABEL_205:
  sub_1B0450C74(v443, v444);
  v115 = type metadata accessor for MessageBatches;
  v116 = v432;
LABEL_174:
  sub_1B0B238BC(v116, v115);
  return *&v86;
}