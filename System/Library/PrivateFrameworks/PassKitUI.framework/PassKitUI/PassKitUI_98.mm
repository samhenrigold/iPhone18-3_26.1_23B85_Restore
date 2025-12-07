void sub_1BDA66160(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    KeyPath = swift_getKeyPath();
    v4 = swift_getKeyPath();
    swift_retain_n();
    sub_1BE04D8B4(&v33);
    KeyPath, v5, v6, v7, v8, v9, v10, v11;
    v4, v12, v13, v14, v15, v16, v17, v18;
    v2, v19, v20, v21, v22, v23, v24, v25;
    if (v33)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v33) = 0;
      sub_1BE04D8C4();
      if (([*a1 hasActiveVirtualCard] & 1) == 0)
      {
        v33 = *(a1 + 80);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
        sub_1BE0516B4();
      }
    }

    else
    {
      v2, v26, v27, v28, v29, v30, v31, v32;
    }
  }

  else
  {
    type metadata accessor for WalletDeepLinkCoordinator(0);
    sub_1BDA67460(&qword_1EBD4CB68, type metadata accessor for WalletDeepLinkCoordinator, &protocol conformance descriptor for WalletDeepLinkCoordinator);
    sub_1BE04EEB4();
    __break(1u);
  }
}

void sub_1BDA662D8(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (*a2 == 1)
  {
    if (*(a3 + 48))
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BE048964();
      sub_1BE04D8C4();
      if (([*a3 hasActiveVirtualCard] & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
        sub_1BE0516B4();
      }
    }

    else
    {
      type metadata accessor for WalletDeepLinkCoordinator(0);
      sub_1BDA67460(&qword_1EBD4CB68, type metadata accessor for WalletDeepLinkCoordinator, &protocol conformance descriptor for WalletDeepLinkCoordinator);
      sub_1BE04EEB4();
      __break(1u);
    }
  }
}

id sub_1BDA66400@<X0>(_OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v206 = a3;
  v209 = sub_1BE04BD74();
  v4 = *(v209 - 8);
  MEMORY[0x1EEE9AC00](v209);
  v6 = &v202 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  v207 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v205 = &v202 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v208 = &v202 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v203 = &v202 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C248, &qword_1BE111830);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v204 = &v202 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v202 - v16;
  v18 = sub_1BE052434();
  v20 = v19;
  v210 = sub_1BE04A844();
  v21 = [v210 domain];
  v22 = sub_1BE052434();
  v24 = v23;

  v26 = sub_1BE052434();
  v32 = v25;
  if (v22 == v26 && v24 == v25)
  {
    v24, v25, v26, v27, v28, v29, v30, v31;
    v32, v33, v34, v35, v36, v37, v38, v39;
  }

  else
  {
    v40 = sub_1BE053B84();
    v24, v41, v42, v43, v44, v45, v46, v47;
    v32, v48, v49, v50, v51, v52, v53, v54;
    if ((v40 & 1) == 0)
    {
      v20, v55, v56, v57, v58, v59, v60, v61;
      v161 = 1;
      v102 = v17;
      v159 = v207;
LABEL_15:
      v103 = v209;
      goto LABEL_19;
    }
  }

  v62 = [v210 userInfo];
  v63 = sub_1BE052244();

  if (!v63[2])
  {
    v63, v64, v65, v66, v67, v68, v69, v70;
    v160 = v20;
LABEL_17:
    v160, v80, v81, v82, v83, v84, v85, v86;
    v102 = v17;
    v103 = v209;
    goto LABEL_18;
  }

  v71 = sub_1BD148F70(v18, v20);
  v73 = v72;
  v20, v72, v74, v75, v76, v77, v78, v79;
  if ((v73 & 1) == 0)
  {
    v160 = v63;
    goto LABEL_17;
  }

  sub_1BD038CD0(v63[7] + 32 * v71, v211);
  v63, v87, v88, v89, v90, v91, v92, v93;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45AA0, &qword_1BE0C1E30);
  v94 = swift_dynamicCast();
  v102 = v17;
  v103 = v209;
  if ((v94 & 1) == 0)
  {
LABEL_18:
    v161 = 1;
    v159 = v207;
    goto LABEL_19;
  }

  v104 = v212;
  if (!*(v212 + 2))
  {
    v212, v95, v96, v97, v98, v99, v100, v101;
    goto LABEL_18;
  }

  v105 = *(v212 + 5);
  v202 = *(v212 + 4);
  v106 = v105;
  sub_1BE048C84();
  v104, v107, v108, v109, v110, v111, v112, v113;
  v114 = [v210 userInfo];
  v115 = sub_1BE052244();

  v116 = sub_1BE052434();
  v124 = v117;
  if (!v115[2])
  {
    v115, v117, v118, v119, v120, v121, v122, v123;
    v124, v181, v182, v183, v184, v185, v186, v187;
LABEL_24:
    v106, v188, v189, v190, v191, v192, v193, v194;
    v195 = sub_1BE04AA64();
    v149 = v203;
    (*(*(v195 - 8) + 56))(v203, 1, 1, v195);
    v102 = v17;
    v159 = v207;
    goto LABEL_25;
  }

  v125 = sub_1BD148F70(v116, v117);
  v127 = v126;
  v124, v126, v128, v129, v130, v131, v132, v133;
  if ((v127 & 1) == 0)
  {
    v115, v134, v135, v136, v137, v138, v139, v140;
    v103 = v209;
    goto LABEL_24;
  }

  sub_1BD038CD0(v115[7] + 32 * v125, v211);
  v115, v141, v142, v143, v144, v145, v146, v147;
  v148 = sub_1BE04AA64();
  v149 = v203;
  v150 = swift_dynamicCast();
  v151 = *(v148 - 8);
  (*(v151 + 56))(v149, v150 ^ 1u, 1, v148);
  if ((*(v151 + 48))(v149, 1, v148) != 1)
  {
    sub_1BD0DE53C(v149, &unk_1EBD3CF70, &qword_1BE0BA000);
    v212 = v202;
    v213 = v106;
    v196 = swift_allocObject();
    v197 = a2[5];
    v196[5] = a2[4];
    v196[6] = v197;
    v198 = a2[7];
    v196[7] = a2[6];
    v196[8] = v198;
    v199 = a2[1];
    v196[1] = *a2;
    v196[2] = v199;
    v200 = a2[3];
    v196[3] = a2[2];
    v196[4] = v200;
    sub_1BDA673F8(a2, v211);
    sub_1BD0DDEBC();
    v201 = v208;
    sub_1BE051744();
    v159 = v207;
    v102 = v17;
    (*(v207 + 32))(v17, v201, v7);
    v161 = 0;
    goto LABEL_15;
  }

  v106, v152, v153, v154, v155, v156, v157, v158;
  v102 = v17;
  v159 = v207;
  v103 = v209;
LABEL_25:
  sub_1BD0DE53C(v149, &unk_1EBD3CF70, &qword_1BE0BA000);
  v161 = 1;
LABEL_19:
  (*(v159 + 56))(v102, v161, 1, v7);
  (*(v4 + 104))(v6, *MEMORY[0x1E69B8058], v103);
  result = PKPassKitBundle();
  if (result)
  {
    v163 = v159;
    v164 = result;
    v165 = sub_1BE04B6F4();
    v167 = v166;

    (*(v4 + 8))(v6, v103);
    v212 = v165;
    v213 = v167;
    v168 = swift_allocObject();
    v169 = a2[5];
    v168[5] = a2[4];
    v168[6] = v169;
    v170 = a2[7];
    v168[7] = a2[6];
    v168[8] = v170;
    v171 = a2[1];
    v168[1] = *a2;
    v168[2] = v171;
    v172 = a2[3];
    v168[3] = a2[2];
    v168[4] = v172;
    sub_1BDA673F8(a2, v211);
    sub_1BD0DDEBC();
    v173 = v205;
    sub_1BE051744();
    v174 = v102;
    v209 = v102;
    v175 = v204;
    sub_1BD0DE19C(v174, v204, &qword_1EBD3C248, &qword_1BE111830);
    v176 = *(v163 + 16);
    v177 = v208;
    v176(v208, v173, v7);
    v178 = v206;
    sub_1BD0DE19C(v175, v206, &qword_1EBD3C248, &qword_1BE111830);
    v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D070, &unk_1BE111838);
    v176((v178 + *(v179 + 48)), v177, v7);

    v180 = *(v163 + 8);
    v180(v173, v7);
    sub_1BD0DE53C(v209, &qword_1EBD3C248, &qword_1BE111830);
    v180(v177, v7);
    return sub_1BD0DE53C(v175, &qword_1EBD3C248, &qword_1BE111830);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BDA66D30(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D058, &qword_1BE111820);
  v2 = sub_1BE0516B4();
  return (*(a1 + 8))(v2);
}

double sub_1BDA66DC4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D058, &qword_1BE111820);
  sub_1BE0516B4();
  return result;
}

void sub_1BDA66E4C(uint64_t a2@<X8>)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v121 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE052434();
  v9 = v8;
  v10 = sub_1BE04A844();
  v11 = [v10 domain];
  v12 = sub_1BE052434();
  v14 = v13;

  v15 = sub_1BE052434();
  v23 = v16;
  if (v12 == v15 && v14 == v16)
  {
    v14, v16, v17, v18, v19, v20, v21, v22;
    v23, v47, v48, v49, v50, v51, v52, v53;
  }

  else
  {
    v25 = sub_1BE053B84();
    v14, v26, v27, v28, v29, v30, v31, v32;
    v23, v33, v34, v35, v36, v37, v38, v39;
    if ((v25 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v54 = [v10 userInfo];
  v55 = sub_1BE052244();

  if (!v55[2])
  {
    v55, v56, v57, v58, v59, v60, v61, v62;
LABEL_13:
    v87 = v9;
LABEL_15:
    v87, v40, v41, v42, v43, v44, v45, v46;
    goto LABEL_16;
  }

  v63 = sub_1BD148F70(v7, v9);
  v65 = v64;
  v9, v64, v66, v67, v68, v69, v70, v71;
  if ((v65 & 1) == 0)
  {
    v87 = v55;
    goto LABEL_15;
  }

  sub_1BD038CD0(v55[7] + 32 * v63, v125);
  v55, v72, v73, v74, v75, v76, v77, v78;
  if (swift_dynamicCast())
  {
    v125[0] = v121;
    sub_1BD0DDEBC();
    v79 = sub_1BE0506C4();
    v81 = v79;
    v82 = v80;
    v84 = v83;
    *&v121 = v79;
    *(&v121 + 1) = v80;
    v86 = (v85 & 1);
    v122 = v86;
    v123 = v83;
    v124 = 0;
LABEL_18:
    sub_1BD0D7F18(v79, v80, v86);
    sub_1BE048C84();
    sub_1BD0D7F18(v81, v82, v86);
    sub_1BE048C84();
    sub_1BE04F9A4();

    sub_1BD0DDF10(v81, v82, v86, v95, v96, v97, v98, v99);
    v84, v100, v101, v102, v103, v104, v105, v106;
    sub_1BD0DDF10(v81, v82, v86, v107, v108, v109, v110, v111);
    v84, v112, v113, v114, v115, v116, v117, v118;
    v119 = v125[1];
    v120 = v126;
    *a2 = v125[0];
    *(a2 + 16) = v119;
    *(a2 + 32) = v120;
    return;
  }

LABEL_16:
  (*(v4 + 104))(v6, *MEMORY[0x1E69B8058], v3);
  v88 = PKPassKitBundle();
  if (v88)
  {
    v89 = v88;
    v90 = sub_1BE04B6F4();
    v92 = v91;

    (*(v4 + 8))(v6, v3);
    *&v125[0] = v90;
    *(&v125[0] + 1) = v92;
    sub_1BD0DDEBC();
    v79 = sub_1BE0506C4();
    v81 = v79;
    v82 = v80;
    v84 = v93;
    v86 = (v94 & 1);
    *&v121 = v79;
    *(&v121 + 1) = v80;
    v122 = v86;
    v123 = v93;
    v124 = 1;
    goto LABEL_18;
  }

  __break(1u);
}

__n128 sub_1BDA67270@<Q0>(unint64_t a1@<X0>, unint64_t a3@<X2>, unint64_t a4@<X3>, __n128 *a5@<X8>)
{
  v10.n128_u64[1] = a3;
  v10.n128_u64[0] = a1;
  type metadata accessor for WalletDeepLinkCoordinator(0);
  sub_1BDA67460(&qword_1EBD4CB68, type metadata accessor for WalletDeepLinkCoordinator, &protocol conformance descriptor for WalletDeepLinkCoordinator);
  v9 = sub_1BE04EEC4();
  v7 = v6;
  sub_1BE051694();
  sub_1BE051694();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD419B0, &unk_1BE0CB420);
  sub_1BE051694();
  sub_1BE051694();
  sub_1BE051694();
  result = *&v12[8];
  *a5 = v10;
  a5[1].n128_u64[0] = a4;
  a5[1].n128_u64[1] = *v12;
  a5[2] = *&v12[8];
  a5[3].n128_u64[0] = v9;
  a5[3].n128_u64[1] = v7;
  a5[4].n128_u8[0] = v12[0];
  a5[4].n128_u64[1] = *&v12[8];
  a5[5].n128_u8[0] = v12[0];
  a5[5].n128_u64[1] = *&v12[8];
  a5[6] = *v12;
  a5[7].n128_u8[0] = v12[0];
  a5[7].n128_u64[1] = *&v12[8];
  return result;
}

uint64_t sub_1BDA67460(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1BDA67514(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_1BDA6755C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1BDA67648@<X0>(BOOL *a1@<X8>)
{
  result = [*(v1 + 32) settings];
  *a1 = (result & 0x10) != 0;
  return result;
}

uint64_t objectdestroy_20Tm_0()
{
  swift_unknownObjectRelease();

  *(v0 + 40), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

id sub_1BDA676C8(unsigned __int8 *a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 48);
  v4 = *a1;
  v5 = [v2 settings];
  if ((v5 & v3) != 0)
  {
    v6 = [v2 settings];
  }

  else
  {
    v6 = v5 | v3;
  }

  v7 = 16;
  if (!v4)
  {
    v7 = 0;
  }

  return [v2 setSettings_];
}

uint64_t sub_1BDA67768(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BDA677E4()
{
  result = qword_1EBD5CF88;
  if (!qword_1EBD5CF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5CF88);
  }

  return result;
}

unint64_t sub_1BDA67840()
{
  result = qword_1EBD5CFA0;
  if (!qword_1EBD5CFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5CF98, &qword_1BE111758);
    sub_1BD0DE4F4(&qword_1EBD5CFA8, &qword_1EBD5CFB0, &qword_1BE111760, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5CFA0);
  }

  return result;
}

unint64_t sub_1BDA67900()
{
  result = qword_1EBD5D028;
  if (!qword_1EBD5D028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D018, &qword_1BE1117C8);
    sub_1BD35CEE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D028);
  }

  return result;
}

unint64_t sub_1BDA67984()
{
  result = qword_1EBD5D030;
  if (!qword_1EBD5D030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5CFF0, &qword_1BE1117A0);
    sub_1BD0DE4F4(&qword_1EBD5D020, &qword_1EBD5D010, &qword_1BE1117C0, MEMORY[0x1E6981F48]);
    sub_1BDA67900();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D030);
  }

  return result;
}

unint64_t sub_1BDA67A4C()
{
  result = qword_1EBD5D040;
  if (!qword_1EBD5D040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D038, &qword_1BE1117D0);
    sub_1BDA67460(&qword_1EBD5D048, type metadata accessor for VirtualCardDetailsSheet, &unk_1BE0BB638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D040);
  }

  return result;
}

unint64_t sub_1BDA67B10()
{
  result = qword_1EBD5D050;
  if (!qword_1EBD5D050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D000, &qword_1BE1117B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5CFF8, &qword_1BE1117A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D038, &qword_1BE1117D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5CFF0, &qword_1BE1117A0);
    sub_1BDA67984();
    swift_getOpaqueTypeConformance2();
    sub_1BDA67A4C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D050);
  }

  return result;
}

uint64_t objectdestroy_27Tm()
{
  v0[4], v1, v2, v3, v4, v5, v6, v7;
  v0[5], v8, v9, v10, v11, v12, v13, v14;

  v0[7], v15, v16, v17, v18, v19, v20, v21;
  v0[8], v22, v23, v24, v25, v26, v27, v28;
  v0[11], v29, v30, v31, v32, v33, v34, v35;
  v0[13], v36, v37, v38, v39, v40, v41, v42;

  v0[15], v43, v44, v45, v46, v47, v48, v49;
  v0[17], v50, v51, v52, v53, v54, v55, v56;

  return swift_deallocObject();
}

unint64_t sub_1BDA67D18()
{
  result = qword_1EBD5D0B0;
  if (!qword_1EBD5D0B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D0B8, &qword_1BE111908);
    sub_1BD0DE4F4(&qword_1EBD5D0C0, &qword_1EBD5CF30, &qword_1BE1116C8, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D0B0);
  }

  return result;
}

unint64_t sub_1BDA67DC8()
{
  result = qword_1EBD5D0C8;
  if (!qword_1EBD5D0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D0D0, &qword_1BE111910);
    sub_1BD0DE4F4(&qword_1EBD5CF68, &qword_1EBD5CF60, &qword_1BE1116F0, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D0C8);
  }

  return result;
}

unint64_t sub_1BDA67E84()
{
  result = qword_1EBD5D0D8;
  if (!qword_1EBD5D0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D0E0, &qword_1BE111918);
    sub_1BDA67840();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D0D8);
  }

  return result;
}

unint64_t sub_1BDA67F40()
{
  result = qword_1EBD5D108;
  if (!qword_1EBD5D108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D110, &unk_1BE1119C0);
    sub_1BD0DE4F4(&qword_1EBD5D0F0, &qword_1EBD5D0E8, &unk_1BE111970, MEMORY[0x1E6981F48]);
    sub_1BD1103C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D108);
  }

  return result;
}

int *sub_1BDA67FF8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v97 = a1;
  v3 = sub_1BE04BD74();
  v100 = *(v3 - 8);
  v101 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v99 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D120, &qword_1BE111AE8);
  v95 = *(v5 - 8);
  v96 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v94 - v6;
  v98 = *(v1 + 8);
  KeyPath = swift_getKeyPath();
  v9 = swift_getKeyPath();
  sub_1BE04D8B4(&v102);
  KeyPath, v10, v11, v12, v13, v14, v15, v16;
  v9, v17, v18, v19, v20, v21, v22, v23;
  v24 = v102;
  v25 = swift_allocObject();
  v26 = *(v2 + 16);
  v25[1] = *v2;
  v25[2] = v26;
  v27 = *(v2 + 48);
  v25[3] = *(v2 + 32);
  v25[4] = v27;
  v28 = swift_allocObject();
  v29 = *(v2 + 16);
  v28[1] = *v2;
  v28[2] = v29;
  v30 = *(v2 + 48);
  v28[3] = *(v2 + 32);
  v28[4] = v30;
  v31 = swift_allocObject();
  v32 = *(v2 + 16);
  v31[1] = *v2;
  v31[2] = v32;
  v33 = *(v2 + 48);
  v31[3] = *(v2 + 32);
  v31[4] = v33;
  type metadata accessor for SavingsActionWidgetViewModel();
  v34 = swift_allocObject();
  v34[2] = v24;
  v34[3] = sub_1BDA68C50;
  v34[4] = v25;
  v34[5] = sub_1BDA68CA8;
  v34[6] = v28;
  v34[7] = sub_1BDA68D0C;
  v34[8] = v31;
  v108 = v34;
  v106 = *(v2 + 24);
  v107 = *(v2 + 40);
  sub_1BDA68BA4(v2, &v102);
  sub_1BDA68BA4(v2, &v102);
  sub_1BDA68BA4(v2, &v102);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D128, &unk_1BE111AF0);
  sub_1BE0516C4();
  v36 = v102;
  v35 = v103;
  v38 = v104;
  v37 = v105;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52F68, &qword_1BE0F7208);
  sub_1BDA68D14();
  sub_1BDA68D68();
  sub_1BD7A1600();
  v94 = v7;
  sub_1BE050F74();
  v35, v39, v40, v41, v42, v43, v44, v45;
  v36, v46, v47, v48, v49, v50, v51, v52;
  sub_1BD17195C(v38, v37);
  v34, v53, v54, v55, v56, v57, v58, v59;
  v60 = swift_getKeyPath();
  v61 = swift_getKeyPath();
  sub_1BE04D8B4(&v102);
  v60, v62, v63, v64, v65, v66, v67, v68;
  v61, v69, v70, v71, v72, v73, v74, v75;
  v76 = v102;
  if (v102 && (v77 = [v102 contactNumber], v76, v77))
  {
    v78 = sub_1BE052434();
    v80 = v79;
  }

  else
  {
    v78 = 0;
    v80 = 0;
  }

  v82 = v99;
  v81 = v100;
  v83 = v101;
  (*(v100 + 104))(v99, *MEMORY[0x1E69B80E0], v101);
  result = PKPassKitBundle();
  if (result)
  {
    v85 = result;
    v86 = sub_1BE04B6F4();
    v88 = v87;

    (*(v81 + 8))(v82, v83);
    v106 = *(v2 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BE0516C4();
    v89 = v102;
    v90 = v103;
    v91 = v104;
    v92 = v97;
    (*(v95 + 32))(v97, v94, v96);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D140, &unk_1BE111B50);
    v93 = v92 + result[9];
    *v93 = v78;
    *(v93 + 8) = v80;
    *(v93 + 16) = v86;
    *(v93 + 24) = v88;
    *(v93 + 32) = 0;
    *(v93 + 40) = v89;
    *(v93 + 48) = v90;
    *(v93 + 56) = v91;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BDA68504(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v42 - v5;
  v7 = sub_1BE04AA64();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v12 = swift_getKeyPath();
  sub_1BE04D8B4(&v43);
  KeyPath, v13, v14, v15, v16, v17, v18, v19;
  v12, v20, v21, v22, v23, v24, v25, v26;
  v27 = v43;
  if (!v43)
  {
    (*(v8 + 56))(v6, 1, 1, v7);
    return sub_1BD226BBC(v6);
  }

  v28 = [v43 contactWebsite];

  if (v28)
  {
    sub_1BE04A9F4();

    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  (*(v8 + 56))(v3, v29, 1, v7);
  sub_1BD226B4C(v3, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_1BD226BBC(v6);
  }

  (*(v8 + 32))(v10, v6, v7);
  v31 = [objc_opt_self() sharedApplication];
  v32 = sub_1BE04A9C4();
  v33 = sub_1BD1ABAC0(MEMORY[0x1E69E7CC0]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_1BDA68DBC(&qword_1EBD37B90, type metadata accessor for OpenExternalURLOptionsKey, &unk_1BE0B3A4C);
  v34 = sub_1BE052224();
  v33, v35, v36, v37, v38, v39, v40, v41;
  [v31 openURL:v32 options:v34 completionHandler:0];

  return (*(v8 + 8))(v10, v7);
}

double sub_1BDA68844(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v3, v11, v12, v13, v14, v15, v16, v17;
  v19 = *(a1 + 24);
  v20 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D128, &unk_1BE111AF0);
  sub_1BE0516B4();
  return result;
}

id sub_1BDA688F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  v7 = *a1;
  v4 = sub_1BE0501F4();
  *a2 = v7;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  v5 = v3;

  return v7;
}

void sub_1BDA6898C(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v48 = 0;
  v49 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D118, &qword_1BE1119D0);
  sub_1BE051694();
  v6 = v56;
  v7 = v57;
  v8 = v58;
  sub_1BE051694();
  v9 = v56;
  v10 = v57;
  KeyPath = swift_getKeyPath();
  v12 = swift_getKeyPath();
  sub_1BE04D8B4(&v56);
  KeyPath, v13, v14, v15, v16, v17, v18, v19;
  v12, v20, v21, v22, v23, v24, v25, v26;
  v27 = v56;
  v28 = [v56 type];

  if (v28 == 4)
  {
    type metadata accessor for AccountModel(0);
    sub_1BDA68DBC(&qword_1EBD3AE50, type metadata accessor for AccountModel, &unk_1BE0BFF20);
    v29 = sub_1BE04E954();
    v31 = v30;
    v48 = v29;
    v49 = v30;
    v50 = a2;
    v51 = v6;
    v52 = v7;
    v53 = v8;
    LOBYTE(v54) = v9;
    *(&v54 + 1) = v65[0];
    HIDWORD(v54) = *(v65 + 3);
    v55 = v10;
    v56 = v29;
    v32 = v54;
    v57 = v30;
    v58 = a2;
    v59 = v6;
    v60 = v7;
    v61 = v8;
    v62 = v9;
    *v63 = v65[0];
    *&v63[3] = *(v65 + 3);
    v64 = v10;
    sub_1BDA68BA4(&v48, &v47);
    sub_1BDA68BDC(&v56);
  }

  else
  {

    sub_1BD17195C(v6, v7);
    v8, v33, v34, v35, v36, v37, v38, v39;
    v10, v40, v41, v42, v43, v44, v45, v46;
    v29 = 0;
    v31 = 0;
    a2 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v32 = 0;
    v10 = 0;
  }

  *a3 = v29;
  a3[1] = v31;
  a3[2] = a2;
  a3[3] = v6;
  a3[4] = v7;
  a3[5] = v8;
  a3[6] = v32;
  a3[7] = v10;
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI24AccountSupportTopicsViewVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_1BDA68C50()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  return result;
}

uint64_t objectdestroyTm_126()
{
  v8 = *(v0 + 40);
  if (v8)
  {
  }

  *(v0 + 56), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + 72), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

unint64_t sub_1BDA68D14()
{
  result = qword_1EBD5D130;
  if (!qword_1EBD5D130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D130);
  }

  return result;
}

unint64_t sub_1BDA68D68()
{
  result = qword_1EBD5D138;
  if (!qword_1EBD5D138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D138);
  }

  return result;
}

uint64_t sub_1BDA68DBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BDA68E04()
{
  result = qword_1EBD5D148;
  if (!qword_1EBD5D148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D140, &unk_1BE111B50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52F68, &qword_1BE0F7208);
    sub_1BDA68D14();
    sub_1BDA68D68();
    sub_1BD7A1600();
    swift_getOpaqueTypeConformance2();
    sub_1BD3CA3B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D148);
  }

  return result;
}

