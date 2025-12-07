uint64_t sub_1DD293628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1DD28EFFC();
  if (v5)
  {
    return *(*(a3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

double OUTLINED_FUNCTION_63_6@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 + 88) = a2;
  *(v2 + 96) = a1;
  result = 0.0;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  *(v2 + 176) = 0u;
  *(v2 + 192) = 0u;
  *(v2 + 208) = 0u;
  *(v2 + 224) = 0;
  return result;
}

uint64_t *OUTLINED_FUNCTION_63_7@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  a11 = a1;
  a12 = a2;
  a8 = v16;
  a9 = v14;
  a10 = v15;
  v18 = *(v12 + 8);
  a6 = v13;
  a7 = v18;

  return __swift_allocate_boxed_opaque_existential_1(&a3);
}

uint64_t sub_1DD293740@<X0>(unint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v24 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v22 = &v22 - v9;
  v10 = swift_getAssociatedTypeWitness();
  v11 = sub_1DD336AD0();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v22 - v14;
  v16 = *(v10 - 8);
  result = MEMORY[0x1EEE9AC00](v13);
  v19 = &v22 - v18;
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*(a2 + 16) <= a1)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  sub_1DD2892A8(a2 + 40 * a1 + 32, v25, &qword_1ECCD7090, &qword_1DD33CA20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7090, &qword_1DD33CA20);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v10);
    (*(v16 + 32))(v19, v15, v10);
    (*(a4 + 48))(v19, a3, a4);
    (*(v16 + 8))(v19, v10);
    v20 = v24;
    v21 = swift_dynamicCast() ^ 1;
  }

  else
  {
    v21 = 1;
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v10);
    (*(v12 + 8))(v15, v11);
    v20 = v24;
  }

  return __swift_storeEnumTagSinglePayload(v20, v21, 1, a3);
}

uint64_t sub_1DD293A48@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = static Data.fromDatatypeValue(_:)(a2);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static Data.fromDatatypeValue(_:)(void *a1)
{

  return sub_1DD293A9C(v1);
}

uint64_t sub_1DD293A9C(uint64_t a1)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7050, &unk_1DD33BA50);
  v8 = sub_1DD293B40();
  v6[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v6, v7);
  sub_1DD293BA4(*v2 + 32, *v2 + 32 + *(*v2 + 16), &v5);
  v3 = v5;
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v3;
}

unint64_t sub_1DD293B40()
{
  result = qword_1EE027EC8;
  if (!qword_1EE027EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCD7050, &unk_1DD33BA50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE027EC8);
  }

  return result;
}

uint64_t sub_1DD293BA4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_1DD334730();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x1E12AA590]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x1E12AA5A0]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_88_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1DD334C30();
}

void *OUTLINED_FUNCTION_88_4()
{

  return memcpy((v1 - 248), v0, 0xA8uLL);
}

uint64_t Row.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *v4;
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = v5;
  return Row.get<A>(_:)(&v7, a2, a3, a4);
}

uint64_t OUTLINED_FUNCTION_112_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, __int128 a33)
{

  return sub_1DD3148E8(&a33, &a17);
}

unint64_t sub_1DD293D4C()
{
  result = qword_1EE027F20;
  if (!qword_1EE027F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCD6618, &qword_1DD339320);
    sub_1DD28AEE0(&qword_1EE027F40, MEMORY[0x1E69D28B8], MEMORY[0x1E69D28C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE027F20);
  }

  return result;
}

uint64_t sub_1DD293E38@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = String.datatypeValue.getter(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_56_3()
{

  return sub_1DD3360E0();
}

uint64_t OUTLINED_FUNCTION_56_6(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_56_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  *v11 = a10;
  *(v11 + 8) = a11;

  return __swift_destroy_boxed_opaque_existential_1((v12 - 120));
}

uint64_t OUTLINED_FUNCTION_56_8(uint64_t a1)
{

  return sub_1DD28C87C(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_93()
{
  v2 = *(v0 - 256);
  v3 = *(v0 - 312);

  return sub_1DD28B488(v2, v3);
}

uint64_t OUTLINED_FUNCTION_93_0()
{
}

uint64_t OUTLINED_FUNCTION_93_2()
{

  return sub_1DD336AD0();
}

double sub_1DD293FA8@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void static Date.fromDatatypeValue(_:)(uint64_t a1, uint64_t a2)
{
  if (qword_1EE027F28 != -1)
  {
    OUTLINED_FUNCTION_0_13(&qword_1EE027F28);
  }

  swift_beginAccess();
  v2 = qword_1EE027F30;
  v3 = sub_1DD3365A0();
  v4 = [v2 dateFromString_];

  if (v4)
  {
    sub_1DD3347F0();
  }

  else
  {
    __break(1u);
  }
}

uint64_t OUTLINED_FUNCTION_40_1(uint64_t a1, uint64_t a2)
{

  return sub_1DD336E00();
}

uint64_t OUTLINED_FUNCTION_40_2()
{

  return sub_1DD28B488(v0, v1);
}

uint64_t OUTLINED_FUNCTION_40_4(uint64_t a1)
{

  return sub_1DD336040();
}

void OUTLINED_FUNCTION_40_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_55_2@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = a1;
  *(v3 - 296) = v2;

  return sub_1DD335F10();
}

uint64_t OUTLINED_FUNCTION_55_4(uint64_t a1)
{
  *(v2 - 96) = v1;

  return sub_1DD336550();
}

uint64_t OUTLINED_FUNCTION_55_5@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_55_6(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1DD336AD0();
}

uint64_t OUTLINED_FUNCTION_132(uint64_t a1, _BYTE *a2)
{
  *a2 = 0;

  return swift_willThrow();
}

void sub_1DD294278(void *a1, void *a2, uint64_t (*a3)(unint64_t), uint64_t (*a4)(unint64_t))
{
  v184 = a3;
  v189 = sub_1DD334C50();
  OUTLINED_FUNCTION_1_0();
  v178 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_12();
  v11 = v10 - v9;
  v187 = sub_1DD334830();
  OUTLINED_FUNCTION_1_0();
  v166 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_6();
  v165 = v14;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_32_1();
  v170 = v16;
  v183 = sub_1DD335E90();
  OUTLINED_FUNCTION_1_0();
  v177 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_12();
  v182 = v20 - v19;
  v185 = sub_1DD3360E0();
  OUTLINED_FUNCTION_1_0();
  v175 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_6();
  v191 = v23;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_32_1();
  v173 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6EA0, &unk_1DD33AB18);
  v27 = OUTLINED_FUNCTION_36(v26);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_6();
  v188 = v28;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_32_1();
  v190 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A0, &unk_1DD338D70);
  v32 = OUTLINED_FUNCTION_36(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_6();
  v169 = v33;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v34);
  v181 = &v164 - v35;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v36);
  v186 = &v164 - v37;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_32_1();
  v180 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6350, &unk_1DD3396F0);
  v41 = OUTLINED_FUNCTION_36(v40);
  v42 = MEMORY[0x1EEE9AC00](v41);
  v44 = &v164 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_32_1();
  v179 = v45;
  v164 = sub_1DD335ED0();
  v46 = sub_1DD3360A0();
  v47 = sub_1DD3360A0();
  v192 = v46;
  sub_1DD295230(v47);
  sub_1DD2953AC();
  v49 = sub_1DD295CF4(v48);
  v50 = sub_1DD336010();
  v52 = v51;
  v54 = v50 == sub_1DD336010() && v52 == v53;
  v171 = a1;
  if (v54)
  {
  }

  else
  {
    v55 = sub_1DD336E00();

    if ((v55 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v59 = sub_1DD335F20();
  if (v59 == 0xD000000000000010 && 0x80000001DD33D1A0 == v60)
  {
    v63 = a2;
    goto LABEL_16;
  }

  v62 = OUTLINED_FUNCTION_4_10(v59);

  if (v62)
  {
LABEL_14:
    v63 = a2;
LABEL_17:

    v64 = sub_1DD335F20();
    if (v64 == 0xD000000000000010 && 0x80000001DD33D1A0 == v65)
    {

      v68 = a1;
      v69 = v63;
    }

    else
    {
      v67 = OUTLINED_FUNCTION_4_10(v64);

      if (v67)
      {
        v68 = a1;
      }

      else
      {
        v68 = v63;
      }

      if (v67)
      {
        v69 = v63;
      }

      else
      {
        v69 = a1;
      }
    }

    v70 = a1;
    v71 = v63;
    sub_1DD335ED0();
    v72 = sub_1DD335700();
    v74 = v73;

    sub_1DD334CA0();
    swift_allocObject();
    v75 = MEMORY[0x1E12AAAE0](v72, v74);
    sub_1DD335ED0();
    v184 = v75;
    OUTLINED_FUNCTION_14_10(v75);

    sub_1DD335ED0();
    v76 = sub_1DD3356F0();

    v77 = *(v76 + 16);
    v78 = v69;
    if (!v77)
    {

LABEL_42:
      v90 = MEMORY[0x1E12AABB0](v184);
      if (v90)
      {
        v91 = v90;

        v164 = v91;
      }

      sub_1DD3360A0();
      sub_1DD2953AC();
      v93 = v92;
      sub_1DD3360A0();
      sub_1DD2953AC();
      v95 = sub_1DD2FC7F8(v94, v93);
      v189 = sub_1DD295CF4(v95);

      goto LABEL_56;
    }

    v172 = v69;
    v174 = v68;
    v176 = v44;
    v79 = v178 + 16;
    v80 = *(v178 + 16);
    v81 = (*(v178 + 80) + 32) & ~*(v178 + 80);
    v178 = v76;
    v82 = v76 + v81;
    v83 = *(v79 + 56);
    v84 = (v79 - 8);
    v85 = v189;
    while (1)
    {
      v80(v11, v82, v85);
      v86 = sub_1DD334C40();
      if (v87)
      {
        if (v86 == 0x69746E655F707061 && v87 == 0xEF657079745F7974)
        {
        }

        else
        {
          v89 = sub_1DD336E00();

          if ((v89 & 1) == 0)
          {
            goto LABEL_39;
          }
        }

        sub_1DD334BA0();
      }

LABEL_39:
      v85 = v189;
      (*v84)(v11, v189);
      v82 += v83;
      if (!--v77)
      {

        v44 = v176;
        v68 = v174;
        v78 = v172;
        goto LABEL_42;
      }
    }
  }

  v63 = a2;
  v96 = sub_1DD335F20();
  if (v96 == 0xD000000000000010 && 0x80000001DD33D1A0 == v97)
  {
LABEL_16:

    goto LABEL_17;
  }

  v99 = OUTLINED_FUNCTION_4_10(v96);

  if (v99)
  {
    goto LABEL_14;
  }

LABEL_6:
  sub_1DD335ED0();
  sub_1DD334AA0();
  sub_1DD334DC0();
  v56 = v192;

  if (v56)
  {

    v57 = a1;
    v58 = a2;
  }

  else
  {
    sub_1DD335ED0();
    sub_1DD334DC0();
    v100 = v192;

    if (!v100)
    {
      goto LABEL_55;
    }

    v57 = a2;
    v58 = a1;
  }

  v101 = sub_1DD2FCA14(v57, v58, v184, a4);
  if (v101)
  {
    v102 = v101;

    v192 = v49;
    sub_1DD335860();

    sub_1DD295230(v103);
    sub_1DD2953AC();
    v189 = sub_1DD295CF4(v104);

    v78 = a1;
    v68 = a2;
    v164 = v102;
    goto LABEL_56;
  }

LABEL_55:
  v78 = a1;
  v68 = a2;
  v189 = v49;
LABEL_56:
  v178 = sub_1DD336010();
  v176 = v105;
  v184 = sub_1DD335F20();
  v180 = v106;
  v107 = sub_1DD336030();
  if (v108 >> 60 != 15)
  {
    sub_1DD28B488(v107, v108);
  }

  v172 = sub_1DD336080();
  v174 = v109;
  v110 = sub_1DD336030();
  if (v111 >> 60 != 15)
  {
    sub_1DD28B488(v110, v111);
  }

  sub_1DD336030();
  sub_1DD336040();
  v112 = sub_1DD335E60();
  __swift_getEnumTagSinglePayload(v44, 1, v112);
  sub_1DD296084(v44, &qword_1ECCD6350, &unk_1DD3396F0);
  sub_1DD336040();
  sub_1DD336050();
  sub_1DD335F90();
  sub_1DD335FD0();
  if (v113)
  {
    sub_1DD335FD0();
  }

  sub_1DD335F10();

  objc_allocWithZone(sub_1DD3360C0());
  sub_1DD335860();
  v184 = sub_1DD336000();
  v114 = sub_1DD335F10();

  v115 = 0;
  v117 = v114 + 64;
  v116 = *(v114 + 64);
  v174 = v114;
  v118 = 1 << *(v114 + 32);
  v119 = -1;
  if (v118 < 64)
  {
    v119 = ~(-1 << v118);
  }

  v120 = v119 & v116;
  v121 = (v118 + 63) >> 6;
  v172 = v175 + 16;
  v189 = (v175 + 32);
  LODWORD(v179) = *MEMORY[0x1E69D2868];
  v122 = v177++;
  v178 = (v122 + 13);
  v176 = (v175 + 8);
  v168 = (v166 + 4);
  ++v166;
  v123 = v185;
  v124 = v188;
  v125 = v190;
  v180 = v114 + 64;
  v167 = v121;
  if (!v120)
  {
    goto LABEL_82;
  }

  do
  {
    v151 = v115;
LABEL_86:
    v152 = __clz(__rbit64(v120));
    v120 &= v120 - 1;
    v153 = v152 | (v151 << 6);
    v154 = (v174[6] + 16 * v153);
    v156 = *v154;
    v155 = v154[1];
    v157 = v175;
    v158 = v173;
    (*(v175 + 16))(v173, v174[7] + *(v175 + 72) * v153, v123);
    v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD68E0, &qword_1DD339C68);
    v160 = *(v159 + 48);
    v161 = v188;
    *v188 = v156;
    *(v161 + 1) = v155;
    v162 = v158;
    v124 = v161;
    (*(v157 + 32))(&v161[v160], v162, v123);
    __swift_storeEnumTagSinglePayload(v124, 0, 1, v159);

    v125 = v190;
LABEL_87:
    sub_1DD2FF7D0(v124, v125);
    v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD68E0, &qword_1DD339C68);
    if (__swift_getEnumTagSinglePayload(v125, 1, v163) == 1)
    {

      return;
    }

    v126 = *v125;
    v127 = v125[1];
    (*v189)(v191, v125 + *(v163 + 48), v123);
    v128 = v182;
    v129 = v183;
    (*v178)(v182, v179, v183);
    v130 = sub_1DD335E80();
    v132 = v131;
    (*v177)(v128, v129);
    if (v126 == v130 && v127 == v132)
    {

      v125 = v190;
    }

    else
    {
      OUTLINED_FUNCTION_8_7();
      v134 = sub_1DD336E00();

      v125 = v190;
      if ((v134 & 1) == 0)
      {
        v135 = v181;
        v136 = v191;
        sub_1DD3360D0();
        OUTLINED_FUNCTION_8_7();
        sub_1DD335F80();
        v137 = v136;

        sub_1DD296084(v135, &qword_1ECCD62A0, &unk_1DD338D70);
        goto LABEL_80;
      }
    }

    v138 = v186;
    sub_1DD335EE0();
    v139 = v187;
    if (__swift_getEnumTagSinglePayload(v138, 1, v187) != 1)
    {
      v140 = *v168;
      v141 = v170;
      (*v168)(v170, v186, v139);
      v138 = v169;
      sub_1DD3360D0();
      v142 = v187;
      if (__swift_getEnumTagSinglePayload(v138, 1, v187) != 1)
      {
        v146 = v165;
        v140(v165, v138, v142);
        v147 = v142;
        sub_1DD3347E0();
        sub_1DD3347E0();
        v148 = v181;
        sub_1DD334790();
        __swift_storeEnumTagSinglePayload(v148, 0, 1, v142);
        OUTLINED_FUNCTION_8_7();
        sub_1DD335F80();

        sub_1DD296084(v148, &qword_1ECCD62A0, &unk_1DD338D70);
        v149 = *v166;
        v150 = v146;
        v125 = v190;
        (*v166)(v150, v147);
        v149(v170, v147);
        v137 = v191;
        v121 = v167;
        goto LABEL_79;
      }

      (*v166)(v141, v142);
      v125 = v190;
      v121 = v167;
    }

    sub_1DD296084(v138, &qword_1ECCD62A0, &unk_1DD338D70);
    v143 = v181;
    v144 = v191;
    sub_1DD3360D0();
    OUTLINED_FUNCTION_8_7();
    sub_1DD335F80();
    v137 = v144;

    sub_1DD296084(v143, &qword_1ECCD62A0, &unk_1DD338D70);
LABEL_79:
    v124 = v188;
LABEL_80:
    v123 = v185;
    (*v176)(v137, v185);
    v117 = v180;
  }

  while (v120);
LABEL_82:
  while (1)
  {
    v151 = v115 + 1;
    if (__OFADD__(v115, 1))
    {
      break;
    }

    if (v151 >= v121)
    {
      v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD68E0, &qword_1DD339C68);
      __swift_storeEnumTagSinglePayload(v124, 1, 1, v145);
      v120 = 0;
      goto LABEL_87;
    }

    v120 = *(v117 + 8 * v151);
    ++v115;
    if (v120)
    {
      v115 = v151;
      goto LABEL_86;
    }
  }

  __break(1u);
}

