uint64_t sub_1ADFB6944(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1ADE555A4(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1ADFB6A38(void *result)
{
  v3 = result[2];
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v4 + 3) >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1ADE5534C(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = *(v4 + 3) >> 1;
  }

  v11 = *(v4 + 2);
  v12 = (v9 - v11);
  result = sub_1AE03A62C(v33, &v4[16 * v11 + 32], v9 - v11, v7);
  if (result < v3)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v13 = *(v4 + 2);
    v14 = __OFADD__(v13, result);
    v15 = result + v13;
    if (v14)
    {
      __break(1u);
LABEL_20:
      while (1)
      {
        v18 = (v15 + 1);
        if (__OFADD__(v15, 1))
        {
          goto LABEL_45;
        }

        if (v18 >= ((v6 + 64) >> 6))
        {
          v21 = 0;
          v22 = 0xF000000000000000;
          goto LABEL_43;
        }

        v17 = v12[v18];
        ++v15;
        if (v17)
        {
          goto LABEL_23;
        }
      }
    }

    *(v4 + 2) = v15;
  }

  if (result != v12)
  {
    v16 = v33[0];
LABEL_14:
    result = sub_1ADDDCE74(v16);
    *v1 = v4;
    return result;
  }

LABEL_17:
  v2 = *(v4 + 2);
  v12 = v33[1];
  v31 = v33[0];
  v6 = v33[2];
  v15 = v34;
  v17 = v35;
  if (!v35)
  {
    goto LABEL_20;
  }

  v18 = v34;
LABEL_23:
  v19 = (v17 - 1) & v17;
  v20 = (*(v31 + 48) + ((v18 << 10) | (16 * __clz(__rbit64(v17)))));
  v21 = *v20;
  v22 = v20[1];
  sub_1ADDD86D8(*v20, v22);
  if (v22 >> 60 == 15)
  {
LABEL_43:
    sub_1ADDE1588(v21, v22);
    v16 = v31;
    goto LABEL_14;
  }

  v32 = v18;
  while (1)
  {
    v23 = *(v4 + 3);
    v24 = v23 >> 1;
    if ((v23 >> 1) < v2 + 1)
    {
      v4 = sub_1ADE5534C((v23 > 1), v2 + 1, 1, v4);
      v24 = *(v4 + 3) >> 1;
    }

    if (v2 < v24)
    {
      break;
    }

LABEL_25:
    *(v4 + 2) = v2;
    if (v22 >> 60 == 15)
    {
      goto LABEL_43;
    }
  }

  while (1)
  {
    sub_1ADDD86D8(v21, v22);
    result = sub_1ADDE1588(v21, v22);
    v25 = &v4[16 * v2 + 32];
    *v25 = v21;
    v25[1] = v22;
    ++v2;
    if (!v19)
    {
      break;
    }

    v26 = v32;
LABEL_36:
    v28 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v29 = (*(v31 + 48) + ((v26 << 10) | (16 * v28)));
    v21 = *v29;
    v22 = v29[1];
    sub_1ADDD86D8(*v29, v22);
    if (v22 >> 60 == 15 || v2 >= v24)
    {
      goto LABEL_25;
    }
  }

  v27 = v32;
  while (1)
  {
    v26 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v26 >= ((v6 + 64) >> 6))
    {
      v21 = 0;
      *(v4 + 2) = v2;
      v22 = 0xF000000000000000;
      goto LABEL_43;
    }

    v19 = v12[v26];
    ++v27;
    if (v19)
    {
      v32 = v26;
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_1ADFB6D60(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1ADE5534C(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1ADFB6E54(uint64_t result, uint64_t (*a2)(void), uint64_t a3)
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v8 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v5 = result;
  if (!*(v8 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v5 + 24) >> 1) - *(v5 + 16) < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v9 = *(v5 + 16);
  v10 = __OFADD__(v9, v4);
  v11 = v9 + v4;
  if (!v10)
  {
    *(v5 + 16) = v11;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1ADFB6F58(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1ADE55240(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1ADFB704C(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1ADE564E4(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA1F0, &qword_1AE241BD0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1ADFB7154()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1AE23E31C();
  sub_1AE23E33C();
  if (v1)
  {

    sub_1ADF76AA0(v4, v1);
    sub_1ADF76AA0(v4, v2);
    sub_1ADE42CB8(v1, v2);
  }

  sub_1AE23BECC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADFB7204(uint64_t a1)
{
  v3 = *v1;
  if (*v1)
  {
    v4 = v1[1];
    sub_1AE23E33C();

    sub_1ADF76AA0(a1, v3);
    sub_1ADF76AA0(a1, v4);
    sub_1ADE42CB8(v3, v4);
  }

  else
  {
    sub_1AE23E33C();
  }

  return sub_1AE23BECC();
}

uint64_t sub_1ADFB72B0(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1AE23E31C();
  sub_1AE23E33C();
  if (v2)
  {

    sub_1ADF76AA0(v5, v2);
    sub_1ADF76AA0(v5, v3);
    sub_1ADE42CB8(v2, v3);
  }

  sub_1AE23BECC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADFB7360(uint64_t a1, uint64_t a2)
{
  __s1[2] = *MEMORY[0x1E69E9840];
  v248 = sub_1AE23C12C();
  v4 = *(v248 - 8);
  MEMORY[0x1EEE9AC00](v248);
  v218 = &v196 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v222 = &v196 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v234 = &v196 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v219 = &v196 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v223 = &v196 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v196 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v239 = &v196 - v18;
  v19 = type metadata accessor for Replica(0);
  v238 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v244 = &v196 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v196 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v237 = &v196 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA458, &qword_1AE251E00);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v231 = &v196 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v196 - v29;
  MEMORY[0x1EEE9AC00](v31);
  MEMORY[0x1EEE9AC00](v32);
  v35 = *(a2 + 16);
  if (!v35)
  {
    return 0;
  }

  v36 = 0;
  v37 = a2 + 32;
  v214 = a1 + 32;
  v242 = v4 + 16;
  v247 = (v4 + 32);
  v246 = (v4 + 8);
  v235 = v16;
  v232 = v23;
  v233 = v34;
  v199 = a1;
  v243 = v4;
  v226 = v30;
  v227 = &v196 - v33;
  v198 = v35;
  v197 = a2 + 32;
  while (1)
  {
    v209 = v36;
    v38 = (v37 + 32 * v36);
    v39 = *v38;
    result = *v38 == 0;
    if (!*v38)
    {
      return result;
    }

    v200 = 0;
    v41 = v38[1];
    v42 = v38[2];
    v43 = v38[3];
    v44 = *(a1 + 16);
    v236 = v39;
    v229 = v41;
    sub_1ADE42C78(v39, v41);
    v210 = v42;
    v211 = v43;
    sub_1ADDD86D8(v42, v43);
    v213 = v44;
    if (!v44)
    {
LABEL_218:
      sub_1ADE42CB8(v236, v229);
      sub_1ADDCC35C(v210, v211);
      return 1;
    }

    v45 = 0;
    ++v209;
    v46 = v211 >> 62;
    v47 = !v210 && v211 == 0xC000000000000000;
    v48 = !v47;
    v207 = v48;
    v203 = HIDWORD(v210);
    v49 = __OFSUB__(HIDWORD(v210), v210);
    v206 = v49;
    v205 = HIDWORD(v210) - v210;
    v208 = BYTE6(v211);
    v204 = v210;
    v202 = v210 >> 32;
    v201 = (v210 >> 32) - v210;
    v212 = v211 >> 62;
    while (1)
    {
      v51 = (v214 + 32 * v45);
      v52 = *v51;
      v53 = v51[1];
      v54 = v51[2];
      v55 = v51[3];
      v228 = v53;
      if (!v52)
      {
        break;
      }

      v215 = v45;
      v56 = *(v53 + 64);
      v221 = v53 + 64;
      v57 = 1 << *(v53 + 32);
      if (v57 < 64)
      {
        v58 = ~(-1 << v57);
      }

      else
      {
        v58 = -1;
      }

      v59 = v58 & v56;
      v225 = v52;
      sub_1ADE42C78(v52, v53);
      v217 = v54;
      v216 = v55;
      sub_1ADDD86D8(v54, v55);
      v220 = (v57 + 63) >> 6;

      v224 = 0;
      v60 = 0;
      v61 = 0;
      do
      {
        v245 = v61;
        if (v59)
        {
          v63 = v60;
          goto LABEL_34;
        }

        if (v220 <= v60 + 1)
        {
          v64 = v60 + 1;
        }

        else
        {
          v64 = v220;
        }

        v65 = v64 - 1;
        v66 = v233;
        do
        {
          v63 = v60 + 1;
          if (__OFADD__(v60, 1))
          {
            __break(1u);
LABEL_221:
            __break(1u);
LABEL_222:
            __break(1u);
LABEL_223:
            __break(1u);
            goto LABEL_224;
          }

          if (v63 >= v220)
          {
            v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
            (*(*(v93 - 8) + 56))(v66, 1, 1, v93);
            v59 = 0;
            v60 = v65;
            goto LABEL_35;
          }

          v59 = *(v221 + 8 * v63);
          ++v60;
        }

        while (!v59);
        v60 = v63;
LABEL_34:
        v67 = __clz(__rbit64(v59));
        v59 &= v59 - 1;
        v68 = v67 | (v63 << 6);
        v69 = v228;
        v70 = v237;
        sub_1ADDDE768(*(v228 + 48) + *(v238 + 72) * v68, v237);
        v71 = v243;
        v72 = v239;
        v73 = v248;
        (*(v243 + 16))(v239, *(v69 + 56) + *(v243 + 72) * v68, v248);
        v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
        v75 = *(v74 + 48);
        v76 = v70;
        v66 = v233;
        sub_1ADDD8010(v76, v233);
        (*(v71 + 32))(v66 + v75, v72, v73);
        (*(*(v74 - 8) + 56))(v66, 0, 1, v74);
        v23 = v232;
        v61 = v245;
LABEL_35:
        v77 = v227;
        sub_1ADFBA458(v66, v227);
        v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
        v230 = *(v78 - 8);
        v240 = *(v230 + 48);
        v79 = v240(v77, 1, v78);
        v80 = v244;
        v241 = v78;
        if (v79 == 1)
        {

          if (v224 != *(v229 + 16))
          {
            v61 |= 2uLL;
          }

          goto LABEL_64;
        }

        v81 = *v247;
        v82 = v235;
        (*v247)(v235, v77 + *(v78 + 48), v248);
        sub_1ADDD8010(v77, v23);
        v83 = v229;
        if (!*(v229 + 16) || (v84 = sub_1ADDD8A6C(v23), (v85 & 1) == 0))
        {
          sub_1ADDF1F8C(v23);
          v61 = v245 | 1;
          v62 = *v246;
          goto LABEL_23;
        }

        v86 = *(v83 + 56) + *(v243 + 72) * v84;
        v87 = v219;
        v88 = v248;
        (*(v243 + 16))(v219, v86, v248);
        sub_1ADDF1F8C(v23);
        v89 = v223;
        v81(v223, v87, v88);
        if (sub_1AE23C0BC())
        {
          v90 = sub_1AE23C04C();
          v91 = 2 * (v90 != sub_1AE23C04C());
          v92 = v89;
        }

        else
        {
          v94 = sub_1AE23C04C();
          if (sub_1AE23C04C() < v94 && (sub_1AE23C0BC() & 1) != 0)
          {
            v91 = 1;
          }

          else
          {
            v91 = 3;
          }

          v92 = v223;
        }

        v80 = v244;
        v23 = v232;
        v95 = v224;
        v62 = *v246;
        (*v246)(v92, v248);
        v96 = __OFADD__(v95, 1);
        v97 = v95 + 1;
        if (v96)
        {
          goto LABEL_222;
        }

        v224 = v97;
        v61 = v91 | v245;
        v82 = v235;
LABEL_23:
        v62(v82, v248);
      }

      while (v61 != 3);

LABEL_64:
      v102 = *(v225 + 64);
      v221 = v225 + 64;
      v103 = 1 << *(v225 + 32);
      if (v103 < 64)
      {
        v104 = ~(-1 << v103);
      }

      else
      {
        v104 = -1;
      }

      v105 = v104 & v102;
      v220 = (v103 + 63) >> 6;
      v230 += 56;

      v224 = 0;
      v106 = 0;
      v107 = v231;
      while (1)
      {
        v245 = v61;
        if (v105)
        {
          v109 = v106;
LABEL_80:
          v112 = __clz(__rbit64(v105));
          v105 &= v105 - 1;
          v113 = v112 | (v109 << 6);
          v114 = v225;
          v115 = v237;
          sub_1ADDDE768(*(v225 + 48) + *(v238 + 72) * v113, v237);
          v116 = v243;
          v117 = *(v114 + 56) + *(v243 + 72) * v113;
          v118 = v239;
          v119 = v248;
          (*(v243 + 16))(v239, v117, v248);
          v120 = v241;
          v121 = *(v241 + 48);
          v122 = v115;
          v107 = v231;
          sub_1ADDD8010(v122, v231);
          (*(v116 + 32))(v107 + v121, v118, v119);
          v123 = 0;
          v80 = v244;
        }

        else
        {
          v110 = v220 <= v106 + 1 ? v106 + 1 : v220;
          v111 = v110 - 1;
          while (1)
          {
            v109 = v106 + 1;
            if (__OFADD__(v106, 1))
            {
              goto LABEL_221;
            }

            if (v109 >= v220)
            {
              break;
            }

            v105 = *(v221 + 8 * v109);
            ++v106;
            if (v105)
            {
              v106 = v109;
              goto LABEL_80;
            }
          }

          v105 = 0;
          v123 = 1;
          v106 = v111;
          v120 = v241;
        }

        (*v230)(v107, v123, 1, v120);
        v124 = v226;
        sub_1ADFBA458(v107, v226);
        if (v240(v124, 1, v120) == 1)
        {
          break;
        }

        v125 = *v247;
        v126 = v124 + *(v120 + 48);
        v127 = v234;
        (*v247)(v234, v126, v248);
        sub_1ADDD8010(v124, v80);
        if (*(v236 + 16) && (v128 = sub_1ADDD8A6C(v80), (v129 & 1) != 0))
        {
          v130 = v218;
          v131 = v248;
          (*(v243 + 16))(v218, *(v236 + 56) + *(v243 + 72) * v128, v248);
          sub_1ADDF1F8C(v80);
          v132 = v222;
          v125(v222, v130, v131);
          if (sub_1AE23C0BC())
          {
            v133 = sub_1AE23C04C();
            v134 = 2 * (v133 != sub_1AE23C04C());
            v135 = v132;
          }

          else
          {
            v136 = sub_1AE23C04C();
            if (sub_1AE23C04C() < v136 && (sub_1AE23C0BC() & 1) != 0)
            {
              v134 = 1;
            }

            else
            {
              v134 = 3;
            }

            v135 = v222;
          }

          v80 = v244;
          v107 = v231;
          v108 = *v246;
          (*v246)(v135, v248);
          if (__OFADD__(v224, 1))
          {
            goto LABEL_223;
          }

          ++v224;
          v61 = v134 | v245;
          v127 = v234;
        }

        else
        {
          sub_1ADDF1F8C(v80);
          v61 = v245 | 1;
          v108 = *v246;
        }

        v108(v127, v248);
        if (v61 == 3)
        {
          v50 = v225;

          sub_1ADE42CB8(v50, v228);
          sub_1ADDCC35C(v217, v216);
          v23 = v232;
          v45 = v215;
          v46 = v212;
          goto LABEL_16;
        }
      }

      v137 = v225;

      v138 = *(v236 + 16);
      sub_1ADE42CB8(v137, v228);
      sub_1ADDCC35C(v217, v216);
      v23 = v232;
      v45 = v215;
      v46 = v212;
      if (v224 == v138 && (v245 & 2) == 0)
      {
LABEL_212:
        sub_1ADE42CB8(v236, v229);
        v193 = v210;
        v192 = &v243;
        goto LABEL_213;
      }

LABEL_16:
      if (++v45 == v213)
      {
        goto LABEL_218;
      }
    }

    v98 = v55 >> 62;
    if (v55 >> 62 != 3)
    {
      break;
    }

    if (v54)
    {
      v99 = 0;
    }

    else
    {
      v99 = v55 == 0xC000000000000000;
    }

    v101 = !v99 || v46 < 3;
    if ((v101 | v207))
    {
      goto LABEL_107;
    }

    sub_1ADE42CB8(v236, v229);
    v193 = 0;
    v194 = 0xC000000000000000;
LABEL_214:
    sub_1ADDCC35C(v193, v194);
    v36 = v209;
    a1 = v199;
    v37 = v197;
    result = v200;
    if (v209 == v198)
    {
      return result;
    }
  }

  if (v98 > 1)
  {
    if (v98 != 2)
    {
LABEL_107:
      v139 = 0;
      if (v46 > 1)
      {
        goto LABEL_108;
      }

      goto LABEL_104;
    }

    v141 = *(v54 + 16);
    v140 = *(v54 + 24);
    v96 = __OFSUB__(v140, v141);
    v139 = v140 - v141;
    if (v96)
    {
      goto LABEL_227;
    }

    if (v46 <= 1)
    {
      goto LABEL_104;
    }
  }

  else
  {
    if (!v98)
    {
      v139 = BYTE6(v55);
      if (v46 > 1)
      {
        goto LABEL_108;
      }

LABEL_104:
      v142 = v208;
      if (v46)
      {
        v142 = v205;
        if (v206)
        {
          goto LABEL_225;
        }
      }

      goto LABEL_110;
    }

    LODWORD(v139) = HIDWORD(v54) - v54;
    if (__OFSUB__(HIDWORD(v54), v54))
    {
      goto LABEL_226;
    }

    v139 = v139;
    if (v46 <= 1)
    {
      goto LABEL_104;
    }
  }

LABEL_108:
  if (v46 != 2)
  {
    if (!v139)
    {
      goto LABEL_212;
    }

    goto LABEL_16;
  }

  v144 = *(v210 + 16);
  v143 = *(v210 + 24);
  v96 = __OFSUB__(v143, v144);
  v142 = v143 - v144;
  if (v96)
  {
LABEL_224:
    __break(1u);
LABEL_225:
    __break(1u);
LABEL_226:
    __break(1u);
LABEL_227:
    __break(1u);
LABEL_228:
    __break(1u);
LABEL_229:
    __break(1u);
LABEL_230:
    __break(1u);
LABEL_231:
    __break(1u);
LABEL_232:
    __break(1u);
LABEL_233:
    __break(1u);
LABEL_234:
    __break(1u);
LABEL_235:
    __break(1u);
LABEL_236:
    __break(1u);
LABEL_237:
    __break(1u);
LABEL_238:
    __break(1u);
LABEL_239:
    __break(1u);
LABEL_240:
    __break(1u);
    goto LABEL_241;
  }

LABEL_110:
  if (v139 != v142)
  {
    goto LABEL_16;
  }

  if (v139 < 1)
  {
    goto LABEL_212;
  }

  if (v98 <= 1)
  {
    if (!v98)
    {
      __s1[0] = v54;
      LOWORD(__s1[1]) = v55;
      BYTE2(__s1[1]) = BYTE2(v55);
      BYTE3(__s1[1]) = BYTE3(v55);
      BYTE4(__s1[1]) = BYTE4(v55);
      BYTE5(__s1[1]) = BYTE5(v55);
      if (v46)
      {
        v217 = v54;
        if (v46 == 1)
        {
          if (v202 >= v204)
          {
            sub_1ADE42C78(0, v228);
            sub_1ADDD86D8(v54, v55);
            v145 = sub_1AE23BB7C();
            if (!v145)
            {
              goto LABEL_261;
            }

            v146 = v145;
            v147 = sub_1AE23BBAC();
            if (!__OFSUB__(v204, v147))
            {
              v148 = (v204 - v147 + v146);
              v149 = sub_1AE23BB9C();
              if (!v148)
              {
                goto LABEL_260;
              }

              goto LABEL_180;
            }

            goto LABEL_237;
          }

          goto LABEL_231;
        }

        v168 = *(v210 + 16);
        v169 = *(v210 + 24);
        sub_1ADE42C78(0, v228);
        v216 = v55;
        sub_1ADDD86D8(v54, v55);
        v164 = sub_1AE23BB7C();
        if (v164)
        {
          v170 = sub_1AE23BBAC();
          if (__OFSUB__(v168, v170))
          {
LABEL_241:
            __break(1u);
LABEL_242:
            __break(1u);
LABEL_243:
            __break(1u);
LABEL_244:
            __break(1u);
LABEL_245:
            __break(1u);
LABEL_246:
            __break(1u);
          }

          v164 += v168 - v170;
        }

        v96 = __OFSUB__(v169, v168);
        v166 = v169 - v168;
        if (v96)
        {
          goto LABEL_235;
        }

        v167 = sub_1AE23BB9C();
        v46 = v212;
        if (!v164)
        {
          goto LABEL_259;
        }

        goto LABEL_172;
      }

      goto LABEL_165;
    }

    if (v54 > v54 >> 32)
    {
      goto LABEL_228;
    }

    sub_1ADE42C78(0, v228);
    v217 = v54;
    sub_1ADDD86D8(v54, v55);
    v151 = sub_1AE23BB7C();
    if (v151)
    {
      v159 = sub_1AE23BBAC();
      if (__OFSUB__(v54, v159))
      {
        goto LABEL_230;
      }

      v151 += v54 - v159;
    }

    sub_1AE23BB9C();
    if (v46 != 2)
    {
      if (v46 == 1)
      {
        v216 = v55;
        if (v202 < v204)
        {
          goto LABEL_239;
        }

        v153 = sub_1AE23BB7C();
        if (v153)
        {
          v160 = sub_1AE23BBAC();
          if (__OFSUB__(v204, v160))
          {
            goto LABEL_246;
          }

          v153 += v204 - v160;
        }

        v155 = v229;
        v161 = sub_1AE23BB9C();
        v157 = v201;
        if (v161 < v201)
        {
          v157 = v161;
        }

        if (!v151)
        {
          goto LABEL_258;
        }

        v158 = v236;
        if (!v153)
        {
          goto LABEL_257;
        }

        goto LABEL_155;
      }

      LODWORD(__s1[0]) = v210;
      BYTE4(__s1[0]) = v203;
      *(__s1 + 5) = *(&v210 + 5);
      HIBYTE(__s1[0]) = HIBYTE(v210);
      LODWORD(__s1[1]) = v211;
      WORD2(__s1[1]) = WORD2(v211);
      if (!v151)
      {
        goto LABEL_250;
      }

LABEL_210:
      v179 = __s1;
      v178 = v151;
      v177 = v208;
      goto LABEL_211;
    }

    v216 = v55;
    v215 = v45;
    v185 = *(v210 + 16);
    v186 = *(v210 + 24);
    v153 = sub_1AE23BB7C();
    if (v153)
    {
      v187 = sub_1AE23BBAC();
      if (__OFSUB__(v185, v187))
      {
        goto LABEL_244;
      }

      v153 += v185 - v187;
    }

    v96 = __OFSUB__(v186, v185);
    v188 = v186 - v185;
    if (v96)
    {
      goto LABEL_240;
    }

    v189 = sub_1AE23BB9C();
    if (v189 >= v188)
    {
      v157 = v188;
    }

    else
    {
      v157 = v189;
    }

    v46 = v212;
    if (!v151)
    {
      goto LABEL_254;
    }

    v195 = v229;
    v158 = v236;
    v45 = v215;
    if (!v153)
    {
      goto LABEL_253;
    }

LABEL_205:
    if (v151 != v153)
    {
LABEL_206:
      v171 = v157;
      v172 = v151;
      v173 = v153;
      goto LABEL_207;
    }

LABEL_216:
    sub_1ADE42CB8(v158, v195);
    sub_1ADDCC35C(v210, v211);
    sub_1ADE42CB8(0, v228);
    v193 = v217;
    v192 = &v248;
LABEL_213:
    v194 = *(v192 - 32);
    goto LABEL_214;
  }

  if (v98 != 2)
  {
    memset(__s1, 0, 14);
    if (v46)
    {
      v217 = v54;
      if (v46 != 2)
      {
        if (v202 >= v204)
        {
          sub_1ADE42C78(0, v228);
          sub_1ADDD86D8(v54, v55);
          v174 = sub_1AE23BB7C();
          if (!v174)
          {
            goto LABEL_251;
          }

          v175 = v174;
          v176 = sub_1AE23BBAC();
          if (!__OFSUB__(v204, v176))
          {
            v148 = (v204 - v176 + v175);
            v149 = sub_1AE23BB9C();
            if (!v148)
            {
              goto LABEL_252;
            }

LABEL_180:
            if (v149 >= v201)
            {
              v177 = v201;
            }

            else
            {
              v177 = v149;
            }

            v178 = __s1;
            v179 = v148;
LABEL_211:
            v191 = memcmp(v178, v179, v177);
            sub_1ADE42CB8(0, v228);
            sub_1ADDCC35C(v217, v55);
            if (!v191)
            {
              goto LABEL_212;
            }

            goto LABEL_16;
          }

          goto LABEL_236;
        }

        goto LABEL_232;
      }

      v162 = *(v210 + 16);
      v163 = *(v210 + 24);
      sub_1ADE42C78(0, v228);
      v216 = v55;
      sub_1ADDD86D8(v54, v55);
      v164 = sub_1AE23BB7C();
      if (v164)
      {
        v165 = sub_1AE23BBAC();
        if (__OFSUB__(v162, v165))
        {
          goto LABEL_242;
        }

        v164 += v162 - v165;
      }

      v96 = __OFSUB__(v163, v162);
      v166 = v163 - v162;
      if (v96)
      {
        goto LABEL_233;
      }

      v167 = sub_1AE23BB9C();
      v46 = v212;
      if (!v164)
      {
        goto LABEL_255;
      }

LABEL_172:
      if (v167 >= v166)
      {
        v171 = v166;
      }

      else
      {
        v171 = v167;
      }

      v172 = __s1;
      v173 = v164;
LABEL_207:
      v190 = memcmp(v172, v173, v171);
      sub_1ADE42CB8(0, v228);
      sub_1ADDCC35C(v217, v216);
      if (!v190)
      {
        goto LABEL_212;
      }

      goto LABEL_16;
    }

LABEL_165:
    __s2 = v210;
    v250 = v203;
    v251 = *(&v210 + 5);
    v252 = HIBYTE(v210);
    v253 = v211;
    v254 = WORD2(v211);
    if (!memcmp(__s1, &__s2, v208))
    {
      goto LABEL_212;
    }

    goto LABEL_16;
  }

  v150 = *(v54 + 16);
  sub_1ADE42C78(0, v228);
  v217 = v54;
  sub_1ADDD86D8(v54, v55);
  v151 = sub_1AE23BB7C();
  if (v151)
  {
    v152 = sub_1AE23BBAC();
    if (__OFSUB__(v150, v152))
    {
      goto LABEL_229;
    }

    v151 += v150 - v152;
  }

  sub_1AE23BB9C();
  if (v46 == 2)
  {
    v216 = v55;
    v215 = v45;
    v180 = *(v210 + 16);
    v181 = *(v210 + 24);
    v153 = sub_1AE23BB7C();
    if (v153)
    {
      v182 = sub_1AE23BBAC();
      if (__OFSUB__(v180, v182))
      {
        goto LABEL_243;
      }

      v153 += v180 - v182;
    }

    v96 = __OFSUB__(v181, v180);
    v183 = v181 - v180;
    if (v96)
    {
      goto LABEL_238;
    }

    v184 = sub_1AE23BB9C();
    if (v184 >= v183)
    {
      v157 = v183;
    }

    else
    {
      v157 = v184;
    }

    v46 = v212;
    if (!v151)
    {
      goto LABEL_249;
    }

    v195 = v229;
    v158 = v236;
    v45 = v215;
    if (!v153)
    {
      goto LABEL_248;
    }

    goto LABEL_205;
  }

  if (v46 != 1)
  {
    LODWORD(__s1[0]) = v210;
    BYTE4(__s1[0]) = v203;
    *(__s1 + 5) = *(&v210 + 5);
    HIBYTE(__s1[0]) = HIBYTE(v210);
    LODWORD(__s1[1]) = v211;
    WORD2(__s1[1]) = WORD2(v211);
    if (!v151)
    {
      goto LABEL_256;
    }

    goto LABEL_210;
  }

  v216 = v55;
  if (v202 < v204)
  {
    goto LABEL_234;
  }

  v153 = sub_1AE23BB7C();
  if (v153)
  {
    v154 = sub_1AE23BBAC();
    if (__OFSUB__(v204, v154))
    {
      goto LABEL_245;
    }

    v153 += v204 - v154;
  }

  v155 = v229;
  v156 = sub_1AE23BB9C();
  v157 = v201;
  if (v156 < v201)
  {
    v157 = v156;
  }

  if (!v151)
  {
    goto LABEL_247;
  }

  v158 = v236;
  if (v153)
  {
LABEL_155:
    if (v151 != v153)
    {
      goto LABEL_206;
    }

    v195 = v155;
    goto LABEL_216;
  }

  __break(1u);
LABEL_247:
  __break(1u);
LABEL_248:
  __break(1u);
LABEL_249:
  __break(1u);
LABEL_250:
  __break(1u);
LABEL_251:
  sub_1AE23BB9C();
LABEL_252:
  __break(1u);
LABEL_253:
  __break(1u);
LABEL_254:
  __break(1u);
LABEL_255:
  __break(1u);
LABEL_256:
  __break(1u);
LABEL_257:
  __break(1u);
LABEL_258:
  __break(1u);
LABEL_259:
  __break(1u);
LABEL_260:
  __break(1u);
LABEL_261:
  result = sub_1AE23BB9C();
  __break(1u);
  return result;
}

void sub_1ADFB8BD0(_WORD *a2@<X8>)
{
  v163 = a2;
  v209 = sub_1AE23C12C();
  v3 = *(v209 - 8);
  MEMORY[0x1EEE9AC00](v209);
  v179 = &v161 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v183 = &v161 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v204 = &v161 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v180 = &v161 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v184 = &v161 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v205 = &v161 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v196 = &v161 - v16;
  v17 = type metadata accessor for Replica(0);
  v195 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v161 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v161 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v194 = &v161 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA458, &qword_1AE251E00);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v161 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v161 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v161 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v161 - v35;
  v162 = v2;
  v210 = *v2;

  sub_1ADFB6944(v37);
  v40 = sub_1ADF7E5D8(v210, v38, v39);

  v41 = v40 + 56;
  v42 = 1 << *(v40 + 32);
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  else
  {
    v43 = -1;
  }

  v171 = v43 & *(v40 + 56);
  v44 = (v42 + 63) >> 6;
  v202 = v3 + 16;
  v203 = v3;
  v208 = (v3 + 32);
  v206 = (v3 + 8);
  v178 = v40;

  v45 = v44;
  v46 = 0;
  v47 = MEMORY[0x1E69E7CC0];
  v201 = v22;
  v172 = v40 + 56;
  v166 = v44;
  v192 = v27;
  v193 = v19;
  v187 = v30;
  v190 = v36;
  v191 = v33;
  while (1)
  {
    v48 = v46;
    v49 = v205;
LABEL_6:
    v50 = v171;
    if (!v171)
    {
      break;
    }

    v51 = v48;
    v52 = v178;
LABEL_12:
    v168 = v47;
    v171 = (v50 - 1) & v50;
    v53 = *(v52 + 48);
    v169 = v51;
    v54 = (v53 + ((v51 << 11) | (32 * __clz(__rbit64(v50)))));
    v55 = v54[1];
    v167 = *v54;
    v56 = v167;
    v173 = v55;
    v57 = *(&v55 + 1);
    if (v167)
    {
      v58 = v49;
      v59 = *(&v167 + 1);
      v60 = 1 << *(v52 + 32);
      if (v60 < 64)
      {
        v61 = ~(-1 << v60);
      }

      else
      {
        v61 = -1;
      }

      v62 = v30;
      v63 = v27;
      v64 = v61 & *(v52 + 56);

      v200 = v56;
      v197 = v59;
      v65 = v59;
      v49 = v58;
      sub_1ADE42C78(v56, v65);
      v164 = v173;
      v165 = v57;
      sub_1ADDD86D8(v173, v57);
      v66 = v178;
      v67 = v64;
      v27 = v63;
      v30 = v62;
      v68 = 0;
      v170 = (v60 + 63) >> 6;
LABEL_17:
      while (v67)
      {
LABEL_22:
        v70 = __clz(__rbit64(v67));
        v67 &= v67 - 1;
        v71 = (*(v66 + 48) + ((v68 << 11) | (32 * v70)));
        v72 = *v71;
        if (*v71)
        {
          v176 = v68;
          v177 = v67;
          v74 = v71[1];
          v73 = v71[2];
          v75 = v71[3];
          v76 = *(v74 + 64);
          v185 = v74 + 64;
          v77 = 1 << *(v74 + 32);
          if (v77 < 64)
          {
            v78 = ~(-1 << v77);
          }

          else
          {
            v78 = -1;
          }

          v79 = v78 & v76;
          v186 = v72;
          sub_1ADE42C78(v72, v74);
          v175 = v73;
          v174 = v75;
          sub_1ADDD86D8(v73, v75);
          v182 = (v77 + 63) >> 6;
          v188 = v74;

          v189 = 0;
          v80 = 0;
          v199 = 0;
          while (v79)
          {
            v85 = v80;
            v86 = v191;
LABEL_39:
            v89 = __clz(__rbit64(v79));
            v79 &= v79 - 1;
            v90 = v89 | (v85 << 6);
            v91 = v188;
            v92 = v194;
            sub_1ADDDE768(*(v188 + 48) + *(v195 + 72) * v90, v194);
            v93 = v203;
            v94 = v196;
            v95 = v209;
            (*(v203 + 16))(v196, *(v91 + 56) + *(v203 + 72) * v90, v209);
            v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
            v97 = *(v96 + 48);
            sub_1ADDD8010(v92, v86);
            (*(v93 + 32))(v86 + v97, v94, v95);
            (*(*(v96 - 8) + 56))(v86, 0, 1, v96);
            v49 = v205;
            v22 = v201;
LABEL_40:
            v98 = v190;
            sub_1ADFBA458(v86, v190);
            v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
            v99 = *(v84 - 8);
            v198 = *(v99 + 48);
            v100 = v198(v98, 1, v84);
            v207 = v84;
            if (v100 == 1)
            {

              if (v189 == *(v197 + 16))
              {
                v114 = v199;
              }

              else
              {
                v114 = v199 | 2;
              }

              goto LABEL_57;
            }

            v101 = *(v84 + 48);
            v102 = *v208;
            (*v208)(v49, v98 + v101, v209);
            sub_1ADDD8010(v98, v22);
            if (*(v197 + 16) && (v103 = sub_1ADDD8A6C(v22), (v104 & 1) != 0))
            {
              v105 = v180;
              v106 = v209;
              (*(v203 + 16))(v180, *(v197 + 56) + *(v203 + 72) * v103, v209);
              sub_1ADDF1F8C(v22);
              v107 = v184;
              v108 = v105;
              v49 = v205;
              v102(v184, v108, v106);
              if (sub_1AE23C0BC())
              {
                v109 = sub_1AE23C04C();
                v110 = 2 * (v109 != sub_1AE23C04C());
                v111 = v107;
              }

              else
              {
                v113 = sub_1AE23C04C();
                if (sub_1AE23C04C() < v113 && (sub_1AE23C0BC() & 1) != 0)
                {
                  v110 = 1;
                }

                else
                {
                  v110 = 3;
                }

                v111 = v184;
              }

              v22 = v201;
              v82 = *v206;
              (*v206)(v111, v209);
              if (__OFADD__(v189, 1))
              {
                goto LABEL_103;
              }

              v189 = (v189 + 1);
              v81 = v110 | v199;
            }

            else
            {
              sub_1ADDF1F8C(v22);
              v81 = v199 | 1;
              v82 = *v206;
            }

            v82(v49, v209);
            v199 = v81;
            v83 = v81 == 3;
            v84 = v207;
            if (v83)
            {

              v114 = 3;
LABEL_57:
              v115 = *(v186 + 64);
              v182 = v186 + 64;
              v116 = 1 << *(v186 + 32);
              if (v116 < 64)
              {
                v117 = ~(-1 << v116);
              }

              else
              {
                v117 = -1;
              }

              v118 = v117 & v115;
              v181 = (v116 + 63) >> 6;
              v189 = (v99 + 56);

              v185 = 0;
              v119 = 0;
              v120 = v193;
              while (1)
              {
                if (!v118)
                {
                  if (v181 <= v119 + 1)
                  {
                    v123 = v119 + 1;
                  }

                  else
                  {
                    v123 = v181;
                  }

                  v124 = v123 - 1;
                  while (1)
                  {
                    v122 = v119 + 1;
                    if (__OFADD__(v119, 1))
                    {
                      goto LABEL_101;
                    }

                    if (v122 >= v181)
                    {
                      v118 = 0;
                      v136 = 1;
                      v119 = v124;
                      v135 = v192;
                      goto LABEL_74;
                    }

                    v118 = *(v182 + 8 * v122);
                    ++v119;
                    if (v118)
                    {
                      v199 = v114;
                      v119 = v122;
                      goto LABEL_73;
                    }
                  }
                }

                v199 = v114;
                v122 = v119;
LABEL_73:
                v125 = __clz(__rbit64(v118));
                v118 &= v118 - 1;
                v126 = v125 | (v122 << 6);
                v127 = v186;
                v128 = v194;
                sub_1ADDDE768(*(v186 + 48) + *(v195 + 72) * v126, v194);
                v129 = v203;
                v130 = *(v127 + 56) + *(v203 + 72) * v126;
                v131 = v196;
                v132 = v209;
                (*(v203 + 16))(v196, v130, v209);
                v84 = v207;
                v133 = *(v207 + 48);
                v134 = v128;
                v135 = v192;
                sub_1ADDD8010(v134, v192);
                (*(v129 + 32))(v135 + v133, v131, v132);
                v136 = 0;
                v120 = v193;
                v22 = v201;
                v114 = v199;
LABEL_74:
                (*v189)(v135, v136, 1, v84);
                v137 = v187;
                sub_1ADFBA458(v135, v187);
                if (v198(v137, 1, v84) == 1)
                {
                  break;
                }

                v138 = *(v84 + 48);
                v139 = *v208;
                (*v208)(v204, v137 + v138, v209);
                sub_1ADDD8010(v137, v120);
                v49 = v205;
                if (*(v200 + 16) && (v140 = sub_1ADDD8A6C(v120), (v141 & 1) != 0))
                {
                  v142 = v179;
                  v143 = v209;
                  (*(v203 + 16))(v179, *(v200 + 56) + *(v203 + 72) * v140, v209);
                  sub_1ADDF1F8C(v120);
                  v144 = v183;
                  v139(v183, v142, v143);
                  if (sub_1AE23C0BC())
                  {
                    v145 = sub_1AE23C04C();
                    v146 = 2 * (v145 != sub_1AE23C04C());
                    v147 = v144;
                  }

                  else
                  {
                    v148 = sub_1AE23C04C();
                    if (sub_1AE23C04C() < v148 && (sub_1AE23C0BC() & 1) != 0)
                    {
                      v146 = 1;
                    }

                    else
                    {
                      v146 = 3;
                    }

                    v147 = v183;
                  }

                  v49 = v205;
                  v120 = v193;
                  v22 = v201;
                  v121 = *v206;
                  (*v206)(v147, v209);
                  if (__OFADD__(v185, 1))
                  {
                    goto LABEL_104;
                  }

                  ++v185;
                  v114 |= v146;
                }

                else
                {
                  sub_1ADDF1F8C(v120);
                  v114 |= 1uLL;
                  v121 = *v206;
                }

                v121(v204, v209);
                v84 = v207;
                if (v114 == 3)
                {
                  v151 = v186;

                  sub_1ADE42CB8(v151, v188);
                  sub_1ADDCC35C(v175, v174);
                  v27 = v192;
                  v30 = v187;
                  v66 = v178;
                  v67 = v177;
                  v68 = v176;
                  goto LABEL_17;
                }
              }

              v149 = v186;

              v150 = *(v200 + 16);
              sub_1ADE42CB8(v149, v188);
              sub_1ADDCC35C(v175, v174);
              v27 = v192;
              v30 = v137;
              v66 = v178;
              v67 = v177;
              v68 = v176;
              v49 = v205;
              if (v185 == v150 && v114 == 1)
              {

                sub_1ADE42CB8(v200, v197);
                sub_1ADDCC35C(v164, v165);
                v48 = v169;
                v41 = v172;
                v45 = v166;
                v47 = v168;
                goto LABEL_6;
              }

              goto LABEL_17;
            }
          }

          if (v182 <= v80 + 1)
          {
            v87 = v80 + 1;
          }

          else
          {
            v87 = v182;
          }

          v88 = v87 - 1;
          v86 = v191;
          while (1)
          {
            v85 = v80 + 1;
            if (__OFADD__(v80, 1))
            {
              break;
            }

            if (v85 >= v182)
            {
              v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
              (*(*(v112 - 8) + 56))(v86, 1, 1, v112);
              v79 = 0;
              v80 = v88;
              goto LABEL_40;
            }

            v79 = *(v185 + 8 * v85);
            ++v80;
            if (v79)
            {
              v80 = v85;
              goto LABEL_39;
            }
          }

          __break(1u);
LABEL_101:
          __break(1u);
          goto LABEL_102;
        }
      }

      while (1)
      {
        v69 = v68 + 1;
        if (__OFADD__(v68, 1))
        {
          break;
        }

        if (v69 >= v170)
        {

          goto LABEL_92;
        }

        v67 = *(v172 + 8 * v69);
        ++v68;
        if (v67)
        {
          v68 = v69;
          goto LABEL_22;
        }
      }

LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

    sub_1ADE42C78(0, *(&v167 + 1));
    sub_1ADDD86D8(v173, v57);
LABEL_92:
    v152 = v168;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v152;
    v210 = v152;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1ADE6F09C(0, *(v152 + 16) + 1, 1);
      v47 = v210;
    }

    v41 = v172;
    v45 = v166;
    v46 = v169;
    v154 = v173;
    v156 = *(v47 + 16);
    v155 = *(v47 + 24);
    if (v156 >= v155 >> 1)
    {
      sub_1ADE6F09C((v155 > 1), v156 + 1, 1);
      v154 = v173;
      v46 = v169;
      v45 = v166;
      v41 = v172;
      v47 = v210;
    }

    *(v47 + 16) = v156 + 1;
    v157 = v47 + 32 * v156;
    *(v157 + 48) = v154;
    *(v157 + 32) = v167;
  }

  v52 = v178;
  while (1)
  {
    v51 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      break;
    }

    if (v51 >= v45)
    {
      v158 = v47;

      *v162 = v158;
      if (qword_1EB5B9528 != -1)
      {
        goto LABEL_106;
      }

      goto LABEL_99;
    }

    v50 = *(v41 + 8 * v51);
    ++v48;
    if (v50)
    {
      goto LABEL_12;
    }
  }

LABEL_105:
  __break(1u);
LABEL_106:
  swift_once();
LABEL_99:
  v159 = byte_1EB5D74C2;
  v160 = v163;
  *v163 = word_1EB5D74C0;
  *(v160 + 2) = v159;
}

void sub_1ADFB9C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1ADDFCC74(a1, a2, a3);
  if (!v3)
  {
    v6 = *(a2 + 16);
    if (v6)
    {
      v21 = MEMORY[0x1E69E7CC0];
      v20 = v5;

      sub_1ADE6F07C(0, v6, 0);
      v7 = v21;
      v8 = (a2 + 56);
      do
      {
        v9 = *(v8 - 3);
        v10 = *(v8 - 2);
        v11 = *(v8 - 1);
        v12 = *v8;
        sub_1ADE42C78(v9, v10);
        sub_1ADDD86D8(v11, v12);
        sub_1ADDD86D8(v11, v12);
        sub_1ADDCC35C(0, 0xC000000000000000);
        if (v9)
        {
          sub_1ADDF5C7C(*(v20 + 16));
          v14 = v13;
          v16 = v15;
          sub_1ADE42CB8(0, 0);
          sub_1ADE42CB8(v9, v10);
          sub_1ADDCC35C(v11, v12);
        }

        else
        {
          sub_1ADE42CB8(0, v10);
          sub_1ADDCC35C(v11, v12);
          v14 = 0;
          v16 = 0;
        }

        v18 = *(v21 + 16);
        v17 = *(v21 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_1ADE6F07C((v17 > 1), v18 + 1, 1);
        }

        v8 += 4;
        *(v21 + 16) = v18 + 1;
        v19 = (v21 + 32 * v18);
        v19[4] = v11;
        v19[5] = v12;
        v19[6] = v14;
        v19[7] = v16;
        --v6;
      }

      while (v6);
    }

    else
    {

      v7 = MEMORY[0x1E69E7CC0];
    }

    swift_beginAccess();
    sub_1AE1B6F64(v7);
    swift_endAccess();
  }
}

uint64_t sub_1ADFB9E50@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t x1_0@<X1>, uint64_t a4@<X2>)
{
  result = sub_1ADFBA168(a1, x1_0, a4);
  if (!v5)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1ADFB9E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ADFB9EB0(a1, a2, a3);
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_1ADFB9EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BBDA8;
  if (!qword_1EB5BBDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BBDA8);
  }

  return result;
}

char *sub_1ADFB9F04(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = sub_1AE23BB7C();
  v8 = result;
  if (result)
  {
    result = sub_1AE23BBAC();
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

  result = sub_1AE23BB9C();
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

BOOL sub_1ADFB9FBC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v7 = *a2;
  v6 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  if (*a1)
  {
    v10 = *a1;
    if (v7)
    {
      sub_1ADE42C78(v10, v2);
      sub_1ADE42C78(v7, v6);
      sub_1ADE42C78(v3, v2);
      sub_1ADF64C74(v2, v6);
      if (v11)
      {
        sub_1ADF64C74(v3, v7);
        v13 = v12;
        sub_1ADE42CB8(v7, v6);

        sub_1ADE42CB8(v3, v2);
        if (v13)
        {
          goto LABEL_14;
        }

        return 0;
      }

      sub_1ADE42CB8(v7, v6);

      v14 = v3;
      v15 = v2;
LABEL_11:
      sub_1ADE42CB8(v14, v15);
      return 0;
    }

    sub_1ADE42C78(v10, v2);
    sub_1ADE42C78(0, v6);
    sub_1ADE42C78(v3, v2);

LABEL_9:
    sub_1ADE42CB8(v3, v2);
    v14 = v7;
    v15 = v6;
    goto LABEL_11;
  }

  sub_1ADE42C78(0, v2);
  if (v7)
  {
    sub_1ADE42C78(v7, v6);
    goto LABEL_9;
  }

  sub_1ADE42C78(0, v6);
  sub_1ADE42CB8(0, v2);
LABEL_14:

  return sub_1ADDD6F8C(v4, v5, v8, v9);
}

uint64_t sub_1ADFBA168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 64))
  {
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    *v25 = 0xD000000000000014;
    *(v25 + 8) = 0x80000001AE25FB50;
    *(v25 + 16) = 0;
    swift_willThrow();

    return v3;
  }

  type metadata accessor for CRDecoder.CRDTContainer();
  inited = swift_initStackObject();
  *(inited + 16) = a1;
  *(inited + 24) = 0;
  *(inited + 32) = 1;

  sub_1ADDE78C8();
  v8 = *(v7 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  v10 = (~v8 & 0xF000000000000007) != 0 && (v8 & 0xF000000000000000) == 0x9000000000000000;
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v11 = *((v8 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  }

  v12 = *(v11 + 16);
  if (!v12)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v26 = a1;
  v30 = v9;
  result = sub_1ADE6F09C(0, v12, 0);
  v14 = 0;
  v3 = v9;
  v15 = (v11 + 56);
  v27 = v12;
  v28 = v11;
  while (v14 < *(v11 + 16))
  {
    v17 = *(v15 - 3);
    v16 = *(v15 - 2);
    v19 = *(v15 - 1);
    v18 = *v15;
    if (v19)
    {

      sub_1ADDD86D8(v17, v16);
      sub_1ADE42C78(v19, v18);
      sub_1ADE42C78(v19, v18);
      sub_1ADDD6748(v19, v18, v26, v29);
      if (v4)
      {

        sub_1ADDCC35C(v17, v16);
        sub_1ADE42CB8(v19, v18);

        return v3;
      }

      v21 = v29[0];
      v20 = v29[1];
    }

    else
    {
      sub_1ADDD86D8(*(v15 - 3), *(v15 - 2));
      sub_1ADE42C78(0, v18);
      v21 = 0;
      v20 = 0;
    }

    sub_1ADDD86D8(v17, v16);
    sub_1ADDCC35C(v17, v16);
    result = sub_1ADE42CB8(v19, v18);
    v30 = v3;
    v23 = *(v3 + 16);
    v22 = *(v3 + 24);
    if (v23 >= v22 >> 1)
    {
      result = sub_1ADE6F09C((v22 > 1), v23 + 1, 1);
      v3 = v30;
    }

    ++v14;
    *(v3 + 16) = v23 + 1;
    v24 = (v3 + 32 * v23);
    v24[4] = v21;
    v24[5] = v20;
    v24[6] = v17;
    v24[7] = v16;
    v15 += 4;
    v11 = v28;
    if (v27 == v14)
    {

      return v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1ADFBA458(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA458, &qword_1AE251E00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ADFBA4D8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_1ADFBA534(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1ADFBA59C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BBDB0[0];
  if (!qword_1EB5BBDB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5BBDB0);
  }

  return result;
}

uint64_t sub_1ADFBA670@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = Array<A>.init(defaultState:)(*(a1 + 16));
  *a2 = result;
  return result;
}

uint64_t Array<A>.isDefaultState.getter(uint64_t a1, uint64_t a2)
{
  sub_1AE23D11C();
  swift_getWitnessTable();
  return sub_1AE23D4CC() & 1;
}

uint64_t sub_1ADFBA714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = Set<>.init(defaultState:)(*(a1 + 16), a2, *(a1 + 24));
  *a3 = result;
  return result;
}

uint64_t Set<>.init(defaultState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AE23D05C();
  if (sub_1AE23D0AC())
  {
    v6 = sub_1AE18F13C(v5, a1, a3);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CD0];
  }

  return v6;
}

BOOL String.isDefaultState.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  return v2 == 0;
}

BOOL sub_1ADFBA82C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v3 == 2)
    {
      v7 = *(v1 + 16);
      v6 = *(v1 + 24);
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }
  }

  else
  {
    v4 = BYTE6(v2);
    v5 = v1;
    v6 = v1 >> 32;
    if (v3)
    {
      v7 = v5;
    }

    else
    {
      v6 = v4;
      v7 = 0;
    }
  }

  return v7 == v6;
}