uint64_t type metadata accessor for ActionButton(uint64_t a1)
{
  result = qword_1EBD5D150;
  if (!qword_1EBD5D150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BDA68F70(uint64_t a1)
{
  sub_1BD0DDCF8(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1BDA69020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D208, &qword_1BE111DF0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v17 - v9;
  sub_1BD6CBBAC(a1);
  v17[1] = v11;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D210, &qword_1BE111E18);
  type metadata accessor for ActionButton(0);
  sub_1BD0DE4F4(&qword_1EBD5D218, &qword_1EBD5D210, &qword_1BE111E18, MEMORY[0x1E69E6338]);
  sub_1BDA6AE5C(&qword_1EBD5D220, type metadata accessor for ActionButton, &unk_1BE111B9C);
  sub_1BE0519C4();
  v12 = *(v5 + 16);
  v12(v7, v10, v4);
  *a2 = 0;
  *(a2 + 8) = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D228, &qword_1BE111E20);
  v12((a2 + *(v13 + 48)), v7, v4);
  v14 = a2 + *(v13 + 64);
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = *(v5 + 8);
  v15(v10, v4);
  return (v15)(v7, v4);
}

uint64_t sub_1BDA69298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1BE050474();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v7) = *(a1 + 8);
  v9 = *(a1 + 9);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *a2 = v7;
  *(a2 + 1) = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11;
  v12 = type metadata accessor for ActionButton(0);
  v14[1] = 0x404A000000000000;
  (*(v6 + 104))(v8, *MEMORY[0x1E6980EF8], v5);
  sub_1BD0DBFDC();
  sub_1BE048964();
  result = sub_1BE04E514();
  *(a2 + *(v12 + 24)) = 0x405A000000000000;
  return result;
}

uint64_t sub_1BDA693E0@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  *a2 = sub_1BE04F504();
  *(a2 + 8) = 0x4030000000000000;
  *(a2 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D200, &qword_1BE111DE8);
  return sub_1BDA69020(v4, a2 + *(v5 + 44));
}

uint64_t sub_1BDA69438@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a1;
  v43 = a3;
  v4 = sub_1BE04ED74();
  v5 = *(v4 - 8);
  v41 = v4;
  v42 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v40 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04F554();
  v8 = *(v7 - 8);
  v38 = v7;
  v39 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ActionButton(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D160, &qword_1BE111BF0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v36 - v17;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D168, &qword_1BE111BF8);
  MEMORY[0x1EEE9AC00](v36);
  v20 = &v36 - v19;
  sub_1BDA6A47C(a2, v14);
  v21 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v22 = (v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  sub_1BDA6A4E0(v14, v23 + v21);
  v24 = v37;
  *(v23 + v22) = v37;
  v44 = a2;
  v25 = a2;
  v26 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D170, &qword_1BE111C00);
  sub_1BDA6A6A8();
  sub_1BE051704();
  sub_1BE04F544();
  sub_1BD0DE4F4(&qword_1EBD5D1D0, &qword_1EBD5D160, &qword_1BE111BF0, MEMORY[0x1E697D680]);
  sub_1BDA6AE5C(&qword_1EBD4EB60, MEMORY[0x1E697C4E8], MEMORY[0x1E697C4E0]);
  v27 = v38;
  sub_1BE050864();
  (*(v39 + 8))(v10, v27);
  (*(v16 + 8))(v18, v15);
  v28 = &v20[*(v36 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49208, &qword_1BE0DDDC0);
  sub_1BE04EE64();
  *v28 = swift_getKeyPath();
  v29 = v40;
  sub_1BE04ED64();
  sub_1BDA6ABE8();
  sub_1BDA6AE5C(&qword_1EBD59570, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  v30 = v43;
  v31 = v41;
  sub_1BE050894();
  (*(v42 + 8))(v29, v31);
  sub_1BD0D15B4(v20);
  LOBYTE(v25) = *(v25 + 1);
  KeyPath = swift_getKeyPath();
  v33 = swift_allocObject();
  *(v33 + 16) = v25;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D1E0, &qword_1BE111C90);
  v35 = (v30 + *(result + 36));
  *v35 = KeyPath;
  v35[1] = sub_1BD10DF54;
  v35[2] = v33;
  return result;
}

uint64_t sub_1BDA69968@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37358, &qword_1BE0D73D0);
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v41 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D1C8, &qword_1BE111C28);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v41 - v7;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D1B8, &qword_1BE111C20);
  MEMORY[0x1EEE9AC00](v43);
  v10 = &v41 - v9;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D1A8, &qword_1BE111C18);
  MEMORY[0x1EEE9AC00](v45);
  v12 = &v41 - v11;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D198, &qword_1BE111C10);
  MEMORY[0x1EEE9AC00](v46);
  v14 = &v41 - v13;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D188, &qword_1BE111C08);
  MEMORY[0x1EEE9AC00](v47);
  v16 = &v41 - v15;
  v17 = *a1;
  v44 = *a1;
  *&v49 = sub_1BDA69F80(v17);
  *(&v49 + 1) = v18;
  sub_1BD0DDEBC();
  sub_1BE051624();
  v19 = &v8[*(v6 + 36)];
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EFB0, &qword_1BE0F32E0) + 28);
  v21 = *MEMORY[0x1E69816C0];
  v22 = sub_1BE0515D4();
  (*(*(v22 - 8) + 104))(v19 + v20, v21, v22);
  *v19 = swift_getKeyPath();
  (*(v41 + 32))(v8, v5, v42);
  type metadata accessor for ActionButton(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD385A0, &unk_1BE0D0C10);
  sub_1BE04E534();
  sub_1BE04E534();
  sub_1BE051CD4();
  sub_1BE04E5E4();
  sub_1BD0DE204(v8, v10, &qword_1EBD5D1C8, &qword_1BE111C28);
  v23 = &v10[*(v43 + 36)];
  v24 = v50;
  *v23 = v49;
  *(v23 + 1) = v24;
  *(v23 + 2) = v51;
  v25 = objc_opt_self();
  v26 = [v25 labelColor];
  v27 = sub_1BE0511C4();
  sub_1BD0DE204(v10, v12, &qword_1EBD5D1B8, &qword_1BE111C20);
  *&v12[*(v45 + 36)] = v27;
  v28 = [v25 secondarySystemFillColor];
  v29 = sub_1BE0511C4();
  LOBYTE(v27) = sub_1BE0501D4();
  sub_1BD0DE204(v12, v14, &qword_1EBD5D1A8, &qword_1BE111C18);
  v30 = &v14[*(v46 + 36)];
  *v30 = v29;
  v30[8] = v27;
  sub_1BD0DE204(v14, v16, &qword_1EBD5D198, &qword_1BE111C10);
  *&v16[*(v47 + 36)] = 256;
  sub_1BE052434();
  v32 = v31;
  sub_1BDA6A764();
  sub_1BE050DE4();
  v32, v33, v34, v35, v36, v37, v38, v39;
  return sub_1BDA6AD60(v16);
}

id sub_1BDA69F80(unsigned __int8 a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - v16;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v29 - v19;
  v23 = *MEMORY[0x1E69B80D8];
  v24 = *(v3 + 104);
  v30 = v25;
  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        v24(v14, v23, v20, v21);
        result = PKPassKitBundle();
        if (result)
        {
          v27 = result;
          v28 = sub_1BE04B6F4();
          v22 = v14;
          goto LABEL_18;
        }

        goto LABEL_23;
      }

      v24(v17, v23, v20, v21);
      result = PKPassKitBundle();
      if (result)
      {
        v27 = result;
        v28 = sub_1BE04B6F4();
        v22 = v17;
LABEL_18:

        (*(v3 + 8))(v22, v30);
        return v28;
      }

      goto LABEL_21;
    }

    v24(&v29 - v19, v23, v20, v21);
    result = PKPassKitBundle();
    if (result)
    {
      v27 = result;
      v28 = sub_1BE04B6F4();
      goto LABEL_18;
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (a1 == 3)
  {
    v24(v11, v23, v20, v21);
    result = PKPassKitBundle();
    if (result)
    {
      v27 = result;
      v28 = sub_1BE04B6F4();
      v22 = v11;
      goto LABEL_18;
    }

    goto LABEL_20;
  }

  if (a1 == 4)
  {
    v24(v8, v23, v20, v21);
    result = PKPassKitBundle();
    if (result)
    {
      v27 = result;
      v28 = sub_1BE04B6F4();
      v22 = v8;
      goto LABEL_18;
    }

    goto LABEL_22;
  }

  v24(v5, v23, v20, v21);
  result = PKPassKitBundle();
  if (result)
  {
    v27 = result;
    v28 = sub_1BE04B6F4();
    v22 = v5;
    goto LABEL_18;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1BDA6A350@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  sub_1BDA6A47C(v2, v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_1BDA6A4E0(v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  v11[1] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  sub_1BDA6A5C4();
  result = sub_1BE051694();
  v9 = v11[2];
  v10 = v11[3];
  *a2 = sub_1BDA6A544;
  a2[1] = v7;
  a2[2] = v9;
  a2[3] = v10;
  return result;
}

uint64_t sub_1BDA6A47C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BDA6A4E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BDA6A544@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ActionButton(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BDA69438(a1, v6, a2);
}

unint64_t sub_1BDA6A5C4()
{
  result = qword_1EBD3F5A0;
  if (!qword_1EBD3F5A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD3F5A0);
  }

  return result;
}

uint64_t sub_1BDA6A610()
{
  v1 = *(type metadata accessor for ActionButton(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  return (*(v0 + v2 + 8))(*(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_1BDA6A6A8()
{
  result = qword_1EBD5D178;
  if (!qword_1EBD5D178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D170, &qword_1BE111C00);
    sub_1BDA6A764();
    sub_1BDA6AE5C(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D178);
  }

  return result;
}

unint64_t sub_1BDA6A764()
{
  result = qword_1EBD5D180;
  if (!qword_1EBD5D180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D188, &qword_1BE111C08);
    sub_1BDA6A81C();
    sub_1BD0DE4F4(&qword_1EBD491B8, &unk_1EBD491C0, &qword_1BE1001E0, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D180);
  }

  return result;
}

unint64_t sub_1BDA6A81C()
{
  result = qword_1EBD5D190;
  if (!qword_1EBD5D190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D198, &qword_1BE111C10);
    sub_1BDA6A8D4();
    sub_1BD0DE4F4(&qword_1EBD36710, &qword_1EBD491B0, &unk_1BE0B7C80, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D190);
  }

  return result;
}

unint64_t sub_1BDA6A8D4()
{
  result = qword_1EBD5D1A0;
  if (!qword_1EBD5D1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D1A8, &qword_1BE111C18);
    sub_1BDA6A98C();
    sub_1BD0DE4F4(&qword_1EBD386E8, &unk_1EBD51210, &qword_1BE0C5180, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D1A0);
  }

  return result;
}

unint64_t sub_1BDA6A98C()
{
  result = qword_1EBD5D1B0;
  if (!qword_1EBD5D1B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D1B8, &qword_1BE111C20);
    sub_1BDA6AA18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D1B0);
  }

  return result;
}

unint64_t sub_1BDA6AA18()
{
  result = qword_1EBD5D1C0;
  if (!qword_1EBD5D1C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D1C8, &qword_1BE111C28);
    sub_1BD0DE4F4(&qword_1EBD4D3F0, &qword_1EBD37358, &qword_1BE0D73D0, MEMORY[0x1E697D658]);
    sub_1BD0DE4F4(&qword_1EBD3EFC8, &qword_1EBD3EFB0, &qword_1BE0F32E0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D1C0);
  }

  return result;
}

uint64_t sub_1BDA6AB20(uint64_t a1)
{
  v2 = sub_1BE04EE84();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1BE04F174();
}

unint64_t sub_1BDA6ABE8()
{
  result = qword_1EBD5D1D8;
  if (!qword_1EBD5D1D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D168, &qword_1BE111BF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D160, &qword_1BE111BF0);
    sub_1BE04F554();
    sub_1BD0DE4F4(&qword_1EBD5D1D0, &qword_1EBD5D160, &qword_1BE111BF0, MEMORY[0x1E697D680]);
    sub_1BDA6AE5C(&qword_1EBD4EB60, MEMORY[0x1E697C4E8], MEMORY[0x1E697C4E0]);
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD366E8, &qword_1EBD49208, &qword_1BE0DDDC0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D1D8);
  }

  return result;
}

uint64_t sub_1BDA6AD60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D188, &qword_1BE111C08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BDA6ADEC()
{
  result = qword_1EBD5D1F8;
  if (!qword_1EBD5D1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D1F8);
  }

  return result;
}

uint64_t sub_1BDA6AE5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id PKPassShareActivationOverviewViewController.__allocating_init(activationOptions:recipient:delegate:)(void *a1, void *a2, uint64_t a3)
{
  v6 = objc_allocWithZone(v3);
  swift_unknownObjectWeakInit();
  *&v6[OBJC_IVAR____TtC9PassKitUI43PKPassShareActivationOverviewViewController_hostingController] = 0;
  *&v6[OBJC_IVAR____TtC9PassKitUI43PKPassShareActivationOverviewViewController_activationOptions] = a1;
  *&v6[OBJC_IVAR____TtC9PassKitUI43PKPassShareActivationOverviewViewController_recipient] = a2;
  swift_unknownObjectWeakAssign();
  v11.receiver = v6;
  v11.super_class = v3;
  v7 = a1;
  v8 = a2;
  v9 = objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, 0, 0);

  swift_unknownObjectRelease();
  return v9;
}

id PKPassShareActivationOverviewViewController.init(activationOptions:recipient:delegate:)(void *a1, void *a2, uint64_t a3)
{
  v5 = sub_1BDA6E3D0(a1, a2, a3);

  swift_unknownObjectRelease();
  return v5;
}

void sub_1BDA6B0C8()
{
  v1 = v0;
  v34.receiver = v0;
  v34.super_class = type metadata accessor for PKPassShareActivationOverviewViewController();
  objc_msgSendSuper2(&v34, sel_viewDidLoad);
  v2 = [v0 navigationItem];
  v3 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v1 action:sel_closeButtonPressed];
  [v2 setLeftBarButtonItem_];

  v4 = *&v1[OBJC_IVAR____TtC9PassKitUI43PKPassShareActivationOverviewViewController_activationOptions];
  v5 = *&v1[OBJC_IVAR____TtC9PassKitUI43PKPassShareActivationOverviewViewController_recipient];
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = v4;
  v33 = v5;
  v8 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D260, &unk_1BE111E30));
  v9 = v4;
  v10 = v5;
  v11 = v9;
  v12 = v10;
  sub_1BE048964();
  sub_1BE048964();
  v13 = sub_1BE04F894();
  [v1 addChildViewController_];
  v14 = [v1 view];
  if (v14)
  {
    v15 = v14;
    v16 = [v13 view];

    if (v16)
    {
      [v15 addSubview_];

      [v13 didMoveToParentViewController_];
      v7, v17, v18, v19, v20, v21, v22, v23;
      v6, v24, v25, v26, v27, v28, v29, v30;

      v31 = *&v1[OBJC_IVAR____TtC9PassKitUI43PKPassShareActivationOverviewViewController_hostingController];
      *&v1[OBJC_IVAR____TtC9PassKitUI43PKPassShareActivationOverviewViewController_hostingController] = v13;

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BDA6B33C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      v5 = v2;
      [v4 shareActivationOverviewViewControllerDidFinish_];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1BDA6B3D4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      [v3 shareActivationOverviewViewControllerDidSelectShareCode_];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1BDA6B50C()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for PKPassShareActivationOverviewViewController();
  objc_msgSendSuper2(&v14, sel_viewDidLayoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC9PassKitUI43PKPassShareActivationOverviewViewController_hostingController];
  if (!v1)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = [v1 view];
  if (!v2)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  v4 = [v0 view];
  if (v4)
  {
    v5 = v4;
    [v4 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    [v3 setFrame_];
    return;
  }

LABEL_7:
  __break(1u);
}

id PKPassShareActivationOverviewViewController.__allocating_init(nibName:bundle:)(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v7 = sub_1BE052404();
    a2, v8, v9, v10, v11, v12, v13, v14;
  }

  else
  {
    v7 = 0;
  }

  v15 = [objc_allocWithZone(v4) initWithNibName:v7 bundle:a3];

  return v15;
}

id PKPassShareActivationOverviewViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PKPassShareActivationOverviewViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BDA6B7B8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v50 - v3;
  v5 = sub_1BE04AA64();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 stringValue];
  v11 = sub_1BE052434();
  v13 = v12;

  v51[0] = v11;
  v51[1] = v13;
  v50[2] = 32;
  v50[3] = 0xE100000000000000;
  v50[0] = 0;
  v50[1] = 0xE000000000000000;
  sub_1BD0DDEBC();
  v14 = sub_1BE053584();
  v16 = v15;
  v13, v15, v17, v18, v19, v20, v21, v22;
  strcpy(v51, "telprompt://");
  BYTE5(v51[1]) = 0;
  HIWORD(v51[1]) = -5120;
  MEMORY[0x1BFB3F610](v14, v16);
  v16, v23, v24, v25, v26, v27, v28, v29;
  v30 = v51[1];
  sub_1BE04AA54();
  v30, v31, v32, v33, v34, v35, v36, v37;
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_1BD0DE53C(v4, &unk_1EBD3CF70, &qword_1BE0BA000);
  }

  (*(v6 + 32))(v9, v4, v5);
  v39 = [objc_opt_self() sharedApplication];
  v40 = sub_1BE04A9C4();
  v41 = sub_1BD1ABAC0(MEMORY[0x1E69E7CC0]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_1BD1BD0CC();
  v42 = sub_1BE052224();
  v41, v43, v44, v45, v46, v47, v48, v49;
  [v39 openURL:v40 options:v42 completionHandler:0];

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1BDA6BAB8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D268, &qword_1BE111F38);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v14[-v4];
  v16 = v1;
  sub_1BE0501B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D270, &qword_1BE111F40);
  sub_1BD0DE4F4(&qword_1EBD5D278, &qword_1EBD5D270, &qword_1BE111F40, MEMORY[0x1E6981870]);
  sub_1BE04E304();
  v6 = [objc_opt_self() systemBackgroundColor];
  v7 = sub_1BE0511C4();
  v8 = sub_1BE0501D4();
  v9 = &v5[*(v3 + 36)];
  *v9 = v7;
  v9[8] = v8;
  v15 = v1;
  sub_1BE04F7B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D280, &qword_1BE111F48);
  sub_1BDA6E538();
  sub_1BDA6E61C();
  sub_1BE050954();
  sub_1BD0DE53C(v5, &qword_1EBD5D268, &qword_1BE111F38);
  v10 = sub_1BE04EC54();
  v11 = sub_1BE0501F4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D2B8, &qword_1BE111F68);
  v13 = a1 + *(result + 36);
  *v13 = v10;
  *(v13 + 8) = v11;
  return result;
}

uint64_t sub_1BDA6BCD4@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F7B4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D2D0, &qword_1BE111F88);
  return sub_1BDA6BD28(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_1BDA6BD28@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D2D8, &qword_1BE111F90);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D2E0, &qword_1BE111F98);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D2E8, &qword_1BE111FA0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22[-v14];
  sub_1BDA6C148(v25);
  v16 = *a1;
  v17 = [*a1 activationCode];
  if (v17)
  {

    sub_1BDA6C358(v9);
    sub_1BD0DE19C(v9, v6, &qword_1EBD5D2E0, &qword_1BE111F98);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D308, &qword_1BE111FC0);
    sub_1BDA6E7B0();
    sub_1BDA6EBEC();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v9, &qword_1EBD5D2E0, &qword_1BE111F98);
  }

  else
  {
    if (![v16 containsKeyFob])
    {
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D2F0, &qword_1BE111FA8);
      (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
      goto LABEL_6;
    }

    sub_1BDA6CD5C(v22);
    memcpy(v6, v22, 0x1A0uLL);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D308, &qword_1BE111FC0);
    sub_1BDA6E7B0();
    sub_1BDA6EBEC();
    sub_1BE04F9A4();
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D2F0, &qword_1BE111FA8);
  (*(*(v18 - 8) + 56))(v15, 0, 1, v18);
LABEL_6:
  memcpy(v23, v25, sizeof(v23));
  sub_1BD0DE19C(v15, v12, &qword_1EBD5D2E8, &qword_1BE111FA0);
  memcpy(v24, v23, 0x101uLL);
  memcpy(a2, v23, 0x101uLL);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D2F8, &qword_1BE111FB0);
  sub_1BD0DE19C(v12, a2 + *(v19 + 48), &qword_1EBD5D2E8, &qword_1BE111FA0);
  sub_1BD0DE19C(v24, v22, &qword_1EBD5D300, &qword_1BE111FB8);
  sub_1BD0DE53C(v15, &qword_1EBD5D2E8, &qword_1BE111FA0);
  sub_1BD0DE53C(v12, &qword_1EBD5D2E8, &qword_1BE111FA0);
  memcpy(v22, v23, 0x101uLL);
  return sub_1BD0DE53C(v22, &qword_1EBD5D300, &qword_1BE111FB8);
}

void sub_1BDA6C148(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_1BDA6ED68(*v1);
  v6 = v5;
  v7 = sub_1BDA6EF2C(v3);
  v9 = v8;
  v10 = sub_1BE0501E4();
  if (qword_1EBD36D70 != -1)
  {
    swift_once();
  }

  sub_1BE04E1F4();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  LOBYTE(v27) = 0;
  v19 = sub_1BE0501E4();
  v20 = sub_1BE04EC54();
  sub_1BE051CE4();
  sub_1BE04EE54();
  *&v26[55] = v30;
  *&v26[71] = v31;
  *&v26[87] = v32;
  *&v26[103] = v33;
  *&v26[7] = v27;
  *&v26[23] = v28;
  *&v26[39] = v29;
  v21 = sub_1BE0501C4();
  if (qword_1EBD36D58 != -1)
  {
    swift_once();
  }

  sub_1BE04E1F4();
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v9;
  *(a1 + 32) = 0;
  *(a1 + 40) = v10;
  *(a1 + 48) = v12;
  *(a1 + 56) = v14;
  *(a1 + 64) = v16;
  *(a1 + 72) = v18;
  *(a1 + 80) = 0;
  *(a1 + 88) = v20;
  *(a1 + 96) = v19;
  *(a1 + 145) = *&v26[48];
  *(a1 + 129) = *&v26[32];
  *(a1 + 113) = *&v26[16];
  *(a1 + 97) = *v26;
  *(a1 + 208) = *(&v33 + 1);
  *(a1 + 193) = *&v26[96];
  *(a1 + 177) = *&v26[80];
  *(a1 + 161) = *&v26[64];
  *(a1 + 216) = v21;
  *(a1 + 224) = v22;
  *(a1 + 232) = v23;
  *(a1 + 240) = v24;
  *(a1 + 248) = v25;
  *(a1 + 256) = 0;
}

void *sub_1BDA6C358@<X0>(void *a1@<X8>)
{
  v142 = a1;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D390, &unk_1BE112010);
  MEMORY[0x1EEE9AC00](v141);
  v3 = &v126 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49130, &qword_1BE0C7180);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v126 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D350, &qword_1BE111FE8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v126 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D340, &qword_1BE111FE0);
  MEMORY[0x1EEE9AC00](v10);
  v138 = &v126 - v11;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D330, &qword_1BE111FD8);
  MEMORY[0x1EEE9AC00](v137);
  v139 = &v126 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D318, &unk_1BE111FC8);
  MEMORY[0x1EEE9AC00](v13);
  v140 = &v126 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D398, &unk_1BE112020);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v126 - v18;
  v20 = [*v1 activationCode];
  if (v20)
  {
    v21 = v20;
    v22 = sub_1BE052434();
    v128 = v7;
    v23 = v22;
    v132 = v22;
    v129 = v10;
    v25 = v24;
    v131 = v24;

    *&v145 = v23;
    *(&v145 + 1) = v25;
    sub_1BD0DDEBC();
    sub_1BE048C84();
    v26 = sub_1BE0506C4();
    v133 = v19;
    v27 = v26;
    v135 = v3;
    v29 = v28;
    LOBYTE(v21) = v30;
    v136 = v15;
    v32 = v31;
    sub_1BE050364();
    v130 = v13;
    v33 = *MEMORY[0x1E6980E08];
    v34 = sub_1BE050354();
    v134 = v16;
    v35 = v34;
    v36 = *(v34 - 8);
    (*(v36 + 104))(v6, v33, v34);
    (*(v36 + 56))(v6, 0, 1, v35);
    v37 = sub_1BE0503B4();
    sub_1BD0DE53C(v6, &qword_1EBD49130, &qword_1BE0C7180);
    v127 = sub_1BE0505F4();
    v39 = v38;
    LOBYTE(v35) = v40;
    v42 = v41;
    v37, v38, v40, v41, v43, v44, v45, v46;
    sub_1BD0DDF10(v27, v29, (v21 & 1), v47, v48, v49, v50, v51);
    v32, v52, v53, v54, v55, v56, v57, v58;
    sub_1BE051CD4();
    sub_1BE04EE54();
    LOBYTE(v37) = v35 & 1;
    v152 = v35 & 1;
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v59 = [objc_opt_self() secondarySystemBackgroundColor];
    v60 = sub_1BE0511C4();
    v61 = sub_1BE0501D4();
    LOBYTE(v29) = v61;
    v62 = PKOBKListInlineCellCornerRadius(v61);
    v63 = &v9[*(v128 + 36)];
    v64 = *(sub_1BE04EDE4() + 20);
    v65 = *MEMORY[0x1E697F468];
    v66 = sub_1BE04F684();
    (*(*(v66 - 8) + 104))(v63 + v64, v65, v66);
    *v63 = v62;
    v63[1] = v62;
    *(v63 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50, &unk_1BE0B7D20) + 36)) = 256;
    *v9 = v127;
    *(v9 + 1) = v39;
    v9[16] = v37;
    *(v9 + 3) = v42;
    v67 = v150;
    *(v9 + 6) = v149;
    *(v9 + 7) = v67;
    v68 = v151;
    v69 = v146;
    *(v9 + 2) = v145;
    *(v9 + 3) = v69;
    v70 = v148;
    *(v9 + 4) = v147;
    *(v9 + 5) = v70;
    v71 = v144[0];
    v72 = v144[1];
    *(v9 + 8) = v68;
    *(v9 + 9) = v71;
    v73 = v144[2];
    *(v9 + 10) = v72;
    *(v9 + 11) = v73;
    *(v9 + 24) = v60;
    v9[200] = v29;
    LOBYTE(v60) = sub_1BE0501E4();
    sub_1BE04E1F4();
    v75 = v74;
    v77 = v76;
    v79 = v78;
    v81 = v80;
    v82 = v138;
    sub_1BD0DE204(v9, v138, &qword_1EBD5D350, &qword_1BE111FE8);
    v83 = v82 + *(v129 + 36);
    *v83 = v60;
    *(v83 + 8) = v75;
    *(v83 + 16) = v77;
    *(v83 + 24) = v79;
    *(v83 + 32) = v81;
    *(v83 + 40) = 0;
    v84 = sub_1BE0501F4();
    sub_1BE04E1F4();
    v86 = v85;
    v88 = v87;
    v90 = v89;
    v92 = v91;
    v93 = v139;
    sub_1BD0DE204(v82, v139, &qword_1EBD5D340, &qword_1BE111FE0);
    v94 = v93 + *(v137 + 36);
    *v94 = v84;
    *(v94 + 8) = v86;
    *(v94 + 16) = v88;
    *(v94 + 24) = v90;
    *(v94 + 32) = v92;
    *(v94 + 40) = 0;
    v95 = sub_1BE0501C4();
    PKSetupViewConstantsViewMargin();
    sub_1BE04E1F4();
    v97 = v96;
    v99 = v98;
    v101 = v100;
    v103 = v102;
    v104 = v140;
    v105 = sub_1BD0DE204(v93, v140, &qword_1EBD5D330, &qword_1BE111FD8);
    v106 = v130;
    v107 = v104 + *(v130 + 36);
    *v107 = v95;
    *(v107 + 8) = v97;
    *(v107 + 16) = v99;
    *(v107 + 24) = v101;
    *(v107 + 32) = v103;
    *(v107 + 40) = 0;
    MEMORY[0x1EEE9AC00](v105);
    v108 = v131;
    v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD441C8, &qword_1BE0D73A0);
    v110 = sub_1BDA6E8D8();
    v111 = sub_1BD0DE4F4(&qword_1EBD441C0, &qword_1EBD441C8, &qword_1BE0D73A0, MEMORY[0x1E697D680]);
    v112 = v133;
    sub_1BE0508B4();
    v108, v113, v114, v115, v116, v117, v118, v119;
    sub_1BD0DE53C(v104, &qword_1EBD5D318, &unk_1BE111FC8);
    v120 = v134;
    v121 = v136;
    (*(v134 + 16))(v135, v112, v136);
    swift_storeEnumTagMultiPayload();
    v143[0] = v106;
    v143[1] = v109;
    v143[2] = v110;
    v143[3] = v111;
    swift_getOpaqueTypeConformance2();
    sub_1BE04F9A4();
    return (*(v120 + 8))(v112, v121);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    v123 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD441C8, &qword_1BE0D73A0);
    v124 = sub_1BDA6E8D8();
    v125 = sub_1BD0DE4F4(&qword_1EBD441C0, &qword_1EBD441C8, &qword_1BE0D73A0, MEMORY[0x1E697D680]);
    *&v145 = v13;
    *(&v145 + 1) = v123;
    *&v146 = v124;
    *(&v146 + 1) = v125;
    swift_getOpaqueTypeConformance2();
    return sub_1BE04F9A4();
  }
}

