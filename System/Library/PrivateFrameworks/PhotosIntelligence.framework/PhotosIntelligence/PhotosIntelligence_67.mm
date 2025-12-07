uint64_t QueryUnderstandingStatistics.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1C7462EF0()
{
  result = qword_1EC21C188;
  if (!qword_1EC21C188)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UserPromptAmbiguityState, &type metadata for UserPromptAmbiguityState, v0, v1);
    atomic_store(result, &qword_1EC21C188);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UserPromptAmbiguityState(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C7463B9C()
{
  result = qword_1EC21C190;
  if (!qword_1EC21C190)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UserPromptAmbiguityState, &type metadata for UserPromptAmbiguityState, v0, v1);
    atomic_store(result, &qword_1EC21C190);
  }

  return result;
}

uint64_t sub_1C7463BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v25 = a1;
  v5 = a2 + 64;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 64);
  v9 = (v6 + 63) >> 6;
  result = sub_1C75504FC();
  v11 = 0;
  v21 = v9;
  v22 = v5;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = __clz(__rbit64(v8)) | (v12 << 6);
      v14 = (*(a2 + 48) + 48 * v13);
      v15 = v14[1];
      v16 = v14[2];
      v17 = v14[3];
      v18 = v14[4];
      v19 = v14[5];
      v20 = *(*(a2 + 56) + 8 * v13);
      v24[0] = *v14;
      v24[1] = v15;
      v24[2] = v16;
      v24[3] = v17;
      v24[4] = v18;
      v24[5] = v19;
      v24[6] = v20;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C7468FD8(&v25, v24);
      if (v4)
      {
        break;
      }

      v8 &= v8 - 1;

      v11 = v12;
      v4 = 0;
      v9 = v21;
      v5 = v22;
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {

        return v25;
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1C7463DE0(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  v47 = MEMORY[0x1E69E7CC0];
  sub_1C716DAB4(0, v2, 0);
  v3 = v1 + 56;
  v4 = v47;
  v5 = -1;
  v6 = -1 << *(v1 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v1 + 56);
  v8 = (63 - v6) >> 6;
  v34 = v2;
  v36 = v1;
  if (v2)
  {
    sub_1C75504FC();
    v9 = 0;
    v2 = 0;
    while (1)
    {
      v45 = v4;
      if (!v7)
      {
        break;
      }

LABEL_10:
      v11 = (*(v1 + 48) + 48 * (__clz(__rbit64(v7)) | (v2 << 6)));
      v39 = *v11;
      v13 = v11[2];
      v12 = v11[3];
      v15 = v11[4];
      v14 = v11[5];
      v44 = v11[1];
      sub_1C75504FC();
      swift_bridgeObjectRetain_n();
      sub_1C75504FC();
      v43 = v15;
      sub_1C75504FC();
      v41 = v14;
      sub_1C75504FC();
      sub_1C7069A44();
      v37 = v16;
      sub_1C75504FC();
      sub_1C7069A44();
      v4 = v45;
      v19 = *(v45 + 16);
      v18 = *(v45 + 24);
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        v33 = v17;
        sub_1C716DAB4(v18 > 1, v19 + 1, 1);
        v20 = v19 + 1;
        v17 = v33;
        v4 = v45;
      }

      ++v9;
      *(v4 + 16) = v20;
      v7 &= v7 - 1;
      v21 = (v4 + (v19 << 6));
      v21[4] = v39;
      v21[5] = v44;
      v21[6] = v13;
      v21[7] = v12;
      v21[8] = v43;
      v21[9] = v41;
      v21[10] = v37;
      v21[11] = v17;
      v1 = v36;
      if (v9 == v34)
      {
        goto LABEL_15;
      }
    }

    while (1)
    {
      v10 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v10 >= v8)
      {
        goto LABEL_26;
      }

      v7 = *(v3 + 8 * v10);
      ++v2;
      if (v7)
      {
        v2 = v10;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
    sub_1C75504FC();
LABEL_15:
    if (v7)
    {
      goto LABEL_20;
    }

    while (1)
    {
      v22 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v22 >= v8)
      {

        return;
      }

      v7 = *(v3 + 8 * v22);
      ++v2;
      if (v7)
      {
        v2 = v22;
        do
        {
LABEL_20:
          v23 = (*(v1 + 48) + 48 * (__clz(__rbit64(v7)) | (v2 << 6)));
          v24 = v23[1];
          v42 = *v23;
          v25 = v23[3];
          v38 = v23[2];
          v27 = v23[4];
          v26 = v23[5];
          swift_bridgeObjectRetain_n();
          v46 = v24;
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C7069A44();
          v40 = v28;
          sub_1C75504FC();
          sub_1C7069A44();
          v31 = *(v4 + 16);
          v30 = *(v4 + 24);
          if (v31 >= v30 >> 1)
          {
            v35 = v29;
            sub_1C716DAB4(v30 > 1, v31 + 1, 1);
            v29 = v35;
          }

          *(v4 + 16) = v31 + 1;
          v7 &= v7 - 1;
          v32 = (v4 + (v31 << 6));
          v32[4] = v42;
          v32[5] = v46;
          v32[6] = v38;
          v32[7] = v25;
          v32[8] = v27;
          v32[9] = v26;
          v32[10] = v40;
          v32[11] = v29;
          v1 = v36;
        }

        while (v7);
      }
    }
  }

  __break(1u);
}

void sub_1C7464138()
{
  OUTLINED_FUNCTION_33();
  v136 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v150[1] = *MEMORY[0x1E69E9840];
  v7 = sub_1C754F38C();
  v132 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v2[3];
  v133 = v2;
  __swift_project_boxed_opaque_existential_1(v2, v10);
  v131 = v9;
  sub_1C754F1CC();
  v134 = *(v4 + 16);
  v135 = v4;
  if (v134)
  {
    v11 = v4;
  }

  else
  {
    v11 = 0;
  }

  v142 = v11;
  sub_1C7465584();
  v12 = 0;
  v13 = 0;
  v15 = v14 + 9;
  v150[0] = MEMORY[0x1E69E7CC8];
  v143 = v14;
  isUniquelyReferenced_nonNull_native = v14[2];
  while (isUniquelyReferenced_nonNull_native != v12)
  {
    if (v12 >= v143[2])
    {
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    v9 = *(v15 - 3);
    v4 = *(v15 - 2);
    v6 = *(v15 - 1);
    v17 = *v15;
    v2 = *(v15 - 4);
    *&v145 = *(v15 - 5);
    *(&v145 + 1) = v2;
    v146 = v9;
    v147 = v4;
    v148 = v6;
    v149 = v17;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C74661D8(v150, &v145);

    ++v12;
    v15 += 6;
  }

  v144 = v150[0];
  sub_1C75504FC();
  v18 = 0;
  v19 = v143 + 9;
  while (isUniquelyReferenced_nonNull_native != v18)
  {
    if (v18 >= v143[2])
    {
      goto LABEL_84;
    }

    v9 = *(v19 - 3);
    v4 = *(v19 - 2);
    v6 = *(v19 - 1);
    v20 = *v19;
    v2 = *(v19 - 4);
    *&v145 = *(v19 - 5);
    *(&v145 + 1) = v2;
    v146 = v9;
    v147 = v4;
    v148 = v6;
    v149 = v20;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C74664EC(v150, &v145);

    ++v18;
    v19 += 6;
  }

  v129 = v7;
  v4 = v150[0];
  v21 = v136;
  v22 = sub_1C7465D2C(v150[0], v142);
  v9 = 0;
  v150[0] = MEMORY[0x1E69E7CC8];
  v23 = *(v22 + 16);
  v139 = v22 + 32;
  v24 = (v22 + 56);
  while (v23 != v9)
  {
    if (v9 >= *(v22 + 16))
    {
      goto LABEL_85;
    }

    v21 = *(v24 - 1);
    v2 = *v24;
    v6 = *(v24 - 2);
    *&v145 = *(v24 - 3);
    *(&v145 + 1) = v6;
    v146 = v21;
    v147 = v2;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C7466800(v150, &v145);

    ++v9;
    v24 += 4;
  }

  v128[1] = v4;
  v25 = 0;
  v130 = v150[0];
  v4 = MEMORY[0x1E69E7CC8];
  v137 = v23;
  v138 = v22;
  while (v25 != v23)
  {
    if (v25 >= *(v22 + 16))
    {
      goto LABEL_88;
    }

    v26 = (v139 + 32 * v25);
    v27 = *v26;
    v28 = v26[1];
    v141 = v13;
    v142 = v27;
    v13 = v26[2];
    isUniquelyReferenced_nonNull_native = v26[3];
    v140 = v25 + 1;
    *&v145 = MEMORY[0x1E69E7CD0];
    v9 = v13 + 56;
    OUTLINED_FUNCTION_90_1();
    v2 = (v30 & v29);
    v32 = (v31 + 63) >> 6;
    OUTLINED_FUNCTION_129_0();
    swift_bridgeObjectRetain_n();
    sub_1C75504FC();
    sub_1C75504FC();
    v33 = 0;
    while (v2)
    {
      v34 = v2;
LABEL_26:
      v2 = ((v34 - 1) & v34);
      if (*(v144 + 16))
      {
        v36 = (*(v13 + 48) + ((v33 << 10) | (16 * __clz(__rbit64(v34)))));
        v37 = *v36;
        v6 = v36[1];
        sub_1C75504FC();
        v38 = v37;
        v21 = v144;
        sub_1C6F78124(v38, v6);
        if (v39)
        {
          v40 = sub_1C75504FC();
          v21 = &v145;
          sub_1C7397A5C(v40);
        }
      }
    }

    while (1)
    {
      v35 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        __break(1u);
        goto LABEL_65;
      }

      if (v35 >= v32)
      {
        break;
      }

      v34 = *(v9 + 8 * v35);
      ++v33;
      if (v34)
      {
        v33 = v35;
        goto LABEL_26;
      }
    }

    v41 = v145;
    swift_isUniquelyReferenced_nonNull_native();
    *&v145 = v4;
    v42 = OUTLINED_FUNCTION_19_74();
    v46 = sub_1C6FC2B48(v42, v43, v44, v45);
    v48 = *(v4 + 16);
    v49 = (v47 & 1) == 0;
    v4 = v48 + v49;
    if (__OFADD__(v48, v49))
    {
      goto LABEL_89;
    }

    v6 = v46;
    v9 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C198, &unk_1C758CEE0);
    v21 = &v145;
    if (sub_1C7551A2C())
    {
      v21 = v145;
      v50 = OUTLINED_FUNCTION_19_74();
      v54 = sub_1C6FC2B48(v50, v51, v52, v53);
      if ((v9 & 1) != (v55 & 1))
      {
        while (1)
        {
LABEL_95:
          sub_1C7551E4C();
          __break(1u);
LABEL_96:

          swift_willThrow();

          __break(1u);
        }
      }

      v6 = v54;
    }

    v4 = v145;
    if (v9)
    {
      v56 = *(v145 + 56);
      v21 = *(v56 + 8 * v6);
      *(v56 + 8 * v6) = v41;
    }

    else
    {
      *(v145 + 8 * (v6 >> 6) + 64) |= 1 << v6;
      v57 = (*(v4 + 48) + 32 * v6);
      *v57 = v142;
      v57[1] = v28;
      v57[2] = v13;
      v57[3] = isUniquelyReferenced_nonNull_native;
      *(*(v4 + 56) + 8 * v6) = v41;
      v58 = *(v4 + 16);
      v59 = __OFADD__(v58, 1);
      v60 = v58 + 1;
      if (v59)
      {
        goto LABEL_91;
      }

      *(v4 + 16) = v60;
    }

    v25 = v140;
    v13 = v141;
    v23 = v137;
    v22 = v138;
  }

  v2 = v143;
  v9 = v130;
  sub_1C7466A68();
  v6 = v61;

  *&v145 = MEMORY[0x1E69E7CC0];
  v62 = v6 + 64;
  OUTLINED_FUNCTION_11();
  isUniquelyReferenced_nonNull_native = v64 & v63;
  v66 = (v65 + 63) >> 6;
  v143 = v6;
  sub_1C75504FC();
  v4 = 0;
  v142 = v6 + 64;
  v136 = v66;
  if (!isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_41;
  }

  do
  {
    v141 = v13;
LABEL_45:
    OUTLINED_FUNCTION_22_65();
    v69 = v68[1];
    v2 = v68[2];
    v9 = v68[4];
    v70 = v68[5];
    v73 = *(v72 + 8 * v71);
    LOBYTE(v71) = *(v73 + 32);
    v137 = v71 & 0x3F;
    v138 = v73;
    v13 = ((1 << v71) + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v140 = v69;
    v6 = v2;
    sub_1C75504FC();
    swift_bridgeObjectRetain_n();
    sub_1C75504FC();
    sub_1C75504FC();
    v139 = v70;
    isStackAllocationSafe = sub_1C75504FC();
    if (v137 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
    {
      MEMORY[0x1EEE9AC00](isStackAllocationSafe);
      sub_1C71FAC38(0, v13, v128 - ((8 * v13 + 15) & 0x3FFFFFFFFFFFFFF0));
      OUTLINED_FUNCTION_13_88();
      sub_1C70A9104(v75, v76, v77, v78);
      if (v13)
      {
        goto LABEL_96;
      }

      v80 = v79;

      OUTLINED_FUNCTION_29_20();
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      v62 = v142;
    }

    else
    {
      swift_slowAlloc();

      OUTLINED_FUNCTION_13_88();
      v80 = sub_1C70A9074(v81, v82, v83, v84);

      if (v13)
      {

        OUTLINED_FUNCTION_109();
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_109();
    }

    isUniquelyReferenced_nonNull_native &= isUniquelyReferenced_nonNull_native - 1;
    sub_1C6FD25FC(v80);
    v66 = v136;
  }

  while (isUniquelyReferenced_nonNull_native);
LABEL_41:
  while (1)
  {
    v67 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v67 >= v66)
    {
      v141 = v13;

      sub_1C706D154();
      v13 = v85;
      sub_1C75504FC();
      sub_1C7069A44();
      v6 = v86;
      *&v145 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_23_37();
      v89 = v88 & v87;
      v2 = ((v90 + 63) >> 6);
      sub_1C75504FC();
      v9 = 0;
      if (!v89)
      {
        goto LABEL_55;
      }

      do
      {
LABEL_59:
        v89 &= v89 - 1;
        v92 = sub_1C75504FC();
        sub_1C6FD25FC(v92);
      }

      while (v89);
LABEL_55:
      while (1)
      {
        v91 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_87;
        }

        if (v91 >= v2)
        {

          sub_1C706D154();
          isUniquelyReferenced_nonNull_native = v93;
          v4 = sub_1C7080ED4();
          sub_1C75504FC();
          sub_1C7069A44();
          v9 = v94;
          v2 = sub_1C7080ED4();
          if (qword_1EDD09CF0 != -1)
          {
            goto LABEL_94;
          }

          goto LABEL_62;
        }

        v89 = *(v62 + 8 * v91);
        ++v9;
        if (v89)
        {
          v9 = v91;
          goto LABEL_59;
        }
      }
    }

    isUniquelyReferenced_nonNull_native = *(v62 + 8 * v67);
    ++v4;
    if (isUniquelyReferenced_nonNull_native)
    {
      v141 = v13;
      v4 = v67;
      goto LABEL_45;
    }
  }

LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  OUTLINED_FUNCTION_0_23();
  swift_once();
LABEL_62:
  v95 = sub_1C754FF1C();
  OUTLINED_FUNCTION_23_2(v95, qword_1EDD28B68);
  sub_1C75504FC();
  sub_1C75504FC();

  sub_1C75504FC();

  sub_1C75504FC();
  v21 = sub_1C754FEEC();
  v96 = sub_1C75511BC();
  if (os_log_type_enabled(v21, v96))
  {
    v97 = swift_slowAlloc();
    *v97 = 134219264;
    v98 = *(v13 + 16);

    *(v97 + 4) = v98;

    v13 = 2048;
    *(v97 + 12) = 2048;
    v99 = *(v6 + 16);

    *(v97 + 14) = v99;

    *(v97 + 22) = 2048;
    v100 = *(isUniquelyReferenced_nonNull_native + 16);

    *(v97 + 24) = v100;

    *(v97 + 32) = 2048;
    v101 = *(v4 + 16);

    *(v97 + 34) = v101;

    *(v97 + 42) = 2048;
    v102 = *(v9 + 16);

    *(v97 + 44) = v102;

    *(v97 + 52) = 2048;
    v103 = v2[2];

    *(v97 + 54) = v103;

    _os_log_impl(&dword_1C6F5C000, v21, v96, "Final Assignment - represented assets %ld (%ld, %ld) out of total assets %ld (%ld, %ld)", v97, 0x3Eu);
    OUTLINED_FUNCTION_109();
  }

  else
  {
LABEL_65:

    OUTLINED_FUNCTION_129_0();
    swift_bridgeObjectRelease_n();
    OUTLINED_FUNCTION_29_20();

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    swift_bridgeObjectRelease_n();
  }

  OUTLINED_FUNCTION_23_37();
  v106 = v105 & v104;
  v108 = (v107 + 63) >> 6;
  sub_1C75504FC();
  v6 = 0;
  v2 = MEMORY[0x1E69E7CC8];
  v109 = v142;
  v136 = v108;
  if (v106)
  {
    goto LABEL_71;
  }

  while (1)
  {
LABEL_67:
    v110 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_90;
    }

    if (v110 >= v108)
    {
      break;
    }

    v106 = *(v109 + 8 * v110);
    ++v6;
    if (v106)
    {
      v6 = v110;
LABEL_71:
      while (1)
      {
        OUTLINED_FUNCTION_22_65();
        v112 = *v111;
        v113 = v111[1];
        v114 = v111[2];
        v9 = v111[3];
        v4 = v111[4];
        v115 = v111[5];
        v13 = *(v117 + 8 * v116);
        OUTLINED_FUNCTION_129_0();
        swift_bridgeObjectRetain_n();
        sub_1C75504FC();
        v144 = v114;
        sub_1C75504FC();
        v140 = v9;
        sub_1C75504FC();
        v139 = v4;
        sub_1C75504FC();
        v138 = v115;
        sub_1C75504FC();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v145 = v2;
        v137 = v112;
        v118 = sub_1C6F78124(v112, v113);
        v120 = v2[2];
        v121 = (v119 & 1) == 0;
        v2 = (v120 + v121);
        if (__OFADD__(v120, v121))
        {
          goto LABEL_92;
        }

        v9 = v118;
        v4 = v119;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215280, &qword_1C756C8F0);
        if (sub_1C7551A2C())
        {
          sub_1C6F78124(v137, v113);
          OUTLINED_FUNCTION_8_5();
          if (!v123)
          {
            goto LABEL_95;
          }

          v9 = v122;
        }

        v2 = v145;
        if (v4)
        {
          *(*(v145 + 56) + 8 * v9) = v13;
        }

        else
        {
          *(v145 + 8 * (v9 >> 6) + 64) |= 1 << v9;
          v124 = (v2[6] + 16 * v9);
          *v124 = v137;
          v124[1] = v113;
          *(v2[7] + 8 * v9) = v13;

          v125 = v2[2];
          v59 = __OFADD__(v125, 1);
          v126 = v125 + 1;
          if (v59)
          {
            goto LABEL_93;
          }

          v2[2] = v126;
        }

        v106 &= v106 - 1;
        v109 = v142;
        v108 = v136;
        if (!v106)
        {
          goto LABEL_67;
        }
      }
    }
  }

  __swift_project_boxed_opaque_existential_1(v133, v133[3]);
  v127 = v131;
  sub_1C754F1AC();
  (*(v132 + 8))(v127, v129);
  OUTLINED_FUNCTION_25_0();
}

void sub_1C7464FD4(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>, uint64_t a4@<X2>)
{
  v4 = a1;
  v5 = a1 + 56;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  if (v8)
  {
    v36 = a3;
    v9 = 0;
    v10 = __clz(__rbit64(v8));
    v11 = (v8 - 1) & v8;
    v12 = (v6 + 63) >> 6;
LABEL_9:
    v15 = (*(a1 + 48) + 40 * v10);
    v43 = *v15;
    v16 = v15[2];
    v17 = v15[3];
    v18 = v15[4];
    v47 = v15[1];
    sub_1C75504FC();
    v46 = v16;
    sub_1C75504FC();
    v45 = v17;
    sub_1C75504FC();
    v44 = v18;
    sub_1C75504FC();
    sub_1C75504FC();
    v38 = v12;
    v39 = v5;
    v40 = v4;
LABEL_10:
    v19 = v9;
    if (!v11)
    {
      goto LABEL_12;
    }

    do
    {
      v9 = v19;
LABEL_15:
      v20 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v21 = *(v4 + 48) + 40 * (v20 | (v9 << 6));
      v22 = *(v21 + 32);
      v37 = *v21;
      v23 = *(v21 + 16);
      v24 = *(a4 + 16);
      v25 = *(a4 + 24);
      v48 = *(v21 + 8);
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C7467F08(a2 & 1, v26, v27, v24, v25);
      v29 = v28;

      v30 = *(a4 + 16);
      v31 = *(a4 + 24);
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C7467F08(a2 & 1, v32, v33, v30, v31);
      v35 = v34;

      if (v29 < v35)
      {

        v44 = v22;
        v45 = *(&v23 + 1);
        v46 = v23;
        v47 = v48;
        v12 = v38;
        v43 = v37;
        v5 = v39;
        v4 = v40;
        goto LABEL_10;
      }

      v19 = v9;
      v5 = v39;
      v4 = v40;
      v12 = v38;
    }

    while (v11);
LABEL_12:
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v9 >= v12)
      {

        a3 = v36;
        goto LABEL_20;
      }

      v11 = *(v5 + 8 * v9);
      ++v19;
      if (v11)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v13 = 0;
    v12 = (v6 + 63) >> 6;
    while (1)
    {
      v9 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v14 = *(a1 + 64 + 8 * v8);
      v13 += 64;
      ++v8;
      if (v14)
      {
        v36 = a3;
        v11 = (v14 - 1) & v14;
        v10 = __clz(__rbit64(v14)) + v13;
        goto LABEL_9;
      }
    }

    v43 = 0;
    v44 = 0;
    v46 = 0;
    v47 = 0;
    v45 = 0;
LABEL_20:
    *a3 = v43;
    a3[1] = v47;
    a3[2] = v46;
    a3[3] = v45;
    a3[4] = v44;
  }
}

void sub_1C746534C()
{
  OUTLINED_FUNCTION_115();
  v3 = *v2 == *v0 && v1[1] == v0[1];
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {
    sub_1C7036A90(v1[2], v0[2]);
    if (v4)
    {
      sub_1C7036A90(v1[3], v0[3]);
      if (v5)
      {
        sub_1C7036A90(v1[4], v0[4]);
        if (v6)
        {
          v7 = v1[5];
          v8 = v0[5];

          sub_1C7036A90(v7, v8);
        }
      }
    }
  }
}

uint64_t sub_1C74653E8()
{
  OUTLINED_FUNCTION_15_82();
  sub_1C7551F3C();
  OUTLINED_FUNCTION_35();
  sub_1C75505AC();
  return sub_1C7551FAC();
}

uint64_t sub_1C7465434()
{
  OUTLINED_FUNCTION_15_82();
  sub_1C7551F3C();
  OUTLINED_FUNCTION_35();
  sub_1C75505AC();
  return sub_1C7551FAC();
}

void sub_1C746547C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (sub_1C7551DBC() & 1) != 0)
  {
    sub_1C7036A90(a3, a7);
    if (v13)
    {

      sub_1C7036A90(a4, a8);
    }
  }
}

uint64_t sub_1C746550C()
{
  OUTLINED_FUNCTION_115();
  sub_1C7551F3C();
  sub_1C75505AC();
  return sub_1C7551FAC();
}

void sub_1C7465584()
{
  OUTLINED_FUNCTION_33();
  v2 = *(v0 + 16);
  if (v2)
  {
    v3 = v1;
    v4 = v0;
    v23 = MEMORY[0x1E69E7CC0];
    sub_1C716D9D8(0, v2, 0);
    v5 = v23;
    v6 = (v4 + 32);
    do
    {
      memcpy(v22, v6, sizeof(v22));
      memcpy(__dst, v6, sizeof(__dst));
      sub_1C6FC061C(v22, v16);
      sub_1C74656E4(__dst, v3, &v18);
      memcpy(v16, __dst, sizeof(v16));
      sub_1C70552E0(v16);
      v7 = v19;
      v8 = v20;
      v9 = v18;
      v10 = v21;
      v23 = v5;
      v12 = *(v5 + 16);
      v11 = *(v5 + 24);
      if (v12 >= v11 >> 1)
      {
        v14 = v20;
        v15 = v19;
        sub_1C716D9D8(v11 > 1, v12 + 1, 1);
        v8 = v14;
        v7 = v15;
        v5 = v23;
      }

      *(v5 + 16) = v12 + 1;
      v13 = v5 + 48 * v12;
      *(v13 + 32) = v9;
      *(v13 + 40) = v7;
      *(v13 + 56) = v8;
      *(v13 + 72) = v10;
      v6 += 104;
      --v2;
    }

    while (v2);
  }

  OUTLINED_FUNCTION_25_0();
}

uint64_t sub_1C74656E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v6 = 0;
  v55 = *a1;
  v56 = a1[1];
  v7 = a1[5];
  v61 = a1[8];
  v58 = a1[11];
  v68 = MEMORY[0x1E69E7CD0];
  v8 = *(v7 + 16);
  v9 = (v7 + 64);
  while (v8 != v6)
  {
    if (v6 >= *(v7 + 16))
    {
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

      v51 = v65;

      __break(1u);
      return result;
    }

    v11 = *(v9 - 1);
    v10 = *v9;
    v12 = *(v9 - 3);
    v13 = *(v9 - 2);
    v64[0] = *(v9 - 4);
    v64[1] = v12;
    v65 = v13;
    v66 = v11;
    v67 = v10;
    sub_1C75504FC();
    v14 = v13;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C7465B58(&v68, v64);
    if (v4)
    {
      goto LABEL_49;
    }

    ++v6;
    v15 = v65;

    v9 += 5;
  }

  v16 = v68;
  v54 = v68;
  sub_1C75504FC();
  if (a2)
  {
    sub_1C7069A44();
    v53 = v17;
  }

  else
  {
    v53 = v16;
  }

  v18 = [v61 fetchedObjects];
  if (v18)
  {
    v19 = v18;
    sub_1C6FDEC1C();
    v20 = sub_1C7550B5C();
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  v21 = sub_1C6FB6304();
  v22 = 0;
  v60 = MEMORY[0x1E69E7CC0];
  v62 = MEMORY[0x1E69E7CC0];
  while (v21 != v22)
  {
    if ((v20 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x1CCA5DDD0](v22, v20);
    }

    else
    {
      if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_46;
      }

      v23 = *(v20 + 8 * v22 + 32);
    }

    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      goto LABEL_45;
    }

    v25 = v23;
    v26 = [v25 uuid];
    if (v26)
    {
      v27 = v26;
      v28 = sub_1C755068C();
      v52 = v29;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB1814();
        v62 = v32;
      }

      v30 = v62[2];
      if (v30 >= v62[3] >> 1)
      {
        sub_1C6FB1814();
        v62 = v33;
      }

      v62[2] = v30 + 1;
      v31 = &v62[2 * v30];
      *(v31 + 4) = v28;
      *(v31 + 5) = v52;
      v22 = v24;
    }

    else
    {

      ++v22;
    }
  }

  sub_1C706D154();
  v63 = v34;
  if (v58)
  {
    v35 = v58;
  }

  else
  {
    v35 = MEMORY[0x1E69E7CC0];
  }

  v36 = sub_1C6FB6304();
  sub_1C75504FC();
  v37 = 0;
  while (v36 != v37)
  {
    if ((v35 & 0xC000000000000001) != 0)
    {
      v38 = MEMORY[0x1CCA5DDD0](v37, v35);
    }

    else
    {
      if (v37 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v38 = *(v35 + 8 * v37 + 32);
    }

    v39 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      goto LABEL_47;
    }

    v40 = v38;
    v41 = [v40 uuid];
    if (v41)
    {
      v42 = v41;
      v43 = sub_1C755068C();
      v59 = v44;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB1814();
        v60 = v47;
      }

      v45 = *(v60 + 16);
      if (v45 >= *(v60 + 24) >> 1)
      {
        sub_1C6FB1814();
        v60 = v48;
      }

      *(v60 + 16) = v45 + 1;
      v46 = v60 + 16 * v45;
      *(v46 + 32) = v43;
      *(v46 + 40) = v59;
      v37 = v39;
    }

    else
    {

      ++v37;
    }
  }

  sub_1C706D154();
  *a3 = v55;
  a3[1] = v56;
  a3[2] = v54;
  a3[3] = v53;
  a3[4] = v63;
  a3[5] = v49;
  return sub_1C75504FC();
}