uint64_t sub_1DD295230(uint64_t a1)
{
  result = OUTLINED_FUNCTION_87(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1DD295334(result, 1, sub_1DD281748);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = sub_1DD335CE0();
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1DD295334(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

void sub_1DD2953AC()
{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_83_2();
  v4 = sub_1DD335CE0();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_10();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_105_0();
  sub_1DD295558(&qword_1EE0275E0, MEMORY[0x1E69D2800], MEMORY[0x1E69D2810]);
  OUTLINED_FUNCTION_91_0();
  v10 = *(v0 + 16);
  if (v10)
  {
    OUTLINED_FUNCTION_50_1();
    do
    {
      v2(v8, v1, v4);
      sub_1DD2955E8();
      v11 = OUTLINED_FUNCTION_85_0();
      v12(v11);
      v1 += v3;
      --v10;
    }

    while (v10);
  }

  else
  {
    OUTLINED_FUNCTION_32_0();
  }

  OUTLINED_FUNCTION_24_1();
}

uint64_t OUTLINED_FUNCTION_87_1()
{

  return sub_1DD334BA0();
}

uint64_t OUTLINED_FUNCTION_87_3()
{
  *(v2 - 160) = *(v2 - 184);
  *(v2 - 152) = v1;
  *(v2 - 144) = v0;
}

uint64_t sub_1DD295558(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DD2955A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1DD2955E8()
{
  OUTLINED_FUNCTION_23_0();
  v3 = sub_1DD335CE0();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_48_2();
  OUTLINED_FUNCTION_11_4();
  v7 = sub_1DD295864(v5, v6, MEMORY[0x1E69D2810]);
  OUTLINED_FUNCTION_55_4(v7);
  OUTLINED_FUNCTION_15_6();
  do
  {
    OUTLINED_FUNCTION_20_7();
    if (v8)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v13 = OUTLINED_FUNCTION_35_6();
      v14(v13);
      v15 = OUTLINED_FUNCTION_33_6();
      sub_1DD295958(v15, v16, v17);
      v18 = OUTLINED_FUNCTION_32_6();
      v19(v18);
      goto LABEL_7;
    }

    v9 = OUTLINED_FUNCTION_17_8();
    v2(v9);
    OUTLINED_FUNCTION_11_4();
    v11 = sub_1DD295864(&qword_1EE0275D8, v10, MEMORY[0x1E69D2818]);
    OUTLINED_FUNCTION_54_5(v11);
    v12 = OUTLINED_FUNCTION_46_6();
    v1(v12);
  }

  while ((v0 & 1) == 0);
  (v1)(v21, v3);
  v20 = OUTLINED_FUNCTION_27_5();
  v2(v20);
LABEL_7:
  OUTLINED_FUNCTION_24_1();
}

void OUTLINED_FUNCTION_46_1()
{

  sub_1DD2D2174();
}

uint64_t OUTLINED_FUNCTION_46_3()
{

  return sub_1DD335A90();
}

void OUTLINED_FUNCTION_46_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_1DD295864(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_53_0()
{

  return sub_1DD3365D0();
}

uint64_t OUTLINED_FUNCTION_53_5()
{

  return swift_allocObject();
}

double OUTLINED_FUNCTION_53_6()
{
  *(v0 + 264) = 0;
  result = 0.0;
  *(v0 + 248) = 0u;
  *(v0 + 232) = 0u;
  return result;
}

uint64_t sub_1DD295958(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = sub_1DD335CE0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1DD2E0D90(v10 + 1);
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_1DD2E296C(v10 + 1);
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_1DD295864(&qword_1EE0275E0, MEMORY[0x1E69D2800], MEMORY[0x1E69D2810]);
      v13 = sub_1DD336550();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_1DD295864(&qword_1EE0275D8, MEMORY[0x1E69D2800], MEMORY[0x1E69D2818]);
        v15 = sub_1DD336590();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_1DD2E24B0();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = sub_1DD336E20();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_83_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_83_6()
{
}

uint64_t OUTLINED_FUNCTION_44_0@<X0>(uint64_t a1@<X8>)
{
  result = v1;
  *(v2 - 280) = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_44_3(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_44_4()
{
}

char *sub_1DD295CF4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1DD295DBC();
  v4 = *(sub_1DD335CE0() - 8);
  v5 = sub_1DD295DE4(&v7, &v3[(*(v4 + 80) + 32) & ~*(v4 + 80)], v2, a1);
  sub_1DD29607C(v7);
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

unint64_t sub_1DD295DE4(void *a1, char *a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_1DD335CE0();
  v9 = *(v8 - 8);
  v41 = v8;
  v42 = v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v40 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v39 = &v32 - v12;
  v14 = a4 + 56;
  v13 = *(a4 + 56);
  v38 = -1 << *(a4 + 32);
  if (-v38 < 64)
  {
    v15 = ~(-1 << -v38);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & v13;
  if (!a2)
  {
    v19 = 0;
    result = 0;
LABEL_22:
    v31 = ~v38;
    *a1 = a4;
    a1[1] = v14;
    a1[2] = v31;
    a1[3] = v19;
    a1[4] = v16;
    return result;
  }

  result = a3;
  if (!a3)
  {
    v19 = 0;
    goto LABEL_22;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = a1;
    v34 = a4 + 56;
    v18 = 0;
    v19 = 0;
    v20 = (63 - v38) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    v37 = result;
    while (v18 < result)
    {
      if (__OFADD__(v18, 1))
      {
        goto LABEL_26;
      }

      if (!v16)
      {
        v14 = v34;
        while (1)
        {
          v21 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v21 >= v20)
          {
            v16 = 0;
            result = v18;
            a1 = v33;
            goto LABEL_22;
          }

          v16 = *(v34 + 8 * v21);
          ++v19;
          if (v16)
          {
            v43 = v18 + 1;
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

      v43 = v18 + 1;
      v21 = v19;
LABEL_17:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = a4;
      v24 = *(a4 + 48);
      v26 = v41;
      v25 = v42;
      v27 = *(v42 + 72);
      v28 = v40;
      (*(v42 + 16))(v40, v24 + v27 * (v22 | (v21 << 6)), v41);
      v29 = *(v25 + 32);
      v30 = v39;
      v29(v39, v28, v26);
      v29(a2, v30, v26);
      result = v37;
      v18 = v43;
      if (v43 == v37)
      {
        v19 = v21;
        a1 = v33;
        v14 = v34;
        a4 = v23;
        goto LABEL_22;
      }

      a2 += v27;
      v19 = v21;
      a4 = v23;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD296084(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_1();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DD2960E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = sub_1DD336AD0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  v13 = *a1;
  v16 = type metadata accessor for Expression(0, v9, v14, v15);
  *(a5 + 24) = v16;
  *(a5 + 32) = &protocol witness table for Expression<A>;
  *a5 = v13;
  *(a5 + 8) = *(a1 + 1);
  (*(v10 + 16))(v12, a2, v9);
  *(a5 + 64) = v16;
  *(a5 + 72) = &protocol witness table for Expression<A>;
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  ExpressionType<>.init(value:)(v12, v16, WitnessTable, a4, a5 + 40);
  return (*(v10 + 8))(a2, v9);
}

uint64_t ExpressionType<>.init(value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v28 = a3;
  v26[1] = a6;
  v27 = a2;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1DD336AD0();
  OUTLINED_FUNCTION_1_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v26 - v13;
  v15 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_0();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v26 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7140, &qword_1DD33CC30);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1DD339380;
  v22 = *(v11 + 16);
  v29 = a1;
  v22(v14, a1, v9);
  if (__swift_getEnumTagSinglePayload(v14, 1, AssociatedTypeWitness) == 1)
  {
    (*(v11 + 8))(v14, v9);
    *(v21 + 64) = 0;
    *(v21 + 32) = 0u;
    *(v21 + 48) = 0u;
  }

  else
  {
    (*(a5 + 56))(AssociatedTypeWitness, a5);
    OUTLINED_FUNCTION_22();
    (*(v23 + 8))(v14, AssociatedTypeWitness);
    *(v21 + 56) = v15;
    *(v21 + 64) = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v21 + 32));
    (*(v17 + 32))(boxed_opaque_existential_1, v20, v15);
  }

  (*(v28 + 40))(63, 0xE100000000000000, v21, v27);
  return (*(v11 + 8))(v29, v9);
}

uint64_t sub_1DD296568@<X0>(uint64_t *a1@<X8>)
{
  result = String.datatypeValue.getter(*v1, v1[1]);
  *a1 = result;
  a1[1] = v4;
  return result;
}

char *Data.datatypeValue.getter@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a1;
  switch(a2 >> 62)
  {
    case 1uLL:
      if (a1 >> 32 < a1)
      {
        __break(1u);
        JUMPOUT(0x1DD29669CLL);
      }

      sub_1DD28B4F8(a1, a2);
      v9 = a3;
      v10 = v4;
      v11 = v4 >> 32;
      return sub_1DD2966B4(v10, v11, v4, a2, v9);
    case 2uLL:
      v7 = *(a1 + 16);
      v8 = *(a1 + 24);
      sub_1DD28B4F8(a1, a2);
      v9 = a3;
      v10 = v7;
      v11 = v8;
      return sub_1DD2966B4(v10, v11, v4, a2, v9);
    case 3uLL:
      a1 = 0;
      v6 = 0;
      return sub_1DD30ECF4(a1, v6, v4, a2, a3);
    default:
      v6 = a2 & 0xFFFFFFFFFFFFFFLL;
      return sub_1DD30ECF4(a1, v6, v4, a2, a3);
  }
}

char *sub_1DD2966B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t *x8_0@<X8>)
{
  result = sub_1DD3344A0();
  v12 = result;
  if (result)
  {
    result = sub_1DD3344C0();
    if (__OFSUB__(a1, result))
    {
      goto LABEL_7;
    }

    v12 += a1 - result;
  }

  if (!__OFSUB__(a2, a1))
  {
    sub_1DD3344B0();
    sub_1DD296774(v12, a4, a5, x8_0);
    return sub_1DD290274(a4, a5);
  }

  __break(1u);
LABEL_7:
  __break(1u);
  return result;
}

void *sub_1DD296774@<X0>(void *result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  if (!result)
  {
    goto LABEL_12;
  }

  v4 = MEMORY[0x1E69E7CC0];
  v5 = result;
  switch(a3 >> 62)
  {
    case 1uLL:
      if (__OFSUB__(HIDWORD(a2), a2))
      {
        __break(1u);
LABEL_11:
        __break(1u);
LABEL_12:
        __break(1u);
        JUMPOUT(0x1DD29683CLL);
      }

      v7 = HIDWORD(a2) - a2;
LABEL_7:
      if (v7)
      {
        v4 = sub_1DD29684C(v7, 0);
        result = memcpy(v4 + 4, v5, v7);
      }

LABEL_9:
      *a4 = v4;
      return result;
    case 2uLL:
      v9 = *(a2 + 16);
      v8 = *(a2 + 24);
      v7 = v8 - v9;
      if (!__OFSUB__(v8, v9))
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    case 3uLL:
      goto LABEL_9;
    default:
      v7 = BYTE6(a3);
      goto LABEL_7;
  }
}

void *sub_1DD29684C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6688, &qword_1DD339378);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

RRSQLite::Update __swiftcall QueryType.update(_:)(Swift::OpaquePointer a1)
{
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v65 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7078, &qword_1DD33BAC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD33A620;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
  *(inited + 64) = &protocol witness table for Expression<A>;
  *(inited + 32) = 0x455441445055;
  *(inited + 40) = 0xE600000000000000;
  v11 = MEMORY[0x1E69E7CC0];
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = v10;
  sub_1DD28C4F0();
  *(inited + 136) = v10;
  *(inited + 144) = &protocol witness table for Expression<A>;
  *(inited + 112) = 5522771;
  *(inited + 120) = 0xE300000000000000;
  *(inited + 128) = v11;
  v19 = *(v7 + 16);
  if (v19)
  {
    v59 = v5;
    v61 = v3;
    v63 = v1;
    *&v71 = v11;
    sub_1DD296F20();
    v20 = v7 + 32;
    v68 = xmmword_1DD3391F0;
    do
    {
      sub_1DD28B704(v20, &v75);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
      v21 = swift_initStackObject();
      *(v21 + 16) = v68;
      sub_1DD2855A0(&v75, v21 + 32);
      sub_1DD2855A0(&v78, v21 + 72);
      sub_1DD284AFC(v21, 2112800, 0xE300000000000000, v22, v23, v24, v25, v26, v59, v61, v63, v65, v68, *(&v68 + 1), v71, *(&v71 + 1), v72, *(&v72 + 1), v73, v74[0], v74[1], v74[2], v74[3], v74[4], v74[5], v74[6]);
      swift_setDeallocating();
      v27 = OUTLINED_FUNCTION_34_7();
      sub_1DD284AB0(v27, v28);
      sub_1DD28C49C(&v75);
      *&v71 = v11;
      v30 = *(v11 + 16);
      v29 = *(v11 + 24);
      if (v30 >= v29 >> 1)
      {
        OUTLINED_FUNCTION_45(v29);
        sub_1DD296F20();
        v11 = v71;
      }

      *(v11 + 16) = v30 + 1;
      sub_1DD289CE4(&v79, v11 + 40 * v30 + 32);
      v20 += 80;
      --v19;
    }

    while (v19);
  }

  OUTLINED_FUNCTION_84_5(v11, v12, v13, v14, v15, v16, v17, v18, v59, v61, v63, v65, v68, *(&v68 + 1), v71, *(&v71 + 1), v72, *(&v72 + 1), v73, v74[0], v74[1], v74[2], v74[3], v74[4], v74[5], v74[6]);

  OUTLINED_FUNCTION_62_4();
  sub_1DD28C6EC(v31, v32);
  v33 = OUTLINED_FUNCTION_62_4();
  sub_1DD29709C(v33, v34, v35);
  OUTLINED_FUNCTION_62_4();
  sub_1DD297224(v36, v37);
  v38 = MEMORY[0x1E69E7CC0];
  for (i = 32; i != 312; i += 40)
  {
    sub_1DD2892A8(inited + i, &v75, &qword_1ECCD7070, &qword_1DD33BAB8);
    v71 = v75;
    v72 = v76;
    v73 = v77;
    if (*(&v76 + 1))
    {
      sub_1DD289CE4(&v71, &v79);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_1_11();
        sub_1DD28C3A8();
        v38 = v44;
      }

      v41 = *(v38 + 16);
      v40 = *(v38 + 24);
      if (v41 >= v40 >> 1)
      {
        OUTLINED_FUNCTION_45(v40);
        OUTLINED_FUNCTION_18_2();
        sub_1DD28C3A8();
        v38 = v45;
      }

      *(v38 + 16) = v41 + 1;
      sub_1DD289CE4(&v79, v38 + 40 * v41 + 32);
    }

    else
    {
      OUTLINED_FUNCTION_83_1();
      sub_1DD3147D8(v42, v43);
    }
  }

  swift_setDeallocating();
  v46 = sub_1DD284AB0(&qword_1ECCD7070, &qword_1DD33BAB8);
  OUTLINED_FUNCTION_22_9(v46, v47, v48, v49, v50, v51, v52, v53, v60, v62, v64, v66, v69, v70, v71, *(&v71 + 1), v72, *(&v72 + 1), v73, v74[0], v74[1], v74[2], v74[3], v74[4], v74[5], v74[6]);

  v54 = *(&v76 + 1);
  v55 = v77;
  __swift_project_boxed_opaque_existential_1(&v75, *(&v76 + 1));
  (*(v55 + 8))(&v79, v54, v55);
  *v67 = v79;
  *(v67 + 8) = v80;
  __swift_destroy_boxed_opaque_existential_1(&v75);
  OUTLINED_FUNCTION_24_1();
  result.bindings._rawValue = v58;
  result.template._object = v57;
  result.template._countAndFlagsBits = v56;
  return result;
}

uint64_t sub_1DD296C9C@<X0>(void *a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_50_5();
  sub_1DD289A78(v2, v3, v4, v5, v6, v7, v8, v9, v37, v40, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v83, v84);
  v11 = v10;
  v13 = v12;
  v14 = OUTLINED_FUNCTION_47();
  v15(v14);
  v17 = v85;
  v16 = v86;

  sub_1DD288AB8(&v82);
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DD3391F0;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
    *(inited + 56) = v19;
    *(inited + 64) = &protocol witness table for Expression<A>;
    v20 = OUTLINED_FUNCTION_50_5();
    sub_1DD289A78(v20, v21, v17, v16, v22, v23, v24, v25, v38, v41, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v82, v83, v84);
    v27 = v26;
    v29 = v28;

    *(inited + 32) = v27;
    *(inited + 40) = v29;
    v30 = MEMORY[0x1E69E7CC0];
    *(inited + 48) = MEMORY[0x1E69E7CC0];
    *(inited + 96) = v19;
    *(inited + 104) = &protocol witness table for Expression<A>;
    *(inited + 72) = v11;
    *(inited + 80) = v13;
    *(inited + 88) = v30;
    sub_1DD284AFC(inited, 46, 0xE100000000000000, v31, v32, v33, v34, v35, v39, v42, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v82, v83, v84);
    swift_setDeallocating();
    return sub_1DD284AB0(&qword_1ECCD7170, &qword_1DD33C120);
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
    a1[4] = &protocol witness table for Expression<A>;
    *a1 = v11;
    a1[1] = v13;
    a1[2] = MEMORY[0x1E69E7CC0];
    a1[3] = result;
  }

  return result;
}

void sub_1DD296E2C()
{
  OUTLINED_FUNCTION_66_6();
  if (v7)
  {
    OUTLINED_FUNCTION_6_0();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_30_2();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_1();
    }
  }

  else
  {
    v8 = v4;
  }

  v11 = *(v0 + 2);
  if (v8 <= v11)
  {
    v12 = *(v0 + 2);
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
    v14 = OUTLINED_FUNCTION_78_3(v13);
    v15 = _swift_stdlib_malloc_size(v14);
    OUTLINED_FUNCTION_67_5(v15);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v3)
  {
    if (v14 != v0 || &v0[40 * v11 + 32] <= v14 + 32)
    {
      v17 = OUTLINED_FUNCTION_31_2();
      memmove(v17, v18, v19);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v2, v1);
    OUTLINED_FUNCTION_31_2();
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_1DD296F60@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7140, &qword_1DD33CC30);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DD339380;
  *(v6 + 56) = &type metadata for Blob;
  *(v6 + 64) = &protocol witness table for Blob;
  sub_1DD28B4F8(a1, a2);
  Data.datatypeValue.getter(a1, a2, (v6 + 32));
  result = sub_1DD290274(a1, a2);
  *a3 = 63;
  a3[1] = 0xE100000000000000;
  a3[2] = v6;
  return result;
}

double sub_1DD297014@<D0>(void *a1@<X8>, double a2@<D0>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7140, &qword_1DD33CC30);
  v4 = swift_allocObject();
  *&result = 1;
  *(v4 + 16) = xmmword_1DD339380;
  *(v4 + 56) = MEMORY[0x1E69E63B0];
  *(v4 + 64) = &protocol witness table for Double;
  *(v4 + 32) = a2;
  *a1 = 63;
  a1[1] = 0xE100000000000000;
  a1[2] = v4;
  return result;
}

double sub_1DD29709C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  (v6)(v56);
  v7 = v56[16];

  sub_1DD288AB8(v56);
  v8 = *(v7 + 16);

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DD3391F0;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
    *(inited + 64) = &protocol witness table for Expression<A>;
    *(inited + 32) = 0x594220524544524FLL;
    *(inited + 40) = 0xE800000000000000;
    *(inited + 48) = MEMORY[0x1E69E7CC0];
    *(inited + 56) = v10;
    v6(&v51, a1, a2);
    v11 = v55;

    sub_1DD288AB8(&v51);
    sub_1DD284AFC(v11, 8236, 0xE200000000000000, v12, v13, v14, v15, v16, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v52, v53, v54);

    sub_1DD284AFC(inited, 32, 0xE100000000000000, v17, v18, v19, v20, v21, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v51, v52, v53, v54);
    swift_setDeallocating();
    sub_1DD284AB0(&qword_1ECCD7170, &qword_1DD33C120);
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1DD297224@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(a1 + 16))(v30);
  result = sub_1DD288AB8(v30);
  if (v32)
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    v4 = v31;
    v5 = v30[18];
    v6 = sub_1DD336DC0();
    MEMORY[0x1E12AC540](v6);

    if (v4)
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
      *(a2 + 32) = &protocol witness table for Expression<A>;
      *a2 = 0x2054494D494CLL;
      *(a2 + 8) = 0xE600000000000000;
      *(a2 + 16) = MEMORY[0x1E69E7CC0];
      *(a2 + 24) = result;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DD3391F0;
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
      *(inited + 64) = &protocol witness table for Expression<A>;
      *(inited + 32) = 0x2054494D494CLL;
      *(inited + 40) = 0xE600000000000000;
      v9 = MEMORY[0x1E69E7CC0];
      *(inited + 48) = MEMORY[0x1E69E7CC0];
      *(inited + 56) = v8;
      v10 = sub_1DD336DC0();
      MEMORY[0x1E12AC540](v10);

      *(inited + 96) = v8;
      *(inited + 104) = &protocol witness table for Expression<A>;
      *(inited + 72) = 0x2054455346464FLL;
      *(inited + 80) = 0xE700000000000000;
      *(inited + 88) = v9;
      sub_1DD284AFC(inited, 32, 0xE100000000000000, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v5, 0x2054455346464FLL, 0xE700000000000000, v30[0]);
      swift_setDeallocating();
      return sub_1DD284AB0(&qword_1ECCD7170, &qword_1DD33C120);
    }
  }

  return result;
}

uint64_t sub_1DD2974FC@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1DD29AFC8(a2);
  *a1 = result;
  return result;
}

uint64_t sub_1DD297528()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DD297560()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6340, &qword_1DD338E18);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1DD297644()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DD297684(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD2976A4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1DD2976E8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DD297720()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6340, &qword_1DD338E18);
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v4 | 7);
}

uint64_t sub_1DD2977FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DD297868@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD2A8354();
  *a1 = result;
  return result;
}

uint64_t sub_1DD2978C0@<X0>(uint64_t *a1@<X8>)
{
  result = SiriEnvironment.scopedReferenceResolutionData.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1DD2978F0()
{

  OUTLINED_FUNCTION_60();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1DD297924()
{
  OUTLINED_FUNCTION_60();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1DD297958()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DD297998()
{

  OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1DD2979DC()
{
  v1 = sub_1DD334830();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 72) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1DD297ABC()
{

  OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1DD297B08()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DD297B40()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DD297B88()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD67B8, &qword_1DD339820);
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1DD297C94@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD2BC71C();
  *a1 = result;
  return result;
}

uint64_t sub_1DD297CC4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DD297CFC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DD297D40()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void sub_1DD297DA8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD3365A0();
  [a3 setSwiftClassName_];
}

uint64_t sub_1DD297E88()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DD297ED0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1DD335CA0();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1DD297F58(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1DD335CA0();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DD297FD8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DD298010()
{

  OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1DD298078@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD2D7EB8();
  *a1 = result;
  return result;
}

uint64_t sub_1DD2980C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD2A8354();
  *a1 = result;
  return result;
}

uint64_t sub_1DD298120@<X0>(uint64_t *a1@<X8>)
{
  result = SiriEnvironment.salientEntitiesProvider.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1DD298150()
{
  sub_1DD2BED74(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1DD29818C()
{
  v1 = sub_1DD334830();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v4 | 7);
}

uint64_t sub_1DD298268@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD2DB8A8();
  *a1 = result;
  return result;
}

uint64_t sub_1DD298298()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DD2982DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DD298314()
{
  v1 = sub_1DD334830();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 56) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1DD2983E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6340, &qword_1DD338E18);
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = sub_1DD334830();
  OUTLINED_FUNCTION_1_0();
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (v7 + v13 + 8) & ~v13;
  v15 = *(v12 + 64);
  v16 = v4 | v13;

  (*(v3 + 8))(v0 + v5, v1);

  (*(v10 + 8))(v0 + v14, v8);

  return MEMORY[0x1EEE6BDD0](v0, v14 + v15, v16 | 7);
}

uint64_t sub_1DD29853C()
{
  sub_1DD2BED74(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1DD298578()
{
  v1 = sub_1DD334830();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1DD29864C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DD298684()
{
  v1 = sub_1DD334830();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 16, v4 | 7);
}

uint64_t sub_1DD298774()
{
  v1 = sub_1DD334830();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = v5 + *(v6 + 64);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6D10, &unk_1DD33A940);
  OUTLINED_FUNCTION_1_0();
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (v7 + v13) & ~v13;
  v15 = *(v12 + 64);
  v16 = v4 | v13;

  (*(v3 + 8))(v0 + v5, v1);
  (*(v10 + 8))(v0 + v14, v8);

  return MEMORY[0x1EEE6BDD0](v0, v14 + v15, v16 | 7);
}

uint64_t sub_1DD2988B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD334BC0();
  *a1 = result;
  return result;
}

uint64_t sub_1DD2988F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DD298944()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DD2989A4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DD2989DC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6348, &unk_1DD338E20);
  OUTLINED_FUNCTION_69_0(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v6 = *(v5 + 64);

  v7 = sub_1DD336240();
  if (!__swift_getEnumTagSinglePayload(v0 + v4, 1, v7))
  {
    (*(*(v7 - 8) + 8))(v0 + v4, v7);
  }

  return MEMORY[0x1EEE6BDD0](v0, v4 + v6, v3 | 7);
}

uint64_t sub_1DD298B7C()
{
  v1 = sub_1DD334890();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 44) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v4 | 7);
}

uint64_t sub_1DD298C48()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1DD298C90()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DD298CC8()
{

  OUTLINED_FUNCTION_60();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1DD298CFC()
{
  OUTLINED_FUNCTION_60();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1DD298D30()
{
  OUTLINED_FUNCTION_60();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1DD298D64()
{

  OUTLINED_FUNCTION_83();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1DD298DA8()
{

  OUTLINED_FUNCTION_83();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1DD298DE4()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DD2991F0()
{

  OUTLINED_FUNCTION_72_4();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1DD2992E8@<X0>(uint64_t *a1@<X8>)
{
  result = Statement.columnCount.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1DD29933C@<X0>(uint64_t *a1@<X8>)
{
  result = Statement.columnNames.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1DD299374()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DD2993CC@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC23SiriReferenceResolution25RRBiomeNearbyPeoplePuller____lazy_storage___contactStore;
  swift_beginAccess();
  sub_1DD29B658(v1 + v3, &v6);
  if (v7)
  {
    return sub_1DD289CE4(&v6, a1);
  }

  sub_1DD296084(&v6, &qword_1ECCD62B8, "de");
  v5 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  a1[3] = sub_1DD27D80C(0, &qword_1ECCD6338, 0x1E695CE18);
  a1[4] = &protocol witness table for CNContactStore;
  *a1 = v5;
  sub_1DD28191C(a1, &v6);
  swift_beginAccess();
  sub_1DD29B6C8(&v6, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1DD2994D4(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC23SiriReferenceResolution25RRBiomeNearbyPeoplePuller____lazy_storage___contactStore;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  *(v2 + OBJC_IVAR____TtC23SiriReferenceResolution25RRBiomeNearbyPeoplePuller_stream) = a1;
  v5 = OBJC_IVAR____TtC23SiriReferenceResolution25RRBiomeNearbyPeoplePuller_logger;
  sub_1DD335CD0();
  OUTLINED_FUNCTION_1();
  (*(v6 + 32))(v2 + v5, a2);
  return v2;
}

uint64_t RRBiomeNearbyPeoplePuller.__allocating_init()()
{
  v1 = sub_1DD335CD0();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [BiomeLibrary() ContextualUnderstanding];
  OUTLINED_FUNCTION_6_2();
  swift_unknownObjectRelease();
  v5 = [v0 PeopleDiscovery];
  swift_unknownObjectRelease();
  v6 = type metadata accessor for RRBiomeNearbyPeoplePuller(0);
  v9[1] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6298, &qword_1DD338D60);
  sub_1DD336630();
  sub_1DD335CC0();
  swift_allocObject();
  v7 = OUTLINED_FUNCTION_6_2();
  sub_1DD2994D4(v7, v3);
  return v6;
}

uint64_t sub_1DD2996D4()
{
  OUTLINED_FUNCTION_4();
  v1[9] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A0, &unk_1DD338D70);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v2 = sub_1DD335CA0();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD2997D4, 0, 0);
}

uint64_t sub_1DD2997D4()
{
  if (qword_1ECCD6248 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECCD7290;
  sub_1DD335C90();
  sub_1DD336A40();
  v2 = qword_1ECCD7290;
  v3 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_5();
  sub_1DD335C70();

  v4 = sub_1DD335CB0();
  v5 = sub_1DD336940();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1DD27A000, v4, v5, "Entering RRBiomeNearbyPeoplePuller...", v6, 2u);
    MEMORY[0x1E12ADA30](v6, -1, -1);
  }

  v8 = v0[10];
  v7 = v0[11];
  v9 = v0[9];

  v10 = swift_allocObject();
  v0[15] = v10;
  *(v10 + 16) = v3;
  v11 = *(v9 + OBJC_IVAR____TtC23SiriReferenceResolution25RRBiomeNearbyPeoplePuller_stream);
  v12 = sub_1DD334830();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v12);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v12);
  v13 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v14 = v11;
  v15 = sub_1DD29AC8C(v7, v8, 1, 1, 0);
  v16 = [v14 publisherWithOptions_];
  v0[16] = v16;

  v0[6] = OUTLINED_FUNCTION_2_0;
  v0[7] = 0;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1DD299F64;
  v0[5] = &block_descriptor;
  v17 = _Block_copy(v0 + 2);
  v18 = [v16 filterWithIsIncluded_];
  v0[17] = v18;
  _Block_release(v17);
  v19 = swift_task_alloc();
  v0[18] = v19;
  v19[2] = v18;
  v19[3] = v9;
  v19[4] = v10;
  v20 = swift_task_alloc();
  v0[19] = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A8, "be");
  *v20 = v0;
  v20[1] = sub_1DD299B64;

  return MEMORY[0x1EEE6DE38](v0 + 8, 0, 0, 0x3A7461286C6C7570, 0xE900000000000029, sub_1DD29B350, v19, v21);
}

uint64_t sub_1DD299B64()
{
  OUTLINED_FUNCTION_4();
  v5 = *v1;
  OUTLINED_FUNCTION_0();
  *v2 = v5;
  *(v5 + 160) = v0;

  if (v0)
  {
    v3 = sub_1DD299D50;
  }

  else
  {

    v3 = sub_1DD299C74;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DD299C74()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);

  v5 = *(v0 + 64);
  sub_1DD299E34(v2);
  (*(v4 + 8))(v2, v3);

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_1DD299D50()
{
  v1 = *(v0 + 136);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 96);

  sub_1DD299E34(v2);
  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 8);

  return v5();
}

void sub_1DD299E34(uint64_t a1)
{
  sub_1DD336A30();
  if (qword_1ECCD6248 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECCD7290;
  sub_1DD335C80();

  oslog = sub_1DD335CB0();
  v2 = sub_1DD336940();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1DD27A000, oslog, v2, "Exiting RRBiomeNearbyPeoplePuller...", v3, 2u);
    MEMORY[0x1E12ADA30](v3, -1, -1);
  }
}

uint64_t sub_1DD299F64(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  sub_1DD335860();
  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

void sub_1DD299FBC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6340, &qword_1DD338E18);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &aBlock - v11;
  (*(v9 + 16))(&aBlock - v11, a1, v8);
  v13 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  (*(v9 + 32))(v14 + v13, v12, v8);
  *(v14 + ((v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;
  v23 = sub_1DD29B738;
  v24 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1DD2E5EF4;
  v22 = &block_descriptor_28;
  v15 = _Block_copy(&aBlock);
  sub_1DD335860();
  sub_1DD335860();

  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  v23 = sub_1DD29B7E4;
  v24 = v16;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1DD29AA08;
  v22 = &block_descriptor_34;
  v17 = _Block_copy(&aBlock);
  sub_1DD335860();
  sub_1DD335860();

  v18 = [a2 sinkWithCompletion:v15 receiveInput:v17];
  _Block_release(v17);
  _Block_release(v15);
}

uint64_t sub_1DD29A250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1DD335CB0();
  v5 = sub_1DD336940();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1DD27A000, v4, v5, "Finished pulling notification stream successfully", v6, 2u);
    MEMORY[0x1E12ADA30](v6, -1, -1);
  }

  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6340, &qword_1DD338E18);
  return sub_1DD3368B0();
}

