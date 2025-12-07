uint64_t sub_25C7C9350(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  sub_25C7CC63C(0, v2, 0);
  v3 = v10;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_25C7C51B4(i, v9, &qword_27FC158F0, &qword_25C7CDE20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC158F0, &qword_25C7CDE20);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_25C7CC63C((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      *(v3 + 16) = v6 + 1;
      *(v3 + 8 * v6 + 32) = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_25C7C9480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v140 = a5;
  v135 = a4;
  v136 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15920, &qword_25C7CE220);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v122 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v122 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v122 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v122 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v132 = &v122 - v23;
  MEMORY[0x28223BE20](v22);
  v133 = &v122 - v24;
  if ((a1 != 0x6C61696D6F6E6942 || a2 != 0xEC00000074736554) && (sub_25C7CD414() & 1) == 0)
  {
    if (a1 == 0x747365545ALL && a2 == 0xE500000000000000 || (sub_25C7CD414() & 1) != 0)
    {
      if (!*(a3 + 16))
      {
        goto LABEL_61;
      }

      v32 = sub_25C7BB2FC(0x6C65694661746164, 0xE900000000000064);
      if ((v33 & 1) == 0)
      {
        goto LABEL_61;
      }

      sub_25C7B9970(*(a3 + 56) + 32 * v32, v139);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_61;
      }

      v34 = v138;
      if (!*(a3 + 16) || (v35 = v137, v36 = sub_25C7BB2FC(0x6C656946656D6974, 0xE900000000000064), (v37 & 1) == 0) || (sub_25C7B9970(*(a3 + 56) + 32 * v36, v139), (swift_dynamicCast() & 1) == 0))
      {
LABEL_60:

LABEL_61:
        v82 = 0x800000025C7CF0B0;
        sub_25C7B9A14();
        v59 = swift_allocError();
        v83 = 0xD000000000000056;
LABEL_62:
        *v58 = v83;
        *(v58 + 8) = v82;
        goto LABEL_63;
      }

      v38 = v138;
      if (*(a3 + 16))
      {
        v39 = v137;
        v40 = sub_25C7BB2FC(0xD000000000000011, 0x800000025C7CE740);
        v42 = v41;
        if ((v41 & 1) == 0)
        {
          v43 = 0;
          goto LABEL_54;
        }

        sub_25C7B9970(*(a3 + 56) + 32 * v40, v139);
        if (swift_dynamicCast())
        {
          v43 = v137;
LABEL_54:
          if (*(a3 + 16))
          {
            v75 = sub_25C7BB2FC(0xD000000000000011, 0x800000025C7CECC0);
            if (v76)
            {
              sub_25C7B9970(*(a3 + 56) + 32 * v75, v139);
              if (swift_dynamicCast())
              {
                v77 = v42 ^ 1;
                v78 = *&v137;
                v79 = type metadata accessor for ZTestResult(0);
                v53 = v136;
                *(v136 + 24) = v79;
                v53[4] = &off_286E69A48;
                boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v53);
                v81 = v134;
                sub_25C7CA648(v135, v35, v34, v39, v38, v43, v77 & 1, boxed_opaque_existential_0, v78);
                v59 = v81;
                if (v81)
                {
                  goto LABEL_69;
                }

                goto LABEL_70;
              }
            }
          }
        }
      }

      goto LABEL_60;
    }

    if ((a1 != 0x74736554534BLL || a2 != 0xE600000000000000) && (sub_25C7CD414() & 1) == 0)
    {
      v139[0] = 0;
      v139[1] = 0xE000000000000000;
      sub_25C7CD314();

      strcpy(v139, "Unknown test: ");
      HIBYTE(v139[1]) = -18;
      MEMORY[0x25F88E8A0](a1, a2);
      v56 = v139[0];
      v57 = v139[1];
      sub_25C7B9A14();
      v59 = swift_allocError();
      *v58 = v56;
      *(v58 + 8) = v57;
LABEL_63:
      *(v58 + 16) = 0;
      result = swift_willThrow();
LABEL_64:
      v72 = v140;
      goto LABEL_65;
    }

    if (!*(a3 + 16) || (v44 = sub_25C7BB2FC(0x6C65694661746164, 0xE900000000000064), (v45 & 1) == 0) || (sub_25C7B9970(*(a3 + 56) + 32 * v44, v139), (swift_dynamicCast() & 1) == 0))
    {
LABEL_73:
      v82 = 0x800000025C7CF070;
      sub_25C7B9A14();
      v59 = swift_allocError();
      v83 = 0xD000000000000039;
      goto LABEL_62;
    }

    v46 = v138;
    if (*(a3 + 16))
    {
      v47 = v137;
      v48 = sub_25C7BB2FC(0x6C656946656D6974, 0xE900000000000064);
      if (v49)
      {
        sub_25C7B9970(*(a3 + 56) + 32 * v48, v139);
        if (swift_dynamicCast())
        {
          v50 = v137;
          v51 = v138;
          if (*(a3 + 16))
          {
            v52 = sub_25C7BB2FC(0xD000000000000011, 0x800000025C7CE740);
            v53 = v136;
            if (v54)
            {
              sub_25C7B9970(*(a3 + 56) + 32 * v52, v139);
              if (swift_dynamicCast())
              {
                v55 = 0;
                goto LABEL_68;
              }

              goto LABEL_72;
            }

            v55 = 1;
          }

          else
          {
            v55 = 1;
            v53 = v136;
          }

LABEL_68:
          v53[3] = type metadata accessor for KSTestTwoSampleResult(0);
          v53[4] = &off_286E69A78;
          v84 = __swift_allocate_boxed_opaque_existential_0(v53);
          v85 = v134;
          sub_25C7CB684(v135, v47, v46, v50, v55, v84, v51);
          v59 = v85;
          if (v85)
          {
LABEL_69:
            __swift_deallocate_boxed_opaque_existential_1(v53);

            goto LABEL_64;
          }

LABEL_70:
        }
      }
    }

LABEL_72:

    goto LABEL_73;
  }

  if (!*(a3 + 16))
  {
    goto LABEL_52;
  }

  v25 = sub_25C7BB2FC(0x6C65694661746164, 0xE900000000000064);
  if ((v26 & 1) == 0)
  {
    goto LABEL_52;
  }

  sub_25C7B9970(*(a3 + 56) + 32 * v25, v139);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_52;
  }

  v27 = v138;
  if (!*(a3 + 16) || (v131 = v137, v28 = sub_25C7BB2FC(0x6C656946656D6974, 0xE900000000000064), (v29 & 1) == 0) || (sub_25C7B9970(*(a3 + 56) + 32 * v28, v139), (swift_dynamicCast() & 1) == 0))
  {
LABEL_51:

LABEL_52:
    v72 = v140;
    sub_25C7B9A14();
    v59 = swift_allocError();
    *v73 = 0xD00000000000006ALL;
    *(v73 + 8) = 0x800000025C7CF110;
    *(v73 + 16) = 0;
    result = swift_willThrow();
LABEL_65:
    *v72 = v59;
    return result;
  }

  v130 = v138;
  if (!*(a3 + 16))
  {
    goto LABEL_50;
  }

  v128 = v137;
  v30 = sub_25C7BB2FC(0xD000000000000011, 0x800000025C7CE740);
  v129 = v31;
  if ((v31 & 1) == 0)
  {
    v127 = 0;
    goto LABEL_42;
  }

  sub_25C7B9970(*(a3 + 56) + 32 * v30, v139);
  if (!swift_dynamicCast())
  {
LABEL_50:

    goto LABEL_51;
  }

  v127 = v137;