BOOL Data.isDefaultState.getter(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 == 2)
    {
      v5 = *(a1 + 16);
      v4 = *(a1 + 24);
    }

    else
    {
      v4 = 0;
      v5 = 0;
    }
  }

  else
  {
    v3 = v2 == 0;
    if (v2)
    {
      v4 = a1 >> 32;
    }

    else
    {
      v4 = BYTE6(a2);
    }

    if (v3)
    {
      v5 = 0;
    }

    else
    {
      v5 = a1;
    }
  }

  return v5 == v4;
}

uint64_t sub_1ADFBA91C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = Array<A>.init(defaultState:)(*(a1 + 16));
  *a2 = result;
  return result;
}

uint64_t CRExtensible<>.init(defaultState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, char *a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v15 - v12;
  (*(*(*(a3 + 8) + 8) + 40))(v11);
  return CRExtensible.init(rawValue:)(v13, a1, a2, a3, a4, a5);
}

uint64_t CRExtensible.isDefaultState.getter(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v5 = &v7 - v4;
  CRExtensible.rawValue.getter(a1, &v7 - v4);
  LOBYTE(a1) = (*(*(*(*(a1 + 32) + 8) + 8) + 48))(AssociatedTypeWitness);
  (*(v3 + 8))(v5, AssociatedTypeWitness);
  return a1 & 1;
}

uint64_t RawRepresentable<>.init(defaultState:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = sub_1AE23D7CC();
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v14 - v10;
  (*(a3 + 16))(AssociatedTypeWitness, a3, v9);
  sub_1AE23CF7C();
  v12 = *(a1 - 8);
  result = (*(v12 + 48))(v11, 1, a1);
  if (result != 1)
  {
    return (*(v12 + 32))(a4, v11, a1);
  }

  __break(1u);
  return result;
}

{
  v27 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = sub_1AE23D7CC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - v11;
  result = (*(a3 + 40))(AssociatedTypeWitness, a3, v10);
  if (!v4)
  {
    v14 = v27;
    sub_1AE23CF7C();
    v15 = *(a1 - 8);
    if ((*(v15 + 48))(v12, 1, a1) == 1)
    {
      (*(v9 + 8))(v12, v8);
      v25 = 0;
      v26 = 0xE000000000000000;
      sub_1AE23DA2C();
      v16 = sub_1AE23E40C();
      v18 = v17;

      v25 = v16;
      v26 = v18;
      v19 = MEMORY[0x1B26FB670](0xD000000000000025, 0x80000001AE261D30);
      v20 = v25;
      v21 = v26;
      sub_1ADE42E40(v19, v22, v23);
      swift_allocError();
      *v24 = v20;
      *(v24 + 8) = v21;
      *(v24 + 16) = 0;
      return swift_willThrow();
    }

    else
    {
      return (*(v15 + 32))(v14, v12, a1);
    }
  }

  return result;
}

unint64_t Dictionary<>.init(defaultState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getTupleTypeMetadata2();
  v7 = sub_1AE23D05C();
  v8 = sub_1ADDEAF38(v7, a1, a2, a4);

  return v8;
}

uint64_t RawRepresentable<>.isDefaultState.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v10 - v7;
  sub_1AE23CF6C();
  LOBYTE(a4) = (*(a4 + 48))(AssociatedTypeWitness, a4);
  (*(v6 + 8))(v8, AssociatedTypeWitness);
  return a4 & 1;
}

uint64_t CRExtensible.init(defaultState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v16 - v13;
  result = (*(*(*(a3 + 8) + 8) + 40))(v12);
  if (!v5)
  {
    return CRExtensible.init(rawValue:)(v14, a1, a2, a3, a4, a5);
  }

  return result;
}

