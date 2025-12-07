uint64_t sub_1C54FD1FC(void *a1, uint64_t a2)
{
  v4 = [a1 description];
  v5 = sub_1C5596574();
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v4);
  return v5;
}

uint64_t sub_1C54FD27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[29] = a6;
  v6[28] = a5;
  v6[27] = a4;
  v6[4] = v6;
  v6[5] = 0;
  v6[6] = 0;
  v6[7] = 0;
  v6[12] = 0;
  v6[13] = 0;
  v6[14] = 0;
  v6[15] = 0;
  v6[20] = 0;
  v6[2] = 0;
  v6[3] = 0;
  v6[25] = 0;
  v6[26] = 0;
  v7 = sub_1C5594C74();
  v6[30] = v7;
  v6[31] = *(v7 - 8);
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  v6[5] = a4;
  v6[6] = a5;
  v6[7] = a6;

  return MEMORY[0x1EEE6DFA0](sub_1C54FD404);
}

uint64_t sub_1C54FD404()
{
  *(v0 + 32) = v0;
  v24 = [objc_opt_self() defaultStore];
  *(v0 + 280) = v24;
  if (v24)
  {
    v1 = *(v23 + 216);
    *(v23 + 96) = v24;
    *(v23 + 288) = (*((*v1 & *MEMORY[0x1E69E7D40]) + 0x58))();
    *(v23 + 296) = v2;
    *(v23 + 304) = v3;
    *(v23 + 312) = v4;
    MEMORY[0x1E69E5928](v4, v2);
    sub_1C55967E4();
    *(v23 + 320) = sub_1C55967D4();
    sub_1C55967A4();

    return MEMORY[0x1EEE6DFA0](sub_1C54FD928);
  }

  else
  {
    v5 = *(v23 + 256);
    v19 = *(v23 + 240);
    v18 = *(v23 + 248);
    v6 = sub_1C54B05F8();
    (*(v18 + 16))(v5, v6, v19);
    v21 = sub_1C5594C54();
    v20 = sub_1C5596954();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
    v22 = sub_1C5596E04();
    if (os_log_type_enabled(v21, v20))
    {
      buf = sub_1C5596A74();
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
      v15 = sub_1C5419DC0(0, v13, v13);
      v16 = sub_1C5419DC0(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      *(v23 + 64) = buf;
      *(v23 + 72) = v15;
      *(v23 + 80) = v16;
      sub_1C5419E14(0, (v23 + 64));
      sub_1C5419E14(0, (v23 + 64));
      *(v23 + 88) = v22;
      v17 = swift_task_alloc();
      v17[2] = v23 + 64;
      v17[3] = v23 + 72;
      v17[4] = v23 + 80;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
      sub_1C5419F0C();
      sub_1C55966B4();

      _os_log_impl(&dword_1C5355000, v21, v20, "ACAccountStore or appleAccount is nil. Unable to update profile photo with setup service...", buf, 2u);
      sub_1C5419E74(v15, 0, v13);
      sub_1C5419E74(v16, 0, MEMORY[0x1E69E7CA0] + 8);
      sub_1C5596A54();
    }

    v11 = *(v23 + 256);
    v12 = *(v23 + 240);
    v10 = *(v23 + 248);
    v7 = MEMORY[0x1E69E5920](v21);
    (*(v10 + 8))(v11, v12, v7);

    v8 = *(*(v23 + 32) + 8);

    return v8();
  }
}

uint64_t sub_1C54FD928()
{
  v3 = v0[39];
  v2 = v0[38];
  v0[4] = v0;

  MEMORY[0x1E69E5920](v2);
  MEMORY[0x1E69E5920](v3);

  return MEMORY[0x1EEE6DFA0](sub_1C54FD9DC);
}

uint64_t sub_1C54FD9DC()
{
  v1 = *(v0 + 312);
  *(v0 + 32) = v0;
  if (v1)
  {
    v83 = *(v85 + 312);
    v82 = *(v85 + 280);
    *(v85 + 104) = v83;

    v2 = [v82 aida:v83 accountForiCloudAccount:?];
    v84 = v2;
    if (v2)
    {
      v77 = *(v85 + 280);
      *(v85 + 112) = v2;
      sub_1C5500480();
      MEMORY[0x1E69E5928](v77, v3);
      MEMORY[0x1E69E5928](v84, v4);
      v78 = *MEMORY[0x1E698B7C0];
      MEMORY[0x1E69E5928](*MEMORY[0x1E698B7C0], v5);
      v6 = sub_1C5596574();
      v79 = sub_1C54FEA68(v77, v84, v6, v7);
      MEMORY[0x1E69E5920](v78);
      *(v85 + 120) = v79;
      sub_1C54118E0();
      MEMORY[0x1E69E5928](v79, v8);
      v9 = sub_1C54FEAC0(v79);
      v80 = v9;
      if (v9)
      {
        v10 = *(v85 + 224);
        *(v85 + 160) = v80;
        v11 = [v10 imageData];
        v75 = v11;
        if (v11)
        {
          v66 = sub_1C55948D4();
          v67 = v14;
          MEMORY[0x1E69E5920](v75);
          v68 = v66;
          v69 = v67;
        }

        else
        {
          v68 = 0;
          v69 = 0xF000000000000000;
        }

        if ((v69 & 0xF000000000000000) == 0xF000000000000000)
        {
          v15 = *(v85 + 264);
          v62 = *(v85 + 240);
          v61 = *(v85 + 248);
          v16 = sub_1C54B05F8();
          (*(v61 + 16))(v15, v16, v62);
          oslog = sub_1C5594C54();
          v63 = sub_1C5596974();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
          v65 = sub_1C5596E04();
          if (os_log_type_enabled(oslog, v63))
          {
            buf = sub_1C5596A74();
            v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
            v53 = sub_1C5419DC0(0, v51, v51);
            v54 = sub_1C5419DC0(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
            *(v85 + 168) = buf;
            *(v85 + 176) = v53;
            *(v85 + 184) = v54;
            sub_1C5419E14(0, (v85 + 168));
            sub_1C5419E14(0, (v85 + 168));
            *(v85 + 192) = v65;
            v55 = swift_task_alloc();
            v55[2] = v85 + 168;
            v55[3] = v85 + 176;
            v55[4] = v85 + 184;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
            sub_1C5419F0C();
            sub_1C55966B4();

            _os_log_impl(&dword_1C5355000, oslog, v63, "imageData is nil. Setting Profile Picture to default image...", buf, 2u);
            sub_1C5419E74(v53, 0, v51);
            sub_1C5419E74(v54, 0, MEMORY[0x1E69E7CA0] + 8);
            sub_1C5596A54();
          }

          v48 = *(v85 + 264);
          v49 = *(v85 + 240);
          v50 = *(v85 + 280);
          v47 = *(v85 + 248);
          v18 = MEMORY[0x1E69E5920](oslog);
          (*(v47 + 8))(v48, v49, v18);
          [v80 setProfilePictureForAccountOwner:0 cropRect:?];
          MEMORY[0x1E69E5920](v80);
          MEMORY[0x1E69E5920](v79);
          MEMORY[0x1E69E5920](v84);
          MEMORY[0x1E69E5920](v83);
          MEMORY[0x1E69E5920](v50);
        }

        else
        {
          v57 = *(v85 + 232);
          v56 = *(v85 + 216);
          v60 = *(v85 + 280);
          *(v85 + 16) = v68;
          *(v85 + 24) = v69;
          sub_1C5418C84();
          sub_1C544DE30(v68, v69);
          v59 = sub_1C54493D0(v68, v69);
          *(v85 + 200) = v59;
          v58 = (*((*v56 & *MEMORY[0x1E69E7D40]) + 0x88))(v57);
          *(v85 + 208) = v58;
          [v80 setProfilePictureForAccountOwner:v59 cropRect:{v58, MEMORY[0x1E69E5928](v58, v17).n128_f64[0]}];
          MEMORY[0x1E69E5920](v58);
          MEMORY[0x1E69E5920](v58);
          MEMORY[0x1E69E5920](v59);
          sub_1C544DEAC(v68, v69);
          MEMORY[0x1E69E5920](v80);
          MEMORY[0x1E69E5920](v79);
          MEMORY[0x1E69E5920](v84);
          MEMORY[0x1E69E5920](v83);
          MEMORY[0x1E69E5920](v60);
        }
      }

      else
      {
        v12 = *(v85 + 272);
        v71 = *(v85 + 240);
        v70 = *(v85 + 248);
        v13 = sub_1C54B05F8();
        (*(v70 + 16))(v12, v13, v71);
        v73 = sub_1C5594C54();
        v72 = sub_1C5596954();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
        v74 = sub_1C5596E04();
        if (os_log_type_enabled(v73, v72))
        {
          v43 = sub_1C5596A74();
          v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
          v44 = sub_1C5419DC0(0, v42, v42);
          v45 = sub_1C5419DC0(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          *(v85 + 128) = v43;
          *(v85 + 136) = v44;
          *(v85 + 144) = v45;
          sub_1C5419E14(0, (v85 + 128));
          sub_1C5419E14(0, (v85 + 128));
          *(v85 + 152) = v74;
          v46 = swift_task_alloc();
          v46[2] = v85 + 128;
          v46[3] = v85 + 136;
          v46[4] = v85 + 144;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
          sub_1C5419F0C();
          sub_1C55966B4();

          _os_log_impl(&dword_1C5355000, v73, v72, "Creating AAUIProfilePictureStore failed. Unable to update profile photo with setup service...", v43, 2u);
          sub_1C5419E74(v44, 0, v42);
          sub_1C5419E74(v45, 0, MEMORY[0x1E69E7CA0] + 8);
          sub_1C5596A54();
        }

        v39 = *(v85 + 272);
        v40 = *(v85 + 240);
        v41 = *(v85 + 280);
        v38 = *(v85 + 248);
        v19 = MEMORY[0x1E69E5920](v73);
        (*(v38 + 8))(v39, v40, v19);
        MEMORY[0x1E69E5920](v79);
        MEMORY[0x1E69E5920](v84);
        MEMORY[0x1E69E5920](v83);
        MEMORY[0x1E69E5920](v41);
      }

      goto LABEL_24;
    }

    v76 = *(v85 + 280);
    MEMORY[0x1E69E5920](v83);
    MEMORY[0x1E69E5920](v76);
  }

  else
  {
    v81 = *(v85 + 280);

    MEMORY[0x1E69E5920](v81);
  }

  v20 = *(v85 + 256);
  v34 = *(v85 + 240);
  v33 = *(v85 + 248);
  v21 = sub_1C54B05F8();
  (*(v33 + 16))(v20, v21, v34);
  log = sub_1C5594C54();
  v35 = sub_1C5596954();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  v37 = sub_1C5596E04();
  if (os_log_type_enabled(log, v35))
  {
    v29 = sub_1C5596A74();
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v30 = sub_1C5419DC0(0, v28, v28);
    v31 = sub_1C5419DC0(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    *(v85 + 64) = v29;
    *(v85 + 72) = v30;
    *(v85 + 80) = v31;
    sub_1C5419E14(0, (v85 + 64));
    sub_1C5419E14(0, (v85 + 64));
    *(v85 + 88) = v37;
    v32 = swift_task_alloc();
    v32[2] = v85 + 64;
    v32[3] = v85 + 72;
    v32[4] = v85 + 80;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
    sub_1C5419F0C();
    sub_1C55966B4();

    _os_log_impl(&dword_1C5355000, log, v35, "ACAccountStore or appleAccount is nil. Unable to update profile photo with setup service...", v29, 2u);
    sub_1C5419E74(v30, 0, v28);
    sub_1C5419E74(v31, 0, MEMORY[0x1E69E7CA0] + 8);
    sub_1C5596A54();
  }

  v26 = *(v85 + 256);
  v27 = *(v85 + 240);
  v25 = *(v85 + 248);
  v22 = MEMORY[0x1E69E5920](log);
  (*(v25 + 8))(v26, v27, v22);
LABEL_24:

  v23 = *(*(v85 + 32) + 8);

  return v23();
}

id sub_1C54FEBC8(uint64_t a1, void *a2, void *a3)
{
  v151 = a3;
  v153 = a2;
  v152 = a1;
  v192 = 0;
  v191 = 0;
  v190 = 0;
  v189 = 0;
  v184 = 0u;
  v183 = 0u;
  v150 = 0;
  v172 = 0;
  v169 = 0u;
  v168 = 0u;
  v154 = sub_1C5594C74();
  v155 = *(v154 - 8);
  v156 = v155;
  v159 = *(v155 + 64);
  MEMORY[0x1EEE9AC00](v152, v153, v151, v154);
  v161 = (v159 + 15) & 0xFFFFFFFFFFFFFFF0;
  v157 = &v53 - v161;
  MEMORY[0x1EEE9AC00](v4, v5, v6, &v53 - v161);
  v158 = &v53 - v161;
  MEMORY[0x1EEE9AC00](v7, v8, v9, &v53 - v161);
  v160 = &v53 - v161;
  v13 = MEMORY[0x1EEE9AC00](v10, v11, v12, &v53 - v161);
  v162 = &v53 - v161;
  v192 = v14;
  v191 = v15;
  v190 = v16;
  v189 = v3;
  v163 = [v14 source];
  if (v163 == 1 || v163 == 4)
  {
    v17 = v153;
    if (v153)
    {
      v149 = v153;
      v18 = v162;
      v140 = v153;
      v172 = v153;
      [v153 size];
      v171 = v19;
      v170 = v20;
      v141 = v19;
      v142 = v20;
      v145 = 0;
      v168 = 0uLL;
      *&v169 = v20;
      *(&v169 + 1) = v19;
      v21 = sub_1C54B05F8();
      (*(v156 + 16))(v18, v21, v154);
      v147 = sub_1C5594C54();
      v143 = v147;
      v146 = sub_1C5596944();
      v144 = v146;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
      v148 = sub_1C5596E04();
      if (os_log_type_enabled(v147, v146))
      {
        v22 = v150;
        v131 = sub_1C5596A74();
        v127 = v131;
        v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
        v129 = 0;
        v132 = sub_1C5419DC0(0, v128, v128);
        v130 = v132;
        v133 = sub_1C5419DC0(v129, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v167 = v131;
        v166 = v132;
        v165 = v133;
        v134 = 0;
        v135 = &v167;
        sub_1C5419E14(0, &v167);
        sub_1C5419E14(v134, v135);
        v164 = v148;
        v136 = &v53;
        MEMORY[0x1EEE9AC00](&v53, v23, v24, v25);
        v137 = &v53 - 6;
        *(&v53 - 4) = v26;
        *(&v53 - 3) = &v166;
        *(&v53 - 2) = &v165;
        v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
        sub_1C5419F0C();
        sub_1C55966B4();
        v139 = v22;
        if (v22)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_1C5355000, v143, v144, "Using full dimensions for emoji/monogram", v127, 2u);
          v125 = 0;
          sub_1C5419E74(v130, 0, v128);
          sub_1C5419E74(v133, v125, MEMORY[0x1E69E7CA0] + 8);
          sub_1C5596A54();

          v126 = v139;
        }
      }

      else
      {

        v126 = v150;
      }

      v122 = v126;

      (*(v156 + 8))(v162, v154);
      sub_1C54FFF88();
      v121 = sub_1C54FFA14(0.0, 0.0, v142, v141);

      v123 = v121;
      v124 = v122;
    }

    else
    {
      v27 = v160;
      v28 = sub_1C54B05F8();
      (*(v156 + 16))(v27, v28, v154);
      v119 = sub_1C5594C54();
      v116 = v119;
      v118 = sub_1C5596954();
      v117 = v118;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
      v120 = sub_1C5596E04();
      if (os_log_type_enabled(v119, v118))
      {
        v29 = v150;
        v107 = sub_1C5596A74();
        v103 = v107;
        v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
        v105 = 0;
        v108 = sub_1C5419DC0(0, v104, v104);
        v106 = v108;
        v109 = sub_1C5419DC0(v105, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v176[0] = v107;
        v175 = v108;
        v174 = v109;
        v110 = 0;
        v111 = v176;
        sub_1C5419E14(0, v176);
        sub_1C5419E14(v110, v111);
        v173 = v120;
        v112 = &v53;
        MEMORY[0x1EEE9AC00](&v53, v30, v31, v32);
        v113 = &v53 - 6;
        *(&v53 - 4) = v33;
        *(&v53 - 3) = &v175;
        *(&v53 - 2) = &v174;
        v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
        sub_1C5419F0C();
        sub_1C55966B4();
        v115 = v29;
        if (v29)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_1C5355000, v116, v117, "Missing profileImage for emoji/monogram source, using zero rect", v103, 2u);
          v101 = 0;
          sub_1C5419E74(v106, 0, v104);
          sub_1C5419E74(v109, v101, MEMORY[0x1E69E7CA0] + 8);
          sub_1C5596A54();

          v102 = v115;
        }
      }

      else
      {

        v102 = v150;
      }

      v100 = v102;

      (*(v156 + 8))(v160, v154);
      sub_1C54FFF88();
      v123 = sub_1C54FFA14(0.0, 0.0, 0.0, 0.0);
      v124 = v100;
    }
  }

  else
  {
    [v151 cropRect];
    v188 = v34;
    v187 = v35;
    v186 = v36;
    v185 = v37;
    v96 = v34;
    v97 = v35;
    v98 = v36;
    v99 = v37;
    *&v183 = v37;
    *(&v183 + 1) = v36;
    *&v184 = v35;
    *(&v184 + 1) = v34;
    if (sub_1C54FF9D4(v37, v36, v35, v34) || sub_1C5449B2C(v99, v98, v97, v96))
    {
      v38 = v158;
      v39 = sub_1C54B05F8();
      (*(v156 + 16))(v38, v39, v154);
      v93 = sub_1C5594C54();
      v90 = v93;
      v92 = sub_1C5596954();
      v91 = v92;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
      v94 = sub_1C5596E04();
      if (os_log_type_enabled(v93, v92))
      {
        v40 = v150;
        v81 = sub_1C5596A74();
        v77 = v81;
        v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
        v79 = 0;
        v82 = sub_1C5419DC0(0, v78, v78);
        v80 = v82;
        v83 = sub_1C5419DC0(v79, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v179[0] = v81;
        v178 = v82;
        v177 = v83;
        v84 = 0;
        v85 = v179;
        sub_1C5419E14(0, v179);
        sub_1C5419E14(v84, v85);
        v176[1] = v94;
        v86 = &v53;
        MEMORY[0x1EEE9AC00](&v53, v41, v42, v43);
        v87 = &v53 - 6;
        *(&v53 - 4) = v44;
        *(&v53 - 3) = &v178;
        *(&v53 - 2) = &v177;
        v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
        sub_1C5419F0C();
        sub_1C55966B4();
        v89 = v40;
        if (v40)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_1C5355000, v90, v91, "Invalid crop rectangle detected, using zero rect", v77, 2u);
          v75 = 0;
          sub_1C5419E74(v80, 0, v78);
          sub_1C5419E74(v83, v75, MEMORY[0x1E69E7CA0] + 8);
          sub_1C5596A54();

          v76 = v89;
        }
      }

      else
      {

        v76 = v150;
      }

      v74 = v76;

      (*(v156 + 8))(v158, v154);
      sub_1C54FFF88();
      v123 = sub_1C54FFA14(0.0, 0.0, 0.0, 0.0);
      v124 = v74;
    }

    else
    {
      v45 = v157;
      v46 = sub_1C54B05F8();
      (*(v156 + 16))(v45, v46, v154);
      v72 = sub_1C5594C54();
      v69 = v72;
      v71 = sub_1C5596944();
      v70 = v71;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
      v73 = sub_1C5596E04();
      if (os_log_type_enabled(v72, v71))
      {
        v47 = v150;
        v60 = sub_1C5596A74();
        v56 = v60;
        v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
        v58 = 0;
        v61 = sub_1C5419DC0(0, v57, v57);
        v59 = v61;
        v62 = sub_1C5419DC0(v58, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v182 = v60;
        v181 = v61;
        v180 = v62;
        v63 = 0;
        v64 = &v182;
        sub_1C5419E14(0, &v182);
        sub_1C5419E14(v63, v64);
        v179[2] = v73;
        v65 = &v53;
        MEMORY[0x1EEE9AC00](&v53, v48, v49, v50);
        v66 = &v53 - 6;
        *(&v53 - 4) = v51;
        *(&v53 - 3) = &v181;
        *(&v53 - 2) = &v180;
        v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
        sub_1C5419F0C();
        sub_1C55966B4();
        v68 = v47;
        if (v47)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_1C5355000, v69, v70, "Using contact crop rectangle.", v56, 2u);
          v54 = 0;
          sub_1C5419E74(v59, 0, v57);
          sub_1C5419E74(v62, v54, MEMORY[0x1E69E7CA0] + 8);
          sub_1C5596A54();

          v55 = v68;
        }
      }

      else
      {

        v55 = v150;
      }

      v53 = v55;

      (*(v156 + 8))(v157, v154);
      sub_1C54FFF88();
      v123 = sub_1C54FFA14(v99, v98, v97, v96);
      v124 = v53;
    }
  }

  return v123;
}

id sub_1C54FFA14(double a1, double a2, double a3, double a4)
{
  v4 = [swift_getObjCClassFromMetadata() valueWithRect_];

  return v4;
}

id sub_1C54FFB24()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContactVisualIdentityPicker.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1C54FFBA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ContactVisualIdentityPicker.Coordinator();

  MEMORY[0x1E69E5928](a3, v4);
  MEMORY[0x1E69E5928](a4, v5);
  return sub_1C54FBAA8(a1, a2, a3, a4);
}

id sub_1C54FFC6C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C54FFBA4(*v1, v1[1], v1[2], v1[3]);
  *a1 = result;
  return result;
}

void sub_1C54FFD38(uint64_t a1)
{
  sub_1C550004C();
  sub_1C5595724();
  __break(1u);
}

id sub_1C54FFD60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v8 = sub_1C5596554();

    v4 = [v11 initWithAccountStore:a1 grandSlamAccount:a2 appTokenID:v8];
  }

  else
  {
    v4 = [v11 initWithAccountStore:a1 grandSlamAccount:a2 appTokenID:0];
  }

  v7 = v4;
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5920](a2);
  MEMORY[0x1E69E5920](a1);
  return v7;
}

id sub_1C54FFE40(uint64_t a1)
{
  v4 = [v1 initWithGrandSlamSigner_];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

uint64_t sub_1C54FFE98(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1C5405B1C;

  return sub_1C54FD27C(a1, v6, v7, v8, v9, v10);
}

unint64_t sub_1C54FFF88()
{
  v2 = qword_1EC15DE88;
  if (!qword_1EC15DE88)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15DE88);
    return ObjCClassMetadata;
  }

  return v2;
}

void *sub_1C54FFFEC(void *a1)
{

  MEMORY[0x1E69E5920](a1[2]);
  MEMORY[0x1E69E5920](a1[3]);
  return a1;
}

unint64_t sub_1C550004C()
{
  v2 = qword_1EC15DE90;
  if (!qword_1EC15DE90)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DE90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C55000E0()
{
  v2 = qword_1EC15A038;
  if (!qword_1EC15A038)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15A038);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C550015C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 32))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*(a1 + 8) < 0x100000000uLL)
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C550029C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_1C5500480()
{
  v2 = qword_1EC15DEF8;
  if (!qword_1EC15DEF8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15DEF8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t static AccountRecoveryContactUpsellContactSection.create(viewModel:delegate:)(void *a1, uint64_t a2)
{
  v37 = v68;
  v40 = a2;
  v39 = a1;
  v50 = 0;
  v67 = 0;
  v66 = 0;
  v65 = 0;
  v58 = 0;
  v38 = 0;
  v47 = sub_1C5594C74();
  v41 = v47;
  v42 = *(v47 - 8);
  v46 = v42;
  v43 = v42;
  v44 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v39, v40, v47, v2);
  v3 = &v19 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v3;
  v67 = v4;
  v66 = v5;
  v65 = v6;
  v7 = sub_1C54B05F8();
  (*(v46 + 16))(v3, v7, v47);
  v52 = sub_1C5594C54();
  v48 = v52;
  v51 = sub_1C5596944();
  v49 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  v53 = sub_1C5596E04();
  if (os_log_type_enabled(v52, v51))
  {
    v8 = v38;
    v28 = sub_1C5596A74();
    v24 = v28;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v26 = 0;
    v29 = sub_1C5419DC0(0, v25, v25);
    v27 = v29;
    v30 = sub_1C5419DC0(v26, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v57 = v28;
    v56 = v29;
    v55 = v30;
    v31 = 0;
    v32 = &v57;
    sub_1C5419E14(0, &v57);
    sub_1C5419E14(v31, v32);
    v54 = v53;
    v33 = &v19;
    MEMORY[0x1EEE9AC00](&v19, v9, v10, v11);
    v34 = &v19 - 6;
    *(&v19 - 4) = v12;
    *(&v19 - 3) = &v56;
    *(&v19 - 2) = &v55;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v36 = v8;
    if (v8)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v48, v49, "AccountRecoveryContactUpsellContactSection Contact List initiated", v24, 2u);
      v22 = 0;
      sub_1C5419E74(v27, 0, v25);
      sub_1C5419E74(v30, v22, MEMORY[0x1E69E7CA0] + 8);
      sub_1C5596A54();

      v23 = v36;
    }
  }

  else
  {

    v23 = v38;
  }

  (*(v43 + 8))(v45, v41);
  v13 = v39;
  swift_unknownObjectRetain();
  v14 = sub_1C5505E94();
  v20 = v68;
  sub_1C5500924(v39, v40, v14, v68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF08, &qword_1C55B4CC8);
  sub_1C5505EF8(v20, v64);
  v59 = *v37;
  v15 = v37[1];
  v16 = v37[2];
  v17 = v37[3];
  v63 = v69;
  v62 = v17;
  v61 = v16;
  v60 = v15;
  v21 = sub_1C5595484();
  v58 = v21;
  sub_1C5505FD8(v20);
  return v21;
}

void *sub_1C5500924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  memset(__b, 0, sizeof(__b));
  __dst[9] = a3;
  v13 = a1;
  v12 = a2;
  __b[2] = sub_1C5500CD8(0, a3);
  __b[3] = v4;
  LOBYTE(__b[4]) = sub_1C54760C4(0, a3) & 1;
  __b[5] = v5;
  __b[6] = 6.0;
  __b[7] = 24.0;
  __b[8] = 0x4041800000000000;
  MEMORY[0x1E69E5928](a1, v5);
  __b[0] = a1;
  swift_unknownObjectRetain();
  __b[1] = a2;
  memcpy(__dst, __b, 0x48uLL);
  sub_1C5505EF8(__dst, v11);
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](a1);
  sub_1C5505FD8(__b);
  return memcpy(a4, __dst, 0x48uLL);
}

id AccountRecoveryContactUpsellContactSection.init()(__n128 a1)
{
  v5 = 0;
  v4.receiver = 0;
  v4.super_class = type metadata accessor for AccountRecoveryContactUpsellContactSection();
  v3 = objc_msgSendSuper2(&v4, sel_init);
  MEMORY[0x1E69E5928](v3, v1);
  v5 = v3;
  MEMORY[0x1E69E5920](v3);
  return v3;
}

