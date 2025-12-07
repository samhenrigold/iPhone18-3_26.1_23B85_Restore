unint64_t sub_23B45B0A0()
{
  result = qword_27E133880;
  if (!qword_27E133880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133880);
  }

  return result;
}

unint64_t sub_23B45B0F8()
{
  result = qword_280B426B0;
  if (!qword_280B426B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B426B0);
  }

  return result;
}

unint64_t sub_23B45B150()
{
  result = qword_280B426B8;
  if (!qword_280B426B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B426B8);
  }

  return result;
}

void WeatherService.fetchWeather<A>(for:including:options:completion:)()
{
  OUTLINED_FUNCTION_21();
  v4 = v3;
  v48 = v5;
  v49 = v6;
  v50 = v7;
  v51 = v8;
  v10 = v9;
  v11 = type metadata accessor for WeatherQuery(0, v3, v8, v5);
  OUTLINED_FUNCTION_5();
  v13 = v12;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_18_14();
  v47 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v45 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_0();
  v43 = v17;
  OUTLINED_FUNCTION_24_0();
  v46 = sub_23B50AA24();
  OUTLINED_FUNCTION_5();
  v44 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6_0();
  v42 = v20;
  v21 = OUTLINED_FUNCTION_24_0();
  Options = type metadata accessor for InstantWeatherQueryOptions(v21);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_12_0();
  v26 = v24 - v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_30_4();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F70, &unk_23B5192B0);
  OUTLINED_FUNCTION_3(v28);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_20_0();
  sub_23B3E45D0(v10, v4, v2);
  v30 = OUTLINED_FUNCTION_172_0();
  OUTLINED_FUNCTION_51(v30, v31, Options);
  if (v32)
  {
    OUTLINED_FUNCTION_117_0();
    v33(v0, v10, v11);
    v54 = v4;
    sub_23B39C90C(v50, &v52, v51, v48, v49, 1, &v54, v34, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v0);
    (*(v13 + 8))(v0, v11);
  }

  else
  {
    sub_23B3B0A98();
    OUTLINED_FUNCTION_202();
    sub_23B477C04();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v36 = (v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F18, &qword_23B515838) + 48));
      v37 = *v36;
      v38 = *(v36 + 8);
      (*(v44 + 32))(v42, v26, v46);
      v52 = v37;
      v53 = v38;
      OUTLINED_FUNCTION_139_0();
      v39 = swift_allocObject();
      v39[2] = v4;
      v39[3] = v48;
      v39[4] = v49;

      WeatherService.fetchInstantWeather<A>(for:dataSet:spanning:stride:with:completion:)();

      (*(v44 + 8))(v42, v46);
    }

    else
    {
      (*(v45 + 32))(v43, v26, v47);
      OUTLINED_FUNCTION_139_0();
      v40 = swift_allocObject();
      v40[2] = v4;
      v40[3] = v48;
      v40[4] = v49;

      WeatherService.fetchInstantWeather<A>(for:dataSet:at:with:completion:)();

      (*(v45 + 8))(v43, v47);
    }

    sub_23B3A24BC(v1, type metadata accessor for InstantWeatherQueryOptions);
  }

  OUTLINED_FUNCTION_20();
}

void WeatherService.fetchInstantWeather<A>(for:dataSet:spanning:stride:with:completion:)()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v4 = v3;
  v22 = v5;
  v7 = v6;
  v10 = type metadata accessor for WeatherQuery(0, v1, v8, v9);
  OUTLINED_FUNCTION_5();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_169_0();
  OUTLINED_FUNCTION_200_0();
  v16();
  v17 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v18 = (v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = v2;
  (*(v12 + 32))(v19 + v17, v0, v10);
  *(v19 + v18) = v7;
  v20 = (v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v20 = v22;
  v20[1] = v4;
  v21 = v7;

  WeatherService.fetchInstantWeather(for:spanning:stride:with:completion:)();

  OUTLINED_FUNCTION_20();
}

void WeatherService.fetchInstantWeather<A>(for:dataSet:at:with:completion:)()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v4 = v3;
  v22 = v5;
  v7 = v6;
  v9 = v8;
  v12 = type metadata accessor for WeatherQuery(0, v1, v10, v11);
  OUTLINED_FUNCTION_5();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_23();
  (*(v14 + 16))(v0, v7, v12);
  v18 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v19 = (v16 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = v2;
  (*(v14 + 32))(v20 + v18, v0, v12);
  *(v20 + v19) = v9;
  v21 = (v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v21 = v22;
  v21[1] = v4;
  v9;

  WeatherService.fetchInstantWeather(for:at:with:completion:)();

  OUTLINED_FUNCTION_20();
}

void WeatherService.fetchWeather<A, B, C>(for:including:_:_:options:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_21();
  v65 = v26;
  v66 = v22;
  v28 = v27;
  v63 = v29;
  v64 = v30;
  v61 = v32;
  v62 = v31;
  v59 = v33;
  v60 = v34;
  v35 = type metadata accessor for WeatherQuery(0, a22, v34, v32);
  OUTLINED_FUNCTION_5();
  v37 = v36;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_15_13();
  v39 = OUTLINED_FUNCTION_63();
  v43 = type metadata accessor for WeatherQuery(v39, v40, v41, v42);
  OUTLINED_FUNCTION_5();
  v45 = v44;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_127();
  v51 = OUTLINED_FUNCTION_156_0(v47, v48, v49, v50);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_30_6();
  OUTLINED_FUNCTION_88_0();
  v53(v23, v59, v51);
  v68 = v23;
  OUTLINED_FUNCTION_117_0();
  v54(v24, v60, v43);
  v69 = v24;
  OUTLINED_FUNCTION_141_0();
  v55(v25, v61, v35);
  v70 = v25;
  v67[2] = a22;
  sub_23B39C90C(v62, &v68, v63, v64, v65, 3, v67, v56, a21, v59, v60, a22, v61, v62, v63, v64, v65, v66, v28, a21);
  (*(v37 + 8))(v25, v35);
  (*(v45 + 8))(v24, v43);
  v57 = OUTLINED_FUNCTION_270();
  v58(v57);
  OUTLINED_FUNCTION_20();
}

void WeatherService.fetchWeather<A, B, C, D>(for:including:_:_:_:options:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_21();
  a19 = v27;
  a20 = v28;
  v96 = v29;
  v94 = v30;
  v95 = v31;
  v92 = v33;
  v93 = v32;
  v90 = v34;
  v88 = v35;
  v86 = v36;
  v79 = a21;
  v37 = a22;
  v84 = a22;
  v38 = a23;
  v87 = a23;
  v91 = a24;
  v89 = type metadata accessor for WeatherQuery(0, a24, v35, v34);
  OUTLINED_FUNCTION_5();
  v40 = v39;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_29_8(v42, v75);
  v43 = OUTLINED_FUNCTION_65_0();
  type metadata accessor for WeatherQuery(v43, v44, v45, v46);
  OUTLINED_FUNCTION_177_0();
  OUTLINED_FUNCTION_2_28(v47, &a14);
  v49 = v48;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_156_0(v51, v52, v53, v54);
  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_2_28(v55, &a16);
  v57 = v56;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_127();
  v59 = OUTLINED_FUNCTION_63();
  type metadata accessor for WeatherQuery(v59, v60, v61, v62);
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_2_28(v63, &a17);
  v65 = v64;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_30_6();
  OUTLINED_FUNCTION_170_0();
  v67(v38, v86);
  v98 = v38;
  OUTLINED_FUNCTION_86_0();
  v68(v24, v88, v37);
  v99 = v24;
  OUTLINED_FUNCTION_107_0();
  v69(v25, v90, v26);
  v100 = v25;
  v70 = v40;
  v71 = *(v40 + 16);
  v72 = v85;
  v73 = v89;
  v71(v85, v92, v89);
  v101 = v85;
  v97[0] = v79;
  v97[1] = v84;
  v97[2] = v87;
  v97[3] = v91;
  sub_23B39C90C(v93, &v98, v94, v95, v96, 4, v97, v74, v76, v77, v79, v80, v82, v84, v85, v86, v87, v88, v89, v90);
  (*(v70 + 8))(v72, v73);
  (*(v49 + 8))(v25, v78);
  (*(v57 + 8))(v24, v81);
  (*(v65 + 8))(v38, v83);
  OUTLINED_FUNCTION_20();
}

void WeatherService.fetchWeather<A, B, C, D, E>(for:including:_:_:_:_:options:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_21();
  a19 = v28;
  a20 = v29;
  v106 = v30;
  v105 = v31;
  v102 = v32;
  v99 = v33;
  v96 = v34;
  v35 = a22;
  v103 = v36;
  v104 = a21;
  v91 = a23;
  v37 = a24;
  v94 = a24;
  v38 = a25;
  v98 = a25;
  v101 = a26;
  v100 = type metadata accessor for WeatherQuery(0, a26, v39, v33);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_52();
  v42 = OUTLINED_FUNCTION_35(v41);
  v45 = type metadata accessor for WeatherQuery(v42, v38, v43, v44);
  OUTLINED_FUNCTION_2_0(v45, &a13);
  v47 = v46;
  v85 = v46;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_52();
  v107 = v49;
  v50 = OUTLINED_FUNCTION_24_0();
  type metadata accessor for WeatherQuery(v50, v37, v51, v52);
  OUTLINED_FUNCTION_177_0();
  OUTLINED_FUNCTION_2_28(v53, &v113);
  v55 = v54;
  v88 = v54;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_156_0(v57, v58, v59, v60);
  OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_2_28(v61, &a9);
  v63 = v62;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_127();
  v65 = OUTLINED_FUNCTION_84_0();
  type metadata accessor for WeatherQuery(v65, v66, v67, v68);
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_2_28(v69, &a11);
  v71 = v70;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_86_0();
  OUTLINED_FUNCTION_238();
  v73();
  v109 = v35;
  OUTLINED_FUNCTION_169_0();
  OUTLINED_FUNCTION_245();
  v74();
  v110 = v26;
  (*(v55 + 16))(v37, v99, v27);
  v111 = v37;
  OUTLINED_FUNCTION_170_0();
  OUTLINED_FUNCTION_149_0();
  v75();
  v112 = v107;
  OUTLINED_FUNCTION_40_3();
  v76 = OUTLINED_FUNCTION_236_0();
  v77(v76, v102, v100);
  v113 = v107;
  OUTLINED_FUNCTION_111();
  v108[0] = v35;
  v108[1] = v78;
  OUTLINED_FUNCTION_207();
  v108[2] = v80;
  v108[3] = v79;
  v108[4] = v101;
  sub_23B39C90C(v103, &v109, v105, v106, v104, 5, v108, v81, v84, v85, v86, v88, v89, v91, v92, v94, v95, v96, v97, v98);
  (*(v55 + 24))(v107, v100);
  OUTLINED_FUNCTION_56_1();
  v82(v107, v47);
  OUTLINED_FUNCTION_56_1();
  v83(v37, v87);
  (*(v63 + 8))(v26, v90);
  (*(v71 + 8))(v35, v93);
  OUTLINED_FUNCTION_20();
}

void WeatherService.fetchWeather<A, B, C, D, E, F>(for:including:_:_:_:_:_:options:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_21();
  a19 = v30;
  a20 = v31;
  v114 = v32;
  v108 = v33;
  v113 = a21;
  v111 = v34;
  v112 = a22;
  v35 = a23;
  v97 = a23;
  v36 = a24;
  v102 = a24;
  v37 = a25;
  v105 = a25;
  v38 = a26;
  v107 = a26;
  v39 = a27;
  v109 = a27;
  v110 = a28;
  v42 = type metadata accessor for WeatherQuery(0, a28, v40, v41);
  OUTLINED_FUNCTION_2_0(v42, &a16);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_52();
  v45 = OUTLINED_FUNCTION_35(v44);
  v48 = type metadata accessor for WeatherQuery(v45, v39, v46, v47);
  OUTLINED_FUNCTION_2_0(v48, &a9);
  v106 = v49;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_52();
  v116 = v51;
  v52 = OUTLINED_FUNCTION_24_0();
  type metadata accessor for WeatherQuery(v52, v38, v53, v54);
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_2_28(v55, v118);
  v96 = v56;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_52();
  v115 = v58;
  v59 = OUTLINED_FUNCTION_24_0();
  type metadata accessor for WeatherQuery(v59, v37, v60, v61);
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_2_28(v62, &v119);
  v64 = v63;
  v99 = v63;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_15_13();
  OUTLINED_FUNCTION_156_0(v66, v67, v68, v69);
  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_2_28(v70, &v121);
  v72 = v71;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_13();
  v74 = OUTLINED_FUNCTION_63();
  type metadata accessor for WeatherQuery(v74, v75, v76, v77);
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_2_28(v78, v123);
  v80 = v79;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_141_0();
  v82(v35, v108);
  v120 = v35;
  OUTLINED_FUNCTION_88_0();
  OUTLINED_FUNCTION_280();
  v83();
  v121 = v28;
  OUTLINED_FUNCTION_131_0();
  v84();
  v122 = v29;
  OUTLINED_FUNCTION_234_0();
  OUTLINED_FUNCTION_213();
  v85();
  v123[0] = v36;
  OUTLINED_FUNCTION_56_2();
  OUTLINED_FUNCTION_166_0();
  v86();
  v123[1] = v116;
  OUTLINED_FUNCTION_170_0();
  OUTLINED_FUNCTION_195_0();
  OUTLINED_FUNCTION_224_0();
  v87();
  v124 = v29;
  OUTLINED_FUNCTION_120_0(&v122);
  v118[1] = v105;
  v118[2] = v107;
  v118[3] = v109;
  v119 = v110;
  sub_23B39C90C(v111, &v120, v114, v113, v112, 6, &v117, v88, v94, v96, v97, v29, v98, v99, v100, v102, v103, v105, v106, v107);
  v89 = OUTLINED_FUNCTION_283();
  v90(v89, v38);
  (*(v64 + 24))(v116, v37);
  OUTLINED_FUNCTION_56_1();
  v91(v115, v95);
  OUTLINED_FUNCTION_56_1();
  v92 = OUTLINED_FUNCTION_213_0();
  v93(v92);
  (*(v72 + 8))(v28, v101);
  (*(v80 + 8))(v35, v104);
  OUTLINED_FUNCTION_20();
}

void WeatherService.fetchWeather<A, B, C, D, E, F, G, H>(for:including:_:_:_:_:_:_:_:options:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_21();
  a19 = v33;
  a20 = v34;
  v136 = v35;
  v139 = v36;
  OUTLINED_FUNCTION_114_0(a23);
  OUTLINED_FUNCTION_94_0(v37);
  OUTLINED_FUNCTION_93_0(v38);
  v39 = a25;
  v121 = a25;
  v40 = a26;
  v128 = a26;
  v41 = a27;
  v133 = a27;
  v42 = a29;
  v43 = a30;
  v44 = a31;
  v45 = OUTLINED_FUNCTION_80_1(a32, &a10);
  v49 = type metadata accessor for WeatherQuery(v45, v46, v47, v48);
  OUTLINED_FUNCTION_2_0(v49, &v156);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_52();
  v52 = OUTLINED_FUNCTION_35(v51);
  v55 = type metadata accessor for WeatherQuery(v52, v44, v53, v54);
  OUTLINED_FUNCTION_2_0(v55, v149);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_52();
  v58 = OUTLINED_FUNCTION_35(v57);
  v145 = type metadata accessor for WeatherQuery(v58, v43, v59, v60);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_52();
  v142 = v62;
  v63 = OUTLINED_FUNCTION_24_0();
  type metadata accessor for WeatherQuery(v63, v42, v64, v65);
  OUTLINED_FUNCTION_5();
  v143 = v67;
  v144 = v66;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_29_8(v69, v121);
  v70 = OUTLINED_FUNCTION_65_0();
  type metadata accessor for WeatherQuery(v70, v71, v72, v73);
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_2_28(v74, v138);
  v76 = v75;
  v125 = v75;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_52();
  v79 = OUTLINED_FUNCTION_35(v78);
  type metadata accessor for WeatherQuery(v79, v41, v80, v81);
  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_2_28(v82, v140);
  v127 = v83;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_47_2();
  v85 = OUTLINED_FUNCTION_63();
  type metadata accessor for WeatherQuery(v85, v86, v87, v88);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_2_28(v89, &v143);
  v132 = v90;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_13();
  v92 = OUTLINED_FUNCTION_98_0();
  type metadata accessor for WeatherQuery(v92, v93, v94, v95);
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_2_28(v96, &v146);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_15_13();
  OUTLINED_FUNCTION_170_0();
  OUTLINED_FUNCTION_146_0();
  v98();
  v149[0] = v39;
  OUTLINED_FUNCTION_130_0();
  v99();
  v149[1] = v43;
  OUTLINED_FUNCTION_167_0();
  v100();
  v150 = v32;
  OUTLINED_FUNCTION_160(&a18);
  OUTLINED_FUNCTION_213();
  v101();
  v151 = v40;
  v102 = v141;
  (*(v143 + 16))(v141, v136, v144);
  v152 = v102;
  OUTLINED_FUNCTION_40_3();
  v103 = v142;
  OUTLINED_FUNCTION_276();
  v104();
  v153 = v103;
  OUTLINED_FUNCTION_169_0();
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_280();
  OUTLINED_FUNCTION_166_0();
  v105();
  v154 = v103;
  OUTLINED_FUNCTION_56_2();
  OUTLINED_FUNCTION_190_0();
  OUTLINED_FUNCTION_186_0();
  v106();
  v155 = v43;
  OUTLINED_FUNCTION_82_0();
  v146 = v108;
  v147[0] = v107;
  OUTLINED_FUNCTION_154_0(v147);
  OUTLINED_FUNCTION_120_0(&v148);
  OUTLINED_FUNCTION_111();
  v147[5] = v110;
  v148 = v109;
  sub_23B39C90C(v139, v149, v137, v138[1], v138[0], 8, &v146, v111, v122, v123, v125, v32, v126, v127, v128, v43, v130, v132, v133, v134);
  v112 = OUTLINED_FUNCTION_195();
  v113(v112);
  v114 = OUTLINED_FUNCTION_241_0();
  v115(v114);
  (*(v76 + 24))(v142, v145);
  (*(v143 + 8))(v141, v144);
  OUTLINED_FUNCTION_56_1();
  v116(v140[1], v124);
  OUTLINED_FUNCTION_56_1();
  OUTLINED_FUNCTION_159_0();
  v117();
  OUTLINED_FUNCTION_56_1();
  v118(v129, v131);
  v119 = OUTLINED_FUNCTION_283();
  v120(v119, v135);
  OUTLINED_FUNCTION_20();
}

void WeatherService.fetchWeather<A, B, C, D, E, F, G, H, I>(for:including:_:_:_:_:_:_:_:_:options:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_21();
  a19 = v36;
  a20 = v37;
  v147 = v38;
  v146 = v39;
  v152 = v40;
  OUTLINED_FUNCTION_114_0(a23);
  OUTLINED_FUNCTION_94_0(v41);
  OUTLINED_FUNCTION_93_0(v42);
  OUTLINED_FUNCTION_165_0(v43);
  v150 = v44;
  v157 = a26;
  v133 = a27;
  v45 = a28;
  v142 = a28;
  v46 = a29;
  v47 = a30;
  v48 = a31;
  v49 = a32;
  v50 = a33;
  v51 = OUTLINED_FUNCTION_80_1(a34, v164);
  v55 = type metadata accessor for WeatherQuery(v51, v52, v53, v54);
  OUTLINED_FUNCTION_2_0(v55, v163);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_52();
  v58 = OUTLINED_FUNCTION_35(v57);
  v61 = type metadata accessor for WeatherQuery(v58, v50, v59, v60);
  OUTLINED_FUNCTION_2_0(v61, v161);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_52();
  v64 = OUTLINED_FUNCTION_35(v63);
  v67 = type metadata accessor for WeatherQuery(v64, v49, v65, v66);
  OUTLINED_FUNCTION_2_0(v67, &v157);
  v159 = v68;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_52();
  v71 = OUTLINED_FUNCTION_35(v70);
  v158 = type metadata accessor for WeatherQuery(v71, v48, v72, v73);
  OUTLINED_FUNCTION_5();
  v156[1] = v74;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_52();
  v77 = OUTLINED_FUNCTION_35(v76);
  v80 = type metadata accessor for WeatherQuery(v77, v47, v78, v79);
  OUTLINED_FUNCTION_2_0(v80, &a16);
  v154[2] = v81;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_52();
  v84 = OUTLINED_FUNCTION_35(v83);
  type metadata accessor for WeatherQuery(v84, v46, v85, v86);
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_2_28(v87, &v149);
  v132 = v88;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_52();
  v91 = OUTLINED_FUNCTION_35(v90);
  type metadata accessor for WeatherQuery(v91, v45, v92, v93);
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_2_28(v94, &v152);
  v137 = v95;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_20_0();
  v97 = OUTLINED_FUNCTION_63();
  v101 = type metadata accessor for WeatherQuery(v97, v98, v99, v100);
  OUTLINED_FUNCTION_2_28(v101, v154);
  v103 = v102;
  v141 = v102;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_15_13();
  type metadata accessor for WeatherQuery(0, v157, v105, v106);
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_2_28(v107, &v155);
  v109 = v108;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v110);
  OUTLINED_FUNCTION_18_14();
  OUTLINED_FUNCTION_117_0();
  OUTLINED_FUNCTION_187_0();
  v111();
  v162[0] = v34;
  (*(v103 + 16))(v49, v146, v101);
  v162[1] = v49;
  OUTLINED_FUNCTION_131_0();
  v112();
  v163[0] = v35;
  v113 = v153;
  OUTLINED_FUNCTION_213();
  v114();
  v163[1] = v113;
  OUTLINED_FUNCTION_50_1();
  OUTLINED_FUNCTION_269();
  OUTLINED_FUNCTION_215_0();
  v115();
  v163[2] = v113;
  OUTLINED_FUNCTION_50_1();
  v116 = OUTLINED_FUNCTION_269();
  v117(v116, v147, v158);
  v163[3] = v113;
  OUTLINED_FUNCTION_269();
  OUTLINED_FUNCTION_272();
  v118();
  v164[0] = v113;
  OUTLINED_FUNCTION_40_3();
  OUTLINED_FUNCTION_149_0();
  v119();
  v164[1] = v145;
  OUTLINED_FUNCTION_77_1();
  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_267();
  OUTLINED_FUNCTION_223_0();
  v120();
  v164[2] = v46;
  OUTLINED_FUNCTION_297(v151);
  OUTLINED_FUNCTION_204_0(v156);
  OUTLINED_FUNCTION_154_0(&v158);
  OUTLINED_FUNCTION_120_0(v162);
  v161[4] = v148;
  sub_23B39C90C(v152, v162, v151[1], v151[0], v150, 9, &v160, v121, v129, v130, v132, v133, v35, v135, v137, v49, v139, v141, v142, v143);
  v122 = OUTLINED_FUNCTION_270();
  v123(v122);
  (*(v35 + 8))(v145, v103 + 16);
  (*(v159 + 8))(v156[0]);
  OUTLINED_FUNCTION_56_1();
  v124(v154[1], v158);
  OUTLINED_FUNCTION_56_1();
  OUTLINED_FUNCTION_194_0();
  v125();
  OUTLINED_FUNCTION_56_1();
  v126(v153, v131);
  OUTLINED_FUNCTION_56_1();
  v127(v134, v136);
  OUTLINED_FUNCTION_56_1();
  v128(v138, v140);
  (*(v109 + 8))(v34, v144);
  OUTLINED_FUNCTION_20();
}

void WeatherService.fetchWeather<A, B, C, D, E, F, G, H, I, J, K>(for:including:_:_:_:_:_:_:_:_:_:_:options:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_21();
  a19 = v38;
  a20 = v39;
  v176 = v40;
  v172 = v41;
  v170 = v42;
  v180 = v43;
  OUTLINED_FUNCTION_147_0(a25);
  OUTLINED_FUNCTION_114_0(v44);
  OUTLINED_FUNCTION_115_0(v45);
  OUTLINED_FUNCTION_94_0(v46);
  OUTLINED_FUNCTION_93_0(v47);
  OUTLINED_FUNCTION_231_0(v48);
  OUTLINED_FUNCTION_193_0(v49);
  OUTLINED_FUNCTION_116_0(v50);
  OUTLINED_FUNCTION_113_0(a29);
  v51 = a30;
  v164 = a30;
  v52 = a31;
  v53 = a32;
  v54 = a33;
  v55 = a34;
  v56 = a35;
  v171 = a35;
  v57 = a36;
  v173 = a36;
  v58 = a37;
  v175 = a37;
  v59 = OUTLINED_FUNCTION_80_1(a38, v187);
  v63 = type metadata accessor for WeatherQuery(v59, v60, v61, v62);
  OUTLINED_FUNCTION_2_0(v63, v186);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_52();
  v66 = OUTLINED_FUNCTION_35(v65);
  v69 = type metadata accessor for WeatherQuery(v66, v58, v67, v68);
  OUTLINED_FUNCTION_2_0(v69, &v184);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_52();
  v72 = OUTLINED_FUNCTION_35(v71);
  v75 = type metadata accessor for WeatherQuery(v72, v57, v73, v74);
  OUTLINED_FUNCTION_2_0(v75, v183);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_52();
  v78 = OUTLINED_FUNCTION_35(v77);
  v81 = type metadata accessor for WeatherQuery(v78, v56, v79, v80);
  OUTLINED_FUNCTION_2_0(v81, &a16);
  v183[6] = v82;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_52();
  v85 = OUTLINED_FUNCTION_35(v84);
  v88 = type metadata accessor for WeatherQuery(v85, v55, v86, v87);
  OUTLINED_FUNCTION_2_0(v88, &a13);
  v183[3] = v89;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_52();
  v92 = OUTLINED_FUNCTION_35(v91);
  v95 = type metadata accessor for WeatherQuery(v92, v54, v93, v94);
  OUTLINED_FUNCTION_2_0(v95, &a11);
  v183[1] = v96;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_52();
  v99 = OUTLINED_FUNCTION_35(v98);
  v102 = type metadata accessor for WeatherQuery(v99, v53, v100, v101);
  OUTLINED_FUNCTION_2_0(v102, &v189);
  v181[2] = v103;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_21_1();
  v105 = OUTLINED_FUNCTION_65_0();
  type metadata accessor for WeatherQuery(v105, v106, v107, v108);
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_2_28(v109, &v174);
  v111 = v110;
  v161 = v110;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v112);
  OUTLINED_FUNCTION_52();
  v114 = OUTLINED_FUNCTION_35(v113);
  v117 = type metadata accessor for WeatherQuery(v114, v51, v115, v116);
  OUTLINED_FUNCTION_2_28(v117, &v177);
  v119 = v118;
  v163 = v118;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v120);
  OUTLINED_FUNCTION_23();
  type metadata accessor for WeatherQuery(0, v183[5], v121, v122);
  OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_2_28(v123, v179);
  v125 = v124;
  v168 = v124;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v126);
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_258(v127, v128, v129, v130);
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_2_28(v131, &v180);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v132);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_121_0();
  v133(v57, v170);
  v187[0] = v57;
  v125 += 16;
  OUTLINED_FUNCTION_252();
  v134();
  v187[1] = v53;
  (*(v119 + 16))(v56, v172, v117);
  v187[2] = v56;
  v111 += 16;
  OUTLINED_FUNCTION_160(v188);
  OUTLINED_FUNCTION_213();
  v135();
  v187[3] = v56;
  OUTLINED_FUNCTION_50_1();
  OUTLINED_FUNCTION_79_1();
  v136();
  v187[4] = v55;
  OUTLINED_FUNCTION_50_1();
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_57_2();
  v137();
  v187[5] = v56;
  OUTLINED_FUNCTION_185_0();
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_136();
  v138();
  v187[6] = v56;
  OUTLINED_FUNCTION_50_1();
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_215_0();
  v139();
  v188[0] = v56;
  OUTLINED_FUNCTION_56_2();
  OUTLINED_FUNCTION_197_0();
  OUTLINED_FUNCTION_166_0();
  v140();
  v188[1] = v125;
  OUTLINED_FUNCTION_53_1();
  OUTLINED_FUNCTION_195_0();
  OUTLINED_FUNCTION_224_0();
  v141();
  v188[2] = v111;
  OUTLINED_FUNCTION_123_0();
  OUTLINED_FUNCTION_199();
  OUTLINED_FUNCTION_146_0();
  OUTLINED_FUNCTION_183_0();
  v142();
  v188[3] = v119 + 16;
  OUTLINED_FUNCTION_62_1(&a17);
  OUTLINED_FUNCTION_205_0(v178);
  OUTLINED_FUNCTION_202_0(v181);
  OUTLINED_FUNCTION_203_0(&v182);
  v185[7] = v171;
  v186[0] = v173;
  v186[1] = v175;
  v186[2] = v178[1];
  sub_23B39C90C(v180, v187, v179[3], v179[2], v179[1], 11, v185, v143, v158, v55, v159, v161, v56, v162, v163, v164, v53, v166, v168, v57);
  v144 = OUTLINED_FUNCTION_99_0();
  v145(v144);
  (*(v56 + 8))(v111, v52);
  (*(v58 + 8))(v125, v53);
  OUTLINED_FUNCTION_56_1();
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_194_0();
  v146();
  OUTLINED_FUNCTION_56_1();
  v147 = OUTLINED_FUNCTION_128_0();
  v148(v147);
  OUTLINED_FUNCTION_56_1();
  v149 = OUTLINED_FUNCTION_55_2();
  v150(v149);
  OUTLINED_FUNCTION_56_1();
  v151 = OUTLINED_FUNCTION_78_1();
  v152(v151);
  OUTLINED_FUNCTION_56_1();
  v153(v181[0], v160);
  OUTLINED_FUNCTION_56_1();
  v154 = OUTLINED_FUNCTION_292();
  v155(v154);
  OUTLINED_FUNCTION_56_1();
  v156(v165, v167);
  OUTLINED_FUNCTION_56_1();
  v157(v169);
  OUTLINED_FUNCTION_20();
}

void WeatherService.fetchWeather<A, B, C, D, E, F, G, H, I, J, K, L>(for:including:_:_:_:_:_:_:_:_:_:_:_:options:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  OUTLINED_FUNCTION_21();
  a19 = v42;
  a20 = v43;
  v199[1] = v44;
  v198 = v45;
  v197 = v46;
  v196 = v47;
  v204 = v48;
  OUTLINED_FUNCTION_193_0(a27);
  OUTLINED_FUNCTION_147_0(v49);
  OUTLINED_FUNCTION_165_0(v50);
  OUTLINED_FUNCTION_114_0(v51);
  OUTLINED_FUNCTION_115_0(v52);
  OUTLINED_FUNCTION_94_0(v53);
  OUTLINED_FUNCTION_93_0(v54);
  OUTLINED_FUNCTION_150_0(a29);
  OUTLINED_FUNCTION_158_0(a30);
  v207[4] = a31;
  v55 = a32;
  v193 = a32;
  v56 = a33;
  v57 = a34;
  v58 = a35;
  v59 = a36;
  v60 = a37;
  v61 = a38;
  v62 = a39;
  v200 = a39;
  v63 = OUTLINED_FUNCTION_80_1(a40, v212);
  v67 = type metadata accessor for WeatherQuery(v63, v64, v65, v66);
  OUTLINED_FUNCTION_2_0(v67, &v211);
  v199[0] = v68;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_52();
  v71 = OUTLINED_FUNCTION_35(v70);
  v74 = type metadata accessor for WeatherQuery(v71, v62, v72, v73);
  OUTLINED_FUNCTION_2_0(v74, v208);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_52();
  v77 = OUTLINED_FUNCTION_35(v76);
  v80 = type metadata accessor for WeatherQuery(v77, v61, v78, v79);
  OUTLINED_FUNCTION_2_0(v80, v206);
  v195 = v81;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_52();
  v84 = OUTLINED_FUNCTION_35(v83);
  v87 = type metadata accessor for WeatherQuery(v84, v60, v85, v86);
  OUTLINED_FUNCTION_2_0(v87, &a14);
  v208[3] = v88;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_52();
  v91 = OUTLINED_FUNCTION_35(v90);
  v94 = type metadata accessor for WeatherQuery(v91, v59, v92, v93);
  OUTLINED_FUNCTION_2_0(v94, &a11);
  v208[0] = v95;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_52();
  v98 = OUTLINED_FUNCTION_35(v97);
  v101 = type metadata accessor for WeatherQuery(v98, v58, v99, v100);
  OUTLINED_FUNCTION_2_0(v101, &v220);
  v207[1] = v102;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_52();
  v105 = OUTLINED_FUNCTION_35(v104);
  v108 = type metadata accessor for WeatherQuery(v105, v57, v106, v107);
  OUTLINED_FUNCTION_2_0(v108, v219);
  v206[1] = v109;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v110);
  OUTLINED_FUNCTION_52();
  v112 = OUTLINED_FUNCTION_35(v111);
  v115 = type metadata accessor for WeatherQuery(v112, v56, v113, v114);
  OUTLINED_FUNCTION_2_0(v115, v218);
  v205[4] = v116;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v117);
  OUTLINED_FUNCTION_52();
  v119 = OUTLINED_FUNCTION_35(v118);
  type metadata accessor for WeatherQuery(v119, v55, v120, v121);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_2_28(v122, v199);
  v186 = v123;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v124);
  OUTLINED_FUNCTION_61_1();
  OUTLINED_FUNCTION_257_0(v125, v126, v127, v128);
  OUTLINED_FUNCTION_177_0();
  OUTLINED_FUNCTION_2_28(v129, &v200);
  v131 = v130;
  v188 = v130;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v132);
  OUTLINED_FUNCTION_15_13();
  OUTLINED_FUNCTION_256_0(v133, v134, v135, v136);
  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_2_28(v137, v202);
  v139 = v138;
  v192 = v138;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v140);
  OUTLINED_FUNCTION_30_6();
  type metadata accessor for WeatherQuery(0, v209, v141, v142);
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_2_28(v143, v203);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v144);
  v146 = OUTLINED_FUNCTION_20_13(v145, v40);
  v147(v146, v196);
  v213[0] = v41;
  v139 += 16;
  OUTLINED_FUNCTION_167_0();
  v148();
  v213[1] = v61;
  (*(v131 + 16))(v57, v197, v62);
  v213[2] = v57;
  OUTLINED_FUNCTION_130_0();
  v149();
  v214 = v40;
  OUTLINED_FUNCTION_50_1();
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_135_0();
  v150();
  v215 = v55;
  v151 = OUTLINED_FUNCTION_33_4();
  v152(v151, v198, v207[0]);
  v216 = v55;
  OUTLINED_FUNCTION_50_1();
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_79_1();
  v153();
  v217 = v55;
  OUTLINED_FUNCTION_50_1();
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_57_2();
  v154();
  v218[0] = v55;
  OUTLINED_FUNCTION_228_0();
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_262();
  v155();
  v218[1] = v55;
  OUTLINED_FUNCTION_169_0();
  OUTLINED_FUNCTION_190_0();
  OUTLINED_FUNCTION_149_0();
  v156();
  v219[0] = v139;
  OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_195_0();
  OUTLINED_FUNCTION_187_0();
  OUTLINED_FUNCTION_183_0();
  v157();
  v219[1] = v57;
  OUTLINED_FUNCTION_77_1();
  v158 = OUTLINED_FUNCTION_49_2();
  v159 = v201;
  v160(v158, v202[2], v201);
  v219[2] = v55;
  OUTLINED_FUNCTION_100(v209);
  OUTLINED_FUNCTION_185_0();
  OUTLINED_FUNCTION_116_0(v161);
  OUTLINED_FUNCTION_62_1(&a9);
  OUTLINED_FUNCTION_205_0(&v204);
  OUTLINED_FUNCTION_202_0(v205);
  OUTLINED_FUNCTION_203_0(v207);
  OUTLINED_FUNCTION_82_0();
  v212[2] = v163;
  v212[3] = v162;
  v212[4] = v202[1];
  sub_23B39C90C(v204, v213, v202[3], v203[1], v203[0], 12, &v210, v164, v182, v184, v186, v57, v187, v188, v61, v190, v192, v193, v41, v194);
  (*(v62 + 8))(v55, v159);
  v165 = OUTLINED_FUNCTION_171_0();
  v166(v165);
  (*(v195 + 8))(v139, v40);
  OUTLINED_FUNCTION_56_1();
  OUTLINED_FUNCTION_238();
  v167();
  OUTLINED_FUNCTION_56_1();
  v168 = OUTLINED_FUNCTION_55_2();
  v169(v168);
  OUTLINED_FUNCTION_56_1();
  v170 = OUTLINED_FUNCTION_78_1();
  v171(v170);
  OUTLINED_FUNCTION_56_1();
  v172 = OUTLINED_FUNCTION_263();
  v173(v172);
  OUTLINED_FUNCTION_56_1();
  v174 = OUTLINED_FUNCTION_127_0();
  v175(v174);
  OUTLINED_FUNCTION_56_1();
  v176(v183, v185);
  OUTLINED_FUNCTION_56_1();
  v177 = OUTLINED_FUNCTION_287();
  v178(v177);
  OUTLINED_FUNCTION_56_1();
  v179(v189, v191);
  OUTLINED_FUNCTION_56_1();
  v180 = OUTLINED_FUNCTION_292();
  v181(v180);
  OUTLINED_FUNCTION_20();
}

