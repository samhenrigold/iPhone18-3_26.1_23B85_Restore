void sub_237B04410(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v115 = *a3;
  HIDWORD(v114) = *(a3 + 8);
  if ((v114 & 0x100000000) != 0)
  {
    v13 = MEMORY[0x2383DDAC0](0);
    if (!v13)
    {
LABEL_66:
      __break(1u);
      return;
    }

    v14 = v13;
    type metadata accessor for CMLSequence();
    v15 = swift_allocObject();
    v16 = v15;
    *(v15 + 16) = v14;
    *(v15 + 24) = 1;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_85();
    sub_2379DBCF4(v17, v18);
    sub_237B6C208(&v127);
    v19 = OUTLINED_FUNCTION_85();
    sub_2379DBC9C(v19, v20);
    v16 = v127;
  }

  v116 = a4;
  v117 = a5;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_17_14();
  *(v21 - 16) = &v116;
  v23 = sub_237AC1AB8(sub_2379F57B8, v22, v16);

  if ((v23 & 1) == 0)
  {
    sub_2379E8AF0();
    v75 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    *v76 = 0xD000000000000022;
    v76[1] = 0x8000000237C1BBE0;
    OUTLINED_FUNCTION_52(v75, v76);
    return;
  }

  v24 = v115;
  v127 = v115;
  v25 = BYTE4(v114);
  v128 = BYTE4(v114);
  MLDataTable.subscript.getter();
  OUTLINED_FUNCTION_16_22();
  MLUntypedColumn.dropDuplicates()(&v116, v26);
  sub_2379DBC9C(v123, v124);
  v127 = v116;
  v128 = v117;
  Array<A>.init(_:)(&v127);
  v28 = v27;
  v116 = v115;
  LOBYTE(v117) = BYTE4(v114);
  v29 = MLDataTable.size.getter();
  if (v29 < 0)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v108 = a1;
  v109 = a4;
  v98 = a8;
  v30 = sub_2379DFF68(0, v29);
  v127 = v115;
  v128 = BYTE4(v114);
  v116 = v115;
  LOBYTE(v117) = BYTE4(v114);
  sub_2379DBCF4(v115, SBYTE4(v114));
  v31 = MLDataTable.size.getter();
  v32 = sub_237AC7A20(0, v31);
  v102 = *(v28 + 16);
  if (v102)
  {
    v33 = 0;
    v103 = v28 + 32;
    v110 = v30;
    v97 = (v30 + 3);
    v100 = a5;
    v101 = v28;
    while (2)
    {
      if (v33 < *(v28 + 16))
      {
        v34 = v103 + 24 * v33;
        v35 = *v34;
        v36 = *(v34 + 8);
        v37 = *(v34 + 16);
        v104 = v33 + 1;
        v123 = v24;
        v124 = v25;
        sub_2379E9288(v35, v36, v37);
        MLDataTable.subscript.getter();
        v119 = v121;
        v120 = v122;
        v107 = v35;
        v116 = v35;
        v117 = v36;
        v106 = v36;
        HIDWORD(v105) = v37;
        v118 = v37;
        sub_237BBF460();
        sub_2379DBC9C(v119, v120);
        v116 = v125;
        LOBYTE(v117) = v126;
        Array<A>.init(_:)(&v116);
        v39 = v38;
        v40 = 0;
        v41 = v38 + 48;
        v42 = MEMORY[0x277D84F90];
        v43 = v110;
LABEL_11:
        v44 = *(v39 + 16);
        v45 = (v41 + 24 * v40);
        while (v44 != v40)
        {
          if (v40 >= v44)
          {
            goto LABEL_61;
          }

          v46 = v45;
          v47 = *(v43 + 16);
          if (v40 == v47)
          {
            break;
          }

          if (v40 >= v47)
          {
            goto LABEL_62;
          }

          v45 = v46 + 24;
          ++v40;
          if (!*v46 && *(v46 - 2) == 1)
          {
            v48 = *(v46 - 1);
            v129 = *(v97 + 8 * v40);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v116 = v42;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_237AC8B74();
              v43 = v110;
              v42 = v116;
            }

            v51 = v42[2];
            v50 = v42[3];
            if (v51 >= v50 >> 1)
            {
              OUTLINED_FUNCTION_106(v50);
              sub_237AC8B74();
              v43 = v110;
              v42 = v116;
            }

            v42[2] = v51 + 1;
            v52 = &v42[4 * v51];
            v52[4] = 1;
            v52[5] = v48;
            *(v52 + 48) = 0;
            v52[7] = v129;
            goto LABEL_11;
          }
        }

        v53 = v42[2];
        if (v53)
        {
          v116 = MEMORY[0x277D84F90];
          sub_237AC8A34(0, v53, 0);
          v54 = 0;
          v55 = v116;
          v56 = 7;
          while (v54 < v42[2])
          {
            v57 = v42[v56];
            v116 = v55;
            v59 = v55[2];
            v58 = v55[3];
            if (v59 >= v58 >> 1)
            {
              v60 = OUTLINED_FUNCTION_106(v58);
              sub_237AC8A34(v60, v59 + 1, 1);
              v55 = v116;
            }

            ++v54;
            v55[2] = v59 + 1;
            v55[v59 + 4] = v57;
            v56 += 4;
            if (v53 == v54)
            {

              goto LABEL_31;
            }
          }

          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
          break;
        }

        v55 = MEMORY[0x277D84F90];
LABEL_31:
        v61 = sub_2379DFF68(0, v55[2]);
        sub_237B03EA4(v61, v108, a2, a6, a7);
        if (v8)
        {
LABEL_59:
          sub_2379DBC9C(v127, v128);

          OUTLINED_FUNCTION_12_31();

          return;
        }

        v63 = v62;

        v129 = *(v108 + 16);
        if (v129)
        {
          v64 = 0;
          v65 = v63 + 32;
          while (v64 < *(v63 + 16))
          {
            v66 = *(*(v65 + 8 * v64) + 16);
            if (v66)
            {
              v67 = 0;
              while (1)
              {
                v68 = *(v65 + 8 * v64);
                if (v67 >= *(v68 + 16))
                {
                  break;
                }

                v69 = *(v68 + 8 * v67 + 32);
                if ((v69 & 0x8000000000000000) != 0)
                {
                  goto LABEL_55;
                }

                if (v69 >= v55[2])
                {
                  goto LABEL_56;
                }

                v70 = v55[v69 + 4];
                if (swift_isUniquelyReferenced_nonNull_native())
                {
                  if ((v70 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_57;
                  }
                }

                else
                {
                  sub_237B05F04(v32, v71, v72, v73);
                  v32 = v74;
                  if ((v70 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_57;
                  }
                }

                if (v70 >= v32[2])
                {
                  goto LABEL_58;
                }

                ++v67;
                v32[v70 + 4] = v64;
                if (v66 == v67)
                {
                  goto LABEL_47;
                }
              }

              __break(1u);
LABEL_55:
              __break(1u);
LABEL_56:
              __break(1u);
LABEL_57:
              __break(1u);
LABEL_58:
              __break(1u);
              goto LABEL_59;
            }

LABEL_47:
            if (++v64 == v129)
            {
              goto LABEL_48;
            }
          }

          goto LABEL_63;
        }

LABEL_48:

        OUTLINED_FUNCTION_12_31();
        v33 = v104;
        v24 = v115;
        v25 = BYTE4(v114);
        v28 = v101;
        if (v104 != v102)
        {
          continue;
        }

        goto LABEL_51;
      }

      break;
    }

    __break(1u);
    goto LABEL_65;
  }

LABEL_51:

  v116 = v32;
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_17_14();
  *(v78 - 16) = &v116;
  v79 = sub_237BBDC94(sub_237B062B4);
  v81 = v80;

  sub_237B6C670(v82, v83, v84, v85, v86, v87, v88, v89, v96, v97, v98, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, a2, a6, a7, v114, v115, v8);
  v116 = v79;
  LOBYTE(v117) = v81 & 1;
  OUTLINED_FUNCTION_20_21();
  sub_237B6C9CC();
  sub_2379DBC9C(v116, v117);
  v90 = v128;
  v91 = v127;
  if ((v128 & 1) == 0)
  {
    v92 = OUTLINED_FUNCTION_85();
    sub_2379DBCF4(v92, v93);
    sub_237B6C588();
    v94 = OUTLINED_FUNCTION_85();
    sub_2379DBC9C(v94, v95);
  }

  *v99 = v91;
  *(v99 + 8) = v90;
}

void sub_237B04B7C(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t *a6@<X5>, void *a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  v205.n128_u64[1] = a5;
  v205.n128_u64[0] = a4;
  v15 = *a3;
  LODWORD(v208) = *(a3 + 8);
  v195 = a9;
  v198 = a8;
  v197 = a2;
  v196 = a1;
  if (v208)
  {
    v16 = v15;
    v17 = a6;
    if (!MEMORY[0x2383DDAC0](0))
    {
      goto LABEL_88;
    }

    type metadata accessor for CMLSequence();
    v18 = swift_allocObject();
    v19 = OUTLINED_FUNCTION_21_23(v18);
  }

  else
  {
    v17 = a6;
    v20 = v15;
    sub_2379DBCF4(v15, 0);
    sub_237B6C208(&v218);
    v16 = v20;
    v21 = OUTLINED_FUNCTION_85();
    sub_2379DBC9C(v21, v22);
    v10 = v218;
  }

  v12 = &v192;
  v23 = v205;
  v210 = v205;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_17_14();
  *(v24 - 16) = &v210;
  v26 = sub_237AC1AB8(sub_2379F345C, v25, v10);

  if ((v26 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_36();
    v30 = v23.n128_u64[1];
    v29 = v23.n128_u64[0];
LABEL_31:
    MEMORY[0x2383DC360](v29, v30);
    MEMORY[0x2383DC360](46, 0xE100000000000000);
    v85 = v210;
    sub_2379E8AF0();
    v86 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    *v87 = v85;
    OUTLINED_FUNCTION_52(v86, v87);
    return;
  }

  if (v208)
  {
    if (!MEMORY[0x2383DDAC0](0))
    {
LABEL_91:
      __break(1u);
LABEL_92:
      sub_2379DBC9C(v12, 1);
      goto LABEL_93;
    }

    type metadata accessor for CMLSequence();
    v27 = swift_allocObject();
    v28 = OUTLINED_FUNCTION_21_23(v27);
  }

  else
  {
    sub_2379DBCF4(v16, 0);
    sub_237B6C208(&v218);
    sub_2379DBC9C(v16, 0);
    v10 = v218;
  }

  v210.n128_u64[0] = v17;
  v210.n128_u64[1] = a7;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_17_14();
  *(v31 - 16) = &v210;
  v33 = sub_237AC1AB8(sub_2379F57B8, v32, v10);
  v204 = v11;

  if ((v33 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_36();
    v29 = v17;
    v30 = a7;
    goto LABEL_31;
  }

  v200 = v17;
  v199 = a7;
  v193 = a10;
  v218 = v16;
  v219 = v208;
  v216 = v16;
  v217 = v208;
  v206 = v16;
  sub_2379DBCF4(v16, v208);
  MLDataTable.subscript.getter();
  v212 = v214;
  v213 = v215;
  MLUntypedColumn.dropDuplicates()(&v210, v34);
  sub_2379DBC9C(v212, v213);
  v216 = v210.n128_u64[0];
  v217 = v210.n128_u8[8];
  Array<A>.init(_:)(&v216);
  v36 = v35;
  v12 = *(v35 + 16);
  v194 = v35;
  if (!v12)
  {
    v207 = MEMORY[0x277D84F90];
    goto LABEL_33;
  }

  v212 = MEMORY[0x277D84F90];
  sub_237AC8A94();
  v37 = v212;
  v220 = 0x8000000237C199C0;
  v38 = (v36 + 48);
  v203 = v12;
  do
  {
    v207 = v37;
    v40 = *(v38 - 2);
    v39 = *(v38 - 1);
    v41 = *v38;
    LODWORD(v209) = *v38;
    if (v208)
    {
      swift_willThrow();
      v42 = OUTLINED_FUNCTION_23_23();
      sub_2379E9288(v42, v43, v41);
    }

    else
    {
      swift_retain_n();
      v44 = OUTLINED_FUNCTION_23_23();
      sub_2379E9288(v44, v45, v41);
      OUTLINED_FUNCTION_18_26();
      v46 = v204;
      v47 = sub_237B6ACC0();
      if (!v46)
      {
        v72 = v47;

        type metadata accessor for _UntypedColumn();
        v73 = swift_allocObject();
        v74 = v41;
        v75 = v73;
        *(v73 + 16) = v72;
        v210.n128_u64[0] = v40;
        v210.n128_u64[1] = v39;
        v211 = v74;
        v56 = sub_237A60280(4, v73, &v210);
        sub_2379DBC9C(v75, 0);
        v58 = 0;
        goto LABEL_22;
      }
    }

    OUTLINED_FUNCTION_25_20();

    OUTLINED_FUNCTION_13_25();
    v48 = OUTLINED_FUNCTION_18_26();
    MEMORY[0x2383DC360](v48);
    MEMORY[0x2383DC360](34, 0xE100000000000000);
    v49 = v210;
    sub_2379E8AF0();
    v50 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    *v51 = v49;
    OUTLINED_FUNCTION_19_26(v50, v51);
    v210.n128_u64[0] = v52;
    v53 = v52;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    v55 = sub_237C0925C();
    if (v55)
    {
      v56 = v55;
      OUTLINED_FUNCTION_15_28();
    }

    else
    {
      v56 = OUTLINED_FUNCTION_6_2(v54);
      *v57 = v50;
    }

    v58 = 1;
    OUTLINED_FUNCTION_15_28();
LABEL_22:
    v216 = v206;
    v217 = v208;
    v210.n128_u64[0] = v56;
    v210.n128_u8[8] = v58;
    MLDataTable.subscript.getter(&v210, &v214);
    sub_2379DBC9C(v210.n128_u64[0], v210.n128_i8[8]);
    v59 = v214;
    v60 = v215;
    if (v215)
    {
      swift_willThrow();
      v204 = 0;
      OUTLINED_FUNCTION_25_20();

      OUTLINED_FUNCTION_13_25();
      v61 = OUTLINED_FUNCTION_17_21();
      MEMORY[0x2383DC360](v61);
      MEMORY[0x2383DC360](34, 0xE100000000000000);
      v62 = v210;
      sub_2379E8AF0();
      v63 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
      *v64 = v62;
      OUTLINED_FUNCTION_19_26(v63, v64);
      sub_2379DBC9C(v59, v60);
      v65 = OUTLINED_FUNCTION_23_23();
      sub_2379E8CE8(v65, v66, v209);
      OUTLINED_FUNCTION_15_28();
      v67 = 0uLL;
      v68 = 6;
    }

    else
    {
      swift_retain_n();
      OUTLINED_FUNCTION_17_21();
      v76 = sub_237B6ACC0();
      v204 = 0;

      sub_2379DBC9C(v59, 0);
      type metadata accessor for _UntypedColumn();
      v77 = swift_allocObject();
      v77[2] = v76;
      sub_2379DBCF4(v77, 0);
      sub_237A607E0(0, &v210);
      v78 = OUTLINED_FUNCTION_23_23();
      sub_2379E8CE8(v78, v79, v209);
      v80 = OUTLINED_FUNCTION_85();
      sub_2379DBC9C(v80, v81);
      v82 = OUTLINED_FUNCTION_85();
      sub_2379DBC9C(v82, v83);
      v67 = v210;
      v68 = v211;
    }

    v37 = v207;
    v212 = v207;
    v70 = v207[2];
    v69 = v207[3];
    if (v70 >= v69 >> 1)
    {
      OUTLINED_FUNCTION_106(v69);
      v209 = v84;
      sub_237AC8A94();
      v67 = v209;
      v37 = v212;
    }

    v38 += 24;
    v37[2] = v70 + 1;
    v71 = &v37[3 * v70];
    v71[2] = v67;
    v71[3].n128_u8[0] = v68;
    v12 = (v12 - 1);
  }

  while (v12);
  v207 = v37;
  v12 = v203;
LABEL_33:

  v89 = sub_237B6AA54(v88, 0, v12);
  v90 = sub_237AC7AC4(MEMORY[0x277D84F90], v12);
  OUTLINED_FUNCTION_3_51();
  OUTLINED_FUNCTION_16_22();
  Array<A>.init(_:)(&v214);
  v91 = 0;
  v203 = *(v92 + 16);
  v202 = v92;
  v93 = v92 + 48;
  v201 = v89;
  while (v203 != v91)
  {
    if (v91 >= *(v202 + 16))
    {
LABEL_82:
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
LABEL_88:
      __break(1u);
LABEL_89:
      OUTLINED_FUNCTION_15_28();
      goto LABEL_90;
    }

    if (!*(v89 + 16))
    {
      goto LABEL_83;
    }

    v94 = OUTLINED_FUNCTION_9_37();
    sub_2379E9288(v94, v95, v96);
    v97 = OUTLINED_FUNCTION_9_37();
    v100 = sub_237ACB180(v97, v98, v99);
    if ((v101 & 1) == 0)
    {
      goto LABEL_84;
    }

    v102 = *(*(v89 + 56) + 8 * v100);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v102 & 0x8000000000000000) != 0)
      {
        goto LABEL_85;
      }
    }

    else
    {
      sub_237B05F1C(v90, v103, v104, v105);
      v90 = v116;
      if ((v102 & 0x8000000000000000) != 0)
      {
        goto LABEL_85;
      }
    }

    if (v102 >= *(v90 + 16))
    {
      goto LABEL_86;
    }

    v12 = (v90 + 32);
    v106 = *(v90 + 32 + 8 * v102);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v90 + 32 + 8 * v102) = v106;
    *&v209 = v90;
    v220 = v91;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v117 = OUTLINED_FUNCTION_7_10();
      sub_237BC0EB4(v117, v118, v119, v106);
      v106 = v120;
      v12[v102] = v120;
    }

    v109 = *(v106 + 16);
    v108 = *(v106 + 24);
    if (v109 >= v108 >> 1)
    {
      v121 = OUTLINED_FUNCTION_106(v108);
      sub_237BC0EB4(v121, v109 + 1, 1, v106);
      v12[v102] = v122;
    }

    v110 = OUTLINED_FUNCTION_9_37();
    sub_2379E8CE8(v110, v111, v112);
    v113 = v12[v102];
    *(v113 + 16) = v109 + 1;
    v114 = v113 + 8 * v109;
    v115 = v220;
    *(v114 + 32) = v220;
    v93 += 24;
    v91 = v115 + 1;
    v89 = v201;
    v90 = v209;
  }

  OUTLINED_FUNCTION_24_22();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD80, &qword_237C0BC60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0B680;
  *(inited + 32) = v89;
  *(inited + 40) = 0xE700000000000000;
  v210.n128_u64[0] = v90;
  MEMORY[0x28223BE20](inited);
  OUTLINED_FUNCTION_11_33();
  *(v124 - 16) = &v210;

  v125 = sub_237BBDC94(sub_237B06088);
  v127 = v126;

  *(inited + 48) = v125;
  *(inited + 56) = v127 & 1;
  v129 = v199;
  *(inited + 64) = v200;
  *(inited + 72) = v129;
  v210.n128_u64[0] = v207;
  MEMORY[0x28223BE20](v128);
  OUTLINED_FUNCTION_11_33();
  *(v130 - 16) = &v210;

  v131 = sub_237BBDC94(sub_237B060A8);
  v133 = v132;

  *(inited + 80) = v131;
  *(inited + 88) = v133 & 1;
  v134 = v205.n128_u64[1];
  *(inited + 96) = v205.n128_u64[0];
  *(inited + 104) = v134;
  v210.n128_u64[0] = v194;
  MEMORY[0x28223BE20](v134);
  OUTLINED_FUNCTION_11_33();
  *(v135 - 16) = &v210;

  v136 = sub_237BBDC94(sub_237B0629C);
  v138 = v137;

  *(inited + 112) = v136;
  *(inited + 120) = v138 & 1;
  v139 = sub_237C085AC();
  v140 = v204;
  sub_237B6CB9C(v139, &v210);
  if (v140)
  {
    sub_2379DBC9C(v218, v219);

    return;
  }

  *&v209 = v90;
  v141 = v210.n128_u64[0];
  v142 = v210.n128_u8[8];
  v216 = v210.n128_u64[0];
  v217 = v210.n128_u8[8];
  MLDataTable.stratifiedSplit<A>(proportions:on:generator:)(v196, v200, v129, v197, v198, v193, &v210);
  v204 = v210.n128_u64[0];
  LODWORD(v220) = v210.n128_u8[8];
  OUTLINED_FUNCTION_3_51();
  v143 = v216;
  v144 = v217;
  if (v217)
  {
    v145 = -1;
  }

  else
  {

    v145 = sub_237A2F128();
    sub_2379DBC9C(v143, 0);
  }

  OUTLINED_FUNCTION_24_22();
  sub_2379DBC9C(v143, v144);
  v146 = sub_237AC7A20(0, v145);
  v210.n128_u64[0] = v204;
  v210.n128_u8[8] = v220;
  MLDataTable.subscript.getter();
  v12 = v216;
  if (v217 == 1)
  {
    goto LABEL_92;
  }

  v147 = sub_237A2F128();
  sub_2379DBC9C(v12, 0);
  sub_2379DBC9C(v12, 0);
  if (v147 < 0)
  {
LABEL_93:
    __break(1u);
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v205.n128_u32[0] = v142;
  v205.n128_u64[1] = v141;
  if (!v147)
  {
    goto LABEL_75;
  }

  v148 = 0;
  while (2)
  {
    v216 = v204;
    v217 = v220;
    MLDataTable.subscript.getter();
    if (v215)
    {
      goto LABEL_89;
    }

    v149 = v147;
    v150 = OUTLINED_FUNCTION_85();
    sub_2379DBCF4(v150, v151);
    sub_237A607E0(v148, &v210);
    v152 = OUTLINED_FUNCTION_85();
    sub_2379DBC9C(v152, v153);
    v154 = OUTLINED_FUNCTION_85();
    sub_2379DBC9C(v154, v155);
    if (v211 != 3)
    {
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    v208 = v148 + 1;
    v206 = v210.n128_u64[1];
    v12 = v210.n128_u64[0];

    for (i = 0; i != sub_237A2E9F4(); ++i)
    {
      v157 = sub_237A2E9C8(i);
      sub_237AFC548(v157, &v210);
      v158 = v210.n128_u64[0];
      v159 = v211;
      if (i >= sub_237A2E9F4())
      {
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      if (v159)
      {
        goto LABEL_87;
      }

      sub_2379DF794(v220, &v216);
      if (v217)
      {
        OUTLINED_FUNCTION_15_28();
        goto LABEL_67;
      }

      v160 = OUTLINED_FUNCTION_85();
      sub_2379DBCF4(v160, v161);
      sub_237A607E0(v148, &v210);
      v162 = OUTLINED_FUNCTION_85();
      sub_2379DBC9C(v162, v163);
      v164 = OUTLINED_FUNCTION_85();
      sub_2379DBC9C(v164, v165);
      v166 = v210.n128_u64[0];
      if (v211)
      {
        sub_2379E8CE8(v210.n128_u64[0], v210.n128_u64[1], v211);
LABEL_67:
        v166 = 0;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_68;
        }

        goto LABEL_72;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_68:
        if ((v158 & 0x8000000000000000) != 0)
        {
          goto LABEL_80;
        }

        goto LABEL_69;
      }

LABEL_72:
      sub_237B05F04(v146, v167, v168, v169);
      v146 = v170;
      if ((v158 & 0x8000000000000000) != 0)
      {
        goto LABEL_80;
      }

LABEL_69:
      if (v158 >= *(v146 + 16))
      {
        goto LABEL_81;
      }

      *(v146 + 8 * v158 + 32) = v166;
    }

    sub_2379E8CE8(v12, v206, 3);

    v148 = v208;
    v147 = v149;
    if (v208 != v149)
    {
      continue;
    }

    break;
  }

LABEL_75:

  v210.n128_u64[0] = v146;
  MEMORY[0x28223BE20](v171);
  OUTLINED_FUNCTION_17_14();
  *(v172 - 16) = &v210;
  v173 = sub_237BBDC94(sub_237B060C8);
  v175 = v174;

  sub_237B6C670(v176, v177, v178, v179, v180, v181, v182, v183, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205.n128_i64[0], v205.n128_i64[1], v206, v207, v208, v209, *(&v209 + 1));
  v210.n128_u64[0] = v173;
  v210.n128_u8[8] = v175 & 1;
  OUTLINED_FUNCTION_20_21();
  sub_237B6C9CC();
  sub_2379DBC9C(v210.n128_u64[0], v210.n128_i8[8]);
  v184 = v218;
  v185 = v219;
  if (v219)
  {
    v186 = v218;
  }

  else
  {
    v187 = OUTLINED_FUNCTION_85();
    sub_2379DBCF4(v187, v188);
    sub_237B6C588();
  }

  v189 = v205.n128_u64[1];
  v190 = v205.n128_u8[0];
  sub_2379DBC9C(v204, v220);
  sub_2379DBC9C(v189, v190);
  sub_2379DBC9C(v184, v185);
  v191 = v195;
  *v195 = v184;
  *(v191 + 8) = v185;
}

void sub_237B05B68()
{
  v3 = v1[1];
  if ((v3 & 0x8000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if (v3)
  {
    v2 = v1[2];
    v0 = v1[13];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_20;
    }

    while (v3 <= *(v0 + 16))
    {
      v4 = 0;
      v5 = v0 + 32;
      while (1)
      {
        v6 = v4 + 1;
        v7 = (v4 + 1) % v3;
        if ((v7 & 0x8000000000000000) != 0)
        {
          break;
        }

        v8 = *(v0 + 16);
        if (v7 >= v8)
        {
          goto LABEL_16;
        }

        v9 = v0 + 8 * v4;
        v10 = *(v5 + 8 * v7) % v3;
        v11 = (v10 & 0xFFFFFFFE | (*(v9 + 36) << 32)) >> 1;
        if (v10)
        {
          v11 ^= v1[4];
        }

        v12 = __OFADD__(v4, v2);
        v13 = v4 + v2;
        if (v12)
        {
          goto LABEL_17;
        }

        v14 = v13 % v3;
        if (v14 >= v8)
        {
          goto LABEL_18;
        }

        *(v9 + 32) = *(v5 + 8 * v14) ^ v11;
        v4 = v6;
        if (v3 == v6)
        {
          v1[13] = v0;
          v1[14] = 0;
          return;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      sub_237B05EF0(v0);
      v0 = v15;
    }

    __break(1u);
  }
}

Swift::Int __swiftcall timestampSeed()()
{
  v0 = sub_237C05BFC();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237C05BEC();
  sub_237C05BDC();
  v7 = v6;
  result = (*(v2 + 8))(v5, v0);
  v9 = v7 * 1000.0;
  if (COERCE__INT64(fabs(v7 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v9 < 9.22337204e18)
  {
    return v9;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_237B05E18(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  type metadata accessor for _UntypedColumn();
  swift_allocObject();

  return a2(v3);
}

void sub_237B05E78(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v3 + 24) >> 1)
  {

    sub_237AC8A94();
  }
}

uint64_t sub_237B05F80(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_237C090EC();
  }

  return sub_237C08F6C();
}

uint64_t sub_237B0602C@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t *a4@<X8>)
{
  result = sub_237B05E18(*a1, a3);
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    *a4 = result;
  }

  return result;
}

unint64_t sub_237B060E8()
{
  result = qword_27DE9CD90;
  if (!qword_27DE9CD90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9AEC8, &qword_237C0C2A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9CD90);
  }

  return result;
}

unint64_t sub_237B06164()
{
  result = qword_27DE9CD98;
  if (!qword_27DE9CD98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9B150, &unk_237C152C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9CD98);
  }

  return result;
}

uint64_t sub_237B061E4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 104);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_237B06228(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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
      *(result + 104) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_3_51()
{
  *(v0 - 176) = *(v0 - 344);
  *(v0 - 168) = *(v0 - 328);

  MLDataTable.subscript.getter();
}

uint64_t OUTLINED_FUNCTION_4_49@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{

  return sub_237B0602C(a1, a2, sub_237B02E5C, a3);
}

uint64_t OUTLINED_FUNCTION_5_43@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{

  return sub_237B0602C(a1, a2, sub_237B02C68, a3);
}

uint64_t OUTLINED_FUNCTION_6_43@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{

  return sub_237B0602C(a1, a2, sub_237B02560, a3);
}

void OUTLINED_FUNCTION_12_31()
{
  v2 = *(v0 - 272);
  v3 = *(v0 - 280);
  v4 = *(v0 - 284);

  sub_2379E8CE8(v2, v3, v4);
}

void OUTLINED_FUNCTION_15_28()
{

  sub_2379DBC9C(v0, 1);
}

void OUTLINED_FUNCTION_16_22()
{
  v1 = *(v0 - 112);
  *(v0 - 136) = *(v0 - 120);
  *(v0 - 128) = v1;
}

double OUTLINED_FUNCTION_19_26(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_21_23(uint64_t result)
{
  *(result + 16) = v1;
  *(result + 24) = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_25_20()
{
  *(v0 - 176) = 0;
  *(v0 - 168) = 0xE000000000000000;

  return sub_237C08EDC();
}

void sub_237B064E0(uint64_t a1@<X0>, void *a2@<X2>, int a3@<W3>, uint64_t *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>, uint64_t a7@<X1>)
{
  if (a3)
  {
    v12 = MEMORY[0x2383DDAC0](0);
    if (!v12)
    {
LABEL_67:
      __break(1u);
      return;
    }

    v13 = v12;
    type metadata accessor for CMLSequence();
    v14 = swift_allocObject();
    v15 = v14;
    *(v14 + 16) = v13;
    *(v14 + 24) = 1;
  }

  else
  {
    sub_2379DBCF4(a2, 0);
    sub_237B6C208(&v118);
    sub_2379DBC9C(a2, 0);
    v15 = v118;
  }

  v107 = a4;
  v108 = a5;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_52();
  v18 = sub_237AC1AB8(sub_2379F345C, v17, v15);
  v19 = v7;

  if ((v18 & 1) == 0)
  {
    sub_2379E8AF0();
    swift_allocError();
    *v87 = 0xD000000000000022;
    *(v87 + 8) = 0x8000000237C1BBE0;
    *(v87 + 16) = 0u;
    *(v87 + 32) = 0u;
    *(v87 + 48) = 0;
    swift_willThrow();
    return;
  }

  v20 = a2;
  v118 = a2;
  v119 = a3 & 1;
  MLDataTable.subscript.getter();
  v114 = v116;
  v115 = v117;
  MLUntypedColumn.dropDuplicates()(&v107, v21);
  sub_2379DBC9C(v114, v115);
  v118 = v107;
  v119 = v108;
  Array<A>.init(_:)(&v118);
  v23 = v22;
  v107 = a2;
  LOBYTE(v108) = a3 & 1;
  v24 = MLDataTable.size.getter();
  if (v24 < 0)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  HIDWORD(v100) = a3;
  v101 = a4;
  v90 = a6;
  v25 = sub_2379DFF68(0, v24);
  v118 = a2;
  v119 = a3 & 1;
  v107 = a2;
  LOBYTE(v108) = a3 & 1;
  sub_2379DBCF4(a2, a3 & 1);
  v26 = MLDataTable.size.getter();
  v27 = sub_237AC7A20(0, v26);
  v94 = *(v23 + 16);
  if (v94)
  {
    v28 = 0;
    v95 = v23 + 32;
    v89 = (v25 + 3);
    v92 = a5;
    v93 = v23;
    v102 = v25;
    while (v28 < *(v23 + 16))
    {
      v105 = v19;
      v29 = v95 + 24 * v28;
      v30 = *v29;
      v31 = *(v29 + 8);
      v32 = *(v29 + 16);
      v96 = v28 + 1;
      v114 = v20;
      v115 = BYTE4(v100) & 1;
      sub_2379E9288(v30, v31, v32);
      MLDataTable.subscript.getter();
      v33 = v102;
      v110 = v112;
      v111 = v113;
      v99 = v30;
      v107 = v30;
      v108 = v31;
      v98 = v31;
      HIDWORD(v97) = v32;
      v109 = v32;
      sub_237BBF460();
      sub_2379DBC9C(v110, v111);
      v107 = v116;
      LOBYTE(v108) = v117;
      Array<A>.init(_:)(&v107);
      v35 = v34;
      v36 = 0;
      v37 = v34 + 48;
      v38 = MEMORY[0x277D84F90];
LABEL_11:
      v39 = *(v35 + 16);
      v40 = (v37 + 24 * v36);
      while (v39 != v36)
      {
        if (v36 >= v39)
        {
          goto LABEL_62;
        }

        v41 = v40;
        v42 = *(v33 + 16);
        if (v36 == v42)
        {
          break;
        }

        if (v36 >= v42)
        {
          goto LABEL_63;
        }

        v40 = v41 + 24;
        ++v36;
        if (!*v41 && *(v41 - 2) == 1)
        {
          v43 = *(v41 - 1);
          v120 = *(v89 + 8 * v36);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v107 = v38;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_237AC8B74();
            v33 = v102;
            v38 = v107;
          }

          v46 = v38[2];
          v45 = v38[3];
          if (v46 >= v45 >> 1)
          {
            OUTLINED_FUNCTION_4_50(v45);
            sub_237AC8B74();
            v33 = v102;
            v38 = v107;
          }

          v38[2] = v46 + 1;
          v47 = &v38[4 * v46];
          v47[4] = 1;
          v47[5] = v43;
          *(v47 + 48) = 0;
          v47[7] = v120;
          goto LABEL_11;
        }
      }

      v48 = v38[2];
      if (v48)
      {
        v107 = MEMORY[0x277D84F90];
        sub_237AC8A34(0, v48, 0);
        v49 = 0;
        v50 = v107;
        v51 = 7;
        while (v49 < v38[2])
        {
          v52 = v38[v51];
          v107 = v50;
          v54 = v50[2];
          v53 = v50[3];
          if (v54 >= v53 >> 1)
          {
            v55 = OUTLINED_FUNCTION_4_50(v53);
            sub_237AC8A34(v55, v56, v57);
            v50 = v107;
          }

          ++v49;
          v50[2] = v54 + 1;
          v50[v54 + 4] = v52;
          v51 += 4;
          if (v48 == v49)
          {

            goto LABEL_31;
          }
        }

        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        break;
      }

      v50 = MEMORY[0x277D84F90];
LABEL_31:
      v58 = sub_2379DFF68(0, v50[2]);
      v59 = v105;
      sub_237B3D088(v58, a1, a7);
      v19 = v105;
      v20 = a2;
      if (v105)
      {
LABEL_60:
        sub_2379DBC9C(v118, v119);

        OUTLINED_FUNCTION_7_37();

        return;
      }

      v61 = v60;

      v120 = *(a1 + 16);
      if (v120)
      {
        v105 = 0;
        v62 = 0;
        v63 = v61 + 32;
        while (v62 < *(v61 + 16))
        {
          v64 = *(*(v63 + 8 * v62) + 16);
          if (v64)
          {
            v65 = 0;
            while (1)
            {
              v66 = *(v63 + 8 * v62);
              if (v65 >= *(v66 + 16))
              {
                break;
              }

              v67 = *(v66 + 8 * v65 + 32);
              if ((v67 & 0x8000000000000000) != 0)
              {
                goto LABEL_56;
              }

              if (v67 >= v50[2])
              {
                goto LABEL_57;
              }

              v68 = v50[v67 + 4];
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                if ((v68 & 0x8000000000000000) != 0)
                {
                  goto LABEL_58;
                }
              }

              else
              {
                sub_237B05F04(v27, v69, v70, v71);
                v27 = v72;
                if ((v68 & 0x8000000000000000) != 0)
                {
                  goto LABEL_58;
                }
              }

              if (v68 >= v27[2])
              {
                goto LABEL_59;
              }

              ++v65;
              v27[v68 + 4] = v62;
              if (v64 == v65)
              {
                goto LABEL_47;
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
            __break(1u);
            goto LABEL_60;
          }

LABEL_47:
          if (++v62 == v120)
          {

            v19 = v59;
            v20 = a2;
            goto LABEL_50;
          }
        }

        goto LABEL_64;
      }

LABEL_50:
      OUTLINED_FUNCTION_7_37();

      v28 = v96;
      v23 = v93;
      if (v96 == v94)
      {
        goto LABEL_51;
      }
    }

    __break(1u);
    goto LABEL_66;
  }

LABEL_51:

  v107 = v27;
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_3_52();
  v74 = sub_237BBDC94(sub_2379F5698);
  v76 = v75;

  sub_237B6C670(v77, v78, v79, v80, v81, v82, v83, v84, v88, v89, v90, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, a1, a7, v105, a2, v107, v108);
  v107 = v74;
  LOBYTE(v108) = v76 & 1;
  sub_237B6C9CC();
  sub_2379DBC9C(v107, v108);
  v85 = v119;
  v86 = v118;
  if ((v119 & 1) == 0)
  {
    sub_2379DBCF4(v118, 0);
    sub_237B6C588();
    sub_2379DBC9C(v86, 0);
  }

  *v91 = v86;
  *(v91 + 8) = v85;
}

void MLTextClassifier.DataSource.diagnose()()
{
  v90 = type metadata accessor for DataSourceIssue(0);
  OUTLINED_FUNCTION_0();
  v89 = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v3);
  v94 = &v66 - v4;
  v5 = sub_237C0873C();
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_2_0();
  v87 = v7 - v6;
  v76 = sub_237C0825C();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  v13 = v12 - v11;
  v14 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v19);
  v21 = &v66 - v20;
  v22 = type metadata accessor for MLTextClassifier.DataSource(0);
  MEMORY[0x28223BE20](v22 - 8);
  OUTLINED_FUNCTION_2_0();
  v25 = v24 - v23;
  sub_237A8E880(v0, v24 - v23, v26);
  v27 = v16;
  (*(v16 + 4))(v21, v25, v14);
  sub_237A5CD94();
  v77 = *(v28 + 16);
  v66 = v21;
  if (v77 || (, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B288, &qword_237C137F0), v29 = v16, v30 = (v16[80] + 32) & ~v16[80], v31 = swift_allocObject(), *(v31 + 16) = xmmword_237C0B660, v32 = v31 + v30, v33 = v31, (*(v27 + 2))(v32, v21, v14), v77 = *(v33 + 16), v28 = v33, v77))
  {
    v34 = 0;
    v35 = v27;
    v67 = (v27[80] + 32) & ~v27[80];
    v75 = v28 + v67;
    v74 = (v9 + 8);
    v85 = 0x8000000237C1BC10;
    v84 = "incorrectTextEncoding";
    v98 = (v27 + 8);
    v70 = 0x8000000237C1BC60;
    v69 = "noExamplesForLabel";
    v36 = MEMORY[0x277D84F90];
    v37 = v28;
    v68 = xmmword_237C0B660;
    v73 = v27;
    v72 = v13;
    v96 = (v27 + 16);
    v71 = v28;
    while (1)
    {
      if (v34 >= *(v37 + 16))
      {
        __break(1u);
        return;
      }

      v38 = v36;
      v93 = *(v35 + 9);
      v92 = *(v35 + 2);
      v92(v83, v75 + v93 * v34, v14);
      sub_237C081FC();
      sub_237A5D3A4();
      v40 = v39;
      (*v74)(v13, v76);
      v41 = *(v40 + 16);
      v42 = v92;
      v82 = v34;
      if (v41)
      {
        break;
      }

      v49 = sub_237C059DC();
      v51 = v50;
      v99 = 0;
      v100 = 0xE000000000000000;
      sub_237C08EDC();

      v99 = 0x22206C6562614CLL;
      v100 = 0xE700000000000000;
      MEMORY[0x2383DC360](v49, v51);
      MEMORY[0x2383DC360](0xD000000000000012, v69 | 0x8000000000000000);
      v97 = v99;
      v95 = v100;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CDA8, &qword_237C16720);
      inited = swift_initStackObject();
      *(inited + 16) = v68;
      *(inited + 32) = 0x6C6562616CLL;
      *(inited + 40) = 0xE500000000000000;
      *(inited + 48) = v49;
      *(inited + 56) = v51;
      sub_237B0778C();

      v53 = sub_237C085AC();
      v54 = v90;
      v55 = v80;
      __swift_storeEnumTagSinglePayload(v80 + *(v90 + 24), 1, 1, v14);
      v56 = *(v54 + 28);
      sub_237C085AC();

      *v55 = 0xD000000000000012;
      v57 = v97;
      v55[1] = v70;
      v55[2] = v57;
      v55[3] = v95;
      *(v55 + v56) = v53;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_237BC1F0C();
        v38 = v64;
      }

      v48 = v82;
      v59 = *(v38 + 16);
      v58 = *(v38 + 24);
      v60 = v38;
      v35 = v73;
      v61 = v72;
      if (v59 >= v58 >> 1)
      {
        sub_237BC1F0C();
        v60 = v65;
      }

      v27 = *v98;
      (*v98)(v83, v14);
      *(v60 + 16) = v59 + 1;
      OUTLINED_FUNCTION_5_44();
      v36 = v60;
      sub_237B07BD4(v80, v60 + v62 + *(v63 + 72) * v59);
      v13 = v61;
      v37 = v71;
LABEL_16:
      v34 = v48 + 1;
      if (v34 == v77)
      {

        (v27)(v66, v14);
        return;
      }
    }

    v43 = v38;
    v81 = 0;
    v44 = 0;
    v86 = v41;
    v79 = v41 - 1;
    v45 = v40 + v67;
    v29 = v88;
    v91 = v40;
    v78 = v40 + v67;
    while (v44 < *(v40 + 16))
    {
      v97 = v44 + 1;
      v95 = v45 + v93 * v44;
      v42(v29);
      sub_237C0872C();
      sub_237C086AC();

      v46 = OUTLINED_FUNCTION_8_34();
      (v27)(v46);
      v81 = 1;
      v47 = v79 == v44;
      v40 = v91;
      v45 = v78;
      v44 = v97;
      if (v47)
      {
        v36 = v43;

        (v27)(v83, v14);
        v35 = v73;
        v13 = v72;
        v37 = v71;
        v48 = v82;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  (*(v29 + 1))(v66, v14);
}

uint64_t type metadata accessor for MLTextClassifier.DataSource(uint64_t a1)
{
  result = qword_27DE9CDB0;
  if (!qword_27DE9CDB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_237B0778C()
{
  result = qword_27DE9CDA0;
  if (!qword_27DE9CDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9CDA0);
  }

  return result;
}

uint64_t MLTextClassifier.DataSource.stratifiedSplit(proportions:seed:labelColumn:textColumn:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, uint64_t a6@<X4>, uint64_t a7@<X5>)
{
  v9 = v7;
  result = sub_237A8E3B4(v9);
  if (!v8)
  {
    sub_237B078E8(a6, a7, a3, a4, &v22, result);

    v18 = v22;
    v19 = v23;
    sub_237B03618(a2, __src);
    sub_237B064E0(a1, v18, v19, a3, a4, a5, __src);
    sub_2379DBC9C(v18, v19);
    memcpy(__dst, __src, sizeof(__dst));
    return sub_237B07C38(__dst);
  }

  return result;
}

void sub_237B078E8(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a6@<X8>, uint64_t x0_0@<X0>)
{
  sub_237B45F18(x0_0);
  v43 = v10;
  sub_237B4A484();
  v11 = v43;
  v12 = *(v43 + 16);
  if (v12)
  {
    v38 = a2;
    v39 = a6;
    v43 = MEMORY[0x277D84F90];
    sub_237AC8A74();
    v13 = v43;
    v40 = v11;
    v14 = (v11 + 40);
    v15 = v12;
    do
    {
      v17 = *(v14 - 1);
      v16 = *v14;
      v43 = v13;
      v19 = *(v13 + 16);
      v18 = *(v13 + 24);

      if (v19 >= v18 >> 1)
      {
        OUTLINED_FUNCTION_6_44();
        v13 = v43;
      }

      *(v13 + 16) = v19 + 1;
      v20 = v13 + 16 * v19;
      *(v20 + 32) = v17;
      *(v20 + 40) = v16;
      v14 += 4;
      --v15;
    }

    while (v15);
    v43 = MEMORY[0x277D84F90];
    sub_237AC8A74();
    v21 = v43;
    v22 = (v40 + 56);
    do
    {
      v23 = *(v22 - 1);
      v24 = *v22;
      v43 = v21;
      v26 = *(v21 + 16);
      v25 = *(v21 + 24);

      if (v26 >= v25 >> 1)
      {
        OUTLINED_FUNCTION_6_44();
        v21 = v43;
      }

      *(v21 + 16) = v26 + 1;
      v27 = v21 + 16 * v26;
      *(v27 + 32) = v23;
      *(v27 + 40) = v24;
      v22 += 4;
      --v12;
    }

    while (v12);

    a2 = v38;
    a6 = v39;
  }

  else
  {

    v21 = MEMORY[0x277D84F90];
    v13 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD80, &qword_237C0BC60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0B670;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  v43 = v13;
  MEMORY[0x28223BE20](inited);

  v29 = sub_237BBDC94(sub_2379F5678);
  v31 = v30;

  *(inited + 48) = v29;
  *(inited + 56) = v31 & 1;
  *(inited + 64) = a3;
  *(inited + 72) = a4;
  v43 = v21;
  MEMORY[0x28223BE20](a4);

  v32 = sub_237BBDC94(sub_2379F57A0);
  v34 = v33;

  *(inited + 80) = v32;
  *(inited + 88) = v34 & 1;
  v35 = sub_237C085AC();
  v36 = v45;
  sub_237B6CB9C(v35, &v43);
  if (!v36)
  {
    v37 = v44;
    *a6 = v43;
    *(a6 + 8) = v37;
  }
}

uint64_t sub_237B07BD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataSourceIssue(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_6_44()
{

  sub_237AC8A74();
}

void OUTLINED_FUNCTION_7_37()
{
  v2 = *(v0 - 256);
  v3 = *(v0 - 264);
  v4 = *(v0 - 268);

  sub_2379E8CE8(v2, v3, v4);
}

uint64_t sub_237B07D30(uint64_t a1)
{
  v3 = _s20PersistentParametersVMa_3(0);
  OUTLINED_FUNCTION_13_26(v3);
  sub_237C05DAC();
  v4 = sub_237C05DBC();
  OUTLINED_FUNCTION_13_26(v4);
  v5 = _s9RegressorVMa(0);
  OUTLINED_FUNCTION_13_26(v5);
  v6 = _s5ModelVMa_2(0);
  OUTLINED_FUNCTION_13_26(v6);
  OUTLINED_FUNCTION_34_12(OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingMetrics);
  *(v7 + 16) = -1;
  OUTLINED_FUNCTION_34_12(OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics);
  *(v8 + 16) = v9;
  OUTLINED_FUNCTION_11_34();
  sub_237B0B17C(a1, v10, v11);
  return v1;
}

uint64_t *sub_237B07DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, uint64_t a7)
{
  v68 = a7;
  v65 = a2;
  v66 = a6;
  v63[1] = *v7;
  v64 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CE00, &qword_237C15080);
  OUTLINED_FUNCTION_20(v11);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v12);
  v14 = v63 - v13;
  v15 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingParameters;
  v16 = _s20PersistentParametersVMa_3(0);
  v63[0] = v15;
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
  sub_237C05DAC();
  v20 = sub_237C05DBC();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v20);
  _s9RegressorVMa(0);
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  _s5ModelVMa_2(0);
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  OUTLINED_FUNCTION_34_12(OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingMetrics);
  *(v32 + 16) = -1;
  OUTLINED_FUNCTION_34_12(OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics);
  *(v33 + 16) = v34;
  v35 = a1;
  v36 = a1;
  v37 = a3;
  v38 = a3;
  v39 = v64;
  v40 = v67;
  sub_237B19700(v36, v38, v64, a5);
  v67 = v40;
  if (v40)
  {

    OUTLINED_FUNCTION_12_32();
    sub_237B0B124(v68, v42);
    sub_237A68B6C(v66);
    sub_2379D9054(v65, &qword_27DE9A9A0, &qword_237C0BF60);
    v43 = *(*(v20 - 8) + 8);
    v43(v35, v20);
    sub_2379D9054(v7 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingParameters, &qword_27DE9CE00, &qword_237C15080);
    v43(v7 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingData, v20);
    sub_2379D9054(v7 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationData, &qword_27DE9A9A0, &qword_237C0BF60);
    sub_2379D9054(v7 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_regressor, &qword_27DE9CDF0, &qword_237C12E38);
    sub_2379D9054(v7 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_model, &qword_27DE9CDE8, &qword_237C12E30);
    v44 = OUTLINED_FUNCTION_17_22(OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingMetrics);
    sub_237B0B0B0(v44, v45, v46);
    v47 = OUTLINED_FUNCTION_17_22(OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics);
    sub_237B0B0B0(v47, v48, v49);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v50 = v41;

    (*(*(v20 - 8) + 32))(v14, v35, v20);
    v51 = v16[5];
    OUTLINED_FUNCTION_64();
    __swift_storeEnumTagSinglePayload(v52, v53, v54, v20);
    sub_2379E8FDC(v65, &v14[v51], &qword_27DE9A9A0, &qword_237C0BF60);
    v55 = &v14[v16[6]];
    *v55 = v37;
    v55[1] = v39;
    *&v14[v16[7]] = v50;
    memcpy(&v14[v16[8]], v66, 0x49uLL);
    OUTLINED_FUNCTION_80_0();
    __swift_storeEnumTagSinglePayload(v56, v57, v58, v16);
    v59 = v63[0];
    swift_beginAccess();
    sub_2379E8FDC(v14, v7 + v59, &qword_27DE9CE00, &qword_237C15080);
    swift_endAccess();
    OUTLINED_FUNCTION_11_34();
    sub_237B0B17C(v68, v60, v61);
  }

  return v7;
}

