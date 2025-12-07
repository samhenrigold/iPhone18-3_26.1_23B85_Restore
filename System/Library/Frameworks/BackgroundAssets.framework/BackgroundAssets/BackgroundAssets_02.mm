uint64_t AssetPack.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AssetPack.userInfo.getter()
{
  v1 = *(v0 + 32);
  sub_236E6D7BC(v1, *(v0 + 40));
  return v1;
}

uint64_t AssetPack.description.getter()
{
  v1 = v0[5];
  if (v1 >> 60 == 15)
  {
    sub_236E82264();
    MEMORY[0x2383BFD30](0xD000000000000012, 0x8000000236E8AAE0);
    MEMORY[0x2383BFD30](*v0, v0[1]);
    MEMORY[0x2383BFD30](0xD000000000000010, 0x8000000236E8AB00);
    v2 = sub_236E82484();
    MEMORY[0x2383BFD30](v2);

    MEMORY[0x2383BFD30](0x6E6F697372657620, 0xEA0000000000203ALL);
    v3 = sub_236E82484();
    MEMORY[0x2383BFD30](v3);

    MEMORY[0x2383BFD30](62, 0xE100000000000000);
  }

  else
  {
    v4 = v0[4];
    sub_236E59298(v4, v1);
    sub_236E82264();
    MEMORY[0x2383BFD30](0xD000000000000012, 0x8000000236E8AAE0);
    MEMORY[0x2383BFD30](*v0, v0[1]);
    MEMORY[0x2383BFD30](0xD000000000000010, 0x8000000236E8AB00);
    v5 = sub_236E82484();
    MEMORY[0x2383BFD30](v5);

    MEMORY[0x2383BFD30](0x6E6F697372657620, 0xEA0000000000203ALL);
    v6 = sub_236E82484();
    MEMORY[0x2383BFD30](v6);

    MEMORY[0x2383BFD30](0x6E69207265737520, 0xEC000000203A6F66);
    v7 = sub_236E81A14();
    MEMORY[0x2383BFD30](v7);

    MEMORY[0x2383BFD30](62, 0xE100000000000000);
    sub_236E592EC(v4, v1);
  }

  return 0;
}

uint64_t sub_236E68560()
{
  v0 = sub_236E81DA4();
  __swift_allocate_value_buffer(v0, qword_27DE88220);
  __swift_project_value_buffer(v0, qword_27DE88220);
  return sub_236E81D94();
}

uint64_t AssetPack.init(id:downloadSize:version:downloadPolicy:url:appGroupID:appleID:appleVersionID:appleInternalVersionID:)@<X0>(objc_class *a1@<X0>, uint64_t a2@<X1>, objc_class *a3@<X2>, objc_class *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, os_log_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v151 = a5;
  v152 = a6;
  v147 = a2;
  v148 = a3;
  v146 = a1;
  v139 = a7;
  v140 = a12;
  v153 = a10;
  v154 = a11;
  v138 = sub_236E81A64();
  v150 = *(v138 - 8);
  v15 = MEMORY[0x28223BE20](v138);
  v17 = &v133 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v133 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v142 = &v133 - v22;
  MEMORY[0x28223BE20](v21);
  v141 = &v133 - v23;
  v24 = sub_236E819F4();
  v25 = *(v24 - 8);
  v155 = v24;
  v156 = v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v133 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v133 - v29;
  v31 = sub_236E81AD4();
  v32 = *(v31 - 8);
  v33 = MEMORY[0x28223BE20](v31);
  v34 = MEMORY[0x28223BE20](v33);
  v37 = &v133 - v36;
  v143 = a8;
  v144 = v34;
  v149 = a4;
  v145 = v32;
  if (a8)
  {
    v137 = a9;
    v38 = qword_27DE87AE0;

    if (v38 != -1)
    {
      swift_once();
    }

    v39 = sub_236E81DA4();
    __swift_project_value_buffer(v39, qword_27DE88220);
    v40 = sub_236E820E4();
    (*(v32 + 16))(v37, v151, v31);
    v41 = v156;
    v42 = v30;
    (*(v156 + 16))(v30, v152, v155);
    v43 = v150;
    v44 = *(v150 + 16);
    v45 = v138;
    v44(v141, v153, v138);
    v44(v142, v154, v45);

    v46 = v147;

    v47 = sub_236E81D84();

    v136 = v40;
    if (os_log_type_enabled(v47, v40))
    {
      v48 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      v157[0] = v135;
      *v48 = 136448258;
      *(v48 + 4) = sub_236E381CC(v146, v46, v157);
      *(v48 + 12) = 2048;
      *(v48 + 14) = v148;
      *(v48 + 22) = 2048;
      *(v48 + 24) = v149;
      *(v48 + 32) = 2082;
      sub_236E6D7D0(&qword_27DE88240, MEMORY[0x277D25BB8], MEMORY[0x277D25BD0]);
      v134 = v47;
      v49 = v144;
      v50 = sub_236E82484();
      v52 = v51;
      (*(v145 + 8))(v37, v49);
      v53 = v42;
      v54 = sub_236E381CC(v50, v52, v157);

      *(v48 + 34) = v54;
      *(v48 + 42) = 2082;
      sub_236E6D7D0(&unk_27DE87B30, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v55 = v155;
      v56 = sub_236E82484();
      v58 = v57;
      (*(v41 + 8))(v53, v55);
      v59 = sub_236E381CC(v56, v58, v157);

      *(v48 + 44) = v59;
      *(v48 + 52) = 2082;
      v60 = v139;
      v61 = sub_236E381CC(v139, v143, v157);

      *(v48 + 54) = v61;
      *(v48 + 62) = 2082;
      sub_236E6D7D0(&qword_27DE88248, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v62 = v141;
      v63 = sub_236E82484();
      v65 = v64;
      v66 = *(v43 + 8);
      v67 = v62;
      v68 = v148;
      v66(v67, v45);
      v69 = sub_236E381CC(v63, v65, v157);

      *(v48 + 64) = v69;
      *(v48 + 72) = 2082;
      v70 = v142;
      v71 = sub_236E82484();
      v73 = v72;
      v66(v70, v45);
      v43 = v150;
      v74 = sub_236E381CC(v71, v73, v157);

      *(v48 + 74) = v74;
      v75 = v147;
      *(v48 + 82) = 2048;
      v76 = v140;
      *(v48 + 84) = v140;
      v77 = v134;
      _os_log_impl(&dword_236E28000, v134, v136, "Init ID: %{public}s download size: %ld version: %ld download policy: %{public}s URL: %{public}s app group ID: %{public}s Apple ID: %{public}s Apple version ID: %{public}s Apple internal version ID: %llu", v48, 0x5Cu);
      v78 = v135;
      swift_arrayDestroy();
      MEMORY[0x2383C0E50](v78, -1, -1);
      MEMORY[0x2383C0E50](v48, -1, -1);

      v79 = v149;
      v81 = v145;
      v80 = v146;
      v82 = v55;
      v83 = v144;
    }

    else
    {

      v118 = *(v43 + 8);
      v118(v142, v45);
      v118(v141, v45);
      v82 = v155;
      (*(v41 + 8))(v42, v155);
      v81 = v145;
      v119 = v37;
      v83 = v144;
      (*(v145 + 8))(v119, v144);
      v75 = v46;
      v60 = v139;
      v76 = v140;
      v68 = v148;
      v79 = v149;
      v80 = v146;
    }

    a9 = v137;
  }

  else
  {
    v84 = v35;
    if (qword_27DE87AE0 != -1)
    {
      swift_once();
    }

    v85 = sub_236E81DA4();
    __swift_project_value_buffer(v85, qword_27DE88220);
    v86 = sub_236E820E4();
    (*(v32 + 16))(v84, v151, v31);
    v87 = v28;
    (*(v156 + 16))(v28, v152, v155);
    v88 = *(v150 + 16);
    v89 = v20;
    v90 = v20;
    v45 = v138;
    v88(v90, v153, v138);
    v88(v17, v154, v45);
    v75 = v147;

    v91 = sub_236E81D84();

    LODWORD(v142) = v86;
    if (os_log_type_enabled(v91, v86))
    {
      v92 = v89;
      v93 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      v157[0] = v141;
      *v93 = 136448002;
      *(v93 + 4) = sub_236E381CC(v146, v75, v157);
      *(v93 + 12) = 2048;
      v94 = v149;
      *(v93 + 14) = v148;
      *(v93 + 22) = 2048;
      *(v93 + 24) = v94;
      *(v93 + 32) = 2082;
      sub_236E6D7D0(&qword_27DE88240, MEMORY[0x277D25BB8], MEMORY[0x277D25BD0]);
      v137 = v91;
      v95 = v144;
      v96 = sub_236E82484();
      v98 = v97;
      (*(v145 + 8))(v84, v95);
      v99 = sub_236E381CC(v96, v98, v157);

      *(v93 + 34) = v99;
      *(v93 + 42) = 2082;
      sub_236E6D7D0(&unk_27DE87B30, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v100 = v155;
      v101 = sub_236E82484();
      v103 = v102;
      (*(v156 + 8))(v87, v100);
      v104 = sub_236E381CC(v101, v103, v157);

      *(v93 + 44) = v104;
      *(v93 + 52) = 2082;
      sub_236E6D7D0(&qword_27DE88248, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v105 = v92;
      v106 = sub_236E82484();
      v108 = v107;
      v109 = *(v150 + 8);
      v109(v105, v45);
      v110 = sub_236E381CC(v106, v108, v157);

      *(v93 + 54) = v110;
      *(v93 + 62) = 2082;
      v111 = sub_236E82484();
      v113 = v112;
      v109(v17, v45);
      v114 = sub_236E381CC(v111, v113, v157);

      *(v93 + 64) = v114;
      v75 = v147;
      *(v93 + 72) = 2048;
      v76 = v140;
      *(v93 + 74) = v140;
      v115 = v137;
      _os_log_impl(&dword_236E28000, v137, v142, "Init ID: %{public}s download size: %ld version: %ld download policy: %{public}s URL: %{public}s Apple ID: %{public}s Apple version ID: %{public}s Apple internal version ID: %llu", v93, 0x52u);
      v116 = v141;
      swift_arrayDestroy();
      MEMORY[0x2383C0E50](v116, -1, -1);
      v117 = v93;
      v68 = v148;
      MEMORY[0x2383C0E50](v117, -1, -1);

      v79 = v149;
      v43 = v150;
      v81 = v145;
      v80 = v146;
      v60 = v139;
      v82 = v155;
      v83 = v144;
    }

    else
    {

      v120 = v17;
      v43 = v150;
      v121 = *(v150 + 8);
      v121(v120, v45);
      v121(v89, v45);
      v82 = v155;
      (*(v156 + 8))(v87, v155);
      v83 = v144;
      v81 = v145;
      (*(v145 + 8))(v84, v144);
      v60 = v139;
      v76 = v140;
      v68 = v148;
      v79 = v149;
      v80 = v146;
    }
  }

  a9->isa = v80;
  a9[1].isa = v75;
  a9[2].isa = v68;
  a9[3].isa = v79;
  *&a9[4].isa = xmmword_236E85660;
  v122 = type metadata accessor for AssetPack(0);
  (*(v81 + 32))(a9 + v122[8], v151, v83);
  (*(v156 + 32))(a9 + v122[9], v152, v82);
  v123 = (a9 + v122[10]);
  v124 = v143;
  *v123 = v60;
  v123[1] = v124;
  *(&a9->isa + v122[11]) = 1;
  v125 = a9 + v122[12];
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88238, &qword_236E85670);
  v127 = *(v126 + 48);
  v128 = *(v126 + 64);
  v129 = *(v43 + 32);
  v129(v125, v153, v45);
  v129(&v125[v127], v154, v45);
  *&v125[v128] = v76;
  v130 = *MEMORY[0x277D25C48];
  v131 = sub_236E81C64();
  return (*(*(v131 - 8) + 104))(v125, v130, v131);
}

uint64_t AssetPack.init(from:configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v225 = a3;
  v269[5] = *MEMORY[0x277D85DE8];
  v237 = sub_236E82294();
  v234 = *(v237 - 8);
  MEMORY[0x28223BE20](v237);
  v238 = &v214 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88250, &qword_236E85678);
  MEMORY[0x28223BE20](v6 - 8);
  v227 = &v214 - v7;
  v228 = sub_236E81C64();
  v224 = *(v228 - 8);
  MEMORY[0x28223BE20](v228);
  v223 = &v214 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v255 = sub_236E81AD4();
  v246 = *(v255 - 8);
  MEMORY[0x28223BE20](v255);
  v235 = &v214 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88258, &qword_236E85680);
  v244 = *(v247 - 8);
  MEMORY[0x28223BE20](v247);
  v250 = &v214 - v10;
  v221 = sub_236E81A64();
  v218 = *(v221 - 8);
  v11 = MEMORY[0x28223BE20](v221);
  v219 = &v214 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v220 = &v214 - v13;
  v253 = sub_236E819F4();
  v245 = *(v253 - 8);
  v14 = MEMORY[0x28223BE20](v253);
  v231 = &v214 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v222 = &v214 - v16;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88260, &qword_236E85688);
  v226 = *(v229 - 8);
  MEMORY[0x28223BE20](v229);
  v230 = &v214 - v17;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88268, &qword_236E85690);
  v232 = *(v233 - 8);
  MEMORY[0x28223BE20](v233);
  v236 = &v214 - v18;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88270, &qword_236E85698);
  v239 = *(v240 - 8);
  MEMORY[0x28223BE20](v240);
  v242 = &v214 - v19;
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88278, &unk_236E856A0);
  v241 = *(v243 - 1);
  MEMORY[0x28223BE20](v243);
  v248 = &v214 - v20;
  v21 = type metadata accessor for AssetPack(0);
  MEMORY[0x28223BE20](v21);
  v256 = (&v214 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(a2 + 8);
  v252 = *a2;
  v259 = *(a2 + 16);
  v25 = *(a2 + 24);
  v24 = *(a2 + 32);
  v26 = *(a2 + 40);
  if (qword_27DE87AE0 != -1)
  {
    swift_once();
  }

  v27 = sub_236E81DA4();
  v28 = __swift_project_value_buffer(v27, qword_27DE88220);
  v29 = sub_236E820E4();
  sub_236E6DA84(a1, v269);

  sub_236E6D818(v24, v26);
  v30 = sub_236E81D84();

  sub_236E38C64(v24, v26);
  v249 = v29;
  v31 = os_log_type_enabled(v30, v29);
  v254 = v21;
  v260 = a1;
  v261 = v26;
  v257 = v23;
  v258 = v25;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v217 = v28;
    v33 = v32;
    v216 = swift_slowAlloc();
    v262 = v216;
    *v33 = 136446466;
    v215 = v30;
    v34 = __swift_project_boxed_opaque_existential_0(v269, v269[3]);
    MEMORY[0x28223BE20](v34);
    (*(v36 + 16))(&v214 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
    v37 = sub_236E81ED4();
    v39 = v38;
    __swift_destroy_boxed_opaque_existential_0(v269);
    v40 = sub_236E381CC(v37, v39, &v262);

    *(v33 + 4) = v40;
    *(v33 + 12) = 2082;
    v263 = v252;
    v264 = v23;
    v41 = v259;
    v265 = v259;
    v266 = v258;
    v267 = v24;
    v268 = v26;

    sub_236E6D818(v24, v26);
    v42 = AssetPackManifest.DecodingConfiguration.description.getter();
    v44 = v43;
    v45 = v24;
    v46 = v267;
    v47 = v268;

    v48 = v45;
    v49 = v41;
    sub_236E38C64(v46, v47);
    v50 = sub_236E381CC(v42, v44, &v262);
    v51 = v258;

    *(v33 + 14) = v50;
    v52 = v215;
    _os_log_impl(&dword_236E28000, v215, v249, "Init from: %{public}s configuration: %{public}s", v33, 0x16u);
    v53 = v216;
    swift_arrayDestroy();
    MEMORY[0x2383C0E50](v53, -1, -1);
    MEMORY[0x2383C0E50](v33, -1, -1);

    if (v51 <= 5)
    {
      goto LABEL_5;
    }

LABEL_11:
    v62 = v48;
    v63 = sub_236E82104();

    v64 = v261;
    sub_236E6D818(v62, v261);
    v65 = sub_236E81D84();

    sub_236E38C64(v62, v64);
    LODWORD(v251) = v63;
    if (os_log_type_enabled(v65, v63))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v214 = v62;
      v68 = v67;
      v263 = v67;
      *v66 = 136315138;
      v69 = sub_236E82124();
      v71 = sub_236E381CC(v69, v70, &v263);
      v49 = v259;
      v51 = v258;

      *(v66 + 4) = v71;
      _os_log_impl(&dword_236E28000, v65, v251, "The manifest data source “%s” is unknown.", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v68);
      v72 = v68;
      v48 = v214;
      MEMORY[0x2383C0E50](v72, -1, -1);
      MEMORY[0x2383C0E50](v66, -1, -1);
    }

    else
    {

      v48 = v62;
      v49 = v259;
    }

    sub_236E6D828(v73, v74, v75);
    v61 = swift_allocError();
    *v89 = v51;
    *(v89 + 8) = 0;
    *(v89 + 16) = 4;
    swift_willThrow();
    LODWORD(v251) = 0;
    LODWORD(v247) = 0;
    LODWORD(v248) = 0;
    v249 = 0;
    LODWORD(v250) = 0;
    goto LABEL_22;
  }

  __swift_destroy_boxed_opaque_existential_0(v269);
  v49 = v259;
  v48 = v24;
  v51 = v25;
  if (v25 > 5)
  {
    goto LABEL_11;
  }

LABEL_5:
  if (((1 << v51) & 0x34) != 0)
  {
    v54 = sub_236E820D4();
    v55 = sub_236E81D84();
    if (os_log_type_enabled(v55, v54))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_236E28000, v55, v54, "Decoding an asset pack using a local-cache (third-party-server/development-override) configuration…", v56, 2u);
      MEMORY[0x2383C0E50](v56, -1, -1);
    }

    v57 = __swift_project_boxed_opaque_existential_0(v260, v260[3]);
    sub_236E6D87C(v57, v58, v59);
    v60 = v251;
    sub_236E825A4();
    v61 = v60;
    if (v60)
    {
      LODWORD(v251) = 0;
      LODWORD(v247) = 0;
      LODWORD(v248) = 0;
      v249 = 0;
      LODWORD(v250) = 0;
LABEL_22:
      v79 = v257;
      goto LABEL_23;
    }

    LOBYTE(v263) = 0;
    v88 = sub_236E82404();
    v90 = v256;
    *v256 = v88;
    v90[1] = v91;
    LOBYTE(v263) = 1;
    v90[2] = sub_236E82414();
    LOBYTE(v263) = 2;
    v90[3] = sub_236E82414();
    LOBYTE(v263) = 3;
    sub_236E823F4();
    v79 = v257;
    v251 = 0;
    v128 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE882B0, &qword_236E856C0);
    v129 = sub_236E81E54();

    v263 = 0;
    v130 = [v128 dataWithJSONObject:v129 options:8 error:&v263];

    v131 = v263;
    v49 = v259;
    if (v130)
    {
      v132 = sub_236E81A34();
      v134 = v133;

      v135 = v256;
      v256[4] = v132;
      v135[5] = v134;
      goto LABEL_43;
    }

    v144 = v131;
    v61 = sub_236E81994();

    swift_willThrow();
    v145 = v247;
    v263 = v61;
    v122 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87E20, &qword_236E856B0);
    v123 = v238;
    v124 = v237;
    if (swift_dynamicCast())
    {
      v251 = 0;
      v125 = v234;
      if ((*(v234 + 88))(v123, v124) == *MEMORY[0x277D84158])
      {

        (*(v125 + 96))(v123, v124);
        v126 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88290, &qword_236E856B8) + 48);
        *(v256 + 2) = xmmword_236E85660;
        v127 = sub_236E82284();
        (*(*(v127 - 8) + 8))(&v123[v126], v127);
        __swift_destroy_boxed_opaque_existential_0(v123);

