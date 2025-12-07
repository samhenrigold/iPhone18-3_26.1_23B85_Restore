uint64_t sub_1D51BC42C()
{
  OUTLINED_FUNCTION_60();
  v0[269] = v1;
  v0[268] = v2;
  v0[267] = v3;
  v4 = _s10DescriptorVMa(0);
  v0[270] = v4;
  OUTLINED_FUNCTION_22(v4);
  v0[271] = OUTLINED_FUNCTION_127();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F15B0, &qword_1D5640980);
  OUTLINED_FUNCTION_22(v5);
  v0[272] = OUTLINED_FUNCTION_127();
  v6 = _s13PersistedDateVMa(0);
  v0[273] = v6;
  OUTLINED_FUNCTION_22(v6);
  v0[274] = OUTLINED_FUNCTION_127();
  v7 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D51BC500()
{
  OUTLINED_FUNCTION_75_0();
  v1 = *(v0 + 2136);
  sub_1D560C2F8();
  v2 = *(v1 + 24);
  v3 = OUTLINED_FUNCTION_159();
  v5 = __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = *(v2 - 8);
  v7 = OUTLINED_FUNCTION_127();
  (*(v6 + 16))(v7, v5, v2);
  *(v0 + 2048) = swift_getAssociatedTypeWitness();
  *(v0 + 2056) = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0((v0 + 2024));
  sub_1D5614F98();

  v8 = OUTLINED_FUNCTION_291();
  OUTLINED_FUNCTION_85_0();
  sub_1D5615938();
  if (__swift_getEnumTagSinglePayload(v2, 1, v7) == 1)
  {
    OUTLINED_FUNCTION_278();
    OUTLINED_FUNCTION_6_71();
    sub_1D51D2E04(v8, v9);
    __swift_destroy_boxed_opaque_existential_1((v0 + 2024));

    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_73_0();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_227_1();
  OUTLINED_FUNCTION_65_20();
  sub_1D4F0029C();
  v13 = v12;
  v14 = *(v12 + 16);
  OUTLINED_FUNCTION_320();
  if (v16)
  {
    OUTLINED_FUNCTION_16_56(v15);
    sub_1D4F0029C();
    v13 = v129;
  }

  OUTLINED_FUNCTION_117_7();
  OUTLINED_FUNCTION_322(v17);
  OUTLINED_FUNCTION_252("catalog_song");
  OUTLINED_FUNCTION_178_2();
  v18 = *(v13 + 16);
  v19 = *(v13 + 24);

  if (v18 >= v19 >> 1)
  {
    OUTLINED_FUNCTION_23_44();
    sub_1D4F0029C();
    v13 = v130;
  }

  OUTLINED_FUNCTION_123_0();
  v21 = (v13 + v18 * v20);
  v21[2].n128_u64[0] = v7;
  v21[2].n128_u64[1] = v14;
  OUTLINED_FUNCTION_17_55(v21, *(v0 + 1280), *(v0 + 1296), *(v0 + 1312));
  OUTLINED_FUNCTION_203_2();
  if (!(v24 ^ v25 | v23))
  {
    OUTLINED_FUNCTION_24_43(v22);
    sub_1D4F0029C();
    v13 = v131;
  }

  OUTLINED_FUNCTION_61_3();
  OUTLINED_FUNCTION_80_9(v26);
  OUTLINED_FUNCTION_11_70(v27);
  if (qword_1EDD5A228 != -1)
  {
    OUTLINED_FUNCTION_14_55(&qword_1EDD5A228);
  }

  v28 = (v0 + 1672);
  v30 = aAssetAdamId[0];
  v29 = aAssetAdamId[1];
  v32 = *(v13 + 16);
  v31 = *(v13 + 24);

  if (v32 >= v31 >> 1)
  {
    OUTLINED_FUNCTION_53_18();
    sub_1D4F0029C();
    v13 = v132;
  }

  v33 = (v0 + 1504);
  OUTLINED_FUNCTION_284();
  v34[2].n128_u64[0] = v30;
  v34[2].n128_u64[1] = v29;
  OUTLINED_FUNCTION_17_55(v34, *v28, *(v0 + 1688), *(v0 + 1704));
  if ((v32 + 2) > (v35 >> 1))
  {
    OUTLINED_FUNCTION_16_56(v35);
    sub_1D4F0029C();
    v13 = v133;
  }

  OUTLINED_FUNCTION_62_23();
  v36[2].n128_u64[0] = 0x202020200A2CLL;
  v36[2].n128_u64[1] = v37;
  OUTLINED_FUNCTION_21(v36, *v33, *(v0 + 1520), *(v0 + 1536));
  OUTLINED_FUNCTION_297();
  OUTLINED_FUNCTION_319();
  if ((v32 + 1) > (v30 >> 1))
  {
    OUTLINED_FUNCTION_51_22();
    sub_1D4F0029C();
    v13 = v134;
  }

  OUTLINED_FUNCTION_61_3();
  *(v38 + 32) = v28;
  *(v38 + 40) = v33;
  OUTLINED_FUNCTION_10_68(v38);
  OUTLINED_FUNCTION_287();
  if (!(v24 ^ v25 | v23))
  {
    OUTLINED_FUNCTION_16_56(v39);
    sub_1D4F0029C();
    v13 = v135;
  }

  OUTLINED_FUNCTION_62_23();
  *(v40 + 32) = 0x202020200A2CLL;
  *(v40 + 40) = v41;
  OUTLINED_FUNCTION_8_67(v40);
  OUTLINED_FUNCTION_297();

  if ((v32 + 5) > ((v0 + 1728) >> 1))
  {
    OUTLINED_FUNCTION_51_22();
    sub_1D4F0029C();
    v13 = v136;
  }

  OUTLINED_FUNCTION_61_3();
  *(v42 + 32) = v28;
  *(v42 + 40) = v33;
  OUTLINED_FUNCTION_10_68(v42);
  OUTLINED_FUNCTION_286();
  if (!(v24 ^ v25 | v23))
  {
    OUTLINED_FUNCTION_16_56(v43);
    sub_1D4F0029C();
    v13 = v137;
  }

  OUTLINED_FUNCTION_62_23();
  *(v44 + 32) = 0x202020200A2CLL;
  *(v44 + 40) = v45;
  OUTLINED_FUNCTION_8_67(v44);
  OUTLINED_FUNCTION_297();

  if ((v32 + 7) > ((v0 + 664) >> 1))
  {
    OUTLINED_FUNCTION_51_22();
    sub_1D4F0029C();
    v13 = v138;
  }

  OUTLINED_FUNCTION_61_3();
  *(v46 + 32) = v28;
  *(v46 + 40) = v33;
  OUTLINED_FUNCTION_10_68(v46);
  v47 = *(v13 + 24);
  if ((v32 + 8) > (v47 >> 1))
  {
    OUTLINED_FUNCTION_16_56(v47);
    sub_1D4F0029C();
    v13 = v139;
  }

  OUTLINED_FUNCTION_62_23();
  *(v48 + 32) = 0x202020200A2CLL;
  *(v48 + 40) = v49;
  OUTLINED_FUNCTION_8_67(v48);
  OUTLINED_FUNCTION_297();

  if ((v32 + 9) > ((v0 + 776) >> 1))
  {
    OUTLINED_FUNCTION_51_22();
    sub_1D4F0029C();
    v13 = v140;
  }

  OUTLINED_FUNCTION_61_3();
  *(v50 + 32) = v28;
  *(v50 + 40) = v33;
  OUTLINED_FUNCTION_10_68(v50);
  v51 = *(v13 + 24);
  if ((v32 + 10) > (v51 >> 1))
  {
    OUTLINED_FUNCTION_16_56(v51);
    sub_1D4F0029C();
    v13 = v141;
  }

  OUTLINED_FUNCTION_62_23();
  OUTLINED_FUNCTION_340(v52);
  OUTLINED_FUNCTION_12_58(v53);
  v55 = qword_1EC7E99D0;
  v54 = off_1EC7E99D8;
  v56 = *(v13 + 24);

  if ((v32 + 11) > (v56 >> 1))
  {
    OUTLINED_FUNCTION_31_32();
    sub_1D4F0029C();
    v13 = v142;
  }

  OUTLINED_FUNCTION_61_3();
  *(v57 + 32) = v55;
  *(v57 + 40) = v54;
  OUTLINED_FUNCTION_10_68(v57);
  v58 = *(v13 + 24);
  if ((v32 + 12) > (v58 >> 1))
  {
    OUTLINED_FUNCTION_16_56(v58);
    sub_1D4F0029C();
    v13 = v143;
  }

  OUTLINED_FUNCTION_62_23();
  OUTLINED_FUNCTION_340(v59);
  OUTLINED_FUNCTION_8_67(v60);
  OUTLINED_FUNCTION_297();

  if ((v32 + 13) > ((v0 + 1000) >> 1))
  {
    OUTLINED_FUNCTION_51_22();
    sub_1D4F0029C();
    v13 = v144;
  }

  OUTLINED_FUNCTION_61_3();
  *(v61 + 32) = v55;
  *(v61 + 40) = v54;
  OUTLINED_FUNCTION_12_58(v61);
  v62 = *(v13 + 24);
  if ((v32 + 14) > (v62 >> 1))
  {
    OUTLINED_FUNCTION_16_56(v62);
    sub_1D4F0029C();
    v13 = v145;
  }

  OUTLINED_FUNCTION_288();
  *(v63 + 32) = 0xD000000000000010;
  *(v63 + 40) = 0x80000001D5687730;
  OUTLINED_FUNCTION_52_20(*(v0 + 1112), *(v0 + 1128), *(v0 + 1144));
  v66 = *v64;
  v65 = v64[1];
  v67 = *(v13 + 24);

  if ((v32 + 15) > (v67 >> 1))
  {
    OUTLINED_FUNCTION_53_18();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_61_3();
  v68 = MEMORY[0x1E69E6158];
  v69[4] = v66;
  v69[5] = v65;
  v69[7] = v68;
  v69[8] = &off_1F50C0538;
  OUTLINED_FUNCTION_249(v69, *(v0 + 2104), *(v0 + 2120));
  if (!(v24 ^ v25 | v23))
  {
    OUTLINED_FUNCTION_16_56(v70);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_40_31();
  *(v71 + 32) = 0x202020200A2CLL;
  *(v71 + 40) = v72;
  v73 = OUTLINED_FUNCTION_133_4();
  OUTLINED_FUNCTION_69_17(v73, v74, v75);
  *(v0 + 1968) = v76;
  *(v0 + 1976) = &off_1F50B88D8;
  __swift_allocate_boxed_opaque_existential_0((v0 + 1944));
  OUTLINED_FUNCTION_2_102();
  sub_1D51D2DB0();
  sub_1D4E628D4(v0 + 1944, v0 + 16);
  OUTLINED_FUNCTION_336();
  if (!(v24 ^ v25 | v23))
  {
    OUTLINED_FUNCTION_24_43(v77);
    sub_1D4F0029C();
  }

  v78 = OUTLINED_FUNCTION_49_18();
  OUTLINED_FUNCTION_253(v78);
  __swift_destroy_boxed_opaque_existential_1((v0 + 1944));
  OUTLINED_FUNCTION_97_2();
  if (v16)
  {
    OUTLINED_FUNCTION_16_56(v79);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_40_31();
  *(v80 + 32) = 0x202020200A2CLL;
  *(v80 + 40) = v81;
  OUTLINED_FUNCTION_43_20();
  LOBYTE(v83) = *(v83 + *(v82 + 24));
  *(v0 + 1888) = &_s13PersistedBoolVN;
  OUTLINED_FUNCTION_357(v83);
  *(v0 + 488) = 1;
  OUTLINED_FUNCTION_116_10();
  if (!(v24 ^ v25 | v23))
  {
    OUTLINED_FUNCTION_24_43(v84);
    sub_1D4F0029C();
  }

  v85 = OUTLINED_FUNCTION_49_18();
  memcpy(v85, (v0 + 416), 0x49uLL);
  __swift_destroy_boxed_opaque_existential_1((v0 + 1864));
  OUTLINED_FUNCTION_97_2();
  if (v16)
  {
    OUTLINED_FUNCTION_16_56(v86);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_40_31();
  *(v87 + 32) = 0x202020200A2CLL;
  *(v87 + 40) = v88;
  OUTLINED_FUNCTION_43_20();
  v91 = *(v90 + *(v89 + 28));
  *(v0 + 1848) = MEMORY[0x1E69E6530];
  OUTLINED_FUNCTION_353(v91);
  *(v0 + 408) = 1;
  OUTLINED_FUNCTION_116_10();
  if (!(v24 ^ v25 | v23))
  {
    OUTLINED_FUNCTION_24_43(v92);
    sub_1D4F0029C();
  }

  v93 = OUTLINED_FUNCTION_49_18();
  memcpy(v93, (v0 + 336), 0x49uLL);
  __swift_destroy_boxed_opaque_existential_1((v0 + 1824));
  OUTLINED_FUNCTION_97_2();
  if (v16)
  {
    OUTLINED_FUNCTION_16_56(v94);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_40_31();
  *(v95 + 32) = 0x202020200A2CLL;
  *(v95 + 40) = v96;
  v97 = OUTLINED_FUNCTION_133_4();
  OUTLINED_FUNCTION_69_17(v97, v98, v99);
  OUTLINED_FUNCTION_272_0(v100);
  *(v0 + 328) = 1;
  OUTLINED_FUNCTION_116_10();
  if (!(v24 ^ v25 | v23))
  {
    OUTLINED_FUNCTION_24_43(v101);
    sub_1D4F0029C();
  }

  v102 = OUTLINED_FUNCTION_49_18();
  OUTLINED_FUNCTION_369(v102);
  __swift_destroy_boxed_opaque_existential_1((v0 + 1784));
  OUTLINED_FUNCTION_97_2();
  if (v16)
  {
    OUTLINED_FUNCTION_16_56(v103);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_40_31();
  *(v104 + 32) = 0x202020200A2CLL;
  *(v104 + 40) = v105;
  OUTLINED_FUNCTION_43_20();
  OUTLINED_FUNCTION_352(v106);
  OUTLINED_FUNCTION_2_102();
  sub_1D51D2DB0();
  sub_1D4E628D4(v0 + 1904, v0 + 176);
  OUTLINED_FUNCTION_258_0();
  OUTLINED_FUNCTION_116_10();
  if (!(v24 ^ v25 | v23))
  {
    OUTLINED_FUNCTION_24_43(v107);
    sub_1D4F0029C();
  }

  v108 = OUTLINED_FUNCTION_49_18();
  OUTLINED_FUNCTION_317(v108);
  __swift_destroy_boxed_opaque_existential_1((v0 + 1904));
  OUTLINED_FUNCTION_222_1();
  if (v16)
  {
    OUTLINED_FUNCTION_16_56(v109);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_270();
  *(v110 + 32) = 0x202020200A2CLL;
  *(v110 + 40) = v111;
  OUTLINED_FUNCTION_44_23();
  *(v0 + 2008) = v112;
  *(v0 + 2016) = &off_1F50B88D8;
  __swift_allocate_boxed_opaque_existential_0((v0 + 1984));
  OUTLINED_FUNCTION_2_102();
  sub_1D51D2DB0();
  sub_1D4E628D4(v0 + 1984, v0 + 96);
  OUTLINED_FUNCTION_160_5();
  OUTLINED_FUNCTION_203_2();
  if (!(v24 ^ v25 | v23))
  {
    OUTLINED_FUNCTION_24_43(v113);
    sub_1D4F0029C();
  }

  v114 = OUTLINED_FUNCTION_49_18();
  OUTLINED_FUNCTION_254(v114);
  __swift_destroy_boxed_opaque_existential_1((v0 + 1984));
  OUTLINED_FUNCTION_97_2();
  if (v16)
  {
    OUTLINED_FUNCTION_16_56(v115);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_64_16();
  v116[2].n128_u64[0] = 10506;
  v116[2].n128_u64[1] = 0xE200000000000000;
  OUTLINED_FUNCTION_21(v116, *(v0 + 496), *(v0 + 512), *(v0 + 528));
  OUTLINED_FUNCTION_57_1();
  sub_1D54F08F4(v117, v118, v119, v120, v121);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 2200) = v122;
  *v122 = v123;
  OUTLINED_FUNCTION_161_5(v122);
  OUTLINED_FUNCTION_73_0();

  return sub_1D52EF24C(v124, v125, v126);
}

uint64_t sub_1D51BCF50()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 2208) = v0;

  sub_1D51D2984(v3 + 2064);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D51BD050()
{
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_189_2();
  sub_1D51D2E04(v5, v6);
  v7 = OUTLINED_FUNCTION_291();
  OUTLINED_FUNCTION_85_0();
  sub_1D5615938();
  if (__swift_getEnumTagSinglePayload(v0, 1, v1) == 1)
  {
    OUTLINED_FUNCTION_278();
    OUTLINED_FUNCTION_6_71();
    sub_1D51D2E04(v7, v8);
    __swift_destroy_boxed_opaque_existential_1((v2 + 2024));

    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_73_0();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_65_20();
  sub_1D4F0029C();
  OUTLINED_FUNCTION_144_3();
  if (v12)
  {
    OUTLINED_FUNCTION_16_56(v11);
    sub_1D4F0029C();
    v7 = v121;
  }

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_288();
  *(v15 + 32) = v13 | 7;
  *(v15 + 40) = v14;
  *(v15 + 104) = 0;
  OUTLINED_FUNCTION_252("catalog_song");
  OUTLINED_FUNCTION_178_2();
  v17 = *(v7 + 16);
  v16 = *(v7 + 24);

  if (v17 >= v16 >> 1)
  {
    OUTLINED_FUNCTION_23_44();
    sub_1D4F0029C();
    v7 = v122;
  }

  OUTLINED_FUNCTION_123_0();
  v19 = (v7 + v17 * v18);
  v19[2].n128_u64[0] = v1;
  v19[2].n128_u64[1] = v3;
  OUTLINED_FUNCTION_17_55(v19, *(v2 + 1280), *(v2 + 1296), *(v2 + 1312));
  if ((v17 + 2) > (v20 >> 1))
  {
    OUTLINED_FUNCTION_24_43(v20);
    sub_1D4F0029C();
    v7 = v123;
  }

  OUTLINED_FUNCTION_61_3();
  OUTLINED_FUNCTION_80_9(v21);
  OUTLINED_FUNCTION_11_70(v22);
  if (qword_1EDD5A228 != -1)
  {
    OUTLINED_FUNCTION_14_55(&qword_1EDD5A228);
  }

  v23 = (v2 + 1672);
  v25 = aAssetAdamId[0];
  v24 = aAssetAdamId[1];
  v27 = *(v7 + 16);
  v26 = *(v7 + 24);

  if (v27 >= v26 >> 1)
  {
    OUTLINED_FUNCTION_53_18();
    sub_1D4F0029C();
    v7 = v124;
  }

  v28 = (v2 + 1504);
  OUTLINED_FUNCTION_284();
  v29[2].n128_u64[0] = v25;
  v29[2].n128_u64[1] = v24;
  OUTLINED_FUNCTION_17_55(v29, *v23, *(v2 + 1688), *(v2 + 1704));
  if ((v27 + 2) > (v30 >> 1))
  {
    OUTLINED_FUNCTION_16_56(v30);
    sub_1D4F0029C();
    v7 = v125;
  }

  OUTLINED_FUNCTION_290();
  OUTLINED_FUNCTION_62_23();
  v31[2].n128_u64[0] = v23;
  v31[2].n128_u64[1] = v32;
  OUTLINED_FUNCTION_21(v31, *v28, *(v2 + 1520), *(v2 + 1536));
  OUTLINED_FUNCTION_250();
  OUTLINED_FUNCTION_319();
  if ((v27 + 1) > (v4 >> 1))
  {
    OUTLINED_FUNCTION_31_32();
    sub_1D4F0029C();
    v7 = v126;
  }

  OUTLINED_FUNCTION_61_3();
  *(v33 + 32) = v16;
  *(v33 + 40) = v28;
  OUTLINED_FUNCTION_10_68(v33);
  OUTLINED_FUNCTION_287();
  if (!(v36 ^ v37 | v35))
  {
    OUTLINED_FUNCTION_16_56(v34);
    sub_1D4F0029C();
    v7 = v127;
  }

  OUTLINED_FUNCTION_62_23();
  *(v38 + 32) = v23;
  *(v38 + 40) = v39;
  OUTLINED_FUNCTION_12_58(v38);
  OUTLINED_FUNCTION_250();

  if ((v27 + 5) > ((v2 + 1728) >> 1))
  {
    OUTLINED_FUNCTION_31_32();
    sub_1D4F0029C();
    v7 = v128;
  }

  OUTLINED_FUNCTION_61_3();
  *(v40 + 32) = v16;
  *(v40 + 40) = v28;
  OUTLINED_FUNCTION_10_68(v40);
  OUTLINED_FUNCTION_286();
  if (!(v36 ^ v37 | v35))
  {
    OUTLINED_FUNCTION_16_56(v41);
    sub_1D4F0029C();
    v7 = v129;
  }

  OUTLINED_FUNCTION_62_23();
  *(v42 + 32) = v23;
  *(v42 + 40) = v43;
  OUTLINED_FUNCTION_12_58(v42);
  OUTLINED_FUNCTION_250();

  if ((v27 + 7) > ((v2 + 664) >> 1))
  {
    OUTLINED_FUNCTION_31_32();
    sub_1D4F0029C();
    v7 = v130;
  }

  OUTLINED_FUNCTION_61_3();
  *(v44 + 32) = v16;
  *(v44 + 40) = v28;
  OUTLINED_FUNCTION_10_68(v44);
  v45 = *(v7 + 24);
  if ((v27 + 8) > (v45 >> 1))
  {
    OUTLINED_FUNCTION_16_56(v45);
    sub_1D4F0029C();
    v7 = v131;
  }

  OUTLINED_FUNCTION_62_23();
  *(v46 + 32) = v23;
  *(v46 + 40) = v47;
  OUTLINED_FUNCTION_12_58(v46);
  OUTLINED_FUNCTION_250();

  if ((v27 + 9) > ((v2 + 776) >> 1))
  {
    OUTLINED_FUNCTION_31_32();
    sub_1D4F0029C();
    v7 = v132;
  }

  OUTLINED_FUNCTION_61_3();
  *(v48 + 32) = v16;
  *(v48 + 40) = v28;
  OUTLINED_FUNCTION_10_68(v48);
  v49 = *(v7 + 24);
  if ((v27 + 10) > (v49 >> 1))
  {
    OUTLINED_FUNCTION_16_56(v49);
    sub_1D4F0029C();
    v7 = v133;
  }

  OUTLINED_FUNCTION_62_23();
  *(v50 + 32) = v23;
  *(v50 + 40) = v51;
  OUTLINED_FUNCTION_12_58(v50);
  OUTLINED_FUNCTION_250();

  if ((v27 + 11) > ((v2 + 888) >> 1))
  {
    OUTLINED_FUNCTION_31_32();
    sub_1D4F0029C();
    v7 = v134;
  }

  OUTLINED_FUNCTION_61_3();
  *(v52 + 32) = v16;
  *(v52 + 40) = v28;
  OUTLINED_FUNCTION_10_68(v52);
  v53 = *(v7 + 24);
  if ((v27 + 12) > (v53 >> 1))
  {
    OUTLINED_FUNCTION_16_56(v53);
    sub_1D4F0029C();
    v7 = v135;
  }

  OUTLINED_FUNCTION_62_23();
  *(v54 + 32) = v23;
  *(v54 + 40) = v55;
  OUTLINED_FUNCTION_12_58(v54);
  OUTLINED_FUNCTION_250();

  if ((v27 + 13) > ((v2 + 1000) >> 1))
  {
    OUTLINED_FUNCTION_31_32();
    sub_1D4F0029C();
    v7 = v136;
  }

  v56 = v2 + 1112;
  OUTLINED_FUNCTION_61_3();
  *(v57 + 32) = v16;
  *(v57 + 40) = v28;
  OUTLINED_FUNCTION_10_68(v57);
  v58 = *(v7 + 24);
  if ((v27 + 14) > (v58 >> 1))
  {
    OUTLINED_FUNCTION_16_56(v58);
    sub_1D4F0029C();
    v7 = v137;
  }

  *(v7 + 16) = v27 + 14;
  v59 = v7 + 80 * (v27 + 13);
  *(v59 + 32) = 0xD000000000000010;
  *(v59 + 40) = 0x80000001D5687730;
  v60 = *v56;
  v61 = *(v2 + 1128);
  v62 = *(v2 + 1144);
  *(v59 + 96) = *(v2 + 1160);
  *(v59 + 64) = v61;
  *(v59 + 80) = v62;
  *(v59 + 48) = v60;
  *(v59 + 104) = 0;
  OUTLINED_FUNCTION_250();

  if ((v27 + 15) > (v56 >> 1))
  {
    OUTLINED_FUNCTION_31_32();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_61_3();
  v63 = MEMORY[0x1E69E6158];
  v64[4] = v16;
  v64[5] = v28;
  v64[7] = v63;
  v64[8] = &off_1F50C0538;
  OUTLINED_FUNCTION_249(v64, *(v2 + 2104), *(v2 + 2120));
  if (!(v36 ^ v37 | v35))
  {
    OUTLINED_FUNCTION_16_56(v65);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_40_31();
  *(v66 + 32) = v23;
  *(v66 + 40) = v67;
  OUTLINED_FUNCTION_69_17(*(v2 + 1224), *(v2 + 1240), *(v2 + 1256));
  *(v2 + 1968) = v68;
  *(v2 + 1976) = &off_1F50B88D8;
  __swift_allocate_boxed_opaque_existential_0((v2 + 1944));
  OUTLINED_FUNCTION_2_102();
  sub_1D51D2DB0();
  sub_1D4E628D4(v2 + 1944, v2 + 16);
  OUTLINED_FUNCTION_336();
  if (!(v36 ^ v37 | v35))
  {
    OUTLINED_FUNCTION_24_43(v69);
    sub_1D4F0029C();
  }

  v70 = OUTLINED_FUNCTION_49_18();
  OUTLINED_FUNCTION_253(v70);
  __swift_destroy_boxed_opaque_existential_1((v2 + 1944));
  OUTLINED_FUNCTION_97_2();
  if (v12)
  {
    OUTLINED_FUNCTION_16_56(v71);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_40_31();
  *(v72 + 32) = v23;
  *(v72 + 40) = v73;
  OUTLINED_FUNCTION_43_20();
  LOBYTE(v75) = *(v75 + *(v74 + 24));
  *(v2 + 1888) = &_s13PersistedBoolVN;
  OUTLINED_FUNCTION_357(v75);
  *(v2 + 488) = 1;
  OUTLINED_FUNCTION_116_10();
  if (!(v36 ^ v37 | v35))
  {
    OUTLINED_FUNCTION_24_43(v76);
    sub_1D4F0029C();
  }

  v77 = OUTLINED_FUNCTION_49_18();
  memcpy(v77, (v2 + 416), 0x49uLL);
  __swift_destroy_boxed_opaque_existential_1((v2 + 1864));
  OUTLINED_FUNCTION_97_2();
  if (v12)
  {
    OUTLINED_FUNCTION_16_56(v78);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_40_31();
  *(v79 + 32) = v23;
  *(v79 + 40) = v80;
  OUTLINED_FUNCTION_43_20();
  v83 = *(v82 + *(v81 + 28));
  *(v2 + 1848) = MEMORY[0x1E69E6530];
  OUTLINED_FUNCTION_353(v83);
  *(v2 + 408) = 1;
  OUTLINED_FUNCTION_116_10();
  if (!(v36 ^ v37 | v35))
  {
    OUTLINED_FUNCTION_24_43(v84);
    sub_1D4F0029C();
  }

  v85 = OUTLINED_FUNCTION_49_18();
  memcpy(v85, (v2 + 336), 0x49uLL);
  __swift_destroy_boxed_opaque_existential_1((v2 + 1824));
  OUTLINED_FUNCTION_97_2();
  if (v12)
  {
    OUTLINED_FUNCTION_16_56(v86);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_40_31();
  *(v87 + 32) = v23;
  *(v87 + 40) = v88;
  v89 = OUTLINED_FUNCTION_133_4();
  OUTLINED_FUNCTION_69_17(v89, v90, v91);
  OUTLINED_FUNCTION_272_0(v92);
  *(v2 + 328) = 1;
  OUTLINED_FUNCTION_116_10();
  if (!(v36 ^ v37 | v35))
  {
    OUTLINED_FUNCTION_24_43(v93);
    sub_1D4F0029C();
  }

  v94 = OUTLINED_FUNCTION_49_18();
  OUTLINED_FUNCTION_369(v94);
  __swift_destroy_boxed_opaque_existential_1((v2 + 1784));
  OUTLINED_FUNCTION_97_2();
  if (v12)
  {
    OUTLINED_FUNCTION_16_56(v95);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_40_31();
  *(v96 + 32) = v23;
  *(v96 + 40) = v97;
  OUTLINED_FUNCTION_43_20();
  OUTLINED_FUNCTION_352(v98);
  OUTLINED_FUNCTION_2_102();
  sub_1D51D2DB0();
  sub_1D4E628D4(v2 + 1904, v2 + 176);
  OUTLINED_FUNCTION_258_0();
  OUTLINED_FUNCTION_116_10();
  if (!(v36 ^ v37 | v35))
  {
    OUTLINED_FUNCTION_24_43(v99);
    sub_1D4F0029C();
  }

  v100 = OUTLINED_FUNCTION_49_18();
  OUTLINED_FUNCTION_317(v100);
  __swift_destroy_boxed_opaque_existential_1((v2 + 1904));
  OUTLINED_FUNCTION_222_1();
  if (v12)
  {
    OUTLINED_FUNCTION_16_56(v101);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_270();
  *(v102 + 32) = v23;
  *(v102 + 40) = v103;
  OUTLINED_FUNCTION_44_23();
  *(v2 + 2008) = v104;
  *(v2 + 2016) = &off_1F50B88D8;
  __swift_allocate_boxed_opaque_existential_0((v2 + 1984));
  OUTLINED_FUNCTION_2_102();
  sub_1D51D2DB0();
  sub_1D4E628D4(v2 + 1984, v2 + 96);
  OUTLINED_FUNCTION_160_5();
  OUTLINED_FUNCTION_203_2();
  if (!(v36 ^ v37 | v35))
  {
    OUTLINED_FUNCTION_24_43(v105);
    sub_1D4F0029C();
  }

  v106 = OUTLINED_FUNCTION_49_18();
  OUTLINED_FUNCTION_254(v106);
  __swift_destroy_boxed_opaque_existential_1((v2 + 1984));
  OUTLINED_FUNCTION_97_2();
  if (v12)
  {
    OUTLINED_FUNCTION_16_56(v107);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_64_16();
  v108[2].n128_u64[0] = 10506;
  v108[2].n128_u64[1] = 0xE200000000000000;
  OUTLINED_FUNCTION_21(v108, *(v2 + 496), *(v2 + 512), *(v2 + 528));
  OUTLINED_FUNCTION_57_1();
  sub_1D54F08F4(v109, v110, v111, v112, v113);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v2 + 2200) = v114;
  *v114 = v115;
  OUTLINED_FUNCTION_161_5(v114);
  OUTLINED_FUNCTION_73_0();

  return sub_1D52EF24C(v116, v117, v118);
}

uint64_t sub_1D51BD9B4()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_278();
  OUTLINED_FUNCTION_189_2();
  sub_1D51D2E04(v1, v3);
  OUTLINED_FUNCTION_6_71();
  sub_1D51D2E04(v0, v4);
  __swift_destroy_boxed_opaque_existential_1((v2 + 2024));

  OUTLINED_FUNCTION_55();

  return v5();
}

uint64_t sub_1D51BDA4C()
{
  OUTLINED_FUNCTION_60();
  v0[25] = v1;
  v0[26] = v2;
  v0[23] = v3;
  v0[24] = v4;
  v0[22] = v5;
  v6 = _s13PersistedDateVMa(0);
  v0[27] = v6;
  OUTLINED_FUNCTION_22(v6);
  v0[28] = OUTLINED_FUNCTION_127();
  v7 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D51BDAD0()
{
  OUTLINED_FUNCTION_234_0();
  OUTLINED_FUNCTION_315();
  OUTLINED_FUNCTION_144_3();
  if (v7)
  {
    OUTLINED_FUNCTION_16_56(v6);
    sub_1D4F0029C();
    v0 = v78;
  }

  OUTLINED_FUNCTION_64_16();
  OUTLINED_FUNCTION_32_35(v8);
  v9 = OUTLINED_FUNCTION_252("catalog_song");
  OUTLINED_FUNCTION_156_4(v9, v10);
  if (v4 >= v5 >> 1)
  {
    OUTLINED_FUNCTION_23_44();
    sub_1D4F0029C();
    v0 = v79;
  }

  OUTLINED_FUNCTION_123_0();
  v12 = v0 + v4 * v11;
  *(v12 + 32) = v1;
  *(v12 + 40) = v3;
  OUTLINED_FUNCTION_0_126(v12, v92, v104, v116, v128, v140);
  OUTLINED_FUNCTION_221_0();
  if (!(v15 ^ v16 | v14))
  {
    OUTLINED_FUNCTION_24_43(v13);
    sub_1D4F0029C();
    v0 = v80;
  }

  OUTLINED_FUNCTION_61_3();
  OUTLINED_FUNCTION_243();
  *(v18 + 32) = v17 | 0x2020200A00000000;
  *(v18 + 40) = 0xE900000000000020;
  OUTLINED_FUNCTION_0_126(v18, v93, v105, v117, v129, v141);
  if (qword_1EDD5A228 != -1)
  {
    OUTLINED_FUNCTION_14_55(&qword_1EDD5A228);
  }

  v20 = qword_1EC7E99A8;
  v19 = off_1EC7E99B0;
  v22 = *(v0 + 16);
  v21 = *(v0 + 24);

  if (v22 >= v21 >> 1)
  {
    OUTLINED_FUNCTION_51_22();
    sub_1D4F0029C();
    v0 = v81;
  }

  OUTLINED_FUNCTION_284();
  *(v23 + 32) = v20;
  *(v23 + 40) = v19;
  OUTLINED_FUNCTION_0_126(v23, v94, v106, v118, v130, v142);
  v24 = *(v0 + 24);
  if ((v22 + 2) > (v24 >> 1))
  {
    OUTLINED_FUNCTION_16_56(v24);
    sub_1D4F0029C();
    v0 = v82;
  }

  OUTLINED_FUNCTION_303();
  OUTLINED_FUNCTION_64_16();
  OUTLINED_FUNCTION_149_3(v25);
  OUTLINED_FUNCTION_0_126(v26, v95, v107, v119, v131, v143);
  v28 = qword_1EC7E99A8;
  v27 = off_1EC7E99B0;
  v29 = *(v0 + 24);
  OUTLINED_FUNCTION_319();
  if ((v22 + 1) > (v29 >> 1))
  {
    OUTLINED_FUNCTION_34_35();
    sub_1D4F0029C();
    v0 = v83;
  }

  OUTLINED_FUNCTION_61_3();
  *(v30 + 32) = v28;
  *(v30 + 40) = v27;
  OUTLINED_FUNCTION_0_126(v30, v96, v108, v120, v132, v144);
  OUTLINED_FUNCTION_287();
  if (!(v15 ^ v16 | v14))
  {
    OUTLINED_FUNCTION_16_56(v31);
    sub_1D4F0029C();
    v0 = v84;
  }

  OUTLINED_FUNCTION_64_16();
  OUTLINED_FUNCTION_95_12(v32);
  OUTLINED_FUNCTION_0_126(v33, v97, v109, v121, v133, v145);
  v35 = qword_1EC7E99D0;
  v34 = off_1EC7E99D8;
  v36 = *(v0 + 24);

  if ((v22 + 5) > (v36 >> 1))
  {
    OUTLINED_FUNCTION_34_35();
    sub_1D4F0029C();
    v0 = v85;
  }

  OUTLINED_FUNCTION_61_3();
  *(v37 + 32) = v35;
  *(v37 + 40) = v34;
  OUTLINED_FUNCTION_0_126(v37, v98, v110, v122, v134, v146);
  OUTLINED_FUNCTION_286();
  if (!(v15 ^ v16 | v14))
  {
    OUTLINED_FUNCTION_16_56(v38);
    sub_1D4F0029C();
    v0 = v86;
  }

  v39 = v2[27];
  OUTLINED_FUNCTION_64_16();
  OUTLINED_FUNCTION_149_3(v40);
  OUTLINED_FUNCTION_0_126(v41, v99, v111, v123, v135, v147);
  sub_1D560C328();
  OUTLINED_FUNCTION_3_36();
  v42 = OUTLINED_FUNCTION_85_0();
  v43(v42);
  v2[15] = v39;
  v2[16] = &off_1F50B88D8;
  __swift_allocate_boxed_opaque_existential_0(v2 + 12);
  OUTLINED_FUNCTION_2_102();
  sub_1D51D2DB0();
  sub_1D4E628D4((v2 + 12), (v2 + 2));
  OUTLINED_FUNCTION_172_3();
  v44 = *(v0 + 24);
  v45 = v22 + 7;
  if ((v22 + 7) > (v44 >> 1))
  {
    OUTLINED_FUNCTION_24_43(v44);
    sub_1D4F0029C();
    v0 = v87;
  }

  v46 = v2[28];
  v47 = OUTLINED_FUNCTION_49_18();
  OUTLINED_FUNCTION_253(v47);
  __swift_destroy_boxed_opaque_existential_1(v2 + 12);
  OUTLINED_FUNCTION_6_71();
  sub_1D51D2E04(v46, v48);
  v50 = *(v0 + 16);
  v49 = *(v0 + 24);
  if (v50 >= v49 >> 1)
  {
    OUTLINED_FUNCTION_16_56(v49);
    sub_1D4F0029C();
    v0 = v88;
  }

  OUTLINED_FUNCTION_123_0();
  OUTLINED_FUNCTION_48_21(v0 + v50 * v51);
  OUTLINED_FUNCTION_0_126(v52, v100, v112, v124, v136, v148);
  v54 = aAssetAdamId[0];
  v53 = aAssetAdamId[1];
  v55 = *(v0 + 24);
  OUTLINED_FUNCTION_251();
  if (v45 > (v55 >> 1))
  {
    OUTLINED_FUNCTION_34_35();
    sub_1D4F0029C();
    v0 = v89;
  }

  OUTLINED_FUNCTION_61_3();
  *(v56 + 32) = v54;
  *(v56 + 40) = v53;
  OUTLINED_FUNCTION_0_126(v56, v101, v113, v125, v137, v149);
  v57 = *(v0 + 24);
  if ((v50 + 3) > (v57 >> 1))
  {
    OUTLINED_FUNCTION_16_56(v57);
    sub_1D4F0029C();
    v0 = v90;
  }

  OUTLINED_FUNCTION_64_16();
  OUTLINED_FUNCTION_149_3(v58);
  OUTLINED_FUNCTION_0_126(v59, v102, v114, v126, v138, v150);
  v60 = *(v0 + 24);

  if ((v50 + 4) > (v60 >> 1))
  {
    OUTLINED_FUNCTION_53_18();
    sub_1D4F0029C();
    v0 = v91;
  }

  v62 = v2[22];
  v61 = v2[23];
  *(v0 + 16) = v50 + 4;
  v63 = v0 + 80 * (v50 + 3);
  v64 = MEMORY[0x1E69E6158];
  *(v63 + 32) = v62;
  *(v63 + 40) = v61;
  *(v63 + 56) = v64;
  *(v63 + 64) = &off_1F50C0538;
  *(v63 + 88) = v127;
  *(v63 + 72) = v115;
  *(v63 + 104) = 1;
  v65 = *(v0 + 24);
  if ((v50 + 5) > (v65 >> 1))
  {
    OUTLINED_FUNCTION_16_56(v65);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_64_16();
  OUTLINED_FUNCTION_148_7(v66);
  OUTLINED_FUNCTION_0_126(v67, v103, v115, v127, v139, v151);
  OUTLINED_FUNCTION_57_1();
  sub_1D54F08F4(v68, v69, v70, v71, v72);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v2[29] = v73;
  *v73 = v74;
  v73[1] = sub_1D51BDF80;
  v75 = v2[25];
  v76 = v2[26];

  return sub_1D52EF24C((v2 + 17), v75, v76);
}

uint64_t sub_1D51BDF80()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 240) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1D51D2984(v3 + 136);

    OUTLINED_FUNCTION_22_1();

    return v10();
  }
}

uint64_t sub_1D51BE0A8()
{
  OUTLINED_FUNCTION_60();
  sub_1D51D2984(v0 + 136);

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D51BE110()
{
  OUTLINED_FUNCTION_60();
  v0[41] = v1;
  v0[42] = v2;
  v0[39] = v3;
  v0[40] = v4;
  v0[38] = v5;
  v6 = _s13PersistedDateVMa(0);
  v0[43] = v6;
  OUTLINED_FUNCTION_22(v6);
  v0[44] = OUTLINED_FUNCTION_127();
  v7 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D51BE6F4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 368) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1D51D2984(v3 + 256);

    OUTLINED_FUNCTION_22_1();

    return v10();
  }
}

uint64_t sub_1D51BE81C()
{
  OUTLINED_FUNCTION_60();
  sub_1D51D2984(v0 + 256);

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D51BE884(uint64_t a1)
{
  result = 0;
  v3 = 0;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  for (i = v5 & *(a1 + 56); i; result |= qword_1D5640A40[*(*(a1 + 48) + (v8 | (v7 << 6)))])
  {
    v7 = v3;
LABEL_9:
    v8 = __clz(__rbit64(i));
    i &= i - 1;
  }

  while (1)
  {
    v7 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v7 >= ((v4 + 63) >> 6))
    {
      return result;
    }

    i = *(a1 + 56 + 8 * v7);
    ++v3;
    if (i)
    {
      v3 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D51BE928(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v5 = *v4++;
    result |= qword_1D5640A40[v5];
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_1D51BE964()
{
  OUTLINED_FUNCTION_60();
  v0[41] = v1;
  v0[42] = v2;
  v0[39] = v3;
  v0[40] = v4;
  v0[38] = v5;
  v6 = _s13PersistedDateVMa(0);
  v0[43] = v6;
  OUTLINED_FUNCTION_22(v6);
  v0[44] = OUTLINED_FUNCTION_127();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1538, &qword_1D56408C0);
  v0[45] = v7;
  OUTLINED_FUNCTION_22(v7);
  v0[46] = OUTLINED_FUNCTION_127();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v8);
  v0[47] = OUTLINED_FUNCTION_127();
  v9 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D51BF0B0()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 392) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1D51D2984(v3 + 256);

    OUTLINED_FUNCTION_22_1();

    return v10();
  }
}

uint64_t sub_1D51BF1F8()
{
  OUTLINED_FUNCTION_80();
  sub_1D51D2984(v0 + 256);

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D51BF27C()
{
  OUTLINED_FUNCTION_60();
  v7 = OUTLINED_FUNCTION_344(v1, v2, v3, v4, v5, v6);
  v0[59] = v7;
  OUTLINED_FUNCTION_22(v7);
  v0[60] = OUTLINED_FUNCTION_167();
  v0[61] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1540, &qword_1D56408D0);
  v0[62] = v8;
  OUTLINED_FUNCTION_22(v8);
  v0[63] = OUTLINED_FUNCTION_127();
  v9 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D51BF9D8()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 520) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1D51D2984(v3 + 376);

    OUTLINED_FUNCTION_22_1();

    return v10();
  }
}

uint64_t sub_1D51BFB20()
{
  OUTLINED_FUNCTION_60();
  v7 = OUTLINED_FUNCTION_344(v1, v2, v3, v4, v5, v6);
  v0[59] = v7;
  OUTLINED_FUNCTION_22(v7);
  v0[60] = OUTLINED_FUNCTION_167();
  v0[61] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1550, &unk_1D566ADA0);
  v0[62] = v8;
  OUTLINED_FUNCTION_22(v8);
  v0[63] = OUTLINED_FUNCTION_127();
  v9 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D51C027C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 520) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1D51D2984(v3 + 376);

    OUTLINED_FUNCTION_22_1();

    return v10();
  }
}

uint64_t sub_1D51C03C4()
{
  OUTLINED_FUNCTION_80();
  sub_1D51D2984(v0 + 376);

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D51C0448()
{
  OUTLINED_FUNCTION_60();
  v2 = v1;
  v0[130] = v3;
  v0[129] = v4;
  v0[128] = v5;
  v0[127] = v6;
  v0[126] = v7;
  v8 = _s13PersistedDateVMa(0);
  v0[131] = v8;
  OUTLINED_FUNCTION_22(v8);
  v0[132] = OUTLINED_FUNCTION_127();
  memcpy(v0 + 2, v2, 0xB0uLL);
  v9 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D51C0C4C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 1072) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1D51D2984(v3 + 960);

    OUTLINED_FUNCTION_22_1();

    return v10();
  }
}

uint64_t sub_1D51C0D74()
{
  OUTLINED_FUNCTION_60();
  sub_1D51D2984(v0 + 960);

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D51C0DDC()
{
  OUTLINED_FUNCTION_60();
  *(v0 + 320) = v1;
  *(v0 + 328) = v2;
  *(v0 + 304) = v3;
  *(v0 + 312) = v4;
  *(v0 + 89) = v5;
  v6 = _s13PersistedDateVMa(0);
  *(v0 + 336) = v6;
  OUTLINED_FUNCTION_22(v6);
  *(v0 + 344) = OUTLINED_FUNCTION_127();
  v7 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D51C13A4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 360) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1D51D2984(v3 + 256);

    OUTLINED_FUNCTION_22_1();

    return v10();
  }
}

uint64_t sub_1D51C14CC()
{
  OUTLINED_FUNCTION_60();
  sub_1D51D2984(v0 + 256);

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D51C1534()
{
  OUTLINED_FUNCTION_60();
  *(v0 + 304) = v1;
  *(v0 + 312) = v2;
  *(v0 + 296) = v3;
  *(v0 + 89) = v4;
  v5 = _s13PersistedDateVMa(0);
  *(v0 + 320) = v5;
  OUTLINED_FUNCTION_22(v5);
  *(v0 + 328) = OUTLINED_FUNCTION_127();
  v6 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D51C15B8()
{
  OUTLINED_FUNCTION_76_2();
  sub_1D4F0029C();
  v7 = v6;
  OUTLINED_FUNCTION_207_1();
  OUTLINED_FUNCTION_320();
  if (v9)
  {
    OUTLINED_FUNCTION_16_56(v8);
    sub_1D4F0029C();
    v7 = v62;
  }

  OUTLINED_FUNCTION_117_7();
  OUTLINED_FUNCTION_322(v10);
  if (qword_1EDD5A228 != -1)
  {
    OUTLINED_FUNCTION_14_55(&qword_1EDD5A228);
    v0 = *(v7 + 16);
  }

  OUTLINED_FUNCTION_255();
  if (v0 >= v5 >> 1)
  {
    OUTLINED_FUNCTION_58_19();
    sub_1D4F0029C();
    v7 = v63;
  }

  *(v7 + 16) = v3;
  OUTLINED_FUNCTION_122_5();
  *(v11 + 32) = v4;
  *(v11 + 40) = v1;
  OUTLINED_FUNCTION_3_99(v11, v67, v73, v79, v84);
  OUTLINED_FUNCTION_285();
  if (!(v24 ^ v25 | v23))
  {
    OUTLINED_FUNCTION_24_43(v20);
    sub_1D4F0029C();
    v7 = v12;
  }

  *(v7 + 16) = v1;
  v26 = v7 + 80 * v3;
  *(v26 + 32) = 2112800;
  *(v26 + 40) = 0xE300000000000000;
  OUTLINED_FUNCTION_136_6(v12, v13, v14, v15, v16, v17, v18, v19, v21, v22, v68, v74, v80);
  *(v27 + 104) = 0;
  OUTLINED_FUNCTION_355(v28);
  OUTLINED_FUNCTION_172_3();
  v29 = *(v7 + 24);
  if ((v0 + 3) > (v29 >> 1))
  {
    OUTLINED_FUNCTION_16_56(v29);
    sub_1D4F0029C();
    v7 = v64;
  }

  OUTLINED_FUNCTION_64_16();
  OUTLINED_FUNCTION_140_7(v30);
  __swift_destroy_boxed_opaque_existential_1(v2 + 22);
  OUTLINED_FUNCTION_222_1();
  if (v9)
  {
    OUTLINED_FUNCTION_16_56(v31);
    sub_1D4F0029C();
    v7 = v65;
  }

  OUTLINED_FUNCTION_123_0();
  v33 = v7 + v5 * v32;
  strcpy((v33 + 32), "\nWHERE \n    ");
  *(v33 + 45) = 0;
  *(v33 + 46) = -5120;
  OUTLINED_FUNCTION_3_99(v33, v69, v75, v80, v85);
  v35 = aAddedDate[0];
  v34 = aAddedDate[1];
  v36 = *(v7 + 24);

  if ((v5 + 2) > (v36 >> 1))
  {
    OUTLINED_FUNCTION_29_36();
    sub_1D4F0029C();
    v7 = v66;
  }

  OUTLINED_FUNCTION_61_3();
  *(v37 + 32) = v35;
  *(v37 + 40) = v34;
  OUTLINED_FUNCTION_3_99(v37, v70, v76, v81, v86);
  v38 = *(v7 + 24);
  if ((v5 + 3) > (v38 >> 1))
  {
    OUTLINED_FUNCTION_16_56(v38);
    sub_1D4F0029C();
  }

  v39 = v2[40];
  OUTLINED_FUNCTION_64_16();
  OUTLINED_FUNCTION_276(v40);
  OUTLINED_FUNCTION_3_99(v41, v71, v77, v82, v87);
  sub_1D560C328();
  OUTLINED_FUNCTION_3_36();
  v42 = OUTLINED_FUNCTION_85_0();
  v43(v42);
  v2[30] = v39;
  v2[31] = &off_1F50B88D8;
  __swift_allocate_boxed_opaque_existential_0(v2 + 27);
  OUTLINED_FUNCTION_2_102();
  sub_1D51D2DB0();
  OUTLINED_FUNCTION_365();
  OUTLINED_FUNCTION_160_5();
  OUTLINED_FUNCTION_334_0();
  if (!(v24 ^ v25 | v23))
  {
    OUTLINED_FUNCTION_24_43(v44);
    sub_1D4F0029C();
  }

  v45 = v2[41];
  v46 = OUTLINED_FUNCTION_49_18();
  OUTLINED_FUNCTION_254(v46);
  __swift_destroy_boxed_opaque_existential_1(v2 + 27);
  OUTLINED_FUNCTION_6_71();
  sub_1D51D2E04(v45, v47);
  OUTLINED_FUNCTION_97_2();
  if (v9)
  {
    OUTLINED_FUNCTION_16_56(v48);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_64_16();
  OUTLINED_FUNCTION_148_7(v49);
  OUTLINED_FUNCTION_3_99(v50, v72, v78, v83, v88);
  OUTLINED_FUNCTION_57_1();
  sub_1D54F08F4(v51, v52, v53, v54, v55);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v2[42] = v56;
  *v56 = v57;
  v56[1] = sub_1D51C192C;
  v58 = OUTLINED_FUNCTION_325();

  return sub_1D52EF24C(v58, v59, v60);
}

uint64_t sub_1D51C192C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 344) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1D51D2984(v3 + 256);

    OUTLINED_FUNCTION_22_1();

    return v10();
  }
}

uint64_t sub_1D51C1A54()
{
  OUTLINED_FUNCTION_60();
  sub_1D51D2984(v0 + 256);

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D51C1ABC()
{
  OUTLINED_FUNCTION_60();
  v0[80] = v1;
  v0[79] = v2;
  v0[78] = v3;
  v4 = _s13PersistedDateVMa(0);
  v0[81] = v4;
  OUTLINED_FUNCTION_22(v4);
  v0[82] = OUTLINED_FUNCTION_127();
  v5 = _s10DescriptorVMa(0);
  v0[83] = v5;
  OUTLINED_FUNCTION_69(v5);
  v0[84] = v6;
  v0[85] = OUTLINED_FUNCTION_127();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAF50, &qword_1D561DD10);
  v0[86] = v7;
  OUTLINED_FUNCTION_69(v7);
  v0[87] = v8;
  v0[88] = OUTLINED_FUNCTION_167();
  v0[89] = swift_task_alloc();
  v9 = sub_1D560C328();
  v0[90] = v9;
  OUTLINED_FUNCTION_69(v9);
  v0[91] = v10;
  v0[92] = OUTLINED_FUNCTION_167();
  v0[93] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F15A0, &qword_1D5640960);
  OUTLINED_FUNCTION_22(v11);
  v0[94] = OUTLINED_FUNCTION_127();
  v12 = sub_1D560BB08();
  v0[95] = v12;
  OUTLINED_FUNCTION_69(v12);
  v0[96] = v13;
  v0[97] = OUTLINED_FUNCTION_127();
  v14 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1D51C1CC0()
{
  OUTLINED_FUNCTION_335();
  sub_1D4F0029C();
  OUTLINED_FUNCTION_144_3();
  if (v9)
  {
    OUTLINED_FUNCTION_16_56(v8);
    sub_1D4F0029C();
    v1 = v99;
  }

  OUTLINED_FUNCTION_64_16();
  OUTLINED_FUNCTION_282_0();
  OUTLINED_FUNCTION_175_2(v10);
  if (qword_1EDD5A228 != -1)
  {
    OUTLINED_FUNCTION_14_55(&qword_1EDD5A228);
    v0 = *(v1 + 16);
  }

  OUTLINED_FUNCTION_255();
  if (v0 >= v6 >> 1)
  {
    OUTLINED_FUNCTION_58_19();
    sub_1D4F0029C();
    v1 = v100;
  }

  *(v1 + 16) = v4;
  OUTLINED_FUNCTION_122_5();
  *(v11 + 32) = v5;
  *(v11 + 40) = v2;
  OUTLINED_FUNCTION_0_126(v11, v124, v147, v169, v191, v213);
  OUTLINED_FUNCTION_285();
  if (!(v14 ^ v15 | v13))
  {
    OUTLINED_FUNCTION_24_43(v12);
    sub_1D4F0029C();
    v1 = v101;
  }

  OUTLINED_FUNCTION_96_11();
  OUTLINED_FUNCTION_85_10(v16);
  OUTLINED_FUNCTION_0_126(v17, v125, v148, v170, v192, v214);
  OUTLINED_FUNCTION_245();

  if ((v0 + 3) > (v7 >> 1))
  {
    OUTLINED_FUNCTION_45_25();
    sub_1D4F0029C();
    v1 = v102;
  }

  OUTLINED_FUNCTION_91_12();
  *(v18 + 32) = v6;
  *(v18 + 40) = v5;
  OUTLINED_FUNCTION_0_126(v18, v126, v149, v171, v193, v215);
  v19 = *(v1 + 24);
  if ((v0 + 4) > (v19 >> 1))
  {
    OUTLINED_FUNCTION_24_43(v19);
    sub_1D4F0029C();
    v1 = v103;
  }

  OUTLINED_FUNCTION_96_11();
  OUTLINED_FUNCTION_85_10(v20);
  OUTLINED_FUNCTION_0_126(v21, v127, v150, v172, v194, v216);
  OUTLINED_FUNCTION_245();

  if ((v0 + 5) > (v7 >> 1))
  {
    OUTLINED_FUNCTION_45_25();
    sub_1D4F0029C();
    v1 = v104;
  }

  OUTLINED_FUNCTION_91_12();
  *(v22 + 32) = v6;
  *(v22 + 40) = v5;
  OUTLINED_FUNCTION_0_126(v22, v128, v151, v173, v195, v217);
  v23 = *(v1 + 24);
  if ((v0 + 6) > (v23 >> 1))
  {
    OUTLINED_FUNCTION_24_43(v23);
    sub_1D4F0029C();
    v1 = v105;
  }

  OUTLINED_FUNCTION_96_11();
  OUTLINED_FUNCTION_85_10(v24);
  OUTLINED_FUNCTION_0_126(v25, v129, v152, v174, v196, v218);
  OUTLINED_FUNCTION_245();

  if ((v0 + 7) > (v7 >> 1))
  {
    OUTLINED_FUNCTION_45_25();
    sub_1D4F0029C();
    v1 = v106;
  }

  OUTLINED_FUNCTION_91_12();
  *(v26 + 32) = v6;
  *(v26 + 40) = v5;
  OUTLINED_FUNCTION_0_126(v26, v130, v153, v175, v197, v219);
  v27 = *(v1 + 24);
  if ((v0 + 8) > (v27 >> 1))
  {
    OUTLINED_FUNCTION_24_43(v27);
    sub_1D4F0029C();
    v1 = v107;
  }

  OUTLINED_FUNCTION_96_11();
  OUTLINED_FUNCTION_85_10(v28);
  OUTLINED_FUNCTION_0_126(v29, v131, v154, v176, v198, v220);
  OUTLINED_FUNCTION_245();

  if ((v0 + 9) > (v7 >> 1))
  {
    OUTLINED_FUNCTION_45_25();
    sub_1D4F0029C();
    v1 = v108;
  }

  OUTLINED_FUNCTION_91_12();
  *(v30 + 32) = v6;
  *(v30 + 40) = v5;
  OUTLINED_FUNCTION_0_126(v30, v132, v155, v177, v199, v221);
  v31 = *(v1 + 24);
  if ((v0 + 10) > (v31 >> 1))
  {
    OUTLINED_FUNCTION_24_43(v31);
    sub_1D4F0029C();
    v1 = v109;
  }

  OUTLINED_FUNCTION_96_11();
  OUTLINED_FUNCTION_85_10(v32);
  OUTLINED_FUNCTION_0_126(v33, v133, v156, v178, v200, v222);
  OUTLINED_FUNCTION_245();

  if ((v0 + 11) > (v7 >> 1))
  {
    OUTLINED_FUNCTION_45_25();
    sub_1D4F0029C();
    v1 = v110;
  }

  OUTLINED_FUNCTION_91_12();
  *(v34 + 32) = v6;
  *(v34 + 40) = v5;
  OUTLINED_FUNCTION_0_126(v34, v134, v157, v179, v201, v223);
  v35 = *(v1 + 24);
  v36 = v0 + 12;
  if ((v0 + 12) > (v35 >> 1))
  {
    OUTLINED_FUNCTION_24_43(v35);
    sub_1D4F0029C();
    v1 = v111;
  }

  OUTLINED_FUNCTION_96_11();
  OUTLINED_FUNCTION_85_10(v37);
  OUTLINED_FUNCTION_0_126(v38, v135, v158, v180, v202, v224);
  OUTLINED_FUNCTION_245();

  if ((v0 + 13) > (v7 >> 1))
  {
    OUTLINED_FUNCTION_45_25();
    sub_1D4F0029C();
    v1 = v112;
  }

  OUTLINED_FUNCTION_91_12();
  *(v39 + 32) = v6;
  *(v39 + 40) = v5;
  OUTLINED_FUNCTION_0_126(v39, v136, v159, v181, v203, v225);
  v40 = *(v1 + 24);
  if ((v0 + 14) > (v40 >> 1))
  {
    OUTLINED_FUNCTION_16_56(v40);
    sub_1D4F0029C();
    v1 = v113;
  }

  OUTLINED_FUNCTION_117_7();
  *(v41 + 32) = 0x204D4F52460ALL;
  *(v41 + 40) = 0xE600000000000000;
  OUTLINED_FUNCTION_0_126(v41, v137, v160, v182, v204, v226);
  v42 = OUTLINED_FUNCTION_252("catalog_song");
  OUTLINED_FUNCTION_156_4(v42, v43);
  if (v5 >= v6 >> 1)
  {
    OUTLINED_FUNCTION_23_44();
    sub_1D4F0029C();
    v1 = v114;
  }

  OUTLINED_FUNCTION_123_0();
  v45 = v1 + v5 * v44;
  *(v45 + 32) = v36;
  *(v45 + 40) = v0 + 13;
  OUTLINED_FUNCTION_0_126(v45, v138, v161, v183, v205, v227);
  OUTLINED_FUNCTION_221_0();
  if (!(v14 ^ v15 | v13))
  {
    OUTLINED_FUNCTION_24_43(v46);
    sub_1D4F0029C();
  }

  v47 = *(v3 + 760);
  v48 = *(v3 + 752);
  OUTLINED_FUNCTION_61_3();
  OUTLINED_FUNCTION_148_7(v49);
  OUTLINED_FUNCTION_0_126(v50, v139, v162, v184, v206, v228);
  OUTLINED_FUNCTION_57_1();
  sub_1D54F08F4(v51, v52, v53, v54, v55);
  v56 = *(v3 + 584);
  v57 = *(v3 + 592);
  v58 = *(v3 + 600);
  v59 = *(v3 + 608);
  v60 = *(v3 + 616);
  sub_1D51D3024();
  if (__swift_getEnumTagSinglePayload(v48, 1, v47) == 1)
  {
    sub_1D4E50004(*(v3 + 752), &qword_1EC7F15A0, &qword_1D5640960);
  }

  else
  {
    (*(*(v3 + 768) + 32))(*(v3 + 776), *(v3 + 752), *(v3 + 760));
    *(v3 + 304) = xmmword_1D5640890;
    *(v3 + 320) = 0;
    *(v3 + 328) = 0;
    *(v3 + 336) = 0;
    sub_1D54F1BF4((v3 + 584), v3 + 304, v3 + 544);
    sub_1D51D2984(v3 + 584);
    sub_1D4F0029C();
    v62 = v61;
    v63 = *(v61 + 24) >> 1;
    if (v63 <= *(v61 + 16))
    {
      OUTLINED_FUNCTION_54_18();
      sub_1D4F0029C();
      v62 = v115;
      v63 = *(v115 + 24) >> 1;
    }

    OUTLINED_FUNCTION_76_11();
    OUTLINED_FUNCTION_175_2(v64);
    OUTLINED_FUNCTION_251();
    if (v63 < v36)
    {
      OUTLINED_FUNCTION_51_22();
      sub_1D4F0029C();
      v62 = v116;
    }

    OUTLINED_FUNCTION_47_27();
    OUTLINED_FUNCTION_0_126(v65, v140, v163, v185, v207, v229);
    OUTLINED_FUNCTION_135_8();
    if (!(v14 ^ v15 | v13))
    {
      OUTLINED_FUNCTION_20_51(v66);
      sub_1D4F0029C();
      v62 = v117;
    }

    OUTLINED_FUNCTION_223_1();
    v67 = *(v3 + 744);
    v68 = *(v3 + 728);
    v69 = *(v3 + 720);
    OUTLINED_FUNCTION_72_18();
    OUTLINED_FUNCTION_158_5(v70);
    OUTLINED_FUNCTION_0_126(v71, v141, v164, v186, v208, v230);
    sub_1D560BAE8();
    sub_1D560C208();
    v73 = v72;
    v74 = *(v68 + 8);
    v74(v67, v69);
    *(v3 + 248) = MEMORY[0x1E69E63B0];
    *(v3 + 256) = &off_1F50C0338;
    *(v3 + 224) = v73;
    sub_1D4E628D4(v3 + 224, v3 + 16);
    OUTLINED_FUNCTION_172_3();
    v75 = *(v62 + 16);
    OUTLINED_FUNCTION_224_1();
    if (v9)
    {
      OUTLINED_FUNCTION_22_41(v76);
      sub_1D4F0029C();
      v62 = v118;
    }

    OUTLINED_FUNCTION_63_13();
    OUTLINED_FUNCTION_140_7(v77);
    __swift_destroy_boxed_opaque_existential_1((v3 + 224));
    OUTLINED_FUNCTION_84_10();
    if (v9)
    {
      OUTLINED_FUNCTION_22_41(v78);
      sub_1D4F0029C();
      v62 = v119;
    }

    OUTLINED_FUNCTION_76_11();
    *(v79 + 32) = 0xA444E410ALL;
    *(v79 + 40) = 0xE500000000000000;
    OUTLINED_FUNCTION_0_126(v79, v142, v165, v187, v209, v231);
    OUTLINED_FUNCTION_159_6();
    if (v75 > (v63 >> 1))
    {
      OUTLINED_FUNCTION_29_36();
      sub_1D4F0029C();
      v62 = v120;
    }

    OUTLINED_FUNCTION_56_20();
    OUTLINED_FUNCTION_0_126(v80, v143, v166, v188, v210, v232);
    OUTLINED_FUNCTION_135_8();
    if (!(v14 ^ v15 | v13))
    {
      OUTLINED_FUNCTION_20_51(v81);
      sub_1D4F0029C();
      v62 = v121;
    }

    OUTLINED_FUNCTION_68_12();
    OUTLINED_FUNCTION_0_126(v82, v144, v167, v189, v211, v233);
    sub_1D560BAC8();
    sub_1D560C208();
    v83 = OUTLINED_FUNCTION_169_1();
    (v74)(v83);
    *(v3 + 288) = MEMORY[0x1E69E63B0];
    *(v3 + 296) = &off_1F50C0338;
    *(v3 + 264) = v73;
    sub_1D4E628D4(v3 + 264, v3 + 96);
    OUTLINED_FUNCTION_160_5();
    OUTLINED_FUNCTION_224_1();
    if (v9)
    {
      OUTLINED_FUNCTION_22_41(v84);
      sub_1D4F0029C();
      v62 = v122;
    }

    OUTLINED_FUNCTION_63_13();
    OUTLINED_FUNCTION_141_3(v85);
    __swift_destroy_boxed_opaque_existential_1((v3 + 264));
    v87 = *(v62 + 16);
    v86 = *(v62 + 24);
    if (v87 >= v86 >> 1)
    {
      OUTLINED_FUNCTION_22_41(v86);
      sub_1D4F0029C();
      v62 = v123;
    }

    v88 = *(v3 + 776);
    v89 = *(v3 + 768);
    v90 = *(v3 + 760);
    OUTLINED_FUNCTION_119_8();
    OUTLINED_FUNCTION_148_7(v62 + v87 * v91);
    OUTLINED_FUNCTION_0_126(v92, v145, v168, v190, v212, v234);
    OUTLINED_FUNCTION_150_7(MEMORY[0x1E69E7CC0], v3 + 504);
    sub_1D54F1BF4((v3 + 544), v3 + 504, v3 + 464);
    v56 = *(v3 + 464);
    v57 = *(v3 + 472);
    v58 = *(v3 + 480);
    v59 = *(v3 + 488);
    v60 = *(v3 + 496);
    sub_1D51D2984(v3 + 504);
    sub_1D51D2984(v3 + 544);
    (*(v89 + 8))(v88, v90);
  }

  *(v3 + 89) = v60;
  *(v3 + 808) = v59;
  *(v3 + 800) = v58;
  *(v3 + 792) = v57;
  *(v3 + 784) = v56;
  *(v3 + 344) = v56;
  *(v3 + 352) = v57;
  *(v3 + 360) = v58;
  *(v3 + 368) = v59;
  *(v3 + 376) = v60;
  OUTLINED_FUNCTION_27_0(&unk_1D564E0E0);
  v146 = v93;
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v3 + 816) = v94;
  *v94 = v95;
  v94[1] = sub_1D51C256C;
  v96 = *(v3 + 640);
  v97 = *(v3 + 632);

  return v146(v3 + 176, v3 + 344, v97, v96);
}

uint64_t sub_1D51C256C()
{
  OUTLINED_FUNCTION_161_0();
  v14 = v2;
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_59_1();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;

  if (v0)
  {
    OUTLINED_FUNCTION_312();

    OUTLINED_FUNCTION_71_0();
    OUTLINED_FUNCTION_134();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_312();
  OUTLINED_FUNCTION_27_0(&unk_1D5640908);
  v13 = v10;
  v11 = swift_task_alloc();
  *(v4 + 824) = v11;
  *v11 = v6;
  v11[1] = sub_1D51C2734;

  return v13();
}

uint64_t sub_1D51C2734()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 832) = v4;
  *(v2 + 840) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D51C2838()
{
  v1 = *(v0 + 832);

  *(v0 + 424) = *(v0 + 184);
  *(v0 + 440) = *(v0 + 200);
  *(v0 + 456) = *(v0 + 216);
  result = sub_1D51D2984(v0 + 424);
  v28 = *(v1 + 16);
  v29 = v1;
  if (v28)
  {
    v3 = 0;
    v26 = *(v0 + 712);
    v24 = *(v0 + 680);
    v25 = *(v0 + 688);
    v23 = *(v0 + 664);
    v22 = v25[16];
    v21 = v25[20];
    v20 = v25[24];
    v4 = MEMORY[0x1E69E7CC0];
    v27 = v0;
    while (v3 < *(v29 + 16))
    {
      v5 = *(v0 + 712);
      v6 = *(v0 + 704);
      v7 = *(v0 + 680);
      v31 = *(v0 + 648);
      v32 = v3;
      sub_1D51D3024();
      *v6 = *v5;
      sub_1D51D2DB0();
      v8 = v25[16];
      *(v6 + v8) = *(v26 + v22);
      v9 = v25[20];
      *(v6 + v9) = *(v26 + v21);
      v10 = v25[24];
      *(v6 + v10) = *(v26 + v20);
      sub_1D51D2DB0();
      sub_1D51D2DB0();
      sub_1D4E50004(v5, &qword_1EC7EAF50, &qword_1D561DD10);
      LOBYTE(v8) = *(v6 + v8);
      v11 = *(v6 + v9);
      v30 = *(v6 + v10);
      sub_1D51D2DB0();
      sub_1D51D2DB0();
      sub_1D51D2DB0();
      *v7 = sub_1D560EF08();
      *(v24 + 8) = v12;
      *(v7 + v23[6]) = v8;
      *(v7 + v23[7]) = v11;
      *(v7 + v23[8]) = v30;
      v13 = v23[10];
      OUTLINED_FUNCTION_186_3();
      sub_1D51D2FD0();
      __swift_storeEnumTagSinglePayload(v7 + v13, 0, 1, v31);
      sub_1D4E50004(v6, &qword_1EC7EAF50, &qword_1D561DD10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D4F02094();
        v4 = v16;
      }

      v15 = *(v4 + 16);
      v14 = *(v4 + 24);
      v0 = v27;
      if (v15 >= v14 >> 1)
      {
        OUTLINED_FUNCTION_20_51(v14);
        sub_1D4F02094();
        v4 = v17;
      }

      v3 = v32 + 1;
      *(v4 + 16) = v15 + 1;
      result = OUTLINED_FUNCTION_65_20();
      if (v28 == v32 + 1)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:

    v18 = OUTLINED_FUNCTION_51_15();

    return v19(v18);
  }

  return result;
}

uint64_t sub_1D51C2C50()
{
  OUTLINED_FUNCTION_160();

  v1 = *(v0 + 200);
  *(v0 + 384) = *(v0 + 184);
  *(v0 + 400) = v1;
  *(v0 + 416) = *(v0 + 216);
  sub_1D51D2984(v0 + 384);

  OUTLINED_FUNCTION_55();

  return v2();
}

uint64_t sub_1D51C2D3C()
{
  OUTLINED_FUNCTION_60();
  *(v0 + 1376) = v1;
  *(v0 + 1368) = v2;
  *(v0 + 1360) = v3;
  *(v0 + 1352) = v4;
  *(v0 + 1344) = v5;
  *(v0 + 89) = v6;
  v7 = _s13PersistedDateVMa(0);
  *(v0 + 1384) = v7;
  OUTLINED_FUNCTION_22(v7);
  *(v0 + 1392) = OUTLINED_FUNCTION_127();
  v8 = _s10DescriptorVMa(0);
  *(v0 + 1400) = v8;
  OUTLINED_FUNCTION_69(v8);
  *(v0 + 1408) = v9;
  *(v0 + 1416) = OUTLINED_FUNCTION_127();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAF50, &qword_1D561DD10);
  *(v0 + 1424) = v10;
  OUTLINED_FUNCTION_69(v10);
  *(v0 + 1432) = v11;
  *(v0 + 1440) = OUTLINED_FUNCTION_167();
  *(v0 + 1448) = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1D51C41DC()
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;

  if (v0)
  {
    OUTLINED_FUNCTION_314();

    OUTLINED_FUNCTION_71_0();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_314();
    OUTLINED_FUNCTION_27_0(&unk_1D5640908);
    v11 = v9;
    v10 = swift_task_alloc();
    *(v3 + 1496) = v10;
    *v10 = v5;
    v10[1] = sub_1D51C4374;

    return v11();
  }
}

uint64_t sub_1D51C4374()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 1504) = v4;
  *(v2 + 1512) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D51C4478()
{
  v1 = *(v0 + 1504);

  v2 = *(v0 + 760);
  *(v0 + 1224) = *(v0 + 744);
  *(v0 + 1240) = v2;
  *(v0 + 1256) = *(v0 + 776);
  sub_1D51D2984(v0 + 1224);
  v3 = *(v1 + 16);
  if (v3)
  {
    v31 = *(v0 + 1448);
    v4 = *(v0 + 1432);
    v29 = *(v0 + 1416);
    v30 = *(v0 + 1424);
    v28 = *(v0 + 1400);
    v27 = v30[16];
    v26 = v30[20];
    v25 = v30[24];
    v5 = *(v0 + 1504) + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v24 = *(v4 + 72);
    v6 = MEMORY[0x1E69E7CC0];
    v32 = v0;
    do
    {
      v35 = v6;
      v36 = v3;
      v7 = *(v0 + 1448);
      v8 = *(v0 + 1440);
      v9 = *(v0 + 1416);
      v33 = *(v0 + 1384);
      v34 = v5;
      sub_1D51D3024();
      *v8 = *v7;
      sub_1D51D2DB0();
      v10 = v30[16];
      *(v8 + v10) = *(v31 + v27);
      v11 = v30[20];
      *(v8 + v11) = *(v31 + v26);
      v12 = v30[24];
      *(v8 + v12) = *(v31 + v25);
      sub_1D51D2DB0();
      sub_1D51D2DB0();
      sub_1D4E50004(v7, &qword_1EC7EAF50, &qword_1D561DD10);
      LOBYTE(v10) = *(v8 + v10);
      v13 = *(v8 + v11);
      v14 = *(v8 + v12);
      sub_1D51D2DB0();
      sub_1D51D2DB0();
      sub_1D51D2DB0();
      *v9 = sub_1D560EF08();
      *(v29 + 8) = v15;
      *(v9 + v28[6]) = v10;
      *(v9 + v28[7]) = v13;
      *(v9 + v28[8]) = v14;
      v16 = v28[10];
      OUTLINED_FUNCTION_186_3();
      sub_1D51D2FD0();
      v17 = v9 + v16;
      v6 = v35;
      __swift_storeEnumTagSinglePayload(v17, 0, 1, v33);
      sub_1D4E50004(v8, &qword_1EC7EAF50, &qword_1D561DD10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_100_8();
        sub_1D4F02094();
        v6 = v19;
      }

      v18 = *(v6 + 16);
      v0 = v32;
      if (v18 >= *(v6 + 24) >> 1)
      {
        OUTLINED_FUNCTION_79_9();
        sub_1D4F02094();
        v6 = v20;
      }

      *(v6 + 16) = v18 + 1;
      OUTLINED_FUNCTION_220_1();
      OUTLINED_FUNCTION_65_20();
      v5 = v34 + v24;
      v3 = v36 - 1;
    }

    while (v36 != 1);
  }

  OUTLINED_FUNCTION_348();

  v21 = OUTLINED_FUNCTION_51_15();

  return v22(v21);
}

uint64_t sub_1D51C4804()
{
  OUTLINED_FUNCTION_80();

  v1 = *(v0 + 760);
  *(v0 + 1264) = *(v0 + 744);
  *(v0 + 1280) = v1;
  *(v0 + 1296) = *(v0 + 776);
  sub_1D51D2984(v0 + 1264);
  OUTLINED_FUNCTION_348();

  OUTLINED_FUNCTION_55();

  return v2();
}

uint64_t sub_1D51C48A4(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1D51C48B8()
{
  OUTLINED_FUNCTION_76_2();
  sub_1D4F0029C();
  v6 = v5;
  OUTLINED_FUNCTION_207_1();
  OUTLINED_FUNCTION_320();
  if (v8)
  {
    OUTLINED_FUNCTION_16_56(v7);
    sub_1D4F0029C();
    v6 = v30;
  }

  OUTLINED_FUNCTION_117_7();
  OUTLINED_FUNCTION_322(v9);
  v10 = OUTLINED_FUNCTION_252("catalog_song");
  OUTLINED_FUNCTION_156_4(v10, v11);
  if (v3 >= v4 >> 1)
  {
    OUTLINED_FUNCTION_23_44();
    sub_1D4F0029C();
    v6 = v31;
  }

  OUTLINED_FUNCTION_123_0();
  v13 = v6 + v3 * v12;
  *(v13 + 32) = v0;
  *(v13 + 40) = v2;
  OUTLINED_FUNCTION_0_126(v13, v32, v35, v37, v39, v41);
  OUTLINED_FUNCTION_221_0();
  if (!(v16 ^ v17 | v15))
  {
    OUTLINED_FUNCTION_24_43(v14);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_61_3();
  OUTLINED_FUNCTION_148_7(v18);
  OUTLINED_FUNCTION_0_126(v19, v33, v36, v38, v40, v42);
  OUTLINED_FUNCTION_57_1();
  sub_1D54F08F4(v20, v21, v22, v23, v24);
  OUTLINED_FUNCTION_27_0(&unk_1D564E118);
  v34 = v25;
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v1 + 72) = v26;
  *v26 = v27;
  v26[1] = sub_1D51C4A3C;
  v28 = OUTLINED_FUNCTION_324();

  return v34(v28);
}

uint64_t sub_1D51C4A3C()
{
  OUTLINED_FUNCTION_91();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_59_1();
  v7 = v6;
  OUTLINED_FUNCTION_44();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v10 = v9;

  if (v0)
  {
    sub_1D51D2984(v7 + 16);
    OUTLINED_FUNCTION_153_1();

    __asm { BRAA            X1, X16 }
  }

  *(v7 + 80) = v5;
  *(v7 + 49) = v3;
  sub_1D51D2984(v7 + 16);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1D51C4B88()
{
  if (*(v0 + 49))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(v0 + 80);
  }

  return (*(v0 + 8))(v1);
}

uint64_t sub_1D51C4BB0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 680) = a5;
  *(v5 + 672) = a4;
  *(v5 + 664) = a3;
  *(v5 + 656) = a2;
  *(v5 + 89) = a1;
  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1D51C5298()
{
  OUTLINED_FUNCTION_80();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_59_1();
  v7 = v6;
  OUTLINED_FUNCTION_44();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v10 = v9;

  if (v0)
  {
    v11 = OUTLINED_FUNCTION_299();
    sub_1D51D29D8(v11, v12, v13, v14, v15);
    OUTLINED_FUNCTION_55();

    return v16();
  }

  else
  {
    v18 = OUTLINED_FUNCTION_299();
    *(v7 + 728) = v5;
    *(v7 + 91) = v3;
    sub_1D51D29D8(v18, v19, v20, v21, v22);
    v23 = OUTLINED_FUNCTION_12_1();

    return MEMORY[0x1EEE6DFA0](v23, v24, v25);
  }
}

uint64_t sub_1D51C5404()
{
  OUTLINED_FUNCTION_60();
  v0[29] = v1;
  v0[30] = v2;
  v3 = type metadata accessor for MusicDownloadedSongCatalogProperties(0);
  OUTLINED_FUNCTION_69(v3);
  v0[31] = v4;
  v0[32] = OUTLINED_FUNCTION_127();
  v5 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D51C54A4()
{
  OUTLINED_FUNCTION_234_0();
  sub_1D4F0029C();
  OUTLINED_FUNCTION_144_3();
  if (v10)
  {
    OUTLINED_FUNCTION_16_56(v9);
    sub_1D4F0029C();
    v1 = v59;
  }

  OUTLINED_FUNCTION_64_16();
  OUTLINED_FUNCTION_282_0();
  OUTLINED_FUNCTION_175_2(v11);
  if (qword_1EDD5A228 != -1)
  {
    OUTLINED_FUNCTION_14_55(&qword_1EDD5A228);
    v0 = *(v1 + 16);
  }

  OUTLINED_FUNCTION_255();
  if (v0 >= v6 >> 1)
  {
    OUTLINED_FUNCTION_58_19();
    sub_1D4F0029C();
    v1 = v60;
  }

  *(v1 + 16) = v4;
  OUTLINED_FUNCTION_122_5();
  *(v12 + 32) = v5;
  *(v12 + 40) = v2;
  OUTLINED_FUNCTION_0_126(v12, v75, v91, v107, v123, v139);
  OUTLINED_FUNCTION_285();
  if (!(v15 ^ v16 | v14))
  {
    OUTLINED_FUNCTION_24_43(v13);
    sub_1D4F0029C();
    v1 = v61;
  }

  OUTLINED_FUNCTION_96_11();
  OUTLINED_FUNCTION_206_1(v17);
  OUTLINED_FUNCTION_0_126(v18, v76, v92, v108, v124, v140);
  OUTLINED_FUNCTION_309();

  if ((v0 + 3) > (v8 >> 1))
  {
    OUTLINED_FUNCTION_37_25();
    sub_1D4F0029C();
    v1 = v62;
  }

  OUTLINED_FUNCTION_91_12();
  *(v19 + 32) = v7;
  *(v19 + 40) = v5;
  OUTLINED_FUNCTION_0_126(v19, v77, v93, v109, v125, v141);
  v20 = *(v1 + 24);
  if ((v0 + 4) > (v20 >> 1))
  {
    OUTLINED_FUNCTION_24_43(v20);
    sub_1D4F0029C();
    v1 = v63;
  }

  OUTLINED_FUNCTION_96_11();
  OUTLINED_FUNCTION_206_1(v21);
  OUTLINED_FUNCTION_0_126(v22, v78, v94, v110, v126, v142);
  OUTLINED_FUNCTION_309();

  if ((v0 + 5) > (v8 >> 1))
  {
    OUTLINED_FUNCTION_37_25();
    sub_1D4F0029C();
    v1 = v64;
  }

  OUTLINED_FUNCTION_91_12();
  *(v23 + 32) = v7;
  *(v23 + 40) = v5;
  OUTLINED_FUNCTION_0_126(v23, v79, v95, v111, v127, v143);
  v24 = *(v1 + 24);
  if ((v0 + 6) > (v24 >> 1))
  {
    OUTLINED_FUNCTION_24_43(v24);
    sub_1D4F0029C();
    v1 = v65;
  }

  OUTLINED_FUNCTION_96_11();
  OUTLINED_FUNCTION_206_1(v25);
  OUTLINED_FUNCTION_0_126(v26, v80, v96, v112, v128, v144);
  OUTLINED_FUNCTION_309();

  if ((v0 + 7) > (v8 >> 1))
  {
    OUTLINED_FUNCTION_37_25();
    sub_1D4F0029C();
    v1 = v66;
  }

  OUTLINED_FUNCTION_91_12();
  *(v27 + 32) = v7;
  *(v27 + 40) = v5;
  OUTLINED_FUNCTION_0_126(v27, v81, v97, v113, v129, v145);
  v28 = *(v1 + 24);
  if ((v0 + 8) > (v28 >> 1))
  {
    OUTLINED_FUNCTION_24_43(v28);
    sub_1D4F0029C();
    v1 = v67;
  }

  OUTLINED_FUNCTION_96_11();
  OUTLINED_FUNCTION_206_1(v29);
  OUTLINED_FUNCTION_0_126(v30, v82, v98, v114, v130, v146);
  OUTLINED_FUNCTION_309();

  if ((v0 + 9) > (v8 >> 1))
  {
    OUTLINED_FUNCTION_37_25();
    sub_1D4F0029C();
    v1 = v68;
  }

  OUTLINED_FUNCTION_91_12();
  *(v31 + 32) = v7;
  *(v31 + 40) = v5;
  OUTLINED_FUNCTION_0_126(v31, v83, v99, v115, v131, v147);
  v32 = *(v1 + 24);
  if ((v0 + 10) > (v32 >> 1))
  {
    OUTLINED_FUNCTION_24_43(v32);
    sub_1D4F0029C();
    v1 = v69;
  }

  OUTLINED_FUNCTION_96_11();
  OUTLINED_FUNCTION_206_1(v33);
  OUTLINED_FUNCTION_0_126(v34, v84, v100, v116, v132, v148);
  OUTLINED_FUNCTION_309();

  if ((v0 + 11) > (v8 >> 1))
  {
    OUTLINED_FUNCTION_37_25();
    sub_1D4F0029C();
    v1 = v70;
  }

  OUTLINED_FUNCTION_91_12();
  *(v35 + 32) = v7;
  *(v35 + 40) = v5;
  OUTLINED_FUNCTION_0_126(v35, v85, v101, v117, v133, v149);
  v36 = *(v1 + 24);
  if ((v0 + 12) > (v36 >> 1))
  {
    OUTLINED_FUNCTION_24_43(v36);
    sub_1D4F0029C();
    v1 = v71;
  }

  OUTLINED_FUNCTION_96_11();
  OUTLINED_FUNCTION_206_1(v37);
  OUTLINED_FUNCTION_0_126(v38, v86, v102, v118, v134, v150);
  OUTLINED_FUNCTION_245();

  if ((v0 + 13) > (v7 >> 1))
  {
    OUTLINED_FUNCTION_45_25();
    sub_1D4F0029C();
    v1 = v72;
  }

  OUTLINED_FUNCTION_91_12();
  *(v39 + 32) = 0x202020200A2CLL;
  *(v39 + 40) = v5;
  OUTLINED_FUNCTION_0_126(v39, v87, v103, v119, v135, v151);
  v40 = *(v1 + 24);
  if ((v0 + 14) > (v40 >> 1))
  {
    OUTLINED_FUNCTION_16_56(v40);
    sub_1D4F0029C();
    v1 = v73;
  }

  OUTLINED_FUNCTION_117_7();
  *(v41 + 32) = 0x204D4F52460ALL;
  *(v41 + 40) = 0xE600000000000000;
  OUTLINED_FUNCTION_0_126(v41, v88, v104, v120, v136, v152);
  v42 = OUTLINED_FUNCTION_252("catalog_song");
  OUTLINED_FUNCTION_156_4(v42, v43);
  if (v5 >= 0x101010100516)
  {
    OUTLINED_FUNCTION_23_44();
    sub_1D4F0029C();
    v1 = v74;
  }

  OUTLINED_FUNCTION_123_0();
  v45 = v1 + v5 * v44;
  *(v45 + 32) = v0 + 12;
  *(v45 + 40) = v0 + 13;
  OUTLINED_FUNCTION_0_126(v45, v89, v105, v121, v137, v153);
  OUTLINED_FUNCTION_221_0();
  if (!(v15 ^ v16 | v14))
  {
    OUTLINED_FUNCTION_24_43(v46);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_61_3();
  OUTLINED_FUNCTION_148_7(v47);
  OUTLINED_FUNCTION_0_126(v48, v90, v106, v122, v138, v154);
  OUTLINED_FUNCTION_57_1();
  sub_1D54F08F4(v49, v50, v51, v52, v53);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v3[33] = v54;
  *v54 = v55;
  v54[1] = sub_1D51C5968;
  v56 = v3[29];
  v57 = v3[30];

  return sub_1D52EF728((v3 + 8), (v3 + 19), v56, v57);
}

uint64_t sub_1D51C5968()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;

  if (v0)
  {
    sub_1D51D2984(v3 + 152);

    OUTLINED_FUNCTION_71_0();

    return v7();
  }

  else
  {
    *(v3 + 272) = *(v3 + 64);
    v9 = *(v3 + 72);
    v10 = *(v3 + 88);
    *(v3 + 144) = *(v3 + 104);
    *(v3 + 112) = v9;
    *(v3 + 128) = v10;
    OUTLINED_FUNCTION_27_0(&unk_1D566D128);
    v13 = v11;
    v12 = swift_task_alloc();
    *(v3 + 280) = v12;
    *v12 = v5;
    v12[1] = sub_1D51C5B08;

    return v13(v3 + 112, &unk_1D566D190, 0);
  }
}

uint64_t sub_1D51C5B08()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  *v4 = v5;
  v3[36] = v6;
  v3[37] = v0;

  if (v0)
  {
    sub_1D51D2984((v3 + 19));
    v7 = OUTLINED_FUNCTION_12_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_27_0(&unk_1D56409B8);
    v13 = v10;
    v11 = swift_task_alloc();
    v3[38] = v11;
    *v11 = v5;
    v11[1] = sub_1D51C5C78;

    return v13();
  }
}

uint64_t sub_1D51C5C78()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 312) = v5;
  *(v3 + 320) = v0;

  if (v0)
  {
    sub_1D51D2984(v3 + 152);
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D51C5D8C()
{
  OUTLINED_FUNCTION_60();

  sub_1D51D2984(v0 + 112);

  OUTLINED_FUNCTION_55();

  return v1();
}

void sub_1D51C5DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_100();
  v15 = 0;
  v17 = *(v14 + 312);
  v16 = *(v14 + 320);
  v18 = *(v17 + 16);
  v43 = v17 + 32;
  v19 = MEMORY[0x1E69E7CC0];
  while (v18 != v15)
  {
    if (v15 >= *(v17 + 16))
    {
      __break(1u);
      return;
    }

    v20 = *(v14 + 288);
    v21 = *(v14 + 256);
    v22 = *(v43 + 8 * v15);

    sub_1D51D2F74(v14 + 152, v14 + 192);
    sub_1D51CE098(v20, v22, (v14 + 152), v14 + 16);
    sub_1D51C6050((v14 + 16), v21);
    if (v16)
    {

      sub_1D51D2984(v14 + 112);

      sub_1D51D2984(v14 + 152);

      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_89();

      v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, v43, a11, a12, a13, a14);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_100_8();
      sub_1D4F00EDC();
      v19 = v25;
    }

    OUTLINED_FUNCTION_97_2();
    if (v24)
    {
      OUTLINED_FUNCTION_16_56(v23);
      sub_1D4F00EDC();
      v19 = v26;
    }

    *(v19 + 16) = v20;
    OUTLINED_FUNCTION_220_1();
    OUTLINED_FUNCTION_205_2();
    v16 = 0;
    ++v15;
  }

  sub_1D51D2984(v14 + 152);

  sub_1D51D2984(v14 + 112);

  OUTLINED_FUNCTION_51_15();
  OUTLINED_FUNCTION_89();

  v29(v27, v28, v29, v30, v31, v32, v33, v34, a9, v43, a11, a12, a13, a14);
}

uint64_t sub_1D51C5FE4()
{
  OUTLINED_FUNCTION_60();

  sub_1D51D2984(v0 + 112);

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D51C6050@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v121 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v130 = v114 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1558, &unk_1D5649E60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v129 = v114 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDEE0, &qword_1D5628A60);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v126 = v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v128 = v114 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v131 = v114 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1548, &unk_1D5649E50);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v138 = v114 - v14;
  v135 = sub_1D560C328();
  v133 = *(v135 - 8);
  v15 = MEMORY[0x1EEE9AC00](v135);
  v122 = v114 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v124 = v114 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v127 = v114 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v139 = v114 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v132 = v114 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB470, &qword_1D561F3D0);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v134 = v114 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v137 = v114 - v27;
  v136 = _s13PersistedDateVMa(0);
  v28 = MEMORY[0x1EEE9AC00](v136);
  v123 = v114 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v125 = v114 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = v114 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32);
  v37 = v114 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v39 = v114 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDEE8, &qword_1D5628A68);
  v41 = MEMORY[0x1EEE9AC00](v40 - 8);
  v43 = v114 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1EEE9AC00](v41);
  v46 = v114 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v48 = v114 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F15D0, &qword_1D56409C0);
  inited = swift_initStaticObject();
  v51 = v140;
  v52 = sub_1D51CBC70(inited);
  v140 = v51;
  if (v51)
  {
    v151 = *a1;
    sub_1D4E50004(&v151, &qword_1EC7F15D8, &qword_1D56409C8);
    v53 = *(a1 + 3);
    v149[0] = *(a1 + 1);
    v149[1] = v53;
    v150 = *(a1 + 40);
    return sub_1D51D2984(v149);
  }

  else
  {
    v119 = v48;
    v120 = a1;
    v55 = v137;
    v116 = v52;
    v117 = v46;
    v118 = v37;
    v114[0] = v49;
    v114[1] = v43;
    v115 = v34;
    if (qword_1EDD5A228 != -1)
    {
      swift_once();
    }

    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F15E0, &qword_1D56409D0);
    v57 = swift_initStaticObject();
    v58 = v55;
    v59 = v55;
    v60 = v120;
    v61 = v140;
    sub_1D51CC0D0(v57, v59);
    v63 = v138;
    v62 = v139;
    if (v61)
    {
      v148 = *v60;
      sub_1D4E50004(&v148, &qword_1EC7F15D8, &qword_1D56409C8);
      v64 = *(v60 + 3);
      v146[0] = *(v60 + 1);
      v146[1] = v64;
      v147 = *(v60 + 40);
      return sub_1D51D2984(v146);
    }

    else
    {
      if (__swift_getEnumTagSinglePayload(v58, 1, v136) == 1)
      {
        sub_1D4E50004(v58, &qword_1EC7EB470, &qword_1D561F3D0);
        v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDF00, &unk_1D5628A80);
        __swift_storeEnumTagSinglePayload(v119, 1, 1, v65);
      }

      else
      {
        sub_1D51D2FD0();
        v66 = v133;
        v67 = v39;
        v68 = v132;
        v69 = v135;
        (*(v133 + 16))(v132, v67, v135);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1620, &qword_1D5640A10);
        v70 = swift_initStaticObject();
        sub_1D51CC988(v70, v63);
        sub_1D51D2E04(v67, _s13PersistedDateVMa);
        v71 = *(v66 + 32);
        v72 = v117;
        v71(v117, v68, v69);
        v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDF00, &unk_1D5628A80);
        sub_1D51D3078();
        __swift_storeEnumTagSinglePayload(v72, 0, 1, v73);
        sub_1D51D3078();
        v62 = v139;
      }

      v74 = swift_initStaticObject();
      v75 = v134;
      sub_1D51CC0D0(v74, v134);
      if (__swift_getEnumTagSinglePayload(v75, 1, v136) == 1)
      {
        v140 = v56;
        sub_1D4E50004(v75, &qword_1EC7EB470, &qword_1D561F3D0);
        v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDEF8, &qword_1D5628A78);
        __swift_storeEnumTagSinglePayload(v131, 1, 1, v76);
      }

      else
      {
        v77 = v118;
        sub_1D51D2FD0();
        v78 = v133;
        (*(v133 + 16))(v62, v77, v135);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1618, &qword_1D5640A08);
        v79 = swift_initStaticObject();
        sub_1D51CCF0C(v79, v129);
        v140 = v56;
        sub_1D51D2E04(v118, _s13PersistedDateVMa);
        v80 = v128;
        (*(v78 + 32))(v128, v139, v135);
        v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDEF8, &qword_1D5628A78);
        sub_1D51D3078();
        __swift_storeEnumTagSinglePayload(v80, 0, 1, v81);
        sub_1D51D3078();
      }

      v82 = sub_1D560EF08();
      v84 = v83;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F15E8, &qword_1D56409D8);
      v85 = swift_initStaticObject();
      sub_1D51CD490(v85, v130);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F15F0, &qword_1D56409E0);
      v86 = swift_initStaticObject();
      v87 = sub_1D51CC6D4(v86);
      v89 = v88;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F15F8, &qword_1D56409E8);
      v90 = swift_initStaticObject();
      sub_1D51CDA14(v90, v142);
      v139 = v87;
      memcpy(v141, v142, sizeof(v141));
      v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1600, &qword_1D56409F0);
      v92 = swift_initStaticObject();
      v93 = sub_1D51CC3F0(v92);
      v137 = v82;
      v138 = v91;
      if (v93 == 2)
      {
        v94 = 2;
      }

      else
      {
        v94 = v93 & 1;
      }

      v95 = swift_initStaticObject();
      v96 = v115;
      sub_1D51CBD94(v95);
      LODWORD(v134) = v94;
      v136 = *(v133 + 32);
      v136(v127, v96, v135);
      sub_1D51D3024();
      sub_1D51D3024();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1610, &qword_1D5640A00);
      v97 = swift_initStaticObject();
      v98 = sub_1D51CC6D4(v97);
      if (v99)
      {
        v100 = 0;
      }

      else
      {
        v100 = v98;
      }

      v132 = v100;
      v101 = swift_initStaticObject();
      v129 = sub_1D51CBC70(v101);
      v102 = swift_initStaticObject();
      sub_1D51CBD94(v102);
      v136(v124, v125, v135);
      v103 = swift_initStaticObject();
      sub_1D51CBD94(v103);
      v136(v122, v123, v135);
      v104 = swift_initStaticObject();
      v105 = sub_1D51CBFC0(v104);
      v140 = 0;
      v106 = v105;
      v107 = v120;
      v145[0] = *v120;
      sub_1D4E50004(v145, &qword_1EC7F15D8, &qword_1D56409C8);
      v108 = *(v107 + 3);
      v143[0] = *(v107 + 1);
      v143[1] = v108;
      v144 = *(v107 + 40);
      sub_1D51D2984(v143);
      sub_1D4E50004(v131, &qword_1EC7EDEE0, &qword_1D5628A60);
      sub_1D4E50004(v119, &qword_1EC7EDEE8, &qword_1D5628A68);
      v109 = v121;
      *v121 = v137;
      v109[1] = v84;
      v110 = type metadata accessor for MusicDownloadedSongCatalogProperties(0);
      sub_1D51D3078();
      v111 = v109 + v110[6];
      *v111 = v139;
      v111[8] = v89 & 1;
      memcpy(v109 + v110[7], v141, 0xB0uLL);
      *(v109 + v110[8]) = v134;
      v113 = v135;
      v112 = v136;
      v136(v109 + v110[9], v127, v135);
      sub_1D51D3078();
      sub_1D51D3078();
      *(v109 + v110[12]) = v132;
      *(v109 + v110[13]) = v129;
      v112(v109 + v110[14], v124, v113);
      result = (v112)(v109 + v110[15], v122, v113);
      *(v109 + v110[16]) = v106 & 1;
    }
  }

  return result;
}

