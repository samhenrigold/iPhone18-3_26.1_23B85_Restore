uint64_t sub_237CF196C(uint64_t a1, uint64_t a2)
{
  if (*(*v2 + 16))
  {
    v4 = OUTLINED_FUNCTION_11_19();
    sub_237D2FC30(v4);
  }

  sub_237EF8260();
  MEMORY[0x2383E0710](95, 0xE100000000000000);
  v5 = sub_237EF9AB0();
  MEMORY[0x2383E0710](v5);

  return a1;
}

void sub_237CF1A18()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFB20, &unk_237F09D50);
  OUTLINED_FUNCTION_18(v5);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  memcpy(v24, v0, sizeof(v24));
  sub_237CF17F0();
  sub_237CF1BA8();
  v12 = v11;
  if (v13)
  {

LABEL_5:
    v16 = type metadata accessor for TensorDescription(0);
    v17 = *(v16 + 20);
    sub_237EF7B10();
    OUTLINED_FUNCTION_4();
    (*(v18 + 16))(&v8[v17], v2);
    *v8 = v4;
    OUTLINED_FUNCTION_29();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v16);
    sub_237EF8260();
    sub_237EF8260();
    sub_237E60CDC();
    OUTLINED_FUNCTION_38_0();
    return;
  }

  v14 = v10 + 1;
  if (!__OFADD__(v10, 1))
  {
    v15 = v9;
    swift_isUniquelyReferenced_nonNull_native();
    v23 = *v0;
    sub_237C911D0(v14, v15, v12);

    *v0 = v23;
    goto LABEL_5;
  }

  __break(1u);
}

void sub_237CF1BA8()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v21 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFB38, &qword_237F09D70);
  OUTLINED_FUNCTION_18(v4);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFB40, &qword_237F09D78);
  OUTLINED_FUNCTION_1();
  v20 = v9;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFB48, &qword_237F09D80);
  OUTLINED_FUNCTION_1();
  v15 = v14;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_24_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFB50, &qword_237F09D88);
  sub_237C96710(&qword_27DEAFB58, &qword_27DEAFB48, &qword_237F09D80, MEMORY[0x277D85AC0]);
  sub_237EF6CB0();
  v22 = v2;
  sub_237EF6CC0();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    (*(v15 + 8))(v0, v13);
    sub_237C65484(v7, &qword_27DEAFB38, &qword_237F09D70);
    sub_237EF8260();
  }

  else
  {
    v17 = v20;
    (*(v20 + 32))(v12, v7, v8);
    sub_237EF6CD0();
    v18 = sub_237EF86E0();
    MEMORY[0x2383E06D0](v18);

    sub_237EF6CE0();
    (*(v17 + 8))(v12, v8);
    (*(v15 + 8))(v0, v13);
  }

  OUTLINED_FUNCTION_38_0();
}

void sub_237CF1ED8()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFB20, &unk_237F09D50);
  v3 = OUTLINED_FUNCTION_18(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_26();
  v52 = v4 - v5;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v6);
  v8 = &v49 - v7;
  v9 = type metadata accessor for TensorDescription(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  memcpy(v55, v0, sizeof(v55));
  OUTLINED_FUNCTION_18_14();
  sub_237CF1674();
  memcpy(v54, v0, sizeof(v54));
  v14 = v54[1];
  OUTLINED_FUNCTION_20_10();
  sub_237CF17F0();
  v15 = OUTLINED_FUNCTION_18_14();
  sub_237DD7298(v14, v16, v15);
  v51 = v9;
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    goto LABEL_29;
  }

  sub_237CF231C(v8, v13);
  v17 = v52;
  v18 = OUTLINED_FUNCTION_18_14();
  sub_237E63E4C(v19, v18);
  sub_237C65484(v17, &qword_27DEAFB20, &unk_237F09D50);
  OUTLINED_FUNCTION_18_14();
  sub_237CF1BA8();
  v23 = v13;
  if (v24)
  {
    goto LABEL_5;
  }

  v25 = v20;
  v26 = v22;
  v27 = sub_237DD734C(v20, v21, v54[0]);
  if (__OFADD__(v26, 1))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v28)
  {
LABEL_5:

    v29 = v1;
LABEL_6:
    OUTLINED_FUNCTION_20_10();
    sub_237CF1A18();
    v30 = v29[2];
    v31 = *(v30 + 16);
    if (!v31)
    {
LABEL_13:
      sub_237CF42E8(v23);
      OUTLINED_FUNCTION_38_0();
      return;
    }

    v32 = 0;
    while (1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_237E64260(v30, v33, v34, v35);
        v30 = v37;
      }

      if (v32 >= *(v30 + 16))
      {
        break;
      }

      v36 = sub_237EF7C70();
      OUTLINED_FUNCTION_6_1(v36);
      OUTLINED_FUNCTION_18_14();
      sub_237CF2380();
      if (v31 == ++v32)
      {
        v29[2] = v30;
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

  v29 = v1;
  if (v27 != v26 + 1)
  {

    goto LABEL_6;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53 = *v1;
  v38 = v53;
  v39 = sub_237D2FC30(v25);
  v40 = *(v38 + 16);
  LODWORD(v52) = v41;
  v42 = (v41 & 1) == 0;
  v49 = v40 + v42;
  if (__OFADD__(v40, v42))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v43 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2D8, &unk_237F066B0);
  if ((sub_237EF96B0() & 1) == 0)
  {
    v46 = v52;
    goto LABEL_21;
  }

  v44 = sub_237D2FC30(v25);
  v46 = v52;
  if ((v52 & 1) == (v45 & 1))
  {
    v43 = v44;
LABEL_21:
    if ((v46 & 1) == 0)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v47 = *(*(v53 + 56) + 8 * v43);

    if (__OFSUB__(v47, 1))
    {
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v48 = v53;
    *(*(v53 + 56) + 8 * v43) = v47 - 1;
    *v1 = v48;
    goto LABEL_6;
  }

LABEL_30:
  sub_237EFA020();
  __break(1u);
}

uint64_t type metadata accessor for TensorDescription(uint64_t a1)
{
  result = qword_27DEAFBA8;
  if (!qword_27DEAFBA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237CF231C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TensorDescription(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_237CF2380()
{
  OUTLINED_FUNCTION_37_0();
  v112 = v1;
  v101 = v2;
  v124 = v3;
  v125 = v4;
  v103 = sub_237EF78C0();
  OUTLINED_FUNCTION_1();
  v104 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v102 = v8 - v7;
  OUTLINED_FUNCTION_12_1();
  v123 = sub_237EF7AB0();
  v9 = OUTLINED_FUNCTION_6_1(v123);
  v11 = v10;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5();
  v14 = (v13 - v12);
  v15 = sub_237EF7B00();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_26();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_22_1();
  v106 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFB28, &qword_237F09D60);
  v25 = OUTLINED_FUNCTION_18(v24);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_26();
  v113 = (v26 - v27);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v28);
  v30 = (&v99 - v29);
  v115 = v0;
  v31 = sub_237EF7C30();
  v32 = 0;
  v34 = v31 + 64;
  v33 = *(v31 + 64);
  v108 = v31;
  v35 = 1 << *(v31 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & v33;
  v38 = (v35 + 63) >> 6;
  v105 = v17 + 16;
  v118 = (v17 + 32);
  v127 = v11 + 88;
  v128 = v11 + 16;
  v126 = *MEMORY[0x277D252B0];
  v129 = v11;
  v121 = v11 + 96;
  v122 = v11 + 8;
  v107 = v17;
  v109 = (v17 + 8);
  v116 = v30;
  v111 = v31 + 64;
  v110 = v38;
  v120 = v15;
  v117 = v21;
  if ((v36 & v33) == 0)
  {
    goto LABEL_5;
  }

  do
  {
    v39 = v32;
LABEL_10:
    v119 = (v37 - 1) & v37;
    v41 = __clz(__rbit64(v37)) | (v39 << 6);
    v42 = (*(v108 + 48) + 16 * v41);
    v44 = *v42;
    v43 = v42[1];
    v45 = v107;
    v46 = v106;
    v47 = v120;
    (*(v107 + 16))(v106, *(v108 + 56) + *(v107 + 72) * v41, v120);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFB30, &qword_237F09D68);
    v49 = *(v48 + 48);
    v50 = v113;
    *v113 = v44;
    *(v50 + 1) = v43;
    v40 = v50;
    (*(v45 + 32))(&v50[v49], v46, v47);
    OUTLINED_FUNCTION_29();
    __swift_storeEnumTagSinglePayload(v51, v52, v53, v48);
    sub_237EF8260();
    v30 = v116;
    v21 = v117;
LABEL_11:
    sub_237CF4344(v40, v30);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFB30, &qword_237F09D68);
    if (__swift_getEnumTagSinglePayload(v30, 1, v54) == 1)
    {

      OUTLINED_FUNCTION_28_8();
      v79 = *(sub_237EF7C60() + 16);

      if (!v79)
      {
LABEL_48:
        OUTLINED_FUNCTION_38_0();
        return;
      }

      v80 = 0;
      v129 = v104 + 16;
      v81 = v104;
      while (1)
      {
        OUTLINED_FUNCTION_28_8();
        v82 = sub_237EF7C60();
        if (v80 >= *(v82 + 16))
        {
          goto LABEL_51;
        }

        v83 = v102;
        v84 = v103;
        (*(v81 + 16))(v102, v82 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v80, v103);

        v85 = sub_237EF7890();
        v87 = v86;
        (*(v81 + 8))(v83, v84);
        if (v85 == v124 && v87 == v125)
        {
          break;
        }

        v89 = sub_237EF9D40();

        if (v89)
        {
          goto LABEL_43;
        }

LABEL_47:
        if (v79 == ++v80)
        {
          goto LABEL_48;
        }
      }

LABEL_43:
      sub_237EF8260();
      OUTLINED_FUNCTION_28_8();
      v90 = sub_237EF7C50();
      v92 = v91;
      v93 = *v91;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v92 = v93;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_237E64248(v93, v95, v96, v97);
        v93 = v98;
        *v92 = v98;
      }

      if (v80 >= *(v93 + 16))
      {
        goto LABEL_52;
      }

      sub_237EF78A0();
      v90(v131, 0);
      goto LABEL_47;
    }

    v55 = v30[1];
    v114 = *v30;
    v56 = v120;
    (*v118)(v21, v30 + *(v54 + 48), v120);
    v57 = sub_237EF7AE0();
    v58 = v21;
    v59 = *(v57 + 16);
    if (!v59)
    {

      v21 = v58;
      goto LABEL_31;
    }

    v60 = 0;
    OUTLINED_FUNCTION_28();
    v62 = v57 + v61;
    v63 = v123;
    while (1)
    {
      if (v60 >= *(v57 + 16))
      {
        __break(1u);
        goto LABEL_50;
      }

      v64 = v55;
      v65 = v129;
      (*(v129 + 16))(v14, v62 + *(v129 + 72) * v60, v63);
      v66 = (*(v65 + 88))(v14, v63);
      if (v66 != v126)
      {
        v71 = OUTLINED_FUNCTION_23_10();
        v72(v71, v63);
        goto LABEL_23;
      }

      v67 = OUTLINED_FUNCTION_23_10();
      v68(v67, v63);
      if (*v14 == v124 && v14[1] == v125)
      {
        break;
      }

      v70 = sub_237EF9D40();

      v63 = v123;
      if (v70)
      {

        v64 = v55;
        goto LABEL_28;
      }

LABEL_23:
      if (v59 == ++v60)
      {

        v56 = v120;
        v21 = v117;
        v30 = v116;
        goto LABEL_31;
      }
    }

LABEL_28:
    OUTLINED_FUNCTION_28_8();
    v100 = sub_237EF7C20();
    v76 = sub_237D820B8(v130, v114, v64);
    v56 = v120;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v77, 1, v120);
    v21 = v117;
    if (!EnumTagSinglePayload)
    {
      sub_237CF3FC0();
    }

    (v76)(v130, 0);

    v100(v131, 0);
    v30 = v116;
LABEL_31:
    (*v109)(v21, v56);
    v34 = v111;
    v38 = v110;
    v37 = v119;
  }

  while (v119);
LABEL_5:
  v40 = v113;
  while (1)
  {
    v39 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v39 >= v38)
    {
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFB30, &qword_237F09D68);
      OUTLINED_FUNCTION_22_11(v40, v74, v75, v73);
      v119 = 0;
      goto LABEL_11;
    }

    v37 = *(v34 + 8 * v39);
    ++v32;
    if (v37)
    {
      v32 = v39;
      goto LABEL_10;
    }
  }

LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
}

uint64_t sub_237CF2C10@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFB60, &qword_237F09D90);
  v61 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v49 = &v39 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v56 = &v39 - v3;
  v4 = sub_237EF63B0();
  v5 = *(v4 - 8);
  v59 = v4;
  v60 = v5;
  MEMORY[0x28223BE20](v4);
  v48 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v58 = &v39 - v8;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFB48, &qword_237F09D80);
  v52 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v10 = &v39 - v9;
  v55 = sub_237EF6CA0();
  v11 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_237EF6060();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFB68, &qword_237F09D98);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v39 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFB70, &qword_237F09DA0);
  v57 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v54 = &v39 - v23;
  v62 = 95;
  v63 = 0xE100000000000000;
  v46 = sub_237CF4418();
  MEMORY[0x2383DE450](v64, &v62, MEMORY[0x277D837D0], v46);
  sub_237EF6050();
  sub_237CF446C();
  sub_237EF5DB0();
  sub_237EF6390();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFB50, &qword_237F09D88);
  sub_237C96710(&qword_27DEAFB88, &qword_27DEAFB68, &qword_237F09D98, MEMORY[0x277CC8CD8]);
  sub_237EF6C90();
  v25 = *(v11 + 8);
  v44 = v11 + 8;
  v45 = v25;
  v25(v13, v55);
  (*(v16 + 8))(v18, v15);
  v40 = v10;
  MEMORY[0x2383DE4A0](v10, v24);
  v26 = sub_237C96710(&qword_27DEAFB90, &qword_27DEAFB70, &qword_237F09DA0, MEMORY[0x277D85408]);
  MEMORY[0x2383DE450](v21, v19, v26);
  v27 = *(v57 + 8);
  v57 += 8;
  v47 = v27;
  v41 = v19;
  v27(v21, v19);
  v28 = v48;
  sub_237EF63A0();
  v42 = sub_237CF44C0();
  v29 = v59;
  MEMORY[0x2383DE450](v28, v59, v42);
  v30 = *(v60 + 8);
  v60 += 8;
  v43 = v30;
  v30(v28, v29);
  v62 = v64[0];
  v63 = v64[1];
  sub_237EF6380();

  sub_237EF6390();
  v48 = MEMORY[0x277D85AC0];
  sub_237C96710(&qword_27DEAFBA0, &qword_27DEAFB60, &qword_237F09D90, MEMORY[0x277D85AC0]);
  v31 = v49;
  v32 = v51;
  sub_237EF6C80();
  sub_237EF6C70();
  v33 = *(v61 + 8);
  v61 += 8;
  v33(v31, v32);
  v34 = v55;
  v35 = v45;
  v45(v13, v55);
  sub_237EF6390();
  sub_237EF6C80();
  sub_237C96710(&qword_27DEAFB58, &qword_27DEAFB48, &qword_237F09D80, v48);
  v36 = v40;
  v37 = v50;
  sub_237EF6C70();
  v33(v31, v32);
  v35(v13, v34);
  (*(v52 + 8))(v36, v37);
  v33(v56, v32);
  v43(v58, v59);
  return v47(v54, v41);
}