void sub_1DD29A348(void *a1, uint64_t a2, uint64_t a3)
{
  v68 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A0, &unk_1DD338D70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v59 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6348, &unk_1DD338E20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v59 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6350, &unk_1DD3396F0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v59 - v12;
  v14 = sub_1DD336220();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a1 eventBody];
  if (v18)
  {
    v19 = v18;
    v60 = v13;
    v61 = v10;
    v62 = v17;
    v63 = v7;
    v64 = v15;
    v65 = v14;
    v66 = a3;
    v20 = [v18 discoveredPersons];

    sub_1DD27D80C(0, &qword_1ECCD6358, 0x1E698EB58);
    v21 = sub_1DD336810();

    v22 = objc_allocWithZone(MEMORY[0x1E698EB58]);
    v23 = sub_1DD29ADC8(0, 0, 0, 0, 0, 0, 0, 0, 0);
    v24 = sub_1DD287354(v21);
    if (v24)
    {
      v25 = v24;
      v26 = 0;
      v27 = OBJC_IVAR____TtC23SiriReferenceResolution25RRBiomeNearbyPeoplePuller_logger;
      v28 = v21 & 0xC000000000000001;
      v29 = v21 & 0xFFFFFFFFFFFFFF8;
      v69 = 1000;
      v30 = &off_1E8651000;
      v67 = v21;
      while (1)
      {
        if (v28)
        {
          v31 = MEMORY[0x1E12ACA60](v26, v21);
        }

        else
        {
          if (v26 >= *(v29 + 16))
          {
            goto LABEL_28;
          }

          v31 = *(v21 + 8 * v26 + 32);
        }

        v32 = v31;
        v33 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        sub_1DD29B7EC(v31);
        if (v34 && (, -[NSObject hasActivityLevel](v32, sel_hasActivityLevel)) && (v35 = [v32 v30[508]], v69 > v35))
        {

          v69 = [v32 v30[508]];
          v36 = sub_1DD335CB0();
          v37 = sub_1DD336940();
          if (os_log_type_enabled(v36, v37))
          {
            v38 = v29;
            v39 = v27;
            v40 = swift_slowAlloc();
            *v40 = 0;
            _os_log_impl(&dword_1DD27A000, v36, v37, "Added a nearby person", v40, 2u);
            v41 = v40;
            v27 = v39;
            v29 = v38;
            v21 = v67;
            MEMORY[0x1E12ADA30](v41, -1, -1);
          }
        }

        else
        {
          v36 = v32;
          v32 = v23;
        }

        ++v26;
        v23 = v32;
        v30 = &off_1E8651000;
        if (v33 == v25)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return;
    }

    v32 = v23;
LABEL_18:
    sub_1DD3350C0();
    swift_allocObject();
    v42 = sub_1DD3350B0();
    sub_1DD335630();
    swift_allocObject();
    sub_1DD335620();
    v43 = [v32 contactID];
    if (v43)
    {
      v44 = v43;
      v45 = sub_1DD3365D0();
      v47 = v46;

      sub_1DD2993CC(v70);
      v48 = v71;
      v49 = v72;
      __swift_project_boxed_opaque_existential_1(v70, v71);
      (*(v49 + 8))(v45, v47, v48, v49);
      if (v50)
      {
        __swift_destroy_boxed_opaque_existential_1(v70);
        sub_1DD3350A0();
        if (MEMORY[0x1E12AABB0](v42))
        {
          sub_1DD335860();

          v51 = sub_1DD335E60();
          __swift_storeEnumTagSinglePayload(v60, 1, 1, v51);
          v52 = v62;
          sub_1DD3361F0();
          v53 = sub_1DD336240();
          v54 = v61;
          __swift_storeEnumTagSinglePayload(v61, 1, 1, v53);
          sub_1DD336190();
          sub_1DD296084(v54, &qword_1ECCD6348, &unk_1DD338E20);
          v55 = v63;
          sub_1DD334820();
          v56 = sub_1DD334830();
          __swift_storeEnumTagSinglePayload(v55, 0, 1, v56);
          sub_1DD3360B0();
          v57 = v66;
          v58 = swift_beginAccess();
          MEMORY[0x1E12AC640](v58);
          sub_1DD2A27E0(*((*(v57 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
          sub_1DD336860();
          swift_endAccess();

          (*(v64 + 8))(v52, v65);
          return;
        }

        goto LABEL_29;
      }

      __swift_destroy_boxed_opaque_existential_1(v70);
    }

    else
    {
    }
  }
}

void sub_1DD29AA08(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  sub_1DD335860();
  v4 = a2;
  v3();
}

uint64_t RRBiomeNearbyPeoplePuller.deinit()
{
  v1 = OBJC_IVAR____TtC23SiriReferenceResolution25RRBiomeNearbyPeoplePuller_logger;
  sub_1DD335CD0();
  OUTLINED_FUNCTION_1();
  (*(v2 + 8))(v0 + v1);

  sub_1DD296084(v0 + OBJC_IVAR____TtC23SiriReferenceResolution25RRBiomeNearbyPeoplePuller____lazy_storage___contactStore, &qword_1ECCD62B8, "de");
  return v0;
}

uint64_t RRBiomeNearbyPeoplePuller.__deallocating_deinit()
{
  RRBiomeNearbyPeoplePuller.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1DD29AB50()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DD2836AC;

  return sub_1DD2996D4();
}

uint64_t type metadata accessor for RRBiomeNearbyPeoplePuller(uint64_t a1)
{
  result = qword_1ECCD6328;
  if (!qword_1ECCD6328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

id sub_1DD29AC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = sub_1DD334830();
  v13 = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v12) != 1)
  {
    v13 = sub_1DD3347A0();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  if (__swift_getEnumTagSinglePayload(a2, 1, v12) == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = sub_1DD3347A0();
    (*(*(v12 - 8) + 8))(a2, v12);
  }

  v15 = [v6 initWithStartDate:v13 endDate:v14 maxEvents:a3 lastN:a4 reversed:a5 & 1];

  return v15;
}

id sub_1DD29ADC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9)
{
  v10 = v9;
  if (a2)
  {
    v15 = sub_1DD3365A0();
  }

  else
  {
    v15 = 0;
  }

  if (!a4)
  {
    v16 = 0;
    if (a6)
    {
      goto LABEL_6;
    }

LABEL_8:
    v17 = 0;
    goto LABEL_9;
  }

  v16 = sub_1DD3365A0();

  if (!a6)
  {
    goto LABEL_8;
  }

LABEL_6:
  v17 = sub_1DD3365A0();

LABEL_9:
  v18 = [v10 initWithContactID:v15 identifier:v16 name:v17 flags:a7 activityLevel:a8 proximity:a9];

  return v18;
}

uint64_t sub_1DD29AED4(uint64_t a1, id *a2)
{
  result = sub_1DD3365B0();
  *a2 = 0;
  return result;
}

uint64_t sub_1DD29AF48(uint64_t a1, id *a2)
{
  v3 = sub_1DD3365C0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1DD29AFC8(uint64_t a1)
{
  sub_1DD3365D0();
  v1 = sub_1DD3365A0();

  return v1;
}

uint64_t sub_1DD29B000(uint64_t a1)
{
  v1 = sub_1DD3365D0();
  v2 = MEMORY[0x1E12AC5A0](v1);

  return v2;
}

uint64_t sub_1DD29B038(uint64_t a1, uint64_t a2)
{
  sub_1DD3365D0();
  sub_1DD3366B0();
}

uint64_t sub_1DD29B08C(uint64_t a1, uint64_t a2)
{
  sub_1DD3365D0();
  sub_1DD336EC0();
  sub_1DD3366B0();
  v2 = sub_1DD336EF0();

  return v2;
}

uint64_t sub_1DD29B10C()
{
  v1 = OUTLINED_FUNCTION_3_0();
  result = sub_1DD29B234(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1DD29B134(uint64_t a1)
{
  v2 = sub_1DD29B974(&qword_1ECCD63A8, type metadata accessor for NSTextCheckingKey, &unk_1DD3390E0);
  v3 = sub_1DD29B974(&qword_1ECCD63B0, type metadata accessor for NSTextCheckingKey, &unk_1DD339034);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DD29B1F0@<X0>(void *a2@<X8>)
{
  sub_1DD3365A0();
  OUTLINED_FUNCTION_6_2();

  *a2 = v2;
  return result;
}

uint64_t sub_1DD29B238(uint64_t a1)
{
  v2 = sub_1DD29B974(&qword_1ECCD63B8, type metadata accessor for IOSurfacePropertyKey, &unk_1DD339124);
  v3 = sub_1DD29B974(&qword_1ECCD63C0, type metadata accessor for IOSurfacePropertyKey, &unk_1DD338F20);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DD29B2F4(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      sub_1DD3360C0();
      result = sub_1DD336850();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1DD29B364(uint64_t a1)
{
  result = sub_1DD335CD0();
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

uint64_t dispatch thunk of RRBiomeNearbyPeoplePuller.pull(at:)(uint64_t a1)
{
  v6 = (*(*v1 + 176) + **(*v1 + 176));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DD29B568;

  return v6(a1);
}

uint64_t sub_1DD29B568()
{
  OUTLINED_FUNCTION_4();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_0();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_1DD29B658(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62B8, "de");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD29B6C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62B8, "de");
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD29B738(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6340, &qword_1DD338E18) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1DD29A250(a1, v5, v1 + v4, v6);
}

uint64_t sub_1DD29B7EC(void *a1)
{
  v1 = [a1 contactID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD3365D0();

  return v3;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DD29B884(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD29B8A4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_1DD29B974(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1DD29BB04(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1DD29BB88(uint64_t a1)
{
  MEMORY[0x1E12AC640]();
  sub_1DD2A27E0(*((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10));

  return sub_1DD336860();
}

void sub_1DD29BBE0()
{
  OUTLINED_FUNCTION_54_0();
  v3 = sub_1DD334720();
  OUTLINED_FUNCTION_1_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_10();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_72();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_27();
  sub_1DD29BD74();
  if (!v0)
  {
    sub_1DD3346D0();
    OUTLINED_FUNCTION_46();
    sub_1DD3346D0();
    v12 = *(v5 + 8);
    v12(v9, v3);
    sub_1DD3346E0();
    v12(v1, v3);
    v12(v2, v3);
  }

  OUTLINED_FUNCTION_53();
}

void sub_1DD29BD74()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_self() defaultManager];
  v5[0] = 0;
  v1 = [v0 URLForDirectory:5 inDomain:1 appropriateForURL:0 create:1 error:v5];

  v2 = v5[0];
  if (v1)
  {
    sub_1DD334700();
    v3 = v2;
  }

  else
  {
    v4 = v5[0];
    sub_1DD334670();

    swift_willThrow();
  }
}

void RRSQLiteStorage.__allocating_init()()
{
  OUTLINED_FUNCTION_54_0();
  v109 = v1;
  v110[1] = *MEMORY[0x1E69E9840];
  type metadata accessor for Connection.Location();
  v103 = v6;
  OUTLINED_FUNCTION_1_0();
  v101 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_12();
  v102 = (v10 - v9);
  OUTLINED_FUNCTION_31_1();
  sub_1DD335CD0();
  OUTLINED_FUNCTION_1_0();
  v104 = v12;
  v105 = v11;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_74();
  sub_1DD334720();
  OUTLINED_FUNCTION_1_0();
  v107 = v15;
  v108 = v14;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_72();
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v91 - v18;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_118();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_35();
  v106 = v22;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v91 - v24;
  v26 = type metadata accessor for RRSQLiteStorage(0);
  v27 = v109;
  sub_1DD29BBE0();
  if (!v27)
  {
    v98 = v4;
    v99 = v19;
    v92 = v2;
    v93 = v3;
    v94 = 0;
    v95 = v0;
    v110[0] = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6560, &unk_1DD339220);
    sub_1DD336630();
    sub_1DD335CC0();
    v28 = v108;
    v96 = v107[2];
    v97 = v107 + 2;
    v96(v106, v25, v108);
    v100 = v5;
    v29 = sub_1DD335CB0();
    v30 = sub_1DD336950();
    if (os_log_type_enabled(v29, v30))
    {
      OUTLINED_FUNCTION_34_0();
      v31 = swift_slowAlloc();
      OUTLINED_FUNCTION_26();
      v32 = swift_slowAlloc();
      OUTLINED_FUNCTION_125(v32);
      *v31 = 136315138;
      v33 = v106;
      v34 = sub_1DD334710();
      v91 = v25;
      v36 = v35;
      OUTLINED_FUNCTION_119();
      v37(v33);
      v38 = sub_1DD27DBF0(v34, v36, v110);
      v25 = v91;

      *(v31 + 4) = v38;
      _os_log_impl(&dword_1DD27A000, v29, v30, "Trying to create directory at: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1("com.apple.frontboard.visibility");
      OUTLINED_FUNCTION_20();
      MEMORY[0x1E12ADA30]();
      v28 = v108;
      OUTLINED_FUNCTION_20();
      MEMORY[0x1E12ADA30]();
    }

    else
    {

      OUTLINED_FUNCTION_119();
      v39();
    }

    v40 = v98;
    v41 = [objc_opt_self() defaultManager];
    sub_1DD3346F0();
    v42 = sub_1DD3346C0();
    v109(v40, v28);
    v110[0] = 0;
    v43 = v28;
    LODWORD(v40) = [v41 createDirectoryAtURL:v42 withIntermediateDirectories:1 attributes:0 error:v110];

    v44 = v110[0];
    v45 = v104;
    v46 = v99;
    if (v40)
    {
      v106 = v26;
      v107 = v3;
      v47 = v96;
      v96(v92, v25, v43);
      v47(v46, v25, v43);
      v48 = v44;
      v49 = sub_1DD335CB0();
      v50 = sub_1DD336950();
      v51 = v43;
      if (os_log_type_enabled(v49, v50))
      {
        OUTLINED_FUNCTION_40();
        v52 = swift_slowAlloc();
        OUTLINED_FUNCTION_80();
        v98 = swift_slowAlloc();
        v110[0] = v98;
        *v52 = 136315394;
        v53 = sub_1DD334710();
        LODWORD(v91) = v50;
        v54 = v53;
        v55 = OUTLINED_FUNCTION_111();
        v56 = v109;
        (v109)(v55);
        v57 = OUTLINED_FUNCTION_123();
        sub_1DD27DBF0(v57, v58, v59);
        OUTLINED_FUNCTION_126();

        *(v52 + 4) = v54;
        *(v52 + 12) = 2080;
        v60 = sub_1DD334710();
        v56(v46, v51);
        v45 = v104;
        v61 = OUTLINED_FUNCTION_123();
        sub_1DD27DBF0(v61, v62, v63);
        OUTLINED_FUNCTION_126();

        *(v52 + 14) = v60;
        _os_log_impl(&dword_1DD27A000, v49, v91, "Created directory at: %s. Now connecting to DB file at %s", v52, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_20();
        MEMORY[0x1E12ADA30]();
        OUTLINED_FUNCTION_20();
        MEMORY[0x1E12ADA30]();
      }

      else
      {

        v69 = v109;
        v109(v46, v43);
        v70 = OUTLINED_FUNCTION_111();
        v69(v70);
      }

      v64 = v95;
      v66 = v102;
      v65 = v103;
      v67 = v101;
      *v66 = sub_1DD334710();
      v66[1] = v71;
      (*(v67 + 104))(v66, 0, v65);
      swift_allocObject();
      v72 = sub_1DD29C70C(v66);
      v73 = v93;
      if (v72)
      {
        (*(v45 + 16))(v64, v72 + OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_logger, v105);
        v74 = v108;
        v96(v73, v25, v108);
        v75 = v73;
        v76 = sub_1DD335CB0();
        v77 = sub_1DD336940();
        if (os_log_type_enabled(v76, v77))
        {
          OUTLINED_FUNCTION_34_0();
          v78 = swift_slowAlloc();
          v103 = v78;
          OUTLINED_FUNCTION_26();
          v106 = swift_slowAlloc();
          v110[0] = v106;
          *v78 = 136315138;
          v79 = sub_1DD334710();
          v80 = v109;
          v81 = v79;
          v91 = v25;
          v83 = v82;
          v109(v75, v74);
          v84 = sub_1DD27DBF0(v81, v83, v110);

          v85 = v103;
          *(v103 + 1) = v84;
          _os_log_impl(&dword_1DD27A000, v76, v77, "Connected to database file %s", v85, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v106);
          OUTLINED_FUNCTION_20();
          MEMORY[0x1E12ADA30]();
          OUTLINED_FUNCTION_20();
          MEMORY[0x1E12ADA30]();

          v86 = *(v45 + 8);
          v87 = v105;
          v86(v95, v105);
          v86(v100, v87);
          v80(v91, v108);
        }

        else
        {

          v88 = v109;
          v109(v75, v74);
          v89 = *(v45 + 8);
          v90 = v105;
          v89(v64, v105);
          v89(v100, v90);
          v88(v25, v74);
        }
      }

      else
      {
        (*(v45 + 8))(v100, v105);
        v109(v25, v108);
      }
    }

    else
    {
      v68 = v110[0];
      OUTLINED_FUNCTION_126();
      sub_1DD334670();

      swift_willThrow();
      (*(v45 + 8))(v100, v105);
      v109(v25, v43);
    }
  }

  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_53();
}

uint64_t sub_1DD29C70C(uint64_t a1)
{
  v2 = v1;
  v236 = a1;
  type metadata accessor for Result();
  v233 = v3;
  OUTLINED_FUNCTION_1_0();
  v214 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_35();
  v231 = v7;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_32_1();
  v229 = v9;
  OUTLINED_FUNCTION_31_1();
  type metadata accessor for Connection.Location();
  OUTLINED_FUNCTION_1_0();
  v234 = v11;
  v235 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_12();
  v232 = (v13 - v12);
  OUTLINED_FUNCTION_31_1();
  sub_1DD335CD0();
  OUTLINED_FUNCTION_1_0();
  v238 = v15;
  v239 = v14;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v208 - v20;
  v240 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_logger;
  v228 = type metadata accessor for RRSQLiteStorage(0);
  v245 = v228;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6560, &unk_1DD339220);
  sub_1DD336630();
  sub_1DD335CC0();
  v22 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_idColumn;
  v23 = OUTLINED_FUNCTION_41();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
  OUTLINED_FUNCTION_83_1();
  sub_1DD292C50(v26, v27, v28);
  v226 = v22;
  OUTLINED_FUNCTION_75();
  ExpressionType.init(_:)(v29, v30, v31, v32);
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_66_1(v33);
  OUTLINED_FUNCTION_75();
  v225 = v25;
  ExpressionType.init(_:)(v34, v35, v36, v37);
  v38 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_usoEntityColumn;
  v39 = OUTLINED_FUNCTION_41();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(v39, v40);
  OUTLINED_FUNCTION_83_1();
  sub_1DD292C50(v42, v43, v44);
  v45 = OUTLINED_FUNCTION_78();
  v224 = v38;
  v223 = v41;
  ExpressionType.init(_:)(v45, 0xE900000000000079, v41, v46);
  v47 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_typedValueColumn;
  v48 = OUTLINED_FUNCTION_41();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(v48, v49);
  OUTLINED_FUNCTION_83_1();
  v54 = sub_1DD292C50(v51, v52, v53);
  v55 = OUTLINED_FUNCTION_102();
  v222 = v47;
  OUTLINED_FUNCTION_94(v55, 0xEA00000000006575);
  v56 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_dataTypeColumn;
  v57 = OUTLINED_FUNCTION_41();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(v57, v58);
  OUTLINED_FUNCTION_83_1();
  sub_1DD292C50(v60, v61, v62);
  OUTLINED_FUNCTION_101_0();
  v221 = v56;
  OUTLINED_FUNCTION_75();
  ExpressionType.init(_:)(v63, v64, v65, v66);
  OUTLINED_FUNCTION_66_1(OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_dataColumn);
  OUTLINED_FUNCTION_94(1635017060, 0xE400000000000000);
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_66_1(v67);
  OUTLINED_FUNCTION_75();
  ExpressionType.init(_:)(v68, v69, v70, v71);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65C8, &qword_1DD339280);
  sub_1DD292C50(&qword_1EE028750, &qword_1ECCD65C8, &qword_1DD339280);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_120(&v246);
  v220 = v72;
  ExpressionType.init(_:)(v73, 0xE800000000000000, v72, v74);
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_66_1(v75);
  OUTLINED_FUNCTION_94(v76, 0xE800000000000000);
  OUTLINED_FUNCTION_55_1();
  OUTLINED_FUNCTION_66_1(v77);
  ExpressionType.init(_:)(v78, v79, v50, v54);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65D0, &qword_1DD339288);
  OUTLINED_FUNCTION_106_0();
  sub_1DD292C50(v81, v82, v83);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_120(&v243);
  v219 = v80;
  ExpressionType.init(_:)(v84, v85, v80, v86);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65D8, &qword_1DD339290);
  OUTLINED_FUNCTION_106_0();
  sub_1DD292C50(v88, v89, v90);
  OUTLINED_FUNCTION_120(&v242);
  v217 = v87;
  ExpressionType.init(_:)(0xD000000000000012, 0x80000001DD33D1E0, v87, v91);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65E0, &qword_1DD339298);
  OUTLINED_FUNCTION_106_0();
  v93 = v238;
  sub_1DD292C50(v94, v95, v96);
  OUTLINED_FUNCTION_120(&v241);
  v230 = v92;
  ExpressionType.init(_:)(0xD00000000000001ALL, 0x80000001DD33D200, v92, v97);
  OUTLINED_FUNCTION_66_1(OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_userIdColumn);
  OUTLINED_FUNCTION_75();
  v227 = v59;
  ExpressionType.init(_:)(v98, v99, v100, v101);
  v102 = *(v93 + 16);
  v102(v21, v2 + v240, v239);
  v103 = sub_1DD335CB0();
  v104 = sub_1DD336940();
  v105 = OUTLINED_FUNCTION_64_1();
  if (os_log_type_enabled(v105, v106))
  {
    v107 = swift_slowAlloc();
    *v107 = 0;
    _os_log_impl(&dword_1DD27A000, v103, v104, "Initializing DB connection.", v107, 2u);
    OUTLINED_FUNCTION_20();
    MEMORY[0x1E12ADA30]();
  }

  v108 = v93 + 8;
  v109 = OUTLINED_FUNCTION_84();
  v237 = v110;
  (v110)(v109, v21);
  v111 = v232;
  (*(v234 + 16))(v232, v236, v235);
  type metadata accessor for Connection();
  OUTLINED_FUNCTION_59();
  swift_allocObject();
  v112 = Connection.init(_:readonly:)(v111, 0);
  v232 = 0;
  *(v2 + OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_db) = v112;
  OUTLINED_FUNCTION_115();
  (v102)(v209);
  v113 = sub_1DD335CB0();
  sub_1DD336940();
  v114 = OUTLINED_FUNCTION_64_1();
  if (os_log_type_enabled(v114, v115))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    OUTLINED_FUNCTION_73();
    _os_log_impl(v116, v117, v118, v119, v120, 2u);
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_20();
    MEMORY[0x1E12ADA30]();
  }

  v121 = OUTLINED_FUNCTION_111();
  v237(v121);
  sub_1DD335860();
  Connection.busyTimeout.setter(0.5);

  OUTLINED_FUNCTION_115();
  v122 = v210;
  (v102)(v210);
  v123 = sub_1DD335CB0();
  sub_1DD336940();
  v124 = OUTLINED_FUNCTION_64_1();
  if (os_log_type_enabled(v124, v125))
  {
    OUTLINED_FUNCTION_34_0();
    v21 = swift_slowAlloc();
    *v21 = 134217984;
    *(v21 + 4) = 0x3FE0000000000000;
    OUTLINED_FUNCTION_73();
    _os_log_impl(v126, v127, v128, v129, v130, 0xCu);
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_20();
    MEMORY[0x1E12ADA30]();
  }

  v131 = (v237)(v122, v21);
  v132 = v232;
  sub_1DD29E808(v131, v133, v134, v135, v136, v137, v138, v139, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219);
  v140 = v132;
  v141 = v233;
  if (!v132)
  {
    v198 = sub_1DD335CB0();
    sub_1DD336940();
    v199 = OUTLINED_FUNCTION_64_1();
    if (os_log_type_enabled(v199, v200))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_73();
      _os_log_impl(v201, v202, v203, v204, v205, 2u);
      OUTLINED_FUNCTION_20();
      MEMORY[0x1E12ADA30]();
    }

    v206 = OUTLINED_FUNCTION_71_1();
    v207(v206);
    return v2;
  }

  v245 = v132;
  v142 = v132;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6568, &unk_1DD3397B0);
  v143 = v229;
  v144 = swift_dynamicCast();
  v238 = v108;
  if (!v144)
  {

    OUTLINED_FUNCTION_115();
    v157 = v212;
    (v102)(v212);
    v158 = v140;
    v159 = sub_1DD335CB0();
    v160 = sub_1DD336950();

    if (os_log_type_enabled(v159, v160))
    {
      OUTLINED_FUNCTION_34_0();
      v161 = swift_slowAlloc();
      OUTLINED_FUNCTION_26();
      v21 = swift_slowAlloc();
      v245 = v21;
      *v161 = 136315138;
      swift_getErrorValue();
      v162 = sub_1DD336E40();
      v164 = sub_1DD27DBF0(v162, v163, &v245);

      *(v161 + 4) = v164;
      _os_log_impl(&dword_1DD27A000, v159, v160, "Database connection error: %s", v161, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      OUTLINED_FUNCTION_84();
      OUTLINED_FUNCTION_20();
      MEMORY[0x1E12ADA30]();
      OUTLINED_FUNCTION_20();
      MEMORY[0x1E12ADA30]();
    }

    v165 = OUTLINED_FUNCTION_71_1();
    v166(v165);
    (v237)(v157, v21);
    goto LABEL_17;
  }

  v145 = v214;
  (*(v214 + 32))(v231, v143, v141);
  v146 = v211;
  v147 = OUTLINED_FUNCTION_41();
  v148(v147);
  if (!(*(v145 + 88))(v146, v141))
  {

    (*(v145 + 96))(v146, v141);
    v150 = *v146;
    v149 = *(v146 + 8);
    LODWORD(v229) = *(v146 + 16);

    OUTLINED_FUNCTION_115();
    v151 = v213;
    (v102)(v213);

    v152 = v145;
    v153 = sub_1DD335CB0();
    v154 = sub_1DD336950();

    if (os_log_type_enabled(v153, v154))
    {
      v21 = swift_slowAlloc();
      OUTLINED_FUNCTION_26();
      v155 = swift_slowAlloc();
      v241 = v155;
      *v21 = 136315394;
      v156 = sub_1DD27DBF0(v150, v149, &v241);

      *(v21 + 4) = v156;
      *(v21 + 6) = 1024;
      *(v21 + 14) = v229;
      _os_log_impl(&dword_1DD27A000, v153, v154, "Database connection failed. Error Message: %s, Error code: %d", v21, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v155);
      OUTLINED_FUNCTION_20();
      MEMORY[0x1E12ADA30]();
      OUTLINED_FUNCTION_84();
      OUTLINED_FUNCTION_20();
      MEMORY[0x1E12ADA30]();
    }

    else
    {
    }

    v167 = OUTLINED_FUNCTION_71_1();
    v168(v167);
    (v237)(v151, v21);
    (*(v152 + 8))(v231, v233);

LABEL_17:
    v169 = v230;
    if (v232)
    {
      (v237)(v2 + v240, v21);
      v170 = v225;
      OUTLINED_FUNCTION_22();
      v172 = *(v171 + 8);
      v173 = OUTLINED_FUNCTION_37_0(&v252);
      v172(v173, v170);
      v174 = OUTLINED_FUNCTION_37_0(&v251);
      v172(v174, v170);
      OUTLINED_FUNCTION_22();
      v175 = OUTLINED_FUNCTION_82();
      v176(v175);
      OUTLINED_FUNCTION_22();
      v178 = *(v177 + 8);
      v179 = OUTLINED_FUNCTION_37_0(&v250);
      v178(v179, v50);
      v180 = v227;
      OUTLINED_FUNCTION_22();
      v182 = *(v181 + 8);
      v183 = OUTLINED_FUNCTION_37_0(&v249);
      v182(v183, v180);
      v184 = OUTLINED_FUNCTION_37_0(&v248);
      v178(v184, v50);
      v185 = OUTLINED_FUNCTION_37_0(&v247);
      v182(v185, v180);
      OUTLINED_FUNCTION_22();
      v186 = OUTLINED_FUNCTION_82();
      v187(v186);
      v188 = OUTLINED_FUNCTION_37_0(&v245);
      v178(v188, v50);
      v189 = OUTLINED_FUNCTION_37_0(&v244);
      v178(v189, v50);
      OUTLINED_FUNCTION_22();
      v190 = OUTLINED_FUNCTION_82();
      v191(v190);
      OUTLINED_FUNCTION_22();
      v192 = OUTLINED_FUNCTION_82();
      v193(v192);
      OUTLINED_FUNCTION_22();
      v194 = OUTLINED_FUNCTION_82();
      v195(v194, v169);
      v196 = OUTLINED_FUNCTION_37_0(&v240);
      v182(v196, v180);
      swift_deallocPartialClassInstance();
    }

    else
    {
    }

    return 0;
  }

  result = sub_1DD336DF0();
  __break(1u);
  return result;
}

uint64_t sub_1DD29D684()
{
  type metadata accessor for Result();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_70();
  type metadata accessor for Table();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_9_1();
  Table.init(_:database:)();
  sub_1DD335860();
  SchemaType.drop(ifExists:)(1);
  Connection.run(_:_:)();

  return (*(v5 + 8))(v0, v3);
}

uint64_t sub_1DD29DB6C(uint64_t a1)
{
  v2 = sub_1DD335CB0();
  v3 = sub_1DD336940();
  v4 = OUTLINED_FUNCTION_64_1();
  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_34_0();
    v6 = swift_slowAlloc();
    OUTLINED_FUNCTION_26();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    OUTLINED_FUNCTION_46();
    *(v6 + 4) = sub_1DD27DBF0(0xD000000000000011, v8, &v17);
    _os_log_impl(&dword_1DD27A000, v2, v3, "Creating table %s.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    v9 = OUTLINED_FUNCTION_18();
    MEMORY[0x1E12ADA30](v9);
    OUTLINED_FUNCTION_20();
    MEMORY[0x1E12ADA30]();
  }

  sub_1DD335860();
  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();
  if (v1)
  {
  }

  else
  {

    v11 = sub_1DD335CB0();
    v12 = sub_1DD336940();
    v13 = OUTLINED_FUNCTION_64_1();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = OUTLINED_FUNCTION_95();
      *v15 = 67109120;
      *(v15 + 4) = 8;
      _os_log_impl(&dword_1DD27A000, v11, v12, "Setting database user_version to %d.", v15, 8u);
      OUTLINED_FUNCTION_20();
      MEMORY[0x1E12ADA30]();
    }

    v17 = 0;
    v18 = 0xE000000000000000;
    sub_1DD335860();
    sub_1DD336C00();

    v17 = 0xD000000000000016;
    v18 = 0x80000001DD33D180;
    v16 = sub_1DD336DC0();
    MEMORY[0x1E12AC540](v16);

    Connection.run(_:_:)();
  }
}

void sub_1DD29E808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_54_0();
  type metadata accessor for Result();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_70();
  type metadata accessor for Connection.TransactionMode();
  v25 = v24;
  OUTLINED_FUNCTION_1_0();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_12();
  v31 = (v30 - v29);
  type metadata accessor for Table();
  v33 = v32;
  OUTLINED_FUNCTION_1_0();
  v35 = v34;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_12();
  v39 = v38 - v37;
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_9_1();
  Table.init(_:database:)();
  v63 = v20;
  v64 = v39;
  (*(v27 + 104))(v31, 0, v25);
  sub_1DD335860();
  Connection.transaction(_:block:)(v31, sub_1DD2A2B48, &v62);
  if (v21)
  {
    v61 = v35;
    (*(v27 + 8))(v31, v25);

    v40 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6568, &unk_1DD3397B0);
    if (swift_dynamicCast())
    {
      v41 = OUTLINED_FUNCTION_61();
      if (!v42(v41))
      {

        v43 = OUTLINED_FUNCTION_61();
        v44(v43);
        v46 = *v22;
        v45 = *(v22 + 8);
        v47 = *(v22 + 16);
        v48 = *(v22 + 24);
        sub_1DD335860();

        v49 = sub_1DD335CB0();
        v50 = sub_1DD336960();

        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          OUTLINED_FUNCTION_80();
          v66 = swift_slowAlloc();
          *v51 = 136315650;
          v52 = sub_1DD27DBF0(v46, v45, &v66);

          *(v51 + 4) = v52;
          *(v51 + 12) = 1024;
          *(v51 + 14) = v47;
          *(v51 + 18) = 2080;
          v65 = v48;
          sub_1DD335860();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6578, &qword_1DD339230);
          v53 = sub_1DD336630();
          v55 = sub_1DD27DBF0(v53, v54, &v66);

          *(v51 + 20) = v55;
          _os_log_impl(&dword_1DD27A000, v49, v50, "Failed to perform db.transaction createElseMigrateTable: %s code: %d statement: %s", v51, 0x1Cu);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_20();
          MEMORY[0x1E12ADA30]();
          OUTLINED_FUNCTION_20();
          MEMORY[0x1E12ADA30]();
        }

        else
        {
        }

        v58 = v33;
        v59 = sub_1DD2A2B64();
        OUTLINED_FUNCTION_68_0(&unk_1F589CC28, v59);
        OUTLINED_FUNCTION_96(v60, 3);

        goto LABEL_11;
      }

      v56 = OUTLINED_FUNCTION_61();
      v57(v56);
    }

    v58 = v33;
LABEL_11:

    (*(v61 + 8))(v39, v58);
    goto LABEL_12;
  }

  (*(v27 + 8))(v31, v25);

  (*(v35 + 8))(v39, v33);
LABEL_12:
  OUTLINED_FUNCTION_53();
}

void sub_1DD29ECB4(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  type metadata accessor for Result();
  v48 = v3;
  v50 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v49 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6678, &qword_1DD339368);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v47 - v7;
  v51 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_logger;
  v9 = sub_1DD335CB0();
  v10 = sub_1DD336940();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1DD27A000, v9, v10, "Beginning transaction.", v11, 2u);
    MEMORY[0x1E12ADA30](v11, -1, -1);
  }

  type metadata accessor for Table();
  sub_1DD335860();
  QueryType.exists.getter();
  Connection.scalar<A>(_:)();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);

    v12 = v49;
    v13 = v50;
    v55[0] = v2;
    v21 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6568, &unk_1DD3397B0);
    v22 = v48;
    if (swift_dynamicCast())
    {
      if ((*(v13 + 88))(v12, v22))
      {
        (*(v13 + 8))(v12, v22);
      }

      else
      {

        (*(v13 + 96))(v12, v22);
        v23 = *v12;
        v24 = *(v12 + 1);
        v25 = *(v12 + 4);
        v26 = *(v12 + 3);
        sub_1DD335860();

        v27 = sub_1DD335CB0();
        v28 = sub_1DD336940();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          *&v53 = v51;
          *v29 = 136315906;
          *(v29 + 4) = sub_1DD27DBF0(0xD000000000000011, 0x80000001DD33CFB0, &v53);
          *(v29 + 12) = 2080;
          v30 = sub_1DD27DBF0(v23, v24, &v53);

          *(v29 + 14) = v30;
          *(v29 + 22) = 1024;
          *(v29 + 24) = v25;
          *(v29 + 28) = 2080;
          v56 = v26;
          sub_1DD335860();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6578, &qword_1DD339230);
          v31 = sub_1DD336630();
          v33 = sub_1DD27DBF0(v31, v32, &v53);

          *(v29 + 30) = v33;
          _os_log_impl(&dword_1DD27A000, v27, v28, "Table %s doesn't exist, creating one: %s code: %d statement: %s", v29, 0x26u);
          v34 = v51;
          swift_arrayDestroy();
          MEMORY[0x1E12ADA30](v34, -1, -1);
          MEMORY[0x1E12ADA30](v29, -1, -1);
        }

        else
        {
        }

        sub_1DD29DB6C(v52);
      }
    }

    return;
  }

  (*(v6 + 8))(v8, v5);

  v14 = sub_1DD335CB0();
  v15 = sub_1DD336940();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v55[0] = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_1DD27DBF0(0xD000000000000011, 0x80000001DD33CFB0, v55);
    _os_log_impl(&dword_1DD27A000, v14, v15, "Table %s exists.", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x1E12ADA30](v17, -1, -1);
    MEMORY[0x1E12ADA30](v16, -1, -1);
  }

  v18 = sub_1DD335CB0();
  v19 = sub_1DD336940();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1DD27A000, v18, v19, "Checking database user_version...", v20, 2u);
    MEMORY[0x1E12ADA30](v20, -1, -1);
  }

  sub_1DD335860();
  Connection.scalar(_:_:)();

  if (!v54)
  {
LABEL_34:
    __break(1u);
    return;
  }

  sub_1DD289CE4(&v53, v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6680, &qword_1DD339370);
  swift_dynamicCast();
  v35 = v56;
  if (v56 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_33;
  }

  if (v56 > 0x7FFFFFFF)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v36 = sub_1DD335CB0();
  v37 = sub_1DD336940();
  v38 = os_log_type_enabled(v36, v37);
  if (v35 == 8)
  {
    if (v38)
    {
      v39 = swift_slowAlloc();
      *v39 = 67109120;
      *(v39 + 4) = 8;
      _os_log_impl(&dword_1DD27A000, v36, v37, "Current database user_version matches Framework's: %d. No need to migrate.", v39, 8u);
      MEMORY[0x1E12ADA30](v39, -1, -1);
    }
  }

  else
  {
    if (v38)
    {
      v40 = swift_slowAlloc();
      *v40 = 67109376;
      *(v40 + 4) = v35;
      *(v40 + 8) = 1024;
      *(v40 + 10) = 8;
      _os_log_impl(&dword_1DD27A000, v36, v37, "Current database user_version %d does not match Framework's: %d", v40, 0xEu);
      MEMORY[0x1E12ADA30](v40, -1, -1);
    }

    v41 = sub_1DD335CB0();
    v42 = sub_1DD336940();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_1DD27A000, v41, v42, "Performing database migration...", v43, 2u);
      MEMORY[0x1E12ADA30](v43, -1, -1);
    }

    sub_1DD29D684();
    sub_1DD29DB6C(v52);
    v44 = sub_1DD335CB0();
    v45 = sub_1DD336940();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_1DD27A000, v44, v45, "Finished database migration.", v46, 2u);
      MEMORY[0x1E12ADA30](v46, -1, -1);
    }
  }
}