__n128 sub_1BDA6CD5C@<Q0>(uint64_t a2@<X8>)
{
  v3 = sub_1BE04F7B4();
  v41 = 0;
  sub_1BDA6DFB0(&v25);
  v54 = v37;
  v55 = v38;
  v50 = v33;
  v51 = v34;
  v52 = v35;
  v53 = v36;
  v46 = v29;
  v47 = v30;
  v48 = v31;
  v49 = v32;
  v42 = v25;
  v43 = v26;
  v44 = v27;
  v45 = v28;
  v57[12] = v37;
  v57[13] = v38;
  v57[8] = v33;
  v57[9] = v34;
  v57[11] = v36;
  v57[10] = v35;
  v57[4] = v29;
  v57[5] = v30;
  v57[7] = v32;
  v57[6] = v31;
  v57[0] = v25;
  v57[1] = v26;
  v56 = v39;
  v58 = v39;
  v57[3] = v28;
  v57[2] = v27;
  sub_1BD0DE19C(&v42, v24, &qword_1EBD5D3A0, &unk_1BE112030);
  sub_1BD0DE53C(v57, &qword_1EBD5D3A0, &unk_1BE112030);
  *&v40[183] = v53;
  *&v40[199] = v54;
  *&v40[215] = v55;
  *&v40[119] = v49;
  *&v40[135] = v50;
  *&v40[151] = v51;
  *&v40[167] = v52;
  *&v40[55] = v45;
  *&v40[71] = v46;
  *&v40[87] = v47;
  *&v40[103] = v48;
  *&v40[7] = v42;
  *&v40[23] = v43;
  v40[231] = v56;
  *&v40[39] = v44;
  v4 = v41;
  v5 = sub_1BE0501C4();
  PKSetupViewConstantsViewMargin();
  sub_1BE04E1F4();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v24[0] = 0;
  sub_1BE051CD4();
  sub_1BE04EE54();
  v14 = *&v40[160];
  *(a2 + 193) = *&v40[176];
  v15 = *&v40[208];
  *(a2 + 209) = *&v40[192];
  *(a2 + 225) = v15;
  v16 = *&v40[96];
  *(a2 + 129) = *&v40[112];
  v17 = *&v40[144];
  *(a2 + 145) = *&v40[128];
  *(a2 + 161) = v17;
  *(a2 + 177) = v14;
  v18 = *&v40[32];
  *(a2 + 65) = *&v40[48];
  v19 = *&v40[80];
  *(a2 + 81) = *&v40[64];
  *(a2 + 97) = v19;
  *(a2 + 113) = v16;
  v20 = *&v40[16];
  *(a2 + 17) = *v40;
  *(a2 + 33) = v20;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v4;
  *(a2 + 241) = *&v40[224];
  *(a2 + 49) = v18;
  *(a2 + 256) = v5;
  *(a2 + 264) = v7;
  *(a2 + 272) = v9;
  *(a2 + 280) = v11;
  *(a2 + 288) = v13;
  *(a2 + 296) = 0;
  v21 = v30;
  *(a2 + 368) = v29;
  *(a2 + 384) = v21;
  *(a2 + 400) = v31;
  v22 = v26;
  *(a2 + 304) = v25;
  *(a2 + 320) = v22;
  result = v28;
  *(a2 + 336) = v27;
  *(a2 + 352) = result;
  return result;
}

id sub_1BDA6CFF8@<X0>(void *a1@<X8>)
{
  v110 = a1;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D2C0, &qword_1BE111F70);
  MEMORY[0x1EEE9AC00](v108);
  v109 = v89 - v2;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D2C8, &unk_1BE111F78);
  MEMORY[0x1EEE9AC00](v100);
  v4 = v89 - v3;
  v5 = sub_1BE04F714();
  v103 = *(v5 - 8);
  v104 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v102 = v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v89 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v97 = v89 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v89 - v17;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C160, &qword_1BE0BDF60);
  v105 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v20 = v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v95 = v89 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v98 = v89 - v24;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D2B0, &qword_1BE111F60);
  v25 = MEMORY[0x1EEE9AC00](v106);
  v99 = v89 - v26;
  v27 = *v1;
  v28 = [*v1 activationCode];
  if (v28)
  {
    v101 = v7;
    v96 = v4;

    v29 = *(v1 + 8);
    v30 = [v29 phoneNumber];
    v31 = *MEMORY[0x1E69B80F8];
    v32 = *(v8 + 104);
    if (!v30)
    {
      v77 = v101;
      v32(v13, v31, v101);
      result = PKPassKitBundle();
      if (result)
      {
        v78 = result;
        v79 = sub_1BE04B6F4();
        v81 = v80;

        (*(v8 + 8))(v13, v77);
        v83 = *(v1 + 32);
        v82 = *(v1 + 40);
        if (qword_1EBD36ED8 != -1)
        {
          swift_once();
        }

        v84 = qword_1EBDAB648;
        v85 = qword_1EBD36EE0;
        sub_1BE048964();
        v64 = v99;
        if (v85 != -1)
        {
          swift_once();
        }

        *&v111 = v79;
        *(&v111 + 1) = v81;
        *&v112 = v84;
        *(&v112 + 1) = qword_1EBDAB650;
        LOWORD(v113) = 0;
        *(&v113 + 1) = v83;
        *&v114[0] = v82;
        *(v114 + 8) = 0u;
        *(&v114[1] + 8) = 0u;
        *(&v114[2] + 8) = 0u;
        *(&v114[3] + 8) = 0u;
        *(&v114[4] + 8) = 0u;
        *(&v114[5] + 1) = 0;
        sub_1BE048964();
        sub_1BE048964();
        v86 = v102;
        sub_1BE04F704();
        v87 = sub_1BD1BC1B0();
        v61 = v95;
        sub_1BE050CB4();
        (*(v103 + 8))(v86, v104);
        v121 = v114[3];
        v122 = v114[4];
        v123 = v114[5];
        v117 = v113;
        v118 = v114[0];
        v119 = v114[1];
        v120 = v114[2];
        v115 = v111;
        v116 = v112;
        sub_1BD1BC4CC(&v115);
        v62 = v105;
        v63 = v107;
        (*(v105 + 16))(v96, v61, v107);
        swift_storeEnumTagMultiPayload();
        *&v111 = &type metadata for SetupFooterView;
        *(&v111 + 1) = v87;
        swift_getOpaqueTypeConformance2();
        sub_1BE04F9A4();
        goto LABEL_25;
      }

      goto LABEL_28;
    }

    v33 = v30;
    v93 = v29;
    v94 = v31;
    v34 = v101;
    v95 = v32;
    (v32)(v18);
    result = PKPassKitBundle();
    if (result)
    {
      v36 = result;
      v37 = sub_1BE04B6F4();
      v90 = v38;
      v91 = v37;

      v39 = *(v8 + 8);
      v40 = v18;
      v89[1] = v8 + 8;
      v41 = v39;
      v39(v40, v34);
      *&v92 = *(v1 + 32);
      v42 = *(v1 + 40);
      v43 = swift_allocObject();
      v44 = *(v1 + 16);
      *(v43 + 16) = *v1;
      *(v43 + 32) = v44;
      v45 = *(v1 + 48);
      *(v43 + 48) = *(v1 + 32);
      *(v43 + 64) = v45;
      *(v43 + 80) = v33;
      v46 = qword_1EBD36ED8;
      v47 = v27;
      v48 = v93;
      sub_1BE048964();
      *(&v92 + 1) = v42;
      sub_1BE048964();
      sub_1BE048964();
      v93 = v33;
      if (v46 != -1)
      {
        swift_once();
      }

      v49 = qword_1EBDAB648;
      v50 = qword_1EBD36EE0;
      sub_1BE048964();
      if (v50 != -1)
      {
        swift_once();
      }

      v51 = qword_1EBDAB650;
      v52 = v97;
      v53 = v101;
      (v95)(v97, v94, v101);
      sub_1BE048964();
      v54 = sub_1BE04B714();
      v56 = v55;
      v41(v52, v53);
      if (qword_1EBD36EE8 != -1)
      {
        swift_once();
      }

      v57 = qword_1EBDAB658;
      v58 = qword_1EBD36EF0;
      sub_1BE048964();
      if (v58 != -1)
      {
        swift_once();
      }

      *&v111 = v91;
      *(&v111 + 1) = v90;
      *&v112 = v49;
      *(&v112 + 1) = v51;
      LOWORD(v113) = 0;
      *(&v113 + 1) = sub_1BDA6E784;
      *&v114[0] = v43;
      *(&v114[0] + 1) = v54;
      *&v114[1] = v56;
      *(&v114[1] + 1) = v57;
      v114[2] = qword_1EBDAB660;
      v114[3] = v92;
      memset(&v114[4], 0, 32);
      sub_1BE048964();
      sub_1BE048964();
      v59 = v102;
      sub_1BE04F704();
      v60 = sub_1BD1BC1B0();
      v61 = v98;
      sub_1BE050CB4();
      (*(v103 + 8))(v59, v104);
      v121 = v114[3];
      v122 = v114[4];
      v123 = v114[5];
      v117 = v113;
      v118 = v114[0];
      v119 = v114[1];
      v120 = v114[2];
      v115 = v111;
      v116 = v112;
      sub_1BD1BC4CC(&v115);
      v62 = v105;
      v63 = v107;
      (*(v105 + 16))(v96, v61, v107);
      swift_storeEnumTagMultiPayload();
      *&v111 = &type metadata for SetupFooterView;
      *(&v111 + 1) = v60;
      swift_getOpaqueTypeConformance2();
      v64 = v99;
      sub_1BE04F9A4();

LABEL_25:
      (*(v62 + 8))(v61, v63);
      sub_1BD0DE19C(v64, v109, &qword_1EBD5D2B0, &qword_1BE111F60);
      swift_storeEnumTagMultiPayload();
      sub_1BDA6E6D4();
      v88 = sub_1BD1BC1B0();
      *&v115 = &type metadata for SetupFooterView;
      *(&v115 + 1) = v88;
      swift_getOpaqueTypeConformance2();
      sub_1BE04F9A4();
      return sub_1BD0DE53C(v64, &qword_1EBD5D2B0, &qword_1BE111F60);
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return result;
  }

  (*(v8 + 104))(v10, *MEMORY[0x1E69B80F8], v7);
  result = PKPassKitBundle();
  if (!result)
  {
    goto LABEL_27;
  }

  v65 = result;
  v66 = sub_1BE04B6F4();
  v68 = v67;

  (*(v8 + 8))(v10, v7);
  v70 = *(v1 + 16);
  v69 = *(v1 + 24);
  if (qword_1EBD36ED8 != -1)
  {
    swift_once();
  }

  v71 = qword_1EBDAB648;
  v72 = qword_1EBD36EE0;
  sub_1BE048964();
  if (v72 != -1)
  {
    swift_once();
  }

  *&v111 = v66;
  *(&v111 + 1) = v68;
  *&v112 = v71;
  *(&v112 + 1) = qword_1EBDAB650;
  LOWORD(v113) = 0;
  *(&v113 + 1) = v70;
  *&v114[0] = v69;
  *(v114 + 8) = 0u;
  *(&v114[1] + 8) = 0u;
  *(&v114[2] + 8) = 0u;
  *(&v114[3] + 8) = 0u;
  *(&v114[4] + 8) = 0u;
  *(&v114[5] + 1) = 0;
  sub_1BE048964();
  sub_1BE048964();
  v73 = v102;
  sub_1BE04F704();
  v74 = sub_1BD1BC1B0();
  sub_1BE050CB4();
  (*(v103 + 8))(v73, v104);
  v121 = v114[3];
  v122 = v114[4];
  v123 = v114[5];
  v117 = v113;
  v118 = v114[0];
  v119 = v114[1];
  v120 = v114[2];
  v115 = v111;
  v116 = v112;
  sub_1BD1BC4CC(&v115);
  v75 = v105;
  v76 = v107;
  (*(v105 + 16))(v109, v20, v107);
  swift_storeEnumTagMultiPayload();
  sub_1BDA6E6D4();
  *&v111 = &type metadata for SetupFooterView;
  *(&v111 + 1) = v74;
  swift_getOpaqueTypeConformance2();
  sub_1BE04F9A4();
  return (*(v75 + 8))(v20, v76);
}

uint64_t sub_1BDA6DCD4(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37358, &qword_1BE0D73D0);
  sub_1BD0DE4F4(&qword_1EBD4D3F0, &qword_1EBD37358, &qword_1BE0D73D0, MEMORY[0x1E697D658]);

  return sub_1BE051704();
}

void sub_1BDA6DDC4(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() generalPasteboard];
  v3 = sub_1BE052404();
  [v2 setString_];
}

uint64_t sub_1BDA6DE58()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E69B80F8], v0, v2);
  v5 = sub_1BE04B714();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  v9[0] = v5;
  v9[1] = v7;
  sub_1BD0DDEBC();
  return sub_1BE051624();
}

__n128 sub_1BDA6DFB0@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE051584();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v47[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE052404();
  v7 = [objc_opt_self() bundleWithIdentifier_];

  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = v7;
  v9 = sub_1BE052404();
  v10 = [objc_opt_self() imageNamed:v9 inBundle:v8 compatibleWithTraitCollection:0];

  if (!v10)
  {

LABEL_5:
    sub_1BDA6ED40(&v65);
    goto LABEL_6;
  }

  v11 = v10;
  v12 = sub_1BE051544();
  (*(v3 + 104))(v5, *MEMORY[0x1E6981630], v2);
  v13 = sub_1BE0515E4();
  v12, v14, v15, v16, v17, v18, v19, v20;
  (*(v3 + 8))(v5, v2);
  sub_1BE051CD4();
  sub_1BE04EE54();
  *&v54[54] = v61;
  *&v54[70] = v62;
  *&v54[86] = v63;
  *&v54[102] = v64;
  *&v54[6] = v58;
  *&v54[22] = v59;
  v55 = 1;
  *&v54[38] = v60;
  v21 = sub_1BE0501E4();
  sub_1BE04E1F4();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v56 = 0;
  v30 = sub_1BE0501F4();
  sub_1BE04E1F4();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;

  *(&v47[4] + 2) = *&v54[64];
  *(&v47[5] + 2) = *&v54[80];
  *(&v47[6] + 2) = *&v54[96];
  *(v47 + 2) = *v54;
  *(&v47[1] + 2) = *&v54[16];
  *(&v47[2] + 2) = *&v54[32];
  v57 = 0;
  v46 = v13;
  LOWORD(v47[0]) = 1;
  *&v47[7] = *&v54[110];
  *(&v47[3] + 2) = *&v54[48];
  BYTE8(v47[7]) = v21;
  *&v48 = v23;
  *(&v48 + 1) = v25;
  *&v49 = v27;
  *(&v49 + 1) = v29;
  LOBYTE(v50) = 0;
  BYTE8(v50) = v30;
  *&v51 = v32;
  *(&v51 + 1) = v34;
  *&v52 = v36;
  *(&v52 + 1) = v38;
  v53 = 0;
  PKEdgeInsetsMake();
  v77 = v51;
  v78 = v52;
  v79 = v53;
  v73 = v47[7];
  v74 = v48;
  v75 = v49;
  v76 = v50;
  v69 = v47[3];
  v70 = v47[4];
  v71 = v47[5];
  v72 = v47[6];
  v65 = v46;
  v66 = v47[0];
  v67 = v47[1];
  v68 = v47[2];
LABEL_6:
  v39 = v78;
  *(a1 + 192) = v77;
  *(a1 + 208) = v39;
  *(a1 + 224) = v79;
  v40 = v74;
  *(a1 + 128) = v73;
  *(a1 + 144) = v40;
  v41 = v76;
  *(a1 + 160) = v75;
  *(a1 + 176) = v41;
  v42 = v70;
  *(a1 + 64) = v69;
  *(a1 + 80) = v42;
  v43 = v72;
  *(a1 + 96) = v71;
  *(a1 + 112) = v43;
  v44 = v66;
  *a1 = v65;
  *(a1 + 16) = v44;
  result = v68;
  *(a1 + 32) = v67;
  *(a1 + 48) = result;
  return result;
}

id sub_1BDA6E3D0(void *a1, void *a2, uint64_t a3)
{
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC9PassKitUI43PKPassShareActivationOverviewViewController_hostingController] = 0;
  *&v3[OBJC_IVAR____TtC9PassKitUI43PKPassShareActivationOverviewViewController_activationOptions] = a1;
  *&v3[OBJC_IVAR____TtC9PassKitUI43PKPassShareActivationOverviewViewController_recipient] = a2;
  swift_unknownObjectWeakAssign();
  v9.receiver = v3;
  v9.super_class = type metadata accessor for PKPassShareActivationOverviewViewController();
  v6 = a1;
  v7 = a2;
  return objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, 0, 0);
}

unint64_t sub_1BDA6E538()
{
  result = qword_1EBD5D288;
  if (!qword_1EBD5D288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D268, &qword_1BE111F38);
    sub_1BD0DE4F4(&qword_1EBD5D290, &qword_1EBD5D298, &unk_1BE111F50, MEMORY[0x1E697BE60]);
    sub_1BD0DE4F4(&qword_1EBD36710, &qword_1EBD491B0, &unk_1BE0B7C80, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D288);
  }

  return result;
}

unint64_t sub_1BDA6E61C()
{
  result = qword_1EBD5D2A0;
  if (!qword_1EBD5D2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D280, &qword_1BE111F48);
    sub_1BDA6E6D4();
    sub_1BD1BC1B0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D2A0);
  }

  return result;
}

unint64_t sub_1BDA6E6D4()
{
  result = qword_1EBD5D2A8;
  if (!qword_1EBD5D2A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D2B0, &qword_1BE111F60);
    sub_1BD1BC1B0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D2A8);
  }

  return result;
}

unint64_t sub_1BDA6E7B0()
{
  result = qword_1EBD5D310;
  if (!qword_1EBD5D310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D2E0, &qword_1BE111F98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D318, &unk_1BE111FC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD441C8, &qword_1BE0D73A0);
    sub_1BDA6E8D8();
    sub_1BD0DE4F4(&qword_1EBD441C0, &qword_1EBD441C8, &qword_1BE0D73A0, MEMORY[0x1E697D680]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D310);
  }

  return result;
}

unint64_t sub_1BDA6E8D8()
{
  result = qword_1EBD5D320;
  if (!qword_1EBD5D320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D318, &unk_1BE111FC8);
    sub_1BDA6E964();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D320);
  }

  return result;
}

unint64_t sub_1BDA6E964()
{
  result = qword_1EBD5D328;
  if (!qword_1EBD5D328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D330, &qword_1BE111FD8);
    sub_1BDA6E9F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D328);
  }

  return result;
}

unint64_t sub_1BDA6E9F0()
{
  result = qword_1EBD5D338;
  if (!qword_1EBD5D338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D340, &qword_1BE111FE0);
    sub_1BDA6EA7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D338);
  }

  return result;
}

unint64_t sub_1BDA6EA7C()
{
  result = qword_1EBD5D348;
  if (!qword_1EBD5D348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D350, &qword_1BE111FE8);
    sub_1BDA6EB34();
    sub_1BD0DE4F4(&qword_1EBD3B468, &qword_1EBD3FC50, &unk_1BE0B7D20, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D348);
  }

  return result;
}

unint64_t sub_1BDA6EB34()
{
  result = qword_1EBD5D358;
  if (!qword_1EBD5D358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D360, &unk_1BE111FF0);
    sub_1BD222E24();
    sub_1BD0DE4F4(&qword_1EBD36710, &qword_1EBD491B0, &unk_1BE0B7C80, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D358);
  }

  return result;
}

unint64_t sub_1BDA6EBEC()
{
  result = qword_1EBD5D368;
  if (!qword_1EBD5D368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D308, &qword_1BE111FC0);
    sub_1BDA6EC78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D368);
  }

  return result;
}

unint64_t sub_1BDA6EC78()
{
  result = qword_1EBD5D370;
  if (!qword_1EBD5D370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D378, &qword_1BE112000);
    sub_1BD0DE4F4(&qword_1EBD5D380, &qword_1EBD5D388, &qword_1BE112008, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D370);
  }

  return result;
}

double sub_1BDA6ED40(uint64_t a1)
{
  *(a1 + 224) = 0;
  result = 0.0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1BDA6ED68(void *a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 primaryOption];
  v8 = [v7 localizationKeyPostfixForInitiation];

  v9 = sub_1BE052434();
  v11 = v10;

  v36 = 0;
  v37 = 0xE000000000000000;
  sub_1BE053834();
  v37, v12, v13, v14, v15, v16, v17, v18;
  v36 = 0xD000000000000020;
  v37 = 0x80000001BE1226F0;
  MEMORY[0x1BFB3F610](v9, v11);
  v11, v19, v20, v21, v22, v23, v24, v25;
  v26 = v37;
  (*(v3 + 104))(v6, *MEMORY[0x1E69B80F8], v2);
  v27 = sub_1BE04B714();
  v26, v28, v29, v30, v31, v32, v33, v34;
  (*(v3 + 8))(v6, v2);
  return v27;
}

uint64_t sub_1BDA6EF2C(void *a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 localizationKeyPostfixForInitiation];
  v8 = sub_1BE052434();
  v10 = v9;

  v35 = 0;
  v36 = 0xE000000000000000;
  sub_1BE053834();
  v36, v11, v12, v13, v14, v15, v16, v17;
  v35 = 0xD000000000000021;
  v36 = 0x80000001BE149340;
  MEMORY[0x1BFB3F610](v8, v10);
  v10, v18, v19, v20, v21, v22, v23, v24;
  v25 = v36;
  (*(v3 + 104))(v6, *MEMORY[0x1E69B80F8], v2);
  v26 = sub_1BE04B714();
  v25, v27, v28, v29, v30, v31, v32, v33;
  (*(v3 + 8))(v6, v2);
  return v26;
}

unint64_t sub_1BDA6F0C8()
{
  result = qword_1EBD5D3A8;
  if (!qword_1EBD5D3A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D2B8, &qword_1BE111F68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D268, &qword_1BE111F38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D280, &qword_1BE111F48);
    sub_1BDA6E538();
    sub_1BDA6E61C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D3A8);
  }

  return result;
}

void sub_1BDA6F1BC(void (*a1)(void, void))
{
  KeyPath = swift_getKeyPath();
  sub_1BDA7082C();
  sub_1BE04B594();
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v11 = *(v1 + OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__onSubmission);
  if (v11)
  {
    v12 = *(v1 + OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__onSubmission + 8);
    v13 = sub_1BE048964();
    v11(v13);
    sub_1BD0D4744(v11, v12, v14, v15, v16, v17, v18, v19);
  }

  if (a1)
  {
    a1(0, 0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BDA6F340()
{
  KeyPath = swift_getKeyPath();
  sub_1BDA7082C();
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v9 = *(v0 + OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__onSubmission);
  sub_1BD0D44B8(v9, *(v0 + OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__onSubmission + 8));
  return v9;
}

void sub_1BDA6F3D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__onSubmission);
  v4 = *(a1 + OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__onSubmission);
  v5 = *(a1 + OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__onSubmission + 8);
  *v3 = a2;
  v3[1] = a3;
  sub_1BD0D44B8(a2, a3);
  sub_1BD0D4744(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1BDA6F428()
{
  KeyPath = swift_getKeyPath();
  sub_1BDA7082C();
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  return *(v0 + OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__isLoading);
}

void sub_1BDA6F4A0(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BDA7082C();
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  *a2 = *(v3 + OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__isLoading);
}

void sub_1BDA6F548(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__isLoading) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__isLoading) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BDA7082C();
    sub_1BE04B584();
    KeyPath, v3, v4, v5, v6, v7, v8, v9;
  }
}

