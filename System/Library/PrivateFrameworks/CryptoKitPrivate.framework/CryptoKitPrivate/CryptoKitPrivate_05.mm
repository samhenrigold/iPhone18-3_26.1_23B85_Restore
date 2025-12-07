void *sub_1C0D3CEA0(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if ((a3 | a2) < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a3 <= 0xFFFFFFFFLL)
  {
    v3 = result;
    v4 = cche_ciphertext_sizeof();
    type metadata accessor for HE.ObjectStorage();
    v5 = swift_allocObject();
    v5[2] = v3;
    v6 = swift_slowAlloc();
    v5[3] = v6;
    v5[4] = v6 + v4;
    return v5;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_1C0D3CF34(char *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (!*(a1 + 2))
  {
    goto LABEL_33;
  }

  v9 = a2;
  v5 = a1;
  v8 = a1 + 32;
  v7 = *(*(a1 + 4) + 16);
  if (a3)
  {
    v9 = cche_param_ctx_ciphertext_ctx_nmoduli();
  }

  v11 = *(a5 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  v27 = v9;
  v28 = v7;
  v25 = v5;
  if (v11)
  {
    v29 = MEMORY[0x1E69E7CC0];

    v6 = &v29;
    sub_1C0CF7C90(0, v11, 0);
    v9 = 32;
    v12 = v29;
    do
    {
      v13 = *(a5 + v9);
      if ((v13 & 0x8000000000000000) != 0)
      {
        goto LABEL_31;
      }

      if (HIDWORD(v13))
      {
        goto LABEL_32;
      }

      v29 = v12;
      v7 = *(v12 + 2);
      v14 = *(v12 + 3);
      v5 = (v7 + 1);
      if (v7 >= v14 >> 1)
      {
        v6 = &v29;
        sub_1C0CF7C90((v14 > 1), v7 + 1, 1);
        v12 = v29;
      }

      *(v12 + 2) = v5;
      *&v12[4 * v7 + 32] = v13;
      v9 += 8;
      --v11;
    }

    while (v11);

    v5 = v25;
    v9 = v27;
    v7 = v28;
    v6 = MEMORY[0x1E69E7CC0];
  }

  else
  {
  }

  v15 = qword_1EBE6CB78;

  if (v15 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v16 = sub_1C0D3CEA0(v7, v9, qword_1EBE72CC0);
    v17 = *(v5 + 2);
    if (v17)
    {
      v29 = v6;

      sub_1C0D78BFC();
      result = sub_1C0CF7CF0(0, v17, 0);
      v6 = v29;
      while (1)
      {
        v19 = *(*v8 + 24);
        if (!v19)
        {
          goto LABEL_38;
        }

        v29 = v6;
        v21 = *(v6 + 2);
        v20 = *(v6 + 3);
        v5 = (v21 + 1);
        if (v21 >= v20 >> 1)
        {
          result = sub_1C0CF7CF0((v20 > 1), v21 + 1, 1);
          v6 = v29;
        }

        *(v6 + 2) = v5;
        *&v6[8 * v21 + 32] = v19;
        v8 += 8;
        if (!--v17)
        {
          v9 = v27;
          v7 = v28;
          if (!v16[3])
          {
            goto LABEL_30;
          }

          goto LABEL_21;
        }
      }
    }

    result = sub_1C0D78BFC();
    if (v16[3])
    {
      break;
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
    swift_once();
  }

LABEL_21:
  if (v9 < 0)
  {
    __break(1u);
    goto LABEL_36;
  }

  v22 = *(v6 + 2);
  if ((v22 | v9) >> 32)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (a4 < 0)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    return result;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C0CF52F4(0, v22, 0, v6);
  }

  v23 = cche_ciphertext_coeff_compose();

  swift_bridgeObjectRelease_n();

  if (v23)
  {
    sub_1C0CF8DE0();
    swift_allocError();
    *v24 = v23;
    *(v24 + 4) = 0;
    swift_willThrow();
  }

  return v16;
}

id sub_1C0D3D2A4(void *a1, char *a2, unint64_t a3, unint64_t a4, void *a5, uint64_t a6, unint64_t a7, void *a8, char a9)
{
  v123 = a8;
  v10 = a6;
  v122 = a5;
  v15 = sub_1C0D786CC();
  v121 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v120 = &v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1C0D19C94(v10, a7, a9);
  v19 = result;
  if (a9)
  {
    v20 = v18;
    a4 = sub_1C0D3E478(a1, a2, a3, a4, v122, v10, a7, v123, 1u);
    sub_1C0CF448C(v19, v20);
    return a4;
  }

  v21 = a1;
  v116 = v15;
  v117 = a2;
  v118 = result;
  v119 = v18;
  if (v10 < 2u)
  {
    v22 = v117;
    a4 = sub_1C0D13834(v123, v117);
    if (v10)
    {
      v115 = v21;
      sub_1C0D7896C();
      sub_1C0D42E90(&qword_1ED9076B0, MEMORY[0x1E69665E8], MEMORY[0x1E69665E0]);
      v23 = v120;
      sub_1C0D786EC();
      v24 = sub_1C0D786BC();
      v25 = v121[1];
      v26 = v116;
      v25(v23, v116);
      v121 = [objc_allocWithZone(MEMORY[0x1E6999648]) initWithGeneratorForCP_];
      sub_1C0D786EC();
      v27 = sub_1C0D786BC();
      v25(v23, v26);
      v28 = [objc_allocWithZone(MEMORY[0x1E6999648]) initWithGeneratorForCP_];
      v29 = v123;
      v30 = sub_1C0D13834(v123, v28);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D6D8, &qword_1C0D7C4B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C0D7B690;
      *(inited + 32) = v22;
      *(inited + 40) = a4;
      v32 = v22;
      a4 = a4;
      v33 = v29;
      v34 = v29;
      v35 = v118;
      v36 = v119;
      v37 = v133;
      sub_1C0D1EAA0(&v124, v34, v30, v118, v119, inited, 0);
      if (v37)
      {
        sub_1C0CF448C(v35, v36);

        return a4;
      }

      v83 = v38;

      v133 = 0;
      v84 = v124;
      v85 = v122;
      v86 = v35;
      v87 = sub_1C0D13834(v122, v121);
      v88 = sub_1C0D13834(v85, v83);
      v120 = v84;
      v117 = v87;
      v123 = v88;
      v89 = v133;
      sub_1C0D1FCCC(v86, v36, v30, v83, v84, v87, v88, 0);
      if (!v89)
      {
        v133 = 0;
        v100 = v90;
        v101 = sub_1C0D30290(v90, v33);
        v102 = sub_1C0D2C114(v85, v101);
        sub_1C0CF448C(v86, v36);

        v103 = v115;
        *v115 = v100;
        v103[1] = v102;
        return a4;
      }

      sub_1C0CF448C(v86, v36);

      v99 = &v134;
LABEL_29:

      return a4;
    }

LABEL_17:
    sub_1C0CF448C(v118, v119);
    *v21 = 0;
    v21[1] = 0;
    return a4;
  }

  if (v10 != 2)
  {
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  result = sub_1C0D07698(1868983881, 0xE400000000000000);
  if (a4 >> 60 == 15)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v40 = result;
  v41 = v39;
  v42 = a4;
  v43 = a4 >> 62;
  v44 = a3;
  v115 = a1;
  if ((a4 >> 62) > 1)
  {
    if (v43 == 2)
    {
      v47 = *(a3 + 16);
      v46 = *(a3 + 24);
      v45 = v46 - v47;
      if (__OFSUB__(v46, v47))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    else
    {
      v45 = 0;
    }
  }

  else if (v43)
  {
    if (__OFSUB__(HIDWORD(a3), a3))
    {
      goto LABEL_32;
    }

    v45 = HIDWORD(a3) - a3;
  }

  else
  {
    v45 = BYTE6(a4);
  }

  v48 = sub_1C0D053E8(v45, 2);
  v50 = v49;
  v128 = v40;
  v129 = v41;
  a4 = MEMORY[0x1E6969080];
  v126 = MEMORY[0x1E6969080];
  v127 = MEMORY[0x1E6969078];
  v124 = v48;
  v125 = v49;
  v51 = __swift_project_boxed_opaque_existential_1(&v124, MEMORY[0x1E6969080]);
  v53 = *v51;
  v52 = v51[1];
  sub_1C0CF6468(v40, v41);
  sub_1C0CF6468(v48, v50);
  v54 = v133;
  sub_1C0D4268C(v53, v52, &v128);
  sub_1C0CF448C(v48, v50);
  sub_1C0CF448C(v40, v41);
  __swift_destroy_boxed_opaque_existential_1(&v124);
  v55 = v128;
  v56 = v129;
  v130 = v128;
  v131 = v129;
  v126 = a4;
  v127 = MEMORY[0x1E6969078];
  v124 = v44;
  v125 = v42;
  v57 = __swift_project_boxed_opaque_existential_1(&v124, a4);
  v58 = *v57;
  v59 = v57[1];
  sub_1C0CF6468(v55, v56);
  sub_1C0D134D0(v44, v42);
  sub_1C0D4268C(v58, v59, &v130);
  sub_1C0CF448C(v55, v56);
  __swift_destroy_boxed_opaque_existential_1(&v124);
  v61 = v130;
  v60 = v131;
  v62 = v118;
  v63 = v119;
  v64 = sub_1C0D0E898(v130, v131, v118, v119);
  if (v54)
  {
    sub_1C0CF448C(v62, v63);
    sub_1C0CF448C(v61, v60);
    return a4;
  }

  v112 = v61;
  v113 = v60;
  v133 = 0;
  v114 = v64;
  v111 = sub_1C0D302E8(v123, v64);
  result = [v111 inverseModOrder];
  if (result)
  {
    v65 = result;
    v66 = v117;
    v110 = sub_1C0D13834(result, v117);

    sub_1C0D7896C();
    sub_1C0D42E90(&qword_1ED9076B0, MEMORY[0x1E69665E8], MEMORY[0x1E69665E0]);
    v67 = v120;
    sub_1C0D786EC();
    v68 = sub_1C0D786BC();
    v69 = v121[1];
    v70 = v116;
    v69(v67, v116);
    v123 = [objc_allocWithZone(MEMORY[0x1E6999648]) initWithGeneratorForCP_];
    sub_1C0D786EC();
    v71 = sub_1C0D786BC();
    v69(v67, v70);
    v72 = [objc_allocWithZone(MEMORY[0x1E6999648]) initWithGeneratorForCP_];
    v73 = v111;
    v74 = sub_1C0D13834(v111, v72);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D6D8, &qword_1C0D7C4B0);
    v75 = swift_initStackObject();
    *(v75 + 16) = xmmword_1C0D7B690;
    v76 = v110;
    *(v75 + 32) = v110;
    *(v75 + 40) = v66;
    v77 = v66;
    a4 = v76;
    v78 = v73;
    v121 = v74;
    v79 = v118;
    v80 = v119;
    v81 = v133;
    sub_1C0D1EAA0(&v124, v73, v74, v118, v119, v75, 0);
    if (!v81)
    {
      v91 = v82;

      v92 = v124;
      v93 = v122;
      v94 = v79;
      v95 = sub_1C0D13834(v122, v123);
      v96 = sub_1C0D13834(v93, v91);
      v117 = v92;
      v97 = v92;
      v98 = v95;
      v120 = v96;
      sub_1C0D1FCCC(v94, v80, v121, v91, v97, v95, v96, 0);
      v105 = v104;
      v106 = sub_1C0D30290(v104, v78);
      v133 = 0;
      v107 = v106;
      v108 = sub_1C0D2C114(v93, v106);
      sub_1C0CF448C(v94, v119);
      sub_1C0CF448C(v112, v113);

      v109 = v115;
      *v115 = v105;
      v109[1] = v108;
      return a4;
    }

    sub_1C0CF448C(v79, v80);
    sub_1C0CF448C(v112, v113);

    v99 = &v132;
    goto LABEL_29;
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1C0D3DDA4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unsigned int a7, unint64_t a8, void *a9, unsigned __int8 a10)
{
  v76 = a5;
  v77 = a6;
  v67 = a3;
  v68 = a4;
  v75 = a2;
  v84 = a1;
  v63 = sub_1C0D789FC();
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v61 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C0D7866C();
  v65 = *(v13 - 8);
  v66 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v64 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1C0D786CC();
  v15 = *(v74 - 1);
  MEMORY[0x1EEE9AC00](v74);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C0D78AEC();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0D78ABC();
  v22 = sub_1C0D78AAC();
  v24 = v23;
  (*(v19 + 8))(v21, v18);
  if (v24 >> 60 == 15)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v69 = a10;
  v71 = a7;
  v72 = a8;
  v25 = sub_1C0D19C94(a7, a8, a10 & 1);
  v27 = v26;
  v82 = v22;
  v83 = v24;
  v80 = MEMORY[0x1E6969080];
  v81 = MEMORY[0x1E6969078];
  v78 = v25;
  v79 = v26;
  v28 = __swift_project_boxed_opaque_existential_1(&v78, MEMORY[0x1E6969080]);
  v29 = *v28;
  v30 = v28[1];
  sub_1C0D134D0(v22, v24);
  sub_1C0CF6468(v25, v27);
  v31 = v73;
  sub_1C0D4268C(v29, v30, &v82);
  sub_1C0CF448C(v25, v27);
  sub_1C0D13830(v22, v24);
  __swift_destroy_boxed_opaque_existential_1(&v78);
  v33 = v82;
  v32 = v83;
  v34 = v75;
  sub_1C0D3F7B4(v84, v75, v82, v83);
  if (!v31)
  {
    v36 = v35;
    v70 = v33;
    v73 = v32;
    sub_1C0D7896C();
    sub_1C0D42E90(&qword_1ED9076B0, MEMORY[0x1E69665E8], MEMORY[0x1E69665E0]);
    sub_1C0D786EC();
    v37 = sub_1C0D786BC();
    (*(v15 + 8))(v17, v74);
    v38 = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
    v40 = v76;
    v39 = v77;
    if (v38)
    {
      v41 = v38;
      v42 = v69 & 1;
      v43 = v36;
      v44 = v71;
      v74 = v36;
      v45 = v72;
      v46 = sub_1C0D3D2A4(&v78, v43, v76, v77, v38, v71, v72, a9, v69 & 1);

      sub_1C0D42DFC(v78, v79);
      v47 = sub_1C0D19EF0(v84, v34, v40, v39, v46, v45, v44, v42);
      v49 = v48;
      sub_1C0D42E90(&qword_1ED9076A8, MEMORY[0x1E6966630], MEMORY[0x1E6966628]);
      v50 = v61;
      v51 = v63;
      sub_1C0D7863C();
      sub_1C0CF6468(v47, v49);
      sub_1C0D208E4(v47, v49, v50);
      sub_1C0CF448C(v47, v49);
      v52 = v46;
      v53 = v64;
      sub_1C0D7862C();
      sub_1C0CF448C(v47, v49);
      (*(v62 + 8))(v50, v51);
      v54 = v66;
      v80 = v66;
      v81 = sub_1C0D42E90(&qword_1ED9076C0, MEMORY[0x1E6966408], MEMORY[0x1E69663F8]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v78);
      v56 = v65;
      (*(v65 + 16))(boxed_opaque_existential_1, v53, v54);
      __swift_project_boxed_opaque_existential_1(&v78, v80);
      sub_1C0D7819C();
      (*(v56 + 8))(v53, v54);
      v57 = v82;
      v58 = v83;
      __swift_destroy_boxed_opaque_existential_1(&v78);
      LOBYTE(v41) = sub_1C0D04660(v67, v68, v57, v58);
      sub_1C0CF448C(v57, v58);
      sub_1C0CF448C(v70, v73);

      return v41 & 1;
    }

    goto LABEL_6;
  }

LABEL_7:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1C0D3E478(void *a1, void *a2, unint64_t a3, unint64_t a4, void *a5, int a6, unint64_t a7, void *a8, unsigned __int8 a9)
{
  v105 = a8;
  v98 = a5;
  v108 = a4;
  v119 = a3;
  v106 = a2;
  v12 = a6;
  v13 = sub_1C0D786CC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v103 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C0D78AEC();
  v17 = *(v16 - 8);
  result = MEMORY[0x1EEE9AC00](v16);
  v20 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v12 > 1)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v100 = v14;
  v101 = v13;
  v99 = a1;
  LODWORD(v102) = a9;
  LODWORD(v104) = a6;
  v21 = sub_1C0D19C94(a6, a7, a9 & 1);
  v23 = v22;
  sub_1C0D78ABC();
  v24 = sub_1C0D78AAC();
  v26 = v25;
  result = (*(v17 + 8))(v20, v16);
  if (v26 >> 60 == 15)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v117 = v24;
  v118 = v26;
  v115 = MEMORY[0x1E6969080];
  v116 = MEMORY[0x1E6969078];
  v113 = v21;
  v114 = v23;
  v27 = MEMORY[0x1E6969080];
  v28 = __swift_project_boxed_opaque_existential_1(&v113, MEMORY[0x1E6969080]);
  v29 = *v28;
  v30 = v28[1];
  sub_1C0D134D0(v24, v26);
  v109 = v23;
  v110 = v21;
  sub_1C0CF6468(v21, v23);
  v31 = v107;
  sub_1C0D4268C(v29, v30, &v117);
  v107 = v31;
  sub_1C0D13830(v24, v26);
  result = __swift_destroy_boxed_opaque_existential_1(&v113);
  v33 = v117;
  v32 = v118;
  v34 = v108;
  if (v108 >> 60 != 15)
  {
    v35 = v108 >> 62;
    if ((v108 >> 62) > 1)
    {
      if (v35 != 2)
      {
        result = 0;
        goto LABEL_16;
      }

      v37 = *(v119 + 16);
      v36 = *(v119 + 24);
      result = v36 - v37;
      if (!__OFSUB__(v36, v37))
      {
        goto LABEL_14;
      }

      __break(1u);
    }

    else if (!v35)
    {
      result = BYTE6(v108);
      goto LABEL_16;
    }

    if (!__OFSUB__(HIDWORD(v119), v119))
    {
      result = HIDWORD(v119) - v119;
LABEL_14:
      v34 = v108;
      goto LABEL_16;
    }

    goto LABEL_26;
  }

  v119 = 0;
  result = 0;
  v34 = 0xC000000000000000;
LABEL_16:
  v38 = sub_1C0D053E8(result, 2);
  v40 = v39;
  v111 = v33;
  v112 = v32;
  v115 = v27;
  v41 = MEMORY[0x1E6969078];
  v116 = MEMORY[0x1E6969078];
  v113 = v38;
  v114 = v39;
  v42 = __swift_project_boxed_opaque_existential_1(&v113, v27);
  v43 = *v42;
  v44 = v42[1];
  sub_1C0CF6468(v33, v32);
  sub_1C0CF6468(v38, v40);
  v45 = v107;
  sub_1C0D4268C(v43, v44, &v111);
  sub_1C0CF448C(v38, v40);
  __swift_destroy_boxed_opaque_existential_1(&v113);
  v46 = v111;
  v47 = v112;
  v117 = v111;
  v118 = v112;
  v115 = v27;
  v116 = v41;
  v48 = v119;
  v113 = v119;
  v114 = v34;
  v49 = __swift_project_boxed_opaque_existential_1(&v113, v27);
  v50 = *v49;
  v51 = v49[1];
  sub_1C0CF6468(v46, v47);
  sub_1C0CF6468(v48, v34);
  sub_1C0D4268C(v50, v51, &v117);
  sub_1C0CF448C(v46, v47);
  __swift_destroy_boxed_opaque_existential_1(&v113);
  v52 = v117;
  v53 = v118;
  v54 = v109;
  v55 = v110;
  v56 = sub_1C0D0E898(v117, v118, v110, v109);
  if (v45)
  {
    sub_1C0CF448C(v52, v53);
    sub_1C0CF448C(v33, v32);
    sub_1C0CF448C(v55, v54);
    return v33;
  }

  v57 = v56;
  v107 = v53;
  v108 = v33;
  v119 = v32;
  v105 = sub_1C0D302E8(v105, v56);
  result = [v105 inverseModOrder];
  if (result)
  {
    v58 = result;
    v59 = v104;
    v33 = sub_1C0D13834(result, v106);

    if (v59)
    {
      v96 = v57;
      sub_1C0D7896C();
      sub_1C0D42E90(&qword_1ED9076B0, MEMORY[0x1E69665E8], MEMORY[0x1E69665E0]);
      v60 = v103;
      sub_1C0D786EC();
      v61 = sub_1C0D786BC();
      v97 = 0;
      v62 = v100[1];
      v100 = v33;
      v63 = v101;
      v62(v60, v101);
      v104 = [objc_allocWithZone(MEMORY[0x1E6999648]) initWithGeneratorForCP_];
      sub_1C0D786EC();
      v64 = sub_1C0D786BC();
      v62(v60, v63);
      v65 = objc_allocWithZone(MEMORY[0x1E6999648]);
      v66 = v109;
      v67 = [v65 initWithGeneratorForCP_];
      v68 = v105;
      v69 = sub_1C0D13834(v105, v67);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D6D8, &qword_1C0D7C4B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C0D7B690;
      v71 = v100;
      v72 = v106;
      *(inited + 32) = v100;
      *(inited + 40) = v72;
      v103 = v71;
      v73 = v72;
      v74 = v68;
      v75 = v102;
      v76 = v97;
      sub_1C0D1EAA0(&v113, v68, v69, v110, v66, inited, v102 & 1);
      if (v76)
      {
        sub_1C0CF448C(v52, v107);

        v33 = v66;

        sub_1C0CF448C(v110, v66);
        sub_1C0CF448C(v108, v119);
      }

      else
      {
        v79 = v77;

        v80 = v113;
        v81 = v98;
        v82 = sub_1C0D13834(v98, v104);
        v83 = sub_1C0D13834(v81, v79);
        v84 = v75 & 1;
        v85 = v109;
        v86 = v69;
        v105 = v82;
        v106 = v80;
        v87 = v80;
        v88 = v83;
        sub_1C0D1FCCC(v110, v109, v69, v79, v87, v82, v83, v84);
        v89 = v96;
        v102 = v90;
        v91 = sub_1C0D30290(v90, v74);
        v103 = v88;
        v92 = v91;
        v93 = sub_1C0D2C114(v98, v91);
        sub_1C0CF448C(v52, v107);

        sub_1C0CF448C(v110, v85);
        sub_1C0CF448C(v108, v119);

        v94 = v99;
        *v99 = v102;
        v94[1] = v93;
        return v100;
      }
    }

    else
    {
      sub_1C0CF448C(v52, v107);
      sub_1C0CF448C(v108, v119);
      sub_1C0CF448C(v55, v54);

      v78 = v99;
      *v99 = 0;
      v78[1] = 0;
    }

    return v33;
  }

LABEL_28:
  __break(1u);
  return result;
}

unint64_t sub_1C0D3ECE4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7)
{
  v8 = v7;
  v44 = a7;
  v47 = *MEMORY[0x1E69E9840];
  v43 = sub_1C0D786CC();
  v15 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v42 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 < 1)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if ((a3 * a6) >> 64 != (a3 * a6) >> 63)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v17 = sub_1C0D416D0(a1, a2, a4, a5, a3 * a6, MEMORY[0x1E6966620], MEMORY[0x1E69663E0], &qword_1EBE6DCB0, MEMORY[0x1E69663E0], MEMORY[0x1E69663D8], qword_1EBE6C9D8, MEMORY[0x1E6966620], MEMORY[0x1E6966618], sub_1C0D3C2C8, qword_1EBE6D7B8, MEMORY[0x1E69663D0]);
  if (v7)
  {
    return v8;
  }

  v39[1] = 0;
  v19 = v18;
  v40 = a3;
  v20 = v17;
  v21 = sub_1C0D78DEC();
  v22 = v20;
  v23 = v19;
  v8 = v21;
  v24 = 0;
  v46 = v21;
  v41 = (v15 + 8);
  do
  {
    v25 = v24 * a6;
    if ((v24 * a6) >> 64 != (v24 * a6) >> 63)
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if (__OFADD__(v25, a6))
    {
      goto LABEL_18;
    }

    if (v25 + a6 < v25)
    {
      goto LABEL_19;
    }

    v39[2] = v8;
    v26 = v22;
    v27 = v23;
    v28 = sub_1C0D7835C();
    v8 = v29;
    v45 = 0;
    sub_1C0D7884C();
    sub_1C0CF6468(v28, v8);
    sub_1C0CF6468(v28, v8);
    sub_1C0D42E90(&qword_1EBE6D428, MEMORY[0x1E6966580], MEMORY[0x1E6966578]);
    v30 = v42;
    sub_1C0D786EC();
    v31 = sub_1C0D786BC();
    (*v41)(v30, v43);
    v32 = objc_allocWithZone(MEMORY[0x1E6999650]);
    v33 = sub_1C0D7830C();
    v34 = [v32 initWithData:v33 inGroup:v31 reduction:v44 & 1 corecryptoError:&v45];

    sub_1C0CF448C(v28, v8);
    v35 = sub_1C0CF448C(v28, v8);
    if (!v34)
    {
      v36 = v45;
      sub_1C0CF8DE0();
      swift_allocError();
      *v37 = v36;
      *(v37 + 4) = 0;
      swift_willThrow();
      sub_1C0CF448C(v26, v27);
      sub_1C0CF448C(v28, v8);

      return v8;
    }

    MEMORY[0x1C68E3BD0](v35);
    if (*(v46 + 16) >= *(v46 + 24) >> 1)
    {
      sub_1C0D78C0C();
    }

    ++v24;
    sub_1C0D78C3C();
    sub_1C0CF448C(v28, v8);
    v8 = v46;
    v23 = v27;
    v22 = v26;
  }

  while (v40 != v24);
  sub_1C0CF448C(v26, v27);
  if (*(v8 + 16) != v40)
  {
LABEL_22:
    __break(1u);
  }

  return v8;
}

unint64_t sub_1C0D3F16C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7)
{
  v8 = v7;
  v44 = a7;
  v47 = *MEMORY[0x1E69E9840];
  v43 = sub_1C0D786CC();
  v15 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v42 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 < 1)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if ((a3 * a6) >> 64 != (a3 * a6) >> 63)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v17 = sub_1C0D416D0(a1, a2, a4, a5, a3 * a6, MEMORY[0x1E6966630], MEMORY[0x1E6966408], &qword_1ED9076B8, MEMORY[0x1E6966408], MEMORY[0x1E6966400], &qword_1ED9076A8, MEMORY[0x1E6966630], MEMORY[0x1E6966628], sub_1C0D208E4, &qword_1ED9076C0, MEMORY[0x1E69663F8]);
  if (v7)
  {
    return v8;
  }

  v39[1] = 0;
  v19 = v18;
  v40 = a3;
  v20 = v17;
  v21 = sub_1C0D78DEC();
  v22 = v20;
  v23 = v19;
  v8 = v21;
  v24 = 0;
  v46 = v21;
  v41 = (v15 + 8);
  do
  {
    v25 = v24 * a6;
    if ((v24 * a6) >> 64 != (v24 * a6) >> 63)
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if (__OFADD__(v25, a6))
    {
      goto LABEL_18;
    }

    if (v25 + a6 < v25)
    {
      goto LABEL_19;
    }

    v39[2] = v8;
    v26 = v22;
    v27 = v23;
    v28 = sub_1C0D7835C();
    v8 = v29;
    v45 = 0;
    sub_1C0D7896C();
    sub_1C0CF6468(v28, v8);
    sub_1C0CF6468(v28, v8);
    sub_1C0D42E90(&qword_1ED9076B0, MEMORY[0x1E69665E8], MEMORY[0x1E69665E0]);
    v30 = v42;
    sub_1C0D786EC();
    v31 = sub_1C0D786BC();
    (*v41)(v30, v43);
    v32 = objc_allocWithZone(MEMORY[0x1E6999650]);
    v33 = sub_1C0D7830C();
    v34 = [v32 initWithData:v33 inGroup:v31 reduction:v44 & 1 corecryptoError:&v45];

    sub_1C0CF448C(v28, v8);
    v35 = sub_1C0CF448C(v28, v8);
    if (!v34)
    {
      v36 = v45;
      sub_1C0CF8DE0();
      swift_allocError();
      *v37 = v36;
      *(v37 + 4) = 0;
      swift_willThrow();
      sub_1C0CF448C(v26, v27);
      sub_1C0CF448C(v28, v8);

      return v8;
    }

    MEMORY[0x1C68E3BD0](v35);
    if (*(v46 + 16) >= *(v46 + 24) >> 1)
    {
      sub_1C0D78C0C();
    }

    ++v24;
    sub_1C0D78C3C();
    sub_1C0CF448C(v28, v8);
    v8 = v46;
    v23 = v27;
    v22 = v26;
  }

  while (v40 != v24);
  sub_1C0CF448C(v26, v27);
  if (*(v8 + 16) != v40)
  {
LABEL_22:
    __break(1u);
  }

  return v8;
}

void sub_1C0D3F5F4(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v9)
    {
      v10 = BYTE6(a4);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v9 != 2)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v12 = *(a3 + 16);
  v11 = *(a3 + 24);
  v13 = __OFSUB__(v11, v12);
  v10 = v11 - v12;
  if (v13)
  {
    __break(1u);
LABEL_8:
    LODWORD(v10) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v10 = v10;
  }

LABEL_10:
  if (v10 < 1)
  {
    goto LABEL_23;
  }

  sub_1C0D7884C();
  sub_1C0D42E90(&qword_1EBE6D428, MEMORY[0x1E6966580], MEMORY[0x1E6966578]);
  v14 = sub_1C0D786DC();
  v15 = sub_1C0D3ECE4(a1, a2, 2, a3, a4, v14, 1);
  if (v4)
  {
    return;
  }

  v16 = v15;
  v17 = *(v15 + 16);
  if (!v17)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v18 = *(v15 + 32);
  v19 = [v18 mapToCurve_SSWU_RandomOracle];
  if (!v19)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v20 = v19;

  if (v17 > *(v16 + 16))
  {
    goto LABEL_19;
  }

  v21 = *(v16 + 32 + 8 * v17 - 8);

  v22 = [v21 mapToCurve_SSWU_RandomOracle];
  if (!v22)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v23 = v22;

  sub_1C0D1388C(v20, v23);
}