void sub_1DD29F5B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_54_0();
  v25 = v24;
  sub_1DD335D60();
  OUTLINED_FUNCTION_1_0();
  v131 = v27;
  v135 = v26;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_6();
  v162 = v28;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_32_1();
  v127 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6580, &qword_1DD339238);
  OUTLINED_FUNCTION_36(v31);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_30();
  v146 = v33;
  OUTLINED_FUNCTION_31_1();
  type metadata accessor for Row();
  v120 = v34;
  OUTLINED_FUNCTION_1_0();
  v116 = v35;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_50_0(v38);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6588, &qword_1DD339240);
  OUTLINED_FUNCTION_1_0();
  v154 = v39;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_10();
  v43 = v41 - v42;
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_32_1();
  v139 = v46;
  OUTLINED_FUNCTION_31_1();
  type metadata accessor for Table();
  v172 = v47;
  OUTLINED_FUNCTION_1_0();
  v158 = v48;
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_6();
  v168 = v50;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_9_1();
  Table.init(_:database:)();
  v52 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_appBundleIdColumn;
  v183 = sub_1DD335D30();
  v184 = v53;
  v54 = MEMORY[0x1E69E6158];
  == infix<A>(_:_:)(v20 + v52, &v183, MEMORY[0x1E69E6158], &protocol witness table for String, MEMORY[0x1E69E6180], v55, v56, v57, v105, v108, v112, v116, v120, v124, v127, v131, v135, v139, v142, v146, v21, v154, v158, v162, v20, v168, v172, v176, v179, v181);

  v58 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_idColumn;
  v183 = sub_1DD335D50();
  v184 = v59;
  == infix<A>(_:_:)(v20 + v58, &v183, v54, &protocol witness table for String, MEMORY[0x1E69E6180], v60, v61, v62, v106, v109, v113, v117, v121, v25, v128, v132, v136, v140, v143, v147, v150, v155, v159, v163, v166, v169, v173, v177, v180, v182);

  v63 = v141;
  v64 = OUTLINED_FUNCTION_79_0();
  && infix(_:_:)(v64, v65, v66, v67, v68, v69, v70, v71, v107, v110, v114, v118, v122, v125, v129, v133, v137, v141, v144, v148, v151, v156, v160, v164, v167, v170, v174, v178);
  v72 = *(v157 + 8);
  v72(v43, v145);
  v72(v22, v145);
  QueryType.filter(_:)();
  v72(v63, v145);
  v185 = v175;
  v186 = &protocol witness table for Table;
  v73 = __swift_allocate_boxed_opaque_existential_1(&v183);
  v74 = v161;
  (*(v161 + 16))(v73, v171, v175);
  sub_1DD335860();
  Connection.pluck(_:)(&v183, v149);
  if (v152)
  {

    __swift_destroy_boxed_opaque_existential_1(&v183);
    v75 = v152;
    v76 = *(v134 + 16);
    v76(v130, v126, v138);
    v76(v165, v126, v138);
    v77 = v152;
    v78 = sub_1DD335CB0();
    v79 = sub_1DD336950();

    if (os_log_type_enabled(v78, v79))
    {
      OUTLINED_FUNCTION_26();
      v80 = swift_slowAlloc();
      v183 = swift_slowAlloc();
      *v80 = 136315650;
      swift_getErrorValue();
      v153 = v79;
      v81 = sub_1DD336E40();
      v83 = sub_1DD27DBF0(v81, v82, &v183);

      *(v80 + 4) = v83;
      *(v80 + 12) = 2080;
      v84 = sub_1DD335D30();
      v86 = v85;
      v87 = *(v134 + 8);
      v88 = OUTLINED_FUNCTION_110();
      v87(v88);
      sub_1DD27DBF0(v84, v86, &v183);
      OUTLINED_FUNCTION_124();

      *(v80 + 14) = v84;
      *(v80 + 22) = 2080;
      v89 = sub_1DD335D50();
      v91 = v90;
      v92 = OUTLINED_FUNCTION_110();
      v87(v92);
      sub_1DD27DBF0(v89, v91, &v183);
      OUTLINED_FUNCTION_124();
      v74 = v161;

      *(v80 + 24) = v89;
      _os_log_impl(&dword_1DD27A000, v78, v153, "Failed to retrieve entity. error: %s appBundleId: %s entityId: %s", v80, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_20();
      MEMORY[0x1E12ADA30]();
      OUTLINED_FUNCTION_20();
      MEMORY[0x1E12ADA30]();
    }

    else
    {

      v96 = *(v134 + 8);
      v96(v165, v138);
      v97 = OUTLINED_FUNCTION_110();
      (v96)(v97);
    }

    v98 = sub_1DD2A2BB8();
    v99 = OUTLINED_FUNCTION_68_0(&type metadata for RREntityStorageError, v98);
    OUTLINED_FUNCTION_132(v99, v100);

    v101 = *(v74 + 8);
    v101(v171, v175);
    v101(v23, v175);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(&v183);
    v93 = OUTLINED_FUNCTION_121();
    if (__swift_getEnumTagSinglePayload(v93, v94, v123) == 1)
    {
      v95 = *(v161 + 8);
      v95(v171, v175);
      v95(v23, v175);
      sub_1DD28A0C0(v149, &qword_1ECCD6580, &qword_1DD339238);
    }

    else
    {
      v102 = OUTLINED_FUNCTION_110();
      v103(v102);
      sub_1DD3360C0();
      (*(v119 + 16))(v115, v111, v123);
      sub_1DD290A3C();
      (*(v119 + 8))(v111, v123);
      v104 = *(v161 + 8);
      v104(v171, v175);
      v104(v23, v175);
    }
  }

  OUTLINED_FUNCTION_53();
}

void sub_1DD29FDC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_54_0();
  v84 = v21;
  type metadata accessor for Row();
  v25 = v24;
  OUTLINED_FUNCTION_1_0();
  v80 = v26;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_12();
  v30 = v29 - v28;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6580, &qword_1DD339238);
  OUTLINED_FUNCTION_36(v31);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v77 - v33;
  type metadata accessor for Table();
  v36 = v35;
  OUTLINED_FUNCTION_1_0();
  v38 = v37;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_6();
  v85 = v40;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_118();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_9_1();
  Table.init(_:database:)();
  v43 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_logger;
  v44 = *(v38 + 16);
  v87 = v36;
  v88 = v44;
  v89 = v38 + 16;
  v44(v22, v23, v36);
  v90 = v20;
  v82 = v43;
  v45 = sub_1DD335CB0();
  v81 = sub_1DD336940();
  v46 = v45;
  v47 = os_log_type_enabled(v45, v81);
  v86 = v38;
  if (v47)
  {
    OUTLINED_FUNCTION_34_0();
    v48 = swift_slowAlloc();
    v83 = v23;
    v49 = v48;
    OUTLINED_FUNCTION_26();
    v79 = swift_slowAlloc();
    v92[0] = v79;
    *v49 = 136315138;
    v50 = v87;
    v88(v85, v22, v87);
    v78 = sub_1DD336630();
    v52 = v51;
    v85 = *(v38 + 8);
    v85(v22, v50);
    v53 = sub_1DD27DBF0(v78, v52, v92);

    *(v49 + 4) = v53;
    _os_log_impl(&dword_1DD27A000, v46, v81, "entityTable: %s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v79);
    OUTLINED_FUNCTION_20();
    MEMORY[0x1E12ADA30]();
    v23 = v83;
    OUTLINED_FUNCTION_20();
    MEMORY[0x1E12ADA30]();

    v54 = v50;
  }

  else
  {

    v55 = v22;
    v54 = v87;
    v85 = *(v38 + 8);
    v85(v55, v87);
  }

  v92[3] = v54;
  v92[4] = &protocol witness table for Table;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v92);
  v88(boxed_opaque_existential_1, v23, v54);
  sub_1DD335860();
  v57 = v84;
  v58 = Connection.prepare(_:)(v92);
  if (v57)
  {
    v59 = v54;

    __swift_destroy_boxed_opaque_existential_1(v92);
    v60 = v57;
    v61 = sub_1DD335CB0();
    v62 = sub_1DD336950();

    if (os_log_type_enabled(v61, v62))
    {
      OUTLINED_FUNCTION_34_0();
      v63 = swift_slowAlloc();
      OUTLINED_FUNCTION_26();
      v64 = v23;
      v65 = swift_slowAlloc();
      v92[0] = v65;
      *v63 = 136315138;
      swift_getErrorValue();
      v66 = sub_1DD336E40();
      v68 = sub_1DD27DBF0(v66, v67, v92);

      *(v63 + 4) = v68;
      _os_log_impl(&dword_1DD27A000, v61, v62, "Failed to get all annotated entities. error: %s", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v65);
      v23 = v64;
      OUTLINED_FUNCTION_20();
      MEMORY[0x1E12ADA30]();
      OUTLINED_FUNCTION_20();
      MEMORY[0x1E12ADA30]();
    }

    v69 = sub_1DD2A2BB8();
    v70 = OUTLINED_FUNCTION_68_0(&type metadata for RREntityStorageError, v69);
    OUTLINED_FUNCTION_132(v70, v71);

    v85(v23, v59);
  }

  else
  {
    v72 = v58;
    v83 = v23;

    __swift_destroy_boxed_opaque_existential_1(v92);
    v88 = v72;
    v89 = MEMORY[0x1E69E7CC0];
    v92[0] = MEMORY[0x1E69E7CC0];
    sub_1DD336C90();
    v73 = (v80 + 32);
    while (1)
    {
      sub_1DD336D60();
      if (__swift_getEnumTagSinglePayload(v34, 1, v25) == 1)
      {
        break;
      }

      (*v73)(v30, v34, v25);
      sub_1DD2A03E4(v30, &v91);
      v74 = OUTLINED_FUNCTION_109();
      v76 = v75(v74);
      if (v91)
      {
        MEMORY[0x1E12AC640](v76);
        if (*((v92[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v92[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v89 = *((v92[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1DD336830();
        }

        sub_1DD336860();
        v89 = v92[0];
      }
    }

    v85(v83, v87);
  }

  OUTLINED_FUNCTION_53();
}

void (*sub_1DD2A03E4@<X0>(uint64_t a1@<X0>, void (**a2)(void)@<X8>))(void)
{
  type metadata accessor for Row();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD3360C0();
  (*(v7 + 16))(v9, a1, v6);
  result = sub_1DD290A3C();
  if (v2)
  {
    Row.get<A>(_:)();
    v12 = v24[0];
    v11 = v24[1];

    v13 = v2;
    v14 = sub_1DD335CB0();
    v15 = sub_1DD336960();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25 = a2;
      v19 = v18;
      v24[0] = v18;
      *v16 = 136315394;
      v20 = sub_1DD27DBF0(v12, v11, v24);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2112;
      v21 = v2;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v22;
      *v17 = v22;
      _os_log_impl(&dword_1DD27A000, v14, v15, "Skipping entity due to initialization error. ID (if available): %s. Error: %@", v16, 0x16u);
      sub_1DD28A0C0(v17, &qword_1ECCD6598, &unk_1DD339248);
      MEMORY[0x1E12ADA30](v17, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v19);
      v23 = v19;
      a2 = v25;
      MEMORY[0x1E12ADA30](v23, -1, -1);
      MEMORY[0x1E12ADA30](v16, -1, -1);
    }

    else
    {
    }

    result = 0;
  }

  *a2 = result;
  return result;
}

void sub_1DD2A06CC()
{
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_131();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_12();
  v9 = v8 - v7;
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_9_1();
  Table.init(_:database:)();
  v33[3] = v3;
  v33[4] = &protocol witness table for Table;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
  (*(v5 + 16))(boxed_opaque_existential_1, v9, v3);
  sub_1DD335860();
  Connection.prepare(_:)(v33);
  if (v1)
  {

    __swift_destroy_boxed_opaque_existential_1(v33);
    v11 = v1;
    v12 = sub_1DD335CB0();
    v13 = sub_1DD336950();

    if (os_log_type_enabled(v12, v13))
    {
      OUTLINED_FUNCTION_34_0();
      v14 = swift_slowAlloc();
      OUTLINED_FUNCTION_26();
      v15 = v5;
      v16 = swift_slowAlloc();
      v33[0] = v16;
      OUTLINED_FUNCTION_128(4.8149e-34);
      v17 = sub_1DD336E40();
      v19 = sub_1DD27DBF0(v17, v18, v33);

      *(v14 + 4) = v19;
      OUTLINED_FUNCTION_129(&dword_1DD27A000, v20, v21, "Failed to query. error: %s");
      __swift_destroy_boxed_opaque_existential_1(v16);
      v5 = v15;
      OUTLINED_FUNCTION_20();
      MEMORY[0x1E12ADA30]();
      v22 = OUTLINED_FUNCTION_18();
      MEMORY[0x1E12ADA30](v22);
    }

    v23 = sub_1DD2A2BB8();
    v24 = OUTLINED_FUNCTION_68_0(&type metadata for RREntityStorageError, v23);
    OUTLINED_FUNCTION_132(v24, v25);

    (*(v5 + 8))(v9, v3);
LABEL_7:
    OUTLINED_FUNCTION_76();
    OUTLINED_FUNCTION_53();
  }

  else
  {
    OUTLINED_FUNCTION_124();

    __swift_destroy_boxed_opaque_existential_1(v33);
    sub_1DD3360C0();
    v26 = sub_1DD336CA0();
    v31 = v5;

    v33[0] = MEMORY[0x1E69E7CC0];
    v27 = sub_1DD2881D0(v26);
    v28 = 0;
    v32 = v27;
    while (1)
    {
      if (v27 == v28)
      {

        (*(v31 + 8))(v9, v3);
        goto LABEL_7;
      }

      if ((v26 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x1E12ACA60](v28, v26);
      }

      else
      {
        if (v28 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v29 = *(v26 + 8 * v28 + 32);
      }

      v30 = v29;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if ([v0 evaluateWithObject_])
      {
        sub_1DD336C50();
        sub_1DD336C70();
        sub_1DD336C80();
        sub_1DD336C60();
        v27 = v32;
      }

      else
      {
      }

      ++v28;
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }
}

void sub_1DD2A0A94()
{
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_131();
  v2 = v1;
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12();
  v8 = v7 - v6;
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_9_1();
  Table.init(_:database:)();
  v33[3] = v2;
  v33[4] = &protocol witness table for Table;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
  v32 = v8;
  (*(v4 + 16))(boxed_opaque_existential_1, v8, v2);
  sub_1DD335860();
  Connection.prepare(_:)(v33);
  if (v0)
  {

    __swift_destroy_boxed_opaque_existential_1(v33);
    v10 = v0;
    v11 = sub_1DD335CB0();
    v12 = sub_1DD336950();

    if (os_log_type_enabled(v11, v12))
    {
      OUTLINED_FUNCTION_34_0();
      v13 = swift_slowAlloc();
      OUTLINED_FUNCTION_26();
      v14 = v4;
      v15 = swift_slowAlloc();
      v33[0] = v15;
      OUTLINED_FUNCTION_128(4.8149e-34);
      v16 = sub_1DD336E40();
      v18 = sub_1DD27DBF0(v16, v17, v33);

      *(v13 + 4) = v18;
      OUTLINED_FUNCTION_129(&dword_1DD27A000, v19, v20, "Failed to query. error: %s");
      __swift_destroy_boxed_opaque_existential_1(v15);
      v4 = v14;
      OUTLINED_FUNCTION_20();
      MEMORY[0x1E12ADA30]();
      v21 = OUTLINED_FUNCTION_18();
      MEMORY[0x1E12ADA30](v21);
    }

    v22 = sub_1DD2A2BB8();
    v23 = OUTLINED_FUNCTION_68_0(&type metadata for RREntityStorageError, v22);
    OUTLINED_FUNCTION_132(v23, v24);

    (*(v4 + 8))(v8, v2);
LABEL_7:
    OUTLINED_FUNCTION_76();
    OUTLINED_FUNCTION_53();
  }

  else
  {
    OUTLINED_FUNCTION_124();

    __swift_destroy_boxed_opaque_existential_1(v33);
    sub_1DD3360C0();
    v25 = sub_1DD336CA0();
    v31 = v4;

    v33[0] = MEMORY[0x1E69E7CC0];
    v26 = sub_1DD2881D0(v25);
    for (i = 0; ; ++i)
    {
      if (v26 == i)
      {

        (*(v31 + 8))(v32, v2);
        goto LABEL_7;
      }

      if ((v25 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x1E12ACA60](i, v25);
      }

      else
      {
        if (i >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v28 = *(v25 + 8 * i + 32);
      }

      v29 = v28;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_1DD335ED0();
      v30 = sub_1DD335960();

      if (v30)
      {
        sub_1DD336C50();
        sub_1DD336C70();
        sub_1DD336C80();
        sub_1DD336C60();
      }

      else
      {
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }
}

void (*sub_1DD2A0E48@<X0>(void *a1@<X1>, void (**a2)(void)@<X8>))(void)
{
  type metadata accessor for Row();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_70();
  sub_1DD3360C0();
  OUTLINED_FUNCTION_106_0();
  v6();
  result = sub_1DD290A3C();
  if (v2)
  {
    *a1 = v2;
  }

  else
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DD2A0F34(uint64_t a1, uint64_t a2, double a3)
{
  v127 = a2;
  sub_1DD334830();
  OUTLINED_FUNCTION_1_0();
  v128 = v8;
  v129 = v9;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_12();
  v114 = v11 - v10;
  OUTLINED_FUNCTION_31_1();
  v117 = sub_1DD335D60();
  OUTLINED_FUNCTION_1_0();
  v119 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_6();
  v116 = v14;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_32_1();
  v115 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A0, &unk_1DD338D70);
  OUTLINED_FUNCTION_36(v17);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_30();
  v121 = v19;
  OUTLINED_FUNCTION_31_1();
  type metadata accessor for Update();
  OUTLINED_FUNCTION_1_0();
  v125 = v21;
  v126 = v20;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_12();
  v132 = (v23 - v22);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6588, &qword_1DD339240);
  OUTLINED_FUNCTION_1_0();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_27();
  type metadata accessor for Table();
  v131 = v29;
  OUTLINED_FUNCTION_1_0();
  v124 = v30;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_6();
  v133 = v32;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v113 - v34;
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_9_1();
  Table.init(_:database:)();
  v36 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_idColumn;
  v37 = sub_1DD335D50();
  OUTLINED_FUNCTION_104(v37, v38);
  == infix<A>(_:_:)(v4 + v36, v134, MEMORY[0x1E69E6158], &protocol witness table for String, MEMORY[0x1E69E6180], v39, v40, v41, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v4, v131, v132, v133, v134[0]);

  v118 = a1;
  v42 = sub_1DD335D30();
  OUTLINED_FUNCTION_104(v42, v43);
  OUTLINED_FUNCTION_60_0();
  == infix<A>(_:_:)(v44, v45, MEMORY[0x1E69E6158], &protocol witness table for String, MEMORY[0x1E69E6180], v46, v47, v48, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134[0]);

  v49 = OUTLINED_FUNCTION_61();
  && infix(_:_:)(v49, v50, v51, v52, v53, v54, v55, v56, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132);
  v57 = *(v25 + 8);
  v58 = v3;
  v59 = v120;
  (v57)(v58, v120);
  v60 = OUTLINED_FUNCTION_61();
  v57(v60);
  v123 = v35;
  v61 = v127;
  QueryType.filter(_:)();
  (v57)(v5, v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65A0, &qword_1DD339258);
  v62 = type metadata accessor for Setter();
  OUTLINED_FUNCTION_69_0(v62);
  v64 = *(v63 + 72);
  v66 = (*(v65 + 80) + 32) & ~*(v65 + 80);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_1DD3391F0;
  *v134 = a3;
  v68 = v130;
  <- infix<A>(_:_:)(v130 + OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_saliencyScoreColumn, MEMORY[0x1E69E63B0], &protocol witness table for Double, v67 + v66);
  v69 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_saliencyComputedAtColumn;
  v70 = v121;
  v71 = v61;
  v72 = v128;
  v120 = *(v129 + 16);
  v120(v121, v71, v128);
  __swift_storeEnumTagSinglePayload(v70, 0, 1, v72);
  <- infix<A>(_:_:)((v68 + v69), v70, &protocol witness table for Date, v67 + v66 + v64);
  sub_1DD28A0C0(v70, &qword_1ECCD62A0, &unk_1DD338D70);
  v73 = v132;
  QueryType.update(_:)(v67);

  sub_1DD335860();
  v135.template._countAndFlagsBits = v73;
  v74 = Connection.run(_:)(v135);
  if (v75)
  {
  }

  else
  {
    v67 = v74;
    v76 = v120;
    v122 = 0;
    v78 = v117;
    v77 = v118;
    v79 = v115;
    v80 = v116;

    v81 = *(v119 + 16);
    if (v67 == 1)
    {
      v67 = v78;
      v81(v80, v77, v78);
      v76(v114, v127, v128);
      v73 = sub_1DD335CB0();
      v82 = sub_1DD336940();
      if (os_log_type_enabled(v73, v82))
      {
        OUTLINED_FUNCTION_26();
        v67 = swift_slowAlloc();
        OUTLINED_FUNCTION_80();
        v134[0] = swift_slowAlloc();
        *v67 = 136315650;
        LODWORD(v130) = v82;
        sub_1DD335D50();
        v83 = OUTLINED_FUNCTION_38();
        v84(v83, v78);
        v85 = OUTLINED_FUNCTION_41();
        v88 = sub_1DD27DBF0(v85, v86, v87);

        *(v67 + 4) = v88;
        *(v67 + 12) = 2048;
        *(v67 + 14) = a3;
        *(v67 + 22) = 2080;
        sub_1DD28AEE0(&qword_1EE027A40, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
        sub_1DD336DC0();
        v89 = OUTLINED_FUNCTION_97();
        v90(v89);
        v91 = OUTLINED_FUNCTION_41();
        v94 = sub_1DD27DBF0(v91, v92, v93);

        *(v67 + 24) = v94;
        _os_log_impl(&dword_1DD27A000, v73, v130, "Successfully updated entity %s's saliencyScore to %f computed at %s", v67, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_20();
        MEMORY[0x1E12ADA30]();
        OUTLINED_FUNCTION_20();
        MEMORY[0x1E12ADA30]();
      }

      else
      {

        v103 = OUTLINED_FUNCTION_97();
        v104(v103);
        v105 = OUTLINED_FUNCTION_38();
        v106(v105, v78);
      }
    }

    else
    {
      v81(v79, v77, v78);
      v73 = sub_1DD335CB0();
      v95 = sub_1DD336950();
      if (os_log_type_enabled(v73, v95))
      {
        OUTLINED_FUNCTION_40();
        v96 = swift_slowAlloc();
        OUTLINED_FUNCTION_26();
        v97 = swift_slowAlloc();
        v134[0] = v97;
        *v96 = 134218242;
        *(v96 + 4) = v67;
        *(v96 + 12) = 2080;
        v98 = sub_1DD335D50();
        v67 = v99;
        v100 = OUTLINED_FUNCTION_38();
        v101(v100, v78);
        v102 = sub_1DD27DBF0(v98, v67, v134);

        *(v96 + 14) = v102;
        _os_log_impl(&dword_1DD27A000, v73, v95, "Unexpected number of rows (%ld) were updated. entity: %s", v96, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v97);
        OUTLINED_FUNCTION_20();
        MEMORY[0x1E12ADA30]();
        OUTLINED_FUNCTION_20();
        MEMORY[0x1E12ADA30]();
      }

      else
      {

        v107 = OUTLINED_FUNCTION_38();
        v108(v107, v78);
      }

      v109 = sub_1DD2A2BB8();
      OUTLINED_FUNCTION_68_0(&type metadata for RREntityStorageError, v109);
      OUTLINED_FUNCTION_96(v110, 1);
    }
  }

  (*(v125 + 8))(v132, v126);
  v111 = OUTLINED_FUNCTION_81_0();
  (v73)(v111);
  return (v73)(v123, v67);
}

void sub_1DD2A18B4()
{
  OUTLINED_FUNCTION_54_0();
  v3 = v2;
  v5 = v4;
  v17 = sub_1DD335CA0();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_103();
  if (qword_1EE027820 != -1)
  {
    swift_once();
  }

  v7 = qword_1EE02A228;
  sub_1DD335C90();
  sub_1DD336A40();
  v8 = qword_1EE02A228;
  OUTLINED_FUNCTION_88();
  sub_1DD335C70();

  v9 = 0;
  v10 = *(v5 + 16);
  do
  {
    if (v10 == v9)
    {
      break;
    }

    v11 = sub_1DD335D60();
    OUTLINED_FUNCTION_69_0(v11);
    sub_1DD2A1AD0(v5 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v13 + 72) * v9++, v0, v3 & 1);
  }

  while (!v1);
  sub_1DD336A30();
  v14 = qword_1EE02A228;
  sub_1DD335C80();

  v15 = OUTLINED_FUNCTION_98();
  v16(v15, v17);
  OUTLINED_FUNCTION_53();
}

void sub_1DD2A1AD0(uint64_t a1, uint64_t a2, int a3)
{
  v62 = a3;
  v5 = sub_1DD335D60();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v67 = &v54[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x1EEE9AC00](v7);
  v66 = &v54[-v10];
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v54[-v12];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v54[-v14];
  v16 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_logger;
  v17 = *(v6 + 16);
  v17(&v54[-v14], a1, v5);
  v64 = a1;
  v58 = v17;
  v17(v13, a1, v5);
  v65 = a2;
  v59 = v16;
  v18 = sub_1DD335CB0();
  v19 = sub_1DD336940();
  v20 = os_log_type_enabled(v18, v19);
  v61 = v6;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v56 = v18;
    v22 = v21;
    v57 = swift_slowAlloc();
    v68 = v57;
    *v22 = 136315394;
    v23 = sub_1DD335D50();
    v55 = v19;
    v25 = v24;
    v26 = *(v6 + 8);
    v26(v15, v5);
    v27 = sub_1DD27DBF0(v23, v25, &v68);

    *(v22 + 4) = v27;
    *(v22 + 12) = 2080;
    v28 = sub_1DD335D30();
    v30 = v29;
    v60 = v26;
    v26(v13, v5);
    v31 = sub_1DD27DBF0(v28, v30, &v68);

    *(v22 + 14) = v31;
    v32 = v56;
    _os_log_impl(&dword_1DD27A000, v56, v55, "Deleting entity id: %s appBundleId: %s", v22, 0x16u);
    v33 = v57;
    swift_arrayDestroy();
    MEMORY[0x1E12ADA30](v33, -1, -1);
    MEMORY[0x1E12ADA30](v22, -1, -1);
  }

  else
  {

    v34 = *(v6 + 8);
    v34(v13, v5);
    v60 = v34;
    v34(v15, v5);
  }

  v35 = v64;
  v36 = v63;
  sub_1DD2A1FFC(v64);
  if (v36)
  {
    v37 = v58;
    v58(v66, v35, v5);
    v37(v67, v35, v5);
    v38 = sub_1DD335CB0();
    v39 = sub_1DD336950();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v68 = v65;
      *v40 = 136315394;
      LODWORD(v64) = v39;
      v41 = v66;
      v42 = sub_1DD335D50();
      v44 = v43;
      v45 = v60;
      v60(v41, v5);
      v46 = sub_1DD27DBF0(v42, v44, &v68);

      *(v40 + 4) = v46;
      *(v40 + 12) = 2080;
      v47 = v67;
      v48 = sub_1DD335D30();
      v50 = v49;
      v45(v47, v5);
      v51 = sub_1DD27DBF0(v48, v50, &v68);

      *(v40 + 14) = v51;
      _os_log_impl(&dword_1DD27A000, v38, v64, "Failed to delete entity id: %s appBundleId: %s", v40, 0x16u);
      v52 = v65;
      swift_arrayDestroy();
      MEMORY[0x1E12ADA30](v52, -1, -1);
      MEMORY[0x1E12ADA30](v40, -1, -1);
    }

    else
    {

      v53 = v60;
      v60(v67, v5);
      v53(v66, v5);
    }

    if (v62)
    {
    }

    else
    {
      swift_willThrow();
    }
  }
}

uint64_t RRSQLiteStorage.deinit()
{
  v1 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_logger;
  sub_1DD335CD0();
  OUTLINED_FUNCTION_4_0();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_idColumn;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65A8, &qword_1DD339260);
  OUTLINED_FUNCTION_1();
  v6 = *(v5 + 8);
  v6(v0 + v3, v4);
  v6(v0 + OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_appBundleIdColumn, v4);
  v7 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_usoEntityColumn;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65B0, &qword_1DD339268);
  OUTLINED_FUNCTION_4_0();
  (*(v8 + 8))(v0 + v7);
  v9 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_typedValueColumn;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65B8, &qword_1DD339270);
  OUTLINED_FUNCTION_1();
  v12 = *(v11 + 8);
  v12(v0 + v9, v10);
  v13 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_dataTypeColumn;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65C0, &qword_1DD339278);
  OUTLINED_FUNCTION_1();
  v16 = *(v15 + 8);
  v16(v0 + v13, v14);
  v12(v0 + OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_dataColumn, v10);
  v16(v0 + OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_groupIdColumn, v14);
  v17 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_groupSeqColumn;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65C8, &qword_1DD339280);
  OUTLINED_FUNCTION_4_0();
  (*(v18 + 8))(v0 + v17);
  v12(v0 + OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_metadataColumn, v10);
  v12(v0 + OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_annotationsColumn, v10);
  v19 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_saliencyScoreColumn;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65D0, &qword_1DD339288);
  OUTLINED_FUNCTION_4_0();
  (*(v20 + 8))(v0 + v19);
  v21 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_saliencyComputedAtColumn;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65D8, &qword_1DD339290);
  OUTLINED_FUNCTION_4_0();
  (*(v22 + 8))(v0 + v21);
  v23 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_onScreenSaliencyAdjustmentColumn;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65E0, &qword_1DD339298);
  OUTLINED_FUNCTION_4_0();
  (*(v24 + 8))(v0 + v23);
  v16(v0 + OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_userIdColumn, v14);

  return v0;
}