LABEL_43:
        LOBYTE(v263) = 4;
        sub_236E6D7D0(&qword_27DE88298, MEMORY[0x277D25BB8], MEMORY[0x277D25BC8]);
        v136 = v235;
        v137 = v255;
        v138 = v247;
        v139 = v250;
        v140 = v251;
        sub_236E82424();
        v61 = v140;
        if (v140)
        {
          (v244)[1](v139, v138);
          LODWORD(v248) = 0;
          v249 = 0;
          LODWORD(v250) = 0;
          LODWORD(v251) = 1;
          LODWORD(v247) = 1;
          v49 = v259;
          goto LABEL_23;
        }

        (*(v246 + 32))(v256 + v254[8], v136, v137);
        LOBYTE(v263) = 5;
        sub_236E6D7D0(&qword_27DE882A0, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
        v142 = v231;
        v143 = v253;
        sub_236E82424();
        v149 = v254;
        v150 = v256;
        (*(v245 + 32))(v256 + v254[9], v142, v143);
        v151 = (v150 + v149[10]);
        *v151 = v252;
        v151[1] = v79;
        LOBYTE(v263) = 6;
        sub_236E6D7D0(&qword_27DE882A8, MEMORY[0x277D25C50], MEMORY[0x277D25C60]);

        v152 = v227;
        v153 = v247;
        v154 = v228;
        sub_236E823E4();
        (v244)[1](v139, v153);
        v157 = v224;
        v158 = *(v224 + 48);
        v159 = v154;
        if (v158(v152, 1, v154) == 1)
        {
          v160 = v223;
          (*(v157 + 104))(v223, *MEMORY[0x277D25C40], v154);
          v161 = v158(v152, 1, v154) == 1;
          v162 = v152;
          v163 = v225;
          v164 = v259;
          if (!v161)
          {
            sub_236E38DBC(v162, &qword_27DE88250, &qword_236E85678);
          }
        }

        else
        {
          v160 = v223;
          (*(v157 + 32))(v223, v152, v154);
          v163 = v225;
          v164 = v259;
        }

        v168 = v254;
        v169 = v256;
        (*(v157 + 32))(v256 + v254[12], v160, v159);

LABEL_57:
        sub_236E38C64(v48, v261);
        *(v169 + v168[11]) = v164;
        sub_236E393B0(v169, v163);
        __swift_destroy_boxed_opaque_existential_0(v260);
        return sub_236E39414(v169);
      }

      (v244)[1](v250, v145);
      (*(v125 + 8))(v123, v124);
    }

    else
    {
      (v244)[1](v250, v145);
    }

    LODWORD(v247) = 0;
    LODWORD(v248) = 0;
    v249 = 0;
    LODWORD(v250) = 0;
    LODWORD(v251) = 1;
    goto LABEL_23;
  }

  if (((1 << v51) & 3) != 0)
  {
    v76 = sub_236E820D4();
    v77 = sub_236E81D84();
    v78 = os_log_type_enabled(v77, v76);
    v79 = v257;
    if (v78)
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&dword_236E28000, v77, v76, "Decoding an asset pack using an App Store (TestFlight) configuration…", v80, 2u);
      MEMORY[0x2383C0E50](v80, -1, -1);
    }

    v81 = __swift_project_boxed_opaque_existential_0(v260, v260[3]);
    sub_236E6D8D0(v81, v82, v83);
    v84 = v251;
    v85 = sub_236E825A4();
    v61 = v84;
    if (v84)
    {
      LODWORD(v251) = 0;
      LODWORD(v247) = 0;
      LODWORD(v248) = 0;
      v249 = 0;
      LODWORD(v250) = 0;
      v49 = v259;
LABEL_23:
      v93 = sub_236E820F4();

      v94 = v261;
      sub_236E6D818(v48, v261);
      v95 = v61;
      v96 = sub_236E81D84();

      sub_236E38C64(v48, v94);

      LODWORD(v244) = v93;
      if (os_log_type_enabled(v96, v93))
      {
        v97 = v48;
        v98 = swift_slowAlloc();
        v243 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        *v98 = 136446466;
        v263 = v252;
        v264 = v79;
        v265 = v49;
        v266 = v258;
        v267 = v97;
        v268 = v261;
        v269[0] = v99;
        v100 = AssetPackManifest.DecodingConfiguration.description.getter();
        v101 = v61;
        v103 = v102;
        v105 = v267;
        v104 = v268;

        v106 = v256;
        sub_236E38C64(v105, v104);
        v107 = sub_236E381CC(v100, v103, v269);
        v108 = v255;

        *(v98 + 4) = v107;
        *(v98 + 12) = 2114;
        v109 = v101;
        v110 = _swift_stdlib_bridgeErrorToNSError();
        *(v98 + 14) = v110;
        v111 = v243;
        *v243 = v110;
        _os_log_impl(&dword_236E28000, v96, v244, "An asset pack couldn’t be decoded with the configuration “%{public}s”: %{public}@", v98, 0x16u);
        sub_236E38DBC(v111, &qword_27DE88170, &qword_236E853C0);
        v112 = v111;
        v113 = v260;
        MEMORY[0x2383C0E50](v112, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v99);
        MEMORY[0x2383C0E50](v99, -1, -1);
        MEMORY[0x2383C0E50](v98, -1, -1);
      }

      else
      {

        sub_236E38C64(v48, v261);
        v113 = v260;
        v108 = v255;
        v106 = v256;
      }

      swift_willThrow();
      result = __swift_destroy_boxed_opaque_existential_0(v113);
      v115 = v254;
      v116 = v253;
      if (v251)
      {
      }

      if (v247)
      {
        result = sub_236E592EC(v106[4], v106[5]);
      }

      if (v248)
      {
        result = (*(v246 + 8))(v106 + v115[8], v108);
      }

      if (v249)
      {
        result = (*(v245 + 8))(v106 + v115[9], v116);
      }

      if (v250)
      {
      }

      return result;
    }

    LOBYTE(v263) = 2;
    sub_236E6D924(v85, v86, v87);
    sub_236E823C4();
    LOBYTE(v263) = 3;
    v92 = sub_236E82404();
    v117 = v256;
    *v256 = v92;
    v117[1] = v118;
    LOBYTE(v263) = 1;
    v119 = sub_236E82414();
    v117[2] = v119;
    LOBYTE(v263) = 0;
    sub_236E6D978(v119, v120, v121);
    sub_236E823C4();
    LOBYTE(v263) = 0;
    v141 = sub_236E82414();
    v146 = v256;
    v256[3] = v141;
    *(v146 + 2) = xmmword_236E85660;
    LOBYTE(v263) = 2;
    sub_236E6D9CC(v141, v147, v148);
    sub_236E823C4();
    LOBYTE(v263) = 0;
    v155 = sub_236E82404();
    v79 = v257;
    v165 = v156;
    v244 = 0;
    v214 = v48;
    if (v155 == 0x6169746E65737365 && v156 == 0xE90000000000006CLL)
    {
      v167 = v255;
      v166 = v256;
    }

    else
    {
      v167 = v255;
      v166 = v256;
      v170 = v155;
      if ((sub_236E824E4() & 1) == 0)
      {
        if (v170 == 0x637465662D657270 && v165 == 0xE900000000000068 || (sub_236E824E4() & 1) != 0)
        {

          LOBYTE(v263) = 1;
          v180 = v244;
          v181 = sub_236E82404();
          v244 = v180;
          if (v180)
          {
            (*(v226 + 8))(v230, v229);
            (*(v232 + 8))(v236, v233);
            (*(v239 + 8))(v242, v240);
            (*(v241 + 8))(v248, v243);
            LODWORD(v248) = 0;
            v249 = 0;
            LODWORD(v250) = 0;
            LODWORD(v251) = 1;
            LODWORD(v247) = 1;
            v48 = v214;
            v49 = v259;
            v61 = v244;
            goto LABEL_23;
          }

          v175 = v181;
          v176 = v182;
          if (v181 == 0x6E692D7473726966 && v182 == 0xED00006C6C617473 || (sub_236E824E4() & 1) != 0)
          {

            v177 = v166 + v254[8];
            sub_236E81A74();
          }

          else if (v175 == 0x657461647075 && v176 == 0xE600000000000000 || (sub_236E824E4() & 1) != 0)
          {

            v177 = v166 + v254[8];
            sub_236E81A84();
          }

          else
          {
            if (v175 != 0xD000000000000017 || 0x8000000236E8AB80 != v176)
            {
              v187 = sub_236E824E4();
              if ((v187 & 1) == 0)
              {
                goto LABEL_104;
              }
            }

            v177 = v166 + v254[8];
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE882E0, &qword_236E856C8);
            v251 = sub_236E81A94();
            v201 = swift_allocObject();
            v201[1] = xmmword_236E84530;
            sub_236E81A74();
            sub_236E81A84();
            v263 = v201;
            sub_236E6D7D0(&qword_27DE882E8, MEMORY[0x277D25B60], MEMORY[0x277D25B68]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE882F0, &qword_236E856D0);
            sub_236E6DA20();
            sub_236E82194();
          }

          v178 = MEMORY[0x277D25BA8];
        }

        else
        {
          if (v170 != 0x6E616D65642D6E6FLL || v165 != 0xE900000000000064)
          {
            v183 = sub_236E824E4();
            if ((v183 & 1) == 0)
            {
              sub_236E6D828(v183, v184, v185);
              v61 = swift_allocError();
              *v191 = v170;
              *(v191 + 8) = v165;
              *(v191 + 16) = 0;
              swift_willThrow();
              goto LABEL_60;
            }
          }

          v177 = v166 + v254[8];
          v178 = MEMORY[0x277D25BA0];
        }

LABEL_67:
        (*(v246 + 104))(v177, *v178, v167);
        LOBYTE(v263) = 4;
        sub_236E6D7D0(&qword_27DE882A0, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
        v179 = v244;
        sub_236E82424();
        v61 = v179;
        if (v179)
        {
          (*(v226 + 8))(v230, v229);
          (*(v232 + 8))(v236, v233);
          (*(v239 + 8))(v242, v240);
          (*(v241 + 8))(v248, v243);
          v249 = 0;
          LODWORD(v250) = 0;
          LODWORD(v251) = 1;
          LODWORD(v247) = 1;
          v174 = &v271;
        }

        else
        {
          (*(v245 + 32))(v166 + v254[9], v222, v253);
          LOBYTE(v263) = 0;
          sub_236E6D7D0(&qword_27DE882D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
          sub_236E82424();
          LOBYTE(v263) = 1;
          sub_236E82424();
          LOBYTE(v263) = 2;
          v186 = sub_236E82404();
          v244 = 0;
          v192 = v186;
          v194 = v193;

          v195 = sub_236E6C15C(v192, v194);
          v251 = v195;
          if ((v196 & 1) == 0)
          {

            (*(v226 + 8))(v230, v229);
            (*(v232 + 8))(v236, v233);
            (*(v239 + 8))(v242, v240);
            (*(v241 + 8))(v248, v243);
            v168 = v254;
            v203 = v166;
            v204 = (v166 + v254[10]);
            *v204 = v252;
            v204[1] = v79;
            v205 = v166 + v168[12];
            v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88238, &qword_236E85670);
            v207 = *(v206 + 48);
            v208 = *(v206 + 64);
            v209 = *(v218 + 32);
            v210 = v221;
            v209(v205, v220, v221);
            v209(&v205[v207], v219, v210);
            *&v205[v208] = v251;
            v169 = v203;
            (*(v224 + 104))(v205, *MEMORY[0x277D25C48], v228);
            v48 = v214;
            v164 = v259;
            v163 = v225;
            goto LABEL_57;
          }

          sub_236E6D828(v195, v196, v197);
          v61 = swift_allocError();
          *v198 = v192;
          *(v198 + 8) = v194;
          *(v198 + 16) = 2;
          swift_willThrow();
          v199 = *(v218 + 8);
          v200 = v221;
          v199(v219, v221);
          v199(v220, v200);
          (*(v226 + 8))(v230, v229);
          (*(v232 + 8))(v236, v233);
          (*(v239 + 8))(v242, v240);
          (*(v241 + 8))(v248, v243);
          LODWORD(v250) = 0;
          LODWORD(v251) = 1;
          LODWORD(v247) = 1;
          LODWORD(v248) = 1;
          v174 = (&v272 + 4);
        }

LABEL_75:
        *(v174 - 64) = 1;
        v48 = v214;
        v49 = v259;
        goto LABEL_23;
      }
    }

    LOBYTE(v263) = 1;
    v171 = v244;
    v172 = sub_236E82404();
    v61 = v171;
    if (v171)
    {
LABEL_60:
      (*(v226 + 8))(v230, v229);
      (*(v232 + 8))(v236, v233);
      (*(v239 + 8))(v242, v240);
      (*(v241 + 8))(v248, v243);
      LODWORD(v248) = 0;
      v249 = 0;
      LODWORD(v250) = 0;
      LODWORD(v251) = 1;
LABEL_61:
      v174 = &v270;
      goto LABEL_75;
    }

    v175 = v172;
    v176 = v173;
    v244 = 0;
    if (v172 == 0x6E692D7473726966 && v173 == 0xED00006C6C617473 || (sub_236E824E4() & 1) != 0)
    {

      v177 = v166 + v254[8];
      sub_236E81A74();
LABEL_66:
      v178 = MEMORY[0x277D25BB0];
      goto LABEL_67;
    }

    if (v175 == 0x657461647075 && v176 == 0xE600000000000000 || (sub_236E824E4() & 1) != 0)
    {

      v177 = v166 + v254[8];
      sub_236E81A84();
      goto LABEL_66;
    }

    if (v175 == 0xD000000000000017 && 0x8000000236E8AB80 == v176 || (v187 = sub_236E824E4(), (v187 & 1) != 0))
    {

      v177 = v166 + v254[8];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE882E0, &qword_236E856C8);
      v251 = sub_236E81A94();
      v190 = swift_allocObject();
      v190[1] = xmmword_236E84530;
      sub_236E81A74();
      sub_236E81A84();
      v263 = v190;
      sub_236E6D7D0(&qword_27DE882E8, MEMORY[0x277D25B60], MEMORY[0x277D25B68]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE882F0, &qword_236E856D0);
      sub_236E6DA20();
      sub_236E82194();
      goto LABEL_66;
    }

LABEL_104:
    sub_236E6D828(v187, v188, v189);
    v61 = swift_allocError();
    *v202 = v175;
    *(v202 + 8) = v176;
    LODWORD(v251) = 1;
    *(v202 + 16) = 1;
    swift_willThrow();
    (*(v226 + 8))(v230, v229);
    (*(v232 + 8))(v236, v233);
    (*(v239 + 8))(v242, v240);
    (*(v241 + 8))(v248, v243);
    LODWORD(v248) = 0;
    v249 = 0;
    LODWORD(v250) = 0;
    goto LABEL_61;
  }

  v211 = sub_236E820D4();
  v212 = sub_236E81D84();
  if (os_log_type_enabled(v212, v211))
  {
    v213 = swift_slowAlloc();
    *v213 = 0;
    _os_log_impl(&dword_236E28000, v212, v211, "Decoding an asset pack using an App Review configuration…", v213, 2u);
    MEMORY[0x2383C0E50](v213, -1, -1);
  }

  result = sub_236E82344();
  __break(1u);
  return result;
}