void sub_1C7465B58(uint64_t a1, uint64_t a2)
{
  v2 = [*(a2 + 16) fetchedObjects];
  if (v2)
  {
    v3 = v2;
    sub_1C6FDEC1C();
    v4 = sub_1C7550B5C();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v5 = sub_1C6FB6304();
  v6 = 0;
  v19 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v5 == v6)
    {

      sub_1C73978C4(v19);
      return;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1CCA5DDD0](v6, v4);
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v7 = *(v4 + 8 * v6 + 32);
    }

    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    v9 = v7;
    v10 = [v9 uuid];
    if (v10)
    {
      v11 = v10;
      v12 = sub_1C755068C();
      v18 = v13;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB1814();
        v19 = v16;
      }

      v14 = *(v19 + 16);
      if (v14 >= *(v19 + 24) >> 1)
      {
        sub_1C6FB1814();
        v19 = v17;
      }

      *(v19 + 16) = v14 + 1;
      v15 = v19 + 16 * v14;
      *(v15 + 32) = v12;
      *(v15 + 40) = v18;
      v6 = v8;
    }

    else
    {

      ++v6;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_1C7465D2C(uint64_t a1, uint64_t a2)
{
  sub_1C75504FC();
  sub_1C7080ED4();
  StoryGenerationCache.momentUUIDByAssetUUID(for:)();
  v4 = v3;

  v5 = v4 + 64;
  OUTLINED_FUNCTION_11();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  sub_1C75504FC();
  v11 = 0;
  v58 = MEMORY[0x1E69E7CC8];
  v55 = v10;
  v56 = a2;
  if (!v8)
  {
    while (1)
    {
LABEL_2:
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      if (v12 >= v10)
      {
        break;
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
      if (v8)
      {
        v11 = v12;
        goto LABEL_6;
      }
    }

    v25 = v58;
    v26 = *(v58 + 16);
    if (v26)
    {
      v62 = MEMORY[0x1E69E7CC0];
      sub_1C716DA24(0, v26, 0);
      v27 = v62;
      v30 = sub_1C70D4544();
      v31 = 0;
      v32 = v58 + 64;
      v54 = v26;
      if ((v30 & 0x8000000000000000) == 0)
      {
        while (v30 < 1 << *(v25 + 32))
        {
          v33 = v30 >> 6;
          if ((*(v32 + 8 * (v30 >> 6)) & (1 << v30)) == 0)
          {
            goto LABEL_43;
          }

          if (*(v25 + 36) != v28)
          {
            goto LABEL_44;
          }

          v57 = v29;
          v34 = *(v25 + 56);
          v35 = (*(v25 + 48) + 16 * v30);
          v36 = v35[1];
          v59 = *v35;
          v61 = v28;
          v37 = *(v34 + 8 * v30);
          swift_bridgeObjectRetain_n();
          sub_1C75504FC();
          v38 = v37;
          if (a2)
          {
            sub_1C75504FC();
            sub_1C75504FC();
            sub_1C7069A44();
            v38 = v39;
          }

          v62 = v27;
          v41 = *(v27 + 16);
          v40 = *(v27 + 24);
          v42 = v61;
          if (v41 >= v40 >> 1)
          {
            sub_1C716DA24(v40 > 1, v41 + 1, 1);
            v42 = v61;
            v27 = v62;
          }

          *(v27 + 16) = v41 + 1;
          v43 = (v27 + 32 * v41);
          v43[4] = v59;
          v43[5] = v36;
          v43[6] = v37;
          v43[7] = v38;
          v25 = v58;
          v44 = 1 << *(v58 + 32);
          if (v30 >= v44)
          {
            goto LABEL_45;
          }

          v32 = v58 + 64;
          v45 = *(v58 + 64 + 8 * v33);
          if ((v45 & (1 << v30)) == 0)
          {
            goto LABEL_46;
          }

          if (*(v58 + 36) != v42)
          {
            goto LABEL_47;
          }

          v46 = v45 & (-2 << (v30 & 0x3F));
          if (v46)
          {
            v44 = __clz(__rbit64(v46)) | v30 & 0x7FFFFFFFFFFFFFC0;
            v47 = v54;
          }

          else
          {
            v48 = v33 << 6;
            v49 = v33 + 1;
            v47 = v54;
            v50 = (v58 + 72 + 8 * v33);
            while (v49 < (v44 + 63) >> 6)
            {
              v52 = *v50++;
              v51 = v52;
              v48 += 64;
              ++v49;
              if (v52)
              {
                sub_1C6F9ED50(v30, v42, v57 & 1);
                v44 = __clz(__rbit64(v51)) + v48;
                goto LABEL_35;
              }
            }

            sub_1C6F9ED50(v30, v42, v57 & 1);
          }

LABEL_35:
          ++v31;
          a2 = v56;
          if (v31 == v47)
          {

            return v27;
          }

          v29 = 0;
          v28 = *(v58 + 36);
          v30 = v44;
          if (v44 < 0)
          {
            goto LABEL_42;
          }
        }
      }

      goto LABEL_42;
    }

    return MEMORY[0x1E69E7CC0];
  }

LABEL_6:
  while (1)
  {
    v13 = (v11 << 10) | (16 * __clz(__rbit64(v8)));
    v14 = (*(v4 + 48) + v13);
    v15 = v14[1];
    v60 = *v14;
    v16 = (*(v4 + 56) + v13);
    v17 = *v16;
    v18 = v16[1];
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_isUniquelyReferenced_nonNull_native();
    v62 = v58;
    sub_1C6F78124(v17, v18);
    OUTLINED_FUNCTION_31_1();
    if (__OFADD__(v20, v21))
    {
      break;
    }

    v22 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215280, &qword_1C756C8F0);
    v23 = sub_1C7551A2C();
    v58 = v62;
    if (v23)
    {
      sub_1C6F78124(v17, v18);
      OUTLINED_FUNCTION_8_5();
      a2 = v56;
      if (!v24)
      {
        goto LABEL_49;
      }

      if (v22)
      {
LABEL_13:

        goto LABEL_14;
      }
    }

    else
    {
      a2 = v56;
      if (v22)
      {
        goto LABEL_13;
      }
    }

    sub_1C6FCABE4();
LABEL_14:
    v5 = v4 + 64;
    v8 &= v8 - 1;
    sub_1C70F082C(&v62, v60, v15);

    v10 = v55;
    if (!v8)
    {
      goto LABEL_2;
    }
  }

LABEL_48:
  __break(1u);
LABEL_49:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t sub_1C74661D8(uint64_t *a1, __int128 *a2)
{
  v3 = a2[1];
  v43 = *a2;
  v44 = v3;
  v45 = a2[2];
  v47 = v3;
  v4 = v3 + 56;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v44 + 56);
  v8 = (v5 + 63) >> 6;
  v40 = v44;
  sub_1C75504FC();
  v9 = 0;
  v10 = 0;
  v38 = v8;
  v39 = v4;
  if (v7)
  {
LABEL_8:
    while (1)
    {
      v12 = (*(v40 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v7)))));
      v13 = *v12;
      v14 = v12[1];
      v50 = *(&v44 + 1);
      v51 = v45;
      v48 = v43;
      v54 = *(&v45 + 1);
      sub_1C7469210();
      sub_1C75504FC();
      sub_1C6FCA460(&v48, v42);
      sub_1C7469210();
      sub_1C7469210();
      sub_1C7469210();
      sub_1C6F6E5B4(v9, 0);
      swift_isUniquelyReferenced_nonNull_native();
      v41 = v13;
      v42[0] = *a1;
      v15 = v42[0];
      v16 = v14;
      v17 = sub_1C6F78124(v13, v14);
      if (__OFADD__(*(v15 + 16), (v18 & 1) == 0))
      {
        break;
      }

      v19 = v17;
      v20 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C1C0, &qword_1C758CF18);
      v21 = sub_1C7551A2C();
      v28 = v42[0];
      if (v21)
      {
        v29 = sub_1C6F78124(v41, v16);
        if ((v20 & 1) != (v30 & 1))
        {
          goto LABEL_22;
        }

        v19 = v29;
      }

      *a1 = v28;
      if (v20)
      {
      }

      else
      {
        v28[(v19 >> 6) + 8] |= 1 << v19;
        v31 = (v28[6] + 16 * v19);
        *v31 = v41;
        v31[1] = v16;
        *(v28[7] + 8 * v19) = MEMORY[0x1E69E7CD0];
        v32 = v28[2];
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_21;
        }

        v28[2] = v34;
      }

      v7 &= v7 - 1;
      sub_1C70F21F4(v42, &v43, v22, v23, v24, v25, v26, v27, v36, v37, v38, v39, v40, v41, v42[0], v42[1], v42[2], v42[3], v42[4], v42[5], v43, *(&v43 + 1), v44, *(&v44 + 1), v45, *(&v45 + 1), v46, v47, v48, *(&v48 + 1), v49, v50, v51, v52, v53, v54, v55, v56);

      v9 = sub_1C719D928;
      v8 = v38;
      v4 = v39;
      if (!v7)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {

        return sub_1C6F6E5B4(v9, 0);
      }

      v7 = *(v4 + 8 * v11);
      ++v10;
      if (v7)
      {
        v10 = v11;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t sub_1C74664EC(uint64_t *a1, __int128 *a2)
{
  v3 = a2[2];
  v44 = a2[1];
  v45 = v3;
  v43 = *a2;
  v47 = v3;
  v4 = v3 + 56;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v45 + 56);
  v8 = (v5 + 63) >> 6;
  v40 = v45;
  sub_1C75504FC();
  v9 = 0;
  v10 = 0;
  v38 = v8;
  v39 = v4;
  if (v7)
  {
LABEL_8:
    while (1)
    {
      v12 = (*(v40 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v7)))));
      v13 = *v12;
      v14 = v12[1];
      v50 = v44;
      v48 = v43;
      v53 = *(&v45 + 1);
      sub_1C7469210();
      sub_1C75504FC();
      sub_1C6FCA460(&v48, v42);
      sub_1C7469210();
      sub_1C7469210();
      sub_1C7469210();
      sub_1C6F6E5B4(v9, 0);
      swift_isUniquelyReferenced_nonNull_native();
      v41 = v13;
      v42[0] = *a1;
      v15 = v42[0];
      v16 = v14;
      v17 = sub_1C6F78124(v13, v14);
      if (__OFADD__(*(v15 + 16), (v18 & 1) == 0))
      {
        break;
      }

      v19 = v17;
      v20 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C1C0, &qword_1C758CF18);
      v21 = sub_1C7551A2C();
      v28 = v42[0];
      if (v21)
      {
        v29 = sub_1C6F78124(v41, v16);
        if ((v20 & 1) != (v30 & 1))
        {
          goto LABEL_22;
        }

        v19 = v29;
      }

      *a1 = v28;
      if (v20)
      {
      }

      else
      {
        v28[(v19 >> 6) + 8] |= 1 << v19;
        v31 = (v28[6] + 16 * v19);
        *v31 = v41;
        v31[1] = v16;
        *(v28[7] + 8 * v19) = MEMORY[0x1E69E7CD0];
        v32 = v28[2];
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_21;
        }

        v28[2] = v34;
      }

      v7 &= v7 - 1;
      sub_1C70F21F4(v42, &v43, v22, v23, v24, v25, v26, v27, v36, v37, v38, v39, v40, v41, v42[0], v42[1], v42[2], v42[3], v42[4], v42[5], v43, *(&v43 + 1), v44, *(&v44 + 1), v45, *(&v45 + 1), v46, v47, v48, *(&v48 + 1), v49, v50, *(&v50 + 1), v51, v52, v53, v54, v55);

      v9 = sub_1C719D928;
      v8 = v38;
      v4 = v39;
      if (!v7)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {

        return sub_1C6F6E5B4(v9, 0);
      }

      v7 = *(v4 + 8 * v11);
      ++v10;
      if (v7)
      {
        v10 = v11;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

void sub_1C7466800(void *a1, uint64_t *a2)
{
  v3 = a2[1];
  v35 = *a2;
  v4 = a2[2];
  v5 = a2[3];
  v6 = v4 + 56;
  v7 = 1 << *(v4 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  sub_1C75504FC();
  v11 = 0;
  v29 = v10;
  v30 = v4 + 56;
  v31 = a1;
  v32 = v5;
  v33 = v3;
  v34 = v4;
  if (v9)
  {
LABEL_8:
    while (1)
    {
      v13 = (*(v4 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v9)))));
      v14 = *v13;
      v15 = v13[1];
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      swift_isUniquelyReferenced_nonNull_native();
      v36 = *a1;
      v16 = sub_1C6F78124(v14, v15);
      if (__OFADD__(v36[2], (v17 & 1) == 0))
      {
        break;
      }

      v18 = v16;
      v19 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C1B8, &qword_1C758CF10);
      if (sub_1C7551A2C())
      {
        v20 = sub_1C6F78124(v14, v15);
        if ((v19 & 1) != (v21 & 1))
        {
          goto LABEL_22;
        }

        v18 = v20;
      }

      if (v19)
      {

        v22 = v36;
        v23 = (v36[7] + 32 * v18);
        v4 = v34;
        *v23 = v35;
        v23[1] = v33;
        v23[2] = v34;
        v23[3] = v32;
      }

      else
      {
        v22 = v36;
        v36[(v18 >> 6) + 8] |= 1 << v18;
        v24 = (v36[6] + 16 * v18);
        *v24 = v14;
        v24[1] = v15;
        v25 = (v36[7] + 32 * v18);
        v4 = v34;
        *v25 = v35;
        v25[1] = v33;
        v25[2] = v34;
        v25[3] = v32;
        v26 = v36[2];
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          goto LABEL_21;
        }

        v36[2] = v28;
      }

      v9 &= v9 - 1;
      v6 = v30;
      a1 = v31;
      *v31 = v22;
      v10 = v29;
      if (!v9)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {

        return;
      }

      v9 = *(v6 + 8 * v12);
      ++v11;
      if (v9)
      {
        v11 = v12;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  sub_1C7551E4C();
  __break(1u);
}

void sub_1C7466A68()
{
  OUTLINED_FUNCTION_33();
  LODWORD(v165) = v2;
  v166 = 0;
  v167 = v3;
  v4 = *(v0 + 16);
  v194 = MEMORY[0x1E69E7CC8];
  v195 = MEMORY[0x1E69E7CC8];
  v196 = MEMORY[0x1E69E7CC8];
  v197 = MEMORY[0x1E69E7CC8];
  v185 = v4;
  v164 = v0;
  if (v4)
  {
    v5 = v1;
    v6 = 0;
    v168 = v0 + 32;
    v169 = v1;
    do
    {
      v7 = (v168 + 48 * v6);
      v8 = v7[1];
      v9 = v7[2];
      v10 = v7[3];
      v11 = v7[4];
      v12 = v7[5];
      v209[6] = *v7;
      v209[7] = v8;
      v209[8] = v9;
      v209[9] = v10;
      v209[10] = v11;
      v209[11] = v12;
      v179 = v6 + 1;
      v13 = v12 + 56;
      OUTLINED_FUNCTION_90_1();
      v16 = v15 & v14;
      v18 = ((v17 + 63) >> 6);
      swift_bridgeObjectRetain_n();
      v177 = v8;
      sub_1C75504FC();
      buf = v9;
      sub_1C75504FC();
      v173 = v10;
      sub_1C75504FC();
      v171 = v11;
      sub_1C75504FC();
      v4 = 0;
      v182 = v12;
      while (v16)
      {
        v19 = v16;
LABEL_10:
        v16 = (v19 - 1) & v19;
        if (*(v5 + 16))
        {
          v21 = (*(v12 + 48) + ((v4 << 10) | (16 * __clz(__rbit64(v19)))));
          v23 = *v21;
          v22 = v21[1];
          sub_1C75504FC();
          sub_1C6F78124(v23, v22);
          LOBYTE(v23) = v24;

          if (v23)
          {
            v25 = *(v194 + 16);
            sub_1C75504FC();
            sub_1C75504FC();
            sub_1C75504FC();
            if (v25)
            {
              v26 = OUTLINED_FUNCTION_18_65();
              sub_1C6FC2B48(v26, v27, v28, v29);
              if (v30)
              {
                if (qword_1EDD09CF0 != -1)
                {
                  OUTLINED_FUNCTION_0_23();
                  swift_once();
                }

                v31 = sub_1C754FF1C();
                OUTLINED_FUNCTION_23_2(v31, qword_1EDD28B68);
                v32 = sub_1C754FEEC();
                v33 = sub_1C755119C();
                if (os_log_type_enabled(v32, v33))
                {
                  v34 = swift_slowAlloc();
                  *v34 = 0;
                  _os_log_impl(&dword_1C6F5C000, v32, v33, "Same Moment required in two chapters", v34, 2u);
                  OUTLINED_FUNCTION_109();
                }
              }
            }

            v35 = OUTLINED_FUNCTION_18_65();
            sub_1C7467820(v35, v36, v37, v38, v39);

            v5 = v169;
            v12 = v182;
          }
        }
      }

      while (1)
      {
        v20 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
          goto LABEL_65;
        }

        if (v20 >= v18)
        {
          break;
        }

        v19 = *(v13 + 8 * v20);
        ++v4;
        if (v19)
        {
          v4 = v20;
          goto LABEL_10;
        }
      }

      v4 = v185;
      v6 = v179;
    }

    while (v179 != v185);
  }

  v193 = MEMORY[0x1E69E7CD0];
  v40 = v167 + 64;
  OUTLINED_FUNCTION_11();
  v43 = v42 & v41;
  v45 = (v44 + 63) >> 6;
  sub_1C75504FC();
  v46 = 0;
  *&v47 = 136315138;
  v180 = v47;
  v183 = v45;
  if (!v43)
  {
    goto LABEL_22;
  }

  do
  {
LABEL_26:
    v49 = __clz(__rbit64(v43));
    v43 &= v43 - 1;
    v50 = v49 | (v46 << 6);
    v51 = (*(v167 + 48) + 32 * v50);
    v53 = *v51;
    v52 = v51[1];
    v54 = v51[2];
    v55 = v51[3];
    v56 = *(*(v167 + 56) + 8 * v50);
    v57 = *(v194 + 16);
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    if (v57)
    {
      sub_1C6FC2B48(v53, v52, v54, v55);
      if (v58)
      {
LABEL_42:

        goto LABEL_43;
      }
    }

    v59 = v53;
    v60 = *(v56 + 16);
    if (!v60)
    {

      if (qword_1EDD09CF0 != -1)
      {
        OUTLINED_FUNCTION_0_23();
        swift_once();
      }

      v66 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v66, qword_1EDD28B68);
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      v67 = sub_1C754FEEC();
      v68 = sub_1C755117C();

      if (os_log_type_enabled(v67, v68))
      {
        buf = OUTLINED_FUNCTION_41_0();
        v177 = swift_slowAlloc();
        v209[0] = v177;
        *buf = v180;
        sub_1C7033D84(8, v59, v52);
        LODWORD(v173) = v68;

        v69 = OUTLINED_FUNCTION_90();
        v70 = MEMORY[0x1CCA5CC40](v69);
        v72 = v71;

        v73 = sub_1C6F765A4(v70, v72, v209);

        *(buf + 4) = v73;
        _os_log_impl(&dword_1C6F5C000, v67, v68, "Moment %s is a fallback shot-only moment, ignoring in the assignment algorithm", buf, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v177);
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();
      }

      else
      {
      }

      goto LABEL_44;
    }

    if (v60 != 1)
    {
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C7463DE0(v56);
      v75 = v74;

      v208[0] = v53;
      v208[1] = v52;
      v208[2] = v54;
      v208[3] = v55;
      v208[4] = v75;
      sub_1C70F1F94(v209, v208, v76, v77, v78, v79, v80, v81, v157, v158, v159, v160, v161, log, v164, v165, v166, v167, v168, v169, v171, v173, buf, v177, v180, *(&v180 + 1), v183, v185, v187, v189, v190, v191, v192, v193, v194, v195, v196, v197);

LABEL_43:

      goto LABEL_44;
    }

    v61 = 0;
    v62 = 1 << *(v56 + 32);
    v63 = (v62 + 63) >> 6;
    v64 = 56;
    if (!v63)
    {
      goto LABEL_42;
    }

    while (1)
    {
      v65 = *(v56 + v64);
      if (v65)
      {
        break;
      }

      v61 -= 64;
      --v63;
      v64 += 8;
      if (!v63)
      {
        goto LABEL_42;
      }
    }

    v82 = __clz(__rbit64(v65));
    if (v82 - v62 == v61)
    {
      goto LABEL_42;
    }

    sub_1C719D3B8(v82 - v61, *(v56 + 36), v56, &v198);

    sub_1C7467820(v53, v52, v54, v55, &v198);

    v207 = v198;
    sub_1C71691DC(&v207);
    v206 = v199;
    sub_1C7030CDC(&v206, &unk_1EC215BF0, &qword_1C755C2F0);
    v205 = v200;
    OUTLINED_FUNCTION_35();
    sub_1C7030CDC(v83, v84, v85);
    v204 = v201;
    OUTLINED_FUNCTION_35();
    sub_1C7030CDC(v86, v87, v88);
    v203 = v202;
    OUTLINED_FUNCTION_35();
    sub_1C7030CDC(v89, v90, v91);
LABEL_44:
    v45 = v183;
    v4 = v185;
  }

  while (v43);
  while (1)
  {
LABEL_22:
    v48 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      __break(1u);
      __break(1u);
      goto LABEL_86;
    }

    if (v48 >= v45)
    {
      break;
    }

    v43 = *(v40 + 8 * v48);
    ++v46;
    if (v43)
    {
      v46 = v48;
      goto LABEL_26;
    }
  }

  v92 = v193;
  if (*(v193 + 16) && (v165 & 1) != 0)
  {
    if (qword_1EDD09CF0 != -1)
    {
      OUTLINED_FUNCTION_0_23();
      swift_once();
    }

    v93 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v93, qword_1EDD28B68);
    v94 = sub_1C754FEEC();
    v95 = sub_1C75511BC();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = OUTLINED_FUNCTION_41_0();
      *v96 = 134217984;
      *(v96 + 4) = *(v92 + 16);
      OUTLINED_FUNCTION_26_48(&dword_1C6F5C000, v97, v98, "(%ld remaining moments, going through grounded assignment");
      OUTLINED_FUNCTION_109();
    }

    OUTLINED_FUNCTION_25_46(v99, v100, v101, v102, v103, v104, v105, v106, v157, v158, v159, v160, v161, log, v164, v165, v166, v167, v168, v169, v171, v173, buf, v177, v180, *(&v180 + 1), v183, v185, v187, v189, v190, v191, v192, v193);
    sub_1C7468160(&v193, &v194, 1, v107);
    swift_endAccess();
  }

  swift_beginAccess();
  v108 = v193;
  if (*(v193 + 16))
  {
    if (qword_1EDD09CF0 != -1)
    {
      OUTLINED_FUNCTION_0_23();
      swift_once();
    }

    v109 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v109, qword_1EDD28B68);
    v110 = sub_1C754FEEC();
    v111 = sub_1C75511BC();
    if (os_log_type_enabled(v110, v111))
    {
      v112 = OUTLINED_FUNCTION_41_0();
      *v112 = 134217984;
      *(v112 + 4) = *(v108 + 16);
      _os_log_impl(&dword_1C6F5C000, v110, v111, "(%ld remaining moments, going through non-grounded assignment", v112, 0xCu);
      OUTLINED_FUNCTION_109();
    }

    OUTLINED_FUNCTION_25_46(v113, v114, v115, v116, v117, v118, v119, v120, v157, v158, v159, v160, v161, log, v164, v165, v166, v167, v168, v169, v171, v173, buf, v177, v180, *(&v180 + 1), v183, v185, v187, v189, v190, v191, v192, v193);
    sub_1C7468160(&v193, &v194, 0, v121);
    swift_endAccess();
    v122 = v193;
    if (*(v193 + 16))
    {
      if (qword_1EDD09CF0 != -1)
      {
        OUTLINED_FUNCTION_0_23();
        swift_once();
      }

      OUTLINED_FUNCTION_23_2(v109, qword_1EDD28B68);
      sub_1C75504FC();
      v18 = sub_1C754FEEC();
      v123 = sub_1C755119C();
      if (os_log_type_enabled(v18, v123))
      {
        v124 = OUTLINED_FUNCTION_41_0();
        *v124 = 134217984;
        *(v124 + 4) = *(v122 + 16);

        OUTLINED_FUNCTION_26_48(&dword_1C6F5C000, v125, v126, "(%ld moments are unexpectedly remaining after assignment run");
        OUTLINED_FUNCTION_109();

        goto LABEL_66;
      }

LABEL_65:
    }
  }

