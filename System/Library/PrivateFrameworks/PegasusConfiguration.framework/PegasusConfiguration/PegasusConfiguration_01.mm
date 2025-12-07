uint64_t sub_1D8CA8868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D8C9D24C(a1, v19);
  sub_1D8C97460(0, &unk_1ED9C3BF0, 0x1E695DFB0);
  if (swift_dynamicCast())
  {

    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC838, &qword_1D8CD9680);
    if (swift_dynamicCast())
    {
      v5 = *(v18 + 16);
      if (v5)
      {
        v6 = v18 + 32;
        v7 = MEMORY[0x1E69E7CC0];
        do
        {
          sub_1D8C9D24C(v6, v17);
          sub_1D8CA8868(v17, &v14);
          __swift_destroy_boxed_opaque_existential_0Tm(v17);
          if (v15)
          {
            sub_1D8CAD7DC(&v14, v16);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1D8CC37B4();
              v7 = v9;
            }

            v8 = *(v7 + 16);
            if (v8 >= *(v7 + 24) >> 1)
            {
              sub_1D8CC37B4();
              v7 = v10;
            }

            *(v7 + 16) = v8 + 1;
            sub_1D8CAD7DC(v16, (v7 + 32 * v8 + 32));
          }

          else
          {
            sub_1D8CADF40(&v14, &qword_1ECAAC680, &qword_1D8CD8FB0);
          }

          v6 += 32;
          --v5;
        }

        while (v5);
      }

      else
      {

        v7 = MEMORY[0x1E69E7CC0];
      }

      *(a2 + 24) = v4;
      *a2 = v7;
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAACEA0, &qword_1D8CD9610);
      if (swift_dynamicCast())
      {
        v12 = sub_1D8CA8AC8(v17[0]);

        *(a2 + 24) = v11;
        *a2 = v12;
      }

      else
      {
        sub_1D8C9D24C(a1, a2);
      }
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v19);
}

uint64_t sub_1D8CA8AC8(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v38 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v9 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_1D8C9D24C(*(a1 + 56) + 32 * v12, v37);
    *&v36 = v15;
    *(&v36 + 1) = v14;
    v33 = v36;
    v34 = v37[0];
    v35 = v37[1];

    sub_1D8CA8868(&v34, &v27);
    if (v28)
    {
      sub_1D8CAD7DC(&v27, v32);
      v30 = v33;
      v31[0] = v34;
      v31[1] = v35;
      sub_1D8CAD7DC(v32, v29);
      v16 = *(v2 + 16);
      if (*(v2 + 24) <= v16)
      {
        sub_1D8CACE7C(v16 + 1, 1);
        v2 = v38;
      }

      v17 = v30;
      sub_1D8CD8254();
      sub_1D8CD7BD4();
      result = sub_1D8CD8284();
      v18 = v2 + 64;
      v19 = -1 << *(v2 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v2 + 64 + 8 * (v20 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v19) >> 6;
        while (++v21 != v24 || (v23 & 1) == 0)
        {
          v25 = v21 == v24;
          if (v21 == v24)
          {
            v21 = 0;
          }

          v23 |= v25;
          v26 = *(v18 + 8 * v21);
          if (v26 != -1)
          {
            v22 = __clz(__rbit64(~v26)) + (v21 << 6);
            goto LABEL_23;
          }
        }

        goto LABEL_26;
      }

      v22 = __clz(__rbit64((-1 << v20) & ~*(v2 + 64 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
      *(v18 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      *(*(v2 + 48) + 16 * v22) = v17;
      sub_1D8CAD7DC(v29, (*(v2 + 56) + 32 * v22));
      ++*(v2 + 16);
      result = __swift_destroy_boxed_opaque_existential_0Tm(v31);
    }

    else
    {
      sub_1D8CADF40(&v33, &qword_1ECAAC840, &qword_1D8CD9688);
      result = sub_1D8CADF40(&v27, &qword_1ECAAC680, &qword_1D8CD8FB0);
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

size_t sub_1D8CA8D80(uint64_t a1, void *a2, uint64_t *a3, void (*a4)(char *, uint64_t, uint64_t), uint64_t a5, int a6, uint64_t a7)
{
  v287 = a7;
  LODWORD(v299) = a6;
  v296 = a4;
  v294 = a3;
  v300 = a2;
  v293 = a1;
  v307[5] = *MEMORY[0x1E69E9840];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC668, &qword_1D8CD8FA0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v281 = &v276 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v285 = &v276 - v10;
  v298 = sub_1D8CD7674();
  v297 = *(v298 - 8);
  MEMORY[0x1EEE9AC00](v298);
  v295 = &v276 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D8CD7554();
  v301 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v280 = &v276 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v279 = &v276 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v278 = &v276 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v290 = &v276 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v288 = &v276 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v282 = &v276 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v283 = &v276 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v286 = &v276 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v284 = &v276 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v289 = &v276 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v35 = &v276 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v276 - v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC9A0, &qword_1D8CD9990);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1D8CD8F50;
  v39 = [objc_opt_self() processInfo];
  v40 = [v39 globallyUniqueString];

  v41 = sub_1D8CD7B04();
  v43 = v42;

  v44 = MEMORY[0x1E69E6158];
  *(v38 + 56) = MEMORY[0x1E69E6158];
  v45 = sub_1D8C96E60();
  *(v38 + 32) = v41;
  *(v38 + 40) = v43;
  *(v38 + 96) = v44;
  *(v38 + 104) = v45;
  *(v38 + 64) = v45;
  *(v38 + 72) = 0x73696C702E676162;
  *(v38 + 80) = 0xE900000000000074;
  v46 = sub_1D8CD7B34();
  v48 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC7B8, &unk_1D8CD95A0);
  swift_allocObject();

  v302 = sub_1D8CACB10(v49, 6u, 0);
  sub_1D8C97460(0, &unk_1ED9C3C00, 0x1E695DFF8);
  v50 = NSTemporaryDirectory();
  v51 = sub_1D8CD7B04();
  v53 = v52;

  v54 = sub_1D8CAB064(v51, v53);
  v55 = sub_1D8CD7AD4();
  v56 = [v54 URLByAppendingPathComponent_];

  if (!v56)
  {
    if (qword_1ED9C4000 != -1)
    {
      swift_once();
    }

    v88 = sub_1D8CD7A04();
    __swift_project_value_buffer(v88, qword_1ED9C4008);

    v89 = sub_1D8CD79E4();
    v90 = sub_1D8CD7E24();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v307[0] = v92;
      *v91 = 136315138;
      v93 = sub_1D8C9D088(v46, v48, v307);

      *(v91 + 4) = v93;
      _os_log_impl(&dword_1D8C92000, v89, v90, "error creating temporary config file: %s", v91, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v92);
      MEMORY[0x1DA727900](v92, -1, -1);
      MEMORY[0x1DA727900](v91, -1, -1);
    }

    else
    {
    }

    sub_1D8CAD788();
    v120 = swift_allocError();
    *v121 = 6;
    sub_1D8CACB64(v120);

    return 0;
  }

  sub_1D8CD74E4();

  sub_1D8C97460(0, &unk_1ED9C3C10, 0x1E695DFC0);
  v57 = v301;
  v58 = v301 + 16;
  v291 = *(v301 + 16);
  v291(v35, v37, v12);
  v59 = sub_1D8CAB1D4(v35, 0);
  v292 = v37;
  if (!v59)
  {
    v94 = v37;
    if (qword_1ED9C4000 != -1)
    {
      swift_once();
    }

    v95 = sub_1D8CD7A04();
    __swift_project_value_buffer(v95, qword_1ED9C4008);
    v96 = v290;
    v291(v290, v37, v12);
    v97 = sub_1D8CD79E4();
    v98 = sub_1D8CD7E24();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v307[0] = v100;
      *v99 = 136315138;
      v101 = sub_1D8CD7494();
      v103 = v102;
      v104 = *(v57 + 8);
      v104(v96, v12);
      v105 = sub_1D8C9D088(v101, v103, v307);

      *(v99 + 4) = v105;
      _os_log_impl(&dword_1D8C92000, v97, v98, "error opening config cache output stream: %s", v99, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v100);
      MEMORY[0x1DA727900](v100, -1, -1);
      v106 = v99;
      v94 = v292;
      MEMORY[0x1DA727900](v106, -1, -1);
    }

    else
    {

      v104 = *(v57 + 8);
      v104(v96, v12);
    }

    sub_1D8CAD788();
    v122 = swift_allocError();
    *v123 = 3;
    sub_1D8CACB64(v122);

    v104(v94, v12);

    return 0;
  }

  v60 = v59;
  v276 = v58;
  v290 = v12;
  [v59 open];
  *&v305 = 0xD000000000000012;
  *(&v305 + 1) = 0x80000001D8CDDB80;
  v61 = v293;

  sub_1D8CD7FB4();
  v62 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v63 = sub_1D8C97460(0, &qword_1ED9C5510, 0x1E696AD98);
  v277 = v60;
  v64 = v63;
  v306 = v63;
  *&v305 = v62;
  sub_1D8CAD7DC(&v305, &v304);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v303 = v61;
  sub_1D8CB4908(&v304, v307, isUniquelyReferenced_nonNull_native);
  v66 = v303;
  sub_1D8CAD7EC(v307);
  strcpy(&v305, "__expiration");
  BYTE13(v305) = 0;
  HIWORD(v305) = -5120;
  sub_1D8CD7FB4();
  v67 = v295;
  sub_1D8CD75F4();
  sub_1D8CD7624();
  v69 = v68;
  v70 = *(v297 + 8);
  v71 = v298;
  v70(v67, v298);
  v72 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v306 = v64;
  *&v305 = v72;
  sub_1D8CAD7DC(&v305, &v304);
  v73 = swift_isUniquelyReferenced_nonNull_native();
  v303 = v66;
  sub_1D8CB4908(&v304, v307, v73);
  v74 = v303;
  sub_1D8CAD7EC(v307);
  strcpy(&v305, "__bagurl");
  BYTE9(v305) = 0;
  WORD5(v305) = 0;
  HIDWORD(v305) = -402653184;
  sub_1D8CD7FB4();
  v306 = v44;
  *&v305 = v294;
  *(&v305 + 1) = v296;
  sub_1D8CAD7DC(&v305, &v304);

  v75 = swift_isUniquelyReferenced_nonNull_native();
  v303 = v74;
  sub_1D8CB4908(&v304, v307, v75);
  v76 = v303;
  sub_1D8CAD7EC(v307);
  *&v305 = 0xD000000000000011;
  *(&v305 + 1) = 0x80000001D8CDDB60;
  sub_1D8CD7FB4();
  sub_1D8CD7664();
  sub_1D8CD7624();
  v78 = v77;
  v70(v67, v71);
  v79 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v306 = v64;
  *&v305 = v79;
  sub_1D8CAD7DC(&v305, &v304);
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v303 = v76;
  sub_1D8CB4908(&v304, v307, v80);
  sub_1D8CAD7EC(v307);
  if ((v299 & 1) == 0)
  {
    v107 = v277;
    if (qword_1ED9C4000 != -1)
    {
      swift_once();
    }

    v108 = sub_1D8CD7A04();
    __swift_project_value_buffer(v108, qword_1ED9C4008);
    v109 = sub_1D8CD79E4();
    v110 = sub_1D8CD7E44();
    v111 = os_log_type_enabled(v109, v110);
    v112 = v301;
    if (v111)
    {
      v113 = swift_slowAlloc();
      *v113 = 0;
      _os_log_impl(&dword_1D8C92000, v109, v110, "skipped saving config because flag is disabled", v113, 2u);
      MEMORY[0x1DA727900](v113, -1, -1);
    }

    v114 = objc_opt_self();
    v115 = sub_1D8CD7A54();

    v307[0] = 0;
    v116 = [v114 dataWithPropertyList:v115 format:200 options:0 error:v307];

    v117 = v307[0];
    if (v116)
    {
      v118 = sub_1D8CD7594();

      v119 = v292;
      sub_1D8CAB0D8(v300);

      (*(v112 + 8))(v119, v290);
      return v118;
    }

    v125 = v117;
    v126 = sub_1D8CD7454();

    swift_willThrow();
    v127 = v126;
    v128 = sub_1D8CD79E4();
    v129 = sub_1D8CD7E24();

    v130 = os_log_type_enabled(v128, v129);
    v131 = v290;
    v132 = v300;
    if (v130)
    {
      v133 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      *v133 = 138412290;
      v135 = v126;
      v136 = _swift_stdlib_bridgeErrorToNSError();
      *(v133 + 4) = v136;
      *v134 = v136;
      _os_log_impl(&dword_1D8C92000, v128, v129, "error formatting config %@", v133, 0xCu);
      sub_1D8CADF40(v134, &unk_1ECAACEE0, &qword_1D8CD9C30);
      MEMORY[0x1DA727900](v134, -1, -1);
      MEMORY[0x1DA727900](v133, -1, -1);
    }

    sub_1D8CACB64(v126);
    v137 = v292;
    sub_1D8CAB0D8(v132);

    (*(v112 + 8))(v137, v131);
    return 0;
  }

  v81 = objc_opt_self();
  v82 = sub_1D8CD7A54();

  v83 = v277;
  v84 = [v81 writePropertyList:v82 toStream:v277 format:200 options:0 error:0];

  [v83 close];
  sub_1D8C97460(0, &qword_1ED9C4130, 0x1E696AC00);
  v85 = v289;
  v86 = v292;
  v87 = v290;
  v291(v289, v292, v290);
  v124 = sub_1D8CAB278(v85);
  v139 = sub_1D8CCF4A4();
  v298 = v140;

  v141 = v285;
  sub_1D8C979F0(v287, v285, &qword_1ECAAC668, &qword_1D8CD8FA0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v141, 1, v87);
  v299 = v139;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D8CADF40(v141, &qword_1ECAAC668, &qword_1D8CD8FA0);
    if (qword_1ED9C4000 != -1)
    {
      swift_once();
    }

    v143 = sub_1D8CD7A04();
    __swift_project_value_buffer(v143, qword_1ED9C4008);
    v144 = sub_1D8CD79E4();
    v145 = sub_1D8CD7E24();
    v146 = os_log_type_enabled(v144, v145);
    v147 = v300;
    if (v146)
    {
      v148 = swift_slowAlloc();
      *v148 = 0;
      _os_log_impl(&dword_1D8C92000, v144, v145, "error getting pathToCache for config.plist", v148, 2u);
      MEMORY[0x1DA727900](v148, -1, -1);
    }

    sub_1D8CAD788();
    v149 = swift_allocError();
    *v150 = 8;
    sub_1D8CACB64(v149);

    sub_1D8CAB0D8(v147);

    (*(v301 + 8))(v86, v87);
    return v299;
  }

  v151 = *(v301 + 32);
  v152 = v284;
  v297 = v301 + 32;
  v296 = v151;
  v151(v284, v141, v87);
  sub_1D8CD74D4();
  sub_1D8CD7494();
  v153 = sub_1D8CD7AD4();

  v154 = v300;
  v155 = [v300 fileExistsAtPath_];

  if ((v155 & 1) == 0)
  {
    v156 = sub_1D8CD74A4();
    v307[0] = 0;
    v157 = [v154 createDirectoryAtURL:v156 withIntermediateDirectories:1 attributes:0 error:v307];

    if (v157)
    {
      v158 = v307[0];
    }

    else
    {
      v159 = v307[0];
      v160 = sub_1D8CD7454();

      swift_willThrow();
      if (qword_1ED9C4000 != -1)
      {
        swift_once();
      }

      v161 = sub_1D8CD7A04();
      __swift_project_value_buffer(v161, qword_1ED9C4008);
      v162 = v160;
      v163 = sub_1D8CD79E4();
      v164 = sub_1D8CD7E24();

      if (os_log_type_enabled(v163, v164))
      {
        v165 = swift_slowAlloc();
        v166 = v83;
        v167 = swift_slowAlloc();
        *v165 = 138412290;
        v168 = v160;
        v169 = _swift_stdlib_bridgeErrorToNSError();
        *(v165 + 4) = v169;
        *v167 = v169;
        _os_log_impl(&dword_1D8C92000, v163, v164, "error creating pegasus configd cache folder: %@", v165, 0xCu);
        sub_1D8CADF40(v167, &unk_1ECAACEE0, &qword_1D8CD9C30);
        v170 = v167;
        v83 = v166;
        v152 = v284;
        MEMORY[0x1DA727900](v170, -1, -1);
        MEMORY[0x1DA727900](v165, -1, -1);
      }

      sub_1D8CACB64(v160);
    }

    v154 = v300;
  }

  v171 = sub_1D8CD74A4();
  v307[0] = 0;
  v172 = [v154 removeItemAtURL:v171 error:v307];

  if (v172)
  {
    v173 = v307[0];
  }

  else
  {
    v174 = v307[0];
    v175 = sub_1D8CD7454();

    swift_willThrow();
  }

  v118 = v299;
  v176 = sub_1D8CD74A4();
  v177 = sub_1D8CD74A4();
  v307[0] = 0;
  v178 = [v300 copyItemAtURL:v176 toURL:v177 error:v307];

  v179 = v307[0];
  if (v178)
  {
    sub_1D8CACB38(v84);
    v180 = v179;
LABEL_53:
    v205 = v292;
    goto LABEL_54;
  }

  v181 = v152;
  v182 = v307[0];
  v183 = sub_1D8CD7454();

  swift_willThrow();
  if (qword_1ED9C4000 != -1)
  {
    swift_once();
  }

  v184 = sub_1D8CD7A04();
  __swift_project_value_buffer(v184, qword_1ED9C4008);
  v185 = v278;
  v186 = v291;
  v291(v278, v292, v87);
  v187 = v279;
  v186(v279, v181, v87);
  v188 = v183;
  v189 = sub_1D8CD79E4();
  v190 = sub_1D8CD7E24();

  if (!os_log_type_enabled(v189, v190))
  {

    v206 = *(v301 + 8);
    v206(v187, v87);
    v206(v185, v87);
    v118 = v299;
    v152 = v181;
    goto LABEL_53;
  }

  v191 = swift_slowAlloc();
  v294 = swift_slowAlloc();
  v295 = swift_slowAlloc();
  v307[0] = v295;
  *v191 = 136315650;
  LODWORD(v293) = v190;
  v192 = sub_1D8CD7494();
  v194 = v193;
  v195 = *(v301 + 8);
  v195(v185, v290);
  v196 = sub_1D8C9D088(v192, v194, v307);

  *(v191 + 4) = v196;
  *(v191 + 12) = 2080;
  v197 = sub_1D8CD7494();
  v199 = v198;
  v195(v187, v290);
  v87 = v290;
  v200 = sub_1D8C9D088(v197, v199, v307);
  v83 = v277;
  v152 = v284;

  *(v191 + 14) = v200;
  *(v191 + 22) = 2112;
  v201 = v183;
  v202 = _swift_stdlib_bridgeErrorToNSError();
  *(v191 + 24) = v202;
  v203 = v294;
  *v294 = v202;
  _os_log_impl(&dword_1D8C92000, v189, v293, "error copying config from %s to %s: %@", v191, 0x20u);
  sub_1D8CADF40(v203, &unk_1ECAACEE0, &qword_1D8CD9C30);
  MEMORY[0x1DA727900](v203, -1, -1);
  v204 = v295;
  swift_arrayDestroy();
  MEMORY[0x1DA727900](v204, -1, -1);
  v205 = v292;
  MEMORY[0x1DA727900](v191, -1, -1);

  v118 = v299;
LABEL_54:
  v207 = sub_1D8CD74A4();
  v307[0] = 0;
  v208 = v300;
  v209 = [v300 removeItemAtURL:v207 error:v307];

  v210 = v283;
  if (v209)
  {
    v211 = v307[0];
  }

  else
  {
    v212 = v205;
    v213 = v307[0];
    v214 = sub_1D8CD7454();

    swift_willThrow();
    if (qword_1ED9C4000 != -1)
    {
      swift_once();
    }

    v215 = sub_1D8CD7A04();
    __swift_project_value_buffer(v215, qword_1ED9C4008);
    v216 = v280;
    v291(v280, v212, v87);
    v217 = v214;
    v218 = sub_1D8CD79E4();
    v219 = sub_1D8CD7E24();

    if (os_log_type_enabled(v218, v219))
    {
      v220 = swift_slowAlloc();
      v221 = v83;
      v222 = swift_slowAlloc();
      v223 = swift_slowAlloc();
      v307[0] = v223;
      *v220 = 136315394;
      v224 = sub_1D8CD7494();
      v226 = v225;
      (*(v301 + 8))(v216, v290);
      v227 = sub_1D8C9D088(v224, v226, v307);
      v210 = v283;

      *(v220 + 4) = v227;
      *(v220 + 12) = 2112;
      v228 = v214;
      v229 = _swift_stdlib_bridgeErrorToNSError();
      *(v220 + 14) = v229;
      *v222 = v229;
      _os_log_impl(&dword_1D8C92000, v218, v219, "error removing temporary config from %s: %@", v220, 0x16u);
      sub_1D8CADF40(v222, &unk_1ECAACEE0, &qword_1D8CD9C30);
      v230 = v222;
      v83 = v221;
      v152 = v284;
      MEMORY[0x1DA727900](v230, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v223);
      v231 = v223;
      v87 = v290;
      MEMORY[0x1DA727900](v231, -1, -1);
      v232 = v220;
      v208 = v300;
      v205 = v292;
      MEMORY[0x1DA727900](v232, -1, -1);

      v118 = v299;
    }

    else
    {

      (*(v301 + 8))(v216, v87);
      v118 = v299;
      v205 = v212;
      v210 = v283;
    }
  }

  v233 = type metadata accessor for LocalCachePaths(0);
  v234 = v281;
  sub_1D8C979F0(v287 + *(v233 + 20), v281, &qword_1ECAAC668, &qword_1D8CD8FA0);
  if (__swift_getEnumTagSinglePayload(v234, 1, v87) == 1)
  {
    v235 = *(v301 + 8);
    v235(v286, v87);
    v235(v152, v87);
    sub_1D8CADF40(v234, &qword_1ECAAC668, &qword_1D8CD8FA0);
  }

  else
  {
    v296(v210, v234, v87);
    sub_1D8CD74D4();
    sub_1D8CD7494();
    v236 = sub_1D8CD7AD4();

    v237 = [v208 fileExistsAtPath_];

    if ((v237 & 1) == 0)
    {
      v238 = sub_1D8CD74A4();
      v307[0] = 0;
      v239 = [v208 createDirectoryAtURL:v238 withIntermediateDirectories:1 attributes:0 error:v307];

      if (v239)
      {
        v240 = v307[0];
      }

      else
      {
        v241 = v307[0];
        v242 = sub_1D8CD7454();

        swift_willThrow();
        if (qword_1ED9C4000 != -1)
        {
          swift_once();
        }

        v243 = sub_1D8CD7A04();
        __swift_project_value_buffer(v243, qword_1ED9C4008);
        v244 = v242;
        v245 = sub_1D8CD79E4();
        v246 = sub_1D8CD7E24();

        if (os_log_type_enabled(v245, v246))
        {
          v247 = v208;
          v248 = swift_slowAlloc();
          v249 = swift_slowAlloc();
          *v248 = 138412290;
          v250 = v242;
          v251 = _swift_stdlib_bridgeErrorToNSError();
          *(v248 + 4) = v251;
          *v249 = v251;
          _os_log_impl(&dword_1D8C92000, v245, v246, "error creating bag copy folder: %@", v248, 0xCu);
          sub_1D8CADF40(v249, &unk_1ECAACEE0, &qword_1D8CD9C30);
          v252 = v249;
          v118 = v299;
          MEMORY[0x1DA727900](v252, -1, -1);
          v253 = v248;
          v208 = v247;
          v205 = v292;
          MEMORY[0x1DA727900](v253, -1, -1);
        }

        else
        {
        }
      }
    }

    v254 = sub_1D8CD74A4();
    v307[0] = 0;
    v255 = [v208 removeItemAtURL:v254 error:v307];

    if (v255)
    {
      v256 = v307[0];
    }

    else
    {
      v257 = v307[0];
      v258 = sub_1D8CD7454();

      swift_willThrow();
    }

    v259 = sub_1D8CD74A4();
    v260 = sub_1D8CD74A4();
    v307[0] = 0;
    v261 = [v208 copyItemAtURL:v259 toURL:v260 error:v307];

    if (v261)
    {
      v235 = *(v301 + 8);
      v262 = v307[0];
      v235(v282, v87);
      v235(v210, v87);
      v235(v286, v87);
      v235(v152, v87);
      v118 = v299;
    }

    else
    {
      v263 = v307[0];
      v264 = sub_1D8CD7454();

      swift_willThrow();
      if (qword_1ED9C4000 != -1)
      {
        swift_once();
      }

      v265 = sub_1D8CD7A04();
      __swift_project_value_buffer(v265, qword_1ED9C4008);
      v266 = v264;
      v267 = sub_1D8CD79E4();
      v268 = sub_1D8CD7E24();

      if (os_log_type_enabled(v267, v268))
      {
        v269 = v208;
        v270 = swift_slowAlloc();
        v271 = swift_slowAlloc();
        *v270 = 138412290;
        v272 = v264;
        v273 = _swift_stdlib_bridgeErrorToNSError();
        *(v270 + 4) = v273;
        *v271 = v273;
        _os_log_impl(&dword_1D8C92000, v267, v268, "Copy bag to location failed with error: %@", v270, 0xCu);
        sub_1D8CADF40(v271, &unk_1ECAACEE0, &qword_1D8CD9C30);
        v274 = v271;
        v118 = v299;
        MEMORY[0x1DA727900](v274, -1, -1);
        v275 = v270;
        v208 = v269;
        v205 = v292;
        MEMORY[0x1DA727900](v275, -1, -1);
      }

      v235 = *(v301 + 8);
      v235(v282, v87);
      v235(v210, v87);
      v235(v286, v87);
      v235(v152, v87);
    }
  }

  sub_1D8CAB0D8(v208);

  v235(v205, v87);
  return v118;
}

id sub_1D8CAB064(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1D8CD7AD4();

  v4 = [v2 initFileURLWithPath_];

  return v4;
}

void sub_1D8CAB0D8(void *a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1D8CD74A4();
  v7[0] = 0;
  LODWORD(a1) = [a1 removeItemAtURL:v2 error:v7];

  v3 = v7[0];
  if (a1)
  {

    v4 = v3;
  }

  else
  {
    v5 = v7[0];
    v6 = sub_1D8CD7454();

    swift_willThrow();
  }
}

id sub_1D8CAB1D4(uint64_t a1, char a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1D8CD74A4();
  v6 = [v4 initWithURL:v5 append:a2 & 1];

  v7 = sub_1D8CD7554();
  (*(*(v7 - 8) + 8))(a1, v7);
  return v6;
}

id sub_1D8CAB278(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1D8CD74A4();
  v12[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForReadingFromURL:v2 error:v12];

  v4 = v12[0];
  if (v3)
  {
    v5 = sub_1D8CD7554();
    OUTLINED_FUNCTION_8();
    v7 = *(v6 + 8);
    v8 = v4;
    v7(a1, v5);
  }

  else
  {
    v9 = v12[0];
    sub_1D8CD7454();

    swift_willThrow();
    sub_1D8CD7554();
    OUTLINED_FUNCTION_8();
    (*(v10 + 8))(a1);
  }

  return v3;
}

uint64_t sub_1D8CAB3C0()
{
  sub_1D8C97460(0, &qword_1ED9C3BE8, 0x1E69E9BF8);
  result = sub_1D8CD7EC4();
  qword_1ED9C3FD8 = result;
  return result;
}

uint64_t sub_1D8CAB494(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t (*a4)(id))
{
  v6 = a2(0);
  __swift_allocate_value_buffer(v6, a3);
  OUTLINED_FUNCTION_41(v6, a3);
  if (qword_1ED9C3FD0 != -1)
  {
    swift_once();
  }

  return a4(qword_1ED9C3FD8);
}

unint64_t sub_1D8CAB534()
{
  result = qword_1ECAAC688;
  if (!qword_1ECAAC688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAC688);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShouldThrottleConfigFetchResultReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ShouldThrottleConfigFetchResultReason(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unsigned __int8 *getEnumTagSinglePayload for ShouldThrottleConfigFetchResult(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
LABEL_18:
    v6 = *result;
    v7 = v6 >= 3;
    v8 = v6 - 3;
    if (!v7)
    {
      v8 = -1;
    }

    if (v8 + 1 >= 2)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 3;
    if (a2 + 3 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 3);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

uint64_t sub_1D8CAB79C(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1D8CAB7B0(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

void sub_1D8CAB8C4(uint64_t a1)
{
  sub_1D8CAB930(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1D8CAB930(uint64_t a1)
{
  if (!qword_1ED9C4048)
  {
    sub_1D8CD7554();
    v1 = sub_1D8CD7ED4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9C4048);
    }
  }
}

uint64_t sub_1D8CAB9D4(uint64_t a1)
{
  result = sub_1D8CD7ED4();
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

uint64_t getEnumTagSinglePayload for PegasusConfigControllerInternals(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for PegasusConfigControllerInternals(_BYTE *result, int a2, int a3)
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

uint64_t sub_1D8CABC08(uint64_t a1, int a2)
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

uint64_t sub_1D8CABC48(uint64_t result, int a2, int a3)
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

uint64_t sub_1D8CABCA0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8CABCC0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1D8CABD10()
{
  sub_1D8C97460(0, &qword_1ED9C3BE8, 0x1E69E9BF8);
  result = sub_1D8CD7EC4();
  qword_1ED9C3D98 = result;
  return result;
}

uint64_t sub_1D8CABD80()
{
  v0 = sub_1D8CD7674();
  v27 = *(v0 - 8);
  v28 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1D8CD77C4();
  v3 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1D8CD7434();
  v24 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8CD77A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC820, "Fl");
  v8 = sub_1D8CD77B4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D8CD8F50;
  v13 = v12 + v11;
  v14 = *(v9 + 104);
  v14(v13, *MEMORY[0x1E6969A58], v8);
  v14(v13 + v10, *MEMORY[0x1E6969A88], v8);
  sub_1D8CD2420(v12);
  sub_1D8CD7654();
  sub_1D8CD7784();

  (*(v27 + 8))(v2, v28);
  (*(v3 + 8))(v5, v25);
  v15 = sub_1D8CD73F4();
  if (v16)
  {
    (*(v24 + 8))(v7, v26);
    return -1;
  }

  v17 = v15;
  v18 = sub_1D8CD7414();
  v20 = v19;
  result = (*(v24 + 8))(v7, v26);
  if (v20)
  {
    return -1;
  }

  v22 = 100 * v17;
  if ((v17 * 100) >> 64 != (100 * v17) >> 63)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = v22 + v18;
  if (__OFADD__(v22, v18))
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

void sub_1D8CAC0F4(void *a1)
{
  v2 = *(*v1 + 472);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
  v4 = a1;
}

id *sub_1D8CAC144(uint64_t a1, unsigned int a2)
{
  v3 = v2;
  v33 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC7D8, &qword_1D8CD95B0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v34 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31 - v8;
  v32 = sub_1D8CD7674();
  v10 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_weakInit();
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 256;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = MEMORY[0x1E69E7CC0];
  *(v2 + 72) = 0;
  *(v2 + 81) = 0;
  sub_1D8C97460(0, &qword_1ED9C3BE8, 0x1E69E9BF8);
  v35 = qword_1ED9C3D70;
  v36 = off_1ED9C3D78;
  v39 = 45;
  v40 = 0xE100000000000000;
  v37 = 95;
  v38 = 0xE100000000000000;
  sub_1D8C94EC8();
  sub_1D8CD7F44();

  *(v2 + 88) = sub_1D8CD7EC4();
  v13 = *(*v2 + 136);
  v14 = sub_1D8CD7964();
  __swift_storeEnumTagSinglePayload(v3 + v13, 1, 1, v14);
  v15 = *(*v3 + 19);
  type metadata accessor for Locker();
  v16 = swift_allocObject();
  v17 = swift_slowAlloc();
  *(v16 + 16) = v17;
  *v17 = 0;
  *(v3 + v15) = v16;
  sub_1D8CD7664();
  v18 = v12;
  v19 = v33;
  (*(v10 + 32))(v3 + *(*v3 + 18), v18, v32);
  swift_weakAssign();
  *(v3 + 80) = v19;
  v20 = v3[11];

  sub_1D8CD7934();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v14);
  v21 = *(*v3 + 17);
  swift_beginAccess();
  sub_1D8C974F4(v9, v3 + v21);
  swift_endAccess();
  v35 = v3;

  v22 = sub_1D8CD7B64();
  v24 = v23;
  v25 = *(*(a1 + 32) + 16);
  os_unfair_lock_lock(v25);
  sub_1D8C97564(a1, v22, v24, v3, &off_1F5454760);

  os_unfair_lock_unlock(v25);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v26 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    (*(v26 + 8))(v3, &off_1F5454760, ObjectType, v26);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v28 = v34;
  sub_1D8C979F0(v3 + v21, v34, &qword_1ECAAC7D8, &qword_1D8CD95B0);
  result = __swift_getEnumTagSinglePayload(v28, 1, v14);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v30 = v3[11];
    sub_1D8CD7E64();
    sub_1D8CCA9C8(v19);
    sub_1D8CD7924();

    (*(*(v14 - 8) + 8))(v28, v14);
    return v3;
  }

  return result;
}

id *sub_1D8CAC614(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, int a5, uint64_t a6, ...)
{
  v7 = v6;
  v44 = a4;
  v45 = a6;
  v42 = a5;
  v43 = a3;
  v46 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC7D8, &qword_1D8CD95B0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v41[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v41[-v13];
  v15 = sub_1D8CD7674();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v41[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_weakInit();
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 256;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  *(v6 + 64) = MEMORY[0x1E69E7CC0];
  *(v6 + 72) = 0;
  *(v6 + 88) = 0;
  sub_1D8C97460(0, &qword_1ED9C3BE8, 0x1E69E9BF8);
  v47 = 0xD000000000000010;
  v48 = 0x80000001D8CDDBC0;
  v51 = 45;
  v52 = 0xE100000000000000;
  v49 = 95;
  v50 = 0xE100000000000000;
  v40 = sub_1D8C94EC8();
  sub_1D8CD7F44();
  *(v6 + 96) = sub_1D8CD7EC4();
  v19 = *(*v6 + 136);
  v20 = sub_1D8CD7964();
  __swift_storeEnumTagSinglePayload(v7 + v19, 1, 1, v20);
  v21 = *(*v7 + 19);
  type metadata accessor for Locker();
  v22 = swift_allocObject();
  v23 = swift_slowAlloc();
  *(v22 + 16) = v23;
  *v23 = 0;
  *(v7 + v21) = v22;
  sub_1D8CD7664();
  v24 = v18;
  v25 = v46;
  (*(v16 + 32))(v7 + *(*v7 + 18), v24, v15);
  swift_weakAssign();
  v7[10] = v25;
  v26 = v7[12];

  sub_1D8CD7934();
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v20);
  v27 = *(*v7 + 17);
  swift_beginAccess();
  sub_1D8C974F4(v14, v7 + v27);
  swift_endAccess();
  v47 = v7;

  v28 = sub_1D8CD7B64();
  v30 = v29;
  v31 = *(*(a1 + 32) + 16);
  os_unfair_lock_lock(v31);
  sub_1D8C97564(a1, v28, v30, v7, &off_1F5454760);

  os_unfair_lock_unlock(v31);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v32 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    (*(v32 + 8))(v7, &off_1F5454760, ObjectType, v32);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_1D8C979F0(v7 + v27, v12, &qword_1ECAAC7D8, &qword_1D8CD95B0);
  result = __swift_getEnumTagSinglePayload(v12, 1, v20);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v35 = v7[12];
    v36 = sub_1D8CD7E64();
    v37 = sub_1D8C97B40(v25);
    LOBYTE(v40) = v42;
    sub_1D8C980C0(v36, v35, v37, v38, v39, v12, v43, v44, v40, v45);

    (*(*(v20 - 8) + 8))(v12, v20);
    return v7;
  }

  return result;
}

id *sub_1D8CACB10(uint64_t a1, unsigned int a2, uint64_t a3)
{
  *(v3 + qword_1ED9C3EB8) = 0;
  *(v3 + *(*v3 + 472)) = a3;
  return sub_1D8CAC144(a1, a2);
}

uint64_t sub_1D8CACB38(uint64_t result)
{
  v2 = *(*v1 + 472);
  v3 = *(v1 + v2);
  v4 = __OFADD__(v3, result);
  v5 = v3 + result;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(v1 + v2) = v5;
  }

  return result;
}

void sub_1D8CACB64(void *a1)
{
  v2 = *(v1 + qword_1ED9C3EB8);
  *(v1 + qword_1ED9C3EB8) = a1;
  v3 = a1;
}

uint64_t sub_1D8CACBA8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_slowAlloc();
  *(v1 + 24) = v2;
  *v2 = 0;
  return v1;
}

uint64_t sub_1D8CACC24@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1D8CAD40C(a2);
  *a1 = result;
  return result;
}

uint64_t sub_1D8CACC4C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1D8CD7AD4();

  *a2 = v3;
  return result;
}

uint64_t sub_1D8CACC94@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D8CACCC0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D8CACCC4(uint64_t a1)
{
  v2 = sub_1D8C9D040(&qword_1ECAAC778, type metadata accessor for BMStreamIdentifier, &unk_1D8CD9468);
  v3 = sub_1D8C9D040(&unk_1ECAAC780, type metadata accessor for BMStreamIdentifier, &unk_1D8CD9408);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D8CACE7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC848, &unk_1D8CD9690);
  v33 = v4;
  result = sub_1D8CD80B4();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v7;
    return result;
  }

  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      sub_1D8CCC0B8(0, (v32 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = (*(v5 + 56) + 32 * v18);
    if (v33)
    {
      sub_1D8CAD7DC(v22, v34);
    }

    else
    {
      sub_1D8C9D24C(v22, v34);
    }

    sub_1D8CD8254();
    sub_1D8CD7BD4();
    result = sub_1D8CD8284();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v7 + 48) + 16 * v26);
    *v31 = v20;
    v31[1] = v21;
    result = sub_1D8CAD7DC(v34, (*(v7 + 56) + 32 * v26));
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

id sub_1D8CAD130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_1D8CD7AD4();

  v7 = sub_1D8CD7AD4();

  v8 = [a5 URLForResource:v6 withExtension:v7];

  return v8;
}