uint64_t sub_1D51C75A0(_BYTE *a1)
{
  switch(*a1)
  {
    case 1:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1620, &qword_1D5640A10);
      break;
    case 2:
    case 5:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F15E0, &qword_1D56409D0);
      break;
    case 3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F15F0, &qword_1D56409E0);
      break;
    case 4:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1618, &qword_1D5640A08);
      break;
    case 6:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F15F8, &qword_1D56409E8);
      break;
    case 7:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F15D0, &qword_1D56409C0);
      break;
    case 8:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1600, &qword_1D56409F0);
      break;
    default:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F15E8, &qword_1D56409D8);
      break;
  }

  return swift_initStaticObject();
}

uint64_t sub_1D51C7704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[32] = a2;
  v3[33] = a3;
  v3[31] = a1;
  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1D51C771C()
{
  v4 = v0[31];
  v5 = *(v4 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v133 = MEMORY[0x1E69E7CC0];
    sub_1D4F03980(0, v5, 0);
    v6 = v133;
    v7 = *(v133 + 16);
    v2 = 16 * v7;
    v3 = v4 + 40;
    do
    {
      v8 = *(v3 - 8);
      v1 = *v3;
      v132.n128_u64[0] = v6;
      v9 = v7 + 1;
      v10 = *(v6 + 24);

      if (v7 >= v10 >> 1)
      {
        sub_1D4F03980(v10 > 1, v9, 1);
      }

      *(v6 + 16) = v9;
      v11 = v6 + v2;
      *(v11 + 32) = v8;
      *(v11 + 40) = v1;
      v2 += 16;
      v3 += 16;
      ++v7;
      --v5;
    }

    while (v5);
  }

  sub_1D4F0029C();
  v13 = v12;
  v14 = *(v12 + 16);
  OUTLINED_FUNCTION_129_4();
  if (v16)
  {
    OUTLINED_FUNCTION_22_41(v15);
    sub_1D4F0029C();
    v13 = v95;
  }

  OUTLINED_FUNCTION_83_11();
  OUTLINED_FUNCTION_175_2(v17);
  v18 = OUTLINED_FUNCTION_252("catalog_song");
  OUTLINED_FUNCTION_218_2(v18, v19);
  if (v2 >= v3 >> 1)
  {
    OUTLINED_FUNCTION_54_18();
    sub_1D4F0029C();
    v13 = v96;
  }

  OUTLINED_FUNCTION_130_8();
  v21 = v13 + v2 * v20;
  *(v21 + 32) = v14;
  *(v21 + 40) = v1;
  OUTLINED_FUNCTION_9_70(v21, v101, v107, v112, v117, v122, v127, v132, v138, v143, v148);
  OUTLINED_FUNCTION_230_1();
  if (!(v24 ^ v25 | v23))
  {
    OUTLINED_FUNCTION_27_40(v22);
    sub_1D4F0029C();
    v13 = v97;
  }

  OUTLINED_FUNCTION_125_8();
  OUTLINED_FUNCTION_80_9(v26);
  OUTLINED_FUNCTION_9_70(v27, v102, v108, v113, v118, v123, v128, v134, v139, v144, v149);
  if (qword_1EDD5A228 != -1)
  {
    OUTLINED_FUNCTION_14_55(&qword_1EDD5A228);
  }

  v29 = aAssetAdamId[0];
  v28 = aAssetAdamId[1];
  v30 = *(v13 + 16);
  v31 = *(v13 + 24);

  if (v30 >= v31 >> 1)
  {
    OUTLINED_FUNCTION_54_18();
    sub_1D4F0029C();
    v13 = v98;
  }

  OUTLINED_FUNCTION_130_8();
  v33 = v13 + v30 * v32;
  *(v33 + 32) = v29;
  *(v33 + 40) = v28;
  OUTLINED_FUNCTION_9_70(v33, v103, v109, v114, v119, v124, v129, v135, v140, v145, v150);
  v34 = *(v13 + 24);
  if ((v30 + 2) > (v34 >> 1))
  {
    OUTLINED_FUNCTION_27_40(v34);
    sub_1D4F0029C();
    v13 = v99;
  }

  OUTLINED_FUNCTION_125_8();
  OUTLINED_FUNCTION_276(v35);
  OUTLINED_FUNCTION_9_70(v36, v104, v110, v115, v120, v125, v130, v136, v141, v146, v151);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
  v126 = sub_1D51D2E5C(&qword_1EC7F15B8, &qword_1EC7EABD8, &unk_1D561D780);
  OUTLINED_FUNCTION_9_0();
  v0[7] = 0xD000000000000021;
  v0[8] = v37;
  v0[9] = 60;
  v0[10] = 0xE100000000000000;
  v0[11] = 95;
  v0[12] = 0xE100000000000000;
  v38 = sub_1D4F53278();

  v39 = MEMORY[0x1E69E6158];
  v105 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_3_31();
  v0[13] = OUTLINED_FUNCTION_295(v40, v41, v42, v43, v44, v45, v46, v47, v105, v38, v38, v38);
  v0[14] = v48;
  v0[15] = 62;
  v0[16] = 0xE100000000000000;
  v0[17] = 95;
  v0[18] = 0xE100000000000000;
  OUTLINED_FUNCTION_3_31();
  v57 = OUTLINED_FUNCTION_295(v49, v50, v51, v52, v53, v54, v55, v56, v39, v38, v38, v38);
  v59 = v58;

  v0[19] = v57;
  v0[20] = v59;
  v0[21] = 46;
  v0[22] = 0xE100000000000000;
  v0[23] = 95;
  v0[24] = 0xE100000000000000;
  OUTLINED_FUNCTION_3_31();
  OUTLINED_FUNCTION_295(v60, v61, v62, v63, v64, v65, v66, v67, v39, v38, v38, v38);

  OUTLINED_FUNCTION_337();
  v0[29] = 95;
  v0[30] = 0xE100000000000000;
  OUTLINED_FUNCTION_3_31();
  v76 = OUTLINED_FUNCTION_295(v68, v69, v70, v71, v72, v73, v74, v75, v39, v38, v38, v38);
  v78 = v77;

  v79 = *(v13 + 16);
  if (v79 >= *(v13 + 24) >> 1)
  {
    OUTLINED_FUNCTION_121_7();
    sub_1D4F0029C();
    v13 = v100;
  }

  *(v13 + 16) = v79 + 1;
  v80 = v13 + 80 * v79;
  *(v80 + 32) = v6;
  *(v80 + 40) = v137;
  *(v80 + 56) = v131;
  *(v80 + 64) = v126;
  *(v80 + 72) = v76;
  *(v80 + 80) = v78;
  OUTLINED_FUNCTION_173_1(v80);

  OUTLINED_FUNCTION_166_1();
  if (v16)
  {
    OUTLINED_FUNCTION_22_41(v81);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_124_6();
  OUTLINED_FUNCTION_148_7(v82);
  OUTLINED_FUNCTION_9_70(v83, v106, v111, v116, v121, v126, v131, v137, v142, v147, v152);
  OUTLINED_FUNCTION_57_1();
  sub_1D54F08F4(v84, v85, v86, v87, v88);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v0[34] = v89;
  *v89 = v90;
  v89[1] = sub_1D51C7BDC;
  v91 = OUTLINED_FUNCTION_324();

  return sub_1D52EF24C(v91, v92, v93);
}

uint64_t sub_1D51C7BDC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 280) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1D51D2984(v3 + 16);
    OUTLINED_FUNCTION_55();

    return v10();
  }
}