LABEL_66:
  v127 = v196;
  sub_1C75504FC();
  sub_1C7463BF0(MEMORY[0x1E69E7CC8], v127, &v194);

  if (qword_1EDD09CF0 != -1)
  {
LABEL_86:
    OUTLINED_FUNCTION_0_23();
    swift_once();
  }

  v128 = sub_1C754FF1C();
  __swift_project_value_buffer(v128, qword_1EDD28B68);
  v129 = sub_1C754FEEC();
  v130 = sub_1C75511BC();
  if (os_log_type_enabled(v129, v130))
  {
    v131 = swift_slowAlloc();
    *v131 = 0;
    _os_log_impl(&dword_1C6F5C000, v129, v130, "Final Assignment - Chapter ID: numberOfAssignedAssets (numberOfAssignedGroundingAssets, numberOfAssignedAssetsIncludingFallbackShot) out of total numberOfAssets (numberOfGroundingAssets, numberOfAssetsIncludingFallbackShot)", v131, 2u);
    OUTLINED_FUNCTION_109();
  }

  if (v4)
  {
    v132 = (v164 + 72);
    do
    {
      v133 = *(v132 - 4);
      v134 = *(v132 - 3);
      v135 = *(v132 - 2);
      v137 = *(v132 - 1);
      v136 = *v132;
      v138 = *(v132 - 5);
      v209[0] = v138;
      v209[1] = v133;
      v209[2] = v134;
      v209[3] = v135;
      v209[4] = v137;
      v209[5] = v136;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      v139 = sub_1C6FE3760();
      if (v139)
      {
        v184 = *(v139 + 16);
      }

      else
      {
        v184 = 0;
      }

      v140 = sub_1C6FE3760();
      if (v140)
      {
        v181 = *(v140 + 16);
      }

      else
      {
        v181 = 0;
      }

      v141 = sub_1C6FE3760();
      if (v141)
      {
        v178 = *(v141 + 16);
      }

      else
      {
        v178 = 0;
      }

      v174 = *(v134 + 16);
      bufa = *(v135 + 16);
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C70738FC();
      v172 = *(v142 + 16);

      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      v143 = sub_1C754FEEC();
      v144 = sub_1C75511BC();

      v170 = v144;
      if (os_log_type_enabled(v143, v144))
      {
        v186 = v4;
        v145 = swift_slowAlloc();
        v188 = swift_slowAlloc();
        *v145 = 136316674;
        v146 = sub_1C7033D84(8, v138, v133);
        v148 = v147;
        loga = v143;
        v150 = v149;
        v152 = v151;

        MEMORY[0x1CCA5CC40](v146, v148, v150, v152);

        v153 = OUTLINED_FUNCTION_90();
        v156 = sub_1C6F765A4(v153, v154, v155);

        *(v145 + 4) = v156;
        *(v145 + 12) = 2048;
        *(v145 + 14) = v184;
        *(v145 + 22) = 2048;
        *(v145 + 24) = v181;
        *(v145 + 32) = 2048;
        *(v145 + 34) = v178;
        *(v145 + 42) = 2048;
        *(v145 + 44) = v174;
        *(v145 + 52) = 2048;
        *(v145 + 54) = bufa;
        *(v145 + 62) = 2048;
        *(v145 + 64) = v172;
        _os_log_impl(&dword_1C6F5C000, loga, v170, "Final Assignment - Chapter %s: %ld (%ld, %ld) assets out of %ld (%ld, %ld)", v145, 0x48u);
        __swift_destroy_boxed_opaque_existential_1(v188);
        OUTLINED_FUNCTION_109();
        v4 = v186;
        OUTLINED_FUNCTION_109();
      }

      else
      {
      }

      v132 += 6;
      --v4;
    }

    while (v4);
  }

  OUTLINED_FUNCTION_25_0();
}

void sub_1C7467820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = v5;
  v12 = a5[2];
  v69 = a5[3];
  v70 = v12;
  v13 = a5[4];
  v67 = a5[5];
  v68 = v13;
  v71 = *a5;
  OUTLINED_FUNCTION_30_48(a1, a2, a3, a4);
  OUTLINED_FUNCTION_7_98(&v70, v14, v15);
  OUTLINED_FUNCTION_7_98(&v69, v16, v17);
  OUTLINED_FUNCTION_7_98(&v68, v18, v19);
  OUTLINED_FUNCTION_7_98(&v67, v20, v21);
  swift_isUniquelyReferenced_nonNull_native();
  v66 = *v5;
  sub_1C6FC7BC8();
  *v5 = v66;
  swift_isUniquelyReferenced_nonNull_native();
  v66 = v5[1];
  sub_1C6FC2AD8(a5);
  OUTLINED_FUNCTION_31_1();
  if (__OFADD__(v23, v24))
  {
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    sub_1C7551E4C();
    __break(1u);
    return;
  }

  v25 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C1B0, &unk_1C758CF00);
  if (sub_1C7551A2C())
  {
    sub_1C6FC2AD8(a5);
    if ((v25 & 1) != (v26 & 1))
    {
      goto LABEL_21;
    }
  }

  v5[1] = v66;
  if ((v25 & 1) == 0)
  {
    v27 = sub_1C6FCABD8();
    OUTLINED_FUNCTION_30_48(v27, v28, v29, v30);
    OUTLINED_FUNCTION_4_106();
    sub_1C7469210();
    OUTLINED_FUNCTION_4_106();
    sub_1C7469210();
    OUTLINED_FUNCTION_4_106();
    sub_1C7469210();
    OUTLINED_FUNCTION_4_106();
    sub_1C7469210();
  }

  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C70F1D7C(&v66, a1, a2, a3, a4, v31);

  sub_1C75504FC();
  sub_1C7069A44();
  v33 = v32;
  swift_isUniquelyReferenced_nonNull_native();
  v66 = v5[2];
  sub_1C6FC2AD8(a5);
  OUTLINED_FUNCTION_31_1();
  if (__OFADD__(v35, v36))
  {
    goto LABEL_19;
  }

  v37 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215258, &unk_1C755CB20);
  v38 = sub_1C7551A2C();
  v39 = v66;
  if (v38)
  {
    sub_1C6FC2AD8(a5);
    if ((v37 & 1) != (v40 & 1))
    {
      goto LABEL_21;
    }
  }

  v6[2] = v39;
  if ((v37 & 1) == 0)
  {
    v41 = sub_1C6FCABD8();
    OUTLINED_FUNCTION_30_48(v41, v42, v43, v44);
    OUTLINED_FUNCTION_4_106();
    sub_1C7469210();
    OUTLINED_FUNCTION_4_106();
    sub_1C7469210();
    OUTLINED_FUNCTION_4_106();
    sub_1C7469210();
    OUTLINED_FUNCTION_4_106();
    sub_1C7469210();
  }

  sub_1C739796C(v33);
  sub_1C75504FC();
  sub_1C7069A44();
  v46 = v45;
  swift_isUniquelyReferenced_nonNull_native();
  v66 = v6[3];
  sub_1C6FC2AD8(a5);
  v48 = v47;
  OUTLINED_FUNCTION_31_1();
  if (__OFADD__(v49, v50))
  {
    goto LABEL_20;
  }

  v51 = sub_1C7551A2C();
  v52 = v66;
  if (v51)
  {
    sub_1C6FC2AD8(a5);
    OUTLINED_FUNCTION_8_5();
    if (!v53)
    {
      goto LABEL_21;
    }
  }

  v6[3] = v52;
  if ((v48 & 1) == 0)
  {
    v54 = sub_1C6FCABD8();
    OUTLINED_FUNCTION_30_48(v54, v55, v56, v57);
    OUTLINED_FUNCTION_8_90(&v70, v58, v59);
    OUTLINED_FUNCTION_8_90(&v69, v60, v61);
    OUTLINED_FUNCTION_8_90(&v68, v62, v63);
    OUTLINED_FUNCTION_8_90(&v67, v64, v65);
  }

  sub_1C739796C(v46);
}