uint64_t sub_1D8CAD1C4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D8CD7B04();
  v4 = v3;
  if (v2 == sub_1D8CD7B04() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1D8CD8154();
  }

  return v7 & 1;
}

uint64_t sub_1D8CAD248(uint64_t a1, uint64_t a2)
{
  sub_1D8CD7B04();
  sub_1D8CD7BD4();
}

uint64_t sub_1D8CAD29C(uint64_t a1, uint64_t a2)
{
  sub_1D8CD7B04();
  sub_1D8CD8254();
  sub_1D8CD7BD4();
  v2 = sub_1D8CD8284();

  return v2;
}

uint64_t sub_1D8CAD314(uint64_t a1, id *a2)
{
  result = sub_1D8CD7AE4();
  *a2 = 0;
  return result;
}

uint64_t sub_1D8CAD38C(uint64_t a1, id *a2)
{
  v3 = sub_1D8CD7AF4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1D8CAD40C(uint64_t a1)
{
  sub_1D8CD7B04();
  v1 = sub_1D8CD7AD4();

  return v1;
}

uint64_t sub_1D8CAD444(uint64_t a1)
{
  v1 = sub_1D8CD7B04();
  v2 = MEMORY[0x1DA726AC0](v1);

  return v2;
}

uint64_t sub_1D8CAD47C(uint64_t a1)
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_34();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_16(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_6_0(v2);

  return sub_1D8CA6824(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1D8CAD510(uint64_t a1)
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_34();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_16(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_6_0(v2);

  return sub_1D8CA6B84(v4, v5, v6, v7, v8, v9);
}

uint64_t objectdestroy_84Tm()
{
  swift_unknownObjectRelease();

  v0 = OUTLINED_FUNCTION_56();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1D8CAD5E4(uint64_t a1)
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_34();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_16(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_6_0(v2);

  return sub_1D8CA5E14(v4, v5, v6, v7, v8, v9);
}

unint64_t sub_1D8CAD678()
{
  result = qword_1ECAAC5D8;
  if (!qword_1ECAAC5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAC5D8);
  }

  return result;
}

uint64_t sub_1D8CAD720(uint64_t result, uint64_t a2, char a3)
{
  if (a3 < 0)
  {
    return sub_1D8CAD730(result, a2, a3 & 0x7F);
  }

  return result;
}

uint64_t sub_1D8CAD730(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1D8CAD748(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1D8CAD75C(result, a2, a3);
  }

  return result;
}

uint64_t sub_1D8CAD75C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1D8CAD774(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1D8CAD730(a1, a2, a3);
  }

  return a1;
}

unint64_t sub_1D8CAD788()
{
  result = qword_1ECAAC7C8;
  if (!qword_1ECAAC7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAC7C8);
  }

  return result;
}

_OWORD *sub_1D8CAD7DC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1D8CAD840()
{
  OUTLINED_FUNCTION_19();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16(v0);
  *v1 = v2;
  v1[1] = sub_1D8CAD8E0;

  return sub_1D8CA14D4();
}

uint64_t sub_1D8CAD8E0()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15();
  v1 = *v0;
  OUTLINED_FUNCTION_1();
  *v2 = v1;

  OUTLINED_FUNCTION_13();

  return v3();
}

void sub_1D8CAD9C0(id a1, unsigned int a2, char a3)
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0xFFFFFFFE | (a2 >> 7) & 1) == 1)
  {
  }
}

uint64_t sub_1D8CAD9E0(uint64_t a1)
{
  OUTLINED_FUNCTION_22();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 96);
  v6 = *(v1 + 104);
  v7 = *(v1 + 112);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D8CADAA0;

  return sub_1D8CA39B4(v3, v4, v1 + 32, v5, v6, v7);
}

uint64_t sub_1D8CADAA0()
{
  OUTLINED_FUNCTION_19();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_15();
  v5 = *v0;
  OUTLINED_FUNCTION_1();
  *v6 = v5;

  OUTLINED_FUNCTION_31();

  return v7(v4, v2);
}

unint64_t sub_1D8CADB98()
{
  result = qword_1ECAAC7E8;
  if (!qword_1ECAAC7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAC7E8);
  }

  return result;
}

uint64_t sub_1D8CADBEC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_84(a1, a2, a3, a4);
  OUTLINED_FUNCTION_8();
  v5 = OUTLINED_FUNCTION_38();
  v6(v5);
  return v4;
}

uint64_t sub_1D8CADC38(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_1D8CADCA0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_1D8CADCF8(uint64_t a1)
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_22();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_16(v1);
  *v2 = v3;
  v2[1] = sub_1D8CAD8E0;
  OUTLINED_FUNCTION_70();

  return sub_1D8CA3374(v4, v5, v6, v7, v8);
}

