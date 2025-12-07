Swift::Void __swiftcall StoreProductManager.removeObserver(subscriptionGroupID:origin:)(Swift::String subscriptionGroupID, StoreKit::StoreKitViewOrigin origin)
{
  OUTLINED_FUNCTION_67();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v139 = type metadata accessor for StoreProductManager.CachedProduct(0);
  OUTLINED_FUNCTION_1_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13();
  v138 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7CFEA0, &qword_1B2587230);
  OUTLINED_FUNCTION_2_2(v15);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v16);
  v137 = &v122 - v17;
  v18 = *v5;
  v19 = OBJC_IVAR____TtC8StoreKit19StoreProductManager_log;
  v20 = sub_1B24D3E10();
  v22 = v21;
  OUTLINED_FUNCTION_278_0(v3 + 120, &v142);
  sub_1B247A6B4(*(v3 + 120), &v144);
  if (v144 == 1)
  {
    v135 = v20;
    sub_1B256615C(&v144, &unk_1EB7D2CD0);
    swift_endAccess();
    OUTLINED_FUNCTION_338();
    sub_1B256E4FC();
    MEMORY[0x1B2749D50](0xD000000000000015, 0x80000001B2592950);
    *&v144 = v9;
    *(&v144 + 1) = v7;
    sub_1B256E78C();
    MEMORY[0x1B2749D50](0xD000000000000022, 0x80000001B2592970);
    v23 = sub_1B256E09C();

    v24 = sub_1B256D5CC();

    if (os_log_type_enabled(v24, v23))
    {
      OUTLINED_FUNCTION_21_3();
      *&v144 = OUTLINED_FUNCTION_126_1();
      OUTLINED_FUNCTION_51_6(4.8752e-34);
      OUTLINED_FUNCTION_480(v25);
      OUTLINED_FUNCTION_94_0();
      sub_1B2519814(v142, v143, &v144);
      OUTLINED_FUNCTION_120();

      *(v3 + 4) = &v19[v3];
      OUTLINED_FUNCTION_135_2();
      v26 = OUTLINED_FUNCTION_376();
      v29 = sub_1B2519814(v26, v27, v28);

      *(v3 + 14) = v29;
      OUTLINED_FUNCTION_277_0(&dword_1B23EF000, v24, v23, "%{public}s%{public}s");
      OUTLINED_FUNCTION_101_2();
      OUTLINED_FUNCTION_63_0();
      OUTLINED_FUNCTION_22_8();
    }

    else
    {
    }

    goto LABEL_103;
  }

  v140 = v9;
  v136 = v7;
  sub_1B244ADF4(&v144, v145);
  swift_endAccess();
  if (swift_weakLoadStrong())
  {

LABEL_102:
    LOBYTE(v142) = v18;
    sub_1B25415D4(1, v20, v22, &v142);

    sub_1B25629C4(v145);
LABEL_103:
    OUTLINED_FUNCTION_45();
    return;
  }

  v123 = v11;
  v124 = v18;
  OUTLINED_FUNCTION_50_5(v3 + 128, &v144);
  sub_1B256ED3C();
  v135 = v20;
  MEMORY[0x1B274AFC0](1);
  v30 = v136;

  v31 = v140;
  sub_1B256DA7C();
  sub_1B256ED7C();
  OUTLINED_FUNCTION_131_2();
  OUTLINED_FUNCTION_351();
  v134 = v3;
  if (v32)
  {
    while (1)
    {
      OUTLINED_FUNCTION_205_0();
      if (v35)
      {
        OUTLINED_FUNCTION_280_0(v33);
        v35 = v35 && v34 == v30;
        if (v35)
        {
          break;
        }

        OUTLINED_FUNCTION_456();
        if (sub_1B256EB5C())
        {
          break;
        }
      }

      OUTLINED_FUNCTION_293_0();
      if ((v36 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    swift_endAccess();
    v42 = v139;
    if (!v145[0])
    {
      goto LABEL_99;
    }
  }

  else
  {
LABEL_17:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v141 = *(v3 + 128);
    v38 = v141;
    *(v3 + 128) = 0x8000000000000000;
    v39 = v38[2];
    v40 = v38[3];

    if (v40 <= v39)
    {
      v31 = v140;
      v41 = v39 + 1;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_1B2560C10(v41);
      }

      else
      {
        sub_1B2562770(v41);
      }

      v38 = v141;
      sub_1B256ED3C();
      MEMORY[0x1B274AFC0](1);
      sub_1B256DA7C();
      sub_1B256ED7C();
      OUTLINED_FUNCTION_131_2();
      OUTLINED_FUNCTION_351();
      if (v43)
      {
        v3 = 24;
        do
        {
          OUTLINED_FUNCTION_205_0();
          if (v35)
          {
            OUTLINED_FUNCTION_280_0(v44);
            if (v35 && v45 == v30)
            {
              goto LABEL_108;
            }

            OUTLINED_FUNCTION_456();
            if (sub_1B256EB5C())
            {
              goto LABEL_108;
            }
          }

          OUTLINED_FUNCTION_293_0();
        }

        while ((v47 & 1) != 0);
        OUTLINED_FUNCTION_283_0();
      }
    }

    else
    {
      v31 = v140;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1B2561E44();
        v38 = v141;
      }
    }

    *(v38 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v7;
    v48 = v38[6] + 24 * v7;
    *v48 = v31;
    *(v48 + 8) = v30;
    *(v48 + 16) = 1;
    v49 = v38[2];
    v50 = __OFADD__(v49, 1);
    v51 = v49 + 1;
    v42 = v139;
    if (v50)
    {
LABEL_107:
      __break(1u);
      goto LABEL_108;
    }

    v38[2] = v51;
    *(v3 + 128) = v38;
    swift_endAccess();

    if (!v145[0])
    {
      goto LABEL_99;
    }
  }

  v54 = 0;
  v55 = v52 + 56;
  v56 = 1 << *(v52 + 32);
  if (v56 < 64)
  {
    v57 = ~(-1 << v56);
  }

  else
  {
    v57 = -1;
  }

  v58 = v57 & *(v52 + 56);
  v59 = (v56 + 63) >> 6;
  v126 = "thing to clean up.";
  v125 = "Product with ID ";
  *&v53 = 136446466;
  v122 = v53;
  v131 = v22;
  v128 = v52 + 56;
  v127 = v59;
  v130 = v19;
  v129 = v52;
  if (v58)
  {
    goto LABEL_46;
  }

  do
  {
LABEL_42:
    v60 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
      goto LABEL_107;
    }

    if (v60 >= v59)
    {

LABEL_99:
      OUTLINED_FUNCTION_338();
      sub_1B256E4FC();
      MEMORY[0x1B2749D50](0xD00000000000001BLL, 0x80000001B25929F0);
      *&v144 = v31;
      *(&v144 + 1) = v30;
      sub_1B256E78C();
      OUTLINED_FUNCTION_75_0();
      MEMORY[0x1B2749D50](0xD00000000000002CLL);

      v111 = sub_1B256E08C();

      v112 = &v19[v3];
      v113 = sub_1B256D5CC();

      if (os_log_type_enabled(v113, v111))
      {
        v114 = OUTLINED_FUNCTION_21_3();
        *&v144 = OUTLINED_FUNCTION_20_4();
        *v114 = 136446466;
        OUTLINED_FUNCTION_39_2();
        OUTLINED_FUNCTION_480(v115);
        OUTLINED_FUNCTION_94_0();
        sub_1B2519814(v142, v143, &v144);
        OUTLINED_FUNCTION_120();

        *(v114 + 4) = v112;
        OUTLINED_FUNCTION_439();
        v116 = OUTLINED_FUNCTION_50_0();
        v119 = sub_1B2519814(v116, v117, v118);

        *(v114 + 14) = v119;
        OUTLINED_FUNCTION_486(&dword_1B23EF000, v120, v121, "%{public}s%{public}s");
        OUTLINED_FUNCTION_95_0();
        v20 = v135;
        OUTLINED_FUNCTION_11_4();
        OUTLINED_FUNCTION_63_0();

        OUTLINED_FUNCTION_283_0();
        LOBYTE(v18) = v124;
      }

      else
      {

        OUTLINED_FUNCTION_283_0();
        LOBYTE(v18) = v124;
        v20 = v135;
      }

      goto LABEL_102;
    }

    v58 = *(v55 + 8 * v60);
    ++v54;
  }

  while (!v58);
  v54 = v60;
  while (1)
  {
LABEL_46:
    v61 = (*(v52 + 48) + ((v54 << 10) | (16 * __clz(__rbit64(v58)))));
    v63 = *v61;
    v62 = v61[1];
    OUTLINED_FUNCTION_278_0(v3 + 112, &v142);
    if (*(*(v3 + 112) + 16))
    {

      sub_1B2458898();
      if (v64)
      {
        OUTLINED_FUNCTION_3_38();
        v65 = v137;
        sub_1B255FE0C();
        v66 = v65;
        v67 = 0;
      }

      else
      {
        v65 = v137;
        v66 = OUTLINED_FUNCTION_59_1();
      }

      __swift_storeEnumTagSinglePayload(v66, v67, 1, v42);
    }

    else
    {
      v65 = v137;
      v68 = OUTLINED_FUNCTION_60_6();
      __swift_storeEnumTagSinglePayload(v68, v69, v70, v42);
    }

    v58 &= v58 - 1;
    v71 = OUTLINED_FUNCTION_59_1();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v71, v72, v42);
    v22 = v138;
    if (EnumTagSinglePayload)
    {
      sub_1B256615C(v65, &qword_1EB7CFEA0);
      swift_endAccess();
    }

    else
    {
      OUTLINED_FUNCTION_3_38();
      OUTLINED_FUNCTION_379();
      sub_1B255FE0C();
      sub_1B256615C(v65, &qword_1EB7CFEA0);
      swift_endAccess();
      if (swift_weakLoadStrong())
      {

        OUTLINED_FUNCTION_0_47();
        sub_1B2563750();
        OUTLINED_FUNCTION_380();
LABEL_68:

        v19 = v130;
        goto LABEL_95;
      }

      v87 = *(v22 + *(v42 + 24));
      v88 = *(v87 + 16);
      v132 = v87;
      v89 = v87 + 32;
      v133 = -v88;
      v22 = -1;
      do
      {
        v90 = v133 + v22;
        if (v133 + v22 == -1)
        {
          OUTLINED_FUNCTION_0_47();
          sub_1B2563750();
          OUTLINED_FUNCTION_283_0();
          goto LABEL_54;
        }

        if (++v22 >= *(v132 + 16))
        {
          goto LABEL_105;
        }

        v91 = v89 + 8;
        v3 = v63;
        sub_1B24C5C14();
        Strong = swift_weakLoadStrong();
        sub_1B256615C(&v142, &qword_1EB7D0460);
        v89 = v91;
        v31 = v140;
      }

      while (!Strong);

      OUTLINED_FUNCTION_0_47();
      sub_1B2563750();
      v22 = v131;
      v3 = v134;
      v30 = v136;
      v42 = v139;
      if (v90 != -1)
      {
        goto LABEL_68;
      }
    }

LABEL_54:
    OUTLINED_FUNCTION_50_5(v3 + 128, &v144);
    v74 = *(v3 + 128);
    sub_1B256ED3C();
    MEMORY[0x1B274AFC0](0);
    sub_1B256DA7C();
    sub_1B256ED7C();
    OUTLINED_FUNCTION_131_2();
    OUTLINED_FUNCTION_341();
    if (((*(v74 + 56 + v76) >> v3) & 1) == 0)
    {
      break;
    }

    v77 = ~v75;
    v22 = *(v74 + 48);
    while (1)
    {
      v78 = v22 + 24 * v3;
      if ((*(v78 + 16) & 1) == 0)
      {
        v79 = *v78 == v63 && *(v78 + 8) == v62;
        if (v79 || (sub_1B256EB5C() & 1) != 0)
        {
          break;
        }
      }

      v3 = (v3 + 1) & v77;
      OUTLINED_FUNCTION_155_1();
      if (((v80 >> v3) & 1) == 0)
      {
        goto LABEL_63;
      }
    }

    sub_1B24D0BE0();
    OUTLINED_FUNCTION_380();
    OUTLINED_FUNCTION_283_0();
    v31 = v140;
LABEL_91:
    swift_endAccess();
    sub_1B24D0BE8();
    OUTLINED_FUNCTION_338();
    sub_1B256E4FC();
    MEMORY[0x1B2749D50](0xD000000000000010, v126 | 0x8000000000000000);
    *&v144 = v31;
    *(&v144 + 1) = v136;
    sub_1B256E78C();
    MEMORY[0x1B2749D50](0xD00000000000002CLL, v125 | 0x8000000000000000);
    v103 = v142;
    v104 = v143;

    v105 = sub_1B256E08C();

    v106 = sub_1B256D5CC();

    if (os_log_type_enabled(v106, v105))
    {
      v22 = OUTLINED_FUNCTION_21_3();
      v107 = OUTLINED_FUNCTION_20_4();
      v133 = v103;
      *&v144 = v107;
      *v22 = v122;
      v142 = 91;
      v143 = 0xE100000000000000;
      MEMORY[0x1B2749D50](v135, v131);
      OUTLINED_FUNCTION_94_0();
      v108 = v143;
      sub_1B2519814(v142, v143, &v144);
      OUTLINED_FUNCTION_28_12();
      *(v22 + 4) = v3;
      OUTLINED_FUNCTION_283_0();
      OUTLINED_FUNCTION_368();
      v109 = OUTLINED_FUNCTION_459();
      sub_1B2519814(v109, v104, v110);
      OUTLINED_FUNCTION_269_0();

      *(v22 + 14) = v108;
      v31 = v140;
      OUTLINED_FUNCTION_404(&dword_1B23EF000, v106, v105, "%{public}s%{public}s");
      OUTLINED_FUNCTION_23_11();
      OUTLINED_FUNCTION_11_4();
      OUTLINED_FUNCTION_380();
      OUTLINED_FUNCTION_11_4();
    }

    else
    {
    }

    v19 = v130;
    v30 = v136;
    v42 = v139;
LABEL_95:
    v52 = v129;
    v55 = v128;
    v59 = v127;
    if (!v58)
    {
      goto LABEL_42;
    }
  }

LABEL_63:
  v81 = v134;
  v82 = swift_isUniquelyReferenced_nonNull_native();
  v141 = *(v81 + 128);
  v83 = v141;
  *(v81 + 128) = 0x8000000000000000;
  v84 = v83[2];
  v85 = v83[3];

  if (v85 > v84)
  {
    OUTLINED_FUNCTION_380();
    v31 = v140;
    if ((v82 & 1) == 0)
    {
      sub_1B2561E44();
      v83 = v141;
    }

    goto LABEL_89;
  }

  v31 = v140;
  v86 = v84 + 1;
  if (v82)
  {
    sub_1B2560C10(v86);
  }

  else
  {
    sub_1B2562770(v86);
  }

  v83 = v141;
  sub_1B256ED3C();
  MEMORY[0x1B274AFC0](0);
  sub_1B256DA7C();
  sub_1B256ED7C();
  OUTLINED_FUNCTION_131_2();
  OUTLINED_FUNCTION_341();
  if (((*(v83 + v94 + 56) >> v3) & 1) == 0)
  {
LABEL_88:
    OUTLINED_FUNCTION_380();
LABEL_89:
    OUTLINED_FUNCTION_378();
    OUTLINED_FUNCTION_336_0(v83 + v99);
    v100 = v83[6] + 24 * v3;
    *v100 = v63;
    *(v100 + 8) = v62;
    *(v100 + 16) = 0;
    v101 = v83[2];
    v50 = __OFADD__(v101, 1);
    v102 = v101 + 1;
    if (v50)
    {
      goto LABEL_106;
    }

    v83[2] = v102;
    OUTLINED_FUNCTION_283_0();
    *(v3 + 128) = v83;
    goto LABEL_91;
  }

  v95 = ~v93;
  v22 = v83[6];
  while (1)
  {
    v96 = v22 + 24 * v3;
    if ((*(v96 + 16) & 1) == 0)
    {
      v97 = *v96 == v63 && *(v96 + 8) == v62;
      if (v97 || (sub_1B256EB5C() & 1) != 0)
      {
        break;
      }
    }

    v3 = (v3 + 1) & v95;
    OUTLINED_FUNCTION_378();
    if (((*(v83 + v98 + 56) >> v3) & 1) == 0)
    {
      goto LABEL_88;
    }
  }

LABEL_108:
  sub_1B256EC8C();
  __break(1u);
}

void StoreProductManager.observer(for:origin:)()
{
  OUTLINED_FUNCTION_67();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = OUTLINED_FUNCTION_105_2();
  v134 = type metadata accessor for StoreProductManager.SingleObserver.Storage(v7);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_8_5(v10 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2CD8, &qword_1B2587250);
  OUTLINED_FUNCTION_2_2(v11);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v12);
  v142 = v132 - v13;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2CE0, &qword_1B2587258);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8_5(v132 - v15);
  v138 = sub_1B256D36C();
  OUTLINED_FUNCTION_1_1();
  v143 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_313();
  v136 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_8_5(v132 - v20);
  v21 = type metadata accessor for Product(0);
  v22 = OUTLINED_FUNCTION_2_2(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_8_5(v24 - v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7CFEA0, &qword_1B2587230);
  v26 = OUTLINED_FUNCTION_2_2(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_313();
  v141 = v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = v132 - v29;
  v146 = type metadata accessor for StoreProductManager.CachedProduct(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_13();
  v144 = v33 - v32;
  v147 = *v4;
  v145 = OBJC_IVAR____TtC8StoreKit19StoreProductManager_log;
  v148 = sub_1B24D3E10();
  v35 = v34;
  OUTLINED_FUNCTION_50_5(v2 + 128, &v152);
  v36 = *(v2 + 128);
  sub_1B256ED3C();
  MEMORY[0x1B274AFC0](0);
  v37 = v0;
  v149 = v6;
  sub_1B256DA7C();
  sub_1B256ED7C();
  v38 = v36 + 56;
  OUTLINED_FUNCTION_25_15();
  if ((*(v36 + 56 + v40) >> v6))
  {
    v41 = ~v39;
    v42 = *(v36 + 48);
    while (1)
    {
      v43 = v42 + 24 * v6;
      if ((*(v43 + 16) & 1) == 0)
      {
        v44 = *v43 == v37 && *(v43 + 8) == v149;
        if (v44 || (sub_1B256EB5C() & 1) != 0)
        {
          break;
        }
      }

      v6 = (v6 + 1) & v41;
      OUTLINED_FUNCTION_220_0();
      if (((*(v38 + v45) >> v6) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v150 = *(v2 + 128);
    *(v2 + 128) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1B2561E44();
    }

    sub_1B25637A0(v6);
    *(v2 + 128) = v150;
    OUTLINED_FUNCTION_326_0();
    sub_1B24D0BE8();
  }

LABEL_14:
  swift_endAccess();
  LOBYTE(v150) = v147;
  v47 = v148;
  v48 = OUTLINED_FUNCTION_136();
  sub_1B25456E0(v48, v49, v50);
  OUTLINED_FUNCTION_278_0(v2 + 112, &v150);
  v51 = v37;
  v52 = v149;
  sub_1B247A5F8(*(v2 + 112), v30);
  v53 = v146;
  OUTLINED_FUNCTION_268_0(v30, 1, v146);
  if (!v44)
  {
    OUTLINED_FUNCTION_2_40();
    v67 = v144;
    sub_1B25636F8();
    swift_endAccess();
    v132[1] = *(v53 + 20);
    Strong = swift_weakLoadStrong();
    v140 = v2;
    v133 = v35;
    if (Strong)
    {
      v141 = Strong;
      OUTLINED_FUNCTION_142_1();
      sub_1B256E4FC();
      OUTLINED_FUNCTION_297_0();
      v69 = MEMORY[0x1B2749D50](0xD00000000000001ELL, 0x80000001B2592A50);
      v152 = v37;
      v153 = v52;
      OUTLINED_FUNCTION_384(v69, v70, &type metadata for StoreProductManager.ProductID, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078]);
      v71 = v150;
      v72 = v151;

      v73 = sub_1B256E08C();

      v74 = sub_1B256D5CC();

      if (os_log_type_enabled(v74, v73))
      {
        OUTLINED_FUNCTION_21_3();
        v152 = OUTLINED_FUNCTION_35_6();
        *v52 = 136446466;
        OUTLINED_FUNCTION_98_4();
        MEMORY[0x1B2749D50](v148, v35);
        OUTLINED_FUNCTION_94_0();
        OUTLINED_FUNCTION_228_0();
        OUTLINED_FUNCTION_28_12();
        *(v52 + 4) = v67;
        OUTLINED_FUNCTION_233_0();
        v76 = sub_1B2519814(v71, v72, v75);

        *(v52 + 14) = v76;
        OUTLINED_FUNCTION_319_0(&dword_1B23EF000, v77, v73, "%{public}s%{public}s");
        OUTLINED_FUNCTION_23_11();
        OUTLINED_FUNCTION_11_4();
        OUTLINED_FUNCTION_7_12();

        goto LABEL_28;
      }
    }

    else
    {
      v90 = type metadata accessor for StoreProductManager.SingleObserver(0);
      OUTLINED_FUNCTION_512(v90);
      v91 = v52;
      v92 = sub_1B255E500();
      OUTLINED_FUNCTION_50_5(v2 + 112, &v152);
      v93 = sub_1B253EBAC(&v150, v37, v91);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v94, 1, v53);
      v141 = v92;
      if (!EnumTagSinglePayload)
      {
        swift_weakAssign();
      }

      (v93)(&v150, 0);
      swift_endAccess();
      OUTLINED_FUNCTION_142_1();
      sub_1B256E4FC();
      OUTLINED_FUNCTION_297_0();
      OUTLINED_FUNCTION_75_0();
      OUTLINED_FUNCTION_515();
      v152 = v37;
      v153 = v149;
      OUTLINED_FUNCTION_384(v96, v97, &type metadata for StoreProductManager.ProductID, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078]);
      MEMORY[0x1B2749D50](0xD000000000000015, 0x80000001B2592A30);

      v98 = sub_1B256E08C();

      v99 = &v145[v140];
      v74 = sub_1B256D5CC();

      if (os_log_type_enabled(v74, v98))
      {
        OUTLINED_FUNCTION_21_3();
        v152 = OUTLINED_FUNCTION_35_6();
        *v92 = 136446466;
        OUTLINED_FUNCTION_98_4();
        MEMORY[0x1B2749D50](v148, v35);
        OUTLINED_FUNCTION_94_0();
        OUTLINED_FUNCTION_228_0();
        OUTLINED_FUNCTION_28_12();
        *(v92 + 4) = v67;
        OUTLINED_FUNCTION_233_0();
        v100 = OUTLINED_FUNCTION_320_0();
        sub_1B2519814(v100, v101, v102);
        OUTLINED_FUNCTION_269_0();

        *(v92 + 14) = v99;
        OUTLINED_FUNCTION_319_0(&dword_1B23EF000, v103, v98, "%{public}s%{public}s");
        OUTLINED_FUNCTION_23_11();
        OUTLINED_FUNCTION_11_4();
        OUTLINED_FUNCTION_7_12();

        goto LABEL_28;
      }
    }

LABEL_28:

    v104 = v142;
    sub_1B24C5C14();
    v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2CC0, &qword_1B2587238);
    OUTLINED_FUNCTION_268_0(v104, 1, v105);
    if (v44)
    {
      sub_1B256615C(v104, &qword_1EB7D2CD8);
    }

    else
    {
      v106 = *(v105 + 48);
      v107 = v137;
      v108 = *(v137 + 48);
      v109 = v135;
      sub_1B25636F8();
      v110 = v143;
      v111 = *(v143 + 32);
      v112 = v109 + v108;
      v113 = v138;
      v111(v112, v104 + v106, v138);
      v114 = *(v107 + 48);
      sub_1B25636F8();
      v111(v139, v109 + v114, v113);
      sub_1B256D34C();
      v115 = sub_1B256D2BC();
      v116 = v110 + 8;
      v117 = *(v110 + 8);
      v118 = OUTLINED_FUNCTION_28_1();
      v117(v118);
      if (v115)
      {
        v143 = v116;
        if (swift_weakLoadStrong())
        {
        }

        else
        {
          OUTLINED_FUNCTION_5_32();
          OUTLINED_FUNCTION_459();
          sub_1B255FE0C();
          swift_storeEnumTagMultiPayload();
          sub_1B2545740();
        }

        OUTLINED_FUNCTION_142_1();
        sub_1B256E4FC();
        OUTLINED_FUNCTION_297_0();
        v122 = OUTLINED_FUNCTION_262_0();
        v123 = MEMORY[0x1B2749D50](v122);
        v152 = v37;
        v153 = v149;
        OUTLINED_FUNCTION_384(v123, v124, &type metadata for StoreProductManager.ProductID, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078]);
        v125 = sub_1B256E08C();
        v126 = v133;

        v127 = &v145[v140];
        v128 = sub_1B256D5CC();

        if (os_log_type_enabled(v128, v125))
        {
          OUTLINED_FUNCTION_21_3();
          v152 = OUTLINED_FUNCTION_35_6();
          *v113 = 136446466;
          OUTLINED_FUNCTION_98_4();
          MEMORY[0x1B2749D50](v148, v126);
          OUTLINED_FUNCTION_94_0();
          OUTLINED_FUNCTION_228_0();
          OUTLINED_FUNCTION_371();

          *(v113 + 4) = v126;
          OUTLINED_FUNCTION_233_0();
          v129 = OUTLINED_FUNCTION_35_0();
          sub_1B2519814(v129, v130, v131);
          OUTLINED_FUNCTION_200_1();

          *(v113 + 14) = v127;
          _os_log_impl(&dword_1B23EF000, v128, v125, "%{public}s%{public}s", v113, 0x16u);
          OUTLINED_FUNCTION_100_2();
          OUTLINED_FUNCTION_22_8();
          OUTLINED_FUNCTION_7_12();

          (v117)(v139, v138);
        }

        else
        {

          (v117)(v139, v113);
        }

        OUTLINED_FUNCTION_1_44();
        OUTLINED_FUNCTION_459();
        sub_1B2563750();
        OUTLINED_FUNCTION_0_47();
        sub_1B2563750();
        goto LABEL_41;
      }

      v119 = OUTLINED_FUNCTION_157_0();
      v117(v119);
      OUTLINED_FUNCTION_1_44();
      sub_1B2563750();
    }

    OUTLINED_FUNCTION_210_0();
    sub_1B254BC5C(v37, v149, v120, 0, v121, v133, v147);

    OUTLINED_FUNCTION_0_47();
    sub_1B2563750();
    goto LABEL_41;
  }

  sub_1B256615C(v30, &qword_1EB7CFEA0);
  swift_endAccess();
  OUTLINED_FUNCTION_142_1();
  sub_1B256E4FC();
  OUTLINED_FUNCTION_297_0();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_515();
  v152 = v37;
  v153 = v52;
  OUTLINED_FUNCTION_384(v54, v55, &type metadata for StoreProductManager.ProductID, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078]);
  v56 = v150;
  v57 = v151;

  v58 = sub_1B256E08C();

  v59 = &v145[v2];
  v60 = sub_1B256D5CC();

  if (os_log_type_enabled(v60, v58))
  {
    OUTLINED_FUNCTION_21_3();
    LODWORD(v145) = v58;
    v152 = OUTLINED_FUNCTION_35_6();
    *v58 = 136446466;
    OUTLINED_FUNCTION_98_4();
    v61 = OUTLINED_FUNCTION_136();
    MEMORY[0x1B2749D50](v61);
    OUTLINED_FUNCTION_94_0();
    v62 = v35;
    v63 = v2;
    v64 = OUTLINED_FUNCTION_228_0();

    *(v58 + 4) = v64;
    v2 = v63;
    v35 = v62;
    v47 = v148;
    OUTLINED_FUNCTION_233_0();
    sub_1B2519814(v56, v57, v65);
    OUTLINED_FUNCTION_399();
    *(v58 + 14) = v59;
    OUTLINED_FUNCTION_319_0(&dword_1B23EF000, v66, v145, "%{public}s%{public}s");
    OUTLINED_FUNCTION_23_11();
    v51 = v37;
    OUTLINED_FUNCTION_11_4();
    OUTLINED_FUNCTION_7_12();
  }

  else
  {
  }

  v78 = type metadata accessor for StoreProductManager.SingleObserver(0);
  OUTLINED_FUNCTION_512(v78);
  sub_1B255E500();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2CC0, &qword_1B2587238);
  v79 = v141;
  OUTLINED_FUNCTION_16_2();
  __swift_storeEnumTagSinglePayload(v80, v81, v82, v83);
  v84 = v146;
  swift_weakInit();
  *(v79 + *(v84 + 24)) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_188_1();
  __swift_storeEnumTagSinglePayload(v85, v86, v87, v84);
  OUTLINED_FUNCTION_50_5(v2 + 112, &v150);
  v88 = v149;

  sub_1B253F7E4(v79, v51, v88);
  swift_endAccess();
  OUTLINED_FUNCTION_210_0();
  sub_1B254BC5C(v51, v88, v89, 0, v47, v35, v147);

LABEL_41:
  OUTLINED_FUNCTION_45();
}

uint64_t sub_1B25456E0(uint64_t a1, uint64_t a2, char *a3)
{
  v8 = *a3;
  v5 = v8;
  sub_1B2559E70(&v8);
  sub_1B255A0C8();
  v7 = v5;
  return sub_1B25415D4(2, a1, a2, &v7);
}