uint64_t sub_1D51C7CF8()
{
  OUTLINED_FUNCTION_60();
  sub_1D51D2984(v0 + 16);
  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D51C7D54()
{
  OUTLINED_FUNCTION_60();
  v0[9] = v1;
  v0[10] = v2;
  v0[8] = v3;
  v4 = _s10DescriptorVMa(0);
  v0[11] = v4;
  OUTLINED_FUNCTION_69(v4);
  v0[12] = v5;
  v0[13] = OUTLINED_FUNCTION_167();
  v0[14] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F15A0, &qword_1D5640960);
  OUTLINED_FUNCTION_22(v6);
  v0[15] = OUTLINED_FUNCTION_127();
  v7 = sub_1D560BB08();
  v0[16] = v7;
  OUTLINED_FUNCTION_69(v7);
  v0[17] = v8;
  v0[18] = OUTLINED_FUNCTION_167();
  v0[19] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D51C7E8C()
{
  OUTLINED_FUNCTION_91();
  v1 = v0[17];
  v2 = v0[8];
  v3 = *(v2 + 16);
  v0[20] = v3;
  v0[21] = 0;
  if (!v3)
  {

    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_153_1();

    __asm { BRAA            X1, X16 }
  }

  v4 = v0[19];
  v6 = v0[15];
  v5 = v0[16];
  v8 = *(v1 + 16);
  v7 = v1 + 16;
  v9 = (*(v7 + 64) + 32) & ~*(v7 + 64);
  v0[22] = v8;
  v0[23] = v7 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v4, v2 + v9, v5);
  v8(v6, v4, v5);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v5);
  v10 = swift_task_alloc();
  v0[24] = v10;
  *v10 = v0;
  OUTLINED_FUNCTION_162_5(v10);
  OUTLINED_FUNCTION_153_1();

  return sub_1D51C1ABC();
}