LABEL_42:
  if (!*(a3 + 16))
  {
    goto LABEL_50;
  }

  v60 = sub_25C7BB2FC(0xD000000000000011, 0x800000025C7CECC0);
  if ((v61 & 1) == 0)
  {
    goto LABEL_50;
  }

  sub_25C7B9970(*(a3 + 56) + 32 * v60, v139);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_50;
  }

  if (!*(a3 + 16))
  {
    goto LABEL_50;
  }

  v62 = *&v137;
  v63 = sub_25C7BB2FC(0x6568746F70794870, 0xEB00000000736973);
  if ((v64 & 1) == 0)
  {
    goto LABEL_50;
  }

  sub_25C7B9970(*(a3 + 56) + 32 * v63, v139);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_50;
  }

  v126 = *&v137;
  v65 = type metadata accessor for BinomialTestResult(0);
  v66 = v136;
  *(v136 + 24) = v65;
  v66[4] = &off_286E69A18;
  v67 = __swift_allocate_boxed_opaque_existential_0(v66);
  if ((v129 & (v127 < 1)) == 1)
  {

    v69 = 0x800000025C7CF220;
    sub_25C7B9A14();
    v59 = swift_allocError();
    v71 = 0xD000000000000031;
LABEL_83:
    *v70 = v71;
    *(v70 + 8) = v69;
    *(v70 + 16) = 0;
    swift_willThrow();
LABEL_84:
    v72 = v140;
    result = __swift_deallocate_boxed_opaque_existential_1(v136);
    goto LABEL_65;
  }

  v124 = v65;
  v125 = v67;
  if (v62 < 0.0 || v62 > 1.0)
  {

    v69 = 0x800000025C7CF1E0;
    sub_25C7B9A14();
    v59 = swift_allocError();
    v71 = 0xD000000000000035;
    goto LABEL_83;
  }

  if (v126 < 0.0 || v126 > 1.0)
  {

    v69 = 0x800000025C7CF1B0;
    sub_25C7B9A14();
    v59 = swift_allocError();
    v71 = 0xD00000000000002FLL;
    goto LABEL_83;
  }

  v86 = *(v135 + 16);
  if (v86)
  {
    v87 = (v135 + 32 * v86);
    v88 = *v87;
    v123 = v87[1];
    v89 = v87[3];
    v135 = v87[2];
    v122 = v88;
    swift_unknownObjectRetain();
  }

  else
  {
    v135 = 0;
    v122 = MEMORY[0x277D84F90];
    v123 = MEMORY[0x277D84F90] + 32;
    v89 = 1;
  }

  v90 = v134;
  v134 = sub_25C7CC244(v21, v18, v68, v123, v135, v89, v128, v130);
  v59 = v90;
  if (v90)
  {
    swift_unknownObjectRelease();

    goto LABEL_84;
  }

  sub_25C7CC50C(v21, v133);
  sub_25C7CC50C(v18, v132);
  v91 = sub_25C7CCEF8(v123, v135, v89, v131, v27);
  v92 = sub_25C7C9220(v91);

  if (!v92)
  {
    sub_25C7B9A14();
    v59 = swift_allocError();
    *v107 = 0xD000000000000026;
    *(v107 + 8) = 0x800000025C7CF180;
    *(v107 + 16) = 1;
    swift_willThrow();

    swift_unknownObjectRelease();
    sub_25C7BDAE8(v132);
    sub_25C7BDAE8(v133);
    goto LABEL_84;
  }

  v93 = 0;
  v94 = *(v92 + 16);
  v95 = MEMORY[0x277D84F90];
  while (v94 != v93)
  {
    if (v93 >= *(v92 + 16))
    {
      __break(1u);
LABEL_107:
      __break(1u);
      goto LABEL_108;
    }

    v96 = v93 + 1;
    v97 = *(v92 + 8 * v93++ + 32);
    if (v97 == 1)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      v139[0] = v95;
      if ((result & 1) == 0)
      {
        result = sub_25C7CC61C(0, *(v95 + 16) + 1, 1);
        v95 = v139[0];
      }

      v99 = *(v95 + 16);
      v98 = *(v95 + 24);
      v140 = v99 + 1;
      v136 = v99;
      if (v99 >= v98 >> 1)
      {
        result = sub_25C7CC61C((v98 > 1), v140, 1);
        v95 = v139[0];
      }

      *(v95 + 16) = v140;
      *(v95 + 8 * v136 + 32) = 1;
      v93 = v96;
    }
  }

  v140 = *(v95 + 16);

  if (v129)
  {
    if (v134 < v127)
    {
LABEL_100:

      v101 = v124;
      v100 = v125;
      v102 = v133;
      sub_25C7C51B4(v133, v125 + v124[12], &qword_27FC15920, &qword_25C7CE220);
      v103 = v132;
      sub_25C7C51B4(v132, v100 + v101[13], &qword_27FC15920, &qword_25C7CE220);
      swift_unknownObjectRelease();
      sub_25C7BDAE8(v103);
      sub_25C7BDAE8(v102);
      strcpy(v100, "BinomialTest");
      *(v100 + 13) = 0;
      *(v100 + 7) = -5120;
      *(v100 + 17) = 1;
      *(v100 + v101[10]) = v134;
      *(v100 + v101[11]) = v140;
      v104 = v101[7];
      v105 = sub_25C7CD1D4();
      result = (*(*(v105 - 8) + 56))(v100 + v104, 1, 1, v105);
      *(v100 + 16) = 0;
      v106 = v100 + v101[8];
      *v106 = 0;
      v106[8] = 1;
      *(v100 + v101[9]) = 2;
      return result;
    }
  }

  else if (v134 <= 0)
  {
    goto LABEL_100;
  }

  sub_25C7BB83C(v134, v140, 0, v126);
  v109 = v108;
  sub_25C7C51B4(v133, v15, &qword_27FC15920, &qword_25C7CE220);
  v110 = sub_25C7CD1D4();
  v135 = *(v110 - 8);
  v136 = v110;
  v111 = *(v135 + 48);
  result = v111(v15, 1);
  if (result == 1)
  {
    goto LABEL_107;
  }

  sub_25C7C51B4(v132, v12, &qword_27FC15920, &qword_25C7CE220);
  result = (v111)(v12, 1, v136);
  if (result == 1)
  {
LABEL_108:
    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();

    sub_25C7BDAE8(v132);
    sub_25C7BDAE8(v133);
    v112 = v125;
    *v125 = 0x6C61696D6F6E6942;
    v112[1] = 0xEC00000074736554;
    v113 = v124;
    v114 = (v112 + v124[8]);
    *v114 = v109;
    *(v114 + 8) = 0;
    *(v112 + v113[9]) = v109 < v62;
    v115 = v135;
    *(v112 + v113[10]) = v134;
    *(v112 + v113[11]) = v140;
    v116 = v113[12];
    v134 = *(v115 + 32);
    v140 = v115 + 32;
    v117 = v136;
    v134(v112 + v116, v15, v136);
    v118 = *(v115 + 56);
    v118(v112 + v116, 0, 1, v117);
    v119 = v118;
    v120 = v113[13];
    (*(v115 + 16))(v112 + v120, v12, v117);
    v119(v112 + v120, 0, 1, v117);
    v121 = v113[7];
    v134(v112 + v121, v12, v117);
    result = (v119)(v112 + v121, 0, 1, v117);
    *(v112 + 8) = 513;
  }

  return result;
}