uint64_t sub_1B2545740()
{
  v0 = OUTLINED_FUNCTION_105_2();
  v1 = type metadata accessor for StoreProductManager.SingleObserver.Storage(v0);
  v2 = OUTLINED_FUNCTION_2_2(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_13();
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_41_1();
  sub_1B255FE0C();

  OUTLINED_FUNCTION_117_0();
  sub_1B256D65C();
  return sub_1B2563750();
}

uint64_t StoreProductManager.observer(subscriptionGroupID:origin:)()
{
  OUTLINED_FUNCTION_21_5();
  v3 = v2;
  *(v1 + 448) = v4;
  *(v1 + 456) = v0;
  *(v1 + 440) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7CFEA0, &qword_1B2587230);
  OUTLINED_FUNCTION_2_2(v6);
  *(v1 + 464) = OUTLINED_FUNCTION_250();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2CD8, &qword_1B2587250);
  OUTLINED_FUNCTION_2_2(v7);
  *(v1 + 472) = OUTLINED_FUNCTION_250();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2CE0, &qword_1B2587258);
  *(v1 + 480) = v8;
  OUTLINED_FUNCTION_2_2(v8);
  *(v1 + 488) = OUTLINED_FUNCTION_250();
  v9 = sub_1B256D36C();
  *(v1 + 496) = v9;
  OUTLINED_FUNCTION_26_7(v9);
  *(v1 + 504) = v10;
  *(v1 + 512) = swift_task_alloc();
  *(v1 + 520) = swift_task_alloc();
  v11 = type metadata accessor for Product(0);
  OUTLINED_FUNCTION_26_7(v11);
  *(v1 + 528) = v12;
  *(v1 + 536) = swift_task_alloc();
  *(v1 + 544) = swift_task_alloc();
  *(v1 + 552) = *v3;
  v13 = OUTLINED_FUNCTION_31_10();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1B25459CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const char *a10, __int128 a11, unint64_t a13, uint64_t a14, uint64_t a15, void (**a16)(uint64_t, uint64_t, uint64_t), uint64_t a17, uint64_t a18, uint64_t a19, unint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void (**a28)(uint64_t, uint64_t), uint64_t a29, objc_class *a30, uint64_t a31, uint64_t a32, uint64_t a33, NSObject *a34, objc_class *a35, objc_class *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void (**a44)(void, void), uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, NSObject *a54, uint64_t a55, uint64_t a56)
{
  OUTLINED_FUNCTION_478();
  a55 = v57;
  a56 = v58;
  a54 = v55;
  v60 = *(v55 + 448);
  v59 = *(v55 + 456);
  v61 = *(v55 + 440);
  v206 = OBJC_IVAR____TtC8StoreKit19StoreProductManager_log;
  v62 = sub_1B24D3E10();
  v208 = v63;
  OUTLINED_FUNCTION_50_5(v59 + 128, v55 + 48);
  v207 = v59;
  sub_1B256ED3C();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_69();
  sub_1B256DA7C();
  sub_1B256ED7C();
  OUTLINED_FUNCTION_18_16();
  if (v65)
  {
    v66 = ~v64;
    while (1)
    {
      OUTLINED_FUNCTION_205_0();
      if (v68)
      {
        v68 = *v67 == *(v55 + 440) && v67[1] == v60;
        if (v68 || (sub_1B256EB5C() & 1) != 0)
        {
          break;
        }
      }

      v61 = (v61 + 1) & v66;
      OUTLINED_FUNCTION_97_6();
      if ((v69 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    v56 = v207;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    a35 = *(v207 + 128);
    *(v207 + 128) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
LABEL_78:
      sub_1B2561E44();
    }

    sub_1B25637A0(v61);
    *(v56 + 128) = a35;
    OUTLINED_FUNCTION_13_5();
    sub_1B24D0BE8();
  }

LABEL_14:
  v205 = v60;
  OUTLINED_FUNCTION_365();
  v71 = *(v55 + 552);
  v72 = *(v55 + 456);
  swift_endAccess();
  LOBYTE(a35) = v71;
  v73 = v208;
  sub_1B25456E0(v62, v208, &a35);
  OUTLINED_FUNCTION_278_0(v72 + 120, v55 + 72);
  OUTLINED_FUNCTION_28_1();
  sub_1B247A6B4(v74, v75);
  if (*(v55 + 208) == 1)
  {
    v76 = v62;
    v77 = v55;
    v78 = *(v55 + 448);
    v79 = v77[55];
    sub_1B256615C((v77 + 26), &unk_1EB7D2CD0);
    swift_endAccess();
    OUTLINED_FUNCTION_103_3();
    sub_1B256E4FC();
    v80 = a36;
    v77[28] = a35;
    v77[29] = v80;
    v81 = v77 + 28;
    OUTLINED_FUNCTION_515();
    v77[30] = v79;
    v77[31] = v78;
    v82 = v77;
    sub_1B256E78C();
    v83 = v77[28];
    v84 = v82[29];

    sub_1B256E08C();
    OUTLINED_FUNCTION_514();

    v86 = v208;
    v87 = OUTLINED_FUNCTION_406(v85);

    if (os_log_type_enabled(v87, v79))
    {
      v88 = OUTLINED_FUNCTION_21_3();
      v207 = v83;
      a44 = OUTLINED_FUNCTION_20_4();
      *v88 = 136446466;
      OUTLINED_FUNCTION_15_22();
      v89 = v76;
      MEMORY[0x1B2749D50](v76, v208);
      OUTLINED_FUNCTION_94_0();
      v90 = OUTLINED_FUNCTION_127_1();

      *(v88 + 4) = v90;
      OUTLINED_FUNCTION_368();
      sub_1B2519814(v83, v84, &a44);
      OUTLINED_FUNCTION_269_0();

      *(v88 + 14) = v81;
      OUTLINED_FUNCTION_404(&dword_1B23EF000, v87, v79, "%{public}s%{public}s");
      OUTLINED_FUNCTION_54_4();
      OUTLINED_FUNCTION_44_1();
      v86 = v208;
      OUTLINED_FUNCTION_11_4();
    }

    else
    {

      v89 = v76;
    }

    v99 = v82[56];
    v100 = v82[55];
    v101 = *(v82 + 552);
    v102 = type metadata accessor for StoreProductManager.SubscriptionGroupObserver(0);
    OUTLINED_FUNCTION_512(v102);
    sub_1B255F36C();
    v82[32] = 0;
    swift_weakInit();
    OUTLINED_FUNCTION_50_5(v72 + 120, (v82 + 12));

    sub_1B253F70C(v82 + 32, v100, v99);
    swift_endAccess();
    sub_1B254BF28(v100, v205, 1, v89, v86, v101);

    goto LABEL_74;
  }

  sub_1B244ADF4(v55 + 208, v55 + 192);
  swift_endAccess();
  Strong = swift_weakLoadStrong();
  v93 = *(v55 + 440);
  v92 = *(v55 + 448);
  a22 = Strong;
  a20 = v62;
  if (!Strong)
  {
    v103 = type metadata accessor for StoreProductManager.SubscriptionGroupObserver(0);
    OUTLINED_FUNCTION_512(v103);
    v104 = sub_1B255F36C();
    OUTLINED_FUNCTION_50_5(v72 + 120, v55 + 120);
    v105 = OUTLINED_FUNCTION_35_0();
    v107 = sub_1B253EC24(v105, v106, v92);
    if (*v108 != 1)
    {
      swift_weakAssign();
    }

    a22 = v104;
    (v107)(v55 + 16, 0);
    v110 = *(v55 + 440);
    v109 = *(v55 + 448);
    swift_endAccess();
    OUTLINED_FUNCTION_103_3();
    sub_1B256E4FC();
    v111 = a36;
    *(v55 + 272) = a35;
    *(v55 + 280) = v111;
    OUTLINED_FUNCTION_515();
    *(v55 + 288) = v110;
    *(v55 + 296) = v109;
    sub_1B256E78C();
    MEMORY[0x1B2749D50](v56 - 5, 0x80000001B2592A30);
    v73 = v208;

    v96 = sub_1B256E08C();

    v95 = &v206[v207];
    v98 = sub_1B256D5CC();

    if (os_log_type_enabled(v98, v96))
    {
      goto LABEL_25;
    }

LABEL_26:

    goto LABEL_27;
  }

  OUTLINED_FUNCTION_103_3();
  sub_1B256E4FC();
  v94 = a36;
  *(v55 + 400) = a35;
  *(v55 + 408) = v94;
  v95 = (v55 + 400);
  MEMORY[0x1B2749D50](v56 + 4, 0x80000001B2592A50);
  *(v55 + 416) = v93;
  *(v55 + 424) = v92;
  sub_1B256E78C();

  v96 = sub_1B256E08C();

  v98 = OUTLINED_FUNCTION_406(v97);

  if (!os_log_type_enabled(v98, v96))
  {
    goto LABEL_26;
  }

LABEL_25:
  OUTLINED_FUNCTION_21_3();
  v56 = OUTLINED_FUNCTION_3_23();
  a44 = v56;
  *v73 = 136446466;
  OUTLINED_FUNCTION_15_22();
  MEMORY[0x1B2749D50](a20, v208);
  OUTLINED_FUNCTION_94_0();
  v112 = OUTLINED_FUNCTION_127_1();

  *(v73 + 4) = v112;
  OUTLINED_FUNCTION_207_0();
  v113 = OUTLINED_FUNCTION_265_0();
  sub_1B2519814(v113, v114, v115);
  OUTLINED_FUNCTION_269_0();

  *(v73 + 14) = v95;
  OUTLINED_FUNCTION_327_0(&dword_1B23EF000, v98, v96, "%{public}s%{public}s");
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_365();
  OUTLINED_FUNCTION_11_4();
  v73 = v208;
  OUTLINED_FUNCTION_11_4();
LABEL_27:

  v116 = v205;
  v117 = *(v55 + 192);
  if (v117)
  {
    a21 = *(v55 + 544);
    a15 = *(v55 + 528);
    v61 = *(v55 + 504);
    a17 = *(v55 + 480);
    a18 = *(v55 + 456);
    OUTLINED_FUNCTION_50_5(v207 + 128, v55 + 144);
    swift_bridgeObjectRetain_n();
    sub_1B25639BC(v117, sub_1B25661E4, 0);
    swift_endAccess();

    sub_1B2448D30();
    a30 = v118;
    v62 = 0;
    v60 = v117 + 56;
    OUTLINED_FUNCTION_73_2();
    v121 = v120 & v119;
    OUTLINED_FUNCTION_231_0();
    v123 = v122 >> 6;
    a16 = (v61 + 32);
    a28 = (v61 + 8);
    a23 = 0x80000001B258FD90;
    a10 = " cached product(s) for ";
    *&v124 = 136446466;
    a11 = v124;
    a13 = v122 >> 6;
    a34 = v55;
    a19 = v117;
    a14 = v117 + 56;
    if (v121)
    {
      goto LABEL_33;
    }

    do
    {
LABEL_29:
      v125 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        __break(1u);
        goto LABEL_78;
      }

      if (v125 >= v123)
      {

        goto LABEL_60;
      }

      v121 = *(v60 + 8 * v125);
      ++v62;
    }

    while (!v121);
    v62 = v125;
    while (1)
    {
LABEL_33:
      OUTLINED_FUNCTION_182_1();
      v56 = *(v126 + 8);
      v127 = a18;
      OUTLINED_FUNCTION_278_0(a18 + 112, v55 + 168);
      OUTLINED_FUNCTION_361();
      if (v128)
      {

        OUTLINED_FUNCTION_458();
        sub_1B2458898();
        if (v129)
        {
          v127 = type metadata accessor for StoreProductManager.CachedProduct(0);
          OUTLINED_FUNCTION_7_0();
          OUTLINED_FUNCTION_3_38();
          sub_1B255FE0C();
        }

        else
        {
          type metadata accessor for StoreProductManager.CachedProduct(0);
          OUTLINED_FUNCTION_154();
        }

        OUTLINED_FUNCTION_121_2();
        __swift_storeEnumTagSinglePayload(v133, v134, v135, v136);
      }

      else
      {
        type metadata accessor for StoreProductManager.CachedProduct(0);
        OUTLINED_FUNCTION_154();
        OUTLINED_FUNCTION_16_2();
        __swift_storeEnumTagSinglePayload(v130, v131, v132, a18);
      }

      v137 = *(v55 + 464);
      type metadata accessor for StoreProductManager.CachedProduct(0);
      v138 = OUTLINED_FUNCTION_164_1();
      if (__swift_getEnumTagSinglePayload(v138, v139, v127))
      {
        sub_1B256615C(v137, &qword_1EB7CFEA0);
        swift_endAccess();

        goto LABEL_59;
      }

      OUTLINED_FUNCTION_14_3();
      sub_1B24C5C14();
      sub_1B256615C(v137, &qword_1EB7CFEA0);
      swift_endAccess();

      v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2CC0, &qword_1B2587238);
      v141 = OUTLINED_FUNCTION_199_0();
      OUTLINED_FUNCTION_268_0(v141, v142, v140);
      if (v68)
      {
        v168 = *(v55 + 472);

        sub_1B256615C(v168, &qword_1EB7D2CD8);
        goto LABEL_59;
      }

      a25 = *(v55 + 544);
      a26 = *(v55 + 520);
      a27 = *(v55 + 512);
      v143 = *(v55 + 488);
      v56 = *(v55 + 496);
      v144 = *(v55 + 472);
      a24 = *(v140 + 48);
      v145 = *(a17 + 48);
      sub_1B25636F8();
      v146 = *a16;
      (*a16)(v143 + v145, v144 + a24, v56);
      v147 = *(a17 + 48);
      sub_1B25636F8();
      v146(a26, v143 + v147, v56);
      sub_1B256D34C();
      OUTLINED_FUNCTION_41_0();
      v148 = sub_1B256D2BC();
      v149 = *a28;
      (*a28)(a27, v56);
      if ((v148 & 1) == 0)
      {
        break;
      }

      v150 = *(a21 + 64);
      v151 = *(a21 + 72);
      OUTLINED_FUNCTION_365();
      v152 = v150 == v56 + 1 && 0x80000001B258FD90 == v151;
      v55 = a34;
      v117 = a19;
      if (!v152)
      {
        OUTLINED_FUNCTION_14_3();
        if ((sub_1B256EB5C() & 1) == 0)
        {
          isa = a34[56].isa;
          v154 = a34[55].isa;
          OUTLINED_FUNCTION_103_3();
          sub_1B256E4FC();
          v155 = a36;
          a34[46].isa = a35;
          a34[47].isa = v155;
          OUTLINED_FUNCTION_359();
          MEMORY[0x1B2749D50]();
          OUTLINED_FUNCTION_359();
          v156 = OUTLINED_FUNCTION_14_3();
          MEMORY[0x1B2749D50](v156);
          OUTLINED_FUNCTION_359();
          MEMORY[0x1B2749D50](0x203A64692820, 0xE600000000000000);
          OUTLINED_FUNCTION_359();
          MEMORY[0x1B2749D50]();
          OUTLINED_FUNCTION_359();
          MEMORY[0x1B2749D50](0x746365707865202CLL, 0xEC000000203A6465);
          a34[48].isa = v154;
          a34[49].isa = isa;
          v55 = a34;
          sub_1B256E78C();
          MEMORY[0x1B2749D50](41, 0xE100000000000000);
          v157 = sub_1B256E0BC();

          OUTLINED_FUNCTION_406(v158);
          OUTLINED_FUNCTION_154();

          if (os_log_type_enabled(a34 + 46, v157))
          {
            v56 = OUTLINED_FUNCTION_21_3();
            v159 = OUTLINED_FUNCTION_20_4();
            a35 = v159;
            *v56 = a11;
            *(v56 + 4) = OUTLINED_FUNCTION_75_2(v159, v160, &a35);
            OUTLINED_FUNCTION_368();
            v161 = OUTLINED_FUNCTION_157_0();
            v164 = sub_1B2519814(v161, v162, v163);

            *(v56 + 14) = v164;
            OUTLINED_FUNCTION_404(&dword_1B23EF000, a34 + 46, v157, "%{public}s%{public}s");
            OUTLINED_FUNCTION_100_2();
            v117 = a19;
            OUTLINED_FUNCTION_11_4();
            OUTLINED_FUNCTION_365();
            OUTLINED_FUNCTION_11_4();
          }

          else
          {
          }
        }
      }

      OUTLINED_FUNCTION_5_32();
      sub_1B255FE0C();
      v166 = *(a30 + 2);
      v165 = *(a30 + 3);
      if (v166 >= v165 >> 1)
      {
        OUTLINED_FUNCTION_109_4(v165);
        sub_1B2448D30();
        a30 = v167;
      }

      v121 &= v121 - 1;
      v61 = *(v55 + 544);
      v149(*(v55 + 520), *(v55 + 496));
      OUTLINED_FUNCTION_1_44();
      sub_1B2563750();
      *(a30 + 2) = v166 + 1;
      OUTLINED_FUNCTION_4_27();
      sub_1B25636F8();
      v123 = a13;
      v60 = a14;
      if (!v121)
      {
        goto LABEL_29;
      }
    }

    v55 = a34;
    v149(a34[65].isa, a34[62].isa);
    v117 = a19;

    OUTLINED_FUNCTION_1_44();
    sub_1B2563750();
LABEL_59:
    OUTLINED_FUNCTION_365();
LABEL_60:
    v170 = *(v55 + 440);
    v169 = *(v55 + 448);
    OUTLINED_FUNCTION_103_3();
    sub_1B256E4FC();
    v171 = a36;
    *(v55 + 304) = a35;
    *(v55 + 312) = v171;
    MEMORY[0x1B2749D50](0x20646E756F46, 0xE600000000000000);
    v172 = *(a30 + 2);
    *(v55 + 432) = v172;
    v173 = sub_1B256EAAC();
    MEMORY[0x1B2749D50](v173);

    MEMORY[0x1B2749D50](v56 - 3, 0x80000001B2592A70);
    *(v55 + 320) = v170;
    *(v55 + 328) = v169;
    sub_1B256E78C();
    v174 = *(v55 + 304);
    v175 = *(v55 + 312);

    v176 = sub_1B256E08C();

    v178 = OUTLINED_FUNCTION_406(v177);

    if (os_log_type_enabled(v178, v176))
    {
      OUTLINED_FUNCTION_21_3();
      a28 = OUTLINED_FUNCTION_3_23();
      a44 = a28;
      *v170 = a11;
      OUTLINED_FUNCTION_15_22();
      MEMORY[0x1B2749D50](a20, v208);
      OUTLINED_FUNCTION_94_0();
      OUTLINED_FUNCTION_127_1();
      LODWORD(a27) = v176;
      OUTLINED_FUNCTION_28_12();
      *(v170 + 4) = v117;
      OUTLINED_FUNCTION_207_0();
      v179 = sub_1B2519814(v174, v175, &a44);

      *(v170 + 14) = v179;
      OUTLINED_FUNCTION_327_0(&dword_1B23EF000, v178, v176, "%{public}s%{public}s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_11_4();
      OUTLINED_FUNCTION_10_7();
    }

    else
    {
    }

    v180 = *(v117 + 16);

    v68 = v172 == v180;
    v73 = v208;
    v116 = v205;
    if (!v68)
    {

      goto LABEL_67;
    }

    if (swift_weakLoadStrong())
    {
    }

    else
    {
      a35 = a30;
      LOBYTE(a36) = 1;
      sub_1B2546BD4(&a35);
    }

    v181 = v55;
    v182 = *(v55 + 448);
    v183 = v181[55];
    OUTLINED_FUNCTION_103_3();
    sub_1B256E4FC();
    v184 = a36;
    v181[42] = a35;
    v181[43] = v184;
    v185 = OUTLINED_FUNCTION_262_0();
    v186 = v181 + 42;
    MEMORY[0x1B2749D50](v185);
    v181[44] = v183;
    v181[45] = v182;
    v55 = v181;
    sub_1B256E78C();
    v187 = sub_1B256E08C();

    v189 = OUTLINED_FUNCTION_406(v188);

    if (os_log_type_enabled(v189, v187))
    {
      v190 = OUTLINED_FUNCTION_21_3();
      v191 = OUTLINED_FUNCTION_20_4();
      OUTLINED_FUNCTION_369(v191);
      *v190 = a11;
      OUTLINED_FUNCTION_15_22();
      MEMORY[0x1B2749D50](a20, v208);
      OUTLINED_FUNCTION_94_0();
      v192 = OUTLINED_FUNCTION_127_1();

      *(v190 + 4) = v192;
      OUTLINED_FUNCTION_439();
      v193 = OUTLINED_FUNCTION_29_1();
      sub_1B2519814(v193, v194, v195);
      OUTLINED_FUNCTION_399();
      *(v190 + 14) = v186;
      _os_log_impl(&dword_1B23EF000, v189, v187, "%{public}s%{public}s", v190, 0x16u);
      OUTLINED_FUNCTION_95_0();
      OUTLINED_FUNCTION_236();
      OUTLINED_FUNCTION_11_4();
    }

    else
    {
    }
  }

  else
  {
LABEL_67:
    sub_1B254BF28(*(v55 + 440), v116, 1, a20, v73, *(v55 + 552));
  }

  sub_1B25629C4(v55 + 192);
LABEL_74:

  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_472();

  return v198(v196, v197, v198, v199, v200, v201, v202, v203, a9, a10, a11, *(&a11 + 1), a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v205, a30, v206, v207, v208, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1B2546B48(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = *(result + 16);
    for (i = (result + 48); v2; --v2)
    {
      v4 = *i;
      v6 = *(i - 2);
      v5 = *(i - 1);
      sub_1B24D0BE0();
      v7 = sub_1B256353C(v6, v5, v4);
      sub_1B2565C58(v7, v8, v9);
      result = sub_1B24D0BE8();
      i += 24;
    }
  }

  return result;
}

uint64_t sub_1B2546BD4(uint64_t *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1B256D65C();
}

uint64_t StoreProductManager.observer<A>(for:origin:)()
{
  OUTLINED_FUNCTION_24_5();
  v3 = v2;
  v5 = v4;
  *(v1 + 328) = v2;
  *(v1 + 336) = v0;
  *(v1 + 312) = v6;
  *(v1 + 320) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2330, &qword_1B2583CC0);
  OUTLINED_FUNCTION_2_2(v8);
  *(v1 + 344) = OUTLINED_FUNCTION_250();
  v9 = type metadata accessor for Product(0);
  *(v1 + 352) = v9;
  OUTLINED_FUNCTION_26_7(v9);
  *(v1 + 360) = v10;
  *(v1 + 368) = OUTLINED_FUNCTION_504();
  *(v1 + 376) = swift_task_alloc();
  v11 = sub_1B256D36C();
  *(v1 + 384) = v11;
  OUTLINED_FUNCTION_26_7(v11);
  *(v1 + 392) = v12;
  *(v1 + 400) = OUTLINED_FUNCTION_504();
  *(v1 + 408) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2CD8, &qword_1B2587250);
  OUTLINED_FUNCTION_2_2(v13);
  *(v1 + 416) = OUTLINED_FUNCTION_504();
  *(v1 + 424) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0088, &unk_1B257DD30);
  OUTLINED_FUNCTION_2_2(v14);
  *(v1 + 432) = OUTLINED_FUNCTION_504();
  *(v1 + 440) = swift_task_alloc();
  *(v1 + 448) = *(v3 + 8);
  v15 = sub_1B256E70C();
  *(v1 + 456) = v15;
  OUTLINED_FUNCTION_26_7(v15);
  *(v1 + 464) = v16;
  *(v1 + 472) = swift_task_alloc();
  *(v1 + 480) = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910, &qword_1B257AFA0);
  OUTLINED_FUNCTION_2_2(v17);
  *(v1 + 488) = OUTLINED_FUNCTION_250();
  v18 = sub_1B256E71C();
  *(v1 + 496) = v18;
  OUTLINED_FUNCTION_2_2(v18);
  *(v1 + 504) = OUTLINED_FUNCTION_250();
  v19 = type metadata accessor for StoreProductManager.CachedProduct(0);
  *(v1 + 512) = v19;
  OUTLINED_FUNCTION_26_7(v19);
  *(v1 + 520) = v20;
  *(v1 + 528) = swift_task_alloc();
  *(v1 + 536) = swift_task_alloc();
  *(v1 + 544) = swift_task_alloc();
  *(v1 + 552) = swift_task_alloc();
  *(v1 + 560) = swift_task_alloc();
  *(v1 + 568) = swift_task_alloc();
  v21 = sub_1B256E71C();
  *(v1 + 576) = v21;
  OUTLINED_FUNCTION_82_4();
  *(v1 + 584) = swift_getWitnessTable();
  OUTLINED_FUNCTION_34_1();
  v22 = sub_1B256E89C();
  *(v1 + 592) = v22;
  OUTLINED_FUNCTION_2_2(v22);
  *(v1 + 600) = OUTLINED_FUNCTION_250();
  OUTLINED_FUNCTION_34_1();
  v23 = sub_1B256E88C();
  *(v1 + 608) = v23;
  OUTLINED_FUNCTION_26_7(v23);
  *(v1 + 616) = v24;
  *(v1 + 624) = OUTLINED_FUNCTION_250();
  v25 = sub_1B256E71C();
  *(v1 + 632) = v25;
  OUTLINED_FUNCTION_26_7(v25);
  *(v1 + 640) = v26;
  *(v1 + 648) = OUTLINED_FUNCTION_250();
  OUTLINED_FUNCTION_146_2();
  v27 = sub_1B256E51C();
  *(v1 + 656) = v27;
  OUTLINED_FUNCTION_26_7(v27);
  *(v1 + 664) = v28;
  *(v1 + 672) = OUTLINED_FUNCTION_250();
  *(v1 + 680) = *(v21 - 8);
  *(v1 + 688) = swift_task_alloc();
  *(v1 + 696) = swift_task_alloc();
  *(v1 + 233) = *v5;
  v29 = OUTLINED_FUNCTION_31_10();

  return MEMORY[0x1EEE6DFA0](v29, v30, v31);
}

uint64_t sub_1B254713C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, unint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  OUTLINED_FUNCTION_291_0();
  a39 = v41;
  a40 = v42;
  OUTLINED_FUNCTION_353();
  a38 = v40;
  v252 = *(v40 + 233);
  v235 = *(v40 + 696);
  v43 = *(v40 + 672);
  v44 = *(v40 + 664);
  v45 = *(v40 + 656);
  v241 = *(v40 + 640);
  v242 = *(v40 + 600);
  v245 = *(v40 + 592);
  v243 = *(v40 + 584);
  v237 = *(v40 + 576);
  v238 = *(v40 + 648);
  v248 = *(v40 + 512);
  v46 = *(v40 + 336);
  v236 = *(v40 + 328);
  *(v40 + 704) = OBJC_IVAR____TtC8StoreKit19StoreProductManager_log;
  v47 = sub_1B24D3E10();
  v239 = v48;
  v240 = v47;
  *(v40 + 712) = v47;
  *(v40 + 720) = v48;
  v49 = OUTLINED_FUNCTION_265_0();
  MEMORY[0x1B2749E40](v49);
  OUTLINED_FUNCTION_203_1();
  swift_getWitnessTable();
  sub_1B256E8FC();
  (*(v44 + 8))(v43, v45);
  sub_1B256E72C();
  OUTLINED_FUNCTION_50_5(v46 + 128, v40 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2CE8, &qword_1B2587278);
  OUTLINED_FUNCTION_82_4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_28_1();
  sub_1B256DFFC();
  swift_endAccess();
  v50 = OUTLINED_FUNCTION_13_5();
  v51(v50);
  LOBYTE(a28) = v252;
  v253 = v46;
  sub_1B25456E0(v240, v239, &a28);
  v52 = MEMORY[0x1E69E7CD0];
  *(v40 + 256) = MEMORY[0x1E69E7CD0];
  MEMORY[0x1B2749E30](v237, v243);
  sub_1B256E86C();
  do
  {
    sub_1B256E87C();
    if (!*(v40 + 112))
    {
      break;
    }

    v53 = v52;
    v54 = *(v40 + 96);
    OUTLINED_FUNCTION_278_0(v253 + 112, v40 + 168);
    OUTLINED_FUNCTION_361();
    if (!v55 || (sub_1B2458898(), (v56 & 1) == 0))
    {
      swift_endAccess();

      break;
    }

    v57 = *(v40 + 568);
    OUTLINED_FUNCTION_3_38();
    sub_1B255FE0C();
    OUTLINED_FUNCTION_2_40();
    OUTLINED_FUNCTION_326_0();
    sub_1B25636F8();
    swift_endAccess();

    v58 = *(v57 + *(v248 + 24));
    if (v54)
    {
      v59 = swift_allocObject();
      v59[2] = sub_1B23FB6F4;
      v59[3] = 0;
      v59[4] = v58;
      v59[5] = sub_1B2549494;
      v59[6] = 0;
      v59[7] = sub_1B2564624;
      v59[8] = 0;
      v59[9] = sub_1B256462C;
      v59[10] = 0;
      *(v40 + 16) = v58;
      *(v40 + 24) = sub_1B2549494;
      *(v40 + 32) = 0;
      *(v40 + 40) = sub_1B2564624;
      *(v40 + 48) = 0;
      *(v40 + 56) = sub_1B25647EC;
      *(v40 + 64) = v59;
      swift_bridgeObjectRetain_n();
      v52 = sub_1B2563C84(v40 + 16, v53);

      OUTLINED_FUNCTION_0_47();
      sub_1B2563750();
      *(v40 + 256) = v52;
      continue;
    }

LABEL_8:
    v63 = *(v58 + 16);
    v64 = v54;
    while (1)
    {
      if (v64 == v63)
      {
        *(v40 + 224) = 0;
        v54 = v63;
      }

      else
      {
        if ((v64 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
          return MEMORY[0x1EEE6DA40](v60, v61, v62);
        }

        if (v64 >= *(v58 + 16))
        {
          goto LABEL_100;
        }

        sub_1B24C5C14();
        v54 = v64 + 1;
      }

      *(v40 + 232) = v64 == v63;
      sub_1B24C42F0();
      if (*(v40 + 248))
      {
        break;
      }

      sub_1B24C42F0();
      Strong = swift_weakLoadStrong();
      v60 = sub_1B256615C(v40 + 304, &qword_1EB7D0460);
      v64 = v54;
      if (Strong)
      {
        sub_1B25603E8(&a28, Strong);

        goto LABEL_8;
      }
    }

    OUTLINED_FUNCTION_0_47();
    sub_1B2563750();
    v52 = *(v40 + 256);
  }

  while (v52[2]);
  (*(*(v40 + 616) + 8))(*(v40 + 624), *(v40 + 608));
  v66 = v52[2];
  v67 = MEMORY[0x1E69E7CC0];
  if (v66)
  {
    v246 = v40;
    a28 = MEMORY[0x1E69E7CC0];
    sub_1B256E64C();
    v60 = sub_1B2564214(v52);
    v68 = v60;
    v69 = v61;
    v70 = 0;
    v71 = v52 + 7;
    v72 = 1;
    if ((v60 & 0x8000000000000000) == 0)
    {
      while (v68 < v72 << *(v52 + 32))
      {
        v73 = v68 >> 6;
        v74 = v72 << v68;
        if ((v71[v68 >> 6] & (v72 << v68)) == 0)
        {
          goto LABEL_101;
        }

        if (*(v52 + 9) != v69)
        {
          goto LABEL_102;
        }

        v250 = v70;
        v254 = v62;

        sub_1B256E61C();
        sub_1B256E65C();
        OUTLINED_FUNCTION_320_0();
        sub_1B256E66C();
        v60 = sub_1B256E62C();
        if (v254)
        {
          goto LABEL_108;
        }

        v75 = 1 << *(v52 + 32);
        if (v68 >= v75)
        {
          goto LABEL_103;
        }

        if ((v71[v73] & v74) == 0)
        {
          goto LABEL_104;
        }

        if (*(v52 + 9) != v69)
        {
          goto LABEL_105;
        }

        OUTLINED_FUNCTION_411();
        if (v76)
        {
          v77 = v73 << 6;
          v78 = &v52[v73 + 8];
          v79 = v73 + 1;
          while (v79 < (v75 + 63) >> 6)
          {
            v81 = *v78++;
            v80 = v81;
            v77 += 64;
            ++v79;
            if (v81)
            {
              v82 = OUTLINED_FUNCTION_376();
              v60 = sub_1B25647E0(v82, v83, 0);
              v72 = 1;
              v75 = __clz(__rbit64(v80)) + v77;
              goto LABEL_37;
            }
          }

          v84 = OUTLINED_FUNCTION_376();
          v60 = sub_1B25647E0(v84, v85, 0);
          v72 = 1;
        }

        else
        {
          OUTLINED_FUNCTION_410();
        }

LABEL_37:
        v70 = v250 + 1;
        if (v250 + 1 == v66)
        {
          goto LABEL_40;
        }

        v62 = 0;
        v69 = *(v52 + 9);
        v68 = v75;
        if (v75 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_40:
    v86 = v246[61];

    v87 = a28;
    sub_1B256E72C();
    OUTLINED_FUNCTION_82_4();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_157_0();
    v88 = sub_1B256DCCC();
    v246[91] = v88;
    v89 = sub_1B256DDAC();
    v246[92] = v89;
    OUTLINED_FUNCTION_102_3(v86, v90, v91, v89);
    OUTLINED_FUNCTION_154();

    v92 = sub_1B256DD5C();
    OUTLINED_FUNCTION_187_1();
    v93 = swift_allocObject();
    v94 = MEMORY[0x1E69E85E0];
    v93[2] = v92;
    v93[3] = v94;
    v93[4] = v87;
    v93[5] = v88;
    OUTLINED_FUNCTION_107_0();
    sub_1B247E0D8();
    v246[93] = v95;
    v96 = swift_task_alloc();
    v246[94] = v96;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0E90, &unk_1B2587290);
    OUTLINED_FUNCTION_455();
    *v96 = v97;
    v96[1] = sub_1B25484FC;
    OUTLINED_FUNCTION_310_0();
    OUTLINED_FUNCTION_216();

    return MEMORY[0x1EEE6DA40](v60, v61, v62);
  }

  OUTLINED_FUNCTION_175_1();
  sub_1B256E4FC();
  OUTLINED_FUNCTION_466();
  MEMORY[0x1B2749D50](0xD000000000000025, 0x80000001B2592AC0);
  OUTLINED_FUNCTION_41_1();
  sub_1B256EB0C();
  v99 = a29;
  v255 = a28;

  v100 = sub_1B256E08C();

  v101 = sub_1B256D5CC();

  v102 = os_log_type_enabled(v101, v100);
  v103 = MEMORY[0x1E69E7CA0];
  if (v102)
  {
    v104 = *(v40 + 720);
    OUTLINED_FUNCTION_21_3();
    OUTLINED_FUNCTION_46_1();
    *"ype" = 136446466;
    OUTLINED_FUNCTION_39_2();
    a27 = v105;
    a28 = v106;
    a29 = v107;
    v108 = OUTLINED_FUNCTION_12_11();
    MEMORY[0x1B2749D50](v108);
    OUTLINED_FUNCTION_94_0();
    OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_328_0();
    *algn_1B2577004 = v104;
    OUTLINED_FUNCTION_74_0();
    sub_1B2519814(v255, v99, &a27);
    OUTLINED_FUNCTION_154();

    unk_1B257700E = &a28;
    OUTLINED_FUNCTION_247(&dword_1B23EF000, v109, v100, "%{public}s%{public}s");
    OUTLINED_FUNCTION_276_0(v110, v111, v103 + 8);
    OUTLINED_FUNCTION_63_0();
    OUTLINED_FUNCTION_44_1();
  }

  else
  {
  }

  v112 = *(v40 + 696);
  v113 = *(v40 + 680);
  v114 = *(v40 + 576);
  v251 = *(v40 + 480);
  type metadata accessor for StoreProductManager.CollectionObserver(0);
  v115 = *(v113 + 16);
  v116 = OUTLINED_FUNCTION_24();
  (v115)(v116);
  OUTLINED_FUNCTION_202_1();
  v117 = OUTLINED_FUNCTION_14_3();
  v256 = sub_1B254A19C(v117, v118, v119);
  v120 = OUTLINED_FUNCTION_24();
  v247 = v115;
  v249 = v113 + 16;
  (v115)(v120);
  sub_1B256E6EC();
  while (1)
  {
    v121 = *(v40 + 480);
    sub_1B256E6FC();
    v122 = *(v40 + 200);
    if (!v122)
    {
      break;
    }

    OUTLINED_FUNCTION_377();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2CC0, &qword_1B2587238);
    v123 = OUTLINED_FUNCTION_150_0();
    __swift_storeEnumTagSinglePayload(v123, v124, v125, v126);
    swift_weakInit();
    *(v121 + *(v114 + 24)) = v67;
    OUTLINED_FUNCTION_50_5(v115 + 112, v40 + 144);
    OUTLINED_FUNCTION_3_38();
    OUTLINED_FUNCTION_18_1();
    sub_1B255FE0C();
    swift_isUniquelyReferenced_nonNull_native();
    a28 = *(v115 + 112);
    *(v115 + 112) = 0x8000000000000000;
    OUTLINED_FUNCTION_285_0();
    sub_1B2458898();
    OUTLINED_FUNCTION_25_11();
    v115 = v127 + v128;
    if (__OFADD__(v127, v128))
    {
      goto LABEL_106;
    }

    v129 = v60;
    v130 = v61;
    v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7CFEA8, &qword_1B2577D30);
    v132 = OUTLINED_FUNCTION_493(v131);
    v133 = a28;
    if (v132)
    {
      OUTLINED_FUNCTION_285_0();
      v134 = sub_1B2458898();
      if ((v130 & 1) != (v135 & 1))
      {
        OUTLINED_FUNCTION_0_47();
        sub_1B2563750();
        OUTLINED_FUNCTION_216();

        return sub_1B256EC9C();
      }

      v129 = v134;
    }

    OUTLINED_FUNCTION_360();
    if ((v130 & 1) == 0)
    {
      OUTLINED_FUNCTION_433();
      *(v136 + 64) |= v137;
      v138 = (*(v133 + 48) + 16 * v129);
      *v138 = v112;
      v138[1] = v122;
      OUTLINED_FUNCTION_3_38();
      v60 = sub_1B255FE0C();
      v139 = *(v133 + 16);
      v140 = __OFADD__(v139, 1);
      v141 = v139 + 1;
      if (v140)
      {
        goto LABEL_107;
      }

      *(v133 + 16) = v141;
    }

    OUTLINED_FUNCTION_396();
    swift_weakAssign();
    v114 = *(v112 + 24);
    v142 = *(v129 + v114);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v129 + v114) = v142;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_38();
      sub_1B24495A0();
      OUTLINED_FUNCTION_468(v146);
    }

    v145 = *(v142 + 16);
    v144 = *(v142 + 24);
    v112 = v145 + 1;
    if (v145 >= v144 >> 1)
    {
      OUTLINED_FUNCTION_69_0(v144);
      OUTLINED_FUNCTION_121_2();
      sub_1B24495A0();
      OUTLINED_FUNCTION_468(v147);
    }

    OUTLINED_FUNCTION_314_0();
    sub_1B24C42F0();
    OUTLINED_FUNCTION_204_0();
    sub_1B2563750();
    swift_endAccess();

    OUTLINED_FUNCTION_117_0();
    sub_1B2563750();
  }

  v148 = OUTLINED_FUNCTION_217_0();
  v149(v148);
  v257 = MEMORY[0x1E69E7CD0];
  v150 = OUTLINED_FUNCTION_22_1();
  v247(v150);
  sub_1B256E6EC();
  OUTLINED_FUNCTION_454();
  v244 = MEMORY[0x1E69E7CC0];
  v151 = &qword_1EB7D22C8;
  while (1)
  {
    sub_1B256E6FC();
    if (!*(v40 + 216))
    {
      break;
    }

    v152 = *(v40 + 336);
    OUTLINED_FUNCTION_278_0(v152 + 112, v40 + 120);
    if (!*(*(v152 + 112) + 16) || (OUTLINED_FUNCTION_458(), sub_1B2458898(), (v153 & 1) == 0))
    {
      swift_endAccess();
      goto LABEL_78;
    }

    v154 = v151;
    v155 = *(v40 + 528);
    OUTLINED_FUNCTION_3_38();
    sub_1B255FE0C();
    OUTLINED_FUNCTION_2_40();
    sub_1B25636F8();
    swift_endAccess();
    OUTLINED_FUNCTION_326_0();
    sub_1B24C5C14();
    v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2CC0, &qword_1B2587238);
    v157 = OUTLINED_FUNCTION_208_0();
    __swift_getEnumTagSinglePayload(v157, v158, v156);
    OUTLINED_FUNCTION_448();
    v251 = v156;
    if (v76)
    {
      v159 = OUTLINED_FUNCTION_22_1();
      sub_1B256615C(v159, v160);
      OUTLINED_FUNCTION_16_2();
      __swift_storeEnumTagSinglePayload(v161, v162, v163, v155);
    }

    else
    {
      v164 = OUTLINED_FUNCTION_312();
      v165(v164);
      OUTLINED_FUNCTION_188_1();
      __swift_storeEnumTagSinglePayload(v166, v167, v168, v155);
      OUTLINED_FUNCTION_1_44();
      sub_1B2563750();
    }

    v169 = *(v40 + 384);
    sub_1B24C5C14();
    v170 = OUTLINED_FUNCTION_184();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v170, v171, v169);
    v173 = *(v40 + 440);
    if (EnumTagSinglePayload == 1)
    {
      v151 = v154;
      v174 = OUTLINED_FUNCTION_326_0();
      sub_1B256615C(v174, v175);
      v176 = v251;
    }

    else
    {
      v177 = OUTLINED_FUNCTION_282_0();
      v178(v177);
      sub_1B256D34C();
      OUTLINED_FUNCTION_138_0();
      sub_1B256D2BC();
      v179 = OUTLINED_FUNCTION_372();
      (unk_1B257DD30)(v179);
      v180 = v156;
      v151 = &qword_1EB7D22C8;
      (unk_1B257DD30)(v169, v180);
      sub_1B256615C(v173, &qword_1EB7D0088);
      v176 = v251;
      if (v247)
      {
        OUTLINED_FUNCTION_0_47();
        sub_1B2563750();
        goto LABEL_78;
      }
    }

    OUTLINED_FUNCTION_446();
    sub_1B24C5C14();
    v181 = OUTLINED_FUNCTION_184();
    v183 = __swift_getEnumTagSinglePayload(v181, v182, v176);
    v185 = *(v40 + 344);
    v184 = *(v40 + 352);
    if (v183 == 1)
    {
      v186 = *(v40 + 416);
      OUTLINED_FUNCTION_0_47();
      sub_1B2563750();
      sub_1B256615C(v186, &qword_1EB7D2CD8);
      OUTLINED_FUNCTION_16_2();
      __swift_storeEnumTagSinglePayload(v187, v188, v189, v184);
LABEL_77:
      sub_1B256615C(*(v40 + 344), &qword_1EB7D2330);
LABEL_78:
      OUTLINED_FUNCTION_294_0();
      OUTLINED_FUNCTION_398();
    }

    else
    {
      OUTLINED_FUNCTION_4_27();
      OUTLINED_FUNCTION_320_0();
      sub_1B25636F8();
      OUTLINED_FUNCTION_188_1();
      __swift_storeEnumTagSinglePayload(v190, v191, v192, v184);
      v193 = OUTLINED_FUNCTION_445();
      v194(v193);
      OUTLINED_FUNCTION_268_0(v185, 1, v184);
      if (v76)
      {
        OUTLINED_FUNCTION_0_47();
        sub_1B2563750();
        v151 = &qword_1EB7D22C8;
        goto LABEL_77;
      }

      OUTLINED_FUNCTION_4_27();
      OUTLINED_FUNCTION_117_0();
      sub_1B25636F8();
      OUTLINED_FUNCTION_5_32();
      OUTLINED_FUNCTION_38_7();
      sub_1B255FE0C();
      v195 = v244;
      v196 = swift_isUniquelyReferenced_nonNull_native();
      if ((v196 & 1) == 0)
      {
        OUTLINED_FUNCTION_38();
        sub_1B2448D30();
        v195 = v199;
      }

      v198 = *(v195 + 16);
      v197 = *(v195 + 24);
      if (v198 >= v197 >> 1)
      {
        OUTLINED_FUNCTION_109_4(v197);
        sub_1B2448D30();
        v195 = v200;
      }

      OUTLINED_FUNCTION_1_44();
      sub_1B2563750();
      OUTLINED_FUNCTION_0_47();
      sub_1B2563750();
      *(v195 + 16) = v198 + 1;
      OUTLINED_FUNCTION_114_2();
      v244 = v195;
      OUTLINED_FUNCTION_4_27();
      sub_1B25636F8();
      v151 = &qword_1EB7D22C8;
    }
  }

  v241(*(v40 + 472), *(v40 + 456));
  if (*(v244 + 16))
  {
    sub_1B254A1F0(v244, MEMORY[0x1E69E7CD0], v257);
    if (!*(v257 + 16))
    {
      sub_1B254B9CC();
    }
  }

  v201 = *(v40 + 720);
  if (*(v257 + 16))
  {
    v202 = *(v40 + 704);
    v203 = *(v40 + 336);
    OUTLINED_FUNCTION_175_1();
    sub_1B256E4FC();
    OUTLINED_FUNCTION_466();
    OUTLINED_FUNCTION_391();
    v204 = *(v244 + 16);

    *(v40 + 280) = v204;
    v205 = MEMORY[0x1E69E6590];
    OUTLINED_FUNCTION_201_0();
    v206 = sub_1B256EAAC();
    MEMORY[0x1B2749D50](v206);

    MEMORY[0x1B2749D50](&type metadata for StoreProductManager.ProductID.Kind + 1, 0x80000001B2592B20);
    *(v40 + 288) = *(v257 + 16);

    OUTLINED_FUNCTION_201_0();
    v207 = sub_1B256EAAC();
    MEMORY[0x1B2749D50](v207);

    OUTLINED_FUNCTION_75_0();
    MEMORY[0x1B2749D50](0xD000000000000017);
    v208 = a29;
    v251 = a28;
    v209 = sub_1B256E08C();

    v210 = v203 + v202;
    sub_1B256D5CC();
    OUTLINED_FUNCTION_21_7();

    v211 = os_log_type_enabled(v205, v209);
    v212 = *(v40 + 720);
    if (v211)
    {
      v213 = *(v40 + 712);
      OUTLINED_FUNCTION_21_3();
      v214 = OUTLINED_FUNCTION_3_23();
      *v201 = 136446466;
      OUTLINED_FUNCTION_10_23(v214);
      MEMORY[0x1B2749D50](v213, v212);
      OUTLINED_FUNCTION_94_0();
      OUTLINED_FUNCTION_156_1();
      OUTLINED_FUNCTION_328_0();
      *(v201 + 4) = v213;
      OUTLINED_FUNCTION_207_0();
      sub_1B2519814(v251, v208, &a27);
      OUTLINED_FUNCTION_399();
      *(v201 + 14) = v210;
      OUTLINED_FUNCTION_327_0(&dword_1B23EF000, v205, v209, "%{public}s%{public}s");
      OUTLINED_FUNCTION_96_0();
      OUTLINED_FUNCTION_11_4();
      OUTLINED_FUNCTION_10_7();
    }

    else
    {
    }

    v219 = *(v40 + 720);
    OUTLINED_FUNCTION_86_2();
    v220 = OUTLINED_FUNCTION_457();
    sub_1B254C1C0(v220, v221, v222, v223, v219, v224);

    v225 = OUTLINED_FUNCTION_13_5();
    v226(v225);
  }

  else
  {
    OUTLINED_FUNCTION_383();
    v217 = OUTLINED_FUNCTION_38_7();
    v218(v217);
  }

  OUTLINED_FUNCTION_154_0();

  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_216();

  return v229(v227, v228, v229, v230, v231, v232, v233, v234, a9, a10, a11, v235, v236, v237, v238, v239, v240, v241, v242, v244, v245, v247, v249, v251, v256, v257, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_1B25484FC()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v2 = *(v1 + 336);
  v3 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v4 = v3;

  return MEMORY[0x1EEE6DFA0](sub_1B2548618, v2, 0);
}