void sub_237CF33F8()
{
  OUTLINED_FUNCTION_37_0();
  v111 = v0;
  v4 = v3;
  v105 = sub_237EF7CD0();
  OUTLINED_FUNCTION_1();
  v92 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v104 = v8 - v7;
  OUTLINED_FUNCTION_12_1();
  v103 = sub_237EF78C0();
  OUTLINED_FUNCTION_1();
  v107 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_24_7();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFB20, &unk_237F09D50);
  v12 = OUTLINED_FUNCTION_18(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_26();
  v102 = v13 - v14;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_22_1();
  v109 = v16;
  OUTLINED_FUNCTION_12_1();
  v110 = sub_237EF7AB0();
  v17 = OUTLINED_FUNCTION_6_1(v110);
  v19 = v18;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5();
  v22 = (v21 - v20);
  v98 = sub_237EF7B00();
  OUTLINED_FUNCTION_1();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_5();
  v96 = v27 - v26;
  v93 = v4;
  v28 = sub_237EF7C30();
  v29 = 0;
  v30 = v28 + 64;
  v99 = v28;
  v31 = 1 << *(v28 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v28 + 64);
  v34 = (v31 + 63) >> 6;
  v97 = v24;
  v35 = v19 + 16;
  v112 = *MEMORY[0x277D252B0];
  v108 = *MEMORY[0x277D252B8];
  v106 = v2;
  v95 = v28 + 64;
  v94 = v34;
  if (v33)
  {
    while (1)
    {
      v36 = v29;
LABEL_8:
      v100 = v36;
      v101 = (v33 - 1) & v33;
      v1 = v97;
      (*(v97 + 16))(v96, *(v99 + 56) + *(v97 + 72) * (__clz(__rbit64(v33)) | (v36 << 6)), v98);
      v37 = sub_237EF7AE0();
      (*(v97 + 8))(v96, v98);
      v38 = 0;
      v39 = *(v37 + 16);
      v40 = v110;
      while (v39 != v38)
      {
        if (v38 >= *(v37 + 16))
        {
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          v73 = type metadata accessor for TensorDescription(0);
          v74 = v109;
          OUTLINED_FUNCTION_22_11(v109, v75, v76, v73);
          sub_237C65484(v109, &qword_27DEAFB20, &unk_237F09D50);
          OUTLINED_FUNCTION_21_11();

          OUTLINED_FUNCTION_3_31();
          v77 = v2;
          for (i = v1; ; i = v22)
          {
            MEMORY[0x2383E0710](v77, i);
            OUTLINED_FUNCTION_25_9();
            MEMORY[0x2383E0710](0xD00000000000001ALL);
            OUTLINED_FUNCTION_17_15();
            OUTLINED_FUNCTION_9_15("Fatal error", v79, v80, v81, v82, "CreateMLComponents/MLProgramBuilder.swift", v83, v84, v74);
LABEL_36:
            __break(1u);
LABEL_37:
            v89 = type metadata accessor for TensorDescription(0);
            v74 = v102;
            OUTLINED_FUNCTION_22_11(v102, v90, v91, v89);
            sub_237C65484(v102, &qword_27DEAFB20, &unk_237F09D50);
            OUTLINED_FUNCTION_21_11();

            OUTLINED_FUNCTION_3_31();
            v77 = v35;
          }
        }

        OUTLINED_FUNCTION_28();
        (*(v19 + 16))(v22, v37 + v41 + *(v19 + 72) * v38, v40);
        v42 = (*(v19 + 88))(v22, v40);
        if (v42 == v112)
        {
          (*(v19 + 96))(v22, v40);
          v2 = *v22;
          v1 = v22[1];
          v43 = *(v111 + 8);
          if (!*(v43 + 16))
          {
            goto LABEL_33;
          }

          v44 = sub_237D2FC30(*v22);
          if ((v45 & 1) == 0)
          {
            goto LABEL_33;
          }

          v46 = v44;

          v1 = *(v43 + 56);
          v47 = type metadata accessor for TensorDescription(0);
          OUTLINED_FUNCTION_4();
          sub_237CF43B4(v1 + *(v48 + 72) * v46, v109);
          OUTLINED_FUNCTION_29();
          __swift_storeEnumTagSinglePayload(v49, v50, v51, v47);
          sub_237C65484(v109, &qword_27DEAFB20, &unk_237F09D50);
          v40 = v110;
        }

        else
        {
          if (v42 != v108)
          {
            OUTLINED_FUNCTION_17_15();
            OUTLINED_FUNCTION_9_15("Fatal error", v85, v86, 0x206E776F6E6B6E55, 0xEF676E69646E6962, "CreateMLComponents/MLProgramBuilder.swift", v87, v88, 115);
            goto LABEL_36;
          }

          (*(v19 + 8))(v22, v40);
        }

        ++v38;
      }

      v29 = v100;
      v33 = v101;
      v2 = v106;
      v30 = v95;
      v34 = v94;
      if (!v101)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v36 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      goto LABEL_31;
    }

    if (v36 >= v34)
    {
      break;
    }

    v33 = *(v30 + 8 * v36);
    ++v29;
    if (v33)
    {
      goto LABEL_8;
    }
  }

  v1 = sub_237EF7C60();
  v35 = v104;
  v52 = v105;
  v22 = v103;
  v114 = *(v1 + 16);
  if (v114)
  {
    v53 = 0;
    OUTLINED_FUNCTION_28();
    v113 = v1 + v54;
    LODWORD(v109) = *MEMORY[0x277D25310];
    v56 = (v55 + 8);
    v57 = (v92 + 8);
    while (v53 < *(v1 + 16))
    {
      (*(v107 + 16))(v2, v113 + *(v107 + 72) * v53, v22);
      sub_237EF78B0();
      if ((*(v92 + 88))(v35, v52) == v109)
      {
        (*v57)(v35, v52);
        v58 = *(v111 + 8);
        v59 = sub_237EF7890();
        v35 = v59;
        v22 = v60;
        if (!*(v58 + 16))
        {
          goto LABEL_37;
        }

        v61 = sub_237D2FC30(v59);
        if ((v62 & 1) == 0)
        {
          goto LABEL_37;
        }

        v63 = v61;

        v64 = *(v58 + 56);
        v65 = type metadata accessor for TensorDescription(0);
        OUTLINED_FUNCTION_4();
        sub_237CF43B4(v64 + *(v66 + 72) * v63, v102);
        v2 = v106;
        v22 = v103;
        (*v56)(v106, v103);
        OUTLINED_FUNCTION_29();
        __swift_storeEnumTagSinglePayload(v67, v68, v69, v65);
        sub_237C65484(v102, &qword_27DEAFB20, &unk_237F09D50);
        v35 = v104;
        v52 = v105;
      }

      else
      {
        (*v56)(v2, v22);
        (*v57)(v35, v52);
      }

      if (v114 == ++v53)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_32;
  }

LABEL_29:

  sub_237D86CD4();
  v70 = *(*(v111 + 16) + 16);
  sub_237D86DA8(v70);
  v71 = *(v111 + 16);
  *(v71 + 16) = v70 + 1;
  sub_237EF7C70();
  OUTLINED_FUNCTION_4();
  (*(v72 + 16))(v71 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v70, v93);
  *(v111 + 16) = v71;
  OUTLINED_FUNCTION_38_0();
}

void sub_237CF3C98()
{
  OUTLINED_FUNCTION_37_0();
  v32 = v0;
  v31 = v1;
  v2 = sub_237EF78E0();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = sub_237EF79A0();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5();
  v34 = v14 - v13;
  OUTLINED_FUNCTION_12_1();
  v15 = sub_237EF7B10();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  v22 = sub_237EF7CD0();
  v23 = OUTLINED_FUNCTION_18(v22);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_5();
  sub_237E65360(v32);
  v33 = v15;
  (*(v17 + 104))(v21, *MEMORY[0x277D252E0], v15);
  v24 = *(v31 + 16);
  if (v24)
  {
    v30 = v9;
    v35 = MEMORY[0x277D84F90];
    sub_237C63364(0, v24, 0);
    v25 = v31 + 32;
    do
    {
      v25 += 8;
      sub_237EF78D0();
      v27 = *(v35 + 16);
      v26 = *(v35 + 24);
      if (v27 >= v26 >> 1)
      {
        v29 = OUTLINED_FUNCTION_16_16(v26);
        sub_237C63364(v29, v27 + 1, 1);
      }

      *(v35 + 16) = v27 + 1;
      OUTLINED_FUNCTION_28();
      (*(v4 + 32))(v35 + v28 + *(v4 + 72) * v27, v8, v2);
      --v24;
    }

    while (v24);
    v9 = v30;
  }

  sub_237EF7CC0();

  (*(v17 + 8))(v21, v33);
  OUTLINED_FUNCTION_25_9();
  sub_237EF7960();
  (*(v11 + 104))(v34, *MEMORY[0x277D25290], v9);
  OUTLINED_FUNCTION_11_19();
  sub_237EF79D0();
  OUTLINED_FUNCTION_38_0();
}

void sub_237CF3FC0()
{
  OUTLINED_FUNCTION_37_0();
  v42 = v0;
  v44 = v1;
  v46 = v2;
  v47 = v3;
  v4 = sub_237EF7AB0();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_26();
  v10 = (v8 - v9);
  MEMORY[0x28223BE20](v11);
  v13 = v41 - v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_22_1();
  v55 = v15;
  v16 = sub_237EF7AE0();
  v17 = *(v16 + 16);
  if (v17)
  {
    v56 = MEMORY[0x277D84F90];
    sub_237C634D0(0, v17, 0);
    v18 = v56;
    v19 = v6 + 16;
    OUTLINED_FUNCTION_28();
    v41[1] = v16;
    v51 = v20;
    v52 = v21;
    v22 = (v16 + v20);
    v50 = *(v19 + 56);
    v54 = *MEMORY[0x277D252B0];
    v48 = (v19 - 8);
    v49 = v19 + 72;
    v45 = v19 + 80;
    v23 = (v19 + 16);
    v43 = (v19 + 88);
    v24 = v42;
    v53 = v19;
    do
    {
      v25 = v52;
      v52(v13, v22, v4);
      v25(v10, v13, v4);
      v26 = OUTLINED_FUNCTION_15_17();
      v28 = v27(v26);
      if (v28 == v54)
      {
        v29 = OUTLINED_FUNCTION_15_17();
        v30(v29);
        if (*v10 == v46 && v10[1] == v47)
        {

LABEL_13:
          (*v48)(v13, v4);
          v35 = v43;
          v36 = v55;
          *v55 = v44;
          v36[1] = v24;
          (*v35)();
          sub_237EF8260();
          goto LABEL_14;
        }

        v32 = sub_237EF9D40();

        if (v32)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v33 = OUTLINED_FUNCTION_15_17();
        v34(v33);
      }

      (*v23)(v55, v13, v4);
LABEL_14:
      v56 = v18;
      v38 = *(v18 + 16);
      v37 = *(v18 + 24);
      if (v38 >= v37 >> 1)
      {
        v40 = OUTLINED_FUNCTION_16_16(v37);
        sub_237C634D0(v40, v38 + 1, 1);
        v24 = v42;
        v18 = v56;
      }

      *(v18 + 16) = v38 + 1;
      v39 = v50;
      (*v23)(v18 + v51 + v38 * v50, v55, v4);
      v22 += v39;
      --v17;
    }

    while (v17);
  }

  sub_237EF7AF0();
  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_237CF42E8(uint64_t a1)
{
  v2 = type metadata accessor for TensorDescription(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237CF4344(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFB28, &qword_237F09D60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_237CF43B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TensorDescription(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_237CF4418()
{
  result = qword_27DEAFB78;
  if (!qword_27DEAFB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAFB78);
  }

  return result;
}

unint64_t sub_237CF446C()
{
  result = qword_27DEAFB80;
  if (!qword_27DEAFB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAFB80);
  }

  return result;
}

unint64_t sub_237CF44C0()
{
  result = qword_27DEAFB98;
  if (!qword_27DEAFB98)
  {
    sub_237EF63B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAFB98);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_237CF453C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_237CF457C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_237CF4610(uint64_t a1)
{
  sub_237CF4694(319);
  if (v1 <= 0x3F)
  {
    sub_237EF7B10();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_237CF4694(uint64_t a1)
{
  if (!qword_27DEAFBB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAECB0, &unk_237F1A490);
    v1 = sub_237EF8A60();
    if (!v2)
    {
      atomic_store(v1, &qword_27DEAFBB8);
    }
  }
}

uint64_t OUTLINED_FUNCTION_9_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_237EF9740(a1, 11, 2, a4, a5, a6, 41, 2, a9);
}

uint64_t OUTLINED_FUNCTION_21_11()
{
  *(v0 - 104) = 0;
  *(v0 - 96) = 0xE000000000000000;

  return sub_237EF9330();
}

uint64_t OUTLINED_FUNCTION_22_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

uint64_t sub_237CF4804@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t DateFeatureExtractor.calendar.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_237EF60C0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DateFeatureExtractor.init(features:calendar:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  v10 = sub_237EF60C0();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  (*(v13 + 16))(a5, a2, v10);
  v15 = type metadata accessor for DateFeatureExtractor(0, a3, a4, v14);
  *(a5 + *(v15 + 36)) = v9;
  v18 = v9;
  v16 = sub_237CF49E4(&v18);
  result = (*(v12 + 8))(a2, v10);
  *(a5 + *(v15 + 40)) = v16;
  return result;
}

uint64_t sub_237CF49E4(uint64_t *a1)
{
  v2 = sub_237EF60B0();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v6);
  v8 = &v41 - v7;
  v9 = *a1;
  v42 = MEMORY[0x277D84FA0];
  if (v9)
  {
    v13 = OUTLINED_FUNCTION_1_29();
    v14(v13);
    OUTLINED_FUNCTION_12_19();
    v15 = OUTLINED_FUNCTION_2_31();
    v16(v15);
    if ((v9 & 2) == 0)
    {
LABEL_3:
      if ((v9 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_3;
  }

  v17 = OUTLINED_FUNCTION_1_29();
  v18(v17);
  OUTLINED_FUNCTION_12_19();
  v19 = OUTLINED_FUNCTION_2_31();
  v20(v19);
  if ((v9 & 4) == 0)
  {
LABEL_4:
    if ((v9 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v21 = OUTLINED_FUNCTION_1_29();
  v22(v21);
  OUTLINED_FUNCTION_12_19();
  v23 = OUTLINED_FUNCTION_2_31();
  v24(v23);
  if ((v9 & 8) == 0)
  {
LABEL_5:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v25 = OUTLINED_FUNCTION_1_29();
  v26(v25);
  OUTLINED_FUNCTION_12_19();
  v27 = OUTLINED_FUNCTION_2_31();
  v28(v27);
  if ((v9 & 0x10) == 0)
  {
LABEL_6:
    if ((v9 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  v29 = OUTLINED_FUNCTION_1_29();
  v30(v29);
  OUTLINED_FUNCTION_12_19();
  v31 = OUTLINED_FUNCTION_2_31();
  v32(v31);
  if ((v9 & 0x40) == 0)
  {
LABEL_7:
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_8;
    }

LABEL_17:
    v37 = OUTLINED_FUNCTION_1_29();
    v38(v37);
    OUTLINED_FUNCTION_12_19();
    v39 = OUTLINED_FUNCTION_2_31();
    v40(v39);
    if ((v9 & 0x100) == 0)
    {
      return v42;
    }

    goto LABEL_9;
  }

LABEL_16:
  v33 = OUTLINED_FUNCTION_1_29();
  v34(v33);
  OUTLINED_FUNCTION_12_19();
  v35 = OUTLINED_FUNCTION_2_31();
  v36(v35);
  if ((v9 & 0x80) != 0)
  {
    goto LABEL_17;
  }

LABEL_8:
  if ((v9 & 0x100) != 0)
  {
LABEL_9:
    v10 = OUTLINED_FUNCTION_1_29();
    v11(v10);
    OUTLINED_FUNCTION_12_19();
    (*(v4 + 8))(v8, v2);
  }

  return v42;
}

uint64_t DateFeatureExtractor.applied(to:eventHandler:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4;
  v8 = *(a4 + 16);
  v202 = *(v8 - 8);
  MEMORY[0x28223BE20](a1);
  OUTLINED_FUNCTION_26();
  v191 = v9 - v10;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_8_16();
  v192 = v12;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_8_16();
  v193 = v14;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_8_16();
  v194 = v16;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_8_16();
  v198 = v18;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_8_16();
  v189 = v20;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_8_16();
  v190 = v22;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_8_16();
  v195 = v24;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_8_16();
  v196 = v26;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_8_16();
  v197 = v28;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v29);
  v31 = &v188 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v188 - v33;
  v205 = sub_237EF60B0();
  OUTLINED_FUNCTION_1();
  v207 = v35;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_26();
  v206 = v37 - v38;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v39);
  v204 = &v188 - v40;
  sub_237EF5D60();
  OUTLINED_FUNCTION_1();
  v199 = v42;
  v200 = v41;
  MEMORY[0x28223BE20](v41);
  v211 = (&v188 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v208 = a1;
  sub_237EF6080();
  v210 = v8;
  v212 = sub_237EF8110();
  v203 = v6;
  v44 = *(v6 + 36);
  v209 = v4;
  v45 = *(v4 + v44);
  v46 = MEMORY[0x277CC99A0];
  v201 = v45;
  if (v45)
  {
    v47 = OUTLINED_FUNCTION_5_24();
    (v6)(v47);
    v48 = OUTLINED_FUNCTION_10_22();
    (v6)(v48);
    OUTLINED_FUNCTION_22_12();
    v6 = v49;
    v50 = OUTLINED_FUNCTION_8_24();
    (v5)(v50);
    v51 = OUTLINED_FUNCTION_14_19();
    (v5)(v51);
    v4 = v211;
    result = sub_237EF5D40();
    if (v53)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    OUTLINED_FUNCTION_20_11();
    v8 = v210;
    sub_237CF5908(v54, v55, v56, v210, v57);
    (*(v202 + 16))(v31, v34, v8);
    v58 = OUTLINED_FUNCTION_23_11();
    OUTLINED_FUNCTION_11_20(v58);
    v59 = OUTLINED_FUNCTION_26_9();
    v60(v59);
    LOWORD(v45) = v201;
    v46 = MEMORY[0x277CC99A0];
  }

  if ((v45 & 2) != 0)
  {
    v61 = OUTLINED_FUNCTION_5_24();
    (v6)(v61);
    v62 = OUTLINED_FUNCTION_10_22();
    (v6)(v62);
    OUTLINED_FUNCTION_22_12();
    v63 = OUTLINED_FUNCTION_8_24();
    (v5)(v63);
    v64 = OUTLINED_FUNCTION_14_19();
    (v5)(v64);
    v4 = v211;
    result = sub_237EF5D30();
    if (v65)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    OUTLINED_FUNCTION_20_11();
    v6 = v197;
    OUTLINED_FUNCTION_18_15(v66, v67, v68, v69, v70);
    v71 = OUTLINED_FUNCTION_0_21();
    v72(v71);
    v73 = OUTLINED_FUNCTION_23_11();
    OUTLINED_FUNCTION_11_20(v73);
    v74 = OUTLINED_FUNCTION_3_32();
    v75(v74);
    LOWORD(v45) = v201;
  }

  if ((v45 & 4) != 0)
  {
    v76 = OUTLINED_FUNCTION_5_24();
    (v6)(v76);
    v77 = OUTLINED_FUNCTION_10_22();
    (v6)(v77);
    OUTLINED_FUNCTION_22_12();
    OUTLINED_FUNCTION_7_21();
    v5 = v4[1];
    (v5)(v46, v8);
    v78 = OUTLINED_FUNCTION_14_19();
    (v5)(v78);
    v4 = v211;
    result = sub_237EF5D10();
    if (v79)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    OUTLINED_FUNCTION_20_11();
    v6 = v196;
    OUTLINED_FUNCTION_18_15(v80, v81, v82, v83, v84);
    v85 = OUTLINED_FUNCTION_0_21();
    v86(v85);
    v87 = OUTLINED_FUNCTION_23_11();
    OUTLINED_FUNCTION_11_20(v87);
    v88 = OUTLINED_FUNCTION_3_32();
    v89(v88);
    LOWORD(v45) = v201;
  }

  if ((v45 & 8) != 0)
  {
    v90 = OUTLINED_FUNCTION_5_24();
    (v6)(v90);
    v91 = OUTLINED_FUNCTION_10_22();
    (v6)(v91);
    OUTLINED_FUNCTION_22_12();
    OUTLINED_FUNCTION_7_21();
    v5 = v4[1];
    (v5)(v46, v8);
    v92 = OUTLINED_FUNCTION_14_19();
    (v5)(v92);
    v4 = v211;
    result = sub_237EF5D50();
    if (v93)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    OUTLINED_FUNCTION_20_11();
    OUTLINED_FUNCTION_18_15(v94, v95, v96, v97, v98);
    v99 = OUTLINED_FUNCTION_0_21();
    v100(v99);
    v101 = OUTLINED_FUNCTION_23_11();
    OUTLINED_FUNCTION_11_20(v101);
    v102 = OUTLINED_FUNCTION_3_32();
    v103(v102);
    LOWORD(v45) = v201;
  }

  if ((v45 & 0x10) == 0)
  {
    goto LABEL_25;
  }

  v104 = v207;
  v105 = *(v207 + 104);
  v106 = v205;
  v107 = OUTLINED_FUNCTION_21_12();
  v105(v107);
  v108 = OUTLINED_FUNCTION_10_22();
  v105(v108);
  v109 = OUTLINED_FUNCTION_22_12();
  v111 = v110;
  v113 = v112;
  v114 = *(v104 + 8);
  v114(v46, v106);
  v115 = OUTLINED_FUNCTION_14_19();
  (v114)(v115);
  v116 = (v113 & 1) == 0;
  if (v113)
  {
    v117 = 32;
  }

  else
  {
    v117 = v111;
  }

  if (v116)
  {
    v118 = v109;
  }

  else
  {
    v118 = 1;
  }

  result = sub_237EF5D00();
  if (v119)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v120 = __OFSUB__(result, v118);
  result -= v118;
  if (v120)
  {
    __break(1u);
    goto LABEL_39;
  }

  result = sub_237EF83A0();
  v121 = v117 - v118;
  if (__OFSUB__(v117, v118))
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  result = v121 - 1;
  if (__OFSUB__(v121, 1))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v8 = v210;
  v4 = v210;
  sub_237EF83A0();
  v5 = v189;
  sub_237EF8330();
  v46 = v202;
  v122 = *(v202 + 8);
  v122(v31, v8);
  v123 = OUTLINED_FUNCTION_14_19();
  (v122)(v123);
  sub_237EF81D0();
  v124 = v190;
  sub_237EF9760();
  v122(v31, v8);
  v122(v5, v8);
  (*(v46 + 16))(v31, v124, v8);
  v125 = OUTLINED_FUNCTION_23_11();
  OUTLINED_FUNCTION_11_20(v125);
  v122(v124, v8);
  LOWORD(v45) = v201;
LABEL_25:
  if ((v45 & 0x20) == 0)
  {
    goto LABEL_28;
  }

  v197 = v31;
  LODWORD(v198) = *MEMORY[0x277CC9968];
  v126 = v207;
  v5 = v207 + 104;
  v127 = *(v207 + 104);
  v129 = v204;
  v128 = v205;
  v127(v204);
  v130 = *MEMORY[0x277CC9988];
  v131 = v206;
  (v127)(v206, v130, v128);
  v195 = sub_237EF6090();
  v196 = v132;
  LODWORD(v190) = v133;
  v134 = *(v126 + 8);
  v135 = OUTLINED_FUNCTION_14_19();
  v134(v135);
  (v134)(v129, v128);
  (v127)(v129, v198, v128);
  (v127)(v131, v130, v128);
  v136 = sub_237EF6070();
  LOBYTE(v130) = v137;
  v138 = OUTLINED_FUNCTION_14_19();
  v134(v138);
  result = (v134)(v129, v128);
  if (v130)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  OUTLINED_FUNCTION_20_11();
  v139 = v197;
  v8 = v210;
  sub_237CF5908(v136, v140, v141, v210, v142);
  v46 = v202;
  (*(v202 + 16))(v194, v139, v8);
  OUTLINED_FUNCTION_23_11();
  v4 = &v212;
  sub_237EF8A20();
  (*(v46 + 8))(v139, v8);
  LOWORD(v45) = v201;
LABEL_28:
  if ((v45 & 0x40) == 0)
  {
    goto LABEL_31;
  }

  v143 = OUTLINED_FUNCTION_6_22();
  (v46)(v143);
  v144 = OUTLINED_FUNCTION_21_12();
  (v46)(v144);
  OUTLINED_FUNCTION_25_10();
  OUTLINED_FUNCTION_7_21();
  v46 = v4[1];
  v145 = OUTLINED_FUNCTION_14_19();
  (v46)(v145);
  v146 = OUTLINED_FUNCTION_26_9();
  (v46)(v146);
  v4 = v211;
  result = sub_237EF5CF0();
  if (v147)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  OUTLINED_FUNCTION_20_11();
  OUTLINED_FUNCTION_18_15(v148, v149, v150, v151, v152);
  v153 = OUTLINED_FUNCTION_0_21();
  v154(v153);
  v155 = OUTLINED_FUNCTION_23_11();
  OUTLINED_FUNCTION_11_20(v155);
  v156 = OUTLINED_FUNCTION_3_32();
  v157(v156);
  LOWORD(v45) = v201;
LABEL_31:
  if ((v45 & 0x80) != 0)
  {
    v158 = OUTLINED_FUNCTION_6_22();
    (v46)(v158);
    v159 = OUTLINED_FUNCTION_21_12();
    (v46)(v159);
    OUTLINED_FUNCTION_25_10();
    OUTLINED_FUNCTION_7_21();
    v46 = v4[1];
    v160 = OUTLINED_FUNCTION_14_19();
    (v46)(v160);
    v161 = OUTLINED_FUNCTION_26_9();
    (v46)(v161);
    result = sub_237EF5CE0();
    if ((v162 & 1) == 0)
    {
      OUTLINED_FUNCTION_20_11();
      OUTLINED_FUNCTION_18_15(v163, v164, v165, v166, v167);
      v168 = OUTLINED_FUNCTION_0_21();
      v169(v168);
      v170 = OUTLINED_FUNCTION_23_11();
      OUTLINED_FUNCTION_11_20(v170);
      v171 = OUTLINED_FUNCTION_3_32();
      v172(v171);
      LOWORD(v45) = v201;
      goto LABEL_34;
    }

LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

LABEL_34:
  if ((v45 & 0x100) == 0)
  {
LABEL_37:
    (*(v199 + 8))(v211, v200);
    return v212;
  }

  v173 = OUTLINED_FUNCTION_6_22();
  (v46)(v173);
  v174 = OUTLINED_FUNCTION_21_12();
  (v46)(v174);
  OUTLINED_FUNCTION_25_10();
  v175 = *(v5 + 8);
  v176 = OUTLINED_FUNCTION_14_19();
  v175(v176);
  v177 = OUTLINED_FUNCTION_26_9();
  v175(v177);
  result = sub_237EF5D20();
  if ((v178 & 1) == 0)
  {
    OUTLINED_FUNCTION_20_11();
    v179 = v191;
    OUTLINED_FUNCTION_18_15(v180, v181, v182, v183, v184);
    v185 = OUTLINED_FUNCTION_0_21();
    v186(v185);
    v187 = OUTLINED_FUNCTION_23_11();
    OUTLINED_FUNCTION_11_20(v187);
    (*(v46 + 8))(v179, v8);
    goto LABEL_37;
  }

LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_237CF5908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  OUTLINED_FUNCTION_26();
  v11 = (v9 - v10);
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v24 - v16;
  v20 = __OFSUB__(v18, v19);
  result = v18 - v19;
  if (v20)
  {
    __break(1u);
    goto LABEL_6;
  }

  result = sub_237EF83A0();
  v22 = a3 - a2;
  if (__OFSUB__(a3, a2))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = v22 - 1;
  if (!__OFSUB__(v22, 1))
  {
    sub_237EF83A0();
    sub_237EF8330();
    v23 = *(v8 + 8);
    v23(v11, a4);
    v23(v14, a4);
    sub_237EF81D0();
    sub_237EF9760();
    v23(v14, a4);
    return (v23)(v17, a4);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_237CF5AE8(uint64_t *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = DateFeatureExtractor.applied(to:eventHandler:)(a2, a2, a3, a5);
  v6 = *(v5 + 8);

  return v6();
}

uint64_t DateFeatureExtractor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a4;
  v8 = sub_237EF60C0();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a2;
  v22 = a3;
  type metadata accessor for DateFeatureExtractor.CodingKeys(255, a2, a3, v11);
  OUTLINED_FUNCTION_15_18();
  swift_getWitnessTable();
  v12 = sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  v23 = v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v22 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EFA190();
  if (!v4)
  {
    v17 = v23;
    v18 = v24;
    v19 = v10;
    v20 = v25;
    sub_237CF652C();
    sub_237EF9970();
    sub_237EF60A0();
    DateFeatureExtractor.init(features:calendar:)(&v26, v19, v20, v22, v18);
    (*(v17 + 8))(v16, v12);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t DateFeatureExtractor.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DateFeatureExtractor.CodingKeys(255, *(a2 + 16), *(a2 + 24), a4);
  OUTLINED_FUNCTION_15_18();
  swift_getWitnessTable();
  v6 = sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EFA1B0();
  v13[3] = *(v13[0] + *(a2 + 36));
  sub_237CF6580();
  sub_237EF9A70();
  return (*(v8 + 8))(v11, v6);
}

BOOL sub_237CF5EC0(uint64_t a1, uint64_t a2)
{
  v2 = sub_237EF9890();

  return v2 != 0;
}

uint64_t sub_237CF5F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_237CF5F80(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_237CF5FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_237CF605C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

BOOL sub_237CF60CC@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_237CF5EC0(*a1, a1[1]);
  *a2 = result;
  return result;
}

BOOL sub_237CF6134@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237CF5F08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237CF6160(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237CF61B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

CreateMLComponents::DateFeatures sub_237CF62E0@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = DateFeatures.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_237CF6320@<X0>(uint64_t *a1@<X8>)
{
  result = DateFeatures.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_237CF6454@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & result;
  if (v3)
  {
    *v2 &= ~result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t sub_237CF6484@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  *v2 |= result;
  v4 = v3 & result;
  *a2 = v4;
  *(a2 + 8) = v4 == 0;
  return result;
}

unint64_t sub_237CF652C()
{
  result = qword_27DEAFBC0;
  if (!qword_27DEAFBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAFBC0);
  }

  return result;
}

unint64_t sub_237CF6580()
{
  result = qword_27DEAFBC8;
  if (!qword_27DEAFBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAFBC8);
  }

  return result;
}

unint64_t sub_237CF65D4()
{
  result = qword_27DEAFBD0;
  if (!qword_27DEAFBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAFBD0);
  }

  return result;
}

unint64_t sub_237CF662C()
{
  result = qword_27DEAFBD8;
  if (!qword_27DEAFBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAFBD8);
  }

  return result;
}

unint64_t sub_237CF6684()
{
  result = qword_27DEAFBE0;
  if (!qword_27DEAFBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAFBE0);
  }

  return result;
}

unint64_t sub_237CF66DC()
{
  result = qword_27DEAFBE8[0];
  if (!qword_27DEAFBE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DEAFBE8);
  }

  return result;
}

void sub_237CF6778(uint64_t a1)
{
  sub_237EF60C0();
  if (v1 <= 0x3F)
  {
    sub_237CF682C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_237CF682C(uint64_t a1)
{
  if (!qword_27DEAFC70)
  {
    sub_237EF60B0();
    sub_237CF6890();
    v1 = sub_237EF8CF0();
    if (!v2)
    {
      atomic_store(v1, &qword_27DEAFC70);
    }
  }
}

unint64_t sub_237CF6890()
{
  result = qword_27DEAFC78;
  if (!qword_27DEAFC78)
  {
    sub_237EF60B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAFC78);
  }

  return result;
}

_BYTE *sub_237CF68F8(_BYTE *result, int a2, int a3)
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

uint64_t OUTLINED_FUNCTION_11_20(uint64_t a1)
{

  return sub_237EF8A20();
}

BOOL OUTLINED_FUNCTION_12_19()
{

  return sub_237E4C234(v1, v0);
}

uint64_t OUTLINED_FUNCTION_18_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(v5 - 112);

  return sub_237CF5908(a1, a2, a3, v7, a5);
}

uint64_t OUTLINED_FUNCTION_22_12()
{

  return sub_237EF6090();
}

uint64_t OUTLINED_FUNCTION_23_11()
{

  return sub_237EF8A60();
}

uint64_t OUTLINED_FUNCTION_25_10()
{

  return sub_237EF6090();
}

uint64_t sub_237CF6BA8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFD28, &qword_237F0A360);
  v106 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v124 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v108 = &v99 - v9;
  v118 = sub_237EF6450();
  v135 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v117 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFD30, &qword_237F0A368);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v99 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD600, &unk_237F049C0);
  MEMORY[0x28223BE20](v14 - 8);
  v102 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v133 = &v99 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2C0, &qword_237F08F20);
  MEMORY[0x28223BE20](v18 - 8);
  v107 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v111 = &v99 - v21;
  MEMORY[0x28223BE20](v22);
  v113 = &v99 - v23;
  v134 = sub_237EF6B10();
  v24 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v116 = &v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v101 = &v99 - v27;
  MEMORY[0x28223BE20](v28);
  v131 = &v99 - v29;
  MEMORY[0x28223BE20](v30);
  v132 = &v99 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFD10, &unk_237F0A330);
  v33 = v32[13];
  v34 = sub_237EF6580();
  __swift_storeEnumTagSinglePayload(a3 + v33, 1, 1, v34);
  v109 = v6;
  v35 = sub_237EF8230();
  v123 = v32[16];
  *(a3 + v123) = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE3F0, &unk_237F05680);
  v37 = sub_237EF6780();
  *a3 = v37;
  *(a3 + 8) = *a2;
  sub_237CF9F80(a2 + v36[12], a3 + v33);
  *(a3 + v32[14]) = *(a2 + v36[13]);
  v112 = v36;
  v38 = *(a2 + v36[14]);
  v39 = v32[15];
  v125 = a3;
  *(a3 + v39) = v38;
  if (v37 < 2)
  {
    v94 = a1;
    v95 = a2;
LABEL_24:
    sub_237C65484(v95, &qword_27DEAE3F0, &unk_237F05680);
    return sub_237C96378(v94);
  }

  type metadata accessor for LSTMFCN(0);
  sub_237C962B0();
  v100 = a1;
  v40 = sub_237EF6870();
  v41 = 0;
  v105 = *(v40 + 16);
  v115 = (v24 + 32);
  v122 = (v24 + 16);
  v114 = (v135 + 8);
  v126 = (v24 + 8);
  v110 = v40;
  v42 = (v40 + 48);
  v43 = a2;
  v103 = a2;
  v104 = v13;
  v44 = v134;
  v45 = v111;
  v46 = v113;
  v47 = v112;
  while (1)
  {
    if (v105 == v41)
    {

      v94 = v100;
      v95 = v43;
      goto LABEL_24;
    }

    if (v41 >= *(v110 + 16))
    {
      break;
    }

    v48 = *(v42 - 1);
    v130 = *(v42 - 2);
    v121 = v42;
    v49 = *v42;
    v135 = v48;
    sub_237EF8260();

    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFD38, &unk_237F15760);
    sub_237EF6640();
    if (__swift_getEnumTagSinglePayload(v46, 1, v44) == 1)
    {

      sub_237C65484(v46, &qword_27DEAD2C0, &qword_237F08F20);
      sub_237C6514C();
      swift_allocError();
      *v97 = 0xD000000000000025;
      v97[1] = 0x8000000237EFB480;
      swift_willThrow();

      sub_237C65484(v43, &qword_27DEAE3F0, &unk_237F05680);
      sub_237C96378(v100);
      return sub_237C65484(v125, &qword_27DEAFD10, &unk_237F0A330);
    }

    v120 = v41;
    v51 = *v115;
    (*v115)(v132, v46, v44);
    sub_237EF6640();
    if (__swift_getEnumTagSinglePayload(v45, 1, v44) == 1)
    {

      sub_237C65484(v45, &qword_27DEAD2C0, &qword_237F08F20);
      sub_237C6514C();
      swift_allocError();
      *v98 = 0xD000000000000025;
      v98[1] = 0x8000000237EFB480;
      swift_willThrow();

      sub_237C65484(v43, &qword_27DEAE3F0, &unk_237F05680);
      sub_237C96378(v100);
      (*v126)(v132, v44);
      return sub_237C65484(v125, &qword_27DEAFD10, &unk_237F0A330);
    }

    v127 = v49;
    v51(v131, v45, v44);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0, &qword_237F036B0);
    __swift_storeEnumTagSinglePayload(v133, 1, 1, v52);
    v53 = v104;
    sub_237C9E294(v43 + v47[18], v104, &qword_27DEAFD30, &qword_237F0A368);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v53, 1, v50);
    v55 = v122 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    if (EnumTagSinglePayload == 1)
    {
      sub_237C65484(v53, &qword_27DEAFD30, &qword_237F0A368);
      v56 = v107;
      __swift_storeEnumTagSinglePayload(v107, 1, 1, v44);
LABEL_10:
      sub_237C65484(v56, &qword_27DEAD2C0, &qword_237F08F20);
      v57 = *v122;
      goto LABEL_12;
    }

    v56 = v107;
    sub_237EF6640();
    (*(*(v50 - 8) + 8))(v53, v50);
    if (__swift_getEnumTagSinglePayload(v56, 1, v44) == 1)
    {
      goto LABEL_10;
    }

    v119 = v55;
    v58 = v101;
    v51(v101, v56, v44);
    v128 = *v122;
    v59 = v116;
    v128(v116, v58, v44);
    v60 = v117;
    sub_237EF6A30();
    sub_237EF6440();
    v61 = v60;
    v44 = v134;
    v62 = (*v114)(v61, v118);
    MEMORY[0x28223BE20](v62);
    *(&v99 - 2) = v59;
    v63 = v102;
    v64 = v129;
    sub_237EF7DE0();
    v129 = v64;
    v65 = *v126;
    (*v126)(v58, v44);
    v66 = v133;
    sub_237C65484(v133, &qword_27DEAD600, &unk_237F049C0);
    v65(v59, v44);
    __swift_storeEnumTagSinglePayload(v63, 0, 1, v52);
    sub_237CF9FF0(v63, v66, &qword_27DEAD600, &unk_237F049C0);
    v57 = v128;
LABEL_12:
    v67 = v116;
    v128 = v57;
    v57(v116, v132, v44);
    v68 = v117;
    sub_237EF6A30();
    sub_237EF6440();
    v119 = *v114;
    v69 = v118;
    v70 = v119(v68, v118);
    MEMORY[0x28223BE20](v70);
    *(&v99 - 2) = v67;
    v71 = v108;
    v72 = v129;
    sub_237EF7DE0();
    v129 = v72;
    v73 = *v126;
    (*v126)(v67, v134);
    v128(v67, v131, v134);
    sub_237EF6A30();
    sub_237EF6440();
    v74 = v69;
    v44 = v134;
    v75 = v119(v68, v74);
    MEMORY[0x28223BE20](v75);
    *(&v99 - 2) = v67;
    v76 = v109;
    v77 = v129;
    sub_237EF7DE0();
    v129 = v77;
    v73(v67, v44);
    sub_237C9E294(v133, v71 + *(v76 + 40), &qword_27DEAD600, &unk_237F049C0);
    sub_237CF9FF0(v71, v124, &qword_27DEAFD28, &qword_237F0A360);
    v78 = v125;
    v79 = v123;
    swift_isUniquelyReferenced_nonNull_native();
    v80 = *(v78 + v79);
    v136 = v80;
    v81 = sub_237D2FC30(v130);
    if (__OFADD__(v80[2], (v82 & 1) == 0))
    {
      goto LABEL_29;
    }

    v83 = v81;
    v84 = v82;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEAFD40, qword_237F0A370);
    if (sub_237EF96B0())
    {
      v85 = sub_237D2FC30(v130);
      v43 = v103;
      v87 = v132;
      v46 = v113;
      v47 = v112;
      if ((v84 & 1) != (v86 & 1))
      {
        goto LABEL_31;
      }

      v83 = v85;
    }

    else
    {
      v43 = v103;
      v87 = v132;
      v46 = v113;
      v47 = v112;
    }

    v88 = v136;
    if (v84)
    {
      sub_237C9D800(v124, v136[7] + *(v106 + 72) * v83, &qword_27DEAFD28, &qword_237F0A360);
    }

    else
    {
      v136[(v83 >> 6) + 8] |= 1 << v83;
      v89 = (v88[6] + 16 * v83);
      v90 = v135;
      *v89 = v130;
      v89[1] = v90;
      sub_237CF9FF0(v124, v88[7] + *(v106 + 72) * v83, &qword_27DEAFD28, &qword_237F0A360);
      v91 = v88[2];
      v92 = __OFADD__(v91, 1);
      v93 = v91 + 1;
      if (v92)
      {
        goto LABEL_30;
      }

      v88[2] = v93;
    }

    sub_237C65484(v133, &qword_27DEAD600, &unk_237F049C0);
    v73(v131, v44);
    v73(v87, v44);
    *(v125 + v123) = v88;
    v42 = v121 + 3;
    v41 = v120 + 1;
    v45 = v111;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_237EFA020();
  __break(1u);
  return result;
}

uint64_t sub_237CF7A7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0, &qword_237F036B0);
  v7 = sub_237EF7E20();
  if (!*(v7 + 16))
  {
    __break(1u);
    goto LABEL_8;
  }

  v8 = *(v7 + 32);

  v9 = sub_237EF7E20();
  if (!*(v9 + 16))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = *(v9 + 32);

  if (v8 != v10)
  {
LABEL_9:
    result = sub_237EF9740("Fatal error", 11, 2, 0xD000000000000045, 0x8000000237EFBC90, "CreateMLComponents/AnnotatedBatch.swift", 39, 2, 35);
    __break(1u);
    return result;
  }

  v13 = *(*(v6 - 8) + 32);
  v13(a3, a1, v6);
  v11 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFD00, &unk_237F1DCE0) + 36);

  return (v13)(v11, a2, v6);
}