uint64_t sub_1BDA6F630@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v13 = v1;
  sub_1BDA7082C();
  sub_1BE04B594();
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v11 = OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__error;
  swift_beginAccess();
  return sub_1BD23C2BC(v13 + v11, a1);
}

uint64_t sub_1BDA6F6C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BDA7082C();
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__error;
  swift_beginAccess();
  return sub_1BD23C2BC(v3 + v12, a2);
}

uint64_t sub_1BDA6F760(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1BD23C2BC(a1, &v6 - v3);
  return sub_1BDA6F7F4(v4);
}

uint64_t sub_1BDA6F7F4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v17 - v4;
  v6 = OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__error;
  swift_beginAccess();
  sub_1BD23C2BC(v1 + v6, v5);
  v7 = sub_1BDA708EC(v5, a1);
  sub_1BD0DE53C(v5, &qword_1EBD416C0, &unk_1BE0BC2A0);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v17[-2] = v1;
    v17[-1] = a1;
    v17[2] = v1;
    sub_1BDA7082C();
    sub_1BE04B584();
    KeyPath, v9, v10, v11, v12, v13, v14, v15;
  }

  else
  {
    sub_1BD23C2BC(a1, v5);
    swift_beginAccess();
    sub_1BDA70B64(v5, v1 + v6);
    swift_endAccess();
  }

  return sub_1BD0DE53C(a1, &qword_1EBD416C0, &unk_1BE0BC2A0);
}

uint64_t sub_1BDA6F9B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1BD23C2BC(a2, &v9 - v5);
  v7 = OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__error;
  swift_beginAccess();
  sub_1BDA70B64(v6, a1 + v7);
  return swift_endAccess();
}

id sub_1BDA6FA78()
{
  KeyPath = swift_getKeyPath();
  sub_1BDA7082C();
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v9 = *(v0 + OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__account);

  return v9;
}

id sub_1BDA6FB00@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BDA7082C();
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = *(v3 + OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__account);
  *a2 = v12;

  return v12;
}

void sub_1BDA6FB90(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__account;
  v5 = *(v1 + OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__account);
  sub_1BD957184();
  v6 = v5;
  v7 = sub_1BE053074();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BDA7082C();
    sub_1BE04B584();
    KeyPath, v10, v11, v12, v13, v14, v15, v16;
  }
}

void sub_1BDA6FCC4(void *a1)
{
  v2 = v1;
  v4 = sub_1BE04AA64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  aBlock[0] = v1;
  sub_1BDA7082C();
  sub_1BE04B594();
  KeyPath, v9, v10, v11, v12, v13, v14, v15;
  v16 = OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__isLoading;
  if ((v1[OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__isLoading] & 1) == 0)
  {
    v77 = v5;
    v17 = [objc_opt_self() sharedService];
    v18 = [objc_allocWithZone(MEMORY[0x1E69B8D48]) initWithWebService_];

    v19 = [objc_allocWithZone(PKApplyControllerConfiguration) initWithSetupDelegate:0 context:0 provisioningController:v18];
    if (v19)
    {
      v20 = v19;
      v78 = v18;
      [v19 setFeature_];
      [v20 setApplicationType_];
      [v20 setUpdateUserInfoSubType_];
      v21 = swift_getKeyPath();
      aBlock[0] = v2;
      sub_1BE04B594();
      v21, v22, v23, v24, v25, v26, v27, v28;
      v29 = OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__account;
      [v20 setAccount_];
      v30 = [objc_allocWithZone(PKApplyController) initWithApplyConfiguration_];
      if (v30)
      {
        v76 = a1;
        v74 = v30;
        [v30 setParentFlowController_];
        v31 = swift_getKeyPath();
        aBlock[0] = v2;
        sub_1BE04B594();
        v31, v32, v33, v34, v35, v36, v37, v38;
        v75 = v29;
        v39 = [*&v2[v29] applyServiceURL];
        if (v39)
        {
          v40 = v39;
          sub_1BE04A9F4();

          v41 = sub_1BE04A9C4();
          (*(v77 + 8))(v7, v4);
        }

        else
        {
          v41 = 0;
        }

        v42 = v76;
        v18 = v74;
        [v74 setApplyServiceURL_];

        v43 = objc_opt_self();
        v44 = swift_getKeyPath();
        aBlock[0] = v2;
        sub_1BE04B594();
        v44, v45, v46, v47, v48, v49, v50, v51;
        v52 = [v43 analyticsAccountTypeForAccount_];
        [v18 setAnalyticsExistingAccountType_];

        if (v2[v16] == 1)
        {
          v2[v16] = 1;
        }

        else
        {
          v53 = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](v53);
          *(&v74 - 2) = v2;
          *(&v74 - 8) = 1;
          aBlock[0] = v2;
          sub_1BE04B584();
          v53, v54, v55, v56, v57, v58, v59, v60;
        }

        v61 = v78;
        v62 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v63 = swift_allocObject();
        *(v63 + 16) = v62;
        *(v63 + 24) = v42;
        aBlock[4] = sub_1BDA7089C;
        v80 = v63;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1BD14E1D8;
        aBlock[3] = &block_descriptor_248;
        v64 = _Block_copy(aBlock);
        v65 = v80;
        v66 = v42;
        v65, v67, v68, v69, v70, v71, v72, v73;
        [v18 nextViewControllerWithCompletion_];
        _Block_release(v64);
      }

      else
      {
        v18 = v20;
        v20 = v78;
      }
    }
  }
}

void sub_1BDA701C4(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = aBlock - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (a1)
    {
      v12 = objc_allocWithZone(PKNavigationController);
      v13 = a1;
      v14 = [v12 initWithRootViewController_];
      [v14 setModalInPresentation_];
      v15 = swift_allocObject();
      *(v15 + 16) = v11;
      aBlock[4] = sub_1BDA708A4;
      v39 = v15;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD126964;
      aBlock[3] = &block_descriptor_40_6;
      v16 = _Block_copy(aBlock);
      v17 = v39;
      v18 = v11;
      v17, v19, v20, v21, v22, v23, v24, v25;
      [a4 presentViewController:v14 animated:1 completion:v16];

      _Block_release(v16);
    }

    else
    {
      v26 = a2;
      if (!a2)
      {
        v26 = PKAccountDisplayableError();
      }

      v27 = a2;
      v28 = v26;
      FeatureError.init(feature:error:)(5, v26, v9);
      sub_1BDA6F7F4(v9);
      v29 = OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__isLoading;
      if (*(v11 + OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__isLoading))
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        aBlock[-2] = v11;
        LOBYTE(aBlock[-1]) = 0;
        aBlock[0] = v11;
        sub_1BDA7082C();
        sub_1BE04B584();

        KeyPath, v31, v32, v33, v34, v35, v36, v37;
      }

      else
      {

        *(v11 + v29) = 0;
      }
    }
  }
}

void sub_1BDA70498(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__isLoading))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BDA7082C();
    sub_1BE04B584();
    KeyPath, v2, v3, v4, v5, v6, v7, v8;
  }

  else
  {
    *(a1 + OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__isLoading) = 0;
  }
}

id sub_1BDA705AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AddBeneficiaryModel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AddBeneficiaryModel(uint64_t a1)
{
  result = qword_1EBD5D3E0;
  if (!qword_1EBD5D3E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BDA706E8(uint64_t a1)
{
  sub_1BDA707D4(319);
  if (v1 <= 0x3F)
  {
    sub_1BE04B5D4();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1BDA707D4(uint64_t a1)
{
  if (!qword_1EBD5D3F0)
  {
    type metadata accessor for FeatureError(255);
    v1 = sub_1BE0534B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD5D3F0);
    }
  }
}

unint64_t sub_1BDA7082C()
{
  result = qword_1EBD3B1C8;
  if (!qword_1EBD3B1C8)
  {
    type metadata accessor for AddBeneficiaryModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B1C8);
  }

  return result;
}

void sub_1BDA708AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__account);
  *(v1 + OBJC_IVAR____TtC9PassKitUI19AddBeneficiaryModel__account) = v2;
  v4 = v2;
}

BOOL sub_1BDA708EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeatureError(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v20 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5D400, &qword_1BE0D2B80);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_1BD23C2BC(a1, &v20 - v12);
  sub_1BD23C2BC(a2, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1BD0DE53C(v13, &qword_1EBD416C0, &unk_1BE0BC2A0);
      return 0;
    }

    goto LABEL_6;
  }

  sub_1BD23C2BC(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1BD230994(v10);
LABEL_6:
    sub_1BD0DE53C(v13, &unk_1EBD5D400, &qword_1BE0D2B80);
    return 1;
  }

  sub_1BD230930(&v13[v15], v7);
  v18 = *v10;
  v19 = *v7;
  sub_1BD230994(v7);

  sub_1BD230994(v10);
  sub_1BD0DE53C(v13, &qword_1EBD416C0, &unk_1BE0BC2A0);
  return v18 != v19;
}

uint64_t sub_1BDA70B64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI27PaymentOfferOptionIconModelVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI32PaymentOfferSelectorMultipleIconV0H6LayoutO(uint64_t a1)
{
  if ((*(a1 + 120) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 120) & 3;
  }
}

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_1BDA70C78(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
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

uint64_t sub_1BDA70CC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy121_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1BDA70D68(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 121))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 120);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1BDA70DB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 121) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 121) = 0;
    }

    if (a2)
    {
      *(result + 120) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BDA70E14(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    LOBYTE(a2) = 3;
    *(result + 104) = 0u;
  }

  *(result + 120) = a2;
  return result;
}

uint64_t sub_1BDA70E5C(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1BE053B84() & 1) == 0)
  {
    return 0;
  }

  v7 = v2 == v4 && v3 == v5;
  if (!v7 && (sub_1BE053B84() & 1) == 0)
  {
    return 0;
  }

  return sub_1BE051394();
}

uint64_t sub_1BDA70F18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v61 = a2;
  v59 = a1;
  v64 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49130, &qword_1BE0C7180);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v63 = &v56 - v8;
  v60 = sub_1BE04EA24();
  v58 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v56 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D518, &qword_1BE112BB0);
  MEMORY[0x1EEE9AC00](v62);
  v11 = &v56 - v10;
  v12 = sub_1BE051DC4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D520, &qword_1BE112BB8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v56 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D528, &qword_1BE112BC0);
  MEMORY[0x1EEE9AC00](v19);
  v57 = &v56 - v20;
  if (a4)
  {
    sub_1BE048964();
    v21 = MEMORY[0x1E6981DF0];
  }

  else
  {
    v21 = MEMORY[0x1E6981DA0];
    a3 = sub_1BE0513F4();
  }

  v22 = sub_1BE051454();
  a3, v23, v24, v25, v26, v27, v28, v29;
  (*(v13 + 104))(v15, *v21, v12);
  (*(v13 + 32))(v18 + *(v16 + 36), v15, v12);
  *v18 = v22;
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v30 = v57;
  sub_1BD0DE204(v18, v57, &qword_1EBD5D520, &qword_1BE112BB8);
  v31 = (v30 + *(v19 + 36));
  v32 = v67;
  *v31 = v66;
  v31[1] = v32;
  v31[2] = v68;
  v33 = sub_1BE051CD4();
  v35 = v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D530, &qword_1BE112BC8);
  v37 = v64;
  v38 = v64 + *(v36 + 36);
  sub_1BE048C84();
  v39 = sub_1BE051574();
  v65 = v39;
  v40 = v56;
  sub_1BE04EA14();
  sub_1BE050A64();
  (*(v58 + 8))(v40, v60);
  v39, v41, v42, v43, v44, v45, v46, v47;
  v48 = sub_1BE050354();
  v49 = v63;
  (*(*(v48 - 8) + 56))(v63, 1, 1, v48);
  v50 = sub_1BE0503B4();
  sub_1BD0DE53C(v49, &qword_1EBD49130, &qword_1BE0C7180);
  KeyPath = swift_getKeyPath();
  v52 = &v11[*(v62 + 36)];
  *v52 = KeyPath;
  v52[1] = v50;
  sub_1BE050364();
  sub_1BDA74134();
  sub_1BE050854();
  sub_1BD0D1A1C(v11);
  v53 = sub_1BE051424();
  *(v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D540, &qword_1BE112C08) + 36)) = v53;
  v54 = (v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D548, &qword_1BE112C10) + 36));
  *v54 = v33;
  v54[1] = v35;
  return sub_1BD0DE204(v30, v37, &qword_1EBD5D528, &qword_1BE112BC0);
}

uint64_t sub_1BDA71488()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v0 + 8);
  v3 = *(v0 + 112);
  v95 = *(v0 + 96);
  v96 = v3;
  v97[0] = *(v0 + 128);
  *(v97 + 9) = *(v0 + 137);
  v4 = *(v0 + 48);
  v91 = *(v0 + 32);
  v92 = v4;
  v5 = *(v0 + 80);
  v93 = *(v0 + 64);
  v94 = v5;
  sub_1BDA71764(&v78);
  v6 = *(&v80 + 1);
  v7 = v81;
  __swift_project_boxed_opaque_existential_1(&v78, *(&v80 + 1));
  (*(v7 + 16))(&v70, v6, v7);
  v15 = v71;
  if (v71)
  {
    v16 = v70;
    v17 = v73;
    v83 = v72;
    v82[0] = v70;
    v82[1] = v71;
    sub_1BD1BCDE4(&v83);
    v84 = v17;
    sub_1BDA72E68(&v84);
    __swift_destroy_boxed_opaque_existential_0(&v78, v18, v19, v20, v21, v22, v23, v24);
    if (v2 == v16 && v1 == v15)
    {
      sub_1BD1BCDE4(v82);
      return 0;
    }

    v25 = sub_1BE053B84();
    sub_1BD1BCDE4(v82);
    if (v25)
    {
      return 0;
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(&v78, v8, v9, v10, v11, v12, v13, v14);
  }

  sub_1BDA71764(&v78);
  v26 = *(&v80 + 1);
  v27 = v81;
  __swift_project_boxed_opaque_existential_1(&v78, *(&v80 + 1));
  (*(v27 + 24))(&v74, v26, v27);
  v35 = v75;
  if (v75)
  {
    v36 = v74;
    v37 = v77;
    v86 = v76;
    v85[0] = v74;
    v85[1] = v75;
    sub_1BD1BCDE4(&v86);
    v87 = v37;
    sub_1BDA72E68(&v87);
    __swift_destroy_boxed_opaque_existential_0(&v78, v38, v39, v40, v41, v42, v43, v44);
    if (v2 == v36 && v1 == v35)
    {
      sub_1BD1BCDE4(v85);
      return 1;
    }

    v46 = sub_1BE053B84();
    sub_1BD1BCDE4(v85);
    if (v46)
    {
      return 1;
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(&v78, v28, v29, v30, v31, v32, v33, v34);
  }

  sub_1BDA71764(v67);
  v47 = v68;
  v48 = v69;
  __swift_project_boxed_opaque_existential_1(v67, v68);
  (*(v48 + 32))(&v78, v47, v48);
  v56 = v79;
  if (v79)
  {
    v57 = v78;
    v58 = v81;
    v89 = v80;
    v88[0] = v78;
    v88[1] = v79;
    sub_1BD1BCDE4(&v89);
    v90 = v58;
    sub_1BDA72E68(&v90);
    __swift_destroy_boxed_opaque_existential_0(v67, v59, v60, v61, v62, v63, v64, v65);
    if (v2 == v57 && v1 == v56)
    {
      sub_1BD1BCDE4(v88);
      return 2;
    }

    v66 = sub_1BE053B84();
    sub_1BD1BCDE4(v88);
    if (v66)
    {
      return 2;
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v67, v49, v50, v51, v52, v53, v54, v55);
  }

  return 0;
}

uint64_t sub_1BDA71764@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[5];
  v16[4] = v1[4];
  v16[5] = v3;
  v17[0] = v1[6];
  *(v17 + 9) = *(v1 + 105);
  v4 = v1[1];
  v16[0] = *v1;
  v16[1] = v4;
  v5 = v1[3];
  v16[2] = v1[2];
  v16[3] = v5;
  v6 = sub_1BDA72EBC(v16);
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      v14 = &type metadata for PaymentOfferSelectorMultipleIcon.EmptyLayout;
      v15 = sub_1BDA73008();
      v11 = swift_allocObject();
      *&v13 = v11;
      *(v11 + 16) = 0u;
      *(v11 + 32) = 0u;
      *(v11 + 48) = 0u;
      *(v11 + 64) = 0u;
      *(v11 + 80) = 0u;
      *(v11 + 96) = 0u;
      *(v11 + 112) = 0u;
      *(v11 + 128) = 0;
      goto LABEL_9;
    }

    PKEdgeInsetsMake();
    v8 = v9;
    v14 = &type metadata for PaymentOfferSelectorMultipleIcon.TripleIconLayout;
    v15 = sub_1BDA72ED4();
  }

  else if (v6)
  {
    PKEdgeInsetsMake();
    v8 = v10;
    v14 = &type metadata for PaymentOfferSelectorMultipleIcon.DoubleIconLayout;
    v15 = sub_1BDA72F60();
  }

  else
  {
    PKEdgeInsetsMake();
    v8 = v7;
    v14 = &type metadata for PaymentOfferSelectorMultipleIcon.SingleIconLayout;
    v15 = sub_1BDA72FB4();
  }

  *&v13 = swift_allocObject();
  memmove((v13 + 16), v8, 0x78uLL);
LABEL_9:
  sub_1BD043990(&v13, a1);
  return sub_1BDA72F28(v1, &v13);
}

uint64_t sub_1BDA718D8@<X0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v4 = sub_1BE051CD4();
  v42 = v5;
  v43 = v4;
  sub_1BDA71C70(v2, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v48, __src, sizeof(v48));
  sub_1BD0DE19C(__dst, v45, &qword_1EBD5D410, &qword_1BE112718);
  sub_1BD0DE53C(v48, &qword_1EBD5D410, &qword_1BE112718);
  memcpy(v50, __dst, sizeof(v50));
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v46 = v2[10];
  __src[0] = v2[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43BD0, &qword_1BE112720);
  sub_1BE0516A4();
  v6 = *v45 * 0.0174532925;
  v7 = sub_1BE051EA4();
  v9 = v8;
  v11 = v10;
  v12 = MEMORY[0x1BFB3EDF0](v7, 0.5, 1.0, 0.0);
  __src[0] = v46;
  v13 = sub_1BE0516A4();
  v14 = *v45;
  v15 = MEMORY[0x1BFB3EDF0](v13, 0.5, 1.0, 0.0);
  v16 = sub_1BDA71488();
  v17 = MEMORY[0x1BFB3EDF0](0.5, 1.0, 0.0);
  v18 = *(v3 + 24);
  v19 = MEMORY[0x1BFB3EDF0](0.5, 1.0, 0.0);
  v20 = *(v3 + 26);
  *v45 = v43;
  *&v45[8] = v42;
  memcpy(&v45[16], v50, 0x1B0uLL);
  *&v45[448] = v49[0];
  *&v45[464] = v49[1];
  *&v45[480] = v49[2];
  *&v45[496] = v6;
  *&v45[504] = v9;
  *&v45[512] = v11;
  *&v45[520] = v12;
  *&v45[528] = v14;
  *&v45[536] = v15;
  v45[544] = v16;
  *&v45[552] = v17;
  v45[560] = v18;
  *&v45[568] = v19;
  v45[576] = v20;
  v21 = swift_allocObject();
  v22 = *(v3 + 144);
  v21[9] = *(v3 + 128);
  v21[10] = v22;
  v21[11] = *(v3 + 160);
  v23 = *(v3 + 80);
  v21[5] = *(v3 + 64);
  v21[6] = v23;
  v24 = *(v3 + 112);
  v21[7] = *(v3 + 96);
  v21[8] = v24;
  v25 = *(v3 + 16);
  v21[1] = *v3;
  v21[2] = v25;
  v26 = *(v3 + 48);
  v21[3] = *(v3 + 32);
  v21[4] = v26;
  sub_1BD55A8E8(v3, __src);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D418, &qword_1BE112728);
  sub_1BDA729B8();
  sub_1BE051064();
  v21, v27, v28, v29, v30, v31, v32, v33;
  memcpy(__src, v45, 0x241uLL);
  sub_1BD0DE53C(__src, &qword_1EBD5D418, &qword_1BE112728);
  v34 = swift_allocObject();
  v35 = *(v3 + 144);
  *(v34 + 9) = *(v3 + 128);
  *(v34 + 10) = v35;
  *(v34 + 11) = *(v3 + 160);
  v36 = *(v3 + 80);
  *(v34 + 5) = *(v3 + 64);
  *(v34 + 6) = v36;
  v37 = *(v3 + 112);
  *(v34 + 7) = *(v3 + 96);
  *(v34 + 8) = v37;
  v38 = *(v3 + 16);
  *(v34 + 1) = *v3;
  *(v34 + 2) = v38;
  v39 = *(v3 + 48);
  *(v34 + 3) = *(v3 + 32);
  *(v34 + 4) = v39;
  v40 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D4A8, &qword_1BE112780) + 36));
  *v40 = sub_1BDA72E60;
  v40[1] = v34;
  v40[2] = 0;
  v40[3] = 0;
  return sub_1BD55A8E8(v3, v45);
}

uint64_t sub_1BDA71C70@<X0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v123 = a1[5];
  v122 = v5;
  v121 = v4;
  v120 = v3;
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  *(v126 + 9) = *(a1 + 137);
  v126[0] = v8;
  v125 = v7;
  v124 = v6;
  sub_1BDA71764(&v78);
  v9 = *(&v79 + 1);
  v10 = v80;
  __swift_project_boxed_opaque_existential_1(&v78, *(&v79 + 1));
  (*(v10 + 16))(v96, v9, v10);
  if (*(&v96[0] + 1))
  {
    v108 = v96[0];
    v109 = v96[1];
    v110 = v97;
    __swift_destroy_boxed_opaque_existential_0(&v78, v11, v12, v13, v14, v15, v16, v17);
    sub_1BDA72404(&v108, 0, &v127);
    v111 = v108;
    sub_1BD1BCDE4(&v111);
    v112 = v109;
    sub_1BD1BCDE4(&v112);
    v113 = v110;
    sub_1BDA72E68(&v113);
    v93 = v133;
    v94 = v134;
    v95 = v135;
    v89 = v129;
    v90 = v130;
    v92 = v132;
    v91 = v131;
    v88 = v128;
    v87 = v127;
    PKEdgeInsetsMake();
    v133 = v93;
    v134 = v94;
    v135 = v95;
    v129 = v89;
    v130 = v90;
    v131 = v91;
    v132 = v92;
    v127 = v87;
    v128 = v88;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(&v78, v11, v12, v13, v14, v15, v16, v17);
    sub_1BDA730E0(&v127);
  }

  sub_1BDA71764(&v69);
  v18 = *(&v70 + 1);
  v19 = v71;
  __swift_project_boxed_opaque_existential_1(&v69, *(&v70 + 1));
  (*(v19 + 24))(v98, v18, v19);
  if (*(&v98[0] + 1))
  {
    v105 = v98[0];
    v106 = v98[1];
    v107 = v99;
    __swift_destroy_boxed_opaque_existential_0(&v69, v20, v21, v22, v23, v24, v25, v26);
    sub_1BDA72404(&v105, 1, &v87);
    v114 = v105;
    sub_1BD1BCDE4(&v114);
    v115 = v106;
    sub_1BD1BCDE4(&v115);
    v116 = v107;
    sub_1BDA72E68(&v116);
    v84 = v93;
    v85 = v94;
    v86 = v95;
    v80 = v89;
    v81 = v90;
    v83 = v92;
    v82 = v91;
    v79 = v88;
    v78 = v87;
    PKEdgeInsetsMake();
    v93 = v84;
    v94 = v85;
    v95 = v86;
    v89 = v80;
    v90 = v81;
    v92 = v83;
    v91 = v82;
    v88 = v79;
    v87 = v78;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(&v69, v20, v21, v22, v23, v24, v25, v26);
    sub_1BDA730E0(&v87);
  }

  sub_1BDA71764(&v60);
  v27 = *(&v61 + 1);
  v28 = v62;
  __swift_project_boxed_opaque_existential_1(&v60, *(&v61 + 1));
  (*(v28 + 32))(v100, v27, v28);
  if (*(&v100[0] + 1))
  {
    v102 = v100[0];
    v103 = v100[1];
    v104 = v101;
    __swift_destroy_boxed_opaque_existential_0(&v60, v29, v30, v31, v32, v33, v34, v35);
    sub_1BDA72404(&v102, 2, &v78);
    v117 = v102;
    sub_1BD1BCDE4(&v117);
    v118 = v103;
    sub_1BD1BCDE4(&v118);
    v119 = v104;
    sub_1BDA72E68(&v119);
    v75 = v84;
    v76 = v85;
    v77 = v86;
    v71 = v80;
    v72 = v81;
    v74 = v83;
    v73 = v82;
    v70 = v79;
    v69 = v78;
    PKEdgeInsetsMake();
    v84 = v75;
    v85 = v76;
    v86 = v77;
    v80 = v71;
    v81 = v72;
    v83 = v74;
    v82 = v73;
    v79 = v70;
    v78 = v69;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(&v60, v29, v30, v31, v32, v33, v34, v35);
    sub_1BDA730E0(&v78);
  }

  v53 = v133;
  v54 = v134;
  v55 = v135;
  v49 = v129;
  v50 = v130;
  v51 = v131;
  v52 = v132;
  v47 = v127;
  v48 = v128;
  v44 = v93;
  v45 = v94;
  v46 = v95;
  v40 = v89;
  v41 = v90;
  v42 = v91;
  v43 = v92;
  v38 = v87;
  v39 = v88;
  v59[6] = v84;
  v59[7] = v85;
  v59[8] = v86;
  v59[2] = v80;
  v59[3] = v81;
  v59[5] = v83;
  v59[4] = v82;
  v59[1] = v79;
  v59[0] = v78;
  v56[6] = v133;
  v56[7] = v134;
  v56[8] = v135;
  v56[2] = v129;
  v56[3] = v130;
  v56[4] = v131;
  v56[5] = v132;
  v56[0] = v127;
  v56[1] = v128;
  v37[6] = v133;
  v37[7] = v134;
  v37[2] = v129;
  v37[3] = v130;
  v37[4] = v131;
  v37[5] = v132;
  v37[0] = v127;
  v37[1] = v128;
  v57[6] = v93;
  v57[7] = v94;
  v57[8] = v95;
  v57[2] = v89;
  v57[3] = v90;
  v57[4] = v91;
  v57[5] = v92;
  v57[0] = v87;
  v57[1] = v88;
  v37[14] = v92;
  v37[15] = v93;
  v37[16] = v94;
  v37[17] = v95;
  v37[10] = v88;
  v37[11] = v89;
  v37[12] = v90;
  v37[13] = v91;
  v37[8] = v135;
  v37[9] = v87;
  v58[6] = v84;
  v58[7] = v85;
  v58[8] = v86;
  v58[2] = v80;
  v58[3] = v81;
  v58[5] = v83;
  v58[4] = v82;
  v58[0] = v78;
  v58[1] = v79;
  v37[24] = v84;
  v37[25] = v85;
  v37[26] = v86;
  v37[20] = v80;
  v37[21] = v81;
  v37[22] = v82;
  v37[23] = v83;
  v37[18] = v78;
  v37[19] = v79;
  memcpy(a2, v37, 0x1B0uLL);
  sub_1BD0DE19C(v56, &v69, &qword_1EBD5D4D0, &qword_1BE112788);
  sub_1BD0DE19C(v57, &v69, &qword_1EBD5D4D0, &qword_1BE112788);
  sub_1BD0DE19C(v58, &v69, &qword_1EBD5D4D0, &qword_1BE112788);
  sub_1BD0DE53C(v59, &qword_1EBD5D4D0, &qword_1BE112788);
  v66 = v44;
  v67 = v45;
  v68 = v46;
  v62 = v40;
  v63 = v41;
  v65 = v43;
  v64 = v42;
  v61 = v39;
  v60 = v38;
  sub_1BD0DE53C(&v60, &qword_1EBD5D4D0, &qword_1BE112788);
  v75 = v53;
  v76 = v54;
  v77 = v55;
  v71 = v49;
  v72 = v50;
  v74 = v52;
  v73 = v51;
  v70 = v48;
  v69 = v47;
  return sub_1BD0DE53C(&v69, &qword_1EBD5D4D0, &qword_1BE112788);
}