id AccountRecoveryContactUpsellContactSection.__deallocating_deinit(__n128 a1)
{
  v4 = v1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AccountRecoveryContactUpsellContactSection();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1C5500C24(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  MEMORY[0x1E69E5928](*v2, a2);
  return v4;
}

double sub_1C5500C58(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  v3 = *v2;
  *v2 = a1;
  MEMORY[0x1E69E5920](v3);
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C5500CAC()
{
  v2 = *(v0 + 8);
  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_1C5500CD8(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF10, &qword_1C55B4CD0);
  sub_1C5595F74();
  MEMORY[0x1E69E5920](a1);
  return v4;
}

uint64_t sub_1C5500D8C(uint64_t a1)
{
  v5 = v1;
  v4[2] = *(a1 + 16);
  v6 = *(v1 + 16);
  sub_1C550606C(&v6, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF18, &unk_1C55B4CD8);
  sub_1C5595F84();
  sub_1C55060CC(&v6);
  return v3;
}

double sub_1C5500E18(uint64_t a1, uint64_t a2)
{
  v10 = a1;
  v9 = v2;
  v8[2] = *(a2 + 16);
  v11 = *(v2 + 16);
  sub_1C550606C(&v11, v8);
  sub_1C550606C(&v11, v7);
  v6 = v11;
  MEMORY[0x1E69E5928](a1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF18, &unk_1C55B4CD8);
  sub_1C5595F94();
  sub_1C55060CC(&v6);
  sub_1C55060CC(&v11);
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

void (*sub_1C5500EF0(void *a1))(void **a1, uint64_t a2)
{
  v3 = __swift_coroFrameAllocStub(0x90uLL, 24284);
  *a1 = v3;
  *v3 = *(v1 + 16);
  sub_1C550606C(v3, v3 + 2);
  *(v3 + 2) = *v3;
  v3[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF18, &unk_1C55B4CD8);
  sub_1C5595F84();
  return sub_1C5500FCC;
}

void sub_1C5500FCC(void **a1, uint64_t a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = v4[14];
    MEMORY[0x1E69E5928](v2, a2);
    sub_1C550606C(v4, v4 + 6);
    *(v4 + 4) = *v4;
    v4[15] = v2;
    sub_1C5595F94();
    sub_1C55060CC(v4 + 8);
    sub_1C5401EF8(v4 + 14);
  }

  else
  {
    v3 = v4[14];
    sub_1C550606C(v4, v4 + 10);
    *(v4 + 6) = *v4;
    v4[16] = v3;
    sub_1C5595F94();
    sub_1C55060CC(v4 + 12);
  }

  sub_1C55060CC(v4);
  free(v4);
}

uint64_t sub_1C55010E0(uint64_t a1)
{
  v5 = v1;
  v4[2] = *(a1 + 16);
  v6 = *(v1 + 16);
  sub_1C550606C(&v6, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF18, &unk_1C55B4CD8);
  sub_1C5595FA4();
  sub_1C55060CC(&v6);
  return v3;
}

uint64_t sub_1C5501184(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  MEMORY[0x1E69E5928](v4, a2);

  return v4;
}

uint64_t sub_1C55011CC(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);

  v3 = *(v2 + 16);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  MEMORY[0x1E69E5920](v3);

  MEMORY[0x1E69E5920](a1);
}

uint64_t sub_1C550124C(uint64_t a1)
{
  v6 = v1;
  v5 = *(a1 + 16);
  v7 = *(v1 + 32);
  sub_1C5409664(&v7, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595F84();
  sub_1C5373718(&v7);
  return v3 & 1;
}

void sub_1C55012DC(char a1, uint64_t a2)
{
  v8 = a1 & 1;
  v7 = v2;
  v6 = *(a2 + 16);
  v9 = *(v2 + 32);
  sub_1C5409664(&v9, v5);
  sub_1C5409664(&v9, v4);
  v3 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595F94();
  sub_1C5373718(&v3);
  sub_1C5373718(&v9);
}

void (*sub_1C550139C(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x80uLL, 7756);
  *a1 = v3;
  *v3 = *(v1 + 32);
  sub_1C5409664(v3, (v3 + 1));
  v3[2] = *v3;
  *(v3 + 14) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595F84();
  return sub_1C5501478;
}

void sub_1C5501478(void **a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = v4[120];
    sub_1C5409664(v4, (v4 + 48));
    *(v4 + 4) = *v4;
    v4[121] = v2;
    sub_1C5595F94();
    sub_1C5373718((v4 + 64));
  }

  else
  {
    v3 = v4[120];
    sub_1C5409664(v4, (v4 + 80));
    *(v4 + 6) = *v4;
    v4[122] = v3;
    sub_1C5595F94();
    sub_1C5373718((v4 + 96));
  }

  sub_1C5373718(v4);
  free(v4);
}

uint64_t sub_1C550156C(uint64_t a1)
{
  v6 = v1;
  v5 = *(a1 + 16);
  v7 = *(v1 + 32);
  sub_1C5409664(&v7, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595FA4();
  sub_1C5373718(&v7);
  return v3;
}

uint64_t sub_1C550162C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v36 = a1;
  v39 = v2;
  v28 = sub_1C550610C;
  v41 = sub_1C5506408;
  v49 = MEMORY[0x1E6981440];
  v63 = 0;
  __src = __dst;
  __n = 72;
  memcpy(__dst, v2, sizeof(__dst));
  memcpy(v66, __dst, sizeof(v66));
  v38 = *(v36 + 16);
  v64 = v38;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF20, &qword_1C55B4CE8);
  v24 = (*(*(v32 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v32, v3, v4, v5);
  v35 = &__src - v24;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF28, &qword_1C55B4CF0);
  v25 = (*(*(v45 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v45, v6, v7, v8);
  v44 = &__src - v25;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF30, &qword_1C55B4CF8);
  v50 = *(v56 - 8);
  v51 = v56 - 8;
  v26 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v39, v9, v10, v11);
  v54 = &__src - v26;
  v27 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13, &__src - v26, v14, v15);
  v55 = &__src - v27;
  v63 = &__src - v27;
  sub_1C5505EF8(v16, &v62);
  v29 = v59;
  v59[2] = v38;
  v59[3] = v39;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF38, &qword_1C55B4D00);
  v31 = sub_1C5506124();
  sub_1C544B78C();
  v37 = 1;
  sub_1C5596064();
  sub_1C5505FD8(v39);
  v33 = sub_1C55965F4("rc-contact-suggestion-container-view", 36, v37 & 1);
  v34 = v17;
  sub_1C55061AC();
  sub_1C5595C84();

  sub_1C5506234(v35);
  v18 = sub_1C550124C(v36);
  v42 = &v61;
  v61 = v18 & v37;
  sub_1C5505EF8(v39, &v60);
  v19 = swift_allocObject();
  v20 = v39;
  v21 = __n;
  v43 = v19;
  *(v19 + 16) = v38;
  memcpy((v19 + 24), v20, v21);
  v47 = sub_1C5506420();
  v46 = MEMORY[0x1E69E6370];
  v48 = MEMORY[0x1E69E6388];
  sub_1C543AE1C();
  sub_1C5595DD4();

  sub_1C55064C8(v44);
  v59[5] = v45;
  v59[6] = v46;
  v59[7] = v47;
  v59[8] = v48;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C540EFD8(v54, v56, v55);
  v58 = *(v50 + 8);
  v57 = v50 + 8;
  v58(v54, v56);
  (*(v50 + 16))(v54, v55, v56);
  sub_1C540EFD8(v54, v56, v52);
  v58(v54, v56);
  return (v58)(v55, v56);
}

uint64_t sub_1C5501AFC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v126 = v220;
  v127 = v211;
  v128 = v172;
  v129 = a2;
  v147 = a1;
  v130 = a3;
  v232 = 0;
  v231 = 0;
  v230 = 0;
  v158 = 0;
  v156 = 0;
  v243 = a2;
  v233 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v237 = *(a1 + 8);
  v236 = v5;
  v235 = v4;
  v234 = v3;
  v238 = v233;
  v242 = v237;
  v241 = v5;
  v240 = v4;
  v239 = v3;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF78, &qword_1C55B4D30);
  v132 = *(*(v131 - 8) + 64);
  MEMORY[0x1EEE9AC00](v131 - 8, v6, v7, v8);
  v134 = (v132 + 15) & 0xFFFFFFFFFFFFFFF0;
  v133 = v71 - v134;
  MEMORY[0x1EEE9AC00](v9, v10, v11, v12);
  v135 = v71 - v134;
  v232 = v71 - v134;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF60, &qword_1C55B4D18);
  v137 = *(v136 - 8);
  v138 = v137;
  v139 = (*(v137 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v136 - 8, v136, v13, v14);
  v140 = v71 - v139;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF68, &qword_1C55B4D20);
  v143 = *(*(v141 - 8) + 64);
  MEMORY[0x1EEE9AC00](v141 - 8, v141, v15, v16);
  v145 = (v143 + 15) & 0xFFFFFFFFFFFFFFF0;
  v142 = v71 - v145;
  MEMORY[0x1EEE9AC00](v71 - v145, v17, v18, v19);
  v144 = v71 - v145;
  MEMORY[0x1EEE9AC00](v20, v21, v22, v23);
  v146 = v71 - v145;
  v231 = v71 - v145;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E000, &qword_1C55B5018);
  v149 = *(*(v148 - 8) + 64);
  MEMORY[0x1EEE9AC00](v147, v24, v25, v26);
  v151 = (v149 + 15) & 0xFFFFFFFFFFFFFFF0;
  v150 = v71 - v151;
  MEMORY[0x1EEE9AC00](v27, v28, v29, v30);
  v152 = v71 - v151;
  v230 = v71 - v151;
  v154 = *v31;
  v153 = v154;
  v32 = v154;
  v155 = [v154 suggestedContacts];
  if (v155)
  {
    v125 = v155;
    v122 = v155;
    v121 = sub_1C5403328();
    v123 = sub_1C5596714();

    v124 = v123;
  }

  else
  {
    v124 = 0;
  }

  v120 = v124;
  if (!v124)
  {

LABEL_10:
    v40 = sub_1C5596234();
    v108 = MEMORY[0x1E6981E70];
    v109 = MEMORY[0x1E6981E60];
    v42 = sub_1C540EFD8(v40, MEMORY[0x1E6981E70], v41);
    sub_1C540EFD8(v42, v108, v43);
    v44 = sub_1C5507730();
    sub_1C54108A0(v44, v141, v108, v44, v109, v150);
    sub_1C5507860(v150, v152);
    goto LABEL_11;
  }

  v119 = v120;
  v117 = v120;
  v158 = v120;

  v157[9] = v117;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BCD0, &qword_1C55AD850);
  sub_1C54F25C4();
  v33 = sub_1C55968F4();
  if (v33)
  {

    goto LABEL_10;
  }

  v112 = sub_1C5595794();
  sub_1C5594CF4();
  sub_1C5505EF8(v147, v157);
  v113 = v71;
  MEMORY[0x1EEE9AC00](v71, v34, v35, v36);
  v37 = v117;
  v110 = &v71[-6];
  v71[-4] = v129;
  v71[-3] = v37;
  v71[-2] = v38;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E048, &qword_1C55B5038);
  sub_1C5508090();
  sub_1C5503774(v112, sub_1C5508074, v110);

  sub_1C5505FD8(v147);
  v114 = sub_1C55965F4("rc-contact-suggestion-contacts-scrollview", 41, 1);
  v115 = v39;
  sub_1C55077D8();
  sub_1C5595C84();

  (*(v138 + 8))(v140, v136);
  v116 = sub_1C5507730();
  sub_1C540EFD8(v144, v141, v146);
  sub_1C55082E4(v144);
  v156 = v144;
  sub_1C55083A8(v146, v142);
  sub_1C540EFD8(v142, v141, v144);
  sub_1C55082E4(v142);
  sub_1C55083A8(v144, v142);
  sub_1C540FD1C(v142, v141, MEMORY[0x1E6981E70], v116, MEMORY[0x1E6981E60], v150);
  sub_1C55082E4(v142);
  sub_1C5507860(v150, v152);
  sub_1C55082E4(v144);
  sub_1C55082E4(v146);

LABEL_11:
  v103 = 0;
  v104 = 1;
  v213 = sub_1C5596044();
  v214 = v45 & 1;
  v71[0] = v147[7];
  v101 = MEMORY[0x1E6981840];
  v102 = MEMORY[0x1E6981838];
  sub_1C5410F68();
  v100 = 0;
  sub_1C5595D14();
  v219[7] = v218;
  v219[6] = v217;
  v219[5] = v216;
  v219[4] = v215;
  v212[3] = v218;
  v212[2] = v217;
  v212[1] = v216;
  v212[0] = v215;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DFB8, &qword_1C55B4FE8);
  v107 = sub_1C55071EC();
  sub_1C540EFD8(v212, v105, v219);
  v46 = sub_1C55965F4("RC_UPSELL_FOOTER", 16, v104);
  v71[1] = v47;
  v72 = sub_1C54637B4(v46, v47);
  v73 = v48;

  v203 = v72;
  v204 = v73;
  sub_1C54141E8();
  v199 = sub_1C5595A04();
  v200 = v49;
  v201 = v50;
  v202 = v51;
  v75 = v199;
  v76 = v49;
  v77 = v50;
  v78 = v51;
  v74 = sub_1C5595914();
  v195 = v75;
  v196 = v76;
  v197 = v77;
  v198 = v78;
  v191 = sub_1C55959C4();
  v192 = v52;
  v193 = v53;
  v194 = v54;
  v82 = v191;
  v80 = v52;
  v81 = v53;
  v83 = v54;

  sub_1C5412EA0(v75, v76, v77);

  v190 = sub_1C5595EB4();
  v186 = v82;
  v187 = v80;
  v188 = v81;
  v189 = v83;
  v79 = &v190;
  v182 = sub_1C5595994();
  v183 = v55;
  v184 = v56;
  v185 = v57;
  v84 = v182;
  v85 = v55;
  v86 = v56;
  v87 = v57;
  sub_1C5410D10(v79);
  sub_1C5412EA0(v82, v80, v81);

  v179[0] = v84;
  v179[1] = v85;
  v180 = v86;
  v181 = v87;
  v88 = v179;
  sub_1C5595C54();
  sub_1C5414260(v88);
  v174[0] = v205;
  v174[1] = v206;
  v175 = v207;
  v176 = v208;
  v177 = v209;
  v178 = v210;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CC18, &unk_1C55B0B10);
  sub_1C546FF30();
  v90 = v174;
  sub_1C5595E14();
  sub_1C546FFD4(v90);
  v58 = v126;
  v59 = v128;
  v60 = v211[0];
  v61 = v211[1];
  *(v126 + 27) = *(v127 + 27);
  v220[1] = v61;
  v220[0] = v60;
  *(v59 + 123) = *(v58 + 27);
  v173[1] = v61;
  v173[0] = v60;
  v93 = sub_1C55957A4();
  v91 = v147[8];
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E018, &qword_1C55B5020);
  sub_1C55079AC();
  v94 = v173;
  sub_1C5595D84();
  sub_1C546FFD4(v94);
  v62 = v126;
  v63 = v128;
  v64 = v104;
  v222 = v211[4];
  v221 = v211[3];
  v65 = v211[5];
  v66 = v211[6];
  v67 = v211[7];
  *(v126 + 121) = *(v127 + 121);
  v225 = v67;
  v224 = v66;
  v223 = v65;
  v172[1] = v222;
  v172[0] = v221;
  *(v63 + 73) = *(v62 + 121);
  v172[4] = v67;
  v172[3] = v66;
  v172[2] = v65;
  v96 = sub_1C55965F4("rc-contact-suggestion-footertext", 32, v64);
  v97 = v68;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E028, &unk_1C55B5028);
  sub_1C5507A50();
  v98 = v172;
  sub_1C5595C84();

  sub_1C546FFD4(v98);
  v106 = sub_1C5507AF4();
  sub_1C540EFD8(v133, v131, v135);
  sub_1C5507B9C(v133);
  v165 = sub_1C5596044();
  v166 = v69 & 1;
  v99 = v147[7];
  sub_1C5410F68();
  sub_1C5595D14();
  v229 = v170;
  v228 = v169;
  v227 = v168;
  v226 = v167;
  v164[3] = v170;
  v164[2] = v169;
  v164[1] = v168;
  v164[0] = v167;
  sub_1C540EFD8(v164, v105, v171);
  sub_1C5507C4C(v152, v150);
  v163[0] = v150;
  v162[3] = v219[3];
  v162[2] = v219[2];
  v162[1] = v219[1];
  v162[0] = v219[0];
  v163[1] = v162;
  sub_1C5507D98(v135, v133);
  v163[2] = v133;
  v161[3] = v171[3];
  v161[2] = v171[2];
  v161[1] = v171[1];
  v161[0] = v171[0];
  v163[3] = v161;
  v160[0] = v148;
  v160[1] = v105;
  v160[2] = v131;
  v160[3] = v105;
  v159[0] = sub_1C5507EE0();
  v159[1] = v107;
  v159[2] = v106;
  v159[3] = v107;
  sub_1C540F5A0(v163, 4uLL, v160, v159, v130);
  sub_1C5507B9C(v133);
  sub_1C5507F84(v150);
  sub_1C5507B9C(v135);
  return sub_1C5507F84(v152);
}

uint64_t sub_1C5502828@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a4;
  v39 = a1;
  v40 = a2;
  v32 = a3;
  v35 = sub_1C5508488;
  v59 = 0;
  v58 = 0;
  v62 = a3;
  __src = __dst;
  __n = 72;
  memcpy(__dst, a2, sizeof(__dst));
  memcpy(v61, __dst, sizeof(v61));
  v46 = 0;
  v4 = sub_1C5595594();
  v27 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4, v5, v6, v7);
  v34 = &v24 - v27;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E070, &qword_1C55B5048);
  v42 = *(v45 - 8);
  v43 = v45 - 8;
  v28 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v45, v8, v9, v10);
  v44 = &v24 - v28;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E060, &qword_1C55B5040);
  v29 = (*(*(v48 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v48, v11, v12, v13);
  v50 = &v24 - v29;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E048, &qword_1C55B5038);
  v30 = (*(*(v52 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v39, v14, v15, v16);
  v54 = &v24 - v30;
  v31 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18, &v24 - v30, v19, v20);
  v55 = &v24 - v31;
  v59 = &v24 - v31;
  v58 = v21;
  sub_1C5594CF4();
  sub_1C5505EF8(v40, &v57);
  v36 = v56;
  v56[2] = v32;
  v56[3] = v39;
  v56[4] = v40;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E080, &qword_1C55B5050);
  v38 = sub_1C55084A4();
  v33 = sub_1C5412C88();
  sub_1C5503570(v37);
  sub_1C5594F84();

  sub_1C5505FD8(v40);
  v41 = sub_1C55081DC();
  sub_1C5411148(v45, v41);
  v47 = 1;
  sub_1C5595D84();
  (*(v42 + 8))(v44, v45);
  v49 = sub_1C55957A4();
  v22 = sub_1C5508138();
  sub_1C55035D0(v49, v46, v47, v48, v22, v54);
  sub_1C5508704(v50);
  v53 = sub_1C5508090();
  sub_1C540EFD8(v54, v52, v55);
  sub_1C550876C(v54);
  sub_1C5508830(v55, v54);
  sub_1C540EFD8(v54, v52, v51);
  sub_1C550876C(v54);
  return sub_1C550876C(v55);
}

uint64_t sub_1C5502C18@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a4;
  v18 = a1;
  v20 = a2;
  v19 = a3;
  v22 = sub_1C55089CC;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v43 = a3;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E080, &qword_1C55B5050);
  v29 = *(v35 - 8);
  v30 = v35 - 8;
  v16 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18, v20, v4, v5);
  v33 = &v15 - v16;
  v17 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7, v8, &v15 - v16, v9);
  v34 = &v15 - v17;
  v42 = &v15 - v17;
  v41 = v10;
  v40 = v11;
  sub_1C5594CF4();
  v28 = &v39;
  v39 = v18;
  KeyPath = swift_getKeyPath();
  sub_1C5505EF8(v20, v38);
  v12 = swift_allocObject();
  v13 = v20;
  v23 = v12;
  *(v12 + 16) = v19;
  memcpy((v12 + 24), v13, 0x48uLL);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BCD0, &qword_1C55AD850);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E098, &qword_1C55B5058);
  v26 = sub_1C54EE5A8();
  v27 = sub_1C55089E4();
  sub_1C550853C();
  sub_1C5596104();
  v32 = sub_1C55084A4();
  sub_1C540EFD8(v33, v35, v34);
  v37 = *(v29 + 8);
  v36 = v29 + 8;
  v37(v33, v35);
  (*(v29 + 16))(v33, v34, v35);
  sub_1C540EFD8(v33, v35, v31);
  v37(v33, v35);
  return (v37)(v34, v35);
}

char *sub_1C5502F38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45 = a4;
  v23 = a1;
  v33 = a2;
  v26 = a3;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v58 = a3;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E098, &qword_1C55B5058);
  v24 = (*(*(v46 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v23, v5, v6, v7);
  v48 = &v22 - v24;
  v25 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9, &v22 - v24, v10, v11);
  v49 = (&v22 - v25);
  v55 = &v22 - v25;
  v29 = *v12;
  v54 = v29;
  v53 = a2;
  MEMORY[0x1E69E5928](v29, a2);
  v27 = type metadata accessor for AccountRecoveryContactUpsellContactSelection(0, v26, v13, v14);
  v30 = sub_1C55010E0(v27);
  v31 = v15;
  v28 = v16;
  v17 = sub_1C550156C(v27);
  v32 = v56;
  v40 = 1;
  sub_1C550320C(v29, v30, v31, v28, v17, v19, v18 & 1, v56);
  v36 = v51;
  memcpy(v51, v32, sizeof(v51));
  v35 = sub_1C55957A4();
  v34 = *(v33 + 48);
  sub_1C5508688();
  v37 = &v52;
  sub_1C5595D84();
  sub_1C5506810(v36);
  v38 = __dst;
  v39 = 137;
  memcpy(__dst, v37, 0x89uLL);
  v44 = v50;
  memcpy(v50, __dst, 0x89uLL);
  v42 = sub_1C55965F4("rc-contact-suggestion-contactcell", 33, v40 & 1);
  v43 = v20;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E0A8, &unk_1C55B5060);
  sub_1C55085E4();
  sub_1C5595C84();

  sub_1C5506810(v44);
  v47 = sub_1C550853C();
  sub_1C540EFD8(v48, v46, v49);
  sub_1C5508A64(v48);
  sub_1C5508B50(v49, v48);
  sub_1C540EFD8(v48, v46, v45);
  sub_1C5508A64(v48);
  return sub_1C5508A64(v49);
}

void *sub_1C550320C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, void *a8@<X8>)
{
  memset(__b, 0, sizeof(__b));
  v35 = a1;
  v32 = a2;
  v33 = a3;
  v34 = a4;
  __dst[12] = a5;
  __dst[13] = a6;
  v31 = a7;
  __b[7] = 0x4056000000000000;
  __b[8] = 4.0;
  MEMORY[0x1E69E5928](a1, a2);
  __b[0] = a1;

  MEMORY[0x1E69E5928](a4, v8);
  __b[1] = a2;
  __b[2] = a3;
  __b[3] = a4;

  __b[4] = a5;
  __b[5] = a6;
  LOBYTE(__b[6]) = a7;
  v26 = [a1 firstNameOrHandleForDisplay];
  __b[9] = sub_1C5596574();
  __b[10] = v9;
  v28 = [a1 imageData];
  if (v28)
  {
    v15 = sub_1C55948D4();
    v16 = v11;
    *&v10 = MEMORY[0x1E69E5920](v28).n128_u64[0];
    v17 = v15;
    v18 = v16;
  }

  else
  {
    v17 = 0;
    v18 = 0xF000000000000000;
  }

  if ((v18 & 0xF000000000000000) == 0xF000000000000000)
  {
    goto LABEL_10;
  }

  sub_1C544DE30(v17, v18);
  v12 = sub_1C55781A4(v17, v18);
  v14 = v12;
  if (!v12)
  {
    sub_1C544DEAC(v17, v18);
LABEL_10:
    sub_1C55965F4("person.crop.circle.fill", 23, 1, v10);
    __b[11] = sub_1C5595EF4();
    goto LABEL_11;
  }

  __b[11] = v14;

  sub_1C544DEAC(v17, v18);
LABEL_11:
  memcpy(__dst, __b, 0x60uLL);
  sub_1C55066E0(__dst, v29);

  MEMORY[0x1E69E5920](a4);
  MEMORY[0x1E69E5920](a1);
  sub_1C5506810(__b);
  return memcpy(a8, __dst, 0x60uLL);
}

uint64_t sub_1C5503570(uint64_t a1)
{
  sub_1C5595594();
  sub_1C550894C();
  return sub_1C5596F64();
}

uint64_t sub_1C55035D0@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v20 = a6;
  v21 = a1;
  v22 = a2;
  v25 = a3;
  v23 = a4;
  v24 = a5;
  v36 = a4;
  v26 = sub_1C5595644();
  v27 = *(v26 - 8);
  v28 = v26 - 8;
  v29 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v26, v6, v25, v7);
  v30 = &v14 - v29;
  if (v8)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 1;
  }

  else
  {
    sub_1C5594F64();
    v15 = v9;
    v16 = v10;
    v17 = v11;
    v18 = v12;
    v19 = 0;
  }

  v31 = v15;
  v32 = v16;
  v33 = v17;
  v34 = v18;
  v35 = v19 & 1;
  sub_1C5595634();
  MEMORY[0x1C6946950](v30, v23, v26, v24);
  return (*(v27 + 8))(v30, v26);
}

double sub_1C55037C8(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v69 = a1;
  v62 = a2;
  v55 = a3;
  v63 = a4;
  v56 = sub_1C545AE98;
  v57 = sub_1C545C6DC;
  v58 = sub_1C545C6D4;
  v59 = sub_1C545C6D4;
  v60 = sub_1C545C6E8;
  v80 = 0;
  v79 = 0;
  v78 = 0;
  v77 = 0;
  v61 = 0;
  v81 = a4;
  v64 = 0;
  v65 = sub_1C5594C74();
  v66 = *(v65 - 8);
  v67 = v65 - 8;
  v68 = (*(v66 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v63, v5, v6);
  v70 = &v29 - v68;
  v80 = *v69 & 1;
  v79 = *v7 & 1;
  v78 = a3;
  v11 = type metadata accessor for AccountRecoveryContactUpsellContactSelection(v8, v9, a3, v10);
  v71 = sub_1C5500D8C(v11);
  if (v71)
  {
    v54 = v71;
    v13 = v70;
    v40 = v71;
    v77 = v71;
    v14 = sub_1C54B05F8();
    (*(v66 + 16))(v13, v14, v65);
    MEMORY[0x1E69E5928](v40, v15);
    v43 = 7;
    v44 = swift_allocObject();
    *(v44 + 16) = v40;
    v52 = sub_1C5594C54();
    v53 = sub_1C5596944();
    v41 = 17;
    v46 = swift_allocObject();
    *(v46 + 16) = 64;
    v47 = swift_allocObject();
    *(v47 + 16) = 8;
    v42 = 32;
    v16 = swift_allocObject();
    v17 = v44;
    v45 = v16;
    *(v16 + 16) = v56;
    *(v16 + 24) = v17;
    v18 = swift_allocObject();
    v19 = v45;
    v49 = v18;
    *(v18 + 16) = v57;
    *(v18 + 24) = v19;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
    v48 = sub_1C5596E04();
    v50 = v20;

    v21 = v46;
    v22 = v50;
    *v50 = v58;
    v22[1] = v21;

    v23 = v47;
    v24 = v50;
    v50[2] = v59;
    v24[3] = v23;

    v25 = v49;
    v26 = v50;
    v50[4] = v60;
    v26[5] = v25;
    sub_1C540FCD8();

    if (os_log_type_enabled(v52, v53))
    {
      v27 = v61;
      v33 = sub_1C5596A74();
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
      v34 = sub_1C5419DC0(1, v32, v32);
      v35 = sub_1C5419DC0(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v36 = &v76;
      v76 = v33;
      v37 = &v75;
      v75 = v34;
      v38 = &v74;
      v74 = v35;
      sub_1C5419E14(2, &v76);
      sub_1C5419E14(1, v36);
      v72 = v58;
      v73 = v46;
      sub_1C5419E28(&v72, v36, v37, v38);
      v39 = v27;
      if (v27)
      {

        __break(1u);
      }

      else
      {
        v72 = v59;
        v73 = v47;
        sub_1C5419E28(&v72, &v76, &v75, &v74);
        v31 = 0;
        v72 = v60;
        v73 = v49;
        sub_1C5419E28(&v72, &v76, &v75, &v74);
        _os_log_impl(&dword_1C5355000, v52, v53, "selection Changed %@", v33, 0xCu);
        sub_1C5419E74(v34, 1, v32);
        sub_1C5419E74(v35, 0, MEMORY[0x1E69E7CA0] + 8);
        sub_1C5596A54();
      }
    }

    else
    {
    }

    v28 = MEMORY[0x1E69E5920](v52);
    (*(v66 + 8))(v70, v65, v28);
    v30 = *(v55 + 8);
    swift_unknownObjectRetain();
    swift_getObjectType();
    [v30 didSelectLocalContactFor_];
    swift_unknownObjectRelease();
    *&result = MEMORY[0x1E69E5920](v40).n128_u64[0];
  }

  return result;
}

uint64_t sub_1C5503F80()
{
  v8 = v0;
  v9 = *(v0 + 8);
  v10 = *(v0 + 24);
  sub_1C55068A0(&v9, v7);
  v5 = v9;
  v6 = v10;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF88, &unk_1C55B4D38);
  MEMORY[0x1C6946C30](&v4, v1);
  v3 = v4;
  sub_1C54FB16C(&v9);
  return v3;
}

double sub_1C5504014(uint64_t a1)
{
  v10 = a1;
  v9 = v1;
  v11 = *(v1 + 8);
  v12 = *(v1 + 24);
  sub_1C55068A0(&v11, v8);
  sub_1C55068A0(&v11, v7);
  v5 = v11;
  v6 = v12;
  MEMORY[0x1E69E5928](a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF88, &unk_1C55B4D38);
  sub_1C55960A4();
  sub_1C54FB16C(&v5);
  sub_1C54FB16C(&v11);
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

void (*sub_1C55040F4(uint64_t **a1))(uint64_t **a1, uint64_t a2)
{
  v3 = __swift_coroFrameAllocStub(0xC8uLL, 21297);
  *a1 = v3;
  *v3 = *(v1 + 8);
  v3[2] = *(v1 + 24);
  sub_1C55068A0(v3, v3 + 3);
  *(v3 + 3) = *v3;
  v3[8] = v3[2];
  v3[24] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF88, &unk_1C55B4D38);
  MEMORY[0x1C6946C30]();
  return sub_1C55041D0;
}

void sub_1C55041D0(uint64_t **a1, uint64_t a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = v4[21];
    MEMORY[0x1E69E5928](v2, a2);
    sub_1C55068A0(v4, v4 + 9);
    *(v4 + 6) = *v4;
    v4[14] = v4[2];
    v4[22] = v2;
    sub_1C55960A4();
    sub_1C54FB16C(v4 + 12);
    sub_1C5401EF8(v4 + 21);
  }

  else
  {
    v3 = v4[21];
    sub_1C55068A0(v4, v4 + 15);
    *(v4 + 9) = *v4;
    v4[20] = v4[2];
    v4[23] = v3;
    sub_1C55960A4();
    sub_1C54FB16C(v4 + 18);
  }

  sub_1C54FB16C(v4);
  free(v4);
}

uint64_t sub_1C55042F4()
{
  v4 = v0;
  v5 = *(v0 + 8);
  v6 = *(v0 + 24);
  sub_1C55068A0(&v5, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF88, &unk_1C55B4D38);
  sub_1C55960C4();
  sub_1C54FB16C(&v5);
  return v2;
}

uint64_t sub_1C55043A0()
{
  v4 = *(v0 + 8);
  v3 = *(v0 + 24);

  MEMORY[0x1E69E5928](v3, v1);
  return v4;
}

double sub_1C55043FC(uint64_t a1, uint64_t a2, uint64_t a3)
{

  MEMORY[0x1E69E5928](a3, v4);
  v6 = v3[3];
  v3[1] = a1;
  v3[2] = a2;
  v3[3] = a3;

  MEMORY[0x1E69E5920](v6);

  *&result = MEMORY[0x1E69E5920](a3).n128_u64[0];
  return result;
}

uint64_t sub_1C55044A8()
{
  v8 = v0;
  v9 = *(v0 + 32);
  v10 = *(v0 + 48);
  sub_1C54AFE90(&v9, v7);
  v5 = v9;
  v6 = v10;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E8A0, &qword_1C55B2350);
  MEMORY[0x1C6946C30](&v4, v1);
  v3 = v4;
  sub_1C5436F54(&v9);
  return v3 & 1;
}