uint64_t TimeSeriesClassifier.makeTransformer()@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = a1[3];
  v8 = a1[6];
  v9 = a1[9];
  v10 = sub_237EF8260();
  v11 = sub_237E5E16C(v10, v7, v8, v9);
  return sub_237C93998(v11, v12, 0, v5, v6, a1[2], v7, a1[4], a2, a1[5], v8, a1[7], a1[8], v9);
}

uint64_t TimeSeriesClassifier.update<A>(_:with:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8[47] = a6;
  v8[48] = a7;
  v8[45] = a4;
  v8[46] = a5;
  v8[43] = a2;
  v8[44] = a3;
  v8[42] = a1;
  v11 = sub_237EF6B10();
  v8[49] = v11;
  OUTLINED_FUNCTION_6_1(v11);
  v8[50] = v12;
  v8[51] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEDE8, &unk_237F1DCD0);
  OUTLINED_FUNCTION_18(v13);
  v8[52] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0, &qword_237F036B0);
  v8[53] = v14;
  OUTLINED_FUNCTION_6_1(v14);
  v8[54] = v15;
  v8[55] = OUTLINED_FUNCTION_80_1();
  v8[56] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFD00, &unk_237F1DCE0);
  v8[57] = v16;
  OUTLINED_FUNCTION_18(v16);
  v8[58] = OUTLINED_FUNCTION_80_1();
  v8[59] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFD08, &unk_237F1DCF0);
  v8[60] = v17;
  OUTLINED_FUNCTION_6_1(v17);
  v8[61] = v18;
  v8[62] = OUTLINED_FUNCTION_80_1();
  v8[63] = swift_task_alloc();
  v8[64] = swift_task_alloc();
  v8[65] = a5[2];
  v8[66] = a5[4];
  v19 = sub_237EF7E90();
  v8[67] = v19;
  v20 = a5[3];
  v8[68] = v20;
  v22 = type metadata accessor for AnnotatedFeature(255, v19, v20, v21);
  v8[69] = v22;
  v23 = sub_237EF90F0();
  v8[70] = v23;
  OUTLINED_FUNCTION_6_1(v23);
  v8[71] = v24;
  v8[72] = OUTLINED_FUNCTION_80_1();
  v8[73] = swift_task_alloc();
  v8[74] = *(v22 - 8);
  v8[75] = swift_task_alloc();
  v8[76] = swift_task_alloc();
  v8[77] = *(a6 - 8);
  v8[78] = swift_task_alloc();
  v8[79] = *v7;
  memcpy(v8 + 12, v7 + 1, 0x48uLL);

  return MEMORY[0x2822009F8](sub_237CF7FEC, 0, 0);
}

void *sub_237CF7FEC()
{
  v215 = v0;
  v1 = *(v0 + 584);
  v2 = *(v0 + 552);
  (*(*(v0 + 616) + 16))(*(v0 + 624), *(v0 + 344), *(v0 + 376));
  v3 = sub_237EF8A90();
  *(v0 + 272) = v3;
  v4 = sub_237EF8A60();
  OUTLINED_FUNCTION_1_24();
  WitnessTable = swift_getWitnessTable();
  sub_237EF8E80();
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) != 1)
  {
    v8 = *(*(v0 + 592) + 32);
    (v8)(*(v0 + 608), *(v0 + 584), *(v0 + 552));
    v9 = *(sub_237EF7E20() + 16);

    if (v9 != 2)
    {

      v26 = sub_237EF7E20();
      v27 = sub_237C84150();
      v28 = OUTLINED_FUNCTION_45_0(&type metadata for PipelineDataError, v27);
      *v29 = v26;
      v29[1] = 0xD000000000000036;
      v29[2] = 0x8000000237EFD2D0;
      v29[3] = 0;
      OUTLINED_FUNCTION_4_26(v28, v29);
      v30 = OUTLINED_FUNCTION_31_0();
      v31(v30);
      goto LABEL_8;
    }

    result = sub_237EF7E20();
    if (result[2])
    {
      v11 = *(v0 + 632);
      v12 = result[4];

      v13 = *(v0 + 632);
      if (v12 < v11)
      {
        v14 = *(v0 + 608);
        v15 = *(v0 + 592);
        v16 = *(v0 + 552);

        v17 = sub_237EF7E20();
        sub_237EF9330();

        OUTLINED_FUNCTION_10_23();
        v212 = v19 + 17;
        v213[0] = v18;
        *(v0 + 328) = v13;
        v20 = sub_237EF9AB0();
        MEMORY[0x2383E0710](v20);

        MEMORY[0x2383E0710](46, 0xE100000000000000);
        v21 = v212;
        v22 = v213[0];
        v23 = sub_237C84150();
        v24 = OUTLINED_FUNCTION_45_0(&type metadata for PipelineDataError, v23);
        *v25 = v17;
        v25[1] = v21;
        v25[2] = v22;
        v25[3] = 0;
        OUTLINED_FUNCTION_4_26(v24, v25);
        (*(v15 + 8))(v14, v16);
        goto LABEL_8;
      }

      v176 = v8;
      v204 = *(v0 + 536);
      v33 = *(v0 + 528);
      v34 = *(v0 + 520);
      v35 = *(v0 + 376);
      v197 = *(v0 + 384);
      v198 = *(v0 + 544);
      v208 = WitnessTable;
      v36 = *(v0 + 368);
      v212 = *(v0 + 632);
      memcpy(v213, (v0 + 96), sizeof(v213));
      v195 = v3;
      *(v0 + 280) = v3;
      v37 = swift_task_alloc();
      *v37 = v34;
      v37[1] = v198;
      v37[2] = v35;
      v37[3] = v33;
      v38 = v36;
      v200 = v36;
      v39 = v36[5];
      v37[4] = v39;
      v40 = v38[6];
      v37[5] = v40;
      v41 = v38[7];
      v37[6] = v41;
      v42 = v38[8];
      v37[7] = v42;
      v43 = v38[9];
      v37[8] = v43;
      v37[9] = v197;
      KeyPath = swift_getKeyPath();

      v44 = swift_task_alloc();
      v44[2] = v35;
      v44[3] = v39;
      v182 = v41;
      v185 = v39;
      v193 = v40;
      v44[4] = v40;
      v44[5] = v41;
      v180 = v42;
      v44[6] = v42;
      v44[7] = v43;
      v199 = v43;
      v44[8] = v197;
      v44[9] = KeyPath;
      sub_237C9339C(sub_237CF9EA4, v44, v4, v204, MEMORY[0x277D84A98], WitnessTable);
      v46 = v45;

      *(v0 + 288) = v46;
      v47 = sub_237EF8A60();
      OUTLINED_FUNCTION_1_24();
      v48 = swift_getWitnessTable();
      sub_237EB0364(v0 + 288, v200, v47, v48);
      v50 = v49;

      if (*(v50 + 16))
      {
        v51 = *(v0 + 512);
        v52 = *(v0 + 424);
        v53 = *(v0 + 432);
        v54 = *(*(v0 + 488) + 80);
        v55 = v50 + ((v54 + 32) & ~v54);
        sub_237C9E294(v55, v51, &qword_27DEAFD08, &unk_237F1DCF0);
        v56 = sub_237EF7E20();
        v57 = *(v53 + 8);
        result = v57(v51, v52);
        if (*(v56 + 16))
        {
          v179 = v50;
          v58 = *(v0 + 512);
          v59 = *(v0 + 424);
          v60 = *(v56 + 32);

          v177 = v55;
          sub_237C9E294(v55, v58, &qword_27DEAFD08, &unk_237F1DCF0);
          v61 = sub_237EF7E20();
          result = v57(v58, v59);
          v62 = v195;
          if (*(v61 + 16) >= 2uLL)
          {
            v175 = v60;
            v196 = v57;
            v63 = *(v0 + 544);
            v64 = *(v0 + 528);
            v65 = *(v0 + 520);
            v66 = *(v0 + 336);
            v67 = *(v61 + 40);

            *(v0 + 168) = v65;
            *(v0 + 176) = v63;
            *(v0 + 184) = v64;
            *&v69 = v182;
            *&v68 = v185;
            *(&v68 + 1) = v193;
            *(&v69 + 1) = v180;
            v201 = v69;
            v205 = v68;
            *(v0 + 192) = v68;
            *(v0 + 208) = v69;
            v70 = v199;
            *(v0 + 224) = v199;
            v178 = type metadata accessor for TimeSeriesClassifier.Model(0, v0 + 168);
            v71 = v178[23];
            v211 = v0;
            v174 = v66;
            v183 = v71;
            if (!*(v66 + v71))
            {
              *(v66 + v71) = v67;
LABEL_19:
              v80 = *(v0 + 544);
              v81 = *(v0 + 528);
              v82 = *(v0 + 520);
              v83 = *(v0 + 376);
              v84 = *(v0 + 384);
              v186 = *(v0 + 336);
              v190 = *(v0 + 368);
              v212 = *(v0 + 632);
              memcpy(v213, (v0 + 96), sizeof(v213));
              *(v0 + 304) = v62;
              v85 = swift_task_alloc();
              *v85 = v82;
              *(v85 + 8) = v80;
              *(v85 + 16) = v83;
              *(v85 + 24) = v81;
              *(v85 + 32) = v205;
              *(v85 + 48) = v201;
              *(v85 + 64) = v70;
              *(v85 + 72) = v84;
              v86 = swift_getKeyPath();

              v87 = swift_task_alloc();
              *(v87 + 16) = v83;
              *(v87 + 40) = v201;
              *(v87 + 24) = v205;
              *(v87 + 56) = v70;
              *(v87 + 64) = v84;
              *(v87 + 72) = v86;
              v88 = v4;
              v89 = v0;
              sub_237C9339C(sub_237CFA07C, v87, v88, v80, MEMORY[0x277D84A98], v208);
              v91 = v90;

              *(v0 + 312) = v91;
              v92 = (v186 + v178[22]);
              v93 = *v92;
              v94 = v92[1];
              v95 = sub_237EF8A60();
              OUTLINED_FUNCTION_1_2();
              v96 = swift_getWitnessTable();
              sub_237EB06EC((v89 + 39), v93, v94, v190, v95, v96);
              v114 = v89[68];
              v115 = v89[66];
              v116 = v89[65];
              v194 = v89[59];
              v181 = v89[56];
              v191 = v89[55];
              v118 = v89[47];
              v117 = v89[48];
              v119 = v89[42];

              v120 = swift_task_alloc();
              *(v120 + 16) = v116;
              *(v120 + 24) = v114;
              *(v120 + 32) = v118;
              *(v120 + 40) = v115;
              *(v120 + 48) = v205;
              *(v120 + 64) = v201;
              *(v120 + 80) = v199;
              *(v120 + 88) = v117;
              *(v120 + 96) = v119;
              sub_237CD1984();
              v122 = v121;

              v123 = *(v179 + 16);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
              v124 = swift_allocObject();
              *(v124 + 16) = xmmword_237F08A50;
              *(v124 + 32) = v123;
              *(v124 + 40) = v175;
              *(v124 + 48) = *(v174 + v183);
              sub_237EF7DE0();
              v125 = swift_allocObject();
              *(v125 + 16) = xmmword_237F04760;
              *(v125 + 32) = v123;
              *(v125 + 40) = sub_237E5E170(*v92, v92[1], v114, v193, v199);
              sub_237EF7DE0();
              result = sub_237CF7A7C(v181, v191, v194);
              if (v123)
              {
                if (v123 > *(v122 + 16))
                {
LABEL_45:
                  __break(1u);
                  return result;
                }

                v126 = 0;
                v127 = v211;
                v187 = v122 + ((*(*(v211 + 432) + 80) + 32) & ~*(*(v211 + 432) + 80));
                v192 = *(v211 + 432);
                v184 = *(*(v211 + 488) + 72);
                v128 = v177;
                v209 = v123;
                do
                {
                  v129 = *(v127 + 512);
                  v202 = *(v127 + 448);
                  v130 = *(v127 + 424);
                  sub_237C9E294(v128, v129, &qword_27DEAFD08, &unk_237F1DCF0);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEADE38, &qword_237F093D0);
                  v131 = swift_allocObject();
                  *(v131 + 16) = xmmword_237F04760;
                  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF7F8, &qword_237F09CD0);
                  *(v131 + 56) = v132;
                  v133 = sub_237C96710(&qword_27DEAF808, &qword_27DEAF7F8, &qword_237F09CD0, MEMORY[0x277CBFE18]);
                  *(v131 + 32) = 0;
                  *(v131 + 96) = v132;
                  *(v131 + 104) = v133;
                  *(v131 + 64) = v133;
                  *(v131 + 72) = 0;
                  sub_237C96710(&qword_27DEAD2F8, &qword_27DEAD6A0, &qword_237F036B0, MEMORY[0x277CBFD28]);
                  sub_237EF7FA0();

                  v196(v129, v130);
                  sub_237EF7EA0();
                  (*(v192 + 16))(v202, v187 + *(v192 + 72) * v126, v130);
                  *(v211 + 256) = v132;
                  v127 = v211;
                  *(v211 + 264) = v133;
                  *(v211 + 232) = 0;
                  sub_237EF7F90();
                  v196(v202, v130);
                  v134 = v209;
                  sub_237EF7EA0();
                  __swift_destroy_boxed_opaque_existential_1((v211 + 232));
                  v128 += v184;
                  ++v126;
                }

                while (v209 != v126);
                v135 = *(v211 + 488);
                v206 = *(v211 + 480);
                v136 = *(v211 + 432);

                OUTLINED_FUNCTION_8_25();
                v137 = OUTLINED_FUNCTION_31_0();
                sub_237C9E294(v137, v138, v139, v140);
                v214 = MEMORY[0x277D84F90];
                sub_237C62DB0(0, v209, 0);
                v141 = v214;
                v203 = *(v135 + 72);
                v142 = v177;
                do
                {
                  v210 = v134;
                  v144 = *(v127 + 504);
                  v143 = *(v127 + 512);
                  v145 = *(v127 + 496);
                  v146 = *(v127 + 424);
                  sub_237C9E294(v142, v143, &qword_27DEAFD08, &unk_237F1DCF0);
                  sub_237C9E294(v143, v144, &qword_27DEAFD08, &unk_237F1DCF0);
                  v147 = *(v206 + 48);
                  v148 = *(v144 + v147);
                  (*(v136 + 32))(v145, v144, v146);
                  *(v145 + v147) = v148;
                  sub_237C65484(v145, &qword_27DEAFD08, &unk_237F1DCF0);
                  sub_237C65484(v143, &qword_27DEAFD08, &unk_237F1DCF0);
                  v214 = v141;
                  v150 = *(v141 + 16);
                  v149 = *(v141 + 24);
                  if (v150 >= v149 >> 1)
                  {
                    sub_237C62DB0(v149 > 1, v150 + 1, 1);
                    v141 = v214;
                  }

                  *(v141 + 16) = v150 + 1;
                  *(v141 + 8 * v150 + 32) = v148;
                  v142 += v203;
                  v134 = v210 - 1;
                  v127 = v211;
                }

                while (v210 != 1);
              }

              else
              {
                v127 = v211;

                OUTLINED_FUNCTION_8_25();
                v151 = OUTLINED_FUNCTION_31_0();
                sub_237C9E294(v151, v152, v153, v154);

                v141 = MEMORY[0x277D84F90];
              }

              v155 = *(v127 + 464);
              v156 = *(v127 + 336);
              sub_237EB07AC(v156, v155, v141, *(v127 + 368));

              result = sub_237C65484(v155, &qword_27DEAFD00, &unk_237F1DCE0);
              v157 = v178[27];
              v158 = *(v156 + v157);
              v159 = v158 + 1;
              if (!__OFADD__(v158, 1))
              {
                v160 = *(v127 + 352);
                *(v156 + v157) = v159;
                v161 = *(v127 + 608);
                v162 = *(v127 + 592);
                v163 = *(v127 + 552);
                v164 = *(v127 + 472);
                v165 = *(v127 + 400);
                v166 = *(v127 + 408);
                v167 = *(v127 + 392);
                if (v160)
                {
                  v168 = *(v211 + 360);
                  v207 = v164;
                  v169 = *(v211 + 352);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEAD7D0, &unk_237F03CD0);
                  inited = swift_initStackObject();
                  *(inited + 16) = xmmword_237F03530;
                  strcpy((inited + 32), "training_loss");
                  *(inited + 46) = -4864;
                  sub_237C70604(v169, v168);
                  sub_237EF6A90();
                  v171 = *(v211 + 640);
                  *(inited + 72) = MEMORY[0x277D839F8];
                  *(inited + 48) = v171;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD7E0, &qword_237F03CE0);
                  sub_237C758C4();
                  v172 = sub_237EF8230();
                  v212 = 0xD000000000000014;
                  v213[0] = 0x8000000237EFD2B0;
                  v213[1] = v159;
                  v213[2] = v159;
                  LOBYTE(v213[3]) = 0;
                  v213[4] = v172;
                  v169(&v212);
                  v173 = v168;
                  v127 = v211;
                  sub_237C5EE40(v169, v173);

                  (*(v165 + 8))(v166, v167);
                  sub_237C65484(v207, &qword_27DEAFD00, &unk_237F1DCE0);
                  (*(v162 + 8))(v161, v163);
                }

                else
                {
                  (*(v165 + 8))(*(v127 + 408), *(v127 + 392));
                  sub_237C65484(v164, &qword_27DEAFD00, &unk_237F1DCE0);
                  (*(v162 + 8))(v161, v163);
                }

                v32 = *(v127 + 8);
                goto LABEL_9;
              }

LABEL_44:
              __break(1u);
              goto LABEL_45;
            }

            v72 = *(v0 + 576);
            v189 = *(v0 + 552);
            v73 = *(v0 + 544);
            v74 = *(v0 + 528);
            v75 = *(v0 + 520);
            v76 = *(v0 + 384);
            v77 = *(v0 + 376);
            v78 = *(v0 + 336);
            *(v0 + 296) = v195;
            v79 = swift_task_alloc();
            *(v79 + 16) = v75;
            *(v79 + 24) = v73;
            v70 = v199;
            *(v79 + 32) = v77;
            *(v79 + 40) = v74;
            *(v79 + 48) = v205;
            *(v79 + 64) = v201;
            *(v79 + 80) = v199;
            *(v79 + 88) = v76;
            *(v79 + 96) = v78;
            OUTLINED_FUNCTION_1_2();
            swift_getWitnessTable();
            sub_237EF87D0();

            if (__swift_getEnumTagSinglePayload(v72, 1, v189) == 1)
            {
              (*(*(v0 + 568) + 8))(*(v0 + 576), *(v0 + 560));
              v62 = v195;
              goto LABEL_19;
            }

            v97 = OUTLINED_FUNCTION_31_0();
            v176(v97);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
            v98 = swift_allocObject();
            *(v98 + 16) = xmmword_237F03530;
            result = sub_237EF7E20();
            if (result[2] >= 2uLL)
            {
              v99 = result[5];

              *(v98 + 32) = v99;
              v213[0] = 0xE000000000000000;
              sub_237EF9330();

              OUTLINED_FUNCTION_10_23();
              v212 = v101 + 5;
              v213[0] = v100;
              result = sub_237EF7E20();
              if (result[2] >= 2uLL)
              {
                v102 = *(v0 + 608);
                v103 = *(v0 + 600);
                v104 = *(v0 + 592);
                v105 = *(v0 + 552);
                v106 = result[5];

                *(v0 + 320) = v106;
                v107 = sub_237EF9AB0();
                MEMORY[0x2383E0710](v107);

                v108 = v212;
                v109 = v213[0];
                v110 = sub_237C84150();
                v111 = OUTLINED_FUNCTION_45_0(&type metadata for PipelineDataError, v110);
                *v112 = v98;
                v112[1] = v108;
                v112[2] = v109;
                v112[3] = 0;
                OUTLINED_FUNCTION_4_26(v111, v112);
                v113 = *(v104 + 8);
                v113(v103, v105);
                v113(v102, v105);
                goto LABEL_8;
              }

              goto LABEL_43;
            }

LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
            goto LABEL_44;
          }

LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

LABEL_40:
        __break(1u);
        goto LABEL_41;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_40;
  }

  (*(*(v0 + 568) + 8))(*(v0 + 584), *(v0 + 560));

  v6 = sub_237C84150();
  OUTLINED_FUNCTION_45_0(&type metadata for PipelineDataError, v6);
  *v7 = 0xD000000000000014;
  *(v7 + 8) = 0x8000000237EFD2B0;
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = 2;
  swift_willThrow();
LABEL_8:

  v32 = *(v0 + 8);
LABEL_9:

  return v32();
}

uint64_t sub_237CF9334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_237EF7E90();
  result = sub_237EF7E20();
  if (*(result + 16) < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v18 = *(result + 40);

    v19[0] = a3;
    v19[1] = a4;
    v19[2] = a6;
    v19[3] = a7;
    v19[4] = a8;
    v19[5] = a9;
    v19[6] = a10;
    v19[7] = a11;
    return v18 != *(a2 + *(type metadata accessor for TimeSeriesClassifier.Model(0, v19) + 92));
  }

  return result;
}

uint64_t sub_237CF9408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_237F03530;
  v23[0] = a3;
  v23[1] = a4;
  v23[2] = a6;
  v23[3] = a7;
  v23[4] = a8;
  v23[5] = a9;
  v23[6] = a10;
  v23[7] = a11;
  v17 = (a2 + *(type metadata accessor for TimeSeriesClassifier.Model(0, v23) + 88));
  v18 = *v17;
  v19 = v17[1];
  sub_237EF8260();
  sub_237EF8260();
  v20 = sub_237E5E170(v18, v19, a4, a8, a11);

  *(v16 + 32) = v20;
  sub_237EF8260();
  sub_237EF7DE0();
}

uint64_t sub_237CF9588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  sub_237ED4304(a1, a2, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237F03530;
  *(inited + 32) = a5;
  v9 = sub_237D166DC(inited, a4);
  result = swift_setDeallocating();
  *(a1 + 4 * v9) = 1065353216;
  return result;
}

uint64_t TimeSeriesClassifier.encodeWithOptimizer(_:to:)(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v6 = type metadata accessor for LSTMFCN(0);
  v7 = OUTLINED_FUNCTION_18(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_3();
  v52 = v8;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFD10, &unk_237F0A330);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  v50 = &v45 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE3E8, &qword_237F05678);
  OUTLINED_FUNCTION_18(v11);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v12);
  v51 = &v45 - v13;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE3F0, &unk_237F05680);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v14);
  v48 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v45 - v17;
  v20 = *(a2 + 24);
  v19 = *(a2 + 32);
  v46 = a2;
  __swift_mutable_project_boxed_opaque_existential_1(a2, v20);
  v21 = *(v19 + 8);
  v22 = a3[2];
  v53[0] = a3[1];
  v53[1] = v22;
  v23 = a3[4];
  v53[2] = a3[3];
  v53[3] = v23;
  v24 = type metadata accessor for TimeSeriesClassifier.Model(0, v53);
  WitnessTable = swift_getWitnessTable();
  v26 = v54;
  result = v21(a1, v24, WitnessTable, v20, v19);
  if (!v26)
  {
    v28 = v48;
    v29 = v50;
    v30 = *(v24 + 84);
    v31 = a1;
    v32 = a1 + v30;
    v34 = v51;
    v33 = v52;
    sub_237C9E294(v32, v51, &qword_27DEAE3E8, &qword_237F05678);
    if (__swift_getEnumTagSinglePayload(v34, 1, v49) == 1)
    {
      v35 = &qword_27DEAE3E8;
      v36 = &qword_237F05678;
    }

    else
    {
      v37 = v34;
      v34 = v18;
      sub_237CF9FF0(v37, v18, &qword_27DEAE3F0, &unk_237F05680);
      sub_237C96128(v31, v33);
      v38 = v18;
      v39 = v28;
      sub_237C9E294(v38, v28, &qword_27DEAE3F0, &unk_237F05680);
      v40 = v29;
      sub_237CF6BA8(v33, v39, v29);
      v41 = *(v46 + 24);
      v42 = *(v46 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v46, v41);
      v43 = *(v42 + 16);
      v44 = sub_237C96710(&qword_27DEAFD18, &qword_27DEAFD10, &unk_237F0A330, &unk_237F06110);
      v43(v40, v47, v44, v41, v42);
      sub_237C65484(v40, &qword_27DEAFD10, &unk_237F0A330);
      v35 = &qword_27DEAE3F0;
      v36 = &unk_237F05680;
    }

    return sub_237C65484(v34, v35, v36);
  }

  return result;
}

uint64_t TimeSeriesClassifier.decodeWithOptimizer(from:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a3;
  v45 = type metadata accessor for LSTMFCN(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_3();
  v44 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE3E8, &qword_237F05678);
  OUTLINED_FUNCTION_18(v8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFD10, &unk_237F0A330);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  v15 = (&v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v46 = &v40 - v17;
  v18 = a2[2];
  __dst[0] = a2[1];
  __dst[1] = v18;
  v19 = a2[4];
  __dst[2] = a2[3];
  __dst[3] = v19;
  v20 = type metadata accessor for TimeSeriesClassifier.Model(0, __dst);
  v47 = *(v20 - 8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v21);
  v23 = &v40 - v22;
  memcpy(__dst, v3, sizeof(__dst));
  WitnessTable = swift_getWitnessTable();
  v25 = swift_getWitnessTable();
  v26 = v49;
  result = SupervisedEstimator<>.decode(from:)(a1, a2, WitnessTable, v25);
  if (!v26)
  {
    v41 = v15;
    v42 = v11;
    v49 = v20;
    v28 = *(a1 + 24);
    v29 = *(a1 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a1, v28);
    v30 = *(v29 + 16);
    v31 = sub_237C96710(&qword_27DEAFD20, &qword_27DEAFD10, &unk_237F0A330, &unk_237F060E8);
    v32 = v46;
    v30(v12, v12, v31, v28, v29);
    v33 = v44;
    sub_237C96128(v23, v44);
    v34 = v41;
    sub_237C9E294(v32, v41, &qword_27DEAFD10, &unk_237F0A330);
    v35 = sub_237C962B0();
    v36 = v42;
    sub_237C9D850(v33, v34, v45, v35, v42);
    v37 = v47;
    v38 = v49;
    sub_237C65484(v32, &qword_27DEAFD10, &unk_237F0A330);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE3F0, &unk_237F05680);
    __swift_storeEnumTagSinglePayload(v36, 0, 1, v39);
    sub_237C9D800(v36, &v23[*(v38 + 84)], &qword_27DEAE3E8, &qword_237F05678);
    (*(v37 + 16))(v43, v23, v38);
    return (*(v37 + 8))(v23, v38);
  }

  return result;
}

uint64_t sub_237CF9D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_237C5FFA4;

  return TimeSeriesClassifier.update<A>(_:with:eventHandler:)(a1, a2, a3, a4, a7, a5, a6);
}

uint64_t sub_237CF9F44(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237CF9F80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2D8, &unk_237F06050);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_237CF9FF0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_21_3(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 32))(v4, v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_4_26(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 6;

  return swift_willThrow();
}

void *OUTLINED_FUNCTION_8_25()
{
  *(v2 - 176) = v0;

  return memcpy((v2 - 168), (v1 + 96), 0x48uLL);
}

uint64_t sub_237CFA100(double a1, double a2)
{
  sub_237EF7D20();
  OUTLINED_FUNCTION_1();
  v21 = v5;
  v22 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5();
  v20 = v7 - v6;
  v8 = sub_237EF6E60();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  sub_237EF7720();
  sub_237EF7620();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD358, &unk_237F0A670);
  sub_237EF70E0();
  *(swift_allocObject() + 16) = xmmword_237F03530;
  sub_237EF6DA0();
  v15 = *MEMORY[0x277D25128];
  v16 = *(v10 + 104);
  v16(v14, v15, v8);
  sub_237EF7090();
  sub_237EF76B0();
  *(swift_allocObject() + 16) = xmmword_237F03530;
  sub_237EF6DA0();
  v16(v14, v15, v8);
  sub_237EF7090();
  sub_237EF7700();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD3C0, &unk_237F07370);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_237F03530;
  *(v17 + 32) = a2 / a1;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_237F03530;
  *(v18 + 32) = a1;
  sub_237EF7100();
  (*(v21 + 104))(v20, *MEMORY[0x277D253B8], v22);
  return sub_237EF7660();
}

void StandardScaler.fitted<A>(to:eventHandler:)(void *a2@<X3>, uint64_t a5@<X8>)
{
  v20 = a5;
  v6 = a2[2];
  OUTLINED_FUNCTION_22_3();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14_20();
  v18 = *(v9 + 24);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v11);
  if ((sub_237D0510C() & 1) == 0)
  {
    sub_237D05198(0x647261646E617453, 0xEE0072656C616353);
  }

  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_22_13();
  sub_237EF9FA0();
  sub_237EF9CE0();
  OUTLINED_FUNCTION_22_13();
  sub_237EF9FA0();
  sub_237EF9CE0();
  v12 = a2[4];
  v13 = a2[5];
  v14 = v20;
  StandardScaler.Transformer.init(mean:standardDeviation:)();
  v19[0] = v6;
  v19[1] = v18;
  v19[2] = v12;
  v19[3] = v13;
  v15 = type metadata accessor for StandardScaler.Transformer(0, v19);
  sub_237CFA848();
  if (!*(v14 + *(v15 + 56)))
  {
    sub_237C84150();
    swift_allocError();
    *v16 = 0xD000000000000015;
    *(v16 + 8) = 0x8000000237EFD330;
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    *(v16 + 32) = 2;
    swift_willThrow();
    OUTLINED_FUNCTION_22_3();
    (*(v17 + 8))(v14, v15);
  }
}

void StandardScaler.Transformer.init(mean:standardDeviation:)()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v16 = v8;
  v10 = v9;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  v17[0] = v7;
  v17[1] = v5;
  v17[2] = v3;
  v17[3] = v1;
  v12 = type metadata accessor for StandardScaler.Transformer(0, v17);
  *(v10 + *(v12 + 56)) = 0;
  OUTLINED_FUNCTION_23_12();
  swift_getAssociatedConformanceWitness();
  sub_237EF9FB0();
  OUTLINED_FUNCTION_18_16();
  sub_237EF9D20();
  OUTLINED_FUNCTION_22_3();
  v14 = *(v13 + 32);
  v15 = OUTLINED_FUNCTION_22_13();
  v14(v15);
  (v14)(v10 + *(v12 + 52), v16, v7);
  OUTLINED_FUNCTION_38_0();
}

void sub_237CFA848()
{
  OUTLINED_FUNCTION_37_0();
  v95 = v2;
  v96 = v0;
  v79 = v4;
  v80 = v3;
  v6 = v5;
  v7 = *(v2 + 16);
  v8 = v2;
  v9 = sub_237EF90F0();
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_2_2();
  v90 = v10;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_14_20();
  v81 = v6;
  OUTLINED_FUNCTION_1_1();
  v84 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5();
  v78 = v15 - v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v83 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_2();
  v92 = v18;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v19);
  v75 = &v71 - v20;
  v21 = *(v8 + 24);
  v77 = *(v21 + 16);
  v94 = *(*(v77 + 16) + 8);
  v86 = *(v94 + 16);
  v74 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v22);
  v73 = &v71 - v23;
  OUTLINED_FUNCTION_1_1();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2_2();
  v87 = v27;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_8_16();
  v89 = v29;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_8_16();
  v91 = v31;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_8_16();
  v82 = v33;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v34);
  v36 = &v71 - v35;
  v37 = *(v21 + 8);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v38);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_12_20();
  sub_237EF9FA0();
  OUTLINED_FUNCTION_18_16();
  v88 = v37;
  sub_237EF9CE0();
  v39 = v25 + 40;
  v40 = *(v25 + 40);
  v85 = v39;
  v41 = v96;
  v40(v96, v36, v7);
  OUTLINED_FUNCTION_12_20();
  sub_237EF9FA0();
  OUTLINED_FUNCTION_18_16();
  sub_237EF9CE0();
  v42 = v95;
  v71 = *(v95 + 52);
  v40(v41 + v71, v36, v7);
  v72 = *(v42 + 56);
  *(v41 + v72) = 0;
  v43 = v41;
  OUTLINED_FUNCTION_12_20();
  sub_237EF9FA0();
  v44 = v84;
  sub_237EF9CE0();
  v88 = *(v95 + 60);
  v45 = v78;
  v76 = v40;
  v40(v43 + v88, v36, v7);
  swift_getAssociatedConformanceWitness();
  sub_237EF9FB0();
  sub_237EF9D20();
  v46 = *(v44 + 16);
  v84 = v44 + 16;
  v74 = v46;
  v46(v45, v80, v81);
  v47 = v75;
  v48 = v72;
  sub_237EF86F0();
  v49 = v7;
  v50 = swift_getAssociatedConformanceWitness();
  AssociatedConformanceWitness = (v85 - 8);
  v95 = v85 - 32;
  for (i = -1; ; ++i)
  {
    v52 = i + 1;
    sub_237EF91A0();
    if (__swift_getEnumTagSinglePayload(v1, 1, v49) == 1)
    {
      break;
    }

    (*AssociatedConformanceWitness)(v36, v1, v49);
    sub_237EF9770();
    (*v95)(v36, v49);
    if (__OFADD__(v52, 1))
    {
      __break(1u);
      return;
    }

    *(v96 + v48) = i + 2;
  }

  v73 = i;
  v53 = *(v83 + 8);
  v83 += 8;
  v75 = v53;
  (v53)(v47, AssociatedTypeWitness);
  v54 = v90;
  if (v52 >= 1)
  {
    v55 = v91;
    sub_237EF83A0();
    sub_237EF8330();
    (*v95)(v55, v49);
    OUTLINED_FUNCTION_29_9();
    v56();
  }

  v74(v78, v80, v81);
  sub_237EF86F0();
  v86 = v50;
  while (1)
  {
    sub_237EF91A0();
    if (__swift_getEnumTagSinglePayload(v54, 1, v49) == 1)
    {
      break;
    }

    (*AssociatedConformanceWitness)(v36, v54, v49);
    v57 = v52;
    v58 = v89;
    v59 = v49;
    sub_237EF9760();
    v60 = v87;
    sub_237EF9760();
    v61 = v36;
    v62 = v91;
    sub_237EF8D30();
    v63 = *v95;
    v64 = v60;
    v49 = v59;
    (*v95)(v64, v59);
    v65 = v58;
    v52 = v57;
    v63(v65, v59);
    sub_237EF9770();
    v66 = v62;
    v36 = v61;
    v63(v66, v59);
    v63(v61, v59);
    v54 = v90;
  }

  (v75)(v92, AssociatedTypeWitness);
  if (v52 < 2)
  {
    (*v95)(v82, v49);
  }

  else
  {
    v67 = v89;
    sub_237EF83A0();
    v68 = v91;
    sub_237EF8330();
    v69 = *v95;
    (*v95)(v67, v49);
    sub_237EF8320();
    v69(v68, v49);
    v69(v82, v49);
    OUTLINED_FUNCTION_29_9();
    v70();
  }

  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_237CFB1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  StandardScaler.fitted<A>(to:eventHandler:)(a7, a1);
  v8 = *(v7 + 8);

  return v8();
}

void StandardScaler.makeTransformer()()
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_22_3();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_14_20();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_24_8();
  swift_getAssociatedConformanceWitness();
  sub_237EF9FA0();
  OUTLINED_FUNCTION_18_16();
  sub_237EF9CE0();
  sub_237EF9FA0();
  OUTLINED_FUNCTION_18_16();
  sub_237EF9CE0();
  StandardScaler.Transformer.init(mean:standardDeviation:)();
  OUTLINED_FUNCTION_38_0();
}

void StandardScaler.update<A>(_:with:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 *a5, uint64_t a6, uint64_t a7)
{
  v8 = OUTLINED_FUNCTION_21_13();
  if (*(a1 + *(type metadata accessor for StandardScaler.Transformer(v8, v9) + 56)))
  {
    sub_237CFB440();
  }

  else
  {
    sub_237CFA848();
  }
}

void sub_237CFB440()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v63 = v4;
  v66 = v5;
  v6 = *(v4 + 16);
  OUTLINED_FUNCTION_1_1();
  v54 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_2();
  v59 = v9;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_8_16();
  v58 = v11;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_8_16();
  v57 = v13;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_8_16();
  v68 = v15;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_8_16();
  v69 = v17;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v18);
  v20 = &v52 - v19;
  sub_237EF90F0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v21);
  v23 = &v52 - v22;
  OUTLINED_FUNCTION_1_1();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_5();
  v29 = v28 - v27;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v53 = v31;
  OUTLINED_FUNCTION_9();
  v33 = MEMORY[0x28223BE20](v32);
  v35 = &v52 - v34;
  (*(v25 + 16))(v29, v66, v3, v33);
  v64 = v35;
  sub_237EF86F0();
  v65 = AssociatedTypeWitness;
  v36 = v63;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v60 = (v54 + 32);
  v61 = (v54 + 8);
  v62 = AssociatedConformanceWitness;
  v55 = v54 + 16;
  v56 = v23;
  for (i = v20; ; v42(i, v6))
  {
    sub_237EF91A0();
    if (__swift_getEnumTagSinglePayload(v23, 1, v6) == 1)
    {
      break;
    }

    (*v60)(v20, v23, v6);
    v38 = *(v36 + 56);
    v39 = *(v1 + v38);
    if (__OFADD__(v39, 1))
    {
      __break(1u);
      goto LABEL_8;
    }

    *(v1 + v38) = v39 + 1;
    v66 = *(*(*(*(v36 + 24) + 16) + 16) + 8);
    v40 = v68;
    sub_237EF9760();
    v41 = v57;
    sub_237EF83A0();
    sub_237EF8330();
    v42 = *v61;
    (*v61)(v41, v6);
    v42(v40, v6);
    v43 = OUTLINED_FUNCTION_24_8();
    v44(v43);
    OUTLINED_FUNCTION_28_9();
    sub_237EF9770();
    v45 = v58;
    OUTLINED_FUNCTION_28_9();
    sub_237EF9760();
    v46 = v59;
    OUTLINED_FUNCTION_28_9();
    sub_237EF9760();
    OUTLINED_FUNCTION_16_17();
    v47 = v63;
    sub_237EF8D30();
    v42(v46, v6);
    v42(v45, v6);
    v36 = v47;
    OUTLINED_FUNCTION_28_9();
    sub_237EF9770();
    v42(v41, v6);
    v23 = v56;
    v42(v68, v6);
    v42(v69, v6);
    v20 = i;
  }

  (*(v53 + 8))(v64, v65);
  if (!__OFSUB__(*(v1 + *(v36 + 56)), 1))
  {
    v48 = v68;
    sub_237EF83A0();
    v49 = v69;
    sub_237EF8330();
    v50 = v54;
    v51 = *(v54 + 8);
    v51(v48, v6);
    sub_237EF8320();
    v51(v49, v6);
    (*(v50 + 40))(v1 + *(v36 + 52), v20, v6);
    OUTLINED_FUNCTION_38_0();
    return;
  }

LABEL_8:
  __break(1u);
}

uint64_t StandardScaler.encodeWithOptimizer(_:to:)(uint64_t a1, uint64_t a2, __n128 *a3)
{
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, v4);
  v6 = *(v5 + 8);
  v7 = OUTLINED_FUNCTION_21_13();
  v9 = type metadata accessor for StandardScaler.Transformer(v7, v8);
  WitnessTable = swift_getWitnessTable();
  return v6(a1, v9, WitnessTable, v4, v5);
}

uint64_t StandardScaler.decodeWithOptimizer(from:)(uint64_t a1, __n128 *a2)
{
  v3 = OUTLINED_FUNCTION_21_13();
  v5 = type metadata accessor for StandardScaler.Transformer(v3, v4);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v6);
  v8 = *(v7 + 8);
  WitnessTable = swift_getWitnessTable();
  return v8(v5, v5, WitnessTable, v6, v7);
}

uint64_t sub_237CFBB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 *a7)
{
  StandardScaler.update<A>(_:with:eventHandler:)(a1, a2, a3, a4, a7, a5, a6);
  v8 = *(v7 + 8);

  return v8();
}

void StandardScaler.Transformer.applied(to:eventHandler:)()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_1_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_26();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14_20();
  (*(v5 + 16))(v3);
  v11 = OUTLINED_FUNCTION_16_17();
  StandardScaler.Transformer.mean.getter(v11, v12);
  v13 = sub_237EF8380();
  v14 = *(v5 + 8);
  v15 = OUTLINED_FUNCTION_23_12();
  v14(v15);
  if (v13)
  {
    v16 = OUTLINED_FUNCTION_16_17();
    StandardScaler.Transformer.mean.getter(v16, v17);
    OUTLINED_FUNCTION_27_10();
    sub_237EF9780();
    v18 = OUTLINED_FUNCTION_23_12();
    v14(v18);
  }

  StandardScaler.Transformer.standardDeviation.getter(v1, v9);
  v19 = sub_237EF8380();
  v20 = OUTLINED_FUNCTION_24_8();
  v14(v20);
  if (v19)
  {
    v21 = OUTLINED_FUNCTION_16_17();
    StandardScaler.Transformer.standardDeviation.getter(v21, v22);
    v23 = sub_237EF8370();
    v24 = OUTLINED_FUNCTION_23_12();
    v14(v24);
    if ((v23 & 1) == 0)
    {
      v25 = OUTLINED_FUNCTION_16_17();
      StandardScaler.Transformer.standardDeviation.getter(v25, v26);
      OUTLINED_FUNCTION_27_10();
      sub_237EF8340();
      v27 = OUTLINED_FUNCTION_23_12();
      v14(v27);
    }
  }

  OUTLINED_FUNCTION_38_0();
}