uint64_t sub_1D8CADDA4()
{
  OUTLINED_FUNCTION_10();
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D8CADE30;

  return sub_1D8CA0D90(v0);
}

uint64_t sub_1D8CADE30()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_15();
  v1 = *v0;
  OUTLINED_FUNCTION_1();
  *v2 = v1;

  OUTLINED_FUNCTION_31();
  v3 = OUTLINED_FUNCTION_33();

  return v4(v3);
}

uint64_t sub_1D8CADF40(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_8();
  (*(v4 + 8))(a1);
  return a1;
}

void sub_1D8CADFF0(uint64_t a1)
{
  sub_1D8CD7674();
  if (v1 <= 0x3F)
  {
    sub_1D8CAE220(319, &qword_1ECAAC498, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1D8CAE220(319, &qword_1ECAAC4A0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t get_enum_tag_for_layout_string_20PegasusConfiguration0A16ConfigFetchErrorO(uint64_t a1)
{
  if (*(a1 + 9))
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) >> 7;
  }
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_1D8CAE108(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x1FE && *(a1 + 10))
    {
      v2 = *a1 + 509;
    }

    else
    {
      v2 = ((*(a1 + 8) >> 7) | (2 * *(a1 + 9))) ^ 0x1FF;
      if (v2 >= 0x1FD)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1D8CAE154(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1FD)
  {
    *(result + 8) = 0;
    *result = a2 - 510;
    if (a3 >= 0x1FE)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1FE)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = __PAIR16__((-128 * a2) >> 24, a2 << 7);
    }
  }

  return result;
}

uint64_t sub_1D8CAE1B8(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 8) = *(result + 8) & 0x7F | (a2 << 7);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0;
  }

  *(result + 9) = a2 > 1;
  return result;
}

void sub_1D8CAE220(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void OUTLINED_FUNCTION_28()
{

  sub_1D8CA5B0C(sub_1D8CA77DC);
}

__n128 OUTLINED_FUNCTION_35(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  *(v10 + 208) = a1;
  *(v10 + 16) = v13;
  *(v10 + 24) = v12;
  *(v10 + 32) = v9;
  *(v10 + 40) = a9;
  *(v10 + 56) = v11;
  result = v14[3];
  *(v10 + 64) = result;
  return result;
}

void OUTLINED_FUNCTION_43()
{
  *(v0 + 200) = *(*(v0 + 144) + 200);

  sub_1D8C96BF0();
}

uint64_t OUTLINED_FUNCTION_44()
{
}

BOOL OUTLINED_FUNCTION_48(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

BOOL OUTLINED_FUNCTION_53(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_61(uint64_t result, uint64_t a2)
{
  *(v4 + 96) = a2;
  *(v4 + 104) = v2;
  *(v4 + 88) = result;
  *(v4 + 80) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_65()
{

  return sub_1D8CD7AD4();
}

uint64_t OUTLINED_FUNCTION_66()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_71()
{
}

void *OUTLINED_FUNCTION_72(uint64_t a1, uint64_t a2, ...)
{

  return sub_1D8CD7F84();
}

__n128 OUTLINED_FUNCTION_81(uint64_t a1)
{
  *(v2 + 136) = a1;
  *(v2 + 144) = v1;
  *(v2 + 152) = *a1;
  *(v2 + 168) = *(a1 + 16);
  result = *(a1 + 24);
  *(v2 + 176) = result;
  *(v2 + 192) = *(a1 + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_82()
{

  return sub_1D8CD7AD4();
}

void OUTLINED_FUNCTION_86()
{

  sub_1D8CAD9C0(v0, v2, v1);
}

uint64_t OUTLINED_FUNCTION_87()
{

  return type metadata accessor for ResourceAccessSpan(0);
}

uint64_t sub_1D8CAE5FC@<X0>(uint64_t a2@<X8>)
{
  result = sub_1D8CAE630();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1D8CAE688(uint64_t a1)
{
  if ((*(v1 + 88) & 1) == 0)
  {
    sub_1D8CAF0EC(a1);
  }

  v2 = sub_1D8CAE6D0(a1);

  return v2;
}

uint64_t sub_1D8CAE6D0(uint64_t a1)
{
  if ((*(v1 + 88) & 1) == 0)
  {
    sub_1D8CAF0EC(a1);
  }

  v2 = sub_1D8C9B790();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1D8CAE758(uint64_t a1)
{
  v1 = sub_1D8CAE688(a1);
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

uint64_t type metadata accessor for ResourceAccessNetworkSpan(uint64_t a1)
{
  result = qword_1ED9C3CD8;
  if (!qword_1ED9C3CD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D8CAE844()
{
  sub_1D8CD7E24();
  OUTLINED_FUNCTION_0_0();
  v2 = sub_1D8CD7904(v1);
  sub_1D8CAE9C8(v2);
  sub_1D8CD7E24();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC9A0, &qword_1D8CD9990);
  v4 = OUTLINED_FUNCTION_1_0(v3);
  *(v4 + 16) = xmmword_1D8CD8F40;
  v6 = *(v0 + qword_1ED9C5608 + 8);
  v5 = *(v0 + qword_1ED9C5608 + 16);
  v7 = MEMORY[0x1E69E6158];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  v8 = sub_1D8C96E60();
  *(v4 + 64) = v8;
  *(v4 + 32) = v6;
  *(v4 + 40) = v5;
  swift_bridgeObjectRetain_n();
  OUTLINED_FUNCTION_0_0();
  sub_1D8CD7904(v9);

  sub_1D8CD7E24();
  v10 = OUTLINED_FUNCTION_1_0(v3);
  *(v10 + 16) = xmmword_1D8CD8F40;
  *(v10 + 56) = v7;
  *(v10 + 64) = v8;
  *(v10 + 32) = v6;
  *(v10 + 40) = v5;
  OUTLINED_FUNCTION_0_0();
  sub_1D8CD7904(v11);

  sub_1D8CD7E24();
  OUTLINED_FUNCTION_0_0();

  return sub_1D8CD7904(v12);
}

uint64_t sub_1D8CAE9C8(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + 96);
  v4 = sub_1D8CD7E24();
  sub_1D8CD7904("LEAKED NETWORK SPAN: {{{", 24, 2, &dword_1D8C92000, v3, v4, MEMORY[0x1E69E7CC0]);
  sub_1D8CC4038();
  sub_1D8CD7E24();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC9A0, &qword_1D8CD9990);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D8CD8F40;
  v6 = *(v2 + *(*v2 + 464) + 8);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC9B0, &unk_1D8CD9998);
  v7 = sub_1D8CD7B64();
  v9 = v8;
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v10 = sub_1D8C96E60();
  *(v5 + 64) = v10;
  *(v5 + 32) = v7;
  *(v5 + 40) = v9;
  sub_1D8CD7904("Network task: %s", v45);

  sub_1D8CD7E24();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D8CD8F40;
  ObjectType = swift_getObjectType();
  v52 = v6;
  v12 = v6;
  v13 = *(v6 + 16);
  v13(ObjectType, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC818, &unk_1D8CD9620);
  v14 = sub_1D8CD7B64();
  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 64) = v10;
  v54 = v10;
  *(v11 + 32) = v14;
  *(v11 + 40) = v15;
  v55 = v3;
  sub_1D8CD7904("Response: %s", ObjectType);

  v53 = sub_1D8CAF3AC();
  if (v18)
  {
    sub_1D8CD7E24();
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1D8CD8F40;
    v13(v47, v52);
    v20 = sub_1D8CD7B64();
    v21 = MEMORY[0x1E69E6158];
    v22 = v10;
    *(v19 + 56) = MEMORY[0x1E69E6158];
    *(v19 + 64) = v10;
    *(v19 + 32) = v20;
    *(v19 + 40) = v23;
    v24 = v3;
    sub_1D8CD7904("Unsupported response: %s", v47);
    v25 = v21;
  }

  else
  {
    v26 = v16;
    v27 = v17;
    v28 = HIDWORD(v17);
    sub_1D8CD7E24();
    v29 = swift_allocObject();
    v30 = MEMORY[0x1E69E6530];
    *(v29 + 16) = xmmword_1D8CD8F40;
    v31 = MEMORY[0x1E69E65A8];
    *(v29 + 56) = v30;
    *(v29 + 64) = v31;
    *(v29 + 32) = v26;
    v24 = v55;
    sub_1D8CD7904("Status: %d", v47);

    sub_1D8CD7E24();
    v32 = swift_allocObject();
    v33 = MEMORY[0x1E69E7668];
    *(v32 + 16) = xmmword_1D8CD8F40;
    v34 = MEMORY[0x1E69E76D0];
    *(v32 + 56) = v33;
    *(v32 + 64) = v34;
    *(v32 + 32) = v28;
    sub_1D8CD7904("Uploaded: %llu bytes", v49);

    sub_1D8CD7E24();
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1D8CD8F40;
    *(v35 + 56) = v33;
    *(v35 + 64) = v34;
    *(v35 + 32) = v27;
    sub_1D8CD7904("Downloaded: %llu bytes", v50);

    sub_1D8CD7E24();
    v36 = swift_allocObject();
    v37 = MEMORY[0x1E69E63B0];
    *(v36 + 16) = xmmword_1D8CD8F40;
    v38 = MEMORY[0x1E69E6438];
    *(v36 + 56) = v37;
    *(v36 + 64) = v38;
    *(v36 + 32) = v53;
    sub_1D8CD7904("Runtime: %f seconds", v51);
    v25 = MEMORY[0x1E69E6158];
    v22 = v54;
  }

  sub_1D8CD7E24();
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1D8CD8F40;
  v40 = *(v2 + *(*v2 + 472));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC9C0, &unk_1D8CD99A8);
  v41 = sub_1D8CD7B64();
  *(v39 + 56) = v25;
  *(v39 + 64) = v22;
  *(v39 + 32) = v41;
  *(v39 + 40) = v42;
  sub_1D8CD7904("Error: %s", v48);

  v43 = sub_1D8CD7E24();
  return sub_1D8CD7904("}}}", 3, 2, &dword_1D8C92000, v24, v43, MEMORY[0x1E69E7CC0]);
}

uint64_t sub_1D8CAEF18(uint64_t a1, unint64_t a2, double a3)
{
  sub_1D8CC1BD4(a1, a2, a3);
  v7 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
  swift_isUniquelyReferenced_nonNull_native();
  sub_1D8CB4574(v7, 0x726574706F6461, 0xE700000000000000);
  sub_1D8CCB66C();

  return sub_1D8CAEFFC(a1, a2, a3);
}

uint64_t sub_1D8CAEFFC(uint64_t a1, unint64_t a2, double a3)
{
  v3 = a2;
  v6 = HIDWORD(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC9A0, &qword_1D8CD9990);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D8CD97E0;
  v8 = MEMORY[0x1E69E65A8];
  *(v7 + 56) = MEMORY[0x1E69E6530];
  *(v7 + 64) = v8;
  *(v7 + 32) = a1;
  v9 = MEMORY[0x1E69E7668];
  v10 = MEMORY[0x1E69E76D0];
  *(v7 + 96) = MEMORY[0x1E69E7668];
  *(v7 + 104) = v10;
  *(v7 + 72) = v3;
  *(v7 + 136) = v9;
  *(v7 + 144) = v10;
  v11 = MEMORY[0x1E69E63B0];
  *(v7 + 112) = v6;
  v12 = MEMORY[0x1E69E6438];
  *(v7 + 176) = v11;
  *(v7 + 184) = v12;
  *(v7 + 152) = a3;
  sub_1D8C9AD8C("statusCode=%{signpost.description:attribute,public}d, download=%{signpost.description:attribute}lu, upload=%{signpost.description:attribute}lu, runtime=%{signpost.description:attribute}f", 186, 2, v7);
}

void sub_1D8CAF0EC(uint64_t result)
{
  if ((v1[88] & 1) == 0)
  {
    v2 = v1;
    v3 = sub_1D8CAF3AC();
    v6 = MEMORY[0x1E69E6158];
    if (v7)
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC9A0, &qword_1D8CD9990);
      v9 = OUTLINED_FUNCTION_1_0(v8);
      *(v9 + 16) = xmmword_1D8CD8F40;
      v10 = *&v1[*(*v1 + 464) + 8];
      ObjectType = swift_getObjectType();
      (*(v10 + 16))(ObjectType, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC818, &unk_1D8CD9620);
      v12 = sub_1D8CD7B64();
      v14 = v13;
      *(v9 + 56) = v6;
      *(v9 + 64) = sub_1D8C96E60();
      *(v9 + 32) = v12;
      *(v9 + 40) = v14;
      sub_1D8C9AD8C("UNIDENTIFIED_RESPONSE_TYPE=%{signpost.description:attribute,public}s", 68, 2, v9);
    }

    else
    {
      (*(*v1 + 568))(v4, v5, *&v3);
    }

    v15 = *(*&v2[*(*v2 + 152)] + 16);

    os_unfair_lock_lock(v15);
    if ((v2[88] & 1) == 0)
    {
      if (*&v2[*(*v2 + 480)])
      {
        swift_unknownObjectRetain();
        if (nw_activity_is_activated())
        {
          nw_activity_complete_with_reason();
        }

        else
        {
          sub_1D8CD7E04();
          v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC9A0, &qword_1D8CD9990);
          v17 = OUTLINED_FUNCTION_1_0(v16);
          *(v17 + 16) = xmmword_1D8CD8F40;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACD20, &qword_1D8CD99B8);
          v18 = sub_1D8CD7B64();
          v20 = v19;
          *(v17 + 56) = v6;
          *(v17 + 64) = sub_1D8C96E60();
          *(v17 + 32) = v18;
          *(v17 + 40) = v20;
          sub_1D8CD7904("Ending NetworkSpan before nw_activity (%s) was activated", v21);
        }

        swift_unknownObjectRelease();
      }

      sub_1D8CCA4C8();
    }

    os_unfair_lock_unlock(v15);
  }
}

uint64_t sub_1D8CAF3AC()
{
  v1 = v0;
  v2 = *&v0[*(*v0 + 464) + 8];
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 16);
  v5 = v4(ObjectType, v2);
  if (v5)
  {
    v6 = v5;
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      [v7 statusCode];
      v8 = (*(v2 + 8))(ObjectType, v2);
      if (!v8)
      {

        *&result = 0.0;
        return result;
      }

      v9 = v8;
      *&v24 = 0xD000000000000021;
      *(&v24 + 1) = 0x80000001D8CDE2C0;
      sub_1D8CD7FB4();
      sub_1D8CB1E8C(v9, &v24, v23);
      sub_1D8CAD7EC(v23);
      if (v25)
      {
        swift_dynamicCast();
      }

      else
      {
        sub_1D8CAFBCC(&v24);
      }

      *&v24 = 0xD00000000000001DLL;
      *(&v24 + 1) = 0x80000001D8CDE2F0;
      sub_1D8CD7FB4();
      sub_1D8CB1E8C(v9, &v24, v23);
      sub_1D8CAD7EC(v23);
      if (v25)
      {
        swift_dynamicCast();
      }

      else
      {
        sub_1D8CAFBCC(&v24);
      }

      sub_1D8CD7FB4();
      sub_1D8CB1E8C(v9, &v24, v23);
      sub_1D8CAD7EC(v23);
      if (v25)
      {
        if (swift_dynamicCast())
        {
          v22 = -2.31584178e77;
          goto LABEL_26;
        }
      }

      else
      {
        sub_1D8CAFBCC(&v24);
      }

      sub_1D8CD7FB4();
      sub_1D8CB1E8C(v9, &v24, v23);
      sub_1D8CAD7EC(v23);
      if (v25)
      {
        if (swift_dynamicCast())
        {
LABEL_26:
          sub_1D8CD7FB4();
          sub_1D8CB1E8C(v9, &v24, v23);

          sub_1D8CAD7EC(v23);
          if (v25)
          {
            if (swift_dynamicCast())
            {
              *&result = -2.31584178e77 - v22;
              return result;
            }
          }

          else
          {
            sub_1D8CAFBCC(&v24);
          }

          goto LABEL_32;
        }
      }

      else
      {
        sub_1D8CAFBCC(&v24);
      }

LABEL_32:
      *&result = 0.0;
      return result;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC9A0, &qword_1D8CD9990);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D8CD8F40;
  v23[0] = v4(ObjectType, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC818, &unk_1D8CD9620);
  v11 = sub_1D8CD7B64();
  v13 = v12;
  v14 = MEMORY[0x1E69E6158];
  *(v10 + 56) = MEMORY[0x1E69E6158];
  v15 = sub_1D8C96E60();
  *(v10 + 64) = v15;
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  sub_1D8C9AD8C("UNIDENTIFIED_RESPONSE_TYPE=%{signpost.description:attribute,public}s", 68, 2, v10);

  v16 = *(*&v1[*(*v1 + 152)] + 16);

  os_unfair_lock_lock(v16);
  if ((v1[88] & 1) == 0)
  {
    v17 = *&v1[*(*v1 + 480)];
    if (v17)
    {
      swift_unknownObjectRetain();
      if (nw_activity_is_activated())
      {
        nw_activity_complete_with_reason();
      }

      else
      {
        sub_1D8CD7E04();
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_1D8CD8F40;
        v23[0] = v17;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACD20, &qword_1D8CD99B8);
        v20 = sub_1D8CD7B64();
        *(v19 + 56) = v14;
        *(v19 + 64) = v15;
        *(v19 + 32) = v20;
        *(v19 + 40) = v21;
        sub_1D8CD7904("Ending NetworkSpan before nw_activity (%s) was activated", 1);
      }

      swift_unknownObjectRelease();
    }

    sub_1D8CCA4C8();
  }

  os_unfair_lock_unlock(v16);

  *&result = 0.0;
  return result;
}

unint64_t sub_1D8CAF9CC()
{
  result = qword_1ED9C3D00;
  if (!qword_1ED9C3D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9C3D00);
  }

  return result;
}

unint64_t sub_1D8CAFA20(uint64_t a1)
{
  *(a1 + 8) = sub_1D8CAFA50();
  result = sub_1D8CAFAA4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D8CAFA50()
{
  result = qword_1ED9C3D08;
  if (!qword_1ED9C3D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9C3D08);
  }

  return result;
}

unint64_t sub_1D8CAFAA4()
{
  result = qword_1ED9C3CF0;
  if (!qword_1ED9C3CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9C3CF0);
  }

  return result;
}

unint64_t sub_1D8CAFAFC()
{
  result = qword_1ECAAC988;
  if (!qword_1ECAAC988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAC988);
  }

  return result;
}

unint64_t sub_1D8CAFB50(uint64_t a1)
{
  result = sub_1D8CAFB78();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D8CAFB78()
{
  result = qword_1ECAAC998;
  if (!qword_1ECAAC998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAC998);
  }

  return result;
}

uint64_t sub_1D8CAFBCC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC680, &qword_1D8CD8FB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for ConfigurationContext(_BYTE *result, int a2, int a3)
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

PegasusConfiguration::PegasusClientName_optional __swiftcall PegasusClientName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D8CD8184();

  v5 = 0;
  v6 = 14;
  switch(v3)
  {
    case 0:
      goto LABEL_25;
    case 1:
      v5 = 1;
      goto LABEL_25;
    case 2:
      v5 = 2;
      goto LABEL_25;
    case 3:
      v5 = 3;
      goto LABEL_25;
    case 4:
      v5 = 4;
      goto LABEL_25;
    case 5:
      v5 = 5;
      goto LABEL_25;
    case 6:
      v5 = 6;
      goto LABEL_25;
    case 7:
      v5 = 7;
      goto LABEL_25;
    case 8:
      v5 = 8;
      goto LABEL_25;
    case 9:
      v5 = 9;
      goto LABEL_25;
    case 10:
      v5 = 10;
      goto LABEL_25;
    case 11:
      v5 = 11;
      goto LABEL_25;
    case 12:
      v5 = 12;
      goto LABEL_25;
    case 13:
      v5 = 13;
LABEL_25:
      v6 = v5;
      break;
    case 14:
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    default:
      v6 = 32;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_1D8CAFF40()
{
  result = qword_1ECAAC9C8;
  if (!qword_1ECAAC9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAC9C8);
  }

  return result;
}

uint64_t sub_1D8CAFFB8@<X0>(uint64_t *a1@<X8>)
{
  result = PegasusClientName.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1D8CAFFE4()
{
  result = qword_1ECAAC9D0;
  if (!qword_1ECAAC9D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAAC9D8, &qword_1D8CD9AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAC9D0);
  }

  return result;
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

uint64_t getEnumTagSinglePayload for PegasusClientName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE1)
  {
    if (a2 + 31 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 31) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 32;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x20;
  v5 = v6 - 32;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PegasusClientName(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 31 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 31) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE0)
  {
    v6 = ((a2 - 225) >> 8) + 1;
    *result = a2 + 31;
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
          *result = a2 + 31;
        }

        break;
    }
  }

  return result;
}

void sub_1D8CB0204(void (*a1)(void))
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3);
  a1();

  os_unfair_lock_unlock(v3);
}

uint64_t sub_1D8CB026C()
{
  v0 = sub_1D8CD7A04();
  __swift_allocate_value_buffer(v0, qword_1ECAAC5B8);
  __swift_project_value_buffer(v0, qword_1ECAAC5B8);
  return sub_1D8CD79F4();
}

uint64_t ParsecKeys.encryptedToken.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ParsecKeys.__allocating_init()()
{
  v0 = swift_allocObject();
  ParsecKeys.init()();
  return v0;
}