uint64_t sub_25C7CA648@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t, uint64_t)@<X2>, uint64_t a3@<X3>, int64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, int a7@<W7>, void *a8@<X8>, double a9@<D0>)
{
  v10 = v9;
  v173 = a4;
  v174 = a5;
  v171 = a2;
  v172 = a3;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15920, &qword_25C7CE220);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v153 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = MEMORY[0x28223BE20](&v153 - v20);
  v22 = MEMORY[0x28223BE20](v21);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v153 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v153 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v30 = MEMORY[0x28223BE20](v29);
  v31 = MEMORY[0x28223BE20](v30);
  v33 = &v153 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v153 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v38 = MEMORY[0x28223BE20](v37);
  if ((a7 & 1) == 0 && a6 <= 0)
  {
    v45 = 0x800000025C7CF220;
    sub_25C7B9A14();
    swift_allocError();
    v47 = 0xD000000000000031;
LABEL_10:
    *v46 = v47;
    *(v46 + 8) = v45;
    *(v46 + 16) = 0;
    return swift_willThrow();
  }

  if (a9 < 0.0 || a9 > 1.0)
  {
    v45 = 0x800000025C7CF1E0;
    sub_25C7B9A14();
    swift_allocError();
    v47 = 0xD000000000000035;
    goto LABEL_10;
  }

  v170 = a7;
  v164 = a6;
  v155 = v40;
  v156 = v39;
  v157 = v38;
  v158 = v19;
  v161 = v43;
  v162 = v44;
  v165 = &v153 - v41;
  v166 = v42;
  v159 = a8;
  v48 = *(a1 + 16);
  v49 = MEMORY[0x277D84F90];
  v50 = MEMORY[0x277D84F90] + 32;
  if (v48)
  {
    v51 = (a1 + 32 * v48);
    v52 = v51[1];
    v168 = *v51;
    v169 = v52;
    v53 = v51[3];
    v163 = v51[2];
    swift_unknownObjectRetain();
    if (v48 == 1)
    {
      v48 = 0;
      v54 = 1;
      v49 = MEMORY[0x277D84F90];
    }

    else
    {
      v50 = *(v51 - 3);
      v48 = *(v51 - 2);
      v54 = *(v51 - 1);
      v49 = *(v51 - 4);
      swift_unknownObjectRetain();
    }

    v56 = v169;
  }

  else
  {
    v163 = 0;
    v53 = 1;
    v56 = MEMORY[0x277D84F90] + 32;
    v168 = MEMORY[0x277D84F90];
    v54 = 1;
  }

  v160 = v53;
  v169 = v56;
  if (v170)
  {
    v167 = v49;
  }

  else
  {
    v167 = sub_25C7CC464(v164, v49, v50, v48, v54);
    v50 = v57;
    v48 = v40;
    v54 = v58;
  }

  v59 = sub_25C7CC244(v36, v33, v40, v50, v48, v54, v173, v174);
  v60 = v170;
  if (v10)
  {
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  v154 = v59;
  sub_25C7CC50C(v36, v165);
  v61 = v33;
  v62 = 0;
  sub_25C7CC50C(v61, v166);
  v63 = sub_25C7CCEF8(v50, v48, v54, v171, v172);
  v64 = sub_25C7C9220(v63);

  if (!v64)
  {
    sub_25C7B9A14();
    swift_allocError();
    *v82 = 0xD000000000000026;
    *(v82 + 8) = 0x800000025C7CF180;
    *(v82 + 16) = 1;
    swift_willThrow();
    v83 = v165;
    v84 = v166;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_25C7BDAE8(v84);
    return sub_25C7BDAE8(v83);
  }

  v65 = 0;
  v66 = *(v64 + 16);
  v67 = MEMORY[0x277D84F90];
LABEL_21:
  v68 = v163;
  while (v66 != v65)
  {
    v69 = *(v64 + 16);
    if (v65 >= v69)
    {
      __break(1u);
      goto LABEL_58;
    }

    v70 = v65 + 1;
    v71 = *(v64 + 8 * v65++ + 32);
    if (v71 == 1)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v175 = v67;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25C7CC61C(0, *(v67 + 16) + 1, 1);
        v67 = v175;
      }

      v74 = *(v67 + 16);
      v73 = *(v67 + 24);
      v75 = v74 + 1;
      if (v74 >= v73 >> 1)
      {
        v153 = v74 + 1;
        sub_25C7CC61C((v73 > 1), v74 + 1, 1);
        v75 = v153;
        v67 = v175;
      }

      *(v67 + 16) = v75;
      *(v67 + 8 * v74 + 32) = 1;
      v65 = v70;
      goto LABEL_21;
    }
  }

  v163 = *(v67 + 16);

  v76 = v169;
  v77 = v160;
  v79 = sub_25C7CC244(v28, v25, v78, v169, v68, v160, v173, v174);
  v80 = v166;
  v81 = v162;
  v174 = v79;
  v85 = v28;
  v86 = v161;
  sub_25C7CC50C(v85, v161);
  sub_25C7CC50C(v25, v81);
  v87 = sub_25C7CCEF8(v76, v68, v77, v171, v172);
  v88 = v81;
  v89 = v80;
  v172 = 0;
  v90 = sub_25C7C9220(v87);

  if (!v90)
  {
    sub_25C7B9A14();
    swift_allocError();
    *v99 = 0xD000000000000026;
    *(v99 + 8) = 0x800000025C7CF180;
    *(v99 + 16) = 1;
    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_25C7BDAE8(v88);
    sub_25C7BDAE8(v86);
    sub_25C7BDAE8(v89);
    return sub_25C7BDAE8(v165);
  }

  v91 = 0;
  v92 = *(v90 + 16);
  v93 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v92 == v91)
    {

      v173 = *(v93 + 16);

      if (v60)
      {
        v62 = v154;
        if (v174 < 1 || v154 < 1)
        {
LABEL_51:
          v101 = type metadata accessor for ZTestResult(0);
          v102 = v159;
          v103 = v165;
          sub_25C7C51B4(v165, v159 + v101[12], &qword_27FC15920, &qword_25C7CE220);
          v104 = v166;
          sub_25C7C51B4(v166, v102 + v101[13], &qword_27FC15920, &qword_25C7CE220);
          v105 = v161;
          sub_25C7C51B4(v161, v102 + v101[16], &qword_27FC15920, &qword_25C7CE220);
          sub_25C7C51B4(v88, v102 + v101[17], &qword_27FC15920, &qword_25C7CE220);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          sub_25C7BDAE8(v88);
          sub_25C7BDAE8(v105);
          sub_25C7BDAE8(v104);
          sub_25C7BDAE8(v103);
          *v102 = 0x747365545ALL;
          v102[1] = 0xE500000000000000;
          *(v102 + 17) = 1;
          *(v102 + v101[10]) = v62;
          *(v102 + v101[11]) = v163;
          v106 = v173;
          *(v102 + v101[14]) = v174;
          *(v102 + v101[15]) = v106;
          v107 = v102;
          v108 = v101[7];
          v109 = sub_25C7CD1D4();
          result = (*(*(v109 - 8) + 56))(v102 + v108, 1, 1, v109);
          *(v102 + 16) = 0;
          v110 = v102 + v101[8];
          *v110 = 0;
          v110[8] = 1;
          v111 = v101[9];
          goto LABEL_56;
        }
      }

      else
      {
        v62 = v154;
        if (v174 < v164 || v154 < v164)
        {
          goto LABEL_51;
        }
      }

      v69 = 0xD00000000000001BLL;
      if (v62 < v163)
      {
        v100 = "k1 must be in range [1, n1]";
LABEL_54:
        v112 = v100 - 32;
        v90 = 0xD00000000000001BLL;
        goto LABEL_55;
      }

      if (v174 < v173)
      {
        v100 = "k2 must be in range [1, n2]";
        goto LABEL_54;
      }

LABEL_58:
      v112 = "n2 must be in range (1, maxInt]";
      v90 = v69 + 19;
      if (a9 >= 1.0 || a9 <= 0.0)
      {
        goto LABEL_55;
      }

      v90 = v69 + 4;
      if (v62 < 1)
      {
        v152 = "n1 must be in range (1, maxInt]";
        goto LABEL_78;
      }

      if (!v174)
      {
        goto LABEL_77;
      }

      if ((sub_25C7CD414() & 1) == 0)
      {
        if (sub_25C7CD414())
        {
          a9 = 1.0 - a9;
        }

        else
        {
          a9 = a9 * 0.5;
        }
      }

      sub_25C7B9B1C(a9);
      v127 = v126;
      v128 = 0.0;
      if (v163 | v173 && (v163 != v154 || v173 != v174))
      {
        v129 = v163 / v154;
        v130 = v173 / v174;
        v131 = (v129 * v154 + v130 * v174) / (v154 + v174);
        v128 = (v129 - v130) / sqrt((1.0 / v154 + 1.0 / v174) * (v131 * (1.0 - v131)));
      }

      v132 = v155;
      sub_25C7C51B4(v165, v155, &qword_27FC15920, &qword_25C7CE220);
      v133 = sub_25C7CD1D4();
      v134 = *(v133 - 8);
      v135 = *(v134 + 48);
      result = v135(v132, 1, v133);
      if (result == 1)
      {
        __break(1u);
      }

      else
      {
        v136 = v156;
        sub_25C7C51B4(v166, v156, &qword_27FC15920, &qword_25C7CE220);
        result = v135(v136, 1, v133);
        if (result != 1)
        {
          v137 = v157;
          sub_25C7C51B4(v161, v157, &qword_27FC15920, &qword_25C7CE220);
          result = v135(v137, 1, v133);
          if (result != 1)
          {
            v138 = v158;
            sub_25C7C51B4(v162, v158, &qword_27FC15920, &qword_25C7CE220);
            result = v135(v138, 1, v133);
            if (result != 1)
            {
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              sub_25C7BDAE8(v162);
              sub_25C7BDAE8(v161);
              sub_25C7BDAE8(v166);
              sub_25C7BDAE8(v165);
              v107 = v159;
              *v159 = 0x747365545ALL;
              v107[1] = 0xE500000000000000;
              v139 = type metadata accessor for ZTestResult(0);
              v140 = (v107 + v139[8]);
              *v140 = v128;
              *(v140 + 8) = 0;
              *(v107 + v139[9]) = fabs(v127 + 0.0) < fabs(v128);
              *(v107 + v139[10]) = v154;
              *(v107 + v139[11]) = v163;
              v141 = v139[12];
              v142 = v134;
              v143 = *(v134 + 32);
              v143(v107 + v141, v155, v133);
              v144 = v143;
              v145 = *(v142 + 56);
              v145(v107 + v141, 0, 1, v133);
              v146 = v139[13];
              v144(v107 + v146, v156, v133);
              v171 = v144;
              v145(v107 + v146, 0, 1, v133);
              v147 = v173;
              *(v107 + v139[14]) = v174;
              *(v107 + v139[15]) = v147;
              v148 = v139[16];
              v144(v107 + v148, v157, v133);
              v145(v107 + v148, 0, 1, v133);
              v149 = v139[17];
              v150 = v158;
              (*(v142 + 16))(v107 + v149, v158, v133);
              v145(v107 + v149, 0, 1, v133);
              v151 = v139[7];
              v171(v107 + v151, v150, v133);
              result = (v145)(v107 + v151, 0, 1, v133);
              *(v107 + 16) = 1;
              v111 = 17;
              goto LABEL_56;
            }

            goto LABEL_82;
          }

LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
          return result;
        }
      }

      __break(1u);
      goto LABEL_81;
    }

    if (v91 >= *(v90 + 16))
    {
      break;
    }

    v94 = v91 + 1;
    v95 = *(v90 + 8 * v91++ + 32);
    if (v95 == 1)
    {
      v96 = swift_isUniquelyReferenced_nonNull_native();
      v175 = v93;
      if ((v96 & 1) == 0)
      {
        sub_25C7CC61C(0, *(v93 + 16) + 1, 1);
        v93 = v175;
      }

      v98 = *(v93 + 16);
      v97 = *(v93 + 24);
      if (v98 >= v97 >> 1)
      {
        sub_25C7CC61C((v97 > 1), v98 + 1, 1);
        v93 = v175;
      }

      *(v93 + 16) = v98 + 1;
      *(v93 + 8 * v98 + 32) = 1;
      v91 = v94;
      v88 = v162;
    }
  }

  __break(1u);