void sub_1C0D3F7B4(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v9)
    {
      v10 = BYTE6(a4);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v9 != 2)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v12 = *(a3 + 16);
  v11 = *(a3 + 24);
  v13 = __OFSUB__(v11, v12);
  v10 = v11 - v12;
  if (v13)
  {
    __break(1u);
LABEL_8:
    LODWORD(v10) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v10 = v10;
  }

LABEL_10:
  if (v10 < 1)
  {
    goto LABEL_23;
  }

  sub_1C0D7896C();
  sub_1C0D42E90(&qword_1ED9076B0, MEMORY[0x1E69665E8], MEMORY[0x1E69665E0]);
  v14 = sub_1C0D786DC();
  v15 = sub_1C0D3F16C(a1, a2, 2, a3, a4, v14, 1);
  if (v4)
  {
    return;
  }

  v16 = v15;
  v17 = *(v15 + 16);
  if (!v17)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v18 = *(v15 + 32);
  v19 = [v18 mapToCurve_SSWU_RandomOracle];
  if (!v19)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v20 = v19;

  if (v17 > *(v16 + 16))
  {
    goto LABEL_19;
  }

  v21 = *(v16 + 32 + 8 * v17 - 8);

  v22 = [v21 mapToCurve_SSWU_RandomOracle];
  if (!v22)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v23 = v22;

  sub_1C0D1388C(v20, v23);
}

id TDMClient.__allocating_init(TID:)(unint64_t a1, unint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_1C0D42990(a1, a2);
  sub_1C0CF448C(a1, a2);
  return v6;
}

id TDMClient.init(TID:)(unint64_t a1, unint64_t a2)
{
  v4 = sub_1C0D42990(a1, a2);
  sub_1C0CF448C(a1, a2);
  return v4;
}

id sub_1C0D3FA78()
{
  result = [*(v0 + OBJC_IVAR____TtC16CryptoKitPrivate9TDMClient_be) serializedPublicKey_];
  if (result)
  {
    v2 = result;
    v3 = sub_1C0D7832C();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1C0D3FB88(void *a1, unint64_t a2, uint64_t a3, unint64_t a4, void *a5, void (*a6)(char *, uint64_t), uint64_t a7, unint64_t a8)
{
  v88 = a7;
  v89 = a8;
  v86 = a3;
  v87 = a4;
  v97 = *MEMORY[0x1E69E9840];
  v14 = sub_1C0D786CC();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a6 >> 62;
  v85 = a1;
  if ((a6 >> 62) > 1)
  {
    v20 = v16;
    v21 = 0;
    if (v19 != 2)
    {
      goto LABEL_10;
    }

    v23 = a5[2];
    v22 = a5[3];
    v21 = v22 - v23;
    if (!__OFSUB__(v22, v23))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v19)
  {
    v20 = v16;
    v21 = BYTE6(a6);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(a5), a5))
  {
    goto LABEL_33;
  }

  v20 = v16;
  v21 = HIDWORD(a5) - a5;
LABEL_10:
  v83 = a2;
  v84 = v9;
  v91 = a5;
  v93 = a6;
  v82 = v8;
  v24 = objc_opt_self();
  sub_1C0D7896C();
  v25 = sub_1C0D42E90(&qword_1ED9076B0, MEMORY[0x1E69665E8], MEMORY[0x1E69665E0]);
  sub_1C0D786EC();
  v26 = sub_1C0D786BC();
  v27 = *(v15 + 8);
  v28 = (v15 + 8);
  v29 = v27;
  v27(v18, v20);
  v92 = v24;
  v30 = [v24 groupOrderByteCountForCP_];
  if (v30 < 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v30 + 0x4000000000000000 < 0)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  if (v21 != 2 * v30)
  {
    sub_1C0D20BA4();
    swift_allocError();
    *v69 = 1;
    swift_willThrow();
    return v18;
  }

  v31 = v91;
  sub_1C0CF6468(v91, v93);
  sub_1C0D786EC();
  v32 = sub_1C0D786BC();
  v33 = v20;
  v29(v18, v20);
  v34 = [v92 groupOrderByteCountForCP_];
  if (v34 < 0)
  {
    goto LABEL_31;
  }

  sub_1C0D01560(v34, v31, v93, &v95);
  v36 = v95;
  v35 = v96;
  v94 = 0;
  sub_1C0CF6468(v95, v96);
  v81[1] = v25;
  sub_1C0D786EC();
  v37 = sub_1C0D786BC();
  v29(v18, v33);
  v38 = objc_allocWithZone(MEMORY[0x1E6999650]);
  v90 = v33;
  v39 = v38;
  v40 = sub_1C0D7830C();
  v41 = [v39 initWithData:v40 inGroup:v37 reduction:0 corecryptoError:&v94];

  sub_1C0CF448C(v36, v35);
  if (!v41)
  {
    v70 = v94;
    sub_1C0CF8DE0();
    swift_allocError();
    *v71 = v70;
    *(v71 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v36, v35);
    return v18;
  }

  v81[0] = v41;
  sub_1C0CF448C(v36, v35);
  v42 = v91;
  v43 = v93;
  sub_1C0CF6468(v91, v93);
  sub_1C0D786EC();
  v44 = sub_1C0D786BC();
  v29(v18, v90);
  v45 = [v92 groupOrderByteCountForCP_];
  v92 = v28;
  if (v45 < 0)
  {
    goto LABEL_32;
  }

  sub_1C0D403E4(v45, v42, v43, &v95);
  v46 = v95;
  v47 = v96;
  v94 = 0;
  sub_1C0CF6468(v95, v96);
  sub_1C0D786EC();
  v48 = sub_1C0D786BC();
  v29(v18, v90);
  v49 = objc_allocWithZone(MEMORY[0x1E6999650]);
  v50 = sub_1C0D7830C();
  v93 = v29;
  v51 = v50;
  v52 = [v49 initWithData:v50 inGroup:v48 reduction:0 corecryptoError:&v94];

  sub_1C0CF448C(v46, v47);
  if (!v52)
  {
    v72 = v94;
    sub_1C0CF8DE0();
    swift_allocError();
    *v73 = v72;
    *(v73 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v46, v47);

    return v18;
  }

  sub_1C0CF448C(v46, v47);
  LODWORD(v95) = 0;
  v53 = v88;
  v54 = v89;
  sub_1C0CF6468(v88, v89);
  sub_1C0CF6468(v53, v54);
  v91 = v81[0];
  v55 = v52;
  sub_1C0D786EC();
  v56 = sub_1C0D786BC();
  v93(v18, v90);
  v57 = objc_allocWithZone(MEMORY[0x1E6999648]);
  v58 = sub_1C0D7830C();
  v59 = [v57 initFromPublicKeyBytes:v58 inGroup:v56 compressed:1 corecryptoError:&v95];

  sub_1C0CF448C(v53, v54);
  v81[0] = v59;
  if (!v59)
  {
    v74 = v95;
    sub_1C0CF8DE0();
    swift_allocError();
    *v75 = v74;
    *(v75 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v53, v54);

    v76 = v91;
LABEL_27:

    return v18;
  }

  sub_1C0CF448C(v53, v54);
  LODWORD(v95) = 0;
  v61 = v86;
  v60 = v87;
  sub_1C0CF6468(v86, v87);
  sub_1C0CF6468(v61, v60);
  sub_1C0D786EC();
  v62 = sub_1C0D786BC();
  v93(v18, v90);
  v63 = objc_allocWithZone(MEMORY[0x1E6999648]);
  v18 = sub_1C0D7830C();
  v64 = [v63 initFromPublicKeyBytes:v18 inGroup:v62 compressed:1 corecryptoError:&v95];

  sub_1C0CF448C(v61, v60);
  if (!v64)
  {
    v77 = v95;
    sub_1C0CF8DE0();
    swift_allocError();
    *v78 = v77;
    *(v78 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v61, v60);
    v79 = v91;

    goto LABEL_27;
  }

  sub_1C0CF448C(v61, v60);
  v65 = v91;

  v66 = v81[0];
  v67 = v84;
  sub_1C0D1BA14(*(v82 + OBJC_IVAR____TtC16CryptoKitPrivate9TDMClient_input), *(v82 + OBJC_IVAR____TtC16CryptoKitPrivate9TDMClient_input + 8), v85, v83, *(v82 + OBJC_IVAR____TtC16CryptoKitPrivate9TDMClient_blind), v64, v65, v55, v81[0], *(v82 + OBJC_IVAR____TtC16CryptoKitPrivate9TDMClient_oprfClient), *(v82 + OBJC_IVAR____TtC16CryptoKitPrivate9TDMClient_oprfClient + 8), *(v82 + OBJC_IVAR____TtC16CryptoKitPrivate9TDMClient_oprfClient + 16));
  if (!v67)
  {
    v18 = v68;
  }

  return v18;
}

uint64_t sub_1C0D403E4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v5 = a2;
  v7 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v7 == 2)
    {
      a2 = *(a2 + 16);
      v8 = *(v5 + 24);
    }

    else
    {
      a2 = 0;
      v8 = 0;
    }
  }

  else
  {
    if (v7)
    {
      a2 = a2;
    }

    else
    {
      a2 = 0;
    }

    if (v7)
    {
      v8 = v5 >> 32;
    }

    else
    {
      v8 = BYTE6(a3);
    }
  }

  v9 = -result;
  v10 = sub_1C0D428BC(v8, a2, v5, a3);
  if (v10 > 0 || v10 <= v9)
  {
    result = sub_1C0D42858(v8, v9, v5, a3);
    if (v7 <= 1)
    {
      if (!v7)
      {
        v11 = BYTE6(a3);
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (v7 == 3)
    {
      v11 = 0;
      goto LABEL_27;
    }

LABEL_24:
    v11 = *(v5 + 24);
    goto LABEL_27;
  }

  if (v7 > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_28;
    }

    result = *(v5 + 16);
    goto LABEL_24;
  }

  if (!v7)
  {
    result = 0;
    v11 = BYTE6(a3);
    goto LABEL_27;
  }

  result = v5;
LABEL_26:
  v11 = v5 >> 32;
LABEL_27:
  if (v11 >= result)
  {
LABEL_28:
    v12 = sub_1C0D782DC();
    v14 = v13;
    result = sub_1C0CF448C(v5, a3);
    *a4 = v12;
    a4[1] = v14;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t TDMServerEvaluation.proof.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16CryptoKitPrivate19TDMServerEvaluation_proof);
  sub_1C0CF6468(v1, *(v0 + OBJC_IVAR____TtC16CryptoKitPrivate19TDMServerEvaluation_proof + 8));
  return v1;
}

id sub_1C0D40838(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];
  sub_1C0CF6468(*v3, v5);
  v6 = sub_1C0D7830C();
  sub_1C0CF448C(v4, v5);

  return v6;
}

uint64_t TDMServerEvaluation.evaluatedElement.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16CryptoKitPrivate19TDMServerEvaluation_evaluatedElement);
  sub_1C0CF6468(v1, *(v0 + OBJC_IVAR____TtC16CryptoKitPrivate19TDMServerEvaluation_evaluatedElement + 8));
  return v1;
}