void sub_237B08208()
{
  OUTLINED_FUNCTION_74();
  v56 = v1;
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CDE8, &qword_237C12E30);
  OUTLINED_FUNCTION_20(v3);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_77_0(&v55 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CE08, &unk_237C12E60);
  OUTLINED_FUNCTION_0();
  v58 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v9);
  v11 = &v55 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CDF0, &qword_237C12E38);
  v13 = OUTLINED_FUNCTION_20(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18_0();
  v61 = (v14 - v15);
  MEMORY[0x28223BE20](v16);
  v18 = (&v55 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CE00, &qword_237C15080);
  OUTLINED_FUNCTION_20(v19);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v20);
  v22 = &v55 - v21;
  v23 = _s20PersistentParametersVMa_3(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_2_0();
  v27 = v26 - v25;
  v28 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379E9068(v2 + v28, v22, &qword_27DE9CE00, &qword_237C15080);
  OUTLINED_FUNCTION_73_1(v22, 1, v23);
  if (v29)
  {
    sub_2379D9054(v22, &qword_27DE9CE00, &qword_237C15080);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_0_59();
    sub_237B0B17C(v22, v27, v30);
    v31 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingData;
    OUTLINED_FUNCTION_10_35(v2 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingData);
    sub_237C05DBC();
    OUTLINED_FUNCTION_4();
    (*(v32 + 24))(v2 + v31, v27);
    swift_endAccess();
    v33 = v23[5];
    v34 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationData;
    OUTLINED_FUNCTION_10_35(v2 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationData);
    sub_237A6EE90(v27 + v33, v2 + v34);
    swift_endAccess();
    v35 = (v27 + v23[6]);
    v36 = *v35;
    v37 = v35[1];
    v38 = *(v27 + v23[7]);
    sub_237B0B0C8(v27 + v23[8], v60);
    *v18 = v36;
    v18[1] = v37;
    v18[2] = v38;
    sub_237B0B0C8(v60, (v18 + 3));
    sub_237B0B0C8(v60, v59);
    sub_237A20BBC();

    sub_237C06C3C();
    sub_237C06BEC();
    sub_237C06C1C();
    sub_237C06C2C();
    sub_237C06C0C();
    sub_237C06BFC();
    sub_237A68B6C(v59);
    v39 = v58;
    (*(v58 + 16))(v57, v11, v6);
    v40 = _s9RegressorVMa(0);
    sub_237C06E5C();
    (*(v39 + 8))(v11, v6);
    sub_237A68B6C(v60);
    OUTLINED_FUNCTION_80_0();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v40);
    v44 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_regressor;
    OUTLINED_FUNCTION_10_35(v2 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_regressor);
    sub_2379E8FDC(v18, v2 + v44, &qword_27DE9CDF0, &qword_237C12E38);
    swift_endAccess();
    sub_2379E9068(v2 + v44, v61, &qword_27DE9CDF0, &qword_237C12E38);
    OUTLINED_FUNCTION_73_1(v61, 1, v40);
    if (!v29)
    {
      v45 = *v61;
      v46 = v61[1];
      v47 = _s5ModelVMa_2(0);

      v48 = v55;
      sub_237C06E6C();
      OUTLINED_FUNCTION_3_53();
      sub_237B0B124(v27, v49);
      *v48 = v45;
      v48[1] = v46;
      v48[3] = 0;
      v48[4] = 0;
      v48[2] = 0;
      OUTLINED_FUNCTION_1_57();
      sub_237B0B124(v61, v50);
      OUTLINED_FUNCTION_80_0();
      __swift_storeEnumTagSinglePayload(v51, v52, v53, v47);
      v54 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_model;
      OUTLINED_FUNCTION_10_35(v2 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_model);
      sub_2379E8FDC(v48, v2 + v54, &qword_27DE9CDE8, &qword_237C12E30);
      swift_endAccess();
      OUTLINED_FUNCTION_73();
      return;
    }
  }

  __break(1u);
}