void sub_1C7467C60()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_115();
  v3 = v1[2];
  v5 = v1[3];
  v4 = v1[4];
  v6 = v1[5];
  v8 = v0[2];
  v7 = v0[3];
  v10 = v0[4];
  v9 = v0[5];
  v11 = *v2 == *v0 && v1[1] == v0[1];
  if (v11 || (sub_1C7551DBC()) && (sub_1C7036A90(v3, v8), (v12) && (sub_1C7036A90(v5, v7), (v13) && (sub_1C7036A90(v4, v10), (v14) && (sub_1C7036A90(v6, v9), (v15) && (sub_1C7036A90(v1[6], v0[6]), (v16))
  {
    OUTLINED_FUNCTION_25_0();

    sub_1C7036A90(v17, v18);
  }

  else
  {
    OUTLINED_FUNCTION_25_0();
  }
}

uint64_t sub_1C7467D44(void *a1)
{
  sub_1C75505AC();
  sub_1C7041DF0(a1, *(v1 + 48), v3, v4, v5, v6, v7, v8);
  v15 = *(v1 + 56);

  return sub_1C7041DF0(a1, v15, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1C7467D90()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  sub_1C7551F3C();
  sub_1C75505AC();
  sub_1C7041DF0(v16, v2, v3, v4, v5, v6, v7, v8);
  sub_1C7041DF0(v16, v1, v9, v10, v11, v12, v13, v14);
  return sub_1C7551FAC();
}

uint64_t sub_1C7467E08(uint64_t a1)
{
  v3 = *(v1 + 48);
  v2 = *(v1 + 56);
  sub_1C7551F3C();
  sub_1C75505AC();
  sub_1C7041DF0(v17, v3, v4, v5, v6, v7, v8, v9);
  sub_1C7041DF0(v17, v2, v10, v11, v12, v13, v14, v15);
  return sub_1C7551FAC();
}

void sub_1C7467E78(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {
    sub_1C7036A90(v2, v3);
    if (v5)
    {
      v6 = OUTLINED_FUNCTION_90();

      sub_1C7036A90(v6, v7);
    }
  }
}

uint64_t sub_1C7467F08(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = a4;
  v6 = *(v5 + 32);
  v7 = *(v6 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
LABEL_20:
    sub_1C742484C(v8);
    v37 = v36;

    if (v37)
    {
      goto LABEL_23;
    }

    return result;
  }

  v41 = a5;
  v47 = MEMORY[0x1E69E7CC0];
  sub_1C716DA70(0, v7, 0);
  v8 = v47;
  v18 = (v6 + 32);
  while (1)
  {
    v20 = v18[2];
    v19 = v18[3];
    v21 = v18[1];
    v44 = *v18;
    *v45 = v21;
    *&v45[16] = v20;
    v46 = v19;
    v22 = v21;
    v48 = v44;
    v49 = v21;
    v50 = *&v45[8];
    v51 = *(&v20 + 1);
    if (a1)
    {
      break;
    }

    v27 = v42;
    if (*(v42 + 16))
    {
      OUTLINED_FUNCTION_29_42(v10, v11, v12, v13, v14, v15, v16, v17, v39, v40, v41, v42);
      v28 = sub_1C6FC2AD8(&v48);
      if (v29)
      {
        v26 = *(*(*(v27 + 56) + 8 * v28) + 16);
        goto LABEL_16;
      }
    }

    else
    {
      OUTLINED_FUNCTION_29_42(v10, v11, v12, v13, v14, v15, v16, v17, v39, v40, v41, v42);
    }

    v26 = 0;
LABEL_16:
    v30 = *(v46 + 16);
    v31 = *(v22 + 16);
    v10 = sub_1C74691E0(&v44);
    v32 = v31 * v31;
    if ((v31 * v31) >> 64 != (v31 * v31) >> 63)
    {
      goto LABEL_22;
    }

LABEL_17:
    v33 = v31 - v26;
    v47 = v8;
    v35 = *(v8 + 16);
    v34 = *(v8 + 24);
    if (v35 >= v34 >> 1)
    {
      sub_1C716DA70(v34 > 1, v35 + 1, 1);
      v8 = v47;
    }

    *(v8 + 16) = v35 + 1;
    *(v8 + 8 * v35 + 32) = v30 * v33 / v32;
    v18 += 4;
    if (!--v7)
    {
      goto LABEL_20;
    }
  }

  v43 = *&v45[8];
  v23 = v41;
  if (*(v41 + 16))
  {
    OUTLINED_FUNCTION_29_42(v10, v11, v12, v13, v14, v15, v16, v17, v39, v40, v41, v42);
    v24 = sub_1C6FC2AD8(&v48);
    if (v25)
    {
      v26 = *(*(*(v23 + 56) + 8 * v24) + 16);
      goto LABEL_12;
    }
  }

  else
  {
    OUTLINED_FUNCTION_29_42(v10, v11, v12, v13, v14, v15, v16, v17, v39, v40, v41, v42);
  }

  v26 = 0;
LABEL_12:
  v30 = *(*(&v46 + 1) + 16);
  v31 = *(v43 + 16);
  v10 = sub_1C74691E0(&v44);
  v32 = v31 * v31;
  if ((v31 * v31) >> 64 == (v31 * v31) >> 63)
  {
    goto LABEL_17;
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_1C7551AAC();
  __break(1u);
  return result;
}

void sub_1C7468160(uint64_t *a1, uint64_t a2, int a3, __n128 a4)
{
  LODWORD(v216) = a3;
  v4 = a2;
  v167 = a1;
  v5 = 0;
  v6 = &qword_1EC217768;
  a4.n128_u64[0] = 136317186;
  v172 = a4;
  a4.n128_u64[0] = 136315394;
  v143 = a4;
  v157 = a2;
  while (*(*v167 + 16))
  {
    sub_1C7464FD4(*v167, v216 & 1, v290, v4);
    if (!*(&v290[0] + 1))
    {
      break;
    }

    v162 = v5;
    v293 = v290[0];
    v294 = v290[1];
    v295 = v291;
    v9 = *(v4 + 16);
    v245 = *(v4 + 24);
    sub_1C7467F08(v216 & 1, v7, v8, v9, v245);
    if (v10 <= 0.0)
    {
      v286 = v293;
      v136 = v294;
      sub_1C71691DC(&v286);
      *&v280 = v136;
      OUTLINED_FUNCTION_35();
      sub_1C7030CDC(v137, v138, v139);
      v300 = *(&v136 + 1);
      OUTLINED_FUNCTION_35();
      sub_1C7030CDC(v140, v141, v142);
      *&v284[0] = v295;
      sub_1C7030CDC(v284, &qword_1EC217768, &qword_1C756BCB8);
      return;
    }

    sub_1C7421AD4(&v293, v292);
    sub_1C7030CDC(v292, &qword_1EC21C1A0, &qword_1C758CEF0);
    v296 = v295;
    v11 = *(v295 + 16);
    if (v11)
    {
      v250 = *(&v293 + 1);
      v206 = *(&v294 + 1);
      v211 = v294;
      v12 = (v295 + 32);
      v13 = v245;
      if ((v216 & 1) == 0)
      {
        v13 = v9;
      }

      v181 = v293;
      v186 = v13;
      v286 = 0u;
      v287 = 0u;
      v288 = 0u;
      v289 = 0u;
      v14 = sub_1C75504FC();
      oslog = (v11 - 1);
      v22 = 0.0;
      v201 = v9;
      while (1)
      {
        v24 = v12[2];
        v23 = v12[3];
        v25 = v12[1];
        v284[0] = *v12;
        v284[1] = v25;
        v284[2] = v24;
        v285 = v23;
        v26 = *(&v284[0] + 1);
        v27 = v25;
        v28 = *(&v24 + 1);
        v305[0] = v284[0];
        v305[1] = v25;
        v305[2] = v24;
        if ((v216 & 1) == 0)
        {
          if (*(v9 + 16))
          {
            OUTLINED_FUNCTION_12_81(v14, v15, v16, v17, v18, v19, v20, v21, v143.n128_i64[0], v143.n128_i64[1], v152, v157, v162, v167, v172.n128_i64[0], v172.n128_i64[1], v181, v186, v191, v196, v201, v206, v211, v216, v221, v226, *&v284[0], *(&v231 + 1), v240, v245, v250, v12, v260, *(&v260 + 1), oslog, v276, v280, *(&v280 + 1), v281, *(&v281 + 1), v282, *(&v282 + 1), v283, *(&v283 + 1));
            v33 = sub_1C6FC2AD8(v305);
            if (v34)
            {
              v32 = *(*(*(v9 + 56) + 8 * v33) + 16);
LABEL_22:
              v35 = *(v27 + 16);
              v36 = v35 * v35;
              if ((v35 * v35) >> 64 != (v35 * v35) >> 63)
              {
                goto LABEL_71;
              }

              v37 = v285;
              goto LABEL_24;
            }
          }

          else
          {
            OUTLINED_FUNCTION_12_81(v14, v15, v16, v17, v18, v19, v20, v21, v143.n128_i64[0], v143.n128_i64[1], v152, v157, v162, v167, v172.n128_i64[0], v172.n128_i64[1], v181, v186, v191, v196, v201, v206, v211, v216, v221, v226, *&v284[0], *(&v231 + 1), v240, v245, v250, v12, v260, *(&v260 + 1), oslog, v276, v280, *(&v280 + 1), v281, *(&v281 + 1), v282, *(&v282 + 1), v283, *(&v283 + 1));
          }

          v32 = 0;
          goto LABEL_22;
        }

        v29 = v245;
        if (!*(v245 + 16))
        {
          OUTLINED_FUNCTION_12_81(v14, v15, v16, v17, v18, v19, v20, v21, v143.n128_i64[0], v143.n128_i64[1], v152, v157, v162, v167, v172.n128_i64[0], v172.n128_i64[1], v181, v186, v191, v196, v201, v206, v211, v216, v221, v226, *&v284[0], *(&v231 + 1), v240, v245, v250, v12, v260, *(&v260 + 1), oslog, v276, v280, *(&v280 + 1), v281, *(&v281 + 1), v282, *(&v282 + 1), v283, *(&v283 + 1));
LABEL_17:
          v32 = 0;
          goto LABEL_18;
        }

        OUTLINED_FUNCTION_12_81(v14, v15, v16, v17, v18, v19, v20, v21, v143.n128_i64[0], v143.n128_i64[1], v152, v157, v162, v167, v172.n128_i64[0], v172.n128_i64[1], v181, v186, v191, v196, v201, v206, v211, v216, v221, v226, *&v284[0], *(&v231 + 1), v240, v245, v250, v12, v260, *(&v260 + 1), oslog, v276, v280, *(&v280 + 1), v281, *(&v281 + 1), v282, *(&v282 + 1), v283, *(&v283 + 1));
        v30 = sub_1C6FC2AD8(v305);
        if ((v31 & 1) == 0)
        {
          goto LABEL_17;
        }

        v32 = *(*(*(v29 + 56) + 8 * v30) + 16);
LABEL_18:
        v35 = *(*(&v27 + 1) + 16);
        v36 = v35 * v35;
        if ((v35 * v35) >> 64 != (v35 * v35) >> 63)
        {
          __break(1u);
LABEL_71:
          __break(1u);
          return;
        }

        v37 = *(&v285 + 1);
LABEL_24:
        v38 = v35 - v32;
        v39 = *(v37 + 16);
        v40 = *(v9 + 16);
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        if (v40 && (v41 = sub_1C6FC2AD8(v305), (v42 & 1) != 0))
        {
          v227 = *(*(*(v9 + 56) + 8 * v41) + 16);
        }

        else
        {
          v227 = 0;
        }

        v43 = v246;
        if (*(v246 + 16))
        {
          v44 = sub_1C6FC2AD8(v305);
          if (v45)
          {
            v222 = *(*(*(v246 + 56) + 8 * v44) + 16);
          }

          else
          {
            v222 = 0;
          }
        }

        else
        {
          v222 = 0;
        }

        if (qword_1EDD09CF0 != -1)
        {
          OUTLINED_FUNCTION_0_23();
          swift_once();
        }

        v46 = v38 * v39 / v36;
        v47 = sub_1C754FF1C();
        OUTLINED_FUNCTION_23_2(v47, qword_1EDD28B68);
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        v48 = sub_1C75504FC();
        OUTLINED_FUNCTION_12_81(v48, v49, v50, v51, v52, v53, v54, v55, v144, v148, v153, v158, v163, v168, v173, v177, v182, v187, v192, v197, v202, v207, v212, v217, v222, v227, v232, v236, v241, v246, v251, v255, v261, v265, osloga, *(&v27 + 1), v280, *(&v280 + 1), v281, *(&v281 + 1), v282, *(&v282 + 1), v283, *(&v283 + 1));
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        v56 = sub_1C75504FC();
        OUTLINED_FUNCTION_12_81(v56, v57, v58, v59, v60, v61, v62, v63, v145, v149, v154, v159, v164, v169, v174, v178, v183, v188, v193, v198, v203, v208, v213, v218, v223, v228, v233, v237, v242, v247, v252, v256, v262, v266, oslogd, v277, v280, *(&v280 + 1), v281, *(&v281 + 1), v282, *(&v282 + 1), v283, *(&v283 + 1));
        v64 = sub_1C75504FC();
        OUTLINED_FUNCTION_12_81(v64, v65, v66, v67, v68, v69, v70, v71, v146, v150, v155, v160, v165, v170, v175, v179, v184, v189, v194, v199, v204, v209, v214, v219, v224, v229, v234, v238, v243, v248, v253, v257, v263, v267, osloge, v278, v280, *(&v280 + 1), v281, *(&v281 + 1), v282, *(&v282 + 1), v283, *(&v283 + 1));
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        v72 = sub_1C7469210();
        OUTLINED_FUNCTION_12_81(v72, v73, v74, v75, v76, v77, v78, v79, v147, v151, v156, v161, v166, v171, v176, v180, v185, v190, v195, v200, v205, v210, v215, v220, v225, v230, v235, v239, v244, v249, v254, v258, v264, v268, oslogf, v279, v280, *(&v280 + 1), v281, *(&v281 + 1), v282, *(&v282 + 1), v283, *(&v283 + 1));
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        *&v260 = v28;
        sub_1C75504FC();
        v80 = v250;
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        v196 = v43;
        v81 = sub_1C754FEEC();
        v82 = sub_1C755117C();

        sub_1C7030CDC(&v296, v6, &qword_1C756BCB8);

        HIDWORD(v216) = v82;
        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          v191 = swift_slowAlloc();
          *&v280 = v191;
          *v83 = v172.n128_u32[0];
          sub_1C75504FC();
          v84 = sub_1C7033D84(8, v181, v250);
          v85 = MEMORY[0x1CCA5CC40](v84);
          v87 = v86;

          v88 = sub_1C6F765A4(v85, v87, &v280);

          *(v83 + 4) = v88;
          *(v83 + 12) = 2080;
          sub_1C75504FC();
          v89 = sub_1C7033D84(8, v231, v26);
          v90 = MEMORY[0x1CCA5CC40](v89);
          v92 = v91;

          v93 = sub_1C6F765A4(v90, v92, &v280);
          v6 = &qword_1EC217768;

          *(v83 + 14) = v93;
          *(v83 + 22) = 2048;
          v94 = *(v285 + 16);
          sub_1C74691E0(v284);
          *(v83 + 24) = v94;
          sub_1C74691E0(v284);
          *(v83 + 32) = 2048;
          v95 = *(*(&v285 + 1) + 16);
          sub_1C74691E0(v284);
          *(v83 + 34) = v95;
          sub_1C74691E0(v284);
          *(v83 + 42) = 2048;
          *(v83 + 44) = v46;
          *(v83 + 52) = 2048;
          v96 = *(v27 + 16);

          *(v83 + 54) = v96;

          *(v83 + 62) = 2048;
          v97 = *(v276 + 16);

          *(v83 + 64) = v97;

          *(v83 + 72) = 2048;
          *(v83 + 74) = v226;
          *(v83 + 82) = 2048;
          v80 = v250;
          *(v83 + 84) = v221;
          _os_log_impl(&dword_1C6F5C000, v81, v82, "Moment %s, chapter %s, %ld assets (%ld), score %f (total assets %ld (%ld), assigned %ld (%ld))", v83, 0x5Cu);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_109();
          OUTLINED_FUNCTION_109();
        }

        else
        {
          OUTLINED_FUNCTION_29_20();
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          OUTLINED_FUNCTION_129_0();
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          sub_1C74691E0(v284);
          sub_1C74691E0(v284);
          OUTLINED_FUNCTION_29_20();
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          OUTLINED_FUNCTION_129_0();
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          sub_1C74691E0(v284);
          sub_1C74691E0(v284);
        }

        v9 = v201;
        if (v22 < v46)
        {

          v14 = sub_1C7030CDC(&v286, &qword_1EC21C1A8, &qword_1C758CEF8);
          v98 = v284;
          v22 = v46;
          goto LABEL_58;
        }

        if (v46 != v22)
        {

          v14 = sub_1C74691E0(v284);
          v98 = &v286;
          goto LABEL_58;
        }

        v99 = *(&v286 + 1);
        if (*(&v286 + 1))
        {
          v226 = v286;
          v260 = v287;
          v231 = v288;
          v100 = *(v186 + 16);
          sub_1C75504FC();
          if (v100)
          {
            v101 = sub_1C6FC2AD8(v305);
            v103 = v102;

            if (v103)
            {
              if (*(v186 + 16))
              {
                v104 = *(*(*(v186 + 56) + 8 * v101) + 16);
                goto LABEL_51;
              }

              goto LABEL_54;
            }
          }

          else
          {
          }

          if (!*(v186 + 16))
          {
            goto LABEL_54;
          }

          v104 = 0;
LABEL_51:
          v302[0] = v226;
          v302[1] = v99;
          v303 = v260;
          v304 = v231;
          v105 = sub_1C6FC2AD8(v302);
          if (v106)
          {
            v107 = *(*(v186 + 56) + 8 * v105);
            sub_1C75504FC();

            v108 = *(v107 + 16);

            if (v104 < v108)
            {
              v14 = sub_1C7030CDC(&v286, &qword_1EC21C1A8, &qword_1C758CEF8);
              v98 = v284;
LABEL_56:
              v6 = &qword_1EC217768;
              goto LABEL_57;
            }
          }

          else
          {
LABEL_54:
          }

          v14 = sub_1C74691E0(v284);
          v98 = &v286;
          goto LABEL_56;
        }

        v14 = sub_1C74691E0(v284);
        v98 = &v286;
LABEL_57:
        v80 = v250;
LABEL_58:
        v109 = v98[1];
        v280 = *v98;
        v281 = v109;
        v110 = v98[3];
        v282 = v98[2];
        v283 = v110;
        if (!oslogb)
        {
          break;
        }

        v286 = v280;
        v287 = v281;
        v288 = v282;
        v289 = v283;
        oslog = (oslogb - 1);
        v12 = (v259 + 64);
      }

      v111 = OUTLINED_FUNCTION_17_78();
      sub_1C7030CDC(v111, v112, &qword_1C756BCB8);
      v113 = *(&v280 + 1);
      if (!*(&v280 + 1))
      {

        v134 = OUTLINED_FUNCTION_17_78();
        goto LABEL_65;
      }

      v114 = v281;
      *&v260 = v280;
      v301[0] = v280;
      v301[1] = v281;
      v301[2] = v282;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C7030CDC(&v280, &qword_1EC21C1A8, &qword_1C758CEF8);
      sub_1C7469210();
      sub_1C75504FC();
      sub_1C75504FC();
      v115 = v6;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      oslogc = sub_1C754FEEC();
      v116 = sub_1C755117C();

      v117 = v80;

      sub_1C7030CDC(&v296, v6, &qword_1C756BCB8);

      v276 = v114;
      v118 = v113;

      if (os_log_type_enabled(oslogc, v116))
      {
        v119 = swift_slowAlloc();
        v300 = swift_slowAlloc();
        *v119 = v143.n128_u32[0];
        sub_1C75504FC();
        v120 = sub_1C7033D84(8, v181, v80);
        v121 = MEMORY[0x1CCA5CC40](v120);
        v123 = v122;

        v124 = sub_1C6F765A4(v121, v123, &v300);

        *(v119 + 4) = v124;
        *(v119 + 12) = 2080;
        sub_1C75504FC();
        v125 = sub_1C7033D84(8, v260, v118);
        v126 = MEMORY[0x1CCA5CC40](v125);
        v128 = v127;

        v115 = &qword_1EC217768;
        v129 = sub_1C6F765A4(v126, v128, &v300);

        *(v119 + 14) = v129;
        v130 = v181;
        _os_log_impl(&dword_1C6F5C000, oslogc, v116, "Moment %s, winner is chapter %s", v119, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();
      }

      else
      {

        v130 = v181;
      }

      sub_1C7467820(v130, v117, v211, v206, v301);

      sub_1C7030CDC(&v296, v115, &qword_1C756BCB8);

      v4 = v157;

      v5 = v162;
      v6 = v115;
    }

    else
    {
      v299 = v293;
      v131 = v294;
      sub_1C75504FC();
      sub_1C71691DC(&v299);
      v298 = v131;
      sub_1C7030CDC(&v298, &unk_1EC215BF0, &qword_1C755C2F0);
      v297 = *(&v131 + 1);
      sub_1C7030CDC(&v297, &unk_1EC215BF0, &qword_1C755C2F0);
      v132 = OUTLINED_FUNCTION_17_78();
      sub_1C7030CDC(v132, v133, &qword_1C756BCB8);
      v134 = OUTLINED_FUNCTION_17_78();
LABEL_65:
      sub_1C7030CDC(v134, v135, &qword_1C756BCB8);
      v4 = v157;
      v5 = v162;
    }
  }
}

uint64_t sub_1C7468FD8(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[3];
  v4 = a2[6];
  v16 = *a2;
  v17 = *(a2 + 1);
  v18 = v3;
  v19 = *(a2 + 2);
  sub_1C75504FC();
  v5 = sub_1C6FE3760();
  if (v5)
  {
    v15 = a1;
    v20 = v4;
    v6 = v5 + 56;
    v7 = 1 << *(v5 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v5 + 56);
    v10 = (v7 + 63) >> 6;
    result = sub_1C75504FC();
    v12 = 0;
    if (v9)
    {
      goto LABEL_10;
    }

    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {

        v4 = v20;
        a1 = v15;
        goto LABEL_13;
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        v12 = v13;
        do
        {
LABEL_10:
          v9 &= v9 - 1;
          swift_bridgeObjectRetain_n();
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C7069A44();
          sub_1C739796C(v14);
        }

        while (v9);
        continue;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
    swift_isUniquelyReferenced_nonNull_native();
    v20 = *a1;
    result = sub_1C6FC9D70(v4, &v16);
    *a1 = v20;
  }

  return result;
}

uint64_t sub_1C7469210()
{
  OUTLINED_FUNCTION_115();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  v3 = OUTLINED_FUNCTION_90();
  v4(v3);
  return v0;
}

unint64_t sub_1C74692A4()
{
  result = qword_1EDD09CF8;
  if (!qword_1EDD09CF8)
  {
    result = swift_getWitnessTable(aU_15, &unk_1F46C9160, v0, v1);
    atomic_store(result, &qword_1EDD09CF8);
  }

  return result;
}

unint64_t sub_1C74692FC()
{
  result = qword_1EDD09CE0;
  if (!qword_1EDD09CE0)
  {
    result = swift_getWitnessTable(aY_11, &unk_1F46C90D0, v0, v1);
    atomic_store(result, &qword_1EDD09CE0);
  }

  return result;
}

unint64_t sub_1C7469354()
{
  result = qword_1EC21C1C8;
  if (!qword_1EC21C1C8)
  {
    result = swift_getWitnessTable(byte_1C758D138, &unk_1F46C9048, v0, v1);
    atomic_store(result, &qword_1EC21C1C8);
  }

  return result;
}

unint64_t sub_1C74693AC()
{
  result = qword_1EDD09D18;
  if (!qword_1EDD09D18)
  {
    result = swift_getWitnessTable(byte_1C758D1A0, &unk_1F46C8FC8, v0, v1);
    atomic_store(result, &qword_1EDD09D18);
  }

  return result;
}

PhotosIntelligence::DailyPhotosFaceCuration::DailyPhotosFace::Source_optional __swiftcall DailyPhotosFaceCuration.DailyPhotosFace.Source.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C7551B2C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DailyPhotosFaceCuration.DailyPhotosFace.Source.rawValue.getter()
{
  v1 = 0x654B79726F6D656DLL;
  if (*v0 != 1)
  {
    v1 = 0x734179726F6D656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6465727574616566;
  }
}

uint64_t sub_1C7469508@<X0>(uint64_t *a1@<X8>)
{
  result = DailyPhotosFaceCuration.DailyPhotosFace.Source.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t DailyPhotosFaceCuration.DailyPhotosFace.localizedTitle.getter()
{
  v1 = *(v0 + 16);
  sub_1C75504FC();
  return v1;
}

uint64_t DailyPhotosFaceCuration.DailyPhotosFace.localizedSubtitle.getter()
{
  v1 = *(v0 + 32);
  sub_1C75504FC();
  return v1;
}

id DailyPhotosFaceCuration.DailyPhotosFace.uuid.getter()
{
  result = [*(v0 + 8) uuid];
  if (result)
  {
    v2 = result;
    v3 = sub_1C755068C();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C7469604()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC21C1D0);
  __swift_project_value_buffer(v0, qword_1EC21C1D0);
  return sub_1C754FEFC();
}

void __swiftcall DailyPhotosFaceCuration.init(maxNumberOfFaces:photoLibrary:)(PhotosIntelligence::DailyPhotosFaceCuration *__return_ptr retstr, Swift::Int maxNumberOfFaces, PHPhotoLibrary photoLibrary)
{
  retstr->limit = maxNumberOfFaces;
  retstr->photoLibrary = photoLibrary;
  v5 = objc_allocWithZone(PNTimelineDataSourceOptions);
  v6 = photoLibrary.super.isa;
  v7 = [v5 initForWatchShuffle];
  sub_1C6F65BE8(0, &qword_1EC21C1E8, off_1E829F4A0);
  retstr->dataSource.super.isa = sub_1C7469710(v6, v7);
}

id sub_1C7469710(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPhotoLibrary:a1 options:a2];

  return v4;
}

uint64_t DailyPhotosFaceCuration.getDailyPhotosFaces(excluding:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = *v3;
  v22 = MEMORY[0x1E69E7CC0];
  v6 = sub_1C74699B8(a1);
  v7 = sub_1C75504FC();
  sub_1C6FD43AC(v7);
  v8 = OUTLINED_FUNCTION_0_190();
  v9 = sub_1C7469EB8(v8);
  v10 = sub_1C75504FC();
  sub_1C6FD43AC(v10);
  if (__OFSUB__(v5, *(v22 + 16)))
  {
    __break(1u);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_0_190();
    v4 = sub_1C746A3A0(v11, v12);
    v13 = sub_1C75504FC();
    sub_1C6FD43AC(v13);
    if (qword_1EC214180 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v14 = sub_1C754FF1C();
  __swift_project_value_buffer(v14, qword_1EC21C1D0);
  swift_bridgeObjectRetain_n();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  v15 = sub_1C754FEEC();
  v16 = sub_1C75511BC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134218752;
    *(v17 + 4) = *(v22 + 16);

    *(v17 + 12) = 2048;
    v18 = *(v6 + 16);

    *(v17 + 14) = v18;

    *(v17 + 22) = 2048;
    v19 = *(v9 + 16);

    *(v17 + 24) = v19;

    *(v17 + 32) = 2048;
    v20 = v4[2];

    *(v17 + 34) = v20;

    _os_log_impl(&dword_1C6F5C000, v15, v16, "Found %ld total assets. From featured photos: %ld; from memory key assets: %ld; from backfilled memory assets: %ld", v17, 0x2Au);
    MEMORY[0x1CCA5F8E0](v17, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  return v22;
}

uint64_t sub_1C74699B8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = [v2 featuredPhotos];
  sub_1C6F65BE8(0, &qword_1EDD0CEB0, 0x1E6978AE8);
  v4 = sub_1C7550B5C();

  v5 = [v2 keyAssetByFeaturedPhotoLocalIdentifier];
  sub_1C6F65BE8(0, &qword_1EDD0FA70, 0x1E6978630);
  v6 = sub_1C75504AC();

  result = sub_1C6FB6304();
  if (result)
  {
    v9 = result;
    if (result >= 1)
    {
      v10 = 0;
      v11 = v4 & 0xC000000000000001;
      v12 = MEMORY[0x1E69E7CC0];
      *&v8 = 136315138;
      v51 = v8;
      v52 = v4;
      v56 = v4 & 0xC000000000000001;
      v57 = result;
      while (1)
      {
        if (v11)
        {
          v13 = MEMORY[0x1CCA5DDD0](v10, v4);
        }

        else
        {
          v13 = *(v4 + 8 * v10 + 32);
        }

        v14 = v13;
        v15 = [v13 localIdentifier];
        v16 = sub_1C755068C();
        v18 = v17;

        if (*(v6 + 16))
        {
          v19 = sub_1C6F78124(v16, v18);
          v21 = v20;

          if (v21)
          {
            v22 = *(*(v6 + 56) + 8 * v19);
            v23 = sub_1C70CAC04(v22);
            if (!v24)
            {
              goto LABEL_24;
            }

            v25 = v23;
            v26 = v24;
            if (sub_1C7009C30(v23, v24, a1))
            {
              if (qword_1EC214180 != -1)
              {
                swift_once();
              }

              v27 = sub_1C754FF1C();
              __swift_project_value_buffer(v27, qword_1EC21C1D0);
              sub_1C75504FC();
              v28 = sub_1C754FEEC();
              v29 = sub_1C75511BC();

              if (os_log_type_enabled(v28, v29))
              {
                v30 = swift_slowAlloc();
                v53 = v12;
                v31 = swift_slowAlloc();
                v58 = v31;
                *v30 = v51;
                v32 = sub_1C6F765A4(v25, v26, &v58);

                *(v30 + 4) = v32;
                _os_log_impl(&dword_1C6F5C000, v28, v29, "Excluding Featured Photo: %s", v30, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v31);
                v33 = v31;
                v12 = v53;
                MEMORY[0x1CCA5F8E0](v33, -1, -1);
                v34 = v30;
                v4 = v52;
                MEMORY[0x1CCA5F8E0](v34, -1, -1);
              }

              else
              {
              }

LABEL_24:
            }

            else
            {

              v35 = v14;
              v54 = sub_1C746AE84(v35, &selRef_localizedTitle);
              v37 = v36;
              v38 = sub_1C746AE84(v35, &selRef_localizedSubtitle);
              v40 = v39;
              v41 = v22;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1C6FB4EBC(0);
                v12 = v45;
              }

              v43 = *(v12 + 16);
              v42 = *(v12 + 24);
              if (v43 >= v42 >> 1)
              {
                sub_1C6FB4EBC(v42 > 1);
                v12 = v46;
              }

              *(v12 + 16) = v43 + 1;
              v44 = v12 + 48 * v43;
              *(v44 + 32) = 0;
              v4 = v52;
              *(v44 + 40) = v41;
              *(v44 + 48) = v54;
              *(v44 + 56) = v37;
              *(v44 + 64) = v38;
              *(v44 + 72) = v40;
            }

            v11 = v56;
            v9 = v57;
            goto LABEL_26;
          }
        }

        else
        {
        }

LABEL_26:
        if (v9 == ++v10)
        {

          goto LABEL_29;
        }
      }
    }

    __break(1u);
  }

  else
  {

    v12 = MEMORY[0x1E69E7CC0];
LABEL_29:

    if (qword_1EC214180 != -1)
    {
      swift_once();
    }

    v47 = sub_1C754FF1C();
    __swift_project_value_buffer(v47, qword_1EC21C1D0);
    sub_1C75504FC();
    v48 = sub_1C754FEEC();
    v49 = sub_1C755117C();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 134217984;
      *(v50 + 4) = *(v12 + 16);

      _os_log_impl(&dword_1C6F5C000, v48, v49, "Found %ld featured photos assets", v50, 0xCu);
      MEMORY[0x1CCA5F8E0](v50, -1, -1);
    }

    else
    {
    }

    return v12;
  }

  return result;
}

uint64_t sub_1C7469EB8(uint64_t a1)
{
  v3 = *(v2 + 16);
  v4 = [v3 featuredMemories];
  v5 = [v3 keyAssetByMemoryLocalIdentifier];
  sub_1C6F65BE8(0, &qword_1EDD0FA70, 0x1E6978630);
  v6 = sub_1C75504AC();

  v7 = [v4 count];
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_32:
    swift_once();
    goto LABEL_27;
  }

  v9 = v7;
  if (v7)
  {
    v10 = 0;
    v1 = MEMORY[0x1E69E7CC0];
    v11 = &selRef_mergedPersonIdentifiers;
    *&v8 = 136315138;
    v54 = v8;
    v55 = v4;
    v60 = v7;
    while (1)
    {
      v12 = [v4 v11[45]];
      v13 = [v12 localIdentifier];
      v14 = sub_1C755068C();
      v16 = v15;

      if (*(v6 + 16))
      {
        v17 = sub_1C6F78124(v14, v16);
        v19 = v18;

        if (v19)
        {
          v20 = *(*(v6 + 56) + 8 * v17);
          v21 = sub_1C70CAC04(v20);
          if (!v22)
          {
            goto LABEL_21;
          }

          v23 = v21;
          v24 = v22;
          if (sub_1C7009C30(v21, v22, a1))
          {
            if (qword_1EC214180 != -1)
            {
              swift_once();
            }

            v25 = sub_1C754FF1C();
            __swift_project_value_buffer(v25, qword_1EC21C1D0);
            sub_1C75504FC();
            v26 = sub_1C754FEEC();
            v27 = sub_1C75511BC();

            if (os_log_type_enabled(v26, v27))
            {
              v57 = v1;
              v28 = swift_slowAlloc();
              v29 = swift_slowAlloc();
              v61 = v29;
              *v28 = v54;
              v30 = sub_1C6F765A4(v23, v24, &v61);

              *(v28 + 4) = v30;
              _os_log_impl(&dword_1C6F5C000, v26, v27, "Excluding Memory Key Asset: %s", v28, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v29);
              v31 = v29;
              v4 = v55;
              MEMORY[0x1CCA5F8E0](v31, -1, -1);
              v32 = v28;
              v1 = v57;
              MEMORY[0x1CCA5F8E0](v32, -1, -1);
            }

            else
            {
            }

LABEL_21:
          }

          else
          {

            v33 = v12;
            v34 = sub_1C746AE84(v33, &selRef_localizedTitle);
            v56 = v35;
            v58 = v34;
            v36 = sub_1C746AE84(v33, &selRef_localizedSubtitle);
            v38 = v37;
            v39 = v20;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1C6FB4EBC(0);
              v1 = v45;
            }

            v40 = v1;
            v41 = *(v1 + 16);
            v42 = v40;
            v43 = *(v40 + 24);
            if (v41 >= v43 >> 1)
            {
              sub_1C6FB4EBC(v43 > 1);
              v42 = v46;
            }

            *(v42 + 16) = v41 + 1;
            v44 = v42 + 48 * v41;
            v1 = v42;
            *(v44 + 32) = 1;
            *(v44 + 40) = v39;
            *(v44 + 48) = v58;
            *(v44 + 56) = v56;
            *(v44 + 64) = v36;
            *(v44 + 72) = v38;
          }

          v9 = v60;
          v11 = &selRef_mergedPersonIdentifiers;
          goto LABEL_23;
        }
      }

      else
      {
      }

LABEL_23:
      if (v9 == ++v10)
      {

        goto LABEL_26;
      }
    }
  }

  v1 = MEMORY[0x1E69E7CC0];
LABEL_26:
  if (qword_1EC214180 != -1)
  {
    goto LABEL_32;
  }

LABEL_27:
  v47 = sub_1C754FF1C();
  __swift_project_value_buffer(v47, qword_1EC21C1D0);
  sub_1C75504FC();
  v48 = sub_1C754FEEC();
  v49 = sub_1C755117C();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = v1;
    v51 = swift_slowAlloc();
    *v51 = 134217984;
    *(v51 + 4) = *(v50 + 16);

    _os_log_impl(&dword_1C6F5C000, v48, v49, "Found %ld memory key assets", v51, 0xCu);
    v52 = v51;
    v1 = v50;
    MEMORY[0x1CCA5F8E0](v52, -1, -1);
  }

  else
  {
  }

  return v1;
}

void *sub_1C746A3A0(void *a1, uint64_t a2)
{
  v107 = a1;
  v4 = sub_1C754DF6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = a2;
  if (a2 < 1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v8 = *(v2 + 16);
  v99 = *(v2 + 8);
  v9 = objc_opt_self();
  sub_1C754DF3C();
  v10 = sub_1C754DECC();
  (*(v5 + 8))(v7, v4);
  v95 = [v9 randomNumberGeneratorForWallpaperDonationWithDate_];

  v11 = [v8 featuredMemories];
  v12 = [v8 keyAssetByMemoryLocalIdentifier];
  sub_1C6F65BE8(0, &qword_1EDD0FA70, 0x1E6978630);
  v13 = sub_1C75504AC();

  v14 = [v11 count];
  if ((v14 & 0x8000000000000000) != 0)
  {
LABEL_57:
    __break(1u);
LABEL_58:
    swift_once();
    goto LABEL_51;
  }

  v15 = v14;
  v100 = v11;
  if (!v14)
  {
    v17 = MEMORY[0x1E69E7CC0];
LABEL_23:

    v56 = 0;
    v57 = v17[2];
    v102 = v17 + 4;
    v103 = v57;
    v58 = v107 + 7;
    v101 = MEMORY[0x1E69E7CC0];
LABEL_24:
    while (v56 != v103)
    {
      if (v56 >= v17[2])
      {
        __break(1u);
        goto LABEL_56;
      }

      v12 = v17;
      v59 = &v102[6 * v56];
      LODWORD(v106) = *v59;
      v61 = v59[1];
      v60 = v59[2];
      v62 = v59[3];
      v104 = v59[4];
      v105 = v60;
      v63 = v59[5];
      sub_1C75504FC();
      v13 = v61;
      sub_1C75504FC();
      result = [v13 uuid];
      if (!result)
      {
        __break(1u);
        goto LABEL_62;
      }

      v64 = result;
      ++v56;
      v65 = sub_1C755068C();
      v67 = v66;

      if (v107[2])
      {
        v68 = v107;
        sub_1C7551F3C();
        sub_1C75505AC();
        v69 = sub_1C7551FAC();
        v70 = ~(-1 << *(v68 + 32));
        while (1)
        {
          v71 = v69 & v70;
          if (((*(v58 + (((v69 & v70) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v69 & v70)) & 1) == 0)
          {
            break;
          }

          v72 = (v107[6] + 16 * v71);
          if (*v72 != v65 || v72[1] != v67)
          {
            v74 = sub_1C7551DBC();
            v69 = v71 + 1;
            if ((v74 & 1) == 0)
            {
              continue;
            }
          }

          v17 = v12;
          goto LABEL_24;
        }
      }

      v75 = v101;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v108 = v75;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C716EE38(0, v75[2] + 1, 1);
        v75 = v108;
      }

      v78 = v75[2];
      v77 = v75[3];
      if (v78 >= v77 >> 1)
      {
        sub_1C716EE38(v77 > 1, v78 + 1, 1);
        v75 = v108;
      }

      v75[2] = v78 + 1;
      v101 = v75;
      v79 = &v75[6 * v78];
      *(v79 + 32) = v106;
      v80 = v104;
      v81 = v105;
      v79[5] = v13;
      v79[6] = v81;
      v79[7] = v62;
      v79[8] = v80;
      v79[9] = v63;
      v17 = v12;
    }

    v82 = sub_1C7259930(v95, v101);

    sub_1C7033F04(v94, v82);
    v84 = v83;
    v86 = v85;
    v13 = v100;
    if (v85)
    {
      sub_1C7551DEC();
      swift_unknownObjectRetain_n();
      v88 = swift_dynamicCastClass();
      if (!v88)
      {
        swift_unknownObjectRelease();
        v88 = MEMORY[0x1E69E7CC0];
      }

      v89 = *(v88 + 16);

      if (__OFSUB__(v86 >> 1, v84))
      {
        __break(1u);
      }

      else if (v89 == (v86 >> 1) - v84)
      {
        v12 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v12)
        {
          goto LABEL_50;
        }

        v12 = MEMORY[0x1E69E7CC0];
LABEL_49:
        swift_unknownObjectRelease();
LABEL_50:
        if (qword_1EC214180 != -1)
        {
          goto LABEL_58;
        }

LABEL_51:
        v90 = sub_1C754FF1C();
        __swift_project_value_buffer(v90, qword_1EC21C1D0);

        v91 = sub_1C754FEEC();
        v92 = sub_1C755117C();
        if (os_log_type_enabled(v91, v92))
        {
          v93 = swift_slowAlloc();
          *v93 = 134217984;
          *(v93 + 4) = v12[2];

          _os_log_impl(&dword_1C6F5C000, v91, v92, "Found %ld backfill assets from memories", v93, 0xCu);
          MEMORY[0x1CCA5F8E0](v93, -1, -1);
        }

        else
        {
        }

        return v12;
      }

      swift_unknownObjectRelease();
    }

    sub_1C739D1DC();
    v12 = v87;
    goto LABEL_49;
  }

  v16 = 0;
  v17 = MEMORY[0x1E69E7CC0];
  v18 = &selRef_clsSceneClassifications;
  v98 = xmmword_1C7565670;
  v97 = v13;
  v96 = v14;
  while (1)
  {
    v19 = [v11 objectAtIndexedSubscript_];
    v20 = v18[481];
    v106 = v19;
    v21 = [v19 v20];
    v22 = sub_1C755068C();
    v12 = v23;

    if (!v13[2])
    {

      goto LABEL_19;
    }

    v24 = sub_1C6F78124(v22, v12);
    v26 = v25;

    if (v26)
    {
      break;
    }

LABEL_19:
    v16 = (v16 + 1);

    if (v16 == v15)
    {
      goto LABEL_23;
    }
  }

  v27 = *(v13[7] + 8 * v24);
  v28 = [v99 librarySpecificFetchOptions];
  v29 = objc_opt_self();
  v30 = v18[481];
  v103 = v27;
  v31 = [v27 v30];
  v32 = sub_1C755068C();
  v34 = v33;

  result = sub_1C725C798(v32, v34, v29);
  if (v36)
  {
    v37 = static CurationPredicateBuilder.internalPredicateForDailyPhotosFace(excluding:)(result, v36);

    [v28 setInternalPredicate_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
    v12 = swift_allocObject();
    *(v12 + 1) = v98;
    v38 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
    v12[4] = sub_1C6F6AF98(1684632949, 0xE400000000000000, 1);
    sub_1C71F8834(v12, v28);
    [v28 setIncludeHiddenAssets_];
    v105 = [objc_opt_self() fetchAssetsInAssetCollection:v106 options:v28];
    v39 = [v105 count];
    if ((v39 & 0x8000000000000000) != 0)
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    if (v39)
    {
      v101 = v28;
      v102 = v16;
      v40 = 0;
      v104 = v39;
      do
      {
        v41 = [v105 objectAtIndexedSubscript_];
        v12 = v106;
        v42 = sub_1C746AE84(v12, &selRef_localizedTitle);
        v44 = v43;
        v45 = sub_1C746AE84(v12, &selRef_localizedSubtitle);
        v47 = v46;
        v48 = v41;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C6FB4EBC(0);
          v17 = v54;
        }

        v49 = v17;
        v50 = v17[2];
        v51 = v49;
        v52 = v49[3];
        if (v50 >= v52 >> 1)
        {
          sub_1C6FB4EBC(v52 > 1);
          v51 = v55;
        }

        ++v40;

        v51[2] = v50 + 1;
        v53 = &v51[6 * v50];
        v17 = v51;
        *(v53 + 32) = 2;
        v53[5] = v48;
        v53[6] = v42;
        v53[7] = v44;
        v53[8] = v45;
        v53[9] = v47;
      }

      while (v104 != v40);

      v106 = v105;
      v11 = v100;
      v13 = v97;
      v15 = v96;
      v16 = v102;
      v18 = &selRef_clsSceneClassifications;
    }

    else
    {

      v106 = v105;
      v11 = v100;
    }

    goto LABEL_19;
  }

LABEL_62:
  __break(1u);
  return result;
}

unint64_t sub_1C746AD34()
{
  result = qword_1EC21C1F0;
  if (!qword_1EC21C1F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DailyPhotosFaceCuration.DailyPhotosFace.Source, &type metadata for DailyPhotosFaceCuration.DailyPhotosFace.Source, v0, v1);
    atomic_store(result, &qword_1EC21C1F0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DailyPhotosFaceCuration.DailyPhotosFace.Source(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C746AE84(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1C755068C();

  return v4;
}

uint64_t PromptSuggestionSearchDataSource.__allocating_init(photoLibrary:)(uint64_t a1)
{
  v2 = swift_allocObject();
  PromptSuggestionSearchDataSource.init(photoLibrary:)(a1);
  return v2;
}

uint64_t PromptSuggestionSearchDataSource.init(photoLibrary:)(uint64_t a1)
{
  v3 = sub_1C754FF1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6F65BE8(0, &qword_1EDD0FA60, 0x1E69E9BF8);
  v7 = sub_1C755146C();
  *(v1 + 16) = v7;
  *(v1 + OBJC_IVAR____TtC18PhotosIntelligence32PromptSuggestionSearchDataSource_photoLibrary) = a1;
  v8 = v7;
  sub_1C754FF2C();
  (*(v4 + 32))(v1 + OBJC_IVAR____TtC18PhotosIntelligence32PromptSuggestionSearchDataSource_logger, v6, v3);
  return v1;
}

uint64_t PromptSuggestionSearchDataSource.fetchSuggestionPrompts(maxSuggestionResults:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C746B098, 0, 0);
}

uint64_t sub_1C746B098()
{
  v1 = *(v0[4] + 16);
  type metadata accessor for PerformanceMeasure(0);
  swift_allocObject();
  v2 = v1;
  v3 = PerformanceMeasure.init(name:log:)();
  v4 = OBJC_IVAR____TtC18PhotosIntelligence32PromptSuggestionSearchDataSource_logger;
  v0[5] = v3;
  v0[6] = v4;
  v5 = sub_1C754FEEC();
  v6 = sub_1C75511BC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[3];
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = v7;
    _os_log_impl(&dword_1C6F5C000, v5, v6, "Requesting search suggestions with limit %ld", v8, 0xCu);
    MEMORY[0x1CCA5F8E0](v8, -1, -1);
  }

  v10 = v0[3];
  v9 = v0[4];

  v11 = swift_task_alloc();
  v0[7] = v11;
  *(v11 + 16) = v9;
  *(v11 + 24) = v10;
  v12 = swift_task_alloc();
  v0[8] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215050, &unk_1C755EAB0);
  *v12 = v0;
  v12[1] = sub_1C746B268;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD00000000000002DLL, 0x80000001C75B1780, sub_1C746B728, v11, v13);
}

uint64_t sub_1C746B268()
{
  OUTLINED_FUNCTION_42();
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v2 = v5;
  *(v5 + 72) = v0;

  if (v0)
  {
    v3 = sub_1C746B49C;
  }

  else
  {

    v3 = sub_1C746B378;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C746B378()
{
  v1 = *(v0 + 16);
  sub_1C75504FC();
  v2 = sub_1C754FEEC();
  v3 = sub_1C75511BC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = sub_1C6FB6304();

    _os_log_impl(&dword_1C6F5C000, v2, v3, "Received %ld fallback prompts", v4, 0xCu);
    MEMORY[0x1CCA5F8E0](v4, -1, -1);
  }

  else
  {
  }

  sub_1C6F85170();

  v5 = *(v0 + 8);

  return v5(v1);
}

uint64_t sub_1C746B49C()
{
  OUTLINED_FUNCTION_42();

  sub_1C6F85170();

  v1 = *(v0 + 8);

  return v1();
}

void sub_1C746B50C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C1F8, &qword_1C758D408);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = objc_opt_self();
  v11 = *(a2 + OBJC_IVAR____TtC18PhotosIntelligence32PromptSuggestionSearchDataSource_photoLibrary);
  v12 = [objc_opt_self() promptValidationAssetCountThreshold];
  (*(v6 + 16))(v9, a1, v5);
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  (*(v6 + 32))(v14 + v13, v9, v5);
  *(v14 + ((v7 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  aBlock[4] = sub_1C746BF04;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C746BAB0;
  aBlock[3] = &block_descriptor_43;
  v15 = _Block_copy(aBlock);

  [v10 initialSearchQuerySuggestionsForPhotoLibrary:v11 suggestionLimit:v17 minimumResultCountPerSuggestion:v12 suggestionsHandler:v15];
  _Block_release(v15);
}

uint64_t sub_1C746B730(uint64_t a1, id a2)
{
  if (a2)
  {
    v34 = a2;
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C1F8, &qword_1C758D408);
    return sub_1C7550C9C();
  }

  sub_1C75504FC();
  v5 = sub_1C754FEEC();
  v6 = sub_1C75511BC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = sub_1C6FB6304();

    _os_log_impl(&dword_1C6F5C000, v5, v6, "Received %ld search suggestions", v7, 0xCu);
    MEMORY[0x1CCA5F8E0](v7, -1, -1);
  }

  else
  {
  }

  v8 = MEMORY[0x1E69E7CC0];
  v34 = MEMORY[0x1E69E7CC0];
  result = sub_1C6FB6304();
  if (!result)
  {
    goto LABEL_20;
  }

  v9 = result;
  if (result >= 1)
  {
    v10 = 0;
    v11 = a1 & 0xC000000000000001;
    do
    {
      if (v11)
      {
        v12 = MEMORY[0x1CCA5DDD0](v10, a1);
      }

      else
      {
        v12 = *(a1 + 8 * v10 + 32);
      }

      v13 = v12;
      v14 = [v12 queryText];
      if (v14)
      {
        v15 = v14;
        MEMORY[0x1CCA5D040]();
        if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C7550B9C();
        }

        sub_1C7550BEC();

        v8 = v34;
      }

      else
      {
        v16 = v13;
        v17 = sub_1C754FEEC();
        v18 = sub_1C75511BC();

        if (os_log_type_enabled(v17, v18))
        {
          v32 = v8;
          v19 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          v33 = v30;
          *v19 = 136380675;
          v20 = [v16 description];
          v31 = v16;
          v21 = v11;
          v22 = v9;
          v23 = a1;
          v24 = sub_1C755068C();
          v26 = v25;

          v27 = v24;
          a1 = v23;
          v9 = v22;
          v11 = v21;
          v28 = sub_1C6F765A4(v27, v26, &v33);

          *(v19 + 4) = v28;
          _os_log_impl(&dword_1C6F5C000, v17, v18, "Empty search suggestion from query %{private}s", v19, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v30);
          MEMORY[0x1CCA5F8E0](v30, -1, -1);
          v29 = v19;
          v8 = v32;
          MEMORY[0x1CCA5F8E0](v29, -1, -1);
        }

        else
        {
        }
      }

      ++v10;
    }

    while (v9 != v10);
LABEL_20:
    v33 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C1F8, &qword_1C758D408);
    return sub_1C7550CAC();
  }

  __break(1u);
  return result;
}

void sub_1C746BAB0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  sub_1C6F65BE8(0, &unk_1EDD0CDA0, 0x1E6978A88);
  v5 = sub_1C7550B5C();

  v6 = a3;
  v4(v5, a3);
}

uint64_t PromptSuggestionSearchDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence32PromptSuggestionSearchDataSource_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t PromptSuggestionSearchDataSource.__deallocating_deinit()
{
  PromptSuggestionSearchDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C746BC24(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C6FF683C;

  return PromptSuggestionSearchDataSource.fetchSuggestionPrompts(maxSuggestionResults:)(a1);
}

uint64_t dispatch thunk of PromptSuggestionDataSource.fetchSuggestionPrompts(maxSuggestionResults:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C6FF6BA8;

  return v9(a1, a2, a3);
}

uint64_t type metadata accessor for PromptSuggestionSearchDataSource(uint64_t a1)
{
  result = qword_1EDD0D438;
  if (!qword_1EDD0D438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C746BE38(uint64_t a1)
{
  result = sub_1C754FF1C();
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

uint64_t sub_1C746BF04(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C1F8, &qword_1C758D408);

  return sub_1C746B730(a1, a2);
}

_BYTE *storeEnumTagSinglePayload for Spatial3DCuration(_BYTE *result, int a2, int a3)
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

uint64_t MessagesBackdrop.CurationContext.suggestionSubtype.getter()
{
  v1 = *v0;
  if (v1 == 1)
  {
    v2 = 1502;
  }

  else
  {
    v2 = 0;
  }

  v3 = v1 != 1;
  v4 = v1 == 0;
  if (*v0)
  {
    v5 = v2;
  }

  else
  {
    v5 = 1501;
  }

  v6 = !v4 && v3;
  return v5 | (v6 << 16);
}

uint64_t MessagesBackdrop.CurationContext.hashValue.getter()
{
  v1 = *v0;
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

unint64_t sub_1C746C138()
{
  result = qword_1EC21C200;
  if (!qword_1EC21C200)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MessagesBackdrop.CurationContext, &type metadata for MessagesBackdrop.CurationContext, v0, v1);
    atomic_store(result, &qword_1EC21C200);
  }

  return result;
}

_BYTE *_s15CurationContextOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C746C274(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1 >> 2;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1C746C2BC(uint64_t result, int a2, int a3)
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
      *result = 4 * -a2;
      *(result + 8) = 0;
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

uint64_t sub_1C746C320()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  v0[3] = v3;
  v0[4] = v4;
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1C746C3BC;

  return FreeformStoryChapterCompletionAsyncIterator.next()(v2);
}

uint64_t sub_1C746C3BC()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    if (*(v3 + 24))
    {
      swift_getObjectType();
      v7 = sub_1C7550C8C();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    return MEMORY[0x1EEE6DFA0](sub_1C746C518, v7, v9);
  }

  else
  {
    OUTLINED_FUNCTION_43();

    return v10();
  }
}

uint64_t sub_1C746C518()
{
  OUTLINED_FUNCTION_42();
  *(v0 + 16) = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
  swift_willThrowTypedImpl();
  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1C746C5A0()
{
  OUTLINED_FUNCTION_42();
  v0[5] = v1;
  v0[6] = v2;
  v3 = swift_task_alloc();
  v0[7] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DE8, &unk_1C755BF90);
  OUTLINED_FUNCTION_3_118();
  *v3 = v4;
  v3[1] = sub_1C746C648;

  return MEMORY[0x1EEE6DB98](v0 + 2);
}

uint64_t sub_1C746C648()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 64) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C746C744()
{
  OUTLINED_FUNCTION_42();
  if (*(v0 + 40))
  {
    swift_getObjectType();
    v1 = sub_1C7550C8C();
    v3 = v2;
  }

  else
  {
    v1 = 0;
    v3 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_1C746C7CC, v1, v3);
}

uint64_t sub_1C746C7CC()
{
  OUTLINED_FUNCTION_42();
  *(v0 + 32) = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
  swift_willThrowTypedImpl();
  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1C746C854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a4;
  v22 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216C60, &qword_1C7566F28);
  OUTLINED_FUNCTION_29();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - v10;
  v20 = sub_1C754EDEC();
  OUTLINED_FUNCTION_29();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C754E55C();
  v23 = a2;
  v24 = a3;
  sub_1C7099334();
  sub_1C754EDAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216C18, &qword_1C7566BF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216BF8, &qword_1C7566BD0);
  v17 = MEMORY[0x1E69E9290];
  sub_1C7099594(&qword_1EDD0CB18, &qword_1EC216BF8, &qword_1C7566BD0, MEMORY[0x1E69E9290]);
  sub_1C7099594(&qword_1EDD0CB20, &qword_1EC216C60, &qword_1C7566F28, v17);
  sub_1C754ED9C();
  (*(v8 + 8))(v11, v6);
  return (*(v13 + 8))(v16, v20);
}