uint64_t static StandardScaler.Transformer.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (sub_237EF8520() & 1) != 0 && (v15[0] = a3, v15[1] = a4, v15[2] = a5, v15[3] = a6, v12 = type metadata accessor for StandardScaler.Transformer(0, v15), (OUTLINED_FUNCTION_30_11()) && *(a1 + *(v12 + 56)) == *(a2 + *(v12 + 56)))
  {
    v13 = OUTLINED_FUNCTION_30_11();
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_237CFBF9C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1851876717 && a2 == 0xE400000000000000;
  if (v3 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x8000000237EFD3A0 == a2;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x746E756F63 && a2 == 0xE500000000000000;
      if (v7 || (sub_237EF9D40() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000016 && 0x8000000237EFD3C0 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_237EF9D40();

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

unint64_t sub_237CFC0FC(char a1)
{
  result = 1851876717;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x746E756F63;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_237CFC1B8(uint64_t a1)
{
  sub_237EFA120();
  sub_237C5EDA8(v3, *v1);
  return sub_237EFA170();
}

uint64_t sub_237CFC214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237CFBF9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237CFC270@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237C8CFF4();
  *a1 = result;
  return result;
}

uint64_t sub_237CFC2A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237CFC2F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t StandardScaler.Transformer.hash(into:)(uint64_t a1, uint64_t a2)
{
  sub_237EF83E0();
  OUTLINED_FUNCTION_22_13();
  sub_237EF83E0();
  MEMORY[0x2383E2210](*(v2 + *(a2 + 56)));
  OUTLINED_FUNCTION_22_13();
  return sub_237EF83E0();
}

uint64_t StandardScaler.Transformer.hashValue.getter(uint64_t a1)
{
  sub_237EFA120();
  StandardScaler.Transformer.hash(into:)(v3, a1);
  return sub_237EFA170();
}

uint64_t sub_237CFC41C()
{
  StandardScaler.Transformer.applied(to:eventHandler:)();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_237CFC490(uint64_t a1, uint64_t a2)
{
  sub_237EFA120();
  StandardScaler.Transformer.hash(into:)(v4, a2);
  return sub_237EFA170();
}

uint64_t StandardScaler.Transformer.debugDescription.getter(uint64_t a1)
{
  sub_237EF9330();
  MEMORY[0x2383E0710](0xD000000000000021, 0x8000000237EFD350);
  sub_237EF9CF0();
  MEMORY[0x2383E0710](0xD000000000000015, 0x8000000237EFD380);
  sub_237EF9CF0();
  MEMORY[0x2383E0710](62, 0xE100000000000000);
  return 0;
}

uint64_t StandardScaler.Transformer.encode(to:)(void *a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *(a2 + 40);
  v13[1] = a2;
  v14 = *(a2 + 16);
  v15 = v14;
  v16 = v3;
  v17 = v4;
  type metadata accessor for StandardScaler.Transformer.CodingKeys(255, &v15);
  OUTLINED_FUNCTION_7_22();
  swift_getWitnessTable();
  v5 = sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EFA1B0();
  LOBYTE(v15) = 0;
  OUTLINED_FUNCTION_13_13();
  v11 = v18;
  sub_237EF9A70();
  if (!v11)
  {
    LOBYTE(v15) = 1;
    OUTLINED_FUNCTION_13_13();
    sub_237EF9A70();
    LOBYTE(v15) = 2;
    sub_237EF9A50();
    LOBYTE(v15) = 3;
    OUTLINED_FUNCTION_13_13();
    sub_237EF9A70();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t StandardScaler.Transformer.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v80 = a1;
  v66 = a6;
  v63 = sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  v62 = v10;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  v67 = v61 - v12;
  OUTLINED_FUNCTION_1_1();
  v85 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_2();
  v65 = v15;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_8_16();
  v70 = v17;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v18);
  v72 = v61 - v19;
  v81 = a2;
  v82 = a3;
  v83 = a4;
  v84 = a5;
  v73 = type metadata accessor for StandardScaler.Transformer.CodingKeys(255, &v81);
  OUTLINED_FUNCTION_7_22();
  WitnessTable = swift_getWitnessTable();
  sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  v68 = v21;
  v69 = v20;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v22);
  v79 = v61 - v23;
  v24 = *(*(*(*(a3 + 16) + 16) + 8) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v26);
  v28 = v61 - v27;
  v81 = a2;
  v82 = a3;
  v71 = a4;
  v83 = a4;
  v84 = a5;
  v29 = type metadata accessor for StandardScaler.Transformer(0, &v81);
  OUTLINED_FUNCTION_1();
  v64 = v30;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v31);
  v33 = v61 - v32;
  v35 = *(v34 + 60);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_237EF9FB0();
  v76 = v35;
  v77 = v33;
  v78 = a2;
  sub_237EF9D20();
  v37 = v80;
  __swift_project_boxed_opaque_existential_1(v80, v80[3]);
  v38 = v75;
  v39 = v85;
  sub_237EFA190();
  if (v38)
  {
    __swift_destroy_boxed_opaque_existential_1(v37);
    return (*(v39 + 8))(&v77[v76], v78);
  }

  else
  {
    v61[1] = AssociatedConformanceWitness;
    v61[0] = v28;
    v41 = v69;
    v40 = v70;
    v73 = AssociatedTypeWitness;
    WitnessTable = v24;
    v42 = v68;
    v75 = v29;
    LOBYTE(v81) = 0;
    v43 = v78;
    v44 = v79;
    OUTLINED_FUNCTION_19_14();
    sub_237EF9970();
    v46 = *(v85 + 32);
    v46(v77, v72, v43);
    LOBYTE(v81) = 1;
    OUTLINED_FUNCTION_19_14();
    sub_237EF9970();
    v47 = v75;
    v46(&v77[*(v75 + 52)], v40, v43);
    LOBYTE(v81) = 2;
    v48 = sub_237EF98F0();
    if (v49)
    {
      v50 = 0;
    }

    else
    {
      v50 = v48;
    }

    *&v77[*(v47 + 56)] = v50;
    LOBYTE(v81) = 3;
    v51 = v67;
    OUTLINED_FUNCTION_19_14();
    sub_237EF9900();
    v72 = 0;
    v52 = v41;
    v53 = v51;
    if (__swift_getEnumTagSinglePayload(v51, 1, v43) == 1)
    {
      sub_237EF9FB0();
      v54 = v65;
      OUTLINED_FUNCTION_16_17();
      OUTLINED_FUNCTION_18_16();
      sub_237EF9D20();
      (*(v42 + 8))(v44, v52);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v53, 1, v43);
      v56 = v80;
      v57 = v66;
      v58 = v75;
      if (EnumTagSinglePayload != 1)
      {
        (*(v62 + 8))(v53, v63);
      }
    }

    else
    {
      (*(v42 + 8))(v44, v52);
      v54 = v65;
      v46(v65, v53, v43);
      v56 = v80;
      v57 = v66;
      v58 = v75;
    }

    v59 = v77;
    (*(v85 + 40))(&v77[v76], v54, v43);
    v60 = v64;
    (*(v64 + 16))(v57, v59, v58);
    __swift_destroy_boxed_opaque_existential_1(v56);
    return (*(v60 + 8))(v59, v58);
  }
}

uint64_t sub_237CFCEBC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237CFCF38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v42 = a2;
  v44 = sub_237EF7820();
  OUTLINED_FUNCTION_1();
  v43 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v48 = v8 - v7;
  v46 = sub_237EF7730();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  v41 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_2();
  v45 = v12;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v13);
  v47 = &v41 - v14;
  v15 = *(a1 + 16);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5();
  (*(v19 + 16))(v18 - v17, v3 + *(a1 + 52), v15);
  sub_237C65348();
  OUTLINED_FUNCTION_17_16();
  v20 = 1.0 / __dst[0];
  sub_237EF8330();
  OUTLINED_FUNCTION_17_16();
  sub_237CFA100(v20, -__dst[0]);
  v21 = *(v10 + 16);
  v23 = v45;
  v22 = v46;
  v24 = OUTLINED_FUNCTION_24_8();
  v21(v24);
  v25 = v48;
  sub_237EF7810();
  v26 = type metadata accessor for CoreMLPackage(0);
  v27 = v42;
  v28 = v42 + *(v26 + 24);
  *(v28 + 80) = 0;
  *(v28 + 48) = 0u;
  *(v28 + 64) = 0u;
  *(v28 + 16) = 0u;
  *(v28 + 32) = 0u;
  *v28 = 0u;
  (v21)(v27, v23, v22);
  memcpy(__dst, v28, 0x58uLL);
  sub_237C9BD20(__dst);
  *v28 = 0u;
  *(v28 + 16) = 0u;
  *(v28 + 32) = 0u;
  *(v28 + 48) = 0u;
  *(v28 + 64) = 0u;
  *(v28 + 80) = 0;
  v29 = v43;
  v30 = v44;
  (*(v43 + 16))(v27 + *(v26 + 20), v25, v44);
  v31 = sub_237E34060();
  v33 = v32;
  v34 = sub_237EF7780();
  v36 = v35;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v36;
  sub_237C91098(v31, v33, 0xD00000000000001ALL, 0x8000000237EFB6D0, isUniquelyReferenced_nonNull_native);
  *v36 = v49;
  v34(v50, 0);
  (*(v29 + 8))(v48, v30);
  v38 = *(v41 + 8);
  v39 = v46;
  v38(v45, v46);
  return (v38)(v47, v39);
}

_BYTE *sub_237CFD328(_BYTE *result, int a2, int a3)
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

uint64_t sub_237CFD3DC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_237CFD458(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v6;
  if (a2 <= v6)
  {
    return __swift_getEnumTagSinglePayload(a1, v6, v4);
  }

  v8 = ((*(v5 + 80) + ((*(*(v4 - 8) + 64) + ((*(*(v4 - 8) + 64) + *(v5 + 80)) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~*(v5 + 80)) + *(*(v4 - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_19:
      if (v6)
      {
        return __swift_getEnumTagSinglePayload(a1, v6, v4);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_19;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    switch(v8)
    {
      case 2:
        LODWORD(v8) = *a1;
        break;
      case 3:
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v8) = *a1;
        break;
      default:
        LODWORD(v8) = *a1;
        break;
    }
  }

  return v6 + (v8 | v12) + 1;
}

void sub_237CFD5C0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  v10 = (*(v7 + 80) + ((v9 + ((v9 + *(v7 + 80)) & ~*(v7 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~*(v7 + 80);
  v11 = v10 + v9;
  v12 = 8 * (v10 + v9);
  v13 = a3 >= v8;
  v14 = a3 - v8;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v8 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v8, v6);
        }

        break;
    }
  }

  else
  {
    v16 = ~v8 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

_BYTE *sub_237CFD7F0(_BYTE *result, unsigned int a2, unsigned int a3)
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

double OUTLINED_FUNCTION_17_16()
{

  sub_237EF8190();
  return result;
}

uint64_t OUTLINED_FUNCTION_30_11()
{

  return sub_237EF8520();
}

void *TimeSeriesForecasterAnnotatedWindows.init(features:annotations:inputWindowSize:forecastWindowSize:stride:shufflesElements:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v14 = type metadata accessor for TimeSeriesForecasterAnnotatedWindows(0, a7, a8, a4);
  v41 = v14[13];
  v15 = sub_237EF7E90();
  OUTLINED_FUNCTION_77();
  v40 = v16;
  v17 = *(v16 + 16);
  v17(a9, a1, v15);
  v39 = v14[9];
  v17(a9 + v39, a2, v15);
  *(a9 + v14[10]) = a3;
  *(a9 + v14[11]) = a4;
  *(a9 + v14[12]) = a5;
  v44 = a9;
  *(a9 + v41) = a6;
  if (a3 < 1 || a4 < 1 || a5 < 1)
  {
    v20 = 0xD000000000000024;
    v21 = 0x8000000237F0A660;
    v22 = 0x8000000237EFD3E0;
    v23 = 0xD00000000000002DLL;
    v24 = 5;
LABEL_24:
    sub_237C84150();
    swift_allocError();
    *v37 = v20;
    *(v37 + 8) = v21;
    *(v37 + 16) = v23;
    *(v37 + 24) = v22;
    *(v37 + 32) = v24;
    swift_willThrow();
    v38 = *(v40 + 8);
    v38(a2, v15);
    v38(a1, v15);
    v38(v44, v15);
    return (v38)(v44 + v39, v15);
  }

  v25 = *(sub_237EF7E20() + 16);

  result = sub_237EF7E20();
  v20 = result;
  if (v25 != 2)
  {
    v22 = 0;
    v23 = 0x8000000237EFB770;
    v21 = 0xD000000000000033;
LABEL_23:
    v24 = 6;
    goto LABEL_24;
  }

  if (!result[2])
  {
    __break(1u);
    goto LABEL_26;
  }

  v27 = result[4];

  result = sub_237EF7E20();
  if (!result[2])
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v28 = result[4];

  if (v27 != v28)
  {
    v20 = sub_237EF7E20();
    v22 = 0;
    v23 = 0x8000000237EFD410;
    v21 = 0xD000000000000076;
    goto LABEL_23;
  }

  result = sub_237EF7E20();
  if (result[2] < 2uLL)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v29 = result[5];

  *(a9 + v14[14]) = v29;
  result = sub_237EF7E20();
  if (result[2] < 2uLL)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v30 = result[5];

  *(a9 + v14[15]) = v30;
  result = sub_237EF7E20();
  if (!result[2])
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v31 = result[4];

  v32 = *(v40 + 8);
  v32(a2, v15);
  result = (v32)(a1, v15);
  v33 = a3 + a4;
  if (__OFADD__(a3, a4))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v34 = __OFSUB__(v31, v33);
  v35 = v31 - v33;
  if (!v34)
  {
    v34 = __OFADD__(v35, 1);
    v36 = v35 + 1;
    if (!v34)
    {
      *(a9 + v14[16]) = v36 & ~(v36 >> 63);
      return result;
    }

    goto LABEL_32;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t TimeSeriesForecasterAnnotatedWindows.features.getter@<X0>(uint64_t a2@<X8>)
{
  sub_237EF7E90();
  OUTLINED_FUNCTION_4();
  v6 = *(v5 + 16);

  return v6(a2, v2, v4);
}

uint64_t TimeSeriesForecasterAnnotatedWindows.annotations.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  sub_237EF7E90();
  OUTLINED_FUNCTION_4();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t TimeSeriesForecasterAnnotatedWindows.underestimatedCount.getter(uint64_t result)
{
  v2 = *(v1 + *(result + 64));
  v3 = *(v1 + *(result + 48));
  v4 = __OFADD__(v2, v3 / 2);
  v5 = v2 + v3 / 2;
  if (v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (!v3)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v5 != 0x8000000000000000 || v3 != -1)
  {
    return v5 / v3;
  }

LABEL_10:
  __break(1u);
  return result;
}

void TimeSeriesForecasterAnnotatedWindows.makeIterator()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = sub_237EF7E90();
  OUTLINED_FUNCTION_1_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v19 - v16;
  v18 = *(v10 + 16);
  v18(&v19 - v16, v3, v8, v15);
  (v18)(v13, v3 + *(a1 + 36), v8);
  sub_237CFE110(v17, v13, *(v3 + *(a1 + 40)), *(v3 + *(a1 + 44)), *(v3 + *(a1 + 48)), *(v3 + *(a1 + 52)), *(v3 + *(a1 + 56)), *(v3 + *(a1 + 60)), a2, *(v3 + *(a1 + 64)), v6, v7);
  OUTLINED_FUNCTION_38_0();
}

void sub_237CFE110(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v57 = a7;
  v58 = a8;
  v48 = a6;
  v56 = a3;
  v54 = a4;
  *&v55 = a10;
  v16 = sub_237EF7E90();
  OUTLINED_FUNCTION_1_1();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  v51 = &v47[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21);
  v49 = &v47[-v22];
  v52 = a12;
  v24 = type metadata accessor for TimeSeriesForecasterAnnotatedWindows.Iterator(0, a11, a12, v23);
  *(a9 + v24[15]) = 0;
  v25 = *(v18 + 16);
  v53 = a1;
  v26 = a1;
  v27 = a2;
  v28 = v54;
  v25(a9, v26, v16);
  v29 = a9 + v24[9];
  v50 = v27;
  v30 = v27;
  v31 = v56;
  v25(v29, v30, v16);
  v37 = v55;
  v39 = v57;
  v38 = v58;
  *(a9 + v24[10]) = v31;
  *(a9 + v24[11]) = v28;
  *(a9 + v24[12]) = a5;
  *(a9 + v24[13]) = v39;
  *(a9 + v24[14]) = v38;
  if (!v37)
  {
    v41 = MEMORY[0x277D84F90];
    goto LABEL_8;
  }

  if (v48)
  {
    if (a5)
    {
      sub_237DBA454(0, v37, a5, v32, v33, v34, v35, v36);
      v59 = v40;
      sub_237EB52FC();
      v41 = v59;
LABEL_8:
      *(a9 + v24[17]) = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
      v42 = swift_allocObject();
      v55 = xmmword_237F04760;
      *(v42 + 16) = xmmword_237F04760;
      *(v42 + 32) = v31;
      *(v42 + 40) = v39;
      v43 = v49;
      sub_237D14E78(v42);
      v44 = swift_allocObject();
      *(v44 + 16) = v55;
      *(v44 + 32) = v28;
      *(v44 + 40) = v38;
      v45 = v51;
      sub_237D14E78(v44);
      v46 = *(v18 + 8);
      v46(v50, v16);
      v46(v53, v16);
      AnnotatedFeature.init(feature:annotation:)(v43, v45, v16, v16, a9 + v24[16]);
      OUTLINED_FUNCTION_38_0();
      return;
    }

    __break(1u);
  }

  else if (a5)
  {
    sub_237DBA454(0, v37, a5, v32, v33, v34, v35, v36);
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_237CFE3D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  TimeSeriesForecasterAnnotatedWindows.makeIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

void TimeSeriesForecasterAnnotatedWindows.Iterator.next()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = sub_237EF7EE0();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v9);
  v12 = v58 - v11;
  v13 = *(a1 + 60);
  v14 = *(v2 + v13);
  v15 = *(v2 + *(a1 + 68));
  if (v14 < *(v15 + 16))
  {
    if (v14 < 0)
    {
      __break(1u);
    }

    else
    {
      v16 = *(v15 + 8 * v14 + 32);
      v17 = *(v3 + *(a1 + 40));
      if (!__OFADD__(v16, v17))
      {
        v64 = *(v3 + *(a1 + 40));
        v61 = a2;
        v66 = v7;
        v67 = v6;
        v68 = v16 + v17;
        v69 = v10;
        *(v3 + v13) = v14 + 1;
        v18 = *(v3 + *(a1 + 52));
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEADE38, &qword_237F093D0);
        v20 = swift_allocObject();
        v65 = xmmword_237F04760;
        *(v20 + 16) = xmmword_237F04760;
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEADDA0, &qword_237F0A6B0);
        *(v20 + 56) = v21;
        v22 = sub_237C8548C();
        v23 = v68;
        *(v20 + 64) = v22;
        if (v23 >= v16)
        {
          v24 = v22;
          *(v20 + 32) = v16;
          *(v20 + 40) = v23;
          *(v20 + 96) = v21;
          *(v20 + 104) = v22;
          if ((v18 & 0x8000000000000000) == 0)
          {
            v60 = v21;
            *(v20 + 72) = 0;
            *(v20 + 80) = v18;
            v25 = v67;
            v63 = v19;
            v26 = v66;
            v27 = sub_237EF7E90();
            v58[1] = swift_getWitnessTable();
            v59 = v27;
            sub_237EF7FA0();

            v62 = v58;
            MEMORY[0x28223BE20](v28);
            v58[-6] = v25;
            v58[-5] = v26;
            v29 = v64;
            v58[-4] = v3;
            v58[-3] = v29;
            v58[-2] = v18;
            WitnessTable = swift_getWitnessTable();
            sub_237D14E4C(sub_237CFED98, &v58[-8], v8, MEMORY[0x277D84F78] + 8, WitnessTable);
            v58[0] = 0;
            v31 = *(v69 + 8);
            v32 = v8;
            v69 += 8;
            v64 = v31;
            v31(v12, v8);
            v33 = *(v3 + *(a1 + 44));
            v34 = *(v3 + *(a1 + 56));
            v35 = swift_allocObject();
            v36 = v68;
            *(v35 + 16) = v65;
            v37 = v36 + v33;
            if (!__OFADD__(v36, v33))
            {
              v38 = v60;
              *(v35 + 56) = v60;
              *(v35 + 64) = v24;
              if (v37 >= v36)
              {
                *(v35 + 32) = v36;
                *(v35 + 40) = v37;
                *(v35 + 96) = v38;
                *(v35 + 104) = v24;
                if ((v34 & 0x8000000000000000) == 0)
                {
                  *(v35 + 72) = 0;
                  *(v35 + 80) = v34;
                  v39 = v59;
                  sub_237EF7FA0();

                  MEMORY[0x28223BE20](v40);
                  v41 = v66;
                  v58[-6] = v67;
                  v58[-5] = v41;
                  v58[-4] = v3;
                  v58[-3] = v33;
                  v58[-2] = v34;
                  sub_237D14E4C(sub_237CFEDC4, &v58[-8], v32, MEMORY[0x277D84F78] + 8, v42);
                  v64(v12, v32);
                  v43 = *(a1 + 64);
                  v45 = type metadata accessor for AnnotatedFeature(0, v39, v39, v44);
                  OUTLINED_FUNCTION_4();
                  v47 = v3 + v43;
                  v48 = v61;
                  (*(v46 + 16))(v61, v47, v45);
                  __swift_storeEnumTagSinglePayload(v48, 0, 1, v45);
                  OUTLINED_FUNCTION_38_0();
                  return;
                }

                goto LABEL_19;
              }

LABEL_18:
              __break(1u);
LABEL_19:
              __break(1u);
              return;
            }

LABEL_17:
            __break(1u);
            goto LABEL_18;
          }

LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

LABEL_15:
        __break(1u);
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  v49 = sub_237EF7E90();
  OUTLINED_FUNCTION_5_25(v49, v50, v51, v52);
  OUTLINED_FUNCTION_38_0();

  __swift_storeEnumTagSinglePayload(v53, v54, v55, v56);
}

uint64_t sub_237CFE8C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  type metadata accessor for TimeSeriesForecasterAnnotatedWindows.Iterator(0, a8, a9, a4);
  sub_237EF7E90();
  swift_getWitnessTable();
  return sub_237D14EC8();
}

uint64_t sub_237CFE9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  type metadata accessor for TimeSeriesForecasterAnnotatedWindows.Iterator(0, a8, a9, a4);
  v9 = sub_237EF7E90();
  type metadata accessor for AnnotatedFeature(0, v9, v9, v10);
  swift_getWitnessTable();
  return sub_237D14EC8();
}

uint64_t sub_237CFEA90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v50 = a7;
  OUTLINED_FUNCTION_1_1();
  v17 = v16;
  v51 = a10;
  MEMORY[0x28223BE20](v18);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v21;
  result = sub_237C60C7C(v21, v22);
  if (result)
  {
    result = sub_237EF9140();
    if (!result)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    result = sub_237EF8530();
    if (!result)
    {
LABEL_19:
      __break(1u);
      return result;
    }

    if ((a9 * v51) >> 64 == (a9 * v51) >> 63)
    {
      return sub_237EF90B0();
    }

    goto LABEL_16;
  }

  v43 = a1;
  if (a9 < 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v42 = v20;
  v44 = v17;
  v47 = a8;
  v55 = a11;
  v48 = a5;
  v49 = a6;
  v24 = v51;
  if (a9)
  {
    if (v51 < 0)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v25 = 0;
    v40 = a12;
    v54 = xmmword_237F04760;
    v41 = a9;
    v46 = v44 + 40;
    do
    {
      v52 = v25;
      v26 = v43;
      v27 = v45;
      v28 = v40;
      v29 = v44;
      v30 = v42;
      if (v24)
      {
        v31 = 0;
        do
        {
          v53 = v31 + 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
          v32 = v30;
          inited = swift_initStackObject();
          *(inited + 16) = v54;
          v34 = v28;
          v35 = v27;
          v36 = v52;
          *(inited + 32) = v52;
          *(inited + 40) = v31;
          v37 = swift_initStackObject();
          *(v37 + 16) = v54;
          *(v37 + 32) = v36;
          *(v37 + 40) = v31;
          v27 = v35;
          v28 = v34;
          sub_237D16AC4();
          swift_setDeallocating();
          v38 = sub_237D166DC(inited, v27);
          swift_setDeallocating();
          v30 = v32;
          result = (*(v29 + 40))(v26 + *(v29 + 72) * v38, v32, v55);
          v24 = v51;
          v31 = v53;
        }

        while (v51 != v53);
      }

      v25 = v52 + 1;
    }

    while (v52 + 1 != v41);
  }

  return result;
}

uint64_t sub_237CFEE44(uint64_t a1)
{
  result = sub_237EF7E90();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_237CFEF04(uint64_t a1)
{
  v1 = sub_237EF7E90();
  v3 = v1;
  if (v4 <= 0x3F)
  {
    v3 = type metadata accessor for AnnotatedFeature(319, v1, v1, v2);
    if (v5 <= 0x3F)
    {
      sub_237CFF010();
      v3 = v6;
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v3;
}

void sub_237CFF010()
{
  if (!qword_27DEAFFC8[0])
  {
    v0 = sub_237EF8A60();
    if (!v1)
    {
      atomic_store(v0, qword_27DEAFFC8);
    }
  }
}

uint64_t OUTLINED_FUNCTION_5_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return type metadata accessor for AnnotatedFeature(0, a1, a1, a4);
}

uint64_t Transformer.applied<A>(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[15] = a7;
  v8[16] = v7;
  v8[13] = a5;
  v8[14] = a6;
  v8[11] = a3;
  v8[12] = a4;
  v8[9] = a1;
  v8[10] = a2;
  OUTLINED_FUNCTION_1_1();
  v8[17] = v9;
  v10 = OUTLINED_FUNCTION_27_0();
  v8[18] = v10;
  v14 = OUTLINED_FUNCTION_56_4(v10, v11, v12, v13, &associated type descriptor for Transformer.Output);
  v8[19] = v14;
  OUTLINED_FUNCTION_18(v14);
  v15 = OUTLINED_FUNCTION_27_0();
  v8[20] = v15;
  v8[21] = OUTLINED_FUNCTION_56_4(v15, v16, v17, v18, &associated type descriptor for Transformer.Input);
  OUTLINED_FUNCTION_1_1();
  v8[22] = v19;
  v8[23] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_34_0();
  v20 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v20);
  v8[24] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v8[25] = v21;
  v8[26] = OUTLINED_FUNCTION_27_0();
  v8[27] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_0();
  v8[28] = v22;
  v8[29] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v23, v24, v25);
}

uint64_t sub_237CFF30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_33_3();
  v16 = sub_237EF8110();
  OUTLINED_FUNCTION_22_14(v16);
  *(v15 + 176) = OUTLINED_FUNCTION_48_4();
  sub_237EF8970();
  v17 = OUTLINED_FUNCTION_19_15();
  v18(v17);
  OUTLINED_FUNCTION_31_6();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_51_3(AssociatedConformanceWitness);
  OUTLINED_FUNCTION_42_4();
  if (v20)
  {
    v21 = OUTLINED_FUNCTION_30_12();
    v22(v21);

    OUTLINED_FUNCTION_29_10();
    OUTLINED_FUNCTION_18_3();

    return v25(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    (*(v14[22] + 32))(v14[23], v14[24], v14[21]);
    sub_237EF8B90();
    v44 = v14[14] + 24;
    OUTLINED_FUNCTION_15_0();
    v45 = v32 + *v32;
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v14[31] = v33;
    *v33 = v34;
    OUTLINED_FUNCTION_10_24(v33);
    OUTLINED_FUNCTION_18_3();

    return v41(v35, v36, v37, v38, v39, v40, v41, v42, v44, v45, a11, a12, a13, a14);
  }
}

uint64_t sub_237CFF5A4()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 256) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237CFF6A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_33_3();
  v15 = *(v14 + 80);
  sub_237EF8A20();
  if (v15)
  {
    v16 = *(v14 + 176);
    a9 = *(v14 + 168);
    a10 = *(v14 + 184);
    v18 = *(v14 + 80);
    v17 = *(v14 + 88);
    (*(*(v14 + 136) + 16))(*(v14 + 144), *(v14 + 128), *(v14 + 96));

    v19 = sub_237EF85D0();
    v21 = v20;
    v22 = sub_237EF8A00();
    v23 = sub_237EF8710();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD7E0, &qword_237F03CE0);
    sub_237C758C4();
    v24 = sub_237EF8230();
    *(v14 + 16) = v19;
    *(v14 + 24) = v21;
    *(v14 + 32) = v22;
    *(v14 + 40) = v23;
    *(v14 + 48) = 0;
    *(v14 + 56) = v24;
    v18(v14 + 16);
    sub_237C5EE40(v18, v17);

    (*(v16 + 8))(a10, a9);
  }

  else
  {
    v25 = OUTLINED_FUNCTION_21_14();
    v26(v25);
  }

  v27 = *(v14 + 256);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_50_4(AssociatedConformanceWitness);
  OUTLINED_FUNCTION_46_3();
  if (v29)
  {
    v30 = OUTLINED_FUNCTION_30_12();
    v31(v30);

    OUTLINED_FUNCTION_29_10();
    OUTLINED_FUNCTION_18_3();

    return v34(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    (*(*(v14 + 176) + 32))(*(v14 + 184), *(v14 + 192), *(v14 + 168));
    sub_237EF8B90();
    if (v27)
    {
      v41 = OUTLINED_FUNCTION_21_14();
      v42(v41);
      v43 = OUTLINED_FUNCTION_6_23();
      v44(v43);

      OUTLINED_FUNCTION_49_5();

      OUTLINED_FUNCTION_8_4();
      OUTLINED_FUNCTION_18_3();

      return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14);
    }

    else
    {
      v65 = *(v14 + 112) + 24;
      OUTLINED_FUNCTION_15_0();
      v66 = v53 + *v53;
      swift_task_alloc();
      OUTLINED_FUNCTION_30_0();
      *(v14 + 248) = v54;
      *v54 = v55;
      OUTLINED_FUNCTION_10_24(v54);
      OUTLINED_FUNCTION_18_3();

      return v62(v56, v57, v58, v59, v60, v61, v62, v63, v65, v66, a11, a12, a13, a14);
    }
  }
}

uint64_t sub_237CFFA20(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_21_14();
  v2(v1);
  v3 = OUTLINED_FUNCTION_31_0();
  v4(v3);

  OUTLINED_FUNCTION_3_0();

  return v5();
}

uint64_t Transformer.applied<A, B>(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[16] = a8;
  v9[17] = v8;
  v9[14] = a6;
  v9[15] = a7;
  v9[12] = a4;
  v9[13] = a5;
  v9[10] = a2;
  v9[11] = a3;
  v9[9] = a1;
  OUTLINED_FUNCTION_1_1();
  v9[18] = v11;
  v12 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_53_3(v12);
  v9[20] = OUTLINED_FUNCTION_27_0();
  v16 = OUTLINED_FUNCTION_36_7(255, v13, v14, v15, &associated type descriptor for Transformer.Output);
  v17 = OUTLINED_FUNCTION_43_5(v16);
  v21 = type metadata accessor for AnnotatedFeature(v17, v18, v19, v20);
  v9[22] = v21;
  OUTLINED_FUNCTION_18(v21);
  v9[23] = OUTLINED_FUNCTION_27_0();
  v9[24] = OUTLINED_FUNCTION_36_7(0, v22, v23, v24, &associated type descriptor for Transformer.Input);
  OUTLINED_FUNCTION_1_1();
  v9[25] = v25;
  v26 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_52_4(v26);
  v9[27] = v27;
  v9[28] = swift_task_alloc();
  v9[29] = swift_task_alloc();
  v28 = OUTLINED_FUNCTION_34_0();
  v9[30] = type metadata accessor for AnnotatedFeature(v28, v29, a6, v30);
  OUTLINED_FUNCTION_1_1();
  v9[31] = v31;
  v9[32] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_34_0();
  v32 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v32);
  v9[33] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v9[34] = v33;
  v9[35] = OUTLINED_FUNCTION_27_0();
  v9[36] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_0();
  v9[37] = v34;
  v9[38] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v35, v36, v37);
}

uint64_t sub_237CFFDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_33_3();
  v15 = OUTLINED_FUNCTION_33_6();
  OUTLINED_FUNCTION_22_14(v15);
  v16 = OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_55_2(v16);
  v17 = OUTLINED_FUNCTION_19_15();
  v18(v17);
  OUTLINED_FUNCTION_31_6();
  OUTLINED_FUNCTION_32_7();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_51_3(AssociatedConformanceWitness);
  OUTLINED_FUNCTION_42_4();
  if (v20)
  {
    OUTLINED_FUNCTION_2_32();
    v53 = v21;
    v22 = OUTLINED_FUNCTION_37_6();
    v23(v22);
    v51 = *(v14 + 64);

    OUTLINED_FUNCTION_29_10();
    OUTLINED_FUNCTION_18_3();

    return v26(v24, v25, v26, v27, v28, v29, v30, v31, v51, v53, a11, a12, a13, a14);
  }

  else
  {
    v33 = OUTLINED_FUNCTION_23_13();
    v34(v33);
    sub_237EF8B90();
    v35 = OUTLINED_FUNCTION_9_17();
    v54 = v36;
    AnnotatedFeature.feature.getter(v35, v37);
    OUTLINED_FUNCTION_0_16(v54);
    v52 = v38 + *v38;
    v39 = swift_task_alloc();
    v40 = OUTLINED_FUNCTION_18_17(v39);
    *v40 = v41;
    OUTLINED_FUNCTION_0_22(v40);
    OUTLINED_FUNCTION_18_3();

    return v48(v42, v43, v44, v45, v46, v47, v48, v49, v52, v54, a11, a12, a13, a14);
  }
}

uint64_t sub_237D000A8()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 328) = v0;

  v7 = OUTLINED_FUNCTION_20_13();
  v8(v7);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_237D001C8()
{
  v5 = OUTLINED_FUNCTION_13_14();
  v6(v5);
  AnnotatedFeature.annotation.getter(v0, v3);
  v7 = OUTLINED_FUNCTION_47_2();
  AnnotatedFeature.init(feature:annotation:)(v7, v8, v9, v10, v11);
  sub_237EF8A20();
  if (v4)
  {
    v12 = OUTLINED_FUNCTION_12_21();
    v13(v12);

    sub_237EF85D0();
    OUTLINED_FUNCTION_57_4();
    sub_237EF8710();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD7E0, &qword_237F03CE0);
    sub_237C758C4();
    v14 = sub_237EF8230();
    v15 = OUTLINED_FUNCTION_28_10(v14);
    v3(v15);
    sub_237C5EE40(v3, v2);

    (*(v1 + 8))();
    (*(v41 + 8))();
  }

  else
  {
    v16 = OUTLINED_FUNCTION_44_3();
    v17(v16);
    v0 += 8;
    v18 = OUTLINED_FUNCTION_31_0();
    v19(v18);
  }

  OUTLINED_FUNCTION_27_11();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_50_4(AssociatedConformanceWitness);
  OUTLINED_FUNCTION_46_3();
  if (!v21)
  {
    v26 = OUTLINED_FUNCTION_23_13();
    v27(v26);
    sub_237EF8B90();
    if (v0)
    {
      v28 = OUTLINED_FUNCTION_4_28();
      v29(v28);
      v30 = OUTLINED_FUNCTION_6_23();
      v31(v30);

      OUTLINED_FUNCTION_1_30();

      OUTLINED_FUNCTION_8_4();
      OUTLINED_FUNCTION_58();

      __asm { BRAA            X1, X16 }
    }

    v34 = OUTLINED_FUNCTION_9_17();
    AnnotatedFeature.feature.getter(v34, v35);
    OUTLINED_FUNCTION_15_0();
    v36 = swift_task_alloc();
    v37 = OUTLINED_FUNCTION_18_17(v36);
    *v37 = v38;
    OUTLINED_FUNCTION_0_22(v37);
    OUTLINED_FUNCTION_58();

    __asm { BRAA            X6, X16 }
  }

  OUTLINED_FUNCTION_2_32();
  v22 = OUTLINED_FUNCTION_37_6();
  v23(v22);

  OUTLINED_FUNCTION_29_10();
  OUTLINED_FUNCTION_58();

  __asm { BRAA            X2, X16 }
}