uint64_t sub_1D51C7FE0()
{
  OUTLINED_FUNCTION_80();
  v2 = *v1;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_24_1();
  *v6 = v5;
  *(v8 + 200) = v7;
  *(v8 + 208) = v0;

  sub_1D4E50004(*(v2 + 120), &qword_1EC7F15A0, &qword_1D5640960);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D51C8114()
{
  OUTLINED_FUNCTION_76_2();
  v42 = v0;
  v1 = v0;
  v2 = v0[25];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[12];
    v1[7] = MEMORY[0x1E69E7CC0];
    sub_1D4F04614(0, v3, 0);
    v5 = v1[7];
    v38 = v1;
    v6 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v37 = *(v4 + 72);
    do
    {
      v7 = v1[13];
      v8 = v1[14];
      v9 = v1[11];
      sub_1D51D2DB0();
      v10 = v7[1];
      v39 = *v7;
      sub_1D51D2DB0();
      v11 = v5;
      v12 = *(v7 + v9[7]);

      sub_1D560C218();
      sub_1D51D3024();
      sub_1D51D2E04(v7, _s10DescriptorVMa);
      v1 = v38;
      *v8 = v39;
      v8[1] = v10;
      *(v8 + v9[6]) = 1;
      *(v8 + v9[7]) = v12;
      v5 = v11;
      *(v8 + v9[8]) = 0;
      v38[7] = v11;
      v14 = *(v11 + 16);
      v13 = *(v11 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1D4F04614(v13 > 1, v14 + 1, 1);
        v5 = v38[7];
      }

      *(v5 + 16) = v14 + 1;
      OUTLINED_FUNCTION_65_20();
      v6 += v37;
      --v3;
    }

    while (v3);
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC0];
  }

  if (qword_1EDD54478 != -1)
  {
    OUTLINED_FUNCTION_2_5(&qword_1EDD54478);
  }

  v15 = v1[22];
  v17 = v1[18];
  v16 = v1[19];
  v18 = v1[16];
  v19 = sub_1D560C758();
  __swift_project_value_buffer(v19, qword_1EDD76A90);
  v15(v17, v16, v18);
  swift_bridgeObjectRetain_n();
  v20 = sub_1D560C738();
  v21 = sub_1D56156B8();
  v22 = os_log_type_enabled(v20, v21);
  v24 = v1[17];
  v23 = v1[18];
  v25 = v1[16];
  if (v22)
  {
    v40 = v21;
    v26 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v26 = 136446466;
    OUTLINED_FUNCTION_33_36();
    sub_1D51D2B88(v27, v28, MEMORY[0x1E6968158]);
    v29 = sub_1D56160F8();
    v31 = v30;
    v32 = *(v24 + 8);
    v32(v23, v25);
    v33 = sub_1D4E6835C(v29, v31, &v41);

    *(v26 + 4) = v33;
    *(v26 + 12) = 2050;
    v34 = *(v5 + 16);

    *(v26 + 14) = v34;

    _os_log_impl(&dword_1D4E3F000, v20, v40, "Rejecting ALL entries updated between %{public}s: %{public}ld entries found.", v26, 0x16u);
    OUTLINED_FUNCTION_170_2();
    MEMORY[0x1DA6ED200](v26, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();

    v32 = *(v24 + 8);
    v32(v23, v25);
  }

  v1[27] = v32;
  v1[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F15A8, &qword_1D5640970);
  v1[6] = sub_1D4E62A60(&qword_1EDD52890, &qword_1EC7F15A8, &qword_1D5640970, MEMORY[0x1E69E6340]);
  v1[2] = v5;
  v35 = swift_task_alloc();
  v1[28] = v35;
  *v35 = v1;
  v35[1] = sub_1D51C8574;

  return sub_1D51BC42C();
}

uint64_t sub_1D51C8574()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 232) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1((v3 + 16));
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D51C8674()
{
  OUTLINED_FUNCTION_91();
  v1 = OUTLINED_FUNCTION_333();
  v2(v1);
  v3 = v0[20];
  v4 = v0[21] + 1;
  v0[21] = v4;
  v5 = v0[19];
  if (v4 == v3)
  {

    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_153_1();

    __asm { BRAA            X1, X16 }
  }

  v8 = v0[16];
  v9 = v0[17];
  v10 = *(v9 + 16);
  v9 += 16;
  v11 = v0[8] + ((*(v9 + 64) + 32) & ~*(v9 + 64)) + *(v9 + 56) * v4;
  v0[22] = v10;
  v0[23] = v9 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v5, v11, v8);
  v12 = OUTLINED_FUNCTION_159();
  (v10)(v12);
  OUTLINED_FUNCTION_121_7();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  v17 = swift_task_alloc();
  v0[24] = v17;
  *v17 = v0;
  OUTLINED_FUNCTION_162_5(v17);
  OUTLINED_FUNCTION_153_1();

  return sub_1D51C1ABC();
}

void sub_1D51C87E0()
{
  OUTLINED_FUNCTION_91();
  (*(v0[17] + 8))(v0[19], v0[16]);

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_153_1();

  __asm { BRAA            X1, X16 }
}