uint64_t RRSQLiteStorage.__deallocating_deinit()
{
  RRSQLiteStorage.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1DD2A27E0(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_1DD336830();
  }

  return result;
}

void *sub_1DD2A280C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1DD2A2858(a1, a2);
  sub_1DD2A2970(&unk_1F589A748);
  return v3;
}

void *sub_1DD2A2858(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_1DD336730())
  {
    result = sub_1DD29684C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1DD336BF0();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 4;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = sub_1DD336C30();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 4;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1DD2A2970(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_1DD2A2A54(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1DD2A2A54(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6688, &qword_1DD339378);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_1DD2A2B64()
{
  result = qword_1ECCD6570;
  if (!qword_1ECCD6570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD6570);
  }

  return result;
}

unint64_t sub_1DD2A2BB8()
{
  result = qword_1ECCD6590;
  if (!qword_1ECCD6590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD6590);
  }

  return result;
}

unint64_t sub_1DD2A2C18(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

void (*sub_1DD2A2C3C(void *a1, unint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_1DD2A2C0C(a3);
  sub_1DD2A2C18(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x1E12ACA60](a2, a3);
  }

  *a1 = v7;
  return sub_1DD2A2CC8;
}

uint64_t sub_1DD2A2CD0@<X0>(void *a1@<X8>)
{
  result = sub_1DD2A0E48(&v6, &v7);
  if (v1)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6568, &unk_1DD3397B0);
    result = OUTLINED_FUNCTION_68_0(v4, MEMORY[0x1E69E7288]);
    *v5 = v6;
  }

  else
  {
    *a1 = v7;
  }

  return result;
}

void sub_1DD2A2D48(uint64_t a1)
{
  sub_1DD335CD0();
  if (v2 <= 0x3F)
  {
    sub_1DD2A32E0(319, &qword_1EE028788, MEMORY[0x1E69E6158], v1);
    if (v4 <= 0x3F)
    {
      sub_1DD2A32E0(319, &qword_1EE0287B8, MEMORY[0x1E6969080], v3);
      if (v5 <= 0x3F)
      {
        sub_1DD2A332C(319, &qword_1EE0287A8, &qword_1ECCD65E8, &qword_1DD3392E8);
        if (v6 <= 0x3F)
        {
          sub_1DD2A332C(319, &qword_1EE028778, &qword_1ECCD65F0, &qword_1DD3392F0);
          if (v7 <= 0x3F)
          {
            sub_1DD2A332C(319, &qword_1EE028748, &qword_1ECCD65F8, &qword_1DD3392F8);
            if (v9 <= 0x3F)
            {
              sub_1DD2A32E0(319, &qword_1EE028768, MEMORY[0x1E69E63B0], v8);
              if (v10 <= 0x3F)
              {
                sub_1DD2A332C(319, &qword_1EE028798, &qword_1ECCD62A0, &unk_1DD338D70);
                if (v11 <= 0x3F)
                {
                  sub_1DD2A332C(319, &qword_1EE028758, &qword_1ECCD6600, &unk_1DD339300);
                  if (v12 <= 0x3F)
                  {
                    swift_updateClassMetadata2();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_1DD2A32E0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = type metadata accessor for Expression(0, a3, a3, a4);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1DD2A332C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = type metadata accessor for Expression(a1, v6, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1DD2A3380()
{
  result = qword_1ECCD6620;
  if (!qword_1ECCD6620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCD6608, &qword_1DD339310);
    sub_1DD28AEE0(&qword_1ECCD6628, MEMORY[0x1E69DAE88], MEMORY[0x1E69DAE90]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD6620);
  }

  return result;
}

uint64_t sub_1DD2A343C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_127(a1, a2, a3, a4);
  OUTLINED_FUNCTION_1();
  v5 = OUTLINED_FUNCTION_123();
  v6(v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_92()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_96@<X0>(_BYTE *a2@<X1>, char a3@<W8>)
{
  *a2 = a3;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_128(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

void OUTLINED_FUNCTION_129(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_131()
{

  type metadata accessor for Table();
}

uint64_t OUTLINED_FUNCTION_133()
{
}

uint64_t OUTLINED_FUNCTION_134(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t sub_1DD2A3680(uint64_t a1)
{
  v2 = sub_1DD335CD0();
  v3 = OUTLINED_FUNCTION_36(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_12();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6690, &qword_1DD339390);
  OUTLINED_FUNCTION_36(v7);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - v9;
  sub_1DD27F118(a1, v13 - v9, &qword_1ECCD6690, &qword_1DD339390);
  v13[1] = type metadata accessor for RRBiomeNotificationPuller(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD66E8, &qword_1DD339458);
  sub_1DD336630();
  sub_1DD335CC0();
  v11 = sub_1DD2A37D0(v10, v6);
  sub_1DD296084(a1, &qword_1ECCD6690, &qword_1DD339390);
  return v11;
}

uint64_t sub_1DD2A37D0(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 96);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6698, &qword_1DD339398);
  __swift_storeEnumTagSinglePayload(v2 + v5, 1, 1, v6);
  swift_beginAccess();
  sub_1DD2A82A8(a1, v2 + v5, &qword_1ECCD6690, &qword_1DD339390);
  swift_endAccess();
  v7 = qword_1EE02A6A0;
  v8 = sub_1DD335CD0();
  (*(*(v8 - 8) + 32))(v2 + v7, a2, v8);
  return v2;
}

uint64_t RRBiomeNotificationPuller.__allocating_init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6690, &qword_1DD339390);
  OUTLINED_FUNCTION_36(v1);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_28_0();
  sub_1DD27D80C(0, &qword_1EE028590, 0x1E698F2B8);
  sub_1DD334A50();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6698, &qword_1DD339398);
  OUTLINED_FUNCTION_20_0(v3);
  v4 = type metadata accessor for RRBiomeNotificationPuller(0);
  OUTLINED_FUNCTION_51_1(v4);
  return sub_1DD2A3680(v0);
}

uint64_t type metadata accessor for RRBiomeNotificationPuller(uint64_t a1)
{
  result = qword_1EE028C38;
  if (!qword_1EE028C38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DD2A39C4()
{
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  v23 = v3;
  v4 = sub_1DD334830();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_1();
  v24 = sub_1DD335CA0();
  OUTLINED_FUNCTION_1_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_12();
  v13 = v12 - v11;
  if (qword_1EE027640 != -1)
  {
    OUTLINED_FUNCTION_14_1(&qword_1EE027640);
  }

  v14 = qword_1EE02A1F0;
  sub_1DD335C90();
  sub_1DD336A40();
  v15 = qword_1EE02A1F0;
  OUTLINED_FUNCTION_88();
  sub_1DD335C70();

  v16 = sub_1DD335CB0();
  v17 = sub_1DD336940();
  if (os_log_type_enabled(v16, v17))
  {
    OUTLINED_FUNCTION_33_0();
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1DD27A000, v16, v17, "Entering RRBiomeNotificationPuller...", v18, 2u);
    OUTLINED_FUNCTION_20();
    MEMORY[0x1E12ADA30]();
  }

  sub_1DD334790();
  sub_1DD2A3D0C(v0, 30, 0, v23, v2);
  v19 = sub_1DD335CB0();
  v20 = sub_1DD336940();
  if (os_log_type_enabled(v19, v20))
  {
    OUTLINED_FUNCTION_33_0();
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1DD27A000, v19, v20, "Exiting RRBiomeNotificationPuller...", v21, 2u);
    OUTLINED_FUNCTION_20();
    MEMORY[0x1E12ADA30]();
  }

  (*(v6 + 8))(v0, v4);
  sub_1DD336A30();
  v22 = qword_1EE02A1F0;
  sub_1DD335C80();

  (*(v9 + 8))(v13, v24);
  OUTLINED_FUNCTION_24_1();
}

uint64_t sub_1DD2A3D0C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t), uint64_t a5)
{
  v36 = a5;
  v34 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD66A0, &qword_1DD339410);
  OUTLINED_FUNCTION_1_0();
  v33 = v7;
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v8);
  v35 = &v33 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD66A8, &qword_1DD339418);
  v11 = OUTLINED_FUNCTION_36(v10);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v33 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = MEMORY[0x1E69E7CC0];
  v18 = OUTLINED_FUNCTION_123();
  sub_1DD2A6CF4(v18, v19, v20, v21, 0, v22);
  sub_1DD27F118(v16, v14, &qword_1ECCD66A8, &qword_1DD339418);
  if (__swift_getEnumTagSinglePayload(v14, 1, v6) == 1)
  {
    sub_1DD296084(v14, &qword_1ECCD66A8, &qword_1DD339418);
    sub_1DD2A80D0();
    v23 = swift_allocError();
    v34(v23, 1);

    v24 = sub_1DD335CB0();
    v25 = sub_1DD336950();
    if (os_log_type_enabled(v24, v25))
    {
      OUTLINED_FUNCTION_33_0();
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1DD27A000, v24, v25, "Failed to pull notificaton events from Biome stream", v26, 2u);
      OUTLINED_FUNCTION_20();
      MEMORY[0x1E12ADA30]();
    }
  }

  else
  {
    v27 = v33;
    (*(v33 + 32))(v35, v14, v6);
    v28 = swift_allocObject();
    v29 = v34;
    v28[2] = v5;
    v28[3] = v29;
    v28[4] = v36;
    v28[5] = v17;
    v30 = swift_allocObject();
    *(v30 + 16) = v5;
    *(v30 + 24) = v17;
    sub_1DD288794(&qword_1EE027A28, &qword_1ECCD66A0, &qword_1DD339410, MEMORY[0x1E698F090]);
    swift_retain_n();
    swift_retain_n();
    sub_1DD335860();
    v31 = v35;

    (*(v27 + 8))(v31, v6);
  }

  sub_1DD296084(v16, &qword_1ECCD66A8, &qword_1DD339418);
}

BOOL sub_1DD2A40E8(void *a1)
{
  v1 = [a1 eventBody];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1DD2A81E4(v1, &selRef_bundleID);
  if (v3)
  {

    v4 = 0;
    do
    {
      v5 = v4 == 40;
      if (v4 == 40)
      {
        break;
      }

      v6 = *(&unk_1F589A770 + v4 + 32);
      v4 += 8;
    }

    while (v6 != [v2 usageType]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_1DD2A419C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void), uint64_t a4, uint64_t a5)
{
  v6 = sub_1DD335CB0();
  v7 = sub_1DD336940();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1DD27A000, v6, v7, "Finished pulling notification stream successfully", v8, 2u);
    MEMORY[0x1E12ADA30](v8, -1, -1);
  }

  swift_beginAccess();

  a3(v9, 0);
}

void sub_1DD2A4290()
{
  OUTLINED_FUNCTION_23_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A0, &unk_1DD338D70);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_31_3();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6348, &unk_1DD338E20);
  OUTLINED_FUNCTION_36(v5);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_17_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6350, &unk_1DD3396F0);
  OUTLINED_FUNCTION_36(v7);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1_1();
  sub_1DD2A76F0();
  if (v10)
  {
    sub_1DD2A81E4(v0, &selRef_bundleID);
    if (v11)
    {
      v12 = [v0 notificationID];
      sub_1DD3365D0();

      v13 = sub_1DD335E60();
      OUTLINED_FUNCTION_9_2(v13);
      sub_1DD335860();
      OUTLINED_FUNCTION_4_2();
      sub_1DD3361F0();
      v14 = sub_1DD336240();
      OUTLINED_FUNCTION_8_1(v14);
      sub_1DD296084(v2, &qword_1ECCD6348, &unk_1DD338E20);
      sub_1DD2A7844(v1);
      v15 = sub_1DD334830();
      OUTLINED_FUNCTION_42_1(v15);

      v16 = OUTLINED_FUNCTION_26_0();
      v17(v16);
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_24_1();
}

void sub_1DD2A44D4()
{
  OUTLINED_FUNCTION_23_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A0, &unk_1DD338D70);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_28_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6348, &unk_1DD338E20);
  OUTLINED_FUNCTION_36(v5);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_17_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6350, &unk_1DD3396F0);
  OUTLINED_FUNCTION_36(v7);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1_1();
  if (sub_1DD2A7998())
  {
    sub_1DD2A81E4(v1, &selRef_bundleID);
    if (v11)
    {
      v12 = sub_1DD335E60();
      OUTLINED_FUNCTION_9_2(v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD66C0, &qword_1DD339430);
      v13 = sub_1DD335CE0();
      OUTLINED_FUNCTION_1_0();
      v23 = v0;
      v15 = v14;
      OUTLINED_FUNCTION_29_0();
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1DD339380;
      v17 = *MEMORY[0x1E69D28F8];
      sub_1DD336130();
      OUTLINED_FUNCTION_1();
      (*(v18 + 104))(v16 + v9, v17);
      (*(v15 + 104))(v16 + v9, *MEMORY[0x1E69D27E8], v13);

      sub_1DD335860();
      OUTLINED_FUNCTION_27_0();
      OUTLINED_FUNCTION_4_2();
      sub_1DD3361E0();
      v19 = sub_1DD336240();
      OUTLINED_FUNCTION_8_1(v19);
      sub_1DD296084(v2, &qword_1ECCD6348, &unk_1DD338E20);
      sub_1DD2A7844(v23);
      v20 = sub_1DD334830();
      OUTLINED_FUNCTION_20_0(v20);
      sub_1DD335FC0();

      v21 = OUTLINED_FUNCTION_26_0();
      v22(v21);
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_24_1();
}

void sub_1DD2A47E0()
{
  OUTLINED_FUNCTION_23_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A0, &unk_1DD338D70);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_28_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6348, &unk_1DD338E20);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_17_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6350, &unk_1DD3396F0);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_1_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1_1();
  if (sub_1DD2A7AE8())
  {
    sub_1DD2A81E4(v1, &selRef_bundleID);
    if (v14)
    {
      v15 = [v1 uniqueID];
      sub_1DD3365D0();

      v16 = sub_1DD335E60();
      OUTLINED_FUNCTION_9_2(v16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD66C0, &qword_1DD339430);
      v25 = v2;
      v17 = sub_1DD335CE0();
      OUTLINED_FUNCTION_1_0();
      v19 = v18;
      OUTLINED_FUNCTION_29_0();
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1DD339380;
      v26 = v12;
      v21 = *MEMORY[0x1E69D28F8];
      sub_1DD336130();
      OUTLINED_FUNCTION_1();
      (*(v22 + 104))(v20 + v10, v21);
      (*(v19 + 104))(v20 + v10, *MEMORY[0x1E69D27E8], v17);
      sub_1DD335860();
      OUTLINED_FUNCTION_27_0();
      OUTLINED_FUNCTION_4_2();
      sub_1DD3361E0();
      v23 = sub_1DD336240();
      __swift_storeEnumTagSinglePayload(v25, 1, 1, v23);
      sub_1DD336190();
      sub_1DD296084(v25, &qword_1ECCD6348, &unk_1DD338E20);
      sub_1DD2A7844(v0);
      v24 = sub_1DD334830();
      OUTLINED_FUNCTION_20_0(v24);
      sub_1DD335FC0();

      (*(v26 + 8))(v3, v10);
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_24_1();
}

void sub_1DD2A4B34()
{
  OUTLINED_FUNCTION_23_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A0, &unk_1DD338D70);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_31_3();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6348, &unk_1DD338E20);
  OUTLINED_FUNCTION_36(v5);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_17_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6350, &unk_1DD3396F0);
  OUTLINED_FUNCTION_36(v7);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1_1();
  if (sub_1DD2A7CB8())
  {
    sub_1DD2A81E4(v0, &selRef_title);
    if (v10)
    {
      sub_1DD2A81E4(v0, &selRef_bundleID);
      if (v11)
      {
        v12 = sub_1DD335E60();
        OUTLINED_FUNCTION_9_2(v12);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD66C0, &qword_1DD339430);
        v22 = sub_1DD335CE0();
        OUTLINED_FUNCTION_1_0();
        v14 = v13;
        OUTLINED_FUNCTION_29_0();
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_1DD339380;
        v16 = *MEMORY[0x1E69D28F8];
        sub_1DD336130();
        OUTLINED_FUNCTION_1();
        (*(v17 + 104))(v15 + v1, v16);
        (*(v14 + 104))(v15 + v1, *MEMORY[0x1E69D27E8], v22);
        sub_1DD335860();
        OUTLINED_FUNCTION_27_0();
        OUTLINED_FUNCTION_4_2();
        sub_1DD3361E0();
        v18 = sub_1DD336240();
        OUTLINED_FUNCTION_8_1(v18);
        sub_1DD296084(v2, &qword_1ECCD6348, &unk_1DD338E20);
        sub_1DD2A7844(v1);
        v19 = sub_1DD334830();
        OUTLINED_FUNCTION_42_1(v19);

        v20 = OUTLINED_FUNCTION_26_0();
        v21(v20);
      }

      else
      {
      }
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_24_1();
}

uint64_t sub_1DD2A4E60()
{
  OUTLINED_FUNCTION_4();
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  *(v1 + 120) = v3;
  *(v1 + 24) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD66A0, &qword_1DD339410);
  *(v1 + 48) = v5;
  OUTLINED_FUNCTION_69_0(v5);
  *(v1 + 56) = v6;
  *(v1 + 64) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD66A8, &qword_1DD339418);
  OUTLINED_FUNCTION_36(v7);
  *(v1 + 72) = swift_task_alloc();
  *(v1 + 80) = swift_task_alloc();
  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DD2A4F64()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 48);
  v4 = *(v0 + 120);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  v7 = swift_allocObject();
  *(v0 + 88) = v7;
  *(v7 + 16) = MEMORY[0x1E69E7CC0];
  sub_1DD2A6CF4(v6, v5, v4 & 1, sub_1DD2A552C, 0, v1);
  sub_1DD27F118(v1, v2, &qword_1ECCD66A8, &qword_1DD339418);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_1DD296084(*(v0 + 72), &qword_1ECCD66A8, &qword_1DD339418);
    v8 = sub_1DD335CB0();
    v9 = sub_1DD336950();
    if (os_log_type_enabled(v8, v9))
    {
      OUTLINED_FUNCTION_33_0();
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1DD27A000, v8, v9, "Failed to pull notificaton events from Biome stream", v10, 2u);
      OUTLINED_FUNCTION_20();
      MEMORY[0x1E12ADA30]();
    }

    v11 = *(v0 + 80);

    sub_1DD2A80D0();
    swift_allocError();
    swift_willThrow();
    sub_1DD296084(v11, &qword_1ECCD66A8, &qword_1DD339418);

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v14 = *(v0 + 64);
    v15 = *(v0 + 40);
    (*(*(v0 + 56) + 32))(v14, *(v0 + 72), *(v0 + 48));
    v16 = swift_task_alloc();
    *(v0 + 96) = v16;
    v16[2] = v14;
    v16[3] = v15;
    v16[4] = v7;
    v17 = swift_task_alloc();
    *(v0 + 104) = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A8, "be");
    *v17 = v0;
    v17[1] = sub_1DD2A5270;
    OUTLINED_FUNCTION_30_0();

    return MEMORY[0x1EEE6DE38](v18, v19, v20, 0xD000000000000023, v21, v22, v16, v23);
  }
}