LABEL_77:
  v152 = "n2 must be in range (1, maxInt]";
LABEL_78:
  v112 = v152 - 32;
LABEL_55:
  v113 = v112 | 0x8000000000000000;
  sub_25C7B9A14();
  v114 = swift_allocError();
  *v115 = v90;
  *(v115 + 8) = v113;
  *(v115 + 16) = 0;
  swift_willThrow();
  v116 = type metadata accessor for ZTestResult(0);
  v117 = v159;
  v118 = v165;
  sub_25C7C51B4(v165, v159 + v116[12], &qword_27FC15920, &qword_25C7CE220);
  v119 = v166;
  sub_25C7C51B4(v166, v117 + v116[13], &qword_27FC15920, &qword_25C7CE220);
  v120 = v161;
  sub_25C7C51B4(v161, v117 + v116[16], &qword_27FC15920, &qword_25C7CE220);
  v121 = v162;
  sub_25C7C51B4(v162, v117 + v116[17], &qword_27FC15920, &qword_25C7CE220);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  MEMORY[0x25F88EF00](v114);
  sub_25C7BDAE8(v121);
  sub_25C7BDAE8(v120);
  sub_25C7BDAE8(v119);
  sub_25C7BDAE8(v118);
  *v117 = 0x747365545ALL;
  v117[1] = 0xE500000000000000;
  *(v117 + 17) = 0;
  *(v117 + v116[10]) = v154;
  *(v117 + v116[11]) = v163;
  v122 = v173;
  *(v117 + v116[14]) = v174;
  *(v117 + v116[15]) = v122;
  v107 = v117;
  v123 = v116[7];
  v124 = sub_25C7CD1D4();
  result = (*(*(v124 - 8) + 56))(v117 + v123, 1, 1, v124);
  *(v117 + 16) = 0;
  v125 = v117 + v116[8];
  *v125 = 0;
  v125[8] = 1;
  v111 = v116[9];