void *sub_1C5504540(char a1)
{
  v8 = a1 & 1;
  v7 = v1;
  v9 = *(v1 + 32);
  v10 = *(v1 + 48);
  sub_1C54AFE90(&v9, v6);
  sub_1C54AFE90(&v9, v5);
  v3 = v9;
  v4 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E8A0, &qword_1C55B2350);
  sub_1C55960A4();
  sub_1C5436F54(&v3);
  result = &v9;
  sub_1C5436F54(&v9);
  return result;
}

void (*sub_1C5504608(uint64_t **a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0xB0uLL, 63683);
  *a1 = v3;
  *v3 = *(v1 + 32);
  *(v3 + 16) = *(v1 + 48);
  sub_1C54AFE90(v3, (v3 + 3));
  *(v3 + 3) = *v3;
  *(v3 + 64) = *(v3 + 16);
  v3[21] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E8A0, &qword_1C55B2350);
  MEMORY[0x1C6946C30]();
  return sub_1C55046E4;
}

void sub_1C55046E4(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = *(v4 + 17);
    sub_1C54AFE90(v4, v4 + 72);
    *(v4 + 96) = *v4;
    *(v4 + 112) = *(v4 + 16);
    *(v4 + 18) = v2;
    sub_1C55960A4();
    sub_1C5436F54((v4 + 96));
  }

  else
  {
    v3 = *(v4 + 17);
    sub_1C54AFE90(v4, v4 + 120);
    *(v4 + 144) = *v4;
    *(v4 + 160) = *(v4 + 16);
    *(v4 + 19) = v3;
    sub_1C55960A4();
    sub_1C5436F54((v4 + 144));
  }

  sub_1C5436F54(v4);
  free(v4);
}

uint64_t sub_1C55047E8()
{
  v4 = v0;
  v5 = *(v0 + 32);
  v6 = *(v0 + 48);
  sub_1C54AFE90(&v5, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E8A0, &qword_1C55B2350);
  sub_1C55960C4();
  sub_1C5436F54(&v5);
  return v2;
}

uint64_t sub_1C5504898()
{
  v2 = *(v0 + 32);

  return v2;
}

uint64_t sub_1C55048E8(uint64_t a1, uint64_t a2, char a3)
{

  *(v3 + 32) = a1;
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
}

uint64_t sub_1C5504968()
{
  v2 = *(v0 + 72);
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C55049A0()
{
  v2 = *(v0 + 88);

  return v2;
}

uint64_t sub_1C55049CC@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v14 = sub_1C550691C;
  v23 = sub_1C55069AC;
  v28 = MEMORY[0x1E6981218];
  v46 = 0;
  __src = v47;
  __n = 96;
  memcpy(v47, v1, sizeof(v47));
  memcpy(v48, v47, sizeof(v48));
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF90, &qword_1C55B4D48);
  v29 = *(v35 - 8);
  v30 = v35 - 8;
  v12 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v35, v2, v3, v4);
  v33 = &v10 - v12;
  v13 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v10 - v12, v6, v7, v8);
  v34 = &v10 - v13;
  v46 = &v10 - v13;
  sub_1C55066E0(v1, &v44);
  v15 = &v38;
  v39 = v1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF98, &qword_1C55B4D50);
  v17 = sub_1C5506924();
  sub_1C544B78C();
  v18 = &v45;
  sub_1C5596064();
  sub_1C5506810(v21);
  v19 = v49;
  v20 = 288;
  memcpy(v49, v18, sizeof(v49));
  v25 = v43;
  memcpy(v43, v49, sizeof(v43));
  sub_1C55066E0(v21, &v42);
  v24 = swift_allocObject();
  memcpy((v24 + 16), v21, __n);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DFA8, qword_1C55B4D58);
  v27 = sub_1C55069B4();
  sub_1C543AECC();
  sub_1C5595B44();

  sub_1C5506A3C(v25);
  v40 = v26;
  v41 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C540EFD8(v33, v35, v34);
  v37 = *(v29 + 8);
  v36 = v29 + 8;
  v37(v33, v35);
  (*(v29 + 16))(v33, v34, v35);
  sub_1C540EFD8(v33, v35, v31);
  v37(v33, v35);
  return (v37)(v34, v35);
}

uint64_t *sub_1C5504D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = v117;
  v57 = a2;
  v94 = a1;
  v147 = 0;
  memset(v119, 0, sizeof(v119));
  v62 = 0;
  v75 = sub_1C5595F04();
  v73 = *(v75 - 8);
  v74 = v75 - 8;
  v58 = (*(v73 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v2, v3, v4);
  v76 = &v20 - v58;
  v147 = v5;
  v80 = 1;
  v143 = sub_1C5596044();
  v144 = v6 & 1;
  v59 = *(v94 + 64);
  v60 = MEMORY[0x1E6981840];
  v61 = MEMORY[0x1E6981838];
  sub_1C5410F68();
  v63 = &v145;
  v83 = 0;
  sub_1C5595D14();
  v64 = __dst;
  v65 = 64;
  memcpy(__dst, v63, sizeof(__dst));
  v67 = v142;
  memcpy(v142, __dst, sizeof(v142));
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DFB8, &qword_1C55B4FE8);
  v68 = sub_1C55071EC();
  sub_1C540EFD8(v67, v66, v146);
  v77 = *(v94 + 88);

  v69 = sub_1C54127B4();
  v70 = v7;
  v71 = v8;
  v72 = v9;
  sub_1C54127C8(v76);
  v78 = sub_1C5595F44();
  (*(v73 + 8))(v76, v75);

  v79 = v135;
  v135[0] = v78;
  sub_1C5595B54();
  sub_1C5410D10(v79);
  v86 = v132;
  v132[0] = v135[1];
  v132[1] = v135[2];
  v133 = v136 & 1 & v80;
  v134 = v137;
  v81 = *(v94 + 56);
  v82 = *(v94 + 56);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BED8, &unk_1C55ADDF0);
  v85 = sub_1C5413D10();
  sub_1C5410F68();
  v87 = &v138;
  sub_1C5595D14();
  sub_1C5410D10(v86);
  v88 = v150;
  v89 = 72;
  memcpy(v150, v87, sizeof(v150));
  v95 = v131;
  memcpy(v131, v150, sizeof(v131));
  sub_1C5596014();
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15BEC8, &qword_1C55B7380);
  v92 = sub_1C5413C6C();
  v93 = sub_1C546FC00();
  v91 = MEMORY[0x1E69817E8];
  v130 = sub_1C546EEB4();
  v129 = v130;
  v96 = &v139;
  sub_1C5595E04();
  v10 = v94;
  sub_1C5410D10(v95);
  v97 = v151;
  v98 = 74;
  memcpy(v151, v96, 0x4AuLL);
  memcpy(v128, v151, 0x4AuLL);
  sub_1C5596014();
  v99 = *v10;
  MEMORY[0x1E69E5928](v99, v11);
  MEMORY[0x1E69E5928](v99, v12);
  v100 = sub_1C5503F80();
  MEMORY[0x1E69E5928](v100, v13);
  v125 = v99;
  v126 = v100;
  if (v99)
  {
    sub_1C5402C1C(&v125, &v103);
    if (v126)
    {
      v102 = v103;
      v53 = &v125;
      v101 = v126;
      sub_1C5403328();
      v54 = sub_1C5596A34();
      MEMORY[0x1E69E5920](v101);
      MEMORY[0x1E69E5920](v102);
      sub_1C5401EF8(v53);
      v55 = v54;
      goto LABEL_7;
    }

    MEMORY[0x1E69E5920](v103);
    goto LABEL_9;
  }

  if (v126)
  {
LABEL_9:
    sub_1C550728C(&v125);
    v55 = 0;
    goto LABEL_7;
  }

  sub_1C5401EF8(&v125);
  v55 = 1;
LABEL_7:
  v52 = v55;
  MEMORY[0x1E69E5920](v100);
  MEMORY[0x1E69E5920](v99);
  if (v52)
  {
    v51 = sub_1C5595E54();
  }

  else
  {
    v51 = sub_1C5595E74();
  }

  v24 = &v122;
  v122 = v51;
  v20 = *(v94 + 64);
  v21 = MEMORY[0x1E69817E8];
  v22 = MEMORY[0x1E69815C0];
  v23 = MEMORY[0x1E6981568];
  v14 = sub_1C55055EC();
  v25 = v127;
  sub_1C5505608(v24, v14 & 1, v21, v22, v93, v23, v127);
  sub_1C5410D10(v24);
  v26 = v123;
  v27 = 72;
  memcpy(v123, v25, sizeof(v123));
  v33 = v121;
  memcpy(v121, v123, sizeof(v121));
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DFC8, &qword_1C55B4FF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DFD0, &unk_1C55B4FF8);
  v30 = sub_1C55072D4();
  v31 = sub_1C550737C();
  v32 = sub_1C55056A4(v28);
  v35 = &v140;
  v34 = v128;
  sub_1C5595D64();
  sub_1C5507404(v33);
  sub_1C5410D10(v34);
  v36 = v124;
  v37 = 168;
  memcpy(v124, v35, sizeof(v124));
  v38 = v120;
  memcpy(v120, v124, sizeof(v120));
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DFE0, &qword_1C55B5008);
  v44 = sub_1C550743C();
  v50 = v141;
  sub_1C540EFD8(v38, v42, v141);
  sub_1C550756C(v38);
  v56[97] = *(v94 + 72);
  sub_1C5402BDC(v148, &v118);
  v15 = v56[97];
  v39 = v117;
  *v56 = v15;
  sub_1C54141E8();
  v113 = sub_1C5595A04();
  v114 = v16;
  v115 = v17;
  v116 = v18;
  v40 = v110;
  v110[0] = v113;
  v110[1] = v16;
  v111 = v17 & 1;
  v112 = v18;
  v49 = v119;
  v43 = MEMORY[0x1E6981148];
  v45 = MEMORY[0x1E6981138];
  sub_1C540EFD8(v110, MEMORY[0x1E6981148], v119);
  sub_1C5414260(v40);
  v41 = v108;
  memcpy(v108, v146, sizeof(v108));
  v46 = v109;
  v109[0] = v108;
  v48 = v107;
  sub_1C55075B0(v50, v107);
  v109[1] = v48;
  v47 = v106;
  sub_1C54142A8(v49, v106);
  v109[2] = v47;
  v105[0] = v66;
  v105[1] = v42;
  v105[2] = v43;
  v104[0] = v68;
  v104[1] = v44;
  v104[2] = v45;
  sub_1C540F5A0(v46, 3uLL, v105, v104, v57);
  sub_1C5414260(v47);
  sub_1C550756C(v48);
  sub_1C5414260(v49);
  result = v50;
  sub_1C550756C(v50);
  return result;
}

void sub_1C5505608(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t x8_0@<X8>)
{
  v17 = a3;
  v16 = a4;
  sub_1C5475D2C();
  sub_1C5595084();
  sub_1C55057A4(a1, v15, a2 & 1, a3, a4, a5, a6, x8_0);
  sub_1C550769C(v15);
}

uint64_t sub_1C55056CC(uint64_t *a1, uint64_t a2)
{
  v5[4] = a1;
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1, a2);
  sub_1C5504014(v3);
  v4 = sub_1C5504608(v5);
  sub_1C5596794();
  return v4();
}

uint64_t sub_1C55057A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v23 = a8;
  v20 = a1;
  v25 = a2;
  v26 = a3;
  v28 = a4;
  v29 = a5;
  v21 = a6;
  v22 = a7;
  v33 = a4;
  v32 = a5;
  v18 = *(a5 - 8);
  v19 = a5 - 8;
  v15 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1, v8, a4, a4);
  v24 = &v14 - v15;
  v17 = *(v9 - 8);
  v16 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](&v14 - v15, v10, v9, v11);
  v30 = &v14 - v16;
  (*(v17 + 16))(v12);
  (*(v18 + 16))(v24, v20, v29);
  sub_1C55076C8(v25, v31);
  return sub_1C5505958(v30, v24, v25, v26 & 1, v27, v28, v29, MEMORY[0x1E6981E70], v23, v21, v22, MEMORY[0x1E6981E60]);
}

uint64_t sub_1C5505958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v60 = a9;
  v53 = a1;
  v49 = a2;
  v35 = a3;
  v38 = a4;
  v46 = a5;
  v54 = a6;
  v50 = a7;
  v58 = a8;
  v36 = a10;
  v42 = a11;
  v59 = a12;
  v31 = MEMORY[0x1E697E298];
  v73 = a6;
  v72 = a7;
  v71 = a8;
  v44 = *(a8 - 8);
  v45 = a8 - 8;
  v26 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1, a8, a12, a4);
  v55 = &v25 - v26;
  v33 = 0;
  v64 = sub_1C55954A4();
  v27 = (*(*(v64 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v33, v54, v36, v12);
  v62 = &v25 - v27;
  v47 = *(v13 - 8);
  v48 = v13 - 8;
  v28 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14, v15, v16, &v25 - v27);
  v39 = &v25 - v28;
  v51 = *(v17 - 8);
  v52 = v17 - 8;
  v29 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18, v17, v19, &v25 - v28);
  v37 = &v25 - v29;
  v40 = sub_1C5595124();
  v32 = (*(*(v40 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v31, v40, v30, v20);
  v43 = &v25 - v32;
  WitnessTable = swift_getWitnessTable();
  v67 = v40;
  v68 = v50;
  v69 = WitnessTable;
  v70 = v42;
  v63 = sub_1C5594FB4();
  v34 = (*(*(v63 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = MEMORY[0x1EEE9AC00](v37, v53, v54, v21);
  v61 = &v25 - v34;
  (*(v51 + 16))(v22);
  sub_1C5595114();
  (*(v47 + 16))(v39, v49, v50);
  v65 = 0;
  v66 = v38;
  sub_1C5594FA4();
  (*(v44 + 16))(v55, v46, v58);
  v56 = sub_1C5410F68();
  v57 = v23;
  (*(v44 + 8))(v46, v58);
  (*(v47 + 8))(v49, v50);
  (*(v51 + 8))(v53, v54);
  sub_1C5595494();
  return sub_1C5595204();
}

unint64_t sub_1C5505E94()
{
  v2 = qword_1EC15DF00;
  if (!qword_1EC15DF00)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15DF00);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1C5505EF8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1, a2);
  *a2 = v3;
  v4 = a1[1];
  swift_unknownObjectRetain();
  *(a2 + 8) = v4;
  v5 = a1[2];
  MEMORY[0x1E69E5928](v5, a2);
  *(a2 + 16) = v5;
  v6 = a1[3];

  *(a2 + 24) = v6;
  *(a2 + 32) = *(a1 + 32);
  v8 = a1[5];

  result = a2;
  *(a2 + 40) = v8;
  *(a2 + 48) = a1[6];
  *(a2 + 56) = a1[7];
  *(a2 + 64) = a1[8];
  return result;
}

void *sub_1C5505FD8(void *a1)
{
  MEMORY[0x1E69E5920](*a1);
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](a1[2]);

  return a1;
}

void *sub_1C550606C(void *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1, a2);
  *a2 = v3;
  v6 = a1[1];

  result = a2;
  a2[1] = v6;
  return result;
}

unint64_t sub_1C5506124()
{
  v2 = qword_1EC15DF40;
  if (!qword_1EC15DF40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DF38, &qword_1C55B4D00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DF40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C55061AC()
{
  v2 = qword_1EC15DF48;
  if (!qword_1EC15DF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DF20, &qword_1C55B4CE8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DF48);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5506234(uint64_t a1)
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF50, &qword_1C55B4D08) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF58, &qword_1C55B4D10);
  if (!swift_getEnumCaseMultiPayload())
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF60, &qword_1C55B4D18);
    (*(*(v1 - 8) + 8))();
    v7 = a1 + v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF68, &qword_1C55B4D20) + 36);
    v2 = sub_1C5595754();
    (*(*(v2 - 8) + 8))(v7);
  }

  v5 = a1 + v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF70, &qword_1C55B4D28) + 64);
  sub_1C5412EA0(*v5, *(v5 + 8), *(v5 + 16) & 1);

  v6 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF78, &qword_1C55B4D30) + 36);
  v3 = sub_1C5595754();
  (*(*(v3 - 8) + 8))(v6);
  return a1;
}

unint64_t sub_1C5506420()
{
  v2 = qword_1EC15DF80;
  if (!qword_1EC15DF80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DF28, &qword_1C55B4CF0);
    sub_1C55061AC();
    sub_1C54778A8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DF80);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C55064C8(uint64_t a1)
{
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF50, &qword_1C55B4D08) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF58, &qword_1C55B4D10);
  if (!swift_getEnumCaseMultiPayload())
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF60, &qword_1C55B4D18);
    (*(*(v1 - 8) + 8))();
    v9 = a1 + v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF68, &qword_1C55B4D20) + 36);
    v2 = sub_1C5595754();
    (*(*(v2 - 8) + 8))(v9);
  }

  v5 = a1 + v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF70, &qword_1C55B4D28) + 64);
  sub_1C5412EA0(*v5, *(v5 + 8), *(v5 + 16) & 1);

  v6 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF78, &qword_1C55B4D30) + 36);
  v7 = sub_1C5595754();
  v8 = *(*(v7 - 8) + 8);
  v8(v6);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF28, &qword_1C55B4CF0);
  (v8)(a1 + *(v3 + 36), v7);
  return a1;
}

uint64_t sub_1C55066E0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1, a2);
  *a2 = v3;
  v4 = a1[1];

  *(a2 + 8) = v4;
  v5 = a1[2];

  *(a2 + 16) = v5;
  v6 = a1[3];
  MEMORY[0x1E69E5928](v6, a2);
  *(a2 + 24) = v6;
  v7 = a1[4];

  *(a2 + 32) = v7;
  v8 = a1[5];

  *(a2 + 40) = v8;
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 56) = a1[7];
  *(a2 + 64) = a1[8];
  *(a2 + 72) = a1[9];
  v10 = a1[10];
  sub_1C5594CF4();
  *(a2 + 80) = v10;
  v12 = a1[11];

  result = a2;
  *(a2 + 88) = v12;
  return result;
}

void *sub_1C5506810(void *a1)
{
  MEMORY[0x1E69E5920](*a1);

  MEMORY[0x1E69E5920](a1[3]);

  return a1;
}

void *sub_1C55068A0(uint64_t *a1, void *a2)
{
  v3 = *a1;

  *a2 = v3;
  v5 = a1[1];

  a2[1] = v5;
  v6 = a1[2];
  MEMORY[0x1E69E5928](v6, a2);
  result = a2;
  a2[2] = v6;
  return result;
}

unint64_t sub_1C5506924()
{
  v2 = qword_1EC15DFA0;
  if (!qword_1EC15DFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DF98, &qword_1C55B4D50);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DFA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C55069B4()
{
  v2 = qword_1EC15DFB0;
  if (!qword_1EC15DFB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DFA8, qword_1C55B4D58);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DFB0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5506A3C(uint64_t a1)
{

  sub_1C5412EA0(*(a1 + 256), *(a1 + 264), *(a1 + 272) & 1);

  return a1;
}

uint64_t sub_1C5506B2C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C5506B74(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C5506C8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_1C5506ED0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C5506FE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 88) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_1C55071EC()
{
  v2 = qword_1EC15DFC0;
  if (!qword_1EC15DFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DFB8, &qword_1C55B4FE8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DFC0);
    return WitnessTable;
  }

  return v2;
}

void *sub_1C550728C(void *a1)
{
  MEMORY[0x1E69E5920](*a1);
  MEMORY[0x1E69E5920](a1[1]);
  return a1;
}

unint64_t sub_1C55072D4()
{
  v2 = qword_1EC15A000;
  if (!qword_1EC15A000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DFC8, &qword_1C55B4FF0);
    sub_1C5413C6C();
    sub_1C546FD20();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15A000);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C550737C()
{
  v2 = qword_1EC15DFD8;
  if (!qword_1EC15DFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DFD0, &unk_1C55B4FF8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DFD8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C550743C()
{
  v2 = qword_1EC15DFE8;
  if (!qword_1EC15DFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DFE0, &qword_1C55B5008);
    sub_1C55072D4();
    sub_1C55074E4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DFE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C55074E4()
{
  v2 = qword_1EC15DFF0;
  if (!qword_1EC15DFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DFF8, &qword_1C55B5010);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DFF0);
    return WitnessTable;
  }

  return v2;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1C550756C(void *a1)
{
}

__n128 sub_1C55075B0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *a2 = v3;
  *(a2 + 8) = a1[1];
  *(a2 + 16) = *(a1 + 8);
  memcpy((a2 + 24), a1 + 3, 0x32uLL);
  *(a2 + 80) = a1[10];
  *(a2 + 88) = *(a1 + 22);
  *(a2 + 92) = *(a1 + 23);
  *(a2 + 96) = a1[12];
  v4 = a1[13];
  sub_1C5594CF4();
  *(a2 + 104) = v4;
  *(a2 + 112) = a1[14];
  v6 = a1[15];

  *(a2 + 120) = v6;
  *(a2 + 128) = *(a1 + 64);
  *(a2 + 136) = *(a1 + 17);
  result = *(a1 + 19);
  *(a2 + 152) = result;
  return result;
}

uint64_t sub_1C55076C8(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  v4 = *(a1 + 24);
  sub_1C5594CF4();
  result = a2;
  *(a2 + 24) = v4;
  *(a2 + 32) = *(a1 + 32);
  return result;
}

unint64_t sub_1C5507730()
{
  v2 = qword_1EC15E008;
  if (!qword_1EC15E008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DF68, &qword_1C55B4D20);
    sub_1C55077D8();
    sub_1C54778A8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E008);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C55077D8()
{
  v2 = qword_1EC15E010;
  if (!qword_1EC15E010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DF60, &qword_1C55B4D18);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E010);
    return WitnessTable;
  }

  return v2;
}

char *sub_1C5507860(char *a1, char *a2)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF58, &qword_1C55B4D10);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a2, a1, *(*(v10 - 8) + 64));
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF60, &qword_1C55B4D18);
    (*(*(v2 - 8) + 32))(a2, a1);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF68, &qword_1C55B4D20);
    v7 = &a2[*(v3 + 36)];
    v6 = &a1[*(v3 + 36)];
    v4 = sub_1C5595754();
    (*(*(v4 - 8) + 32))(v7, v6);
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

unint64_t sub_1C55079AC()
{
  v2 = qword_1EC15E020;
  if (!qword_1EC15E020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E018, &qword_1C55B5020);
    sub_1C546FF30();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E020);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5507A50()
{
  v2 = qword_1EC15E030;
  if (!qword_1EC15E030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E028, &unk_1C55B5028);
    sub_1C55079AC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E030);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5507AF4()
{
  v2 = qword_1EC15E038;
  if (!qword_1EC15E038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DF78, &qword_1C55B4D30);
    sub_1C5507A50();
    sub_1C54778A8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E038);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5507B9C(uint64_t a1)
{
  sub_1C5412EA0(*a1, *(a1 + 8), *(a1 + 16) & 1);

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF78, &qword_1C55B4D30) + 36);
  v1 = sub_1C5595754();
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

char *sub_1C5507C4C(char *a1, char *a2)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF58, &qword_1C55B4D10);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a2, a1, *(*(v10 - 8) + 64));
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF60, &qword_1C55B4D18);
    (*(*(v2 - 8) + 16))(a2, a1);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF68, &qword_1C55B4D20);
    v7 = &a2[*(v3 + 36)];
    v6 = &a1[*(v3 + 36)];
    v4 = sub_1C5595754();
    (*(*(v4 - 8) + 16))(v7, v6);
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

uint64_t sub_1C5507D98(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  sub_1C54130AC(*a1, v5, v6 & 1);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  v7 = *(a1 + 24);
  sub_1C5594CF4();
  *(a2 + 24) = v7;
  v8 = *(a1 + 32);

  *(a2 + 32) = v8;
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 41) = *(a1 + 41);
  memcpy((a2 + 48), (a1 + 48), 0x29uLL);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF78, &qword_1C55B4D30) + 36);
  v2 = sub_1C5595754();
  (*(*(v2 - 8) + 16))(a2 + v9, a1 + v9);
  return a2;
}

unint64_t sub_1C5507EE0()
{
  v2 = qword_1EC15E040;
  if (!qword_1EC15E040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E000, &qword_1C55B5018);
    sub_1C5507730();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E040);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5507F84(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF58, &qword_1C55B4D10);
  if (!swift_getEnumCaseMultiPayload())
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF60, &qword_1C55B4D18);
    (*(*(v1 - 8) + 8))(a1);
    v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF68, &qword_1C55B4D20) + 36);
    v2 = sub_1C5595754();
    (*(*(v2 - 8) + 8))(v4);
  }

  return a1;
}

unint64_t sub_1C5508090()
{
  v2 = qword_1EC15E050;
  if (!qword_1EC15E050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E048, &qword_1C55B5038);
    sub_1C5508138();
    sub_1C5508264();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E050);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5508138()
{
  v2 = qword_1EC15E058;
  if (!qword_1EC15E058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E060, &qword_1C55B5040);
    sub_1C55081DC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E058);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C55081DC()
{
  v2 = qword_1EC15E068;
  if (!qword_1EC15E068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E070, &qword_1C55B5048);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E068);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5508264()
{
  v2 = qword_1EC15E078;
  if (!qword_1EC15E078)
  {
    sub_1C5595644();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E078);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C55082E4(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF60, &qword_1C55B4D18);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF68, &qword_1C55B4D20) + 36);
  v2 = sub_1C5595754();
  (*(*(v2 - 8) + 8))(a1 + v4);
  return a1;
}

uint64_t sub_1C55083A8(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF60, &qword_1C55B4D18);
  (*(*(v2 - 8) + 16))(a2, a1);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DF68, &qword_1C55B4D20) + 36);
  v3 = sub_1C5595754();
  (*(*(v3 - 8) + 16))(a2 + v5, a1 + v5);
  return a2;
}

unint64_t sub_1C55084A4()
{
  v2 = qword_1EC15E088;
  if (!qword_1EC15E088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E080, &qword_1C55B5050);
    sub_1C550853C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E088);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C550853C()
{
  v2 = qword_1EC15E090;
  if (!qword_1EC15E090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E098, &qword_1C55B5058);
    sub_1C55085E4();
    sub_1C54778A8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E090);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C55085E4()
{
  v2 = qword_1EC15E0A0;
  if (!qword_1EC15E0A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E0A8, &unk_1C55B5060);
    sub_1C5508688();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E0A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5508688()
{
  v2 = qword_1EC15E0B0;
  if (!qword_1EC15E0B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E0B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5508704(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E070, &qword_1C55B5048);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_1C550876C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E070, &qword_1C55B5048);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E048, &qword_1C55B5038) + 36);
  v2 = sub_1C5595644();
  (*(*(v2 - 8) + 8))(a1 + v4);
  return a1;
}

uint64_t sub_1C5508830(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E070, &qword_1C55B5048);
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E060, &qword_1C55B5040);
  memcpy((a2 + *(v3 + 36)), (a1 + *(v3 + 36)), 0x29uLL);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E048, &qword_1C55B5038) + 36);
  v4 = sub_1C5595644();
  (*(*(v4 - 8) + 16))(a2 + v6, a1 + v6);
  return a2;
}

unint64_t sub_1C550894C()
{
  v2 = qword_1EC15E0B8;
  if (!qword_1EC15E0B8)
  {
    sub_1C5595594();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E0B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C55089E4()
{
  v2 = qword_1EC15E0C0;
  if (!qword_1EC15E0C0)
  {
    sub_1C5403328();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E0C0);
    return WitnessTable;
  }

  return v2;
}

char *sub_1C5508A64(char *a1)
{
  MEMORY[0x1E69E5920](*a1);

  MEMORY[0x1E69E5920](*(a1 + 3));

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E098, &qword_1C55B5058) + 36);
  v1 = sub_1C5595754();
  (*(*(v1 - 8) + 8))(&a1[v3]);
  return a1;
}

uint64_t sub_1C5508B50(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  MEMORY[0x1E69E5928](*a1, a2);
  *a2 = v4;
  v5 = a1[1];

  *(a2 + 8) = v5;
  v6 = a1[2];

  *(a2 + 16) = v6;
  v7 = a1[3];
  MEMORY[0x1E69E5928](v7, a2);
  *(a2 + 24) = v7;
  v8 = a1[4];

  *(a2 + 32) = v8;
  v9 = a1[5];

  *(a2 + 40) = v9;
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 56) = a1[7];
  *(a2 + 64) = a1[8];
  *(a2 + 72) = a1[9];
  v10 = a1[10];
  sub_1C5594CF4();
  *(a2 + 80) = v10;
  v11 = a1[11];

  *(a2 + 88) = v11;
  memcpy((a2 + 96), a1 + 12, 0x29uLL);
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E098, &qword_1C55B5058) + 36);
  v2 = sub_1C5595754();
  (*(*(v2 - 8) + 16))(a2 + v12, a1 + v12);
  return a2;
}

uint64_t sub_1C5508D0C()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E0D0, &qword_1C55AEA90);
  sub_1C5595F84();

  return v1;
}

uint64_t sub_1C5508DA0(uint64_t a1)
{
  v5[2] = 0;
  v5[3] = a1;
  v3 = *v1;
  v4 = v1[1];

  v5[0] = v3;
  v5[1] = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E0D0, &qword_1C55AEA90);
  sub_1C5595F94();
  sub_1C5436F54(v5);
}

void (*sub_1C5508E74(void *a1))(void **a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0x60uLL, 60477);
  *a1 = v1;
  v4 = *v3;
  v1[9] = *v3;
  v5 = v3[1];
  v1[10] = v5;

  *v1 = v4;
  v1[1] = v5;
  v1[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E0D0, &qword_1C55AEA90);
  sub_1C5595F84();
  return sub_1C5437078;
}

uint64_t sub_1C5508F4C()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E0D0, &qword_1C55AEA90);
  sub_1C5595FA4();

  return v1;
}

uint64_t sub_1C5508FF8()
{
  v2 = *v0;

  return v2;
}