void WeatherService.fetchWeather<A, B, C, D, E, F, G, H, I, J, K, L, M>(for:including:_:_:_:_:_:_:_:_:_:_:_:_:options:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_21();
  a19 = v43;
  a20 = v44;
  v213[1] = v45;
  v211 = v46;
  v210 = v47;
  v209 = v48;
  v219 = v49;
  OUTLINED_FUNCTION_193_0(a27);
  OUTLINED_FUNCTION_147_0(v50);
  OUTLINED_FUNCTION_165_0(v51);
  OUTLINED_FUNCTION_114_0(v52);
  OUTLINED_FUNCTION_115_0(v53);
  OUTLINED_FUNCTION_94_0(v54);
  OUTLINED_FUNCTION_93_0(v55);
  v212 = v56;
  v217 = a29;
  OUTLINED_FUNCTION_145_0(a30);
  OUTLINED_FUNCTION_158_0(a31);
  v224 = a32;
  v57 = a33;
  v205 = a33;
  v58 = a34;
  v59 = a35;
  v60 = a36;
  v61 = a37;
  v62 = a38;
  v63 = a39;
  v64 = a40;
  v65 = a41;
  v214[1] = a41;
  v66 = OUTLINED_FUNCTION_80_1(a42, v228);
  v70 = type metadata accessor for WeatherQuery(v66, v67, v68, v69);
  OUTLINED_FUNCTION_2_0(v70, &v227);
  v214[0] = v71;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_52();
  v74 = OUTLINED_FUNCTION_35(v73);
  v77 = type metadata accessor for WeatherQuery(v74, v65, v75, v76);
  OUTLINED_FUNCTION_2_0(v77, v223);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_52();
  v80 = OUTLINED_FUNCTION_35(v79);
  v83 = type metadata accessor for WeatherQuery(v80, v64, v81, v82);
  OUTLINED_FUNCTION_2_0(v83, v221);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_52();
  v86 = OUTLINED_FUNCTION_35(v85);
  v89 = type metadata accessor for WeatherQuery(v86, v63, v87, v88);
  OUTLINED_FUNCTION_2_0(v89, &a11);
  v225 = v90;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_52();
  v93 = OUTLINED_FUNCTION_35(v92);
  v96 = type metadata accessor for WeatherQuery(v93, v62, v94, v95);
  OUTLINED_FUNCTION_2_0(v96, &v234);
  v223[2] = v97;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_52();
  v100 = OUTLINED_FUNCTION_35(v99);
  v103 = type metadata accessor for WeatherQuery(v100, v61, v101, v102);
  OUTLINED_FUNCTION_2_0(v103, v233);
  v223[0] = v104;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v105);
  OUTLINED_FUNCTION_52();
  v107 = OUTLINED_FUNCTION_35(v106);
  v110 = type metadata accessor for WeatherQuery(v107, v60, v108, v109);
  OUTLINED_FUNCTION_2_0(v110, v232);
  v222[2] = v111;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v112);
  OUTLINED_FUNCTION_52();
  v114 = OUTLINED_FUNCTION_35(v113);
  v117 = type metadata accessor for WeatherQuery(v114, v59, v115, v116);
  OUTLINED_FUNCTION_2_0(v117, v231);
  v222[0] = v118;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v119);
  OUTLINED_FUNCTION_52();
  v121 = OUTLINED_FUNCTION_35(v120);
  v124 = type metadata accessor for WeatherQuery(v121, v58, v122, v123);
  OUTLINED_FUNCTION_2_0(v124, v230);
  v221[0] = v125;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v126);
  OUTLINED_FUNCTION_52();
  v128 = OUTLINED_FUNCTION_35(v127);
  type metadata accessor for WeatherQuery(v128, v57, v129, v130);
  OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_2_28(v131, v213);
  v133 = v132;
  v199 = v132;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v134);
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_257_0(v135, v136, v137, v138);
  OUTLINED_FUNCTION_174_0();
  OUTLINED_FUNCTION_2_28(v139, v214);
  v203 = v140;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v141);
  OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_256_0(v142, v143, v144, v145);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_2_28(v146, v215);
  v208 = v147;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v148);
  OUTLINED_FUNCTION_30_6();
  OUTLINED_FUNCTION_259(v149, v150, v151, v152);
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_2_28(v153, &v216);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v154);
  v156 = OUTLINED_FUNCTION_20_13(v155, v194);
  v157(v156, v209);
  v229[0] = v42;
  OUTLINED_FUNCTION_130_0();
  v158();
  v229[1] = v63;
  OUTLINED_FUNCTION_279();
  v159();
  v229[2] = v59;
  v133 += 16;
  OUTLINED_FUNCTION_252();
  v160();
  v230[0] = v62;
  OUTLINED_FUNCTION_50_1();
  v161 = OUTLINED_FUNCTION_49_2();
  v162(v161, v210, v221[1]);
  v230[1] = v64;
  OUTLINED_FUNCTION_50_1();
  v163 = OUTLINED_FUNCTION_49_2();
  v164(v163, v211, v222[1]);
  v230[2] = v64;
  OUTLINED_FUNCTION_50_1();
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_135_0();
  v165();
  v231[0] = v64;
  OUTLINED_FUNCTION_50_1();
  v166 = OUTLINED_FUNCTION_49_2();
  v167(v166, v212, v223[1]);
  v231[1] = v64;
  OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_79_1();
  v168();
  v232[0] = v64;
  OUTLINED_FUNCTION_50_1();
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_57_2();
  v169();
  v232[1] = v64;
  OUTLINED_FUNCTION_40_3();
  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_223_0();
  v170();
  v232[2] = v63;
  OUTLINED_FUNCTION_77_1();
  OUTLINED_FUNCTION_236_0();
  OUTLINED_FUNCTION_159_0();
  OUTLINED_FUNCTION_166_0();
  v171();
  v233[0] = v57;
  OUTLINED_FUNCTION_53_1();
  OUTLINED_FUNCTION_195_0();
  OUTLINED_FUNCTION_149_0();
  v172();
  v233[1] = v133;
  OUTLINED_FUNCTION_228_0();
  OUTLINED_FUNCTION_113_0(v173);
  OUTLINED_FUNCTION_185_0();
  OUTLINED_FUNCTION_150_0(v174);
  OUTLINED_FUNCTION_100(v224);
  OUTLINED_FUNCTION_116_0(v205);
  OUTLINED_FUNCTION_62_1(v218);
  OUTLINED_FUNCTION_205_0(&v219);
  OUTLINED_FUNCTION_202_0(&v220);
  OUTLINED_FUNCTION_199_0(v222);
  v228[7] = v175;
  v228[8] = v215[2];
  sub_23B39C90C(v219, v229, v218[1], v218[0], v217, 13, &v226, v176, v195, v62, v197, v199, v59, v201, v203, v63, v205, v206, v208, v42);
  (*(v64 + 8))(v133, v61);
  (*(v59 + 8))(v57, v62);
  v177 = OUTLINED_FUNCTION_270();
  v178(v177);
  OUTLINED_FUNCTION_56_1();
  v179 = OUTLINED_FUNCTION_55_2();
  v180(v179);
  OUTLINED_FUNCTION_56_1();
  v181 = OUTLINED_FUNCTION_78_1();
  v182(v181);
  OUTLINED_FUNCTION_56_1();
  OUTLINED_FUNCTION_267();
  v183();
  OUTLINED_FUNCTION_56_1();
  v184 = OUTLINED_FUNCTION_127_0();
  v185(v184);
  OUTLINED_FUNCTION_56_1();
  v186 = OUTLINED_FUNCTION_213_0();
  v187(v186);
  OUTLINED_FUNCTION_56_1();
  OUTLINED_FUNCTION_146_0();
  v188();
  OUTLINED_FUNCTION_56_1();
  v189(v196, v198);
  OUTLINED_FUNCTION_56_1();
  v190(v200, v202);
  OUTLINED_FUNCTION_56_1();
  v191(v204, v207);
  OUTLINED_FUNCTION_56_1();
  v192 = OUTLINED_FUNCTION_287();
  v193(v192);
  OUTLINED_FUNCTION_20();
}

uint64_t sub_23B45F7AC(void *a1, void *a2, void (*a3)(void *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a5 == 1)
  {
    swift_checkMetadataState();
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    v13 = &v38[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
    for (i = 0; v10 != i; ++i)
    {
      *&v13[8 * i] = *((v11 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    swift_getTupleTypeMetadata();
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v15 = sub_23B50D954();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v38[-v17];
  if (qword_280B43440 != -1)
  {
    swift_once();
  }

  v19 = sub_23B50CDF4();
  __swift_project_value_buffer(v19, qword_280B4E9D8);
  v20 = a1;
  v21 = a2;
  v22 = sub_23B50CDD4();
  v23 = sub_23B50D4B4();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v43 = a4;
    v25 = v24;
    v26 = swift_slowAlloc();
    v41 = v26;
    v42 = swift_slowAlloc();
    v44 = v42;
    *v25 = 141558787;
    *(v25 + 4) = 1752392040;
    *(v25 + 12) = 2113;
    *(v25 + 14) = v21;
    *v26 = v21;
    *(v25 + 22) = 2082;
    swift_getErrorValue();
    v39 = v23;
    v40 = v22;
    v27 = v21;
    v28 = sub_23B50D874();
    v30 = sub_23B391F1C(v28, v29, &v44);

    *(v25 + 24) = v30;
    *(v25 + 32) = 2112;
    v31 = a1;
    v32 = _swift_stdlib_bridgeErrorToNSError();
    *(v25 + 34) = v32;
    v34 = v40;
    v33 = v41;
    v41[1] = v32;
    _os_log_impl(&dword_23B38D000, v34, v39, "Encountered an error when fetching weather data subset; location=%{private,mask.hash}@, error=%{public}s %@", v25, 0x2Au);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D80, &qword_23B5192E0);
    swift_arrayDestroy();
    MEMORY[0x23EE9E260](v33, -1, -1);
    v35 = v42;
    __swift_destroy_boxed_opaque_existential_1(v42);
    MEMORY[0x23EE9E260](v35, -1, -1);
    MEMORY[0x23EE9E260](v25, -1, -1);
  }

  else
  {
  }

  *v18 = a1;
  swift_storeEnumTagMultiPayload();
  v36 = a1;
  a3(v18);
  return (*(v16 + 8))(v18, v15);
}

uint64_t sub_23B45FB84(void *a1, char a2, uint64_t a3, void *a4, void (*a5)(void *), uint64_t a6, uint64_t a7)
{
  v79 = a6;
  v80 = a5;
  v76 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v81 = sub_23B50D954();
  v78 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v77 = (&v74 - v11);
  v12 = type metadata accessor for WeatherProductsContainer(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for WeatherQuery(0, a7, v15, v16);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v74 - v19;
  MEMORY[0x28223BE20](v21);
  v24 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (qword_280B43440 != -1)
    {
      swift_once();
    }

    v25 = sub_23B50CDF4();
    __swift_project_value_buffer(v25, qword_280B4E9D8);
    sub_23B477C58(a1, 1);
    v26 = v76;
    v27 = sub_23B50CDD4();
    v28 = sub_23B50D4B4();

    sub_23B477C64(a1, 1);
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v84[0] = v31;
      *v29 = 141558787;
      *(v29 + 4) = 1752392040;
      *(v29 + 12) = 2113;
      *(v29 + 14) = v26;
      *v30 = v26;
      *(v29 + 22) = 2082;
      swift_getErrorValue();
      v32 = v26;
      v33 = sub_23B50D874();
      v35 = sub_23B391F1C(v33, v34, v84);

      *(v29 + 24) = v35;
      *(v29 + 32) = 2112;
      v36 = a1;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 34) = v37;
      v30[1] = v37;
      _os_log_impl(&dword_23B38D000, v27, v28, "Encountered an error when fetching weather data subset; location=%{private,mask.hash}@,  error=%{public}s %@", v29, 0x2Au);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D80, &qword_23B5192E0);
      swift_arrayDestroy();
      MEMORY[0x23EE9E260](v30, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x23EE9E260](v31, -1, -1);
      MEMORY[0x23EE9E260](v29, -1, -1);
    }

    v38 = v77;
    *v77 = a1;
    v39 = v81;
    swift_storeEnumTagMultiPayload();
    v40 = a1;
    v80(v38);
    return (*(v78 + 8))(v38, v39);
  }

  else
  {
    v75 = v23;
    v84[0] = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    type metadata accessor for WeatherService(0);
    (*(v18 + 16))(v20, a3, v17);
    v83 = v20;
    v41 = v12[5];
    v42 = type metadata accessor for InstantWeather(0);
    __swift_storeEnumTagSinglePayload(&v14[v41], 1, 1, v42);
    v43 = type metadata accessor for CurrentWeather(0);
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v43);
    v44 = v12[7];
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA0, &qword_23B5101A0);
    __swift_storeEnumTagSinglePayload(&v14[v44], 1, 1, v45);
    v46 = v12[8];
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA8, &unk_23B50ED70);
    __swift_storeEnumTagSinglePayload(&v14[v46], 1, 1, v47);
    v48 = v12[9];
    v49 = type metadata accessor for PeriodicForecasts(0);
    __swift_storeEnumTagSinglePayload(&v14[v48], 1, 1, v49);
    v50 = v12[10];
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CB0, &qword_23B516B60);
    __swift_storeEnumTagSinglePayload(&v14[v50], 1, 1, v51);
    v52 = v12[11];
    v53 = type metadata accessor for AirQuality(0);
    __swift_storeEnumTagSinglePayload(&v14[v52], 1, 1, v53);
    v54 = v12[12];
    v55 = type metadata accessor for WeatherChanges(0);
    __swift_storeEnumTagSinglePayload(&v14[v54], 1, 1, v55);
    v56 = v12[18];
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EC0, &qword_23B50F1B8);
    __swift_storeEnumTagSinglePayload(&v14[v56], 1, 1, v57);
    v58 = v12[20];
    v59 = type metadata accessor for TideEvents(0);
    __swift_storeEnumTagSinglePayload(&v14[v58], 1, 1, v59);
    v60 = v12[21];
    v61 = type metadata accessor for HistoricalComparisons(0);
    __swift_storeEnumTagSinglePayload(&v14[v60], 1, 1, v61);
    v62 = v12[23];
    v63 = type metadata accessor for LocationInfo(0);
    __swift_storeEnumTagSinglePayload(&v14[v62], 1, 1, v63);
    *&v14[v12[6]] = a1;
    *&v14[v12[13]] = 0;
    v64 = &v14[v12[14]];
    v64[2] = 0;
    *v64 = 4;
    v14[v12[15]] = 4;
    v14[v12[16]] = 4;
    v14[v12[17]] = 4;
    *&v14[v12[19]] = 0;
    *&v14[v12[22]] = 0;

    v82 = a7;
    sub_23B3CE19C(&v83, v14, 1, &v82, v84);
    sub_23B3A24BC(v14, type metadata accessor for WeatherProductsContainer);
    (*(v18 + 8))(v20, v17);
    if (qword_280B43440 != -1)
    {
      swift_once();
    }

    v66 = sub_23B50CDF4();
    __swift_project_value_buffer(v66, qword_280B4E9D8);
    v67 = v76;
    v68 = sub_23B50CDD4();
    v69 = sub_23B50D4C4();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *v70 = 141558275;
      *(v70 + 4) = 1752392040;
      *(v70 + 12) = 2113;
      *(v70 + 14) = v67;
      *v71 = v67;
      v72 = v67;
      _os_log_impl(&dword_23B38D000, v68, v69, "Successfully created product tuple; location=%{private,mask.hash}@", v70, 0x16u);
      sub_23B398890(v71, &qword_27E132D80, &qword_23B5192E0);
      MEMORY[0x23EE9E260](v71, -1, -1);
      MEMORY[0x23EE9E260](v70, -1, -1);
    }

    v73 = v77;
    sub_23B3CE3F4(v24, a7, v77);
    v80(v73);
    (*(v78 + 8))(v73, v81);
    return (*(v75 + 8))(v24, a7);
  }
}

uint64_t sub_23B460630(void *a1, char a2)
{
  v5 = *(v2 + 16);
  v6 = OUTLINED_FUNCTION_69_2();
  v10 = type metadata accessor for WeatherQuery(v6, v7, v8, v9);
  OUTLINED_FUNCTION_28_0(v10);
  OUTLINED_FUNCTION_43_5();
  OUTLINED_FUNCTION_240_0();

  return sub_23B45FB84(a1, a2 & 1, v2 + v14, v11, v12, v13, v5);
}

void WeatherService.fetchInstantWeather(for:spanning:stride:with:completion:)()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v26 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_23B50B7F4();
  v27 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_27_3();
  sub_23B50B7B4();
  OUTLINED_FUNCTION_5();
  v28 = v13;
  v29 = v12;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_27();
  v16 = v15 - v14;
  v17 = *v7;
  LODWORD(v7) = *(v7 + 8);
  sub_23B461B10(v5, v15 - v14);
  v18 = *(v11 + 104);
  v19 = MEMORY[0x277D7AC80];
  *v0 = v17;
  if (!v7)
  {
    v19 = MEMORY[0x277D7AC78];
  }

  v18(v0, *v19, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133888, &qword_23B5192C0);
  sub_23B50B0C4();
  OUTLINED_FUNCTION_139_0();
  v20 = swift_allocObject();
  v20[2] = v9;
  v20[3] = v26;
  v20[4] = v2;
  v21 = v9;

  v22 = sub_23B50B034();
  OUTLINED_FUNCTION_152_0();
  sub_23B50B074();

  OUTLINED_FUNCTION_139_0();
  v23 = swift_allocObject();
  v23[2] = v21;
  v23[3] = v26;
  v23[4] = v2;
  v24 = v21;

  v25 = sub_23B50B034();
  sub_23B50B084();

  (*(v11 + 8))(v0, v27);
  (*(v28 + 8))(v16, v29);
  OUTLINED_FUNCTION_20();
}

uint64_t sub_23B4609C8(uint64_t a1, char *a2, void *a3, void (*a4)(void *), uint64_t a5, uint64_t a6)
{
  v87 = a5;
  v88 = a4;
  v85 = a3;
  v80 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v7 = sub_23B50D954();
  v89 = *(v7 - 8);
  v90 = v7;
  MEMORY[0x28223BE20](v7);
  v86 = (&v79 - v8);
  v9 = type metadata accessor for WeatherProductsContainer(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for WeatherQuery(0, a6, v12, v13);
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v84 = &v79 - v14;
  v81 = a6;
  v79 = *(a6 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for InstantWeather(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133948, &qword_23B5194F8);
  MEMORY[0x28223BE20](v21);
  v23 = (&v79 - v22);
  sub_23B3A23E0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v23;
    if (qword_280B43440 != -1)
    {
      swift_once();
    }

    v25 = sub_23B50CDF4();
    __swift_project_value_buffer(v25, qword_280B4E9D8);
    v26 = v85;
    v27 = v24;
    v28 = sub_23B50CDD4();
    v29 = sub_23B50D4B4();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v93[0] = v32;
      *v30 = 141558787;
      *(v30 + 4) = 1752392040;
      *(v30 + 12) = 2113;
      *(v30 + 14) = v26;
      *v31 = v26;
      *(v30 + 22) = 2082;
      swift_getErrorValue();
      v33 = v26;
      v34 = sub_23B50D874();
      v36 = sub_23B391F1C(v34, v35, v93);

      *(v30 + 24) = v36;
      *(v30 + 32) = 2112;
      v37 = v24;
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 34) = v38;
      v31[1] = v38;
      _os_log_impl(&dword_23B38D000, v28, v29, "Encountered an error when fetching weather data subset; location=%{private,mask.hash}@,  error=%{public}s %@", v30, 0x2Au);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D80, &qword_23B5192E0);
      swift_arrayDestroy();
      MEMORY[0x23EE9E260](v31, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x23EE9E260](v32, -1, -1);
      MEMORY[0x23EE9E260](v30, -1, -1);
    }

    v39 = v86;
    *v86 = v24;
    v40 = v90;
    swift_storeEnumTagMultiPayload();
    v41 = v24;
    v88(v39);

    return (*(v89 + 8))(v39, v40);
  }

  else
  {
    sub_23B3B0A98();
    v43 = v17;
    v93[0] = v17;
    type metadata accessor for WeatherService(0);
    v44 = v82;
    v46 = v83;
    v45 = v84;
    (*(v82 + 16))(v84, v80, v83);
    v92 = v45;
    v47 = v9[5];
    sub_23B477C04();
    __swift_storeEnumTagSinglePayload(&v11[v47], 0, 1, v18);
    v48 = type metadata accessor for CurrentWeather(0);
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v48);
    v49 = v9[7];
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA0, &qword_23B5101A0);
    __swift_storeEnumTagSinglePayload(&v11[v49], 1, 1, v50);
    v51 = v9[8];
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA8, &unk_23B50ED70);
    __swift_storeEnumTagSinglePayload(&v11[v51], 1, 1, v52);
    v53 = v9[9];
    v54 = type metadata accessor for PeriodicForecasts(0);
    __swift_storeEnumTagSinglePayload(&v11[v53], 1, 1, v54);
    v55 = v9[10];
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CB0, &qword_23B516B60);
    __swift_storeEnumTagSinglePayload(&v11[v55], 1, 1, v56);
    v57 = v9[11];
    v58 = type metadata accessor for AirQuality(0);
    __swift_storeEnumTagSinglePayload(&v11[v57], 1, 1, v58);
    v59 = v9[12];
    v60 = type metadata accessor for WeatherChanges(0);
    __swift_storeEnumTagSinglePayload(&v11[v59], 1, 1, v60);
    v61 = v9[18];
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EC0, &qword_23B50F1B8);
    __swift_storeEnumTagSinglePayload(&v11[v61], 1, 1, v62);
    v63 = v9[20];
    v64 = type metadata accessor for TideEvents(0);
    __swift_storeEnumTagSinglePayload(&v11[v63], 1, 1, v64);
    v65 = v9[21];
    v66 = type metadata accessor for HistoricalComparisons(0);
    __swift_storeEnumTagSinglePayload(&v11[v65], 1, 1, v66);
    v67 = v9[23];
    v68 = type metadata accessor for LocationInfo(0);
    __swift_storeEnumTagSinglePayload(&v11[v67], 1, 1, v68);
    *&v11[v9[6]] = 0;
    *&v11[v9[13]] = 0;
    v69 = &v11[v9[14]];
    v69[2] = 0;
    *v69 = 4;
    v11[v9[15]] = 4;
    v11[v9[16]] = 4;
    v11[v9[17]] = 4;
    *&v11[v9[19]] = 0;
    *&v11[v9[22]] = 0;
    v70 = v81;
    v91 = v81;
    sub_23B3CE19C(&v92, v11, 1, &v91, v93);
    v80 = v20;
    sub_23B3A24BC(v11, type metadata accessor for WeatherProductsContainer);
    (*(v44 + 8))(v84, v46);
    if (qword_280B43440 != -1)
    {
      swift_once();
    }

    v71 = sub_23B50CDF4();
    __swift_project_value_buffer(v71, qword_280B4E9D8);
    v72 = v85;
    v73 = sub_23B50CDD4();
    v74 = sub_23B50D4C4();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *v75 = 141558275;
      *(v75 + 4) = 1752392040;
      *(v75 + 12) = 2113;
      *(v75 + 14) = v72;
      *v76 = v72;
      v77 = v72;
      _os_log_impl(&dword_23B38D000, v73, v74, "Successfully created product tuple; location=%{private,mask.hash}@", v75, 0x16u);
      sub_23B398890(v76, &qword_27E132D80, &qword_23B5192E0);
      MEMORY[0x23EE9E260](v76, -1, -1);
      MEMORY[0x23EE9E260](v75, -1, -1);
    }

    v78 = v86;
    sub_23B3CE3F4(v43, v70, v86);
    v88(v78);
    (*(v89 + 8))(v78, v90);
    sub_23B3A24BC(v80, type metadata accessor for InstantWeather);
    return (*(v79 + 8))(v43, v70);
  }
}

uint64_t objectdestroy_5Tm()
{
  OUTLINED_FUNCTION_21();
  v3 = type metadata accessor for WeatherQuery(0, *(v0 + 16), v1, v2);
  v4 = (*(*(v3 - 1) + 80) + 24) & ~*(*(v3 - 1) + 80);
  v5 = *(*(v3 - 1) + 64);
  v6 = v0 + v4;
  v7 = sub_23B50AA24();
  if (!__swift_getEnumTagSinglePayload(v0 + v4, 1, v7))
  {
    OUTLINED_FUNCTION_48();
    (*(v8 + 8))(v0 + v4, v7);
  }

  v9 = v3[7];
  if (!__swift_getEnumTagSinglePayload(v6 + v9, 1, v7))
  {
    OUTLINED_FUNCTION_48();
    (*(v10 + 8))(v6 + v9, v7);
  }

  v11 = v3[11];
  Options = type metadata accessor for InstantWeatherQueryOptions(0);
  if (!__swift_getEnumTagSinglePayload(v6 + v11, 1, Options))
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v7 = sub_23B50AD24();
    }

    OUTLINED_FUNCTION_48();
    (*(v13 + 8))(v6 + v11, v7);
  }

  v14 = v6 + v3[12];
  PeriodicRelativeRange = type metadata accessor for WeatherQueryPeriodicRelativeRange(0);
  if (!__swift_getEnumTagSinglePayload(v14, 1, PeriodicRelativeRange))
  {
    v16 = sub_23B50AD24();
    OUTLINED_FUNCTION_6();
    v18 = *(v17 + 8);
    v19 = OUTLINED_FUNCTION_241_0();
    v18(v19);
    (v18)(v14 + *(PeriodicRelativeRange + 20), v16);
  }

  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

uint64_t sub_23B46185C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = OUTLINED_FUNCTION_65_0();
  v8 = type metadata accessor for WeatherQuery(v4, v5, v6, v7);
  OUTLINED_FUNCTION_28_0(v8);
  OUTLINED_FUNCTION_43_5();
  v11 = *(v1 + v10);
  v12 = v1 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = *v12;
  v14 = *(v12 + 8);

  return sub_23B4609C8(a1, (v1 + v9), v11, v13, v14, v3);
}

void WeatherService.fetchInstantWeather(for:at:with:completion:)()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v18 = sub_23B50B7B4();
  OUTLINED_FUNCTION_5();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_35_3();
  sub_23B461B10(v6, v0);
  sub_23B50B4B4();
  sub_23B50B0C4();
  OUTLINED_FUNCTION_139_0();
  v12 = swift_allocObject();
  v12[2] = v8;
  v12[3] = v4;
  v12[4] = v2;
  v13 = v8;

  v14 = sub_23B50B034();
  OUTLINED_FUNCTION_152_0();
  sub_23B50B074();

  OUTLINED_FUNCTION_139_0();
  v15 = swift_allocObject();
  v15[2] = v13;
  v15[3] = v4;
  v15[4] = v2;
  v16 = v13;

  v17 = sub_23B50B034();
  sub_23B50B084();

  (*(v10 + 8))(v0, v18);
  OUTLINED_FUNCTION_20();
}

uint64_t sub_23B461B10@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = sub_23B50CB54();
  v69 = *(v3 - 8);
  v70 = v3;
  MEMORY[0x28223BE20](v3);
  v71 = v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1321E8, &qword_23B5101C0);
  MEMORY[0x28223BE20](v5 - 8);
  v63[1] = v63 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338B0, &unk_23B519390);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v63 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D20, &qword_23B515138);
  MEMORY[0x28223BE20](v10 - 8);
  v68 = v63 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D28, &unk_23B5193A0);
  MEMORY[0x28223BE20](v12 - 8);
  v80 = v63 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D30, &qword_23B515140);
  MEMORY[0x28223BE20](v14 - 8);
  v79 = v63 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D38, &unk_23B5193B0);
  MEMORY[0x28223BE20](v16 - 8);
  v78 = v63 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D40, &unk_23B5193C0);
  MEMORY[0x28223BE20](v18 - 8);
  v77 = v63 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F00, &unk_23B5257B0);
  MEMORY[0x28223BE20](v20 - 8);
  v76 = v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v75 = v63 - v23;
  v24 = sub_23B50B7E4();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v74 = v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_23B50B604();
  MEMORY[0x28223BE20](v27 - 8);
  v73 = v63 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D48, &unk_23B5193D0);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = v63 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F68, &unk_23B50F2A0);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = v63 - v33;
  v35 = sub_23B50AD84();
  v66 = v36;
  v67 = v35;
  Options = type metadata accessor for WeatherServiceFetchOptions(0);
  sub_23B3A23E0();
  v38 = a1[1];
  v65 = *a1;
  v39 = *(a1 + Options[6] + 8);
  v64 = v38;
  if ((v39 & 0xFF00) == 0x300)
  {
    v40 = sub_23B50B834();
    __swift_storeEnumTagSinglePayload(v31, 1, 1, v40);
  }

  else
  {

    sub_23B50B824();
    v41 = sub_23B50B834();
    __swift_storeEnumTagSinglePayload(v31, 0, 1, v41);
  }

  v81 = *(a1 + Options[7]);
  sub_23B3A1C3C();
  v42 = a1 + Options[13];
  v43 = *(v42 + 6) | ((*(v42 + 14) | (v42[30] << 16)) << 32);
  if ((*(v42 + 6) & 0xFF00) == 0x200)
  {
    (*(v25 + 104))(v74, *MEMORY[0x277D7AC70], v24);
  }

  else
  {
    v44 = *(v42 + 2);
    v45 = *(v42 + 2);
    v46 = *v42;
    v89 = v45 & 1;
    v88 = v43 & 1;
    v47 = vdupq_n_s64(v43);
    v81 = v46;
    v82 = v45 & 1;
    v83 = v44;
    v84 = v43 & 1;
    *v47.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v47, xmmword_23B5192A0), vshlq_u64(v47, xmmword_23B519290))), 0x1000100010001);
    v85 = vuzp1_s8(*v47.i8, *v47.i8).u32[0];
    v86 = BYTE5(v43) & 1;
    v87 = BYTE6(v43) & 1;
    v48 = v74;
    sub_23B3A205C();
    (*(v25 + 104))(v48, *MEMORY[0x277D7AC68], v24);
  }

  v49 = *(a1 + Options[8]);
  v50 = sub_23B50AA24();
  __swift_storeEnumTagSinglePayload(v75, 1, 1, v50);
  __swift_storeEnumTagSinglePayload(v76, 1, 1, v50);
  v51 = sub_23B50B894();
  __swift_storeEnumTagSinglePayload(v77, 1, 1, v51);
  v52 = sub_23B50B864();
  __swift_storeEnumTagSinglePayload(v78, 1, 1, v52);
  v53 = sub_23B50B874();
  __swift_storeEnumTagSinglePayload(v79, 1, 1, v53);
  v54 = sub_23B50B8A4();
  __swift_storeEnumTagSinglePayload(v80, 1, 1, v54);
  sub_23B3A23E0();
  v55 = type metadata accessor for WeatherNetworkActivity(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v55);
  v57 = v68;
  if (EnumTagSinglePayload == 1)
  {

    sub_23B398890(v9, &qword_27E1338B0, &unk_23B519390);
    v58 = 1;
  }

  else
  {
    sub_23B3A23E0();

    sub_23B50C824();
    sub_23B3A24BC(v9, type metadata accessor for WeatherNetworkActivity);
    v58 = 0;
  }

  v59 = sub_23B50C834();
  __swift_storeEnumTagSinglePayload(v57, v58, 1, v59);
  v60 = *(a1 + Options[10]);
  sub_23B50AD94();
  v61 = v71;
  (*(v69 + 104))(v71, *MEMORY[0x277D7B100], v70);
  return sub_23B50B784(v67, v66, v34, v61, v65, v64, v31, v73, v74, v49, v75, v76, v77, v78, v79, v80, v57, v60);
}

uint64_t sub_23B462410(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);
  [a4 coordinate];
  return sub_23B50B684();
}

void sub_23B4624BC(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, void, __n128), uint64_t a5)
{
  v26[1] = a5;
  v27 = a4;
  v37 = a2;
  v38 = a3;
  v7 = type metadata accessor for InstantWeather(0);
  v31 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v36 = v26 - v11;
  MEMORY[0x28223BE20](v12);
  v29 = v26 - v13;
  v14 = sub_23B50B4B4();
  v15 = MEMORY[0x28223BE20](v14);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = 0;
  v19 = *a1;
  v39 = *(*a1 + 16);
  v32 = v20 + 16;
  v33 = OBJC_IVAR____TtC10WeatherKit14WeatherService_modelFactory;
  v34 = (v20 + 8);
  v35 = v20;
  v21 = MEMORY[0x277D84F90];
  v30 = v9;
  for (i = v19; ; v19 = i)
  {
    if (v39 == v18)
    {
      v27(v21, 0, v15);
LABEL_12:

      return;
    }

    if (v18 >= *(v19 + 16))
    {
      break;
    }

    (*(v35 + 16))(v17, v19 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v18, v14, v15);
    sub_23B3F7984(v36);
    if (v5)
    {
      (*v34)(v17, v14);
      goto LABEL_12;
    }

    (*v34)(v17, v14);
    sub_23B3B0A98();
    sub_23B3B0A98();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_23B4F598C(0, *(v21 + 16) + 1, 1, v21);
      v21 = v24;
    }

    v23 = *(v21 + 16);
    v22 = *(v21 + 24);
    if (v23 >= v22 >> 1)
    {
      sub_23B4F598C(v22 > 1, v23 + 1, 1, v21);
      v21 = v25;
    }

    *(v21 + 16) = v23 + 1;
    sub_23B3B0A98();
    ++v18;
  }

  __break(1u);
}

uint64_t sub_23B46285C(void *a1, void *a2, uint64_t (*a3)(void *, uint64_t))
{
  if (qword_280B43440 != -1)
  {
    swift_once();
  }

  v6 = sub_23B50CDF4();
  __swift_project_value_buffer(v6, qword_280B4E9D8);
  v7 = a1;
  v8 = a2;
  v9 = sub_23B50CDD4();
  v10 = sub_23B50D4B4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v11 = 141558787;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2113;
    *(v11 + 14) = v8;
    *v12 = v8;
    *(v11 + 22) = 2082;
    swift_getErrorValue();
    v20 = v10;
    v13 = v8;
    v14 = sub_23B50D874();
    v16 = sub_23B391F1C(v14, v15, &v22);

    *(v11 + 24) = v16;
    *(v11 + 32) = 2112;
    v17 = a1;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 34) = v18;
    v12[1] = v18;
    _os_log_impl(&dword_23B38D000, v9, v20, "Encountered an error when fetching instant weather; location=%{private,mask.hash}@,  error=%{public}s %@", v11, 0x2Au);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D80, &qword_23B5192E0);
    swift_arrayDestroy();
    MEMORY[0x23EE9E260](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x23EE9E260](v21, -1, -1);
    MEMORY[0x23EE9E260](v11, -1, -1);
  }

  return a3(a1, 1);
}