uint64_t ParsecKeys.init()()
{
  v1 = v0;
  type metadata accessor for ActivityMonitor();
  swift_allocObject();
  v2 = sub_1D8CC2F5C();
  v3 = qword_1ED9C4058;

  if (v3 != -1)
  {
    swift_once();
  }

  v20 = xmmword_1ED9C4060;
  v21 = qword_1ED9C4070;
  type metadata accessor for ResourceAccessSpan(0);
  swift_allocObject();

  sub_1D8C96CAC(v2, 700, &v20, 0, 1);
  v5 = v4;
  v6 = sub_1D8CB0690();
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    if (qword_1ECAAC5B0 != -1)
    {
      OUTLINED_FUNCTION_0_2(&qword_1ECAAC5B0);
    }

    v10 = sub_1D8CD7A04();
    __swift_project_value_buffer(v10, qword_1ECAAC5B8);

    v11 = sub_1D8CD79E4();
    v12 = sub_1D8CD7E14();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *&v20 = v14;
      *v13 = 136642819;
      *(v13 + 4) = sub_1D8C9D088(v8, v9, &v20);
      _os_log_impl(&dword_1D8C92000, v11, v12, "read encrypted secret key - %{sensitive}s ", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x1DA727900](v14, -1, -1);
      MEMORY[0x1DA727900](v13, -1, -1);
    }

    *(v1 + 16) = v8;
    *(v1 + 24) = v9;
    *(v5 + qword_1ED9C3D48) = 122;
    sub_1D8C9AA78();
  }

  else
  {
    if (qword_1ECAAC5B0 != -1)
    {
      OUTLINED_FUNCTION_0_2(&qword_1ECAAC5B0);
    }

    v15 = sub_1D8CD7A04();
    __swift_project_value_buffer(v15, qword_1ECAAC5B8);
    v16 = sub_1D8CD79E4();
    v17 = sub_1D8CD7E24();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1D8C92000, v16, v17, "could not read encrypted auth token", v18, 2u);
      MEMORY[0x1DA727900](v18, -1, -1);
    }

    *(v5 + qword_1ED9C3D48) = 121;
    sub_1D8C9AA78();

    *(v1 + 16) = 0;
    *(v1 + 24) = 0xE000000000000000;
  }

  return v1;
}

id sub_1D8CB0690()
{
  type metadata accessor for ParsecKeys();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D8CB0E9C(0x654B636573726150, 0xEA00000000007379, 0x7473696C70, 0xE500000000000000, v1);
  v4 = v3;

  if (!v4)
  {
    return 0;
  }

  sub_1D8CB0F58();
  result = sub_1D8CB0998(v2, v4);
  if (!result)
  {
    return result;
  }

  v6 = result;
  if (qword_1ECAAC5B0 != -1)
  {
    swift_once();
  }

  v7 = sub_1D8CD7A04();
  __swift_project_value_buffer(v7, qword_1ECAAC5B8);
  v8 = v6;
  v9 = sub_1D8CD79E4();
  v10 = sub_1D8CD7E14();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138739971;
    *(v11 + 4) = v8;
    *v12 = v6;
    v13 = v8;
    _os_log_impl(&dword_1D8C92000, v9, v10, "parsed plist - %{sensitive}@", v11, 0xCu);
    sub_1D8C953A4(v12, &unk_1ECAACEE0, &qword_1D8CD9C30);
    MEMORY[0x1DA727900](v12, -1, -1);
    MEMORY[0x1DA727900](v11, -1, -1);
  }

  if (qword_1ECAAC4B8 != -1)
  {
    swift_once();
  }

  v14 = 7627109;
  if (byte_1ED9C5648)
  {
    v14 = 1952540009;
  }

  v15 = 0xE300000000000000;
  if (byte_1ED9C5648)
  {
    v15 = 0xE400000000000000;
  }

  *&v18 = v14;
  *(&v18 + 1) = v15;
  v16 = [v8 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v16)
  {
    sub_1D8CD7F84();
    swift_unknownObjectRelease();
  }

  else
  {

    v18 = 0u;
    v19 = 0u;
  }

  v20[0] = v18;
  v20[1] = v19;
  if (!*(&v19 + 1))
  {
    sub_1D8C953A4(v20, &qword_1ECAAC680, &qword_1D8CD8FB0);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v17;
  }

  else
  {
    return 0;
  }
}

id sub_1D8CB0998(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1D8CD7AD4();

  v4 = [v2 initWithContentsOfFile_];

  return v4;
}

uint64_t ParsecKeys.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1D8CB0A88(uint64_t a1, unint64_t a2)
{
  v3 = sub_1D8CB0AD4(a1, a2);
  sub_1D8CB0BEC(&unk_1F5454B98);
  return v3;
}

uint64_t sub_1D8CB0AD4(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
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

  for (; v5; v5 = sub_1D8CD7C44())
  {
    result = sub_1D8CB0CD0(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1D8CD7FF4();
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

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_1D8CD8044();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
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

uint64_t sub_1D8CB0BEC(uint64_t result)
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

    result = sub_1D8CB0D40(result, v7, 1, v3);
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

void *sub_1D8CB0CD0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC9E0, &unk_1D8CD9C20);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_1D8CB0D40(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC9E0, &unk_1D8CD9C20);
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

uint64_t sub_1D8CB0E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_1D8CD7AD4();

  v7 = sub_1D8CD7AD4();

  v8 = [a5 pathForResource:v6 ofType:v7];

  if (!v8)
  {
    return 0;
  }

  v9 = sub_1D8CD7B04();

  return v9;
}

unint64_t sub_1D8CB0F58()
{
  result = qword_1ECAAC490;
  if (!qword_1ECAAC490)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECAAC490);
  }

  return result;
}

uint64_t URLDataSourceOutput.data.getter()
{
  v1 = *v0;
  sub_1D8CADCA0(*v0, *(v0 + 8));
  return v1;
}

void *URLDataSourceOutput.response.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t URLDataSourceOutput.init(_:_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t dispatch thunk of URLDataSource.data(forRequest:priority:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  v14 = (*(a4 + 8) + **(a4 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D8CB1174;
  v12.n128_f32[0] = a5;

  return v14(a1, a2, a3, a4, v12);
}

uint64_t sub_1D8CB1174()
{
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_1();
  *v2 = v1;

  OUTLINED_FUNCTION_13();

  return v3();
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D8CB12A8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1D8CB12E8(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1D8CB1328(uint64_t a1, uint64_t a2, float a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 64) = a3;
  *(v4 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D8CB1350, 0, 0);
}

uint64_t sub_1D8CB1350()
{
  v1 = *(v0 + 64);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v2[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2[2].i32[0] = v1;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_1D8CB1454;
  v4 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD00000000000001ALL, 0x80000001D8CDE490, sub_1D8CB2240, v2, &type metadata for URLDataSourceOutput);
}

uint64_t sub_1D8CB1454()
{
  OUTLINED_FUNCTION_10();
  v5 = *v1;
  OUTLINED_FUNCTION_1();
  *v2 = v5;
  *(v5 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D8CB1580, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_13();

    return v3();
  }
}

uint64_t sub_1D8CB1580()
{
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_13();

  return v0();
}

void *sub_1D8CB15DC()
{
  os_unfair_lock_lock((v0 + 40));
  v1 = *(v0 + 48);
  v2 = v1;
  os_unfair_lock_unlock((v0 + 40));
  return v1;
}

void sub_1D8CB1614(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v38 = sub_1D8CD72C4();
  v8 = *(v38 - 8);
  v32 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v10;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC9F0, &qword_1D8CD9DC0);
  v11 = *(v31 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v14 = &v29 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC9F8, &qword_1D8CD9DC8);
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  v35 = a2;
  v36 = (v15 + 24);
  *(v15 + 16) = 0;
  v37 = (v15 + 16);
  v34 = *(a2 + 16);
  v33 = sub_1D8CD7274();
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = a1;
  v18 = v31;
  (*(v11 + 16))(v14, v17, v31);
  (*(v8 + 16))(v10, a3, v38);
  v19 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v20 = (v12 + *(v8 + 80) + v19) & ~*(v8 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v15;
  *(v21 + 24) = v16;
  (*(v11 + 32))(v21 + v19, v14, v18);
  (*(v8 + 32))(v21 + v20, v30, v38);
  aBlock[4] = sub_1D8CB224C;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CB1FFC;
  aBlock[3] = &block_descriptor;
  v22 = _Block_copy(aBlock);

  v23 = v33;
  v24 = [v34 dataTaskWithRequest:v33 completionHandler:v22];
  _Block_release(v22);

  v25 = v24;
  [v25 set:1 callCompletionHandlerInline:?];
  *&v26 = a4;
  [v25 setPriority_];

  v39 = v25;
  v27 = v36;
  os_unfair_lock_lock(v36);
  sub_1D8CB2370(v37);
  os_unfair_lock_unlock(v27);
  v28 = *(v35 + 24);
  if (v28)
  {
    v28(v25);
  }

  [v25 resume];
}

void sub_1D8CB19E4(uint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    os_unfair_lock_lock((a5 + 24));
    v13 = *(a5 + 16);
    v14 = v13;
    os_unfair_lock_unlock((a5 + 24));
    if (v13)
    {
      v13 = [v14 _incompleteCurrentTaskTransactionMetrics];
    }

    os_unfair_lock_lock((v12 + 40));

    *(v12 + 48) = v13;
    os_unfair_lock_unlock((v12 + 40));
  }

  if (a4)
  {
    v47 = a4;
    v15 = a4;
    v16 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC9F0, &qword_1D8CD9DC0);
    sub_1D8CD7D24();
    v17 = (a5 + 24);
    os_unfair_lock_lock((a5 + 24));
    v20 = *(a5 + 16);
    v18 = (a5 + 16);
    v19 = v20;
    v21 = v20;
    os_unfair_lock_unlock(v17);
    if (v20)
    {
      v22 = [v21 description];

      v23 = sub_1D8CD7B04();
      v19 = v24;
    }

    else
    {
      v23 = 0;
    }

    v46 = a4;
    v28 = sub_1D8CD7284();
    if (v28 && (v29 = sub_1D8CB1EF0(0xD000000000000011, 0x80000001D8CDE4E0, v28), v31 = v30, , v31))
    {

      sub_1D8CD8014();

      v47 = 0xD000000000000010;
      v48 = 0x80000001D8CDE500;
      MEMORY[0x1DA726A90](v29, v31);
      swift_bridgeObjectRelease_n();
      v32 = 0xD000000000000010;
      v33 = 0x80000001D8CDE500;
    }

    else
    {

      v32 = 0;
      v33 = 0xE000000000000000;
    }

    if (qword_1ED9C4AC8 != -1)
    {
      swift_once();
    }

    v34 = sub_1D8CD7A04();
    __swift_project_value_buffer(v34, qword_1ED9C5680);

    v35 = sub_1D8CD79E4();
    v36 = sub_1D8CD7E24();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = v23;
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v47 = v39;
      *v38 = 136315394;
      if (v19)
      {
        v40 = v37;
      }

      else
      {
        v40 = 0;
      }

      if (!v19)
      {
        v19 = 0xE000000000000000;
      }

      v41 = sub_1D8C9D088(v40, v19, &v47);

      *(v38 + 4) = v41;
      *(v38 + 12) = 2080;
      v42 = sub_1D8C9D088(v32, v33, &v47);

      *(v38 + 14) = v42;
      _os_log_impl(&dword_1D8C92000, v35, v36, "Download for %s %s failed", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA727900](v39, -1, -1);
      MEMORY[0x1DA727900](v38, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v17 = (a5 + 24);
    os_unfair_lock_lock((a5 + 24));
    v25 = *(a5 + 16);
    v18 = (a5 + 16);
    v26 = v25;
    os_unfair_lock_unlock(v17);
    if (v25)
    {
      v27 = sub_1D8CB2524();
    }

    else
    {
      v27 = sub_1D8CD7A84();
    }

    if (a2 >> 60 == 15)
    {
      v43 = 0;
    }

    else
    {
      v43 = a1;
    }

    v44 = 0xC000000000000000;
    if (a2 >> 60 != 15)
    {
      v44 = a2;
    }

    v47 = v43;
    v48 = v44;
    v49 = a3;
    v50 = v27;
    sub_1D8CB23A0(a1, a2);
    v45 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC9F0, &qword_1D8CD9DC0);
    sub_1D8CD7D34();
  }

  os_unfair_lock_lock(v17);

  *v18 = 0;
  os_unfair_lock_unlock(v17);
}

double sub_1D8CB1E8C@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (v5 = sub_1D8CC0724(a3), (v6 & 1) != 0))
  {
    v7 = *(a1 + 56) + 32 * v5;

    sub_1D8C9D24C(v7, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1D8CB1EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1D8C9785C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);

  return v6;
}

uint64_t sub_1D8CB1F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1D8C9785C(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

double sub_1D8CB1F98@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1D8C9785C(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_1D8C9D24C(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_1D8CB1FFC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_1D8CD7594();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_1D8CB238C(v6, v10);
}

uint64_t sub_1D8CB2108()
{
  sub_1D8C9EB90(*(v0 + 24), *(v0 + 32));
  sub_1D8CB23B4(v0 + 48);
  return v0;
}

uint64_t sub_1D8CB2138()
{
  v0 = sub_1D8CB2108();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t sub_1D8CB2168(uint64_t a1, uint64_t a2, float a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D8CB1174;

  return sub_1D8CB1328(a1, a2, a3);
}

void sub_1D8CB224C(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC9F0, &qword_1D8CD9DC0);
  sub_1D8CD72C4();
  v9 = *(v4 + 16);
  v10 = *(v4 + 24);

  sub_1D8CB19E4(a1, a2, a3, a4, v9, v10);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D8CB238C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D8CADC38(result, a2);
  }

  return result;
}

uint64_t sub_1D8CB23A0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D8CADCA0(result, a2);
  }

  return result;
}