void sub_1B2548618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t (*a18)(void, void), uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void (*a23)(uint64_t), uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, unint64_t a28, unint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  OUTLINED_FUNCTION_291_0();
  a39 = v41;
  a40 = v42;
  OUTLINED_FUNCTION_353();
  a38 = v40;
  v43 = *(v40 + 264);
  if (v43)
  {
    v44 = StoreProductManager.CollectionObserver.error.getter();
    if (v44)
    {
      v45 = *(v40 + 736);
      v46 = *(v40 + 720);
      v47 = *(v40 + 712);
      v48 = *(v40 + 233);
      v49 = *(v40 + 336);

      OUTLINED_FUNCTION_16_2();
      __swift_storeEnumTagSinglePayload(v50, v51, v52, v45);
      OUTLINED_FUNCTION_9_25();
      v55 = sub_1B2565104(v53, v54, &protocol conformance descriptor for StoreProductManager);
      v56 = swift_allocObject();
      *(v56 + 16) = v49;
      *(v56 + 24) = v55;
      *(v56 + 32) = v49;
      *(v56 + 40) = v43;
      *(v56 + 48) = v47;
      *(v56 + 56) = v46;
      *(v56 + 64) = v48;
      swift_retain_n();

      OUTLINED_FUNCTION_107_0();
      sub_1B247DAA8();
    }

    v210 = v43;
    v57 = *(v40 + 728);
    v58 = *(v40 + 704);
    v59 = *(v40 + 336);
    OUTLINED_FUNCTION_175_1();
    sub_1B256E4FC();

    a28 = 0xD000000000000029;
    a29 = 0x80000001B2592B60;
    MEMORY[0x1B2749EE0](v57, MEMORY[0x1E69E6158]);

    v60 = OUTLINED_FUNCTION_13_5();
    MEMORY[0x1B2749D50](v60);

    v61 = a29;
    v209 = a28;
    v62 = sub_1B256E0CC();

    v63 = v59 + v58;
    v64 = sub_1B256D5CC();

    if (!os_log_type_enabled(v64, v62))
    {

      v83 = OUTLINED_FUNCTION_38_7();
      goto LABEL_60;
    }

    v65 = *(v40 + 712);
    v66 = *(v40 + 680);
    a22 = *(v40 + 576);
    a23 = *(v40 + 696);
    v67 = OUTLINED_FUNCTION_21_3();
    v68 = OUTLINED_FUNCTION_20_4();
    *v67 = 136446466;
    OUTLINED_FUNCTION_10_23(v68);
    v69 = OUTLINED_FUNCTION_50_0();
    MEMORY[0x1B2749D50](v69);
    OUTLINED_FUNCTION_94_0();
    OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_28_12();
    *(v67 + 4) = v65;
    OUTLINED_FUNCTION_368();
    sub_1B2519814(v209, v61, &a27);
    OUTLINED_FUNCTION_67_2();

    *(v67 + 14) = v63;
    OUTLINED_FUNCTION_404(&dword_1B23EF000, v64, v62, "%{public}s%{public}s");
    OUTLINED_FUNCTION_23_11();
    OUTLINED_FUNCTION_11_4();
    OUTLINED_FUNCTION_11_4();

    (*(v66 + 8))(a23, a22);
LABEL_61:
    OUTLINED_FUNCTION_154_0();

    OUTLINED_FUNCTION_141();
    OUTLINED_FUNCTION_216();

    v203(v201, v202, v203, v204, v205, v206, v207, v208, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, v209, v210, a26, a27, a28, a29, a30, a31, a32);
    return;
  }

  v70 = *(v40 + 720);
  v71 = *(v40 + 704);
  v72 = *(v40 + 336);
  OUTLINED_FUNCTION_175_1();
  sub_1B256E4FC();
  OUTLINED_FUNCTION_466();
  MEMORY[0x1B2749D50](0xD000000000000025, 0x80000001B2592AC0);
  OUTLINED_FUNCTION_41_1();
  sub_1B256EB0C();

  v73 = sub_1B256E08C();

  v74 = v72 + v71;
  v75 = sub_1B256D5CC();

  if (os_log_type_enabled(v75, v73))
  {
    v76 = *(v40 + 720);
    OUTLINED_FUNCTION_21_3();
    v77 = OUTLINED_FUNCTION_126_1();
    *v70 = 136446466;
    OUTLINED_FUNCTION_10_23(v77);
    v78 = OUTLINED_FUNCTION_12_11();
    MEMORY[0x1B2749D50](v78);
    OUTLINED_FUNCTION_94_0();
    OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_328_0();
    *(v70 + 4) = v76;
    OUTLINED_FUNCTION_135_2();
    v79 = OUTLINED_FUNCTION_157_0();
    sub_1B2519814(v79, v80, v81);
    OUTLINED_FUNCTION_154();

    *(v70 + 14) = v74;
    OUTLINED_FUNCTION_153_1(&dword_1B23EF000, v82, v73, "%{public}s%{public}s");
    OUTLINED_FUNCTION_101_2();
    OUTLINED_FUNCTION_63_0();
    OUTLINED_FUNCTION_22_8();
  }

  else
  {
  }

  v85 = *(v40 + 696);
  v86 = *(v40 + 680);
  v87 = *(v40 + 576);
  type metadata accessor for StoreProductManager.CollectionObserver(0);
  v89 = *(v86 + 16);
  v88 = v86 + 16;
  v90 = OUTLINED_FUNCTION_24();
  v89(v90);
  OUTLINED_FUNCTION_202_1();
  v91 = OUTLINED_FUNCTION_14_3();
  v210 = sub_1B254A19C(v91, v92, v93);
  v94 = OUTLINED_FUNCTION_24();
  a23 = v89;
  v209 = v88;
  v89(v94);
  sub_1B256E6EC();
  while (1)
  {
    v95 = *(v40 + 480);
    sub_1B256E6FC();
    v96 = *(v40 + 200);
    if (!v96)
    {
      v124 = OUTLINED_FUNCTION_217_0();
      v125(v124);
      a26 = MEMORY[0x1E69E7CD0];
      v126 = OUTLINED_FUNCTION_22_1();
      a23(v126);
      sub_1B256E6EC();
      OUTLINED_FUNCTION_454();
      a20 = MEMORY[0x1E69E7CC0];
      for (i = &qword_1EB7D22C8; ; i = &qword_1EB7D22C8)
      {
        while (1)
        {
          sub_1B256E6FC();
          if (!*(v40 + 216))
          {
            a18(*(v40 + 472), *(v40 + 456));
            if (*(a20 + 16))
            {
              sub_1B254A1F0(a20, MEMORY[0x1E69E7CD0], a26);
              if (!*(a26 + 16))
              {
                sub_1B254B9CC();
              }
            }

            v178 = *(v40 + 720);
            if (*(a26 + 16))
            {
              v179 = *(v40 + 704);
              v180 = *(v40 + 336);
              OUTLINED_FUNCTION_175_1();
              sub_1B256E4FC();
              OUTLINED_FUNCTION_466();
              OUTLINED_FUNCTION_391();
              v181 = *(a20 + 16);

              *(v40 + 280) = v181;
              v182 = MEMORY[0x1E69E6590];
              OUTLINED_FUNCTION_201_0();
              v183 = sub_1B256EAAC();
              MEMORY[0x1B2749D50](v183);

              MEMORY[0x1B2749D50](&type metadata for StoreProductManager.ProductID.Kind + 1, 0x80000001B2592B20);
              *(v40 + 288) = *(a26 + 16);

              OUTLINED_FUNCTION_201_0();
              v184 = sub_1B256EAAC();
              MEMORY[0x1B2749D50](v184);

              OUTLINED_FUNCTION_75_0();
              MEMORY[0x1B2749D50](0xD000000000000017);
              v185 = a29;
              v209 = a28;
              v186 = sub_1B256E08C();

              v187 = v180 + v179;
              sub_1B256D5CC();
              OUTLINED_FUNCTION_21_7();

              v188 = os_log_type_enabled(v182, v186);
              v189 = *(v40 + 720);
              if (v188)
              {
                v190 = *(v40 + 712);
                OUTLINED_FUNCTION_21_3();
                v191 = OUTLINED_FUNCTION_3_23();
                *v178 = 136446466;
                OUTLINED_FUNCTION_10_23(v191);
                MEMORY[0x1B2749D50](v190, v189);
                OUTLINED_FUNCTION_94_0();
                OUTLINED_FUNCTION_156_1();
                OUTLINED_FUNCTION_328_0();
                *(v178 + 4) = v190;
                OUTLINED_FUNCTION_207_0();
                sub_1B2519814(v209, v185, &a27);
                OUTLINED_FUNCTION_399();
                *(v178 + 14) = v187;
                OUTLINED_FUNCTION_327_0(&dword_1B23EF000, v182, v186, "%{public}s%{public}s");
                OUTLINED_FUNCTION_96_0();
                OUTLINED_FUNCTION_11_4();
                OUTLINED_FUNCTION_10_7();
              }

              else
              {
              }

              v195 = *(v40 + 720);
              OUTLINED_FUNCTION_86_2();
              v196 = OUTLINED_FUNCTION_457();
              sub_1B254C1C0(v196, v197, v198, v199, v195, v200);

              v83 = OUTLINED_FUNCTION_13_5();
LABEL_60:
              v84(v83);
            }

            else
            {
              OUTLINED_FUNCTION_383();
              v193 = OUTLINED_FUNCTION_38_7();
              v194(v193);
            }

            goto LABEL_61;
          }

          v128 = *(v40 + 336);
          OUTLINED_FUNCTION_278_0(v128 + 112, v40 + 120);
          if (!*(*(v128 + 112) + 16) || (OUTLINED_FUNCTION_458(), sub_1B2458898(), (v129 & 1) == 0))
          {
            swift_endAccess();
            goto LABEL_42;
          }

          v130 = i;
          v131 = *(v40 + 528);
          OUTLINED_FUNCTION_3_38();
          sub_1B255FE0C();
          OUTLINED_FUNCTION_2_40();
          sub_1B25636F8();
          swift_endAccess();
          OUTLINED_FUNCTION_326_0();
          sub_1B24C5C14();
          v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2CC0, &qword_1B2587238);
          v133 = OUTLINED_FUNCTION_208_0();
          __swift_getEnumTagSinglePayload(v133, v134, v132);
          OUTLINED_FUNCTION_448();
          v209 = v132;
          if (v135)
          {
            v136 = OUTLINED_FUNCTION_22_1();
            sub_1B256615C(v136, v137);
            OUTLINED_FUNCTION_16_2();
            __swift_storeEnumTagSinglePayload(v138, v139, v140, v131);
          }

          else
          {
            v141 = OUTLINED_FUNCTION_312();
            v142(v141);
            OUTLINED_FUNCTION_188_1();
            __swift_storeEnumTagSinglePayload(v143, v144, v145, v131);
            OUTLINED_FUNCTION_1_44();
            sub_1B2563750();
          }

          v146 = *(v40 + 384);
          sub_1B24C5C14();
          v147 = OUTLINED_FUNCTION_184();
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v147, v148, v146);
          v150 = *(v40 + 440);
          if (EnumTagSinglePayload == 1)
          {
            i = v130;
            v151 = OUTLINED_FUNCTION_326_0();
            sub_1B256615C(v151, v152);
            v153 = v209;
          }

          else
          {
            v154 = OUTLINED_FUNCTION_282_0();
            v155(v154);
            sub_1B256D34C();
            OUTLINED_FUNCTION_138_0();
            sub_1B256D2BC();
            v156 = OUTLINED_FUNCTION_372();
            (unk_1B257DD30)(v156);
            v157 = v132;
            i = &qword_1EB7D22C8;
            (unk_1B257DD30)(v146, v157);
            sub_1B256615C(v150, &qword_1EB7D0088);
            v153 = v209;
            if (a22)
            {
              OUTLINED_FUNCTION_0_47();
              sub_1B2563750();
              goto LABEL_42;
            }
          }

          OUTLINED_FUNCTION_446();
          sub_1B24C5C14();
          v158 = OUTLINED_FUNCTION_184();
          v160 = __swift_getEnumTagSinglePayload(v158, v159, v153);
          v162 = *(v40 + 344);
          v161 = *(v40 + 352);
          if (v160 != 1)
          {
            break;
          }

          v163 = *(v40 + 416);
          OUTLINED_FUNCTION_0_47();
          sub_1B2563750();
          sub_1B256615C(v163, &qword_1EB7D2CD8);
          OUTLINED_FUNCTION_16_2();
          __swift_storeEnumTagSinglePayload(v164, v165, v166, v161);
LABEL_41:
          sub_1B256615C(*(v40 + 344), &qword_1EB7D2330);
LABEL_42:
          OUTLINED_FUNCTION_294_0();
          OUTLINED_FUNCTION_398();
        }

        OUTLINED_FUNCTION_4_27();
        OUTLINED_FUNCTION_320_0();
        sub_1B25636F8();
        OUTLINED_FUNCTION_188_1();
        __swift_storeEnumTagSinglePayload(v167, v168, v169, v161);
        v170 = OUTLINED_FUNCTION_445();
        v171(v170);
        OUTLINED_FUNCTION_268_0(v162, 1, v161);
        if (v135)
        {
          OUTLINED_FUNCTION_0_47();
          sub_1B2563750();
          i = &qword_1EB7D22C8;
          goto LABEL_41;
        }

        OUTLINED_FUNCTION_4_27();
        OUTLINED_FUNCTION_117_0();
        sub_1B25636F8();
        OUTLINED_FUNCTION_5_32();
        OUTLINED_FUNCTION_38_7();
        sub_1B255FE0C();
        v172 = a20;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_38();
          sub_1B2448D30();
          v172 = v176;
        }

        v175 = *(v172 + 16);
        v174 = *(v172 + 24);
        if (v175 >= v174 >> 1)
        {
          OUTLINED_FUNCTION_109_4(v174);
          sub_1B2448D30();
          v172 = v177;
        }

        OUTLINED_FUNCTION_1_44();
        sub_1B2563750();
        OUTLINED_FUNCTION_0_47();
        sub_1B2563750();
        *(v172 + 16) = v175 + 1;
        OUTLINED_FUNCTION_114_2();
        a20 = v172;
        OUTLINED_FUNCTION_4_27();
        sub_1B25636F8();
      }
    }

    OUTLINED_FUNCTION_377();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2CC0, &qword_1B2587238);
    v97 = OUTLINED_FUNCTION_150_0();
    __swift_storeEnumTagSinglePayload(v97, v98, v99, v100);
    swift_weakInit();
    *(v95 + *(v87 + 24)) = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_50_5(v88 + 112, v40 + 144);
    OUTLINED_FUNCTION_3_38();
    OUTLINED_FUNCTION_18_1();
    sub_1B255FE0C();
    swift_isUniquelyReferenced_nonNull_native();
    a28 = *(v88 + 112);
    *(v88 + 112) = 0x8000000000000000;
    OUTLINED_FUNCTION_285_0();
    sub_1B2458898();
    OUTLINED_FUNCTION_25_11();
    v88 = v103 + v104;
    if (__OFADD__(v103, v104))
    {
      break;
    }

    v105 = v101;
    v106 = v102;
    v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7CFEA8, &qword_1B2577D30);
    v108 = OUTLINED_FUNCTION_493(v107);
    v109 = a28;
    if (v108)
    {
      OUTLINED_FUNCTION_285_0();
      v110 = sub_1B2458898();
      if ((v106 & 1) != (v111 & 1))
      {
        OUTLINED_FUNCTION_0_47();
        sub_1B2563750();
        OUTLINED_FUNCTION_216();

        sub_1B256EC9C();
        return;
      }

      v105 = v110;
    }

    OUTLINED_FUNCTION_360();
    if ((v106 & 1) == 0)
    {
      OUTLINED_FUNCTION_433();
      *(v112 + 64) |= v113;
      v114 = (*(v109 + 48) + 16 * v105);
      *v114 = v85;
      v114[1] = v96;
      OUTLINED_FUNCTION_3_38();
      sub_1B255FE0C();
      v115 = *(v109 + 16);
      v116 = __OFADD__(v115, 1);
      v117 = v115 + 1;
      if (v116)
      {
        goto LABEL_65;
      }

      *(v109 + 16) = v117;
    }

    OUTLINED_FUNCTION_396();
    swift_weakAssign();
    v87 = *(v85 + 24);
    v118 = *(v105 + v87);
    v119 = swift_isUniquelyReferenced_nonNull_native();
    *(v105 + v87) = v118;
    if ((v119 & 1) == 0)
    {
      OUTLINED_FUNCTION_38();
      sub_1B24495A0();
      OUTLINED_FUNCTION_468(v122);
    }

    v121 = *(v118 + 16);
    v120 = *(v118 + 24);
    v85 = v121 + 1;
    if (v121 >= v120 >> 1)
    {
      OUTLINED_FUNCTION_69_0(v120);
      OUTLINED_FUNCTION_121_2();
      sub_1B24495A0();
      OUTLINED_FUNCTION_468(v123);
    }

    OUTLINED_FUNCTION_314_0();
    sub_1B24C42F0();
    OUTLINED_FUNCTION_204_0();
    sub_1B2563750();
    swift_endAccess();

    OUTLINED_FUNCTION_117_0();
    sub_1B2563750();
  }

  __break(1u);
LABEL_65:
  __break(1u);
}

uint64_t sub_1B2549494@<X0>(uint64_t *a2@<X8>)
{
  result = swift_weakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1B25494BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1B25494C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  type metadata accessor for Product(0);
  v5[5] = swift_task_alloc();
  v6 = type metadata accessor for StoreProductManager.CollectionObserver.Storage(0);
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v5[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2E88, &qword_1B2587BB0);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  sub_1B256DD6C();
  v5[13] = sub_1B256DD5C();
  v8 = sub_1B256DCEC();

  return MEMORY[0x1EEE6DFA0](sub_1B2549640, v8, v7);
}

uint64_t sub_1B2549640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, unint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_291_0();
  OUTLINED_FUNCTION_353();
  v33 = v32[11];
  v77 = v32[10];
  v78 = v32[7];
  v34 = v32[4];
  v74 = v32[5];
  v75 = v32[8];
  v79 = v32;
  v35 = v32[3];

  result = sub_1B24D0D24();
  v37 = result;
  v38 = 0;
  v72 = v35 & 0xFFFFFFFFFFFFFF8;
  v73 = v35 & 0xC000000000000001;
  v71 = v35 + 32;
  v76 = v33 + 8;
  v70 = (v34 + 40);
  v39 = &qword_1EB7D2E88;
  v40 = &qword_1B2587BB0;
  v68 = result;
  v69 = v34;
  while (v38 != v37)
  {
    if (v73)
    {
      result = MEMORY[0x1B274A7A0](v38, v79[3]);
      v41 = result;
    }

    else
    {
      if (v38 >= *(v72 + 16))
      {
        goto LABEL_34;
      }

      v41 = *(v71 + 8 * v38);
    }

    if (__OFADD__(v38++, 1))
    {
      goto LABEL_33;
    }

    v43 = *(StoreProductManager.CollectionObserver.storage.getter() + 16);

    a26 = v43;
    if (v43 == *(v34 + 16))
    {
      a12 = v38;
      v44 = v79;
      a14 = v41;
      v45 = StoreProductManager.CollectionObserver.storage.getter();
      a24 = *(v45 + 16);

      v46 = 0;
      v47 = v70;
      a22 = v45;
      while (1)
      {
        if (a24 == v46)
        {

LABEL_27:
          v59 = a14;
          goto LABEL_28;
        }

        if (v46 >= *(v45 + 16))
        {
          break;
        }

        OUTLINED_FUNCTION_114_2();
        OUTLINED_FUNCTION_8_31();
        sub_1B255FE0C();
        if (a26 == v46)
        {

          OUTLINED_FUNCTION_14_22();
          sub_1B2563750();
          goto LABEL_27;
        }

        a27 = v47;
        a28 = v46;
        v48 = v44[12];
        v49 = *(v47 - 1);
        v50 = *v47;
        v51 = v40;
        v52 = v39;
        v53 = (v48 + *(v77 + 48));
        OUTLINED_FUNCTION_206_1();
        sub_1B25636F8();
        a29 = v49;
        *v53 = v49;
        v53[1] = v50;
        v39 = v52;
        v40 = v51;
        v44 = v79;
        OUTLINED_FUNCTION_38_7();
        sub_1B24C5C14();

        OUTLINED_FUNCTION_8_31();
        OUTLINED_FUNCTION_285_0();
        sub_1B255FE0C();
        if (swift_getEnumCaseMultiPayload() > 1)
        {
          OUTLINED_FUNCTION_4_27();
          sub_1B25636F8();
          v54 = *(v74 + 48);
          v55 = *(v74 + 56);

          OUTLINED_FUNCTION_1_44();
          sub_1B2563750();
        }

        else
        {
          v54 = *v79[8];
          v55 = *(v75 + 8);
        }

        v45 = a22;
        OUTLINED_FUNCTION_14_22();
        sub_1B2563750();
        v56 = v79[12];
        if (v54 == a29 && v55 == v50)
        {

          result = sub_1B256615C(v56, v39);
        }

        else
        {
          OUTLINED_FUNCTION_285_0();
          v58 = sub_1B256EB5C();

          result = sub_1B256615C(v56, v39);
          if ((v58 & 1) == 0)
          {

            v37 = v68;
            v34 = v69;
            v38 = a12;
            goto LABEL_23;
          }
        }

        v47 = a27 + 2;
        v46 = a28 + 1;
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      return result;
    }

LABEL_23:
  }

  v59 = 0;
  v44 = v79;
LABEL_28:
  *v44[2] = v59;

  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_216();

  return v61(v60, v61, v62, v63, v64, v65, v66, v67, a9, v68, v69, a12, v70, a14, v71, v72, v73, v74, v75, v76, v77, a22, v78, a24, v79, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t StoreProductManager.CollectionObserver.storage.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_38_7();
  sub_1B256D64C();

  return v1;
}

uint64_t StoreProductManager.CollectionObserver.Storage.id.getter()
{
  v0 = type metadata accessor for Product(0);
  v1 = OUTLINED_FUNCTION_2_2(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_13();
  type metadata accessor for StoreProductManager.CollectionObserver.Storage(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_8_31();
  OUTLINED_FUNCTION_117_0();
  sub_1B255FE0C();
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    OUTLINED_FUNCTION_38_7();
    sub_1B25636F8();

    OUTLINED_FUNCTION_1_44();
    sub_1B2563750();
  }

  return OUTLINED_FUNCTION_117_0();
}

uint64_t StoreProductManager.CollectionObserver.error.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_38_7();
  sub_1B256D64C();

  return v1;
}

uint64_t sub_1B2549BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 24) = a8;
  v12 = swift_task_alloc();
  *(v8 + 16) = v12;
  *v12 = v8;
  v12[1] = sub_1B24741E0;

  return sub_1B2549CB4(a5, a6, a7, (v8 + 24));
}

uint64_t sub_1B2549CB4(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(v5 + 48) = a3;
  *(v5 + 56) = v4;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910, &qword_1B257AFA0);
  *(v5 + 64) = swift_task_alloc();
  *(v5 + 88) = *a4;

  return MEMORY[0x1EEE6DFA0](sub_1B2549D60, v4, 0);
}

uint64_t sub_1B2549D60()
{
  OUTLINED_FUNCTION_21_5();
  v1 = v0[8];
  v2 = v0[4];
  v3 = sub_1B256DDAC();
  OUTLINED_FUNCTION_102_3(v1, v4, v5, v3);
  OUTLINED_FUNCTION_154();

  v6 = sub_1B256DD5C();
  v7 = OUTLINED_FUNCTION_405(&unk_1F29BB5D8);
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v2;
  OUTLINED_FUNCTION_107_0();
  sub_1B247E2D0();
  v0[9] = v9;
  v10 = swift_task_alloc();
  v0[10] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0E88, &qword_1B2587A70);
  OUTLINED_FUNCTION_455();
  *v10 = v11;
  v10[1] = sub_1B2549E80;
  OUTLINED_FUNCTION_310_0();

  return MEMORY[0x1EEE6DA40](v12, v13, v14);
}

uint64_t sub_1B2549E80()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v2 = *(v1 + 56);
  v3 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v4 = v3;

  return MEMORY[0x1EEE6DFA0](sub_1B2549F9C, v2, 0);
}

uint64_t sub_1B2549F9C()
{
  OUTLINED_FUNCTION_126();
  v20 = v0;
  v1 = v0[7];
  v2 = v0[2];
  v3 = OBJC_IVAR____TtC8StoreKit19StoreProductManager_log;
  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  sub_1B256E4FC();
  MEMORY[0x1B2749D50](0xD000000000000015, 0x80000001B2592D00);
  v0[3] = *(v2 + 16);
  v4 = sub_1B256EAAC();
  MEMORY[0x1B2749D50](v4);

  MEMORY[0x1B2749D50](0xD000000000000033, 0x80000001B2592D20);
  v5 = sub_1B256E08C();

  v6 = &v3[v1];
  sub_1B256D5CC();
  OUTLINED_FUNCTION_200_1();

  if (os_log_type_enabled(&v3[v1], v5))
  {
    OUTLINED_FUNCTION_21_3();
    v7 = OUTLINED_FUNCTION_3_23();
    v19[0] = v7;
    *v1 = 136446466;
    *(v1 + 4) = OUTLINED_FUNCTION_75_2(v7, v8, v19);
    OUTLINED_FUNCTION_207_0();
    v9 = OUTLINED_FUNCTION_50_0();
    v12 = sub_1B2519814(v9, v10, v11);

    *(v1 + 14) = v12;
    OUTLINED_FUNCTION_327_0(&dword_1B23EF000, v6, v5, "%{public}s%{public}s");
    OUTLINED_FUNCTION_101_2();
    OUTLINED_FUNCTION_63_0();
    OUTLINED_FUNCTION_10_7();
  }

  else
  {
  }

  if (*(v2 + 16))
  {
    OUTLINED_FUNCTION_86_2();
    sub_1B254C560(v2, v13, 0, v14, v15, v16);
  }

  OUTLINED_FUNCTION_7_2();

  return v17();
}