uint64_t Transformer.prediction<A, B>(from:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[16] = a8;
  v9[17] = v8;
  v9[14] = a6;
  v9[15] = a7;
  v9[12] = a4;
  v9[13] = a5;
  v9[10] = a2;
  v9[11] = a3;
  v9[9] = a1;
  OUTLINED_FUNCTION_1_1();
  v9[18] = v11;
  v12 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_53_3(v12);
  v9[20] = OUTLINED_FUNCTION_27_0();
  v16 = OUTLINED_FUNCTION_36_7(255, v13, v14, v15, &associated type descriptor for Transformer.Output);
  v17 = OUTLINED_FUNCTION_43_5(v16);
  v21 = type metadata accessor for AnnotatedPrediction(v17, v18, v19, v20);
  v9[22] = v21;
  OUTLINED_FUNCTION_18(v21);
  v9[23] = OUTLINED_FUNCTION_27_0();
  v9[24] = OUTLINED_FUNCTION_36_7(0, v22, v23, v24, &associated type descriptor for Transformer.Input);
  OUTLINED_FUNCTION_1_1();
  v9[25] = v25;
  v26 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_52_4(v26);
  v9[27] = v27;
  v9[28] = swift_task_alloc();
  v9[29] = swift_task_alloc();
  v28 = OUTLINED_FUNCTION_34_0();
  v9[30] = type metadata accessor for AnnotatedFeature(v28, v29, a6, v30);
  OUTLINED_FUNCTION_1_1();
  v9[31] = v31;
  v9[32] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_34_0();
  v32 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v32);
  v9[33] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v9[34] = v33;
  v9[35] = OUTLINED_FUNCTION_27_0();
  v9[36] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_0();
  v9[37] = v34;
  v9[38] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v35, v36, v37);
}

uint64_t sub_237D00898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_33_3();
  v15 = OUTLINED_FUNCTION_33_6();
  OUTLINED_FUNCTION_22_14(v15);
  v16 = OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_55_2(v16);
  v17 = OUTLINED_FUNCTION_19_15();
  v18(v17);
  OUTLINED_FUNCTION_31_6();
  OUTLINED_FUNCTION_32_7();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_51_3(AssociatedConformanceWitness);
  OUTLINED_FUNCTION_42_4();
  if (v20)
  {
    OUTLINED_FUNCTION_2_32();
    v53 = v21;
    v22 = OUTLINED_FUNCTION_37_6();
    v23(v22);
    v51 = *(v14 + 64);

    OUTLINED_FUNCTION_29_10();
    OUTLINED_FUNCTION_18_3();

    return v26(v24, v25, v26, v27, v28, v29, v30, v31, v51, v53, a11, a12, a13, a14);
  }

  else
  {
    v33 = OUTLINED_FUNCTION_23_13();
    v34(v33);
    sub_237EF8B90();
    v35 = OUTLINED_FUNCTION_9_17();
    v54 = v36;
    AnnotatedFeature.feature.getter(v35, v37);
    OUTLINED_FUNCTION_0_16(v54);
    v52 = v38 + *v38;
    v39 = swift_task_alloc();
    v40 = OUTLINED_FUNCTION_18_17(v39);
    *v40 = v41;
    OUTLINED_FUNCTION_0_22(v40);
    OUTLINED_FUNCTION_18_3();

    return v48(v42, v43, v44, v45, v46, v47, v48, v49, v52, v54, a11, a12, a13, a14);
  }
}

uint64_t sub_237D00B54()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 328) = v0;

  v7 = OUTLINED_FUNCTION_20_13();
  v8(v7);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_237D00C74()
{
  v5 = OUTLINED_FUNCTION_13_14();
  v6(v5);
  AnnotatedFeature.annotation.getter(v0, v3);
  v7 = OUTLINED_FUNCTION_47_2();
  AnnotatedPrediction.init(prediction:annotation:)(v7, v8, v9, v10, v11);
  sub_237EF8A20();
  if (v4)
  {
    v12 = OUTLINED_FUNCTION_12_21();
    v13(v12);

    sub_237EF85D0();
    OUTLINED_FUNCTION_57_4();
    sub_237EF8710();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD7E0, &qword_237F03CE0);
    sub_237C758C4();
    v14 = sub_237EF8230();
    v15 = OUTLINED_FUNCTION_28_10(v14);
    v3(v15);
    sub_237C5EE40(v3, v2);

    (*(v1 + 8))();
    (*(v41 + 8))();
  }

  else
  {
    v16 = OUTLINED_FUNCTION_44_3();
    v17(v16);
    v0 += 8;
    v18 = OUTLINED_FUNCTION_31_0();
    v19(v18);
  }

  OUTLINED_FUNCTION_27_11();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_50_4(AssociatedConformanceWitness);
  OUTLINED_FUNCTION_46_3();
  if (!v21)
  {
    v26 = OUTLINED_FUNCTION_23_13();
    v27(v26);
    sub_237EF8B90();
    if (v0)
    {
      v28 = OUTLINED_FUNCTION_4_28();
      v29(v28);
      v30 = OUTLINED_FUNCTION_6_23();
      v31(v30);

      OUTLINED_FUNCTION_1_30();

      OUTLINED_FUNCTION_8_4();
      OUTLINED_FUNCTION_58();

      __asm { BRAA            X1, X16 }
    }

    v34 = OUTLINED_FUNCTION_9_17();
    AnnotatedFeature.feature.getter(v34, v35);
    OUTLINED_FUNCTION_15_0();
    v36 = swift_task_alloc();
    v37 = OUTLINED_FUNCTION_18_17(v36);
    *v37 = v38;
    OUTLINED_FUNCTION_0_22(v37);
    OUTLINED_FUNCTION_58();

    __asm { BRAA            X6, X16 }
  }

  OUTLINED_FUNCTION_2_32();
  v22 = OUTLINED_FUNCTION_37_6();
  v23(v22);

  OUTLINED_FUNCTION_29_10();
  OUTLINED_FUNCTION_58();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_237D0104C(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_4_28();
  v2(v1);
  v3 = OUTLINED_FUNCTION_31_0();
  v4(v3);

  OUTLINED_FUNCTION_3_0();

  return v5();
}

uint64_t Transformer.callAsFunction(_:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_0_16(a6);
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  *(v6 + 16) = v7;
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_17_17(v7);

  return v10(v9);
}

uint64_t Transformer.callAsFunction<A>(_:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_237D01354;

  return Transformer.applied<A>(to:eventHandler:)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_237D01354()
{
  OUTLINED_FUNCTION_2_0();
  v3 = v2;
  OUTLINED_FUNCTION_21_0();
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;

  OUTLINED_FUNCTION_29_10();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t dispatch thunk of Transformer.applied(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_0_16(a6);
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  *(v6 + 16) = v7;
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_17_17(v7);

  return v10(v9);
}

uint64_t OUTLINED_FUNCTION_22_14(uint64_t a1)
{
  *(v1 + 64) = a1;

  return sub_237EF8710();
}

uint64_t OUTLINED_FUNCTION_28_10(uint64_t a1)
{
  *(v3 + 16) = v2;
  *(v3 + 24) = v5;
  *(v3 + 32) = v4;
  *(v3 + 40) = v1;
  *(v3 + 48) = 0;
  *(v3 + 56) = a1;
  return v3 + 16;
}

uint64_t OUTLINED_FUNCTION_31_6()
{

  return sub_237EF86F0();
}

uint64_t OUTLINED_FUNCTION_33_6()
{

  return sub_237EF8110();
}

uint64_t OUTLINED_FUNCTION_36_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_48_4()
{

  return sub_237EF8A60();
}

uint64_t OUTLINED_FUNCTION_49_5()
{
}

uint64_t OUTLINED_FUNCTION_50_4(uint64_t a1)
{

  return sub_237EF91A0();
}

uint64_t OUTLINED_FUNCTION_51_3(uint64_t a1)
{

  return sub_237EF91A0();
}

uint64_t OUTLINED_FUNCTION_55_2(uint64_t a1)
{
  *(v1 + 248) = a1;

  return sub_237EF8970();
}

uint64_t OUTLINED_FUNCTION_56_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_57_4()
{

  return sub_237EF8A00();
}

uint64_t sub_237D01A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  OUTLINED_FUNCTION_19_16();
  OUTLINED_FUNCTION_19_16();
  v12 = OUTLINED_FUNCTION_10_25();
  v14 = type metadata accessor for AugmentationSequence(v12, v13);
  (*(*(a4 - 8) + 32))(a6 + *(v14 + 76), a1, a4);
  OUTLINED_FUNCTION_22_3();
  result = (*(v15 + 32))(a6, a2, a5);
  *(a6 + *(v14 + 80)) = a3;
  return result;
}

uint64_t AugmentationSequence.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v27 = *(a1 + 24);
  v28 = a2;
  OUTLINED_FUNCTION_1_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v12 = *(v11 + 16);
  OUTLINED_FUNCTION_1_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = sub_237EF90F0();
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v27 - v22;
  (*(v14 + 16))(v18, v3 + *(a1 + 76), v12, v21);
  sub_237EF86F0();
  __swift_storeEnumTagSinglePayload(v23, 0, 1, AssociatedTypeWitness);
  v24 = v27;
  (*(v6 + 16))(v10, v3, v27);
  v25 = *(v3 + *(a1 + 80));

  return sub_237D01D74(v23, v10, v25, v24, v28);
}

uint64_t sub_237D01D74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a7@<X8>)
{
  OUTLINED_FUNCTION_19_16();
  OUTLINED_FUNCTION_19_16();
  v12 = OUTLINED_FUNCTION_10_25();
  v14 = type metadata accessor for AugmentationSequence.AsyncIterator(v12, v13);
  v15 = *(v14 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, AssociatedTypeWitness);
  sub_237EF90F0();
  OUTLINED_FUNCTION_22_3();
  (*(v20 + 40))(a7 + v15, a1);
  OUTLINED_FUNCTION_22_3();
  result = (*(v21 + 32))(a7, a2, a5);
  *(a7 + *(v14 + 76)) = a3;
  return result;
}

uint64_t AugmentationSequence.AsyncIterator.next()(uint64_t a1, void *a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v5 = a2[5];
  v3[5] = v5;
  OUTLINED_FUNCTION_1_1();
  v3[6] = v6;
  v3[7] = OUTLINED_FUNCTION_27_0();
  v3[8] = a2[7];
  v3[9] = a2[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[10] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_1_1();
  v3[11] = v8;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = type metadata accessor for AnnotatedFeature(255, AssociatedTypeWitness, v5, v9);
  v10 = sub_237EF90F0();
  v3[15] = v10;
  v3[16] = *(v10 - 8);
  v3[17] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_18_18();
  v3[18] = v11;
  v3[19] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_237D020C0()
{
  v1 = v0[4];
  v2 = *(v0[3] + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1 + v2, 1, AssociatedTypeWitness);
  v5 = v0[17];
  v6 = v0[14];
  if (EnumTagSinglePayload)
  {
    OUTLINED_FUNCTION_37_1();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v6);
  }

  else
  {
    swift_getAssociatedConformanceWitness();
    sub_237EF91A0();
    if (__swift_getEnumTagSinglePayload(v5, 1, v6) != 1)
    {
      v20 = v0[3];
      (*(v0[18] + 32))(v0[19], v0[17], v0[14]);
      v21 = swift_task_alloc();
      v0[20] = v21;
      type metadata accessor for RandomNumberGeneratorReference(0, *(v20 + 32), *(v20 + 64), v22);
      swift_getWitnessTable();
      *v21 = v0;
      v21[1] = sub_237D023E0;
      OUTLINED_FUNCTION_15_19();

      __asm { BRAA            X8, X16 }
    }
  }

  (*(v0[16] + 8))(v0[17], v0[15]);
  sub_237EF90F0();
  OUTLINED_FUNCTION_22_3();
  (*(v10 + 8))(v1 + v2);
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, AssociatedTypeWitness);
  OUTLINED_FUNCTION_11_22();
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);

  OUTLINED_FUNCTION_3_0();

  return v18();
}

uint64_t sub_237D023E0()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237D024DC()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[14];
  v4 = v0[12];
  v5 = v0[10];
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[5];
  v9 = v0[2];
  (*(v0[11] + 32))(v4, v0[13], v5);
  (*(v7 + 16))(v6, v1 + *(v3 + 36), v8);
  (*(v2 + 8))(v1, v3);
  AnnotatedFeature.init(feature:annotation:)(v4, v6, v5, v8, v9);
  v10 = OUTLINED_FUNCTION_11_22();
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);

  OUTLINED_FUNCTION_3_0();

  return v12();
}

uint64_t sub_237D02610()
{
  (*(v0[18] + 8))(v0[19], v0[14]);

  OUTLINED_FUNCTION_3_0();

  return v1();
}

uint64_t sub_237D026E0(uint64_t a1, void *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_237C6A904;

  return AugmentationSequence.AsyncIterator.next()(a1, a2);
}

uint64_t sub_237D02788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = swift_task_alloc();
  *(v6 + 32) = v12;
  *v12 = v6;
  v12[1] = sub_237D04FA0;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6);
}

uint64_t AugmentationSequence.batches(ofSize:dropsLastPartialBatch:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  (*(v11 + 16))(v9 - v8, v3);
  OUTLINED_FUNCTION_4_29();
  return sub_237D02AB8(a1, v4, v10, v12, v13, v14, v15, v16, a3, v17, v18, type metadata accessor for AugmentationSequence.BatchedSequence, v20);
}

uint64_t AugmentationSequence.BatchedSequence.makeAsyncIterator()@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = a1[8];
  v18 = a2;
  v19 = v3;
  v20 = v4;
  v21 = v5;
  v22 = v6;
  v23 = v7;
  v24 = v8;
  v25 = v9;
  v10 = type metadata accessor for AugmentationSequence.AsyncIterator(0, &v19);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - v11;
  v17 = *v2;
  HIDWORD(v16) = *(v2 + 8);
  v19 = v3;
  v20 = v4;
  v21 = v5;
  v22 = v6;
  v23 = v7;
  v24 = v8;
  v25 = v9;
  v13 = type metadata accessor for AugmentationSequence(0, &v19);
  AugmentationSequence.makeAsyncIterator()(v13, v12);
  OUTLINED_FUNCTION_3_33();
  return sub_237D02AB8(v17, SBYTE4(v16), v12, v3, v4, v5, v6, v7, v18, v8, v9, type metadata accessor for AugmentationSequence.BatchedSequence.AsyncIterator, v15);
}

uint64_t sub_237D02AB8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t (*a12)(void, uint64_t *), void (*a13)(void, uint64_t *))
{
  *a9 = a1;
  *(a9 + 8) = a2;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = a7;
  v27 = a8;
  v28 = a10;
  v29 = a11;
  v19 = *(a12(0, &v23) + 80);
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = a7;
  v27 = a8;
  v28 = a10;
  v29 = a11;
  a13(0, &v23);
  OUTLINED_FUNCTION_22_3();
  return (*(v20 + 32))(a9 + v19, a3);
}

uint64_t sub_237D02BB4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  a3(a1, a2);
  OUTLINED_FUNCTION_22_3();
  v6 = *(v5 + 8);

  return v6(v3, a1);
}