uint64_t sub_1D8CB23B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA00, &unk_1D8CD9DD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t BiomeStreamConfig.tableName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t BiomeStreamConfig.messageSchemaName.getter()
{
  v1 = *(v0 + 16);

  return v1;
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

uint64_t sub_1D8CB2498(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1D8CB24D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_1D8CB2524()
{
  v1 = sub_1D8CB4D60(v0);
  if (v1)
  {
    v2 = sub_1D8CB42BC(v1);

    if (v2)
    {
      return v2;
    }
  }

  v4 = [v0 _incompleteCurrentTaskTransactionMetrics];
  v5 = sub_1D8CB25A8();

  return v5;
}

char *sub_1D8CB25A8()
{
  v1 = v0;
  v298 = sub_1D8CD7B54();
  v297 = *(v298 - 8);
  MEMORY[0x1EEE9AC00](v298);
  v296 = &v296 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA10, &qword_1D8CD9E50);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x1EEE9AC00](v4);
  v305 = &v296 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA18, &qword_1D8CDC000);
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_0();
  v310 = v8;
  OUTLINED_FUNCTION_12_0();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v296 - v11;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_6_1();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v296 - v15;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_0();
  v319 = v18;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13_0();
  v316 = v22;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13_0();
  v318 = v26;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_13_0();
  v315 = v28;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13_0();
  v317 = v30;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_13_0();
  v314 = v32;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_13_0();
  v312 = v34;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_13_0();
  v313 = v36;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_13_0();
  v311 = v38;
  OUTLINED_FUNCTION_12_0();
  v40 = MEMORY[0x1EEE9AC00](v39);
  v42 = &v296 - v41;
  v43 = MEMORY[0x1EEE9AC00](v40);
  v45 = &v296 - v44;
  v46 = MEMORY[0x1EEE9AC00](v43);
  v48 = &v296 - v47;
  v49 = MEMORY[0x1EEE9AC00](v46);
  v51 = &v296 - v50;
  MEMORY[0x1EEE9AC00](v49);
  v53 = &v296 - v52;
  v54 = [v1 requestStartDate];
  if (v54)
  {
    v55 = v54;
    sub_1D8CD7644();

    v56 = sub_1D8CD7674();
    v57 = 0;
  }

  else
  {
    v56 = sub_1D8CD7674();
    v57 = 1;
  }

  v308 = v16;
  v309 = v12;
  OUTLINED_FUNCTION_27_0(v51, v57);
  sub_1D8CB4E28(v51, v53, &qword_1ECAACA18, &qword_1D8CDC000);
  sub_1D8CD7674();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v53, 1, v56);
  v59 = MEMORY[0x1E69E63B0];
  v304 = "with request id ";
  if (EnumTagSinglePayload == 1)
  {
    sub_1D8C9B71C(v53, &qword_1ECAACA18, &qword_1D8CDC000);
    v60 = MEMORY[0x1E69E7CC8];
    v61 = sub_1D8C9785C(0xD00000000000002CLL, 0x80000001D8CDE520);
    if (v62)
    {
      v63 = v61;
      swift_isUniquelyReferenced_nonNull_native();
      v321 = v60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA20, &qword_1D8CD9E58);
      OUTLINED_FUNCTION_16_0();
      sub_1D8CD8084();
      v64 = v321;

      sub_1D8CAD7DC((*(v64 + 56) + 32 * v63), &v322);
      sub_1D8CD8094();
    }

    else
    {
      OUTLINED_FUNCTION_15_0();
      v64 = MEMORY[0x1E69E7CC8];
    }

    v70 = v1;
    v71 = v318;
    sub_1D8C9B71C(&v322, &qword_1ECAAC680, &qword_1D8CD8FB0);
  }

  else
  {
    sub_1D8CD75A4();
    v323 = v59;
    OUTLINED_FUNCTION_0_3(v65);
    v66 = OUTLINED_FUNCTION_23_0();
    v67(v66);
    OUTLINED_FUNCTION_11_0();
    v68 = OUTLINED_FUNCTION_3_1();
    sub_1D8CB4A34(v68, 0xD00000000000002CLL, 0x80000001D8CDE520, v69);
    v64 = v320;
    v70 = v1;
    v71 = v318;
  }

  v72 = v311;
  v73 = [v70 requestStartDate];
  if (v73)
  {
    v74 = v73;
    sub_1D8CD7644();

    v75 = 0;
  }

  else
  {
    v75 = 1;
  }

  OUTLINED_FUNCTION_27_0(v45, v75);
  sub_1D8CB4E28(v45, v48, &qword_1ECAACA18, &qword_1D8CDC000);
  OUTLINED_FUNCTION_1_2(v48);
  if (v76)
  {
    sub_1D8C9B71C(v48, &qword_1ECAACA18, &qword_1D8CDC000);
    v77 = sub_1D8C9785C(0xD00000000000001BLL, 0x80000001D8CDE330);
    if (v78)
    {
      v79 = v77;
      swift_isUniquelyReferenced_nonNull_native();
      v321 = v64;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA20, &qword_1D8CD9E58);
      OUTLINED_FUNCTION_16_0();
      v71 = v318;
      sub_1D8CD8084();
      v64 = v321;

      sub_1D8CAD7DC((*(v64 + 56) + 32 * v79), &v322);
      sub_1D8CD8094();
    }

    else
    {
      OUTLINED_FUNCTION_15_0();
    }

    sub_1D8C9B71C(&v322, &qword_1ECAAC680, &qword_1D8CD8FB0);
    v80 = MEMORY[0x1E69E63B0];
  }

  else
  {
    sub_1D8CD75A4();
    v80 = MEMORY[0x1E69E63B0];
    v323 = MEMORY[0x1E69E63B0];
    OUTLINED_FUNCTION_0_3(v81);
    (*(v82 + 8))(v48, v56);
    OUTLINED_FUNCTION_18_0();
    v83 = OUTLINED_FUNCTION_9_0();
    sub_1D8CB4A34(v83, 0xD00000000000001BLL, 0x80000001D8CDE330, v84);
    v64 = v320;
  }

  v85 = [v70 requestStartDate];
  if (v85)
  {
    v86 = v85;
    sub_1D8CD7644();

    v87 = 0;
  }

  else
  {
    v87 = 1;
  }

  OUTLINED_FUNCTION_27_0(v72, v87);
  sub_1D8CB4E28(v72, v42, &qword_1ECAACA18, &qword_1D8CDC000);
  OUTLINED_FUNCTION_1_2(v42);
  if (v76)
  {
    sub_1D8C9B71C(v42, &qword_1ECAACA18, &qword_1D8CDC000);
    sub_1D8C9785C(0xD00000000000001DLL, 0x80000001D8CDE550);
    if (v88)
    {
      OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_22_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA20, &qword_1D8CD9E58);
      OUTLINED_FUNCTION_2_2();
      sub_1D8CD8084();
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_19_0();
      sub_1D8CD8094();
    }

    else
    {
      OUTLINED_FUNCTION_15_0();
    }

    v94 = v312;
    v93 = v313;
    sub_1D8C9B71C(&v322, &qword_1ECAAC680, &qword_1D8CD8FB0);
  }

  else
  {
    sub_1D8CD75A4();
    v323 = v80;
    OUTLINED_FUNCTION_0_3(v89);
    (*(v90 + 8))(v42, v56);
    OUTLINED_FUNCTION_18_0();
    v91 = OUTLINED_FUNCTION_9_0();
    sub_1D8CB4A34(v91, 0xD00000000000001DLL, 0x80000001D8CDE550, v92);
    v64 = v320;
    v94 = v312;
    v93 = v313;
  }

  v95 = [v70 requestEndDate];
  if (v95)
  {
    v96 = v95;
    sub_1D8CD7644();

    v97 = 0;
  }

  else
  {
    v97 = 1;
  }

  OUTLINED_FUNCTION_27_0(v94, v97);
  sub_1D8CB4E28(v94, v93, &qword_1ECAACA18, &qword_1D8CDC000);
  OUTLINED_FUNCTION_1_2(v93);
  if (v76)
  {
    sub_1D8C9B71C(v93, &qword_1ECAACA18, &qword_1D8CDC000);
    v98 = OUTLINED_FUNCTION_28_0();
    sub_1D8C9785C(v98, v99);
    if (v100)
    {
      OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_22_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA20, &qword_1D8CD9E58);
      OUTLINED_FUNCTION_2_2();
      sub_1D8CD8084();
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_19_0();
      sub_1D8CD8094();
    }

    else
    {
      OUTLINED_FUNCTION_15_0();
    }

    v107 = v314;
    sub_1D8C9B71C(&v322, &qword_1ECAAC680, &qword_1D8CD8FB0);
  }

  else
  {
    sub_1D8CD75A4();
    v323 = v80;
    OUTLINED_FUNCTION_0_3(v101);
    v102 = OUTLINED_FUNCTION_23_0();
    v103(v102);
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_17_0();
    sub_1D8CB4A34(v104, 0xD000000000000019, v105, v106);
    v64 = v320;
    v107 = v314;
  }

  v108 = [v70 responseStartDate];
  if (v108)
  {
    v109 = v108;
    sub_1D8CD7644();

    v110 = 0;
  }

  else
  {
    v110 = 1;
  }

  v111 = OUTLINED_FUNCTION_26_0(v108, v110);
  OUTLINED_FUNCTION_37_0(v111, v112, &qword_1ECAACA18, &qword_1D8CDC000);
  OUTLINED_FUNCTION_1_2(v107);
  if (v76)
  {
    sub_1D8C9B71C(v107, &qword_1ECAACA18, &qword_1D8CDC000);
    sub_1D8C9785C(0xD00000000000001CLL, 0x80000001D8CDE590);
    if (v113)
    {
      OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_22_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA20, &qword_1D8CD9E58);
      OUTLINED_FUNCTION_2_2();
      sub_1D8CD8084();
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_19_0();
      sub_1D8CD8094();
    }

    else
    {
      OUTLINED_FUNCTION_15_0();
    }

    v121 = v315;
    sub_1D8C9B71C(&v322, &qword_1ECAAC680, &qword_1D8CD8FB0);
  }

  else
  {
    sub_1D8CD75A4();
    v323 = v80;
    OUTLINED_FUNCTION_0_3(v114);
    v115 = OUTLINED_FUNCTION_23_0();
    v116(v115);
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_17_0();
    sub_1D8CB4A34(v117, v118, v119, v120);
    v64 = v320;
    v121 = v315;
  }

  v122 = [v70 responseEndDate];
  if (v122)
  {
    v123 = v122;
    sub_1D8CD7644();

    v124 = 0;
  }

  else
  {
    v124 = 1;
  }

  OUTLINED_FUNCTION_27_0(v71, v124);
  sub_1D8CB4E28(v71, v121, &qword_1ECAACA18, &qword_1D8CDC000);
  OUTLINED_FUNCTION_1_2(v121);
  if (v76)
  {
    sub_1D8C9B71C(v121, &qword_1ECAACA18, &qword_1D8CDC000);
    sub_1D8C9785C(0xD00000000000001ALL, 0x80000001D8CDE350);
    if (v125)
    {
      OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_22_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA20, &qword_1D8CD9E58);
      OUTLINED_FUNCTION_2_2();
      sub_1D8CD8084();
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_19_0();
      sub_1D8CD8094();
    }

    else
    {
      OUTLINED_FUNCTION_15_0();
    }

    sub_1D8C9B71C(&v322, &qword_1ECAAC680, &qword_1D8CD8FB0);
  }

  else
  {
    sub_1D8CD75A4();
    v323 = v80;
    OUTLINED_FUNCTION_0_3(v126);
    v127 = OUTLINED_FUNCTION_23_0();
    v128(v127);
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_17_0();
    sub_1D8CB4A34(v129, v130, v131, v132);
    v64 = v320;
  }

  v133 = [v70 isReusedConnection];
  v323 = MEMORY[0x1E69E6370];
  LOBYTE(v322) = v133;
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_17_0();
  sub_1D8CB4A34(v134, v135, v136, v137);
  v138 = [v70 countOfRequestHeaderBytesSent];
  v139 = MEMORY[0x1E69E7360];
  v323 = MEMORY[0x1E69E7360];
  *&v322 = v138;
  OUTLINED_FUNCTION_10_0();
  v140 = OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_32_0(v140, 0xD000000000000020, v141, v142);
  v143 = [v70 countOfResponseHeaderBytesReceived];
  v323 = v139;
  *&v322 = v143;
  OUTLINED_FUNCTION_10_0();
  v144 = OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_32_0(v144, 0xD000000000000021, v145, v146);
  v147 = [v70 countOfResponseBodyBytesReceived];
  v323 = v139;
  *&v322 = v147;
  OUTLINED_FUNCTION_10_0();
  v148 = OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_32_0(v148, 0xD000000000000028, v149, v150);
  v151 = [v70 countOfResponseBodyBytesAfterDecoding];
  v323 = v139;
  *&v322 = v151;
  OUTLINED_FUNCTION_10_0();
  v152 = OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_32_0(v152, 0xD000000000000027, v153, v154);
  v155 = [v70 countOfRequestBodyBytesSent];
  result = [v70 countOfRequestHeaderBytesSent];
  if (__OFADD__(v155, result))
  {
    __break(1u);
    goto LABEL_144;
  }

  v323 = v139;
  *&v322 = &result[v155];
  OUTLINED_FUNCTION_10_0();
  v157 = OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_32_0(v157, 0xD00000000000001DLL, v158, v159);
  v160 = [v70 countOfResponseBodyBytesReceived];
  result = [v70 countOfResponseHeaderBytesReceived];
  if (__OFADD__(v160, result))
  {
LABEL_144:
    __break(1u);
    return result;
  }

  v323 = v139;
  *&v322 = &result[v160];
  OUTLINED_FUNCTION_10_0();
  v161 = OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_32_0(v161, 0xD000000000000021, v162, v163);
  v164 = v320;
  v165 = sub_1D8CB4E8C(v70, &selRef__interfaceName);
  if (v166)
  {
    v323 = MEMORY[0x1E69E6158];
    *&v322 = v165;
    *(&v322 + 1) = v166;
    OUTLINED_FUNCTION_10_0();
    v167 = OUTLINED_FUNCTION_4_1();
    sub_1D8CB4A34(v167, 0xD00000000000002CLL, v304 | 0x8000000000000000, v168);
    v164 = v320;
    OUTLINED_FUNCTION_31_0();
  }

  else
  {
    sub_1D8C9785C(0xD00000000000002CLL, v304 | 0x8000000000000000);
    OUTLINED_FUNCTION_31_0();
    if (v170)
    {
      v171 = v169;
      swift_isUniquelyReferenced_nonNull_native();
      v321 = v164;
      v164 = *(v164 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA20, &qword_1D8CD9E58);
      OUTLINED_FUNCTION_16_0();
      sub_1D8CD8084();
      OUTLINED_FUNCTION_36_0();
      sub_1D8CAD7DC((*(v164 + 56) + 32 * v171), &v322);
      sub_1D8CD8094();
    }

    else
    {
      OUTLINED_FUNCTION_15_0();
    }

    sub_1D8C9B71C(&v322, &qword_1ECAAC680, &qword_1D8CD8FB0);
  }

  v172 = [v70 _connectionIdentifier];
  if (v172)
  {
    v173 = v172;
    sub_1D8CD76A4();

    v174 = 0;
  }

  else
  {
    v174 = 1;
  }

  v175 = sub_1D8CD76C4();
  __swift_storeEnumTagSinglePayload(&off_1E8567000, v174, 1, v175);
  sub_1D8CB4E28(&off_1E8567000, &off_1E8567000, &qword_1ECAACA10, &qword_1D8CD9E50);
  if (__swift_getEnumTagSinglePayload(&off_1E8567000, 1, v175) == 1)
  {
    sub_1D8C9B71C(&off_1E8567000, &qword_1ECAACA10, &qword_1D8CD9E50);
    v176 = sub_1D8C9785C(0xD00000000000001DLL, 0x80000001D8CDE690);
    if (v177)
    {
      v178 = v176;
      swift_isUniquelyReferenced_nonNull_native();
      v321 = v164;
      v179 = *(v164 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA20, &qword_1D8CD9E58);
      OUTLINED_FUNCTION_16_0();
      sub_1D8CD8084();
      OUTLINED_FUNCTION_36_0();
      sub_1D8CAD7DC((*(v179 + 56) + 32 * v178), &v322);
      sub_1D8CD8094();
    }

    else
    {
      OUTLINED_FUNCTION_15_0();
    }

    v185 = v316;
    sub_1D8C9B71C(&v322, &qword_1ECAAC680, &qword_1D8CD8FB0);
  }

  else
  {
    v180 = sub_1D8CD7684();
    v323 = MEMORY[0x1E69E6158];
    *&v322 = v180;
    *(&v322 + 1) = v181;
    OUTLINED_FUNCTION_25();
    (*(v182 + 8))(&off_1E8567000, v175);
    OUTLINED_FUNCTION_10_0();
    v183 = OUTLINED_FUNCTION_4_1();
    sub_1D8CB4A34(v183, 0xD00000000000001DLL, 0x80000001D8CDE690, v184);
    v185 = v316;
  }

  v186 = [v70 _redirected];
  v323 = MEMORY[0x1E69E7668];
  LODWORD(v322) = v186;
  OUTLINED_FUNCTION_10_0();
  v187 = OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_32_0(v187, 0xD00000000000001CLL, v188, v189);
  v190 = v320;
  v191 = [v70 connectStartDate];
  if (v191)
  {
    v192 = v191;
    v193 = v306;
    sub_1D8CD7644();

    v194 = 0;
    v195 = v307;
  }

  else
  {
    v194 = 1;
    v195 = v307;
    v193 = v306;
  }

  OUTLINED_FUNCTION_27_0(v193, v194);
  sub_1D8CB4E28(v193, v195, &qword_1ECAACA18, &qword_1D8CDC000);
  OUTLINED_FUNCTION_1_2(v195);
  if (v76)
  {
    sub_1D8C9B71C(v195, &qword_1ECAACA18, &qword_1D8CDC000);
    OUTLINED_FUNCTION_34_0(0xD00000000000001BLL);
    if (v196)
    {
      OUTLINED_FUNCTION_33_0();
      OUTLINED_FUNCTION_7_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA20, &qword_1D8CD9E58);
      OUTLINED_FUNCTION_2_2();
      v185 = v316;
      sub_1D8CD8084();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_19_0();
      sub_1D8CD8094();
    }

    else
    {
      OUTLINED_FUNCTION_15_0();
    }

    v204 = v299;
    sub_1D8C9B71C(&v322, &qword_1ECAAC680, &qword_1D8CD8FB0);
  }

  else
  {
    sub_1D8CD75A4();
    v323 = MEMORY[0x1E69E63B0];
    OUTLINED_FUNCTION_0_3(v197);
    v198 = OUTLINED_FUNCTION_23_0();
    v199(v198);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_17_0();
    sub_1D8CB4A34(v200, v201, v202, v203);
    v190 = v320;
    v204 = v299;
  }

  v205 = [v70 connectEndDate];
  if (v205)
  {
    v206 = v205;
    sub_1D8CD7644();

    v207 = 0;
  }

  else
  {
    v207 = 1;
  }

  OUTLINED_FUNCTION_27_0(v204, v207);
  sub_1D8CB4E28(v204, v185, &qword_1ECAACA18, &qword_1D8CDC000);
  OUTLINED_FUNCTION_1_2(v185);
  if (v76)
  {
    sub_1D8C9B71C(v185, &qword_1ECAACA18, &qword_1D8CDC000);
    v208 = OUTLINED_FUNCTION_28_0();
    sub_1D8C9785C(v208, v209);
    if (v210)
    {
      OUTLINED_FUNCTION_33_0();
      OUTLINED_FUNCTION_7_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA20, &qword_1D8CD9E58);
      OUTLINED_FUNCTION_2_2();
      sub_1D8CD8084();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_19_0();
      sub_1D8CD8094();
    }

    else
    {
      OUTLINED_FUNCTION_15_0();
    }

    v216 = v300;
    sub_1D8C9B71C(&v322, &qword_1ECAAC680, &qword_1D8CD8FB0);
  }

  else
  {
    sub_1D8CD75A4();
    v323 = MEMORY[0x1E69E63B0];
    OUTLINED_FUNCTION_0_3(v211);
    (*(v212 + 8))(v185, v56);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_17_0();
    sub_1D8CB4A34(v213, 0xD000000000000019, v214, v215);
    v190 = v320;
    v216 = v300;
  }

  v217 = [v70 domainLookupStartDate];
  if (v217)
  {
    v218 = v217;
    sub_1D8CD7644();

    v219 = 0;
  }

  else
  {
    v219 = 1;
  }

  v220 = OUTLINED_FUNCTION_26_0(v217, v219);
  OUTLINED_FUNCTION_37_0(v220, v221, &qword_1ECAACA18, &qword_1D8CDC000);
  OUTLINED_FUNCTION_1_2(v216);
  if (v76)
  {
    sub_1D8C9B71C(v216, &qword_1ECAACA18, &qword_1D8CDC000);
    OUTLINED_FUNCTION_34_0(0xD000000000000020);
    if (v222)
    {
      OUTLINED_FUNCTION_33_0();
      OUTLINED_FUNCTION_7_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA20, &qword_1D8CD9E58);
      OUTLINED_FUNCTION_2_2();
      sub_1D8CD8084();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_19_0();
      sub_1D8CD8094();
    }

    else
    {
      OUTLINED_FUNCTION_15_0();
    }

    v230 = v301;
    sub_1D8C9B71C(&v322, &qword_1ECAAC680, &qword_1D8CD8FB0);
  }

  else
  {
    sub_1D8CD75A4();
    v323 = MEMORY[0x1E69E63B0];
    OUTLINED_FUNCTION_0_3(v223);
    v224 = OUTLINED_FUNCTION_23_0();
    v225(v224);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_17_0();
    sub_1D8CB4A34(v226, v227, v228, v229);
    v190 = v320;
    v230 = v301;
  }

  v231 = [v70 domainLookupEndDate];
  if (v231)
  {
    v232 = v231;
    sub_1D8CD7644();

    v233 = 0;
  }

  else
  {
    v233 = 1;
  }

  v234 = OUTLINED_FUNCTION_26_0(v231, v233);
  OUTLINED_FUNCTION_37_0(v234, v235, &qword_1ECAACA18, &qword_1D8CDC000);
  OUTLINED_FUNCTION_1_2(v230);
  if (v76)
  {
    sub_1D8C9B71C(v230, &qword_1ECAACA18, &qword_1D8CDC000);
    OUTLINED_FUNCTION_34_0(0xD00000000000001ELL);
    if (v236)
    {
      OUTLINED_FUNCTION_33_0();
      OUTLINED_FUNCTION_7_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA20, &qword_1D8CD9E58);
      OUTLINED_FUNCTION_2_2();
      sub_1D8CD8084();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_19_0();
      sub_1D8CD8094();
    }

    else
    {
      OUTLINED_FUNCTION_15_0();
    }

    v244 = v302;
    sub_1D8C9B71C(&v322, &qword_1ECAAC680, &qword_1D8CD8FB0);
  }

  else
  {
    sub_1D8CD75A4();
    v323 = MEMORY[0x1E69E63B0];
    OUTLINED_FUNCTION_0_3(v237);
    v238 = OUTLINED_FUNCTION_23_0();
    v239(v238);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_17_0();
    sub_1D8CB4A34(v240, v241, v242, v243);
    v190 = v320;
    v244 = v302;
  }

  v245 = [v70 fetchStartDate];
  if (v245)
  {
    v246 = v245;
    sub_1D8CD7644();

    v247 = 0;
  }

  else
  {
    v247 = 1;
  }

  v248 = OUTLINED_FUNCTION_26_0(v245, v247);
  OUTLINED_FUNCTION_37_0(v248, v249, &qword_1ECAACA18, &qword_1D8CDC000);
  OUTLINED_FUNCTION_1_2(v244);
  if (v76)
  {
    sub_1D8C9B71C(v244, &qword_1ECAACA18, &qword_1D8CDC000);
    v250 = OUTLINED_FUNCTION_28_0();
    sub_1D8C9785C(v250, v251);
    if (v252)
    {
      OUTLINED_FUNCTION_33_0();
      OUTLINED_FUNCTION_7_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA20, &qword_1D8CD9E58);
      OUTLINED_FUNCTION_2_2();
      sub_1D8CD8084();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_19_0();
      sub_1D8CD8094();
    }

    else
    {
      OUTLINED_FUNCTION_15_0();
    }

    v259 = v303;
    sub_1D8C9B71C(&v322, &qword_1ECAAC680, &qword_1D8CD8FB0);
  }

  else
  {
    sub_1D8CD75A4();
    v323 = MEMORY[0x1E69E63B0];
    OUTLINED_FUNCTION_0_3(v253);
    v254 = OUTLINED_FUNCTION_23_0();
    v255(v254);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_17_0();
    sub_1D8CB4A34(v256, 0xD000000000000019, v257, v258);
    v190 = v320;
    v259 = v303;
  }

  v260 = [v70 secureConnectionStartDate];
  if (v260)
  {
    v261 = v260;
    sub_1D8CD7644();

    v262 = 0;
  }

  else
  {
    v262 = 1;
  }

  OUTLINED_FUNCTION_27_0(v259, v262);
  sub_1D8CB4E28(v259, v64, &qword_1ECAACA18, &qword_1D8CDC000);
  OUTLINED_FUNCTION_1_2(v64);
  if (v76)
  {
    sub_1D8C9B71C(v64, &qword_1ECAACA18, &qword_1D8CDC000);
    OUTLINED_FUNCTION_34_0(0xD000000000000024);
    if (v263)
    {
      OUTLINED_FUNCTION_33_0();
      OUTLINED_FUNCTION_7_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA20, &qword_1D8CD9E58);
      OUTLINED_FUNCTION_2_2();
      sub_1D8CD8084();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_19_0();
      sub_1D8CD8094();
    }

    else
    {
      OUTLINED_FUNCTION_15_0();
    }

    sub_1D8C9B71C(&v322, &qword_1ECAAC680, &qword_1D8CD8FB0);
  }

  else
  {
    sub_1D8CD75A4();
    v323 = MEMORY[0x1E69E63B0];
    OUTLINED_FUNCTION_0_3(v264);
    (*(v265 + 8))(v64, v56);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_17_0();
    sub_1D8CB4A34(v266, v267, v268, v269);
    v190 = v320;
  }

  v270 = sub_1D8CB4E8C(v70, &selRef_networkProtocolName);
  if (v271)
  {
    v323 = MEMORY[0x1E69E6158];
    *&v322 = v270;
    *(&v322 + 1) = v271;
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_17_0();
    sub_1D8CB4A34(v272, v273, v274, v275);
    v190 = v320;
  }

  else
  {
    OUTLINED_FUNCTION_34_0(0xD000000000000022);
    if (v276)
    {
      OUTLINED_FUNCTION_33_0();
      OUTLINED_FUNCTION_7_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA20, &qword_1D8CD9E58);
      OUTLINED_FUNCTION_2_2();
      sub_1D8CD8084();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_19_0();
      sub_1D8CD8094();
    }

    else
    {
      OUTLINED_FUNCTION_15_0();
    }

    sub_1D8C9B71C(&v322, &qword_1ECAAC680, &qword_1D8CD8FB0);
  }

  v277 = sub_1D8CB4E8C(v70, &selRef_remoteAddress);
  if (v278)
  {
    v279 = v277;
    v280 = v278;
    v281 = sub_1D8CD7E84();
    if (v282)
    {
      v283 = 0;
      v284 = 0xE000000000000000;
    }

    else
    {
      *&v322 = 58;
      *(&v322 + 1) = 0xE100000000000000;
      v321 = v281;
      v285 = sub_1D8CD8124();
      MEMORY[0x1DA726A90](v285);

      v284 = *(&v322 + 1);
      v283 = v322;
    }

    *&v322 = v279;
    *(&v322 + 1) = v280;
    MEMORY[0x1DA726A90](v283, v284);

    v286 = v296;
    sub_1D8CD7B44();
    v287 = sub_1D8CD7B14();
    v289 = v288;

    (*(v297 + 8))(v286, v298);
    v323 = MEMORY[0x1E6969080];
    if (v289 >> 60 == 15)
    {
      v290 = 0;
    }

    else
    {
      v290 = v287;
    }

    v291 = 0xC000000000000000;
    if (v289 >> 60 != 15)
    {
      v291 = v289;
    }

    *&v322 = v290;
    *(&v322 + 1) = v291;
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_17_0();
    sub_1D8CB4A34(v292, v293, v294, v295);
    return v320;
  }

  return v190;
}

unint64_t sub_1D8CB42BC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC848, &unk_1D8CD9690);
    v2 = sub_1D8CD80C4();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (1)
  {
    if (!v5)
    {
      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v9 >= v6)
        {

          return v2;
        }

        v5 = *(a1 + 64 + 8 * v9);
        ++v8;
        if (v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_1D8CB4DCC(*(a1 + 48) + 40 * v10, __src);
    sub_1D8C9D24C(*(a1 + 56) + 32 * v10, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_1D8CB4DCC(__dst, v19);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    sub_1D8C9D24C(&__dst[40], v20);
    sub_1D8C9B71C(__dst, &qword_1ECAACA08, &qword_1D8CD9E48);
    v21 = v18;
    sub_1D8CAD7DC(v20, v22);
    v11 = v21;
    sub_1D8CAD7DC(v22, v23);
    sub_1D8CAD7DC(v23, &v21);
    result = sub_1D8C9785C(v11, *(&v11 + 1));
    v12 = result;
    if (v13)
    {
      *(v2[6] + 16 * result) = v11;

      v14 = (v2[7] + 32 * v12);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      result = sub_1D8CAD7DC(&v21, v14);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v2[6] + 16 * result) = v11;
      result = sub_1D8CAD7DC(&v21, (v2[7] + 32 * result));
      v15 = v2[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_23;
      }

      v2[2] = v17;
      v8 = v9;
    }
  }

  sub_1D8C9B71C(__dst, &qword_1ECAACA08, &qword_1D8CD9E48);

  return 0;
}