void sub_237B08738()
{
  OUTLINED_FUNCTION_74();
  v69 = v1;
  v80 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CDE8, &qword_237C12E30);
  OUTLINED_FUNCTION_20(v3);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_77_0(&v68 - v5);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CE08, &unk_237C12E60);
  OUTLINED_FUNCTION_0();
  v74 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_77_0(&v68 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CDF0, &qword_237C12E38);
  v11 = OUTLINED_FUNCTION_20(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_77_0(&v68 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8E8, &qword_237C0EBF0);
  OUTLINED_FUNCTION_20(v14);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15);
  v17 = &v68 - v16;
  v18 = type metadata accessor for MLCheckpoint(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_77_0(v21 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CE00, &qword_237C15080);
  OUTLINED_FUNCTION_20(v22);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v23);
  v25 = &v68 - v24;
  v26 = _s20PersistentParametersVMa_3(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_2_0();
  v30 = v29 - v28;
  v31 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  v32 = v0 + v31;
  v33 = v0;
  sub_2379E9068(v32, v25, &qword_27DE9CE00, &qword_237C15080);
  OUTLINED_FUNCTION_73_1(v25, 1, v26);
  if (v34)
  {
    sub_2379D9054(v25, &qword_27DE9CE00, &qword_237C15080);
    __break(1u);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_0_59();
  sub_237B0B17C(v25, v30, v35);
  sub_237A9A92C(v80, v17);
  OUTLINED_FUNCTION_73_1(v17, 1, v18);
  if (v34)
  {
    sub_2379D9054(v17, &qword_27DE9B8E8, &qword_237C0EBF0);
    sub_2379E8AF0();
    OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    OUTLINED_FUNCTION_18_4(v36, 0xD00000000000001DLL);
LABEL_13:
    OUTLINED_FUNCTION_3_53();
    sub_237B0B124(v30, v67);
    goto LABEL_14;
  }

  v37 = v77;
  sub_237B0B17C(v17, v77, type metadata accessor for MLCheckpoint);
  switch(*(v37 + *(v18 + 20)))
  {
    case 2:

      goto LABEL_9;
    case 4:
      OUTLINED_FUNCTION_60_0();
      goto LABEL_8;
    default:
LABEL_8:
      OUTLINED_FUNCTION_57_0();
      v38 = sub_237C0929C();

      if ((v38 & 1) == 0)
      {
        sub_2379E8AF0();
        OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
        OUTLINED_FUNCTION_18_4(v66, 0xD000000000000027);
        OUTLINED_FUNCTION_14_25();
        goto LABEL_13;
      }

LABEL_9:
      v39 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingData;
      OUTLINED_FUNCTION_10_35(v0 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingData);
      sub_237C05DBC();
      OUTLINED_FUNCTION_4();
      (*(v40 + 24))(v0 + v39, v30);
      swift_endAccess();
      v41 = v26[5];
      v42 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationData;
      OUTLINED_FUNCTION_10_35(v0 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationData);
      sub_237A6EE90(v30 + v41, v0 + v42);
      swift_endAccess();
      v43 = (v30 + v26[6]);
      v45 = *v43;
      v44 = v43[1];
      v46 = *(v30 + v26[7]);
      sub_237B0B0C8(v30 + v26[8], v79);
      v47 = v73;
      *v73 = v45;
      *(v47 + 8) = v44;
      *(v47 + 16) = v46;
      sub_237B0B0C8(v79, v47 + 24);
      sub_237B0B0C8(v79, v78);
      sub_237A20BBC();

      v48 = v71;
      sub_237C06C3C();
      v49 = v75;
      sub_237C06BEC();
      sub_237C06C1C();
      sub_237C06C2C();
      sub_237C06C0C();
      sub_237C06BFC();
      sub_237A68B6C(v78);
      v50 = v74;
      (*(v74 + 16))(v72, v48, v49);
      v51 = _s9RegressorVMa(0);
      sub_237C06E5C();
      (*(v50 + 8))(v48, v49);
      sub_237A68B6C(v79);
      OUTLINED_FUNCTION_80_0();
      __swift_storeEnumTagSinglePayload(v52, v53, v54, v51);
      v55 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_regressor;
      OUTLINED_FUNCTION_10_35(v33 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_regressor);
      sub_2379E8FDC(v47, v33 + v55, &qword_27DE9CDF0, &qword_237C12E38);
      swift_endAccess();
      v56 = v76;
      sub_2379E9068(v33 + v55, v76, &qword_27DE9CDF0, &qword_237C12E38);
      OUTLINED_FUNCTION_73_1(v56, 1, v51);
      if (v34)
      {
LABEL_16:
        __break(1u);
        JUMPOUT(0x237B08EA4);
      }

      sub_237B0B058();
      v57 = v70;
      v58 = v69;
      sub_237C0723C();
      OUTLINED_FUNCTION_14_25();
      OUTLINED_FUNCTION_3_53();
      sub_237B0B124(v30, v59);
      OUTLINED_FUNCTION_1_57();
      sub_237B0B124(v56, v60);
      if (!v58)
      {
        _s5ModelVMa_2(0);
        OUTLINED_FUNCTION_80_0();
        __swift_storeEnumTagSinglePayload(v61, v62, v63, v64);
        v65 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_model;
        OUTLINED_FUNCTION_10_35(v33 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_model);
        sub_2379E8FDC(v57, v33 + v65, &qword_27DE9CDE8, &qword_237C12E30);
        swift_endAccess();
      }

LABEL_14:
      OUTLINED_FUNCTION_73();
      return;
  }
}

uint64_t sub_237B08EB8(_BYTE *a1)
{
  if (*a1 != 2)
  {
    return 0;
  }

  v3 = v1 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_sessionParameters;
  return *(v3 + *(type metadata accessor for MLTrainingSessionParameters(0) + 28));
}

uint64_t sub_237B08F0C(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = sub_237C06A4C();
  v2[16] = v3;
  OUTLINED_FUNCTION_1(v3);
  v2[17] = v4;
  v2[18] = OUTLINED_FUNCTION_19();
  v5 = sub_237C05DBC();
  v2[19] = v5;
  OUTLINED_FUNCTION_1(v5);
  v2[20] = v6;
  v2[21] = OUTLINED_FUNCTION_19();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CDF0, &qword_237C12E38);
  OUTLINED_FUNCTION_20(v7);
  v2[22] = OUTLINED_FUNCTION_19();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CE00, &qword_237C15080);
  OUTLINED_FUNCTION_20(v8);
  v2[23] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_237B0905C()
{
  v1 = v0[23];
  v2 = v0[15];
  v3 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379E9068(v2 + v3, v1, &qword_27DE9CE00, &qword_237C15080);
  _s20PersistentParametersVMa_3(0);
  v4 = OUTLINED_FUNCTION_20_22();
  LODWORD(v2) = __swift_getEnumTagSinglePayload(v4, v5, v6);
  result = sub_2379D9054(v1, &qword_27DE9CE00, &qword_237C15080);
  if (v2 == 1)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v8 = v0[14];
  v9 = v0[15] + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_sessionParameters;
  result = type metadata accessor for MLTrainingSessionParameters(0);
  v10 = *(v9 + *(result + 20));
  v11 = v8 + v10;
  if (__OFADD__(v8, v10))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v12 = *(v9 + *(result + 28));
  if (__OFSUB__(v12, v8))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    return result;
  }

  if (v10 >= v12 - v8)
  {
    v13 = v12 - v8;
  }

  else
  {
    v13 = *(v9 + *(result + 20));
  }

  type metadata accessor for EventCollector();
  swift_allocObject();
  result = sub_237AD988C();
  v48 = v13;
  if (v13 < 0)
  {
    goto LABEL_25;
  }

  v14 = result;
  v44 = v12;
  v45 = v11;
  v15 = v0[20];
  v16 = v0[15];
  v17 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingData;
  v18 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_model;
  v47 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_regressor;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  v46 = v17;
  OUTLINED_FUNCTION_71();
  result = swift_beginAccess();
  v19 = 0;
  v20 = (v15 + 16);
  v21 = (v15 + 8);
  while (v48 != v19)
  {
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    sub_2379E9068(v16 + v47, v0[22], &qword_27DE9CDF0, &qword_237C12E38);
    _s9RegressorVMa(0);
    v22 = OUTLINED_FUNCTION_20_22();
    result = __swift_getEnumTagSinglePayload(v22, v23, v24);
    if (result == 1)
    {
      goto LABEL_26;
    }

    (*v20)(v0[21], v16 + v46, v0[19]);
    swift_beginAccess();
    v25 = _s5ModelVMa_2(0);
    result = __swift_getEnumTagSinglePayload(v16 + v18, 1, v25);
    if (result == 1)
    {
      goto LABEL_27;
    }

    v26 = v0[21];

    sub_237B72B94((v16 + v18), v26, sub_237AFC198, v14);
    v28 = v0[21];
    v27 = v0[22];
    v29 = v0[19];
    swift_endAccess();

    (*v21)(v28, v29);
    OUTLINED_FUNCTION_1_57();
    result = sub_237B0B124(v27, v30);
    ++v19;
  }

  v31 = v0[17];
  v32 = v0[18];
  v33 = v0[16];
  v49 = MEMORY[0x277D84F98];
  sub_237C06A3C();
  sub_237B1A15C(v32);
  v35 = v34;
  v36 = *(v31 + 8);
  v36(v32, v33);
  if ((v35 & 1) == 0)
  {
    OUTLINED_FUNCTION_36_11();
    sub_237B19FFC(v37, 8);
  }

  v38 = v0[18];
  v39 = v0[16];
  sub_237C069FC();
  sub_237B1A15C(v38);
  v41 = v40;
  v36(v38, v39);
  if ((v41 & 1) == 0)
  {
    OUTLINED_FUNCTION_36_11();
    sub_237B19FFC(v42, 7);
  }

  v43 = v0[1];

  return v43(v48, v49, v45 >= v44);
}

uint64_t sub_237B094EC()
{
  v1[25] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  OUTLINED_FUNCTION_20(v2);
  v1[26] = OUTLINED_FUNCTION_19();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB88, &qword_237C0B8F0);
  v1[27] = v3;
  OUTLINED_FUNCTION_1(v3);
  v1[28] = v4;
  v1[29] = OUTLINED_FUNCTION_19();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B818, &qword_237C0DFE0);
  v1[30] = v5;
  OUTLINED_FUNCTION_1(v5);
  v1[31] = v6;
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CDE8, &qword_237C12E30);
  OUTLINED_FUNCTION_20(v7);
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v8 = sub_237C05DBC();
  v1[38] = v8;
  OUTLINED_FUNCTION_1(v8);
  v1[39] = v9;
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_237B0970C()
{
  v1 = v0[25] + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  v2 = _s20PersistentParametersVMa_3(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v2);
  v4 = 0;
  if (!EnumTagSinglePayload)
  {
    v7 = v0[37];
    v8 = v0[25];
    v9 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_model;
    OUTLINED_FUNCTION_71();
    swift_beginAccess();
    v76 = v8;
    sub_2379E9068(v8 + v9, v7, &qword_27DE9CDE8, &qword_237C12E30);
    _s5ModelVMa_2(0);
    v10 = OUTLINED_FUNCTION_20_22();
    v74 = v11;
    result = __swift_getEnumTagSinglePayload(v10, v12, v11);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v13 = v0[42];
      v14 = v0[38];
      v15 = v0[39];
      v16 = v0[25];
      v17 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingData;
      OUTLINED_FUNCTION_71();
      swift_beginAccess();
      (*(v15 + 16))(v13, v16 + v17, v14);

      OUTLINED_FUNCTION_11();
      sub_237AAA8FC(v18, v19);
      v60 = v9;
      v20 = v0[37];
      v21 = v0[29];
      v22 = v0[28];
      v63 = v0[27];
      v69 = v0[26];
      v71 = v0[38];
      v67 = v0[25];
      v73 = (v0[39] + 8);
      v62 = *v73;
      (*v73)(v0[42]);
      OUTLINED_FUNCTION_2_57();
      sub_237B0B124(v20, v23);
      sub_237C05DEC();
      v0[17] = 0;
      sub_2379D9224(&qword_27DE9B820, &qword_27DE9AB88, &qword_237C0B8F0, MEMORY[0x277CE18F0]);
      sub_237C05EAC();
      v24 = *(v22 + 8);
      v24(v21, v63);
      swift_beginAccess();
      sub_237C05DEC();
      swift_endAccess();
      v0[18] = 0;
      sub_237C05EAC();
      v59 = v24;
      v24(v21, v63);
      sub_237A48144();
      sub_2379D9224(&qword_27DE9B838, &qword_27DE9B818, &qword_237C0DFE0, MEMORY[0x277CE18B0]);
      OUTLINED_FUNCTION_23_24();
      sub_237C06EDC();
      v25 = v0[19];
      OUTLINED_FUNCTION_23_24();
      sub_237C06EEC();
      v26 = v0[20];
      v27 = v67 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingMetrics;
      v28 = *(v67 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingMetrics);
      v29 = *(v67 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingMetrics + 8);
      *v27 = v25;
      *(v27 + 8) = v26;
      v30 = *(v27 + 16);
      *(v27 + 16) = 0;
      sub_237B0B0B0(v28, v29, v30);
      v31 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationData;
      OUTLINED_FUNCTION_71();
      swift_beginAccess();
      sub_2379E9068(v67 + v31, v69, &qword_27DE9A9A0, &qword_237C0BF60);
      if (__swift_getEnumTagSinglePayload(v69, 1, v71) == 1)
      {
        v32 = v0[43];
        v33 = v0[38];
        v35 = v0[34];
        v34 = v0[35];
        v37 = v0[30];
        v36 = v0[31];
        v39 = v0[25];
        v38 = v0[26];

        v40 = *(v36 + 8);
        v40(v35, v37);
        v40(v34, v37);
        v62(v32, v33);
        sub_2379D9054(v38, &qword_27DE9A9A0, &qword_237C0BF60);
        v41 = v39 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics;
        v42 = *(v39 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics);
        v43 = *(v39 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics + 8);
        *v41 = 0;
        *(v41 + 8) = 0;
        LOBYTE(v40) = *(v41 + 16);
        v45 = (v41 + 16);
        v44 = v40;
        v46 = -1;
LABEL_10:
        *v45 = v46;
        sub_237B0B0B0(v42, v43, v44);
        v4 = 1;
        goto LABEL_2;
      }

      v47 = v0[36];
      (*(v0[39] + 32))(v0[41], v0[26], v0[38]);
      sub_2379E9068(v76 + v60, v47, &qword_27DE9CDE8, &qword_237C12E30);
      result = __swift_getEnumTagSinglePayload(v47, 1, v74);
      if (result != 1)
      {
        OUTLINED_FUNCTION_11();
        sub_237AAA8FC(v48, v49);
        v77 = v0[43];
        v75 = v0[41];
        v72 = v0[35];
        v68 = v0[38];
        v70 = v0[34];
        v61 = v0[33];
        v64 = v0[32];
        v65 = v0[40];
        v66 = v0[31];
        v50 = v0[29];
        v51 = v0[30];
        v52 = v0[27];
        v79 = v0[25];
        OUTLINED_FUNCTION_2_57();
        sub_237B0B124(v53, v54);
        sub_237C05DEC();
        v0[21] = 0;
        sub_237C05EAC();
        v59(v50, v52);
        sub_237C05DEC();

        v0[22] = 0;
        sub_237C05EAC();
        v59(v50, v52);
        OUTLINED_FUNCTION_22_20();
        sub_237C06EDC();
        v55 = v0[23];
        OUTLINED_FUNCTION_22_20();
        sub_237C06EEC();
        v56 = *(v66 + 8);
        v56(v64, v51);
        v56(v61, v51);
        v62(v65, v68);
        v62(v75, v68);
        v56(v70, v51);
        v56(v72, v51);
        v62(v77, v68);
        v46 = 0;
        v57 = v0[24];
        v58 = v79 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics;
        v42 = *(v79 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics);
        v43 = *(v79 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics + 8);
        *v58 = v55;
        *(v58 + 8) = v57;
        v45 = (v58 + 16);
        v44 = *(v58 + 16);
        goto LABEL_10;
      }
    }

    __break(1u);
    return result;
  }

LABEL_2:
  v78 = v4;

  v5 = v0[1];

  return v5(v78, 1);
}

uint64_t sub_237B0A064(uint64_t a1, unsigned __int8 *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CDE8, &qword_237C12E30);
  OUTLINED_FUNCTION_20(v4);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  v7 = &v22[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CDF0, &qword_237C12E38);
  OUTLINED_FUNCTION_20(v8);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  v11 = &v22[-v10];
  switch(*a2)
  {
    case 2u:

      goto LABEL_5;
    case 4u:
      OUTLINED_FUNCTION_60_0();
      goto LABEL_4;
    default:
LABEL_4:
      OUTLINED_FUNCTION_57_0();
      v12 = sub_237C0929C();

      if ((v12 & 1) == 0)
      {
        v18 = 0;
        return v18 & 1;
      }

LABEL_5:
      v13 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_regressor;
      OUTLINED_FUNCTION_71();
      swift_beginAccess();
      sub_2379E9068(v2 + v13, v11, &qword_27DE9CDF0, &qword_237C12E38);
      v14 = _s9RegressorVMa(0);
      OUTLINED_FUNCTION_73_1(v11, 1, v14);
      if (v15)
      {
        __break(1u);
        goto LABEL_11;
      }

      v16 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_model;
      OUTLINED_FUNCTION_71();
      swift_beginAccess();
      sub_2379E9068(v2 + v16, v7, &qword_27DE9CDE8, &qword_237C12E30);
      v17 = _s5ModelVMa_2(0);
      OUTLINED_FUNCTION_73_1(v7, 1, v17);
      if (v15)
      {
LABEL_11:
        __break(1u);
        JUMPOUT(0x237B0A2E4);
      }

      sub_237B0B058();
      v18 = 1;
      sub_237C0724C();
      OUTLINED_FUNCTION_2_57();
      sub_237B0B124(v7, v19);
      OUTLINED_FUNCTION_1_57();
      sub_237B0B124(v11, v20);
      return v18 & 1;
  }
}