uint64_t sub_1C5509040(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_1C55090C8(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  MEMORY[0x1E69E5928](v4, a2);
  return v4;
}

uint64_t sub_1C5509104()
{
  v2 = *(v0 + 24);
  swift_unknownObjectRetain();
  return v2;
}

uint64_t ShareAutomaticallyPickerRowView.id.getter()
{
  v2 = *(v0 + 32);
  sub_1C5594CF4();
  return v2;
}

uint64_t ShareAutomaticallyPickerRowView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v80 = a1;
  v36 = sub_1C550A170;
  v48 = sub_1C550B03C;
  v53 = sub_1C550B198;
  v68 = MEMORY[0x1E6981440];
  v69 = sub_1C550B6BC;
  v93 = 0;
  v57 = 0;
  v75 = sub_1C5596A04();
  v72 = *(v75 - 8);
  v73 = v75 - 8;
  v28 = (*(v72 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v75, v1, v2, v3);
  v74 = &v27 - v28;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E0D8, &qword_1C55B5088);
  v29 = (*(*(v44 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v44, v4, v5, v6);
  v46 = &v27 - v29;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E0E0, &qword_1C55B5090);
  v30 = (*(*(v47 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v47, v7, v8, v9);
  v50 = &v27 - v30;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E0E8, &qword_1C55B5098);
  v31 = (*(*(v64 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v64, v10, v11, v12);
  v56 = &v27 - v31;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E0F0, &qword_1C55B50A0);
  v76 = *(v79 - 8);
  v77 = v79 - 8;
  v32 = (*(v76 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v79, v13, v14, v15);
  v78 = &v27 - v32;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E0F8, &qword_1C55B50A8);
  v34 = (*(*(v81 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v81, v33, v16, v17);
  v83 = &v27 - v34;
  v35 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v27 - v34, v19, v20, v21);
  v84 = &v27 - v35;
  v93 = &v27 - v35;
  v62 = __dst;
  v63 = 48;
  memcpy(__dst, v22, sizeof(__dst));
  sub_1C550A0B4(__dst, v92);
  v37 = v85;
  v85[2] = v62;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E100, &qword_1C55B50B0);
  v39 = sub_1C550AE3C();
  sub_1C5412C88();
  v43 = 1;
  sub_1C5596024();
  sub_1C550AEC4(v62);
  v41 = sub_1C5596E04();
  v40 = v23;
  *v23 = sub_1C55957E4();
  v40[1] = sub_1C55957F4();
  sub_1C540FCD8();
  v42 = v24;
  sub_1C54DA7DC();
  sub_1C5596B04();
  v45 = v91;
  sub_1C550AF28();
  sub_1C5595D84();
  sub_1C536B738(v46);
  sub_1C550A0B4(v62, v90);
  v60 = 64;
  v61 = 7;
  v49 = swift_allocObject();
  memcpy((v49 + 16), v62, v63);
  sub_1C550B044();
  sub_1C5595DC4();
  sub_1C5411348(v48, v49);
  sub_1C536B738(v50);
  memcpy(v89, v62, v63);
  v51 = sub_1C5508D0C();
  v52 = (*(*v51 + 248))(v51);

  v54 = &v88;
  v88 = v52;
  sub_1C550A0B4(v62, v87);
  v55 = swift_allocObject();
  memcpy((v55 + 16), v62, v63);
  v65 = type metadata accessor for CNMeCardSharingAudience(v57);
  v66 = sub_1C550B1A0();
  v67 = sub_1C5498C6C();
  sub_1C543AE1C();
  sub_1C5595DD4();

  sub_1C536B894(v56);
  v59 = [objc_opt_self() defaultCenter];
  v58 = *sub_1C55415F0();
  MEMORY[0x1E69E5928](v58, v25);
  sub_1C5596A14();
  MEMORY[0x1E69E5920](v58);
  MEMORY[0x1E69E5920](v59);
  sub_1C550A0B4(v62, v86);
  v71 = swift_allocObject();
  memcpy((v71 + 16), v62, v63);
  v85[3] = v64;
  v85[4] = v65;
  v85[5] = v66;
  v85[6] = v67;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C5443C8C();
  sub_1C5595E34();

  (*(v72 + 8))(v74, v75);
  (*(v76 + 8))(v78, v79);
  v82 = sub_1C550B6C4();
  sub_1C540EFD8(v83, v81, v84);
  sub_1C536BA00(v83);
  sub_1C536BAE0(v84, v83);
  sub_1C540EFD8(v83, v81, v80);
  sub_1C536BA00(v83);
  return sub_1C536BA00(v84);
}

uint64_t sub_1C5509AA8@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v30 = a1;
  v41 = 0;
  v40 = sub_1C550A178;
  v60 = 0;
  v59 = 0;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E100, &qword_1C55B50B0);
  v47 = *(v53 - 8);
  v48 = v53 - 8;
  v19 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v30, v2, v3, v4);
  v51 = &v18 - v19;
  v20 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v6, &v18 - v19, v7, v8);
  v52 = &v18 - v20;
  v60 = &v18 - v20;
  v59 = v10;
  v21 = 1;
  v23 = sub_1C55965F4("Share Automatically", 19, 1, v9);
  v27 = v11;
  v37 = 0;
  sub_1C5439370();
  v26 = sub_1C5576C44();
  v22 = sub_1C55965F4("Picker title for sharing your name and photo automatically.", 59, v21 & 1);
  v25 = v12;
  sub_1C54398B0();
  v24 = v13;
  v28 = sub_1C55947B4();
  v29 = v14;

  MEMORY[0x1E69E5920](v26);

  v45 = v58;
  v58[0] = v28;
  v58[1] = v29;
  memcpy(__dst, v30, sizeof(__dst));
  v31 = sub_1C5508F4C();
  v32 = v15;
  v33 = v16;
  KeyPath = swift_getKeyPath();
  v56[6] = v31;
  v56[7] = v32;
  v56[8] = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C578, &unk_1C55AEDC0);
  sub_1C55960B4();
  v34 = v56[3];
  v35 = v56[4];
  v36 = v56[5];

  v39 = v56;
  v56[0] = v34;
  v56[1] = v35;
  v56[2] = v36;
  v42 = type metadata accessor for CNMeCardSharingAudience(v37);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E210, &qword_1C55B5530);
  v44 = sub_1C550C930();
  v38 = sub_1C550C9B0();
  sub_1C54141E8();
  sub_1C5596034();

  v50 = sub_1C550AE3C();
  sub_1C540EFD8(v51, v53, v52);
  v55 = *(v47 + 8);
  v54 = v47 + 8;
  v55(v51, v53);
  (*(v47 + 16))(v51, v52, v53);
  sub_1C540EFD8(v51, v53, v49);
  v55(v51, v53);
  return (v55)(v52, v53);
}

unint64_t sub_1C5509FBC()
{
  v2 = qword_1EC166D60;
  if (!qword_1EC166D60)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC166D60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C550A038()
{
  v2 = qword_1EC166D68[0];
  if (!qword_1EC166D68[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1EC166D68);
    return WitnessTable;
  }

  return v2;
}

void *sub_1C550A0B4(uint64_t *a1, void *a2)
{
  v3 = *a1;

  *a2 = v3;
  v4 = a1[1];

  a2[1] = v4;
  v5 = a1[2];
  MEMORY[0x1E69E5928](v5, a2);
  a2[2] = v5;
  v7 = a1[3];
  swift_unknownObjectRetain();
  a2[3] = v7;
  a2[4] = a1[4];
  v9 = a1[5];
  sub_1C5594CF4();
  result = a2;
  a2[5] = v9;
  return result;
}

uint64_t sub_1C550A178@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v65 = &unk_1C55CB688;
  v105 = 0;
  v89 = 0;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E230, &qword_1C55B5538);
  v69 = *(v71 - 8);
  v70 = v71 - 8;
  v46 = (v69[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v71, v1, v2, v3);
  v47 = v32 - v46;
  v48 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v32 - v46, v5, v6, v7);
  v49 = v32 - v48;
  v50 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v32 - v48, v9, v10, v11);
  v74 = v32 - v50;
  v51 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = MEMORY[0x1EEE9AC00](v32 - v50, v13, v14, v15);
  v67 = v32 - v51;
  v105 = v32 - v51;
  *&v57[1] = 1;
  sub_1C55965F4("Contacts Only", 13, 1, v16);
  v56 = sub_1C55953C4();
  v53 = v17;
  v54 = v18;
  v55 = v19;
  v58 = 0;
  v52 = sub_1C5439370();
  sub_1C5576C44();
  v102 = 0;
  v103 = 0;
  v104 = *v57 & 0x100;
  v98 = sub_1C55959E4();
  v99 = v20;
  v100 = v21;
  v101 = v22;
  v60 = v95;
  v95[0] = v98;
  v95[1] = v20;
  v96 = v21 & 1 & v57[1];
  v97 = v22;
  v59 = &v94;
  v66 = 1;
  v94 = 1;
  v62 = type metadata accessor for CNMeCardSharingAudience(v58);
  v64 = sub_1C550C930();
  v61 = MEMORY[0x1E6981148];
  v63 = MEMORY[0x1E6981138];
  v23 = sub_1C55055EC();
  sub_1C550A764(v59, v23 & 1, v61, v62, v63, v64, v74);
  sub_1C5414260(v60);
  v90 = v61;
  v91 = v62;
  v92 = v63;
  v93 = v64;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C540EFD8(v74, v71, v67);
  v72 = v69[1];
  v73 = v69 + 1;
  v72(v74, v71);
  v89 = v74;
  *&v36[1] = 1;
  sub_1C55965F4("Always Ask", 10, 1);
  v35 = sub_1C55953C4();
  v32[1] = v24;
  v33 = v25;
  v34 = v26;
  sub_1C5576C44();
  v86 = 0;
  v87 = 0;
  v88 = *v36 & 0x100;
  v82 = sub_1C55959E4();
  v83 = v27;
  v84 = v28;
  v85 = v29;
  v40 = v79;
  v79[0] = v82;
  v79[1] = v27;
  v80 = v28 & 1 & v36[1];
  v81 = v29;
  v39 = &v78;
  v43 = 2;
  v78 = 2;
  v37 = MEMORY[0x1E6981148];
  v38 = MEMORY[0x1E6981138];
  v30 = sub_1C55055EC();
  sub_1C550A764(v39, v30 & 1, v37, v62, v38, v64, v49);
  sub_1C5414260(v40);
  sub_1C540EFD8(v49, v71, v74);
  v72(v49, v71);
  v42 = v69[2];
  v41 = v69 + 2;
  v42(v49, v67, v71);
  v44 = v77;
  v77[0] = v49;
  v42(v47, v74, v71);
  v77[1] = v47;
  v76[0] = v71;
  v76[1] = v71;
  v75[0] = OpaqueTypeConformance2;
  v75[1] = OpaqueTypeConformance2;
  sub_1C540F5A0(v44, v43, v76, v75, v45);
  v72(v47, v71);
  v72(v49, v71);
  v72(v74, v71);
  return (v72)(v67, v71);
}

uint64_t *sub_1C550A764@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v64 = a6;
  v65 = a5;
  v66 = a4;
  v67 = a3;
  v68 = a1;
  v69 = a7;
  v70 = a2;
  v75 = a3;
  v74 = a4;
  if (sub_1C550BE94(26, 0, 0))
  {
    v62 = sub_1C5595694();
    v7 = *(*(v62 - 8) + 64);
    v63 = v25;
    v56 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x1EEE9AC00](v25, v68, v66, v8);
    v61 = v25 - v56;
    v57 = *(v9 - 8);
    v58 = v57;
    v60 = v25;
    v12 = MEMORY[0x1EEE9AC00](v25, v10, v9, v11);
    v59 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v58 + 16))(v12);
    sub_1C550C13C(v59, v70 & 1, v66, v61);
    MEMORY[0x1C6946950](v61, v67, v62, v65);
    sub_1C550C1D0(v61, v66);
    return v63;
  }

  else
  {
    v46 = 255;
    v41 = sub_1C5595274();
    WitnessTable = swift_getWitnessTable();
    v28 = sub_1C55955B4();
    v49 = 0;
    v29 = sub_1C5595214();
    v15 = *(*(v29 - 8) + 64);
    v30 = v25;
    v31 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x1EEE9AC00](0, v66, v64, v25);
    v40 = v25 - v31;
    v32 = v25 - v31;
    v44 = sub_1C5595264();
    v33 = v44;
    v16 = *(*(v44 - 8) + 64);
    v45 = v25;
    v34 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
    v17.n128_f64[0] = MEMORY[0x1EEE9AC00](v25, v68, v66, v44);
    v43 = v25 - v34;
    v37 = *(v18 - 8);
    v35 = *(v37 + 16);
    v36 = (v37 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v35(v17);
    v38 = *(v37 + 56);
    v39 = (v37 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    (v38)(v43, 0, 1, v66);
    sub_1C5595D44();
    sub_1C550BECC(v43, v66);
    v50 = sub_1C5596A94();
    v47 = v50;
    v73 = v64;
    v48 = swift_getWitnessTable();
    v51 = sub_1C5595274();
    v52 = sub_1C5595264();
    v19 = *(*(v52 - 8) + 64);
    v53 = v25;
    v54 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
    v22 = MEMORY[0x1EEE9AC00](v25, v52, v20, v21);
    v55 = v25 - v54;
    if (v23)
    {
      (v35)(v55, v68, v66, v22);
      v26 = 0;
      v27 = 1;
      v38(v55);
      (*(*(v47 - 8) + 56))(v55, v26, v27);
    }

    else
    {
      (*(*(v47 - 8) + 56))(v55, 1, v22);
    }

    v24 = swift_getWitnessTable();
    v71 = v65;
    v72 = v24;
    v25[1] = swift_getWitnessTable();
    swift_getWitnessTable();
    sub_1C5595D44();
    sub_1C550BF70(v55, v66, v47);
    sub_1C550C04C(v32, v67, v66, v33, v28, v29);
    return v30;
  }
}

unint64_t sub_1C550AE3C()
{
  v2 = qword_1EC15E108;
  if (!qword_1EC15E108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E100, &qword_1C55B50B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E108);
    return WitnessTable;
  }

  return v2;
}

void *sub_1C550AEC4(void *a1)
{

  MEMORY[0x1E69E5920](a1[2]);
  swift_unknownObjectRelease();

  return a1;
}

unint64_t sub_1C550AF28()
{
  v2 = qword_1EC15E118;
  if (!qword_1EC15E118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E0D8, &qword_1C55B5088);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E118);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C550AFB0(void *__src)
{
  v4 = __src;
  memcpy(__dst, __src, sizeof(__dst));
  v2 = sub_1C5508D0C();
  (*(*v2 + 544))(v2);
}

unint64_t sub_1C550B044()
{
  v2 = qword_1EC15E128;
  if (!qword_1EC15E128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E0E0, &qword_1C55B5090);
    sub_1C550AF28();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E128);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C550B0E8(uint64_t *a1, uint64_t *a2, void *__src)
{
  v9 = 0;
  v8 = 0;
  v7 = 0;
  v9 = *a1;
  v8 = *a2;
  v4 = v8;
  v7 = __src;
  memcpy(__dst, __src, sizeof(__dst));
  v5 = sub_1C5508D0C();
  (*(*v5 + 552))(v4);
}

unint64_t sub_1C550B1A0()
{
  v2 = qword_1EC15E130;
  if (!qword_1EC15E130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E0E8, &qword_1C55B5098);
    sub_1C550B044();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E130);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C550B244(uint64_t a1, __int128 *a2)
{
  v34 = a2;
  v33 = a1;
  v43 = 0;
  v55 = 0;
  v54 = 0;
  v32 = 0;
  v40 = sub_1C5594C74();
  v35 = v40;
  v36 = *(v40 - 8);
  v39 = v36;
  v37 = v36;
  MEMORY[0x1EEE9AC00](v33, v34, v40, v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v4;
  v55 = v5;
  v54 = v6;
  v7 = sub_1C54B05F8();
  (*(v39 + 16))(v4, v7, v40);
  v45 = sub_1C5594C54();
  v41 = v45;
  v44 = sub_1C5596944();
  v42 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  v46 = sub_1C5596E04();
  if (os_log_type_enabled(v45, v44))
  {
    v8 = v32;
    v23 = sub_1C5596A74();
    v19 = v23;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v21 = 0;
    v24 = sub_1C5419DC0(0, v20, v20);
    v22 = v24;
    v25 = sub_1C5419DC0(v21, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v50 = v23;
    v49 = v24;
    v48 = v25;
    v26 = 0;
    v27 = &v50;
    sub_1C5419E14(0, &v50);
    sub_1C5419E14(v26, v27);
    v47 = v46;
    v28 = &v16;
    MEMORY[0x1EEE9AC00](&v16, v9, v10, v11);
    v29 = &v16 - 6;
    *(&v16 - 4) = v12;
    *(&v16 - 3) = &v49;
    *(&v16 - 2) = &v48;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v31 = v8;
    if (v8)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v41, v42, "Updating Sharing Audience.", v19, 2u);
      v17 = 0;
      sub_1C5419E74(v22, 0, v20);
      sub_1C5419E74(v25, v17, MEMORY[0x1E69E7CA0] + 8);
      sub_1C5596A54();

      v18 = v31;
    }
  }

  else
  {

    v18 = v32;
  }

  (*(v37 + 8))(v38, v35);
  v13 = *v34;
  v14 = v34[1];
  v53 = v34[2];
  v52 = v14;
  v51 = v13;
  v16 = sub_1C5508D0C();
  (*(*v16 + 544))(v16);
}

unint64_t sub_1C550B6C4()
{
  v2 = qword_1EC15E148;
  if (!qword_1EC15E148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E0F8, &qword_1C55B50A8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E148);
    return WitnessTable;
  }

  return v2;
}

void *ShareAutomaticallyPickerRowView.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v33 = a2;
  v51 = a1;
  v64 = 0;
  memset(__b, 0, sizeof(__b));
  v62 = 0;
  v34 = 0;
  v35 = sub_1C55962E4();
  v36 = *(v35 - 8);
  v37 = v35 - 8;
  v38 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v2, v3, v4);
  v39 = v20 - v38;
  v40 = sub_1C5594994();
  v41 = *(v40 - 8);
  v42 = v40 - 8;
  v43 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v40, v5, v6, v7);
  v44 = v20 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E150, &qword_1C55B5110);
  v46 = *(v45 - 8);
  v47 = v45 - 8;
  v48 = (*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v51, v8, v9, v10);
  v52 = v20 - v48;
  v64 = v20 - v48;
  v62 = v11;
  v49 = [objc_opt_self() currentEnvironment];
  v50 = [v49 nicknameProvider];
  MEMORY[0x1E69E5920](v49);
  __b[3] = v50;
  v54 = v51[3];
  v55 = v51[4];
  __swift_project_boxed_opaque_existential_0(v51, v54);
  sub_1C550A038();
  v12 = v53;
  sub_1C5596F24();
  v56 = v12;
  v57 = v12;
  if (v12)
  {
    v20[2] = v57;
    v20[0] = v57;
    __swift_destroy_boxed_opaque_existential_0(v51);
    return swift_unknownObjectRelease();
  }

  else
  {
    v13 = sub_1C5596D74();
    v29 = 0;
    v30 = v13;
    v31 = v14;
    v32 = 0;
    v58 = v13;
    v59 = v14;
    if (v14)
    {
      v60 = v58;
      v61 = v59;
    }

    else
    {
      sub_1C5594984();
      v60 = sub_1C5594944();
      v61 = v15;
      (*(v41 + 8))(v44, v40);
      if (v59)
      {
        sub_1C5401ECC(&v58);
      }
    }

    v28 = __b;
    __b[4] = v60;
    __b[5] = v61;
    v21 = v51[3];
    v20[3] = v51[4];
    __swift_project_boxed_opaque_existential_0(v51, v21);
    sub_1C5596F14();
    v22 = sub_1C55962D4();
    v26 = *(v36 + 8);
    v25 = v36 + 8;
    v26(v39, v35);
    __b[2] = RUIDecodingUserInfo.account.getter();
    MEMORY[0x1E69E5920](v22);
    v24 = v51[3];
    v23 = v51[4];
    __swift_project_boxed_opaque_existential_0(v51, v24);
    sub_1C5596F14();
    v27 = sub_1C55962D4();
    v26(v39, v35);
    v16 = RUIDecodingUserInfo.nameAndPhotoSharingViewModel.getter();
    __b[0] = sub_1C5436D54(v16);
    __b[1] = v17;
    v18 = MEMORY[0x1E69E5920](v27);
    (*(v46 + 8))(v52, v45, v18);
    sub_1C550A0B4(v28, v33);
    __swift_destroy_boxed_opaque_existential_0(v51);
    return sub_1C550AEC4(v28);
  }
}

uint64_t sub_1C550BD94@<X0>(uint64_t *a1@<X8>)
{
  result = ShareAutomaticallyPickerRowView.id.getter();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_1C550BECC(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  if (!(*(v5 + 48))(a1, 1))
  {
    (*(v5 + 8))(a1, a2);
  }

  return a1;
}

uint64_t sub_1C550BF70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!(*(*(a3 - 8) + 48))(a1, 1))
  {
    v4 = *(a2 - 8);
    if (!(*(v4 + 48))(a1, 1))
    {
      (*(v4 + 8))(a1, a2);
    }
  }

  return a1;
}

uint64_t sub_1C550C04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  (*(*(a2 - 8) + 8))();
  v10 = *(a6 + 36);
  v11 = *(a3 - 8);
  if (!(*(v11 + 48))(a1 + v10, 1))
  {
    (*(v11 + 8))(a1 + v10, a3);
  }

  return a1;
}

uint64_t sub_1C550C13C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  result = sub_1C5595694();
  *(a5 + *(result + 36)) = a2;
  return result;
}