void sub_1D8CB4574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_24_0(a1, a2, a3);
  OUTLINED_FUNCTION_5_0();
  if (v9)
  {
    __break(1u);
LABEL_14:
    sub_1D8CD81D4();
    __break(1u);
    return;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA28, &qword_1D8CD9E60);
  OUTLINED_FUNCTION_30_0();
  if (sub_1D8CD8084())
  {
    sub_1D8C9785C(v5, v3);
    OUTLINED_FUNCTION_29_0();
    if (!v13)
    {
      goto LABEL_14;
    }

    v10 = v12;
  }

  v14 = *v6;
  if (v11)
  {
    *(v14[7] + 8 * v10) = v4;
    OUTLINED_FUNCTION_39_0();
  }

  else
  {
    sub_1D8C979A8(v10, v5, v3, v4, v14);
    OUTLINED_FUNCTION_39_0();
  }
}

uint64_t sub_1D8CB466C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D8C9785C(a2, a3);
  OUTLINED_FUNCTION_5_0();
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA38, &unk_1D8CDA960);
  OUTLINED_FUNCTION_30_0();
  if (sub_1D8CD8084())
  {
    v12 = sub_1D8C9785C(a2, a3);
    if ((v11 & 1) == (v13 & 1))
    {
      v10 = v12;
      goto LABEL_5;
    }

LABEL_13:
    result = sub_1D8CD81D4();
    __break(1u);
    return result;
  }

LABEL_5:
  if (v11)
  {
    sub_1D8CD7324();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_39_0();

    __asm { BRAA            X3, X16 }
  }

  sub_1D8CB4B7C(v10, a2, a3, a1, *v3);
  OUTLINED_FUNCTION_39_0();
}

uint64_t sub_1D8CB47C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_1D8C9785C(a3, a4);
  OUTLINED_FUNCTION_5_0();
  if (v12)
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = v10;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA30, &qword_1D8CD9E68);
  if ((sub_1D8CD8084() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = sub_1D8C9785C(a3, a4);
  if ((v14 & 1) != (v16 & 1))
  {
LABEL_13:
    result = sub_1D8CD81D4();
    __break(1u);
    return result;
  }

  v13 = v15;
LABEL_5:
  v17 = *v5;
  if (v14)
  {
    v18 = (v17[7] + 16 * v13);
    *v18 = a1;
    v18[1] = a2;
  }

  else
  {
    sub_1D8CB4C2C(v13, a3, a4, a1, a2, v17);
  }
}

_OWORD *sub_1D8CB4908(_OWORD *a1, uint64_t a2, char a3)
{
  sub_1D8CC0724(a2);
  OUTLINED_FUNCTION_5_0();
  if (v8)
  {
    __break(1u);
LABEL_12:
    result = sub_1D8CD81D4();
    __break(1u);
    return result;
  }

  v9 = v6;
  v10 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA40, &unk_1D8CD9E70);
  if (sub_1D8CD8084())
  {
    sub_1D8CC0724(a2);
    OUTLINED_FUNCTION_29_0();
    if (!v12)
    {
      goto LABEL_12;
    }

    v9 = v11;
  }

  v13 = *v3;
  if (v10)
  {
    v14 = (v13[7] + 32 * v9);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);

    return sub_1D8CAD7DC(a1, v14);
  }

  else
  {
    sub_1D8CB4DCC(a2, v16);
    return sub_1D8CB4C78(v9, v16, a1, v13);
  }
}

_OWORD *sub_1D8CB4A34(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_1D8C9785C(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA20, &qword_1D8CD9E58);
  if ((sub_1D8CD8084() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_1D8C9785C(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_1D8CD81D4();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    v17 = (v16[7] + 32 * v12);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);

    return sub_1D8CAD7DC(a1, v17);
  }

  else
  {
    sub_1D8CB4CF4(v12, a2, a3, a1, v16);
  }
}

uint64_t sub_1D8CB4B7C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_1D8CD7324();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_1D8CB4C2C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

_OWORD *sub_1D8CB4C78(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1D8CAD7DC(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

_OWORD *sub_1D8CB4CF4(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1D8CAD7DC(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1D8CB4D60(void *a1)
{
  v1 = [a1 _timingData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D8CD7A64();

  return v3;
}

uint64_t sub_1D8CB4E28(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_25();
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1D8CB4E8C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1D8CD7B04();

  return v4;
}

double OUTLINED_FUNCTION_15_0()
{
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_21_0()
{
}

uint64_t OUTLINED_FUNCTION_27_0(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

unint64_t OUTLINED_FUNCTION_34_0(uint64_t a1)
{

  return sub_1D8C9785C(a1, v1 | 0x8000000000000000);
}

uint64_t sub_1D8CB4FB8(char a1, uint64_t a2)
{
  v3 = 0xD00000000000001ALL;
  v4 = ".SearchAnalyticsWorker";
  v5 = ".SearchAnalyticsWorker";
  switch(a1)
  {
    case 1:
      v5 = "SpotlightFeatureExtraction";
      goto LABEL_5;
    case 2:
      v5 = "SpotlightFeatureReport";
      v3 = 0xD000000000000015;
      break;
    case 3:
      v5 = "Spotlight.SurveyDaily";
LABEL_5:
      v3 = 0xD000000000000016;
      break;
    default:
      break;
  }

  v6 = 0xD00000000000001ALL;
  switch(a2)
  {
    case 1:
      v4 = "SpotlightFeatureExtraction";
      goto LABEL_10;
    case 2:
      v4 = "SpotlightFeatureReport";
      v6 = 0xD000000000000015;
      break;
    case 3:
      v4 = "Spotlight.SurveyDaily";
LABEL_10:
      v6 = 0xD000000000000016;
      break;
    default:
      break;
  }

  if (v3 == v6 && (v5 | 0x8000000000000000) == (v4 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_15_1(v3, a2, v6);
  }

  return v8 & 1;
}

uint64_t sub_1D8CB5114(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xD000000000000014;
  v3 = "com.apple.photos";
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0xD000000000000017;
    }

    else
    {
      v5 = 0xD000000000000016;
    }

    if (v4 == 1)
    {
      v6 = "coreparsec_feedbacks";
    }

    else
    {
      v6 = "coreparsec_aggregations";
    }
  }

  else
  {
    v5 = 0xD000000000000014;
    v6 = "com.apple.photos";
  }

  if (a2)
  {
    v3 = "coreparsec_feedbacks";
    v2 = a2 == 1 ? 0xD000000000000017 : 0xD000000000000016;
    if (a2 != 1)
    {
      v3 = "coreparsec_aggregations";
    }
  }

  if (v5 == v2 && (v6 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_15_1(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1D8CB5220(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  v6 = v5;
  v7 = a3();
  if (v4 == v7 && v6 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_15_1(v4, v8, v7);
  }

  return v10 & 1;
}

void sub_1D8CB52B4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2[3] + 16);
  os_unfair_lock_lock(v5);
  v6 = v2[4];
  v7 = v2[5];
  v2[4] = a1;
  v2[5] = a2;
  sub_1D8CAE278(v6, v7);

  os_unfair_lock_unlock(v5);
}

uint64_t sub_1D8CB5318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC790, &qword_1D8CD9550);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1D8C9B12C(a3, v25 - v10, &unk_1ECAAC790, &qword_1D8CD9550);
  v12 = sub_1D8CD7D64();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1D8C9B71C(v11, &unk_1ECAAC790, &qword_1D8CD9550);
  }

  else
  {
    sub_1D8CD7D54();
    OUTLINED_FUNCTION_25();
    (*(v14 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1D8CD7D14();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1D8CD7B94() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1D8C9B71C(a3, &unk_1ECAAC790, &qword_1D8CD9550);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D8C9B71C(a3, &unk_1ECAAC790, &qword_1D8CD9550);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void *sub_1D8CB55F8()
{
  v0[2] = 0;
  type metadata accessor for Locker();
  v1 = swift_allocObject();
  v2 = swift_slowAlloc();
  *(v1 + 16) = v2;
  *v2 = 0;
  v0[4] = 0;
  v0[5] = 0;
  v0[3] = v1;
  return v0;
}

uint64_t sub_1D8CB5650()
{
  result = sub_1D8CD7AD4();
  qword_1ECAACA50 = result;
  return result;
}

id static NSNotificationName.PegasusConfigUpdate.getter()
{
  if (qword_1ECAAC608 != -1)
  {
    OUTLINED_FUNCTION_1_3(&qword_1ECAAC608);
  }

  swift_beginAccess();
  v0 = qword_1ECAACA50;

  return v0;
}

void static NSNotificationName.PegasusConfigUpdate.setter(uint64_t a1)
{
  if (qword_1ECAAC608 != -1)
  {
    OUTLINED_FUNCTION_1_3(&qword_1ECAAC608);
  }

  swift_beginAccess();
  v2 = qword_1ECAACA50;
  qword_1ECAACA50 = a1;
}

uint64_t (*static NSNotificationName.PegasusConfigUpdate.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1ECAAC608 != -1)
  {
    OUTLINED_FUNCTION_1_3(&qword_1ECAAC608);
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t ConfigurationManager.__allocating_init(defaults:context:configFactory:urlDataSource:delegate:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_8_1();
  v12 = swift_allocObject();
  ConfigurationManager.init(defaults:context:configFactory:urlDataSource:delegate:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

uint64_t ConfigurationManager.init(defaults:context:configFactory:urlDataSource:delegate:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  sub_1D8C9B12C(a2, &v42, &qword_1ECAACA58, &qword_1D8CD9E80);
  if (v43)
  {
    sub_1D8C9B778(&v42, v44);
  }

  else
  {
    v44[3] = &type metadata for ConfigContext;
    v44[4] = &off_1F54546B0;
  }

  if (qword_1ED9C40D0 != -1)
  {
    OUTLINED_FUNCTION_2_3(&qword_1ED9C40D0);
  }

  v38 = xmmword_1ED9C40D8;
  v39 = unk_1ED9C40E8;
  v40 = xmmword_1ED9C40F8;
  v41 = unk_1ED9C4108;
  if (a3)
  {
    sub_1D8C969AC(&v38, v37);
    v11 = a3;
  }

  else
  {
    v12 = objc_allocWithZone(type metadata accessor for ConfigFactoryInternal());
    sub_1D8C969AC(&v38, v37);
    v11 = [v12 init];
  }

  sub_1D8CB700C(v44, v37);
  type metadata accessor for PARNetworkRequestFactory();
  memset(v35, 0, sizeof(v35));
  v36 = 0;
  swift_allocObject();
  v29 = a1;
  swift_unknownObjectRetain();
  v13 = sub_1D8CD5890(a1, v35);
  sub_1D8C9B12C(a4, &v33, &qword_1ECAACA60, &qword_1D8CD9E88);
  v31 = a4;
  if (v34)
  {
    sub_1D8C9B778(&v33, v35);
  }

  else
  {
    sub_1D8CB6FC8();
    sub_1D8CB5CF4(v35);
    if (v34)
    {
      sub_1D8C9B71C(&v33, &qword_1ECAACA60, &qword_1D8CD9E88);
    }
  }

  v14 = [objc_opt_self() defaultManager];
  type metadata accessor for PegasusConfigController();
  v15 = swift_allocObject();
  v16 = type metadata accessor for ActivityMonitor();
  OUTLINED_FUNCTION_16_1(v16);
  *(v15 + 16) = sub_1D8CC2F5C();
  type metadata accessor for TaskCoordinator();
  OUTLINED_FUNCTION_60();
  swift_allocObject();
  *(v15 + 200) = sub_1D8CBEC84();
  type metadata accessor for ConfigUsageReporter();
  OUTLINED_FUNCTION_60();
  v17 = swift_allocObject();
  v18 = type metadata accessor for ConfigUsageReporter.State();
  OUTLINED_FUNCTION_16_1(v18);
  sub_1D8CA7034();
  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA70, &unk_1D8CD9E90);
  v21 = swift_allocObject();
  *(v21 + 24) = 0;
  *(v21 + 16) = v20;
  *(v17 + 16) = v21;
  *(v15 + 216) = v17;
  *(v15 + 232) = 0;
  swift_unknownObjectWeakInit();
  sub_1D8CB700C(v37, v15 + 80);
  *(v15 + 24) = v13;
  *(v15 + 32) = &off_1F5453C38;
  sub_1D8CB700C(v35, v15 + 40);
  *(v15 + 120) = v14;
  *(v15 + 128) = v11;
  v22 = v39;
  *(v15 + 136) = v38;
  *(v15 + 152) = v22;
  v23 = v41;
  *(v15 + 168) = v40;
  *(v15 + 184) = v23;
  *(v15 + 232) = a6;
  swift_unknownObjectWeakAssign();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA78, &qword_1D8CD9EA0);
  OUTLINED_FUNCTION_16_1(v24);
  v25 = v14;
  swift_unknownObjectRetain();
  *(v15 + 240) = sub_1D8CB55F8();
  type metadata accessor for ConfigTaskController();
  swift_allocObject();
  v26 = swift_retain_n();
  *(v15 + 208) = sub_1D8CA5B6C(v26);
  OUTLINED_FUNCTION_60();
  v27 = swift_allocObject();
  swift_weakInit();
  sub_1D8CB52B4(sub_1D8CB706C, v27);

  sub_1D8CA0CD4();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_1D8C9B71C(v31, &qword_1ECAACA60, &qword_1D8CD9E88);
  sub_1D8C9B71C(a2, &qword_1ECAACA58, &qword_1D8CD9E80);
  __swift_destroy_boxed_opaque_existential_0Tm(v35);
  __swift_destroy_boxed_opaque_existential_0Tm(v37);
  __swift_destroy_boxed_opaque_existential_0Tm(v44);
  *(v7 + 16) = v15;
  *(v7 + 24) = &off_1F54549D0;
  return v7;
}

id static ConfigurationManager.defaultConfigFactory.getter()
{
  v0 = objc_allocWithZone(type metadata accessor for ConfigFactoryInternal());

  return [v0 init];
}

void sub_1D8CB5CF4(void *a1@<X8>)
{
  v2 = [objc_opt_self() ephemeralSessionConfiguration];
  [v2 setWaitsForConnectivity_];
  [v2 set:1 disableAPWakeOnIdleConnections:?];
  if (qword_1ECAAC4B8 != -1)
  {
    swift_once();
  }

  if ((byte_1ED9C5648 & 1) == 0)
  {
    v3 = sub_1D8CD7B04();
    sub_1D8CB77D0(v3, v4, v2);
  }

  v5 = [objc_opt_self() sessionWithConfiguration_];
  a1[3] = sub_1D8CB6FC8();
  a1[4] = &protocol witness table for NSURLSession;

  *a1 = v5;
}

uint64_t ConfigurationManager.__allocating_init(defaults:context:configFactory:urlDataSource:authTokenProvider:delegate:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_8_1();
  v14 = swift_allocObject();
  ConfigurationManager.init(defaults:context:configFactory:urlDataSource:authTokenProvider:delegate:)(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

uint64_t ConfigurationManager.init(defaults:context:configFactory:urlDataSource:authTokenProvider:delegate:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  sub_1D8C9B12C(a2, &v43, &qword_1ECAACA58, &qword_1D8CD9E80);
  if (v44)
  {
    sub_1D8C9B778(&v43, v45);
  }

  else
  {
    v45[3] = &type metadata for ConfigContext;
    v45[4] = &off_1F54546B0;
  }

  if (qword_1ED9C40D0 != -1)
  {
    OUTLINED_FUNCTION_2_3(&qword_1ED9C40D0);
  }

  v39 = xmmword_1ED9C40D8;
  v40 = unk_1ED9C40E8;
  v41 = xmmword_1ED9C40F8;
  v42 = unk_1ED9C4108;
  if (a3)
  {
    sub_1D8C969AC(&v39, v38);
    v13 = a3;
  }

  else
  {
    v14 = objc_allocWithZone(type metadata accessor for ConfigFactoryInternal());
    sub_1D8C969AC(&v39, v38);
    v13 = [v14 init];
  }

  sub_1D8CB700C(v45, v38);
  sub_1D8C9B12C(a5, v37, &qword_1ECAACA80, &qword_1D8CD9EA8);
  type metadata accessor for PARNetworkRequestFactory();
  swift_allocObject();
  v31 = a1;
  swift_unknownObjectRetain();
  v15 = sub_1D8CD5890(a1, v37);
  sub_1D8C9B12C(a4, &v35, &qword_1ECAACA60, &qword_1D8CD9E88);
  v33 = a4;
  if (v36)
  {
    sub_1D8C9B778(&v35, v37);
  }

  else
  {
    sub_1D8CB6FC8();
    sub_1D8CB5CF4(v37);
    if (v36)
    {
      sub_1D8C9B71C(&v35, &qword_1ECAACA60, &qword_1D8CD9E88);
    }
  }

  v16 = [objc_opt_self() defaultManager];
  type metadata accessor for PegasusConfigController();
  v17 = swift_allocObject();
  v18 = type metadata accessor for ActivityMonitor();
  OUTLINED_FUNCTION_16_1(v18);
  *(v17 + 16) = sub_1D8CC2F5C();
  type metadata accessor for TaskCoordinator();
  OUTLINED_FUNCTION_60();
  swift_allocObject();
  *(v17 + 200) = sub_1D8CBEC84();
  type metadata accessor for ConfigUsageReporter();
  OUTLINED_FUNCTION_60();
  v19 = swift_allocObject();
  v20 = type metadata accessor for ConfigUsageReporter.State();
  OUTLINED_FUNCTION_16_1(v20);
  sub_1D8CA7034();
  v22 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA70, &unk_1D8CD9E90);
  v23 = swift_allocObject();
  *(v23 + 24) = 0;
  *(v23 + 16) = v22;
  *(v19 + 16) = v23;
  *(v17 + 216) = v19;
  *(v17 + 232) = 0;
  swift_unknownObjectWeakInit();
  sub_1D8CB700C(v38, v17 + 80);
  *(v17 + 24) = v15;
  *(v17 + 32) = &off_1F5453C38;
  sub_1D8CB700C(v37, v17 + 40);
  *(v17 + 120) = v16;
  *(v17 + 128) = v13;
  v24 = v40;
  *(v17 + 136) = v39;
  *(v17 + 152) = v24;
  v25 = v42;
  *(v17 + 168) = v41;
  *(v17 + 184) = v25;
  *(v17 + 232) = a7;
  swift_unknownObjectWeakAssign();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA78, &qword_1D8CD9EA0);
  OUTLINED_FUNCTION_16_1(v26);
  v27 = v16;
  swift_unknownObjectRetain();
  *(v17 + 240) = sub_1D8CB55F8();
  type metadata accessor for ConfigTaskController();
  swift_allocObject();
  v28 = swift_retain_n();
  *(v17 + 208) = sub_1D8CA5B6C(v28);
  OUTLINED_FUNCTION_60();
  v29 = swift_allocObject();
  swift_weakInit();
  sub_1D8CB52B4(sub_1D8CB7834, v29);

  sub_1D8CA0CD4();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_1D8C9B71C(a5, &qword_1ECAACA80, &qword_1D8CD9EA8);
  sub_1D8C9B71C(v33, &qword_1ECAACA60, &qword_1D8CD9E88);
  sub_1D8C9B71C(a2, &qword_1ECAACA58, &qword_1D8CD9E80);
  __swift_destroy_boxed_opaque_existential_0Tm(v37);
  __swift_destroy_boxed_opaque_existential_0Tm(v38);
  __swift_destroy_boxed_opaque_existential_0Tm(v45);
  *(v8 + 16) = v17;
  *(v8 + 24) = &off_1F54549D0;
  return v8;
}

id ConfigurationManager.configuration(for:forceFetch:completion:)(unint64_t a1, char a2, void (*a3)(void *, uint64_t), uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC790, &qword_1D8CD9550);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v23 - v10;
  sub_1D8C96A08(a1, &v27);
  v12 = v28;
  if (v28)
  {
    v13 = v27;
    v24 = v29;
    v25 = v30;
    v26 = v31;
    if (v27)
    {
      v14 = sub_1D8CD7D64();
      v15 = a2 & 1;
      v23 = *(v4 + 16);
      __swift_storeEnumTagSinglePayload(v11, 1, 1, v14);
      v16 = swift_allocObject();
      *(v16 + 16) = 0;
      *(v16 + 24) = 0;
      *(v16 + 32) = v15;
      *(v16 + 40) = v23;
      *(v16 + 56) = v13;
      *(v16 + 72) = v12;
      v17 = v25;
      *(v16 + 80) = v24;
      *(v16 + 96) = v17;
      *(v16 + 112) = v26;
      *(v16 + 120) = a3;
      *(v16 + 128) = a4;
      swift_unknownObjectRetain();
      sub_1D8C944C4(a3, a4);
      sub_1D8CB5318(0, 0, v11, &unk_1D8CD9EB8, v16);

      return sub_1D8CB6A88(a1);
    }

    sub_1D8C9B71C(&v27, &qword_1ECAACA88, &qword_1D8CD9EC0);
  }

  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC7E0, &qword_1D8CD95D0);
    inited = swift_initStackObject();
    v20 = OUTLINED_FUNCTION_14_0(inited, xmmword_1D8CD8F40);
    OUTLINED_FUNCTION_4_2(v20, MEMORY[0x1E69E6158], v21);
    sub_1D8CD7A84();
    v22 = OUTLINED_FUNCTION_17_1(objc_allocWithZone(MEMORY[0x1E696ABC0]), 0x80000001D8CDDBE0);
    a3(v22, 1);
  }

  return 0;
}

uint64_t sub_1D8CB6540(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, _OWORD *a7, uint64_t a8)
{
  *(v8 + 192) = a8;
  *(v8 + 200) = v17;
  if (a4)
  {
    v9 = a7[1];
    *(v8 + 80) = *a7;
    *(v8 + 96) = v9;
    v10 = a7[3];
    *(v8 + 112) = a7[2];
    *(v8 + 128) = v10;
    v11 = swift_task_alloc();
    *(v8 + 208) = v11;
    *v11 = v8;
    v11[1] = sub_1D8CB6678;

    return sub_1D8CA15CC(v8 + 80);
  }

  else
  {
    v13 = a7[1];
    *(v8 + 16) = *a7;
    *(v8 + 32) = v13;
    v14 = a7[3];
    *(v8 + 48) = a7[2];
    *(v8 + 64) = v14;
    v15 = swift_task_alloc();
    *(v8 + 224) = v15;
    *v15 = v8;
    v15[1] = sub_1D8CB6880;

    return sub_1D8C96AE4(v8 + 16);
  }
}

uint64_t sub_1D8CB6678()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_12();
  *v3 = v2;
  v2[18] = v1;
  v2[19] = v4;
  v2[20] = v0;
  v5 = *v1;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  *(v7 + 216) = v0;

  if (v0)
  {
    v8 = sub_1D8CB67F4;
  }

  else
  {
    v8 = sub_1D8CB6780;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1D8CB6780()
{
  OUTLINED_FUNCTION_10();
  if (*(v0 + 192))
  {
    v1 = OUTLINED_FUNCTION_20_1();
    v2(v1, 0);
  }

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t sub_1D8CB67F4()
{
  OUTLINED_FUNCTION_19();
  v1 = *(v0 + 216);
  v2 = *(v0 + 192);
  if (v2)
  {
    v3 = OUTLINED_FUNCTION_20_1();
    v2(v1, 1);
  }

  OUTLINED_FUNCTION_13();

  return v4();
}

uint64_t sub_1D8CB6880()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_12();
  *v3 = v2;
  v2[21] = v1;
  v2[22] = v4;
  v2[23] = v0;
  v5 = *v1;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  *(v7 + 232) = v0;

  if (v0)
  {
    v8 = sub_1D8CB69FC;
  }

  else
  {
    v8 = sub_1D8CB6988;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1D8CB6988()
{
  OUTLINED_FUNCTION_10();
  if (*(v0 + 192))
  {
    v1 = OUTLINED_FUNCTION_20_1();
    v2(v1, 0);
  }

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t sub_1D8CB69FC()
{
  OUTLINED_FUNCTION_19();
  v1 = *(v0 + 232);
  v2 = *(v0 + 192);
  if (v2)
  {
    v3 = OUTLINED_FUNCTION_20_1();
    v2(v1, 1);
  }

  OUTLINED_FUNCTION_13();

  return v4();
}

id sub_1D8CB6A88(unint64_t a1)
{
  v3 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v5 = (*(*(v3 + 8) + 8))(ObjectType);
  if (v5)
  {
    sub_1D8C96A08(a1, &v9);
    if (v10)
    {
      if (v9)
      {
        v6 = sub_1D8CD7AD4();
        sub_1D8C9B71C(&v9, &qword_1ECAACA88, &qword_1D8CD9EC0);
        v7 = [v5 findConfigForUserAgent_];
        swift_unknownObjectRelease();

        return v7;
      }

      else
      {
        sub_1D8C9B71C(&v9, &qword_1ECAACA88, &qword_1D8CD9EC0);
      }
    }
  }

  return v5;
}

uint64_t sub_1D8CB6B78()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  OUTLINED_FUNCTION_12();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  *(v3 + 312) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D8CB6CC0, 0, 0);
  }

  else
  {
    sub_1D8C9B71C(v3 + 96, &qword_1ECAACA88, &qword_1D8CD9EC0);
    v7 = OUTLINED_FUNCTION_18_1();

    return v8(v7);
  }
}

uint64_t sub_1D8CB6CC0()
{
  OUTLINED_FUNCTION_10();
  sub_1D8C9B71C(v0 + 96, &qword_1ECAACA88, &qword_1D8CD9EC0);
  OUTLINED_FUNCTION_13();

  return v1();
}

uint64_t sub_1D8CB6D2C()
{
  OUTLINED_FUNCTION_10();
  sub_1D8C9B71C(v0 + 96, &qword_1ECAACA88, &qword_1D8CD9EC0);
  OUTLINED_FUNCTION_13();

  return v1();
}

uint64_t ConfigurationManager.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  v0 = OUTLINED_FUNCTION_8_1();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D8CB6E30(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D8CB6ED8;

  return ConfigurationManager.configuration(for:forceFetch:)(a1, a2);
}

uint64_t sub_1D8CB6ED8()
{
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_15();
  v4 = *v1;
  OUTLINED_FUNCTION_1();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

unint64_t sub_1D8CB6FC8()
{
  result = qword_1ECAACA68;
  if (!qword_1ECAACA68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECAACA68);
  }

  return result;
}

uint64_t sub_1D8CB700C(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_25();
  (*v3)(a2);
  return a2;
}

id sub_1D8CB7074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1D8CD7AD4();

  if (a4)
  {
    v8 = sub_1D8CD7A54();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

uint64_t sub_1D8CB7124(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 120);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_12_1(v9);
  *v10 = v11;
  v10[1] = sub_1D8CAD8E0;

  return sub_1D8CB6540(a1, v3, v4, v5, v6, v7, (v1 + 56), v8);
}

uint64_t dispatch thunk of ConfigFetcher.configuration(for:forceFetch:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(a4 + 16) + **(a4 + 16));
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_12_1(v8);
  *v9 = v10;
  v9[1] = sub_1D8CB7374;

  return v12(a1, a2, a3, a4);
}

uint64_t sub_1D8CB7374()
{
  OUTLINED_FUNCTION_10();
  v2 = v1;
  OUTLINED_FUNCTION_15();
  v3 = *v0;
  OUTLINED_FUNCTION_1();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_1D8CB74C4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D8CB75BC;

  return v6(a1);
}

uint64_t sub_1D8CB75BC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15();
  v1 = *v0;
  OUTLINED_FUNCTION_1();
  *v2 = v1;

  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t sub_1D8CB76A0()
{
  OUTLINED_FUNCTION_19();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_1(v1);

  return v4(v3);
}

uint64_t sub_1D8CB7738()
{
  OUTLINED_FUNCTION_19();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_1(v1);

  return v4(v3);
}

void sub_1D8CB77D0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1D8CD7AD4();

  [a3 set:v4 tlsTrustPinningPolicyName:?];
}

uint64_t OUTLINED_FUNCTION_15_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1D8CD8154();
}

id OUTLINED_FUNCTION_17_1(uint64_t a1, uint64_t a2)
{

  return sub_1D8CB7074(0xD000000000000018, a2, 3, v2);
}

uint64_t getEnumTagSinglePayload for ResourceAccessOutcome(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0x83)
  {
    if (a2 + 125 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 125) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 126;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x7E;
  v5 = v6 - 126;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ResourceAccessOutcome(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 125 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 125) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x83)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x82)
  {
    v6 = ((a2 - 131) >> 8) + 1;
    *result = a2 + 125;
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
          *result = a2 + 125;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D8CB79F0(uint64_t a1)
{
  v3 = a1 - 496;
  if (!(!v2 & v1))
  {
    result = 45;
    switch(v3)
    {
      case 0:
        return 15;
      case 1:
        return 16;
      case 2:
        return 17;
      case 3:
        return 18;
      case 4:
        return 19;
      case 5:
        return 20;
      case 6:
        return 21;
      case 7:
        return 22;
      case 8:
        return 23;
      case 9:
        return 24;
      case 10:
        return 25;
      case 11:
        return 26;
      case 12:
        return 27;
      case 13:
        return 28;
      case 14:
        return 29;
      case 15:
        return 30;
      case 16:
        return 31;
      case 17:
        return 32;
      case 18:
        return 33;
      case 19:
        return 34;
      case 20:
        return 35;
      case 21:
      case 22:
      case 23:
      case 24:
      case 25:
      case 26:
      case 27:
      case 28:
      case 29:
      case 30:
      case 31:
      case 32:
      case 33:
      case 34:
      case 35:
      case 36:
      case 37:
      case 38:
      case 39:
      case 40:
      case 41:
      case 42:
      case 43:
      case 44:
      case 45:
      case 46:
      case 47:
      case 48:
      case 49:
      case 50:
      case 51:
      case 52:
      case 53:
      case 63:
      case 64:
      case 65:
      case 66:
      case 67:
      case 68:
      case 69:
      case 70:
      case 71:
      case 72:
      case 73:
      case 74:
      case 75:
      case 76:
      case 77:
      case 78:
      case 82:
      case 83:
        return 126;
      case 54:
        return 36;
      case 55:
        return 37;
      case 56:
        return 38;
      case 57:
        return 39;
      case 58:
        return 40;
      case 59:
        return 41;
      case 60:
        return 42;
      case 61:
        return 43;
      case 62:
        return 44;
      case 79:
        return result;
      case 80:
        return 46;
      case 81:
        return 47;
      case 84:
        return 48;
      case 85:
        return 49;
      case 86:
        return 50;
      case 87:
        return 51;
      default:
        JUMPOUT(0);
    }
  }

  switch(a1)
  {
    case 700:
      return 56;
    case 701:
      return 57;
    case 702:
      return 58;
    case 1101:
      return 78;
    case 1102:
      return 79;
    case 1200:
      return 80;
    case 1420:
      return 105;
    case 1600:
      return 121;
    case 1601:
      return 122;
    case 1700:
      return 123;
    case 1701:
      return 124;
    case 1702:
      return 125;
  }

  return 126;
}

uint64_t sub_1D8CB8010(uint64_t result)
{
  switch(result)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 37:
    case 38:
    case 39:
    case 50:
    case 60:
    case 61:
    case 62:
    case 63:
    case 65:
    case 66:
    case 67:
    case 100:
      return result;
    case 22:
    case 36:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 64:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 88:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
      goto LABEL_9;
    default:
      if ((result - 200) >= 3 && (result - 600) >= 3 && (result - 300) >= 2 && (result - 400) >= 2 && result != 500 && result != 700)
      {
LABEL_9:
        result = 0;
      }

      break;
  }

  return result;
}

uint64_t sub_1D8CB80B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D8CB79F0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D8CB80E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D8CB7FFC(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1D8CB810C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D8CB8010(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1D8CB8150()
{
  result = qword_1ED9C3D18;
  if (!qword_1ED9C3D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9C3D18);
  }

  return result;
}

unint64_t sub_1D8CB81A8()
{
  result = qword_1ECAACA90;
  if (!qword_1ECAACA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAACA90);
  }

  return result;
}

void sub_1D8CB81FC(void (*result)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  while (v7 != v6)
  {
    if (v6 >= v7)
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    v9 = *(sub_1D8CD7324() - 8);
    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_15;
    }

    result(&v17, a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v6);
    if (v3)
    {

      return;
    }

    v11 = v18;
    ++v6;
    if (v18)
    {
      v19 = v17;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D8CC3608();
        v8 = v15;
      }

      v12 = *(v8 + 16);
      v13 = v12 + 1;
      if (v12 >= *(v8 + 24) >> 1)
      {
        sub_1D8CC3608();
        v13 = v12 + 1;
        v8 = v16;
      }

      *(v8 + 16) = v13;
      v14 = v8 + 16 * v12;
      *(v14 + 32) = v19;
      *(v14 + 40) = v11;
      v6 = v10;
    }
  }
}

uint64_t sub_1D8CB837C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACAD0, &qword_1D8CDA958);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - v9;
  v11 = sub_1D8CD7324();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__swift_getEnumTagSinglePayload(a1, 1, v11) == 1)
  {
    sub_1D8CADF40(a1, &qword_1ECAACAD0, &qword_1D8CDA958);
    sub_1D8CB9968(a2, a3, v10);

    return sub_1D8CADF40(v10, &qword_1ECAACAD0, &qword_1D8CDA958);
  }

  else
  {
    (*(v12 + 32))(v14, a1, v11);
    swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_1D8CB466C(v14, a2, a3);

    *v4 = v17;
  }

  return result;
}