void sub_237B0A2F8()
{
  OUTLINED_FUNCTION_74();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CE00, &qword_237C15080);
  OUTLINED_FUNCTION_20(v2);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v3);
  v5 = &v19 - v4;
  v6 = _s20PersistentParametersVMa_3(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  OUTLINED_FUNCTION_22_20();
  sub_2379E9068(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_1(v5, 1, v6);
  if (v15)
  {
    sub_2379D9054(v5, &qword_27DE9CE00, &qword_237C15080);
    sub_2379E8AF0();
    OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    *v16 = 0xD000000000000030;
    *(v16 + 8) = 0x8000000237C191C0;
    *(v16 + 16) = 0u;
    *(v16 + 32) = 0u;
    *(v16 + 48) = 2;
    swift_willThrow();
  }

  else
  {
    OUTLINED_FUNCTION_0_59();
    sub_237B0B17C(v5, v10, v17);
    sub_237A68BC0(v1);
    OUTLINED_FUNCTION_3_53();
    sub_237B0B124(v10, v18);
  }

  OUTLINED_FUNCTION_73();
}

void sub_237B0A494()
{
  OUTLINED_FUNCTION_74();
  v38 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CE00, &qword_237C15080);
  v5 = OUTLINED_FUNCTION_20(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18_0();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - v10;
  v12 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  v18 = (v17 - v16);
  v19 = _s20PersistentParametersVMa_3(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_18_0();
  v23 = v21 - v22;
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v37 - v26;
  (*(v14 + 16))(v18, v3, v12, v25);
  sub_237A6793C(v18, v27);
  if (!v1)
  {
    v28 = v8;
    v29 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingParameters;
    v30 = v38;
    OUTLINED_FUNCTION_71();
    swift_beginAccess();
    sub_2379E9068(v30 + v29, v11, &qword_27DE9CE00, &qword_237C15080);
    OUTLINED_FUNCTION_73_1(v11, 1, v19);
    if (v31)
    {
      sub_2379D9054(v11, &qword_27DE9CE00, &qword_237C15080);
      OUTLINED_FUNCTION_0_59();
      sub_237B0B17C(v27, v28, v32);
      OUTLINED_FUNCTION_80_0();
      __swift_storeEnumTagSinglePayload(v33, v34, v35, v19);
      swift_beginAccess();
      sub_2379E8FDC(v28, v30 + v29, &qword_27DE9CE00, &qword_237C15080);
      swift_endAccess();
    }

    else
    {
      OUTLINED_FUNCTION_0_59();
      sub_237B0B17C(v11, v23, v36);
      sub_237B0A744(v27, v23);
      sub_237B0B124(v23, _s20PersistentParametersVMa_3);
      sub_237B0B124(v27, _s20PersistentParametersVMa_3);
    }
  }

  OUTLINED_FUNCTION_73();
}

void *sub_237B0A744(uint64_t a1, uint64_t a2)
{
  v4 = _s20PersistentParametersVMa_3(0);
  v5 = *(v4 + 24);
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v7 == *v8 && v6 == v8[1];
  if (v9 || (sub_237C0929C() & 1) != 0)
  {

    v11 = sub_237B42F98(v10);

    v13 = sub_237B42F98(v12);
    v14 = sub_237A6E3A8(v11, v13);

    if (v14)
    {
      result = sub_237B91000(a1 + *(v4 + 32), a2 + *(v4 + 32), &v26);
      v16 = v27;
      if (!v27)
      {
        return result;
      }

      v18 = v30;
      v17 = v31;
      v7 = v28;
      v6 = v29;
      v19 = v26;
      sub_2379E8AF0();
      OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    }

    else
    {
      v16 = 0x8000000237C198F0;

      v21 = OUTLINED_FUNCTION_37_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
      sub_2379D9224(&qword_27DE9BC90, &qword_27DE9AE60, &qword_237C0D000, MEMORY[0x277D83958]);
      OUTLINED_FUNCTION_22_20();
      v7 = sub_237C0864C();
      v6 = v23;

      OUTLINED_FUNCTION_22_20();
      sub_237C0864C();

      v18 = sub_237C0883C();
      v17 = v24;
      sub_2379E8AF0();
      OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
      v19 = 0xD000000000000011;
    }
  }

  else
  {

    v18 = sub_237C0883C();
    v17 = v25;
    sub_2379E8AF0();
    OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    v16 = 0xED00006E6D756C6FLL;
    v19 = 0x6320746567726154;
  }

  *v20 = v19;
  *(v20 + 8) = v16;
  *(v20 + 16) = v7;
  *(v20 + 24) = v6;
  *(v20 + 32) = v18;
  *(v20 + 40) = v17;
  *(v20 + 48) = 3;
  return swift_willThrow();
}

uint64_t sub_237B0AA10(uint64_t a1)
{
  OUTLINED_FUNCTION_12_32();
  sub_237B0B124(v1 + v2, v3);
  sub_2379D9054(v1 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingParameters, &qword_27DE9CE00, &qword_237C15080);
  v4 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingData;
  sub_237C05DBC();
  OUTLINED_FUNCTION_4();
  (*(v5 + 8))(v1 + v4);
  sub_2379D9054(v1 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationData, &qword_27DE9A9A0, &qword_237C0BF60);
  sub_2379D9054(v1 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_regressor, &qword_27DE9CDF0, &qword_237C12E38);
  sub_2379D9054(v1 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_model, &qword_27DE9CDE8, &qword_237C12E30);
  v6 = OUTLINED_FUNCTION_17_22(OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingMetrics);
  sub_237B0B0B0(v6, v7, v8);
  v9 = OUTLINED_FUNCTION_17_22(OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics);
  sub_237B0B0B0(v9, v10, v11);
  return v1;
}

uint64_t sub_237B0AB1C(uint64_t a1)
{
  sub_237B0AA10(a1);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LinearRegressorTrainingSessionDelegate(uint64_t a1)
{
  result = qword_27DE9CDC0;
  if (!qword_27DE9CDC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237B0ABC8(uint64_t a1)
{
  type metadata accessor for MLTrainingSessionParameters(319);
  if (v1 <= 0x3F)
  {
    sub_237B0ADFC(319, &qword_27DE9CDD0, _s20PersistentParametersVMa_3);
    if (v2 <= 0x3F)
    {
      sub_237C05DBC();
      if (v3 <= 0x3F)
      {
        sub_237B0ADFC(319, &qword_27DE9AE50, MEMORY[0x277CE1898]);
        if (v4 <= 0x3F)
        {
          sub_237B0ADFC(319, &qword_27DE9CDD8, _s9RegressorVMa);
          if (v5 <= 0x3F)
          {
            sub_237B0ADFC(319, &qword_27DE9CDE0, _s5ModelVMa_2);
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_237B0ADFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_237C08D2C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_237B0AEC0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_237AFBDB8;

  return sub_237B08F0C(a1);
}

uint64_t sub_237B0AF58()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237AFBF68;

  return sub_237B094EC();
}

unint64_t sub_237B0B058()
{
  result = qword_27DE9CDF8;
  if (!qword_27DE9CDF8)
  {
    _s9RegressorVMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9CDF8);
  }

  return result;
}

void sub_237B0B0B0(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_2379F8918(a1, a2, a3 & 1);
  }
}

uint64_t sub_237B0B124(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_237B0B17C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_37_0();
  v5(v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_10_35(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_13_26(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_14_25()
{

  return sub_237B0B124(v0, type metadata accessor for MLCheckpoint);
}

void OUTLINED_FUNCTION_34_12(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t sub_237B0B320(char a1)
{
  result = 0x6F635F6C6562616CLL;
  switch(a1)
  {
    case 1:
      return 0xD000000000000011;
    case 2:
    case 73:
      OUTLINED_FUNCTION_0_52();
      return v17 | 2;
    case 3:
      v11 = 0x6164696C6176;
      return v11 & 0xFFFFFFFFFFFFLL | 0x6974000000000000;
    case 4:
      return 1635017060;
    case 5:
      return 0x746567726174;
    case 6:
      v12 = 0x6E6F6974706FLL;
      goto LABEL_71;
    case 7:
      return 7107189;
    case 8:
      return 1752457584;
    case 9:
      return 0x61625F726F727265;
    case 10:
      return 0x726564616568;
    case 11:
      return 0x6574696D696C6564;
    case 12:
      return 0x5F746E656D6D6F63;
    case 13:
      v10 = 0x657061637365;
      return v10 & 0xFFFFFFFFFFFFLL | 0x635F000000000000;
    case 14:
      return 0x715F656C62756F64;
    case 15:
      return 0x68635F65746F7571;
    case 16:
    case 64:
      OUTLINED_FUNCTION_0_52();
      return v9 + 1;
    case 17:
      return 0x65756C61765F616ELL;
    case 18:
      return 0x7265745F656E696CLL;
    case 19:
      v10 = 0x74757074756FLL;
      return v10 & 0xFFFFFFFFFFFFLL | 0x635F000000000000;
    case 20:
      return 0x696D696C5F776F72;
    case 21:
      return 0x776F725F70696B73;
    case 22:
      return 0x6C6F635F74786574;
    case 23:
      return 0x6E6F697461636F6CLL;
    case 24:
      v10 = 0x6874676E656CLL;
      return v10 & 0xFFFFFFFFFFFFLL | 0x635F000000000000;
    case 25:
      return 1954047348;
    case 26:
      return 0x6F635F6E656B6F74;
    case 27:
      return 0x656D616E656C6966;
    case 28:
      v11 = 0x636964657270;
      return v11 & 0xFFFFFFFFFFFFLL | 0x6974000000000000;
    case 29:
      return 0x63697274656DLL;
    case 30:
      return 0x6F7272655F78616DLL;
    case 31:
      return 1702063474;
    case 32:
    case 54:
    case 62:
      OUTLINED_FUNCTION_0_52();
      return v15 - 1;
    case 33:
      v5 = 1953525599;
      return v5 & 0xFFFF0000FFFFFFFFLL | 0x7300000000;
    case 34:
      return 0x745F74757074756FLL;
    case 35:
      return 0x646C656966;
    case 36:
      return 0x65665F6F69647561;
    case 37:
      return 0x5F6E6F6973736573;
    case 38:
      v5 = 1835365481;
      return v5 & 0xFFFF0000FFFFFFFFLL | 0x7300000000;
    case 39:
      return 107;
    case 40:
      v7 = 0x736F62726576;
      goto LABEL_79;
    case 41:
      return 0x5F6C6C615F746567;
    case 42:
      v13 = 0x657361746164;
      goto LABEL_69;
    case 43:
      v3 = 1919251317;
      goto LABEL_19;
    case 44:
      v3 = 1835365481;
LABEL_19:
      result = v3 | 0x7461645F00000000;
      break;
    case 45:
      result = 0x61645F6172747865;
      break;
    case 46:
      result = 0x5F7473657261656ELL;
      break;
    case 47:
      result = 1937010799;
      break;
    case 48:
      result = 0x7972657571;
      break;
    case 49:
      result = 0x6B5F706F74;
      break;
    case 50:
      result = 0x7463697274736572;
      break;
    case 51:
      v7 = 0x64756C637865;
LABEL_79:
      result = v7 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
      break;
    case 52:
      OUTLINED_FUNCTION_0_52();
      result = v16 | 0xC;
      break;
    case 53:
    case 56:
      OUTLINED_FUNCTION_0_52();
      result = v4 | 6;
      break;
    case 55:
      v12 = 0x66666F747563;
LABEL_71:
      result = v12 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
      break;
    case 57:
      result = 0xD000000000000011;
      break;
    case 58:
      OUTLINED_FUNCTION_0_52();
      result = v6 + 3;
      break;
    case 59:
      OUTLINED_FUNCTION_0_52();
      result = v14 + 5;
      break;
    case 60:
      OUTLINED_FUNCTION_0_52();
      result = v8 | 8;
      break;
    case 61:
      result = 0x7963617275636361;
      break;
    case 63:
      result = 0x625F74726F706572;
      break;
    case 65:
      result = 0x6F69736963657270;
      break;
    case 66:
      result = 0x6C6C61636572;
      break;
    case 67:
      result = 6518113;
      break;
    case 68:
      result = 0x767275635F636F72;
      break;
    case 69:
      result = 0x65726F63735F3166;
      break;
    case 70:
      result = 0x73736F6C5F676F6CLL;
      break;
    case 71:
      result = 0x656C797473;
      break;
    case 72:
      v13 = 0x6E65746E6F63;
LABEL_69:
      result = v13 & 0xFFFFFFFFFFFFLL | 0x74000000000000;
      break;
    case 74:
      result = 0xD000000000000011;
      break;
    case 75:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t MLTextClassifier.FeatureExtractorType.description.getter()
{
  v1 = v0;
  v2 = sub_237C05ADC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_0();
  v6 = v5 - v4;
  v7 = type metadata accessor for MLTextClassifier.FeatureExtractorType(0);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  sub_237B0BE98(v1, v9 - v8);
  switch(__swift_getEnumTagSinglePayload(v10, 4, v2))
  {
    case 1u:
      v12 = 0xD000000000000015;
      break;
    case 2u:
      OUTLINED_FUNCTION_0_60();
      v12 = v14 + 1;
      break;
    case 3u:
      OUTLINED_FUNCTION_0_60();
      v12 = v15 + 18;
      break;
    case 4u:
      OUTLINED_FUNCTION_0_60();
      v12 = v13 + 49;
      break;
    default:
      (*(v3 + 32))(v6, v10, v2);
      sub_237C08EDC();

      v11 = sub_237C05A9C();
      MEMORY[0x2383DC360](v11);

      MEMORY[0x2383DC360](39, 0xE100000000000000);
      v12 = 0xD00000000000001ALL;
      (*(v3 + 8))(v6, v2);
      break;
  }

  return v12;
}

uint64_t type metadata accessor for MLTextClassifier.FeatureExtractorType(uint64_t a1)
{
  result = qword_27DE9CE10;
  if (!qword_27DE9CE10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237B0BE98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLTextClassifier.FeatureExtractorType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t MLTextClassifier.FeatureExtractorType.playgroundDescription.getter@<X0>(unint64_t *a1@<X8>)
{
  result = MLTextClassifier.FeatureExtractorType.description.getter();
  a1[3] = MEMORY[0x277D837D0];
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_237B0BF54(uint64_t a1, uint64_t a2)
{
  v4 = sub_237C05ADC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 5)
  {
    return EnumTagSinglePayload - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_237B0BFB0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 4);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_237C05ADC();

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_237B0C010(uint64_t a1)
{
  v1 = sub_237C05ADC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

id sub_237B0C068(uint64_t a1)
{
  v2 = type metadata accessor for MLTextClassifier.FeatureExtractorType(0);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_2_0();
  v5 = v4 - v3;
  sub_237B0BE98(a1, v4 - v3);
  v6 = sub_237C05ADC();
  switch(__swift_getEnumTagSinglePayload(v5, 4, v6))
  {
    case 1u:
      v7 = MEMORY[0x277CD88C0];
      goto LABEL_6;
    case 2u:
    case 3u:
      v7 = MEMORY[0x277CD88B8];
      goto LABEL_6;
    case 4u:
      v7 = MEMORY[0x277CD88A8];
LABEL_6:
      v12 = *v7;
      sub_237AF2F0C(a1, v13);
      result = v12;
      break;
    default:
      v8 = *MEMORY[0x277CD88B0];
      sub_237AF2F0C(a1, v9);
      sub_237AF2F0C(v5, v10);
      result = v8;
      break;
  }

  return result;
}

uint64_t type metadata accessor for MLTextClassifier.ModelAlgorithmType(uint64_t a1)
{
  result = qword_27DE9CE20;
  if (!qword_27DE9CE20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237B0C1F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLTextClassifier.ModelAlgorithmType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t _s8CreateML16MLTextClassifierV18ModelAlgorithmTypeO11descriptionSSvg_0()
{
  v1 = v0;
  v2 = type metadata accessor for MLTextClassifier.FeatureExtractorType(0);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_2_0();
  v5 = v4 - v3;
  v6 = type metadata accessor for MLTextClassifier.ModelAlgorithmType(0);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v9 = v8 - v7;
  sub_237B0C1F4(v1, v8 - v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      return 0xD00000000000001ELL;
    }

    else
    {
      sub_237AF2E40(v9, v5, v11);
      v15 = MLTextClassifier.FeatureExtractorType.description.getter();

      MEMORY[0x2383DC360](0x6C65646F4D20, 0xE600000000000000);

      v12 = v15;
      sub_237AF2F0C(v5, v13);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_58();
    return 0x20746E452078614DLL;
  }

  return v12;
}

void MLTextClassifier.ModelAlgorithmType.playgroundDescription.getter(unint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MLTextClassifier.FeatureExtractorType(0);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_2_0();
  v7 = v6 - v5;
  v8 = type metadata accessor for MLTextClassifier.ModelAlgorithmType(0);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  sub_237B0C1F4(v2, v10 - v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v11 = 0x8000000237C1BFF0;
      v14 = 0xD00000000000001ELL;
    }

    else
    {
      sub_237AF2E40(v11, v7, v13);
      v17 = MLTextClassifier.FeatureExtractorType.description.getter();
      v18 = v15;

      MEMORY[0x2383DC360](0x6C65646F4D20, 0xE600000000000000);

      v14 = v17;
      v11 = v18;
      sub_237AF2F0C(v7, v16);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_58();
    v14 = 0x20746E452078614DLL;
  }

  a1[3] = MEMORY[0x277D837D0];
  *a1 = v14;
  a1[1] = v11;
}

void sub_237B0C534(uint64_t a1)
{
  sub_2379F1CF8();
  if (v1 <= 0x3F)
  {
    sub_237B0C5A8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_237B0C5A8(uint64_t a1)
{
  if (!qword_27DE9CE30)
  {
    type metadata accessor for MLTextClassifier.FeatureExtractorType(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9CA40, &unk_237C11B10);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27DE9CE30);
    }
  }
}

uint64_t static MLImageClassifier.__Defaults.validation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE9A630 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  v3 = __swift_project_value_buffer(v2, qword_27DE9CE38);
  return sub_237B0C840(v3, a1, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
}

uint64_t static MLImageClassifier.__Defaults.algorithm.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE9A638 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0);
  v3 = __swift_project_value_buffer(v2, qword_27DE9CE50);
  return sub_237B0C840(v3, a1, type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType);
}

uint64_t sub_237B0C754()
{
  v0 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  __swift_allocate_value_buffer(v0, qword_27DE9CE38);
  v1 = __swift_project_value_buffer(v0, qword_27DE9CE38);
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 256;

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_237B0C7C8()
{
  v0 = type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0);
  __swift_allocate_value_buffer(v0, qword_27DE9CE50);
  v1 = __swift_project_value_buffer(v0, qword_27DE9CE50);
  *v1 = 2;
  *(v1 + 8) = 0;
  type metadata accessor for MLImageClassifier.FeatureExtractorType(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_237B0C840(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

_BYTE *_s10__DefaultsVwst_2(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x237B0C978);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_237B0C9C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F8, &unk_237C0E1C0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_237B0CA2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F8, &unk_237C0E1C0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t type metadata accessor for AnyClassificationMetrics(uint64_t a1)
{
  result = qword_27DE9CE68;
  if (!qword_27DE9CE68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237B0CAD0(uint64_t a1)
{
  sub_237B0CB3C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_237B0CB3C(uint64_t a1)
{
  if (!qword_27DE9CE78)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9A9C8, &qword_237C0B6A0);
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9AA00, &qword_237C0B6F0);
    v5 = type metadata accessor for Either(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27DE9CE78);
    }
  }
}

void sub_237B0CBBC()
{
  OUTLINED_FUNCTION_153();
  v1 = v0;
  v3 = v2;
  v55 = v4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB98, &unk_237C0B900);
  OUTLINED_FUNCTION_0();
  v48 = v5;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  v8 = &v40 - v7;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C798, &qword_237C10E70);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  v46 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v45 = &v40 - v12;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA00, &qword_237C0B6F0);
  OUTLINED_FUNCTION_0();
  v49 = v13;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14);
  v47 = &v40 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  OUTLINED_FUNCTION_0();
  v41 = v17;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v18);
  v20 = &v40 - v19;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA88, &unk_237C0B800);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v21);
  MEMORY[0x28223BE20](v22);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  OUTLINED_FUNCTION_0();
  v42 = v23;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v24);
  v26 = &v40 - v25;
  sub_237C05FFC();
  v54 = v1;
  sub_237C05FFC();
  v27 = swift_dynamicCastMetatype();
  v53 = v3;
  if (v27 && swift_dynamicCastMetatype())
  {
    sub_237C05FEC();
    v56 = 0;
    v57 = 0xE000000000000000;
    OUTLINED_FUNCTION_3_39(&qword_27DE9B910, &qword_27DE9ACA0, &unk_237C0E0E0);
    sub_237C05EAC();
    v28 = *(v41 + 8);
    v28(v20, v16);
    v29 = v54;
    sub_237C05FEC();
    v56 = 0;
    v57 = 0xE000000000000000;
    sub_237C05EAC();
    v28(v20, v16);
    OUTLINED_FUNCTION_7_38(&qword_27DE9AA90, &qword_27DE9AA88, &unk_237C0B800);
    sub_237C06FBC();
    v30 = sub_237C0602C();
    OUTLINED_FUNCTION_4();
    v32 = *(v31 + 8);
    v32(v29, v30);
    v32(v53, v30);
    (*(v42 + 32))(v55, v26, v44);
LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F8, &unk_237C0E1C0);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_150();
    return;
  }

  if (swift_dynamicCastMetatype() && swift_dynamicCastMetatype())
  {
    sub_237C05FEC();
    v56 = 0;
    OUTLINED_FUNCTION_3_39(&qword_27DE9C7A0, &qword_27DE9AB98, &unk_237C0B900);
    v33 = v51;
    sub_237C05EAC();
    v34 = *(v48 + 8);
    v34(v8, v33);
    v35 = v54;
    sub_237C05FEC();
    v56 = 0;
    sub_237C05EAC();
    v34(v8, v33);
    OUTLINED_FUNCTION_7_38(&qword_27DE9C9E0, &qword_27DE9C798, &qword_237C10E70);
    v36 = v47;
    sub_237C06FBC();
    v37 = sub_237C0602C();
    OUTLINED_FUNCTION_4();
    v39 = *(v38 + 8);
    v39(v35, v37);
    v39(v53, v37);
    (*(v49 + 32))(v55, v36, v52);
    goto LABEL_7;
  }

  sub_237C090DC();
  __break(1u);
}

void sub_237B0D298()
{
  OUTLINED_FUNCTION_153();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA00, &qword_237C0B6F0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F8, &unk_237C0E1C0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_45(v3, v13);
  OUTLINED_FUNCTION_7_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = OUTLINED_FUNCTION_2_58();
    v5(v4);
    v6 = sub_237C06F7C();
    sub_2379E1D18(sub_237B0DC68, 0, v6);
    v8 = v7;

    sub_237B42F98(v8);
    v9 = OUTLINED_FUNCTION_9_38();
  }

  else
  {
    v11 = OUTLINED_FUNCTION_3_54();
    v12(v11);
    OUTLINED_FUNCTION_15_29();
    sub_237C06F7C();
    v9 = OUTLINED_FUNCTION_10_36();
  }

  v10(v9);
  OUTLINED_FUNCTION_150();
}

double sub_237B0D7E8()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA00, &qword_237C0B6F0);
  OUTLINED_FUNCTION_0();
  v4 = v3;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_13();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  OUTLINED_FUNCTION_0();
  v8 = v7;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F8, &unk_237C0E1C0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_45(v11, v20);
  OUTLINED_FUNCTION_7_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = OUTLINED_FUNCTION_2_58();
    v13(v12);
    sub_237C06F8C();
    v15 = v14;
    (*(v4 + 8))(v0, v2);
  }

  else
  {
    v16 = OUTLINED_FUNCTION_3_54();
    v17(v16);
    OUTLINED_FUNCTION_15_29();
    sub_237C06F8C();
    v15 = v18;
    (*(v8 + 8))(v1, v6);
  }

  return v15;
}

uint64_t sub_237B0D9C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F8, &unk_237C0E1C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_237B0DA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_153();
  a19 = v21;
  a20 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA00, &qword_237C0B6F0);
  OUTLINED_FUNCTION_0();
  v25 = v24;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_13();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  OUTLINED_FUNCTION_0();
  v29 = v28;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v30);
  v32 = &a9 - v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F8, &unk_237C0E1C0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v33);
  v35 = &a9 - v34;
  sub_237B0D9C4(v20, &a9 - v34);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v25 + 32))(v20, v35, v23);
    sub_237C06F5C();
    (*(v25 + 8))(v20, v23);
  }

  else
  {
    v36 = OUTLINED_FUNCTION_7_0();
    v37(v36);
    sub_237C06F5C();
    (*(v29 + 8))(v32, v27);
  }

  OUTLINED_FUNCTION_150();
}

uint64_t sub_237B0DC68@<X0>(uint64_t *a1@<X8>)
{
  result = sub_237C0924C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_45@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_237B0D9C4(v2, &a2 - a1);
}

uint64_t OUTLINED_FUNCTION_7_38(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x277CE18B0];

  return sub_2379D9224(a1, a2, a3, v4);
}

void sub_237B0E848()
{
  OUTLINED_FUNCTION_33_13(*MEMORY[0x277D85DE8]);
  MEMORY[0x2383DDB00]();
  if (v178)
  {
    if (tc_v1_error_message())
    {
      sub_237C087DC();
      OUTLINED_FUNCTION_45_7();
      if (qword_27DE9A640 != -1)
      {
        OUTLINED_FUNCTION_15_30(&qword_27DE9A640);
      }

      OUTLINED_FUNCTION_16_23();
      v0 = sub_2379F3408();
      v8 = OUTLINED_FUNCTION_2_59(v0, v1, v2, v3, v4, v5, v6, v7, MEMORY[0x277D837D0], v0, v0, v0, v175, v176, v177);
      OUTLINED_FUNCTION_39_11(v8, v9, v10, v11, v12, v13, v14, v15, v123, v136, v149, v162);
      OUTLINED_FUNCTION_25_21();

      if (qword_27DE9A648 != -1)
      {
        OUTLINED_FUNCTION_14_26(&qword_27DE9A648);
      }

      OUTLINED_FUNCTION_1_59();
      OUTLINED_FUNCTION_17_23();
      OUTLINED_FUNCTION_39_11(v16, v17, v18, v19, v20, v21, v22, v23, v124, v137, v150, v163);
      OUTLINED_FUNCTION_26_17();
      if (qword_27DE9A650 != -1)
      {
        OUTLINED_FUNCTION_13_27(&qword_27DE9A650);
      }

      OUTLINED_FUNCTION_1_59();
      OUTLINED_FUNCTION_17_23();
      OUTLINED_FUNCTION_39_11(v24, v25, v26, v27, v28, v29, v30, v31, v125, v138, v151, v164);
      OUTLINED_FUNCTION_25_21();

      if (qword_27DE9A658 != -1)
      {
        OUTLINED_FUNCTION_12_33(&qword_27DE9A658);
      }

      OUTLINED_FUNCTION_1_59();
      OUTLINED_FUNCTION_17_23();
      OUTLINED_FUNCTION_39_11(v32, v33, v34, v35, v36, v37, v38, v39, v126, v139, v152, v165);
      OUTLINED_FUNCTION_26_17();
      if (qword_27DE9A660 != -1)
      {
        OUTLINED_FUNCTION_11_35(&qword_27DE9A660);
      }

      OUTLINED_FUNCTION_1_59();
      OUTLINED_FUNCTION_17_23();
      OUTLINED_FUNCTION_39_11(v40, v41, v42, v43, v44, v45, v46, v47, v127, v140, v153, v166);
      OUTLINED_FUNCTION_25_21();

      if (qword_27DE9A668 != -1)
      {
        OUTLINED_FUNCTION_10_37(&qword_27DE9A668);
      }

      OUTLINED_FUNCTION_1_59();
      OUTLINED_FUNCTION_17_23();
      OUTLINED_FUNCTION_39_11(v48, v49, v50, v51, v52, v53, v54, v55, v128, v141, v154, v167);
      OUTLINED_FUNCTION_26_17();
      if (qword_27DE9A670 != -1)
      {
        OUTLINED_FUNCTION_9_39(&qword_27DE9A670);
      }

      OUTLINED_FUNCTION_1_59();
      OUTLINED_FUNCTION_17_23();
      OUTLINED_FUNCTION_39_11(v56, v57, v58, v59, v60, v61, v62, v63, v129, v142, v155, v168);
      OUTLINED_FUNCTION_25_21();

      if (qword_27DE9A678 != -1)
      {
        OUTLINED_FUNCTION_8_35(&qword_27DE9A678);
      }

      OUTLINED_FUNCTION_1_59();
      OUTLINED_FUNCTION_17_23();
      OUTLINED_FUNCTION_39_11(v64, v65, v66, v67, v68, v69, v70, v71, v130, v143, v156, v169);
      OUTLINED_FUNCTION_26_17();
      if (qword_27DE9A680 != -1)
      {
        OUTLINED_FUNCTION_7_39(&qword_27DE9A680);
      }

      OUTLINED_FUNCTION_1_59();
      OUTLINED_FUNCTION_18_27();
      OUTLINED_FUNCTION_39_11(v72, v73, v74, v75, v76, v77, v78, v79, v131, v144, v157, v170);
      OUTLINED_FUNCTION_25_21();

      if (qword_27DE9A688 != -1)
      {
        OUTLINED_FUNCTION_6_45(&qword_27DE9A688);
      }

      OUTLINED_FUNCTION_1_59();
      OUTLINED_FUNCTION_18_27();
      OUTLINED_FUNCTION_39_11(v80, v81, v82, v83, v84, v85, v86, v87, v132, v145, v158, v171);
      OUTLINED_FUNCTION_26_17();
      if (qword_27DE9A690 != -1)
      {
        OUTLINED_FUNCTION_5_46(&qword_27DE9A690);
      }

      OUTLINED_FUNCTION_1_59();
      OUTLINED_FUNCTION_18_27();
      OUTLINED_FUNCTION_39_11(v88, v89, v90, v91, v92, v93, v94, v95, v133, v146, v159, v172);
      OUTLINED_FUNCTION_25_21();

      if (qword_27DE9A698 != -1)
      {
        OUTLINED_FUNCTION_4_51(&qword_27DE9A698);
      }

      OUTLINED_FUNCTION_1_59();
      OUTLINED_FUNCTION_18_27();
      OUTLINED_FUNCTION_39_11(v96, v97, v98, v99, v100, v101, v102, v103, v134, v147, v160, v173);
      OUTLINED_FUNCTION_23_25();
      if (qword_27DE9A6A0 != -1)
      {
        OUTLINED_FUNCTION_3_55(&qword_27DE9A6A0);
      }

      OUTLINED_FUNCTION_1_59();
      OUTLINED_FUNCTION_18_27();
      OUTLINED_FUNCTION_39_11(v104, v105, v106, v107, v108, v109, v110, v111, v135, v148, v161, v174);
      OUTLINED_FUNCTION_34_13();
      sub_2379F5634();
      OUTLINED_FUNCTION_50_7();
      v112 = sub_237C08CFC();
      sub_237C08C3C();
      v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD78, &qword_237C0E8B0);
      v114 = OUTLINED_FUNCTION_21_9(v113);
      v115 = OUTLINED_FUNCTION_49_5(v114, xmmword_237C0B660);
      OUTLINED_FUNCTION_44_11(v115);
      OUTLINED_FUNCTION_21_24("%@ \n");
      OUTLINED_FUNCTION_48_10(v116, v117, v118, v119, v120);

      sub_2379E8AF0();
      v121 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
      OUTLINED_FUNCTION_22_21(v121, v122);
      tc_v1_release();
    }

    else
    {
      __break(1u);
    }
  }
}