uint64_t sub_23B462ABC(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);
  [a3 coordinate];
  return sub_23B50B674();
}

uint64_t sub_23B462B5C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v13 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133948, &qword_23B5194F8);
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - v6;
  v8 = type metadata accessor for InstantWeather(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_23B3F7984(v10);
  if (!v4)
  {
    sub_23B477C04();
    swift_storeEnumTagMultiPayload();
    v13(v7);
    sub_23B398890(v7, &qword_27E133948, &qword_23B5194F8);
    return sub_23B3A24BC(v10, type metadata accessor for InstantWeather);
  }

  return result;
}

void WeatherService.cachedWeather<each A>(for:including:options:)()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v5 = v4;
  v47 = v6;
  v48 = v1;
  v49 = v7;
  v51 = v8;
  if (v2 == 1)
  {
    v9 = OUTLINED_FUNCTION_230_0();
    TupleTypeMetadata = type metadata accessor for WeatherQuery(v9, v10, v11, v12);
  }

  else
  {
    MEMORY[0x28223BE20](v1);
    OUTLINED_FUNCTION_247_0();
    v16 = 0;
    v18 = v17 & 0xFFFFFFFFFFFFFFFELL;
    while (v3 != v16)
    {
      v0[v16] = type metadata accessor for WeatherQuery(255, *(v18 + 8 * v16), v14, v15);
      ++v16;
    }

    OUTLINED_FUNCTION_74_1();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v50 = TupleTypeMetadata;
  OUTLINED_FUNCTION_5();
  v46 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_27();
  v23 = v22 - v21;
  OUTLINED_FUNCTION_289(v24, v25, v26, v27, v28, v29, v30, v31, v45);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_247_0();
  if (v3)
  {
    v35 = (v51 & 0xFFFFFFFFFFFFFFFELL);
    v36 = (v50 + 32);
    v37 = v0;
    v38 = v3;
    do
    {
      if (v3 == 1)
      {
        v39 = 0;
      }

      else
      {
        v39 = *v36;
      }

      v41 = *v35++;
      v40 = v41;
      v42 = v23 + v39;
      v43 = *v5++;
      type metadata accessor for WeatherQuery(0, v40, v33, v34);
      OUTLINED_FUNCTION_2();
      (*(v44 + 16))(v42, v43);
      *v37++ = v42;
      v36 += 4;
      --v38;
    }

    while (v38);
  }

  sub_23B462F30(v48, v0, v49, v3, v51, v47);
  (*(v46 + 8))(v23, v50);
  OUTLINED_FUNCTION_175_0();
  OUTLINED_FUNCTION_20();
}

uint64_t sub_23B462F30@<X0>(void *TupleTypeMetadata@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v175 = a2;
  v8 = *v6;
  v164 = 8 * a4;
  v160 = a6;
  v142 = v8;
  v166 = v6;
  v146 = TupleTypeMetadata;
  v145 = a3;
  if (a4 == 1)
  {
    v9 = *(a5 & 0xFFFFFFFFFFFFFFFELL);
    v10 = 1;
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    for (i = 0; v11 != i; ++i)
    {
      *(&(&v138)[i] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0)) = *((a5 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    v10 = v11;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v9 = TupleTypeMetadata;
  }

  v14 = *(v9 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v16 = &v138 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = &v138;
  MEMORY[0x28223BE20](v17);
  v19 = &v138 - v18;
  v20 = type metadata accessor for WeatherProductsContainer(0);
  MEMORY[0x28223BE20](v20 - 8);
  v161 = &v138 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EA8, &qword_23B5194F0);
  MEMORY[0x28223BE20](v22 - 8);
  v163 = &v138 - v23;
  v168 = sub_23B50AD24();
  v171 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v144 = &v138 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v176 = &v138 - v26;
  v154 = &v138;
  MEMORY[0x28223BE20](v27);
  v167 = &v138 - v28;
  v29 = sub_23B50B7B4();
  v153 = &v138;
  v148 = v29;
  v147 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v165 = &v138 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = v10;
  v158 = &v138;
  v162 = v9;
  v157 = &v138;
  v156 = &v138;
  v155 = &v138;
  v140 = v14;
  v143 = v19;
  v139 = v16;
  v170 = a5;
  if (v10 == 1)
  {
    v34 = type metadata accessor for WeatherQuery(0, *(a5 & 0xFFFFFFFFFFFFFFFELL), v31, v32);
  }

  else
  {
    MEMORY[0x28223BE20](v30);
    v38 = &v138 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
    for (j = 0; v10 != j; ++j)
    {
      v40 = type metadata accessor for WeatherQuery(255, *((a5 & 0xFFFFFFFFFFFFFFFELL) + 8 * j), v35, v36);
      v10 = v177;
      *&v38[8 * j] = v40;
    }

    v34 = swift_getTupleTypeMetadata();
  }

  v152 = &v138;
  v169 = v34;
  v172 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v174 = &v138 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = &v138;
  MEMORY[0x28223BE20](v42);
  v44 = &v138 - v43;
  v45 = _s21WeatherServiceRequestVMa(0);
  v150 = &v138;
  MEMORY[0x28223BE20](v45);
  v173 = (&v138 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  v149 = &v138;
  MEMORY[0x28223BE20](v47);
  v50 = (&v138 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = v10;
  v52 = v176;
  if (v10)
  {
    v53 = (v170 & 0xFFFFFFFFFFFFFFFELL);
    v54 = (v169 + 32);
    v55 = v175;
    v56 = (&v138 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
    v57 = v10;
    do
    {
      if (v51 == 1)
      {
        v58 = 0;
      }

      else
      {
        v58 = *v54;
      }

      v60 = *v53++;
      v59 = v60;
      v61 = &v44[v58];
      v62 = *v55++;
      v63 = type metadata accessor for WeatherQuery(0, v59, v48, v51);
      (*(*(v63 - 8) + 16))(v61, v62, v63);
      *v56++ = v61;
      v54 += 4;
      --v57;
      v52 = v176;
      v51 = v177;
    }

    while (v57);
  }

  v64 = v173;
  v65 = v146;
  v66 = v50;
  v67 = v145;
  sub_23B3ADF24(v66, v145, v51, v170, v173);
  v68 = *(v172 + 8);
  v172 += 8;
  v141 = v68;
  v68(v44, v169);
  v69 = v165;
  sub_23B3A0F38(v67, v64 + *(v45 + 20), v70, v71, v72, v73, v74, v75, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149);
  v76 = v167;
  sub_23B50AD14();
  if (qword_280B43440 != -1)
  {
    swift_once();
  }

  v77 = sub_23B50CDF4();
  v78 = __swift_project_value_buffer(v77, qword_280B4E9D8);
  v79 = v171;
  v80 = *(v171 + 16);
  v81 = v168;
  v80(v52, v76, v168);
  v82 = v65;
  v146 = v78;
  v83 = sub_23B50CDD4();
  v84 = sub_23B50D4C4();

  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v138 = v86;
    v145 = swift_slowAlloc();
    v178 = v145;
    *v85 = 141558531;
    *(v85 + 4) = 1752392040;
    *(v85 + 12) = 2113;
    *(v85 + 14) = v82;
    *v86 = v82;
    *(v85 + 22) = 2082;
    v80(v144, v52, v81);
    v87 = v82;
    v88 = sub_23B50D1A4();
    v90 = v89;
    v176 = *(v79 + 8);
    (v176)(v52, v81);
    v91 = sub_23B391F1C(v88, v90, &v178);

    *(v85 + 24) = v91;
    _os_log_impl(&dword_23B38D000, v83, v84, "About to fetch cached weather data; location=%{private,mask.hash}@, startTime=%{public}s", v85, 0x20u);
    v92 = v138;
    sub_23B398890(v138, &qword_27E132D80, &qword_23B5192E0);
    MEMORY[0x23EE9E260](v92, -1, -1);
    v93 = v145;
    __swift_destroy_boxed_opaque_existential_1(v145);
    v94 = v165;
    MEMORY[0x23EE9E260](v93, -1, -1);
    MEMORY[0x23EE9E260](v85, -1, -1);

    v95 = v161;
  }

  else
  {

    v176 = *(v79 + 8);
    (v176)(v52, v81);
    v95 = v161;
    v94 = v69;
  }

  __swift_project_boxed_opaque_existential_1(v166 + 2, v166[5]);
  v96 = v173;
  [v82 coordinate];
  v97 = sub_23B50B724();
  if (v97)
  {
    v98 = v97;
    v99 = v82;
    v100 = v163;
    sub_23B42CD1C(v97, v99, v94, v163);
    sub_23B3A8A0C(v98, v99, v100, v95);

    MEMORY[0x28223BE20](v103);
    v106 = &v138 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
    v107 = v177;
    if (v177)
    {
      v108 = 0;
      v109 = (v162 + 32);
      v110 = v143;
      do
      {
        if (v107 == 1)
        {
          v111 = 0;
        }

        else
        {
          v111 = *v109;
        }

        *&v106[8 * v108++] = v110 + v111;
        v109 += 4;
      }

      while (v107 != v108);
      MEMORY[0x28223BE20](v104);
      v114 = &v138 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0);
      v115 = 0;
      v117 = v116 & 0xFFFFFFFFFFFFFFFELL;
      v119 = (v118 + 32);
      do
      {
        if (v107 == 1)
        {
          v120 = 0;
        }

        else
        {
          v120 = *v119;
        }

        v121 = &v174[v120];
        v122 = v175[v115];
        v123 = type metadata accessor for WeatherQuery(0, *(v117 + 8 * v115), v107, v112);
        (*(*(v123 - 8) + 16))(v121, v122, v123);
        *&v114[8 * v115++] = v121;
        v119 += 4;
        v107 = v177;
      }

      while (v177 != v115);
      v124 = v99;
      v94 = v165;
      v95 = v161;
    }

    else
    {
      v124 = v99;
      v114 = &v179;
    }

    sub_23B3CE19C(v114, v95, v107, v170, v106);
    v141(v174, v169);
    v125 = v124;
    v126 = sub_23B50CDD4();
    v127 = sub_23B50D4C4();

    if (os_log_type_enabled(v126, v127))
    {
      v128 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      *v128 = 141558275;
      *(v128 + 4) = 1752392040;
      *(v128 + 12) = 2113;
      *(v128 + 14) = v125;
      *v129 = v125;
      v130 = v125;
      _os_log_impl(&dword_23B38D000, v126, v127, "Successfully created product tuple; location=%{private,mask.hash}@", v128, 0x16u);
      sub_23B398890(v129, &qword_27E132D80, &qword_23B5192E0);
      MEMORY[0x23EE9E260](v129, -1, -1);
      MEMORY[0x23EE9E260](v128, -1, -1);
    }

    sub_23B3A24BC(v95, type metadata accessor for WeatherProductsContainer);
    sub_23B398890(v163, &qword_27E131EA8, &qword_23B5194F0);
    (v176)(v167, v168);
    (*(v147 + 8))(v94, v148);
    v131 = v140;
    v132 = v139;
    v133 = v143;
    v134 = v162;
    (*(v140 + 16))(v139, v143, v162);
    v135 = v160;
    sub_23B3CE3F4(v132, v134, v160);
    v136 = *(v131 + 8);
    v136(v132, v134);
    sub_23B3A24BC(v173, _s21WeatherServiceRequestVMa);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
    v137 = sub_23B50D954();
    __swift_storeEnumTagSinglePayload(v135, 0, 1, v137);
    return (v136)(v133, v134);
  }

  else
  {
    (v176)(v167, v168);
    (*(v147 + 8))(v94, v148);
    sub_23B3A24BC(v96, _s21WeatherServiceRequestVMa);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
    v101 = sub_23B50D954();
    return __swift_storeEnumTagSinglePayload(v160, 1, 1, v101);
  }
}

void WeatherService.cachedWeather<A>(for:including:options:)()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = type metadata accessor for WeatherQuery(0, v1, v3, v1);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15_13();
  OUTLINED_FUNCTION_170_0();
  v13(v0, v6, v11);
  v16 = v2;
  v17 = v0;
  sub_23B462F30(v8, &v17, v4, 1, &v16, v10);
  v14 = OUTLINED_FUNCTION_283();
  v15(v14, v11);
  OUTLINED_FUNCTION_20();
}

void WeatherService.cachedWeather<A, B>(for:including:_:options:)()
{
  OUTLINED_FUNCTION_21();
  v27 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v25 = v12;
  v26 = v11;
  v13 = type metadata accessor for WeatherQuery(0, v3, v7, v2);
  OUTLINED_FUNCTION_5();
  v15 = v14;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_15_13();
  v19 = type metadata accessor for WeatherQuery(0, v6, v17, v18);
  OUTLINED_FUNCTION_5();
  v21 = v20;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_88_0();
  v23(v0, v10, v19);
  v29 = v0;
  OUTLINED_FUNCTION_107_0();
  v24(v1, v8, v13);
  v30 = v1;
  v28[0] = v6;
  v28[1] = v4;
  sub_23B462F30(v26, &v29, v27, 2, v28, v25);
  (*(v15 + 8))(v1, v13);
  (*(v21 + 8))(v0, v19);
  OUTLINED_FUNCTION_20();
}

void WeatherService.cachedWeather<A, B, C>(for:including:_:_:options:)()
{
  OUTLINED_FUNCTION_21();
  v43 = v2;
  v39 = v4;
  v40 = v3;
  v6 = v5;
  v36 = v5;
  v37 = v7;
  v9 = v8;
  v38 = v10;
  v41 = v12;
  v42 = v11;
  v13 = type metadata accessor for WeatherQuery(0, v4, v10, v3);
  OUTLINED_FUNCTION_5();
  v15 = v14;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_61_1();
  v17 = OUTLINED_FUNCTION_63();
  v21 = type metadata accessor for WeatherQuery(v17, v18, v19, v20);
  OUTLINED_FUNCTION_5();
  v23 = v22;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_127();
  v29 = OUTLINED_FUNCTION_156_0(v25, v26, v27, v28);
  OUTLINED_FUNCTION_5();
  v31 = v30;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_86_0();
  v33(v6, v37, v29);
  v45 = v6;
  OUTLINED_FUNCTION_141_0();
  v34(v0, v38, v21);
  v46 = v0;
  OUTLINED_FUNCTION_153_0();
  v35(v1, v40, v13);
  v47 = v1;
  v44[0] = v9;
  v44[1] = v36;
  v44[2] = v39;
  sub_23B462F30(v42, &v45, v43, 3, v44, v41);
  (*(v15 + 8))(v1, v13);
  (*(v23 + 8))(v0, v21);
  (*(v31 + 8))(v6, v29);
  OUTLINED_FUNCTION_20();
}

void WeatherService.cachedWeather<A, B, C, D>(for:including:_:_:_:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_21();
  a19 = v26;
  a20 = v27;
  v68 = v28;
  v67 = v29;
  v78 = v30;
  v79 = v31;
  v76 = v32;
  v77 = v33;
  v72 = v34;
  v73 = v35;
  v36 = a21;
  v70 = v37;
  v71 = a21;
  v75 = a22;
  v74 = type metadata accessor for WeatherQuery(0, a22, v34, v35);
  OUTLINED_FUNCTION_5();
  v39 = v38;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_52();
  v69 = v41;
  v42 = OUTLINED_FUNCTION_24_0();
  type metadata accessor for WeatherQuery(v42, v36, v43, v44);
  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_2_28(v45, &a15);
  v47 = v46;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_18_14();
  v49 = OUTLINED_FUNCTION_65_0();
  type metadata accessor for WeatherQuery(v49, v50, v51, v52);
  OUTLINED_FUNCTION_177_0();
  OUTLINED_FUNCTION_2_28(v53, &a17);
  v55 = v54;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_13();
  v57 = OUTLINED_FUNCTION_63();
  type metadata accessor for WeatherQuery(v57, v58, v59, v60);
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_2_28(v61, &a18);
  v63 = v62;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_15_13();
  OUTLINED_FUNCTION_88_0();
  v65(v25, v70);
  v81 = v25;
  OUTLINED_FUNCTION_169_0();
  v66(v23, v72, v24);
  v82 = v23;
  (*(v47 + 16))(v22, v73, v36);
  v83 = v22;
  (*(v39 + 16))(v69, v76, v74);
  v84 = v69;
  v80[0] = v67;
  v80[1] = v68;
  v80[2] = v71;
  v80[3] = v75;
  sub_23B462F30(v78, &v81, v79, 4, v80, v77);
  (*(v39 + 8))(v69, v74);
  (*(v47 + 8))(v22);
  (*(v55 + 8))(v23);
  (*(v63 + 8))(v25);
  OUTLINED_FUNCTION_20();
}

void WeatherService.cachedWeather<A, B, C, D, E>(for:including:_:_:_:_:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_21();
  a19 = v27;
  a20 = v28;
  v94 = v29;
  v31 = v30;
  v91 = v32;
  v88 = v33;
  v87 = v34;
  v92 = v36;
  v93 = v35;
  v86 = a21;
  v37 = a22;
  v38 = a23;
  v90 = a24;
  v89 = type metadata accessor for WeatherQuery(0, a24, v34, v33);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_52();
  v41 = OUTLINED_FUNCTION_35(v40);
  v44 = type metadata accessor for WeatherQuery(v41, v38, v42, v43);
  OUTLINED_FUNCTION_2_0(v44, &a14);
  v46 = v45;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_52();
  v95 = v48;
  v49 = OUTLINED_FUNCTION_24_0();
  type metadata accessor for WeatherQuery(v49, v37, v50, v51);
  OUTLINED_FUNCTION_177_0();
  OUTLINED_FUNCTION_2_28(v52, &v102);
  v54 = v53;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_23();
  v60 = OUTLINED_FUNCTION_156_0(v56, v57, v58, v59);
  OUTLINED_FUNCTION_2_28(v60, &a10);
  v62 = v61;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_61_1();
  v64 = OUTLINED_FUNCTION_65_0();
  v65 = v31;
  type metadata accessor for WeatherQuery(v64, v66, v67, v68);
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_2_28(v69, &a12);
  v71 = v70;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_18_14();
  OUTLINED_FUNCTION_169_0();
  OUTLINED_FUNCTION_268();
  v74(v73);
  v97 = v24;
  OUTLINED_FUNCTION_86_0();
  v75(v26, v87, v60);
  v98 = v26;
  (*(v54 + 16))(v37, v88, v25);
  v99 = v37;
  OUTLINED_FUNCTION_166_0();
  v77(v76);
  v100 = v95;
  OUTLINED_FUNCTION_88_0();
  v78 = OUTLINED_FUNCTION_190_0();
  v79(v78, v91, v89);
  v101 = v95;
  v96[0] = v65;
  v96[1] = v86;
  OUTLINED_FUNCTION_184_0();
  v96[2] = v81;
  v96[3] = v80;
  v96[4] = v90;
  sub_23B462F30(v93, &v97, v94, 5, v96, v92);
  v82 = OUTLINED_FUNCTION_195();
  v83(v82);
  OUTLINED_FUNCTION_56_1();
  v84(v95, v46);
  OUTLINED_FUNCTION_56_1();
  v85(v37);
  (*(v62 + 8))(v26);
  (*(v71 + 8))(v24);
  OUTLINED_FUNCTION_20();
}

void WeatherService.cachedWeather<A, B, C, D, E, F>(for:including:_:_:_:_:_:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_21();
  a19 = v28;
  a20 = v29;
  v97 = v30;
  v93 = v31;
  v91 = v32;
  v95 = v34;
  v96 = v33;
  v35 = a21;
  v36 = a22;
  v37 = a23;
  v38 = a24;
  v39 = a25;
  v92 = a25;
  v94 = a26;
  v42 = type metadata accessor for WeatherQuery(0, a26, v40, v41);
  OUTLINED_FUNCTION_2_0(v42, &a17);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_52();
  v45 = OUTLINED_FUNCTION_35(v44);
  v98 = type metadata accessor for WeatherQuery(v45, v39, v46, v47);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_52();
  v50 = OUTLINED_FUNCTION_35(v49);
  type metadata accessor for WeatherQuery(v50, v38, v51, v52);
  OUTLINED_FUNCTION_174_0();
  OUTLINED_FUNCTION_2_28(v53, v100);
  v55 = v54;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_52();
  v57 = OUTLINED_FUNCTION_24_0();
  type metadata accessor for WeatherQuery(v57, v37, v58, v59);
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_2_28(v60, v101);
  v62 = v61;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_156_0(v64, v65, v66, v67);
  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_2_28(v68, &v102);
  v70 = v69;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_18_14();
  v72 = OUTLINED_FUNCTION_63();
  type metadata accessor for WeatherQuery(v72, v73, v74, v75);
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_2_28(v76, v104);
  v78 = v77;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_153_0();
  v80(v35, v91);
  v101[0] = v35;
  OUTLINED_FUNCTION_88_0();
  OUTLINED_FUNCTION_280();
  v81();
  v101[1] = v37;
  OUTLINED_FUNCTION_131_0();
  v82();
  v102 = v26;
  v55 += 16;
  OUTLINED_FUNCTION_234_0();
  OUTLINED_FUNCTION_279();
  v83();
  v103 = v36;
  OUTLINED_FUNCTION_39_6();
  v84 = OUTLINED_FUNCTION_197_0();
  v85(v84, v93, v98);
  v104[0] = v27;
  OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_186_0();
  v86();
  v104[1] = v55;
  OUTLINED_FUNCTION_120_0(&v103);
  OUTLINED_FUNCTION_111();
  v100[0] = v88;
  v100[1] = v87;
  v100[2] = v92;
  v100[3] = v94;
  sub_23B462F30(v96, v101, v97, 6, &v99, v95);
  (*(v38 + 8))(v55, v26);
  (*(v62 + 24))(v27, v98);
  OUTLINED_FUNCTION_56_1();
  OUTLINED_FUNCTION_146_0();
  v89();
  OUTLINED_FUNCTION_56_1();
  v90(v26);
  (*(v70 + 8))(v37);
  (*(v78 + 8))(v35);
  OUTLINED_FUNCTION_20();
}

void WeatherService.cachedWeather<A, B, C, D, E, F, G>(for:including:_:_:_:_:_:_:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_21();
  a19 = v30;
  a20 = v31;
  v105 = v32;
  OUTLINED_FUNCTION_73_1(v33);
  v34 = a22;
  v104 = a21;
  v35 = a24;
  v36 = a25;
  v37 = a26;
  v38 = a27;
  v39 = OUTLINED_FUNCTION_80_1(a28, &a16);
  v43 = type metadata accessor for WeatherQuery(v39, v40, v41, v42);
  OUTLINED_FUNCTION_2_0(v43, &a13);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_52();
  v46 = OUTLINED_FUNCTION_35(v45);
  v49 = type metadata accessor for WeatherQuery(v46, v38, v47, v48);
  OUTLINED_FUNCTION_2_0(v49, v119);
  v109 = v50;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_52();
  v53 = OUTLINED_FUNCTION_35(v52);
  type metadata accessor for WeatherQuery(v53, v37, v54, v55);
  OUTLINED_FUNCTION_5();
  v107 = v57;
  v108 = v56;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_52();
  v106 = v59;
  v60 = OUTLINED_FUNCTION_24_0();
  type metadata accessor for WeatherQuery(v60, v36, v61, v62);
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_2_28(v63, &v106);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_52();
  v66 = OUTLINED_FUNCTION_35(v65);
  type metadata accessor for WeatherQuery(v66, v35, v67, v68);
  OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_2_28(v69, v110);
  v71 = v70;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_61_1();
  OUTLINED_FUNCTION_156_0(v73, v74, v75, v76);
  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_2_28(v77, v112);
  v79 = v78;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_30_6();
  type metadata accessor for WeatherQuery(0, v34, v81, v82);
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_2_28(v83, &v113);
  v85 = v84;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_272();
  v87();
  v114 = v29;
  OUTLINED_FUNCTION_167_0();
  v88();
  v115 = v35;
  OUTLINED_FUNCTION_252();
  v89();
  v116 = v28;
  OUTLINED_FUNCTION_131_0();
  v90();
  v117 = v101;
  v91 = v106;
  OUTLINED_FUNCTION_238();
  v92();
  v118 = v91;
  OUTLINED_FUNCTION_268();
  OUTLINED_FUNCTION_223_0();
  v93();
  v119[0] = v102;
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_245();
  OUTLINED_FUNCTION_149_0();
  v94();
  v119[1] = v91;
  OUTLINED_FUNCTION_154_0(&v111);
  OUTLINED_FUNCTION_120_0(&v115);
  OUTLINED_FUNCTION_111();
  v112[0] = v96;
  v112[1] = v95;
  OUTLINED_FUNCTION_207();
  v113 = v97;
  sub_23B462F30(v105, &v114, v104, 7, v110, v103);
  (*(v79 + 24))(v91, v28);
  (*(v109 + 8))(v102, v71 + 16);
  (*(v107 + 8))(v106, v108);
  OUTLINED_FUNCTION_56_1();
  OUTLINED_FUNCTION_187_0();
  v98();
  OUTLINED_FUNCTION_56_1();
  v99(v28);
  OUTLINED_FUNCTION_56_1();
  OUTLINED_FUNCTION_146_0();
  v100();
  (*(v85 + 8))(v29);
  OUTLINED_FUNCTION_20();
}

void WeatherService.cachedWeather<A, B, C, D, E, F, G, H>(for:including:_:_:_:_:_:_:_:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_21();
  a19 = v31;
  a20 = v32;
  v117 = v33;
  v116 = v34;
  v121 = v35;
  OUTLINED_FUNCTION_94_0(v36);
  OUTLINED_FUNCTION_93_0(v37);
  OUTLINED_FUNCTION_158_0(v38);
  v39 = a23;
  v40 = a25;
  v41 = a26;
  v42 = a27;
  v43 = a28;
  v44 = a29;
  v115 = a29;
  v45 = OUTLINED_FUNCTION_80_1(a30, &a11);
  v49 = type metadata accessor for WeatherQuery(v45, v46, v47, v48);
  OUTLINED_FUNCTION_2_0(v49, &a9);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_52();
  v52 = OUTLINED_FUNCTION_35(v51);
  v55 = type metadata accessor for WeatherQuery(v52, v44, v53, v54);
  OUTLINED_FUNCTION_2_0(v55, v132);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_52();
  v58 = OUTLINED_FUNCTION_35(v57);
  v127 = type metadata accessor for WeatherQuery(v58, v43, v59, v60);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_52();
  v125 = v62;
  v63 = OUTLINED_FUNCTION_24_0();
  v126 = type metadata accessor for WeatherQuery(v63, v42, v64, v65);
  OUTLINED_FUNCTION_5();
  v124 = v66;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_29_8(v68, v114);
  v69 = OUTLINED_FUNCTION_69_2();
  type metadata accessor for WeatherQuery(v69, v70, v71, v72);
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_2_28(v73, &v120);
  v75 = v74;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_52();
  v78 = OUTLINED_FUNCTION_35(v77);
  type metadata accessor for WeatherQuery(v78, v40, v79, v80);
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_2_28(v81, &v122);
  v83 = v82;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_156_0(v85, v86, v87, v88);
  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_2_28(v89, &v126);
  v91 = v90;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_15_13();
  v93 = OUTLINED_FUNCTION_63();
  type metadata accessor for WeatherQuery(v93, v94, v95, v96);
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_2_28(v97, &v129);
  v99 = v98;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_170_0();
  OUTLINED_FUNCTION_146_0();
  v101();
  v131 = v39;
  v91 += 16;
  OUTLINED_FUNCTION_167_0();
  v102();
  v132[0] = v30;
  OUTLINED_FUNCTION_213();
  v103();
  v132[1] = v43;
  v104 = v122;
  OUTLINED_FUNCTION_131_0();
  v105();
  v132[2] = v104;
  v106 = v123;
  (*(v124 + 16))(v123, v116, v126);
  v132[3] = v106;
  OUTLINED_FUNCTION_40_3();
  v107 = v125;
  v108(v125, v117, v127);
  v132[4] = v107;
  OUTLINED_FUNCTION_123_0();
  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_186_0();
  v109();
  v132[5] = v40;
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_236_0();
  OUTLINED_FUNCTION_280();
  OUTLINED_FUNCTION_166_0();
  v110();
  v132[6] = v91;
  OUTLINED_FUNCTION_204_0(&v124);
  OUTLINED_FUNCTION_144_0(v130);
  OUTLINED_FUNCTION_120_0(&v131);
  v130[4] = v115;
  v130[5] = v118;
  sub_23B462F30(v121, &v131, v120, 8, &v128, v119);
  (*(v30 + 8))(v91, v41);
  (*(v43 + 8))(v40, v83 + 16);
  (*(v75 + 24))(v125, v127);
  (*(v124 + 8))(v123, v126);
  OUTLINED_FUNCTION_56_1();
  v111(v122);
  OUTLINED_FUNCTION_56_1();
  OUTLINED_FUNCTION_262();
  v112();
  OUTLINED_FUNCTION_56_1();
  OUTLINED_FUNCTION_187_0();
  v113();
  (*(v99 + 8))(v39);
  OUTLINED_FUNCTION_20();
}

void WeatherService.cachedWeather<A, B, C, D, E, F, G, H, I>(for:including:_:_:_:_:_:_:_:_:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_21();
  a19 = v33;
  a20 = v34;
  v133[0] = v35;
  v132 = v36;
  v131 = v37;
  v130 = v38;
  v136 = v39;
  OUTLINED_FUNCTION_94_0(v40);
  OUTLINED_FUNCTION_93_0(v41);
  OUTLINED_FUNCTION_115_0(v42);
  v134 = v43;
  v44 = a25;
  v141 = a24;
  v45 = a26;
  v46 = a27;
  v47 = a28;
  v48 = a29;
  v49 = a30;
  v50 = a31;
  v51 = OUTLINED_FUNCTION_80_1(a32, &v151);
  v55 = type metadata accessor for WeatherQuery(v51, v52, v53, v54);
  OUTLINED_FUNCTION_2_0(v55, v150);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_52();
  v58 = OUTLINED_FUNCTION_35(v57);
  v61 = type metadata accessor for WeatherQuery(v58, v50, v59, v60);
  OUTLINED_FUNCTION_2_0(v61, v145);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_52();
  v64 = OUTLINED_FUNCTION_35(v63);
  v67 = type metadata accessor for WeatherQuery(v64, v49, v65, v66);
  OUTLINED_FUNCTION_2_0(v67, &v143);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_52();
  v70 = OUTLINED_FUNCTION_35(v69);
  v142 = type metadata accessor for WeatherQuery(v70, v48, v71, v72);
  OUTLINED_FUNCTION_5();
  v140 = v73;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_52();
  v76 = OUTLINED_FUNCTION_35(v75);
  v79 = type metadata accessor for WeatherQuery(v76, v47, v77, v78);
  OUTLINED_FUNCTION_2_0(v79, &a17);
  v81 = v80;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_52();
  v84 = OUTLINED_FUNCTION_35(v83);
  type metadata accessor for WeatherQuery(v84, v46, v85, v86);
  OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_2_28(v87, v133);
  v89 = v88;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_52();
  v92 = OUTLINED_FUNCTION_35(v91);
  type metadata accessor for WeatherQuery(v92, v45, v93, v94);
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_2_28(v95, &v135);
  v97 = v96;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_20_0();
  v99 = OUTLINED_FUNCTION_98_0();
  type metadata accessor for WeatherQuery(v99, v100, v101, v102);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_2_28(v103, v138);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_13();
  v105 = OUTLINED_FUNCTION_192_0(&v137);
  type metadata accessor for WeatherQuery(v105, v141, v106, v107);
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_2_28(v108, v139);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v109);
  OUTLINED_FUNCTION_15_13();
  OUTLINED_FUNCTION_121_0();
  v110(v44, v130);
  v146[0] = v44;
  OUTLINED_FUNCTION_130_0();
  v111();
  v146[1] = v47;
  OUTLINED_FUNCTION_213();
  v112();
  v147 = v32;
  v89 += 16;
  OUTLINED_FUNCTION_160(&a14);
  OUTLINED_FUNCTION_252();
  v113();
  v148 = v50;
  v114 = OUTLINED_FUNCTION_160(&a15);
  v115(v114, v131, v139[0]);
  v149 = v50;
  v116 = OUTLINED_FUNCTION_49_2();
  v117(v116, v132, v142);
  v150[0] = v50;
  OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_224_0();
  v118();
  v150[1] = v50;
  OUTLINED_FUNCTION_40_3();
  OUTLINED_FUNCTION_199();
  OUTLINED_FUNCTION_267();
  OUTLINED_FUNCTION_149_0();
  v119();
  v150[2] = v89;
  OUTLINED_FUNCTION_53_1();
  OUTLINED_FUNCTION_190_0();
  OUTLINED_FUNCTION_276();
  v120();
  v150[3] = v47;
  OUTLINED_FUNCTION_297(&v134);
  OUTLINED_FUNCTION_82_0();
  v144[1] = v122;
  v144[2] = v121;
  OUTLINED_FUNCTION_144_0(v144);
  OUTLINED_FUNCTION_120_0(&v149);
  v145[1] = v133[1];
  sub_23B462F30(v136, v146, v134, 9, &v143, v135);
  v123 = OUTLINED_FUNCTION_243_0();
  v124(v123);
  (*(v32 + 8))(v89, v97 + 16);
  (*(v81 + 24))(v139[1], v45);
  (*(v140 + 8))(v138[2], v142);
  OUTLINED_FUNCTION_56_1();
  OUTLINED_FUNCTION_245();
  v125();
  OUTLINED_FUNCTION_56_1();
  v126(v138[0]);
  OUTLINED_FUNCTION_56_1();
  v127(v32);
  OUTLINED_FUNCTION_56_1();
  v128();
  OUTLINED_FUNCTION_56_1();
  OUTLINED_FUNCTION_159_0();
  v129();
  OUTLINED_FUNCTION_20();
}

void WeatherService.cachedWeather<A, B, C, D, E, F, G, H, I, J>(for:including:_:_:_:_:_:_:_:_:_:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_21();
  a19 = v37;
  a20 = v38;
  v145 = v39;
  v148 = v40;
  OUTLINED_FUNCTION_114_0(v41);
  OUTLINED_FUNCTION_115_0(v42);
  OUTLINED_FUNCTION_94_0(v43);
  OUTLINED_FUNCTION_93_0(v44);
  OUTLINED_FUNCTION_165_0(v45);
  OUTLINED_FUNCTION_73_1(v46);
  OUTLINED_FUNCTION_100(a26);
  v47 = a27;
  v48 = a28;
  v49 = a29;
  v50 = a30;
  v51 = a31;
  v52 = a32;
  v53 = a33;
  v54 = OUTLINED_FUNCTION_80_1(a34, v163);
  v58 = type metadata accessor for WeatherQuery(v54, v55, v56, v57);
  OUTLINED_FUNCTION_2_0(v58, &v159);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_52();
  v61 = OUTLINED_FUNCTION_35(v60);
  v64 = type metadata accessor for WeatherQuery(v61, v53, v62, v63);
  OUTLINED_FUNCTION_2_0(v64, &v156);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_52();
  v67 = OUTLINED_FUNCTION_35(v66);
  v154 = type metadata accessor for WeatherQuery(v67, v52, v68, v69);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_52();
  v72 = OUTLINED_FUNCTION_35(v71);
  v75 = type metadata accessor for WeatherQuery(v72, v51, v73, v74);
  OUTLINED_FUNCTION_2_0(v75, &a17);
  v143 = v76;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_52();
  v79 = OUTLINED_FUNCTION_35(v78);
  v82 = type metadata accessor for WeatherQuery(v79, v50, v80, v81);
  OUTLINED_FUNCTION_2_0(v82, &a15);
  v150[3] = v83;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_52();
  v86 = OUTLINED_FUNCTION_35(v85);
  v89 = type metadata accessor for WeatherQuery(v86, v49, v87, v88);
  OUTLINED_FUNCTION_2_0(v89, &a13);
  v150[0] = v90;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_30_6();
  v92 = OUTLINED_FUNCTION_69_2();
  type metadata accessor for WeatherQuery(v92, v93, v94, v95);
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_2_28(v96, v144);
  v98 = v97;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_52();
  v101 = OUTLINED_FUNCTION_35(v100);
  type metadata accessor for WeatherQuery(v101, v47, v102, v103);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_2_28(v104, v146);
  v106 = v105;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v107);
  OUTLINED_FUNCTION_13();
  v108 = OUTLINED_FUNCTION_192_0(&v145);
  type metadata accessor for WeatherQuery(v108, v151[1], v109, v110);
  OUTLINED_FUNCTION_174_0();
  OUTLINED_FUNCTION_2_28(v111, &v147);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v112);
  OUTLINED_FUNCTION_18_14();
  type metadata accessor for WeatherQuery(0, v153, v113, v114);
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_2_28(v115, &v149);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v116);
  OUTLINED_FUNCTION_20_13(v117, v142);
  OUTLINED_FUNCTION_262();
  v118();
  v158 = v36;
  OUTLINED_FUNCTION_279();
  v119();
  v159 = v34;
  OUTLINED_FUNCTION_130_0();
  v120();
  v160 = v35;
  v98 += 16;
  OUTLINED_FUNCTION_160(&a9);
  OUTLINED_FUNCTION_131_0();
  v121();
  v161 = v47;
  OUTLINED_FUNCTION_50_1();
  OUTLINED_FUNCTION_136();
  v122();
  v162 = v50;
  OUTLINED_FUNCTION_50_1();
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_146_0();
  v123();
  v163[0] = v47;
  OUTLINED_FUNCTION_169_0();
  v124 = OUTLINED_FUNCTION_49_2();
  v125(v124, v145, v152);
  v163[1] = v47;
  OUTLINED_FUNCTION_44_3();
  v126 = OUTLINED_FUNCTION_199();
  v127(v126, v144[1], v154);
  v163[2] = v98;
  OUTLINED_FUNCTION_53_1();
  OUTLINED_FUNCTION_197_0();
  OUTLINED_FUNCTION_183_0();
  v128();
  v163[3] = v52;
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_236_0();
  OUTLINED_FUNCTION_272();
  OUTLINED_FUNCTION_223_0();
  v129();
  v164 = v34;
  OUTLINED_FUNCTION_207();
  v155[0] = v131;
  v155[1] = v130;
  OUTLINED_FUNCTION_297(v150);
  OUTLINED_FUNCTION_204_0(v151);
  OUTLINED_FUNCTION_154_0(&v157);
  OUTLINED_FUNCTION_120_0(v163);
  sub_23B462F30(v148, &v158, v147, 10, v155, v146[3]);
  (*(v106 + 24))(v34, v35);
  v132 = OUTLINED_FUNCTION_243();
  v133(v132);
  (*(v48 + 8))(v98, v154);
  (*(v143 + 8))(v150[1], v152);
  OUTLINED_FUNCTION_56_1();
  OUTLINED_FUNCTION_268();
  v134();
  OUTLINED_FUNCTION_56_1();
  v135 = OUTLINED_FUNCTION_128_0();
  v136(v135);
  OUTLINED_FUNCTION_56_1();
  v137 = OUTLINED_FUNCTION_277();
  v138(v137);
  OUTLINED_FUNCTION_56_1();
  v139();
  OUTLINED_FUNCTION_56_1();
  v140(v34);
  OUTLINED_FUNCTION_56_1();
  v141(v36);
  OUTLINED_FUNCTION_20();
}