uint64_t sub_1DD2A5270()
{
  OUTLINED_FUNCTION_48();
  *(*v1 + 112) = v0;

  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1DD2A539C()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[7];
  sub_1DD296084(v0[10], &qword_1ECCD66A8, &qword_1DD339418);
  v4 = v0[2];
  (*(v3 + 8))(v1, v2);

  OUTLINED_FUNCTION_47_0();

  return v5(v4);
}

uint64_t sub_1DD2A5470()
{
  OUTLINED_FUNCTION_48();
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  sub_1DD296084(v0[10], &qword_1ECCD66A8, &qword_1DD339418);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

BOOL sub_1DD2A552C(void *a1)
{
  v1 = [a1 eventBody];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1DD2A81E4(v1, &selRef_bundleID);
  if (v3)
  {

    v4 = 0;
    do
    {
      v5 = v4 == 40;
      if (v4 == 40)
      {
        break;
      }

      v6 = *(&unk_1F589A7B8 + v4 + 32);
      v4 += 8;
    }

    while (v6 != [v2 usageType]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_1DD2A55E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6340, &qword_1DD338E18);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - v10;
  (*(v8 + 16))(&v16 - v10, a1, v7);
  v12 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  (*(v8 + 32))(v13 + v12, v11, v7);
  *(v13 + ((v9 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  swift_retain_n();
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD66A0, &qword_1DD339410);
  sub_1DD288794(&qword_1EE027A28, &qword_1ECCD66A0, &qword_1DD339410, MEMORY[0x1E698F090]);
  v15 = sub_1DD334A00();
}

uint64_t sub_1DD2A57F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1DD335CB0();
  v5 = sub_1DD336940();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1DD27A000, v4, v5, "Finished pulling notification stream successfully", v6, 2u);
    MEMORY[0x1E12ADA30](v6, -1, -1);
  }

  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6340, &qword_1DD338E18);
  return sub_1DD3368B0();
}

void sub_1DD2A58F4()
{
  OUTLINED_FUNCTION_23_0();
  v1 = v0;
  v106 = sub_1DD334690();
  OUTLINED_FUNCTION_1_0();
  v105 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_12();
  v6 = v5 - v4;
  sub_1DD336A80();
  v107 = v1;
  v108 = v6;
  while (1)
  {
    sub_1DD334680();
    if (!v114)
    {
      break;
    }

    sub_1DD2A81D4(&v113, v112);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD66B8, &dword_1DD339420);
    if (swift_dynamicCast())
    {
      v7 = [v111 eventBody];
      if (v7)
      {
        v8 = v7;
        v9 = sub_1DD2A81E4(v7, &selRef_bundleID);
        if (v10)
        {
          v11 = v9;
          v12 = v10;
          sub_1DD2A4290();
          if (!v13)
          {

            v37 = v8;
            v38 = sub_1DD335CB0();
            v39 = sub_1DD336950();

            if (!OUTLINED_FUNCTION_38_0())
            {

              goto LABEL_66;
            }

            OUTLINED_FUNCTION_50();
            v40 = OUTLINED_FUNCTION_18_0();
            dword_1DD339420 = OUTLINED_FUNCTION_39_0(v40).n128_u32[0];
            v41 = [v37 notificationID];
            sub_1DD3365D0();
            OUTLINED_FUNCTION_32_2();

            v42 = OUTLINED_FUNCTION_35_0();

            unk_1DD339424 = v42;
            _os_log_impl(&dword_1DD27A000, v38, v39, "Failed to build RREntity from notification %s, skipping this one", &dword_1DD339420, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v40);
            v1 = v107;
            OUTLINED_FUNCTION_20();
            MEMORY[0x1E12ADA30]();
            OUTLINED_FUNCTION_20();
            MEMORY[0x1E12ADA30]();

            goto LABEL_62;
          }

          v14 = v13;
          v110 = v11;
          OUTLINED_FUNCTION_11();
          v15 = v14;
          MEMORY[0x1E12AC640]();
          OUTLINED_FUNCTION_13_0();
          if (v17)
          {
            OUTLINED_FUNCTION_36_1(v16 > 1);
          }

          OUTLINED_FUNCTION_19_0();
          sub_1DD336860();
          swift_endAccess();
          v18 = v15;
          v19 = sub_1DD335CB0();
          v20 = sub_1DD336930();

          v109 = v18;
          if (os_log_type_enabled(v19, v20))
          {
            OUTLINED_FUNCTION_50();
            v21 = OUTLINED_FUNCTION_18_0();
            dword_1DD339420 = OUTLINED_FUNCTION_39_0(v21).n128_u32[0];
            v22 = sub_1DD336010();
            v24 = sub_1DD27DBF0(v22, v23, v112);

            unk_1DD339424 = v24;
            _os_log_impl(&dword_1DD27A000, v19, v20, "Pulled notification %s successfully", &dword_1DD339420, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v21);
            OUTLINED_FUNCTION_20();
            MEMORY[0x1E12ADA30]();
            OUTLINED_FUNCTION_20();
            MEMORY[0x1E12ADA30]();
          }

          sub_1DD2A44D4();
          if (v25)
          {
            v26 = v25;
            OUTLINED_FUNCTION_11();
            v27 = v26;
            MEMORY[0x1E12AC640]();
            OUTLINED_FUNCTION_13_0();
            if (v17)
            {
              OUTLINED_FUNCTION_36_1(v28 > 1);
            }

            OUTLINED_FUNCTION_19_0();
            sub_1DD336860();
            swift_endAccess();
            v29 = v27;
            v30 = OUTLINED_FUNCTION_37_1(v29);
            v31 = sub_1DD336930();

            if (os_log_type_enabled(v30, v31))
            {
              v32 = OUTLINED_FUNCTION_50();
              v33 = swift_slowAlloc();
              *v32 = OUTLINED_FUNCTION_39_0(v33).n128_u32[0];
              v34 = sub_1DD336010();
              v36 = sub_1DD27DBF0(v34, v35, v112);

              *(v32 + 4) = v36;
              _os_log_impl(&dword_1DD27A000, v30, v31, "Pulled app entity %s successfully", v32, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v33);
              OUTLINED_FUNCTION_20();
              MEMORY[0x1E12ADA30]();
              OUTLINED_FUNCTION_20();
              MEMORY[0x1E12ADA30]();
            }

            else
            {
            }
          }

          else
          {
            v43 = v8;
            v44 = OUTLINED_FUNCTION_37_1(v43);
            v45 = sub_1DD336950();

            if (OUTLINED_FUNCTION_38_0())
            {
              v46 = OUTLINED_FUNCTION_50();
              v47 = swift_slowAlloc();
              *v46 = OUTLINED_FUNCTION_39_0(v47).n128_u32[0];
              v48 = [v43 notificationID];
              v49 = sub_1DD3365D0();
              v51 = v50;

              v52 = sub_1DD27DBF0(v49, v51, v112);

              *(v46 + 4) = v52;
              _os_log_impl(&dword_1DD27A000, v44, v45, "Failed to build app RREntity from notification %s, skipping this one", v46, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v47);
              OUTLINED_FUNCTION_20();
              MEMORY[0x1E12ADA30]();
              OUTLINED_FUNCTION_20();
              MEMORY[0x1E12ADA30]();
            }
          }

          v53 = v110;
          OUTLINED_FUNCTION_46_0();
          v55 = v110 == v54 && 0x80000001DD33D2B0 == v12;
          if (v55 || (OUTLINED_FUNCTION_21_1(0xD000000000000013, 0x80000001DD33D2B0) & 1) != 0 || ((OUTLINED_FUNCTION_46_0(), v110 == v56 + 2) ? (v57 = 0x80000001DD33D2D0 == v12) : (v57 = 0), v57 || (OUTLINED_FUNCTION_21_1(v56 + 2, 0x80000001DD33D2D0) & 1) != 0 || ((OUTLINED_FUNCTION_46_0(), v110 == v58 - 1) ? (v59 = 0x80000001DD33D2F0 == v12) : (v59 = 0), v59 || (OUTLINED_FUNCTION_21_1(v58 - 1, 0x80000001DD33D2F0) & 1) != 0)))
          {
            sub_1DD2A47E0();
            if (!v60)
            {

              v37 = v8;
              v79 = OUTLINED_FUNCTION_37_1(v37);
              v80 = sub_1DD336950();

              if (OUTLINED_FUNCTION_38_0())
              {
                swift_slowAlloc();
                v81 = OUTLINED_FUNCTION_18_0();
                v82 = [v37 notificationID];
                sub_1DD3365D0();
                OUTLINED_FUNCTION_32_2();

                v1 = OUTLINED_FUNCTION_35_0();

                OUTLINED_FUNCTION_15_0();
                [v37 absoluteTimestamp];
                unk_1DD33942E = v83;
                v84 = v80;
                v85 = v79;
                v86 = "Failed to build RREntity from person entity in notification %s with timestamp %f";
                goto LABEL_61;
              }

              goto LABEL_63;
            }

            v61 = v60;
            OUTLINED_FUNCTION_11();
            v62 = v61;
            MEMORY[0x1E12AC640]();
            OUTLINED_FUNCTION_13_0();
            if (v17)
            {
              OUTLINED_FUNCTION_36_1(v63 > 1);
            }

            OUTLINED_FUNCTION_19_0();
            sub_1DD336860();
            swift_endAccess();
            v64 = v8;
            v65 = v62;
            v66 = OUTLINED_FUNCTION_37_1(v65);
            v67 = sub_1DD336930();

            if (os_log_type_enabled(v66, v67))
            {
              v68 = swift_slowAlloc();
              *&v112[0] = swift_slowAlloc();
              *v68 = 136315650;
              v69 = sub_1DD336010();
              v71 = sub_1DD27DBF0(v69, v70, v112);

              *(v68 + 4) = v71;
              *(v68 + 12) = 2080;
              v72 = [v64 notificationID];
              v73 = sub_1DD3365D0();
              v75 = v74;

              v76 = v73;
              v1 = v107;
              v77 = sub_1DD27DBF0(v76, v75, v112);

              *(v68 + 14) = v77;
              *(v68 + 22) = 2048;
              [v64 absoluteTimestamp];
              *(v68 + 24) = v78;
              _os_log_impl(&dword_1DD27A000, v66, v67, "Pulled person entity %s from notification %s with timestamp %f successfully", v68, 0x20u);
              swift_arrayDestroy();
              OUTLINED_FUNCTION_20();
              MEMORY[0x1E12ADA30]();
              OUTLINED_FUNCTION_20();
              MEMORY[0x1E12ADA30]();
            }

            else
            {
            }

            v53 = v110;
          }

          OUTLINED_FUNCTION_46_0();
          if (v53 == v87 && 0x80000001DD33D310 == v12)
          {
          }

          else
          {
            v89 = OUTLINED_FUNCTION_21_1(0xD000000000000013, 0x80000001DD33D310);

            if ((v89 & 1) == 0)
            {

              goto LABEL_66;
            }
          }

          sub_1DD2A4B34();
          if (v90)
          {
            v91 = v90;
            OUTLINED_FUNCTION_11();
            v92 = v91;
            MEMORY[0x1E12AC640]();
            sub_1DD2A27E0(*((*(v1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
            sub_1DD336860();
            swift_endAccess();
            v93 = v8;
            v94 = OUTLINED_FUNCTION_37_1(v93);
            v95 = sub_1DD336930();

            if (OUTLINED_FUNCTION_38_0())
            {
              swift_slowAlloc();
              v96 = OUTLINED_FUNCTION_18_0();
              v97 = [v93 notificationID];
              v98 = sub_1DD3365D0();
              v100 = v99;

              v1 = sub_1DD27DBF0(v98, v100, v112);

              OUTLINED_FUNCTION_15_0();
              [v93 absoluteTimestamp];
              unk_1DD33942E = v101;
              _os_log_impl(&dword_1DD27A000, v94, v95, "Pulled calendarEvent entity from notification %s with timestamp %f successfully", &dword_1DD339420, 0x16u);
              __swift_destroy_boxed_opaque_existential_1(v96);
              OUTLINED_FUNCTION_20();
              MEMORY[0x1E12ADA30]();
              OUTLINED_FUNCTION_20();
              MEMORY[0x1E12ADA30]();

              goto LABEL_66;
            }

            goto LABEL_65;
          }

          v37 = v8;
          v79 = OUTLINED_FUNCTION_37_1(v37);
          v102 = sub_1DD336950();

          if (OUTLINED_FUNCTION_38_0())
          {
            swift_slowAlloc();
            v81 = OUTLINED_FUNCTION_18_0();
            v103 = [v37 notificationID];
            sub_1DD3365D0();
            OUTLINED_FUNCTION_32_2();

            v1 = OUTLINED_FUNCTION_35_0();

            OUTLINED_FUNCTION_15_0();
            [v37 absoluteTimestamp];
            unk_1DD33942E = v104;
            v84 = v102;
            v85 = v79;
            v86 = "Failed to build RREntity from calendarEvent entity in notification %s with timestamp %f";
LABEL_61:
            _os_log_impl(&dword_1DD27A000, v85, v84, v86, &dword_1DD339420, 0x16u);
            __swift_destroy_boxed_opaque_existential_1(v81);
            OUTLINED_FUNCTION_20();
            MEMORY[0x1E12ADA30]();
            OUTLINED_FUNCTION_20();
            MEMORY[0x1E12ADA30]();

LABEL_62:
            goto LABEL_66;
          }

LABEL_63:

LABEL_65:
LABEL_66:

          v6 = v108;
        }

        else
        {
        }
      }

      else
      {
      }
    }
  }

  (*(v105 + 8))(v6, v106);
  OUTLINED_FUNCTION_24_1();
}

uint64_t sub_1DD2A6538()
{
  OUTLINED_FUNCTION_4();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_1DD334830();
  v1[4] = v3;
  OUTLINED_FUNCTION_69_0(v3);
  v1[5] = v4;
  v1[6] = swift_task_alloc();
  v5 = sub_1DD335CA0();
  v1[7] = v5;
  OUTLINED_FUNCTION_69_0(v5);
  v1[8] = v6;
  v1[9] = swift_task_alloc();
  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DD2A663C()
{
  if (qword_1EE027640 != -1)
  {
    OUTLINED_FUNCTION_14_1(&qword_1EE027640);
  }

  v1 = qword_1EE02A1F0;
  sub_1DD335C90();
  sub_1DD336A40();
  v2 = qword_1EE02A1F0;
  OUTLINED_FUNCTION_88();
  sub_1DD335C70();

  v3 = sub_1DD335CB0();
  v4 = sub_1DD336940();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_33_0();
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DD27A000, v3, v4, "Entering RRBiomeNotificationPuller...", v5, 2u);
    OUTLINED_FUNCTION_20();
    MEMORY[0x1E12ADA30]();
  }

  sub_1DD334790();
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_1DD2A6804;

  return sub_1DD2A4E60();
}

uint64_t sub_1DD2A6804()
{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  *(v4 + 88) = v0;

  if (!v0)
  {
    *(v4 + 96) = v3;
  }

  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DD2A691C()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3(v2);
  sub_1DD2A6A74(v0);
  v4 = OUTLINED_FUNCTION_43();
  v5(v4);

  OUTLINED_FUNCTION_47_0();
  v7 = *(v1 + 96);

  return v6(v7);
}

uint64_t sub_1DD2A69C8()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3(v2);
  sub_1DD2A6A74(v0);
  v4 = OUTLINED_FUNCTION_43();
  v5(v4);

  v6 = *(v1 + 8);

  return v6();
}

void sub_1DD2A6A74(uint64_t a1)
{
  sub_1DD336A30();
  if (qword_1EE027640 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE02A1F0;
  sub_1DD335C80();

  oslog = sub_1DD335CB0();
  v2 = sub_1DD336940();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1DD27A000, oslog, v2, "Exiting RRBiomeNotificationPuller...", v3, 2u);
    MEMORY[0x1E12ADA30](v3, -1, -1);
  }
}

uint64_t RRBiomeNotificationPuller.deinit()
{
  v1 = qword_1EE02A6A0;
  sub_1DD335CD0();
  OUTLINED_FUNCTION_1();
  (*(v2 + 8))(v0 + v1);
  sub_1DD296084(v0 + *(*v0 + 96), &qword_1ECCD6690, &qword_1DD339390);
  return v0;
}

uint64_t RRBiomeNotificationPuller.__deallocating_deinit()
{
  v1 = qword_1EE02A6A0;
  sub_1DD335CD0();
  OUTLINED_FUNCTION_1();
  (*(v2 + 8))(v0 + v1);
  sub_1DD296084(v0 + *(*v0 + 96), &qword_1ECCD6690, &qword_1DD339390);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1DD2A6CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v58 = a5;
  v59 = a4;
  v68 = a3;
  v63 = a2;
  v67 = a1;
  v70 = a6;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD66C8, &qword_1DD339438);
  v62 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v61 = &v53 - v8;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD66D0, &qword_1DD339440);
  v60 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v64 = &v53 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD66D8, &qword_1DD339448);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v53 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6698, &qword_1DD339398);
  v65 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v53 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6690, &qword_1DD339390);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v53 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD66E0, &qword_1DD339450);
  v69 = *(v22 - 8);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v53 - v26;
  v28 = *(*v7 + 96);
  swift_beginAccess();
  sub_1DD27F118(v7 + v28, v21, &qword_1ECCD6690, &qword_1DD339390);
  if (__swift_getEnumTagSinglePayload(v21, 1, v16))
  {
    sub_1DD296084(v21, &qword_1ECCD6690, &qword_1DD339390);
    v29 = v70;
LABEL_5:
    v34 = sub_1DD335CB0();
    v35 = sub_1DD336930();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1DD27A000, v34, v35, "Notification stream init failed.", v36, 2u);
      MEMORY[0x1E12ADA30](v36, -1, -1);
    }

    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD66A0, &qword_1DD339410);
    return __swift_storeEnumTagSinglePayload(v29, 1, 1, v37);
  }

  v56 = v13;
  v30 = v15;
  v31 = v65;
  v32 = v66;
  (*(v65 + 16))(v18, v21, v16);
  sub_1DD296084(v21, &qword_1ECCD6690, &qword_1DD339390);
  sub_1DD334780();
  sub_1DD288794(&qword_1EE027A18, &qword_1ECCD6698, &qword_1DD339398, MEMORY[0x1E698F180]);
  sub_1DD334A60();
  (*(v31 + 8))(v18, v16);
  v33 = v69;
  (*(v69 + 32))(v27, v25, v22);
  v29 = v70;
  if (v68)
  {
    (*(v33 + 8))(v27, v22);
    goto LABEL_5;
  }

  v39 = v30;
  v40 = v32;
  __swift_storeEnumTagSinglePayload(v30, 1, 1, v32);
  v41 = v59;
  v55 = v22;
  v54 = v27;
  if (v59)
  {
    sub_1DD288794(&qword_1EE027A20, &qword_1ECCD66E0, &qword_1DD339450, MEMORY[0x1E698F098]);
    v42 = v58;
    sub_1DD335860();
    v43 = v56;
    sub_1DD334A20();
    sub_1DD27EBC8(v41, v42);
  }

  else
  {
    sub_1DD288794(&qword_1EE027A20, &qword_1ECCD66E0, &qword_1DD339450, MEMORY[0x1E698F098]);
    v43 = v56;
    sub_1DD334A20();
  }

  v44 = v60;
  v45 = v61;
  v46 = v64;
  v47 = 1;
  __swift_storeEnumTagSinglePayload(v43, 0, 1, v40);
  sub_1DD2A82A8(v43, v39, &qword_1ECCD66D8, &qword_1DD339448);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v39, 1, v40);
  v49 = v62;
  if (!EnumTagSinglePayload)
  {
    (*(v62 + 16))(v45, v39, v40);
    sub_1DD288794(&qword_1EE027A30, &qword_1ECCD66C8, &qword_1DD339438, MEMORY[0x1E698F088]);
    sub_1DD334A10();
    (*(v49 + 8))(v45, v40);
    v50 = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
    sub_1DD27D80C(0, &qword_1EE027550, 0x1E695DF70);
    sub_1DD288794(&qword_1EE027A38, &qword_1ECCD66D0, &qword_1DD339440, MEMORY[0x1E698F080]);
    v51 = v57;
    sub_1DD334A30();

    (*(v44 + 8))(v46, v51);
    v47 = 0;
  }

  (*(v69 + 8))(v54, v55);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD66A0, &qword_1DD339410);
  __swift_storeEnumTagSinglePayload(v29, v47, 1, v52);
  return sub_1DD296084(v39, &qword_1ECCD66D8, &qword_1DD339448);
}

uint64_t sub_1DD2A7544()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DD2A75DC;

  return sub_1DD2A6538();
}

uint64_t sub_1DD2A75DC()
{
  OUTLINED_FUNCTION_4();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0();
  *v5 = v4;

  OUTLINED_FUNCTION_47_0();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

void sub_1DD2A76F0()
{
  OUTLINED_FUNCTION_23_0();
  v1 = v0;
  sub_1DD334C50();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_31_3();
  v3 = sub_1DD335420();
  OUTLINED_FUNCTION_51_1(v3);
  v4 = sub_1DD335410();
  sub_1DD2A81E4(v1, &selRef_bundleID);
  if (v5)
  {
    v6 = [v1 notificationID];
    sub_1DD3365D0();
    OUTLINED_FUNCTION_32_2();

    sub_1DD334C30();
    sub_1DD334BA0();
    v7 = OUTLINED_FUNCTION_19_0();
    v8(v7);
    MEMORY[0x1E12AABB0](v4);
  }

  OUTLINED_FUNCTION_24_1();
}

uint64_t sub_1DD2A7844@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1DD334830();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - v11;
  [v2 absoluteTimestamp];
  sub_1DD334770();
  sub_1DD334820();
  LOBYTE(v2) = sub_1DD3347B0();
  v13 = *(v6 + 8);
  v13(v10, v4);
  if (v2)
  {
    return (*(v6 + 32))(a1, v12, v4);
  }

  sub_1DD334820();
  v15 = OUTLINED_FUNCTION_19_0();
  return (v13)(v15);
}

uint64_t sub_1DD2A7998()
{
  v1 = v0;
  sub_1DD334C50();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_31_3();
  v3 = sub_1DD334E00();
  OUTLINED_FUNCTION_51_1(v3);
  v4 = sub_1DD334DF0();
  sub_1DD2A81E4(v1, &selRef_bundleID);
  if (v5)
  {
    swift_bridgeObjectRetain_n();
    OUTLINED_FUNCTION_41_0();
    sub_1DD334C30();
    sub_1DD334BA0();
    v6 = OUTLINED_FUNCTION_19_0();
    v7(v6);
    OUTLINED_FUNCTION_41_0();
    sub_1DD334DE0();

    v8 = MEMORY[0x1E12AABB0](v4);
  }

  else
  {

    return 0;
  }

  return v8;
}

uint64_t sub_1DD2A7AE8()
{
  sub_1DD2A81E4(v0, &selRef_bundleID);
  if (!v1)
  {
    return 0;
  }

  sub_1DD2A81E4(v0, &selRef_threadID);
  if (!v2)
  {
    goto LABEL_5;
  }

  if ([v0 isGroupMessage])
  {

LABEL_5:

    return 0;
  }

  OUTLINED_FUNCTION_41_0();
  if ((sub_1DD336670() & 1) == 0)
  {
    sub_1DD2A81E4(v0, &selRef_title);
    if (v4)
    {
    }
  }

  v5 = [v0 uniqueID];
  sub_1DD3365D0();
  OUTLINED_FUNCTION_32_2();

  OUTLINED_FUNCTION_41_0();
  v6 = sub_1DD335D80();

  if (!v6)
  {
    return 0;
  }

  sub_1DD2A81E4(v0, &selRef_title);
  if (v7)
  {
    sub_1DD336680();
    v8 = sub_1DD336690();

    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_43();
      if ((sub_1DD3366A0() & 1) == 0)
      {
        OUTLINED_FUNCTION_43();
        sub_1DD3350A0();
      }
    }
  }

  if (!sub_1DD335090() && !sub_1DD335060())
  {

    return 0;
  }

  v9 = MEMORY[0x1E12AABB0](v6);

  return v9;
}

uint64_t sub_1DD2A7CB8()
{
  sub_1DD334C50();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_31_3();
  sub_1DD2A81E4(v0, &selRef_bundleID);
  if (!v2)
  {
    return 0;
  }

  sub_1DD2A81E4(v0, &selRef_title);
  if (!v3)
  {

    return 0;
  }

  v4 = sub_1DD3354F0();
  OUTLINED_FUNCTION_51_1(v4);
  v5 = sub_1DD3354E0();
  sub_1DD3354B0();
  sub_1DD334C30();
  sub_1DD334BA0();
  v6 = OUTLINED_FUNCTION_19_0();
  v7(v6);
  v8 = MEMORY[0x1E12AABB0](v5);

  return v8;
}

id sub_1DD2A7E10(void *a1, uint64_t a2)
{
  [a1 addObject_];

  return a1;
}

uint64_t dispatch thunk of RRBiomeNotificationPuller.pull(at:)()
{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  v6 = (*(*v0 + 176) + **(*v0 + 176));
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DD2A7FE4;

  return v6(v3);
}

uint64_t sub_1DD2A7FE4()
{
  OUTLINED_FUNCTION_4();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_0();
  *v4 = v3;

  OUTLINED_FUNCTION_47_0();

  return v5(v2);
}

unint64_t sub_1DD2A80D0()
{
  result = qword_1ECCD66B0;
  if (!qword_1ECCD66B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD66B0);
  }

  return result;
}

uint64_t sub_1DD2A8130(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6340, &qword_1DD338E18);
  OUTLINED_FUNCTION_69_0(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = *(v1 + 16);
  v10 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1DD2A57F8(a1, v9, v1 + v8, v10);
}

_OWORD *sub_1DD2A81D4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1DD2A81E4(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_1DD3365D0();
  }

  return OUTLINED_FUNCTION_123();
}

uint64_t objectdestroy_18Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DD2A82A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_127(a1, a2, a3, a4);
  OUTLINED_FUNCTION_1();
  v5 = OUTLINED_FUNCTION_123();
  v6(v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_37_1(uint64_t a1)
{

  return sub_1DD335CB0();
}

BOOL OUTLINED_FUNCTION_38_0()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t sub_1DD2A838C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_1DD2A8458@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD2A84C8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DD2A8484(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1DD28B474(*a1, v2);
  return sub_1DD2807F0(v1, v2);
}

uint64_t sub_1DD2A84C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD66F0, &qword_1DD339470);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_2(&qword_1EE0279F8);
  sub_1DD335830();

  return v1;
}

uint64_t (*sub_1DD2A8568(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD66F0, &qword_1DD339470);
  v2[4] = swift_getKeyPath();
  v2[5] = swift_getKeyPath();
  OUTLINED_FUNCTION_1_2(&qword_1EE0279F8);
  v2[6] = sub_1DD335820();
  return sub_1DD2A8630;
}