unint64_t sub_236E6C15C(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v22[0] = result;
      v22[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v14 = v22 + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                break;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                break;
              }

              v9 = __CFADD__(10 * v6, v15);
              v6 = 10 * v6 + v15;
              if (v9)
              {
                break;
              }

              ++v14;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v17 = v22;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = __CFADD__(10 * v6, v18);
            v6 = 10 * v6 + v18;
            if (v9)
            {
              break;
            }

            ++v17;
            if (!--v2)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_63;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v22 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = 10 * v6 >= v11;
            v6 = 10 * v6 - v11;
            if (!v9)
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_236E822A4();
        v3 = v21;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v12 = (result + 1);
              while (1)
              {
                v13 = *v12 - 48;
                if (v13 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v6, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v9 = __CFADD__(10 * v6, v13);
                v6 = 10 * v6 + v13;
                if (v9)
                {
                  goto LABEL_63;
                }

                ++v12;
                if (!--v3)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v16 = *result - 48;
              if (v16 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = __CFADD__(10 * v6, v16);
              v6 = 10 * v6 + v16;
              if (v9)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_63:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_64;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = 10 * v6 >= v8;
              v6 = 10 * v6 - v8;
              if (!v9)
              {
                goto LABEL_63;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_62:
          LOBYTE(v3) = 0;
LABEL_64:
          v23 = v3;
          v19 = v3;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v6 = sub_236E6DB3C(result, a2, 10);
  v19 = v20;
LABEL_65:

  if (v19)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_236E6C45C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for AssetPack(0);
  result = sub_236E6689C(v3);
  *a2 = result & 1;
  return result;
}

uint64_t AssetPack.encode(to:)(void *a1)
{
  v2 = v1;
  v80[5] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88300, &qword_236E856D8);
  v76 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v70 - v5;
  v71 = type metadata accessor for AssetPack(0);
  v7 = MEMORY[0x28223BE20](v71);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v70 - v10;
  if (qword_27DE87AE0 != -1)
  {
    swift_once();
  }

  v12 = sub_236E81DA4();
  v13 = __swift_project_value_buffer(v12, qword_27DE88220);
  v14 = sub_236E820E4();
  sub_236E6DA84(a1, v80);
  v77 = v13;
  v15 = sub_236E81D84();
  v16 = os_log_type_enabled(v15, v14);
  v74 = v6;
  v75 = v4;
  v72 = a1;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v78 = v18;
    *v17 = 136446210;
    v19 = __swift_project_boxed_opaque_existential_0(v80, v80[3]);
    v70 = v2;
    MEMORY[0x28223BE20](v19);
    (*(v21 + 16))(&v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
    v22 = sub_236E81ED4();
    v24 = v23;
    v2 = v70;
    __swift_destroy_boxed_opaque_existential_0(v80);
    v25 = sub_236E381CC(v22, v24, &v78);

    *(v17 + 4) = v25;
    _os_log_impl(&dword_236E28000, v15, v14, "Encode to: %{public}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x2383C0E50](v18, -1, -1);
    MEMORY[0x2383C0E50](v17, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v80);
  }

  v26 = sub_236E820D4();
  sub_236E393B0(v2, v11);
  v27 = sub_236E81D84();
  if (os_log_type_enabled(v27, v26))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v80[0] = v29;
    *v28 = 136446210;
    v30 = AssetPack.description.getter();
    v32 = v31;
    sub_236E39414(v11);
    v33 = sub_236E381CC(v30, v32, v80);

    *(v28 + 4) = v33;
    _os_log_impl(&dword_236E28000, v27, v26, "Encoding the asset pack “%{public}s”…", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x2383C0E50](v29, -1, -1);
    MEMORY[0x2383C0E50](v28, -1, -1);
  }

  else
  {

    sub_236E39414(v11);
  }

  v34 = v75;
  v35 = __swift_project_boxed_opaque_existential_0(v72, v72[3]);
  sub_236E6D87C(v35, v36, v37);
  v38 = v74;
  sub_236E825B4();
  LOBYTE(v80[0]) = 0;
  v39 = v73;
  sub_236E82444();
  v40 = v39;
  if (v39)
  {
    (*(v76 + 8))(v38, v34);
  }

  else
  {
    LOBYTE(v80[0]) = 1;
    sub_236E82464();
    LOBYTE(v80[0]) = 2;
    sub_236E82464();
    v55 = *(v2 + 40);
    if (v55 >> 60 == 15)
    {
      goto LABEL_17;
    }

    v56 = v2;
    v57 = *(v2 + 32);
    v58 = objc_opt_self();
    sub_236E59298(v57, v55);
    v59 = sub_236E81A24();
    v80[0] = 0;
    v60 = [v58 JSONObjectWithData:v59 options:8 error:v80];

    if (v60)
    {
      v61 = v80[0];
      sub_236E82174();
      swift_unknownObjectRelease();
      v62 = swift_dynamicCast();
      if (v62)
      {
        v65 = v38;
        v66 = v78;
        v67 = v79;
        v80[0] = v78;
        v80[1] = v79;
        LOBYTE(v78) = 3;
        sub_236E6DAE8(v62, v63, v64);
        sub_236E82474();
        sub_236E592EC(v57, v55);
        sub_236E38C74(v66, v67);
        v38 = v65;
LABEL_17:
        LOBYTE(v80[0]) = 4;
        sub_236E81AD4();
        sub_236E6D7D0(&qword_27DE88308, MEMORY[0x277D25BB8], MEMORY[0x277D25BC0]);
        sub_236E82474();
        LOBYTE(v80[0]) = 5;
        sub_236E819F4();
        sub_236E6D7D0(&qword_27DE88310, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
        sub_236E82474();
        LOBYTE(v80[0]) = 6;
        sub_236E81C64();
        sub_236E6D7D0(&qword_27DE88318, MEMORY[0x277D25C50], MEMORY[0x277D25C58]);
        sub_236E82474();
        return (*(v76 + 8))(v38, v34);
      }

      sub_236E6D828(v62, v63, v64);
      v40 = swift_allocError();
      *v69 = v57;
      *(v69 + 8) = v55;
      *(v69 + 16) = 3;
      swift_willThrow();
    }

    else
    {
      v68 = v80[0];
      v40 = sub_236E81994();

      swift_willThrow();
      sub_236E592EC(v57, v55);
    }

    (*(v76 + 8))(v38, v34);
    v2 = v56;
  }

  v41 = sub_236E820F4();
  sub_236E393B0(v2, v9);
  v42 = v40;
  v43 = sub_236E81D84();

  if (os_log_type_enabled(v43, v41))
  {
    v44 = swift_slowAlloc();
    v45 = v9;
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v80[0] = v47;
    *v44 = 136446466;
    v48 = AssetPack.description.getter();
    v50 = v49;
    sub_236E39414(v45);
    v51 = sub_236E381CC(v48, v50, v80);

    *(v44 + 4) = v51;
    *(v44 + 12) = 2114;
    v52 = v40;
    v53 = _swift_stdlib_bridgeErrorToNSError();
    *(v44 + 14) = v53;
    *v46 = v53;
    _os_log_impl(&dword_236E28000, v43, v41, "The asset pack “%{public}s” couldn’t be encoded: %{public}@", v44, 0x16u);
    sub_236E38DBC(v46, &qword_27DE88170, &qword_236E853C0);
    MEMORY[0x2383C0E50](v46, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x2383C0E50](v47, -1, -1);
    MEMORY[0x2383C0E50](v44, -1, -1);
  }

  else
  {

    sub_236E39414(v9);
  }

  return swift_willThrow();
}

uint64_t AssetPack.hash(into:)(uint64_t a1)
{
  if (qword_27DE87AE0 != -1)
  {
    swift_once();
  }

  v1 = sub_236E81DA4();
  __swift_project_value_buffer(v1, qword_27DE88220);
  v2 = sub_236E820E4();
  v3 = sub_236E81D84();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_236E381CC(0x2972656873614828, 0xE800000000000000, &v7);
    _os_log_impl(&dword_236E28000, v3, v2, "Hash into: %{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x2383C0E50](v5, -1, -1);
    MEMORY[0x2383C0E50](v4, -1, -1);
  }

  return sub_236E81F04();
}

uint64_t AssetPack.hashValue.getter()
{
  sub_236E82574();
  AssetPack.hash(into:)(v1);
  return sub_236E82594();
}

uint64_t sub_236E6D07C()
{
  sub_236E82574();
  AssetPack.hash(into:)(v1);
  return sub_236E82594();
}

uint64_t sub_236E6D0C0(uint64_t a1)
{
  sub_236E82574();
  AssetPack.hash(into:)(v2);
  return sub_236E82594();
}

uint64_t sub_236E6D0FC@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_236E6D10C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (!a3)
    {
      sub_236E82264();

      v12 = 0x1000000000000020;
LABEL_11:
      MEMORY[0x2383BFD30](a1, a2);
      goto LABEL_12;
    }

    v12 = 0;
    sub_236E82264();
    v6 = "sion-ID string “";
    v7 = 0x1000000000000027;
LABEL_10:
    MEMORY[0x2383BFD30](v7, v6 | 0x8000000000000000);
    goto LABEL_11;
  }

  if (a3 == 2)
  {
    v12 = 0;
    sub_236E82264();
    v6 = "The custom information “";
    v7 = 0x1000000000000022;
    goto LABEL_10;
  }

  if (a3 == 3)
  {
    sub_236E82264();

    v12 = 0x100000000000001ALL;
    v5 = sub_236E81A14();
    MEMORY[0x2383BFD30](v5);

LABEL_12:
    v9 = 0x69207369209D80E2;
    v10 = 0x64696C61766ELL;
    goto LABEL_13;
  }

  sub_236E82264();

  v12 = 0x100000000000001CLL;
  v8 = sub_236E82124();
  MEMORY[0x2383BFD30](v8);

  v9 = 0x75207369209D80E2;
  v10 = 0x6E776F6E6B6ELL;
LABEL_13:
  MEMORY[0x2383BFD30](v9, v10 & 0xFFFFFFFFFFFFLL | 0xAF2E000000000000);
  return v12;
}

void __swiftcall BAAssetPack.init()(BAAssetPack *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

void *sub_236E6D748(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87BA0, &unk_236E848D0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_236E6D7BC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_236E59298(result, a2);
  }

  return result;
}

uint64_t sub_236E6D7D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_236E6D818(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_236E6D828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DE88280;
  if (!qword_27DE88280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE88280);
  }

  return result;
}

unint64_t sub_236E6D87C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DE88288;
  if (!qword_27DE88288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE88288);
  }

  return result;
}

unint64_t sub_236E6D8D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DE882B8;
  if (!qword_27DE882B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE882B8);
  }

  return result;
}

unint64_t sub_236E6D924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DE882C0;
  if (!qword_27DE882C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE882C0);
  }

  return result;
}

unint64_t sub_236E6D978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DE882C8;
  if (!qword_27DE882C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE882C8);
  }

  return result;
}

unint64_t sub_236E6D9CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DE882D0;
  if (!qword_27DE882D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE882D0);
  }

  return result;
}

unint64_t sub_236E6DA20()
{
  result = qword_27DE882F8;
  if (!qword_27DE882F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE882F0, &qword_236E856D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE882F8);
  }

  return result;
}

uint64_t sub_236E6DA84(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_236E6DAE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DE88320;
  if (!qword_27DE88320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE88320);
  }

  return result;
}

unsigned __int8 *sub_236E6DB3C(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_236E81F84();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_236E6E0C0(result, v5);
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_236E822A4();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_236E6E0C0(uint64_t a1, unint64_t a2)
{
  v2 = sub_236E81F94();
  v6 = sub_236E6E140(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_236E6E140(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_236E82164();
    if (!v9 || (v10 = v9, v11 = sub_236E6D748(v9, 0), v12 = sub_236E6E298(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_236E81EF4();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_236E81EF4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_236E822A4();
LABEL_4:

  return sub_236E81EF4();
}

unint64_t sub_236E6E298(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_236E6E4B8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_236E81F64();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_236E822A4();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_236E6E4B8(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_236E81F44();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_236E6E4B8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_236E81F74();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x2383BFD60](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t _s16BackgroundAssets9AssetPackV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for AssetPack(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  if (qword_27DE87AE0 != -1)
  {
    swift_once();
  }

  v10 = sub_236E81DA4();
  __swift_project_value_buffer(v10, qword_27DE88220);
  v11 = sub_236E820E4();
  sub_236E393B0(a1, v9);
  sub_236E393B0(a2, v7);
  v12 = sub_236E81D84();
  if (os_log_type_enabled(v12, v11))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v26 = v14;
    *v13 = 136446466;
    v15 = AssetPack.description.getter();
    v17 = v16;
    sub_236E39414(v9);
    v18 = sub_236E381CC(v15, v17, &v26);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2082;
    v19 = AssetPack.description.getter();
    v21 = v20;
    sub_236E39414(v7);
    v22 = sub_236E381CC(v19, v21, &v26);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_236E28000, v12, v11, "== LHS: %{public}s RHS: %{public}s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2383C0E50](v14, -1, -1);
    MEMORY[0x2383C0E50](v13, -1, -1);
  }

  else
  {

    sub_236E39414(v7);
    sub_236E39414(v9);
  }

  if (*a1 == *a2 && a1[1] == a2[1])
  {
    v23 = 1;
  }

  else
  {
    v23 = sub_236E824E4();
  }

  return v23 & 1;
}

unint64_t sub_236E6E7B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DE88328;
  if (!qword_27DE88328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE88328);
  }

  return result;
}

unint64_t sub_236E6E808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DE88330;
  if (!qword_27DE88330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE88330);
  }

  return result;
}

unint64_t sub_236E6E860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DE88338;
  if (!qword_27DE88338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE88338);
  }

  return result;
}

unint64_t sub_236E6E8B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DE88340;
  if (!qword_27DE88340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE88340);
  }

  return result;
}

void sub_236E6E988(uint64_t a1)
{
  sub_236E6EA9C(319, &qword_27DE88360, MEMORY[0x277CC9318]);
  if (v1 <= 0x3F)
  {
    sub_236E81AD4();
    if (v2 <= 0x3F)
    {
      sub_236E819F4();
      if (v3 <= 0x3F)
      {
        sub_236E6EA9C(319, &qword_27DE88368, MEMORY[0x277D837D0]);
        if (v4 <= 0x3F)
        {
          sub_236E81C64();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_236E6EA9C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_236E82154();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_236E6EB30(uint64_t a1)
{
  result = type metadata accessor for AssetPack(319);
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

unint64_t type metadata accessor for BAAssetPack()
{
  result = qword_27DE88390;
  if (!qword_27DE88390)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DE88390);
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_236E6EC48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_236E6EC90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_236E6ED08(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_236E6ED98(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetPack.AppStoreCodingKeys.AttributesCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AssetPack.AppStoreCodingKeys.AttributesCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetPack.AppStoreCodingKeys.AttributesCodingKeys.DownloadPolicyCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AssetPack.AppStoreCodingKeys.AttributesCodingKeys.DownloadPolicyCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetPack.LocalCacheCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AssetPack.LocalCacheCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_236E6F258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DE88398;
  if (!qword_27DE88398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE88398);
  }

  return result;
}

unint64_t sub_236E6F2B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DE883A0;
  if (!qword_27DE883A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE883A0);
  }

  return result;
}

unint64_t sub_236E6F308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DE883A8;
  if (!qword_27DE883A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE883A8);
  }

  return result;
}

unint64_t sub_236E6F360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DE883B0;
  if (!qword_27DE883B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE883B0);
  }

  return result;
}

unint64_t sub_236E6F3B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DE883B8;
  if (!qword_27DE883B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE883B8);
  }

  return result;
}

unint64_t sub_236E6F414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DE883C0;
  if (!qword_27DE883C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE883C0);
  }

  return result;
}

unint64_t sub_236E6F46C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DE883C8;
  if (!qword_27DE883C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE883C8);
  }

  return result;
}

unint64_t sub_236E6F4C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DE883D0;
  if (!qword_27DE883D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE883D0);
  }

  return result;
}

unint64_t sub_236E6F51C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DE883D8;
  if (!qword_27DE883D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE883D8);
  }

  return result;
}

unint64_t sub_236E6F574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DE883E0;
  if (!qword_27DE883E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE883E0);
  }

  return result;
}

unint64_t sub_236E6F5CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DE883E8;
  if (!qword_27DE883E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE883E8);
  }

  return result;
}

unint64_t sub_236E6F624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DE883F0;
  if (!qword_27DE883F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE883F0);
  }

  return result;
}

unint64_t sub_236E6F67C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DE883F8;
  if (!qword_27DE883F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE883F8);
  }

  return result;
}

unint64_t sub_236E6F6D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DE88400;
  if (!qword_27DE88400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE88400);
  }

  return result;
}

unint64_t sub_236E6F72C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DE88408;
  if (!qword_27DE88408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE88408);
  }

  return result;
}