unint64_t sub_1ADFBB260@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, unint64_t *a3@<X8>)
{
  result = Dictionary<>.init(defaultState:)(a1[2], a1[3], a2, a1[4]);
  *a3 = result;
  return result;
}

uint64_t sub_1ADFBB2B0@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  swift_getWitnessTable();
  sub_1AE23D7CC();
  WitnessTable = swift_getWitnessTable();
  return RawRepresentable<>.init(defaultState:)(a1, WitnessTable, a3);
}

uint64_t sub_1ADFBB354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  sub_1AE23D7CC();
  v5 = swift_getWitnessTable();
  return RawRepresentable<>.isDefaultState.getter(a1, v6, WitnessTable, v5) & 1;
}

uint64_t CRValue<>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v12 - v9;
  sub_1AE23CF6C();
  (*(a5 + 16))(a1, AssociatedTypeWitness, a5);
  return (*(v8 + 8))(v10, AssociatedTypeWitness);
}

uint64_t CRValue<>.minEncodingVersion.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v10 - v7;
  sub_1AE23CF6C();
  (*(a4 + 24))(AssociatedTypeWitness, a4);
  return (*(v6 + 8))(v8, AssociatedTypeWitness);
}

uint64_t CRExtensible.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a2 - 8) + 32))(a6, a1, a2);
  v11[0] = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  type metadata accessor for CRExtensible(0, v11);
  return swift_storeEnumTagMultiPayload();
}

uint64_t CRExtensible.minEncodingVersion.getter(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v5 = &v7 - v4;
  CRExtensible.rawValue.getter(a1, &v7 - v4);
  (*(*(*(*(a1 + 32) + 8) + 8) + 24))(AssociatedTypeWitness);
  return (*(v3 + 8))(v5, AssociatedTypeWitness);
}

uint64_t sub_1ADFBB828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_1AE23CF8C();
}

uint64_t sub_1ADFBB890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_1AE23CF9C();
}

uint64_t CRExtensible<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X6>, char *a7@<X8>)
{
  v19 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v18[-v14 - 8];
  sub_1ADF4E010(a1, v18);
  sub_1AE23D2BC();
  if (!v7)
  {
    CRExtensible.init(rawValue:)(v15, a2, a3, a4, v19, a7);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CRExtensible<>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v10 - v7;
  CRExtensible.rawValue.getter(a2, &v10 - v7);
  sub_1AE23CBAC();
  return (*(v6 + 8))(v8, AssociatedTypeWitness);
}

uint64_t sub_1ADFBBBDC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(*(a3 + 16) - 8) + 64);
  v6 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v6 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_26;
  }

  v8 = v7 + 1;
  v9 = 8 * (v7 + 1);
  if ((v7 + 1) <= 3)
  {
    v12 = ((a2 + ~(-1 << v9) - 254) >> v9) + 1;
    if (HIWORD(v12))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v12 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v12 < 2)
    {
LABEL_26:
      v14 = *(a1 + v7);
      if (v14 >= 2)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_26;
  }

LABEL_15:
  v13 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v13 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return (v8 | v13) + 255;
}

void sub_1ADFBBD4C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(*(a4 + 16) - 8) + 64);
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v8 <= v7)
  {
    v8 = v7;
  }

  v9 = v8 + 1;
  if (a3 < 0xFF)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 + ~(-1 << (8 * v9)) - 254) >> (8 * v9)) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (a2 > 0xFE)
  {
    v11 = a2 - 255;
    if (v9 >= 4)
    {
      bzero(a1, v8 + 1);
      *a1 = v11;
      v12 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v12 = (v11 >> (8 * v9)) + 1;
    if (v8 != -1)
    {
      v15 = v11 & ~(-1 << (8 * v9));
      bzero(a1, v9);
      if (v9 != 3)
      {
        if (v9 == 2)
        {
          *a1 = v15;
          if (v10 > 1)
          {
LABEL_39:
            if (v10 == 2)
            {
              *&a1[v9] = v12;
            }

            else
            {
              *&a1[v9] = v12;
            }

            return;
          }
        }

        else
        {
          *a1 = v11;
          if (v10 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v10)
        {
          a1[v9] = v12;
        }

        return;
      }

      *a1 = v15;
      a1[2] = BYTE2(v15);
    }

    if (v10 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v10 <= 1)
  {
    if (v10)
    {
      a1[v9] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v8] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v10 == 2)
  {
    *&a1[v9] = 0;
    goto LABEL_24;
  }

  *&a1[v9] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1ADFBBF38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  sub_1AE23D7CC();
  v6 = swift_getWitnessTable();
  return CRValue<>.encode(to:)(a1, a2, v7, WitnessTable, v6);
}

uint64_t sub_1ADFBBFD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  sub_1AE23D7CC();
  v5 = swift_getWitnessTable();
  return CRValue<>.minEncodingVersion.getter(a1, v6, WitnessTable, v5);
}

uint64_t sub_1ADFBC390(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1ADFBC424(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v14 = *(*v13 + 216);
    v15 = v13;
    swift_beginAccess();
    v22 = v2;
    v16 = *(v4 + 16);
    v16(v9, v15 + v14, v3);
    (*(v4 + 32))(v12, v9, v3);
    v17 = *(*v1 + 216);
    swift_beginAccess();
    v16(v6, v1 + v17, v3);
    v18 = (*(*(v22 + 200) + 16))(v12, v3);
    v19 = *(v4 + 8);
    v19(v6, v3);
    v19(v12, v3);
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_1ADFBC674(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 192) - 8) + 32))(v2 + *(*v2 + 216), a1);
  return v2;
}

uint64_t sub_1ADFBC708@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 216);
  swift_beginAccess();
  v5 = *(v3 + 192);
  a1[3] = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v1 + v4, v5);
}

uint64_t sub_1ADFBC7B4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 192);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  v11 = *(v3 + 216);
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v11, v4);
  (*(*(*(v3 + 208) + 8) + 24))(a1, v4);
  (*(v5 + 8))(v7, v4);
  return sub_1ADFBC674(v10);
}

uint64_t sub_1ADFBC970(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 192);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - v6;
  v8 = *(v3 + 216);
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  (*(*(*(v3 + 208) + 8) + 48))(a1, v4);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1ADFBCAC8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - v5;
  v7 = *(v2 + 216);
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v7, v3);
  v8 = (*(*(*(v2 + 208) + 8) + 56))(v3);
  (*(v4 + 8))(v6, v3);
  return v8 & 1;
}

uint64_t sub_1ADFBCC18(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  (*(*(*(v3 + 208) + 8) + 64))(a1, *(v3 + 192));
  return swift_endAccess();
}

uint64_t sub_1ADFBCCC4(uint64_t a1)
{
  v2 = *(*v1 + 192);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v9 - v4;
  v7 = *(v6 + 216);
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v7, v2);
  return sub_1ADFBC674(v5);
}

uint64_t sub_1ADFBCDF0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 192);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - v6;
  v8 = *(v3 + 216);
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  (*(*(*(*(v3 + 208) + 8) + 8) + 16))(a1, v4);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1ADFBCF5C(uint64_t a1)
{
  v2 = *(*v1 + 192);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v10 - v4;
  v7 = *(v6 + 216);
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v7, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BB390, &unk_1AE24FCE0);
  if (swift_dynamicCast())
  {
    __swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
    v8 = sub_1AE23DD9C();
    __swift_destroy_boxed_opaque_existential_1(&v11);
    return v8;
  }

  else
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    sub_1ADDCEDE0(&v11, &unk_1EB5BEB20, &qword_1AE24C510);
    return 0x6D6F435243796E41;
  }
}

uint64_t sub_1ADFBD104(uint64_t a1)
{
  v2 = *(*v1 + 192);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v10 - v4;
  v7 = *(v6 + 216);
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v7, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBE68, &unk_1AE24FCD0);
  if (swift_dynamicCast())
  {
    __swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
    v8 = sub_1AE23E02C();
    __swift_destroy_boxed_opaque_existential_1(&v11);
    return v8;
  }

  else
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    sub_1ADDCEDE0(&v11, qword_1EB5BBE70, &unk_1AE25AA00);
    return 0x6D6F435243796E41;
  }
}

uint64_t sub_1ADFBD2AC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18[-v8];
  v10 = swift_dynamicCastClass();
  if (v10)
  {
    v11 = v10;
    v12 = *(v2 + 216);
    swift_beginAccess();
    v13 = *(v4 + 16);
    v13(v9, &v1[v12], v3);
    v14 = *(*v11 + 216);
    swift_beginAccess();
    v13(v6, (v11 + v14), v3);
    v15 = sub_1AE23CCBC();
    v16 = *(v4 + 8);
    v16(v6, v3);
    v16(v9, v3);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1ADFBD4F4()
{
  (*(*(*(*v0 + 192) - 8) + 8))(v0 + *(*v0 + 216));

  return swift_deallocClassInstance();
}

uint64_t sub_1ADFBD614(uint64_t a1)
{
  (*(**v1 + 80))(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBE40, &qword_1AE24FCF0);
  swift_dynamicCast();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1AE23CBAC();
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t sub_1ADFBD7BC@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 96))();
  *a1 = result;
  return result;
}

uint64_t sub_1ADFBD808@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v9 = v5;
  v6 = *(*v4 + 96);

  v7 = v6(&v9);

  *a2 = v7;
  return result;
}

uint64_t sub_1ADFBD930(uint64_t a1)
{
  v2 = v1;
  result = (*(**v1 + 120))();
  if (result)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = (*(*v6 + 136))();

      *v2 = v7;
      v6 = v7;
    }

    return (*(*v6 + 128))(a1);
  }

  return result;
}

void sub_1ADFBD9F8(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1ADFBDAE4(a2, a3, a4);
  if (!v4)
  {
    *a1 = v6;
  }
}

unint64_t sub_1ADFBDA68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1ADFBDA90(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ADFBDA90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BBE38;
  if (!qword_1EB5BBE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BBE38);
  }

  return result;
}

void sub_1ADFBDAE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0xD000000000000028;
  v4 = *(a1 + 72);
  if (v4)
  {
    v5 = *(v4 + 16);
    if ((~v5 & 0xF000000000000007) != 0)
    {
      v6 = "Coherence/AnyCRComparable.swift";
      switch((v5 >> 59) & 0x1E | (v5 >> 2) & 1)
      {
        case 1uLL:

          v10 = *((v5 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          sub_1ADE51B48(v5);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBE50, &qword_1AE24FCB8);
          *(swift_allocObject() + 16) = v10;
          return;
        case 2uLL:
          goto LABEL_5;
        case 3uLL:
        case 5uLL:
          sub_1AE23DC5C();
          __break(1u);
          return;
        case 4uLL:

          v11 = *((v5 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          sub_1ADE51B48(v5);
          v12 = &unk_1EB5BBE60;
          v13 = &unk_1AE24FCC8;
          goto LABEL_16;
        case 6uLL:
          v6 = "ference as AnyCRComparable.";
          v3 = 0xD000000000000029;
          goto LABEL_5;
        case 7uLL:
        case 0xFuLL:
        case 0x10uLL:
          v9 = "Cannot decode reference as AnyCRComparable.";
          goto LABEL_12;
        case 8uLL:
          v14 = "Cannot decode optional as AnyCRComparable.";
          goto LABEL_20;
        case 9uLL:
          v9 = "Cannot decode timestamp as AnyCRComparable.";
LABEL_12:
          v6 = (v9 - 32);
          v3 = 0xD00000000000002BLL;
          goto LABEL_5;
        case 0xAuLL:
          v14 = "Cannot decode repeated as AnyCRComparable.";
LABEL_20:
          v6 = (v14 - 32);
          v3 = 0xD00000000000002ALL;
          goto LABEL_5;
        case 0xBuLL:
          v6 = "set as AnyCRComparable.";
          goto LABEL_5;
        case 0xCuLL:
          v6 = "stom as AnyCRComparable.";
          v3 = 0xD000000000000027;
          goto LABEL_5;
        case 0xDuLL:
          v6 = "No value for AnyCRComparable.";
          goto LABEL_5;
        case 0xEuLL:

          v15 = *((v5 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          sub_1ADE51B48(v5);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBE48, &qword_1AE24FCB0);
          *(swift_allocObject() + 16) = v15;
          return;
        default:

          v11 = *(v5 + 16);
          sub_1ADE51B48(v5);
          v12 = &unk_1EB5BBE58;
          v13 = &unk_1AE24FCC0;
LABEL_16:
          __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
          *(swift_allocObject() + 16) = v11;
          return;
      }
    }

    v6 = "CRComparableBox";
    v3 = 0xD00000000000001DLL;
  }

  else
  {
    v6 = "Not decoding a CRDT.";
    v3 = 0xD000000000000017;
  }

LABEL_5:
  v7 = v6 | 0x8000000000000000;
  sub_1ADE42E40(a1, a2, a3);
  swift_allocError();
  *v8 = v3;
  *(v8 + 8) = v7;
  *(v8 + 16) = 0;
  swift_willThrow();
}

BOOL TaggedValue_1.ObservableDifference.isIdentityChanged.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v3);
  v6 = swift_getEnumCaseMultiPayload() == 2;
  (*(v2 + 8))(v5, a1);
  return v6;
}

uint64_t TaggedValue_1.taggedEnum.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v5 = type metadata accessor for TaggedValue_1.TaggedEnum(0, *(a1 + 16), *(a1 + 24), a3);
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v3, v5);
}

uint64_t TaggedValue_1.taggedEnum.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for TaggedValue_1.TaggedEnum(0, *(a2 + 16), *(a2 + 24), a4);
  v7 = *(*(v6 - 8) + 40);

  return v7(v4, a1, v6);
}

uint64_t TaggedValue_1.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a2 - 8) + 32))(a4, a1, a2);
  type metadata accessor for TaggedValue_1.TaggedEnum(0, a2, a3, v6);

  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_1.init(tag:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = *a2;
  *a5 = a1;
  a5[1] = v6;
  type metadata accessor for TaggedValue_1.TaggedEnum(0, a3, a4, a4);

  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_1.tagged1.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *(a1 + 16);
  v7 = type metadata accessor for TaggedValue_1.TaggedEnum(0, v6, *(a1 + 24), a2);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, v4, v7, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 8))(v11, v7);
    v12 = *(v6 - 8);
    v13 = 1;
  }

  else
  {
    v12 = *(v6 - 8);
    (*(v12 + 32))(a3, v11, v6);
    v13 = 0;
  }

  return (*(v12 + 56))(a3, v13, 1, v6);
}

uint64_t TaggedValue_1.unknown.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v4 = v3;
  v6 = type metadata accessor for TaggedValue_1.TaggedEnum(0, *(a1 + 16), *(a1 + 24), a2);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  (*(v7 + 16))(&v13 - v9, v4, v6, v8);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    v12 = *(v10 + 1);
  }

  else
  {
    result = (*(v7 + 8))(v10, v6);
    v12 = 0;
  }

  *a3 = v12;
  return result;
}

void TaggedValue_1.visitReferences(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 24);
  v12 = type metadata accessor for TaggedValue_1.TaggedEnum(0, v5, v10, v11);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v17 - v14;
  (*(v16 + 16))(&v17 - v14, v3, v12, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(**(v15 + 1) + 120))(a1);
  }

  else
  {
    (*(v6 + 32))(v8, v15, v5);
    (*(*(v10 + 8) + 48))(a1, v5);
    (*(v6 + 8))(v8, v5);
  }
}

uint64_t TaggedValue_1.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  v15 = *(v14 + 24);
  v17 = type metadata accessor for TaggedValue_1.TaggedEnum(0, v7, v15, v16);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v25 - v19;
  (*(v21 + 16))(&v25 - v19, v4, v17, v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v20;
    v23 = (*(**(v20 + 1) + 104))(a1);

    *a3 = v22;
    a3[1] = v23;
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    (*(v8 + 32))(v13, v20, v7);
    (*(*(v15 + 8) + 24))(a1, v7);
    (*(v8 + 8))(v13, v7);
    return TaggedValue_1.init(_:)(v10, v7, v15, a3);
  }
}

uint64_t TaggedValue_1.observableDifference(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v70 = a1;
  v64 = a2;
  v72 = a4;
  v5 = *(a3 + 16);
  v4 = *(a3 + 24);
  v63 = *(v4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v58 = *(v7 - 8);
  v59 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v65 = &v57 - v8;
  v66 = AssociatedTypeWitness;
  v62 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v9);
  v57 = &v57 - v10;
  v67 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v61 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v60 = &v57 - v14;
  v71 = v4;
  v16 = type metadata accessor for TaggedValue_1.TaggedEnum(0, v5, v4, v15);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v57 - v21;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v24 = *(TupleTypeMetadata2 - 8);
  v25 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v27 = &v57 - v26;
  v29 = (&v57 + *(v28 + 48) - v26);
  v68 = v17;
  v30 = *(v17 + 16);
  v30(&v57 - v26, v69, v16, v25);
  (v30)(v29, v70, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (v30)(v19, v27, v16);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v31 = *v19;
      v32 = *v29;

      v34 = type metadata accessor for TaggedValue_1.ObservableDifference(0, v5, v71, v33);
      v35 = v34;
      if (v31 == v32)
      {
        v36 = *(*(v34 - 8) + 56);
        v37 = v72;
        v38 = 1;
LABEL_14:
        v36(v37, v38, 1, v35);
        goto LABEL_15;
      }

      v52 = v72;
LABEL_13:
      swift_storeEnumTagMultiPayload();
      v36 = *(*(v35 - 8) + 56);
      v37 = v52;
      v38 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    (v30)(v22, v27, v16);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v42 = v67;
      v43 = *(v67 + 32);
      v44 = v60;
      v43(v60, v22, v5);
      v45 = v61;
      v43(v61, v29, v5);
      v46 = v65;
      (*(v63 + 40))(v45, v64, v5);
      v47 = *(v42 + 8);
      v47(v45, v5);
      v47(v44, v5);
      v48 = v62;
      v49 = v66;
      if ((*(v62 + 48))(v46, 1, v66) == 1)
      {
        (*(v58 + 8))(v46, v59);
        v51 = type metadata accessor for TaggedValue_1.ObservableDifference(0, v5, v71, v50);
        (*(*(v51 - 8) + 56))(v72, 1, 1, v51);
LABEL_15:
        v24 = v68;
        return (*(v24 + 8))(v27, v16);
      }

      v53 = *(v48 + 32);
      v54 = v57;
      v53(v57, v46, v49);
      v52 = v72;
      v53(v72, v54, v49);
      v35 = type metadata accessor for TaggedValue_1.ObservableDifference(0, v5, v71, v55);
      goto LABEL_13;
    }

    (*(v67 + 8))(v22, v5);
  }

  v40 = type metadata accessor for TaggedValue_1.ObservableDifference(0, v5, v71, v39);
  v41 = v72;
  swift_storeEnumTagMultiPayload();
  (*(*(v40 - 8) + 56))(v41, 0, 1, v40);
  v16 = TupleTypeMetadata2;
  return (*(v24 + 8))(v27, v16);
}

BOOL TaggedValue_2.ObservableDifference.isIdentityChanged.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v3);
  v6 = swift_getEnumCaseMultiPayload() == 3;
  (*(v2 + 8))(v5, a1);
  return v6;
}

uint64_t TaggedValue_2.taggedEnum.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v7[0] = *(a1 + 16);
  v7[1] = v4;
  v5 = type metadata accessor for TaggedValue_2.TaggedEnum(0, v7);
  return (*(*(v5 - 8) + 16))(a2, v2, v5);
}

uint64_t TaggedValue_2.taggedEnum.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v7[0] = *(a2 + 16);
  v7[1] = v4;
  v5 = type metadata accessor for TaggedValue_2.TaggedEnum(0, v7);
  return (*(*(v5 - 8) + 40))(v2, a1, v5);
}

uint64_t TaggedValue_2.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a2 - 8) + 32))(a6, a1, a2);
  v11[0] = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  type metadata accessor for TaggedValue_2.TaggedEnum(0, v11);
  return swift_storeEnumTagMultiPayload();
}

{
  (*(*(a3 - 8) + 32))(a6, a1);
  v11[0] = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  type metadata accessor for TaggedValue_2.TaggedEnum(0, v11);
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_2.init(tag:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v8 = *a2;
  *a7 = a1;
  a7[1] = v8;
  v10[0] = a3;
  v10[1] = a4;
  v10[2] = a5;
  v10[3] = a6;
  type metadata accessor for TaggedValue_2.TaggedEnum(0, v10);
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_2.tagged1.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 32);
  v15 = *(a1 + 16);
  v16[0] = v15;
  v16[1] = v5;
  v6 = type metadata accessor for TaggedValue_2.TaggedEnum(0, v16);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v16[-1] - v9;
  (*(v7 + 16))(&v16[-1] - v9, v3, v6, v8);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v7 + 8))(v10, v6);
    v11 = v15;
    v12 = *(v15 - 8);
    v13 = 1;
  }

  else
  {
    v12 = *(v15 - 8);
    (*(v12 + 32))(a2, v10);
    v11 = v15;
    v13 = 0;
  }

  return (*(v12 + 56))(a2, v13, 1, v11);
}

uint64_t TaggedValue_2.tagged2.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 40);
  v15 = *(a1 + 16);
  v14 = *(a1 + 24);
  v16 = v14;
  v17 = v5;
  v6 = type metadata accessor for TaggedValue_2.TaggedEnum(0, &v15);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, v3, v6, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *(v14 - 8);
    (*(v11 + 32))(a2, v10);
    v12 = 0;
  }

  else
  {
    (*(v7 + 8))(v10, v6);
    v11 = *(v14 - 8);
    v12 = 1;
  }

  return (*(v11 + 56))(a2, v12, 1, v14);
}

uint64_t TaggedValue_2.unknown.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 32);
  v13[0] = *(a1 + 16);
  v13[1] = v5;
  v6 = type metadata accessor for TaggedValue_2.TaggedEnum(0, v13);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - v9;
  (*(v7 + 16))(v13 - v9, v3, v6, v8);
  result = swift_getEnumCaseMultiPayload();
  if (result == 2)
  {
    v12 = *(v10 + 1);
  }

  else
  {
    result = (*(v7 + 8))(v10, v6);
    v12 = 0;
  }

  *a2 = v12;
  return result;
}

double TaggedValue_2.visitReferences(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 24);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v25[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 16);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = v10;
  *(&v16 + 1) = v5;
  v24 = *(v15 + 32);
  v25[0] = v16;
  v25[1] = v24;
  v17 = type metadata accessor for TaggedValue_2.TaggedEnum(0, v25);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v25[-1] - v19;
  (*(v21 + 16))(&v25[-1] - v19, v3, v17, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v6 + 32))(v8, v20, v5);
      (*(*(*(&v24 + 1) + 8) + 48))(a1, v5);
      (*(v6 + 8))(v8, v5);
    }

    else
    {
      (*(**(v20 + 1) + 120))(a1);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v20, v10);
    (*(*(v24 + 8) + 48))(a1, v10);
    (*(v11 + 8))(v14, v10);
  }

  return result;
}

uint64_t TaggedValue_2.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v38 = a1;
  v39 = a3;
  v5 = *(a2 + 24);
  v37 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36 - v9;
  v12 = *(v11 + 16);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v36 - v18;
  v21 = *(v20 + 32);
  *&v41 = v12;
  *(&v41 + 1) = v5;
  v40 = v21;
  v42 = v21;
  v22 = type metadata accessor for TaggedValue_2.TaggedEnum(0, &v41);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v36 - v24;
  (*(v26 + 16))(&v36 - v24, v4, v22, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v28 = v37;
      (*(v37 + 32))(v10, v25, v5);
      v29 = *(&v40 + 1);
      (*(*(*(&v40 + 1) + 8) + 24))(v38, v5);
      (*(v28 + 8))(v10, v5);
      return TaggedValue_2.init(_:)(v7, v12, v5, v40, v29, v39);
    }

    else
    {
      v32 = *v25;
      v33 = (*(**(v25 + 1) + 104))(v38);

      v34 = v39;
      *v39 = v32;
      v34[1] = v33;
      *&v35 = v12;
      *(&v35 + 1) = v5;
      v41 = v35;
      v42 = v40;
      type metadata accessor for TaggedValue_2.TaggedEnum(0, &v41);
      return swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    (*(v13 + 32))(v19, v25, v12);
    v31 = v40;
    (*(*(v40 + 8) + 24))(v38, v12);
    (*(v13 + 8))(v19, v12);
    return TaggedValue_2.init(_:)(v16, v12, v5, v31, *(&v40 + 1), v39);
  }
}

uint64_t TaggedValue_2.observableDifference(from:with:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v98 = a2;
  v109 = a4;
  v110 = a1;
  v5 = a3[5];
  v6 = a3[3];
  v95 = *(v5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v87 = sub_1AE23D7CC();
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v96 = &v81 - v8;
  v97 = AssociatedTypeWitness;
  v94 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v9);
  v85 = &v81 - v10;
  v99 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v93 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v92 = &v81 - v14;
  v15 = a3[4];
  v16 = a3[2];
  v89 = *(v15 + 8);
  v17 = swift_getAssociatedTypeWitness();
  v84 = sub_1AE23D7CC();
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v88 = &v81 - v18;
  v91 = v17;
  v90 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v82 = &v81 - v20;
  v103 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v102 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v100 = v6;
  v101 = &v81 - v24;
  *&v25 = v16;
  *(&v25 + 1) = v6;
  *&v26 = v15;
  *(&v26 + 1) = v5;
  v107 = v26;
  v108 = v25;
  v112 = v26;
  v111 = v25;
  v27 = type metadata accessor for TaggedValue_2.TaggedEnum(0, &v111);
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = (&v81 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v81 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v81 - v35;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v38 = *(TupleTypeMetadata2 - 8);
  v39 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v41 = &v81 - v40;
  v104 = v28;
  v105 = v42;
  v43 = (&v81 + *(v42 + 48) - v40);
  v44 = *(v28 + 16);
  v44(&v81 - v40, v106, v27, v39);
  (v44)(v43, v110, v27);
  v110 = v41;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v58 = v101;
    v59 = v102;
    v60 = v103;
    (v44)(v36, v110, v27);
    if (!swift_getEnumCaseMultiPayload())
    {
      v65 = *(v60 + 32);
      v66 = v58;
      v65(v58, v36, v16);
      v65(v59, v43, v16);
      v67 = v88;
      (*(v89 + 40))(v59, v98, v16);
      v68 = *(v60 + 8);
      v68(v59, v16);
      v68(v66, v16);
      v69 = v90;
      v70 = v91;
      if ((*(v90 + 48))(v67, 1, v91) == 1)
      {
        (*(v83 + 8))(v67, v84);
        v112 = v107;
        v111 = v108;
        goto LABEL_17;
      }

      v78 = *(v69 + 32);
      v79 = v82;
      v78(v82, v67, v70);
      v77 = v109;
      v78(v109, v79, v70);
      v112 = v107;
      v111 = v108;
      v76 = type metadata accessor for TaggedValue_2.ObservableDifference(0, &v111);
LABEL_22:
      swift_storeEnumTagMultiPayload();
      (*(*(v76 - 8) + 56))(v77, 0, 1, v76);
      goto LABEL_23;
    }

    (*(v60 + 8))(v36, v16);
LABEL_13:
    v63 = v109;
    v46 = v110;
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload != 1)
  {
    (v44)(v30, v110, v27);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v61 = *v30;
      v62 = *v43;

      if (v61 == v62)
      {
        v111 = v108;
        v112 = v107;
LABEL_17:
        v71 = type metadata accessor for TaggedValue_2.ObservableDifference(0, &v111);
        (*(*(v71 - 8) + 56))(v109, 1, 1, v71);
LABEL_23:
        v38 = v104;
        v46 = v110;
        return (*(v38 + 8))(v46, v27);
      }

      v111 = v108;
      v112 = v107;
      v76 = type metadata accessor for TaggedValue_2.ObservableDifference(0, &v111);
      v77 = v109;
      goto LABEL_22;
    }

    goto LABEL_13;
  }

  v46 = v110;
  (v44)(v33, v110, v27);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v99 + 8))(v33, v100);
    v63 = v109;