__n128 sub_1BDA72404@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 112);
  v66 = *(v3 + 96);
  v67 = v7;
  v68[0] = *(v3 + 128);
  *(v68 + 9) = *(v3 + 137);
  v8 = *(v3 + 48);
  v62 = *(v3 + 32);
  v63 = v8;
  v9 = *(v3 + 80);
  v64 = *(v3 + 64);
  v65 = v9;
  sub_1BDA71764(&v51);
  v10 = v52.n128_u64[1];
  v11 = v53;
  __swift_project_boxed_opaque_existential_1(&v51, v52.n128_i64[1]);
  v12 = sub_1BDA71488();
  v13 = *(v3 + 24);
  (*(v11 + 40))(v60, a2, v12, *(v3 + 24), v10, v11);
  if (v61)
  {
    __swift_destroy_boxed_opaque_existential_0(&v51, v14, v15, v16, v17, v18, v19, v20);
    sub_1BD251114(&v69);
  }

  else
  {
    v50 = v60[1];
    v21 = *&v60[3];
    v48 = v60[0];
    v49 = v60[2];
    __swift_destroy_boxed_opaque_existential_0(&v51, v14, v15, v16, v17, v18, v19, v20);
    v22 = a1[3];
    v47 = a1[2];
    v23 = a1[4];
    sub_1BE048C84();
    sub_1BE048964();
    v24 = (sub_1BDA71488() == a2) & *(v3 + 25);
    v25 = *(v3 + 26);
    v69 = *(v3 + 160);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43BD0, &qword_1BE112720);
    sub_1BE0516A4();
    v46 = (-*&v51 - v21) * 0.0174532925;
    sub_1BE051EA4();
    v27 = v26;
    v29 = v28;
    sub_1BE051EA4();
    v31 = v30;
    v33 = v32;
    v34 = v21 * 0.0174532925;
    sub_1BE051EA4();
    v36 = v35;
    v38 = v37;
    v39 = 1.0;
    if (v13)
    {
      if (sub_1BDA71488() == a2)
      {
        v39 = 1.0;
      }

      else
      {
        v39 = -1.0;
      }
    }

    v40 = sub_1BDA71488();
    *&v51 = v47;
    *(&v51 + 1) = v22;
    v52.n128_u64[0] = v23;
    v41 = 100.0;
    if (v40 != a2)
    {
      v41 = 0.0;
    }

    v52.n128_u8[8] = v24;
    v52.n128_u8[9] = v25;
    *&v53 = v46;
    *(&v53 + 1) = v27;
    *&v54 = v29;
    *(&v54 + 1) = v48;
    *&v55 = v48;
    *(&v55 + 1) = v31;
    *&v56 = v33;
    *(&v56 + 1) = v50;
    *&v57 = v49;
    *(&v57 + 1) = v34;
    *&v58 = v36;
    *(&v58 + 1) = v38;
    *&v59 = v39;
    *(&v59 + 1) = v41;
    PKEdgeInsetsMake();
    v75 = v57;
    v76 = v58;
    v77 = v59;
    v71 = v53;
    v72 = v54;
    v73 = v55;
    v74 = v56;
    v69 = v51;
    v70 = v52;
  }

  v42 = v76;
  *(a3 + 96) = v75;
  *(a3 + 112) = v42;
  *(a3 + 128) = v77;
  v43 = v72;
  *(a3 + 32) = v71;
  *(a3 + 48) = v43;
  v44 = v74;
  *(a3 + 64) = v73;
  *(a3 + 80) = v44;
  result = v70;
  *a3 = v69;
  *(a3 + 16) = result;
  return result;
}

double sub_1BDA726C4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43BD0, &qword_1BE112720);
  sub_1BE0516B4();
  return result;
}

BOOL sub_1BDA72794(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v12[4] = a1[4];
  v12[5] = v2;
  v13[0] = a1[6];
  *(v13 + 9) = *(a1 + 105);
  v3 = a1[1];
  v12[0] = *a1;
  v12[1] = v3;
  v4 = a1[3];
  v12[2] = a1[2];
  v12[3] = v4;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  v14[2] = a2[2];
  v14[3] = v7;
  v14[0] = v5;
  v14[1] = v6;
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  *&v15[9] = *(a2 + 105);
  v14[5] = v9;
  *v15 = v10;
  v14[4] = v8;
  return sub_1BDA736F0(v12, v14);
}

void sub_1BDA72834(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15, unsigned __int8 a16)
{
  if (a16 <= 2u)
  {
    sub_1BDA728F4(a1, a2, a3, a4, a5, a6, a7, a8);
    sub_1BDA728F4(a6, a7, a8, a9, a10, v19, v20, v21);

    sub_1BDA728F4(a11, a12, a13, a14, a15, v22, v23, v24);
  }
}

void sub_1BDA728F4(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  if (a2)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    a4, v10, v11, v12, v13, v14, v15, v16;

    a5, v17, v18, v19, v20, v21, v22, v23;
  }
}

double sub_1BDA72944(uint64_t a1, _BYTE *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43BD0, &qword_1BE112720);
  sub_1BE0516B4();
  return result;
}

unint64_t sub_1BDA729B8()
{
  result = qword_1EBD5D420;
  if (!qword_1EBD5D420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D418, &qword_1BE112728);
    sub_1BDA72A70();
    sub_1BD0DE4F4(&qword_1EBD5D498, &qword_1EBD5D4A0, &qword_1BE112778, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D420);
  }

  return result;
}

unint64_t sub_1BDA72A70()
{
  result = qword_1EBD5D428;
  if (!qword_1EBD5D428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D430, &qword_1BE112730);
    sub_1BDA72B28();
    sub_1BD0DE4F4(&unk_1EBD36780, &unk_1EBD51F60, &qword_1BE0C3580, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D428);
  }

  return result;
}

unint64_t sub_1BDA72B28()
{
  result = qword_1EBD5D438;
  if (!qword_1EBD5D438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D440, &qword_1BE112738);
    sub_1BDA72BE0();
    sub_1BD0DE4F4(&qword_1EBD5D488, &qword_1EBD5D490, &unk_1BE112768, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D438);
  }

  return result;
}

unint64_t sub_1BDA72BE0()
{
  result = qword_1EBD5D448;
  if (!qword_1EBD5D448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D450, &qword_1BE112740);
    sub_1BDA72C98();
    sub_1BD0DE4F4(&unk_1EBD36770, &qword_1EBD41708, &qword_1BE112760, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D448);
  }

  return result;
}

unint64_t sub_1BDA72C98()
{
  result = qword_1EBD5D458;
  if (!qword_1EBD5D458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D460, &qword_1BE112748);
    sub_1BDA72D24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D458);
  }

  return result;
}

unint64_t sub_1BDA72D24()
{
  result = qword_1EBD5D468;
  if (!qword_1EBD5D468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D470, &qword_1BE112750);
    sub_1BD0DE4F4(&qword_1EBD5D478, &qword_1EBD5D480, &qword_1BE112758, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D468);
  }

  return result;
}

uint64_t objectdestroyTm_127(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 32), v9, v10, v11, v12, v13, v14, v15;
  sub_1BDA72834(*(v8 + 48), *(v8 + 56), *(v8 + 64), *(v8 + 72), *(v8 + 80), *(v8 + 88), *(v8 + 96), *(v8 + 104), *(v8 + 112), *(v8 + 120), *(v8 + 128), *(v8 + 136), *(v8 + 144), *(v8 + 152), *(v8 + 160), *(v8 + 168));
  *(v8 + 184), v16, v17, v18, v19, v20, v21, v22;

  return swift_deallocObject();
}

uint64_t sub_1BDA72EBC(uint64_t a1)
{
  if (*(a1 + 120) <= 2u)
  {
    return *(a1 + 120);
  }

  else
  {
    return (*a1 + 3);
  }
}

unint64_t sub_1BDA72ED4()
{
  result = qword_1EBD5D4B0;
  if (!qword_1EBD5D4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D4B0);
  }

  return result;
}

unint64_t sub_1BDA72F60()
{
  result = qword_1EBD5D4B8;
  if (!qword_1EBD5D4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D4B8);
  }

  return result;
}

unint64_t sub_1BDA72FB4()
{
  result = qword_1EBD5D4C0;
  if (!qword_1EBD5D4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D4C0);
  }

  return result;
}

unint64_t sub_1BDA73008()
{
  result = qword_1EBD5D4C8;
  if (!qword_1EBD5D4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D4C8);
  }

  return result;
}

uint64_t objectdestroy_11Tm_1(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 24);
  if (v9)
  {
    v9, a2, a3, a4, a5, a6, a7, a8;
    *(v8 + 40), v10, v11, v12, v13, v14, v15, v16;
    *(v8 + 48), v17, v18, v19, v20, v21, v22, v23;
  }

  v24 = *(v8 + 64);
  if (v24)
  {
    v24, a2, a3, a4, a5, a6, a7, a8;
    *(v8 + 80), v25, v26, v27, v28, v29, v30, v31;
    *(v8 + 88), v32, v33, v34, v35, v36, v37, v38;
  }

  v39 = *(v8 + 104);
  if (v39)
  {
    v39, a2, a3, a4, a5, a6, a7, a8;
    *(v8 + 120), v40, v41, v42, v43, v44, v45, v46;
    *(v8 + 128), v47, v48, v49, v50, v51, v52, v53;
  }

  return swift_deallocObject();
}

double sub_1BDA730E0(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_1BE0CB9B0;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  return result;
}

double sub_1BDA73104@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

void sub_1BDA73118(char a1@<W1>, uint64_t a2@<X8>)
{
  v2 = 0x3FF0000000000000;
  if (a1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = a1 != 0;
}

double sub_1BDA73138@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>, char a3@<W1>, char a4@<W2>)
{
  sub_1BDA73EA0(a2, a3, a4, v7);
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v8;
  return result;
}

double sub_1BDA7317C@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>, char a3@<W1>, char a4@<W2>)
{
  sub_1BDA73F90(a2, a3, a4, v7);
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v8;
  return result;
}

BOOL sub_1BDA731C0(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  v8 = a1[4];
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  v12 = a2[3];
  v13 = a2[4];
  if (v4)
  {
    if (!v10)
    {
      goto LABEL_28;
    }

    v167 = a1[4];
    v171 = a1[3];
    v14 = v5 == v9 && v4 == v10;
    if (v14 || (v15 = sub_1BE053B84(), v6 = v171, (v15 & 1) != 0))
    {
      v16 = v7 == v11 && v6 == v12;
      if (v16 || (sub_1BE053B84() & 1) != 0)
      {
        sub_1BDA73934(v9, v10, v11, v12);
        sub_1BDA73934(v5, v4, v7, v171);
        v166 = sub_1BE051394();
        v13, v17, v18, v19, v20, v21, v22, v23;
        v12, v24, v25, v26, v27, v28, v29, v30;
        v10, v31, v32, v33, v34, v35, v36, v37;
        sub_1BDA728F4(v5, v4, v7, v171, v167, v38, v39, v40);
        if ((v166 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_16;
      }

      sub_1BDA73934(v9, v10, v11, v12);
      v70 = v5;
      v71 = v4;
      v72 = v7;
      v69 = v171;
    }

    else
    {
      v69 = v171;
      sub_1BDA73934(v9, v10, v11, v12);
      v70 = v5;
      v71 = v4;
      v72 = v7;
    }

    v78 = v69;
    v79 = v167;
LABEL_43:
    sub_1BDA73934(v70, v71, v72, v78);
    v13, v115, v116, v117, v118, v119, v120, v121;
    v12, v122, v123, v124, v125, v126, v127, v128;
    v10, v129, v130, v131, v132, v133, v134, v135;
    v139 = v5;
    v140 = v4;
    v141 = v7;
    v142 = v69;
    v143 = v79;
LABEL_44:
    sub_1BDA728F4(v139, v140, v141, v142, v143, v136, v137, v138);
    return 0;
  }

  if (v10)
  {
    goto LABEL_28;
  }

LABEL_16:
  v5 = a1[5];
  v4 = a1[6];
  v7 = a1[7];
  v6 = a1[8];
  v8 = a1[9];
  v9 = a2[5];
  v10 = a2[6];
  v11 = a2[7];
  v12 = a2[8];
  v13 = a2[9];
  if (!v4)
  {
    if (!v10)
    {
      goto LABEL_32;
    }

LABEL_28:
    v173 = v5;
    v174 = v4;
    v175 = v7;
    v176 = v6;
    v177 = v8;
    v178 = v9;
    v179 = v10;
    v180 = v11;
    v181 = v12;
    v182 = v13;
    v73 = v6;
    sub_1BDA73934(v9, v10, v11, v12);
    v74 = v5;
    v75 = v4;
    v76 = v7;
    v77 = v73;
LABEL_29:
    sub_1BDA73934(v74, v75, v76, v77);
    sub_1BD0DE53C(&v173, &qword_1EBD5D4D8, &qword_1BE112790);
    return 0;
  }

  if (!v10)
  {
    goto LABEL_28;
  }

  v172 = a1[9];
  if ((v5 != v9 || v4 != v10) && (v168 = a1[8], v41 = sub_1BE053B84(), v6 = v168, (v41 & 1) == 0) || (v7 != v11 || v6 != v12) && (v169 = v6, v42 = sub_1BE053B84(), v6 = v169, (v42 & 1) == 0))
  {
    v69 = v6;
    sub_1BDA73934(v9, v10, v11, v12);
    v70 = v5;
    v71 = v4;
    v72 = v7;
    v78 = v69;
    v79 = v172;
    goto LABEL_43;
  }

  v43 = v11;
  v44 = v6;
  sub_1BDA73934(v9, v10, v43, v12);
  sub_1BDA73934(v5, v4, v7, v44);
  v170 = sub_1BE051394();
  v13, v45, v46, v47, v48, v49, v50, v51;
  v12, v52, v53, v54, v55, v56, v57, v58;
  v10, v59, v60, v61, v62, v63, v64, v65;
  sub_1BDA728F4(v5, v4, v7, v44, v172, v66, v67, v68);
  if ((v170 & 1) == 0)
  {
    return 0;
  }

LABEL_32:
  v81 = a1[10];
  v80 = a1[11];
  v83 = a1[12];
  v82 = a1[13];
  v84 = a1[14];
  v86 = a2[10];
  v85 = a2[11];
  v88 = a2[12];
  v87 = a2[13];
  v89 = a2[14];
  if (!v80)
  {
    if (!v85)
    {
      return 1;
    }

    goto LABEL_48;
  }

  if (!v85)
  {
LABEL_48:
    v173 = v81;
    v174 = v80;
    v175 = v83;
    v176 = v82;
    v177 = v84;
    v178 = v86;
    v179 = v85;
    v180 = v88;
    v181 = v87;
    v182 = v89;
    sub_1BDA73934(v86, v85, v88, v87);
    v74 = v81;
    v75 = v80;
    v76 = v83;
    v77 = v82;
    goto LABEL_29;
  }

  if ((v81 != v86 || v80 != v85) && (sub_1BE053B84() & 1) == 0 || (v83 != v88 || v82 != v87) && (sub_1BE053B84() & 1) == 0)
  {
    sub_1BDA73934(v86, v85, v88, v87);
    sub_1BDA73934(v81, v80, v83, v82);
    v89, v145, v146, v147, v148, v149, v150, v151;
    v87, v152, v153, v154, v155, v156, v157, v158;
    v85, v159, v160, v161, v162, v163, v164, v165;
    v139 = v81;
    v140 = v80;
    v141 = v83;
    v142 = v82;
    v143 = v84;
    goto LABEL_44;
  }

  sub_1BDA73934(v86, v85, v88, v87);
  sub_1BDA73934(v81, v80, v83, v82);
  v90 = sub_1BE051394();
  v89, v91, v92, v93, v94, v95, v96, v97;
  v87, v98, v99, v100, v101, v102, v103, v104;
  v85, v105, v106, v107, v108, v109, v110, v111;
  sub_1BDA728F4(v81, v80, v83, v82, v84, v112, v113, v114);
  return (v90 & 1) != 0;
}

BOOL sub_1BDA736F0(_OWORD *a1, __int128 *a2)
{
  v3 = a1[5];
  v46[4] = a1[4];
  v46[5] = v3;
  v47[0] = a1[6];
  *(v47 + 9) = *(a1 + 105);
  v4 = a1[1];
  v46[0] = *a1;
  v46[1] = v4;
  v5 = a1[3];
  v46[2] = a1[2];
  v46[3] = v5;
  v6 = sub_1BDA72EBC(v46);
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      PKEdgeInsetsMake();
      v15 = v14[5];
      v52 = v14[4];
      v53 = v15;
      v54 = v14[6];
      v55 = *(v14 + 14);
      v16 = v14[1];
      v48 = *v14;
      v49 = v16;
      v17 = v14[3];
      v50 = v14[2];
      v51 = v17;
      v18 = a2[5];
      v41 = a2[4];
      v42 = v18;
      *v43 = a2[6];
      *&v43[9] = *(a2 + 105);
      v19 = a2[1];
      v37 = *a2;
      v38 = v19;
      v20 = a2[3];
      v39 = a2[2];
      v40 = v20;
      if (sub_1BDA72EBC(&v37) == 2)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v33 = a2[5];
      v41 = a2[4];
      v42 = v33;
      *v43 = a2[6];
      *&v43[9] = *(a2 + 105);
      v34 = a2[1];
      v37 = *a2;
      v38 = v34;
      v35 = a2[3];
      v39 = a2[2];
      v40 = v35;
      if (sub_1BDA72EBC(&v37) == 3)
      {
        return 1;
      }
    }

    return 0;
  }

  if (!v6)
  {
    PKEdgeInsetsMake();
    v8 = v7[5];
    v52 = v7[4];
    v53 = v8;
    v54 = v7[6];
    v55 = *(v7 + 14);
    v9 = v7[1];
    v48 = *v7;
    v49 = v9;
    v10 = v7[3];
    v50 = v7[2];
    v51 = v10;
    v11 = a2[5];
    v41 = a2[4];
    v42 = v11;
    *v43 = a2[6];
    *&v43[9] = *(a2 + 105);
    v12 = a2[1];
    v37 = *a2;
    v38 = v12;
    v13 = a2[3];
    v39 = a2[2];
    v40 = v13;
    if (!sub_1BDA72EBC(&v37))
    {
      goto LABEL_9;
    }

    return 0;
  }

  PKEdgeInsetsMake();
  v22 = v21[5];
  v52 = v21[4];
  v53 = v22;
  v54 = v21[6];
  v55 = *(v21 + 14);
  v23 = v21[1];
  v48 = *v21;
  v49 = v23;
  v24 = v21[3];
  v50 = v21[2];
  v51 = v24;
  v25 = a2[5];
  v41 = a2[4];
  v42 = v25;
  *v43 = a2[6];
  *&v43[9] = *(a2 + 105);
  v26 = a2[1];
  v37 = *a2;
  v38 = v26;
  v27 = a2[3];
  v39 = a2[2];
  v40 = v27;
  if (sub_1BDA72EBC(&v37) != 1)
  {
    return 0;
  }

LABEL_9:
  PKEdgeInsetsMake();
  v29 = *(v28 + 80);
  v44[4] = *(v28 + 64);
  v44[5] = v29;
  v44[6] = *(v28 + 96);
  v45 = *(v28 + 112);
  v30 = *(v28 + 16);
  v44[0] = *v28;
  v44[1] = v30;
  v31 = *(v28 + 48);
  v44[2] = *(v28 + 32);
  v44[3] = v31;
  return sub_1BDA731C0(&v48, v44);
}

uint64_t sub_1BDA73934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    sub_1BE048C84();
    sub_1BE048C84();

    return sub_1BE048964();
  }

  return result;
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_1BDA739C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 26))
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

uint64_t sub_1BDA73A10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BDA73A84(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 120))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1BDA73AE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1BDA73B60()
{
  result = qword_1EBD5D4E0;
  if (!qword_1EBD5D4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D4A8, &qword_1BE112780);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D418, &qword_1BE112728);
    sub_1BDA729B8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D4E0);
  }

  return result;
}

unint64_t sub_1BDA73C5C()
{
  result = qword_1EBD5D4E8;
  if (!qword_1EBD5D4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D4E8);
  }

  return result;
}

unint64_t sub_1BDA73CB0(uint64_t a1)
{
  result = sub_1BDA73CD8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BDA73CD8()
{
  result = qword_1EBD5D4F0;
  if (!qword_1EBD5D4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D4F0);
  }

  return result;
}

unint64_t sub_1BDA73D2C(uint64_t a1)
{
  result = sub_1BDA73D54();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BDA73D54()
{
  result = qword_1EBD5D4F8;
  if (!qword_1EBD5D4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D4F8);
  }

  return result;
}

unint64_t sub_1BDA73DA8(uint64_t a1)
{
  result = sub_1BDA73DD0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BDA73DD0()
{
  result = qword_1EBD5D500;
  if (!qword_1EBD5D500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D500);
  }

  return result;
}

unint64_t sub_1BDA73E24(uint64_t a1)
{
  result = sub_1BDA73E4C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BDA73E4C()
{
  result = qword_1EBD5D508;
  if (!qword_1EBD5D508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D508);
  }

  return result;
}

uint64_t sub_1BDA73EA0@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if (!a2)
  {
    v4 = result;
    if (result)
    {
      v5 = 0x3FDCCCCCCCCCCCCDLL;
      if (a3)
      {
        v5 = 0;
      }

      v6 = 0x4031000000000000;
      if (a3)
      {
        v6 = 0x4036000000000000;
      }

      goto LABEL_14;
    }

    v5 = 0x3FE6666666666666;
    if (a3)
    {
      v5 = 0x3FF0000000000000;
    }

    v6 = 0x4022000000000000;
    if (a3)
    {
      v6 = 0;
    }

LABEL_27:
    v7 = 0x4052400000000000;
    goto LABEL_28;
  }

  if (a2 != 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    LOBYTE(v4) = 1;
    goto LABEL_28;
  }

  v4 = result;
  if (!result)
  {
    v5 = 0x3FDCCCCCCCCCCCCDLL;
    if (a3)
    {
      v5 = 0;
    }

    v6 = 0x4031000000000000;
    if (a3)
    {
      v6 = 0x4036000000000000;
    }

    goto LABEL_27;
  }

  v5 = 0x3FE6666666666666;
  if (a3)
  {
    v5 = 0x3FF0000000000000;
  }

  v6 = 0x4022000000000000;
  if (a3)
  {
    v6 = 0;
  }

LABEL_14:
  v7 = 0xC05B000000000000;
  if (v4 == 1)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    LOBYTE(v4) = 1;
  }

LABEL_28:
  *a4 = v5;
  *(a4 + 8) = v6;
  *(a4 + 16) = 0;
  *(a4 + 24) = v7;
  *(a4 + 32) = v4;
  return result;
}

uint64_t sub_1BDA73F90@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if (a2)
  {
    if (a2 == 1)
    {
      if (result)
      {
        v4 = 0x3FE3333333333333;
        v5 = 0x3FF0000000000000;
        if (a3)
        {
          v4 = 0x3FF0000000000000;
        }

        v6 = 0xC023000000000000;
        if (a3)
        {
          v6 = 0;
        }

        else
        {
          v5 = 0x3FD6666666666666;
        }

        v7 = 0xC02B000000000000;
        if (a3)
        {
          v7 = 0xC036000000000000;
        }

        if (result == 1)
        {
          v8 = v4;
        }

        else
        {
          v8 = v5;
        }

        if (result == 1)
        {
          v9 = v6;
        }

        else
        {
          v9 = v7;
        }

        if (result == 1)
        {
          v10 = 0xC04E000000000000;
        }

        else
        {
          v10 = 0x4052C00000000000;
        }
      }

      else
      {
        v8 = 0x3FD3333333333333;
        if (a3)
        {
          v8 = 0;
        }

        v9 = 0x4036000000000000;
        if ((a3 & 1) == 0)
        {
          v9 = 0x4028000000000000;
        }

        v10 = 0xC03E000000000000;
      }
    }

    else if (result)
    {
      v14 = 0x3FD3333333333333;
      if (a3)
      {
        v14 = 0;
      }

      v9 = 0xC028000000000000;
      if (a3)
      {
        v9 = 0xC036000000000000;
      }

      v15 = 0x3FE3333333333333;
      if (a3)
      {
        v15 = 0x3FF0000000000000;
      }

      v16 = 0xC023000000000000;
      if (a3)
      {
        v16 = 0;
      }

      if (result == 1)
      {
        v8 = v14;
      }

      else
      {
        v8 = v15;
      }

      if (result == 1)
      {
        v10 = 0xC056000000000000;
      }

      else
      {
        v9 = v16;
        v10 = 0x404E000000000000;
      }
    }

    else
    {
      v8 = 0x3FD6666666666666;
      if (a3)
      {
        v8 = 0;
      }

      v9 = 0x4036000000000000;
      if ((a3 & 1) == 0)
      {
        v9 = 0x402B000000000000;
      }

      v10 = 0x4024000000000000;
    }
  }

  else if (result)
  {
    v11 = 0x3FD6666666666666;
    if (a3)
    {
      v11 = 0;
    }

    v9 = 0xC02B000000000000;
    v12 = 0xC036000000000000;
    if (a3)
    {
      v9 = 0xC036000000000000;
    }

    v13 = 0x3FD3333333333333;
    if (a3)
    {
      v13 = 0;
    }

    else
    {
      v12 = 0xC028000000000000;
    }

    if (result == 1)
    {
      v8 = v11;
    }

    else
    {
      v8 = v13;
    }

    if (result == 1)
    {
      v10 = 0xC043400000000000;
    }

    else
    {
      v9 = v12;
      v10 = 0x4043400000000000;
    }
  }

  else
  {
    v10 = 0;
    v8 = 0x3FE3333333333333;
    if (a3)
    {
      v8 = 0x3FF0000000000000;
    }

    v9 = 0x4023000000000000;
    if (a3)
    {
      v9 = 0;
    }
  }

  *a4 = v8;
  *(a4 + 8) = v9;
  *(a4 + 16) = 0;
  *(a4 + 24) = v10;
  *(a4 + 32) = 0;
  return result;
}