unint64_t sub_1C550C23C()
{
  v2 = qword_1EC15E158;
  if (!qword_1EC15E158)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E158);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C550C2D0()
{
  v2 = qword_1EC15E160;
  if (!qword_1EC15E160)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E160);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C550C364()
{
  v2 = qword_1EC15E168;
  if (!qword_1EC15E168)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E168);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C550C444(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C550C55C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_1C550C78C()
{
  v2 = qword_1EC167170[0];
  if (!qword_1EC167170[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1EC167170);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C550C820()
{
  v2 = qword_1EC167300;
  if (!qword_1EC167300)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC167300);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C550C8B4()
{
  v2 = qword_1EC167308[0];
  if (!qword_1EC167308[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1EC167308);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C550C930()
{
  v2 = qword_1EC15E218;
  if (!qword_1EC15E218)
  {
    type metadata accessor for CNMeCardSharingAudience(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E218);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C550C9B0()
{
  v2 = qword_1EC15E220;
  if (!qword_1EC15E220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E210, &qword_1C55B5530);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E220);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C550CA84(uint64_t a1)
{
  sub_1C5594B14();
  MEMORY[0x1E69E5928](a1, v2);
  *(v1 + 16) = a1;
  MEMORY[0x1E69E5920](a1);
  return v5;
}

uint64_t sub_1C550CAFC()
{
  v49 = 0;
  v57 = 0;
  v36 = 0;
  v37 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E860, &qword_1C55AE2A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v0, v1, v2);
  v38 = &v19 - v37;
  v46 = sub_1C5594C74();
  v40 = v46;
  v41 = *(v46 - 8);
  v45 = v41;
  v42 = v41;
  v43 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v46 - 8, v46, v3, v4);
  v5 = &v19 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v5;
  v57 = v6;
  v7 = sub_1C54B05F8();
  (*(v45 + 16))(v5, v7, v46);
  v51 = sub_1C5594C54();
  v47 = v51;
  v50 = sub_1C5596974();
  v48 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  v52 = sub_1C5596E04();
  if (os_log_type_enabled(v51, v50))
  {
    v8 = v36;
    v27 = sub_1C5596A74();
    v23 = v27;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v25 = 0;
    v28 = sub_1C5419DC0(0, v24, v24);
    v26 = v28;
    v29 = sub_1C5419DC0(v25, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v56 = v27;
    v55 = v28;
    v54 = v29;
    v30 = 0;
    v31 = &v56;
    sub_1C5419E14(0, &v56);
    sub_1C5419E14(v30, v31);
    v53 = v52;
    v32 = &v19;
    MEMORY[0x1EEE9AC00](&v19, v9, v10, v11);
    v33 = &v19 - 6;
    *(&v19 - 4) = v12;
    *(&v19 - 3) = &v55;
    *(&v19 - 2) = &v54;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v35 = v8;
    if (v8)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v47, v48, "Syncing me card profile picture to Apple Account server...", v23, 2u);
      v21 = 0;
      sub_1C5419E74(v26, 0, v24);
      sub_1C5419E74(v29, v21, MEMORY[0x1E69E7CA0] + 8);
      sub_1C5596A54();

      v22 = v35;
    }
  }

  else
  {

    v22 = v36;
  }

  (*(v42 + 8))(v44, v40);
  sub_1C55967F4();
  v20 = 0;
  v13 = sub_1C5596814();
  (*(*(v13 - 8) + 56))(v38, 0, 1);

  v14 = swift_allocObject();
  v15 = v39;
  v16 = v20;
  v17 = v38;
  v14[2] = v20;
  v14[3] = v16;
  v14[4] = v15;
  sub_1C54061EC(v16, v16, v17, &unk_1C55B5548, v14, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1C550CFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[46] = a4;
  v4[20] = v4;
  v4[21] = 0;
  v4[26] = 0;
  v4[27] = 0;
  v4[28] = 0;
  v4[33] = 0;
  v4[39] = 0;
  v4[18] = 0;
  v4[19] = 0;
  v4[40] = 0;
  v5 = sub_1C5594C74();
  v4[47] = v5;
  v4[48] = *(v5 - 8);
  v4[49] = swift_task_alloc();
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();
  v4[21] = a4;

  return MEMORY[0x1EEE6DFA0](sub_1C550D134);
}

uint64_t sub_1C550D134()
{
  *(v0 + 160) = v0;
  v51 = [objc_opt_self() defaultStore];
  *(v0 + 424) = v51;
  if (!v51)
  {
    goto LABEL_14;
  }

  v2 = *(v50 + 368);
  *(v50 + 208) = v51;
  v48 = *(v2 + 16);
  v49 = [v51 aida:v48 accountForiCloudAccount:{MEMORY[0x1E69E5928](v48, v1).n128_f64[0]}];
  *(v50 + 432) = v49;
  MEMORY[0x1E69E5920](v48);
  if (!v49)
  {
    MEMORY[0x1E69E5920](v51);
LABEL_14:
    v13 = *(v50 + 392);
    v27 = *(v50 + 376);
    v26 = *(v50 + 384);
    v14 = sub_1C54B05F8();
    (*(v26 + 16))(v13, v14, v27);
    log = sub_1C5594C54();
    v28 = sub_1C5596954();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
    v30 = sub_1C5596E04();
    if (os_log_type_enabled(log, v28))
    {
      v22 = sub_1C5596A74();
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
      v23 = sub_1C5419DC0(0, v21, v21);
      v24 = sub_1C5419DC0(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      *(v50 + 176) = v22;
      *(v50 + 184) = v23;
      *(v50 + 192) = v24;
      sub_1C5419E14(0, (v50 + 176));
      sub_1C5419E14(0, (v50 + 176));
      *(v50 + 200) = v30;
      v25 = swift_task_alloc();
      v25[2] = v50 + 176;
      v25[3] = v50 + 184;
      v25[4] = v50 + 192;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
      sub_1C5419F0C();
      sub_1C55966B4();

      _os_log_impl(&dword_1C5355000, log, v28, "ACAccountStore or appleAccount is nil. Unable to update profile photo with setup service...", v22, 2u);
      sub_1C5419E74(v23, 0, v21);
      sub_1C5419E74(v24, 0, MEMORY[0x1E69E7CA0] + 8);
      sub_1C5596A54();
    }

    v19 = *(v50 + 392);
    v20 = *(v50 + 376);
    v18 = *(v50 + 384);
    v15 = MEMORY[0x1E69E5920](log);
    (*(v18 + 8))(v19, v20, v15);
    goto LABEL_17;
  }

  *(v50 + 216) = v49;
  sub_1C5500480();
  MEMORY[0x1E69E5928](v51, v3);
  MEMORY[0x1E69E5928](v49, v4);
  v45 = *MEMORY[0x1E698B7C0];
  MEMORY[0x1E69E5928](*MEMORY[0x1E698B7C0], v5);
  v6 = sub_1C5596574();
  v46 = sub_1C54FEA68(v51, v49, v6, v7);
  *(v50 + 440) = v46;
  MEMORY[0x1E69E5920](v45);
  *(v50 + 224) = v46;
  sub_1C54118E0();
  MEMORY[0x1E69E5928](v46, v8);
  v9 = sub_1C54FEAC0(v46);
  v47 = v9;
  *(v50 + 448) = v9;
  if (v9)
  {
    *(v50 + 264) = v9;
    *(v50 + 16) = *(v50 + 160);
    *(v50 + 56) = v50 + 272;
    *(v50 + 24) = sub_1C550DB50;
    v44 = swift_continuation_init();
    *(v50 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E248, &qword_1C55B55C8);
    *(v50 + 112) = v44;
    *(v50 + 80) = MEMORY[0x1E69E9820];
    *(v50 + 88) = 1107296256;
    *(v50 + 92) = 0;
    *(v50 + 96) = sub_1C550EA20;
    *(v50 + 104) = &block_descriptor_15;
    [v47 meCardWithVisualIdentity_];

    return MEMORY[0x1EEE6DEC8](v50 + 16);
  }

  v10 = *(v50 + 416);
  v40 = *(v50 + 376);
  v39 = *(v50 + 384);
  v11 = sub_1C54B05F8();
  (*(v39 + 16))(v10, v11, v40);
  oslog = sub_1C5594C54();
  v41 = sub_1C5596954();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  v43 = sub_1C5596E04();
  if (os_log_type_enabled(oslog, v41))
  {
    buf = sub_1C5596A74();
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v36 = sub_1C5419DC0(0, v34, v34);
    v37 = sub_1C5419DC0(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    *(v50 + 232) = buf;
    *(v50 + 240) = v36;
    *(v50 + 248) = v37;
    sub_1C5419E14(0, (v50 + 232));
    sub_1C5419E14(0, (v50 + 232));
    *(v50 + 256) = v43;
    v38 = swift_task_alloc();
    v38[2] = v50 + 232;
    v38[3] = v50 + 240;
    v38[4] = v50 + 248;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
    sub_1C5419F0C();
    sub_1C55966B4();

    _os_log_impl(&dword_1C5355000, oslog, v41, "Creating AAUIProfilePictureStore failed. Unable to update profile photo with setup service...", buf, 2u);
    sub_1C5419E74(v36, 0, v34);
    sub_1C5419E74(v37, 0, MEMORY[0x1E69E7CA0] + 8);
    sub_1C5596A54();
  }

  v32 = *(v50 + 416);
  v33 = *(v50 + 376);
  v31 = *(v50 + 384);
  v12 = MEMORY[0x1E69E5920](oslog);
  (*(v31 + 8))(v32, v33, v12);
  MEMORY[0x1E69E5920](v46);
  MEMORY[0x1E69E5920](v49);
  MEMORY[0x1E69E5920](v51);
LABEL_17:

  v16 = *(*(v50 + 160) + 8);

  return v16();
}

uint64_t sub_1C550DB50()
{
  *(*v0 + 160) = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C550DC4C);
}

uint64_t sub_1C550DC4C()
{
  *(v0 + 160) = v0;
  v73 = *(v0 + 272);
  if (!v73)
  {
    goto LABEL_17;
  }

  *(v72 + 312) = v73;
  v71 = [v73 imageData];
  if (v71)
  {
    v67 = sub_1C55948D4();
    v68 = v1;
    MEMORY[0x1E69E5920](v71);
    v69 = v67;
    v70 = v68;
  }

  else
  {
    v69 = 0;
    v70 = 0xF000000000000000;
  }

  if ((v70 & 0xF000000000000000) == 0xF000000000000000)
  {
    MEMORY[0x1E69E5920](v73);
LABEL_17:
    v23 = *(v72 + 400);
    v41 = *(v72 + 376);
    v40 = *(v72 + 384);
    v24 = sub_1C54B05F8();
    (*(v40 + 16))(v23, v24, v41);
    log = sub_1C5594C54();
    v42 = sub_1C5596944();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
    v44 = sub_1C5596E04();
    if (os_log_type_enabled(log, v42))
    {
      v36 = sub_1C5596A74();
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
      v37 = sub_1C5419DC0(0, v35, v35);
      v38 = sub_1C5419DC0(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      *(v72 + 280) = v36;
      *(v72 + 288) = v37;
      *(v72 + 296) = v38;
      sub_1C5419E14(0, (v72 + 280));
      sub_1C5419E14(0, (v72 + 280));
      *(v72 + 304) = v44;
      v39 = swift_task_alloc();
      v39[2] = v72 + 280;
      v39[3] = v72 + 288;
      v39[4] = v72 + 296;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
      sub_1C5419F0C();
      sub_1C55966B4();

      _os_log_impl(&dword_1C5355000, log, v42, "No profile image in me card, clearing server image...", v36, 2u);
      sub_1C5419E74(v37, 0, v35);
      sub_1C5419E74(v38, 0, MEMORY[0x1E69E7CA0] + 8);
      sub_1C5596A54();
    }

    v32 = *(v72 + 440);
    v29 = *(v72 + 400);
    v30 = *(v72 + 376);
    v31 = *(v72 + 448);
    v33 = *(v72 + 432);
    v34 = *(v72 + 424);
    v28 = *(v72 + 384);
    v25 = MEMORY[0x1E69E5920](log);
    (*(v28 + 8))(v29, v30, v25);
    [v31 setProfilePictureForAccountOwner:0 cropRect:?];
    MEMORY[0x1E69E5920](v31);
    MEMORY[0x1E69E5920](v32);
    MEMORY[0x1E69E5920](v33);
    MEMORY[0x1E69E5920](v34);
    goto LABEL_20;
  }

  *(v72 + 144) = v69;
  *(v72 + 152) = v70;
  sub_1C5418C84();
  sub_1C544DE30(v69, v70);
  v2 = sub_1C54493D0(v69, v70);
  v66 = v2;
  if (!v2)
  {
    sub_1C544DEAC(v69, v70);
    MEMORY[0x1E69E5920](v73);
    goto LABEL_17;
  }

  *(v72 + 320) = v2;
  *(v72 + 328) = 0;
  [v73 cropRect];
  v65 = sub_1C54FF9D4(v3, v4, v5, v6);
  *&v8 = MEMORY[0x1E69E5928](v73, v7).n128_u64[0];
  if (v65)
  {
    MEMORY[0x1E69E5920](v73);
  }

  else
  {
    [v73 cropRect];
    v64 = sub_1C5449B2C(v9, v10, v11, v12);
    MEMORY[0x1E69E5920](v73);
    if (!v64)
    {
      sub_1C54FFF88();
      [v73 cropRect];
      v17 = sub_1C54FFA14(v13, v14, v15, v16);
      v18 = *(v72 + 328);
      *(v72 + 328) = v17;
      MEMORY[0x1E69E5920](v18);
    }
  }

  v19 = *(v72 + 408);
  v60 = *(v72 + 376);
  v57 = *(v72 + 448);
  v59 = *(v72 + 384);
  MEMORY[0x1E69E5928](v66, v57);
  v58 = *(v72 + 328);
  [v57 setProfilePictureForAccountOwner:v66 cropRect:{v58, MEMORY[0x1E69E5928](v58, v20).n128_f64[0]}];
  MEMORY[0x1E69E5920](v58);
  MEMORY[0x1E69E5920](v66);
  v21 = sub_1C54B05F8();
  (*(v59 + 16))(v19, v21, v60);
  oslog = sub_1C5594C54();
  v61 = sub_1C5596944();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  v63 = sub_1C5596E04();
  if (os_log_type_enabled(oslog, v61))
  {
    buf = sub_1C5596A74();
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v54 = sub_1C5419DC0(0, v52, v52);
    v55 = sub_1C5419DC0(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    *(v72 + 336) = buf;
    *(v72 + 344) = v54;
    *(v72 + 352) = v55;
    sub_1C5419E14(0, (v72 + 336));
    sub_1C5419E14(0, (v72 + 336));
    *(v72 + 360) = v63;
    v56 = swift_task_alloc();
    v56[2] = v72 + 336;
    v56[3] = v72 + 344;
    v56[4] = v72 + 352;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
    sub_1C5419F0C();
    sub_1C55966B4();

    _os_log_impl(&dword_1C5355000, oslog, v61, "Successfully synced me card to Apple Account server", buf, 2u);
    sub_1C5419E74(v54, 0, v52);
    sub_1C5419E74(v55, 0, MEMORY[0x1E69E7CA0] + 8);
    sub_1C5596A54();
  }

  v49 = *(v72 + 440);
  v46 = *(v72 + 408);
  v47 = *(v72 + 376);
  v48 = *(v72 + 448);
  v50 = *(v72 + 432);
  v51 = *(v72 + 424);
  v45 = *(v72 + 384);
  v22 = MEMORY[0x1E69E5920](oslog);
  (*(v45 + 8))(v46, v47, v22);
  sub_1C5401EF8((v72 + 328));
  MEMORY[0x1E69E5920](v66);
  sub_1C544DEAC(v69, v70);
  MEMORY[0x1E69E5920](v73);
  MEMORY[0x1E69E5920](v48);
  MEMORY[0x1E69E5920](v49);
  MEMORY[0x1E69E5920](v50);
  MEMORY[0x1E69E5920](v51);
LABEL_20:

  v26 = *(*(v72 + 160) + 8);

  return v26();
}

double sub_1C550EA20(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a2, a2);
  v6 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  MEMORY[0x1E69E5928](a2, v2);
  v8 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E250, &unk_1C55B55D0);
  sub_1C5405D08(v6, &v8, v3);
  *&result = MEMORY[0x1E69E5920](a2).n128_u64[0];
  return result;
}

uint64_t sub_1C550EAC4@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC14AppleAccountUI27AppleAccountHeaderViewModel___observationRegistrar;
  v2 = sub_1C5594B24();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1C550EB30(void *a1)
{
  v9 = a1;
  v18 = 0;
  v16 = 0;
  v7 = *a1;
  v14 = sub_1C5594B24();
  v11 = *(v14 - 8);
  v12 = v14 - 8;
  v3 = MEMORY[0x1EEE9AC00](v9, v1, v14, v2);
  v13 = &v7 - v4;
  v18 = v5;
  v17 = *(v7 + *MEMORY[0x1E69E77B0] + 8);
  v16 = v8;
  (*(v11 + 16))(&v7 - v4, v8 + OBJC_IVAR____TtC14AppleAccountUI27AppleAccountHeaderViewModel___observationRegistrar, v3);
  v10 = &v15;
  v15 = v8;
  sub_1C550F07C();
  sub_1C5594AE4();
  return (*(v11 + 8))(v13, v14);
}

uint64_t sub_1C550ECA0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19 = a5;
  v20 = a1;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v33 = 0;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v34 = a4;
  v15 = *a1;
  v13 = sub_1C5594B24();
  v16 = *(v13 - 8);
  v14 = v13 - 8;
  v6 = MEMORY[0x1EEE9AC00](v20, v21, v13, v5);
  v17 = v12 - v7;
  v33 = v8;
  v32 = *(v15 + *MEMORY[0x1E69E77B0] + 8);
  v30 = v9;
  v31 = v22;
  v29 = v18;
  (*(v16 + 16))(v12 - v7, v18 + OBJC_IVAR____TtC14AppleAccountUI27AppleAccountHeaderViewModel___observationRegistrar, v6);
  v25 = &v28;
  v28 = v18;
  sub_1C550F07C();
  v10 = v24;
  sub_1C5594AD4();
  v26 = v10;
  v27 = v10;
  if (v10)
  {
    v12[1] = v27;
  }

  return (*(v16 + 8))(v17, v13);
}

uint64_t sub_1C550EEB8()
{
  MEMORY[0x1E69E5920](*(v0 + 16));
  v3 = OBJC_IVAR____TtC14AppleAccountUI27AppleAccountHeaderViewModel___observationRegistrar;
  v1 = sub_1C5594B24();
  (*(*(v1 - 8) + 8))(v0 + v3);
  return v4;
}

uint64_t sub_1C550EFA4(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1C5405B1C;

  return sub_1C550CFDC(a1, v6, v7, v8);
}

unint64_t sub_1C550F07C()
{
  v2 = qword_1EC15E240;
  if (!qword_1EC15E240)
  {
    type metadata accessor for AppleAccountHeaderViewModel(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E240);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for AppleAccountHeaderViewModel(uint64_t a1)
{
  v2 = qword_1EC1674B0;
  if (!qword_1EC1674B0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_1C550F18C(uint64_t a1)
{
  updated = sub_1C5594B24();
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_1C550F30C()
{
  v2 = (v0 + OBJC_IVAR____TtC14AppleAccountUI17WelcomeFlowResult_outcome);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_1C550F3C8(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC14AppleAccountUI17WelcomeFlowResult_outcome);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

double sub_1C550F434@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x70))(v3);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

double sub_1C550F4D4(uint64_t *a1, void *a2)
{
  v5 = *a1;
  v4 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x78))(v5, v2);
  *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
  return result;
}

uint64_t sub_1C550F648()
{
  v3 = (v0 + OBJC_IVAR____TtC14AppleAccountUI17WelcomeFlowResult_stage);
  swift_beginAccess();
  v4 = *v3;
  MEMORY[0x1E69E5928](*v3, v1);
  swift_endAccess();
  return v4;
}

double sub_1C550F720(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  v5 = (v2 + OBJC_IVAR____TtC14AppleAccountUI17WelcomeFlowResult_stage);
  swift_beginAccess();
  v3 = *v5;
  *v5 = a1;
  MEMORY[0x1E69E5920](v3);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

double sub_1C550F7BC@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x88))(v3);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

double sub_1C550F85C(void *a1, void *a2)
{
  sub_1C5402C1C(a1, &v7);
  v6 = v7;
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x90))(v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C550FA48()
{
  v2 = (v0 + OBJC_IVAR____TtC14AppleAccountUI17WelcomeFlowResult_info);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C550FB88(uint64_t a1)
{
  sub_1C5594CF4();
  v3 = (v1 + OBJC_IVAR____TtC14AppleAccountUI17WelcomeFlowResult_info);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

double sub_1C550FC08@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0xA0))(v3);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

double sub_1C550FCA8(void *a1, void *a2)
{
  sub_1C540955C(a1, &v7);
  v6 = v7;
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0xA8))(v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

id sub_1C550FE78()
{
  v3 = (v0 + OBJC_IVAR____TtC14AppleAccountUI17WelcomeFlowResult_error);
  swift_beginAccess();
  v4 = *v3;
  v1 = *v3;
  swift_endAccess();
  return v4;
}

void sub_1C550FF78(void *a1)
{
  v2 = a1;
  v4 = (v1 + OBJC_IVAR____TtC14AppleAccountUI17WelcomeFlowResult_error);
  swift_beginAccess();
  v3 = *v4;
  *v4 = a1;

  swift_endAccess();
}

double sub_1C550FFF8@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0xB8))(v3);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

double sub_1C5510098(id *a1, void *a2)
{
  sub_1C5511298(a1, &v7);
  v6 = v7;
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0xC0))(v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

char *WelcomeFlowResult.init(outcome:stage:info:error:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v20 = 0;
  v19 = a1;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  *OBJC_IVAR____TtC14AppleAccountUI17WelcomeFlowResult_info = 0;
  *&v20[OBJC_IVAR____TtC14AppleAccountUI17WelcomeFlowResult_error] = 0;
  *&v20[OBJC_IVAR____TtC14AppleAccountUI17WelcomeFlowResult_outcome] = a1;
  MEMORY[0x1E69E5928](a2, a2);
  *&v20[OBJC_IVAR____TtC14AppleAccountUI17WelcomeFlowResult_stage] = a2;
  sub_1C5594CF4();
  v8 = &v20[OBJC_IVAR____TtC14AppleAccountUI17WelcomeFlowResult_info];
  swift_beginAccess();
  *v8 = a3;

  swift_endAccess();
  v9 = v20;
  v4 = a4;
  v10 = &v9[OBJC_IVAR____TtC14AppleAccountUI17WelcomeFlowResult_error];
  swift_beginAccess();
  v5 = *v10;
  *v10 = a4;

  swift_endAccess();
  v15.receiver = v20;
  v15.super_class = type metadata accessor for WelcomeFlowResult();
  v14 = objc_msgSendSuper2(&v15, sel_init);
  MEMORY[0x1E69E5928](v14, v6);
  v20 = v14;

  MEMORY[0x1E69E5920](a2);
  MEMORY[0x1E69E5920](v20);
  return v14;
}

id WelcomeFlowResult.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WelcomeFlowResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t WelcomeFlowAction.description.getter(uint64_t a1, uint64_t a2)
{
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v26 = 0;
  v23 = 0;
  v20 = 0;
  v17 = v2[1];
  v18 = *(v2 + 16);
  v27 = *v2;
  v28 = v17;
  v29 = v18;
  if (v18)
  {
    MEMORY[0x1E69E5928](v17, a2);
    if (v18 == 1)
    {
      v23 = v17;
      v22[0] = sub_1C5596DF4();
      v22[1] = v6;
      v7 = sub_1C55965F4("Declining at ", 13, 1);
      MEMORY[0x1C6947980](v7);

      v21 = v17;
      type metadata accessor for AAUIWelcomeFlowStage(0);
      sub_1C5596DB4();
      v8 = sub_1C55965F4("", 0, 1);
      MEMORY[0x1C6947980](v8);

      sub_1C5594CF4();
      sub_1C5401ECC(v22);
      v14 = sub_1C55965D4();
      MEMORY[0x1E69E5920](v17);
      return v14;
    }

    else
    {
      v26 = v17;
      v25[0] = sub_1C5596DF4();
      v25[1] = v9;
      v10 = sub_1C55965F4("Deferring at ", 13, 1);
      MEMORY[0x1C6947980](v10);

      v24 = v17;
      type metadata accessor for AAUIWelcomeFlowStage(0);
      sub_1C5596DB4();
      v11 = sub_1C55965F4("", 0, 1);
      MEMORY[0x1C6947980](v11);

      sub_1C5594CF4();
      sub_1C5401ECC(v25);
      v13 = sub_1C55965D4();
      MEMORY[0x1E69E5920](v17);
      return v13;
    }
  }

  else
  {
    MEMORY[0x1E69E5928](v17, a2);
    v20 = v17;
    v19[0] = sub_1C5596DF4();
    v19[1] = v3;
    v4 = sub_1C55965F4("Advancing at ", 13, 1);
    MEMORY[0x1C6947980](v4);

    type metadata accessor for AAUIWelcomeFlowStage(0);
    sub_1C5596DB4();
    v5 = sub_1C55965F4("", 0, 1);
    MEMORY[0x1C6947980](v5);

    sub_1C5594CF4();
    sub_1C5401ECC(v19);
    v15 = sub_1C55965D4();
    MEMORY[0x1E69E5920](v17);
    return v15;
  }
}

uint64_t sub_1C5510E6C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v4 = *a1 + 253;
    }

    else
    {
      v2 = *(a1 + 16) ^ 0xFF;
      if (v2 >= 0xFD)
      {
        v2 = -1;
      }

      v4 = v2;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C5510F64(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = (result + 17);
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    *(result + 16) = 0;
    if (a3 >= 0xFE)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t type metadata accessor for WelcomeFlowOutcome(uint64_t a1)
{
  v5 = qword_1EC15E2E8;
  if (!qword_1EC15E2E8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EC15E2E8);
      return v2;
    }
  }

  return v5;
}

void *sub_1C5511298(id *a1, void *a2)
{
  v4 = *a1;
  v2 = *a1;
  result = a2;
  *a2 = v4;
  return result;
}

uint64_t sub_1C55112FC@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = sub_1C5596404();
  a1[4] = &off_1F447CD58;
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_1C55969B4();
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  v3 = result;
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
    v1 = swift_allocBox();
    result = v2;
    *v3 = v1;
  }

  return result;
}

uint64_t sub_1C55114C8(uint64_t a1)
{
  v29 = a1;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v38 = 0;
  v30 = sub_1C5594BC4();
  v31 = *(v30 - 8);
  v32 = v30 - 8;
  v33 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v29, v2, v3, v4);
  v34 = &v14 - v33;
  v35 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6, &v14 - v33, v7, v8);
  v36 = &v14 - v35;
  v49 = &v14 - v35;
  v48 = v9;
  v47 = v1;
  sub_1C5444FC0(v9, v42);
  *&v11 = MEMORY[0x1E69E5928](v37, v10).n128_u64[0];
  if (v43)
  {
    sub_1C5458604(v42, &__dst);
  }

  else
  {
    v28 = [v37 traitCollection];
    v45 = sub_1C5511888();
    v46 = &off_1F447CD40;
    __dst = v28;
    if (v43)
    {
      sub_1C544435C(v42);
    }
  }

  MEMORY[0x1E69E5920](v37);
  p_dst = &__dst;
  v17 = v45;
  v16 = v46;
  __swift_project_boxed_opaque_existential_0(&__dst, v45);
  (v16[1])(v17);
  v20 = v45;
  v19 = v46;
  __swift_project_boxed_opaque_existential_0(p_dst, v45);
  v12 = v19[2];
  v23 = &v39;
  v12(v20);
  v22 = v40;
  v21 = v41;
  __swift_project_boxed_opaque_existential_0(v23, v40);
  v24 = (*(v21 + 8))(v22);
  v38 = v24 & 1;
  __swift_destroy_boxed_opaque_existential_0(v23);
  (*(v31 + 104))(v34, *MEMORY[0x1E69C59D0], v30);
  sub_1C55118EC();
  v27 = sub_1C5596E24();
  v25 = *(v31 + 8);
  v26 = v31 + 8;
  v25(v34, v30);
  if (v27)
  {
    v15 = v24;
  }

  else
  {
    v15 = 0;
  }

  v14 = v15;
  v25(v36, v30);
  __swift_destroy_boxed_opaque_existential_0(&__dst);
  return v14 & 1;
}