void sub_1B254A1F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v115 = a3;
  v112 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2330, &qword_1B2583CC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v105 = &v101 - v6;
  v104 = type metadata accessor for Product(0);
  v101 = *(v104 - 8);
  v7 = MEMORY[0x1EEE9AC00](v104);
  v103 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v116 = &v101 - v9;
  v10 = type metadata accessor for StoreProductManager.CollectionObserver.Storage(0);
  v126 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v102 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v106 = &v101 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v108 = (&v101 - v16);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v114 = (&v101 - v18);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v113 = (&v101 - v20);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v125 = (&v101 - v22);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v118 = (&v101 - v24);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v117 = (&v101 - v26);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = (&v101 - v28);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v101 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2E78, &qword_1B2587B98);
  MEMORY[0x1EEE9AC00](v32);
  v110 = (&v101 - v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2E80, &unk_1B2587BA0);
  v35 = MEMORY[0x1EEE9AC00](v34 - 8);
  v37 = &v101 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v123 = &v101 - v38;
  v119 = v3;
  v39 = StoreProductManager.CollectionObserver.storage.getter();
  v40 = 0;
  v109 = 0;
  v111 = v39;
  v41 = *(v39 + 16);
  v124 = v10;
  v121 = v32;
  v122 = v29;
  v127 = v37;
  for (i = v41; ; v41 = i)
  {
    if (v40 == v41)
    {
      v42 = 1;
      v40 = v41;
      goto LABEL_7;
    }

    if ((v40 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v40 >= *(v111 + 16))
    {
      goto LABEL_69;
    }

    *v110 = v40;
    sub_1B255FE0C();
    v37 = v127;
    sub_1B24C42F0();
    v42 = 0;
    ++v40;
LABEL_7:
    v43 = v123;
    __swift_storeEnumTagSinglePayload(v37, v42, 1, v32);
    sub_1B24C42F0();
    if (__swift_getEnumTagSinglePayload(v43, 1, v32) == 1)
    {
      goto LABEL_67;
    }

    v44 = *v43;
    sub_1B25636F8();
    sub_1B255FE0C();
    if (swift_getEnumCaseMultiPayload() > 1)
    {
      v47 = v116;
      sub_1B25636F8();
      v46 = *(v47 + 6);
      v45 = *(v47 + 7);

      sub_1B2563750();
    }

    else
    {
      v46 = *v29;
      v45 = v29[1];
    }

    if (*(a2 + 16))
    {
      sub_1B256ED3C();
      sub_1B256DA7C();
      v48 = sub_1B256ED7C();
      v49 = ~(-1 << *(a2 + 32));
      while (1)
      {
        v50 = v48 & v49;
        if (((*(a2 + 56 + (((v48 & v49) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v48 & v49)) & 1) == 0)
        {
          break;
        }

        v51 = (*(a2 + 48) + 16 * v50);
        if (*v51 != v46 || v51[1] != v45)
        {
          v53 = sub_1B256EB5C();
          v48 = v50 + 1;
          if ((v53 & 1) == 0)
          {
            continue;
          }
        }

        sub_1B255FE0C();
        if (swift_getEnumCaseMultiPayload() > 1)
        {
          v67 = v116;
          sub_1B25636F8();
          v55 = *(v67 + 6);
          v54 = *(v67 + 7);

          sub_1B2563750();
        }

        else
        {
          v55 = *v118;
          v54 = v118[1];
        }

        v68 = v117;
        *v117 = v55;
        v68[1] = v54;
        swift_storeEnumTagMultiPayload();
        swift_getKeyPath();
        swift_getKeyPath();
        v69 = sub_1B256D63C();
        v71 = v70;
        v72 = *v70;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v71 = v72;
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v44 & 0x8000000000000000) != 0)
          {
            goto LABEL_70;
          }
        }

        else
        {
          sub_1B2456E98();
          v72 = v97;
          *v71 = v97;
          if ((v44 & 0x8000000000000000) != 0)
          {
            goto LABEL_70;
          }
        }

        if (v44 >= *(v72 + 16))
        {
          goto LABEL_71;
        }

        v74 = v72 + ((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * v44;
        v75 = v117;
        goto LABEL_59;
      }
    }

    sub_1B255FE0C();
    if (swift_getEnumCaseMultiPayload() > 1)
    {
      v58 = v116;
      sub_1B25636F8();
      v57 = *(v58 + 6);
      v56 = *(v58 + 7);

      sub_1B2563750();
    }

    else
    {
      v57 = *v125;
      v56 = v125[1];
    }

    v59 = sub_1B24705F4(v57, v56, v115);

    if (v59)
    {
      sub_1B255FE0C();
      if (swift_getEnumCaseMultiPayload() > 1)
      {
        v76 = v116;
        sub_1B25636F8();
        v62 = *(v76 + 6);
        v61 = *(v76 + 7);

        sub_1B2563750();
      }

      else
      {
        v62 = *v114;
        v61 = v114[1];
      }

      v77 = v113;
      *v113 = v62;
      v77[1] = v61;
      swift_storeEnumTagMultiPayload();
      swift_getKeyPath();
      swift_getKeyPath();
      v69 = sub_1B256D63C();
      v79 = v78;
      v80 = *v78;
      v81 = swift_isUniquelyReferenced_nonNull_native();
      *v79 = v80;
      if (v81)
      {
        if ((v44 & 0x8000000000000000) != 0)
        {
          goto LABEL_72;
        }
      }

      else
      {
        sub_1B2456E98();
        v80 = v98;
        *v79 = v98;
        if ((v44 & 0x8000000000000000) != 0)
        {
          goto LABEL_72;
        }
      }

      if (v44 >= *(v80 + 16))
      {
        goto LABEL_73;
      }

      v74 = v80 + ((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * v44;
      v82 = &v130;
      goto LABEL_58;
    }

    if ((v44 & 0x8000000000000000) == 0 && v44 < *(v112 + 16))
    {
      v63 = v112 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v44;
      v64 = *(v63 + 56);
      v107 = *(v63 + 48);
      sub_1B255FE0C();
      if (swift_getEnumCaseMultiPayload() > 1)
      {
        v83 = v116;
        sub_1B25636F8();
        v66 = *(v83 + 6);
        v65 = *(v83 + 7);

        sub_1B2563750();
      }

      else
      {
        v66 = *v108;
        v65 = v108[1];
      }

      if (v107 == v66 && v64 == v65)
      {

LABEL_54:
        sub_1B255FE0C();
        swift_storeEnumTagMultiPayload();
        swift_getKeyPath();
        swift_getKeyPath();
        v69 = sub_1B256D63C();
        v94 = v93;
        v95 = *v93;
        v96 = swift_isUniquelyReferenced_nonNull_native();
        *v94 = v95;
        if ((v96 & 1) == 0)
        {
          sub_1B2456E98();
          v95 = v99;
          *v94 = v99;
        }

        if (v44 >= *(v95 + 16))
        {
          goto LABEL_74;
        }

        v74 = v95 + ((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * v44;
        v82 = &v129;
LABEL_58:
        v75 = *(v82 - 32);
LABEL_59:
        sub_1B2565BF4(v75, v74);
        v69(v128, 0);

        goto LABEL_60;
      }

      v85 = sub_1B256EB5C();

      if (v85)
      {
        goto LABEL_54;
      }
    }

    MEMORY[0x1EEE9AC00](v60);
    *(&v101 - 2) = v31;
    v86 = v105;
    v87 = v109;
    sub_1B24AB17C(sub_1B2565C70, (&v101 - 4), v112);
    v109 = v87;
    if (__swift_getEnumTagSinglePayload(v86, 1, v104) == 1)
    {
      sub_1B256615C(v86, &qword_1EB7D2330);
    }

    else
    {
      sub_1B25636F8();
      sub_1B255FE0C();
      swift_storeEnumTagMultiPayload();
      swift_getKeyPath();
      swift_getKeyPath();
      v88 = sub_1B256D63C();
      v90 = v89;
      v91 = *v89;
      v92 = swift_isUniquelyReferenced_nonNull_native();
      *v90 = v91;
      if (v92)
      {
        if ((v44 & 0x8000000000000000) != 0)
        {
          goto LABEL_66;
        }
      }

      else
      {
        sub_1B2456E98();
        v91 = v100;
        *v90 = v100;
        if ((v44 & 0x8000000000000000) != 0)
        {
LABEL_66:
          __break(1u);
LABEL_67:

          return;
        }
      }

      if (v44 >= *(v91 + 16))
      {
        goto LABEL_75;
      }

      sub_1B2565BF4(v102, v91 + ((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * v44);
      v88(v128, 0);

      sub_1B2563750();
    }

LABEL_60:
    sub_1B2563750();
    v32 = v121;
    v29 = v122;
    v37 = v127;
  }

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
}

void sub_1B254B048(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Product(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v78 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StoreProductManager.CollectionObserver.Storage(0);
  v85 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v73 = (&v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1EEE9AC00](v8);
  v72 = (&v72 - v11);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v86 = (&v72 - v13);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v80 = (&v72 - v15);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v79 = (&v72 - v17);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = (&v72 - v19);
  MEMORY[0x1EEE9AC00](v18);
  v89 = &v72 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2E78, &qword_1B2587B98);
  MEMORY[0x1EEE9AC00](v22);
  v74 = (&v72 - v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2E80, &unk_1B2587BA0);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v84 = &v72 - v28;
  v77 = v2;
  v29 = 0;
  v75 = StoreProductManager.CollectionObserver.storage.getter();
  v30 = *(v75 + 16);
  v76 = v7;
  v82 = v22;
  v83 = v20;
  v87 = v27;
  for (i = v30; ; v30 = i)
  {
    if (v29 == v30)
    {
      v31 = 1;
      v29 = v30;
      goto LABEL_7;
    }

    if ((v29 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v29 >= *(v75 + 16))
    {
      goto LABEL_51;
    }

    *v74 = v29;
    sub_1B255FE0C();
    v27 = v87;
    sub_1B24C42F0();
    v31 = 0;
    ++v29;
LABEL_7:
    __swift_storeEnumTagSinglePayload(v27, v31, 1, v22);
    v32 = v84;
    sub_1B24C42F0();
    if (__swift_getEnumTagSinglePayload(v32, 1, v22) == 1)
    {

      return;
    }

    v88 = *v32;
    sub_1B25636F8();
    sub_1B255FE0C();
    if (swift_getEnumCaseMultiPayload() > 1)
    {
      v35 = v78;
      sub_1B25636F8();
      v34 = *(v35 + 6);
      v33 = *(v35 + 7);

      sub_1B2563750();
    }

    else
    {
      v34 = *v20;
      v33 = v20[1];
    }

    if (*(a1 + 16))
    {
      sub_1B256ED3C();
      sub_1B256DA7C();
      v36 = sub_1B256ED7C();
      v37 = ~(-1 << *(a1 + 32));
      while (1)
      {
        v38 = v36 & v37;
        if (((*(a1 + 56 + (((v36 & v37) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v36 & v37)) & 1) == 0)
        {
          break;
        }

        v39 = (*(a1 + 48) + 16 * v38);
        if (*v39 != v34 || v39[1] != v33)
        {
          v41 = sub_1B256EB5C();
          v36 = v38 + 1;
          if ((v41 & 1) == 0)
          {
            continue;
          }
        }

        sub_1B255FE0C();
        if (swift_getEnumCaseMultiPayload() > 1)
        {
          v55 = v78;
          sub_1B25636F8();
          v43 = *(v55 + 6);
          v42 = *(v55 + 7);

          sub_1B2563750();
        }

        else
        {
          v43 = *v80;
          v42 = v80[1];
        }

        v56 = v79;
        *v79 = v43;
        v56[1] = v42;
        swift_storeEnumTagMultiPayload();
        swift_getKeyPath();
        swift_getKeyPath();
        v57 = sub_1B256D63C();
        v59 = v58;
        v60 = *v58;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v59 = v60;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B2456E98();
          v60 = v70;
          *v59 = v70;
        }

        v27 = v87;
        if ((v88 & 0x8000000000000000) != 0)
        {
          goto LABEL_52;
        }

        if (v88 >= *(v60 + 16))
        {
          goto LABEL_53;
        }

        v62 = v60 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v88;
        v63 = v79;
LABEL_47:
        sub_1B2565BF4(v63, v62);
        v57(v90, 0);

        goto LABEL_48;
      }
    }

    sub_1B255FE0C();
    if (swift_getEnumCaseMultiPayload() > 1)
    {
      v46 = v78;
      sub_1B25636F8();
      v45 = *(v46 + 6);
      v44 = *(v46 + 7);

      sub_1B2563750();
    }

    else
    {
      v45 = *v86;
      v44 = v86[1];
    }

    if (*(a2 + 16))
    {
      sub_1B256ED3C();
      sub_1B256DA7C();
      v47 = sub_1B256ED7C();
      v48 = ~(-1 << *(a2 + 32));
      while (1)
      {
        v49 = v47 & v48;
        if (((*(a2 + 56 + (((v47 & v48) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v47 & v48)) & 1) == 0)
        {
          break;
        }

        v50 = (*(a2 + 48) + 16 * v49);
        if (*v50 != v45 || v50[1] != v44)
        {
          v52 = sub_1B256EB5C();
          v47 = v49 + 1;
          if ((v52 & 1) == 0)
          {
            continue;
          }
        }

        sub_1B255FE0C();
        if (swift_getEnumCaseMultiPayload() > 1)
        {
          v64 = v78;
          sub_1B25636F8();
          v54 = *(v64 + 6);
          v53 = *(v64 + 7);

          sub_1B2563750();
        }

        else
        {
          v54 = *v73;
          v53 = v73[1];
        }

        v65 = v72;
        *v72 = v54;
        v65[1] = v53;
        swift_storeEnumTagMultiPayload();
        swift_getKeyPath();
        swift_getKeyPath();
        v57 = sub_1B256D63C();
        v67 = v66;
        v68 = *v66;
        v69 = swift_isUniquelyReferenced_nonNull_native();
        *v67 = v68;
        if ((v69 & 1) == 0)
        {
          sub_1B2456E98();
          v68 = v71;
          *v67 = v71;
        }

        v27 = v87;
        if ((v88 & 0x8000000000000000) != 0)
        {
          goto LABEL_54;
        }

        if (v88 >= *(v68 + 16))
        {
          goto LABEL_55;
        }

        v62 = v68 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v88;
        v63 = v72;
        goto LABEL_47;
      }
    }

    v27 = v87;
LABEL_48:
    sub_1B2563750();
    v22 = v82;
    v20 = v83;
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
}

uint64_t sub_1B254B9CC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return OUTLINED_FUNCTION_496(v0);
}

uint64_t sub_1B254BA2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;
}

void sub_1B254BA3C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_beginAccess();

  sub_1B253F984(v8, sub_1B2566154, v4);
  swift_endAccess();
  if (*(*(v4 + 136) + 16) && !*(v4 + 168))
  {
    LOBYTE(v16[0]) = a4;
    sub_1B254C8E0(a2, a3, v16);
    *(v4 + 168) = v14;
  }

  else
  {
    v9 = sub_1B256E09C();

    v10 = sub_1B256D5CC();

    if (os_log_type_enabled(v10, v9))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 136446466;
      v15 = v12;
      v16[0] = 91;
      v16[1] = 0xE100000000000000;
      MEMORY[0x1B2749D50](a2, a3);
      MEMORY[0x1B2749D50](8285, 0xE200000000000000);
      v13 = sub_1B2519814(91, 0xE100000000000000, &v15);

      *(v11 + 4) = v13;
      *(v11 + 12) = 2082;
      *(v11 + 14) = sub_1B2519814(0xD000000000000028, 0x80000001B2592D60, &v15);
      _os_log_impl(&dword_1B23EF000, v10, v9, "%{public}s%{public}s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B274BFF0](v12, -1, -1);
      MEMORY[0x1B274BFF0](v11, -1, -1);
    }
  }
}

void sub_1B254BC5C(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t *), uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  swift_beginAccess();
  v26[0] = a1;
  v26[1] = a2;

  a3(v27, v26);

  v15 = v27[0];
  v16 = v27[1];
  v17 = v28;
  swift_beginAccess();
  v18 = v8[18];

  v19 = sub_1B24706E0(v15, v16, v17, v18);

  if ((v19 & 1) == 0)
  {
    sub_1B2560258(v26, v15, v16, v17);
  }

  sub_1B24D0BE8();

  swift_endAccess();
  if (*(v8[17] + 16) && !v8[21])
  {
    LOBYTE(v29) = a7;
    sub_1B254C8E0(a5, a6, &v29);
    v8[21] = v25;
  }

  else
  {
    v20 = sub_1B256E09C();

    v21 = sub_1B256D5CC();

    if (os_log_type_enabled(v21, v20))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v26[0] = v23;
      *v22 = 136446466;
      v29 = 91;
      v30 = 0xE100000000000000;
      MEMORY[0x1B2749D50](a5, a6);
      MEMORY[0x1B2749D50](8285, 0xE200000000000000);
      v24 = sub_1B2519814(v29, v30, v26);

      *(v22 + 4) = v24;
      *(v22 + 12) = 2082;
      *(v22 + 14) = sub_1B2519814(0xD000000000000028, 0x80000001B2592D60, v26);
      _os_log_impl(&dword_1B23EF000, v21, v20, "%{public}s%{public}s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B274BFF0](v23, -1, -1);
      MEMORY[0x1B274BFF0](v22, -1, -1);
    }
  }
}

void sub_1B254BF28(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  swift_beginAccess();
  swift_beginAccess();
  v14 = v7[18];

  sub_1B24D0BE0();

  v15 = sub_1B24706E0(a1, a2, a3 & 1, v14);

  if ((v15 & 1) == 0)
  {
    sub_1B2560258(&v22, a1, a2, a3 & 1);
  }

  sub_1B24D0BE8();

  swift_endAccess();
  if (*(v7[17] + 16) && !v7[21])
  {
    LOBYTE(v23) = a6;
    sub_1B254C8E0(a4, a5, &v23);
    v7[21] = v21;
  }

  else
  {
    v16 = sub_1B256E09C();

    v17 = sub_1B256D5CC();

    if (os_log_type_enabled(v17, v16))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v22 = v19;
      *v18 = 136446466;
      v23 = 91;
      v24 = 0xE100000000000000;
      MEMORY[0x1B2749D50](a4, a5);
      MEMORY[0x1B2749D50](8285, 0xE200000000000000);
      v20 = sub_1B2519814(v23, v24, &v22);

      *(v18 + 4) = v20;
      *(v18 + 12) = 2082;
      *(v18 + 14) = sub_1B2519814(0xD000000000000028, 0x80000001B2592D60, &v22);
      _os_log_impl(&dword_1B23EF000, v17, v16, "%{public}s%{public}s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B274BFF0](v19, -1, -1);
      MEMORY[0x1B274BFF0](v18, -1, -1);
    }
  }
}

void sub_1B254C1C0(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  swift_beginAccess();
  v9 = a1 + 56;
  v10 = -1 << *(a1 + 32);
  if (-v10 < 64)
  {
    v11 = ~(-1 << -v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(a1 + 56);
  swift_retain_n();
  v33 = a1;

  swift_beginAccess();
  v13 = 0;
  v14 = (63 - v10) >> 6;
  if (!v12)
  {
    goto LABEL_6;
  }

  do
  {
    v15 = v13;
LABEL_9:
    v16 = (*(v33 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v12)))));
    v17 = v16[1];
    v12 &= v12 - 1;
    v36[0] = *v16;
    v36[1] = v17;

    a2(v34, v36);

    v19 = v34[0];
    v18 = v34[1];
    v20 = v35;
    v21 = v7[18];

    v22 = sub_1B24706E0(v19, v18, v20, v21);

    if ((v22 & 1) == 0)
    {
      sub_1B2560258(v34, v19, v18, v20);
    }

    sub_1B24D0BE8();
    v13 = v15;
  }

  while (v12);
  while (1)
  {
LABEL_6:
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      return;
    }

    if (v15 >= v14)
    {
      break;
    }

    v12 = *(v9 + 8 * v15);
    ++v13;
    if (v12)
    {
      goto LABEL_9;
    }
  }

  sub_1B23FB6C4(v33);

  swift_endAccess();
  if (*(v7[17] + 16) && !v7[21])
  {
    LOBYTE(v37) = a6;
    sub_1B254C8E0(a4, a5, &v37);
    v7[21] = v28;
  }

  else
  {
    v23 = sub_1B256E09C();

    v24 = sub_1B256D5CC();

    if (os_log_type_enabled(v24, v23))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v34[0] = v26;
      *v25 = 136446466;
      v37 = 91;
      v38 = 0xE100000000000000;
      MEMORY[0x1B2749D50](a4, a5);
      MEMORY[0x1B2749D50](8285, 0xE200000000000000);
      v27 = sub_1B2519814(v37, v38, v34);

      *(v25 + 4) = v27;
      *(v25 + 12) = 2082;
      *(v25 + 14) = sub_1B2519814(0xD000000000000028, 0x80000001B2592D60, v34);
      _os_log_impl(&dword_1B23EF000, v24, v23, "%{public}s%{public}s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B274BFF0](v26, -1, -1);
      MEMORY[0x1B274BFF0](v25, -1, -1);
    }
  }
}

void sub_1B254C560(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  swift_beginAccess();
  v10 = *(a1 + 16);

  swift_beginAccess();
  for (i = (a1 + 40); v10; --v10)
  {
    v12 = *i;
    v29[0] = *(i - 1);
    v29[1] = v12;

    a2(v27, v29);

    v13 = v27[0];
    v14 = v27[1];
    v15 = v28;
    v16 = v7[18];

    v17 = sub_1B24706E0(v13, v14, v15, v16);

    if ((v17 & 1) == 0)
    {
      sub_1B2560258(v27, v13, v14, v15);
    }

    sub_1B24D0BE8();
    i += 2;
  }

  swift_endAccess();

  if (*(v7[17] + 16) && !v7[21])
  {
    LOBYTE(v30) = a6;
    sub_1B254C8E0(a4, a5, &v30);
    v7[21] = v23;
  }

  else
  {
    v18 = sub_1B256E09C();

    v19 = sub_1B256D5CC();

    if (os_log_type_enabled(v19, v18))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v27[0] = v21;
      *v20 = 136446466;
      v30 = 91;
      v31 = 0xE100000000000000;
      MEMORY[0x1B2749D50](a4, a5);
      MEMORY[0x1B2749D50](8285, 0xE200000000000000);
      v22 = sub_1B2519814(v30, v31, v27);

      *(v20 + 4) = v22;
      *(v20 + 12) = 2082;
      *(v20 + 14) = sub_1B2519814(0xD000000000000028, 0x80000001B2592D60, v27);
      _os_log_impl(&dword_1B23EF000, v19, v18, "%{public}s%{public}s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B274BFF0](v21, -1, -1);
      MEMORY[0x1B274BFF0](v20, -1, -1);
    }
  }
}

BOOL sub_1B254C860(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  swift_beginAccess();
  v6 = *(a2 + 144);

  LOBYTE(v3) = sub_1B24706E0(v3, v4, v5, v6);

  return (v3 & 1) == 0;
}

void sub_1B254C8E0(uint64_t a1, uint64_t a2, char *a3)
{
  v7 = *v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910, &qword_1B257AFA0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  v11 = *a3;
  v12 = sub_1B256DDAC();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v12);
  v13 = sub_1B2565104(&qword_1EB7D2CF0, type metadata accessor for StoreProductManager, &protocol conformance descriptor for StoreProductManager);
  v14 = swift_allocObject();
  *(v14 + 16) = v3;
  *(v14 + 24) = v13;
  *(v14 + 32) = v3;
  *(v14 + 40) = a1;
  *(v14 + 48) = a2;
  *(v14 + 56) = v11;
  *(v14 + 64) = v7;
  swift_retain_n();

  sub_1B247DAA8();
}

uint64_t sub_1B254CA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 105) = a7;
  *(v7 + 136) = a5;
  *(v7 + 144) = a6;
  *(v7 + 128) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910, &qword_1B257AFA0);
  *(v7 + 152) = swift_task_alloc();
  v9 = sub_1B256D3CC();
  *(v7 + 160) = v9;
  v10 = *(v9 - 8);
  *(v7 + 168) = v10;
  *(v7 + 176) = *(v10 + 64);
  *(v7 + 184) = swift_task_alloc();
  *(v7 + 192) = swift_task_alloc();
  v11 = sub_1B256E77C();
  *(v7 + 200) = v11;
  *(v7 + 208) = *(v11 - 8);
  *(v7 + 216) = swift_task_alloc();
  v12 = sub_1B256E75C();
  *(v7 + 224) = v12;
  *(v7 + 232) = *(v12 - 8);
  *(v7 + 240) = swift_task_alloc();
  *(v7 + 248) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B254CC34, a4, 0);
}

uint64_t sub_1B254CC34(uint64_t a1)
{
  v21 = v1;
  v2 = *(v1 + 144);
  *(v1 + 256) = OBJC_IVAR____TtC8StoreKit19StoreProductManager_log;
  v3 = sub_1B256E08C();

  v4 = sub_1B256D5CC();

  if (OUTLINED_FUNCTION_29_11())
  {
    v5 = *(v1 + 144);
    OUTLINED_FUNCTION_21_3();
    OUTLINED_FUNCTION_46_1();
    *v2 = 136446466;
    OUTLINED_FUNCTION_39_2();
    v18 = v6;
    v19 = v7;
    v20 = v8;
    v9 = OUTLINED_FUNCTION_132_0();
    MEMORY[0x1B2749D50](v9);
    OUTLINED_FUNCTION_94_0();
    sub_1B2519814(v19, v20, &v18);
    OUTLINED_FUNCTION_28_12();
    *(v2 + 4) = v5;
    OUTLINED_FUNCTION_74_0();
    *(v2 + 14) = sub_1B2519814(0xD000000000000020, 0x80000001B2592D90, &v18);
    OUTLINED_FUNCTION_247(&dword_1B23EF000, v10, v3, "%{public}s%{public}s");
    OUTLINED_FUNCTION_305_0();
    OUTLINED_FUNCTION_10_7();
    OUTLINED_FUNCTION_44_1();
  }

  v11 = *(v1 + 232);
  sub_1B256E74C();
  sub_1B256E73C();
  *(v1 + 264) = *(v11 + 8);
  *(v1 + 272) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12 = OUTLINED_FUNCTION_41_1();
  v13(v12);
  *(v1 + 96) = 0;
  *(v1 + 88) = 0;
  *(v1 + 104) = 1;
  sub_1B256E76C();
  v14 = swift_task_alloc();
  *(v1 + 280) = v14;
  sub_1B2565104(&qword_1EB7D2E40, MEMORY[0x1E69E8848], MEMORY[0x1E69E8850]);
  OUTLINED_FUNCTION_455();
  *v14 = v15;
  v14[1] = sub_1B254CE80;
  OUTLINED_FUNCTION_310_0();

  return MEMORY[0x1EEE6DA68](v16);
}

uint64_t sub_1B254CE80()
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_9();
  *v4 = v3;
  v6 = *(v5 + 264);
  v7 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v8 = v7;
  *(v3 + 288) = v0;

  v9 = OUTLINED_FUNCTION_153();
  v10(v9);
  v11 = OUTLINED_FUNCTION_13_5();
  v6(v11);
  OUTLINED_FUNCTION_115();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1B254D048()
{
  v45 = v0;
  v1 = *(v0 + 128);
  v1[21] = 0;

  OUTLINED_FUNCTION_402((v1 + 17), v0 + 16);
  v2 = v1[17];
  v1[17] = MEMORY[0x1E69E7CD0];
  sub_1B256D3BC();
  v43 = 0;
  v44 = 0xE000000000000000;
  sub_1B256E4FC();
  MEMORY[0x1B2749D50](0x6F74207964616552, 0xEE002064616F6C20);
  v41 = v2;
  *(v0 + 112) = *(v2 + 16);
  OUTLINED_FUNCTION_29_1();
  v3 = sub_1B256EAAC();
  MEMORY[0x1B2749D50](v3);

  MEMORY[0x1B2749D50](0xD000000000000034, 0x80000001B2592DC0);
  OUTLINED_FUNCTION_7_30();
  sub_1B2565104(v4, v5, MEMORY[0x1E69695E0]);
  v6 = sub_1B256EAAC();
  MEMORY[0x1B2749D50](v6);

  OUTLINED_FUNCTION_75_0();
  MEMORY[0x1B2749D50](0xD000000000000017);
  OUTLINED_FUNCTION_516((v1 + 22), v0 + 40);
  *(v0 + 120) = *(v1[22] + 16) + 1;
  OUTLINED_FUNCTION_29_1();
  v7 = sub_1B256EAAC();
  MEMORY[0x1B2749D50](v7);

  MEMORY[0x1B2749D50](41, 0xE100000000000000);
  v8 = v44;
  v9 = sub_1B256E08C();

  v40 = v1;
  v10 = sub_1B256D5CC();

  if (os_log_type_enabled(v10, v9))
  {
    v11 = v43;
    v12 = *(v0 + 136);
    v13 = *(v0 + 144);
    v14 = OUTLINED_FUNCTION_21_3();
    v15 = OUTLINED_FUNCTION_20_4();
    *v14 = 136446466;
    v42 = v15;
    v43 = 91;
    v44 = 0xE100000000000000;
    MEMORY[0x1B2749D50](v12, v13);
    OUTLINED_FUNCTION_94_0();
    sub_1B2519814(91, 0xE100000000000000, &v42);
    OUTLINED_FUNCTION_328_0();
    *(v14 + 4) = v13;
    *(v14 + 12) = 2082;
    sub_1B2519814(v11, v8, &v42);
    OUTLINED_FUNCTION_67_2();

    *(v14 + 14) = 0xE100000000000000;
    _os_log_impl(&dword_1B23EF000, v10, v9, "%{public}s%{public}s", v14, 0x16u);
    OUTLINED_FUNCTION_101_2();
    OUTLINED_FUNCTION_63_0();
    OUTLINED_FUNCTION_11_4();
  }

  else
  {
  }

  v16 = *(v0 + 184);
  v17 = *(v0 + 192);
  v39 = v17;
  v18 = *(v0 + 168);
  v19 = *(v0 + 160);
  v38 = *(v0 + 105);
  v20 = *(v0 + 144);
  v37 = *(v0 + 136);
  v21 = *(v0 + 128);
  sub_1B256DDAC();
  v22 = OUTLINED_FUNCTION_150_0();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  (*(v18 + 16))(v16, v17, v19);
  OUTLINED_FUNCTION_9_25();
  v28 = sub_1B2565104(v26, v27, &protocol conformance descriptor for StoreProductManager);
  v29 = (*(v18 + 80) + 65) & ~*(v18 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = v21;
  *(v30 + 24) = v28;
  *(v30 + 32) = v21;
  *(v30 + 40) = v41;
  *(v30 + 48) = v37;
  *(v30 + 56) = v20;
  *(v30 + 64) = v38;
  (*(v18 + 32))(v30 + v29, v16, v19);
  swift_retain_n();

  OUTLINED_FUNCTION_107_0();
  sub_1B247DAA8();
  v32 = v31;
  OUTLINED_FUNCTION_50_5((v40 + 22), v0 + 64);
  swift_isUniquelyReferenced_nonNull_native();
  v43 = v40[22];
  sub_1B244AC6C(v32, v39);
  v40[22] = v43;
  swift_endAccess();
  v33 = OUTLINED_FUNCTION_458();
  v34(v33);
  OUTLINED_FUNCTION_483();

  OUTLINED_FUNCTION_7_2();

  return v35();
}

uint64_t sub_1B254D510()
{
  OUTLINED_FUNCTION_112_2();
  OUTLINED_FUNCTION_24_5();
  v1 = *(v0 + 128);

  *(v1 + 168) = 0;

  OUTLINED_FUNCTION_483();

  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_42_4();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1B254D5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a8;
  v8[7] = a7;
  v8[8] = v16;
  v8[5] = a4;
  v8[6] = a6;
  v13 = swift_task_alloc();
  v8[9] = v13;
  *v13 = v8;
  v13[1] = sub_1B254D680;

  return sub_1B254D99C(a5, a6, a7, v9);
}

uint64_t sub_1B254D680()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_31_10();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B254D778()
{
  v22 = v0;
  v2 = v0[7];
  v1 = v0[8];
  OUTLINED_FUNCTION_50_5(v0[5] + 176, (v0 + 2));
  sub_1B2563374(v1);
  swift_endAccess();

  sub_1B256E4FC();

  v20 = 0xD000000000000018;
  v21 = 0x80000001B2592E20;
  v3 = sub_1B256D3CC();
  OUTLINED_FUNCTION_7_30();
  sub_1B2565104(v4, v5, MEMORY[0x1E69695E0]);
  v6 = sub_1B256EAAC();
  MEMORY[0x1B2749D50](v6);

  sub_1B256E09C();
  OUTLINED_FUNCTION_514();

  v7 = sub_1B256D5CC();

  if (OUTLINED_FUNCTION_29_11())
  {
    v8 = v0[7];
    OUTLINED_FUNCTION_21_3();
    OUTLINED_FUNCTION_3_23();
    *v2 = 136446466;
    OUTLINED_FUNCTION_39_2();
    v19 = v9;
    v20 = v10;
    v21 = v11;
    v12 = OUTLINED_FUNCTION_12_11();
    MEMORY[0x1B2749D50](v12);
    OUTLINED_FUNCTION_94_0();
    v13 = v21;
    sub_1B2519814(v20, v21, &v19);
    OUTLINED_FUNCTION_328_0();
    *(v2 + 4) = v8;
    OUTLINED_FUNCTION_207_0();
    v14 = OUTLINED_FUNCTION_50_0();
    sub_1B2519814(v14, v15, v16);
    OUTLINED_FUNCTION_200_1();

    *(v2 + 14) = v13;
    OUTLINED_FUNCTION_327_0(&dword_1B23EF000, v7, v3, "%{public}s%{public}s", v19);
    OUTLINED_FUNCTION_101_2();
    OUTLINED_FUNCTION_63_0();
    OUTLINED_FUNCTION_10_7();
  }

  else
  {
  }

  OUTLINED_FUNCTION_7_2();

  return v17();
}

uint64_t sub_1B254D99C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 2400) = v4;
  *(v5 + 2257) = a4;
  *(v5 + 2392) = a3;
  *(v5 + 2384) = a2;
  *(v5 + 2376) = a1;
  *(v5 + 2408) = *v4;
  v6 = type metadata accessor for StoreProductManager.CachedProduct(0);
  *(v5 + 2416) = v6;
  *(v5 + 2424) = *(v6 - 8);
  *(v5 + 2432) = swift_task_alloc();
  *(v5 + 2440) = swift_task_alloc();
  *(v5 + 2448) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7CFEA0, &qword_1B2587230);
  *(v5 + 2456) = swift_task_alloc();
  *(v5 + 2464) = *(type metadata accessor for Product(0) - 8);
  *(v5 + 2472) = swift_task_alloc();
  *(v5 + 2480) = swift_task_alloc();
  *(v5 + 2488) = swift_task_alloc();
  *(v5 + 2496) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910, &qword_1B257AFA0);
  *(v5 + 2504) = swift_task_alloc();
  *(v5 + 2512) = swift_task_alloc();
  *(v5 + 2520) = swift_task_alloc();
  v7 = sub_1B256D36C();
  *(v5 + 2528) = v7;
  *(v5 + 2536) = *(v7 - 8);
  *(v5 + 2544) = swift_task_alloc();
  *(v5 + 2552) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B254DC18, v4, 0);
}

uint64_t sub_1B254DC18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v225 = v12;
  v13 = v12[300];
  v14 = v12[297];
  v17 = *(v14 + 56);
  v16 = v14 + 56;
  v15 = v17;
  v18 = -1 << *(v12[297] + 32);
  if (-v18 < 64)
  {
    v19 = ~(-1 << -v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & v15;
  v219 = v12[297];

  v216 = v13;
  isUniquelyReferenced_nonNull_native = OUTLINED_FUNCTION_516(v13 + 144, (v12 + 201));
  v29 = 0;
  v30 = (63 - v18) >> 6;
  v31 = MEMORY[0x1E69E7CC0];
  v215 = v12;
LABEL_5:
  v12[320] = v31;
  v32 = v29;
  v33 = v31;
  if (!v20)
  {
    goto LABEL_7;
  }

  do
  {
    v29 = v32;
LABEL_10:
    v34 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v35 = *(v219 + 48) + 24 * (v34 | (v29 << 6));
    v36 = *v35;
    v37 = *(v35 + 8);
    v38 = *(v35 + 16);
    v39 = *(v216 + 144);
    OUTLINED_FUNCTION_14_3();
    sub_1B24D0BE0();

    v40 = OUTLINED_FUNCTION_14_3();
    v42 = sub_1B24706E0(v40, v41, v38, v39);

    if ((v42 & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v223 = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_1B2455EB8(0, *(v33 + 16) + 1, 1);
        v33 = v223;
      }

      v44 = *(v33 + 16);
      v43 = *(v33 + 24);
      v45 = v44 + 1;
      if (v44 >= v43 >> 1)
      {
        v47 = OUTLINED_FUNCTION_69_0(v43);
        v49 = v48;
        isUniquelyReferenced_nonNull_native = sub_1B2455EB8(v47, v48, 1);
        v45 = v49;
        v33 = v223;
      }

      *(v33 + 16) = v45;
      v46 = v33 + 24 * v44;
      *(v46 + 32) = v36;
      *(v46 + 40) = v37;
      *(v46 + 48) = v38;
      v31 = v33;
      v12 = v215;
      goto LABEL_5;
    }

    OUTLINED_FUNCTION_14_3();
    isUniquelyReferenced_nonNull_native = sub_1B24D0BE8();
    v32 = v29;
  }

  while (v20);
  while (1)
  {
LABEL_7:
    v29 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
      return MEMORY[0x1EEE6DEC0](isUniquelyReferenced_nonNull_native, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
    }

    if (v29 >= v30)
    {
      break;
    }

    v20 = *(v16 + 8 * v29);
    ++v32;
    if (v20)
    {
      goto LABEL_10;
    }
  }

  v50 = v215;
  v51 = v215[297];

  v52 = *(v51 + 16);
  v214 = v33;
  v53 = *(v33 + 16);
  v54 = v52 - v53;
  if (v52 != v53)
  {
    v212 = *(v33 + 16);
    v206 = v215[300];
    v55 = v215[299];
    v56 = v215[298];
    v57 = OBJC_IVAR____TtC8StoreKit19StoreProductManager_log;
    v223 = sub_1B251954C(85);
    v224 = v58;
    MEMORY[0x1B2749D50](0xD00000000000001BLL, 0x80000001B2592E40);
    v215[286] = v54;
    OUTLINED_FUNCTION_29_1();
    v59 = sub_1B256EAAC();
    MEMORY[0x1B2749D50](v59);

    MEMORY[0x1B2749D50](543584032, 0xE400000000000000);
    v215[288] = *(v51 + 16);
    OUTLINED_FUNCTION_29_1();
    v60 = sub_1B256EAAC();
    MEMORY[0x1B2749D50](v60);

    MEMORY[0x1B2749D50](0xD000000000000032, 0x80000001B2592E60);
    v61 = v223;
    v62 = v224;
    v210 = sub_1B256E08C();
    OUTLINED_FUNCTION_43_0();
    v63 = swift_allocObject();
    *(v63 + 16) = v56;
    *(v63 + 24) = v55;
    OUTLINED_FUNCTION_43_0();
    v64 = swift_allocObject();
    v204 = v61;
    *(v64 + 16) = v61;
    *(v64 + 24) = v62;

    v65 = &v57[v206];
    v207 = sub_1B256D5CC();
    OUTLINED_FUNCTION_119_2();
    v66 = swift_allocObject();
    OUTLINED_FUNCTION_342(v66);
    OUTLINED_FUNCTION_119_2();
    v67 = swift_allocObject();
    *(v67 + 16) = 8;
    OUTLINED_FUNCTION_43_0();
    v68 = swift_allocObject();
    *(v68 + 16) = sub_1B25653D0;
    *(v68 + 24) = v63;
    OUTLINED_FUNCTION_43_0();
    v69 = swift_allocObject();
    *(v69 + 16) = sub_1B25653E8;
    *(v69 + 24) = v68;
    OUTLINED_FUNCTION_119_2();
    v70 = swift_allocObject();
    *(v70 + 16) = v215;
    OUTLINED_FUNCTION_119_2();
    v71 = swift_allocObject();
    *(v71 + 16) = 8;
    OUTLINED_FUNCTION_43_0();
    v72 = swift_allocObject();
    *(v72 + 16) = sub_1B25653D8;
    *(v72 + 24) = v64;
    OUTLINED_FUNCTION_43_0();
    v73 = swift_allocObject();
    *(v73 + 16) = sub_1B25661CC;
    *(v73 + 24) = v72;
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2E50, &qword_1B2587AB0);
    v75 = OUTLINED_FUNCTION_272(v74);
    *(v75 + 16) = xmmword_1B2587210;
    *(v75 + 32) = sub_1B25653E0;
    *(v75 + 40) = v65;
    *(v75 + 48) = sub_1B25661DC;
    *(v75 + 56) = v67;
    *(v75 + 64) = sub_1B25653F0;
    *(v75 + 72) = v69;
    *(v75 + 80) = sub_1B25661DC;
    *(v75 + 88) = v70;
    *(v75 + 96) = sub_1B25661DC;
    *(v75 + 104) = v71;
    *(v75 + 112) = sub_1B25661B0;
    *(v75 + 120) = v73;
    swift_setDeallocating();
    v76 = v75;
    sub_1B24C3DB8();
    if (os_log_type_enabled(v207, v210))
    {
      v50 = v215;
      v77 = v215[299];
      v78 = v215[298];
      v79 = OUTLINED_FUNCTION_21_3();
      v80 = OUTLINED_FUNCTION_20_4();
      *v79 = 136446466;
      OUTLINED_FUNCTION_10_23(v80);
      MEMORY[0x1B2749D50](v78, v77);
      OUTLINED_FUNCTION_94_0();
      OUTLINED_FUNCTION_156_1();
      OUTLINED_FUNCTION_374();

      *(v79 + 4) = v77;
      *(v79 + 12) = 2082;
      sub_1B2519814(v204, v62, &v222);
      OUTLINED_FUNCTION_399();
      *(v79 + 14) = v76;
      _os_log_impl(&dword_1B23EF000, v207, v210, "%{public}s%{public}s", v79, 0x16u);
      OUTLINED_FUNCTION_304_0();
      OUTLINED_FUNCTION_7_12();
      OUTLINED_FUNCTION_236();
    }

    else
    {

      v50 = v215;
    }

    v53 = v212;
    v52 = *(v214 + 16);
  }

  v50[321] = v52;
  v81 = v50[300];
  v82 = v50[299];
  v83 = v50[298];
  if (!v52)
  {

    v113 = OBJC_IVAR____TtC8StoreKit19StoreProductManager_log;
    OUTLINED_FUNCTION_14_2();
    v220 = sub_1B256E08C();
    OUTLINED_FUNCTION_43_0();
    v114 = swift_allocObject();
    *(v114 + 16) = v83;
    *(v114 + 24) = v82;
    OUTLINED_FUNCTION_43_0();
    v115 = swift_allocObject();
    *(v115 + 16) = 0xD000000000000041;
    *(v115 + 24) = v16;
    v218 = v16;

    v116 = &v113[v81];
    v117 = sub_1B256D5CC();
    OUTLINED_FUNCTION_119_2();
    v118 = swift_allocObject();
    OUTLINED_FUNCTION_342(v118);
    OUTLINED_FUNCTION_119_2();
    v119 = swift_allocObject();
    *(v119 + 16) = 8;
    OUTLINED_FUNCTION_43_0();
    v120 = swift_allocObject();
    *(v120 + 16) = sub_1B25661D0;
    *(v120 + 24) = v114;
    OUTLINED_FUNCTION_43_0();
    v121 = swift_allocObject();
    *(v121 + 16) = sub_1B25661CC;
    *(v121 + 24) = v120;
    OUTLINED_FUNCTION_119_2();
    v122 = swift_allocObject();
    *(v122 + 16) = v82;
    OUTLINED_FUNCTION_119_2();
    v123 = swift_allocObject();
    OUTLINED_FUNCTION_161_2(v123);
    OUTLINED_FUNCTION_43_0();
    v124 = swift_allocObject();
    *(v124 + 16) = sub_1B25661D4;
    *(v124 + 24) = v115;
    OUTLINED_FUNCTION_43_0();
    v125 = swift_allocObject();
    *(v125 + 16) = sub_1B25661CC;
    *(v125 + 24) = v124;
    v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2E50, &qword_1B2587AB0);
    v127 = OUTLINED_FUNCTION_272(v126);
    *(v127 + 16) = xmmword_1B2587210;
    *(v127 + 32) = sub_1B25661DC;
    *(v127 + 40) = v116;
    *(v127 + 48) = sub_1B25661DC;
    *(v127 + 56) = v119;
    *(v127 + 64) = sub_1B25661B0;
    *(v127 + 72) = v121;
    *(v127 + 80) = sub_1B25661DC;
    *(v127 + 88) = v122;
    *(v127 + 96) = sub_1B25661DC;
    *(v127 + 104) = v114;
    *(v127 + 112) = sub_1B25661B0;
    *(v127 + 120) = v125;
    swift_setDeallocating();
    sub_1B24C3DB8();
    if (os_log_type_enabled(v117, v220))
    {
      OUTLINED_FUNCTION_152_1();
      v128 = OUTLINED_FUNCTION_46_1();
      *v119 = 136446466;
      OUTLINED_FUNCTION_10_23(v128);
      v129 = OUTLINED_FUNCTION_157_0();
      MEMORY[0x1B2749D50](v129);
      OUTLINED_FUNCTION_94_0();
      OUTLINED_FUNCTION_156_1();
      OUTLINED_FUNCTION_172_0();

      *(v119 + 4) = v114;
      OUTLINED_FUNCTION_74_0();
      *(v119 + 14) = sub_1B2519814(0xD000000000000041, v218, &v222);
      OUTLINED_FUNCTION_247(&dword_1B23EF000, v130, v220, "%{public}s%{public}s");
      OUTLINED_FUNCTION_101_2();
      OUTLINED_FUNCTION_63_0();
      OUTLINED_FUNCTION_44_1();
    }

LABEL_65:
    OUTLINED_FUNCTION_6_30();

    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_479();

    __asm { BRAA            X1, X16 }
  }

  v208 = v50[298];
  OUTLINED_FUNCTION_50_5(v216 + 144, (v50 + 249));

  sub_1B253FAE4(v84);
  swift_endAccess();
  OUTLINED_FUNCTION_50_5(v81 + 136, (v50 + 241));
  v213 = v81;
  sub_1B2546B48(v214);
  swift_endAccess();
  v85 = OBJC_IVAR____TtC8StoreKit19StoreProductManager_log;
  v50[322] = OBJC_IVAR____TtC8StoreKit19StoreProductManager_log;
  v223 = sub_1B251954C(97);
  v224 = v86;
  MEMORY[0x1B2749D50](0xD000000000000017, 0x80000001B2592EA0);
  v50[292] = v53;
  v87 = sub_1B256EAAC();
  MEMORY[0x1B2749D50](v87);

  MEMORY[0x1B2749D50](0xD000000000000023, 0x80000001B2592EC0);
  v88 = OUTLINED_FUNCTION_28_1();
  v89 = MEMORY[0x1B2749EE0](v88);
  MEMORY[0x1B2749D50](v89);

  MEMORY[0x1B2749D50](0xD000000000000021, 0x80000001B2592EF0);
  sub_1B24D0B8C();

  OUTLINED_FUNCTION_146_2();
  sub_1B256DFCC();

  v90 = OUTLINED_FUNCTION_14_3();
  MEMORY[0x1B2749D50](v90);

  v91 = v223;
  v92 = v224;
  v211 = sub_1B256E0CC();
  OUTLINED_FUNCTION_43_0();
  v93 = swift_allocObject();
  *(v93 + 16) = v208;
  *(v93 + 24) = v82;
  OUTLINED_FUNCTION_43_0();
  v94 = swift_allocObject();
  v201 = v91;
  *(v94 + 16) = v91;
  *(v94 + 24) = v92;
  v205 = v82;

  v217 = v92;

  v203 = v85;
  v95 = &v85[v213];
  v209 = sub_1B256D5CC();
  OUTLINED_FUNCTION_119_2();
  v96 = swift_allocObject();
  OUTLINED_FUNCTION_342(v96);
  OUTLINED_FUNCTION_119_2();
  v97 = swift_allocObject();
  *(v97 + 16) = 8;
  OUTLINED_FUNCTION_43_0();
  v98 = swift_allocObject();
  *(v98 + 16) = sub_1B25661D0;
  *(v98 + 24) = v93;
  OUTLINED_FUNCTION_43_0();
  v99 = swift_allocObject();
  *(v99 + 16) = sub_1B25661CC;
  *(v99 + 24) = v98;
  OUTLINED_FUNCTION_119_2();
  v100 = swift_allocObject();
  *(v100 + 16) = v82;
  OUTLINED_FUNCTION_119_2();
  v101 = swift_allocObject();
  OUTLINED_FUNCTION_183_1(v101);
  OUTLINED_FUNCTION_43_0();
  v102 = swift_allocObject();
  *(v102 + 16) = sub_1B25661D4;
  *(v102 + 24) = v94;
  OUTLINED_FUNCTION_43_0();
  v103 = swift_allocObject();
  *(v103 + 16) = sub_1B25661CC;
  *(v103 + 24) = v102;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2E50, &qword_1B2587AB0);
  v50[323] = v104;
  v202 = v104;
  v105 = OUTLINED_FUNCTION_272(v104);
  *(v105 + 16) = xmmword_1B2587210;
  *(v105 + 32) = sub_1B25661DC;
  *(v105 + 40) = v95;
  *(v105 + 48) = sub_1B25661DC;
  *(v105 + 56) = v97;
  *(v105 + 64) = sub_1B25661B0;
  *(v105 + 72) = v99;
  *(v105 + 80) = sub_1B25661DC;
  *(v105 + 88) = v100;
  *(v105 + 96) = sub_1B25661DC;
  *(v105 + 104) = v93;
  *(v105 + 112) = sub_1B25661B0;
  *(v105 + 120) = v103;
  swift_setDeallocating();
  sub_1B24C3DB8();
  if (os_log_type_enabled(v209, v211))
  {
    v106 = v50[299];
    v107 = v50[298];
    OUTLINED_FUNCTION_21_3();
    v108 = OUTLINED_FUNCTION_35_6();
    *v97 = 136446466;
    OUTLINED_FUNCTION_10_23(v108);
    MEMORY[0x1B2749D50](v107, v106);
    OUTLINED_FUNCTION_94_0();
    OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_374();

    OUTLINED_FUNCTION_413();
    v110 = sub_1B2519814(v201, v217, v109);

    *(v97 + 14) = v110;
    OUTLINED_FUNCTION_319_0(&dword_1B23EF000, v111, v211, "%{public}s%{public}s");
    OUTLINED_FUNCTION_101_2();
    OUTLINED_FUNCTION_63_0();
    OUTLINED_FUNCTION_7_12();
  }

  else
  {
  }

  v112 = v50;
  v131 = sub_1B256DE9C();
  if (v131)
  {
    v132 = v50[298];
    v221 = OUTLINED_FUNCTION_511(v131);
    OUTLINED_FUNCTION_43_0();
    v133 = swift_allocObject();
    *(v133 + 16) = v132;
    *(v133 + 24) = v205;
    OUTLINED_FUNCTION_43_0();
    v134 = swift_allocObject();
    *(v134 + 16) = 0xD00000000000002FLL;
    *(v134 + 24) = v211;

    v135 = sub_1B256D5CC();
    OUTLINED_FUNCTION_119_2();
    v136 = swift_allocObject();
    OUTLINED_FUNCTION_144_1(v136);
    OUTLINED_FUNCTION_119_2();
    v137 = swift_allocObject();
    *(v137 + 16) = 8;
    OUTLINED_FUNCTION_43_0();
    v138 = swift_allocObject();
    *(v138 + 16) = sub_1B25661D0;
    *(v138 + 24) = v133;
    OUTLINED_FUNCTION_43_0();
    v139 = swift_allocObject();
    *(v139 + 16) = sub_1B25661CC;
    *(v139 + 24) = v138;
    OUTLINED_FUNCTION_119_2();
    v140 = swift_allocObject();
    *(v140 + 16) = v211;
    OUTLINED_FUNCTION_119_2();
    v141 = swift_allocObject();
    *(v141 + 16) = 8;
    OUTLINED_FUNCTION_43_0();
    v142 = swift_allocObject();
    *(v142 + 16) = sub_1B25661D4;
    *(v142 + 24) = v134;
    OUTLINED_FUNCTION_43_0();
    v143 = swift_allocObject();
    *(v143 + 16) = sub_1B25661CC;
    *(v143 + 24) = v142;
    v144 = OUTLINED_FUNCTION_272(v202);
    *(v144 + 16) = xmmword_1B2587210;
    *(v144 + 32) = sub_1B25661DC;
    *(v144 + 40) = &v203[v213];
    *(v144 + 48) = sub_1B25661DC;
    *(v144 + 56) = v137;
    *(v144 + 64) = sub_1B25661B0;
    *(v144 + 72) = v139;
    *(v144 + 80) = sub_1B25661DC;
    *(v144 + 88) = v140;
    *(v144 + 96) = sub_1B25661DC;
    *(v144 + 104) = v141;
    *(v144 + 112) = sub_1B25661B0;
    *(v144 + 120) = v143;
    swift_setDeallocating();
    sub_1B24C3DB8();
    if (os_log_type_enabled(v135, v221))
    {
      OUTLINED_FUNCTION_21_3();
      v145 = OUTLINED_FUNCTION_35_6();
      *v143 = 136446466;
      OUTLINED_FUNCTION_10_23(v145);
      v146 = OUTLINED_FUNCTION_376();
      MEMORY[0x1B2749D50](v146);
      OUTLINED_FUNCTION_94_0();
      OUTLINED_FUNCTION_156_1();
      OUTLINED_FUNCTION_374();

      OUTLINED_FUNCTION_413();
      *(v143 + 14) = sub_1B2519814(0xD00000000000002FLL, v211, v147);
      _os_log_impl(&dword_1B23EF000, v135, v221, "%{public}s%{public}s", v143, 0x16u);
      OUTLINED_FUNCTION_54_4();
      OUTLINED_FUNCTION_44_1();
      OUTLINED_FUNCTION_7_12();
    }

    sub_1B25579B4(v50[300], v214, v50[298], v50[299]);

    goto LABEL_65;
  }

  OUTLINED_FUNCTION_131_2();
  OUTLINED_FUNCTION_352();
  v150 = v148 & v149;
  v152 = (63 - v151) >> 6;

  v153 = 0;
  v154 = MEMORY[0x1E69E7CC0];