LABEL_56:
  *(v107 + v111) = 2;
  return result;
}

uint64_t sub_25C7CB684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W6>, void *a6@<X8>, uint64_t a7@<X4>)
{
  v124 = a3;
  v123 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15920, &qword_25C7CE220);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = MEMORY[0x28223BE20](&v103 - v16);
  v18 = MEMORY[0x28223BE20](v17);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v103 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v103 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v26 = MEMORY[0x28223BE20](v25);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v103 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v103 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v34 = MEMORY[0x28223BE20](v33);
  if ((a5 & 1) == 0 && v37 <= 0)
  {
    sub_25C7B9A14();
    swift_allocError();
    *v42 = 0xD000000000000034;
    *(v42 + 8) = 0x800000025C7CF380;
    *(v42 + 16) = 0;
    return swift_willThrow();
  }

  v108 = v37;
  v104 = v36;
  v105 = v35;
  v106 = v34;
  v107 = v15;
  v112 = v41;
  v113 = v40;
  v117 = v39;
  v118 = &v103 - v38;
  v109 = a6;
  v44 = *(a1 + 16);
  v120 = MEMORY[0x277D84F90] + 32;
  v114 = v21;
  if (v44)
  {
    v111 = a4;
    v45 = a7;
    v46 = (a1 + 32 * v44);
    v47 = *v46;
    v119 = v46[1];
    v48 = v46[2];
    v110 = v46[3];
    v121 = v47;
    swift_unknownObjectRetain();
    if (v44 == 1)
    {
      v115 = 1;
      v116 = 0;
      v122 = MEMORY[0x277D84F90];
    }

    else
    {
      v51 = *(v46 - 4);
      v120 = *(v46 - 3);
      v52 = *(v46 - 2);
      v115 = *(v46 - 1);
      v116 = v52;
      v122 = v51;
      swift_unknownObjectRetain();
    }

    v44 = v48;
    a7 = v45;
    v49 = v110;
    a4 = v111;
    v50 = v119;
  }

  else
  {
    v49 = 1;
    v50 = MEMORY[0x277D84F90] + 32;
    v121 = MEMORY[0x277D84F90];
    v122 = MEMORY[0x277D84F90];
    v115 = 1;
    v116 = 0;
  }

  v53 = v125;
  v54 = sub_25C7CC244(v32, v29, v36, v50, v44, v49, a4, a7);
  if (v53)
  {
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  v119 = v50;
  v111 = v44;
  v125 = v54;
  sub_25C7CC50C(v32, v118);
  sub_25C7CC50C(v29, v117);
  v55 = v114;
  v57 = sub_25C7CC244(v24, v114, v56, v120, v116, v115, a4, a7);
  sub_25C7CC50C(v24, v113);
  sub_25C7CC50C(v55, v112);
  if (a5)
  {
    v58 = v125;
    v59 = v125 < 1 || v57 < 1;
    v61 = v115;
    v60 = v116;
    if (!v59)
    {
      goto LABEL_17;
    }

LABEL_23:
    v66 = type metadata accessor for KSTestTwoSampleResult(0);
    v67 = v109;
    sub_25C7C51B4(v113, v109 + v66[10], &qword_27FC15920, &qword_25C7CE220);
    v68 = v112;
    sub_25C7C51B4(v112, v67 + v66[11], &qword_27FC15920, &qword_25C7CE220);
    v69 = v118;
    sub_25C7C51B4(v118, v67 + v66[13], &qword_27FC15920, &qword_25C7CE220);
    v70 = v67 + v66[14];
    v124 = v57;
    v71 = v117;
    sub_25C7C51B4(v117, v70, &qword_27FC15920, &qword_25C7CE220);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_25C7BDAE8(v68);
    sub_25C7BDAE8(v113);
    sub_25C7BDAE8(v71);
    sub_25C7BDAE8(v69);
    *v67 = 0x775474736554534BLL;
    v67[1] = 0xEF656C706D61536FLL;
    *(v67 + 17) = 1;
    *(v67 + v66[9]) = v124;
    *(v67 + v66[12]) = v58;
    v72 = v66[7];
    v73 = sub_25C7CD1D4();
    result = (*(*(v73 - 8) + 56))(v67 + v72, 1, 1, v73);
    *(v67 + 16) = 0;
    v74 = v67 + v66[8];
    *v74 = 0;
    v74[8] = 1;
    return result;
  }

  v58 = v125;
  v65 = v125 < v108 || v57 < v108;
  v61 = v115;
  v60 = v116;
  if (v65)
  {
    goto LABEL_23;
  }

LABEL_17:
  v63 = v123;
  v62 = v124;
  v64 = sub_25C7CCEF8(v119, v111, v49, v123, v124);
  v75 = sub_25C7CCEF8(v120, v60, v61, v63, v62);
  v76 = sub_25C7C9350(v64);
  if (!v76)
  {
    goto LABEL_29;
  }

  v77 = v76;
  v78 = sub_25C7C9350(v75);
  if (!v78)
  {

LABEL_29:

    sub_25C7B9A14();
    swift_allocError();
    *v79 = 0xD00000000000001DLL;
    *(v79 + 8) = 0x800000025C7CF360;
    *(v79 + 16) = 1;
    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_25C7BDAE8(v112);
    sub_25C7BDAE8(v113);
    sub_25C7BDAE8(v117);
    return sub_25C7BDAE8(v118);
  }

  v124 = v57;
  sub_25C7C8B54(v78, v77, 0);
  v81 = v80;
  v82 = v104;
  sub_25C7C51B4(v113, v104, &qword_27FC15920, &qword_25C7CE220);
  v83 = sub_25C7CD1D4();
  v120 = *(v83 - 8);
  v84 = *(v120 + 48);
  result = v84(v82, 1, v83);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_36;
  }

  v85 = v105;
  sub_25C7C51B4(v112, v105, &qword_27FC15920, &qword_25C7CE220);
  result = v84(v85, 1, v83);
  if (result == 1)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v86 = v106;
  sub_25C7C51B4(v118, v106, &qword_27FC15920, &qword_25C7CE220);
  v123 = v83;
  result = v84(v86, 1, v83);
  if (result == 1)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v87 = v117;
  v88 = v107;
  sub_25C7C51B4(v117, v107, &qword_27FC15920, &qword_25C7CE220);
  result = v84(v88, 1, v123);
  if (result != 1)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    sub_25C7BDAE8(v112);
    sub_25C7BDAE8(v113);
    sub_25C7BDAE8(v87);
    sub_25C7BDAE8(v118);
    v89 = v109;
    *v109 = 0x775474736554534BLL;
    *(v89 + 1) = 0xEF656C706D61536FLL;
    v90 = type metadata accessor for KSTestTwoSampleResult(0);
    v91 = &v89[v90[8]];
    *v91 = v81;
    v91[8] = 0;
    v92 = v123;
    *&v89[v90[9]] = v124;
    v93 = v90[10];
    v94 = v120;
    v95 = v120 + 32;
    v122 = *(v120 + 32);
    v122(&v89[v93], v104, v92);
    v124 = v95;
    v121 = *(v94 + 56);
    v121(&v89[v93], 0, 1, v92);
    v96 = v90[11];
    v97 = v122;
    v122(&v89[v96], v105, v92);
    v98 = v121;
    v121(&v89[v96], 0, 1, v92);
    *&v89[v90[12]] = v125;
    v99 = v90[13];
    v97(&v89[v99], v106, v92);
    v98(&v89[v99], 0, 1, v92);
    v100 = v90[14];
    v101 = v107;
    (*(v94 + 16))(&v89[v100], v107, v92);
    v98(&v89[v100], 0, 1, v92);
    v102 = v90[7];
    v122(&v89[v102], v101, v92);
    result = (v98)(&v89[v102], 0, 1, v92);
    *(v89 + 8) = 513;
    return result;
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_25C7CC244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a5;
  v13 = sub_25C7CCEF8(a4, a5, a6, a7, a8);
  if (v8)
  {
    return v10;
  }

  v14 = sub_25C7C8F48(v13);

  if (!v14)
  {
    v10 = 0x800000025C7CF280;
    sub_25C7B9A14();
    swift_allocError();
    *v24 = 0xD000000000000021;
    *(v24 + 8) = 0x800000025C7CF280;
    *(v24 + 16) = 1;
    swift_willThrow();
    return v10;
  }

  v16 = __OFSUB__(a6 >> 1, v10);
  v10 = (a6 >> 1) - v10;
  if (!v16)
  {
    v17 = *(v14 + 16);
    v18 = sub_25C7CD1D4();
    v19 = *(v18 - 8);
    v20 = v19;
    if (v17)
    {
      v26 = v17;
      v21 = v14 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
      v22 = *(v19 + 16);
      v22(a1, v21, v18);
      v23 = *(v20 + 56);
      v23(a1, 0, 1, v18);
      v22(a2, v21 + *(v20 + 72) * (v26 - 1), v18);

      v23(a2, 0, 1, v18);
    }

    else
    {
      v25 = *(v19 + 56);
      v25(a1, 1, 1, v18);

      v25(a2, 1, 1, v18);
    }

    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_25C7CC464(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v5 = a5 >> 1;
  v6 = a4 - (a5 >> 1);
  if (__OFSUB__(a4, a5 >> 1))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v6 > -result && v6 < 1)
  {
    v8 = a4;
  }

  else
  {
    v8 = v5 - result;
  }

  if (v5 < v8)
  {
    goto LABEL_14;
  }

  if (v8 >= a4)
  {
    return a2;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x25F88EFF0);
  }

  return result;
}