unint64_t sub_1C5511888()
{
  v2 = qword_1EC15E2F0;
  if (!qword_1EC15E2F0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15E2F0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1C55118EC()
{
  v2 = qword_1EC15E2F8;
  if (!qword_1EC15E2F8)
  {
    sub_1C5594BC4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E2F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C551196C(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v111 = a1;
  v116 = a2;
  v112 = a3;
  v113 = a4;
  v114 = a5;
  v115 = a6;
  v117 = a7;
  v100 = sub_1C5499100;
  v101 = sub_1C5473EFC;
  v102 = sub_1C545C6D4;
  v103 = sub_1C545C6D4;
  v104 = sub_1C5473FA4;
  v105 = sub_1C5499100;
  v106 = sub_1C5473EFC;
  v107 = sub_1C545C6D4;
  v108 = sub_1C545C6D4;
  v109 = sub_1C5473FA4;
  v142 = 0;
  v143 = 0;
  v140 = 0;
  v141 = 0;
  v138 = 0;
  v139 = 0;
  v137 = 0;
  v136 = 0;
  v110 = 0;
  v118 = sub_1C5594C74();
  v119 = *(v118 - 8);
  v120 = v118 - 8;
  v122 = *(v119 + 64);
  v121 = (v122 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v117, v116, v112, v113);
  v123 = v56 - v121;
  v124 = v121;
  MEMORY[0x1EEE9AC00](v8, v9, v10, v11);
  v125 = v56 - v124;
  v142 = v12;
  v143 = v13;
  v140 = v14;
  v141 = v15;
  v138 = v16;
  v139 = v17;
  v137 = v18;
  v136 = v7;
  if (sub_1C55114C8(v18))
  {
    v19 = v125;
    v20 = sub_1C54B05F8();
    (*(v119 + 16))(v19, v20, v118);
    sub_1C5594CF4();
    v88 = 32;
    v89 = 7;
    v21 = swift_allocObject();
    v22 = v115;
    v90 = v21;
    *(v21 + 16) = v114;
    *(v21 + 24) = v22;
    v98 = sub_1C5594C54();
    v99 = sub_1C5596944();
    v87 = 17;
    v92 = swift_allocObject();
    *(v92 + 16) = 32;
    v93 = swift_allocObject();
    *(v93 + 16) = 8;
    v23 = swift_allocObject();
    v24 = v90;
    v91 = v23;
    *(v23 + 16) = v105;
    *(v23 + 24) = v24;
    v25 = swift_allocObject();
    v26 = v91;
    v95 = v25;
    *(v25 + 16) = v106;
    *(v25 + 24) = v26;
    v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
    v94 = sub_1C5596E04();
    v96 = v27;

    v28 = v92;
    v29 = v96;
    *v96 = v107;
    v29[1] = v28;

    v30 = v93;
    v31 = v96;
    v96[2] = v108;
    v31[3] = v30;

    v32 = v95;
    v33 = v96;
    v96[4] = v109;
    v33[5] = v32;
    sub_1C540FCD8();

    if (os_log_type_enabled(v98, v99))
    {
      v34 = v110;
      v80 = sub_1C5596A74();
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
      v81 = sub_1C5419DC0(0, v79, v79);
      v82 = sub_1C5419DC0(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v83 = &v130;
      v130 = v80;
      v84 = &v129;
      v129 = v81;
      v85 = &v128;
      v128 = v82;
      sub_1C5419E14(2, &v130);
      sub_1C5419E14(1, v83);
      v126 = v107;
      v127 = v92;
      sub_1C5419E28(&v126, v83, v84, v85);
      v86 = v34;
      if (v34)
      {

        __break(1u);
      }

      else
      {
        v126 = v108;
        v127 = v93;
        sub_1C5419E28(&v126, &v130, &v129, &v128);
        v78 = 0;
        v126 = v109;
        v127 = v95;
        sub_1C5419E28(&v126, &v130, &v129, &v128);
        _os_log_impl(&dword_1C5355000, v98, v99, "SettingsNavigationProxy available for %s. Using state-driven navigation.", v80, 0xCu);
        sub_1C5419E74(v81, 0, v79);
        sub_1C5419E74(v82, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1C5596A54();
      }
    }

    else
    {
    }

    v35 = MEMORY[0x1E69E5920](v98);
    v36 = (*(v119 + 8))(v125, v118, v35);
    return v111(v36);
  }

  else
  {
    v38 = v123;
    v39 = sub_1C54B05F8();
    (*(v119 + 16))(v38, v39, v118);
    sub_1C5594CF4();
    v66 = 32;
    v67 = 7;
    v40 = swift_allocObject();
    v41 = v115;
    v68 = v40;
    *(v40 + 16) = v114;
    *(v40 + 24) = v41;
    v76 = sub_1C5594C54();
    v77 = sub_1C5596944();
    v65 = 17;
    v70 = swift_allocObject();
    *(v70 + 16) = 32;
    v71 = swift_allocObject();
    *(v71 + 16) = 8;
    v42 = swift_allocObject();
    v43 = v68;
    v69 = v42;
    *(v42 + 16) = v100;
    *(v42 + 24) = v43;
    v44 = swift_allocObject();
    v45 = v69;
    v73 = v44;
    *(v44 + 16) = v101;
    *(v44 + 24) = v45;
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
    v72 = sub_1C5596E04();
    v74 = v46;

    v47 = v70;
    v48 = v74;
    *v74 = v102;
    v48[1] = v47;

    v49 = v71;
    v50 = v74;
    v74[2] = v103;
    v50[3] = v49;

    v51 = v73;
    v52 = v74;
    v74[4] = v104;
    v52[5] = v51;
    sub_1C540FCD8();

    if (os_log_type_enabled(v76, v77))
    {
      v53 = v110;
      v58 = sub_1C5596A74();
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
      v59 = sub_1C5419DC0(0, v57, v57);
      v60 = sub_1C5419DC0(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v61 = &v135;
      v135 = v58;
      v62 = &v134;
      v134 = v59;
      v63 = &v133;
      v133 = v60;
      sub_1C5419E14(2, &v135);
      sub_1C5419E14(1, v61);
      v131 = v102;
      v132 = v70;
      sub_1C5419E28(&v131, v61, v62, v63);
      v64 = v53;
      if (v53)
      {

        __break(1u);
      }

      else
      {
        v131 = v103;
        v132 = v71;
        sub_1C5419E28(&v131, &v135, &v134, &v133);
        v56[1] = 0;
        v131 = v104;
        v132 = v73;
        sub_1C5419E28(&v131, &v135, &v134, &v133);
        _os_log_impl(&dword_1C5355000, v76, v77, "SettingsNavigationProxy not available for %s. Falling back to UIKit navigation.", v58, 0xCu);
        sub_1C5419E74(v59, 0, v57);
        sub_1C5419E74(v60, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1C5596A54();
      }
    }

    else
    {
    }

    v54 = MEMORY[0x1E69E5920](v76);
    v55 = (*(v119 + 8))(v123, v118, v54);
    return v112(v55);
  }
}

void *UIViewController.aaui_showViewController(_:sender:)(void *a1, uint64_t a2)
{
  v7 = a1;
  v6 = a2;
  v5 = v2;
  memset(v4, 0, sizeof(v4));
  sub_1C55127B4(a1, a2, v4);
  return sub_1C544435C(v4);
}

uint64_t sub_1C55127B4(void *a1, uint64_t a2, void *a3)
{
  v33 = a3;
  v32 = a2;
  v34 = a1;
  __dst[5] = 0;
  __dst[8] = a1;
  __dst[7] = a2;
  __dst[6] = a3;
  sub_1C5444FC0(a3, v36);
  v4 = v3;
  if (v37)
  {
    sub_1C5458604(v36, __dst);
  }

  else
  {
    v30 = [v31 traitCollection];
    __dst[3] = sub_1C5511888();
    __dst[4] = &off_1F447CD40;
    __dst[0] = v30;
    if (v37)
    {
      sub_1C544435C(v36);
    }
  }

  v5 = v31;

  v6 = v34;
  v28 = &v22;
  MEMORY[0x1EEE9AC00](&v22, v7, v8, v9);
  v22 = v21;
  v21[2] = v10;
  v29 = __dst;
  v21[3] = __dst;
  v11 = v5;
  v12 = v34;
  v27 = v21;
  v16 = MEMORY[0x1EEE9AC00](v21, v13, v14, v15);
  v23 = v20;
  v20[2] = v5;
  v20[3] = v34;
  v20[4] = v17;
  v24 = sub_1C55965F4("showViewController", 18, 1, v16);
  v26 = v18;
  v25 = v35;
  sub_1C5432498(v29, v35);
  sub_1C551196C(sub_1C5514320, v22, sub_1C551432C, v23, v24, v26, v25);
  sub_1C544435C(v25);

  return __swift_destroy_boxed_opaque_existential_0(v29);
}

double sub_1C5512A00(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](a3, v4);
  swift_unknownObjectRetain();
  MEMORY[0x1E69E5928](a1, v5);
  if (a4)
  {
    sub_1C5596AF4();
    sub_1C551433C(v10, v11);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  UIViewController.aaui_showViewController(_:sender:)(a3, v11);
  sub_1C544435C(v11);
  MEMORY[0x1E69E5920](a1);
  *&result = MEMORY[0x1E69E5920](a3).n128_u64[0];
  return result;
}

uint64_t sub_1C5512AF0(uint64_t a1, void *a2)
{
  v10 = a1;
  v11 = a2;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v22 = sub_1C5594BF4();
  v19 = *(v22 - 8);
  v20 = v22 - 8;
  v9 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10, v11, v2, v3);
  v21 = &v9 - v9;
  v28 = &v9 - v9;
  v27 = v4;
  v26 = v5;
  MEMORY[0x1E69E5928](v4, v5);
  sub_1C5594C04();
  v13 = v11[3];
  v12 = v11[4];
  __swift_project_boxed_opaque_existential_0(v11, v13);
  v6 = *(v12 + 16);
  v18 = &v23;
  v6(v13);
  v14 = v24;
  v15 = v25;
  __swift_project_boxed_opaque_existential_0(v18, v24);
  v17 = *(v15 + 16);
  v16 = v15 + 16;
  v7 = sub_1C5514540();
  v17(v21, v22, v7, v14, v15);
  __swift_destroy_boxed_opaque_existential_0(v18);
  return (*(v19 + 8))(v21, v22);
}

uint64_t sub_1C5512CE8(void *a1, uint64_t a2)
{
  v117 = a2;
  v116 = a1;
  ObjectType = swift_getObjectType();
  v134 = 0;
  v133 = 0;
  v132 = 0;
  v115 = 0;
  v126 = 0;
  v118 = sub_1C5594C74();
  v119 = *(v118 - 8);
  v120 = v119;
  MEMORY[0x1EEE9AC00](v116, v117, v118, v3);
  v121 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = v5;
  v133 = v6;
  v132 = v2;
  v7 = v2;
  objc_opt_self();
  v123 = swift_dynamicCastObjCClass();
  if (v123)
  {

    v113 = 1;
  }

  else
  {

    v113 = 0;
  }

  if (v113)
  {
    v8 = v122;
    v112 = v122;
  }

  else
  {
    v111 = [v122 navigationController];
    if (v111)
    {
      v110 = v111;
      v109 = v111;
    }

    else
    {
      v109 = 0;
    }

    v112 = v109;
  }

  v108 = v112;
  if (v112)
  {
    v107 = v108;
    v106 = v108;
    v126 = v108;
    sub_1C5514368(v117, &v124);
    if (v125)
    {
      v100 = v125;
      v103 = &v124;
      v9 = __swift_project_boxed_opaque_existential_0(&v124, v125);
      v98 = *(v100 - 8);
      v99 = v98;
      v102 = &v44;
      v11 = MEMORY[0x1EEE9AC00](&v44, v9, v100, v10);
      v101 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v99 + 16))(v11);
      v104 = sub_1C5596E14();
      (*(v99 + 8))(v101, v100);
      __swift_destroy_boxed_opaque_existential_0(v103);
      v105 = v104;
    }

    else
    {
      v105 = 0;
    }

    v96 = v105;
    [v106 showViewController:v116 sender:?];
    swift_unknownObjectRelease();

    return v115;
  }

  else
  {
    v13 = v121;
    v14 = sub_1C54B05F8();
    (*(v120 + 16))(v13, v14, v118);
    v67 = 24;
    v81 = 7;
    v15 = swift_allocObject();
    v16 = v116;
    v72 = v15;
    *(v15 + 16) = ObjectType;
    v17 = v16;
    v82 = swift_allocObject();
    *(v82 + 16) = v116;
    v95 = sub_1C5594C54();
    v68 = v95;
    v94 = sub_1C5596954();
    v69 = v94;
    v76 = 17;
    v85 = swift_allocObject();
    v70 = v85;
    v75 = 32;
    *(v85 + 16) = 32;
    v18 = swift_allocObject();
    v19 = v75;
    v86 = v18;
    v71 = v18;
    v78 = 8;
    *(v18 + 16) = 8;
    v80 = v19;
    v20 = swift_allocObject();
    v21 = v72;
    v73 = v20;
    *(v20 + 16) = sub_1C5514358;
    *(v20 + 24) = v21;
    v22 = swift_allocObject();
    v23 = v73;
    v87 = v22;
    v74 = v22;
    *(v22 + 16) = sub_1C5473EFC;
    *(v22 + 24) = v23;
    v88 = swift_allocObject();
    v77 = v88;
    *(v88 + 16) = v75;
    v89 = swift_allocObject();
    v79 = v89;
    *(v89 + 16) = v78;
    v24 = swift_allocObject();
    v25 = v82;
    v83 = v24;
    *(v24 + 16) = sub_1C5514360;
    *(v24 + 24) = v25;
    v26 = swift_allocObject();
    v27 = v83;
    v92 = v26;
    v84 = v26;
    *(v26 + 16) = sub_1C5473EFC;
    *(v26 + 24) = v27;
    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
    v90 = sub_1C5596E04();
    v91 = v28;

    v29 = v85;
    v30 = v91;
    *v91 = sub_1C545C6D4;
    v30[1] = v29;

    v31 = v86;
    v32 = v91;
    v91[2] = sub_1C545C6D4;
    v32[3] = v31;

    v33 = v87;
    v34 = v91;
    v91[4] = sub_1C5473FA4;
    v34[5] = v33;

    v35 = v88;
    v36 = v91;
    v91[6] = sub_1C545C6D4;
    v36[7] = v35;

    v37 = v89;
    v38 = v91;
    v91[8] = sub_1C545C6D4;
    v38[9] = v37;

    v39 = v91;
    v40 = v92;
    v91[10] = sub_1C5473FA4;
    v39[11] = v40;
    sub_1C540FCD8();

    if (os_log_type_enabled(v95, v94))
    {
      v41 = v115;
      v60 = sub_1C5596A74();
      v57 = v60;
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
      v61 = sub_1C5419DC0(0, v58, v58);
      v59 = v61;
      v63 = 2;
      v62 = sub_1C5419DC0(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v131 = v60;
      v130 = v61;
      v129 = v62;
      v64 = &v131;
      sub_1C5419E14(v63, &v131);
      sub_1C5419E14(v63, v64);
      v127 = sub_1C545C6D4;
      v128 = v70;
      sub_1C5419E28(&v127, v64, &v130, &v129);
      v65 = v41;
      v66 = v41;
      if (v41)
      {
        v55 = 0;

        __break(1u);
      }

      else
      {
        v127 = sub_1C545C6D4;
        v128 = v71;
        sub_1C5419E28(&v127, &v131, &v130, &v129);
        v53 = 0;
        v54 = 0;
        v127 = sub_1C5473FA4;
        v128 = v74;
        sub_1C5419E28(&v127, &v131, &v130, &v129);
        v51 = 0;
        v52 = 0;
        v127 = sub_1C545C6D4;
        v128 = v77;
        sub_1C5419E28(&v127, &v131, &v130, &v129);
        v49 = 0;
        v50 = 0;
        v127 = sub_1C545C6D4;
        v128 = v79;
        sub_1C5419E28(&v127, &v131, &v130, &v129);
        v47 = 0;
        v48 = 0;
        v127 = sub_1C5473FA4;
        v128 = v84;
        sub_1C5419E28(&v127, &v131, &v130, &v129);
        v45 = 0;
        v46 = 0;
        _os_log_impl(&dword_1C5355000, v68, v69, "%s: navigation controller was nil, unable to show view controller %s", v57, 0x16u);
        sub_1C5419E74(v59, 0, v58);
        sub_1C5419E74(v62, 2, MEMORY[0x1E69E7CA0] + 8);
        sub_1C5596A54();

        v56 = v45;
      }
    }

    else
    {
      v42 = v115;

      v56 = v42;
    }

    v44 = v56;

    (*(v120 + 8))(v121, v118);
    return v44;
  }
}

uint64_t sub_1C5513AF8(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  sub_1C54F02F8();
  sub_1C55145C0();
  return sub_1C55965B4();
}

Swift::Void __swiftcall UINavigationController.aaui_pushViewController(_:animated:)(UIViewController *_, Swift::Bool animated)
{
  v6 = _;
  v5 = animated;
  v4 = v2;
  memset(v3, 0, sizeof(v3));
  sub_1C5513BC4(_, animated, v3);
  sub_1C544435C(v3);
}

uint64_t sub_1C5513BC4(void *a1, int a2, void *a3)
{
  v34 = a3;
  v35 = a1;
  v36 = a2;
  __dst[5] = 0;
  v42 = a1;
  v41 = a2;
  __dst[6] = a3;
  sub_1C5444FC0(a3, v38);
  v4 = v3;
  if (v39)
  {
    sub_1C5458604(v38, __dst);
  }

  else
  {
    v5 = v33;
    v32 = [v33 traitCollection];
    __dst[3] = sub_1C5511888();
    __dst[4] = &off_1F447CD40;
    __dst[0] = v32;

    if (v39)
    {
      sub_1C544435C(v38);
    }
  }

  v6 = v33;

  v7 = v35;
  v30 = &v24;
  MEMORY[0x1EEE9AC00](&v24, v8, v9, v10);
  v24 = v23;
  v23[2] = v11;
  v31 = __dst;
  v23[3] = __dst;
  v12 = v6;
  v13 = v35;
  v29 = v23;
  v17 = MEMORY[0x1EEE9AC00](v23, v14, v15, v16);
  v25 = v21;
  v21[2] = v6;
  v21[3] = v35;
  v22 = v18 & 1;
  v26 = sub_1C55965F4("pushViewController", 18, 1, v17);
  v28 = v19;
  v27 = v37;
  sub_1C5432498(v31, v37);
  sub_1C551196C(sub_1C5514320, v24, sub_1C55143F8, v25, v26, v28, v27);
  sub_1C544435C(v27);

  return __swift_destroy_boxed_opaque_existential_0(v31);
}

double sub_1C5513E2C(uint64_t a1, uint64_t a2, UIViewController *a3, unsigned int a4)
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](a3, v5);
  MEMORY[0x1E69E5928](a1, v6);
  v7 = sub_1C5594AC4();
  UINavigationController.aaui_pushViewController(_:animated:)(a3, v7 & 1);
  MEMORY[0x1E69E5920](a1);
  *&result = MEMORY[0x1E69E5920](a3).n128_u64[0];
  return result;
}

Swift::Void __swiftcall UINavigationController.removeLastViewControllerAnimated(_:)(Swift::Bool a1)
{
  v4 = a1;
  v3 = v1;
  memset(v2, 0, sizeof(v2));
  sub_1C5513F84(a1, v2);
  sub_1C544435C(v2);
}

uint64_t sub_1C5513F84(int a1, void *a2)
{
  v30 = a2;
  v31 = a1;
  __dst[5] = 0;
  v36 = a1;
  __dst[6] = a2;
  sub_1C5444FC0(a2, v33);
  v3 = v2;
  if (v34)
  {
    sub_1C5458604(v33, __dst);
  }

  else
  {
    v4 = v29;
    v28 = [v29 traitCollection];
    __dst[3] = sub_1C5511888();
    __dst[4] = &off_1F447CD40;
    __dst[0] = v28;

    if (v34)
    {
      sub_1C544435C(v33);
    }
  }

  v5 = v29;

  v26 = &v20;
  MEMORY[0x1EEE9AC00](&v20, v6, v7, v8);
  v20 = v19;
  v27 = __dst;
  v19[2] = __dst;
  v9 = v5;
  v25 = v19;
  v13 = MEMORY[0x1EEE9AC00](v19, v10, v11, v12);
  v21 = v17;
  v17[2] = v5;
  v18 = v14 & 1;
  v22 = sub_1C55965F4("removeViewController", 20, 1, v13);
  v24 = v15;
  v23 = v32;
  sub_1C5432498(v27, v32);
  sub_1C551196C(sub_1C551440C, v20, sub_1C5514414, v21, v22, v24, v23);
  sub_1C544435C(v23);

  return __swift_destroy_boxed_opaque_existential_0(v27);
}

double sub_1C55141A4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](a1, v4);
  v5 = sub_1C5594AC4();
  UINavigationController.removeLastViewControllerAnimated(_:)(v5 & 1);
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C551420C(void *a1)
{
  v9 = a1;
  v3 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v3);
  (*(v2 + 16))(v3);
  v4 = v7;
  v5 = v8;
  __swift_project_boxed_opaque_existential_0(v6, v7);
  (*(v5 + 24))(1, v4);
  return __swift_destroy_boxed_opaque_existential_0(v6);
}

double sub_1C55142C0(void *a1, char a2)
{
  LOBYTE(v4) = a2 & 1;
  v2 = [a1 popViewControllerAnimated_];
  *&result = MEMORY[0x1E69E5920](v2).n128_u64[0];
  return result;
}

__n128 sub_1C551433C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  result = *(a1 + 16);
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1C5514368(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 24);
    *(a2 + 24) = v2;
    (**(v2 - 8))();
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
  }

  return a2;
}

unint64_t sub_1C5514540()
{
  v2 = qword_1EC15E300;
  if (!qword_1EC15E300)
  {
    sub_1C5594BF4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E300);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C55145C0()
{
  v2 = qword_1EC15E308;
  if (!qword_1EC15E308)
  {
    sub_1C54F02F8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E308);
    return WitnessTable;
  }

  return v2;
}

id static RecoveryContactUpsellFactory.createRecoveryContactUpsellTipView()()
{
  v20 = "Fatal error";
  v21 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v22 = "AppleAccountUI/RecoveryContactUpsellFactory.swift";
  v35 = 0;
  v31 = 0uLL;
  v32 = 0;
  v28 = 0;
  v0 = sub_1C5595774();
  v23 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v0, v1, v2, v3);
  v24 = &v10 - v23;
  v35 = v4;
  v25 = sub_1C54C3530();
  sub_1C5594E04();
  v26 = 0;
  v27 = 0;

  v19 = v26;
  v5 = v26;
  sub_1C5594D34();
  v18 = v5;
  if (v5)
  {
  }

  sub_1C54B93F0(&v33);
  v14 = v33;
  v15 = v34;
  v31 = v33;
  v32 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E310, qword_1C55B5860);
  MEMORY[0x1E69E5928](v14.n128_u64[0], v6);
  sub_1C5594CF4();
  v29 = v14;
  v30 = v15;
  v16 = sub_1C5595484();
  v28 = v16;
  *&v8 = MEMORY[0x1E69E5928](v16, v7).n128_u64[0];
  v17 = [v16 view];
  MEMORY[0x1E69E5920](v16);
  if (v17)
  {
    v13 = v17;
  }

  else
  {
    sub_1C5596C94();
    __break(1u);
  }

  v12 = v13;
  v11 = [objc_opt_self() clearColor];
  [v12 setBackgroundColor_];
  MEMORY[0x1E69E5920](v11);
  MEMORY[0x1E69E5920](v12);
  sub_1C5595764();
  sub_1C5595474();
  MEMORY[0x1E69E5920](v14.n128_u64[0]);

  return v16;
}

id RecoveryContactUpsellFactory.init()()
{
  v4 = 0;
  v3.receiver = 0;
  v3.super_class = type metadata accessor for RecoveryContactUpsellFactory();
  v2 = objc_msgSendSuper2(&v3, sel_init);
  MEMORY[0x1E69E5928](v2, v0);
  v4 = v2;
  MEMORY[0x1E69E5920](v2);
  return v2;
}

id RecoveryContactUpsellFactory.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecoveryContactUpsellFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1C5514B0C@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  v8 = v5;
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x68))(v3);
  sub_1C5458604(v7, a3);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

double sub_1C5514BB4(uint64_t a1, void *a2)
{
  sub_1C5432498(a1, v6);
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x70))(v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C5514C5C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR___AAUISignOutRemovedInformationActionInvokingOBWelcomeController_flowDirector;
  swift_beginAccess();
  sub_1C5432498(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1C5514CC0(void *a1)
{
  v6 = 0;
  v7 = a1;
  sub_1C5432498(a1, v5);
  __dst = (v1 + OBJC_IVAR___AAUISignOutRemovedInformationActionInvokingOBWelcomeController_flowDirector);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0(__dst);
  sub_1C5458604(v5, __dst);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

double sub_1C5514DB8@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x80))(v3);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

double sub_1C5514E58(void *a1, void *a2)
{
  sub_1C5402C1C(a1, &v7);
  v6 = v7;
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x88))(v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C5514F04()
{
  v3 = (v0 + OBJC_IVAR___AAUISignOutRemovedInformationActionInvokingOBWelcomeController_stage);
  swift_beginAccess();
  v4 = *v3;
  MEMORY[0x1E69E5928](*v3, v1);
  swift_endAccess();
  return v4;
}

double sub_1C5514F74(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  v5 = (v2 + OBJC_IVAR___AAUISignOutRemovedInformationActionInvokingOBWelcomeController_stage);
  swift_beginAccess();
  v3 = *v5;
  *v5 = a1;
  MEMORY[0x1E69E5920](v3);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

double sub_1C551507C@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x98))(v3);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

double sub_1C551511C(uint64_t *a1, void *a2)
{
  v4 = *a1;
  swift_unknownObjectRetain();
  v6 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0xA0))(v4, v2);
  *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
  return result;
}

uint64_t sub_1C55151D4()
{
  v2 = (v0 + OBJC_IVAR___AAUISignOutRemovedInformationActionInvokingOBWelcomeController_model);
  swift_beginAccess();
  v3 = *v2;
  swift_unknownObjectRetain();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C551523C(uint64_t a1)
{
  swift_unknownObjectRetain();
  v3 = (v1 + OBJC_IVAR___AAUISignOutRemovedInformationActionInvokingOBWelcomeController_model);
  swift_beginAccess();
  *v3 = a1;
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

char *SignOutRemovedInformationActionInvokingOBWelcomeController.init(model:stage:flowDirector:)(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = 0;
  v15 = a1;
  v14 = a2;
  v13 = a3;
  MEMORY[0x1E69E5928](a2, a2);
  *OBJC_IVAR___AAUISignOutRemovedInformationActionInvokingOBWelcomeController_stage = a2;
  v5 = v16;
  sub_1C5432498(a3, v12);
  sub_1C5458604(v12, &v5[OBJC_IVAR___AAUISignOutRemovedInformationActionInvokingOBWelcomeController_flowDirector]);
  v6 = v16;
  swift_unknownObjectRetain();
  *&v6[OBJC_IVAR___AAUISignOutRemovedInformationActionInvokingOBWelcomeController_model] = a1;
  v11.receiver = v16;
  v11.super_class = type metadata accessor for SignOutRemovedInformationActionInvokingOBWelcomeController();
  v10 = objc_msgSendSuper2(&v11, sel_initWithViewModel_, a1);
  MEMORY[0x1E69E5928](v10, v3);
  v16 = v10;
  SignOutRemovedInformationActionInvokingOBWelcomeController.setupInvokingActions()();
  __swift_destroy_boxed_opaque_existential_0(a3);
  MEMORY[0x1E69E5920](a2);
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](v16);
  return v10;
}

Swift::Void __swiftcall SignOutRemovedInformationActionInvokingOBWelcomeController.setupInvokingActions()()
{
  v73 = sub_1C55185B0;
  v74 = sub_1C55185BC;
  v75 = sub_1C545AE98;
  v76 = sub_1C545C6DC;
  v77 = sub_1C545C6D4;
  v78 = sub_1C545C6D4;
  v79 = sub_1C545C6E8;
  v97 = 0;
  v80 = 0;
  v91 = 0;
  v90 = 0;
  v89 = 0;
  v88 = 0;
  v81 = sub_1C5594C74();
  v82 = *(v81 - 8);
  v83 = v81 - 8;
  v84 = (*(v82 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v86, v0, v1, v2);
  v85 = v31 - v84;
  v97 = v3;
  *&v4 = MEMORY[0x1E69E5928](v3, v31 - v84).n128_u64[0];
  v87 = [v86 primaryButton];
  if (v87)
  {
    v72 = v87;
    v70 = v87;
    v91 = v87;
    MEMORY[0x1E69E5920](v86);
    *&v6 = MEMORY[0x1E69E5928](v86, v5).n128_u64[0];
    v7 = [v86 secondaryButton];
    v71 = v7;
    if (v7)
    {
      v69 = v71;
      v68 = v71;
      v90 = v71;
      MEMORY[0x1E69E5920](v86);
      v62 = 0;
      v57 = sub_1C545C6F4();
      MEMORY[0x1E69E5928](v70, v8);
      MEMORY[0x1E69E5928](v86, v9);
      v58 = 7;
      v10 = swift_allocObject();
      v11 = v86;
      v54 = v10;
      *(v10 + 16) = v70;
      *(v10 + 24) = v11;
      v56 = sub_1C54398B0();
      v55 = v12;
      v53 = sub_1C545B878();
      sub_1C53FE664();
      v67 = sub_1C5596A44();
      v89 = v67;
      MEMORY[0x1E69E5928](v86, v13);
      v60 = swift_allocObject();
      *(v60 + 16) = v86;
      v63 = sub_1C54398B0();
      v61 = v14;
      v59 = sub_1C545B878();
      sub_1C53FE664();
      v66 = sub_1C5596A44();
      v88 = v66;
      v64 = 0x1FB0D4000uLL;
      v65 = 64;
      [v70 0x1FB0D4EF8];
      [v68 (v64 + 3832)];
      MEMORY[0x1E69E5920](v66);
      MEMORY[0x1E69E5920](v67);
      MEMORY[0x1E69E5920](v68);
      MEMORY[0x1E69E5920](v70);
      return;
    }

    MEMORY[0x1E69E5920](v86);
    MEMORY[0x1E69E5920](v70);
  }

  else
  {
    MEMORY[0x1E69E5920](v86);
  }

  v15 = v85;
  v16 = sub_1C54B0910();
  (*(v82 + 16))(v15, v16, v81);
  MEMORY[0x1E69E5928](v86, v17);
  v42 = 7;
  v43 = swift_allocObject();
  *(v43 + 16) = v86;
  v51 = sub_1C5594C54();
  v52 = sub_1C5596954();
  v40 = 17;
  v45 = swift_allocObject();
  *(v45 + 16) = 64;
  v46 = swift_allocObject();
  *(v46 + 16) = 8;
  v41 = 32;
  v18 = swift_allocObject();
  v19 = v43;
  v44 = v18;
  *(v18 + 16) = v75;
  *(v18 + 24) = v19;
  v20 = swift_allocObject();
  v21 = v44;
  v48 = v20;
  *(v20 + 16) = v76;
  *(v20 + 24) = v21;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  v47 = sub_1C5596E04();
  v49 = v22;

  v23 = v45;
  v24 = v49;
  *v49 = v77;
  v24[1] = v23;

  v25 = v46;
  v26 = v49;
  v49[2] = v78;
  v26[3] = v25;

  v27 = v48;
  v28 = v49;
  v49[4] = v79;
  v28[5] = v27;
  sub_1C540FCD8();

  if (os_log_type_enabled(v51, v52))
  {
    v29 = v80;
    v33 = sub_1C5596A74();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v34 = sub_1C5419DC0(1, v32, v32);
    v35 = sub_1C5419DC0(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v36 = &v96;
    v96 = v33;
    v37 = &v95;
    v95 = v34;
    v38 = &v94;
    v94 = v35;
    sub_1C5419E14(2, &v96);
    sub_1C5419E14(1, v36);
    v92 = v77;
    v93 = v45;
    sub_1C5419E28(&v92, v36, v37, v38);
    v39 = v29;
    if (v29)
    {

      __break(1u);
    }

    else
    {
      v92 = v78;
      v93 = v46;
      sub_1C5419E28(&v92, &v96, &v95, &v94);
      v31[0] = 0;
      v92 = v79;
      v93 = v48;
      sub_1C5419E28(&v92, &v96, &v95, &v94);
      _os_log_impl(&dword_1C5355000, v51, v52, "%@: Failed to create buttons.", v33, 0xCu);
      sub_1C5419E74(v34, 1, v32);
      sub_1C5419E74(v35, 0, MEMORY[0x1E69E7CA0] + 8);
      sub_1C5596A54();
    }
  }

  else
  {
  }

  v30 = MEMORY[0x1E69E5920](v51);
  (*(v82 + 8))(v85, v81, v30);
}

id SignOutRemovedInformationActionInvokingOBWelcomeController.__allocating_init(viewModel:)(uint64_t a1)
{
  v3 = [objc_allocWithZone(v1) initWithViewModel_];
  swift_unknownObjectRelease();
  return v3;
}

id SignOutRemovedInformationActionInvokingOBWelcomeController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = objc_allocWithZone(v6);
  v17 = sub_1C5596554();
  if (a4)
  {
    v12 = sub_1C5596554();

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a6)
  {
    v11 = sub_1C5596554();

    v7 = [v15 initWithTitle:v17 detailText:v13 symbolName:v11 contentLayout:?];
  }

  else
  {
    v7 = [v15 initWithTitle:v17 detailText:v13 symbolName:0 contentLayout:?];
  }

  v10 = v7;
  MEMORY[0x1E69E5920](v9);
  MEMORY[0x1E69E5920](v13);
  MEMORY[0x1E69E5920](v17);

  return v10;
}

id SignOutRemovedInformationActionInvokingOBWelcomeController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v13 = sub_1C5596554();
  if (a4)
  {
    v8 = sub_1C5596554();

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v7 = [v11 initWithTitle:v13 detailText:? icon:? contentLayout:?];
  MEMORY[0x1E69E5920](a5);
  MEMORY[0x1E69E5920](v9);
  MEMORY[0x1E69E5920](v13);

  return v7;
}

id SignOutRemovedInformationActionInvokingOBWelcomeController.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SignOutRemovedInformationActionInvokingOBWelcomeController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1C5516888(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL, 53852);
  *a1 = v3;
  v3[4] = (*((**v1 & *MEMORY[0x1E69E7D40]) + 0x78))();
  return sub_1C545A074;
}

Swift::Void __swiftcall SignOutRemovedInformationActionInvokingOBWelcomeController.viewWillAppear(_:)(Swift::Bool a1)
{
  v9 = a1;
  v8 = v1;
  (MEMORY[0x1E69E5928])();
  v7.receiver = v1;
  v7.super_class = type metadata accessor for SignOutRemovedInformationActionInvokingOBWelcomeController();
  objc_msgSendSuper2(&v7, sel_viewWillAppear_, 1);
  (MEMORY[0x1E69E5920])();
  v6 = [v5 primaryButton];
  if (v6)
  {
    v4 = v6;
    MEMORY[0x1E69E5928](v6, v3);
    sub_1C5401EF8(&v6);
    [v4 hidesBusyIndicator];
    MEMORY[0x1E69E5920](v4);
  }

  else
  {
    sub_1C5401EF8(&v6);
    (MEMORY[0x1E69E5920])();
  }
}

Swift::Void __swiftcall SignOutRemovedInformationActionInvokingOBWelcomeController.viewDidLoad()()
{
  v7 = v0;
  (MEMORY[0x1E69E5928])();
  v6.receiver = v0;
  v6.super_class = type metadata accessor for SignOutRemovedInformationActionInvokingOBWelcomeController();
  objc_msgSendSuper2(&v6, sel_viewDidLoad);
  v1 = (MEMORY[0x1E69E5920])();
  (*((*v0 & *MEMORY[0x1E69E7D40]) + 0x98))(v1);
  type metadata accessor for SignOutRemovedInformationModel();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v4 = v5;
  }

  else
  {
    swift_unknownObjectRelease();
    v4 = 0;
  }

  if (v4)
  {
    v2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0xB0))();
    MEMORY[0x1E69E5920](v4);
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    sub_1C5516CD4(v3);
    MEMORY[0x1E69E5920](v3);
  }
}

double sub_1C5516CD4(void *a1)
{
  [v1 addChildViewController_];
  v71 = [a1 view];
  *&v3 = MEMORY[0x1E69E5920](a1).n128_u64[0];
  if (v71)
  {
    v69 = v71;
  }

  else
  {
    LOBYTE(v21) = 2;
    v27 = 45;
    LODWORD(v33) = 0;
    sub_1C5596C94();
    __break(1u);
  }

  [v69 setTranslatesAutoresizingMaskIntoConstraints_];
  MEMORY[0x1E69E5920](v69);
  v67 = [v1 contentView];
  MEMORY[0x1E69E5920](v1);
  v68 = [a1 view];
  *&v6 = MEMORY[0x1E69E5920](a1).n128_u64[0];
  if (v68)
  {
    v66 = v68;
  }

  else
  {
    LOBYTE(v22) = 2;
    v28 = 46;
    LODWORD(v34) = 0;
    sub_1C5596C94();
    __break(1u);
  }

  [v67 addSubview_];
  MEMORY[0x1E69E5920](v66);
  MEMORY[0x1E69E5920](v67);
  v63 = objc_opt_self();
  sub_1C545C768();
  sub_1C5596E04();
  v64 = v7;
  v65 = [a1 view];
  *&v8 = MEMORY[0x1E69E5920](a1).n128_u64[0];
  if (v65)
  {
    v62 = v65;
  }

  else
  {
    LOBYTE(v23) = 2;
    v29 = 48;
    LODWORD(v35) = 0;
    sub_1C5596C94();
    __break(1u);
  }

  v59 = [v62 0x1FBB23FD2];
  MEMORY[0x1E69E5920](v62);
  v57 = [v1 contentView];
  v58 = [v57 0x1FBB23FD2];
  v60 = [v59 constraintEqualToAnchor_];
  MEMORY[0x1E69E5920](v58);
  MEMORY[0x1E69E5920](v59);
  *v64 = v60;
  v61 = [a1 view];
  *&v11 = MEMORY[0x1E69E5920](a1).n128_u64[0];
  if (v61)
  {
    v56 = v61;
  }

  else
  {
    LOBYTE(v24) = 2;
    v30 = 49;
    LODWORD(v36) = 0;
    sub_1C5596C94();
    __break(1u);
  }

  v53 = [v56 0x1FBBB4950];
  MEMORY[0x1E69E5920](v56);
  v51 = [v1 contentView];
  v52 = [v51 0x1FBBB4950];
  MEMORY[0x1E69E5920](v51);
  v54 = [v53 constraintEqualToAnchor:v52 constant:-1.0];
  MEMORY[0x1E69E5920](v52);
  MEMORY[0x1E69E5920](v53);
  v64[1] = v54;
  v55 = [a1 view];
  *&v14 = MEMORY[0x1E69E5920](a1).n128_u64[0];
  if (v55)
  {
    v50 = v55;
  }

  else
  {
    LOBYTE(v25) = 2;
    v31 = 50;
    LODWORD(v37) = 0;
    sub_1C5596C94();
    __break(1u);
  }

  v47 = [v50 0x1FBB20D25];
  MEMORY[0x1E69E5920](v50);
  v45 = [v1 contentView];
  v46 = [v45 0x1FBB20D25];
  v48 = [v47 constraintEqualToAnchor_];
  MEMORY[0x1E69E5920](v46);
  MEMORY[0x1E69E5920](v47);
  v64[2] = v48;
  v49 = [a1 view];
  *&v17 = MEMORY[0x1E69E5920](a1).n128_u64[0];
  if (v49)
  {
    v44 = v49;
  }

  else
  {
    LOBYTE(v26) = 2;
    v32 = 51;
    LODWORD(v38) = 0;
    sub_1C5596C94();
    __break(1u);
  }

  v41 = [v44 0x1FBBC2576];
  MEMORY[0x1E69E5920](v44);
  v39 = [v1 headerView];
  v40 = [v39 0x1FBBC2576];
  v42 = [v41 constraintEqualToAnchor_];
  MEMORY[0x1E69E5920](v40);
  MEMORY[0x1E69E5920](v41);
  v64[3] = v42;
  sub_1C540FCD8();
  v43 = sub_1C5596704();

  [v63 activateConstraints_];
  MEMORY[0x1E69E5920](v43);
  [v1 didMoveToParentViewController_];
  *&result = MEMORY[0x1E69E5920](v1).n128_u64[0];
  return result;
}