unint64_t sub_1BDA74134()
{
  result = qword_1EBD5D538;
  if (!qword_1EBD5D538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D518, &qword_1BE112BB0);
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD38BC8, &unk_1EBD49190, &unk_1BE0C5140, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D538);
  }

  return result;
}

unint64_t sub_1BDA7421C()
{
  result = qword_1EBD5D550;
  if (!qword_1EBD5D550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D530, &qword_1BE112BC8);
    sub_1BDA742D4();
    sub_1BD0DE4F4(&unk_1EBD5D580, &qword_1EBD5D548, &qword_1BE112C10, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D550);
  }

  return result;
}

unint64_t sub_1BDA742D4()
{
  result = qword_1EBD5D558;
  if (!qword_1EBD5D558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D528, &qword_1BE112BC0);
    sub_1BDA74360();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D558);
  }

  return result;
}

unint64_t sub_1BDA74360()
{
  result = qword_1EBD5D560;
  if (!qword_1EBD5D560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D520, &qword_1BE112BB8);
    sub_1BDA743EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D560);
  }

  return result;
}

unint64_t sub_1BDA743EC()
{
  result = qword_1EBD5D568;
  if (!qword_1EBD5D568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D570, &qword_1BE112C18);
    sub_1BDA744A4();
    sub_1BD0DE4F4(&qword_1EBD386E8, &unk_1EBD51210, &qword_1BE0C5180, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D568);
  }

  return result;
}

unint64_t sub_1BDA744A4()
{
  result = qword_1EBD5D578;
  if (!qword_1EBD5D578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D578);
  }

  return result;
}

id NearbyPeerPaymentVFXView.__allocating_init(frame:options:)(void *a1, double a2, double a3, double a4, double a5)
{
  if (a1)
  {
    v11 = sub_1BE052224();
    a1, v12, v13, v14, v15, v16, v17, v18;
  }

  else
  {
    v11 = 0;
  }

  v19 = [objc_allocWithZone(v5) initWithFrame:v11 options:{a2, a3, a4, a5}];

  return v19;
}

id NearbyPeerPaymentVFXView.init(frame:options:)(void *a1, double a2, double a3, double a4, double a5)
{
  if (a1)
  {
    v11 = sub_1BE052224();
    a1, v12, v13, v14, v15, v16, v17, v18;
  }

  else
  {
    v11 = 0;
  }

  v21.receiver = v5;
  v21.super_class = type metadata accessor for NearbyPeerPaymentVFXView();
  v19 = objc_msgSendSuper2(&v21, sel_initWithFrame_options_, v11, a2, a3, a4, a5);

  return v19;
}

id NearbyPeerPaymentVFXView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id NearbyPeerPaymentVFXView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for NearbyPeerPaymentVFXView();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id NearbyPeerPaymentVFXView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id NearbyPeerPaymentVFXView.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for NearbyPeerPaymentVFXView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id NearbyPeerPaymentVFXView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NearbyPeerPaymentVFXView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1BDA74A24@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BDA77390(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1BDA74A50(_OWORD *a1, char a2)
{
  *(v2 + 16) = 14;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  *(v2 + 176) = 0u;
  *(v2 + 192) = 0u;
  *(v2 + 208) = 0u;
  v3 = a1[1];
  *(v2 + 232) = *a1;
  v4 = MEMORY[0x1E69E7CC0];
  *(v2 + 24) = 0;
  *(v2 + 32) = v4;
  *(v2 + 40) = v4;
  *(v2 + 48) = 1;
  *(v2 + 56) = 0;
  *(v2 + 59) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  *(v2 + 64) = 0;
  *(v2 + 88) = 1;
  *(v2 + 224) = 0;
  *(v2 + 248) = v3;
  *(v2 + 264) = a1[2];
  *(v2 + 225) = a2;
  *(v2 + 92) = 0;
  return v2;
}

uint64_t sub_1BDA74AC0(uint64_t a1)
{
  v2 = *(v1 + 248) - 3;
  if (v2 < 0x12 && ((0x3FBF9u >> v2) & 1) != 0)
  {
    v3 = byte_1BE112E7A[v2];
  }

  else
  {
    v3 = sub_1BDA74B34(a1);
  }

  if ((*(v1 + 59) & (v3 == 0)) != 0)
  {
    v4 = 4;
  }

  else
  {
    v4 = v3;
  }

  sub_1BDA764E0(v4);
  return v4;
}

uint64_t sub_1BDA74B34(uint64_t a1)
{
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v7 = swift_getKeyPath();
  sub_1BE04D8B4(v80);
  KeyPath, v8, v9, v10, v11, v12, v13, v14;
  v7, v15, v16, v17, v18, v19, v20, v21;
  v22 = v80[0];
  if (sub_1BE04C984() & 1) != 0 || (sub_1BE04CA64())
  {
    return 4;
  }

  if (v22 > 2)
  {
    switch(v22)
    {
      case 3:
        return 3;
      case 5:
        return *(v1 + 16);
      case 4:
        v40 = *(v1 + 16);
        if (PKUserIntentIsAvailable())
        {
          return v40;
        }

        else
        {
          return 4;
        }
    }

    goto LABEL_24;
  }

  if (!v22)
  {
    if (*(v1 + 225) == 1 && (*(v1 + 60) & 1) != 0 || *(v1 + 16) == 1)
    {
      v41 = 1;
    }

    else
    {
      v61 = [*(v1 + 232) model];
      if (v61 && (v62 = v61, v63 = [v61 mode], v62, v63 == 2))
      {
        v41 = 10;
      }

      else
      {
        v41 = 0;
      }
    }

    v64 = swift_getKeyPath();
    v65 = swift_getKeyPath();
    sub_1BE04D8B4(v80);
    v64, v66, v67, v68, v69, v70, v71, v72;
    v65, v73, v74, v75, v76, v77, v78, v79;
    if (v80[0] == 3)
    {
      if (*(v1 + 57))
      {
        return v41;
      }

      else
      {
        return 4;
      }
    }

    return v41;
  }

  if (v22 != 1)
  {
    if (v22 == 2)
    {
      v24 = swift_getKeyPath();
      v25 = swift_getKeyPath();
      sub_1BE04D8B4(v80);
      v24, v26, v27, v28, v29, v30, v31, v32;
      v25, v33, v34, v35, v36, v37, v38, v39;
      result = 2;
      if (v80[0] != 3)
      {
        return result;
      }

      goto LABEL_10;
    }

LABEL_24:
    sub_1BE04D084();
    v42 = sub_1BE04D204();
    v43 = sub_1BE052C34();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_1BD026000, v42, v43, "Unknown evaluation state", v44, 2u);
      MEMORY[0x1BFB45F20](v44, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    return 13;
  }

  if (*(v1 + 225))
  {
    v41 = 5;
  }

  else
  {
    v41 = 0;
  }

  v45 = swift_getKeyPath();
  v46 = swift_getKeyPath();
  sub_1BE04D8B4(v80);
  v45, v47, v48, v49, v50, v51, v52, v53;
  v46, v54, v55, v56, v57, v58, v59, v60;
  if (v80[0] <= 1)
  {
    if (v80[0])
    {
      return v41;
    }

    return v41;
  }

  if (v80[0] == 2)
  {
    return v41;
  }

  if (v80[0] == 4)
  {
    return 6;
  }

  result = v41;
  if (v80[0] == 3)
  {
LABEL_10:
    if (*(v1 + 57))
    {
      return result;
    }

    else
    {
      return 4;
    }
  }

  return result;
}

void sub_1BDA74F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 60) = (a4 - 1) < 2;
  v6 = a4 == 2 || a2 == 2;
  *(v4 + 62) = v6;
  if (*(v4 + 225) == 1 && (*(v4 + 57) & 1) == 0)
  {
    v9 = [*(v4 + 264) paymentRequest];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 _isAMPPayment];

      v12 = 1;
      if ((*(v4 + 60) & 1) == 0 && (a1 - 1) >= 2)
      {
        v12 = (a4 == 3) & v11;
      }

      *(v4 + 59) = v12;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *(v4 + 59) = 0;
  }
}

void sub_1BDA74FEC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *a1;
  v31 = *(a1 + 8);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(v4 + 232);
  v11 = *(v4 + 264);
  v27 = *(v4 + 256);
  v12 = *(v4 + 272);
  v13 = *(a1 + 16);
  *(v4 + 232) = *a1;
  *(v4 + 248) = v13;
  *(v4 + 264) = *(a1 + 32);
  v14 = v7;
  sub_1BD91A424(&v31, v30);
  v15 = v8;
  v16 = v9;
  sub_1BE048964();
  v12, v17, v18, v19, v20, v21, v22, v23;

  swift_unknownObjectRelease();
  v24 = (sub_1BE04CB74() & 1) != 0 || *(a2 + qword_1EBD55570) > 0;
  *(v4 + 92) = v24;
  *(v4 + 88) = sub_1BE04CAB4();
  *(v4 + 56) = sub_1BE04CA44() & 1;
  *(v4 + 48) = *(a2 + qword_1EBDAADB8);
  *(v4 + 57) = sub_1BE04CB34() & 1;
  v25 = *(a1 + 16);
  sub_1BD93825C(v25, v8);
  sub_1BD9385A4(v25, v8);
  v26 = sub_1BDA74AC0(a2);
  sub_1BDA75178(v26, 17, a3, a4);
  if (*(v4 + 60) == 1)
  {
    sub_1BDA75178(9, 17, 0, 0);
    *(v4 + 60) = 256;
  }
}

void sub_1BDA75178(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v8 = a2;
  v10 = a2;
  v11 = sub_1BE051F54();
  v12 = *(v11 - 1);
  MEMORY[0x1EEE9AC00](v11);
  v237 = &v208[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_1BE051FA4();
  v236 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v238 = &v208[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_1BE051F44();
  v234 = *(v16 - 8);
  v235 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v233 = &v208[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_1BE051FC4();
  MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v19);
  if (v10 == 17)
  {
    v8 = *(v5 + 16);
  }

  if (*(v5 + 17))
  {
    if (a1 == 9)
    {
      *(v5 + 18) = 1;
      v10 = MEMORY[0x1E69E7CC0];
LABEL_12:
      if (a3)
      {
        v32 = swift_allocObject();
        *(v32 + 16) = a3;
        *(v32 + 24) = a4;
        swift_beginAccess();
        v33 = *(v5 + 40);
        sub_1BE048964();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v5 + 40) = v33;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v33 = sub_1BD1D761C(0, (v33[2] + 1), 1, v33);
          *(v5 + 40) = v33;
        }

        v36 = v33[2];
        v35 = v33[3];
        if (v36 >= v35 >> 1)
        {
          v33 = sub_1BD1D761C((v35 > 1), (v36 + 1), 1, v33);
        }

        v33[2] = v36 + 1;
        v37 = &v33[2 * v36];
        v37[4] = sub_1BDA774F8;
        v37[5] = v32;
        *(v5 + 40) = v33;
        swift_endAccess();
      }

      v38 = v10[2];
      if (v38)
      {
        v39 = v10 + 5;
        do
        {
          v41 = *(v39 - 1);
          v40 = *v39;
          LOBYTE(v257) = 0;
          sub_1BE048964();
          v41(&v257);
          v40, v42, v43, v44, v45, v46, v47, v48;
          v39 += 2;
          --v38;
        }

        while (v38);
      }

      goto LABEL_68;
    }

LABEL_10:
    v10 = MEMORY[0x1E69E7CC0];
    if (v8 != a1)
    {
      MEMORY[0x1E69E7CC0], v21, v22, v23, v24, v25, v26, v27;
      swift_beginAccess();
      v31 = *(v5 + 40);
      *(v5 + 40) = v10;
      *(v5 + 16) = a1;
      v10 = v31;
    }

    goto LABEL_12;
  }

  if (*(v5 + 19) == 1 && a1 != 9 && v8 != a1)
  {
    *(v5 + 17) = 1;
    goto LABEL_10;
  }

  if (a1 == 9)
  {
    if (v8 > 5u)
    {
      if (!a3)
      {
        goto LABEL_45;
      }

      sub_1BE048964();
      v49 = 0;
    }

    else
    {
      if (!a3)
      {
        goto LABEL_45;
      }

      sub_1BE048964();
      v49 = 1;
    }

    (a3)(v49);
    sub_1BD0D4744(a3, a4, v82, v83, v84, v85, v86, v87);
LABEL_45:
    v10 = MEMORY[0x1E69E7CC0];
    v88 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v88)
    {
      goto LABEL_62;
    }

    goto LABEL_68;
  }

  v214 = v30;
  v215 = &v208[-v28];
  v216 = v20;
  v217 = v29;
  v50 = *(v5 + 24);
  v51 = __OFADD__(v50, 1);
  v52 = v50 + 1;
  if (v51)
  {
    __break(1u);
    goto LABEL_70;
  }

  *(v5 + 24) = v52;
  v10 = MEMORY[0x1E69E7CC0];
  if (v8 != a1)
  {
    swift_beginAccess();
    if (*(*(v5 + 32) + 16))
    {
      v10, v53, v54, v55, v56, v57, v58, v59;
      v60 = *(v5 + 32);
      *(v5 + 32) = v10;
      v10 = v60;
    }

    *(v5 + 16) = a1;
  }

  v212 = v12;
  v213 = v11;
  v211 = v14;
  if (!a3)
  {
    goto LABEL_36;
  }

  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  swift_beginAccess();
  a3 = *(v5 + 32);
  sub_1BE048964();
  v61 = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 32) = a3;
  if ((v61 & 1) == 0)
  {
    goto LABEL_72;
  }

  while (1)
  {
    v63 = *(a3 + 16);
    v62 = *(a3 + 24);
    if (v63 >= v62 >> 1)
    {
      a3 = sub_1BD1D761C((v62 > 1), (v63 + 1), 1, a3);
    }

    *(a3 + 16) = v63 + 1;
    v64 = a3 + 16 * v63;
    *(v64 + 32) = sub_1BD789540;
    *(v64 + 40) = v11;
    *(v5 + 32) = a3;
    swift_endAccess();
LABEL_36:
    v65 = *(v5 + 24);
    a3 = a1;
    *(v5 + 58) = a1 == 4;
    v66 = swift_allocObject();
    *(v66 + 16) = 1;
    v228 = (v66 + 16);
    *(v5 + 19) = a1 == 8;
    v11 = swift_allocObject();
    swift_weakInit();
    v67 = swift_allocObject();
    *(v67 + 16) = v11;
    *(v67 + 24) = v65;
    v225 = v65;
    *(v67 + 32) = v66;
    *(v67 + 40) = a1 == 8;
    v227 = v67;
    *(v67 + 41) = v8;
    v68 = *(v5 + 48);
    v223 = v11;
    sub_1BE048964();
    v224 = v66;
    sub_1BE048964();
    v226 = sub_1BD937FBC(a1, v68);
    if (a1 == 8)
    {
      *(v5 + 19) = 1;
    }

    v69 = v228;
    swift_beginAccess();
    if (__OFADD__(*v69, 1))
    {
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    ++*v69;
    v222 = sub_1BD9B68CC(a1, v8, *(v5 + 48));
    v70 = *(v5 + 64);
    v71 = *(v5 + 72);
    v230 = v72;
    v231 = v70;
    v73 = *(v5 + 80);
    v74 = *(v5 + 48);
    v75 = *(v5 + 56);
    sub_1BE048C84();
    v76 = sub_1BD93808C(a1, v74, v75);
    v77 = [*(v5 + 264) paymentRequest];
    if (!v77)
    {
      __break(1u);
      return;
    }

    v78 = v77;
    v221 = v10;
    v79 = [v77 localizedPhysicalButtonConfirmationTitle];

    *&v229 = v71;
    *(&v229 + 1) = v73;
    if (v79)
    {
      a3 = sub_1BE052434();
      v81 = v80;
    }

    else
    {
      a3 = 0;
      v81 = 0;
    }

    v89 = v227;
    v232 = [*(v5 + 264) confirmationStyle];
    v218 = *(v5 + 88);
    v90 = swift_allocObject();
    *(v90 + 16) = sub_1BDA773A0;
    *(v90 + 24) = v89;
    v91 = v76 & 1;
    v219 = v8;
    v220 = a1;
    sub_1BE048964();
    if (v81)
    {
      v92 = v226;
      v93 = v81;
    }

    else
    {
      a3 = sub_1BD410088(v232);
      v93 = v94;
      v92 = v226;
    }

    v95 = *(v5 + 240);
    v96 = v222;
    *&v250 = v222;
    *(&v250 + 1) = v230;
    *&v251 = v92;
    *(&v251 + 1) = v231;
    v252 = v229;
    v97 = v91;
    LOBYTE(v253) = v91;
    *(&v253 + 1) = a3;
    *&v254 = v93;
    *(&v254 + 1) = v232;
    v98 = v218;
    LODWORD(v255) = v218;
    *(&v255 + 1) = v95;
    *&v256 = sub_1BD214190;
    *(&v256 + 1) = v90;
    v99 = *(v5 + 128);
    v257 = *(v5 + 112);
    v258 = v99;
    v100 = *(v5 + 144);
    v101 = *(v5 + 160);
    v102 = *(v5 + 208);
    v262 = *(v5 + 192);
    v263 = v102;
    v103 = *(v5 + 176);
    v260 = v101;
    v261 = v103;
    v259 = v100;
    v104 = v251;
    *(v5 + 112) = v250;
    *(v5 + 128) = v104;
    v105 = v252;
    v106 = v253;
    v107 = v256;
    *(v5 + 192) = v255;
    *(v5 + 208) = v107;
    v108 = v254;
    *(v5 + 160) = v106;
    *(v5 + 176) = v108;
    *(v5 + 144) = v105;
    swift_unknownObjectRetain();
    sub_1BD146D60(&v250, &v265);
    sub_1BDA773B4(&v257);
    if (*(v5 + 224))
    {
      v265 = v96;
      v266 = v230;
      v267 = v92;
      v268 = v231;
      v269 = v229;
      v270 = v97;
      v271 = a3;
      v272 = v93;
      v273 = v232;
      v274 = v98;
      v275 = v95;
      v276 = sub_1BD214190;
      v277 = v90;
      v109 = &v265;
    }

    else
    {
      v110 = a3;
      a3 = *(v5 + 96);
      if (a3)
      {
        v111 = *(v5 + 104);
        v265 = v96;
        v266 = v230;
        v267 = v226;
        v268 = v231;
        v269 = v229;
        v270 = v97;
        v271 = v110;
        v272 = v93;
        v273 = v232;
        v274 = v98;
        v275 = v95;
        v276 = sub_1BD214190;
        v277 = v90;
        v209 = *(v5 + 58);
        v210 = v110;
        sub_1BE048964();
        (a3)(&v265, v209);
        v112 = v111;
        v92 = v226;
        sub_1BD0D4744(a3, v112, v113, v114, v115, v116, v117, v118);
        v110 = v210;
      }

      v239[0] = v96;
      v239[1] = v230;
      v239[2] = v92;
      v239[3] = v231;
      v240 = v229;
      v241 = v97;
      *v242 = *v264;
      *&v242[3] = *&v264[3];
      v243 = v110;
      v244 = v93;
      v245 = v232;
      v246 = v98;
      v247 = v95;
      v248 = sub_1BD214190;
      v249 = v90;
      v109 = v239;
    }

    sub_1BD146D0C(v109);
    v119 = v228;
    swift_beginAccess();
    v120 = v224;
    v121 = v225;
    v11 = v223;
    v10 = v221;
    v8 = v219;
    a1 = v220;
    if (!__OFADD__(*v119, 1))
    {
      break;
    }

LABEL_71:
    __break(1u);
LABEL_72:
    a3 = sub_1BD1D761C(0, (*(a3 + 16) + 1), 1, a3);
    *(v5 + 32) = a3;
  }

  v224[2] = *v119 + 1;
  sub_1BDA75EC4(v11, v121, v120, a1 == 8, v8);
  if (*(v5 + 24) == v121)
  {
    if (*(v5 + 16) == 1 && (*(v5 + 57) & 1) == 0)
    {
      sub_1BD14BE3C();
      v232 = sub_1BE052D54();
      v129 = v214;
      sub_1BE051FB4();
      v131 = v233;
      v130 = v234;
      *v233 = 1850;
      v132 = v235;
      v130[13](v131, *MEMORY[0x1E69E7F38], v235);
      MEMORY[0x1BFB3F070](v129, v131);
      (v130[1])(v131, v132);
      v133 = *(v217 + 8);
      v217 += 8;
      v235 = v133;
      v133(v129, v216);
      v134 = swift_allocObject();
      *(v134 + 16) = v5;
      *(v134 + 24) = v121;
      *(v134 + 32) = v8;
      *&v259 = sub_1BDA7741C;
      *(&v259 + 1) = v134;
      *&v257 = MEMORY[0x1E69E9820];
      *(&v257 + 1) = 1107296256;
      *&v258 = sub_1BD126964;
      *(&v258 + 1) = &block_descriptor_249;
      v234 = _Block_copy(&v257);
      v135 = *(&v259 + 1);
      sub_1BE048964();
      v135, v136, v137, v138, v139, v140, v141, v142;
      v143 = v238;
      sub_1BE051F74();
      *&v257 = MEMORY[0x1E69E7CC0];
      sub_1BD14EC84();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
      sub_1BD14ECDC();
      v144 = v237;
      v145 = v213;
      sub_1BE053664();
      v146 = v215;
      v147 = v143;
      v148 = v234;
      v149 = v232;
      MEMORY[0x1BFB3FD90](v215, v147, v144, v234);
      v150 = v148;
      v11 = v223;
      v120 = v224;
      _Block_release(v150);

      v151 = v145;
      v121 = v225;
      (*(v212 + 8))(v144, v151);
      (*(v236 + 8))(v238, v211);
      v235(v146, v216);
    }

    sub_1BDA75EC4(v11, v121, v120, a1 == 8, v8);
    v120, v152, v153, v154, v155, v156, v157, v158;
    v11, v159, v160, v161, v162, v163, v164, v165;
    v227, v166, v167, v168, v169, v170, v171, v172;
    v88 = v10[2];
    if (v88)
    {
LABEL_62:
      v173 = v10 + 5;
      do
      {
        v175 = *(v173 - 1);
        v174 = *v173;
        LOBYTE(v257) = 0;
        sub_1BE048964();
        v175(&v257);
        v174, v176, v177, v178, v179, v180, v181, v182;
        v173 += 2;
        --v88;
      }

      while (v88);
    }
  }

  else
  {
    v120, v122, v123, v124, v125, v126, v127, v128;
    v11, v183, v184, v185, v186, v187, v188, v189;
    v227, v190, v191, v192, v193, v194, v195, v196;
    v197 = v10[2];
    if (v197)
    {
      v198 = v10 + 5;
      do
      {
        v200 = *(v198 - 1);
        v199 = *v198;
        LOBYTE(v257) = 0;
        sub_1BE048964();
        v200(&v257);
        v199, v201, v202, v203, v204, v205, v206, v207;
        v198 += 2;
        --v197;
      }

      while (v197);
    }
  }

LABEL_68:
  v10, v21, v22, v23, v24, v25, v26, v27;
}

void sub_1BDA75EC4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (Strong[3] != a2)
    {
LABEL_6:
      Strong, v10, v11, v12, v13, v14, v15, v16;
      return;
    }

    v17 = Strong;
    swift_beginAccess();
    v18 = *(a3 + 16);
    v19 = __OFSUB__(v18, 1);
    v20 = v18 - 1;
    if (v19)
    {
      __break(1u);
      return;
    }

    *(a3 + 16) = v20;
    if (v20 >= 1)
    {
LABEL_5:
      Strong = v17;
      goto LABEL_6;
    }

    if (a4)
    {
      *(v17 + 19) = 0;
    }

    v21 = *(v17 + 17);
    v76 = *(v17 + 16);
    v77 = *(v17 + 18);
    *(v17 + 17) = 0;
    swift_beginAccess();
    v22 = v17[4];
    v23 = MEMORY[0x1E69E7CC0];
    v17[4] = MEMORY[0x1E69E7CC0];
    swift_beginAccess();
    v31 = v17[5];
    v17[5] = v23;
    v32 = v22[2];
    if (v32)
    {
      v33 = v22 + 5;
      do
      {
        v35 = *(v33 - 1);
        v34 = *v33;
        v78 = 1;
        sub_1BE048964();
        v35(&v78);
        v34, v36, v37, v38, v39, v40, v41, v42;
        v33 += 2;
        --v32;
      }

      while (v32);
    }

    v22, v24, v25, v26, v27, v28, v29, v30;
    if (v21)
    {
      v50 = swift_allocObject();
      v50[2] = v31;
      sub_1BDA75178(v76, a5, sub_1BDA77464, v50);
      v50, v51, v52, v53, v54, v55, v56, v57;
      if (v77)
      {
        sub_1BDA75178(9, a5, 0, 0);
      }

      goto LABEL_5;
    }

    v58 = v31[2];
    if (v58)
    {
      v59 = v31 + 5;
      do
      {
        v61 = *(v59 - 1);
        v60 = *v59;
        v78 = 0;
        sub_1BE048964();
        v61(&v78);
        v60, v62, v63, v64, v65, v66, v67, v68;
        v59 += 2;
        --v58;
      }

      while (v58);
    }

    v17, v43, v44, v45, v46, v47, v48, v49;
    v31, v69, v70, v71, v72, v73, v74, v75;
  }
}