LABEL_14:
    v111 = v108;
    v112 = v107;
    v64 = type metadata accessor for TaggedValue_2.ObservableDifference(0, &v111);
    swift_storeEnumTagMultiPayload();
    (*(*(v64 - 8) + 56))(v63, 0, 1, v64);
    v27 = v105;
    return (*(v38 + 8))(v46, v27);
  }

  v47 = v99;
  v48 = *(v99 + 32);
  v49 = v92;
  v50 = v33;
  v51 = v100;
  v48(v92, v50, v100);
  v52 = v93;
  v48(v93, v43, v51);
  v53 = v96;
  (*(v95 + 40))(v52, v98, v51);
  v54 = *(v47 + 8);
  v54(v52, v51);
  v54(v49, v51);
  v55 = v94;
  v56 = v97;
  if ((*(v94 + 48))(v53, 1, v97) == 1)
  {
    (*(v86 + 8))(v53, v87);
    v112 = v107;
    v111 = v108;
    v57 = type metadata accessor for TaggedValue_2.ObservableDifference(0, &v111);
    (*(*(v57 - 8) + 56))(v109, 1, 1, v57);
  }

  else
  {
    v72 = *(v55 + 32);
    v73 = v85;
    v72(v85, v53, v56);
    v74 = v109;
    v72(v109, v73, v56);
    v112 = v107;
    v111 = v108;
    v75 = type metadata accessor for TaggedValue_2.ObservableDifference(0, &v111);
    swift_storeEnumTagMultiPayload();
    (*(*(v75 - 8) + 56))(v74, 0, 1, v75);
  }

  v38 = v104;
  return (*(v38 + 8))(v46, v27);
}

BOOL TaggedValue_3.ObservableDifference.isIdentityChanged.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v3);
  v6 = swift_getEnumCaseMultiPayload() == 4;
  (*(v2 + 8))(v5, a1);
  return v6;
}

uint64_t TaggedValue_3.taggedEnum.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[2];
  v7[0] = a1[1];
  v7[1] = v4;
  v7[2] = a1[3];
  v5 = type metadata accessor for TaggedValue_3.TaggedEnum(0, v7);
  return (*(*(v5 - 8) + 16))(a2, v2, v5);
}

uint64_t TaggedValue_3.taggedEnum.setter(uint64_t a1, _OWORD *a2)
{
  v4 = a2[2];
  v7[0] = a2[1];
  v7[1] = v4;
  v7[2] = a2[3];
  v5 = type metadata accessor for TaggedValue_3.TaggedEnum(0, v7);
  return (*(*(v5 - 8) + 40))(v2, a1, v5);
}

uint64_t TaggedValue_3.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a2 - 8) + 32))(a8, a1, a2);
  v15[0] = a2;
  v15[1] = a3;
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = a7;
  type metadata accessor for TaggedValue_3.TaggedEnum(0, v15);
  return swift_storeEnumTagMultiPayload();
}

{
  (*(*(a3 - 8) + 32))(a8, a1);
  v15[0] = a2;
  v15[1] = a3;
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = a7;
  type metadata accessor for TaggedValue_3.TaggedEnum(0, v15);
  return swift_storeEnumTagMultiPayload();
}

{
  (*(*(a4 - 8) + 32))(a8, a1, a4);
  v15[0] = a2;
  v15[1] = a3;
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = a7;
  type metadata accessor for TaggedValue_3.TaggedEnum(0, v15);
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_3.init(tag:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v10 = *a2;
  *a9 = a1;
  a9[1] = v10;
  v12[0] = a3;
  v12[1] = a4;
  v12[2] = a5;
  v12[3] = a6;
  v12[4] = a7;
  v12[5] = a8;
  type metadata accessor for TaggedValue_3.TaggedEnum(0, v12);
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_3.tagged1.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[2];
  v16 = a1[1];
  v17[0] = v16;
  v6 = a1[3];
  v17[1] = v5;
  v17[2] = v6;
  v7 = type metadata accessor for TaggedValue_3.TaggedEnum(0, v17);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v17[-1] - v10;
  (*(v8 + 16))(&v17[-1] - v10, v3, v7, v9);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v8 + 8))(v11, v7);
    v12 = v16;
    v13 = *(v16 - 8);
    v14 = 1;
  }

  else
  {
    v13 = *(v16 - 8);
    (*(v13 + 32))(a2, v11);
    v12 = v16;
    v14 = 0;
  }

  return (*(v13 + 56))(a2, v14, 1, v12);
}

uint64_t TaggedValue_3.tagged2.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 56);
  v15 = *(a1 + 16);
  v14 = *(a1 + 24);
  v16 = v14;
  v17 = *(a1 + 40);
  v18 = v5;
  v6 = type metadata accessor for TaggedValue_3.TaggedEnum(0, &v15);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, v3, v6, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *(v14 - 8);
    (*(v11 + 32))(a2, v10);
    v12 = 0;
  }

  else
  {
    (*(v7 + 8))(v10, v6);
    v11 = *(v14 - 8);
    v12 = 1;
  }

  return (*(v11 + 56))(a2, v12, 1, v14);
}

uint64_t TaggedValue_3.tagged3.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[1];
  v15 = a1[2];
  v16[0] = v5;
  v6 = a1[3];
  v16[1] = v15;
  v16[2] = v6;
  v7 = type metadata accessor for TaggedValue_3.TaggedEnum(0, v16);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v16[-1] - v10;
  (*(v8 + 16))(&v16[-1] - v10, v3, v7, v9);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v12 = *(v15 - 8);
    (*(v12 + 32))(a2, v11);
    v13 = 0;
  }

  else
  {
    (*(v8 + 8))(v11, v7);
    v12 = *(v15 - 8);
    v13 = 1;
  }

  return (*(v12 + 56))(a2, v13, 1, v15);
}

uint64_t TaggedValue_3.unknown.getter@<X0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = a1[2];
  v13[0] = a1[1];
  v13[1] = v5;
  v13[2] = a1[3];
  v6 = type metadata accessor for TaggedValue_3.TaggedEnum(0, v13);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - v9;
  (*(v7 + 16))(v13 - v9, v3, v6, v8);
  result = swift_getEnumCaseMultiPayload();
  if (result == 3)
  {
    v12 = *(v10 + 1);
  }

  else
  {
    result = (*(v7 + 8))(v10, v6);
    v12 = 0;
  }

  *a2 = v12;
  return result;
}

double TaggedValue_3.visitReferences(_:)(uint64_t a1, uint64_t a2)
{
  v36 = a1;
  v2 = *(a2 + 32);
  v34 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v33 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v4 + 24);
  v32 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 16);
  v31 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v14[5];
  v15 = v14[6];
  v17 = v14[7];
  *&v18 = v10;
  *(&v18 + 1) = v5;
  *&v19 = v2;
  *(&v19 + 1) = v16;
  v37[0] = v18;
  v37[1] = v19;
  v38 = v15;
  v39 = v17;
  v20 = type metadata accessor for TaggedValue_3.TaggedEnum(0, v37);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v31 - v22;
  (*(v24 + 16))(&v31 - v22, v35, v20, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v29 = v33;
      v28 = v34;
      (*(v34 + 32))(v33, v23, v2);
      (*(*(v17 + 8) + 48))(v36, v2);
      (*(v28 + 8))(v29, v2);
    }

    else
    {
      (*(**(v23 + 1) + 120))(v36);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v30 = v32;
    (*(v32 + 32))(v8, v23, v5);
    (*(*(v15 + 8) + 48))(v36, v5);
    (*(v30 + 8))(v8, v5);
  }

  else
  {
    v26 = v31;
    (*(v31 + 32))(v13, v23, v10);
    (*(*(v16 + 8) + 48))(v36, v10);
    (*(v26 + 8))(v13, v10);
  }

  return result;
}

uint64_t TaggedValue_3.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v56 = a1;
  v57 = a3;
  v3 = *(a2 + 32);
  v51 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v50 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v46 - v6;
  v9 = *(v8 + 24);
  v49 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - v14;
  v17 = *(v16 + 16);
  v48 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v46 - v22;
  v25 = v24[6];
  v26 = v24[7];
  *&v27 = v17;
  *(&v27 + 1) = v9;
  *&v28 = v3;
  v52 = v24[5];
  *(&v28 + 1) = v52;
  v46 = v28;
  v47 = v27;
  v59 = v28;
  v58 = v27;
  v54 = v25;
  v55 = v26;
  v60 = v25;
  v61 = v26;
  v29 = type metadata accessor for TaggedValue_3.TaggedEnum(0, &v58);
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v46 - v31;
  (*(v33 + 16))(&v46 - v31, v53, v29, v30);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v38 = v51;
      (*(v51 + 32))(v7, v32, v3);
      v39 = v55;
      v40 = v50;
      (*(*(v55 + 8) + 24))(v56, v3);
      (*(v38 + 8))(v7, v3);
      return TaggedValue_3.init(_:)(v40, v17, v9, v3, v52, v54, v39, v57);
    }

    else
    {
      v43 = *v32;
      v44 = (*(**(v32 + 1) + 104))(v56);

      v45 = v57;
      *v57 = v43;
      v45[1] = v44;
      v59 = v46;
      v58 = v47;
      v60 = v54;
      v61 = v55;
      type metadata accessor for TaggedValue_3.TaggedEnum(0, &v58);
      return swift_storeEnumTagMultiPayload();
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v41 = v49;
    (*(v49 + 32))(v15, v32, v9);
    v42 = v54;
    (*(*(v54 + 8) + 24))(v56, v9);
    (*(v41 + 8))(v15, v9);
    return TaggedValue_3.init(_:)(v12, v17, v9, v3, v52, v42, v55, v57);
  }

  else
  {
    v35 = v48;
    (*(v48 + 32))(v23, v32, v17);
    v36 = v52;
    (*(*(v52 + 8) + 24))(v56, v17);
    (*(v35 + 8))(v23, v17);
    return TaggedValue_3.init(_:)(v20, v17, v9, v3, v36, v54, v55, v57);
  }
}

uint64_t TaggedValue_3.observableDifference(from:with:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v140 = a2;
  v148 = a4;
  v149 = a1;
  v5 = a3[7];
  v6 = a3[4];
  v131 = *(v5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v115 = sub_1AE23D7CC();
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v132 = &v106 - v8;
  v133 = AssociatedTypeWitness;
  v130 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v9);
  v113 = &v106 - v10;
  v138 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v128 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v127 = &v106 - v14;
  v15 = a3[6];
  v16 = a3[3];
  v124 = *(v15 + 8);
  v17 = swift_getAssociatedTypeWitness();
  v112 = sub_1AE23D7CC();
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v126 = &v106 - v18;
  v129 = v17;
  v125 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v110 = &v106 - v20;
  v136 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v123 = &v106 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v122 = &v106 - v24;
  v25 = a3[5];
  v26 = a3[2];
  v118 = *(v25 + 8);
  v27 = swift_getAssociatedTypeWitness();
  v109 = sub_1AE23D7CC();
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v120 = &v106 - v28;
  v121 = v27;
  v119 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v107 = &v106 - v30;
  v134 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v117 = &v106 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v116 = &v106 - v34;
  v135 = v26;
  *&v35 = v26;
  v137 = v16;
  *(&v35 + 1) = v16;
  v139 = v6;
  *&v36 = v6;
  *(&v36 + 1) = v25;
  v144 = v36;
  v145 = v35;
  v151 = v36;
  v150 = v35;
  v146 = v15;
  v147 = v5;
  v152 = v15;
  v153 = v5;
  v37 = type metadata accessor for TaggedValue_3.TaggedEnum(0, &v150);
  v38 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v40 = (&v106 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v106 - v42;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v106 - v45;
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v106 - v48;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v51 = *(TupleTypeMetadata2 - 8);
  v52 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v54 = &v106 - v53;
  v141 = v38;
  v142 = v55;
  v56 = (&v106 + *(v55 + 48) - v53);
  v57 = *(v38 + 16);
  v57(&v106 - v53, v143, v37, v52);
  (v57)(v56, v149, v37);
  v149 = v54;
  v58 = v37;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v60 = v149;
      (v57)(v43, v149, v58);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        (*(v138 + 8))(v43, v139);
        goto LABEL_20;
      }

      v61 = v138;
      v62 = *(v138 + 32);
      v63 = v127;
      v64 = v43;
      v65 = v139;
      v62(v127, v64, v139);
      v66 = v128;
      v62(v128, v56, v65);
      v67 = v132;
      (*(v131 + 40))(v66, v140, v65);
      v68 = *(v61 + 8);
      v68(v66, v65);
      v68(v63, v65);
      v69 = v130;
      v70 = v133;
      if ((*(v130 + 48))(v67, 1, v133) == 1)
      {
        (*(v114 + 8))(v67, v115);
LABEL_12:
        v151 = v144;
        v150 = v145;
LABEL_16:
        v152 = v146;
        v153 = v147;
        v82 = type metadata accessor for TaggedValue_3.ObservableDifference(0, &v150);
        (*(*(v82 - 8) + 56))(v148, 1, 1, v82);
LABEL_27:
        v51 = v141;
        return (*(v51 + 8))(v60, v58);
      }

      v95 = *(v69 + 32);
      v96 = v113;
      v95(v113, v67, v70);
      v97 = v148;
      v95(v148, v96, v70);
      v151 = v144;
      v150 = v145;
      v152 = v146;
      v153 = v147;
      v98 = type metadata accessor for TaggedValue_3.ObservableDifference(0, &v150);
    }

    else
    {
      v60 = v149;
      (v57)(v40, v149, v58);
      if (swift_getEnumCaseMultiPayload() != 3)
      {

        goto LABEL_20;
      }

      v80 = *v40;
      v81 = *v56;

      if (v80 == v81)
      {
        v150 = v145;
        v151 = v144;
        goto LABEL_16;
      }

      v150 = v145;
      v151 = v144;
      v152 = v146;
      v153 = v147;
      v98 = type metadata accessor for TaggedValue_3.ObservableDifference(0, &v150);
      v97 = v148;
    }

LABEL_26:
    swift_storeEnumTagMultiPayload();
    (*(*(v98 - 8) + 56))(v97, 0, 1, v98);
    goto LABEL_27;
  }

  if (EnumCaseMultiPayload)
  {
    v60 = v149;
    (v57)(v46, v149, v58);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v136 + 8))(v46, v137);
      goto LABEL_20;
    }

    v71 = v136;
    v72 = *(v136 + 32);
    v73 = v122;
    v74 = v137;
    v72(v122, v46, v137);
    v75 = v123;
    v72(v123, v56, v74);
    v76 = v126;
    (*(v124 + 40))(v75, v140, v74);
    v77 = *(v71 + 8);
    v77(v75, v74);
    v77(v73, v74);
    v78 = v125;
    v79 = v129;
    if ((*(v125 + 48))(v76, 1, v129) == 1)
    {
      (*(v111 + 8))(v76, v112);
      goto LABEL_12;
    }

    v99 = *(v78 + 32);
    v100 = v110;
    v99(v110, v76, v79);
    v97 = v148;
    v99(v148, v100, v79);
    v151 = v144;
    v150 = v145;
    v152 = v146;
    v153 = v147;
    v98 = type metadata accessor for TaggedValue_3.ObservableDifference(0, &v150);
    goto LABEL_26;
  }

  (v57)(v49, v149, v37);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v134 + 8))(v49, v135);
    v60 = v149;
LABEL_20:
    v150 = v145;
    v151 = v144;
    v152 = v146;
    v153 = v147;
    v83 = type metadata accessor for TaggedValue_3.ObservableDifference(0, &v150);
    v84 = v148;
    swift_storeEnumTagMultiPayload();
    (*(*(v83 - 8) + 56))(v84, 0, 1, v83);
    v58 = v142;
    return (*(v51 + 8))(v60, v58);
  }

  v85 = v134;
  v86 = *(v134 + 32);
  v87 = v116;
  v88 = v135;
  v86(v116, v49, v135);
  v89 = v117;
  v86(v117, v56, v88);
  v90 = v120;
  (*(v118 + 40))(v89, v140, v88);
  v91 = *(v85 + 8);
  v91(v89, v88);
  v91(v87, v88);
  v92 = v119;
  v93 = v121;
  if ((*(v119 + 48))(v90, 1, v121) == 1)
  {
    (*(v108 + 8))(v90, v109);
    v151 = v144;
    v150 = v145;
    v152 = v146;
    v153 = v147;
    v94 = type metadata accessor for TaggedValue_3.ObservableDifference(0, &v150);
    (*(*(v94 - 8) + 56))(v148, 1, 1, v94);
  }

  else
  {
    v102 = *(v92 + 32);
    v103 = v107;
    v102(v107, v90, v93);
    v104 = v148;
    v102(v148, v103, v93);
    v151 = v144;
    v150 = v145;
    v152 = v146;
    v153 = v147;
    v105 = type metadata accessor for TaggedValue_3.ObservableDifference(0, &v150);
    swift_storeEnumTagMultiPayload();
    (*(*(v105 - 8) + 56))(v104, 0, 1, v105);
  }

  v51 = v141;
  v60 = v149;
  return (*(v51 + 8))(v60, v58);
}

BOOL TaggedValue_4.ObservableDifference.isIdentityChanged.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v3);
  v6 = swift_getEnumCaseMultiPayload() == 5;
  (*(v2 + 8))(v5, a1);
  return v6;
}

uint64_t TaggedValue_4.taggedEnum.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[2];
  v8[0] = a1[1];
  v8[1] = v4;
  v5 = a1[4];
  v8[2] = a1[3];
  v8[3] = v5;
  v6 = type metadata accessor for TaggedValue_4.TaggedEnum(0, v8);
  return (*(*(v6 - 8) + 16))(a2, v2, v6);
}

uint64_t TaggedValue_4.taggedEnum.setter(uint64_t a1, _OWORD *a2)
{
  v4 = a2[2];
  v8[0] = a2[1];
  v8[1] = v4;
  v5 = a2[4];
  v8[2] = a2[3];
  v8[3] = v5;
  v6 = type metadata accessor for TaggedValue_4.TaggedEnum(0, v8);
  return (*(*(v6 - 8) + 40))(v2, a1, v6);
}

uint64_t TaggedValue_4.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  (*(*(a2 - 8) + 32))(a9, a1, a2);
  v18[0] = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  v18[6] = a8;
  v18[7] = a10;
  type metadata accessor for TaggedValue_4.TaggedEnum(0, v18);
  return swift_storeEnumTagMultiPayload();
}

{
  (*(*(a3 - 8) + 32))(a9, a1);
  v18[0] = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  v18[6] = a8;
  v18[7] = a10;
  type metadata accessor for TaggedValue_4.TaggedEnum(0, v18);
  return swift_storeEnumTagMultiPayload();
}

{
  (*(*(a4 - 8) + 32))(a9, a1, a4);
  v18[0] = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  v18[6] = a8;
  v18[7] = a10;
  type metadata accessor for TaggedValue_4.TaggedEnum(0, v18);
  return swift_storeEnumTagMultiPayload();
}

{
  (*(*(a5 - 8) + 32))(a9, a1, a5);
  v18[0] = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  v18[6] = a8;
  v18[7] = a10;
  type metadata accessor for TaggedValue_4.TaggedEnum(0, v18);
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_4.init(tag:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v11 = *a2;
  *a9 = a1;
  a9[1] = v11;
  v13[0] = a3;
  v13[1] = a4;
  v13[2] = a5;
  v13[3] = a6;
  v13[4] = a7;
  v13[5] = a8;
  v13[6] = a10;
  v13[7] = a11;
  type metadata accessor for TaggedValue_4.TaggedEnum(0, v13);
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_4.tagged1.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[2];
  v17 = a1[1];
  v18[0] = v17;
  v6 = a1[3];
  v7 = a1[4];
  v18[1] = v5;
  v18[2] = v6;
  v18[3] = v7;
  v8 = type metadata accessor for TaggedValue_4.TaggedEnum(0, v18);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v18[-1] - v11;
  (*(v9 + 16))(&v18[-1] - v11, v3, v8, v10);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v9 + 8))(v12, v8);
    v13 = v17;
    v14 = *(v17 - 8);
    v15 = 1;
  }

  else
  {
    v14 = *(v17 - 8);
    (*(v14 + 32))(a2, v12);
    v13 = v17;
    v15 = 0;
  }

  return (*(v14 + 56))(a2, v15, 1, v13);
}

uint64_t TaggedValue_4.tagged2.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 72);
  v15 = *(a1 + 16);
  v14 = *(a1 + 24);
  v16 = v14;
  v17 = *(a1 + 40);
  v18 = *(a1 + 56);
  v19 = v5;
  v6 = type metadata accessor for TaggedValue_4.TaggedEnum(0, &v15);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, v3, v6, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *(v14 - 8);
    (*(v11 + 32))(a2, v10);
    v12 = 0;
  }

  else
  {
    (*(v7 + 8))(v10, v6);
    v11 = *(v14 - 8);
    v12 = 1;
  }

  return (*(v11 + 56))(a2, v12, 1, v14);
}

uint64_t TaggedValue_4.tagged3.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[1];
  v16 = a1[2];
  v17[0] = v5;
  v6 = a1[3];
  v7 = a1[4];
  v17[1] = v16;
  v17[2] = v6;
  v17[3] = v7;
  v8 = type metadata accessor for TaggedValue_4.TaggedEnum(0, v17);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v17[-1] - v11;
  (*(v9 + 16))(&v17[-1] - v11, v3, v8, v10);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v13 = *(v16 - 8);
    (*(v13 + 32))(a2, v12);
    v14 = 0;
  }

  else
  {
    (*(v9 + 8))(v12, v8);
    v13 = *(v16 - 8);
    v14 = 1;
  }

  return (*(v13 + 56))(a2, v14, 1, v16);
}

uint64_t TaggedValue_4.tagged4.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 72);
  v6 = *(a1 + 16);
  v17 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = v6;
  v18 = v15;
  v19 = *(a1 + 56);
  v20 = v5;
  v7 = type metadata accessor for TaggedValue_4.TaggedEnum(0, &v16);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, v3, v7, v9);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v12 = *(v15 - 8);
    (*(v12 + 32))(a2, v11);
    v13 = 0;
  }

  else
  {
    (*(v8 + 8))(v11, v7);
    v12 = *(v15 - 8);
    v13 = 1;
  }

  return (*(v12 + 56))(a2, v13, 1, v15);
}

uint64_t TaggedValue_4.unknown.getter@<X0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = a1[2];
  v14[0] = a1[1];
  v14[1] = v5;
  v6 = a1[4];
  v14[2] = a1[3];
  v14[3] = v6;
  v7 = type metadata accessor for TaggedValue_4.TaggedEnum(0, v14);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v14 - v10;
  (*(v8 + 16))(v14 - v10, v3, v7, v9);
  result = swift_getEnumCaseMultiPayload();
  if (result == 4)
  {
    v13 = *(v11 + 1);
  }

  else
  {
    result = (*(v8 + 8))(v11, v7);
    v13 = 0;
  }

  *a2 = v13;
  return result;
}

void TaggedValue_4.visitReferences(_:)(uint64_t a1, uint64_t a2)
{
  v51 = a1;
  v46 = *(*(a2 + 40) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v45 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *(*(v3 + 32) - 8);
  MEMORY[0x1EEE9AC00](v4);
  v43 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 24);
  v49 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 16);
  v48 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v16[6];
  v17 = v16[7];
  v20 = v16[8];
  v19 = v16[9];
  *&v21 = v12;
  *(&v21 + 1) = v7;
  v42 = v22;
  *&v23 = v22;
  v47 = v24;
  *(&v23 + 1) = v24;
  v52[0] = v21;
  v52[1] = v23;
  v53 = v18;
  v54 = v17;
  v55 = v20;
  v56 = v19;
  v25 = type metadata accessor for TaggedValue_4.TaggedEnum(0, v52);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  (*(v29 + 16))(&v42 - v27, v50, v25, v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v35 = v10;
    v36 = v49;
    if (EnumCaseMultiPayload)
    {
      (*(v49 + 32))(v35, v28, v7);
      (*(*(v17 + 8) + 48))(v51, v7);
      (*(v36 + 8))(v35, v7);
    }

    else
    {
      v37 = v48;
      (*(v48 + 32))(v15, v28, v12);
      (*(*(v18 + 8) + 48))(v51, v12);
      (*(v37 + 8))(v15, v12);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v38 = v43;
    v39 = v44;
    v40 = v28;
    v41 = v42;
    (*(v44 + 32))(v43, v40, v42);
    (*(*(v20 + 8) + 48))(v51, v41);
    (*(v39 + 8))(v38, v41);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v32 = v45;
    v31 = v46;
    v33 = v28;
    v34 = v47;
    (*(v46 + 32))(v45, v33, v47);
    (*(*(v19 + 8) + 48))(v51, v34);
    (*(v31 + 8))(v32, v34);
  }

  else
  {
    (*(**(v28 + 1) + 120))(v51);
  }
}