uint64_t sub_1C55176B4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v49 = a1;
  v50 = a2;
  v56 = a3;
  v58 = sub_1C545AE98;
  v62 = sub_1C545C6DC;
  v64 = sub_1C545C6D4;
  v66 = sub_1C545C6D4;
  v69 = sub_1C545C6E8;
  v87 = 0;
  v86 = 0;
  v85 = 0;
  v48 = 0;
  v55 = sub_1C5594C74();
  v53 = *(v55 - 8);
  v54 = v55 - 8;
  v51 = (*(v53 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v50, v3, v56, v4);
  v6 = &v32 - v51;
  v52 = &v32 - v51;
  v87 = v7;
  v86 = v8;
  v85 = v9;
  [v8 showsBusyIndicator];
  v10 = sub_1C54B0910();
  (*(v53 + 16))(v6, v10, v55);
  MEMORY[0x1E69E5928](v56, v11);
  v60 = 7;
  v61 = swift_allocObject();
  *(v61 + 16) = v56;
  v73 = sub_1C5594C54();
  v74 = sub_1C5596974();
  v57 = 17;
  v65 = swift_allocObject();
  *(v65 + 16) = 64;
  v67 = swift_allocObject();
  *(v67 + 16) = 8;
  v59 = 32;
  v12 = swift_allocObject();
  v13 = v61;
  v63 = v12;
  *(v12 + 16) = v58;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  v15 = v63;
  v70 = v14;
  *(v14 + 16) = v62;
  *(v14 + 24) = v15;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  v68 = sub_1C5596E04();
  v71 = v16;

  v17 = v65;
  v18 = v71;
  *v71 = v64;
  v18[1] = v17;

  v19 = v67;
  v20 = v71;
  v71[2] = v66;
  v20[3] = v19;

  v21 = v70;
  v22 = v71;
  v71[4] = v69;
  v22[5] = v21;
  sub_1C540FCD8();

  if (os_log_type_enabled(v73, v74))
  {
    v23 = v48;
    v41 = sub_1C5596A74();
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v42 = sub_1C5419DC0(1, v40, v40);
    v43 = sub_1C5419DC0(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v44 = &v79;
    v79 = v41;
    v45 = &v78;
    v78 = v42;
    v46 = &v77;
    v77 = v43;
    sub_1C5419E14(2, &v79);
    sub_1C5419E14(1, v44);
    v75 = v64;
    v76 = v65;
    sub_1C5419E28(&v75, v44, v45, v46);
    v47 = v23;
    if (v23)
    {

      __break(1u);
    }

    else
    {
      v75 = v66;
      v76 = v67;
      sub_1C5419E28(&v75, &v79, &v78, &v77);
      v39 = 0;
      v75 = v69;
      v76 = v70;
      sub_1C5419E28(&v75, &v79, &v78, &v77);
      _os_log_impl(&dword_1C5355000, v73, v74, "%@: Advancing action.", v41, 0xCu);
      sub_1C5419E74(v42, 1, v40);
      sub_1C5419E74(v43, 0, MEMORY[0x1E69E7CA0] + 8);
      sub_1C5596A54();
    }
  }

  else
  {
  }

  v24 = v56;
  v25 = MEMORY[0x1E69E5920](v73);
  v26 = (*(v53 + 8))(v52, v55, v25);
  v27 = *v24;
  v33 = MEMORY[0x1E69E7D40];
  v28 = *((v27 & *MEMORY[0x1E69E7D40]) + 0x68);
  v38 = &v82;
  v28(v26);
  v29 = v56;
  v35 = v83;
  v36 = v84;
  v34 = __swift_project_boxed_opaque_existential_0(v38, v83);
  v30 = (*((*v29 & *v33) + 0x80))();
  v37 = v80;
  v80[0] = 0;
  v80[1] = v30;
  v81 = 0;
  (*(v36 + 32))();
  sub_1C545CDC0(v37);
  return __swift_destroy_boxed_opaque_existential_0(v38);
}

uint64_t sub_1C5517E48(uint64_t a1, uint64_t *a2)
{
  v46 = a1;
  v52 = a2;
  v54 = sub_1C545AE98;
  v58 = sub_1C545C6DC;
  v60 = sub_1C545C6D4;
  v62 = sub_1C545C6D4;
  v65 = sub_1C545C6E8;
  v82 = 0;
  v81 = 0;
  v45 = 0;
  v51 = sub_1C5594C74();
  v49 = *(v51 - 8);
  v50 = v51 - 8;
  v47 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v46, v52, v2, v3);
  v4 = &v29 - v47;
  v48 = &v29 - v47;
  v82 = v5;
  v81 = v6;
  v7 = sub_1C54B0910();
  (*(v49 + 16))(v4, v7, v51);
  MEMORY[0x1E69E5928](v52, v8);
  v56 = 7;
  v57 = swift_allocObject();
  *(v57 + 16) = v52;
  v69 = sub_1C5594C54();
  v70 = sub_1C5596974();
  v53 = 17;
  v61 = swift_allocObject();
  *(v61 + 16) = 64;
  v63 = swift_allocObject();
  *(v63 + 16) = 8;
  v55 = 32;
  v9 = swift_allocObject();
  v10 = v57;
  v59 = v9;
  *(v9 + 16) = v54;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v59;
  v66 = v11;
  *(v11 + 16) = v58;
  *(v11 + 24) = v12;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  v64 = sub_1C5596E04();
  v67 = v13;

  v14 = v61;
  v15 = v67;
  *v67 = v60;
  v15[1] = v14;

  v16 = v63;
  v17 = v67;
  v67[2] = v62;
  v17[3] = v16;

  v18 = v66;
  v19 = v67;
  v67[4] = v65;
  v19[5] = v18;
  sub_1C540FCD8();

  if (os_log_type_enabled(v69, v70))
  {
    v20 = v45;
    v38 = sub_1C5596A74();
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v39 = sub_1C5419DC0(1, v37, v37);
    v40 = sub_1C5419DC0(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v41 = &v75;
    v75 = v38;
    v42 = &v74;
    v74 = v39;
    v43 = &v73;
    v73 = v40;
    sub_1C5419E14(2, &v75);
    sub_1C5419E14(1, v41);
    v71 = v60;
    v72 = v61;
    sub_1C5419E28(&v71, v41, v42, v43);
    v44 = v20;
    if (v20)
    {

      __break(1u);
    }

    else
    {
      v71 = v62;
      v72 = v63;
      sub_1C5419E28(&v71, &v75, &v74, &v73);
      v36 = 0;
      v71 = v65;
      v72 = v66;
      sub_1C5419E28(&v71, &v75, &v74, &v73);
      _os_log_impl(&dword_1C5355000, v69, v70, "%@: Declining action.", v38, 0xCu);
      sub_1C5419E74(v39, 1, v37);
      sub_1C5419E74(v40, 0, MEMORY[0x1E69E7CA0] + 8);
      sub_1C5596A54();
    }
  }

  else
  {
  }

  v21 = v52;
  v22 = MEMORY[0x1E69E5920](v69);
  v23 = (*(v49 + 8))(v48, v51, v22);
  v24 = *v21;
  v30 = MEMORY[0x1E69E7D40];
  v25 = *((v24 & *MEMORY[0x1E69E7D40]) + 0x68);
  v35 = &v78;
  v25(v23);
  v26 = v52;
  v32 = v79;
  v33 = v80;
  v31 = __swift_project_boxed_opaque_existential_0(v35, v79);
  v27 = (*((*v26 & *v30) + 0x80))();
  v34 = v76;
  v76[0] = 0;
  v76[1] = v27;
  v77 = 1;
  (*(v33 + 32))();
  sub_1C545CDC0(v34);
  return __swift_destroy_boxed_opaque_existential_0(v35);
}

uint64_t sub_1C55188C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16 = a1;
  v17 = a2;
  sub_1C544B78C();
  sub_1C5596064();
  v8 = v11;
  v9 = v12;
  v10 = v13 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E340, &qword_1C55B59C0);
  sub_1C5518AB8();
  sub_1C5410F68();
  sub_1C5595D24();
  memcpy(__dst, v14, sizeof(__dst));
  memcpy(v7, __dst, sizeof(v7));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E350, &qword_1C55B59C8);
  sub_1C5518B40();
  sub_1C540EFD8(v7, v5, v15);
  memcpy(v19, v15, sizeof(v19));
  memcpy(v6, v19, sizeof(v6));
  return sub_1C540EFD8(v6, v5, a3);
}

unint64_t sub_1C5518AB8()
{
  v2 = qword_1EC15E348;
  if (!qword_1EC15E348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E340, &qword_1C55B59C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E348);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5518B40()
{
  v2 = qword_1EC15E358;
  if (!qword_1EC15E358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E350, &qword_1C55B59C8);
    sub_1C5518AB8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E358);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5518D60()
{
  v10 = &v13;
  v13 = 0;
  v14 = 0;
  v9 = sub_1C5594994();
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9, v0, v1, v2);
  v8 = &v5 - v5;
  sub_1C5594984();
  v12 = sub_1C5594944();
  v11 = v3;
  (*(v6 + 8))(v8, v9);
  sub_1C5594CF4();
  v13 = v12;
  v14 = v11;
  sub_1C5401ECC(v10);
  return v12;
}

uint64_t sub_1C5518E68(void *a1)
{
  v26 = a1;
  v44 = 0;
  v42 = 0;
  v43 = 0;
  v41 = 0;
  v21 = sub_1C5594994();
  v22 = *(v21 - 8);
  v23 = v21 - 8;
  v24 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21, v1, v2, v3);
  v25 = v13 - v24;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E360, &qword_1C55B59D0);
  v28 = *(v27 - 8);
  v29 = v27 - 8;
  v30 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v26, v4, v5, v6);
  v31 = v13 - v30;
  v44 = v13 - v30;
  v41 = v7;
  v33 = v7[3];
  v34 = v7[4];
  __swift_project_boxed_opaque_existential_0(v7, v33);
  sub_1C5519348();
  v8 = v32;
  sub_1C5596F24();
  v35 = v8;
  v36 = v8;
  if (v8)
  {
    v13[3] = v36;
    v13[0] = v36;
    __swift_destroy_boxed_opaque_existential_0(v26);
    return v13[1];
  }

  else
  {
    v9 = sub_1C5596D74();
    v17 = 0;
    v18 = v9;
    v19 = v10;
    v20 = 0;
    v37 = v9;
    v38 = v10;
    if (v10)
    {
      v39 = v37;
      v40 = v38;
    }

    else
    {
      sub_1C5594984();
      v39 = sub_1C5594944();
      v40 = v11;
      (*(v22 + 8))(v25, v21);
      if (v38)
      {
        sub_1C5401ECC(&v37);
      }
    }

    v16 = v39;
    v15 = v40;
    sub_1C5594CF4();
    v14 = &v42;
    v42 = v16;
    v43 = v15;
    (*(v28 + 8))(v31, v27);
    __swift_destroy_boxed_opaque_existential_0(v26);
    sub_1C5401ECC(v14);
    return v16;
  }
}

uint64_t sub_1C55191F0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C5518E68(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v4;
  }

  return result;
}

void sub_1C5519264(uint64_t *a1@<X8>)
{
  sub_1C5492D20(*v1, v1[1]);
  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1C55192CC()
{
  v2 = qword_1EC167B48;
  if (!qword_1EC167B48)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC167B48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5519348()
{
  v2 = qword_1EC167B50[0];
  if (!qword_1EC167B50[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1EC167B50);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C55193C4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E368, &qword_1C55B59D8);
  __swift_allocate_value_buffer(v1, qword_1EC16B4C8);
  __swift_project_value_buffer(v1, qword_1EC16B4C8);
  sub_1C55965F4("+showTip", 8, 1);
  sub_1C5594D44();
  sub_1C5596E04();
  return sub_1C5594DF4();
}

uint64_t sub_1C55194A8()
{
  if (qword_1EC167B40 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E368, &qword_1C55B59D8);
  return __swift_project_value_buffer(v0, qword_1EC16B4C8);
}

uint64_t sub_1C5519520@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C55194A8();
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E368, &qword_1C55B59D8);
  (*(*(v1 - 8) + 16))(a1, v3);
  return swift_endAccess();
}

uint64_t sub_1C55195B0(uint64_t a1)
{
  v12 = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E368, &qword_1C55B59D8);
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13, v1, v2, v3);
  v8 = &v5 - v6;
  v7 = sub_1C55194A8();
  (*(v10 + 16))(v8, v12, v13);
  v9 = &v14;
  swift_beginAccess();
  (*(v10 + 40))(v7, v8, v13);
  swift_endAccess();
  return (*(v10 + 8))(v12, v13);
}

uint64_t (*sub_1C5519704())(uint64_t a1)
{
  sub_1C55194A8();
  swift_beginAccess();
  return sub_1C541ACB0;
}

uint64_t sub_1C5519760()
{
  sub_1C55194A8();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E368, &qword_1C55B59D8);
  sub_1C5594DD4();
  swift_endAccess();
  return v1 & 1;
}

uint64_t sub_1C55197DC(char a1)
{
  sub_1C55194A8();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E368, &qword_1C55B59D8);
  sub_1C5594DE4();
  return swift_endAccess();
}

uint64_t sub_1C551990C()
{
  v15 = 0;
  v12 = (*(*(sub_1C55949C4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v0, v1, v2);
  v17 = &v11 - v12;
  v3 = sub_1C5596544();
  v13 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v3, v4, v5, v6);
  v14 = &v11 - v13;
  v19 = 1;
  sub_1C55965F4("BIRTHDAY_UPDATE_PENDING", 23, 1, v7);
  sub_1C55964E4();
  sub_1C5439370();
  v16 = sub_1C5576C44();
  sub_1C54982B4();
  v20[2] = 0;
  v20[3] = 0;
  v21 = 0;
  v22 = v19 & 1;
  v8 = sub_1C5596594();
  v18 = v20;
  v20[0] = v8;
  v20[1] = v9;
  sub_1C54141E8();
  return sub_1C5595A04();
}

uint64_t sub_1C5519AD8()
{
  v16 = 0;
  v12 = (*(*(sub_1C55949C4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v0, v1, v2);
  v18 = &v11 - v12;
  v3 = sub_1C5596544();
  v13 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v3, v4, v5, v6);
  v15 = &v11 - v13;
  v14 = 1;
  sub_1C55965F4("BIRTHDAY_UPDATE_PENDING_DESCRIPTION", 35, 1, v7);
  sub_1C55964E4();
  sub_1C5439370();
  v17 = sub_1C5576C44();
  sub_1C54982B4();
  v20[2] = 0;
  v20[3] = 0;
  v21 = 0;
  v22 = v14 & 1;
  v8 = sub_1C5596594();
  v19 = v20;
  v20[0] = v8;
  v20[1] = v9;
  sub_1C54141E8();
  return sub_1C5595A04();
}

uint64_t sub_1C5519C7C()
{
  v24 = 0;
  v23 = sub_1C5519EB8;
  v30 = 0;
  v31 = 0;
  v21 = 0;
  v13 = (*(*(sub_1C55949C4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v0, v1, v2);
  v18 = &v12 - v13;
  v3 = sub_1C5596544();
  v14 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v3, v4, v5, v6);
  v16 = &v12 - v14;
  v15 = 1;
  sub_1C55965F4("CONNECT_NOW", 11, 1, v7);
  sub_1C55964E4();
  sub_1C5439370();
  v17 = sub_1C5576C44();
  sub_1C54982B4();
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = v15 & 1;
  v19 = sub_1C5596594();
  v27 = v8;
  v30 = v19;
  v31 = v8;
  v26 = sub_1C5594DA4();
  v25 = sub_1C5596E04();
  v20 = v9;
  sub_1C5594CF4();
  v22 = v29;
  v29[0] = v19;
  v29[1] = v27;
  sub_1C54141E8();
  sub_1C5594D94();
  sub_1C540FCD8();
  v28 = v10;

  return v28;
}

uint64_t sub_1C5519EBC()
{
  v99 = 0;
  v126 = 0;
  v94 = 0;
  v121 = 0;
  v120 = 0;
  v119 = 0;
  v118 = 0;
  v117 = 0;
  v95 = sub_1C5594C74();
  v96 = *(v95 - 8);
  v97 = v96;
  MEMORY[0x1EEE9AC00](v95 - 8, v95, v0, v1);
  v98 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E370, &qword_1C55AE070) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v99, v3, v4, v5);
  v101 = &v30 - v100;
  v102 = sub_1C5594924();
  v103 = *(v102 - 8);
  v104 = v103;
  v105 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v102 - 8, v102, v6, v7);
  v107 = (v105 + 15) & 0xFFFFFFFFFFFFFFF0;
  v106 = &v30 - v107;
  MEMORY[0x1EEE9AC00](&v30 - v107, v8, v9, v10);
  v108 = &v30 - v107;
  v126 = &v30 - v107;
  v109 = [objc_opt_self() defaultStore];
  if (!v109)
  {
LABEL_30:
    v22 = v98;
    v23 = sub_1C54B05F8();
    (*(v97 + 16))(v22, v23, v95);
    v49 = sub_1C5594C54();
    v46 = v49;
    v48 = sub_1C5596954();
    v47 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
    v50 = sub_1C5596E04();
    if (os_log_type_enabled(v49, v48))
    {
      v24 = v94;
      v37 = sub_1C5596A74();
      v33 = v37;
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
      v35 = 0;
      v38 = sub_1C5419DC0(0, v34, v34);
      v36 = v38;
      v39 = sub_1C5419DC0(v35, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v125 = v37;
      v124 = v38;
      v123 = v39;
      v40 = 0;
      v41 = &v125;
      sub_1C5419E14(0, &v125);
      sub_1C5419E14(v40, v41);
      v122 = v50;
      v42 = &v30;
      MEMORY[0x1EEE9AC00](&v30, v25, v26, v27);
      v43 = &v30 - 6;
      *(&v30 - 4) = v28;
      *(&v30 - 3) = &v124;
      *(&v30 - 2) = &v123;
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
      sub_1C5419F0C();
      sub_1C55966B4();
      v45 = v24;
      if (v24)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1C5355000, v46, v47, "ACAccountStore, appleAccount, pendingDOB is nil. Unable to display Birthday update pending view.", v33, 2u);
        v31 = 0;
        sub_1C5419E74(v36, 0, v34);
        sub_1C5419E74(v39, v31, MEMORY[0x1E69E7CA0] + 8);
        sub_1C5596A54();

        v32 = v45;
      }
    }

    else
    {

      v32 = v94;
    }

    v30 = v32;

    (*(v97 + 8))(v98, v95);
    return v30;
  }

  v93 = v109;
  v91 = v109;
  v121 = v109;
  v11 = [v109 aa_primaryAppleAccount];
  v92 = v11;
  if (!v11)
  {

    goto LABEL_30;
  }

  v90 = v92;
  v88 = v92;
  v120 = v92;
  v12 = [v92 aa_pendingDOB];
  v89 = v12;
  if (v12)
  {
    v87 = v89;
    v86 = v89;
    sub_1C5594904();
    (*(v104 + 32))(v101, v106, v102);
    (*(v104 + 56))(v101, 0, 1, v102);
  }

  else
  {
    (*(v104 + 56))(v101, 1, 1, v102);
  }

  if ((*(v104 + 48))(v101, 1, v102) == 1)
  {
    sub_1C541A9D8(v101);

    goto LABEL_30;
  }

  (*(v104 + 32))(v108, v101, v102);
  v82 = 0;
  sub_1C551BC44();
  (*(v104 + 16))(v106, v108, v102);
  v83 = sub_1C551AE6C(v106);
  v119 = v83;
  sub_1C551BCA8();
  v84 = sub_1C5404B48();
  v118 = v84;
  v13 = v84;
  v85 = [objc_opt_self() defaultStore];
  if (v85 && (v81 = v85, v78 = v85, v80 = [v85 aa_primaryAppleAccount], v79 = v80, v78, v80))
  {
    v77 = v79;
    v75 = v79;
    v14 = [v79 aa_altDSID];
    v76 = v14;
    if (v14)
    {
      v74 = v76;
      v69 = v76;
      v70 = sub_1C5596574();
      v71 = v15;

      v72 = v70;
      v73 = v71;
    }

    else
    {
      v72 = 0;
      v73 = 0;
    }

    v66 = v73;
    v65 = v72;

    v67 = v65;
    v68 = v66;
  }

  else
  {
    v67 = 0;
    v68 = 0;
  }

  v63 = v68;
  v64 = v67;
  if (v68)
  {
    v61 = v64;
    v62 = v63;
    v58 = v63;
    v59 = sub_1C5596554();

    v60 = v59;
  }

  else
  {
    v60 = 0;
  }

  v55 = v60;
  [v84 setAltDSID_];

  v16 = v84;
  [v84 setIsUsernameEditable_];

  v17 = v84;
  [v84 setAuthenticationType_];

  v18 = v84;
  v19 = v83;
  [v84 setAccountMigrationContext_];

  sub_1C551BD0C();
  v57 = sub_1C5404B48();
  v56 = v57;
  v117 = v57;
  v20 = v57;
  if (v57)
  {
    v54 = v56;
    v53 = v56;
    v21 = v84;
    v115 = sub_1C551AEAC;
    v116 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v111 = 1107296256;
    v112 = 0;
    v113 = sub_1C551B944;
    v114 = &block_descriptor_16;
    v52 = _Block_copy(&aBlock);
    [v53 authenticateWithContext:v84 completion:?];
    _Block_release(v52);
  }

  (*(v104 + 8))(v108, v102);
  return v94;
}

uint64_t sub_1C551ABC0()
{
  v17 = 0;
  v16 = sub_1C551ADF0;
  v24 = &v28;
  v28 = 0;
  v23 = &v26;
  v26 = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E368, &qword_1C55B59D8);
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v8 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13, v0, v1, v2);
  v15 = &v7 - v8;
  v20 = sub_1C5594D74();
  v18 = *(v20 - 8);
  v19 = v20 - 8;
  v9 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20, v3, v4, v5);
  v21 = &v7 - v9;
  v12 = sub_1C55194A8();
  v14 = &v27;
  swift_beginAccess();
  (*(v10 + 16))(v15, v12, v13);
  swift_endAccess();
  sub_1C5594D84();
  v22 = sub_1C5594CE4();
  (*(v18 + 8))(v21, v20);
  sub_1C5594CF4();
  v28 = v22;
  v25 = sub_1C5594CF4();

  sub_1C5594CF4();
  v26 = v25;
  sub_1C541439C(v23);
  sub_1C541439C(v24);
  return v25;
}

uint64_t sub_1C551ADF0@<X0>(uint64_t *a2@<X8>)
{
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E3B0, qword_1C55B5DC0);
  a2[4] = sub_1C551C250();
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_1C551C2D8();
  return sub_1C5594844();
}

uint64_t sub_1C551AEAC(uint64_t a1, void *a2)
{
  v51 = a1;
  v53 = a2;
  v54 = sub_1C551C360;
  v56 = sub_1C5473EFC;
  v61 = sub_1C551C368;
  v65 = sub_1C5473EFC;
  v67 = sub_1C545C6D4;
  v69 = sub_1C545C6D4;
  v71 = sub_1C5473FA4;
  v73 = sub_1C545C6D4;
  v75 = sub_1C545C6D4;
  v78 = sub_1C5473FA4;
  v90 = 0;
  v89 = 0;
  v45 = 0;
  v50 = sub_1C5594C74();
  v48 = *(v50 - 8);
  v49 = v50 - 8;
  v46 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v51, v53, v2, v3);
  v4 = v35 - v46;
  v47 = v35 - v46;
  v90 = v5;
  v89 = v6;
  v7 = sub_1C54B05F8();
  (*(v48 + 16))(v4, v7, v50);
  sub_1C5594CF4();
  v52 = 24;
  v63 = 7;
  v8 = swift_allocObject();
  v9 = v53;
  v55 = v8;
  *(v8 + 16) = v51;
  v10 = v9;
  v64 = swift_allocObject();
  *(v64 + 16) = v53;
  v82 = sub_1C5594C54();
  v83 = sub_1C5596974();
  v59 = 17;
  v68 = swift_allocObject();
  v58 = 32;
  *(v68 + 16) = 32;
  v70 = swift_allocObject();
  v60 = 8;
  *(v70 + 16) = 8;
  v62 = 32;
  v11 = swift_allocObject();
  v12 = v55;
  v57 = v11;
  *(v11 + 16) = v54;
  *(v11 + 24) = v12;
  v13 = swift_allocObject();
  v14 = v57;
  v72 = v13;
  *(v13 + 16) = v56;
  *(v13 + 24) = v14;
  v74 = swift_allocObject();
  *(v74 + 16) = v58;
  v76 = swift_allocObject();
  *(v76 + 16) = v60;
  v15 = swift_allocObject();
  v16 = v64;
  v66 = v15;
  *(v15 + 16) = v61;
  *(v15 + 24) = v16;
  v17 = swift_allocObject();
  v18 = v66;
  v79 = v17;
  *(v17 + 16) = v65;
  *(v17 + 24) = v18;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  v77 = sub_1C5596E04();
  v80 = v19;

  v20 = v68;
  v21 = v80;
  *v80 = v67;
  v21[1] = v20;

  v22 = v70;
  v23 = v80;
  v80[2] = v69;
  v23[3] = v22;

  v24 = v72;
  v25 = v80;
  v80[4] = v71;
  v25[5] = v24;

  v26 = v74;
  v27 = v80;
  v80[6] = v73;
  v27[7] = v26;

  v28 = v76;
  v29 = v80;
  v80[8] = v75;
  v29[9] = v28;

  v30 = v79;
  v31 = v80;
  v80[10] = v78;
  v31[11] = v30;
  sub_1C540FCD8();

  if (os_log_type_enabled(v82, v83))
  {
    v32 = v45;
    v37 = sub_1C5596A74();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v38 = sub_1C5419DC0(0, v36, v36);
    v39 = sub_1C5419DC0(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v41 = &v88;
    v88 = v37;
    v42 = &v87;
    v87 = v38;
    v43 = &v86;
    v86 = v39;
    v40 = 2;
    sub_1C5419E14(2, &v88);
    sub_1C5419E14(v40, v41);
    v84 = v67;
    v85 = v68;
    sub_1C5419E28(&v84, v41, v42, v43);
    v44 = v32;
    if (v32)
    {

      __break(1u);
    }

    else
    {
      v84 = v69;
      v85 = v70;
      sub_1C5419E28(&v84, &v88, &v87, &v86);
      v35[3] = 0;
      v84 = v71;
      v85 = v72;
      sub_1C5419E28(&v84, &v88, &v87, &v86);
      v35[2] = 0;
      v84 = v73;
      v85 = v74;
      sub_1C5419E28(&v84, &v88, &v87, &v86);
      v35[1] = 0;
      v84 = v75;
      v85 = v76;
      sub_1C5419E28(&v84, &v88, &v87, &v86);
      v35[0] = 0;
      v84 = v78;
      v85 = v79;
      sub_1C5419E28(&v84, &v88, &v87, &v86);
      _os_log_impl(&dword_1C5355000, v82, v83, "finished with results %s, error %s.", v37, 0x16u);
      sub_1C5419E74(v38, 0, v36);
      sub_1C5419E74(v39, 2, MEMORY[0x1E69E7CA0] + 8);
      sub_1C5596A54();
    }
  }

  else
  {
  }

  v33 = MEMORY[0x1E69E5920](v82);
  return (*(v48 + 8))(v47, v50, v33);
}

uint64_t sub_1C551B828(void *a1)
{
  v1 = a1;
  if (a1)
  {
    swift_getErrorValue();
    v5 = sub_1C5596E94();
    v6 = v2;

    v7 = v5;
    v8 = v6;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v10 = v7;
  v11 = v8;
  if (v8)
  {
    v12 = v10;
    v13 = v11;
  }

  else
  {
    v12 = sub_1C55965F4("nil", 3, 1);
    v13 = v3;
  }

  return v12;
}

uint64_t sub_1C551B944(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *(a1 + 32);

  MEMORY[0x1E69E5928](a2, v3);
  v4 = a2;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E3C8, &unk_1C55B5DD8);
    v8 = sub_1C5596444();
    MEMORY[0x1E69E5920](a2);
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v5 = MEMORY[0x1E69E5928](a3, v4);
  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = 0;
  }

  v11(v9, v5);
}

uint64_t sub_1C551BB70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C551929C();
  *a1 = result;
  a1[1] = v2;
  return result;
}

id sub_1C551BBA0(uint64_t a1)
{
  v4 = sub_1C55948E4();
  v6 = [v1 initWithPendingDOB_];
  MEMORY[0x1E69E5920](v4);
  v2 = sub_1C5594924();
  (*(*(v2 - 8) + 8))(a1);
  return v6;
}