void sub_1DD2A8630(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_1DD2A8698(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD66F8, &qword_1DD3394C0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - v3;
  (*(v5 + 16))(&v7 - v3, a1);
  return sub_1DD2A87C4(v4);
}

uint64_t sub_1DD2A876C()
{
  swift_beginAccess();
  sub_1DD335860();
  sub_1DD335800();
}

uint64_t sub_1DD2A87C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD66F8, &qword_1DD3394C0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  swift_beginAccess();
  (*(v3 + 16))(v5, a1, v2);
  sub_1DD335860();
  sub_1DD335810();

  return (*(v3 + 8))(a1, v2);
}

void (*sub_1DD2A88E4(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD66F8, &qword_1DD3394C0);
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v6 = *(v5 + 64);
  v3[3] = __swift_coroFrameAllocStub(v6);
  v3[4] = __swift_coroFrameAllocStub(v6);
  sub_1DD2A876C();
  return sub_1DD2A89C4;
}

void sub_1DD2A89C4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    sub_1DD2A87C4(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    sub_1DD2A87C4(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1DD2A8B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ScopedReferenceResolutionDataProvider();

  return MEMORY[0x1EEE412A0](a1, v5, a3);
}

uint64_t sub_1DD2A8B98()
{
  type metadata accessor for ScopedReferenceResolutionDataProvider();

  return sub_1DD335860();
}

uint64_t SiriEnvironment.scopedReferenceResolutionData.setter(uint64_t a1)
{
  type metadata accessor for ScopedReferenceResolutionDataProvider();
  OUTLINED_FUNCTION_0_1(&qword_1EE0279F0);

  return sub_1DD335770();
}

uint64_t (*SiriEnvironment.scopedReferenceResolutionData.modify(uint64_t *a1))()
{
  a1[1] = v1;
  a1[2] = type metadata accessor for ScopedReferenceResolutionDataProvider();
  a1[3] = OUTLINED_FUNCTION_0_1(&qword_1EE0279F0);
  *a1 = sub_1DD335760();
  return sub_1DD2A8CE4;
}

uint64_t sub_1DD2A8CE4(void *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1DD335770();
  }

  sub_1DD335860();
  sub_1DD335770();
}

BOOL sub_1DD2A8F28(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t RRContextKitPuller.__allocating_init()()
{
  v0 = swift_allocObject();
  RRContextKitPuller.init()();
  return v0;
}

uint64_t RRContextKitPuller.init()()
{
  v1 = sub_1DD335CD0();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_12();
  v7 = v6 - v5;
  v8 = v0 + OBJC_IVAR____TtC23SiriReferenceResolution18RRContextKitPuller_featureFlags;
  *(v8 + 24) = &type metadata for SRRFeatureFlagsImpl;
  *(v8 + 32) = &protocol witness table for SRRFeatureFlagsImpl;
  *(v0 + OBJC_IVAR____TtC23SiriReferenceResolution18RRContextKitPuller_wikiPersons) = MEMORY[0x1E69E7CC0];
  v9 = (v0 + OBJC_IVAR____TtC23SiriReferenceResolution18RRContextKitPuller_title);
  *v9 = 0;
  v9[1] = 0;
  v10 = OBJC_IVAR____TtC23SiriReferenceResolution18RRContextKitPuller_rrVisualGroups;
  sub_1DD335E20();
  *(v0 + v10) = sub_1DD336530();
  v11 = [objc_opt_self() clientWithDefaultRequestType_];
  *(v0 + OBJC_IVAR____TtC23SiriReferenceResolution18RRContextKitPuller_client) = v11;
  type metadata accessor for RRContextKitPuller(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6700, &unk_1DD3395F0);
  sub_1DD336630();
  sub_1DD335CC0();
  (*(v3 + 32))(v0 + OBJC_IVAR____TtC23SiriReferenceResolution18RRContextKitPuller_logger, v7, v1);
  return v0;
}

uint64_t sub_1DD2A91C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v102 = a1;
  v105 = sub_1DD334830();
  OUTLINED_FUNCTION_1_0();
  v104 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v101 = v9;
  OUTLINED_FUNCTION_6_1(v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v115 = sub_1DD3363A0();
  OUTLINED_FUNCTION_1_0();
  v114 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_6_1(v12);
  v113 = sub_1DD336420();
  OUTLINED_FUNCTION_1_0();
  v112 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_6_1(v16);
  v17 = sub_1DD3363C0();
  OUTLINED_FUNCTION_1_0();
  v106 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_3_2();
  v121 = v20;
  sub_1DD3369C0();
  OUTLINED_FUNCTION_1_0();
  v119 = v22;
  v120 = v21;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_6_1(v23);
  sub_1DD336980();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_6_1(v25);
  v100 = sub_1DD336400();
  OUTLINED_FUNCTION_1_0();
  v99 = v26;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_12();
  v30 = v29 - v28;
  sub_1DD335CA0();
  OUTLINED_FUNCTION_1_0();
  v117 = v32;
  v118 = v31;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_12();
  v35 = v34 - v33;
  if (qword_1EE027830 != -1)
  {
    OUTLINED_FUNCTION_38_1(&qword_1EE027830);
  }

  v122 = a2;
  v123 = v17;
  v125 = a3;
  v36 = qword_1EE02A238;
  sub_1DD335C90();
  sub_1DD336A40();
  v37 = qword_1EE02A238;
  v38 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_55_0();
  v116 = v35;
  sub_1DD335C70();

  v109 = OBJC_IVAR____TtC23SiriReferenceResolution18RRContextKitPuller_logger;
  v39 = sub_1DD335CB0();
  v40 = sub_1DD336940();
  if (OUTLINED_FUNCTION_51(v40))
  {
    v41 = OUTLINED_FUNCTION_69();
    OUTLINED_FUNCTION_122(v41);
    OUTLINED_FUNCTION_37(&dword_1DD27A000, v42, v43, "Entering RRContextKitPuller...");
    OUTLINED_FUNCTION_52_0();
  }

  OUTLINED_FUNCTION_60();
  v124 = swift_allocObject();
  *(v124 + 16) = v38;
  v44 = v38;
  v45 = [*(v4 + OBJC_IVAR____TtC23SiriReferenceResolution18RRContextKitPuller_client) newRequest];
  [v45 setIncludeStructuredExtractionResults_];
  sub_1DD27D80C(0, &qword_1EE028598, 0x1E69E9610);
  sub_1DD3363E0();
  aBlock = v44;
  sub_1DD295558(&qword_1EE0285A0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6708, &qword_1DD339E50);
  sub_1DD27F454(&qword_1EE0285E8, &qword_1ECCD6708, &qword_1DD339E50);
  sub_1DD336B10();
  (*(v119 + 104))(v108, *MEMORY[0x1E69E8090], v120);
  v98 = v30;
  v46 = sub_1DD336A10();
  OUTLINED_FUNCTION_60();
  v47 = swift_allocObject();
  v48 = dispatch_group_create();
  *(v47 + 16) = v48;
  v107 = (v47 + 16);
  dispatch_group_enter(v48);
  OUTLINED_FUNCTION_60();
  v49 = swift_allocObject();
  *(v49 + 16) = 0;
  v50 = swift_allocObject();
  *(v50 + 16) = v49;
  *(v50 + 24) = v47;
  v132 = sub_1DD2B2F30;
  v133 = v50;
  aBlock = MEMORY[0x1E69E9820];
  v129 = 1107296256;
  v130 = sub_1DD2A9E90;
  v131 = &block_descriptor_0;
  v51 = _Block_copy(&aBlock);
  sub_1DD335860();
  sub_1DD335860();

  v108 = v45;
  [v45 executeWithReply_];
  _Block_release(v51);
  OUTLINED_FUNCTION_63();
  v52 = swift_allocObject();
  v52[2] = v4;
  v52[3] = v47;
  v53 = v125;
  v52[4] = v122;
  v52[5] = v53;
  v132 = sub_1DD2B2F38;
  v133 = v52;
  aBlock = MEMORY[0x1E69E9820];
  v129 = 1107296256;
  v97[3] = &v130;
  v130 = sub_1DD2811BC;
  v131 = &block_descriptor_15;
  _Block_copy(&aBlock);
  v127 = MEMORY[0x1E69E7CC0];
  v54 = sub_1DD295558(&qword_1EE027F38, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v119 = v47;
  sub_1DD335860();
  v120 = v4;
  sub_1DD335860();
  sub_1DD335860();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6710, &qword_1DD339620);
  OUTLINED_FUNCTION_31_4();
  v59 = sub_1DD27F454(v56, v57, v58);
  v97[1] = v55;
  v97[0] = v59;
  v97[2] = v54;
  sub_1DD336B10();
  sub_1DD336460();
  OUTLINED_FUNCTION_59();
  v60 = swift_allocObject();
  v61 = sub_1DD336440();

  OUTLINED_FUNCTION_80_0();
  sub_1DD336410();
  v62 = v111;
  *v111 = 1000;
  OUTLINED_FUNCTION_110_0();
  v64 = v115;
  (*(v63 + 104))(v62);
  v65 = v110;
  v66 = OUTLINED_FUNCTION_113();
  MEMORY[0x1E12AC2C0](v66);
  (*(v60 + 8))(v62, v64);
  v67 = (v112 + 8);
  v68 = *(v112 + 8);
  v69 = v47;
  v70 = v61;
  v71 = v113;
  v68(v69, v113);
  v72 = v46;
  sub_1DD336990();
  v68(v65, v71);
  v73 = v107;
  OUTLINED_FUNCTION_106();
  swift_beginAccess();
  if (*v73)
  {
    v74 = v104;
    v115 = *v73;
    v75 = v103;
    v76 = v105;
    (*(v104 + 16))(v103, v102, v105);
    v77 = (*(v74 + 80) + 72) & ~*(v74 + 80);
    v78 = swift_allocObject();
    v78[2] = v70;
    v78[3] = v49;
    v79 = v122;
    v78[4] = v120;
    v78[5] = v79;
    v80 = v124;
    v81 = v119;
    v78[6] = v125;
    v78[7] = v81;
    v78[8] = v80;
    v82 = v78 + v77;
    v72 = v46;
    (*(v74 + 32))(v82, v75, v76);
    v132 = sub_1DD2B2F44;
    v133 = v78;
    aBlock = MEMORY[0x1E69E9820];
    v129 = 1107296256;
    v130 = sub_1DD2811BC;
    v131 = &block_descriptor_21;
    v67 = _Block_copy(&aBlock);
    sub_1DD335860();
    sub_1DD335860();
    sub_1DD335860();
    sub_1DD335860();
    OUTLINED_FUNCTION_42_2();
    v84 = v83;
    sub_1DD335860();
    sub_1DD335860();
    v85 = v98;
    sub_1DD3363E0();
    v126 = MEMORY[0x1E69E7CC0];
    v86 = v121;
    v87 = v123;
    sub_1DD336B10();
    sub_1DD336970();
    _Block_release(v67);

    OUTLINED_FUNCTION_41_1();
    v88(v86, v87);
    OUTLINED_FUNCTION_21();
    v89(v85, v100);
  }

  v90 = v120 + v109;
  v91 = sub_1DD335CB0();
  v92 = sub_1DD336940();
  if (OUTLINED_FUNCTION_51(v92))
  {
    v93 = OUTLINED_FUNCTION_69();
    OUTLINED_FUNCTION_68(v93);
    _os_log_impl(&dword_1DD27A000, v91, v90, "Exiting RRContextKitPuller...", v67, 2u);
    OUTLINED_FUNCTION_28_1();
  }

  sub_1DD336A30();
  v94 = qword_1EE02A238;
  OUTLINED_FUNCTION_55_0();
  v95 = v116;
  sub_1DD335C80();

  return (*(v117 + 8))(v95, v118);
}

void sub_1DD2A9E14(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a2 + 16);
  *(a2 + 16) = a1;
  v7 = a1;

  swift_beginAccess();
  v8 = *(a3 + 16);
  if (v8)
  {
    dispatch_group_leave(v8);
  }
}

void sub_1DD2A9E90(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  sub_1DD335860();
  v4 = a2;
  v3(a2);
}

void sub_1DD2A9EFC(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  v5 = sub_1DD335CB0();
  v6 = sub_1DD336950();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = 1000;
    _os_log_impl(&dword_1DD27A000, v5, v6, "Pulling on-screen content from ContextKit has timed out after %ld ms", v7, 0xCu);
    MEMORY[0x1E12ADA30](v7, -1, -1);
  }

  swift_beginAccess();
  v8 = *(a2 + 16);
  *(a2 + 16) = 0;

  sub_1DD2B3F80();
  v9 = swift_allocError();
  a3(v9, 1);
}

void sub_1DD2AA01C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1DD336450();
  swift_beginAccess();
  v13 = *(a2 + 16);
  if (v13)
  {
    v14 = [v13 error];
    if (v14)
    {
      v15 = v14;
      v16 = sub_1DD335CB0();
      v17 = sub_1DD336950();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v116[0] = v19;
        *v18 = 136315138;
        swift_getErrorValue();
        v20 = sub_1DD336E40();
        v22 = sub_1DD27DBF0(v20, v21, v116);

        *(v18 + 4) = v22;
        _os_log_impl(&dword_1DD27A000, v16, v17, "Failed to pull on-screen content from ContextKit, error: %s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v19);
        MEMORY[0x1E12ADA30](v19, -1, -1);
        MEMORY[0x1E12ADA30](v18, -1, -1);
      }

      sub_1DD2B4028();
      v23 = swift_allocError();
      *v24 = 0;
      a4(v23, 1);

      return;
    }
  }

  swift_beginAccess();
  v25 = *(a2 + 16);
  if (!v25)
  {
    goto LABEL_15;
  }

  v26 = sub_1DD2B3D3C(v25);
  if (!v26)
  {
    goto LABEL_15;
  }

  v104 = v26;
  swift_beginAccess();
  v27 = *(a2 + 16);
  if (!v27)
  {

LABEL_15:
    swift_beginAccess();
    v30 = *(a6 + 16);
    *(a6 + 16) = 0;

    v31 = sub_1DD335CB0();
    v32 = sub_1DD336930();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1DD27A000, v31, v32, "ContextKit does not have any on-screen content extracted, returning...", v33, 2u);
      MEMORY[0x1E12ADA30](v33, -1, -1);
    }

    swift_beginAccess();