void WeatherService.cachedWeather<A, B, C, D, E, F, G, H, I, J, K>(for:including:_:_:_:_:_:_:_:_:_:_:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_21();
  a19 = v37;
  a20 = v38;
  v175 = v39;
  v172 = v40;
  v171 = v41;
  v179 = v42;
  OUTLINED_FUNCTION_114_0(v43);
  OUTLINED_FUNCTION_115_0(v44);
  OUTLINED_FUNCTION_94_0(v45);
  OUTLINED_FUNCTION_93_0(v46);
  OUTLINED_FUNCTION_165_0(v47);
  OUTLINED_FUNCTION_147_0(v48);
  OUTLINED_FUNCTION_116_0(v49);
  OUTLINED_FUNCTION_113_0(a27);
  v50 = a28;
  v51 = a29;
  v52 = a30;
  v53 = a31;
  v54 = a32;
  v55 = a33;
  v56 = a34;
  v57 = a35;
  v174 = a35;
  v58 = OUTLINED_FUNCTION_80_1(a36, &v189);
  v62 = type metadata accessor for WeatherQuery(v58, v59, v60, v61);
  OUTLINED_FUNCTION_2_0(v62, v187);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_52();
  v65 = OUTLINED_FUNCTION_35(v64);
  v68 = type metadata accessor for WeatherQuery(v65, v57, v66, v67);
  OUTLINED_FUNCTION_2_0(v68, &v185);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_52();
  v71 = OUTLINED_FUNCTION_35(v70);
  v74 = type metadata accessor for WeatherQuery(v71, v56, v72, v73);
  OUTLINED_FUNCTION_2_0(v74, v184);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_52();
  v77 = OUTLINED_FUNCTION_35(v76);
  v80 = type metadata accessor for WeatherQuery(v77, v55, v78, v79);
  OUTLINED_FUNCTION_2_0(v80, &a16);
  v184[5] = v81;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_52();
  v84 = OUTLINED_FUNCTION_35(v83);
  v87 = type metadata accessor for WeatherQuery(v84, v54, v85, v86);
  OUTLINED_FUNCTION_2_0(v87, &a13);
  v184[2] = v88;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_52();
  v91 = OUTLINED_FUNCTION_35(v90);
  v94 = type metadata accessor for WeatherQuery(v91, v53, v92, v93);
  OUTLINED_FUNCTION_2_0(v94, &a11);
  v184[0] = v95;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_52();
  v98 = OUTLINED_FUNCTION_35(v97);
  v101 = type metadata accessor for WeatherQuery(v98, v52, v99, v100);
  OUTLINED_FUNCTION_2_0(v101, &v199);
  v182[1] = v102;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_21_1();
  v104 = OUTLINED_FUNCTION_63();
  type metadata accessor for WeatherQuery(v104, v105, v106, v107);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_2_28(v108, &v173);
  v110 = v109;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v111);
  OUTLINED_FUNCTION_52();
  v113 = OUTLINED_FUNCTION_35(v112);
  type metadata accessor for WeatherQuery(v113, v50, v114, v115);
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_2_28(v116, &v176);
  v118 = v117;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v119);
  OUTLINED_FUNCTION_13();
  v120 = OUTLINED_FUNCTION_192_0(&v175);
  v123 = type metadata accessor for WeatherQuery(v120, v184[4], v121, v122);
  OUTLINED_FUNCTION_2_28(v123, v178);
  v125 = v124;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v126);
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_258(v127, v128, v129, v130);
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_2_28(v131, &v180);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v132);
  OUTLINED_FUNCTION_18_14();
  OUTLINED_FUNCTION_121_0();
  v133(v56, v171);
  v188 = v56;
  v134 = *(v125 + 16);
  v125 += 16;
  v134(v52, v172, v123);
  v189 = v52;
  OUTLINED_FUNCTION_213();
  v136(v135);
  v190 = v36;
  v137 = v181;
  OUTLINED_FUNCTION_130_0();
  v139(v138);
  v191 = v137;
  OUTLINED_FUNCTION_50_1();
  OUTLINED_FUNCTION_79_1();
  v141(v140);
  v192 = v53;
  OUTLINED_FUNCTION_50_1();
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_57_2();
  v143(v142);
  v193 = v51;
  OUTLINED_FUNCTION_185_0();
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_136();
  v145(v144);
  v194 = v51;
  OUTLINED_FUNCTION_50_1();
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_215_0();
  v147(v146);
  v195 = v51;
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_197_0();
  OUTLINED_FUNCTION_186_0();
  v149(v148);
  v196 = v125;
  OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_223_0();
  v151(v150);
  v197 = v137;
  OUTLINED_FUNCTION_56_2();
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_183_0();
  v153(v152);
  v198 = v51;
  OUTLINED_FUNCTION_62_1(&a17);
  OUTLINED_FUNCTION_205_0(v177);
  OUTLINED_FUNCTION_202_0(v182);
  OUTLINED_FUNCTION_203_0(&v183);
  OUTLINED_FUNCTION_82_0();
  v186[7] = v155;
  v186[8] = v154;
  v187[0] = v174;
  v187[1] = v177[1];
  sub_23B462F30(v179, &v188, v178[1], 11, v186, v178[2]);
  (*(v56 + 8))(v51, v123);
  v156 = OUTLINED_FUNCTION_270();
  v157(v156);
  (*(v118 + 24))(v125, v110 + 16);
  OUTLINED_FUNCTION_56_1();
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_194_0();
  v159(v158);
  OUTLINED_FUNCTION_56_1();
  v160 = OUTLINED_FUNCTION_128_0();
  v161(v160);
  OUTLINED_FUNCTION_56_1();
  v162 = OUTLINED_FUNCTION_55_2();
  v163(v162);
  OUTLINED_FUNCTION_56_1();
  v164 = OUTLINED_FUNCTION_78_1();
  v165(v164);
  OUTLINED_FUNCTION_56_1();
  v166(v181);
  OUTLINED_FUNCTION_56_1();
  v167 = OUTLINED_FUNCTION_291();
  v168(v167);
  OUTLINED_FUNCTION_56_1();
  v169(v52);
  OUTLINED_FUNCTION_56_1();
  v170(v56);
  OUTLINED_FUNCTION_20();
}

void WeatherService.cachedWeather<A, B, C, D, E, F, G, H, I, J, K, L>(for:including:_:_:_:_:_:_:_:_:_:_:_:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_21();
  a19 = v39;
  a20 = v40;
  v181[0] = v41;
  v179 = v42;
  v178 = v43;
  v186 = v44;
  OUTLINED_FUNCTION_147_0(v45);
  OUTLINED_FUNCTION_165_0(v46);
  OUTLINED_FUNCTION_114_0(v47);
  OUTLINED_FUNCTION_115_0(v48);
  OUTLINED_FUNCTION_94_0(v49);
  OUTLINED_FUNCTION_93_0(v50);
  OUTLINED_FUNCTION_231_0(v51);
  OUTLINED_FUNCTION_150_0(v52);
  OUTLINED_FUNCTION_145_0(a28);
  v190[5] = a29;
  v53 = a30;
  v54 = a31;
  v55 = a32;
  v56 = a33;
  v57 = a34;
  v58 = a35;
  v59 = a36;
  v60 = a37;
  v182 = a37;
  v61 = OUTLINED_FUNCTION_80_1(a38, v195);
  v65 = type metadata accessor for WeatherQuery(v61, v62, v63, v64);
  OUTLINED_FUNCTION_2_0(v65, &v194);
  v181[1] = v66;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_52();
  v69 = OUTLINED_FUNCTION_35(v68);
  v72 = type metadata accessor for WeatherQuery(v69, v60, v70, v71);
  OUTLINED_FUNCTION_2_0(v72, v191);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_52();
  v75 = OUTLINED_FUNCTION_35(v74);
  v78 = type metadata accessor for WeatherQuery(v75, v59, v76, v77);
  OUTLINED_FUNCTION_2_0(v78, v190);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_52();
  v81 = OUTLINED_FUNCTION_35(v80);
  v84 = type metadata accessor for WeatherQuery(v81, v58, v82, v83);
  OUTLINED_FUNCTION_2_0(v84, &a14);
  v191[1] = v85;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_52();
  v88 = OUTLINED_FUNCTION_35(v87);
  v91 = type metadata accessor for WeatherQuery(v88, v57, v89, v90);
  OUTLINED_FUNCTION_2_0(v91, &a11);
  v190[6] = v92;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_52();
  v95 = OUTLINED_FUNCTION_35(v94);
  v98 = type metadata accessor for WeatherQuery(v95, v56, v96, v97);
  OUTLINED_FUNCTION_2_0(v98, &v199);
  v190[2] = v99;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_52();
  v102 = OUTLINED_FUNCTION_35(v101);
  v105 = type metadata accessor for WeatherQuery(v102, v55, v103, v104);
  OUTLINED_FUNCTION_2_0(v105, v198);
  v190[0] = v106;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v107);
  OUTLINED_FUNCTION_52();
  v109 = OUTLINED_FUNCTION_35(v108);
  v112 = type metadata accessor for WeatherQuery(v109, v54, v110, v111);
  OUTLINED_FUNCTION_2_0(v112, v197);
  v189[1] = v113;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v114);
  OUTLINED_FUNCTION_52();
  v116 = OUTLINED_FUNCTION_35(v115);
  type metadata accessor for WeatherQuery(v116, v53, v117, v118);
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_2_28(v119, v181);
  v121 = v120;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v122);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_257_0(v123, v124, v125, v126);
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_2_28(v127, &v182);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v128);
  OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_259(v129, v130, v131, v132);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_2_28(v133, v184);
  v135 = v134;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v136);
  OUTLINED_FUNCTION_18_14();
  type metadata accessor for WeatherQuery(0, v192, v137, v138);
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_2_28(v139, &v185);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v140);
  v142 = OUTLINED_FUNCTION_20_13(v141, v177);
  v143(v142, v178);
  v196[0] = v38;
  OUTLINED_FUNCTION_130_0();
  v144();
  v196[1] = v59;
  OUTLINED_FUNCTION_213();
  v145();
  v196[2] = v55;
  OUTLINED_FUNCTION_131_0();
  v146();
  v196[3] = v58;
  OUTLINED_FUNCTION_50_1();
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_135_0();
  v147();
  v196[4] = v60;
  v148 = OUTLINED_FUNCTION_33_4();
  v149(v148, v179, v190[1]);
  v196[5] = v60;
  OUTLINED_FUNCTION_50_1();
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_79_1();
  v150();
  v196[6] = v60;
  OUTLINED_FUNCTION_50_1();
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_57_2();
  v151();
  v197[0] = v60;
  OUTLINED_FUNCTION_185_0();
  v152 = OUTLINED_FUNCTION_27_9();
  v153(v152, v181[2], v191[3]);
  v197[1] = v60;
  OUTLINED_FUNCTION_123_0();
  OUTLINED_FUNCTION_236_0();
  OUTLINED_FUNCTION_187_0();
  OUTLINED_FUNCTION_149_0();
  v154();
  v198[0] = v59;
  OUTLINED_FUNCTION_77_1();
  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_183_0();
  v155();
  v198[1] = v56;
  OUTLINED_FUNCTION_53_1();
  v156 = v183;
  v157(v180, v184[2], v183);
  v198[2] = v180;
  OUTLINED_FUNCTION_100(v192);
  OUTLINED_FUNCTION_228_0();
  OUTLINED_FUNCTION_116_0(v158);
  OUTLINED_FUNCTION_62_1(&a9);
  OUTLINED_FUNCTION_205_0(&v187);
  OUTLINED_FUNCTION_202_0(&v188);
  OUTLINED_FUNCTION_199_0(v189);
  v195[1] = v159;
  v195[2] = v182;
  v195[3] = v184[1];
  sub_23B462F30(v186, v196, v185, 12, &v193, v184[3]);
  (*(v60 + 8))(v180, v156);
  v160 = OUTLINED_FUNCTION_227_0();
  v161(v160);
  (*(v135 + 24))(v59, v121 + 16);
  OUTLINED_FUNCTION_56_1();
  OUTLINED_FUNCTION_238();
  v162();
  OUTLINED_FUNCTION_56_1();
  v163 = OUTLINED_FUNCTION_55_2();
  v164(v163);
  OUTLINED_FUNCTION_56_1();
  v165 = OUTLINED_FUNCTION_78_1();
  v166(v165);
  OUTLINED_FUNCTION_56_1();
  v167 = OUTLINED_FUNCTION_263();
  v168(v167);
  OUTLINED_FUNCTION_56_1();
  v169 = OUTLINED_FUNCTION_127_0();
  v170(v169);
  OUTLINED_FUNCTION_56_1();
  v171(v58);
  OUTLINED_FUNCTION_56_1();
  v172 = OUTLINED_FUNCTION_286();
  v173(v172);
  OUTLINED_FUNCTION_56_1();
  v174(v59);
  OUTLINED_FUNCTION_56_1();
  v175 = OUTLINED_FUNCTION_291();
  v176(v175);
  OUTLINED_FUNCTION_20();
}

void WeatherService.cachedWeather<A, B, C, D, E, F, G, H, I, J, K, L, M>(for:including:_:_:_:_:_:_:_:_:_:_:_:_:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  OUTLINED_FUNCTION_21();
  a19 = v41;
  a20 = v42;
  v199[1] = v43;
  v197 = v44;
  v196 = v45;
  v195 = v46;
  v204 = v47;
  OUTLINED_FUNCTION_147_0(v48);
  OUTLINED_FUNCTION_165_0(v49);
  OUTLINED_FUNCTION_114_0(v50);
  OUTLINED_FUNCTION_115_0(v51);
  OUTLINED_FUNCTION_94_0(v52);
  OUTLINED_FUNCTION_93_0(v53);
  OUTLINED_FUNCTION_231_0(v54);
  OUTLINED_FUNCTION_193_0(v55);
  OUTLINED_FUNCTION_145_0(v56);
  OUTLINED_FUNCTION_158_0(a29);
  v209[0] = a30;
  v57 = a31;
  v194 = a31;
  v58 = a32;
  v59 = a33;
  v60 = a34;
  v61 = a35;
  v62 = a36;
  v63 = a37;
  v64 = a38;
  v65 = a39;
  v200[1] = a39;
  v66 = OUTLINED_FUNCTION_80_1(a40, v212);
  v70 = type metadata accessor for WeatherQuery(v66, v67, v68, v69);
  OUTLINED_FUNCTION_2_0(v70, &v211);
  v200[0] = v71;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_52();
  v74 = OUTLINED_FUNCTION_35(v73);
  v77 = type metadata accessor for WeatherQuery(v74, v65, v75, v76);
  OUTLINED_FUNCTION_2_0(v77, &v208);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_52();
  v80 = OUTLINED_FUNCTION_35(v79);
  v83 = type metadata accessor for WeatherQuery(v80, v64, v81, v82);
  OUTLINED_FUNCTION_2_0(v83, v207);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_52();
  v86 = OUTLINED_FUNCTION_35(v85);
  v89 = type metadata accessor for WeatherQuery(v86, v63, v87, v88);
  OUTLINED_FUNCTION_2_0(v89, &a11);
  v209[3] = v90;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_52();
  v93 = OUTLINED_FUNCTION_35(v92);
  v96 = type metadata accessor for WeatherQuery(v93, v62, v94, v95);
  OUTLINED_FUNCTION_2_0(v96, &a9);
  v209[1] = v97;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_52();
  v100 = OUTLINED_FUNCTION_35(v99);
  v103 = type metadata accessor for WeatherQuery(v100, v61, v101, v102);
  OUTLINED_FUNCTION_2_0(v103, v219);
  v207[6] = v104;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v105);
  OUTLINED_FUNCTION_52();
  v107 = OUTLINED_FUNCTION_35(v106);
  v110 = type metadata accessor for WeatherQuery(v107, v60, v108, v109);
  OUTLINED_FUNCTION_2_0(v110, v218);
  v207[3] = v111;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v112);
  OUTLINED_FUNCTION_52();
  v114 = OUTLINED_FUNCTION_35(v113);
  v117 = type metadata accessor for WeatherQuery(v114, v59, v115, v116);
  OUTLINED_FUNCTION_2_0(v117, v217);
  v207[1] = v118;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v119);
  OUTLINED_FUNCTION_52();
  v121 = OUTLINED_FUNCTION_35(v120);
  v124 = type metadata accessor for WeatherQuery(v121, v58, v122, v123);
  OUTLINED_FUNCTION_2_0(v124, v216);
  v206[2] = v125;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v126);
  OUTLINED_FUNCTION_52();
  v128 = OUTLINED_FUNCTION_35(v127);
  type metadata accessor for WeatherQuery(v128, v57, v129, v130);
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_2_28(v131, v199);
  v133 = v132;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v134);
  OUTLINED_FUNCTION_61_1();
  type metadata accessor for WeatherQuery(0, v209[0], v135, v136);
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_2_28(v137, v200);
  v139 = v138;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v140);
  OUTLINED_FUNCTION_15_13();
  OUTLINED_FUNCTION_256_0(v141, v142, v143, v144);
  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_2_28(v145, &v201);
  v147 = v146;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v148);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_259(v149, v150, v151, v152);
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_2_28(v153, v202);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v154);
  OUTLINED_FUNCTION_18_14();
  OUTLINED_FUNCTION_121_0();
  v155(v61, v195);
  v213 = v61;
  OUTLINED_FUNCTION_167_0();
  v156();
  v214 = v40;
  OUTLINED_FUNCTION_131_0();
  v157();
  v215 = v59;
  OUTLINED_FUNCTION_130_0();
  v158();
  v216[0] = v60;
  OUTLINED_FUNCTION_50_1();
  v159 = OUTLINED_FUNCTION_49_2();
  v160(v159, v196, v206[3]);
  v216[1] = v57;
  OUTLINED_FUNCTION_50_1();
  v161 = OUTLINED_FUNCTION_49_2();
  v162(v161, v197, v207[2]);
  v216[2] = v57;
  OUTLINED_FUNCTION_50_1();
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_135_0();
  v163();
  v217[0] = v57;
  OUTLINED_FUNCTION_50_1();
  v164 = OUTLINED_FUNCTION_49_2();
  v165(v164, v198, v208);
  v217[1] = v57;
  v166 = OUTLINED_FUNCTION_33_4();
  v167(v166, v199[2], v209[2]);
  v218[0] = v57;
  OUTLINED_FUNCTION_50_1();
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_57_2();
  v168();
  v218[1] = v57;
  OUTLINED_FUNCTION_40_3();
  OUTLINED_FUNCTION_190_0();
  OUTLINED_FUNCTION_159_0();
  v169();
  v218[2] = v139 + 16;
  OUTLINED_FUNCTION_170_0();
  OUTLINED_FUNCTION_195_0();
  OUTLINED_FUNCTION_262();
  OUTLINED_FUNCTION_186_0();
  v170();
  v219[0] = v59;
  OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_224_0();
  v171();
  v219[1] = v57;
  OUTLINED_FUNCTION_228_0();
  OUTLINED_FUNCTION_113_0(v172);
  OUTLINED_FUNCTION_185_0();
  OUTLINED_FUNCTION_150_0(v173);
  OUTLINED_FUNCTION_100(v209[0]);
  OUTLINED_FUNCTION_116_0(v194);
  OUTLINED_FUNCTION_62_1(&v203);
  OUTLINED_FUNCTION_205_0(&v205);
  OUTLINED_FUNCTION_202_0(v206);
  OUTLINED_FUNCTION_203_0(v209);
  OUTLINED_FUNCTION_82_0();
  v212[6] = v175;
  v212[7] = v174;
  sub_23B462F30(v204, &v213, v202[1], 13, &v210, v203);
  (*(v64 + 8))(v57, v133 + 16);
  v176 = OUTLINED_FUNCTION_283();
  v177(v176, v147 + 16);
  v178 = OUTLINED_FUNCTION_243_0();
  v179(v178);
  OUTLINED_FUNCTION_56_1();
  v180 = OUTLINED_FUNCTION_55_2();
  v181(v180);
  OUTLINED_FUNCTION_56_1();
  OUTLINED_FUNCTION_276();
  v182();
  OUTLINED_FUNCTION_56_1();
  OUTLINED_FUNCTION_267();
  v183();
  OUTLINED_FUNCTION_56_1();
  v184 = OUTLINED_FUNCTION_127_0();
  v185(v184);
  OUTLINED_FUNCTION_56_1();
  v186 = OUTLINED_FUNCTION_213_0();
  v187(v186);
  OUTLINED_FUNCTION_56_1();
  OUTLINED_FUNCTION_146_0();
  v188();
  OUTLINED_FUNCTION_56_1();
  v189(v60);
  OUTLINED_FUNCTION_56_1();
  v190(v59);
  OUTLINED_FUNCTION_56_1();
  v191(v40);
  OUTLINED_FUNCTION_56_1();
  v192 = OUTLINED_FUNCTION_286();
  v193(v192);
  OUTLINED_FUNCTION_20();
}

void WeatherService.addCacheObserver(configuration:observer:)()
{
  OUTLINED_FUNCTION_25();
  v16 = v1;
  v17 = v2;
  v19 = sub_23B50CA64();
  OUTLINED_FUNCTION_5();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_27();
  v8 = v7 - v6;
  v18 = sub_23B50C8A4();
  OUTLINED_FUNCTION_5();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_27();
  v14 = v13 - v12;
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_23B468E24(v8);
  v15 = swift_allocObject();
  *(v15 + 16) = v16;
  *(v15 + 24) = v17;

  sub_23B50B6D4();

  (*(v4 + 8))(v8, v19);
  sub_23B50C884();
  (*(v10 + 8))(v14, v18);
  OUTLINED_FUNCTION_26_3();
}

uint64_t sub_23B468E24@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23B50BA54();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v53 - v8;
  v10 = sub_23B50CAA4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v75 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v14);
  v72 = (&v53 - v15);
  v18 = MEMORY[0x28223BE20](v16);
  v74 = &v53 - v19;
  v20 = *(v1 + 16);
  v21 = *(v1 + 24);
  v73 = *(v1 + 25);
  v22 = *(v20 + 16);
  v23 = MEMORY[0x277D84F90];
  if (v21)
  {
    if (v22)
    {
      v54 = v17;
      v69 = v11;
      v70 = v10;
      v71 = a1;
      v78 = MEMORY[0x277D84F90];
      sub_23B41B438(0, v22, 0);
      v23 = v78;
      v24 = (v20 + 32);
      LODWORD(v72) = *MEMORY[0x277D7AD48];
      v76 = *(v4 + 104);
      v25 = *MEMORY[0x277D7AD68];
      v67 = *MEMORY[0x277D7AD50];
      v68 = v25;
      v26 = *MEMORY[0x277D7AD08];
      v65 = *MEMORY[0x277D7AD40];
      v66 = v26;
      v27 = *MEMORY[0x277D7AD28];
      v63 = *MEMORY[0x277D7AD20];
      v64 = v27;
      v28 = *MEMORY[0x277D7AD70];
      v61 = *MEMORY[0x277D7AD38];
      v62 = v28;
      v29 = *MEMORY[0x277D7AD10];
      v59 = *MEMORY[0x277D7AD60];
      v60 = v29;
      v30 = *MEMORY[0x277D7AD58];
      v57 = *MEMORY[0x277D7AD30];
      v58 = v30;
      v31 = *MEMORY[0x277D7AD18];
      v55 = *MEMORY[0x277D7ACF8];
      v56 = v31;
      v77 = v4 + 104;
      v32 = *MEMORY[0x277D7AD00];
      do
      {
        v33 = *v24++;
        v34 = v32;
        switch(v33)
        {
          case 1:
            v34 = v55;
            break;
          case 2:
            v34 = v56;
            break;
          case 3:
            v34 = v57;
            break;
          case 4:
            v34 = v58;
            break;
          case 5:
            v34 = v59;
            break;
          case 6:
            v34 = v60;
            break;
          case 7:
            v34 = v61;
            break;
          case 8:
            v34 = v62;
            break;
          case 9:
            v34 = v63;
            break;
          case 10:
            v34 = v64;
            break;
          case 11:
            v34 = v65;
            break;
          case 12:
            v34 = v66;
            break;
          case 13:
            v34 = v67;
            break;
          case 14:
            v34 = v68;
            break;
          case 15:
            v34 = v72;
            break;
          default:
            break;
        }

        v76(v6, v34, v3);
        v78 = v23;
        v36 = *(v23 + 16);
        v35 = *(v23 + 24);
        if (v36 >= v35 >> 1)
        {
          sub_23B41B438(v35 > 1, v36 + 1, 1);
          v23 = v78;
        }

        *(v23 + 16) = v36 + 1;
        (*(v4 + 32))(v23 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v36, v6, v3);
        --v22;
      }

      while (v22);
      v10 = v70;
      v11 = v69;
      v17 = v54;
    }

    *v17 = v23;
    v49 = MEMORY[0x277D7B0D8];
    v50 = v17;
  }

  else
  {
    if (v22)
    {
      v69 = v11;
      v70 = v10;
      v71 = a1;
      v78 = MEMORY[0x277D84F90];
      sub_23B41B438(0, v22, 0);
      v23 = v78;
      v37 = (v20 + 32);
      v68 = *MEMORY[0x277D7AD48];
      v76 = *(v4 + 104);
      v38 = *MEMORY[0x277D7AD68];
      v66 = *MEMORY[0x277D7AD50];
      v67 = v38;
      v39 = *MEMORY[0x277D7AD08];
      v64 = *MEMORY[0x277D7AD40];
      v65 = v39;
      v40 = *MEMORY[0x277D7AD28];
      v62 = *MEMORY[0x277D7AD20];
      v63 = v40;
      v41 = *MEMORY[0x277D7AD70];
      v60 = *MEMORY[0x277D7AD38];
      v61 = v41;
      v42 = *MEMORY[0x277D7AD10];
      v58 = *MEMORY[0x277D7AD60];
      v59 = v42;
      v43 = *MEMORY[0x277D7AD58];
      v56 = *MEMORY[0x277D7AD30];
      v57 = v43;
      v55 = *MEMORY[0x277D7AD18];
      LODWORD(v54) = *MEMORY[0x277D7ACF8];
      v77 = v4 + 104;
      v44 = *MEMORY[0x277D7AD00];
      do
      {
        v45 = *v37++;
        v46 = v44;
        switch(v45)
        {
          case 1:
            v46 = v54;
            break;
          case 2:
            v46 = v55;
            break;
          case 3:
            v46 = v56;
            break;
          case 4:
            v46 = v57;
            break;
          case 5:
            v46 = v58;
            break;
          case 6:
            v46 = v59;
            break;
          case 7:
            v46 = v60;
            break;
          case 8:
            v46 = v61;
            break;
          case 9:
            v46 = v62;
            break;
          case 10:
            v46 = v63;
            break;
          case 11:
            v46 = v64;
            break;
          case 12:
            v46 = v65;
            break;
          case 13:
            v46 = v66;
            break;
          case 14:
            v46 = v67;
            break;
          case 15:
            v46 = v68;
            break;
          default:
            break;
        }

        v76(v9, v46, v3);
        v78 = v23;
        v48 = *(v23 + 16);
        v47 = *(v23 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_23B41B438(v47 > 1, v48 + 1, 1);
          v23 = v78;
        }

        *(v23 + 16) = v48 + 1;
        (*(v4 + 32))(v23 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v48, v9, v3);
        --v22;
      }

      while (v22);
      v10 = v70;
      v11 = v69;
    }

    v50 = v72;
    *v72 = v23;
    v49 = MEMORY[0x277D7B0D0];
  }

  (*(v11 + 104))(v50, *v49, v10, v18);
  v51 = v74;
  (*(v11 + 32))(v74, v50, v10);
  (*(v11 + 16))(v75, v51, v10);
  sub_23B50CA54();
  return (*(v11 + 8))(v51, v10);
}

uint64_t sub_23B46957C(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v5 = sub_23B50BA54();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v61 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - v9;
  sub_23B50C624();
  v12 = v11;
  v14 = v13;
  v15 = sub_23B50C634();
  v16 = *(v15 + 16);
  if (!v16)
  {

    v17 = MEMORY[0x277D84F90];
    goto LABEL_41;
  }

  v51 = a3;
  v52 = a2;
  v62[0] = MEMORY[0x277D84F90];
  sub_23B41B490(0, v16, 0);
  v17 = v62[0];
  v19 = *(v6 + 16);
  v18 = v6 + 16;
  v20 = (*(v18 + 64) + 32) & ~*(v18 + 64);
  v50 = v15;
  v21 = v15 + v20;
  v58 = *(v18 + 56);
  v59 = v19;
  v22 = (v18 + 16);
  v23 = (v18 + 72);
  v57 = *MEMORY[0x277D7AD00];
  v24 = *MEMORY[0x277D7ACF8];
  v55 = *MEMORY[0x277D7AD18];
  v56 = v24;
  v25 = *MEMORY[0x277D7AD30];
  v53 = *MEMORY[0x277D7AD58];
  v54 = v25;
  v26 = *MEMORY[0x277D7AD60];
  v48 = *MEMORY[0x277D7AD10];
  v49 = v26;
  v27 = *MEMORY[0x277D7AD38];
  v46 = *MEMORY[0x277D7AD70];
  v47 = v27;
  v28 = *MEMORY[0x277D7AD20];
  v44 = *MEMORY[0x277D7AD28];
  v45 = v28;
  v29 = *MEMORY[0x277D7AD40];
  v42 = *MEMORY[0x277D7AD08];
  v43 = v29;
  v30 = *MEMORY[0x277D7AD50];
  v40 = *MEMORY[0x277D7AD68];
  v41 = v30;
  v38 = (v18 - 8);
  v39 = *MEMORY[0x277D7AD48];
  v60 = v18;
  do
  {
    v59(v10, v21, v5);
    v31 = v61;
    (*v22)(v61, v10, v5);
    v32 = (*v23)(v31, v5);
    if (v32 == v57)
    {
      v33 = 0;
      goto LABEL_35;
    }

    if (v32 == v56)
    {
      goto LABEL_6;
    }

    if (v32 == v55)
    {
      v33 = 2;
    }

    else if (v32 == v54)
    {
      v33 = 3;
    }

    else if (v32 == v53)
    {
      v33 = 4;
    }

    else if (v32 == v49)
    {
      v33 = 5;
    }

    else if (v32 == v48)
    {
      v33 = 6;
    }

    else if (v32 == v47)
    {
      v33 = 7;
    }

    else if (v32 == v46)
    {
      v33 = 8;
    }

    else if (v32 == v45)
    {
      v33 = 9;
    }

    else if (v32 == v44)
    {
      v33 = 10;
    }

    else if (v32 == v43)
    {
      v33 = 11;
    }

    else if (v32 == v42)
    {
      v33 = 12;
    }

    else if (v32 == v41)
    {
      v33 = 13;
    }

    else if (v32 == v40)
    {
      v33 = 14;
    }

    else
    {
      if (v32 != v39)
      {
        (*v38)(v61, v5);
LABEL_6:
        v33 = 1;
        goto LABEL_35;
      }

      v33 = 15;
    }

LABEL_35:
    v62[0] = v17;
    v35 = *(v17 + 16);
    v34 = *(v17 + 24);
    if (v35 >= v34 >> 1)
    {
      sub_23B41B490(v34 > 1, v35 + 1, 1);
      v17 = v62[0];
    }

    *(v17 + 16) = v35 + 1;
    *(v17 + v35 + 32) = v33;
    v21 += v58;
    --v16;
  }

  while (v16);

  a2 = v52;
LABEL_41:
  v62[0] = v12;
  v62[1] = v14;
  v62[2] = v17;
  a2(v62);
}

void WeatherService.removeCacheObserver(token:)()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v4 = sub_23B50AD64();
  OUTLINED_FUNCTION_5();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_27_3();
  sub_23B50C8A4();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_27();
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  (*(v6 + 16))(v1, v3, v4);
  sub_23B50C894();
  OUTLINED_FUNCTION_195();
  sub_23B50B6F4();
  v9 = OUTLINED_FUNCTION_243_0();
  v10(v9);
  OUTLINED_FUNCTION_20();
}

void WeatherService.removeCacheObservers(with:)()
{
  OUTLINED_FUNCTION_25();
  v2 = sub_23B50CA64();
  OUTLINED_FUNCTION_5();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_27_3();
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_23B468E24(v1);
  sub_23B50B714();
  (*(v4 + 8))(v1, v2);
  OUTLINED_FUNCTION_26_3();
}