unint64_t sub_1C551BC44()
{
  v2 = qword_1EC15E378;
  if (!qword_1EC15E378)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15E378);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1C551BCA8()
{
  v2 = qword_1EC15E380;
  if (!qword_1EC15E380)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15E380);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1C551BD0C()
{
  v2 = qword_1EC15E388;
  if (!qword_1EC15E388)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15E388);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1C551BE20()
{
  v2 = qword_1EC15E390;
  if (!qword_1EC15E390)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E390);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C551BEB4()
{
  v2 = qword_1EC15E398;
  if (!qword_1EC15E398)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E398);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C551BF48()
{
  v2 = qword_1EC15E3A0;
  if (!qword_1EC15E3A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E3A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C551BFDC()
{
  v2 = qword_1EC15E3A8;
  if (!qword_1EC15E3A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E3A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C551C0AC()
{
  v2 = qword_1EC167F60[0];
  if (!qword_1EC167F60[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1EC167F60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C551C140()
{
  v2 = qword_1EC168070;
  if (!qword_1EC168070)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC168070);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C551C1D4()
{
  v2 = qword_1EC168078[0];
  if (!qword_1EC168078[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1EC168078);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C551C250()
{
  v2 = qword_1EC15E3B8;
  if (!qword_1EC15E3B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E3B0, qword_1C55B5DC0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E3B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C551C2D8()
{
  v2 = qword_1EC15E3C0;
  if (!qword_1EC15E3C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E3B0, qword_1C55B5DC0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E3C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C551C370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v12 = a1;
  v13 = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E370, &qword_1C55AE070);
  v8 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12, v2, v3, v4);
  v11 = &v8 - v8;
  v13 = v5;
  sub_1C5429288(v5, &v8 - v8);
  sub_1C5402CCC(v11, v10, v9, v6);
  return sub_1C541A9D8(v12);
}

double sub_1C551C428(void x0_0, uint64_t a1)
{
  MEMORY[0x1E69E5928](v2, a1);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5594E84();

  *&result = MEMORY[0x1E69E5920](v2).n128_u64[0];
  return result;
}

double sub_1C551C4CC@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v13 = a2;
  v9 = a1;
  v10 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E370, &qword_1C55AE070) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9, v2, v3, v4);
  v12 = &v8 - v10;
  v11 = *v5;
  v6 = MEMORY[0x1E69E5928](v11, &v8 - v10);
  v15 = v11;
  v14 = v11;
  (*((*v11 & *MEMORY[0x1E69E7D40]) + 0x68))(v6);
  sub_1C54295D8(v12, v13);
  *&result = MEMORY[0x1E69E5920](v14).n128_u64[0];
  return result;
}

double sub_1C551C5DC(uint64_t a1, void **a2)
{
  v9 = a1;
  v11 = a2;
  v10 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E370, &qword_1C55AE070) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9, v2, v3, v4);
  v13 = &v8 - v10;
  sub_1C5429288(v5, &v8 - v10);
  v12 = *v11;
  v6 = MEMORY[0x1E69E5928](v12, v11);
  v15 = v12;
  v14 = v12;
  (*((*v12 & *MEMORY[0x1E69E7D40]) + 0x70))(v13, v6);
  *&result = MEMORY[0x1E69E5920](v14).n128_u64[0];
  return result;
}

uint64_t sub_1C551C6E8(const void *a1)
{
  v13 = a1;
  v15 = 0;
  v14 = 0;
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E370, &qword_1C55AE070) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9, v1, v2, v3);
  v12 = &v7 - v8;
  v15 = v4;
  v14 = v5;
  MEMORY[0x1E69E5928](v5, &v7 - v8);
  KeyPath = swift_getKeyPath();
  v11 = swift_getKeyPath();
  sub_1C5429288(v13, v12);
  sub_1C5594E94();
  return sub_1C541A9D8(v13);
}

void (*sub_1C551C7F4(void *a1))(uint64_t *a1, char a2)
{
  v4 = __swift_coroFrameAllocStub(0x40uLL, 15018);
  *a1 = v4;
  v4[4] = v3;
  MEMORY[0x1E69E5928](v3, v1);
  v4[5] = swift_getKeyPath();
  v4[6] = swift_getKeyPath();
  v4[7] = sub_1C5594E74();
  return sub_1C54031B4;
}

uint64_t sub_1C551C8DC()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E448, &unk_1C55B5E40);
  sub_1C5594E54();
  return swift_endAccess();
}

uint64_t sub_1C551C958(uint64_t a1)
{
  v9 = a1;
  v13 = 0;
  v12 = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E450, &qword_1C55AE2B8);
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v6[0] = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v10, v9, v10, v2);
  v6[1] = v6 - v6[0];
  v13 = v4;
  v12 = v1;
  (*(v7 + 16))(v3);
  v6[2] = &v11;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E448, &unk_1C55B5E40);
  sub_1C5594E64();
  swift_endAccess();
  return (*(v7 + 8))(v9, v10);
}

uint64_t (*sub_1C551CAAC(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 30508);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E450, &qword_1C55AE2B8);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 30508);
  v6[4] = __swift_coroFrameAllocStub(v5, 30508);
  sub_1C551C8DC();
  return sub_1C551CBD0;
}

void sub_1C551CBD0(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    sub_1C551C958(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    sub_1C551C958(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t sub_1C551CCCC@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC14AppleAccountUI20PendingBirthdayModel__pendingDOB;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E448, &unk_1C55B5E40);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_1C551CD6C(uint64_t a1)
{
  v13 = a1;
  v17 = 0;
  v16 = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E448, &unk_1C55B5E40);
  v11 = *(v14 - 8);
  v12 = v14 - 8;
  v7 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v14, v13, v14, v2);
  v9 = &v6 - v7;
  v17 = v4;
  v16 = v1;
  (*(v11 + 16))(v3);
  v8 = v1 + OBJC_IVAR____TtC14AppleAccountUI20PendingBirthdayModel__pendingDOB;
  v10 = &v15;
  swift_beginAccess();
  (*(v11 + 40))(v8, v9, v14);
  swift_endAccess();
  return (*(v11 + 8))(v13, v14);
}

uint64_t sub_1C551CECC()
{
  v3 = (v0 + OBJC_IVAR____TtC14AppleAccountUI20PendingBirthdayModel_account);
  swift_beginAccess();
  v4 = *v3;
  MEMORY[0x1E69E5928](*v3, v1);
  swift_endAccess();
  return v4;
}

double sub_1C551CF3C(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  v5 = (v2 + OBJC_IVAR____TtC14AppleAccountUI20PendingBirthdayModel_account);
  swift_beginAccess();
  v3 = *v5;
  *v5 = a1;
  MEMORY[0x1E69E5920](v3);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C551D044()
{
  v3 = (v0 + OBJC_IVAR____TtC14AppleAccountUI20PendingBirthdayModel_accountStore);
  swift_beginAccess();
  v4 = *v3;
  MEMORY[0x1E69E5928](*v3, v1);
  swift_endAccess();
  return v4;
}

double sub_1C551D0B4(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  v5 = (v2 + OBJC_IVAR____TtC14AppleAccountUI20PendingBirthdayModel_accountStore);
  swift_beginAccess();
  v3 = *v5;
  *v5 = a1;
  MEMORY[0x1E69E5920](v3);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

char *sub_1C551D1F4(void *a1)
{
  v75 = a1;
  v53 = sub_1C551DB04;
  v89 = 0;
  v88 = 0;
  v73 = 0;
  v58 = sub_1C5594924();
  v63 = *(v58 - 8);
  v57 = v58 - 8;
  v54 = (*(v63 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v58, v2, v3, v4);
  v55 = &v29 - v54;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E448, &unk_1C55B5E40);
  v67 = *(v72 - 8);
  v68 = v72 - 8;
  v56 = (*(v67 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v72, v5, v6, v7);
  v71 = &v29 - v56;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E370, &qword_1C55AE070);
  v60 = *(*(v8 - 8) + 64);
  v59 = (v60 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8, v9, v10, v58);
  v61 = &v29 - v59;
  v62 = (v60 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x1EEE9AC00](&v29 - v59, v11, v12, v13);
  v66 = &v29 - v62;
  v88 = v75;
  v89 = v1;
  v70 = v1;
  v69 = OBJC_IVAR____TtC14AppleAccountUI20PendingBirthdayModel__pendingDOB;
  v64 = *(v63 + 56);
  v65 = v63 + 56;
  v64(v14);
  sub_1C551C370(v66, v71);
  (*(v67 + 32))(&v70[v69], v71, v72);
  v15 = v75;
  *&v89[OBJC_IVAR____TtC14AppleAccountUI20PendingBirthdayModel_accountStore] = v73;
  [v15 reload];
  v74 = v89;
  *&v17 = MEMORY[0x1E69E5928](v75, v16).n128_u64[0];
  v18 = v75;
  *&v74[OBJC_IVAR____TtC14AppleAccountUI20PendingBirthdayModel_account] = v75;
  v76 = v89;
  v77 = [v18 aa_pendingDOB];
  if (v77)
  {
    v52 = v77;
    v51 = v77;
    sub_1C5594904();
    (*(v63 + 32))(v61, v55, v58);
    (v64)(v61, 0, 1, v58);
    MEMORY[0x1E69E5920](v51);
  }

  else
  {
    (v64)(v61, 1, 1, v58);
  }

  v32 = &v76[OBJC_IVAR____TtC14AppleAccountUI20PendingBirthdayModel__pendingDOB];
  v33 = &v87;
  v44 = 33;
  v49 = 0;
  swift_beginAccess();
  (*(v67 + 8))(v32, v72);
  sub_1C551C370(v61, v32);
  swift_endAccess();
  v34 = v89;
  v35 = 0;
  v19 = type metadata accessor for PendingBirthdayModel(0);
  v86.receiver = v34;
  v86.super_class = v19;
  v41 = objc_msgSendSuper2(&v86, sel_init);
  MEMORY[0x1E69E5928](v41, v20);
  v89 = v41;
  v43 = v41;
  sub_1C551DA58();
  v40 = MEMORY[0x1E69E6158];
  v37 = sub_1C5596E04();
  v36 = v21;
  v38 = *MEMORY[0x1E69597F8];
  MEMORY[0x1E69E5928](v38, v21);
  v22 = sub_1C5596574();
  v23 = v36;
  *v36 = v22;
  v23[1] = v24;
  sub_1C540FCD8();
  v39 = v25;
  MEMORY[0x1E69E5920](v38);
  v42 = sub_1C5596874();
  MEMORY[0x1E69E5928](v41, v42);
  v46 = sub_1C551DABC(v42, v41);
  v48 = &unk_1EC168000;
  v45 = &v43[OBJC_IVAR____TtC14AppleAccountUI20PendingBirthdayModel_accountStore];
  v47 = &v85;
  swift_beginAccess();
  v26 = *v45;
  *v45 = v46;
  MEMORY[0x1E69E5920](v26);
  swift_endAccess();
  v50 = &v89[v48[52]];
  swift_beginAccess();
  if (*v50)
  {
    v31 = *v50;
    MEMORY[0x1E69E5928](v31, v27);
    swift_endAccess();
    v83 = v53;
    v84 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v79 = 1107296256;
    v80 = 0;
    v81 = sub_1C551E1DC;
    v82 = &block_descriptor_17;
    v30 = _Block_copy(&aBlock);
    [v31 registerWithCompletion_];
    _Block_release(v30);
    MEMORY[0x1E69E5920](v31);
  }

  else
  {
    swift_endAccess();
  }

  MEMORY[0x1E69E5920](v75);
  MEMORY[0x1E69E5920](v89);
  return v41;
}

uint64_t type metadata accessor for PendingBirthdayModel(uint64_t a1)
{
  v2 = qword_1EC168230;
  if (!qword_1EC168230)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t sub_1C551DA58()
{
  v2 = qword_1EC15E458;
  if (!qword_1EC15E458)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15E458);
    return ObjCClassMetadata;
  }

  return v2;
}

void sub_1C551DB04(uint64_t a1, void *a2)
{
  v58 = a1;
  v64 = a2;
  v51 = sub_1C5467F9C;
  v52 = sub_1C5467FA4;
  v53 = sub_1C545C6DC;
  v54 = sub_1C545C6D4;
  v55 = sub_1C545C6D4;
  v56 = sub_1C545C6E8;
  v72 = 0;
  v71 = 0;
  v70 = 0;
  v57 = 0;
  v59 = sub_1C5594C74();
  v60 = *(v59 - 8);
  v61 = v59 - 8;
  v62 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v64, v2, v3, v4);
  v63 = &v26 - v62;
  v72 = v5;
  v71 = v6;
  v7 = v6;
  if (v64)
  {
    v50 = v64;
    v8 = v63;
    v35 = v64;
    v70 = v64;
    v9 = sub_1C54B05F8();
    (*(v60 + 16))(v8, v9, v59);
    v10 = v35;
    v39 = 7;
    v37 = swift_allocObject();
    *(v37 + 16) = v35;
    sub_1C54398B0();

    v48 = sub_1C5594C54();
    v49 = sub_1C5596954();
    v36 = 17;
    v42 = swift_allocObject();
    *(v42 + 16) = 64;
    v43 = swift_allocObject();
    *(v43 + 16) = 8;
    v38 = 32;
    v11 = swift_allocObject();
    v12 = v37;
    v40 = v11;
    *(v11 + 16) = v51;
    *(v11 + 24) = v12;
    v13 = swift_allocObject();
    v14 = v40;
    v41 = v13;
    *(v13 + 16) = v52;
    *(v13 + 24) = v14;
    v15 = swift_allocObject();
    v16 = v41;
    v45 = v15;
    *(v15 + 16) = v53;
    *(v15 + 24) = v16;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
    v44 = sub_1C5596E04();
    v46 = v17;

    v18 = v42;
    v19 = v46;
    *v46 = v54;
    v19[1] = v18;

    v20 = v43;
    v21 = v46;
    v46[2] = v55;
    v21[3] = v20;

    v22 = v45;
    v23 = v46;
    v46[4] = v56;
    v23[5] = v22;
    sub_1C540FCD8();

    if (os_log_type_enabled(v48, v49))
    {
      v24 = v57;
      v28 = sub_1C5596A74();
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
      v29 = sub_1C5419DC0(1, v27, v27);
      v30 = sub_1C5419DC0(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v31 = &v69;
      v69 = v28;
      v32 = &v68;
      v68 = v29;
      v33 = &v67;
      v67 = v30;
      sub_1C5419E14(2, &v69);
      sub_1C5419E14(1, v31);
      v65 = v54;
      v66 = v42;
      sub_1C5419E28(&v65, v31, v32, v33);
      v34 = v24;
      if (v24)
      {

        __break(1u);
      }

      else
      {
        v65 = v55;
        v66 = v43;
        sub_1C5419E28(&v65, &v69, &v68, &v67);
        v26 = 0;
        v65 = v56;
        v66 = v45;
        sub_1C5419E28(&v65, &v69, &v68, &v67);
        _os_log_impl(&dword_1C5355000, v48, v49, "PendingBirthdayModel - Monitored account store registration encountered error: %@", v28, 0xCu);
        sub_1C5419E74(v29, 1, v27);
        sub_1C5419E74(v30, 0, MEMORY[0x1E69E7CA0] + 8);
        sub_1C5596A54();
      }
    }

    else
    {
    }

    v25 = MEMORY[0x1E69E5920](v48);
    (*(v60 + 8))(v63, v59, v25);
  }
}

uint64_t sub_1C551E1DC(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *(a1 + 32);

  MEMORY[0x1E69E5928](a2, v3);
  v4 = a2;
  if (a2)
  {
    sub_1C543D95C();
    v8 = sub_1C5596714();
    MEMORY[0x1E69E5920](a2);
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v5 = MEMORY[0x1E69E5928](a3, v4);
  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = 0;
  }

  v11(v9, v5);
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

id sub_1C551E370()
{
  v9 = v0;
  v6 = OBJC_IVAR____TtC14AppleAccountUI20PendingBirthdayModel_accountStore;
  v7 = (v0 + OBJC_IVAR____TtC14AppleAccountUI20PendingBirthdayModel_accountStore);
  swift_beginAccess();
  if (*v7)
  {
    v4 = *&v5[v6];
    MEMORY[0x1E69E5928](v4, v1);
    swift_endAccess();
    [v4 removeDelegate_];
    swift_unknownObjectRelease();
    MEMORY[0x1E69E5920](v4);
  }

  else
  {
    swift_endAccess();
  }

  v8.receiver = v5;
  v8.super_class = type metadata accessor for PendingBirthdayModel(0);
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

void sub_1C551E550(void *a1)
{
  v67 = a1;
  v76 = 0;
  v75 = 0;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E460, qword_1C55B5E50);
  v50 = (*(*(v49 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v49, v2, v3, v4);
  v51 = &v29 - v50;
  v52 = sub_1C5594924();
  v53 = *(v52 - 8);
  v54 = v52 - 8;
  v55 = (*(v53 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v52, v5, v6, v7);
  v56 = &v29 - v55;
  v57 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E370, &qword_1C55AE070) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v67, v8, v9, v10);
  v58 = &v29 - v57;
  v59 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12, &v29 - v57, v13, v14);
  v60 = &v29 - v59;
  v61 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v16, &v29 - v59, v17, v18);
  v62 = &v29 - v61;
  v63 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20, &v29 - v61, v21, v22);
  v64 = &v29 - v63;
  v76 = v23;
  v75 = v1;
  v65 = sub_1C551CECC();
  v66 = 0x1FB55D000uLL;
  v68 = [v65 0x1FB55D678];
  MEMORY[0x1E69E5920](v65);
  *&v25 = MEMORY[0x1E69E5928](v68, v24).n128_u64[0];
  v69 = [v67 (v66 + 1656)];
  MEMORY[0x1E69E5928](v69, v26);
  v73 = v68;
  v74 = v69;
  if (v68)
  {
    sub_1C5402C1C(&v73, &v72);
    if (v74)
    {
      v71 = v72;
      v45 = &v73;
      v70 = v74;
      sub_1C551EF4C();
      v46 = sub_1C5596A34();
      MEMORY[0x1E69E5920](v70);
      MEMORY[0x1E69E5920](v71);
      sub_1C5401EF8(v45);
      v47 = v46;
      goto LABEL_7;
    }

    MEMORY[0x1E69E5920](v72);
    goto LABEL_9;
  }

  if (v74)
  {
LABEL_9:
    sub_1C550728C(&v73);
    v47 = 0;
    goto LABEL_7;
  }

  sub_1C5401EF8(&v73);
  v47 = 1;
LABEL_7:
  v44 = v47;
  MEMORY[0x1E69E5920](v69);
  v27 = MEMORY[0x1E69E5920](v68);
  if ((v44 & 1) == 0)
  {
    return;
  }

  (*((*v48 & *MEMORY[0x1E69E7D40]) + 0x68))(v27);
  v43 = [v67 aa_pendingDOB];
  if (v43)
  {
    v42 = v43;
    v41 = v43;
    sub_1C5594904();
    (*(v53 + 32))(v62, v56, v52);
    (*(v53 + 56))(v62, 0, 1, v52);
    MEMORY[0x1E69E5920](v41);
  }

  else
  {
    (*(v53 + 56))(v62, 1, 1, v52);
  }

  v38 = &v51[*(v49 + 48)];
  sub_1C5429288(v64, v51);
  sub_1C5429288(v62, v38);
  v39 = *(v53 + 48);
  v40 = v53 + 48;
  if (v39(v51, 1, v52) == 1)
  {
    if (v39(v38, 1, v52) == 1)
    {
      sub_1C541A9D8(v51);
      v37 = 1;
      goto LABEL_20;
    }
  }

  else
  {
    sub_1C5429288(v51, v60);
    if (v39(v38, 1, v52) != 1)
    {
      (*(v53 + 32))(v56, v38, v52);
      sub_1C54290E8();
      v36 = sub_1C55964D4();
      v35 = *(v53 + 8);
      v34 = v53 + 8;
      v35(v56, v52);
      v35(v60, v52);
      sub_1C541A9D8(v51);
      v37 = v36;
      goto LABEL_20;
    }

    (*(v53 + 8))(v60, v52);
  }

  sub_1C551EE20(v51);
  v37 = 0;
LABEL_20:
  v33 = v37;
  sub_1C541A9D8(v62);
  sub_1C541A9D8(v64);
  if ((v33 & 1) == 0)
  {
    v32 = [v67 aa_pendingDOB];
    if (v32)
    {
      v31 = v32;
      v30 = v32;
      sub_1C5594904();
      (*(v53 + 32))(v58, v56, v52);
      (*(v53 + 56))(v58, 0, 1, v52);
      v28 = MEMORY[0x1E69E5920](v30);
    }

    else
    {
      (*(v53 + 56))(v58, 1, 1, v52);
    }

    (*((*v48 & *MEMORY[0x1E69E7D40]) + 0x70))(v58, v28);
  }
}

uint64_t sub_1C551EE20(uint64_t a1)
{
  v4 = sub_1C5594924();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!(v6)(a1, 1))
  {
    (*(v5 + 8))(a1, v4);
  }

  v2 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E460, qword_1C55B5E50) + 48);
  if (!v6())
  {
    (*(v5 + 8))(v2, v4);
  }

  return a1;
}

unint64_t sub_1C551EF4C()
{
  v2 = qword_1EC15E470;
  if (!qword_1EC15E470)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15E470);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1C551EFB0()
{
  *(v1 + 200) = v0;
  *(v1 + 144) = v1;
  *(v1 + 152) = 0;
  *(v1 + 192) = 0;
  *(v1 + 288) = 0;
  v2 = sub_1C5594C74();
  *(v1 + 208) = v2;
  *(v1 + 216) = *(v2 - 8);
  *(v1 + 224) = swift_task_alloc();
  *(v1 + 232) = swift_task_alloc();
  *(v1 + 240) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E370, &qword_1C55AE070);
  *(v1 + 248) = swift_task_alloc();
  *(v1 + 256) = swift_task_alloc();
  *(v1 + 152) = v0;

  return MEMORY[0x1EEE6DFA0](sub_1C551F12C);
}

uint64_t sub_1C551F12C()
{
  v30 = v0[32];
  v1 = v0[25];
  v0[18] = v0;
  (*((*v1 & *MEMORY[0x1E69E7D40]) + 0x68))();
  v31 = sub_1C5594924();
  v32 = *(v31 - 8);
  v33 = *(v32 + 48);
  if ((v33)(v30, 1) == 1)
  {
    sub_1C541A9D8(*(v29 + 256));
    v2 = *(v29 + 232);
    v22 = *(v29 + 208);
    v21 = *(v29 + 216);
    v3 = sub_1C54B05F8();
    (*(v21 + 16))(v2, v3, v22);
    oslog = sub_1C5594C54();
    v23 = sub_1C5596934();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
    v25 = sub_1C5596E04();
    if (os_log_type_enabled(oslog, v23))
    {
      buf = sub_1C5596A74();
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
      v12 = sub_1C5419DC0(0, v10, v10);
      v13 = sub_1C5419DC0(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      *(v29 + 160) = buf;
      *(v29 + 168) = v12;
      *(v29 + 176) = v13;
      sub_1C5419E14(0, (v29 + 160));
      sub_1C5419E14(0, (v29 + 160));
      *(v29 + 184) = v25;
      v14 = swift_task_alloc();
      v14[2] = v29 + 160;
      v14[3] = v29 + 168;
      v14[4] = v29 + 176;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
      sub_1C5419F0C();
      sub_1C55966B4();

      _os_log_impl(&dword_1C5355000, oslog, v23, "PendingBirthdayModel - Pending DOB is nil. Nothing to clear", buf, 2u);
      sub_1C5419E74(v12, 0, v10);
      sub_1C5419E74(v13, 0, MEMORY[0x1E69E7CA0] + 8);
      sub_1C5596A54();
    }

    v8 = *(v29 + 232);
    v9 = *(v29 + 208);
    v7 = *(v29 + 216);
    v4 = MEMORY[0x1E69E5920](oslog);
    (*(v7 + 8))(v8, v9, v4);

    v5 = *(*(v29 + 144) + 8);

    return v5();
  }

  else
  {
    sub_1C541A9D8(*(v29 + 256));
    v28 = *(v29 + 248);
    v26 = sub_1C551CECC();
    [v26 reload];
    MEMORY[0x1E69E5920](v26);
    v27 = sub_1C551CECC();
    (*(v32 + 56))(v28, 1, 1, v31);
    if (v33(v28, 1, v31) == 1)
    {
      v20 = 0;
    }

    else
    {
      v18 = *(v29 + 248);
      v19 = sub_1C55948E4();
      (*(v32 + 8))(v18, v31);
      v20 = v19;
    }

    [v27 aa_setPendingDOB_];
    MEMORY[0x1E69E5920](v20);
    MEMORY[0x1E69E5920](v27);
    v17 = [objc_opt_self() defaultStore];
    *(v29 + 264) = v17;
    if (v17)
    {
      v16 = sub_1C551CECC();
      *(v29 + 272) = v16;
      *(v29 + 16) = *(v29 + 144);
      *(v29 + 56) = v29 + 289;
      *(v29 + 24) = sub_1C551F908;
      v15 = swift_continuation_init();
      *(v29 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E478, &unk_1C55B5E68);
      *(v29 + 112) = v15;
      *(v29 + 80) = MEMORY[0x1E69E9820];
      *(v29 + 88) = 1107296256;
      *(v29 + 92) = 0;
      *(v29 + 96) = sub_1C552082C;
      *(v29 + 104) = &block_descriptor_5;
      [v17 saveVerifiedAccount:v16 withCompletionHandler:?];

      return MEMORY[0x1EEE6DEC8](v29 + 16);
    }

    else
    {
      return sub_1C5596C94();
    }
  }
}

uint64_t sub_1C551F908()
{
  v4 = *v0;
  v4[18] = *v0;
  v1 = v4[6];
  v4[35] = v1;
  if (v1)
  {
    v2 = sub_1C5520148;
  }

  else
  {
    v2 = sub_1C551FA60;
  }

  return MEMORY[0x1EEE6DFA0](v2);
}

uint64_t sub_1C551FA60()
{
  v35 = v0;
  v16 = *(v0 + 272);
  v1 = *(v0 + 264);
  v2 = *(v0 + 240);
  v17 = *(v0 + 216);
  v18 = *(v0 + 208);
  *(v0 + 144) = v0;
  v19 = *(v0 + 289);
  *(v0 + 288) = v19 & 1;
  MEMORY[0x1E69E5920](v1);
  MEMORY[0x1E69E5920](v16);
  v3 = sub_1C54B05F8();
  (*(v17 + 16))(v2, v3, v18);
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  v28 = sub_1C5594C54();
  v29 = sub_1C5596934();
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  v25 = swift_allocObject();
  *(v25 + 16) = 4;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1C54E7408;
  *(v21 + 24) = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1C54D66AC;
  *(v22 + 24) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1C54D66E0;
  *(v23 + 24) = v22;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1C54D6728;
  *(v26 + 24) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  sub_1C5596E04();
  v27 = v4;

  *v27 = sub_1C545C6D4;
  v27[1] = v24;

  v27[2] = sub_1C545C6D4;
  v27[3] = v25;

  v27[4] = sub_1C54D6734;
  v27[5] = v26;
  sub_1C540FCD8();

  if (os_log_type_enabled(v28, v29))
  {
    buf = sub_1C5596A74();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v13 = sub_1C5419DC0(0, v11, v11);
    v14 = sub_1C5419DC0(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v30 = buf;
    v31 = v13;
    v32 = v14;
    sub_1C5419E14(0, &v30);
    sub_1C5419E14(1, &v30);
    v33 = sub_1C545C6D4;
    v34 = v24;
    sub_1C5419E28(&v33, &v30, &v31, &v32);
    v33 = sub_1C545C6D4;
    v34 = v25;
    sub_1C5419E28(&v33, &v30, &v31, &v32);
    v33 = sub_1C54D6734;
    v34 = v26;
    sub_1C5419E28(&v33, &v30, &v31, &v32);
    _os_log_impl(&dword_1C5355000, v28, v29, "PendingBirthdayModel - Cleared pending DOB %{BOOL}d", buf, 8u);
    sub_1C5419E74(v13, 0, v11);
    sub_1C5419E74(v14, 0, MEMORY[0x1E69E7CA0] + 8);
    sub_1C5596A54();
  }

  else
  {
  }

  v9 = v15[30];
  v10 = v15[26];
  v8 = v15[27];
  v5 = MEMORY[0x1E69E5920](v28);
  (*(v8 + 8))(v9, v10, v5);

  v6 = *(v15[18] + 8);

  return v6();
}

uint64_t sub_1C5520148(uint64_t a1)
{
  v38 = v1;
  v23 = v1[35];
  v20 = v1[34];
  v19 = v1[33];
  v18 = v1[28];
  v21 = v1[27];
  v22 = v1[26];
  v1[18] = v1;
  swift_willThrow();
  MEMORY[0x1E69E5920](v19);
  MEMORY[0x1E69E5920](v20);
  v2 = v23;
  v1[24] = v23;
  v3 = sub_1C54B05F8();
  (*(v21 + 16))(v18, v3, v22);
  v4 = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  sub_1C54398B0();

  v31 = sub_1C5594C54();
  v32 = sub_1C5596954();
  v27 = swift_allocObject();
  *(v27 + 16) = 64;
  v28 = swift_allocObject();
  *(v28 + 16) = 8;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1C5467F9C;
  *(v25 + 24) = v24;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1C5467FA4;
  *(v26 + 24) = v25;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_1C545C6DC;
  *(v29 + 24) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  sub_1C5596E04();
  v30 = v5;

  *v30 = sub_1C545C6D4;
  v30[1] = v27;

  v30[2] = sub_1C545C6D4;
  v30[3] = v28;

  v30[4] = sub_1C545C6E8;
  v30[5] = v29;
  sub_1C540FCD8();

  if (os_log_type_enabled(v31, v32))
  {
    buf = sub_1C5596A74();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v15 = sub_1C5419DC0(1, v13, v13);
    v16 = sub_1C5419DC0(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v33 = buf;
    v34 = v15;
    v35 = v16;
    sub_1C5419E14(2, &v33);
    sub_1C5419E14(1, &v33);
    v36 = sub_1C545C6D4;
    v37 = v27;
    sub_1C5419E28(&v36, &v33, &v34, &v35);
    v36 = sub_1C545C6D4;
    v37 = v28;
    sub_1C5419E28(&v36, &v33, &v34, &v35);
    v36 = sub_1C545C6E8;
    v37 = v29;
    sub_1C5419E28(&v36, &v33, &v34, &v35);
    _os_log_impl(&dword_1C5355000, v31, v32, "PendingBirthdayModel - Error clearing pendingDOB: %@", buf, 0xCu);
    sub_1C5419E74(v15, 1, v13);
    sub_1C5419E74(v16, 0, MEMORY[0x1E69E7CA0] + 8);
    sub_1C5596A54();
  }

  else
  {
  }

  v12 = v17[35];
  v10 = v17[28];
  v11 = v17[26];
  v9 = v17[27];
  v6 = MEMORY[0x1E69E5920](v31);
  (*(v9 + 8))(v10, v11, v6);

  v7 = *(v17[18] + 8);

  return v7();
}

double sub_1C552082C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a2;
  MEMORY[0x1E69E5928](a3, a2);
  v8 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    sub_1C542501C(v8, a3, MEMORY[0x1E69E6370]);
  }

  else
  {
    v9 = v5;
    sub_1C5425080(v8, &v9, MEMORY[0x1E69E6370]);
  }

  *&result = MEMORY[0x1E69E5920](a3).n128_u64[0];
  return result;
}