void sub_1D51C8888()
{
  OUTLINED_FUNCTION_91();
  v1 = OUTLINED_FUNCTION_333();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_153_1();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1D51C8930()
{
  OUTLINED_FUNCTION_60();
  v4 = OUTLINED_FUNCTION_350(v1, v2, v3);
  v0[224] = v4;
  OUTLINED_FUNCTION_69(v4);
  v0[225] = v5;
  v0[226] = OUTLINED_FUNCTION_167();
  v0[227] = swift_task_alloc();
  v6 = sub_1D560BB08();
  v0[228] = v6;
  OUTLINED_FUNCTION_69(v6);
  v0[229] = v7;
  v0[230] = OUTLINED_FUNCTION_167();
  v0[231] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D51C8A30()
{
  OUTLINED_FUNCTION_76_2();
  v5 = *(v1 + 1768);
  *(v1 + 1856) = sub_1D51BE928(&unk_1F50A3C90);
  v6 = *(v5 + 16);
  *(v1 + 1864) = v6;
  if (!v6)
  {
    OUTLINED_FUNCTION_198_3();

    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_247();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_231_0();
  v7 = OUTLINED_FUNCTION_229_1();
  v8(v7);
  if (qword_1EDD54478 != -1)
  {
    OUTLINED_FUNCTION_2_5(&qword_1EDD54478);
  }

  v9 = v5 | 0x8000000000000000;
  v10 = OUTLINED_FUNCTION_155_5();
  __swift_project_value_buffer(v10, qword_1EDD76A90);
  v11 = OUTLINED_FUNCTION_142_5();
  v4(v11);
  v12 = v2;
  v13 = sub_1D560C738();
  v14 = sub_1D56156B8();
  OUTLINED_FUNCTION_104_5(v14);
  OUTLINED_FUNCTION_210_2();
  if (v15)
  {
    OUTLINED_FUNCTION_142();
    v119 = OUTLINED_FUNCTION_37_0();
    *v2 = 136315138;
    OUTLINED_FUNCTION_33_36();
    sub_1D51D2B88(v16, v17, MEMORY[0x1E6968158]);
    OUTLINED_FUNCTION_263();
    sub_1D56160F8();
    v117 = v0;
    v0 = v9;
    OUTLINED_FUNCTION_261();
    v18 = OUTLINED_FUNCTION_107_8();
    v19 = (v3)(v18);
    OUTLINED_FUNCTION_347(v19, v20, v21, v22, v23, v24);
    OUTLINED_FUNCTION_368();
    *(v2 + 4) = v2;
    OUTLINED_FUNCTION_274(&dword_1D4E3F000, v25, v117, "Rejecting audio analysis updated between %s.");
    v12 = v119;
    OUTLINED_FUNCTION_170_2();
    OUTLINED_FUNCTION_118();
  }

  else
  {

    v28 = OUTLINED_FUNCTION_107_8();
    (v3)(v28);
  }

  *(v1 + 1896) = v3;
  OUTLINED_FUNCTION_267();
  OUTLINED_FUNCTION_114_5();
  if (v30)
  {
    OUTLINED_FUNCTION_22_41(v29);
    sub_1D4F0029C();
    v13 = v110;
  }

  OUTLINED_FUNCTION_63_13();
  *(v32 + 32) = v31 + 11;
  *(v32 + 40) = v9;
  *(v32 + 104) = 0;
  if (qword_1EDD5A228 != -1)
  {
    OUTLINED_FUNCTION_14_55(&qword_1EDD5A228);
    v12 = v13[2];
  }

  OUTLINED_FUNCTION_196_1();
  if (v12 >= v3 >> 1)
  {
    OUTLINED_FUNCTION_26_44();
    sub_1D4F0029C();
    v13 = v111;
  }

  OUTLINED_FUNCTION_90_14();
  *(v33 + 32) = v9;
  *(v33 + 40) = v0;
  OUTLINED_FUNCTION_8_67(v33);
  OUTLINED_FUNCTION_168_3();
  if (!(v36 ^ v37 | v35))
  {
    OUTLINED_FUNCTION_24_43(v34);
    sub_1D4F0029C();
    v13 = v112;
  }

  OUTLINED_FUNCTION_223_1();
  OUTLINED_FUNCTION_75_14();
  OUTLINED_FUNCTION_158_5(v38);
  OUTLINED_FUNCTION_19_50(v39);
  OUTLINED_FUNCTION_195_2();
  if (v2 > (&qword_1EC7E9980 >> 1))
  {
    OUTLINED_FUNCTION_26_44();
    sub_1D4F0029C();
    v13 = v113;
  }

  OUTLINED_FUNCTION_72_18();
  *(v40 + 32) = v1 + 1520;
  *(v40 + 40) = v1 + 1240;
  OUTLINED_FUNCTION_11_70(v40);
  OUTLINED_FUNCTION_167_2();
  if (!(v36 ^ v37 | v35))
  {
    OUTLINED_FUNCTION_22_41(v41);
    sub_1D4F0029C();
    v13 = v114;
  }

  OUTLINED_FUNCTION_42_24();
  sub_1D56160F8();
  OUTLINED_FUNCTION_77_8();
  if (v30)
  {
    OUTLINED_FUNCTION_24_43(v42);
    sub_1D4F0029C();
    v13 = v115;
  }

  OUTLINED_FUNCTION_104_12();
  OUTLINED_FUNCTION_15_57(v43, *(v1 + 400), *(v1 + 416), *(v1 + 432));
  OUTLINED_FUNCTION_260();
  if (!(v36 ^ v37 | v35))
  {
    OUTLINED_FUNCTION_22_41(v44);
    sub_1D4F0029C();
    v13 = v116;
  }

  OUTLINED_FUNCTION_63_13();
  OUTLINED_FUNCTION_99_11(v45);
  OUTLINED_FUNCTION_8_67(v46);
  v47 = aAudioAnalysis[1];
  v48 = v13[3];
  OUTLINED_FUNCTION_310();
  if (v0 > (v48 >> 1))
  {
    OUTLINED_FUNCTION_31_32();
    sub_1D4F0029C();
  }

  v49 = v1 + 568;
  OUTLINED_FUNCTION_56_20();
  OUTLINED_FUNCTION_10_68(v50);
  OUTLINED_FUNCTION_134_6();
  if (!(v36 ^ v37 | v35))
  {
    OUTLINED_FUNCTION_22_41(v51);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_35_34();
  OUTLINED_FUNCTION_12_58(v52);
  OUTLINED_FUNCTION_345();
  if (v0 > ((v1 + 512) >> 1))
  {
    OUTLINED_FUNCTION_34_35();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_59_15();
  *(v53 + 32) = v49;
  *(v53 + 40) = v47;
  OUTLINED_FUNCTION_8_67(v53);
  OUTLINED_FUNCTION_213_1();
  if (!(v36 ^ v37 | v35))
  {
    OUTLINED_FUNCTION_22_41(v54);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_35_34();
  OUTLINED_FUNCTION_10_68(v55);
  OUTLINED_FUNCTION_300();
  OUTLINED_FUNCTION_364();
  if (v0 > (0x80000001D56874E0 >> 1))
  {
    OUTLINED_FUNCTION_29_36();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_47_27();
  OUTLINED_FUNCTION_8_67(v56);
  OUTLINED_FUNCTION_212_2();
  if (!(v36 ^ v37 | v35))
  {
    OUTLINED_FUNCTION_22_41(v57);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_232_0();
  OUTLINED_FUNCTION_63_13();
  *(v58 + 32) = v60;
  *(v58 + 40) = v59;
  OUTLINED_FUNCTION_11_70(v58);
  OUTLINED_FUNCTION_228_1();
  OUTLINED_FUNCTION_363();
  if (v0 > ((v1 + 792) >> 1))
  {
    OUTLINED_FUNCTION_29_36();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_59_15();
  *(v61 + 32) = v49;
  *(v61 + 40) = v47;
  OUTLINED_FUNCTION_10_68(v61);
  OUTLINED_FUNCTION_216_1();
  if (!(v36 ^ v37 | v35))
  {
    OUTLINED_FUNCTION_22_41(v62);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_63_13();
  *(v63 + 32) = 0x20200A2C30203D20;
  OUTLINED_FUNCTION_232_0();
  *(v64 + 40) = v65;
  OUTLINED_FUNCTION_11_70(v64);
  OUTLINED_FUNCTION_228_1();

  if (v1 + 1251 > ((v1 + 904) >> 1))
  {
    OUTLINED_FUNCTION_29_36();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_59_15();
  *(v66 + 32) = v49;
  *(v66 + 40) = v47;
  OUTLINED_FUNCTION_8_67(v66);
  OUTLINED_FUNCTION_215_0();
  if (!(v36 ^ v37 | v35))
  {
    OUTLINED_FUNCTION_22_41(v67);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_39_27();
  *(v69 + 32) = v68 - 1;
  *(v69 + 40) = 0x80000001D5687500;
  OUTLINED_FUNCTION_11_70(v69);
  OUTLINED_FUNCTION_300();
  OUTLINED_FUNCTION_362();
  if (v1 + 1251 > ((v1 + 1016) >> 1))
  {
    OUTLINED_FUNCTION_29_36();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_47_27();
  OUTLINED_FUNCTION_8_67(v70);
  OUTLINED_FUNCTION_217_1();
  if (!(v36 ^ v37 | v35))
  {
    OUTLINED_FUNCTION_20_51(v71);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_60_15();
  OUTLINED_FUNCTION_11_70(v72);
  sub_1D560BAE8();
  sub_1D560C208();
  v73 = OUTLINED_FUNCTION_143_6();
  v118 = v74;
  v74(v73);
  *(v1 + 1696) = MEMORY[0x1E69E63B0];
  OUTLINED_FUNCTION_194_3(&off_1F50C0338);
  OUTLINED_FUNCTION_172_3();
  OUTLINED_FUNCTION_89_11();
  if (v30)
  {
    OUTLINED_FUNCTION_22_41(v75);
    sub_1D4F0029C();
  }

  v76 = (v1 + 1296);
  v77 = OUTLINED_FUNCTION_50_20();
  OUTLINED_FUNCTION_253(v77);
  __swift_destroy_boxed_opaque_existential_1((v1 + 1672));
  OUTLINED_FUNCTION_84_10();
  if (v30)
  {
    OUTLINED_FUNCTION_22_41(v78);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_81_17();
  OUTLINED_FUNCTION_76_11();
  OUTLINED_FUNCTION_73_12();
  v79[2].n128_u64[0] = v81;
  v79[2].n128_u64[1] = v80;
  OUTLINED_FUNCTION_21(v79, *v76, *(v1 + 1312), *(v1 + 1328));
  v83 = qword_1EC7E9A98;
  v82 = off_1EC7E9AA0;
  OUTLINED_FUNCTION_159_6();
  if (v76 > ((v1 + 1128) >> 1))
  {
    OUTLINED_FUNCTION_29_36();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_59_15();
  *(v84 + 32) = v83;
  *(v84 + 40) = v82;
  OUTLINED_FUNCTION_8_67(v84);
  OUTLINED_FUNCTION_135_8();
  if (!(v36 ^ v37 | v35))
  {
    OUTLINED_FUNCTION_20_51(v85);
    sub_1D4F0029C();
  }

  v86 = *(v1 + 1808);
  OUTLINED_FUNCTION_68_12();
  OUTLINED_FUNCTION_11_70(v87);
  sub_1D560BAC8();
  sub_1D560C208();
  v88 = OUTLINED_FUNCTION_169_1();
  v118(v88);
  *(v1 + 1656) = MEMORY[0x1E69E63B0];
  OUTLINED_FUNCTION_193_1(&off_1F50C0338);
  OUTLINED_FUNCTION_67_21();
  if (v30)
  {
    OUTLINED_FUNCTION_22_41(v89);
    sub_1D4F0029C();
  }

  v90 = (v1 + 232);
  v91 = OUTLINED_FUNCTION_50_20();
  OUTLINED_FUNCTION_254(v91);
  __swift_destroy_boxed_opaque_existential_1((v1 + 1632));
  OUTLINED_FUNCTION_84_10();
  if (v30)
  {
    OUTLINED_FUNCTION_22_41(v92);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_76_11();
  OUTLINED_FUNCTION_302();
  OUTLINED_FUNCTION_81_17();
  v93[2].n128_u64[0] = v95;
  v93[2].n128_u64[1] = v94;
  OUTLINED_FUNCTION_21(v93, *v90, *(v1 + 248), *(v1 + 264));
  OUTLINED_FUNCTION_159_6();
  if (v90 > ((v1 + 1408) >> 1))
  {
    OUTLINED_FUNCTION_29_36();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_47_27();
  OUTLINED_FUNCTION_8_67(v96);
  OUTLINED_FUNCTION_101_5();
  if (!(v36 ^ v37 | v35))
  {
    OUTLINED_FUNCTION_22_41(v97);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_41_29();
  sub_1D56160F8();
  OUTLINED_FUNCTION_112_10();
  if (v30)
  {
    OUTLINED_FUNCTION_22_41(v98);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_109_12();
  OUTLINED_FUNCTION_15_57(v99, *v86, v86[1], v86[2]);
  OUTLINED_FUNCTION_203_2();
  if (!(v36 ^ v37 | v35))
  {
    OUTLINED_FUNCTION_24_43(v100);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_59_15();
  OUTLINED_FUNCTION_148_7(v101);
  OUTLINED_FUNCTION_21(v102, *(v1 + 176), *(v1 + 192), *(v1 + 208));
  OUTLINED_FUNCTION_150_7(MEMORY[0x1E69E7CC0], v1 + 1712);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v1 + 1904) = v103;
  *v103 = v104;
  OUTLINED_FUNCTION_118_8(v103);
  OUTLINED_FUNCTION_247();

  return sub_1D52EF24C(v105, v106, v107);
}

uint64_t sub_1D51C9354()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 1912) = v0;

  sub_1D51D2984(v3 + 1712);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D51C9454()
{
  OUTLINED_FUNCTION_100();
  v113 = v3;
  v9 = OUTLINED_FUNCTION_226_1();
  v10(v9);
  if (v0 == v1)
  {
    OUTLINED_FUNCTION_198_3();

    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_246();

    __asm { BRAA            X1, X16 }
  }

  v13 = OUTLINED_FUNCTION_164_3();
  v14(v13);
  if (qword_1EDD54478 != -1)
  {
    OUTLINED_FUNCTION_2_5(&qword_1EDD54478);
  }

  v15 = OUTLINED_FUNCTION_155_5();
  __swift_project_value_buffer(v15, qword_1EDD76A90);
  v16 = OUTLINED_FUNCTION_142_5();
  v6(v16);
  v17 = v4;
  v18 = sub_1D560C738();
  v19 = sub_1D56156B8();
  OUTLINED_FUNCTION_104_5(v19);
  OUTLINED_FUNCTION_210_2();
  if (v20)
  {
    OUTLINED_FUNCTION_142();
    v110 = OUTLINED_FUNCTION_37_0();
    v112 = v110;
    *v4 = 136315138;
    OUTLINED_FUNCTION_33_36();
    sub_1D51D2B88(v21, v22, MEMORY[0x1E6968158]);
    OUTLINED_FUNCTION_263();
    sub_1D56160F8();
    OUTLINED_FUNCTION_261();
    v23 = OUTLINED_FUNCTION_107_8();
    (v5)(v23);
    sub_1D4E6835C(v7, v8, &v112);
    OUTLINED_FUNCTION_368();
    *(v4 + 4) = v4;
    OUTLINED_FUNCTION_274(&dword_1D4E3F000, v24, v2, "Rejecting audio analysis updated between %s.");
    v17 = v110;
    OUTLINED_FUNCTION_170_2();
    OUTLINED_FUNCTION_118();
  }

  else
  {

    v25 = OUTLINED_FUNCTION_107_8();
    (v5)(v25);
  }

  *(v3 + 1896) = v5;
  OUTLINED_FUNCTION_267();
  OUTLINED_FUNCTION_114_5();
  if (v27)
  {
    OUTLINED_FUNCTION_22_41(v26);
    sub_1D4F0029C();
    v18 = v109;
  }

  OUTLINED_FUNCTION_321();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_105_10();
  *(v30 + 32) = v28 + 11;
  *(v30 + 40) = v29;
  *(v30 + 104) = 0;
  if (qword_1EDD5A228 != -1)
  {
    OUTLINED_FUNCTION_14_55(&qword_1EDD5A228);
    v17 = v18[2];
  }

  v31 = v3 + 1520;
  OUTLINED_FUNCTION_196_1();
  if (v17 >= v5 >> 1)
  {
    OUTLINED_FUNCTION_26_44();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_90_14();
  *(v32 + 32) = v7;
  *(v32 + 40) = v2;
  OUTLINED_FUNCTION_8_67(v32);
  OUTLINED_FUNCTION_168_3();
  if (!(v35 ^ v36 | v34))
  {
    OUTLINED_FUNCTION_24_43(v33);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_223_1();
  OUTLINED_FUNCTION_75_14();
  OUTLINED_FUNCTION_158_5(v37);
  OUTLINED_FUNCTION_19_50(v38);
  OUTLINED_FUNCTION_195_2();
  if (v4 > (&qword_1EC7E9980 >> 1))
  {
    OUTLINED_FUNCTION_26_44();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_72_18();
  *(v39 + 32) = v31;
  *(v39 + 40) = v3 + 1240;
  OUTLINED_FUNCTION_11_70(v39);
  OUTLINED_FUNCTION_167_2();
  if (!(v35 ^ v36 | v34))
  {
    OUTLINED_FUNCTION_22_41(v40);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_42_24();
  sub_1D56160F8();
  OUTLINED_FUNCTION_77_8();
  if (v27)
  {
    OUTLINED_FUNCTION_24_43(v41);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_104_12();
  OUTLINED_FUNCTION_15_57(v42, *(v3 + 400), *(v3 + 416), *(v3 + 432));
  OUTLINED_FUNCTION_260();
  if (!(v35 ^ v36 | v34))
  {
    OUTLINED_FUNCTION_22_41(v43);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_63_13();
  OUTLINED_FUNCTION_99_11(v44);
  OUTLINED_FUNCTION_10_68(v45);
  OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_310();
  if (v2 > ((v3 + 456) >> 1))
  {
    OUTLINED_FUNCTION_34_35();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_56_20();
  OUTLINED_FUNCTION_11_70(v46);
  OUTLINED_FUNCTION_134_6();
  if (!(v35 ^ v36 | v34))
  {
    OUTLINED_FUNCTION_22_41(v47);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_35_34();
  OUTLINED_FUNCTION_12_58(v48);
  OUTLINED_FUNCTION_346();
  if (v2 > (v31 >> 1))
  {
    OUTLINED_FUNCTION_51_22();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_59_15();
  *(v49 + 32) = v3 + 568;
  *(v49 + 40) = v4;
  OUTLINED_FUNCTION_10_68(v49);
  OUTLINED_FUNCTION_213_1();
  if (!(v35 ^ v36 | v34))
  {
    OUTLINED_FUNCTION_22_41(v50);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_35_34();
  OUTLINED_FUNCTION_8_67(v51);
  OUTLINED_FUNCTION_332();
  OUTLINED_FUNCTION_364();
  if (v2 > ((v3 + 680) >> 1))
  {
    OUTLINED_FUNCTION_51_22();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_59_15();
  *(v52 + 32) = 0x80000001D56874E0;
  *(v52 + 40) = v4;
  OUTLINED_FUNCTION_10_68(v52);
  OUTLINED_FUNCTION_212_2();
  if (!(v35 ^ v36 | v34))
  {
    OUTLINED_FUNCTION_22_41(v53);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_232_0();
  OUTLINED_FUNCTION_63_13();
  *(v54 + 32) = 0x20200A2C30203D20;
  *(v54 + 40) = v55;
  OUTLINED_FUNCTION_8_67(v54);
  OUTLINED_FUNCTION_332();
  OUTLINED_FUNCTION_363();
  if (v2 > ((v3 + 792) >> 1))
  {
    OUTLINED_FUNCTION_51_22();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_59_15();
  *(v56 + 32) = 0x80000001D56874E0;
  *(v56 + 40) = v4;
  OUTLINED_FUNCTION_12_58(v56);
  OUTLINED_FUNCTION_216_1();
  if (!(v35 ^ v36 | v34))
  {
    OUTLINED_FUNCTION_22_41(v57);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_63_13();
  OUTLINED_FUNCTION_232_0();
  *(v58 + 32) = 0x20200A2C30203D20;
  *(v58 + 40) = v59;
  OUTLINED_FUNCTION_8_67(v58);
  OUTLINED_FUNCTION_358();
  if (v2 > (0x80000001D56874E0 >> 1))
  {
    OUTLINED_FUNCTION_29_36();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_56_20();
  OUTLINED_FUNCTION_12_58(v60);
  OUTLINED_FUNCTION_215_0();
  if (!(v35 ^ v36 | v34))
  {
    OUTLINED_FUNCTION_22_41(v61);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_105_10();
  OUTLINED_FUNCTION_321();
  *(v64 + 32) = v62 - 1;
  *(v64 + 40) = v63;
  v65 = OUTLINED_FUNCTION_133_4();
  *(v66 + 96) = *(v3 + 1064);
  OUTLINED_FUNCTION_86_14(v65, v67, v68);
  OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_362();
  if (v2 > ((v3 + 1016) >> 1))
  {
    OUTLINED_FUNCTION_34_35();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_56_20();
  OUTLINED_FUNCTION_11_70(v69);
  OUTLINED_FUNCTION_217_1();
  if (!(v35 ^ v36 | v34))
  {
    OUTLINED_FUNCTION_20_51(v70);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_60_15();
  OUTLINED_FUNCTION_12_58(v71);
  sub_1D560BAE8();
  sub_1D560C208();
  v72 = OUTLINED_FUNCTION_143_6();
  v111 = v73;
  v73(v72);
  *(v3 + 1696) = MEMORY[0x1E69E63B0];
  OUTLINED_FUNCTION_194_3(&off_1F50C0338);
  OUTLINED_FUNCTION_172_3();
  OUTLINED_FUNCTION_89_11();
  if (v27)
  {
    OUTLINED_FUNCTION_22_41(v74);
    sub_1D4F0029C();
  }

  v75 = (v3 + 1296);
  v76 = OUTLINED_FUNCTION_50_20();
  OUTLINED_FUNCTION_253(v76);
  __swift_destroy_boxed_opaque_existential_1((v3 + 1672));
  OUTLINED_FUNCTION_84_10();
  if (v27)
  {
    OUTLINED_FUNCTION_22_41(v77);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_81_17();
  OUTLINED_FUNCTION_76_11();
  OUTLINED_FUNCTION_73_12();
  v78[2].n128_u64[0] = v80;
  v78[2].n128_u64[1] = v79;
  OUTLINED_FUNCTION_21(v78, *v75, *(v3 + 1312), *(v3 + 1328));
  v82 = qword_1EC7E9A98;
  v81 = off_1EC7E9AA0;
  OUTLINED_FUNCTION_159_6();
  if (v75 > ((v3 + 1072) >> 1))
  {
    OUTLINED_FUNCTION_29_36();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_59_15();
  *(v83 + 32) = v82;
  *(v83 + 40) = v81;
  OUTLINED_FUNCTION_8_67(v83);
  OUTLINED_FUNCTION_135_8();
  if (!(v35 ^ v36 | v34))
  {
    OUTLINED_FUNCTION_20_51(v84);
    sub_1D4F0029C();
  }

  v85 = *(v3 + 1808);
  OUTLINED_FUNCTION_68_12();
  OUTLINED_FUNCTION_11_70(v86);
  sub_1D560BAC8();
  sub_1D560C208();
  v87 = OUTLINED_FUNCTION_169_1();
  v111(v87);
  *(v3 + 1656) = MEMORY[0x1E69E63B0];
  OUTLINED_FUNCTION_193_1(&off_1F50C0338);
  OUTLINED_FUNCTION_67_21();
  if (v27)
  {
    OUTLINED_FUNCTION_22_41(v88);
    sub_1D4F0029C();
  }

  v89 = (v3 + 232);
  v90 = OUTLINED_FUNCTION_50_20();
  OUTLINED_FUNCTION_254(v90);
  __swift_destroy_boxed_opaque_existential_1((v3 + 1632));
  OUTLINED_FUNCTION_84_10();
  if (v27)
  {
    OUTLINED_FUNCTION_22_41(v91);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_76_11();
  OUTLINED_FUNCTION_302();
  OUTLINED_FUNCTION_81_17();
  v92[2].n128_u64[0] = v94;
  v92[2].n128_u64[1] = v93;
  OUTLINED_FUNCTION_21(v92, *v89, *(v3 + 248), *(v3 + 264));
  OUTLINED_FUNCTION_159_6();
  if (v89 > ((v3 + 1408) >> 1))
  {
    OUTLINED_FUNCTION_29_36();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_47_27();
  OUTLINED_FUNCTION_8_67(v95);
  OUTLINED_FUNCTION_101_5();
  if (!(v35 ^ v36 | v34))
  {
    OUTLINED_FUNCTION_22_41(v96);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_41_29();
  sub_1D56160F8();
  OUTLINED_FUNCTION_112_10();
  if (v27)
  {
    OUTLINED_FUNCTION_22_41(v97);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_109_12();
  OUTLINED_FUNCTION_15_57(v98, *v85, v85[1], v85[2]);
  OUTLINED_FUNCTION_203_2();
  if (!(v35 ^ v36 | v34))
  {
    OUTLINED_FUNCTION_24_43(v99);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_59_15();
  OUTLINED_FUNCTION_148_7(v100);
  OUTLINED_FUNCTION_21(v101, *(v3 + 176), *(v3 + 192), *(v3 + 208));
  OUTLINED_FUNCTION_150_7(MEMORY[0x1E69E7CC0], v3 + 1712);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v3 + 1904) = v102;
  *v102 = v103;
  OUTLINED_FUNCTION_118_8(v102);
  OUTLINED_FUNCTION_246();

  return sub_1D52EF24C(v104, v105, v106);
}

uint64_t sub_1D51C9D50()
{
  OUTLINED_FUNCTION_60();
  v4 = OUTLINED_FUNCTION_350(v1, v2, v3);
  v0[224] = v4;
  OUTLINED_FUNCTION_69(v4);
  v0[225] = v5;
  v0[226] = OUTLINED_FUNCTION_167();
  v0[227] = swift_task_alloc();
  v6 = sub_1D560BB08();
  v0[228] = v6;
  OUTLINED_FUNCTION_69(v6);
  v0[229] = v7;
  v0[230] = OUTLINED_FUNCTION_167();
  v0[231] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D51C9E50()
{
  OUTLINED_FUNCTION_76_2();
  v5 = *(v1 + 1768);
  *(v1 + 1856) = sub_1D51BE928(&unk_1F50A3CB8);
  v6 = *(v5 + 16);
  *(v1 + 1864) = v6;
  if (!v6)
  {
    OUTLINED_FUNCTION_198_3();

    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_247();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_231_0();
  v7 = OUTLINED_FUNCTION_229_1();
  v8(v7);
  if (qword_1EDD54478 != -1)
  {
    OUTLINED_FUNCTION_2_5(&qword_1EDD54478);
  }

  v9 = v5 | 0x8000000000000000;
  v10 = OUTLINED_FUNCTION_155_5();
  __swift_project_value_buffer(v10, qword_1EDD76A90);
  v11 = OUTLINED_FUNCTION_142_5();
  v4(v11);
  v12 = v2;
  v13 = sub_1D560C738();
  v14 = sub_1D56156B8();
  OUTLINED_FUNCTION_104_5(v14);
  OUTLINED_FUNCTION_210_2();
  if (v15)
  {
    OUTLINED_FUNCTION_142();
    v119 = OUTLINED_FUNCTION_37_0();
    *v2 = 136315138;
    OUTLINED_FUNCTION_33_36();
    sub_1D51D2B88(v16, v17, MEMORY[0x1E6968158]);
    OUTLINED_FUNCTION_263();
    sub_1D56160F8();
    v117 = v0;
    v0 = v9;
    OUTLINED_FUNCTION_261();
    v18 = OUTLINED_FUNCTION_107_8();
    v19 = (v3)(v18);
    OUTLINED_FUNCTION_347(v19, v20, v21, v22, v23, v24);
    OUTLINED_FUNCTION_368();
    *(v2 + 4) = v2;
    OUTLINED_FUNCTION_274(&dword_1D4E3F000, v25, v117, "Rejecting flexml analysis updated between %s.");
    v12 = v119;
    OUTLINED_FUNCTION_170_2();
    OUTLINED_FUNCTION_118();
  }

  else
  {

    v28 = OUTLINED_FUNCTION_107_8();
    (v3)(v28);
  }

  *(v1 + 1896) = v3;
  OUTLINED_FUNCTION_267();
  OUTLINED_FUNCTION_114_5();
  if (v30)
  {
    OUTLINED_FUNCTION_22_41(v29);
    sub_1D4F0029C();
    v13 = v110;
  }

  OUTLINED_FUNCTION_63_13();
  *(v32 + 32) = v31 + 11;
  *(v32 + 40) = v9;
  *(v32 + 104) = 0;
  if (qword_1EDD5A228 != -1)
  {
    OUTLINED_FUNCTION_14_55(&qword_1EDD5A228);
    v12 = v13[2];
  }

  OUTLINED_FUNCTION_196_1();
  if (v12 >= v3 >> 1)
  {
    OUTLINED_FUNCTION_26_44();
    sub_1D4F0029C();
    v13 = v111;
  }

  OUTLINED_FUNCTION_90_14();
  *(v33 + 32) = v9;
  *(v33 + 40) = v0;
  OUTLINED_FUNCTION_8_67(v33);
  OUTLINED_FUNCTION_168_3();
  if (!(v36 ^ v37 | v35))
  {
    OUTLINED_FUNCTION_24_43(v34);
    sub_1D4F0029C();
    v13 = v112;
  }

  OUTLINED_FUNCTION_223_1();
  OUTLINED_FUNCTION_75_14();
  OUTLINED_FUNCTION_158_5(v38);
  OUTLINED_FUNCTION_19_50(v39);
  OUTLINED_FUNCTION_195_2();
  if (v2 > (&qword_1EC7E9980 >> 1))
  {
    OUTLINED_FUNCTION_26_44();
    sub_1D4F0029C();
    v13 = v113;
  }

  OUTLINED_FUNCTION_72_18();
  *(v40 + 32) = v1 + 1520;
  *(v40 + 40) = v1 + 1240;
  OUTLINED_FUNCTION_11_70(v40);
  OUTLINED_FUNCTION_167_2();
  if (!(v36 ^ v37 | v35))
  {
    OUTLINED_FUNCTION_22_41(v41);
    sub_1D4F0029C();
    v13 = v114;
  }

  OUTLINED_FUNCTION_42_24();
  sub_1D56160F8();
  OUTLINED_FUNCTION_77_8();
  if (v30)
  {
    OUTLINED_FUNCTION_24_43(v42);
    sub_1D4F0029C();
    v13 = v115;
  }

  OUTLINED_FUNCTION_104_12();
  OUTLINED_FUNCTION_15_57(v43, *(v1 + 400), *(v1 + 416), *(v1 + 432));
  OUTLINED_FUNCTION_260();
  if (!(v36 ^ v37 | v35))
  {
    OUTLINED_FUNCTION_22_41(v44);
    sub_1D4F0029C();
    v13 = v116;
  }

  OUTLINED_FUNCTION_63_13();
  OUTLINED_FUNCTION_99_11(v45);
  OUTLINED_FUNCTION_8_67(v46);
  v47 = aFlexAnalysis[1];
  v48 = v13[3];
  OUTLINED_FUNCTION_310();
  if (v0 > (v48 >> 1))
  {
    OUTLINED_FUNCTION_31_32();
    sub_1D4F0029C();
  }

  v49 = v1 + 568;
  OUTLINED_FUNCTION_56_20();
  OUTLINED_FUNCTION_10_68(v50);
  OUTLINED_FUNCTION_134_6();
  if (!(v36 ^ v37 | v35))
  {
    OUTLINED_FUNCTION_22_41(v51);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_35_34();
  OUTLINED_FUNCTION_12_58(v52);
  OUTLINED_FUNCTION_345();
  if (v0 > ((v1 + 512) >> 1))
  {
    OUTLINED_FUNCTION_34_35();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_59_15();
  *(v53 + 32) = v49;
  *(v53 + 40) = v47;
  OUTLINED_FUNCTION_8_67(v53);
  OUTLINED_FUNCTION_213_1();
  if (!(v36 ^ v37 | v35))
  {
    OUTLINED_FUNCTION_22_41(v54);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_35_34();
  OUTLINED_FUNCTION_10_68(v55);
  OUTLINED_FUNCTION_300();
  OUTLINED_FUNCTION_364();
  if (v0 > (0x80000001D56874E0 >> 1))
  {
    OUTLINED_FUNCTION_29_36();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_47_27();
  OUTLINED_FUNCTION_8_67(v56);
  OUTLINED_FUNCTION_212_2();
  if (!(v36 ^ v37 | v35))
  {
    OUTLINED_FUNCTION_22_41(v57);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_232_0();
  OUTLINED_FUNCTION_63_13();
  *(v58 + 32) = v60;
  *(v58 + 40) = v59;
  OUTLINED_FUNCTION_11_70(v58);
  OUTLINED_FUNCTION_228_1();
  OUTLINED_FUNCTION_363();
  if (v0 > ((v1 + 792) >> 1))
  {
    OUTLINED_FUNCTION_29_36();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_59_15();
  *(v61 + 32) = v49;
  *(v61 + 40) = v47;
  OUTLINED_FUNCTION_10_68(v61);
  OUTLINED_FUNCTION_216_1();
  if (!(v36 ^ v37 | v35))
  {
    OUTLINED_FUNCTION_22_41(v62);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_63_13();
  *(v63 + 32) = 0x20200A2C30203D20;
  OUTLINED_FUNCTION_232_0();
  *(v64 + 40) = v65;
  OUTLINED_FUNCTION_11_70(v64);
  OUTLINED_FUNCTION_228_1();

  if (v1 + 1251 > ((v1 + 904) >> 1))
  {
    OUTLINED_FUNCTION_29_36();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_59_15();
  *(v66 + 32) = v49;
  *(v66 + 40) = v47;
  OUTLINED_FUNCTION_8_67(v66);
  OUTLINED_FUNCTION_215_0();
  if (!(v36 ^ v37 | v35))
  {
    OUTLINED_FUNCTION_22_41(v67);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_39_27();
  *(v69 + 32) = v68 - 1;
  *(v69 + 40) = 0x80000001D5687500;
  OUTLINED_FUNCTION_11_70(v69);
  OUTLINED_FUNCTION_300();
  OUTLINED_FUNCTION_362();
  if (v1 + 1251 > ((v1 + 1016) >> 1))
  {
    OUTLINED_FUNCTION_29_36();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_47_27();
  OUTLINED_FUNCTION_8_67(v70);
  OUTLINED_FUNCTION_217_1();
  if (!(v36 ^ v37 | v35))
  {
    OUTLINED_FUNCTION_20_51(v71);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_60_15();
  OUTLINED_FUNCTION_11_70(v72);
  sub_1D560BAE8();
  sub_1D560C208();
  v73 = OUTLINED_FUNCTION_143_6();
  v118 = v74;
  v74(v73);
  *(v1 + 1696) = MEMORY[0x1E69E63B0];
  OUTLINED_FUNCTION_194_3(&off_1F50C0338);
  OUTLINED_FUNCTION_172_3();
  OUTLINED_FUNCTION_89_11();
  if (v30)
  {
    OUTLINED_FUNCTION_22_41(v75);
    sub_1D4F0029C();
  }

  v76 = (v1 + 1296);
  v77 = OUTLINED_FUNCTION_50_20();
  OUTLINED_FUNCTION_253(v77);
  __swift_destroy_boxed_opaque_existential_1((v1 + 1672));
  OUTLINED_FUNCTION_84_10();
  if (v30)
  {
    OUTLINED_FUNCTION_22_41(v78);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_81_17();
  OUTLINED_FUNCTION_76_11();
  OUTLINED_FUNCTION_73_12();
  v79[2].n128_u64[0] = v81;
  v79[2].n128_u64[1] = v80;
  OUTLINED_FUNCTION_21(v79, *v76, *(v1 + 1312), *(v1 + 1328));
  v83 = qword_1EC7E9AE8;
  v82 = off_1EC7E9AF0;
  OUTLINED_FUNCTION_159_6();
  if (v76 > ((v1 + 1128) >> 1))
  {
    OUTLINED_FUNCTION_29_36();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_59_15();
  *(v84 + 32) = v83;
  *(v84 + 40) = v82;
  OUTLINED_FUNCTION_8_67(v84);
  OUTLINED_FUNCTION_135_8();
  if (!(v36 ^ v37 | v35))
  {
    OUTLINED_FUNCTION_20_51(v85);
    sub_1D4F0029C();
  }

  v86 = *(v1 + 1808);
  OUTLINED_FUNCTION_68_12();
  OUTLINED_FUNCTION_11_70(v87);
  sub_1D560BAC8();
  sub_1D560C208();
  v88 = OUTLINED_FUNCTION_169_1();
  v118(v88);
  *(v1 + 1656) = MEMORY[0x1E69E63B0];
  OUTLINED_FUNCTION_193_1(&off_1F50C0338);
  OUTLINED_FUNCTION_67_21();
  if (v30)
  {
    OUTLINED_FUNCTION_22_41(v89);
    sub_1D4F0029C();
  }

  v90 = (v1 + 232);
  v91 = OUTLINED_FUNCTION_50_20();
  OUTLINED_FUNCTION_254(v91);
  __swift_destroy_boxed_opaque_existential_1((v1 + 1632));
  OUTLINED_FUNCTION_84_10();
  if (v30)
  {
    OUTLINED_FUNCTION_22_41(v92);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_76_11();
  OUTLINED_FUNCTION_302();
  OUTLINED_FUNCTION_81_17();
  v93[2].n128_u64[0] = v95;
  v93[2].n128_u64[1] = v94;
  OUTLINED_FUNCTION_21(v93, *v90, *(v1 + 248), *(v1 + 264));
  OUTLINED_FUNCTION_159_6();
  if (v90 > ((v1 + 1408) >> 1))
  {
    OUTLINED_FUNCTION_29_36();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_47_27();
  OUTLINED_FUNCTION_8_67(v96);
  OUTLINED_FUNCTION_101_5();
  if (!(v36 ^ v37 | v35))
  {
    OUTLINED_FUNCTION_22_41(v97);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_41_29();
  sub_1D56160F8();
  OUTLINED_FUNCTION_112_10();
  if (v30)
  {
    OUTLINED_FUNCTION_22_41(v98);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_109_12();
  OUTLINED_FUNCTION_15_57(v99, *v86, v86[1], v86[2]);
  OUTLINED_FUNCTION_203_2();
  if (!(v36 ^ v37 | v35))
  {
    OUTLINED_FUNCTION_24_43(v100);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_59_15();
  OUTLINED_FUNCTION_148_7(v101);
  OUTLINED_FUNCTION_21(v102, *(v1 + 176), *(v1 + 192), *(v1 + 208));
  OUTLINED_FUNCTION_150_7(MEMORY[0x1E69E7CC0], v1 + 1712);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v1 + 1904) = v103;
  *v103 = v104;
  OUTLINED_FUNCTION_118_8(v103);
  OUTLINED_FUNCTION_247();

  return sub_1D52EF24C(v105, v106, v107);
}

uint64_t sub_1D51CA774()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 1912) = v0;

  sub_1D51D2984(v3 + 1712);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D51CA874()
{
  OUTLINED_FUNCTION_100();
  v113 = v3;
  v9 = OUTLINED_FUNCTION_226_1();
  v10(v9);
  if (v0 == v1)
  {
    OUTLINED_FUNCTION_198_3();

    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_246();

    __asm { BRAA            X1, X16 }
  }

  v13 = OUTLINED_FUNCTION_164_3();
  v14(v13);
  if (qword_1EDD54478 != -1)
  {
    OUTLINED_FUNCTION_2_5(&qword_1EDD54478);
  }

  v15 = OUTLINED_FUNCTION_155_5();
  __swift_project_value_buffer(v15, qword_1EDD76A90);
  v16 = OUTLINED_FUNCTION_142_5();
  v6(v16);
  v17 = v4;
  v18 = sub_1D560C738();
  v19 = sub_1D56156B8();
  OUTLINED_FUNCTION_104_5(v19);
  OUTLINED_FUNCTION_210_2();
  if (v20)
  {
    OUTLINED_FUNCTION_142();
    v110 = OUTLINED_FUNCTION_37_0();
    v112 = v110;
    *v4 = 136315138;
    OUTLINED_FUNCTION_33_36();
    sub_1D51D2B88(v21, v22, MEMORY[0x1E6968158]);
    OUTLINED_FUNCTION_263();
    sub_1D56160F8();
    OUTLINED_FUNCTION_261();
    v23 = OUTLINED_FUNCTION_107_8();
    (v5)(v23);
    sub_1D4E6835C(v7, v8, &v112);
    OUTLINED_FUNCTION_368();
    *(v4 + 4) = v4;
    OUTLINED_FUNCTION_274(&dword_1D4E3F000, v24, v2, "Rejecting flexml analysis updated between %s.");
    v17 = v110;
    OUTLINED_FUNCTION_170_2();
    OUTLINED_FUNCTION_118();
  }

  else
  {

    v25 = OUTLINED_FUNCTION_107_8();
    (v5)(v25);
  }

  *(v3 + 1896) = v5;
  OUTLINED_FUNCTION_267();
  OUTLINED_FUNCTION_114_5();
  if (v27)
  {
    OUTLINED_FUNCTION_22_41(v26);
    sub_1D4F0029C();
    v18 = v109;
  }

  OUTLINED_FUNCTION_321();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_105_10();
  *(v30 + 32) = v28 + 11;
  *(v30 + 40) = v29;
  *(v30 + 104) = 0;
  if (qword_1EDD5A228 != -1)
  {
    OUTLINED_FUNCTION_14_55(&qword_1EDD5A228);
    v17 = v18[2];
  }

  v31 = v3 + 1520;
  OUTLINED_FUNCTION_196_1();
  if (v17 >= v5 >> 1)
  {
    OUTLINED_FUNCTION_26_44();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_90_14();
  *(v32 + 32) = v7;
  *(v32 + 40) = v2;
  OUTLINED_FUNCTION_8_67(v32);
  OUTLINED_FUNCTION_168_3();
  if (!(v35 ^ v36 | v34))
  {
    OUTLINED_FUNCTION_24_43(v33);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_223_1();
  OUTLINED_FUNCTION_75_14();
  OUTLINED_FUNCTION_158_5(v37);
  OUTLINED_FUNCTION_19_50(v38);
  OUTLINED_FUNCTION_195_2();
  if (v4 > (&qword_1EC7E9980 >> 1))
  {
    OUTLINED_FUNCTION_26_44();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_72_18();
  *(v39 + 32) = v31;
  *(v39 + 40) = v3 + 1240;
  OUTLINED_FUNCTION_11_70(v39);
  OUTLINED_FUNCTION_167_2();
  if (!(v35 ^ v36 | v34))
  {
    OUTLINED_FUNCTION_22_41(v40);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_42_24();
  sub_1D56160F8();
  OUTLINED_FUNCTION_77_8();
  if (v27)
  {
    OUTLINED_FUNCTION_24_43(v41);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_104_12();
  OUTLINED_FUNCTION_15_57(v42, *(v3 + 400), *(v3 + 416), *(v3 + 432));
  OUTLINED_FUNCTION_260();
  if (!(v35 ^ v36 | v34))
  {
    OUTLINED_FUNCTION_22_41(v43);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_63_13();
  OUTLINED_FUNCTION_99_11(v44);
  OUTLINED_FUNCTION_10_68(v45);
  OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_310();
  if (v2 > ((v3 + 456) >> 1))
  {
    OUTLINED_FUNCTION_34_35();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_56_20();
  OUTLINED_FUNCTION_11_70(v46);
  OUTLINED_FUNCTION_134_6();
  if (!(v35 ^ v36 | v34))
  {
    OUTLINED_FUNCTION_22_41(v47);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_35_34();
  OUTLINED_FUNCTION_12_58(v48);
  OUTLINED_FUNCTION_346();
  if (v2 > (v31 >> 1))
  {
    OUTLINED_FUNCTION_51_22();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_59_15();
  *(v49 + 32) = v3 + 568;
  *(v49 + 40) = v4;
  OUTLINED_FUNCTION_10_68(v49);
  OUTLINED_FUNCTION_213_1();
  if (!(v35 ^ v36 | v34))
  {
    OUTLINED_FUNCTION_22_41(v50);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_35_34();
  OUTLINED_FUNCTION_8_67(v51);
  OUTLINED_FUNCTION_332();
  OUTLINED_FUNCTION_364();
  if (v2 > ((v3 + 680) >> 1))
  {
    OUTLINED_FUNCTION_51_22();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_59_15();
  *(v52 + 32) = 0x80000001D56874E0;
  *(v52 + 40) = v4;
  OUTLINED_FUNCTION_10_68(v52);
  OUTLINED_FUNCTION_212_2();
  if (!(v35 ^ v36 | v34))
  {
    OUTLINED_FUNCTION_22_41(v53);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_232_0();
  OUTLINED_FUNCTION_63_13();
  *(v54 + 32) = 0x20200A2C30203D20;
  *(v54 + 40) = v55;
  OUTLINED_FUNCTION_8_67(v54);
  OUTLINED_FUNCTION_332();
  OUTLINED_FUNCTION_363();
  if (v2 > ((v3 + 792) >> 1))
  {
    OUTLINED_FUNCTION_51_22();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_59_15();
  *(v56 + 32) = 0x80000001D56874E0;
  *(v56 + 40) = v4;
  OUTLINED_FUNCTION_12_58(v56);
  OUTLINED_FUNCTION_216_1();
  if (!(v35 ^ v36 | v34))
  {
    OUTLINED_FUNCTION_22_41(v57);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_63_13();
  OUTLINED_FUNCTION_232_0();
  *(v58 + 32) = 0x20200A2C30203D20;
  *(v58 + 40) = v59;
  OUTLINED_FUNCTION_8_67(v58);
  OUTLINED_FUNCTION_358();
  if (v2 > (0x80000001D56874E0 >> 1))
  {
    OUTLINED_FUNCTION_29_36();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_56_20();
  OUTLINED_FUNCTION_12_58(v60);
  OUTLINED_FUNCTION_215_0();
  if (!(v35 ^ v36 | v34))
  {
    OUTLINED_FUNCTION_22_41(v61);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_105_10();
  OUTLINED_FUNCTION_321();
  *(v64 + 32) = v62 - 1;
  *(v64 + 40) = v63;
  v65 = OUTLINED_FUNCTION_133_4();
  *(v66 + 96) = *(v3 + 1064);
  OUTLINED_FUNCTION_86_14(v65, v67, v68);
  OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_362();
  if (v2 > ((v3 + 1016) >> 1))
  {
    OUTLINED_FUNCTION_34_35();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_56_20();
  OUTLINED_FUNCTION_11_70(v69);
  OUTLINED_FUNCTION_217_1();
  if (!(v35 ^ v36 | v34))
  {
    OUTLINED_FUNCTION_20_51(v70);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_60_15();
  OUTLINED_FUNCTION_12_58(v71);
  sub_1D560BAE8();
  sub_1D560C208();
  v72 = OUTLINED_FUNCTION_143_6();
  v111 = v73;
  v73(v72);
  *(v3 + 1696) = MEMORY[0x1E69E63B0];
  OUTLINED_FUNCTION_194_3(&off_1F50C0338);
  OUTLINED_FUNCTION_172_3();
  OUTLINED_FUNCTION_89_11();
  if (v27)
  {
    OUTLINED_FUNCTION_22_41(v74);
    sub_1D4F0029C();
  }

  v75 = (v3 + 1296);
  v76 = OUTLINED_FUNCTION_50_20();
  OUTLINED_FUNCTION_253(v76);
  __swift_destroy_boxed_opaque_existential_1((v3 + 1672));
  OUTLINED_FUNCTION_84_10();
  if (v27)
  {
    OUTLINED_FUNCTION_22_41(v77);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_81_17();
  OUTLINED_FUNCTION_76_11();
  OUTLINED_FUNCTION_73_12();
  v78[2].n128_u64[0] = v80;
  v78[2].n128_u64[1] = v79;
  OUTLINED_FUNCTION_21(v78, *v75, *(v3 + 1312), *(v3 + 1328));
  v82 = qword_1EC7E9AE8;
  v81 = off_1EC7E9AF0;
  OUTLINED_FUNCTION_159_6();
  if (v75 > ((v3 + 1072) >> 1))
  {
    OUTLINED_FUNCTION_29_36();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_59_15();
  *(v83 + 32) = v82;
  *(v83 + 40) = v81;
  OUTLINED_FUNCTION_8_67(v83);
  OUTLINED_FUNCTION_135_8();
  if (!(v35 ^ v36 | v34))
  {
    OUTLINED_FUNCTION_20_51(v84);
    sub_1D4F0029C();
  }

  v85 = *(v3 + 1808);
  OUTLINED_FUNCTION_68_12();
  OUTLINED_FUNCTION_11_70(v86);
  sub_1D560BAC8();
  sub_1D560C208();
  v87 = OUTLINED_FUNCTION_169_1();
  v111(v87);
  *(v3 + 1656) = MEMORY[0x1E69E63B0];
  OUTLINED_FUNCTION_193_1(&off_1F50C0338);
  OUTLINED_FUNCTION_67_21();
  if (v27)
  {
    OUTLINED_FUNCTION_22_41(v88);
    sub_1D4F0029C();
  }

  v89 = (v3 + 232);
  v90 = OUTLINED_FUNCTION_50_20();
  OUTLINED_FUNCTION_254(v90);
  __swift_destroy_boxed_opaque_existential_1((v3 + 1632));
  OUTLINED_FUNCTION_84_10();
  if (v27)
  {
    OUTLINED_FUNCTION_22_41(v91);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_76_11();
  OUTLINED_FUNCTION_302();
  OUTLINED_FUNCTION_81_17();
  v92[2].n128_u64[0] = v94;
  v92[2].n128_u64[1] = v93;
  OUTLINED_FUNCTION_21(v92, *v89, *(v3 + 248), *(v3 + 264));
  OUTLINED_FUNCTION_159_6();
  if (v89 > ((v3 + 1408) >> 1))
  {
    OUTLINED_FUNCTION_29_36();
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_47_27();
  OUTLINED_FUNCTION_8_67(v95);
  OUTLINED_FUNCTION_101_5();
  if (!(v35 ^ v36 | v34))
  {
    OUTLINED_FUNCTION_22_41(v96);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_41_29();
  sub_1D56160F8();
  OUTLINED_FUNCTION_112_10();
  if (v27)
  {
    OUTLINED_FUNCTION_22_41(v97);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_109_12();
  OUTLINED_FUNCTION_15_57(v98, *v85, v85[1], v85[2]);
  OUTLINED_FUNCTION_203_2();
  if (!(v35 ^ v36 | v34))
  {
    OUTLINED_FUNCTION_24_43(v99);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_59_15();
  OUTLINED_FUNCTION_148_7(v100);
  OUTLINED_FUNCTION_21(v101, *(v3 + 176), *(v3 + 192), *(v3 + 208));
  OUTLINED_FUNCTION_150_7(MEMORY[0x1E69E7CC0], v3 + 1712);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v3 + 1904) = v102;
  *v102 = v103;
  OUTLINED_FUNCTION_118_8(v102);
  OUTLINED_FUNCTION_246();

  return sub_1D52EF24C(v104, v105, v106);
}

uint64_t sub_1D51CB170()
{
  OUTLINED_FUNCTION_80();
  (*(v0 + 1896))(*(v0 + 1848), *(v0 + 1824));

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D51CB21C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[34] = a2;
  v3[35] = a3;
  v3[33] = a1;
  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1D51CB234()
{
  v2 = sub_1D51BE928(&unk_1F50A3CE0);
  OUTLINED_FUNCTION_268();
  v4 = v3;
  OUTLINED_FUNCTION_207_1();
  OUTLINED_FUNCTION_129_4();
  if (v6)
  {
    OUTLINED_FUNCTION_22_41(v5);
    sub_1D4F0029C();
    v4 = v148;
  }

  OUTLINED_FUNCTION_71_14();
  OUTLINED_FUNCTION_322(v7);
  if (qword_1EDD5A228 != -1)
  {
    OUTLINED_FUNCTION_14_55(&qword_1EDD5A228);
    v0 = *(v4 + 16);
  }

  v8 = qword_1EC7E9980;
  v9 = off_1EC7E9988;
  v10 = *(v4 + 24);
  v11 = v0 + 1;

  if (v0 >= v10 >> 1)
  {
    OUTLINED_FUNCTION_79_9();
    sub_1D4F0029C();
    v4 = v149;
  }

  *(v4 + 16) = v11;
  v12 = v4 + 80 * v0;
  *(v12 + 32) = v8;
  *(v12 + 40) = v9;
  OUTLINED_FUNCTION_9_70(v12, v172, v196, v219, v242, v265, v288, v310, v333, v356, v379);
  v13 = *(v4 + 24);
  if ((v0 + 2) > (v13 >> 1))
  {
    OUTLINED_FUNCTION_20_51(v13);
    sub_1D4F0029C();
    v4 = v150;
  }

  OUTLINED_FUNCTION_127_7();
  OUTLINED_FUNCTION_106_8(v4 + v11 * v14);
  OUTLINED_FUNCTION_9_70(v15, v173, v197, v220, v243, v266, v289, v311, v334, v357, v380);
  v16 = qword_1EC7E9980;
  v17 = off_1EC7E9988;
  v18 = *(v4 + 24);

  if ((v0 + 3) > (v18 >> 1))
  {
    OUTLINED_FUNCTION_79_9();
    sub_1D4F0029C();
    v4 = v151;
  }

  *(v4 + 16) = v0 + 3;
  v19 = v4 + 80 * (v0 + 2);
  *(v19 + 32) = v16;
  *(v19 + 40) = v17;
  OUTLINED_FUNCTION_9_70(v19, v174, v198, v221, v244, v267, v290, v312, v335, v358, v381);
  OUTLINED_FUNCTION_167_2();
  if (!(v22 ^ v23 | v21))
  {
    OUTLINED_FUNCTION_22_41(v20);
    sub_1D4F0029C();
    v4 = v152;
  }

  OUTLINED_FUNCTION_76_11();
  OUTLINED_FUNCTION_276(v24);
  OUTLINED_FUNCTION_9_70(v25, v175, v199, v222, v245, v268, v291, v313, v336, v359, v382);
  v1[31] = v2;
  v26 = sub_1D56160F8();
  v28 = v27;
  v30 = *(v4 + 16);
  v29 = *(v4 + 24);
  if (v30 >= v29 >> 1)
  {
    OUTLINED_FUNCTION_20_51(v29);
    sub_1D4F0029C();
    v4 = v153;
  }

  OUTLINED_FUNCTION_127_7();
  v32 = v4 + v30 * v31;
  *(v32 + 32) = v26;
  *(v32 + 40) = v28;
  OUTLINED_FUNCTION_9_70(v32, v176, v200, v223, v246, v269, v292, v314, v337, v360, v383);
  v33 = *(v4 + 24);
  if ((v30 + 2) > (v33 >> 1))
  {
    OUTLINED_FUNCTION_22_41(v33);
    sub_1D4F0029C();
    v4 = v154;
  }

  OUTLINED_FUNCTION_71_14();
  OUTLINED_FUNCTION_99_11(v34);
  OUTLINED_FUNCTION_9_70(v35, v177, v201, v224, v247, v270, v293, v315, v338, v361, v384);
  v36 = qword_1EC7E9B10;
  v37 = off_1EC7E9B18;
  v38 = *(v4 + 24);

  if ((v30 + 3) > (v38 >> 1))
  {
    OUTLINED_FUNCTION_26_44();
    sub_1D4F0029C();
    v4 = v155;
  }

  OUTLINED_FUNCTION_90_14();
  *(v39 + 32) = v36;
  *(v39 + 40) = v37;
  OUTLINED_FUNCTION_13_55(v39, v178, v202, v225, v248, v271, v294, v316, v339, v362, v385);
  OUTLINED_FUNCTION_152_4(v40);
  v42 = v41 | 0x8000000000000000;
  v43 = *(v4 + 24);
  if ((v30 + 4) > (v43 >> 1))
  {
    OUTLINED_FUNCTION_22_41(v43);
    sub_1D4F0029C();
    v4 = v156;
  }

  OUTLINED_FUNCTION_71_14();
  *(v44 + 32) = 0xD000000000000011;
  *(v44 + 40) = v42;
  OUTLINED_FUNCTION_9_70(v44, v179, v203, v226, v249, v272, v2, v317, v340, v363, v386);
  v46 = qword_1EC7E9B38;
  v45 = off_1EC7E9B40;
  v47 = *(v4 + 24);

  if ((v30 + 5) > (v47 >> 1))
  {
    OUTLINED_FUNCTION_26_44();
    sub_1D4F0029C();
    v4 = v157;
  }

  OUTLINED_FUNCTION_90_14();
  *(v48 + 32) = v46;
  *(v48 + 40) = v45;
  OUTLINED_FUNCTION_9_70(v48, v180, v204, v227, v250, v273, v295, v318, v341, v364, v387);
  v49 = *(v4 + 24);
  if ((v30 + 6) > (v49 >> 1))
  {
    OUTLINED_FUNCTION_22_41(v49);
    sub_1D4F0029C();
    v4 = v158;
  }

  OUTLINED_FUNCTION_71_14();
  *(v50 + 32) = 0xD000000000000011;
  *(v50 + 40) = v42;
  OUTLINED_FUNCTION_9_70(v50, v181, v205, v228, v251, v274, v296, v319, v342, v365, v388);
  v51 = qword_1EC7E99A8;
  v52 = off_1EC7E99B0;
  v53 = *(v4 + 24);

  if ((v30 + 7) > (v53 >> 1))
  {
    OUTLINED_FUNCTION_26_44();
    sub_1D4F0029C();
    v4 = v159;
  }

  OUTLINED_FUNCTION_90_14();
  *(v54 + 32) = v51;
  *(v54 + 40) = v52;
  OUTLINED_FUNCTION_9_70(v54, v182, v206, v229, v252, v275, v297, v320, v343, v366, v389);
  v55 = *(v4 + 24);
  if ((v30 + 8) > (v55 >> 1))
  {
    OUTLINED_FUNCTION_22_41(v55);
    sub_1D4F0029C();
    v4 = v160;
  }

  OUTLINED_FUNCTION_71_14();
  strcpy((v56 + 32), " = 0,\n        ");
  *(v56 + 47) = -18;
  OUTLINED_FUNCTION_9_70(v56, v183, v207, v230, v253, v276, v298, v321, v344, v367, v390);
  OUTLINED_FUNCTION_300();
  v57 = v30 + 9;

  if ((v30 + 9) > (v38 >> 1))
  {
    OUTLINED_FUNCTION_79_9();
    sub_1D4F0029C();
    v4 = v161;
  }

  *(v4 + 16) = v57;
  v58 = v4 + 80 * (v30 + 8);
  *(v58 + 32) = v53;
  *(v58 + 40) = v30 + 7;
  OUTLINED_FUNCTION_9_70(v58, v184, v208, v231, v254, v277, v299, v322, v345, v368, v391);
  v59 = *(v4 + 24);
  if ((v30 + 10) > (v59 >> 1))
  {
    OUTLINED_FUNCTION_20_51(v59);
    sub_1D4F0029C();
    v4 = v162;
  }

  OUTLINED_FUNCTION_127_7();
  v61 = v4 + v57 * v60;
  strcpy((v61 + 32), " = 0,\n        ");
  *(v61 + 47) = -18;
  OUTLINED_FUNCTION_9_70(v61, v185, v209, v232, v255, v278, v300, v323, v346, v369, v392);
  v62 = aIsBackfill[0];
  v63 = aIsBackfill[1];
  v64 = *(v4 + 24);

  if ((v30 + 11) > (v64 >> 1))
  {
    OUTLINED_FUNCTION_54_18();
    sub_1D4F0029C();
    v4 = v163;
  }

  OUTLINED_FUNCTION_71_14();
  *(v65 + 32) = v62;
  *(v65 + 40) = v63;
  OUTLINED_FUNCTION_13_55(v65, v186, v210, v233, v256, v279, v301, v324, v347, v370, v393);
  OUTLINED_FUNCTION_152_4(v66);
  v68 = v67 | 0x8000000000000000;
  v69 = *(v4 + 24);
  if ((v30 + 12) > (v69 >> 1))
  {
    OUTLINED_FUNCTION_20_51(v69);
    sub_1D4F0029C();
    v4 = v164;
  }

  OUTLINED_FUNCTION_90_14();
  *(v70 + 32) = 0xD000000000000010;
  *(v70 + 40) = v68;
  OUTLINED_FUNCTION_9_70(v70, v187, v211, v234, v257, v280, v302, v325, v348, v371, v394);
  v71 = qword_1EC7E9B38;
  v72 = off_1EC7E9B40;
  v73 = *(v4 + 24);

  if ((v30 + 13) > (v73 >> 1))
  {
    OUTLINED_FUNCTION_54_18();
    sub_1D4F0029C();
    v4 = v165;
  }

  OUTLINED_FUNCTION_71_14();
  *(v74 + 32) = v71;
  *(v74 + 40) = v72;
  OUTLINED_FUNCTION_9_70(v74, v188, v212, v235, v258, v281, v303, v326, v349, v372, v395);
  v75 = *(v4 + 24);
  if ((v30 + 14) > (v75 >> 1))
  {
    OUTLINED_FUNCTION_20_51(v75);
    sub_1D4F0029C();
    v4 = v166;
  }

  OUTLINED_FUNCTION_90_14();
  OUTLINED_FUNCTION_276(v76);
  OUTLINED_FUNCTION_9_70(v77, v189, v213, v236, v259, v282, v304, v327, v350, v373, v396);
  v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBFA0, &qword_1D5620C40);
  v78 = sub_1D51D2E5C(&qword_1EDD52760, &qword_1EC7EBFA0, &qword_1D5620C40);
  OUTLINED_FUNCTION_9_0();
  v1[7] = 0xD00000000000001ELL;
  v1[8] = v79;
  v1[9] = 60;
  v1[10] = 0xE100000000000000;
  v1[11] = 95;
  v1[12] = 0xE100000000000000;
  v80 = sub_1D4F53278();

  v81 = MEMORY[0x1E69E6158];
  v190 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_3_31();
  v1[13] = OUTLINED_FUNCTION_295(v82, v83, v84, v85, v86, v87, v88, v89, v190, v80, v80, v80);
  v1[14] = v90;
  v1[15] = 62;
  v1[16] = 0xE100000000000000;
  v1[17] = 95;
  v1[18] = 0xE100000000000000;
  OUTLINED_FUNCTION_3_31();
  v99 = OUTLINED_FUNCTION_295(v91, v92, v93, v94, v95, v96, v97, v98, v81, v80, v80, v80);
  v101 = v100;

  v1[19] = v99;
  v1[20] = v101;
  v1[21] = 46;
  v1[22] = 0xE100000000000000;
  v1[23] = 95;
  v1[24] = 0xE100000000000000;
  OUTLINED_FUNCTION_3_31();
  OUTLINED_FUNCTION_295(v102, v103, v104, v105, v106, v107, v108, v109, v81, v80, v80, v80);

  OUTLINED_FUNCTION_337();
  v1[29] = 95;
  v1[30] = 0xE100000000000000;
  OUTLINED_FUNCTION_3_31();
  v118 = OUTLINED_FUNCTION_295(v110, v111, v112, v113, v114, v115, v116, v117, v81, v80, v80, v80);
  v120 = v119;

  v122 = *(v4 + 16);
  v121 = *(v4 + 24);
  v123 = v121 >> 1;
  if (v121 >> 1 <= v122)
  {
    OUTLINED_FUNCTION_22_41(v121);
    sub_1D4F0029C();
    v4 = v167;
    v121 = *(v167 + 24);
    v123 = v121 >> 1;
  }

  v124 = v1[33];
  *(v4 + 16) = v122 + 1;
  v125 = v4 + 80 * v122;
  *(v125 + 32) = v124;
  *(v125 + 40) = v328;
  *(v125 + 56) = v283;
  *(v125 + 64) = v78;
  *(v125 + 72) = v118;
  *(v125 + 80) = v120;
  *(v125 + 88) = &unk_1D5640930;
  *(v125 + 96) = 0;
  *(v125 + 104) = 2;
  if (v123 < (v122 + 2))
  {
    OUTLINED_FUNCTION_20_51(v121);
    sub_1D4F0029C();
    v4 = v168;
  }

  OUTLINED_FUNCTION_90_14();
  OUTLINED_FUNCTION_302();
  OUTLINED_FUNCTION_330(v126);
  OUTLINED_FUNCTION_9_70(v127, v191, v214, v237, v260, v283, v305, v328, v351, v374, v397);
  v129 = *v128;
  v130 = v128[1];
  v131 = *(v4 + 24);

  if ((v122 + 3) > (v131 >> 1))
  {
    OUTLINED_FUNCTION_54_18();
    sub_1D4F0029C();
    v4 = v169;
  }

  OUTLINED_FUNCTION_71_14();
  *(v132 + 32) = v129;
  *(v132 + 40) = v130;
  OUTLINED_FUNCTION_9_70(v132, v192, v215, v238, v261, v284, v306, v329, v352, v375, v398);
  v133 = *(v4 + 24);
  if ((v122 + 4) > (v133 >> 1))
  {
    OUTLINED_FUNCTION_20_51(v133);
    sub_1D4F0029C();
    v4 = v170;
  }

  OUTLINED_FUNCTION_90_14();
  OUTLINED_FUNCTION_106_8(v134);
  OUTLINED_FUNCTION_9_70(v135, v193, v216, v239, v262, v285, v307, v330, v353, v376, v399);
  v1[32] = v136;
  sub_1D56160F8();
  OUTLINED_FUNCTION_178_2();
  OUTLINED_FUNCTION_84_10();
  if (v6)
  {
    OUTLINED_FUNCTION_22_41(v137);
    sub_1D4F0029C();
    v4 = v171;
  }

  OUTLINED_FUNCTION_76_11();
  *(v138 + 32) = v129;
  *(v138 + 40) = v122 + 4;
  OUTLINED_FUNCTION_9_70(v138, v194, v217, v240, v263, v286, v308, v331, v354, v377, v400);
  v139 = *(v4 + 24);
  if (v130 + 2 > (v139 >> 1))
  {
    OUTLINED_FUNCTION_24_43(v139);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_59_15();
  OUTLINED_FUNCTION_148_7(v140);
  OUTLINED_FUNCTION_9_70(v141, v195, v218, v241, v264, v287, v309, v332, v355, v378, v401);
  OUTLINED_FUNCTION_150_7(MEMORY[0x1E69E7CC0], (v1 + 2));
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v1[36] = v142;
  *v142 = v143;
  v142[1] = sub_1D51CBAF8;
  v144 = OUTLINED_FUNCTION_324();

  return sub_1D52EF24C(v144, v145, v146);
}

uint64_t sub_1D51CBAF8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 296) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1D51D2984(v3 + 16);
    OUTLINED_FUNCTION_55();

    return v10();
  }
}

uint64_t sub_1D51CBC14()
{
  OUTLINED_FUNCTION_60();
  sub_1D51D2984(v0 + 16);
  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D51CBC70(uint64_t a1)
{
  v5 = sub_1D51CC6D4(a1);
  if (!v2 && (v4 & 1) != 0)
  {
    v6 = *(v1 + 16);
    v12 = *(v1 + 8);
    v7 = *(v1 + 24);
    v8 = *(v1 + 32);
    v9 = *(v1 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1628, &qword_1D5640A18);
    sub_1D4E62A60(&qword_1EC7F1630, &qword_1EC7F1628, &qword_1D5640A18, &unk_1D5651428);
    swift_allocError();
    *v10 = a1 & 0xFFFFFFFFFFFFFF8;
    v10[1] = v12;
    v10[2] = v6;
    v10[3] = v7;
    v10[4] = v8;
    v10[5] = v9;
    v10[6] = 0;
    swift_willThrow();
    sub_1D51D2A80(v12, v6, v7, v8, v9);
  }

  return v5;
}

uint64_t sub_1D51CBD94(uint64_t a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB470, &qword_1D561F3D0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - v9;
  result = sub_1D51CC0D0(a1, &v19 - v9);
  if (!v3)
  {
    sub_1D51D3024();
    v12 = _s13PersistedDateVMa(0);
    if (__swift_getEnumTagSinglePayload(v8, 1, v12) == 1)
    {
      sub_1D4E50004(v8, &qword_1EC7EB470, &qword_1D561F3D0);
      v13 = *(v2 + 8);
      v14 = *(v2 + 16);
      v15 = *(v2 + 24);
      v21 = *(v2 + 32);
      v20 = a1 & 0xFFFFFFFFFFFFFF8;
      v16 = *(v2 + 40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1628, &qword_1D5640A18);
      sub_1D4E62A60(&qword_1EC7F1630, &qword_1EC7F1628, &qword_1D5640A18, &unk_1D5651428);
      swift_allocError();
      *v17 = v20;
      v17[1] = v13;
      v17[2] = v14;
      v17[3] = v15;
      v18 = v21;
      v17[4] = v21;
      v17[5] = v16;
      v17[6] = 0;
      swift_willThrow();
      sub_1D51D2A80(v13, v14, v15, v18, v16);

      return sub_1D4E50004(v10, &qword_1EC7EB470, &qword_1D561F3D0);
    }

    else
    {
      sub_1D4E50004(v10, &qword_1EC7EB470, &qword_1D561F3D0);
      return sub_1D51D2FD0();
    }
  }

  return result;
}

uint64_t sub_1D51CBFC0(uint64_t a1)
{
  v4 = sub_1D51CC3F0(a1);
  if (!v2 && v4 == 2)
  {
    v5 = *(v1 + 8);
    v6 = *(v1 + 16);
    v7 = *(v1 + 24);
    v8 = *(v1 + 32);
    v9 = *(v1 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1628, &qword_1D5640A18);
    sub_1D4E62A60(&qword_1EC7F1630, &qword_1EC7F1628, &qword_1D5640A18, &unk_1D5651428);
    swift_allocError();
    *v10 = a1 & 0xFFFFFFFFFFFFFF8;
    v10[1] = v5;
    v10[2] = v6;
    v10[3] = v7;
    v10[4] = v8;
    v10[5] = v9;
    v10[6] = 0;
    swift_willThrow();
    sub_1D51D2A80(v5, v6, v7, v8, v9);
  }

  return v4 & 1;
}

uint64_t sub_1D51CC0D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v6 = *v2;
  if (!*(v6 + 16))
  {
    goto LABEL_7;
  }

  v8 = sub_1D4E4EFA0(*(a1 + 16), *(a1 + 24));
  if ((v9 & 1) == 0)
  {
    goto LABEL_7;
  }

  v10 = *(*(v6 + 56) + 8 * v8);

  if (!sub_1D54E3960(v11))
  {

LABEL_7:
    v19 = _s13PersistedDateVMa(0);
    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v19);
  }

  sub_1D54E399C(v10, v30);
  if (v3)
  {
    v12 = v4[2];
    DynamicType = v4[1];
    v13 = v4[3];
    v14 = v4[4];
    v27 = v12;
    v15 = *(v4 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1628, &qword_1D5640A18);
    sub_1D4E62A60(&qword_1EC7F1630, &qword_1EC7F1628, &qword_1D5640A18, &unk_1D5651428);
    swift_allocError();
    *v16 = a1 & 0xFFFFFFFFFFFFFF8 | 0x8000000000000000;
    v16[1] = 0;
    v17 = DynamicType;
    v16[2] = DynamicType;
    v16[3] = v27;
    v16[4] = v13;
    v16[5] = v14;
    v16[6] = v15;
    v16[7] = v3;
    swift_willThrow();
    sub_1D51D2A80(v17, v27, v13, v14, v15);
  }

  else
  {
    sub_1D4E48324(v30, v31);
    sub_1D4E628D4(v31, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1638, &unk_1D566AD90);
    if (swift_dynamicCast())
    {
      sub_1D560C1F8();

      __swift_destroy_boxed_opaque_existential_1(v31);
      v20 = _s13PersistedDateVMa(0);
      return __swift_storeEnumTagSinglePayload(a2, 0, 1, v20);
    }

    else
    {
      sub_1D4E628D4(v31, v29);
      __swift_project_boxed_opaque_existential_1(v29, v29[3]);
      DynamicType = swift_getDynamicType();
      __swift_destroy_boxed_opaque_existential_1(v29);
      v21 = v4[2];
      v22 = v4[3];
      v23 = v4[4];
      v28 = v4[1];
      v24 = *(v4 + 40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1628, &qword_1D5640A18);
      sub_1D4E62A60(&qword_1EC7F1630, &qword_1EC7F1628, &qword_1D5640A18, &unk_1D5651428);
      swift_allocError();
      v25 = DynamicType;
      *v26 = a1 & 0xFFFFFFFFFFFFFF8 | 0x8000000000000000;
      v26[1] = v25;
      v26[2] = v28;
      v26[3] = v21;
      v26[4] = v22;
      v26[5] = v23;
      v26[6] = v24;
      v26[7] = 0;
      swift_willThrow();

      sub_1D51D2A80(v28, v21, v22, v23, v24);

      return __swift_destroy_boxed_opaque_existential_1(v31);
    }
  }
}

uint64_t sub_1D51CC3F0(uint64_t a1)
{
  v3 = v1;
  v4 = *v1;
  if (!*(v4 + 16))
  {
    return 2;
  }

  v6 = sub_1D4E4EFA0(*(a1 + 16), *(a1 + 24));
  if ((v7 & 1) == 0)
  {
    return 2;
  }

  v8 = *(*(v4 + 56) + 8 * v6);

  if (!sub_1D54E3960(v9))
  {

    return 2;
  }

  sub_1D54E399C(v8, v26);
  if (v2)
  {
    v10 = v3[2];
    DynamicType = v3[1];
    v11 = v3[3];
    v12 = v3[4];
    v23 = v10;
    v13 = *(v3 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1628, &qword_1D5640A18);
    sub_1D4E62A60(&qword_1EC7F1630, &qword_1EC7F1628, &qword_1D5640A18, &unk_1D5651428);
    swift_allocError();
    *v14 = a1 & 0xFFFFFFFFFFFFFF8 | 0x8000000000000000;
    v14[1] = 0;
    v15 = DynamicType;
    v14[2] = DynamicType;
    v14[3] = v23;
    v14[4] = v11;
    v14[5] = v12;
    v14[6] = v13;
    v14[7] = v2;
    swift_willThrow();
    sub_1D51D2A80(v15, v23, v11, v12, v13);
  }

  else
  {
    sub_1D4E48324(v26, v27);
    sub_1D4E628D4(v27, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1638, &unk_1D566AD90);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v27);

      return v25[5] != 0;
    }

    else
    {
      sub_1D4E628D4(v27, v25);
      __swift_project_boxed_opaque_existential_1(v25, v25[3]);
      DynamicType = swift_getDynamicType();
      __swift_destroy_boxed_opaque_existential_1(v25);
      v17 = v3[2];
      v18 = v3[3];
      v19 = v3[4];
      v24 = v3[1];
      v20 = *(v3 + 40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1628, &qword_1D5640A18);
      sub_1D4E62A60(&qword_1EC7F1630, &qword_1EC7F1628, &qword_1D5640A18, &unk_1D5651428);
      swift_allocError();
      v21 = DynamicType;
      *v22 = a1 & 0xFFFFFFFFFFFFFF8 | 0x8000000000000000;
      v22[1] = v21;
      v22[2] = v24;
      v22[3] = v17;
      v22[4] = v18;
      v22[5] = v19;
      v22[6] = v20;
      v22[7] = 0;
      swift_willThrow();

      sub_1D51D2A80(v24, v17, v18, v19, v20);

      return __swift_destroy_boxed_opaque_existential_1(v27);
    }
  }
}

uint64_t sub_1D51CC6D4(uint64_t a1)
{
  v3 = v1;
  v4 = *v1;
  if (!*(v4 + 16))
  {
    return 0;
  }

  v6 = sub_1D4E4EFA0(*(a1 + 16), *(a1 + 24));
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = *(*(v4 + 56) + 8 * v6);

  if (!sub_1D54E3960(v9))
  {

    return 0;
  }

  sub_1D54E399C(v8, v30);
  if (v2)
  {
    v10 = v3[2];
    DynamicType = v3[1];
    v11 = v3[3];
    v12 = v3[4];
    v27 = v10;
    v13 = *(v3 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1628, &qword_1D5640A18);
    OUTLINED_FUNCTION_190_3();
    sub_1D4E62A60(v14, &qword_1EC7F1628, &qword_1D5640A18, v15);
    OUTLINED_FUNCTION_263();
    OUTLINED_FUNCTION_29();
    swift_allocError();
    *v16 = a1 & 0xFFFFFFFFFFFFFF8 | 0x8000000000000000;
    v16[1] = 0;
    v17 = DynamicType;
    v16[2] = DynamicType;
    v16[3] = v27;
    v16[4] = v11;
    v16[5] = v12;
    v16[6] = v13;
    v16[7] = v2;
    swift_willThrow();
    sub_1D51D2A80(v17, v27, v11, v12, v13);
  }

  else
  {
    sub_1D4E48324(v30, v31);
    sub_1D4E628D4(v31, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1638, &unk_1D566AD90);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v31);

      return v29[5];
    }

    else
    {
      sub_1D4E628D4(v31, v29);
      __swift_project_boxed_opaque_existential_1(v29, v29[3]);
      DynamicType = swift_getDynamicType();
      __swift_destroy_boxed_opaque_existential_1(v29);
      v19 = v3[2];
      v20 = v3[3];
      v21 = v3[4];
      v28 = v3[1];
      v22 = *(v3 + 40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1628, &qword_1D5640A18);
      OUTLINED_FUNCTION_190_3();
      sub_1D4E62A60(v23, &qword_1EC7F1628, &qword_1D5640A18, v24);
      OUTLINED_FUNCTION_263();
      OUTLINED_FUNCTION_29();
      swift_allocError();
      v25 = DynamicType;
      *v26 = a1 & 0xFFFFFFFFFFFFFF8 | 0x8000000000000000;
      v26[1] = v25;
      v26[2] = v28;
      v26[3] = v19;
      v26[4] = v20;
      v26[5] = v21;
      v26[6] = v22;
      v26[7] = 0;
      swift_willThrow();

      sub_1D51D2A80(v28, v19, v20, v21, v22);

      return __swift_destroy_boxed_opaque_existential_1(v31);
    }
  }
}

void sub_1D51CC988(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v4 = v2;
  v50 = a2;
  v6 = sub_1D5615C08();
  v7 = *(v6 - 8);
  v48 = v6;
  v49 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D5615C18();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1540, &qword_1D56408D0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = *v2;
  if (!*(v15 + 16) || (v16 = sub_1D4E4EFA0(*(a1 + 16), *(a1 + 24)), (v17 & 1) == 0))
  {
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA508, &unk_1D561C480);
    __swift_storeEnumTagSinglePayload(v50, 1, 1, v29);
    return;
  }

  v18 = *(*(v15 + 56) + 8 * v16);
  v19 = swift_retain_n();
  sub_1D54E3930(v19);
  if (!v3)
  {

    sub_1D51D3078();
    return;
  }

  v53 = v3;
  v46 = v3;
  v20 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
  v21 = swift_dynamicCast();
  v47 = v18;
  if ((v21 & 1) == 0)
  {
    goto LABEL_27;
  }

  if ((*(v11 + 88))(v13, v10) == *MEMORY[0x1E69E6B00])
  {
    (*(v11 + 96))(v13, v10);
    v22 = v48;
    (*(v49 + 32))(v9, v13, v48);
    v23 = sub_1D5615BE8();
    if (v23 && (v52 = v23, sub_1D4EC5648(), (swift_dynamicCast() & 1) != 0))
    {
      v24 = v51;
      v25 = [v51 domain];

      v26 = sub_1D5614D68();
      v28 = v27;
    }

    else
    {
      v26 = 0;
      v28 = 0;
    }

    v30 = sub_1D5614D68();
    if (!v28)
    {

LABEL_26:
      (*(v49 + 8))(v9, v22);
      goto LABEL_27;
    }

    if (v26 == v30 && v28 == v31)
    {
    }

    else
    {
      v33 = sub_1D5616168();

      if ((v33 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    v34 = sub_1D5615BE8();
    if (!v34)
    {
      goto LABEL_26;
    }

    v52 = v34;
    sub_1D4EC5648();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_26;
    }

    v35 = v51;
    v36 = [v51 code];

    (*(v49 + 8))(v9, v22);
    if (v36 == 3840)
    {

      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA508, &unk_1D561C480);
      __swift_storeEnumTagSinglePayload(v50, 1, 1, v37);

      return;
    }
  }

  else
  {
    (*(v11 + 8))(v13, v10);
  }

LABEL_27:

  v38 = v4[1];
  v39 = v4[2];
  v40 = v4[3];
  v41 = v4[4];
  v50 = a1 & 0xFFFFFFFFFFFFFF8 | 0x8000000000000000;
  v42 = *(v4 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1628, &qword_1D5640A18);
  sub_1D4E62A60(&qword_1EC7F1630, &qword_1EC7F1628, &qword_1D5640A18, &unk_1D5651428);
  swift_allocError();
  *v43 = v50;
  v43[1] = 0;
  v43[2] = v38;
  v43[3] = v39;
  v43[4] = v40;
  v43[5] = v41;
  v44 = v46;
  v43[6] = v42;
  v43[7] = v44;
  swift_willThrow();
  sub_1D51D2A80(v38, v39, v40, v41, v42);
}

void sub_1D51CCF0C(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v4 = v2;
  v50 = a2;
  v6 = sub_1D5615C08();
  v7 = *(v6 - 8);
  v48 = v6;
  v49 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D5615C18();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1550, &unk_1D566ADA0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = *v2;
  if (!*(v15 + 16) || (v16 = sub_1D4E4EFA0(*(a1 + 16), *(a1 + 24)), (v17 & 1) == 0))
  {
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA4F8, &unk_1D5648890);
    __swift_storeEnumTagSinglePayload(v50, 1, 1, v29);
    return;
  }

  v18 = *(*(v15 + 56) + 8 * v16);
  v19 = swift_retain_n();
  sub_1D54E37E4(v19);
  if (!v3)
  {

    sub_1D51D3078();
    return;
  }

  v53 = v3;
  v46 = v3;
  v20 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
  v21 = swift_dynamicCast();
  v47 = v18;
  if ((v21 & 1) == 0)
  {
    goto LABEL_27;
  }

  if ((*(v11 + 88))(v13, v10) == *MEMORY[0x1E69E6B00])
  {
    (*(v11 + 96))(v13, v10);
    v22 = v48;
    (*(v49 + 32))(v9, v13, v48);
    v23 = sub_1D5615BE8();
    if (v23 && (v52 = v23, sub_1D4EC5648(), (swift_dynamicCast() & 1) != 0))
    {
      v24 = v51;
      v25 = [v51 domain];

      v26 = sub_1D5614D68();
      v28 = v27;
    }

    else
    {
      v26 = 0;
      v28 = 0;
    }

    v30 = sub_1D5614D68();
    if (!v28)
    {

LABEL_26:
      (*(v49 + 8))(v9, v22);
      goto LABEL_27;
    }

    if (v26 == v30 && v28 == v31)
    {
    }

    else
    {
      v33 = sub_1D5616168();

      if ((v33 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    v34 = sub_1D5615BE8();
    if (!v34)
    {
      goto LABEL_26;
    }

    v52 = v34;
    sub_1D4EC5648();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_26;
    }

    v35 = v51;
    v36 = [v51 code];

    (*(v49 + 8))(v9, v22);
    if (v36 == 3840)
    {

      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA4F8, &unk_1D5648890);
      __swift_storeEnumTagSinglePayload(v50, 1, 1, v37);

      return;
    }
  }

  else
  {
    (*(v11 + 8))(v13, v10);
  }

LABEL_27:

  v38 = v4[1];
  v39 = v4[2];
  v40 = v4[3];
  v41 = v4[4];
  v50 = a1 & 0xFFFFFFFFFFFFFF8 | 0x8000000000000000;
  v42 = *(v4 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1628, &qword_1D5640A18);
  sub_1D4E62A60(&qword_1EC7F1630, &qword_1EC7F1628, &qword_1D5640A18, &unk_1D5651428);
  swift_allocError();
  *v43 = v50;
  v43[1] = 0;
  v43[2] = v38;
  v43[3] = v39;
  v43[4] = v40;
  v43[5] = v41;
  v44 = v46;
  v43[6] = v42;
  v43[7] = v44;
  swift_willThrow();
  sub_1D51D2A80(v38, v39, v40, v41, v42);
}

void sub_1D51CD490(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v4 = v2;
  v50 = a2;
  v6 = sub_1D5615C08();
  v7 = *(v6 - 8);
  v48 = v6;
  v49 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D5615C18();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1538, &qword_1D56408C0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = *v2;
  if (!*(v15 + 16) || (v16 = sub_1D4E4EFA0(*(a1 + 16), *(a1 + 24)), (v17 & 1) == 0))
  {
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
    __swift_storeEnumTagSinglePayload(v50, 1, 1, v29);
    return;
  }

  v18 = *(*(v15 + 56) + 8 * v16);
  v19 = swift_retain_n();
  sub_1D54E37B4(v19);
  if (!v3)
  {

    sub_1D51D3078();
    return;
  }

  v53 = v3;
  v46 = v3;
  v20 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
  v21 = swift_dynamicCast();
  v47 = v18;
  if ((v21 & 1) == 0)
  {
    goto LABEL_27;
  }

  if ((*(v11 + 88))(v13, v10) == *MEMORY[0x1E69E6B00])
  {
    (*(v11 + 96))(v13, v10);
    v22 = v48;
    (*(v49 + 32))(v9, v13, v48);
    v23 = sub_1D5615BE8();
    if (v23 && (v52 = v23, sub_1D4EC5648(), (swift_dynamicCast() & 1) != 0))
    {
      v24 = v51;
      v25 = [v51 domain];

      v26 = sub_1D5614D68();
      v28 = v27;
    }

    else
    {
      v26 = 0;
      v28 = 0;
    }

    v30 = sub_1D5614D68();
    if (!v28)
    {

LABEL_26:
      (*(v49 + 8))(v9, v22);
      goto LABEL_27;
    }

    if (v26 == v30 && v28 == v31)
    {
    }

    else
    {
      v33 = sub_1D5616168();

      if ((v33 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    v34 = sub_1D5615BE8();
    if (!v34)
    {
      goto LABEL_26;
    }

    v52 = v34;
    sub_1D4EC5648();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_26;
    }

    v35 = v51;
    v36 = [v51 code];

    (*(v49 + 8))(v9, v22);
    if (v36 == 3840)
    {

      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
      __swift_storeEnumTagSinglePayload(v50, 1, 1, v37);

      return;
    }
  }

  else
  {
    (*(v11 + 8))(v13, v10);
  }

LABEL_27:

  v38 = v4[1];
  v39 = v4[2];
  v40 = v4[3];
  v41 = v4[4];
  v50 = a1 & 0xFFFFFFFFFFFFFF8 | 0x8000000000000000;
  v42 = *(v4 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1628, &qword_1D5640A18);
  sub_1D4E62A60(&qword_1EC7F1630, &qword_1EC7F1628, &qword_1D5640A18, &unk_1D5651428);
  swift_allocError();
  *v43 = v50;
  v43[1] = 0;
  v43[2] = v38;
  v43[3] = v39;
  v43[4] = v40;
  v43[5] = v41;
  v44 = v46;
  v43[6] = v42;
  v43[7] = v44;
  swift_willThrow();
  sub_1D51D2A80(v38, v39, v40, v41, v42);
}

void sub_1D51CDA14(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = v2;
  v53 = sub_1D5615C08();
  v54 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D5615C18();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v2;
  if (!*(v13 + 16) || (v14 = sub_1D4E4EFA0(*(a1 + 16), *(a1 + 24)), (v15 & 1) == 0))
  {
    sub_1D51D30CC(__src);
    v34 = a2;
LABEL_12:
    memcpy(v34, __src, 0xB0uLL);
    return;
  }

  v50 = a2;
  v49 = a1;
  v16 = *(*(v13 + 56) + 8 * v14);
  v17 = *(v16 + 16);
  v51 = v16;

  v18 = sqlite3_value_blob(v17);
  v19 = sqlite3_value_bytes(v17);
  v20 = sub_1D54ED308(v18, v19);
  if (v3)
  {
    goto LABEL_6;
  }

  v22 = v20;
  v23 = v21;
  v52 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1560, &qword_1D56408F0);
  sub_1D560B9C8();
  swift_allocObject();
  sub_1D560B9B8();
  sub_1D4E62A60(&qword_1EC7F1640, &qword_1EC7F1560, &qword_1D56408F0, &unk_1D5650948);
  v3 = v52;
  sub_1D560B948();
  if (!v3)
  {

    sub_1D4E55E1C(v22, v23);

    v34 = v50;
    goto LABEL_12;
  }

  sub_1D4E55E1C(v22, v23);

LABEL_6:
  v57 = v3;
  v52 = v3;
  v24 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
  v25 = swift_dynamicCast();
  v26 = v50;
  if (v25)
  {
    if ((*(v10 + 88))(v12, v9) == *MEMORY[0x1E69E6B00])
    {
      (*(v10 + 96))(v12, v9);
      v27 = v53;
      (*(v54 + 32))(v8, v12, v53);
      v28 = sub_1D5615BE8();
      if (v28 && (__src[0] = v28, sub_1D4EC5648(), (swift_dynamicCast() & 1) != 0))
      {
        v29 = v55;
        v30 = [v55 domain];

        v31 = sub_1D5614D68();
        v33 = v32;
      }

      else
      {
        v31 = 0;
        v33 = 0;
      }

      v35 = sub_1D5614D68();
      if (!v33)
      {

LABEL_29:
        (*(v54 + 8))(v8, v27);
        goto LABEL_30;
      }

      if (v31 == v35 && v33 == v36)
      {
      }

      else
      {
        v38 = sub_1D5616168();

        if ((v38 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      v39 = sub_1D5615BE8();
      if (!v39)
      {
        goto LABEL_29;
      }

      __src[0] = v39;
      sub_1D4EC5648();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_29;
      }

      v40 = v55;
      v41 = [v55 code];

      (*(v54 + 8))(v8, v27);
      if (v41 == 3840)
      {

        sub_1D51D30CC(__src);
        memcpy(v26, __src, 0xB0uLL);

        return;
      }
    }

    else
    {
      (*(v10 + 8))(v12, v9);
    }
  }

LABEL_30:

  v42 = v4[1];
  v43 = v4[2];
  v44 = v4[3];
  v45 = v4[4];
  v54 = v49 & 0xFFFFFFFFFFFFFF8 | 0x8000000000000000;
  v46 = *(v4 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1628, &qword_1D5640A18);
  sub_1D4E62A60(&qword_1EC7F1630, &qword_1EC7F1628, &qword_1D5640A18, &unk_1D5651428);
  swift_allocError();
  *v47 = v54;
  v47[1] = 0;
  v47[2] = v42;
  v47[3] = v43;
  v47[4] = v44;
  v47[5] = v45;
  v48 = v52;
  v47[6] = v46;
  v47[7] = v48;
  swift_willThrow();
  sub_1D51D2A80(v42, v43, v44, v45, v46);
}

uint64_t sub_1D51CE068()
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1530, &unk_1D5668460);
  qword_1EDD5A230 = result;
  return result;
}

uint64_t sub_1D51CE098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a3[1];
  v25 = *a3;
  v26 = *(a3 + 32);
  v6 = sub_1D5614BD8();
  v7 = 0;
  v30 = *(a1 + 16);
  v31 = a1;
  v8 = (a1 + 40);
  for (i = a2; ; a2 = i)
  {
    if (v30 == v7)
    {
LABEL_15:

      *a4 = v6;
      *(a4 + 8) = v25;
      *(a4 + 24) = v27;
      *(a4 + 40) = v26 & 1;
      return result;
    }

    if (v7 >= *(v31 + 16))
    {
      break;
    }

    v9 = *(a2 + 16);
    if (v7 == v9)
    {
      goto LABEL_15;
    }

    if (v7 >= v9)
    {
      goto LABEL_17;
    }

    v11 = *(v8 - 1);
    v10 = *v8;
    v12 = v8;
    v13 = *(a2 + 8 * v7 + 32);
    swift_retain_n();

    swift_isUniquelyReferenced_nonNull_native();
    v14 = sub_1D4E4EFA0(v11, v10);
    if (__OFADD__(v6[2], (v15 & 1) == 0))
    {
      goto LABEL_18;
    }

    v16 = v14;
    v17 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1648, &qword_1D5640A20);
    if (sub_1D5615D78())
    {
      v18 = sub_1D4E4EFA0(v11, v10);
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_20;
      }

      v16 = v18;
    }

    if (v17)
    {

      *(v6[7] + 8 * v16) = v13;
    }

    else
    {
      v6[(v16 >> 6) + 8] |= 1 << v16;
      v20 = (v6[6] + 16 * v16);
      *v20 = v11;
      v20[1] = v10;
      *(v6[7] + 8 * v16) = v13;

      v21 = v6[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_19;
      }

      v6[2] = v23;
    }

    v8 = v12 + 2;
    ++v7;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_1D5616238();
  __break(1u);
  return result;
}

void *sub_1D51CE2F0(sqlite3_value *a1)
{
  v1 = sqlite3_value_pointer(a1, "com.apple.sonic.reference-box");
  if (v1)
  {
  }

  else
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000032, 0x80000001D5687690);
    sub_1D5615D48();
    MEMORY[0x1DA6EAC70](0xD000000000000010, 0x80000001D56876D0);
    v2 = sub_1D5615B98();
    MEMORY[0x1DA6EAC70](v2);

    sub_1D51D2CAC();
    OUTLINED_FUNCTION_29();
    swift_allocError();
    *v3 = 0;
    v3[1] = 0xE000000000000000;
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_1D51CE42C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  memset(v80, 0, 41);
  *&v73 = a2;
  v81 = a3;
  sub_1D4EF3424(a3);
  v5 = *(v73 + 16);

  v8 = sub_1D51CE948(v80, v5);
  v9 = *(a1 + 2);
  if (v9)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_47:
      sub_1D54B4574(v8, v10, v6, v7);
      v8 = v44;
    }

    v11 = 0;
    v12 = a1 + 2;
    v47 = v9;
    v48 = v8 + 40;
    v46 = a1 + 2;
    do
    {
      if (v11 == v9)
      {
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v13 = v12 + 40 * v11;
      if (!v13[16])
      {
        v14 = *v13;
        a1 = *(v13 + 1);
        v50 = *(v13 + 3);
        v52 = *(v13 + 4);
        if ((v13[17] & 1) == 0)
        {
          *&v73 = 0;
          *(&v73 + 1) = 0xE000000000000000;

          sub_1D5615B68();
          v64 = v73;
          MEMORY[0x1DA6EAC70](0xD000000000000015, 0x80000001D56876F0);
          *&v73 = v14;
          *(&v73 + 1) = a1;
          LOWORD(v74) = 0;
          v75 = v50;
          v76 = v52;
          sub_1D5615D48();
          result = sub_1D5615E08();
          __break(1u);
          return result;
        }

        v9 = v8;
        *&v73 = a2;

        sub_1D4EF3424(v81);
        v15 = 0;
        v16 = (v73 + 40);
        v8 = *(v73 + 16);
        for (i = v48; ; i += 48)
        {
          if (v8 == v15)
          {

            v8 = v9;
            goto LABEL_18;
          }

          v18 = *(v16 - 1) == v14 && *v16 == a1;
          if (v18 || (sub_1D5616168() & 1) != 0)
          {
            break;
          }

          ++v15;
          v16 += 3;
        }

        if (v15 >= *(v9 + 16))
        {
          goto LABEL_46;
        }

        v8 = v9;
        *(i - 8) = v14;
        *i = a1;
        *(i + 8) = 256;
        *(i + 16) = v50;
        *(i + 24) = v52;
        *(i + 32) = 1;

LABEL_18:
        v12 = v46;
        v9 = v47;
      }

      ++v11;
    }

    while (v11 != v9);
  }

  a1 = &v56;
  v9 = *(v8 + 16);
  v53 = v8;
  v19 = (v8 + 40);
  v8 = v9;
  if (v9)
  {
    while (1)
    {
      v10 = *v19;
      if (*v19)
      {
        v20 = *(v19 - 1) == 0x7463656C6C6F635FLL && v10 == 0xEB000000006E6F69;
        if (v20 || (sub_1D5616168() & 1) != 0)
        {
          break;
        }
      }

      v19 += 6;
      if (!--v8)
      {
        goto LABEL_28;
      }
    }

    v29 = 0;
    v30 = 0;
    v31 = -v9;
    v23 = MEMORY[0x1E69E7CC0];
LABEL_30:
    v32 = v30 - 1;
    v33 = v53 + 48 * v30;
    while (v31 + v32 != -1)
    {
      if (v32 + 1 >= *(v53 + 16))
      {
        goto LABEL_45;
      }

      v34 = *(v33 + 40);
      ++v32;
      v33 += 48;
      if (v34)
      {
        v9 = *(v33 - 16);
        v8 = *v33;
        v51 = *(v33 + 8);
        v35 = *(v33 + 24);
        if (v32 < 0x20)
        {
          v29 |= 1 << v32;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          LODWORD(v81) = v29;
        }

        else
        {
          LODWORD(v81) = v29;
          OUTLINED_FUNCTION_100_8();
          sub_1D4F0118C();
          v23 = v39;
        }

        v36 = *(v23 + 16);
        if (v36 >= *(v23 + 24) >> 1)
        {
          sub_1D4F0118C();
          v23 = v38;
        }

        v30 = v32 + 1;
        *(v23 + 16) = v36 + 1;
        v37 = v23 + 48 * v36;
        *(v37 + 32) = v9;
        *(v37 + 40) = v34;
        *(v37 + 48) = v8;
        *(v37 + 49) = BYTE1(v8) & 1;
        *(v37 + 56) = v51;
        *(v37 + 72) = v35 & 1;
        a1 = &v56;
        v29 = v81;
        goto LABEL_30;
      }
    }

    OUTLINED_FUNCTION_57_1();
    sub_1D54EDDE0(v40, v41, v42, v43);
    v79 = v75;
    sub_1D4E50004(&v79, &qword_1EC7F1598, &qword_1D5640950);
    v64 = v73;
    v24 = v76;
    *v70 = *v77;
    *&v70[3] = *&v77[3];
    v27 = v78;
    v55[72] = 0;
    v56 = v73;
    v57 = v74;
    v58 = v23;
    v8 = 0x3FF0000000000000;
    v59 = v76;
    v60 = 0x3FF0000000000000;
    LOBYTE(v61) = 0;
    *(&v61 + 1) = *v77;
    HIDWORD(v61) = *&v77[3];
    v26 = 1000;
    v62 = 1000;
    v63 = v78;
    v54 = v73;
    v22 = v74;
    v25 = v61;
    v65 = v74;
    v66 = v23;
    v67 = v76;
    v68 = 0x3FF0000000000000;
    v69 = 0;
    v71 = 1000;
    v72 = v78;
    sub_1D51D2D00(&v56, v55);
    result = sub_1D51D2D5C(&v64);
    v28 = v54;
  }

  else
  {
LABEL_28:

    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0uLL;
  }

  *a4 = v28;
  *(a4 + 16) = v22;
  *(a4 + 24) = v23;
  *(a4 + 32) = v24;
  *(a4 + 40) = v8;
  *(a4 + 48) = v25;
  *(a4 + 56) = v26;
  *(a4 + 64) = v27;
  return result;
}

__int128 *sub_1D51CE948(__int128 *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAF90, &qword_1D561DD50);
      v4 = sub_1D56151D8();
      *(v4 + 16) = a2;
      v5 = a2 - 1;
      for (i = 32; ; i += 48)
      {
        v7 = (v4 + i);
        v8 = *v3;
        v9 = v3[1];
        *(v7 + 25) = *(v3 + 25);
        *v7 = v8;
        v7[1] = v9;
        if (!v5)
        {
          break;
        }

        sub_1D51D3024();
        --v5;
      }
    }

    else
    {
      sub_1D4E50004(result, &qword_1EC7EAF90, &qword_1D561DD50);
      return MEMORY[0x1E69E7CC0];
    }

    return v4;
  }

  return result;
}

double sub_1D51CEA24@<D0>(unsigned int a1@<W0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v5 = 0;
  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  do
  {
    if ((a1 >> v6))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAF68, &qword_1D561DD28);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D561C050;
      *(inited + 32) = 0x746E656D656C65;
      *(inited + 40) = 0xE700000000000000;
      *(inited + 48) = 3;
      sub_1D4F00FB4();
      if (*(v9 + 16) >= *(v9 + 24) >> 1)
      {
        __break(1u);
LABEL_20:
        __break(1u);
      }

      v10 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAF60, &qword_1D561DD20);
      swift_arrayInitWithCopy();
      v11 = *(v10 + 16);
      *(v10 + 16) = v11 + 1;
      if (v6 > v11)
      {
        goto LABEL_20;
      }

      v13 = *(v10 + v5 + 32);
      v12 = *(v10 + v5 + 40);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D4F010A0(0, *(v7 + 16) + 1, 1, v7);
        v7 = v17;
      }

      v15 = *(v7 + 16);
      v14 = *(v7 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1D4F010A0(v14 > 1, v15 + 1, 1, v7);
        v7 = v18;
      }

      *(v7 + 16) = v15 + 1;
      v16 = v7 + 16 * v15;
      *(v16 + 32) = v13;
      *(v16 + 40) = v12;
    }

    ++v6;
    v5 += 24;
  }

  while (v6 != 32);
  v19 = sub_1D525C454();
  if (v20)
  {

    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000022, 0x80000001D5687560);
    MEMORY[0x1DA6EAC70](0xD00000000000001ELL, 0x80000001D5687780);
    MEMORY[0x1DA6EAC70](0xD000000000000010, 0x80000001D56875B0);
    sub_1D51D2CAC();
    swift_allocError();
    *v21 = 0;
    v21[1] = 0xE000000000000000;
    swift_willThrow();
  }

  else
  {
    v23 = sub_1D51CF17C(v19, a2);
    if (v29)
    {
    }

    else
    {
      v24 = v23[2];
      v25 = *(v7 + 16);

      if (v25 <= 1)
      {
      }

      else
      {
        sub_1D51CFA0C(v7, a2, a3, v24);
        v27 = v26;

        v24 = v27;
      }

      *a4 = v24;
      result = 0.0;
      *(a4 + 8) = 0u;
      *(a4 + 24) = 0u;
      *(a4 + 40) = 0;
      *(a4 + 48) = 1;
    }
  }

  return result;
}

uint64_t sub_1D51CEDD0@<X0>(unsigned int a1@<W0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v5 = 0;
  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  do
  {
    if ((a1 >> v6))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAF68, &qword_1D561DD28);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D561C050;
      *(inited + 32) = 0x746E656D656C65;
      *(inited + 40) = 0xE700000000000000;
      *(inited + 48) = 1;
      sub_1D4F00FB4();
      if (*(v9 + 16) >= *(v9 + 24) >> 1)
      {
        __break(1u);
LABEL_20:
        __break(1u);
      }

      v10 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAF60, &qword_1D561DD20);
      swift_arrayInitWithCopy();
      v11 = *(v10 + 16);
      *(v10 + 16) = v11 + 1;
      if (v6 > v11)
      {
        goto LABEL_20;
      }

      v13 = *(v10 + v5 + 32);
      v12 = *(v10 + v5 + 40);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D4F010A0(0, *(v7 + 16) + 1, 1, v7);
        v7 = v17;
      }

      v15 = *(v7 + 16);
      v14 = *(v7 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1D4F010A0(v14 > 1, v15 + 1, 1, v7);
        v7 = v18;
      }

      *(v7 + 16) = v15 + 1;
      v16 = v7 + 16 * v15;
      *(v16 + 32) = v13;
      *(v16 + 40) = v12;
    }

    ++v6;
    v5 += 24;
  }

  while (v6 != 32);
  v19 = sub_1D525C454();
  if (v20)
  {

    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000022, 0x80000001D5687560);
    MEMORY[0x1DA6EAC70](0xD00000000000001BLL, 0x80000001D5687590);
    MEMORY[0x1DA6EAC70](0xD000000000000010, 0x80000001D56875B0);
    sub_1D51D2CAC();
    swift_allocError();
    *v21 = 0;
    v21[1] = 0xE000000000000000;
    return swift_willThrow();
  }

  else
  {
    v23 = sub_1D51CF298(v19, a2);
    if (v29)
    {
    }

    else
    {
      v24 = v23[2];
      v25 = *(v7 + 16);

      if (v25 <= 1)
      {
      }

      else
      {
        sub_1D51CFB88(v7, a2, a3, v24);
        v27 = v26;

        v24 = v27;
      }

      *a4 = v24;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 32) = 1;
      *(a4 + 40) = 0;
      *(a4 + 48) = 1;
    }
  }

  return result;
}

void *sub_1D51CF17C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8 * a1);
  if (v2)
  {
    return sub_1D51CE2F0(v2);
  }

  sub_1D5615B68();

  v4 = sub_1D56160F8();
  MEMORY[0x1DA6EAC70](v4);

  MEMORY[0x1DA6EAC70](544432416, 0xE400000000000000);
  MEMORY[0x1DA6EAC70](0xD00000000000001BLL, 0x80000001D56877F0);
  sub_1D51D2CAC();
  swift_allocError();
  *v5 = 0xD00000000000002ALL;
  v5[1] = 0x80000001D5687620;
  return swift_willThrow();
}

void *sub_1D51CF298(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8 * a1);
  if (v2)
  {
    return sub_1D51CE2F0(v2);
  }

  sub_1D5615B68();

  v4 = sub_1D56160F8();
  MEMORY[0x1DA6EAC70](v4);

  MEMORY[0x1DA6EAC70](544432416, 0xE400000000000000);
  MEMORY[0x1DA6EAC70](0xD000000000000018, 0x80000001D5687650);
  sub_1D51D2CAC();
  swift_allocError();
  *v5 = 0xD00000000000002ALL;
  v5[1] = 0x80000001D5687620;
  return swift_willThrow();
}

uint64_t sub_1D51CF3B4()
{
  v1 = sub_1D51BA144();
  v4 = v3;
  if (v3)
  {
    v5 = v1;
    v6 = v2;
    *(v0 + 40) = v1;
    *(v0 + 48) = 0;

    *(v0 + 24) = v6;
    *(v0 + 32) = v4;
  }

  else
  {

    v5 = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = 0;
    *(v0 + 40) = 0;
    *(v0 + 48) = 1;
  }

  return v5;
}

void sub_1D51CF434()
{
  sub_1D51BA1C8();
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = v2;
  }

  *(v0 + 24) = v4;
  *(v0 + 32) = v3 & 1;
  if (v3)
  {
    v1 = 0;
  }

  *(v0 + 40) = v1;
  *(v0 + 48) = v3 & 1;
}

uint64_t sub_1D51CF47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = 0;
  v24 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v24 == v8)
    {
      return v24 == v8;
    }

    v10 = *(i - 1) == 0x746E656D656C65 && *i == 0xE700000000000000;
    if (!v10 && (sub_1D5616168() & 1) == 0)
    {
      break;
    }

    v11 = *(a2 + 8 * v8);
    if (!v11)
    {
      sub_1D5615B68();

      v22 = 0xD00000000000002ALL;
      v23 = 0x80000001D5687620;
      v17 = sub_1D56160F8();
      MEMORY[0x1DA6EAC70](v17);

      MEMORY[0x1DA6EAC70](544432416, 0xE400000000000000);
      MEMORY[0x1DA6EAC70](0x676E69727453, 0xE600000000000000);
      goto LABEL_23;
    }

    v12 = sqlite3_value_text(*(a2 + 8 * v8));
    sqlite3_value_bytes(v11);
    if (!v12)
    {
      v18 = 0x80000001D56877A0;
      sub_1D51D2CAC();
      swift_allocError();
      v20 = 0xD00000000000002DLL;
      goto LABEL_24;
    }

    v13 = sub_1D5614D28();
    if (!v14)
    {
      v22 = 0;
      v23 = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0xD00000000000001ALL, 0x80000001D56877D0);
      sub_1D5615D48();
LABEL_23:
      v20 = v22;
      v18 = v23;
      sub_1D51D2CAC();
      swift_allocError();
LABEL_24:
      *v19 = v20;
      v19[1] = v18;
      swift_willThrow();
      return v24 == v8;
    }

    if (v13 == a4 && v14 == a5)
    {
    }

    else
    {
      v16 = sub_1D5616168();

      if ((v16 & 1) == 0)
      {
        return v24 == v8;
      }
    }

    ++v8;
  }

  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD000000000000012, 0x80000001D5687600);
  sub_1D5615D48();
  result = sub_1D5615E08();
  __break(1u);
  return result;
}

uint64_t sub_1D51CF7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    v9 = v6;
    if (v7 == v6)
    {
      return v7 == v9;
    }

    v10 = *(i - 1) == 0x746E656D656C65 && *i == 0xE700000000000000;
    if (!v10 && (sub_1D5616168() & 1) == 0)
    {
      break;
    }

    v11 = *(a2 + 8 * v9);
    if (!v11)
    {
      sub_1D5615B68();

      v13 = sub_1D56160F8();
      MEMORY[0x1DA6EAC70](v13);

      MEMORY[0x1DA6EAC70](544432416, 0xE400000000000000);
      MEMORY[0x1DA6EAC70](7630409, 0xE300000000000000);
      sub_1D51D2CAC();
      swift_allocError();
      *v14 = 0xD00000000000002ALL;
      v14[1] = 0x80000001D5687620;
      swift_willThrow();
      return v7 == v9;
    }

    v12 = sqlite3_value_int64(v11);
    v6 = v9 + 1;
    if (v12 != a4)
    {
      return v7 == v9;
    }
  }

  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD000000000000012, 0x80000001D5687600);
  sub_1D5615D48();
  result = sub_1D5615E08();
  __break(1u);
  return result;
}

void sub_1D51CFA0C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v8 = *(a4 + 16);
  v9 = a4 + 40;
  v20 = a4 + 40;
  v21 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v10 = (v9 + 16 * v7);
  while (v8 != v7)
  {
    if (v7 >= v8)
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }

    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_17;
    }

    v13 = *(v10 - 1);
    v12 = *v10;

    v14 = sub_1D51CF47C(result, a2, a3, v13, v12);
    if (v4)
    {

      return;
    }

    if (v14)
    {
      v15 = v21;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D4F03980(0, *(v21 + 16) + 1, 1);
        v15 = v21;
      }

      v9 = v20;
      v17 = *(v15 + 16);
      v16 = *(v15 + 24);
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        sub_1D4F03980(v16 > 1, v17 + 1, 1);
        v9 = v20;
        v18 = v17 + 1;
        v15 = v21;
      }

      *(v15 + 16) = v18;
      v21 = v15;
      v19 = v15 + 16 * v17;
      *(v19 + 32) = v13;
      *(v19 + 40) = v12;
      v7 = v11;
      goto LABEL_2;
    }

    ++v7;
    v10 += 2;
  }
}

void sub_1D51CFB88(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v8 = *(a4 + 16);
  v9 = a4 + 32;
  v10 = MEMORY[0x1E69E7CC0];
  while (v8 != v7)
  {
    if (v7 >= v8)
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_15;
    }

    v12 = *(v9 + 8 * v7);
    v13 = sub_1D51CF7D0(result, a2, a3, v12);
    if (v4)
    {

      return;
    }

    ++v7;
    if (v13)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D4F0466C(0, *(v10 + 16) + 1, 1);
      }

      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      v16 = v15 + 1;
      if (v15 >= v14 >> 1)
      {
        sub_1D4F0466C(v14 > 1, v15 + 1, 1);
        v16 = v15 + 1;
      }

      *(v10 + 16) = v16;
      *(v10 + 8 * v15 + 32) = v12;
      v7 = v11;
    }
  }
}

void *sub_1D51CFCC0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F15C0, &qword_1D56409A8);
  v2[2] = a1;
  v2[3] = a2;
  v6 = sub_1D4E62A60(&qword_1EC7F15C8, &qword_1EC7F15C0, &qword_1D56409A8, &unk_1D566AB60);
  v2[4] = v5;
  v2[5] = v6;
  v2[8] = sub_1D51D32F4;
  v2[9] = 0;
  v2[10] = sub_1D51CFF38;
  v2[11] = 0;
  v2[12] = sub_1D51D0268;
  v2[13] = 0;
  v2[14] = sub_1D51D0464;
  v2[15] = 0;
  v2[16] = sub_1D51D0530;
  v2[17] = 0;
  v2[18] = sub_1D51D0910;
  v2[19] = 0;
  v2[20] = sub_1D51D0A6C;
  v2[21] = 0;
  v2[6] = sub_1D51D2EC4;
  v2[7] = v2;

  sub_1D4EA7420(0, 0);
  return v2;
}

void *sub_1D51CFDFC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1570, &qword_1D5640940);
  v2[2] = a1;
  v2[3] = a2;
  v6 = sub_1D4E62A60(qword_1EDD58258, &qword_1EC7F1570, &qword_1D5640940, &unk_1D566AB60);
  v2[4] = v5;
  v2[5] = v6;
  v2[8] = sub_1D51D32F4;
  v2[9] = 0;
  v2[10] = sub_1D51CFF74;
  v2[11] = 0;
  v2[12] = sub_1D51D027C;
  v2[13] = 0;
  v2[14] = sub_1D51D04D0;
  v2[15] = 0;
  v2[16] = sub_1D51D055C;
  v2[17] = 0;
  v2[18] = sub_1D51D0928;
  v2[19] = 0;
  v2[20] = sub_1D51D0AA4;
  v2[21] = 0;
  v2[6] = sub_1D51D2C24;
  v2[7] = v2;

  sub_1D4EA7420(0, 0);
  return v2;
}

void sub_1D51CFFB0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v6 = a3;
  v7 = v4;
  *&v36 = a3;
  sub_1D4EF3424(a4);
  v10 = v36;
  v11 = *(v36 + 16);
  if (v11)
  {
    v28 = v6;
    v29 = v5;
    v42 = a1;
    *&v36 = MEMORY[0x1E69E7CC0];
    sub_1D4F040DC(0, v11, 0);
    v12 = v36;
    v13 = (v10 + 40);
    do
    {
      v14 = *(v13 - 1);
      v15 = *v13;
      *&v36 = v12;
      v17 = *(v12 + 16);
      v16 = *(v12 + 24);

      if (v17 >= v16 >> 1)
      {
        sub_1D4F040DC(v16 > 1, v17 + 1, 1);
        v12 = v36;
      }

      *(v12 + 16) = v17 + 1;
      v18 = v12 + 16 * v17;
      *(v18 + 32) = v14;
      *(v18 + 40) = v15;
      v13 += 3;
      --v11;
    }

    while (v11);

    a1 = v42;
    v5 = v29;
    v6 = v28;
  }

  else
  {
  }

  v19 = OUTLINED_FUNCTION_159();
  sub_1D54EE190(v19, v20);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF228, &qword_1D5630CE8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D561C050;
    *&v36 = v7;
    v23 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    v24 = sub_1D5614DB8();
    v26 = v25;
    *(inited + 56) = MEMORY[0x1E69E6158];
    *(inited + 64) = sub_1D51D2C58();
    *(inited + 32) = v24;
    *(inited + 40) = v26;
    v27 = sub_1D5616468();
    swift_setDeallocating();
    sub_1D4EFF2B4();
    *(a1 + 16) = sqlite3_vmprintf("%s", v27);
  }

  else if (*(a1 + 32))
  {
    __break(1u);
  }

  else
  {
    sub_1D51CE42C(v21, v6, v5, &v30);

    if (v32)
    {
      v36 = v30;
      v37 = v31;
      v38 = v32;
      v39 = v33;
      v40 = v34;
      v41 = v35;
      sub_1D54EE59C(a2);
      sub_1D4E50004(&v30, &qword_1EC7F1590, &qword_1D5640948);
    }
  }
}

uint64_t sub_1D51D0290(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sqlite3_malloc64(0x61uLL);
  if (!v8)
  {
    return 7;
  }

  v9 = v8;
  sub_1D51D0310(v8, a1, a1, &v11, a3, a4);
  result = 0;
  *a2 = v9;
  return result;
}

double sub_1D51D0310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a2 + 24);

  sub_1D4EF3424(a6);
  v10 = a5;
  v11 = *(a5 + 16);
  if (v11)
  {
    v20 = v9;
    v21 = a3;
    v23 = MEMORY[0x1E69E7CC0];
    sub_1D4F040DC(0, v11, 0);
    v12 = v23;
    v13 = (v10 + 40);
    do
    {
      v14 = *(v13 - 1);
      v15 = *v13;
      v17 = *(v23 + 16);
      v16 = *(v23 + 24);

      if (v17 >= v16 >> 1)
      {
        sub_1D4F040DC(v16 > 1, v17 + 1, 1);
      }

      *(v23 + 16) = v17 + 1;
      v18 = v23 + 16 * v17;
      *(v18 + 32) = v14;
      *(v18 + 40) = v15;
      v13 += 3;
      --v11;
    }

    while (v11);

    a3 = v21;
    v9 = v20;
  }

  else
  {

    v12 = MEMORY[0x1E69E7CC0];
  }

  *a1 = 0;
  *(a1 + 8) = v9;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = a3;
  *(a1 + 40) = v12;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  return result;
}

uint64_t sub_1D51D0464(uint64_t a1)
{
  *(a1 + 40) = 0;

  sub_1D51D2F34(*(a1 + 48));
  *(a1 + 32) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 8) = 0;
}

uint64_t sub_1D51D04D0(uint64_t a1)
{
  *(a1 + 40) = 0;

  *(a1 + 32) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 8) = 0;
}

void sub_1D51D0588(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a1 + 32);
  if (!v7)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*(v7 + 32))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1D51CEA24(a2, a5, a6, v20);
  if (!v6)
  {
    *v18 = v20[0];
    *&v18[16] = v20[1];
    *&v18[32] = v20[2];
    v19 = v21;
    *(a1 + 16) = sub_1D51CF3B4();
    *(a1 + 24) = v16 & 1;
    v17 = *(a1 + 48);
    *(a1 + 48) = *v18;
    *(a1 + 56) = *&v18[8];
    *(a1 + 72) = *&v18[24];
    *(a1 + 88) = *&v18[40];
    *(a1 + 96) = v19;
    sub_1D51D2F34(v17);
    return;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF228, &qword_1D5630CE8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D561C050;
    v11 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    v12 = sub_1D5614DB8();
    v14 = v13;
    *(inited + 56) = MEMORY[0x1E69E6158];
    *(inited + 64) = sub_1D51D2C58();
    *(inited + 32) = v12;
    *(inited + 40) = v14;
    v15 = sub_1D5616468();
    swift_setDeallocating();
    sub_1D4EFF2B4();
    *(v9 + 16) = sqlite3_vmprintf("%s", v15);

    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_1D51D0754(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(result + 32);
  if (!v7)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*(v7 + 32))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = result;
  result = sub_1D51CEDD0(a2, a5, a6, v21);
  if (!v6)
  {
    *v18 = v21[0];
    *&v18[16] = v21[1];
    v19 = v21[2];
    v20 = v22;
    sub_1D51CF434();
    *(v8 + 16) = v16;
    *(v8 + 24) = v17 & 1;
    *(v8 + 48) = *v18;
    *(v8 + 56) = *&v18[8];
    *(v8 + 72) = *&v18[24];
    *(v8 + 80) = v19;
    *(v8 + 96) = v20;

    return 0;
  }

  v9 = *(v8 + 32);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF228, &qword_1D5630CE8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D561C050;
    v11 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    v12 = sub_1D5614DB8();
    v14 = v13;
    *(inited + 56) = MEMORY[0x1E69E6158];
    *(inited + 64) = sub_1D51D2C58();
    *(inited + 32) = v12;
    *(inited + 40) = v14;
    v15 = sub_1D5616468();
    swift_setDeallocating();
    sub_1D4EFF2B4();
    *(v9 + 16) = sqlite3_vmprintf("%s", v15);

    return 1;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D51D0940(uint64_t result, uint64_t (*a2)(void))
{
  if (*(result + 48))
  {
    v2 = result;
    v3 = a2();
    result = 0;
    *(v2 + 16) = v3;
    *(v2 + 24) = v4 & 1;
  }

  else
  {
    __break(1u);
    __break(1u);
  }

  return result;
}

uint64_t sub_1D51D0ADC(uint64_t result, int a2, uint64_t a3)
{
  v4 = *(result + 40);
  if (!v4)
  {
    goto LABEL_14;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (*(v4 + 16) <= a2)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = result;
  v6 = *(result + 48);
  if (!v6)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = v3;
  v8 = a3;
  v9 = *(result + 80);
  if (v9)
  {
    v10 = *(result + 56);
    v11 = *(result + 64);
    v26 = v3;
    v12 = *(result + 72);

    sub_1D51D2EF0(v6, v10, v11, v12, v9);

    sub_1D54E1C74(v12, v9, v23);

    v7 = v26;
    v8 = a3;
    sub_1D51D2F34(v6);

    v13 = v24;
    v14 = v25;
  }

  else
  {
    v13 = &type metadata for SQLNull;
    v14 = &off_1F50C07B8;
    v24 = &type metadata for SQLNull;
    v25 = &off_1F50C07B8;
  }

  __swift_project_boxed_opaque_existential_1(v23, v13);
  (v14[2])(v8, v13, v14);
  if (!v7)
  {
    __swift_destroy_boxed_opaque_existential_1(v23);
    return 0;
  }

  result = __swift_destroy_boxed_opaque_existential_1(v23);
  v15 = *(v5 + 32);
  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF228, &qword_1D5630CE8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D561C050;
    v23[0] = v7;
    v17 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    v18 = sub_1D5614DB8();
    v20 = v19;
    *(inited + 56) = MEMORY[0x1E69E6158];
    *(inited + 64) = sub_1D51D2C58();
    *(inited + 32) = v18;
    *(inited + 40) = v20;
    v21 = sub_1D5616468();
    swift_setDeallocating();
    sub_1D4EFF2B4();
    *(v15 + 16) = sqlite3_vmprintf("%s", v21);

    return 1;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1D51D0D3C(uint64_t result, int a2, uint64_t a3)
{
  v4 = *(result + 40);
  if (!v4)
  {
    goto LABEL_14;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (*(v4 + 16) <= a2)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = result;
  if (!*(result + 48))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (*(result + 80))
  {
    v7 = &type metadata for SQLNull;
    v8 = &off_1F50C07B8;
    v18 = &type metadata for SQLNull;
    v19 = &off_1F50C07B8;
  }

  else
  {
    v9 = *(result + 72);

    sub_1D54E20CC(v9, v17);

    v7 = v18;
    v8 = v19;
  }

  __swift_project_boxed_opaque_existential_1(v17, v7);
  (v8[2])(a3, v7, v8);
  if (!v3)
  {
    __swift_destroy_boxed_opaque_existential_1(v17);
    return 0;
  }

  result = __swift_destroy_boxed_opaque_existential_1(v17);
  v10 = *(v5 + 32);
  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF228, &qword_1D5630CE8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D561C050;
    v17[0] = v3;
    v12 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    v13 = sub_1D5614DB8();
    v15 = v14;
    *(inited + 56) = MEMORY[0x1E69E6158];
    *(inited + 64) = sub_1D51D2C58();
    *(inited + 32) = v13;
    *(inited + 40) = v15;
    v16 = sub_1D5616468();
    swift_setDeallocating();
    sub_1D4EFF2B4();
    *(v10 + 16) = sqlite3_vmprintf("%s", v16);

    return 1;
  }

LABEL_16:
  __break(1u);
  return result;
}

void sub_1D51D0F2C(sqlite3 *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sqlite3_malloc64(0x21uLL);
  if (v10)
  {
    v12 = v10;
    sqlite3_vtab_config_1(a1, v11);
    *v12 = 0;
    v12[2] = 0;
    *(v12 + 2) = 0;
    *(v12 + 3) = a3;
    *(v12 + 32) = 0;
    *a2 = v12;

    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    sub_1D4EF3424(a5);
    v13 = *(a4 + 16);
    if (v13)
    {
      v31 = a1;
      v35 = MEMORY[0x1E69E7CC0];
      sub_1D4F03980(0, v13, 0);
      v14 = 0;
      v15 = (a4 + 48);
      v32 = a4;
      while (v14 < *(a4 + 16))
      {
        v16 = *v15;
        v33 = *(v15 - 2);
        v34 = *(v15 - 1);
        swift_bridgeObjectRetain_n();
        MEMORY[0x1DA6EAC70](32, 0xE100000000000000);
        v17 = 0xE400000000000000;
        v18 = 1280070990;
        v19 = v13;
        switch(v16)
        {
          case 1:
            v17 = 0xE700000000000000;
            v18 = 0x52454745544E49;
            break;
          case 2:
            v18 = 1279346002;
            break;
          case 3:
            v18 = 1415071060;
            break;
          case 4:
            v18 = 1112493122;
            break;
          case 5:
            v17 = 0xE600000000000000;
            v18 = 0x4E4544444948;
            break;
          default:
            break;
        }

        MEMORY[0x1DA6EAC70](v18, v17);

        v21 = *(v35 + 16);
        v20 = *(v35 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1D4F03980(v20 > 1, v21 + 1, 1);
        }

        ++v14;
        *(v35 + 16) = v21 + 1;
        v22 = v35 + 16 * v21;
        *(v22 + 32) = v33;
        *(v22 + 40) = v34;
        v15 += 24;
        v13 = v19;
        v23 = v19 == v14;
        a4 = v32;
        if (v23)
        {

          a1 = v31;
          goto LABEL_18;
        }
      }

      __break(1u);
    }

    else
    {

LABEL_18:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
      OUTLINED_FUNCTION_182_2();
      sub_1D4E62A60(v24, v25, &unk_1D561D780, v26);
      v27 = sub_1D5614CF8();
      v29 = v28;

      MEMORY[0x1DA6EAC70](v27, v29);

      MEMORY[0x1DA6EAC70](0x3B29202020200ALL, 0xE700000000000000);
      v30 = sub_1D5614DE8();

      sqlite3_declare_vtab(a1, (v30 + 32));
    }
  }
}

uint64_t sub_1D51D1268(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  v3[20] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F15C0, &qword_1D56409A8);

  return MEMORY[0x1EEE6DFA0](sub_1D51D12E8, v2, 0);
}

uint64_t sub_1D51D12E8()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_313();
  v1 = OUTLINED_FUNCTION_71();
  v4 = sub_1D4ED07E4(v1, v2, v3);
  if (v4)
  {
    v5 = v4;
    v6 = v0[20];
    swift_endAccess();
    v7 = *(v5 + 32);

    if (v7 == v6)
    {
      OUTLINED_FUNCTION_22_1();

      return v8();
    }
  }

  else
  {
    swift_endAccess();
  }

  v10 = v0[19];
  _s13TableFunctionCMa();
  swift_allocObject();

  v11 = OUTLINED_FUNCTION_71();
  v13 = sub_1D51CFCC0(v11, v12);
  v0[22] = v13;
  v16 = *(v10 + OBJC_IVAR____TtC16MusicKitInternal11SQLDatabase_connection);
  v0[23] = v16;
  if (v16)
  {

    v13 = OUTLINED_FUNCTION_138_7();
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1D51D142C()
{
  OUTLINED_FUNCTION_80();
  sub_1D54E5144(v0[23]);
  v0[24] = 0;
  v1 = v0[19];

  return MEMORY[0x1EEE6DFA0](sub_1D51D14C8, v1, 0);
}

uint64_t sub_1D51D16A8()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D51D170C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_328();

  v0 = OUTLINED_FUNCTION_138_7();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1D51D176C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_327();

  v0 = OUTLINED_FUNCTION_138_7();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1D51D17CC()
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_100();
  v1 = *(v0 + 264);
  OUTLINED_FUNCTION_146();
  swift_beginAccess();
  v4 = *(v1 + 136);
  if (!v4)
  {
    __break(1u);
    goto LABEL_15;
  }

  v5 = sub_1D54EDE80(v4);
  v6 = sub_1D54EF4CC(v5);
  if (BYTE4(v6) != 1 && (BYTE4(v6) != 14 || v6 != 16))
  {
    v8 = sqlite3_extended_errcode(*(v1 + 136));
    v4 = sqlite3_errstr(v5);
    if (v4)
    {
      sub_1D5614E98();
      v4 = sqlite3_errmsg(*(v1 + 136));
      if (v4)
      {
        OUTLINED_FUNCTION_349(v4, v2, v3, v9);
        OUTLINED_FUNCTION_261();
        sub_1D54EF4CC(v8);
        sub_1D51D2BD0();
        OUTLINED_FUNCTION_29();
        v10 = swift_allocError();
        OUTLINED_FUNCTION_292(v10, v11);

        goto LABEL_11;
      }

LABEL_16:
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v4, v2, v3);
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_327();

LABEL_11:
  OUTLINED_FUNCTION_89();

  return MEMORY[0x1EEE6DFA0](v4, v2, v3);
}

uint64_t sub_1D51D1A6C()
{
  OUTLINED_FUNCTION_91();
  v1 = *(v0 + 200);

  sub_1D4E6456C(v1);
  OUTLINED_FUNCTION_55();

  return v2();
}

uint64_t sub_1D51D1B04(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  v3[20] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1570, &qword_1D5640940);

  return MEMORY[0x1EEE6DFA0](sub_1D51D1B84, v2, 0);
}

uint64_t sub_1D51D1B84()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_313();
  v1 = OUTLINED_FUNCTION_71();
  v4 = sub_1D4ED07E4(v1, v2, v3);
  if (v4)
  {
    v5 = v4;
    v6 = v0[20];
    swift_endAccess();
    v7 = *(v5 + 32);

    if (v7 == v6)
    {
      OUTLINED_FUNCTION_22_1();

      return v8();
    }
  }

  else
  {
    swift_endAccess();
  }

  v10 = v0[19];
  _s13TableFunctionCMa();
  swift_allocObject();

  v11 = OUTLINED_FUNCTION_71();
  v13 = sub_1D51CFDFC(v11, v12);
  v0[22] = v13;
  v16 = *(v10 + OBJC_IVAR____TtC16MusicKitInternal11SQLDatabase_connection);
  v0[23] = v16;
  if (v16)
  {

    v13 = OUTLINED_FUNCTION_138_7();
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1D51D1CC8()
{
  OUTLINED_FUNCTION_80();
  sub_1D54E5144(v0[23]);
  v0[24] = 0;
  v1 = v0[19];

  return MEMORY[0x1EEE6DFA0](sub_1D51D1D64, v1, 0);
}

uint64_t sub_1D51D1F44()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_328();

  v0 = OUTLINED_FUNCTION_138_7();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1D51D1FA4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_327();

  v0 = OUTLINED_FUNCTION_138_7();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1D51D2004()
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_100();
  v1 = *(v0 + 264);
  OUTLINED_FUNCTION_146();
  swift_beginAccess();
  v4 = *(v1 + 136);
  if (!v4)
  {
    __break(1u);
    goto LABEL_15;
  }

  v5 = sub_1D54EDE80(v4);
  v6 = sub_1D54EF4CC(v5);
  if (BYTE4(v6) != 1 && (BYTE4(v6) != 14 || v6 != 16))
  {
    v8 = sqlite3_extended_errcode(*(v1 + 136));
    v4 = sqlite3_errstr(v5);
    if (v4)
    {
      sub_1D5614E98();
      v4 = sqlite3_errmsg(*(v1 + 136));
      if (v4)
      {
        OUTLINED_FUNCTION_349(v4, v2, v3, v9);
        OUTLINED_FUNCTION_261();
        sub_1D54EF4CC(v8);
        sub_1D51D2BD0();
        OUTLINED_FUNCTION_29();
        v10 = swift_allocError();
        OUTLINED_FUNCTION_292(v10, v11);

        goto LABEL_11;
      }

LABEL_16:
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v4, v2, v3);
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_327();

LABEL_11:
  OUTLINED_FUNCTION_89();

  return MEMORY[0x1EEE6DFA0](v4, v2, v3);
}

uint64_t sub_1D51D22C4()
{
  OUTLINED_FUNCTION_76_2();
  OUTLINED_FUNCTION_9_0();
  v4 = OUTLINED_FUNCTION_191_1(v3);
  v5 = MEMORY[0x1E69E6158];
  v51 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_85_0();
  OUTLINED_FUNCTION_3_31();
  v0[8] = OUTLINED_FUNCTION_294(v6, v7, v8, v9, v10, v11, v12, v13, v51, v4, v4, v4);
  v0[10] = 62;
  v0[9] = v14;
  v0[11] = v1;
  v0[12] = v2;
  v0[13] = v1;
  OUTLINED_FUNCTION_3_31();
  v23 = OUTLINED_FUNCTION_294(v15, v16, v17, v18, v19, v20, v21, v22, v5, v4, v4, v4);
  v25 = v24;

  v0[14] = v23;
  v0[16] = 46;
  v0[15] = v25;
  v0[17] = v1;
  v0[18] = v2;
  v0[19] = v1;
  OUTLINED_FUNCTION_3_31();
  v34 = OUTLINED_FUNCTION_294(v26, v27, v28, v29, v30, v31, v32, v33, v5, v4, v4, v4);
  v36 = v35;

  v0[20] = v34;
  v0[21] = v36;
  v0[22] = 8236;
  v0[23] = 0xE200000000000000;
  v0[24] = v2;
  v0[25] = v1;
  OUTLINED_FUNCTION_3_31();
  OUTLINED_FUNCTION_294(v37, v38, v39, v40, v41, v42, v43, v44, v5, v4, v4, v4);
  v46 = v45;

  v0[27] = v46;
  OUTLINED_FUNCTION_27_0(&unk_1D56409A0);
  v47 = swift_task_alloc();
  v0[28] = v47;
  *v47 = v0;
  v48 = OUTLINED_FUNCTION_273(v47);

  return v49(v48);
}

uint64_t sub_1D51D2484()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 232) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_55();

    return v10();
  }
}

uint64_t sub_1D51D25A0()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D51D261C()
{
  OUTLINED_FUNCTION_76_2();
  OUTLINED_FUNCTION_9_0();
  v4 = OUTLINED_FUNCTION_191_1(v3);
  v5 = MEMORY[0x1E69E6158];
  v51 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_85_0();
  OUTLINED_FUNCTION_3_31();
  v0[8] = OUTLINED_FUNCTION_294(v6, v7, v8, v9, v10, v11, v12, v13, v51, v4, v4, v4);
  v0[10] = 62;
  v0[9] = v14;
  v0[11] = v1;
  v0[12] = v2;
  v0[13] = v1;
  OUTLINED_FUNCTION_3_31();
  v23 = OUTLINED_FUNCTION_294(v15, v16, v17, v18, v19, v20, v21, v22, v5, v4, v4, v4);
  v25 = v24;

  v0[14] = v23;
  v0[16] = 46;
  v0[15] = v25;
  v0[17] = v1;
  v0[18] = v2;
  v0[19] = v1;
  OUTLINED_FUNCTION_3_31();
  v34 = OUTLINED_FUNCTION_294(v26, v27, v28, v29, v30, v31, v32, v33, v5, v4, v4, v4);
  v36 = v35;

  v0[20] = v34;
  v0[21] = v36;
  v0[22] = 8236;
  v0[23] = 0xE200000000000000;
  v0[24] = v2;
  v0[25] = v1;
  OUTLINED_FUNCTION_3_31();
  OUTLINED_FUNCTION_294(v37, v38, v39, v40, v41, v42, v43, v44, v5, v4, v4, v4);
  v46 = v45;

  v0[27] = v46;
  OUTLINED_FUNCTION_27_0(&unk_1D5640938);
  v47 = swift_task_alloc();
  v0[28] = v47;
  *v47 = v0;
  v48 = OUTLINED_FUNCTION_273(v47);

  return v49(v48);
}

uint64_t sub_1D51D27DC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 232) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_55();

    return v10();
  }
}

void sub_1D51D28F8(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + 40);

  sub_1D51D2A80(v4, v5, v6, v7, v8);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = sub_1D51D32C4;
  *(a1 + 56) = 0;
}

uint64_t sub_1D51D29D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {

    v5 = vars8;
  }
}

double sub_1D51D2A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {

    v5 = vars8;
  }

  return result;
}

void sub_1D51D2AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 >> 6 == 1)
  {
  }

  else if (!(a6 >> 6))
  {

    sub_1D51D29D8(a2, a3, a4, a5, a6 & 1);
  }
}

uint64_t sub_1D51D2B88(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D51D2BD0()
{
  result = qword_1EDD546D0[0];
  if (!qword_1EDD546D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD546D0);
  }

  return result;
}

unint64_t sub_1D51D2C58()
{
  result = qword_1EC7F1580;
  if (!qword_1EC7F1580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1580);
  }

  return result;
}

unint64_t sub_1D51D2CAC()
{
  result = qword_1EC7F1588;
  if (!qword_1EC7F1588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1588);
  }

  return result;
}

uint64_t sub_1D51D2DB0()
{
  OUTLINED_FUNCTION_69_0();
  v1(0);
  OUTLINED_FUNCTION_3_36();
  v2 = OUTLINED_FUNCTION_71();
  v3(v2);
  return v0;
}

uint64_t sub_1D51D2E04(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D51D2E5C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_1D51D2EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_1D51D2F34(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D51D2FD0()
{
  OUTLINED_FUNCTION_69_0();
  v1(0);
  OUTLINED_FUNCTION_3_36();
  v2 = OUTLINED_FUNCTION_71();
  v3(v2);
  return v0;
}

uint64_t sub_1D51D3024()
{
  OUTLINED_FUNCTION_69_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_3_36();
  v3 = OUTLINED_FUNCTION_71();
  v4(v3);
  return v0;
}

uint64_t sub_1D51D3078()
{
  OUTLINED_FUNCTION_69_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_3_36();
  v3 = OUTLINED_FUNCTION_71();
  v4(v3);
  return v0;
}

uint64_t sub_1D51D30D4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v5 = a4;
      }

      else
      {
        v5 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1DA6EB8A0](result, a2, v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1530, &unk_1D5668460);
      swift_dynamicCast();
      return v11;
    }

LABEL_29:
    __break(1u);
    return result;
  }

  if (a3)
  {
    if (sub_1D5615A78() == *(a4 + 36))
    {
      sub_1D5615A88();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1530, &unk_1D5668460);
      swift_dynamicCast();
      sub_1D56162D8();
      sub_1D5614E28();
      v6 = sub_1D5616328();
      v7 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v8 = v6 & v7;
        if (((*(a4 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
        {
          goto LABEL_28;
        }

        v9 = *(*(a4 + 48) + 8 * v8);
        v10 = *(v9 + 16) == *(v11 + 16) && *(v9 + 24) == *(v11 + 24);
        if (v10 || (sub_1D5616168() & 1) != 0)
        {
          goto LABEL_22;
        }

        v6 = v8 + 1;
      }
    }

    __break(1u);
    goto LABEL_26;
  }

  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:

    __break(1u);
    goto LABEL_29;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_22:
  }
}

uint64_t sub_1D51D32C4@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1D52B2428(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

__n128 OUTLINED_FUNCTION_28_41@<Q0>(uint64_t a1@<X8>, __n128 a2, __int128 a3)
{
  *(v4 + 32) = v3;
  *(v4 + 40) = a1;
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  result = a2;
  *(v4 + 88) = a3;
  *(v4 + 72) = a2;
  *(v4 + 104) = 1;
  return result;
}

__n128 OUTLINED_FUNCTION_42_24()
{
  v4 = *(v2 + 1856);
  *(v0 + 16) = v1;
  v5 = v0 + 80 * v3;
  *(v5 + 32) = 2116036128;
  *(v5 + 40) = 0xE400000000000000;
  result = *(v2 + 288);
  v7 = *(v2 + 304);
  v8 = *(v2 + 320);
  *(v5 + 96) = *(v2 + 336);
  *(v5 + 64) = v7;
  *(v5 + 80) = v8;
  *(v5 + 48) = result;
  *(v5 + 104) = 0;
  *(v2 + 1760) = v4;
  return result;
}

void OUTLINED_FUNCTION_47_27()
{
  *(v0 + 16) = v2;
  v5 = v0 + 80 * v1;
  *(v5 + 32) = v4;
  *(v5 + 40) = v3;
}

uint64_t OUTLINED_FUNCTION_65_20()
{

  return sub_1D51D2FD0();
}

void OUTLINED_FUNCTION_68_12()
{
  *(v0 + 16) = v2;
  v3 = v0 + 80 * v1;
  *(v3 + 32) = 2112544;
  *(v3 + 40) = 0xE300000000000000;
}

__n128 OUTLINED_FUNCTION_78_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a11, uint64_t a9, uint64_t a10, __n128 a12, __int128 a13, __int128 a14, uint64_t a15)
{
  result = a12;
  *(v15 + 96) = a15;
  *(v15 + 64) = a13;
  *(v15 + 80) = a14;
  *(v15 + 48) = a12;
  return result;
}

void OUTLINED_FUNCTION_109_12()
{
  *(v0 + 16) = v1;
  v5 = v0 + 80 * v4;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
}

uint64_t OUTLINED_FUNCTION_110_9()
{

  return sub_1D4F13D54();
}

__n128 OUTLINED_FUNCTION_136_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10, __int128 a11, __int128 a12, uint64_t a13)
{
  result = a10;
  *(v13 + 96) = a13;
  *(v13 + 64) = a11;
  *(v13 + 80) = a12;
  *(v13 + 48) = a10;
  return result;
}

void *OUTLINED_FUNCTION_140_7@<X0>(uint64_t a1@<X8>)
{

  return memcpy((a1 + 32), (v1 + 16), 0x49uLL);
}

void *OUTLINED_FUNCTION_141_3@<X0>(uint64_t a1@<X8>)
{

  return memcpy((a1 + 32), (v1 + 96), 0x49uLL);
}

uint64_t OUTLINED_FUNCTION_150_7@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{

  return sub_1D54F08F4(v2, 0, 0, a1, a2);
}

uint64_t OUTLINED_FUNCTION_155_5()
{

  return sub_1D560C758();
}

double OUTLINED_FUNCTION_156_4(uint64_t a1, uint64_t a2)
{

  return result;
}

double OUTLINED_FUNCTION_159_6()
{

  return result;
}

void OUTLINED_FUNCTION_170_2()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x1DA6ED200);
}

double OUTLINED_FUNCTION_171_2()
{

  return result;
}

void OUTLINED_FUNCTION_173_1(uint64_t a1@<X8>)
{
  *(a1 + 88) = &unk_1D5640998;
  *(a1 + 96) = 0;
  *(a1 + 104) = 2;
}

void OUTLINED_FUNCTION_175_2(uint64_t a1@<X8>)
{
  *(a1 + 32) = v1;
  *(a1 + 40) = v2;
  *(a1 + 104) = 0;
}

double OUTLINED_FUNCTION_185_3()
{

  return result;
}

unint64_t OUTLINED_FUNCTION_191_1@<X0>(uint64_t a1@<X8>)
{
  v2[2] = v1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  v2[3] = a1;
  v2[4] = 60;
  v2[5] = 0xE100000000000000;
  v2[6] = 95;
  v2[7] = 0xE100000000000000;

  return sub_1D4F53278();
}

uint64_t OUTLINED_FUNCTION_193_1@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 1664) = a1;
  *(v1 + 1632) = v3;

  return sub_1D4E628D4(v1 + 1632, v1 + 96);
}

uint64_t OUTLINED_FUNCTION_194_3@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 1704) = a1;
  *(v1 + 1672) = v3;

  return sub_1D4E628D4(v1 + 1672, v1 + 16);
}

double OUTLINED_FUNCTION_195_2()
{

  return result;
}

double OUTLINED_FUNCTION_196_1()
{

  return result;
}