uint64_t sub_23B469C7C(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v49 = a6;
  v50 = a7;
  v40 = a5;
  v48 = a4;
  v44 = a3;
  v43 = a2;
  v42 = a1;
  v51 = *v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E132C40, &qword_23B514C28);
  v47 = *(v10 - 8);
  v46 = *(v47 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v45 = &v40 - v11;
  v12 = sub_23B50C964();
  v52 = *(v12 - 8);
  v53 = v12;
  MEMORY[0x28223BE20](v12);
  v41 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B50C954();
  v64[0] = MEMORY[0x277D84F90];
  v14 = type metadata accessor for DayPrecipitationStatistics(0);
  v15 = sub_23B4778AC(&qword_280B42180, type metadata accessor for DayPrecipitationStatistics, &protocol conformance descriptor for DayPrecipitationStatistics);
  v16 = sub_23B4778AC(qword_280B42190, type metadata accessor for DayPrecipitationStatistics, &protocol conformance descriptor for DayPrecipitationStatistics);
  v17 = sub_23B4778AC(&qword_280B42188, type metadata accessor for DayPrecipitationStatistics, &protocol conformance descriptor for DayPrecipitationStatistics);
  v18 = *a5;
  v60 = v14;
  v61 = v15;
  v62 = v16;
  v63 = v17;
  v19 = type metadata accessor for DailyWeatherStatisticsQuery(0, &v60);
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v40 - v22;
  (*(v20 + 16))(&v40 - v22, v18, v19, v21);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133890, &unk_23B5192C8);
  v25 = sub_23B46A690();
  sub_23B41F398(v64, v19, v24, v25);
  (*(v20 + 8))(v23, v19);
  v54 = v8;
  v55 = v64;
  v26 = v42;
  v56 = v42;
  v57 = v43;
  v27 = v41;
  v58 = v44;
  v59 = v41;
  sub_23B50B184();
  sub_23B50B0C4();
  v28 = *v40;
  v60 = v14;
  v61 = v15;
  v62 = v16;
  v63 = v17;
  v29 = type metadata accessor for DailyWeatherStatisticsQuery(0, &v60);
  (*(*(v29 - 8) + 16))(v45, v28, v29);
  v30 = ((*(v47 + 80) + 16) & ~*(v47 + 80)) + v46;
  v31 = swift_allocObject();
  sub_23B3AF918();
  *(v31 + v30) = v48;
  v32 = v31 + (v30 & 0xFFFFFFFFFFFFFFF8);
  v34 = v49;
  v33 = v50;
  *(v32 + 8) = v49;
  *(v32 + 16) = v33;

  v35 = sub_23B50B034();
  sub_23B50B074();

  v36 = swift_allocObject();
  v36[2] = v26;
  v36[3] = v34;
  v36[4] = v33;

  v37 = v26;
  v38 = sub_23B50B034();
  sub_23B50B084();

  return (*(v52 + 8))(v27, v53);
}

void WeatherService.fetchDailyStatistics<each A>(for:start:end:shouldFilterOutLeapDay:including:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_21();
  a19 = v32;
  a20 = v34;
  v36 = v35;
  v106 = v37;
  v108 = v25;
  v109 = v33;
  v101 = *v25;
  v102 = a23;
  v103 = v38;
  v104 = v39;
  v110 = a22;
  v111 = a24;
  v112 = a21;
  v100 = v40;
  v114 = a23 & 0xFFFFFFFFFFFFFFFELL;
  v99[2] = v41;
  v99[0] = v42;
  if (v35 == 1)
  {
    OUTLINED_FUNCTION_32_5();
    OUTLINED_FUNCTION_176_0();
    v44 = OUTLINED_FUNCTION_7_32(v43);
    TupleTypeMetadata = type metadata accessor for DailyWeatherStatisticsQuery(v44, v45);
  }

  else
  {
    v25 = v99;
    MEMORY[0x28223BE20](v33);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_174();
    OUTLINED_FUNCTION_295();
    while (v36 != v26)
    {
      OUTLINED_FUNCTION_294();
      OUTLINED_FUNCTION_13_15(v47);
      v49 = type metadata accessor for DailyWeatherStatisticsQuery(255, v48);
      OUTLINED_FUNCTION_293(v49);
    }

    OUTLINED_FUNCTION_58_1();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v105 = TupleTypeMetadata;
  OUTLINED_FUNCTION_5();
  v99[3] = v50;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_28_6();
  v113 = v52;
  OUTLINED_FUNCTION_24_0();
  sub_23B50C964();
  OUTLINED_FUNCTION_73_1(v99);
  v54 = OUTLINED_FUNCTION_2_0(v53, &a16);
  v99[4] = v55;
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_6_0();
  v57 = OUTLINED_FUNCTION_182_0(v56);
  v115 = MEMORY[0x277D84F90];
  v107 = v36;
  if (v36)
  {
    OUTLINED_FUNCTION_163_0();
    do
    {
      v58 = *v29++;
      v24 += 8;
      v27 += 8;
      v30 += 8;
      ++v26;
      v59 = OUTLINED_FUNCTION_7_32(v58);
      v36 = type metadata accessor for DailyWeatherStatisticsQuery(v59, v60);
      OUTLINED_FUNCTION_289(v36, v61, v62, v63, v64, v65, v66, v67, v99[0]);
      OUTLINED_FUNCTION_5();
      v69 = v68;
      OUTLINED_FUNCTION_2_1();
      MEMORY[0x28223BE20](v70);
      OUTLINED_FUNCTION_21_1();
      OUTLINED_FUNCTION_86_0();
      OUTLINED_FUNCTION_200_0();
      v71();
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133890, &unk_23B5192C8);
      sub_23B46A690();
      v73 = OUTLINED_FUNCTION_281();
      sub_23B41F398(v73, v36, v72, v74);
      v75 = *(v69 + 8);
      v31 = (v69 + 8);
      v75(v25, v36);
      OUTLINED_FUNCTION_212();
    }

    while (!v76);
  }

  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_46_2();
  OUTLINED_FUNCTION_221_0(v77);
  OUTLINED_FUNCTION_140_0(v78);
  v79 = sub_23B50B184();
  v81 = OUTLINED_FUNCTION_302(v79, v80, v79);
  OUTLINED_FUNCTION_218_0(v81);
  if (v36)
  {
    OUTLINED_FUNCTION_122_0();
    v82 = v36;
    do
    {
      if (v36 == 1)
      {
        v83 = 0;
      }

      else
      {
        v83 = *v28;
      }

      OUTLINED_FUNCTION_83_1();
      v84 = *v31++;
      v86 = OUTLINED_FUNCTION_7_32(v85);
      type metadata accessor for DailyWeatherStatisticsQuery(v86, v87);
      OUTLINED_FUNCTION_2();
      (*(v88 + 16))(v113 + v83, v84);
      v28 += 4;
      v114 = v25;
      --v82;
    }

    while (v82);
  }

  OUTLINED_FUNCTION_124_0();
  v89 = swift_allocObject();
  v26[3] = OUTLINED_FUNCTION_110_0(v89);
  OUTLINED_FUNCTION_171_0();
  v26[4] = swift_allocateWitnessTablePack();
  OUTLINED_FUNCTION_243();
  v26[5] = swift_allocateWitnessTablePack();
  OUTLINED_FUNCTION_99_0();
  WitnessTablePack = swift_allocateWitnessTablePack();
  v91 = OUTLINED_FUNCTION_81_1(WitnessTablePack);
  v92(v91);
  OUTLINED_FUNCTION_178_0();
  v93 = sub_23B50B034();
  OUTLINED_FUNCTION_90_0(v93);
  OUTLINED_FUNCTION_305();

  OUTLINED_FUNCTION_242_0();
  v94 = swift_allocObject();
  v26[3] = OUTLINED_FUNCTION_110_0(v94);
  OUTLINED_FUNCTION_171_0();
  v26[4] = swift_allocateWitnessTablePack();
  OUTLINED_FUNCTION_243();
  v26[5] = swift_allocateWitnessTablePack();
  OUTLINED_FUNCTION_99_0();
  v95 = swift_allocateWitnessTablePack();
  OUTLINED_FUNCTION_181_0(v95);
  v96 = v25;
  v97 = sub_23B50B034();
  OUTLINED_FUNCTION_198_0(v97);

  OUTLINED_FUNCTION_56_1();
  OUTLINED_FUNCTION_194_0();
  v98();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_20();
}

unint64_t sub_23B46A690()
{
  result = qword_27E133898;
  if (!qword_27E133898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133890, &unk_23B5192C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133898);
  }

  return result;
}

uint64_t sub_23B46A720(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, void (*a5)(uint64_t), uint64_t a6)
{
  v34 = a2;
  v28 = a6;
  v29 = a5;
  v33 = a4;
  v31 = a3;
  v32 = a1;
  v37 = sub_23B50B184();
  v6 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133920, &qword_23B5194B8);
  MEMORY[0x28223BE20](v26);
  v27 = &v26 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132280, &qword_23B510278);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v26 - v11;
  v13 = type metadata accessor for DayPrecipitationStatistics(0);
  v14 = sub_23B4778AC(&qword_280B42180, type metadata accessor for DayPrecipitationStatistics, &protocol conformance descriptor for DayPrecipitationStatistics);
  v15 = sub_23B4778AC(qword_280B42190, type metadata accessor for DayPrecipitationStatistics, &protocol conformance descriptor for DayPrecipitationStatistics);
  v16 = sub_23B4778AC(&qword_280B42188, type metadata accessor for DayPrecipitationStatistics, &protocol conformance descriptor for DayPrecipitationStatistics);
  v17 = OBJC_IVAR____TtC10WeatherKit14WeatherService_modelFactory;
  v36[0] = v13;
  v36[1] = v14;
  v36[2] = v15;
  v36[3] = v16;
  v18 = type metadata accessor for DailyWeatherStatisticsQuery(0, v36);
  v30 = &v26;
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v26 - v21;
  (*(v19 + 16))(&v26 - v21, v31, v18, v20);
  sub_23B50B154();
  v23 = v35;
  sub_23B41F478(v8, *(v34 + v17), v18);
  (*(v6 + 8))(v8, v37);
  if (v23)
  {
    return (*(v19 + 8))(v22, v18);
  }

  (*(v19 + 8))(v22, v18);
  v25 = v27;
  sub_23B3A23E0();
  swift_storeEnumTagMultiPayload();
  v29(v25);
  sub_23B398890(v25, &qword_27E133920, &qword_23B5194B8);
  return sub_23B398890(v12, &qword_27E132280, &qword_23B510278);
}

uint64_t sub_23B46AAF4(uint64_t a1, uint64_t a2, int *a3, int a4, void (*a5)(char *), uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a8;
  v102 = a4;
  v100 = a1;
  v101 = a2;
  v12 = a11;
  v13 = (a10 & 0xFFFFFFFFFFFFFFFELL);
  v14 = 8 * a7;
  v114 = a7;
  v106 = a3;
  v90 = a5;
  v89 = a6;
  if (a7 == 1)
  {
    v15 = a3;
    v16 = *(a9 & 0xFFFFFFFFFFFFFFFELL);
    v17 = *v13;
    v18 = *(a11 & 0xFFFFFFFFFFFFFFFELL);
    v110 = *(a8 & 0xFFFFFFFFFFFFFFFELL);
    v111 = v16;
    v112 = v17;
    v113 = v18;
    v19 = 1;
    type metadata accessor for DailyWeatherStatistics(255, &v110);
    TupleTypeMetadata = swift_checkMetadataState();
  }

  else
  {
    v107 = &v85;
    MEMORY[0x28223BE20](a1);
    v22 = 0;
    v109 = v11;
    while (v21 != v22)
    {
      v23 = *((a9 & 0xFFFFFFFFFFFFFFFELL) + 8 * v22);
      v24 = v13[v22];
      v25 = *((a11 & 0xFFFFFFFFFFFFFFFELL) + 8 * v22);
      v110 = *((v11 & 0xFFFFFFFFFFFFFFFELL) + 8 * v22);
      v111 = v23;
      v112 = v24;
      v113 = v25;
      v26 = type metadata accessor for DailyWeatherStatistics(255, &v110);
      v21 = v114;
      *(&v85 + 8 * v22++ - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0)) = v26;
    }

    v19 = v21;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v15 = v106;
    v12 = a11;
    v11 = v109;
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v27 = sub_23B50D954();
  v94 = &v85;
  v88 = v27;
  v87 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v86 = &v85 - v28;
  v29 = sub_23B50B184();
  v93 = &v85;
  v97 = v29;
  v105 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v99 = &v85 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = &v85;
  v95 = TupleTypeMetadata;
  v85 = *(TupleTypeMetadata - 8);
  MEMORY[0x28223BE20](v31);
  v107 = &v85 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = &v85;
  v35 = MEMORY[0x28223BE20](v33);
  v109 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = (v11 & 0xFFFFFFFFFFFFFFFELL);
  v37 = (a9 & 0xFFFFFFFFFFFFFFFELL);
  v38 = (v12 & 0xFFFFFFFFFFFFFFFELL);
  v39 = a10 & 0xFFFFFFFFFFFFFFFELL;
  v40 = v19;
  if (v19)
  {
    v41 = 0;
    do
    {
      if (v40 == 1)
      {
        v42 = *v37;
        v43 = *v13;
        v44 = *v38;
        v110 = *v36;
        v111 = v42;
        v112 = v43;
        v113 = v44;
        v45 = 1;
        v34 = type metadata accessor for DailyWeatherStatisticsQuery(0, &v110);
        v46 = 0;
      }

      else
      {
        MEMORY[0x28223BE20](v34);
        for (i = 0; v47 != i; ++i)
        {
          v49 = v37[i];
          v50 = *(v39 + 8 * i);
          v51 = v38[i];
          v110 = v36[i];
          v111 = v49;
          v112 = v50;
          v113 = v51;
          v52 = type metadata accessor for DailyWeatherStatisticsQuery(255, &v110);
          v47 = v114;
          *(&v85 + 8 * i - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0)) = v52;
        }

        v45 = v47;
        v34 = swift_getTupleTypeMetadata();
        v46 = *(v34 + 16 * v41 + 32);
        v13 = (a10 & 0xFFFFFFFFFFFFFFFELL);
        v15 = v106;
      }

      *&v109[8 * v41++] = v15 + v46;
      v40 = v45;
    }

    while (v41 != v45);
  }

  v53 = 0;
  v98 = OBJC_IVAR____TtC10WeatherKit14WeatherService_modelFactory;
  v96 = (v105 + 8);
  v54 = (v95 + 16);
  while (1)
  {
    v55 = v107;
    if (v40 == v53)
    {
      v67 = v85;
      v68 = v86;
      v69 = v95;
      (*(v85 + 16))(v86, v107, v95, v35);
      v70 = v88;
      swift_storeEnumTagMultiPayload();
      v90(v68);
      (*(v87 + 8))(v68, v70);
      return (*(v67 + 8))(v55, v69);
    }

    v106 = v54;
    v103 = v40 == 1 ? 0 : v54[4];
    v56 = v37[v53];
    v57 = v13[v53];
    v58 = v38[v53];
    v59 = *&v109[8 * v53];
    v110 = v36[v53];
    v111 = v56;
    v112 = v57;
    v113 = v58;
    v105 = v53;
    v60 = type metadata accessor for DailyWeatherStatisticsQuery(0, &v110);
    v104 = &v85;
    v61 = *(v60 - 8);
    v62 = MEMORY[0x28223BE20](v60);
    v64 = &v85 - v63;
    (*(v61 + 16))(&v85 - v63, v59, v60, v62);
    v65 = v99;
    sub_23B50B154();
    v66 = v108;
    sub_23B41F478(v65, *(v101 + v98), v60);
    v108 = v66;
    if (v66)
    {
      break;
    }

    (*v96)(v65, v97);
    (*(v61 + 8))(v64, v60);
    v53 = v105 + 1;
    v54 = v106 + 4;
    v13 = (a10 & 0xFFFFFFFFFFFFFFFELL);
    v40 = v114;
  }

  (*v96)(v65, v97);
  result = (*(v61 + 8))(v64, v60);
  v72 = v105;
  v74 = v106;
  v73 = v107;
  if (v105)
  {
    v75 = v36 - 1;
    v76 = v37 - 1;
    v77 = v39 - 8;
    do
    {
      v78 = v72 - 1;
      v79 = v75[v72];
      v80 = v76[v72];
      v81 = *(v77 + 8 * v72);
      v82 = v38[v72 - 1];
      v83 = *v74;
      v74 -= 4;
      v110 = v79;
      v111 = v80;
      v112 = v81;
      v113 = v82;
      v84 = type metadata accessor for DailyWeatherStatistics(0, &v110);
      result = (*(*(v84 - 8) + 8))(&v73[v83], v84);
      v72 = v78;
    }

    while (v78);
  }

  return result;
}

uint64_t sub_23B46B2FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9, uint64_t a10)
{
  v51 = a8;
  v67 = a7;
  v66 = a6;
  v60 = a5;
  v59 = a4;
  v58 = a3;
  v57 = a2;
  v75 = a1;
  v69 = a10;
  v68 = a9;
  v72 = *v10;
  v64 = sub_23B50AEF4();
  v74 = *(v64 - 8);
  v65 = *(v74 + 64);
  MEMORY[0x28223BE20](v64);
  v63 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_23B50AD24();
  v73 = *(v61 - 8);
  v62 = *(v73 + 64);
  MEMORY[0x28223BE20](v61);
  v56 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1331D0, &qword_23B5168C8);
  v55 = *(v14 - 8);
  v54 = *(v55 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v52 = &v51 - v15;
  v71 = sub_23B50C964();
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v17;
  sub_23B50C954();
  v89 = MEMORY[0x277D84F90];
  v18 = type metadata accessor for DayPrecipitationSummary(0);
  v19 = sub_23B4778AC(&qword_280B422D8, type metadata accessor for DayPrecipitationSummary, &protocol conformance descriptor for DayPrecipitationSummary);
  v20 = sub_23B4778AC(&qword_280B422E8, type metadata accessor for DayPrecipitationSummary, &protocol conformance descriptor for DayPrecipitationSummary);
  v21 = sub_23B4778AC(&qword_280B422E0, type metadata accessor for DayPrecipitationSummary, &protocol conformance descriptor for DayPrecipitationSummary);
  v22 = *a8;
  v85 = v18;
  v86 = v19;
  v87 = v20;
  v88 = v21;
  v23 = type metadata accessor for DailyWeatherSummaryQuery(0, &v85);
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v51 - v26;
  (*(v24 + 16))(&v51 - v26, v22, v23, v25);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133890, &unk_23B5192C8);
  v29 = sub_23B46A690();
  sub_23B4430B0(&v89, v23, v28, v29);
  (*(v24 + 8))(v27, v23);
  v77 = v76;
  v78 = &v89;
  v79 = v75;
  v80 = v57;
  v81 = v58;
  v82 = v59;
  v83 = v60;
  v84 = v17;
  sub_23B50BE64();
  v60 = sub_23B50B0C4();
  v30 = *v51;
  v85 = v18;
  v86 = v19;
  v87 = v20;
  v88 = v21;
  v31 = type metadata accessor for DailyWeatherSummaryQuery(0, &v85);
  (*(*(v31 - 8) + 16))(v52, v30, v31);
  v32 = v73;
  v33 = v56;
  v34 = v61;
  (*(v73 + 16))(v56, v66, v61);
  v35 = v74;
  v36 = v63;
  v37 = v64;
  (*(v74 + 16))(v63, v67, v64);
  v38 = (v54 + *(v32 + 80) + ((*(v55 + 80) + 16) & ~*(v55 + 80))) & ~*(v32 + 80);
  v39 = (v62 + *(v35 + 80) + v38) & ~*(v35 + 80);
  v40 = (v65 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  sub_23B3AF918();
  (*(v73 + 32))(v41 + v38, v33, v34);
  (*(v74 + 32))(v41 + v39, v36, v37);
  v42 = (v41 + v40);
  v43 = v68;
  v44 = v69;
  *v42 = v68;
  v42[1] = v44;

  v45 = sub_23B50B034();
  sub_23B50B074();

  v46 = swift_allocObject();
  v47 = v75;
  v46[2] = v75;
  v46[3] = v43;
  v46[4] = v44;

  v48 = v47;
  v49 = sub_23B50B034();
  sub_23B50B084();

  return (*(v70 + 8))(v53, v71);
}

void WeatherService.fetchDailySummary<each A>(for:start:end:startDate:timeZone:including:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_21();
  a19 = v28;
  a20 = v29;
  v30 = v27;
  v147 = v31;
  v33 = v32;
  v35 = v34;
  v134 = v36;
  v133 = v37;
  v132 = v38;
  v131 = v39;
  v156 = v40;
  v42 = a26;
  v41 = a27;
  v43 = a24;
  v44 = a25;
  v45 = a23;
  v154 = v30;
  v46 = *v30;
  v153 = sub_23B50AEF4();
  OUTLINED_FUNCTION_5();
  v143 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v50);
  v152 = &v128 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_24_0();
  v151 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v140 = v51;
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_28_6();
  v150 = v54;
  v157 = v41;
  v158 = v43;
  v155 = v42;
  v159 = v44;
  v144 = v46;
  v139 = v33;
  v138 = v35;
  v137 = v49;
  v146 = v42 & 0xFFFFFFFFFFFFFFFELL;
  if (v45 == 1)
  {
    v55 = OUTLINED_FUNCTION_7_32(*(v43 & 0xFFFFFFFFFFFFFFFELL));
    type metadata accessor for DailyWeatherSummaryQuery(v55, v56);
    v57 = 1;
  }

  else
  {
    v35 = &v128;
    MEMORY[0x28223BE20](v53);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_174();
    v57 = v45;
    while (v45)
    {
      OUTLINED_FUNCTION_294();
      OUTLINED_FUNCTION_13_15(v58);
      v60 = type metadata accessor for DailyWeatherSummaryQuery(255, v59);
      OUTLINED_FUNCTION_293(v60);
    }

    OUTLINED_FUNCTION_84_0();
    OUTLINED_FUNCTION_58_1();
    swift_getTupleTypeMetadata();
  }

  OUTLINED_FUNCTION_100(&v128);
  v62 = OUTLINED_FUNCTION_2_0(v61, &a18);
  v135 = v63;
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_28_6();
  v160 = v64;
  OUTLINED_FUNCTION_24_0();
  sub_23B50C964();
  OUTLINED_FUNCTION_113_0(&v128);
  v66 = OUTLINED_FUNCTION_2_0(v65, &a13);
  v141 = v67;
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_6_0();
  v149 = v68;
  v69 = sub_23B50C954();
  v162 = MEMORY[0x277D84F90];
  v148 = v57;
  if (v57)
  {
    v70 = (v158 & 0xFFFFFFFFFFFFFFFELL);
    v71 = v159 & 0xFFFFFFFFFFFFFFFELL;
    v72 = v157 & 0xFFFFFFFFFFFFFFFELL;
    v73 = v146;
    v74 = v147;
    v75 = v148;
    do
    {
      v76 = *v70++;
      v71 += 8;
      v73 += 8;
      v72 += 8;
      ++v74;
      v77 = OUTLINED_FUNCTION_7_32(v76);
      v79 = type metadata accessor for DailyWeatherSummaryQuery(v77, v78);
      v161 = &v128;
      OUTLINED_FUNCTION_5();
      v81 = v80;
      OUTLINED_FUNCTION_2_1();
      MEMORY[0x28223BE20](v82);
      OUTLINED_FUNCTION_21_1();
      OUTLINED_FUNCTION_153_0();
      v83 = OUTLINED_FUNCTION_25_4();
      v84(v83);
      v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133890, &unk_23B5192C8);
      sub_23B46A690();
      v86 = OUTLINED_FUNCTION_281();
      sub_23B4430B0(v86, v79, v85, v87);
      v69 = (*(v81 + 8))(v35, v79);
      --v75;
    }

    while (v75);
  }

  v161 = a22;
  v129 = a21;
  MEMORY[0x28223BE20](v69);
  *(&v128 - 8) = v154;
  *(&v128 - 7) = &v162;
  v88 = v131;
  *(&v128 - 6) = v156;
  *(&v128 - 5) = v88;
  OUTLINED_FUNCTION_221_0(&v128);
  v89 = v149;
  *(v90 - 16) = v134;
  *(v90 - 8) = v89;
  v91 = sub_23B50BE64();
  v134 = OUTLINED_FUNCTION_302(v91, v92, v91);
  v93 = v147;
  v94 = v148;
  v95 = v146;
  if (v148)
  {
    v96 = (v158 & 0xFFFFFFFFFFFFFFFELL);
    v97 = v159 & 0xFFFFFFFFFFFFFFFELL;
    v98 = v157 & 0xFFFFFFFFFFFFFFFELL;
    v99 = (v145 + 32);
    v100 = v148;
    do
    {
      if (v94 == 1)
      {
        v101 = 0;
      }

      else
      {
        v101 = *v99;
      }

      v103 = *v96++;
      v102 = v103;
      v97 += 8;
      v95 += 8;
      v98 += 8;
      v104 = *v93++;
      v105 = OUTLINED_FUNCTION_7_32(v102);
      type metadata accessor for DailyWeatherSummaryQuery(v105, v106);
      OUTLINED_FUNCTION_2();
      (*(v107 + 16))(v160 + v101, v104);
      v99 += 4;
      --v100;
    }

    while (v100);
  }

  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_276();
  v108();
  OUTLINED_FUNCTION_44_3();
  v109(v152, v139, v153);
  v110 = v135;
  v111 = (*(v135 + 80) + 56) & ~*(v135 + 80);
  v112 = v94;
  v113 = (v130 + *(v95 + 80) + v111) & ~*(v95 + 80);
  v114 = (v136 + *(v93 + 80) + v113) & ~*(v93 + 80);
  OUTLINED_FUNCTION_208_0();
  v116 = v115 & 0xFFFFFFFFFFFFFFF8;
  v117 = swift_allocObject();
  *(v117 + 2) = v112;
  *(v117 + 3) = swift_allocateMetadataPack();
  *(v117 + 4) = swift_allocateWitnessTablePack();
  *(v117 + 5) = swift_allocateWitnessTablePack();
  OUTLINED_FUNCTION_175();
  *(v117 + 6) = swift_allocateWitnessTablePack();
  (*(v110 + 32))(&v117[v111], v160, v145);
  (*(v95 + 32))(&v117[v113], v150, v151);
  (v93[4])(&v117[v114], v152, v153);
  v118 = &v117[v116];
  v119 = v129;
  v120 = v161;
  *v118 = v129;
  v118[1] = v120;

  v121 = sub_23B50B034();
  OUTLINED_FUNCTION_152_0();
  sub_23B50B074();
  OUTLINED_FUNCTION_305();

  OUTLINED_FUNCTION_242_0();
  v122 = swift_allocObject();
  v122[2] = v112;
  v122[3] = swift_allocateMetadataPack();
  v122[4] = swift_allocateWitnessTablePack();
  v122[5] = swift_allocateWitnessTablePack();
  OUTLINED_FUNCTION_175();
  WitnessTablePack = swift_allocateWitnessTablePack();
  v124 = v156;
  v122[6] = WitnessTablePack;
  v122[7] = v124;
  v122[8] = v119;
  v122[9] = v120;

  v125 = v124;
  v126 = sub_23B50B034();
  OUTLINED_FUNCTION_198_0(v126);

  OUTLINED_FUNCTION_56_1();
  v127(v149, v142);
  OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_175_0();
  OUTLINED_FUNCTION_20();
}

uint64_t sub_23B46C2B0(void *a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);

  [a3 coordinate];
  v9 = sub_23B50B6E4();

  return v9;
}

uint64_t sub_23B46C38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *), uint64_t a7)
{
  v26[1] = a7;
  v27 = a6;
  v29 = a4;
  v30 = a5;
  v28 = a1;
  v26[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338F8, &qword_23B519470);
  MEMORY[0x28223BE20](v26[0]);
  v10 = v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132250, &unk_23B5164B0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v26 - v12;
  v14 = type metadata accessor for DayPrecipitationSummary(0);
  v15 = sub_23B4778AC(&qword_280B422D8, type metadata accessor for DayPrecipitationSummary, &protocol conformance descriptor for DayPrecipitationSummary);
  v16 = sub_23B4778AC(&qword_280B422E8, type metadata accessor for DayPrecipitationSummary, &protocol conformance descriptor for DayPrecipitationSummary);
  v17 = sub_23B4778AC(&qword_280B422E0, type metadata accessor for DayPrecipitationSummary, &protocol conformance descriptor for DayPrecipitationSummary);
  v18 = OBJC_IVAR____TtC10WeatherKit14WeatherService_modelFactory;
  v31[0] = v14;
  v31[1] = v15;
  v31[2] = v16;
  v31[3] = v17;
  v19 = type metadata accessor for DailyWeatherSummaryQuery(0, v31);
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = v26 - v22;
  (*(v20 + 16))(v26 - v22, a3, v19, v21);
  v24 = v31[5];
  sub_23B44317C(v28, *(a2 + v18), v29, v30, v19, v13);
  if (v24)
  {
    return (*(v20 + 8))(v23, v19);
  }

  (*(v20 + 8))(v23, v19);
  sub_23B3A23E0();
  swift_storeEnumTagMultiPayload();
  v27(v10);
  sub_23B398890(v10, &qword_27E1338F8, &qword_23B519470);
  return sub_23B398890(v13, &qword_27E132250, &unk_23B5164B0);
}

uint64_t sub_23B46C69C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, void (*a6)(char *), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  v85 = a4;
  v86 = a5;
  v83 = a1;
  v84 = a2;
  v14 = a10;
  v15 = a12;
  v16 = (a11 & 0xFFFFFFFFFFFFFFFELL);
  v17 = 8 * a8;
  v76 = a7;
  v77 = a6;
  if (a8 == 1)
  {
    v18 = *(a10 & 0xFFFFFFFFFFFFFFFELL);
    v19 = *v16;
    v20 = *(a12 & 0xFFFFFFFFFFFFFFFELL);
    v93 = *(a9 & 0xFFFFFFFFFFFFFFFELL);
    v94 = v18;
    v95 = v19;
    v96 = v20;
    type metadata accessor for DailyWeatherSummary(255, &v93);
    TupleTypeMetadata = swift_checkMetadataState();
  }

  else
  {
    v88 = &v72;
    MEMORY[0x28223BE20](a1);
    v22 = 0;
    v89 = a10;
    v97 = a12;
    while (a8 != v22)
    {
      v23 = *((a10 & 0xFFFFFFFFFFFFFFFELL) + 8 * v22);
      v24 = v16[v22];
      v25 = *((a12 & 0xFFFFFFFFFFFFFFFELL) + 8 * v22);
      v93 = *((a9 & 0xFFFFFFFFFFFFFFFELL) + 8 * v22);
      v94 = v23;
      v95 = v24;
      v96 = v25;
      *(&v72 + 8 * v22++ - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0)) = type metadata accessor for DailyWeatherSummary(255, &v93);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v14 = v89;
    v17 = v91;
    v15 = v97;
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v26 = sub_23B50D954();
  v80 = &v72;
  v75 = v26;
  v74 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v73 = &v72 - v27;
  v79 = &v72;
  v81 = TupleTypeMetadata;
  v72 = *(TupleTypeMetadata - 8);
  MEMORY[0x28223BE20](v28);
  v87 = &v72 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = &v72;
  v32 = MEMORY[0x28223BE20](v30);
  v97 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = (a9 & 0xFFFFFFFFFFFFFFFELL);
  v34 = (v14 & 0xFFFFFFFFFFFFFFFELL);
  v35 = (v15 & 0xFFFFFFFFFFFFFFFELL);
  if (a8)
  {
    v36 = 0;
    v90 = a3;
    do
    {
      if (a8 == 1)
      {
        v37 = *v34;
        v38 = *v16;
        v39 = *v35;
        v93 = *v33;
        v94 = v37;
        v95 = v38;
        v96 = v39;
        v31 = type metadata accessor for DailyWeatherSummaryQuery(0, &v93);
        v40 = 0;
      }

      else
      {
        MEMORY[0x28223BE20](v31);
        v41 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
        for (i = 0; a8 != i; ++i)
        {
          v43 = v34[i];
          v44 = v16[i];
          v45 = v35[i];
          v93 = v33[i];
          v94 = v43;
          v95 = v44;
          v96 = v45;
          *&v41[8 * i] = type metadata accessor for DailyWeatherSummaryQuery(255, &v93);
        }

        v31 = swift_getTupleTypeMetadata();
        v40 = *(v31 + 16 * v36 + 32);
        a3 = v90;
        v17 = v91;
      }

      *&v97[8 * v36++] = a3 + v40;
    }

    while (v36 != a8);
  }

  v46 = 0;
  v82 = OBJC_IVAR____TtC10WeatherKit14WeatherService_modelFactory;
  for (j = v81; ; j = v91)
  {
    v48 = j + 4;
    if (a8 == v46)
    {
      v59 = v72;
      v60 = v73;
      v61 = v87;
      v62 = v81;
      (*(v72 + 16))(v73, v87, v81, v32);
      v63 = v75;
      swift_storeEnumTagMultiPayload();
      v77(v60);
      (*(v74 + 8))(v60, v63);
      return (*(v59 + 8))(v61, v62);
    }

    v91 = v48;
    v89 = a8 == 1 ? 0 : v48[4];
    v49 = v33[v46];
    v50 = v34[v46];
    v51 = v16[v46];
    v52 = v35[v46];
    v88 = *&v97[8 * v46];
    v93 = v49;
    v94 = v50;
    v95 = v51;
    v96 = v52;
    v53 = type metadata accessor for DailyWeatherSummaryQuery(0, &v93);
    v90 = &v72;
    v54 = *(v53 - 8);
    v55 = MEMORY[0x28223BE20](v53);
    v57 = &v72 - v56;
    (*(v54 + 16))(&v72 - v56, v88, v53, v55);
    v58 = v92;
    sub_23B44317C(v83, *(v84 + v82), v85, v86, v53, &v87[v89]);
    v92 = v58;
    if (v58)
    {
      break;
    }

    (*(v54 + 8))(v57, v53);
    ++v46;
  }

  result = (*(v54 + 8))(v57, v53);
  v65 = v91;
  if (v46)
  {
    v66 = v33 - 1;
    do
    {
      v67 = v34[v46 - 1];
      v68 = v16[v46 - 1];
      v69 = v35[v46 - 1];
      v70 = *v65;
      v65 -= 4;
      v93 = v66[v46];
      v94 = v67;
      v95 = v68;
      v96 = v69;
      v71 = type metadata accessor for DailyWeatherSummary(0, &v93);
      result = (*(*(v71 - 8) + 8))(&v87[v70], v71);
      --v46;
    }

    while (v46);
  }

  return result;
}

uint64_t sub_23B46CD0C(uint64_t a1)
{
  v2 = v1[2];
  v27 = v1[5];
  v28 = v1[3];
  v26 = v1[4];
  if (v2 == 1)
  {
    OUTLINED_FUNCTION_54_1(*(v1[3] & 0xFFFFFFFFFFFFFFFELL));
    v4 = v3;
    TupleTypeMetadata = type metadata accessor for DailyWeatherSummaryQuery(0, v5);
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    OUTLINED_FUNCTION_27();
    v9 = v8 - v7;
    v10 = 0;
    v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
    v25 = v13;
    while (v2 != v10)
    {
      OUTLINED_FUNCTION_54_1(*(v12 + 8 * v10));
      *(v9 + 8 * v10++) = type metadata accessor for DailyWeatherSummaryQuery(255, v14);
    }

    OUTLINED_FUNCTION_69_2();
    OUTLINED_FUNCTION_74_1();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v4 = v25;
  }

  OUTLINED_FUNCTION_28_0(TupleTypeMetadata);
  v15 = sub_23B50AD24();
  OUTLINED_FUNCTION_28_0(v15);
  v16 = sub_23B50AEF4();
  OUTLINED_FUNCTION_28_0(v16);
  OUTLINED_FUNCTION_43_5();
  v17 = OUTLINED_FUNCTION_175();
  return sub_23B46C69C(v17, v18, v19, v20, v21, v22, v23, v2, v28, v26, v27, v4);
}