void sub_1BDA760F4(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = a1 & 1;
    v4 = (a2 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v14 = v3;
      sub_1BE048964();
      v6(&v14);
      v5, v7, v8, v9, v10, v11, v12, v13;
      v4 += 2;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_1BDA76168(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  *(v8 + 32), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 40), v9, v10, v11, v12, v13, v14, v15;
  *(v8 + 72), v16, v17, v18, v19, v20, v21, v22;
  sub_1BD0D4744(*(v8 + 96), *(v8 + 104), v23, v24, v25, v26, v27, v28);
  sub_1BDA7746C(*(v8 + 112), *(v8 + 120), *(v8 + 128), *(v8 + 136), *(v8 + 144), *(v8 + 152), *(v8 + 160), *(v8 + 168), *(v8 + 176), *(v8 + 184), *(v8 + 192), *(v8 + 200), *(v8 + 208), *(v8 + 216));
  v29 = *(v8 + 232);
  v30 = *(v8 + 256);
  v31 = *(v8 + 264);
  *(v8 + 272), v32, v33, v34, v35, v36, v37, v38;

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for PaymentProgressState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PaymentProgressState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1BDA76398()
{
  result = qword_1EBD5D590;
  if (!qword_1EBD5D590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D590);
  }

  return result;
}

void sub_1BDA763EC(void *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  *a2 = v19;
}

uint64_t sub_1BDA7646C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t sub_1BDA764E0(char a1)
{
  v2 = sub_1BE04CFC4();
  v128 = *(v2 - 8);
  v129 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v125 = &v109 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v124 = &v109 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v123 = &v109 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v122 = &v109 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v121 = &v109 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v120 = &v109 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v119 = &v109 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v118 = &v109 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v117 = &v109 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v115 = &v109 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v114 = &v109 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v113 = &v109 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v112 = &v109 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v111 = &v109 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v110 = &v109 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v109 = &v109 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v116 = &v109 - v35;
  v36 = sub_1BE04CFE4();
  v126 = *(v36 - 8);
  v127 = v36;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v109 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  MEMORY[0x1EEE9AC00](v40);
  MEMORY[0x1EEE9AC00](v41);
  MEMORY[0x1EEE9AC00](v42);
  MEMORY[0x1EEE9AC00](&v109 - v43);
  MEMORY[0x1EEE9AC00](v44);
  MEMORY[0x1EEE9AC00](v45);
  MEMORY[0x1EEE9AC00](v46);
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v109 - v48;
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v109 - v51;
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v109 - v54;
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v109 - v57;
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v109 - v60;
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v109 - v63;
  MEMORY[0x1EEE9AC00](v65);
  v67 = &v109 - v66;
  MEMORY[0x1EEE9AC00](v68);
  v78 = &v109 - v77;
  switch(a1)
  {
    case 1:
      sub_1BE04B6C4();
      v79 = v109;
      sub_1BE04CFB4();
      v97 = sub_1BE04CFD4();
      v98 = sub_1BE052E44();
      if (sub_1BE053494())
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        v99 = sub_1BE04CFA4();
        _os_signpost_emit_with_name_impl(&dword_1BD026000, v97, v98, v99, "progressState", "requiresPearlIDFailed", v82, 2u);
        v78 = v67;
        v101 = v128;
        v100 = v129;
        v103 = v126;
        v102 = v127;
        v80 = v97;
        goto LABEL_38;
      }

      v38 = v67;
      v101 = v128;
      v100 = v129;
      v103 = v126;
      v102 = v127;
      v80 = v97;
      goto LABEL_41;
    case 2:
      sub_1BE04B6C4();
      v89 = v110;
      sub_1BE04CFB4();
      v80 = sub_1BE04CFD4();
      v90 = sub_1BE052E44();
      if (sub_1BE053494())
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        v91 = sub_1BE04CFA4();
        _os_signpost_emit_with_name_impl(&dword_1BD026000, v80, v90, v91, "progressState", "biometricMatching", v82, 2u);
        v78 = v64;
        v79 = v89;
        goto LABEL_37;
      }

      v38 = v64;
      v79 = v89;
      goto LABEL_40;
    case 3:
      sub_1BE04B6C4();
      v79 = v111;
      sub_1BE04CFB4();
      v80 = sub_1BE04CFD4();
      v92 = sub_1BE052E44();
      if (sub_1BE053494())
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        v93 = sub_1BE04CFA4();
        _os_signpost_emit_with_name_impl(&dword_1BD026000, v80, v92, v93, "progressState", "requiresPushButton", v82, 2u);
        v78 = v61;
        goto LABEL_37;
      }

      v38 = v61;
      goto LABEL_40;
    case 4:
      sub_1BE04B6C4();
      v79 = v112;
      sub_1BE04CFB4();
      v80 = sub_1BE04CFD4();
      v87 = sub_1BE052E44();
      if (sub_1BE053494())
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        v88 = sub_1BE04CFA4();
        _os_signpost_emit_with_name_impl(&dword_1BD026000, v80, v87, v88, "progressState", "requiresPasscode", v82, 2u);
        v78 = v58;
        goto LABEL_37;
      }

      v38 = v58;
      goto LABEL_40;
    case 5:
      sub_1BE04B6C4();
      v79 = v113;
      sub_1BE04CFB4();
      v80 = sub_1BE04CFD4();
      v104 = sub_1BE052E44();
      if (sub_1BE053494())
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        v105 = sub_1BE04CFA4();
        _os_signpost_emit_with_name_impl(&dword_1BD026000, v80, v104, v105, "progressState", "pearlActive", v82, 2u);
        v78 = v55;
        goto LABEL_37;
      }

      v38 = v55;
      goto LABEL_40;
    case 6:
      sub_1BE04B6C4();
      v79 = v114;
      sub_1BE04CFB4();
      v80 = sub_1BE04CFD4();
      v106 = sub_1BE052E44();
      if (sub_1BE053494())
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        v107 = sub_1BE04CFA4();
        _os_signpost_emit_with_name_impl(&dword_1BD026000, v80, v106, v107, "progressState", "pearlObscured", v82, 2u);
        v78 = v52;
        goto LABEL_37;
      }

      v38 = v52;
      goto LABEL_40;
    case 7:
      sub_1BE04B6C4();
      v79 = v115;
      sub_1BE04CFB4();
      v80 = sub_1BE04CFD4();
      v94 = sub_1BE052E44();
      if (sub_1BE053494())
      {
        v95 = swift_slowAlloc();
        *v95 = 0;
        v96 = sub_1BE04CFA4();
        _os_signpost_emit_with_name_impl(&dword_1BD026000, v80, v94, v96, "progressState", "pearlPoseOutOfRangeDown", v95, 2u);
        v78 = v49;
        v82 = v95;
        goto LABEL_37;
      }

      v38 = v49;
      goto LABEL_40;
    case 8:
      v78 = v73;
      sub_1BE04B6C4();
      v79 = v117;
      sub_1BE04CFB4();
      v80 = sub_1BE04CFD4();
      v81 = sub_1BE052E44();
      if ((sub_1BE053494() & 1) == 0)
      {
        goto LABEL_39;
      }

      v82 = swift_slowAlloc();
      *v82 = 0;
      v83 = sub_1BE04CFA4();
      v84 = "biometricSuccess";
      goto LABEL_36;
    case 9:
      v78 = v72;
      sub_1BE04B6C4();
      v79 = v118;
      sub_1BE04CFB4();
      v80 = sub_1BE04CFD4();
      v81 = sub_1BE052E44();
      if ((sub_1BE053494() & 1) == 0)
      {
        goto LABEL_39;
      }

      v82 = swift_slowAlloc();
      *v82 = 0;
      v83 = sub_1BE04CFA4();
      v84 = "biometricRetry";
      goto LABEL_36;
    case 10:
      v78 = v71;
      sub_1BE04B6C4();
      v79 = v119;
      sub_1BE04CFB4();
      v80 = sub_1BE04CFD4();
      v81 = sub_1BE052E44();
      if ((sub_1BE053494() & 1) == 0)
      {
        goto LABEL_39;
      }

      v82 = swift_slowAlloc();
      *v82 = 0;
      v83 = sub_1BE04CFA4();
      v84 = "processing";
      goto LABEL_36;
    case 11:
      v78 = v70;
      sub_1BE04B6C4();
      v79 = v120;
      sub_1BE04CFB4();
      v80 = sub_1BE04CFD4();
      v81 = sub_1BE052E44();
      if ((sub_1BE053494() & 1) == 0)
      {
        goto LABEL_39;
      }

      v82 = swift_slowAlloc();
      *v82 = 0;
      v83 = sub_1BE04CFA4();
      v84 = "authorizing";
      goto LABEL_36;
    case 12:
      v78 = v69;
      sub_1BE04B6C4();
      v79 = v121;
      sub_1BE04CFB4();
      v80 = sub_1BE04CFD4();
      v81 = sub_1BE052E44();
      if ((sub_1BE053494() & 1) == 0)
      {
        goto LABEL_39;
      }

      v82 = swift_slowAlloc();
      *v82 = 0;
      v83 = sub_1BE04CFA4();
      v84 = "authorized";
      goto LABEL_36;
    case 13:
      v78 = v76;
      sub_1BE04B6C4();
      v79 = v122;
      sub_1BE04CFB4();
      v80 = sub_1BE04CFD4();
      v81 = sub_1BE052E44();
      if ((sub_1BE053494() & 1) == 0)
      {
        goto LABEL_39;
      }

      v82 = swift_slowAlloc();
      *v82 = 0;
      v83 = sub_1BE04CFA4();
      v84 = "error";
      goto LABEL_36;
    case 14:
      v78 = v75;
      sub_1BE04B6C4();
      v79 = v123;
      sub_1BE04CFB4();
      v80 = sub_1BE04CFD4();
      v81 = sub_1BE052E44();
      if ((sub_1BE053494() & 1) == 0)
      {
        goto LABEL_39;
      }

      v82 = swift_slowAlloc();
      *v82 = 0;
      v83 = sub_1BE04CFA4();
      v84 = "empty";
      goto LABEL_36;
    case 15:
      v78 = v74;
      sub_1BE04B6C4();
      v79 = v124;
      sub_1BE04CFB4();
      v80 = sub_1BE04CFD4();
      v81 = sub_1BE052E44();
      if ((sub_1BE053494() & 1) == 0)
      {
        goto LABEL_39;
      }

      v82 = swift_slowAlloc();
      *v82 = 0;
      v83 = sub_1BE04CFA4();
      v84 = "updatingPaymentOffers";
      goto LABEL_36;
    case 16:
      sub_1BE04B6C4();
      v79 = v125;
      sub_1BE04CFB4();
      v80 = sub_1BE04CFD4();
      v85 = sub_1BE052E44();
      if ((sub_1BE053494() & 1) == 0)
      {
        goto LABEL_40;
      }

      v82 = swift_slowAlloc();
      *v82 = 0;
      v86 = sub_1BE04CFA4();
      _os_signpost_emit_with_name_impl(&dword_1BD026000, v80, v85, v86, "progressState", "loadingPreconfiguredInstallmentPaymentOffer", v82, 2u);
      v78 = v38;
      goto LABEL_37;
    default:
      sub_1BE04B6C4();
      v79 = v116;
      sub_1BE04CFB4();
      v80 = sub_1BE04CFD4();
      v81 = sub_1BE052E44();
      if (sub_1BE053494())
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        v83 = sub_1BE04CFA4();
        v84 = "requiresBiometricID";
LABEL_36:
        _os_signpost_emit_with_name_impl(&dword_1BD026000, v80, v81, v83, "progressState", v84, v82, 2u);
LABEL_37:
        v101 = v128;
        v100 = v129;
        v103 = v126;
        v102 = v127;
LABEL_38:
        MEMORY[0x1BFB45F20](v82, -1, -1);
        v38 = v78;
      }

      else
      {
LABEL_39:
        v38 = v78;
LABEL_40:
        v101 = v128;
        v100 = v129;
        v103 = v126;
        v102 = v127;
      }

LABEL_41:

      (*(v101 + 8))(v79, v100);
      return (*(v103 + 8))(v38, v102);
  }
}

unint64_t sub_1BDA77390(unint64_t result)
{
  if (result >= 0x11)
  {
    return 17;
  }

  return result;
}

uint64_t sub_1BDA773B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45E50, &unk_1BE0D5BC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BDA7741C()
{
  if (*(*(v0 + 16) + 24) == *(v0 + 24))
  {
    sub_1BDA75178(4, *(v0 + 32), 0, 0);
  }
}

void sub_1BDA7746C(uint64_t a1, char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  if (a9)
  {
    a9, a2, a3, a4, a5, a6, a7, a8;
    a2, v16, v17, v18, v19, v20, v21, v22;
    a5, v23, v24, v25, v26, v27, v28, v29;
    swift_unknownObjectRelease();

    sub_1BD0D4744(a13, a14, v30, v31, v32, v33, v34, v35);
  }
}

uint64_t sub_1BDA774FC(uint64_t a1)
{
  result = sub_1BE051C54();
  v2 = 16.0;
  if (result)
  {
    v2 = 20.0;
  }

  qword_1EBDAB928 = *&v2;
  return result;
}

uint64_t sub_1BDA7752C(uint64_t a1)
{
  result = sub_1BE051C54();
  v2 = 0x404A000000000000;
  if ((result & 1) == 0)
  {
    v2 = 0;
  }

  qword_1EBDAB930 = v2;
  byte_1EBDAB938 = (result & 1) == 0;
  return result;
}

uint64_t sub_1BDA77568(uint64_t a1)
{
  result = sub_1BE051C54();
  v2 = 8.0;
  if (result)
  {
    v2 = 26.0;
  }

  qword_1EBDAB940 = *&v2;
  return result;
}

void sub_1BDA77598(uint64_t a1)
{
  PKScreenScale();
  v2 = [objc_allocWithZone(MEMORY[0x1E69A8A30]) initWithSize:45.0 scale:{45.0, v1}];
  [v2 setShape_];
  [v2 continuousCornerRadius];
  v4 = v3;

  qword_1EBDAB948 = v4;
}

uint64_t sub_1BDA77624()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v17);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  return v17;
}

void sub_1BDA77698()
{
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  sub_1BE04D8B4(v32);
  KeyPath, v3, v4, v5, v6, v7, v8, v9;
  v2, v10, v11, v12, v13, v14, v15, v16;
  v17 = v32[0];
  if (v32[0])
  {
    goto LABEL_6;
  }

  v18 = *(v0 + 48);
  if (!v18 || [v18 isCancelled])
  {
    v19 = objc_allocWithZone(MEMORY[0x1E696F280]);
    v20 = sub_1BE052404();
    v21 = [v19 initWithIdentifierString_];

    if (v21)
    {
      v22 = [objc_allocWithZone(MEMORY[0x1E696F290]) initWithMapItemIdentifier_];
      v23 = swift_allocObject();
      swift_weakInit();
      v32[4] = sub_1BDA79A90;
      v33 = v23;
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 1107296256;
      v32[2] = sub_1BD14E1D8;
      v32[3] = &block_descriptor_250;
      v24 = _Block_copy(v32);
      v33, v25, v26, v27, v28, v29, v30, v31;
      [v22 getMapItemWithCompletionHandler_];

      _Block_release(v24);
      v17 = *(v0 + 48);
      *(v0 + 48) = v22;
LABEL_6:
    }
  }
}

uint64_t sub_1BDA77848(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v5 = a1;
    return sub_1BE04D8C4();
  }

  return result;
}

uint64_t sub_1BDA778DC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v8[3], a2, a3, a4, a5, a6, a7, a8;
  v8[5], v9, v10, v11, v12, v13, v14, v15;

  v16 = OBJC_IVAR____TtCV9PassKitUIP33_FE2A8FD2BD64DB9E6104A81DA981D7FB19TileContextMapsView9ViewModel__mapItem;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D5C0, &qword_1BE113028);
  (*(*(v17 - 8) + 8))(v8 + v16, v17);

  return swift_deallocClassInstance();
}

uint64_t sub_1BDA7799C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for TileContextMapsView.ViewModel(0);
  result = sub_1BE04D814();
  *a2 = result;
  return result;
}

uint64_t sub_1BDA779DC(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == v3[3];
  if (v4 || (v5 = sub_1BE053B84(), result = 0, (v5 & 1) != 0))
  {
    if (*(v2 + 32) == v3[4] && *(v2 + 40) == v3[5])
    {
      return 1;
    }

    else
    {

      return sub_1BE053B84();
    }
  }

  return result;
}

uint64_t sub_1BDA77A60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v92 = a1;
  v93 = a2;
  v90 = a3;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D5D8, &qword_1BE113088);
  MEMORY[0x1EEE9AC00](v89);
  v88 = &v76 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D5E0, &unk_1BE113090);
  v86 = *(v6 - 8);
  v87 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v85 = &v76 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37330, &qword_1BE0B1350);
  v83 = *(v8 - 8);
  v84 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v91 = &v76 - v9;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D5E8, &qword_1BE1130A0);
  v82 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v79 = &v76 - v10;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D5F0, &qword_1BE1130A8);
  v80 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v77 = &v76 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D5F8, &qword_1BE1130B0);
  v76 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v76 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D600, &qword_1BE1130B8);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v76 - v17;
  v94 = a1;
  v95 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D608, &qword_1BE1130C0);
  sub_1BD0DE4F4(&qword_1EBD5D610, &qword_1EBD5D608, &qword_1BE1130C0, MEMORY[0x1E6981F48]);
  sub_1BE0504E4();
  v19 = sub_1BE04FB94();
  v20 = *(v19 - 1);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04FB84();
  v23 = sub_1BD0DE4F4(&qword_1EBD5D618, &qword_1EBD5D600, &qword_1BE1130B8, MEMORY[0x1E697CD20]);
  v24 = MEMORY[0x1E697C750];
  sub_1BE051144();
  (*(v20 + 8))(v22, v19);
  (*(v16 + 8))(v18, v15);
  sub_1BE050234();
  v97 = v15;
  v98 = v19;
  v99 = v23;
  v100 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = v77;
  sub_1BE050904();
  (*(v76 + 8))(v14, v12);
  sub_1BE0501C4();
  v27 = sub_1BE04F424();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v76 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04F414();
  v97 = v12;
  v98 = OpaqueTypeConformance2;
  v31 = swift_getOpaqueTypeConformance2();
  v32 = v79;
  v33 = v78;
  sub_1BE0508F4();
  (*(v28 + 8))(v30, v27);
  (*(v80 + 8))(v26, v33);
  v97 = v33;
  v98 = v31;
  swift_getOpaqueTypeConformance2();
  v34 = v81;
  sub_1BE050D24();
  (v82[1])(v32, v34);
  sub_1BE0528A4();
  v35 = v93;
  sub_1BE048964();
  v36 = sub_1BE052894();
  v37 = swift_allocObject();
  v38 = MEMORY[0x1E69E85E0];
  v37[2] = v36;
  v37[3] = v38;
  v37[4] = v92;
  v37[5] = v35;
  v39 = sub_1BE0528D4();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF0;
  v43 = &v76 - v42;
  sub_1BE0528B4();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v81 = sub_1BE04EAA4();
    v82 = &v76;
    v80 = *(v81 - 8);
    MEMORY[0x1EEE9AC00](v81);
    v45 = &v76 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
    v97 = 0;
    v98 = 0xE000000000000000;
    sub_1BE053834();
    v98, v46, v47, v48, v49, v50, v51, v52;
    v97 = 0xD000000000000030;
    v98 = 0x80000001BE149770;
    v96 = 104;
    v53 = sub_1BE053B24();
    v55 = v54;
    MEMORY[0x1BFB3F610](v53);
    v55, v56, v57, v58, v59, v60, v61, v62;
    v64 = MEMORY[0x1EEE9AC00](v63);
    (*(v40 + 16))(&v76 - v42, v43, v39, v64);
    sub_1BE04EA94();
    (*(v40 + 8))(v43, v39);
    v65 = v85;
    (*(v83 + 32))(v85, v91, v84);
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37338, &qword_1BE0B1358);
    (*(v80 + 32))(&v65[*(v66 + 36)], v45, v81);
  }

  else
  {
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37340, &unk_1BE0B1360);
    v65 = v85;
    v68 = &v85[*(v67 + 36)];
    v69 = sub_1BE04E7B4();
    (*(v40 + 32))(&v68[*(v69 + 20)], &v76 - v42, v39);
    *v68 = &unk_1BE1130D0;
    *(v68 + 1) = v37;
    (*(v83 + 32))(v65, v91, v84);
  }

  v70 = swift_allocObject();
  v71 = v93;
  *(v70 + 16) = v92;
  *(v70 + 24) = v71;
  v72 = v88;
  (*(v86 + 32))(v88, v65, v87);
  v73 = v90;
  v74 = (v72 + *(v89 + 36));
  *v74 = 0;
  v74[1] = 0;
  v74[2] = sub_1BDA79B78;
  v74[3] = v70;
  sub_1BD0D1CDC(v72, v73);
  return sub_1BE048964();
}

uint64_t sub_1BDA7855C@<X0>(char *a1@<X0>, char *a2@<X1>, char *a3@<X8>)
{
  v71 = a1;
  v72 = a2;
  v82 = a3;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D620, &qword_1BE1130D8);
  v68 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v67 = &v67 - v3;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D628, &qword_1BE1130E0);
  MEMORY[0x1EEE9AC00](v75);
  v78 = &v67 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D630, &qword_1BE1130E8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v81 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v79 = &v67 - v8;
  v9 = sub_1BE04CE54();
  MEMORY[0x1EEE9AC00](v9);
  v69 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D638, &qword_1BE1130F0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v67 - v12;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D640, &qword_1BE1130F8);
  MEMORY[0x1EEE9AC00](v73);
  v15 = &v67 - v14;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D648, &qword_1BE113100);
  MEMORY[0x1EEE9AC00](v70);
  v17 = &v67 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D650, &qword_1BE113108);
  v76 = *(v18 - 8);
  v77 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v74 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v67 - v21;
  sub_1BE04CE14();
  v23 = sub_1BE04CE24();
  (*(*(v23 - 8) + 56))(v13, 0, 1, v23);
  *&v100[0] = MEMORY[0x1E69E7CC0];
  sub_1BDA79B8C(&qword_1EBD5D658, MEMORY[0x1E6985CD8], MEMORY[0x1E6985CE0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D660, &qword_1BE113110);
  v24 = v71;
  sub_1BD0DE4F4(&qword_1EBD5D668, &qword_1EBD5D660, &qword_1BE113110, MEMORY[0x1E69E6328]);
  v25 = v72;
  sub_1BE053664();
  v83 = v24;
  v84 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D670, &qword_1BE113118);
  sub_1BDA79BDC();
  sub_1BE04CE04();
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v26 = &v15[*(v73 + 36)];
  v27 = v103;
  *v26 = v102;
  *(v26 + 1) = v27;
  *(v26 + 2) = v104;
  sub_1BDA79C8C();
  sub_1BE0506F4();
  sub_1BD0DE53C(v15, &qword_1EBD5D640, &qword_1BE1130F8);
  v28 = &v17[*(v70 + 36)];
  v28[32] = 0;
  *v28 = 0u;
  *(v28 + 1) = 0u;
  sub_1BE04E554();
  sub_1BDA79D44();
  v73 = v22;
  sub_1BE050BB4();
  sub_1BD0D1D4C(v17);
  KeyPath = swift_getKeyPath();
  v30 = swift_getKeyPath();
  sub_1BE04D8B4(v100);
  KeyPath, v31, v32, v33, v34, v35, v36, v37;
  v30, v38, v39, v40, v41, v42, v43, v44;
  v45 = *&v100[0];
  if (*&v100[0])
  {
    v46 = swift_allocObject();
    *(v46 + 16) = v45;
    MEMORY[0x1EEE9AC00](v46);
    *(&v67 - 2) = v24;
    *(&v67 - 1) = v25;
    v47 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D6B8, &qword_1BE113140);
    sub_1BD0DE4F4(&qword_1EBD5D6C8, &qword_1EBD5D6B8, &qword_1BE113140, MEMORY[0x1E69817F8]);
    v48 = v67;
    sub_1BE051704();
    v49 = v68;
    v50 = v80;
    (*(v68 + 16))(v78, v48, v80);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD5D6C0, &qword_1EBD5D620, &qword_1BE1130D8, MEMORY[0x1E697D680]);
    v51 = v79;
    sub_1BE04F9A4();

    (*(v49 + 8))(v48, v50);
  }

  else
  {
    v52 = sub_1BE04F504();
    v93 = 1;
    sub_1BDA792F4(0, &v86);
    v96 = v88;
    v97 = v89;
    v98 = v90;
    v99 = v91;
    v94 = v86;
    v95 = v87;
    v101 = v91;
    v100[2] = v88;
    v100[3] = v89;
    v100[4] = v90;
    v100[0] = v86;
    v100[1] = v87;
    sub_1BD0DE19C(&v94, &v85, &qword_1EBD5D6B0, &qword_1BE113138);
    sub_1BD0DE53C(v100, &qword_1EBD5D6B0, &qword_1BE113138);
    *(&v92[2] + 7) = v96;
    *(&v92[3] + 7) = v97;
    *(&v92[4] + 7) = v98;
    *(&v92[5] + 7) = v99;
    *(v92 + 7) = v94;
    *(&v92[1] + 7) = v95;
    v53 = v92[3];
    v54 = v78;
    *(v78 + 49) = v92[2];
    *(v54 + 65) = v53;
    *(v54 + 81) = v92[4];
    *(v54 + 6) = *(&v92[4] + 15);
    v55 = v92[0];
    *(v54 + 33) = v92[1];
    v56 = v93;
    *v54 = v52;
    *(v54 + 1) = 0;
    v54[16] = v56;
    *(v54 + 17) = v55;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D6B8, &qword_1BE113140);
    sub_1BD0DE4F4(&qword_1EBD5D6C0, &qword_1EBD5D620, &qword_1BE1130D8, MEMORY[0x1E697D680]);
    sub_1BD0DE4F4(&qword_1EBD5D6C8, &qword_1EBD5D6B8, &qword_1BE113140, MEMORY[0x1E69817F8]);
    v51 = v79;
    sub_1BE04F9A4();
  }

  v58 = v76;
  v57 = v77;
  v59 = *(v76 + 16);
  v61 = v73;
  v60 = v74;
  v59(v74, v73, v77);
  v62 = v81;
  sub_1BD0DE19C(v51, v81, &qword_1EBD5D630, &qword_1BE1130E8);
  v63 = v82;
  v59(v82, v60, v57);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D6D0, &qword_1BE113148);
  sub_1BD0DE19C(v62, &v63[*(v64 + 48)], &qword_1EBD5D630, &qword_1BE1130E8);
  sub_1BD0DE53C(v51, &qword_1EBD5D630, &qword_1BE1130E8);
  v65 = *(v58 + 8);
  v65(v61, v57);
  sub_1BD0DE53C(v62, &qword_1EBD5D630, &qword_1BE1130E8);
  return (v65)(v60, v57);
}