uint64_t AugmentationSequence.BatchedSequence.AsyncIterator.next()()
{
  OUTLINED_FUNCTION_2_0();
  v3 = v2;
  v1[11] = v2;
  v1[12] = v0;
  v1[13] = *(v2 + 56);
  v1[14] = *(v2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(v3 + 40);
  v1[15] = v5;
  v1[16] = type metadata accessor for AnnotatedFeature(255, AssociatedTypeWitness, v5, v6);
  v7 = sub_237EF90F0();
  v1[17] = v7;
  v1[18] = *(v7 - 8);
  v1[19] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_18_18();
  v1[20] = v8;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237D02D68()
{
  v1 = v0[12];
  v0[9] = sub_237EF8110();
  v0[23] = *v1;
  v0[24] = sub_237EF8A60();
  sub_237EF8970();
  v2 = v0[23];
  v0[25] = v0[9];
  if (sub_237EF8A00() >= v2)
  {
    v0[10] = v0[25];
    OUTLINED_FUNCTION_5_26();
    if ((sub_237EF8EC0() & 1) != 0 || *(v0[12] + 8) == 1 && (v9 = v0[23], sub_237EF8A00() < v9))
    {
    }

    OUTLINED_FUNCTION_21_15();
    OUTLINED_FUNCTION_15_19();

    __asm { BRAA            X2, X16 }
  }

  OUTLINED_FUNCTION_16_18();
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_8_26(v3);
  *v2 = v4;
  OUTLINED_FUNCTION_2_33();
  OUTLINED_FUNCTION_15_19();

  return AugmentationSequence.AsyncIterator.next()(v5, v6);
}

uint64_t sub_237D02EE8()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 216) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237D02FE4()
{
  v1 = v0[19];
  v2 = v0[16];
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    (*(v0[18] + 8))(v1, v0[17]);
LABEL_7:
    v0[10] = v0[25];
    OUTLINED_FUNCTION_5_26();
    if ((sub_237EF8EC0() & 1) != 0 || *(v0[12] + 8) == 1 && (v13 = v0[23], sub_237EF8A00() < v13))
    {
    }

    OUTLINED_FUNCTION_21_15();
    OUTLINED_FUNCTION_15_19();

    __asm { BRAA            X2, X16 }
  }

  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[20];
  (*(v5 + 32))(v3, v1, v2);
  (*(v5 + 16))(v4, v3, v2);
  sub_237EF8A20();
  (*(v5 + 8))(v3, v2);
  v6 = v0[23];
  v0[25] = v0[9];
  if (sub_237EF8A00() >= v6)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_16_18();
  v7 = swift_task_alloc();
  OUTLINED_FUNCTION_8_26(v7);
  *v2 = v8;
  OUTLINED_FUNCTION_2_33();
  OUTLINED_FUNCTION_15_19();

  return AugmentationSequence.AsyncIterator.next()(v9, v10);
}

uint64_t sub_237D031D4()
{

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237D03294(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_237D0332C;

  return AugmentationSequence.BatchedSequence.AsyncIterator.next()();
}

uint64_t sub_237D0332C(uint64_t a1)
{
  OUTLINED_FUNCTION_21_0();
  v5 = v4;
  OUTLINED_FUNCTION_11_2();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_5_1();
  *v8 = v7;

  if (!v1)
  {
    **(v5 + 16) = a1;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_237D0342C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = swift_task_alloc();
  *(v6 + 32) = v12;
  *v12 = v6;
  v12[1] = sub_237D03500;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6);
}

uint64_t sub_237D03500()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;

  if (v0)
  {
    **(v3 + 24) = *(v3 + 16);
  }

  OUTLINED_FUNCTION_3_0();

  return v7();
}