LABEL_81:

    a4(v100, 0);

    return;
  }

  v106 = 0x6E776F6E6B6E55;
  [v27 availableLayoutSize];
  swift_beginAccess();
  v28 = *(a2 + 16);
  if (v28 && (v29 = sub_1DD2B3CD8(v28)) != 0)
  {
    if (v29[2])
    {
      v106 = v29[4];
      v107 = v29[5];
    }

    else
    {
      v107 = 0xE700000000000000;
    }
  }

  else
  {
    v107 = 0xE700000000000000;
  }

  v34 = sub_1DD335CB0();
  v35 = sub_1DD336940();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_1DD27A000, v34, v35, "Processing results...", v36, 2u);
    MEMORY[0x1E12ADA30](v36, -1, -1);
  }

  v109 = a7;
  v110 = a3;
  v105 = sub_1DD287354(v104);
  if (v105)
  {
    v37 = 0;
    v101 = a8;
    do
    {
      if ((v104 & 0xC000000000000001) != 0)
      {
        v38 = MEMORY[0x1E12ACA60](v37, v104);
      }

      else
      {
        if (v37 >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_84;
        }

        v38 = *(v104 + 32 + 8 * v37);
      }

      v39 = v38;
      v40 = __OFADD__(v37, 1);
      v41 = v37 + 1;
      if (v40)
      {
        goto LABEL_83;
      }

      v108 = v41;
      v42 = sub_1DD2AB0A8(v38, v106, v107, a8);
      v43 = v42;
      v103 = v39;
      if (v42)
      {
        if (v42 >> 62)
        {
          v44 = sub_1DD336B60();
          if (v44)
          {
LABEL_32:
            if (v44 < 1)
            {
              goto LABEL_87;
            }

            v45 = 0;
            v112 = v43 & 0xC000000000000001;
            do
            {
              if (v112)
              {
                v46 = MEMORY[0x1E12ACA60](v45, v43);
              }

              else
              {
                v46 = *(v43 + 8 * v45 + 32);
              }

              v47 = v46;
              swift_beginAccess();
              v48 = v47;
              MEMORY[0x1E12AC640]();
              if (*((*(a7 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a7 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_1DD336830();
              }

              sub_1DD336860();
              swift_endAccess();
              v49 = v48;
              v50 = sub_1DD335CB0();
              v51 = sub_1DD336930();

              if (os_log_type_enabled(v50, v51))
              {
                v52 = swift_slowAlloc();
                v111 = swift_slowAlloc();
                v115[0] = v111;
                *v52 = 136315394;
                v53 = sub_1DD336010();
                v55 = sub_1DD27DBF0(v53, v54, v115);

                *(v52 + 4) = v55;
                *(v52 + 12) = 2080;
                sub_1DD335ED0();
                v56 = sub_1DD335700();
                v57 = v43;
                v58 = v44;
                v60 = v59;

                v61 = v56;
                a3 = v110;
                v62 = sub_1DD27DBF0(v61, v60, v115);
                v44 = v58;
                v43 = v57;

                *(v52 + 14) = v62;
                _os_log_impl(&dword_1DD27A000, v50, v51, "Pulled on-screen content %s of type %s successfully", v52, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x1E12ADA30](v111, -1, -1);
                v63 = v52;
                a7 = v109;
                MEMORY[0x1E12ADA30](v63, -1, -1);
              }

              else
              {
              }

              ++v45;
            }

            while (v44 != v45);

            a8 = v101;
            goto LABEL_44;
          }
        }

        else
        {
          v44 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v44)
          {
            goto LABEL_32;
          }
        }
      }

      else
      {
        v64 = v39;
        v65 = sub_1DD335CB0();
        v66 = sub_1DD336930();

        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v115[0] = v68;
          *v67 = 136315138;
          v69 = [v64 title];
          v70 = sub_1DD3365D0();
          v72 = v71;

          v73 = sub_1DD27DBF0(v70, v72, v115);
          a8 = v101;

          *(v67 + 4) = v73;
          a7 = v109;
          _os_log_impl(&dword_1DD27A000, v65, v66, "On-screen content %s does not contain necessary tags, skipping this one", v67, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v68);
          v74 = v68;
          a3 = v110;
          MEMORY[0x1E12ADA30](v74, -1, -1);
          MEMORY[0x1E12ADA30](v67, -1, -1);
        }
      }

LABEL_44:
      v37 = v108;
    }

    while (v108 != v105);
  }

  v75 = *(a3 + OBJC_IVAR____TtC23SiriReferenceResolution18RRContextKitPuller_title + 8);
  if (v75)
  {
    v114 = *(a3 + OBJC_IVAR____TtC23SiriReferenceResolution18RRContextKitPuller_title);
    v76 = OBJC_IVAR____TtC23SiriReferenceResolution18RRContextKitPuller_wikiPersons;
    swift_beginAccess();
    if (sub_1DD287354(*(a3 + v76)))
    {
      v113 = v76;
      v77 = *(a3 + v76);
      v78 = sub_1DD287354(v77);

      for (i = 0; ; ++i)
      {
        if (v78 == i)
        {

          v83 = v113;
          goto LABEL_64;
        }

        if ((v77 & 0xC000000000000001) != 0)
        {
          v80 = MEMORY[0x1E12ACA60](i, v77);
        }

        else
        {
          if (i >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_86;
          }

          v80 = *(v77 + 8 * i + 32);
        }

        v81 = v80;
        if (__OFADD__(i, 1))
        {
          goto LABEL_85;
        }

        v115[0] = v114;
        v115[1] = v75;
        sub_1DD336010();
        sub_1DD2B3FD4();
        v82 = sub_1DD336B00();

        if (v82)
        {
          break;
        }

        a3 = v110;
      }

      a3 = v110;
      v83 = v113;
      *(v110 + v113) = MEMORY[0x1E69E7CC0];

      v84 = swift_beginAccess();
      MEMORY[0x1E12AC640](v84);
      sub_1DD2A27E0(*((*(v109 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_1DD336860();
      swift_endAccess();
LABEL_64:
      if (sub_1DD287354(*(a3 + v83)))
      {
        swift_beginAccess();

        sub_1DD2AAD4C(v85);
        swift_endAccess();
      }
    }
  }

  v86 = OBJC_IVAR____TtC23SiriReferenceResolution18RRContextKitPuller_rrVisualGroups;
  swift_beginAccess();
  v87 = *(a3 + v86);
  v90 = *(v87 + 64);
  v89 = v87 + 64;
  v88 = v90;
  v91 = 1 << *(*(a3 + v86) + 32);
  v92 = -1;
  if (v91 < 64)
  {
    v92 = ~(-1 << v91);
  }

  v93 = v92 & v88;
  v94 = (v91 + 63) >> 6;

  v95 = 0;
  while (v93)
  {
    v96 = v93;
LABEL_75:
    v93 = (v96 - 1) & v96;
    if (*(*(a3 + v86) + 16))
    {

      sub_1DD28EFFC();
      v99 = v98;

      if (v99)
      {
        sub_1DD335860();

        sub_1DD335E00();
      }

      else
      {
      }

      a3 = v110;
    }
  }

  while (1)
  {
    v97 = v95 + 1;
    if (__OFADD__(v95, 1))
    {
      break;
    }

    if (v97 >= v94)
    {

      swift_beginAccess();
      goto LABEL_81;
    }

    v96 = *(v89 + 8 * v97);
    ++v95;
    if (v96)
    {
      v95 = v97;
      goto LABEL_75;
    }
  }

  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
}

uint64_t sub_1DD2AAD4C(unint64_t a1)
{
  v3 = sub_1DD287354(a1);
  v4 = sub_1DD287354(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1DD2B33C4(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1DD2DAAD8(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1DD2AADF8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_87(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1DD295334(result, 1, sub_1DD28541C);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v5 = __OFADD__(v7, v1);
  v8 = v7 + v1;
  if (!v5)
  {
    *(v6 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1DD2AAEBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1DD28EFFC();
  if (v3)
  {
    return sub_1DD335860();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD2AAF0C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1DD2B2FB0(a1);
  if (v2)
  {
    return sub_1DD335860();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD2AAF5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1DD28EFFC();
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

void *sub_1DD2AAFAC(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1DD2B3048(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

uint64_t sub_1DD2AAFF4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_1DD28EFFC(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(a1 + 56);
    v8 = sub_1DD336350();
    OUTLINED_FUNCTION_1();
    (*(v9 + 16))(a2, v7 + *(v9 + 72) * v6, v8);
    OUTLINED_FUNCTION_66_0();
    v13 = v8;
  }

  else
  {
    sub_1DD336350();
    OUTLINED_FUNCTION_24();
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

char **sub_1DD2AB0A8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v448 = a3;
  v445 = a2;
  OUTLINED_FUNCTION_83_2();
  v434 = sub_1DD334C70();
  OUTLINED_FUNCTION_1_0();
  v433 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_50_0(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6778, &qword_1DD339728);
  v17 = OUTLINED_FUNCTION_36(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_6_1(v19);
  v431 = sub_1DD336370();
  OUTLINED_FUNCTION_1_0();
  v430 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_50_0(v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6780, &unk_1DD339730);
  OUTLINED_FUNCTION_36(v24);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_50_0(v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6788, &unk_1DD33A920);
  OUTLINED_FUNCTION_36(v27);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_6_1(v29);
  v429 = sub_1DD334C10();
  OUTLINED_FUNCTION_1_0();
  v428 = v30;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_6_1(v32);
  v436 = sub_1DD334C50();
  OUTLINED_FUNCTION_1_0();
  v437 = v33;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_6_1(v35);
  v36 = sub_1DD336350();
  OUTLINED_FUNCTION_1_0();
  v442 = v37;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_35();
  v444 = v42;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_35();
  v439 = v44;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_50_0(v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6350, &unk_1DD3396F0);
  v48 = OUTLINED_FUNCTION_36(v47);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_6();
  v440 = v49;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v398 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6608, &qword_1DD339310);
  v56 = OUTLINED_FUNCTION_36(v55);
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  v62 = MEMORY[0x1EEE9AC00](v61);
  v64 = &v398 - v63;
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_115_0();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v398 - v68;
  v446 = v4;
  v70 = sub_1DD2B3B70(v4);
  if (!v70)
  {
    return 0;
  }

  v71 = v70;
  v405 = a4;
  v443 = v5;
  v441 = v69;
  OUTLINED_FUNCTION_24();
  v438 = v36;
  __swift_storeEnumTagSinglePayload(v72, v73, v74, v36);
  v456 = MEMORY[0x1E69E7CC0];
  v75 = sub_1DD3365D0();
  v77 = v76;
  v78 = sub_1DD2E5EF8(v75, v76, v71);

  v79 = &unk_1EE02A000;
  if (v78)
  {
    sub_1DD28191C(v447 + OBJC_IVAR____TtC23SiriReferenceResolution18RRContextKitPuller_featureFlags, v453);
    v81 = v454;
    v80 = v455;
    v77 = __swift_project_boxed_opaque_existential_1(v453, v454);
    (*(v80 + 48))(v81, v80);
    OUTLINED_FUNCTION_94_0();
    if ((v80 & 1) == 0)
    {

      v112 = [v446 title];
      sub_1DD3365D0();
      OUTLINED_FUNCTION_36_2();

      OUTLINED_FUNCTION_64_0();
      String.md5String.getter();
      v114 = v113;
      v116 = v115;

      if (!v116)
      {
        v117 = OUTLINED_FUNCTION_89_0();
        v114 = sub_1DD3365D0();
        v116 = v118;
      }

      v119 = v443;
      v120 = OUTLINED_FUNCTION_89_0();
      v121 = sub_1DD3365D0();
      v123 = v122;

      v124 = v445;
      v125 = v448;
      v126 = sub_1DD2D0190(v114, v116, v445, v448, v121, v123);
      v6 = &selRef_createDirectoryAtURL_withIntermediateDirectories_attributes_error_;
      if (v119)
      {

        sub_1DD296084(v441, &qword_1ECCD6608, &qword_1DD339310);
        return v6;
      }

      v444 = v126;

      v209 = [v446 title];
      v210 = sub_1DD3365D0();
      v212 = v211;

      sub_1DD2D01EC(v114, v116, v124, v125, v210, v212);

      v293 = sub_1DD335E60();
      v294 = OUTLINED_FUNCTION_20_1();
      __swift_storeEnumTagSinglePayload(v294, v295, v296, v293);
      OUTLINED_FUNCTION_84_0();
      OUTLINED_FUNCTION_111_0();
      v340 = sub_1DD2B16A4(v297, v298, v299, v300, v301, v302, v303, v304, v54);
      v341 = v446;
      sub_1DD296084(v54, &qword_1ECCD6350, &unk_1DD3396F0);

      v443 = 0;
      if (v340)
      {
        if (([v341 isOnScreen] & 1) == 0)
        {
          OUTLINED_FUNCTION_17_2();
          sub_1DD335FE0();
        }

        v342 = sub_1DD2B28D4(v340);
        MEMORY[0x1E12AC640](v342);
        OUTLINED_FUNCTION_118_0();
        if (v344)
        {
          OUTLINED_FUNCTION_45(v343);
          sub_1DD336830();
        }

        sub_1DD336860();
        v6 = v456;
      }

      else
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      v355 = [v341 title];
      sub_1DD3365D0();

      OUTLINED_FUNCTION_86_0();
      String.sha256String.getter();
      v357 = v356;
      v359 = v358;

      if (!v359)
      {
        v360 = [v341 title];
        sub_1DD3365D0();

        OUTLINED_FUNCTION_86_0();
        v357 = sub_1DD336680();
      }

      v361 = [v341 title];
      sub_1DD3365D0();

      v362 = v443;
      sub_1DD2D0230();
      if (!v362)
      {
        v439 = v363;

        v370 = [v446 title];
        sub_1DD3365D0();

        v371 = v408;
        v443 = v357;
        OUTLINED_FUNCTION_71_2();
        sub_1DD2D05B8();

        v372 = v406;
        v373 = v438;
        (*(v442 + 2))(v406, v371, v438);
        OUTLINED_FUNCTION_66_0();
        __swift_storeEnumTagSinglePayload(v374, v375, v376, v373);
        v377 = v407;
        OUTLINED_FUNCTION_24();
        __swift_storeEnumTagSinglePayload(v378, v379, v380, v293);
        sub_1DD335860();
        OUTLINED_FUNCTION_84_0();
        OUTLINED_FUNCTION_111_0();
        v389 = sub_1DD2B16A4(v381, v382, v383, v384, v385, v386, v387, v388, v377);
        v443 = 0;
        v391 = v389;

        sub_1DD296084(v377, &qword_1ECCD6350, &unk_1DD3396F0);
        sub_1DD296084(v372, &qword_1ECCD6608, &qword_1DD339310);
        v64 = v442;
        v392 = v438;
        if (v391)
        {
          OUTLINED_FUNCTION_17_2();
          v393 = sub_1DD335FE0();
          MEMORY[0x1E12AC640](v393);
          OUTLINED_FUNCTION_118_0();
          if (v344)
          {
            OUTLINED_FUNCTION_45(v394);
            sub_1DD336830();
          }

          sub_1DD336860();
          v6 = v456;
        }

        (*(v64 + 8))(v371, v392);
        v395 = OUTLINED_FUNCTION_49_0();
        sub_1DD296084(v395, v396, v397);
        LODWORD(v64) = 0;
        OUTLINED_FUNCTION_74_0();
        v79 = v441;
        goto LABEL_92;
      }

      OUTLINED_FUNCTION_49_0();
      OUTLINED_FUNCTION_31_4();
      sub_1DD296084(v364, v365, v366);
      v367 = OUTLINED_FUNCTION_21_2();
      sub_1DD296084(v367, v368, v369);
      goto LABEL_106;
    }
  }

  v82 = sub_1DD3365D0();
  OUTLINED_FUNCTION_70_0(v82, v83);
  OUTLINED_FUNCTION_32_0();

  if (v77)
  {
    v84 = OBJC_IVAR____TtC23SiriReferenceResolution18RRContextKitPuller_featureFlags;
    sub_1DD28191C(v447 + OBJC_IVAR____TtC23SiriReferenceResolution18RRContextKitPuller_featureFlags, v453);
    v85 = v454;
    v86 = v455;
    OUTLINED_FUNCTION_128_0();
    v87 = OUTLINED_FUNCTION_32_0();
    v88(v87, v86);
    OUTLINED_FUNCTION_94_0();
    if ((v85 & 1) == 0)
    {

      v127 = v446;
      v128 = [v446 title];
      sub_1DD3365D0();
      OUTLINED_FUNCTION_129_0();
      OUTLINED_FUNCTION_112();
      if (sub_1DD3366A0())
      {

        v129 = OUTLINED_FUNCTION_89_0();
        sub_1DD3365D0();
        OUTLINED_FUNCTION_36_2();

        OUTLINED_FUNCTION_64_0();
        String.md5String.getter();
        OUTLINED_FUNCTION_121_0();

        if (!v86)
        {
          v130 = OUTLINED_FUNCTION_89_0();
          sub_1DD3365D0();
          OUTLINED_FUNCTION_121_0();
        }

        v131 = OUTLINED_FUNCTION_89_0();
        sub_1DD3365D0();
        OUTLINED_FUNCTION_129_0();
        v444 = v84;
        OUTLINED_FUNCTION_99_0();
        v138 = sub_1DD2D0BF4(v132, v133, v134, v135, v136, v137);
        if (!v5)
        {
          v439 = v138;

          v285 = [v127 title];
          sub_1DD3365D0();
          OUTLINED_FUNCTION_129_0();
          OUTLINED_FUNCTION_99_0();
          v103 = 0;
          v292 = sub_1DD2D0F48(v286, v287, v288, v289, v290, v291);
          OUTLINED_FUNCTION_92_0(v292, &qword_1ECCD6608, &qword_1DD339310);

          sub_1DD2B4714(v6, &unk_1EE02A000);
          LODWORD(v64) = 0;
          v6 = MEMORY[0x1E69E7CC0];
          v253 = v440;
          goto LABEL_103;
        }

        sub_1DD296084(v441, &qword_1ECCD6608, &qword_1DD339310);
      }

      else
      {
        sub_1DD334E30();
        OUTLINED_FUNCTION_59();
        swift_allocObject();
        v213 = sub_1DD334E20();
        OUTLINED_FUNCTION_112();
        sub_1DD334E10();
        OUTLINED_FUNCTION_112();
        String.md5String.getter();
        v442 = &unk_1EE02A000;
        if (v215)
        {
          v216 = v214;
          v217 = v215;
        }

        else
        {

          v216 = &unk_1EE02A000;
          v217 = v85;
        }

        v79 = v448;
        v305 = v437;
        swift_bridgeObjectRetain_n();

        OUTLINED_FUNCTION_8();
        v306 = v435;
        sub_1DD334C30();
        v439 = v213;
        sub_1DD334BA0();
        (*(v305 + 8))(v306, v436);
        sub_1DD28191C(v447 + v84, v453);
        v307 = v216;
        v308 = v454;
        v309 = v455;
        __swift_project_boxed_opaque_existential_1(v453, v454);
        OUTLINED_FUNCTION_101();
        v310(v308, v309);
        OUTLINED_FUNCTION_125_0();
        if (v213)
        {
          sub_1DD334BF0();
          v311 = OUTLINED_FUNCTION_20_1();
          __swift_storeEnumTagSinglePayload(v311, v312, v313, v314);
          sub_1DD3356D0();
          OUTLINED_FUNCTION_119_0();
          OUTLINED_FUNCTION_24();
          __swift_storeEnumTagSinglePayload(v315, v316, v317, v318);

          OUTLINED_FUNCTION_56_0();
          v400 = v307;
          v401 = v217;
          v398 = v319;
          v399 = MEMORY[0x1E69E7CC0];
          v444 = v307;
          v320 = v445;
          OUTLINED_FUNCTION_75_0();
          sub_1DD334C00();
          v6 = v439;
          sub_1DD334BB0();
          OUTLINED_FUNCTION_41_1();
          OUTLINED_FUNCTION_97_0();
          v321();
          v322 = v217;
          v323 = v444;
        }

        else
        {
          v322 = v217;
          v323 = v307;
          v6 = v439;
          v320 = v445;
        }

        MEMORY[0x1E12AABB0](v6);
        v324 = v443;
        v325 = sub_1DD2D0F8C(v323, v322, v320, v79, v442, v85);
        v103 = v324;
        if (!v324)
        {
          v444 = v323;
          OUTLINED_FUNCTION_92_0(v325, &qword_1ECCD6608, &qword_1DD339310);

          sub_1DD2B4714(v64, v79);
          v6 = MEMORY[0x1E69E7CC0];
          LODWORD(v64) = 1;
          v253 = v440;
          goto LABEL_103;
        }

        sub_1DD296084(v441, &qword_1ECCD6608, &qword_1DD339310);

        OUTLINED_FUNCTION_102_0();
        swift_bridgeObjectRelease_n();
      }

      return v6;
    }
  }

  v89 = sub_1DD3365D0();
  OUTLINED_FUNCTION_70_0(v89, v90);
  OUTLINED_FUNCTION_32_0();

  v91 = MEMORY[0x1E69DADF0];
  v6 = MEMORY[0x1E69DAE70];
  if (v77 & 1) == 0 || (v92 = OBJC_IVAR____TtC23SiriReferenceResolution18RRContextKitPuller_featureFlags, sub_1DD28191C(v447 + OBJC_IVAR____TtC23SiriReferenceResolution18RRContextKitPuller_featureFlags, v453), v93 = v454, v64 = v455, OUTLINED_FUNCTION_128_0(), v94 = OUTLINED_FUNCTION_32_0(), v95(v94, v64), OUTLINED_FUNCTION_94_0(), (v93))
  {
    v96 = sub_1DD3365D0();
    OUTLINED_FUNCTION_70_0(v96, v97);
    OUTLINED_FUNCTION_32_0();

    if ((v77 & 1) != 0 && (sub_1DD28191C(v447 + OBJC_IVAR____TtC23SiriReferenceResolution18RRContextKitPuller_featureFlags, v453), v98 = v454, v64 = v455, OUTLINED_FUNCTION_128_0(), v99 = OUTLINED_FUNCTION_32_0(), v100(v99, v64), OUTLINED_FUNCTION_94_0(), (v98 & 1) == 0))
    {

      v203 = v446;
      v204 = [v446 extractedStartDateComponents];
      if (v204)
      {
        v205 = v204;
        v206 = v425;
        sub_1DD3344F0();

        v207 = 0;
        v208 = v426;
      }

      else
      {
        v207 = 1;
        v208 = v426;
        v206 = v425;
      }

      v257 = sub_1DD334570();
      v258 = 1;
      __swift_storeEnumTagSinglePayload(v206, v207, 1, v257);
      type metadata accessor for RRContextKitPuller(0);
      sub_1DD2AEA44();
      sub_1DD296084(v206, &qword_1ECCD6778, &qword_1DD339728);
      v259 = [v203 extractedEndDateComponents];
      if (v259)
      {
        v260 = v259;
        sub_1DD3344F0();

        v258 = 0;
      }

      __swift_storeEnumTagSinglePayload(v208, v258, 1, v257);
      sub_1DD2AEA44();
      sub_1DD296084(v208, &qword_1ECCD6778, &qword_1DD339728);
      sub_1DD335530();
      OUTLINED_FUNCTION_59();
      swift_allocObject();
      v261 = sub_1DD335520();
      sub_1DD335860();
      sub_1DD335510();

      sub_1DD335860();
      sub_1DD335500();

      v262 = OUTLINED_FUNCTION_89_0();
      sub_1DD3365D0();
      OUTLINED_FUNCTION_67_0();

      OUTLINED_FUNCTION_79();
      String.md5String.getter();
      v264 = v263;
      v266 = v265;

      if (v266)
      {
        v444 = v264;
      }

      else
      {
        v267 = OUTLINED_FUNCTION_89_0();
        v444 = sub_1DD3365D0();
      }

      v103 = v443;

      MEMORY[0x1E12AABB0](v261);

      v6 = MEMORY[0x1E69E7CC0];
      LODWORD(v64) = 1;
    }

    else
    {
      v101 = sub_1DD3365D0();
      OUTLINED_FUNCTION_70_0(v101, v102);
      OUTLINED_FUNCTION_32_0();

      v103 = v443;
      v104 = v438;
      if (v77)
      {

        v106 = OUTLINED_FUNCTION_95_0(v105, sel_title);
        sub_1DD3365D0();
        OUTLINED_FUNCTION_36_2();

        OUTLINED_FUNCTION_64_0();
        String.md5String.getter();
        v6 = v107;
        v109 = v108;

        if (!v109)
        {
          v110 = [v64 title];
          v6 = sub_1DD3365D0();
        }

        v111 = [v64 title];
        sub_1DD3365D0();
        OUTLINED_FUNCTION_36_2();

        v453[0] = v77;
        v453[1] = v104;
        v451 = 10;
        v452 = 0xE100000000000000;
        v449 = 32;
        v450 = 0xE100000000000000;
        sub_1DD2B3FD4();
        OUTLINED_FUNCTION_106();
        sub_1DD336AE0();

        sub_1DD2D1350();
        if (!v103)
        {
          v444 = v6;

          LODWORD(v64) = 0;
          v6 = MEMORY[0x1E69E7CC0];
          v253 = v440;
          v79 = v441;
          goto LABEL_103;
        }

        sub_1DD296084(v441, &qword_1ECCD6608, &qword_1DD339310);

LABEL_138:

        return v6;
      }

      v139 = sub_1DD3365D0();
      OUTLINED_FUNCTION_70_0(v139, v140);
      OUTLINED_FUNCTION_32_0();

      v141 = sub_1DD3365D0();
      OUTLINED_FUNCTION_70_0(v141, v142);
      OUTLINED_FUNCTION_32_0();

      v254 = sub_1DD3365D0();
      OUTLINED_FUNCTION_70_0(v254, v255);
      OUTLINED_FUNCTION_32_0();

      v256 = v433;
      v326 = sub_1DD3365D0();
      OUTLINED_FUNCTION_70_0(v326, v327);
      OUTLINED_FUNCTION_32_0();

      if (v77)
      {

        v328 = v446;
        v329 = sub_1DD2B3BD0(v446);
        OUTLINED_FUNCTION_39_1(v329, v330);
        v331 = [v328 title];
        v442 = sub_1DD3365D0();

        sub_1DD2B3BD0(v328);
        OUTLINED_FUNCTION_121_0();
        v332 = OUTLINED_FUNCTION_7_0(*MEMORY[0x1E69D17A8], *(v256 + 104));
        v333(v332);
        sub_1DD334C60();
        v64 = v334;
        v335 = OUTLINED_FUNCTION_44_0(*(v256 + 8));
        v336(v335);
        OUTLINED_FUNCTION_46_1();
        if (!v5)
        {
          v439 = v337;

          v346 = OUTLINED_FUNCTION_95_0(v345, sel_title);
          v347 = sub_1DD3365D0();
          v442 = v348;
          v443 = v347;

          sub_1DD2B3BD0(v64);
          OUTLINED_FUNCTION_32_2();
          OUTLINED_FUNCTION_22_1(&v439);
          OUTLINED_FUNCTION_42_2();
          v349();
          sub_1DD334C60();
          v350 = OUTLINED_FUNCTION_58_0();
          v351(v350);
          v79 = v442;
          OUTLINED_FUNCTION_110_0();
          sub_1DD2D29F0();
          v103 = 0;
          OUTLINED_FUNCTION_92_0(v352, &qword_1ECCD6608, &qword_1DD339310);

          v353 = OUTLINED_FUNCTION_64_0();
          sub_1DD2B4714(v353, v354);
          LODWORD(v64) = 0;
          v6 = MEMORY[0x1E69E7CC0];
          v253 = v440;
          OUTLINED_FUNCTION_108_0();
          goto LABEL_103;
        }

        sub_1DD296084(v441, &qword_1ECCD6608, &qword_1DD339310);

        OUTLINED_FUNCTION_49_0();
        goto LABEL_138;
      }

      v338 = sub_1DD3365D0();
      OUTLINED_FUNCTION_70_0(v338, v339);
      OUTLINED_FUNCTION_32_0();

      LODWORD(v64) = 0;
      v444 = 0;
      v6 = MEMORY[0x1E69E7CC0];
    }

LABEL_102:
    v253 = v440;
    v79 = v441;
    goto LABEL_103;
  }

  v64 = sub_1DD2B3C34(v446);
  if (!v64)
  {
    OUTLINED_FUNCTION_74_0();
    v6 = MEMORY[0x1E69E7CC0];
    v103 = v443;
    goto LABEL_102;
  }

  v407 = v92;
  sub_1DD3355C0();
  OUTLINED_FUNCTION_59();
  swift_allocObject();
  v409 = sub_1DD3355B0();
  v420 = [objc_allocWithZone(MEMORY[0x1E695CF60]) init];
  v143 = v438;
  v144 = sub_1DD336530();
  v145 = 0;
  v147 = v64 + 64;
  v146 = *(v64 + 64);
  v148 = *(v64 + 32);
  v417 = *v91;
  v149 = 1 << v148;
  v150 = -1;
  v416 = *v6;
  if (v149 < 64)
  {
    v150 = ~(-1 << v149);
  }

  v413 = *MEMORY[0x1E696A910];
  v151 = v150 & v146;
  v152 = (v149 + 63) >> 6;
  v418 = v442 + 104;
  v421 = v442 + 32;
  v410 = v442 + 40;
  v408 = *MEMORY[0x1E696A918];
  v404 = *MEMORY[0x1E696A928];
  v402 = *MEMORY[0x1E696A930];
  v400 = *MEMORY[0x1E696A938];
  v399 = *MEMORY[0x1E695CC18];
  v401 = *MEMORY[0x1E695CC30];
  v403 = *MEMORY[0x1E695CC28];
  v406 = *MEMORY[0x1E695CC08];
  v411 = *MEMORY[0x1E695CC00];
  v153 = v448;
  v414 = v64 + 64;
  v412 = v152;
  v415 = v64;
  while (1)
  {
    v434 = v144;
    if (!v151)
    {
      break;
    }

    v154 = v143;
LABEL_35:
    v156 = __clz(__rbit64(v151)) | (v145 << 6);
    v157 = *(*(v64 + 48) + 8 * v156);
    v158 = (*(v64 + 56) + 16 * v156);
    v159 = *v158;
    v160 = v158[1];
    v161 = sub_1DD3365D0();
    v433 = v162;
    sub_1DD336340();
    v64 = swift_allocBox();
    v422 = v159;
    *v163 = v159;
    v163[1] = v160;
    OUTLINED_FUNCTION_22();
    (*(v164 + 104))();
    v165 = v439;
    *v439 = v64;
    (*v418)(v165, v416, v154);
    v419 = *v421;
    v419(v444, v165, v154);
    v426 = v160;
    OUTLINED_FUNCTION_102_0();
    swift_bridgeObjectRetain_n();
    v425 = v157;
    v432 = v157;
    v166 = v434;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v453[0] = v166;
    v168 = v433;
    sub_1DD28EFFC();
    OUTLINED_FUNCTION_72_0();
    LODWORD(v64) = v171 + v172;
    if (__OFADD__(v171, v172))
    {
      __break(1u);
LABEL_155:
      __break(1u);
      goto LABEL_156;
    }

    v173 = v169;
    v174 = v170;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6760, &qword_1DD339710);
    if (sub_1DD336CC0())
    {
      v175 = sub_1DD28EFFC();
      if ((v174 & 1) != (v176 & 1))
      {
        result = sub_1DD336E30();
        __break(1u);
        return result;
      }

      v173 = v175;
    }

    v177 = v453[0];
    if (v174)
    {
      v178 = v453[0];
      v179 = *(v453[0] + 56) + *(v442 + 9) * v173;
      v143 = v438;
      (*(v442 + 5))(v179, v444, v438);
    }

    else
    {
      *(v453[0] + 8 * (v173 >> 6) + 64) |= 1 << v173;
      v180 = (v177[6] + 16 * v173);
      *v180 = v161;
      v180[1] = v168;
      v181 = v177[7] + *(v442 + 9) * v173;
      v143 = v438;
      v419(v181, v444, v438);
      v182 = v177[2];
      v183 = __OFADD__(v182, 1);
      v171 = v182 + 1;
      if (v183)
      {
        goto LABEL_155;
      }

      v178 = v177;
      v177[2] = v171;
    }

    v153 = v448;
    sub_1DD3365D0();
    OUTLINED_FUNCTION_53_0();
    OUTLINED_FUNCTION_88_0();
    v186 = v186 && isUniquelyReferenced_nonNull_native == v185;
    if (v186)
    {

LABEL_70:
      OUTLINED_FUNCTION_15_1();
      OUTLINED_FUNCTION_32_0();

      v200 = &v440;
      goto LABEL_71;
    }

    OUTLINED_FUNCTION_14_2(v184);
    OUTLINED_FUNCTION_126_0();

    if (v64)
    {
      goto LABEL_70;
    }

    sub_1DD3365D0();
    OUTLINED_FUNCTION_53_0();
    OUTLINED_FUNCTION_88_0();
    if (v186 && isUniquelyReferenced_nonNull_native == v188)
    {

LABEL_74:
      OUTLINED_FUNCTION_15_1();
      OUTLINED_FUNCTION_32_0();

      v200 = &v435;
      goto LABEL_71;
    }

    OUTLINED_FUNCTION_14_2(v187);
    OUTLINED_FUNCTION_126_0();

    if (v64)
    {
      goto LABEL_74;
    }

    sub_1DD3365D0();
    OUTLINED_FUNCTION_53_0();
    OUTLINED_FUNCTION_88_0();
    if (v186 && isUniquelyReferenced_nonNull_native == v191)
    {

LABEL_76:
      OUTLINED_FUNCTION_15_1();
      OUTLINED_FUNCTION_32_0();

      v200 = &v432;
      goto LABEL_71;
    }

    OUTLINED_FUNCTION_14_2(v190);
    OUTLINED_FUNCTION_126_0();

    if (v64)
    {
      goto LABEL_76;
    }

    sub_1DD3365D0();
    OUTLINED_FUNCTION_53_0();
    OUTLINED_FUNCTION_88_0();
    if (v186 && isUniquelyReferenced_nonNull_native == v194)
    {

LABEL_78:
      OUTLINED_FUNCTION_15_1();
      OUTLINED_FUNCTION_32_0();

      v200 = &v430;
LABEL_71:
      v201 = *(v200 - 32);
      OUTLINED_FUNCTION_124_0(v201, sel_setValue_forKey_);

      v144 = v178;
      v64 = v415;
      goto LABEL_72;
    }

    OUTLINED_FUNCTION_14_2(v193);
    OUTLINED_FUNCTION_126_0();

    if (v64)
    {
      goto LABEL_78;
    }

    sub_1DD3365D0();
    OUTLINED_FUNCTION_53_0();
    OUTLINED_FUNCTION_88_0();
    if (v186 && isUniquelyReferenced_nonNull_native == v197)
    {

      v64 = v415;
LABEL_80:
      OUTLINED_FUNCTION_15_1();
      OUTLINED_FUNCTION_32_0();

      v202 = v399;
      OUTLINED_FUNCTION_124_0(v202, sel_setValue_forKey_);

      goto LABEL_81;
    }

    v199 = OUTLINED_FUNCTION_14_2(v196);

    v64 = v415;
    if (v199)
    {
      goto LABEL_80;
    }

LABEL_81:
    v144 = v178;
LABEL_72:
    v151 &= v151 - 1;

    v147 = v414;
    v152 = v412;
  }

  while (1)
  {
    v155 = v145 + 1;
    if (__OFADD__(v145, 1))
    {
      __break(1u);
      sub_1DD296084(v441, &qword_1ECCD6608, &qword_1DD339310);
      return 0;
    }

    if (v155 >= v152)
    {
      break;
    }

    v151 = *(v147 + 8 * v155);
    ++v145;
    if (v151)
    {
      v154 = v143;
      v145 = v155;
      goto LABEL_35;
    }
  }

  v442 = [objc_allocWithZone(MEMORY[0x1E695CF68]) init];
  v218 = [v442 stringFromPostalAddress_];
  v219 = sub_1DD3365D0();
  v221 = v220;

  v222 = v409;
  sub_1DD3355A0();
  String.md5String.getter();
  if (v223)
  {
    OUTLINED_FUNCTION_36_2();

    v219 = v222;
    v221 = v145;
  }

  v444 = v219;
  OUTLINED_FUNCTION_102_0();
  swift_bridgeObjectRetain_n();

  OUTLINED_FUNCTION_8();
  v224 = v435;
  v225 = v445;
  sub_1DD334C30();
  v226 = v409;
  v227 = v409;
  sub_1DD334BA0();
  OUTLINED_FUNCTION_21();
  v228(v224, v436);
  sub_1DD28191C(v447 + v407, v453);
  v79 = v454;
  v64 = v455;
  __swift_project_boxed_opaque_existential_1(v453, v454);
  OUTLINED_FUNCTION_101();
  v229(v79, v64);
  OUTLINED_FUNCTION_125_0();
  if (v227)
  {
    sub_1DD334BF0();
    OUTLINED_FUNCTION_24();
    __swift_storeEnumTagSinglePayload(v230, v231, v232, v233);
    sub_1DD3356D0();
    OUTLINED_FUNCTION_119_0();
    v79 = *(v234 - 256);
    OUTLINED_FUNCTION_24();
    __swift_storeEnumTagSinglePayload(v235, v236, v237, v238);

    OUTLINED_FUNCTION_56_0();
    v401 = v221;
    v400 = v444;
    v398 = v239;
    v399 = MEMORY[0x1E69E7CC0];
    v64 = v427;
    v153 = v448;
    sub_1DD334C00();
    v227 = v226;
    sub_1DD334BB0();
    OUTLINED_FUNCTION_41_1();
    OUTLINED_FUNCTION_97_0();
    v243(v240, v241, v242);
  }

  OUTLINED_FUNCTION_117_0();
  v439 = MEMORY[0x1E12AABB0](v226);
  OUTLINED_FUNCTION_63();
  v244 = swift_allocObject();
  *(v244 + 16) = v225;
  *(v244 + 24) = v153;
  strcpy((v244 + 32), "postalAddress");
  *(v244 + 46) = -4864;
  *v64 = v244;
  v245 = v430;
  v246 = v431;
  (*(v430 + 104))(v64, *MEMORY[0x1E69DB098], v431);
  sub_1DD336310();
  swift_allocBox();
  OUTLINED_FUNCTION_36_2();
  (*(v245 + 16))(v423, v64, v246);

  sub_1DD3362F0();

  v247 = (*(v245 + 8))(v64, v246);
  OUTLINED_FUNCTION_92_0(v247, &qword_1ECCD6608, &qword_1DD339310);
  v248 = v424;
  *v424 = v227;
  v249 = v438;
  (*v418)(v248, *MEMORY[0x1E69DAE58], v438);
  LODWORD(v64) = 1;
  OUTLINED_FUNCTION_66_0();
  __swift_storeEnumTagSinglePayload(v250, v251, v252, v249);
  sub_1DD2B4714(v248, v79);
  v6 = MEMORY[0x1E69E7CC0];
LABEL_92:
  v253 = v440;
  v103 = v443;
LABEL_103:
  if (sub_1DD287354(v6))
  {
    sub_1DD296084(v79, &qword_1ECCD6608, &qword_1DD339310);

    goto LABEL_105;
  }

  sub_1DD335E60();
  OUTLINED_FUNCTION_24();
  __swift_storeEnumTagSinglePayload(v268, v269, v270, v271);
  v272 = v253;
  v273 = v446;
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_111_0();
  v282 = sub_1DD2B16A4(v274, v275, v276, v277, v278, v279, v280, v281, v253);
  if (!v103)
  {
    v283 = v282;
    sub_1DD296084(v272, &qword_1ECCD6350, &unk_1DD3396F0);

    if (v283)
    {
      v284 = sub_1DD2B2A30(v283);
      if (v284)
      {
        if (([v273 isOnScreen] & 1) == 0)
        {
          OUTLINED_FUNCTION_17_2();
          sub_1DD335FE0();
        }

        v284 = sub_1DD2B28D4(v283);
      }

      MEMORY[0x1E12AC640](v284);
      v171 = *((v456 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v456 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v171 >> 1)
      {
LABEL_156:
        OUTLINED_FUNCTION_45(v171);
        sub_1DD336830();
      }

      OUTLINED_FUNCTION_112();
      sub_1DD336860();
      v6 = v456;

      sub_1DD296084(v441, &qword_1ECCD6608, &qword_1DD339310);
      if (!v64)
      {
        return v6;
      }
    }

    else
    {
      sub_1DD296084(v79, &qword_1ECCD6608, &qword_1DD339310);
LABEL_105:

      if (!v64)
      {
        return v6;
      }
    }

LABEL_106:

    return v6;
  }

  sub_1DD296084(v253, &qword_1ECCD6350, &unk_1DD3396F0);
  sub_1DD296084(v79, &qword_1ECCD6608, &qword_1DD339310);

  if (v64)
  {
    goto LABEL_138;
  }

  return v6;
}