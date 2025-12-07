unint64_t sub_1C4A7A230()
{
  result = qword_1EDDF0718;
  if (!qword_1EDDF0718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF0718);
  }

  return result;
}

unint64_t sub_1C4A7A284()
{
  result = qword_1EDDF0720;
  if (!qword_1EDDF0720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF0720);
  }

  return result;
}

uint64_t sub_1C4A7A2D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4A7A338(uint64_t a1, uint64_t *a2)
{
  v44 = a2;
  v4 = sub_1C4EFF0C8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v43 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v37 = v2;
    v49 = MEMORY[0x1E69E7CC0];
    sub_1C459D100(0, v7, 0);
    v9 = v49;
    v12 = sub_1C486C288();
    result = v9;
    v13 = 0;
    v48 = a1 + 56;
    v41 = (v5 + 8);
    v42 = v5 + 16;
    v38 = a1 + 64;
    v39 = v7;
    v40 = v5;
    v14 = a1;
    v45 = a1;
    if ((v12 & 0x8000000000000000) == 0)
    {
      while (v12 < 1 << *(v14 + 32))
      {
        v15 = v12 >> 6;
        if ((*(v48 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
        {
          goto LABEL_28;
        }

        if (*(v14 + 36) != v10)
        {
          goto LABEL_29;
        }

        v47 = v11;
        v46 = v10;
        v16 = result;
        v17 = *(v14 + 48) + *(v5 + 72) * v12;
        v18 = *(v5 + 16);
        v19 = v43;
        v18(v43, v17, v4);
        v20 = v44;
        swift_beginAccess();
        v21 = *v20;
        v22 = 0;
        if (*(*v20 + 16))
        {
          sub_1C44E3664();
          if (v24)
          {
            v22 = *(*(v21 + 56) + 8 * v23);
          }
        }

        swift_endAccess();
        (*v41)(v19, v4);
        result = v16;
        v49 = v16;
        v26 = *(v16 + 16);
        v25 = *(v16 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_1C459D100(v25 > 1, v26 + 1, 1);
          result = v49;
        }

        *(result + 16) = v26 + 1;
        *(result + 8 * v26 + 32) = v22;
        if (v47)
        {
          goto LABEL_33;
        }

        v14 = v45;
        v27 = 1 << *(v45 + 32);
        if (v12 >= v27)
        {
          goto LABEL_30;
        }

        v28 = *(v48 + 8 * v15);
        if ((v28 & (1 << v12)) == 0)
        {
          goto LABEL_31;
        }

        if (*(v45 + 36) != v46)
        {
          goto LABEL_32;
        }

        v29 = v28 & (-2 << (v12 & 0x3F));
        if (v29)
        {
          v27 = __clz(__rbit64(v29)) | v12 & 0x7FFFFFFFFFFFFFC0;
          v5 = v40;
        }

        else
        {
          v30 = v15 << 6;
          v31 = v15 + 1;
          v32 = (v38 + 8 * v15);
          v5 = v40;
          while (v31 < (v27 + 63) >> 6)
          {
            v34 = *v32++;
            v33 = v34;
            v30 += 64;
            ++v31;
            if (v34)
            {
              v35 = result;
              sub_1C440951C(v12, v46, 0);
              result = v35;
              v27 = __clz(__rbit64(v33)) + v30;
              goto LABEL_22;
            }
          }

          v36 = result;
          sub_1C440951C(v12, v46, 0);
          result = v36;
LABEL_22:
          v14 = v45;
        }

        if (++v13 == v39)
        {
          return result;
        }

        v11 = 0;
        v10 = *(v14 + 36);
        v12 = v27;
        if (v27 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
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

  return result;
}

uint64_t sub_1C4A7A6B4(uint64_t a1, uint64_t *a2)
{
  v50 = a2;
  v55 = sub_1C4EFF0C8();
  v4 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C456902C(&qword_1EC0B8FC0, &unk_1C4F0EA98);
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v56 = &v41 - v8;
  v9 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v53 = v6;
    v41 = v2;
    v58 = MEMORY[0x1E69E7CC0];
    v47 = v4;
    sub_1C459DB98();
    v11 = v47;
    v57 = v58;
    result = sub_1C486C288();
    v14 = result;
    v15 = 0;
    v54 = a1 + 56;
    v44 = (v11 + 8);
    v45 = v11 + 16;
    v42 = a1 + 64;
    v43 = v9;
    v46 = a1;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v14 < 1 << *(a1 + 32))
      {
        v16 = v14 >> 6;
        if ((*(v54 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
        {
          goto LABEL_29;
        }

        if (*(a1 + 36) != v12)
        {
          goto LABEL_30;
        }

        v52 = v13;
        v51 = v12;
        v17 = *(a1 + 48) + *(v11 + 72) * v14;
        v18 = *(v11 + 16);
        v19 = v53;
        v20 = v55;
        v18(v53, v17, v55);
        v21 = *(v49 + 48);
        v18(v56, v19, v20);
        v22 = v50;
        swift_beginAccess();
        v23 = *v22;
        if (*(v23 + 16) && (sub_1C44E3664(), (v25 & 1) != 0))
        {
          v26 = *(*(v23 + 56) + 8 * v24);
          swift_endAccess();
        }

        else
        {
          swift_endAccess();
          v26 = 0;
        }

        v27 = v55;
        v28 = v56;
        *&v56[v21] = v26;
        (*v44)(v53, v27);
        v29 = v57;
        v58 = v57;
        v30 = *(v57 + 16);
        a1 = v46;
        if (v30 >= *(v57 + 24) >> 1)
        {
          sub_1C459DB98();
          v28 = v56;
          v29 = v58;
        }

        *(v29 + 16) = v30 + 1;
        v31 = (*(v48 + 80) + 32) & ~*(v48 + 80);
        v57 = v29;
        result = sub_1C44CD9E0(v28, v29 + v31 + *(v48 + 72) * v30, &qword_1EC0B8FC0, &unk_1C4F0EA98);
        if (v52)
        {
          goto LABEL_34;
        }

        v32 = 1 << *(a1 + 32);
        if (v14 >= v32)
        {
          goto LABEL_31;
        }

        v33 = *(v54 + 8 * v16);
        if ((v33 & (1 << v14)) == 0)
        {
          goto LABEL_32;
        }

        if (*(a1 + 36) != v51)
        {
          goto LABEL_33;
        }

        v34 = v33 & (-2 << (v14 & 0x3F));
        if (v34)
        {
          v32 = __clz(__rbit64(v34)) | v14 & 0x7FFFFFFFFFFFFFC0;
          v35 = v43;
        }

        else
        {
          v36 = v16 << 6;
          v37 = v16 + 1;
          v35 = v43;
          v38 = (v42 + 8 * v16);
          while (v37 < (v32 + 63) >> 6)
          {
            v40 = *v38++;
            v39 = v40;
            v36 += 64;
            ++v37;
            if (v40)
            {
              result = sub_1C440951C(v14, v51, 0);
              v32 = __clz(__rbit64(v39)) + v36;
              goto LABEL_23;
            }
          }

          result = sub_1C440951C(v14, v51, 0);
        }

LABEL_23:
        if (++v15 == v35)
        {
          return v57;
        }

        v13 = 0;
        v12 = *(a1 + 36);
        v14 = v32;
        v11 = v47;
        if (v14 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
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
LABEL_34:
    __break(1u);
  }

  return result;
}

void sub_1C4A7AB00(uint64_t a1, uint64_t *a2)
{
  v42 = a2;
  v43 = sub_1C456902C(&qword_1EC0C24A8, &qword_1C4F4A7D8);
  MEMORY[0x1EEE9AC00](v43);
  v37 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v41 = &v35 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35 - v7;
  v9 = a1 + 64;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 64);
  v13 = (v10 + 63) >> 6;
  v44 = a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v14 = 0;
  v38 = MEMORY[0x1E69E7CC0];
  v39 = a1 + 64;
  v40 = v8;
  while (v12)
  {
LABEL_9:
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v17 = v16 | (v14 << 6);
    v18 = v44;
    v19 = *(v44 + 48);
    v20 = sub_1C4EFF0C8();
    v21 = *(v20 - 8);
    (*(v21 + 16))(v8, v19 + *(v21 + 72) * v17, v20);
    *&v8[*(v43 + 48)] = *(*(v18 + 56) + 8 * v17);
    v22 = v8;
    v23 = v41;
    sub_1C4460050(v22, v41, &qword_1EC0C24A8, &qword_1C4F4A7D8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v24 = v42;
    swift_beginAccess();
    v25 = *v24;
    if (*(*v24 + 16) && (sub_1C44E3664(), (v27 & 1) != 0))
    {
      v28 = *(*(v25 + 56) + 8 * v26);
      swift_endAccess();
      v35 = *(v21 + 8);
      v35(v23, v20);
      v8 = v40;
      v29 = v37;
      sub_1C4460050(v40, v37, &qword_1EC0C24A8, &qword_1C4F4A7D8);
      v36 = *(v29 + *(v43 + 48));
      v35(v29, v20);
      sub_1C4420C3C(v8, &qword_1EC0C24A8, &qword_1C4F4A7D8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C458BD50();
        v38 = v33;
      }

      v9 = v39;
      v30 = *(v38 + 16);
      if (v30 >= *(v38 + 24) >> 1)
      {
        sub_1C458BD50();
        v38 = v34;
      }

      v31 = v38;
      *(v38 + 16) = v30 + 1;
      v32 = v31 + 16 * v30;
      *(v32 + 32) = v36;
      *(v32 + 40) = v28;
    }

    else
    {
      swift_endAccess();
      (*(v21 + 8))(v23, v20);
      v8 = v40;
      sub_1C4420C3C(v40, &qword_1EC0C24A8, &qword_1C4F4A7D8);
      v9 = v39;
    }
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

    v12 = *(v9 + 8 * v15);
    ++v14;
    if (v12)
    {
      v14 = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1C4A7AEDC(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v209 = a2;
  v7 = 0;
  v216 = sub_1C456902C(&qword_1EC0B8FC0, &unk_1C4F0EA98);
  sub_1C43FCDF8();
  v219 = v8;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v12);
  v226 = &v204 - v13;
  v238 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBF38();
  v237 = v18;
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v20);
  v232 = &v204 - v21;
  v230 = sub_1C456902C(&qword_1EC0C24A8, &qword_1C4F4A7D8);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v204 - v26;
  v28 = *(a1 + 64);
  v223 = a1 + 64;
  v29 = 1 << *(a1 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & v28;
  v32 = (v29 + 63) >> 6;
  v233 = v15 + 16;
  v225 = (v15 + 8);
  v229 = v15;
  v228 = (v15 + 32);
  v218 = a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v234 = MEMORY[0x1E69E7CC0];
  v210 = 0;
  v236 = v32;
LABEL_4:
  v33 = v7;
  v34 = v218;
  if (!v31)
  {
    goto LABEL_6;
  }

  do
  {
    v7 = v33;
LABEL_9:
    v35 = __clz(__rbit64(v31));
    v31 &= v31 - 1;
    v36 = v35 | (v7 << 6);
    v37 = *(v34 + 48);
    v38 = v229;
    v235 = *(v229 + 72);
    v39 = v34;
    (*(v229 + 16))(v27, v37 + v235 * v36, v238);
    v40 = *(*(v39 + 56) + 8 * v36);
    v41 = v230;
    *&v27[*(v230 + 48)] = v40;
    v42 = v227;
    sub_1C4460050(v27, v227, &qword_1EC0C24A8, &qword_1C4F4A7D8);
    v43 = *(*(v42 + *(v41 + 48)) + 16);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    (*(v38 + 8))(v42, v238);
    if (!v43)
    {
      v44 = v235;
      v45 = v227;
      sub_1C44CD9E0(v27, v227, &qword_1EC0C24A8, &qword_1C4F4A7D8);

      v231 = *v228;
      v231(v232, v45, v238);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C44D45E4(0, *(v234 + 16) + 1, 1, v234);
        v234 = v50;
      }

      v47 = *(v234 + 16);
      v46 = *(v234 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_1C44D45E4(v46 > 1, v47 + 1, 1, v234);
        v234 = v51;
      }

      *(v234 + 16) = v47 + 1;
      sub_1C4432800();
      v231((v49 + v48 + v47 * v44), v232, v238);
      v32 = v236;
      goto LABEL_4;
    }

    sub_1C4420C3C(v27, &qword_1EC0C24A8, &qword_1C4F4A7D8);
    v33 = v7;
    v34 = v218;
    v32 = v236;
  }

  while (v31);
  while (1)
  {
LABEL_6:
    v7 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
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
      goto LABEL_130;
    }

    if (v7 >= v32)
    {
      break;
    }

    v31 = *(v223 + 8 * v7);
    ++v33;
    if (v31)
    {
      goto LABEL_9;
    }
  }

  sub_1C45972E0();
  v208 = v52;
  v53 = *(v218 + 16);
  v54 = MEMORY[0x1E69E7CC0];
  if (v53)
  {
    v240 = MEMORY[0x1E69E7CC0];
    sub_1C459DB98();
    v54 = v240;
    v55 = sub_1C4703354();
    v56 = v218;
    v213 = v57;
    v212 = v218 + 72;
    v214 = v53;
    while ((v55 & 0x8000000000000000) == 0 && v55 < 1 << *(v56 + 32))
    {
      v58 = v55 >> 6;
      sub_1C44135DC();
      if ((*(v62 + 8 * (v55 >> 6)) & (1 << v55)) == 0)
      {
        goto LABEL_131;
      }

      if (*(v56 + 36) != v59)
      {
        goto LABEL_132;
      }

      v234 = v59;
      v235 = 1 << v55;
      LODWORD(v231) = v60;
      v232 = v61;
      v63 = v229;
      v64 = *(v56 + 48) + *(v229 + 72) * v55;
      v65 = *(v229 + 16);
      v66 = v227;
      v236 = v54;
      v67 = v238;
      v65(v227, v64, v238);
      v68 = *(*(v56 + 56) + 8 * v55);
      v69 = *(v63 + 32);
      v70 = v215;
      v69(v215, v66, v67);
      *(v70 + *(v230 + 48)) = v68;
      v71 = *(v216 + 48);
      v72 = v70;
      v73 = v222;
      sub_1C44CD9E0(v72, v222, &qword_1EC0C24A8, &qword_1C4F4A7D8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      v74 = v226;
      v75 = v67;
      v54 = v236;
      v69(v226, v73, v75);
      *&v74[v71] = 1.0 / *(v56 + 16);
      v240 = v54;
      v76 = *(v54 + 16);
      if (v76 >= *(v54 + 24) >> 1)
      {
        sub_1C459DB98();
        v54 = v240;
      }

      *(v54 + 16) = v76 + 1;
      sub_1C440B03C();
      sub_1C44CD9E0(v79, v54 + v77 + *(v78 + 72) * v76, &qword_1EC0B8FC0, &unk_1C4F0EA98);
      v80 = 1 << *(v56 + 32);
      if (v55 >= v80)
      {
        goto LABEL_133;
      }

      sub_1C44135DC();
      v83 = *(v82 + 8 * v58);
      if ((v83 & v235) == 0)
      {
        goto LABEL_134;
      }

      if (*(v56 + 36) != v234)
      {
        goto LABEL_135;
      }

      v84 = v83 & (-2 << (v55 & 0x3F));
      if (v84)
      {
        v80 = __clz(__rbit64(v84)) | v55 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v85 = v58 << 6;
        v86 = v58 + 1;
        v87 = (v212 + 8 * v58);
        while (v86 < (v80 + 63) >> 6)
        {
          v89 = *v87++;
          v88 = v89;
          v85 += 64;
          ++v86;
          if (v89)
          {
            sub_1C4408EA0(v81, v234);
            v80 = __clz(__rbit64(v88)) + v85;
            goto LABEL_35;
          }
        }

        sub_1C4408EA0(v81, v234);
      }

LABEL_35:
      v55 = v80;
      if (v232 + 1 == v214)
      {
        goto LABEL_36;
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
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    swift_once();
    goto LABEL_116;
  }

LABEL_36:
  v90 = swift_allocObject();
  v91 = sub_1C4BA02C4(v54);
  v205 = v90;
  *(v90 + 16) = v91;
  v92 = (v90 + 16);
  v93 = v210;
  if (v209 < 0)
  {
    goto LABEL_138;
  }

  v94 = v218;
  v95 = (1.0 - a3) / *(v218 + 16);
  v96 = a3 / (*(v91 + 16) - 1);
  v211 = v92;
  swift_beginAccess();
  v97 = v94;
  v98 = 0;
  v212 = v94 + 72;
  while (1)
  {
    if (v98 == v209)
    {
      goto LABEL_113;
    }

    if (__OFADD__(v98, 1))
    {
      goto LABEL_137;
    }

    v207 = v98;
    v206 = v98 + 1;
    sub_1C4A7AB00(v97, v211);
    v210 = v93;
    v99 = 0;
    v214 = *(v100 + 16);
    v215 = v100;
    v213 = v100 + 32;
    v101 = MEMORY[0x1E69E7CC8];
LABEL_41:
    v236 = v101;
    if (v99 != v214)
    {
      if (v99 < *(v215 + 16))
      {
        v102 = v213 + 16 * v99;
        v103 = *v102;
        v104 = *(v102 + 8);
        v222 = v99 + 1;
        v105 = v103 + 56;
        v106 = 1 << *(v103 + 32);
        if (v106 < 64)
        {
          v107 = ~(-1 << v106);
        }

        else
        {
          v107 = -1;
        }

        v108 = v107 & *(v103 + 56);
        v109 = (v106 + 63) >> 6;
        v230 = v103;
        swift_bridgeObjectRetain_n();
        v110 = 0;
        v111 = 0;
        v112 = 0;
        v113 = 0;
        v114 = 0;
        v227 = v105;
        v226 = v109;
        if (v108)
        {
          while (1)
          {
            v235 = v113;
LABEL_52:
            v116 = v230;
            v117 = *(v230 + 48);
            v118 = v229;
            v231 = *(v229 + 72);
            v119 = v224;
            v120 = v238;
            v232 = *(v229 + 16);
            (v232)(v224, v117 + v231 * (__clz(__rbit64(v108)) | (v114 << 6)), v238);
            (*(v118 + 32))(v237, v119, v120);
            v121 = swift_allocObject();
            *(v121 + 16) = v95;
            sub_1C44239FC(v110, v111);
            v234 = *(v116 + 16);
            v113 = swift_allocObject();
            *(v113 + 16) = sub_1C49B7AEC;
            *(v113 + 24) = v121;
            sub_1C44239FC(v112, v235);
            v122 = v236;
            swift_isUniquelyReferenced_nonNull_native();
            v239 = v122;
            sub_1C44E3664();
            if (__OFADD__(*(v122 + 16), (v124 & 1) == 0))
            {
              break;
            }

            v125 = v123;
            v126 = v124;
            v127 = sub_1C456902C(&qword_1EC0C24B0, &unk_1C4F58B90);
            v128 = sub_1C440F9C4(v127);
            v129 = v239;
            if (v128)
            {
              sub_1C44E3664();
              if ((v126 & 1) != (v131 & 1))
              {
                goto LABEL_140;
              }

              v125 = v130;
            }

            if ((v126 & 1) == 0)
            {
              sub_1C49B7948(&v239);
              v132 = v239;
              sub_1C4417364(v129 + 8 * (v125 >> 6));
              (v232)(v133 + v125 * v231, v237, v238);
              *(*(v129 + 56) + 8 * v125) = v132;
              v134 = *(v129 + 16);
              v135 = __OFADD__(v134, 1);
              v136 = v134 + 1;
              if (v135)
              {
                __break(1u);
                goto LABEL_115;
              }

              *(v129 + 16) = v136;
            }

            v108 &= v108 - 1;
            v236 = v129;
            *(*(v129 + 56) + 8 * v125) = v104 / v234 * a3 + *(*(v129 + 56) + 8 * v125);
            (*v225)(v237, v238);
            v112 = sub_1C49B7948;
            v110 = sub_1C49B7AEC;
            v111 = v121;
            v105 = v227;
            v109 = v226;
            if (!v108)
            {
              goto LABEL_48;
            }
          }
        }

        else
        {
LABEL_48:
          while (1)
          {
            v115 = v114 + 1;
            if (__OFADD__(v114, 1))
            {
              break;
            }

            if (v115 >= v109)
            {

              sub_1C44239FC(v110, v111);
              sub_1C44239FC(v112, v113);

              v99 = v222;
              v101 = v236;
              goto LABEL_41;
            }

            v108 = *(v105 + 8 * v115);
            ++v114;
            if (v108)
            {
              v235 = v113;
              v114 = v115;
              goto LABEL_52;
            }
          }

          __break(1u);
        }

        __break(1u);
LABEL_113:
        sub_1C440358C();

        goto LABEL_119;
      }

      __break(1u);
      goto LABEL_121;
    }

    v137 = sub_1C440358C();
    v138 = v210;
    v139 = sub_1C4A7A338(v137, v211);
    v140 = *(v139 + 16);
    if (v140)
    {
      v141 = (v139 + 32);
      v142 = 0.0;
      do
      {
        v143 = *v141++;
        v142 = v142 + v143;
        --v140;
      }

      while (v140);
    }

    else
    {
      v142 = 0.0;
    }

    v144 = sub_1C440358C();
    v145 = sub_1C4A7A6B4(v144, v211);
    v210 = v138;
    v146 = *(v145 + 16);
    if (v146)
    {
      v147 = 0;
      v235 = *(v216 + 48);
      sub_1C4432800();
      v149 = v145 + v148;
      v150 = MEMORY[0x1E69E7CC8];
      while (v147 < *(v145 + 16))
      {
        v151 = v217;
        v138 = &qword_1EC0B8FC0;
        sub_1C4460050(v149 + *(v219 + 72) * v147, v217, &qword_1EC0B8FC0, &unk_1C4F0EA98);
        sub_1C4460050(v151, v220, &qword_1EC0B8FC0, &unk_1C4F0EA98);
        v152 = *(v151 + v235);
        swift_isUniquelyReferenced_nonNull_native();
        v239 = v150;
        sub_1C44E3664();
        if (__OFADD__(*(v150 + 16), (v154 & 1) == 0))
        {
          goto LABEL_123;
        }

        v155 = v153;
        v156 = v154;
        v157 = sub_1C456902C(&qword_1EC0C24B0, &unk_1C4F58B90);
        v158 = sub_1C440F9C4(v157);
        v150 = v239;
        if (v158)
        {
          sub_1C44E3664();
          if ((v156 & 1) != (v160 & 1))
          {
LABEL_140:
            result = sub_1C4F029F8();
            __break(1u);
            return result;
          }

          v155 = v159;
        }

        if ((v156 & 1) == 0)
        {
          sub_1C4417364(v150 + 8 * (v155 >> 6));
          (*(v229 + 16))(v161 + *(v229 + 72) * v155, v220, v238);
          *(*(v150 + 56) + 8 * v155) = 0;
          v162 = *(v150 + 16);
          v135 = __OFADD__(v162, 1);
          v163 = v162 + 1;
          if (v135)
          {
            goto LABEL_136;
          }

          *(v150 + 16) = v163;
        }

        ++v147;
        *(*(v150 + 56) + 8 * v155) = *(*(v150 + 56) + 8 * v155) - v152;
        sub_1C4420C3C(v217, &qword_1EC0B8FC0, &unk_1C4F0EA98);
        (*v225)(v220, v238);
        if (v146 == v147)
        {
          goto LABEL_80;
        }
      }

      goto LABEL_122;
    }

    v150 = MEMORY[0x1E69E7CC8];
LABEL_80:

    v164 = *(v218 + 16);
    if (v164)
    {
      v239 = MEMORY[0x1E69E7CC0];
      sub_1C459DB98();
      v165 = v239;
      v166 = sub_1C4703354();
      v167 = 0;
      sub_1C4412274();
      v232 = v164;
      if ((v166 & 0x8000000000000000) == 0)
      {
        while (v166 < 1 << *(v168 + 32))
        {
          v169 = v166 >> 6;
          sub_1C44135DC();
          if ((*(v173 + 8 * (v166 >> 6)) & (1 << v166)) == 0)
          {
            goto LABEL_125;
          }

          if (*(v172 + 36) != v170)
          {
            goto LABEL_126;
          }

          LODWORD(v234) = v171;
          v235 = v170;
          (*(v229 + 16))(v221, *(v172 + 48) + *(v229 + 72) * v166, v238);
          v174 = v236;
          v175 = v95;
          if (*(v236 + 16))
          {
            sub_1C44E3664();
            sub_1C4412274();
            v175 = v95;
            if (v177)
            {
              v175 = *(*(v174 + 56) + 8 * v176);
            }
          }

          v178 = 0.0;
          if (*(v150 + 16))
          {
            sub_1C44E3664();
            sub_1C4412274();
            if (v180)
            {
              v178 = *(*(v150 + 56) + 8 * v179);
            }
          }

          v181 = *(v216 + 48);
          (*v228)(v138, v221, v238);
          *(v138 + v181) = v175 + v96 * (v142 + v178);
          v239 = v165;
          v182 = *(v165 + 16);
          if (v182 >= *(v165 + 24) >> 1)
          {
            sub_1C459DB98();
            sub_1C4412274();
            v165 = v239;
          }

          *(v165 + 16) = v182 + 1;
          sub_1C440B03C();
          sub_1C44CD9E0(v138, v165 + v183 + *(v184 + 72) * v182, &qword_1EC0B8FC0, &unk_1C4F0EA98);
          v185 = 1 << *(v218 + 32);
          if (v166 >= v185)
          {
            goto LABEL_127;
          }

          sub_1C44135DC();
          v187 = *(v186 + 8 * v169);
          if ((v187 & (1 << v166)) == 0)
          {
            goto LABEL_128;
          }

          if (*(v168 + 36) != v235)
          {
            goto LABEL_129;
          }

          v188 = v187 & (-2 << (v166 & 0x3F));
          if (v188)
          {
            v185 = __clz(__rbit64(v188)) | v166 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v189 = v169 << 6;
            v190 = v169 + 1;
            v191 = (v212 + 8 * v169);
            while (v190 < (v185 + 63) >> 6)
            {
              v193 = *v191++;
              v192 = v193;
              v189 += 64;
              ++v190;
              if (v193)
              {
                sub_1C440951C(v166, v235, v234 & 1);
                v185 = __clz(__rbit64(v192)) + v189;
                goto LABEL_103;
              }
            }

            sub_1C440951C(v166, v235, v234 & 1);
LABEL_103:
            sub_1C4412274();
          }

          if (++v167 == v232)
          {

            goto LABEL_109;
          }

          v166 = v185;
          if (v185 < 0)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_124;
    }

    v165 = MEMORY[0x1E69E7CC0];
LABEL_109:
    v194 = sub_1C4BA02C4(v165);
    v195 = v205;
    v196 = swift_allocObject();
    *(v196 + 16) = v194;
    *(v196 + 24) = v195;
    *(v196 + 32) = a4;
    *(v196 + 40) = v207;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    sub_1C465BC24();
    LOBYTE(v195) = v197;

    if ((v195 & 1) == 0)
    {
      break;
    }

    *v211 = v194;

    v98 = v206;
    v97 = v218;
    v93 = v210;
  }

LABEL_115:

  sub_1C440358C();

  if (qword_1EDDFECB0 != -1)
  {
    goto LABEL_139;
  }

LABEL_116:
  v198 = sub_1C4F00978();
  sub_1C442B738(v198, qword_1EDDFECB8);
  v199 = sub_1C4F00968();
  v200 = sub_1C4F01CC8();
  if (os_log_type_enabled(v199, v200))
  {
    v201 = swift_slowAlloc();
    *v201 = 134217984;
    *(v201 + 4) = v206;
    _os_log_impl(&dword_1C43F8000, v199, v200, "Stopping pagerank after %ld iterations", v201, 0xCu);
    MEMORY[0x1C6942830](v201, -1, -1);
  }

LABEL_119:
  swift_beginAccess();
  v202 = *(v205 + 16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  return v202;
}

void sub_1C4A7C39C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, BOOL *a5@<X8>, double a6@<D0>)
{
  v12 = sub_1C4EFF0C8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v35[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C465C4A0(a1, a2);
  if ((v17 & 1) == 0)
  {
    v18 = *&v16;
    swift_beginAccess();
    v19 = sub_1C465C4A0(a1, *(a3 + 16));
    if ((v20 & 1) == 0)
    {
      v33 = *&v19;
      swift_endAccess();
      v32 = vabdd_f64(v18, v33) >= a6;
      goto LABEL_11;
    }

    swift_endAccess();
  }

  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v21 = sub_1C4F00978();
  sub_1C442B738(v21, qword_1EDDFECB8);
  (*(v13 + 16))(v15, a1, v12);
  v22 = sub_1C4F00968();
  v23 = sub_1C4F01CD8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v34 = a5;
    v35[0] = v25;
    v26 = a4;
    v27 = v25;
    *v24 = 136315394;
    sub_1C470A388();
    v28 = sub_1C4F02858();
    v30 = v29;
    (*(v13 + 8))(v15, v12);
    v31 = sub_1C441D828(v28, v30, v35);

    *(v24 + 4) = v31;
    *(v24 + 12) = 2048;
    *(v24 + 14) = v26;
    a5 = v34;
    _os_log_impl(&dword_1C43F8000, v22, v23, "weight for %s was dropped in iteration %ld of pagerank", v24, 0x16u);
    sub_1C440962C(v27);
    MEMORY[0x1C6942830](v27, -1, -1);
    MEMORY[0x1C6942830](v24, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v15, v12);
  }

  v32 = 0;
LABEL_11:
  *a5 = v32;
}

char *sub_1C4A7C68C(unint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    sub_1C44AA008();
    return a2;
  }

  else
  {

    return sub_1C4A80A20(a1, a2);
  }
}

uint64_t sub_1C4A7C744(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t (*a4)(void))
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    a3();
    return a2;
  }

  else
  {

    return a4();
  }
}

char *sub_1C4A7C7A0(unint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    sub_1C44AA008();
    return a2;
  }

  else
  {

    return sub_1C4A82660(a1, a2);
  }
}

uint64_t PairGenerator.init(stores:source:entityClass:pipelineType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a4;
  v10 = type metadata accessor for PairGenerator(0);
  *(a5 + v10[8]) = 1;
  sub_1C440D6E4();
  sub_1C4471A3C(a1, a5);
  sub_1C447212C(a2, a5 + v10[5]);
  v11 = v10[6];
  sub_1C4EFD548();
  sub_1C43FBCE0();
  (*(v12 + 32))(a5 + v11, a3);
  *(a5 + v10[7]) = v9;
  v13 = *(a1 + *(type metadata accessor for PhaseStores(0) + 28));

  result = sub_1C4485564(a1, type metadata accessor for PhaseStores);
  *(a5 + v10[9]) = v13;
  return result;
}

uint64_t PairGenerator.stateStore.getter()
{
  type metadata accessor for PairGenerator(0);
}

uint64_t sub_1C4A7C9C0(uint64_t a1)
{
  v1 = sub_1C4EFF048();
  v3 = v2;
  if (v1 == sub_1C4EFF048() && v3 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_1C4F02938();
  }

  return v6 & 1;
}

uint64_t sub_1C4A7CA58(uint64_t a1)
{
  result = sub_1C44D7248(&qword_1EDDF8040, type metadata accessor for PairGenerator, &protocol conformance descriptor for PairGenerator);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4A7CAB0(uint64_t a1)
{
  result = sub_1C44D7248(qword_1EDDF8050, type metadata accessor for PairGenerator, &protocol conformance descriptor for PairGenerator);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4A7CB30(uint64_t a1)
{
  result = type metadata accessor for PhaseStores(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Source(319);
    if (v3 <= 0x3F)
    {
      result = sub_1C4EFD548();
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for StateStore(319);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

void sub_1C4A7CBFC(unint64_t *a1, uint64_t a2, char **a3, uint64_t a4)
{
  v5 = v4;
  v149 = a1;
  v8 = sub_1C4EFF0C8();
  MEMORY[0x1EEE9AC00](v8);
  v154 = &v145 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v167 = &v145 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v145 - v13;
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v163 = &v145 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v162 = &v145 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v26 = MEMORY[0x1EEE9AC00](v21);
  v27 = &v145 - v22;
  v160 = v23;
  v161 = a3;
  v28 = a3[1];
  if (v28 < 1)
  {
    v30 = MEMORY[0x1E69E7CC0];
LABEL_114:
    v172 = *v149;
    if (!v172)
    {
      goto LABEL_156;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_116;
    }

    goto LABEL_150;
  }

  v168 = v24;
  v145 = a4;
  v29 = 0;
  v172 = v23 + 16;
  v170 = (v23 + 32);
  v171 = (v23 + 8);
  v30 = MEMORY[0x1E69E7CC0];
  v164 = v8;
  v156 = v14;
  v146 = v25;
  v148 = &v145 - v22;
  while (1)
  {
    v31 = v29;
    v32 = v29 + 1;
    v151 = v29;
    if (v29 + 1 < v28)
    {
      v166 = v28;
      v147 = v30;
      v33 = v27;
      v34 = *v161;
      v35 = *(v23 + 72);
      v36 = v25;
      v159 = v29 + 1;
      v37 = v29;
      v38 = &v34[v35 * (v29 + 1)];
      v39 = *(v23 + 16);
      v39(v33, v38, v8, v26);
      v40 = &v34[v35 * v37];
      v41 = v148;
      v158 = v39;
      (v39)(v36, v40, v8);
      LODWORD(v165) = sub_1C4A7C9C0(v41);
      if (v5)
      {
        v144 = *v171;
        (*v171)(v36, v8);
        (v144)(v41, v8);
LABEL_124:

        return;
      }

      v150 = 0;
      v42 = *v171;
      (*v171)(v36, v8);
      v157 = v42;
      (v42)(v41, v8);
      v43 = v151 + 2;
      v44 = &v34[v35 * (v151 + 2)];
      v32 = v159;
      v45 = v35;
      v169 = v35;
      v46 = v166;
      while (1)
      {
        v47 = v43;
        if (v32 + 1 >= v46)
        {
          break;
        }

        v48 = v32;
        v49 = v164;
        v5 = v158;
        (v158)(v162, v44, v164);
        v5(v163, v38, v49);
        v50 = sub_1C4EFF048();
        v52 = v51;
        if (v50 == sub_1C4EFF048() && v52 == v53)
        {
          v55 = 0;
        }

        else
        {
          v55 = sub_1C4F02938();
        }

        v56 = v164;
        v57 = v157;
        (v157)(v163, v164);
        v57(v162, v56);
        v45 = v169;
        v44 += v169;
        v38 += v169;
        v32 = v48 + 1;
        v43 = v47 + 1;
        v46 = v166;
        if ((v165 ^ v55))
        {
          goto LABEL_16;
        }
      }

      v32 = v46;
LABEL_16:
      if (v165)
      {
        v31 = v151;
        if (v32 < v151)
        {
          goto LABEL_149;
        }

        v5 = v150;
        if (v151 >= v32)
        {
          v23 = v160;
          v30 = v147;
          v8 = v164;
          v14 = v156;
          goto LABEL_39;
        }

        if (v46 >= v47)
        {
          v58 = v47;
        }

        else
        {
          v58 = v46;
        }

        v59 = v45 * (v58 - 1);
        v60 = v45 * v58;
        v61 = v151;
        v62 = v151 * v45;
        v63 = v32;
        do
        {
          if (v61 != --v63)
          {
            v64 = *v161;
            if (!*v161)
            {
              goto LABEL_154;
            }

            v65 = v164;
            v166 = *v170;
            v166(v154, &v64[v62], v164);
            v66 = v62 < v59 || &v64[v62] >= &v64[v60];
            if (v66)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v62 != v59)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v166(&v64[v59], v154, v65);
            v5 = v150;
            v45 = v169;
          }

          ++v61;
          v59 -= v45;
          v60 -= v45;
          v62 += v45;
        }

        while (v61 < v63);
      }

      else
      {
        v5 = v150;
      }

      v23 = v160;
      v30 = v147;
      v8 = v164;
      v14 = v156;
      v31 = v151;
    }

LABEL_39:
    v67 = v161[1];
    if (v32 < v67)
    {
      if (__OFSUB__(v32, v31))
      {
        goto LABEL_146;
      }

      if (v32 - v31 < v145)
      {
        break;
      }
    }

LABEL_62:
    if (v32 < v31)
    {
      goto LABEL_145;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C458A358();
      v30 = v134;
    }

    v90 = *(v30 + 2);
    v89 = *(v30 + 3);
    v91 = v90 + 1;
    v159 = v32;
    if (v90 >= v89 >> 1)
    {
      sub_1C458A358();
      v30 = v135;
    }

    *(v30 + 2) = v91;
    v92 = v30 + 32;
    v93 = &v30[16 * v90 + 32];
    v94 = v159;
    *v93 = v151;
    *(v93 + 1) = v94;
    v169 = *v149;
    if (!v169)
    {
      goto LABEL_155;
    }

    if (v90)
    {
      while (1)
      {
        v95 = v91 - 1;
        v96 = &v92[16 * v91 - 16];
        v97 = &v30[16 * v91];
        if (v91 >= 4)
        {
          break;
        }

        if (v91 == 3)
        {
          v98 = *(v30 + 4);
          v99 = *(v30 + 5);
          v108 = __OFSUB__(v99, v98);
          v100 = v99 - v98;
          v101 = v108;
LABEL_82:
          if (v101)
          {
            goto LABEL_132;
          }

          v113 = *v97;
          v112 = *(v97 + 1);
          v114 = __OFSUB__(v112, v113);
          v115 = v112 - v113;
          v116 = v114;
          if (v114)
          {
            goto LABEL_135;
          }

          v117 = *(v96 + 1);
          v118 = v117 - *v96;
          if (__OFSUB__(v117, *v96))
          {
            goto LABEL_138;
          }

          if (__OFADD__(v115, v118))
          {
            goto LABEL_140;
          }

          if (v115 + v118 >= v100)
          {
            if (v100 < v118)
            {
              v95 = v91 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        if (v91 < 2)
        {
          goto LABEL_134;
        }

        v120 = *v97;
        v119 = *(v97 + 1);
        v108 = __OFSUB__(v119, v120);
        v115 = v119 - v120;
        v116 = v108;
LABEL_97:
        if (v116)
        {
          goto LABEL_137;
        }

        v122 = *v96;
        v121 = *(v96 + 1);
        v108 = __OFSUB__(v121, v122);
        v123 = v121 - v122;
        if (v108)
        {
          goto LABEL_139;
        }

        if (v123 < v115)
        {
          goto LABEL_111;
        }

LABEL_104:
        if (v95 - 1 >= v91)
        {
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
LABEL_137:
          __break(1u);
LABEL_138:
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
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        if (!*v161)
        {
          goto LABEL_152;
        }

        v127 = v30;
        v128 = &v92[16 * v95 - 16];
        v129 = *v128;
        v130 = &v92[16 * v95];
        v131 = *(v130 + 1);
        sub_1C4A7D7B8(&(*v161)[*(v160 + 72) * *v128], &(*v161)[*(v160 + 72) * *v130], &(*v161)[*(v160 + 72) * v131], v169);
        if (v5)
        {
          goto LABEL_124;
        }

        if (v131 < v129)
        {
          goto LABEL_127;
        }

        v132 = *(v127 + 2);
        if (v95 > v132)
        {
          goto LABEL_128;
        }

        *v128 = v129;
        *(v128 + 1) = v131;
        if (v95 >= v132)
        {
          goto LABEL_129;
        }

        v91 = v132 - 1;
        sub_1C461950C(v130 + 16, v132 - 1 - v95, &v92[16 * v95]);
        v30 = v127;
        *(v127 + 2) = v132 - 1;
        v133 = v132 > 2;
        v14 = v156;
        if (!v133)
        {
          goto LABEL_111;
        }
      }

      v102 = &v92[16 * v91];
      v103 = *(v102 - 8);
      v104 = *(v102 - 7);
      v108 = __OFSUB__(v104, v103);
      v105 = v104 - v103;
      if (v108)
      {
        goto LABEL_130;
      }

      v107 = *(v102 - 6);
      v106 = *(v102 - 5);
      v108 = __OFSUB__(v106, v107);
      v100 = v106 - v107;
      v101 = v108;
      if (v108)
      {
        goto LABEL_131;
      }

      v109 = *(v97 + 1);
      v110 = v109 - *v97;
      if (__OFSUB__(v109, *v97))
      {
        goto LABEL_133;
      }

      v108 = __OFADD__(v100, v110);
      v111 = v100 + v110;
      if (v108)
      {
        goto LABEL_136;
      }

      if (v111 >= v105)
      {
        v125 = *v96;
        v124 = *(v96 + 1);
        v108 = __OFSUB__(v124, v125);
        v126 = v124 - v125;
        if (v108)
        {
          goto LABEL_144;
        }

        if (v100 < v126)
        {
          v95 = v91 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_82;
    }

LABEL_111:
    v23 = v160;
    v28 = v161[1];
    v29 = v159;
    v8 = v164;
    v25 = v146;
    v27 = v148;
    if (v159 >= v28)
    {
      goto LABEL_114;
    }
  }

  v68 = (v31 + v145);
  if (__OFADD__(v31, v145))
  {
    goto LABEL_147;
  }

  if (v68 >= v67)
  {
    v68 = v161[1];
  }

  if (v68 < v31)
  {
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    v30 = sub_1C46194F4();
LABEL_116:
    v136 = v30 + 16;
    v137 = *(v30 + 2);
    while (v137 >= 2)
    {
      if (!*v161)
      {
        goto LABEL_153;
      }

      v138 = v30;
      v139 = &v30[16 * v137];
      v140 = *v139;
      v141 = &v136[2 * v137];
      v142 = *(v141 + 1);
      sub_1C4A7D7B8(&(*v161)[*(v160 + 72) * *v139], &(*v161)[*(v160 + 72) * *v141], &(*v161)[*(v160 + 72) * v142], v172);
      if (v5)
      {
        break;
      }

      if (v142 < v140)
      {
        goto LABEL_141;
      }

      if (v137 - 2 >= *v136)
      {
        goto LABEL_142;
      }

      *v139 = v140;
      *(v139 + 1) = v142;
      v143 = *v136 - v137;
      if (*v136 < v137)
      {
        goto LABEL_143;
      }

      v137 = *v136 - 1;
      sub_1C461950C(v141 + 16, v143, v141);
      *v136 = v137;
      v30 = v138;
    }

    goto LABEL_124;
  }

  if (v32 == v68)
  {
    goto LABEL_62;
  }

  v147 = v30;
  v150 = v5;
  v69 = *v161;
  v70 = *(v23 + 72);
  v169 = *(v23 + 16);
  v71 = &v69[v70 * (v32 - 1)];
  v165 = -v70;
  v166 = v69;
  v72 = (v31 - v32);
  v152 = v70;
  v153 = v68;
  v73 = &v69[v32 * v70];
  v74 = v168;
LABEL_48:
  v158 = v71;
  v159 = v32;
  v155 = v73;
  v157 = v72;
  while (1)
  {
    v75 = v169;
    (v169)(v74, v73, v8);
    v75(v14, v71, v8);
    v76 = v14;
    v77 = sub_1C4EFF048();
    v78 = v8;
    v80 = v79;
    if (v77 == sub_1C4EFF048() && v80 == v81)
    {

      v88 = *v171;
      (*v171)(v76, v78);
      (v88)(v74, v78);
      v8 = v78;
      v14 = v76;
      goto LABEL_60;
    }

    v83 = v74;
    v84 = sub_1C4F02938();

    v85 = *v171;
    (*v171)(v76, v78);
    (v85)(v83, v78);
    v8 = v78;
    v14 = v76;
    if ((v84 & 1) == 0)
    {
      v74 = v168;
LABEL_60:
      v32 = v159 + 1;
      v71 = &v158[v152];
      v72 = v157 - 1;
      v73 = &v155[v152];
      if ((v159 + 1) == v153)
      {
        v32 = v153;
        v5 = v150;
        v30 = v147;
        v31 = v151;
        goto LABEL_62;
      }

      goto LABEL_48;
    }

    if (!v166)
    {
      break;
    }

    v86 = *v170;
    v87 = v167;
    (*v170)(v167, v73, v78);
    swift_arrayInitWithTakeFrontToBack();
    v86(v71, v87, v78);
    v71 += v165;
    v73 += v165;
    v66 = __CFADD__(v72++, 1);
    v74 = v168;
    if (v66)
    {
      goto LABEL_60;
    }
  }

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
}

void sub_1C4A7D7B8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = sub_1C4EFF0C8();
  MEMORY[0x1EEE9AC00](v8);
  v70 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v69 = &v63 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v63 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return;
  }

  v20 = a2 - a1 == 0x8000000000000000 && v19 == -1;
  if (v20)
  {
    goto LABEL_72;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_73;
  }

  v23 = (a2 - a1) / v19;
  v76 = a1;
  v75 = a4;
  v71 = (v16 + 8);
  v72 = (v16 + 16);
  v24 = v21 / v19;
  if (v23 < v21 / v19)
  {
    v67 = &v63 - v17;
    v69 = v14;
    sub_1C44E7364(a1, (a2 - a1) / v19, a4);
    v70 = (a4 + v23 * v19);
    v74 = v70;
    v25 = a4;
    v26 = v19;
    v66 = v8;
    v68 = a3;
    while (1)
    {
      if (v25 >= v70 || a2 >= a3)
      {
        goto LABEL_70;
      }

      v28 = a1;
      v29 = *v72;
      v30 = v67;
      v31 = a2;
      (*v72)(v67, a2, v8);
      v73 = v25;
      v32 = v69;
      v29();
      v33 = sub_1C4EFF048();
      v35 = v34;
      if (v33 == sub_1C4EFF048() && v35 == v36)
      {

        v43 = *v71;
        (*v71)(v32, v8);
        v43(v30, v8);
      }

      else
      {
        v38 = sub_1C4F02938();

        v39 = *v71;
        (*v71)(v32, v8);
        v39(v30, v8);
        if (v38)
        {
          v40 = v31;
          a2 = v31 + v26;
          v41 = v28;
          if (v28 < v31 || v28 >= a2)
          {
            v8 = v66;
            swift_arrayInitWithTakeFrontToBack();
            a3 = v68;
          }

          else
          {
            a3 = v68;
            v8 = v66;
            if (v28 != v40)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v73;
          goto LABEL_40;
        }
      }

      v25 = v73 + v26;
      v41 = v28;
      v44 = v28 < v73 || v28 >= v25;
      a2 = v31;
      if (v44)
      {
        v8 = v66;
        swift_arrayInitWithTakeFrontToBack();
        a3 = v68;
      }

      else
      {
        a3 = v68;
        v8 = v66;
        if (v28 != v73)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v75 = v25;
LABEL_40:
      a1 = v41 + v26;
      v76 = a1;
    }
  }

  sub_1C44E7364(a2, v21 / v19, a4);
  v73 = a4;
  v45 = a4 + v24 * v19;
  v46 = -v19;
  v47 = v45;
  v67 = -v19;
LABEL_42:
  v68 = a2;
  v66 = a2 + v46;
  v48 = a3;
  v64 = v47;
  while (1)
  {
    if (v45 <= v73)
    {
      v76 = v68;
      v74 = v47;
      goto LABEL_70;
    }

    if (v68 <= a1)
    {
      break;
    }

    v65 = v47;
    v49 = v45 + v46;
    v50 = *v72;
    (*v72)(v69, v45 + v46, v8);
    (v50)(v70, v66, v8);
    v51 = sub_1C4EFF048();
    v53 = v52;
    if (v51 == sub_1C4EFF048() && v53 == v54)
    {
      v56 = 0;
    }

    else
    {
      v56 = sub_1C4F02938();
    }

    v57 = v48 + v67;
    v58 = *v71;
    (*v71)(v70, v8);
    v58(v69, v8);
    if (v56)
    {
      v60 = v48 < v68 || v57 >= v68;
      a3 = v57;
      if (v60)
      {
        a2 = v66;
        swift_arrayInitWithTakeFrontToBack();
        v47 = v65;
        v46 = v67;
      }

      else
      {
        v62 = v65;
        v61 = v66;
        v47 = v65;
        v20 = v48 == v68;
        a2 = v66;
        v46 = v67;
        if (!v20)
        {
          swift_arrayInitWithTakeBackToFront();
          a2 = v61;
          v47 = v62;
        }
      }

      goto LABEL_42;
    }

    if (v48 < v45 || v57 >= v45)
    {
      swift_arrayInitWithTakeFrontToBack();
      v48 = v57;
      v45 = v49;
      v47 = v49;
      v46 = v67;
    }

    else
    {
      v47 = v49;
      v20 = v45 == v48;
      v48 = v57;
      v45 = v49;
      v46 = v67;
      if (!v20)
      {
        swift_arrayInitWithTakeBackToFront();
        v48 = v57;
        v45 = v49;
        v47 = v49;
      }
    }
  }

  v76 = v68;
  v74 = v64;
LABEL_70:
  sub_1C4BEB414(&v76, &v75, &v74);
}

uint64_t sub_1C4A7DDC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_1C4EFDAF8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v8 = *v2;
  sub_1C44D7248(&qword_1EDDEFFA8, MEMORY[0x1E69A94B0], MEMORY[0x1E69A94B8]);
  v25 = a1;
  v9 = sub_1C4F00FD8();
  v24 = v8;
  v10 = ~(-1 << *(v8 + 32));
  while (1)
  {
    v11 = v9 & v10;
    if (((*(v8 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
    {
      v14 = 1;
      v15 = v23;
      return sub_1C440BAA8(v15, v14, 1, v4);
    }

    v12 = *(v5 + 72) * v11;
    (*(v5 + 16))(v7, *(v24 + 48) + v12, v4);
    sub_1C44D7248(&qword_1EC0B85A8, MEMORY[0x1E69A94B0], MEMORY[0x1E69A94C0]);
    v13 = sub_1C4F010B8();
    (*(v5 + 8))(v7, v4);
    if (v13)
    {
      break;
    }

    v9 = v11 + 1;
  }

  v16 = v22;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v16;
  v26 = *v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C4849A38();
    v18 = v26;
  }

  v19 = *(v18 + 48) + v12;
  v15 = v23;
  (*(v5 + 32))(v23, v19, v4);
  sub_1C4A7FD18();
  v14 = 0;
  *v16 = v26;
  return sub_1C440BAA8(v15, v14, 1, v4);
}

uint64_t sub_1C4A7E078(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1C4F02AF8();
  sub_1C4F01298();
  sub_1C4F02B68();
  sub_1C43FC41C();
  v8 = ~v7;
  while (1)
  {
    v9 = v6 & v8;
    sub_1C444FEE4();
    if ((v10 & 1) == 0)
    {
      return 0;
    }

    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1C4F02938() & 1) != 0)
    {
      break;
    }

    v6 = v9 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v17 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C44802AC();
    v14 = v17;
  }

  v15 = *(*(v14 + 48) + 16 * v9);
  sub_1C4A7F8A8(v9);
  *v2 = v17;
  return v15;
}

uint64_t sub_1C4A7E190(char a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1C4F02AF8();
  sub_1C494CF40(a1);
  sub_1C4F01298();

  v5 = sub_1C4F02B68();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 7;
  }

  v19 = v1;
  v8 = ~v6;
  while (1)
  {
    v9 = 0xE800000000000000;
    v10 = 0x4449656C646E7562;
    switch(*(*(v4 + 48) + v7))
    {
      case 1:
        v10 = 0xD000000000000011;
        v9 = 0x80000001C4F86740;
        break;
      case 2:
        v10 = 0x456E6F6973736573;
        v9 = 0xEC000000746E6576;
        break;
      case 3:
        v10 = 0xD000000000000016;
        v9 = 0x80000001C4F85600;
        break;
      case 4:
        v10 = 0xD000000000000016;
        v9 = 0x80000001C4F86760;
        break;
      case 5:
        v10 = 0x7463617265746E69;
        v9 = 0xEF657079546E6F69;
        break;
      case 6:
        v10 = 0x646576726573626FLL;
        v9 = 0xEB00000000656741;
        break;
      default:
        break;
    }

    v11 = 0xE800000000000000;
    v12 = 0x4449656C646E7562;
    switch(a1)
    {
      case 1:
        v12 = 0xD000000000000011;
        v11 = 0x80000001C4F86740;
        break;
      case 2:
        v12 = 0x456E6F6973736573;
        v11 = 0xEC000000746E6576;
        break;
      case 3:
        v12 = 0xD000000000000016;
        v11 = 0x80000001C4F85600;
        break;
      case 4:
        v12 = 0xD000000000000016;
        v11 = 0x80000001C4F86760;
        break;
      case 5:
        v12 = 0x7463617265746E69;
        v11 = 0xEF657079546E6F69;
        break;
      case 6:
        v12 = 0x646576726573626FLL;
        v11 = 0xEB00000000656741;
        break;
      default:
        break;
    }

    if (v10 == v12 && v9 == v11)
    {
      break;
    }

    v14 = sub_1C4F02938();

    if (v14)
    {
      goto LABEL_25;
    }

    v7 = (v7 + 1) & v8;
    if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 7;
    }
  }

LABEL_25:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C4849B60();
    v17 = v20;
  }

  v15 = *(*(v17 + 48) + v7);
  sub_1C4A7FA60(v7);
  *v19 = v20;
  return v15;
}

uint64_t sub_1C4A7E4C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_1C4EFEEF8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v8 = *v2;
  sub_1C44D7248(&qword_1EDDFCCB8, MEMORY[0x1E69A9748], MEMORY[0x1E69A9758]);
  v25 = a1;
  v9 = sub_1C4F00FD8();
  v24 = v8;
  v10 = ~(-1 << *(v8 + 32));
  while (1)
  {
    v11 = v9 & v10;
    if (((*(v8 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
    {
      v14 = 1;
      v15 = v23;
      return sub_1C440BAA8(v15, v14, 1, v4);
    }

    v12 = *(v5 + 72) * v11;
    (*(v5 + 16))(v7, *(v24 + 48) + v12, v4);
    sub_1C44D7248(&qword_1EDDFCCB0, MEMORY[0x1E69A9748], MEMORY[0x1E69A9768]);
    v13 = sub_1C4F010B8();
    (*(v5 + 8))(v7, v4);
    if (v13)
    {
      break;
    }

    v9 = v11 + 1;
  }

  v16 = v22;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v16;
  v26 = *v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C4849B38();
    v18 = v26;
  }

  v19 = *(v18 + 48) + v12;
  v15 = v23;
  (*(v5 + 32))(v23, v19, v4);
  sub_1C4A7FD18();
  v14 = 0;
  *v16 = v26;
  return sub_1C440BAA8(v15, v14, 1, v4);
}

uint64_t sub_1C4A7E77C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_1C4EFF0C8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v8 = *v2;
  sub_1C44D7248(&qword_1EDDFE820, MEMORY[0x1E69A9810], MEMORY[0x1E69A9820]);
  v25 = a1;
  v9 = sub_1C4F00FD8();
  v24 = v8;
  v10 = ~(-1 << *(v8 + 32));
  while (1)
  {
    v11 = v9 & v10;
    if (((*(v8 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
    {
      v14 = 1;
      v15 = v23;
      return sub_1C440BAA8(v15, v14, 1, v4);
    }

    v12 = *(v5 + 72) * v11;
    (*(v5 + 16))(v7, *(v24 + 48) + v12, v4);
    sub_1C44D7248(&qword_1EDDFCC98, MEMORY[0x1E69A9810], MEMORY[0x1E69A9830]);
    v13 = sub_1C4F010B8();
    (*(v5 + 8))(v7, v4);
    if (v13)
    {
      break;
    }

    v9 = v11 + 1;
  }

  v16 = v22;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v16;
  v26 = *v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C4849888();
    v18 = v26;
  }

  v19 = *(v18 + 48) + v12;
  v15 = v23;
  (*(v5 + 32))(v23, v19, v4);
  sub_1C4A7FD18();
  v14 = 0;
  *v16 = v26;
  return sub_1C440BAA8(v15, v14, 1, v4);
}

uint64_t sub_1C4A7EA34(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = sub_1C4F02AE8();
  v6 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v7 = v5 & v6;
    if (((1 << (v5 & v6)) & *(v4 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      return 0;
    }

    if (*(*(v4 + 48) + 8 * v7) == a1)
    {
      break;
    }

    v5 = v7 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v2;
  v12 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C4849A24();
    v10 = v12;
  }

  v8 = *(*(v10 + 48) + 8 * v7);
  sub_1C4A7FFD8(v7);
  *v2 = v12;
  return v8;
}

uint64_t sub_1C4A7EB20(uint64_t a1)
{
  v2 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    sub_1C4F00BC8();
    sub_1C44110E8();
    sub_1C44D7248(v7, v8, MEMORY[0x1E695BF18]);
    sub_1C4F00FD8();
    sub_1C43FC41C();
    v11 = ~v10;
    while (1)
    {
      v12 = v9 & v11;
      if (((*(v2 + 56 + (((v9 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v11)) & 1) == 0)
      {
        break;
      }

      sub_1C44110E8();
      sub_1C44D7248(&qword_1EC0C24C8, v13, MEMORY[0x1E695BF20]);
      if (sub_1C4F010B8())
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v15 = *v1;
        v17 = *v1;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1C484A5E8();
          v15 = v17;
        }

        v6 = *(*(v15 + 48) + 8 * v12);
        sub_1C4A80130(v12);
        *v1 = v17;
        return v6;
      }

      v9 = v12 + 1;
    }

    return 0;
  }

  if (v2 < 0)
  {
    v4 = v2;
  }

  else
  {
    v4 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v5 = sub_1C4F02158();

  if ((v5 & 1) == 0)
  {

    return 0;
  }

  v6 = sub_1C4A7F6D4(v4, a1);

  return v6;
}

void sub_1C4A7ECE4()
{
  sub_1C43FBD3C();
  v3 = sub_1C441CCA8(v2);
  v4 = type metadata accessor for EventTriple(v3);
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C440B054();
  v8 = sub_1C4410508();
  EventTriple.hash(into:)(v8);
  sub_1C4F02B68();
  sub_1C442D0E4();
  if ((v10 & 1) == 0)
  {
LABEL_35:
    v29 = sub_1C4416304();
    goto LABEL_36;
  }

  sub_1C440F9E4(v9);
  while (1)
  {
    sub_1C440E64C();
    v12 = sub_1C442BDFC(v11);
    sub_1C4471A3C(v12, v1);
    if (sub_1C445E938())
    {
      sub_1C447F244();
      sub_1C441A188();
      sub_1C44D7248(&off_1EDDFCCA8, v13, MEMORY[0x1E69A9770]);
      sub_1C4403598();
      sub_1C43FDC64();
      v14 = sub_1C44135E8();
      v17 = v17 && v6 == v34;
      if (v17)
      {
      }

      else
      {
        sub_1C43FF090(v14, v15, v16);
        sub_1C44016DC();

        if ((v0 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      if (sub_1C44045F0())
      {
        break;
      }
    }

LABEL_34:
    sub_1C4425ED4();
    sub_1C442000C();
    if ((v28 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  v6 = v4[7];
  sub_1C4403598();
  sub_1C43FDC64();
  v18 = sub_1C44135E8();
  if (!v17 || v6 != v34)
  {
    sub_1C43FF090(v18, v19, v20);
    sub_1C44016DC();

    if (v0)
    {
      goto LABEL_19;
    }

    goto LABEL_34;
  }

LABEL_19:
  sub_1C4407764(v4[8]);
  v24 = v17 && v22 == v23;
  if (!v24 && (sub_1C4F02938() & 1) == 0)
  {
    goto LABEL_34;
  }

  sub_1C4417620();
  if (!v17)
  {
    goto LABEL_34;
  }

  sub_1C4412280(v4[10]);
  if (!v17)
  {
    goto LABEL_34;
  }

  sub_1C4407764(v4[11]);
  v27 = v17 && v25 == v26;
  if (!v27 && (sub_1C4F02938() & 1) == 0)
  {
    goto LABEL_34;
  }

  sub_1C4412280(v4[12]);
  if (!v17)
  {
    goto LABEL_34;
  }

  sub_1C4425ED4();
  sub_1C4402444();
  sub_1C443FEC4();
  if ((v32 & 1) == 0)
  {
    sub_1C484AB78();
    v31 = v34[0];
  }

  v33 = sub_1C4433678(*(v31 + 48));
  sub_1C4418B4C(v33, type metadata accessor for EventTriple, type metadata accessor for EventTriple, type metadata accessor for EventTriple);
  v29 = sub_1C4408ECC();
LABEL_36:
  sub_1C440BAA8(v29, v30, 1, v4);
  sub_1C43FE9F0();
}

void sub_1C4A7EF60()
{
  sub_1C43FBD3C();
  v3 = sub_1C441CCA8(v2);
  v4 = type metadata accessor for GraphTriple(v3);
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C440B054();
  v8 = sub_1C4410508();
  GraphTriple.hash(into:)(v8);
  sub_1C4F02B68();
  sub_1C442D0E4();
  if ((v10 & 1) == 0)
  {
LABEL_35:
    v29 = sub_1C4416304();
    goto LABEL_36;
  }

  sub_1C440F9E4(v9);
  while (1)
  {
    sub_1C440E64C();
    v12 = sub_1C442BDFC(v11);
    sub_1C4471A3C(v12, v1);
    if (sub_1C445E938())
    {
      sub_1C447F244();
      sub_1C441A188();
      sub_1C44D7248(&off_1EDDFCCA8, v13, MEMORY[0x1E69A9770]);
      sub_1C4403598();
      sub_1C43FDC64();
      v14 = sub_1C44135E8();
      v17 = v17 && v6 == v34;
      if (v17)
      {
      }

      else
      {
        sub_1C43FF090(v14, v15, v16);
        sub_1C44016DC();

        if ((v0 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      if (sub_1C44045F0())
      {
        break;
      }
    }

LABEL_34:
    sub_1C4435250();
    sub_1C442000C();
    if ((v28 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  v6 = v4[7];
  sub_1C4403598();
  sub_1C43FDC64();
  v18 = sub_1C44135E8();
  if (!v17 || v6 != v34)
  {
    sub_1C43FF090(v18, v19, v20);
    sub_1C44016DC();

    if (v0)
    {
      goto LABEL_19;
    }

    goto LABEL_34;
  }

LABEL_19:
  sub_1C4407764(v4[8]);
  v24 = v17 && v22 == v23;
  if (!v24 && (sub_1C4F02938() & 1) == 0)
  {
    goto LABEL_34;
  }

  sub_1C4417620();
  if (!v17)
  {
    goto LABEL_34;
  }

  sub_1C4412280(v4[10]);
  if (!v17)
  {
    goto LABEL_34;
  }

  sub_1C4407764(v4[11]);
  v27 = v17 && v25 == v26;
  if (!v27 && (sub_1C4F02938() & 1) == 0)
  {
    goto LABEL_34;
  }

  sub_1C4412280(v4[12]);
  if (!v17)
  {
    goto LABEL_34;
  }

  sub_1C4435250();
  sub_1C4402444();
  sub_1C443FEC4();
  if ((v32 & 1) == 0)
  {
    sub_1C484ACA0();
    v31 = v34[0];
  }

  v33 = sub_1C4433678(*(v31 + 48));
  sub_1C4418B4C(v33, type metadata accessor for GraphTriple, type metadata accessor for GraphTriple, type metadata accessor for GraphTriple);
  v29 = sub_1C4408ECC();
LABEL_36:
  sub_1C440BAA8(v29, v30, 1, v4);
  sub_1C43FE9F0();
}

void sub_1C4A7F1DC()
{
  sub_1C43FBD3C();
  v3 = sub_1C441CCA8(v2);
  v4 = type metadata accessor for ConstructionEventTriple(v3);
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C440B054();
  v8 = sub_1C4410508();
  ConstructionEventTriple.hash(into:)(v8);
  sub_1C4F02B68();
  sub_1C442D0E4();
  if ((v10 & 1) == 0)
  {
LABEL_35:
    v29 = sub_1C4416304();
    goto LABEL_36;
  }

  sub_1C440F9E4(v9);
  while (1)
  {
    sub_1C440E64C();
    v12 = sub_1C442BDFC(v11);
    sub_1C4471A3C(v12, v1);
    if (sub_1C445E938())
    {
      sub_1C447F244();
      sub_1C441A188();
      sub_1C44D7248(&off_1EDDFCCA8, v13, MEMORY[0x1E69A9770]);
      sub_1C4403598();
      sub_1C43FDC64();
      v14 = sub_1C44135E8();
      v17 = v17 && v6 == v34;
      if (v17)
      {
      }

      else
      {
        sub_1C43FF090(v14, v15, v16);
        sub_1C44016DC();

        if ((v0 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      if (sub_1C44045F0())
      {
        break;
      }
    }

LABEL_34:
    sub_1C43FC73C();
    sub_1C442000C();
    if ((v28 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  v6 = v4[7];
  sub_1C4403598();
  sub_1C43FDC64();
  v18 = sub_1C44135E8();
  if (!v17 || v6 != v34)
  {
    sub_1C43FF090(v18, v19, v20);
    sub_1C44016DC();

    if (v0)
    {
      goto LABEL_19;
    }

    goto LABEL_34;
  }

LABEL_19:
  sub_1C4407764(v4[8]);
  v24 = v17 && v22 == v23;
  if (!v24 && (sub_1C4F02938() & 1) == 0)
  {
    goto LABEL_34;
  }

  sub_1C4417620();
  if (!v17)
  {
    goto LABEL_34;
  }

  sub_1C4412280(v4[10]);
  if (!v17)
  {
    goto LABEL_34;
  }

  sub_1C4407764(v4[11]);
  v27 = v17 && v25 == v26;
  if (!v27 && (sub_1C4F02938() & 1) == 0)
  {
    goto LABEL_34;
  }

  sub_1C4412280(v4[12]);
  if (!v17)
  {
    goto LABEL_34;
  }

  sub_1C43FC73C();
  sub_1C4402444();
  sub_1C443FEC4();
  if ((v32 & 1) == 0)
  {
    sub_1C484ADC8();
    v31 = v34[0];
  }

  v33 = sub_1C4433678(*(v31 + 48));
  sub_1C4418B4C(v33, type metadata accessor for ConstructionEventTriple, type metadata accessor for ConstructionEventTriple, type metadata accessor for ConstructionEventTriple);
  v29 = sub_1C4408ECC();
LABEL_36:
  sub_1C440BAA8(v29, v30, 1, v4);
  sub_1C43FE9F0();
}

void sub_1C4A7F458()
{
  sub_1C43FBD3C();
  v3 = sub_1C441CCA8(v2);
  v4 = type metadata accessor for ConstructionGraphTriple(v3);
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C440B054();
  v8 = sub_1C4410508();
  ConstructionGraphTriple.hash(into:)(v8);
  sub_1C4F02B68();
  sub_1C442D0E4();
  if ((v10 & 1) == 0)
  {
LABEL_35:
    v29 = sub_1C4416304();
    goto LABEL_36;
  }

  sub_1C440F9E4(v9);
  while (1)
  {
    sub_1C440E64C();
    v12 = sub_1C442BDFC(v11);
    sub_1C4471A3C(v12, v1);
    if (sub_1C445E938())
    {
      sub_1C447F244();
      sub_1C441A188();
      sub_1C44D7248(&off_1EDDFCCA8, v13, MEMORY[0x1E69A9770]);
      sub_1C4403598();
      sub_1C43FDC64();
      v14 = sub_1C44135E8();
      v17 = v17 && v6 == v34;
      if (v17)
      {
      }

      else
      {
        sub_1C43FF090(v14, v15, v16);
        sub_1C44016DC();

        if ((v0 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      if (sub_1C44045F0())
      {
        break;
      }
    }

LABEL_34:
    sub_1C4430004();
    sub_1C442000C();
    if ((v28 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  v6 = v4[7];
  sub_1C4403598();
  sub_1C43FDC64();
  v18 = sub_1C44135E8();
  if (!v17 || v6 != v34)
  {
    sub_1C43FF090(v18, v19, v20);
    sub_1C44016DC();

    if (v0)
    {
      goto LABEL_19;
    }

    goto LABEL_34;
  }

LABEL_19:
  sub_1C4407764(v4[8]);
  v24 = v17 && v22 == v23;
  if (!v24 && (sub_1C4F02938() & 1) == 0)
  {
    goto LABEL_34;
  }

  sub_1C4417620();
  if (!v17)
  {
    goto LABEL_34;
  }

  sub_1C4412280(v4[10]);
  if (!v17)
  {
    goto LABEL_34;
  }

  sub_1C4407764(v4[11]);
  v27 = v17 && v25 == v26;
  if (!v27 && (sub_1C4F02938() & 1) == 0)
  {
    goto LABEL_34;
  }

  sub_1C4412280(v4[12]);
  if (!v17)
  {
    goto LABEL_34;
  }

  sub_1C4430004();
  sub_1C4402444();
  sub_1C443FEC4();
  if ((v32 & 1) == 0)
  {
    sub_1C484AEF0();
    v31 = v34[0];
  }

  v33 = sub_1C4433678(*(v31 + 48));
  sub_1C4418B4C(v33, type metadata accessor for ConstructionGraphTriple, type metadata accessor for ConstructionGraphTriple, type metadata accessor for ConstructionGraphTriple);
  v29 = sub_1C4408ECC();
LABEL_36:
  sub_1C440BAA8(v29, v30, 1, v4);
  sub_1C43FE9F0();
}

uint64_t sub_1C4A7F6D4(uint64_t a1, uint64_t a2)
{

  v3 = sub_1C4F02128();
  v4 = swift_unknownObjectRetain();
  sub_1C483DC4C(v4, v3, v5, v6, v7, v8, v9, v10, v18, v19, a2, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, vars0, vars8);
  v12 = v11;
  v20 = v11;
  sub_1C4F00BC8();
  sub_1C44D7248(&qword_1EC0BDF28, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);

  v13 = sub_1C4F00FD8();
  v14 = ~(-1 << *(v12 + 32));
  while (1)
  {
    v15 = v13 & v14;
    if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
    {
      break;
    }

    sub_1C44D7248(&qword_1EC0C24C8, MEMORY[0x1E695BF10], MEMORY[0x1E695BF20]);
    if (sub_1C4F010B8())
    {

      v16 = *(*(v20 + 48) + 8 * v15);
      sub_1C4A80130(v15);
      if (sub_1C4F010B8())
      {
        *v2 = v20;
        return v16;
      }

      __break(1u);
      break;
    }

    v13 = v15 + 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_1C4A7F8A8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1C4F020E8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1C4F02AF8();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4F01298();
        v10 = sub_1C4F02B68();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 16 * v2);
            v16 = (v14 + 16 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

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

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1C4A7FA60(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1C4F020E8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1C4F02AF8();
        sub_1C4F01298();

        v10 = sub_1C4F02B68() & v7;
        if (v2 >= v9)
        {
          if (v10 >= v9 && v2 >= v10)
          {
LABEL_15:
            v13 = *(v3 + 48);
            v14 = (v13 + v2);
            v15 = (v13 + v6);
            if (v2 != v6 || v14 >= v15 + 1)
            {
              *v14 = *v15;
              v2 = v6;
            }
          }
        }

        else if (v10 >= v9 || v2 >= v10)
        {
          goto LABEL_15;
        }

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

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

void sub_1C4A7FD18()
{
  sub_1C43FBD3C();
  v46 = v1;
  v47 = v2;
  v45 = v3;
  v5 = v4;
  v7 = v6(0);
  sub_1C43FCDF8();
  v9 = v8;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - v11;
  v13 = *v0;
  v14 = *v0 + 56;
  sub_1C4409F88();
  v17 = (v5 + 1) & ~v16;
  if (((1 << v17) & *(v14 + 8 * (v17 >> 6))) != 0)
  {
    v18 = ~v16;

    v19 = sub_1C4F020E8();
    if ((*(v14 + 8 * (v17 >> 6)) & (1 << v17)) != 0)
    {
      v43 = (v19 + 1) & v18;
      v42 = *(v9 + 16);
      v48 = *(v9 + 72);
      v44 = v9 + 16;
      v20 = (v9 + 8);
      v21 = v13;
      v22 = v18;
      while (1)
      {
        v23 = v14;
        v24 = v48 * v17;
        v25 = v22;
        v42(v12, *(v21 + 48) + v48 * v17, v7);
        v26 = v21;
        sub_1C44D7248(v45, v46, v47);
        v27 = sub_1C4F00FD8();
        (*v20)(v12, v7);
        v22 = v25;
        v28 = v27 & v25;
        if (v5 >= v43)
        {
          if (v28 < v43 || v5 < v28)
          {
LABEL_20:
            v21 = v26;
            goto LABEL_24;
          }
        }

        else if (v28 < v43 && v5 < v28)
        {
          goto LABEL_20;
        }

        v21 = v26;
        v30 = *(v26 + 48);
        v31 = v48 * v5;
        v32 = v30 + v48 * v5;
        v33 = v30 + v24 + v48;
        if (v48 * v5 < v24 || v32 >= v33)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_23:
          v22 = v25;
          v5 = v17;
          goto LABEL_24;
        }

        v5 = v17;
        if (v31 != v24)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v17 = (v17 + 1) & v22;
        v14 = v23;
        if (((*(v23 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v21 = v13;
LABEL_28:
    sub_1C4425350();
    *(v14 + v36) &= v37 - 1;
  }

  else
  {
    *(v14 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (v15 << v5) - 1;
    v21 = v13;
  }

  v38 = *(v21 + 16);
  v39 = __OFSUB__(v38, 1);
  v40 = v38 - 1;
  if (v39)
  {
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v40;
    ++*(v21 + 36);
    sub_1C43FE9F0();
  }
}

void sub_1C4A7FFD8(int64_t a1)
{
  v3 = *v1;
  v4 = *v1 + 56;
  sub_1C4409F88();
  v8 = (v7 + 1) & ~v6;
  if (((1 << v8) & *(v4 + 8 * (v8 >> 6))) != 0)
  {
    v9 = ~v6;

    v10 = sub_1C4F020E8();
    if ((*(v4 + 8 * (v8 >> 6)) & (1 << v8)) != 0)
    {
      v11 = (v10 + 1) & v9;
      do
      {
        v12 = *(v3 + 48);
        v13 = (v12 + 8 * v8);
        v14 = sub_1C4F02AE8() & v9;
        if (a1 >= v11)
        {
          if (v14 >= v11 && a1 >= v14)
          {
LABEL_15:
            v17 = (v12 + 8 * a1);
            if (a1 != v8 || v17 >= v13 + 1)
            {
              *v17 = *v13;
              a1 = v8;
            }
          }
        }

        else if (v14 >= v11 || a1 >= v14)
        {
          goto LABEL_15;
        }

        v8 = (v8 + 1) & v9;
        sub_1C444FEE4();
      }

      while ((v19 & 1) != 0);
    }

    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (v5 << a1) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    sub_1C4426CE8(v22);
  }
}

unint64_t sub_1C4A80130(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1C4F020E8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      sub_1C4F00BC8();
      sub_1C44D7248(&qword_1EC0BDF28, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);
      do
      {
        v10 = sub_1C4F00FD8() & v7;
        if (v2 >= v9)
        {
          if (v10 >= v9 && v2 >= v10)
          {
LABEL_15:
            v13 = *(v3 + 48);
            v14 = (v13 + 8 * v2);
            v15 = (v13 + 8 * v6);
            if (v2 != v6 || v14 >= v15 + 1)
            {
              *v14 = *v15;
              v2 = v6;
            }
          }
        }

        else if (v10 >= v9 || v2 >= v10)
        {
          goto LABEL_15;
        }

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

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

void sub_1C4A80310(int64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(void))
{
  v40 = a3;
  v41 = a4;
  v6 = a2(0);
  sub_1C43FCDF8();
  v8 = v7;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36 - v10;
  v12 = *v4;
  v13 = *v4 + 56;
  sub_1C4409F88();
  v16 = (a1 + 1) & ~v15;
  if (((1 << v16) & *(v13 + 8 * (v16 >> 6))) != 0)
  {
    v17 = ~v15;

    v18 = sub_1C4F020E8();
    if ((*(v13 + 8 * (v16 >> 6)) & (1 << v16)) != 0)
    {
      v37 = (v18 + 1) & v17;
      v38 = v12;
      v42 = *(v8 + 72);
      v19 = v17;
      v39 = v13;
      do
      {
        v20 = v42 * v16;
        sub_1C4471A3C(*(v12 + 48) + v42 * v16, v11);
        sub_1C4F02AF8();
        sub_1C4EFF0C8();
        sub_1C44D7248(&qword_1EDDFE820, MEMORY[0x1E69A9810], MEMORY[0x1E69A9820]);
        sub_1C4F00FE8();
        sub_1C4EFEEF8();
        sub_1C441A188();
        sub_1C44D7248(&qword_1EDDFCCB8, v21, MEMORY[0x1E69A9758]);
        sub_1C4F00FE8();
        sub_1C4EFF8A8();
        sub_1C44D7248(&qword_1EDDFE808, MEMORY[0x1E69A99E8], MEMORY[0x1E69A99F8]);
        sub_1C4F00FE8();
        sub_1C4F00FE8();
        sub_1C4F01298();
        MEMORY[0x1C6941830](*&v11[*(v6 + 36)]);
        sub_1C440C544();
        sub_1C4F01298();
        sub_1C440C544();
        v22 = sub_1C4F02B68();
        sub_1C4485564(v11, v41);
        v23 = v22 & v19;
        if (a1 >= v37)
        {
          if (v23 < v37 || a1 < v23)
          {
LABEL_20:
            v12 = v38;
            v13 = v39;
            goto LABEL_24;
          }
        }

        else if (v23 < v37 && a1 < v23)
        {
          goto LABEL_20;
        }

        v12 = v38;
        v13 = v39;
        v25 = *(v38 + 48);
        v26 = v42 * a1;
        v27 = v25 + v42 * a1;
        v28 = v25 + v20 + v42;
        if (v42 * a1 < v20 || v27 >= v28)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_23:
          a1 = v16;
          goto LABEL_24;
        }

        a1 = v16;
        if (v26 != v20)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v16 = (v16 + 1) & v19;
      }

      while (((*(v13 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0);
    }

    sub_1C4425350();
    *(v13 + v31) &= v32 - 1;
  }

  else
  {
    *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (v14 << a1) - 1;
  }

  v33 = *(v12 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    sub_1C4426CE8(v35);
  }
}

uint64_t sub_1C4A806CC(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;
    result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_1C4A7E190(*(*(v2 + 48) + (v10 | (v9 << 6))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_1C4A807FC(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;
    result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_1C4A7EA34(*(*(v2 + 48) + ((v9 << 9) | (8 * v10))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_1C4A808F4(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;
    result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4A7E078(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

char *sub_1C4A80A20(unint64_t a1, char *a2)
{
  v92 = *MEMORY[0x1E69E9840];
  v4 = sub_1C456902C(&qword_1EC0C24B8, &qword_1C4F4A8A8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v65 - v8;
  v10 = sub_1C4EFDAF8();
  MEMORY[0x1EEE9AC00](v10);
  v84 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v65 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v81 = &v65 - v17;
  if (!*(a2 + 2))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v71 = v6;
  v66 = 0;
  v19 = a1 + 56;
  v18 = *(a1 + 56);
  v20 = -1 << *(a1 + 32);
  v75 = ~v20;
  if (-v20 < 64)
  {
    v21 = ~(-1 << -v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & v18;
  v72 = (63 - v20) >> 6;
  v74 = (v16 + 32);
  v82 = a2 + 56;
  v79 = v16;
  v85 = v16 + 16;
  v86 = (v16 + 8);
  v76 = a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v23 = 0;
  v73 = a1 + 56;
  v68 = v9;
LABEL_6:
  v24 = v22;
  v25 = v23;
  v83 = v23;
  if (v22)
  {
LABEL_12:
    a1 = (v24 - 1) & v24;
    v28 = v76;
    (*(v79 + 16))(v9, *(v76 + 48) + *(v79 + 72) * (__clz(__rbit64(v24)) | (v25 << 6)), v10);
    v29 = 0;
    v26 = v9;
    v27 = v25;
LABEL_13:
    sub_1C440BAA8(v26, v29, 1, v10);
    v87 = v28;
    v88 = v19;
    v89 = v75;
    v90 = v27;
    v91 = a1;
    if (sub_1C44157D4(v26, 1, v10) == 1)
    {
      goto LABEL_46;
    }

    v70 = *v74;
    v70(v81, v26, v10);
    v69 = sub_1C44D7248(&qword_1EDDEFFA8, MEMORY[0x1E69A94B0], MEMORY[0x1E69A94B8]);
    v30 = sub_1C4F00FD8();
    v80 = ~(-1 << a2[32]);
    while (1)
    {
      v19 = v30 & v80;
      if (((1 << (v30 & v80)) & v82[(v30 & v80) >> 6]) == 0)
      {
        (*v86)(v81, v10);
        v23 = v27;
        v22 = a1;
        v19 = v73;
        v9 = v68;
        goto LABEL_6;
      }

      v77 = 1 << v19;
      v78 = v19 >> 6;
      v25 = a2;
      v31 = *(a2 + 6);
      v32 = v79;
      v83 = *(v79 + 72);
      v33 = *(v79 + 16);
      v33(v14, v31 + v83 * v19, v10);
      v34 = sub_1C44D7248(&qword_1EC0B85A8, MEMORY[0x1E69A94B0], MEMORY[0x1E69A94C0]);
      v35 = sub_1C4F010B8();
      a2 = *(v32 + 8);
      (a2)(v14, v10);
      if (v35)
      {
        break;
      }

      v30 = v19 + 1;
      a2 = v25;
    }

    v79 = v33;
    v80 = v34;
    v36 = (a2)(v81, v10);
    v37 = *(v25 + 32);
    v67 = ((1 << v37) + 63) >> 6;
    v22 = 8 * v67;
    if ((v37 & 0x3Fu) <= 0xD)
    {
LABEL_21:
      v81 = a2;
      v68 = &v65;
      MEMORY[0x1EEE9AC00](v36);
      v38 = &v65 - ((v22 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v38, v82, v22);
      v39 = *&v38[8 * v78] & ~v77;
      v40 = *(v25 + 16);
      v77 = v38;
      *&v38[8 * v78] = v39;
      v41 = v40 - 1;
      v26 = v71;
      v42 = v73;
      v43 = v72;
      v44 = v76;
      a2 = v25;
      v45 = v79;
      while (1)
      {
        v78 = v41;
LABEL_23:
        if (!a1)
        {
          break;
        }

        v46 = v27;
LABEL_29:
        v47 = __clz(__rbit64(a1));
        v48 = (a1 - 1) & a1;
        v45(v26, *(v44 + 48) + (v47 | (v46 << 6)) * v83, v10);
        v49 = 0;
LABEL_30:
        sub_1C440BAA8(v26, v49, 1, v10);
        v87 = v44;
        v88 = v42;
        v89 = v75;
        v90 = v27;
        v91 = v48;
        if (sub_1C44157D4(v26, 1, v10) == 1)
        {
          sub_1C4420C3C(v26, &qword_1EC0C24B8, &qword_1C4F4A8A8);
          sub_1C4A8DAC0();
          a2 = v60;
          goto LABEL_42;
        }

        v79 = v48;
        v50 = v45;
        v70(v84, v26, v10);
        v51 = sub_1C4F00FD8();
        v52 = a2;
        v53 = ~(-1 << a2[32]);
        do
        {
          v54 = v51 & v53;
          v55 = (v51 & v53) >> 6;
          v56 = 1 << (v51 & v53);
          if ((v56 & v82[v55]) == 0)
          {
            (v81)(v84, v10);
            a2 = v52;
            v44 = v76;
            v26 = v71;
            v42 = v73;
            v43 = v72;
            v45 = v50;
            a1 = v79;
            goto LABEL_23;
          }

          v50(v14, *(v52 + 48) + v54 * v83, v10);
          v57 = sub_1C4F010B8();
          (v81)(v14, v10);
          v51 = v54 + 1;
        }

        while ((v57 & 1) == 0);
        (v81)(v84, v10);
        v58 = *(v77 + 8 * v55);
        *(v77 + 8 * v55) = v58 & ~v56;
        v59 = (v58 & v56) == 0;
        a2 = v52;
        v44 = v76;
        v26 = v71;
        v42 = v73;
        v43 = v72;
        v45 = v50;
        a1 = v79;
        if (v59)
        {
          goto LABEL_23;
        }

        v41 = v78 - 1;
        if (__OFSUB__(v78, 1))
        {
          __break(1u);
        }

        if (v78 == 1)
        {

          a2 = MEMORY[0x1E69E7CD0];
          goto LABEL_42;
        }
      }

      while (1)
      {
        v46 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (v46 >= v43)
        {
          v48 = 0;
          v49 = 1;
          goto LABEL_30;
        }

        a1 = *(v42 + 8 * v46);
        ++v27;
        if (a1)
        {
          v27 = v46;
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_46:
      sub_1C4420C3C(v26, &qword_1EC0C24B8, &qword_1C4F4A8A8);
LABEL_42:
      sub_1C449BB0C();
      return a2;
    }
  }

  else
  {
    v26 = v9;
    v27 = v23;
    while (1)
    {
      v25 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v25 >= v72)
      {
        a1 = 0;
        v29 = 1;
        v28 = v76;
        goto LABEL_13;
      }

      v24 = *(v19 + 8 * v25);
      ++v27;
      if (v24)
      {
        v9 = v26;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_21;
  }

  v62 = swift_slowAlloc();
  v63 = v66;
  v64 = sub_1C4A84D34(v62, v67, v82, v67, v25, v19, &v87);
  if (!v63)
  {
    a2 = v64;

    MEMORY[0x1C6942830](v62, -1, -1);
    goto LABEL_42;
  }

  result = MEMORY[0x1C6942830](v62, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1C4A81334(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v71 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v7 = a1;
    v51 = 0;
    v8 = *(a1 + 56);
    v59 = a1 + 56;
    v9 = -1 << *(a1 + 32);
    v56 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v8;
    v57 = (63 - v9) >> 6;
    v61 = 0x80000001C4F85600;
    v62 = 0x80000001C4F86760;
    v60 = 0x80000001C4F86740;
    v64 = (a2 + 56);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v12 = 0;
    do
    {
LABEL_6:
      if (!v11)
      {
        v13 = v12;
        while (1)
        {
          v14 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            goto LABEL_80;
          }

          if (v14 >= v57)
          {
            goto LABEL_77;
          }

          v11 = *(v59 + 8 * v14);
          ++v13;
          if (v11)
          {
            v12 = v14;
            break;
          }
        }
      }

      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v3 = *(*(v7 + 48) + (v15 | (v12 << 6)));
      sub_1C4F02AF8();
      sub_1C4F01298();

      v16 = sub_1C4F02B68();
      v17 = -1 << *(v6 + 32);
      v2 = v16 & ~v17;
      v4 = v2 >> 6;
      v5 = 1 << v2;
    }

    while (((1 << v2) & v64[v2 >> 6]) == 0);
    v58 = v7;
    v18 = ~v17;
    v3 = v3;
    v63 = v6;
    while (1)
    {
      v19 = 0xE800000000000000;
      v20 = 0x4449656C646E7562;
      switch(*(*(v6 + 48) + v2))
      {
        case 1:
          v20 = 0xD000000000000011;
          v19 = v60;
          break;
        case 2:
          v20 = 0x456E6F6973736573;
          v19 = 0xEC000000746E6576;
          break;
        case 3:
          v20 = 0xD000000000000016;
          v19 = v61;
          break;
        case 4:
          v20 = 0xD000000000000016;
          v19 = v62;
          break;
        case 5:
          v20 = 0x7463617265746E69;
          v19 = 0xEF657079546E6F69;
          break;
        case 6:
          v20 = 0x646576726573626FLL;
          v19 = 0xEB00000000656741;
          break;
        default:
          break;
      }

      v21 = 0xE800000000000000;
      v22 = 0x4449656C646E7562;
      switch(v3)
      {
        case 1:
          v22 = 0xD000000000000011;
          v21 = v60;
          break;
        case 2:
          v22 = 0x456E6F6973736573;
          v21 = 0xEC000000746E6576;
          break;
        case 3:
          v22 = 0xD000000000000016;
          v21 = v61;
          break;
        case 4:
          v22 = 0xD000000000000016;
          v21 = v62;
          break;
        case 5:
          v22 = 0x7463617265746E69;
          v21 = 0xEF657079546E6F69;
          break;
        case 6:
          v22 = 0x646576726573626FLL;
          v21 = 0xEB00000000656741;
          break;
        default:
          break;
      }

      if (v20 == v22 && v19 == v21)
      {
        v68 = v56;
        v69 = v12;
        v70 = v11;
        v7 = v58;
        v66 = v58;
        v67 = v59;

        goto LABEL_39;
      }

      v24 = sub_1C4F02938();

      if (v24)
      {
        break;
      }

      v2 = (v2 + 1) & v18;
      v4 = v2 >> 6;
      v6 = v63;
      v5 = 1 << v2;
      if ((v64[v2 >> 6] & (1 << v2)) == 0)
      {
        v7 = v58;
        goto LABEL_6;
      }
    }

    v68 = v56;
    v69 = v12;
    v70 = v11;
    v7 = v58;
    v66 = v58;
    v67 = v59;
LABEL_39:
    v6 = v63;
    v26 = *(v63 + 32);
    v52 = ((1 << v26) + 63) >> 6;
    v3 = 8 * v52;
    if ((v26 & 0x3Fu) > 0xD)
    {
      goto LABEL_81;
    }

    while (1)
    {
      v53 = &v50;
      MEMORY[0x1EEE9AC00](v25);
      v2 = &v50 - ((v3 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v2, v64, v3);
      v27 = *(v2 + 8 * v4) & ~v5;
      v28 = *(v6 + 16);
      v55 = v2;
      *(v2 + 8 * v4) = v27;
      v29 = v28 - 1;
LABEL_41:
      v54 = v29;
LABEL_42:
      while (v11)
      {
LABEL_48:
        v31 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v32 = *(*(v7 + 48) + (v31 | (v12 << 6)));
        sub_1C4F02AF8();
        sub_1C4F01298();

        v2 = v65;
        v33 = sub_1C4F02B68();
        v34 = -1 << *(v6 + 32);
        v35 = v33 & ~v34;
        v4 = v35 >> 6;
        v5 = 1 << v35;
        if (((1 << v35) & v64[v35 >> 6]) != 0)
        {
          v36 = ~v34;
          v2 = v32;
          while (1)
          {
            v37 = 0xE800000000000000;
            v38 = 0x4449656C646E7562;
            switch(*(*(v6 + 48) + v35))
            {
              case 1:
                v38 = 0xD000000000000011;
                v37 = v60;
                break;
              case 2:
                v38 = 0x456E6F6973736573;
                v37 = 0xEC000000746E6576;
                break;
              case 3:
                v38 = 0xD000000000000016;
                v37 = v61;
                break;
              case 4:
                v38 = 0xD000000000000016;
                v37 = v62;
                break;
              case 5:
                v38 = 0x7463617265746E69;
                v37 = 0xEF657079546E6F69;
                break;
              case 6:
                v38 = 0x646576726573626FLL;
                v37 = 0xEB00000000656741;
                break;
              default:
                break;
            }

            v39 = 0xE800000000000000;
            v40 = 0x4449656C646E7562;
            switch(v2)
            {
              case 1uLL:
                v40 = 0xD000000000000011;
                v39 = v60;
                break;
              case 2uLL:
                v40 = 0x456E6F6973736573;
                v39 = 0xEC000000746E6576;
                break;
              case 3uLL:
                v40 = 0xD000000000000016;
                v39 = v61;
                break;
              case 4uLL:
                v40 = 0xD000000000000016;
                v39 = v62;
                break;
              case 5uLL:
                v40 = 0x7463617265746E69;
                v39 = 0xEF657079546E6F69;
                break;
              case 6uLL:
                v40 = 0x646576726573626FLL;
                v39 = 0xEB00000000656741;
                break;
              default:
                break;
            }

            if (v38 == v40 && v37 == v39)
            {
              break;
            }

            v42 = sub_1C4F02938();

            if (v42)
            {
              goto LABEL_72;
            }

            v35 = (v35 + 1) & v36;
            v4 = v35 >> 6;
            v6 = v63;
            v5 = 1 << v35;
            if ((v64[v35 >> 6] & (1 << v35)) == 0)
            {
              v7 = v58;
              goto LABEL_42;
            }
          }

LABEL_72:
          v43 = *(v55 + 8 * v4);
          *(v55 + 8 * v4) = v43 & ~v5;
          v6 = v63;
          v7 = v58;
          if ((v43 & v5) != 0)
          {
            v29 = v54 - 1;
            if (__OFSUB__(v54, 1))
            {
              __break(1u);
            }

            if (v54 == 1)
            {

              v6 = MEMORY[0x1E69E7CD0];
              goto LABEL_77;
            }

            goto LABEL_41;
          }
        }
      }

      v3 = v59;
      while (1)
      {
        v30 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v30 >= v57)
        {
          sub_1C4A8DCA8(v55, v52, v54, v6);
          v6 = v44;
          goto LABEL_77;
        }

        v11 = *(v59 + 8 * v30);
        ++v12;
        if (v11)
        {
          v12 = v30;
          goto LABEL_48;
        }
      }

      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:

      if (!swift_stdlib_isStackAllocationSafe())
      {
        break;
      }
    }

    v46 = swift_slowAlloc();
    v47 = v51;
    v48 = sub_1C4A84DBC(v46, v52, v64, v52, v6, v2, &v66);
    if (!v47)
    {
      v49 = v48;

      MEMORY[0x1C6942830](v46, -1, -1);
      v56 = v68;
      v6 = v49;
LABEL_77:
      sub_1C449BB0C();
      return v6;
    }

    result = MEMORY[0x1C6942830](v46, -1, -1);
    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

void sub_1C4A81DF0()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  v94 = *MEMORY[0x1E69E9840];
  v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v70 - v8;
  v10 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v11);
  v89 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v70 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v86 = &v70 - v18;
  if (!*(v1 + 2))
  {

    goto LABEL_43;
  }

  v76 = v6;
  v71 = 0;
  v20 = v3 + 56;
  v19 = *(v3 + 56);
  v21 = -1 << *(v3 + 32);
  v80 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v23 = v22 & v19;
  v77 = (63 - v21) >> 6;
  v79 = (v17 + 32);
  v87 = (v1 + 56);
  v84 = v17;
  v90 = v17 + 16;
  v91 = (v17 + 8);
  v81 = v3;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v24 = 0;
  v78 = v3 + 56;
  v73 = v9;
LABEL_6:
  v25 = v23;
  v26 = v24;
  v88 = v24;
  if (v23)
  {
LABEL_12:
    v3 = (v25 - 1) & v25;
    v29 = v81;
    v84[2](v9, *(v81 + 48) + v84[9] * (__clz(__rbit64(v25)) | (v26 << 6)), v10);
    v30 = 0;
    v27 = v9;
    v28 = v26;
LABEL_13:
    sub_1C440BAA8(v27, v30, 1, v10);
    v92 = v29;
    v93 = v20;
    sub_1C440BE90();
    if (v31)
    {
      goto LABEL_45;
    }

    v75 = *v79;
    v75(v86, v27, v10);
    sub_1C441A188();
    v74 = sub_1C44D7248(&qword_1EDDFCCB8, v32, MEMORY[0x1E69A9758]);
    sub_1C4F00FD8();
    sub_1C43FC41C();
    v85 = ~v34;
    while (1)
    {
      v20 = v33 & v85;
      if (((1 << (v33 & v85)) & v87[(v33 & v85) >> 6]) == 0)
      {
        (*v91)(v86, v10);
        v24 = v28;
        v23 = v3;
        v20 = v78;
        v9 = v73;
        goto LABEL_6;
      }

      v82 = 1 << v20;
      v83 = v20 >> 6;
      v26 = v1;
      v35 = *(v1 + 6);
      v36 = v84;
      v88 = v84[9];
      v37 = v84[2];
      (v37)(v15, v35 + v88 * v20, v10);
      sub_1C441A188();
      v39 = sub_1C44D7248(&qword_1EDDFCCB0, v38, MEMORY[0x1E69A9768]);
      v40 = sub_1C4F010B8();
      v1 = v36[1];
      (v1)(v15, v10);
      if (v40)
      {
        break;
      }

      v33 = v20 + 1;
      v1 = v26;
    }

    v84 = v37;
    v85 = v39;
    v41 = (v1)(v86, v10);
    v42 = *(v26 + 32);
    v72 = ((1 << v42) + 63) >> 6;
    v23 = 8 * v72;
    if ((v42 & 0x3Fu) <= 0xD)
    {
LABEL_21:
      v86 = v1;
      v73 = &v70;
      MEMORY[0x1EEE9AC00](v41);
      v43 = &v70 - ((v23 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v43, v87, v23);
      v44 = *&v43[8 * v83] & ~v82;
      v45 = *(v26 + 16);
      v82 = v43;
      *&v43[8 * v83] = v44;
      v46 = v45 - 1;
      v27 = v76;
      v47 = v78;
      v48 = v77;
      v49 = v81;
      v50 = v26;
      v51 = v84;
      while (1)
      {
        v83 = v46;
LABEL_23:
        if (!v3)
        {
          break;
        }

LABEL_28:
        sub_1C441BBA8();
        (v51)(v27, *(v49 + 48) + v53 * v88, v10);
        v54 = 0;
LABEL_29:
        sub_1C440BAA8(v27, v54, 1, v10);
        v92 = v49;
        v93 = v47;
        sub_1C440BE90();
        if (v31)
        {
          sub_1C4420C3C(v27, &qword_1EC0B9A08, &unk_1C4F107B0);
          sub_1C4A8E0F4();
          goto LABEL_41;
        }

        v84 = v3;
        v55 = v51;
        v75(v89, v27, v10);
        sub_1C4F00FD8();
        v56 = v50;
        sub_1C43FC41C();
        v59 = ~v58;
        do
        {
          v60 = v57 & v59;
          v61 = (v57 & v59) >> 6;
          v62 = 1 << (v57 & v59);
          if ((v62 & v87[v61]) == 0)
          {
            sub_1C4414E00();
            v67();
            v50 = v56;
            v49 = v81;
            v27 = v76;
            v47 = v78;
            v48 = v77;
            v51 = v55;
            v3 = v84;
            goto LABEL_23;
          }

          (v55)(v15, *(v56 + 48) + v60 * v88, v10);
          v63 = sub_1C4F010B8();
          sub_1C4414E00();
          v64();
          v57 = v60 + 1;
        }

        while ((v63 & 1) == 0);
        sub_1C4414E00();
        v65();
        v66 = *(v82 + 8 * v61);
        *(v82 + 8 * v61) = v66 & ~v62;
        v31 = (v66 & v62) == 0;
        v50 = v56;
        v49 = v81;
        v27 = v76;
        v47 = v78;
        v48 = v77;
        v51 = v55;
        v3 = v84;
        if (v31)
        {
          goto LABEL_23;
        }

        v46 = v83 - 1;
        if (__OFSUB__(v83, 1))
        {
          __break(1u);
        }

        if (v83 == 1)
        {

          goto LABEL_41;
        }
      }

      while (1)
      {
        v52 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        if (v52 >= v48)
        {
          v3 = 0;
          v54 = 1;
          goto LABEL_29;
        }

        v3 = *(v47 + 8 * v52);
        ++v28;
        if (v3)
        {
          v28 = v52;
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_45:
      sub_1C4420C3C(v27, &qword_1EC0B9A08, &unk_1C4F107B0);
LABEL_41:
      sub_1C449BB0C();
LABEL_43:
      sub_1C43FE9F0();
      return;
    }
  }

  else
  {
    v27 = v9;
    v28 = v24;
    while (1)
    {
      v26 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v26 >= v77)
      {
        v3 = 0;
        v30 = 1;
        v29 = v81;
        goto LABEL_13;
      }

      v25 = *(v20 + 8 * v26);
      ++v28;
      if (v25)
      {
        v9 = v27;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_21;
  }

  v68 = swift_slowAlloc();
  v69 = v71;
  sub_1C4A84E44(v68, v72, v87, v72, v26, v20, &v92);
  if (!v69)
  {

    MEMORY[0x1C6942830](v68, -1, -1);
    goto LABEL_41;
  }

  MEMORY[0x1C6942830](v68, -1, -1);
  __break(1u);
}

char *sub_1C4A82660(unint64_t a1, char *a2)
{
  v92 = *MEMORY[0x1E69E9840];
  v4 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v65 - v8;
  v10 = sub_1C4EFF0C8();
  MEMORY[0x1EEE9AC00](v10);
  v84 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v65 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v81 = &v65 - v17;
  if (!*(a2 + 2))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v71 = v6;
  v66 = 0;
  v19 = a1 + 56;
  v18 = *(a1 + 56);
  v20 = -1 << *(a1 + 32);
  v75 = ~v20;
  if (-v20 < 64)
  {
    v21 = ~(-1 << -v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & v18;
  v72 = (63 - v20) >> 6;
  v74 = (v16 + 32);
  v82 = a2 + 56;
  v79 = v16;
  v85 = v16 + 16;
  v86 = (v16 + 8);
  v76 = a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v23 = 0;
  v73 = a1 + 56;
  v68 = v9;
LABEL_6:
  v24 = v22;
  v25 = v23;
  v83 = v23;
  if (v22)
  {
LABEL_12:
    a1 = (v24 - 1) & v24;
    v28 = v76;
    (*(v79 + 16))(v9, *(v76 + 48) + *(v79 + 72) * (__clz(__rbit64(v24)) | (v25 << 6)), v10);
    v29 = 0;
    v26 = v9;
    v27 = v25;
LABEL_13:
    sub_1C440BAA8(v26, v29, 1, v10);
    v87 = v28;
    v88 = v19;
    v89 = v75;
    v90 = v27;
    v91 = a1;
    if (sub_1C44157D4(v26, 1, v10) == 1)
    {
      goto LABEL_46;
    }

    v70 = *v74;
    v70(v81, v26, v10);
    v69 = sub_1C44D7248(&qword_1EDDFE820, MEMORY[0x1E69A9810], MEMORY[0x1E69A9820]);
    v30 = sub_1C4F00FD8();
    v80 = ~(-1 << a2[32]);
    while (1)
    {
      v19 = v30 & v80;
      if (((1 << (v30 & v80)) & v82[(v30 & v80) >> 6]) == 0)
      {
        (*v86)(v81, v10);
        v23 = v27;
        v22 = a1;
        v19 = v73;
        v9 = v68;
        goto LABEL_6;
      }

      v77 = 1 << v19;
      v78 = v19 >> 6;
      v25 = a2;
      v31 = *(a2 + 6);
      v32 = v79;
      v83 = *(v79 + 72);
      v33 = *(v79 + 16);
      v33(v14, v31 + v83 * v19, v10);
      v34 = sub_1C44D7248(&qword_1EDDFCC98, MEMORY[0x1E69A9810], MEMORY[0x1E69A9830]);
      v35 = sub_1C4F010B8();
      a2 = *(v32 + 8);
      (a2)(v14, v10);
      if (v35)
      {
        break;
      }

      v30 = v19 + 1;
      a2 = v25;
    }

    v79 = v33;
    v80 = v34;
    v36 = (a2)(v81, v10);
    v37 = *(v25 + 32);
    v67 = ((1 << v37) + 63) >> 6;
    v22 = 8 * v67;
    if ((v37 & 0x3Fu) <= 0xD)
    {
LABEL_21:
      v81 = a2;
      v68 = &v65;
      MEMORY[0x1EEE9AC00](v36);
      v38 = &v65 - ((v22 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v38, v82, v22);
      v39 = *&v38[8 * v78] & ~v77;
      v40 = *(v25 + 16);
      v77 = v38;
      *&v38[8 * v78] = v39;
      v41 = v40 - 1;
      v26 = v71;
      v42 = v73;
      v43 = v72;
      v44 = v76;
      a2 = v25;
      v45 = v79;
      while (1)
      {
        v78 = v41;
LABEL_23:
        if (!a1)
        {
          break;
        }

        v46 = v27;
LABEL_29:
        v47 = __clz(__rbit64(a1));
        v48 = (a1 - 1) & a1;
        v45(v26, *(v44 + 48) + (v47 | (v46 << 6)) * v83, v10);
        v49 = 0;
LABEL_30:
        sub_1C440BAA8(v26, v49, 1, v10);
        v87 = v44;
        v88 = v42;
        v89 = v75;
        v90 = v27;
        v91 = v48;
        if (sub_1C44157D4(v26, 1, v10) == 1)
        {
          sub_1C4420C3C(v26, &unk_1EC0BA0E0, &qword_1C4F105A0);
          sub_1C4A8E2DC();
          a2 = v60;
          goto LABEL_42;
        }

        v79 = v48;
        v50 = v45;
        v70(v84, v26, v10);
        v51 = sub_1C4F00FD8();
        v52 = a2;
        v53 = ~(-1 << a2[32]);
        do
        {
          v54 = v51 & v53;
          v55 = (v51 & v53) >> 6;
          v56 = 1 << (v51 & v53);
          if ((v56 & v82[v55]) == 0)
          {
            (v81)(v84, v10);
            a2 = v52;
            v44 = v76;
            v26 = v71;
            v42 = v73;
            v43 = v72;
            v45 = v50;
            a1 = v79;
            goto LABEL_23;
          }

          v50(v14, *(v52 + 48) + v54 * v83, v10);
          v57 = sub_1C4F010B8();
          (v81)(v14, v10);
          v51 = v54 + 1;
        }

        while ((v57 & 1) == 0);
        (v81)(v84, v10);
        v58 = *(v77 + 8 * v55);
        *(v77 + 8 * v55) = v58 & ~v56;
        v59 = (v58 & v56) == 0;
        a2 = v52;
        v44 = v76;
        v26 = v71;
        v42 = v73;
        v43 = v72;
        v45 = v50;
        a1 = v79;
        if (v59)
        {
          goto LABEL_23;
        }

        v41 = v78 - 1;
        if (__OFSUB__(v78, 1))
        {
          __break(1u);
        }

        if (v78 == 1)
        {

          a2 = MEMORY[0x1E69E7CD0];
          goto LABEL_42;
        }
      }

      while (1)
      {
        v46 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (v46 >= v43)
        {
          v48 = 0;
          v49 = 1;
          goto LABEL_30;
        }

        a1 = *(v42 + 8 * v46);
        ++v27;
        if (a1)
        {
          v27 = v46;
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_46:
      sub_1C4420C3C(v26, &unk_1EC0BA0E0, &qword_1C4F105A0);
LABEL_42:
      sub_1C449BB0C();
      return a2;
    }
  }

  else
  {
    v26 = v9;
    v27 = v23;
    while (1)
    {
      v25 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v25 >= v72)
      {
        a1 = 0;
        v29 = 1;
        v28 = v76;
        goto LABEL_13;
      }

      v24 = *(v19 + 8 * v25);
      ++v27;
      if (v24)
      {
        v9 = v26;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_21;
  }

  v62 = swift_slowAlloc();
  v63 = v66;
  v64 = sub_1C4A84ECC(v62, v67, v82, v67, v25, v19, &v87);
  if (!v63)
  {
    a2 = v64;

    MEMORY[0x1C6942830](v62, -1, -1);
    goto LABEL_42;
  }

  result = MEMORY[0x1C6942830](v62, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1C4A82F74(unint64_t a1, uint64_t a2)
{
  v3 = a2;
  v47 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v38[0] = 0;
  v4 = 0;
  v6 = a1 + 56;
  v5 = *(a1 + 56);
  v7 = -1;
  v8 = -1 << *(a1 + 32);
  v40 = ~v8;
  v41 = a1 + 56;
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & v5;
  v11 = (63 - v8) >> 6;
  v12 = a2 + 56;
  v13 = 1;
  v42 = a1;
  if ((v9 & v5) == 0)
  {
LABEL_7:
    v15 = v4;
    while (1)
    {
      v14 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_38;
      }

      if (v14 >= v11)
      {
        break;
      }

      v10 = *(v6 + 8 * v14);
      ++v15;
      if (v10)
      {
        goto LABEL_11;
      }
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_35:
    sub_1C449BB0C();
    return v3;
  }

LABEL_6:
  v14 = v4;
LABEL_11:
  v16 = __clz(__rbit64(v10));
  v10 &= v10 - 1;
  v2 = *(*(a1 + 48) + ((v14 << 9) | (8 * v16)));
  v17 = sub_1C4F02AE8();
  v18 = -1 << *(v3 + 32);
  v19 = ~v18;
  while (1)
  {
    v4 = v17 & v19;
    v6 = (v17 & v19) >> 6;
    v7 = 1 << (v17 & v19);
    if ((v7 & *(v12 + 8 * v6)) == 0)
    {
      v4 = v14;
      v6 = v41;
      a1 = v42;
      v7 = -1;
      if (v10)
      {
        goto LABEL_6;
      }

      goto LABEL_7;
    }

    if (*(*(v3 + 48) + 8 * v4) == v2)
    {
      break;
    }

    v17 = v4 + 1;
  }

  v44 = v40;
  v45 = v14;
  v46 = v10;
  v43[0] = v42;
  v43[1] = v41;
  v13 = (63 - v18) >> 6;
  v2 = 8 * v13;
  v20 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (v13 > 0x80)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v38[1] = v13;
    v38[2] = v38;
    MEMORY[0x1EEE9AC00](v20);
    v13 = v38 - v21;
    memcpy(v38 - v21, (v3 + 56), v2);
    v22 = *(v3 + 16);
    *(v13 + 8 * v6) &= ~v7;
    v23 = v22 - 1;
    v4 = 1;
    v7 = v41;
    v6 = v42;
LABEL_19:
    v39 = v23;
LABEL_20:
    while (v10)
    {
LABEL_25:
      v25 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v2 = *(*(v6 + 48) + ((v14 << 9) | (8 * v25)));
      v26 = sub_1C4F02AE8();
      v27 = ~(-1 << *(v3 + 32));
      while (1)
      {
        v28 = v26 & v27;
        v29 = (v26 & v27) >> 6;
        v30 = 1 << (v26 & v27);
        if ((v30 & *(v12 + 8 * v29)) == 0)
        {
          break;
        }

        v26 = v28 + 1;
        if (*(*(v3 + 48) + 8 * v28) == v2)
        {
          v31 = *(v13 + 8 * v29);
          *(v13 + 8 * v29) = v31 & ~v30;
          if ((v31 & v30) == 0)
          {
            goto LABEL_20;
          }

          v23 = v39 - 1;
          if (__OFSUB__(v39, 1))
          {
            __break(1u);
          }

          if (v39 == 1)
          {

            v3 = MEMORY[0x1E69E7CD0];
            goto LABEL_35;
          }

          goto LABEL_19;
        }
      }
    }

    while (1)
    {
      v24 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v24 >= v11)
      {
        sub_1C4A8E738();
        v3 = v32;
        goto LABEL_35;
      }

      v10 = *(v7 + 8 * v24);
      ++v14;
      if (v10)
      {
        v14 = v24;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v34 = swift_slowAlloc();
  v35 = v38[0];
  v36 = sub_1C4A84F54(v34, v13, (v3 + 56), v13, v3, v4, v43);
  if (!v35)
  {
    v37 = v36;

    MEMORY[0x1C6942830](v34, -1, -1);
    v40 = v44;
    v3 = v37;
    goto LABEL_35;
  }

  result = MEMORY[0x1C6942830](v34, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1C4A83360(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v57 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v7 = a1 + 56;
    v6 = *(a1 + 56);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v48 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v6;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;
    v14 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v15 = 0;
    v50 = v12;
    v51 = v7;
    v52 = v14;
    if (v11)
    {
      while (2)
      {
        v16 = v15;
LABEL_11:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v19 = (*(v14 + 48) + ((v16 << 10) | (16 * v18)));
        v3 = *v19;
        v2 = v19[1];
        sub_1C4F02AF8();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4F01298();
        v20 = sub_1C4F02B68();
        v21 = ~(-1 << *(v5 + 32));
        while (1)
        {
          v7 = v20 & v21;
          v4 = (v20 & v21) >> 6;
          v8 = 1 << (v20 & v21);
          if ((v8 & *(v13 + 8 * v4)) == 0)
          {
            break;
          }

          v22 = (*(v5 + 48) + 16 * v7);
          v23 = *v22 == v3 && v22[1] == v2;
          if (v23 || (sub_1C4F02938() & 1) != 0)
          {
            v54 = v48;
            v55 = v16;
            v56 = v11;
            v3 = v51;
            v12 = v52;
            v53[0] = v52;
            v53[1] = v51;

            v25 = *(v5 + 32);
            v45 = ((1 << v25) + 63) >> 6;
            v2 = 8 * v45;
            if ((v25 & 0x3Fu) > 0xD)
            {
              goto LABEL_48;
            }

            while (1)
            {
              v46 = &v44;
              MEMORY[0x1EEE9AC00](v24);
              v7 = &v44 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
              memcpy(v7, (v5 + 56), v2);
              v26 = *(v7 + 8 * v4) & ~v8;
              v27 = *(v5 + 16);
              v49 = v7;
              *(v7 + 8 * v4) = v26;
              v28 = v27 - 1;
              v29 = v50;
              while (1)
              {
                v47 = v28;
LABEL_24:
                if (!v11)
                {
                  break;
                }

LABEL_29:
                v31 = __clz(__rbit64(v11));
                v11 &= v11 - 1;
                v32 = (*(v12 + 48) + ((v16 << 10) | (16 * v31)));
                v2 = *v32;
                v33 = v32[1];
                sub_1C4F02AF8();
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                sub_1C4F01298();
                v34 = sub_1C4F02B68();
                v35 = ~(-1 << *(v5 + 32));
                do
                {
                  v4 = v34 & v35;
                  v7 = (v34 & v35) >> 6;
                  v8 = 1 << (v34 & v35);
                  if ((v8 & *(v13 + 8 * v7)) == 0)
                  {

                    v3 = v51;
                    v12 = v52;
                    v29 = v50;
                    goto LABEL_24;
                  }

                  v36 = (*(v5 + 48) + 16 * v4);
                  if (*v36 == v2 && v36[1] == v33)
                  {
                    break;
                  }

                  v38 = sub_1C4F02938();
                  v34 = v4 + 1;
                }

                while ((v38 & 1) == 0);

                v39 = *(v49 + 8 * v7);
                *(v49 + 8 * v7) = v39 & ~v8;
                v3 = v51;
                v12 = v52;
                v29 = v50;
                if ((v39 & v8) == 0)
                {
                  goto LABEL_24;
                }

                v28 = v47 - 1;
                if (__OFSUB__(v47, 1))
                {
                  __break(1u);
                }

                if (v47 == 1)
                {

                  v5 = MEMORY[0x1E69E7CD0];
                  goto LABEL_44;
                }
              }

              while (1)
              {
                v30 = v16 + 1;
                if (__OFADD__(v16, 1))
                {
                  break;
                }

                if (v30 >= v29)
                {
                  sub_1C4A8D90C(v49, v45, v47, v5);
                  v5 = v40;
                  goto LABEL_44;
                }

                v11 = *(v3 + 8 * v30);
                ++v16;
                if (v11)
                {
                  v16 = v30;
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_47:
              __break(1u);
LABEL_48:

              if (!swift_stdlib_isStackAllocationSafe())
              {
                break;
              }
            }

            v42 = swift_slowAlloc();
            v43 = sub_1C4A84FDC(v42, v45, (v5 + 56), v45, v5, v7, v53);

            MEMORY[0x1C6942830](v42, -1, -1);
            v48 = v54;
            v5 = v43;
            goto LABEL_44;
          }

          v20 = v7 + 1;
        }

        v15 = v16;
        v7 = v51;
        v14 = v52;
        v12 = v50;
        v8 = -1;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = v15;
    while (1)
    {
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_47;
      }

      if (v16 >= v12)
      {
        break;
      }

      v11 = *(v7 + 8 * v16);
      ++v17;
      if (v11)
      {
        goto LABEL_11;
      }
    }

LABEL_44:
    sub_1C449BB0C();
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return v5;
}

void sub_1C4A83838(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v38 = a2;
  v9 = sub_1C456902C(&qword_1EC0C24B8, &qword_1C4F4A8A8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v38 - v10;
  v12 = sub_1C4EFDAF8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v49 = &v38 - v18;
  v19 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v20 = v19 - 1;
  v40 = a1;
  v41 = (v13 + 32);
  v45 = a3 + 56;
  v46 = v13 + 16;
  v47 = (v13 + 8);
  v48 = a3;
  v42 = v11;
  v43 = a5;
  while (1)
  {
    v39 = v20;
LABEL_3:
    v22 = *a5;
    v21 = a5[1];
    v23 = a5[2];
    v24 = a5[3];
    v25 = a5[4];
    v44 = v23;
    if (!v25)
    {
      break;
    }

    v26 = v24;
LABEL_9:
    v27 = (v25 - 1) & v25;
    (*(v13 + 16))(v11, *(v22 + 48) + *(v13 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v12, v17);
    v28 = 0;
LABEL_10:
    sub_1C440BAA8(v11, v28, 1, v12);
    *a5 = v22;
    a5[1] = v21;
    a5[2] = v44;
    a5[3] = v24;
    a5[4] = v27;
    if (sub_1C44157D4(v11, 1, v12) == 1)
    {
      sub_1C4420C3C(v11, &qword_1EC0C24B8, &qword_1C4F4A8A8);

      sub_1C4A8DAC0();
      return;
    }

    (*v41)(v49, v11, v12);
    v29 = v48;
    sub_1C44D7248(&qword_1EDDEFFA8, MEMORY[0x1E69A94B0], MEMORY[0x1E69A94B8]);
    v30 = sub_1C4F00FD8();
    v31 = ~(-1 << *(v29 + 32));
    do
    {
      v32 = v30 & v31;
      v33 = (v30 & v31) >> 6;
      v34 = 1 << (v30 & v31);
      if ((v34 & *(v45 + 8 * v33)) == 0)
      {
        (*v47)(v49, v12);
        v11 = v42;
        a5 = v43;
        goto LABEL_3;
      }

      (*(v13 + 16))(v15, *(v48 + 48) + *(v13 + 72) * v32, v12);
      sub_1C44D7248(&qword_1EC0B85A8, MEMORY[0x1E69A94B0], MEMORY[0x1E69A94C0]);
      v35 = sub_1C4F010B8();
      v36 = *(v13 + 8);
      v36(v15, v12);
      v30 = v32 + 1;
    }

    while ((v35 & 1) == 0);
    v36(v49, v12);
    v37 = *(v40 + 8 * v33);
    *(v40 + 8 * v33) = v37 & ~v34;
    v11 = v42;
    a5 = v43;
    if ((v37 & v34) == 0)
    {
      goto LABEL_3;
    }

    v20 = v39 - 1;
    if (__OFSUB__(v39, 1))
    {
      goto LABEL_23;
    }

    if (v39 == 1)
    {
      return;
    }
  }

  while (1)
  {
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v26 >= ((v23 + 64) >> 6))
    {
      v27 = 0;
      v28 = 1;
      goto LABEL_10;
    }

    v25 = *(v21 + 8 * v26);
    ++v24;
    if (v25)
    {
      v24 = v26;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_1C4A83C88(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v6 = v5 - 1;
  v29 = a3 + 56;
  while (2)
  {
    v26 = v6;
    while (1)
    {
LABEL_3:
      v7 = a5[3];
      v8 = a5[4];
      if (!v8)
      {
        while (1)
        {
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            break;
          }

          if (v9 >= ((a5[2] + 64) >> 6))
          {
            a5[3] = v7;
            a5[4] = 0;

            sub_1C4A8DCA8(result, a2, v26, a3);
            return;
          }

          v8 = *(a5[1] + 8 * v9);
          ++v7;
          if (v8)
          {
            goto LABEL_8;
          }
        }

        __break(1u);
        goto LABEL_38;
      }

      v9 = a5[3];
LABEL_8:
      v10 = *(*(*a5 + 48) + (__clz(__rbit64(v8)) | (v9 << 6)));
      a5[3] = v9;
      a5[4] = (v8 - 1) & v8;
      sub_1C4F02AF8();
      sub_1C4F01298();

      v11 = sub_1C4F02B68();
      v12 = -1 << *(a3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = 1 << v13;
      if (((1 << v13) & *(v29 + 8 * (v13 >> 6))) != 0)
      {
        v16 = ~v12;
        v17 = v10;
        while (1)
        {
          v18 = 0xE800000000000000;
          v19 = 0x4449656C646E7562;
          switch(*(*(a3 + 48) + v13))
          {
            case 1:
              v19 = 0xD000000000000011;
              v18 = 0x80000001C4F86740;
              break;
            case 2:
              v19 = 0x456E6F6973736573;
              v18 = 0xEC000000746E6576;
              break;
            case 3:
              v19 = 0xD000000000000016;
              v18 = 0x80000001C4F85600;
              break;
            case 4:
              v19 = 0xD000000000000016;
              v18 = 0x80000001C4F86760;
              break;
            case 5:
              v19 = 0x7463617265746E69;
              v18 = 0xEF657079546E6F69;
              break;
            case 6:
              v19 = 0x646576726573626FLL;
              v18 = 0xEB00000000656741;
              break;
            default:
              break;
          }

          v20 = 0xE800000000000000;
          v21 = 0x4449656C646E7562;
          switch(v17)
          {
            case 1:
              v21 = 0xD000000000000011;
              v20 = 0x80000001C4F86740;
              break;
            case 2:
              v21 = 0x456E6F6973736573;
              v20 = 0xEC000000746E6576;
              break;
            case 3:
              v21 = 0xD000000000000016;
              v20 = 0x80000001C4F85600;
              break;
            case 4:
              v21 = 0xD000000000000016;
              v20 = 0x80000001C4F86760;
              break;
            case 5:
              v21 = 0x7463617265746E69;
              v20 = 0xEF657079546E6F69;
              break;
            case 6:
              v21 = 0x646576726573626FLL;
              v20 = 0xEB00000000656741;
              break;
            default:
              break;
          }

          if (v19 == v21 && v18 == v20)
          {
            break;
          }

          v23 = sub_1C4F02938();

          if (v23)
          {
            goto LABEL_32;
          }

          v13 = (v13 + 1) & v16;
          v14 = v13 >> 6;
          v15 = 1 << v13;
          if ((*(v29 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
          {
            goto LABEL_3;
          }
        }

LABEL_32:
        v24 = *(result + 8 * v14);
        *(result + 8 * v14) = v24 & ~v15;
        if ((v24 & v15) != 0)
        {
          break;
        }
      }
    }

    v6 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
LABEL_38:
      __break(1u);
      return;
    }

    if (v26 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_1C4A8412C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v38 = a2;
  v9 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v38 - v10;
  v12 = sub_1C4EFEEF8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v49 = &v38 - v18;
  v19 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v20 = v19 - 1;
  v40 = a1;
  v41 = (v13 + 32);
  v45 = a3 + 56;
  v46 = v13 + 16;
  v47 = (v13 + 8);
  v48 = a3;
  v42 = v11;
  v43 = a5;
  while (1)
  {
    v39 = v20;
LABEL_3:
    v22 = *a5;
    v21 = a5[1];
    v23 = a5[2];
    v24 = a5[3];
    v25 = a5[4];
    v44 = v23;
    if (!v25)
    {
      break;
    }

    v26 = v24;
LABEL_9:
    v27 = (v25 - 1) & v25;
    (*(v13 + 16))(v11, *(v22 + 48) + *(v13 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v12, v17);
    v28 = 0;
LABEL_10:
    sub_1C440BAA8(v11, v28, 1, v12);
    *a5 = v22;
    a5[1] = v21;
    a5[2] = v44;
    a5[3] = v24;
    a5[4] = v27;
    if (sub_1C44157D4(v11, 1, v12) == 1)
    {
      sub_1C4420C3C(v11, &qword_1EC0B9A08, &unk_1C4F107B0);

      sub_1C4A8E0F4();
      return;
    }

    (*v41)(v49, v11, v12);
    v29 = v48;
    sub_1C44D7248(&qword_1EDDFCCB8, MEMORY[0x1E69A9748], MEMORY[0x1E69A9758]);
    v30 = sub_1C4F00FD8();
    v31 = ~(-1 << *(v29 + 32));
    do
    {
      v32 = v30 & v31;
      v33 = (v30 & v31) >> 6;
      v34 = 1 << (v30 & v31);
      if ((v34 & *(v45 + 8 * v33)) == 0)
      {
        (*v47)(v49, v12);
        v11 = v42;
        a5 = v43;
        goto LABEL_3;
      }

      (*(v13 + 16))(v15, *(v48 + 48) + *(v13 + 72) * v32, v12);
      sub_1C44D7248(&qword_1EDDFCCB0, MEMORY[0x1E69A9748], MEMORY[0x1E69A9768]);
      v35 = sub_1C4F010B8();
      v36 = *(v13 + 8);
      v36(v15, v12);
      v30 = v32 + 1;
    }

    while ((v35 & 1) == 0);
    v36(v49, v12);
    v37 = *(v40 + 8 * v33);
    *(v40 + 8 * v33) = v37 & ~v34;
    v11 = v42;
    a5 = v43;
    if ((v37 & v34) == 0)
    {
      goto LABEL_3;
    }

    v20 = v39 - 1;
    if (__OFSUB__(v39, 1))
    {
      goto LABEL_23;
    }

    if (v39 == 1)
    {
      return;
    }
  }

  while (1)
  {
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v26 >= ((v23 + 64) >> 6))
    {
      v27 = 0;
      v28 = 1;
      goto LABEL_10;
    }

    v25 = *(v21 + 8 * v26);
    ++v24;
    if (v25)
    {
      v24 = v26;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_1C4A8457C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v38 = a2;
  v9 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v38 - v10;
  v12 = sub_1C4EFF0C8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v49 = &v38 - v18;
  v19 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v20 = v19 - 1;
  v40 = a1;
  v41 = (v13 + 32);
  v45 = a3 + 56;
  v46 = v13 + 16;
  v47 = (v13 + 8);
  v48 = a3;
  v42 = v11;
  v43 = a5;
  while (1)
  {
    v39 = v20;
LABEL_3:
    v22 = *a5;
    v21 = a5[1];
    v23 = a5[2];
    v24 = a5[3];
    v25 = a5[4];
    v44 = v23;
    if (!v25)
    {
      break;
    }

    v26 = v24;
LABEL_9:
    v27 = (v25 - 1) & v25;
    (*(v13 + 16))(v11, *(v22 + 48) + *(v13 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v12, v17);
    v28 = 0;
LABEL_10:
    sub_1C440BAA8(v11, v28, 1, v12);
    *a5 = v22;
    a5[1] = v21;
    a5[2] = v44;
    a5[3] = v24;
    a5[4] = v27;
    if (sub_1C44157D4(v11, 1, v12) == 1)
    {
      sub_1C4420C3C(v11, &unk_1EC0BA0E0, &qword_1C4F105A0);

      sub_1C4A8E2DC();
      return;
    }

    (*v41)(v49, v11, v12);
    v29 = v48;
    sub_1C44D7248(&qword_1EDDFE820, MEMORY[0x1E69A9810], MEMORY[0x1E69A9820]);
    v30 = sub_1C4F00FD8();
    v31 = ~(-1 << *(v29 + 32));
    do
    {
      v32 = v30 & v31;
      v33 = (v30 & v31) >> 6;
      v34 = 1 << (v30 & v31);
      if ((v34 & *(v45 + 8 * v33)) == 0)
      {
        (*v47)(v49, v12);
        v11 = v42;
        a5 = v43;
        goto LABEL_3;
      }

      (*(v13 + 16))(v15, *(v48 + 48) + *(v13 + 72) * v32, v12);
      sub_1C44D7248(&qword_1EDDFCC98, MEMORY[0x1E69A9810], MEMORY[0x1E69A9830]);
      v35 = sub_1C4F010B8();
      v36 = *(v13 + 8);
      v36(v15, v12);
      v30 = v32 + 1;
    }

    while ((v35 & 1) == 0);
    v36(v49, v12);
    v37 = *(v40 + 8 * v33);
    *(v40 + 8 * v33) = v37 & ~v34;
    v11 = v42;
    a5 = v43;
    if ((v37 & v34) == 0)
    {
      goto LABEL_3;
    }

    v20 = v39 - 1;
    if (__OFSUB__(v39, 1))
    {
      goto LABEL_23;
    }

    if (v39 == 1)
    {
      return;
    }
  }

  while (1)
  {
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v26 >= ((v23 + 64) >> 6))
    {
      v27 = 0;
      v28 = 1;
      goto LABEL_10;
    }

    v25 = *(v21 + 8 * v26);
    ++v24;
    if (v25)
    {
      v24 = v26;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_1C4A849CC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
LABEL_2:
  while (1)
  {
    v11 = a5[3];
    v12 = a5[4];
    if (!v12)
    {
      break;
    }

    v13 = a5[3];
LABEL_7:
    v14 = *(*(*a5 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    a5[3] = v13;
    a5[4] = (v12 - 1) & v12;
    v15 = sub_1C4F02AE8();
    v16 = ~(-1 << *(a3 + 32));
    while (1)
    {
      v17 = v15 & v16;
      v18 = (v15 & v16) >> 6;
      v19 = 1 << (v15 & v16);
      if ((v19 & *(v10 + 8 * v18)) == 0)
      {
        break;
      }

      v15 = v17 + 1;
      if (*(*(a3 + 48) + 8 * v17) == v14)
      {
        v20 = *(result + 8 * v18);
        *(result + 8 * v18) = v20 & ~v19;
        if ((v20 & v19) == 0)
        {
          goto LABEL_2;
        }

        if (__OFSUB__(v9--, 1))
        {
          goto LABEL_16;
        }

        if (v9)
        {
          goto LABEL_2;
        }

        return;
      }
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v11;
      a5[4] = 0;

      sub_1C4A8E738();
      return;
    }

    v12 = *(a5[1] + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_1C4A84B48(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v26 = v8;
LABEL_3:
    v10 = a5[3];
    v11 = a5[4];
    if (!v11)
    {
      break;
    }

    v12 = a5[3];
LABEL_8:
    v13 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
    v15 = *v13;
    v14 = v13[1];
    a5[3] = v12;
    a5[4] = (v11 - 1) & v11;
    sub_1C4F02AF8();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4F01298();
    v16 = sub_1C4F02B68();
    v17 = ~(-1 << *(a3 + 32));
    do
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = 1 << (v16 & v17);
      if ((v20 & *(v9 + 8 * v19)) == 0)
      {

        goto LABEL_3;
      }

      v21 = (*(a3 + 48) + 16 * v18);
      if (*v21 == v15 && v21[1] == v14)
      {
        break;
      }

      v23 = sub_1C4F02938();
      v16 = v18 + 1;
    }

    while ((v23 & 1) == 0);

    v24 = *(result + 8 * v19);
    *(result + 8 * v19) = v24 & ~v20;
    if ((v24 & v20) == 0)
    {
      goto LABEL_3;
    }

    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
      goto LABEL_23;
    }

    if (v26 == 1)
    {
      return;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v10;
      a5[4] = 0;

      sub_1C4A8D90C(result, a2, v26, a3);
      return;
    }

    v11 = *(a5[1] + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

uint64_t sub_1C4A84D34(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_1C4A83838(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

uint64_t sub_1C4A84DBC(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_1C4A83C88(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

uint64_t sub_1C4A84E44(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_1C4A8412C(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

uint64_t sub_1C4A84ECC(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_1C4A8457C(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

uint64_t sub_1C4A84F54(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_1C4A849CC(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

uint64_t sub_1C4A84FDC(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_1C4A84B48(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

_BYTE *storeEnumTagSinglePayload for WalletPassStyle(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C4A85140@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  sub_1C43FBD18(v5);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12[-1] - v7;
  sub_1C4A480D4(a1, &v12[-1] - v7);
  sub_1C442E860(v2 + 16, v12);
  v9 = *(v2 + 104);

  result = sub_1C4A85F74(v8, v12, v9);
  *a2 = result;
  a2[1] = 0;
  return result;
}

unint64_t sub_1C4A851F8(unint64_t result)
{
  if (result >= 9)
  {
    return 9;
  }

  return result;
}

unint64_t sub_1C4A85208(unint64_t result)
{
  if (result >= 0xA)
  {
    return 10;
  }

  return result;
}

unint64_t sub_1C4A852C8@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C4A85208(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1C4A853A8()
{
  result = qword_1EC0C24D0;
  if (!qword_1EC0C24D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C24D0);
  }

  return result;
}

uint64_t sub_1C4A85418()
{
  sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = 0x615074656C6C6177;
  *(inited + 40) = 0xEF656C7974537373;
  v2 = type metadata accessor for WalletPassContent(0);
  if (*(v0 + *(v2 + 28)) == 10)
  {
    v3 = 9;
  }

  else
  {
    v3 = *(v0 + *(v2 + 28));
  }

  *(inited + 48) = [objc_opt_self() featureValueWithInt64_];
  sub_1C4577DBC();
  v4 = sub_1C4F00F28();
  v5 = *(v0 + *(v2 + 20));
  if (v5 != 3)
  {
    sub_1C4A3B8F8(v5 == 1);
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C4660314();
  }

  return v4;
}

uint64_t sub_1C4A8556C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v5);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v30 - v7;
  v9 = type metadata accessor for WalletPassContent(0);
  v10 = (v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C440777C();
  sub_1C4EF9CD8();
  sub_1C43FCF64();
  sub_1C440BAA8(v11, v12, v13, v14);
  v15 = a1[3];
  v16 = a1[4];
  sub_1C4409678(a1, v15);
  (*(v16 + 8))(v15, v16);
  sub_1C45AD734(v8, v2);
  sub_1C4400A78();
  v17 = sub_1C4426CFC();
  v19 = v18(v17);
  if (v19 == 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = 2;
  }

  if (!v19)
  {
    v20 = 0;
  }

  *(v2 + v10[7]) = v20;
  sub_1C4400A78();
  v21 = sub_1C4426CFC();
  v23 = v22(v21);
  v24 = (v2 + v10[8]);
  *v24 = v23;
  v24[1] = v25;
  sub_1C4400A78();
  v26 = sub_1C4426CFC();
  v28 = v27(v26);
  *(v2 + v10[9]) = sub_1C4A851F8(v28);
  sub_1C45AD61C(v2, a2);
  sub_1C440962C(a1);
  return sub_1C4A86248(v2);
}

uint64_t sub_1C4A8571C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E6176656C6572 && a2 == 0xEC00000065746144;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6570795473736170 && a2 == 0xE800000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x80000001C4FAEAE0 == a2;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6C79745373736170 && a2 == 0xE900000000000065)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C4F02938();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1C4A85888(char a1)
{
  result = 0x746E6176656C6572;
  switch(a1)
  {
    case 1:
      result = 0x6570795473736170;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x6C79745373736170;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4A8591C(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0C2518, &unk_1C4F4AC60);
  sub_1C43FCDF8();
  v7 = v6;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13[-v9];
  sub_1C4409678(a1, a1[3]);
  sub_1C4A86CF0();
  sub_1C4F02BF8();
  v13[15] = 0;
  sub_1C4EF9CD8();
  sub_1C4498DE4(&qword_1EDDFCD80, MEMORY[0x1E6969538]);
  sub_1C4402150();
  sub_1C4F02778();
  if (!v2)
  {
    v11 = type metadata accessor for WalletPassContent(0);
    v13[14] = *(v3 + *(v11 + 20));
    v13[13] = 1;
    sub_1C4A86DEC();
    sub_1C4402150();
    sub_1C4F02778();
    v13[12] = 2;
    sub_1C4402150();
    sub_1C4F02798();
    v13[11] = *(v3 + *(v11 + 28));
    v13[10] = 3;
    sub_1C4A86E40();
    sub_1C4402150();
    sub_1C4F02778();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1C4A85B30@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23[0] = a2;
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v5);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v23 - v7;
  sub_1C456902C(&qword_1EC0C24F8, &qword_1C4F4AC58);
  sub_1C43FCDF8();
  v23[1] = v10;
  v23[2] = v9;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  v24 = type metadata accessor for WalletPassContent(0);
  MEMORY[0x1EEE9AC00](v24);
  sub_1C440777C();
  v12 = sub_1C4EF9CD8();
  sub_1C43FCF64();
  sub_1C440BAA8(v13, v14, v15, v12);
  sub_1C4409678(a1, a1[3]);
  sub_1C4A86CF0();
  sub_1C4F02BC8();
  if (v2)
  {
    sub_1C440962C(a1);
    return sub_1C4423A0C(v3, &unk_1EC0B84E0, qword_1C4F0D2D0);
  }

  else
  {
    v30 = 0;
    sub_1C4498DE4(&unk_1EDDFCD60, MEMORY[0x1E6969558]);
    sub_1C44035B8();
    sub_1C4F02658();
    sub_1C45AD734(v8, v3);
    v28 = 1;
    sub_1C4A86D44();
    sub_1C44035B8();
    sub_1C4F02658();
    v16 = v24;
    *(v3 + *(v24 + 20)) = v29;
    v27 = 2;
    sub_1C44035B8();
    v17 = sub_1C4F02678();
    v18 = (v3 + *(v16 + 24));
    *v18 = v17;
    v18[1] = v19;
    v25 = 3;
    sub_1C4A86D98();
    sub_1C44035B8();
    sub_1C4F02658();
    v20 = sub_1C4420030();
    v21(v20);
    *(v3 + *(v16 + 28)) = v26;
    sub_1C45AD61C(v3, v23[0]);
    sub_1C440962C(a1);
    return sub_1C4A86248(v3);
  }
}

uint64_t sub_1C4A85EA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4A8571C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4A85EC8(uint64_t a1)
{
  v2 = sub_1C4A86CF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4A85F04(uint64_t a1)
{
  v2 = sub_1C4A86CF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4A85F74(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23[-v13];
  if (!a3)
  {
    type metadata accessor for ActivityModelDataSource(0);
    v15 = *(v8 + 16);
    v15(v14, a1, v6);
    v16 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
    v15(v11, a1 + *(v16 + 36), v6);
    sub_1C442E860(a2, v26);
    v25 = 0;
    memset(v24, 0, sizeof(v24));
    v17 = sub_1C4F01108();
    v18 = sub_1C44C1028(v17);

    sub_1C4574C14(v14, v11, 0, v26, v24, v18);
  }

  v19 = a1 + *(sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0) + 36);

  v20 = sub_1C4573EC0();
  MEMORY[0x1EEE9AC00](v20);
  *&v23[-16] = a1;
  *&v23[-8] = v19;
  v21 = sub_1C49BF8F4();

  sub_1C440962C(a2);
  sub_1C4423A0C(a1, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  return v21;
}

uint64_t type metadata accessor for WalletPassContent(uint64_t a1)
{
  result = qword_1EDDE5EF8;
  if (!qword_1EDDE5EF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4A86248(uint64_t a1)
{
  v2 = type metadata accessor for WalletPassContent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4A862A4()
{
  sub_1C43FBCD4();
  v1[12] = v2;
  v1[13] = v0;
  v3 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v3);
  v1[14] = swift_task_alloc();
  v4 = sub_1C4EF9CD8();
  v1[15] = v4;
  v1[16] = *(v4 - 8);
  v1[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4A86394, 0, 0);
}

void sub_1C4A86394()
{
  v1 = v0[13];
  v2 = v1[1];
  if (v2 >= *(*v1 + 16))
  {
    sub_1C456902C(&qword_1EC0B97B8, &unk_1C4F0F7F0);
    sub_1C43FCF64();
    sub_1C440BAA8(v11, v12, v13, v14);
  }

  else
  {
    if (v2 < 0)
    {
      __break(1u);
      return;
    }

    v4 = v0[14];
    v3 = v0[15];
    sub_1C442E860(*v1 + 40 * v2 + 32, (v0 + 2));
    v1[1] = v2 + 1;
    v5 = v0[5];
    v6 = v0[6];
    sub_1C4409678(v0 + 2, v5);
    (*(v6 + 8))(v5, v6);
    if (sub_1C44157D4(v4, 1, v3) == 1)
    {
      sub_1C4423A0C(v0[14], &unk_1EC0B84E0, qword_1C4F0D2D0);
      sub_1C456902C(&qword_1EC0B97B8, &unk_1C4F0F7F0);
      sub_1C43FCF64();
    }

    else
    {
      v16 = v0[16];
      v15 = v0[17];
      v17 = v0[15];
      v18 = v0[12];
      (*(v16 + 32))(v15, v0[14], v17);
      v19 = *(v16 + 16);
      v19(v18, v15, v17);
      v20 = sub_1C456902C(&qword_1EC0B97B8, &unk_1C4F0F7F0);
      v19(v18 + *(v20 + 28), v15, v17);
      sub_1C442E860((v0 + 2), (v0 + 7));
      sub_1C4A8556C(v0 + 7, v18 + *(v20 + 32));
      (*(v16 + 8))(v15, v17);
      v7 = v18;
      v8 = 0;
      v9 = 1;
      v10 = v20;
    }

    sub_1C440BAA8(v7, v8, v9, v10);
    sub_1C440962C(v0 + 2);
  }

  v21 = v0[1];

  v21();
}

uint64_t sub_1C4A86600@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C4A865D8();
  v4 = v3;

  *a1 = v2;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C4A86648()
{
  sub_1C43FBCD4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C4A866DC;

  return sub_1C4A862A4();
}

uint64_t sub_1C4A866DC()
{
  sub_1C43FBCD4();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_1C4A867D0()
{
  result = qword_1EC0C24D8;
  if (!qword_1EC0C24D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C24D8);
  }

  return result;
}

void sub_1C4A86868(uint64_t a1)
{
  sub_1C45C2C2C(319);
  if (v1 <= 0x3F)
  {
    sub_1C44FCC6C(319, &qword_1EDDE82A0, &type metadata for WalletPassType);
    if (v2 <= 0x3F)
    {
      sub_1C44FCC6C(319, &qword_1EDDE7328, &type metadata for WalletPassStyle);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for WalletPassType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C4A86A18()
{
  result = qword_1EDDDE960;
  if (!qword_1EDDDE960)
  {
    sub_1C4572308(&qword_1EC0C24E0, &unk_1C4F4AA58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDE960);
  }

  return result;
}

uint64_t sub_1C4A86A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_1C4A86B48;

  return (sub_1C4982AF0)(a1, a2, a3, v3 + 16);
}

uint64_t sub_1C4A86B48()
{
  sub_1C43FBCD4();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_1C4A86C44()
{
  result = qword_1EC0C24E8;
  if (!qword_1EC0C24E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C24E8);
  }

  return result;
}

unint64_t sub_1C4A86C9C()
{
  result = qword_1EC0C24F0;
  if (!qword_1EC0C24F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C24F0);
  }

  return result;
}

unint64_t sub_1C4A86CF0()
{
  result = qword_1EC0C2500;
  if (!qword_1EC0C2500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2500);
  }

  return result;
}

unint64_t sub_1C4A86D44()
{
  result = qword_1EC0C2508;
  if (!qword_1EC0C2508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2508);
  }

  return result;
}

unint64_t sub_1C4A86D98()
{
  result = qword_1EC0C2510;
  if (!qword_1EC0C2510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2510);
  }

  return result;
}

unint64_t sub_1C4A86DEC()
{
  result = qword_1EC0C2520;
  if (!qword_1EC0C2520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2520);
  }

  return result;
}

unint64_t sub_1C4A86E40()
{
  result = qword_1EC0C2528;
  if (!qword_1EC0C2528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2528);
  }

  return result;
}

unint64_t sub_1C4A86E94()
{
  result = qword_1EC0C2530;
  if (!qword_1EC0C2530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2530);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WalletPassContent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C4A86FC8()
{
  result = qword_1EC0C2538;
  if (!qword_1EC0C2538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2538);
  }

  return result;
}

unint64_t sub_1C4A87020()
{
  result = qword_1EC0C2540;
  if (!qword_1EC0C2540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2540);
  }

  return result;
}

unint64_t sub_1C4A87078()
{
  result = qword_1EC0C2548;
  if (!qword_1EC0C2548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2548);
  }

  return result;
}

uint64_t sub_1C4A870F0@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 relevantDate];
  if (v3)
  {
    v4 = v3;
    sub_1C4EF9C78();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1C4EF9CD8();

  return sub_1C440BAA8(a1, v5, 1, v6);
}

uint64_t sub_1C4A871C8()
{
  v1 = [v0 passTypeIdentifier];
  v2 = sub_1C4F01138();

  return v2;
}

id sub_1C4A87278()
{
  v1 = [v0 secureElementPass];

  return v1;
}

uint64_t sub_1C4A872B0()
{
  v1 = [v0 passes];
  sub_1C4461BB8(0, &qword_1EDDDB868, 0x1E69B8A20);
  sub_1C4F01678();

  sub_1C48114B8();
  v3 = v2;

  return v3;
}

uint64_t sub_1C4A87350()
{
  sub_1C440962C((v0 + 16));
  sub_1C440962C((v0 + 56));

  return v0;
}

uint64_t sub_1C4A87388()
{
  sub_1C4A87350();

  return swift_deallocClassInstance();
}

id sub_1C4A873E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16[3] = a5;
  v16[4] = a6;
  v11 = sub_1C4422F90(v16);
  (*(*(a5 - 8) + 32))(v11, a1, a5);
  v15[3] = sub_1C4461BB8(0, &qword_1EDDF0450, 0x1E69B8DB8);
  v15[4] = &off_1F43F7318;
  v15[0] = a2;
  sub_1C442E860(v16, a4 + 16);
  sub_1C442E860(v15, a4 + 56);
  v12 = objc_allocWithZone(MEMORY[0x1E69B88E0]);
  result = [v12 init];
  if (result)
  {
    v14 = result;
    sub_1C440962C(v16);
    sub_1C440962C(v15);
    *(a4 + 96) = v14;
    *(a4 + 104) = a3;
    return a4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PassthroughMatcher.init(stores:source:entityClass:pipelineType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a4;
  sub_1C4471EF8(a2, a5);
  v9 = type metadata accessor for PassthroughMatcher(0);
  *(a5 + v9[5]) = v8;
  sub_1C4471EF8(a1, a5 + v9[6]);
  v10 = v9[7];
  sub_1C4EFD548();
  sub_1C43FBCE0();
  v12 = *(v11 + 32);

  return v12(a5 + v10, a3);
}

uint64_t PassthroughMatcher.entityClass.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PassthroughMatcher(0) + 28);
  sub_1C4EFD548();
  sub_1C43FBCE0();
  v5 = *(v4 + 40);

  return v5(v1 + v3, a1);
}

uint64_t sub_1C4A87674(uint64_t a1)
{
  result = sub_1C4A876FC(&qword_1EDDF4ED0, &protocol conformance descriptor for PassthroughMatcher);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4A876B8(uint64_t a1)
{
  result = sub_1C4A876FC(&qword_1EDDF4EE0, &protocol conformance descriptor for PassthroughMatcher);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4A876FC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PassthroughMatcher(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C4A87768(uint64_t a1)
{
  result = type metadata accessor for Source(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PhaseStores(319);
    if (v3 <= 0x3F)
    {
      result = sub_1C4EFD548();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C4A8780C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C4A87830, 0, 0);
}

uint64_t sub_1C4A87830()
{
  v20 = v0;
  v1 = v0[19];
  v18 = MEMORY[0x1E69E7CD0];
  v2 = sub_1C4428DA0(v1);
  for (i = 0; v2 != i; ++i)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1C6940F90](i, v0[19]);
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v4 = *(v1 + 32 + 8 * i);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v19[0] = v4;
    sub_1C4A87D84(&v18, v19);
  }

  i = v18;
  if (qword_1EDDFECB0 == -1)
  {
    goto LABEL_10;
  }

LABEL_18:
  swift_once();
LABEL_10:
  v6 = sub_1C4F00978();
  v0[23] = sub_1C442B738(v6, qword_1EDDFECB8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v7 = sub_1C4F00968();
  v8 = sub_1C4F01CF8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = *(i + 16);

    sub_1C44065F4(&dword_1C43F8000, v10, v11, "Number of pass identifiers = %ld");
    MEMORY[0x1C6942830](v9, -1, -1);
  }

  else
  {
  }

  v12 = v0[22];
  v13 = [objc_allocWithZone(MEMORY[0x1E69B8EC8]) init];
  v0[24] = v13;
  sub_1C4A881D8(i, v13);

  v14 = sub_1C4EF9BF8();
  [v13 setStartDate_];

  v15 = sub_1C4EF9BF8();
  [v13 setEndDate_];

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1C4A87B90;
  v16 = swift_continuation_init();
  v0[17] = sub_1C456902C(&qword_1EC0C2550, &unk_1C4F4AF90);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1C4A87FAC;
  v0[13] = &unk_1F43F7350;
  v0[14] = v16;
  [v12 transactionsForRequest:v13 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1C4A87B90()
{
  v1 = *v0;
  sub_1C43FBDAC();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1C4A87C68, 0, 0);
}

uint64_t sub_1C4A87C68()
{
  v1 = *(v0 + 144);

  if (v1)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v2 = sub_1C4F00968();
    v3 = sub_1C4F01CF8();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 192);
    if (v4)
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = sub_1C4428DA0(v1);

      sub_1C44065F4(&dword_1C43F8000, v7, v8, "Number of transactions = %ld");
      MEMORY[0x1C6942830](v6, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v2 = *(v0 + 192);
  }

  v9 = *(v0 + 8);

  return v9(v1);
}

uint64_t sub_1C4A87FAC(uint64_t a1, uint64_t a2)
{
  v3 = *sub_1C4409678((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_1C4A88240();
    v4 = sub_1C4F01678();
  }

  else
  {
    v4 = 0;
  }

  return sub_1C4A88014(v3, v4);
}

uint64_t sub_1C4A88034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C4A880E4;

  return sub_1C4A8780C(a1, a2, a3);
}

uint64_t sub_1C4A880E4(uint64_t a1)
{
  v3 = *v1;
  sub_1C43FBDAC();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(a1);
}

void sub_1C4A881D8(uint64_t a1, void *a2)
{
  v3 = sub_1C4F01AA8();
  [a2 setTransactionSourceIdentifiers_];
}

unint64_t sub_1C4A88240()
{
  result = qword_1EC0C2558;
  if (!qword_1EC0C2558)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC0C2558);
  }

  return result;
}

uint64_t sub_1C4A88284(void *a1)
{
  v1 = [a1 deviceTransactionSourceIdentifiers];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C4F01AB8();

  return v3;
}

void sub_1C4A8832C(uint64_t a1)
{
  sub_1C45F6D88(319);
  if (v1 <= 0x3F)
  {
    sub_1C4A8840C(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ActivityModelDataSource(319);
      if (v3 <= 0x3F)
      {
        sub_1C4A88474(319);
        if (v4 <= 0x3F)
        {
          sub_1C4A884D8(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C4A8840C(uint64_t a1)
{
  if (!qword_1EC0C2570)
  {
    sub_1C4461BB8(255, &qword_1EC0C2558, 0x1E69B8EA8);
    v1 = sub_1C4F017A8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC0C2570);
    }
  }
}

void sub_1C4A88474(uint64_t a1)
{
  if (!qword_1EC0C2578)
  {
    sub_1C4572308(&qword_1EC0C2580, qword_1C4F4AFC0);
    v1 = sub_1C4F01F48();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC0C2578);
    }
  }
}

void sub_1C4A884D8(uint64_t a1)
{
  if (!qword_1EC0C2588)
  {
    type metadata accessor for GEOPOICategory(255);
    v1 = sub_1C4F00FA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC0C2588);
    }
  }
}

uint64_t sub_1C4A88540@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v38 = a2;
  sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v34 = v7;
  v35 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v36 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v37 = &v33 - v10;
  v11 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  sub_1C445FFF0(a1, &v33 - v13, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  sub_1C442E860(v3 + 16, v41);
  v15 = *(v3 + 96);
  v16 = type metadata accessor for TransactionsAsyncSequence(0);
  *(a3 + v16[5]) = MEMORY[0x1E69E7CC0];
  v17 = v16[8];
  type metadata accessor for GEOPOICategory(0);

  *(a3 + v17) = sub_1C4F00F28();
  *(a3 + v16[9]) = 0;
  *(a3 + v16[10]) = 0;
  sub_1C445FFF0(v14, a3, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  v18 = &off_1E81F1000;
  v19 = v15;
  if (!v15)
  {
    v33 = type metadata accessor for ActivityModelDataSource(0);
    v20 = v35;
    v21 = *(v34 + 16);
    v21(v37, v14, v35);
    v22 = v36;
    v23 = v20;
    v18 = &off_1E81F1000;
    v21(v36, &v14[*(v11 + 36)], v23);
    sub_1C445FFF0(v41, v40, &unk_1EC0B84C8, &qword_1C4F0CE10);
    v24 = [objc_allocWithZone(MEMORY[0x1E69B8DB8]) init];
    v39[3] = sub_1C4461BB8(0, &qword_1EDDF0450, 0x1E69B8DB8);
    v39[4] = &off_1F43F7318;
    v39[0] = v24;
    v25 = sub_1C4F01108();
    LODWORD(v24) = sub_1C44C1028(v25);

    v19 = sub_1C4574C14(v37, v22, 0, v40, v39, v24);
  }

  *(a3 + v16[6]) = v19;
  v26 = v38;
  *(a3 + v16[11]) = v38 & 1;
  if (v26)
  {
    v27 = objc_allocWithZone(MEMORY[0x1E69A2208]);

    v28 = [v27 v18[18]];

    if (v28)
    {
      v29 = sub_1C4461BB8(0, &qword_1EDDF0570, 0x1E69A2208);
      v30 = &off_1F43EDB88;
    }

    else
    {
      v29 = 0;
      v30 = 0;
    }
  }

  else
  {
    v29 = 0;
    v30 = 0;
    v28 = 0;
  }

  sub_1C4420C3C(v41, &unk_1EC0B84C8, &qword_1C4F0CE10);
  result = sub_1C4420C3C(v14, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  v32 = (a3 + v16[7]);
  *v32 = v28;
  v32[1] = 0;
  v32[2] = 0;
  v32[3] = v29;
  v32[4] = v30;
  return result;
}

void sub_1C4A888EC(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  v13 = type metadata accessor for TransactionContent(0);
  v14 = (a4 + v13[5]);
  *v14 = 0;
  v14[1] = 0;
  v15 = (a4 + v13[6]);
  *v15 = 0;
  v15[1] = 0;
  v16 = v13[7];
  *(a4 + v16) = 2;
  v17 = v13[8];
  *(a4 + v17) = 2;
  v18 = (a4 + v13[9]);
  *v18 = 0;
  v18[1] = 0;
  v51 = v18;
  v52 = v17;
  v19 = [a1 transactionDate];
  if (!v19)
  {
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v19;
  sub_1C4EF9C78();

  (*(v8 + 32))(a4, v12, v6);
  v21 = sub_1C4435278();
  if (!v21)
  {
LABEL_20:

    v49 = a2;
    v48 = a3;
LABEL_23:
    v50 = (a4 + v13[10]);
    *v50 = v49;
    v50[1] = v48;
    return;
  }

  v22 = sub_1C4435278();
  if (!v22)
  {
    goto LABEL_25;
  }

  v23 = v22;
  [v22 category];

  v24 = PKMerchantCategoryToString();
  if (v24)
  {
    v25 = v24;
    v26 = sub_1C4F01138();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  *v14 = v26;
  v14[1] = v28;
  v29 = sub_1C4435278();
  if (!v29)
  {
    goto LABEL_26;
  }

  *v15 = sub_1C4A8AC6C(v29);
  v15[1] = v30;
  v31 = sub_1C4435278();
  if (!v31)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v32 = v31;
  v33 = [v31 mapsMerchant];

  if (v33)
  {
  }

  *(a4 + v16) = v33 != 0;
  v34 = sub_1C4435278();
  if (!v34)
  {
    goto LABEL_28;
  }

  v35 = v34;
  v36 = [v34 mapsBrand];

  if (v36)
  {
  }

  *(a4 + v52) = v36 != 0;
  v37 = sub_1C4435278();
  if (!v37)
  {
    goto LABEL_29;
  }

  v38 = v37;
  v39 = [v37 mapsMerchant];

  if (!v39)
  {
    goto LABEL_20;
  }

  v40 = sub_1C4435278();
  if (!v40)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v41 = v40;
  v42 = [v40 mapsMerchant];

  if (v42)
  {
    [v42 category];

    v43 = PKMerchantCategoryToString();
    if (v43)
    {
      v44 = v43;
      v45 = sub_1C4F01138();
      v47 = v46;
    }

    else
    {

      v45 = 0;
      v47 = 0;
    }

    v49 = a2;
    v48 = a3;
    *v51 = v45;
    v51[1] = v47;
    goto LABEL_23;
  }

LABEL_31:
  __break(1u);
}

uint64_t sub_1C4A88C48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746361736E617274 && a2 == 0xEF657461446E6F69;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000001C4FAEBB0 == a2;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000001C4FAEBD0 == a2;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001FLL && 0x80000001C4FAEBF0 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD00000000000001CLL && 0x80000001C4FAEC10 == a2;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000014 && 0x80000001C4FAEC30 == a2;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x6765746143696F70 && a2 == 0xEB0000000079726FLL)
            {

              return 6;
            }

            else
            {
              v12 = sub_1C4F02938();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C4A88E88(char a1)
{
  result = 0x746361736E617274;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD00000000000001FLL;
      break;
    case 4:
      result = 0xD00000000000001CLL;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0x6765746143696F70;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4A88F80(void *a1)
{
  v3 = sub_1C456902C(&qword_1EC0C25C8, &qword_1C4F4B128);
  sub_1C43FCDF8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13[-v7];
  sub_1C4409678(a1, a1[3]);
  sub_1C4A8AE40();
  sub_1C4F02BF8();
  v13[15] = 0;
  sub_1C4EF9CD8();
  sub_1C440B088();
  sub_1C4498F90(v9, v10, MEMORY[0x1E6969538]);
  sub_1C4402150();
  sub_1C4F027E8();
  if (!v1)
  {
    v11 = type metadata accessor for TransactionContent(0);
    sub_1C4404338(v11[5]);
    v13[14] = 1;
    sub_1C4402150();
    sub_1C4F02738();
    sub_1C4404338(v11[6]);
    v13[13] = 2;
    sub_1C4402150();
    sub_1C4F02738();
    v13[12] = 3;
    sub_1C4402150();
    sub_1C4F02748();
    v13[11] = 4;
    sub_1C4402150();
    sub_1C4F02748();
    sub_1C4404338(v11[9]);
    v13[10] = 5;
    sub_1C4402150();
    sub_1C4F02738();
    sub_1C4404338(v11[10]);
    v13[9] = 6;
    sub_1C4402150();
    sub_1C4F02738();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1C4A891E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v36 = v5;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v9 = v8 - v7;
  v34 = sub_1C456902C(&qword_1EC0C25B8, &qword_1C4F4B120);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v10);
  v11 = type metadata accessor for TransactionContent(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  v35 = v14 - v13;
  v37 = a1;
  sub_1C4409678(a1, a1[3]);
  sub_1C4A8AE40();
  sub_1C4F02BC8();
  if (v2)
  {
    sub_1C440962C(a1);
  }

  else
  {
    sub_1C440B088();
    sub_1C4498F90(v15, v16, MEMORY[0x1E6969558]);
    sub_1C4F026C8();
    (*(v36 + 32))(v35, v9, v4);
    sub_1C4400A9C();
    v17 = sub_1C4F02618();
    v18 = (v35 + v11[5]);
    *v18 = v17;
    v18[1] = v19;
    sub_1C4400A9C();
    v20 = sub_1C4F02618();
    v21 = (v35 + v11[6]);
    *v21 = v20;
    v21[1] = v22;
    sub_1C4400A9C();
    *(v35 + v11[7]) = sub_1C4F02628();
    sub_1C4400A9C();
    *(v35 + v11[8]) = sub_1C4F02628();
    sub_1C4400A9C();
    v23 = sub_1C4F02618();
    v24 = (v35 + v11[9]);
    *v24 = v23;
    v24[1] = v25;
    sub_1C4400A9C();
    v26 = sub_1C4F02618();
    v27 = sub_1C44135F8();
    v29 = v28;
    v30(v27, v34);
    v31 = (v35 + v11[10]);
    *v31 = v26;
    v31[1] = v29;
    sub_1C4A8AE94(v35, a2, type metadata accessor for TransactionContent);
    sub_1C440962C(v37);
    return sub_1C4A8AEF4(v35, type metadata accessor for TransactionContent);
  }
}

uint64_t sub_1C4A89674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4A88C48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4A8969C(uint64_t a1)
{
  v2 = sub_1C4A8AE40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4A896D8(uint64_t a1)
{
  v2 = sub_1C4A8AE40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4A89784()
{
  sub_1C43FBCD4();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_1C4EF9CD8();
  v1[5] = v3;
  v1[6] = *(v3 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

id sub_1C4A89844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1C43FBDC8();
  v13 = *(v12 + 32);
  v14 = type metadata accessor for TransactionsAsyncSequence(0);
  *(v12 + 72) = v14;
  v15 = v14[10];
  *(v12 + 112) = v15;
  if (*(v13 + v15))
  {
    v16 = *(v13 + v14[9]);
    v17 = *(v13 + v14[5]);
    if (v17 >> 62)
    {
      v18 = sub_1C4405C30();
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v16 < v18)
    {
      sub_1C4431590(v16, (v17 & 0xC000000000000001) == 0, v17);
      if ((v17 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1C6940F90](v16, v17);
      }

      else
      {
        v19 = *(v17 + 8 * v16 + 32);
      }

      sub_1C440D6FC();
      v21 = [v20 merchant];
      v22 = v21;
      if (v21)
      {
        v23 = [v21 mapsMerchant];

        if (v23)
        {
          v24 = [v23 identifier];

          *(v12 + 16) = v24;
          v25 = sub_1C4F02858();
          v27 = sub_1C442BE08(v25, v26);

          if (v27)
          {
            v22 = sub_1C4F01138();
          }

          else
          {
            v22 = 0;
          }
        }

        else
        {
          v22 = 0;
        }
      }

      result = sub_1C442E494();
      if (result)
      {
        v35 = result;
        sub_1C4EF9C78();

        result = sub_1C442E494();
        if (result)
        {
          sub_1C4417634();

          v36 = sub_1C456902C(&qword_1EC0C0040, &qword_1C4F4B090);
          sub_1C4400AAC(v36);
          v37 = sub_1C440E660();
          (v22)(v37);
          v38 = sub_1C44035C4();
          (v22)(v38);
          v31 = sub_1C440F9F8();
          goto LABEL_20;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return result;
    }

    sub_1C456902C(&qword_1EC0C0040, &qword_1C4F4B090);
    v31 = sub_1C43FDC84();
LABEL_20:
    sub_1C440BAA8(v31, v32, v33, v34);

    sub_1C43FBDA0();
    sub_1C43FEA3C();

    return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12);
  }

  sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v28 = swift_task_alloc();
  *(v12 + 80) = v28;
  *v28 = v12;
  v28[1] = sub_1C4A89B28;
  sub_1C43FEA3C();

  return sub_1C45755C0();
}

uint64_t sub_1C4A89B28()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 88) = v3;

  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

id sub_1C4A89C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1C43FBDC8();
  v13 = v12[11];
  v14 = v12[9];
  v15 = v12[4];
  v16 = *(v14 + 20);

  *(v15 + v16) = v13;
  if (*(v15 + *(v14 + 44)) == 1)
  {
    v17 = swift_task_alloc();
    v12[12] = v17;
    *v17 = v12;
    v17[1] = sub_1C4A89F00;
    sub_1C43FEA3C();

    return sub_1C4A8A210();
  }

  type metadata accessor for GEOPOICategory(0);
  v20 = sub_1C4F00F28();
  sub_1C441CCB8();
  sub_1C4412290();
  if (v21)
  {
    v22 = sub_1C4405C30();
  }

  else
  {
    v22 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v20 < v22)
  {
    sub_1C4431590(v20, (v14 & 0xC000000000000001) == 0, v14);
    if ((v14 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1C6940F90](v20, v14);
    }

    else
    {
      v23 = *(v14 + 8 * v20 + 32);
    }

    sub_1C440D6FC();
    v25 = [v24 merchant];
    v26 = v25;
    if (v25)
    {
      v27 = [v25 mapsMerchant];

      if (v27)
      {
        v28 = [v27 identifier];

        v12[2] = v28;
        v29 = sub_1C4F02858();
        v31 = sub_1C442BE08(v29, v30);

        if (v31)
        {
          v26 = sub_1C4F01138();
        }

        else
        {
          v26 = 0;
        }
      }

      else
      {
        v26 = 0;
      }
    }

    result = sub_1C442E494();
    if (result)
    {
      v36 = result;
      sub_1C4EF9C78();

      result = sub_1C442E494();
      if (result)
      {
        sub_1C4417634();

        v37 = sub_1C456902C(&qword_1EC0C0040, &qword_1C4F4B090);
        sub_1C4400AAC(v37);
        v38 = sub_1C440E660();
        (v26)(v38);
        v39 = sub_1C44035C4();
        (v26)(v39);
        v32 = sub_1C440F9F8();
        goto LABEL_20;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  sub_1C456902C(&qword_1EC0C0040, &qword_1C4F4B090);
  v32 = sub_1C43FDC84();
LABEL_20:
  sub_1C440BAA8(v32, v33, v34, v35);

  sub_1C43FBDA0();
  sub_1C43FEA3C();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12);
}

uint64_t sub_1C4A89F00()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 104) = v3;

  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

id sub_1C4A89FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1C43FBDC8();
  v14 = *(v13 + 104);
  sub_1C441CCB8();
  sub_1C4412290();
  if (v15)
  {
    v16 = sub_1C4405C30();
  }

  else
  {
    v16 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v14 < v16)
  {
    sub_1C4431590(v14, (v12 & 0xC000000000000001) == 0, v12);
    if ((v12 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1C6940F90](v14, v12);
    }

    else
    {
      v17 = *(v12 + 8 * v14 + 32);
    }

    sub_1C440D6FC();
    v19 = [v18 merchant];
    v20 = v19;
    if (v19)
    {
      v21 = [v19 mapsMerchant];

      if (v21)
      {
        v22 = [v21 identifier];

        *(v13 + 16) = v22;
        v23 = sub_1C4F02858();
        v25 = sub_1C442BE08(v23, v24);

        if (v25)
        {
          v20 = sub_1C4F01138();
        }

        else
        {
          v20 = 0;
        }
      }

      else
      {
        v20 = 0;
      }
    }

    result = sub_1C442E494();
    if (result)
    {
      v31 = result;
      sub_1C4EF9C78();

      result = sub_1C442E494();
      if (result)
      {
        sub_1C4417634();

        v32 = sub_1C456902C(&qword_1EC0C0040, &qword_1C4F4B090);
        sub_1C4400AAC(v32);
        v33 = sub_1C440E660();
        (v20)(v33);
        v34 = sub_1C44035C4();
        (v20)(v34);
        v26 = sub_1C440F9F8();
        goto LABEL_16;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  sub_1C456902C(&qword_1EC0C0040, &qword_1C4F4B090);
  v26 = sub_1C43FDC84();
LABEL_16:
  sub_1C440BAA8(v26, v27, v28, v29);

  sub_1C43FBDA0();
  sub_1C43FEA3C();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12);
}

uint64_t sub_1C4A8A210()
{
  sub_1C43FBCD4();
  v1[12] = v2;
  v1[13] = v0;
  v3 = sub_1C4F00978();
  v1[14] = v3;
  v1[15] = *(v3 - 8);
  v1[16] = swift_task_alloc();
  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C4A8A2C4()
{
  v1 = *(v0 + 104);
  v2 = type metadata accessor for TransactionsAsyncSequence(0);
  sub_1C445FFF0(v1 + *(v2 + 28), v0 + 56, &qword_1EC0C2598, &unk_1C4F4B0A0);
  if (*(v0 + 80))
  {
    v3 = *(v0 + 96);
    sub_1C441D670((v0 + 56), v0 + 16);
    result = sub_1C4428DA0(v3);
    if (result)
    {
      v5 = result;
      if (result < 1)
      {
        __break(1u);
        return result;
      }

      v6 = 0;
      v7 = *(v0 + 96);
      v8 = v7 & 0xC000000000000001;
      v30 = v7 + 32;
      v9 = MEMORY[0x1E69E7CC0];
      do
      {
        if (v8)
        {
          v10 = MEMORY[0x1C6940F90](v6, *(v0 + 96));
        }

        else
        {
          v10 = *(v30 + 8 * v6);
        }

        v11 = v10;
        v12 = [v10 merchant];
        if (v12 && (v13 = v12, v14 = [v12 mapsMerchant], v13, v14))
        {
          v15 = [v14 identifier];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C458A7C8();
            v9 = v17;
          }

          v16 = *(v9 + 16);
          if (v16 >= *(v9 + 24) >> 1)
          {
            sub_1C458A7C8();
            v9 = v18;
          }

          *(v9 + 16) = v16 + 1;
          *(v9 + 8 * v16 + 32) = v15;
        }

        else
        {
        }

        ++v6;
      }

      while (v5 != v6);
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
    }

    *(v0 + 136) = v9;
    v27 = *(v0 + 40);
    v28 = *(v0 + 48);
    sub_1C4409678((v0 + 16), v27);
    v31 = (*(v28 + 16) + **(v28 + 16));
    v29 = swift_task_alloc();
    *(v0 + 144) = v29;
    *v29 = v0;
    v29[1] = sub_1C4A8A6B4;

    return v31(v9, v27, v28);
  }

  else
  {
    sub_1C4420C3C(v0 + 56, &qword_1EC0C2598, &unk_1C4F4B0A0);
    sub_1C4F00198();
    v19 = sub_1C4F00968();
    v20 = sub_1C4F01CC8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1C43F8000, v19, v20, "geoMapService is nil", v21, 2u);
      MEMORY[0x1C6942830](v21, -1, -1);
    }

    v23 = *(v0 + 120);
    v22 = *(v0 + 128);
    v24 = *(v0 + 112);

    (*(v23 + 8))(v22, v24);
    type metadata accessor for GEOPOICategory(0);
    v25 = sub_1C4F00F28();

    v26 = *(v0 + 8);

    return v26(v25);
  }
}

uint64_t sub_1C4A8A6B4()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 152) = v3;

  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C4A8A79C()
{
  sub_1C43FBCD4();
  v1 = v0[19];
  if (!v1)
  {
    type metadata accessor for GEOPOICategory(0);
    v1 = sub_1C4F00F28();
  }

  sub_1C440962C(v0 + 2);

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_1C4A8A8AC()
{
  sub_1C43FBCD4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C4A8A940;

  return sub_1C4A89784();
}

uint64_t sub_1C4A8A940()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();

  sub_1C43FBDA0();

  return v0();
}

uint64_t sub_1C4A8AA2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_1C4A8AAF8;

  return (sub_1C4982824)(a1, a2, a3, v3 + 16);
}

uint64_t sub_1C4A8AAF8()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();

  sub_1C43FBDA0();

  return v0();
}

uint64_t sub_1C4A8AC6C(void *a1)
{
  v2 = [a1 detailedCategory];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1C4F01138();

  return v3;
}

uint64_t sub_1C4A8AD04(uint64_t a1)
{
  v1 = sub_1C4EF9CD8();
  if (v2 <= 0x3F)
  {
    sub_1C44FCC6C(319, &qword_1EDDFEAB0, MEMORY[0x1E69E6158]);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_1C44FCC6C(319, &qword_1EDDFEA48, MEMORY[0x1E69E6370]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

unint64_t sub_1C4A8ADDC()
{
  result = qword_1EC0C25B0;
  if (!qword_1EC0C25B0)
  {
    sub_1C4572308(&qword_1EC0BFE70, &unk_1C4F3DDF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C25B0);
  }

  return result;
}

unint64_t sub_1C4A8AE40()
{
  result = qword_1EC0C25C0;
  if (!qword_1EC0C25C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C25C0);
  }

  return result;
}

uint64_t sub_1C4A8AE94(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C4A8AEF4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for TransactionContent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4A8B02C()
{
  result = qword_1EC0C25D0;
  if (!qword_1EC0C25D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C25D0);
  }

  return result;
}

unint64_t sub_1C4A8B084()
{
  result = qword_1EC0C25D8;
  if (!qword_1EC0C25D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C25D8);
  }

  return result;
}

unint64_t sub_1C4A8B0DC()
{
  result = qword_1EC0C25E0;
  if (!qword_1EC0C25E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C25E0);
  }

  return result;
}

uint64_t sub_1C4A8B130()
{
  sub_1C440962C((v0 + 16));
  sub_1C440962C((v0 + 56));

  return v0;
}

uint64_t sub_1C4A8B160()
{
  sub_1C4A8B130();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4A8B1E0(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *(a1 + 2);
  *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore17PeopleEmailSignal____lazy_storage___featureNames) = 0;
  *(v3 + 16) = v5;
  *(v3 + 32) = v6;
  *(v3 + 40) = *(a1 + 24);
  sub_1C463F300(a2, v3 + OBJC_IVAR____TtC24IntelligencePlatformCore17PeopleEmailSignal_config);
  *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore17PeopleEmailSignal_store) = a3;
  return v3;
}

uint64_t sub_1C4A8B24C()
{
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore17PeopleEmailSignal____lazy_storage___featureNames;
  if (*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore17PeopleEmailSignal____lazy_storage___featureNames))
  {
    v2 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore17PeopleEmailSignal____lazy_storage___featureNames);
  }

  else
  {
    v3 = v0;
    v15 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0(0, 2, 0);
    v4 = v15;
    v6 = *(v15 + 16);
    v5 = *(v15 + 24);
    v7 = v5 >> 1;
    v8 = v6 + 1;
    if (v5 >> 1 <= v6)
    {
      v13 = sub_1C43FCFE8(v5);
      sub_1C44CD9C0(v13, v6 + 1, 1);
      v4 = v15;
      v5 = *(v15 + 24);
      v7 = v5 >> 1;
    }

    *(v4 + 16) = v8;
    v9 = v4 + 16 * v6;
    *(v9 + 32) = 0x6B726F57656D6173;
    *(v9 + 40) = 0xEF6C69616D457942;
    v10 = v6 + 2;
    if (v7 <= v8)
    {
      v14 = sub_1C43FCFE8(v5);
      sub_1C44CD9C0(v14, v10, 1);
      v4 = v15;
    }

    *(v4 + 16) = v10;
    v11 = v4 + 16 * v8;
    *(v11 + 32) = 0xD000000000000011;
    *(v11 + 40) = 0x80000001C4FAECD0;
    v2 = sub_1C4499940();
    *(v3 + v1) = v2;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v2;
}

uint64_t sub_1C4A8CB78(uint64_t *a1)
{
  sub_1C4415EA8();
  if (sub_1C4F02048())
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1C4F013F8();
  }

  return v1 & 1;
}

uint64_t sub_1C4A8CC14(uint64_t *a1)
{
  sub_1C4415EA8();
  if (sub_1C4F02048())
  {
    v1 = 0;
  }

  else
  {
    v1 = sub_1C4F013F8() ^ 1;
  }

  return v1 & 1;
}

uint64_t sub_1C4A8CCB4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  sub_1C479B3C8(sub_1C4A8ED60);
  if (v9)
  {
    v10 = *(a4 + OBJC_IVAR____TtC24IntelligencePlatformCore17PeopleEmailSignal_config);
    v11 = *(a4 + OBJC_IVAR____TtC24IntelligencePlatformCore17PeopleEmailSignal_config + 8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v12 = sub_1C4EFF048();
    v14 = v13;
    v15 = objc_allocWithZone(MEMORY[0x1E69A9EA8]);
    v16 = sub_1C4673B1C(v10, v11, 0xD000000000000011, 0x80000001C4FAECD0, v12, v14);
    v17 = [objc_opt_self() featureValueWithInt64_];
    sub_1C4589070();
    v18 = *(*a3 + 16);
    sub_1C4589A64();
    v19 = *a3;
    *(v19 + 16) = v18 + 1;
    v20 = v19 + 16 * v18;
    *(v20 + 32) = v16;
    *(v20 + 40) = v17;
  }

  MEMORY[0x1EEE9AC00](v9);
  sub_1C479B3C8(sub_1C4A34330);
  if (v21)
  {
    v22 = *(a4 + OBJC_IVAR____TtC24IntelligencePlatformCore17PeopleEmailSignal_config);
    v23 = *(a4 + OBJC_IVAR____TtC24IntelligencePlatformCore17PeopleEmailSignal_config + 8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v24 = sub_1C4EFF048();
    v26 = v25;
    v27 = objc_allocWithZone(MEMORY[0x1E69A9EA8]);
    v28 = sub_1C4673B1C(v22, v23, 0x6B726F57656D6173, 0xEF6C69616D457942, v24, v26);
    v29 = [objc_opt_self() featureValueWithInt64_];
    sub_1C4589070();
    v30 = *(*a6 + 16);
    sub_1C4589A64();
    v31 = *a6;
    *(v31 + 16) = v30 + 1;
    v32 = v31 + 16 * v30;
    *(v32 + 32) = v28;
    *(v32 + 40) = v29;
  }

  return 1;
}

uint64_t sub_1C4A8CF30()
{

  sub_1C449F17C(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore17PeopleEmailSignal_config, _s10ViewConfigVMa);

  return v0;
}

uint64_t sub_1C4A8CFB8()
{
  sub_1C4A8CF30();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PeopleEmailSignal(uint64_t a1)
{
  result = qword_1EC0C25F0;
  if (!qword_1EC0C25F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4A8D064(uint64_t a1)
{
  result = _s10ViewConfigVMa(319);
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

uint64_t sub_1C4A8D118()
{
  sub_1C4A8B394();
  v1 = *(v0 + 8);

  return v1();
}

void sub_1C4A8D1F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v25 = a3;
  v22 = 0;
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
    v14 = v11 | (v5 << 6);
    v15 = (*(v25 + 48) + 16 * v14);
    v16 = v15[1];
    v24[0] = *v15;
    v24[1] = v16;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v17 = a4(v24);

    if (v4)
    {
      return;
    }

    if (v17)
    {
      *(result + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:
        v19 = v25;

        sub_1C4A8D90C(result, a2, v22, v19);
        return;
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
}