void sub_23B46CF6C()
{
  OUTLINED_FUNCTION_21();
  v28 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_301(v10, v11, v8, v12, v6, v4);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_47_2();
  if (qword_280B43440 != -1)
  {
    OUTLINED_FUNCTION_0_1(&qword_280B43440);
  }

  v14 = sub_23B50CDF4();
  __swift_project_value_buffer(v14, qword_280B4E9D8);
  v15 = v0;
  v16 = v1;
  v17 = sub_23B50CDD4();
  v18 = sub_23B50D4B4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = OUTLINED_FUNCTION_42_0();
    v26 = OUTLINED_FUNCTION_303();
    v27 = OUTLINED_FUNCTION_42_0();
    v29 = v27;
    OUTLINED_FUNCTION_191_0(7.2226e-34);
    *(v19 + 14) = v15;
    *v26 = v15;
    OUTLINED_FUNCTION_252_0();
    v25 = v17;
    v20 = v15;
    v21 = sub_23B50D874();
    v23 = sub_23B391F1C(v21, v22, &v29);

    *(v19 + 24) = v23;
    v17 = v25;
    _os_log_impl(&dword_23B38D000, v25, v18, v28, v19, 0x20u);
    sub_23B398890(v26, &qword_27E132D80, &qword_23B5192E0);
    OUTLINED_FUNCTION_38();
    __swift_destroy_boxed_opaque_existential_1(v27);
    OUTLINED_FUNCTION_109_0();
    OUTLINED_FUNCTION_38();
  }

  *v2 = v1;
  swift_storeEnumTagMultiPayload();
  v24 = v1;
  v9(v2);
  sub_23B398890(v2, v7, v5);
  OUTLINED_FUNCTION_20();
}

void sub_23B46D198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t (*a22)(uint64_t), const char *a23)
{
  OUTLINED_FUNCTION_21();
  v55 = v27;
  v28 = v25;
  v29 = v24;
  v31 = (v30 & 0xFFFFFFFFFFFFFFFELL);
  if (v26 == 1)
  {
    OUTLINED_FUNCTION_176_0();
    OUTLINED_FUNCTION_26_12(v32);
    a22(255);
    swift_checkMetadataState();
  }

  else
  {
    v33 = v26;
    v54 = v25;
    v34 = v24;
    MEMORY[0x28223BE20](v24);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_35_3();
    v35 = 0;
    v37 = v36 & 0xFFFFFFFFFFFFFFFELL;
    while (v33 != v35)
    {
      OUTLINED_FUNCTION_26_12(*(v37 + 8 * v35));
      *(v23 + 8 * v35++) = a22(255);
    }

    OUTLINED_FUNCTION_74_1();
    swift_getTupleTypeMetadata();
    v29 = v34;
    v28 = v54;
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  OUTLINED_FUNCTION_63();
  sub_23B50D954();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_13();
  if (qword_280B43440 != -1)
  {
    OUTLINED_FUNCTION_0_1(&qword_280B43440);
  }

  v39 = sub_23B50CDF4();
  __swift_project_value_buffer(v39, qword_280B4E9D8);
  v40 = v28;
  v41 = v29;
  v42 = sub_23B50CDD4();
  v43 = sub_23B50D4B4();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = OUTLINED_FUNCTION_42_0();
    v52 = OUTLINED_FUNCTION_303();
    v53 = OUTLINED_FUNCTION_42_0();
    v56 = v53;
    *v44 = 141558531;
    *(v44 + 4) = 1752392040;
    *(v44 + 12) = 2113;
    *(v44 + 14) = v40;
    *v52 = v40;
    *(v44 + 22) = 2082;
    swift_getErrorValue();
    v45 = v40;
    v46 = sub_23B50D874();
    v48 = sub_23B391F1C(v46, v47, &v56);

    *(v44 + 24) = v48;
    _os_log_impl(&dword_23B38D000, v42, v43, a23, v44, 0x20u);
    sub_23B398890(v52, &qword_27E132D80, &qword_23B5192E0);
    OUTLINED_FUNCTION_109_0();
    __swift_destroy_boxed_opaque_existential_1(v53);
    OUTLINED_FUNCTION_109_0();
    OUTLINED_FUNCTION_38();
  }

  *v31 = v29;
  OUTLINED_FUNCTION_32();
  swift_storeEnumTagMultiPayload();
  v49 = v29;
  v55(v31);
  v50 = OUTLINED_FUNCTION_32();
  v51(v50);
  OUTLINED_FUNCTION_20();
}

uint64_t sub_23B46D518(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v49 = a6;
  v50 = a7;
  v40 = a5;
  v48 = a4;
  v44 = a3;
  v43 = a2;
  v42 = a1;
  v51 = *v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133928, &qword_23B5194C0);
  v47 = *(v10 - 8);
  v46 = *(v47 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v45 = &v40 - v11;
  v12 = sub_23B50C964();
  v52 = *(v12 - 8);
  v53 = v12;
  MEMORY[0x28223BE20](v12);
  v41 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B50C954();
  v64[0] = MEMORY[0x277D84F90];
  v14 = type metadata accessor for HourTemperatureStatistics(0);
  v15 = sub_23B4778AC(&qword_280B42228, type metadata accessor for HourTemperatureStatistics, &protocol conformance descriptor for HourTemperatureStatistics);
  v16 = sub_23B4778AC(qword_280B42238, type metadata accessor for HourTemperatureStatistics, &protocol conformance descriptor for HourTemperatureStatistics);
  v17 = sub_23B4778AC(&qword_280B42230, type metadata accessor for HourTemperatureStatistics, &protocol conformance descriptor for HourTemperatureStatistics);
  v18 = *a5;
  v60 = v14;
  v61 = v15;
  v62 = v16;
  v63 = v17;
  v19 = type metadata accessor for HourlyWeatherStatisticsQuery(0, &v60);
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v40 - v22;
  (*(v20 + 16))(&v40 - v22, v18, v19, v21);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133890, &unk_23B5192C8);
  v25 = sub_23B46A690();
  sub_23B4F1154(v64, v19, v24, v25);
  (*(v20 + 8))(v23, v19);
  v54 = v8;
  v55 = v64;
  v26 = v42;
  v56 = v42;
  v57 = v43;
  v27 = v41;
  v58 = v44;
  v59 = v41;
  sub_23B50B214();
  sub_23B50B0C4();
  v28 = *v40;
  v60 = v14;
  v61 = v15;
  v62 = v16;
  v63 = v17;
  v29 = type metadata accessor for HourlyWeatherStatisticsQuery(0, &v60);
  (*(*(v29 - 8) + 16))(v45, v28, v29);
  v30 = ((*(v47 + 80) + 16) & ~*(v47 + 80)) + v46;
  v31 = swift_allocObject();
  sub_23B3AF918();
  *(v31 + v30) = v48;
  v32 = v31 + (v30 & 0xFFFFFFFFFFFFFFF8);
  v34 = v49;
  v33 = v50;
  *(v32 + 8) = v49;
  *(v32 + 16) = v33;

  v35 = sub_23B50B034();
  sub_23B50B074();

  v36 = swift_allocObject();
  v36[2] = v26;
  v36[3] = v34;
  v36[4] = v33;

  v37 = v26;
  v38 = sub_23B50B034();
  sub_23B50B084();

  return (*(v52 + 8))(v27, v53);
}

void WeatherService.fetchHourlyStatistics<each A>(for:start:end:shouldFilterOutLeapDay:including:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_21();
  a19 = v32;
  a20 = v34;
  v36 = v35;
  v106 = v37;
  v108 = v25;
  v109 = v33;
  v101 = *v25;
  v102 = a23;
  v103 = v38;
  v104 = v39;
  v110 = a22;
  v111 = a24;
  v112 = a21;
  v100 = v40;
  v114 = a23 & 0xFFFFFFFFFFFFFFFELL;
  v99[2] = v41;
  v99[0] = v42;
  if (v35 == 1)
  {
    OUTLINED_FUNCTION_32_5();
    OUTLINED_FUNCTION_176_0();
    v44 = OUTLINED_FUNCTION_7_32(v43);
    TupleTypeMetadata = type metadata accessor for HourlyWeatherStatisticsQuery(v44, v45);
  }

  else
  {
    v25 = v99;
    MEMORY[0x28223BE20](v33);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_174();
    OUTLINED_FUNCTION_295();
    while (v36 != v26)
    {
      OUTLINED_FUNCTION_294();
      OUTLINED_FUNCTION_13_15(v47);
      v49 = type metadata accessor for HourlyWeatherStatisticsQuery(255, v48);
      OUTLINED_FUNCTION_293(v49);
    }

    OUTLINED_FUNCTION_58_1();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v105 = TupleTypeMetadata;
  OUTLINED_FUNCTION_5();
  v99[3] = v50;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_28_6();
  v113 = v52;
  OUTLINED_FUNCTION_24_0();
  sub_23B50C964();
  OUTLINED_FUNCTION_73_1(v99);
  v54 = OUTLINED_FUNCTION_2_0(v53, &a16);
  v99[4] = v55;
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_6_0();
  v57 = OUTLINED_FUNCTION_182_0(v56);
  v115 = MEMORY[0x277D84F90];
  v107 = v36;
  if (v36)
  {
    OUTLINED_FUNCTION_163_0();
    do
    {
      v58 = *v29++;
      v24 += 8;
      v27 += 8;
      v30 += 8;
      ++v26;
      v59 = OUTLINED_FUNCTION_7_32(v58);
      v36 = type metadata accessor for HourlyWeatherStatisticsQuery(v59, v60);
      OUTLINED_FUNCTION_289(v36, v61, v62, v63, v64, v65, v66, v67, v99[0]);
      OUTLINED_FUNCTION_5();
      v69 = v68;
      OUTLINED_FUNCTION_2_1();
      MEMORY[0x28223BE20](v70);
      OUTLINED_FUNCTION_21_1();
      OUTLINED_FUNCTION_86_0();
      OUTLINED_FUNCTION_200_0();
      v71();
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133890, &unk_23B5192C8);
      sub_23B46A690();
      v73 = OUTLINED_FUNCTION_281();
      sub_23B4F1154(v73, v36, v72, v74);
      v75 = *(v69 + 8);
      v31 = (v69 + 8);
      v75(v25, v36);
      OUTLINED_FUNCTION_212();
    }

    while (!v76);
  }

  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_46_2();
  OUTLINED_FUNCTION_221_0(v77);
  OUTLINED_FUNCTION_140_0(v78);
  v79 = sub_23B50B214();
  v81 = OUTLINED_FUNCTION_302(v79, v80, v79);
  OUTLINED_FUNCTION_218_0(v81);
  if (v36)
  {
    OUTLINED_FUNCTION_122_0();
    v82 = v36;
    do
    {
      if (v36 == 1)
      {
        v83 = 0;
      }

      else
      {
        v83 = *v28;
      }

      OUTLINED_FUNCTION_83_1();
      v84 = *v31++;
      v86 = OUTLINED_FUNCTION_7_32(v85);
      type metadata accessor for HourlyWeatherStatisticsQuery(v86, v87);
      OUTLINED_FUNCTION_2();
      (*(v88 + 16))(v113 + v83, v84);
      v28 += 4;
      v114 = v25;
      --v82;
    }

    while (v82);
  }

  OUTLINED_FUNCTION_124_0();
  v89 = swift_allocObject();
  v26[3] = OUTLINED_FUNCTION_110_0(v89);
  OUTLINED_FUNCTION_171_0();
  v26[4] = swift_allocateWitnessTablePack();
  OUTLINED_FUNCTION_243();
  v26[5] = swift_allocateWitnessTablePack();
  OUTLINED_FUNCTION_99_0();
  WitnessTablePack = swift_allocateWitnessTablePack();
  v91 = OUTLINED_FUNCTION_81_1(WitnessTablePack);
  v92(v91);
  OUTLINED_FUNCTION_178_0();
  v93 = sub_23B50B034();
  OUTLINED_FUNCTION_90_0(v93);
  OUTLINED_FUNCTION_305();

  OUTLINED_FUNCTION_242_0();
  v94 = swift_allocObject();
  v26[3] = OUTLINED_FUNCTION_110_0(v94);
  OUTLINED_FUNCTION_171_0();
  v26[4] = swift_allocateWitnessTablePack();
  OUTLINED_FUNCTION_243();
  v26[5] = swift_allocateWitnessTablePack();
  OUTLINED_FUNCTION_99_0();
  v95 = swift_allocateWitnessTablePack();
  OUTLINED_FUNCTION_181_0(v95);
  v96 = v25;
  v97 = sub_23B50B034();
  OUTLINED_FUNCTION_198_0(v97);

  OUTLINED_FUNCTION_56_1();
  OUTLINED_FUNCTION_194_0();
  v98();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_20();
}

uint64_t sub_23B46DF7C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, void (*a5)(uint64_t), uint64_t a6)
{
  v34 = a2;
  v28 = a6;
  v29 = a5;
  v33 = a4;
  v31 = a3;
  v32 = a1;
  v37 = sub_23B50B214();
  v6 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133938, &qword_23B5194E0);
  MEMORY[0x28223BE20](v26);
  v27 = &v26 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132240, &qword_23B510230);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v26 - v11;
  v13 = type metadata accessor for HourTemperatureStatistics(0);
  v14 = sub_23B4778AC(&qword_280B42228, type metadata accessor for HourTemperatureStatistics, &protocol conformance descriptor for HourTemperatureStatistics);
  v15 = sub_23B4778AC(qword_280B42238, type metadata accessor for HourTemperatureStatistics, &protocol conformance descriptor for HourTemperatureStatistics);
  v16 = sub_23B4778AC(&qword_280B42230, type metadata accessor for HourTemperatureStatistics, &protocol conformance descriptor for HourTemperatureStatistics);
  v17 = OBJC_IVAR____TtC10WeatherKit14WeatherService_modelFactory;
  v36[0] = v13;
  v36[1] = v14;
  v36[2] = v15;
  v36[3] = v16;
  v18 = type metadata accessor for HourlyWeatherStatisticsQuery(0, v36);
  v30 = &v26;
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v26 - v21;
  (*(v19 + 16))(&v26 - v21, v31, v18, v20);
  sub_23B50B1E4();
  v23 = v35;
  sub_23B41F478(v8, *(v34 + v17), v18);
  (*(v6 + 8))(v8, v37);
  if (v23)
  {
    return (*(v19 + 8))(v22, v18);
  }

  (*(v19 + 8))(v22, v18);
  v25 = v27;
  sub_23B3A23E0();
  swift_storeEnumTagMultiPayload();
  v29(v25);
  sub_23B398890(v25, &qword_27E133938, &qword_23B5194E0);
  return sub_23B398890(v12, &qword_27E132240, &qword_23B510230);
}

uint64_t sub_23B46E350(uint64_t a1, uint64_t a2, int *a3, int a4, void (*a5)(char *), uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a8;
  v102 = a4;
  v100 = a1;
  v101 = a2;
  v12 = a11;
  v13 = (a10 & 0xFFFFFFFFFFFFFFFELL);
  v14 = 8 * a7;
  v114 = a7;
  v106 = a3;
  v90 = a5;
  v89 = a6;
  if (a7 == 1)
  {
    v15 = a3;
    v16 = *(a9 & 0xFFFFFFFFFFFFFFFELL);
    v17 = *v13;
    v18 = *(a11 & 0xFFFFFFFFFFFFFFFELL);
    v110 = *(a8 & 0xFFFFFFFFFFFFFFFELL);
    v111 = v16;
    v112 = v17;
    v113 = v18;
    v19 = 1;
    type metadata accessor for HourlyWeatherStatistics(255, &v110);
    TupleTypeMetadata = swift_checkMetadataState();
  }

  else
  {
    v107 = &v85;
    MEMORY[0x28223BE20](a1);
    v22 = 0;
    v109 = v11;
    while (v21 != v22)
    {
      v23 = *((a9 & 0xFFFFFFFFFFFFFFFELL) + 8 * v22);
      v24 = v13[v22];
      v25 = *((a11 & 0xFFFFFFFFFFFFFFFELL) + 8 * v22);
      v110 = *((v11 & 0xFFFFFFFFFFFFFFFELL) + 8 * v22);
      v111 = v23;
      v112 = v24;
      v113 = v25;
      v26 = type metadata accessor for HourlyWeatherStatistics(255, &v110);
      v21 = v114;
      *(&v85 + 8 * v22++ - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0)) = v26;
    }

    v19 = v21;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v15 = v106;
    v12 = a11;
    v11 = v109;
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v27 = sub_23B50D954();
  v94 = &v85;
  v88 = v27;
  v87 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v86 = &v85 - v28;
  v29 = sub_23B50B214();
  v93 = &v85;
  v97 = v29;
  v105 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v99 = &v85 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = &v85;
  v95 = TupleTypeMetadata;
  v85 = *(TupleTypeMetadata - 8);
  MEMORY[0x28223BE20](v31);
  v107 = &v85 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = &v85;
  v35 = MEMORY[0x28223BE20](v33);
  v109 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = (v11 & 0xFFFFFFFFFFFFFFFELL);
  v37 = (a9 & 0xFFFFFFFFFFFFFFFELL);
  v38 = (v12 & 0xFFFFFFFFFFFFFFFELL);
  v39 = a10 & 0xFFFFFFFFFFFFFFFELL;
  v40 = v19;
  if (v19)
  {
    v41 = 0;
    do
    {
      if (v40 == 1)
      {
        v42 = *v37;
        v43 = *v13;
        v44 = *v38;
        v110 = *v36;
        v111 = v42;
        v112 = v43;
        v113 = v44;
        v45 = 1;
        v34 = type metadata accessor for HourlyWeatherStatisticsQuery(0, &v110);
        v46 = 0;
      }

      else
      {
        MEMORY[0x28223BE20](v34);
        for (i = 0; v47 != i; ++i)
        {
          v49 = v37[i];
          v50 = *(v39 + 8 * i);
          v51 = v38[i];
          v110 = v36[i];
          v111 = v49;
          v112 = v50;
          v113 = v51;
          v52 = type metadata accessor for HourlyWeatherStatisticsQuery(255, &v110);
          v47 = v114;
          *(&v85 + 8 * i - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0)) = v52;
        }

        v45 = v47;
        v34 = swift_getTupleTypeMetadata();
        v46 = *(v34 + 16 * v41 + 32);
        v13 = (a10 & 0xFFFFFFFFFFFFFFFELL);
        v15 = v106;
      }

      *&v109[8 * v41++] = v15 + v46;
      v40 = v45;
    }

    while (v41 != v45);
  }

  v53 = 0;
  v98 = OBJC_IVAR____TtC10WeatherKit14WeatherService_modelFactory;
  v96 = (v105 + 8);
  v54 = (v95 + 16);
  while (1)
  {
    v55 = v107;
    if (v40 == v53)
    {
      v67 = v85;
      v68 = v86;
      v69 = v95;
      (*(v85 + 16))(v86, v107, v95, v35);
      v70 = v88;
      swift_storeEnumTagMultiPayload();
      v90(v68);
      (*(v87 + 8))(v68, v70);
      return (*(v67 + 8))(v55, v69);
    }

    v106 = v54;
    v103 = v40 == 1 ? 0 : v54[4];
    v56 = v37[v53];
    v57 = v13[v53];
    v58 = v38[v53];
    v59 = *&v109[8 * v53];
    v110 = v36[v53];
    v111 = v56;
    v112 = v57;
    v113 = v58;
    v105 = v53;
    v60 = type metadata accessor for HourlyWeatherStatisticsQuery(0, &v110);
    v104 = &v85;
    v61 = *(v60 - 8);
    v62 = MEMORY[0x28223BE20](v60);
    v64 = &v85 - v63;
    (*(v61 + 16))(&v85 - v63, v59, v60, v62);
    v65 = v99;
    sub_23B50B1E4();
    v66 = v108;
    sub_23B41F478(v65, *(v101 + v98), v60);
    v108 = v66;
    if (v66)
    {
      break;
    }

    (*v96)(v65, v97);
    (*(v61 + 8))(v64, v60);
    v53 = v105 + 1;
    v54 = v106 + 4;
    v13 = (a10 & 0xFFFFFFFFFFFFFFFELL);
    v40 = v114;
  }

  (*v96)(v65, v97);
  result = (*(v61 + 8))(v64, v60);
  v72 = v105;
  v74 = v106;
  v73 = v107;
  if (v105)
  {
    v75 = v36 - 1;
    v76 = v37 - 1;
    v77 = v39 - 8;
    do
    {
      v78 = v72 - 1;
      v79 = v75[v72];
      v80 = v76[v72];
      v81 = *(v77 + 8 * v72);
      v82 = v38[v72 - 1];
      v83 = *v74;
      v74 -= 4;
      v110 = v79;
      v111 = v80;
      v112 = v81;
      v113 = v82;
      v84 = type metadata accessor for HourlyWeatherStatistics(0, &v110);
      result = (*(*(v84 - 8) + 8))(&v73[v83], v84);
      v72 = v78;
    }

    while (v78);
  }

  return result;
}

void objectdestroy_26Tm()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v4 = *(v0 + 16);
  if (v4 == 1)
  {
    OUTLINED_FUNCTION_32_5();
    OUTLINED_FUNCTION_176_0();
    OUTLINED_FUNCTION_26_12(v5);
    v3(0);
  }

  else
  {
    MEMORY[0x28223BE20](v2);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27_3();
    v6 = 0;
    v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
    while (v4 != v6)
    {
      OUTLINED_FUNCTION_26_12(*(v8 + 8 * v6));
      *(v1 + 8 * v6++) = v3(255);
    }

    OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_74_1();
    swift_getTupleTypeMetadata();
  }

  OUTLINED_FUNCTION_48();
  (*(v9 + 8))(v0 + ((*(v9 + 80) + 56) & ~*(v9 + 80)));

  OUTLINED_FUNCTION_264();
  swift_deallocObject();
  OUTLINED_FUNCTION_20();
}

uint64_t sub_23B46EC84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18[8] = a5;
  v18[9] = a4;
  v10 = v6[2];
  v9 = v6[3];
  v18[7] = v6[5];
  if (v10 == 1)
  {
    OUTLINED_FUNCTION_54_1(*(v9 & 0xFFFFFFFFFFFFFFFELL));
    TupleTypeMetadata = a3(0);
  }

  else
  {
    v18[3] = a1;
    v18[5] = a2;
    v18[6] = v7;
    v18[0] = v18;
    MEMORY[0x28223BE20](a1);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_174();
    v12 = 0;
    v18[4] = v9;
    v18[1] = v14;
    v18[2] = v13;
    while (v10 != v12)
    {
      OUTLINED_FUNCTION_54_1(*((v9 & 0xFFFFFFFFFFFFFFFELL) + 8 * v12));
      *(v5 + 8 * v12++) = a3(255);
    }

    OUTLINED_FUNCTION_58_1();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  OUTLINED_FUNCTION_28_0(TupleTypeMetadata);
  OUTLINED_FUNCTION_251_0();
  v15 = OUTLINED_FUNCTION_243_0();
  return v16(v15);
}

uint64_t sub_23B46EE6C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v65 = a5;
  v66 = a6;
  v61 = a3;
  v60 = a2;
  v59 = a1;
  v67 = *v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133900, &qword_23B519480);
  v9 = *(v8 - 8);
  v53 = v8 - 8;
  v64 = v9;
  v63 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v62 = &v51 - v10;
  v11 = sub_23B50C964();
  v68 = *(v11 - 8);
  v69 = v11;
  MEMORY[0x28223BE20](v11);
  v70 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B50C954();
  v81 = MEMORY[0x277D84F90];
  v13 = type metadata accessor for MonthTemperatureStatistics(0);
  v57 = v13;
  v14 = sub_23B4778AC(&qword_280B420D0, type metadata accessor for MonthTemperatureStatistics, &protocol conformance descriptor for MonthTemperatureStatistics);
  v56 = v14;
  v15 = sub_23B4778AC(qword_280B420E0, type metadata accessor for MonthTemperatureStatistics, &protocol conformance descriptor for MonthTemperatureStatistics);
  v55 = v15;
  v54 = sub_23B4778AC(&qword_280B420D8, type metadata accessor for MonthTemperatureStatistics, &protocol conformance descriptor for MonthTemperatureStatistics);
  v16 = *a4;
  v77 = v13;
  v78 = v14;
  v79 = v15;
  v80 = v54;
  v17 = type metadata accessor for MonthlyWeatherStatisticsQuery(0, &v77);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v51 - v20;
  (*(v18 + 16))(&v51 - v20, v16, v17, v19);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133890, &unk_23B5192C8);
  v23 = sub_23B46A690();
  sub_23B432448(&v81, v17, v22, v23);
  (*(v18 + 8))(v21, v17);
  v24 = type metadata accessor for MonthPrecipitationStatistics(0);
  v52 = v24;
  v25 = sub_23B4778AC(&qword_280B41D40, type metadata accessor for MonthPrecipitationStatistics, &protocol conformance descriptor for MonthPrecipitationStatistics);
  v26 = sub_23B4778AC(&qword_280B41D50, type metadata accessor for MonthPrecipitationStatistics, &protocol conformance descriptor for MonthPrecipitationStatistics);
  v27 = sub_23B4778AC(&qword_280B41D48, type metadata accessor for MonthPrecipitationStatistics, &protocol conformance descriptor for MonthPrecipitationStatistics);
  v28 = a4[1];
  v77 = v24;
  v78 = v25;
  v79 = v26;
  v80 = v27;
  v29 = type metadata accessor for MonthlyWeatherStatisticsQuery(0, &v77);
  v30 = *(v29 - 8);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v51 - v32;
  (*(v30 + 16))(&v51 - v32, v28, v29, v31);
  sub_23B432448(&v81, v29, v22, v23);
  (*(v30 + 8))(v33, v29);
  v71 = v58;
  v72 = &v81;
  v34 = v59;
  v73 = v59;
  v74 = v60;
  v75 = v61;
  v76 = v70;
  sub_23B50B4F4();
  sub_23B50B0C4();
  v35 = *a4;
  v77 = v57;
  v78 = v56;
  v79 = v55;
  v80 = v54;
  v36 = type metadata accessor for MonthlyWeatherStatisticsQuery(0, &v77);
  v37 = v62;
  (*(*(v36 - 8) + 16))(v62, v35, v36);
  v38 = a4[1];
  v39 = *(v53 + 56);
  v77 = v52;
  v78 = v25;
  v79 = v26;
  v80 = v27;
  v40 = type metadata accessor for MonthlyWeatherStatisticsQuery(0, &v77);
  (*(*(v40 - 8) + 16))(&v37[v39], v38, v40);
  v41 = (v63 + ((*(v64 + 80) + 16) & ~*(v64 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  sub_23B3AF918();
  v43 = (v42 + v41);
  v45 = v65;
  v44 = v66;
  *v43 = v65;
  v43[1] = v44;

  v46 = sub_23B50B034();
  sub_23B50B074();

  v47 = swift_allocObject();
  v47[2] = v34;
  v47[3] = v45;
  v47[4] = v44;

  v48 = v34;
  v49 = sub_23B50B034();
  sub_23B50B084();

  return (*(v68 + 8))(v70, v69);
}

void WeatherService.fetchMonthlyStatistics<each A>(for:start:end:including:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_21();
  a19 = v26;
  a20 = v28;
  v30 = v29;
  v117 = v31;
  v119 = v23;
  v120 = v27;
  v32 = *v23;
  v114 = v33;
  v115 = v34;
  v121 = v35;
  v122 = a23;
  v112 = v32;
  v113 = a22;
  v123 = a21;
  v125 = a22 & 0xFFFFFFFFFFFFFFFELL;
  v109[3] = v36;
  v109[1] = v37;
  if (v29 == 1)
  {
    OUTLINED_FUNCTION_176_0();
    v39 = OUTLINED_FUNCTION_7_32(v38);
    TupleTypeMetadata = type metadata accessor for MonthlyWeatherStatisticsQuery(v39, v40);
  }

  else
  {
    v23 = v109;
    MEMORY[0x28223BE20](v27);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_174();
    v24 = (v42 & 0xFFFFFFFFFFFFFFFELL);
    while (v30)
    {
      OUTLINED_FUNCTION_294();
      OUTLINED_FUNCTION_13_15(v43);
      v45 = type metadata accessor for MonthlyWeatherStatisticsQuery(255, v44);
      OUTLINED_FUNCTION_293(v45);
    }

    OUTLINED_FUNCTION_98_0();
    OUTLINED_FUNCTION_58_1();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v116 = TupleTypeMetadata;
  OUTLINED_FUNCTION_5();
  v110 = v46;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_28_6();
  v124 = v48;
  OUTLINED_FUNCTION_24_0();
  sub_23B50C964();
  OUTLINED_FUNCTION_73_1(v109);
  v50 = OUTLINED_FUNCTION_2_0(v49, &a17);
  v111 = v51;
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_6_0();
  v53 = OUTLINED_FUNCTION_182_0(v52);
  v126 = MEMORY[0x277D84F90];
  v118 = v30;
  if (v30)
  {
    v54 = (v121 & 0xFFFFFFFFFFFFFFFELL);
    v55 = v123 & 0xFFFFFFFFFFFFFFFELL;
    v56 = v122 & 0xFFFFFFFFFFFFFFFELL;
    v57 = v125;
    v58 = v117;
    v24 = v118;
    do
    {
      v60 = *v54++;
      v59 = v60;
      v55 += 8;
      v57 += 8;
      v56 += 8;
      v61 = *v58++;
      v62 = OUTLINED_FUNCTION_7_32(v59);
      v64 = type metadata accessor for MonthlyWeatherStatisticsQuery(v62, v63);
      OUTLINED_FUNCTION_289(v64, v65, v66, v67, v68, v69, v70, v71, v109[0]);
      OUTLINED_FUNCTION_5();
      v73 = v72;
      OUTLINED_FUNCTION_2_1();
      MEMORY[0x28223BE20](v74);
      OUTLINED_FUNCTION_21_1();
      OUTLINED_FUNCTION_86_0();
      v75(v23, v61, v64);
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133890, &unk_23B5192C8);
      sub_23B46A690();
      OUTLINED_FUNCTION_281();
      OUTLINED_FUNCTION_200_0();
      sub_23B432448(v76, v77, v78, v79);
      v80 = *(v73 + 8);
      v30 = (v73 + 8);
      v80(v23, v64);
      OUTLINED_FUNCTION_212();
    }

    while (!v81);
  }

  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_46_2();
  OUTLINED_FUNCTION_221_0(v82);
  OUTLINED_FUNCTION_140_0(v83);
  v84 = sub_23B50B4F4();
  v86 = OUTLINED_FUNCTION_302(v84, v85, v84);
  OUTLINED_FUNCTION_218_0(v86);
  if (v25)
  {
    OUTLINED_FUNCTION_122_0();
    v87 = v25;
    do
    {
      if (v25 == 1)
      {
        v88 = 0;
      }

      else
      {
        v88 = *v24;
      }

      OUTLINED_FUNCTION_83_1();
      v89 = *v30;
      v30 += 2;
      v91 = OUTLINED_FUNCTION_7_32(v90);
      type metadata accessor for MonthlyWeatherStatisticsQuery(v91, v92);
      OUTLINED_FUNCTION_2();
      (*(v93 + 16))(v124 + v88, v89);
      v24 += 4;
      v125 = v23;
      --v87;
    }

    while (v87);
  }

  v94 = v110;
  OUTLINED_FUNCTION_208_0();
  v96 = v95 & 0xFFFFFFFFFFFFFFF8;
  v97 = swift_allocObject();
  v97[2] = v25;
  OUTLINED_FUNCTION_171_0();
  v97[3] = swift_allocateMetadataPack();
  v97[4] = swift_allocateWitnessTablePack();
  OUTLINED_FUNCTION_243();
  v97[5] = swift_allocateWitnessTablePack();
  OUTLINED_FUNCTION_99_0();
  WitnessTablePack = swift_allocateWitnessTablePack();
  v99 = OUTLINED_FUNCTION_81_1(WitnessTablePack);
  v100(v99);
  v101 = (v97 + v96);
  v102 = v115;
  *v101 = v114;
  v101[1] = v102;

  v103 = sub_23B50B034();
  OUTLINED_FUNCTION_90_0(v103);
  OUTLINED_FUNCTION_305();

  OUTLINED_FUNCTION_242_0();
  v104 = swift_allocObject();
  v104[2] = v25;
  OUTLINED_FUNCTION_171_0();
  v104[3] = swift_allocateMetadataPack();
  v104[4] = swift_allocateWitnessTablePack();
  OUTLINED_FUNCTION_243();
  v104[5] = swift_allocateWitnessTablePack();
  OUTLINED_FUNCTION_99_0();
  v105 = swift_allocateWitnessTablePack();
  OUTLINED_FUNCTION_181_0(v105);
  v106 = v94;
  v107 = sub_23B50B034();
  OUTLINED_FUNCTION_198_0(v107);

  OUTLINED_FUNCTION_56_1();
  OUTLINED_FUNCTION_245();
  v108();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_20();
}

uint64_t sub_23B46FAF8(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  __swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));

  [a3 coordinate];
  v9 = OUTLINED_FUNCTION_202();
  v10 = a7(v9);

  return v10;
}

uint64_t sub_23B46FBDC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v31 = a5;
  v32 = a4;
  v38 = a1;
  v39 = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133910, &unk_23B519490);
  MEMORY[0x28223BE20](v30);
  v29 = &v27 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338C0, &unk_23B5193E8);
  MEMORY[0x28223BE20](v8);
  v49 = &v27 - v9;
  v43 = type metadata accessor for MonthTemperatureStatistics(0);
  v42 = sub_23B4778AC(&qword_280B420D0, type metadata accessor for MonthTemperatureStatistics, &protocol conformance descriptor for MonthTemperatureStatistics);
  v41 = sub_23B4778AC(qword_280B420E0, type metadata accessor for MonthTemperatureStatistics, &protocol conformance descriptor for MonthTemperatureStatistics);
  v40 = sub_23B4778AC(&qword_280B420D8, type metadata accessor for MonthTemperatureStatistics, &protocol conformance descriptor for MonthTemperatureStatistics);
  v48[0] = a3;
  v37 = type metadata accessor for MonthPrecipitationStatistics(0);
  v36 = sub_23B4778AC(&qword_280B41D40, type metadata accessor for MonthPrecipitationStatistics, &protocol conformance descriptor for MonthPrecipitationStatistics);
  v35 = sub_23B4778AC(&qword_280B41D50, type metadata accessor for MonthPrecipitationStatistics, &protocol conformance descriptor for MonthPrecipitationStatistics);
  v34 = sub_23B4778AC(&qword_280B41D48, type metadata accessor for MonthPrecipitationStatistics, &protocol conformance descriptor for MonthPrecipitationStatistics);
  v10 = 0;
  v48[1] = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133900, &qword_23B519480) + 48);
  v33 = OBJC_IVAR____TtC10WeatherKit14WeatherService_modelFactory;
  v28 = v8;
  for (i = v8 + 32; ; i += 16)
  {
    if (v10 == 16)
    {
      v22 = v49;
      v23 = v29;
      sub_23B3A23E0();
      swift_storeEnumTagMultiPayload();
      v32(v23);
      sub_23B398890(v23, &qword_27E133910, &unk_23B519490);
      return sub_23B398890(v22, &qword_27E1338C0, &unk_23B5193E8);
    }

    v12 = v43;
    if (v10)
    {
      v12 = v37;
    }

    v13 = v48[v10 / 8];
    v14 = v42;
    if (v10)
    {
      v14 = v36;
    }

    v15 = v41;
    if (v10)
    {
      v15 = v35;
    }

    v16 = v40;
    if (v10)
    {
      v16 = v34;
    }

    v44 = v12;
    v45 = v14;
    v46 = v15;
    v47 = v16;
    v17 = type metadata accessor for MonthlyWeatherStatisticsQuery(0, &v44);
    v18 = *(v17 - 8);
    v19 = MEMORY[0x28223BE20](v17);
    v21 = &v27 - v20;
    (*(v18 + 16))(&v27 - v20, v13, v17, v19);
    sub_23B41F478(v38, *(v39 + v33), v17);
    if (v5)
    {
      break;
    }

    (*(v18 + 8))(v21, v17);
    v10 += 8;
  }

  result = (*(v18 + 8))(v21, v17);
  if (v10)
  {
    v25 = *(v28 + 32);
    v44 = v43;
    v45 = v42;
    v46 = v41;
    v47 = v40;
    v26 = type metadata accessor for MonthlyWeatherStatistics(0, &v44);
    return (*(*(v26 - 8) + 8))(&v49[v25], v26);
  }

  return result;
}