LABEL_34:
  v112[324] = v154;
  while (v150)
  {
LABEL_40:
    OUTLINED_FUNCTION_412();
    v157 = *(v219 + 48) + 24 * (v156 | (v153 << 6));
    if ((*(v157 + 16) & 1) == 0)
    {
      v159 = *v157;
      v158 = *(v157 + 8);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v163 = OUTLINED_FUNCTION_38();
        sub_1B2448D00(v163, v164, v165, v154);
        v154 = isUniquelyReferenced_nonNull_native;
      }

      v161 = *(v154 + 16);
      v160 = *(v154 + 24);
      if (v161 >= v160 >> 1)
      {
        OUTLINED_FUNCTION_69_0(v160);
        OUTLINED_FUNCTION_121_2();
        sub_1B2448D00(v166, v167, v168, v169);
        v154 = isUniquelyReferenced_nonNull_native;
      }

      *(v154 + 16) = v161 + 1;
      v162 = v154 + 16 * v161;
      *(v162 + 32) = v159;
      *(v162 + 40) = v158;
      v112 = v215;
      goto LABEL_34;
    }
  }

  while (1)
  {
    v155 = v153 + 1;
    if (__OFADD__(v153, 1))
    {
      goto LABEL_77;
    }

    if (v155 >= v152)
    {
      break;
    }

    v150 = *(v16 + 8 * v155);
    ++v153;
    if (v150)
    {
      v153 = v155;
      goto LABEL_40;
    }
  }

  OUTLINED_FUNCTION_131_2();
  OUTLINED_FUNCTION_352();
  v172 = v170 & v171;
  v174 = (63 - v173) >> 6;

  v175 = 0;
  v176 = MEMORY[0x1E69E7CC0];
LABEL_47:
  v112[325] = v176;
  while (v172)
  {
LABEL_53:
    OUTLINED_FUNCTION_409();
    OUTLINED_FUNCTION_205_0();
    if (v179)
    {
      v181 = *v178;
      v180 = v178[1];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v185 = OUTLINED_FUNCTION_38();
        sub_1B2448D00(v185, v186, v187, v176);
        v176 = isUniquelyReferenced_nonNull_native;
      }

      v183 = *(v176 + 16);
      v182 = *(v176 + 24);
      if (v183 >= v182 >> 1)
      {
        v188 = OUTLINED_FUNCTION_69_0(v182);
        sub_1B2448D00(v188, v183 + 1, 1, v176);
        v176 = isUniquelyReferenced_nonNull_native;
      }

      *(v176 + 16) = v183 + 1;
      v184 = v176 + 16 * v183;
      *(v184 + 32) = v181;
      *(v184 + 40) = v180;
      v112 = v215;
      goto LABEL_47;
    }
  }

  while (1)
  {
    v177 = v175 + 1;
    if (__OFADD__(v175, 1))
    {
      goto LABEL_78;
    }

    if (v177 >= v174)
    {
      break;
    }

    v172 = *(v16 + 8 * v177);
    ++v175;
    if (v172)
    {
      v175 = v177;
      goto LABEL_53;
    }
  }

  v189 = *(v154 + 16);
  v112[326] = v189;
  v190 = *(v176 + 16);
  if (v189)
  {
    if (!v190)
    {
      v191 = OUTLINED_FUNCTION_499();
      v112[327] = v191;
      *v191 = v112;
      v191[1] = sub_1B254F060;
      OUTLINED_FUNCTION_374();
      goto LABEL_70;
    }
  }

  else if (v190)
  {

    v194 = OUTLINED_FUNCTION_499();
    v112[330] = v194;
    *v194 = v112;
    v194[1] = sub_1B2551640;
LABEL_70:
    OUTLINED_FUNCTION_479();

    __asm { BR              X2 }
  }

  v197 = *(v112 + 2257);
  v198 = swift_allocObject();
  v112[333] = v198;
  *(v198 + 16) = v154;
  *(v198 + 24) = v197;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2E58, &qword_1B2587AC8);
  swift_asyncLet_begin();
  v199 = swift_allocObject();
  v112[334] = v199;
  *(v199 + 16) = v176;
  *(v199 + 24) = v197;

  swift_asyncLet_begin();
  OUTLINED_FUNCTION_479();

  return MEMORY[0x1EEE6DEC0](isUniquelyReferenced_nonNull_native, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t sub_1B254F060()
{
  OUTLINED_FUNCTION_21_5();
  v3 = v2;
  OUTLINED_FUNCTION_6_1();
  v5 = v4;
  OUTLINED_FUNCTION_13_9();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v8 = v7;
  v5[328] = v0;

  if (v0)
  {
    v9 = v5[300];

    v10 = sub_1B2550A0C;
    v11 = v9;
  }

  else
  {

    v5[329] = v3;
    OUTLINED_FUNCTION_310_0();
  }

  return MEMORY[0x1EEE6DFA0](v10, v11, 0);
}

uint64_t sub_1B2551640()
{
  OUTLINED_FUNCTION_21_5();
  v3 = v2;
  OUTLINED_FUNCTION_6_1();
  v5 = v4;
  OUTLINED_FUNCTION_13_9();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v8 = v7;
  v5[331] = v0;

  if (v0)
  {

    OUTLINED_FUNCTION_310_0();
  }

  else
  {
    v10 = v5[300];
    v5[332] = v3;
    v9 = sub_1B2551764;
  }

  return MEMORY[0x1EEE6DFA0](v9, v10, 0);
}

uint64_t sub_1B2553C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_4_0();
  v13[335] = v12;
  if (v12)
  {

    v14 = OUTLINED_FUNCTION_240_0();

    return MEMORY[0x1EEE6DEB0](v14, v15, v16, v13 + 244);
  }

  else
  {
    v13[336] = v13[293];

    v17 = OUTLINED_FUNCTION_240_0();

    return MEMORY[0x1EEE6DEC0](v17, v18, v19, v13 + 228, v20, v21, v22, v23, a9, a10, a11, a12);
  }
}

uint64_t sub_1B2553CB0()
{
  OUTLINED_FUNCTION_4_0();
  *(v1 + 2696) = v0;
  if (v0)
  {

    v2 = OUTLINED_FUNCTION_240_0();

    return MEMORY[0x1EEE6DEB0](v2, v3, v4, v1 + 1760);
  }

  else
  {
    v5 = *(v1 + 2400);

    return MEMORY[0x1EEE6DFA0](sub_1B25549F4, v5, 0);
  }
}