uint64_t sub_1C746CA8C()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[4];
  switch(v3 >> 62)
  {
    case 1uLL:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();

      OUTLINED_FUNCTION_22_62();
      v13 = v14 + 21;
      goto LABEL_7;
    case 2uLL:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();

      OUTLINED_FUNCTION_22_62();
      v16 = v9;
      goto LABEL_4;
    case 3uLL:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();

      OUTLINED_FUNCTION_22_62();
      v13 = v12 | 8;
LABEL_7:
      v16 = v13;
      MEMORY[0x1CCA5CD70](v2, v1);
      v10 = 34;
      v11 = 0xE100000000000000;
      goto LABEL_8;
    default:
      v5 = v0[2];
      v4 = v0[3];
      v6 = (v3 & 0x3FFFFFFFFFFFFFFFLL);
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();
      MEMORY[0x1CCA5CD70](0xD00000000000002ALL, 0x80000001C75B18F0);
      MEMORY[0x1CCA5CD70](v5, v4);
      MEMORY[0x1CCA5CD70](2236474, 0xE300000000000000);
      v7 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
      v8 = sub_1C75506EC();
      MEMORY[0x1CCA5CD70](v8);

      MEMORY[0x1CCA5CD70](0xD000000000000012, 0x80000001C75B1920);
LABEL_4:
      v10 = v2;
      v11 = v1;
LABEL_8:
      MEMORY[0x1CCA5CD70](v10, v11);
      return v16;
  }
}

uint64_t sub_1C746CC7C()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC21C208);
  __swift_project_value_buffer(v0, qword_1EC21C208);
  return sub_1C754FEFC();
}

uint64_t static CompletionParser.parseCompletion<A>(from:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v94 = a4;
  v97 = a3;
  OUTLINED_FUNCTION_29();
  v93 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v92 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v96 = &v88 - v10;
  v99 = sub_1C75506DC();
  OUTLINED_FUNCTION_29();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DF8, &qword_1C755BFD0);
  v17 = OUTLINED_FUNCTION_76(v16);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v88 - v18;
  v102 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
  OUTLINED_FUNCTION_0_118();
  sub_1C7099594(v20, &unk_1EC217A00, &qword_1C755BD70, v21);
  v22 = sub_1C75505FC();
  v24 = v23;
  if (qword_1EC214188 != -1)
  {
    OUTLINED_FUNCTION_0_191();
    swift_once();
  }

  v25 = sub_1C754FF1C();
  __swift_project_value_buffer(v25, qword_1EC21C208);
  sub_1C75504FC();
  v26 = sub_1C754FEEC();
  v27 = sub_1C755117C();

  v28 = os_log_type_enabled(v26, v27);
  v98 = a2;
  v104 = v12;
  if (v28)
  {
    OUTLINED_FUNCTION_13_3();
    v29 = swift_slowAlloc();
    OUTLINED_FUNCTION_98();
    v30 = swift_slowAlloc();
    v102 = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_1C6F765A4(v22, v24, &v102);
    OUTLINED_FUNCTION_145();
    _os_log_impl(v31, v32, v33, v34, v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v102 = v22;
  v103 = v24;
  v100 = 123;
  v101 = 0xE100000000000000;
  sub_1C754E15C();
  OUTLINED_FUNCTION_52_5();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
  sub_1C6FB5E8C();
  OUTLINED_FUNCTION_30_49();
  v39 = sub_1C755157C();
  v41 = v40;
  sub_1C7030CDC(v19, &qword_1EC214DF8, &qword_1C755BFD0);
  if (v41 & 1) != 0 || (v102 = v22, v103 = v24, v100 = 125, v101 = 0xE100000000000000, OUTLINED_FUNCTION_52_5(), __swift_storeEnumTagSinglePayload(v42, v43, v44, v45), OUTLINED_FUNCTION_30_49(), sub_1C755157C(), v47 = v46, v49 = v48, result = sub_1C7030CDC(v19, &qword_1EC214DF8, &qword_1C755BFD0), (v49))
  {
    sub_1C7413570();
    OUTLINED_FUNCTION_9_10();
    v51 = swift_allocError();
    *v52 = v22;
    v52[1] = v24;
    return OUTLINED_FUNCTION_48_30(v51, v52);
  }

  if (v47 >> 14 < v39 >> 14)
  {
    __break(1u);
  }

  else
  {
    v53 = sub_1C755098C();
    v54 = MEMORY[0x1CCA5CC40](v53);
    v56 = v55;

    sub_1C75506CC();
    v57 = sub_1C755069C();
    v59 = v58;
    v61 = v104 + 8;
    v60 = *(v104 + 8);
    v60(v15, v99);
    if (v59 >> 60 == 15)
    {

      sub_1C7413570();
      OUTLINED_FUNCTION_9_10();
      v51 = swift_allocError();
      *v52 = v54;
      v52[1] = v56;
      return OUTLINED_FUNCTION_48_30(v51, v52);
    }

    v91 = v60;

    v90 = sub_1C754D73C();
    swift_allocObject();
    sub_1C754D72C();
    v62 = v96;
    v63 = v98;
    v64 = v95;
    sub_1C754D71C();
    if (!v64)
    {
      sub_1C70B5C10(v57, v59);

      return (*(v93 + 32))(v94, v62, v63);
    }

    v95 = v57;
    v96 = v59;

    v65 = sub_1C754DBDC();
    v66 = [v65 underlyingErrors];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
    v67 = sub_1C7550B5C();

    if (*(v67 + 16))
    {
      v104 = v61;
      v68 = *(v67 + 32);
      v69 = v68;

      v70 = sub_1C754DBDC();

      v71 = v70;
      if ([v71 code] == 3840)
      {
        v102 = v22;
        v103 = v24;
        sub_1C75504FC();
        MEMORY[0x1CCA5CD70](32093, 0xE200000000000000);
        v73 = v102;
        v72 = v103;
        sub_1C75506CC();
        v89 = sub_1C755069C();
        v74 = v15;
        v76 = v75;
        v91(v74, v99);
        if (v76 >> 60 == 15)
        {
          sub_1C7413570();
          OUTLINED_FUNCTION_9_10();
          v77 = swift_allocError();
          *v78 = v73;
          v78[1] = v72;
          OUTLINED_FUNCTION_48_30(v77, v78);
          v102 = v98;
          swift_getMetatypeMetadata();
          v84 = sub_1C755070C();
          v86 = v85;
          sub_1C7413570();
          OUTLINED_FUNCTION_9_10();
          swift_allocError();
          *v87 = v22;
          v87[1] = v24;
          v87[2] = v84;
          v87[3] = v86;
          v87[4] = v77;
          swift_willThrow();

          return sub_1C70B5C10(v95, v96);
        }

        swift_allocObject();
        sub_1C754D72C();
        v83 = v92;
        v63 = v98;
        sub_1C754D71C();

        sub_1C70B5C10(v95, v96);
        sub_1C70B5C10(v89, v76);

        v62 = v83;
        return (*(v93 + 32))(v94, v62, v63);
      }
    }

    else
    {

      v71 = 0;
    }

    v102 = v63;
    swift_getMetatypeMetadata();
    v79 = sub_1C755070C();
    v81 = v80;
    sub_1C7413570();
    OUTLINED_FUNCTION_9_10();
    swift_allocError();
    *v82 = v22;
    v82[1] = v24;
    v82[2] = v79;
    v82[3] = v81;
    v82[4] = v64;
    swift_willThrow();

    return sub_1C70B5C10(v95, v96);
  }

  return result;
}

uint64_t static CompletionParser.parseCompletions<A>(from:eventRecorder:completionIterator:)()
{
  OUTLINED_FUNCTION_42();
  v1[32] = v2;
  v1[33] = v0;
  v1[30] = v3;
  v1[31] = v4;
  v1[28] = v5;
  v1[29] = v6;
  v1[27] = v7;
  v1[34] = *(v4 - 8);
  v1[35] = OUTLINED_FUNCTION_81_0();
  v1[36] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DF8, &qword_1C755BFD0);
  OUTLINED_FUNCTION_76(v8);
  v1[37] = OUTLINED_FUNCTION_77();
  v9 = sub_1C754D84C();
  v1[38] = v9;
  OUTLINED_FUNCTION_18(v9);
  v1[39] = v10;
  v1[40] = OUTLINED_FUNCTION_77();
  v11 = type metadata accessor for LLMResponse.AsyncIterator(0);
  OUTLINED_FUNCTION_76(v11);
  v1[41] = OUTLINED_FUNCTION_77();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C220, &unk_1C758D550);
  OUTLINED_FUNCTION_76(v12);
  v1[42] = OUTLINED_FUNCTION_81_0();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v13 = sub_1C754DF6C();
  v1[47] = v13;
  OUTLINED_FUNCTION_18(v13);
  v1[48] = v14;
  v1[49] = OUTLINED_FUNCTION_81_0();
  v1[50] = swift_task_alloc();
  v15 = sub_1C754F38C();
  v1[51] = v15;
  OUTLINED_FUNCTION_18(v15);
  v1[52] = v16;
  v1[53] = OUTLINED_FUNCTION_81_0();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v17, v18, v19);
}

uint64_t sub_1C746D788()
{
  v1 = *(v0 + 408);
  v2 = MEMORY[0x1E69E7CC0];
  v3 = *(v0 + 224);
  *(v0 + 200) = MEMORY[0x1E69E7CC0];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  OUTLINED_FUNCTION_33_41();
  sub_1C754F1CC();
  sub_1C754DF5C();
  v4 = OUTLINED_FUNCTION_31_45();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v1);
  type metadata accessor for LLMResponse(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C08, "8");
  sub_1C7550DBC();
  swift_beginAccess();
  *(v0 + 448) = 0;
  *(v0 + 456) = v2;
  *(v0 + 480) = v2;
  *(v0 + 488) = v2;
  *(v0 + 464) = v2;
  *(v0 + 472) = v2;
  *(v0 + 528) = 0;
  v7 = swift_task_alloc();
  *(v0 + 496) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DE8, &unk_1C755BF90);
  OUTLINED_FUNCTION_3_118();
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_9_89();

  return MEMORY[0x1EEE6DB98](v9);
}