BOOL sub_237B17790(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

void sub_237B177CC()
{
  qword_27DE9CE80 = 0x656D61724653;
  *algn_27DE9CE88 = 0xE600000000000000;
  qword_27DE9CE90 = 0x6C62615461746144;
  unk_27DE9CE98 = 0xE900000000000065;
}

void sub_237B17808()
{
  qword_27DE9CEA0 = 0x796172724153;
  *algn_27DE9CEA8 = 0xE600000000000000;
  qword_27DE9CEB0 = 0x756C6F4361746144;
  unk_27DE9CEB8 = 0xEA00000000006E6DLL;
}

void sub_237B17844()
{
  qword_27DE9CEC0 = 0x6D617266735F6374;
  *algn_27DE9CEC8 = 0xEF796C7070615F65;
  qword_27DE9CED0 = 7364973;
  unk_27DE9CED8 = 0xE300000000000000;
}

void sub_237B17884()
{
  qword_27DE9CEE0 = 0x61727261735F6374;
  *algn_27DE9CEE8 = 0xEF796C7070615F79;
  qword_27DE9CEF0 = 7364973;
  unk_27DE9CEF8 = 0xE300000000000000;
}

void sub_237B178C4()
{
  qword_27DE9CF00 = 0x616E706F7264;
  *algn_27DE9CF08 = 0xE600000000000000;
  qword_27DE9CF10 = 0x7373694D706F7264;
  unk_27DE9CF18 = 0xEB00000000676E69;
}

void sub_237B17904()
{
  qword_27DE9CF20 = 1953720684;
  *algn_27DE9CF28 = 0xE400000000000000;
  strcpy(&qword_27DE9CF30, "SequenceType");
  unk_27DE9CF3D = 0;
  unk_27DE9CF3E = -5120;
}

void sub_237B17940()
{
  qword_27DE9CF40 = 0x74616F6C66;
  *algn_27DE9CF48 = 0xE500000000000000;
  qword_27DE9CF50 = 0x656C62756F44;
  unk_27DE9CF58 = 0xE600000000000000;
}

void sub_237B17974()
{
  qword_27DE9CF60 = 0x656765746E692061;
  *algn_27DE9CF68 = 0xE900000000000072;
  qword_27DE9CF70 = 0x746E49206E61;
  unk_27DE9CF78 = 0xE600000000000000;
}

void sub_237B179B0()
{
  qword_27DE9CF80 = 0x203A726F727245;
  *algn_27DE9CF88 = 0xE700000000000000;
  qword_27DE9CF90 = 0;
  unk_27DE9CF98 = 0xE000000000000000;
}

void sub_237B179DC()
{
  strcpy(&qword_27DE9CFA0, "a Turi archive");
  algn_27DE9CFA8[7] = -18;
  qword_27DE9CFB0 = 0xD000000000000023;
  unk_27DE9CFB8 = 0x8000000237C1C160;
}

void sub_237B17A28()
{
  qword_27DE9CFC0 = 0xD000000000000016;
  *algn_27DE9CFC8 = 0x8000000237C1C120;
  qword_27DE9CFD0 = 0xD000000000000017;
  unk_27DE9CFD8 = 0x8000000237C1C140;
}

void sub_237B17A68()
{
  qword_27DE9CFE0 = 0xD000000000000020;
  *algn_27DE9CFE8 = 0x8000000237C1C0F0;
  strcpy(&qword_27DE9CFF0, "type Sequence.");
  unk_27DE9CFFF = -18;
}

void sub_237B17AB4()
{
  qword_27DE9D000 = 0xD000000000000034;
  *algn_27DE9D008 = 0x8000000237C1C090;
  qword_27DE9D010 = 0xD00000000000001FLL;
  unk_27DE9D018 = 0x8000000237C1C0D0;
}

uint64_t OUTLINED_FUNCTION_3_55(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_51(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_46(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_45(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_39(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_35(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_39(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_37(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_35(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_12_33(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_13_27(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_14_26(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_15_30(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_19_27(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_20_23(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{

  return sub_237C0826C(a1, 4, 2, a4, v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_22_21(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_23_25()
{
}

uint64_t OUTLINED_FUNCTION_24_23()
{
}

uint64_t OUTLINED_FUNCTION_26_17()
{
}

uint64_t OUTLINED_FUNCTION_27_11()
{
}

uint64_t OUTLINED_FUNCTION_28_13()
{
}

uint64_t OUTLINED_FUNCTION_29_12(uint64_t result)
{
  v3[8] = result;
  v3[4] = v1;
  v3[5] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_34_13()
{
}

uint64_t OUTLINED_FUNCTION_38_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return sub_237C08D9C();
}

uint64_t OUTLINED_FUNCTION_39_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return sub_237C08D9C();
}

unint64_t OUTLINED_FUNCTION_42_10(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[3].n128_u64[1] = v2;

  return sub_237A8E8E4();
}

uint64_t OUTLINED_FUNCTION_43_7()
{
}

uint64_t OUTLINED_FUNCTION_44_11(uint64_t result)
{
  v3[8] = result;
  v3[4] = v1;
  v3[5] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_48_10(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_237C0826C(a1, a2, a3, a4, a5, v5, v6);
}

unint64_t OUTLINED_FUNCTION_49_5(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[3].n128_u64[1] = v2;

  return sub_237A8E8E4();
}

uint64_t OUTLINED_FUNCTION_50_7()
{
}

uint64_t sub_237B18000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237B18118(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x8000000237C1C190 == a2;
  if (v3 || (sub_237C0929C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000237C1C1B0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_237C0929C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_237B181EC(char a1)
{
  if (a1)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_237B18224(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16[1] = a4;
  v16[0] = a3;
  type metadata accessor for FeatureVectorizer.Transformer.CodingKeys(255, a5, a6, a4);
  OUTLINED_FUNCTION_0_62();
  swift_getWitnessTable();
  v8 = sub_237C0922C();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = v16 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237C0949C();
  v19 = a2;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D120, &qword_237C130E0);
  sub_237B188AC(&qword_27DE9D138, sub_237B18924, MEMORY[0x277D83948]);
  v14 = v16[2];
  sub_237C0921C();
  if (!v14)
  {
    v17 = 1;
    sub_237C091EC();
  }

  return (*(v10 + 8))(v13, v8);
}

uint64_t sub_237B183F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FeatureVectorizer.Transformer.CodingKeys(255, a2, a3, a4);
  OUTLINED_FUNCTION_0_62();
  WitnessTable = swift_getWitnessTable();
  sub_237C091CC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v7);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237C0946C();
  if (!v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D120, &qword_237C130E0);
    sub_237B188AC(&qword_27DE9D128, sub_237B18858, MEMORY[0x277D83978]);
    sub_237C091BC();
    WitnessTable = v11;
    sub_237C0918C();
    v9 = OUTLINED_FUNCTION_1_60();
    v10(v9);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return WitnessTable;
}

uint64_t sub_237B18658(uint64_t a1)
{
  sub_237C093CC();
  sub_237A007F0(v3, *v1);
  return sub_237C0940C();
}

uint64_t sub_237B186B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237B18118(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237B18708@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237A007D8();
  *a1 = result;
  return result;
}

uint64_t sub_237B18738(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237B1878C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_237B187E0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X3>)
{
  result = sub_237B183F8(a1, *(a2 + 16), *(a2 + 24), a4);
  if (!v4)
  {
    *a3 = result;
    a3[1] = v7;
    a3[2] = v8;
  }

  return result;
}

unint64_t sub_237B18858()
{
  result = qword_27DE9D130;
  if (!qword_27DE9D130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9D130);
  }

  return result;
}

uint64_t sub_237B188AC(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9D120, &qword_237C130E0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_237B18924()
{
  result = qword_27DE9D140[0];
  if (!qword_27DE9D140[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE9D140);
  }

  return result;
}

_BYTE *sub_237B18980(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0x237B18A4CLL);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_237B18AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch(a3)
  {
    case 1:
      v13 = OUTLINED_FUNCTION_3_56(a1, a2, a3, a4, a5, a6, a7, a8, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);
      if (a2)
      {
        goto LABEL_30;
      }

      if (!v13)
      {
        goto LABEL_27;
      }

      type metadata accessor for CMLFeatureValue();
      swift_initStackObject();
      OUTLINED_FUNCTION_7_23();
      OUTLINED_FUNCTION_2_60(0x69735F6863746162, 0xEA0000000000657ALL);

      break;
    case 2:
      type metadata accessor for CMLFeatureValue();

      OUTLINED_FUNCTION_4_52();
      if (a2)
      {
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_2_60(0x687469726F676C61, 0xE90000000000006DLL);

    case 3:
      type metadata accessor for CMLFeatureValue();

      OUTLINED_FUNCTION_4_52();
      if (a2)
      {
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_2_60(0x705F656369766564, 0xED00007963696C6FLL);

    case 4:
      v11 = OUTLINED_FUNCTION_3_56(a1, a2, a3, a4, a5, a6, a7, a8, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);
      if (a2)
      {
        goto LABEL_30;
      }

      if (!v11)
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        swift_unexpectedError();
        __break(1u);
        JUMPOUT(0x237B18EE8);
      }

      type metadata accessor for CMLFeatureValue();
      swift_initStackObject();
      OUTLINED_FUNCTION_7_23();
      OUTLINED_FUNCTION_2_60(0xD000000000000012, 0x8000000237C1C1F0);

      break;
    case 5:
      v14 = OUTLINED_FUNCTION_3_56(a1, a2, a3, a4, a5, a6, a7, a8, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);
      if (a2)
      {
        goto LABEL_30;
      }

      if (!v14)
      {
        goto LABEL_28;
      }

      type metadata accessor for CMLFeatureValue();
      swift_initStackObject();
      OUTLINED_FUNCTION_7_23();
      OUTLINED_FUNCTION_2_60(0x645F6C6574786574, 0xEE00797469736E65);

      break;
    case 6:
      v15 = OUTLINED_FUNCTION_3_56(a1, a2, a3, a4, a5, a6, a7, a8, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);
      if (a2)
      {
        goto LABEL_30;
      }

      if (!v15)
      {
        goto LABEL_29;
      }

      type metadata accessor for CMLFeatureValue();
      swift_initStackObject();
      OUTLINED_FUNCTION_7_23();
      OUTLINED_FUNCTION_2_60(0x74735F656C797473, 0xEE006874676E6572);

      break;
    case 7:
      v12 = OUTLINED_FUNCTION_3_56(a1, a2, a3, a4, a5, a6, a7, a8, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);
      if (a2)
      {
        goto LABEL_30;
      }

      if (!v12)
      {
        goto LABEL_25;
      }

      type metadata accessor for CMLFeatureValue();
      swift_initStackObject();
      OUTLINED_FUNCTION_7_23();
      OUTLINED_FUNCTION_2_60(0x6D6172665F6D756ELL, 0xEA00000000007365);

      break;
    default:
      v9 = OUTLINED_FUNCTION_3_56(a1, a2, a3, a4, a5, a6, a7, a8, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);
      if (a2)
      {
        goto LABEL_30;
      }

      if (!v9)
      {
        goto LABEL_26;
      }

      type metadata accessor for CMLFeatureValue();
      swift_initStackObject();
      OUTLINED_FUNCTION_7_23();
      OUTLINED_FUNCTION_2_60(0x726574695F78616DLL, 0xEE00736E6F697461);

      break;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_60(uint64_t a1, uint64_t a2)
{

  return sub_237A2EABC(a1, a2, v2);
}

uint64_t OUTLINED_FUNCTION_3_56(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{

  return sub_237B0F164(v30, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t OUTLINED_FUNCTION_4_52()
{

  return sub_237A2E7CC();
}

uint64_t type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(uint64_t a1)
{
  result = qword_27DE9D1C8;
  if (!qword_27DE9D1C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237B18FB4(uint64_t a1)
{
  sub_2379EA11C();
  if (v1 <= 0x3F)
  {
    type metadata accessor for MLSoundClassifier.DataSource(319);
    if (v2 <= 0x3F)
    {
      sub_2379FCE48(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_237B1903C(uint64_t a1)
{
  v4 = type metadata accessor for MLSoundClassifier.DataSource(0);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_2_0();
  v7 = v6 - v5;
  type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5_47(v9);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_237B1923C(v2, v7);
      sub_237B3BD1C();
      if (!v1)
      {
        if (v14)
        {
          OUTLINED_FUNCTION_0_64();
          sub_237B192A0(v7, v17);

          return a1;
        }

        a1 = 0x8000000237C1C210;
        sub_2379E8AF0();
        v18 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
        *v19 = 0xD000000000000031;
        v19[1] = 0x8000000237C1C210;
        OUTLINED_FUNCTION_52(v18, v19);
      }

      OUTLINED_FUNCTION_0_64();
      sub_237B192A0(v7, v15);
      break;
    case 2u:
      OUTLINED_FUNCTION_3_57();
      sub_237B192A0(v2, v11);
      sub_2379E8AF0();
      v12 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
      *v13 = 0xD000000000000031;
      v13[1] = 0x8000000237C1C210;
      OUTLINED_FUNCTION_52(v12, v13);
      break;
    case 3u:

      break;
    default:
      sub_237BF6230(*v2, *(v2 + 8), *(v2 + 16) | (*(v2 + 17) << 8), a1);
      a1 = v10;
      break;
  }

  return a1;
}

uint64_t sub_237B1923C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLSoundClassifier.DataSource(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_237B192A0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_237B192F8(uint64_t a1)
{
  v3 = v1;
  type metadata accessor for MLSoundClassifier.DataSource(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  v7 = &v27[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v27[-v9];
  type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_0();
  v14 = v13 - v12;
  sub_237A392BC(v3, v13 - v12);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_237B1923C(v14, v10);
      sub_237B3C1CC();
      if (!v2)
      {
        if (*(v21 + 16))
        {
          OUTLINED_FUNCTION_0_64();
          sub_237B192A0(v10, v23);
          goto LABEL_11;
        }

        a1 = 0x8000000237C1C250;
        sub_2379E8AF0();
        v25 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
        *v26 = 0xD00000000000002ELL;
        v26[1] = 0x8000000237C1C250;
        OUTLINED_FUNCTION_52(v25, v26);
      }

      OUTLINED_FUNCTION_0_64();
      sub_237B192A0(v10, v22);
      break;
    case 2u:
      *v7 = *v14;
      swift_storeEnumTagMultiPayload();
      sub_237B3C1CC();
      v17 = v16;
      OUTLINED_FUNCTION_0_64();
      sub_237B192A0(v7, v18);
      if (!v2)
      {
        if (*(v17 + 16))
        {
          goto LABEL_11;
        }

        sub_2379E8AF0();
        v19 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
        *v20 = 0xD00000000000002ELL;
        v20[1] = 0x8000000237C1C250;
        OUTLINED_FUNCTION_52(v19, v20);
      }

      break;
    case 3u:
LABEL_11:

      break;
    default:
      sub_237BF634C(*v14, *(v14 + 8), *(v14 + 16) | (*(v14 + 17) << 8), a1);
      a1 = v15;
      break;
  }

  return a1;
}

uint64_t sub_237B19584(uint64_t a1)
{
  v3 = type metadata accessor for MLSoundClassifier.DataSource(0);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_2_0();
  v6 = v5 - v4;
  type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5_47(v8);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      sub_237B1923C(v1, v6);
      sub_237B3DEDC(a1);
      OUTLINED_FUNCTION_0_64();
      v11 = v6;
      goto LABEL_4;
    case 2:
      OUTLINED_FUNCTION_3_57();
      v11 = v1;
LABEL_4:
      result = sub_237B192A0(v11, v10);
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_47@<X0>(uint64_t a1@<X8>)
{

  return sub_237A392BC(v2, v1 - a1);
}

void sub_237B19700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = sub_237C0602C();
  v8 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v46 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_237C05D8C();
  v11 = *(v10 + 16);
  if (v11)
  {
    v39 = a2;
    v40 = a3;
    v41 = a4;
    v42 = v4;
    v47 = MEMORY[0x277D84F90];
    sub_237AC8A74();
    v12 = v47;
    v14 = *(v8 + 16);
    v13 = v8 + 16;
    v15 = *(v13 + 64);
    v38[1] = v10;
    v16 = v10 + ((v15 + 32) & ~v15);
    v44 = *(v13 + 56);
    v45 = v14;
    v43 = (v13 - 8);
    do
    {
      v17 = v46;
      v18 = v49;
      v19 = v13;
      v45(v46, v16, v49);
      v20 = sub_237C0600C();
      v22 = v21;
      (*v43)(v17, v18);
      v47 = v12;
      v23 = *(v12 + 16);
      if (v23 >= *(v12 + 24) >> 1)
      {
        sub_237AC8A74();
        v12 = v47;
      }

      *(v12 + 16) = v23 + 1;
      v24 = v12 + 16 * v23;
      *(v24 + 32) = v20;
      *(v24 + 40) = v22;
      v16 += v44;
      --v11;
      v13 = v19;
    }

    while (v11);

    a4 = v41;
    a2 = v39;
    a3 = v40;
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
  }

  v25 = sub_2379EB28C(a2, a3, v12);
  if (v26)
  {

    v47 = 0;
    v48 = 0xE000000000000000;
    sub_237C08EDC();
    MEMORY[0x2383DC360](0x6320746567726154, 0xEF27206E6D756C6FLL);
    MEMORY[0x2383DC360](a2, a3);
    MEMORY[0x2383DC360](0xD000000000000024, 0x8000000237C1C280);
    v28 = v47;
    v27 = v48;
LABEL_15:
    sub_2379E8AF0();
    swift_allocError();
    *v36 = v28;
    *(v36 + 8) = v27;
    *(v36 + 16) = 0u;
    *(v36 + 32) = 0u;
    *(v36 + 48) = 1;
    swift_willThrow();
    return;
  }

  v29 = v25;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237B05F64(v12, v30, v31, v32);
    v12 = v37;
  }

  v33 = *(v12 + 16);
  if (v29 >= v33)
  {
    __break(1u);
    return;
  }

  v34 = v33 - 1;
  sub_237A1DCBC((v12 + 16 * v29 + 48), v33 - 1 - v29, (v12 + 16 * v29 + 32));
  *(v12 + 16) = v34;

  v35 = sub_237B19A6C(v12, a4);

  if (!*(v35 + 16))
  {

    v27 = 0x8000000237C1C2B0;
    v28 = 0xD000000000000038;
    goto LABEL_15;
  }
}

uint64_t sub_237B19A6C(uint64_t isUniquelyReferenced_nonNull_native, uint64_t a2)
{
  v2 = isUniquelyReferenced_nonNull_native;
  if (a2)
  {
    v3 = *(a2 + 16);
    if (v3)
    {
      v4 = 0;
      v22 = "ven training data frame.";
      v5 = (a2 + 40);
      v6 = MEMORY[0x277D84F90];
      v24 = xmmword_237C0B660;
      do
      {
        v8 = *(v5 - 1);
        v7 = *v5;
        v25 = v8;
        v26 = v7;
        MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
        v21[2] = &v25;

        if (sub_237AC1CCC(sub_237A06CFC, v21, v2))
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_237BC0CB8();
            v6 = isUniquelyReferenced_nonNull_native;
          }

          v9 = *(v6 + 16);
          if (v9 >= *(v6 + 24) >> 1)
          {
            sub_237BC0CB8();
            v6 = isUniquelyReferenced_nonNull_native;
          }

          *(v6 + 16) = v9 + 1;
          v10 = v6 + 16 * v9;
          *(v10 + 32) = v8;
          *(v10 + 40) = v7;
        }

        else
        {
          v25 = 0;
          v26 = 0xE000000000000000;
          sub_237C08EDC();
          MEMORY[0x2383DC360](0x27206E6D756C6F43, 0xE800000000000000);
          MEMORY[0x2383DC360](v8, v7);

          MEMORY[0x2383DC360](0xD000000000000038, v22 | 0x8000000000000000);
          v12 = v25;
          v11 = v26;
          v13 = sub_237C08C3C();
          v23 = v4;
          v14 = v13;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B3B0, &unk_237C0E1D0);
          v15 = swift_allocObject();
          *(v15 + 16) = v24;
          v16 = MEMORY[0x277D837D0];
          *(v15 + 56) = MEMORY[0x277D837D0];
          *(v15 + 32) = v12;
          *(v15 + 40) = v11;

          sub_237C0939C();

          sub_2379F5634();
          v17 = sub_237C08CFC();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD78, &qword_237C0E8B0);
          v18 = swift_allocObject();
          *(v18 + 16) = v24;
          *(v18 + 56) = v16;
          *(v18 + 64) = sub_237A8E8E4();
          *(v18 + 32) = v12;
          *(v18 + 40) = v11;
          v19 = v14;
          v4 = v23;
          sub_237C0826C("%@\n", 3, 2, &dword_2379D3000, v17, v19, v18);
        }

        v5 += 2;
        --v3;
      }

      while (v3);
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  else
  {

    return v2;
  }

  return v6;
}

uint64_t sub_237B19D44(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_237A85E3C(a1, v14);
    swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_237B41238();
    *v2 = v13;
    sub_237C0909C();
    OUTLINED_FUNCTION_4();
    return (*(v4 + 8))(a2);
  }

  else
  {
    OUTLINED_FUNCTION_39_12();
    sub_2379D9054(v6, v7, v8);
    sub_237B1DE58(v14);
    sub_237C0909C();
    OUTLINED_FUNCTION_4();
    (*(v9 + 8))(a2);
    OUTLINED_FUNCTION_39_12();
    return sub_2379D9054(v10, v11, v12);
  }
}

uint64_t sub_237B19E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D218, &qword_237C13300);
  OUTLINED_FUNCTION_20(v8);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  v12 = sub_237C0806C();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  v18 = v17 - v16;
  OUTLINED_FUNCTION_25_22();
  if (__swift_getEnumTagSinglePayload(v19, v20, v21) == 1)
  {
    sub_2379D9054(a1, &qword_27DE9D218, &qword_237C13300);
    sub_237B1DF7C(a2, a3, v11);

    v22 = OUTLINED_FUNCTION_34_1();
    return sub_2379D9054(v22, v23, &qword_237C13300);
  }

  else
  {
    (*(v14 + 32))(v18, a1, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v4;
    sub_237B41384(v18, a2, a3, isUniquelyReferenced_nonNull_native);

    *v4 = v27;
  }

  return result;
}

uint64_t sub_237B19FFC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_237A1FCF0(a1, v10);
    swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    result = sub_237B413C0(v10, a2);
    *v2 = v8;
  }

  else
  {
    sub_2379D9054(a1, &qword_27DE9D200, &qword_237C132C8);
    v5 = sub_237ACB370(a2);
    if (v6)
    {
      v7 = v5;
      swift_isUniquelyReferenced_nonNull_native();
      v9 = *v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C000, &unk_237C132D0);
      sub_237C090AC();
      sub_237A1FCF0((*(v9 + 56) + 40 * v7), v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BF50, &unk_237C137E0);
      sub_237A84BFC();
      sub_237C090CC();
      *v2 = v9;
    }

    else
    {
      v11 = 0;
      memset(v10, 0, sizeof(v10));
    }

    return sub_2379D9054(v10, &qword_27DE9D200, &qword_237C132C8);
  }

  return result;
}

id sub_237B1A15C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = sub_237B1A1CC(sub_237B1E32C);

  return v3;
}

id sub_237B1A1CC(void (*a1)(uint64_t *__return_ptr, id))
{
  a1(&v4, [v1 lock]);
  if (v2)
  {
    return [v1 unlock];
  }

  [v1 unlock];
  return v4;
}

uint64_t sub_237B1A2D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D208, &unk_237C132E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15[-v5];
  swift_beginAccess();
  v7 = *(a1 + 24);
  v18 = a2;
  *&v20[0] = v7;

  v8 = sub_237B1E0C4(sub_237B1E348, v17, v7);
  v16 = v20;
  sub_237A9D400(sub_237B1E3A0, v15, v8, v9 & 1, v6);

  v10 = sub_237C074BC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    sub_2379D9054(v6, &qword_27DE9D208, &unk_237C132E0);
    memset(v20, 0, sizeof(v20));
  }

  else
  {
    v11 = sub_237C0749C();
    (*(*(v10 - 8) + 8))(v6, v10);
    sub_237AC9A5C(v11, v20);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C998, &qword_237C117C0);
  v12 = swift_dynamicCast();
  v13 = v19;
  if (!v12)
  {
    return 0;
  }

  return v13;
}

uint64_t sub_237B1A4D0(uint64_t a1)
{
  v2 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  OUTLINED_FUNCTION_13_26(v2);
  sub_237C05DAC();
  v3 = sub_237C05DBC();
  OUTLINED_FUNCTION_13_26(v3);
  v4 = type metadata accessor for TreeRegressor(0);
  OUTLINED_FUNCTION_13_26(v4);
  v5 = type metadata accessor for TreeRegressorModel(0);
  OUTLINED_FUNCTION_13_26(v5);
  OUTLINED_FUNCTION_34_12(OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics);
  *(v6 + 16) = -1;
  OUTLINED_FUNCTION_34_12(OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics);
  *(v7 + 16) = v8;
  sub_237B1E418();
  return v1;
}

uint64_t *sub_237B1A5B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7)
{
  v100 = a7;
  v102 = a6;
  v98 = a5;
  v104 = a2;
  v96 = *v7;
  v103 = sub_237C071DC();
  OUTLINED_FUNCTION_0();
  v101 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_14_0();
  v92 = v13;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v14);
  v95 = v88 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D1F8, &unk_237C132A0);
  OUTLINED_FUNCTION_20(v16);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v17);
  v94 = (v88 - v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE18, &qword_237C0DEE0);
  OUTLINED_FUNCTION_20(v19);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_19_28(v21, v88[0]);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  OUTLINED_FUNCTION_20(v22);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v23);
  v90 = v88 - v24;
  v25 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2_0();
  v29 = v28 - v27;
  v91 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v25);
  sub_237C05DAC();
  v33 = sub_237C05DBC();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v33);
  type metadata accessor for TreeRegressor(0);
  OUTLINED_FUNCTION_64();
  v97 = v37;
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v37);
  type metadata accessor for TreeRegressorModel(0);
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
  OUTLINED_FUNCTION_34_12(OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics);
  *(v45 + 16) = -1;
  OUTLINED_FUNCTION_34_12(OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics);
  *(v46 + 16) = v47;
  v93 = a3;
  v48 = a3;
  v49 = a4;
  v50 = v99;
  sub_237B19700(a1, v48, a4, v98);
  v99 = v50;
  if (v50)
  {

    OUTLINED_FUNCTION_5_48();
    sub_237B1E3C0(v100, v52);
    (*(v101 + 8))(v102, v103);
    OUTLINED_FUNCTION_39_12();
    sub_2379D9054(v53, v54, v55);
    v56 = *(*(v33 - 8) + 8);
    v56(a1, v33);
    sub_2379D9054(v7 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingParameters, &qword_27DE9AE18, &qword_237C0DEE0);
    v56(v7 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingData, v33);
    OUTLINED_FUNCTION_39_12();
    sub_2379D9054(v57, v58, v59);
    sub_2379D9054(v7 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_regressor, &qword_27DE9D1F8, &unk_237C132A0);
    sub_2379D9054(v7 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_model, &qword_27DE9AE10, &qword_237C0C090);
    v60 = OUTLINED_FUNCTION_17_22(OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics);
    sub_237B0B0B0(v60, v61, v62);
    v63 = OUTLINED_FUNCTION_17_22(OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics);
    sub_237B0B0B0(v63, v64, v65);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v88[0] = v51;

    v98 = *(v33 - 8);
    (*(v98 + 16))(v29, a1, v33);
    sub_237A40628();
    v66 = v25[8];
    v67 = *(v101 + 16);
    v88[1] = v101 + 16;
    v89 = v67;
    v67(v29 + v66, v102, v103);
    v96 = a1;
    OUTLINED_FUNCTION_64();
    __swift_storeEnumTagSinglePayload(v68, v69, v70, v33);

    sub_237A6F014();
    v71 = (v29 + v25[6]);
    v72 = v93;
    *v71 = v93;
    v71[1] = a4;
    v73 = v88[0];
    *(v29 + v25[7]) = v88[0];
    sub_237B1E470();
    OUTLINED_FUNCTION_80_0();
    __swift_storeEnumTagSinglePayload(v74, v75, v76, v25);
    OUTLINED_FUNCTION_59_1();
    swift_beginAccess();
    sub_237A6F014();
    swift_endAccess();
    v77 = v100;
    sub_237B1E470();

    v78 = v95;
    sub_237C071CC();
    v79 = v94;
    *v94 = v72;
    v79[1] = v49;
    v79[2] = v73;
    v79[3] = v73;
    v79[4] = 0xD000000000000013;
    v79[5] = 0x8000000237C17BE0;
    v80 = v103;
    v89(v92, v78, v103);

    sub_237C06CEC();
    OUTLINED_FUNCTION_5_48();
    sub_237B1E3C0(v77, v81);
    v82 = *(v101 + 8);
    v82(v102, v80);
    sub_2379D9054(v104, &qword_27DE9A9A0, &qword_237C0BF60);
    (*(v98 + 8))(v96, v33);
    v82(v78, v80);
    OUTLINED_FUNCTION_0_65();
    sub_237B1E3C0(v29, v83);
    OUTLINED_FUNCTION_80_0();
    __swift_storeEnumTagSinglePayload(v84, v85, v86, v97);
    OUTLINED_FUNCTION_59_1();
    swift_beginAccess();
    sub_237A6F014();
    swift_endAccess();
  }

  return v7;
}

void sub_237B1ACF4()
{
  OUTLINED_FUNCTION_74();
  v67 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE10, &qword_237C0C090);
  OUTLINED_FUNCTION_20(v3);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_19_28(v5, v66[0]);
  v74 = sub_237C071DC();
  OUTLINED_FUNCTION_0();
  v75 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14_0();
  v73 = v8;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v9);
  v72 = v66 - v10;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v11);
  v13 = v66 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D1F8, &unk_237C132A0);
  v15 = OUTLINED_FUNCTION_20(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_14_0();
  v71 = v16;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v17);
  v19 = (v66 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE18, &qword_237C0DEE0);
  OUTLINED_FUNCTION_20(v20);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v21);
  v22 = OUTLINED_FUNCTION_45_8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_2_0();
  v26 = v25 - v24;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_237A40628();
  OUTLINED_FUNCTION_73_1(v2, 1, v22);
  if (v27)
  {
    sub_2379D9054(v2, &qword_27DE9AE18, &qword_237C0DEE0);
    __break(1u);
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_2_61();
  sub_237B1E418();
  v28 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingData;
  OUTLINED_FUNCTION_59_1();
  swift_beginAccess();
  sub_237C05DBC();
  OUTLINED_FUNCTION_4();
  (*(v29 + 24))(v0 + v28, v26);
  swift_endAccess();
  v30 = v22[5];
  v31 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationData;
  OUTLINED_FUNCTION_59_1();
  swift_beginAccess();
  sub_237A6EE90(v26 + v30, v0 + v31);
  swift_endAccess();
  v69 = v26;
  v70 = v22;
  v32 = v22[7];
  v33 = (v26 + v22[6]);
  v34 = *v33;
  v35 = v33[1];
  v36 = *(v26 + v32);

  sub_237C071CC();
  *v19 = v34;
  v19[1] = v35;
  v19[2] = v36;
  v19[3] = v36;
  v19[4] = 0xD000000000000013;
  v19[5] = 0x8000000237C17BE0;
  v68 = *(v75 + 16);
  v37 = v74;
  v68(v72, v13, v74);
  v38 = type metadata accessor for TreeRegressor(0);

  sub_237C06CEC();
  v39 = *(v75 + 8);
  v72 = v13;
  v40 = v13;
  v41 = v39;
  v39(v40, v37);
  OUTLINED_FUNCTION_80_0();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v38);
  v66[0] = v0;
  v45 = v68;
  OUTLINED_FUNCTION_59_1();
  swift_beginAccess();
  sub_237A6F014();
  v46 = v69;
  v47 = v73;
  v45(v73, v69 + v70[8], v37);
  OUTLINED_FUNCTION_25_22();
  OUTLINED_FUNCTION_73_1(v48, v49, v50);
  if (v27)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v51 = OUTLINED_FUNCTION_33_14();
  v52 = v74;
  (v45)(v51);
  sub_237C06CDC();
  v41(v47, v52);
  swift_endAccess();
  v53 = v71;
  sub_237A40628();
  OUTLINED_FUNCTION_25_22();
  OUTLINED_FUNCTION_73_1(v54, v55, v56);
  if (!v27)
  {
    v58 = *v53;
    v57 = v53[1];
    v59 = type metadata accessor for TreeRegressorModel(0);

    v60 = v66[1];
    sub_237C06CFC();
    OUTLINED_FUNCTION_0_65();
    sub_237B1E3C0(v46, v61);
    *v60 = v58;
    v60[1] = v57;
    v60[3] = 0;
    v60[4] = 0;
    v60[2] = 0;
    OUTLINED_FUNCTION_1_61();
    sub_237B1E3C0(v53, v62);
    OUTLINED_FUNCTION_80_0();
    __swift_storeEnumTagSinglePayload(v63, v64, v65, v59);
    OUTLINED_FUNCTION_59_1();
    swift_beginAccess();
    sub_237A6F014();
    swift_endAccess();
    OUTLINED_FUNCTION_73();
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_237B1B254()
{
  OUTLINED_FUNCTION_74();
  v2 = v0;
  v83 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE10, &qword_237C0C090);
  OUTLINED_FUNCTION_20(v4);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_19_28(v6, v1);
  sub_237C071DC();
  OUTLINED_FUNCTION_0();
  v78 = v8;
  v79 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14_0();
  v77 = v9;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v10);
  v76 = v74 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D1F8, &unk_237C132A0);
  v13 = OUTLINED_FUNCTION_20(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_14_0();
  v80 = v14;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v15);
  v75 = (v74 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8E8, &qword_237C0EBF0);
  OUTLINED_FUNCTION_20(v17);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v18);
  v20 = v74 - v19;
  v21 = type metadata accessor for MLCheckpoint(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2_0();
  v82 = v24 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE18, &qword_237C0DEE0);
  OUTLINED_FUNCTION_20(v25);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v26);
  v28 = v74 - v27;
  v29 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_2_0();
  v33 = v32 - v31;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  v81 = v2;
  sub_237A40628();
  OUTLINED_FUNCTION_73_1(v28, 1, v29);
  if (v34)
  {
    sub_2379D9054(v28, &qword_27DE9AE18, &qword_237C0DEE0);
    __break(1u);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_2_61();
  sub_237B1E418();
  sub_237A9A92C(v83, v20);
  OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_73_1(v35, v36, v37);
  if (v34)
  {
    sub_2379D9054(v20, &qword_27DE9B8E8, &qword_237C0EBF0);
    sub_2379E8AF0();
    OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    OUTLINED_FUNCTION_18_4(v38, 0xD00000000000001DLL);
LABEL_13:
    OUTLINED_FUNCTION_0_65();
    sub_237B1E3C0(v33, v73);
    goto LABEL_14;
  }

  v39 = v82;
  sub_237B1E418();
  switch(*(v39 + *(v21 + 20)))
  {
    case 2:

      goto LABEL_9;
    case 4:
      OUTLINED_FUNCTION_60_0();
      goto LABEL_8;
    default:
LABEL_8:
      OUTLINED_FUNCTION_57_0();
      v40 = sub_237C0929C();

      if ((v40 & 1) == 0)
      {
        sub_2379E8AF0();
        OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
        OUTLINED_FUNCTION_18_4(v71, 0xD000000000000028);
        OUTLINED_FUNCTION_15_31();
        sub_237B1E3C0(v39, v72);
        goto LABEL_13;
      }

LABEL_9:
      v41 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingData;
      v42 = v81;
      OUTLINED_FUNCTION_59_1();
      swift_beginAccess();
      sub_237C05DBC();
      OUTLINED_FUNCTION_4();
      (*(v43 + 24))(v42 + v41, v33);
      swift_endAccess();
      v44 = v29[5];
      v45 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationData;
      OUTLINED_FUNCTION_59_1();
      swift_beginAccess();
      sub_237A6EE90(v33 + v44, v42 + v45);
      swift_endAccess();
      v46 = (v33 + v29[6]);
      v47 = *v46;
      v48 = v46[1];
      v49 = *(v33 + v29[7]);

      v50 = v76;
      sub_237C071CC();
      v51 = v75;
      *v75 = v47;
      v51[1] = v48;
      v51[2] = v49;
      v51[3] = v49;
      v51[4] = 0xD000000000000013;
      v51[5] = 0x8000000237C17BE0;
      v52 = v78;
      v53 = v79;
      (*(v78 + 16))(v77, v50, v79);
      v54 = type metadata accessor for TreeRegressor(0);

      sub_237C06CEC();
      (*(v52 + 8))(v50, v53);
      OUTLINED_FUNCTION_80_0();
      __swift_storeEnumTagSinglePayload(v55, v56, v57, v54);
      OUTLINED_FUNCTION_59_1();
      swift_beginAccess();
      sub_237A6F014();
      swift_endAccess();
      v58 = v80;
      sub_237A40628();
      OUTLINED_FUNCTION_170();
      OUTLINED_FUNCTION_73_1(v59, v60, v61);
      if (v34)
      {
LABEL_16:
        __break(1u);
        JUMPOUT(0x237B1B934);
      }

      sub_237B1DE00();
      v62 = v74[0];
      v63 = v82;
      sub_237C0723C();
      OUTLINED_FUNCTION_15_31();
      sub_237B1E3C0(v63, v64);
      OUTLINED_FUNCTION_0_65();
      sub_237B1E3C0(v33, v65);
      OUTLINED_FUNCTION_1_61();
      sub_237B1E3C0(v58, v66);
      if (!v62)
      {
        type metadata accessor for TreeRegressorModel(0);
        OUTLINED_FUNCTION_80_0();
        __swift_storeEnumTagSinglePayload(v67, v68, v69, v70);
        OUTLINED_FUNCTION_59_1();
        swift_beginAccess();
        sub_237A6F014();
        swift_endAccess();
      }

LABEL_14:
      OUTLINED_FUNCTION_73();
      return;
  }
}

uint64_t sub_237B1B948(_BYTE *a1)
{
  if (*a1 != 2)
  {
    return 0;
  }

  v3 = v1 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_sessionParameters;
  return *(v3 + *(type metadata accessor for MLTrainingSessionParameters(0) + 28));
}

uint64_t sub_237B1B99C(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = sub_237C06A4C();
  v2[19] = v3;
  OUTLINED_FUNCTION_1(v3);
  v2[20] = v4;
  v2[21] = OUTLINED_FUNCTION_19();
  v5 = sub_237C0602C();
  v2[22] = v5;
  OUTLINED_FUNCTION_1(v5);
  v2[23] = v6;
  v2[24] = OUTLINED_FUNCTION_19();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B040, &unk_237C0DFD0);
  v2[25] = v7;
  OUTLINED_FUNCTION_1(v7);
  v2[26] = v8;
  v2[27] = OUTLINED_FUNCTION_19();
  v9 = sub_237C05DBC();
  v2[28] = v9;
  OUTLINED_FUNCTION_1(v9);
  v2[29] = v10;
  v2[30] = OUTLINED_FUNCTION_19();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D1F8, &unk_237C132A0);
  OUTLINED_FUNCTION_20(v11);
  v2[31] = OUTLINED_FUNCTION_19();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE18, &qword_237C0DEE0);
  OUTLINED_FUNCTION_20(v12);
  v2[32] = OUTLINED_FUNCTION_19();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE10, &qword_237C0C090);
  OUTLINED_FUNCTION_20(v13);
  v2[33] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v14);
}

uint64_t sub_237B1BBBC()
{
  v2 = (v0[18] + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_model);
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_237A40628();
  v3 = type metadata accessor for TreeRegressorModel(0);
  OUTLINED_FUNCTION_25_22();
  __swift_getEnumTagSinglePayload(v4, v5, v6);
  result = OUTLINED_FUNCTION_44_12();
  if (v1 == 1)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v59 = v3;
  v8 = v0[32];
  v9 = v0[18];
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_237A40628();
  v10 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  __swift_getEnumTagSinglePayload(v8, 1, v10);
  result = OUTLINED_FUNCTION_44_12();
  if (v9 == 1)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v11 = v0[17];
  v12 = v0[18] + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_sessionParameters;
  result = type metadata accessor for MLTrainingSessionParameters(0);
  v13 = *(v12 + *(result + 20));
  if (__OFADD__(v11, v13))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v14 = *(v12 + *(result + 28));
  if (!__OFSUB__(v14, v11))
  {
    if (v13 >= v14 - v11)
    {
      v15 = v14 - v11;
    }

    else
    {
      v15 = *(v12 + *(result + 20));
    }

    type metadata accessor for EventCollector();
    swift_allocObject();
    result = sub_237AD988C();
    v60 = v15;
    if (v15 < 0)
    {
      goto LABEL_31;
    }

    v61 = v0[31];
    v16 = v0[29];
    v17 = v0[26];
    v18 = v0[23];
    v19 = v0[18];
    v20 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingData;
    OUTLINED_FUNCTION_71();
    swift_beginAccess();
    v58 = v20;
    OUTLINED_FUNCTION_71();
    result = swift_beginAccess();
    v21 = 0;
    v55 = (v18 + 8);
    v54 = (v17 + 8);
    v56 = (v16 + 8);
    v57 = (v16 + 16);
    while (1)
    {
      if (v60 == v21)
      {
        v41 = v0[20];
        v40 = v0[21];
        v42 = v0[19];
        sub_237C06A3C();
        sub_237B1A15C(v40);
        v44 = v43;
        v45 = *(v41 + 8);
        v45(v40, v42);
        if ((v44 & 1) == 0)
        {
          OUTLINED_FUNCTION_43_8();
          sub_237B19FFC(v46, 8);
        }

        v47 = v0[21];
        v48 = v0[19];
        sub_237C069FC();
        sub_237B1A15C(v47);
        v50 = v49;
        v45(v47, v48);
        if ((v50 & 1) == 0)
        {
          OUTLINED_FUNCTION_43_8();
          sub_237B19FFC(v51, 7);
        }

        OUTLINED_FUNCTION_23_26();

        __asm { BRAA            X4, X16 }
      }

      if (__OFADD__(v21, 1))
      {
        break;
      }

      v62 = v21;
      v22 = v0[31];
      sub_237A40628();
      v23 = type metadata accessor for TreeRegressor(0);
      result = __swift_getEnumTagSinglePayload(v22, 1, v23);
      if (result == 1)
      {
        goto LABEL_32;
      }

      v24 = v19;
      (*v57)(v0[30], v19 + v58, v0[28]);
      OUTLINED_FUNCTION_59_1();
      swift_beginAccess();
      result = __swift_getEnumTagSinglePayload(v2, 1, v59);
      if (result == 1)
      {
        goto LABEL_33;
      }

      if (v2[2])
      {
      }

      else
      {
        v25 = v0[30];
        v26 = *(v61 + 16);
        v27 = swift_task_alloc();
        *(v27 + 16) = v25;

        v28 = sub_2379E22EC(sub_237A1DC7C, v27, v26);

        v29 = v2[2];
        v2[2] = v28;
        v2[3] = 0xD000000000000013;
        v2[4] = 0x8000000237C17BE0;
        result = sub_237ADB770(v29);
        if (!v2[2])
        {
          goto LABEL_35;
        }
      }

      sub_237A0D2E0(v0[30]);
      v30 = v0[24];
      v31 = v0[22];
      sub_237C05DFC();
      sub_237B6301C();
      v33 = v32;
      result = (*v55)(v30, v31);
      if (!v33)
      {
        goto LABEL_34;
      }

      sub_237C06D2C();
      v34 = v0[30];
      v35 = v0[31];
      v37 = v0[27];
      v36 = v0[28];
      v38 = v0[25];

      (*v54)(v37, v38);
      swift_endAccess();

      (*v56)(v34, v36);
      OUTLINED_FUNCTION_1_61();
      result = sub_237B1E3C0(v35, v39);
      v21 = v62 + 1;
      v19 = v24;
    }

    __break(1u);
    goto LABEL_27;
  }

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
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_237B1C294()
{
  v1[25] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  OUTLINED_FUNCTION_20(v2);
  v1[26] = OUTLINED_FUNCTION_19();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB88, &qword_237C0B8F0);
  v1[27] = v3;
  OUTLINED_FUNCTION_1(v3);
  v1[28] = v4;
  v1[29] = OUTLINED_FUNCTION_19();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B818, &qword_237C0DFE0);
  v1[30] = v5;
  OUTLINED_FUNCTION_1(v5);
  v1[31] = v6;
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v7 = sub_237C05DBC();
  v1[36] = v7;
  OUTLINED_FUNCTION_1(v7);
  v1[37] = v8;
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE10, &qword_237C0C090);
  OUTLINED_FUNCTION_20(v9);
  v1[42] = OUTLINED_FUNCTION_19();
  v10 = type metadata accessor for TreeRegressorModel(0);
  v1[43] = v10;
  OUTLINED_FUNCTION_20(v10);
  v1[44] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v11);
}