uint64_t sub_1B2553DA4(uint64_t a1)
{
  v249 = v2;
  OUTLINED_FUNCTION_425();
  v6 = v2[335];
  v228 = v2[333];
  v230 = v2[334];
  v7 = OUTLINED_FUNCTION_116_2();
  OUTLINED_FUNCTION_424(v7, v8);
  OUTLINED_FUNCTION_221_0();
  v236 = v6;
  v2[296] = v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40, &qword_1B257BB10);
  v11 = OUTLINED_FUNCTION_507(v9, v10, v9, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078]);
  LODWORD(v245) = OUTLINED_FUNCTION_506(v11);
  OUTLINED_FUNCTION_43_0();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_243_0(v12);
  OUTLINED_FUNCTION_43_0();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_403(v13);

  v244 = sub_1B256D5CC();
  OUTLINED_FUNCTION_119_2();
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_144_1(v14);
  OUTLINED_FUNCTION_119_2();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_234_0(v15);
  OUTLINED_FUNCTION_43_0();
  v16 = swift_allocObject();
  OUTLINED_FUNCTION_38_9(v16);
  OUTLINED_FUNCTION_43_0();
  v17 = swift_allocObject();
  OUTLINED_FUNCTION_31_11(v17);
  OUTLINED_FUNCTION_119_2();
  v18 = swift_allocObject();
  OUTLINED_FUNCTION_450(v18);
  OUTLINED_FUNCTION_119_2();
  v19 = swift_allocObject();
  OUTLINED_FUNCTION_467(v19);
  OUTLINED_FUNCTION_43_0();
  v20 = swift_allocObject();
  OUTLINED_FUNCTION_36_7(v20);
  OUTLINED_FUNCTION_43_0();
  v21 = swift_allocObject();
  v22 = OUTLINED_FUNCTION_45_6(v21);
  v23 = OUTLINED_FUNCTION_23_12(v22, xmmword_1B2587210);
  v23[3].n128_u64[0] = sub_1B25661DC;
  v23[3].n128_u64[1] = v5;
  v24 = v244;
  v25 = OUTLINED_FUNCTION_42_6(v23);
  v26 = v245;
  v27 = OUTLINED_FUNCTION_41_10(v25);
  v27[12] = sub_1B25661DC;
  v27[13] = v4;
  v27[14] = sub_1B25661B0;
  v27[15] = v13;
  swift_setDeallocating();
  sub_1B24C3DB8();
  v28 = OUTLINED_FUNCTION_513();
  Strong = MEMORY[0x1E69E7CA0];
  if (v28)
  {
    OUTLINED_FUNCTION_152_1();
    v13 = OUTLINED_FUNCTION_126_1();
    *v22 = 136446466;
    OUTLINED_FUNCTION_10_23(v13);
    v30 = OUTLINED_FUNCTION_157_0();
    MEMORY[0x1B2749D50](v30);
    OUTLINED_FUNCTION_94_0();
    OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_172_0();

    OUTLINED_FUNCTION_54_8();
    sub_1B2519814(v1, v3, v248);
    OUTLINED_FUNCTION_200_1();

    *(v22 + 14) = "ype";
    OUTLINED_FUNCTION_224_0(&dword_1B23EF000, v31, v32, "%{public}s%{public}s");
    OUTLINED_FUNCTION_276_0(v33, v34, Strong + 8);
    OUTLINED_FUNCTION_63_0();
    OUTLINED_FUNCTION_22_8();
  }

  else
  {
  }

  if (sub_1B256DE9C())
  {
    OUTLINED_FUNCTION_464();
    OUTLINED_FUNCTION_120_1();
    v35 = v2[298];
    OUTLINED_FUNCTION_510(v36);
    OUTLINED_FUNCTION_43_0();
    v37 = swift_allocObject();
    OUTLINED_FUNCTION_452(v37);
    OUTLINED_FUNCTION_43_0();
    v38 = swift_allocObject();
    OUTLINED_FUNCTION_148_0(v38);

    v39 = sub_1B256D5CC();
    OUTLINED_FUNCTION_119_2();
    v40 = swift_allocObject();
    OUTLINED_FUNCTION_181_0(v40);
    OUTLINED_FUNCTION_119_2();
    v41 = swift_allocObject();
    OUTLINED_FUNCTION_239_0(v41);
    OUTLINED_FUNCTION_43_0();
    v42 = swift_allocObject();
    OUTLINED_FUNCTION_32_9(v42);
    OUTLINED_FUNCTION_43_0();
    v43 = swift_allocObject();
    OUTLINED_FUNCTION_33_9(v43);
    OUTLINED_FUNCTION_119_2();
    v44 = swift_allocObject();
    OUTLINED_FUNCTION_430(v44);
    OUTLINED_FUNCTION_119_2();
    v45 = swift_allocObject();
    OUTLINED_FUNCTION_161_2(v45);
    OUTLINED_FUNCTION_43_0();
    v46 = swift_allocObject();
    OUTLINED_FUNCTION_27_12(v46);
    OUTLINED_FUNCTION_43_0();
    v47 = swift_allocObject();
    OUTLINED_FUNCTION_37_7(v47);
    v48 = OUTLINED_FUNCTION_272(v245);
    OUTLINED_FUNCTION_20_17(v48, v49, v50, v51, v52, v53, v54, v55, v56, v207, v211, v215, v220, v57);
    *(v58 + 48) = sub_1B25661DC;
    *(v58 + 56) = v13;
    v59 = OUTLINED_FUNCTION_29_12(v58);
    v59[10] = sub_1B25661DC;
    v59[11] = v245;
    v59[12] = sub_1B25661DC;
    v59[13] = v6;
    v59[14] = sub_1B25661B0;
    v59[15] = v35;
    swift_setDeallocating();
    sub_1B24C3DB8();
    if (OUTLINED_FUNCTION_508())
    {
      OUTLINED_FUNCTION_93_3();
      v60 = OUTLINED_FUNCTION_3_23();
      *v4 = 136446466;
      OUTLINED_FUNCTION_10_23(v60);
      v61 = OUTLINED_FUNCTION_28_1();
      MEMORY[0x1B2749D50](v61);
      OUTLINED_FUNCTION_94_0();
      OUTLINED_FUNCTION_156_1();
      OUTLINED_FUNCTION_172_0();

      v62 = OUTLINED_FUNCTION_95_5();
      *(v4 + 14) = sub_1B2519814(v62, v4, v63);
      OUTLINED_FUNCTION_219_0(&dword_1B23EF000, v64, v65, "%{public}s%{public}s");
      OUTLINED_FUNCTION_100_2();
      OUTLINED_FUNCTION_22_8();
      goto LABEL_48;
    }

    goto LABEL_49;
  }

  OUTLINED_FUNCTION_295_0();
  OUTLINED_FUNCTION_416();
  v242 = v2[302];
  v246 = v2[300];
  v247 = v66;
  v232 = v3;
  while (1)
  {
    OUTLINED_FUNCTION_415();
    if ((v67 & 1) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_222_0();
    OUTLINED_FUNCTION_434();
    if (!v78)
    {
      OUTLINED_FUNCTION_245_0(v68, v69, v70, v71, v72, v73, v74, v75, v76, v207, v211, v215, v220, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v77);

LABEL_32:
      v147 = OUTLINED_FUNCTION_157_0();
      sub_1B256615C(v147, v148);
      swift_endAccess();
LABEL_33:
      OUTLINED_FUNCTION_465();
      goto LABEL_34;
    }

    OUTLINED_FUNCTION_266_0();
    v79 = sub_1B2458898();
    if ((v80 & 1) == 0)
    {
      OUTLINED_FUNCTION_245_0(v79, v80, v81, v82, v83, v84, v85, v86, v87, v207, v211, v215, v220, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v88);
      v26 = 24;
      goto LABEL_32;
    }

    v89 = OUTLINED_FUNCTION_284_0(v79);
    sub_1B247D7E0(v89, v4);
    v26 = 24;
    if (*v4 == 1)
    {
      goto LABEL_32;
    }

    Strong = swift_weakLoadStrong();
    v90 = OUTLINED_FUNCTION_157_0();
    sub_1B256615C(v90, v91);
    swift_endAccess();
    if (!Strong)
    {
      goto LABEL_33;
    }

    OUTLINED_FUNCTION_230();
    v241 = v92;
    v93 = Strong;
    v216 = sub_1B256DDAC();
    v94 = OUTLINED_FUNCTION_60_6();
    __swift_storeEnumTagSinglePayload(v94, v95, v96, v97);
    v98 = sub_1B256DD6C();
    OUTLINED_FUNCTION_325_0(v98, v99, v100, v101, v102, v103, v104, v105, v207, v211, v216, v220, v224, v226, v228, v230, v232, v234, v236);

    v106 = sub_1B256DD5C();
    OUTLINED_FUNCTION_187_1();
    v107 = swift_allocObject();
    v107[2] = v106;
    v107[3] = MEMORY[0x1E69E85E0];
    v107[4] = Strong;
    v239 = Strong;
    v107[5] = Strong;
    Strong = &qword_1EB7D1910;
    OUTLINED_FUNCTION_414(v107, v108, v109, v110, v111, v112, v113, v114, v208, v212, v217, v221);
    sub_1B24C5C14();
    OUTLINED_FUNCTION_429();
    v115 = v2[313];
    if (v106 == 1)
    {
      v116 = OUTLINED_FUNCTION_38_7();
      v118 = sub_1B256615C(v116, v117);
    }

    else
    {
      sub_1B256DD9C();
      OUTLINED_FUNCTION_57_1();
      v149 = OUTLINED_FUNCTION_18_1();
      v118 = v150(v149);
    }

    OUTLINED_FUNCTION_482(v118, v119, v120, v121, v122, v123, v124, v125, v209, v213, v218, v222, v225, v227, v229, v231, v233, v235, v237, v239, v241);

    v26 = 24;
    if (v115)
    {
      swift_getObjectType();
      sub_1B256DCEC();
      OUTLINED_FUNCTION_172_0();
      v115 = v151;
      swift_unknownObjectRelease();
    }

    else
    {
      v93 = 0;
    }

    sub_1B256615C(v2[314], &qword_1EB7D1910);
    OUTLINED_FUNCTION_43_0();
    swift_allocObject();
    OUTLINED_FUNCTION_43_7();
    *(v152 + 16) = v160;
    *(v152 + 24) = v240;
    if (v115 | v93)
    {
      OUTLINED_FUNCTION_417(v152, v153, v154, v155, v156, v157, v158, v159, v210, v214);
      v2[195] = v93;
      v2[196] = v115;
    }

    OUTLINED_FUNCTION_40_9();
    OUTLINED_FUNCTION_509(v161, v162, v163, v164, v165, v166, v167, v168, v210, v214, v219, v223);

    OUTLINED_FUNCTION_266_0();
LABEL_34:
    sub_1B24D0BE8();
LABEL_35:
    if (++v24 == v2[321])
    {
      v169 = sub_1B256DE9C();
      if (v169)
      {
        OUTLINED_FUNCTION_464();
        OUTLINED_FUNCTION_159_2();
        OUTLINED_FUNCTION_14_2();
        sub_1B256E0CC();
        OUTLINED_FUNCTION_43_0();
        v170 = swift_allocObject();
        OUTLINED_FUNCTION_451(v170);
        OUTLINED_FUNCTION_43_0();
        swift_allocObject();
        OUTLINED_FUNCTION_145_1();
        v243 = v171;
        OUTLINED_FUNCTION_505(v172, v171);
        v39 = sub_1B256D5CC();
        OUTLINED_FUNCTION_119_2();
        v173 = swift_allocObject();
        OUTLINED_FUNCTION_62_5(v173);
        OUTLINED_FUNCTION_119_2();
        v174 = swift_allocObject();
        OUTLINED_FUNCTION_61_3(v174);
        OUTLINED_FUNCTION_43_0();
        v175 = swift_allocObject();
        OUTLINED_FUNCTION_28_13(v175);
        OUTLINED_FUNCTION_43_0();
        v176 = swift_allocObject();
        OUTLINED_FUNCTION_30_10(v176);
        OUTLINED_FUNCTION_119_2();
        v177 = swift_allocObject();
        OUTLINED_FUNCTION_161_2(v177);
        OUTLINED_FUNCTION_119_2();
        v178 = swift_allocObject();
        OUTLINED_FUNCTION_183_1(v178);
        OUTLINED_FUNCTION_43_0();
        v179 = swift_allocObject();
        OUTLINED_FUNCTION_39_9(v179);
        OUTLINED_FUNCTION_43_0();
        v180 = swift_allocObject();
        OUTLINED_FUNCTION_34_9(v180);
        v181 = OUTLINED_FUNCTION_272(v246);
        OUTLINED_FUNCTION_22_12(v181, v182, v183, v184, v185, v186, v187, v188, v189, v207, v211, v215, v220, v190);
        v191[6] = sub_1B25661DC;
        v191[7] = v24;
        v191[8] = sub_1B25661B0;
        v191[9] = v26;
        v191[10] = sub_1B25661DC;
        v191[11] = &unk_1EB7D2CD0;
        v191[12] = sub_1B25661DC;
        v191[13] = v3;
        v191[14] = sub_1B25661B0;
        v191[15] = v13;
        swift_setDeallocating();
        OUTLINED_FUNCTION_502();
        if (OUTLINED_FUNCTION_292_0())
        {
          OUTLINED_FUNCTION_93_3();
          v192 = OUTLINED_FUNCTION_126_1();
          *v22 = 136446466;
          OUTLINED_FUNCTION_10_23(v192);
          v193 = OUTLINED_FUNCTION_28_1();
          MEMORY[0x1B2749D50](v193);
          OUTLINED_FUNCTION_94_0();
          OUTLINED_FUNCTION_156_1();
          OUTLINED_FUNCTION_172_0();

          OUTLINED_FUNCTION_54_8();
          *(v22 + 14) = sub_1B2519814(v243, v247, v248);
          OUTLINED_FUNCTION_113_3(&dword_1B23EF000, v194, v195, "%{public}s%{public}s");
          OUTLINED_FUNCTION_101_2();
          OUTLINED_FUNCTION_63_0();
LABEL_48:
          OUTLINED_FUNCTION_11_4();
        }

LABEL_49:
      }

      else if (*(v247 + 16))
      {
        v203 = OUTLINED_FUNCTION_296_0();
        OUTLINED_FUNCTION_81_4(v203);
        OUTLINED_FUNCTION_154();

        v204 = v236;
        sub_1B256DD5C();
        OUTLINED_FUNCTION_355();
        v205 = swift_allocObject();
        v206 = OUTLINED_FUNCTION_185_1(v205);
        OUTLINED_FUNCTION_44_8(v206, MEMORY[0x1E69E85E0]);
      }

      else
      {
      }

      v196 = OUTLINED_FUNCTION_26_14();
      sub_1B25579B4(v196, v197, v198, v199);

      v200 = OUTLINED_FUNCTION_91_4();
      sub_1B24E313C(v200, v228);
      v201 = OUTLINED_FUNCTION_90_5();
      sub_1B24E313C(v201, v230);
      OUTLINED_FUNCTION_6_30();
      OUTLINED_FUNCTION_400();

      OUTLINED_FUNCTION_7_2();

      return v202();
    }
  }

  OUTLINED_FUNCTION_223_0();
  OUTLINED_FUNCTION_423();

  if (!Strong || (OUTLINED_FUNCTION_266_0(), sub_1B2458898(), (v126 & 1) == 0))
  {
    swift_endAccess();
    OUTLINED_FUNCTION_266_0();
    goto LABEL_34;
  }

  v238 = v13;
  v240 = v24;
  v127 = v2[305];
  v128 = v2[304];
  OUTLINED_FUNCTION_3_38();
  sub_1B255FE0C();
  OUTLINED_FUNCTION_2_40();
  sub_1B25636F8();
  swift_endAccess();
  v129 = swift_weakLoadStrong();
  if (v129)
  {
    v127 = v129;
    v128 = v2[315];
    v130 = sub_1B256DDAC();
    v133 = OUTLINED_FUNCTION_102_3(v128, v131, v132, v130);
    OUTLINED_FUNCTION_325_0(v133, v134, v135, v136, v137, v138, v139, v140, v207, v211, v215, v220, v224, v226, v228, v230, v232, v234, v236);

    sub_1B256DD5C();
    OUTLINED_FUNCTION_187_1();
    v141 = swift_allocObject();
    v142 = OUTLINED_FUNCTION_185_1(v141);
    *(v142 + 24) = MEMORY[0x1E69E85E0];
    *(v142 + 32) = v127;
    OUTLINED_FUNCTION_21_18(v142);
    sub_1B247DAA8();
    OUTLINED_FUNCTION_154();
  }

  result = OUTLINED_FUNCTION_343();
  v144 = 0;
  while (2)
  {
    v145 = *(v127 + 16);
    Strong = v144;
LABEL_21:
    if (Strong == v145)
    {
      *v22 = 0;
      v144 = v145;
LABEL_26:
      OUTLINED_FUNCTION_356();
      sub_1B24C42F0();
      if (*(v4 + 120))
      {

        sub_1B24D0BE8();
        OUTLINED_FUNCTION_0_47();
        sub_1B2563750();
        v3 = v232;
        v26 = 24;
        goto LABEL_35;
      }

      OUTLINED_FUNCTION_418();
      sub_1B24C42F0();
      swift_weakLoadStrong();
      result = OUTLINED_FUNCTION_484();
      Strong = v144;
      if (v128)
      {
        v146 = OUTLINED_FUNCTION_294_0();
        sub_1B25603E8(v146, v128);

        continue;
      }

      goto LABEL_21;
    }

    break;
  }

  if ((Strong & 0x8000000000000000) == 0)
  {
    if (Strong >= *(v127 + 16))
    {
      goto LABEL_57;
    }

    sub_1B24C5C14();
    v144 = Strong + 1;
    goto LABEL_26;
  }

  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

uint64_t sub_1B25549F4()
{
  OUTLINED_FUNCTION_4_0();
  v6 = *(v0 + 2688);

  sub_1B2564100(v1);
  *(v0 + 2704) = v6;

  v2 = OUTLINED_FUNCTION_240_0();

  return MEMORY[0x1EEE6DEB0](v2, v3, v4, v0 + 1632);
}

void sub_1B2554AB8()
{
  v346 = v0;
  v1 = v0[338];
  v306 = v0[333];
  v308 = v0[334];
  v2 = v0[326];
  v3 = v0[325];
  v338 = v0[323];
  v4 = v0[299];
  v5 = v0[298];
  v343 = sub_1B251954C(104);
  v344 = v6;
  OUTLINED_FUNCTION_290_0();
  v0[291] = v2;
  OUTLINED_FUNCTION_14_3();
  v7 = sub_1B256EAAC();
  MEMORY[0x1B2749D50](v7);

  OUTLINED_FUNCTION_390();
  v320 = v3;
  OUTLINED_FUNCTION_335_0();
  OUTLINED_FUNCTION_14_3();
  v8 = sub_1B256EAAC();
  MEMORY[0x1B2749D50](v8);

  OUTLINED_FUNCTION_392();
  v9 = *(v1 + 16);
  v332 = v1;

  v0[285] = v9;
  OUTLINED_FUNCTION_14_3();
  sub_1B256EAAC();
  OUTLINED_FUNCTION_329_0();

  MEMORY[0x1B2749D50](46, 0xE100000000000000);
  v10 = v343;
  v11 = v344;
  v323 = sub_1B256E08C();
  OUTLINED_FUNCTION_43_0();
  v12 = swift_allocObject();
  *(v12 + 16) = v5;
  *(v12 + 24) = v4;
  OUTLINED_FUNCTION_43_0();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_403(v13);

  v328 = sub_1B256D5CC();
  OUTLINED_FUNCTION_119_2();
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_144_1(v14);
  OUTLINED_FUNCTION_119_2();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_334_0(v15);
  OUTLINED_FUNCTION_43_0();
  v16 = swift_allocObject();
  OUTLINED_FUNCTION_89_2(v16);
  OUTLINED_FUNCTION_43_0();
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1B25661CC;
  *(v17 + 24) = v16;
  OUTLINED_FUNCTION_119_2();
  v18 = swift_allocObject();
  *(v18 + 16) = v1;
  OUTLINED_FUNCTION_119_2();
  v19 = swift_allocObject();
  *(v19 + 16) = v4;
  OUTLINED_FUNCTION_43_0();
  v20 = swift_allocObject();
  OUTLINED_FUNCTION_88_1(v20);
  OUTLINED_FUNCTION_43_0();
  swift_allocObject();
  OUTLINED_FUNCTION_83_5();
  *(v21 + 16) = v22;
  *(v21 + 24) = v20;
  v23 = OUTLINED_FUNCTION_272(v338);
  v24 = OUTLINED_FUNCTION_66_4(v23, xmmword_1B2587210);
  v24[3].n128_u64[0] = sub_1B25661DC;
  v24[3].n128_u64[1] = 0xD00000000000001CLL;
  v25 = v323;
  v24[4].n128_u64[0] = sub_1B25661B0;
  v24[4].n128_u64[1] = v17;
  v24[5].n128_u64[0] = sub_1B25661DC;
  v24[5].n128_u64[1] = v18;
  v24[6].n128_u64[0] = sub_1B25661DC;
  v24[6].n128_u64[1] = v19;
  v24[7].n128_u64[0] = sub_1B25661B0;
  v24[7].n128_u64[1] = v13;
  swift_setDeallocating();
  v26 = v328;
  sub_1B24C3DB8();
  v335 = v0;
  if (os_log_type_enabled(v328, v323))
  {
    v27 = OUTLINED_FUNCTION_152_1();
    v28 = OUTLINED_FUNCTION_20_4();
    OUTLINED_FUNCTION_369(v28);
    *v27 = 136446466;
    OUTLINED_FUNCTION_53_1();
    v29 = OUTLINED_FUNCTION_157_0();
    MEMORY[0x1B2749D50](v29);
    OUTLINED_FUNCTION_94_0();
    OUTLINED_FUNCTION_127_1();
    OUTLINED_FUNCTION_172_0();

    *(v27 + 4) = v19;
    OUTLINED_FUNCTION_439();
    sub_1B2519814(v10, v11, v345);
    OUTLINED_FUNCTION_200_1();

    *(v27 + 14) = "ype";
    _os_log_impl(&dword_1B23EF000, v328, v323, "%{public}s%{public}s", v27, 0x16u);
    OUTLINED_FUNCTION_394();
    OUTLINED_FUNCTION_236();
    OUTLINED_FUNCTION_63_0();
  }

  else
  {
  }

  if (sub_1B256DE9C())
  {
    v329 = v0[323];
    v30 = v0[322];
    v31 = v0[298];

    sub_1B256E0CC();
    OUTLINED_FUNCTION_43_0();
    v32 = swift_allocObject();
    OUTLINED_FUNCTION_243_0(v32);
    OUTLINED_FUNCTION_43_0();
    swift_allocObject();
    OUTLINED_FUNCTION_105_3();
    v324 = v33 + 13;
    *(v34 + 16) = v33 + 13;
    *(v34 + 24) = 0x80000001B2593170;

    v35 = sub_1B256D5CC();
    OUTLINED_FUNCTION_119_2();
    v36 = swift_allocObject();
    OUTLINED_FUNCTION_62_5(v36);
    OUTLINED_FUNCTION_119_2();
    v37 = swift_allocObject();
    OUTLINED_FUNCTION_61_3(v37);
    OUTLINED_FUNCTION_43_0();
    v38 = swift_allocObject();
    OUTLINED_FUNCTION_28_13(v38);
    OUTLINED_FUNCTION_43_0();
    v39 = swift_allocObject();
    OUTLINED_FUNCTION_30_10(v39);
    OUTLINED_FUNCTION_119_2();
    v40 = swift_allocObject();
    OUTLINED_FUNCTION_161_2(v40);
    OUTLINED_FUNCTION_119_2();
    v41 = swift_allocObject();
    OUTLINED_FUNCTION_183_1(v41);
    OUTLINED_FUNCTION_43_0();
    v42 = swift_allocObject();
    OUTLINED_FUNCTION_39_9(v42);
    OUTLINED_FUNCTION_43_0();
    v43 = swift_allocObject();
    v51 = OUTLINED_FUNCTION_99_5(v43, v44, v45, v46, v47, v48, v49, v50, v288, v289, v290, v292, v294, v295, v296, v297, v298, v299, v301, v302, v303, v305, v306, v308, 6, 12, v311, v313, v10, v320, v324, v329);
    v52 = OUTLINED_FUNCTION_66_4(v51, v310);
    v52[3].n128_u64[0] = sub_1B25661DC;
    v52[3].n128_u64[1] = v13;
    v52[4].n128_u64[0] = sub_1B25661B0;
    v52[4].n128_u64[1] = v25;
    v52[5].n128_u64[0] = sub_1B25661DC;
    v52[5].n128_u64[1] = v19;
    v52[6].n128_u64[0] = sub_1B25661DC;
    v52[6].n128_u64[1] = v30;
    v52[7].n128_u64[0] = sub_1B25661B0;
    v52[7].n128_u64[1] = v31;
    swift_setDeallocating();
    OUTLINED_FUNCTION_348();
    if (OUTLINED_FUNCTION_292_0())
    {
      OUTLINED_FUNCTION_93_3();
      v53 = OUTLINED_FUNCTION_126_1();
      OUTLINED_FUNCTION_194_1(v53);
      OUTLINED_FUNCTION_13_19(4.8752e-34);
      v54 = OUTLINED_FUNCTION_28_1();
      MEMORY[0x1B2749D50](v54);
      OUTLINED_FUNCTION_94_0();
      OUTLINED_FUNCTION_127_1();
      OUTLINED_FUNCTION_172_0();

      OUTLINED_FUNCTION_35_8();
      *(&v26[1].isa + 6) = sub_1B2519814(v325, 0x80000001B2593170, v55);
      OUTLINED_FUNCTION_113_3(&dword_1B23EF000, v56, v57, "%{public}s%{public}s");
      OUTLINED_FUNCTION_101_2();
      OUTLINED_FUNCTION_63_0();
      OUTLINED_FUNCTION_22_8();
    }

    v59 = v307;
    v58 = v309;
    v60 = OUTLINED_FUNCTION_26_14();
LABEL_76:
    sub_1B25579B4(v60, v61, v62, v63);
LABEL_77:

    v198 = OUTLINED_FUNCTION_91_4();
    sub_1B24E313C(v198, v59);
    v199 = OUTLINED_FUNCTION_90_5();
    sub_1B24E313C(v199, v58);
    OUTLINED_FUNCTION_6_30();

    OUTLINED_FUNCTION_7_2();

    v200();
    return;
  }

  v64 = v0;
  v330 = (v0 + 287);
  v65 = *(v320 + 16);
  if (v65)
  {
    v66 = v0[300];
    v67 = (v0[325] + 40);
    do
    {
      v68 = *v67;
      OUTLINED_FUNCTION_50_5(v66 + 120, (v0 + 263));

      v69 = OUTLINED_FUNCTION_201_0();
      sub_1B253EC24(v69, v70, v68);
      OUTLINED_FUNCTION_340();
      if (v96)
      {
        v72 = OUTLINED_FUNCTION_212_0();
        v73(v72);
        swift_endAccess();
      }

      else
      {
        *v71 = 0;
        v74 = OUTLINED_FUNCTION_212_0();
        v75(v74);
        swift_endAccess();
      }

      v67 += 2;
      --v65;
    }

    while (v65);
  }

  v76 = v0[325];
  v77 = v0[320];
  v78 = v0[317];
  sub_1B256D34C();
  sub_1B256D29C();
  v79 = (v78 + 8);
  v80 = OUTLINED_FUNCTION_13_5();
  v304 = v81;
  v81(v80);

  v83 = sub_1B24CF3D4(v82);
  v0[287] = MEMORY[0x1E69E7CD0];
  OUTLINED_FUNCTION_87_4();
  v342 = sub_1B24CF4AC(v76, v84, 0);
  if (*(v332 + 16))
  {
    v79 = 0;
    v85 = v0[309];
    v314 = v335[302];
    v321 = v335[310];
    v339 = v335[300];
    v86 = *(v332 + 16);
    v326 = v86;
    while (v79 < v86)
    {
      v87 = v64[309];
      sub_1B255FE0C();
      OUTLINED_FUNCTION_18_1();
      sub_1B255FE0C();
      v89 = *(v85 + 48);
      v88 = *(v85 + 56);

      OUTLINED_FUNCTION_1_44();
      sub_1B2563750();
      sub_1B256ED3C();
      OUTLINED_FUNCTION_78();
      sub_1B256DA7C();
      sub_1B256ED7C();
      OUTLINED_FUNCTION_18_16();
      if (v91)
      {
        v92 = ~v90;
        v93 = v83;
        v94 = *(v83 + 48);
        while (1)
        {
          v95 = v94 + 24 * v87;
          if ((*(v95 + 16) & 1) == 0)
          {
            v96 = *v95 == v89 && *(v95 + 8) == v88;
            if (v96 || (sub_1B256EB5C() & 1) != 0)
            {
              break;
            }
          }

          v87 = (v87 + 1) & v92;
          OUTLINED_FUNCTION_97_6();
          if ((v97 & 1) == 0)
          {

            v83 = v93;
            goto LABEL_31;
          }
        }

        v343 = v93;
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_1B2561E44();
        }

        OUTLINED_FUNCTION_117_2();
        sub_1B25637A0(v87);

        v83 = v343;
LABEL_31:
        v64 = v335;
      }

      else
      {
      }

      v98 = v64[319];
      v99 = v64[310];
      v100 = v64[306];
      OUTLINED_FUNCTION_5_32();
      OUTLINED_FUNCTION_379();
      sub_1B255FE0C();
      v77 = *(v85 + 56);

      OUTLINED_FUNCTION_1_44();
      sub_1B2563750();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2CC0, &qword_1B2587238);
      v101 = OUTLINED_FUNCTION_11_16();
      __swift_storeEnumTagSinglePayload(v101, v102, v103, v104);
      swift_weakInit();
      *(v100 + *(v314 + 24)) = MEMORY[0x1E69E7CC0];
      v25 = swift_task_alloc();
      *(v25 + 16) = v99;
      *(v25 + 24) = v98;
      *(v25 + 32) = v330;
      OUTLINED_FUNCTION_50_5(v339 + 112, (v64 + 209));
      OUTLINED_FUNCTION_77_6();
      v105 = OUTLINED_FUNCTION_157_0();
      sub_1B253ECE0(v105, v106, v100, v107, v25);
      swift_endAccess();

      OUTLINED_FUNCTION_0_47();
      sub_1B2563750();
      memmove(v64 + 167, (v321 + 160), 0xD0uLL);
      if (sub_1B2447BD4((v64 + 167)) == 1)
      {
        v108 = v326;
      }

      else
      {
        v109 = v64[183];
        v25 = v64[184];
        sub_1B256ED3C();
        OUTLINED_FUNCTION_74();
        swift_bridgeObjectRetain_n();
        sub_1B256DA7C();
        sub_1B256ED7C();
        OUTLINED_FUNCTION_18_16();
        if (v111)
        {
          v112 = ~v110;
          while (1)
          {
            OUTLINED_FUNCTION_205_0();
            if (v96)
            {
              v114 = *v113 == v109 && v113[1] == v25;
              if (v114 || (sub_1B256EB5C() & 1) != 0)
              {
                break;
              }
            }

            v77 = (v77 + 1) & v112;
            OUTLINED_FUNCTION_97_6();
            if ((v115 & 1) == 0)
            {

              v64 = v335;
              goto LABEL_46;
            }
          }

          v343 = v83;
          v108 = v326;
          if (!swift_isUniquelyReferenced_nonNull_native())
          {
            sub_1B2561E44();
          }

          OUTLINED_FUNCTION_117_2();
          sub_1B25637A0(v77);

          v83 = v343;
          v64 = v335;
        }

        else
        {

LABEL_46:
          v108 = v326;
        }

        v116 = v64[310];

        sub_1B2560518();

        v77 = swift_task_alloc();
        *(v77 + 16) = v116;
        OUTLINED_FUNCTION_50_5(v339 + 120, (v64 + 260));
        OUTLINED_FUNCTION_76_5();
        v117 = OUTLINED_FUNCTION_285_0();
        sub_1B253E9A8(v117, v118, v119);
        swift_endAccess();
      }

      v79 = (v79 + 1);
      OUTLINED_FUNCTION_1_44();
      sub_1B2563750();
      if (v79 == v108)
      {
        goto LABEL_53;
      }

      v86 = *(v332 + 16);
    }

    __break(1u);
  }

  else
  {
LABEL_53:
    if (sub_1B256DE9C())
    {
      v336 = v64[323];
      v120 = v64[300];

      sub_1B256E0CC();
      OUTLINED_FUNCTION_43_0();
      v121 = swift_allocObject();
      OUTLINED_FUNCTION_313_0(v121);
      OUTLINED_FUNCTION_43_0();
      swift_allocObject();
      OUTLINED_FUNCTION_105_3();
      v331 = v122 + 21;
      v333 = 0x80000001B2593130;
      *(v123 + 16) = v122 + 21;
      *(v123 + 24) = 0x80000001B2593130;

      v124 = sub_1B256D5CC();
      OUTLINED_FUNCTION_119_2();
      v125 = swift_allocObject();
      OUTLINED_FUNCTION_62_5(v125);
      OUTLINED_FUNCTION_119_2();
      v126 = swift_allocObject();
      OUTLINED_FUNCTION_61_3(v126);
      OUTLINED_FUNCTION_43_0();
      v127 = swift_allocObject();
      OUTLINED_FUNCTION_28_13(v127);
      OUTLINED_FUNCTION_43_0();
      v128 = swift_allocObject();
      OUTLINED_FUNCTION_30_10(v128);
      OUTLINED_FUNCTION_119_2();
      v129 = swift_allocObject();
      OUTLINED_FUNCTION_161_2(v129);
      OUTLINED_FUNCTION_119_2();
      v130 = swift_allocObject();
      OUTLINED_FUNCTION_183_1(v130);
      OUTLINED_FUNCTION_43_0();
      v131 = swift_allocObject();
      OUTLINED_FUNCTION_39_9(v131);
      OUTLINED_FUNCTION_43_0();
      v132 = swift_allocObject();
      OUTLINED_FUNCTION_34_9(v132);
      v133 = OUTLINED_FUNCTION_272(v336);
      v134 = OUTLINED_FUNCTION_66_4(v133, xmmword_1B2587210);
      v134[3].n128_u64[0] = sub_1B25661DC;
      v134[3].n128_u64[1] = v64;
      v134[4].n128_u64[0] = sub_1B25661B0;
      v134[4].n128_u64[1] = v25;
      v134[5].n128_u64[0] = sub_1B25661DC;
      v134[5].n128_u64[1] = v77;
      v134[6].n128_u64[0] = sub_1B25661DC;
      v134[6].n128_u64[1] = v120;
LABEL_73:
      v134[7].n128_u64[0] = sub_1B25661B0;
      v134[7].n128_u64[1] = v83;
      swift_setDeallocating();
      OUTLINED_FUNCTION_348();
      if (OUTLINED_FUNCTION_292_0())
      {
        OUTLINED_FUNCTION_93_3();
        v192 = OUTLINED_FUNCTION_126_1();
        OUTLINED_FUNCTION_194_1(v192);
        OUTLINED_FUNCTION_13_19(4.8752e-34);
        v193 = OUTLINED_FUNCTION_28_1();
        MEMORY[0x1B2749D50](v193);
        OUTLINED_FUNCTION_94_0();
        OUTLINED_FUNCTION_127_1();
        OUTLINED_FUNCTION_172_0();

        OUTLINED_FUNCTION_35_8();
        *(v79 + 14) = sub_1B2519814(v331, v333, v194);
        OUTLINED_FUNCTION_113_3(&dword_1B23EF000, v195, v196, "%{public}s%{public}s");
        OUTLINED_FUNCTION_101_2();
        OUTLINED_FUNCTION_63_0();
        OUTLINED_FUNCTION_22_8();
      }

      v59 = v306;
      v58 = v308;
      OUTLINED_FUNCTION_162_2();
      v197 = OUTLINED_FUNCTION_41_1();
      v304(v197);
      v60 = OUTLINED_FUNCTION_249_0();
      goto LABEL_76;
    }

    v300 = v64 + 279;
    v135 = v83 + 56;
    v327 = v64[300];
    OUTLINED_FUNCTION_140_1();
    v136 = v83;
    v139 = v138 & v137;
    v141 = (63 - v140) >> 6;
    v340 = v136;

    v142 = 0;
    while (v139)
    {
      v143 = v142;
LABEL_61:
      v144 = *(v340 + 48) + 24 * (__clz(__rbit64(v139)) | (v143 << 6));
      v145 = *v144;
      v146 = *(v144 + 8);
      v147 = *(v144 + 16);
      OUTLINED_FUNCTION_29_1();
      sub_1B24D0BE0();
      if (v147)
      {
        v148 = 0;
        v149 = 0;
      }

      else
      {

        v148 = v145;
        v149 = v146;
      }

      v139 &= v139 - 1;
      OUTLINED_FUNCTION_29_1();
      sub_1B24D0BE8();
      v343 = v148;
      v344 = v149;
      if (sub_1B25653C4(&v343))
      {
        v64 = v335;
        if (!v149)
        {
          goto LABEL_127;
        }

        OUTLINED_FUNCTION_50_5(v327 + 112, (v335 + 266));
        v150 = OUTLINED_FUNCTION_24();
        sub_1B2438BF0(v150, v151, v152, v330);
        swift_endAccess();

        v142 = v143;
      }

      else
      {

        v142 = v143;
        v64 = v335;
      }
    }

    while (1)
    {
      v143 = v142 + 1;
      if (__OFADD__(v142, 1))
      {
        break;
      }

      if (v143 >= v141)
      {
        v318 = v64[323];
        v153 = v64[322];
        v154 = v64[299];
        v155 = v64[298];
        v156 = OUTLINED_FUNCTION_117_0();
        sub_1B23FB6C4(v156);
        v343 = sub_1B251954C(60);
        v344 = v157;
        OUTLINED_FUNCTION_189_0();
        v64[289] = *(v340 + 16);
        sub_1B256EAAC();
        OUTLINED_FUNCTION_329_0();

        OUTLINED_FUNCTION_75_0();
        MEMORY[0x1B2749D50](0xD00000000000001CLL);
        v159 = v343;
        v158 = v344;
        v315 = sub_1B256E08C();
        OUTLINED_FUNCTION_43_0();
        v160 = swift_allocObject();
        *(v160 + 16) = v155;
        *(v160 + 24) = v154;
        OUTLINED_FUNCTION_43_0();
        v161 = swift_allocObject();
        v312 = v159;
        *(v161 + 16) = v159;
        *(v161 + 24) = v158;

        v322 = v158;

        v162 = sub_1B256D5CC();
        OUTLINED_FUNCTION_119_2();
        v163 = swift_allocObject();
        OUTLINED_FUNCTION_181_0(v163);
        OUTLINED_FUNCTION_119_2();
        v164 = swift_allocObject();
        *(v164 + 16) = 8;
        OUTLINED_FUNCTION_43_0();
        v165 = swift_allocObject();
        *(v165 + 16) = sub_1B25661D0;
        *(v165 + 24) = v160;
        OUTLINED_FUNCTION_43_0();
        v79 = swift_allocObject();
        v79[2] = sub_1B25661CC;
        v79[3] = v165;
        OUTLINED_FUNCTION_119_2();
        v166 = swift_allocObject();
        *(v166 + 16) = v153;
        v167 = v162;
        OUTLINED_FUNCTION_119_2();
        v168 = swift_allocObject();
        *(v168 + 16) = 8;
        OUTLINED_FUNCTION_43_0();
        swift_allocObject();
        v169 = v64;
        OUTLINED_FUNCTION_84_5();
        *(v170 + 16) = v171;
        *(v170 + 24) = v161;
        OUTLINED_FUNCTION_43_0();
        v172 = swift_allocObject();
        OUTLINED_FUNCTION_85_1(v172);
        v173 = OUTLINED_FUNCTION_272(v318);
        v174 = OUTLINED_FUNCTION_66_4(v173, xmmword_1B2587210);
        v174[3].n128_u64[0] = sub_1B25661DC;
        v174[3].n128_u64[1] = v164;
        v174[4].n128_u64[0] = sub_1B25661B0;
        v174[4].n128_u64[1] = v79;
        v174[5].n128_u64[0] = sub_1B25661DC;
        v174[5].n128_u64[1] = v166;
        v174[6].n128_u64[0] = sub_1B25661DC;
        v174[6].n128_u64[1] = v168;
        v174[7].n128_u64[0] = sub_1B25661B0;
        v174[7].n128_u64[1] = v172;
        swift_setDeallocating();
        sub_1B24C3DB8();
        if (os_log_type_enabled(v167, v315))
        {
          v175 = v169[299];
          v176 = v169[298];
          OUTLINED_FUNCTION_21_3();
          v172 = OUTLINED_FUNCTION_126_1();
          v345[0] = v172;
          OUTLINED_FUNCTION_13_19(4.8752e-34);
          MEMORY[0x1B2749D50](v176, v175);
          OUTLINED_FUNCTION_94_0();
          v177 = OUTLINED_FUNCTION_127_1();

          *(v79 + 4) = v177;
          OUTLINED_FUNCTION_58_4();
          sub_1B2519814(v312, v158, v178);
          OUTLINED_FUNCTION_120();

          *(v79 + 14) = v173;
          OUTLINED_FUNCTION_277_0(&dword_1B23EF000, v167, v315, "%{public}s%{public}s");
          OUTLINED_FUNCTION_304_0();
          OUTLINED_FUNCTION_7_12();
          OUTLINED_FUNCTION_22_8();
        }

        else
        {
        }

        v83 = v340;
        if (sub_1B256DE9C())
        {
          v337 = v169[323];
          OUTLINED_FUNCTION_120_1();

          OUTLINED_FUNCTION_511(v179);
          OUTLINED_FUNCTION_43_0();
          v180 = swift_allocObject();
          OUTLINED_FUNCTION_313_0(v180);
          OUTLINED_FUNCTION_43_0();
          swift_allocObject();
          OUTLINED_FUNCTION_105_3();
          v331 = v181 + 38;
          v333 = v79;
          *(v182 + 16) = v181 + 38;
          *(v182 + 24) = v79;

          v124 = sub_1B256D5CC();
          OUTLINED_FUNCTION_119_2();
          v183 = swift_allocObject();
          OUTLINED_FUNCTION_62_5(v183);
          OUTLINED_FUNCTION_119_2();
          v184 = swift_allocObject();
          OUTLINED_FUNCTION_61_3(v184);
          OUTLINED_FUNCTION_43_0();
          v185 = swift_allocObject();
          OUTLINED_FUNCTION_28_13(v185);
          OUTLINED_FUNCTION_43_0();
          v186 = swift_allocObject();
          OUTLINED_FUNCTION_30_10(v186);
          OUTLINED_FUNCTION_119_2();
          v187 = swift_allocObject();
          OUTLINED_FUNCTION_161_2(v187);
          OUTLINED_FUNCTION_119_2();
          v188 = swift_allocObject();
          OUTLINED_FUNCTION_183_1(v188);
          OUTLINED_FUNCTION_43_0();
          v189 = swift_allocObject();
          OUTLINED_FUNCTION_39_9(v189);
          OUTLINED_FUNCTION_43_0();
          v190 = swift_allocObject();
          OUTLINED_FUNCTION_34_9(v190);
          v191 = OUTLINED_FUNCTION_272(v337);
          v134 = OUTLINED_FUNCTION_66_4(v191, xmmword_1B2587210);
          v134[3].n128_u64[0] = sub_1B25661DC;
          v134[3].n128_u64[1] = v173;
          v134[4].n128_u64[0] = sub_1B25661B0;
          v134[4].n128_u64[1] = v164;
          v134[5].n128_u64[0] = sub_1B25661DC;
          v134[5].n128_u64[1] = v172;
          v134[6].n128_u64[0] = sub_1B25661DC;
          v134[6].n128_u64[1] = v167;
          goto LABEL_73;
        }

        v201 = *v330;
        v202 = MEMORY[0x1E69E85E0];
        if (*(*v330 + 16))
        {
          v203 = v169[315];
          v204 = v169[300];
          v205 = v169[299];
          v206 = v169[298];
          v207 = sub_1B256DDAC();
          OUTLINED_FUNCTION_102_3(v203, v208, v209, v207);
          OUTLINED_FUNCTION_154();

          v210 = sub_1B256DD5C();
          OUTLINED_FUNCTION_438();
          v211 = swift_allocObject();
          v211[2] = v210;
          v211[3] = v202;
          v211[4] = v201;
          v211[5] = v332;
          v211[6] = v340;
          v211[7] = v204;
          v211[8] = v206;
          v211[9] = v205;
          OUTLINED_FUNCTION_107_0();
          sub_1B247DAA8();
        }

        else
        {
        }

        v212 = v342 + 56;
        OUTLINED_FUNCTION_111_2();
        v319 = v214;
LABEL_84:
        while (v164)
        {
          v215 = v213;
LABEL_89:
          OUTLINED_FUNCTION_110_3();
          v217 = (*(v342 + 48) + ((v215 << 10) | (16 * v216)));
          v219 = *v217;
          v218 = v217[1];
          OUTLINED_FUNCTION_278_0(v322 + 120, (v169 + 257));
          v220 = *(*(v322 + 120) + 16);

          if (v220 && (v221 = sub_1B2458898(), (v222 & 1) != 0))
          {
            v223 = OUTLINED_FUNCTION_284_0(v221);
            sub_1B247D7E0(v223, (v169 + 277));
            sub_1B244ADF4((v169 + 277), v300);
            swift_endAccess();
            Strong = swift_weakLoadStrong();
            if (Strong)
            {
              v291 = Strong;

              if (*v300)
              {
                v225 = *v300;
              }

              else
              {
                v225 = MEMORY[0x1E69E7CD0];
              }

              v316 = v225 + 56;
              OUTLINED_FUNCTION_52_4();
              v228 = v227 & v226;
              OUTLINED_FUNCTION_231_0();
              v230 = v229 >> 6;

              v231 = 0;
              v293 = MEMORY[0x1E69E7CC0];
              while (v228)
              {
LABEL_101:
                OUTLINED_FUNCTION_278_0(v327 + 112, (v169 + 233));
                OUTLINED_FUNCTION_361();
                if (v233)
                {

                  sub_1B2458898();
                  v234 = v169[307];
                  v235 = v169[302];
                  if (v236)
                  {
                    OUTLINED_FUNCTION_3_38();
                    sub_1B255FE0C();
                    v237 = v234;
                    v238 = 0;
                  }

                  else
                  {
                    v237 = OUTLINED_FUNCTION_208_0();
                  }

                  __swift_storeEnumTagSinglePayload(v237, v238, 1, v235);
                  v169 = v335;
                  v212 = v342 + 56;
                }

                else
                {
                  OUTLINED_FUNCTION_16_2();
                  __swift_storeEnumTagSinglePayload(v239, v240, v241, v242);
                }

                v228 &= v228 - 1;
                v243 = v169[307];
                v244 = OUTLINED_FUNCTION_59_1();
                if (__swift_getEnumTagSinglePayload(v244, v245, v246) || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2CC0, &qword_1B2587238), v247 = OUTLINED_FUNCTION_59_1(), __swift_getEnumTagSinglePayload(v247, v248, v249)))
                {
                  sub_1B256615C(v243, &qword_1EB7CFEA0);
                  swift_endAccess();
                }

                else
                {
                  OUTLINED_FUNCTION_5_32();
                  sub_1B255FE0C();
                  sub_1B256615C(v243, &qword_1EB7CFEA0);
                  swift_endAccess();

                  OUTLINED_FUNCTION_4_27();
                  OUTLINED_FUNCTION_138_0();
                  sub_1B25636F8();
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    OUTLINED_FUNCTION_38();
                    sub_1B2448D30();
                    v293 = v252;
                  }

                  v251 = *(v293 + 16);
                  v250 = *(v293 + 24);
                  v169 = v335;
                  v212 = v342 + 56;
                  if (v251 >= v250 >> 1)
                  {
                    OUTLINED_FUNCTION_69_0(v250);
                    sub_1B2448D30();
                    v293 = v253;
                  }

                  *(v293 + 16) = v251 + 1;
                  OUTLINED_FUNCTION_114_2();
                  OUTLINED_FUNCTION_4_27();
                  sub_1B25636F8();
                }
              }

              while (1)
              {
                v232 = v231 + 1;
                if (__OFADD__(v231, 1))
                {
                  goto LABEL_126;
                }

                if (v232 >= v230)
                {
                  v266 = v169[315];

                  v267 = sub_1B256DDAC();
                  OUTLINED_FUNCTION_102_3(v266, v268, v269, v267);

                  sub_1B256DD5C();
                  OUTLINED_FUNCTION_187_1();
                  v270 = swift_allocObject();
                  v271 = OUTLINED_FUNCTION_185_1(v270);
                  v271[3] = MEMORY[0x1E69E85E0];
                  v271[4] = v291;
                  v271[5] = v293;
                  OUTLINED_FUNCTION_107_0();
                  sub_1B247DAA8();

                  sub_1B25629C4(v300);
                  v213 = v215;
                  v214 = v319;
                  goto LABEL_84;
                }

                v228 = *(v316 + 8 * v232);
                ++v231;
                if (v228)
                {
                  v231 = v232;
                  goto LABEL_101;
                }
              }
            }

            sub_1B25629C4(v300);
          }

          else
          {
            swift_endAccess();
          }

          v254 = v169[322];
          v255 = v169[300];
          OUTLINED_FUNCTION_103_3();
          sub_1B256E4FC();
          v256 = OUTLINED_FUNCTION_141_1();
          MEMORY[0x1B2749D50](v256, 0x80000001B2593090);
          v169[273] = v219;
          v169[274] = v218;
          sub_1B256E78C();

          OUTLINED_FUNCTION_289_0();
          v334 = v169[275];
          v257 = v169[276];
          v258 = sub_1B256E0CC();

          v259 = v255 + v254;
          v260 = v258;
          v261 = sub_1B256D5CC();

          if (os_log_type_enabled(v261, v260))
          {
            v317 = v169[299];
            v262 = v169[298];
            v263 = OUTLINED_FUNCTION_21_3();
            v264 = OUTLINED_FUNCTION_20_4();
            OUTLINED_FUNCTION_194_1(v264);
            *v263 = 136446466;
            OUTLINED_FUNCTION_53_1();
            MEMORY[0x1B2749D50](v262, v317);
            OUTLINED_FUNCTION_94_0();
            v265 = OUTLINED_FUNCTION_127_1();

            *(v263 + 4) = v265;
            *(v263 + 12) = 2082;
            sub_1B2519814(v334, v257, v345);
            OUTLINED_FUNCTION_154();

            *(v263 + 14) = v259;
            _os_log_impl(&dword_1B23EF000, v261, v260, "%{public}s%{public}s", v263, 0x16u);
            OUTLINED_FUNCTION_101_2();
            OUTLINED_FUNCTION_63_0();
            v212 = v342 + 56;
            v169 = v335;
            OUTLINED_FUNCTION_11_4();
          }

          else
          {
          }

          v213 = v215;
          v214 = v319;
        }

        while (1)
        {
          v215 = v213 + 1;
          if (__OFADD__(v213, 1))
          {
            goto LABEL_125;
          }

          if (v215 >= v214)
          {
            v341 = v169[319];
            v272 = v169[316];
            v273 = v169[300];
            v274 = v169[299];
            v275 = v169[298];

            sub_1B256DD7C();
            sub_1B256DDAC();
            OUTLINED_FUNCTION_315_0();
            OUTLINED_FUNCTION_188_1();
            __swift_storeEnumTagSinglePayload(v276, v277, v278, v279);
            OUTLINED_FUNCTION_9_25();
            v282 = sub_1B2565104(v280, v281, &protocol conformance descriptor for StoreProductManager);
            OUTLINED_FUNCTION_15_21();
            v283 = swift_allocObject();
            v283[2] = v273;
            v283[3] = v282;
            v283[4] = v273;
            v283[5] = v275;
            v283[6] = v274;
            OUTLINED_FUNCTION_288_0(v283);

            OUTLINED_FUNCTION_107_0();
            sub_1B2484230();

            (v304)(v341, v272);
            v284 = OUTLINED_FUNCTION_26_14();
            sub_1B25579B4(v284, v285, v286, v287);
            v59 = v306;
            v58 = v308;
            goto LABEL_77;
          }

          v164 = *(v212 + 8 * v215);
          ++v213;
          if (v164)
          {
            goto LABEL_89;
          }
        }
      }

      v139 = *(v135 + 8 * v143);
      ++v142;
      if (v139)
      {
        goto LABEL_61;
      }
    }
  }

  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
}