uint64_t TaggedValue_4.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v75 = a1;
  v76 = a3;
  v66 = *(*(a2 + 40) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v65 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v64 = &v60 - v5;
  v7 = *(v6 + 32);
  v63 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v62 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v60 - v11;
  v14 = *(v13 + 24);
  v68 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v60 - v19;
  v22 = *(v21 + 16);
  v67 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v60 - v27;
  v31 = v29[6];
  v30 = v29[7];
  v32 = v29[8];
  v33 = v29[9];
  *&v34 = v22;
  *(&v34 + 1) = v14;
  *&v35 = v7;
  v69 = v36;
  *(&v35 + 1) = v36;
  v60 = v35;
  v78 = v35;
  v61 = v34;
  v77 = v34;
  v72 = v31;
  v73 = v30;
  v79 = v31;
  v80 = v30;
  v74 = v32;
  v81 = v32;
  v82 = v33;
  v71 = v33;
  v37 = type metadata accessor for TaggedValue_4.TaggedEnum(0, &v77);
  v38 = MEMORY[0x1EEE9AC00](v37);
  v40 = &v60 - v39;
  (*(v41 + 16))(&v60 - v39, v70, v37, v38);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v50 = v68;
    if (EnumCaseMultiPayload)
    {
      (*(v68 + 32))(v20, v40, v14);
      v59 = v73;
      (*(*(v73 + 8) + 24))(v75, v14);
      (*(v50 + 8))(v20, v14);
      return TaggedValue_4.init(_:)(v17, v22, v14, v7, v69, v72, v59, v74, v76, v71);
    }

    else
    {
      v51 = v67;
      (*(v67 + 32))(v28, v40, v22);
      v52 = v72;
      (*(*(v72 + 8) + 24))(v75, v22);
      (*(v51 + 8))(v28, v22);
      return TaggedValue_4.init(_:)(v25, v22, v14, v7, v69, v52, v73, v74, v76, v71);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v53 = v63;
    (*(v63 + 32))(v12, v40, v7);
    v54 = v74;
    v55 = v62;
    (*(*(v74 + 8) + 24))(v75, v7);
    (*(v53 + 8))(v12, v7);
    return TaggedValue_4.init(_:)(v55, v22, v14, v7, v69, v72, v73, v54, v76, v71);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v43 = v66;
    v44 = v64;
    v45 = v40;
    v46 = v69;
    (*(v66 + 32))(v64, v45, v69);
    v47 = v71;
    v48 = v65;
    (*(*(v71 + 8) + 24))(v75, v46);
    (*(v43 + 8))(v44, v46);
    return TaggedValue_4.init(_:)(v48, v22, v14, v7, v46, v72, v73, v74, v76, v47);
  }

  else
  {
    v56 = *v40;
    v57 = (*(**(v40 + 1) + 104))(v75);

    v58 = v76;
    *v76 = v56;
    v58[1] = v57;
    v78 = v60;
    v77 = v61;
    v79 = v72;
    v80 = v73;
    v81 = v74;
    v82 = v71;
    type metadata accessor for TaggedValue_4.TaggedEnum(0, &v77);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t TaggedValue_4.observableDifference(from:with:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v175 = a2;
  v188 = a1;
  v185 = a4;
  v5 = a3[5];
  *&v186 = a3[9];
  v166 = *(v186 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v144 = sub_1AE23D7CC();
  v143 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v167 = &v132 - v7;
  v168 = AssociatedTypeWitness;
  v165 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v8);
  v142 = &v132 - v9;
  v173 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v163 = &v132 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v162 = &v132 - v13;
  v14 = a3[8];
  v15 = a3[4];
  v159 = *(v14 + 8);
  v16 = swift_getAssociatedTypeWitness();
  v141 = sub_1AE23D7CC();
  v140 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v161 = &v132 - v17;
  v164 = v16;
  v160 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v139 = &v132 - v19;
  v171 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v158 = &v132 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v157 = &v132 - v23;
  v24 = a3[7];
  v25 = a3[3];
  v153 = *(v24 + 8);
  v26 = swift_getAssociatedTypeWitness();
  v138 = sub_1AE23D7CC();
  v137 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v154 = &v132 - v27;
  v156 = v26;
  v155 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v136 = &v132 - v29;
  v177 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v152 = &v132 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v151 = &v132 - v33;
  v34 = a3[6];
  v35 = a3[2];
  v147 = *(v34 + 8);
  v36 = swift_getAssociatedTypeWitness();
  v135 = sub_1AE23D7CC();
  v134 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v149 = &v132 - v37;
  v150 = v36;
  v148 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v133 = &v132 - v39;
  v176 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v146 = &v132 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v145 = &v132 - v43;
  *&v44 = v35;
  v178 = v25;
  *(&v44 + 1) = v25;
  v172 = v15;
  *&v45 = v15;
  v174 = v5;
  *(&v45 + 1) = v5;
  *&v46 = v34;
  *(&v46 + 1) = v24;
  v182 = v45;
  v183 = v44;
  v190 = v45;
  v189 = v44;
  *&v44 = v14;
  *(&v44 + 1) = v186;
  v184 = v44;
  v192 = v44;
  v186 = v46;
  v191 = v46;
  v47 = type metadata accessor for TaggedValue_4.TaggedEnum(0, &v189);
  v48 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v50 = (&v132 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v51);
  v170 = &v132 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v169 = &v132 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v132 - v56;
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v132 - v59;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v181 = *(TupleTypeMetadata2 - 8);
  v62 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v64 = &v132 - v63;
  v180 = v65;
  v66 = &v132 + *(v65 + 48) - v63;
  v179 = v48;
  v67 = *(v48 + 16);
  v67(&v132 - v63, v187, v47, v62);
  v68 = v66;
  (v67)(v66, v188, v47);
  v187 = v47;
  v188 = v64;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v85 = v169;
      v70 = v187;
      (v67)(v169, v188, v187);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v86 = v171;
        v87 = *(v171 + 32);
        v88 = v157;
        v89 = v172;
        v87(v157, v85, v172);
        v90 = v158;
        v87(v158, v68, v89);
        v91 = v161;
        (*(v159 + 40))(v90, v175, v89);
        v92 = *(v86 + 8);
        v92(v90, v89);
        v92(v88, v89);
        v93 = v160;
        v94 = v164;
        if ((*(v160 + 48))(v91, 1, v164) == 1)
        {
          (*(v140 + 8))(v91, v141);
          goto LABEL_27;
        }

        v118 = *(v93 + 32);
        v119 = v139;
        v118(v139, v91, v94);
        v120 = v185;
        v118(v185, v119, v94);
        v190 = v182;
        v189 = v183;
        v192 = v184;
        v191 = v186;
        v121 = type metadata accessor for TaggedValue_4.ObservableDifference(0, &v189);
LABEL_35:
        swift_storeEnumTagMultiPayload();
        (*(*(v121 - 8) + 56))(v120, 0, 1, v121);
        goto LABEL_36;
      }

      (*(v171 + 8))(v85, v172);
    }

    else
    {
      v70 = v187;
      if (EnumCaseMultiPayload == 3)
      {
        v71 = v170;
        (v67)(v170, v188, v187);
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v72 = v173;
          v73 = *(v173 + 32);
          v74 = v162;
          v75 = v174;
          v73(v162, v71, v174);
          v76 = v163;
          v73(v163, v68, v75);
          v77 = v167;
          (*(v166 + 40))(v76, v175, v75);
          v78 = *(v72 + 8);
          v78(v76, v75);
          v78(v74, v75);
          v79 = v165;
          v80 = v168;
          if ((*(v165 + 48))(v77, 1, v168) == 1)
          {
            (*(v143 + 8))(v77, v144);
LABEL_27:
            v190 = v182;
            v189 = v183;
            v192 = v184;
            v191 = v186;
            goto LABEL_28;
          }

          v122 = *(v79 + 32);
          v123 = v142;
          v122(v142, v77, v80);
          v120 = v185;
          v122(v185, v123, v80);
          v190 = v182;
          v189 = v183;
          v192 = v184;
          v191 = v186;
          v121 = type metadata accessor for TaggedValue_4.ObservableDifference(0, &v189);
          goto LABEL_35;
        }

        (*(v173 + 8))(v71, v174);
      }

      else
      {
        (v67)(v50, v188, v187);
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          v95 = *v50;
          v96 = *v66;

          if (v95 == v96)
          {
            v189 = v183;
            v190 = v182;
            v191 = v186;
            v192 = v184;
LABEL_28:
            v117 = type metadata accessor for TaggedValue_4.ObservableDifference(0, &v189);
            (*(*(v117 - 8) + 56))(v185, 1, 1, v117);
LABEL_36:
            v108 = &v193;
            goto LABEL_37;
          }

          v189 = v183;
          v190 = v182;
          v191 = v186;
          v192 = v184;
          v121 = type metadata accessor for TaggedValue_4.ObservableDifference(0, &v189);
          v120 = v185;
          goto LABEL_35;
        }
      }
    }

LABEL_24:
    v106 = v185;
    v189 = v183;
    v190 = v182;
    v191 = v186;
    v192 = v184;
    v107 = type metadata accessor for TaggedValue_4.ObservableDifference(0, &v189);
    swift_storeEnumTagMultiPayload();
    (*(*(v107 - 8) + 56))(v106, 0, 1, v107);
    v70 = v180;
    v108 = &v194;
LABEL_37:
    v128 = *(v108 - 32);
    return (*(v128 + 8))(v188, v70);
  }

  v81 = v176;
  v82 = v177;
  v83 = v178;
  if (!EnumCaseMultiPayload)
  {
    v70 = v187;
    (v67)(v60, v188, v187);
    v84 = v68;
    if (!swift_getEnumCaseMultiPayload())
    {
      v109 = *(v81 + 32);
      v110 = v145;
      v111 = v35;
      v109(v145, v60, v35);
      v112 = v146;
      v109(v146, v84, v35);
      v113 = v149;
      (*(v147 + 40))(v112, v175, v35);
      v114 = *(v81 + 8);
      v114(v112, v111);
      v114(v110, v111);
      v115 = v148;
      v116 = v150;
      if ((*(v148 + 48))(v113, 1, v150) == 1)
      {
        (*(v134 + 8))(v113, v135);
        goto LABEL_27;
      }

      v129 = *(v115 + 32);
      v130 = v133;
      v129(v133, v113, v116);
      v120 = v185;
      v129(v185, v130, v116);
      v190 = v182;
      v189 = v183;
      v192 = v184;
      v191 = v186;
      v121 = type metadata accessor for TaggedValue_4.ObservableDifference(0, &v189);
      goto LABEL_35;
    }

    (*(v81 + 8))(v60, v35);
    goto LABEL_24;
  }

  (v67)(v57, v188, v187);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v82 + 8))(v57, v83);
    goto LABEL_24;
  }

  v97 = v82;
  v98 = *(v82 + 32);
  v99 = v151;
  v98(v151, v57, v83);
  v100 = v152;
  v98(v152, v68, v83);
  v101 = v154;
  (*(v153 + 40))(v100, v175, v83);
  v102 = *(v97 + 8);
  v102(v100, v83);
  v102(v99, v83);
  v103 = v155;
  v104 = v156;
  if ((*(v155 + 48))(v101, 1, v156) == 1)
  {
    (*(v137 + 8))(v101, v138);
    v190 = v182;
    v189 = v183;
    v192 = v184;
    v191 = v186;
    v105 = type metadata accessor for TaggedValue_4.ObservableDifference(0, &v189);
    (*(*(v105 - 8) + 56))(v185, 1, 1, v105);
  }

  else
  {
    v124 = *(v103 + 32);
    v125 = v136;
    v124(v136, v101, v104);
    v126 = v185;
    v124(v185, v125, v104);
    v190 = v182;
    v189 = v183;
    v192 = v184;
    v191 = v186;
    v127 = type metadata accessor for TaggedValue_4.ObservableDifference(0, &v189);
    swift_storeEnumTagMultiPayload();
    (*(*(v127 - 8) + 56))(v126, 0, 1, v127);
  }

  v128 = v179;
  v70 = v187;
  return (*(v128 + 8))(v188, v70);
}

BOOL TaggedValue_5.ObservableDifference.isIdentityChanged.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v3);
  v6 = swift_getEnumCaseMultiPayload() == 6;
  (*(v2 + 8))(v5, a1);
  return v6;
}

uint64_t TaggedValue_5.taggedEnum.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[2];
  v8[0] = a1[1];
  v8[1] = v4;
  v5 = a1[4];
  v8[2] = a1[3];
  v8[3] = v5;
  v8[4] = a1[5];
  v6 = type metadata accessor for TaggedValue_5.TaggedEnum(0, v8);
  return (*(*(v6 - 8) + 16))(a2, v2, v6);
}

uint64_t TaggedValue_5.taggedEnum.setter(uint64_t a1, _OWORD *a2)
{
  v4 = a2[2];
  v8[0] = a2[1];
  v8[1] = v4;
  v5 = a2[4];
  v8[2] = a2[3];
  v8[3] = v5;
  v8[4] = a2[5];
  v6 = type metadata accessor for TaggedValue_5.TaggedEnum(0, v8);
  return (*(*(v6 - 8) + 40))(v2, a1, v6);
}

uint64_t TaggedValue_5.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11)
{
  (*(*(a2 - 8) + 32))(a9, a1, a2);
  v19[0] = a2;
  v19[1] = a3;
  v19[2] = a4;
  v19[3] = a5;
  v19[4] = a6;
  v19[5] = a7;
  v19[6] = a8;
  v20 = a10;
  v21 = a11;
  type metadata accessor for TaggedValue_5.TaggedEnum(0, v19);
  return swift_storeEnumTagMultiPayload();
}

{
  (*(*(a3 - 8) + 32))(a9, a1);
  v19[0] = a2;
  v19[1] = a3;
  v19[2] = a4;
  v19[3] = a5;
  v19[4] = a6;
  v19[5] = a7;
  v19[6] = a8;
  v20 = a10;
  v21 = a11;
  type metadata accessor for TaggedValue_5.TaggedEnum(0, v19);
  return swift_storeEnumTagMultiPayload();
}

{
  (*(*(a4 - 8) + 32))(a9, a1, a4);
  v19[0] = a2;
  v19[1] = a3;
  v19[2] = a4;
  v19[3] = a5;
  v19[4] = a6;
  v19[5] = a7;
  v19[6] = a8;
  v20 = a10;
  v21 = a11;
  type metadata accessor for TaggedValue_5.TaggedEnum(0, v19);
  return swift_storeEnumTagMultiPayload();
}

{
  (*(*(a5 - 8) + 32))(a9, a1, a5);
  v19[0] = a2;
  v19[1] = a3;
  v19[2] = a4;
  v19[3] = a5;
  v19[4] = a6;
  v19[5] = a7;
  v19[6] = a8;
  v20 = a10;
  v21 = a11;
  type metadata accessor for TaggedValue_5.TaggedEnum(0, v19);
  return swift_storeEnumTagMultiPayload();
}

{
  (*(*(a6 - 8) + 32))(a9, a1, a6);
  v19[0] = a2;
  v19[1] = a3;
  v19[2] = a4;
  v19[3] = a5;
  v19[4] = a6;
  v19[5] = a7;
  v19[6] = a8;
  v20 = a10;
  v21 = a11;
  type metadata accessor for TaggedValue_5.TaggedEnum(0, v19);
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_5.init(tag:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12)
{
  v12 = *a2;
  *a9 = a1;
  a9[1] = v12;
  v14[0] = a3;
  v14[1] = a4;
  v14[2] = a5;
  v14[3] = a6;
  v14[4] = a7;
  v14[5] = a8;
  v15 = a10;
  v16 = a11;
  v17 = a12;
  type metadata accessor for TaggedValue_5.TaggedEnum(0, v14);
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_5.tagged1.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[2];
  v18 = a1[1];
  v19[0] = v18;
  v6 = a1[3];
  v7 = a1[4];
  v19[1] = v5;
  v19[2] = v6;
  v8 = a1[5];
  v19[3] = v7;
  v19[4] = v8;
  v9 = type metadata accessor for TaggedValue_5.TaggedEnum(0, v19);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v19[-1] - v12;
  (*(v10 + 16))(&v19[-1] - v12, v3, v9, v11);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v10 + 8))(v13, v9);
    v14 = v18;
    v15 = *(v18 - 8);
    v16 = 1;
  }

  else
  {
    v15 = *(v18 - 8);
    (*(v15 + 32))(a2, v13);
    v14 = v18;
    v16 = 0;
  }

  return (*(v15 + 56))(a2, v16, 1, v14);
}

uint64_t TaggedValue_5.tagged2.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 88);
  v15 = *(a1 + 16);
  v14 = *(a1 + 24);
  v16 = v14;
  v17 = *(a1 + 40);
  v18 = *(a1 + 56);
  v19 = *(a1 + 72);
  v20 = v5;
  v6 = type metadata accessor for TaggedValue_5.TaggedEnum(0, &v15);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, v3, v6, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *(v14 - 8);
    (*(v11 + 32))(a2, v10);
    v12 = 0;
  }

  else
  {
    (*(v7 + 8))(v10, v6);
    v11 = *(v14 - 8);
    v12 = 1;
  }

  return (*(v11 + 56))(a2, v12, 1, v14);
}

uint64_t TaggedValue_5.tagged3.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[1];
  v17 = a1[2];
  v18[0] = v5;
  v6 = a1[3];
  v7 = a1[4];
  v18[1] = v17;
  v18[2] = v6;
  v8 = a1[5];
  v18[3] = v7;
  v18[4] = v8;
  v9 = type metadata accessor for TaggedValue_5.TaggedEnum(0, v18);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v18[-1] - v12;
  (*(v10 + 16))(&v18[-1] - v12, v3, v9, v11);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v14 = *(v17 - 8);
    (*(v14 + 32))(a2, v13);
    v15 = 0;
  }

  else
  {
    (*(v10 + 8))(v13, v9);
    v14 = *(v17 - 8);
    v15 = 1;
  }

  return (*(v14 + 56))(a2, v15, 1, v17);
}

uint64_t TaggedValue_5.tagged4.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 88);
  v6 = *(a1 + 16);
  v17 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = v6;
  v18 = v15;
  v19 = *(a1 + 56);
  v20 = *(a1 + 72);
  v21 = v5;
  v7 = type metadata accessor for TaggedValue_5.TaggedEnum(0, &v16);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, v3, v7, v9);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v12 = *(v15 - 8);
    (*(v12 + 32))(a2, v11);
    v13 = 0;
  }

  else
  {
    (*(v8 + 8))(v11, v7);
    v12 = *(v15 - 8);
    v13 = 1;
  }

  return (*(v12 + 56))(a2, v13, 1, v15);
}

uint64_t TaggedValue_5.tagged5.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[2];
  v16[0] = a1[1];
  v16[1] = v5;
  v6 = a1[4];
  v15 = a1[3];
  v16[2] = v15;
  v16[3] = v6;
  v16[4] = a1[5];
  v7 = type metadata accessor for TaggedValue_5.TaggedEnum(0, v16);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v16[-1] - v10;
  (*(v8 + 16))(&v16[-1] - v10, v3, v7, v9);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v12 = *(v15 - 8);
    (*(v12 + 32))(a2, v11);
    v13 = 0;
  }

  else
  {
    (*(v8 + 8))(v11, v7);
    v12 = *(v15 - 8);
    v13 = 1;
  }

  return (*(v12 + 56))(a2, v13, 1, v15);
}

uint64_t TaggedValue_5.unknown.getter@<X0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = a1[2];
  v14[0] = a1[1];
  v14[1] = v5;
  v6 = a1[4];
  v14[2] = a1[3];
  v14[3] = v6;
  v14[4] = a1[5];
  v7 = type metadata accessor for TaggedValue_5.TaggedEnum(0, v14);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v14 - v10;
  (*(v8 + 16))(v14 - v10, v3, v7, v9);
  result = swift_getEnumCaseMultiPayload();
  if (result == 5)
  {
    v13 = *(v11 + 1);
  }

  else
  {
    result = (*(v8 + 8))(v11, v7);
    v13 = 0;
  }

  *a2 = v13;
  return result;
}

double TaggedValue_5.visitReferences(_:)(uint64_t a1, uint64_t a2)
{
  v56 = a1;
  v53 = *(*(a2 + 48) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v52 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v3 + 40);
  v51 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v50 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 32);
  v49 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v48 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 24);
  v47 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v46 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 16);
  v45 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v20 + 56);
  v22 = *(v20 + 64);
  v24 = *(v20 + 80);
  v23 = *(v20 + 88);
  *&v25 = v16;
  *(&v25 + 1) = v12;
  *&v26 = v8;
  *(&v26 + 1) = v4;
  v58[1] = v26;
  v58[0] = v25;
  v54 = v27;
  *&v25 = v27;
  *(&v25 + 1) = v21;
  v55 = v22;
  v58[3] = v22;
  v58[2] = v25;
  v59 = v24;
  v60 = v23;
  v28 = type metadata accessor for TaggedValue_5.TaggedEnum(0, v58);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v45 - v30;
  (*(v32 + 16))(&v45 - v30, v57, v28, v29);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v42 = v50;
      v41 = v51;
      (*(v51 + 32))(v50, v31, v4);
      (*(*(v24 + 8) + 48))(v56, v4);
      (*(v41 + 8))(v42, v4);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v37 = v52;
      v38 = v53;
      v39 = v54;
      (*(v53 + 32))(v52, v31, v54);
      (*(*(v23 + 8) + 48))(v56, v39);
      (*(v38 + 8))(v37, v39);
    }

    else
    {
      (*(**(v31 + 1) + 120))(v56);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v34 = v47;
      v35 = v46;
      (*(v47 + 32))(v46, v31, v12);
      (*(*(v55 + 8) + 48))(v56, v12);
      (*(v34 + 8))(v35, v12);
    }

    else
    {
      v43 = v49;
      v44 = v48;
      (*(v49 + 32))(v48, v31, v8);
      (*(*(*(&v55 + 1) + 8) + 48))(v56, v8);
      (*(v43 + 8))(v44, v8);
    }
  }

  else
  {
    v40 = v45;
    (*(v45 + 32))(v19, v31, v16);
    (*(*(v21 + 8) + 48))(v56, v16);
    (*(v40 + 8))(v19, v16);
  }

  return result;
}

uint64_t TaggedValue_5.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v91 = a1;
  v93 = a3;
  v86 = *(*(a2 + 48) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v85 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v84 = &v76 - v5;
  v83 = *(*(v6 + 40) - 8);
  MEMORY[0x1EEE9AC00](v7);
  v82 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v76 - v10;
  v81 = *(*(v12 + 32) - 8);
  MEMORY[0x1EEE9AC00](v13);
  v80 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v76 - v16;
  v19 = *(v18 + 24);
  v79 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v76 - v24;
  v27 = *(v26 + 16);
  v78 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v76 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v76 - v32;
  v35 = *(v34 + 56);
  v36 = *(v34 + 64);
  v37 = *(v34 + 80);
  v38 = *(v34 + 88);
  *&v39 = v27;
  *(&v39 + 1) = v19;
  v87 = v40;
  *&v41 = v40;
  v88 = v42;
  *(&v41 + 1) = v42;
  v76 = v41;
  v98 = v41;
  v77 = v39;
  v97 = v39;
  v94 = v43;
  *&v99 = v43;
  *(&v99 + 1) = v35;
  v92 = v35;
  v96 = v36;
  v100 = v36;
  v89 = v38;
  v90 = v37;
  v101 = v37;
  v102 = v38;
  v44 = type metadata accessor for TaggedValue_5.TaggedEnum(0, &v97);
  v45 = MEMORY[0x1EEE9AC00](v44);
  v47 = &v76 - v46;
  (*(v48 + 16))(&v76 - v46, v95, v44, v45);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v60 = v83;
      v61 = v88;
      (*(v83 + 32))(v11, v47, v88);
      v62 = v90;
      v63 = v82;
      (*(*(v90 + 8) + 24))(v91, v61);
      (*(v60 + 8))(v11, v61);
      *(&v74 + 1) = v62;
      *&v74 = *(&v96 + 1);
      return TaggedValue_5.init(_:)(v63, v27, v19, v87, v61, v94, v92, v96, v93, v74, v89);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v53 = v86;
      v54 = v84;
      v55 = v94;
      (*(v86 + 32))(v84, v47, v94);
      v56 = v89;
      v57 = v85;
      (*(*(v89 + 8) + 24))(v91, v55);
      (*(v53 + 8))(v54, v55);
      *(&v72 + 1) = v90;
      *&v72 = *(&v96 + 1);
      return TaggedValue_5.init(_:)(v57, v27, v19, v87, v88, v55, v92, v96, v93, v72, v56);
    }

    else
    {
      v67 = *v47;
      v68 = (*(**(v47 + 1) + 104))(v91);

      v69 = v93;
      *v93 = v67;
      v69[1] = v68;
      v98 = v76;
      v97 = v77;
      *&v70 = v94;
      *(&v70 + 1) = v92;
      v100 = v96;
      v99 = v70;
      v101 = v90;
      v102 = v89;
      type metadata accessor for TaggedValue_5.TaggedEnum(0, &v97);
      return swift_storeEnumTagMultiPayload();
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v50 = v79;
      (*(v79 + 32))(v25, v47, v19);
      v51 = v96;
      (*(*(v96 + 8) + 24))(v91, v19);
      (*(v50 + 8))(v25, v19);
      *(&v71 + 1) = v90;
      *&v71 = *(&v96 + 1);
      return TaggedValue_5.init(_:)(v22, v27, v19, v87, v88, v94, v92, v51, v93, v71, v89);
    }

    else
    {
      v64 = v81;
      v65 = v87;
      (*(v81 + 32))(v17, v47, v87);
      v66 = v80;
      (*(*(*(&v96 + 1) + 8) + 24))(v91, v65);
      (*(v64 + 8))(v17, v65);
      *(&v75 + 1) = v90;
      *&v75 = *(&v96 + 1);
      return TaggedValue_5.init(_:)(v66, v27, v19, v65, v88, v94, v92, v96, v93, v75, v89);
    }
  }

  else
  {
    v58 = v78;
    (*(v78 + 32))(v33, v47, v27);
    v59 = v92;
    (*(*(v92 + 8) + 24))(v91, v27);
    (*(v58 + 8))(v33, v27);
    *(&v73 + 1) = v90;
    *&v73 = *(&v96 + 1);
    return TaggedValue_5.init(_:)(v30, v27, v19, v87, v88, v94, v59, v96, v93, v73, v89);
  }
}