uint64_t sub_23B470080(uint64_t a1, uint64_t a2, uint64_t *a3, void (*a4)(char *), uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = a8;
  v11 = a7;
  v84 = a1;
  v85 = a2;
  v14 = (a9 & 0xFFFFFFFFFFFFFFFELL);
  v15 = 8 * a6;
  v77 = a5;
  v78 = a4;
  if (a6 == 1)
  {
    v16 = *(a8 & 0xFFFFFFFFFFFFFFFELL);
    v17 = *v14;
    v18 = *(a10 & 0xFFFFFFFFFFFFFFFELL);
    v92 = *(a7 & 0xFFFFFFFFFFFFFFFELL);
    v93 = v16;
    v94 = v17;
    v95 = v18;
    type metadata accessor for MonthlyWeatherStatistics(255, &v92);
    TupleTypeMetadata = swift_checkMetadataState();
  }

  else
  {
    v87 = &v73;
    MEMORY[0x28223BE20](a1);
    v20 = v10;
    v21 = 0;
    v88 = v11;
    v22 = v11 & 0xFFFFFFFFFFFFFFFELL;
    v96 = v20;
    v23 = v20 & 0xFFFFFFFFFFFFFFFELL;
    while (a6 != v21)
    {
      v24 = *(v23 + 8 * v21);
      v25 = v14[v21];
      v26 = *((a10 & 0xFFFFFFFFFFFFFFFELL) + 8 * v21);
      v92 = *(v22 + 8 * v21);
      v93 = v24;
      v94 = v25;
      v95 = v26;
      *(&v73 + 8 * v21++ - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0)) = type metadata accessor for MonthlyWeatherStatistics(255, &v92);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v11 = v88;
    v15 = v90;
    v10 = v96;
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v27 = sub_23B50D954();
  v81 = &v73;
  v75 = *(v27 - 8);
  v76 = v27;
  MEMORY[0x28223BE20](v27);
  v74 = &v73 - v28;
  v80 = &v73;
  v82 = TupleTypeMetadata;
  v73 = *(TupleTypeMetadata - 8);
  MEMORY[0x28223BE20](v29);
  v86 = &v73 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = &v73;
  v33 = MEMORY[0x28223BE20](v31);
  v96 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = (v11 & 0xFFFFFFFFFFFFFFFELL);
  v35 = (v10 & 0xFFFFFFFFFFFFFFFELL);
  v36 = (a10 & 0xFFFFFFFFFFFFFFFELL);
  if (a6)
  {
    v37 = 0;
    v89 = a3;
    do
    {
      if (a6 == 1)
      {
        v38 = *v35;
        v39 = *v14;
        v40 = *v36;
        v92 = *v34;
        v93 = v38;
        v94 = v39;
        v95 = v40;
        v32 = type metadata accessor for MonthlyWeatherStatisticsQuery(0, &v92);
        v41 = 0;
      }

      else
      {
        MEMORY[0x28223BE20](v32);
        v42 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
        for (i = 0; a6 != i; ++i)
        {
          v44 = v35[i];
          v45 = v14[i];
          v46 = v36[i];
          v92 = v34[i];
          v93 = v44;
          v94 = v45;
          v95 = v46;
          *&v42[8 * i] = type metadata accessor for MonthlyWeatherStatisticsQuery(255, &v92);
        }

        v32 = swift_getTupleTypeMetadata();
        v41 = *(v32 + 16 * v37 + 32);
        a3 = v89;
        v15 = v90;
      }

      *&v96[8 * v37++] = a3 + v41;
    }

    while (v37 != a6);
  }

  v47 = 0;
  v83 = OBJC_IVAR____TtC10WeatherKit14WeatherService_modelFactory;
  for (j = v82; ; j = v90)
  {
    v49 = j + 4;
    if (a6 == v47)
    {
      v60 = v73;
      v61 = v74;
      v62 = v86;
      v63 = v82;
      (*(v73 + 16))(v74, v86, v82, v33);
      v64 = v76;
      swift_storeEnumTagMultiPayload();
      v78(v61);
      (*(v75 + 8))(v61, v64);
      return (*(v60 + 8))(v62, v63);
    }

    v90 = v49;
    v88 = a6 == 1 ? 0 : v49[4];
    v50 = v34[v47];
    v51 = v35[v47];
    v52 = v14[v47];
    v53 = v36[v47];
    v87 = *&v96[8 * v47];
    v92 = v50;
    v93 = v51;
    v94 = v52;
    v95 = v53;
    v54 = type metadata accessor for MonthlyWeatherStatisticsQuery(0, &v92);
    v89 = &v73;
    v55 = *(v54 - 8);
    v56 = MEMORY[0x28223BE20](v54);
    v58 = &v73 - v57;
    (*(v55 + 16))(&v73 - v57, v87, v54, v56);
    v59 = v91;
    sub_23B41F478(v84, *(v85 + v83), v54);
    v91 = v59;
    if (v59)
    {
      break;
    }

    (*(v55 + 8))(v58, v54);
    ++v47;
  }

  result = (*(v55 + 8))(v58, v54);
  v66 = v90;
  if (v47)
  {
    v67 = v34 - 1;
    do
    {
      v68 = v35[v47 - 1];
      v69 = v14[v47 - 1];
      v70 = v36[v47 - 1];
      v71 = *v66;
      v66 -= 4;
      v92 = v67[v47];
      v93 = v68;
      v94 = v69;
      v95 = v70;
      v72 = type metadata accessor for MonthlyWeatherStatistics(0, &v92);
      result = (*(*(v72 - 8) + 8))(&v86[v71], v72);
      --v47;
    }

    while (v47);
  }

  return result;
}

uint64_t sub_23B4706D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2;
  v6 = a1;
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[6];
  v29 = v3[5];
  if (v7 == 1)
  {
    OUTLINED_FUNCTION_54_1(*(v8 & 0xFFFFFFFFFFFFFFFELL));
    v11 = v10;
    TupleTypeMetadata = type metadata accessor for MonthlyWeatherStatisticsQuery(0, v12);
  }

  else
  {
    v25 = a1;
    v27 = a2;
    v28 = v4;
    v23[0] = v23;
    v23[1] = a3;
    MEMORY[0x28223BE20](a1);
    OUTLINED_FUNCTION_27();
    v16 = v15 - v14;
    v17 = 0;
    v26 = v8;
    v24 = v18;
    while (v7 != v17)
    {
      OUTLINED_FUNCTION_54_1(*((v8 & 0xFFFFFFFFFFFFFFFELL) + 8 * v17));
      *(v16 + 8 * v17++) = type metadata accessor for MonthlyWeatherStatisticsQuery(255, v19);
    }

    OUTLINED_FUNCTION_69_2();
    OUTLINED_FUNCTION_74_1();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v5 = v27;
    v6 = v25;
    v8 = v26;
    v11 = v24;
  }

  OUTLINED_FUNCTION_28_0(TupleTypeMetadata);
  OUTLINED_FUNCTION_43_5();
  return sub_23B470080(v6, v5, (v3 + v21), *(v3 + v20), *(v3 + v20 + 8), v7, v8, v11, v29, v9);
}

uint64_t objectdestroy_29Tm()
{

  OUTLINED_FUNCTION_242_0();

  return swift_deallocObject();
}

void WeatherService.fetchStatistics(for:calendar:options:timeZone:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21();
  a19 = v26;
  a20 = v27;
  v28 = v21;
  v162 = v29;
  v161 = v30;
  v158 = v31;
  v33 = v32;
  v35 = v34;
  v160 = v28;
  v159 = *v28;
  v36 = sub_23B50AA24();
  v37 = OUTLINED_FUNCTION_2_0(v36, &a15);
  v163 = v38;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_12_0();
  v173 = v39 - v40;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_5_1();
  v181 = v42;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_76();
  v180 = v44;
  OUTLINED_FUNCTION_24_0();
  v45 = sub_23B50AEF4();
  v46 = OUTLINED_FUNCTION_2_0(v45, &a17);
  v152 = v47;
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_35(v48);
  v185 = sub_23B50AE64();
  OUTLINED_FUNCTION_5();
  v187 = v49;
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_35_3();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  v52 = OUTLINED_FUNCTION_3(v51);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_5_1();
  v184 = v56;
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_35(v58);
  v59 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v61 = v60;
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_250_0();
  v171 = v64;
  OUTLINED_FUNCTION_235_0();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_250_0();
  v175 = v66;
  OUTLINED_FUNCTION_235_0();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_250_0();
  v170 = v68;
  OUTLINED_FUNCTION_235_0();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_250_0();
  v169 = v70;
  OUTLINED_FUNCTION_235_0();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_250_0();
  v179 = v72;
  OUTLINED_FUNCTION_235_0();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_127();
  v157 = v76;
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_52();
  v168 = v78;
  sub_23B50AD14();
  sub_23B50ACE4();
  v186 = v33;
  sub_23B50ADE4();
  v79 = *(v61 + 8);
  v183 = v24;
  v176 = v79;
  v177 = v61 + 8;
  (v79)(v24, v59);
  if (qword_280B43440 != -1)
  {
    OUTLINED_FUNCTION_0_1(&qword_280B43440);
  }

  v80 = sub_23B50CDF4();
  __swift_project_value_buffer(v80, qword_280B4E9D8);
  v81 = *(v61 + 16);
  v178 = v23;
  v82 = v23;
  v83 = v81;
  (v81)(v25, v82, v59);
  v84 = v35;
  v85 = sub_23B50CDD4();
  v86 = sub_23B50D4C4();

  v182 = v61;
  v167 = v61 + 16;
  v174 = v83;
  v172 = v20;
  v155 = v84;
  if (os_log_type_enabled(v85, v86))
  {
    v87 = OUTLINED_FUNCTION_42_0();
    v88 = OUTLINED_FUNCTION_303();
    v150 = v88;
    v151 = OUTLINED_FUNCTION_42_0();
    v188 = v151;
    OUTLINED_FUNCTION_189_0(7.2226e-34);
    *(v87 + 14) = v84;
    *v88 = v84;
    *(v87 + 22) = 2082;
    (v83)(v183, v25, v59);
    v89 = v183;
    v90 = v84;
    v91 = sub_23B50D1A4();
    v93 = v92;
    v94 = OUTLINED_FUNCTION_99_0();
    v176(v94);
    v95 = sub_23B391F1C(v91, v93, &v188);

    *(v87 + 24) = v95;
    OUTLINED_FUNCTION_300(&dword_23B38D000, v96, v97, "About to fetch weather statistics data; location=%{private,mask.hash}@, startTime=%{public}s");
    sub_23B398890(v150, &qword_27E132D80, &qword_23B5192E0);
    OUTLINED_FUNCTION_38();
    __swift_destroy_boxed_opaque_existential_1(v151);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_109_0();
  }

  else
  {

    v99 = OUTLINED_FUNCTION_99_0();
    v176(v99);
    v89 = v183;
  }

  v98 = v184;
  v101 = v187 + 104;
  v100 = *(v187 + 104);
  LODWORD(v151) = *MEMORY[0x277CC9980];
  v184 = v100;
  v100(v22);
  OUTLINED_FUNCTION_304(v22, -1, v178);
  v102 = OUTLINED_FUNCTION_226();
  v187 += 8;
  v183 = v103;
  v103(v102);
  OUTLINED_FUNCTION_17_12(v165);
  if (v104)
  {
    sub_23B50AC94();
    OUTLINED_FUNCTION_17_12(v165);
    if (!v104)
    {
      sub_23B398890(v165, &qword_27E131E18, &unk_23B50F710);
    }
  }

  else
  {
    OUTLINED_FUNCTION_225_0();
    v105(v179, v165, v59);
  }

  LODWORD(v165) = *MEMORY[0x277CC9968];
  v184(v22);
  OUTLINED_FUNCTION_304(v22, 1, v178);
  OUTLINED_FUNCTION_273();
  v106();
  OUTLINED_FUNCTION_17_12(v98);
  if (v104)
  {
    sub_23B50AC94();
    OUTLINED_FUNCTION_17_12(v98);
    if (!v104)
    {
      sub_23B398890(v98, &qword_27E131E18, &unk_23B50F710);
    }
  }

  else
  {
    OUTLINED_FUNCTION_225_0();
    v107 = OUTLINED_FUNCTION_241_0();
    v108(v107);
  }

  sub_23B50AE54();
  sub_23B50AD14();
  sub_23B50AE94();
  (v176)(v89, v59);
  OUTLINED_FUNCTION_56_1();
  OUTLINED_FUNCTION_245();
  v109();
  v166 = v101;
  (v184)(v22, v151, v185);
  OUTLINED_FUNCTION_226();
  sub_23B50AE24();
  OUTLINED_FUNCTION_273();
  v110();
  OUTLINED_FUNCTION_17_12(v153);
  if (v104)
  {
    v111 = v170;
    sub_23B50AC94();
    OUTLINED_FUNCTION_17_12(v153);
    v113 = v172;
    if (!v104)
    {
      sub_23B398890(v153, &qword_27E131E18, &unk_23B50F710);
    }
  }

  else
  {
    OUTLINED_FUNCTION_225_0();
    v111 = v170;
    OUTLINED_FUNCTION_200_0();
    v112();
    v113 = v172;
  }

  (v174)(v89, v179, v59);
  v114 = OUTLINED_FUNCTION_234_0();
  (v174)(v114, v111, v59);
  sub_23B50AA04();
  OUTLINED_FUNCTION_184_0();
  v115();
  OUTLINED_FUNCTION_304(v22, -29, v178);
  OUTLINED_FUNCTION_273();
  v116();
  OUTLINED_FUNCTION_17_12(v154);
  if (v104)
  {
    sub_23B50AC94();
    OUTLINED_FUNCTION_17_12(v154);
    if (!v104)
    {
      sub_23B398890(v154, &qword_27E131E18, &unk_23B50F710);
    }
  }

  else
  {
    OUTLINED_FUNCTION_225_0();
    OUTLINED_FUNCTION_200_0();
    v117();
  }

  v118 = OUTLINED_FUNCTION_195();
  v174(v118);
  v119 = OUTLINED_FUNCTION_234_0();
  (v174)(v119, v178, v59);
  sub_23B50AA04();
  OUTLINED_FUNCTION_184_0();
  v120();
  OUTLINED_FUNCTION_304(v22, 12, v178);
  OUTLINED_FUNCTION_273();
  v121();
  OUTLINED_FUNCTION_17_12(v156);
  if (v104)
  {
    sub_23B50AC94();
    OUTLINED_FUNCTION_17_12(v156);
    if (!v104)
    {
      sub_23B398890(v156, &qword_27E131E18, &unk_23B50F710);
    }
  }

  else
  {
    OUTLINED_FUNCTION_225_0();
    v122 = OUTLINED_FUNCTION_241_0();
    v123(v122);
  }

  v124 = OUTLINED_FUNCTION_195();
  v125 = v174;
  v174(v124);
  v126 = OUTLINED_FUNCTION_234_0();
  (v174)(v126, v113, v59);
  v127 = v173;
  v128 = sub_23B50AA04();
  MEMORY[0x28223BE20](v128);
  v129 = v155;
  *(&v149 - 6) = v160;
  *(&v149 - 5) = v129;
  OUTLINED_FUNCTION_221_0(&v149);
  v130 = v181;
  *(v131 - 16) = v127;
  *(v131 - 8) = v130;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338A0, &qword_23B5192D8);
  sub_23B50B0C4();
  v125(v89, v168, v59);
  v132 = v182;
  v133 = (*(v182 + 80) + 16) & ~*(v182 + 80);
  OUTLINED_FUNCTION_208_0();
  v135 = v134 & 0xFFFFFFFFFFFFFFF8;
  v136 = ((v134 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v137 = swift_allocObject();
  (*(v132 + 32))(v137 + v133, v89, v59);
  *(v137 + v135) = v129;
  v138 = (v137 + v136);
  v139 = v161;
  v140 = v162;
  *v138 = v161;
  v138[1] = v140;
  v141 = v129;

  v142 = sub_23B50B034();
  OUTLINED_FUNCTION_152_0();
  sub_23B50B074();

  OUTLINED_FUNCTION_139_0();
  v143 = swift_allocObject();
  v143[2] = v141;
  v143[3] = v139;
  v143[4] = v140;
  v144 = v141;

  v145 = sub_23B50B034();
  sub_23B50B084();

  v146 = v176;
  (v176)(v172, v59);
  v146(v171, v59);
  v146(v170, v59);
  v146(v169, v59);
  v146(v179, v59);
  v146(v178, v59);
  v146(v168, v59);
  v147 = *(v163 + 8);
  v148 = v164;
  v147(v173, v164);
  v147(v181, v148);
  v147(v180, v148);
  OUTLINED_FUNCTION_20();
}

uint64_t sub_23B471774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v50 = a6;
  v48 = a5;
  v49 = a2;
  v64 = a4;
  v51 = a1;
  v7 = sub_23B50AEF4();
  v53 = v7;
  v8 = *(v7 - 8);
  v63 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v10;
  v11 = sub_23B50AA24();
  v44 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338C8, &qword_23B5193F8);
  v61 = *(v12 + 16);
  v62 = v12 + 16;
  v52 = v14;
  v61(v14, a3, v11);
  v55 = *(v8 + 16);
  v60 = v8 + 16;
  v55(v10, v64, v7);
  v15 = *(v12 + 80);
  v16 = *(v8 + 80);
  v17 = v8;
  v18 = (v15 + 32) & ~v15;
  v57 = v18;
  v19 = (v13 + v16 + v18) & ~v16;
  v59 = v15 | v16;
  v20 = swift_allocObject();
  v21 = v49;
  *(v20 + 16) = v51;
  *(v20 + 24) = v21;
  v22 = *(v12 + 32);
  v56 = v12 + 32;
  v58 = v22;
  v23 = v44;
  v22(v20 + v18, v14, v44);
  v24 = *(v17 + 32);
  v54 = v17 + 32;
  v25 = v45;
  v26 = v53;
  v24(v20 + v19, v45, v53);
  v47 = v24;

  v27 = v21;
  v49 = sub_23B50B044();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338D0, &qword_23B519410);
  v28 = v52;
  v29 = v23;
  v61(v52, v48, v23);
  v30 = v25;
  v31 = v26;
  v55(v25, v64, v26);
  v32 = v19;
  v33 = swift_allocObject();
  v34 = v51;
  *(v33 + 16) = v51;
  *(v33 + 24) = v27;
  v58(v33 + v57, v28, v29);
  v24(v33 + v32, v30, v31);

  v35 = v27;
  v48 = sub_23B50B044();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338D8, &qword_23B519428);
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v36 + 24) = v35;

  v37 = v35;
  sub_23B50B044();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338E0, &qword_23B519440);
  v38 = v52;
  v61(v52, v50, v29);
  v39 = v53;
  v55(v30, v64, v53);
  v40 = swift_allocObject();
  *(v40 + 16) = v34;
  *(v40 + 24) = v37;
  v58(v40 + v57, v38, v29);
  v47(v40 + v32, v30, v39);

  v41 = v37;
  sub_23B50B044();
  v42 = sub_23B50B0B4();

  return v42;
}

uint64_t sub_23B471CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v5[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133928, &qword_23B5194C0);
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23B471D80, 0, 0);
}

uint64_t sub_23B471D80()
{
  OUTLINED_FUNCTION_168();
  OUTLINED_FUNCTION_134_0();
  v3 = *MEMORY[0x277D7B090];
  sub_23B50C7D4();
  OUTLINED_FUNCTION_2();
  (*(v4 + 104))(v0, v3);
  v5 = (v0 + *(v1 + 52));
  *v5 = sub_23B4F12CC;
  v5[1] = 0;
  *(v2 + 24) = v0;
  OUTLINED_FUNCTION_133_0(&qword_23B5194C8);
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  *(v2 + 88) = v6;
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_41_3(v6);

  return v9(v8);
}

uint64_t sub_23B471E7C()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (!v0)
  {
    sub_23B398890(*(v3 + 80), &qword_27E133928, &qword_23B5194C0);
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B471F8C()
{
  OUTLINED_FUNCTION_71();
  sub_23B398890(*(v0 + 80), &qword_27E133928, &qword_23B5194C0);

  OUTLINED_FUNCTION_67_1();

  return v1();
}

uint64_t sub_23B472004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[12] = a5;
  v6[13] = v5;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133928, &qword_23B5194C0);
  v6[14] = swift_task_alloc();
  type metadata accessor for StatisticsSpanFactory(0);
  v6[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23B4720D4, 0, 0);
}

uint64_t sub_23B4720D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_180_0();
  OUTLINED_FUNCTION_232_0();
  v15 = v14[15];
  v16 = v14[11];
  sub_23B50AEF4();
  OUTLINED_FUNCTION_2();
  (*(v17 + 16))(v15, v16);
  sub_23B4E6760();
  v18 = OUTLINED_FUNCTION_164_0();
  type metadata accessor for HourTemperatureStatistics(v18);
  sub_23B4778AC(&qword_280B42228, type metadata accessor for HourTemperatureStatistics, &protocol conformance descriptor for HourTemperatureStatistics);
  OUTLINED_FUNCTION_104_0();
  sub_23B4778AC(v19, type metadata accessor for HourTemperatureStatistics, v20);
  OUTLINED_FUNCTION_103_0();
  v23 = sub_23B4778AC(v21, type metadata accessor for HourTemperatureStatistics, v22);
  v24 = OUTLINED_FUNCTION_126_0(v23);
  type metadata accessor for HourlyWeatherStatisticsQuery(v24, v25);
  OUTLINED_FUNCTION_2();
  v26 = OUTLINED_FUNCTION_227_0();
  v27(v26);
  v14[7] = 0;
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  v14[16] = v28;
  *v28 = v29;
  OUTLINED_FUNCTION_132_0(v28);
  OUTLINED_FUNCTION_129_0();

  return sub_23B475FE8(v30, v31, v32, v33, v34, v35);
}

uint64_t sub_23B4722A0()
{
  OUTLINED_FUNCTION_71();
  v1 = *(v0 + 112);
  OUTLINED_FUNCTION_4_21();
  sub_23B3A24BC(v2, v3);
  sub_23B398890(v1, &qword_27E133928, &qword_23B5194C0);

  OUTLINED_FUNCTION_67_1();

  return v4();
}

uint64_t sub_23B472328()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  *(v3 + 136) = v0;

  if (!v0)
  {
    sub_23B398890(*(v3 + 112), &qword_27E133928, &qword_23B5194C0);
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B472438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v5[9] = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E132C40, &qword_23B514C28);
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23B4724E0, 0, 0);
}

uint64_t sub_23B4724E0()
{
  OUTLINED_FUNCTION_168();
  OUTLINED_FUNCTION_134_0();
  v3 = *MEMORY[0x277D7B098];
  sub_23B50C7D4();
  OUTLINED_FUNCTION_2();
  (*(v4 + 104))(v0, v3);
  v5 = (v0 + *(v1 + 52));
  *v5 = sub_23B41F268;
  v5[1] = 0;
  *(v2 + 24) = v0;
  OUTLINED_FUNCTION_133_0(&qword_23B5194A0);
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  *(v2 + 88) = v6;
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_41_3(v6);

  return v9(v8);
}

uint64_t sub_23B4725DC()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (!v0)
  {
    sub_23B398890(*(v3 + 80), qword_27E132C40, &qword_23B514C28);
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4726EC()
{
  OUTLINED_FUNCTION_71();
  sub_23B398890(*(v0 + 80), qword_27E132C40, &qword_23B514C28);

  OUTLINED_FUNCTION_67_1();

  return v1();
}

uint64_t sub_23B472764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[12] = a5;
  v6[13] = v5;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E132C40, &qword_23B514C28);
  v6[14] = swift_task_alloc();
  type metadata accessor for StatisticsSpanFactory(0);
  v6[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23B472834, 0, 0);
}

uint64_t sub_23B472834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_180_0();
  OUTLINED_FUNCTION_232_0();
  v15 = v14[15];
  v16 = v14[11];
  sub_23B50AEF4();
  OUTLINED_FUNCTION_2();
  (*(v17 + 16))(v15, v16);
  sub_23B4E6214();
  v18 = OUTLINED_FUNCTION_164_0();
  type metadata accessor for DayPrecipitationStatistics(v18);
  sub_23B4778AC(&qword_280B42180, type metadata accessor for DayPrecipitationStatistics, &protocol conformance descriptor for DayPrecipitationStatistics);
  OUTLINED_FUNCTION_102_0();
  sub_23B4778AC(v19, type metadata accessor for DayPrecipitationStatistics, v20);
  OUTLINED_FUNCTION_101_0();
  v23 = sub_23B4778AC(v21, type metadata accessor for DayPrecipitationStatistics, v22);
  v24 = OUTLINED_FUNCTION_126_0(v23);
  type metadata accessor for DailyWeatherStatisticsQuery(v24, v25);
  OUTLINED_FUNCTION_2();
  v26 = OUTLINED_FUNCTION_227_0();
  v27(v26);
  v14[7] = 0;
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  v14[16] = v28;
  *v28 = v29;
  OUTLINED_FUNCTION_132_0(v28);
  OUTLINED_FUNCTION_129_0();

  return sub_23B4752C8(v30, v31, v32, v33, v34, v35);
}

uint64_t sub_23B472A00()
{
  OUTLINED_FUNCTION_71();
  v1 = *(v0 + 120);
  OUTLINED_FUNCTION_4_21();
  sub_23B3A24BC(v1, v2);

  OUTLINED_FUNCTION_45_0();

  return v3();
}

uint64_t sub_23B472A70()
{
  OUTLINED_FUNCTION_71();
  v1 = *(v0 + 112);
  OUTLINED_FUNCTION_4_21();
  sub_23B3A24BC(v2, v3);
  sub_23B398890(v1, qword_27E132C40, &qword_23B514C28);

  OUTLINED_FUNCTION_67_1();

  return v4();
}

uint64_t sub_23B472AF8()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  *(v3 + 136) = v0;

  if (!v0)
  {
    sub_23B398890(*(v3 + 112), qword_27E132C40, &qword_23B514C28);
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B472C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v3[9] = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E132E40, &qword_23B5157C8);
  v3[10] = swift_task_alloc();
  v3[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132E38, &qword_23B5157C0);
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23B472CE8, 0, 0);
}

uint64_t sub_23B472CE8()
{
  v1 = v0[11];
  v2 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[6];
  v6 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338C0, &unk_23B5193E8) + 48);
  v0[2] = v5;
  v0[3] = v6;
  v7 = *MEMORY[0x277D7B090];
  v8 = sub_23B50C7D4();
  OUTLINED_FUNCTION_6();
  v10 = *(v9 + 104);
  v10(v2, v7, v8);
  v11 = (v2 + *(v1 + 52));
  *v11 = sub_23B432390;
  v11[1] = 0;
  v0[4] = v2;
  v10(v3, *MEMORY[0x277D7B098], v8);
  v12 = (v3 + *(v4 + 52));
  *v12 = sub_23B4323E4;
  v12[1] = 0;
  v0[5] = v3;
  OUTLINED_FUNCTION_133_0(&qword_23B519478);
  v18 = v13;
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  v0[13] = v14;
  *v14 = v15;
  v14[1] = sub_23B472E90;
  v16 = v0[8];

  return v18(v0 + 2, v16, 1, 12, v0 + 4);
}

uint64_t sub_23B472E90()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  v3[14] = v0;

  if (!v0)
  {
    v7 = v3[12];
    sub_23B398890(v3[10], qword_27E132E40, &qword_23B5157C8);
    sub_23B398890(v7, &qword_27E132E38, &qword_23B5157C0);
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B472FBC()
{
  OUTLINED_FUNCTION_71();

  OUTLINED_FUNCTION_45_0();

  return v0();
}

uint64_t sub_23B473020()
{
  OUTLINED_FUNCTION_71();
  v1 = *(v0 + 96);
  sub_23B398890(*(v0 + 80), qword_27E132E40, &qword_23B5157C8);
  sub_23B398890(v1, &qword_27E132E38, &qword_23B5157C0);

  OUTLINED_FUNCTION_67_1();

  return v2();
}

uint64_t sub_23B4730BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[22] = a5;
  v6[23] = v5;
  v6[20] = a3;
  v6[21] = a4;
  v6[18] = a1;
  v6[19] = a2;
  v6[24] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133900, &qword_23B519480);
  v6[25] = swift_task_alloc();
  v6[26] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338C0, &unk_23B5193E8);
  v6[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23B4731A0, 0, 0);
}

uint64_t sub_23B4731A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_180_0();
  OUTLINED_FUNCTION_232_0();
  v24 = v14[20];
  v23 = v14[21];
  if ((v23 - 13) >= 0xFFFFFFFFFFFFFFF4 && (v24 - 13) >= 0xFFFFFFFFFFFFFFF4)
  {
    v27 = v14[24];
    v26 = v14[25];
    v28 = v14[22];
    a9 = v14[19];
    a10 = v14[23];
    v29 = OUTLINED_FUNCTION_211_0();
    v14[28] = type metadata accessor for MonthTemperatureStatistics(v29);
    v14[29] = sub_23B4778AC(&qword_280B420D0, type metadata accessor for MonthTemperatureStatistics, &protocol conformance descriptor for MonthTemperatureStatistics);
    v14[30] = OUTLINED_FUNCTION_220_0(qword_280B420E0);
    v30 = OUTLINED_FUNCTION_220_0(&qword_280B420D8);
    v14[31] = v30;
    v31 = OUTLINED_FUNCTION_52_2(v30);
    type metadata accessor for MonthlyWeatherStatisticsQuery(v31, v32);
    OUTLINED_FUNCTION_2();
    v33 = OUTLINED_FUNCTION_25_4();
    v34(v33);
    v35 = type metadata accessor for MonthPrecipitationStatistics(0);
    v14[32] = v35;
    v36 = sub_23B4778AC(&qword_280B41D40, type metadata accessor for MonthPrecipitationStatistics, &protocol conformance descriptor for MonthPrecipitationStatistics);
    v14[33] = v36;
    v37 = OUTLINED_FUNCTION_220_0(&qword_280B41D50);
    v14[34] = v37;
    v38 = OUTLINED_FUNCTION_220_0(&qword_280B41D48);
    v14[35] = v38;
    v39 = *(v28 + 8);
    v40 = *(v27 + 48);
    v14[6] = v35;
    v14[7] = v36;
    v14[8] = v37;
    v14[9] = v38;
    type metadata accessor for MonthlyWeatherStatisticsQuery(0, (v14 + 6));
    OUTLINED_FUNCTION_2();
    (*(v41 + 16))(v26 + v40, v39);
    v42 = swift_task_alloc();
    v14[36] = v42;
    v42[2] = a10;
    v42[3] = a9;
    v42[4] = v24;
    v42[5] = v23;
    v42[6] = v26;
    swift_task_alloc();
    OUTLINED_FUNCTION_108();
    v14[37] = v43;
    *v43 = v44;
    v43[1] = sub_23B473444;
    OUTLINED_FUNCTION_59_2();
    OUTLINED_FUNCTION_129_0();
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822008A0](v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_23B473444()
{
  OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  *(v3 + 304) = v0;

  if (!v0)
  {
    sub_23B398890(*(v3 + 200), &qword_27E133900, &qword_23B519480);
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B473578()
{
  OUTLINED_FUNCTION_71();
  sub_23B398890(*(v0 + 200), &qword_27E133900, &qword_23B519480);

  OUTLINED_FUNCTION_67_1();

  return v1();
}

uint64_t sub_23B4735FC()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 144);
  v4 = *(v0 + 240);
  *(v0 + 80) = *(v0 + 224);
  *(v0 + 96) = v4;
  v12 = *(v0 + 272);
  v13 = *(v0 + 256);
  type metadata accessor for MonthlyWeatherStatistics(0, v0 + 80);
  OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_226();
  v6(v5);
  v7 = *(v3 + 8);
  v8 = *(v2 + 48);
  *(v0 + 112) = v13;
  *(v0 + 128) = v12;
  type metadata accessor for MonthlyWeatherStatistics(0, v0 + 112);
  OUTLINED_FUNCTION_2();
  (*(v9 + 32))(v7, v1 + v8);

  OUTLINED_FUNCTION_45_0();

  return v10();
}

uint64_t sub_23B47370C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v5[9] = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1331D0, &qword_23B5168C8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23B4737B4, 0, 0);
}

uint64_t sub_23B4737B4()
{
  OUTLINED_FUNCTION_168();
  OUTLINED_FUNCTION_134_0();
  v3 = *MEMORY[0x277D7B098];
  sub_23B50C7D4();
  OUTLINED_FUNCTION_2();
  (*(v4 + 104))(v0, v3);
  v5 = (v0 + *(v1 + 52));
  *v5 = sub_23B442ED0;
  v5[1] = 0;
  *(v2 + 24) = v0;
  OUTLINED_FUNCTION_133_0(&qword_23B519460);
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  *(v2 + 88) = v6;
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_41_3(v6);

  return v9(v8);
}

uint64_t sub_23B4738B0()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (!v0)
  {
    sub_23B398890(*(v3 + 80), qword_27E1331D0, &qword_23B5168C8);
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4739C0()
{
  OUTLINED_FUNCTION_71();

  OUTLINED_FUNCTION_45_0();

  return v0();
}

uint64_t sub_23B473A18()
{
  OUTLINED_FUNCTION_71();
  sub_23B398890(*(v0 + 80), qword_27E1331D0, &qword_23B5168C8);

  OUTLINED_FUNCTION_67_1();

  return v1();
}

uint64_t sub_23B473A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[18] = a5;
  v6[19] = v5;
  v6[16] = a3;
  v6[17] = a4;
  v6[14] = a1;
  v6[15] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1331D0, &qword_23B5168C8);
  v6[20] = swift_task_alloc();
  v6[21] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132250, &unk_23B5164B0);
  v6[22] = swift_task_alloc();
  v7 = sub_23B50AE84();
  v6[23] = v7;
  v6[24] = *(v7 - 8);
  v6[25] = swift_task_alloc();
  v8 = sub_23B50AD24();
  v6[26] = v8;
  v6[27] = *(v8 - 8);
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F68, &unk_23B50F2A0);
  v6[30] = swift_task_alloc();
  v9 = sub_23B50AEF4();
  v6[31] = v9;
  v6[32] = *(v9 - 8);
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  v10 = sub_23B50AC34();
  v6[35] = v10;
  v6[36] = *(v10 - 8);
  v6[37] = swift_task_alloc();
  v11 = sub_23B50AC04();
  v6[38] = v11;
  v6[39] = *(v11 - 8);
  v6[40] = swift_task_alloc();
  v12 = sub_23B50ABE4();
  v6[41] = v12;
  v6[42] = *(v12 - 8);
  v6[43] = swift_task_alloc();
  v13 = sub_23B50ABF4();
  v6[44] = v13;
  v6[45] = *(v13 - 8);
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();
  v14 = sub_23B50AC84();
  v6[48] = v14;
  v6[49] = *(v14 - 8);
  v6[50] = swift_task_alloc();
  v6[51] = swift_task_alloc();
  v6[52] = swift_task_alloc();
  v6[53] = swift_task_alloc();
  v6[54] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23B473EDC, 0, 0);
}