uint64_t sub_1B2556714(uint64_t a1)
{
  v249 = v2;
  OUTLINED_FUNCTION_425();
  v6 = v2[337];
  v228 = v2[333];
  v230 = v2[334];
  v7 = OUTLINED_FUNCTION_116_2();
  OUTLINED_FUNCTION_424(v7, v8);
  OUTLINED_FUNCTION_221_0();
  v236 = v6;
  v2[296] = v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40, &qword_1B257BB10);
  v11 = OUTLINED_FUNCTION_507(v9, v10, v9, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078]);
  LODWORD(v245) = OUTLINED_FUNCTION_506(v11);
  OUTLINED_FUNCTION_43_0();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_243_0(v12);
  OUTLINED_FUNCTION_43_0();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_403(v13);

  v244 = sub_1B256D5CC();
  OUTLINED_FUNCTION_119_2();
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_144_1(v14);
  OUTLINED_FUNCTION_119_2();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_234_0(v15);
  OUTLINED_FUNCTION_43_0();
  v16 = swift_allocObject();
  OUTLINED_FUNCTION_38_9(v16);
  OUTLINED_FUNCTION_43_0();
  v17 = swift_allocObject();
  OUTLINED_FUNCTION_31_11(v17);
  OUTLINED_FUNCTION_119_2();
  v18 = swift_allocObject();
  OUTLINED_FUNCTION_450(v18);
  OUTLINED_FUNCTION_119_2();
  v19 = swift_allocObject();
  OUTLINED_FUNCTION_467(v19);
  OUTLINED_FUNCTION_43_0();
  v20 = swift_allocObject();
  OUTLINED_FUNCTION_36_7(v20);
  OUTLINED_FUNCTION_43_0();
  v21 = swift_allocObject();
  v22 = OUTLINED_FUNCTION_45_6(v21);
  v23 = OUTLINED_FUNCTION_23_12(v22, xmmword_1B2587210);
  v23[3].n128_u64[0] = sub_1B25661DC;
  v23[3].n128_u64[1] = v5;
  v24 = v244;
  v25 = OUTLINED_FUNCTION_42_6(v23);
  v26 = v245;
  v27 = OUTLINED_FUNCTION_41_10(v25);
  v27[12] = sub_1B25661DC;
  v27[13] = v4;
  v27[14] = sub_1B25661B0;
  v27[15] = v13;
  swift_setDeallocating();
  sub_1B24C3DB8();
  v28 = OUTLINED_FUNCTION_513();
  Strong = MEMORY[0x1E69E7CA0];
  if (v28)
  {
    OUTLINED_FUNCTION_152_1();
    v13 = OUTLINED_FUNCTION_126_1();
    *v22 = 136446466;
    OUTLINED_FUNCTION_10_23(v13);
    v30 = OUTLINED_FUNCTION_157_0();
    MEMORY[0x1B2749D50](v30);
    OUTLINED_FUNCTION_94_0();
    OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_172_0();

    OUTLINED_FUNCTION_54_8();
    sub_1B2519814(v1, v3, v248);
    OUTLINED_FUNCTION_200_1();

    *(v22 + 14) = "ype";
    OUTLINED_FUNCTION_224_0(&dword_1B23EF000, v31, v32, "%{public}s%{public}s");
    OUTLINED_FUNCTION_276_0(v33, v34, Strong + 8);
    OUTLINED_FUNCTION_63_0();
    OUTLINED_FUNCTION_22_8();
  }

  else
  {
  }

  if (sub_1B256DE9C())
  {
    OUTLINED_FUNCTION_464();
    OUTLINED_FUNCTION_120_1();
    v35 = v2[298];
    OUTLINED_FUNCTION_510(v36);
    OUTLINED_FUNCTION_43_0();
    v37 = swift_allocObject();
    OUTLINED_FUNCTION_452(v37);
    OUTLINED_FUNCTION_43_0();
    v38 = swift_allocObject();
    OUTLINED_FUNCTION_148_0(v38);

    v39 = sub_1B256D5CC();
    OUTLINED_FUNCTION_119_2();
    v40 = swift_allocObject();
    OUTLINED_FUNCTION_181_0(v40);
    OUTLINED_FUNCTION_119_2();
    v41 = swift_allocObject();
    OUTLINED_FUNCTION_239_0(v41);
    OUTLINED_FUNCTION_43_0();
    v42 = swift_allocObject();
    OUTLINED_FUNCTION_32_9(v42);
    OUTLINED_FUNCTION_43_0();
    v43 = swift_allocObject();
    OUTLINED_FUNCTION_33_9(v43);
    OUTLINED_FUNCTION_119_2();
    v44 = swift_allocObject();
    OUTLINED_FUNCTION_430(v44);
    OUTLINED_FUNCTION_119_2();
    v45 = swift_allocObject();
    OUTLINED_FUNCTION_161_2(v45);
    OUTLINED_FUNCTION_43_0();
    v46 = swift_allocObject();
    OUTLINED_FUNCTION_27_12(v46);
    OUTLINED_FUNCTION_43_0();
    v47 = swift_allocObject();
    OUTLINED_FUNCTION_37_7(v47);
    v48 = OUTLINED_FUNCTION_272(v245);
    OUTLINED_FUNCTION_20_17(v48, v49, v50, v51, v52, v53, v54, v55, v56, v207, v211, v215, v220, v57);
    *(v58 + 48) = sub_1B25661DC;
    *(v58 + 56) = v13;
    v59 = OUTLINED_FUNCTION_29_12(v58);
    v59[10] = sub_1B25661DC;
    v59[11] = v245;
    v59[12] = sub_1B25661DC;
    v59[13] = v6;
    v59[14] = sub_1B25661B0;
    v59[15] = v35;
    swift_setDeallocating();
    sub_1B24C3DB8();
    if (OUTLINED_FUNCTION_508())
    {
      OUTLINED_FUNCTION_93_3();
      v60 = OUTLINED_FUNCTION_3_23();
      *v4 = 136446466;
      OUTLINED_FUNCTION_10_23(v60);
      v61 = OUTLINED_FUNCTION_28_1();
      MEMORY[0x1B2749D50](v61);
      OUTLINED_FUNCTION_94_0();
      OUTLINED_FUNCTION_156_1();
      OUTLINED_FUNCTION_172_0();

      v62 = OUTLINED_FUNCTION_95_5();
      *(v4 + 14) = sub_1B2519814(v62, v4, v63);
      OUTLINED_FUNCTION_219_0(&dword_1B23EF000, v64, v65, "%{public}s%{public}s");
      OUTLINED_FUNCTION_100_2();
      OUTLINED_FUNCTION_22_8();
      goto LABEL_48;
    }

    goto LABEL_49;
  }

  OUTLINED_FUNCTION_295_0();
  OUTLINED_FUNCTION_416();
  v242 = v2[302];
  v246 = v2[300];
  v247 = v66;
  v232 = v3;
  while (1)
  {
    OUTLINED_FUNCTION_415();
    if ((v67 & 1) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_222_0();
    OUTLINED_FUNCTION_434();
    if (!v78)
    {
      OUTLINED_FUNCTION_245_0(v68, v69, v70, v71, v72, v73, v74, v75, v76, v207, v211, v215, v220, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v77);

LABEL_32:
      v147 = OUTLINED_FUNCTION_157_0();
      sub_1B256615C(v147, v148);
      swift_endAccess();
LABEL_33:
      OUTLINED_FUNCTION_465();
      goto LABEL_34;
    }

    OUTLINED_FUNCTION_266_0();
    v79 = sub_1B2458898();
    if ((v80 & 1) == 0)
    {
      OUTLINED_FUNCTION_245_0(v79, v80, v81, v82, v83, v84, v85, v86, v87, v207, v211, v215, v220, v224, v226, v228, v230, v232, v234, v236, v238, v240, v242, v88);
      v26 = 24;
      goto LABEL_32;
    }

    v89 = OUTLINED_FUNCTION_284_0(v79);
    sub_1B247D7E0(v89, v4);
    v26 = 24;
    if (*v4 == 1)
    {
      goto LABEL_32;
    }

    Strong = swift_weakLoadStrong();
    v90 = OUTLINED_FUNCTION_157_0();
    sub_1B256615C(v90, v91);
    swift_endAccess();
    if (!Strong)
    {
      goto LABEL_33;
    }

    OUTLINED_FUNCTION_230();
    v241 = v92;
    v93 = Strong;
    v216 = sub_1B256DDAC();
    v94 = OUTLINED_FUNCTION_60_6();
    __swift_storeEnumTagSinglePayload(v94, v95, v96, v97);
    v98 = sub_1B256DD6C();
    OUTLINED_FUNCTION_325_0(v98, v99, v100, v101, v102, v103, v104, v105, v207, v211, v216, v220, v224, v226, v228, v230, v232, v234, v236);

    v106 = sub_1B256DD5C();
    OUTLINED_FUNCTION_187_1();
    v107 = swift_allocObject();
    v107[2] = v106;
    v107[3] = MEMORY[0x1E69E85E0];
    v107[4] = Strong;
    v239 = Strong;
    v107[5] = Strong;
    Strong = &qword_1EB7D1910;
    OUTLINED_FUNCTION_414(v107, v108, v109, v110, v111, v112, v113, v114, v208, v212, v217, v221);
    sub_1B24C5C14();
    OUTLINED_FUNCTION_429();
    v115 = v2[313];
    if (v106 == 1)
    {
      v116 = OUTLINED_FUNCTION_38_7();
      v118 = sub_1B256615C(v116, v117);
    }

    else
    {
      sub_1B256DD9C();
      OUTLINED_FUNCTION_57_1();
      v149 = OUTLINED_FUNCTION_18_1();
      v118 = v150(v149);
    }

    OUTLINED_FUNCTION_482(v118, v119, v120, v121, v122, v123, v124, v125, v209, v213, v218, v222, v225, v227, v229, v231, v233, v235, v237, v239, v241);

    v26 = 24;
    if (v115)
    {
      swift_getObjectType();
      sub_1B256DCEC();
      OUTLINED_FUNCTION_172_0();
      v115 = v151;
      swift_unknownObjectRelease();
    }

    else
    {
      v93 = 0;
    }

    sub_1B256615C(v2[314], &qword_1EB7D1910);
    OUTLINED_FUNCTION_43_0();
    swift_allocObject();
    OUTLINED_FUNCTION_43_7();
    *(v152 + 16) = v160;
    *(v152 + 24) = v240;
    if (v115 | v93)
    {
      OUTLINED_FUNCTION_417(v152, v153, v154, v155, v156, v157, v158, v159, v210, v214);
      v2[195] = v93;
      v2[196] = v115;
    }

    OUTLINED_FUNCTION_40_9();
    OUTLINED_FUNCTION_509(v161, v162, v163, v164, v165, v166, v167, v168, v210, v214, v219, v223);

    OUTLINED_FUNCTION_266_0();
LABEL_34:
    sub_1B24D0BE8();
LABEL_35:
    if (++v24 == v2[321])
    {
      v169 = sub_1B256DE9C();
      if (v169)
      {
        OUTLINED_FUNCTION_464();
        OUTLINED_FUNCTION_159_2();
        OUTLINED_FUNCTION_14_2();
        sub_1B256E0CC();
        OUTLINED_FUNCTION_43_0();
        v170 = swift_allocObject();
        OUTLINED_FUNCTION_451(v170);
        OUTLINED_FUNCTION_43_0();
        swift_allocObject();
        OUTLINED_FUNCTION_145_1();
        v243 = v171;
        OUTLINED_FUNCTION_505(v172, v171);
        v39 = sub_1B256D5CC();
        OUTLINED_FUNCTION_119_2();
        v173 = swift_allocObject();
        OUTLINED_FUNCTION_62_5(v173);
        OUTLINED_FUNCTION_119_2();
        v174 = swift_allocObject();
        OUTLINED_FUNCTION_61_3(v174);
        OUTLINED_FUNCTION_43_0();
        v175 = swift_allocObject();
        OUTLINED_FUNCTION_28_13(v175);
        OUTLINED_FUNCTION_43_0();
        v176 = swift_allocObject();
        OUTLINED_FUNCTION_30_10(v176);
        OUTLINED_FUNCTION_119_2();
        v177 = swift_allocObject();
        OUTLINED_FUNCTION_161_2(v177);
        OUTLINED_FUNCTION_119_2();
        v178 = swift_allocObject();
        OUTLINED_FUNCTION_183_1(v178);
        OUTLINED_FUNCTION_43_0();
        v179 = swift_allocObject();
        OUTLINED_FUNCTION_39_9(v179);
        OUTLINED_FUNCTION_43_0();
        v180 = swift_allocObject();
        OUTLINED_FUNCTION_34_9(v180);
        v181 = OUTLINED_FUNCTION_272(v246);
        OUTLINED_FUNCTION_22_12(v181, v182, v183, v184, v185, v186, v187, v188, v189, v207, v211, v215, v220, v190);
        v191[6] = sub_1B25661DC;
        v191[7] = v24;
        v191[8] = sub_1B25661B0;
        v191[9] = v26;
        v191[10] = sub_1B25661DC;
        v191[11] = &unk_1EB7D2CD0;
        v191[12] = sub_1B25661DC;
        v191[13] = v3;
        v191[14] = sub_1B25661B0;
        v191[15] = v13;
        swift_setDeallocating();
        OUTLINED_FUNCTION_502();
        if (OUTLINED_FUNCTION_292_0())
        {
          OUTLINED_FUNCTION_93_3();
          v192 = OUTLINED_FUNCTION_126_1();
          *v22 = 136446466;
          OUTLINED_FUNCTION_10_23(v192);
          v193 = OUTLINED_FUNCTION_28_1();
          MEMORY[0x1B2749D50](v193);
          OUTLINED_FUNCTION_94_0();
          OUTLINED_FUNCTION_156_1();
          OUTLINED_FUNCTION_172_0();

          OUTLINED_FUNCTION_54_8();
          *(v22 + 14) = sub_1B2519814(v243, v247, v248);
          OUTLINED_FUNCTION_113_3(&dword_1B23EF000, v194, v195, "%{public}s%{public}s");
          OUTLINED_FUNCTION_101_2();
          OUTLINED_FUNCTION_63_0();
LABEL_48:
          OUTLINED_FUNCTION_11_4();
        }

LABEL_49:
      }

      else if (*(v247 + 16))
      {
        v203 = OUTLINED_FUNCTION_296_0();
        OUTLINED_FUNCTION_81_4(v203);
        OUTLINED_FUNCTION_154();

        v204 = v236;
        sub_1B256DD5C();
        OUTLINED_FUNCTION_355();
        v205 = swift_allocObject();
        v206 = OUTLINED_FUNCTION_185_1(v205);
        OUTLINED_FUNCTION_44_8(v206, MEMORY[0x1E69E85E0]);
      }

      else
      {
      }

      v196 = OUTLINED_FUNCTION_26_14();
      sub_1B25579B4(v196, v197, v198, v199);

      v200 = OUTLINED_FUNCTION_91_4();
      sub_1B24E313C(v200, v228);
      v201 = OUTLINED_FUNCTION_90_5();
      sub_1B24E313C(v201, v230);
      OUTLINED_FUNCTION_6_30();
      OUTLINED_FUNCTION_400();

      OUTLINED_FUNCTION_7_2();

      return v202();
    }
  }

  OUTLINED_FUNCTION_223_0();
  OUTLINED_FUNCTION_423();

  if (!Strong || (OUTLINED_FUNCTION_266_0(), sub_1B2458898(), (v126 & 1) == 0))
  {
    swift_endAccess();
    OUTLINED_FUNCTION_266_0();
    goto LABEL_34;
  }

  v238 = v13;
  v240 = v24;
  v127 = v2[305];
  v128 = v2[304];
  OUTLINED_FUNCTION_3_38();
  sub_1B255FE0C();
  OUTLINED_FUNCTION_2_40();
  sub_1B25636F8();
  swift_endAccess();
  v129 = swift_weakLoadStrong();
  if (v129)
  {
    v127 = v129;
    v128 = v2[315];
    v130 = sub_1B256DDAC();
    v133 = OUTLINED_FUNCTION_102_3(v128, v131, v132, v130);
    OUTLINED_FUNCTION_325_0(v133, v134, v135, v136, v137, v138, v139, v140, v207, v211, v215, v220, v224, v226, v228, v230, v232, v234, v236);

    sub_1B256DD5C();
    OUTLINED_FUNCTION_187_1();
    v141 = swift_allocObject();
    v142 = OUTLINED_FUNCTION_185_1(v141);
    *(v142 + 24) = MEMORY[0x1E69E85E0];
    *(v142 + 32) = v127;
    OUTLINED_FUNCTION_21_18(v142);
    sub_1B247DAA8();
    OUTLINED_FUNCTION_154();
  }

  result = OUTLINED_FUNCTION_343();
  v144 = 0;
  while (2)
  {
    v145 = *(v127 + 16);
    Strong = v144;
LABEL_21:
    if (Strong == v145)
    {
      *v22 = 0;
      v144 = v145;
LABEL_26:
      OUTLINED_FUNCTION_356();
      sub_1B24C42F0();
      if (*(v4 + 120))
      {

        sub_1B24D0BE8();
        OUTLINED_FUNCTION_0_47();
        sub_1B2563750();
        v3 = v232;
        v26 = 24;
        goto LABEL_35;
      }

      OUTLINED_FUNCTION_418();
      sub_1B24C42F0();
      swift_weakLoadStrong();
      result = OUTLINED_FUNCTION_484();
      Strong = v144;
      if (v128)
      {
        v146 = OUTLINED_FUNCTION_294_0();
        sub_1B25603E8(v146, v128);

        continue;
      }

      goto LABEL_21;
    }

    break;
  }

  if ((Strong & 0x8000000000000000) == 0)
  {
    if (Strong >= *(v127 + 16))
    {
      goto LABEL_57;
    }

    sub_1B24C5C14();
    v144 = Strong + 1;
    goto LABEL_26;
  }

  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

uint64_t sub_1B2557364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a1;
  v4[7] = a4;
  type metadata accessor for Product(0);
  v4[8] = swift_task_alloc();
  v5 = type metadata accessor for StoreProductManager.CollectionObserver.Storage(0);
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2E78, &qword_1B2587B98);
  v4[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2E80, &unk_1B2587BA0);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  sub_1B256DD6C();
  v4[20] = sub_1B256DD5C();
  v7 = sub_1B256DCEC();

  return MEMORY[0x1EEE6DFA0](sub_1B2557534, v7, v6);
}

void sub_1B2557534()
{
  v38 = *(v0 + 96);
  v36 = *(v0 + 88);
  v37 = *(v0 + 104);
  v35 = *(v0 + 64);

  v1 = *(StoreProductManager.CollectionObserver.storage.getter() + 16);

  sub_1B2449738(0, v1, 0, MEMORY[0x1E69E7CC0]);
  v40 = v2;
  sub_1B254B9CC();
  v3 = StoreProductManager.CollectionObserver.storage.getter();
  v4 = 0;
  v5 = *(v3 + 16);
  for (i = v3; ; v3 = i)
  {
    if (v4 == v5)
    {
      v6 = 1;
      v4 = v5;
      goto LABEL_6;
    }

    if (v4 >= *(v3 + 16))
    {
      break;
    }

    v7 = *(v0 + 136);
    OUTLINED_FUNCTION_114_2();
    *v7 = v4;
    OUTLINED_FUNCTION_8_31();
    sub_1B255FE0C();
    OUTLINED_FUNCTION_50_0();
    sub_1B24C42F0();
    v6 = 0;
    ++v4;
LABEL_6:
    v8 = *(v0 + 128);
    __swift_storeEnumTagSinglePayload(*(v0 + 144), v6, 1, v8);
    OUTLINED_FUNCTION_50_0();
    sub_1B24C42F0();
    v9 = OUTLINED_FUNCTION_199_0();
    if (__swift_getEnumTagSinglePayload(v9, v10, v8) == 1)
    {
      goto LABEL_24;
    }

    v11 = **(v0 + 152);
    OUTLINED_FUNCTION_206_1();
    sub_1B25636F8();
    OUTLINED_FUNCTION_8_31();
    OUTLINED_FUNCTION_320_0();
    sub_1B255FE0C();
    OUTLINED_FUNCTION_138_0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_14_22();
      sub_1B2563750();
      OUTLINED_FUNCTION_8_31();
      OUTLINED_FUNCTION_50_0();
      sub_1B255FE0C();
      OUTLINED_FUNCTION_320_0();
      if (swift_getEnumCaseMultiPayload() > 1)
      {
        OUTLINED_FUNCTION_4_27();
        sub_1B25636F8();
        v12 = *(v35 + 48);
        v13 = *(v35 + 56);

        OUTLINED_FUNCTION_1_44();
        sub_1B2563750();
      }

      else
      {
        v12 = **(v0 + 104);
        v13 = *(v37 + 8);
      }

      v14 = v40;
      v16 = *(v40 + 16);
      v15 = *(v40 + 24);
      if (v16 >= v15 >> 1)
      {
        v28 = OUTLINED_FUNCTION_69_0(v15);
        sub_1B2449738(v28, v16 + 1, 1, v29);
        v14 = v30;
      }

      *(v14 + 16) = v16 + 1;
      v40 = v14;
      v17 = v14 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v13;
      OUTLINED_FUNCTION_8_31();
      sub_1B255FE0C();
      if (swift_getEnumCaseMultiPayload() > 1)
      {
        OUTLINED_FUNCTION_4_27();
        sub_1B25636F8();
        v18 = *(v35 + 48);
        v19 = *(v35 + 56);

        OUTLINED_FUNCTION_1_44();
        sub_1B2563750();
      }

      else
      {
        v18 = **(v0 + 88);
        v19 = *(v36 + 8);
      }

      **(v0 + 96) = v18;
      *(v38 + 8) = v19;
      swift_storeEnumTagMultiPayload();
      swift_getKeyPath();
      swift_getKeyPath();
      v20 = sub_1B256D63C();
      v22 = v21;
      v23 = *v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v22 = v23;
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        sub_1B2456E98();
        v23 = v31;
        *v22 = v31;
        if ((v11 & 0x8000000000000000) != 0)
        {
LABEL_23:
          __break(1u);
LABEL_24:
          v32 = *(v0 + 48);

          *v32 = v40;

          OUTLINED_FUNCTION_7_2();
          OUTLINED_FUNCTION_112();

          __asm { BRAA            X1, X16 }
        }
      }

      if (v11 >= *(v23 + 16))
      {
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_114_2();
      sub_1B2565BF4(v27, v23 + v25 + *(v26 + 72) * v11);
      v20();
    }

    else
    {
      OUTLINED_FUNCTION_14_22();
      sub_1B2563750();
    }

    OUTLINED_FUNCTION_14_22();
    sub_1B2563750();
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

void sub_1B25579B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B2546B48(a2);
  swift_endAccess();
  sub_1B256E4FC();

  v15 = 0xD00000000000001ELL;
  v16 = 0x80000001B2592FD0;
  v14 = *(a2 + 16);
  v7 = sub_1B256EAAC();
  MEMORY[0x1B2749D50](v7);

  MEMORY[0x1B2749D50](0x2E73444920, 0xE500000000000000);
  v8 = sub_1B256E08C();

  v9 = sub_1B256D5CC();

  if (os_log_type_enabled(v9, v8))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 136446466;
    v14 = v11;
    v15 = 91;
    v16 = 0xE100000000000000;
    MEMORY[0x1B2749D50](a3, a4);
    MEMORY[0x1B2749D50](8285, 0xE200000000000000);
    v12 = sub_1B2519814(91, 0xE100000000000000, &v14);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2082;
    v13 = sub_1B2519814(0xD00000000000001ELL, 0x80000001B2592FD0, &v14);

    *(v10 + 14) = v13;
    _os_log_impl(&dword_1B23EF000, v9, v8, "%{public}s%{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B274BFF0](v11, -1, -1);
    MEMORY[0x1B274BFF0](v10, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1B2557C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1B2557CD0;

  return sub_1B253FC04(a2, a3);
}

uint64_t sub_1B2557CD0()
{
  OUTLINED_FUNCTION_21_5();
  v3 = v2;
  OUTLINED_FUNCTION_6_1();
  v5 = v4;
  OUTLINED_FUNCTION_13_9();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 32) = v3;
    v11 = OUTLINED_FUNCTION_447();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1B2557DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1B2557EB0;

  return sub_1B253FF78(a2, a3);
}

uint64_t sub_1B2557EB0()
{
  OUTLINED_FUNCTION_21_5();
  v3 = v2;
  OUTLINED_FUNCTION_6_1();
  v5 = v4;
  OUTLINED_FUNCTION_13_9();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 32) = v3;
    v11 = OUTLINED_FUNCTION_447();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1B2557FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v57 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910, &qword_1B257AFA0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v54 = v50 - v7;
  v8 = type metadata accessor for Product(0);
  v52 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v53 = v9;
  v55 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2E70, &qword_1B2587B80);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v50 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2330, &qword_1B2583CC0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v51 = v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = v50 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = v50 - v19;
  v21 = type metadata accessor for StoreProductManager.CachedProduct(0);
  MEMORY[0x1EEE9AC00](v21);
  sub_1B255FE0C();
  v22 = sub_1B25405D0();
  sub_1B2563750();
  if (v22)
  {
    v50[1] = a2;
    sub_1B255FE0C();
    v23 = 1;
    __swift_storeEnumTagSinglePayload(v20, 0, 1, v8);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2CC0, &qword_1B2587238);
    if (!__swift_getEnumTagSinglePayload(a1, 1, v24))
    {
      sub_1B255FE0C();
      v23 = 0;
    }

    __swift_storeEnumTagSinglePayload(v18, v23, 1, v8);
    v25 = *(v10 + 48);
    sub_1B24C5C14();
    sub_1B24C5C14();
    if (__swift_getEnumTagSinglePayload(v12, 1, v8) == 1)
    {
      sub_1B256615C(v18, &qword_1EB7D2330);
      sub_1B256615C(v20, &qword_1EB7D2330);
      if (__swift_getEnumTagSinglePayload(&v12[v25], 1, v8) == 1)
      {
        v50[0] = v24;
        sub_1B256615C(v12, &qword_1EB7D2330);
        goto LABEL_25;
      }
    }

    else
    {
      v50[0] = v24;
      v26 = v51;
      sub_1B24C5C14();
      if (__swift_getEnumTagSinglePayload(&v12[v25], 1, v8) != 1)
      {
        v42 = v55;
        sub_1B25636F8();
        v43 = *(v26 + 3);
        v61 = *(v26 + 2);
        v62 = v43;
        v63 = v26[32];
        v45 = *(v42 + 3);
        v58 = *(v42 + 2);
        v44 = v58;
        v59 = v45;
        v60 = v42[32];
        v46 = v60;
        sub_1B24472B8(v61, v43, v63);
        sub_1B24472B8(v44, v45, v46);
        LOBYTE(v44) = static BackingValue.== infix(_:_:)(&v61, &v58);
        sub_1B24472E0(v58, v59, v60);
        sub_1B24472E0(v61, v62, v63);
        sub_1B2563750();
        sub_1B256615C(v18, &qword_1EB7D2330);
        sub_1B256615C(v20, &qword_1EB7D2330);
        sub_1B2563750();
        sub_1B256615C(v12, &qword_1EB7D2330);
        if (v44)
        {
LABEL_25:
          v47 = v50[0];
          result = __swift_getEnumTagSinglePayload(a1, 1, v50[0]);
          if (!result)
          {
            v48 = *(v47 + 48);
            v49 = sub_1B256D36C();
            return (*(*(v49 - 8) + 24))(a1 + v48, v57, v49);
          }

          return result;
        }

        goto LABEL_10;
      }

      sub_1B256615C(v18, &qword_1EB7D2330);
      sub_1B256615C(v20, &qword_1EB7D2330);
      sub_1B2563750();
    }

    sub_1B256615C(v12, &qword_1EB7D2E70);
  }

LABEL_10:
  sub_1B256615C(a1, &qword_1EB7D2CD8);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2CC0, &qword_1B2587238);
  v28 = *(v27 + 48);
  sub_1B255FE0C();
  v29 = sub_1B256D36C();
  (*(*(v29 - 8) + 16))(a1 + v28, v57, v29);
  __swift_storeEnumTagSinglePayload(a1, 0, 1, v27);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v31 = Strong;
    v32 = sub_1B256DDAC();
    __swift_storeEnumTagSinglePayload(v54, 1, 1, v32);
    sub_1B255FE0C();
    sub_1B256DD6C();

    v33 = sub_1B256DD5C();
    v34 = swift_allocObject();
    v35 = MEMORY[0x1E69E85E0];
    v34[2] = v33;
    v34[3] = v35;
    v34[4] = v31;
    sub_1B25636F8();
    sub_1B247DAA8();
  }

  v36 = *(a1 + *(v21 + 24));

  v38 = 0;
LABEL_13:
  v39 = *(v36 + 16);
  v40 = v38;
  while (1)
  {
    if (v40 == v39)
    {
      v61 = 0;
      v38 = v39;
      goto LABEL_19;
    }

    if ((v40 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v40 >= *(v36 + 16))
    {
      goto LABEL_28;
    }

    sub_1B24C5C14();
    v38 = v40 + 1;
LABEL_19:
    LOBYTE(v62) = v40 == v39;
    sub_1B24C42F0();
    if (v59)
    {
    }

    sub_1B24C42F0();
    v41 = swift_weakLoadStrong();
    result = sub_1B256615C(v64, &qword_1EB7D0460);
    v40 = v38;
    if (v41)
    {
      sub_1B25603E8(&v61, v41);

      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1B255885C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = type metadata accessor for StoreProductManager.SingleObserver.Storage(0);
  v5[5] = swift_task_alloc();
  sub_1B256DD6C();
  v5[6] = sub_1B256DD5C();
  v7 = sub_1B256DCEC();

  return MEMORY[0x1EEE6DFA0](sub_1B2558924, v7, v6);
}

uint64_t sub_1B2558924()
{
  OUTLINED_FUNCTION_21_5();

  OUTLINED_FUNCTION_5_32();
  OUTLINED_FUNCTION_24();
  sub_1B255FE0C();
  OUTLINED_FUNCTION_201_0();
  swift_storeEnumTagMultiPayload();
  sub_1B2545740();

  OUTLINED_FUNCTION_7_2();

  return v0();
}

void sub_1B2558B8C()
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_469();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910, &qword_1B257AFA0);
  OUTLINED_FUNCTION_2_2(v1);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_11_0();
  v3 = type metadata accessor for StoreProductManager.CachedProduct(0);
  v4 = OUTLINED_FUNCTION_164_1();
  if (!__swift_getEnumTagSinglePayload(v4, v5, v3))
  {
    sub_1B256615C(v0, &qword_1EB7D2CD8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2CC0, &qword_1B2587238);
    OUTLINED_FUNCTION_315_0();
    OUTLINED_FUNCTION_16_2();
    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }

  v10 = OUTLINED_FUNCTION_164_1();
  if (!__swift_getEnumTagSinglePayload(v10, v11, v3))
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      v14 = sub_1B256DDAC();
      OUTLINED_FUNCTION_81_4(v14);
      OUTLINED_FUNCTION_67_2();

      v15 = sub_1B256DD5C();
      v16 = OUTLINED_FUNCTION_405(&unk_1F29BCA78);
      v17 = MEMORY[0x1E69E85E0];
      v16[2] = v15;
      v16[3] = v17;
      v16[4] = v13;
      OUTLINED_FUNCTION_107_0();
      sub_1B247DAA8();
    }
  }

  v18 = OUTLINED_FUNCTION_164_1();
  if (__swift_getEnumTagSinglePayload(v18, v19, v3))
  {
LABEL_17:
    OUTLINED_FUNCTION_45();
    return;
  }

  v20 = *(v0 + *(v3 + 24));
  swift_bridgeObjectRetain_n();
  v21 = 0;
LABEL_8:
  v22 = *(v20 + 16);
  v23 = v21;
  while (1)
  {
    if (v23 == v22)
    {
      v28 = 0;
      v21 = v22;
      goto LABEL_13;
    }

    if (v23 >= *(v20 + 16))
    {
      break;
    }

    sub_1B24C5C14();
    v21 = v23 + 1;
LABEL_13:
    v29 = v23 == v22;
    sub_1B24C42F0();
    if (v27)
    {
      swift_bridgeObjectRelease_n();
      goto LABEL_17;
    }

    sub_1B24C42F0();
    v24 = swift_weakLoadStrong();
    OUTLINED_FUNCTION_34_1();
    sub_1B256615C(v25, v26);
    v23 = v21;
    if (v24)
    {
      sub_1B25603E8(&v28, v24);

      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_1B2558DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for StoreProductManager.SingleObserver.Storage(0);
  v4[4] = swift_task_alloc();
  sub_1B256DD6C();
  v4[5] = sub_1B256DD5C();
  v6 = sub_1B256DCEC();

  return MEMORY[0x1EEE6DFA0](sub_1B2558EBC, v6, v5);
}

uint64_t sub_1B2558EBC()
{
  OUTLINED_FUNCTION_21_5();

  OUTLINED_FUNCTION_41_1();
  swift_storeEnumTagMultiPayload();
  sub_1B2545740();

  OUTLINED_FUNCTION_7_2();

  return v0();
}

uint64_t sub_1B2558F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a8;
  v8[15] = v13;
  v8[12] = a6;
  v8[13] = a7;
  v8[10] = a4;
  v8[11] = a5;
  sub_1B256DD6C();
  v8[16] = sub_1B256DD5C();
  v10 = sub_1B256DCEC();

  return MEMORY[0x1EEE6DFA0](sub_1B2558FE4, v10, v9);
}

void sub_1B2558FE4()
{
  v40 = v0;
  v1 = v0[12];
  v2 = v0[10];

  sub_1B2564554(v2, v0 + 2, sub_1B25661C0, 0);
  OUTLINED_FUNCTION_309_0();
  v35 = v1;
  v3 = v1 + 56;

  v34 = v0;
LABEL_2:
  if (sub_1B25430F8())
  {
    v11 = sub_1B243A2E0();

    MEMORY[0x1B274A250](0, &type metadata for StoreProductManager.ProductID, v11);
    v12 = 0;
    v13 = -1 << *(v35 + 32);
    if (-v13 < 64)
    {
      v14 = ~(-1 << -v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v35 + 56);
    while (v15)
    {
LABEL_12:
      OUTLINED_FUNCTION_409();
      if ((*(*(v35 + 48) + 24 * (v17 | (v12 << 6)) + 16) & 1) == 0)
      {

        OUTLINED_FUNCTION_437();
        sub_1B2560518();
      }
    }

    while (1)
    {
      v16 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v16 >= ((63 - v13) >> 6))
      {
        v0 = v34;
        sub_1B23FB6C4(v35);
        v18 = OUTLINED_FUNCTION_379();
        sub_1B254A1F0(v18, v19, MEMORY[0x1E69E7CD0]);

        goto LABEL_2;
      }

      v15 = *(v3 + 8 * v16);
      ++v12;
      if (v15)
      {
        v12 = v16;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
    v20 = v0[15];
    v21 = v0[10];
    OUTLINED_FUNCTION_517(0, v4, v5, v6, v7, v8, v9, v10, v34, v35, v36);
    sub_1B256E4FC();

    v0[9] = *(v21 + 16);
    v22 = sub_1B256EAAC();
    MEMORY[0x1B2749D50](v22);

    OUTLINED_FUNCTION_75_0();
    MEMORY[0x1B2749D50](0xD000000000000016);
    v23 = sub_1B256E08C();

    v24 = sub_1B256D5CC();

    if (OUTLINED_FUNCTION_29_11())
    {
      v25 = v0[15];
      OUTLINED_FUNCTION_21_3();
      v39 = OUTLINED_FUNCTION_126_1();
      OUTLINED_FUNCTION_51_6(4.8752e-34);
      v37 = v26;
      v38 = v27;
      v28 = OUTLINED_FUNCTION_12_11();
      MEMORY[0x1B2749D50](v28);
      OUTLINED_FUNCTION_94_0();
      sub_1B2519814(v37, v38, &v39);
      OUTLINED_FUNCTION_328_0();
      *(v20 + 4) = v25;
      OUTLINED_FUNCTION_135_2();
      v29 = OUTLINED_FUNCTION_35_0();
      sub_1B2519814(v29, v30, v31);
      OUTLINED_FUNCTION_200_1();

      *(v20 + 14) = v38;
      OUTLINED_FUNCTION_153_1(&dword_1B23EF000, v32, v23, "%{public}s%{public}s");
      OUTLINED_FUNCTION_101_2();
      OUTLINED_FUNCTION_63_0();
      OUTLINED_FUNCTION_22_8();
    }

    else
    {
    }

    OUTLINED_FUNCTION_7_2();

    v33();
  }
}

uint64_t sub_1B2559370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1B256DD6C();
  v5[4] = sub_1B256DD5C();
  v7 = sub_1B256DCEC();

  return MEMORY[0x1EEE6DFA0](sub_1B2559408, v7, v6);
}

uint64_t sub_1B2559408()
{
  OUTLINED_FUNCTION_21_5();
  v6 = v0;
  v1 = *(v0 + 24);

  v4 = v1;
  v5 = 1;

  sub_1B2546BD4(&v4);
  OUTLINED_FUNCTION_7_2();

  return v2();
}

uint64_t sub_1B2559488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 33) = a7;
  *(v7 + 48) = a5;
  *(v7 + 56) = a6;
  *(v7 + 40) = a4;
  v9 = sub_1B256E6DC();
  *(v7 + 64) = v9;
  *(v7 + 72) = *(v9 - 8);
  *(v7 + 80) = swift_task_alloc();
  v10 = sub_1B256E6CC();
  *(v7 + 88) = v10;
  *(v7 + 96) = *(v10 - 8);
  *(v7 + 104) = swift_task_alloc();
  *(v7 + 112) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B25595BC, a4, 0);
}

uint64_t sub_1B25595BC()
{
  OUTLINED_FUNCTION_112_2();
  OUTLINED_FUNCTION_24_5();
  v1 = *(v0 + 96);
  sub_1B256E6AC();
  sub_1B256EE0C();
  sub_1B256E6BC();
  *(v0 + 120) = *(v1 + 8);
  *(v0 + 128) = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v2 = OUTLINED_FUNCTION_41_1();
  v3(v2);
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  sub_1B256ECAC();
  v4 = swift_task_alloc();
  *(v0 + 136) = v4;
  sub_1B2565104(&qword_1EB7D2E68, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  OUTLINED_FUNCTION_455();
  *v4 = v5;
  v4[1] = sub_1B25596FC;
  OUTLINED_FUNCTION_310_0();
  OUTLINED_FUNCTION_42_4();

  return MEMORY[0x1EEE6DA68](v6);
}

uint64_t sub_1B25596FC()
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_9();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v8 = v7;
  *(v3 + 144) = v0;

  v9 = OUTLINED_FUNCTION_153();
  v10(v9);
  v11 = OUTLINED_FUNCTION_13_5();
  v6(v11);
  OUTLINED_FUNCTION_115();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1B25598C4()
{
  OUTLINED_FUNCTION_24_5();
  v6 = v0;
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v5 = *(v0 + 33);
  sub_1B25415D4(0, v1, v2, &v5);

  OUTLINED_FUNCTION_7_2();

  return v3();
}

uint64_t sub_1B2559964()
{
  OUTLINED_FUNCTION_4_0();

  OUTLINED_FUNCTION_7_2();

  return v0();
}

uint64_t sub_1B25599D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = type metadata accessor for StoreProductManager.SingleObserver.Storage(0);
  v5[5] = swift_task_alloc();
  sub_1B256DD6C();
  v5[6] = sub_1B256DD5C();
  v7 = sub_1B256DCEC();

  return MEMORY[0x1EEE6DFA0](sub_1B2559A9C, v7, v6);
}

uint64_t sub_1B2559A9C()
{
  OUTLINED_FUNCTION_21_5();
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);

  *v1 = v2;
  OUTLINED_FUNCTION_201_0();
  swift_storeEnumTagMultiPayload();
  v3 = v2;
  sub_1B2545740();

  OUTLINED_FUNCTION_7_2();

  return v4();
}

uint64_t sub_1B2559B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1B256DD6C();
  v5[4] = sub_1B256DD5C();
  v7 = sub_1B256DCEC();

  return MEMORY[0x1EEE6DFA0](sub_1B2559BC4, v7, v6);
}

uint64_t sub_1B2559BC4()
{
  OUTLINED_FUNCTION_21_5();
  v7 = v0;
  v1 = *(v0 + 24);

  v5 = v1;
  v6 = 0;
  v2 = v1;
  sub_1B2546BD4(&v5);
  OUTLINED_FUNCTION_7_2();

  return v3();
}

uint64_t sub_1B2559C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  sub_1B256DD6C();
  v6[12] = sub_1B256DD5C();
  v8 = sub_1B256DCEC();

  return MEMORY[0x1EEE6DFA0](sub_1B2559CDC, v8, v7);
}

uint64_t sub_1B2559CDC()
{
  v2 = *(v1 + 72);

  sub_1B243A2E0();
  OUTLINED_FUNCTION_172_0();

  v19 = MEMORY[0x1B274A250](0, &type metadata for StoreProductManager.ProductID, v0);
  v3 = *(v2 + 16);
  for (i = (v2 + 48); v3; --v3)
  {
    if (*i != 1)
    {

      OUTLINED_FUNCTION_437();
      sub_1B2560518();
    }

    i += 24;
  }

  v5 = *(v1 + 80);

  sub_1B2564554(v5, (v1 + 16), sub_1B25661C0, 0);
  OUTLINED_FUNCTION_309_0();

  while (sub_1B25430F8())
  {
    v13 = *(v1 + 88);
    sub_1B254B9CC();
    v14 = OUTLINED_FUNCTION_201_0();
    sub_1B254B048(v14, v15);
  }

  OUTLINED_FUNCTION_517(0, v6, v7, v8, v9, v10, v11, v12, v18, v19, v20);

  OUTLINED_FUNCTION_7_2();

  return v16();
}

uint64_t sub_1B2559E70(char *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910, &qword_1B257AFA0);
  result = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17 - v6;
  if (!*(v2 + 152))
  {
    v8 = *a1;
    v9 = sub_1B256E09C();
    v10 = sub_1B256D5CC();
    if (os_log_type_enabled(v10, v9))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136446466;
      *(v11 + 4) = sub_1B2519814(0, 0xE000000000000000, &v18);
      *(v11 + 12) = 2082;
      *(v11 + 14) = sub_1B2519814(0xD00000000000001BLL, 0x80000001B25932D0, &v18);
      _os_log_impl(&dword_1B23EF000, v10, v9, "%{public}s%{public}s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B274BFF0](v12, -1, -1);
      MEMORY[0x1B274BFF0](v11, -1, -1);
    }

    sub_1B256DD7C();
    v13 = sub_1B256DDAC();
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v13);
    v14 = sub_1B2565104(&qword_1EB7D2CF0, type metadata accessor for StoreProductManager, &protocol conformance descriptor for StoreProductManager);
    v15 = swift_allocObject();
    *(v15 + 16) = v2;
    *(v15 + 24) = v14;
    *(v15 + 32) = v2;
    *(v15 + 40) = v8;
    swift_retain_n();
    sub_1B247DAA8();
    *(v2 + 152) = v16;
  }

  return result;
}

uint64_t sub_1B255A0C8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910, &qword_1B257AFA0);
  result = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v14 - v4;
  if (!*(v0 + 160))
  {
    v6 = sub_1B256E09C();
    v7 = sub_1B256D5CC();
    if (os_log_type_enabled(v7, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v8 = 136446466;
      *(v8 + 4) = sub_1B2519814(0, 0xE000000000000000, &v15);
      *(v8 + 12) = 2082;
      *(v8 + 14) = sub_1B2519814(0xD00000000000001FLL, 0x80000001B2593240, &v15);
      _os_log_impl(&dword_1B23EF000, v7, v6, "%{public}s%{public}s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B274BFF0](v9, -1, -1);
      MEMORY[0x1B274BFF0](v8, -1, -1);
    }

    sub_1B256DD7C();
    v10 = sub_1B256DDAC();
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v10);
    v11 = sub_1B2565104(&qword_1EB7D2CF0, type metadata accessor for StoreProductManager, &protocol conformance descriptor for StoreProductManager);
    v12 = swift_allocObject();
    v12[2] = v1;
    v12[3] = v11;
    v12[4] = v1;
    swift_retain_n();
    sub_1B247DAA8();
    *(v1 + 160) = v13;
  }

  return result;
}

uint64_t sub_1B255A314(char a1)
{
  if (!a1)
  {
    return 0x7078652061746164;
  }

  if (a1 == 1)
  {
    return 0xD000000000000010;
  }

  return 0x726576726573626FLL;
}