void sub_237B1C4C4()
{
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_237A40628();
  OUTLINED_FUNCTION_170();
  if (__swift_getEnumTagSinglePayload(v1, v2, v3) == 1)
  {
    sub_2379D9054(v0[42], &qword_27DE9AE10, &qword_237C0C090);
  }

  else
  {
    v4 = v0[25];
    OUTLINED_FUNCTION_14_27();
    sub_237B1E418();
    v5 = v4 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingParameters;
    swift_beginAccess();
    v6 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
    if (__swift_getEnumTagSinglePayload(v5, 1, v6))
    {
      sub_237B1E3C0(v0[44], type metadata accessor for TreeRegressorModel);
      swift_endAccess();
    }

    else
    {
      v9 = v0[40];
      v10 = v0[36];
      v11 = v0[37];
      v12 = v0[25];
      swift_endAccess();
      v13 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingData;
      OUTLINED_FUNCTION_71();
      swift_beginAccess();
      (*(v11 + 16))(v9, v12 + v13, v10);

      OUTLINED_FUNCTION_11();
      sub_237A47CE0(v14, v15);
      v16 = v0[29];
      v18 = v0[27];
      v17 = v0[28];
      v54 = v0[26];
      v55 = v0[36];
      v57 = *(v0[37] + 8);
      (v57)(v0[40]);
      sub_237C05DEC();
      v0[17] = 0;
      sub_2379D9224(&qword_27DE9B820, &qword_27DE9AB88, &qword_237C0B8F0, MEMORY[0x277CE18F0]);
      sub_237C05EAC();
      v19 = *(v17 + 8);
      v19(v16, v18);
      swift_beginAccess();
      sub_237C05DEC();
      swift_endAccess();
      v0[18] = 0;
      sub_237C05EAC();
      v49 = v19;
      v19(v16, v18);
      sub_237A48144();
      sub_2379D9224(&qword_27DE9B838, &qword_27DE9B818, &qword_237C0DFE0, MEMORY[0x277CE18B0]);
      OUTLINED_FUNCTION_34_1();
      OUTLINED_FUNCTION_24_24();
      sub_237C06EDC();
      OUTLINED_FUNCTION_34_1();
      OUTLINED_FUNCTION_24_24();
      sub_237C06EEC();
      v20 = OUTLINED_FUNCTION_38_11(v0[20]);
      sub_237B0B0B0(v20, v21, v22);
      OUTLINED_FUNCTION_71();
      swift_beginAccess();
      sub_237A40628();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v54, 1, v55);
      v24 = v0[44];
      if (EnumTagSinglePayload == 1)
      {
        v25 = v0[41];
        v26 = v0[36];
        v27 = v0[34];
        v29 = v0[30];
        v28 = v0[31];
        v30 = v0[26];
        v58 = v0[25];

        v31 = *(v28 + 8);
        v31(v27, v29);
        v32 = OUTLINED_FUNCTION_33_14();
        (v31)(v32);
        v57(v25, v26);
        OUTLINED_FUNCTION_3_58();
        sub_237B1E3C0(v24, v33);
        sub_2379D9054(v30, &qword_27DE9A9A0, &qword_237C0BF60);
        v34 = v58 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics;
        v35 = *(v58 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics);
        v36 = *(v58 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics + 8);
        *v34 = 0;
        *(v34 + 8) = 0;
        v37 = *(v34 + 16);
        *(v34 + 16) = -1;
      }

      else
      {
        (*(v0[37] + 32))(v0[39], v0[26], v0[36]);
        OUTLINED_FUNCTION_11();
        sub_237A47CE0(v38, v39);
        v56 = v0[44];
        v53 = v0[41];
        v59 = v0[39];
        v52 = v0[35];
        v50 = v0[36];
        v51 = v0[34];
        v45 = v0[33];
        v46 = v0[32];
        v47 = v0[38];
        v48 = v0[31];
        v40 = v0[29];
        v41 = v0[30];
        v42 = v0[27];
        sub_237C05DEC();
        v0[21] = 0;
        sub_237C05EAC();
        v49(v40, v42);
        sub_237C05DEC();

        v0[22] = 0;
        sub_237C05EAC();
        v49(v40, v42);
        sub_237C06EDC();
        OUTLINED_FUNCTION_34_1();
        sub_237C06EEC();
        v43 = *(v48 + 8);
        v43(v46, v41);
        v43(v45, v41);
        v57(v47, v50);
        v57(v59, v50);
        v43(v51, v41);
        v43(v52, v41);
        v57(v53, v50);
        OUTLINED_FUNCTION_3_58();
        sub_237B1E3C0(v56, v44);
        v35 = OUTLINED_FUNCTION_38_11(v0[24]);
      }

      sub_237B0B0B0(v35, v36, v37);
    }
  }

  OUTLINED_FUNCTION_23_26();

  __asm { BRAA            X3, X16 }
}

void sub_237B1CDD0()
{
  OUTLINED_FUNCTION_74();
  v1 = v0;
  v25[1] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D1F8, &unk_237C132A0);
  OUTLINED_FUNCTION_20(v3);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  v6 = v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE10, &qword_237C0C090);
  OUTLINED_FUNCTION_20(v7);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  v10 = v25 - v9;
  v11 = type metadata accessor for TreeRegressorModel(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v15 = v14 - v13;
  v16 = *v1;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_237A40628();
  OUTLINED_FUNCTION_73_1(v10, 1, v11);
  if (v17)
  {
    sub_2379D9054(v10, &qword_27DE9AE10, &qword_237C0C090);
  }

  else
  {
    OUTLINED_FUNCTION_14_27();
    sub_237B1E418();
    switch(v16)
    {
      case 2:

        goto LABEL_8;
      case 4:
        OUTLINED_FUNCTION_60_0();
        break;
      default:
        break;
    }

    OUTLINED_FUNCTION_57_0();
    v18 = sub_237C0929C();

    if (v18)
    {
LABEL_8:
      OUTLINED_FUNCTION_71();
      swift_beginAccess();
      sub_237A40628();
      type metadata accessor for TreeRegressor(0);
      OUTLINED_FUNCTION_170();
      OUTLINED_FUNCTION_73_1(v19, v20, v21);
      if (v17)
      {
        __break(1u);
        JUMPOUT(0x237B1D0B4);
      }

      sub_237B1DE00();
      sub_237C0724C();
      OUTLINED_FUNCTION_3_58();
      sub_237B1E3C0(v15, v22);
      OUTLINED_FUNCTION_1_61();
      sub_237B1E3C0(v6, v23);
    }

    else
    {
      OUTLINED_FUNCTION_3_58();
      sub_237B1E3C0(v15, v24);
    }
  }

  OUTLINED_FUNCTION_73();
}

void sub_237B1D0C8()
{
  OUTLINED_FUNCTION_74();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE18, &qword_237C0DEE0);
  OUTLINED_FUNCTION_20(v3);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_45_8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v9 = v8 - v7;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_237A40628();
  OUTLINED_FUNCTION_73_1(v0, 1, v5);
  if (v10)
  {
    sub_2379D9054(v0, &qword_27DE9AE18, &qword_237C0DEE0);
    sub_2379E8AF0();
    OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    *v11 = 0xD000000000000031;
    *(v11 + 8) = 0x8000000237C19910;
    *(v11 + 16) = 0u;
    *(v11 + 32) = 0u;
    *(v11 + 48) = 2;
    swift_willThrow();
  }

  else
  {
    OUTLINED_FUNCTION_2_61();
    sub_237B1E418();
    sub_2379FE55C(v2);
    OUTLINED_FUNCTION_0_65();
    sub_237B1E3C0(v9, v12);
  }

  OUTLINED_FUNCTION_73();
}

void sub_237B1D258()
{
  OUTLINED_FUNCTION_74();
  v34 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE18, &qword_237C0DEE0);
  v5 = OUTLINED_FUNCTION_20(v4);
  MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - v7;
  v9 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v15 = v14 - v13;
  v16 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v33 - v22;
  (*(v11 + 16))(v15, v3, v9, v21);
  sub_2379FD540(v15, v23);
  if (!v1)
  {
    OUTLINED_FUNCTION_71();
    swift_beginAccess();
    sub_237A40628();
    OUTLINED_FUNCTION_25_22();
    OUTLINED_FUNCTION_73_1(v24, v25, v26);
    if (v27)
    {
      sub_2379D9054(v8, &qword_27DE9AE18, &qword_237C0DEE0);
      OUTLINED_FUNCTION_2_61();
      sub_237B1E418();
      OUTLINED_FUNCTION_80_0();
      __swift_storeEnumTagSinglePayload(v28, v29, v30, v16);
      OUTLINED_FUNCTION_59_1();
      swift_beginAccess();
      sub_237A6F014();
      swift_endAccess();
    }

    else
    {
      OUTLINED_FUNCTION_2_61();
      sub_237B1E418();
      v31 = OUTLINED_FUNCTION_33_14();
      sub_237B1D50C(v31, v32);
      sub_237B1E3C0(v19, type metadata accessor for PersistentParametersForTreeBasedMethods);
      sub_237B1E3C0(v23, type metadata accessor for PersistentParametersForTreeBasedMethods);
    }
  }

  OUTLINED_FUNCTION_73();
}

void *sub_237B1D50C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  v5 = *(v4 + 24);
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v7 == *v8 && v6 == v8[1];
  if (v9 || (sub_237C0929C() & 1) != 0)
  {

    v11 = sub_237B42F98(v10);

    v13 = sub_237B42F98(v12);
    v14 = sub_237A6E3A8(v11, v13);

    if (v14)
    {
      result = sub_237B31B80(a1 + *(v4 + 32), &v26);
      v16 = v27;
      if (!v27)
      {
        return result;
      }

      v18 = v30;
      v17 = v31;
      v7 = v28;
      v6 = v29;
      v19 = v26;
      sub_2379E8AF0();
      OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    }

    else
    {
      v16 = 0x8000000237C198F0;

      v21 = OUTLINED_FUNCTION_37_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
      sub_2379D9224(&qword_27DE9BC90, &qword_27DE9AE60, &qword_237C0D000, MEMORY[0x277D83958]);
      v7 = OUTLINED_FUNCTION_28_14();
      v6 = v23;

      OUTLINED_FUNCTION_28_14();

      v18 = sub_237C0883C();
      v17 = v24;
      sub_2379E8AF0();
      OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
      v19 = 0xD000000000000011;
    }
  }

  else
  {

    v18 = sub_237C0883C();
    v17 = v25;
    sub_2379E8AF0();
    OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    v16 = 0xED00006E6D756C6FLL;
    v19 = 0x6320746567726154;
  }

  *v20 = v19;
  *(v20 + 8) = v16;
  *(v20 + 16) = v7;
  *(v20 + 24) = v6;
  *(v20 + 32) = v18;
  *(v20 + 40) = v17;
  *(v20 + 48) = 3;
  return swift_willThrow();
}

uint64_t sub_237B1D7B8(uint64_t a1)
{
  OUTLINED_FUNCTION_5_48();
  sub_237B1E3C0(v1 + v2, v3);
  sub_2379D9054(v1 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingParameters, &qword_27DE9AE18, &qword_237C0DEE0);
  v4 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingData;
  sub_237C05DBC();
  OUTLINED_FUNCTION_4();
  (*(v5 + 8))(v1 + v4);
  sub_2379D9054(v1 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationData, &qword_27DE9A9A0, &qword_237C0BF60);
  sub_2379D9054(v1 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_regressor, &qword_27DE9D1F8, &unk_237C132A0);
  sub_2379D9054(v1 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_model, &qword_27DE9AE10, &qword_237C0C090);
  v6 = OUTLINED_FUNCTION_17_22(OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics);
  sub_237B0B0B0(v6, v7, v8);
  v9 = OUTLINED_FUNCTION_17_22(OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics);
  sub_237B0B0B0(v9, v10, v11);
  return v1;
}