uint64_t TaggedValue_5.observableDifference(from:with:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v217 = a2;
  v226 = a4;
  v5 = a3[11];
  v228 = a1;
  v229 = v5;
  v6 = a3[6];
  v202 = *(v5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v174 = sub_1AE23D7CC();
  v173 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174);
  v203 = &v159 - v8;
  v204 = AssociatedTypeWitness;
  v201 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v9);
  v172 = &v159 - v10;
  v215 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v199 = &v159 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v198 = &v159 - v14;
  v15 = a3[10];
  v16 = a3[5];
  v195 = *(v15 + 8);
  v17 = swift_getAssociatedTypeWitness();
  v171 = sub_1AE23D7CC();
  v170 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171);
  v197 = &v159 - v18;
  v200 = v17;
  v196 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v169 = &v159 - v20;
  v213 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v193 = &v159 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v192 = &v159 - v24;
  v25 = a3[9];
  v26 = a3[4];
  v189 = *(v25 + 8);
  v27 = swift_getAssociatedTypeWitness();
  v168 = sub_1AE23D7CC();
  v167 = *(v168 - 8);
  MEMORY[0x1EEE9AC00](v168);
  v191 = &v159 - v28;
  v194 = v27;
  v190 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v166 = &v159 - v30;
  v211 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v187 = &v159 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v186 = &v159 - v34;
  v35 = a3[8];
  v36 = a3[3];
  v183 = *(v35 + 8);
  v37 = swift_getAssociatedTypeWitness();
  v165 = sub_1AE23D7CC();
  v164 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v185 = &v159 - v38;
  v188 = v37;
  v184 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v163 = &v159 - v40;
  v209 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v182 = &v159 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v181 = &v159 - v44;
  v45 = a3[7];
  v46 = a3[2];
  v177 = *(v45 + 8);
  v47 = swift_getAssociatedTypeWitness();
  v162 = sub_1AE23D7CC();
  v161 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v179 = &v159 - v48;
  v180 = v47;
  v178 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v160 = &v159 - v50;
  v207 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v176 = &v159 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v175 = &v159 - v54;
  v208 = v46;
  *&v55 = v46;
  v210 = v36;
  *(&v55 + 1) = v36;
  v212 = v26;
  *&v56 = v26;
  v214 = v16;
  *(&v56 + 1) = v16;
  v221 = v56;
  v231 = v56;
  v222 = v55;
  v230 = v55;
  v216 = v6;
  *&v55 = v6;
  *(&v55 + 1) = v45;
  *&v56 = v35;
  *(&v56 + 1) = v25;
  v223 = v56;
  v224 = v55;
  v233 = v56;
  v232 = v55;
  v225 = v15;
  v234 = v15;
  v235 = v229;
  v57 = type metadata accessor for TaggedValue_5.TaggedEnum(0, &v230);
  v58 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v60 = (&v159 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v61);
  v206 = &v159 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v205 = &v159 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v67 = &v159 - v66;
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v159 - v69;
  MEMORY[0x1EEE9AC00](v71);
  v73 = &v159 - v72;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v220 = *(TupleTypeMetadata2 - 8);
  v75 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v77 = &v159 - v76;
  v219 = v78;
  v79 = &v159 + *(v78 + 48) - v76;
  v218 = v58;
  v80 = *(v58 + 16);
  v80(&v159 - v76, v227, v57, v75);
  v81 = v79;
  (v80)(v79, v228, v57);
  v228 = v77;
  v82 = v57;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      v84 = v228;
      if (EnumCaseMultiPayload == 1)
      {
        (v80)(v70, v228, v57);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v85 = v209;
          v86 = *(v209 + 32);
          v87 = v181;
          v88 = v70;
          v89 = v79;
          v90 = v210;
          v86(v181, v88, v210);
          v91 = v182;
          v86(v182, v89, v90);
          v92 = v185;
          (*(v183 + 40))(v91, v217, v90);
          v93 = *(v85 + 8);
          v93(v91, v90);
          v93(v87, v90);
          v94 = v184;
          v95 = v188;
          if ((*(v184 + 48))(v92, 1, v188) == 1)
          {
            (*(v164 + 8))(v92, v165);
LABEL_31:
            v231 = v221;
            v230 = v222;
            v233 = v223;
            v232 = v224;
            v234 = v225;
            v235 = v229;
            v142 = type metadata accessor for TaggedValue_5.ObservableDifference(0, &v230);
            (*(*(v142 - 8) + 56))(v226, 1, 1, v142);
LABEL_40:
            v132 = &v236;
            goto LABEL_41;
          }

          v147 = *(v94 + 32);
          v148 = v163;
          v147(v163, v92, v95);
          v145 = v226;
          v147(v226, v148, v95);
          v231 = v221;
          v230 = v222;
          v233 = v223;
          v232 = v224;
          v234 = v225;
          v235 = v229;
          v146 = type metadata accessor for TaggedValue_5.ObservableDifference(0, &v230);
          goto LABEL_39;
        }

        (*(v209 + 8))(v70, v210);
      }

      else
      {
        (v80)(v67, v228, v57);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v118 = v211;
          v119 = *(v211 + 32);
          v120 = v186;
          v121 = v212;
          v119(v186, v67, v212);
          v122 = v187;
          v119(v187, v81, v121);
          v123 = v191;
          (*(v189 + 40))(v122, v217, v121);
          v124 = *(v118 + 8);
          v124(v122, v121);
          v124(v120, v121);
          v125 = v190;
          v126 = v194;
          if ((*(v190 + 48))(v123, 1, v194) == 1)
          {
            (*(v167 + 8))(v123, v168);
            goto LABEL_31;
          }

          v151 = *(v125 + 32);
          v152 = v166;
          v151(v166, v123, v126);
          v145 = v226;
          v151(v226, v152, v126);
          v231 = v221;
          v230 = v222;
          v233 = v223;
          v232 = v224;
          v234 = v225;
          v235 = v229;
          v146 = type metadata accessor for TaggedValue_5.ObservableDifference(0, &v230);
          goto LABEL_39;
        }

        (*(v211 + 8))(v67, v212);
      }
    }

    else
    {
      v84 = v228;
      (v80)(v73, v228, v57);
      if (!swift_getEnumCaseMultiPayload())
      {
        v133 = v207;
        v134 = *(v207 + 32);
        v135 = v175;
        v136 = v208;
        v134(v175, v73, v208);
        v137 = v176;
        v134(v176, v81, v136);
        v138 = v179;
        (*(v177 + 40))(v137, v217, v136);
        v139 = *(v133 + 8);
        v139(v137, v136);
        v139(v135, v136);
        v140 = v178;
        v141 = v180;
        if ((*(v178 + 48))(v138, 1, v180) == 1)
        {
          (*(v161 + 8))(v138, v162);
          goto LABEL_31;
        }

        v156 = *(v140 + 32);
        v157 = v160;
        v156(v160, v138, v141);
        v145 = v226;
        v156(v226, v157, v141);
        v231 = v221;
        v230 = v222;
        v233 = v223;
        v232 = v224;
        v234 = v225;
        v235 = v229;
        v146 = type metadata accessor for TaggedValue_5.ObservableDifference(0, &v230);
        goto LABEL_39;
      }

      (*(v207 + 8))(v73, v208);
    }

    goto LABEL_27;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v107 = v205;
    v84 = v228;
    (v80)(v205, v228, v82);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v108 = v213;
      v109 = *(v213 + 32);
      v110 = v192;
      v111 = v107;
      v112 = v214;
      v109(v192, v111, v214);
      v113 = v193;
      v109(v193, v81, v112);
      v114 = v197;
      (*(v195 + 40))(v113, v217, v112);
      v115 = *(v108 + 8);
      v115(v113, v112);
      v115(v110, v112);
      v116 = v196;
      v117 = v200;
      if ((*(v196 + 48))(v114, 1, v200) == 1)
      {
        (*(v170 + 8))(v114, v171);
        goto LABEL_31;
      }

      v143 = *(v116 + 32);
      v144 = v169;
      v143(v169, v114, v117);
      v145 = v226;
      v143(v226, v144, v117);
      v231 = v221;
      v230 = v222;
      v233 = v223;
      v232 = v224;
      v234 = v225;
      v235 = v229;
      v146 = type metadata accessor for TaggedValue_5.ObservableDifference(0, &v230);
      goto LABEL_39;
    }

    (*(v213 + 8))(v107, v214);
    goto LABEL_27;
  }

  if (EnumCaseMultiPayload == 4)
  {
    v96 = v206;
    v84 = v228;
    (v80)(v206, v228, v82);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v97 = v215;
      v98 = *(v215 + 32);
      v99 = v198;
      v100 = v96;
      v101 = v216;
      v98(v198, v100, v216);
      v102 = v199;
      v98(v199, v79, v101);
      v103 = v203;
      (*(v202 + 40))(v102, v217, v101);
      v104 = *(v97 + 8);
      v104(v102, v101);
      v104(v99, v101);
      v105 = v201;
      v106 = v204;
      if ((*(v201 + 48))(v103, 1, v204) == 1)
      {
        (*(v173 + 8))(v103, v174);
        goto LABEL_31;
      }

      v149 = *(v105 + 32);
      v150 = v172;
      v149(v172, v103, v106);
      v145 = v226;
      v149(v226, v150, v106);
      v231 = v221;
      v230 = v222;
      v233 = v223;
      v232 = v224;
      v234 = v225;
      v235 = v229;
      v146 = type metadata accessor for TaggedValue_5.ObservableDifference(0, &v230);
LABEL_39:
      swift_storeEnumTagMultiPayload();
      (*(*(v146 - 8) + 56))(v145, 0, 1, v146);
      goto LABEL_40;
    }

    (*(v215 + 8))(v96, v216);
LABEL_27:
    v230 = v222;
    v231 = v221;
    v232 = v224;
    v233 = v223;
    v234 = v225;
    v235 = v229;
    v130 = type metadata accessor for TaggedValue_5.ObservableDifference(0, &v230);
    v131 = v226;
    swift_storeEnumTagMultiPayload();
    (*(*(v130 - 8) + 56))(v131, 0, 1, v130);
    v82 = v219;
    v132 = &v237;
LABEL_41:
    v155 = *(v132 - 32);
    return (*(v155 + 8))(v84, v82);
  }

  (v80)(v60, v228, v57);
  if (swift_getEnumCaseMultiPayload() != 5)
  {

    v84 = v228;
    goto LABEL_27;
  }

  v127 = *v60;
  v128 = *v79;

  v230 = v222;
  v231 = v221;
  v232 = v224;
  v233 = v223;
  v234 = v225;
  v235 = v229;
  if (v127 == v128)
  {
    v129 = type metadata accessor for TaggedValue_5.ObservableDifference(0, &v230);
    (*(*(v129 - 8) + 56))(v226, 1, 1, v129);
  }

  else
  {
    v153 = type metadata accessor for TaggedValue_5.ObservableDifference(0, &v230);
    v154 = v226;
    swift_storeEnumTagMultiPayload();
    (*(*(v153 - 8) + 56))(v154, 0, 1, v153);
  }

  v155 = v218;
  v84 = v228;
  return (*(v155 + 8))(v84, v82);
}

BOOL TaggedValue_6.ObservableDifference.isIdentityChanged.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v3);
  v6 = swift_getEnumCaseMultiPayload() == 7;
  (*(v2 + 8))(v5, a1);
  return v6;
}

uint64_t TaggedValue_6.taggedEnum.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[2];
  v9[0] = a1[1];
  v9[1] = v4;
  v5 = a1[4];
  v9[2] = a1[3];
  v9[3] = v5;
  v6 = a1[6];
  v9[4] = a1[5];
  v9[5] = v6;
  v7 = type metadata accessor for TaggedValue_6.TaggedEnum(0, v9);
  return (*(*(v7 - 8) + 16))(a2, v2, v7);
}

uint64_t TaggedValue_6.taggedEnum.setter(uint64_t a1, _OWORD *a2)
{
  v4 = a2[2];
  v9[0] = a2[1];
  v9[1] = v4;
  v5 = a2[4];
  v9[2] = a2[3];
  v9[3] = v5;
  v6 = a2[6];
  v9[4] = a2[5];
  v9[5] = v6;
  v7 = type metadata accessor for TaggedValue_6.TaggedEnum(0, v9);
  return (*(*(v7 - 8) + 40))(v2, a1, v7);
}

uint64_t TaggedValue_6.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, uint64_t a12)
{
  (*(*(a2 - 8) + 32))(a9, a1, a2);
  v20[0] = a2;
  v20[1] = a3;
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a6;
  v20[5] = a7;
  v20[6] = a8;
  v21 = a10;
  v22 = a11;
  v23 = a12;
  type metadata accessor for TaggedValue_6.TaggedEnum(0, v20);
  return swift_storeEnumTagMultiPayload();
}

{
  (*(*(a3 - 8) + 32))(a9, a1);
  v20[0] = a2;
  v20[1] = a3;
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a6;
  v20[5] = a7;
  v20[6] = a8;
  v21 = a10;
  v22 = a11;
  v23 = a12;
  type metadata accessor for TaggedValue_6.TaggedEnum(0, v20);
  return swift_storeEnumTagMultiPayload();
}

{
  (*(*(a4 - 8) + 32))(a9, a1, a4);
  v20[0] = a2;
  v20[1] = a3;
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a6;
  v20[5] = a7;
  v20[6] = a8;
  v21 = a10;
  v22 = a11;
  v23 = a12;
  type metadata accessor for TaggedValue_6.TaggedEnum(0, v20);
  return swift_storeEnumTagMultiPayload();
}

{
  (*(*(a5 - 8) + 32))(a9, a1, a5);
  v20[0] = a2;
  v20[1] = a3;
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a6;
  v20[5] = a7;
  v20[6] = a8;
  v21 = a10;
  v22 = a11;
  v23 = a12;
  type metadata accessor for TaggedValue_6.TaggedEnum(0, v20);
  return swift_storeEnumTagMultiPayload();
}

{
  (*(*(a6 - 8) + 32))(a9, a1, a6);
  v20[0] = a2;
  v20[1] = a3;
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a6;
  v20[5] = a7;
  v20[6] = a8;
  v21 = a10;
  v22 = a11;
  v23 = a12;
  type metadata accessor for TaggedValue_6.TaggedEnum(0, v20);
  return swift_storeEnumTagMultiPayload();
}

{
  (*(*(a7 - 8) + 32))(a9, a1, a7);
  v20[0] = a2;
  v20[1] = a3;
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a6;
  v20[5] = a7;
  v20[6] = a8;
  v21 = a10;
  v22 = a11;
  v23 = a12;
  type metadata accessor for TaggedValue_6.TaggedEnum(0, v20);
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_6.init(tag:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, __int128 a10, __int128 a11, uint64_t a12, uint64_t a13)
{
  v13 = *a2;
  *a9 = a1;
  a9[1] = v13;
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v15[4] = a7;
  v15[5] = a8;
  v16 = a10;
  v17 = a11;
  v18 = a12;
  v19 = a13;
  type metadata accessor for TaggedValue_6.TaggedEnum(0, v15);
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_6.tagged1.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[2];
  v19 = a1[1];
  v20[0] = v19;
  v6 = a1[3];
  v7 = a1[4];
  v20[1] = v5;
  v20[2] = v6;
  v8 = a1[5];
  v9 = a1[6];
  v20[3] = v7;
  v20[4] = v8;
  v20[5] = v9;
  v10 = type metadata accessor for TaggedValue_6.TaggedEnum(0, v20);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v20[-1] - v13;
  (*(v11 + 16))(&v20[-1] - v13, v3, v10, v12);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v11 + 8))(v14, v10);
    v15 = v19;
    v16 = *(v19 - 8);
    v17 = 1;
  }

  else
  {
    v16 = *(v19 - 8);
    (*(v16 + 32))(a2, v14);
    v15 = v19;
    v17 = 0;
  }

  return (*(v16 + 56))(a2, v17, 1, v15);
}

uint64_t TaggedValue_6.tagged2.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 104);
  v15 = *(a1 + 16);
  v14 = *(a1 + 24);
  v16 = v14;
  v17 = *(a1 + 40);
  v18 = *(a1 + 56);
  v19 = *(a1 + 72);
  v20 = *(a1 + 88);
  v21 = v5;
  v6 = type metadata accessor for TaggedValue_6.TaggedEnum(0, &v15);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, v3, v6, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *(v14 - 8);
    (*(v11 + 32))(a2, v10);
    v12 = 0;
  }

  else
  {
    (*(v7 + 8))(v10, v6);
    v11 = *(v14 - 8);
    v12 = 1;
  }

  return (*(v11 + 56))(a2, v12, 1, v14);
}

uint64_t TaggedValue_6.tagged3.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[1];
  v18 = a1[2];
  v19[0] = v5;
  v6 = a1[3];
  v7 = a1[4];
  v19[1] = v18;
  v19[2] = v6;
  v8 = a1[5];
  v9 = a1[6];
  v19[3] = v7;
  v19[4] = v8;
  v19[5] = v9;
  v10 = type metadata accessor for TaggedValue_6.TaggedEnum(0, v19);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v19[-1] - v13;
  (*(v11 + 16))(&v19[-1] - v13, v3, v10, v12);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v15 = *(v18 - 8);
    (*(v15 + 32))(a2, v14);
    v16 = 0;
  }

  else
  {
    (*(v11 + 8))(v14, v10);
    v15 = *(v18 - 8);
    v16 = 1;
  }

  return (*(v15 + 56))(a2, v16, 1, v18);
}

uint64_t TaggedValue_6.tagged4.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 104);
  v6 = *(a1 + 16);
  v17 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = v6;
  v18 = v15;
  v19 = *(a1 + 56);
  v20 = *(a1 + 72);
  v21 = *(a1 + 88);
  v22 = v5;
  v7 = type metadata accessor for TaggedValue_6.TaggedEnum(0, &v16);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, v3, v7, v9);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v12 = *(v15 - 8);
    (*(v12 + 32))(a2, v11);
    v13 = 0;
  }

  else
  {
    (*(v8 + 8))(v11, v7);
    v12 = *(v15 - 8);
    v13 = 1;
  }

  return (*(v12 + 56))(a2, v13, 1, v15);
}

uint64_t TaggedValue_6.tagged5.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[2];
  v17[0] = a1[1];
  v17[1] = v5;
  v6 = a1[4];
  v16 = a1[3];
  v17[2] = v16;
  v17[3] = v6;
  v7 = a1[6];
  v17[4] = a1[5];
  v17[5] = v7;
  v8 = type metadata accessor for TaggedValue_6.TaggedEnum(0, v17);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v17[-1] - v11;
  (*(v9 + 16))(&v17[-1] - v11, v3, v8, v10);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v13 = *(v16 - 8);
    (*(v13 + 32))(a2, v12);
    v14 = 0;
  }

  else
  {
    (*(v9 + 8))(v12, v8);
    v13 = *(v16 - 8);
    v14 = 1;
  }

  return (*(v13 + 56))(a2, v14, 1, v16);
}

uint64_t TaggedValue_6.tagged6.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 48);
  v6 = *(a1 + 104);
  v7 = *(a1 + 32);
  v17[0] = *(a1 + 16);
  v17[1] = v7;
  v18 = v5;
  v16 = *(a1 + 56);
  v19 = v16;
  v20 = *(a1 + 72);
  v21 = *(a1 + 88);
  v22 = v6;
  v8 = type metadata accessor for TaggedValue_6.TaggedEnum(0, v17);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v17[-1] - v11;
  (*(v9 + 16))(&v17[-1] - v11, v3, v8, v10);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v13 = *(v16 - 8);
    (*(v13 + 32))(a2, v12);
    v14 = 0;
  }

  else
  {
    (*(v9 + 8))(v12, v8);
    v13 = *(v16 - 8);
    v14 = 1;
  }

  return (*(v13 + 56))(a2, v14, 1, v16);
}

uint64_t TaggedValue_6.unknown.getter@<X0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = a1[2];
  v15[0] = a1[1];
  v15[1] = v5;
  v6 = a1[4];
  v15[2] = a1[3];
  v15[3] = v6;
  v7 = a1[6];
  v15[4] = a1[5];
  v15[5] = v7;
  v8 = type metadata accessor for TaggedValue_6.TaggedEnum(0, v15);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v15 - v11;
  (*(v9 + 16))(v15 - v11, v3, v8, v10);
  result = swift_getEnumCaseMultiPayload();
  if (result == 6)
  {
    v14 = *(v12 + 1);
  }

  else
  {
    result = (*(v9 + 8))(v12, v8);
    v14 = 0;
  }

  *a2 = v14;
  return result;
}

double TaggedValue_6.visitReferences(_:)(uint64_t a1, uint64_t a2)
{
  v65 = a1;
  v57 = *(*(a2 + 56) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v56 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = *(*(v3 + 48) - 8);
  MEMORY[0x1EEE9AC00](v4);
  v53 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = *(*(v6 + 40) - 8);
  MEMORY[0x1EEE9AC00](v7);
  v50 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 32);
  v63 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v62 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 24);
  v61 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 + 16);
  v60 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v23 + 64);
  v26 = *(v23 + 80);
  v25 = *(v23 + 88);
  *&v27 = v19;
  *(&v27 + 1) = v14;
  *&v28 = v10;
  v52 = v29;
  *(&v28 + 1) = v29;
  v30 = *(v23 + 96);
  v31 = *(v23 + 104);
  v66[1] = v28;
  v66[0] = v27;
  v55 = v32;
  *&v27 = v32;
  v58 = v33;
  *(&v27 + 1) = v33;
  v59 = v24;
  v66[3] = v24;
  v66[2] = v27;
  v67 = v26;
  v68 = v25;
  v49 = v25;
  v69 = v30;
  v70 = v31;
  v34 = type metadata accessor for TaggedValue_6.TaggedEnum(0, v66);
  v35 = MEMORY[0x1EEE9AC00](v34);
  v37 = &v49 - v36;
  (*(v38 + 16))(&v49 - v36, v64, v34, v35);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v44 = v61;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        (*(v61 + 32))(v17, v37, v14);
        (*(*(*(&v59 + 1) + 8) + 48))(v65, v14);
        (*(v44 + 8))(v17, v14);
      }

      else
      {
        v47 = v63;
        v48 = v62;
        (*(v63 + 32))(v62, v37, v10);
        (*(*(v26 + 8) + 48))(v65, v10);
        (*(v47 + 8))(v48, v10);
      }
    }

    else
    {
      v46 = v60;
      (*(v60 + 32))(v22, v37, v19);
      (*(*(v59 + 8) + 48))(v65, v19);
      (*(v46 + 8))(v22, v19);
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload != 5)
      {
        (*(**(v37 + 1) + 120))(v65);

        return result;
      }

      v40 = v57;
      v41 = v56;
      v42 = v58;
      (*(v57 + 32))(v56, v37, v58);
      v43 = *(v31 + 8);
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v40 = v51;
      v41 = v50;
      v42 = v52;
      (*(v51 + 32))(v50, v37, v52);
      v43 = *(v49 + 8);
    }

    else
    {
      v40 = v54;
      v41 = v53;
      v42 = v55;
      (*(v54 + 32))(v53, v37, v55);
      v43 = *(v30 + 8);
    }

    (*(v43 + 48))(v65, v42);
    (*(v40 + 8))(v41, v42);
  }

  return result;
}

uint64_t TaggedValue_6.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v125 = a1;
  v127 = a3;
  v112 = *(*(a2 + 56) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v113 = &v104 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v111 = &v104 - v5;
  v109 = *(*(v6 + 48) - 8);
  MEMORY[0x1EEE9AC00](v7);
  v110 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v108 = &v104 - v10;
  v106 = *(*(v11 + 40) - 8);
  MEMORY[0x1EEE9AC00](v12);
  v107 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v104 - v15;
  v18 = *(v17 + 32);
  v115 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v104 - v22;
  v114 = *(*(v24 + 24) - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v104 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v104 - v29;
  v32 = *(*(v31 + 16) - 8);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v104 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v104 - v37;
  v40 = *(v39 + 64);
  v41 = *(v39 + 80);
  v42 = *(v39 + 88);
  v43 = *(v39 + 96);
  v44 = *(v39 + 104);
  v116 = v45;
  *&v46 = v45;
  v117 = v47;
  *(&v46 + 1) = v47;
  v118 = v48;
  *&v49 = v48;
  v119 = v50;
  *(&v49 + 1) = v50;
  v104 = v49;
  v131 = v49;
  v105 = v46;
  v130 = v46;
  v126 = v51;
  *&v132 = v51;
  *(&v132 + 1) = v52;
  v128 = v52;
  v129 = v40;
  v133 = v40;
  v123 = v42;
  v124 = v41;
  v134 = v41;
  v135 = v42;
  v122 = v43;
  v136 = v43;
  v137 = v44;
  v121 = v44;
  v53 = type metadata accessor for TaggedValue_6.TaggedEnum(0, &v130);
  v54 = MEMORY[0x1EEE9AC00](v53);
  v56 = &v104 - v55;
  (*(v57 + 16))(&v104 - v55, v120, v53, v54);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v65 = v114;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v66 = v56;
        v67 = v117;
        (*(v114 + 32))(v30, v66, v117);
        (*(*(*(&v129 + 1) + 8) + 24))(v125, v67);
        (*(v65 + 8))(v30, v67);
        *(&v99 + 1) = v122;
        *&v99 = v123;
        *(&v93 + 1) = v124;
        *&v93 = *(&v129 + 1);
        return TaggedValue_6.init(_:)(v27, v116, v67, v118, v119, v126, v128, v129, v127, v93, v99, v121);
      }

      else
      {
        v78 = v115;
        v79 = v56;
        v80 = v118;
        (*(v115 + 32))(v23, v79, v118);
        v81 = v124;
        (*(*(v124 + 8) + 24))(v125, v80);
        (*(v78 + 8))(v23, v80);
        *(&v102 + 1) = v122;
        *(&v96 + 1) = v81;
        *&v102 = v123;
        *&v96 = *(&v129 + 1);
        return TaggedValue_6.init(_:)(v20, v116, v117, v80, v119, v126, v128, v129, v127, v96, v102, v121);
      }
    }

    else
    {
      v74 = v32;
      v75 = *(v32 + 32);
      v76 = v116;
      v75(v38, v56, v116);
      v77 = v129;
      (*(*(v129 + 8) + 24))(v125, v76);
      (*(v74 + 8))(v38, v76);
      *(&v101 + 1) = v122;
      *&v101 = v123;
      *(&v95 + 1) = v124;
      *&v95 = *(&v129 + 1);
      return TaggedValue_6.init(_:)(v35, v76, v117, v118, v119, v126, v128, v77, v127, v95, v101, v121);
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v68 = v112;
      v69 = v111;
      v70 = v56;
      v71 = v128;
      (*(v112 + 32))(v111, v70, v128);
      v72 = v121;
      v73 = v113;
      (*(*(v121 + 8) + 24))(v125, v71);
      (*(v68 + 8))(v69, v71);
      *(&v100 + 1) = v122;
      *&v100 = v123;
      *(&v94 + 1) = v124;
      *&v94 = *(&v129 + 1);
      return TaggedValue_6.init(_:)(v73, v116, v117, v118, v119, v126, v71, v129, v127, v94, v100, v72);
    }

    else
    {
      v88 = *v56;
      v89 = (*(**(v56 + 1) + 104))(v125);

      v90 = v127;
      *v127 = v88;
      v90[1] = v89;
      v131 = v104;
      v130 = v105;
      *&v91 = v126;
      *(&v91 + 1) = v128;
      v133 = v129;
      v132 = v91;
      v134 = v124;
      v135 = v123;
      v136 = v122;
      v137 = v121;
      type metadata accessor for TaggedValue_6.TaggedEnum(0, &v130);
      return swift_storeEnumTagMultiPayload();
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v59 = v106;
    v60 = v56;
    v61 = v119;
    (*(v106 + 32))(v16, v60, v119);
    v62 = v123;
    v63 = v107;
    (*(*(v123 + 8) + 24))(v125, v61);
    (*(v59 + 8))(v16, v61);
    *&v98 = v62;
    *(&v98 + 1) = v122;
    *(&v92 + 1) = v124;
    *&v92 = *(&v129 + 1);
    return TaggedValue_6.init(_:)(v63, v116, v117, v118, v61, v126, v128, v129, v127, v92, v98, v121);
  }

  else
  {
    v82 = v109;
    v83 = v108;
    v84 = v56;
    v85 = v126;
    (*(v109 + 32))(v108, v84, v126);
    v86 = v122;
    v87 = v110;
    (*(*(v122 + 8) + 24))(v125, v85);
    (*(v82 + 8))(v83, v85);
    *(&v103 + 1) = v86;
    *&v103 = v123;
    *(&v97 + 1) = v124;
    *&v97 = *(&v129 + 1);
    return TaggedValue_6.init(_:)(v87, v116, v117, v118, v119, v85, v128, v129, v127, v97, v103, v121);
  }
}