uint64_t sub_1B255A384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 192) = a5;
  *(v5 + 80) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910, &qword_1B257AFA0);
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 96) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0C30, &unk_1B257BE80);
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = type metadata accessor for StorefrontInternal(0);
  *(v5 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0E38, &qword_1B25871D0);
  *(v5 + 128) = swift_task_alloc();
  type metadata accessor for Storefront.Storefronts.AsyncIterator(0);
  *(v5 + 136) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B255A500, a4, 0);
}

uint64_t sub_1B255A500()
{
  OUTLINED_FUNCTION_4_0();
  _s8StoreKit10StorefrontV11StorefrontsV17makeAsyncIteratorAE0fG0VyF_0(*(v0 + 136));
  OUTLINED_FUNCTION_9_25();
  *(v0 + 144) = sub_1B2565104(v1, v2, &protocol conformance descriptor for StoreProductManager);
  v3 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B255A584()
{
  OUTLINED_FUNCTION_21_5();
  v0[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0E40, &unk_1B2587C00);
  v0[20] = sub_1B256E7AC();
  v1 = OUTLINED_FUNCTION_41_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  v4 = sub_1B2565E00(&qword_1EB7CD958, &qword_1EB7D0C10, &qword_1B257BDB8, MEMORY[0x1E69E8690]);
  swift_task_alloc();
  OUTLINED_FUNCTION_8_2();
  v0[21] = v5;
  *v5 = v6;
  v5[1] = sub_1B255A69C;
  v7 = v0[13];

  return MEMORY[0x1EEE6D8C8](v7, v3, v4);
}

uint64_t sub_1B255A69C()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v6 = v5;

  if (v0)
  {

    v7 = sub_1B255A940;
  }

  else
  {
    (*(v3 + 160))();
    v7 = sub_1B255A7B4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B255A7B4()
{
  OUTLINED_FUNCTION_21_5();
  v1 = v0[13];
  v2 = OUTLINED_FUNCTION_164_1();
  OUTLINED_FUNCTION_268_0(v2, v3, v4);
  if (v5)
  {
    sub_1B256615C(v1, &qword_1EB7D0C30);
    type metadata accessor for Storefront(0);
    v6 = OUTLINED_FUNCTION_150_0();
    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
    v10 = OUTLINED_FUNCTION_186_0();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }

  else
  {
    sub_1B25636F8();
    v13 = sub_1B256E7BC();
    v0[22] = v14;
    v20 = (v13 + *v13);
    swift_task_alloc();
    OUTLINED_FUNCTION_8_2();
    v0[23] = v15;
    *v15 = v16;
    v15[1] = sub_1B255A958;
    v18 = v0[15];
    v17 = v0[16];

    return v20(v17, v18);
  }
}

uint64_t sub_1B255A958()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  sub_1B2563750();
  v3 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B255AA88()
{
  OUTLINED_FUNCTION_4_0();
  type metadata accessor for Storefront(0);
  OUTLINED_FUNCTION_188_1();
  __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
  v4 = OUTLINED_FUNCTION_186_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1B255AAF0()
{
  OUTLINED_FUNCTION_155();
  v35 = v0;
  type metadata accessor for Storefront(0);
  v1 = OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_268_0(v1, v2, v3);
  if (v4)
  {
    sub_1B2563750();
    v5 = OBJC_IVAR____TtC8StoreKit19StoreProductManager_log;
    v6 = sub_1B256E09C();
    v7 = sub_1B256D5CC();
    if (os_log_type_enabled(v7, v6))
    {
      OUTLINED_FUNCTION_21_3();
      v8 = OUTLINED_FUNCTION_35_6();
      v34 = v8;
      *v5 = 136446466;
      *(v5 + 4) = OUTLINED_FUNCTION_75_2(v8, v9, &v34);
      *(v5 + 6) = 2082;
      *(v5 + 14) = sub_1B2519814(0xD000000000000023, 0x80000001B25932F0, &v34);
      _os_log_impl(&dword_1B23EF000, v7, v6, "%{public}s%{public}s", v5, 0x16u);
      OUTLINED_FUNCTION_54_4();
      OUTLINED_FUNCTION_44_1();
      OUTLINED_FUNCTION_7_12();
    }

    OUTLINED_FUNCTION_7_2();

    return v10();
  }

  else
  {
    v12 = *(v0 + 144);
    v13 = *(v0 + 192);
    v14 = *(v0 + 80);
    v15 = sub_1B256DDAC();
    v16 = OUTLINED_FUNCTION_60_6();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v15);
    v19 = swift_allocObject();
    *(v19 + 16) = v14;
    *(v19 + 24) = v12;
    *(v19 + 32) = v14;
    *(v19 + 40) = v13;
    sub_1B24C5C14();
    v20 = OUTLINED_FUNCTION_199_0();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v20, v21, v15);
    swift_retain_n();

    if (EnumTagSinglePayload == 1)
    {
      sub_1B256615C(*(v0 + 88), &qword_1EB7D1910);
    }

    else
    {
      sub_1B256DD9C();
      OUTLINED_FUNCTION_57_1();
      v23 = OUTLINED_FUNCTION_18_1();
      v24(v23);
    }

    v25 = *(v19 + 16);
    swift_unknownObjectRetain();

    if (v25)
    {
      swift_getObjectType();
      v26 = sub_1B256DCEC();
      v28 = v27;
      swift_unknownObjectRelease();
    }

    else
    {
      v26 = 0;
      v28 = 0;
    }

    sub_1B256615C(*(v0 + 96), &qword_1EB7D1910);
    OUTLINED_FUNCTION_43_0();
    v29 = swift_allocObject();
    *(v29 + 16) = &unk_1B2587C18;
    *(v29 + 24) = v19;
    if (v28 | v26)
    {
      *(v0 + 48) = 0;
      *(v0 + 56) = 0;
      *(v0 + 64) = v26;
      *(v0 + 72) = v28;
    }

    v30 = *(v0 + 128);
    swift_task_create();

    sub_1B256615C(v30, &qword_1EB7D0E38);
    v31 = OUTLINED_FUNCTION_16_7();

    return MEMORY[0x1EEE6DFA0](v31, v32, v33);
  }
}

uint64_t sub_1B255AEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 24) = a5;
  v6 = swift_task_alloc();
  *(v5 + 16) = v6;
  *v6 = v5;
  v6[1] = sub_1B2445514;

  return sub_1B255AF3C((v5 + 24));
}

uint64_t sub_1B255AF3C(_BYTE *a1)
{
  *(v2 + 512) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7CFEA0, &qword_1B2587230);
  *(v2 + 520) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910, &qword_1B257AFA0);
  *(v2 + 528) = swift_task_alloc();
  *(v2 + 536) = swift_task_alloc();
  *(v2 + 544) = swift_task_alloc();
  v4 = type metadata accessor for StoreProductManager.CachedProduct(0);
  *(v2 + 552) = v4;
  *(v2 + 560) = *(v4 - 8);
  *(v2 + 568) = swift_task_alloc();
  *(v2 + 576) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2EB0, &qword_1B2587C30);
  *(v2 + 584) = swift_task_alloc();
  *(v2 + 592) = swift_task_alloc();
  *(v2 + 449) = *a1;

  return MEMORY[0x1EEE6DFA0](sub_1B255B0E8, v1, 0);
}

void sub_1B255B0E8()
{
  v291 = v0;
  v1 = *(v0 + 512);
  v2 = OBJC_IVAR____TtC8StoreKit19StoreProductManager_log;
  v3 = sub_1B24D3E10();
  v5 = v4;
  *(v0 + 600) = v4;

  v6 = sub_1B256E0CC();

  v268 = v2;
  v269 = v1;
  v7 = sub_1B256D5CC();

  v270 = v5;
  v267 = v3;
  if (OUTLINED_FUNCTION_29_11())
  {
    OUTLINED_FUNCTION_21_3();
    v290 = OUTLINED_FUNCTION_46_1();
    *v2 = 136446466;
    OUTLINED_FUNCTION_15_22();
    MEMORY[0x1B2749D50](v3, v5);
    OUTLINED_FUNCTION_94_0();
    OUTLINED_FUNCTION_127_1();
    OUTLINED_FUNCTION_28_12();
    *(v2 + 4) = v3;
    OUTLINED_FUNCTION_74_0();
    *(v2 + 14) = sub_1B2519814(0xD00000000000002DLL, 0x80000001B2593320, &v290);
    OUTLINED_FUNCTION_247(&dword_1B23EF000, v8, v6, "%{public}s%{public}s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10_7();
    OUTLINED_FUNCTION_44_1();
  }

  v9 = *(v0 + 512);
  OUTLINED_FUNCTION_402(v9 + 176, v0 + 176);
  v10 = *(v9 + 176) + 64;
  OUTLINED_FUNCTION_73_2();
  v13 = v12 & v11;
  OUTLINED_FUNCTION_231_0();
  v15 = v14 >> 6;

  v16 = 0;
  if (v13)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      goto LABEL_223;
    }

    if (v17 >= v15)
    {
      break;
    }

    v13 = *(v10 + 8 * v17);
    ++v16;
    if (v13)
    {
      v16 = v17;
      do
      {
LABEL_9:
        v13 &= v13 - 1;

        sub_1B256DE7C();
      }

      while (v13);
      continue;
    }
  }

  OUTLINED_FUNCTION_103_3();
  sub_1B256E4FC();

  v288 = 0x656C6C65636E6143;
  v289 = 0xEA00000000002064;
  *(v0 + 496) = *(*(v9 + 176) + 16);
  v18 = sub_1B256EAAC();
  MEMORY[0x1B2749D50](v18);

  OUTLINED_FUNCTION_75_0();
  MEMORY[0x1B2749D50](0xD000000000000018);
  v19 = sub_1B256E08C();

  v20 = sub_1B256D5CC();

  if (OUTLINED_FUNCTION_29_11())
  {
    OUTLINED_FUNCTION_21_3();
    v21 = OUTLINED_FUNCTION_126_1();
    OUTLINED_FUNCTION_194_1(v21);
    OUTLINED_FUNCTION_13_19(4.8752e-34);
    MEMORY[0x1B2749D50](v267, v270);
    OUTLINED_FUNCTION_94_0();
    OUTLINED_FUNCTION_127_1();
    OUTLINED_FUNCTION_328_0();
    *(v15 + 4) = v270;
    OUTLINED_FUNCTION_58_4();
    v22 = OUTLINED_FUNCTION_35_0();
    sub_1B2519814(v22, v23, v24);
    OUTLINED_FUNCTION_200_1();

    *(v15 + 14) = &v2[v269];
    OUTLINED_FUNCTION_153_1(&dword_1B23EF000, v25, v19, "%{public}s%{public}s");
    OUTLINED_FUNCTION_101_2();
    OUTLINED_FUNCTION_63_0();
    OUTLINED_FUNCTION_22_8();
  }

  else
  {
  }

  v26 = (v0 + 48);
  v27 = *(v0 + 512);
  if (*(v27 + 168))
  {

    sub_1B256DE7C();
  }

  v28 = *(v0 + 512);
  v275 = *(v0 + 592);
  v272 = *(v0 + 584);
  v280 = *(v0 + 552);
  *(v27 + 168) = 0;

  sub_1B256D3CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2E48, &qword_1B2587AA8);
  OUTLINED_FUNCTION_7_30();
  sub_1B2565104(v29, v30, MEMORY[0x1E69695B8]);
  *(v9 + 176) = sub_1B256D8AC();

  OUTLINED_FUNCTION_402((v28 + 18), v0 + 344);
  v31 = MEMORY[0x1E69E7CD0];
  v28[18] = MEMORY[0x1E69E7CD0];

  OUTLINED_FUNCTION_402((v28 + 17), v0 + 296);
  v32 = v28[17];
  *(v0 + 472) = v31;
  OUTLINED_FUNCTION_516((v28 + 14), v0 + 224);
  v271 = v28;
  v33 = v28[14];
  v34 = v33 + 64;
  OUTLINED_FUNCTION_52_4();
  v282 = v32;
  v283 = v36 & v35;
  OUTLINED_FUNCTION_231_0();
  v276 = v37 >> 6;

  v273 = v33;

  v38 = 0;
  v39 = v31;
  v274 = v33 + 64;
LABEL_17:
  v286 = v39 + 56;
  v40 = v276;
  v41 = v283;
  v278 = v39;
  if (!v283)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v42 = v38;
LABEL_23:
    v43 = *(v0 + 584);
    v283 = (v41 - 1) & v41;
    v44 = (*(v273 + 48) + 16 * (__clz(__rbit64(v41)) | (v42 << 6)));
    v46 = *v44;
    v45 = v44[1];
    OUTLINED_FUNCTION_3_38();
    sub_1B255FE0C();
    v47 = &qword_1B2587C38;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2EB8, &qword_1B2587C38);
    *v43 = v46;
    *(v272 + 8) = v45;
    OUTLINED_FUNCTION_2_40();
    sub_1B25636F8();
    OUTLINED_FUNCTION_188_1();
    __swift_storeEnumTagSinglePayload(v49, v50, v51, v48);

    v26 = (v0 + 48);
LABEL_24:
    sub_1B24C42F0();
    v52 = OUTLINED_FUNCTION_132_0();
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(v52, v53);
    v55 = OUTLINED_FUNCTION_184();
    OUTLINED_FUNCTION_268_0(v55, v56, v54);
    if (v82)
    {
      v151 = *(v0 + 544);
      v152 = *(v0 + 512);
      v279 = v152;

      v153 = sub_1B256DDAC();
      OUTLINED_FUNCTION_16_2();
      __swift_storeEnumTagSinglePayload(v154, v155, v156, v153);
      v157 = *(v0 + 472);
      sub_1B256DD6C();
      sub_1B256DD5C();
      v158 = OUTLINED_FUNCTION_405(&unk_1F29BCB68);
      v159 = OUTLINED_FUNCTION_185_1(v158);
      *(v159 + 24) = MEMORY[0x1E69E85E0];
      *(v159 + 32) = v157;
      OUTLINED_FUNCTION_107_0();
      sub_1B247DAA8();

      OUTLINED_FUNCTION_516((v152 + 15), v0 + 200);
      v160 = v152[15];
      v161 = v153;
      v162 = v160 + 64;
      OUTLINED_FUNCTION_52_4();
      v165 = v164 & v163;
      OUTLINED_FUNCTION_231_0();
      v277 = v166 >> 6;
      v284 = v167;

      v168 = 0;
      v57 = v271;
      v285 = v153;
      v281 = v162;
      while (1)
      {
        *(v0 + 608) = v282;
        if (v165)
        {
          v169 = v168;
          goto LABEL_119;
        }

        do
        {
          v169 = v168 + 1;
          if (__OFADD__(v168, 1))
          {
            goto LABEL_224;
          }

          if (v169 >= v277)
          {
            v165 = 0;
            *(v0 + 144) = 0u;
            *(v0 + 160) = 0u;
            goto LABEL_120;
          }

          v165 = *(v162 + 8 * v169);
          ++v168;
        }

        while (!v165);
        v168 = v169;
LABEL_119:
        v170 = __clz(__rbit64(v165));
        v165 &= v165 - 1;
        v171 = (v169 << 10) | (16 * v170);
        v172 = (*(v284 + 48) + v171);
        v151 = *v172;
        v173 = v172[1];
        sub_1B247D7E0(*(v284 + 56) + v171, v0 + 392);
        *(v0 + 144) = v151;
        *(v0 + 152) = v173;
        sub_1B244ADF4(v0 + 392, v0 + 160);

LABEL_120:
        sub_1B24C42F0();
        v47 = *(v0 + 24);
        if (!v47)
        {
          goto LABEL_198;
        }

        sub_1B244ADF4(v0 + 32, v0 + 424);
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v175 = Strong;
          OUTLINED_FUNCTION_16_2();
          __swift_storeEnumTagSinglePayload(v176, v177, v178, v161);

          v179 = sub_1B256DD5C();
          v180 = OUTLINED_FUNCTION_405(&unk_1F29BCB90);
          v180[2] = v179;
          v180[3] = MEMORY[0x1E69E85E0];
          v180[4] = v175;
          OUTLINED_FUNCTION_201_0();
          sub_1B24C5C14();
          v181 = OUTLINED_FUNCTION_199_0();
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v181, v182, v161);

          if (EnumTagSinglePayload == 1)
          {
            sub_1B256615C(*(v0 + 528), &qword_1EB7D1910);
          }

          else
          {
            sub_1B256DD9C();
            v192 = OUTLINED_FUNCTION_18_1();
            v193(v192);
          }

          v194 = v180[2];
          swift_unknownObjectRetain();

          if (v194)
          {
            swift_getObjectType();
            v195 = sub_1B256DCEC();
            v197 = v196;
            swift_unknownObjectRelease();
          }

          else
          {
            v195 = 0;
            v197 = 0;
          }

          sub_1B256615C(*(v0 + 536), &qword_1EB7D1910);
          OUTLINED_FUNCTION_43_0();
          v198 = swift_allocObject();
          *(v198 + 16) = &unk_1B2587C60;
          *(v198 + 24) = v180;
          if (v197 | v195)
          {
            *(v0 + 112) = 0;
            *(v0 + 120) = 0;
            *(v0 + 128) = v195;
            *(v0 + 136) = v197;
          }

          v162 = v281;
          swift_task_create();

          OUTLINED_FUNCTION_50_5((v279 + 15), v0 + 320);
          v199 = OUTLINED_FUNCTION_41_1();
          v202 = sub_1B253EC24(v199, v200, v47);
          if (*v201 != 1)
          {
            *v201 = 0;
          }

          v203 = OUTLINED_FUNCTION_212_0();
          (v202)(v203);
          swift_endAccess();
          v151 = v282;
          sub_1B256ED3C();
          OUTLINED_FUNCTION_74();
          OUTLINED_FUNCTION_69();
          sub_1B256DA7C();
          sub_1B256ED7C();
          OUTLINED_FUNCTION_59_7();
          if (v204)
          {
            while (1)
            {
              OUTLINED_FUNCTION_147_2();
              if (v82)
              {
                v206 = OUTLINED_FUNCTION_280_0(v205);
                v208 = v82 && v207 == v47;
                if (v208 || (OUTLINED_FUNCTION_316_0(v206, v207) & 1) != 0)
                {
                  break;
                }
              }

              OUTLINED_FUNCTION_94_4();
              if ((v209 & 1) == 0)
              {
                goto LABEL_153;
              }
            }

LABEL_159:

            v161 = v285;
            goto LABEL_192;
          }

LABEL_153:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v290 = v282;
          v211 = v282[2];
          v212 = v282[3];

          if (v212 <= v211)
          {
            v214 = v211 + 1;
            if (isUniquelyReferenced_nonNull_native)
            {
              sub_1B2560C10(v214);
            }

            else
            {
              sub_1B2562770(v214);
            }

            v151 = v290;
            sub_1B256ED3C();
            OUTLINED_FUNCTION_74();
            sub_1B256DA7C();
            sub_1B256ED7C();
            OUTLINED_FUNCTION_59_7();
            if (v216)
            {
              v217 = v213;
              do
              {
                OUTLINED_FUNCTION_147_2();
                if (v82)
                {
                  v219 = OUTLINED_FUNCTION_280_0(v218);
                  v221 = v82 && v220 == v47;
                  if (v221 || (OUTLINED_FUNCTION_316_0(v219, v220) & 1) != 0)
                  {
                    goto LABEL_194;
                  }
                }

                OUTLINED_FUNCTION_94_4();
              }

              while ((v222 & 1) != 0);
              v213 = v217;
              v161 = v285;
              v162 = v281;
            }

            else
            {
              v161 = v285;
            }
          }

          else
          {
            v161 = v285;
            if (isUniquelyReferenced_nonNull_native)
            {
              v213 = v282;
            }

            else
            {
              sub_1B2561E44();
              v213 = v290;
            }
          }

          OUTLINED_FUNCTION_173_1(v213 + ((v151 >> 3) & 0xFFFFFFFFFFFFFF8));
          OUTLINED_FUNCTION_354(v223);
          if (v122)
          {
            goto LABEL_228;
          }

          v282 = v225;
          v225[2] = v224;
        }

        else
        {
          OUTLINED_FUNCTION_393();
          OUTLINED_FUNCTION_74();
          OUTLINED_FUNCTION_69();
          sub_1B256DA7C();
          sub_1B256ED7C();
          OUTLINED_FUNCTION_59_7();
          if (v184)
          {
            do
            {
              OUTLINED_FUNCTION_147_2();
              if (v82)
              {
                v186 = OUTLINED_FUNCTION_280_0(v185);
                v188 = v82 && v187 == v47;
                if (v188 || (OUTLINED_FUNCTION_316_0(v186, v187) & 1) != 0)
                {
                  goto LABEL_159;
                }
              }

              OUTLINED_FUNCTION_94_4();
            }

            while ((v189 & 1) != 0);
          }

          v190 = swift_isUniquelyReferenced_nonNull_native();
          v290 = v278;
          v191 = v278[2];
          if (v278[3] <= v191)
          {
            if (v190)
            {
              v215 = OUTLINED_FUNCTION_299_0(v191);
              sub_1B2560C10(v215);
            }

            else
            {
              v226 = OUTLINED_FUNCTION_299_0(v191);
              sub_1B2562770(v226);
            }

            v227 = v290;
            OUTLINED_FUNCTION_393();
            OUTLINED_FUNCTION_74();
            OUTLINED_FUNCTION_69();
            sub_1B256DA7C();
            sub_1B256ED7C();
            OUTLINED_FUNCTION_59_7();
            v278 = v227;
            if (v228)
            {
              do
              {
                OUTLINED_FUNCTION_147_2();
                if (v82)
                {
                  v230 = OUTLINED_FUNCTION_280_0(v229);
                  v232 = v82 && v231 == v47;
                  if (v232 || (OUTLINED_FUNCTION_316_0(v230, v231) & 1) != 0)
                  {
LABEL_194:

                    sub_1B256EC8C();
                    return;
                  }
                }

                OUTLINED_FUNCTION_94_4();
              }

              while ((v233 & 1) != 0);
              v161 = v285;
              v162 = v281;
            }

            else
            {
              v161 = v285;
            }
          }

          else
          {
            v161 = v285;
            if ((v190 & 1) == 0)
            {
              sub_1B2561E44();
              v278 = v290;
            }
          }

          OUTLINED_FUNCTION_173_1(v278 + ((v151 >> 3) & 0xFFFFFFFFFFFFFF8));
          OUTLINED_FUNCTION_354(v234);
          if (v122)
          {
            goto LABEL_229;
          }

          *(v236 + 16) = v235;
        }

LABEL_192:
        sub_1B25629C4(v0 + 424);
        v57 = v271;
      }
    }

    v57 = *(v0 + 568);
    v287 = **(v0 + 592);
    v58 = *(v275 + 8);
    OUTLINED_FUNCTION_2_40();
    sub_1B25636F8();
    v279 = v57;
    if (swift_weakLoadStrong())
    {
      break;
    }

    v59 = *(*(v0 + 568) + *(v280 + 24));
    v60 = v59 + 32;
    v61 = -*(v59 + 16);
    v62 = -1;
    while (v61 + v62 != -1)
    {
      if (++v62 >= *(v59 + 16))
      {
        __break(1u);
LABEL_198:

        v57[17] = MEMORY[0x1E69E7CD0];

        OUTLINED_FUNCTION_73_2();
        v239 = v238 & v237;
        OUTLINED_FUNCTION_231_0();
        v241 = v240 >> 6;

        v242 = 0;
        if (v239)
        {
          goto LABEL_203;
        }

        while (1)
        {
          do
          {
            v243 = v242 + 1;
            if (__OFADD__(v242, 1))
            {
              goto LABEL_226;
            }

            if (v243 >= v241)
            {

              v288 = sub_1B251954C(88);
              v289 = v253;
              MEMORY[0x1B2749D50](0x206465766F6D6552, 0xE800000000000000);
              v254 = v278[2];

              *(v0 + 480) = v254;
              v255 = sub_1B256EAAC();
              MEMORY[0x1B2749D50](v255);

              MEMORY[0x1B2749D50](0xD00000000000004ELL, 0x80000001B2593370);
              v256 = sub_1B256E08C();
              v257 = v270;

              v258 = sub_1B256D5CC();

              if (os_log_type_enabled(v258, v256))
              {
                OUTLINED_FUNCTION_21_3();
                v259 = OUTLINED_FUNCTION_126_1();
                OUTLINED_FUNCTION_369(v259);
                OUTLINED_FUNCTION_13_19(4.8752e-34);
                v260 = v267;
                MEMORY[0x1B2749D50](v267, v270);
                OUTLINED_FUNCTION_94_0();
                OUTLINED_FUNCTION_127_1();
                OUTLINED_FUNCTION_371();

                *(v47 + 4) = v270;
                OUTLINED_FUNCTION_58_4();
                v261 = OUTLINED_FUNCTION_157_0();
                sub_1B2519814(v261, v262, v263);
                OUTLINED_FUNCTION_154();

                *(v47 + 14) = &v268[v269];
                OUTLINED_FUNCTION_153_1(&dword_1B23EF000, v264, v256, "%{public}s%{public}s");
                OUTLINED_FUNCTION_95_0();
                v257 = v270;
                OUTLINED_FUNCTION_11_4();
                OUTLINED_FUNCTION_22_8();
              }

              else
              {

                v260 = v267;
              }

              v265 = swift_task_alloc();
              *(v0 + 616) = v265;
              *v265 = v0;
              v265[1] = sub_1B255CA44;
              v266 = *(v0 + 449);

              sub_1B254D99C(v282, v260, v257, v266);
              return;
            }

            v239 = v278[v243 + 7];
            ++v242;
          }

          while (!v239);
          v242 = v243;
          do
          {
LABEL_203:
            v244 = v278[6] + 24 * (__clz(__rbit64(v239)) | (v242 << 6));
            v47 = *v244;
            if (*(v244 + 16))
            {
              OUTLINED_FUNCTION_50_5((v279 + 15), v0 + 248);

              v245 = sub_1B2458898();
              if (v246)
              {
                v47 = v245;
                swift_isUniquelyReferenced_nonNull_native();
                v288 = v279[15];
                v279[15] = 0x8000000000000000;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0470, &qword_1B2579068);
                sub_1B256E80C();
                v247 = v288;
                OUTLINED_FUNCTION_397();
                sub_1B244ADF4(*(v247 + 56) + 16 * v47, v0 + 408);
                sub_1B24D0B38();
                OUTLINED_FUNCTION_333();
                sub_1B256E82C();
                v279[15] = v247;
              }

              else
              {
                *(v0 + 408) = 1;
                *(v0 + 416) = 0;
              }

              sub_1B256615C(v0 + 408, &unk_1EB7D2CD0);
            }

            else
            {
              OUTLINED_FUNCTION_50_5((v271 + 14), v0 + 272);

              v248 = sub_1B2458898();
              if (v249)
              {
                v47 = v248;
                swift_isUniquelyReferenced_nonNull_native();
                v288 = v271[14];
                v271[14] = 0x8000000000000000;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7CFEA8, &qword_1B2577D30);
                sub_1B256E80C();
                v250 = v288;
                OUTLINED_FUNCTION_397();
                OUTLINED_FUNCTION_2_40();
                sub_1B25636F8();
                sub_1B243A2E0();
                OUTLINED_FUNCTION_333();
                sub_1B256E82C();
                v271[14] = v250;

                v251 = 0;
              }

              else
              {
                v251 = 1;
              }

              v252 = *(v0 + 520);
              __swift_storeEnumTagSinglePayload(v252, v251, 1, *(v0 + 552));
              sub_1B256615C(v252, &qword_1EB7CFEA0);
            }

            v239 &= v239 - 1;
            swift_endAccess();
            OUTLINED_FUNCTION_38_7();
            sub_1B24D0BE8();
          }

          while (v239);
        }
      }

      v47 = v60 + 8;
      v57 = &qword_1EB7D0460;
      sub_1B24C5C14();
      v63 = swift_weakLoadStrong();
      OUTLINED_FUNCTION_146_2();
      sub_1B256615C(v64, v65);
      v60 = v47;
      if (v63)
      {

        v26 = (v0 + 48);
        goto LABEL_31;
      }
    }

    v39 = v278;
    sub_1B256ED3C();
    OUTLINED_FUNCTION_78();
    OUTLINED_FUNCTION_387();
    sub_1B256ED7C();
    OUTLINED_FUNCTION_112_3();
    if (((*(v286 + v85) >> v59) & 1) == 0)
    {
      v34 = v274;
LABEL_92:
      v134 = swift_isUniquelyReferenced_nonNull_native();
      v290 = v278;
      v135 = v278[2];
      if (v278[3] <= v135)
      {
        v26 = (v0 + 48);
        if (v134)
        {
          v138 = OUTLINED_FUNCTION_299_0(v135);
          sub_1B2560C10(v138);
        }

        else
        {
          v139 = OUTLINED_FUNCTION_299_0(v135);
          sub_1B2562770(v139);
        }

        v39 = v290;
        sub_1B256ED3C();
        OUTLINED_FUNCTION_78();
        OUTLINED_FUNCTION_387();
        sub_1B256ED7C();
        OUTLINED_FUNCTION_112_3();
        if (((*(v39 + 56 + v141) >> v59) & 1) == 0)
        {
          v136 = v287;
          goto LABEL_109;
        }

        v142 = ~v140;
        v143 = *(v39 + 48);
        v136 = v287;
        v137 = v58;
        do
        {
          v144 = v143 + 24 * v59;
          if ((*(v144 + 16) & 1) == 0)
          {
            v145 = *(v144 + 8);
            v146 = *v144 == v136 && v145 == v137;
            if (v146 || (OUTLINED_FUNCTION_301_0(*v144, v145) & 1) != 0)
            {
              goto LABEL_194;
            }
          }

          v59 = (v59 + 1) & v142;
          OUTLINED_FUNCTION_155_1();
        }

        while (((v147 >> v59) & 1) != 0);
        v26 = (v0 + 48);
        v34 = v274;
      }

      else
      {
        v26 = (v0 + 48);
        v136 = v287;
        if ((v134 & 1) == 0)
        {
          sub_1B2561E44();
          v137 = v58;
          v136 = v287;
          v39 = v290;
          goto LABEL_110;
        }

LABEL_109:
        v137 = v58;
      }

LABEL_110:
      *(v39 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v59;
      v148 = *(v39 + 48) + 24 * v59;
      *v148 = v136;
      *(v148 + 8) = v137;
      *(v148 + 16) = 0;
      v149 = *(v39 + 16);
      v122 = __OFADD__(v149, 1);
      v150 = v149 + 1;
      if (v122)
      {
        goto LABEL_227;
      }

      *(v39 + 16) = v150;
      OUTLINED_FUNCTION_0_47();
      sub_1B2563750();
      goto LABEL_17;
    }

    v86 = ~v84;
    v87 = v278[6];
    v34 = v274;
    v88 = v287;
    v89 = v58;
    while (1)
    {
      v90 = v87 + 24 * v59;
      if ((*(v90 + 16) & 1) == 0)
      {
        v91 = *(v90 + 8);
        if (*v90 == v88 && v91 == v89)
        {
          break;
        }

        v93 = OUTLINED_FUNCTION_301_0(*v90, v91);
        v89 = v58;
        v88 = v287;
        if (v93)
        {
          break;
        }
      }

      v59 = (v59 + 1) & v86;
      if (((*(v286 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59) & 1) == 0)
      {
        goto LABEL_92;
      }
    }

    OUTLINED_FUNCTION_0_47();
    sub_1B2563750();
    v26 = (v0 + 48);
LABEL_87:
    v40 = v276;
    v41 = v283;
    if (!v283)
    {
LABEL_19:
      while (1)
      {
        v42 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          goto LABEL_222;
        }

        if (v42 >= v40)
        {
          v47 = &qword_1B2587C38;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2EB8, &qword_1B2587C38);
          v94 = OUTLINED_FUNCTION_150_0();
          __swift_storeEnumTagSinglePayload(v94, v95, v96, v97);
          v283 = 0;
          goto LABEL_24;
        }

        v41 = *(v34 + 8 * v42);
        ++v38;
        if (v41)
        {
          v38 = v42;
          goto LABEL_23;
        }
      }
    }
  }

LABEL_31:
  v66 = *(v0 + 552);
  OUTLINED_FUNCTION_50_5((v271 + 14), v0 + 368);
  v67 = sub_1B253EBAC(v26, v287, v58);
  v69 = v68;
  if (!__swift_getEnumTagSinglePayload(v68, 1, v66))
  {
    sub_1B256615C(v69, &qword_1EB7D2CD8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2CC0, &qword_1B2587238);
    OUTLINED_FUNCTION_16_2();
    __swift_storeEnumTagSinglePayload(v70, v71, v72, v73);
  }

  (v67)(v26, 0);
  swift_endAccess();
  sub_1B256ED3C();
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_146_2();
  sub_1B256DA7C();
  sub_1B256ED7C();
  OUTLINED_FUNCTION_112_3();
  if ((*(v282 + v75 + 56) >> v69))
  {
    v76 = ~v74;
    v77 = v282[6];
    v78 = v287;
    v79 = v58;
    while (1)
    {
      v80 = v77 + 24 * v69;
      if ((*(v80 + 16) & 1) == 0)
      {
        v81 = *(v80 + 8);
        v82 = *v80 == v78 && v81 == v79;
        if (v82 || (OUTLINED_FUNCTION_301_0(*v80, v81) & 1) != 0)
        {
          break;
        }
      }

      v69 = (v69 + 1) & v76;
      OUTLINED_FUNCTION_155_1();
      if (((v83 >> v69) & 1) == 0)
      {
        goto LABEL_55;
      }
    }
  }

  else
  {
LABEL_55:
    v98 = swift_isUniquelyReferenced_nonNull_native();
    v290 = v282;
    v99 = v282[2];
    if (v282[3] <= v99)
    {
      if (v98)
      {
        v101 = OUTLINED_FUNCTION_299_0(v99);
        sub_1B2560C10(v101);
      }

      else
      {
        v102 = OUTLINED_FUNCTION_299_0(v99);
        sub_1B2562770(v102);
      }

      v103 = v290;
      sub_1B256ED3C();
      OUTLINED_FUNCTION_78();
      OUTLINED_FUNCTION_387();
      sub_1B256ED7C();
      OUTLINED_FUNCTION_112_3();
      if ((*(v103 + 56 + v105) >> v69))
      {
        v106 = ~v104;
        v107 = v100;
        v108 = *(v100 + 48);
        v109 = v287;
        v110 = v58;
        do
        {
          v111 = v108 + 24 * v69;
          if ((*(v111 + 16) & 1) == 0)
          {
            v112 = *(v111 + 8);
            v113 = *v111 == v109 && v112 == v110;
            if (v113 || (OUTLINED_FUNCTION_301_0(*v111, v112) & 1) != 0)
            {
              goto LABEL_194;
            }
          }

          v69 = (v69 + 1) & v106;
          OUTLINED_FUNCTION_155_1();
        }

        while (((v114 >> v69) & 1) != 0);
        v100 = v107;
      }
    }

    else if (v98)
    {
      v100 = v282;
    }

    else
    {
      sub_1B2561E44();
      v100 = v290;
    }

    OUTLINED_FUNCTION_173_1(v100 + ((v69 >> 3) & 0xFFFFFFFFFFFFFF8));
    v118 = v116 + v69 * v117;
    *v118 = v119;
    *(v118 + 8) = v120;
    *(v118 + 16) = 0;
    v121 = v115[2];
    v122 = __OFADD__(v121, 1);
    v123 = v121 + 1;
    if (v122)
    {
      goto LABEL_225;
    }

    v282 = v115;
    v115[2] = v123;
  }

  v124 = swift_weakLoadStrong();
  if (v124)
  {
    v125 = v124;
    v126 = sub_1B256DDAC();
    OUTLINED_FUNCTION_81_4(v126);
    OUTLINED_FUNCTION_120();

    sub_1B256DD5C();
    v127 = OUTLINED_FUNCTION_405(&unk_1F29BCBE0);
    v128 = OUTLINED_FUNCTION_185_1(v127);
    *(v128 + 24) = MEMORY[0x1E69E85E0];
    *(v128 + 32) = v125;
    OUTLINED_FUNCTION_107_0();
    sub_1B247DAA8();
    OUTLINED_FUNCTION_120();
  }

  v129 = *(*(v0 + 568) + *(v280 + 24));

  v130 = 0;
  while (2)
  {
    v131 = *(v129 + 16);
    v132 = v130;
LABEL_78:
    if (v132 == v131)
    {
      *(v0 + 440) = 0;
      v130 = v131;
LABEL_83:
      *(v0 + 448) = v132 == v131;
      sub_1B24C42F0();
      if (*(v0 + 464))
      {

        OUTLINED_FUNCTION_0_47();
        sub_1B2563750();
        v26 = (v0 + 48);
        v34 = v274;
        goto LABEL_87;
      }

      sub_1B24C42F0();
      v133 = swift_weakLoadStrong();
      sub_1B256615C(v0 + 504, &qword_1EB7D0460);
      v132 = v130;
      if (v133)
      {
        sub_1B25603E8(&v288, v133);

        continue;
      }

      goto LABEL_78;
    }

    break;
  }

  if ((v132 & 0x8000000000000000) == 0)
  {
    if (v132 >= *(v129 + 16))
    {
      goto LABEL_221;
    }

    sub_1B24C5C14();
    v130 = v132 + 1;
    goto LABEL_83;
  }

  __break(1u);
LABEL_221:
  __break(1u);
LABEL_222:
  __break(1u);
LABEL_223:
  __break(1u);
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
}