uint64_t sub_237B1D8C4(uint64_t a1)
{
  sub_237B1D7B8(a1);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TreeRegressorTrainingSessionDelegate(uint64_t a1)
{
  result = qword_27DE9D1D8;
  if (!qword_27DE9D1D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237B1D970(uint64_t a1)
{
  type metadata accessor for MLTrainingSessionParameters(319);
  if (v1 <= 0x3F)
  {
    sub_237B1DBA4(319, &qword_27DE9BC50, type metadata accessor for PersistentParametersForTreeBasedMethods);
    if (v2 <= 0x3F)
    {
      sub_237C05DBC();
      if (v3 <= 0x3F)
      {
        sub_237B1DBA4(319, &qword_27DE9AE50, MEMORY[0x277CE1898]);
        if (v4 <= 0x3F)
        {
          sub_237B1DBA4(319, &qword_27DE9D1E8, type metadata accessor for TreeRegressor);
          if (v5 <= 0x3F)
          {
            sub_237B1DBA4(319, &qword_27DE9D1F0, type metadata accessor for TreeRegressorModel);
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_237B1DBA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_237C08D2C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_237B1DC68(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_237AFBDB8;

  return sub_237B1B99C(a1);
}

uint64_t sub_237B1DD00()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237AFBF68;

  return sub_237B1C294();
}

unint64_t sub_237B1DE00()
{
  result = qword_27DE9B000;
  if (!qword_27DE9B000)
  {
    type metadata accessor for TreeRegressor(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9B000);
  }

  return result;
}

double sub_237B1DE58@<D0>(_OWORD *a1@<X8>)
{
  v3 = sub_237ACB31C();
  if (v4)
  {
    v5 = v3;
    swift_isUniquelyReferenced_nonNull_native();
    v9 = *v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D210, &unk_237C132F0);
    sub_237C090AC();
    v6 = *(v9 + 48);
    v7 = sub_237C0909C();
    (*(*(v7 - 8) + 8))(v6 + *(*(v7 - 8) + 72) * v5, v7);
    sub_237A85E3C((*(v9 + 56) + 32 * v5), a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8C0, &qword_237C13EC0);
    sub_237C090CC();
    *v1 = v9;
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t sub_237B1DF7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_237ACAC78(a1, a2);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D220, &qword_237C13308);
    sub_237C090AC();

    v8 = *(v14 + 56);
    v9 = sub_237C0806C();
    (*(*(v9 - 8) + 32))(a3, v8 + *(*(v9 - 8) + 72) * v7, v9);
    sub_237C090CC();
    *v3 = v14;
    v10 = a3;
    v11 = 0;
    v12 = v9;
  }

  else
  {
    v12 = sub_237C0806C();
    v10 = a3;
    v11 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

uint64_t sub_237B1E0C4(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  do
  {
    if (!v6)
    {
      break;
    }

    --v6;
    v7 = *(sub_237C074BC() - 8);
    v8 = a1(a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v6);
    if (v3)
    {
      break;
    }
  }

  while ((v8 & 1) == 0);
  return v6;
}

unint64_t sub_237B1E198(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {
    v3 = type metadata accessor for MLCheckpoint(0);
    OUTLINED_FUNCTION_1(v3);
    return sub_237B1E470();
  }

  __break(1u);
  return result;
}

unint64_t sub_237B1E258@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    if (*(a2 + 16) > result)
    {
      v6 = sub_237C074BC();
      return (*(*(v6 - 8) + 16))(a3, a2 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v4, v6);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237B1E2F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_237B1A2D4(a1, a2);
  if (!v3)
  {
    *a3 = result;
    *(a3 + 8) = v6 & 1;
  }

  return result;
}

uint64_t sub_237B1E3C0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_237B1E418()
{
  OUTLINED_FUNCTION_63_1();
  v1(0);
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_37_0();
  v3(v2);
  return v0;
}

uint64_t sub_237B1E470()
{
  OUTLINED_FUNCTION_63_1();
  v1(0);
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_37_0();
  v3(v2);
  return v0;
}

uint64_t OUTLINED_FUNCTION_28_14()
{

  return sub_237C0864C();
}

uint64_t OUTLINED_FUNCTION_38_11@<X0>(uint64_t a1@<X8>)
{
  result = *v1;
  *v1 = v2;
  *(v1 + 8) = a1;
  *(v1 + 16) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_44_12()
{

  return sub_2379D9054(v1, v0, v2);
}

uint64_t OUTLINED_FUNCTION_45_8()
{

  return type metadata accessor for PersistentParametersForTreeBasedMethods(0);
}

double MLSoundClassifier.FeatureExtractionParameters.featureExtractionTimeWindowSize.getter()
{
  result = *(v0 + 8);
  if (*(v0 + 16))
  {
    return 0.975;
  }

  return result;
}

uint64_t (*MLSoundClassifier.FeatureExtractionParameters.featureExtractionTimeWindowSize.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v2 = *(v1 + 8);
  if (*(v1 + 16))
  {
    v2 = 0.975;
  }

  *a1 = v2;
  return sub_237B1E75C;
}

void *sub_237B1E75C(void *result)
{
  v1 = result[1];
  *(v1 + 8) = *result;
  *(v1 + 16) = 0;
  return result;
}

void MLSoundClassifier.FeatureExtractionParameters.featureExtractor.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

uint64_t MLSoundClassifier.FeatureExtractionParameters.featureExtractor.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  return result;
}

uint64_t *MLSoundClassifier.FeatureExtractionParameters.init(overlapFactor:featureExtractor:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v3 = *result;
  v4 = *(result + 8);
  *a2 = a3;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  return result;
}

uint64_t *MLSoundClassifier.FeatureExtractionParameters.init(overlapFactor:featureExtractor:featureExtractionTimeWindowSize:)@<X0>(uint64_t *result@<X0>, double a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v6 = *&a2;
  v9 = *result;
  v10 = *(result + 8);
  if ((a3 & 1) == 0)
  {
    if (a2 < 0.5)
    {
      OUTLINED_FUNCTION_11_11();
      OUTLINED_FUNCTION_3_18();
      OUTLINED_FUNCTION_3_59(v11, v12, v13, v14, v15, v16, v17, v18, v45);
      OUTLINED_FUNCTION_4_16();
      OUTLINED_FUNCTION_3_59(v19, v20, v21, v22, v23, v24, v25, v26, v46);
      MEMORY[0x2383DC360](46, 0xE100000000000000);
      v27 = sub_237C08C4C();
      sub_237BABE74(v47, v50, v27);
      v6 = 0x3FE0000000000000;
LABEL_6:

      goto LABEL_7;
    }

    if (a2 > 15.0)
    {
      OUTLINED_FUNCTION_11_11();
      OUTLINED_FUNCTION_3_18();
      OUTLINED_FUNCTION_4_53(v28, v29, v30, v31, v32, v33, v34, v35, v45);
      OUTLINED_FUNCTION_4_16();
      OUTLINED_FUNCTION_4_53(v36, v37, v38, v39, v40, v41, v42, v43, v48);
      MEMORY[0x2383DC360](46, 0xE100000000000000);
      v44 = sub_237C08C4C();
      sub_237BABE74(v49, v50, v44);
      v6 = 0x402E000000000000;
      goto LABEL_6;
    }
  }

LABEL_7:
  *a4 = a5;
  *(a4 + 8) = v6;
  *(a4 + 16) = a3 & 1;
  *(a4 + 24) = v9;
  *(a4 + 32) = v10;
  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_237B1E988(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 33))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_237B1E9C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_59(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_237C08A8C();
}

uint64_t OUTLINED_FUNCTION_4_53(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_237C08A8C();
}

uint64_t sub_237B1EA60(uint64_t a1, int *a2)
{
  v2[2] = a1;
  v2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D250, &qword_237C13410);
  v4 = swift_task_alloc();
  v2[4] = v4;
  v7 = (a2 + *a2);
  v5 = swift_task_alloc();
  v2[5] = v5;
  *v5 = v2;
  v5[1] = sub_237B1EBA0;

  return v7(v4);
}

uint64_t sub_237B1EBA0()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  v2 = *v1;
  OUTLINED_FUNCTION_3();
  *v3 = v2;
  *(v4 + 48) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_237B1ECA0()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  swift_storeEnumTagMultiPayload();
  sub_237B2387C(v1, v2);

  OUTLINED_FUNCTION_8();

  return v3();
}

uint64_t sub_237B1ED18()
{
  OUTLINED_FUNCTION_9();
  **(v0 + 16) = *(v0 + 48);
  swift_storeEnumTagMultiPayload();

  OUTLINED_FUNCTION_8();

  return v1();
}

id sub_237B1ED9C(uint64_t a1, void *a2)
{
  v7 = MEMORY[0x277D84F90];
  sub_237A254D8(a1);
  sub_237C08FCC();
  result = sub_237A254D8(a1);
  v4 = result;
  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {
      return v7;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x2383DCAF0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      result = *(a1 + 8 * i + 32);
    }

    v6 = result;
    if (__OFADD__(i, 1))
    {
      break;
    }

    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {

      return 0;
    }

    sub_237C08F8C();
    sub_237C08FEC();
    sub_237C08FFC();
    result = sub_237C08F9C();
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

id sub_237B1EED0(void *a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v2 = [swift_getObjCClassFromMetadata() modelForMLModel:a1 error:v6];
  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_237C0593C();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_237B1EFA4()
{
  OUTLINED_FUNCTION_49();
  v2 = v1;
  v0[3] = v1;
  v0[4] = v3;
  v0[2] = v4;
  type metadata accessor for _Model();
  OUTLINED_FUNCTION_29_4();
  swift_allocObject();

  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_237B1F068;

  return sub_237ADFC80(v2);
}

uint64_t sub_237B1F068()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  OUTLINED_FUNCTION_18();
  v5 = v4;
  OUTLINED_FUNCTION_95();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  *(v5 + 48) = v0;

  if (!v0)
  {
    *(v5 + 56) = v3;
  }

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_237B1F174()
{
  OUTLINED_FUNCTION_49();
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[2];

  *v3 = v1;
  type metadata accessor for MLStyleTransfer(0);
  OUTLINED_FUNCTION_12_34();
  sub_237B234A0(v2, v3 + v4);
  OUTLINED_FUNCTION_8();

  return v5();
}

uint64_t sub_237B1F200()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_0_66();
  sub_237B23784(v1, v2);
  OUTLINED_FUNCTION_8();

  return v3();
}

uint64_t MLStyleTransfer.init(trainingData:parameters:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v122 = a1;
  v110 = a3;
  v4 = type metadata accessor for MLStyleTransfer.ModelParameters(0);
  v107 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v108 = v5;
  v109 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MLStyleTransfer.DataSource(0);
  v7 = OUTLINED_FUNCTION_20(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18_0();
  v112 = v8 - v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_58();
  v115 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  v13 = OUTLINED_FUNCTION_20(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18_0();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v99 - v18;
  v20 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v118 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v24);
  v106 = &v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_22_22();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_58();
  v111 = v26;
  OUTLINED_FUNCTION_22_22();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_58();
  v113 = v28;
  OUTLINED_FUNCTION_22_22();
  MEMORY[0x28223BE20](v29);
  v31 = &v99 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v99 - v33;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_58();
  v119 = v36;
  OUTLINED_FUNCTION_22_22();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_58();
  v114 = v38;
  OUTLINED_FUNCTION_22_22();
  MEMORY[0x28223BE20](v39);
  v41 = &v99 - v40;
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v20);
  OUTLINED_FUNCTION_64();
  v116 = v20;
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v20);
  v48 = v122;
  v49 = v117;
  MLStyleTransfer.DataSource.processImages(textelDensity:styleImageDestination:contentImagesDestination:)();
  if (v49)
  {
    OUTLINED_FUNCTION_0_66();
    sub_237B23784(a2, v50);
    OUTLINED_FUNCTION_5_49();
    sub_237B23784(v48, v51);
    OUTLINED_FUNCTION_34_14(v16);
    return OUTLINED_FUNCTION_34_14(v19);
  }

  else
  {
    v102 = v16;
    v103 = v19;
    v100 = v41;
    v117 = 0;
    v53 = v118;
    v54 = v118 + 32;
    v55 = *(v118 + 32);
    v104 = v55;
    v105 = a2;
    v56 = v114;
    v57 = v116;
    v55(v114, v34, v116);
    v55(v119, v31, v57);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D228, &unk_237C13710);
    v101 = *(v58 + 48);
    v59 = v115;
    v60 = v115 + *(v58 + 64);
    v61 = *(v53 + 16);
    v61(v115, v56, v57);
    v62 = v101 + v59;
    v101 = v61;
    v61(v62, v119, v57);
    *v60 = 0;
    *(v60 + 8) = 0;
    OUTLINED_FUNCTION_11_36();
    v63 = v112;
    sub_237B238EC(v59, v112);
    v64 = *(v58 + 48);
    v65 = v113;
    v66 = v104;
    v104(v113, v63, v57);
    v67 = v63 + v64;
    v68 = v111;
    v112 = v54;
    v66(v111, v67, v57);
    v69 = v117;
    sub_237B22410(&v120);
    if (v69)
    {
      OUTLINED_FUNCTION_0_66();
      sub_237B23784(v105, v70);
      sub_237B23784(v122, type metadata accessor for MLStyleTransfer.DataSource);
      v71 = *(v118 + 8);
      v72 = v116;
      v71(v68, v116);
      v71(v65, v72);
      sub_237B23784(v115, type metadata accessor for MLStyleTransfer.DataSource);
      v71(v119, v72);
      v71(v114, v72);
      OUTLINED_FUNCTION_34_14(v102);
      return OUTLINED_FUNCTION_34_14(v103);
    }

    else
    {
      v117 = 0;
      v74 = v118 + 8;
      v73 = *(v118 + 8);
      v75 = v68;
      v76 = v116;
      v73(v75, v116);
      OUTLINED_FUNCTION_5_49();
      sub_237B23784(v115, v77);
      v73(v119, v76);
      v119 = v73;
      v73(v114, v76);
      sub_237A7B808(v102, &qword_27DE9AA18, &qword_237C0B710);
      sub_237A7B808(v103, &qword_27DE9AA18, &qword_237C0B710);
      v114 = v120;
      LODWORD(v115) = v121;
      v78 = v104;
      v104(v100, v65, v76);
      v79 = v106;
      v80 = OUTLINED_FUNCTION_37_0();
      v101(v80);
      OUTLINED_FUNCTION_2_62();
      v81 = v109;
      sub_237B238EC(v105, v109);
      v118 = v74;
      v82 = (*(v74 + 72) + 16) & ~*(v74 + 72);
      v83 = (v23 + v82 + 7) & 0xFFFFFFFFFFFFFFF8;
      v84 = (*(v107 + 80) + v83 + 9) & ~*(v107 + 80);
      v85 = swift_allocObject();
      v86 = v79;
      v87 = v114;
      v78(v85 + v82, v86, v76);
      v88 = v85 + v83;
      *v88 = v87;
      *(v88 + 8) = v115;
      OUTLINED_FUNCTION_12_34();
      sub_237B234A0(v81, v85 + v84);
      v89 = OUTLINED_FUNCTION_37_0();
      sub_2379DBCF4(v89, v90);
      v91 = OUTLINED_FUNCTION_37_0();
      sub_2379DBCF4(v91, v92);
      sub_2379DDB48(&unk_237C13358, v85);

      v93 = OUTLINED_FUNCTION_37_0();
      sub_2379DBC9C(v93, v94);
      v95 = OUTLINED_FUNCTION_37_0();
      sub_2379DBC9C(v95, v96);
      OUTLINED_FUNCTION_0_66();
      sub_237B23784(v105, v97);
      OUTLINED_FUNCTION_5_49();
      sub_237B23784(v122, v98);
      return v119(v100, v116);
    }
  }
}

uint64_t sub_237B1F9D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 25) = a4;
  *(v5 + 48) = a3;
  *(v5 + 56) = a5;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  type metadata accessor for MLStyleTransfer.ModelParameters(0);
  *(v5 + 64) = swift_task_alloc();
  v6 = sub_237C05ADC();
  *(v5 + 72) = v6;
  *(v5 + 80) = *(v6 - 8);
  *(v5 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237B1FAC8);
}

uint64_t sub_237B1FAC8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 25);
  (*(*(v0 + 80) + 16))(*(v0 + 88), *(v0 + 40), *(v0 + 72));
  *(v0 + 16) = v1;
  v2 &= 1u;
  *(v0 + 24) = v2;
  OUTLINED_FUNCTION_2_62();
  v3 = OUTLINED_FUNCTION_37_0();
  sub_237B238EC(v3, v4);
  sub_2379DBCF4(v1, v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v0 + 96) = v5;
  *v5 = v6;
  v5[1] = sub_237B1FBC0;
  v7 = *(v0 + 88);
  v8 = *(v0 + 64);
  v9 = *(v0 + 32);

  return sub_237B1FD54(v9, v7, (v0 + 16), v8);
}

uint64_t sub_237B1FBC0()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  v3 = v2;
  OUTLINED_FUNCTION_95();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {

    OUTLINED_FUNCTION_8();

    return v8();
  }
}

uint64_t sub_237B1FCEC()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_8();

  return v0();
}

uint64_t sub_237B1FD54(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = *a3;
  *(v4 + 32) = a4;
  *(v4 + 40) = v5;
  *(v4 + 84) = *(a3 + 8);
  return MEMORY[0x2822009F8](sub_237B1FD84);
}

uint64_t sub_237B1FD84()
{
  OUTLINED_FUNCTION_27();
  v11 = v0;
  v1 = *(v0 + 84);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  *(v0 + 80) = *(type metadata accessor for MLStyleTransfer(0) + 20);
  OUTLINED_FUNCTION_2_62();
  sub_237B238EC(v2, v5 + v6);
  v9 = v3;
  v10 = v1;
  *(v0 + 48) = sub_237B202E8(v2, v4, &v9);
  OUTLINED_FUNCTION_87();
  type metadata accessor for _Model();
  OUTLINED_FUNCTION_29_4();
  swift_allocObject();

  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *v7 = v0;
  v7[1] = sub_237B1FF44;

  return sub_237AE0110(14, v2, 0);
}

uint64_t sub_237B1FF44()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  OUTLINED_FUNCTION_18();
  v5 = v4;
  OUTLINED_FUNCTION_95();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  *(v5 + 64) = v0;

  if (v0)
  {
    sub_2379DBC9C(*(v5 + 40), *(v5 + 84));
  }

  else
  {
    *(v5 + 72) = v3;
  }

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_237B2005C()
{
  OUTLINED_FUNCTION_27();
  **(v0 + 16) = *(v0 + 72);
  v1 = sub_237A37A64();
  v2 = *(v0 + 84);
  v3 = *(v0 + 40);
  if (v1)
  {
    sub_2379DBC9C(*(v0 + 40), *(v0 + 84));
  }

  else
  {
    v4 = *(v0 + 32);
    v5 = MLDataTable.size.getter();
    sub_2379DBC9C(v3, v2);
    sub_237A38140(14, 0xD000000000000011, 0x8000000237C1C420, v5);
    v6 = type metadata accessor for MLStyleTransfer.ModelParameters(0);
    sub_237A38140(14, 0x726574492078614DLL, 0xEE00736E6F697461, *(v4 + v6[7]));
    sub_237A38140(14, 0x44206C6574786554, 0xEE00797469736E65, *(v4 + v6[8]));
    sub_237A38140(14, 0x745320656C797453, 0xEE006874676E6572, *(v4 + v6[9]));
  }

  v7 = *(v0 + 24);
  v8 = *(v0 + 32);

  OUTLINED_FUNCTION_0_66();
  sub_237B23784(v8, v9);
  sub_237C05ADC();
  OUTLINED_FUNCTION_12_0();
  (*(v10 + 8))(v7);
  OUTLINED_FUNCTION_8();

  return v11();
}

uint64_t sub_237B20220()
{
  OUTLINED_FUNCTION_49();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  sub_237B23784(v2, type metadata accessor for MLStyleTransfer.ModelParameters);
  sub_237C05ADC();
  OUTLINED_FUNCTION_12_0();
  (*(v3 + 8))(v1);
  sub_237B23784(*(v0 + 16) + *(v0 + 80), type metadata accessor for MLStyleTransfer.ModelParameters);
  OUTLINED_FUNCTION_8();

  return v4();
}

uint64_t sub_237B202E8(_BYTE *a1, uint64_t a2, uint64_t *a3)
{
  result = MEMORY[0x2383DDB70](0);
  if (result)
  {
    OUTLINED_FUNCTION_87();
    type metadata accessor for CMLParameters();
    v7 = swift_allocObject();
    *(v7 + 16) = v3;
    MLDataTable.subscript.getter();
    if (v53)
    {
      sub_2379DBC9C(v52, 1);
    }

    else
    {
      v8 = v52[2];

      sub_2379DBC9C(v52, 0);
      sub_237A31004(72, v8);
      if (v4)
      {
LABEL_8:

LABEL_20:

        return v7;
      }
    }

    v9 = sub_237C05A9C();
    v11 = v10;
    type metadata accessor for _UntypedColumn();
    swift_allocObject();
    v12 = *(sub_237B29888(v9, v11, 1) + 16);

    sub_237A31004(71, v12);
    if (v4)
    {

      goto LABEL_8;
    }

    v13 = type metadata accessor for MLStyleTransfer.ModelParameters(0);
    v14 = *&a1[v13[9]];
    sub_237B25E7C(v14);
    v15 = *&a1[v13[8]];
    sub_237B25F68(v15);
    result = MEMORY[0x2383DDA80](0);
    if (result)
    {
      OUTLINED_FUNCTION_87();
      type metadata accessor for CMLDictionary();
      *(swift_initStackObject() + 16) = v15;
      if (*a1)
      {
        v21 = 0x6574694C6E6E63;
      }

      else
      {
        v21 = 7237219;
      }

      if (*a1)
      {
        v22 = 0xE700000000000000;
      }

      else
      {
        v22 = 0xE300000000000000;
      }

      sub_237B18AFC(v21, v22, 2, v16, v17, v18, v19, v20);

      sub_237B18AFC(*&a1[v13[7]], 0, 0, v23, v24, v25, v26, v27);
      sub_237B18AFC(*&a1[v13[6]], 0, 1, v28, v29, v30, v31, v32);
      sub_237B18AFC(4 * (v15 / 4), 0, 5, v33, v34, v35, v36, v37);
      sub_237B18AFC(v14, 0, 6, v38, v39, v40, v41, v42);
      if (a1[v13[10]])
      {
        v48 = 7696483;
        v49 = 0xE300000000000000;
      }

      else
      {
        v48 = 1869903201;
        v49 = 0xE400000000000000;
      }

      sub_237B18AFC(v48, v49, 3, v43, v44, v45, v46, v47);
      type metadata accessor for CMLFeatureValue();

      v51 = sub_237A2E858(v50);
      sub_237A2F598(47, v51);

      swift_setDeallocating();
      tc_v1_release();
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

uint64_t MLStyleTransfer.init(checkpoint:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for MLCheckpoint(0);
  v6 = OUTLINED_FUNCTION_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_237B238EC(a1, &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  sub_237B234A0(&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  sub_2379DDB90();
  v14 = v13;
  sub_237B23784(a1, type metadata accessor for MLCheckpoint);

  if (!v2)
  {
    *a2 = v14;
    v16 = a2 + *(type metadata accessor for MLStyleTransfer(0) + 20);
    v17 = type metadata accessor for MLStyleTransfer.ModelParameters(0);
    sub_237C05ADC();
    OUTLINED_FUNCTION_64();
    result = __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    *&v16[v17[6]] = 1;
    v16[v17[10]] = 0;
    *v16 = 0;
    *&v16[v17[7]] = 500;
    *&v16[v17[8]] = 256;
    *&v16[v17[9]] = 5;
  }

  return result;
}

uint64_t sub_237B20824(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_237C05ADC();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237B208E4);
}

uint64_t sub_237B208E4()
{
  OUTLINED_FUNCTION_27();
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  (*(v2 + 16))(v1, v0[3], v3);
  v4 = sub_237C0598C();
  v6 = sub_237B29600(v4, v5);
  (*(v2 + 8))(v1, v3);

  type metadata accessor for CMLModel();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  type metadata accessor for _Model();
  OUTLINED_FUNCTION_29_4();
  swift_allocObject();
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_237B20A5C;

  return sub_237ADFC80(v7);
}

uint64_t sub_237B20A5C()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  OUTLINED_FUNCTION_18();
  v5 = v4;
  OUTLINED_FUNCTION_95();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;

  if (v0)
  {

    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 64) = v3;
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v11);
  }
}

uint64_t sub_237B20B94()
{
  OUTLINED_FUNCTION_9();
  **(v0 + 16) = *(v0 + 64);

  OUTLINED_FUNCTION_8();

  return v1();
}

void static MLStyleTransfer.train(trainingData:parameters:sessionParameters:)(uint64_t a1, uint64_t a2)
{
  static MLStyleTransfer.makeTrainingSession(trainingData:parameters:sessionParameters:)(a1, a2);
  if (!v2)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D230, &qword_237C13370);
    OUTLINED_FUNCTION_91(v3);
    sub_237BEC724();
  }
}

void static MLStyleTransfer.makeTrainingSession(trainingData:parameters:sessionParameters:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MLTrainingSessionParameters(0);
  v6 = OUTLINED_FUNCTION_20(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18_0();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v29[-1] - v11;
  v13 = type metadata accessor for MLStyleTransfer.ModelParameters(0);
  v14 = OUTLINED_FUNCTION_20(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_0();
  v17 = v16 - v15;
  v18 = type metadata accessor for MLStyleTransfer.DataSource(0);
  v19 = OUTLINED_FUNCTION_20(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2_0();
  v22 = v21 - v20;
  OUTLINED_FUNCTION_11_36();
  sub_237B238EC(a1, v22);
  OUTLINED_FUNCTION_2_62();
  sub_237B238EC(a2, v17);
  v23 = OUTLINED_FUNCTION_1_62();
  sub_237B238EC(v23, v12);
  v24 = _s23TrainingSessionDelegateCMa(0);
  OUTLINED_FUNCTION_91(v24);
  v25 = sub_237B29B80(v22, v17, v12);
  if (!v2)
  {
    v29[3] = v24;
    v29[4] = &off_284AC4E08;
    v29[0] = v25;
    v26 = OUTLINED_FUNCTION_1_62();
    sub_237B238EC(v26, v9);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D238, &qword_237C13378);
    OUTLINED_FUNCTION_91(v27);
    sub_2379E42B8(v29, v9, 14);
  }
}

void static MLStyleTransfer.resume(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D230, &qword_237C13370);
  OUTLINED_FUNCTION_91(v1);

  sub_237BEC724();
}

void static MLStyleTransfer.restoreTrainingSession(sessionParameters:)()
{
  v1 = type metadata accessor for MLTrainingSessionParameters(0);
  v2 = OUTLINED_FUNCTION_20(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18_0();
  v5 = v3 - v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v15[-1] - v7;
  v9 = OUTLINED_FUNCTION_1_62();
  sub_237B238EC(v9, v8);
  v10 = _s23TrainingSessionDelegateCMa(0);
  OUTLINED_FUNCTION_91(v10);
  v11 = sub_237B299C8(v8);
  if (!v0)
  {
    v15[3] = v10;
    v15[4] = &off_284AC4E08;
    v15[0] = v11;
    v12 = OUTLINED_FUNCTION_1_62();
    sub_237B238EC(v12, v5);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D238, &qword_237C13378);
    OUTLINED_FUNCTION_91(v13);
    sub_2379E42B8(v15, v5, 14);
  }
}

uint64_t sub_237B20F94(void *a1, char a2, uint64_t a3, void (*a4)(uint64_t *), void (*a5)(uint64_t *))
{
  v45 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D250, &qword_237C13410);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  v11 = (&v42 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA98, &unk_237C0DEB0);
  v13 = OUTLINED_FUNCTION_20(v12);
  MEMORY[0x28223BE20](v13);
  v44 = &v42 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D258, &unk_237C137D0);
  v16 = OUTLINED_FUNCTION_20(v15);
  MEMORY[0x28223BE20](v16);
  v18 = &v42 - v17;
  v19 = _s20PersistentParametersVMa_4(0);
  OUTLINED_FUNCTION_0();
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v22);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_58();
  if (a2)
  {
    *v11 = a1;
    swift_storeEnumTagMultiPayload();
    v26 = a1;
  }

  else
  {
    v42 = v25;
    v43 = v24;
    v27 = a5;
    sub_2379E8624(v45 + qword_27DEACD88, v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC88, &unk_237C0B9C0);
    _s23TrainingSessionDelegateCMa(0);
    if (swift_dynamicCast())
    {
      v28 = v46;
      v29 = OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_trainingParameters;
      swift_beginAccess();
      sub_237B23430(v28 + v29, v18);
      if (__swift_getEnumTagSinglePayload(v18, 1, v19) != 1)
      {
        v33 = v43;
        sub_237B234A0(v18, v43);
        sub_237C08A3C();
        v34 = v44;
        OUTLINED_FUNCTION_64();
        __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
        sub_237B238EC(v33, &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
        v39 = (*(v42 + 80) + 40) & ~*(v42 + 80);
        v40 = swift_allocObject();
        v40[2] = 0;
        v40[3] = 0;
        v40[4] = v28;
        sub_237B234A0(&v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v40 + v39);
        v41 = (v40 + ((v21 + v39 + 7) & 0xFFFFFFFFFFFFFFF8));
        *v41 = a4;
        v41[1] = v27;
        swift_retain_n();

        sub_237BBAEC8(0, 0, v34, &unk_237C13420, v40);

        return sub_237B23784(v43, _s20PersistentParametersVMa_4);
      }

      sub_237A7B808(v18, &qword_27DE9D258, &unk_237C137D0);
    }

    sub_2379E8AF0();
    v30 = swift_allocError();
    *v31 = 0xD000000000000021;
    *(v31 + 8) = 0x8000000237C1C3F0;
    *(v31 + 16) = 0u;
    *(v31 + 32) = 0u;
    *(v31 + 48) = 0;
    *v11 = v30;
    swift_storeEnumTagMultiPayload();
  }

  a4(v11);
  return sub_237A7B808(v11, &qword_27DE9D250, &qword_237C13410);
}

uint64_t sub_237B213F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D250, &qword_237C13410);
  v7[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237B21494);
}

uint64_t sub_237B21494()
{
  OUTLINED_FUNCTION_9();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *(v1 + 16) = *(v0 + 16);
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v0 + 64) = v2;
  *v2 = v3;
  v2[1] = sub_237B21564;
  v4 = *(v0 + 48);

  return sub_237B1EA60(v4, &unk_237C13430);
}

uint64_t sub_237B21564()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  *v2 = v1;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_237B21668()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 48);
  (*(v0 + 32))(v1);
  sub_237A7B808(v1, &qword_27DE9D250, &qword_237C13410);

  OUTLINED_FUNCTION_8();

  return v2();
}

uint64_t sub_237B216EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = type metadata accessor for MLStyleTransfer.ModelParameters(0);
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237B21784);
}

uint64_t sub_237B21784(__n128 a1)
{
  v3 = v1[5];
  v2 = v1[6];
  v4 = v1[4];
  v5 = _s20PersistentParametersVMa_4(0);
  v6 = *(v4 + v5[5]);
  sub_237B238EC(v4 + v5[6], &v2[v3[5]]);
  v7 = *(v4 + v5[7]);
  v8 = *(v4 + v5[8]);
  *&v2[v3[6]] = 1;
  v9 = v3[10];
  *v2 = v6;
  *&v2[v3[7]] = 500;
  *&v2[v3[8]] = v7;
  *&v2[v3[9]] = v8;
  v2[v9] = *(v4 + v5[9]);

  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  v1[7] = v10;
  *v10 = v11;
  v10[1] = sub_237B218D0;

  return sub_237B1EFA4();
}