uint64_t sub_1C746D8E8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 504) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C746DA00(uint64_t a1)
{
  v203 = v1;
  v3 = *(v1 + 520);
  if (!v3)
  {
    v27 = *(v1 + 368);
    v28 = *(v1 + 336);
    sub_1C7471C8C(*(v1 + 328));
    sub_1C7471CE8(v27, v28);
    OUTLINED_FUNCTION_601(v28);
    if (v37)
    {
      sub_1C7030CDC(*(v1 + 336), &qword_1EC21C220, &unk_1C758D550);
      v29 = *(v1 + 448);
LABEL_68:
      if (qword_1EC214188 != -1)
      {
        OUTLINED_FUNCTION_0_191();
        swift_once();
      }

      v174 = sub_1C754FF1C();
      __swift_project_value_buffer(v174, qword_1EC21C208);
      v175 = sub_1C754FEEC();
      v176 = sub_1C755117C();
      if (os_log_type_enabled(v175, v176))
      {
        OUTLINED_FUNCTION_13_3();
        v177 = swift_slowAlloc();
        *v177 = 134217984;
        *(v177 + 4) = v29;
        _os_log_impl(&dword_1C6F5C000, v175, v176, "Total number of tokens: %ld", v177, 0xCu);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      v178 = *(v1 + 440);
      v179 = *(v1 + 416);
      v180 = *(v1 + 400);
      v181 = *(v1 + 408);
      v182 = *(v1 + 384);
      v184 = *(v1 + 368);
      v183 = *(v1 + 376);
      OUTLINED_FUNCTION_36_38();

      sub_1C7030CDC(v184, &qword_1EC21C220, &unk_1C758D550);
      (*(v182 + 8))(v180, v183);
      (*(v179 + 8))(v178, v181);

      OUTLINED_FUNCTION_43();
      goto LABEL_73;
    }

    v44 = *(v1 + 480);
    v45 = *(v1 + 448);
    (*(*(v1 + 416) + 32))(*(v1 + 424), *(v1 + 336), *(v1 + 408));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A0, &unk_1C755BE10);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1C755BAB0;
    *(v46 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    *(v46 + 32) = v44;
    sub_1C75504FC();
    sub_1C7551F0C();

    v47 = *(v44 + 16);
    v48 = __OFADD__(v45, v47);
    v49 = v45 + v47;
    if (v48)
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_20_18(v1 + 200, v1 + 40);
      sub_1C6FB0600();
      v50 = *(*(v1 + 200) + 16);
      sub_1C6FB0EFC();
      v2 = *(v1 + 200);
      *(v2 + 16) = v50 + 1;
      v51 = v2 + 16 * v50;
      *(v51 + 32) = 125;
      *(v51 + 40) = 0xE100000000000000;
      *(v1 + 200) = v2;
      swift_endAccess();
      if (qword_1EC214188 == -1)
      {
LABEL_26:
        v52 = sub_1C754FF1C();
        __swift_project_value_buffer(v52, qword_1EC21C208);
        v53 = sub_1C754FEEC();
        v54 = sub_1C755117C();
        v200 = v49;
        if (OUTLINED_FUNCTION_128(v54))
        {
          v55 = OUTLINED_FUNCTION_23_1();
          OUTLINED_FUNCTION_98();
          v56 = swift_slowAlloc();
          v202[0] = v56;
          *v55 = 134218243;
          OUTLINED_FUNCTION_28_40(*(v2 + 16) - 1);
          v57 = sub_1C75504FC();
          MEMORY[0x1CCA5D090](v57, MEMORY[0x1E69E6158]);
          OUTLINED_FUNCTION_59();

          v58 = OUTLINED_FUNCTION_98_1();
          v61 = sub_1C6F765A4(v58, v59, v60);

          *(v55 + 14) = v61;
          _os_log_impl(&dword_1C6F5C000, v53, v54, "Making completion (%ld tokens): %{sensitive}s", v55, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v56);
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
        }

        v62 = *(v1 + 504);
        v63 = *(v1 + 280);
        v65 = *(v1 + 248);
        v64 = *(v1 + 256);
        __swift_project_boxed_opaque_existential_1(*(v1 + 224), *(*(v1 + 224) + 24));
        OUTLINED_FUNCTION_17_18();
        sub_1C754F1AC();
        v66 = sub_1C75504FC();
        static CompletionParser.parseCompletion<A>(from:)(v66, v65, v64, v63);
        if (v62)
        {

          v67 = v62;
          v68 = sub_1C754FEEC();
          v69 = sub_1C755119C();

          if (os_log_type_enabled(v68, v69))
          {
            OUTLINED_FUNCTION_13_3();
            v70 = swift_slowAlloc();
            v71 = swift_slowAlloc();
            *v70 = 138412290;
            v72 = v62;
            v73 = _swift_stdlib_bridgeErrorToNSError();
            *(v70 + 4) = v73;
            *v71 = v73;
            OUTLINED_FUNCTION_145();
            _os_log_impl(v74, v75, v76, v77, v70, 0xCu);
            sub_1C7030CDC(v71, &qword_1EC215190, &qword_1C755C730);
            OUTLINED_FUNCTION_235();
            MEMORY[0x1CCA5F8E0]();
            OUTLINED_FUNCTION_235();
            MEMORY[0x1CCA5F8E0]();
          }

          else
          {
          }

          v172 = OUTLINED_FUNCTION_15_1();
          v173(v172);
        }

        else
        {
          v166 = *(v1 + 280);
          v167 = *(v1 + 232);

          v167(v166);
          v168 = OUTLINED_FUNCTION_15_1();
          v169(v168);
          v170 = OUTLINED_FUNCTION_94();
          v171(v170);
        }

        v29 = v200;
        goto LABEL_68;
      }
    }

    OUTLINED_FUNCTION_0_191();
    swift_once();
    goto LABEL_26;
  }

  if ((*(v1 + 528) & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1(*(v1 + 224), *(*(v1 + 224) + 24));
    OUTLINED_FUNCTION_17_18();
    sub_1C754F1AC();
  }

  *(v1 + 152) = *(v1 + 512);
  *(v1 + 160) = v3;
  sub_1C754D7FC();
  sub_1C6FB5E8C();
  v4 = sub_1C755154C();
  v6 = v5;
  v7 = OUTLINED_FUNCTION_98_1();
  v8(v7);
  if (sub_1C755092C())
  {
    v9 = *(v1 + 464);

    if (*(v9 + 16))
    {
      if (qword_1EC214188 != -1)
      {
        OUTLINED_FUNCTION_0_191();
        swift_once();
      }

      v10 = sub_1C754FF1C();
      __swift_project_value_buffer(v10, qword_1EC21C208);
      v11 = sub_1C754FEEC();
      v12 = sub_1C755117C();
      if (OUTLINED_FUNCTION_128(v12))
      {
        v13 = *(v1 + 464);
        v14 = OUTLINED_FUNCTION_23_1();
        OUTLINED_FUNCTION_98();
        v15 = swift_slowAlloc();
        v202[0] = v15;
        *v14 = 134218243;
        OUTLINED_FUNCTION_28_40(*(v13 + 16));
        v16 = sub_1C75504FC();
        MEMORY[0x1CCA5D090](v16, MEMORY[0x1E69E6158]);
        OUTLINED_FUNCTION_59();

        v17 = OUTLINED_FUNCTION_98_1();
        v20 = sub_1C6F765A4(v17, v18, v19);

        *(v14 + 14) = v20;
        OUTLINED_FUNCTION_145();
        _os_log_impl(v21, v22, v23, v24, v14, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v15);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();

        v25 = *(v1 + 456);
        v26 = v25;
LABEL_44:
        v106 = *(v1 + 360);
        sub_1C7471CE8(*(v1 + 368), v106);
        OUTLINED_FUNCTION_601(v106);
        if (!v37)
        {
          sub_1C7030CDC(*(v1 + 360), &qword_1EC21C220, &unk_1C758D550);
          v117 = v25;
LABEL_57:
          *(v1 + 480) = v26;
          *(v1 + 488) = v117;
          *(v1 + 472) = v25;
          *(v1 + 528) = 1;
          v122 = swift_task_alloc();
          *(v1 + 496) = v122;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DE8, &unk_1C755BF90);
          OUTLINED_FUNCTION_3_118();
          *v122 = v123;
          v124 = OUTLINED_FUNCTION_9_89();

          return MEMORY[0x1EEE6DB98](v124);
        }

        v107 = *(v1 + 400);
        v108 = *(v1 + 408);
        v110 = *(v1 + 384);
        v109 = *(v1 + 392);
        v111 = *(v1 + 368);
        v112 = *(v1 + 376);
        v113 = *(v1 + 352);
        v114 = *(v1 + 224);
        sub_1C7030CDC(*(v1 + 360), &qword_1EC21C220, &unk_1C758D550);
        sub_1C754DF5C();
        (*(v110 + 8))(v107, v112);
        (*(v110 + 32))(v107, v109, v112);
        __swift_project_boxed_opaque_existential_1(v114, v114[3]);
        OUTLINED_FUNCTION_19_75("CompletionParser.receiveCompletion");
        sub_1C7030CDC(v111, &qword_1EC21C220, &unk_1C758D550);
        __swift_storeEnumTagSinglePayload(v113, 0, 1, v108);
        sub_1C7471D58(v113, v111);
        v26 = &unk_1F46AAB68;
        *(v1 + 200) = &unk_1F46AAB68;

        goto LABEL_47;
      }
    }

    v26 = *(v1 + 480);
    v25 = *(v1 + 464);
    goto LABEL_44;
  }

  v30 = *(v1 + 296);
  *(v1 + 168) = v4;
  *(v1 + 176) = v6;
  *(v1 + 184) = 125;
  *(v1 + 192) = 0xE100000000000000;
  sub_1C754E15C();
  v31 = OUTLINED_FUNCTION_31_45();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  OUTLINED_FUNCTION_30_49();
  sub_1C755157C();
  v36 = v35;
  sub_1C7030CDC(v30, &qword_1EC214DF8, &qword_1C755BFD0);
  if (v36)
  {
    v37 = v4 == 23901 && v6 == 0xE200000000000000;
    if (v37)
    {
    }

    else
    {
      v38 = sub_1C7551DBC();

      if ((v38 & 1) == 0)
      {
        if (!*(*(v1 + 472) + 16))
        {

          v26 = *(v1 + 480);
          v117 = *(v1 + 488);
          v116 = *(v1 + 464);
          v25 = *(v1 + 472);
          v115 = *(v1 + 456);
          goto LABEL_56;
        }

        OUTLINED_FUNCTION_20_18(v1 + 200, v1 + 64);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = *(v1 + 472);
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_21;
        }

        goto LABEL_82;
      }
    }

    OUTLINED_FUNCTION_20_18(v1 + 200, v1 + 88);
    v118 = swift_isUniquelyReferenced_nonNull_native();
    v25 = *(v1 + 472);
    if ((v118 & 1) == 0)
    {
      OUTLINED_FUNCTION_52_5();
      sub_1C6FB1814();
      v25 = v194;
    }

    v120 = v25[2];
    v119 = v25[3];
    if (v120 >= v119 >> 1)
    {
      OUTLINED_FUNCTION_15_2(v119);
      sub_1C6FB1814();
      v25 = v195;
    }

    v25[2] = v120 + 1;
    v121 = &v25[2 * v120];
    v121[4] = 93;
    v121[5] = 0xE100000000000000;
    *(v1 + 200) = v25;
    goto LABEL_54;
  }

  v78 = sub_1C755098C();
  v80 = v79;
  v82 = v81;
  v84 = v83;

  v85 = MEMORY[0x1CCA5CC40](v78, v80, v82, v84);
  v87 = v86;

  OUTLINED_FUNCTION_20_18(v1 + 200, v1 + 112);
  v88 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *(v1 + 488);
  if ((v88 & 1) == 0)
  {
    OUTLINED_FUNCTION_52_5();
    sub_1C6FB1814();
    v25 = v192;
  }

  v89 = v25[2];
  if (v89 >= v25[3] >> 1)
  {
    OUTLINED_FUNCTION_52_5();
    sub_1C6FB1814();
    v25 = v193;
  }

  v25[2] = v89 + 1;
  v90 = &v25[2 * v89];
  v90[4] = v85;
  v90[5] = v87;
  *(v1 + 200) = v25;
  swift_endAccess();
  if (qword_1EC214188 != -1)
  {
    OUTLINED_FUNCTION_0_191();
    swift_once();
  }

  v91 = sub_1C754FF1C();
  __swift_project_value_buffer(v91, qword_1EC21C208);
  v92 = sub_1C754FEEC();
  v93 = sub_1C755117C();
  if (OUTLINED_FUNCTION_128(v93))
  {
    v94 = OUTLINED_FUNCTION_23_1();
    OUTLINED_FUNCTION_98();
    v95 = swift_slowAlloc();
    v202[0] = v95;
    v96 = OUTLINED_FUNCTION_34_43(3.8521e-34);
    v97 = MEMORY[0x1CCA5D090](v96, MEMORY[0x1E69E6158]);
    v99 = v98;

    v100 = sub_1C6F765A4(v97, v99, v202);

    *(v94 + 14) = v100;
    _os_log_impl(&dword_1C6F5C000, v92, v93, "Making completion (%ld tokens): %{sensitive}s", v94, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v95);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0](v101, v102);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0](v103, v104);
  }

  v105 = *(v1 + 344);
  sub_1C7471CE8(*(v1 + 368), v105);
  OUTLINED_FUNCTION_601(v105);
  if (v37)
  {
    sub_1C7030CDC(*(v1 + 344), &qword_1EC21C220, &unk_1C758D550);
LABEL_55:
    v26 = v25;
    v117 = v25;
    v115 = v25;
    v116 = v25;
    goto LABEL_56;
  }

  v125 = *(v1 + 408);
  v126 = *(v1 + 368);
  v127 = *(v1 + 224);
  (*(*(v1 + 416) + 32))(*(v1 + 432), *(v1 + 344), v125);
  __swift_project_boxed_opaque_existential_1(v127, v127[3]);
  OUTLINED_FUNCTION_17_18();
  sub_1C754F1AC();
  sub_1C7030CDC(v126, &qword_1EC21C220, &unk_1C758D550);
  v128 = OUTLINED_FUNCTION_31_45();
  __swift_storeEnumTagSinglePayload(v128, v129, v130, v125);
  sub_1C754DF1C();
  v132 = v131;
  v133 = sub_1C754FEEC();
  v134 = sub_1C755117C();
  if (OUTLINED_FUNCTION_128(v134))
  {
    v136 = -v132;
    OUTLINED_FUNCTION_98();
    v137 = swift_slowAlloc();
    v202[0] = swift_slowAlloc();
    *v137 = 136315650;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
    v138 = swift_allocObject();
    *(v138 + 16) = xmmword_1C755BAB0;
    v139 = MEMORY[0x1E69E6438];
    *(v138 + 56) = MEMORY[0x1E69E63B0];
    *(v138 + 64) = v139;
    *(v138 + 32) = v136;
    v140 = sub_1C75506BC();
    v142 = sub_1C6F765A4(v140, v141, v202);

    *(v137 + 4) = v142;
    *(v137 + 12) = 2048;
    *(v137 + 14) = v25[2];
    *(v137 + 22) = 2080;
    v143 = swift_allocObject();
    *(v143 + 16) = xmmword_1C755BAB0;
    v144 = (v25[2] - 1) / v136;
    *(v143 + 56) = MEMORY[0x1E69E63B0];
    *(v143 + 64) = v139;
    *(v143 + 32) = v144;
    v145 = sub_1C75506BC();
    v147 = sub_1C6F765A4(v145, v146, v202);

    *(v137 + 24) = v147;
    _os_log_impl(&dword_1C6F5C000, v133, v134, "Receiving completion took %s seconds for %ld tokens, %s", v137, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0](v148, v149);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0](v150, v151);
  }

  v152 = *(v1 + 504);
  v153 = *(v1 + 288);
  v155 = *(v1 + 248);
  v154 = *(v1 + 256);
  v156 = sub_1C75504FC();
  static CompletionParser.parseCompletion<A>(from:)(v156, v155, v154, v153);
  if (!v152)
  {
    v185 = *(v1 + 448);
    v3 = *(v1 + 288);
    v186 = *(v1 + 232);

    v186(v3);
    v187 = v25[2];
    v188 = v185 + v187;
    if (!__OFADD__(v185, v187))
    {
      v189 = *(v1 + 432);
      v190 = *(v1 + 408);
      v191 = *(v1 + 416);
      (*(*(v1 + 272) + 8))(*(v1 + 288), *(v1 + 248));
      (*(v191 + 8))(v189, v190);
      v26 = MEMORY[0x1E69E7CC0];
      *(v1 + 200) = MEMORY[0x1E69E7CC0];

      *(v1 + 448) = v188;
LABEL_47:
      v25 = v26;
      v117 = v26;
      v115 = v26;
      v116 = v26;
LABEL_56:
      *(v1 + 456) = v115;
      *(v1 + 464) = v116;
      goto LABEL_57;
    }

    __break(1u);
LABEL_82:
    OUTLINED_FUNCTION_52_5();
    sub_1C6FB1814();
    v25 = v196;
LABEL_21:
    v41 = v25[2];
    v40 = v25[3];
    if (v41 >= v40 >> 1)
    {
      OUTLINED_FUNCTION_15_2(v40);
      sub_1C6FB1814();
      v25 = v197;
    }

    v42 = *(v1 + 512);
    v25[2] = v41 + 1;
    v43 = &v25[2 * v41];
    v43[4] = v42;
    v43[5] = v3;
    *(v1 + 200) = v25;
LABEL_54:
    swift_endAccess();
    goto LABEL_55;
  }

  v201 = *(v1 + 440);
  v158 = *(v1 + 408);
  v157 = *(v1 + 416);
  v199 = *(v1 + 400);
  v160 = *(v1 + 376);
  v159 = *(v1 + 384);
  v161 = *(v1 + 368);
  v162 = *(v1 + 328);

  v163 = *(v157 + 8);
  v164 = OUTLINED_FUNCTION_15_1();
  v163(v164);
  sub_1C7471C8C(v162);
  sub_1C7030CDC(v161, &qword_1EC21C220, &unk_1C758D550);
  (*(v159 + 8))(v199, v160);
  (v163)(v201, v158);

  OUTLINED_FUNCTION_36_38();

  OUTLINED_FUNCTION_43();
LABEL_73:

  return v165();
}

uint64_t sub_1C746EBC8()
{
  OUTLINED_FUNCTION_42();
  *(v0 + 208) = *(v0 + 504);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
  swift_willThrowTypedImpl();
  v1 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C746EC50()
{
  v1 = v0[55];
  v2 = v0[51];
  v3 = v0[52];
  v4 = v0[46];
  sub_1C7471C8C(v0[41]);
  sub_1C7030CDC(v4, &qword_1EC21C220, &unk_1C758D550);
  v5 = OUTLINED_FUNCTION_15_1();
  v6(v5);
  (*(v3 + 8))(v1, v2);

  OUTLINED_FUNCTION_43();

  return v7();
}

uint64_t static CompletionParser.parseCompletion<A>(from:eventRecorder:)()
{
  OUTLINED_FUNCTION_42();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v1[5] = v5;
  v1[6] = v6;
  v7 = type metadata accessor for LLMResponse.AsyncIterator(0);
  OUTLINED_FUNCTION_76(v7);
  v1[11] = OUTLINED_FUNCTION_77();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C220, &unk_1C758D550);
  OUTLINED_FUNCTION_76(v8);
  v1[12] = OUTLINED_FUNCTION_81_0();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v9 = sub_1C754F38C();
  v1[15] = v9;
  OUTLINED_FUNCTION_18(v9);
  v1[16] = v10;
  v1[17] = OUTLINED_FUNCTION_81_0();
  v1[18] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C746EEF8()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 56), *(*(v0 + 56) + 24));
  OUTLINED_FUNCTION_33_41();
  sub_1C754F1CC();
  OUTLINED_FUNCTION_52_5();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  type metadata accessor for LLMResponse(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C08, "8");
  sub_1C7550DBC();
  *(v0 + 152) = MEMORY[0x1E69E7CC0];
  *(v0 + 192) = 0;
  v5 = swift_task_alloc();
  *(v0 + 160) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DE8, &unk_1C755BF90);
  OUTLINED_FUNCTION_3_118();
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_10_82();

  return MEMORY[0x1EEE6DB98](v7);
}

uint64_t sub_1C746F020()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C746F138()
{
  v1 = *(v0 + 184);
  if (v1)
  {
    if ((*(v0 + 192) & 1) == 0)
    {
      v2 = *(v0 + 112);
      v3 = *(v0 + 104);
      v4 = *(v0 + 56);
      __swift_project_boxed_opaque_existential_1(v4, v4[3]);
      OUTLINED_FUNCTION_17_18();
      sub_1C754F1AC();
      __swift_project_boxed_opaque_existential_1(v4, v4[3]);
      OUTLINED_FUNCTION_19_75("CompletionParser.receiveCompletion");
      sub_1C7030CDC(v2, &qword_1EC21C220, &unk_1C758D550);
      OUTLINED_FUNCTION_52_5();
      __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
      sub_1C7471D58(v3, v2);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v0 + 152);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_49_33(isUniquelyReferenced_nonNull_native, v10, v11, v12);
      v12 = v53;
    }

    v14 = *(v12 + 16);
    v13 = *(v12 + 24);
    if (v14 >= v13 >> 1)
    {
      OUTLINED_FUNCTION_15_2(v13);
      sub_1C6FB1814();
      v12 = v54;
    }

    v15 = *(v0 + 176);
    *(v12 + 16) = v14 + 1;
    v16 = v12 + 16 * v14;
    *(v16 + 32) = v15;
    *(v16 + 40) = v1;
    *(v0 + 152) = v12;
    *(v0 + 192) = 1;
    v17 = swift_task_alloc();
    *(v0 + 160) = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DE8, &unk_1C755BF90);
    OUTLINED_FUNCTION_3_118();
    *v17 = v18;
    v19 = OUTLINED_FUNCTION_10_82();

    return MEMORY[0x1EEE6DB98](v19);
  }

  else
  {
    sub_1C7471C8C(*(v0 + 88));
    if (qword_1EC214188 != -1)
    {
      OUTLINED_FUNCTION_0_191();
      swift_once();
    }

    v20 = sub_1C754FF1C();
    __swift_project_value_buffer(v20, qword_1EC21C208);
    v21 = sub_1C754FEEC();
    v22 = sub_1C755117C();
    if (OUTLINED_FUNCTION_128(v22))
    {
      v23 = *(v0 + 152);
      v24 = OUTLINED_FUNCTION_23_1();
      OUTLINED_FUNCTION_98();
      v56 = swift_slowAlloc();
      *v24 = 134218243;
      OUTLINED_FUNCTION_28_40(*(v23 + 16));
      v25 = sub_1C75504FC();
      MEMORY[0x1CCA5D090](v25, MEMORY[0x1E69E6158]);
      OUTLINED_FUNCTION_59();

      v26 = OUTLINED_FUNCTION_98_1();
      v29 = sub_1C6F765A4(v26, v27, v28);

      *(v24 + 14) = v29;
      OUTLINED_FUNCTION_145();
      _os_log_impl(v30, v31, v32, v33, v24, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v56);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v34 = *(v0 + 96);
    sub_1C7471CE8(*(v0 + 112), v34);
    OUTLINED_FUNCTION_601(v34);
    if (v35)
    {
      sub_1C7030CDC(*(v0 + 96), &qword_1EC21C220, &unk_1C758D550);
    }

    else
    {
      v36 = OUTLINED_FUNCTION_46_38();
      v37(v36);
      OUTLINED_FUNCTION_25_12();
      v38 = OUTLINED_FUNCTION_94();
      v39(v38);
    }

    v40 = *(v0 + 168);
    v41 = *(v0 + 64);
    v42 = *(v0 + 72);
    v43 = *(v0 + 40);
    v44 = sub_1C75504FC();
    static CompletionParser.parseCompletion<A>(from:)(v44, v41, v42, v43);
    if (v40)
    {

      v45 = *(v0 + 144);
      v46 = *(v0 + 128);
      v47 = *(v0 + 120);
      sub_1C7030CDC(*(v0 + 112), &qword_1EC21C220, &unk_1C758D550);
      (*(v46 + 8))(v45, v47);
    }

    else
    {
      v49 = *(v0 + 144);
      v50 = *(v0 + 120);
      v51 = *(v0 + 128);
      v52 = *(v0 + 112);

      sub_1C7030CDC(v52, &qword_1EC21C220, &unk_1C758D550);
      (*(v51 + 8))(v49, v50);
    }

    OUTLINED_FUNCTION_43();

    return v48();
  }
}

uint64_t sub_1C746F5DC()
{
  OUTLINED_FUNCTION_42();
  *(v0 + 32) = *(v0 + 168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
  swift_willThrowTypedImpl();
  v1 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C746F664()
{
  sub_1C7471C8C(v0[11]);
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[15];
  sub_1C7030CDC(v0[14], &qword_1EC21C220, &unk_1C758D550);
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t static CompletionParser.parseCompletions<A>(from:eventRecorder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return OUTLINED_FUNCTION_0_67(sub_1C746F788);
}

uint64_t sub_1C746F788()
{
  v4 = *(v0 + 40);
  *(v0 + 16) = sub_1C7550BAC();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *(v1 + 16) = v4;
  *(v1 + 32) = v0 + 16;
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_1C746F87C;

  return static CompletionParser.parseCompletions<A>(from:eventRecorder:completionIterator:)();
}

uint64_t sub_1C746F87C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C746F99C()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C746FA00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  sub_1C7550C3C();
  return sub_1C7550C0C();
}

uint64_t static CompletionParser.parseListOfStrings(from:eventRecorder:)()
{
  OUTLINED_FUNCTION_42();
  v0[16] = v1;
  v0[17] = v2;
  v3 = sub_1C754D84C();
  v0[18] = v3;
  OUTLINED_FUNCTION_18(v3);
  v0[19] = v4;
  v0[20] = OUTLINED_FUNCTION_81_0();
  v0[21] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216BE8, &unk_1C7566BC0);
  OUTLINED_FUNCTION_76(v5);
  v0[22] = OUTLINED_FUNCTION_77();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216BF0, &qword_1C758D580);
  v0[23] = v6;
  OUTLINED_FUNCTION_18(v6);
  v0[24] = v7;
  v0[25] = OUTLINED_FUNCTION_77();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216BF8, &qword_1C7566BD0);
  v0[26] = v8;
  OUTLINED_FUNCTION_18(v8);
  v0[27] = v9;
  v0[28] = OUTLINED_FUNCTION_77();
  v10 = type metadata accessor for LLMResponse.AsyncIterator(0);
  OUTLINED_FUNCTION_76(v10);
  v0[29] = OUTLINED_FUNCTION_77();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C220, &unk_1C758D550);
  OUTLINED_FUNCTION_76(v11);
  v0[30] = OUTLINED_FUNCTION_81_0();
  v0[31] = swift_task_alloc();
  v0[32] = swift_task_alloc();
  v12 = sub_1C754F38C();
  v0[33] = v12;
  OUTLINED_FUNCTION_18(v12);
  v0[34] = v13;
  v0[35] = OUTLINED_FUNCTION_81_0();
  v0[36] = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1C746FD14()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 136), *(*(v0 + 136) + 24));
  OUTLINED_FUNCTION_33_41();
  sub_1C754F1CC();
  OUTLINED_FUNCTION_52_5();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  type metadata accessor for LLMResponse(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C08, "8");
  sub_1C7550DBC();
  *(v0 + 296) = MEMORY[0x1E69E7CC0];
  *(v0 + 336) = 0;
  v5 = swift_task_alloc();
  *(v0 + 304) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DE8, &unk_1C755BF90);
  OUTLINED_FUNCTION_3_118();
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_8_91();

  return MEMORY[0x1EEE6DB98](v7);
}

uint64_t sub_1C746FE3C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 312) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C746FF54()
{
  v139 = v0;
  v1 = *(v0 + 328);
  if (!v1)
  {
    sub_1C7471C8C(*(v0 + 232));
    if (qword_1EC214188 != -1)
    {
      OUTLINED_FUNCTION_0_191();
      swift_once();
    }

    v21 = sub_1C754FF1C();
    __swift_project_value_buffer(v21, qword_1EC21C208);
    v22 = sub_1C754FEEC();
    v23 = sub_1C755117C();
    if (OUTLINED_FUNCTION_128(v23))
    {
      v24 = OUTLINED_FUNCTION_23_1();
      OUTLINED_FUNCTION_98();
      v25 = swift_slowAlloc();
      v138[0] = v25;
      v26 = OUTLINED_FUNCTION_34_43(3.8521e-34);
      MEMORY[0x1CCA5D090](v26, MEMORY[0x1E69E6158]);
      OUTLINED_FUNCTION_59();

      v27 = OUTLINED_FUNCTION_98_1();
      v30 = sub_1C6F765A4(v27, v28, v29);

      *(v24 + 14) = v30;
      _os_log_impl(&dword_1C6F5C000, v22, v23, "Received (%ld tokens): %{sensitive}s", v24, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v25);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v31 = *(v0 + 240);
    sub_1C7471CE8(*(v0 + 256), v31);
    OUTLINED_FUNCTION_601(v31);
    if (v32)
    {
      sub_1C7030CDC(*(v0 + 240), &qword_1EC21C220, &unk_1C758D550);
    }

    else
    {
      v33 = OUTLINED_FUNCTION_46_38();
      v34(v33);
      OUTLINED_FUNCTION_25_12();
      v35 = OUTLINED_FUNCTION_94();
      v36(v35);
    }

    *(v0 + 120) = *(v0 + 296);
    sub_1C75504FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    OUTLINED_FUNCTION_0_118();
    sub_1C7099594(v37, &unk_1EC217A00, &qword_1C755BD70, v38);
    v39 = sub_1C75505FC();
    v41 = v40;

    sub_1C75504FC();
    v42 = sub_1C754FEEC();
    v43 = sub_1C755117C();

    if (os_log_type_enabled(v42, v43))
    {
      OUTLINED_FUNCTION_13_3();
      v44 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v45 = swift_slowAlloc();
      v138[0] = v45;
      *v44 = 136642819;
      *(v44 + 4) = sub_1C6F765A4(v39, v41, v138);
      OUTLINED_FUNCTION_113(&dword_1C6F5C000, v46, v47, "Parsing list of strings: %{sensitive}s");
      __swift_destroy_boxed_opaque_existential_1(v45);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v48 = *(v0 + 224);
    v50 = *(v0 + 176);
    v49 = *(v0 + 184);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216C18, &qword_1C7566BF0);
    sub_1C7099594(&qword_1EDD0CB18, &qword_1EC216BF8, &qword_1C7566BD0, MEMORY[0x1E69E9290]);
    sub_1C754EE4C();
    sub_1C74717B4(v48, v39, v41);
    if (__swift_getEnumTagSinglePayload(v50, 1, v49) == 1)
    {
      sub_1C7030CDC(*(v0 + 176), &qword_1EC216BE8, &unk_1C7566BC0);
      v52 = sub_1C754FEEC();
      v53 = sub_1C755119C();
      if (OUTLINED_FUNCTION_128(v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        OUTLINED_FUNCTION_145();
        _os_log_impl(v55, v56, v57, v58, v54, 2u);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      v60 = *(v0 + 216);
      v59 = *(v0 + 224);
      v61 = *(v0 + 208);

      sub_1C7413570();
      OUTLINED_FUNCTION_9_10();
      swift_allocError();
      *v62 = v39;
      v62[1] = v41;
      v62[2] = 0;
      v62[3] = 0;
      v62[4] = 0xC000000000000000;
      swift_willThrow();
      (*(v60 + 8))(v59, v61);
      OUTLINED_FUNCTION_43_38();
      sub_1C7030CDC(v51, &qword_1EC21C220, &unk_1C758D550);
      v52[1](v39, v60 + 8);

      OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_128_0();

      __asm { BRAA            X1, X16 }
    }

    v66 = *(v0 + 192);
    v65 = *(v0 + 200);
    v68 = *(v0 + 176);
    v67 = *(v0 + 184);

    (*(v66 + 32))(v65, v68, v67);
    swift_getKeyPath();
    sub_1C754EE7C();

    v69 = MEMORY[0x1CCA5CC40](*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
    v71 = v70;

    sub_1C75504FC();
    v72 = sub_1C754FEEC();
    LOBYTE(v66) = sub_1C755117C();

    if (os_log_type_enabled(v72, v66))
    {
      OUTLINED_FUNCTION_13_3();
      v73 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v74 = swift_slowAlloc();
      v138[0] = v74;
      *v73 = 136642819;
      *(v73 + 4) = sub_1C6F765A4(v69, v71, v138);
      OUTLINED_FUNCTION_113(&dword_1C6F5C000, v75, v76, "Regex match: %{sensitive}s");
      __swift_destroy_boxed_opaque_existential_1(v74);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v77 = *(v0 + 168);
    sub_1C754D7DC();
    sub_1C754D81C();
    v78 = sub_1C7471998(v69, v71, v77);
    v80 = v79;
    sub_1C75504FC();
    v81 = sub_1C754FEEC();
    v82 = sub_1C755117C();

    if (os_log_type_enabled(v81, v82))
    {
      OUTLINED_FUNCTION_13_3();
      v83 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v84 = swift_slowAlloc();
      v138[0] = v84;
      *v83 = 136642819;
      sub_1C75504FC();
      v85 = sub_1C6F765A4(v78, v80, v138);

      *(v83 + 4) = v85;
      OUTLINED_FUNCTION_113(&dword_1C6F5C000, v86, v87, "Trimmed match: %{sensitive}s");
      __swift_destroy_boxed_opaque_existential_1(v84);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    *(v0 + 64) = v78;
    *(v0 + 72) = v80;
    *(v0 + 80) = 44;
    *(v0 + 88) = 0xE100000000000000;
    sub_1C6FB5E8C();
    v92 = sub_1C755152C();
    v93 = *(v92 + 16);
    if (v93)
    {
      v94 = *(v0 + 152);
      v138[0] = MEMORY[0x1E69E7CC0];
      sub_1C6F7ED9C(0, v93, 0, v88, v89, v90, v91);
      v95 = v138[0];
      v96 = (v94 + 8);
      v97 = (v92 + 40);
      do
      {
        v98 = *(v0 + 160);
        v99 = *(v0 + 144);
        v100 = *v97;
        *(v0 + 96) = *(v97 - 1);
        *(v0 + 104) = v100;
        sub_1C75504FC();
        sub_1C754D7FC();
        v101 = sub_1C755154C();
        v103 = v102;
        (*v96)(v98, v99);

        v138[0] = v95;
        v109 = *(v95 + 16);
        v108 = *(v95 + 24);
        if (v109 >= v108 >> 1)
        {
          sub_1C6F7ED9C(v108 > 1, v109 + 1, 1, v104, v105, v106, v107);
          v95 = v138[0];
        }

        *(v95 + 16) = v109 + 1;
        v110 = v95 + 16 * v109;
        *(v110 + 32) = v101;
        *(v110 + 40) = v103;
        v97 += 2;
        --v93;
      }

      while (v93);
    }

    else
    {

      v95 = MEMORY[0x1E69E7CC0];
    }

    sub_1C75504FC();
    v111 = v95;
    v112 = sub_1C754FEEC();
    v113 = sub_1C755117C();

    v114 = os_log_type_enabled(v112, v113);
    v115 = *(v0 + 288);
    v117 = *(v0 + 264);
    v116 = *(v0 + 272);
    v118 = *(v0 + 256);
    v119 = *(v0 + 216);
    v137 = *(v0 + 224);
    v135 = *(v0 + 200);
    v136 = *(v0 + 208);
    v120 = *(v0 + 192);
    v134 = *(v0 + 184);
    if (v114)
    {
      OUTLINED_FUNCTION_13_3();
      v133 = v117;
      v121 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v132 = v115;
      v122 = swift_slowAlloc();
      v138[0] = v122;
      *v121 = 136642819;
      v123 = MEMORY[0x1CCA5D090](v111, MEMORY[0x1E69E6158]);
      v131 = v118;
      v125 = sub_1C6F765A4(v123, v124, v138);

      *(v121 + 4) = v125;
      _os_log_impl(&dword_1C6F5C000, v112, v113, "Result string array: %{sensitive}s", v121, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v122);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();

      (*(v120 + 8))(v135, v134);
      (*(v119 + 8))(v137, v136);
      sub_1C7030CDC(v131, &qword_1EC21C220, &unk_1C758D550);
      (*(v116 + 8))(v132, v133);
    }

    else
    {

      (*(v120 + 8))(v135, v134);
      (*(v119 + 8))(v137, v136);
      sub_1C7030CDC(v118, &qword_1EC21C220, &unk_1C758D550);
      (*(v116 + 8))(v115, v117);
    }

    (*(*(v0 + 152) + 8))(*(v0 + 168), *(v0 + 144));

    OUTLINED_FUNCTION_128_0();

    __asm { BRAA            X2, X16 }
  }

  if ((*(v0 + 336) & 1) == 0)
  {
    v2 = *(v0 + 256);
    v3 = *(v0 + 248);
    v4 = *(v0 + 136);
    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    OUTLINED_FUNCTION_17_18();
    sub_1C754F1AC();
    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    OUTLINED_FUNCTION_19_75("CompletionParser.receiveCompletion");
    sub_1C7030CDC(v2, &qword_1EC21C220, &unk_1C758D550);
    OUTLINED_FUNCTION_52_5();
    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
    sub_1C7471D58(v3, v2);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v0 + 296);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_49_33(isUniquelyReferenced_nonNull_native, v10, v11, v12);
    v12 = v128;
  }

  v14 = *(v12 + 16);
  v13 = *(v12 + 24);
  if (v14 >= v13 >> 1)
  {
    OUTLINED_FUNCTION_15_2(v13);
    sub_1C6FB1814();
    v12 = v129;
  }

  v15 = *(v0 + 320);
  *(v12 + 16) = v14 + 1;
  v16 = v12 + 16 * v14;
  *(v16 + 32) = v15;
  *(v16 + 40) = v1;
  *(v0 + 296) = v12;
  *(v0 + 336) = 1;
  v17 = swift_task_alloc();
  *(v0 + 304) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DE8, &unk_1C755BF90);
  OUTLINED_FUNCTION_3_118();
  *v17 = v18;
  OUTLINED_FUNCTION_8_91();
  OUTLINED_FUNCTION_128_0();

  return MEMORY[0x1EEE6DB98](v19);
}

uint64_t sub_1C7470BEC()
{
  OUTLINED_FUNCTION_42();
  *(v0 + 112) = *(v0 + 312);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
  swift_willThrowTypedImpl();
  v1 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C7470C74()
{
  sub_1C7471C8C(*(v1 + 232));
  OUTLINED_FUNCTION_43_38();
  sub_1C7030CDC(v4, &qword_1EC21C220, &unk_1C758D550);
  (*(v0 + 8))(v2, v3);

  OUTLINED_FUNCTION_43();

  return v5();
}

uint64_t sub_1C7470DA8@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216C60, &qword_1C7566F28);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v40 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216BF8, &qword_1C7566BD0);
  v41 = *(v7 - 8);
  v42 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  v45 = sub_1C754EDEC();
  v10 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216C58, &qword_1C7566F20);
  v46 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v33 = &v30 - v16;
  v49 = 91;
  v50 = 0xE100000000000000;
  v35 = sub_1C7099334();
  MEMORY[0x1CCA5AA40](v51, &v49, MEMORY[0x1E69E6158], v35);
  sub_1C754E55C();
  sub_1C74712E0(v6);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216C18, &qword_1C7566BF0);
  sub_1C7099594(&qword_1EDD0CB20, &qword_1EC216C60, &qword_1C7566F28, MEMORY[0x1E69E9290]);
  v31 = v9;
  v32 = v1;
  sub_1C754EDBC();
  v38 = *(v2 + 8);
  v39 = v2 + 8;
  v38(v6, v1);
  v18 = *(v10 + 8);
  v36 = v10 + 8;
  v37 = v18;
  v18(v12, v45);
  MEMORY[0x1CCA5AA90](v9, v17);
  v19 = sub_1C7099594(&qword_1EDD0CB50, &qword_1EC216C58, &qword_1C7566F20, MEMORY[0x1E69E8278]);
  v20 = v33;
  v21 = v44;
  MEMORY[0x1CCA5AA40](v14, v44, v19);
  v22 = *(v46 + 8);
  v46 += 8;
  v34 = v22;
  v22(v14, v21);
  v47 = 93;
  v48 = 0xE100000000000000;
  MEMORY[0x1CCA5AA40](&v49, &v47, MEMORY[0x1E69E6158], v35);
  v47 = v51[0];
  v48 = v51[1];
  sub_1C754E53C();

  sub_1C754E55C();
  v23 = v40;
  v24 = v32;
  sub_1C754EDAC();
  v25 = v31;
  v26 = v20;
  v27 = v44;
  sub_1C754ED9C();
  v28 = v38;
  v38(v23, v24);
  v37(v12, v45);
  sub_1C746C854(v25, v49, v50, v43);

  (*(v41 + 8))(v25, v42);
  v28(v6, v24);
  return v34(v26, v27);
}