id TDMServerEvaluation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TDMServer.init()()
{
  v1 = v0;
  v2 = sub_1C0D786CC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0D7896C();
  sub_1C0D42E90(&qword_1ED9076B0, MEMORY[0x1E69665E8], MEMORY[0x1E69665E0]);
  sub_1C0D786EC();
  v6 = sub_1C0D786BC();
  (*(v3 + 8))(v5, v2);
  result = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (result)
  {
    v8 = result;
    *&v1[OBJC_IVAR____TtC16CryptoKitPrivate9TDMServer_secret] = result;
    v9 = &v1[OBJC_IVAR____TtC16CryptoKitPrivate9TDMServer_oprfServer];
    *v9 = 1;
    *(v9 + 1) = 4;
    *(v9 + 2) = result;
    v9[24] = 1;
    v10 = type metadata accessor for TDMServer();
    v12.receiver = v1;
    v12.super_class = v10;
    v11 = v8;
    return objc_msgSendSuper2(&v12, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1C0D40BA0()
{
  v1 = sub_1C0D786CC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC16CryptoKitPrivate9TDMServer_oprfServer + 16);
  sub_1C0D7896C();
  sub_1C0D42E90(&qword_1ED9076B0, MEMORY[0x1E69665E8], MEMORY[0x1E69665E0]);
  sub_1C0D786EC();
  v6 = sub_1C0D786BC();
  (*(v2 + 8))(v4, v1);
  v7 = [objc_allocWithZone(MEMORY[0x1E6999648]) initWithGeneratorForCP_];
  v8 = sub_1C0D13834(v5, v7);

  result = [v8 serializedPublicKey_];
  if (result)
  {
    v10 = result;
    v11 = sub_1C0D7832C();

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0D40E0C(uint64_t a1, unint64_t a2)
{
  v67 = *MEMORY[0x1E69E9840];
  v4 = sub_1C0D786CC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = 0;
  sub_1C0D7896C();
  sub_1C0CF6468(a1, a2);
  sub_1C0CF6468(a1, a2);
  v56 = sub_1C0D42E90(&qword_1ED9076B0, MEMORY[0x1E69665E8], MEMORY[0x1E69665E0]);
  sub_1C0D786EC();
  v8 = sub_1C0D786BC();
  v9 = *(v5 + 8);
  v58 = v4;
  v9(v7, v4);
  v10 = objc_allocWithZone(MEMORY[0x1E6999648]);
  v11 = sub_1C0D7830C();
  v12 = [v10 initFromPublicKeyBytes:v11 inGroup:v8 compressed:1 corecryptoError:&v60];

  sub_1C0CF448C(a1, a2);
  if (!v12)
  {
    v16 = v60;
    sub_1C0CF8DE0();
    swift_allocError();
    *v22 = v16;
    *(v22 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(a1, a2);
    return v16;
  }

  v55 = v12;
  sub_1C0CF448C(a1, a2);
  v13 = &v57[OBJC_IVAR____TtC16CryptoKitPrivate9TDMServer_oprfServer];
  v14 = v57[OBJC_IVAR____TtC16CryptoKitPrivate9TDMServer_oprfServer];
  v15 = *&v57[OBJC_IVAR____TtC16CryptoKitPrivate9TDMServer_oprfServer + 8];
  v57 = *&v57[OBJC_IVAR____TtC16CryptoKitPrivate9TDMServer_oprfServer + 16];
  v16 = v13[24];
  sub_1C0D786EC();
  v17 = sub_1C0D786BC();
  v9(v7, v58);
  v18 = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (!v18)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v18;
  if (!((v14 != 1) | v16 & 1))
  {
    sub_1C0D20BA4();
    swift_allocError();
    *v23 = 2;
    swift_willThrow();

    return v16;
  }

  v51 = v16;
  v20 = v54;
  v16 = v55;
  v21 = sub_1C0D3D2A4(&v61, v55, 0, 0x8000000000000uLL, v18, v14, v15, v57, v51);

  if (v20)
  {

    return v16;
  }

  v25 = v61;
  if (!v61)
  {
    goto LABEL_15;
  }

  v26 = v62;
  v27 = [v61 serializedBigEndianScalar];
  if (!v27)
  {
    goto LABEL_17;
  }

  v28 = v27;
  v29 = sub_1C0D7832C();
  v58 = v30;

  v31 = [v26 serializedBigEndianScalar];
  if (!v31)
  {
    goto LABEL_17;
  }

  v32 = v31;
  v56 = v26;
  v57 = v25;
  v33 = sub_1C0D7832C();
  v35 = v34;

  v36 = v58;
  v65 = v29;
  v66 = v58;
  v63 = MEMORY[0x1E6969080];
  v64 = MEMORY[0x1E6969078];
  v61 = v33;
  v62 = v35;
  v37 = __swift_project_boxed_opaque_existential_1(&v61, MEMORY[0x1E6969080]);
  v38 = *v37;
  v39 = v37[1];
  v54 = v29;
  sub_1C0CF6468(v29, v36);
  sub_1C0CF6468(v33, v35);
  sub_1C0D4268C(v38, v39, &v65);
  __swift_destroy_boxed_opaque_existential_1(&v61);
  v41 = v65;
  v40 = v66;
  v42 = [v21 serializedPublicKey_];
  v53 = v21;
  if (v42)
  {
    v43 = v42;
    v44 = sub_1C0D7832C();
    v46 = v45;

    v47 = type metadata accessor for TDMServerEvaluation();
    v48 = objc_allocWithZone(v47);
    v49 = &v48[OBJC_IVAR____TtC16CryptoKitPrivate19TDMServerEvaluation_proof];
    *v49 = v41;
    v49[1] = v40;
    v50 = &v48[OBJC_IVAR____TtC16CryptoKitPrivate19TDMServerEvaluation_evaluatedElement];
    *v50 = v44;
    v50[1] = v46;
    sub_1C0CF6468(v41, v40);
    sub_1C0CF6468(v44, v46);
    v59.receiver = v48;
    v59.super_class = v47;
    v16 = objc_msgSendSuper2(&v59, sel_init);

    sub_1C0CF448C(v33, v35);
    sub_1C0CF448C(v54, v58);
    sub_1C0CF448C(v44, v46);
    sub_1C0CF448C(v41, v40);
    return v16;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_1C0D78EBC();
  __break(1u);
  return result;
}

id sub_1C0D41648(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1C0D416D0(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t (*a6)(void), uint64_t (*a7)(void), unint64_t *a8, uint64_t (*a9)(uint64_t), uint64_t a10, unint64_t *a11, uint64_t (*a12)(uint64_t), uint64_t a13, void (*a14)(void, void, char *), unint64_t *a15, uint64_t a16)
{
  v165 = a1;
  v173 = *MEMORY[0x1E69E9840];
  v22 = a6(0);
  v162 = *(v22 - 8);
  v163 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v160 = &v141 - v23;
  v24 = a7(0);
  v161 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v158 = &v141 - v25;
  sub_1C0D42E90(a8, a9, a10);
  v159 = v24;
  v147 = sub_1C0D7899C();
  v26 = ceil(a5 / v147);
  if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_56;
  }

  if (v26 <= -9.22337204e18)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v26 >= 9.22337204e18)
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v157 = v26;
  if (v26 <= 255)
  {
    v27 = a4 >> 62;
    *(&v153 + 1) = a9;
    *&v153 = a2;
    if ((a4 >> 62) <= 1)
    {
      if (!v27)
      {
        v28 = BYTE6(a4);
        goto LABEL_16;
      }

LABEL_13:
      if (__OFSUB__(HIDWORD(a3), a3))
      {
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      v28 = HIDWORD(a3) - a3;
      goto LABEL_16;
    }

    if (v27 == 2)
    {
      v30 = *(a3 + 16);
      v29 = *(a3 + 24);
      v28 = v29 - v30;
      if (__OFSUB__(v29, v30))
      {
        __break(1u);
        goto LABEL_13;
      }
    }

    else
    {
      v28 = 0;
    }

LABEL_16:
    v151 = a16;
    v150 = a15;
    v155 = a14;
    v154 = a11;
    v31 = sub_1C0D053E8(v28, 1);
    v33 = v32;
    *&v172 = a3;
    *(&v172 + 1) = a4;
    v170 = MEMORY[0x1E6969080];
    v171 = MEMORY[0x1E6969078];
    *&v169 = v31;
    *(&v169 + 1) = v32;
    v34 = __swift_project_boxed_opaque_existential_1(&v169, MEMORY[0x1E6969080]);
    v36 = *v34;
    v35 = v34[1];
    sub_1C0CF6468(a3, a4);
    sub_1C0CF6468(v31, v33);
    v37 = v164;
    sub_1C0D4268C(v36, v35, &v172);
    sub_1C0CF448C(v31, v33);
    __swift_destroy_boxed_opaque_existential_1(&v169);
    v156 = v172;
    v154 = sub_1C0D42E90(v154, a12, a13);
    v38 = sub_1C0D7860C();
    *&v169 = sub_1C0D0F990(v38);
    *(&v169 + 1) = v39;
    sub_1C0D42424(&v169, 0);
    v40 = v169;
    v146 = a5;
    v41 = sub_1C0D053E8(a5, 2);
    v43 = v42;
    v168 = v40;
    v170 = MEMORY[0x1E6969080];
    v171 = MEMORY[0x1E6969078];
    v44 = v165;
    v45 = v153;
    *&v169 = v165;
    *(&v169 + 1) = v153;
    v46 = __swift_project_boxed_opaque_existential_1(&v169, MEMORY[0x1E6969080]);
    v47 = *v46;
    v48 = v46[1];
    v145 = v40;
    sub_1C0CF6468(v40, *(&v40 + 1));
    sub_1C0CF6468(v44, v45);
    sub_1C0D4268C(v47, v48, &v168);
    __swift_destroy_boxed_opaque_existential_1(&v169);
    v49 = v168;
    v172 = v168;
    v170 = MEMORY[0x1E6969080];
    v50 = MEMORY[0x1E6969078];
    v171 = MEMORY[0x1E6969078];
    *&v169 = v41;
    *(&v169 + 1) = v43;
    v51 = MEMORY[0x1E6969080];
    v52 = __swift_project_boxed_opaque_existential_1(&v169, MEMORY[0x1E6969080]);
    v53 = *v52;
    v54 = v52[1];
    sub_1C0CF6468(v49, *(&v49 + 1));
    v143 = v41;
    v144 = v43;
    sub_1C0CF6468(v41, v43);
    sub_1C0D4268C(v53, v54, &v172);
    sub_1C0CF448C(v49, *(&v49 + 1));
    __swift_destroy_boxed_opaque_existential_1(&v169);
    v55 = v172;
    v56 = sub_1C0D053E8(0, 1);
    v58 = v57;
    v168 = v55;
    v59 = v51;
    v170 = v51;
    v171 = v50;
    v60 = v50;
    *&v169 = v56;
    *(&v169 + 1) = v58;
    v61 = v59;
    v62 = __swift_project_boxed_opaque_existential_1(&v169, v59);
    v64 = *v62;
    v63 = v62[1];
    sub_1C0CF6468(v55, *(&v55 + 1));
    sub_1C0CF6468(v56, v58);
    sub_1C0D4268C(v64, v63, &v168);
    sub_1C0CF448C(v56, v58);
    sub_1C0CF448C(v55, *(&v55 + 1));
    __swift_destroy_boxed_opaque_existential_1(&v169);
    v65 = v168;
    v172 = v168;
    v170 = v61;
    v171 = v60;
    v66 = v156;
    v169 = v156;
    v67 = __swift_project_boxed_opaque_existential_1(&v169, v61);
    v68 = *v67;
    v69 = v67[1];
    sub_1C0CF6468(v65, *(&v65 + 1));
    sub_1C0CF6468(v66, *(&v66 + 1));
    sub_1C0D4268C(v68, v69, &v172);
    sub_1C0CF448C(v65, *(&v65 + 1));
    __swift_destroy_boxed_opaque_existential_1(&v169);
    v70 = v172;
    v71 = v160;
    v72 = v163;
    sub_1C0D7863C();
    sub_1C0CF6468(v70, *(&v70 + 1));
    v155(v70, *(&v70 + 1), v71);
    v142 = v70;
    sub_1C0CF448C(v70, *(&v70 + 1));
    v73 = v158;
    sub_1C0D7862C();
    v74 = *(v162 + 8);
    v162 += 8;
    v152 = v74;
    v74(v71, v72);
    v75 = v159;
    v170 = v159;
    v76 = sub_1C0D42E90(v150, *(&v153 + 1), v151);
    v171 = v76;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v169);
    v78 = v161;
    v79 = *(v161 + 16);
    v150 = (v161 + 16);
    v149 = v79;
    v79(boxed_opaque_existential_1, v73, v75);
    __swift_project_boxed_opaque_existential_1(&v169, v170);
    v151 = v76;
    sub_1C0D7819C();
    v80 = v37;
    v81 = *(v78 + 8);
    v161 = v78 + 8;
    v148 = v81;
    v81(v73, v75);
    v153 = v172;
    __swift_destroy_boxed_opaque_existential_1(&v169);
    v172 = xmmword_1C0D7BAB0;
    if (v157 >= 1)
    {
      v141 = *(&v70 + 1);
      v82 = 1;
      while (1)
      {
        if (v82 == 1)
        {
          v83 = *(&v153 + 1);
          v84 = v153;
          sub_1C0CF6468(v153, *(&v153 + 1));
        }

        else
        {
          v85 = v172;
          sub_1C0CF6468(v172, *(&v172 + 1));
          sub_1C0D403E4(v147, v85, *(&v85 + 1), &v169);
          v86 = v169;
          v84 = sub_1C0D732F0(v153, *(&v153 + 1), v169, *(&v169 + 1));
          v83 = v87;
          sub_1C0CF448C(v86, *(&v86 + 1));
        }

        v88 = sub_1C0D053E8(v82, 1);
        v90 = v89;
        *&v167 = v84;
        *(&v167 + 1) = v83;
        v91 = MEMORY[0x1E6969080];
        v170 = MEMORY[0x1E6969080];
        v92 = MEMORY[0x1E6969078];
        v171 = MEMORY[0x1E6969078];
        *&v169 = v88;
        *(&v169 + 1) = v89;
        v93 = __swift_project_boxed_opaque_existential_1(&v169, MEMORY[0x1E6969080]);
        v94 = v83;
        v164 = v84;
        v165 = v83;
        v95 = v84;
        v96 = *v93;
        v97 = v93[1];
        sub_1C0CF6468(v95, v94);
        sub_1C0CF6468(v88, v90);
        sub_1C0D4268C(v96, v97, &v167);
        v98 = v80;
        sub_1C0CF448C(v88, v90);
        __swift_destroy_boxed_opaque_existential_1(&v169);
        v99 = v167;
        v168 = v167;
        v170 = v91;
        v171 = v92;
        v100 = *(&v156 + 1);
        v101 = v156;
        v169 = v156;
        v102 = __swift_project_boxed_opaque_existential_1(&v169, v91);
        v103 = *v102;
        v104 = v102[1];
        sub_1C0CF6468(v101, v100);
        sub_1C0CF6468(v99, *(&v99 + 1));
        sub_1C0D4268C(v103, v104, &v168);
        sub_1C0CF448C(v99, *(&v99 + 1));
        __swift_destroy_boxed_opaque_existential_1(&v169);
        v105 = v168;
        v106 = v160;
        v107 = v163;
        sub_1C0D7863C();
        sub_1C0CF6468(v105, *(&v105 + 1));
        v155(v105, *(&v105 + 1), v106);
        sub_1C0CF448C(v105, *(&v105 + 1));
        v108 = v158;
        sub_1C0D7862C();
        sub_1C0CF448C(v105, *(&v105 + 1));
        v152(v106, v107);
        v109 = v159;
        v170 = v159;
        v171 = v151;
        v110 = __swift_allocate_boxed_opaque_existential_1(&v169);
        v149(v110, v108, v109);
        __swift_project_boxed_opaque_existential_1(&v169, v170);
        sub_1C0D7819C();
        v80 = v98;
        v148(v108, v109);
        v111 = v168;
        __swift_destroy_boxed_opaque_existential_1(&v169);
        sub_1C0D7834C();
        sub_1C0CF448C(v111, *(&v111 + 1));
        sub_1C0CF448C(v164, v165);
        if (v157 == v82)
        {
          break;
        }

        v112 = __OFADD__(v82++, 1);
        if (v112)
        {
          __break(1u);
          break;
        }
      }

      v113 = v172;
      sub_1C0CF6468(v172, *(&v172 + 1));
      sub_1C0D01560(v146, v113, *(&v113 + 1), &v168);
      v170 = MEMORY[0x1E6969080];
      v171 = MEMORY[0x1E6969078];
      v169 = v168;
      v114 = __swift_project_boxed_opaque_existential_1(&v169, MEMORY[0x1E6969080]);
      v115 = *v114;
      v116 = v114[1];
      v117 = v116 >> 62;
      if ((v116 >> 62) > 1)
      {
        if (v117 != 2)
        {
          memset(v166, 0, 14);
          v119 = v166;
          v118 = v166;
          goto LABEL_52;
        }

        v120 = *(v115 + 16);
        v121 = *(v115 + 24);
        v122 = sub_1C0D7812C();
        if (v122)
        {
          v123 = sub_1C0D7815C();
          if (__OFSUB__(v120, v123))
          {
LABEL_62:
            __break(1u);
            goto LABEL_63;
          }

          v122 += v120 - v123;
        }

        v112 = __OFSUB__(v121, v120);
        v124 = v121 - v120;
        if (!v112)
        {
          v125 = sub_1C0D7814C();
          if (v125 >= v124)
          {
            v126 = v124;
          }

          else
          {
            v126 = v125;
          }

          v127 = (v126 + v122);
          if (v122)
          {
            v118 = v127;
          }

          else
          {
            v118 = 0;
          }

          v119 = v122;
          goto LABEL_52;
        }

LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      if (!v117)
      {
        v166[0] = *v114;
        LOWORD(v166[1]) = v116;
        BYTE2(v166[1]) = BYTE2(v116);
        BYTE3(v166[1]) = BYTE3(v116);
        BYTE4(v166[1]) = BYTE4(v116);
        BYTE5(v166[1]) = BYTE5(v116);
        v118 = v166 + BYTE6(v116);
        v119 = v166;
LABEL_52:
        sub_1C0D20850(v119, v118, &v167);
        v138 = v142;
        v139 = v141;
LABEL_53:
        sub_1C0CF448C(v138, v139);
        sub_1C0CF448C(v153, *(&v153 + 1));
        sub_1C0CF448C(v156, *(&v156 + 1));
        sub_1C0CF448C(v143, v144);
        sub_1C0CF448C(v145, *(&v145 + 1));
        sub_1C0CF448C(v113, *(&v113 + 1));
        v24 = v167;
        __swift_destroy_boxed_opaque_existential_1(&v169);
        return v24;
      }

      v128 = v115;
      v129 = v115 >> 32;
      v130 = v129 - v128;
      if (v129 >= v128)
      {
        v131 = sub_1C0D7812C();
        if (!v131)
        {
LABEL_44:
          v133 = v141;
          v134 = sub_1C0D7814C();
          if (v134 >= v130)
          {
            v135 = v130;
          }

          else
          {
            v135 = v134;
          }

          v136 = &v131[v135];
          if (v131)
          {
            v137 = v136;
          }

          else
          {
            v137 = 0;
          }

          sub_1C0D20850(v131, v137, &v167);
          v138 = v142;
          v139 = v133;
          goto LABEL_53;
        }

        v132 = sub_1C0D7815C();
        if (!__OFSUB__(v128, v132))
        {
          v131 += v128 - v132;
          goto LABEL_44;
        }

LABEL_63:
        __break(1u);
      }

LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    goto LABEL_58;
  }

  sub_1C0D42E3C();
  swift_allocError();
  swift_willThrow();
  return v24;
}

uint64_t *sub_1C0D42424(uint64_t *result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v22 = *MEMORY[0x1E69E9840];
  v5 = *result;
  v4 = result[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_1C0CF448C(v5, v4);
      __b = v5;
      v21 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *v3 = xmmword_1C0D7BAB0;
      sub_1C0CF448C(0, 0xC000000000000000);
      result = sub_1C0D6F9B8(&__b, v2);
      v7 = __b;
      v8 = v21 | 0x4000000000000000;
    }

    else
    {
      __c = a2;
      sub_1C0CF448C(v5, v4);
      __b = v5;
      LOWORD(v21) = v4;
      BYTE2(v21) = BYTE2(v4);
      BYTE3(v21) = BYTE3(v4);
      BYTE4(v21) = BYTE4(v4);
      BYTE5(v21) = BYTE5(v4);
      BYTE6(v21) = BYTE6(v4);
      result = memset(&__b, __c, BYTE6(v4));
      v7 = __b;
      v8 = v21 | ((WORD2(v21) | (BYTE6(v21) << 16)) << 32);
    }

    *v3 = v7;
    v3[1] = v8;
    return result;
  }

  if (v6 != 2)
  {
    return result;
  }

  sub_1C0CF448C(v5, v4);
  __b = v5;
  v21 = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *v3 = xmmword_1C0D7BAB0;
  sub_1C0CF448C(0, 0xC000000000000000);
  sub_1C0D7823C();
  v9 = v21;
  v10 = *(__b + 16);
  v11 = *(__b + 24);
  result = sub_1C0D7812C();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v12 = result;
  v13 = sub_1C0D7815C();
  v14 = v10 - v13;
  if (__OFSUB__(v10, v13))
  {
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v15 = __OFSUB__(v11, v10);
  v16 = v11 - v10;
  if (v15)
  {
    goto LABEL_16;
  }

  v17 = sub_1C0D7814C();
  if (v17 >= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  result = memset(v12 + v14, v2, v18);
  *v3 = __b;
  v3[1] = v9 | 0x8000000000000000;
  return result;
}

uint64_t sub_1C0D4268C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      return sub_1C0D782CC();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1C0D427C4(v4, v5);
  }

  if (v3 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_1C0D427C4(v4, v5);
  }

  return sub_1C0D782CC();
}

uint64_t sub_1C0D427C4(uint64_t a1, uint64_t a2)
{
  result = sub_1C0D7812C();
  if (!result || (result = sub_1C0D7815C(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1C0D7814C();
      return sub_1C0D782CC();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0D42858(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1C0D428BC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

unint64_t sub_1C0D42970(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

id sub_1C0D42990(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1C0D786CC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = &v2[OBJC_IVAR____TtC16CryptoKitPrivate9TDMClient_input];
  *v10 = a1;
  v10[1] = a2;
  v11 = &v2[OBJC_IVAR____TtC16CryptoKitPrivate9TDMClient_oprfClient];
  *v11 = 1;
  *(v11 + 1) = 4;
  v11[16] = 1;
  sub_1C0D7896C();
  sub_1C0CF6468(a1, a2);
  sub_1C0D42E90(&qword_1ED9076B0, MEMORY[0x1E69665E8], MEMORY[0x1E69665E0]);
  sub_1C0D786EC();
  v12 = sub_1C0D786BC();
  (*(v7 + 8))(v9, v6);
  result = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (result)
  {
    v14 = result;
    v15 = sub_1C0D1AAB4(&v20, a1, a2, result, 1u, 4uLL, 1);

    v16 = v20;
    *&v3[OBJC_IVAR____TtC16CryptoKitPrivate9TDMClient_blind] = v15;
    *&v3[OBJC_IVAR____TtC16CryptoKitPrivate9TDMClient_be] = v16;
    v17 = type metadata accessor for TDMClient();
    v19.receiver = v3;
    v19.super_class = v17;
    return objc_msgSendSuper2(&v19, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C0D42DFC(void *a1, void *a2)
{
  if (a1)
  {
  }
}

unint64_t sub_1C0D42E3C()
{
  result = qword_1EBE6DCA8;
  if (!qword_1EBE6DCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6DCA8);
  }

  return result;
}

uint64_t sub_1C0D42E90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t SPAKE2.Spake2Error.hashValue.getter()
{
  v1 = *v0;
  sub_1C0D78FFC();
  MEMORY[0x1C68E3FF0](v1);
  return sub_1C0D7902C();
}

uint64_t SPAKE2.CipherSuite.hashValue.getter()
{
  sub_1C0D78FFC();
  MEMORY[0x1C68E3FF0](0);
  return sub_1C0D7902C();
}

uint64_t SPAKE2.WL.w0.getter()
{
  v1 = *v0;
  sub_1C0CF6468(*v0, *(v0 + 8));
  return v1;
}

uint64_t SPAKE2.WL.L.getter()
{
  v1 = *(v0 + 16);
  sub_1C0CF6468(v1, *(v0 + 24));
  return v1;
}

char *sub_1C0D4304C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t, uint64_t, uint64_t)@<X4>, void *a6@<X8>)
{
  v9 = *(a3 + 24);
  result = (v9 + a4);
  if (!__OFADD__(v9, a4))
  {
    v11 = a5(result, a1, a2);
    v13 = v12;
    v15 = v14;
    v17 = v16;
    result = sub_1C0D73074(v11, v12, v14, v16);
    if (result)
    {
      v18 = result;
      v19 = sub_1C0CF3BC0(result, 0);
      result = sub_1C0D50B94(v20, v19 + 4, v18, v11, v13, v15, v17);
      if (result == v18)
      {
LABEL_6:
        *a6 = v19;
        return result;
      }

      __break(1u);
    }

    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0D43118(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, _DWORD *a7, uint64_t *a8)
{
  v10 = result;
  v11 = a6 >> 62;
  if ((a6 >> 62) > 1)
  {
    if (v11 != 2)
    {
      if (result)
      {
        result = ccrng();
        if (result)
        {
LABEL_26:
          result = ccspake_generate_L();
          *a7 = result;
          return result;
        }

        goto LABEL_35;
      }

      goto LABEL_33;
    }

    v12 = *(a5 + 16);
    v13 = sub_1C0D7812C();
    if (v13)
    {
      v14 = sub_1C0D7815C();
      if (__OFSUB__(v12, v14))
      {
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
      }

      v13 += v12 - v14;
    }

    result = sub_1C0D7814C();
    if (!__OFSUB__(*(a5 + 24), *(a5 + 16)))
    {
      if (v13)
      {
        if (v10)
        {
          result = ccrng();
          if (result)
          {
            goto LABEL_26;
          }

          goto LABEL_38;
        }

LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    goto LABEL_28;
  }

  if (!v11)
  {
    if (result)
    {
      result = ccrng();
      if (result)
      {
        goto LABEL_26;
      }

      goto LABEL_34;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (a5 > a5 >> 32)
  {
    __break(1u);
    __break(1u);
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    __break(1u);
    __break(1u);
    goto LABEL_30;
  }

  v15 = sub_1C0D7812C();
  if (v15)
  {
    v16 = sub_1C0D7815C();
    if (__OFSUB__(a5, v16))
    {
      goto LABEL_31;
    }

    v15 += a5 - v16;
  }

  result = sub_1C0D7814C();
  if (__OFSUB__(HIDWORD(a5), a5))
  {
    goto LABEL_29;
  }

  if (!v15)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (!v10)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  result = ccrng();
  if (result)
  {
    goto LABEL_26;
  }

LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_1C0D433D4()
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = sub_1C0D78C2C();
  *(v1 + 16) = 4;
  *(v1 + 32) = 0;
  v13[0] = v1;
  v2 = type metadata accessor for SPAKE2.SPAKE2Framer(0);
  v12 = bswap64(*(v0 + *(v2 + 28)));
  sub_1C0CF9D70(&v12, v13);
  v3 = (v0 + *(v2 + 24));
  v4 = v3[1];
  if (v4 >> 60 == 15)
  {
LABEL_17:
    __break(1u);
  }

  v5 = *v3;
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (!v6)
    {
      v7 = BYTE6(v4);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  if (v6 == 2)
  {
    v9 = *(v5 + 16);
    v8 = *(v5 + 24);
    v7 = v8 - v9;
    if (!__OFSUB__(v8, v9))
    {
LABEL_11:
      sub_1C0CF6468(v5, v4);
      goto LABEL_13;
    }

    __break(1u);
LABEL_9:
    if (__OFSUB__(HIDWORD(v5), v5))
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v7 = HIDWORD(v5) - v5;
    goto LABEL_11;
  }

  v7 = 0;
LABEL_13:
  if (v7 != *(v13[0] + 16))
  {
    __break(1u);
    goto LABEL_16;
  }

  *&v14 = v13[0];
  *(&v14 + 1) = v5;
  v15 = v4;
  v16 = sub_1C0D43594;
  v17 = 0;
  sub_1C0D134D0(v5, v4);
  sub_1C0D78BFC();
  v13[1] = sub_1C0D07D8C(&v14);
  v13[2] = v10;
  sub_1C0D17E68();
  sub_1C0D7876C();
  sub_1C0D13830(v5, v4);
}

uint64_t sub_1C0D435A8@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v23[2] = a5;
  v23[3] = a6;
  v23[0] = a3;
  v23[1] = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE6DCE8, &unk_1C0D7EF60);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v23 - v11;
  v13 = sub_1C0D786AC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v16, v7, v13);
  sub_1C0D433D4();
  if (v8)
  {
    return (*(v14 + 8))(v16, v13);
  }

  v17 = sub_1C0D7877C();
  (*(*(v17 - 8) + 56))(v12, 0, 1, v17);
  sub_1C0D7874C();
  sub_1C0D13578(v12, qword_1EBE6DCE8, &unk_1C0D7EF60);
  (*(v14 + 8))(v16, v13);
  result = type metadata accessor for SPAKE2.SPAKE2Framer(0);
  v19 = *(result + 28);
  v20 = *(v7 + v19);
  if (v20 == -1)
  {
    sub_1C0D50D78();
    swift_allocError();
    *v21 = 5;
    swift_willThrow();
    v22 = sub_1C0D787CC();
    return (*(*(v22 - 8) + 8))(a7, v22);
  }

  else
  {
    *(v7 + v19) = v20 + 1;
  }

  return result;
}

uint64_t SPAKE2.Prover.init(seed:salt:info:context:verifierID:proverID:cipherSuite:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, unint64_t a11, uint64_t a12, unint64_t a13)
{
  v212 = a5;
  v213 = a6;
  *&v214 = a3;
  *(&v214 + 1) = a4;
  v215 = a2;
  v216 = a1;
  v205 = a9;
  v224 = *MEMORY[0x1E69E9840];
  v207 = sub_1C0D786AC();
  v16 = *(v207 - 8);
  v17 = MEMORY[0x1EEE9AC00](v207);
  v19 = &v192 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v192 - v20;
  v22 = ccspake_cp_256_rfc();
  if (!v22)
  {
    goto LABEL_80;
  }

  v23 = v22;
  v206 = v13;
  v24 = ccspake_mac_hkdf_hmac_sha256();
  if (!v24)
  {
    goto LABEL_81;
  }

  v25 = v24;
  v208 = a13;
  v210 = a12;
  v211 = a11;
  v209 = a10;
  v26 = ccspake_sizeof_ctx();
  v27 = ccspake_sizeof_w();
  v28 = ccspake_sizeof_point();
  *&v218 = v23;
  *(&v218 + 1) = v25;
  v204 = v26;
  *&v219 = v26;
  *(&v219 + 1) = v27;
  *v220 = v28;
  *&v220[8] = vdupq_n_s64(0x20uLL);
  v29 = v215;
  v30 = v215 >> 62;
  if ((v215 >> 62) > 1)
  {
    if (v30 != 2)
    {
      goto LABEL_10;
    }

    v32 = *(v216 + 16);
    v31 = *(v216 + 24);
    v33 = __OFSUB__(v31, v32);
    v34 = v31 - v32;
    if (v33)
    {
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    if (v34 < 16)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (!v30)
    {
      if (BYTE6(v215) >= 0x10uLL)
      {
        goto LABEL_13;
      }

LABEL_10:
      sub_1C0D50D78();
      swift_allocError();
      *v35 = 3;
      swift_willThrow();
      sub_1C0CF448C(v210, v208);
      v36 = v209;
      v37 = v211;
LABEL_25:
      sub_1C0CF448C(v36, v37);
      v63 = a7;
      v64 = a8;
LABEL_26:
      sub_1C0CF448C(v63, v64);
      sub_1C0CF448C(v212, v213);
      sub_1C0CF448C(v214, *(&v214 + 1));
      v65 = v216;
      v66 = v29;
      return sub_1C0CF448C(v65, v66);
    }

    if (__OFSUB__(HIDWORD(v216), v216))
    {
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    if (HIDWORD(v216) - v216 < 16)
    {
      goto LABEL_10;
    }
  }

LABEL_13:
  v200 = v28;
  *&v223 = v216;
  *(&v223 + 1) = v215;
  sub_1C0CF6468(v216, v215);
  sub_1C0D7868C();
  v223 = v214;
  v221 = v212;
  v222 = v213;
  if (v27 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_71;
  }

  if (__OFADD__(2 * v27, 16))
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v203 = a7;
  v202 = a8;
  sub_1C0D789EC();
  sub_1C0D50E20(qword_1EBE6C9D8, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  sub_1C0D17E68();
  sub_1C0D7881C();
  v38 = *(v16 + 8);
  v201 = (v16 + 8);
  v39 = v38(v19, v207);
  v40 = v38;
  MEMORY[0x1EEE9AC00](v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D1F0, &qword_1C0D7BFF0);
  v41 = v206;
  v42 = sub_1C0D7867C();
  v43 = v223;
  MEMORY[0x1EEE9AC00](v42);
  sub_1C0D7867C();
  v44 = v223;
  v217 = 0;
  *&v223 = sub_1C0D0F990(v27);
  *(&v223 + 1) = v45;
  sub_1C0D48EC4(&v223, &v217, &v218, 8, v43);
  v46 = v217;
  if (v217)
  {

    a7 = v203;
    v47 = v211;
    if (v46 == -2)
    {
      sub_1C0D50D78();
      swift_allocError();
      *v48 = 0;
    }

    else
    {
      sub_1C0CF8DE0();
      swift_allocError();
      *v62 = v46;
      *(v62 + 4) = 0;
    }

    a8 = v202;
    v29 = v215;
    swift_willThrow();
    sub_1C0CF448C(v223, *(&v223 + 1));
    v40(v21, v207);
    sub_1C0CF448C(v210, v208);
    v36 = v209;
    v37 = v47;
    goto LABEL_25;
  }

  v221 = sub_1C0D0F990(v27);
  v222 = v49;
  sub_1C0D48EC4(&v221, &v217, &v218, 8, v44);
  v50 = v217;
  v51 = v203;
  if (v217 == -2)
  {
    sub_1C0D50D78();
    swift_allocError();
    *v68 = 0;
    v29 = v215;
    v52 = v210;
    v53 = v211;
LABEL_30:
    swift_willThrow();
    sub_1C0CF448C(v221, v222);
    sub_1C0CF448C(v223, *(&v223 + 1));
    v40(v21, v207);
    sub_1C0CF448C(v52, v208);
    sub_1C0CF448C(v209, v53);
    v63 = v51;
    v64 = v202;
    goto LABEL_26;
  }

  v52 = v210;
  v53 = v211;
  if (v217)
  {
    sub_1C0CF8DE0();
    swift_allocError();
    *v69 = v50;
    *(v69 + 4) = 0;
    v29 = v215;
    goto LABEL_30;
  }

  v198 = v41;
  v40(v21, v207);
  v206 = *(&v223 + 1);
  v26 = v223;
  v27 = v221;
  v54 = v222;
  v55 = type metadata accessor for SPAKE2.Prover(0);
  v56 = *(v55 + 36);
  v21 = type metadata accessor for SPAKE2.SPAKE2Framer(0);
  v29 = *(*(v21 - 1) + 56);
  v57 = v205;
  v196 = v56;
  v29(v205 + v56, 1, 1, v21);
  v195 = *(v55 + 40);
  v29(v57 + v195, 1, 1, v21);
  a7 = v204;
  if ((v204 & 0x8000000000000000) != 0)
  {
LABEL_74:
    __break(1u);
LABEL_75:
    v27 = sub_1C0CFD670(v27);
    goto LABEL_66;
  }

  sub_1C0CF6468(v26, v206);
  v207 = v54;
  sub_1C0CF6468(v27, v54);
  v58 = v202;
  v59 = v208;
  v60 = v26;
  if (a7)
  {
    v61 = sub_1C0D78C2C();
    *(v61 + 16) = a7;
    bzero((v61 + 32), a7);
  }

  else
  {
    v61 = MEMORY[0x1E69E7CC0];
  }

  *v57 = v61;
  LODWORD(v221) = 0;
  v70 = v58 >> 62;
  v201 = v27;
  v199 = v26;
  v204 = v61;
  v197 = v61 + 32;
  if ((v58 >> 62) > 1)
  {
    if (v70 != 2)
    {
      *(&v223 + 6) = 0;
      *&v223 = 0;
      v117 = v211;
      sub_1C0CF6468(v209, v211);
      v118 = v26;
      v119 = v206;
      sub_1C0CF6468(v118, v206);
      v120 = v207;
      sub_1C0CF6468(v27, v207);
      v121 = v210;
      sub_1C0CF6468(v210, v59);
      v122 = v203;
      sub_1C0CF6468(v203, v58);
      sub_1C0CF6468(v60, v119);
      sub_1C0CF6468(v27, v120);
      sub_1C0CF6468(v121, v59);
      v123 = v209;
      sub_1C0CF6468(v209, v117);
      sub_1C0CF6468(v122, v58);
      sub_1C0CF6468(v60, v206);
      sub_1C0CF6468(v27, v120);
      sub_1C0CF6468(v123, v117);
      sub_1C0CF6468(v121, v59);
      v124 = v198;
      sub_1C0D4BBF8(v121, v59, v123, v117, v60, v206, v27, v120, &v221, v197, &v218, v122, v58, &v223, &v223, v121, v59, sub_1C0D49F80);
      v198 = v124;
      v125 = v59;
      v126 = v121;
      sub_1C0CF448C(v121, v125);
      v84 = v123;
      goto LABEL_63;
    }

    v86 = v203;
    v87 = *(v203 + 24);
    v194 = *(v203 + 16);
    v193 = v87;
    v88 = v59;
    sub_1C0CF6468(v210, v59);
    v89 = v209;
    sub_1C0CF6468(v209, v211);
    v90 = v206;
    sub_1C0CF6468(v60, v206);
    v91 = v207;
    sub_1C0CF6468(v27, v207);
    sub_1C0CF6468(v86, v58);
    v92 = v210;
    sub_1C0CF6468(v210, v88);
    v93 = v89;
    v94 = v211;
    sub_1C0CF6468(v93, v211);
    sub_1C0CF6468(v60, v90);
    sub_1C0CF6468(v27, v91);
    sub_1C0CF6468(v86, v58);
    sub_1C0CF6468(v60, v90);
    sub_1C0CF6468(v27, v91);
    sub_1C0CF6468(v92, v88);
    v95 = v209;
    sub_1C0CF6468(v209, v94);
    sub_1C0CF6468(v86, v58);
    sub_1C0CF6468(v60, v90);
    sub_1C0CF6468(v27, v91);
    sub_1C0CF6468(v95, v94);
    sub_1C0CF6468(v210, v88);
    sub_1C0CF6468(v86, v58);
    v96 = sub_1C0D7812C();
    if (v96)
    {
      v97 = v96;
      v98 = sub_1C0D7815C();
      v99 = v194;
      if (__OFSUB__(v194, v98))
      {
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
      }

      v100 = v194 - v98 + v97;
      v101 = v207;
    }

    else
    {
      v100 = 0;
      v101 = v207;
      v99 = v194;
    }

    v127 = v193 - v99;
    if (!__OFSUB__(v193, v99))
    {
      v128 = v202;
      v129 = sub_1C0D7814C();
      if (v129 >= v127)
      {
        v130 = v127;
      }

      else
      {
        v130 = v129;
      }

      v131 = v130 + v100;
      if (v100)
      {
        v132 = v131;
      }

      else
      {
        v132 = 0;
      }

      v133 = v206;
      sub_1C0CF6468(v199, v206);
      sub_1C0CF6468(v201, v101);
      v134 = v101;
      v135 = v209;
      v136 = v211;
      sub_1C0CF6468(v209, v211);
      v72 = v208;
      sub_1C0CF6468(v210, v208);
      v137 = v203;
      sub_1C0CF6468(v203, v128);
      v190 = v132;
      v84 = v135;
      v138 = v133;
      v78 = v210;
      v186 = v128;
      v188 = v100;
      v139 = v199;
      v140 = v201;
      v141 = v198;
      sub_1C0D4BBF8(v210, v72, v84, v136, v199, v138, v201, v134, &v221, v197, &v218, v137, v186, v188, v190, v210, v72, sub_1C0D49F80);
      v198 = v141;
      sub_1C0CF448C(v78, v72);
      sub_1C0CF448C(v84, v136);
      sub_1C0CF448C(v139, v138);
      sub_1C0CF448C(v140, v134);
      v142 = v202;
      sub_1C0CF448C(v137, v202);
      sub_1C0CF448C(v78, v72);
      sub_1C0CF448C(v84, v136);
      sub_1C0CF448C(v139, v138);
      v143 = v201;
      goto LABEL_61;
    }

LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  if (v70)
  {
    v102 = v203;
    v193 = v203;
    v194 = (v102 >> 32) - v102;
    if (v102 >> 32 >= v102)
    {
      v103 = v59;
      sub_1C0CF6468(v210, v59);
      v104 = v209;
      sub_1C0CF6468(v209, v211);
      v105 = v206;
      sub_1C0CF6468(v60, v206);
      v106 = v60;
      v107 = v207;
      sub_1C0CF6468(v27, v207);
      sub_1C0CF6468(v102, v58);
      v108 = v210;
      sub_1C0CF6468(v210, v103);
      v109 = v104;
      v110 = v211;
      sub_1C0CF6468(v109, v211);
      sub_1C0CF6468(v106, v105);
      sub_1C0CF6468(v27, v107);
      sub_1C0CF6468(v102, v58);
      sub_1C0CF6468(v106, v105);
      sub_1C0CF6468(v27, v107);
      sub_1C0CF6468(v108, v103);
      v111 = v209;
      sub_1C0CF6468(v209, v110);
      sub_1C0CF6468(v102, v58);
      sub_1C0CF6468(v106, v105);
      v112 = v27;
      sub_1C0CF6468(v27, v107);
      sub_1C0CF6468(v111, v110);
      sub_1C0CF6468(v210, v103);
      sub_1C0CF6468(v102, v58);
      v113 = sub_1C0D7812C();
      if (!v113)
      {
        v116 = 0;
        goto LABEL_54;
      }

      v114 = v113;
      v115 = sub_1C0D7815C();
      if (!__OFSUB__(v193, v115))
      {
        v116 = v193 - v115 + v114;
LABEL_54:
        v144 = v207;
        v145 = v194;
        v146 = sub_1C0D7814C();
        if (v146 >= v145)
        {
          v147 = v145;
        }

        else
        {
          v147 = v146;
        }

        v148 = v147 + v116;
        if (v116)
        {
          v149 = v148;
        }

        else
        {
          v149 = 0;
        }

        v150 = v206;
        sub_1C0CF6468(v199, v206);
        sub_1C0CF6468(v27, v144);
        v151 = v209;
        v152 = v211;
        sub_1C0CF6468(v209, v211);
        v72 = v208;
        sub_1C0CF6468(v210, v208);
        v137 = v203;
        v153 = v202;
        sub_1C0CF6468(v203, v202);
        v191 = v149;
        v84 = v151;
        v154 = v150;
        v78 = v210;
        v187 = v153;
        v189 = v116;
        v155 = v199;
        v156 = v207;
        v157 = v198;
        sub_1C0D4BBF8(v210, v72, v84, v152, v199, v154, v112, v207, &v221, v197, &v218, v137, v187, v189, v191, v210, v72, sub_1C0D49F80);
        v198 = v157;
        sub_1C0CF448C(v78, v72);
        sub_1C0CF448C(v84, v152);
        sub_1C0CF448C(v155, v154);
        sub_1C0CF448C(v112, v156);
        v142 = v202;
        sub_1C0CF448C(v137, v202);
        sub_1C0CF448C(v78, v72);
        sub_1C0CF448C(v84, v152);
        sub_1C0CF448C(v155, v154);
        v143 = v112;
LABEL_61:
        sub_1C0CF448C(v143, v207);
        sub_1C0CF448C(v137, v142);
        goto LABEL_62;
      }

      goto LABEL_79;
    }

    __break(1u);
    goto LABEL_77;
  }

  v71 = v203;
  *&v223 = v203;
  WORD4(v223) = v58;
  BYTE10(v223) = BYTE2(v58);
  BYTE11(v223) = BYTE3(v58);
  BYTE12(v223) = BYTE4(v58);
  v72 = v59;
  v73 = v58;
  BYTE13(v223) = BYTE5(v58);
  v194 = &v223 + BYTE6(v58);
  v74 = v209;
  sub_1C0CF6468(v209, v211);
  v75 = v206;
  sub_1C0CF6468(v26, v206);
  v76 = v27;
  v77 = v207;
  sub_1C0CF6468(v76, v207);
  v78 = v210;
  sub_1C0CF6468(v210, v59);
  sub_1C0CF6468(v71, v73);
  v79 = v75;
  sub_1C0CF6468(v60, v75);
  v80 = v201;
  v81 = v77;
  sub_1C0CF6468(v201, v77);
  sub_1C0CF6468(v78, v72);
  v82 = v211;
  sub_1C0CF6468(v74, v211);
  sub_1C0CF6468(v71, v73);
  v83 = v199;
  sub_1C0CF6468(v199, v79);
  sub_1C0CF6468(v80, v81);
  v84 = v74;
  sub_1C0CF6468(v74, v82);
  sub_1C0CF6468(v78, v72);
  v85 = v198;
  sub_1C0D4BBF8(v78, v72, v74, v82, v83, v79, v201, v81, &v221, v197, &v218, v71, v202, &v223, v194, v78, v72, sub_1C0D49F80);
  v198 = v85;
LABEL_62:
  v126 = v78;
  v125 = v72;
  sub_1C0CF448C(v78, v72);
LABEL_63:
  sub_1C0CF448C(v84, v211);
  v158 = v84;
  v159 = v199;
  v160 = v206;
  sub_1C0CF448C(v199, v206);
  v161 = v201;
  v162 = v207;
  sub_1C0CF448C(v201, v207);
  v163 = v203;
  v164 = v202;
  sub_1C0CF448C(v203, v202);
  sub_1C0CF448C(v126, v125);
  sub_1C0CF448C(v158, v211);
  sub_1C0CF448C(v159, v160);
  sub_1C0CF448C(v161, v162);
  sub_1C0CF448C(v163, v164);
  v27 = v204;
  *v205 = v204;
  a7 = v160;
  v165 = v221;
  v166 = v215;
  if (v221)
  {
    v167 = v199;
    sub_1C0CF448C(v199, a7);
    v168 = v201;
    v169 = v207;
    sub_1C0CF448C(v201, v207);
    sub_1C0CF8DE0();
    swift_allocError();
    *v170 = v165;
    *(v170 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v212, v213);
    sub_1C0CF448C(v214, *(&v214 + 1));
    sub_1C0CF448C(v216, v166);
    sub_1C0CF448C(v167, a7);
    sub_1C0CF448C(v168, v169);
    sub_1C0CF448C(v126, v208);
    sub_1C0CF448C(v209, v211);
    v171 = v203;
    v172 = v202;
    goto LABEL_68;
  }

  v21 = v215;
  v26 = v199;
  v29 = v201;
  *&v223 = sub_1C0D0F990(v200);
  *(&v223 + 1) = v173;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_75;
  }

LABEL_66:
  sub_1C0D492F4(&v223, &v221, v27 + 32, &v218);
  v174 = v205;
  *v205 = v27;
  v175 = v221;
  if (!v221)
  {
    sub_1C0CF448C(v212, v213);
    sub_1C0CF448C(v214, *(&v214 + 1));
    sub_1C0CF448C(v216, v21);
    sub_1C0CF448C(v26, a7);
    v181 = v207;
    sub_1C0CF448C(v29, v207);
    sub_1C0CF448C(v210, v208);
    sub_1C0CF448C(v209, v211);
    sub_1C0CF448C(v203, v202);
    v182 = v219;
    *(v174 + 1) = v218;
    *(v174 + 3) = v182;
    *(v174 + 5) = *v220;
    *&v183 = v26;
    *(&v183 + 1) = a7;
    v184 = *&v220[16];
    *&v182 = v29;
    *(&v182 + 1) = v181;
    *(v174 + 5) = v183;
    *(v174 + 6) = v182;
    v185 = v223;
    v174[7] = v184;
    *(v174 + 4) = v185;
    *(v174 + 112) = 0;
    sub_1C0CF6468(v185, *(&v185 + 1));
    v66 = v185 >> 64;
    v65 = v185;
    return sub_1C0CF448C(v65, v66);
  }

  sub_1C0CF448C(v26, a7);
  v176 = v29;
  v177 = v29;
  v178 = v207;
  sub_1C0CF448C(v176, v207);
  sub_1C0CF8DE0();
  swift_allocError();
  *v179 = v175;
  *(v179 + 4) = 0;
  swift_willThrow();
  sub_1C0CF448C(v212, v213);
  sub_1C0CF448C(v214, *(&v214 + 1));
  sub_1C0CF448C(v216, v21);
  sub_1C0CF448C(v26, a7);
  sub_1C0CF448C(v177, v178);
  sub_1C0CF448C(v210, v208);
  sub_1C0CF448C(v209, v211);
  sub_1C0CF448C(v203, v202);
  v172 = *(&v223 + 1);
  v171 = v223;
LABEL_68:
  sub_1C0CF448C(v171, v172);

  v180 = v205;
  sub_1C0D13578(v205 + v196, &qword_1EBE6DCB8, &unk_1C0D7D9E0);
  return sub_1C0D13578(v180 + v195, &qword_1EBE6DCB8, &unk_1C0D7D9E0);
}

uint64_t SPAKE2.Prover.getShare()()
{
  v1 = *(v0 + 64);
  sub_1C0CF6468(v1, *(v0 + 72));
  return v1;
}

void SPAKE2.Prover.processPeerVerificationTag(peerVerificationTag:)(uint64_t a1, unint64_t a2)
{
  v6 = sub_1C0D786AC();
  v72 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  *&v64 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v50 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v69 = v50 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = v50 - v14;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D8B0, &qword_1C0D7D9F0);
  v65 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v17 = v50 - v16;
  v67 = v2;
  SPAKE2.Prover.processPeerVerificationTagAndGenerateKey(peerVerificationTag:)(a1, a2, &v70);
  if (!v3)
  {
    v62 = v70;
    v66 = 0;
    sub_1C0D50DCC();

    v18 = v15;
    sub_1C0D7868C();
    v19 = sub_1C0D789CC();
    v70 = sub_1C0D0F990(v19);
    v71 = v20;
    v21 = sub_1C0D789EC();
    v22 = sub_1C0D50E20(qword_1EBE6C9D8, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
    v23 = sub_1C0D17E68();
    sub_1C0D787FC();
    sub_1C0D13830(v70, v71);
    v24 = v72[1];
    v57 = v11;
    v58 = v72 + 1;
    v61 = v24;
    v63 = v18;
    v24(v18, v6);
    v70 = sub_1C0D07698(0x6B207265766F7270, 0xEA00000000007965);
    v71 = v25;
    v26 = sub_1C0D3339C();
    sub_1C0D787EC();
    sub_1C0D13830(v70, v71);
    v70 = sub_1C0D07698(0x7265696669726576, 0xEC00000079656B20);
    v71 = v27;
    v55 = v22;
    v56 = v23;
    v52 = v17;
    v53 = v21;
    v54 = v26;
    sub_1C0D787EC();
    sub_1C0D13830(v70, v71);
    v70 = sub_1C0D07698(0x6E207265766F7270, 0xEC00000065636E6FLL);
    v71 = v28;
    v29 = v57;
    sub_1C0D787EC();
    sub_1C0D13830(v70, v71);
    v51 = v72[2];
    v30 = v64;
    v51(v64, v29, v6);
    v50[2] = sub_1C0D50E20(&qword_1EBE6DCD0, MEMORY[0x1E6966458], MEMORY[0x1E6966450]);
    v50[1] = sub_1C0D332D0;
    v31 = v66;
    sub_1C0D7819C();
    v66 = v31;
    v32 = v61;
    v61(v30, v6);
    v32(v29, v6);
    v59 = v71;
    v60 = v70;
    v70 = sub_1C0D07698(0x7265696669726576, 0xEE0065636E6F6E20);
    v71 = v33;
    v34 = v52;
    v35 = v68;
    sub_1C0D787EC();
    sub_1C0D13830(v70, v71);
    v36 = v51;
    v51(v30, v29, v6);
    v37 = v66;
    sub_1C0D7819C();
    v66 = v37;

    v32(v30, v6);
    v32(v29, v6);
    (*(v65 + 8))(v34, v35);
    v68 = v70;
    v65 = v71;
    v38 = type metadata accessor for SPAKE2.Prover(0);
    v39 = v67;
    v40 = v67 + *(v38 + 36);
    sub_1C0D13578(v40, &qword_1EBE6DCB8, &unk_1C0D7D9E0);
    v36(v40, v63, v6);
    v41 = type metadata accessor for SPAKE2.SPAKE2Framer(0);
    v42 = v69;
    v36(v40 + v41[5], v69, v6);
    v43 = v40 + v41[6];
    v64 = xmmword_1C0D7D9D0;
    *v43 = xmmword_1C0D7D9D0;
    *(v40 + v41[7]) = 0;
    sub_1C0D13830(*v43, *(v43 + 8));
    v44 = v59;
    *v43 = v60;
    *(v43 + 8) = v44;
    v45 = *(*(v41 - 1) + 56);
    v45(v40, 0, 1, v41);
    v46 = v39 + *(v38 + 40);
    sub_1C0D13578(v46, &qword_1EBE6DCB8, &unk_1C0D7D9E0);
    v47 = v46 + v41[6];
    *v47 = v64;
    *(v46 + v41[7]) = 0;
    v48 = v72[4];
    v48(v46, v42, v6);
    sub_1C0D13830(*v47, *(v47 + 8));
    v49 = v65;
    *v47 = v68;
    *(v47 + 8) = v49;
    v48(v46 + v41[5], v63, v6);
    v45(v46, 0, 1, v41);
    *(v67 + 112) = 1;
  }
}

uint64_t SPAKE2.Prover.seal<A, B>(_:authenticating:)@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  if (*(v7 + 112) == 1)
  {
    v13 = *(type metadata accessor for SPAKE2.Prover(0) + 36);
    v14 = type metadata accessor for SPAKE2.SPAKE2Framer(0);
    result = (*(*(v14 - 8) + 48))(v7 + v13, 1, v14);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      return sub_1C0D435A8(a3, a4, a5, a6, a7);
    }
  }

  else
  {
    sub_1C0D50D78();
    swift_allocError();
    *v16 = 4;
    return swift_willThrow();
  }

  return result;
}

uint64_t SPAKE2.Prover.open<A>(_:authenticating:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + 112) == 1)
  {
    v5 = v4 + *(type metadata accessor for SPAKE2.Prover(0) + 40);
    v6 = type metadata accessor for SPAKE2.SPAKE2Framer(0);
    result = (*(*(v6 - 8) + 48))(v5, 1, v6);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      return sub_1C0D7873C();
    }
  }

  else
  {
    sub_1C0D50D78();
    swift_allocError();
    *v8 = 4;
    return swift_willThrow();
  }

  return result;
}

uint64_t _s16CryptoKitPrivate6SPAKE2O6ProverV2wsAC2WSVvg_0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[10];
  v3 = v1[11];
  v4 = v1[12];
  v5 = v1[13];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_1C0CF6468(v2, v3);

  return sub_1C0CF6468(v4, v5);
}

uint64_t sub_1C0D459EC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t (*a13)(void), void (*a14)(uint64_t, unint64_t, uint64_t, unint64_t, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v102 = *MEMORY[0x1E69E9840];
  v18 = ccspake_cp_256_rfc();
  if (!v18)
  {
    goto LABEL_48;
  }

  v19 = v18;
  v90 = a3;
  v96 = a5;
  v20 = ccspake_mac_hkdf_hmac_sha256();
  if (!v20)
  {
    goto LABEL_49;
  }

  v21 = v20;
  v22 = ccspake_sizeof_ctx();
  *&v98 = v19;
  *(&v98 + 1) = v21;
  *&v99 = v22;
  *(&v99 + 1) = ccspake_sizeof_w();
  v83 = ccspake_sizeof_point();
  *v100 = v83;
  *&v100[8] = vdupq_n_s64(0x20uLL);
  v23 = a13(0);
  v24 = *(v23 + 36);
  v25 = type metadata accessor for SPAKE2.SPAKE2Framer(0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 56);
  v28 = v26 + 56;
  v29 = a9;
  v85 = v24;
  (v27)(a9 + v24, 1, 1, v25);
  v30 = *(v23 + 40);
  (v27)(a9 + v30, 1, 1, v25);
  if ((v22 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_43:
    v87 = sub_1C0CFD670(v28);
    goto LABEL_38;
  }

  v84 = v30;
  v31 = a1;
  sub_1C0CF6468(a1, a2);
  v32 = v90;
  sub_1C0CF6468(v90, a4);
  sub_1C0CF6468(a1, a2);
  sub_1C0CF6468(v90, a4);
  v27 = a6;
  if (v22)
  {
    v33 = sub_1C0D78C2C();
    *(v33 + 16) = v22;
    bzero((v33 + 32), v22);
  }

  else
  {
    v33 = MEMORY[0x1E69E7CC0];
  }

  v29 = v96;
  v89 = a11;
  *a9 = v33;
  v87 = v33;
  v34 = a6 >> 62;
  v97 = 0;
  v35 = a7;
  v36 = a2;
  v96 = a10;
  v86 = v33 + 32;
  v88 = a4;
  if ((v27 >> 62) > 1)
  {
    if (v34 != 2)
    {
      *(&v101 + 6) = 0;
      *&v101 = 0;
      sub_1C0CF6468(a7, a8);
      sub_1C0CF6468(a1, a2);
      sub_1C0CF6468(v90, a4);
      v50 = a4;
      v39 = a10;
      v37 = a11;
      sub_1C0CF6468(a10, a11);
      sub_1C0CF6468(v29, v27);
      sub_1C0CF6468(a1, a2);
      sub_1C0CF6468(v90, v50);
      sub_1C0CF6468(a10, a11);
      v38 = a8;
      sub_1C0CF6468(a7, a8);
      sub_1C0CF6468(v29, v27);
      sub_1C0CF6468(a1, a2);
      sub_1C0CF6468(v90, v88);
      sub_1C0CF6468(a7, a8);
      sub_1C0CF6468(a10, a11);
      v77 = a11;
      v78 = a14;
      v75 = &v101;
      v76 = a10;
      v72 = v27;
      v71 = v29;
      v70 = v86;
      goto LABEL_25;
    }

    v79 = *(v29 + 24);
    v80 = *(v29 + 16);
    sub_1C0CF6468(a10, a11);
    sub_1C0CF6468(a7, a8);
    sub_1C0CF6468(a1, a2);
    sub_1C0CF6468(v90, a4);
    sub_1C0CF6468(v29, v27);
    sub_1C0CF6468(a10, a11);
    sub_1C0CF6468(a7, a8);
    sub_1C0CF6468(a1, a2);
    sub_1C0CF6468(v90, a4);
    sub_1C0CF6468(v29, v27);
    sub_1C0CF6468(a1, a2);
    sub_1C0CF6468(v90, a4);
    sub_1C0CF6468(a10, a11);
    sub_1C0CF6468(a7, a8);
    sub_1C0CF6468(v29, v27);
    sub_1C0CF6468(a1, a2);
    sub_1C0CF6468(v90, a4);
    sub_1C0CF6468(a7, a8);
    sub_1C0CF6468(a10, a11);
    sub_1C0CF6468(v29, v27);
    v40 = sub_1C0D7812C();
    if (v40)
    {
      v41 = sub_1C0D7815C();
      v42 = v80;
      if (__OFSUB__(v80, v41))
      {
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
      }

      v40 += v80 - v41;
      v43 = a10;
    }

    else
    {
      v43 = a10;
      v42 = v80;
    }

    v52 = v79 - v42;
    if (!__OFSUB__(v79, v42))
    {
      v53 = sub_1C0D7814C();
      if (v53 >= v52)
      {
        v54 = v52;
      }

      else
      {
        v54 = v53;
      }

      v55 = v54 + v40;
      if (!v40)
      {
        v55 = 0;
      }

      v82 = v55;
      sub_1C0CF6468(a1, a2);
      sub_1C0CF6468(v90, a4);
      v35 = a7;
      sub_1C0CF6468(a7, a8);
      v56 = v43;
      v57 = v43;
      v37 = a11;
      sub_1C0CF6468(v56, a11);
      sub_1C0CF6468(v29, v27);
      v74 = v40;
      v32 = v90;
      v31 = a1;
      v36 = a2;
      sub_1C0D4BBF8(v57, v37, a7, a8, a1, a2, v90, a4, &v97, v86, &v98, v29, v27, v74, v82, v57, v37, a14);
      sub_1C0CF448C(v57, a11);
      v49 = a7;
      v38 = a8;
      goto LABEL_34;
    }

LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (!v34)
  {
    *&v101 = v29;
    WORD4(v101) = v27;
    BYTE10(v101) = BYTE2(v27);
    BYTE11(v101) = BYTE3(v27);
    BYTE12(v101) = BYTE4(v27);
    BYTE13(v101) = BYTE5(v27);
    sub_1C0CF6468(a7, a8);
    v31 = a1;
    v36 = a2;
    sub_1C0CF6468(a1, a2);
    v32 = v90;
    sub_1C0CF6468(v90, a4);
    v37 = a11;
    sub_1C0CF6468(a10, a11);
    sub_1C0CF6468(v29, v27);
    sub_1C0CF6468(a1, a2);
    sub_1C0CF6468(v90, a4);
    sub_1C0CF6468(a10, a11);
    v35 = a7;
    v38 = a8;
    sub_1C0CF6468(a7, a8);
    sub_1C0CF6468(v29, v27);
    sub_1C0CF6468(a1, a2);
    sub_1C0CF6468(v90, a4);
    sub_1C0CF6468(a7, a8);
    v39 = a10;
    sub_1C0CF6468(a10, a11);
    v77 = a11;
    v78 = a14;
    v75 = &v101 + BYTE6(v27);
    v76 = a10;
    v72 = v27;
    v71 = v29;
    v70 = v86;
LABEL_25:
    v51 = v39;
    a4 = v88;
    sub_1C0D4BBF8(v51, v37, v35, v38, v31, v36, v32, v88, &v97, v70, &v98, v71, v72, &v101, v75, v76, v77, v78);
    goto LABEL_35;
  }

  if (v29 >> 32 < v29)
  {
    __break(1u);
    goto LABEL_45;
  }

  sub_1C0CF6468(a10, a11);
  sub_1C0CF6468(a7, a8);
  sub_1C0CF6468(a1, a2);
  sub_1C0CF6468(v90, a4);
  sub_1C0CF6468(v29, v27);
  sub_1C0CF6468(a10, a11);
  sub_1C0CF6468(a7, a8);
  sub_1C0CF6468(a1, a2);
  sub_1C0CF6468(v90, a4);
  sub_1C0CF6468(v29, v27);
  sub_1C0CF6468(a1, a2);
  sub_1C0CF6468(v90, a4);
  sub_1C0CF6468(a10, a11);
  sub_1C0CF6468(a7, a8);
  sub_1C0CF6468(v29, v27);
  sub_1C0CF6468(a1, a2);
  sub_1C0CF6468(v90, a4);
  sub_1C0CF6468(a7, a8);
  sub_1C0CF6468(a10, a11);
  sub_1C0CF6468(v29, v27);
  v44 = sub_1C0D7812C();
  if (v44)
  {
    v45 = sub_1C0D7815C();
    if (!__OFSUB__(v29, v45))
    {
      v44 += v29 - v45;
      goto LABEL_18;
    }

    goto LABEL_47;
  }

LABEL_18:
  v46 = sub_1C0D7814C();
  if (v46 >= (v29 >> 32) - v29)
  {
    v47 = (v29 >> 32) - v29;
  }

  else
  {
    v47 = v46;
  }

  v48 = v47 + v44;
  if (!v44)
  {
    v48 = 0;
  }

  v81 = v48;
  sub_1C0CF6468(a1, a2);
  sub_1C0CF6468(v90, a4);
  v35 = a7;
  sub_1C0CF6468(a7, a8);
  v37 = a11;
  sub_1C0CF6468(a10, a11);
  sub_1C0CF6468(v29, v27);
  v73 = v44;
  v32 = v90;
  v31 = a1;
  sub_1C0D4BBF8(a10, v37, a7, a8, a1, a2, v90, a4, &v97, v86, &v98, v29, v27, v73, v81, a10, v37, a14);
  sub_1C0CF448C(a10, a11);
  v49 = a7;
  v38 = a8;
  v36 = a2;
LABEL_34:
  sub_1C0CF448C(v49, v38);
  sub_1C0CF448C(v31, v36);
  sub_1C0CF448C(v32, a4);
  sub_1C0CF448C(v29, v27);
  sub_1C0CF448C(a10, v37);
  sub_1C0CF448C(v35, v38);
  sub_1C0CF448C(v31, v36);
  sub_1C0CF448C(v32, a4);
  sub_1C0CF448C(v29, v27);
LABEL_35:
  sub_1C0CF448C(a10, v37);
  sub_1C0CF448C(v35, v38);
  sub_1C0CF448C(v31, v36);
  sub_1C0CF448C(v32, a4);
  sub_1C0CF448C(v29, v27);
  sub_1C0CF448C(a10, v37);
  sub_1C0CF448C(v35, v38);
  sub_1C0CF448C(v31, v36);
  sub_1C0CF448C(v32, a4);
  sub_1C0CF448C(v29, v27);
  v28 = v87;
  *a9 = v87;
  v58 = v37;
  v59 = v32;
  v60 = v97;
  if (v97)
  {
    sub_1C0CF448C(v31, v36);
    sub_1C0CF448C(v59, a4);
    sub_1C0CF8DE0();
    swift_allocError();
    *v61 = v60;
    *(v61 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v59, a4);
    sub_1C0CF448C(v31, v36);
    sub_1C0CF448C(v31, v36);
    sub_1C0CF448C(v59, a4);
    sub_1C0CF448C(a10, v58);
    sub_1C0CF448C(a7, a8);
    v62 = v29;
    v63 = v27;
LABEL_40:
    sub_1C0CF448C(v62, v63);

    sub_1C0D13578(a9 + v85, &qword_1EBE6DCB8, &unk_1C0D7D9E0);
    return sub_1C0D13578(a9 + v84, &qword_1EBE6DCB8, &unk_1C0D7D9E0);
  }

  *&v101 = sub_1C0D0F990(v83);
  *(&v101 + 1) = v64;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_38:
  sub_1C0D492F4(&v101, &v97, (v87 + 32), &v98);
  *a9 = v87;
  v65 = v97;
  if (v97)
  {
    sub_1C0CF448C(a1, a2);
    sub_1C0CF448C(v90, a4);
    sub_1C0CF8DE0();
    swift_allocError();
    *v66 = v65;
    *(v66 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v90, a4);
    sub_1C0CF448C(a1, a2);
    sub_1C0CF448C(a1, a2);
    sub_1C0CF448C(v90, a4);
    sub_1C0CF448C(v96, v89);
    sub_1C0CF448C(a7, a8);
    sub_1C0CF448C(v29, v27);
    v63 = *(&v101 + 1);
    v62 = v101;
    goto LABEL_40;
  }

  sub_1C0CF448C(v90, a4);
  sub_1C0CF448C(a1, a2);
  sub_1C0CF448C(a1, a2);
  sub_1C0CF448C(v90, a4);
  sub_1C0CF448C(v96, v89);
  sub_1C0CF448C(a7, a8);
  sub_1C0CF448C(v29, v27);
  v68 = v99;
  *(a9 + 8) = v98;
  *(a9 + 24) = v68;
  *(a9 + 40) = *v100;
  *(a9 + 88) = a2;
  *(a9 + 96) = v90;
  *(a9 + 104) = a4;
  v69 = v101;
  *(a9 + 56) = *&v100[16];
  *(a9 + 64) = v69;
  *(a9 + 80) = a1;
  *(a9 + 112) = 0;
  sub_1C0CF6468(v69, *(&v69 + 1));
  return sub_1C0CF448C(v69, *(&v69 + 1));
}

uint64_t SPAKE2.Verifier.init(seed:salt:info:context:verifierID:proverID:cipherSuite:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, unint64_t a11, uint64_t a12, unint64_t a13)
{
  v219 = a5;
  v220 = a6;
  *&v221 = a3;
  *(&v221 + 1) = a4;
  v222 = a2;
  v223 = a1;
  v212 = a9;
  v231 = *MEMORY[0x1E69E9840];
  v214 = sub_1C0D786AC();
  v16 = *(v214 - 8);
  v17 = MEMORY[0x1EEE9AC00](v214);
  v19 = &v199 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v199 - v20;
  v22 = ccspake_cp_256_rfc();
  if (!v22)
  {
    goto LABEL_82;
  }

  v23 = v22;
  v213 = v13;
  v24 = ccspake_mac_hkdf_hmac_sha256();
  if (!v24)
  {
    goto LABEL_83;
  }

  v25 = v24;
  v215 = a13;
  v217 = a12;
  v218 = a11;
  v216 = a10;
  v26 = ccspake_sizeof_ctx();
  v27 = ccspake_sizeof_w();
  v28 = ccspake_sizeof_point();
  *&v225 = v23;
  *(&v225 + 1) = v25;
  v211 = v26;
  *&v226 = v26;
  *(&v226 + 1) = v27;
  *v227 = v28;
  *&v227[8] = vdupq_n_s64(0x20uLL);
  v29 = v222;
  v30 = v222 >> 62;
  if ((v222 >> 62) > 1)
  {
    if (v30 != 2)
    {
      goto LABEL_10;
    }

    v32 = *(v223 + 16);
    v31 = *(v223 + 24);
    v33 = __OFSUB__(v31, v32);
    v34 = v31 - v32;
    if (v33)
    {
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    if (v34 < 16)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (!v30)
    {
      if (BYTE6(v222) >= 0x10uLL)
      {
        goto LABEL_14;
      }

LABEL_10:
      sub_1C0D50D78();
      swift_allocError();
      *v35 = 3;
      swift_willThrow();
      sub_1C0CF448C(v217, v215);
      sub_1C0CF448C(v216, v218);
      v36 = a7;
      v37 = a8;
LABEL_11:
      sub_1C0CF448C(v36, v37);
LABEL_28:
      sub_1C0CF448C(v219, v220);
      sub_1C0CF448C(v221, *(&v221 + 1));
      v74 = v223;
      v75 = v29;
      return sub_1C0CF448C(v74, v75);
    }

    if (__OFSUB__(HIDWORD(v223), v223))
    {
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    if (HIDWORD(v223) - v223 < 16)
    {
      goto LABEL_10;
    }
  }

LABEL_14:
  v207 = v28;
  *&v230 = v223;
  *(&v230 + 1) = v222;
  sub_1C0CF6468(v223, v222);
  sub_1C0D7868C();
  v230 = v221;
  v228 = v219;
  v229 = v220;
  if ((v27 + 0x4000000000000000) < 0)
  {
    __break(1u);
    goto LABEL_73;
  }

  if (__OFADD__(2 * v27, 16))
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v209 = a7;
  v210 = a8;
  sub_1C0D789EC();
  sub_1C0D50E20(qword_1EBE6C9D8, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  sub_1C0D17E68();
  sub_1C0D7881C();
  v38 = *(v16 + 8);
  v208 = v16 + 8;
  v39 = v38(v19, v214);
  MEMORY[0x1EEE9AC00](v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D1F0, &qword_1C0D7BFF0);
  v40 = v213;
  v41 = sub_1C0D7867C();
  v42 = v230;
  MEMORY[0x1EEE9AC00](v41);
  sub_1C0D7867C();
  v43 = v230;
  v224 = 0;
  *&v230 = sub_1C0D0F990(v27);
  *(&v230 + 1) = v44;
  sub_1C0D48EC4(&v230, &v224, &v225, 8, v42);
  v45 = v224;
  if (v224)
  {
    v46 = v38;

    v47 = v218;
    v48 = v216;
    if (v45 == -2)
    {
      sub_1C0D50D78();
      swift_allocError();
      *v49 = 0;
    }

    else
    {
      sub_1C0CF8DE0();
      swift_allocError();
      *v71 = v45;
      *(v71 + 4) = 0;
    }

    v72 = v210;
    v73 = v209;
    swift_willThrow();
    sub_1C0CF448C(v230, *(&v230 + 1));
    v46(v21, v214);
    sub_1C0CF448C(v217, v215);
    sub_1C0CF448C(v48, v47);
    sub_1C0CF448C(v73, v72);
    v29 = v222;
    goto LABEL_28;
  }

  v228 = sub_1C0D0F990(v27);
  v229 = v50;
  sub_1C0D48EC4(&v228, &v224, &v225, 8, v43);
  v51 = v224;
  v52 = v218;
  if (v224 == -2)
  {
    sub_1C0D50D78();
    swift_allocError();
    *v77 = 0;
    v53 = v210;
    v29 = v222;
    v54 = v216;
LABEL_32:
    swift_willThrow();
    sub_1C0CF448C(v228, v229);
    sub_1C0CF448C(v230, *(&v230 + 1));
    v38(v21, v214);
    sub_1C0CF448C(v217, v215);
    sub_1C0CF448C(v54, v52);
    v36 = v209;
    v37 = v53;
    goto LABEL_11;
  }

  v53 = v210;
  v29 = v222;
  v54 = v216;
  if (v224)
  {
    sub_1C0CF8DE0();
    swift_allocError();
    *v78 = v51;
    *(v78 + 4) = 0;
    goto LABEL_32;
  }

  v38(v21, v214);
  v55 = *(&v230 + 1);
  v56 = v230;
  v57 = v228;
  v58 = v229;
  LODWORD(v228) = 0;
  *&v230 = sub_1C0D0F990(v207);
  *(&v230 + 1) = v59;
  sub_1C0CF6468(v56, v55);
  sub_1C0CF6468(v57, v58);
  v214 = v55;
  sub_1C0D49680(&v230, v56, v55, v57, v58, &v228, &v225);
  v60 = v228;
  if (v228 == -2)
  {
    sub_1C0D50D78();
    swift_allocError();
    *v79 = 0;
LABEL_35:
    swift_willThrow();
    sub_1C0CF448C(v217, v215);
    sub_1C0CF448C(v54, v52);
    sub_1C0CF448C(v209, v53);
    sub_1C0CF448C(v219, v220);
    sub_1C0CF448C(v221, *(&v221 + 1));
    sub_1C0CF448C(v223, v29);
    sub_1C0CF448C(v56, v214);
    sub_1C0CF448C(v57, v58);
    v75 = *(&v230 + 1);
    v74 = v230;
    return sub_1C0CF448C(v74, v75);
  }

  if (v228)
  {
    sub_1C0CF8DE0();
    swift_allocError();
    *v80 = v60;
    *(v80 + 4) = 0;
    goto LABEL_35;
  }

  v205 = v40;
  v29 = v214;
  sub_1C0CF6468(v56, v214);
  sub_1C0CF448C(v56, v29);
  sub_1C0CF448C(v57, v58);
  v19 = *(&v230 + 1);
  v206 = v230;
  v61 = type metadata accessor for SPAKE2.Verifier(0);
  v62 = *(v61 + 36);
  v21 = type metadata accessor for SPAKE2.SPAKE2Framer(0);
  v63 = *(*(v21 - 1) + 56);
  v64 = v56;
  v65 = v212;
  v203 = v62;
  v63(v212 + v62, 1, 1, v21);
  v66 = *(v61 + 40);
  v63(v65 + v66, 1, 1, v21);
  v27 = v211;
  if ((v211 & 0x8000000000000000) != 0)
  {
LABEL_76:
    __break(1u);
LABEL_77:
    v27 = sub_1C0CFD670(v27);
    goto LABEL_68;
  }

  sub_1C0CF6468(v56, v29);
  v67 = v206;
  v213 = v19;
  sub_1C0CF6468(v206, v19);
  v68 = v64;
  v69 = v29;
  if (v27)
  {
    v70 = sub_1C0D78C2C();
    *(v70 + 16) = v27;
    bzero((v70 + 32), v27);
  }

  else
  {
    v70 = MEMORY[0x1E69E7CC0];
  }

  v81 = v218;
  v82 = v216;
  *v212 = v70;
  LODWORD(v228) = 0;
  v83 = v210 >> 62;
  v208 = v68;
  v84 = v213;
  v202 = v66;
  v211 = v70;
  v204 = v70 + 32;
  if ((v210 >> 62) > 1)
  {
    if (v83 != 2)
    {
      *(&v230 + 6) = 0;
      *&v230 = 0;
      sub_1C0CF6468(v82, v81);
      sub_1C0CF6468(v68, v69);
      sub_1C0CF6468(v67, v84);
      v142 = v217;
      v143 = v69;
      v144 = v215;
      sub_1C0CF6468(v217, v215);
      v145 = v82;
      v146 = v68;
      v147 = v209;
      v148 = v210;
      sub_1C0CF6468(v209, v210);
      sub_1C0CF6468(v146, v143);
      v149 = v213;
      sub_1C0CF6468(v67, v213);
      sub_1C0CF6468(v142, v144);
      sub_1C0CF6468(v145, v218);
      sub_1C0CF6468(v147, v148);
      sub_1C0CF6468(v146, v143);
      sub_1C0CF6468(v67, v149);
      sub_1C0CF6468(v145, v218);
      sub_1C0CF6468(v142, v144);
      v193 = v148;
      v95 = v144;
      v150 = v145;
      v151 = v146;
      v94 = v145;
      v81 = v218;
      v85 = v67;
      v152 = v205;
      sub_1C0D4BBF8(v142, v144, v150, v218, v151, v214, v67, v149, &v228, v204, &v225, v147, v193, &v230, &v230, v142, v144, sub_1C0D4EB2C);
      v205 = v152;
      sub_1C0CF448C(v142, v144);
      v96 = v149;
      goto LABEL_65;
    }

    v98 = v209;
    v99 = *(v209 + 24);
    v201 = *(v209 + 16);
    v100 = v81;
    v200 = v99;
    v101 = v217;
    v102 = v215;
    sub_1C0CF6468(v217, v215);
    sub_1C0CF6468(v82, v100);
    sub_1C0CF6468(v68, v69);
    sub_1C0CF6468(v67, v84);
    sub_1C0CF6468(v98, v210);
    sub_1C0CF6468(v101, v102);
    sub_1C0CF6468(v82, v100);
    v103 = v68;
    v104 = v68;
    v105 = v214;
    sub_1C0CF6468(v104, v214);
    v106 = v213;
    sub_1C0CF6468(v67, v213);
    v107 = v210;
    sub_1C0CF6468(v98, v210);
    sub_1C0CF6468(v103, v105);
    sub_1C0CF6468(v67, v106);
    v108 = v217;
    sub_1C0CF6468(v217, v215);
    sub_1C0CF6468(v82, v100);
    sub_1C0CF6468(v98, v107);
    sub_1C0CF6468(v103, v105);
    sub_1C0CF6468(v67, v106);
    sub_1C0CF6468(v82, v100);
    sub_1C0CF6468(v108, v215);
    sub_1C0CF6468(v98, v107);
    v109 = sub_1C0D7812C();
    if (v109)
    {
      v110 = v109;
      v111 = sub_1C0D7815C();
      v112 = v201;
      if (__OFSUB__(v201, v111))
      {
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
      }

      v113 = v201 - v111 + v110;
      v114 = v216;
      v115 = v213;
    }

    else
    {
      v113 = 0;
      v114 = v216;
      v115 = v213;
      v112 = v201;
    }

    v153 = v200 - v112;
    if (!__OFSUB__(v200, v112))
    {
      v154 = sub_1C0D7814C();
      if (v154 >= v153)
      {
        v155 = v153;
      }

      else
      {
        v155 = v154;
      }

      v156 = v155 + v113;
      if (!v113)
      {
        v156 = 0;
      }

      v201 = v156;
      v157 = v208;
      v158 = v214;
      sub_1C0CF6468(v208, v214);
      v85 = v206;
      sub_1C0CF6468(v206, v115);
      v81 = v218;
      sub_1C0CF6468(v114, v218);
      v90 = v217;
      v159 = v215;
      sub_1C0CF6468(v217, v215);
      v160 = v209;
      v161 = v210;
      sub_1C0CF6468(v209, v210);
      v198 = v159;
      v162 = v159;
      v94 = v216;
      v194 = v161;
      v196 = v113;
      v95 = v162;
      v163 = v213;
      v164 = v205;
      sub_1C0D4BBF8(v90, v162, v216, v81, v157, v158, v85, v213, &v228, v204, &v225, v160, v194, v196, v201, v90, v198, sub_1C0D4EB2C);
      v205 = v164;
      sub_1C0CF448C(v90, v95);
      sub_1C0CF448C(v94, v81);
      sub_1C0CF448C(v157, v158);
      sub_1C0CF448C(v85, v163);
      v165 = v210;
      sub_1C0CF448C(v160, v210);
      sub_1C0CF448C(v90, v95);
      sub_1C0CF448C(v94, v81);
      sub_1C0CF448C(v157, v214);
      sub_1C0CF448C(v85, v163);
      v140 = v160;
      v96 = v163;
      v141 = v165;
      goto LABEL_63;
    }

LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  if (v83)
  {
    v116 = v209;
    v200 = v209;
    v201 = (v116 >> 32) - v116;
    if (v116 >> 32 >= v116)
    {
      v117 = v217;
      v118 = v215;
      sub_1C0CF6468(v217, v215);
      sub_1C0CF6468(v82, v218);
      v119 = v208;
      sub_1C0CF6468(v208, v69);
      v120 = v82;
      v121 = v213;
      sub_1C0CF6468(v67, v213);
      v122 = v210;
      sub_1C0CF6468(v116, v210);
      sub_1C0CF6468(v117, v118);
      v123 = v120;
      v124 = v218;
      sub_1C0CF6468(v123, v218);
      sub_1C0CF6468(v119, v69);
      sub_1C0CF6468(v67, v121);
      sub_1C0CF6468(v116, v122);
      sub_1C0CF6468(v119, v69);
      sub_1C0CF6468(v67, v121);
      sub_1C0CF6468(v117, v118);
      v125 = v216;
      sub_1C0CF6468(v216, v124);
      sub_1C0CF6468(v116, v122);
      sub_1C0CF6468(v119, v69);
      sub_1C0CF6468(v67, v121);
      sub_1C0CF6468(v125, v124);
      sub_1C0CF6468(v217, v215);
      sub_1C0CF6468(v116, v122);
      v126 = sub_1C0D7812C();
      if (!v126)
      {
LABEL_48:
        v128 = v216;
        v129 = v213;
        v85 = v206;
        v130 = v201;
        v131 = v210;
        v132 = sub_1C0D7814C();
        if (v132 >= v130)
        {
          v133 = v130;
        }

        else
        {
          v133 = v132;
        }

        v134 = v133 + v126;
        if (!v126)
        {
          v134 = 0;
        }

        v206 = v134;
        v135 = v214;
        sub_1C0CF6468(v208, v214);
        sub_1C0CF6468(v85, v129);
        v81 = v218;
        sub_1C0CF6468(v128, v218);
        v90 = v217;
        v95 = v215;
        sub_1C0CF6468(v217, v215);
        v136 = v209;
        sub_1C0CF6468(v209, v131);
        v94 = v216;
        v192 = v131;
        v195 = v126;
        v96 = v213;
        v137 = v208;
        v138 = v205;
        sub_1C0D4BBF8(v90, v95, v216, v81, v208, v135, v85, v213, &v228, v204, &v225, v136, v192, v195, v206, v90, v95, sub_1C0D4EB2C);
        v205 = v138;
        sub_1C0CF448C(v90, v95);
        sub_1C0CF448C(v94, v81);
        sub_1C0CF448C(v137, v135);
        sub_1C0CF448C(v85, v96);
        v139 = v210;
        sub_1C0CF448C(v136, v210);
        sub_1C0CF448C(v90, v95);
        sub_1C0CF448C(v94, v81);
        sub_1C0CF448C(v208, v135);
        sub_1C0CF448C(v85, v96);
        v140 = v136;
        v141 = v139;
LABEL_63:
        sub_1C0CF448C(v140, v141);
        goto LABEL_64;
      }

      v127 = sub_1C0D7815C();
      if (!__OFSUB__(v200, v127))
      {
        v126 += v200 - v127;
        goto LABEL_48;
      }

      goto LABEL_81;
    }

    __break(1u);
    goto LABEL_79;
  }

  v85 = v67;
  v86 = v209;
  *&v230 = v209;
  v87 = v210;
  DWORD2(v230) = v210;
  WORD6(v230) = WORD2(v210);
  v88 = v69;
  v201 = &v230 + BYTE6(v210);
  sub_1C0CF6468(v82, v81);
  v89 = v208;
  sub_1C0CF6468(v208, v88);
  sub_1C0CF6468(v85, v84);
  v90 = v217;
  v91 = v82;
  v92 = v215;
  sub_1C0CF6468(v217, v215);
  sub_1C0CF6468(v86, v87);
  sub_1C0CF6468(v89, v88);
  sub_1C0CF6468(v85, v213);
  sub_1C0CF6468(v90, v92);
  sub_1C0CF6468(v91, v81);
  sub_1C0CF6468(v86, v87);
  sub_1C0CF6468(v89, v88);
  sub_1C0CF6468(v85, v213);
  sub_1C0CF6468(v91, v81);
  sub_1C0CF6468(v90, v92);
  v197 = v92;
  v93 = v92;
  v94 = v91;
  v191 = v86;
  v95 = v93;
  v96 = v213;
  v97 = v205;
  sub_1C0D4BBF8(v90, v93, v94, v81, v89, v88, v85, v213, &v228, v204, &v225, v191, v87, &v230, v201, v90, v197, sub_1C0D4EB2C);
  v205 = v97;
LABEL_64:
  sub_1C0CF448C(v90, v95);
LABEL_65:
  sub_1C0CF448C(v94, v81);
  v166 = v81;
  v167 = v208;
  v168 = v214;
  sub_1C0CF448C(v208, v214);
  sub_1C0CF448C(v85, v96);
  v169 = v96;
  v170 = v209;
  v171 = v85;
  v172 = v94;
  v173 = v210;
  sub_1C0CF448C(v209, v210);
  sub_1C0CF448C(v217, v95);
  sub_1C0CF448C(v172, v166);
  sub_1C0CF448C(v167, v168);
  sub_1C0CF448C(v171, v169);
  sub_1C0CF448C(v170, v173);
  v29 = v169;
  v174 = v211;
  *v212 = v211;
  v175 = v228;
  if (v228)
  {
    v176 = v208;
    v177 = v214;
    sub_1C0CF448C(v208, v214);
    sub_1C0CF448C(v171, v29);
    sub_1C0CF8DE0();
    swift_allocError();
    *v178 = v175;
    *(v178 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v219, v220);
    sub_1C0CF448C(v221, *(&v221 + 1));
    sub_1C0CF448C(v223, v222);
    sub_1C0CF448C(v176, v177);
    sub_1C0CF448C(v171, v29);
    sub_1C0CF448C(v217, v215);
    sub_1C0CF448C(v172, v218);
    sub_1C0CF448C(v209, v210);
    goto LABEL_70;
  }

  v21 = v172;
  v19 = v171;
  *&v230 = sub_1C0D0F990(v207);
  *(&v230 + 1) = v179;
  v27 = v174;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_77;
  }

LABEL_68:
  v180 = v208;
  v181 = v212;
  sub_1C0D492F4(&v230, &v228, v27 + 32, &v225);
  *v181 = v27;
  v182 = v228;
  if (!v228)
  {
    sub_1C0CF448C(v219, v220);
    sub_1C0CF448C(v221, *(&v221 + 1));
    sub_1C0CF448C(v223, v222);
    v187 = v214;
    sub_1C0CF448C(v180, v214);
    sub_1C0CF448C(v19, v29);
    sub_1C0CF448C(v217, v215);
    sub_1C0CF448C(v21, v218);
    sub_1C0CF448C(v209, v210);
    v188 = v226;
    *(v181 + 1) = v225;
    *(v181 + 3) = v188;
    *(v181 + 5) = *v227;
    v189 = *&v227[16];
    v181[11] = v187;
    v181[12] = v19;
    v181[13] = v29;
    v190 = v230;
    v181[7] = v189;
    *(v181 + 4) = v190;
    v181[10] = v180;
    *(v181 + 112) = 0;
    sub_1C0CF6468(v190, *(&v190 + 1));
    v75 = v190 >> 64;
    v74 = v190;
    return sub_1C0CF448C(v74, v75);
  }

  v183 = v29;
  v184 = v214;
  sub_1C0CF448C(v180, v214);
  v211 = v27;
  sub_1C0CF448C(v19, v183);
  sub_1C0CF8DE0();
  swift_allocError();
  *v185 = v182;
  *(v185 + 4) = 0;
  swift_willThrow();
  sub_1C0CF448C(v219, v220);
  sub_1C0CF448C(v221, *(&v221 + 1));
  sub_1C0CF448C(v223, v222);
  sub_1C0CF448C(v180, v184);
  sub_1C0CF448C(v19, v183);
  sub_1C0CF448C(v217, v215);
  sub_1C0CF448C(v21, v218);
  sub_1C0CF448C(v209, v210);
  sub_1C0CF448C(v230, *(&v230 + 1));
LABEL_70:

  v186 = v212;
  sub_1C0D13578(v212 + v203, &qword_1EBE6DCB8, &unk_1C0D7D9E0);
  return sub_1C0D13578(v186 + v202, &qword_1EBE6DCB8, &unk_1C0D7D9E0);
}

uint64_t sub_1C0D47EA0(uint64_t a1, unint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v6)
    {
      v7 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v6 == 2)
  {
    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
    v10 = __OFSUB__(v8, v9);
    v7 = v8 - v9;
    if (!v10)
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_8:
    LODWORD(v7) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
      goto LABEL_40;
    }

    v7 = v7;
LABEL_10:
    if (v7 == *(v2 + 40))
    {
      goto LABEL_11;
    }

LABEL_16:
    sub_1C0D50D78();
    swift_allocError();
    *v12 = 1;
    swift_willThrow();
    return v2;
  }

  if (*(v2 + 40))
  {
    goto LABEL_16;
  }

LABEL_11:
  v3 = *(v2 + 56);
  v24 = sub_1C0D0F990(v3);
  v25 = v11;
  v23 = 0;
  v4 = *v2;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if (v6 <= 1)
    {
      goto LABEL_13;
    }

LABEL_25:
    if (v6 != 2)
    {
      goto LABEL_31;
    }

    v16 = *(a1 + 16);
    v17 = sub_1C0D7812C();
    if (v17)
    {
      v18 = sub_1C0D7815C();
      if (__OFSUB__(v16, v18))
      {
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
      }

      v17 += v16 - v18;
    }

    result = sub_1C0D7814C();
    if (!__OFSUB__(*(a1 + 24), *(a1 + 16)))
    {
      if (v17)
      {
        goto LABEL_31;
      }

      __break(1u);
      goto LABEL_47;
    }

    goto LABEL_42;
  }

  v4 = sub_1C0CFD670(v4);
  if (v6 > 1)
  {
    goto LABEL_25;
  }

LABEL_13:
  if (!v6)
  {
    goto LABEL_31;
  }

  if (a1 > a1 >> 32)
  {
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v13 = sub_1C0D7812C();
  if (v13)
  {
    v14 = sub_1C0D7815C();
    if (__OFSUB__(a1, v14))
    {
      goto LABEL_45;
    }

    v13 += a1 - v14;
  }

  result = sub_1C0D7814C();
  if (__OFSUB__(HIDWORD(a1), a1))
  {
    goto LABEL_43;
  }

  if (v13)
  {
LABEL_31:
    v19 = ccspake_kex_process();
    v23 = v19;
    *v2 = v4;
    if (v19 == -2)
    {
      sub_1C0D50D78();
      swift_allocError();
      *v21 = 0;
    }

    else
    {
      if (!v19)
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_34:
          sub_1C0D49BFC(&v24, &v23, (v4 + 32), v3);
          *v2 = v4;
          v2 = v24;
          v20 = v25;
          sub_1C0CF6468(v24, v25);
          sub_1C0CF448C(v2, v20);
          return v2;
        }

LABEL_40:
        v4 = sub_1C0CFD670(v4);
        goto LABEL_34;
      }

      v2 = v19;
      sub_1C0CF8DE0();
      swift_allocError();
      *v22 = v2;
      *(v22 + 4) = 0;
    }

    swift_willThrow();
    sub_1C0CF448C(v24, v25);
    return v2;
  }

LABEL_47:
  __break(1u);
  return result;
}

void sub_1C0D4822C(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v10 = *(v4 + 48);
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    v9 = sub_1C0CFD670(v9);
    goto LABEL_6;
  }

  v6 = v5;
  v7 = a2;
  v8 = a1;
  v3 = a3;
  if (v10)
  {
    v11 = sub_1C0D78C2C();
    *(v11 + 16) = v10;
    bzero((v11 + 32), v10);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v18 = v11;
  v17 = 0;
  v9 = *v4;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  sub_1C0CF6468(v8, v7);
  v12 = v6;
  sub_1C0D507B4(v8, v7, &v17, (v9 + 32), v8, v7, v10, &v18);
  *v4 = v9;
  v13 = v17;
  if (v17 == -2)
  {
    sub_1C0D50D78();
    swift_allocError();
    *v14 = 0;
LABEL_12:
    swift_willThrow();

    return;
  }

  if (v17)
  {
    sub_1C0CF8DE0();
    swift_allocError();
    *v15 = v13;
    *(v15 + 4) = 0;
    goto LABEL_12;
  }

  sub_1C0CF2CF4((v18 + 32), &v18[*(v18 + 2) + 32], &v16);
  if (v12)
  {

    __break(1u);
  }

  else
  {

    *v3 = v16;
  }
}

void sub_1C0D483CC(void *a1@<X8>)
{
  v7 = *(v2 + 48);
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    v6 = sub_1C0CFD670(v6);
    goto LABEL_6;
  }

  v4 = v3;
  v5 = a1;
  if (v7)
  {
    v1 = sub_1C0D78C2C();
    *(v1 + 16) = v7;
    bzero((v1 + 32), v7);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  v6 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  v8 = MEMORY[0x1C68E4070](v6 + 32, v7, v1 + 32);
  *v2 = v6;
  if (v8 == -2)
  {
    sub_1C0D50D78();
    swift_allocError();
    *v9 = 0;
LABEL_12:
    swift_willThrow();

    return;
  }

  if (v8)
  {
    v10 = v8;
    sub_1C0CF8DE0();
    swift_allocError();
    *v11 = v10;
    *(v11 + 4) = 0;
    goto LABEL_12;
  }

  sub_1C0CF2CF4(v1 + 32, v1 + 32 + *(v1 + 16), &v12);
  if (v4)
  {

    __break(1u);
  }

  else
  {

    *v5 = v12;
  }
}

void SPAKE2.Verifier.processPeerVerificationTag(peerVerificationTag:)(uint64_t a1, unint64_t a2)
{
  v6 = sub_1C0D786AC();
  v72 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  *&v64 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v50 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v69 = v50 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = v50 - v14;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D8B0, &qword_1C0D7D9F0);
  v65 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v17 = v50 - v16;
  v67 = v2;
  SPAKE2.Prover.processPeerVerificationTagAndGenerateKey(peerVerificationTag:)(a1, a2, &v70);
  if (!v3)
  {
    v62 = v70;
    v66 = 0;
    sub_1C0D50DCC();

    v18 = v15;
    sub_1C0D7868C();
    v19 = sub_1C0D789CC();
    v70 = sub_1C0D0F990(v19);
    v71 = v20;
    v21 = sub_1C0D789EC();
    v22 = sub_1C0D50E20(qword_1EBE6C9D8, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
    v23 = sub_1C0D17E68();
    sub_1C0D787FC();
    sub_1C0D13830(v70, v71);
    v24 = v72[1];
    v57 = v11;
    v58 = v72 + 1;
    v61 = v24;
    v63 = v18;
    v24(v18, v6);
    v70 = sub_1C0D07698(0x6B207265766F7270, 0xEA00000000007965);
    v71 = v25;
    v26 = sub_1C0D3339C();
    sub_1C0D787EC();
    sub_1C0D13830(v70, v71);
    v70 = sub_1C0D07698(0x7265696669726576, 0xEC00000079656B20);
    v71 = v27;
    v55 = v22;
    v56 = v23;
    v52 = v17;
    v53 = v21;
    v54 = v26;
    sub_1C0D787EC();
    sub_1C0D13830(v70, v71);
    v70 = sub_1C0D07698(0x6E207265766F7270, 0xEC00000065636E6FLL);
    v71 = v28;
    v29 = v57;
    sub_1C0D787EC();
    sub_1C0D13830(v70, v71);
    v51 = v72[2];
    v30 = v64;
    v51(v64, v29, v6);
    v50[2] = sub_1C0D50E20(&qword_1EBE6DCD0, MEMORY[0x1E6966458], MEMORY[0x1E6966450]);
    v50[1] = sub_1C0D332D0;
    v31 = v66;
    sub_1C0D7819C();
    v66 = v31;
    v32 = v61;
    v61(v30, v6);
    v32(v29, v6);
    v59 = v71;
    v60 = v70;
    v70 = sub_1C0D07698(0x7265696669726576, 0xEE0065636E6F6E20);
    v71 = v33;
    v34 = v52;
    v35 = v68;
    sub_1C0D787EC();
    sub_1C0D13830(v70, v71);
    v36 = v51;
    v51(v30, v29, v6);
    v37 = v66;
    sub_1C0D7819C();
    v66 = v37;

    v32(v30, v6);
    v32(v29, v6);
    (*(v65 + 8))(v34, v35);
    v68 = v70;
    v65 = v71;
    v38 = type metadata accessor for SPAKE2.Verifier(0);
    v39 = v67;
    v40 = v67 + *(v38 + 40);
    sub_1C0D13578(v40, &qword_1EBE6DCB8, &unk_1C0D7D9E0);
    v36(v40, v63, v6);
    v41 = type metadata accessor for SPAKE2.SPAKE2Framer(0);
    v42 = v69;
    v36(v40 + v41[5], v69, v6);
    v43 = v40 + v41[6];
    v64 = xmmword_1C0D7D9D0;
    *v43 = xmmword_1C0D7D9D0;
    *(v40 + v41[7]) = 0;
    sub_1C0D13830(*v43, *(v43 + 8));
    v44 = v59;
    *v43 = v60;
    *(v43 + 8) = v44;
    v45 = *(*(v41 - 1) + 56);
    v45(v40, 0, 1, v41);
    v46 = v39 + *(v38 + 36);
    sub_1C0D13578(v46, &qword_1EBE6DCB8, &unk_1C0D7D9E0);
    v47 = v46 + v41[6];
    *v47 = v64;
    *(v46 + v41[7]) = 0;
    v48 = v72[4];
    v48(v46, v42, v6);
    sub_1C0D13830(*v47, *(v47 + 8));
    v49 = v65;
    *v47 = v68;
    *(v47 + 8) = v49;
    v48(v46 + v41[5], v63, v6);
    v45(v46, 0, 1, v41);
    *(v67 + 112) = 1;
  }
}

uint64_t SPAKE2.Verifier.seal<A, B>(_:authenticating:)@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  if (*(v7 + 112) == 1)
  {
    v13 = *(type metadata accessor for SPAKE2.Verifier(0) + 40);
    v14 = type metadata accessor for SPAKE2.SPAKE2Framer(0);
    result = (*(*(v14 - 8) + 48))(v7 + v13, 1, v14);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      return sub_1C0D435A8(a3, a4, a5, a6, a7);
    }
  }

  else
  {
    sub_1C0D50D78();
    swift_allocError();
    *v16 = 4;
    return swift_willThrow();
  }

  return result;
}

uint64_t SPAKE2.Verifier.open<A>(_:authenticating:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + 112) == 1)
  {
    v5 = v4 + *(type metadata accessor for SPAKE2.Verifier(0) + 36);
    v6 = type metadata accessor for SPAKE2.SPAKE2Framer(0);
    result = (*(*(v6 - 8) + 48))(v5, 1, v6);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      return sub_1C0D7873C();
    }
  }

  else
  {
    sub_1C0D50D78();
    swift_allocError();
    *v8 = 4;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C0D48EC4(uint64_t *a1, _DWORD *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (!v9)
    {
      sub_1C0D78BFC();
      sub_1C0CF448C(v8, v7);
      LOWORD(v23) = v7;
      BYTE2(v23) = BYTE2(v7);
      HIBYTE(v23) = BYTE3(v7);
      LOBYTE(v24) = BYTE4(v7);
      HIBYTE(v24) = BYTE5(v7);
      if (!__OFADD__(a3[3], a4))
      {
        *a2 = ccspake_reduce_w();
        result = swift_bridgeObjectRelease_n();
        *a1 = v8;
        a1[1] = v23 | ((v24 | (BYTE6(v7) << 16)) << 32);
        return result;
      }

      __break(1u);
      goto LABEL_25;
    }

    v15 = v7 & 0x3FFFFFFFFFFFFFFFLL;
    sub_1C0D78BFC();
    sub_1C0CF6468(v8, v7);
    sub_1C0CF448C(v8, v7);
    *a1 = xmmword_1C0D7BAB0;
    sub_1C0CF448C(0, 0xC000000000000000);
    sub_1C0D78BFC();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = v8 >> 32;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      if (v17 < v8)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      if (sub_1C0D7812C() && __OFSUB__(v8, sub_1C0D7815C()))
      {
LABEL_32:
        __break(1u);
      }

      sub_1C0D7818C();
      swift_allocObject();
      v18 = sub_1C0D7810C();

      v15 = v18;
      v17 = v8 >> 32;
    }

    if (v17 < v8)
    {
      goto LABEL_27;
    }

    result = sub_1C0D7812C();
    if (result)
    {
      if (__OFSUB__(v8, sub_1C0D7815C()))
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      sub_1C0D7814C();
      if (__OFADD__(a3[3], a4))
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      *a2 = ccspake_reduce_w();
      swift_bridgeObjectRelease_n();

      v14 = v15 | 0x4000000000000000;
      *a1 = v8;
LABEL_23:
      a1[1] = v14;
      return result;
    }

LABEL_34:
    __break(1u);
    return result;
  }

  if (v9 == 2)
  {
    sub_1C0D78BFC();

    sub_1C0CF448C(v8, v7);
    *a1 = xmmword_1C0D7BAB0;
    sub_1C0CF448C(0, 0xC000000000000000);
    sub_1C0D7823C();
    v12 = v8;
    v13 = *(v8 + 16);
    if (sub_1C0D7812C())
    {
      if (__OFSUB__(v13, sub_1C0D7815C()))
      {
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      sub_1C0D7814C();
      if (__OFADD__(a3[3], a4))
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      *a2 = ccspake_reduce_w();
      result = swift_bridgeObjectRelease_n();
      v14 = v7 & 0x3FFFFFFFFFFFFFFFLL | 0x8000000000000000;
      *a1 = v12;
      goto LABEL_23;
    }

    __break(1u);
    goto LABEL_34;
  }

  if (__OFADD__(a3[3], a4))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  *a2 = ccspake_reduce_w();
}

uint64_t sub_1C0D492F4(uint64_t *a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v8 != 2)
    {
      result = ccspake_kex_generate();
      *a2 = result;
      return result;
    }

    sub_1C0CF448C(v7, v6);
    *a1 = xmmword_1C0D7BAB0;
    sub_1C0CF448C(0, 0xC000000000000000);
    sub_1C0D7823C();
    v10 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    v11 = *(v7 + 16);
    result = sub_1C0D7812C();
    if (!result)
    {
      __break(1u);
      goto LABEL_26;
    }

    if (!__OFSUB__(v11, sub_1C0D7815C()))
    {
      sub_1C0D7814C();
      result = ccspake_kex_generate();
      *a2 = result;
      v12 = v10 | 0x8000000000000000;
      *a1 = v7;
LABEL_19:
      a1[1] = v12;
      return result;
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v8)
  {
    sub_1C0CF448C(v7, v6);
    LOWORD(v18) = v6;
    BYTE2(v18) = BYTE2(v6);
    HIBYTE(v18) = BYTE3(v6);
    LOBYTE(v19) = BYTE4(v6);
    HIBYTE(v19) = BYTE5(v6);
    result = ccspake_kex_generate();
    *a2 = result;
    *a1 = v7;
    a1[1] = v18 | ((v19 | (BYTE6(v6) << 16)) << 32);
    return result;
  }

  v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;

  sub_1C0CF448C(v7, v6);
  *a1 = xmmword_1C0D7BAB0;
  sub_1C0CF448C(0, 0xC000000000000000);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = v7 >> 32;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    if (v15 < v7)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (sub_1C0D7812C() && __OFSUB__(v7, sub_1C0D7815C()))
    {
LABEL_24:
      __break(1u);
    }

    sub_1C0D7818C();
    swift_allocObject();
    v16 = sub_1C0D7810C();

    v13 = v16;
    v15 = v7 >> 32;
  }

  if (v15 < v7)
  {
    goto LABEL_21;
  }

  result = sub_1C0D7812C();
  if (result)
  {
    if (!__OFSUB__(v7, sub_1C0D7815C()))
    {
      sub_1C0D7814C();
      *a2 = ccspake_kex_generate();

      v12 = v13 | 0x4000000000000000;
      *a1 = v7;
      goto LABEL_19;
    }

    goto LABEL_22;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1C0D49680(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, _DWORD *a6, uint64_t *a7)
{
  v51 = *MEMORY[0x1E69E9840];
  v13 = *a1;
  v12 = a1[1];
  v14 = v12 >> 62;
  if ((v12 >> 62) <= 1)
  {
    if (!v14)
    {
      sub_1C0CF6468(a2, a3);
      sub_1C0CF6468(a4, a5);
      sub_1C0CF448C(v13, v12);
      *&v50 = v13;
      WORD4(v50) = v12;
      BYTE10(v50) = BYTE2(v12);
      BYTE11(v50) = BYTE3(v12);
      BYTE12(v50) = BYTE4(v12);
      BYTE13(v50) = BYTE5(v12);
      BYTE14(v50) = BYTE6(v12);
      sub_1C0D43118(&v50, &v50 + BYTE6(v12), a2, a3, a4, a5, a6, a7);
      v16 = v50;
      v17 = DWORD2(v50) | ((WORD6(v50) | (BYTE14(v50) << 16)) << 32);
      sub_1C0CF448C(a2, a3);
      sub_1C0CF448C(a4, a5);
      sub_1C0CF448C(a2, a3);
      result = sub_1C0CF448C(a4, a5);
      *a1 = v16;
      a1[1] = v17;
      return result;
    }

    v30 = v12 & 0x3FFFFFFFFFFFFFFFLL;
    sub_1C0CF6468(a2, a3);
    sub_1C0CF6468(a4, a5);
    sub_1C0CF6468(v13, v12);
    sub_1C0CF448C(v13, v12);
    *a1 = xmmword_1C0D7BAB0;
    sub_1C0CF448C(0, 0xC000000000000000);
    sub_1C0CF6468(a2, a3);
    sub_1C0CF6468(a4, a5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v13;
    v33 = v13 >> 32;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      if (v33 < v13)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (sub_1C0D7812C() && __OFSUB__(v13, sub_1C0D7815C()))
      {
LABEL_31:
        __break(1u);
      }

      sub_1C0D7818C();
      swift_allocObject();
      v32 = v13;
      v34 = sub_1C0D7810C();

      v30 = v34;
      v33 = v13 >> 32;
    }

    v45 = a4;
    v35 = v33 - v32;
    if (v33 >= v32)
    {
      v42 = a1;
      v43 = a5;
      v36 = v32;

      result = sub_1C0D7812C();
      if (result)
      {
        v37 = result;
        v38 = sub_1C0D7815C();
        v39 = v36 - v38;
        if (!__OFSUB__(v36, v38))
        {
          v40 = sub_1C0D7814C();
          if (v40 >= v35)
          {
            v41 = v35;
          }

          else
          {
            v41 = v40;
          }

          sub_1C0D43118(v37 + v39, v37 + v39 + v41, a2, a3, v45, v43, a6, a7);

          sub_1C0CF448C(a2, a3);
          sub_1C0CF448C(v45, v43);
          sub_1C0CF448C(a2, a3);
          sub_1C0CF448C(v45, v43);
          sub_1C0CF448C(a2, a3);
          result = sub_1C0CF448C(v45, v43);
          *v42 = v13;
          v42[1] = v30 | 0x4000000000000000;
          return result;
        }

        goto LABEL_29;
      }

LABEL_33:
      __break(1u);
      return result;
    }

    goto LABEL_27;
  }

  if (v14 != 2)
  {
    *(&v50 + 7) = 0;
    *&v50 = 0;
    sub_1C0D43118(&v50, &v50, a2, a3, a4, a5, a6, a7);
    sub_1C0CF448C(a2, a3);
    return sub_1C0CF448C(a4, a5);
  }

  sub_1C0CF6468(a2, a3);
  v44 = a4;
  sub_1C0CF6468(a4, a5);

  sub_1C0CF448C(v13, v12);
  *&v50 = v13;
  *(&v50 + 1) = v12 & 0x3FFFFFFFFFFFFFFFLL;
  *a1 = xmmword_1C0D7BAB0;
  sub_1C0CF448C(0, 0xC000000000000000);
  sub_1C0D7823C();
  v19 = *(&v50 + 1);
  v20 = *(v50 + 16);
  v21 = *(v50 + 24);
  v22 = sub_1C0D7812C();
  if (!v22)
  {
    sub_1C0CF448C(a2, a3);
    result = sub_1C0CF448C(v44, a5);
    __break(1u);
    goto LABEL_33;
  }

  v23 = v22;
  v24 = sub_1C0D7815C();
  v25 = v20 - v24;
  if (__OFSUB__(v20, v24))
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v26 = __OFSUB__(v21, v20);
  v27 = v21 - v20;
  if (v26)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v28 = sub_1C0D7814C();
  if (v28 >= v27)
  {
    v29 = v27;
  }

  else
  {
    v29 = v28;
  }

  sub_1C0D43118(v23 + v25, v23 + v25 + v29, a2, a3, v44, a5, a6, a7);
  sub_1C0CF448C(a2, a3);
  sub_1C0CF448C(v44, a5);
  sub_1C0CF448C(a2, a3);
  result = sub_1C0CF448C(v44, a5);
  *a1 = v50;
  a1[1] = v19 | 0x8000000000000000;
  return result;
}

uint64_t sub_1C0D49BFC(uint64_t *a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v8 != 2)
    {
      result = ccspake_mac_compute();
      *a2 = result;
      return result;
    }

    sub_1C0CF448C(v7, v6);
    *a1 = xmmword_1C0D7BAB0;
    sub_1C0CF448C(0, 0xC000000000000000);
    sub_1C0D7823C();
    v10 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    v11 = *(v7 + 16);
    result = sub_1C0D7812C();
    if (!result)
    {
      __break(1u);
      goto LABEL_26;
    }

    if (!__OFSUB__(v11, sub_1C0D7815C()))
    {
      sub_1C0D7814C();
      result = ccspake_mac_compute();
      *a2 = result;
      v12 = v10 | 0x8000000000000000;
      *a1 = v7;
LABEL_19:
      a1[1] = v12;
      return result;
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v8)
  {
    sub_1C0CF448C(v7, v6);
    LOWORD(v18) = v6;
    BYTE2(v18) = BYTE2(v6);
    HIBYTE(v18) = BYTE3(v6);
    LOBYTE(v19) = BYTE4(v6);
    HIBYTE(v19) = BYTE5(v6);
    result = ccspake_mac_compute();
    *a2 = result;
    *a1 = v7;
    a1[1] = v18 | ((v19 | (BYTE6(v6) << 16)) << 32);
    return result;
  }

  v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;

  sub_1C0CF448C(v7, v6);
  *a1 = xmmword_1C0D7BAB0;
  sub_1C0CF448C(0, 0xC000000000000000);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = v7 >> 32;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    if (v15 < v7)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (sub_1C0D7812C() && __OFSUB__(v7, sub_1C0D7815C()))
    {
LABEL_24:
      __break(1u);
    }

    sub_1C0D7818C();
    swift_allocObject();
    v16 = sub_1C0D7810C();

    v13 = v16;
    v15 = v7 >> 32;
  }

  if (v15 < v7)
  {
    goto LABEL_21;
  }

  result = sub_1C0D7812C();
  if (result)
  {
    if (!__OFSUB__(v7, sub_1C0D7815C()))
    {
      sub_1C0D7814C();
      *a2 = ccspake_mac_compute();

      v12 = v13 | 0x4000000000000000;
      *a1 = v7;
      goto LABEL_19;
    }

    goto LABEL_22;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1C0D49F80(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, _DWORD *a7, uint64_t a8, void *a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unint64_t a19, uint64_t a20)
{
  v21 = v20;
  v22 = a19;
  v24 = a15;
  v23 = a16;
  v25 = a14;
  v26 = a11;
  v27 = a2 >> 62;
  v28 = a10;
  if ((a2 >> 62) <= 1)
  {
    if (!v27)
    {
      v29 = a6 >> 62;
      if ((a6 >> 62) > 1)
      {
        if (v29 != 2)
        {
          result = ccrng();
          if (result)
          {
            v32 = a11;
            v71 = a11 >> 62;
            v34 = a16;
            if ((a11 >> 62) <= 1)
            {
              v36 = a20;
              v35 = a12;
              v23 = a10;
              if (!v71 || !__OFSUB__(HIDWORD(a10), a10))
              {
                goto LABEL_207;
              }

              goto LABEL_582;
            }

            goto LABEL_117;
          }

          goto LABEL_630;
        }

        v116 = a14;
        v117 = a10;
        v25 = a15;
        v47 = *(a5 + 16);
        v28 = sub_1C0D7812C();
        if (v28)
        {
          v48 = sub_1C0D7815C();
          if (__OFSUB__(v47, v48))
          {
LABEL_572:
            __break(1u);
LABEL_573:
            __break(1u);
            goto LABEL_574;
          }

          v28 += v47 - v48;
        }

        v21 = v20;
        sub_1C0D7814C();
        result = ccrng();
        if (result)
        {
          v32 = a11;
          v22 = a19;
          v34 = a16;
          v49 = a11 >> 62;
          v36 = a20;
          v35 = a12;
          if ((a11 >> 62) <= 1)
          {
            v24 = a15;
            if (v49)
            {
              goto LABEL_259;
            }

            goto LABEL_265;
          }

LABEL_125:
          v24 = v25;
          if (v49 == 2)
          {
            v25 = v116;
            v55 = *(v117 + 24);
            if (!__OFSUB__(v55, *(v117 + 16)))
            {
              goto LABEL_266;
            }

            __break(1u);
            goto LABEL_129;
          }

LABEL_265:
          v25 = v116;
          goto LABEL_266;
        }

        goto LABEL_632;
      }

      if (!v29)
      {
        result = ccrng();
        if (result)
        {
          v32 = a11;
          v33 = a11 >> 62;
          v34 = a16;
          if ((a11 >> 62) <= 1)
          {
            v36 = a20;
            v35 = a12;
            v23 = a10;
            if (!v33)
            {
              goto LABEL_191;
            }

LABEL_183:
            if (!__OFSUB__(HIDWORD(v23), v23))
            {
              goto LABEL_191;
            }

            goto LABEL_580;
          }

          v36 = a20;
          v35 = a12;
          v23 = a10;
          if (v33 != 2 || (v46 = *(a10 + 24), !__OFSUB__(v46, *(a10 + 16))))
          {
LABEL_191:
            if (v35)
            {
              v81 = v24 >> 62;
              if ((v24 >> 62) <= 1)
              {
                if (!v81)
                {
                  goto LABEL_224;
                }

                goto LABEL_223;
              }

              if (v81 != 2 || !__OFSUB__(*(v25 + 24), *(v25 + 16)))
              {
LABEL_224:
                if (v34)
                {
                  v85 = v22 >> 62;
                  if ((v22 >> 62) <= 1)
                  {
                    if (!v85)
                    {
                      goto LABEL_304;
                    }

                    goto LABEL_303;
                  }

                  if (v85 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
                  {
LABEL_304:
                    if (!v36)
                    {
                      __break(1u);
LABEL_306:
                      if (!__OFSUB__(HIDWORD(a18), a18))
                      {
                        goto LABEL_307;
                      }

                      goto LABEL_593;
                    }

LABEL_509:
                    *a7 = ccspake_prover_initialize();
                    sub_1C0CF448C(a3, a4);
                    sub_1C0CF448C(a5, a6);
                    goto LABEL_564;
                  }

                  __break(1u);
LABEL_232:
                  if (!__OFSUB__(HIDWORD(v25), v25))
                  {
                    goto LABEL_233;
                  }

LABEL_585:
                  __break(1u);
                  goto LABEL_586;
                }

LABEL_645:
                __break(1u);
                goto LABEL_646;
              }

              __break(1u);
LABEL_199:
              if (v35)
              {
                v82 = v24 >> 62;
                if ((v24 >> 62) <= 1)
                {
                  if (v82)
                  {
                    goto LABEL_232;
                  }

LABEL_233:
                  if (v34)
                  {
                    v86 = v22 >> 62;
                    if ((v22 >> 62) <= 1)
                    {
                      if (v86)
                      {
                        goto LABEL_306;
                      }

LABEL_307:
                      if (v36)
                      {
                        *a7 = ccspake_prover_initialize();
                        sub_1C0CF448C(a3, a4);
                        sub_1C0CF448C(a5, v26);
LABEL_564:
                        sub_1C0CF448C(v23, v32);
                        sub_1C0CF448C(v25, v24);
                        return sub_1C0CF448C(a18, v22);
                      }

                      goto LABEL_655;
                    }

                    if (v86 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
                    {
                      goto LABEL_307;
                    }

                    __break(1u);
LABEL_241:
                    if (!__OFSUB__(HIDWORD(v25), v25))
                    {
                      goto LABEL_242;
                    }

LABEL_586:
                    __break(1u);
                    goto LABEL_587;
                  }

LABEL_646:
                  __break(1u);
                  goto LABEL_647;
                }

                if (v82 != 2 || !__OFSUB__(*(v25 + 24), *(v25 + 16)))
                {
                  goto LABEL_233;
                }

                __break(1u);
LABEL_207:
                if (v35)
                {
                  v83 = v24 >> 62;
                  if ((v24 >> 62) <= 1)
                  {
                    if (v83)
                    {
                      goto LABEL_241;
                    }

LABEL_242:
                    if (v34)
                    {
                      v87 = v22 >> 62;
                      if ((v22 >> 62) <= 1)
                      {
                        if (v87 && __OFSUB__(HIDWORD(a18), a18))
                        {
                          goto LABEL_594;
                        }

                        goto LABEL_310;
                      }

                      if (v87 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
                      {
LABEL_310:
                        if (v36)
                        {
                          goto LABEL_509;
                        }

                        __break(1u);
                        goto LABEL_312;
                      }

                      __break(1u);
LABEL_250:
                      if (!__OFSUB__(HIDWORD(v25), v25))
                      {
                        goto LABEL_251;
                      }

LABEL_587:
                      __break(1u);
LABEL_588:
                      __break(1u);
                      goto LABEL_589;
                    }

LABEL_647:
                    __break(1u);
                    goto LABEL_648;
                  }

                  if (v83 != 2 || !__OFSUB__(*(v25 + 24), *(v25 + 16)))
                  {
                    goto LABEL_242;
                  }

                  __break(1u);
                  goto LABEL_215;
                }

LABEL_639:
                __break(1u);
LABEL_640:
                __break(1u);
                goto LABEL_641;
              }

LABEL_638:
              __break(1u);
              goto LABEL_639;
            }

LABEL_637:
            __break(1u);
            goto LABEL_638;
          }

          __break(1u);
          goto LABEL_113;
        }

        __break(1u);
LABEL_629:
        __break(1u);
LABEL_630:
        __break(1u);
LABEL_631:
        __break(1u);
LABEL_632:
        __break(1u);
LABEL_633:
        __break(1u);
        goto LABEL_634;
      }

      v116 = a14;
      v117 = a10;
      v64 = a5;
      if (a5 <= a5 >> 32)
      {
        v25 = a15;
        v28 = sub_1C0D7812C();
        if (!v28)
        {
LABEL_69:
          v21 = v20;
          sub_1C0D7814C();
          result = ccrng();
          if (!result)
          {
LABEL_642:
            __break(1u);
            goto LABEL_643;
          }

          v32 = a11;
          v22 = a19;
          v34 = a16;
          v66 = a11 >> 62;
          v36 = a20;
          v35 = a12;
          if ((a11 >> 62) <= 1)
          {
            v24 = a15;
            if (v66)
            {
              v25 = a14;
              if (__OFSUB__(HIDWORD(a10), a10))
              {
LABEL_602:
                __break(1u);
                goto LABEL_603;
              }

              goto LABEL_378;
            }

            goto LABEL_377;
          }

LABEL_145:
          v24 = v25;
          if (v66 != 2)
          {
LABEL_377:
            v25 = v116;
LABEL_378:
            v23 = v117;
            if (!v35)
            {
LABEL_663:
              __break(1u);
              goto LABEL_664;
            }

            v99 = v24 >> 62;
            if ((v24 >> 62) <= 1)
            {
              if (v99)
              {
LABEL_440:
                if (__OFSUB__(HIDWORD(v25), v25))
                {
LABEL_611:
                  __break(1u);
                  goto LABEL_612;
                }
              }

LABEL_441:
              if (!v34)
              {
LABEL_673:
                __break(1u);
                goto LABEL_674;
              }

              v104 = v22 >> 62;
              if ((v22 >> 62) <= 1)
              {
                if (v104)
                {
LABEL_498:
                  if (__OFSUB__(HIDWORD(a18), a18))
                  {
LABEL_618:
                    __break(1u);
                    goto LABEL_619;
                  }
                }

LABEL_499:
                if (!v36)
                {
LABEL_681:
                  __break(1u);
                  goto LABEL_682;
                }

                if (v28)
                {
                  goto LABEL_509;
                }

                __break(1u);
                goto LABEL_502;
              }

              if (v104 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
              {
                goto LABEL_499;
              }

              __break(1u);
              goto LABEL_449;
            }

            if (v99 != 2 || !__OFSUB__(*(v25 + 24), *(v25 + 16)))
            {
              goto LABEL_441;
            }

            __break(1u);
            goto LABEL_386;
          }

          v25 = v116;
          v78 = *(v117 + 24);
          if (!__OFSUB__(v78, *(v117 + 16)))
          {
            goto LABEL_378;
          }

          __break(1u);
LABEL_149:
          v25 = v116;
          if (v78 != 2)
          {
LABEL_386:
            v23 = v117;
LABEL_387:
            if (!v35)
            {
LABEL_664:
              __break(1u);
              goto LABEL_665;
            }

            v100 = v24 >> 62;
            if ((v24 >> 62) <= 1)
            {
              if (v100)
              {
LABEL_449:
                if (__OFSUB__(HIDWORD(v25), v25))
                {
LABEL_612:
                  __break(1u);
                  goto LABEL_613;
                }
              }

LABEL_450:
              if (!v34)
              {
LABEL_674:
                __break(1u);
                goto LABEL_675;
              }

              v105 = v22 >> 62;
              if ((v22 >> 62) <= 1)
              {
                if (v105)
                {
LABEL_502:
                  if (__OFSUB__(HIDWORD(a18), a18))
                  {
LABEL_619:
                    __break(1u);
LABEL_620:
                    __break(1u);
LABEL_621:
                    __break(1u);
                    goto LABEL_622;
                  }
                }

LABEL_503:
                if (!v36)
                {
LABEL_682:
                  __break(1u);
                  goto LABEL_683;
                }

                if (!v21)
                {
LABEL_684:
                  __break(1u);
                  goto LABEL_685;
                }

LABEL_505:
                *a7 = ccspake_prover_initialize();
                sub_1C0CF448C(a3, a4);
                v109 = a5;
                v110 = v28;
LABEL_563:
                sub_1C0CF448C(v109, v110);
                goto LABEL_564;
              }

              if (v105 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
              {
                goto LABEL_503;
              }

              __break(1u);
              goto LABEL_458;
            }

            if (v100 != 2 || !__OFSUB__(*(v25 + 24), *(v25 + 16)))
            {
              goto LABEL_450;
            }

            __break(1u);
            goto LABEL_395;
          }

          v23 = v117;
          v63 = *(v117 + 24);
          if (!__OFSUB__(v63, *(v117 + 16)))
          {
            goto LABEL_387;
          }

          __break(1u);
          goto LABEL_153;
        }

        v65 = sub_1C0D7815C();
        if (!__OFSUB__(v64, v65))
        {
          v28 += v64 - v65;
          goto LABEL_69;
        }

        goto LABEL_575;
      }

      goto LABEL_568;
    }

    v115 = v20;
    v41 = a1;
    if (a1 <= a1 >> 32)
    {
      v116 = a14;
      v117 = a10;
      v25 = a15;
      v42 = sub_1C0D7812C();
      if (!v42)
      {
        v21 = 0;
        goto LABEL_51;
      }

      v43 = v42;
      v44 = sub_1C0D7815C();
      if (!__OFSUB__(v41, v44))
      {
        v21 = v41 - v44 + v43;
LABEL_51:
        sub_1C0D7814C();
        v28 = a6;
        v59 = a6 >> 62;
        if ((a6 >> 62) > 1)
        {
          if (v59 != 2)
          {
            result = ccrng();
            if (!result)
            {
LABEL_643:
              __break(1u);
              goto LABEL_644;
            }

            v22 = a19;
            v32 = a11;
            v34 = a16;
            v78 = a11 >> 62;
            v24 = a15;
            v36 = a20;
            v35 = a12;
            if ((a11 >> 62) <= 1)
            {
              v25 = a14;
              if (v78)
              {
                v23 = a10;
                if (__OFSUB__(HIDWORD(a10), a10))
                {
LABEL_603:
                  __break(1u);
                  goto LABEL_604;
                }

                goto LABEL_387;
              }

              goto LABEL_386;
            }

            goto LABEL_149;
          }

          v61 = *(a5 + 16);
          v28 = sub_1C0D7812C();
          if (v28)
          {
            v62 = sub_1C0D7815C();
            if (__OFSUB__(v61, v62))
            {
LABEL_577:
              __break(1u);
              goto LABEL_578;
            }

            v28 += v61 - v62;
          }

          v32 = a11;
          sub_1C0D7814C();
          result = ccrng();
          if (!result)
          {
LABEL_653:
            __break(1u);
            goto LABEL_654;
          }

          v22 = a19;
          v34 = a16;
          v63 = a11 >> 62;
          v31 = a20;
          v35 = a12;
          if ((a11 >> 62) <= 1)
          {
            v24 = a15;
            if (v63)
            {
LABEL_467:
              v25 = v116;
              if (__OFSUB__(HIDWORD(v117), v117))
              {
LABEL_614:
                __break(1u);
                goto LABEL_615;
              }

              goto LABEL_472;
            }

            goto LABEL_471;
          }

LABEL_153:
          v24 = v25;
          if (v63 == 2)
          {
            v25 = v116;
            v74 = *(v117 + 24);
            if (!__OFSUB__(v74, *(v117 + 16)))
            {
              goto LABEL_472;
            }

            __break(1u);
LABEL_157:
            v24 = v25;
            if (v74 == 2)
            {
              v25 = v116;
              v77 = *(v117 + 24);
              if (!__OFSUB__(v77, *(v117 + 16)))
              {
                goto LABEL_481;
              }

              __break(1u);
              goto LABEL_161;
            }

LABEL_480:
            v25 = v116;
            goto LABEL_481;
          }

LABEL_471:
          v25 = v116;
LABEL_472:
          v23 = v117;
          if (!v35)
          {
LABEL_676:
            __break(1u);
            goto LABEL_677;
          }

          v107 = v24 >> 62;
          if ((v24 >> 62) <= 1)
          {
            if (v107 && __OFSUB__(HIDWORD(v25), v25))
            {
              goto LABEL_621;
            }

            goto LABEL_511;
          }

          if (v107 != 2 || !__OFSUB__(*(v25 + 24), *(v25 + 16)))
          {
LABEL_511:
            if (!v34)
            {
LABEL_686:
              __break(1u);
              goto LABEL_687;
            }

            v111 = v22 >> 62;
            if ((v22 >> 62) <= 1)
            {
              if (!v111)
              {
LABEL_540:
                if (!v31)
                {
LABEL_689:
                  __break(1u);
                  goto LABEL_690;
                }

                if (!v21)
                {
LABEL_691:
                  __break(1u);
                  goto LABEL_692;
                }

                if (v28)
                {
                  goto LABEL_562;
                }

                __break(1u);
                goto LABEL_544;
              }

LABEL_539:
              if (__OFSUB__(HIDWORD(a18), a18))
              {
LABEL_624:
                __break(1u);
                goto LABEL_625;
              }

              goto LABEL_540;
            }

            if (v111 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
            {
              goto LABEL_540;
            }

            __break(1u);
LABEL_519:
            if (__OFSUB__(HIDWORD(v25), v25))
            {
LABEL_622:
              __break(1u);
              goto LABEL_623;
            }

            goto LABEL_520;
          }

          __break(1u);
          goto LABEL_480;
        }

        if (!v59)
        {
          v22 = a19;
          result = ccrng();
          if (!result)
          {
LABEL_641:
            __break(1u);
            goto LABEL_642;
          }

          v32 = a11;
          v34 = a16;
          v60 = a11 >> 62;
          v24 = a15;
          v36 = a20;
          v35 = a12;
          if ((a11 >> 62) <= 1)
          {
            v25 = a14;
            if (v60)
            {
LABEL_362:
              v23 = v117;
              if (__OFSUB__(HIDWORD(v117), v117))
              {
LABEL_601:
                __break(1u);
                goto LABEL_602;
              }

              goto LABEL_369;
            }

            goto LABEL_368;
          }

LABEL_141:
          v25 = v116;
          if (v60 == 2)
          {
            v23 = v117;
            v66 = *(v117 + 24);
            if (!__OFSUB__(v66, *(v117 + 16)))
            {
              goto LABEL_369;
            }

            __break(1u);
            goto LABEL_145;
          }

LABEL_368:
          v23 = v117;
LABEL_369:
          if (!v35)
          {
LABEL_662:
            __break(1u);
            goto LABEL_663;
          }

          v98 = v24 >> 62;
          if ((v24 >> 62) <= 1)
          {
            if (v98)
            {
LABEL_431:
              if (__OFSUB__(HIDWORD(v25), v25))
              {
LABEL_610:
                __break(1u);
                goto LABEL_611;
              }
            }

LABEL_432:
            if (!v34)
            {
LABEL_672:
              __break(1u);
              goto LABEL_673;
            }

            v103 = v22 >> 62;
            if ((v22 >> 62) <= 1)
            {
              if (v103)
              {
                goto LABEL_494;
              }

LABEL_495:
              if (!v36)
              {
LABEL_680:
                __break(1u);
                goto LABEL_681;
              }

              if (v21)
              {
                goto LABEL_505;
              }

              __break(1u);
              goto LABEL_498;
            }

            if (v103 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
            {
              goto LABEL_495;
            }

            __break(1u);
            goto LABEL_440;
          }

          if (v98 != 2 || !__OFSUB__(*(v25 + 24), *(v25 + 16)))
          {
            goto LABEL_432;
          }

          __break(1u);
          goto LABEL_377;
        }

        if (a5 <= a5 >> 32)
        {
          v28 = sub_1C0D7812C();
          if (v28)
          {
            v76 = sub_1C0D7815C();
            if (__OFSUB__(a5, v76))
            {
LABEL_579:
              __break(1u);
LABEL_580:
              __break(1u);
LABEL_581:
              __break(1u);
LABEL_582:
              __break(1u);
LABEL_583:
              __break(1u);
              goto LABEL_584;
            }

            v28 += a5 - v76;
          }

          v32 = a11;
          sub_1C0D7814C();
          result = ccrng();
          if (!result)
          {
LABEL_670:
            __break(1u);
            goto LABEL_671;
          }

          v22 = a19;
          v34 = a16;
          v77 = a11 >> 62;
          v31 = a20;
          v35 = a12;
          if ((a11 >> 62) <= 1)
          {
            v24 = a15;
            if (v77)
            {
LABEL_528:
              v25 = v116;
              if (__OFSUB__(HIDWORD(v117), v117))
              {
LABEL_623:
                __break(1u);
                goto LABEL_624;
              }

              goto LABEL_531;
            }

            goto LABEL_530;
          }

LABEL_161:
          v24 = v25;
          if (v77 == 2)
          {
            v25 = v116;
            if (!__OFSUB__(*(v117 + 24), *(v117 + 16)))
            {
              goto LABEL_531;
            }

            __break(1u);
            goto LABEL_165;
          }

LABEL_530:
          v25 = v116;
LABEL_531:
          v23 = v117;
          if (!v35)
          {
LABEL_688:
            __break(1u);
            goto LABEL_689;
          }

          v113 = v24 >> 62;
          if ((v24 >> 62) <= 1)
          {
            if (!v113)
            {
              goto LABEL_550;
            }

            goto LABEL_549;
          }

          if (v113 != 2 || !__OFSUB__(*(v25 + 24), *(v25 + 16)))
          {
            goto LABEL_550;
          }

          __break(1u);
          goto LABEL_539;
        }

        goto LABEL_571;
      }

LABEL_567:
      __break(1u);
LABEL_568:
      __break(1u);
LABEL_569:
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
LABEL_570:
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
LABEL_571:
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      goto LABEL_572;
    }

    __break(1u);
LABEL_566:
    __break(1u);
    goto LABEL_567;
  }

  if (v27 != 2)
  {
    v45 = a6 >> 62;
    if ((a6 >> 62) > 1)
    {
      if (v45 != 2)
      {
        result = ccrng();
        if (result)
        {
          v32 = a11;
          v72 = a11 >> 62;
          v34 = a16;
          if ((a11 >> 62) <= 1)
          {
            v36 = a20;
            v35 = a12;
            v23 = a10;
            if (v72 && __OFSUB__(HIDWORD(a10), a10))
            {
              goto LABEL_583;
            }

LABEL_215:
            if (v35)
            {
              v84 = v24 >> 62;
              if ((v24 >> 62) > 1)
              {
                if (v84 == 2 && __OFSUB__(*(v25 + 24), *(v25 + 16)))
                {
                  __break(1u);
LABEL_223:
                  if (!__OFSUB__(HIDWORD(v25), v25))
                  {
                    goto LABEL_224;
                  }

LABEL_584:
                  __break(1u);
                  goto LABEL_585;
                }
              }

              else if (v84)
              {
                goto LABEL_250;
              }

LABEL_251:
              if (v34)
              {
                v88 = v22 >> 62;
                if ((v22 >> 62) <= 1)
                {
                  if (v88)
                  {
LABEL_312:
                    if (__OFSUB__(HIDWORD(a18), a18))
                    {
LABEL_595:
                      __break(1u);
LABEL_596:
                      __break(1u);
                      goto LABEL_597;
                    }
                  }

LABEL_313:
                  if (!v36)
                  {
LABEL_656:
                    __break(1u);
                    goto LABEL_657;
                  }

                  goto LABEL_509;
                }

                if (v88 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
                {
                  goto LABEL_313;
                }

                __break(1u);
LABEL_259:
                v25 = v116;
                if (!__OFSUB__(HIDWORD(v117), v117))
                {
LABEL_266:
                  v23 = v117;
                  if (v35)
                  {
                    v89 = v24 >> 62;
                    if ((v24 >> 62) <= 1)
                    {
                      if (v89 && __OFSUB__(HIDWORD(v25), v25))
                      {
                        goto LABEL_596;
                      }

                      goto LABEL_316;
                    }

                    if (v89 != 2 || !__OFSUB__(*(v25 + 24), *(v25 + 16)))
                    {
LABEL_316:
                      if (!v34)
                      {
LABEL_657:
                        __break(1u);
                        goto LABEL_658;
                      }

                      v93 = v22 >> 62;
                      if ((v22 >> 62) <= 1)
                      {
                        if (!v93)
                        {
LABEL_407:
                          if (!v36)
                          {
LABEL_666:
                            __break(1u);
                            goto LABEL_667;
                          }

                          if (v28)
                          {
                            goto LABEL_509;
                          }

                          __break(1u);
                          goto LABEL_410;
                        }

LABEL_406:
                        if (__OFSUB__(HIDWORD(a18), a18))
                        {
LABEL_605:
                          __break(1u);
                          goto LABEL_606;
                        }

                        goto LABEL_407;
                      }

                      if (v93 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
                      {
                        goto LABEL_407;
                      }

                      __break(1u);
                      goto LABEL_324;
                    }

                    __break(1u);
                    goto LABEL_274;
                  }

LABEL_649:
                  __break(1u);
                  goto LABEL_650;
                }

                goto LABEL_588;
              }

LABEL_648:
              __break(1u);
              goto LABEL_649;
            }

            goto LABEL_640;
          }

          goto LABEL_121;
        }

        goto LABEL_631;
      }

      v116 = a14;
      v117 = a10;
      v115 = a15;
      v24 = a19;
      v50 = *(a5 + 16);
      v51 = sub_1C0D7812C();
      if (!v51)
      {
LABEL_165:
        v28 = 0;
LABEL_166:
        v32 = v26;
        sub_1C0D7814C();
        result = ccrng();
        if (result)
        {
          v22 = v24;
          v34 = v23;
          v79 = v26 >> 62;
          v36 = a20;
          v35 = a12;
          if ((v26 >> 62) <= 1)
          {
            v24 = v115;
            if (v79)
            {
              goto LABEL_292;
            }

LABEL_294:
            v25 = v116;
            goto LABEL_295;
          }

          v24 = v115;
          if (v79 != 2)
          {
            goto LABEL_294;
          }

          v25 = v116;
          if (!__OFSUB__(*(v117 + 24), *(v117 + 16)))
          {
            goto LABEL_295;
          }

          __break(1u);
          goto LABEL_174;
        }

        goto LABEL_635;
      }

      v52 = v51;
      v53 = sub_1C0D7815C();
      if (!__OFSUB__(v50, v53))
      {
        v28 = v50 - v53 + v52;
        goto LABEL_166;
      }

      goto LABEL_573;
    }

    if (!v45)
    {
      v32 = a11;
      v26 = a6;
      result = ccrng();
      if (result)
      {
        v46 = a11 >> 62;
        v34 = a16;
        if ((a11 >> 62) <= 1)
        {
          v36 = a20;
          v35 = a12;
          v23 = a10;
          if (!v46 || !__OFSUB__(HIDWORD(a10), a10))
          {
            goto LABEL_199;
          }

          goto LABEL_581;
        }

LABEL_113:
        v36 = a20;
        v35 = a12;
        v23 = a10;
        if (v46 != 2)
        {
          goto LABEL_199;
        }

        v71 = *(a10 + 24);
        if (!__OFSUB__(v71, *(a10 + 16)))
        {
          goto LABEL_199;
        }

        __break(1u);
LABEL_117:
        v36 = a20;
        v35 = a12;
        v23 = a10;
        if (v71 != 2)
        {
          goto LABEL_207;
        }

        v72 = *(a10 + 24);
        if (!__OFSUB__(v72, *(a10 + 16)))
        {
          goto LABEL_207;
        }

        __break(1u);
LABEL_121:
        v36 = a20;
        v35 = a12;
        v23 = a10;
        if (v72 != 2)
        {
          goto LABEL_215;
        }

        v49 = *(a10 + 24);
        if (!__OFSUB__(v49, *(a10 + 16)))
        {
          goto LABEL_215;
        }

        __break(1u);
        goto LABEL_125;
      }

      goto LABEL_629;
    }

    v116 = a14;
    v117 = a10;
    v115 = a15;
    v67 = a5;
    if (a5 <= a5 >> 32)
    {
      v24 = a19;
      v68 = sub_1C0D7812C();
      if (!v68)
      {
LABEL_174:
        v28 = 0;
LABEL_175:
        sub_1C0D7814C();
        result = ccrng();
        if (!result)
        {
LABEL_644:
          __break(1u);
          goto LABEL_645;
        }

        v32 = v26;
        v22 = v24;
        v34 = v23;
        v80 = v26 >> 62;
        v36 = a20;
        v35 = a12;
        if ((v26 >> 62) > 1)
        {
          v24 = v115;
          if (v80 == 2)
          {
            v25 = v116;
            if (!__OFSUB__(*(v117 + 24), *(v117 + 16)))
            {
              goto LABEL_398;
            }

            __break(1u);
            goto LABEL_183;
          }
        }

        else
        {
          v24 = v115;
          if (v80)
          {
LABEL_395:
            v25 = v116;
            if (__OFSUB__(HIDWORD(v117), v117))
            {
LABEL_604:
              __break(1u);
              goto LABEL_605;
            }

LABEL_398:
            v23 = v117;
            if (!v35)
            {
LABEL_665:
              __break(1u);
              goto LABEL_666;
            }

            v101 = v24 >> 62;
            if ((v24 >> 62) > 1)
            {
              if (v101 == 2 && __OFSUB__(*(v25 + 24), *(v25 + 16)))
              {
                __break(1u);
                goto LABEL_406;
              }
            }

            else if (v101)
            {
LABEL_458:
              if (__OFSUB__(HIDWORD(v25), v25))
              {
LABEL_613:
                __break(1u);
                goto LABEL_614;
              }
            }

            if (!v34)
            {
LABEL_675:
              __break(1u);
              goto LABEL_676;
            }

            v106 = v22 >> 62;
            if ((v22 >> 62) <= 1)
            {
              if (v106 && __OFSUB__(HIDWORD(a18), a18))
              {
                goto LABEL_620;
              }

              goto LABEL_507;
            }

            if (v106 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
            {
LABEL_507:
              if (!v36)
              {
LABEL_683:
                __break(1u);
                goto LABEL_684;
              }

              if (!v28)
              {
LABEL_685:
                __break(1u);
                goto LABEL_686;
              }

              goto LABEL_509;
            }

            __break(1u);
            goto LABEL_467;
          }
        }

        v25 = v116;
        goto LABEL_398;
      }

      v69 = v68;
      v70 = sub_1C0D7815C();
      if (!__OFSUB__(v67, v70))
      {
        v28 = v67 - v70 + v69;
        goto LABEL_175;
      }

      goto LABEL_576;
    }

    goto LABEL_569;
  }

  v116 = a14;
  v117 = a10;
  v25 = a15;
  v115 = v20;
  v37 = *(a1 + 16);
  v38 = sub_1C0D7812C();
  if (v38)
  {
    v39 = v38;
    v40 = sub_1C0D7815C();
    if (__OFSUB__(v37, v40))
    {
      goto LABEL_566;
    }

    v21 = v37 - v40 + v39;
  }

  else
  {
    v21 = 0;
  }

  sub_1C0D7814C();
  v28 = a6;
  v54 = a6 >> 62;
  if ((a6 >> 62) > 1)
  {
    if (v54 != 2)
    {
      result = ccrng();
      if (result)
      {
        v22 = a19;
        v32 = a11;
        v34 = a16;
        v75 = a11 >> 62;
        v24 = a15;
        v36 = a20;
        v35 = a12;
        if ((a11 >> 62) <= 1)
        {
          v25 = a14;
          if (v75)
          {
            v23 = a10;
            if (__OFSUB__(HIDWORD(a10), a10))
            {
LABEL_590:
              __break(1u);
              goto LABEL_591;
            }

LABEL_284:
            if (v35)
            {
              v91 = v24 >> 62;
              if ((v24 >> 62) <= 1)
              {
                if (v91)
                {
LABEL_333:
                  if (__OFSUB__(HIDWORD(v25), v25))
                  {
LABEL_598:
                    __break(1u);
                    goto LABEL_599;
                  }
                }

LABEL_334:
                if (!v34)
                {
LABEL_659:
                  __break(1u);
                  goto LABEL_660;
                }

                v95 = v22 >> 62;
                if ((v22 >> 62) <= 1)
                {
                  if (v95)
                  {
LABEL_414:
                    if (__OFSUB__(HIDWORD(a18), a18))
                    {
LABEL_607:
                      __break(1u);
                      goto LABEL_608;
                    }
                  }

LABEL_415:
                  if (!v36)
                  {
LABEL_668:
                    __break(1u);
                    goto LABEL_669;
                  }

                  if (v21)
                  {
                    goto LABEL_505;
                  }

                  __break(1u);
                  goto LABEL_418;
                }

                if (v95 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
                {
                  goto LABEL_415;
                }

                __break(1u);
                goto LABEL_342;
              }

              if (v91 != 2 || !__OFSUB__(*(v25 + 24), *(v25 + 16)))
              {
                goto LABEL_334;
              }

              __break(1u);
LABEL_292:
              v25 = v116;
              if (!__OFSUB__(HIDWORD(v117), v117))
              {
LABEL_295:
                v23 = v117;
                if (v35)
                {
                  v92 = v24 >> 62;
                  if ((v24 >> 62) > 1)
                  {
                    if (v92 == 2 && __OFSUB__(*(v25 + 24), *(v25 + 16)))
                    {
                      __break(1u);
LABEL_303:
                      if (!__OFSUB__(HIDWORD(a18), a18))
                      {
                        goto LABEL_304;
                      }

LABEL_592:
                      __break(1u);
LABEL_593:
                      __break(1u);
LABEL_594:
                      __break(1u);
                      goto LABEL_595;
                    }

                    goto LABEL_343;
                  }

                  if (!v92)
                  {
LABEL_343:
                    if (!v34)
                    {
LABEL_660:
                      __break(1u);
                      goto LABEL_661;
                    }

                    v96 = v22 >> 62;
                    if ((v22 >> 62) <= 1)
                    {
                      if (v96)
                      {
LABEL_418:
                        if (__OFSUB__(HIDWORD(a18), a18))
                        {
LABEL_608:
                          __break(1u);
                          goto LABEL_609;
                        }
                      }

LABEL_419:
                      if (!v36)
                      {
LABEL_669:
                        __break(1u);
                        goto LABEL_670;
                      }

                      if (v28)
                      {
                        goto LABEL_509;
                      }

                      __break(1u);
                      goto LABEL_422;
                    }

                    if (v96 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
                    {
                      goto LABEL_419;
                    }

                    __break(1u);
                    goto LABEL_351;
                  }

LABEL_342:
                  if (__OFSUB__(HIDWORD(v25), v25))
                  {
LABEL_599:
                    __break(1u);
                    goto LABEL_600;
                  }

                  goto LABEL_343;
                }

                goto LABEL_652;
              }

LABEL_591:
              __break(1u);
              goto LABEL_592;
            }

LABEL_651:
            __break(1u);
LABEL_652:
            __break(1u);
            goto LABEL_653;
          }

          goto LABEL_283;
        }

LABEL_133:
        v25 = v116;
        if (v75 == 2)
        {
          v23 = v117;
          v58 = *(v117 + 24);
          if (!__OFSUB__(v58, *(v117 + 16)))
          {
            goto LABEL_284;
          }

          __break(1u);
          goto LABEL_137;
        }

LABEL_283:
        v23 = v117;
        goto LABEL_284;
      }

LABEL_634:
      __break(1u);
LABEL_635:
      __break(1u);
      goto LABEL_636;
    }

    v56 = *(a5 + 16);
    v28 = sub_1C0D7812C();
    if (v28)
    {
      v57 = sub_1C0D7815C();
      if (__OFSUB__(v56, v57))
      {
LABEL_574:
        __break(1u);
LABEL_575:
        __break(1u);
LABEL_576:
        __break(1u);
        goto LABEL_577;
      }

      v28 += v56 - v57;
    }

    v32 = a11;
    sub_1C0D7814C();
    result = ccrng();
    if (!result)
    {
LABEL_636:
      __break(1u);
      goto LABEL_637;
    }

    v22 = a19;
    v34 = a16;
    v58 = a11 >> 62;
    v31 = a20;
    v35 = a12;
    if ((a11 >> 62) <= 1)
    {
      v24 = a15;
      if (v58)
      {
LABEL_351:
        v25 = v116;
        if (__OFSUB__(HIDWORD(v117), v117))
        {
LABEL_600:
          __break(1u);
          goto LABEL_601;
        }

        goto LABEL_354;
      }

      goto LABEL_353;
    }

LABEL_137:
    v24 = v25;
    if (v58 == 2)
    {
      v25 = v116;
      v60 = *(v117 + 24);
      if (!__OFSUB__(v60, *(v117 + 16)))
      {
        goto LABEL_354;
      }

      __break(1u);
      goto LABEL_141;
    }

LABEL_353:
    v25 = v116;
LABEL_354:
    v23 = v117;
    if (!v35)
    {
LABEL_661:
      __break(1u);
      goto LABEL_662;
    }

    v97 = v24 >> 62;
    if ((v24 >> 62) <= 1)
    {
      if (v97)
      {
LABEL_422:
        if (__OFSUB__(HIDWORD(v25), v25))
        {
LABEL_609:
          __break(1u);
          goto LABEL_610;
        }
      }

LABEL_423:
      if (!v34)
      {
LABEL_671:
        __break(1u);
        goto LABEL_672;
      }

      v102 = v22 >> 62;
      if ((v22 >> 62) <= 1)
      {
        if (!v102)
        {
          goto LABEL_490;
        }

        goto LABEL_489;
      }

      if (v102 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
      {
        goto LABEL_490;
      }

      __break(1u);
      goto LABEL_431;
    }

    if (v97 != 2 || !__OFSUB__(*(v25 + 24), *(v25 + 16)))
    {
      goto LABEL_423;
    }

    __break(1u);
    goto LABEL_362;
  }

  if (!v54)
  {
    v22 = a19;
    result = ccrng();
    if (result)
    {
      v32 = a11;
      v34 = a16;
      v55 = a11 >> 62;
      v24 = a15;
      v36 = a20;
      v35 = a12;
      if ((a11 >> 62) <= 1)
      {
        v25 = a14;
        if (v55)
        {
          v23 = a10;
          if (__OFSUB__(HIDWORD(a10), a10))
          {
LABEL_589:
            __break(1u);
            goto LABEL_590;
          }

LABEL_275:
          if (v35)
          {
            v90 = v24 >> 62;
            if ((v24 >> 62) <= 1)
            {
              if (v90)
              {
LABEL_324:
                if (__OFSUB__(HIDWORD(v25), v25))
                {
LABEL_597:
                  __break(1u);
                  goto LABEL_598;
                }
              }

LABEL_325:
              if (!v34)
              {
LABEL_658:
                __break(1u);
                goto LABEL_659;
              }

              v94 = v22 >> 62;
              if ((v22 >> 62) <= 1)
              {
                if (v94)
                {
LABEL_410:
                  if (__OFSUB__(HIDWORD(a18), a18))
                  {
LABEL_606:
                    __break(1u);
                    goto LABEL_607;
                  }
                }

LABEL_411:
                if (!v36)
                {
LABEL_667:
                  __break(1u);
                  goto LABEL_668;
                }

                if (v21)
                {
                  goto LABEL_505;
                }

                __break(1u);
                goto LABEL_414;
              }

              if (v94 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
              {
                goto LABEL_411;
              }

              __break(1u);
              goto LABEL_333;
            }

            if (v90 != 2 || !__OFSUB__(*(v25 + 24), *(v25 + 16)))
            {
              goto LABEL_325;
            }

            __break(1u);
            goto LABEL_283;
          }

LABEL_650:
          __break(1u);
          goto LABEL_651;
        }

        goto LABEL_274;
      }

LABEL_129:
      v25 = v116;
      if (v55 == 2)
      {
        v23 = v117;
        v75 = *(v117 + 24);
        if (!__OFSUB__(v75, *(v117 + 16)))
        {
          goto LABEL_275;
        }

        __break(1u);
        goto LABEL_133;
      }

LABEL_274:
      v23 = v117;
      goto LABEL_275;
    }

    goto LABEL_633;
  }

  if (a5 > a5 >> 32)
  {
    goto LABEL_570;
  }

  v28 = sub_1C0D7812C();
  if (v28)
  {
    v73 = sub_1C0D7815C();
    if (__OFSUB__(a5, v73))
    {
LABEL_578:
      __break(1u);
      goto LABEL_579;
    }

    v28 += a5 - v73;
  }

  v32 = a11;
  sub_1C0D7814C();
  result = ccrng();
  if (!result)
  {
LABEL_654:
    __break(1u);
LABEL_655:
    __break(1u);
    goto LABEL_656;
  }

  v22 = a19;
  v34 = a16;
  v74 = a11 >> 62;
  v31 = a20;
  v35 = a12;
  if ((a11 >> 62) > 1)
  {
    goto LABEL_157;
  }

  v24 = a15;
  if (!v74)
  {
    goto LABEL_480;
  }

  v25 = a14;
  if (__OFSUB__(HIDWORD(a10), a10))
  {
LABEL_615:
    __break(1u);
    goto LABEL_616;
  }

LABEL_481:
  v23 = v117;
  if (!v35)
  {
LABEL_677:
    __break(1u);
    goto LABEL_678;
  }

  v108 = v24 >> 62;
  if ((v24 >> 62) <= 1)
  {
    if (!v108)
    {
      goto LABEL_520;
    }

    goto LABEL_519;
  }

  if (v108 == 2 && __OFSUB__(*(v25 + 24), *(v25 + 16)))
  {
    __break(1u);
LABEL_489:
    if (__OFSUB__(HIDWORD(a18), a18))
    {
LABEL_616:
      __break(1u);
      goto LABEL_617;
    }

LABEL_490:
    if (!v31)
    {
LABEL_678:
      __break(1u);
      goto LABEL_679;
    }

    if (!v21)
    {
LABEL_679:
      __break(1u);
      goto LABEL_680;
    }

    if (!v28)
    {
      __break(1u);
LABEL_494:
      if (__OFSUB__(HIDWORD(a18), a18))
      {
LABEL_617:
        __break(1u);
        goto LABEL_618;
      }

      goto LABEL_495;
    }

LABEL_562:
    *a7 = ccspake_prover_initialize();
    sub_1C0CF448C(a3, a4);
    v109 = a5;
    v110 = a6;
    goto LABEL_563;
  }

LABEL_520:
  if (!v34)
  {
LABEL_687:
    __break(1u);
    goto LABEL_688;
  }

  v112 = v22 >> 62;
  if ((v22 >> 62) > 1)
  {
    if (v112 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
    {
      goto LABEL_545;
    }

    __break(1u);
    goto LABEL_528;
  }

  if (v112)
  {
LABEL_544:
    if (__OFSUB__(HIDWORD(a18), a18))
    {
LABEL_625:
      __break(1u);
      goto LABEL_626;
    }
  }

LABEL_545:
  if (!v31)
  {
LABEL_690:
    __break(1u);
    goto LABEL_691;
  }

  if (!v21)
  {
LABEL_692:
    __break(1u);
    goto LABEL_693;
  }

  if (v28)
  {
    goto LABEL_562;
  }

  __break(1u);
LABEL_549:
  if (__OFSUB__(HIDWORD(v25), v25))
  {
LABEL_626:
    __break(1u);
LABEL_627:
    __break(1u);
  }

LABEL_550:
  if (!v34)
  {
LABEL_693:
    __break(1u);
    goto LABEL_694;
  }

  v114 = v22 >> 62;
  if ((v22 >> 62) > 1)
  {
    if (v114 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
    {
      goto LABEL_559;
    }

    __break(1u);
  }

  else if (!v114)
  {
    goto LABEL_559;
  }

  if (__OFSUB__(HIDWORD(a18), a18))
  {
    goto LABEL_627;
  }

LABEL_559:
  if (!v31)
  {
LABEL_694:
    __break(1u);
    goto LABEL_695;
  }

  if (!v21)
  {
LABEL_695:
    __break(1u);
    goto LABEL_696;
  }

  if (v28)
  {
    goto LABEL_562;
  }

LABEL_696:
  __break(1u);
  return result;
}

uint64_t sub_1C0D4BBF8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unint64_t a17, void (*a18)(uint64_t, unint64_t, uint64_t, unint64_t, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v234[2] = *MEMORY[0x1E69E9840];
  v22 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v22 == 2)
    {
      v205 = *(a1 + 24);
      v215 = *(a1 + 16);
      sub_1C0CF6468(a3, a4);
      sub_1C0CF6468(a5, a6);
      sub_1C0CF6468(a7, a8);
      sub_1C0CF6468(a12, a13);
      sub_1C0CF6468(a16, a17);
      sub_1C0CF6468(a3, a4);
      sub_1C0CF6468(a5, a6);
      sub_1C0CF6468(a7, a8);
      sub_1C0CF6468(a12, a13);
      sub_1C0CF6468(a16, a17);
      v224 = a4;
      sub_1C0CF6468(a3, a4);
      sub_1C0CF6468(a5, a6);
      sub_1C0CF6468(a7, a8);
      sub_1C0CF6468(a12, a13);
      sub_1C0CF6468(a16, a17);
      v40 = sub_1C0D7812C();
      if (v40)
      {
        v41 = v40;
        v42 = sub_1C0D7815C();
        v43 = v215;
        if (__OFSUB__(v215, v42))
        {
LABEL_144:
          __break(1u);
          goto LABEL_145;
        }

        v44 = v215 - v42 + v41;
      }

      else
      {
        v44 = 0;
        v43 = v215;
      }

      v73 = v205 - v43;
      if (!__OFSUB__(v205, v43))
      {
        v74 = sub_1C0D7814C();
        if (v74 >= v73)
        {
          v75 = v73;
        }

        else
        {
          v75 = v74;
        }

        v76 = v75 + v44;
        if (v44)
        {
          v77 = v76;
        }

        else
        {
          v77 = 0;
        }

        v78 = a4 >> 62;
        v219 = v77;
        if ((a4 >> 62) > 1)
        {
          v30 = a8;
          if (v78 == 2)
          {
            v194 = *(a3 + 24);
            v197 = *(a3 + 16);
            sub_1C0CF6468(a12, a13);
            sub_1C0CF6468(a16, a17);
            sub_1C0CF6468(a5, a6);
            sub_1C0CF6468(a7, a8);
            sub_1C0CF6468(a3, a4);
            sub_1C0CF6468(a5, a6);
            sub_1C0CF6468(a7, a8);
            sub_1C0CF6468(a12, a13);
            sub_1C0CF6468(a16, a17);
            sub_1C0CF6468(a3, a4);
            sub_1C0CF6468(a3, a4);
            sub_1C0CF6468(a5, a6);
            sub_1C0CF6468(a7, a8);
            sub_1C0CF6468(a12, a13);
            sub_1C0CF6468(a16, a17);
            sub_1C0CF6468(a3, a4);
            sub_1C0CF6468(a5, a6);
            sub_1C0CF6468(a7, a8);
            sub_1C0CF6468(a12, a13);
            sub_1C0CF6468(a16, a17);
            v81 = sub_1C0D7812C();
            if (v81)
            {
              v82 = v81;
              v83 = a12;
              v84 = sub_1C0D7815C();
              v85 = v197;
              if (__OFSUB__(v197, v84))
              {
LABEL_158:
                __break(1u);
                goto LABEL_159;
              }

              v86 = v197 - v84 + v82;
            }

            else
            {
              v83 = a12;
              v86 = 0;
              v85 = v197;
            }

            v147 = v194 - v85;
            if (__OFSUB__(v194, v85))
            {
              goto LABEL_152;
            }

            v148 = sub_1C0D7814C();
            if (v148 >= v147)
            {
              v149 = v147;
            }

            else
            {
              v149 = v148;
            }

            v150 = v149 + v86;
            if (!v86)
            {
              v150 = 0;
            }

            v201 = v150;
            sub_1C0CF6468(a3, v224);
            sub_1C0CF6468(a5, a6);
            v30 = a8;
            sub_1C0CF6468(a7, a8);
            sub_1C0CF6468(v83, a13);
            sub_1C0CF6468(a16, a17);
            a18(a5, a6, a5, a6, a7, a8, a9, a10, a11, v83, a13, a14, a15, a16, a17, v44, v219, a3, v224, v86, v201);
            sub_1C0CF448C(a5, a6);
            sub_1C0CF448C(a7, a8);
            sub_1C0CF448C(v83, a13);
            sub_1C0CF448C(a16, a17);
            sub_1C0CF448C(a3, v224);
            sub_1C0CF448C(a5, a6);
            sub_1C0CF448C(a7, a8);
            sub_1C0CF448C(v83, a13);
            sub_1C0CF448C(a16, a17);
            sub_1C0CF448C(a3, v224);
            sub_1C0CF448C(a5, a6);
            sub_1C0CF448C(a7, a8);
            sub_1C0CF448C(a12, a13);
            sub_1C0CF448C(a16, a17);
            sub_1C0CF448C(a3, v224);
            sub_1C0CF448C(a5, a6);
            v79 = a7;
            v80 = a7;
          }

          else
          {
            memset(v234, 0, 14);
            sub_1C0CF6468(a3, a4);
            sub_1C0CF6468(a5, a6);
            sub_1C0CF6468(a7, a8);
            sub_1C0CF6468(a12, a13);
            sub_1C0CF6468(a16, a17);
            sub_1C0CF6468(a5, a6);
            sub_1C0CF6468(a7, a8);
            sub_1C0CF6468(a12, a13);
            sub_1C0CF6468(a16, a17);
            a18(a5, a6, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, v44, v219, a3, a4, v234, v234);
            sub_1C0CF448C(a5, a6);
            v79 = a7;
            v80 = a7;
          }
        }

        else if (v78)
        {
          v117 = a3;
          v200 = (v117 >> 32) - v117;
          if (v117 >> 32 < v117)
          {
LABEL_150:
            __break(1u);
            goto LABEL_151;
          }

          sub_1C0CF6468(a12, a13);
          sub_1C0CF6468(a16, a17);
          sub_1C0CF6468(a5, a6);
          sub_1C0CF6468(a7, a8);
          sub_1C0CF6468(a3, a4);
          sub_1C0CF6468(a5, a6);
          sub_1C0CF6468(a7, a8);
          sub_1C0CF6468(a12, a13);
          sub_1C0CF6468(a16, a17);
          sub_1C0CF6468(a3, a4);
          sub_1C0CF6468(a3, a4);
          sub_1C0CF6468(a5, a6);
          sub_1C0CF6468(a7, a8);
          sub_1C0CF6468(a12, a13);
          sub_1C0CF6468(a16, a17);
          sub_1C0CF6468(a3, a4);
          sub_1C0CF6468(a5, a6);
          sub_1C0CF6468(a7, a8);
          sub_1C0CF6468(a12, a13);
          sub_1C0CF6468(a16, a17);
          v118 = sub_1C0D7812C();
          if (v118)
          {
            v119 = v118;
            v120 = sub_1C0D7815C();
            if (__OFSUB__(a3, v120))
            {
LABEL_160:
              __break(1u);
LABEL_161:
              __break(1u);
            }

            v121 = a3 - v120 + v119;
          }

          else
          {
            v121 = 0;
          }

          v158 = sub_1C0D7814C();
          v159 = v200;
          if (v158 < v200)
          {
            v159 = v158;
          }

          v160 = v159 + v121;
          if (!v121)
          {
            v160 = 0;
          }

          v202 = v160;
          sub_1C0CF6468(a3, a4);
          sub_1C0CF6468(a5, a6);
          v30 = a8;
          sub_1C0CF6468(a7, a8);
          sub_1C0CF6468(a12, a13);
          sub_1C0CF6468(a16, a17);
          a18(a5, a6, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, v44, v219, a3, a4, v121, v202);
          sub_1C0CF448C(a5, a6);
          sub_1C0CF448C(a7, a8);
          sub_1C0CF448C(a12, a13);
          sub_1C0CF448C(a16, a17);
          sub_1C0CF448C(a3, a4);
          sub_1C0CF448C(a5, a6);
          sub_1C0CF448C(a7, a8);
          sub_1C0CF448C(a12, a13);
          sub_1C0CF448C(a16, a17);
          sub_1C0CF448C(a3, a4);
          sub_1C0CF448C(a5, a6);
          sub_1C0CF448C(a7, a8);
          sub_1C0CF448C(a12, a13);
          sub_1C0CF448C(a16, a17);
          sub_1C0CF448C(a3, a4);
          sub_1C0CF448C(a5, a6);
          v79 = a7;
          v80 = a7;
        }

        else
        {
          v234[0] = a3;
          LODWORD(v234[1]) = a4;
          WORD2(v234[1]) = WORD2(a4);
          sub_1C0CF6468(a3, a4);
          sub_1C0CF6468(a5, a6);
          sub_1C0CF6468(a7, a8);
          sub_1C0CF6468(a12, a13);
          sub_1C0CF6468(a16, a17);
          sub_1C0CF6468(a5, a6);
          sub_1C0CF6468(a7, a8);
          sub_1C0CF6468(a12, a13);
          sub_1C0CF6468(a16, a17);
          v30 = a8;
          a18(a5, a6, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, v44, v219, a3, a4, v234, v234 + BYTE6(a4));
          sub_1C0CF448C(a5, a6);
          v79 = a7;
          v80 = a7;
        }

        sub_1C0CF448C(v80, v30);
        sub_1C0CF448C(a12, a13);
        sub_1C0CF448C(a16, a17);
        sub_1C0CF448C(a3, v224);
        sub_1C0CF448C(a3, v224);
        sub_1C0CF448C(a5, a6);
        sub_1C0CF448C(v79, v30);
        v161 = a13;
        sub_1C0CF448C(a12, a13);
        v28 = a17;
        v29 = v79;
        v27 = v224;
        sub_1C0CF448C(a16, a17);
        sub_1C0CF448C(a3, v224);
        sub_1C0CF448C(a5, a6);
        sub_1C0CF448C(v29, v30);
        v145 = a12;
LABEL_140:
        v146 = v161;
        goto LABEL_141;
      }

LABEL_143:
      __break(1u);
      goto LABEL_144;
    }

    v49 = a4 >> 62;
    memset(v234, 0, 14);
    if ((a4 >> 62) > 1)
    {
      if (v49 == 2)
      {
        v208 = *(a3 + 24);
        v218 = *(a3 + 16);
        sub_1C0CF6468(a5, a6);
        sub_1C0CF6468(a7, a8);
        sub_1C0CF6468(a12, a13);
        sub_1C0CF6468(a16, a17);
        sub_1C0CF6468(a3, a4);
        sub_1C0CF6468(a5, a6);
        sub_1C0CF6468(a7, a8);
        sub_1C0CF6468(a12, a13);
        sub_1C0CF6468(a16, a17);
        sub_1C0CF6468(a3, a4);
        sub_1C0CF6468(a5, a6);
        sub_1C0CF6468(a7, a8);
        sub_1C0CF6468(a12, a13);
        sub_1C0CF6468(a16, a17);
        sub_1C0CF6468(a3, a4);
        sub_1C0CF6468(a12, a13);
        sub_1C0CF6468(a16, a17);
        sub_1C0CF6468(a5, a6);
        sub_1C0CF6468(a7, a8);
        sub_1C0CF6468(a3, a4);
        sub_1C0CF6468(a3, a4);
        sub_1C0CF6468(a5, a6);
        sub_1C0CF6468(a7, a8);
        sub_1C0CF6468(a12, a13);
        sub_1C0CF6468(a16, a17);
        sub_1C0CF6468(a3, a4);
        sub_1C0CF6468(a5, a6);
        v66 = a8;
        sub_1C0CF6468(a7, a8);
        sub_1C0CF6468(a12, a13);
        sub_1C0CF6468(a16, a17);
        v67 = sub_1C0D7812C();
        if (v67)
        {
          v68 = v67;
          v69 = a13;
          v70 = sub_1C0D7815C();
          v71 = v218;
          if (__OFSUB__(v218, v70))
          {
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
            goto LABEL_157;
          }

          v66 = a8;
          v72 = v218 - v70 + v68;
        }

        else
        {
          v69 = a13;
          v72 = 0;
          v71 = v218;
        }

        v139 = v208 - v71;
        if (__OFSUB__(v208, v71))
        {
          goto LABEL_149;
        }

        v140 = sub_1C0D7814C();
        if (v140 >= v139)
        {
          v141 = v139;
        }

        else
        {
          v141 = v140;
        }

        v142 = v141 + v72;
        if (!v72)
        {
          v142 = 0;
        }

        v223 = v142;
        v143 = a4;
        v227 = a4;
        sub_1C0CF6468(a3, a4);
        sub_1C0CF6468(a5, a6);
        sub_1C0CF6468(a7, v66);
        v144 = v69;
        sub_1C0CF6468(a12, v69);
        v51 = a16;
        v28 = a17;
        sub_1C0CF6468(a16, a17);
        v29 = a7;
        a18(a5, a6, a5, a6, a7, v66, a9, a10, a11, a12, v144, a14, a15, a16, a17, v234, v234, a3, v143, v72, v223);
        sub_1C0CF448C(a5, a6);
        sub_1C0CF448C(a7, v66);
        sub_1C0CF448C(a12, v144);
        sub_1C0CF448C(a16, a17);
        sub_1C0CF448C(a3, v227);
        sub_1C0CF448C(a5, a6);
        sub_1C0CF448C(a7, v66);
        sub_1C0CF448C(a12, a13);
        sub_1C0CF448C(a16, a17);
        v30 = v66;
        sub_1C0CF448C(a3, v227);
        v27 = v227;
        sub_1C0CF448C(a5, a6);
        sub_1C0CF448C(a7, v66);
        sub_1C0CF448C(a12, a13);
        goto LABEL_103;
      }

      memset(v233, 0, 14);
      sub_1C0CF6468(a12, a13);
      v116 = a3;
      v27 = a4;
      v28 = a17;
      sub_1C0CF6468(a16, a17);
      sub_1C0CF6468(a5, a6);
      sub_1C0CF6468(a7, a8);
      sub_1C0CF6468(v116, v27);
      sub_1C0CF6468(a5, a6);
      sub_1C0CF6468(a7, a8);
      sub_1C0CF6468(a12, a13);
      v51 = a16;
      sub_1C0CF6468(a16, a17);
      sub_1C0CF6468(v116, v27);
      sub_1C0CF6468(a12, a13);
      sub_1C0CF6468(a16, a17);
      sub_1C0CF6468(v116, v27);
      sub_1C0CF6468(a5, a6);
      sub_1C0CF6468(a7, a8);
      sub_1C0CF6468(a12, a13);
      sub_1C0CF6468(a16, a17);
      sub_1C0CF6468(v116, v27);
      sub_1C0CF6468(a5, a6);
      v30 = a8;
      sub_1C0CF6468(a7, a8);
      sub_1C0CF6468(a16, a17);
      v193 = v233;
      v186 = v116;
      v188 = v27;
      v181 = a16;
      v183 = a17;
      v177 = a14;
      v179 = a15;
      v175 = a13;
      v171 = a11;
      v173 = a12;
      v53 = a5;
      v54 = a6;
      v29 = a7;
      v55 = a5;
      v56 = a6;
      v57 = a7;
      v58 = a8;
    }

    else
    {
      if (v49)
      {
        v212 = a3;
        v221 = (a3 >> 32) - a3;
        if (a3 >> 32 < a3)
        {
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
          goto LABEL_150;
        }

        sub_1C0CF6468(a5, a6);
        sub_1C0CF6468(a7, a8);
        sub_1C0CF6468(a12, a13);
        sub_1C0CF6468(a16, a17);
        sub_1C0CF6468(a3, a4);
        sub_1C0CF6468(a5, a6);
        sub_1C0CF6468(a7, a8);
        sub_1C0CF6468(a12, a13);
        sub_1C0CF6468(a16, a17);
        sub_1C0CF6468(a3, a4);
        sub_1C0CF6468(a5, a6);
        sub_1C0CF6468(a7, a8);
        sub_1C0CF6468(a12, a13);
        sub_1C0CF6468(a16, a17);
        sub_1C0CF6468(a3, a4);
        sub_1C0CF6468(a12, a13);
        sub_1C0CF6468(a16, a17);
        sub_1C0CF6468(a5, a6);
        sub_1C0CF6468(a7, a8);
        sub_1C0CF6468(a3, a4);
        sub_1C0CF6468(a3, a4);
        sub_1C0CF6468(a5, a6);
        sub_1C0CF6468(a7, a8);
        sub_1C0CF6468(a12, a13);
        sub_1C0CF6468(a16, a17);
        sub_1C0CF6468(a3, a4);
        sub_1C0CF6468(a5, a6);
        sub_1C0CF6468(a7, a8);
        sub_1C0CF6468(a12, a13);
        sub_1C0CF6468(a16, a17);
        v106 = sub_1C0D7812C();
        if (v106)
        {
          v107 = sub_1C0D7815C();
          if (__OFSUB__(v212, v107))
          {
LABEL_157:
            __break(1u);
            goto LABEL_158;
          }

          v106 += v212 - v107;
        }

        v108 = sub_1C0D7814C();
        v109 = v221;
        if (v108 < v221)
        {
          v109 = v108;
        }

        v110 = v109 + v106;
        if (!v106)
        {
          v110 = 0;
        }

        v222 = v110;
        sub_1C0CF6468(a3, a4);
        sub_1C0CF6468(a5, a6);
        v30 = a8;
        sub_1C0CF6468(a7, a8);
        sub_1C0CF6468(a12, a13);
        v111 = a3;
        v27 = a4;
        v28 = a17;
        sub_1C0CF6468(a16, a17);
        v190 = v106;
        v29 = a7;
        a18(a5, a6, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, v234, v234, v111, v27, v190, v222);
        sub_1C0CF448C(a5, a6);
        sub_1C0CF448C(a7, a8);
        sub_1C0CF448C(a12, a13);
        sub_1C0CF448C(a16, a17);
        sub_1C0CF448C(a3, v27);
        sub_1C0CF448C(a5, a6);
        sub_1C0CF448C(a7, a8);
        sub_1C0CF448C(a12, a13);
        sub_1C0CF448C(a16, a17);
        sub_1C0CF448C(a3, v27);
        sub_1C0CF448C(a5, a6);
        sub_1C0CF448C(a7, a8);
        sub_1C0CF448C(a12, a13);
        v112 = a16;
LABEL_104:
        sub_1C0CF448C(v112, v28);
        sub_1C0CF448C(a3, v27);
        sub_1C0CF448C(a5, a6);
        sub_1C0CF448C(v29, v30);
        v135 = a12;
        v136 = a13;
        sub_1C0CF448C(a12, a13);
        sub_1C0CF448C(a16, v28);
        sub_1C0CF448C(a3, v27);
        sub_1C0CF448C(a3, v27);
        v137 = a5;
        v138 = a6;
        goto LABEL_105;
      }

      v233[0] = a3;
      LOWORD(v233[1]) = a4;
      BYTE2(v233[1]) = BYTE2(a4);
      BYTE3(v233[1]) = BYTE3(a4);
      BYTE4(v233[1]) = BYTE4(a4);
      BYTE5(v233[1]) = BYTE5(a4);
      v217 = v233 + BYTE6(a4);
      sub_1C0CF6468(a12, a13);
      v51 = a16;
      v52 = a3;
      v27 = a4;
      v28 = a17;
      sub_1C0CF6468(a16, a17);
      sub_1C0CF6468(a5, a6);
      sub_1C0CF6468(a7, a8);
      sub_1C0CF6468(v52, v27);
      sub_1C0CF6468(a5, a6);
      sub_1C0CF6468(a7, a8);
      sub_1C0CF6468(a12, a13);
      sub_1C0CF6468(a16, a17);
      sub_1C0CF6468(v52, v27);
      sub_1C0CF6468(a12, a13);
      sub_1C0CF6468(a16, a17);
      sub_1C0CF6468(v52, v27);
      sub_1C0CF6468(a5, a6);
      sub_1C0CF6468(a7, a8);
      sub_1C0CF6468(a12, a13);
      sub_1C0CF6468(a16, a17);
      sub_1C0CF6468(v52, v27);
      sub_1C0CF6468(a5, a6);
      sub_1C0CF6468(a7, a8);
      sub_1C0CF6468(a16, a17);
      v193 = v217;
      v29 = a7;
      v188 = v27;
      v186 = v52;
      v30 = a8;
      v183 = a17;
      v179 = a15;
      v181 = a16;
      v175 = a13;
      v177 = a14;
      v171 = a11;
      v173 = a12;
      v53 = a5;
      v54 = a6;
      v55 = a5;
      v56 = a6;
      v57 = a7;
      v58 = a8;
    }

    a18(v53, v54, v55, v56, v57, v58, a9, a10, v171, v173, v175, v177, v179, v181, v183, v234, v234, v186, v188, v233, v193);
LABEL_103:
    v112 = v51;
    goto LABEL_104;
  }

  if (v22)
  {
    if (a1 >> 32 >= a1)
    {
      v206 = a1;
      v216 = (a1 >> 32) - a1;
      sub_1C0CF6468(a3, a4);
      sub_1C0CF6468(a5, a6);
      sub_1C0CF6468(a7, a8);
      sub_1C0CF6468(a12, a13);
      sub_1C0CF6468(a16, a17);
      sub_1C0CF6468(a3, a4);
      sub_1C0CF6468(a5, a6);
      sub_1C0CF6468(a7, a8);
      sub_1C0CF6468(a12, a13);
      sub_1C0CF6468(a16, a17);
      sub_1C0CF6468(a3, a4);
      sub_1C0CF6468(a5, a6);
      sub_1C0CF6468(a7, a8);
      sub_1C0CF6468(a12, a13);
      sub_1C0CF6468(a16, a17);
      v45 = sub_1C0D7812C();
      if (!v45)
      {
        v48 = 0;
LABEL_41:
        v87 = sub_1C0D7814C();
        v88 = v216;
        if (v87 < v216)
        {
          v88 = v87;
        }

        v89 = v88 + v48;
        if (v48)
        {
          v90 = v89;
        }

        else
        {
          v90 = 0;
        }

        v91 = a4 >> 62;
        v209 = v48;
        v220 = v90;
        if ((a4 >> 62) > 1)
        {
          if (v91 != 2)
          {
            memset(v234, 0, 14);
            sub_1C0CF6468(a3, a4);
            sub_1C0CF6468(a5, a6);
            sub_1C0CF6468(a7, a8);
            sub_1C0CF6468(a12, a13);
            sub_1C0CF6468(a16, a17);
            sub_1C0CF6468(a5, a6);
            sub_1C0CF6468(a7, a8);
            sub_1C0CF6468(a12, a13);
            sub_1C0CF6468(a16, a17);
            v28 = a17;
            a18(a5, a6, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, v48, v220, a3, a4, v234, v234);
            sub_1C0CF448C(a5, a6);
            v29 = a7;
            v30 = a8;
            sub_1C0CF448C(a7, a8);
            v27 = a4;
LABEL_139:
            v161 = a13;
            sub_1C0CF448C(a12, a13);
            sub_1C0CF448C(a16, v28);
            sub_1C0CF448C(a3, v27);
            sub_1C0CF448C(a3, v27);
            sub_1C0CF448C(a5, a6);
            sub_1C0CF448C(v29, v30);
            sub_1C0CF448C(a12, a13);
            sub_1C0CF448C(a16, v28);
            sub_1C0CF448C(a3, v27);
            sub_1C0CF448C(a5, a6);
            sub_1C0CF448C(v29, v30);
            v145 = a12;
            goto LABEL_140;
          }

          v195 = *(a3 + 24);
          v198 = *(a3 + 16);
          sub_1C0CF6468(a12, a13);
          sub_1C0CF6468(a16, a17);
          sub_1C0CF6468(a5, a6);
          sub_1C0CF6468(a7, a8);
          sub_1C0CF6468(a3, a4);
          sub_1C0CF6468(a5, a6);
          sub_1C0CF6468(a7, a8);
          sub_1C0CF6468(a12, a13);
          sub_1C0CF6468(a16, a17);
          sub_1C0CF6468(a3, a4);
          sub_1C0CF6468(a3, a4);
          sub_1C0CF6468(a5, a6);
          sub_1C0CF6468(a7, a8);
          sub_1C0CF6468(a12, a13);
          sub_1C0CF6468(a16, a17);
          sub_1C0CF6468(a3, a4);
          sub_1C0CF6468(a5, a6);
          sub_1C0CF6468(a7, a8);
          sub_1C0CF6468(a12, a13);
          sub_1C0CF6468(a16, a17);
          v94 = sub_1C0D7812C();
          if (v94)
          {
            v95 = a6;
            v96 = sub_1C0D7815C();
            v97 = v198;
            if (__OFSUB__(v198, v96))
            {
LABEL_159:
              __break(1u);
              goto LABEL_160;
            }

            v94 += v198 - v96;
          }

          else
          {
            v95 = a6;
            v97 = v198;
          }

          v151 = v195 - v97;
          if (__OFSUB__(v195, v97))
          {
            goto LABEL_153;
          }

          v152 = sub_1C0D7814C();
          if (v152 >= v151)
          {
            v153 = v151;
          }

          else
          {
            v153 = v152;
          }

          v154 = v153 + v94;
          if (v94)
          {
            v155 = v154;
          }

          else
          {
            v155 = 0;
          }

          sub_1C0CF6468(a3, a4);
          sub_1C0CF6468(a5, v95);
          sub_1C0CF6468(a7, a8);
          sub_1C0CF6468(a12, a13);
          sub_1C0CF6468(a16, a17);
          v156 = v95;
          v92 = a8;
          a18(a5, v156, a5, v156, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, v209, v220, a3, a4, v94, v155);
          sub_1C0CF448C(a5, v95);
          sub_1C0CF448C(a7, a8);
          sub_1C0CF448C(a12, a13);
          sub_1C0CF448C(a16, a17);
          sub_1C0CF448C(a3, a4);
          sub_1C0CF448C(a5, v95);
          sub_1C0CF448C(a7, a8);
          sub_1C0CF448C(a12, a13);
          sub_1C0CF448C(a16, a17);
          sub_1C0CF448C(a3, a4);
          sub_1C0CF448C(a5, v95);
          sub_1C0CF448C(a7, a8);
          sub_1C0CF448C(a12, a13);
          v28 = a17;
          sub_1C0CF448C(a16, a17);
          v27 = a4;
          sub_1C0CF448C(a3, a4);
          sub_1C0CF448C(a5, v156);
          v29 = a7;
          v93 = a7;
        }

        else
        {
          if (v91)
          {
            if (a3 >> 32 < a3)
            {
LABEL_151:
              __break(1u);
LABEL_152:
              __break(1u);
LABEL_153:
              __break(1u);
              goto LABEL_154;
            }

            sub_1C0CF6468(a12, a13);
            sub_1C0CF6468(a16, a17);
            sub_1C0CF6468(a5, a6);
            sub_1C0CF6468(a7, a8);
            sub_1C0CF6468(a3, a4);
            sub_1C0CF6468(a5, a6);
            sub_1C0CF6468(a7, a8);
            sub_1C0CF6468(a12, a13);
            sub_1C0CF6468(a16, a17);
            sub_1C0CF6468(a3, a4);
            sub_1C0CF6468(a3, a4);
            sub_1C0CF6468(a5, a6);
            sub_1C0CF6468(a7, a8);
            sub_1C0CF6468(a12, a13);
            sub_1C0CF6468(a16, a17);
            sub_1C0CF6468(a3, a4);
            sub_1C0CF6468(a5, a6);
            sub_1C0CF6468(a7, a8);
            sub_1C0CF6468(a12, a13);
            sub_1C0CF6468(a16, a17);
            v122 = sub_1C0D7812C();
            if (v122)
            {
              v123 = v122;
              v124 = a6;
              v125 = sub_1C0D7815C();
              if (__OFSUB__(a3, v125))
              {
                goto LABEL_161;
              }

              v126 = a3 - v125 + v123;
            }

            else
            {
              v124 = a6;
              v126 = 0;
            }

            v162 = sub_1C0D7814C();
            if (v162 >= (a3 >> 32) - a3)
            {
              v163 = (a3 >> 32) - a3;
            }

            else
            {
              v163 = v162;
            }

            v164 = v163 + v126;
            if (!v126)
            {
              v164 = 0;
            }

            v203 = v164;
            sub_1C0CF6468(a3, a4);
            sub_1C0CF6468(a5, v124);
            sub_1C0CF6468(a7, a8);
            sub_1C0CF6468(a12, a13);
            sub_1C0CF6468(a16, a17);
            v165 = v124;
            a18(a5, v165, a5, v165, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, v209, v220, a3, a4, v126, v203);
            sub_1C0CF448C(a5, v124);
            sub_1C0CF448C(a7, a8);
            sub_1C0CF448C(a12, a13);
            sub_1C0CF448C(a16, a17);
            sub_1C0CF448C(a3, a4);
            sub_1C0CF448C(a5, v124);
            sub_1C0CF448C(a7, a8);
            sub_1C0CF448C(a12, a13);
            sub_1C0CF448C(a16, a17);
            sub_1C0CF448C(a3, a4);
            sub_1C0CF448C(a5, v124);
            sub_1C0CF448C(a7, a8);
            sub_1C0CF448C(a12, a13);
            v28 = a17;
            sub_1C0CF448C(a16, a17);
            v27 = a4;
            sub_1C0CF448C(a3, a4);
            sub_1C0CF448C(a5, v165);
            v29 = a7;
            v93 = a7;
            v30 = a8;
            v157 = a8;
            goto LABEL_138;
          }

          v234[0] = a3;
          LODWORD(v234[1]) = a4;
          WORD2(v234[1]) = WORD2(a4);
          sub_1C0CF6468(a3, a4);
          sub_1C0CF6468(a5, a6);
          sub_1C0CF6468(a7, a8);
          sub_1C0CF6468(a12, a13);
          sub_1C0CF6468(a16, a17);
          sub_1C0CF6468(a5, a6);
          sub_1C0CF6468(a7, a8);
          sub_1C0CF6468(a12, a13);
          sub_1C0CF6468(a16, a17);
          v27 = a4;
          v92 = a8;
          v28 = a17;
          a18(a5, a6, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, v209, v220, a3, a4, v234, v234 + BYTE6(a4));
          sub_1C0CF448C(a5, a6);
          v29 = a7;
          v93 = a7;
        }

        v30 = v92;
        v157 = v92;
LABEL_138:
        sub_1C0CF448C(v93, v157);
        goto LABEL_139;
      }

      v46 = v45;
      v47 = sub_1C0D7815C();
      if (!__OFSUB__(v206, v47))
      {
        v48 = v206 - v47 + v46;
        goto LABEL_41;
      }

LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
      goto LABEL_147;
    }

    __break(1u);
    goto LABEL_143;
  }

  v234[0] = a1;
  LOWORD(v234[1]) = a2;
  BYTE2(v234[1]) = BYTE2(a2);
  BYTE3(v234[1]) = BYTE3(a2);
  BYTE4(v234[1]) = BYTE4(a2);
  BYTE5(v234[1]) = BYTE5(a2);
  v23 = a4 >> 62;
  v214 = v234 + BYTE6(a2);
  if ((a4 >> 62) > 1)
  {
    if (v23 != 2)
    {
      memset(v233, 0, 14);
      sub_1C0CF6468(a12, a13);
      v114 = a3;
      v27 = a4;
      v28 = a17;
      sub_1C0CF6468(a16, a17);
      sub_1C0CF6468(a5, a6);
      sub_1C0CF6468(a7, a8);
      sub_1C0CF6468(v114, v27);
      sub_1C0CF6468(a5, a6);
      sub_1C0CF6468(a7, a8);
      sub_1C0CF6468(a12, a13);
      v25 = a16;
      sub_1C0CF6468(a16, a17);
      sub_1C0CF6468(v114, v27);
      sub_1C0CF6468(a12, a13);
      sub_1C0CF6468(a16, a17);
      sub_1C0CF6468(v114, v27);
      sub_1C0CF6468(a5, a6);
      sub_1C0CF6468(a7, a8);
      sub_1C0CF6468(a12, a13);
      sub_1C0CF6468(a16, a17);
      sub_1C0CF6468(v114, v27);
      sub_1C0CF6468(a5, a6);
      v30 = a8;
      sub_1C0CF6468(a7, a8);
      sub_1C0CF6468(a16, a17);
      v192 = v233;
      v185 = v114;
      v187 = v27;
      v184 = v214;
      v180 = a16;
      v182 = a17;
      v176 = a14;
      v178 = a15;
      v174 = a13;
      v170 = a11;
      v172 = a12;
      v31 = a5;
      v32 = a6;
      v29 = a7;
      v33 = a5;
      v34 = a6;
      v35 = a7;
      v36 = a8;
      goto LABEL_72;
    }

    v196 = *(a3 + 24);
    v207 = *(a3 + 16);
    sub_1C0CF6468(a5, a6);
    sub_1C0CF6468(a7, a8);
    sub_1C0CF6468(a12, a13);
    sub_1C0CF6468(a16, a17);
    sub_1C0CF6468(a3, a4);
    sub_1C0CF6468(a5, a6);
    sub_1C0CF6468(a7, a8);
    sub_1C0CF6468(a12, a13);
    sub_1C0CF6468(a16, a17);
    sub_1C0CF6468(a3, a4);
    sub_1C0CF6468(a5, a6);
    sub_1C0CF6468(a7, a8);
    sub_1C0CF6468(a12, a13);
    sub_1C0CF6468(a16, a17);
    sub_1C0CF6468(a3, a4);
    sub_1C0CF6468(a12, a13);
    sub_1C0CF6468(a16, a17);
    sub_1C0CF6468(a5, a6);
    sub_1C0CF6468(a7, a8);
    sub_1C0CF6468(a3, a4);
    sub_1C0CF6468(a3, a4);
    sub_1C0CF6468(a5, a6);
    sub_1C0CF6468(a7, a8);
    sub_1C0CF6468(a12, a13);
    sub_1C0CF6468(a16, a17);
    sub_1C0CF6468(a3, a4);
    sub_1C0CF6468(a5, a6);
    v59 = a8;
    sub_1C0CF6468(a7, a8);
    sub_1C0CF6468(a12, a13);
    sub_1C0CF6468(a16, a17);
    v60 = sub_1C0D7812C();
    if (v60)
    {
      v61 = v60;
      v62 = a13;
      v63 = sub_1C0D7815C();
      v64 = v207;
      if (__OFSUB__(v207, v63))
      {
LABEL_154:
        __break(1u);
        goto LABEL_155;
      }

      v59 = a8;
      v65 = v207 - v63 + v61;
    }

    else
    {
      v62 = a13;
      v65 = 0;
      v64 = v207;
    }

    v127 = v196 - v64;
    if (!__OFSUB__(v196, v64))
    {
      v128 = sub_1C0D7814C();
      if (v128 >= v127)
      {
        v129 = v127;
      }

      else
      {
        v129 = v128;
      }

      v130 = v129 + v65;
      if (!v65)
      {
        v130 = 0;
      }

      v213 = v130;
      v131 = a4;
      v226 = a4;
      sub_1C0CF6468(a3, a4);
      v132 = v65;
      v133 = a5;
      sub_1C0CF6468(a5, a6);
      sub_1C0CF6468(a7, v59);
      v134 = v62;
      sub_1C0CF6468(a12, v62);
      v25 = a16;
      v28 = a17;
      sub_1C0CF6468(a16, a17);
      v191 = v132;
      v29 = a7;
      a18(v133, a6, v133, a6, a7, v59, a9, a10, a11, a12, v134, a14, a15, a16, a17, v234, v214, a3, v131, v191, v213);
      sub_1C0CF448C(v133, a6);
      sub_1C0CF448C(a7, v59);
      sub_1C0CF448C(a12, v134);
      sub_1C0CF448C(a16, a17);
      sub_1C0CF448C(a3, v226);
      sub_1C0CF448C(v133, a6);
      v30 = a8;
      sub_1C0CF448C(a7, a8);
      sub_1C0CF448C(a12, a13);
      sub_1C0CF448C(a16, a17);
      sub_1C0CF448C(a3, v226);
      v27 = v226;
      sub_1C0CF448C(v133, a6);
      sub_1C0CF448C(a7, a8);
      v104 = a12;
      v105 = a13;
      goto LABEL_93;
    }

    goto LABEL_148;
  }

  if (v23)
  {
    v199 = a3;
    v210 = (a3 >> 32) - a3;
    if (a3 >> 32 >= a3)
    {
      sub_1C0CF6468(a5, a6);
      sub_1C0CF6468(a7, a8);
      sub_1C0CF6468(a12, a13);
      sub_1C0CF6468(a16, a17);
      sub_1C0CF6468(a3, a4);
      sub_1C0CF6468(a5, a6);
      sub_1C0CF6468(a7, a8);
      sub_1C0CF6468(a12, a13);
      sub_1C0CF6468(a16, a17);
      sub_1C0CF6468(a3, a4);
      sub_1C0CF6468(a5, a6);
      sub_1C0CF6468(a7, a8);
      sub_1C0CF6468(a12, a13);
      sub_1C0CF6468(a16, a17);
      sub_1C0CF6468(a3, a4);
      sub_1C0CF6468(a12, a13);
      sub_1C0CF6468(a16, a17);
      sub_1C0CF6468(a5, a6);
      sub_1C0CF6468(a7, a8);
      sub_1C0CF6468(a3, a4);
      sub_1C0CF6468(a3, a4);
      sub_1C0CF6468(a5, a6);
      sub_1C0CF6468(a7, a8);
      sub_1C0CF6468(a12, a13);
      sub_1C0CF6468(a16, a17);
      sub_1C0CF6468(a3, a4);
      sub_1C0CF6468(a5, a6);
      sub_1C0CF6468(a7, a8);
      sub_1C0CF6468(a12, a13);
      sub_1C0CF6468(a16, a17);
      v98 = sub_1C0D7812C();
      if (!v98)
      {
LABEL_57:
        v100 = sub_1C0D7814C();
        v101 = v210;
        if (v100 < v210)
        {
          v101 = v100;
        }

        v102 = v101 + v98;
        if (!v98)
        {
          v102 = 0;
        }

        v211 = v102;
        sub_1C0CF6468(a3, a4);
        sub_1C0CF6468(a5, a6);
        sub_1C0CF6468(a7, a8);
        sub_1C0CF6468(a12, a13);
        v25 = a16;
        v103 = a4;
        v28 = a17;
        sub_1C0CF6468(a16, a17);
        v189 = v98;
        v29 = a7;
        v30 = a8;
        a18(a5, a6, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, v234, v214, a3, v103, v189, v211);
        sub_1C0CF448C(a5, a6);
        sub_1C0CF448C(a7, a8);
        sub_1C0CF448C(a12, a13);
        sub_1C0CF448C(a16, a17);
        sub_1C0CF448C(a3, v103);
        sub_1C0CF448C(a5, a6);
        sub_1C0CF448C(a7, a8);
        sub_1C0CF448C(a12, a13);
        sub_1C0CF448C(a16, a17);
        sub_1C0CF448C(a3, v103);
        v27 = v103;
        sub_1C0CF448C(a5, a6);
        sub_1C0CF448C(a7, a8);
        v104 = a12;
        v105 = a13;
LABEL_93:
        sub_1C0CF448C(v104, v105);
        goto LABEL_94;
      }

      v99 = sub_1C0D7815C();
      if (!__OFSUB__(v199, v99))
      {
        v98 += v199 - v99;
        goto LABEL_57;
      }

      goto LABEL_156;
    }

    goto LABEL_146;
  }

  v233[0] = a3;
  LOWORD(v233[1]) = a4;
  BYTE2(v233[1]) = BYTE2(a4);
  BYTE3(v233[1]) = BYTE3(a4);
  BYTE4(v233[1]) = BYTE4(a4);
  BYTE5(v233[1]) = BYTE5(a4);
  v204 = v233 + BYTE6(a4);
  sub_1C0CF6468(a12, a13);
  v25 = a16;
  v26 = a3;
  v27 = a4;
  v28 = a17;
  sub_1C0CF6468(a16, a17);
  sub_1C0CF6468(a5, a6);
  sub_1C0CF6468(a7, a8);
  sub_1C0CF6468(v26, v27);
  sub_1C0CF6468(a5, a6);
  sub_1C0CF6468(a7, a8);
  sub_1C0CF6468(a12, a13);
  sub_1C0CF6468(a16, a17);
  sub_1C0CF6468(v26, v27);
  sub_1C0CF6468(a12, a13);
  sub_1C0CF6468(a16, a17);
  sub_1C0CF6468(v26, v27);
  sub_1C0CF6468(a5, a6);
  sub_1C0CF6468(a7, a8);
  sub_1C0CF6468(a12, a13);
  sub_1C0CF6468(a16, a17);
  sub_1C0CF6468(v26, v27);
  sub_1C0CF6468(a5, a6);
  sub_1C0CF6468(a7, a8);
  sub_1C0CF6468(a16, a17);
  v192 = v204;
  v29 = a7;
  v187 = v27;
  v185 = v26;
  v30 = a8;
  v184 = v214;
  v180 = a16;
  v182 = a17;
  v176 = a14;
  v178 = a15;
  v174 = a13;
  v170 = a11;
  v172 = a12;
  v31 = a5;
  v32 = a6;
  v33 = a5;
  v34 = a6;
  v35 = a7;
  v36 = a8;
LABEL_72:
  a18(v31, v32, v33, v34, v35, v36, a9, a10, v170, v172, v174, v176, v178, v180, v182, v234, v184, v185, v187, v233, v192);
LABEL_94:
  sub_1C0CF448C(v25, v28);
  sub_1C0CF448C(a3, v27);
  sub_1C0CF448C(a5, a6);
  sub_1C0CF448C(v29, v30);
  v135 = a12;
  v136 = a13;
  sub_1C0CF448C(a12, a13);
  sub_1C0CF448C(a16, v28);
  sub_1C0CF448C(a3, v27);
  sub_1C0CF448C(a3, v27);
  v137 = a5;
  v138 = a6;
LABEL_105:
  sub_1C0CF448C(v137, v138);
  sub_1C0CF448C(v29, v30);
  v145 = v135;
  v146 = v136;
LABEL_141:
  sub_1C0CF448C(v145, v146);
  sub_1C0CF448C(a16, v28);
  sub_1C0CF448C(a3, v27);
  sub_1C0CF448C(a5, a6);
  sub_1C0CF448C(v29, v30);
  v166 = v28;
  v167 = v29;
  v168 = v166;
  sub_1C0CF448C(a12, a13);
  sub_1C0CF448C(a16, v168);
  sub_1C0CF448C(a3, v27);
  sub_1C0CF448C(a5, a6);
  sub_1C0CF448C(v167, a8);
  sub_1C0CF448C(a12, a13);
  return sub_1C0CF448C(a16, v168);
}