uint64_t TaggedValue_6.observableDifference(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v255 = a2;
  v267 = a4;
  v5 = a3[7];
  v271 = a3[13];
  v272 = a1;
  v242 = *(v271 + 1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v208 = sub_1AE23D7CC();
  v207 = *(v208 - 8);
  MEMORY[0x1EEE9AC00](v208);
  v243 = &v191 - v7;
  v244 = AssociatedTypeWitness;
  v241 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v8);
  v206 = &v191 - v9;
  v250 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v239 = &v191 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v238 = &v191 - v13;
  *&v269 = a3[12];
  v14 = a3[6];
  v235 = *(v269 + 8);
  v15 = swift_getAssociatedTypeWitness();
  v205 = sub_1AE23D7CC();
  v204 = *(v205 - 8);
  MEMORY[0x1EEE9AC00](v205);
  v237 = &v191 - v16;
  v240 = v15;
  v236 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v203 = &v191 - v18;
  v248 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v233 = &v191 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v232 = &v191 - v22;
  *&v268 = a3[11];
  v23 = a3[5];
  v229 = *(v268 + 8);
  v24 = swift_getAssociatedTypeWitness();
  v202 = sub_1AE23D7CC();
  v201 = *(v202 - 8);
  MEMORY[0x1EEE9AC00](v202);
  v231 = &v191 - v25;
  v234 = v24;
  v230 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v200 = &v191 - v27;
  v246 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v228 = &v191 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v227 = &v191 - v31;
  v32 = a3[10];
  v33 = a3[4];
  v223 = *(v32 + 8);
  v34 = swift_getAssociatedTypeWitness();
  v199 = sub_1AE23D7CC();
  v198 = *(v199 - 8);
  MEMORY[0x1EEE9AC00](v199);
  v222 = &v191 - v35;
  v226 = v34;
  v225 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v197 = &v191 - v37;
  v258 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v221 = &v191 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v217 = &v191 - v41;
  v42 = a3[9];
  v43 = a3[3];
  v218 = *(v42 + 8);
  v44 = swift_getAssociatedTypeWitness();
  v196 = sub_1AE23D7CC();
  v195 = *(v196 - 8);
  MEMORY[0x1EEE9AC00](v196);
  v220 = &v191 - v45;
  v224 = v44;
  v219 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v194 = &v191 - v47;
  v257 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v216 = &v191 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v215 = &v191 - v51;
  v52 = a3[8];
  v53 = a3[2];
  v211 = *(v52 + 8);
  v54 = swift_getAssociatedTypeWitness();
  v193 = sub_1AE23D7CC();
  v192 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v213 = &v191 - v55;
  v214 = v54;
  v212 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v191 = &v191 - v57;
  v256 = *(v53 - 1);
  MEMORY[0x1EEE9AC00](v58);
  v210 = &v191 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60);
  v209 = &v191 - v61;
  *&v62 = v53;
  v245 = v43;
  *(&v62 + 1) = v43;
  v259 = v33;
  *&v63 = v33;
  v247 = v23;
  *(&v63 + 1) = v23;
  v263 = v63;
  v274 = v63;
  v264 = v62;
  v273 = v62;
  v249 = v14;
  *&v63 = v14;
  v251 = v5;
  *(&v63 + 1) = v5;
  *&v64 = v52;
  *(&v64 + 1) = v42;
  *&v62 = v32;
  *(&v62 + 1) = v268;
  v265 = v64;
  v276 = v64;
  v266 = v63;
  v275 = v63;
  *&v63 = v269;
  *(&v63 + 1) = v271;
  v268 = v63;
  v269 = v62;
  v278 = v63;
  v277 = v62;
  v65 = type metadata accessor for TaggedValue_6.TaggedEnum(0, &v273);
  v66 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v252 = &v191 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v68);
  v254 = &v191 - v69;
  MEMORY[0x1EEE9AC00](v70);
  v253 = &v191 - v71;
  MEMORY[0x1EEE9AC00](v72);
  v74 = &v191 - v73;
  MEMORY[0x1EEE9AC00](v75);
  v77 = &v191 - v76;
  MEMORY[0x1EEE9AC00](v78);
  v80 = &v191 - v79;
  MEMORY[0x1EEE9AC00](v81);
  v83 = &v191 - v82;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v262 = *(TupleTypeMetadata2 - 8);
  v85 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v87 = &v191 - v86;
  v261 = v88;
  v89 = &v191 + *(v88 + 48) - v86;
  v260 = v66;
  v90 = *(v66 + 16);
  v90(&v191 - v86, v270, v65, v85);
  v270 = v89;
  (v90)(v89, v272, v65);
  v271 = v87;
  v272 = v65;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v119 = v254;
        v92 = v271;
        (v90)(v254, v271, v272);
        v120 = v270;
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          v121 = v250;
          v122 = *(v250 + 32);
          v123 = v238;
          v124 = v119;
          v125 = v251;
          v122(v238, v124, v251);
          v126 = v239;
          v122(v239, v120, v125);
          v127 = v243;
          (*(v242 + 40))(v126, v255, v125);
          v128 = *(v121 + 8);
          v128(v126, v125);
          v128(v123, v125);
          v129 = v241;
          v130 = v244;
          if ((*(v241 + 48))(v127, 1, v244) == 1)
          {
            (*(v207 + 8))(v127, v208);
            goto LABEL_38;
          }

          v184 = *(v129 + 32);
          v185 = v206;
          v184(v206, v127, v130);
          v182 = v267;
          v184(v267, v185, v130);
          v274 = v263;
          v273 = v264;
          v276 = v265;
          v275 = v266;
          v278 = v268;
          v277 = v269;
          v183 = type metadata accessor for TaggedValue_6.ObservableDifference(0, &v273);
LABEL_50:
          swift_storeEnumTagMultiPayload();
          (*(*(v183 - 8) + 56))(v182, 0, 1, v183);
          goto LABEL_51;
        }

        (*(v250 + 8))(v119, v251);
      }

      else
      {
        v154 = v252;
        v92 = v271;
        (v90)(v252, v271, v272);
        v155 = v270;
        if (swift_getEnumCaseMultiPayload() == 6)
        {
          v156 = *v154;
          v157 = *v155;

          if (v156 == v157)
          {
            v273 = v264;
            v274 = v263;
            v275 = v266;
            v276 = v265;
            v277 = v269;
            v278 = v268;
LABEL_39:
            v170 = type metadata accessor for TaggedValue_6.ObservableDifference(0, &v273);
            (*(*(v170 - 8) + 56))(v267, 1, 1, v170);
LABEL_51:
            v160 = &v279;
            goto LABEL_52;
          }

          v273 = v264;
          v274 = v263;
          v275 = v266;
          v276 = v265;
          v277 = v269;
          v278 = v268;
          v183 = type metadata accessor for TaggedValue_6.ObservableDifference(0, &v273);
          v182 = v267;
          goto LABEL_50;
        }
      }

LABEL_35:
      v273 = v264;
      v274 = v263;
      v275 = v266;
      v276 = v265;
      v277 = v269;
      v278 = v268;
      v158 = type metadata accessor for TaggedValue_6.ObservableDifference(0, &v273);
      v159 = v267;
      swift_storeEnumTagMultiPayload();
      (*(*(v158 - 8) + 56))(v159, 0, 1, v158);
      v272 = v261;
      v160 = &v280;
LABEL_52:
      v175 = *(v160 - 32);
      return (*(v175 + 8))(v92, v272);
    }

    if (EnumCaseMultiPayload == 3)
    {
      v92 = v271;
      (v90)(v74, v271, v272);
      v93 = v270;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v94 = v246;
        v95 = *(v246 + 32);
        v96 = v227;
        v97 = v247;
        v95(v227, v74, v247);
        v98 = v228;
        v95(v228, v93, v97);
        v99 = v231;
        (*(v229 + 40))(v98, v255, v97);
        v100 = *(v94 + 8);
        v100(v98, v97);
        v100(v96, v97);
        v101 = v230;
        v102 = v234;
        if ((*(v230 + 48))(v99, 1, v234) == 1)
        {
          (*(v201 + 8))(v99, v202);
LABEL_38:
          v274 = v263;
          v273 = v264;
          v276 = v265;
          v275 = v266;
          v278 = v268;
          v277 = v269;
          goto LABEL_39;
        }

        v180 = *(v101 + 32);
        v181 = v200;
        v180(v200, v99, v102);
        v182 = v267;
        v180(v267, v181, v102);
        v274 = v263;
        v273 = v264;
        v276 = v265;
        v275 = v266;
        v278 = v268;
        v277 = v269;
        v183 = type metadata accessor for TaggedValue_6.ObservableDifference(0, &v273);
        goto LABEL_50;
      }

      (*(v246 + 8))(v74, v247);
      goto LABEL_35;
    }

    v141 = v253;
    (v90)(v253, v271, v272);
    v142 = v270;
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      (*(v248 + 8))(v141, v249);
      v92 = v271;
      goto LABEL_35;
    }

    v143 = v248;
    v144 = *(v248 + 32);
    v145 = v232;
    v146 = v141;
    v147 = v249;
    v144(v232, v146, v249);
    v148 = v233;
    v144(v233, v142, v147);
    v149 = v237;
    (*(v235 + 40))(v148, v255, v147);
    v150 = *(v143 + 8);
    v150(v148, v147);
    v150(v145, v147);
    v151 = v236;
    v152 = v240;
    if ((*(v236 + 48))(v149, 1, v240) == 1)
    {
      (*(v204 + 8))(v149, v205);
      goto LABEL_24;
    }

    v186 = *(v151 + 32);
    v187 = v203;
    v186(v203, v149, v152);
    v178 = v267;
    v186(v267, v187, v152);
    v274 = v263;
    v273 = v264;
    v276 = v265;
    v275 = v266;
    v278 = v268;
    v277 = v269;
    v179 = type metadata accessor for TaggedValue_6.ObservableDifference(0, &v273);
    goto LABEL_46;
  }

  v103 = v256;
  v254 = v53;
  v104 = v257;
  v105 = v258;
  v106 = v259;
  if (!EnumCaseMultiPayload)
  {
    v92 = v271;
    (v90)(v83, v271, v272);
    v131 = v270;
    if (!swift_getEnumCaseMultiPayload())
    {
      v161 = v103;
      v162 = *(v103 + 32);
      v163 = v209;
      v164 = v254;
      v162(v209, v83, v254);
      v165 = v210;
      v162(v210, v131, v164);
      v166 = v213;
      (*(v211 + 40))(v165, v255, v164);
      v167 = *(v161 + 8);
      v167(v165, v164);
      v167(v163, v164);
      v168 = v212;
      v169 = v214;
      if ((*(v212 + 48))(v166, 1, v214) == 1)
      {
        (*(v192 + 8))(v166, v193);
        goto LABEL_38;
      }

      v188 = *(v168 + 32);
      v189 = v191;
      v188(v191, v166, v169);
      v182 = v267;
      v188(v267, v189, v169);
      v274 = v263;
      v273 = v264;
      v276 = v265;
      v275 = v266;
      v278 = v268;
      v277 = v269;
      v183 = type metadata accessor for TaggedValue_6.ObservableDifference(0, &v273);
      goto LABEL_50;
    }

    (*(v103 + 8))(v83, v254);
    goto LABEL_35;
  }

  v107 = v271;
  if (EnumCaseMultiPayload != 1)
  {
    (v90)(v77, v271, v272);
    v132 = v270;
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      (*(v105 + 8))(v77, v106);
      v92 = v271;
      goto LABEL_35;
    }

    v133 = v105;
    v134 = *(v105 + 32);
    v135 = v217;
    v134(v217, v77, v106);
    v136 = v221;
    v134(v221, v132, v106);
    v137 = v222;
    (*(v223 + 40))(v136, v255, v106);
    v138 = *(v133 + 8);
    v138(v136, v106);
    v138(v135, v106);
    v139 = v225;
    v140 = v226;
    if ((*(v225 + 48))(v137, 1, v226) == 1)
    {
      (*(v198 + 8))(v137, v199);
LABEL_24:
      v274 = v263;
      v273 = v264;
      v276 = v265;
      v275 = v266;
      v278 = v268;
      v277 = v269;
      v153 = type metadata accessor for TaggedValue_6.ObservableDifference(0, &v273);
      (*(*(v153 - 8) + 56))(v267, 1, 1, v153);
LABEL_47:
      v175 = v260;
      v92 = v271;
      return (*(v175 + 8))(v92, v272);
    }

    v176 = *(v139 + 32);
    v177 = v197;
    v176(v197, v137, v140);
    v178 = v267;
    v176(v267, v177, v140);
    v274 = v263;
    v273 = v264;
    v276 = v265;
    v275 = v266;
    v278 = v268;
    v277 = v269;
    v179 = type metadata accessor for TaggedValue_6.ObservableDifference(0, &v273);
LABEL_46:
    swift_storeEnumTagMultiPayload();
    (*(*(v179 - 8) + 56))(v178, 0, 1, v179);
    goto LABEL_47;
  }

  (v90)(v80, v271, v272);
  v108 = v270;
  v92 = v107;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v104 + 8))(v80, v245);
    goto LABEL_35;
  }

  v109 = v107;
  v110 = *(v104 + 32);
  v111 = v215;
  v112 = v245;
  v110(v215, v80, v245);
  v113 = v216;
  v110(v216, v108, v112);
  v114 = v220;
  (*(v218 + 40))(v113, v255, v112);
  v115 = *(v104 + 8);
  v115(v113, v112);
  v115(v111, v112);
  v116 = v219;
  v117 = v224;
  if ((*(v219 + 48))(v114, 1, v224) == 1)
  {
    (*(v195 + 8))(v114, v196);
    v274 = v263;
    v273 = v264;
    v276 = v265;
    v275 = v266;
    v278 = v268;
    v277 = v269;
    v118 = type metadata accessor for TaggedValue_6.ObservableDifference(0, &v273);
    (*(*(v118 - 8) + 56))(v267, 1, 1, v118);
  }

  else
  {
    v171 = *(v116 + 32);
    v172 = v194;
    v171(v194, v114, v117);
    v173 = v267;
    v171(v267, v172, v117);
    v274 = v263;
    v273 = v264;
    v276 = v265;
    v275 = v266;
    v278 = v268;
    v277 = v269;
    v174 = type metadata accessor for TaggedValue_6.ObservableDifference(0, &v273);
    swift_storeEnumTagMultiPayload();
    (*(*(v174 - 8) + 56))(v173, 0, 1, v174);
  }

  v175 = v260;
  v92 = v109;
  return (*(v175 + 8))(v92, v272);
}

BOOL TaggedValue_7.ObservableDifference.isIdentityChanged.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v3);
  v6 = swift_getEnumCaseMultiPayload() == 8;
  (*(v2 + 8))(v5, a1);
  return v6;
}

uint64_t TaggedValue_7.taggedEnum.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[2];
  v9[0] = a1[1];
  v9[1] = v4;
  v5 = a1[4];
  v9[2] = a1[3];
  v9[3] = v5;
  v6 = a1[6];
  v9[4] = a1[5];
  v9[5] = v6;
  v9[6] = a1[7];
  v7 = type metadata accessor for TaggedValue_7.TaggedEnum(0, v9);
  return (*(*(v7 - 8) + 16))(a2, v2, v7);
}

uint64_t TaggedValue_7.taggedEnum.setter(uint64_t a1, _OWORD *a2)
{
  v4 = a2[2];
  v9[0] = a2[1];
  v9[1] = v4;
  v5 = a2[4];
  v9[2] = a2[3];
  v9[3] = v5;
  v6 = a2[6];
  v9[4] = a2[5];
  v9[5] = v6;
  v9[6] = a2[7];
  v7 = type metadata accessor for TaggedValue_7.TaggedEnum(0, v9);
  return (*(*(v7 - 8) + 40))(v2, a1, v7);
}

uint64_t TaggedValue_7.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __int128 a12, uint64_t a13)
{
  (*(*(a2 - 8) + 32))(a9, a1, a2);
  v21[0] = a2;
  v21[1] = a3;
  v21[2] = a4;
  v21[3] = a5;
  v21[4] = a6;
  v21[5] = a7;
  v21[6] = a8;
  v22 = a10;
  v23 = a11;
  v24 = a12;
  v25 = a13;
  type metadata accessor for TaggedValue_7.TaggedEnum(0, v21);
  return swift_storeEnumTagMultiPayload();
}

{
  (*(*(a3 - 8) + 32))(a9, a1);
  v21[0] = a2;
  v21[1] = a3;
  v21[2] = a4;
  v21[3] = a5;
  v21[4] = a6;
  v21[5] = a7;
  v21[6] = a8;
  v22 = a10;
  v23 = a11;
  v24 = a12;
  v25 = a13;
  type metadata accessor for TaggedValue_7.TaggedEnum(0, v21);
  return swift_storeEnumTagMultiPayload();
}

{
  (*(*(a4 - 8) + 32))(a9, a1, a4);
  v21[0] = a2;
  v21[1] = a3;
  v21[2] = a4;
  v21[3] = a5;
  v21[4] = a6;
  v21[5] = a7;
  v21[6] = a8;
  v22 = a10;
  v23 = a11;
  v24 = a12;
  v25 = a13;
  type metadata accessor for TaggedValue_7.TaggedEnum(0, v21);
  return swift_storeEnumTagMultiPayload();
}

{
  (*(*(a5 - 8) + 32))(a9, a1, a5);
  v21[0] = a2;
  v21[1] = a3;
  v21[2] = a4;
  v21[3] = a5;
  v21[4] = a6;
  v21[5] = a7;
  v21[6] = a8;
  v22 = a10;
  v23 = a11;
  v24 = a12;
  v25 = a13;
  type metadata accessor for TaggedValue_7.TaggedEnum(0, v21);
  return swift_storeEnumTagMultiPayload();
}

{
  (*(*(a6 - 8) + 32))(a9, a1, a6);
  v21[0] = a2;
  v21[1] = a3;
  v21[2] = a4;
  v21[3] = a5;
  v21[4] = a6;
  v21[5] = a7;
  v21[6] = a8;
  v22 = a10;
  v23 = a11;
  v24 = a12;
  v25 = a13;
  type metadata accessor for TaggedValue_7.TaggedEnum(0, v21);
  return swift_storeEnumTagMultiPayload();
}

{
  (*(*(a7 - 8) + 32))(a9, a1, a7);
  v21[0] = a2;
  v21[1] = a3;
  v21[2] = a4;
  v21[3] = a5;
  v21[4] = a6;
  v21[5] = a7;
  v21[6] = a8;
  v22 = a10;
  v23 = a11;
  v24 = a12;
  v25 = a13;
  type metadata accessor for TaggedValue_7.TaggedEnum(0, v21);
  return swift_storeEnumTagMultiPayload();
}

{
  (*(*(a8 - 8) + 32))(a9, a1, a8);
  v21[0] = a2;
  v21[1] = a3;
  v21[2] = a4;
  v21[3] = a5;
  v21[4] = a6;
  v21[5] = a7;
  v21[6] = a8;
  v22 = a10;
  v23 = a11;
  v24 = a12;
  v25 = a13;
  type metadata accessor for TaggedValue_7.TaggedEnum(0, v21);
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_7.init(tag:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, __int128 a10, __int128 a11, __int128 a12, uint64_t a13, uint64_t a14)
{
  v14 = *a2;
  *a9 = a1;
  a9[1] = v14;
  v16[0] = a3;
  v16[1] = a4;
  v16[2] = a5;
  v16[3] = a6;
  v16[4] = a7;
  v16[5] = a8;
  v17 = a10;
  v18 = a11;
  v19 = a12;
  v20 = a13;
  v21 = a14;
  type metadata accessor for TaggedValue_7.TaggedEnum(0, v16);
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_7.tagged1.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[2];
  v20 = a1[1];
  v21[0] = v20;
  v6 = a1[3];
  v7 = a1[4];
  v21[1] = v5;
  v21[2] = v6;
  v8 = a1[5];
  v9 = a1[6];
  v21[3] = v7;
  v21[4] = v8;
  v10 = a1[7];
  v21[5] = v9;
  v21[6] = v10;
  v11 = type metadata accessor for TaggedValue_7.TaggedEnum(0, v21);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v21[-1] - v14;
  (*(v12 + 16))(&v21[-1] - v14, v3, v11, v13);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v12 + 8))(v15, v11);
    v16 = v20;
    v17 = *(v20 - 8);
    v18 = 1;
  }

  else
  {
    v17 = *(v20 - 8);
    (*(v17 + 32))(a2, v15);
    v16 = v20;
    v18 = 0;
  }

  return (*(v17 + 56))(a2, v18, 1, v16);
}

uint64_t TaggedValue_7.tagged2.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 120);
  v15 = *(a1 + 16);
  v14 = *(a1 + 24);
  v16 = v14;
  v17 = *(a1 + 40);
  v18 = *(a1 + 56);
  v19 = *(a1 + 72);
  v20 = *(a1 + 88);
  v21 = *(a1 + 104);
  v22 = v5;
  v6 = type metadata accessor for TaggedValue_7.TaggedEnum(0, &v15);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, v3, v6, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *(v14 - 8);
    (*(v11 + 32))(a2, v10);
    v12 = 0;
  }

  else
  {
    (*(v7 + 8))(v10, v6);
    v11 = *(v14 - 8);
    v12 = 1;
  }

  return (*(v11 + 56))(a2, v12, 1, v14);
}

uint64_t TaggedValue_7.tagged3.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[1];
  v19 = a1[2];
  v20[0] = v5;
  v6 = a1[3];
  v7 = a1[4];
  v20[1] = v19;
  v20[2] = v6;
  v8 = a1[5];
  v9 = a1[6];
  v20[3] = v7;
  v20[4] = v8;
  v10 = a1[7];
  v20[5] = v9;
  v20[6] = v10;
  v11 = type metadata accessor for TaggedValue_7.TaggedEnum(0, v20);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v20[-1] - v14;
  (*(v12 + 16))(&v20[-1] - v14, v3, v11, v13);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v16 = *(v19 - 8);
    (*(v16 + 32))(a2, v15);
    v17 = 0;
  }

  else
  {
    (*(v12 + 8))(v15, v11);
    v16 = *(v19 - 8);
    v17 = 1;
  }

  return (*(v16 + 56))(a2, v17, 1, v19);
}

uint64_t TaggedValue_7.tagged4.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 120);
  v6 = *(a1 + 16);
  v17 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = v6;
  v18 = v15;
  v19 = *(a1 + 56);
  v20 = *(a1 + 72);
  v21 = *(a1 + 88);
  v22 = *(a1 + 104);
  v23 = v5;
  v7 = type metadata accessor for TaggedValue_7.TaggedEnum(0, &v16);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, v3, v7, v9);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v12 = *(v15 - 8);
    (*(v12 + 32))(a2, v11);
    v13 = 0;
  }

  else
  {
    (*(v8 + 8))(v11, v7);
    v12 = *(v15 - 8);
    v13 = 1;
  }

  return (*(v12 + 56))(a2, v13, 1, v15);
}

uint64_t TaggedValue_7.tagged5.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[2];
  v17[0] = a1[1];
  v17[1] = v5;
  v6 = a1[4];
  v16 = a1[3];
  v17[2] = v16;
  v17[3] = v6;
  v7 = a1[6];
  v17[4] = a1[5];
  v17[5] = v7;
  v17[6] = a1[7];
  v8 = type metadata accessor for TaggedValue_7.TaggedEnum(0, v17);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v17[-1] - v11;
  (*(v9 + 16))(&v17[-1] - v11, v3, v8, v10);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v13 = *(v16 - 8);
    (*(v13 + 32))(a2, v12);
    v14 = 0;
  }

  else
  {
    (*(v9 + 8))(v12, v8);
    v13 = *(v16 - 8);
    v14 = 1;
  }

  return (*(v13 + 56))(a2, v14, 1, v16);
}

uint64_t TaggedValue_7.tagged6.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 48);
  v6 = *(a1 + 120);
  v7 = *(a1 + 32);
  v17[0] = *(a1 + 16);
  v17[1] = v7;
  v18 = v5;
  v16 = *(a1 + 56);
  v19 = v16;
  v20 = *(a1 + 72);
  v21 = *(a1 + 88);
  v22 = *(a1 + 104);
  v23 = v6;
  v8 = type metadata accessor for TaggedValue_7.TaggedEnum(0, v17);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v17[-1] - v11;
  (*(v9 + 16))(&v17[-1] - v11, v3, v8, v10);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v13 = *(v16 - 8);
    (*(v13 + 32))(a2, v12);
    v14 = 0;
  }

  else
  {
    (*(v9 + 8))(v12, v8);
    v13 = *(v16 - 8);
    v14 = 1;
  }

  return (*(v13 + 56))(a2, v14, 1, v16);
}

uint64_t TaggedValue_7.tagged7.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[2];
  v17[0] = a1[1];
  v17[1] = v5;
  v6 = a1[4];
  v17[2] = a1[3];
  v17[3] = v6;
  v16 = v6;
  v7 = a1[6];
  v17[4] = a1[5];
  v17[5] = v7;
  v17[6] = a1[7];
  v8 = type metadata accessor for TaggedValue_7.TaggedEnum(0, v17);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v17[-1] - v11;
  (*(v9 + 16))(&v17[-1] - v11, v3, v8, v10);
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    v13 = *(v16 - 8);
    (*(v13 + 32))(a2, v12);
    v14 = 0;
  }

  else
  {
    (*(v9 + 8))(v12, v8);
    v13 = *(v16 - 8);
    v14 = 1;
  }

  return (*(v13 + 56))(a2, v14, 1, v16);
}

uint64_t TaggedValue_7.unknown.getter@<X0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = a1[2];
  v15[0] = a1[1];
  v15[1] = v5;
  v6 = a1[4];
  v15[2] = a1[3];
  v15[3] = v6;
  v7 = a1[6];
  v15[4] = a1[5];
  v15[5] = v7;
  v15[6] = a1[7];
  v8 = type metadata accessor for TaggedValue_7.TaggedEnum(0, v15);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v15 - v11;
  (*(v9 + 16))(v15 - v11, v3, v8, v10);
  result = swift_getEnumCaseMultiPayload();
  if (result == 7)
  {
    v14 = *(v12 + 1);
  }

  else
  {
    result = (*(v9 + 8))(v12, v8);
    v14 = 0;
  }

  *a2 = v14;
  return result;
}

double TaggedValue_7.visitReferences(_:)(uint64_t a1, uint64_t a2)
{
  v84 = a1;
  v81 = *(*(a2 + 64) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v80 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = *(*(v3 + 56) - 8);
  MEMORY[0x1EEE9AC00](v4);
  v77 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = *(*(v6 + 48) - 8);
  MEMORY[0x1EEE9AC00](v7);
  v74 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = *(*(v9 + 40) - 8);
  MEMORY[0x1EEE9AC00](v10);
  v71 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 32);
  v69 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v68 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 24);
  v67 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v66 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v19 + 16);
  v65 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v64 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v23[9];
  v25 = v23[10];
  v27 = v23[11];
  v26 = v23[12];
  v29 = v23[13];
  v28 = v23[14];
  v30 = v23[15];
  *&v31 = v20;
  *(&v31 + 1) = v16;
  v70 = v32;
  *&v33 = v32;
  v73 = v34;
  *(&v33 + 1) = v34;
  v76 = v35;
  *&v36 = v35;
  v79 = v37;
  *(&v36 + 1) = v37;
  v85[1] = v33;
  v85[0] = v31;
  v82 = v38;
  *&v31 = v38;
  v63 = v24;
  *(&v31 + 1) = v24;
  v85[3] = v31;
  v85[2] = v36;
  v86 = v25;
  v87 = v27;
  v88 = v26;
  v89 = v29;
  v90 = v28;
  v91 = v30;
  v39 = type metadata accessor for TaggedValue_7.TaggedEnum(0, v85);
  v40 = MEMORY[0x1EEE9AC00](v39);
  v42 = &v62 - v41;
  (*(v43 + 16))(&v62 - v41, v83, v39, v40);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload != 4)
      {
        v58 = v78;
        v59 = v77;
        v60 = v42;
        v61 = v79;
        (*(v78 + 32))(v77, v60, v79);
        (*(*(v28 + 8) + 48))(v84, v61);
        (*(v58 + 8))(v59, v61);
        return result;
      }

      v48 = v75;
      v49 = v74;
      v50 = v76;
      (*(v75 + 32))(v74, v42, v76);
      (*(*(v29 + 8) + 48))(v84, v50);
      v51 = *(v48 + 8);
      v52 = v49;
      goto LABEL_16;
    }

    if (EnumCaseMultiPayload != 6)
    {
      (*(**(v42 + 1) + 120))(v84);

      return result;
    }

    v54 = v80;
    v53 = v81;
    v50 = v82;
    (*(v81 + 32))(v80, v42, v82);
    v55 = *(v30 + 8);