uint64_t sub_1C74712E0@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v1 = sub_1C754E56C();
  v38 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216C60, &qword_1C7566F28);
  v8 = *(v7 - 8);
  v40 = v7;
  v41 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v36 = &v33 - v12;
  v39 = sub_1C754EDEC();
  v37 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v33 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216C68, &qword_1C7566F30);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v33 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216C80, &unk_1C7566F40);
  v35 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v34 = &v33 - v21;
  v22 = sub_1C754EE2C();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v22);
  sub_1C754E55C();
  sub_1C754EDFC();
  v23 = sub_1C709953C();
  MEMORY[0x1CCA5AA40](v3, v1, v23);
  v24 = *(v38 + 8);
  v24(v3, v1);
  sub_1C754E53C();
  v24(v6, v1);
  sub_1C7099594(&qword_1EDD0CB20, &qword_1EC216C60, &qword_1C7566F28, MEMORY[0x1E69E9290]);
  v25 = MEMORY[0x1E69E67B0];
  v26 = v36;
  v27 = v40;
  v28 = v33;
  sub_1C754EDCC();
  (*(v41 + 8))(v10, v27);
  (*(v37 + 8))(v28, v39);
  sub_1C7030CDC(v16, &qword_1EC216C68, &qword_1C7566F30);
  MEMORY[0x1CCA5AAA0](v26, v25);
  v29 = sub_1C7099594(&qword_1EDD0CB48, &qword_1EC216C80, &unk_1C7566F40, MEMORY[0x1E69E8290]);
  v30 = v34;
  MEMORY[0x1CCA5AA40](v19, v17, v29);
  v31 = *(v35 + 8);
  v31(v19, v17);
  sub_1C754E53C();
  return (v31)(v30, v17);
}

uint64_t sub_1C74717B4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216BF8, &qword_1C7566BD0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  sub_1C71CC484(sub_1C71CC480, 0, a2, a3);
  sub_1C7099594(&qword_1EDD0CB18, &qword_1EC216BF8, &qword_1C7566BD0, MEMORY[0x1E69E9290]);
  sub_1C754EE1C();
  sub_1C754EE6C();
  (*(v6 + 8))(v8, v5);
}

uint64_t sub_1C7471998(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v23 = a3;
  v6 = sub_1C754D84C();
  MEMORY[0x1EEE9AC00](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = 0;
  v26 = 0xE000000000000000;
  v10 = HIBYTE(a2) & 0xF;
  v27 = a1;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v22 = v10;
  if (v10)
  {
    v11 = 0;
    v21 = a2 & 0xFFFFFFFFFFFFFFLL;
    v19[1] = v3;
    v20 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v12 = (v7 + 16);
    v13 = (v7 + 8);
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        sub_1C75517FC();
        v16 = v15;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v24[0] = v27;
          v24[1] = v21;
          if (*(v24 + v11) < 0)
          {
            switch(__clz(*(v24 + v11) ^ 0xFF))
            {
              case 0x1Au:
LABEL_19:
                v16 = 2;
                break;
              case 0x1Bu:
LABEL_20:
                v16 = 3;
                break;
              case 0x1Cu:
LABEL_21:
                v16 = 4;
                break;
              default:
                goto LABEL_13;
            }

            goto LABEL_14;
          }
        }

        else
        {
          v14 = v20;
          if ((v27 & 0x1000000000000000) == 0)
          {
            v14 = sub_1C75518FC();
          }

          if (*(v14 + v11) < 0)
          {
            switch(__clz(*(v14 + v11) ^ 0xFF))
            {
              case 0x1Au:
                goto LABEL_19;
              case 0x1Bu:
                goto LABEL_20;
              case 0x1Cu:
                goto LABEL_21;
              default:
                break;
            }
          }
        }

LABEL_13:
        v16 = 1;
      }

LABEL_14:
      (*v12)(v9, v23, v6);
      v17 = sub_1C754D82C();
      (*v13)(v9, v6);
      if (v17)
      {
        sub_1C755078C();
      }

      v11 += v16;
      if (v11 >= v22)
      {

        return v25;
      }
    }
  }

  return 0;
}

uint64_t sub_1C7471C8C(uint64_t a1)
{
  v2 = type metadata accessor for LLMResponse.AsyncIterator(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C7471CE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C220, &unk_1C758D550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C7471D58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C220, &unk_1C758D550);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C7471E1C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7D && *(a1 + 40))
    {
      v2 = *a1 + 124;
    }

    else
    {
      v2 = (((*(a1 + 32) >> 57) >> 5) | (4 * ((*(a1 + 32) >> 57) & 0x18 | *(a1 + 32) & 7))) ^ 0x7F;
      if (v2 >= 0x7C)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1C7471E70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t TitlingAdapterPromptGenerator.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC18PhotosIntelligence29TitlingAdapterPromptGenerator_logger;
  if (qword_1EC214190 != -1)
  {
    OUTLINED_FUNCTION_0_192(&qword_1EC214190);
  }

  v2 = sub_1C754FF1C();
  __swift_project_value_buffer(v2, qword_1EC21C228);
  OUTLINED_FUNCTION_62_2();
  (*(v3 + 16))(v0 + v1);
  return v0;
}

uint64_t sub_1C7471FD8()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC21C228);
  __swift_project_value_buffer(v0, qword_1EC21C228);
  return sub_1C754FEFC();
}

uint64_t TitlingAdapterPromptGenerator.init()()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence29TitlingAdapterPromptGenerator_logger;
  if (qword_1EC214190 != -1)
  {
    OUTLINED_FUNCTION_0_192(&qword_1EC214190);
  }

  v2 = sub_1C754FF1C();
  __swift_project_value_buffer(v2, qword_1EC21C228);
  OUTLINED_FUNCTION_62_2();
  (*(v3 + 16))(v0 + v1);
  return v0;
}

uint64_t sub_1C74720EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a1 + 208);
  v11 = *(a1 + 296);
  v12 = [*(a1 + 8) string];
  v13 = sub_1C755068C();
  v15 = v14;

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    v17 = sub_1C7472568(v10, a2, v11, a3, a4, a5, a6, 0.5);
    v19 = sub_1C74722A8(v13, v15, v17, v18);
    if (!v25)
    {
      v6 = v19;
    }
  }

  else
  {

    v20 = sub_1C754FEEC();
    v6 = sub_1C75511AC();
    if (os_log_type_enabled(v20, v6))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1C6F5C000, v20, v6, "Empty user prompt! Unexpected at this point!", v21, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    sub_1C7472730();
    swift_allocError();
    swift_willThrow();
  }

  return v6;
}

uint64_t sub_1C74722A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1C754FEEC();
  v8 = sub_1C75511BC();
  if (os_log_type_enabled(v7, v8))
  {
    OUTLINED_FUNCTION_13_3();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v25 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1C6F765A4(0xD00000000000002BLL, 0x80000001C7594870, &v25);
    _os_log_impl(&dword_1C6F5C000, v7, v8, "Generate Prompt Bindings for Prompt Template V9: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v11 = sub_1C7473478();
  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216550, &unk_1C756BF70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755BAA0;
  *(inited + 32) = 0x7972657571;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  *(inited + 64) = 1701669236;
  *(inited + 72) = 0xE400000000000000;
  *(inited + 80) = v11;
  *(inited + 88) = v13;
  *(inited + 96) = 0x747865746E6F63;
  *(inited + 104) = 0xE700000000000000;
  *(inited + 112) = a3;
  *(inited + 120) = a4;
  sub_1C75504FC();
  sub_1C75504FC();
  v15 = sub_1C75504DC();
  sub_1C75504FC();
  v16 = sub_1C754FEEC();
  v17 = sub_1C75511BC();

  if (os_log_type_enabled(v16, v17))
  {
    OUTLINED_FUNCTION_13_3();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v25 = v19;
    *v18 = 136642819;
    v20 = sub_1C75504BC();
    v22 = sub_1C6F765A4(v20, v21, &v25);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_1C6F5C000, v16, v17, "Prompt bindings for titling adapter: %{sensitive}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  return v15;
}

uint64_t sub_1C7472568(unint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  sub_1C754D84C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14_0();
  v12 = sub_1C7472784(a1, a2);
  MEMORY[0x1CCA5CD70](v12);

  v13 = sub_1C74730DC(a8);
  if (v14)
  {
    MEMORY[0x1CCA5CD70](v13);
  }

  return 0;
}

unint64_t sub_1C7472730()
{
  result = qword_1EC21C248;
  if (!qword_1EC21C248)
  {
    result = swift_getWitnessTable(byte_1C758D7E0, &type metadata for TitlingAdapterPromptGenerator.Error, v0, v1);
    atomic_store(result, &qword_1EC21C248);
  }

  return result;
}

uint64_t sub_1C7472784(unint64_t a1, unint64_t *a2)
{
  v47 = 0;
  v48 = 0xE000000000000000;
  v3 = sub_1C7472AD4(a1, a2);
  if (v4)
  {
    MEMORY[0x1CCA5CD70](v3);
  }

  if (qword_1EDD0E038 != -1)
  {
    swift_once();
  }

  TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
  v6 = __swift_project_value_buffer(TokenCategoryType, qword_1EDD0E040);
  MEMORY[0x1EEE9AC00](v6);
  v37[2] = v7;
  sub_1C75504FC();
  v12 = sub_1C706CC1C(sub_1C7055510, v37, a1);
  v13 = *(v12 + 2);
  if (v13)
  {
    v45 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v13, 0, v8, v9, v10, v11);
    v14 = v45;
    v39 = "\n\nFull response:\n";
    v37[5] = v12;
    v15 = v12 + 144;
    v38 = xmmword_1C755BAB0;
    do
    {
      v44 = v13;
      v16 = *(v15 - 13);
      v17 = v14;
      v18 = *(v15 - 12);
      v19 = *(v15 - 11);
      v40 = *(v15 - 5);
      v41 = *(v15 - 4);
      v42 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
      v20 = swift_allocObject();
      *(v20 + 16) = v38;
      *(v20 + 56) = MEMORY[0x1E69E6158];
      *(v20 + 64) = sub_1C6F6D524();
      *(v20 + 32) = v18;
      *(v20 + 40) = v19;
      v14 = v17;
      sub_1C75504FC();
      swift_bridgeObjectRetain_n();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      v21 = sub_1C75506BC();
      v43 = v22;

      v45 = v17;
      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      if (v24 >= v23 >> 1)
      {
        v28 = OUTLINED_FUNCTION_15(v23);
        sub_1C6F7ED9C(v28, v24 + 1, 1, v29, v30, v31, v32);
        v14 = v45;
      }

      *(v14 + 16) = v24 + 1;
      v25 = v14 + 16 * v24;
      v26 = v43;
      v27 = v44;
      *(v25 + 32) = v21;
      *(v25 + 40) = v26;
      v15 += 120;
      v13 = v27 - 1;
    }

    while (v13);
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  if (*(v14 + 16))
  {
    v33 = OUTLINED_FUNCTION_4_107(v14);
    v35 = v34;

    v45 = v33;
    v46 = v35;
    sub_1C75504FC();
    MEMORY[0x1CCA5CD70](46, 0xE100000000000000);

    MEMORY[0x1CCA5CD70](v45, v46);
  }

  return v47;
}

uint64_t sub_1C7472AD4(unint64_t a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (qword_1EDD0E058 != -1)
  {
    goto LABEL_48;
  }

  while (1)
  {
    TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
    v6 = __swift_project_value_buffer(TokenCategoryType, qword_1EDD0E060);
    MEMORY[0x1EEE9AC00](v6);
    v77[2] = v7;
    sub_1C75504FC();
    v12 = sub_1C706CC1C(sub_1C70A97B0, v77, a1);
    if (!*(v12 + 2))
    {
      break;
    }

    v13 = *(v3 + 16) + 1;
    while (--v13)
    {
      v14 = (v3 + 72);
      v15 = *(v3 + 85);
      v3 += 72;
      if (v15 == 1)
      {
        v16 = *v14;
        v78 = *(v14 - 1);
        v80 = v16;
        sub_1C75504FC();
        goto LABEL_8;
      }
    }

    v78 = 0;
    v80 = 0xE000000000000000;
LABEL_8:
    v17 = *(v4 + 16);
    a1 = MEMORY[0x1E69E7CC0];
    if (v17)
    {
      __dst[0] = MEMORY[0x1E69E7CC0];
      sub_1C6F7ED9C(0, v17, 0, v8, v9, v10, v11);
      a1 = __dst[0];
      v4 += 72;
      do
      {
        v18 = *(v4 - 8);
        v19 = *v4;
        __dst[0] = a1;
        v20 = *(a1 + 16);
        v21 = *(a1 + 24);
        sub_1C75504FC();
        if (v20 >= v21 >> 1)
        {
          sub_1C6F7ED9C(v21 > 1, v20 + 1, 1, v22, v23, v24, v25);
          a1 = __dst[0];
        }

        *(a1 + 16) = v20 + 1;
        v26 = a1 + 16 * v20;
        *(v26 + 32) = v18;
        *(v26 + 40) = v19;
        v4 += 72;
        --v17;
      }

      while (v17);
    }

    sub_1C706D154();
    v81 = v27;
    v28 = 0;
    v29 = *(v12 + 2);
    v30 = 32;
    v83 = xmmword_1C755BAB0;
    v82 = MEMORY[0x1E69E7CC0];
    v79 = 32;
LABEL_14:
    v3 = v30 + 120 * v28;
    while (v29 != v28)
    {
      if (v28 >= *(v12 + 2))
      {
        __break(1u);
        goto LABEL_47;
      }

      memcpy(__dst, v12 + v3, 0x78uLL);
      v31 = __dst[2];
      v32 = __dst[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215040, &qword_1C7570ED0);
      inited = swift_initStackObject();
      *(inited + 16) = v83;
      memcpy((inited + 32), __dst, 0x78uLL);
      sub_1C6FCA6E4(__dst, v85);
      sub_1C6FCA6E4(__dst, v85);
      sub_1C75504FC();
      static StoryGenerationUtilities.queryTokenPersonUUIDs(from:)();
      swift_setDeallocating();
      sub_1C6FDC98C();
      sub_1C706D154();
      a1 = v34;
      v4 = *(v34 + 16);
      if (v4)
      {
        sub_1C72B8828(v81, v34, v35, v36, v37, v38, v39, v40, v77[4], v78, v79, v80, v81, v82, v83, *(&v83 + 1), v84, v85[0], v85[1], v85[2], v85[3], v85[4], v85[5], v85[6], v85[7], v85[8], v85[9], v85[10], v85[11], v85[12]);
        if (v41)
        {

          sub_1C6FDD548(__dst);
          v42 = 1;
        }

        else
        {
          if (v4 == 1)
          {
            v43 = sub_1C710D7C4(a1);
            v45 = v44;

            if (v45)
            {
              if (v43 == v78 && v45 == v80)
              {

                sub_1C6FDD548(__dst);
                v42 = 0;
              }

              else
              {
                v47 = sub_1C7551DBC();

                sub_1C6FDD548(__dst);
                if (v47)
                {
                  v42 = 0;
                }

                else
                {
                  v42 = 2;
                }
              }

              goto LABEL_32;
            }
          }

          else
          {
          }

          sub_1C6FDD548(__dst);
          v42 = 2;
        }

LABEL_32:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C6FB3C90();
          v82 = v51;
        }

        v4 = *(v82 + 16);
        v48 = *(v82 + 24);
        a1 = v4 + 1;
        if (v4 >= v48 >> 1)
        {
          OUTLINED_FUNCTION_15(v48);
          sub_1C6FB3C90();
          v82 = v52;
        }

        ++v28;
        v49 = v82;
        *(v82 + 16) = a1;
        v50 = v49 + 24 * v4;
        *(v50 + 32) = v31;
        *(v50 + 40) = v32;
        *(v50 + 48) = v42;
        v30 = v79;
        goto LABEL_14;
      }

      sub_1C6FDD548(__dst);

      v3 += 120;
      ++v28;
    }

    v57 = v82;
    v58 = *(v82 + 16);
    if (!v58)
    {
      break;
    }

    __dst[0] = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v58, 0, v53, v54, v55, v56);
    v3 = 0;
    a1 = __dst[0];
    v4 = v57 + 48;
    v80 = "%@ refers to a person/people";
    v81 = "%@ refers to a pet/pets";
    v79 = "%@ refers to a location";
    while (v3 < *(v57 + 16))
    {
      v59 = *(v4 - 16);
      v60 = *(v4 - 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
      v61 = swift_allocObject();
      *(v61 + 16) = v83;
      *(v61 + 56) = MEMORY[0x1E69E6158];
      *(v61 + 64) = sub_1C6F6D524();
      *(v61 + 32) = v59;
      *(v61 + 40) = v60;
      swift_bridgeObjectRetain_n();
      v62 = sub_1C75506BC();
      v64 = v63;

      __dst[0] = a1;
      v66 = *(a1 + 16);
      v65 = *(a1 + 24);
      if (v66 >= v65 >> 1)
      {
        v68 = OUTLINED_FUNCTION_15(v65);
        sub_1C6F7ED9C(v68, v66 + 1, 1, v69, v70, v71, v72);
        a1 = __dst[0];
      }

      ++v3;
      *(a1 + 16) = v66 + 1;
      v67 = a1 + 16 * v66;
      *(v67 + 32) = v62;
      *(v67 + 40) = v64;
      v4 += 24;
      v57 = v82;
      if (v58 == v3)
      {

        v73 = OUTLINED_FUNCTION_4_107(a1);
        v75 = v74;

        __dst[0] = v73;
        __dst[1] = v75;
        sub_1C75504FC();
        MEMORY[0x1CCA5CD70](46, 0xE100000000000000);

        return __dst[0];
      }
    }

LABEL_47:
    __break(1u);
LABEL_48:
    swift_once();
  }

  return 0;
}

uint64_t sub_1C74730DC(double a1)
{
  v2 = objc_opt_self();
  if ([v2 useAllTraitsAboveThresholdInTitler])
  {
    [v2 minimumAssetOverlapForThresholdTitler];
    a1 = v3;
  }

  LOBYTE(v40) = 1;
  BYTE1(v40) = [v2 useStorytellerSelectedTraitsForTitler];
  BYTE2(v40) = [v2 useAllTraitsAboveThresholdInTitler];
  v41 = a1;
  v42 = 1;
  static TraitSelectionStrategy.sortedSelectedTraitTitles(from:traits:traitsSelectedByStoryteller:keyAssetUUID:options:)();
  v5 = v4;
  v6 = *(v4 + 16);
  if (v6 < 2)
  {

    v31 = sub_1C754FEEC();
    v32 = sub_1C75511BC();
    if (os_log_type_enabled(v31, v32))
    {
      OUTLINED_FUNCTION_13_3();
      v33 = swift_slowAlloc();
      *v33 = 134217984;
      *(v33 + 4) = v6;
      _os_log_impl(&dword_1C6F5C000, v31, v32, "Only %ld selected traits, not including traits in titler context", v33, 0xCu);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    return 0;
  }

  else
  {
    v7 = sub_1C754FEEC();
    v8 = sub_1C75511BC();
    if (os_log_type_enabled(v7, v8))
    {
      OUTLINED_FUNCTION_13_3();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v40 = v10;
      *v9 = 136642819;
      v11 = MEMORY[0x1CCA5D090](v5, MEMORY[0x1E69E6158]);
      v13 = sub_1C6F765A4(v11, v12, &v40);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_1C6F5C000, v7, v8, "Selected traits %{sensitive}s for titler context", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v39 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v6, 0, v14, v15, v16, v17);
    v18 = (v5 + 40);
    do
    {
      v19 = *(v18 - 1);
      v20 = *v18;
      v40 = 34;
      v41 = -1.7573882e159;
      sub_1C75504FC();
      MEMORY[0x1CCA5CD70](v19, v20);
      MEMORY[0x1CCA5CD70](34, 0xE100000000000000);

      v21 = v40;
      v22 = v41;
      v24 = *(v39 + 16);
      v23 = *(v39 + 24);
      if (v24 >= v23 >> 1)
      {
        v26 = OUTLINED_FUNCTION_15(v23);
        sub_1C6F7ED9C(v26, v24 + 1, 1, v27, v28, v29, v30);
      }

      *(v39 + 16) = v24 + 1;
      v25 = v39 + 16 * v24;
      *(v25 + 32) = v21;
      *(v25 + 40) = v22;
      v18 += 2;
      --v6;
    }

    while (v6);

    v34 = OUTLINED_FUNCTION_4_107(v39);
    v36 = v35;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1C755BAB0;
    *(v37 + 56) = MEMORY[0x1E69E6158];
    *(v37 + 64) = sub_1C6F6D524();
    *(v37 + 32) = v34;
    *(v37 + 40) = v36;
    return sub_1C75506BC();
  }
}

uint64_t sub_1C7473478()
{
  v0 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14_0();
  v6 = v5 - v4;
  v7 = sub_1C754E15C();
  OUTLINED_FUNCTION_3_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_0();
  v13 = v12 - v11;
  v14 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1C754E03C();
  v15 = sub_1C754E09C();
  (*(v9 + 8))(v13, v7);
  [v14 setLocale_];

  sub_1C7069CE4(0x7979792045454545, 0xEF64642D4D4D2D79, v14);
  sub_1C754DF5C();
  v16 = sub_1C754DECC();
  (*(v2 + 8))(v6, v0);
  v17 = [v14 stringFromDate_];

  v18 = sub_1C755068C();
  return v18;
}

uint64_t TitlingAdapterPromptGenerator.deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence29TitlingAdapterPromptGenerator_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_62_2();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t TitlingAdapterPromptGenerator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence29TitlingAdapterPromptGenerator_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_62_2();
  (*(v2 + 8))(v0 + v1);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TitlingAdapterPromptGenerator(uint64_t a1)
{
  result = qword_1EC21C250;
  if (!qword_1EC21C250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TitlingAdapterPromptGenerator.Error(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C74739A0()
{
  result = qword_1EC21C260;
  if (!qword_1EC21C260)
  {
    result = swift_getWitnessTable(byte_1C758D7B8, &type metadata for TitlingAdapterPromptGenerator.Error, v0, v1);
    atomic_store(result, &qword_1EC21C260);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TitlingAdapterPromptGenerator.CharacterAnnotationType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C7473AD4()
{
  result = qword_1EC21C268;
  if (!qword_1EC21C268)
  {
    result = swift_getWitnessTable(aY_12, &type metadata for TitlingAdapterPromptGenerator.CharacterAnnotationType, v0, v1);
    atomic_store(result, &qword_1EC21C268);
  }

  return result;
}

uint64_t TraitCompletionProcessor.__allocating_init(with:storyAssetsFetcher:)(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  TraitCompletionProcessor.init(with:storyAssetsFetcher:)(a1, a2);
  return v4;
}

uint64_t TraitCompletionProcessor.traitAssetUUIDsByQuery(queries:fetcherType:options:eventRecorder:progressReporter:)(uint64_t a1, _BYTE *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 272) = a5;
  *(v6 + 280) = v5;
  *(v6 + 256) = a1;
  *(v6 + 264) = a4;
  *(v6 + 288) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21A3C0, &qword_1C7583FA0);
  OUTLINED_FUNCTION_15_3();
  *(v6 + 296) = v9;
  *(v6 + 304) = swift_task_alloc();
  *(v6 + 312) = sub_1C754F38C();
  OUTLINED_FUNCTION_15_3();
  *(v6 + 320) = v10;
  v11 = swift_task_alloc();
  *(v6 + 145) = *a2;
  v12 = *a3;
  *(v6 + 328) = v11;
  *(v6 + 336) = v12;
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1C7473CBC()
{
  v1 = *(v0 + 264);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1C754F1CC();
  sub_1C754F2CC();
  v2 = *(v0 + 256);
  v3 = *(v2 + 16);
  *(v0 + 344) = v3;
  v4 = MEMORY[0x1E69E7CC0];
  v53 = v3;
  if (v3)
  {
    v54 = MEMORY[0x1E69E7CC0];
    sub_1C755195C();
    sub_1C70DF0F4();
    v5 = v2 + 40;
    do
    {
      sub_1C75504FC();
      OUTLINED_FUNCTION_82();
      sub_1C7073450();
      sub_1C755192C();
      sub_1C755196C();
      OUTLINED_FUNCTION_282();
      sub_1C755197C();
      sub_1C755193C();
      v5 += 16;
      --v3;
    }

    while (v3);
    v4 = v54;
  }

  *(v0 + 352) = v4;
  sub_1C75504FC();
  v6 = sub_1C754FEEC();
  v7 = sub_1C755117C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = sub_1C6FB6304();

    _os_log_impl(&dword_1C6F5C000, v6, v7, "Start query batch for traits with %ld", v8, 0xCu);
    OUTLINED_FUNCTION_79();
  }

  else
  {
  }

  *(v0 + 176) = &type metadata for EmbeddingSearchThresholdingModels.VersionHandlingEmbeddingSearchThresholdModel;
  *(v0 + 184) = &off_1F46ACFD0;
  v9 = [objc_opt_self() currentUnifiedEmbeddingVersion];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 integerValue];
  }

  else
  {
    v11 = 0;
  }

  v12 = v10 == 0;
  v13 = *(v0 + 336);
  v14 = *(v0 + 145);
  *(v0 + 152) = 1;
  *(v0 + 160) = v11;
  *(v0 + 168) = v12;
  v15 = objc_opt_self();
  v16 = [v15 globalTraitsMatchingEmbeddingSearchRetrievalLimit];
  sub_1C6FB5E28(v0 + 152, v0 + 32);
  *(v0 + 16) = v14;
  *(v0 + 24) = 1;
  *(v0 + 88) = 1;
  *(v0 + 96) = v13;
  *(v0 + 104) = vdupq_n_s64(0x64uLL);
  *(v0 + 120) = 1;
  *(v0 + 128) = 1;
  *(v0 + 136) = 700;
  *(v0 + 144) = 0;
  *(v0 + 72) = v16;
  *(v0 + 80) = 0;
  v17 = MEMORY[0x1E69E7CC8];
  *(v0 + 216) = 0;
  *(v0 + 224) = v17;
  sub_1C75504FC();
  LODWORD(v16) = [v15 usePhotoKitBatchSPIForRetrieval];
  v18 = sub_1C754FEEC();
  v19 = sub_1C75511BC();
  v20 = os_log_type_enabled(v18, v19);
  if (!v16)
  {
    if (v20)
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1C6F5C000, v18, v19, "Use non-batch PhotoKit SPI for global traits retrieval", v38, 2u);
      MEMORY[0x1CCA5F8E0](v38, -1, -1);
    }

    v39 = sub_1C6FB6304();
    *(v0 + 384) = v39;
    if (!v39)
    {

      sub_1C754F2EC();
      OUTLINED_FUNCTION_28_41();
      __swift_destroy_boxed_opaque_existential_1((v0 + 152));
      OUTLINED_FUNCTION_2_129();
      v47 = OUTLINED_FUNCTION_4_108();
      v48(v47);

      OUTLINED_FUNCTION_10_83();
      OUTLINED_FUNCTION_21_62();

      __asm { BRAA            X2, X16 }
    }

    *(v0 + 392) = OBJC_IVAR____TtC18PhotosIntelligence24TraitCompletionProcessor_storyAssetsFetcher;
    OUTLINED_FUNCTION_19_76();
    if (v40)
    {
      if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return MEMORY[0x1EEE2A6A0](v30, v31, v34, v35, v32, v36, v37, v33);
      }

      v41 = *(v31 + 32);
    }

    else
    {
      v41 = MEMORY[0x1CCA5DDD0](0);
    }

    *(v0 + 408) = v41;
    *(v0 + 416) = 1;
    OUTLINED_FUNCTION_18_66();
    sub_1C754F2DC();
    v42 = OUTLINED_FUNCTION_16_67();
    __swift_project_boxed_opaque_existential_1(v42, v42[3]);
    OUTLINED_FUNCTION_15_3();
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v0 + 424) = v43;
    *v43 = v44;
    OUTLINED_FUNCTION_0_193(v43);
    OUTLINED_FUNCTION_12_82();
    OUTLINED_FUNCTION_21_62();

    __asm { BRAA            X6, X16 }
  }

  if (v20)
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1C6F5C000, v18, v19, "Use batch PhotoKit SPI for global traits retrieval", v21, 2u);
    OUTLINED_FUNCTION_79();
  }

  v22 = *(v0 + 304);
  v24 = *(v0 + 272);
  v23 = *(v0 + 280);
  v25 = *(v0 + 264);
  v52 = *(v0 + 256);

  v26 = *(v23 + OBJC_IVAR____TtC18PhotosIntelligence24TraitCompletionProcessor_storyAssetsFetcher + 24);
  v27 = *(v23 + OBJC_IVAR____TtC18PhotosIntelligence24TraitCompletionProcessor_storyAssetsFetcher + 32);
  __swift_project_boxed_opaque_existential_1((v23 + OBJC_IVAR____TtC18PhotosIntelligence24TraitCompletionProcessor_storyAssetsFetcher), v26);
  (*(v27 + 24))(v4, v0 + 16, v25, v26, v27);

  v28 = v1[3];
  __swift_project_boxed_opaque_existential_1(v25, v28);
  v29 = swift_task_alloc();
  *(v0 + 360) = v29;
  v29[2] = v22;
  v29[3] = v24;
  v29[4] = v0 + 216;
  v29[5] = v53;
  v29[6] = v0 + 224;
  v29[7] = v23;
  v29[8] = v52;
  v30 = swift_task_alloc();
  *(v0 + 368) = v30;
  *v30 = v0;
  v30[1] = sub_1C747459C;
  v31 = "TraitCompletionProcessor.awaitSearchStreams";
  v32 = &unk_1C758D8C0;
  v33 = MEMORY[0x1E69E7CA8] + 8;
  v34 = 43;
  v35 = 2;
  v36 = v29;
  v37 = v28;

  return MEMORY[0x1EEE2A6A0](v30, v31, v34, v35, v32, v36, v37, v33);
}