uint64_t sub_23B473EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = v14[42];
  v15 = v14[43];
  v18 = v14[40];
  v17 = v14[41];
  v19 = v14[38];
  v20 = v14[39];
  v21 = v14[36];
  v22 = v14[35];
  v23 = v14[30];
  v75 = v14[37];
  v77 = v14[31];
  v71 = *MEMORY[0x277CC9460];
  v73 = (v14[45] + 104);
  v69 = *v73;
  (*v73)(v14[47]);
  (*(v16 + 104))(v15, *MEMORY[0x277CC9458], v17);
  (*(v20 + 104))(v18, *MEMORY[0x277CC9468], v19);
  (*(v21 + 104))(v75, *MEMORY[0x277CC9480], v22);
  sub_23B50AEA4();
  v24 = OUTLINED_FUNCTION_51(v23, 1, v77);
  if (v32)
  {
    __break(1u);
  }

  else
  {
    v33 = v14[53];
    v34 = v14[52];
    v35 = v14[49];
    v36 = v14[50];
    v37 = v14[48];
    v59 = v14[44];
    v60 = v14[46];
    v57 = v14[31];
    v58 = v14[32];
    v62 = v14[33];
    v63 = v14[27];
    v64 = v14[25];
    v65 = v14[28];
    v66 = v14[24];
    v67 = v14[23];
    v78 = v14[19];
    v68 = v14[20];
    v61 = v14[17];
    v76 = v14[15];
    (*(v58 + 32))(v14[34], v14[30]);
    sub_23B50AC14();
    sub_23B50AC54();
    v38 = *(v35 + 8);
    v14[55] = v38;
    v14[56] = (v35 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v38(v36, v37);
    sub_23B50AC64();
    v39 = OUTLINED_FUNCTION_195();
    (v38)(v39);
    sub_23B50AC44();
    v38(v34, v37);
    (v69)(v60, v71, v59);
    sub_23B50AC24();
    v40 = OUTLINED_FUNCTION_99_0();
    v41(v40);
    v38(v33, v37);
    (*(v58 + 16))(v62, v61, v57);
    sub_23B50AC74();
    sub_23B50AA14();
    sub_23B4778AC(&qword_27E1338E8, MEMORY[0x277CC94A0], MEMORY[0x277CC9490]);
    sub_23B50AD04();
    v42 = *(v63 + 8);
    v14[57] = v42;
    v14[58] = (v63 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v43 = OUTLINED_FUNCTION_202();
    v42(v43);
    v72 = v14[11];
    v74 = v14[10];
    v14[59] = v72;
    sub_23B50A9F4();
    sub_23B50AD04();
    v44 = OUTLINED_FUNCTION_202();
    v42(v44);
    v45 = v14[13];
    v70 = v14[12];
    v14[60] = v45;
    sub_23B50AE04();
    sub_23B50AA14();
    sub_23B50ADE4();
    v46 = OUTLINED_FUNCTION_202();
    v42(v46);
    (*(v66 + 8))(v64, v67);
    v47 = type metadata accessor for DayPrecipitationSummary(0);
    v14[61] = v47;
    v48 = sub_23B4778AC(&qword_280B422D8, type metadata accessor for DayPrecipitationSummary, &protocol conformance descriptor for DayPrecipitationSummary);
    v14[62] = v48;
    v49 = sub_23B4778AC(&qword_280B422E8, type metadata accessor for DayPrecipitationSummary, &protocol conformance descriptor for DayPrecipitationSummary);
    v14[63] = v49;
    v50 = sub_23B4778AC(&qword_280B422E0, type metadata accessor for DayPrecipitationSummary, &protocol conformance descriptor for DayPrecipitationSummary);
    v14[64] = v50;
    v14[2] = v47;
    v14[3] = v48;
    v14[4] = v49;
    v14[5] = v50;
    type metadata accessor for DailyWeatherSummaryQuery(0, (v14 + 2));
    OUTLINED_FUNCTION_2();
    v51 = OUTLINED_FUNCTION_226();
    v52(v51);
    v53 = swift_task_alloc();
    v14[65] = v53;
    v53[2] = v78;
    v53[3] = v76;
    v53[4] = v74;
    v53[5] = v72;
    v53[6] = v70;
    v53[7] = v45;
    v53[8] = v65;
    v53[9] = v61;
    v53[10] = v68;
    swift_task_alloc();
    OUTLINED_FUNCTION_108();
    v14[66] = v54;
    *v54 = v55;
    v54[1] = sub_23B4744A4;
    OUTLINED_FUNCTION_85();
    v27 = 0xD00000000000002FLL;
    v30 = v53;
  }

  return MEMORY[0x2822008A0](v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_23B4744A4()
{
  OUTLINED_FUNCTION_168();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  *(v3 + 536) = v0;

  if (!v0)
  {
    sub_23B398890(*(v3 + 160), qword_27E1331D0, &qword_23B5168C8);
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B47461C()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 224);
  v3 = *(v0 + 208);
  v4 = *(v0 + 160);
  (*(v0 + 440))(*(v0 + 432), *(v0 + 384));
  sub_23B398890(v4, qword_27E1331D0, &qword_23B5168C8);
  v1(v2, v3);

  OUTLINED_FUNCTION_67_1();

  return v5();
}

uint64_t sub_23B4747AC()
{
  v1 = **(v0 + 112);
  v2 = *(v0 + 504);
  *(v0 + 48) = *(v0 + 488);
  v3 = *(v0 + 456);
  v4 = *(v0 + 440);
  v5 = *(v0 + 432);
  v6 = *(v0 + 384);
  v7 = *(v0 + 224);
  v8 = *(v0 + 208);
  v9 = *(v0 + 176);
  *(v0 + 64) = v2;
  type metadata accessor for DailyWeatherSummary(0, v0 + 48);
  OUTLINED_FUNCTION_2();
  (*(v10 + 32))(v1, v9);
  v4(v5, v6);
  v3(v7, v8);

  OUTLINED_FUNCTION_45_0();

  return v11();
}

uint64_t sub_23B47497C(uint64_t a1, uint64_t a2, void (*a3)(char *, char *, uint64_t), void *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v60 = a5;
  v59 = a6;
  v56 = a4;
  v53 = a3;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338B8, &qword_23B5193E0);
  MEMORY[0x28223BE20](v57);
  v58 = &v47 - v6;
  v7 = sub_23B50AD24();
  v54 = *(v7 - 8);
  v55 = v7;
  MEMORY[0x28223BE20](v7);
  v52 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v47 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v47 - v13;
  v15 = type metadata accessor for WeatherStatisticsModel(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338A0, &qword_23B5192D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338C0, &unk_23B5193E8);
  sub_23B3A23E0();
  sub_23B3A23E0();
  sub_23B3A23E0();
  v18 = v14;
  sub_23B3A23E0();
  sub_23B3A23E0();
  sub_23B50AD14();
  sub_23B50ACF4();
  v20 = v19;
  if (qword_280B43440 != -1)
  {
    swift_once();
  }

  v21 = sub_23B50CDF4();
  __swift_project_value_buffer(v21, qword_280B4E9D8);
  v22 = v54;
  v23 = v55;
  v53 = *(v54 + 16);
  v53(v11, v14, v55);
  v24 = v56;
  v25 = sub_23B50CDD4();
  v26 = v11;
  v27 = sub_23B50D4C4();

  LODWORD(v56) = v27;
  v28 = os_log_type_enabled(v25, v27);
  v29 = v26;
  if (v28)
  {
    v30 = swift_slowAlloc();
    v51 = v18;
    v31 = v30;
    v32 = swift_slowAlloc();
    v49 = v32;
    v50 = swift_slowAlloc();
    v61 = v50;
    *v31 = 141558787;
    *(v31 + 4) = 1752392040;
    *(v31 + 12) = 2113;
    *(v31 + 14) = v24;
    *v32 = v24;
    *(v31 + 22) = 2082;
    v48 = v25;
    v53(v52, v29, v23);
    v33 = v24;
    v34 = sub_23B50D1A4();
    v35 = v22;
    v36 = v23;
    v38 = v37;
    v39 = *(v35 + 8);
    v39(v29, v36);
    v40 = sub_23B391F1C(v34, v38, &v61);
    v23 = v36;

    *(v31 + 24) = v40;
    *(v31 + 32) = 2050;
    *(v31 + 34) = v20;
    v41 = v48;
    _os_log_impl(&dword_23B38D000, v48, v56, "Finished fetching weather statistics data; location=%{private,mask.hash}@, endTime=%{public}s, duration=%{public}fs", v31, 0x2Au);
    v42 = v49;
    sub_23B398890(v49, &qword_27E132D80, &qword_23B5192E0);
    MEMORY[0x23EE9E260](v42, -1, -1);
    v43 = v50;
    __swift_destroy_boxed_opaque_existential_1(v50);
    MEMORY[0x23EE9E260](v43, -1, -1);
    v44 = v31;
    v18 = v51;
    MEMORY[0x23EE9E260](v44, -1, -1);
  }

  else
  {

    v39 = *(v22 + 8);
    v39(v26, v23);
  }

  v45 = v58;
  sub_23B477C04();
  swift_storeEnumTagMultiPayload();
  v60(v45);
  sub_23B398890(v45, &qword_27E1338B8, &qword_23B5193E0);
  v39(v18, v23);
  return sub_23B3A24BC(v17, type metadata accessor for WeatherStatisticsModel);
}

uint64_t sub_23B474F0C()
{
  OUTLINED_FUNCTION_209_0();
  v0 = sub_23B50AD24();
  OUTLINED_FUNCTION_28_0(v0);
  OUTLINED_FUNCTION_43_5();
  OUTLINED_FUNCTION_240_0();
  v1 = OUTLINED_FUNCTION_239_0();
  return sub_23B47497C(v1, v2, v3, v4, v5, v6);
}

void sub_23B474F94()
{
  OUTLINED_FUNCTION_21();
  v28 = v4;
  v29 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_301(v9, v10, v3, v11, v7, v5);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_47_2();
  if (qword_280B43440 != -1)
  {
    OUTLINED_FUNCTION_0_1(&qword_280B43440);
  }

  v13 = sub_23B50CDF4();
  __swift_project_value_buffer(v13, qword_280B4E9D8);
  v14 = v1;
  v15 = v0;
  v16 = sub_23B50CDD4();
  v17 = sub_23B50D4B4();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = OUTLINED_FUNCTION_42_0();
    v30 = v27;
    OUTLINED_FUNCTION_191_0(7.2227e-34);
    *(v18 + 14) = v15;
    *v26 = v15;
    OUTLINED_FUNCTION_252_0();
    v19 = v15;
    v20 = sub_23B50D874();
    v22 = sub_23B391F1C(v20, v21, &v30);

    *(v18 + 24) = v22;
    *(v18 + 32) = 2112;
    v23 = v1;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 34) = v24;
    v26[1] = v24;
    _os_log_impl(&dword_23B38D000, v16, v17, v28, v18, 0x2Au);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D80, &qword_23B5192E0);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_109_0();
    __swift_destroy_boxed_opaque_existential_1(v27);
    OUTLINED_FUNCTION_109_0();
    OUTLINED_FUNCTION_38();
  }

  else
  {
  }

  *v2 = v1;
  OUTLINED_FUNCTION_99_0();
  swift_storeEnumTagMultiPayload();
  v25 = v1;
  v29(v2);
  sub_23B398890(v2, v8, v6);
  OUTLINED_FUNCTION_20();
}

uint64_t sub_23B4752C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v7 + 112) = a6;
  *(v7 + 120) = v6;
  *(v7 + 208) = a5;
  *(v7 + 96) = a3;
  *(v7 + 104) = a4;
  *(v7 + 80) = a1;
  *(v7 + 88) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E132C40, &qword_23B514C28);
  *(v7 + 128) = swift_task_alloc();
  *(v7 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132280, &qword_23B510278);
  *(v7 + 144) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23B4753AC, 0, 0);
}

uint64_t sub_23B4753AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_180_0();
  OUTLINED_FUNCTION_232_0();
  OUTLINED_FUNCTION_229_0();
  v15 = OUTLINED_FUNCTION_211_0();
  v14[19] = type metadata accessor for DayPrecipitationStatistics(v15);
  v14[20] = sub_23B4778AC(&qword_280B42180, type metadata accessor for DayPrecipitationStatistics, &protocol conformance descriptor for DayPrecipitationStatistics);
  OUTLINED_FUNCTION_102_0();
  v14[21] = sub_23B4778AC(v16, type metadata accessor for DayPrecipitationStatistics, v17);
  OUTLINED_FUNCTION_101_0();
  v20 = sub_23B4778AC(v18, type metadata accessor for DayPrecipitationStatistics, v19);
  v14[22] = v20;
  v21 = OUTLINED_FUNCTION_52_2(v20);
  type metadata accessor for DailyWeatherStatisticsQuery(v21, v22);
  OUTLINED_FUNCTION_2();
  v23 = OUTLINED_FUNCTION_25_4();
  v24(v23);
  v25 = swift_task_alloc();
  OUTLINED_FUNCTION_151_0(v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  v14[24] = v35;
  *v35 = v36;
  v35[1] = sub_23B475528;
  OUTLINED_FUNCTION_59_2();
  OUTLINED_FUNCTION_129_0();

  return MEMORY[0x2822008A0](v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_23B475528()
{
  OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  *(v3 + 200) = v0;

  if (!v0)
  {
    sub_23B398890(*(v3 + 128), qword_27E132C40, &qword_23B514C28);
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B47565C()
{
  OUTLINED_FUNCTION_71();
  sub_23B398890(*(v0 + 128), qword_27E132C40, &qword_23B514C28);

  OUTLINED_FUNCTION_67_1();

  return v1();
}

uint64_t sub_23B4756E0()
{
  OUTLINED_FUNCTION_188();
  v2 = OUTLINED_FUNCTION_112_0();
  type metadata accessor for DailyWeatherStatistics(v2, v3);
  OUTLINED_FUNCTION_2();
  (*(v4 + 32))(v1, v0);

  OUTLINED_FUNCTION_45_0();

  return v5();
}

uint64_t sub_23B475778(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v28 = a6;
  v25 = a4;
  v26 = a5;
  v23 = a1;
  v24 = a3;
  v27 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133918, &qword_23B5194B0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E132C40, &qword_23B514C28);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v23 - v13;
  v15 = type metadata accessor for DayPrecipitationStatistics(0);
  v16 = sub_23B4778AC(&qword_280B42180, type metadata accessor for DayPrecipitationStatistics, &protocol conformance descriptor for DayPrecipitationStatistics);
  v17 = sub_23B4778AC(qword_280B42190, type metadata accessor for DayPrecipitationStatistics, &protocol conformance descriptor for DayPrecipitationStatistics);
  v18 = sub_23B4778AC(&qword_280B42188, type metadata accessor for DayPrecipitationStatistics, &protocol conformance descriptor for DayPrecipitationStatistics);
  v29[0] = v15;
  v29[1] = v16;
  v29[2] = v17;
  v29[3] = v18;
  v19 = type metadata accessor for DailyWeatherStatisticsQuery(0, v29);
  (*(*(v19 - 8) + 16))(v14, a7, v19);
  v29[0] = v14;
  (*(v9 + 16))(v11, v23, v8);
  v20 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v21 = swift_allocObject();
  (*(v9 + 32))(v21 + v20, v11, v8);
  sub_23B469C7C(v24, v25, v26, v28, v29, sub_23B477814, v21);

  return sub_23B398890(v14, qword_27E132C40, &qword_23B514C28);
}

uint64_t sub_23B475A2C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132280, &qword_23B510278);
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133920, &qword_23B5194B8);
  MEMORY[0x28223BE20](v1);
  v3 = (v5 - v2);
  sub_23B3A23E0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5[1] = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133918, &qword_23B5194B0);
    return sub_23B50D344();
  }

  else
  {
    sub_23B3AF918();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133918, &qword_23B5194B0);
    return sub_23B50D354();
  }
}

uint64_t sub_23B475BA8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v33 = a7;
  v34 = a8;
  v30 = a5;
  v31 = a6;
  v27 = a3;
  v28 = a4;
  v32 = a2;
  v26 = a1;
  v29 = a9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338F0, &qword_23B519468);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1331D0, &qword_23B5168C8);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v25 - v15;
  v17 = type metadata accessor for DayPrecipitationSummary(0);
  v18 = sub_23B4778AC(&qword_280B422D8, type metadata accessor for DayPrecipitationSummary, &protocol conformance descriptor for DayPrecipitationSummary);
  v19 = sub_23B4778AC(&qword_280B422E8, type metadata accessor for DayPrecipitationSummary, &protocol conformance descriptor for DayPrecipitationSummary);
  v20 = sub_23B4778AC(&qword_280B422E0, type metadata accessor for DayPrecipitationSummary, &protocol conformance descriptor for DayPrecipitationSummary);
  v35[0] = v17;
  v35[1] = v18;
  v35[2] = v19;
  v35[3] = v20;
  v21 = type metadata accessor for DailyWeatherSummaryQuery(0, v35);
  (*(*(v21 - 8) + 16))(v16, a10, v21);
  v35[0] = v16;
  (*(v11 + 16))(v13, v26, v10);
  v22 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v23 = swift_allocObject();
  (*(v11 + 32))(v23 + v22, v13, v10);
  sub_23B46B2FC(v27, v28, v30, v31, v33, v34, v29, v35, sub_23B47748C, v23);

  return sub_23B398890(v16, qword_27E1331D0, &qword_23B5168C8);
}

uint64_t sub_23B475E6C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132250, &unk_23B5164B0);
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338F8, &qword_23B519470);
  MEMORY[0x28223BE20](v1);
  v3 = (v5 - v2);
  sub_23B3A23E0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5[1] = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338F0, &qword_23B519468);
    return sub_23B50D344();
  }

  else
  {
    sub_23B3AF918();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338F0, &qword_23B519468);
    return sub_23B50D354();
  }
}

uint64_t sub_23B475FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v7 + 112) = a6;
  *(v7 + 120) = v6;
  *(v7 + 208) = a5;
  *(v7 + 96) = a3;
  *(v7 + 104) = a4;
  *(v7 + 80) = a1;
  *(v7 + 88) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133928, &qword_23B5194C0);
  *(v7 + 128) = swift_task_alloc();
  *(v7 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132240, &qword_23B510230);
  *(v7 + 144) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23B4760CC, 0, 0);
}

uint64_t sub_23B4760CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_180_0();
  OUTLINED_FUNCTION_232_0();
  OUTLINED_FUNCTION_229_0();
  v15 = OUTLINED_FUNCTION_211_0();
  v14[19] = type metadata accessor for HourTemperatureStatistics(v15);
  v14[20] = sub_23B4778AC(&qword_280B42228, type metadata accessor for HourTemperatureStatistics, &protocol conformance descriptor for HourTemperatureStatistics);
  OUTLINED_FUNCTION_104_0();
  v14[21] = sub_23B4778AC(v16, type metadata accessor for HourTemperatureStatistics, v17);
  OUTLINED_FUNCTION_103_0();
  v20 = sub_23B4778AC(v18, type metadata accessor for HourTemperatureStatistics, v19);
  v14[22] = v20;
  v21 = OUTLINED_FUNCTION_52_2(v20);
  type metadata accessor for HourlyWeatherStatisticsQuery(v21, v22);
  OUTLINED_FUNCTION_2();
  v23 = OUTLINED_FUNCTION_25_4();
  v24(v23);
  v25 = swift_task_alloc();
  OUTLINED_FUNCTION_151_0(v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  v14[24] = v35;
  *v35 = v36;
  v35[1] = sub_23B476248;
  OUTLINED_FUNCTION_59_2();
  OUTLINED_FUNCTION_129_0();

  return MEMORY[0x2822008A0](v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_23B476248()
{
  OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  *(v3 + 200) = v0;

  if (!v0)
  {
    sub_23B398890(*(v3 + 128), &qword_27E133928, &qword_23B5194C0);
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B47637C()
{
  OUTLINED_FUNCTION_71();
  sub_23B398890(*(v0 + 128), &qword_27E133928, &qword_23B5194C0);

  OUTLINED_FUNCTION_67_1();

  return v1();
}

uint64_t sub_23B476400()
{
  OUTLINED_FUNCTION_188();
  v2 = OUTLINED_FUNCTION_112_0();
  type metadata accessor for HourlyWeatherStatistics(v2, v3);
  OUTLINED_FUNCTION_2();
  (*(v4 + 32))(v1, v0);

  OUTLINED_FUNCTION_45_0();

  return v5();
}

uint64_t sub_23B476498(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v28 = a6;
  v25 = a4;
  v26 = a5;
  v23 = a1;
  v24 = a3;
  v27 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133930, &qword_23B5194D8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133928, &qword_23B5194C0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v23 - v13;
  v15 = type metadata accessor for HourTemperatureStatistics(0);
  v16 = sub_23B4778AC(&qword_280B42228, type metadata accessor for HourTemperatureStatistics, &protocol conformance descriptor for HourTemperatureStatistics);
  v17 = sub_23B4778AC(qword_280B42238, type metadata accessor for HourTemperatureStatistics, &protocol conformance descriptor for HourTemperatureStatistics);
  v18 = sub_23B4778AC(&qword_280B42230, type metadata accessor for HourTemperatureStatistics, &protocol conformance descriptor for HourTemperatureStatistics);
  v29[0] = v15;
  v29[1] = v16;
  v29[2] = v17;
  v29[3] = v18;
  v19 = type metadata accessor for HourlyWeatherStatisticsQuery(0, v29);
  (*(*(v19 - 8) + 16))(v14, a7, v19);
  v29[0] = v14;
  (*(v9 + 16))(v11, v23, v8);
  v20 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v21 = swift_allocObject();
  (*(v9 + 32))(v21 + v20, v11, v8);
  sub_23B46D518(v24, v25, v26, v28, v29, sub_23B4779A0, v21);

  return sub_23B398890(v14, &qword_27E133928, &qword_23B5194C0);
}

uint64_t sub_23B47674C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132240, &qword_23B510230);
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133938, &qword_23B5194E0);
  MEMORY[0x28223BE20](v1);
  v3 = (v5 - v2);
  sub_23B3A23E0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5[1] = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133930, &qword_23B5194D8);
    return sub_23B50D344();
  }

  else
  {
    sub_23B3AF918();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133930, &qword_23B5194D8);
    return sub_23B50D354();
  }
}

uint64_t sub_23B4768C8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a6;
  v37 = a4;
  v38 = a5;
  v35 = a1;
  v36 = a3;
  v39 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133908, &qword_23B519488);
  v6 = *(v34 - 8);
  v33 = *(v6 + 64);
  MEMORY[0x28223BE20](v34);
  v32 = &v28 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133900, &qword_23B519480);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  v30 = type metadata accessor for MonthTemperatureStatistics(0);
  v29 = sub_23B4778AC(&qword_280B420D0, type metadata accessor for MonthTemperatureStatistics, &protocol conformance descriptor for MonthTemperatureStatistics);
  v12 = sub_23B4778AC(qword_280B420E0, type metadata accessor for MonthTemperatureStatistics, &protocol conformance descriptor for MonthTemperatureStatistics);
  v13 = sub_23B4778AC(&qword_280B420D8, type metadata accessor for MonthTemperatureStatistics, &protocol conformance descriptor for MonthTemperatureStatistics);
  v14 = type metadata accessor for MonthPrecipitationStatistics(0);
  v15 = sub_23B4778AC(&qword_280B41D40, type metadata accessor for MonthPrecipitationStatistics, &protocol conformance descriptor for MonthPrecipitationStatistics);
  v16 = sub_23B4778AC(&qword_280B41D50, type metadata accessor for MonthPrecipitationStatistics, &protocol conformance descriptor for MonthPrecipitationStatistics);
  v17 = sub_23B4778AC(&qword_280B41D48, type metadata accessor for MonthPrecipitationStatistics, &protocol conformance descriptor for MonthPrecipitationStatistics);
  v18 = *(v9 + 56);
  v40 = v30;
  v41 = v29;
  v42 = v12;
  v43 = v13;
  v19 = type metadata accessor for MonthlyWeatherStatisticsQuery(0, &v40);
  v20 = v31;
  (*(*(v19 - 8) + 16))(v11, v31, v19);
  v43 = v17;
  v44[0] = v11;
  v21 = &v11[*(v9 + 56)];
  v40 = v14;
  v41 = v15;
  v42 = v16;
  v22 = type metadata accessor for MonthlyWeatherStatisticsQuery(0, &v40);
  (*(*(v22 - 8) + 16))(v21, v20 + v18, v22);
  v44[1] = v21;
  v23 = v32;
  v24 = v34;
  (*(v6 + 16))(v32, v35, v34);
  v25 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v26 = swift_allocObject();
  (*(v6 + 32))(v26 + v25, v23, v24);
  sub_23B46EE6C(v36, v37, v38, v44, sub_23B477684, v26);

  return sub_23B398890(v11, &qword_27E133900, &qword_23B519480);
}

uint64_t sub_23B476C80()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338C0, &unk_23B5193E8);
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133910, &unk_23B519490);
  MEMORY[0x28223BE20](v1);
  v3 = (v5 - v2);
  sub_23B3A23E0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5[1] = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133908, &qword_23B519488);
    return sub_23B50D344();
  }

  else
  {
    sub_23B3AF918();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133908, &qword_23B519488);
    return sub_23B50D354();
  }
}

uint64_t sub_23B476DFC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_23B476E3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23B476E88()
{
  OUTLINED_FUNCTION_168();
  v0 = OUTLINED_FUNCTION_253_0();
  OUTLINED_FUNCTION_28_0(v0);
  v1 = sub_23B50AEF4();
  OUTLINED_FUNCTION_3(v1);
  OUTLINED_FUNCTION_125_0();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_217_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_42_5(v3);

  return sub_23B471CD8(v5, v6, v7, v8, v9);
}

uint64_t sub_23B476F90()
{
  OUTLINED_FUNCTION_168();
  v0 = OUTLINED_FUNCTION_253_0();
  OUTLINED_FUNCTION_28_0(v0);
  v1 = sub_23B50AEF4();
  OUTLINED_FUNCTION_3(v1);
  OUTLINED_FUNCTION_125_0();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_217_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_42_5(v3);

  return sub_23B472438(v5, v6, v7, v8, v9);
}

uint64_t sub_23B477098()
{
  OUTLINED_FUNCTION_188();
  v3 = v2;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  *(v1 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_23B477CAC;

  return sub_23B472C08(v3, v5, v4);
}

uint64_t objectdestroy_56Tm()
{
  OUTLINED_FUNCTION_21();
  v1 = sub_23B50AA24();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = sub_23B50AEF4();
  OUTLINED_FUNCTION_5();
  v9 = v8;
  v10 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);

  (*(v3 + 8))(v0 + v4, v1);
  (*(v9 + 8))(v0 + v10, v7);
  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

uint64_t sub_23B47726C()
{
  OUTLINED_FUNCTION_168();
  v0 = OUTLINED_FUNCTION_253_0();
  OUTLINED_FUNCTION_28_0(v0);
  v1 = sub_23B50AEF4();
  OUTLINED_FUNCTION_3(v1);
  OUTLINED_FUNCTION_125_0();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_217_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_42_5(v3);

  return sub_23B47370C(v5, v6, v7, v8, v9);
}

uint64_t sub_23B477374()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v1 = *v0;
  OUTLINED_FUNCTION_19_0();
  *v2 = v1;

  OUTLINED_FUNCTION_67_1();

  return v3();
}

uint64_t sub_23B4774D8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1331D0, &qword_23B5168C8);
  OUTLINED_FUNCTION_28_0(v5);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = sub_23B50AD24();
  OUTLINED_FUNCTION_28_0(v10);
  v12 = (v7 + v9 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = sub_23B50AEF4();
  OUTLINED_FUNCTION_28_0(v13);
  OUTLINED_FUNCTION_43_5();
  return sub_23B46C38C(a1, a2, v2 + v7, v2 + v12, v2 + v15, *(v2 + v14), *(v2 + v14 + 8));
}

uint64_t sub_23B4776AC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_3(v6);
  v8 = v4 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return a4(a1, v8);
}

uint64_t sub_23B477730()
{
  OUTLINED_FUNCTION_209_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133900, &qword_23B519480);
  OUTLINED_FUNCTION_28_0(v0);
  OUTLINED_FUNCTION_43_5();
  v1 = OUTLINED_FUNCTION_239_0();
  return sub_23B46FBDC(v1, v2, v3, v4, v5);
}

uint64_t sub_23B4778AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_76Tm(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  OUTLINED_FUNCTION_264();

  return swift_deallocObject();
}

uint64_t objectdestroy_110Tm(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_138_0();
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  sub_23B50C7D4();
  OUTLINED_FUNCTION_6();
  (*(v5 + 8))(v4);

  return swift_deallocObject();
}

uint64_t sub_23B477AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = OUTLINED_FUNCTION_265(a1, a2, a3);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_28_0(v8);
  OUTLINED_FUNCTION_251_0();
  v9 = OUTLINED_FUNCTION_243_0();
  return a5(v9);
}

uint64_t objectdestroy_11Tm()
{

  OUTLINED_FUNCTION_139_0();

  return swift_deallocObject();
}

uint64_t sub_23B477C04()
{
  OUTLINED_FUNCTION_220();
  v1(0);
  OUTLINED_FUNCTION_2();
  v2 = OUTLINED_FUNCTION_65();
  v3(v2);
  return v0;
}

id sub_23B477C58(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

void sub_23B477C64(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t OUTLINED_FUNCTION_60_2(uint64_t a1, uint64_t a2)
{

  return sub_23B50D834();
}

uint64_t OUTLINED_FUNCTION_90_0(uint64_t a1)
{

  return sub_23B50B074();
}

void OUTLINED_FUNCTION_120_0(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  *(v2 - 184) = v1;
  *(v2 - 176) = v3;
}

uint64_t OUTLINED_FUNCTION_178_0()
{
  *(v0 + v1) = *(v3 - 268) & 1;
  v5 = v0 + v2;
  v6 = *(v3 - 232);
  *(v5 + 8) = *(v3 - 240);
  *(v5 + 16) = v6;
}

void OUTLINED_FUNCTION_199_0(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);
  v3 = *(v1 - 616);
  *(v1 - 224) = v2;
  *(v1 - 216) = v3;
}

void OUTLINED_FUNCTION_202_0(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  *(v2 - 240) = v1;
  *(v2 - 232) = v3;
}

uint64_t OUTLINED_FUNCTION_206_0()
{

  return sub_23B3B0A98();
}

uint64_t OUTLINED_FUNCTION_220_0(unint64_t *a1)
{

  return sub_23B4778AC(a1, v2, v1);
}

uint64_t OUTLINED_FUNCTION_256_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 - 312);

  return type metadata accessor for WeatherQuery(0, v6, a3, a4);
}

uint64_t OUTLINED_FUNCTION_257_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 - 336);

  return type metadata accessor for WeatherQuery(0, v6, a3, a4);
}

uint64_t OUTLINED_FUNCTION_258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 - 272);

  return type metadata accessor for WeatherQuery(0, v6, a3, a4);
}

__n128 OUTLINED_FUNCTION_271@<Q0>(char a1@<W8>)
{
  result = *v1;
  *(v2 - 144) = *v1;
  *(v2 - 128) = a1 & 1;
  return result;
}

void OUTLINED_FUNCTION_300(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0x20u);
}

uint64_t OUTLINED_FUNCTION_301(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
}

uint64_t OUTLINED_FUNCTION_302(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_23B50B0C4();
}

uint64_t OUTLINED_FUNCTION_303()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_305()
{
}

uint64_t OUTLINED_FUNCTION_306()
{

  return sub_23B3AF918();
}

uint64_t HourlyWeatherStatistics.init(hours:baselineStartDate:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  *a8 = a1;
  v15[0] = a4;
  v15[1] = a5;
  v15[2] = a6;
  v15[3] = a7;
  v11 = type metadata accessor for HourlyWeatherStatistics(0, v15);
  v12 = *(v11 + 52);
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  (*(v13 + 32))(&a8[v12], a2);
  return sub_23B3CA20C(a3, &a8[*(v11 + 56)]);
}

uint64_t HourlyWeatherStatistics.hours.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t HourlyWeatherStatistics.baselineStartDate.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t HourlyWeatherStatistics.baselineStartDate.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v6 = *(v5 + 40);

  return v6(v2 + v4, a1);
}

uint64_t sub_23B478564(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7372756F68 && a2 == 0xE500000000000000;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x800000023B536030 == a2;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_23B50D834();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_23B478678(char a1)
{
  if (!a1)
  {
    return 0x7372756F68;
  }

  if (a1 == 1)
  {
    return 0xD000000000000011;
  }

  return 0x617461646174656DLL;
}

uint64_t sub_23B478708(uint64_t a1)
{
  sub_23B50D8C4();
  sub_23B3DE0C0(v3, *v1);
  return sub_23B50D914();
}

uint64_t sub_23B478764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B478564(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B4787C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B3E64C0();
  *a1 = result;
  return result;
}

uint64_t sub_23B4787F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_23B478848(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t HourlyWeatherStatistics.encode(to:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 32);
  v19 = *(a2 + 16);
  v20 = v5;
  v18[1] = a2;
  v23[0] = v19;
  v23[1] = v5;
  type metadata accessor for HourlyWeatherStatistics.CodingKeys(255, v23);
  OUTLINED_FUNCTION_3_32();
  swift_getWitnessTable();
  v6 = sub_23B50D804();
  OUTLINED_FUNCTION_5();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = v18 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B50D974();
  *&v23[0] = *v3;
  v24 = 0;
  sub_23B50D304();
  v22 = v20;
  swift_getWitnessTable();
  v12 = v21;
  sub_23B50D7F4();
  if (!v12)
  {
    LOBYTE(v23[0]) = 1;
    sub_23B50AD24();
    OUTLINED_FUNCTION_4_22();
    sub_23B478FAC(v13, v14, MEMORY[0x277CC9580]);
    OUTLINED_FUNCTION_6_15();
    LOBYTE(v23[0]) = 2;
    type metadata accessor for WeatherMetadata(0);
    OUTLINED_FUNCTION_2_29();
    sub_23B478FAC(v15, v16, &protocol conformance descriptor for WeatherMetadata);
    OUTLINED_FUNCTION_6_15();
  }

  return (*(v8 + 8))(v11, v6);
}

uint64_t HourlyWeatherStatistics.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v43 = a6;
  v45 = type metadata accessor for WeatherMetadata(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6_0();
  v44 = v12;
  sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v48 = v14;
  v49 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_0();
  v47 = v15;
  v56 = a2;
  v57 = a3;
  v58 = a4;
  v59 = a5;
  type metadata accessor for HourlyWeatherStatistics.CodingKeys(255, &v56);
  OUTLINED_FUNCTION_3_32();
  swift_getWitnessTable();
  v52 = sub_23B50D754();
  OUTLINED_FUNCTION_5();
  v46 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v40 - v18;
  v50 = a2;
  v51 = a3;
  v56 = a2;
  v57 = a3;
  v58 = a4;
  v59 = a5;
  v20 = type metadata accessor for HourlyWeatherStatistics(0, &v56);
  OUTLINED_FUNCTION_5();
  v42 = v21;
  MEMORY[0x28223BE20](v22);
  v24 = (&v40 - v23);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v53 = v19;
  v25 = v54;
  sub_23B50D964();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = v46;
  v26 = v47;
  v41 = v24;
  v54 = a1;
  v29 = v48;
  v28 = v49;
  sub_23B50D304();
  v60 = 0;
  v55 = v51;
  swift_getWitnessTable();
  sub_23B50D734();
  v51 = v56;
  *v41 = v56;
  LOBYTE(v56) = 1;
  OUTLINED_FUNCTION_4_22();
  sub_23B478FAC(v30, v31, MEMORY[0x277CC95A0]);
  v32 = v26;
  sub_23B50D734();
  v50 = v20;
  v33 = v41;
  (*(v29 + 32))(v41 + *(v20 + 52), v32, v28);
  LOBYTE(v56) = 2;
  OUTLINED_FUNCTION_2_29();
  sub_23B478FAC(v34, v35, &protocol conformance descriptor for WeatherMetadata);
  v36 = v44;
  sub_23B50D734();
  (*(v27 + 8))(v53, v52);
  v37 = v50;
  sub_23B3CA20C(v36, v33 + *(v50 + 56));
  v38 = v42;
  (*(v42 + 16))(v43, v33, v37);
  __swift_destroy_boxed_opaque_existential_1(v54);
  return (*(v38 + 8))(v33, v37);
}