LABEL_15:
    (*(v55 + 48))(v84, v50);
    v51 = *(v53 + 8);
    v52 = v54;
LABEL_16:
    v51(v52, v50);
    return result;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v53 = v69;
      v54 = v68;
      v50 = v70;
      (*(v69 + 32))(v68, v42, v70);
      v55 = *(v27 + 8);
    }

    else
    {
      v53 = v72;
      v54 = v71;
      v50 = v73;
      (*(v72 + 32))(v71, v42, v73);
      v55 = *(v26 + 8);
    }

    goto LABEL_15;
  }

  if (EnumCaseMultiPayload)
  {
    v56 = v67;
    v57 = v66;
    (*(v67 + 32))(v66, v42, v16);
    (*(*(v25 + 8) + 48))(v84, v16);
    (*(v56 + 8))(v57, v16);
  }

  else
  {
    v45 = v65;
    v46 = v64;
    (*(v65 + 32))(v64, v42, v20);
    (*(*(v63 + 8) + 48))(v84, v20);
    (*(v45 + 8))(v46, v20);
  }

  return result;
}

uint64_t TaggedValue_7.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v151 = a1;
  v152 = a3;
  v135 = *(*(a2 + 64) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v136 = &v119 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v134 = &v119 - v5;
  v132 = *(*(v6 + 56) - 8);
  MEMORY[0x1EEE9AC00](v7);
  v133 = &v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v131 = &v119 - v10;
  v129 = *(*(v11 + 48) - 8);
  MEMORY[0x1EEE9AC00](v12);
  v130 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v128 = &v119 - v15;
  v17 = *(v16 + 40);
  v126 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v127 = &v119 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v119 - v20;
  v125 = *(*(v22 + 32) - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v119 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v119 - v27;
  v124 = *(*(v29 + 24) - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v119 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v119 - v34;
  v37 = *(v36 + 16);
  v123 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v119 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v119 - v42;
  v46 = v44[9];
  v45 = v44[10];
  v47 = v44[11];
  v48 = v44[12];
  v49 = v44[13];
  v50 = v44[14];
  v51 = v44[15];
  *&v52 = v37;
  v138 = v53;
  *(&v52 + 1) = v53;
  v139 = v54;
  *&v55 = v54;
  v140 = v56;
  *(&v55 + 1) = v56;
  v141 = v57;
  *&v58 = v57;
  v142 = v59;
  *(&v58 + 1) = v59;
  v121 = v55;
  v154 = v55;
  v122 = v52;
  v153 = v52;
  v143 = v60;
  *&v52 = v60;
  v137 = v46;
  *(&v52 + 1) = v46;
  v119 = v52;
  v156 = v52;
  v120 = v58;
  v155 = v58;
  v149 = v47;
  v150 = v45;
  v157 = v45;
  v158 = v47;
  v147 = v49;
  v148 = v48;
  v159 = v48;
  v160 = v49;
  v146 = v50;
  v161 = v50;
  v162 = v51;
  v145 = v51;
  v61 = type metadata accessor for TaggedValue_7.TaggedEnum(0, &v153);
  v62 = MEMORY[0x1EEE9AC00](v61);
  v64 = &v119 - v63;
  (*(v65 + 16))(&v119 - v63, v144, v61, v62);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v78 = v135;
        v79 = v134;
        v80 = v143;
        (*(v135 + 32))(v134, v64, v143);
        v81 = v145;
        v82 = v136;
        (*(*(v145 + 8) + 24))(v151, v80);
        (*(v78 + 8))(v79, v80);
        *(&v115 + 1) = v146;
        *&v115 = v147;
        *(&v108 + 1) = v148;
        *&v108 = v149;
        *(&v101 + 1) = v150;
        *&v101 = v137;
        return TaggedValue_7.init(_:)(v82, v37, v138, v139, v140, v141, v142, v80, v152, v101, v108, v115, v81);
      }

      else
      {
        v95 = *v64;
        v96 = (*(**(v64 + 1) + 104))(v151);

        v97 = v152;
        *v152 = v95;
        v97[1] = v96;
        v154 = v121;
        v153 = v122;
        v156 = v119;
        v155 = v120;
        v157 = v150;
        v158 = v149;
        v159 = v148;
        v160 = v147;
        v161 = v146;
        v162 = v145;
        type metadata accessor for TaggedValue_7.TaggedEnum(0, &v153);
        return swift_storeEnumTagMultiPayload();
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v70 = v129;
      v71 = v128;
      v72 = v141;
      (*(v129 + 32))(v128, v64, v141);
      v73 = v147;
      v74 = v130;
      (*(*(v147 + 8) + 24))(v151, v72);
      (*(v70 + 8))(v71, v72);
      *&v113 = v73;
      *(&v113 + 1) = v146;
      *(&v106 + 1) = v148;
      *&v106 = v149;
      *(&v99 + 1) = v150;
      *&v99 = v137;
      return TaggedValue_7.init(_:)(v74, v37, v138, v139, v140, v72, v142, v143, v152, v99, v106, v113, v145);
    }

    else
    {
      v86 = v132;
      v87 = v131;
      v88 = v142;
      (*(v132 + 32))(v131, v64, v142);
      v89 = v146;
      v90 = v133;
      (*(*(v146 + 8) + 24))(v151, v88);
      (*(v86 + 8))(v87, v88);
      *(&v117 + 1) = v89;
      *&v117 = v147;
      *(&v110 + 1) = v148;
      *&v110 = v149;
      *(&v103 + 1) = v150;
      *&v103 = v137;
      return TaggedValue_7.init(_:)(v90, v37, v138, v139, v140, v141, v88, v143, v152, v103, v110, v117, v145);
    }
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v75 = v125;
      v76 = v139;
      (*(v125 + 32))(v28, v64, v139);
      v77 = v149;
      (*(*(v149 + 8) + 24))(v151, v76);
      (*(v75 + 8))(v28, v76);
      *(&v114 + 1) = v146;
      *&v114 = v147;
      *&v107 = v77;
      *(&v107 + 1) = v148;
      *(&v100 + 1) = v150;
      *&v100 = v137;
      return TaggedValue_7.init(_:)(v25, v37, v138, v76, v140, v141, v142, v143, v152, v100, v107, v114, v145);
    }

    else
    {
      v91 = v126;
      v92 = v140;
      (*(v126 + 32))(v21, v64, v140);
      v93 = v148;
      v94 = v127;
      (*(*(v148 + 8) + 24))(v151, v92);
      (*(v91 + 8))(v21, v92);
      *(&v118 + 1) = v146;
      *(&v111 + 1) = v93;
      *&v118 = v147;
      *&v111 = v149;
      *(&v104 + 1) = v150;
      *&v104 = v137;
      return TaggedValue_7.init(_:)(v94, v37, v138, v139, v92, v141, v142, v143, v152, v104, v111, v118, v145);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v83 = v124;
    v84 = v138;
    (*(v124 + 32))(v35, v64, v138);
    v85 = v150;
    (*(*(v150 + 8) + 24))(v151, v84);
    (*(v83 + 8))(v35, v84);
    *(&v116 + 1) = v146;
    *&v116 = v147;
    *(&v109 + 1) = v148;
    *(&v102 + 1) = v85;
    *&v109 = v149;
    *&v102 = v137;
    return TaggedValue_7.init(_:)(v32, v37, v84, v139, v140, v141, v142, v143, v152, v102, v109, v116, v145);
  }

  else
  {
    v67 = v123;
    (*(v123 + 32))(v43, v64, v37);
    v68 = v137;
    (*(*(v137 + 8) + 24))(v151, v37);
    (*(v67 + 8))(v43, v37);
    *(&v112 + 1) = v146;
    *&v112 = v147;
    *(&v105 + 1) = v148;
    *&v105 = v149;
    *&v98 = v68;
    *(&v98 + 1) = v150;
    return TaggedValue_7.init(_:)(v40, v37, v138, v139, v140, v141, v142, v143, v152, v98, v105, v112, v145);
  }
}

uint64_t TaggedValue_7.observableDifference(from:with:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v307 = a2;
  v321 = a1;
  v318 = a4;
  v323 = a3[15];
  v5 = a3[8];
  v288 = *(v323 + 8);
  v6 = v5;
  v320 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v248 = sub_1AE23D7CC();
  v247 = *(v248 - 8);
  MEMORY[0x1EEE9AC00](v248);
  v289 = &v228 - v8;
  v290 = AssociatedTypeWitness;
  v287 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v9);
  v246 = &v228 - v10;
  v306 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v285 = &v228 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v284 = &v228 - v14;
  v322 = a3[14];
  v15 = a3[7];
  v281 = *(v322 + 8);
  v16 = v15;
  v319 = v15;
  v17 = swift_getAssociatedTypeWitness();
  v245 = sub_1AE23D7CC();
  v244 = *(v245 - 8);
  MEMORY[0x1EEE9AC00](v245);
  v283 = &v228 - v18;
  v286 = v17;
  v282 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v243 = &v228 - v20;
  v305 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v279 = &v228 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v278 = &v228 - v24;
  v25 = a3[6];
  *&v317 = a3[13];
  v275 = *(v317 + 8);
  v26 = swift_getAssociatedTypeWitness();
  v242 = sub_1AE23D7CC();
  v241 = *(v242 - 8);
  MEMORY[0x1EEE9AC00](v242);
  v277 = &v228 - v27;
  v280 = v26;
  v276 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v240 = &v228 - v29;
  v303 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v273 = &v228 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v272 = &v228 - v33;
  *&v316 = a3[12];
  v34 = a3[5];
  v269 = *(v316 + 8);
  v35 = swift_getAssociatedTypeWitness();
  v239 = sub_1AE23D7CC();
  v238 = *(v239 - 8);
  MEMORY[0x1EEE9AC00](v239);
  v271 = &v228 - v36;
  v274 = v35;
  v270 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v237 = &v228 - v38;
  v301 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v267 = &v228 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v266 = &v228 - v42;
  v43 = a3[11];
  v44 = a3[4];
  v263 = *(v43 + 8);
  v45 = swift_getAssociatedTypeWitness();
  v236 = sub_1AE23D7CC();
  v235 = *(v236 - 8);
  MEMORY[0x1EEE9AC00](v236);
  v265 = &v228 - v46;
  v268 = v45;
  v264 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v234 = &v228 - v48;
  v299 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v261 = &v228 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v260 = &v228 - v52;
  v53 = a3[10];
  v54 = a3[3];
  v257 = *(v53 + 8);
  v55 = swift_getAssociatedTypeWitness();
  v233 = sub_1AE23D7CC();
  v232 = *(v233 - 8);
  MEMORY[0x1EEE9AC00](v233);
  v259 = &v228 - v56;
  v262 = v55;
  v258 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v231 = &v228 - v58;
  v297 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v256 = &v228 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61);
  v255 = &v228 - v62;
  v63 = a3[9];
  v64 = a3[2];
  v251 = *(v63 + 8);
  v65 = swift_getAssociatedTypeWitness();
  v230 = sub_1AE23D7CC();
  v229 = *(v230 - 8);
  MEMORY[0x1EEE9AC00](v230);
  v253 = &v228 - v66;
  v254 = v65;
  v252 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v228 = &v228 - v68;
  v295 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v250 = &v228 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v71);
  v249 = &v228 - v72;
  v296 = v64;
  *&v73 = v64;
  v298 = v54;
  *(&v73 + 1) = v54;
  v300 = v44;
  *&v74 = v44;
  v302 = v34;
  *(&v74 + 1) = v34;
  v312 = v74;
  v325 = v74;
  v313 = v73;
  v324 = v73;
  v304 = v25;
  *&v73 = v25;
  *(&v73 + 1) = v319;
  *&v74 = v320;
  *(&v74 + 1) = v63;
  v314 = v74;
  v327 = v74;
  v315 = v73;
  v326 = v73;
  *&v73 = v53;
  *(&v73 + 1) = v43;
  *&v74 = v316;
  *(&v74 + 1) = v317;
  v316 = v74;
  v329 = v74;
  v317 = v73;
  v328 = v73;
  v330 = v322;
  v331 = v323;
  v75 = type metadata accessor for TaggedValue_7.TaggedEnum(0, &v324);
  v76 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v292 = &v228 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v78);
  v294 = &v228 - v79;
  MEMORY[0x1EEE9AC00](v80);
  v293 = &v228 - v81;
  MEMORY[0x1EEE9AC00](v82);
  v291 = &v228 - v83;
  MEMORY[0x1EEE9AC00](v84);
  v86 = &v228 - v85;
  MEMORY[0x1EEE9AC00](v87);
  v89 = &v228 - v88;
  MEMORY[0x1EEE9AC00](v90);
  v92 = &v228 - v91;
  MEMORY[0x1EEE9AC00](v93);
  v95 = &v228 - v94;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v310 = *(TupleTypeMetadata2 - 8);
  v97 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v99 = &v228 - v98;
  v309 = v100;
  v101 = &v228 + *(v100 + 48) - v98;
  v308 = v76;
  v102 = *(v76 + 16);
  v102(&v228 - v98, v311, v75, v97);
  v103 = v101;
  (v102)(v101, v321, v75);
  v321 = v99;
  v104 = v75;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      v137 = v101;
      if (EnumCaseMultiPayload != 6)
      {
        v185 = v292;
        v106 = v321;
        (v102)(v292, v321, v104);
        v152 = v104;
        if (swift_getEnumCaseMultiPayload() != 7)
        {

          goto LABEL_39;
        }

        v186 = *v185;
        v187 = *v103;

        if (v186 == v187)
        {
          v324 = v313;
          v325 = v312;
          v326 = v315;
          v327 = v314;
          v328 = v317;
          v329 = v316;
LABEL_44:
          v330 = v322;
          v331 = v323;
          v202 = type metadata accessor for TaggedValue_7.ObservableDifference(0, &v324);
          (*(*(v202 - 8) + 56))(v318, 1, 1, v202);
LABEL_59:
          v191 = v308;
          v190 = v152;
          return (*(v191 + 8))(v106, v190);
        }

        v324 = v313;
        v325 = v312;
        v326 = v315;
        v327 = v314;
        v328 = v317;
        v329 = v316;
        v330 = v322;
        v331 = v323;
        v218 = type metadata accessor for TaggedValue_7.ObservableDifference(0, &v324);
        v217 = v318;
        goto LABEL_58;
      }

      v138 = v294;
      v106 = v321;
      (v102)(v294, v321, v104);
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v139 = v106;
        v140 = v104;
        v141 = v306;
        v142 = *(v306 + 32);
        v143 = v284;
        v144 = v137;
        v145 = v320;
        v142(v284, v138, v320);
        v146 = v285;
        v142(v285, v144, v145);
        v147 = v289;
        (*(v288 + 40))(v146, v307, v145);
        v148 = *(v141 + 8);
        v148(v146, v145);
        v148(v143, v145);
        v149 = v287;
        v150 = v290;
        if ((*(v287 + 48))(v147, 1, v290) == 1)
        {
          (*(v247 + 8))(v147, v248);
          v325 = v312;
          v324 = v313;
          v327 = v314;
          v326 = v315;
          v329 = v316;
          v328 = v317;
          v330 = v322;
          v331 = v323;
          v151 = type metadata accessor for TaggedValue_7.ObservableDifference(0, &v324);
          (*(*(v151 - 8) + 56))(v318, 1, 1, v151);
        }

        else
        {
          v211 = *(v149 + 32);
          v212 = v246;
          v211(v246, v147, v150);
          v213 = v318;
          v211(v318, v212, v150);
          v325 = v312;
          v324 = v313;
          v327 = v314;
          v326 = v315;
          v329 = v316;
          v328 = v317;
          v330 = v322;
          v331 = v323;
          v214 = type metadata accessor for TaggedValue_7.ObservableDifference(0, &v324);
          swift_storeEnumTagMultiPayload();
          (*(*(v214 - 8) + 56))(v213, 0, 1, v214);
        }

        v191 = v308;
        v190 = v140;
        v106 = v139;
        return (*(v191 + 8))(v106, v190);
      }

      (*(v306 + 8))(v138, v320);
    }

    else
    {
      v110 = v101;
      if (EnumCaseMultiPayload == 4)
      {
        v111 = v291;
        (v102)(v291, v321, v104);
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          v112 = v104;
          v113 = v303;
          v114 = *(v303 + 32);
          v115 = v272;
          v116 = v111;
          v117 = v304;
          v114(v272, v116, v304);
          v118 = v273;
          v114(v273, v101, v117);
          v119 = v277;
          (*(v275 + 40))(v118, v307, v117);
          v120 = *(v113 + 8);
          v120(v118, v117);
          v120(v115, v117);
          v121 = v276;
          v122 = v280;
          if ((*(v276 + 48))(v119, 1, v280) == 1)
          {
            (*(v241 + 8))(v119, v242);
            v325 = v312;
            v324 = v313;
            v327 = v314;
            v326 = v315;
            v329 = v316;
            v328 = v317;
            v330 = v322;
            v331 = v323;
            v123 = type metadata accessor for TaggedValue_7.ObservableDifference(0, &v324);
            (*(*(v123 - 8) + 56))(v318, 1, 1, v123);
          }

          else
          {
            v203 = *(v121 + 32);
            v204 = v240;
            v203(v240, v119, v122);
            v205 = v318;
            v203(v318, v204, v122);
            v325 = v312;
            v324 = v313;
            v327 = v314;
            v326 = v315;
            v329 = v316;
            v328 = v317;
            v330 = v322;
            v331 = v323;
            v206 = type metadata accessor for TaggedValue_7.ObservableDifference(0, &v324);
            swift_storeEnumTagMultiPayload();
            (*(*(v206 - 8) + 56))(v205, 0, 1, v206);
          }

          v191 = v308;
          v106 = v321;
          v190 = v112;
          return (*(v191 + 8))(v106, v190);
        }

        (*(v303 + 8))(v111, v304);
        v106 = v321;
      }

      else
      {
        v164 = v293;
        v106 = v321;
        (v102)(v293, v321, v104);
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          v165 = v104;
          v166 = v305;
          v167 = *(v305 + 32);
          v168 = v278;
          v169 = v319;
          v167(v278, v164, v319);
          v170 = v279;
          v167(v279, v110, v169);
          v171 = v283;
          (*(v281 + 40))(v170, v307, v169);
          v172 = *(v166 + 8);
          v172(v170, v169);
          v172(v168, v169);
          v173 = v282;
          v174 = v286;
          if ((*(v282 + 48))(v171, 1, v286) == 1)
          {
            (*(v244 + 8))(v171, v245);
LABEL_28:
            v325 = v312;
            v324 = v313;
            v327 = v314;
            v326 = v315;
            v329 = v316;
            v328 = v317;
            v330 = v322;
            v331 = v323;
            v184 = type metadata accessor for TaggedValue_7.ObservableDifference(0, &v324);
            (*(*(v184 - 8) + 56))(v318, 1, 1, v184);
LABEL_55:
            v191 = v308;
            v190 = v165;
            return (*(v191 + 8))(v106, v190);
          }

          v219 = *(v173 + 32);
          v220 = v243;
          v219(v243, v171, v174);
          v221 = v318;
          v219(v318, v220, v174);
          v325 = v312;
          v324 = v313;
          v327 = v314;
          v326 = v315;
          v329 = v316;
          v328 = v317;
          v330 = v322;
          v331 = v323;
          v222 = type metadata accessor for TaggedValue_7.ObservableDifference(0, &v324);
LABEL_54:
          swift_storeEnumTagMultiPayload();
          (*(*(v222 - 8) + 56))(v221, 0, 1, v222);
          goto LABEL_55;
        }

        (*(v305 + 8))(v164, v319);
      }
    }

LABEL_39:
    v324 = v313;
    v325 = v312;
    v326 = v315;
    v327 = v314;
    v328 = v317;
    v329 = v316;
    v330 = v322;
    v331 = v323;
    v188 = type metadata accessor for TaggedValue_7.ObservableDifference(0, &v324);
    v189 = v318;
    swift_storeEnumTagMultiPayload();
    (*(*(v188 - 8) + 56))(v189, 0, 1, v188);
    v190 = v309;
    v191 = v310;
    return (*(v191 + 8))(v106, v190);
  }

  if (EnumCaseMultiPayload <= 1)
  {
    v106 = v321;
    if (EnumCaseMultiPayload)
    {
      (v102)(v92, v321, v75);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v107 = *(v297 + 8);
        v108 = v92;
        v109 = &v323;
        goto LABEL_38;
      }

      v152 = v75;
      v153 = v297;
      v154 = *(v297 + 32);
      v155 = v255;
      v156 = v92;
      v157 = v103;
      v158 = v298;
      v154(v255, v156, v298);
      v159 = v256;
      v154(v256, v157, v158);
      v160 = v259;
      (*(v257 + 40))(v159, v307, v158);
      v161 = *(v153 + 8);
      v161(v159, v158);
      v161(v155, v158);
      v162 = v258;
      v163 = v262;
      if ((*(v258 + 48))(v160, 1, v262) == 1)
      {
        (*(v232 + 8))(v160, v233);
LABEL_43:
        v325 = v312;
        v324 = v313;
        v327 = v314;
        v326 = v315;
        v329 = v316;
        v328 = v317;
        goto LABEL_44;
      }

      v215 = *(v162 + 32);
      v216 = v231;
      v215(v231, v160, v163);
      v217 = v318;
      v215(v318, v216, v163);
      v325 = v312;
      v324 = v313;
      v327 = v314;
      v326 = v315;
      v329 = v316;
      v328 = v317;
      v330 = v322;
      v331 = v323;
      v218 = type metadata accessor for TaggedValue_7.ObservableDifference(0, &v324);
    }

    else
    {
      (v102)(v95, v321, v75);
      if (swift_getEnumCaseMultiPayload())
      {
        v107 = *(v295 + 8);
        v108 = v95;
        v109 = &v321;
LABEL_38:
        v107(v108, *(v109 - 32));
        goto LABEL_39;
      }

      v152 = v75;
      v192 = v295;
      v193 = *(v295 + 32);
      v194 = v249;
      v195 = v95;
      v196 = v296;
      v193(v249, v195, v296);
      v197 = v250;
      v193(v250, v103, v196);
      v198 = v253;
      (*(v251 + 40))(v197, v307, v196);
      v199 = *(v192 + 8);
      v199(v197, v196);
      v199(v194, v196);
      v200 = v252;
      v201 = v254;
      if ((*(v252 + 48))(v198, 1, v254) == 1)
      {
        (*(v229 + 8))(v198, v230);
        goto LABEL_43;
      }

      v225 = *(v200 + 32);
      v226 = v228;
      v225(v228, v198, v201);
      v217 = v318;
      v225(v318, v226, v201);
      v325 = v312;
      v324 = v313;
      v327 = v314;
      v326 = v315;
      v329 = v316;
      v328 = v317;
      v330 = v322;
      v331 = v323;
      v218 = type metadata accessor for TaggedValue_7.ObservableDifference(0, &v324);
    }

LABEL_58:
    swift_storeEnumTagMultiPayload();
    (*(*(v218 - 8) + 56))(v217, 0, 1, v218);
    goto LABEL_59;
  }

  v106 = v321;
  v124 = v103;
  if (EnumCaseMultiPayload != 2)
  {
    (v102)(v86, v321, v104);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      v107 = *(v301 + 8);
      v108 = v86;
      v109 = &v325 + 1;
      goto LABEL_38;
    }

    v165 = v104;
    v175 = v301;
    v176 = *(v301 + 32);
    v177 = v266;
    v178 = v302;
    v176(v266, v86, v302);
    v179 = v267;
    v176(v267, v103, v178);
    v180 = v271;
    (*(v269 + 40))(v179, v307, v178);
    v181 = *(v175 + 8);
    v181(v179, v178);
    v181(v177, v178);
    v182 = v270;
    v183 = v274;
    if ((*(v270 + 48))(v180, 1, v274) == 1)
    {
      (*(v238 + 8))(v180, v239);
      goto LABEL_28;
    }

    v223 = *(v182 + 32);
    v224 = v237;
    v223(v237, v180, v183);
    v221 = v318;
    v223(v318, v224, v183);
    v325 = v312;
    v324 = v313;
    v327 = v314;
    v326 = v315;
    v329 = v316;
    v328 = v317;
    v330 = v322;
    v331 = v323;
    v222 = type metadata accessor for TaggedValue_7.ObservableDifference(0, &v324);
    goto LABEL_54;
  }

  (v102)(v89, v321, v104);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v107 = *(v299 + 8);
    v108 = v89;
    v109 = &v324 + 1;
    goto LABEL_38;
  }

  v125 = v106;
  v126 = v104;
  v127 = v299;
  v128 = *(v299 + 32);
  v129 = v260;
  v130 = v300;
  v128(v260, v89, v300);
  v131 = v261;
  v128(v261, v124, v130);
  v132 = v265;
  (*(v263 + 40))(v131, v307, v130);
  v133 = *(v127 + 8);
  v133(v131, v130);
  v133(v129, v130);
  v134 = v264;
  v135 = v268;
  if ((*(v264 + 48))(v132, 1, v268) == 1)
  {
    (*(v235 + 8))(v132, v236);
    v325 = v312;
    v324 = v313;
    v327 = v314;
    v326 = v315;
    v329 = v316;
    v328 = v317;
    v330 = v322;
    v331 = v323;
    v136 = type metadata accessor for TaggedValue_7.ObservableDifference(0, &v324);
    (*(*(v136 - 8) + 56))(v318, 1, 1, v136);
  }

  else
  {
    v207 = *(v134 + 32);
    v208 = v234;
    v207(v234, v132, v135);
    v209 = v318;
    v207(v318, v208, v135);
    v325 = v312;
    v324 = v313;
    v327 = v314;
    v326 = v315;
    v329 = v316;
    v328 = v317;
    v330 = v322;
    v331 = v323;
    v210 = type metadata accessor for TaggedValue_7.ObservableDifference(0, &v324);
    swift_storeEnumTagMultiPayload();
    (*(*(v210 - 8) + 56))(v209, 0, 1, v210);
  }

  v191 = v308;
  v190 = v126;
  v106 = v125;
  return (*(v191 + 8))(v106, v190);
}