uint64_t sub_1D8CB8580(char a1)
{
  sub_1D8CD8254();
  MEMORY[0x1DA7270D0](a1 & 1);
  return sub_1D8CD8284();
}

uint64_t sub_1D8CB85E4(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC20PegasusConfiguration23ParsecURLRequestBuilder_queryItems;
  sub_1D8CD7324();
  *(v1 + v4) = sub_1D8CD7A84();
  v5 = OBJC_IVAR____TtC20PegasusConfiguration23ParsecURLRequestBuilder_httpHeader;
  *(v1 + v5) = sub_1D8CD7A84();
  v6 = OBJC_IVAR____TtC20PegasusConfiguration23ParsecURLRequestBuilder_urlComponents;
  v7 = sub_1D8CD73D4();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v2 + v6, a1, v7);
  v9 = sub_1D8CD7334();
  sub_1D8CB870C(v9);

  (*(v8 + 8))(a1, v7);
  return v2;
}

uint64_t sub_1D8CB870C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 16);
    if (v2)
    {
      v3 = *(sub_1D8CD7324() - 8);
      v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      v5 = *(v3 + 72);
      do
      {
        result = sub_1D8CB9540(v4);
        v4 += v5;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

char *sub_1D8CB87AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC7A8, &unk_1D8CD9590);
  v3 = OUTLINED_FUNCTION_36(v2);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v22 - v4;
  v6 = sub_1D8CD73D4();
  OUTLINED_FUNCTION_3();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_7();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v22 - v14;
  sub_1D8CD7364();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_1D8CADF40(v5, &unk_1ECAAC7A8, &unk_1D8CD9590);
    sub_1D8CB9B58();
    swift_allocError();
    *v16 = 1;
    swift_willThrow();
    sub_1D8CD7554();
    OUTLINED_FUNCTION_8();
    (*(v17 + 8))(a1);
  }

  else
  {
    (*(v8 + 32))(v15, v5, v6);
    v18 = sub_1D8CD7344();
    if (v19)
    {
      v22[4] = v18;
      v22[5] = v19;
      v22[2] = 43;
      v22[3] = 0xE100000000000000;
      v22[0] = 3158565;
      v22[1] = 0xE300000000000000;
      sub_1D8C94EC8();
      sub_1D8CD7F44();
      v23 = v8;

      v8 = v23;
      sub_1D8CD7354();
    }

    (*(v8 + 16))(v12, v15, v6);
    v5 = swift_allocObject();
    sub_1D8CB85E4(v12);
    sub_1D8CD7554();
    OUTLINED_FUNCTION_8();
    (*(v20 + 8))(a1);
    (*(v8 + 8))(v15, v6);
  }

  return v5;
}

uint64_t sub_1D8CB8AC8(uint64_t a1)
{
  v2 = sub_1D8CD72E4();
  OUTLINED_FUNCTION_3();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    return 0;
  }

  v8 = sub_1D8CD72D4();
  MEMORY[0x1EEE9AC00](v8);
  v12[-2] = v7;
  sub_1D8CB81FC(sub_1D8CB9BAC, &v12[-4], a1);
  v12[0] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACAB0, &unk_1D8CDA940);
  sub_1D8CB9BC8();
  v10 = sub_1D8CD7AB4();

  (*(v4 + 8))(v7, v2);
  return v10;
}

uint64_t sub_1D8CB8C60@<X0>(uint64_t *a3@<X8>)
{
  sub_1D8CD7304();
  sub_1D8C94EC8();
  v4 = sub_1D8CD7F54();
  v6 = v5;

  if (v6)
  {
    result = sub_1D8CD7314();
    if (v8)
    {
      v9 = sub_1D8CD7F54();
      v11 = v10;

      if (v11)
      {

        MEMORY[0x1DA726A90](61, 0xE100000000000000);

        MEMORY[0x1DA726A90](v9, v11);
      }
    }
  }

  *a3 = v4;
  a3[1] = v6;
  return result;
}