uint64_t sub_1BDA78F68@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D688, &qword_1BE113120);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - v5;
  KeyPath = swift_getKeyPath();
  v8 = swift_getKeyPath();
  sub_1BE04D8B4(&v26);
  KeyPath, v9, v10, v11, v12, v13, v14, v15;
  v8, v16, v17, v18, v19, v20, v21, v22;
  if (v26)
  {
    sub_1BE04CE84();
    (*(v4 + 32))(a2, v6, v3);
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  return (*(v4 + 56))(a2, v23, 1, v3);
}

double sub_1BDA790C8@<D0>(uint64_t a3@<X8>)
{
  v4 = sub_1BE04F504();
  v17 = 1;
  sub_1BDA792F4(1, &v10);
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v23 = v15;
  v18 = v10;
  v19 = v11;
  v25 = v15;
  v24[2] = v12;
  v24[3] = v13;
  v24[4] = v14;
  v24[0] = v10;
  v24[1] = v11;
  sub_1BD0DE19C(&v18, v9, &qword_1EBD5D6B0, &qword_1BE113138);
  sub_1BD0DE53C(v24, &qword_1EBD5D6B0, &qword_1BE113138);
  *&v16[39] = v20;
  *&v16[55] = v21;
  *&v16[71] = v22;
  *&v16[87] = v23;
  *&v16[7] = v18;
  *&v16[23] = v19;
  v5 = *&v16[48];
  *(a3 + 49) = *&v16[32];
  *(a3 + 65) = v5;
  *(a3 + 81) = *&v16[64];
  *(a3 + 96) = *&v16[79];
  result = *&v16[16];
  v7 = *v16;
  *(a3 + 33) = *&v16[16];
  v8 = v17;
  *a3 = v4;
  *(a3 + 8) = 0;
  *(a3 + 16) = v8;
  *(a3 + 17) = v7;
  return result;
}

uint64_t sub_1BDA791F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1BE0528A4();
  *(v4 + 24) = sub_1BE052894();
  v6 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BDA79290, v6, v5);
}

uint64_t sub_1BDA79290(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  sub_1BDA77698();
  v9 = *(v8 + 8);

  return v9();
}

void sub_1BDA792F4(char a2@<W2>, uint64_t a3@<X8>)
{
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v5 = sub_1BE0506C4();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if (a2)
  {
    v12 = sub_1BE051574();
    v13 = sub_1BE050324();
    KeyPath = swift_getKeyPath();
    v15 = [objc_opt_self() tertiaryLabelColor];
    v16 = sub_1BE0511C4();
    v17 = swift_getKeyPath();
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
  }

  else
  {
    v12 = 0;
    KeyPath = 0;
    v13 = 0;
    v17 = 0;
    v16 = 0;
  }

  v18 = (v9 & 1);
  sub_1BD0D7F18(v5, v7, v18);
  sub_1BE048C84();
  sub_1BDA79E54(v12);
  sub_1BDA79EC4(v12, KeyPath, v13, v17, v16, v19, v20, v21);
  *a3 = v5;
  *(a3 + 8) = v7;
  *(a3 + 16) = v18;
  *(a3 + 24) = v11;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  *(a3 + 48) = v12;
  *(a3 + 56) = KeyPath;
  *(a3 + 64) = v13;
  *(a3 + 72) = v17;
  *(a3 + 80) = v16;
  sub_1BDA79EC4(v12, KeyPath, v13, v17, v16, v22, v23, v24);
  sub_1BD0DDF10(v5, v7, v18, v25, v26, v27, v28, v29);
  v11, v30, v31, v32, v33, v34, v35, v36;
}

uint64_t sub_1BDA794EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = v2[2] == v3[2] && v2[3] == v3[3];
  if (v4 || (v5 = sub_1BE053B84(), result = 0, (v5 & 1) != 0))
  {
    if (v2[4] == v3[4] && v2[5] == v3[5])
    {
      return 1;
    }

    else
    {

      return sub_1BE053B84();
    }
  }

  return result;
}

id TileContextMapsViewHost.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TileContextMapsViewHost.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TileContextMapsViewHost();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TileContextMapsViewHost.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for TileContextMapsViewHost();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1BDA796D0(void *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  *a2 = v19;
}

uint64_t sub_1BDA79750(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t _s9PassKitUI23TileContextMapsViewHostC9createFor11mapsPlaceID7captionSo6UIViewCSS_SStFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TileContextMapsView.ViewModel(0);
  v8 = swift_allocObject();
  v8[6] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D5B8, &qword_1BE112EE8);
  sub_1BE04D874();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  sub_1BDA79B8C(&qword_1EBD5D5C8, type metadata accessor for TileContextMapsView.ViewModel, &unk_1BE112FA4);
  sub_1BE048C84();
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BE04E954();
  v9 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5D5D0, qword_1BE113030));
  v10 = sub_1BE04EAC4();
  v8, v11, v12, v13, v14, v15, v16, v17;
  return v10;
}

uint64_t type metadata accessor for TileContextMapsView.ViewModel(uint64_t a1)
{
  result = qword_1EBD5D5A0;
  if (!qword_1EBD5D5A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BDA79984(uint64_t a1)
{
  sub_1BDA79A2C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1BDA79A2C(uint64_t a1)
{
  if (!qword_1EBD5D5B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D5B8, &qword_1BE112EE8);
    v1 = sub_1BE04D8D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD5D5B0);
    }
  }
}

uint64_t sub_1BDA79ACC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1BD0F985C;

  return sub_1BDA791F8(v2, v3, v5, v4);
}

uint64_t sub_1BDA79B8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BDA79BDC()
{
  result = qword_1EBD5D678;
  if (!qword_1EBD5D678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D670, &qword_1BE113118);
    sub_1BD0DE4F4(&qword_1EBD5D680, &qword_1EBD5D688, &qword_1BE113120, MEMORY[0x1E6985CE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D678);
  }

  return result;
}

unint64_t sub_1BDA79C8C()
{
  result = qword_1EBD5D690;
  if (!qword_1EBD5D690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D640, &qword_1BE1130F8);
    sub_1BD0DE4F4(&qword_1EBD5D698, &qword_1EBD5D6A0, &unk_1BE113128, MEMORY[0x1E6985CC8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D690);
  }

  return result;
}

unint64_t sub_1BDA79D44()
{
  result = qword_1EBD5D6A8;
  if (!qword_1EBD5D6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D648, &qword_1BE113100);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D640, &qword_1BE1130F8);
    sub_1BDA79C8C();
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8, &qword_1BE0B8CD0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D6A8);
  }

  return result;
}

uint64_t sub_1BDA79E54(uint64_t result)
{
  if (result)
  {
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();

    return sub_1BE048964();
  }

  return result;
}

void sub_1BDA79EC4(void *a1, char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a1)
  {
    a1, a2, a3, a4, a5, a6, a7, a8;
    a2, v12, v13, v14, v15, v16, v17, v18;
    a4, v19, v20, v21, v22, v23, v24, v25;
    a3, v26, v27, v28, v29, v30, v31, v32;

    a5, v33, v34, v35, v36, v37, v38, v39;
  }
}

unint64_t sub_1BDA79F30()
{
  result = qword_1EBD5D6D8;
  if (!qword_1EBD5D6D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D5D8, &qword_1BE113088);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD37330, &qword_1BE0B1350);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D5E8, &qword_1BE1130A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D5F0, &qword_1BE1130A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D5F8, &qword_1BE1130B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5D600, &qword_1BE1130B8);
    sub_1BE04FB94();
    sub_1BD0DE4F4(&qword_1EBD5D618, &qword_1EBD5D600, &qword_1BE1130B8, MEMORY[0x1E697CD20]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD5D6D8);
  }

  return result;
}

void sub_1BDA7A178(void *a1)
{
  v2 = a1[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = &v4[v2];
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (a1[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v25 = &v4[v2];
  }

  else
  {
    v25 = v4;
  }

  v3 = sub_1BD1D7488(isUniquelyReferenced_nonNull_native, v25, 1, v3);
  if (!a1[2])
  {
LABEL_13:
    a1, v8, v9, v10, v11, v12, v13, v14;
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BC48, &qword_1BE0BD2F0);
  swift_arrayInitWithCopy();
  a1, v15, v16, v17, v18, v19, v20, v21;
  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v22 = v3[2];
  v23 = __OFADD__(v22, v2);
  v24 = v22 + v2;
  if (!v23)
  {
    v3[2] = v24;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1BDA7A2D4(void *a1)
{
  v2 = a1[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = &v4[v2];
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (a1[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v25 = &v4[v2];
  }

  else
  {
    v25 = v4;
  }

  v3 = sub_1BD1D7948(isUniquelyReferenced_nonNull_native, v25, 1, v3, v11, v12, v13, v14);
  if (!a1[2])
  {
LABEL_13:
    a1, v8, v9, v10, v11, v12, v13, v14;
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
  swift_arrayInitWithCopy();
  a1, v15, v16, v17, v18, v19, v20, v21;
  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v22 = v3[2];
  v23 = __OFADD__(v22, v2);
  v24 = v22 + v2;
  if (!v23)
  {
    v3[2] = v24;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1BDA7A3D8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v14 = v8;
  v15 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v16 = sub_1BE053704();
  }

  else
  {
    v16 = *(a1 + 16);
  }

  if (!(*v8 >> 62))
  {
    if (!__OFADD__(*((*v8 & 0xFFFFFFFFFFFFFF8) + 0x10), v16))
    {
      goto LABEL_6;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(sub_1BE053704(), v16))
  {
    goto LABEL_14;
  }

LABEL_6:
  sub_1BD1DED90();
  v9 = *v8;
  v10 = *v8 & 0xFFFFFFFFFFFFFF8;
  v17 = *(v10 + 0x10);
  v18 = ((*(v10 + 0x18) >> 1) - v17);
  v19 = sub_1BD5ED998(&v41, (v10 + 8 * v17 + 32), v18, v15);
  if (v19 < v16)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v19 >= 1)
  {
    v20 = *(v10 + 16);
    v21 = __OFADD__(v20, v19);
    v22 = v19 + v20;
    if (v21)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v10 + 16) = v22;
  }

  if (v19 != v18)
  {
LABEL_11:
    sub_1BD0D45FC(v41, v42, v43, v44, v45, a6, a7, a8);
    *v14 = v9;
    return;
  }

LABEL_16:
  v11 = *(v10 + 16);
  v10 = v41;
  v12 = v42;
  v15 = v44;
  v38 = v43;
  v13 = v45;
  if (v41 < 0)
  {
LABEL_20:
    if (!sub_1BE053744())
    {
      goto LABEL_11;
    }

    sub_1BD0E5E8C(0, &qword_1EBD398B8, 0x1E69B85A0);
    swift_dynamicCast();
    v24 = v40;
    goto LABEL_31;
  }

  if (!v45)
  {
    v25 = (v43 + 64) >> 6;
    if (v25 <= (v44 + 1))
    {
      v26 = v44 + 1;
    }

    else
    {
      v26 = ((v43 + 64) >> 6);
    }

    v27 = v26 - 1;
    while (1)
    {
      v23 = (v15 + 1);
      if (__OFADD__(v15, 1))
      {
        goto LABEL_59;
      }

      if (v23 >= v25)
      {
        v24 = 0;
        v13 = 0;
        goto LABEL_30;
      }

      v13 = *&v42[8 * v23];
      ++v15;
      if (v13)
      {
        goto LABEL_29;
      }
    }
  }

  v23 = v44;
LABEL_29:
  v28 = __clz(__rbit64(v13));
  v13 &= v13 - 1;
  v24 = *(*(v41 + 48) + ((v23 << 9) | (8 * v28)));
  v29 = v24;
  v27 = v23;
LABEL_30:
  v44 = v27;
  v45 = v13;
  v15 = v27;
LABEL_31:
  if (!v24)
  {
    goto LABEL_11;
  }

  v30 = (v38 + 64) >> 6;
LABEL_33:
  if (v11 + 1 > *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BE052774();
  }

  v9 = *v14;
  v31 = *((*v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v37 = *v14 & 0xFFFFFFFFFFFFFF8;
  if (v11 > v31)
  {
    v31 = v11;
  }

  v39 = v31;
  while (1)
  {
    while (1)
    {
      if (v11 == v39)
      {
        v11 = v39;
        *(v37 + 16) = v39;
        goto LABEL_33;
      }

      *(v37 + 32 + 8 * v11++) = v24;
      if ((v10 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (sub_1BE053744())
      {
        sub_1BD0E5E8C(0, &qword_1EBD398B8, 0x1E69B85A0);
        swift_dynamicCast();
        v24 = v40;
        if (v40)
        {
          continue;
        }
      }

      goto LABEL_56;
    }

    if (!v13)
    {
      break;
    }

    v32 = v15;
LABEL_54:
    v35 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v24 = *(*(v10 + 48) + ((v32 << 9) | (8 * v35)));
    v36 = v24;
    v34 = v32;
LABEL_39:
    v41 = v10;
    v42 = v12;
    v43 = v38;
    v44 = v34;
    v15 = v34;
    v45 = v13;
    if (!v24)
    {
LABEL_56:
      *(v37 + 16) = v11;
      goto LABEL_11;
    }
  }

  if (v30 <= (v15 + 1))
  {
    v33 = (v15 + 1);
  }

  else
  {
    v33 = (v38 + 64) >> 6;
  }

  v34 = (v33 - 1);
  while (1)
  {
    v32 = (v15 + 1);
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v32 >= v30)
    {
      v24 = 0;
      v13 = 0;
      goto LABEL_39;
    }

    v13 = *&v12[8 * v32];
    ++v15;
    if (v13)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
}

void sub_1BDA7A810(void *a1)
{
  v2 = a1[2];
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (a1[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v25 = v4 + v2;
  }

  else
  {
    v25 = v4;
  }

  v3 = sub_1BD1D7D24(isUniquelyReferenced_nonNull_native, v25, 1, v3, v11, v12, v13, v14);
  if (!a1[2])
  {
LABEL_13:
    a1, v8, v9, v10, v11, v12, v13, v14;
    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();
  a1, v15, v16, v17, v18, v19, v20, v21;
  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v22 = *(v3 + 2);
  v23 = __OFADD__(v22, v2);
  v24 = v22 + v2;
  if (!v23)
  {
    *(v3 + 2) = v24;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1BDA7A95C(void *a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = a1[2];
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (a1[2])
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!a1[2])
  {
LABEL_10:
    a1, v10, v11, v12, v13, v14, v15, v16;
    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v17 = (*(v5 + 24) >> 1) - *(v5 + 16);
  a3(0);
  if (v17 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();
  a1, v18, v19, v20, v21, v22, v23, v24;
  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return;
  }

  v25 = *(v5 + 16);
  v26 = __OFADD__(v25, v4);
  v27 = v25 + v4;
  if (!v26)
  {
    *(v5 + 16) = v27;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
}

void sub_1BDA7AB7C(void *a1)
{
  v2 = a1[2];
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (a1[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v25 = v4 + v2;
  }

  else
  {
    v25 = v4;
  }

  v3 = sub_1BD1D94C0(isUniquelyReferenced_nonNull_native, v25, 1, v3, v11, v12, v13, v14);
  if (!a1[2])
  {
LABEL_13:
    a1, v8, v9, v10, v11, v12, v13, v14;
    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();
  a1, v15, v16, v17, v18, v19, v20, v21;
  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v22 = *(v3 + 2);
  v23 = __OFADD__(v22, v2);
  v24 = v22 + v2;
  if (!v23)
  {
    *(v3 + 2) = v24;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1BDA7AC88(void *a1, uint64_t a2)
{
  v3 = a1[2];
  v4 = *v2;
  v5 = *(*v2 + 16);
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (swift_isUniquelyReferenced_nonNull_native() && v5 + v3 <= *(v4 + 24) >> 1)
  {
    if (a1[2])
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v4 = sub_1BE053884();
  if (!a1[2])
  {
LABEL_10:
    a1, v7, v8, v9, v10, v11, v12, v13;
    if (!v3)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v4 + 24) >> 1) - *(v4 + 16) < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();
  a1, v14, v15, v16, v17, v18, v19, v20;
  if (!v3)
  {
LABEL_11:
    *v2 = v4;
    return;
  }

  v21 = *(v4 + 16);
  v22 = __OFADD__(v21, v3);
  v23 = v21 + v3;
  if (!v22)
  {
    *(v4 + 16) = v23;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
}

void sub_1BDA7AD84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v11 = a1;
  v12 = *(a1 + 16);
  if (!(*v8 >> 62))
  {
    v13 = *((*v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v14 = __OFADD__(v13, v12);
    v15 = v13 + v12;
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v25 = sub_1BE053704();
  v14 = __OFADD__(v25, v12);
  v15 = v25 + v12;
  if (v14)
  {
    goto LABEL_12;
  }

LABEL_3:
  sub_1BD1DED90();
  v9 = *v8;
  v10 = *v8 & 0xFFFFFFFFFFFFFF8;
  v16 = *(v10 + 0x10);
  v17 = (*(v10 + 0x18) >> 1) - v16;
  v15 = sub_1BD5EDF70(&v45, (v10 + 8 * v16 + 32), v17, v11);
  if (v15 < v12)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v20 = v15;
  if (v15 >= 1)
  {
    v21 = *(v10 + 16);
    v14 = __OFADD__(v21, v15);
    v22 = v21 + v15;
    if (v14)
    {
      __break(1u);
      goto LABEL_17;
    }

    *(v10 + 16) = v22;
  }

  v15 = v45;
  if (v20 != v17)
  {
    v18 = v46;
    v19 = v47;
    v23 = v48;
    v24 = v49;
LABEL_9:
    sub_1BD0D45FC(v15, v18, v19, v23, v24, a6, a7, a8);
    *v8 = v9;
    return;
  }

LABEL_14:
  v11 = *(v10 + 16);
  v18 = v46;
  v19 = v47;
  v10 = v48;
  v43 = v47;
  v44 = v46;
  if (v49)
  {
    v26 = (v49 - 1) & v49;
    v27 = __clz(__rbit64(v49)) | (v48 << 6);
    v28 = (v47 + 64) >> 6;
LABEL_25:
    v32 = v15;
    v33 = *(*(v15 + 56) + 8 * v27);
    v34 = v33;
    v35 = v33;
    v19 = v43;
    v18 = v44;
    while (1)
    {
LABEL_27:
      if (v11 + 1 > *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v41 = v35;
        sub_1BE052774();
        v35 = v41;
        v19 = v43;
        v18 = v44;
      }

      v9 = *v8;
      v36 = *v8 & 0xFFFFFFFFFFFFFF8;
      v37 = *(v36 + 0x18) >> 1;
      if (v11 < v37)
      {
        break;
      }

      *((*v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v11;
    }

    while (1)
    {
      *(v36 + 32 + 8 * v11++) = v35;
      if (!v26)
      {
        break;
      }

      v15 = v32;
LABEL_37:
      v40 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
      v35 = *(*(v15 + 56) + ((v10 << 9) | (8 * v40)));
      v19 = v43;
      v18 = v44;
      if (v11 == v37)
      {
        v11 = v37;
        *(v36 + 16) = v37;
        goto LABEL_27;
      }
    }

    v38 = v10;
    v15 = v32;
    while (1)
    {
      v39 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        __break(1u);
        goto LABEL_45;
      }

      if (v39 >= v28)
      {
        break;
      }

      v26 = *&v18[8 * v39];
      ++v38;
      if (v26)
      {
        v10 = v39;
        goto LABEL_37;
      }
    }

    v24 = 0;
    if (v28 <= v10 + 1)
    {
      v42 = v10 + 1;
    }

    else
    {
      v42 = v28;
    }

    v23 = (v42 - 1);
    *(v36 + 16) = v11;
    goto LABEL_9;
  }

LABEL_17:
  v28 = (v19 + 64) >> 6;
  if (v28 <= v10 + 1)
  {
    v29 = v10 + 1;
  }

  else
  {
    v29 = (v19 + 64) >> 6;
  }

  v23 = (v29 - 1);
  while (1)
  {
    v30 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v30 >= v28)
    {
      v24 = 0;
      goto LABEL_9;
    }

    v31 = *&v18[8 * v30];
    ++v10;
    if (v31)
    {
      v26 = (v31 - 1) & v31;
      v27 = __clz(__rbit64(v31)) | (v30 << 6);
      v10 = v30;
      goto LABEL_25;
    }
  }

LABEL_45:
  __break(1u);
}

void sub_1BDA7B04C(unint64_t a1, void (*a2)(void), uint64_t (*a3)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v7 = sub_1BE053704();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v3 >> 62))
  {
    if (!__OFADD__(*((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10), v7))
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (__OFADD__(sub_1BE053704(), v7))
  {
    goto LABEL_13;
  }

LABEL_5:
  a2();
  v8 = *v3;
  v9 = *v3 & 0xFFFFFFFFFFFFFF8;
  v10 = a3(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v12 = v11;
  v10, v13, v11, v14, v15, v16, v17, v18;
  if (v12 < v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v3 = v8;
    return;
  }

  v19 = *(v9 + 16);
  v20 = __OFADD__(v19, v12);
  v21 = v19 + v12;
  if (!v20)
  {
    *(v9 + 16) = v21;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_1BDA7B14C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1BD5F0648(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1BDA7C344(v6);
  return sub_1BE0538D4();
}

uint64_t sub_1BDA7B2C8(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1BDA7B328(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9PassKitUI29WalletPrivacySettingsProvider_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BD3F0C10;
}

void sub_1BDA7B434()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v64 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v64 = &v64 - v5;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v64 - v8;
  v68 = MEMORY[0x1E69E7CC0];
  v10 = *MEMORY[0x1E69B80F0];
  v66 = *(v1 + 104);
  v66(&v64 - v8, v10, v0, v7);
  v11 = PKPassKitBundle();
  if (!v11)
  {
    __break(1u);
    goto LABEL_17;
  }

  v12 = v11;
  v13 = objc_opt_self();
  sub_1BE04B6F4();
  v15 = v14;

  v16 = *(v1 + 8);
  v67 = v1 + 8;
  v65 = v16;
  v16(v9, v0);
  v17 = sub_1BE052404();
  v15, v18, v19, v20, v21, v22, v23, v24;
  v25 = [v13 groupSpecifierWithName_];

  if (!v25)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v26 = v25;
  MEMORY[0x1BFB3F7A0]();
  if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BE052774();
  }

  sub_1BE0527C4();
  sub_1BDA7B89C();
  v35 = v0;
  if (!v27)
  {
LABEL_12:
    (v66)(v3, v10, v35);
    v51 = PKPassKitBundle();
    if (v51)
    {
      v52 = v51;
      sub_1BE04B6F4();
      v54 = v53;

      v65(v3, v35);
      v55 = sub_1BE052404();
      v54, v56, v57, v58, v59, v60, v61, v62;
      v63 = *MEMORY[0x1E69C5900];
      [v26 setProperty:v55 forKey:v63];

      goto LABEL_14;
    }

    goto LABEL_18;
  }

  v36 = v27;
  if (v27 >> 62)
  {
    v37 = sub_1BE053704();
  }

  else
  {
    v37 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v37 < 1)
  {
    v36, v28, v29, v30, v31, v32, v33, v34;
    goto LABEL_12;
  }

  v38 = v64;
  (v66)(v64, v10, v35);
  v39 = PKPassKitBundle();
  if (v39)
  {
    v40 = v39;
    sub_1BE04B6F4();
    v42 = v41;

    v65(v38, v35);
    v43 = sub_1BE052404();
    v42, v44, v45, v46, v47, v48, v49, v50;
    [v26 setProperty:v43 forKey:*MEMORY[0x1E69C5900]];

    sub_1BDA7B04C(v36, sub_1BD1DED90, sub_1BDA7E928);
LABEL_14:

    return;
  }

LABEL_19:
  __break(1u);
}

void sub_1BDA7B89C()
{
  v0 = [objc_opt_self() allAuthorizations];
  if (v0)
  {
    v1 = v0;
    sub_1BD0E5E8C(0, &qword_1EBD5D768, 0x1E69B8548);
    v2 = sub_1BE052744();

    v38 = MEMORY[0x1E69E7CC0];
    if (v2 >> 62)
    {
LABEL_19:
      v10 = sub_1BE053704();
    }

    else
    {
      v10 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = 0;
    v37 = MEMORY[0x1E69E7CC0];
    while (v10 != v11)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1BFB40900](v11, v2);
      }

      else
      {
        if (v11 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v12 = *(v2 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v15 = [v12 bundleIdentifier];
      v16 = sub_1BE052434();
      v18 = v17;

      sub_1BDA7BE54(v16, v18);
      v20 = v19;

      v18, v21, v22, v23, v24, v25, v26, v27;
      ++v11;
      if (v20)
      {
        MEMORY[0x1BFB3F7A0]();
        if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BE052774();
        }

        sub_1BE0527C4();
        v37 = v38;
        v11 = v14;
      }
    }

    v2, v3, v4, v5, v6, v7, v8, v9;
    v28 = sub_1BE048C84();
    v38 = sub_1BD6D3E90(v29, v28);
    sub_1BDA7B14C(&v38);
    v37, v30, v31, v32, v33, v34, v35, v36;
  }
}

void *sub_1BDA7BAC8(void *a1, void *a2)
{
  v5 = sub_1BE04D214();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE052404();
  v10 = [a2 propertyForKey_];

  if (v10)
  {
    sub_1BE053624();
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  v29[0] = v27;
  v29[1] = v28;
  if (*(&v28 + 1))
  {
    if (swift_dynamicCast())
    {
      v11 = v26[1];
      v12 = [a1 BOOLValue];
      v13 = objc_opt_self();
      v14 = sub_1BE052404();
      v11, v15, v16, v17, v18, v19, v20, v21;
      [v13 setAuthorizationForCapability:0 granted:v12 bundleIdentifier:v14];

      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        [result provider:v2 specifierDidChange:a2];
        return swift_unknownObjectRelease();
      }

      return result;
    }
  }

  else
  {
    sub_1BD0DE53C(v29, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  }

  sub_1BE04D1C4();
  v23 = sub_1BE04D204();
  v24 = sub_1BE052C34();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_1BD026000, v23, v24, "Expected bundleID property on specifier", v25, 2u);
    MEMORY[0x1BFB45F20](v25, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}