uint64_t sub_237D035F4(void *a1)
{
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      result = type metadata accessor for RandomNumberGeneratorReference(319, a1[4], a1[8], v4);
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_237D036A0(uint64_t result, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v6)
  {
    v10 = *(*(v5 - 8) + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v8 + 80);
  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v5 - 8) + 64) + v11;
  v14 = *(*(v7 - 8) + 64) + 7;
  if (v12 >= a2)
  {
LABEL_28:
    if (v6 != v12)
    {
      result = (v13 + result) & ~v11;
      if (v9 != v12)
      {
        v24 = *((v14 + result) & 0xFFFFFFFFFFFFFFF8);
        if (v24 >= 0xFFFFFFFF)
        {
          LODWORD(v24) = -1;
        }

        return (v24 + 1);
      }

      v6 = v9;
      v5 = v7;
    }

    return __swift_getEnumTagSinglePayload(result, v6, v5);
  }

  v15 = ((v14 + (v13 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v16 = a2 - v12;
  v17 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v18 = 2;
  }

  else
  {
    v18 = v16 + 1;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  switch(v20)
  {
    case 1:
      v21 = *(result + v15);
      if (!v21)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    case 2:
      v21 = *(result + v15);
      if (!v21)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    case 3:
      __break(1u);
      return result;
    case 4:
      v21 = *(result + v15);
      if (!v21)
      {
        goto LABEL_28;
      }

LABEL_25:
      v22 = v21 - 1;
      if (v17)
      {
        v22 = 0;
        v23 = *result;
      }

      else
      {
        v23 = 0;
      }

      result = v12 + (v23 | v22) + 1;
      break;
    default:
      goto LABEL_28;
  }

  return result;
}

void sub_237D03864(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 24);
  v8 = *(*(v7 - 8) + 84);
  v9 = *(a4 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v8)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = v14 & ~v13;
  v16 = *(*(v9 - 8) + 64) + 7;
  v17 = ((v16 + v15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v12 >= a3)
  {
    v21 = 0;
  }

  else
  {
    v18 = a3 - v12;
    if (((v16 + v15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v19 = v18 + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }
  }

  if (a2 <= v12)
  {
    switch(v21)
    {
      case 1:
        a1[v17] = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        return;
      case 2:
        *&a1[v17] = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        return;
      case 3:
LABEL_47:
        __break(1u);
        return;
      case 4:
        *&a1[v17] = 0;
        goto LABEL_33;
      default:
LABEL_33:
        if (!a2)
        {
          return;
        }

LABEL_34:
        if (v8 == v12)
        {
          goto LABEL_37;
        }

        a1 = (&a1[v14] & ~v13);
        if (v11 == v12)
        {
          v8 = v11;
          v7 = v9;
LABEL_37:

          __swift_storeEnumTagSinglePayload(a1, a2, v8, v7);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v24 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v24 = (a2 - 1);
          }

          *(&a1[v16] & 0xFFFFFFFFFFFFFFF8) = v24;
        }

        break;
    }
  }

  else
  {
    if (((v16 + v15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v22 = a2 - v12;
    }

    else
    {
      v22 = 1;
    }

    if (((v16 + v15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v23 = ~v12 + a2;
      bzero(a1, ((v16 + v15) & 0xFFFFFFFFFFFFFFF8) + 8);
      *v6 = v23;
    }

    switch(v21)
    {
      case 1:
        *(v6 + v17) = v22;
        break;
      case 2:
        *(v6 + v17) = v22;
        break;
      case 3:
        goto LABEL_47;
      case 4:
        *(v6 + v17) = v22;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_237D03AB8(void *a1)
{
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for RandomNumberGeneratorReference(319, a1[4], a1[8], v3);
    if (v5 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      result = sub_237EF90F0();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_237D03B84(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = a3[3];
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  if (v7 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v7;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v6 + 64);
  v15 = *(v9 + 80);
  v16 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!v10)
  {
    ++v16;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v13)
  {
    goto LABEL_30;
  }

  v17 = v16 + ((v15 + ((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v15);
  v18 = 8 * v17;
  if (v17 <= 3)
  {
    v21 = ((a2 - v13 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v21))
    {
      v19 = *(a1 + v17);
      if (!v19)
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }

    if (v21 > 0xFF)
    {
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }

    if (v21 < 2)
    {
LABEL_30:
      if (v7 == v13)
      {

        return __swift_getEnumTagSinglePayload(a1, v7, v5);
      }

      else
      {
        v23 = ((a1 + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
        if ((v12 & 0x80000000) != 0)
        {
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload((v23 + v15 + 8) & ~v15, v10, AssociatedTypeWitness);
          if (EnumTagSinglePayload >= 2)
          {
            return EnumTagSinglePayload - 1;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          v24 = *v23;
          if (v24 >= 0xFFFFFFFF)
          {
            LODWORD(v24) = -1;
          }

          return (v24 + 1);
        }
      }
    }
  }

  v19 = *(a1 + v17);
  if (!*(a1 + v17))
  {
    goto LABEL_30;
  }

LABEL_22:
  v22 = (v19 - 1) << v18;
  if (v17 > 3)
  {
    v22 = 0;
  }

  if (v17)
  {
    if (v17 > 3)
    {
      LODWORD(v17) = 4;
    }

    switch(v17)
    {
      case 2:
        LODWORD(v17) = *a1;
        break;
      case 3:
        LODWORD(v17) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v17) = *a1;
        break;
      default:
        LODWORD(v17) = *a1;
        break;
    }
  }

  return v13 + (v17 | v22) + 1;
}

void sub_237D03E14(_BYTE *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v7 = a4[3];
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = 0;
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  if (v9 > v14)
  {
    v14 = v9;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v8 + 64);
  v17 = *(v12 + 80);
  v18 = (v17 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v17;
  v19 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!v13)
  {
    ++v19;
  }

  v20 = v18 + v19;
  v21 = 8 * (v18 + v19);
  if (a3 > v15)
  {
    if (v20 <= 3)
    {
      v22 = ((a3 - v15 + ~(-1 << v21)) >> v21) + 1;
      if (HIWORD(v22))
      {
        v11 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v11 = v23;
        }

        else
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v11 = 1;
    }
  }

  if (v15 >= a2)
  {
    switch(v11)
    {
      case 1:
        a1[v20] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        return;
      case 2:
        *&a1[v20] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        return;
      case 3:
LABEL_53:
        __break(1u);
        return;
      case 4:
        *&a1[v20] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (!a2)
        {
          return;
        }

LABEL_33:
        if (v9 == v15)
        {
          v27 = a1;
          v28 = a2;
          v13 = v9;
          AssociatedTypeWitness = v7;
        }

        else
        {
          v29 = (&a1[v16 + 7] & 0xFFFFFFFFFFFFFFF8);
          if ((v14 & 0x80000000) == 0)
          {
            if ((a2 & 0x80000000) != 0)
            {
              v30 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v30 = (a2 - 1);
            }

            *v29 = v30;
            return;
          }

          v27 = ((v29 + v17 + 8) & ~v17);
          v28 = (a2 + 1);
        }

        __swift_storeEnumTagSinglePayload(v27, v28, v13, AssociatedTypeWitness);
        break;
    }
  }

  else
  {
    v24 = ~v15 + a2;
    if (v20 < 4)
    {
      v25 = (v24 >> v21) + 1;
      if (v20)
      {
        v26 = v24 & ~(-1 << v21);
        bzero(a1, v20);
        if (v20 == 3)
        {
          *a1 = v26;
          a1[2] = BYTE2(v26);
        }

        else if (v20 == 2)
        {
          *a1 = v26;
        }

        else
        {
          *a1 = v24;
        }
      }
    }

    else
    {
      bzero(a1, v20);
      *a1 = v24;
      v25 = 1;
    }

    switch(v11)
    {
      case 1:
        a1[v20] = v25;
        break;
      case 2:
        *&a1[v20] = v25;
        break;
      case 3:
        goto LABEL_53;
      case 4:
        *&a1[v20] = v25;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_237D04138(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = *(v6 + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v6 + 80);
  v13 = *(v9 + 80);
  if (v11 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v11;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = v12 & 0xF8 | v13 | 7;
  v16 = *(*(v5 - 8) + 64) + v13;
  v17 = *(*(v8 - 8) + 64) + 7;
  v18 = a2 - v14;
  if (a2 <= v14)
  {
    goto LABEL_25;
  }

  v19 = ((v15 + 9) & ~v15) + ((v17 + (v16 & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v20 = 8 * v19;
  if (v19 > 3)
  {
    goto LABEL_10;
  }

  v23 = ((v18 + ~(-1 << v20)) >> v20) + 1;
  if (HIWORD(v23))
  {
    v21 = *(a1 + v19);
    if (v21)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v23 <= 0xFF)
    {
      if (v23 < 2)
      {
        goto LABEL_25;
      }

LABEL_10:
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_25;
      }

LABEL_18:
      v24 = (v21 - 1) << v20;
      if (v19 > 3)
      {
        v24 = 0;
      }

      if (((v15 + 9) & ~v15) + ((v17 + (v16 & ~v13)) & 0xFFFFFFF8) == -8)
      {
        v25 = 0;
      }

      else
      {
        v25 = *a1;
      }

      return v14 + (v25 | v24) + 1;
    }

    v21 = *(a1 + v19);
    if (*(a1 + v19))
    {
      goto LABEL_18;
    }
  }

LABEL_25:
  v26 = (a1 + v15 + 9) & ~v15;
  if (v7 == v14)
  {
    return __swift_getEnumTagSinglePayload(v26, v7, v5);
  }

  v26 = (v16 + v26) & ~v13;
  if (v10 == v14)
  {
    v7 = v10;
    v5 = v8;
    return __swift_getEnumTagSinglePayload(v26, v7, v5);
  }

  v27 = *((v17 + v26) & 0xFFFFFFFFFFFFFFF8);
  if (v27 >= 0xFFFFFFFF)
  {
    LODWORD(v27) = -1;
  }

  return (v27 + 1);
}

void sub_237D0431C(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(a4 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12 <= v9)
  {
    v13 = *(v8 + 84);
  }

  else
  {
    v13 = *(v11 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  v14 = *(v11 + 80);
  v15 = *(v8 + 80) & 0xF8 | v14 | 7;
  v16 = (v15 + 9) & ~v15;
  v17 = *(*(v7 - 8) + 64) + v14;
  v18 = v17 & ~v14;
  v19 = *(*(v10 - 8) + 64) + 7;
  v20 = v16 + ((v19 + v18) & 0xFFFFFFFFFFFFFFF8) + 8;
  v21 = 8 * v20;
  v22 = a3 >= v13;
  v23 = a3 - v13;
  if (v23 != 0 && v22)
  {
    if (v20 <= 3)
    {
      v28 = ((v23 + ~(-1 << v21)) >> v21) + 1;
      if (HIWORD(v28))
      {
        v24 = 4;
      }

      else
      {
        if (v28 < 0x100)
        {
          v29 = 1;
        }

        else
        {
          v29 = 2;
        }

        if (v28 >= 2)
        {
          v24 = v29;
        }

        else
        {
          v24 = 0;
        }
      }
    }

    else
    {
      v24 = 1;
    }
  }

  else
  {
    v24 = 0;
  }

  if (v13 < a2)
  {
    v25 = ~v13 + a2;
    if (v20 <= 3)
    {
      v26 = (v25 >> v21) + 1;
      if (v16 + ((v19 + v18) & 0xFFFFFFF8) == -8)
      {
        goto LABEL_26;
      }

      v25 &= ~(-1 << v21);
    }

    else
    {
      v26 = 1;
    }

    bzero(a1, v16 + ((v19 + v18) & 0xFFFFFFFFFFFFFFF8) + 8);
    *a1 = v25;
LABEL_26:
    switch(v24)
    {
      case 1:
        a1[v20] = v26;
        break;
      case 2:
        *&a1[v20] = v26;
        break;
      case 3:
        goto LABEL_46;
      case 4:
        *&a1[v20] = v26;
        break;
      default:
        return;
    }

    return;
  }

  v27 = ~v14;
  switch(v24)
  {
    case 1:
      a1[v20] = 0;
      if (a2)
      {
        goto LABEL_30;
      }

      return;
    case 2:
      *&a1[v20] = 0;
      if (a2)
      {
        goto LABEL_30;
      }

      return;
    case 3:
LABEL_46:
      __break(1u);
      return;
    case 4:
      *&a1[v20] = 0;
      goto LABEL_29;
    default:
LABEL_29:
      if (!a2)
      {
        return;
      }

LABEL_30:
      v30 = &a1[v15 + 9] & ~v15;
      if (v9 == v13)
      {
        goto LABEL_33;
      }

      v30 = (v17 + v30) & v27;
      if (v12 == v13)
      {
        v9 = v12;
        v7 = v10;
LABEL_33:

        __swift_storeEnumTagSinglePayload(v30, a2, v9, v7);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v31 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v31 = (a2 - 1);
        }

        *((v19 + v30) & 0xFFFFFFFFFFFFFFF8) = v31;
      }

      break;
  }
}

uint64_t sub_237D04604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, _OWORD *))
{
  v10 = 0;
  v12 = MEMORY[0x277D83B88];
  v13 = MEMORY[0x277D839B0];
  v4 = *(a1 + 64);
  v5 = *(a1 + 32);
  v8[0] = *(a1 + 16);
  v8[1] = v5;
  v8[2] = *(a1 + 48);
  v9 = v4;
  result = (a4)(319, v8, a3);
  if (v7 <= 0x3F)
  {
    v11 = 0;
    v14 = result;
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_237D046A8(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = a3[3];
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  if (v7 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v7;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v9 + 80);
  if (v10)
  {
    v15 = -2;
  }

  else
  {
    v15 = -1;
  }

  if (!a2)
  {
    return 0;
  }

  v16 = AssociatedTypeWitness;
  v17 = *(v6 + 80) & 0xF8 | v14 | 7;
  v18 = *(v6 + 64) + 7;
  if (a2 <= v13)
  {
    goto LABEL_33;
  }

  v19 = v15 + *(*(AssociatedTypeWitness - 8) + 64) - ((-9 - (v18 & 0xFFFFFFFFFFFFFFF8) - v14) | v14) - ((-10 - v17) | v17);
  v20 = 8 * v19;
  if (v19 <= 3)
  {
    v23 = ((a2 - v13 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v23))
    {
      v21 = *(a1 + v19);
      if (!v21)
      {
        goto LABEL_33;
      }

      goto LABEL_23;
    }

    if (v23 > 0xFF)
    {
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_33;
      }

      goto LABEL_23;
    }

    if (v23 < 2)
    {
LABEL_33:
      v27 = (a1 + v17 + 9) & ~v17;
      if (v7 == v13)
      {

        return __swift_getEnumTagSinglePayload(v27, v7, v5);
      }

      else
      {
        v28 = ((v18 + v27) & 0xFFFFFFFFFFFFFFF8);
        if ((v12 & 0x80000000) != 0)
        {
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload((v28 + v14 + 8) & ~v14, v10, v16);
          if (EnumTagSinglePayload >= 2)
          {
            return EnumTagSinglePayload - 1;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          v29 = *v28;
          if (v29 >= 0xFFFFFFFF)
          {
            LODWORD(v29) = -1;
          }

          return (v29 + 1);
        }
      }
    }
  }

  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_33;
  }

LABEL_23:
  v24 = (v21 - 1) << v20;
  if (v19 > 3)
  {
    v24 = 0;
  }

  if (v19)
  {
    if (v19 <= 3)
    {
      v25 = v19;
    }

    else
    {
      v25 = 4;
    }

    switch(v25)
    {
      case 2:
        v26 = *a1;
        break;
      case 3:
        v26 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v26 = *a1;
        break;
      default:
        v26 = *a1;
        break;
    }
  }

  else
  {
    v26 = 0;
  }

  return v13 + (v26 | v24) + 1;
}

void sub_237D04980(_BYTE *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v7 = a4[3];
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = 0;
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  if (v9 > v14)
  {
    v14 = v9;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v12 + 80);
  v17 = *(v8 + 80) & 0xF8 | v16 | 7;
  v18 = *(v8 + 64) + 7;
  v19 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!v13)
  {
    ++v19;
  }

  v20 = v19 - ((-9 - (v18 & 0xFFFFFFFFFFFFFFF8) - v16) | v16) - ((-10 - v17) | v17) - 2;
  v21 = 8 * v20;
  if (a3 > v15)
  {
    if (v20 <= 3)
    {
      v22 = ((a3 - v15 + ~(-1 << v21)) >> v21) + 1;
      if (HIWORD(v22))
      {
        v11 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v11 = v23;
        }

        else
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v11 = 1;
    }
  }

  if (v15 >= a2)
  {
    switch(v11)
    {
      case 1:
        a1[v20] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        return;
      case 2:
        *&a1[v20] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        return;
      case 3:
LABEL_53:
        __break(1u);
        return;
      case 4:
        *&a1[v20] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (!a2)
        {
          return;
        }

LABEL_33:
        v27 = &a1[v17 + 9] & ~v17;
        if (v9 == v15)
        {
          v28 = a2;
          v13 = v9;
          AssociatedTypeWitness = v7;
        }

        else
        {
          v29 = ((v18 + v27) & 0xFFFFFFFFFFFFFFF8);
          if ((v14 & 0x80000000) == 0)
          {
            if ((a2 & 0x80000000) != 0)
            {
              v30 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v30 = (a2 - 1);
            }

            *v29 = v30;
            return;
          }

          v27 = (v29 + v16 + 8) & ~v16;
          v28 = (a2 + 1);
        }

        __swift_storeEnumTagSinglePayload(v27, v28, v13, AssociatedTypeWitness);
        break;
    }
  }

  else
  {
    v24 = ~v15 + a2;
    if (v20 < 4)
    {
      v25 = (v24 >> v21) + 1;
      if (v20)
      {
        v26 = v24 & ~(-1 << v21);
        bzero(a1, v20);
        if (v20 == 3)
        {
          *a1 = v26;
          a1[2] = BYTE2(v26);
        }

        else if (v20 == 2)
        {
          *a1 = v26;
        }

        else
        {
          *a1 = v24;
        }
      }
    }

    else
    {
      bzero(a1, v20);
      *a1 = v24;
      v25 = 1;
    }

    switch(v11)
    {
      case 1:
        a1[v20] = v25;
        break;
      case 2:
        *&a1[v20] = v25;
        break;
      case 3:
        goto LABEL_53;
      case 4:
        *&a1[v20] = v25;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_237D04CE4(uint64_t a1)
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

uint64_t sub_237D04D78(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_237D04DB8(a1);
  return v2;
}

uint64_t sub_237D04DB8(uint64_t a1)
{
  OUTLINED_FUNCTION_18_18();
  OUTLINED_FUNCTION_22_3();
  (*(v2 + 32))(v1 + v3);
  return v1;
}

uint64_t sub_237D04E24()
{
  swift_beginAccess();
  v0 = sub_237EF83C0();
  swift_endAccess();
  return v0;
}

uint64_t sub_237D04EBC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_18_18();
  OUTLINED_FUNCTION_22_3();
  (*(v3 + 8))(v2 + v4);
  return v2;
}

uint64_t sub_237D04F24(uint64_t a1, uint64_t a2)
{
  sub_237D04EBC(a1, a2);

  return swift_deallocClassInstance();
}

uint64_t OUTLINED_FUNCTION_5_26()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_8_26(uint64_t a1)
{
  v3[26] = a1;
  v6 = v5[4];
  v7 = v5[6];
  v8 = v5[8];
  v3[2] = v5[2];
  v3[3] = v2;
  v3[4] = v6;
  v3[5] = v1;
  v3[6] = v7;
  v3[7] = v4;
  v3[8] = v8;
  return type metadata accessor for AugmentationSequence.AsyncIterator(0, (v3 + 2));
}

id sub_237D0510C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_237EF8560();
  v2 = [v0 BOOLForKey_];

  return v2;
}

uint64_t sub_237D05198(uint64_t a1, uint64_t a2)
{
  v4 = sub_237EF5C70();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1;
  v17 = a2;
  sub_237EF5C60();
  sub_237D05400();
  v8 = sub_237EF91B0();
  result = (*(v5 + 8))(v7, v4);
  if (*(v8 + 16))
  {
    sub_237EF8260();

    v16 = a1;
    v17 = a2;
    sub_237EF8260();
    MEMORY[0x2383E0710](0x6F706D6F43202D20, 0xED000073746E656ELL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0250, qword_237F0AA80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_237F08A50;
    *(inited + 32) = 0x6574616C706D6554;
    *(inited + 40) = 0xE800000000000000;
    v11 = sub_237EF8560();

    *(inited + 48) = v11;
    *(inited + 56) = 0x656C646E7542;
    *(inited + 64) = 0xE600000000000000;
    sub_237D055C8();
    v12 = sub_237EF8560();

    *(inited + 72) = v12;
    *(inited + 80) = 0x6574616C706D6554;
    *(inited + 88) = 0xEF65736F62726556;
    v13 = sub_237EF8560();

    *(inited + 96) = v13;
    sub_237D05624();
    v14 = sub_237EF8230();
    LOBYTE(inited) = sub_237D05454(0xD000000000000020, 0x8000000237EFD4A0, v14);

    return inited & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_237D05400()
{
  result = qword_280C8E210;
  if (!qword_280C8E210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C8E210);
  }

  return result;
}

uint64_t sub_237D05454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_237EF8560();
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v9[4] = sub_237D05668;
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_237D0553C;
  v9[3] = &block_descriptor_1;
  v6 = _Block_copy(v9);
  sub_237EF8260();

  v7 = AnalyticsSendEventLazy();
  _Block_release(v6);

  return v7;
}

id sub_237D0553C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_237D05624();
    v4 = sub_237EF8200();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_237D055C8()
{
  v0 = [objc_opt_self() mainBundle];
  result = sub_237D05688(v0);
  if (!v2)
  {
    return 0xD000000000000014;
  }

  return result;
}

unint64_t sub_237D05624()
{
  result = qword_280C8E1F8;
  if (!qword_280C8E1F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C8E1F8);
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_237D05688(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_237EF8590();

  return v3;
}

void TemporalEstimator.fitted<A>(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_0_23(a5);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_2_21(v5);
  *v6 = v7;
  v6[1] = sub_237C5FFA4;
  OUTLINED_FUNCTION_1_31();

  __asm { BRAA            X8, X16 }
}

void UpdatableTemporalEstimator.update<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_0_23(a5);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_2_21(v5);
  *v6 = v7;
  v6[1] = sub_237C606BC;
  OUTLINED_FUNCTION_1_31();

  __asm { BRAA            X8, X16 }
}

uint64_t dispatch thunk of TemporalEstimator.fitted<A>(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_0_23(a9);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_2_21(v9);
  *v10 = v11;
  v10[1] = sub_237C5FFA4;
  OUTLINED_FUNCTION_2_34();

  return v13(v12);
}

uint64_t dispatch thunk of UpdatableTemporalEstimator.update<A>(_:with:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_0_23(a9);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_2_21(v9);
  *v10 = v11;
  v10[1] = sub_237C606BC;
  OUTLINED_FUNCTION_2_34();

  return v13(v12);
}

uint64_t DatasetError.debugDescription.getter()
{
  v1 = v0;
  v2 = sub_237EF5EF0();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DatasetError(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237D061BC(v1, v10);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v38 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFA08, &qword_237F0AB40) + 48)];
      v29 = *v38;
      v28 = *(v38 + 1);
      v39 = OUTLINED_FUNCTION_1_32();
      v40(v39);
      OUTLINED_FUNCTION_3_34();
      sub_237EF9330();

      OUTLINED_FUNCTION_7_23();
      v49 = v42 | 0xE;
      v50 = v41;
      OUTLINED_FUNCTION_0_24();
      v45 = sub_237D068E4(v43, v44, MEMORY[0x277CC9290]);
      v46 = OUTLINED_FUNCTION_5_27(v45);
      MEMORY[0x2383E0710](v46);

      v36 = 2112039;
      v37 = 0xE300000000000000;
      goto LABEL_7;
    case 2u:
      v21 = OUTLINED_FUNCTION_1_32();
      v22(v21);
      OUTLINED_FUNCTION_3_34();
      sub_237EF9330();

      OUTLINED_FUNCTION_2_35();
      OUTLINED_FUNCTION_0_24();
      v25 = sub_237D068E4(v23, v24, MEMORY[0x277CC9290]);
      v26 = OUTLINED_FUNCTION_5_27(v25);
      MEMORY[0x2383E0710](v26);

      v20 = 0x8000000237EFD560;
      v19 = 0xD000000000000010;
      goto LABEL_4;
    case 3u:
      v27 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFA08, &qword_237F0AB40) + 48)];
      v29 = *v27;
      v28 = *(v27 + 1);
      v30 = OUTLINED_FUNCTION_1_32();
      v31(v30);
      OUTLINED_FUNCTION_3_34();
      sub_237EF9330();

      OUTLINED_FUNCTION_2_35();
      OUTLINED_FUNCTION_0_24();
      v34 = sub_237D068E4(v32, v33, MEMORY[0x277CC9290]);
      v35 = OUTLINED_FUNCTION_5_27(v34);
      MEMORY[0x2383E0710](v35);

      v36 = 0xD00000000000001DLL;
      v37 = 0x8000000237EFD540;
LABEL_7:
      MEMORY[0x2383E0710](v36, v37);
      MEMORY[0x2383E0710](v29, v28);

      goto LABEL_8;
    default:
      v11 = OUTLINED_FUNCTION_1_32();
      v12(v11);
      OUTLINED_FUNCTION_3_34();
      sub_237EF9330();

      OUTLINED_FUNCTION_7_23();
      v49 = v14 | 3;
      v50 = v13;
      OUTLINED_FUNCTION_0_24();
      v17 = sub_237D068E4(v15, v16, MEMORY[0x277CC9290]);
      v18 = OUTLINED_FUNCTION_5_27(v17);
      MEMORY[0x2383E0710](v18);

      v19 = 0x73696D2073692027;
      v20 = 0xED00002E676E6973;
LABEL_4:
      MEMORY[0x2383E0710](v19, v20);
LABEL_8:
      v47 = v49;
      (*(v4 + 8))(v7, v2);
      return v47;
  }
}

uint64_t type metadata accessor for DatasetError(uint64_t a1)
{
  result = qword_27DEB0260;
  if (!qword_27DEB0260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237D061BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatasetError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static DatasetError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v62 = a2;
  sub_237EF5EF0();
  OUTLINED_FUNCTION_1();
  v63 = v3;
  v64 = v4;
  MEMORY[0x28223BE20](v3);
  v61 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v59 - v7;
  MEMORY[0x28223BE20](v9);
  v60 = &v59 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v59 - v12;
  v14 = type metadata accessor for DatasetError(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v59 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v59 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v59 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0258, &qword_237F0AB48);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v59 - v27;
  v30 = &v59 + *(v29 + 56) - v27;
  sub_237D061BC(a1, &v59 - v27);
  sub_237D061BC(v62, v30);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_237D061BC(v28, v22);
      v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFA08, &qword_237F0AB40) + 48);
      v50 = *&v22[v49];
      v51 = *&v22[v49 + 8];
      if (OUTLINED_FUNCTION_8_27() != 1)
      {
        v16 = v22;
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_4_30();
      v42 = v60;
      v52(v60, v30, v13);
      v53 = sub_237EF5EA0();
      v45 = *(v25 + 1);
      v45(v22, v13);
      if ((v53 & 1) == 0)
      {
        goto LABEL_23;
      }

      if (v50 != v62 || v51 != v49)
      {
        v47 = sub_237EF9D40();

        v48 = v60;
        goto LABEL_21;
      }

      v57 = v60;
      goto LABEL_33;
    case 2u:
      sub_237D061BC(v28, v19);
      if (OUTLINED_FUNCTION_8_27() != 2)
      {
        goto LABEL_6;
      }

      v32 = v63;
      v31 = v64;
      (*(v64 + 32))(v8, v30, v63);
      v33 = sub_237EF5EA0();
      v34 = *(v31 + 8);
      v34(v8, v32);
      v35 = v19;
      v36 = v32;
      goto LABEL_30;
    case 3u:
      sub_237D061BC(v28, v16);
      v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFA08, &qword_237F0AB40) + 48);
      v40 = *&v16[v39];
      v41 = *&v16[v39 + 8];
      if (OUTLINED_FUNCTION_8_27() == 3)
      {
        OUTLINED_FUNCTION_4_30();
        v42 = v61;
        v43(v61, v30, v13);
        v44 = sub_237EF5EA0();
        v45 = *(v25 + 1);
        v45(v16, v13);
        if (v44)
        {
          if (v40 == v62 && v41 == v39)
          {

            v57 = v61;
LABEL_33:
            v45(v57, v13);
            goto LABEL_34;
          }

          v47 = sub_237EF9D40();

          v48 = v61;
LABEL_21:
          v45(v48, v13);
          if (v47)
          {
LABEL_34:
            sub_237D06840(v28);
            v33 = 1;
            return v33 & 1;
          }
        }

        else
        {
LABEL_23:
          v45(v42, v13);
        }

        sub_237D06840(v28);
        goto LABEL_28;
      }

LABEL_26:
      v38 = v63;
      v37 = v64;

      v19 = v16;
LABEL_27:
      (*(v37 + 8))(v19, v38);
      sub_237D067D8(v28);
LABEL_28:
      v33 = 0;
      return v33 & 1;
    default:
      sub_237D061BC(v28, v25);
      if (OUTLINED_FUNCTION_8_27())
      {
        v19 = v25;
LABEL_6:
        v38 = v63;
        v37 = v64;
        goto LABEL_27;
      }

      v56 = v63;
      v55 = v64;
      (*(v64 + 32))(v13, v30, v63);
      v33 = sub_237EF5EA0();
      v34 = *(v55 + 8);
      v34(v13, v56);
      v35 = v25;
      v36 = v56;
LABEL_30:
      v34(v35, v36);
      sub_237D06840(v28);
      return v33 & 1;
  }
}

uint64_t sub_237D067D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0258, &qword_237F0AB48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237D06840(uint64_t a1)
{
  v2 = type metadata accessor for DatasetError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237D068E4(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_237D06940(uint64_t a1)
{
  v1 = sub_237EF5EF0();
  if (v2 <= 0x3F)
  {
    sub_237D069CC(319);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return v1;
}

void sub_237D069CC(uint64_t a1)
{
  if (!qword_27DEB0270[0])
  {
    sub_237EF5EF0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_27DEB0270);
    }
  }
}

uint64_t OUTLINED_FUNCTION_5_27(uint64_t a1)
{

  return sub_237EF9AB0();
}

uint64_t OUTLINED_FUNCTION_8_27()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t Estimator.fitted<A>(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_0_16(a5);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_2_21(v5);
  *v6 = v7;
  v6[1] = sub_237C606BC;
  OUTLINED_FUNCTION_2_36();

  return v8();
}

uint64_t UpdatableEstimator.update<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_0_16(a5);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_2_21(v5);
  *v6 = v7;
  v6[1] = sub_237C5FFA4;
  OUTLINED_FUNCTION_2_36();

  return v8();
}

uint64_t dispatch thunk of Estimator.fitted<A>(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_0_16(a8);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_2_21(v8);
  *v9 = v10;
  v9[1] = sub_237C606BC;
  OUTLINED_FUNCTION_1_33();

  return v11();
}

uint64_t dispatch thunk of UpdatableEstimator.update<A>(_:with:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_0_16(a8);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_2_21(v8);
  *v9 = v10;
  v9[1] = sub_237C5FFA4;
  OUTLINED_FUNCTION_1_33();

  return v11();
}

void *sub_237D070B8@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a3;
  a5[2] = a4;
  memset(v8, 0, 73);
  sub_237D09E34(v8);
  return memcpy(a5 + 3, a2, 0x49uLL);
}

uint64_t sub_237D07114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  *(a5 + 81) = 0u;
  *(a5 + 72) = 0u;
  *(a5 + 56) = 0u;
  *(a5 + 40) = 0u;
  *(a5 + 24) = 0u;
  (*(v15 + 16))(&v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v17);
  v18 = sub_237EF8A90();
  result = (*(v15 + 8))(a1, a4);
  *a5 = v18;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  return result;
}

uint64_t LinearSupportVectorClassifierModel.applied(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[19] = a4;
  v6[20] = a5;
  v6[17] = a2;
  v6[18] = a3;
  v6[16] = a1;
  memcpy(v6 + 2, v5, 0x61uLL);

  return MEMORY[0x2822009F8](sub_237D072EC, 0, 0);
}

uint64_t sub_237D072EC()
{
  v30 = v0;
  v29 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 160);
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  OUTLINED_FUNCTION_43_0();
  sub_237EF7E90();
  v4 = *(sub_237EF7E20() + 16);

  v5 = sub_237EF7E20();
  v6 = v5;
  if (v4 == 1)
  {
    if (!*(v5 + 16))
    {

      __break(1u);
      return result;
    }

    v7 = *(v5 + 32);

    v9 = *(v0 + 16);
    v10 = *(v9 + 16);
    if (v7 == v10 - 1)
    {
      if (v10 >> 60)
      {
        __break(1u);
      }

      if ((8 * v10) <= 1024 || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), isStackAllocationSafe))
      {
        MEMORY[0x28223BE20](isStackAllocationSafe);
        sub_237D076F0(&v26 - v11, v10, (v0 + 16), v2, v12[3], &v27, v3, v12[5], v12[6], v12[7], v12[8], v12[9]);
        **(v0 + 128) = v27;
      }

      else
      {
        v23 = *(v0 + 160);
        v24 = *(v0 + 128);
        v25 = swift_slowAlloc();
        sub_237D076F0(v25, v10, (v0 + 16), v2, v23[3], v24, v3, v23[5], v23[6], v23[7], v23[8], v23[9]);
        MEMORY[0x2383E2DF0](v25, -1, -1);
      }

      v21 = *(v0 + 8);
      goto LABEL_10;
    }

    v14 = sub_237EF7E20();
    sub_237EF9330();

    v27 = 0xD00000000000001ELL;
    v28 = 0x8000000237EFD610;
    *(v0 + 120) = *(v9 + 16) - 1;
    v15 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v15);

    MEMORY[0x2383E0710](0x6F6720747562205DLL, 0xEA00000000002074);
    sub_237EF7E20();
    v16 = MEMORY[0x2383E0A10]();
    v18 = v17;

    MEMORY[0x2383E0710](v16, v18);

    MEMORY[0x2383E0710](46, 0xE100000000000000);
    v19 = v27;
    v20 = v28;
    sub_237C84150();
    swift_allocError();
    *v13 = v14;
    *(v13 + 8) = v19;
    *(v13 + 16) = v20;
  }

  else
  {
    sub_237C84150();
    swift_allocError();
    *v13 = v6;
    *(v13 + 8) = 0xD000000000000024;
    *(v13 + 16) = 0x8000000237EFD5E0;
  }

  *(v13 + 24) = 0;
  *(v13 + 32) = 6;
  swift_willThrow();
  v21 = *(v0 + 8);
LABEL_10:

  return v21();
}

uint64_t sub_237D076F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a4@<X3>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *x8_0@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_237EF7E90();
  result = sub_237EF7DF0();
  if (a1)
  {
    memcpy(__dst, a4, sizeof(__dst));
    v23[0] = a7;
    v23[1] = a8;
    v23[2] = a9;
    v23[3] = a10;
    v23[4] = a11;
    v23[5] = a12;
    v23[6] = a13;
    v23[7] = a14;
    v19 = type metadata accessor for LinearSupportVectorClassifierModel(0, v23);
    return sub_237D079BC(a1, a2, 1, v19, x8_0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_237D07810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = a1;
  v15 = *(a8 - 8);
  *&v16 = MEMORY[0x28223BE20](a1);
  v18 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *v19;
  v35[0] = v21;
  v35[1] = v22;
  v35[2] = v23;
  v35[3] = a11;
  v36 = v16;
  v37 = v25;
  v38 = v24;
  type metadata accessor for LinearSupportVectorClassifierModel(0, v35);
  v26 = *(v20 + 16);
  if (v26)
  {
    v27 = v26 - 1;
    if (v27)
    {
      v32[0] = v20;
      v32[1] = v11;
      v28 = 0;
      v39 = a6;
      v33 = *(v15 + 16);
      v34 = a11;
      v29 = *(v15 + 72);
      do
      {
        v30 = v27;
        v33(v18, v14, a8);
        sub_237C65348();
        sub_237EF8190();
        v27 = v30;
        *(v39 + 8 * v28) = v35[0];
        v14 += v29;
        ++v28;
      }

      while (v30 != v28);
      v31 = *(v32[0] + 16);
      a6 = v39;
    }

    else
    {
      v31 = 1;
    }

    *(a6 + 8 * v31 - 8) = 0x3FF0000000000000;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_237D079BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X5>, uint64_t *a5@<X8>)
{
  v95 = a3;
  v80 = a5;
  __dst[13] = *MEMORY[0x277D85DE8];
  v9 = a4[3];
  v10 = a4[9];
  v11 = OUTLINED_FUNCTION_43_0();
  v89 = type metadata accessor for Classification(v11, v12, v10, v13);
  OUTLINED_FUNCTION_1();
  v94 = v14;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_19();
  v93 = v16;
  OUTLINED_FUNCTION_43_0();
  v88 = sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  v87 = v17;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v18);
  v20 = &v79 - v19;
  v92 = *(v9 - 8);
  MEMORY[0x28223BE20](v21);
  v86 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v91 = &v79 - v24;
  memcpy(__dst, v5, 0x61uLL);
  v26 = __dst[1];
  v25 = __dst[2];
  v27 = a4[6];
  v28 = sub_237E5E170(__dst[1], __dst[2], v9, v27, v10);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
    goto LABEL_24;
  }

  v99 = sub_237E613EC(v30, 0.0);
  v31 = *(__dst[0] + 16);
  v32 = a4[2];
  v33 = a4[4];
  v34 = a4[5];
  v35 = a4[7];
  v36 = a4[8];
  v90 = v10;
  v77 = v36;
  v78 = v10;
  v85 = v35;
  v75 = v27;
  v76 = v35;
  v82 = v34;
  v74 = v34;
  v83 = v33;
  v72 = v9;
  v73 = v33;
  v81 = v32;
  v71 = v32;
  v37 = v96;
  sub_237D089B0(__dst[0] + 32, v31, 1, __dst, &v99, a1, a2, v95);
  v96 = v37;
  v38 = v99;
  v39 = *(v99 + 16);
  v84 = v36;
  if (v39)
  {
    v40 = sub_237EF89B0();
    *(v40 + 16) = v39;
    if (!(v39 >> 31))
    {
      v41 = v40;
      goto LABEL_6;
    }

LABEL_24:
    __break(1u);
  }

  v41 = MEMORY[0x277D84F90];
LABEL_6:
  v42 = (v41 + 32);
  v98[0] = v39;
  vvexp((v41 + 32), (v38 + 32), v98);
  *(v41 + 16) = v39;
  if (v39)
  {
    v43 = 0.0;
    do
    {
      v44 = *v42++;
      v43 = v43 + v44;
      --v39;
    }

    while (v39);
    v45 = v43 + 1.0;
  }

  else
  {
    v45 = 1.0;
  }

  v46 = static DenseVector<>./ infix(_:_:)(v41, v45);

  v47 = *(v46 + 16);
  if (v47)
  {
    v48 = (v46 + 32);
    v49 = 0.0;
    v50 = v93;
    v51 = v94;
    do
    {
      v52 = *v48++;
      v49 = v49 + v52;
      --v47;
    }

    while (v47);
  }

  else
  {
    v49 = 0.0;
    v50 = v93;
    v51 = v94;
  }

  v53 = v26;
  v54 = v90;
  sub_237E5E174(0, v53, v25, v9, v20);
  if (__swift_getEnumTagSinglePayload(v20, 1, v9) == 1)
  {

    (*(v87 + 8))(v20, v88);
    sub_237C84150();
    swift_allocError();
    *v55 = 0xD000000000000025;
    *(v55 + 8) = 0x8000000237EFD630;
    *(v55 + 16) = xmmword_237F0ACB0;
    *(v55 + 32) = 3;
    swift_willThrow();
  }

  else
  {
    v95 = v38;
    v56 = v92;
    v57 = v91;
    (*(v92 + 32))(v91, v20, v9);
    v58 = *(v56 + 16);
    v59 = v86;
    v58(v86, v57, v9);
    v60 = 1.0 - v49;
    Classification.init(label:probability:)(v59, v9, v54, v50, v60);
    v61 = v89;
    sub_237EF9AC0();
    swift_allocObject();
    v62 = sub_237EF8940();
    (v51[2])(v63, v50, v61);
    sub_237D3C4BC(v62, v61);
    v94 = &v79;
    *v98 = v64;
    MEMORY[0x28223BE20](v64);
    *(&v79 - 10) = v81;
    *(&v79 - 9) = v9;
    v71 = v83;
    v72 = v82;
    v73 = v27;
    v74 = v85;
    v75 = v84;
    v76 = v54;
    v77 = __dst;
    v65 = v54;
    v66 = sub_237EF8A60();
    v67 = sub_237C65348();
    v68 = v96;
    DenseVector.withUnsafeVectorPointer<A>(_:)(sub_237D09EE0, (&v79 - 12), v46, MEMORY[0x277D839F8], v66, v67);
    if (v68)
    {
    }

    else
    {

      swift_getWitnessTable();
      sub_237EF8A10();
      v97 = *v98;
      WitnessTable = swift_getWitnessTable();
      ClassificationDistribution.init<A>(_:)(&v97, v9, v66, v65, WitnessTable, v80);
    }

    (v51[1])(v50, v61);
    (*(v92 + 8))(v91, v9);
  }
}

void sub_237D080D0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v35 = a3;
  v34 = a2;
  v20 = sub_237E5E170(*(a4 + 8), *(a4 + 16), a6, a10, a13);
  if (__OFSUB__(v20, 1))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v20 - 1 < 0)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v32 = a9;
  v33 = &v31;
  v37 = 0;
  v38 = v20 - 1;
  MEMORY[0x28223BE20](v20);
  v30[2] = a5;
  v30[3] = a6;
  v30[4] = a7;
  v30[5] = a8;
  v30[6] = a10;
  v30[7] = v21;
  v30[8] = v22;
  v30[9] = a13;
  v30[10] = a4;
  v30[11] = a1;
  v30[12] = v34;
  v30[13] = v35;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEADDA0, &qword_237F0A6B0);
  v25 = type metadata accessor for Classification(0, a6, a13, v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030, &unk_237F063B0);
  v27 = sub_237D09F64();
  v28 = v36;
  sub_237C9339C(sub_237D09F1C, v30, v23, v25, v26, v27);
  if (!v28)
  {
    *v32 = v29;
  }
}

void sub_237D08260(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  v42 = a6;
  v43 = a4;
  v41 = a3;
  v16 = sub_237EF90F0();
  MEMORY[0x28223BE20](v16);
  v18 = v38 - v17;
  v19 = *(a5 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = v38 - v26;
  v28 = *a1;
  v29 = __OFADD__(*a1, 1);
  v30 = *a1 + 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    v39 = v25;
    v40 = v24;
    v38[1] = v12;
    sub_237E5E174(v30, *(a2 + 8), *(a2 + 16), a5, v18);
    if (__swift_getEnumTagSinglePayload(v18, 1, a5) == 1)
    {
      (*(v39 + 8))(v18, v40);
      v44 = v30;
      v31 = sub_237EF9AB0();
      v33 = v32;
      sub_237C84150();
      v34 = swift_allocError();
      *v35 = 0xD000000000000025;
      *(v35 + 8) = 0x8000000237EFD630;
      *(v35 + 16) = v31;
      *(v35 + 24) = v33;
      *(v35 + 32) = 3;
      swift_willThrow();
      *a12 = v34;
      return;
    }

    (*(v19 + 32))(v27, v18, a5);
    (*(v19 + 16))(v22, v27, a5);
    if ((v28 * v43) >> 64 == (v28 * v43) >> 63)
    {
      v36 = *(v41 + 8 * v28 * v43);
      (*(v19 + 8))(v27, a5);
      v37 = v36;
      Classification.init(label:probability:)(v22, a5, a11, v42, v37);
      return;
    }
  }

  __break(1u);
}

void *sub_237D08544(uint64_t a1, void *a2)
{
  v4 = v3;
  result = memcpy(__dst, v2, sizeof(__dst));
  v8 = *(a1 + 8);
  if (v8 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
    if (v8)
    {
      v26 = MEMORY[0x277D84F90];
      sub_237C62DB0(0, v8, 0);
      v10 = 0;
      v9 = v26;
      v20 = a2[3];
      v21 = a2[2];
      v18 = a2[5];
      v19 = a2[4];
      v16 = a2[7];
      v17 = a2[6];
      v12 = a2[8];
      v11 = a2[9];
      while (1)
      {
        v23 = v10;
        sub_237D086A0(&v23, a1, v21, v20, v19, v18, v17, &v24, v16, v12, v11, &v22);
        if (v4)
        {
          break;
        }

        v4 = 0;
        v13 = v24;
        v26 = v9;
        v15 = *(v9 + 16);
        v14 = *(v9 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_237C62DB0(v14 > 1, v15 + 1, 1);
          v9 = v26;
        }

        ++v10;
        *(v9 + 16) = v15 + 1;
        *(v9 + 8 * v15 + 32) = v13;
        if (v8 == v10)
        {
          return v9;
        }
      }
    }

    return v9;
  }

  return result;
}

uint64_t *sub_237D086A0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t **a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v14 = *result;
  if (*(a2 + 32))
  {
    v15 = *a2 + 8 * v14;
    v16 = *(a2 + 24);
  }

  else
  {
    v17 = *(a2 + 24);
    if ((v14 * v17) >> 64 != (v14 * v17) >> 63)
    {
      __break(1u);
      return result;
    }

    v15 = *a2 + 8 * v14 * v17;
    v16 = 1;
  }

  v18 = *(a2 + 16);
  v20[0] = a3;
  v20[1] = a4;
  v20[2] = a5;
  v20[3] = a6;
  v20[4] = a7;
  v20[5] = a9;
  v20[6] = a10;
  v20[7] = a11;
  v19 = type metadata accessor for LinearSupportVectorClassifierModel(0, v20);
  result = sub_237D08778(v15, v18, v16, v19);
  if (v12)
  {
    *a12 = v12;
  }

  else
  {
    *a8 = result;
  }

  return result;
}

uint64_t sub_237D08778(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  __dst[13] = *MEMORY[0x277D85DE8];
  memcpy(__dst, v5, 0x61uLL);
  v10 = sub_237E5E170(__dst[1], __dst[2], a4[3], a4[6], a4[9]);
  v11 = __OFSUB__(v10, 1);
  v12 = v10 - 1;
  if (v11)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  v36 = sub_237E613EC(v12, 0.0);
  sub_237D089B0(__dst[0] + 32, *(__dst[0] + 16), 1, __dst, &v36, a1, a2, a3);
  v13 = v36;
  v14 = *(v36 + 16);
  if (v14)
  {
    v15 = sub_237EF89B0();
    *(v15 + 16) = v14;
    if (v14 >> 31)
    {
      goto LABEL_24;
    }

    v16 = v15;
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  v17 = (v16 + 32);
  v35 = v14;
  vvexp((v16 + 32), (v13 + 32), &v35);
  *(v16 + 16) = v14;
  if (v14)
  {
    v18 = 0.0;
    do
    {
      v19 = *v17++;
      v18 = v18 + v19;
      --v14;
    }

    while (v14);
    v20 = v18 + 1.0;
  }

  else
  {
    v20 = 1.0;
  }

  v21 = static DenseVector<>./ infix(_:_:)(v16, v20);

  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = (v21 + 32);
    v24 = 0.0;
    v25 = (v21 + 32);
    v26 = *(v21 + 16);
    do
    {
      v27 = *v25++;
      v24 = v24 + v27;
      --v26;
    }

    while (v26);
    v28 = 0;
    v29 = 1.0 - v24;
    v30 = 0x7FFFFFFFFFFFFFFDLL;
    v31 = 1;
    while (v30)
    {
      v32 = *v23++;
      v33 = v32;
      if (v29 < v32)
      {
        v28 = v31;
        v29 = v33;
      }

      ++v31;
      --v30;
      if (!--v22)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  v28 = 0;
LABEL_21:

  return v28;
}