uint64_t sub_237B218D0()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  v3 = v2;
  OUTLINED_FUNCTION_95();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {

    OUTLINED_FUNCTION_8();

    return v8();
  }
}

uint64_t sub_237B219EC()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_8();

  return v0();
}

CGImageRef_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MLStyleTransfer.stylize(image:)(CGImageRef image)
{
  v8[1] = *MEMORY[0x277D85DE8];
  type metadata accessor for VNImageOption(0);
  sub_237B22E48();
  v3 = sub_237C085AC();
  objc_allocWithZone(MEMORY[0x277CE2D50]);
  v4 = sub_237B22EA0(image, v3);
  sub_237B21B4C(v4);
  if (v1)
  {
  }

  else
  {
    v7 = v5;
    v8[0] = 0;
    VTCreateCGImageFromCVPixelBuffer(v5, 0, v8);

    return v8[0];
  }

  return result;
}

void sub_237B21B4C(void *a1)
{
  v19[1] = *MEMORY[0x277D85DE8];
  sub_2379E8EE0(0, &qword_27DE9C9A0, 0x277CE2C38);
  v4 = sub_237B1EED0(*(*v1 + 24));
  if (v2)
  {
    return;
  }

  v5 = v4;
  v6 = [objc_allocWithZone(MEMORY[0x277CE2C40]) initWithModel_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACE8, &unk_237C0BAA0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_237C10D30;
  *(v7 + 32) = v6;
  sub_2379E8EE0(0, &qword_27DE9C768, 0x277CE2DF0);
  v8 = v6;
  v9 = sub_237C0892C();

  v19[0] = 0;
  v10 = [a1 performRequests:v9 error:v19];

  if (!v10)
  {
    v16 = v19[0];

    sub_237C0593C();
    v17 = v8;
    v8 = v5;
LABEL_10:
    swift_willThrow();

    return;
  }

  v11 = v19[0];
  v12 = sub_237B233B8(v8);
  if (!v12 || (v13 = sub_237B1ED9C(v12, 0x277CE2D98), , !v13))
  {
    sub_2379E8AF0();
    swift_allocError();
    *v18 = 0xD000000000000039;
    *(v18 + 8) = 0x8000000237C1C3B0;
    *(v18 + 16) = 0u;
    *(v18 + 32) = 0u;
    *(v18 + 48) = 0;
    v17 = v5;
    goto LABEL_10;
  }

  sub_237A254DC();
  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x2383DCAF0](0, v13);
  }

  else
  {
    v14 = *(v13 + 4);
  }

  v15 = v14;

  [v15 pixelBuffer];
}

uint64_t sub_237B21DF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  if (v3)
  {
    v5 = *a1;
    v6 = a1[8];
    type metadata accessor for MLStyleTransfer(0);
    OUTLINED_FUNCTION_20_24();
    if (v6)
    {
      v17 = v6;
      sub_237AD4878(v16, v15);
      v7 = sub_237B25D1C();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15[0] = v6;
      sub_237B230E0(v7, sub_2379FC6A8, 0, isUniquelyReferenced_nonNull_native, v15);
      result = v15[0];
    }

    else
    {
      v17 = 0;
      sub_237AD4878(v16, v15);
      result = sub_237B25D1C();
    }

    *a2 = v5;
    *(a2 + 8) = v3;
    v14 = *(a1 + 2);
    *(a2 + 16) = *(a1 + 1);
    *(a2 + 32) = v14;
    *(a2 + 48) = *(a1 + 3);
  }

  else
  {
    v10 = NSFullUserName();
    v11 = sub_237C086EC();
    v13 = v12;

    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = 0xD000000000000033;
    *(a2 + 24) = 0x8000000237C17C90;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 49;
    *(a2 + 56) = 0xE100000000000000;
    type metadata accessor for MLStyleTransfer(0);
    result = sub_237B25D1C();
  }

  *(a2 + 64) = result;
  return result;
}

uint64_t MLStyleTransfer.write(to:metadata:)(char *a1, uint64_t *a2)
{
  sub_237B21DF0(a2, v13);
  v3 = sub_237AE078C(a1, v13);
  OUTLINED_FUNCTION_32_11(v3, v4, v5, v6, v7, v8, v9, v10, v12[0], v12[1], v12[2], v12[3], v12[4], v12[5], v12[6], v12[7], v12[8]);
  return sub_237A7B808(v12, &qword_27DE9ADE0, &unk_237C0BF90);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MLStyleTransfer.write(toFile:metadata:)(Swift::String toFile, CreateML::MLModelMetadata_optional *metadata)
{
  object = toFile._object;
  countAndFlagsBits = toFile._countAndFlagsBits;
  sub_237B21DF0(&metadata->value.author._countAndFlagsBits, v13);
  v4 = sub_237AE0658(countAndFlagsBits, object, v13);
  OUTLINED_FUNCTION_32_11(v4, v5, v6, v7, v8, v9, v10, v11, v12[0], v12[1], v12[2], v12[3], v12[4], v12[5], v12[6], v12[7], v12[8]);
  sub_237A7B808(v12, &qword_27DE9ADE0, &unk_237C0BF90);
}

uint64_t *static MLStyleTransfer.downloadAssets()()
{
  type metadata accessor for _Model();
  OUTLINED_FUNCTION_29_4();
  swift_allocObject();
  result = sub_237AE0018(14);
  if (!v0)
  {

    sub_237B220DC();
  }

  return result;
}

uint64_t sub_237B220DC()
{
  result = MEMORY[0x2383DDB70](0);
  if (result)
  {
    v2 = result;
    type metadata accessor for CMLParameters();
    inited = swift_initStackObject();
    *(inited + 16) = v2;
    sub_237A31864(20, inited);
    if (!v0)
    {
    }

    swift_setDeallocating();
    return tc_v1_release();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_237B22168(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v31 = v8 - v7;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v27[0] = a2;
    v32 = MEMORY[0x277D84F90];
    sub_237AC8A74();
    v10 = v32;
    v12 = *(v5 + 16);
    v11 = v5 + 16;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v29 = *(v11 + 56);
    v30 = v12;
    v28 = (v11 - 8);
    do
    {
      v14 = v11;
      v30(v31, v13, v34);
      v15 = sub_237C05A9C();
      v17 = v16;
      (*v28)(v31, v34);
      v32 = v10;
      v18 = *(v10 + 16);
      if (v18 >= *(v10 + 24) >> 1)
      {
        sub_237AC8A74();
        v10 = v32;
      }

      *(v10 + 16) = v18 + 1;
      v19 = v10 + 16 * v18;
      *(v19 + 32) = v15;
      *(v19 + 40) = v17;
      v13 += v29;
      --v9;
      v11 = v14;
    }

    while (v9);
    a2 = v27[0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD80, &qword_237C0BC60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0B660;
  *(inited + 32) = 0x55746E65746E6F63;
  *(inited + 40) = 0xEB00000000734C52;
  v32 = v10;
  MEMORY[0x28223BE20](inited);
  v27[-2] = &v32;
  v21 = sub_237BBDC94(sub_2379F5678);
  v23 = v22;

  *(inited + 48) = v21;
  *(inited + 56) = v23 & 1;
  v24 = sub_237C085AC();
  v25 = v27[1];
  sub_237B6CB9C(v24, &v32);
  if (!v25)
  {
    v26 = v33;
    *a2 = v32;
    *(a2 + 8) = v26;
  }
}

uint64_t sub_237B22410@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_237C0825C();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v9 = v8 - v7;
  sub_237C0821C();
  sub_237A5D3A4();
  if (v1)
  {
    return (*(v5 + 8))(v9, v3);
  }

  v12 = v10;
  (*(v5 + 8))(v9, v3);
  if (*(v12 + 16))
  {
    sub_237B22168(v12, a1);
  }

  else
  {

    sub_2379E8AF0();
    swift_allocError();
    *v13 = 0xD00000000000003CLL;
    *(v13 + 8) = 0x8000000237C1C440;
    *(v13 + 16) = 0u;
    *(v13 + 32) = 0u;
    *(v13 + 48) = 0;
    return swift_willThrow();
  }
}

uint64_t sub_237B2258C()
{
  result = MEMORY[0x2383DDB70](0);
  if (result)
  {
    v1 = result;
    type metadata accessor for CMLParameters();
    inited = swift_initStackObject();
    *(inited + 16) = v1;
    type metadata accessor for CMLFeatureValue();
    v3 = sub_237A2E7CC();
    OUTLINED_FUNCTION_33_15(v3);

    sub_237A31864(16, inited);
    sub_237A2E65C();
    sub_237B0E848();
    v5 = v4;

    swift_setDeallocating();
    tc_v1_release();
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237B226D0()
{
  result = MEMORY[0x2383DDB70](0);
  if (result)
  {
    v1 = result;
    type metadata accessor for CMLParameters();
    inited = swift_initStackObject();
    *(inited + 16) = v1;
    type metadata accessor for CMLFeatureValue();
    v3 = sub_237A2E7CC();
    OUTLINED_FUNCTION_33_15(v3);

    sub_237A31864(16, inited);
    sub_237A2E65C();
    sub_237B0E848();
    v5 = v4;

    swift_setDeallocating();
    tc_v1_release();
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MLStyleTransfer.debugDescription.getter()
{
  sub_237B980B4(*(*v0 + 32));
  v2 = v1;
  type metadata accessor for MLStyleTransfer(0);
  v3 = MLStyleTransfer.ModelParameters.description.getter();
  v5 = v4;

  MEMORY[0x2383DC360](0x656D617261500A0ALL, 0xED00000A73726574);

  MEMORY[0x2383DC360](v3, v5);

  return v2;
}

id MLStyleTransfer.playgroundDescription.getter@<X0>(void *a1@<X8>)
{
  v2 = sub_2379E8EE0(0, &qword_27DE9AA20, 0x277CCA898);
  v3 = MLStyleTransfer.debugDescription.getter();
  result = sub_2379E3E14(v3, v4);
  a1[3] = v2;
  *a1 = result;
  return result;
}

uint64_t sub_237B22950()
{
  v1 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (type metadata accessor for MLStyleTransfer.ModelParameters(0) - 8);
  v8 = (v6 + *(*v7 + 80) + 9) & ~*(*v7 + 80);
  v9 = *(v3 + 8);
  v9(v0 + v5, v1);
  sub_2379DBC9C(*(v0 + v6), *(v0 + v6 + 8));
  v10 = v0 + v7[7];
  if (!__swift_getEnumTagSinglePayload(v10 + v8, 1, v1))
  {
    v9(v10 + v8, v1);
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_237B22ACC(uint64_t a1)
{
  v3 = v2;
  v5 = sub_237C05ADC();
  OUTLINED_FUNCTION_1(v5);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = type metadata accessor for MLStyleTransfer.ModelParameters(0);
  OUTLINED_FUNCTION_20(v10);
  v12 = (v9 + *(v11 + 80) + 9) & ~*(v11 + 80);
  v13 = v1 + v9;
  v14 = *(v1 + v9);
  v15 = *(v13 + 8);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_2379D9D48;

  return sub_237B1F9D4(a1, v1 + v7, v14, v15, v1 + v12);
}

uint64_t sub_237B22C24()
{
  type metadata accessor for MLCheckpoint(0);
  OUTLINED_FUNCTION_31_15();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_237C05ADC();
  OUTLINED_FUNCTION_12_0();
  (*(v4 + 8))(v3);
  v5 = *(v0 + 36);
  sub_237C05BFC();
  OUTLINED_FUNCTION_12_0();
  (*(v6 + 8))(v3 + v5);

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_237B22D2C()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  v4 = type metadata accessor for MLCheckpoint(0);
  OUTLINED_FUNCTION_20(v4);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v1 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_2379D6854;

  return sub_237B20824(v3, v0 + v6);
}

uint64_t type metadata accessor for MLStyleTransfer(uint64_t a1)
{
  result = qword_27DE9D240;
  if (!qword_27DE9D240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_237B22E48()
{
  result = qword_27DE9A7C0;
  if (!qword_27DE9A7C0)
  {
    type metadata accessor for VNImageOption(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9A7C0);
  }

  return result;
}

id sub_237B22EA0(void *a1, uint64_t a2)
{
  type metadata accessor for VNImageOption(0);
  sub_237B22E48();
  v4 = sub_237C0855C();

  v5 = [v2 initWithCGImage:a1 options:v4];

  return v5;
}

uint64_t sub_237B22F40(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for MLStyleTransfer.ModelParameters(0);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_237B22FDC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for MLStyleTransfer.ModelParameters(0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_237B2305C(uint64_t a1)
{
  result = type metadata accessor for _Model();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for MLStyleTransfer.ModelParameters(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_237B230E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v53 = a5;
  sub_237AC1704(v52);
  v6 = v52[1];
  v7 = v52[3];
  v8 = v52[4];
  v44 = v52[5];
  v45 = v52[0];
  v9 = (v52[2] + 64) >> 6;

  v42 = v9;
  v43 = v6;
  if (v8)
  {
    while (1)
    {
      v46 = a4;
      v10 = v7;
LABEL_8:
      v12 = (v10 << 10) | (16 * __clz(__rbit64(v8)));
      v13 = (*(v45 + 48) + v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = (*(v45 + 56) + v12);
      v17 = *v16;
      v18 = v16[1];
      v51[0] = v14;
      v51[1] = v15;
      v51[2] = v17;
      v51[3] = v18;

      v44(&v47, v51);

      v20 = v47;
      v19 = v48;
      v21 = v49;
      v22 = v50;
      v23 = *v53;
      v25 = sub_237ACAC78(v47, v48);
      v26 = v23[2];
      v27 = (v24 & 1) == 0;
      if (__OFADD__(v26, v27))
      {
        break;
      }

      v28 = v24;
      if (v23[3] >= v26 + v27)
      {
        if ((v46 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE00, &qword_237C0C068);
          sub_237C090BC();
        }
      }

      else
      {
        sub_237AC03B4();
        v29 = sub_237ACAC78(v20, v19);
        if ((v28 & 1) != (v30 & 1))
        {
          goto LABEL_24;
        }

        v25 = v29;
      }

      v8 &= v8 - 1;
      v31 = *v53;
      if (v28)
      {
        v32 = (v31[7] + 16 * v25);
        v34 = *v32;
        v33 = v32[1];

        v35 = (v31[7] + 16 * v25);
        *v35 = v34;
        v35[1] = v33;
      }

      else
      {
        v31[(v25 >> 6) + 8] |= 1 << v25;
        v36 = (v31[6] + 16 * v25);
        *v36 = v20;
        v36[1] = v19;
        v37 = (v31[7] + 16 * v25);
        *v37 = v21;
        v37[1] = v22;
        v38 = v31[2];
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_23;
        }

        v31[2] = v40;
      }

      a4 = 1;
      v7 = v10;
      v9 = v42;
      v6 = v43;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_2379E925C(v45);
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v46 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_237C0932C();
  __break(1u);
  return result;
}

uint64_t sub_237B233B8(void *a1)
{
  v2 = [a1 results];

  if (!v2)
  {
    return 0;
  }

  sub_2379E8EE0(0, &qword_27DE9C760, 0x277CE2D70);
  v3 = sub_237C0893C();

  return v3;
}

uint64_t sub_237B23430(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D258, &unk_237C137D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237B234A0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_87();
  v4(v3);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_37_0();
  v6(v5);
  return a2;
}

uint64_t sub_237B234F8(__n128 a1)
{
  _s20PersistentParametersVMa_4(0);
  OUTLINED_FUNCTION_31_15();
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  swift_unknownObjectRelease();

  v5 = sub_237C05ADC();
  OUTLINED_FUNCTION_4();
  v7 = *(v6 + 8);
  v7(v2 + v4, v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D228, &unk_237C13710);
  v7(v2 + v4 + *(v8 + 48), v5);
  v9 = *(v1 + 32);
  if (!__swift_getEnumTagSinglePayload(v2 + v4 + v9, 1, v5))
  {
    v7(v2 + v4 + v9, v5);
  }

  return MEMORY[0x2821FE8E8](v2);
}

uint64_t sub_237B23654()
{
  OUTLINED_FUNCTION_27();
  v2 = v1;
  v4 = v3;
  v5 = _s20PersistentParametersVMa_4(0);
  OUTLINED_FUNCTION_1(v5);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v9 = v0[2];
  v10 = v0[3];
  v11 = v0[4];
  v12 = (v0 + ((*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];
  v15 = swift_task_alloc();
  *(v2 + 16) = v15;
  *v15 = v2;
  v15[1] = sub_2379D6854;

  return sub_237B213F4(v4, v9, v10, v11, v0 + v7, v13, v14);
}

uint64_t sub_237B23784(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_237B237D8()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v1 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_2379D9D48;

  return sub_237B216EC(v3, v5, v4);
}

uint64_t sub_237B2387C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D250, &qword_237C13410);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_237B238EC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_87();
  v4(v3);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_37_0();
  v6(v5);
  return a2;
}

void *OUTLINED_FUNCTION_32_11(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va1, a17);
  va_start(__srca, a17);
  __src = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  v27 = va_arg(va1, void);
  v28 = va_arg(va1, void);

  return memcpy(&a9, __srca, 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_33_15(uint64_t a1)
{

  return sub_237A2F598(35, a1);
}

uint64_t OUTLINED_FUNCTION_34_14(uint64_t a1)
{

  return sub_237A7B808(a1, v1, v2);
}

_BYTE *sub_237B23ACC(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x237B23B68);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

void MLStyleTransfer.DataSource.processImages(textelDensity:styleImageDestination:contentImagesDestination:)()
{
  OUTLINED_FUNCTION_74();
  v135 = v1;
  v130 = v0;
  v131 = v3;
  v125 = v4;
  v6 = v5;
  v128 = v7;
  v121 = v8;
  v127 = sub_237C05C2C();
  OUTLINED_FUNCTION_0();
  v122 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  v126 = v12 - v11;
  sub_237C0825C();
  OUTLINED_FUNCTION_0();
  v123 = v14;
  v124 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_0();
  v17 = v16 - v15;
  v129 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v134 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_18_0();
  v22 = (v20 - v21);
  MEMORY[0x28223BE20](v23);
  v25 = &v107 - v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_96();
  MEMORY[0x28223BE20](v27);
  v29 = &v107 - v28;
  MEMORY[0x28223BE20](v30);
  v133 = &v107 - v31;
  MEMORY[0x28223BE20](v32);
  v132 = &v107 - v33;
  MEMORY[0x28223BE20](v34);
  v36 = &v107 - v35;
  v37 = type metadata accessor for MLStyleTransfer.DataSource(0);
  v38 = OUTLINED_FUNCTION_20(v37);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_2_0();
  v41 = v40 - v39;
  v42 = v135;
  sub_237B25F68(v6);
  if (!v42)
  {
    v116 = v25;
    v117 = v6;
    v115 = v17;
    v118 = v2;
    v119 = v29;
    v135 = v22;
    sub_237B25850(v130, v41);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D228, &unk_237C13710);
    v44 = *(v43 + 48);
    v45 = v41 + *(v43 + 64);
    v130 = *v45;
    v120 = *(v45 + 8);
    v46 = (v134 + 4);
    v47 = v134[4];
    v48 = OUTLINED_FUNCTION_16_15();
    v49 = v129;
    v47(v48);
    (v47)(v132, v41 + v44, v49);
    sub_2379E8EE0(0, &qword_27DE9BA08, 0x277CBF758);
    sub_237B25B38(&qword_27DE9C210, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    v50 = sub_237C085AC();
    sub_237B24610();
    v51 = v49;
    v52 = 4 * (v117 / 4);
    sub_237B2496C(v36, v52, v130, v120, v53, v54, v55, v56, v107, v108, v109, v110, v111, v112, v113, v47, v115, v116, v117, v118);
    v113 = v52;
    v109 = v46;
    v110 = v36;
    v58 = v57;
    swift_isUniquelyReferenced_nonNull_native();
    sub_237B414C8();
    sub_237B24DE0();
    v108 = v58;
    v117 = v50;
    v59 = v115;
    sub_237C0821C();
    sub_237A5D3A4();
    v125 = 0;
    v61 = v60;
    (*(v123 + 8))(v59, v124);
    v62 = 0;
    v115 = *(v61 + 16);
    ++v122;
    v131 = (v134 + 1);
    v64 = v126;
    v63 = v127;
    v65 = v114;
    v112 = v61;
    v111 = v134 + 2;
    while (v115 != v62)
    {
      if (v62 >= *(v61 + 16))
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        sub_237C0932C();
        __break(1u);
        return;
      }

      v66 = v134;
      v67 = v61 + ((*(v66 + 80) + 32) & ~*(v66 + 80));
      v68 = v134[9];
      v129 = v62;
      v123 = v68;
      v69 = v134[2];
      v69(v119, v67 + v68 * v62, v51);
      sub_237C05C1C();
      sub_237C05C0C();
      (*v122)(v64, v63);
      v70 = v116;
      v71 = v128;
      sub_237C05A2C();

      v72 = v118;
      sub_237C05A3C();
      v73 = v66[1];
      v74 = v119;
      v73(v70, v51);
      v75 = v73;
      v76 = v125;
      sub_237B2496C(v74, v113, v130, v120, v77, v78, v79, v80, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118);
      v125 = v76;
      if (v76)
      {
        v103 = OUTLINED_FUNCTION_6_46();
        (v73)(v103);

        v73(v72, v51);
        v73(v71, v51);
        v104 = OUTLINED_FUNCTION_11_37();
        (v73)(v104);
        v73(v132, v51);
        v105 = OUTLINED_FUNCTION_3_60();
        (v73)(v105);

        goto LABEL_3;
      }

      v82 = v81;
      v83 = OUTLINED_FUNCTION_6_46();
      v124 = v75;
      (v75)(v83);
      v69(v135, v72, v51);
      v84 = v82;
      v85 = v117;
      swift_isUniquelyReferenced_nonNull_native();
      v86 = sub_237ACB424();
      if (__OFADD__(v85[2], (v87 & 1) == 0))
      {
        goto LABEL_21;
      }

      v88 = v86;
      v89 = v87;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D260, &qword_237C13470);
      if (sub_237C090AC())
      {
        v90 = sub_237ACB424();
        if ((v89 & 1) != (v91 & 1))
        {
          goto LABEL_23;
        }

        v88 = v90;
      }

      v117 = v85;
      if (v89)
      {
        v92 = v85[7];
        v93 = *(v92 + 8 * v88);
        *(v92 + 8 * v88) = v84;

        v84 = v93;
        v64 = v126;
        v63 = v127;
        v65 = v114;
      }

      else
      {
        v85[(v88 >> 6) + 8] |= 1 << v88;
        v69((v85[6] + v88 * v123), v135, v51);
        *(v85[7] + 8 * v88) = v84;
        v94 = v85[2];
        v95 = __OFADD__(v94, 1);
        v96 = v94 + 1;
        if (v95)
        {
          goto LABEL_22;
        }

        v85[2] = v96;
        v64 = v126;
        v63 = v127;
        v65 = v114;
      }

      v97 = v124;

      v98 = OUTLINED_FUNCTION_6_46();
      v97(v98);
      (v97)(v118, v51);
      v62 = v129 + 1;
      v61 = v112;
    }

    v99 = v125;
    sub_237B251D0();

    v100 = *v131;
    if (v99)
    {
      (*v131)(v128, v51);
      v101 = OUTLINED_FUNCTION_11_37();
      v100(v101);
      (v100)(v132, v51);
      v102 = OUTLINED_FUNCTION_3_60();
      v100(v102);
    }

    else
    {
      (*v131)(v132, v51);
      v106 = OUTLINED_FUNCTION_3_60();
      v100(v106);
      v65(v121, v133, v51);
    }
  }

LABEL_3:
  OUTLINED_FUNCTION_73();
}

void sub_237B24610()
{
  OUTLINED_FUNCTION_74();
  v34 = v1;
  v3 = v2;
  v36 = v4;
  sub_237C05C2C();
  OUTLINED_FUNCTION_0();
  v32 = v6;
  v33 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v9 = v8 - v7;
  v10 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v35 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_96();
  MEMORY[0x28223BE20](v13);
  v15 = &v31 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  v17 = OUTLINED_FUNCTION_20(v16);
  MEMORY[0x28223BE20](v17);
  v19 = &v31 - v18;
  v20 = sub_237C0825C();
  OUTLINED_FUNCTION_0();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_2_0();
  v26 = v25 - v24;
  sub_237C0821C();
  LOBYTE(v3) = sub_237A5C0AC(v3, v26);
  (*(v22 + 8))(v26, v20);
  if (v3)
  {
    sub_237A6FAB8(v34, v19);
    if (__swift_getEnumTagSinglePayload(v19, 1, v10) == 1)
    {
      sub_237A6FB28(v19);
      v27 = NSTemporaryDirectory();
      sub_237C086EC();

      sub_237C059AC();

      sub_237C05C1C();
      sub_237C05C0C();
      (*(v32 + 8))(v9, v33);
      sub_237C05A2C();

      sub_237C05A3C();
      v28 = *(v35 + 8);
      v28(v0, v10);
      v28(v15, v10);
    }

    else
    {
      (*(v35 + 32))(v36, v19, v10);
    }
  }

  else
  {
    sub_2379E8AF0();
    v29 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    *v30 = 0xD000000000000019;
    v30[1] = 0x8000000237C1C600;
    OUTLINED_FUNCTION_52(v29, v30);
  }

  OUTLINED_FUNCTION_73();
}

void sub_237B2496C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_74();
  v52 = v21;
  v51 = v22;
  v24 = v23;
  v26 = v25;
  v27 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_2_0();
  v33 = v32 - v31;
  sub_2379E8EE0(0, &qword_27DE9AC50, 0x277CBFEF8);
  (*(v29 + 16))(v33, v26, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D298, &unk_237C134C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0B660;
  v35 = *MEMORY[0x277CBFE80];
  *(inited + 64) = MEMORY[0x277D83E88];
  *(inited + 32) = v35;
  *(inited + 40) = 0;
  type metadata accessor for ImageOption(0);
  sub_237B25B38(&qword_27DE9A970, type metadata accessor for ImageOption, &unk_237C0B438);
  v36 = v35;
  v37 = sub_237C085AC();
  v38 = sub_237B26B78(v33, v24, v24, 1380401729, v37);
  if (!v20)
  {
    v39 = v38;
    v40 = v51;
    if (sub_237A37A64())
    {
      goto LABEL_12;
    }

    if (v52)
    {
      OUTLINED_FUNCTION_10_38();
      v41 = 0xD000000000000020;
    }

    else
    {
      v41 = sub_237B2572C(v51);
      v40 = v42;
    }

    sub_237A3825C(14, 0xD000000000000014, 0x8000000237C1C560, v41, v40);

    v43 = sub_237C059EC();
    v44 = sub_237C0855C();
    v40 = CGImageSourceCreateWithURL(v43, v44);

    if (!v40)
    {
      goto LABEL_12;
    }

    v45 = sub_237C0855C();
    v46 = CGImageSourceCopyPropertiesAtIndex(v40, 0, v45);

    if (v46)
    {
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

LABEL_12:
        v47 = [v39 imageBufferValue];
        if (v47)
        {
          v48 = v47;
          [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCVPixelBuffer_];
        }

        else
        {
          OUTLINED_FUNCTION_10_38();
          sub_2379E8AF0();
          v49 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
          *v50 = 0xD000000000000018;
          v50[1] = v40;
          OUTLINED_FUNCTION_52(v49, v50);
        }

        goto LABEL_14;
      }

      sub_237C0856C();
    }

    goto LABEL_12;
  }

LABEL_14:
  OUTLINED_FUNCTION_73();
}