uint64_t sub_1D8CB8D98@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC668, &qword_1D8CD8FA0);
  v4 = OUTLINED_FUNCTION_36(v3);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v45 - v5;
  v7 = sub_1D8CD7554();
  OUTLINED_FUNCTION_3();
  v52 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_7();
  v46 = v10 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v50 = &v45 - v13;
  v14 = sub_1D8CD73D4();
  OUTLINED_FUNCTION_3();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();

  v51 = sub_1D8CBC544(v20);
  sub_1D8CB9AB0(&v51);
  v47 = v2;
  if (v2)
  {

    __break(1u);
  }

  else
  {

    v21 = v51;
    v22 = *(v16 + 16);
    v48 = v1;
    v22(v19, v1 + OBJC_IVAR____TtC20PegasusConfiguration23ParsecURLRequestBuilder_urlComponents, v14);
    sub_1D8CB8AC8(v21);

    sub_1D8CD7354();
    v23 = v19;
    sub_1D8CD7374();
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
    {
      sub_1D8CADF40(v6, &qword_1ECAAC668, &qword_1D8CD8FA0);
      sub_1D8CB9B58();
      swift_allocError();
      *v24 = 1;
      swift_willThrow();
      return (*(v16 + 8))(v23, v14);
    }

    v25 = v7;
    v26 = v52;
    v27 = *(v52 + 32);
    v28 = v50;
    v45 = v25;
    v27(v50, v6);
    v29 = sub_1D8CD7504();
    if (!v30)
    {
LABEL_15:
      if (qword_1ED9C4150 != -1)
      {
        swift_once();
      }

      v36 = sub_1D8CD7A04();
      __swift_project_value_buffer(v36, qword_1ED9C5668);
      v37 = sub_1D8CD79E4();
      v38 = sub_1D8CD7E24();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_1D8C92000, v37, v38, "Scheme for url is neither http nor https.", v39, 2u);
        MEMORY[0x1DA727900](v39, -1, -1);
      }

      sub_1D8CB9B58();
      swift_allocError();
      *v40 = 0;
      swift_willThrow();
      (*(v26 + 8))(v28, v45);
      return (*(v16 + 8))(v23, v14);
    }

    v31 = v29;
    v32 = v30;
    v33 = v29 == 1886680168 && v30 == 0xE400000000000000;
    if (v33 || (sub_1D8CD8154() & 1) != 0 || (v31 == 0x7370747468 ? (v34 = v32 == 0xE500000000000000) : (v34 = 0), v34))
    {
    }

    else
    {
      v35 = sub_1D8CD8154();

      if ((v35 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v42 = v28;
    v43 = v28;
    v44 = v45;
    (*(v26 + 16))(v46, v42, v45);
    sub_1D8CD72A4();
    swift_beginAccess();

    sub_1D8CD7294();
    (*(v26 + 8))(v43, v44);
    return (*(v16 + 8))(v23, v14);
  }

  return result;
}

uint64_t sub_1D8CB92E4(uint64_t a1)
{
  v1 = sub_1D8CD7304();
  v3 = v2;
  if (v1 == sub_1D8CD7304() && v3 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_1D8CD8154();
  }

  return v6 & 1;
}

uint64_t sub_1D8CB937C()
{
  v1 = OBJC_IVAR____TtC20PegasusConfiguration23ParsecURLRequestBuilder_urlComponents;
  sub_1D8CD73D4();
  OUTLINED_FUNCTION_8();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t sub_1D8CB93F4()
{
  sub_1D8CB937C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for ParsecURLRequestBuilder(uint64_t a1)
{
  result = qword_1ED9C40A0;
  if (!qword_1ED9C40A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D8CB94A0(uint64_t a1)
{
  result = sub_1D8CD73D4();
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

uint64_t sub_1D8CB9540(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACAD0, &qword_1D8CDA958);
  v3 = OUTLINED_FUNCTION_36(v2);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v12 - v4;
  v6 = sub_1D8CD7304();
  v8 = v7;
  v9 = sub_1D8CD7324();
  OUTLINED_FUNCTION_8();
  (*(v10 + 16))(v5, a1, v9);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v9);
  swift_beginAccess();
  sub_1D8CB837C(v5, v6, v8);
  return swift_endAccess();
}

uint64_t sub_1D8CB9654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACAD0, &qword_1D8CDA958);
  v8 = OUTLINED_FUNCTION_36(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_7();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - v13;
  v15 = OBJC_IVAR____TtC20PegasusConfiguration23ParsecURLRequestBuilder_queryItems;
  swift_beginAccess();
  v16 = *(v4 + v15);
  if (*(v16 + 16) && (v17 = sub_1D8C9785C(a1, a2), (v18 & 1) != 0))
  {
    v19 = v17;
    v27 = a2;
    v20 = *(v16 + 56);
    v21 = sub_1D8CD7324();
    OUTLINED_FUNCTION_8();
    a2 = v27;
    (*(v22 + 16))(v14, v20 + *(v22 + 72) * v19, v21);
    v23 = v14;
    v24 = 0;
  }

  else
  {
    v21 = sub_1D8CD7324();
    v23 = v14;
    v24 = 1;
  }

  __swift_storeEnumTagSinglePayload(v23, v24, 1, v21);
  swift_endAccess();
  sub_1D8CD7324();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v21);
  result = sub_1D8CADF40(v14, &qword_1ECAACAD0, &qword_1D8CDA958);
  if (EnumTagSinglePayload == 1)
  {

    sub_1D8CD72F4();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v21);
    swift_beginAccess();
    sub_1D8CB837C(v11, a1, a2);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1D8CB9880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR____TtC20PegasusConfiguration23ParsecURLRequestBuilder_httpHeader;
  swift_beginAccess();
  if (!*(*(v4 + v9) + 16) || (sub_1D8C9785C(a1, a2), (v10 & 1) == 0))
  {
    swift_endAccess();
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v4 + v9);
    sub_1D8CB47C0(a3, a4, a1, a2, isUniquelyReferenced_nonNull_native);
    *(v4 + v9) = v13;
  }

  return swift_endAccess();
}

uint64_t sub_1D8CB9968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_1D8C9785C(a1, a2);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA38, &unk_1D8CDA960);
    sub_1D8CD8084();

    v8 = *(v14 + 56);
    v9 = sub_1D8CD7324();
    (*(*(v9 - 8) + 32))(a3, v8 + *(*(v9 - 8) + 72) * v7, v9);
    sub_1D8CD8094();
    *v3 = v14;
    v10 = a3;
    v11 = 0;
    v12 = v9;
  }

  else
  {
    v12 = sub_1D8CD7324();
    v10 = a3;
    v11 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

uint64_t sub_1D8CB9AB0(uint64_t *a1)
{
  v2 = *(sub_1D8CD7324() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D8CBB6F0(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1D8CB9C2C(v6);
  *a1 = v3;
  return result;
}

unint64_t sub_1D8CB9B58()
{
  result = qword_1ECAACAA8;
  if (!qword_1ECAACAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAACAA8);
  }

  return result;
}

unint64_t sub_1D8CB9BC8()
{
  result = qword_1ECAACAB8;
  if (!qword_1ECAACAB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAACAB0, &unk_1D8CDA940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAACAB8);
  }

  return result;
}

uint64_t sub_1D8CB9C2C(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_1D8CD8114();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D8CD7324();
        v6 = sub_1D8CD7D04();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1D8CD7324() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D8CBA07C(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1D8CB9D5C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D8CB9D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1D8CD7324();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v50 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  result = MEMORY[0x1EEE9AC00](v11);
  v16 = &v40 - v15;
  v42 = a2;
  if (a3 != a2)
  {
    v17 = v14;
    v18 = *a4;
    v20 = *(v13 + 16);
    v19 = v13 + 16;
    v21 = *(v19 + 56);
    v51 = (v19 - 8);
    v52 = v20;
    v53 = v19;
    v48 = (v19 + 16);
    v49 = v18;
    v22 = v18 + v21 * (a3 - 1);
    v47 = -v21;
    v23 = a1 - a3;
    v41 = v21;
    v24 = v18 + v21 * a3;
    while (2)
    {
      v45 = v22;
      v46 = a3;
      v43 = v24;
      v44 = v23;
      v25 = v22;
      while (1)
      {
        v26 = v52;
        v52(v16, v24, v8);
        v26(v17, v25, v8);
        v27 = sub_1D8CD7304();
        v28 = v16;
        v29 = v17;
        v31 = v30;
        if (v27 == sub_1D8CD7304() && v31 == v32)
        {
          break;
        }

        v34 = sub_1D8CD8154();

        v35 = *v51;
        (*v51)(v29, v8);
        result = (v35)(v28, v8);
        v17 = v29;
        v16 = v28;
        if (v34)
        {
          if (!v49)
          {
            __break(1u);
            return result;
          }

          v36 = *v48;
          v37 = v50;
          (*v48)(v50, v24, v8);
          swift_arrayInitWithTakeFrontToBack();
          result = (v36)(v25, v37, v8);
          v25 += v47;
          v24 += v47;
          if (!__CFADD__(v23++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      v39 = *v51;
      (*v51)(v29, v8);
      result = (v39)(v28, v8);
      v17 = v29;
      v16 = v28;
LABEL_14:
      a3 = v46 + 1;
      v22 = v45 + v41;
      v23 = v44 - 1;
      v24 = v43 + v41;
      if (v46 + 1 != v42)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1D8CBA07C(unint64_t *a1, uint64_t a2, char **a3, uint64_t a4)
{
  v5 = v4;
  v145 = a1;
  v8 = sub_1D8CD7324();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v150 = &v141 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v163 = &v141 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v141 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v159 = &v141 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v158 = &v141 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v21);
  v26 = &v141 - v22;
  v156 = v23;
  v157 = a3;
  v27 = a3[1];
  if (v27 < 1)
  {
    v29 = MEMORY[0x1E69E7CC0];
LABEL_114:
    v168 = *v145;
    if (!v168)
    {
      goto LABEL_156;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_116;
    }

    goto LABEL_150;
  }

  v164 = v24;
  v141 = a4;
  v28 = 0;
  v168 = v23 + 16;
  v166 = (v23 + 32);
  v167 = (v23 + 8);
  v29 = MEMORY[0x1E69E7CC0];
  v160 = v8;
  v152 = v15;
  v142 = v25;
  v144 = &v141 - v22;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    v147 = v28;
    if (v28 + 1 < v27)
    {
      v162 = v27;
      v143 = v29;
      v32 = v26;
      v33 = *v157;
      v34 = *(v23 + 72);
      v35 = v25;
      v155 = v28 + 1;
      v36 = v28;
      v37 = &v33[v34 * (v28 + 1)];
      v38 = *(v23 + 16);
      v38(v32, v37, v8);
      v39 = &v33[v34 * v36];
      v40 = v144;
      v154 = v38;
      v38(v35, v39, v8);
      LODWORD(v161) = sub_1D8CB92E4(v40);
      if (v5)
      {
        v140 = *v167;
        (*v167)(v35, v8);
        (v140)(v40, v8);
LABEL_124:

        return;
      }

      v146 = 0;
      v29 = v167;
      v41 = *v167;
      (*v167)(v35, v8);
      v153 = v41;
      (v41)(v40, v8);
      v42 = v147 + 2;
      v43 = &v33[v34 * (v147 + 2)];
      v31 = v155;
      v44 = v34;
      v165 = v34;
      v45 = v162;
      while (1)
      {
        v46 = v42;
        if (v31 + 1 >= v45)
        {
          break;
        }

        v47 = v31;
        v48 = v160;
        v5 = v154;
        (v154)(v158, v43, v160);
        v5(v159, v37, v48);
        v49 = sub_1D8CD7304();
        v51 = v50;
        if (v49 == sub_1D8CD7304() && v51 == v52)
        {
          v54 = 0;
        }

        else
        {
          v54 = sub_1D8CD8154();
        }

        v55 = v160;
        v29 = v153;
        (v153)(v159, v160);
        (v29)(v158, v55);
        v44 = v165;
        v43 += v165;
        v37 += v165;
        v31 = v47 + 1;
        v42 = v46 + 1;
        v45 = v162;
        if ((v161 ^ v54))
        {
          goto LABEL_16;
        }
      }

      v31 = v45;
LABEL_16:
      if (v161)
      {
        v30 = v147;
        if (v31 < v147)
        {
          goto LABEL_149;
        }

        v5 = v146;
        if (v147 >= v31)
        {
          v23 = v156;
          v29 = v143;
          v8 = v160;
          v15 = v152;
          goto LABEL_39;
        }

        if (v45 >= v46)
        {
          v56 = v46;
        }

        else
        {
          v56 = v45;
        }

        v57 = v44 * (v56 - 1);
        v58 = v44 * v56;
        v59 = v147;
        v60 = v147 * v44;
        v61 = v31;
        do
        {
          if (v59 != --v61)
          {
            v62 = *v157;
            if (!*v157)
            {
              goto LABEL_154;
            }

            v63 = v160;
            v162 = *v166;
            v162(v150, &v62[v60], v160);
            v64 = v60 < v57 || &v62[v60] >= &v62[v58];
            if (v64)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v60 != v57)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v162(&v62[v57], v150, v63);
            v5 = v146;
            v44 = v165;
          }

          ++v59;
          v57 -= v44;
          v58 -= v44;
          v60 += v44;
        }

        while (v59 < v61);
      }

      else
      {
        v5 = v146;
      }

      v23 = v156;
      v29 = v143;
      v8 = v160;
      v15 = v152;
      v30 = v147;
    }

LABEL_39:
    v65 = v157[1];
    if (v31 < v65)
    {
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_146;
      }

      if (v31 - v30 < v141)
      {
        break;
      }
    }

LABEL_62:
    if (v31 < v30)
    {
      goto LABEL_145;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D8CC36D4();
      v29 = v131;
    }

    v88 = *(v29 + 2);
    v87 = *(v29 + 3);
    v89 = v88 + 1;
    v155 = v31;
    if (v88 >= v87 >> 1)
    {
      sub_1D8CC36D4();
      v29 = v132;
    }

    *(v29 + 2) = v89;
    v90 = v29 + 32;
    v91 = &v29[16 * v88 + 32];
    v92 = v155;
    *v91 = v147;
    *(v91 + 1) = v92;
    v165 = *v145;
    if (!v165)
    {
      goto LABEL_155;
    }

    if (v88)
    {
      while (1)
      {
        v93 = v89 - 1;
        v94 = &v90[16 * v89 - 16];
        v95 = &v29[16 * v89];
        if (v89 >= 4)
        {
          break;
        }

        if (v89 == 3)
        {
          v96 = *(v29 + 4);
          v97 = *(v29 + 5);
          v106 = __OFSUB__(v97, v96);
          v98 = v97 - v96;
          v99 = v106;
LABEL_82:
          if (v99)
          {
            goto LABEL_132;
          }

          v111 = *v95;
          v110 = *(v95 + 1);
          v112 = __OFSUB__(v110, v111);
          v113 = v110 - v111;
          v114 = v112;
          if (v112)
          {
            goto LABEL_135;
          }

          v115 = *(v94 + 1);
          v116 = v115 - *v94;
          if (__OFSUB__(v115, *v94))
          {
            goto LABEL_138;
          }

          if (__OFADD__(v113, v116))
          {
            goto LABEL_140;
          }

          if (v113 + v116 >= v98)
          {
            if (v98 < v116)
            {
              v93 = v89 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        if (v89 < 2)
        {
          goto LABEL_134;
        }

        v118 = *v95;
        v117 = *(v95 + 1);
        v106 = __OFSUB__(v117, v118);
        v113 = v117 - v118;
        v114 = v106;
LABEL_97:
        if (v114)
        {
          goto LABEL_137;
        }

        v120 = *v94;
        v119 = *(v94 + 1);
        v106 = __OFSUB__(v119, v120);
        v121 = v119 - v120;
        if (v106)
        {
          goto LABEL_139;
        }

        if (v121 < v113)
        {
          goto LABEL_111;
        }

LABEL_104:
        if (v93 - 1 >= v89)
        {
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        if (!*v157)
        {
          goto LABEL_152;
        }

        v125 = v29;
        v126 = &v90[16 * v93 - 16];
        v29 = *v126;
        v127 = &v90[16 * v93];
        v128 = *(v127 + 1);
        sub_1D8CBAC40(&(*v157)[*(v156 + 72) * *v126], &(*v157)[*(v156 + 72) * *v127], &(*v157)[*(v156 + 72) * v128], v165);
        if (v5)
        {
          goto LABEL_124;
        }

        if (v128 < v29)
        {
          goto LABEL_127;
        }

        v129 = *(v125 + 2);
        if (v93 > v129)
        {
          goto LABEL_128;
        }

        *v126 = v29;
        *(v126 + 1) = v128;
        if (v93 >= v129)
        {
          goto LABEL_129;
        }

        v89 = v129 - 1;
        memmove(&v90[16 * v93], v127 + 16, 16 * (v129 - 1 - v93));
        v29 = v125;
        *(v125 + 2) = v129 - 1;
        v130 = v129 > 2;
        v15 = v152;
        if (!v130)
        {
          goto LABEL_111;
        }
      }

      v100 = &v90[16 * v89];
      v101 = *(v100 - 8);
      v102 = *(v100 - 7);
      v106 = __OFSUB__(v102, v101);
      v103 = v102 - v101;
      if (v106)
      {
        goto LABEL_130;
      }

      v105 = *(v100 - 6);
      v104 = *(v100 - 5);
      v106 = __OFSUB__(v104, v105);
      v98 = v104 - v105;
      v99 = v106;
      if (v106)
      {
        goto LABEL_131;
      }

      v107 = *(v95 + 1);
      v108 = v107 - *v95;
      if (__OFSUB__(v107, *v95))
      {
        goto LABEL_133;
      }

      v106 = __OFADD__(v98, v108);
      v109 = v98 + v108;
      if (v106)
      {
        goto LABEL_136;
      }

      if (v109 >= v103)
      {
        v123 = *v94;
        v122 = *(v94 + 1);
        v106 = __OFSUB__(v122, v123);
        v124 = v122 - v123;
        if (v106)
        {
          goto LABEL_144;
        }

        if (v98 < v124)
        {
          v93 = v89 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_82;
    }

LABEL_111:
    v23 = v156;
    v27 = v157[1];
    v28 = v155;
    v8 = v160;
    v25 = v142;
    v26 = v144;
    if (v155 >= v27)
    {
      goto LABEL_114;
    }
  }

  v66 = (v30 + v141);
  if (__OFADD__(v30, v141))
  {
    goto LABEL_147;
  }

  if (v66 >= v65)
  {
    v66 = v157[1];
  }

  if (v66 < v30)
  {
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    v29 = sub_1D8CBB248(v29);
LABEL_116:
    v133 = v29 + 16;
    v134 = *(v29 + 2);
    while (v134 >= 2)
    {
      if (!*v157)
      {
        goto LABEL_153;
      }

      v135 = v29;
      v29 += 16 * v134;
      v136 = *v29;
      v137 = &v133[2 * v134];
      v138 = v137[1];
      sub_1D8CBAC40(&(*v157)[*(v156 + 72) * *v29], &(*v157)[*(v156 + 72) * *v137], &(*v157)[*(v156 + 72) * v138], v168);
      if (v5)
      {
        break;
      }

      if (v138 < v136)
      {
        goto LABEL_141;
      }

      if (v134 - 2 >= *v133)
      {
        goto LABEL_142;
      }

      *v29 = v136;
      *(v29 + 1) = v138;
      v139 = *v133 - v134;
      if (*v133 < v134)
      {
        goto LABEL_143;
      }

      v134 = *v133 - 1;
      memmove(v137, v137 + 2, 16 * v139);
      *v133 = v134;
      v29 = v135;
    }

    goto LABEL_124;
  }

  if (v31 == v66)
  {
    goto LABEL_62;
  }

  v143 = v29;
  v146 = v5;
  v67 = *v157;
  v68 = *(v23 + 72);
  v165 = *(v23 + 16);
  v69 = &v67[v68 * (v31 - 1)];
  v161 = -v68;
  v162 = v67;
  v70 = (v30 - v31);
  v148 = v68;
  v149 = v66;
  v71 = &v67[v31 * v68];
  v72 = v164;
LABEL_48:
  v154 = v69;
  v155 = v31;
  v151 = v71;
  v153 = v70;
  while (1)
  {
    v73 = v165;
    (v165)(v72, v71, v8);
    v73(v15, v69, v8);
    v74 = v15;
    v75 = sub_1D8CD7304();
    v76 = v8;
    v78 = v77;
    if (v75 == sub_1D8CD7304() && v78 == v79)
    {

      v86 = *v167;
      (*v167)(v74, v76);
      (v86)(v72, v76);
      v8 = v76;
      v15 = v74;
      goto LABEL_60;
    }

    v81 = v72;
    v82 = sub_1D8CD8154();

    v83 = *v167;
    (*v167)(v74, v76);
    (v83)(v81, v76);
    v8 = v76;
    v15 = v74;
    if ((v82 & 1) == 0)
    {
      v72 = v164;
LABEL_60:
      v31 = v155 + 1;
      v69 = &v154[v148];
      v70 = v153 - 1;
      v71 = &v151[v148];
      if ((v155 + 1) == v149)
      {
        v31 = v149;
        v5 = v146;
        v29 = v143;
        v30 = v147;
        goto LABEL_62;
      }

      goto LABEL_48;
    }

    if (!v162)
    {
      break;
    }

    v84 = *v166;
    v85 = v163;
    (*v166)(v163, v71, v76);
    swift_arrayInitWithTakeFrontToBack();
    v84(v69, v85, v76);
    v69 += v161;
    v71 += v161;
    v64 = __CFADD__(v70++, 1);
    v72 = v164;
    if (v64)
    {
      goto LABEL_60;
    }
  }

  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
}

uint64_t sub_1D8CBAC40(char *a1, unint64_t a2, char *a3, unint64_t a4)
{
  v8 = sub_1D8CD7324();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v71 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v70 = &v64 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v64 - v14;
  result = MEMORY[0x1EEE9AC00](v13);
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return result;
  }

  v21 = a2 - a1 == 0x8000000000000000 && v20 == -1;
  if (v21)
  {
    goto LABEL_72;
  }

  v22 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_73;
  }

  v24 = (a2 - a1) / v20;
  v77 = a1;
  v76 = a4;
  v72 = (v17 + 8);
  v73 = (v17 + 16);
  v25 = v22 / v20;
  if (v24 < v22 / v20)
  {
    v68 = &v64 - v18;
    v70 = v15;
    sub_1D8CC3C4C(a1, (a2 - a1) / v20, a4);
    v71 = (a4 + v24 * v20);
    v75 = v71;
    v26 = a4;
    v27 = v20;
    v67 = v8;
    v69 = a3;
    while (1)
    {
      if (v26 >= v71 || a2 >= a3)
      {
        goto LABEL_70;
      }

      v29 = a1;
      v30 = *v73;
      v31 = v68;
      v32 = a2;
      (*v73)(v68, a2, v8);
      v74 = v26;
      v33 = v70;
      v30();
      v34 = sub_1D8CD7304();
      v36 = v35;
      if (v34 == sub_1D8CD7304() && v36 == v37)
      {

        v44 = *v72;
        (*v72)(v33, v8);
        v44(v31, v8);
      }

      else
      {
        v39 = sub_1D8CD8154();

        v40 = *v72;
        (*v72)(v33, v8);
        v40(v31, v8);
        if (v39)
        {
          v41 = v32;
          a2 = v32 + v27;
          v42 = v29;
          if (v29 < v32 || v29 >= a2)
          {
            v8 = v67;
            swift_arrayInitWithTakeFrontToBack();
            a3 = v69;
          }

          else
          {
            a3 = v69;
            v8 = v67;
            if (v29 != v41)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v26 = v74;
          goto LABEL_40;
        }
      }

      v26 = v74 + v27;
      v42 = v29;
      v45 = v29 < v74 || v29 >= v26;
      a2 = v32;
      if (v45)
      {
        v8 = v67;
        swift_arrayInitWithTakeFrontToBack();
        a3 = v69;
      }

      else
      {
        a3 = v69;
        v8 = v67;
        if (v29 != v74)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v76 = v26;
LABEL_40:
      a1 = (v42 + v27);
      v77 = a1;
    }
  }

  sub_1D8CC3C4C(a2, v22 / v20, a4);
  v74 = a4;
  v46 = a4 + v25 * v20;
  v47 = -v20;
  v48 = v46;
  v68 = -v20;
LABEL_42:
  v69 = a2;
  v67 = a2 + v47;
  v49 = a3;
  v65 = v48;
  while (1)
  {
    if (v46 <= v74)
    {
      v77 = v69;
      v75 = v48;
      goto LABEL_70;
    }

    if (v69 <= a1)
    {
      break;
    }

    v66 = v48;
    v50 = v46 + v47;
    v51 = *v73;
    (*v73)(v70, v46 + v47, v8);
    (v51)(v71, v67, v8);
    v52 = sub_1D8CD7304();
    v54 = v53;
    if (v52 == sub_1D8CD7304() && v54 == v55)
    {
      v57 = 0;
    }

    else
    {
      v57 = sub_1D8CD8154();
    }

    v58 = &v49[v68];
    v59 = *v72;
    (*v72)(v71, v8);
    v59(v70, v8);
    if (v57)
    {
      v61 = v49 < v69 || v58 >= v69;
      a3 = v58;
      if (v61)
      {
        a2 = v67;
        swift_arrayInitWithTakeFrontToBack();
        v48 = v66;
        v47 = v68;
      }

      else
      {
        v63 = v66;
        v62 = v67;
        v48 = v66;
        v21 = v49 == v69;
        a2 = v67;
        v47 = v68;
        if (!v21)
        {
          swift_arrayInitWithTakeBackToFront();
          a2 = v62;
          v48 = v63;
        }
      }

      goto LABEL_42;
    }

    if (v49 < v46 || v58 >= v46)
    {
      swift_arrayInitWithTakeFrontToBack();
      v49 = v58;
      v46 = v50;
      v48 = v50;
      v47 = v68;
    }

    else
    {
      v48 = v50;
      v21 = v46 == v49;
      v49 = v58;
      v46 = v50;
      v47 = v68;
      if (!v21)
      {
        swift_arrayInitWithTakeBackToFront();
        v49 = v58;
        v46 = v50;
        v48 = v50;
      }
    }
  }

  v77 = v69;
  v75 = v65;
LABEL_70:
  sub_1D8CBB25C(&v77, &v76, &v75);
  return 1;
}

uint64_t sub_1D8CBB25C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_1D8CD7324();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1D8CBB33C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACAC0, &qword_1D8CDBA90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}