unint64_t sub_236E6F780(uint64_t a1, uint64_t a2)
{
  v2 = sub_236E823A4();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_236E6F7CC(uint64_t a1, uint64_t a2)
{
  v2 = sub_236E823A4();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_236E6F818(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_236E824E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_236E824E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365)
  {

    return 2;
  }

  else
  {
    v6 = sub_236E824E4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_236E6F930(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_236E824E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64616F6C6E776F64 && a2 == 0xEC000000657A6953 || (sub_236E824E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_236E824E4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F666E4972657375 && a2 == 0xE800000000000000 || (sub_236E824E4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x64616F6C6E776F64 && a2 == 0xEE007963696C6F50 || (sub_236E824E4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_236E824E4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1953722216 && a2 == 0xE400000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_236E824E4();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

void sub_236E6FBA0(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if (a2)
  {
    v10 = qword_27DE87AE8;

    if (v10 != -1)
    {
      swift_once();
    }

    v11 = sub_236E81DA4();
    __swift_project_value_buffer(v11, qword_27DE88410);
    v12 = sub_236E820E4();

    v13 = sub_236E81D84();

    if (!os_log_type_enabled(v13, v12))
    {

      goto LABEL_12;
    }

    v14 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v31 = v29;
    *v14 = 136446722;
    v15 = sub_236E381CC(a1, a2, &v31);

    *(v14 + 4) = v15;
    *(v14 + 12) = 2082;
    v16 = sub_236E82124();
    v18 = a4;
    v19 = a3;
    v20 = a1;
    v21 = sub_236E381CC(v16, v17, &v31);

    *(v14 + 14) = v21;
    a1 = v20;
    a3 = v19;
    a4 = v18;
    *(v14 + 22) = 1024;
    *(v14 + 24) = v18 & 1;
    _os_log_impl(&dword_236E28000, v13, v12, "Init app group ID: %{public}s source: %{public}s managed: %{BOOL}d", v14, 0x1Cu);
    swift_arrayDestroy();
    v22 = v29;
    goto LABEL_10;
  }

  if (qword_27DE87AE8 != -1)
  {
    swift_once();
  }

  v23 = sub_236E81DA4();
  __swift_project_value_buffer(v23, qword_27DE88410);
  v24 = sub_236E820E4();
  v13 = sub_236E81D84();
  if (os_log_type_enabled(v13, v24))
  {
    v14 = swift_slowAlloc();
    v30 = a1;
    v31 = swift_slowAlloc();
    v25 = v31;
    *v14 = 136446466;
    v26 = sub_236E82124();
    v28 = sub_236E381CC(v26, v27, &v31);

    *(v14 + 4) = v28;
    *(v14 + 12) = 1024;
    *(v14 + 14) = a4 & 1;
    _os_log_impl(&dword_236E28000, v13, v24, "Init source: %{public}s managed: %{BOOL}d", v14, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v25);
    v22 = v25;
    a1 = v30;
LABEL_10:
    MEMORY[0x2383C0E50](v22, -1, -1);
    MEMORY[0x2383C0E50](v14, -1, -1);
  }

LABEL_12:

  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a4 & 1;
  *(a5 + 32) = 0;
  *(a5 + 40) = 0;
  *(a5 + 24) = a3;
}

uint64_t sub_236E6FE9C(uint64_t a1)
{
  v3 = sub_236E81AC4();
  v41 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v43 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88530, &qword_236E86200);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - v9;
  v11 = *v1;
  if (qword_27DE87AF8 != -1)
  {
    swift_once();
  }

  v12 = sub_236E81DA4();
  __swift_project_value_buffer(v12, qword_27DE88430);
  v13 = sub_236E820E4();

  v14 = sub_236E81D84();

  v15 = os_log_type_enabled(v14, v13);
  v38 = v11;
  v39 = v3;
  if (v15)
  {
    v16 = v6;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v44 = v18;
    *v17 = 136446210;
    v19 = MEMORY[0x2383BFDC0](a1, v5);
    v21 = sub_236E381CC(v19, v20, &v44);

    *(v17 + 4) = v21;
    v3 = v39;
    _os_log_impl(&dword_236E28000, v14, v13, "Asset packs with download policy: %{public}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x2383C0E50](v18, -1, -1);
    v22 = v17;
    v6 = v16;
    MEMORY[0x2383C0E50](v22, -1, -1);
  }

  v23 = *(a1 + 16);
  if (v23)
  {
    v24 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v25 = *(v6 + 72);
    v26 = v40;
    v27 = (v41 + 48);
    v42 = (v41 + 32);
    v28 = MEMORY[0x277D84F90];
    v29 = &qword_27DE88530;
    do
    {
      sub_236E593A8(v24, v10, v29, &qword_236E86200);
      sub_236E59508(v10, v26, v29, &qword_236E86200);
      if ((*v27)(v26, 1, v3) == 1)
      {
        sub_236E38DBC(v26, v29, &qword_236E86200);
      }

      else
      {
        v30 = v29;
        v31 = v10;
        v32 = *v42;
        (*v42)(v43, v26, v3);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_236E753B0(0, *(v28 + 2) + 1, 1, v28);
        }

        v34 = *(v28 + 2);
        v33 = *(v28 + 3);
        if (v34 >= v33 >> 1)
        {
          v28 = sub_236E753B0((v33 > 1), v34 + 1, 1, v28);
        }

        *(v28 + 2) = v34 + 1;
        v3 = v39;
        v32(&v28[((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v34], v43, v39);
        v10 = v31;
        v26 = v40;
        v29 = v30;
      }

      v24 += v25;
      --v23;
    }

    while (v23);
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
  }

  v36 = sub_236E75B00(v35, v28);

  return v36;
}

uint64_t sub_236E702E8(uint64_t a1, uint64_t a2, int a3)
{
  v27 = a3;
  v26 = a2;
  v5 = type metadata accessor for AssetPack(0);
  v25 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v24 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v7)
  {
    v22 = v3;
    v30 = MEMORY[0x277D84F90];
    sub_236E822D4();
    v29 = a1 + 56;
    result = sub_236E821A4();
    v9 = result;
    v10 = 0;
    v11 = *(a1 + 36);
    v23 = a1 + 64;
    v28 = a1;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
    {
      v13 = v9 >> 6;
      if ((*(v29 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_22;
      }

      if (v11 != *(a1 + 36))
      {
        goto LABEL_23;
      }

      v14 = v24;
      sub_236E393B0(*(a1 + 48) + *(v25 + 72) * v9, v24);
      AssetPack.download(for:)(v26, v27 & 1);
      sub_236E39414(v14);
      sub_236E822B4();
      sub_236E822E4();
      a1 = v28;
      sub_236E822F4();
      result = sub_236E822C4();
      v12 = 1 << *(a1 + 32);
      if (v9 >= v12)
      {
        goto LABEL_24;
      }

      v15 = *(v29 + 8 * v13);
      if ((v15 & (1 << v9)) == 0)
      {
        goto LABEL_25;
      }

      if (v11 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v16 = v15 & (-2 << (v9 & 0x3F));
      if (v16)
      {
        v12 = __clz(__rbit64(v16)) | v9 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v17 = v13 << 6;
        v18 = v13 + 1;
        v19 = (v23 + 8 * v13);
        while (v18 < (v12 + 63) >> 6)
        {
          v21 = *v19++;
          v20 = v21;
          v17 += 64;
          ++v18;
          if (v21)
          {
            result = sub_236E7649C(v9, v11, 0);
            v12 = __clz(__rbit64(v20)) + v17;
            goto LABEL_18;
          }
        }

        result = sub_236E7649C(v9, v11, 0);
LABEL_18:
        a1 = v28;
      }

      ++v10;
      v9 = v12;
      if (v10 == v7)
      {
        return v30;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_236E705A8(uint64_t a1)
{
  v3 = type metadata accessor for AssetPack(0);
  v22 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v21 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v19 = v1;
    v25 = MEMORY[0x277D84F90];
    sub_236E822D4();
    v23 = a1 + 56;
    result = sub_236E821A4();
    v7 = result;
    v8 = 0;
    v24 = *(a1 + 36);
    v20 = a1 + 64;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v23 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_21;
      }

      if (v24 != *(a1 + 36))
      {
        goto LABEL_22;
      }

      v11 = v21;
      sub_236E393B0(*(a1 + 48) + *(v22 + 72) * v7, v21);
      AssetPack.download(for:)(0, 1);
      sub_236E39414(v11);
      sub_236E822B4();
      sub_236E822E4();
      sub_236E822F4();
      result = sub_236E822C4();
      v9 = 1 << *(a1 + 32);
      if (v7 >= v9)
      {
        goto LABEL_23;
      }

      v12 = *(v23 + 8 * v10);
      if ((v12 & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      if (v24 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v13 = v12 & (-2 << (v7 & 0x3F));
      if (v13)
      {
        v9 = __clz(__rbit64(v13)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v14 = v10 << 6;
        v15 = v10 + 1;
        v16 = (v20 + 8 * v10);
        while (v15 < (v9 + 63) >> 6)
        {
          v18 = *v16++;
          v17 = v18;
          v14 += 64;
          ++v15;
          if (v18)
          {
            result = sub_236E7649C(v7, v24, 0);
            v9 = __clz(__rbit64(v17)) + v14;
            goto LABEL_4;
          }
        }

        result = sub_236E7649C(v7, v24, 0);
      }

LABEL_4:
      ++v8;
      v7 = v9;
      if (v8 == v5)
      {
        return v25;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_236E70854(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v4 = type metadata accessor for AssetPack(0);
  v23 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v22 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v20[1] = v2;
    v27 = MEMORY[0x277D84F90];
    sub_236E822D4();
    v25 = a1 + 56;
    result = sub_236E821A4();
    v8 = result;
    v9 = 0;
    v26 = *(a1 + 36);
    v21 = a1 + 64;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v25 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_21;
      }

      if (v26 != *(a1 + 36))
      {
        goto LABEL_22;
      }

      v12 = v22;
      sub_236E393B0(*(a1 + 48) + *(v23 + 72) * v8, v22);
      AssetPack.download(for:)(v24, 0);
      sub_236E39414(v12);
      sub_236E822B4();
      sub_236E822E4();
      sub_236E822F4();
      result = sub_236E822C4();
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v13 = *(v25 + 8 * v11);
      if ((v13 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      if (v26 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v14 = v13 & (-2 << (v8 & 0x3F));
      if (v14)
      {
        v10 = __clz(__rbit64(v14)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v11 << 6;
        v16 = v11 + 1;
        v17 = (v21 + 8 * v11);
        while (v16 < (v10 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            result = sub_236E7649C(v8, v26, 0);
            v10 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        result = sub_236E7649C(v8, v26, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v6)
      {
        return v27;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_236E70B04(void (*a1)(char **__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v26 = a1;
  v27 = a2;
  v6 = type metadata accessor for AssetPack(0);
  v25 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v9)
  {
    v32 = MEMORY[0x277D84F90];
    sub_236E822D4();
    v29 = a3 + 56;
    v11 = sub_236E821A4();
    v12 = 0;
    v30 = *(a3 + 36);
    v23 = a3 + 64;
    v24 = v8;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a3 + 32))
    {
      v14 = v11 >> 6;
      if ((*(v29 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_22;
      }

      if (v30 != *(a3 + 36))
      {
        goto LABEL_23;
      }

      sub_236E393B0(*(a3 + 48) + *(v25 + 72) * v11, v8);
      v26(&v31, v8);
      v28 = v4;
      if (v4)
      {
        goto LABEL_27;
      }

      sub_236E39414(v8);
      v8 = v31;
      sub_236E822B4();
      sub_236E822E4();
      sub_236E822F4();
      sub_236E822C4();
      v13 = 1 << *(a3 + 32);
      if (v11 >= v13)
      {
        goto LABEL_24;
      }

      v15 = *(v29 + 8 * v14);
      if ((v15 & (1 << v11)) == 0)
      {
        goto LABEL_25;
      }

      if (v30 != *(a3 + 36))
      {
        goto LABEL_26;
      }

      v16 = v15 & (-2 << (v11 & 0x3F));
      if (v16)
      {
        v13 = __clz(__rbit64(v16)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v17 = v14 << 6;
        v18 = v14 + 1;
        v19 = (v23 + 8 * v14);
        while (v18 < (v13 + 63) >> 6)
        {
          v21 = *v19++;
          v20 = v21;
          v17 += 64;
          ++v18;
          if (v21)
          {
            sub_236E7649C(v11, v30, 0);
            v13 = __clz(__rbit64(v20)) + v17;
            goto LABEL_4;
          }
        }

        sub_236E7649C(v11, v30, 0);
      }

LABEL_4:
      ++v12;
      v11 = v13;
      v8 = v24;
      v4 = v28;
      if (v12 == v9)
      {
        return v32;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    sub_236E39414(v8);

    __break(1u);
  }

  return result;
}

uint64_t sub_236E70DE0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for AssetPack(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = (&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - v12;
  v14 = *v3;
  if (qword_27DE87AF8 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v15 = sub_236E81DA4();
    __swift_project_value_buffer(v15, qword_27DE88430);
    v16 = sub_236E820E4();

    v17 = sub_236E81D84();

    v18 = os_log_type_enabled(v17, v16);
    v32 = v7;
    v33 = a3;
    if (v18)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v34 = v20;
      *v19 = 136446210;
      *(v19 + 4) = sub_236E381CC(a1, a2, &v34);
      _os_log_impl(&dword_236E28000, v17, v16, "Asset pack with ID: %{public}s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x2383C0E50](v20, -1, -1);
      MEMORY[0x2383C0E50](v19, -1, -1);
    }

    a3 = v14 + 56;
    v21 = 1 << *(v14 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(v14 + 56);
    v24 = (v21 + 63) >> 6;

    v25 = 0;
    if (v23)
    {
      break;
    }

LABEL_8:
    while (1)
    {
      v7 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v7 >= v24)
      {

        v27 = 1;
        v28 = v33;
        return (*(v8 + 56))(v28, v27, 1, v32);
      }

      v23 = *(a3 + 8 * v7);
      ++v25;
      if (v23)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_22:
    swift_once();
  }

  while (1)
  {
    v7 = v25;
LABEL_11:
    sub_236E393B0(*(v14 + 48) + *(v8 + 72) * (__clz(__rbit64(v23)) | (v7 << 6)), v13);
    sub_236E63BD0(v13, v11);
    v26 = *v11 == a1 && v11[1] == a2;
    if (v26 || (sub_236E824E4() & 1) != 0)
    {
      break;
    }

    v23 &= v23 - 1;
    sub_236E39414(v11);
    v25 = v7;
    if (!v23)
    {
      goto LABEL_8;
    }
  }

  v29 = v33;
  sub_236E63BD0(v11, v33);
  v28 = v29;
  v27 = 0;
  return (*(v8 + 56))(v28, v27, 1, v32);
}

uint64_t AssetPackManifest.DecodingConfiguration.description.getter()
{
  v1 = v0[1];
  v2 = *(v0 + 16);
  v3 = v0[4];
  v4 = v0[5];
  if (!v1)
  {
    if (v3)
    {

      sub_236E82264();
      MEMORY[0x2383BFD30](0xD000000000000022, 0x8000000236E8AE10);
      v10 = sub_236E82124();
      MEMORY[0x2383BFD30](v10);

      MEMORY[0x2383BFD30](0xD00000000000001ALL, 0x8000000236E8AE40);
      if (v2)
      {
        v11 = 1702195828;
      }

      else
      {
        v11 = 0x65736C6166;
      }

      if (v2)
      {
        v12 = 0xE400000000000000;
      }

      else
      {
        v12 = 0xE500000000000000;
      }

      MEMORY[0x2383BFD30](v11, v12);

      MEMORY[0x2383BFD30](0xD000000000000013, 0x8000000236E8AE60);
      v13 = swift_allocObject();
      *(v13 + 16) = v3;
      *(v13 + 24) = v4;
      goto LABEL_18;
    }

    sub_236E82264();
    MEMORY[0x2383BFD30](0xD000000000000022, 0x8000000236E8AE10);
    v19 = sub_236E82124();
    MEMORY[0x2383BFD30](v19);

    MEMORY[0x2383BFD30](0xD00000000000001ALL, 0x8000000236E8AE40);
    if (v2)
    {
      v17 = 1702195828;
    }

    else
    {
      v17 = 0x65736C6166;
    }

    if (v2)
    {
      v20 = 0xE400000000000000;
    }

    else
    {
      v20 = 0xE500000000000000;
    }

    v18 = v20;
LABEL_33:
    MEMORY[0x2383BFD30](v17, v18);

    MEMORY[0x2383BFD30](62, 0xE100000000000000);
    return 0;
  }

  v5 = *v0;
  if (!v3)
  {
    sub_236E82264();
    MEMORY[0x2383BFD30](0xD000000000000028, 0x8000000236E8AE80);
    MEMORY[0x2383BFD30](v5, v1);
    MEMORY[0x2383BFD30](0xD00000000000001ALL, 0x8000000236E8AE40);
    if (v2)
    {
      v15 = 1702195828;
    }

    else
    {
      v15 = 0x65736C6166;
    }

    if (v2)
    {
      v16 = 0xE400000000000000;
    }

    else
    {
      v16 = 0xE500000000000000;
    }

    MEMORY[0x2383BFD30](v15, v16);

    MEMORY[0x2383BFD30](0x3A656372756F7320, 0xE900000000000020);
    v17 = sub_236E82124();
    goto LABEL_33;
  }

  sub_236E82264();
  MEMORY[0x2383BFD30](0xD000000000000028, 0x8000000236E8AE80);
  MEMORY[0x2383BFD30](v5, v1);
  MEMORY[0x2383BFD30](0xD00000000000001ALL, 0x8000000236E8AE40);
  if (v2)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x2383BFD30](v6, v7);

  MEMORY[0x2383BFD30](0x3A656372756F7320, 0xE900000000000020);
  v8 = sub_236E82124();
  MEMORY[0x2383BFD30](v8);

  MEMORY[0x2383BFD30](0xD000000000000013, 0x8000000236E8AE60);
  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  *(v9 + 24) = v4;
LABEL_18:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88448, &unk_236E861E0);
  v14 = sub_236E81ED4();
  MEMORY[0x2383BFD30](v14);

  MEMORY[0x2383BFD30](62, 0xE100000000000000);
  sub_236E38C64(v3, v4);
  return 0;
}

uint64_t sub_236E71564()
{
  v0 = sub_236E81DA4();
  __swift_allocate_value_buffer(v0, qword_27DE88410);
  __swift_project_value_buffer(v0, qword_27DE88410);
  return sub_236E81D94();
}

void AssetPackManifest.DecodingConfiguration.init(appReviewDecodingHandler:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (qword_27DE87AE8 != -1)
  {
    swift_once();
  }

  v6 = sub_236E81DA4();
  __swift_project_value_buffer(v6, qword_27DE88410);
  v7 = sub_236E820E4();

  v8 = sub_236E81D84();

  if (os_log_type_enabled(v8, v7))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136446210;
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88448, &unk_236E861E0);
    v12 = sub_236E81ED4();
    v14 = sub_236E381CC(v12, v13, &v15);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_236E28000, v8, v7, "Init App Review decoding handler: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x2383C0E50](v10, -1, -1);
    MEMORY[0x2383C0E50](v9, -1, -1);
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  *(a3 + 24) = 3;
  *(a3 + 32) = a1;
  *(a3 + 40) = a2;
}

void AssetPackManifest.DecodingConfiguration.init(source:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_27DE87AE8 != -1)
  {
    swift_once();
  }

  v4 = sub_236E81DA4();
  __swift_project_value_buffer(v4, qword_27DE88410);
  v5 = sub_236E820E4();
  v6 = sub_236E81D84();
  if (os_log_type_enabled(v6, v5))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136446210;
    v9 = sub_236E82124();
    v11 = sub_236E381CC(v9, v10, &v12);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_236E28000, v6, v5, "Init source: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x2383C0E50](v8, -1, -1);
    MEMORY[0x2383C0E50](v7, -1, -1);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = a1;
}

uint64_t sub_236E71920()
{
  sub_236E82574();
  MEMORY[0x2383C0390](0);
  return sub_236E82594();
}

uint64_t sub_236E7198C(uint64_t a1)
{
  sub_236E82574();
  MEMORY[0x2383C0390](0);
  return sub_236E82594();
}

uint64_t sub_236E719DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_236E824E4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_236E71A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_236E75704(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_236E71AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_236E75704(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_236E71AE8()
{
  if (*v0)
  {
    return 0x70416D6F72467369;
  }

  else
  {
    return 0x6361507465737361;
  }
}

uint64_t sub_236E71B34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6361507465737361 && a2 == 0xEA0000000000736BLL;
  if (v6 || (sub_236E824E4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x70416D6F72467369 && a2 == 0xEF77656976655270)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_236E824E4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_236E71C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_236E75660(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_236E71C5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_236E75660(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_236E71CA0()
{
  sub_236E818E4();
  swift_allocObject();
  v0 = sub_236E818D4();
  result = sub_236E818B4();
  qword_27DE88428 = v0;
  return result;
}

unint64_t AssetPackManifest.description.getter()
{
  sub_236E82264();

  type metadata accessor for AssetPack(0);
  sub_236E755C4(&qword_27DE88020, type metadata accessor for AssetPack, &protocol conformance descriptor for AssetPack);
  v0 = sub_236E820A4();
  MEMORY[0x2383BFD30](v0);

  MEMORY[0x2383BFD30](62, 0xE100000000000000);
  return 0xD000000000000024;
}

uint64_t sub_236E71DC4()
{
  v0 = sub_236E81DA4();
  __swift_allocate_value_buffer(v0, qword_27DE88430);
  __swift_project_value_buffer(v0, qword_27DE88430);
  return sub_236E81D94();
}

__n128 AssetPackManifest.init(contentsOf:appGroupID:)@<Q0>(char *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, __n128 *a4@<X8>)
{
  v64 = a2;
  v57 = a4;
  v6 = sub_236E819F4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v62 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v55 - v10;
  if (qword_27DE87AF8 != -1)
  {
    swift_once();
  }

  v12 = sub_236E81DA4();
  v13 = __swift_project_value_buffer(v12, qword_27DE88430);
  v14 = sub_236E820E4();
  v58 = *(v7 + 16);
  v58(v11, a1, v6);

  v59 = v13;
  v15 = sub_236E81D84();

  v16 = os_log_type_enabled(v15, v14);
  v60 = a1;
  v63 = v7;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v65 = v56;
    *v17 = 136446466;
    sub_236E755C4(&unk_27DE87B30, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v18 = sub_236E82484();
    v19 = v7;
    v20 = a3;
    v21 = v6;
    v23 = v22;
    v68 = *(v19 + 8);
    v68(v11, v21);
    v24 = sub_236E381CC(v18, v23, &v65);
    v6 = v21;
    a3 = v20;

    *(v17 + 4) = v24;
    *(v17 + 12) = 2082;
    *(v17 + 14) = sub_236E381CC(v64, v20, &v65);
    _os_log_impl(&dword_236E28000, v15, v14, "Init contents of: %{public}s app group ID: %{public}s", v17, 0x16u);
    v25 = v56;
    swift_arrayDestroy();
    MEMORY[0x2383C0E50](v25, -1, -1);
    v26 = v17;
    a1 = v60;
    MEMORY[0x2383C0E50](v26, -1, -1);
  }

  else
  {

    v68 = *(v7 + 8);
    v68(v11, v6);
  }

  v27 = v61;
  v28 = sub_236E81A04();
  v30 = v62;
  if (v27)
  {
    v33 = sub_236E820F4();
    v58(v30, a1, v6);

    v34 = v27;
    v35 = v6;
    v36 = sub_236E81D84();

    if (os_log_type_enabled(v36, v33))
    {
      v37 = swift_slowAlloc();
      LODWORD(v59) = v33;
      v38 = v37;
      v39 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v65 = v61;
      *v38 = 136446722;
      sub_236E755C4(&unk_27DE87B30, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v40 = sub_236E82484();
      v41 = v30;
      v43 = v42;
      v68(v41, v35);
      v44 = sub_236E381CC(v40, v43, &v65);

      *(v38 + 4) = v44;
      *(v38 + 12) = 2082;
      v45 = sub_236E381CC(v64, a3, &v65);

      *(v38 + 14) = v45;
      *(v38 + 22) = 2114;
      v46 = v27;
      v47 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 24) = v47;
      *v39 = v47;
      _os_log_impl(&dword_236E28000, v36, v59, "An asset-pack manifest couldn’t be created with the contents of “%{public}s” and the app group ID “%{public}s”: %{public}@", v38, 0x20u);
      sub_236E38DBC(v39, &qword_27DE88170, &qword_236E853C0);
      v48 = v39;
      a1 = v60;
      MEMORY[0x2383C0E50](v48, -1, -1);
      v49 = v61;
      swift_arrayDestroy();
      MEMORY[0x2383C0E50](v49, -1, -1);
      v50 = v38;
      v51 = v68;
      MEMORY[0x2383C0E50](v50, -1, -1);
    }

    else
    {

      v51 = v68;
      v68(v30, v35);
    }

    swift_willThrow();
    v51(a1, v35);
  }

  else
  {
    v31 = v28;
    v32 = v29;

    AssetPackManifest.init(from:appGroupID:)(v31, v32, v64, a3, &v65);
    v68(a1, v6);

    v52 = v66;
    result = v67;
    v54 = v57;
    v57->n128_u64[0] = v65;
    v54->n128_u8[8] = v52;
    v54[1] = result;
  }

  return result;
}

uint64_t AssetPackManifest.init(from:appGroupID:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (qword_27DE87AF8 != -1)
  {
    swift_once();
  }

  v9 = sub_236E81DA4();
  __swift_project_value_buffer(v9, qword_27DE88430);
  v10 = sub_236E820E4();
  sub_236E59298(a1, a2);

  v11 = sub_236E81D84();
  sub_236E38C74(a1, a2);

  v71 = a2;
  v62 = a1;
  if (os_log_type_enabled(v11, v10))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v63[0] = v13;
    *v12 = 136446466;
    sub_236E59298(a1, a2);
    v14 = sub_236E81A14();
    v15 = a2;
    v16 = a1;
    v17 = a3;
    v18 = v14;
    v20 = v19;
    sub_236E38C74(v16, v15);
    v21 = sub_236E381CC(v18, v20, v63);

    *(v12 + 4) = v21;
    a3 = v17;
    *(v12 + 12) = 2082;
    *(v12 + 14) = sub_236E381CC(v17, a4, v63);
    _os_log_impl(&dword_236E28000, v11, v10, "Init from: %{public}s app group ID: %{public}s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2383C0E50](v13, -1, -1);
    MEMORY[0x2383C0E50](v12, -1, -1);
  }

  if (qword_27DE87AF0 != -1)
  {
    swift_once();
  }

  v22 = qword_27DE87AE8;
  swift_bridgeObjectRetain_n();
  if (v22 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v9, qword_27DE88410);
  v23 = sub_236E820E4();

  v24 = sub_236E81D84();

  if (os_log_type_enabled(v24, v23))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v63[0] = v26;
    *v25 = 136446722;
    v27 = sub_236E381CC(a3, a4, v63);

    *(v25 + 4) = v27;
    *(v25 + 12) = 2082;
    v28 = sub_236E82124();
    v30 = a3;
    v31 = sub_236E381CC(v28, v29, v63);

    *(v25 + 14) = v31;
    a3 = v30;
    *(v25 + 22) = 1024;
    *(v25 + 24) = 0;
    _os_log_impl(&dword_236E28000, v24, v23, "Init app group ID: %{public}s source: %{public}s managed: %{BOOL}d", v25, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x2383C0E50](v26, -1, -1);
    MEMORY[0x2383C0E50](v25, -1, -1);
  }

  else
  {
  }

  v32 = v71;
  v63[0] = a3;
  v63[1] = a4;
  v64 = 0;
  v65 = 4;
  sub_236E38C10(v33, v34, v35);
  v66 = 0;
  v67 = 0;
  v36 = v60;
  sub_236E818C4();
  if (v60)
  {
    v37 = v66;
    v38 = v67;

    sub_236E38C64(v37, v38);
    v39 = sub_236E820F4();
    sub_236E59298(v62, v32);

    v40 = v60;
    v41 = sub_236E81D84();
    sub_236E38C74(v62, v32);

    if (os_log_type_enabled(v41, v39))
    {
      v42 = v32;
      v59 = a3;
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v63[0] = v61;
      *v43 = 136446722;
      sub_236E59298(v62, v42);
      v58 = v39;
      v45 = sub_236E81A14();
      v47 = v46;
      sub_236E38C74(v62, v42);
      v48 = sub_236E381CC(v45, v47, v63);

      *(v43 + 4) = v48;
      *(v43 + 12) = 2082;
      v49 = sub_236E381CC(v59, a4, v63);

      *(v43 + 14) = v49;
      *(v43 + 22) = 2114;
      v50 = v36;
      v51 = _swift_stdlib_bridgeErrorToNSError();
      *(v43 + 24) = v51;
      *v44 = v51;
      _os_log_impl(&dword_236E28000, v41, v58, "An asset-pack manifest couldn’t be created from “%{public}s” with the app group ID “%{public}s”: %{public}@", v43, 0x20u);
      sub_236E38DBC(v44, &qword_27DE88170, &qword_236E853C0);
      MEMORY[0x2383C0E50](v44, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x2383C0E50](v61, -1, -1);
      v32 = v42;
      MEMORY[0x2383C0E50](v43, -1, -1);
    }

    else
    {
    }

    swift_willThrow();
    return sub_236E38C74(v62, v32);
  }

  else
  {
    v52 = v66;
    v53 = v67;

    sub_236E38C64(v52, v53);

    result = sub_236E38C74(v62, v32);
    v55 = v69;
    v56 = v70;
    *a5 = v68;
    *(a5 + 8) = v55;
    *(a5 + 16) = v56;
  }

  return result;
}

uint64_t AssetPackManifest.init(from:configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v124 = a1;
  v110 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88450, &qword_236E861F0);
  v112 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v116 = &v106 - v5;
  v121 = type metadata accessor for AssetPack(0);
  v6 = MEMORY[0x28223BE20](v121);
  v108 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v119 = (&v106 - v9);
  v10 = MEMORY[0x28223BE20](v8);
  v118 = &v106 - v11;
  MEMORY[0x28223BE20](v10);
  v107 = &v106 - v12;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88458, &qword_236E861F8);
  v111 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v115 = &v106 - v13;
  v14 = *(a2 + 8);
  v123 = *a2;
  v125 = v14;
  v122 = *(a2 + 16);
  v15 = *(a2 + 24);
  v16 = *(a2 + 32);
  v17 = *(a2 + 40);
  if (qword_27DE87AF8 != -1)
  {
    swift_once();
  }

  v18 = sub_236E81DA4();
  v19 = __swift_project_value_buffer(v18, qword_27DE88430);
  v20 = sub_236E820E4();
  sub_236E6DA84(v124, v132);

  sub_236E6D818(v16, v17);
  v21 = sub_236E81D84();

  sub_236E38C64(v16, v17);
  v117 = v20;
  if (os_log_type_enabled(v21, v20))
  {
    v22 = swift_slowAlloc();
    v109 = v4;
    v23 = v16;
    v24 = v22;
    v106 = swift_slowAlloc();
    v134 = v106;
    *v24 = 136446466;
    v25 = __swift_project_boxed_opaque_existential_0(v132, v133);
    v114 = v19;
    MEMORY[0x28223BE20](v25);
    (*(v27 + 16))(&v106 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
    v28 = sub_236E81ED4();
    v30 = v29;
    __swift_destroy_boxed_opaque_existential_0(v132);
    v31 = sub_236E381CC(v28, v30, &v134);

    *(v24 + 4) = v31;
    *(v24 + 12) = 2082;
    v126 = v123;
    v127 = v125;
    v128 = v122;
    v129 = v15;
    v130 = v23;
    v131 = v17;

    sub_236E6D818(v23, v17);
    v32 = AssetPackManifest.DecodingConfiguration.description.getter();
    v34 = v33;
    v19 = v114;

    sub_236E38C64(v23, v17);
    v35 = sub_236E381CC(v32, v34, &v134);

    *(v24 + 14) = v35;
    _os_log_impl(&dword_236E28000, v21, v117, "Init from: %{public}s configuration: %{public}s", v24, 0x16u);
    v36 = v106;
    swift_arrayDestroy();
    MEMORY[0x2383C0E50](v36, -1, -1);
    v37 = v24;
    v16 = v23;
    v4 = v109;
    MEMORY[0x2383C0E50](v37, -1, -1);

    if (v15 <= 5)
    {
      goto LABEL_5;
    }

LABEL_11:
    v46 = sub_236E82104();

    sub_236E6D818(v16, v17);
    v47 = sub_236E81D84();

    sub_236E38C64(v16, v17);
    if (os_log_type_enabled(v47, v46))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v114 = v19;
      v50 = v49;
      v126 = v49;
      *v48 = 136315138;
      v51 = sub_236E82124();
      v53 = v16;
      v54 = sub_236E381CC(v51, v52, &v126);

      *(v48 + 4) = v54;
      v16 = v53;
      _os_log_impl(&dword_236E28000, v47, v46, "The manifest data source “%s” is unknown.", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x2383C0E50](v50, -1, -1);
      MEMORY[0x2383C0E50](v48, -1, -1);
    }

    sub_236E7560C(v55, v56, v57);
    v45 = swift_allocError();
    *v58 = v15;
    *(v58 + 8) = 0;
    goto LABEL_30;
  }

  __swift_destroy_boxed_opaque_existential_0(v132);
  if (v15 > 5)
  {
    goto LABEL_11;
  }

LABEL_5:
  if (((1 << v15) & 0x34) != 0)
  {
    v38 = sub_236E820D4();
    v39 = sub_236E81D84();
    if (os_log_type_enabled(v39, v38))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_236E28000, v39, v38, "Decoding an asset-pack manifest using a local-cache (third-party-server/development-override) configuration…", v40, 2u);
      MEMORY[0x2383C0E50](v40, -1, -1);
    }

    v41 = __swift_project_boxed_opaque_existential_0(v124, v124[3]);
    sub_236E75660(v41, v42, v43);
    v44 = v120;
    sub_236E825A4();
    v45 = v44;
    if (!v44)
    {
      LOBYTE(v126) = 0;
      sub_236E823B4();
      v114 = v19;
      v120 = MEMORY[0x277D84FA0];
      v134 = MEMORY[0x277D84FA0];
      __swift_project_boxed_opaque_existential_0(v132, v133);
      v74 = sub_236E824A4();
      if ((v74 & 1) == 0)
      {
        v109 = v4;
        v75 = v108;
        do
        {
          v126 = v123;
          v127 = v125;
          v128 = v122;
          v129 = v15;
          v130 = v16;
          v76 = v16;
          v131 = v17;
          __swift_mutable_project_boxed_opaque_existential_1(v132, v133);
          sub_236E755C4(&qword_27DE88470, type metadata accessor for AssetPack, &protocol conformance descriptor for AssetPack);
          sub_236E82494();
          v77 = v119;
          sub_236E393B0(v75, v119);
          v78 = v118;
          sub_236E53F04(v118, v77);
          sub_236E39414(v78);
          sub_236E39414(v75);
          __swift_project_boxed_opaque_existential_0(v132, v133);
          v16 = v76;
        }

        while ((sub_236E824A4() & 1) == 0);
        v120 = v134;
        v4 = v109;
      }

      LOBYTE(v126) = 1;
      v79 = v116;
      v103 = sub_236E823D4();
      (*(v112 + 8))(v79, v4);
      __swift_destroy_boxed_opaque_existential_0(v132);
      goto LABEL_41;
    }

    goto LABEL_31;
  }

  if (((1 << v15) & 3) != 0)
  {
    v59 = sub_236E820D4();
    v60 = sub_236E81D84();
    if (os_log_type_enabled(v60, v59))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_236E28000, v60, v59, "Decoding an asset-pack manifest using an App Store (TestFlight) configuration…", v61, 2u);
      MEMORY[0x2383C0E50](v61, -1, -1);
    }

    v62 = __swift_project_boxed_opaque_existential_0(v124, v124[3]);
    sub_236E75704(v62, v63, v64);
    v65 = v120;
    sub_236E825A4();
    v45 = v65;
    if (!v65)
    {
      sub_236E823B4();
      v114 = v19;
      v120 = MEMORY[0x277D84FA0];
      v134 = MEMORY[0x277D84FA0];
      __swift_project_boxed_opaque_existential_0(v132, v133);
      v98 = sub_236E824A4();
      if ((v98 & 1) == 0)
      {
        v99 = v107;
        do
        {
          v126 = v123;
          v127 = v125;
          v128 = v122;
          v100 = v15;
          v129 = v15;
          v130 = v16;
          v131 = v17;
          __swift_mutable_project_boxed_opaque_existential_1(v132, v133);
          sub_236E755C4(&qword_27DE88470, type metadata accessor for AssetPack, &protocol conformance descriptor for AssetPack);
          sub_236E82494();
          v101 = v119;
          sub_236E393B0(v99, v119);
          v102 = v118;
          sub_236E53F04(v118, v101);
          sub_236E39414(v102);
          sub_236E39414(v99);
          __swift_project_boxed_opaque_existential_0(v132, v133);
          v15 = v100;
        }

        while ((sub_236E824A4() & 1) == 0);
        v120 = v134;
      }

      (*(v111 + 8))(v115, v113);
      __swift_destroy_boxed_opaque_existential_0(v132);
      v103 = 0;
      goto LABEL_41;
    }

    goto LABEL_31;
  }

  v66 = sub_236E820D4();
  v67 = sub_236E81D84();
  if (os_log_type_enabled(v67, v66))
  {
    v68 = swift_slowAlloc();
    *v68 = 0;
    _os_log_impl(&dword_236E28000, v67, v66, "Decoding an asset-pack manifest using an App Review configuration…", v68, 2u);
    MEMORY[0x2383C0E50](v68, -1, -1);
  }

  if (!v16)
  {
    sub_236E7560C(v69, v70, v71);
    v45 = swift_allocError();
    *v80 = 0;
    *(v80 + 8) = 1;
LABEL_30:
    swift_willThrow();
    goto LABEL_31;
  }

  v72 = v120;
  v73 = v16(v124, v123, v125);
  v45 = v72;
  if (!v72)
  {
    v120 = v73;
    sub_236E38C64(v16, v17);
    v103 = 1;
LABEL_41:
    v104 = v110;
    sub_236E38C64(v16, v17);
    *v104 = v120;
    *(v104 + 8) = v103 & 1;
    v105 = v125;
    *(v104 + 16) = v123;
    *(v104 + 24) = v105;

    __swift_destroy_boxed_opaque_existential_0(v124);
  }

  sub_236E38C64(v16, v17);
LABEL_31:
  v81 = sub_236E820F4();

  sub_236E6D818(v16, v17);
  v82 = v45;
  v83 = sub_236E81D84();

  sub_236E38C64(v16, v17);

  if (os_log_type_enabled(v83, v81))
  {
    v84 = v15;
    v85 = v16;
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v121 = v45;
    v89 = v88;
    v131 = v17;
    v132[0] = v88;
    *v86 = 136446466;
    v90 = v123;
    LODWORD(v123) = v81;
    v126 = v90;
    v127 = v125;
    v128 = v122;
    v129 = v84;
    v130 = v85;
    v91 = AssetPackManifest.DecodingConfiguration.description.getter();
    v93 = v92;

    sub_236E38C64(v85, v17);
    v94 = sub_236E381CC(v91, v93, v132);

    *(v86 + 4) = v94;
    *(v86 + 12) = 2114;
    v95 = v121;
    v96 = _swift_stdlib_bridgeErrorToNSError();
    *(v86 + 14) = v96;
    *v87 = v96;
    _os_log_impl(&dword_236E28000, v83, v123, "An asset-pack manifest couldn’t be decoded with the configuration “%{public}s”: %{public}@", v86, 0x16u);
    sub_236E38DBC(v87, &qword_27DE88170, &qword_236E853C0);
    MEMORY[0x2383C0E50](v87, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v89);
    MEMORY[0x2383C0E50](v89, -1, -1);
    MEMORY[0x2383C0E50](v86, -1, -1);
  }

  else
  {

    sub_236E38C64(v16, v17);
  }

  swift_willThrow();
  return __swift_destroy_boxed_opaque_existential_0(v124);
}

uint64_t AssetPackManifest.allDownloads(for:)(uint64_t a1, int a2)
{
  v62 = a1;
  v4 = sub_236E81AB4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87B00, &unk_236E84540);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v53 - v11;
  MEMORY[0x28223BE20](v10);
  v15 = &v53 - v14;
  v16 = *v2;
  if (a2)
  {
    if (qword_27DE87AF8 != -1)
    {
      swift_once();
    }

    v17 = sub_236E81DA4();
    __swift_project_value_buffer(v17, qword_27DE88430);
    v18 = sub_236E820E4();
    v19 = sub_236E81D84();
    if (os_log_type_enabled(v19, v18))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_236E28000, v19, v18, "All downloads", v20, 2u);
      MEMORY[0x2383C0E50](v20, -1, -1);
    }

    goto LABEL_22;
  }

  v59 = v13;
  LODWORD(v58) = *(v2 + 8);
  v21 = *(v2 + 16);
  v56 = *(v2 + 24);
  v57 = v21;
  if (qword_27DE87AF8 != -1)
  {
    swift_once();
  }

  v22 = sub_236E81DA4();
  __swift_project_value_buffer(v22, qword_27DE88430);
  v23 = sub_236E820E4();
  v24 = sub_236E81D84();
  v25 = os_log_type_enabled(v24, v23);
  v61 = a2;
  v60 = v4;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v63 = v54;
    *v26 = 136446210;
    v67 = v62;
    type metadata accessor for BAContentRequest(0);
    v27 = sub_236E81ED4();
    v29 = v16;
    v30 = v15;
    v31 = v7;
    v32 = v5;
    v33 = sub_236E381CC(v27, v28, &v63);

    *(v26 + 4) = v33;
    v5 = v32;
    v7 = v31;
    v15 = v30;
    v16 = v29;
    _os_log_impl(&dword_236E28000, v24, v23, "All downloads for: %{public}s", v26, 0xCu);
    v34 = v54;
    __swift_destroy_boxed_opaque_existential_0(v54);
    MEMORY[0x2383C0E50](v34, -1, -1);
    v35 = v26;
    v4 = v60;
    MEMORY[0x2383C0E50](v35, -1, -1);
  }

  v36 = v59;
  switch(v62)
  {
    case 1:
      v38 = MEMORY[0x277D25B70];
LABEL_17:
      (*(v5 + 104))(v12, *v38, v4);
      v37 = 0;
      goto LABEL_18;
    case 3:
      v37 = 1;
LABEL_18:
      (*(v5 + 56))(v12, v37, 1, v4);
      sub_236E59508(v12, v15, &unk_27DE87B00, &unk_236E84540);
      sub_236E593A8(v15, v36, &unk_27DE87B00, &unk_236E84540);
      if ((*(v5 + 48))(v36, 1, v4) == 1)
      {
        sub_236E38DBC(v36, &unk_27DE87B00, &unk_236E84540);
        sub_236E38DBC(v15, &unk_27DE87B00, &unk_236E84540);
        v16 = MEMORY[0x277D84FA0];
      }

      else
      {
        (*(v5 + 32))(v7, v36, v4);
        v63 = v16;
        LOBYTE(v64) = v58;
        v65 = v57;
        v66 = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87B90, &unk_236E848C0);
        v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88530, &qword_236E86200) - 8);
        v40 = *(v39 + 72);
        v41 = (*(v39 + 80) + 32) & ~*(v39 + 80);
        v42 = swift_allocObject();
        v59 = v42;
        *(v42 + 16) = xmmword_236E84530;
        v43 = v42 + v41;
        v55 = v5;
        v57 = *(v5 + 16);
        v57(v42 + v41, v7, v4);
        v44 = *MEMORY[0x277D25B98];
        v45 = v4;
        v46 = sub_236E81AC4();
        v47 = *(v46 - 8);
        v58 = v15;
        v48 = *(v47 + 104);
        v48(v43, v44, v46);
        v49 = *(v47 + 56);
        v49(v43, 0, 1, v46);
        v57(v43 + v40, v7, v45);
        v48(v43 + v40, *MEMORY[0x277D25B90], v46);
        v49(v43 + v40, 0, 1, v46);
        v16 = sub_236E6FE9C(v59);

        (*(v55 + 8))(v7, v60);
        sub_236E38DBC(v58, &unk_27DE87B00, &unk_236E84540);
      }

      LOBYTE(a2) = v61;
LABEL_22:
      v50 = sub_236E702E8(v16, v62, a2 & 1);

      v51 = sub_236E56F8C(v50);

      return v51;
    case 2:
      v38 = MEMORY[0x277D25B78];
      goto LABEL_17;
  }

  v63 = 0;
  v64 = 0xE000000000000000;
  sub_236E82264();
  MEMORY[0x2383BFD30](0x1000000000000017, 0x8000000236E89DF0);
  v67 = v62;
  type metadata accessor for BAContentRequest(0);
  sub_236E82304();
  MEMORY[0x2383BFD30](0x75207369209D80E2, 0xAF2E6E776F6E6B6ELL);
  result = sub_236E82344();
  __break(1u);
  return result;
}

uint64_t AssetPackManifest.encode(to:)(void *a1)
{
  v3 = type metadata accessor for AssetPack(0);
  v55 = *(v3 - 8);
  v56 = v3;
  MEMORY[0x28223BE20](v3);
  v53 = v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88480, &qword_236E86208);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v49 - v7;
  v9 = *v1;
  v50 = *(v1 + 8);
  v49[2] = v1[3];
  if (qword_27DE87AF8 != -1)
  {
LABEL_23:
    swift_once();
  }

  v10 = sub_236E81DA4();
  v11 = __swift_project_value_buffer(v10, qword_27DE88430);
  v12 = sub_236E820E4();
  sub_236E6DA84(a1, &v58);
  v49[1] = v11;
  v13 = sub_236E81D84();
  v14 = os_log_type_enabled(v13, v12);
  v54 = v5;
  v51 = v6;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v61 = v16;
    *v15 = 136446210;
    v52 = v9;
    v17 = __swift_project_boxed_opaque_existential_0(&v58, v60);
    MEMORY[0x28223BE20](v17);
    v19 = v8;
    (*(v20 + 16))(v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    v21 = sub_236E81ED4();
    v23 = v22;
    __swift_destroy_boxed_opaque_existential_0(&v58);
    v24 = sub_236E381CC(v21, v23, &v61);
    v8 = v19;

    *(v15 + 4) = v24;
    v9 = v52;
    _os_log_impl(&dword_236E28000, v13, v12, "Encode to: %{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x2383C0E50](v16, -1, -1);
    MEMORY[0x2383C0E50](v15, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(&v58);
  }

  v6 = a1[4];
  v25 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_236E75660(v25, v26, v27);
  sub_236E825B4();
  LOBYTE(v61) = 0;
  v52 = v8;
  sub_236E82434();
  a1 = v9 + 56;
  v28 = 1 << v9[32];
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v5 = v29 & *(v9 + 7);
  v8 = ((v28 + 63) >> 6);

  v30 = 0;
  v31 = v53;
  if (v5)
  {
    while (1)
    {
      v32 = v30;
LABEL_12:
      sub_236E393B0(*(v9 + 6) + *(v55 + 72) * (__clz(__rbit64(v5)) | (v32 << 6)), v31);
      v6 = v60;
      __swift_mutable_project_boxed_opaque_existential_1(&v58, v60);
      sub_236E755C4(&qword_27DE88488, type metadata accessor for AssetPack, &protocol conformance descriptor for AssetPack);
      v33 = v57;
      sub_236E824B4();
      v57 = v33;
      if (v33)
      {
        break;
      }

      v5 &= v5 - 1;
      sub_236E39414(v31);
      v30 = v32;
      if (!v5)
      {
        goto LABEL_9;
      }
    }

    sub_236E39414(v31);

    (*(v51 + 8))(v52, v54);
    v37 = v57;
LABEL_17:
    __swift_destroy_boxed_opaque_existential_0(&v58);
    v38 = sub_236E820F4();

    v39 = v37;
    v40 = sub_236E81D84();

    if (os_log_type_enabled(v40, v38))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v58 = 0;
      v61 = v57;
      *v41 = 136446466;
      v59 = 0xE000000000000000;

      sub_236E82264();

      v58 = 0xD000000000000024;
      v59 = 0x8000000236E89E50;
      sub_236E755C4(&qword_27DE88020, type metadata accessor for AssetPack, &protocol conformance descriptor for AssetPack);
      v43 = sub_236E820A4();
      MEMORY[0x2383BFD30](v43);

      MEMORY[0x2383BFD30](62, 0xE100000000000000);

      v44 = sub_236E381CC(v58, v59, &v61);

      *(v41 + 4) = v44;
      *(v41 + 12) = 2114;
      v45 = v37;
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 14) = v46;
      *v42 = v46;
      _os_log_impl(&dword_236E28000, v40, v38, "The asset-pack manifest “%{public}s” couldn’t be encoded: %{public}@", v41, 0x16u);
      sub_236E38DBC(v42, &qword_27DE88170, &qword_236E853C0);
      MEMORY[0x2383C0E50](v42, -1, -1);
      v47 = v57;
      __swift_destroy_boxed_opaque_existential_0(v57);
      MEMORY[0x2383C0E50](v47, -1, -1);
      MEMORY[0x2383C0E50](v41, -1, -1);
    }

    return swift_willThrow();
  }

  else
  {
    while (1)
    {
LABEL_9:
      v32 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
        goto LABEL_23;
      }

      if (v32 >= v8)
      {
        break;
      }

      v5 = a1[v32];
      ++v30;
      if (v5)
      {
        goto LABEL_12;
      }
    }

    LOBYTE(v61) = 1;
    v34 = v54;
    v35 = v52;
    v36 = v57;
    sub_236E82454();
    v37 = v36;
    if (v36)
    {
      (*(v51 + 8))(v35, v34);
      goto LABEL_17;
    }

    (*(v51 + 8))(v35, v34);
    return __swift_destroy_boxed_opaque_existential_0(&v58);
  }
}

unint64_t sub_236E749E0()
{
  sub_236E82264();

  type metadata accessor for AssetPack(0);
  sub_236E755C4(&qword_27DE88020, type metadata accessor for AssetPack, &protocol conformance descriptor for AssetPack);
  v0 = sub_236E820A4();
  MEMORY[0x2383BFD30](v0);

  MEMORY[0x2383BFD30](62, 0xE100000000000000);
  return 0xD000000000000024;
}

uint64_t sub_236E74AE8(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0xD000000000000021;
  }

  sub_236E82264();

  v3 = sub_236E82124();
  MEMORY[0x2383BFD30](v3);

  MEMORY[0x2383BFD30](0x75207369209D80E2, 0xAF2E6E776F6E6B6ELL);
  return 0x100000000000001CLL;
}

uint64_t sub_236E74CAC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for AssetPack(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  sub_236E393B0(a1, &v16 - v8);
  v10 = objc_allocWithZone(BAAssetPack);
  sub_236E393B0(v9, v7);
  v11 = _s16AssetPackWrapperCMa(0);
  v12 = objc_allocWithZone(v11);
  sub_236E393B0(v7, v12 + OBJC_IVAR____TtCE16BackgroundAssetsCSo11BAAssetPackP33_FC678A7B1B18D835D2D983742E3D211216AssetPackWrapper_assetPack);
  v16.receiver = v12;
  v16.super_class = v11;
  v13 = objc_msgSendSuper2(&v16, sel_init);
  sub_236E39414(v7);
  v14 = [v10 init_];

  result = sub_236E39414(v9);
  *a2 = v14;
  return result;
}

void __swiftcall BAAssetPackManifest.init()(BAAssetPackManifest *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

void *sub_236E753B0(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE884D0, &unk_236E86660);
  v10 = *(sub_236E81AC4() - 8);
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
  v15 = *(sub_236E81AC4() - 8);
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

uint64_t sub_236E75588@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = (*(v3 + 16))(a1, *a2, a2[1]);
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_236E755C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_236E7560C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DE88460;
  if (!qword_27DE88460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE88460);
  }

  return result;
}

unint64_t sub_236E75660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DE88468;
  if (!qword_27DE88468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE88468);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_236E75704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DE88478;
  if (!qword_27DE88478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE88478);
  }

  return result;
}

unint64_t *sub_236E75758(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_236E757F4(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_236E757F4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a2;
  v40 = a4;
  v31 = a1;
  v5 = sub_236E81AC4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for AssetPack(0);
  v33 = *(v39 - 8);
  result = MEMORY[0x28223BE20](v39);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = 0;
  v35 = a3;
  v12 = 0;
  v13 = *(a3 + 56);
  v30 = a3 + 56;
  v14 = 1 << *(a3 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v17 = (v14 + 63) >> 6;
  v38 = v6 + 16;
  v32 = v17;
LABEL_5:
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v37 = (v16 - 1) & v16;
LABEL_12:
    v21 = v18 | (v12 << 6);
    v22 = *(v35 + 48);
    v23 = *(v33 + 72);
    v36 = v21;
    sub_236E393B0(v22 + v23 * v21, v11);
    v24 = 0;
    v25 = *(v40 + 16);
    do
    {
      if (v25 == v24)
      {
        result = sub_236E39414(v11);
        v17 = v32;
        v16 = v37;
        goto LABEL_5;
      }

      (*(v6 + 16))(v8, v40 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v24++, v5);
      v26 = sub_236E81AA4();
      (*(v6 + 8))(v8, v5);
    }

    while ((v26 & 1) == 0);
    result = sub_236E39414(v11);
    *(v31 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
    v27 = __OFADD__(v34++, 1);
    v17 = v32;
    v16 = v37;
    if (v27)
    {
      __break(1u);
LABEL_18:
      v28 = v35;

      return sub_236E7AF64(v31, v29, v34, v28);
    }
  }

  v19 = v12;
  while (1)
  {
    v12 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v12 >= v17)
    {
      goto LABEL_18;
    }

    v20 = *(v30 + 8 * v12);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v37 = (v20 - 1) & v20;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_236E75B00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v47 = *MEMORY[0x277D85DE8];
  v6 = sub_236E81AC4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for AssetPack(0);
  v40 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v45 = a2;
  v46 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v10) = *(a1 + 32);
  v11 = v10 & 0x3F;
  v12 = ((1 << v10) + 63) >> 6;
  v13 = 8 * v12;

  if (v11 > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v34 = v12;
    v35 = v3;
    v33[1] = v33;
    MEMORY[0x28223BE20](v14);
    v37 = v33 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v37, v13);
    v41 = 0;
    v13 = 0;
    v15 = *(a1 + 56);
    v36 = a1 + 56;
    v16 = 1 << *(a1 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & v15;
    v19 = (v16 + 63) >> 6;
    v12 = v7 + 16;
    v38 = v19;
    v39 = a1;
LABEL_6:
    while (v18)
    {
      v20 = __clz(__rbit64(v18));
      v43 = (v18 - 1) & v18;
LABEL_13:
      v23 = v20 | (v13 << 6);
      v24 = *(a1 + 48);
      v25 = *(v40 + 72);
      v42 = v23;
      sub_236E393B0(v24 + v25 * v23, v46);
      v26 = 0;
      v3 = *(v45 + 16);
      do
      {
        if (v3 == v26)
        {
          sub_236E39414(v46);
          v19 = v38;
          a1 = v39;
          v18 = v43;
          goto LABEL_6;
        }

        (*(v7 + 16))(v9, v45 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v26++, v6);
        v27 = sub_236E81AA4();
        (*(v7 + 8))(v9, v6);
      }

      while ((v27 & 1) == 0);
      sub_236E39414(v46);
      *&v37[(v42 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v42;
      v28 = __OFADD__(v41++, 1);
      v19 = v38;
      a1 = v39;
      v18 = v43;
      if (v28)
      {
        __break(1u);
LABEL_19:
        v29 = sub_236E7AF64(v37, v34, v41, a1);

        return v29;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v19)
      {
        goto LABEL_19;
      }

      v22 = *(v36 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v43 = (v22 - 1) & v22;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v31 = swift_slowAlloc();
  v32 = v45;

  v29 = sub_236E75758(v31, v12, a1, v32);

  MEMORY[0x2383C0E50](v31, -1, -1);

  return v29;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_236E75F44(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_236E75F8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_s7Decoder_pSSSgShy16BackgroundAssets9AssetPackVGs5Error_pIegngozo_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_236E76008(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_236E76064(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AssetPackManifestError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AssetPackManifestError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_236E7614C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_236E76168(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetPackManifest.AppStoreCodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AssetPackManifest.AppStoreCodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_236E7628C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DE884A0;
  if (!qword_27DE884A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE884A0);
  }

  return result;
}

unint64_t sub_236E762E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DE884A8;
  if (!qword_27DE884A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE884A8);
  }

  return result;
}

unint64_t sub_236E76340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DE884B0;
  if (!qword_27DE884B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE884B0);
  }

  return result;
}

unint64_t sub_236E76398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DE884B8;
  if (!qword_27DE884B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE884B8);
  }

  return result;
}

unint64_t sub_236E763F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DE884C0;
  if (!qword_27DE884C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE884C0);
  }

  return result;
}

unint64_t sub_236E76448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DE884C8;
  if (!qword_27DE884C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE884C8);
  }

  return result;
}

uint64_t sub_236E7649C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

void sub_236E764C0(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4)
{
  v194 = sub_236E81AB4();
  *&v193 = *(v194 - 8);
  v8 = MEMORY[0x28223BE20](v194);
  v188 = &v181 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v187 = &v181 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v189 = &v181 - v13;
  MEMORY[0x28223BE20](v12);
  v195 = (&v181 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87B00, &unk_236E84540);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v192 = &v181 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v190 = (&v181 - v19);
  MEMORY[0x28223BE20](v18);
  v198 = &v181 - v20;
  v21 = sub_236E819F4();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = (&v181 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v212 = a4;
  if (qword_27DE87A90 != -1)
  {
    goto LABEL_85;
  }

  while (1)
  {
    v196 = sub_236E81DA4();
    v25 = __swift_project_value_buffer(v196, qword_27DE87A98);
    v26 = sub_236E820E4();
    (*(v22 + 16))(v24, a2, v21);
    v27 = a3;
    v28 = sub_236E81D84();

    v29 = os_log_type_enabled(v28, v26);
    v191 = a1;
    if (v29)
    {
      v30 = swift_slowAlloc();
      v197 = a2;
      v31 = v30;
      v32 = swift_slowAlloc();
      v199 = v25;
      v33 = v32;
      v186 = swift_slowAlloc();
      v202 = v186;
      *v31 = 136446722;
      v208 = a1;
      type metadata accessor for BAContentRequest(0);
      v34 = sub_236E81ED4();
      v36 = sub_236E381CC(v34, v35, &v202);

      *(v31 + 4) = v36;
      *(v31 + 12) = 2082;
      sub_236E7B4A8(&unk_27DE87B30, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v37 = sub_236E82484();
      v39 = v38;
      (*(v22 + 8))(v24, v21);
      v40 = sub_236E381CC(v37, v39, &v202);

      *(v31 + 14) = v40;
      *(v31 + 22) = 2114;
      *(v31 + 24) = v27;
      *v33 = v27;
      v41 = v27;
      _os_log_impl(&dword_236E28000, v28, v26, "Downloads for: %{public}s manifest URL: %{public}s extension info: %{public}@", v31, 0x20u);
      sub_236E38DBC(v33, &qword_27DE88170, &qword_236E853C0);
      v42 = v33;
      v25 = v199;
      MEMORY[0x2383C0E50](v42, -1, -1);
      v43 = v186;
      swift_arrayDestroy();
      MEMORY[0x2383C0E50](v43, -1, -1);
      MEMORY[0x2383C0E50](v31, -1, -1);
    }

    else
    {

      (*(v22 + 8))(v24, v21);
    }

    objc_opt_self();
    v44 = swift_dynamicCastObjCClass();
    if (!v44)
    {
      break;
    }

    v45 = v44;
    v46 = v27;
    v47 = sub_236E81D84();
    v48 = sub_236E82114();
    v49 = os_log_type_enabled(v47, v48);
    v197 = v46;
    if (v49)
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v202 = v51;
      *v50 = 136315138;
      [v45 manifestDataSource];
      v52 = sub_236E82124();
      v54 = v25;
      v55 = sub_236E381CC(v52, v53, &v202);

      *(v50 + 4) = v55;
      v25 = v54;
      _os_log_impl(&dword_236E28000, v47, v48, "The managed downloader extension was launched with a manifest from “%s”.", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v51);
      MEMORY[0x2383C0E50](v51, -1, -1);
      MEMORY[0x2383C0E50](v50, -1, -1);
    }

    v56 = sub_236E81A04();
    v58 = v57;
    sub_236E818E4();
    swift_allocObject();
    sub_236E818D4();
    sub_236E818B4();
    if (qword_27DE87AB0 != -1)
    {
      swift_once();
    }

    v199 = v25;
    v59 = qword_27DE87DC0;
    v186 = sub_236E3BA24();
    v61 = v60;
    v62 = [v45 manifestDataSource];
    v63 = qword_27DE87AE8;

    if (v63 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v196, qword_27DE88410);
    v64 = sub_236E820E4();

    v65 = sub_236E81D84();

    if (os_log_type_enabled(v65, v64))
    {
      v66 = swift_slowAlloc();
      v196 = v59;
      v67 = v66;
      v185 = swift_slowAlloc();
      v202 = v185;
      *v67 = 136446722;
      LODWORD(v184) = v64;
      v68 = v186;
      v69 = v62;
      v70 = sub_236E381CC(v186, v61, &v202);

      *(v67 + 4) = v70;
      *(v67 + 12) = 2082;
      v71 = sub_236E82124();
      v73 = sub_236E381CC(v71, v72, &v202);
      v183 = v65;
      v74 = v73;
      v62 = v69;

      *(v67 + 14) = v74;
      v75 = v68;
      *(v67 + 22) = 1024;
      *(v67 + 24) = 1;
      v76 = v183;
      _os_log_impl(&dword_236E28000, v183, v184, "Init app group ID: %{public}s source: %{public}s managed: %{BOOL}d", v67, 0x1Cu);
      v77 = v185;
      swift_arrayDestroy();
      MEMORY[0x2383C0E50](v77, -1, -1);
      v78 = v67;
      v59 = v196;
      MEMORY[0x2383C0E50](v78, -1, -1);
    }

    else
    {

      v75 = v186;
    }

    v202 = v75;
    v203 = v61;
    LOBYTE(v204) = 1;
    v205 = v62;
    sub_236E38C10(v79, v80, v81);
    v206 = 0;
    v207 = 0;
    sub_236E818C4();
    v88 = v206;
    v89 = v207;

    sub_236E38C64(v88, v89);

    sub_236E38C74(v56, v58);
    v90 = v208;
    v91 = v209;
    v92 = v210;
    v93 = v211;
    v94 = sub_236E81D84();
    v95 = sub_236E82114();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&dword_236E28000, v94, v95, "Installing the manifest that Background Assets provided to the managed downloader extension…", v96, 2u);
      MEMORY[0x2383C0E50](v96, -1, -1);
    }

    v202 = v90;
    LODWORD(v185) = v91;
    LOBYTE(v203) = v91;
    v186 = v92;
    v204 = v92;
    v205 = v93;

    v196 = v59;
    sub_236E3E794(&v202);
    v97 = v193;
    v98 = v192;

    v99 = MEMORY[0x277D25B70];
    v100 = v194;
    v24 = v190;
    if (v191 == 1)
    {
      v101 = 1;
      v103 = MEMORY[0x277D25B70];
    }

    else
    {
      if (v191 == 3)
      {
        v101 = 3;
        v102 = 1;
        goto LABEL_31;
      }

      v101 = v191;
      if (v191 != 2)
      {
        v202 = 0;
        v203 = 0xE000000000000000;
        sub_236E82264();
        MEMORY[0x2383BFD30](0x1000000000000017, 0x8000000236E89DF0);
        v208 = v101;
        type metadata accessor for BAContentRequest(0);
        sub_236E82304();
        MEMORY[0x2383BFD30](0x75207369209D80E2, 0xAF2E6E776F6E6B6ELL);
        v180 = 0;
        v179 = 87;
        sub_236E82344();
        __break(1u);
        return;
      }

      v103 = MEMORY[0x277D25B78];
    }

    (*(v97 + 104))(v190, *v103, v194);
    v102 = 0;
LABEL_31:
    (*(v97 + 56))(v24, v102, 1, v100);
    sub_236E38CDC(v24, v198);
    if (MEMORY[0x277D84F90] >> 62)
    {
      if (sub_236E821E4())
      {
        sub_236E38944(MEMORY[0x277D84F90]);
      }

      else
      {
        v104 = MEMORY[0x277D84FA0];
      }

      v100 = v194;
      v97 = v193;
      v98 = v192;
    }

    else
    {
      v104 = MEMORY[0x277D84FA0];
    }

    v208 = v104;
    sub_236E593A8(v198, v98, &unk_27DE87B00, &unk_236E84540);
    if ((*(v97 + 48))(v98, 1, v100) != 1)
    {
      v190 = v93;
      v184 = v90;
      v105 = v195;
      (*(v97 + 32))(v195, v98, v100);
      v106 = *(v97 + 16);
      v107 = v189;
      v106(v189, v105, v100);
      v183 = *(v97 + 88);
      v108 = (v183)(v107, v100);
      if (v108 == *v99)
      {
        v109 = sub_236E81D84();
        v110 = sub_236E82114();
        if (os_log_type_enabled(v109, v110))
        {
          v111 = swift_slowAlloc();
          *v111 = 0;
          _os_log_impl(&dword_236E28000, v109, v110, "Scheduling essential and prefetch asset packs for a first installation to be downloaded…", v111, 2u);
          MEMORY[0x2383C0E50](v111, -1, -1);
        }

LABEL_47:
        v116 = v184;
      }

      else
      {
        if (v108 != *MEMORY[0x277D25B78])
        {
          v118 = sub_236E82104();
          v119 = v187;
          v106(v187, v195, v100);
          v120 = v100;
          v121 = sub_236E81D84();
          LODWORD(v192) = v118;
          v122 = v118;
          v123 = v121;
          if (os_log_type_enabled(v121, v122))
          {
            v124 = swift_slowAlloc();
            v182 = v124;
            v181 = swift_slowAlloc();
            v202 = v181;
            *v124 = 136446210;
            sub_236E7B4A8(&unk_27DE88520, MEMORY[0x277D25B80], MEMORY[0x277D25B88]);
            v125 = sub_236E82484();
            v127 = v126;
            v128 = v119;
            v129 = *(v193 + 8);
            v129(v128, v120);
            v130 = sub_236E381CC(v125, v127, &v202);

            v131 = v182;
            *(v182 + 1) = v130;
            _os_log_impl(&dword_236E28000, v123, v192, "The installation event type “%{public}s” is unknown.", v131, 0xCu);
            v132 = v106;
            v133 = v181;
            __swift_destroy_boxed_opaque_existential_0(v181);
            v134 = v133;
            v106 = v132;
            MEMORY[0x2383C0E50](v134, -1, -1);
            MEMORY[0x2383C0E50](v182, -1, -1);

            v112 = (v129)(v189, v194);
          }

          else
          {

            v135 = v119;
            v136 = *(v193 + 8);
            v136(v135, v100);
            v112 = (v136)(v189, v100);
          }

          goto LABEL_47;
        }

        v113 = sub_236E81D84();
        v114 = sub_236E82114();
        v115 = os_log_type_enabled(v113, v114);
        v116 = v184;
        if (v115)
        {
          v117 = swift_slowAlloc();
          *v117 = 0;
          _os_log_impl(&dword_236E28000, v113, v114, "Scheduling essential and prefetch asset packs for a subsequent update to be downloaded…", v117, 2u);
          MEMORY[0x2383C0E50](v117, -1, -1);
        }
      }

      MEMORY[0x28223BE20](v112);
      *(&v181 - 8) = v116;
      LOBYTE((&v181)[-7]) = v185;
      v137 = v190;
      *(&v181 - 6) = v186;
      *(&v181 - 5) = v137;
      *(&v181 - 4) = v195;
      *(&v181 - 3) = &v212;
      v179 = v101;
      v138 = sub_236E37CD0(sub_236E7B464, &(&v181)[-10]);
      v192 = 0;
      sub_236E38EAC(v138);

      v139 = v194;
      v140 = v101;
      v24 = v183;
      v141 = v188;
      v106(v188, v195, v194);
      if ((v24)(v141, v139) == *MEMORY[0x277D25B78])
      {
        v142 = *(v193 + 8);
        v142(v141, v139);
        v24 = v190;
        v143 = v192;
        sub_236E789CC(&v208, v116, v185, v186, v190, v140);
        v192 = v143;
        if (v143)
        {

          v24 = sub_236E820F4();
          v144 = v192;
          v145 = v192;
          v146 = sub_236E81D84();

          if (os_log_type_enabled(v146, v24))
          {
            v147 = swift_slowAlloc();
            v148 = swift_slowAlloc();
            *v147 = 138543362;
            v149 = v192;
            v150 = v192;
            v151 = _swift_stdlib_bridgeErrorToNSError();
            *(v147 + 4) = v151;
            *v148 = v151;
            _os_log_impl(&dword_236E28000, v146, v24, "Update downloads couldn’t be added: %{public}@", v147, 0xCu);
            sub_236E38DBC(v148, &qword_27DE88170, &qword_236E853C0);
            MEMORY[0x2383C0E50](v148, -1, -1);
            MEMORY[0x2383C0E50](v147, -1, -1);
          }

          else
          {
          }

          v192 = 0;
          v139 = v194;
        }

        else
        {
        }

        v142(v195, v139);
      }

      else
      {

        v152 = *(v193 + 8);
        v152(v141, v139);
        v152(v195, v139);
      }

      goto LABEL_57;
    }

    sub_236E38DBC(v98, &unk_27DE87B00, &unk_236E84540);
    sub_236E789CC(&v208, v90, v185, v186, v93, v101);
    v192 = 0;

LABEL_57:
    v191 = v208;
    if ((v208 & 0xC000000000000001) != 0)
    {

      sub_236E821D4();
      sub_236E588C4(0, &qword_27DE88510, off_278A0CA20);
      sub_236E3AA4C();
      sub_236E820C4();
      v154 = v202;
      v21 = v203;
      a3 = v204;
      a1 = v205;
      v155 = v206;
    }

    else
    {
      v156 = -1 << *(v208 + 32);
      v21 = v208 + 56;
      a3 = ~v156;
      v157 = -v156;
      if (v157 < 64)
      {
        v158 = ~(-1 << v157);
      }

      else
      {
        v158 = -1;
      }

      v155 = v158 & *(v208 + 56);
      a1 = 0;
    }

    v190 = a3;
    v22 = &a3[8] >> 6;
    *&v153 = 136446466;
    v193 = v153;
    v194 = v22;
    while (v154 < 0)
    {
      v163 = sub_236E82204();
      if (!v163 || (v200 = v163, sub_236E588C4(0, &qword_27DE88510, off_278A0CA20), swift_dynamicCast(), v162 = v201, a2 = a1, v161 = v155, !v201))
      {
LABEL_83:
        sub_236E38DBC(v198, &unk_27DE87B00, &unk_236E84540);

        sub_236E38E68(v154);
        return;
      }

LABEL_75:
      v196 = v161;
      v24 = v162;
      v164 = sub_236E81D84();
      a3 = sub_236E82114();

      if (os_log_type_enabled(v164, a3))
      {
        v165 = swift_slowAlloc();
        v195 = swift_slowAlloc();
        v201 = v195;
        *v165 = v193;
        v166 = [v24 isEssential];
        v167 = v166 == 0;
        if (v166)
        {
          v168 = 0x6169746E65737365;
        }

        else
        {
          v168 = 0x6863746566657270;
        }

        if (v167)
        {
          v169 = 0xE800000000000000;
        }

        else
        {
          v169 = 0xE90000000000006CLL;
        }

        v170 = sub_236E381CC(v168, v169, &v201);

        *(v165 + 4) = v170;
        *(v165 + 12) = 2082;
        v171 = [v24 identifier];
        v172 = sub_236E81E94();
        v173 = v154;
        v174 = v21;
        v176 = v175;

        v177 = v172;
        v22 = v194;
        v178 = sub_236E381CC(v177, v176, &v201);
        v21 = v174;
        v154 = v173;

        *(v165 + 14) = v178;
        _os_log_impl(&dword_236E28000, v164, a3, "Scheduling the %{public}s asset pack with the ID “%{public}s” to be downloaded…", v165, 0x16u);
        a3 = v195;
        swift_arrayDestroy();
        MEMORY[0x2383C0E50](a3, -1, -1);
        MEMORY[0x2383C0E50](v165, -1, -1);
      }

      else
      {
      }

      a1 = a2;
      v155 = v196;
    }

    v159 = a1;
    v160 = v155;
    a2 = a1;
    if (v155)
    {
LABEL_71:
      v161 = (v160 - 1) & v160;
      v162 = *(*(v154 + 48) + ((a2 << 9) | (8 * __clz(__rbit64(v160)))));
      if (!v162)
      {
        goto LABEL_83;
      }

      goto LABEL_75;
    }

    while (1)
    {
      a2 = v159 + 1;
      if (__OFADD__(v159, 1))
      {
        break;
      }

      if (a2 >= v22)
      {
        goto LABEL_83;
      }

      v160 = *(v21 + 8 * a2);
      ++v159;
      if (v160)
      {
        goto LABEL_71;
      }
    }

    __break(1u);
LABEL_85:
    swift_once();
  }

  v82 = sub_236E82104();
  v83 = v27;
  v84 = sub_236E81D84();

  if (os_log_type_enabled(v84, v82))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    *v85 = 138543362;
    *(v85 + 4) = v83;
    *v86 = v83;
    v87 = v83;
    _os_log_impl(&dword_236E28000, v84, v82, "The extension info “%{public}@” isn’t managed-downloader-extension info.", v85, 0xCu);
    sub_236E38DBC(v86, &qword_27DE88170, &qword_236E853C0);
    MEMORY[0x2383C0E50](v86, -1, -1);
    MEMORY[0x2383C0E50](v85, -1, -1);
  }

  if (MEMORY[0x277D84F90] >> 62 && sub_236E821E4())
  {
    sub_236E38944(MEMORY[0x277D84F90]);
  }
}

uint64_t sub_236E7804C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v78 = a1;
  v71 = a8;
  v81 = a7;
  v73 = a6;
  v87 = *MEMORY[0x277D85DE8];
  v13 = type metadata accessor for AssetPack(0);
  v77 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v76 = v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v75 = v67 - v17;
  MEMORY[0x28223BE20](v16);
  v80 = v67 - v18;
  v83 = a2;
  v84 = a3;
  v85 = a4;
  v86 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87B90, &unk_236E848C0);
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88530, &qword_236E86200) - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_236E84530;
  v23 = v22 + v21;
  v24 = sub_236E81AB4();
  v25 = *(v24 - 8);
  v72 = *(v25 + 16);
  v74 = v25 + 16;
  v72(v23, a6, v24);
  v26 = *MEMORY[0x277D25B98];
  v27 = sub_236E81AC4();
  v28 = *(v27 - 8);
  v29 = *(v28 + 104);
  v29(v23, v26, v27);
  v30 = *(v28 + 56);
  v30(v23, 0, 1, v27);
  v72(v23 + v20, v73, v24);
  v29(v23 + v20, *MEMORY[0x277D25B90], v27);
  v30(v23 + v20, 0, 1, v27);
  v31 = v81;
  v32 = sub_236E6FE9C(v22);

  v33 = v78;

  v34 = v79;
  v35 = sub_236E7B708(v32, v33);
  v36 = v34;

  v37 = swift_allocObject();
  *(v37 + 16) = v31;
  v38 = *(v35 + 32);
  LODWORD(v34) = v38 & 0x3F;
  v39 = ((1 << v38) + 63) >> 6;
  v40 = (8 * v39);
  v41 = swift_unknownObjectRetain_n();
  if (v34 > 0xD)
  {
    goto LABEL_23;
  }

  while (2)
  {
    v68 = v39;
    v69 = v37;
    v70 = v36;
    v67[1] = v67;
    MEMORY[0x28223BE20](v41);
    v72 = (v67 - ((v40 + 15) & 0x3FFFFFFFFFFFFFF0));
    bzero(v72, v40);
    v73 = 0;
    v39 = 0;
    v78 = v35;
    v43 = *(v35 + 56);
    v35 += 56;
    v42 = v43;
    v44 = 1 << *(v35 - 24);
    v45 = -1;
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    v46 = v45 & v42;
    v37 = (v44 + 63) >> 6;
    while (v46)
    {
      v47 = __clz(__rbit64(v46));
      v46 &= v46 - 1;
LABEL_12:
      v50 = v47 | (v39 << 6);
      v51 = *(v78 + 48);
      v52 = *(v77 + 72);
      v74 = v50;
      sub_236E393B0(v51 + v52 * v50, v80);
      if (v81 && ([v81 respondsToSelector_] & 1) != 0)
      {
        v53 = v75;
        sub_236E393B0(v80, v75);
        v54 = objc_allocWithZone(BAAssetPack);
        v79 = v46;
        v55 = v54;
        v56 = v76;
        sub_236E393B0(v53, v76);
        v57 = _s16AssetPackWrapperCMa(0);
        v40 = objc_allocWithZone(v57);
        sub_236E393B0(v56, v40 + OBJC_IVAR____TtCE16BackgroundAssetsCSo11BAAssetPackP33_FC678A7B1B18D835D2D983742E3D211216AssetPackWrapper_assetPack);
        v82.receiver = v40;
        v82.super_class = v57;
        v58 = objc_msgSendSuper2(&v82, sel_init);
        sub_236E39414(v56);
        v59 = [v55 init_];

        sub_236E39414(v53);
        v36 = [v81 shouldDownloadAssetPack_];

        v46 = v79;
        sub_236E39414(v80);
        if (v36)
        {
          goto LABEL_17;
        }
      }

      else
      {
        sub_236E39414(v80);
LABEL_17:
        *(v72 + ((v74 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v74;
        if (__OFADD__(v73++, 1))
        {
          __break(1u);
LABEL_20:
          swift_unknownObjectRelease();
          v61 = sub_236E7AF64(v72, v68, v73, v78);

          v62 = v71;
          goto LABEL_21;
        }
      }
    }

    v48 = v39;
    while (1)
    {
      v39 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        break;
      }

      if (v39 >= v37)
      {
        goto LABEL_20;
      }

      v49 = *(v35 + 8 * v39);
      ++v48;
      if (v49)
      {
        v47 = __clz(__rbit64(v49));
        v46 = (v49 - 1) & v49;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_23:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  swift_unknownObjectRelease();
  v65 = swift_slowAlloc();
  v66 = sub_236E7AED4(v65, v39, v35, sub_236E7BA68);
  if (v36)
  {

    result = MEMORY[0x2383C0E50](v65, -1, -1);
    __break(1u);
  }

  else
  {
    v61 = v66;

    MEMORY[0x2383C0E50](v65, -1, -1);

    v62 = v71;
LABEL_21:
    v63 = sub_236E7871C(v61, v62);

    return v63;
  }

  return result;
}

uint64_t sub_236E7871C(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v4 = type metadata accessor for AssetPack(0);
  v23 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v22 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v20[1] = v2;
    v27 = MEMORY[0x277D84F90];
    sub_236E822D4();
    v25 = a1 + 56;
    result = sub_236E821A4();
    v8 = result;
    v9 = 0;
    v26 = *(a1 + 36);
    v21 = a1 + 64;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v25 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_21;
      }

      if (v26 != *(a1 + 36))
      {
        goto LABEL_22;
      }

      v12 = v22;
      sub_236E393B0(*(a1 + 48) + *(v23 + 72) * v8, v22);
      AssetPack.download(for:)(v24, 0);
      sub_236E39414(v12);
      sub_236E822B4();
      sub_236E822E4();
      sub_236E822F4();
      result = sub_236E822C4();
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v13 = *(v25 + 8 * v11);
      if ((v13 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      if (v26 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v14 = v13 & (-2 << (v8 & 0x3F));
      if (v14)
      {
        v10 = __clz(__rbit64(v14)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v11 << 6;
        v16 = v11 + 1;
        v17 = (v21 + 8 * v11);
        while (v16 < (v10 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            result = sub_236E7649C(v8, v26, 0);
            v10 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        result = sub_236E7649C(v8, v26, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v6)
      {
        return v27;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

void sub_236E789CC(uint64_t *a1, NSObject *a2, char a3, uint64_t a4, uint64_t a5, NSObject *a6)
{
  v7 = v6;
  if (qword_27DE87A90 != -1)
  {
    swift_once();
  }

  v10 = sub_236E81DA4();
  __swift_project_value_buffer(v10, qword_27DE87A98);
  v11 = sub_236E820E4();

  v12 = sub_236E81D84();

  if (os_log_type_enabled(v12, v11))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v39 = v14;
    *v13 = 136446722;
    sub_236E588C4(0, &qword_27DE88510, off_278A0CA20);
    sub_236E3AA4C();
    v15 = sub_236E820A4();
    v17 = sub_236E381CC(v15, v16, &v39);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;

    sub_236E82264();

    v36 = 0x8000000236E89E50;
    type metadata accessor for AssetPack(0);
    sub_236E7B4A8(&qword_27DE88020, type metadata accessor for AssetPack, &protocol conformance descriptor for AssetPack);
    v18 = sub_236E820A4();
    MEMORY[0x2383BFD30](v18);

    MEMORY[0x2383BFD30](62, 0xE100000000000000);

    v19 = sub_236E381CC(0xD000000000000024, 0x8000000236E89E50, &v39);

    *(v13 + 14) = v19;
    *(v13 + 22) = 2082;
    v35 = a6;
    type metadata accessor for BAContentRequest(0);
    v20 = sub_236E81ED4();
    v22 = sub_236E381CC(v20, v21, &v39);

    *(v13 + 24) = v22;
    _os_log_impl(&dword_236E28000, v12, v11, "Add update downloads to: %{public}s for: %{public}s content request: %{public}s", v13, 0x20u);
    swift_arrayDestroy();
    v23 = v14;
    v7 = v6;
    MEMORY[0x2383C0E50](v23, -1, -1);
    MEMORY[0x2383C0E50](v13, -1, -1);
  }

  v24 = sub_236E81D84();
  v25 = sub_236E82114();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_236E28000, v24, v25, "Checking for asset-pack updates…", v26, 2u);
    MEMORY[0x2383C0E50](v26, -1, -1);
  }

  if (qword_27DE87AB0 != -1)
  {
    swift_once();
  }

  v35 = a2;
  LOBYTE(v36) = a3 & 1;
  v37 = a4;
  v38 = a5;
  v27 = sub_236E4741C(&v35, a6);
  if (!v7)
  {
    if ((v27 & 0xC000000000000001) != 0)
    {
      v28 = v27;
      if (!sub_236E821E4())
      {
        goto LABEL_14;
      }
    }

    else
    {
      v28 = v27;
      if (!*(v27 + 16))
      {
LABEL_14:
        v29 = sub_236E81D84();
        v30 = sub_236E82114();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&dword_236E28000, v29, v30, "All asset packs are up to date.", v31, 2u);
          MEMORY[0x2383C0E50](v31, -1, -1);
        }
      }
    }

    sub_236E369F8(v28);
  }
}

uint64_t sub_236E78E6C(uint64_t a1, uint64_t a2)
{
  v2[20] = a1;
  v2[21] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE88500, qword_236E866C0);
  v2[22] = v3;
  v2[23] = *(v3 - 8);
  v2[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_236E78F38, 0, 0);
}

uint64_t sub_236E78F38()
{
  if (qword_27DE87A90 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = v0[21];
  v3 = sub_236E81DA4();
  __swift_project_value_buffer(v3, qword_27DE87A98);
  v4 = sub_236E820E4();
  v5 = v1;
  v6 = v2;
  v7 = sub_236E81D84();

  if (os_log_type_enabled(v7, v4))
  {
    v9 = v0[20];
    v8 = v0[21];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543618;
    *(v10 + 4) = v9;
    *(v10 + 12) = 2114;
    *(v10 + 14) = v8;
    *v11 = v9;
    v11[1] = v8;
    v12 = v9;
    v13 = v8;
    _os_log_impl(&dword_236E28000, v7, v4, "Background download: %{public}@ did receive: %{public}@", v10, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88170, &qword_236E853C0);
    swift_arrayDestroy();
    MEMORY[0x2383C0E50](v11, -1, -1);
    MEMORY[0x2383C0E50](v10, -1, -1);
  }

  if (qword_27DE87AC0 != -1)
  {
    swift_once();
  }

  v14 = v0[23];
  v15 = v0[24];
  v16 = v0[22];
  v20 = v0[20];
  v21 = v0[21];
  v17 = qword_27DE8B0F0;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_236E79264;
  swift_continuation_init();
  v0[17] = v16;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE87B40, &qword_236E84560);
  sub_236E81FD4();
  (*(v14 + 32))(boxed_opaque_existential_0, v15, v16);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_236E37620;
  v0[13] = &block_descriptor_1;
  [v17 download:v20 didReceiveChallenge:v21 completionHandler:v0 + 10];
  (*(v14 + 8))(boxed_opaque_existential_0, v16);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_236E79264()
{

  return MEMORY[0x2822009F8](sub_236E79344, 0, 0);
}

uint64_t sub_236E79344()
{
  v2 = v0[18];
  v1 = v0[19];

  v3 = v0[1];

  return v3(v2, v1);
}

void sub_236E793B0(void *a1, void *a2)
{
  if (qword_27DE87A90 != -1)
  {
    swift_once();
  }

  v4 = sub_236E81DA4();
  __swift_project_value_buffer(v4, qword_27DE87A98);
  v5 = sub_236E820E4();
  v6 = a1;
  v7 = a2;
  v8 = sub_236E81D84();

  if (os_log_type_enabled(v8, v5))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543618;
    *(v9 + 4) = v6;
    *v10 = v6;
    *(v9 + 12) = 2114;
    v11 = v6;
    v12 = a2;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    v10[1] = v13;
    _os_log_impl(&dword_236E28000, v8, v5, "Background download: %{public}@ failed with error: %{public}@", v9, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88170, &qword_236E853C0);
    swift_arrayDestroy();
    MEMORY[0x2383C0E50](v10, -1, -1);
    MEMORY[0x2383C0E50](v9, -1, -1);
  }

  if (qword_27DE87AC0 != -1)
  {
    swift_once();
  }

  v14 = qword_27DE8B0F0;
  v15 = sub_236E81984();
  [v14 download:v6 failedWithError:v15];
}

void sub_236E795A8(void *a1, uint64_t a2)
{
  v4 = sub_236E819F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DE87A90 != -1)
  {
    swift_once();
  }

  v8 = sub_236E81DA4();
  __swift_project_value_buffer(v8, qword_27DE87A98);
  v9 = sub_236E820E4();
  (*(v5 + 16))(v7, a2, v4);
  v10 = a1;
  v11 = sub_236E81D84();

  if (os_log_type_enabled(v11, v9))
  {
    v12 = swift_slowAlloc();
    v25 = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v26 = v15;
    *v13 = 138543618;
    *(v13 + 4) = v10;
    *v14 = v10;
    *(v13 + 12) = 2082;
    sub_236E7B4A8(&unk_27DE87B30, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v24 = v9;
    v16 = v10;
    v17 = sub_236E82484();
    v19 = v18;
    (*(v5 + 8))(v7, v4);
    v20 = sub_236E381CC(v17, v19, &v26);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_236E28000, v11, v24, "Background download: %{public}@ finished with file URL: %{public}s", v13, 0x16u);
    sub_236E38DBC(v14, &qword_27DE88170, &qword_236E853C0);
    MEMORY[0x2383C0E50](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x2383C0E50](v15, -1, -1);
    MEMORY[0x2383C0E50](v13, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  if (qword_27DE87AC0 != -1)
  {
    swift_once();
  }

  v21 = qword_27DE8B0F0;
  v22 = sub_236E819B4();
  [v21 download:v10 finishedWithFileURL:v22];
}

uint64_t sub_236E79C40(void *a1, void *a2, void *aBlock)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a2;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_236E79D1C;

  return sub_236E78E6C(v6, v7);
}

uint64_t sub_236E79D1C(uint64_t a1, void *a2)
{
  v5 = *v2;
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 24);
  v8 = *(*v2 + 16);
  v9 = *v2;

  if (v6)
  {
    v10 = *(v5 + 32);
    (v10)[2](v10, a1, a2);
    _Block_release(v10);
  }

  v11 = *(v9 + 8);

  return v11();
}

void __swiftcall BAManagedDownloaderExtensionWrapper.init()(BAManagedDownloaderExtensionWrapper *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_236E7A0A4(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for AssetPack(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  if (!a2 || ([a2 respondsToSelector_] & 1) == 0)
  {
    return 1;
  }

  sub_236E393B0(a1, v9);
  v10 = objc_allocWithZone(BAAssetPack);
  sub_236E393B0(v9, v7);
  v11 = _s16AssetPackWrapperCMa(0);
  v12 = objc_allocWithZone(v11);
  sub_236E393B0(v7, v12 + OBJC_IVAR____TtCE16BackgroundAssetsCSo11BAAssetPackP33_FC678A7B1B18D835D2D983742E3D211216AssetPackWrapper_assetPack);
  v17.receiver = v12;
  v17.super_class = v11;
  v13 = objc_msgSendSuper2(&v17, sel_init);
  sub_236E39414(v7);
  v14 = [v10 init_];

  sub_236E39414(v9);
  v15 = [a2 shouldDownloadAssetPack_];

  return v15;
}

uint64_t sub_236E7A224(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_236E59578;

  return v6();
}

uint64_t sub_236E7A30C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_236E3A910;

  return v7();
}

uint64_t sub_236E7A3F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87DB0, &qword_236E84C50);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_236E593A8(a3, v23 - v10, &unk_27DE87DB0, &qword_236E84C50);
  v12 = sub_236E82034();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_236E38DBC(v11, &unk_27DE87DB0, &qword_236E84C50);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_236E82024();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_236E81FC4();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_236E81EE4() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_236E38DBC(a3, &unk_27DE87DB0, &qword_236E84C50);

    return v21;
  }

LABEL_8:
  sub_236E38DBC(a3, &unk_27DE87DB0, &qword_236E84C50);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_236E7A6F0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_236E59578;

  return sub_236E79C40(v2, v3, v4);
}

uint64_t sub_236E7A7B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_236E59578;

  return sub_236E63920(a1, v4);
}

uint64_t sub_236E7A868(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_236E3A910;

  return sub_236E63920(a1, v4);
}

void *sub_236E7A938(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v33 = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for AssetPack(0);
  v30 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v7) = *(a3 + 32);
  v9 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v26 = v9;
    v28 = &v26;
    MEMORY[0x28223BE20](v6);
    v27 = &v26 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v27, v10);
    v29 = 0;
    v9 = 0;
    v32 = a3;
    v12 = *(a3 + 56);
    a3 += 56;
    v11 = v12;
    v13 = 1 << *(a3 - 24);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & v11;
    v16 = (v13 + 63) >> 6;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_12:
      v20 = v17 | (v9 << 6);
      sub_236E393B0(*(v32 + 48) + *(v30 + 72) * v20, v8);
      v21 = v31(v8);
      sub_236E39414(v8);
      if (v3)
      {

        return swift_willThrow();
      }

      if (v21)
      {
        *&v27[(v20 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v20;
        if (__OFADD__(v29++, 1))
        {
          __break(1u);
          return sub_236E7AF64(v27, v26, v29, v32);
        }
      }
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v16)
      {
        return sub_236E7AF64(v27, v26, v29, v32);
      }

      v19 = *(a3 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v24 = swift_slowAlloc();
  v25 = sub_236E7AED4(v24, v9, a3, v31);

  result = MEMORY[0x2383C0E50](v24, -1, -1);
  if (!v3)
  {
    return v25;
  }

  return result;
}

uint64_t sub_236E7AC48(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v30 = a4;
  v26 = a2;
  v27 = a1;
  v6 = type metadata accessor for AssetPack(0);
  v29 = *(v6 - 8);
  result = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = 0;
  v10 = 0;
  v31 = a3;
  v13 = *(a3 + 56);
  v12 = a3 + 56;
  v11 = v13;
  v14 = 1 << *(v12 - 24);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_11:
    v21 = v18 | (v10 << 6);
    sub_236E393B0(*(v31 + 48) + *(v29 + 72) * v21, v9);
    v22 = v30(v9);
    result = sub_236E39414(v9);
    if (v4)
    {
      return result;
    }

    if (v22)
    {
      *(v27 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      if (__OFADD__(v28++, 1))
      {
        __break(1u);
LABEL_16:
        v24 = v31;

        return sub_236E7AF64(v27, v26, v28, v24);
      }
    }
  }

  v19 = v10;
  while (1)
  {
    v10 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      goto LABEL_16;
    }

    v20 = *(v12 + 8 * v10);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v16 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_236E7AE38(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_236E7B4F0(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

void *sub_236E7AED4(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_236E7AC48(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_236E7AF64(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for AssetPack(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE88028, &qword_236E85130);
  result = sub_236E82244();
  v12 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  v17 = result + 56;
  *&v14 = 136446210;
  v38 = v14;
  v39 = v9;
  v40 = a4;
  v41 = v11;
  while (v15)
  {
    v18 = __clz(__rbit64(v15));
    v42 = (v15 - 1) & v15;
LABEL_16:
    v21 = *(a4 + 48);
    v43 = *(v9 + 72);
    sub_236E393B0(v21 + v43 * (v18 | (v16 << 6)), v11);
    sub_236E82574();
    if (qword_27DE87AE0 != -1)
    {
      swift_once();
    }

    v22 = sub_236E81DA4();
    __swift_project_value_buffer(v22, qword_27DE88220);
    v23 = sub_236E820E4();
    v24 = sub_236E81D84();
    if (os_log_type_enabled(v24, v23))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v44 = v26;
      *v25 = v38;
      *(v25 + 4) = sub_236E381CC(0x2972656873614828, 0xE800000000000000, &v44);
      _os_log_impl(&dword_236E28000, v24, v23, "Hash into: %{public}s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      v27 = v26;
      a4 = v40;
      MEMORY[0x2383C0E50](v27, -1, -1);
      v28 = v25;
      v9 = v39;
      MEMORY[0x2383C0E50](v28, -1, -1);
    }

    v11 = v41;
    sub_236E81F04();
    result = sub_236E82594();
    v29 = -1 << *(v12 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v17 + 8 * (v30 >> 6))) == 0)
    {
      v33 = 0;
      v34 = (63 - v29) >> 6;
      while (++v31 != v34 || (v33 & 1) == 0)
      {
        v35 = v31 == v34;
        if (v31 == v34)
        {
          v31 = 0;
        }

        v33 |= v35;
        v36 = *(v17 + 8 * v31);
        if (v36 != -1)
        {
          v32 = __clz(__rbit64(~v36)) + (v31 << 6);
          goto LABEL_30;
        }
      }

      goto LABEL_35;
    }

    v32 = __clz(__rbit64((-1 << v30) & ~*(v17 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_30:
    *(v17 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    result = sub_236E63BD0(v11, *(v12 + 48) + v32 * v43);
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_36;
    }

    v15 = v42;
    if (!a3)
    {
LABEL_32:

      return v12;
    }
  }

  v19 = v16;
  while (1)
  {
    v16 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      goto LABEL_32;
    }

    v20 = a1[v16];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v42 = (v20 - 1) & v20;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

unint64_t sub_236E7B334(uint64_t a1, uint64_t a2)
{
  sub_236E82574();
  sub_236E81F04();
  v4 = sub_236E82594();

  return sub_236E7B3AC(a1, a2, v4);
}

unint64_t sub_236E7B3AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_236E824E4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_236E7B464@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_236E7804C(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), **(v2 + 56), *(v2 + 64));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_236E7B4A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_236E7B4F0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a2;
  v30 = a1;
  v6 = type metadata accessor for AssetPack(0);
  v33 = *(v6 - 8);
  result = MEMORY[0x28223BE20](v6 - 8);
  v9 = (&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = 0;
  v10 = 0;
  v11 = a3 + 56;
  v12 = 1 << *(a3 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a3 + 56);
  v15 = (v12 + 63) >> 6;
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_12:
    v19 = v16 | (v10 << 6);
    sub_236E393B0(*(a3 + 48) + *(v33 + 72) * v19, v9);
    if (*(a4 + 16) && (v20 = sub_236E7B334(*v9, v9[1]), (v21 & 1) != 0))
    {
      v22 = v9[3];
      if (v22 <= 0)
      {
        result = sub_236E39414(v9);
      }

      else
      {
        v23 = *(a4 + 56);
        v32 = v14;
        v24 = a3;
        v25 = *(v23 + 8 * v20);
        result = sub_236E39414(v9);
        v26 = v25 >= v22;
        a3 = v24;
        v14 = v32;
        if (!v26)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      result = sub_236E39414(v9);
LABEL_18:
      *(v30 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      if (__OFADD__(v31++, 1))
      {
        __break(1u);
LABEL_21:

        return sub_236E7AF64(v30, v29, v31, a3);
      }
    }
  }

  v17 = v10;
  while (1)
  {
    v10 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v10 >= v15)
    {
      goto LABEL_21;
    }

    v18 = *(v11 + 8 * v10);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v14 = (v18 - 1) & v18;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_236E7B708(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v39 = *MEMORY[0x277D85DE8];
  v6 = type metadata accessor for AssetPack(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v37 = (&v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  LOBYTE(v8) = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = (8 * v10);

  if (v9 > 0xD)
  {
    goto LABEL_25;
  }

  while (2)
  {
    v33 = v10;
    v34 = v3;
    v32 = &v32;
    MEMORY[0x28223BE20](v12);
    v35 = &v32 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v35, v11);
    v36 = 0;
    v13 = 0;
    v10 = a1 + 56;
    v14 = 1 << *(a1 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(a1 + 56);
    v17 = (v14 + 63) >> 6;
    v3 = a1;
    v11 = v37;
    while (v16)
    {
      v18 = __clz(__rbit64(v16));
      v38 = (v16 - 1) & v16;
LABEL_13:
      v21 = v18 | (v13 << 6);
      sub_236E393B0(*(v3 + 48) + *(v7 + 72) * v21, v11);
      if (*(a2 + 16) && (v22 = sub_236E7B334(*v11, v11[1]), (v23 & 1) != 0))
      {
        a1 = v11[3];
        if (a1 <= 0)
        {
          sub_236E39414(v11);
          v16 = v38;
        }

        else
        {
          v24 = v7;
          v25 = v3;
          v26 = *(*(a2 + 56) + 8 * v22);
          sub_236E39414(v37);
          v27 = v26 >= a1;
          v3 = v25;
          v7 = v24;
          v11 = v37;
          v16 = v38;
          if (!v27)
          {
            goto LABEL_19;
          }
        }
      }

      else
      {
        sub_236E39414(v11);
        v16 = v38;
LABEL_19:
        *&v35[(v21 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v21;
        if (__OFADD__(v36++, 1))
        {
          __break(1u);
LABEL_22:
          v29 = sub_236E7AF64(v35, v33, v36, v3);

          return v29;
        }
      }
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {
        goto LABEL_22;
      }

      v20 = *(v10 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v38 = (v20 - 1) & v20;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_25:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v31 = swift_slowAlloc();

  v29 = sub_236E7AE38(v31, v10, a1, a2);

  MEMORY[0x2383C0E50](v31, -1, -1);

  return v29;
}

void NSErrorWithBAErrorDomainCodeUserInfo_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136315138;
  v1 = "NSErrorWithBAErrorDomainCodeUserInfo() called with unsupported NSErrorDomain.";
  _os_log_fault_impl(&dword_236E28000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "BUG IN BackgroundAssets: %s", &v0, 0xCu);
}