uint64_t sub_1C747459C()
{
  *(*v1 + 376) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C74746CC()
{
  (*(v0[37] + 8))(v0[38], v0[36]);
  v1 = v0[47];
  sub_1C754F2EC();
  if (v1)
  {
    OUTLINED_FUNCTION_28_41();
    __swift_destroy_boxed_opaque_existential_1(v0 + 19);

    v2 = OUTLINED_FUNCTION_82();
    OUTLINED_FUNCTION_0_22(v2, v3);
    sub_1C754F1AC();
    v4 = OUTLINED_FUNCTION_4_108();
    v5(v4);
    OUTLINED_FUNCTION_34_44();

    OUTLINED_FUNCTION_6_0();

    return v6();
  }

  else
  {
    OUTLINED_FUNCTION_28_41();
    __swift_destroy_boxed_opaque_existential_1(v0 + 19);
    OUTLINED_FUNCTION_2_129();
    v8 = OUTLINED_FUNCTION_4_108();
    v9(v8);

    v10 = OUTLINED_FUNCTION_10_83();

    return v11(v10);
  }
}

uint64_t sub_1C747482C()
{
  OUTLINED_FUNCTION_42();
  v2 = *v1;
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  *(v4 + 432) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1C7474930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(v7 + 192);
  v87 = *(v7 + 200);
  v9 = *(v8 + 16);
  if (v9)
  {
    *(v7 + 240) = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v9, 0, a4, a5, a6, a7);
    v10 = *(v7 + 240);
    v11 = (v8 + 40);
    do
    {
      v13 = *(v11 - 1);
      v12 = *v11;
      *(v7 + 240) = v10;
      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      sub_1C75504FC();
      if (v15 >= v14 >> 1)
      {
        sub_1C6F7ED9C(v14 > 1, v15 + 1, 1, v16, v17, v18, v19);
        v10 = *(v7 + 240);
      }

      *(v10 + 16) = v15 + 1;
      v20 = v10 + 16 * v15;
      *(v20 + 32) = v13;
      *(v20 + 40) = v12;
      v11 += 4;
      --v9;
    }

    while (v9);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v21 = [*(v7 + 408) string];
  v22 = sub_1C755068C();
  v24 = v23;

  swift_isUniquelyReferenced_nonNull_native();
  *(v7 + 248) = *(v7 + 224);
  sub_1C6F78124(v22, v24);
  OUTLINED_FUNCTION_31_1();
  if (__OFADD__(v27, v28))
  {
    goto LABEL_50;
  }

  v29 = v25;
  v30 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C270, &qword_1C758D8B0);
  if ((sub_1C7551A2C() & 1) == 0)
  {
LABEL_15:
    v34 = *(v7 + 248);
    if (v30)
    {
      v35 = OUTLINED_FUNCTION_9_90();
      *v36 = v10;
      *(v36 + 8) = 0;
      sub_1C6FDE438(v35, v37);
    }

    else
    {
      OUTLINED_FUNCTION_2_27(v34 + 8 * (v29 >> 6));
      v39 = (v38 + 16 * v29);
      *v39 = v22;
      v39[1] = v24;
      v40 = *(v34 + 56) + 16 * v29;
      *v40 = v10;
      *(v40 + 8) = 0;
      OUTLINED_FUNCTION_43_1();
      if (v42)
      {
LABEL_51:
        __break(1u);
        return;
      }

      *(v34 + 16) = v41;
      sub_1C75504FC();
    }

    v85 = (v7 + 152);
    v86 = v7 + 16;
    v43 = *(v7 + 408);

    swift_unknownObjectRelease();
    *(v7 + 224) = v34;
    for (i = *(v7 + 432); ; i = 0)
    {
      v45 = *(v7 + 416);
      if (v45 == *(v7 + 384))
      {

        sub_1C754F2EC();
        v73 = *(v7 + 320);
        v72 = *(v7 + 328);
        v74 = *(v7 + 312);
        if (i)
        {
          v75 = *(v7 + 264);
          sub_1C70DF138(v86);
          __swift_destroy_boxed_opaque_existential_1(v85);

          OUTLINED_FUNCTION_0_22(v75, v75[3]);
          sub_1C754F1AC();
          (*(v73 + 8))(v72, v74);
          OUTLINED_FUNCTION_34_44();

          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_94_1();

          __asm { BRAA            X1, X16 }
        }

        sub_1C70DF138(v86);
        __swift_destroy_boxed_opaque_existential_1(v85);
        OUTLINED_FUNCTION_2_129();
        (*(v73 + 8))(v72, v74);

        OUTLINED_FUNCTION_94_1();

        __asm { BRAA            X2, X16 }
      }

      OUTLINED_FUNCTION_19_76();
      if (v32)
      {
        if (v45 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_49;
        }

        v47 = *(v46 + 8 * v45 + 32);
      }

      else
      {
        v47 = MEMORY[0x1CCA5DDD0](v45);
      }

      *(v7 + 408) = v47;
      *(v7 + 416) = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        break;
      }

      OUTLINED_FUNCTION_18_66();
      sub_1C754F2DC();
      if (!i)
      {
        v78 = OUTLINED_FUNCTION_16_67();
        __swift_project_boxed_opaque_existential_1(v78, v78[3]);
        OUTLINED_FUNCTION_15_3();
        swift_task_alloc();
        OUTLINED_FUNCTION_48();
        *(v7 + 424) = v79;
        *v79 = v80;
        OUTLINED_FUNCTION_0_193(v79);
        OUTLINED_FUNCTION_94_1();

        __asm { BRAA            X6, X16 }
      }

      v48 = [*(v7 + 408) string];
      v49 = sub_1C755068C();
      v51 = v50;

      v52 = i;
      v53 = *(v7 + 224);
      swift_isUniquelyReferenced_nonNull_native();
      *(v7 + 232) = v53;
      sub_1C6F78124(v49, v51);
      OUTLINED_FUNCTION_31_1();
      if (__OFADD__(v56, v57))
      {
        goto LABEL_47;
      }

      v58 = v54;
      v59 = v55;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C270, &qword_1C758D8B0);
      if (sub_1C7551A2C())
      {
        v60 = sub_1C6F78124(v49, v51);
        if ((v59 & 1) != (v61 & 1))
        {
          goto LABEL_11;
        }

        v58 = v60;
      }

      v62 = *(v7 + 408);
      if (v59)
      {

        v63 = *(v7 + 232);
        v64 = OUTLINED_FUNCTION_9_90();
        *v65 = i;
        *(v65 + 8) = 1;
        sub_1C6FDE438(v64, v66);
      }

      else
      {
        v63 = *(v7 + 232);
        OUTLINED_FUNCTION_2_27(v63 + 8 * (v58 >> 6));
        v68 = (v67 + 16 * v58);
        *v68 = v49;
        v68[1] = v51;
        v69 = *(v63 + 56) + 16 * v58;
        *v69 = i;
        *(v69 + 8) = v70;

        OUTLINED_FUNCTION_43_1();
        if (v42)
        {
          goto LABEL_48;
        }

        *(v63 + 16) = v71;
      }

      *(v7 + 224) = v63;
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  sub_1C6F78124(v22, v24);
  OUTLINED_FUNCTION_11_75();
  if (v32)
  {
    v29 = v31;
    goto LABEL_15;
  }

LABEL_11:
  OUTLINED_FUNCTION_94_1();

  sub_1C7551E4C();
}

uint64_t sub_1C7474F68()
{
  v2 = v0[40];
  v1 = v0[41];
  v3 = v0[38];
  v4 = v0[39];
  v5 = v0[36];
  v6 = v0[37];
  v8 = v0[33];
  v7 = v0[34];
  sub_1C70DF138((v0 + 2));
  __swift_destroy_boxed_opaque_existential_1(v0 + 19);
  (*(v6 + 8))(v3, v5);

  OUTLINED_FUNCTION_0_22(v8, v8[3]);
  sub_1C754F1AC();
  (*(v2 + 8))(v1, v4);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v9 + 8))(v7);

  v10 = v0[1];

  return v10();
}

void sub_1C7475090()
{
  v1 = *(v0 + 432);
  v2 = [*(v0 + 408) string];
  sub_1C755068C();

  v3 = v1;
  v4 = *(v0 + 224);
  swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 232) = v4;
  v5 = OUTLINED_FUNCTION_282();
  sub_1C6F78124(v5, v6);
  OUTLINED_FUNCTION_31_1();
  if (__OFADD__(v9, v10))
  {
    __break(1u);
    goto LABEL_27;
  }

  v11 = v7;
  v12 = v8;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C270, &qword_1C758D8B0);
  if ((OUTLINED_FUNCTION_33_42(v13) & 1) == 0)
  {
LABEL_6:
    v18 = *(v0 + 408);
    if (v12)
    {

      OUTLINED_FUNCTION_29_43();
    }

    else
    {
      v19 = *(v0 + 232);
      OUTLINED_FUNCTION_2_27(v19 + 8 * (v11 >> 6));
      OUTLINED_FUNCTION_20_60(v20);

      OUTLINED_FUNCTION_43_1();
      if (v22)
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      *(v19 + 16) = v21;
    }

    OUTLINED_FUNCTION_31_46();
    if (v17)
    {

      sub_1C754F2EC();
      OUTLINED_FUNCTION_28_41();
      __swift_destroy_boxed_opaque_existential_1((v0 + 152));
      OUTLINED_FUNCTION_2_129();
      v31 = OUTLINED_FUNCTION_4_108();
      v32(v31);

      OUTLINED_FUNCTION_10_83();
      OUTLINED_FUNCTION_17_1();

      __asm { BRAA            X2, X16 }
    }

    OUTLINED_FUNCTION_19_76();
    if (v17)
    {
      if (v18 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_29:
        __break(1u);
        return;
      }

      v24 = *(v23 + 8 * v18 + 32);
    }

    else
    {
      v24 = MEMORY[0x1CCA5DDD0](v18);
    }

    *(v0 + 408) = v24;
    *(v0 + 416) = v18 + 1;
    if (!__OFADD__(v18, 1))
    {
      OUTLINED_FUNCTION_18_66();
      sub_1C754F2DC();
      v25 = OUTLINED_FUNCTION_16_67();
      __swift_project_boxed_opaque_existential_1(v25, v25[3]);
      OUTLINED_FUNCTION_15_3();
      swift_task_alloc();
      OUTLINED_FUNCTION_48();
      *(v0 + 424) = v26;
      *v26 = v27;
      OUTLINED_FUNCTION_0_193(v26);
      OUTLINED_FUNCTION_12_82();
      OUTLINED_FUNCTION_17_1();

      __asm { BRAA            X6, X16 }
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v14 = OUTLINED_FUNCTION_282();
  sub_1C6F78124(v14, v15);
  OUTLINED_FUNCTION_11_75();
  if (v17)
  {
    v11 = v16;
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_17_1();

  sub_1C7551E4C();
}

uint64_t TraitCompletionProcessor.init(with:storyAssetsFetcher:)(uint64_t a1, __int128 *a2)
{
  sub_1C754FEFC();
  *(v2 + OBJC_IVAR____TtC18PhotosIntelligence24TraitCompletionProcessor_photoLibrary) = a1;
  sub_1C6FD80E4(a2, v2 + OBJC_IVAR____TtC18PhotosIntelligence24TraitCompletionProcessor_storyAssetsFetcher);
  return v2;
}

uint64_t sub_1C74754F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[18] = a7;
  v8[19] = a8;
  v8[16] = a5;
  v8[17] = a6;
  v8[14] = a3;
  v8[15] = a4;
  v8[13] = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2178D8, &unk_1C756C900);
  v8[20] = v9;
  v8[21] = *(v9 - 8);
  v8[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C74755CC, 0, 0);
}

uint64_t sub_1C74755CC()
{
  OUTLINED_FUNCTION_42();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21A3C0, &qword_1C7583FA0);
  sub_1C7550DBC();
  v0[23] = OBJC_IVAR____TtC18PhotosIntelligence24TraitCompletionProcessor_logger;
  v0[24] = 0;
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  v0[25] = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_7_99(v1);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6D9C8](v3);
}

uint64_t sub_1C7475678()
{
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C7475764()
{
  v106 = v0;
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  if (v2 == 255)
  {
    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));

    goto LABEL_15;
  }

  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  if (v2)
  {
    v98 = *(v0 + 32);
    v102 = *(v0 + 40);
    v5 = v1;
    sub_1C75504FC();
    v6 = v4;
    v7 = sub_1C754FEEC();
    v8 = sub_1C755119C();

    v100 = v1;
    if (os_log_type_enabled(v7, v8))
    {
      v94 = *(v0 + 152);
      v9 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v105[0] = v104;
      *v9 = 136643331;
      v10 = [v5 string];
      sub_1C755068C();
      v96 = v8;

      v11 = OUTLINED_FUNCTION_82();
      v14 = sub_1C6F765A4(v11, v12, v13);

      *(v9 + 4) = v14;
      *(v9 + 12) = 2080;
      v15 = MEMORY[0x1CCA5D090](v94, MEMORY[0x1E69E6158]);
      v17 = sub_1C6F765A4(v15, v16, v105);

      *(v9 + 14) = v17;
      *(v9 + 22) = 2080;
      swift_getErrorValue();
      v18 = sub_1C7551EAC();
      v20 = sub_1C6F765A4(v18, v19, v105);

      *(v9 + 24) = v20;
      _os_log_impl(&dword_1C6F5C000, v7, v96, "Error retrieving assets for query '%{sensitive}s' with queries %s, error: %s", v9, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1CCA5F8E0](v104, -1, -1);
      OUTLINED_FUNCTION_79();
    }

    v21 = *(v0 + 136);
    v22 = [v5 string];
    v23 = sub_1C755068C();
    v25 = v24;

    v26 = v4;
    swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 72) = *v21;
    *v21 = 0x8000000000000000;
    sub_1C6F78124(v23, v25);
    OUTLINED_FUNCTION_31_1();
    if (__OFADD__(v29, v30))
    {
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v31 = v27;
    v32 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C270, &qword_1C758D8B0);
    if (sub_1C7551A2C())
    {
      sub_1C6F78124(v23, v25);
      OUTLINED_FUNCTION_11_75();
      if (!v34)
      {
        goto LABEL_30;
      }

      v31 = v33;
    }

    v35 = *(v0 + 72);
    if (v32)
    {
      v36 = v35[7] + 16 * v31;
      v37 = *v36;
      v38 = *(v36 + 8);
      v39 = v4;
      *v36 = v4;
      *(v36 + 8) = 1;
      sub_1C6FDE438(v37, v38);
    }

    else
    {
      v35[(v31 >> 6) + 8] |= 1 << v31;
      v66 = (v35[6] + 16 * v31);
      *v66 = v23;
      v66[1] = v25;
      v67 = v35[7] + 16 * v31;
      v39 = v4;
      *v67 = v4;
      *(v67 + 8) = 1;
      OUTLINED_FUNCTION_43_1();
      if (v69)
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v35[2] = v68;
    }

    v70 = *(v0 + 136);
    sub_1C710A128(v100, v39, v98, v102);
    *v70 = v35;

    v71 = *(v0 + 192);
LABEL_39:
    v90 = *(v0 + 120);
    if (!__OFADD__(*v90, 1))
    {
      ++*v90;
      *(v0 + 192) = v71;
      swift_task_alloc();
      OUTLINED_FUNCTION_48();
      *(v0 + 200) = v91;
      *v91 = v92;
      OUTLINED_FUNCTION_7_99(v91);
      OUTLINED_FUNCTION_41();
      OUTLINED_FUNCTION_20_4();

      return MEMORY[0x1EEE6D9C8](v27);
    }

    __break(1u);
    goto LABEL_44;
  }

  v40 = *(v0 + 192);
  sub_1C754F2DC();
  if (v40)
  {
    v42 = *(v0 + 168);
    v41 = *(v0 + 176);
    v43 = *(v0 + 160);
    v44 = sub_1C710A128(v1, v4, v3, v2);
    (*(v42 + 8))(v41, v43, v44);

    OUTLINED_FUNCTION_6_0();
LABEL_15:
    OUTLINED_FUNCTION_20_4();

    __asm { BRAA            X1, X16 }
  }

  v99 = v3;
  v103 = v2;
  v47 = [v4 string];
  v97 = sub_1C755068C();
  v49 = v48;

  v54 = v1[2];
  v55 = MEMORY[0x1E69E7CC0];
  v101 = v1;
  if (v54)
  {
    v95 = v49;
    *(v0 + 88) = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v54, 0, v50, v51, v52, v53);
    v55 = *(v0 + 88);
    v56 = v1 + 5;
    do
    {
      v57 = *(v56 - 1);
      v58 = *v56;
      *(v0 + 88) = v55;
      v60 = *(v55 + 16);
      v59 = *(v55 + 24);
      sub_1C75504FC();
      if (v60 >= v59 >> 1)
      {
        sub_1C6F7ED9C(v59 > 1, v60 + 1, 1, v61, v62, v63, v64);
        v55 = *(v0 + 88);
      }

      *(v55 + 16) = v60 + 1;
      v65 = v55 + 16 * v60;
      *(v65 + 32) = v57;
      *(v65 + 40) = v58;
      v56 += 4;
      --v54;
    }

    while (v54);
    v49 = v95;
  }

  v72 = *(v0 + 136);
  swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 96) = *v72;
  *v72 = 0x8000000000000000;
  sub_1C6F78124(v97, v49);
  OUTLINED_FUNCTION_31_1();
  if (__OFADD__(v74, v75))
  {
    goto LABEL_45;
  }

  v76 = v27;
  v77 = v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C270, &qword_1C758D8B0);
  if ((sub_1C7551A2C() & 1) == 0)
  {
LABEL_34:
    if (v77)
    {

      v82 = *(v0 + 96);
      v83 = OUTLINED_FUNCTION_9_90();
      *v84 = v55;
      *(v84 + 8) = 0;
      sub_1C6FDE438(v83, v85);
      sub_1C710A128(v101, v4, v99, v103);
    }

    else
    {
      v82 = *(v0 + 96);
      OUTLINED_FUNCTION_2_27(v82 + 8 * (v76 >> 6));
      v87 = (v86 + 16 * v76);
      *v87 = v97;
      v87[1] = v49;
      v88 = *(v82 + 56) + 16 * v76;
      *v88 = v55;
      *(v88 + 8) = 0;
      sub_1C710A128(v101, v4, v99, v103);
      OUTLINED_FUNCTION_43_1();
      if (v69)
      {
LABEL_47:
        __break(1u);
        return MEMORY[0x1EEE6D9C8](v27);
      }

      *(v82 + 16) = v89;
    }

    **(v0 + 136) = v82;

    v71 = 0;
    goto LABEL_39;
  }

  v78 = sub_1C6F78124(v97, v49);
  if ((v77 & 1) == (v79 & 1))
  {
    v76 = v78;
    goto LABEL_34;
  }

LABEL_30:
  OUTLINED_FUNCTION_20_4();

  return sub_1C7551E4C();
}

uint64_t TraitCompletionProcessor.deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence24TraitCompletionProcessor_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18PhotosIntelligence24TraitCompletionProcessor_storyAssetsFetcher));
  return v0;
}