uint64_t sub_25C7CC50C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15920, &qword_25C7CE220);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_25C7CC57C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25C7CC65C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25C7CC59C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25C7CC880(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25C7CC5BC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25C7CC9B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25C7CC5DC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25C7CCAE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25C7CC5FC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25C7CCC1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25C7CC61C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25C7CCDF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25C7CC63C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25C7CC77C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25C7CC65C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15A00, &qword_25C7CE230);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25C7CC77C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15900, &qword_25C7CDE30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_25C7CC880(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15910, &qword_25C7CDE40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15918, &qword_25C7CDE48);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25C7CC9B4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15908, &qword_25C7CDE38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC158D0, &qword_25C7CDE08);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25C7CCAE8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15A50, &qword_25C7CE2F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC158F0, &qword_25C7CDE20);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25C7CCC1C(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15A58, &unk_25C7CE300);
  v10 = *(sub_25C7CD1D4() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_25C7CD1D4() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_25C7CCDF4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15A48, &qword_25C7CE2F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_25C7CCEF8(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a3 >> 1;
  v5 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v9 = result;
  v28 = MEMORY[0x277D84F90];
  result = sub_25C7CC5DC(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v6 = v28;
    v23 = v9 + 8 * a2;
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if ((a2 + v10) >= v24 || v10 >= v5)
      {
        goto LABEL_21;
      }

      v12 = *(v23 + 8 * v10);
      v13 = *(v12 + 16);

      if (!v13 || (, sub_25C7BB2FC(a4, a5), v15 = v14, , (v15 & 1) == 0))
      {
        sub_25C7B9A14();
        swift_allocError();
        *v22 = 0xD000000000000017;
        *(v22 + 8) = 0x800000025C7CF260;
        *(v22 + 16) = 1;
        swift_willThrow();

        return v6;
      }

      if (*(v12 + 16) && (v16 = sub_25C7BB2FC(a4, a5), (v17 & 1) != 0))
      {
        sub_25C7B9970(*(v12 + 56) + 32 * v16, &v26);
      }

      else
      {

        v26 = 0u;
        v27 = 0u;
      }

      v28 = v6;
      v19 = *(v6 + 16);
      v18 = *(v6 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_25C7CC5DC((v18 > 1), v19 + 1, 1);
        v6 = v28;
      }

      *(v6 + 16) = v19 + 1;
      v20 = v6 + 32 * v19;
      v21 = v27;
      *(v20 + 32) = v26;
      *(v20 + 48) = v21;
      ++v10;
      if (v11 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_23:
  __break(1u);
  return result;
}

unint64_t sub_25C7CD108()
{
  result = qword_27FC159B8;
  if (!qword_27FC159B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FC159B8);
  }

  return result;
}